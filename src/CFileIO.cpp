// clang-format off
#include "CFileIO.hpp"

#include <cstring>                // for strcmp, strrchr, strchr

#include <nitro/fs/api.h>         // for FS_TryLoadTable
#include <nitro/fs/archive.h>     // for FS_FindArchive
#include <nitro/fs/romfat.h>      // for FS_UnloadArchiveTables
#include <nitro/mi/memory.h>      // for MI_CpuClear8, MI_CpuFill8
#include <nitro/os/ARM9/cache.h>  // for DC_FlushRange
#include <nitro/std/string.h>     // for STD_CopyString, STD_GetStringLength

#include "CAllocator.hpp"          // for CAllocator
#include "archive.hpp"            // for SFPHeader, FUN_02053914, SFPEntry
// clang-format on

CFileIO::CFileIO()
{
    this->nRequests = 0;
    this->pendingTail = NULL;
    this->pendingHead = NULL;
    this->currentUncomp = NULL;
    this->table = NULL;
}

CFileIO::~CFileIO()
{
    FS_UnloadArchiveTables(FS_FindArchive("rom", 3));
    OS_DestroyThread(&this->thread);
}

void CFileIO::FUN_0202ede8(void) {}

void CFileIO::init(int max_requests, CAllocator *allocator)
{
    if (this->nRequests != 0) {
        return;
    }
    if (allocator == NULL) {
        return;
    }

    this->defaultAllocator = allocator;

    this->start(max_requests);
}

void CFileIO::start(int max_requests)
{
    if (this->nRequests != 0) {
        return;
    }

    this->nRequests = max_requests;
    this->requests = static_cast<FileRequest *>(this->allocate(this->nRequests * sizeof(FileRequest)));
    MI_CpuClear8(this->requests, this->nRequests * sizeof(FileRequest));
    OS_InitMutex(&this->mutex);

    OS_CreateThread(&this->thread, &this->processRequests, this, this->stack + sizeof(this->stack), sizeof(this->stack), 30);

    size_t size = FS_TryLoadTable(NULL, 0);
    this->table = NULL;
    if (size == 0) {
        return;
    }
    if (size > 0xc000) {
        return;
    }
    this->table = this->allocate(size);
    if (this->table != NULL) {
        FS_TryLoadTable(this->table, size);
    }
}

int CFileIO::getFreeRequestIdx(void)
{
    int i = 1;

    for (; i < this->nRequests; i++) {
        if (this->requests[i].state == STATE_IDLE) {
            break;
        }
    }
    if (i == this->nRequests) {
        return 0;
    }

    return i;
}

int CFileIO::getRequestIdx(void *data)
{
    int i = 1;

    for (; i < this->nRequests; i++) {
        if (this->requests[i].state != 0 && this->requests[i].data == data) {
            break;
        }
    }
    if (i == this->nRequests) {
        return 0;
    }

    return i;
}

void *CFileIO::allocate(size_t size)
{
    return this->defaultAllocator->allocate(size, 15, 1);
}

void CFileIO::deallocate(void *ptr)
{
    this->defaultAllocator->deallocate(ptr);
}

size_t CFileIO::getFileLength(const char *path)
{
    FSFile file;

    FS_InitFile(&file);
    if (!FS_OpenFile(&file, path)) {
        return 0;
    }
    size_t length = FS_GetLength(&file);
    FS_CloseFile(&file);

    return length;
}

size_t CFileIO::readDirect(const char *path, void **dest, CAllocator *allocator, s32 offset, size_t size, BOOL compressed, u8 strategy)
{
    FileRequest request;
    FSFile file;
    FileRequest *pRequest;
    void *finalBuffer;
    int prevArena;
    s32 readSize;
    s32 remainder;
    char *pos;
    void *fileBuffer;
    s32 requestSize;
    s32 fileLength;

    pRequest = &request;

    finalBuffer = *dest;

    STD_CopyString(pRequest->path, path);

    FS_InitFile(&file);
    if (!FS_OpenFile(&file, path)) {
        return 0;
    }
    FS_SeekFile(&file, offset, FS_SEEK_SET);

    fileLength = FS_GetLength(&file);
    requestSize = size;
    if (size == 0) {
        requestSize = fileLength;
        size = fileLength;
    }
    if (offset + requestSize > fileLength) {
        requestSize = fileLength - offset;
        size = requestSize;
    }

    fileBuffer = NULL;

    MI_CpuClear8(&pRequest->compHeader, sizeof(pRequest->compHeader));

    if (pRequest->path[STD_GetStringLength(pRequest->path) - 1] == '_') {
        compressed = TRUE;
    }

    if (compressed && this->getDestSize(pRequest, &file, &size)) {
        if (allocator) {
            prevArena = allocator->setNextArena(0x101);
        } else {
            prevArena = this->defaultAllocator->setNextArena(0x101);
        }
        fileBuffer = this->allocate(requestSize);
        if (allocator) {
            allocator->setNextArena(prevArena);
        } else {
            this->defaultAllocator->setNextArena(prevArena);
        }
    }

    pRequest->allocator = NULL;

    if (!finalBuffer) {
        if (allocator) {
            pRequest->allocator = allocator;
        } else {
            pRequest->allocator = this->defaultAllocator;
        }
        finalBuffer = pRequest->allocator->allocate(size, 1, strategy);
        if (!finalBuffer) {
            while (!FS_CloseFile(&file)) { }
            
            return 0;
        }
    }

    if (!fileBuffer) {
        fileBuffer = finalBuffer;
    }

    remainder = requestSize;
    pos = static_cast<char *>(fileBuffer);
    pRequest->data = finalBuffer;
    while (remainder > 0) {
        readSize = remainder;
        if (remainder >= 0x2000) {
            readSize = 0x2000;
        }
        remainder -= readSize;

        if (FS_ReadFileAsync(&file, pos, readSize) < 0) {
            while (!FS_CloseFile(&file)) { }

            if (pRequest->allocator) {
                pRequest->allocator->deallocate(finalBuffer);
            }
            if (fileBuffer != finalBuffer) {
                this->deallocate(fileBuffer);
            }

            return 0;
        }

        pos += readSize;
    }
    DC_FlushRange(fileBuffer, requestSize);

    while (!FS_CloseFile(&file)) { }

    if (requestSize > 0x400) {
        OS_Sleep(1);
    }

    if (fileBuffer != finalBuffer) {
        this->uncompress(fileBuffer, pRequest);
        this->deallocate(fileBuffer);
    }

    *dest = finalBuffer;

    return size;
}

size_t CFileIO::readDeferred(const char *path, void **dest, CAllocator *allocator, s32 offset, size_t size, BOOL compressed, u8 strategy)
{
    FSFile file;

    OS_LockMutex(&this->mutex);

    int idx = this->getFreeRequestIdx();
    if (idx == 0) {
        OS_UnlockMutex(&this->mutex);
        return 0;
    }

    FileRequest *request = &this->requests[idx];

    STD_CopyString(request->path, path);

    request->state = STATE_NEW;

    OS_UnlockMutex(&this->mutex);

    void *data = *dest;

    request->state = STATE_PREPARING;

    FS_InitFile(&file);
    BOOL ret = FS_ConvertPathToFileID(&request->file_id, path);
    if (ret) {
        ret = FS_OpenFileFast(&file, request->file_id);
    }
    if (!ret) {
        OS_LockMutex(&this->mutex);
        MI_CpuClear8(request, sizeof(*request));
        OS_UnlockMutex(&this->mutex);
        return 0;
    }

    FS_SeekFile(&file, offset, FS_SEEK_SET);

    int file_length = FS_GetLength(&file);
    int max_size = size;
    if (size == 0) {
        max_size = file_length;
        size = file_length;
    }
    if (offset + max_size > file_length) {
        max_size = file_length - offset;
        size = max_size;
    }

    MI_CpuClear8(&request->compHeader, sizeof(request->compHeader));

    if (request->path[STD_GetStringLength(request->path) - 1] == '_') {
        compressed = TRUE;
    }
    if (compressed) {
        this->getDestSize(request, &file, &size);
    }

    request->state = STATE_PENDING;

    request->allocator = NULL;

    if (!data) {
        if (allocator) {
            request->allocator = allocator;
        } else {
            request->allocator = this->defaultAllocator;
        }

        data = request->allocator->allocate(size, 1, strategy);
        if (!data) {
            while (!FS_CloseFile(&file)) {
            }
            OS_LockMutex(&this->mutex);
            MI_CpuClear8(request, sizeof(*request));
            OS_UnlockMutex(&this->mutex);
            return 0;
        }
    }

    request->data = data;
    request->size = max_size;
    request->offset = offset;
    *dest = data;

    while (!FS_CloseFile(&file)) {
    }

    OS_LockMutex(&this->mutex);

    if (!this->pendingHead) {
        this->pendingTail = request;
        this->pendingHead = request;
    } else if (this->pendingTail) {
        this->pendingTail->next = request;
        request->prev = this->pendingTail;
    }
    this->pendingTail = request;

    OS_UnlockMutex(&this->mutex);

    this->wakeUp();
    OS_Sleep(1);

    return size;
}

size_t CFileIO::readRaw(FSFileID *fileID, void **dest, BOOL compressed, s32 offset, size_t size)
{
    FSFile file;
    size_t result;

    FS_InitFile(&file);
    if (FS_OpenFileFast(&file, *fileID)) {
        FS_SeekFile(&file, offset, FS_SEEK_SET);
        result = FS_ReadFile(&file, *dest, size);
        FS_CloseFile(&file);
    }

    return result;
}

BOOL CFileIO::convertPathToFileID(FSFileID *fileID, const char *path)
{
    return FS_ConvertPathToFileID(fileID, path);
}

int CFileIO::tryFinalize(void *data)
{
    return this->tryFinalize(this->getRequestIdx(data));
}

int CFileIO::tryFinalize(int idx)
{
    if (idx == 0) {
        return -1;
    }

    FileRequest *request = &this->requests[idx];
    int result;

    switch (request->state) {
    case STATE_COMPLETE:
        result = FALSE;
        break;
    case STATE_CLOSED:
    case STATE_CANCELLED:
    case STATE_ERROR:
        result = -1;
        break;
    default:
        return TRUE;
    }

    OS_LockMutex(&this->mutex);
    MI_CpuClear8(request, sizeof(*request));
    OS_UnlockMutex(&this->mutex);

    return result;
}

BOOL CFileIO::isBusy(void)
{
    for (int i = 1; i < this->nRequests; i++) {
        FileRequest *request = &this->requests[i];

        if ((request->state == STATE_READING) || (request->state == STATE_UNCOMPRESSING)) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL CFileIO::close(void *data, BOOL deallocate)
{
    return this->close(this->getRequestIdx(data), deallocate);
}

BOOL CFileIO::close(int idx, BOOL deallocate)
{
    if (idx == 0) {
        return TRUE;
    }

    OS_LockMutex(&this->mutex);

    FileRequest *request = &this->requests[idx];
    BOOL result = TRUE;

    switch (request->state) {
    case STATE_CLOSED:
    case STATE_CANCELLED:
        break;
    case STATE_READING:
    case STATE_UNCOMPRESSING:
        if (request->state == STATE_UNCOMPRESSING) {
            result = FALSE;
        } else {
            FS_CancelFile(&this->currentFile);
        }
        if (deallocate) {
            request->state = STATE_CANCELLED;
        }
        break;
    case STATE_PENDING:
    case STATE_READ_SUCCESS:
        request->state = STATE_CLOSED;
        if (deallocate) {
            if (request->allocator != NULL) {
                request->allocator->deallocate(request->data);
            }
            request->data = NULL;
        }
        break;
    case STATE_IDLE:
    case STATE_NEW:
    case STATE_PREPARING:
    case STATE_COMPLETE:
    case STATE_ERROR:
    default:
        if ((deallocate) && (request->allocator != NULL)) {
            request->allocator->deallocate(request->data);
        }
        MI_CpuClear8(request, sizeof(*request));
        break;
    }

    OS_UnlockMutex(&this->mutex);

    return result;
}

void CFileIO::wakeUp(void)
{
    OS_WakeupThreadDirect(&this->thread);
}

void CFileIO::processRequests(void *arg)
{
#define CHUNK_SIZE 0x2000

    CFileIO *pthis = static_cast<CFileIO *>(arg);

    while (TRUE) {
        OS_LockMutex(&pthis->mutex);

        if (pthis->pendingHead == NULL) {
            OS_UnlockMutex(&pthis->mutex);
            OS_SleepThread(NULL);

            continue;
        }

        OS_UnlockMutex(&pthis->mutex);

        FileRequest *request = pthis->pendingHead;

        FS_InitFile(&pthis->currentFile);
        FS_OpenFileFast(&pthis->currentFile, request->file_id);
        FS_SeekFile(&pthis->currentFile, request->offset, FS_SEEK_SET);

        FileRequestState expected_state = STATE_ERROR;

        if (request->state == STATE_PENDING) {
            request->state = STATE_READING;

            expected_state = STATE_COMPLETE;
            if (MI_GetCompressionType(&request->compHeader)) {
                if (pthis->buffers[pthis->bufIdx]) {
                    pthis->deallocate(pthis->buffers[pthis->bufIdx]);
                    pthis->buffers[pthis->bufIdx] = NULL;
                }
                pthis->buffers[pthis->bufIdx] = pthis->allocate(request->size);
            } else {
                pthis->buffers[pthis->bufIdx] = request->data;
            }

            int read_size;
            int remaining_size = request->size;
            u8 *cur_buf = static_cast<u8 *>(pthis->buffers[pthis->bufIdx]);
            while (remaining_size > 0) {
                read_size = remaining_size;
                if (remaining_size >= CHUNK_SIZE) {
                    read_size = CHUNK_SIZE;
                }
                remaining_size -= read_size;
                if (request->state == STATE_CLOSED || request->state == STATE_CANCELLED) {
                    break;
                }
                if (cur_buf == NULL) {
                    expected_state = STATE_ERROR;
                    break;
                }
                if (FS_ReadFileAsync(&pthis->currentFile, cur_buf, read_size) < 0) {
                    expected_state = STATE_ERROR;
                    break;
                }
                cur_buf += read_size;
            }

            FS_WaitAsync(&pthis->currentFile);
            if (!FS_IsSucceeded(&pthis->currentFile) && (request->state != STATE_CLOSED || request->state != STATE_CANCELLED)) {
                expected_state = STATE_ERROR;
            }
        }

        if (request->state == STATE_READING) {
            DC_FlushRange(&pthis->buffers, request->size);
            request->state = STATE_READ_SUCCESS;
        }
        while (!FS_CloseFile(&pthis->currentFile)) {
        }

        OS_LockMutex(&pthis->mutex);
        pthis->pendingHead = request->next;
        request->next = NULL;

        if (request->state == STATE_READ_SUCCESS) {
            if (expected_state == STATE_ERROR) {
                if (MI_GetCompressionType(&request->compHeader) && pthis->buffers[pthis->bufIdx] != NULL) {
                    pthis->deallocate(pthis->buffers[pthis->bufIdx]);
                    pthis->buffers[pthis->bufIdx] = NULL;
                }
                if (request->allocator != NULL) {
                    request->allocator->deallocate(request->data);
                }
                request->state = expected_state;
            }
            if (expected_state == STATE_COMPLETE) {
                if (MI_GetCompressionType(&request->compHeader) == 0) {
                    pthis->buffers[pthis->bufIdx] = NULL;
                    request->state = expected_state;
                } else {
                    request->state = STATE_UNCOMPRESSING;
                    pthis->currentUncomp = request;
                    pthis->bufIdx ^= 1;
                    pthis->processUncompRequest(request);
                    pthis->currentUncomp = NULL;
                }
            }
        } else if (request->state == STATE_CLOSED || request->state == STATE_CANCELLED) {
            if (MI_GetCompressionType(&request->compHeader) && pthis->buffers[pthis->bufIdx]) {
                pthis->deallocate(pthis->buffers[pthis->bufIdx]);
                pthis->buffers[pthis->bufIdx] = NULL;
            }
            if (request->state == STATE_CANCELLED && request->allocator) {
                request->allocator->deallocate(request->data);
            }
            MI_CpuClear8(request, sizeof(*request));
        }

        OS_UnlockMutex(&pthis->mutex);
    }
}

BOOL CFileIO::getDestSize(FileRequest *request, FSFile *file, size_t *out_size)
{
    if (!std::strchr(request->path, '%')) {
        if (FS_ReadFile(file, &request->compHeader, sizeof(request->compHeader)) < 0) {
            while (!FS_CloseFile(file)) {
            }
            return FALSE;
        }
        FS_SeekFile(file, -sizeof(request->compHeader), FS_SEEK_CUR);
    }

    switch (MI_GetCompressionType(&request->compHeader)) {
    default:
        MI_CpuClear8(&request->compHeader, sizeof(request->compHeader));
        return FALSE;
    case MI_COMPRESSION_LZ:
    case MI_COMPRESSION_HUFFMAN:
    case MI_COMPRESSION_RL:
    case MI_COMPRESSION_DIFF:
        if (out_size != NULL) {
            *out_size = MI_GetUncompressedSize(&request->compHeader);
        }
        return TRUE;
    }
}

void CFileIO::processUncompRequest(FileRequest *request)
{
    this->uncompress(this->buffers[this->bufIdx ^ 1], request);
    this->deallocate(this->buffers[this->bufIdx ^ 1]);
    this->buffers[this->bufIdx ^ 1] = NULL;

    if (request->state == STATE_CANCELLED) {
        if (request->allocator != NULL) {
            request->allocator->deallocate(request->data);
        }

        MI_CpuClear8(request, sizeof(*request));
        return;
    }

    request->state = STATE_COMPLETE;
}

void CFileIO::uncompress(void *src, FileRequest *request)
{
    void *dst = request->data;

    switch (MI_GetCompressionType(src)) {
    case MI_COMPRESSION_LZ:
        MI_UncompressLZ8(src, dst);
        break;
    case MI_COMPRESSION_HUFFMAN:
        MI_UncompressHuffman(src, dst);
        break;
    case MI_COMPRESSION_RL:
    case MI_COMPRESSION_DIFF:
        break;
    default:
        break;
    }

    DC_FlushRange(dst, MI_GetUncompressedSize(src));
}

size_t CFileIO::readFromSFP(char *filename, void **dst, char *file)
{
    Archive::SFPHeader *header = reinterpret_cast<Archive::SFPHeader *>(file);

    if (std::strcmp(header->magic, "SFP")) {
        return 0;
    }

    FUN_02053914(filename, filename); // lowercase to uppercase

    // remove subfolders: "path/to/file.SFP" -> "file.SFP"
    {
        char *c = std::strrchr(filename, '/');
        if (c) {
            filename = c + 1;
        }
        c = std::strrchr(filename, '/');
        if (c) {
            filename = c + 1;
        }
    }

    Archive::SFPEntry *entries = reinterpret_cast<Archive::SFPEntry *>(file + sizeof(*header));
    int entry_count = (entries->stringOffset - sizeof(*header)) / sizeof(entries[0]);
    int idx;

    for (idx = 0; idx < entry_count; idx++) {
        if (std::strcmp(file + entries[idx].stringOffset, filename) == 0) {
            break;
        }
    }

    if (idx >= entry_count) {
        return 0;
    }

    // seek at the end of the file
    file = file + header->fileSize;
    header = reinterpret_cast<Archive::SFPHeader *>(file);

    if (std::strcmp(file, "SFP")) {
        return 0;
    }

    int data_size = entries[idx].size;

    *dst = file + (header->chunkSize * entries[idx].dataOffset);

    return data_size;
}

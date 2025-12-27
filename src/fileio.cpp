#include "fileio.hpp"

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

void CFileIO::FUN_0202ede8(void) { }

void CFileIO::init(int max_requests, L5Allocator *allocator)
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

    size_t size = FS_TryLoadTable(NULL,0);
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

    for ( ; i < this->nRequests; i++) {
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

    for ( ; i < this->nRequests; i++) {
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

#ifdef NONMATCHING

// https://decomp.me/scratch/NalIT
// https://decomp.me/scratch/Q7U06
// ...

#else //NONMATCHING
extern "C" {
    extern void _ZN7CFileIO11getDestSizeEP11FileRequestP6FSFilePm(void);
    extern void _ZN11L5Allocator12setNextArenaEi(void);
    extern void _ZN7CFileIO8allocateEm(void);
    extern void _ZN11L5Allocator8allocateEmii(void);
    extern void _ZN11L5Allocator10deallocateEPv(void);
    extern void _ZN7CFileIO10deallocateEPv(void);
    extern void _ZN7CFileIO10uncompressEPvP11FileRequest(void);
}

asm size_t CFileIO::readDirect(const char *path, void **dest, L5Allocator *allocator, int offset, size_t size, BOOL compressed, u8 strategy)
{
    stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb4
	mov r10, r0
	add r0, sp, #0x54
	str r2, [sp]
	mov r6, r1
	mov r7, r3
	ldr r5, [r2]
	bl STD_CopyString
	add r4, sp, #4
	mov r0, r4
	bl FS_InitFile
	mov r0, r4
	mov r1, r6
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0xb4
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0xd8]
	mov r0, r4
	mov r2, #0
	bl FS_SeekFile
	mov r0, r4
	bl FS_GetLength
	ldr r9, [sp, #0xdc]
	ldr r1, [sp, #0xd8]
	cmp r9, #0
	moveq r9, r0
	add r2, r1, r9
	streq r0, [sp, #0xdc]
	cmp r2, r0
	subgt r9, r0, r1
	mov r11, #0
	add r0, sp, #0x4c
	mov r1, r11
	mov r2, #4
	strgt r9, [sp, #0xdc]
	bl MI_CpuFill8
	add r0, sp, #0x4c
	add r0, r0, #8
	bl STD_GetStringLength
	sub r1, r0, #1
	add r0, sp, #0x4c
	add r0, r0, r1
	ldrsb r0, [r0, #8]
	mov r8, #0
	add r4, sp, #4
	cmp r0, #0x5f
	moveq r0, #1
	streq r0, [sp, #0xe0]
	ldr r0, [sp, #0xe0]
	cmp r0, #0
	beq _0202F130
	add r2, sp, #4
	add r3, sp, #0xdc
	mov r0, r10
	add r1, sp, #0x4c
	bl _ZN7CFileIO11getDestSizeEP11FileRequestP6FSFilePm
	cmp r0, #0
	beq _0202F130
	cmp r7, #0
	ldr r1, =0x00000101
	beq _0202F0F8
	mov r0, r7
	b _0202F0FC
_0202F0F8:
	ldr r0, [r10, #4]
_0202F0FC:
	bl _ZN11L5Allocator12setNextArenaEi
	mov r6, r0
	mov r0, r10
	mov r1, r9
	bl _ZN7CFileIO8allocateEm
	mov r11, r0
	cmp r7, #0
	beq _0202F124
	mov r0, r7
	b _0202F128
_0202F124:
	ldr r0, [r10, #4]
_0202F128:
	mov r1, r6
	bl _ZN11L5Allocator12setNextArenaEi
_0202F130:
	add r0, sp, #0x4c
	str r8, [r0, #4]
	cmp r5, #0
	bne _0202F18C
	cmp r7, #0
	strne r7, [r0, #4]
	ldreq r1, [r10, #4]
	ldrb r3, [sp, #0xe4]
	streq r1, [r0, #4]
	add r0, sp, #0x4c
	ldr r0, [r0, #4]
	ldr r1, [sp, #0xdc]
	mov r2, #1
	bl _ZN11L5Allocator8allocateEmii
	movs r5, r0
	bne _0202F18C
_0202F170:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F170
	add sp, sp, #0xb4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202F18C:
	cmp r11, #0
	moveq r11, r5
	add r0, sp, #0x4c
	mov r7, r9
	mov r8, r11
	str r5, [r0, #0x48]
	cmp r9, #0
	ble _0202F22C
_0202F1AC:
	mov r6, r7
	cmp r7, #0x2000
	movge r6, #0x2000
	mov r0, r4
	mov r1, r8
	mov r2, r6
	sub r7, r7, r6
	bl FS_ReadFileAsync
	cmp r0, #0
	bge _0202F220
	add r4, sp, #4
_0202F1D8:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F1D8
	add r0, sp, #0x4c
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0202F200
	mov r1, r5
	bl _ZN11L5Allocator10deallocateEPv
_0202F200:
	cmp r11, r5
	beq _0202F214
	mov r0, r10
	mov r1, r11
	bl _ZN7CFileIO10deallocateEPv
_0202F214:
	add sp, sp, #0xb4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202F220:
	cmp r7, #0
	add r8, r8, r6
	bgt _0202F1AC
_0202F22C:
	mov r0, r11
	mov r1, r9
	bl DC_FlushRange
_0202F238:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F238
	cmp r9, #0x400
	ble _0202F258
	mov r0, #1
	bl OS_Sleep
_0202F258:
	cmp r11, r5
	beq _0202F27C
	mov r0, r10
	mov r1, r11
	add r2, sp, #0x4c
	bl _ZN7CFileIO10uncompressEPvP11FileRequest
	mov r0, r10
	mov r1, r11
	bl _ZN7CFileIO10deallocateEPv
_0202F27C:
	ldr r0, [sp]
	str r5, [r0]
	ldr r0, [sp, #0xdc]
	add sp, sp, #0xb4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
}
#endif //NONMATCHING

size_t CFileIO::readDeferred(const char *path, void **dest, L5Allocator *allocator, int offset, size_t size, BOOL compressed, u8 strategy)
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
            while (!FS_CloseFile(&file)) { }
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

    while (!FS_CloseFile(&file)) { }
    
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

size_t CFileIO::readRaw(FSFileID *fileID, void **dest, BOOL compressed, int offset, size_t size)
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
    
    while (TRUE)
    {
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
        while (!FS_CloseFile(&pthis->currentFile)) { }

        OS_LockMutex(&pthis->mutex);
        pthis->pendingHead = request->next;
        request->next = NULL;

        if (request->state == STATE_READ_SUCCESS)
        {
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
        }
        else if (request->state == STATE_CLOSED || request->state == STATE_CANCELLED)
        {
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
    if (!strchr(request->path, '%')) {
        if (FS_ReadFile(file, &request->compHeader, sizeof(request->compHeader)) < 0) {
            while (!FS_CloseFile(file)) { }
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
    }
    
    DC_FlushRange(dst, MI_GetUncompressedSize(src));
}

size_t CFileIO::readFromSFP(char *filename, void **dst, void *file)
{
    Archive_SFPHeader *header = static_cast<Archive_SFPHeader *>(file);
    
    if (strcmp(header->magic, "SFP")) {
        return 0;
    }

    FUN_02053914(filename, filename); //lowercase to uppercase

    // remove subfolders: "path/to/file.SFP" -> "file.SFP"
    {
        char *c = strrchr(filename, '/');
        if (c) {
            filename = c + 1;
        }
        c = strrchr(filename, '/');
        if (c) {
            filename = c + 1;
        }
    }

    Archive_SFPEntry *entries = reinterpret_cast<Archive_SFPEntry *>(static_cast<char *>(file) + sizeof(*header));
    int r9 = (entries->string_offset - 0x20) >> 4;
    int r5 = 0;
    while (r9 > r5) {
        if (!strcmp(static_cast<char *>(file) + entries[r5].string_offset, filename)) {
            break;
        }
        r5++;
    }

    if (r5 >= r9) {
        return 0;
    }

    // seek at the end of the file
    file = static_cast<void *>(static_cast<char *>(file) + header->file_size);
    header = static_cast<Archive_SFPHeader *>(file);
    
    if (strcmp(static_cast<char *>(file), "SFP")) {
        return 0;
    }

    int data_size = entries[r5].size;

    *dst = static_cast<void *>(static_cast<char *>(file) + (header->chunk_size * entries[r5].data_offset));

    return data_size;
}



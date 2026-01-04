#include "filesystem.hpp"

namespace FileSystem {

s32 sCurFileHandleID;
char *sProcessStack;
FileHandle *sFileHandles;
static OSThread sProcessThread;
static Archive sArchives[18];
static MATHCRC32Table sCrc32Table;

s32 ReadFileInChunks(FSFile *file, void *data, s32 len);
s32 ReadFileDirect(void **dst, FSFileID file_id, s32 offset, s32 len);
void ProcessFiles(void *arg);
FileHandle *GetFileHandle(filekey_t *keyOut);
s32 AllocateFileBuffers(FileHandle *handle, MICompressionHeader *compHeader, s32 size, void **dataOut,
                              const char *path);
s32 AllocateFileHandle(void **dataOut, Archive_PKH *file, FSFileID fileID, filekey_t *keyOut, const char *name);
u32 HashFilename(const char *name);
s32 FindFileIdxInternal(Archive_PKH *files, u16 nFiles, const char *name);

s32 ReadFileInChunks(FSFile *file, void *data, s32 len) {
#define CHUNK_SIZE 0x4000
    
    s32 chunk_count = (len + (CHUNK_SIZE - 1)) / CHUNK_SIZE;
    s32 size    = 0;

    for (int i = 0; i < chunk_count; i++) {
        s32 chunk_size = CHUNK_SIZE;
        if (len < CHUNK_SIZE) {
            chunk_size = len;
        }
        len -= chunk_size;
        size += FS_ReadFile(file, static_cast<char *>(data) + i * CHUNK_SIZE, chunk_size);
    }

    return size;
}

u32 CalcCRC32(const void *data, u32 dataLength) { return MATH_CalcCRC32(&sCrc32Table, data, dataLength); }

s32 ReadFileDirect(void **dst, FSFileID file_id, s32 offset, s32 len) {
    FSFile file;

    FS_InitFile(&file);

    if (!FS_OpenFileFast(&file, file_id)) {
        OS_Terminate();
    }
    if (len <= 0) {
        len = FS_GetLength(&file);
    }
    if (offset > 0) {
        (void)FS_SeekFile(&file, offset, FS_SEEK_SET);
    }
    if (*dst == NULL) {
        *dst = Allocate(len, -1);
    }

    s32 size = ReadFileInChunks(&file, *dst, len);
    (void)FS_CloseFile(&file);

    return size;
}

void ProcessFiles(void *arg) {
#pragma unused(arg)

    FSFile file;
    s32 idx              = 0;
    FileHandle *handle = &sFileHandles[0];

    FS_InitFile(&file);

    while (TRUE) {
        OS_Sleep(1);

        if (handle->uncompressed == NULL) {
            continue;
        }

        void *dst = handle->compressed ? handle->compressed : handle->uncompressed;

        (void)ReadFileDirect(&dst, handle->fileID, handle->offset, handle->size);

        if (handle->compressed != NULL) {
            switch (MI_GetCompressionType(&handle->flags)) {
            case MI_COMPRESSION_LZ: MI_UncompressLZ8(dst, handle->uncompressed); break;
            case MI_COMPRESSION_HUFFMAN: MI_UncompressHuffman(dst, handle->uncompressed); break;
            default: OS_Terminate();
            }

            Deallocate(handle->compressed);
            DC_FlushRange(handle->uncompressed, MI_GetUncompressedSize(&handle->flags));
        }

        idx                  = (idx + 1) % 56;
        handle->uncompressed = NULL;
        handle               = &sFileHandles[idx];
    }
}

s32 ReadFile(void **dst, const char *filepath, s32 offset, s32 len) {
    FSFile file;

    FS_InitFile(&file);

    if (!FS_OpenFile(&file, filepath)) {
        OS_Terminate();
    }
    if (len <= 0) {
        len = FS_GetLength(&file);
    }
    if (offset > 0) {
        (void)FS_SeekFile(&file, offset, FS_SEEK_SET);
    }
    if (*dst == NULL) {
        *dst = Allocate(len, -1);
    }

    s32 size = ReadFileInChunks(&file, *dst, len);
    (void)FS_CloseFile(&file);

    return size;
}

FileHandle *GetFileHandle(filekey_t *keyOut) {
    FileHandle *handle = &sFileHandles[sCurFileHandleID];

    if (handle->uncompressed != NULL) {
        OS_Terminate();
    }

    if (keyOut != NULL) {
        *keyOut = sCurFileHandleID;
    }

    sCurFileHandleID = (sCurFileHandleID + 1) % 56;

    return handle;
}

s32 AllocateFileBuffers(FileHandle *handle, MICompressionHeader *compHeader, s32 size, void **dataOut,
                        const char *path) {
    if (compHeader->compType == 0) {
        if (*dataOut != NULL) {
            handle->uncompressed = *dataOut;
        } else {
            void *ptr            = Allocate(size, -1);
            handle->uncompressed = ptr;
            *dataOut             = ptr;
        }
        handle->compressed = NULL;
    } else {
        if (*dataOut != NULL) {
            handle->uncompressed = *dataOut;
        } else {
            void *ptr            = Allocate(compHeader->destSize, -1);
            handle->uncompressed = ptr;
            *dataOut             = ptr;
        }
        handle->compressed = Allocate(size, 257);
        size               = compHeader->destSize;
    }

    return size;
}

s32 ReadFileDeferred(void **dataOut, const char *path, s8 *idOut, s32 offset, s32 size) {
    MICompressionHeader flags;
    FSFileID fileid;
    FSFile file;

    if (!FS_ConvertPathToFileID(&fileid, path)) {
        OS_Terminate();
    }
    FS_InitFile(&file);
    if (!FS_OpenFileFast(&file, fileid)) {
        OS_Terminate();
    }
    s32 len = FS_GetLength(&file);
    (void)FS_CloseFile(&file);

    if (size <= 0) {
        size = len;
    }

    *reinterpret_cast<u32 *>(&flags) = 0;
    FileHandle *handle               = GetFileHandle(idOut);
    s32 buffer_size                  = AllocateFileBuffers(handle, &flags, size, dataOut, path);

    handle->fileID = fileid;
    handle->offset = offset;
    handle->size   = size;
    handle->flags  = flags;
    handle->cur    = handle->uncompressed;

    return buffer_size;
}

arckey_t OpenArchiveDirect(void *data, const char *path) {
    char pkh_path[128];
    char pkb_path[128];

    STD_TSPrintf(pkh_path, "%s.pkh", path);
    STD_TSPrintf(pkb_path, "%s.pkb", path);

    void *file = data ? data : NULL; // useless.

    for (int i = 0; i < 18; i++) {
        if (!sArchives[i].files && !sArchives[i].inUse) {
            s32 size = ReadFile(&file, pkh_path, 0, 0);
            if (size < 0) {
                return -1;
            }

            sArchives[i].inUse  = TRUE;
            sArchives[i].nFiles = (u32)size / sizeof(Archive_PKH);
            sArchives[i].files  = file;

            if (!FS_ConvertPathToFileID(&sArchives[i].binFileID, pkb_path)) {
                OS_Terminate();
            }
            return i;
        }
    }

    OS_Terminate();
    return -1;
}

arckey_t OpenArchiveDeferred(void *data, const char *path) {
    char pkh_path[128];
    char pkb_path[128];

    STD_TSPrintf(pkh_path, "%s.pkh", path);
    STD_TSPrintf(pkb_path, "%s.pkb", path);

    for (int i = 0; i < 18; i++) {
        if (sArchives[i].files == NULL && !sArchives[i].inUse) {
            sArchives[i].inUse = TRUE;

            if (data != NULL) {
                sArchives[i].files = data;
            }

            s32 size = ReadFileDeferred(&sArchives[i].files, pkh_path, &sArchives[i].arcFileKey, 0, -1);

            sArchives[i].nFiles = (u32)size / sizeof(Archive_PKH);

            if (!FS_ConvertPathToFileID(&sArchives[i].binFileID, pkb_path)) {
                OS_Terminate();
            }

            return i;
        }
    }

    OS_Terminate();
    return -1;
}

void CloseArchive(arckey_t key) {
    if (key < 0) {
        return;
    }

    if (sArchives[key].files == NULL) {
        return;
    }

    Deallocate(sArchives[key].files);
    MI_CpuClear8(&sArchives[key].files, sizeof(sArchives[key]));
}

BOOL IsArchiveReady(arckey_t key) {
    if (sArchives[key].arcFileKey >= 0) {
        if (IsFileBusy(sArchives[key].arcFileKey)) {
            return FALSE;
        }
        sArchives[key].arcFileKey = -1;
        return TRUE;
    }

    return TRUE;
}

void WaitArchiveReady(arckey_t key) {
    while (TRUE) {
        if (IsArchiveReady(key)) {
            return;
        }
        Thread::Yield();
    }
}

Archive_PKH *GetFile(arckey_t arcKey, s32 fileIdx) {
    Archive *arc = &sArchives[arcKey];

    if (fileIdx >= arc->nFiles) {
        return NULL;
    }

    Archive_PKH *files = (Archive_PKH *)arc->files;

    return &files[fileIdx];
}

s32 ReadFileByID(void **dst, Archive_PKH *files, FSFileID file_id, const char *filename) {
    int size;

    if (*dst == NULL) {
        if (files->compHeader.compType == 0) {
            size = files->size;
        } else {
            size = files->compHeader.destSize;
        }

        *dst = Allocate(size, -1);
    }

    if (files->compHeader.compType == 0) {
        size = ReadFileDirect(dst, file_id, files->offset, files->size);
    } else {
        void *temp = Allocate(files->size, 257);

        if (ReadFileDirect(&temp, file_id, files->offset, files->size) < 0) {
            OS_Terminate();
        }

        switch (MI_GetCompressionType(&files->compHeader)) {
        case MI_COMPRESSION_LZ: MI_UncompressLZ8(temp, *dst); break;
        case MI_COMPRESSION_HUFFMAN: MI_UncompressHuffman(temp, *dst); break;
        default: OS_Terminate(); break;
        }

        Deallocate(temp);

        size = files->compHeader.destSize;
        DC_FlushRange(*dst, size);
    }

    return size;
}

s32 ReadFileByName(void **dst, arckey_t arcKey, const char *filename) {
    if (arcKey < 0) {
        return -1;
    }

    Archive *arc = &sArchives[arcKey];

    Archive_PKH *files = FindFile(arcKey, filename);

    if (files == NULL) {
        return -1;
    }

    return ReadFileByID(dst, files, arc->binFileID, filename);
}

s32 ReadFileByIdx(void **dst, arckey_t arcKey, s32 fileIdx) {
    char filename[128];

    if ((arcKey < 0) || (fileIdx < 0)) {
        return -1;
    }

    Archive *arc = &sArchives[arcKey];

    if (fileIdx >= arc->nFiles) {
        return -1;
    }

    Archive_PKH *files = (Archive_PKH *)arc->files;
    if (files == NULL) {
        return -1;
    }

    STD_TSPrintf(filename, "(%d)", fileIdx);

    return ReadFileByID(dst, &files[fileIdx], arc->binFileID, filename);
}

s32 AllocateFileHandle(void **dataOut, Archive_PKH *file, FSFileID fileID, filekey_t *keyOut, const char *name) {
    s32 srcSize          = file->size;
    FileHandle *handle   = GetFileHandle(keyOut);
    s32 destSize         = AllocateFileBuffers(handle, &file->compHeader, srcSize, dataOut, name);

    handle->fileID = fileID;
    handle->offset = file->offset;
    handle->size   = file->size;
    handle->flags  = file->compHeader;
    handle->cur    = handle->uncompressed;

    return destSize;
}

s32 ReadFileByNameDeferred(void **dst, arckey_t arcKey, const char *name, filekey_t *keyOut) {
    if (arcKey < 0) {
        return -1;
    }

    Archive *arc = &sArchives[arcKey];

    Archive_PKH *files = FindFile(arcKey, name);
    if (files == NULL) {
        return -1;
    }

    return AllocateFileHandle(dst, files, arc->binFileID, keyOut, name);
}

s32 ReadFileByIdxDeferred(void **dst, arckey_t arcKey, s32 fileIdx, filekey_t *keyOut) {
    char name[128];

    if ((arcKey < 0) || (fileIdx < 0)) {
        return -1;
    }

    Archive *arc = &sArchives[arcKey];

    Archive_PKH *files = (Archive_PKH *)arc->files;
    if (files == NULL) {
        return -1;
    }

    STD_TSPrintf(name, "(%d)", fileIdx);

    return AllocateFileHandle(dst, &files[fileIdx], arc->binFileID, keyOut, name);
}

BOOL IsFileBusy(filekey_t key) {
    FileHandle *handles = sFileHandles;

    if (handles[key].uncompressed == NULL) {
        handles[key].cur = NULL;
        return FALSE;
    }

    return TRUE;
}

void Panic(void) { OS_Terminate(); }

void Init(void) {
    MATH_CRC32InitTable(&sCrc32Table);

    MI_CpuClear8(&sArchives, sizeof(sArchives));

    sFileHandles = (FileHandle *)AllocateClear(0x700, -1);

    FS_ChangeDir("/data_iz/");

    sProcessStack = static_cast<char *>(Allocate(FILE_SYSTEM_STACK_SIZE, -1));

    OS_CreateThread(&sProcessThread, &ProcessFiles, NULL, sProcessStack + FILE_SYSTEM_STACK_SIZE, FILE_SYSTEM_STACK_SIZE,
                    28);

    OS_WakeupThreadDirect(&sProcessThread);
}

u32 HashFilename(const char *name) {
    char temp[128];

    for (int i = 0; i < sizeof(temp); i++) {
        char c = *name++;

        // uppercase to lowercase
        if ((c >= 'A') && (c <= 'Z')) {
            temp[i] = c + ('a' - 'A');
        } else {
            temp[i] = c;
        }

        if (c == '\0') {
            return MATH_CalcCRC32(&sCrc32Table, &temp, i);
        }
    }

    return 0;
}

s32 FindFileIdxInternal(Archive_PKH *files, u16 nFiles, const char *name) {
    u32 hash = HashFilename(name);

    u32 left  = 0;
    u32 right = nFiles - 1;
    u32 mid   = nFiles / 2;

    // binary search
    for (int depth = 0; depth < 0x10000; depth++) {
        u32 midHash = files[mid].hash;
        if (hash == midHash) {
            return mid;
        }
        if (left == right) {
            break;
        }
        if (hash < midHash) {
            right = mid - 1;
            mid -= (mid - left) + 1 >> 1;
        } else {
            left = mid + 1;
            mid += (right - mid) + 1 >> 1;
        }
    }

    return -1;
}

s32 FindFileIdx(arckey_t arcKey, const char *name) {
    if (arcKey < 0) {
        return -1;
    }

    Archive *arc = &sArchives[arcKey];
    Archive_PKH *files = (Archive_PKH *)arc->files;

    if (files == NULL) {
        return -1;
    }

    return FindFileIdxInternal(files, arc->nFiles, name);
}

Archive_PKH *FindFile(arckey_t arcKey, const char *name) {
    if (arcKey < 0) {
        return NULL;
    }

    Archive *arc = &sArchives[arcKey];

    Archive_PKH *files = (Archive_PKH *)arc->files;
    if (files == NULL) {
        return NULL;
    }

    s32 fileIdx = FindFileIdxInternal(files, arc->nFiles, name);
    if (fileIdx >= 0) {
        return &files[fileIdx];
    }

    return NULL;
}

void *Allocate(int size, int nextArena) {
    if (nextArena >= 0) {
        gAllocator.setNextArena(nextArena);
    }

    return gAllocator.allocate(size, 0, 1);
}

void *AllocateClear(int size, int nextArena) {
    void *ptr = Allocate(size, nextArena);

    if (ptr != NULL) {
        MI_CpuClearFast(ptr, size);
    }

    return ptr;
}

void Deallocate(void *ptr) { gAllocator.deallocate(ptr); }

void SetNextArena(int nextArena) { gAllocator.setNextArena(nextArena); }

} /* namepace FileSystem */

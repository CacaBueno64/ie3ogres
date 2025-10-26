#ifdef __cplusplus
extern "C" {
#endif

#include "l5fs.hpp"

s32 sCurFileHandleID;
void *sProcessStack;
L5FileHandle *sFileHandles;
static OSThread sProcessThread;
static L5Archive sArchives[18];
static MATHCRC32Table sCrc32Table;

s32 L5FSi_ReadFileInChunks(FSFile *file, void *data, s32 len);
s32 L5FSi_ReadFileDirect(void **dst, FSFileID file_id, s32 offset, s32 len);
void L5FSi_ProcessFiles(void *arg);
L5FileHandle *L5FSi_GetFileHandle(s8 *idOut);
s32 L5FSi_AllocateFileBuffers(L5FileHandle *handle, MICompressionHeader *compHeader, s32 size, void **dataOut,
                              const char *path);
s32 L5FSi_AllocateFileHandle(void **dataOut, PKHFile *file, FSFileID fileID, s8 *idOut, const char *name);
u32 L5FSi_HashFilename(const char *name);
s32 L5FSi_FindFileIdxInternal(PKHFile *files, u16 nFiles, const char *name);

s32 L5FSi_ReadFileInChunks(FSFile *file, void *data, s32 len) {
#define CHUNK_SIZE 0x4000
    u8 *ptr     = (u8 *)data;
    s32 temp_r3 = len + (CHUNK_SIZE - 1);
    s32 temp_r6 = (s32)(temp_r3 + ((u32)(temp_r3 >> 0xD) >> 0x12)) >> 0xE;
    s32 size    = 0;

    for (int i = 0; i < temp_r6; i++) {
        s32 r2 = CHUNK_SIZE;
        if (len < CHUNK_SIZE) {
            r2 = len;
        }
        len -= r2;
        size += FS_ReadFile(file, ptr + i * CHUNK_SIZE, r2);
    }

    return size;
}

u32 L5FS_CalcCRC32(const void *data, u32 dataLength) { return MATH_CalcCRC32(&sCrc32Table, data, dataLength); }

s32 L5FSi_ReadFileDirect(void **dst, FSFileID file_id, s32 offset, s32 len) {
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
        *dst = L5FS_Allocate(len, -1);
    }

    s32 size = L5FSi_ReadFileInChunks(&file, *dst, len);
    (void)FS_CloseFile(&file);

    return size;
}

void L5FSi_ProcessFiles(void *arg) {
#pragma unused(arg)

    FSFile file;
    s32 idx              = 0;
    L5FileHandle *handle = &sFileHandles[0];

    FS_InitFile(&file);

    while (TRUE) {
        OS_Sleep(1);

        if (handle->uncompressed == NULL) {
            continue;
        }

        void *dst = handle->compressed ? handle->compressed : handle->uncompressed;

        (void)L5FSi_ReadFileDirect(&dst, handle->fileID, handle->offset, handle->size);

        if (handle->compressed != NULL) {
            switch (MI_GetCompressionType(&handle->flags)) {
            case MI_COMPRESSION_LZ: MI_UncompressLZ8(dst, handle->uncompressed); break;
            case MI_COMPRESSION_HUFFMAN: MI_UncompressHuffman(dst, handle->uncompressed); break;
            default: OS_Terminate();
            }

            L5FS_Deallocate(handle->compressed);
            DC_FlushRange(handle->uncompressed, MI_GetUncompressedSize(&handle->flags));
        }

        idx                  = (idx + 1) % 56;
        handle->uncompressed = NULL;
        handle               = &sFileHandles[idx];
    }
}

s32 L5FS_ReadFile(void **dst, const char *filepath, s32 offset, s32 len) {
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
        *dst = L5FS_Allocate(len, -1);
    }

    s32 size = L5FSi_ReadFileInChunks(&file, *dst, len);
    (void)FS_CloseFile(&file);

    return size;
}

L5FileHandle *L5FSi_GetFileHandle(filekey_t *keyOut) {
    L5FileHandle *handle = &sFileHandles[sCurFileHandleID];

    if (handle->uncompressed != NULL) {
        OS_Terminate();
    }

    if (keyOut != NULL) {
        *keyOut = sCurFileHandleID;
    }

    sCurFileHandleID = (sCurFileHandleID + 1) % 56;

    return handle;
}

s32 L5FSi_AllocateFileBuffers(L5FileHandle *handle, MICompressionHeader *compHeader, s32 size, void **dataOut,
                              const char *path) {
    if (compHeader->compType == 0) {
        if (*dataOut != NULL) {
            handle->uncompressed = *dataOut;
        } else {
            void *ptr            = L5FS_Allocate(size, -1);
            handle->uncompressed = ptr;
            *dataOut             = ptr;
        }
        handle->compressed = NULL;
    } else {
        if (*dataOut != NULL) {
            handle->uncompressed = *dataOut;
        } else {
            void *ptr            = L5FS_Allocate(compHeader->destSize, -1);
            handle->uncompressed = ptr;
            *dataOut             = ptr;
        }
        handle->compressed = L5FS_Allocate(size, 257);
        size               = compHeader->destSize;
    }

    return size;
}

s32 L5FS_ReadFileDeferred(void **dataOut, const char *path, s8 *idOut, s32 offset, s32 size) {
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

    *(u32 *)&flags       = 0;
    L5FileHandle *handle = L5FSi_GetFileHandle(idOut);
    s32 buffer_size      = L5FSi_AllocateFileBuffers(handle, &flags, size, dataOut, path);

    handle->fileID = fileid;
    handle->offset = offset;
    handle->size   = size;
    handle->flags  = flags;
    handle->cur    = handle->uncompressed;

    return buffer_size;
}

arckey_t L5FS_OpenArchiveDirect(void *data, const char *path) {
    char pkh_path[128];
    char pkb_path[128];

    STD_TSPrintf(pkh_path, "%s.pkh", path);
    STD_TSPrintf(pkb_path, "%s.pkb", path);

    void *file = data ? data : NULL; // useless.

    for (int i = 0; i < 18; i++) {
        if (!sArchives[i].files && !sArchives[i].inUse) {
            s32 size = L5FS_ReadFile(&file, pkh_path, 0, 0);
            if (size < 0) {
                return -1;
            }

            sArchives[i].inUse  = TRUE;
            sArchives[i].nFiles = (u32)size / 0x10;
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

arckey_t L5FS_OpenArchiveDeferred(void *data, const char *path) {
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

            s32 size = L5FS_ReadFileDeferred(&sArchives[i].files, pkh_path, &sArchives[i].arcFileKey, 0, -1);

            sArchives[i].nFiles = (u32)size / 0x10;

            if (!FS_ConvertPathToFileID(&sArchives[i].binFileID, pkb_path)) {
                OS_Terminate();
            }

            return i;
        }
    }

    OS_Terminate();
    return -1;
}

void L5FS_CloseArchive(arckey_t key) {
    if (key < 0) {
        return;
    }

    if (sArchives[key].files == NULL) {
        return;
    }

    L5FS_Deallocate(sArchives[key].files);
    MI_CpuClear8(&sArchives[key].files, sizeof(sArchives[key]));
}

BOOL L5FS_IsArchiveReady(arckey_t key) {
    if (sArchives[key].arcFileKey >= 0) {
        if (L5FS_IsFileBusy(sArchives[key].arcFileKey)) {
            return FALSE;
        }
        sArchives[key].arcFileKey = -1;
        return TRUE;
    }

    return TRUE;
}

void L5FS_WaitArchiveReady(arckey_t key) {
    extern void L5Thread_Yield(void);

    while (TRUE) {
        if (L5FS_IsArchiveReady(key)) {
            return;
        }
        L5Thread_Yield();
    }
}

PKHFile *L5FS_GetFile(arckey_t arcKey, s32 fileIdx) {
    L5Archive *arc = &sArchives[arcKey];

    if (fileIdx >= arc->nFiles) {
        return NULL;
    }

    PKHFile *files = (PKHFile *)arc->files;

    return &files[fileIdx];
}

s32 L5FS_ReadFileByID(void **dst, PKHFile *files, FSFileID file_id, const char *filename) {
    int size;

    if (*dst == NULL) {
        if (files->compHeader.compType == 0) {
            size = files->size;
        } else {
            size = files->compHeader.destSize;
        }

        *dst = L5FS_Allocate(size, -1);
    }

    if (files->compHeader.compType == 0) {
        size = L5FSi_ReadFileDirect(dst, file_id, files->offset, files->size);
    } else {
        void *temp = L5FS_Allocate(files->size, 257);

        if (L5FSi_ReadFileDirect(&temp, file_id, files->offset, files->size) < 0) {
            OS_Terminate();
        }

        switch (MI_GetCompressionType(&files->compHeader)) {
        case MI_COMPRESSION_LZ: MI_UncompressLZ8(temp, *dst); break;
        case MI_COMPRESSION_HUFFMAN: MI_UncompressHuffman(temp, *dst); break;
        default: OS_Terminate(); break;
        }

        L5FS_Deallocate(temp);

        size = files->compHeader.destSize;
        DC_FlushRange(*dst, size);
    }

    return size;
}

s32 L5FS_ReadFileByName(void **dst, arckey_t arcKey, const char *filename) {
    if (arcKey < 0) {
        return -1;
    }

    L5Archive *arc = &sArchives[arcKey];

    PKHFile *files = L5FS_FindFile(arcKey, filename);

    if (files == NULL) {
        return -1;
    }

    return L5FS_ReadFileByID(dst, files, arc->binFileID, filename);
}

s32 L5FS_ReadFileByIdx(void **dst, arckey_t arcKey, s32 fileIdx) {
    char filename[128];

    if ((arcKey < 0) || (fileIdx < 0)) {
        return -1;
    }

    L5Archive *arc = &sArchives[arcKey];

    if (fileIdx >= arc->nFiles) {
        return -1;
    }

    PKHFile *files = (PKHFile *)arc->files;
    if (files == NULL) {
        return -1;
    }

    STD_TSPrintf(filename, "(%d)", fileIdx);

    return L5FS_ReadFileByID(dst, &files[fileIdx], arc->binFileID, filename);
}

s32 L5FSi_AllocateFileHandle(void **dataOut, PKHFile *file, FSFileID fileID, filekey_t *keyOut, const char *name) {
    s32 srcSize          = file->size;
    L5FileHandle *handle = L5FSi_GetFileHandle(keyOut);
    s32 destSize         = L5FSi_AllocateFileBuffers(handle, &file->compHeader, srcSize, dataOut, name);

    handle->fileID = fileID;
    handle->offset = file->offset;
    handle->size   = file->size;
    handle->flags  = file->compHeader;
    handle->cur    = handle->uncompressed;

    return destSize;
}

s32 L5FS_ReadFileByNameDeferred(void **dst, arckey_t arcKey, const char *name, filekey_t *keyOut) {
    if (arcKey < 0) {
        return -1;
    }

    L5Archive *arc = &sArchives[arcKey];

    PKHFile *files = L5FS_FindFile(arcKey, name);
    if (files == NULL) {
        return -1;
    }

    return L5FSi_AllocateFileHandle(dst, files, arc->binFileID, keyOut, name);
}

s32 L5FS_ReadFileByIdxDeferred(void **dst, arckey_t arcKey, s32 fileIdx, filekey_t *keyOut) {
    char name[128];

    if ((arcKey < 0) || (fileIdx < 0)) {
        return -1;
    }

    L5Archive *arc = &sArchives[arcKey];

    PKHFile *files = (PKHFile *)arc->files;
    if (files == NULL) {
        return -1;
    }

    STD_TSPrintf(name, "(%d)", fileIdx);

    return L5FSi_AllocateFileHandle(dst, &files[fileIdx], arc->binFileID, keyOut, name);
}

BOOL L5FS_IsFileBusy(filekey_t key) {
    L5FileHandle *handles = sFileHandles;

    if (handles[key].uncompressed == NULL) {
        handles[key].cur = NULL;
        return FALSE;
    }

    return TRUE;
}

void L5FS_Panic(void) { OS_Terminate(); }

void L5FS_Init(void) {
#define STACK_SIZE 2048

    MATH_CRC32InitTable(&sCrc32Table);

    MI_CpuClear8(&sArchives, sizeof(sArchives));

    sFileHandles = (L5FileHandle *)L5FS_AllocateClear(0x700, -1);

    FS_ChangeDir("/data_iz/");

    sProcessStack = L5FS_Allocate(STACK_SIZE, -1);

    OS_CreateThread(&sProcessThread, &L5FSi_ProcessFiles, NULL, (void *)((int)sProcessStack + STACK_SIZE), STACK_SIZE,
                    28);

    OS_WakeupThreadDirect(&sProcessThread);
}

u32 L5FSi_HashFilename(const char *name) {
    char temp[128];

    for (int i = 0; i < sizeof(temp); i++) {
        char c = *name++;

        // uppercase to lowercase
        if ((c >= 'A') && (c <= 'Z')) {
            temp[i] = c + ('a' - 'A');
        } else {
            temp[i] = c;
        }

        if (c == 0) {
            return MATH_CalcCRC32(&sCrc32Table, &temp, i);
        }
    }

    return 0;
}

s32 L5FSi_FindFileIdxInternal(PKHFile *files, u16 nFiles, const char *name) {
    u32 hash = L5FSi_HashFilename(name);

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

s32 L5FS_FindFileIdx(arckey_t arcKey, const char *name) {
    if (arcKey < 0) {
        return -1;
    }

    L5Archive *arc = &sArchives[arcKey];
    PKHFile *files = (PKHFile *)arc->files;

    if (files == NULL) {
        return -1;
    }

    return L5FSi_FindFileIdxInternal(files, arc->nFiles, name);
}

PKHFile *L5FS_FindFile(arckey_t arcKey, const char *name) {
    if (arcKey < 0) {
        return NULL;
    }

    L5Archive *arc = &sArchives[arcKey];

    PKHFile *files = (PKHFile *)arc->files;
    if (files == NULL) {
        return NULL;
    }

    s32 fileIdx = L5FSi_FindFileIdxInternal(files, arc->nFiles, name);
    if (fileIdx >= 0) {
        return &files[fileIdx];
    }

    return NULL;
}

void *L5FS_Allocate(int size, int nextArena) {
    if (nextArena >= 0) {
        gL5Allocator.setNextArena(nextArena);
    }

    return gL5Allocator.allocate(size, 0, 1);
}

void *L5FS_AllocateClear(int size, int nextArena) {
    void *ptr = L5FS_Allocate(size, nextArena);

    if (ptr != NULL) {
        MI_CpuClearFast(ptr, size);
    }

    return ptr;
}

void L5FS_Deallocate(void *ptr) { gL5Allocator.deallocate(ptr); }

void L5FS_SetNextArena(int nextArena) { gL5Allocator.setNextArena(nextArena); }

#ifdef __cplusplus
} /* extern "C" */
#endif

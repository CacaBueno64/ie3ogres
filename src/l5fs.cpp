#ifdef __cplusplus
extern "C" {
#endif

#include "l5fs.hpp"

UnkStruct_020BC504 unk_020BC504;
OSThread unk_020BC510;
L5Archive L5FS_sArchives[18];
MATHCRC32Table Crc32Table;

s32 FUN_0208596c(FSFile *file, void *data, s32 len)
{
    u8 *ptr = (u8 *)data;
    s32 temp_r3 = len + 0x3FFF;
    s32 temp_r6 = (s32) (temp_r3 + ((u32) (temp_r3 >> 0xD) >> 0x12)) >> 0xE;
    s32 size = 0;

    for (int i = 0; i < temp_r6; i++) {
        s32 r2 = 0x4000;
        if (len < 0x4000) {
            r2 = len;
        }
        len -= r2;
        size += FS_ReadFile(file, &ptr[i * 0x4000], r2);
    }

    return size;
}

u32 Common_CalcCRC32(const void *data, u32 dataLength)
{
    return MATH_CalcCRC32(&Crc32Table, data, dataLength);
}

s32 Common_OpenFileReadByID(void **dst, FSFileID file_id, s32 offset, s32 len)
{
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
        *dst = FUN_020866d8(len, -1);
    }

    s32 size = FUN_0208596c(&file, *dst, len);
    (void)FS_CloseFile(&file);

    return size;
}

void FUN_02085ab4(void *arg)
{
    #pragma unused(arg)

    FSFile file;
    s32 idx = 0;
    L5FileHandle *handle = unk_020BC504.fileHandles;

    FS_InitFile(&file);

    while (TRUE)
    {
        OS_Sleep(1);
        
        if (handle->uncompressed == NULL) {
            continue;
        }
        
        void* dst = handle->compressed ? handle->compressed : handle->uncompressed;
        
        (void)Common_OpenFileReadByID(&dst, handle->fileID, handle->offset, handle->size);
        
        if (handle->compressed != NULL) {
            switch (MI_GetCompressionType(&handle->flags)) {
                case MI_COMPRESSION_LZ:
                    MI_UncompressLZ8(dst, handle->uncompressed);
                    break;
                case MI_COMPRESSION_HUFFMAN:
                    MI_UncompressHuffman(dst, handle->uncompressed);
                    break;
                default:
                    OS_Terminate();
            }
            
            Common_Deallocate(handle->compressed);
            DC_FlushRange(handle->uncompressed, MI_GetUncompressedSize(&handle->flags));
        }
        
        idx = (idx + 1) % 56;
        handle->uncompressed = NULL;
        handle = &unk_020BC504.fileHandles[idx];
    }
}

s32 Common_OpenFileRead(void **dst, const char *filepath, s32 offset, s32 len)
{
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
        *dst = FUN_020866d8(len, -1);
    }

    s32 size = FUN_0208596c(&file, *dst, len);
    (void)FS_CloseFile(&file);

    return size;
}

L5FileHandle* L5FS_GetFileHandle(s8 *idOut)
{
    L5FileHandle *handle = &unk_020BC504.fileHandles[unk_020BC504.unk0];

    if (handle->uncompressed != NULL) {
        OS_Terminate();
    }

    if (idOut != NULL) {
        *idOut = unk_020BC504.unk0;
    }

    unk_020BC504.unk0 = (unk_020BC504.unk0 + 1) % 56;

    return handle;
}
//
s32 L5FS_AllocateFileBuffers(L5FileHandle *handle, MICompressionHeader *compHeader, s32 size, void **dataOut, const char* path)
{
    if (compHeader->compType == 0)
    {
        if (*dataOut != NULL) {
            handle->uncompressed = *dataOut;
        } else {
            void *ptr = FUN_020866d8(size, -1);
            handle->uncompressed = ptr;
            *dataOut = ptr;
        }
        handle->compressed = NULL;
    }
    else
    {
        if (*dataOut != NULL) {
            handle->uncompressed = *dataOut;
        } else {
            void *ptr = FUN_020866d8(compHeader->destSize, -1);
            handle->uncompressed = ptr;
            *dataOut = ptr;
        }
        handle->compressed = FUN_020866d8(size, 257);
        size = compHeader->destSize;
    }

    return size;
}

s32 L5FS_ReadUncompressedFileDeferred(void **dataOut, const char *path, s8 *idOut, s32 offset, s32 size)
{
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

    *(u32 *)&flags = 0;
    L5FileHandle *handle = L5FS_GetFileHandle(idOut);
    s32 buffer_size = L5FS_AllocateFileBuffers(handle, &flags, size, dataOut, path);

    handle->fileID = fileid;
    handle->offset = offset;
    handle->size = size;
    handle->flags = flags;
    handle->cur = handle->uncompressed;

    return buffer_size;
}

s32 L5FS_OpenArchiveDirect(void *data, const char *archive_path)
{
    char pkh_path[128];
    char pkb_path[128];

    STD_TSPrintf(pkh_path, "%s.pkh", archive_path);
    STD_TSPrintf(pkb_path, "%s.pkb", archive_path);

    void *file = data ? data : NULL; // useless.
    
    for (s32 i = 0; i < 18; i++)
    {
        if (!L5FS_sArchives[i].files && !L5FS_sArchives[i].inUse)
        {
            s32 size = Common_OpenFileRead(&file, pkh_path, 0, 0);            
            if (size < 0) {
                return -1;
            }

            L5FS_sArchives[i].inUse = TRUE;
            L5FS_sArchives[i].nFiles = (u32)size / 0x10;
            L5FS_sArchives[i].files = file;

            if (!FS_ConvertPathToFileID(&L5FS_sArchives[i].binFileID, pkb_path)) {
                OS_Terminate();
            }
            return i;
        }
    }

    OS_Terminate();
    return -1;
}

s32 L5FS_OpenArchiveDeferred(void *data, const char *archive_path)
{
    char pkh_path[128];
    char pkb_path[128];

    STD_TSPrintf(pkh_path, "%s.pkh", archive_path);
    STD_TSPrintf(pkb_path, "%s.pkb", archive_path);

    for (s32 i = 0; i < 18; i++)
    {
        if (L5FS_sArchives[i].files == NULL && !L5FS_sArchives[i].inUse)
        {
            L5FS_sArchives[i].inUse = TRUE;

            if (data != NULL) {
                L5FS_sArchives[i].files = data;
            }

            s32 size = L5FS_ReadUncompressedFileDeferred(&L5FS_sArchives[i].files, pkh_path, &L5FS_sArchives[i].arcFileHandle, 0, -1);

            L5FS_sArchives[i].nFiles = (u32)size / 0x10;
            
            if (!FS_ConvertPathToFileID(&L5FS_sArchives[i].binFileID, pkb_path)) {
                OS_Terminate();
            }
            
            return i;
        }
    }

    OS_Terminate();
    return -1;
}

void FUN_02086040(s32 arcIdx)
{
    if (arcIdx < 0) {
        return;
    }
    
    if (L5FS_sArchives[arcIdx].files == NULL) {
        return;
    }

    Common_Deallocate(L5FS_sArchives[arcIdx].files);
    MI_CpuClear8(&L5FS_sArchives[arcIdx].files, sizeof(L5FS_sArchives[arcIdx]));
}

BOOL FUN_02086080(s32 arcIdx)
{
    if (L5FS_sArchives[arcIdx].arcFileHandle >= 0) {
        BOOL result;
        
        if (FUN_02086480(L5FS_sArchives[arcIdx].arcFileHandle)) {
            result = FALSE;
        } else {
            L5FS_sArchives[arcIdx].arcFileHandle = -1;
            result = TRUE;
        }
        
        return result;
    }
    
    return TRUE;
}

void FUN_020860c4(s32 arcIdx)
{
    extern void FUN_0206ee5c(void);

    while (TRUE) {
        if (FUN_02086080(arcIdx)) {
            return;
        }
        FUN_0206ee5c();
    }
}

PKHFile *FUN_020860e8(s32 arcIdx, s32 fileIdx)
{
    L5Archive *arc = &L5FS_sArchives[arcIdx];
    
    if (fileIdx >= arc->nFiles) {
        return NULL;
    }
    
    PKHFile *pkh_file = (PKHFile *)arc->files;
    
    return &pkh_file[fileIdx];
}

s32 L5FS_ReadFileByID(void **dst, PKHFile *pkh_file, FSFileID file_id, const char *filename)
{
    int size;
    
    if (*dst == NULL) {
        if (pkh_file->compHeader.compType == 0) {
            size = pkh_file->size;
        } else {
            size = pkh_file->compHeader.destSize;
        }
        
        *dst = FUN_020866d8(size, -1);
    }
    
    if (pkh_file->compHeader.compType == 0)
    {
        size = Common_OpenFileReadByID(dst, file_id, pkh_file->offset, pkh_file->size);
    }
    else
    {
        void *temp = FUN_020866d8(pkh_file->size, 257);
        
        if (Common_OpenFileReadByID(&temp, file_id, pkh_file->offset, pkh_file->size) < 0) {
            OS_Terminate();
        }

        switch (MI_GetCompressionType(&pkh_file->compHeader)) {
            case MI_COMPRESSION_LZ:
                MI_UncompressLZ8(temp, *dst);
                break;
            case MI_COMPRESSION_HUFFMAN:
                MI_UncompressHuffman(temp, *dst);
                break;
            default:
                OS_Terminate();
                break;
        }

        Common_Deallocate(temp);

        size = pkh_file->compHeader.destSize;
        DC_FlushRange(*dst, size);
    }
    
    return size;
}

s32 FUN_0208622c(void **param0, s32 idx, const char *filename)
{
    if (idx < 0) {
        return -1;
    }

    L5Archive *arc = &L5FS_sArchives[idx];
    
    PKHFile *pkh_file = FUN_02086684(idx, filename);
    
    if (pkh_file == NULL) {
        return -1;
    }
    
    return L5FS_ReadFileByID(param0, pkh_file, arc->binFileID, filename);
}

s32 FUN_02086284(void **dst, s32 arcIdx, s32 fileIdx)
{
    char filename[128];

    if ((arcIdx < 0) || (fileIdx < 0)) {
        return -1;
    }
        
    L5Archive *arc = &L5FS_sArchives[arcIdx];

    if (fileIdx >= arc->nFiles) {
        return -1;
    }

    PKHFile *pkh_file = (PKHFile *)arc->files;
    if (pkh_file == NULL) {
        return -1;
    }

    STD_TSPrintf(filename, "(%d)", fileIdx);

    return L5FS_ReadFileByID(dst, &pkh_file[fileIdx], arc->binFileID, filename);
}

s32 L5FS_AllocateFileHandle(void **dataOut, PKHFile *file, FSFileID fileID, s8 *idOut, const char *name)
{
    s32 srcSize = file->size;
    L5FileHandle *handle = L5FS_GetFileHandle(idOut);
    s32 destSize = L5FS_AllocateFileBuffers(handle, &file->compHeader, srcSize, dataOut, name);

    handle->fileID = fileID;
    handle->offset = file->offset;
    handle->size = file->size;
    handle->flags = file->compHeader;
    handle->cur = handle->uncompressed;

    return destSize;
}

s32 FUN_02086390(void **dst, s32 arcIdx, const char *name, s8 *idOut)
{
    if (arcIdx < 0) {
        return -1;
    }

    L5Archive *arc = &L5FS_sArchives[arcIdx];

    PKHFile *pkh_file = FUN_02086684(arcIdx, name);
    if (pkh_file == NULL) {
        return -1;
    }

    return L5FS_AllocateFileHandle(dst, pkh_file, arc->binFileID, idOut, name);
}

s32 FUN_020863fc(void **dst, s32 arcIdx, s32 fileIdx, s8 *idOut)
{
    char name[128];

    if ((arcIdx < 0) || (fileIdx < 0)) {
        return -1;
    }

    L5Archive *arc = &L5FS_sArchives[arcIdx];

    PKHFile *pkh_file = (PKHFile *)arc->files;
    if (pkh_file == NULL) {
        return -1;
    }

    STD_TSPrintf(name, "(%d)", fileIdx);

    return L5FS_AllocateFileHandle(dst, &pkh_file[fileIdx], arc->binFileID, idOut, name);
}

BOOL FUN_02086480(s32 handleIdx)
{
    L5FileHandle *handles = unk_020BC504.fileHandles;

    if (handles[handleIdx].uncompressed == NULL) {
        handles[handleIdx].cur = NULL;
        return FALSE;
    }

    return TRUE;
}

void FUN_020864a8(void)
{
    OS_Terminate();
}

void FUN_020864b4(void)
{
    #define STACK_SIZE 2048

    MATH_CRC32InitTable(&Crc32Table);

    MI_CpuClear8(&L5FS_sArchives, sizeof(L5FS_sArchives));

    unk_020BC504.fileHandles = (L5FileHandle *)FUN_0208670c(0x700, -1);

    FS_ChangeDir("/data_iz/");

    unk_020BC504.stack = FUN_020866d8(STACK_SIZE, -1);

    OS_CreateThread(
        &unk_020BC510,
        &FUN_02085ab4,
        NULL,
        (void *)((int)unk_020BC504.stack + STACK_SIZE),
        STACK_SIZE,
        28
    );
    
    OS_WakeupThreadDirect(&unk_020BC510);
}

u32 FUN_02086564(const char *name)
{
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
            return MATH_CalcCRC32(&Crc32Table, &temp, i);
        }
    }
    
    return 0;
}

s32 FUN_020865cc(PKHFile *pkh_file, u16 nFiles, const char *name)
{
    u32 hash = FUN_02086564(name);

    int r2 = 0;
    int r3 = nFiles - 1;
    int r12 = nFiles / 2;

    for (int lr = 0; lr < 0x10000; lr++) {
        u32 entryHash = pkh_file[r12].hash;
        if (hash == entryHash) {
            return r12;
        }
        if (r2 == r3) {
            break;
        }
        if (hash < entryHash) {
            u32 r1 = (r12 - r2) + 1;
            r3 = r12 - 1;
            r12 -= r1 >> 1;
        } else {
            u32 r1 = (r3 - r12) + 1;
            r2 = r12 + 1;
            r12 += r1 >> 1;
        }
    }

    return -1;
}

s32 FUN_02086640(s32 arcIdx, const char *name)
{
    if (arcIdx < 0) {
        return -1;
    }

    L5Archive *arc = &L5FS_sArchives[arcIdx];
    PKHFile *pkh_file = (PKHFile *)arc->files;

    if (pkh_file == NULL) {
        return -1;
    }

    return FUN_020865cc(pkh_file, arc->nFiles, name);
}

PKHFile *FUN_02086684(s32 arcIdx, const char *name)
{
    if (arcIdx < 0) {
        return NULL;
    }

    L5Archive *arc = &L5FS_sArchives[arcIdx];

    PKHFile *pkh_file = (PKHFile *)arc->files;
    if (pkh_file == NULL) {
        return NULL;
    }

    s32 fileIdx = FUN_020865cc(pkh_file, arc->nFiles, name);
    if (fileIdx >= 0) {
        return &pkh_file[fileIdx];
    }
    
    return NULL;
}

void *FUN_020866d8(int size, int nextArena)
{
    if (nextArena >= 0) {
        gL5Allocator.setNextArena(nextArena);
    }

    return gL5Allocator.allocate(size, 0, 1);
}

void *FUN_0208670c(int size, int nextArena)
{
    void *ptr = FUN_020866d8(size, nextArena);

    if (ptr != NULL) {
        MI_CpuClearFast(ptr, size);
    }

    return ptr;
}

void Common_Deallocate(void *ptr)
{
    gL5Allocator.deallocate(ptr);
}

void Common_SetNextArena(int nextArena)
{
    gL5Allocator.setNextArena(nextArena);
}

#ifdef __cplusplus
} /* extern "C" */
#endif

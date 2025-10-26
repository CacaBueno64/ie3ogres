#ifndef IE3OGRES_COMMON_H
#define IE3OGRES_COMMON_H

#include <nitro.h>

#include "l5allocator.hpp"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u32 hash;
    s32 offset;
    s32 size;
    MICompressionHeader compHeader;
} PKHFile; // headerless type

typedef struct {
    void *files; // interpret as PKHFile *
    BOOL inUse;
    FSFileID binFileID; // pkb
    s8 arcFileHandle;
    u16 nFiles;
} L5Archive;

typedef struct {
    void *uncompressed;
    void *compressed;
    void *cur;
    FSFileID fileID;
    s32 offset;
    s32 size;
    MICompressionHeader flags;
} L5FileHandle;

typedef struct {
    s32 unk0;
    void *stack;
    L5FileHandle *fileHandles;
} UnkStruct_020BC504;

s32 FUN_0208596c(FSFile *file, void *data, s32 len);
u32 Common_CalcCRC32(const void *data, u32 dataLength);
s32 Common_OpenFileReadByID(void **dst, FSFileID file_id, s32 offset, s32 len);
void FUN_02085ab4(void *arg);
s32 Common_OpenFileRead(void **dst, const char *filepath, s32 offset, s32 len);
L5FileHandle* L5FS_GetFileHandle(s8 *idOut);
s32 L5FS_AllocateFileBuffers(L5FileHandle *handle, MICompressionHeader *compHeader, s32 size, void **dataOut, const char* path);
s32 L5FS_ReadUncompressedFileDeferred(void **dataOut, const char *path, s8 *idOut, s32 offset, s32 size);
s32 L5FS_OpenArchiveDirect(void *data, const char *archive_path);
s32 L5FS_OpenArchiveDeferred(void *data, const char *archive_path);
void FUN_02086040(s32 arcIdx);
BOOL FUN_02086080(s32 arcIdx);
void FUN_020860c4(s32 arcIdx);
PKHFile *FUN_020860e8(s32 arcIdx, s32 fileIdx);
s32 L5FS_ReadFileByID(void **dst, PKHFile *pkh_file, FSFileID file_id, const char *filename);
s32 FUN_0208622c(void **param0, s32 idx, const char *filename);
s32 FUN_02086284(void **dst, s32 arcIdx, s32 fileIdx);
s32 L5FS_AllocateFileHandle(void **dataOut, PKHFile *file, FSFileID fileID, s8 *idOut, const char *name);
s32 FUN_02086390(void **dst, s32 arcIdx, const char *name, s8 *idOut);
s32 FUN_020863fc(void **dst, s32 arcIdx, s32 fileIdx, s8 *idOut);
BOOL FUN_02086480(s32 handleIdx);
void FUN_020864a8(void);
void FUN_020864b4(void);
u32 FUN_02086564(const char *name);
s32 FUN_020865cc(PKHFile *pkh_file, u16 nFiles, const char *name);
s32 FUN_02086640(s32 arcIdx, const char *name);
PKHFile *FUN_02086684(s32 arcIdx, const char *name);
void *FUN_020866d8(int size, int nextArena);
void *FUN_0208670c(int size, int nextArena);
void Common_Deallocate(void *ptr);
void Common_SetNextArena(int nextArena);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif //IE3OGRES_COMMON_H

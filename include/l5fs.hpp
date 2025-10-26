#ifndef IE3OGRES_COMMON_H
#define IE3OGRES_COMMON_H

#include <nitro.h>

#include "l5allocator.hpp"

#ifdef __cplusplus
extern "C" {
#endif

typedef int arckey_t;
typedef signed char filekey_t;

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
    filekey_t arcFileKey;
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

u32 L5FS_CalcCRC32(const void *data, u32 dataLength);

s32 L5FS_ReadFile(void **dst, const char *filepath, s32 offset, s32 len);
s32 L5FS_ReadFileDeferred(void **dataOut, const char *path, s8 *idOut, s32 offset, s32 size);

arckey_t L5FS_OpenArchiveDirect(void *data, const char *path);
arckey_t L5FS_OpenArchiveDeferred(void *data, const char *path);
void L5FS_CloseArchive(arckey_t key);
BOOL L5FS_IsArchiveReady(arckey_t key);
void L5FS_WaitArchiveReady(arckey_t key);
PKHFile *L5FS_GetFile(arckey_t arcKey, s32 fileIdx);

s32 L5FS_ReadFileByID(void **dst, PKHFile *pkh_file, FSFileID arc, const char *filename);
s32 L5FS_ReadFileByName(void **dst, arckey_t arcKey, const char *filename);
s32 L5FS_ReadFileByIdx(void **dst, arckey_t arcKey, s32 fileIdx);

s32 L5FS_ReadFileByNameDeferred(void **dst, arckey_t arcKey, const char *name, filekey_t *keyOut);
s32 L5FS_ReadFileByIdxDeferred(void **dst, arckey_t arcKey, s32 fileIdx, filekey_t *keyOut);
BOOL L5FS_IsFileBusy(filekey_t key);

void L5FS_Panic(void);
void L5FS_Init(void);

s32 L5FS_FindFileIdx(arckey_t arcKey, const char *name);
PKHFile *L5FS_FindFile(arckey_t arcKey, const char *name);

void *L5FS_Allocate(int size, int nextArena);
void *L5FS_AllocateClear(int size, int nextArena);
void L5FS_Deallocate(void *ptr);
void L5FS_SetNextArena(int nextArena);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif // IE3OGRES_COMMON_H

#ifndef IE3OGRES_FILESYSTEM_H
#define IE3OGRES_FILESYSTEM_H

#pragma once

#include <nitro.h>

#include "archive.hpp"
#include "allocator.hpp"
#include "thread.hpp"

typedef int arckey_t;
typedef signed char filekey_t;

#define FILE_SYSTEM_STACK_SIZE 2048

namespace FileSystem {

typedef struct {
    void *files; // interpret as Archive::PackEntry_HOSC *
    BOOL inUse;
    FSFileID binFileID; // pkb
    filekey_t key;
    u16 nFiles;
} ArchiveHandle;

typedef struct {
    void *uncompressed;
    void *compressed;
    void *cur;
    FSFileID fileID;
    s32 offset;
    s32 size;
    MICompressionHeader flags;
} FileHandle;

u32 CalcCRC32(const void *data, u32 dataLength);

s32 ReadFile(void **dst, const char *filepath, s32 offset, s32 len);
s32 ReadFileDeferred(void **dataOut, const char *path, filekey_t *keyOut, s32 offset, s32 size);

arckey_t OpenArchiveDirect(void *data, const char *path);
arckey_t OpenArchiveDeferred(void *data, const char *path);
void CloseArchive(arckey_t key);
BOOL IsArchiveReady(arckey_t key);
void WaitArchiveReady(arckey_t key);
Archive::PackEntry_HOSC *GetFile(arckey_t arcKey, s32 fileIdx);

s32 ReadFileByID(void **dst, Archive::PackEntry_HOSC *pkh_file, FSFileID arc, const char *filename);
s32 ReadFileByName(void **dst, arckey_t arcKey, const char *filename);
s32 ReadFileByIdx(void **dst, arckey_t arcKey, s32 fileIdx);

s32 ReadFileByNameDeferred(void **dst, arckey_t arcKey, const char *name, filekey_t *keyOut);
s32 ReadFileByIdxDeferred(void **dst, arckey_t arcKey, s32 fileIdx, filekey_t *keyOut);
BOOL IsFileBusy(filekey_t key);

void Panic(void);
void Init(void);

s32 FindFileIdx(arckey_t arcKey, const char *name);
Archive::PackEntry_HOSC *FindFile(arckey_t arcKey, const char *name);

void *Allocate(int size, int nextArena);
void *AllocateClear(int size, int nextArena);
void Deallocate(void *ptr);
void SetNextArena(int nextArena);

} /* namepace FileSystem */

#endif //IE3OGRES_FILESYSTEM_H

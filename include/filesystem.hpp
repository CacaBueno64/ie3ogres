#pragma once

// clang-format off
#include <nitro/fs/types.h>       // for FSFileID
#include <nitro/mi/uncompress.h>  // for MICompressionHeader
#include <nitro/types.h>          // for s32, BOOL, u32, u16

#include "archive.hpp"            // for PackEntry_HOSC
// clang-format on

typedef int archandle_t;
typedef signed char filekey_t;

#define FILE_SYSTEM_STACK_SIZE 2048

namespace FileSystem
{

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

archandle_t OpenArchiveDirect(void *data, const char *path);
archandle_t OpenArchiveDeferred(void *data, const char *path);
void CloseArchive(archandle_t key);
BOOL IsArchiveReady(archandle_t key);
void WaitArchiveReady(archandle_t key);
Archive::PackEntry_HOSC *GetFile(archandle_t arcKey, s32 fileIdx);

s32 ReadFileByID(void **dst, Archive::PackEntry_HOSC *pkh_file, FSFileID arc, const char *filename);
s32 ReadFileByName(void **dst, archandle_t arcKey, const char *filename);
s32 ReadFileByIdx(void **dst, archandle_t arcKey, s32 fileIdx);

s32 ReadFileByNameDeferred(void **dst, archandle_t arcKey, const char *name, filekey_t *keyOut);
s32 ReadFileByIdxDeferred(void **dst, archandle_t arcKey, s32 fileIdx, filekey_t *keyOut);

/*
 * at 20fd2e8 the return value is cast to a variable with values -1,0,1,
 * so this might be returning an enum. 202f57c (202f598) uses these values too
 */
typedef enum {
	RESULT_COMPLETE = 0,
	RESULT_BUSY = 1,
	RESULT_ERROR = -1
} Result;
BOOL IsFileBusy(filekey_t key);

void Panic(void);
void Init(void);

s32 FindFileIdx(archandle_t arcKey, const char *name);
Archive::PackEntry_HOSC *FindFile(archandle_t arcKey, const char *name);

void *Allocate(int size, int nextArena);
void *AllocateClear(int size, int nextArena);
void Deallocate(void *ptr);
void SetNextArena(int nextArena);

} // namespace FileSystem

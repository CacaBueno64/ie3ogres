#ifndef IE3OGRES_ARCHIVE_H
#define IE3OGRES_ARCHIVE_H

#include <nitro.h>

typedef struct {
    u8 PackNum[16];
// if there's "packnum" in the file, else skip to L5_ArchiveHeaderEntry_2
    u16 ArchiveSize;
    u16 ArchiveType;
    u16 unk0;
    u16 EntryCount;
    u32 unk1;
    u32 EntriesSize;
    u8 pad[16];
} L5_ArchiveHeader;

typedef struct {
// if ArchiveType == 0
    u32 EntryId;
    u32 EntryPtr;
    u32 EntrySize;
} L5_ArchiveHeaderEntry_0;

typedef struct {
// if ArchiveType == 2 or 3
    u32 EntryId;
} L5_ArchiveHeaderEntry_1;

typedef struct {
// if there's no "packnum" in the file
    u32 EntryId;
    u32 EntryPtr;
    u32 EntrySize;
    u32 unk; // compression?
} L5_ArchiveHeaderEntry_2;

#endif //IE3OGRES_ARCHIVE_H
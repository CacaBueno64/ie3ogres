#ifndef IE3OGRES_ARCHIVE_H
#define IE3OGRES_ARCHIVE_H

#include <nitro.h>

typedef struct {
    u8 PackNum[16];
    // skip to Archive_PKH if the "packnum" string is not here
    u16 ArchiveSize;
    u16 ArchiveType;
    u16 unk0;
    u16 EntryCount;
    u32 unk1;
    u32 EntriesSize; // only used if ArchiveType == 2 or 3
    u8 pad[16];
} Archive_PKHPackNum;

// if ArchiveType == 0
typedef struct {
    u32 EntryId;
    u32 EntryPtr;
    u32 EntrySize;
} Archive_PKHEntry_0;

// if ArchiveType == 2 or 3
typedef struct {
    u32 EntryId;
} Archive_PKHEntry_1;

// if there's no "packnum" in the file
typedef struct {
    u32 hash;
    s32 offset;
    s32 size;
    MICompressionHeader compHeader;
} Archive_PKH;

typedef struct {
    u32 string_offset;
    u32 size;
    u32 data_offset;
    u32 unkC;
} Archive_SFPEntry;

typedef struct {
    char magic[4];
    u32 unk4;
    u32 unk8;
    u32 chunk_size;
    u32 file_size;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    // Archive_SFPEntry *entries;
} Archive_SFPHeader;

#endif //IE3OGRES_ARCHIVE_H

#ifndef IE3OGRES_ARCHIVE_H
#define IE3OGRES_ARCHIVE_H

#pragma once

#include <nitro.h>

// PKB Archive

typedef struct {
    u8 PackNum[16];
    /* skip to Archive_PKH if the "packnum" string is not here */
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

// SFP Archive

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

// Image PAC Archive

typedef struct {
    u32 nFiles;
    u32 plttOffs;
    u32 plttSize;
    u32 scrnOffs;
    u32 scrnSize;
    u32 charOffs;
    u32 charSize;
    u32 pad;
} ImagePAC;
static inline void *ImagePAC_GetPalettePtr(void *img) {
    return static_cast<void*>(static_cast<char*>(img) + static_cast<ImagePAC*>(img)->plttOffs);
}
static inline void *ImagePAC_GetScreenPtr(void *img) {
    return static_cast<void*>(static_cast<char*>(img) + static_cast<ImagePAC*>(img)->scrnOffs);
}
static inline void *ImagePAC_GetCharacterPtr(void *img) {
    return static_cast<void*>(static_cast<char*>(img) + static_cast<ImagePAC*>(img)->charOffs);
}
static inline u32 ImagePAC_GetPaletteSize(void *img) {
    return static_cast<ImagePAC*>(img)->plttSize;
}
static inline u32 ImagePAC_GetScreenSize(void *img) {
    return static_cast<ImagePAC*>(img)->scrnSize;
}
static inline u32 ImagePAC_GetCharacterSize(void *img) {
    return static_cast<ImagePAC*>(img)->charSize;
}

#endif //IE3OGRES_ARCHIVE_H

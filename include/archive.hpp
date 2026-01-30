#ifndef IE3OGRES_ARCHIVE_H
#define IE3OGRES_ARCHIVE_H

#pragma once

#include <nitro.h>
#include <stdio.h>
#include <string.h>

#include "unitmanager.hpp"
#include "allocator.hpp"
#include "fileio.hpp"

typedef struct {
    void *data;
    size_t size;
    u8 available;
    u8 unk_9;
    u8 unk_a;
    u8 pad_b;
} SFileData;

namespace Archive {

typedef enum {
    PACK_TYPE_COS,
    PACK_TYPE_CO,
    PACK_TYPE_CS,
    PACK_TYPE_C,
} PackType;

typedef struct {
    char packNum[16];
    u16 fileSize;
    u16 type; // interpret as `PackType`
    u16 unk14;
    u16 entryCount;
    u32 unk18;
    u32 entrySize;
    u32 mask;
    u16 maxNameLen;
    u16 unk26;
    u8 unk28[0x8]; // pad?
} PackHeader;

typedef struct {
    u32 code;
    s32 offset;
    s32 size;
} PackEntry_COS;

typedef struct {
    s32 code;
    s32 offset;
} PackEntry_CO;

typedef struct {
    s32 code;
    s32 size;
} PackEntry_CS;

typedef struct {
    s32 code;
} PackEntry_C;

typedef struct {
    u32 hash;
    s32 offset;
    s32 size;
    MICompressionHeader compHeader;
} PackEntry_HOSC;

typedef struct {
    char magic[4];
    u32 unk4;
    u32 unk8;
    u32 chunkSize;
    u32 fileSize;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    /* SFPEntry *entries; */
} SFPHeader;

typedef struct {
    u32 stringOffset;
    u32 size;
    u32 dataOffset;
    u32 unkC;
} SFPEntry;

typedef struct ImagePAC {
    u32 nFiles;
    u32 plttOffs;
    u32 plttSize;
    u32 scrnOffs;
    u32 scrnSize;
    u32 charOffs;
    u32 charSize;
    u32 pad;

    static inline u32 GetFileCount(void *data) {
        return static_cast<ImagePAC *>(data)->nFiles;
    }
    static inline void *GetPalettePtr(void *data) {
        return static_cast<void *>(static_cast<char *>(data) + static_cast<ImagePAC *>(data)->plttOffs);
    }
    static inline void *GetScreenPtr(void *data) {
        return static_cast<void *>(static_cast<char *>(data) + static_cast<ImagePAC *>(data)->scrnOffs);
    }
    static inline void *GetCharacterPtr(void *data) {
        return static_cast<void *>(static_cast<char *>(data) + static_cast<ImagePAC *>(data)->charOffs);
    }
    static inline u32 GetPaletteSize(void *data) {
        return static_cast<ImagePAC *>(data)->plttSize;
    }
    static inline u32 GetScreenSize(void *data) {
        return static_cast<ImagePAC *>(data)->scrnSize;
    }
    static inline u32 GetCharacterSize(void *data) {
        return static_cast<ImagePAC *>(data)->charSize;
    }
} ImagePAC;

static inline st_wear_set *WearSetGetEntry(int wearNo, int wearType) {
    return &gWearSetFile[wearNo] + wearType;
}

// `'s'`: high poly
// `'b'`: low poly
static inline char GetModelQuality(int quality) {
    char result;
    switch (quality) {
        case 1:
            result = 's';
            break;
        default:
            result = 'b';
            break;
    }
    return result;
}

BOOL ReadNewUncompress(const char *path, SFileData *file);
BOOL ReadUncompress(const char *path, SFileData *file);
BOOL ReadUncompressEx(const char *path, SFileData *file, s32 offset, size_t size, BOOL compressed);
BOOL RequestNewRead(const char *path, SFileData *file);
BOOL RequestRead(const char *path, SFileData *file);
BOOL RequestNewReadEx(const char *path, SFileData *file, s32 offset, size_t size, BOOL compressed);
BOOL ReadNewUncompressEx(const char *path, SFileData *file, s32 offset, size_t size, BOOL compressed);
BOOL RequestReadEx(const char *path, SFileData *file, s32 offset, size_t size, BOOL compressed);
BOOL ReadFromSFP(char *path, SFileData *file, char *data);

BOOL TryFinalize(SFileData *file, int count);
void Close(SFileData *file, int count);
void Deallocate(SFileData *file);

BOOL PackHeaderCheck(void *pkh);
BOOL PackHeaderRead(const char *path, u32 code, s32 *outOffset, size_t *outSize);
BOOL PackHeaderGetOffsetAndSize(void *pkh, u32 code, s32 *outOffset, size_t *outSize);

u32 GetFaceCode(Unit *unit, u8 expression);
void GetFaceOffsetAndSize(void *pkh, Unit *unit, u8 expression, s32 *outOffset, size_t *outSize);
u32 GetBodyCode(Unit *unit, int wearNo, int wearType);
void GetBodyOffsetAndSize(void *pkh, Unit *unit, int wearNo, int wearType, s32 *outOffset, size_t *outSize);
u32 GetBodyPlttCode(int wearNo, int wearType);
void GetBodyPlttOffsetAndSize(void *pkh, int wearNo, int wearType, s32 *outOffset, size_t *outSize);

void GetHairModelPath(Unit *unit, int quality, char *pkbOutPath, char *nsbmdOutName);
void GetFaceModelPath(Unit *unit, int quality, char *pkbOutPath, char *nsbmdOutName);
void GetBodyModelPath(Unit *unit, int quality, int wearNo, int wearType, char *pkbOutPath, char *nsbmdOutName);
void GetKitNumberTexPath(int wearNo, int wearType, char *pkbOutPath, char *nsbmdOutName);
void GetShoesModelPath(Unit *unit, int quality, int shoesNo, char *pkbOutPath, char *nsbtxOutName);
void GetCharacterMotionPath(Unit *unit, int motNo, char *pkbOutPath, char *pacOutName);
void GetCharacterMotionPath(int bodyType, int motNo, char *pkbOutPath, char *pacOutName);

void GetHairModelOffsetAndSize(void *pkh, Unit *unit, s32 *outOffset, size_t *outSize);
void GetFaceModelOffsetAndSize(void *pkh, Unit *unit, s32 *outOffset, size_t *outSize);
void GetBodyModelOffsetAndSize(void *pkh, Unit *unit, int wearNo, int wearType, s32 *outOffset, size_t *outSize);
void GetKitNumberTexOffsetAndSize(void *pkh, int wearNo, int wearType, s32 *outOffset, size_t *outSize);
void GetShoesModelOffsetAndSize(void *pkh, Unit *unit, int shoesNo, s32 *outOffset, size_t *outSize);
void GetCharacterMotionSizeAndOffset(void *pkh, int bodyType, int motNo, s32 *outOffset, size_t *outSize);

void GetMapModelPath(const char *modelName, char *outPath);
void GetMapMotionPath(const char *motionName, char *outPath);
void GetMapTexturePath(const char *textureName, char *outPath);
void GetMapObjectModelPath(const char *modelName, char *outPath);
void GetBallModelPath(const char *ballName, char *outPath);

u32 GetOverworldHeadCode(int faceNo2D, int param1);
u32 GetOverworldHeadPlttCode(int facePal2D);
u32 GetOverworldBodyCode(int bodyType, int wearNo, int wearType, int param3);
u32 GetOverworldBodyCode(int wearNo, int wearType);

int GetMapNameHash(void *pkh, const char *str);

BOOL SFPGetOffsetAndSize(char *filename, char *file, s32 *outOffset, size_t *outSize);

} /* namespace Archive */

extern "C" {
    extern int FUN_ov16_020f0b58(int wearNo);
    extern void FUN_02053914(char *dst, const char *src); //lowercase to uppercase
}

#endif //IE3OGRES_ARCHIVE_H

// clang-format off
#include "archive.hpp"

#include <cstdio>              // for sprintf, size_t, NULL

#include <cstring>             // for strrchr, strcmp
#include <nitro/std/string.h>  // for STD_CompareNString, STD_GetStringLength
#include <nitro/types.h>       // for FALSE, BOOL, TRUE, s32, u32, u8

#include "CFileIO.hpp"         // for CFileIO, FUN_02053914, gFileIO
#include "CUnitMan.hpp"        // for Unit, gWearSetFile, st_wear_set, BODYT...
#include "allocator.hpp"       // for gAllocator, CAllocator
// clang-format on

namespace Archive
{

BOOL ReadNewUncompress(const char *path, SFileData *file)
{
    file->data = NULL;

    return ReadUncompress(path, file);
}

BOOL ReadUncompress(const char *path, SFileData *file)
{
    file->unk_a = (file->data == NULL);

    file->available = FALSE;
    file->unk_9 = TRUE;

    size_t result = 0;
    if (gAllocator.fileIO) {
        result = gAllocator.fileIO->readDirect(path, &file->data, &gAllocator, 0, 0, FALSE, 1);
    }
    file->size = result;

    if (!file->size) {
        return FALSE;
    }

    file->available = TRUE;
    return TRUE;
}

BOOL ReadUncompressEx(const char *path, SFileData *file, s32 offset, size_t size, BOOL compressed)
{
    file->unk_a = (file->data == NULL);

    file->available = FALSE;
    file->unk_9 = TRUE;

    size_t result = 0;
    if (gAllocator.fileIO) {
        result = gAllocator.fileIO->readDirect(path, &file->data, &gAllocator, offset, size, compressed, 1);
    }
    file->size = result;

    if (!file->size) {
        return FALSE;
    }

    file->available = TRUE;
    return TRUE;
}

BOOL RequestNewRead(const char *path, SFileData *file)
{
    file->data = NULL;

    return RequestRead(path, file);
}

BOOL RequestRead(const char *path, SFileData *file)
{
    file->unk_a = (file->data == NULL);

    file->available = FALSE;
    file->unk_9 = TRUE;

    size_t result = 0;
    if (gAllocator.fileIO) {
        result = gAllocator.fileIO->readDeferred(path, &file->data, &gAllocator, 0, 0, FALSE, 1);
    }
    file->size = result;

    if (!file->size) {
        return FALSE;
    }

    return TRUE;
}

BOOL RequestNewReadEx(const char *path, SFileData *file, s32 offset, size_t size, BOOL compressed)
{
    file->data = NULL;

    return RequestReadEx(path, file, offset, size, compressed);
}

BOOL ReadNewUncompressEx(const char *path, SFileData *file, s32 offset, size_t size, BOOL compressed)
{
    file->data = NULL;

    return ReadUncompressEx(path, file, offset, size, compressed);
}

BOOL RequestReadEx(const char *path, SFileData *file, s32 offset, size_t size, BOOL compressed)
{
    file->unk_a = (file->data == NULL);

    file->available = FALSE;
    file->unk_9 = TRUE;

    size_t result = 0;
    if (gAllocator.fileIO) {
        result = gAllocator.fileIO->readDeferred(path, &file->data, &gAllocator, offset, size, compressed, 1);
    }
    file->size = result;

    if (!file->size) {
        return FALSE;
    }

    return TRUE;
}

BOOL ReadFromSFP(char *path, SFileData *file, char *data)
{
    file->unk_a = FALSE;
    file->available = FALSE;
    file->unk_9 = FALSE;

    file->size = gFileIO.readFromSFP(path, &file->data, data);

    if (file->size) {
        file->available = TRUE;
    }

    return file->size != FALSE;
}

BOOL TryFinalize(SFileData *file, int count)
{
    for (int i = count; i > 0; i--) {
        SFileData *cur = file;

        if ((cur->data) && (cur->unk_9) && (!cur->available)) {
            int result;
            if (gAllocator.fileIO) {
                result = gAllocator.fileIO->tryFinalize(cur->data);
            } else {
                result = -1;
            }
            if (result) {
                return FALSE;
            }

            cur->available = TRUE;
        }

        cur = NULL;
        file++;
    }

    return TRUE;
}

void Close(SFileData *file, int count)
{
    for (int i = count; i > 0; i--) {
        SFileData *cur = file;

        if ((cur->data) && (cur->unk_9) && (!cur->available)) {
            if (gAllocator.fileIO) {
                gAllocator.fileIO->close(cur->data, TRUE);
            }
            cur->data = NULL;
        }

        cur = NULL;
        file++;
    }
}

void Deallocate(SFileData *file)
{
    if ((file->data) && (file->unk_9) && (file->unk_a)) {
        gAllocator.deallocate(file->data);
        file->data = NULL;
    }
}

BOOL PackHeaderCheck(void *pkh)
{
    PackHeader *header = static_cast<PackHeader *>(pkh);
    int cmp = STD_CompareNString(header->packNum, "PackNum 20080626", sizeof(header->packNum));
    return cmp == 0;
}

BOOL PackHeaderRead(const char *path, u32 code, s32 *outOffset, size_t *outSize)
{
    void *pkh = NULL;

    if (gAllocator.fileIO) {
        gAllocator.fileIO->readDirect(path, &pkh, &gAllocator, 0, 0, FALSE, 1);
    }

    if (pkh) {
        BOOL result = PackHeaderGetOffsetAndSize(pkh, code, outOffset, outSize);
        gAllocator.deallocate(pkh);
        return result;
    }

    return FALSE;
}

// UNSAFE: no bounds checking on data (header size or header->entryCount)
// UNSAFE: min + max can overflow
// PORT: min, max, size and offset should be size_t
BOOL PackHeaderGetOffsetAndSize(void *pkh, u32 code, s32 *outOffset, size_t *outSize)
{
    PackHeader *header = static_cast<PackHeader *>(pkh);
    if (!header) {
        return FALSE;
    }

    BOOL isPacknum = PackHeaderCheck(header);
    size_t headerSize = 0x30;
    if (!isPacknum) {
        headerSize = 0x20;
    }

    PackType type;
    int min;
    int max;
    void *entry;
    void *entryStart = reinterpret_cast<char *>(header) + headerSize;

    type = static_cast<PackType>(header->type);
    if (type < PACK_TYPE_COS || type > PACK_TYPE_C) {
        return FALSE;
    }

    max = header->entryCount;
    min = 0;
    while (min < max) {
        int cur = (min + max) / 2;

        u32 curCode;
        switch (type) {
        case PACK_TYPE_COS:
            entry = static_cast<PackEntry_COS *>(entryStart) + cur;
            curCode = static_cast<PackEntry_COS *>(entry)->code;
            break;
        case PACK_TYPE_CO:
            entry = static_cast<PackEntry_CO *>(entryStart) + cur;
            curCode = static_cast<PackEntry_CO *>(entry)->code;
            break;
        case PACK_TYPE_CS:
            entry = static_cast<PackEntry_CS *>(entryStart) + cur;
            curCode = static_cast<PackEntry_CS *>(entry)->code;
            break;
        case PACK_TYPE_C:
            entry = static_cast<PackEntry_C *>(entryStart) + cur;
            curCode = static_cast<PackEntry_C *>(entry)->code;
            break;
        default:
            return FALSE;
        }

        if (code > curCode) {
            min = cur + 1;
        } else if (code < curCode) {
            max = cur;
        } else {
            switch (type) {
            case PACK_TYPE_COS:
                if (outOffset)
                    *outOffset = static_cast<PackEntry_COS *>(entry)->offset;
                if (outSize)
                    *outSize = static_cast<PackEntry_COS *>(entry)->size;
                break;
            case PACK_TYPE_CO:
                if (outOffset)
                    *outOffset = static_cast<PackEntry_CO *>(entry)->offset;
                if (outSize)
                    *outSize = header->entrySize;
                break;
            case PACK_TYPE_CS:
                if (outOffset)
                    *outOffset = cur * header->entrySize;
                if (outSize)
                    *outSize = static_cast<PackEntry_CS *>(entry)->size;
                break;
            case PACK_TYPE_C:
                if (outOffset)
                    *outOffset = cur * header->entrySize;
                if (outSize)
                    *outSize = header->entrySize;
                break;
            default:
                return FALSE;
            }

            return TRUE;
        }
    }

    return FALSE;
}

u32 GetFaceCode(Unit *unit, u8 expression)
{
    return (unit->base.faceNo * 100) + (expression);
}

void GetFaceOffsetAndSize(void *pkh, Unit *unit, u8 expression, s32 *outOffset, size_t *outSize)
{
    PackHeaderGetOffsetAndSize(pkh, GetFaceCode(unit, expression), outOffset, outSize);
}

u32 GetBodyCode(Unit *unit, int wearNo, int wearType)
{
    st_wear_set *wearSet = &gWearSetFile[wearNo] + wearType;

    u32 teamNo = wearSet->teamNo * 1000000;
    u32 type = wearSet->type * 10000;
    return (teamNo) + (type) + (unit->base.bodyType * 100) + (unit->base.bodyNo);
}

void GetBodyOffsetAndSize(void *pkh, Unit *unit, int wearNo, int wearType, s32 *outOffset, size_t *outSize)
{
    PackHeaderGetOffsetAndSize(pkh, GetBodyCode(unit, wearNo, wearType), outOffset, outSize);
}

u32 GetBodyPlttCode(int wearNo, int wearType)
{
    st_wear_set *wearSet = &gWearSetFile[wearNo] + wearType;

    return wearSet->palette;
}

void GetBodyPlttOffsetAndSize(void *pkh, int wearNo, int wearType, s32 *outOffset, size_t *outSize)
{
    PackHeaderGetOffsetAndSize(pkh, GetBodyPlttCode(wearNo, wearType), outOffset, outSize);
}

void GetHairModelPath(Unit *unit, int quality, char *pkbOutPath, char *nsbmdOutName)
{
    sprintf(pkbOutPath, "/data_iz/model/char/p%ch.pkb", GetModelQuality(quality));
    sprintf(nsbmdOutName, "p%ch00%04d00.nsbmd_", GetModelQuality(quality), unit->base.faceNo);
}

void GetFaceModelPath(Unit *unit, int quality, char *pkbOutPath, char *nsbmdOutName)
{
    sprintf(pkbOutPath, "/data_iz/model/char/p%cf.pkb", GetModelQuality(quality));
    sprintf(nsbmdOutName, "p%cf00%04d00.nsbmd_", GetModelQuality(quality), unit->base.faceNo);
}

void GetBodyModelPath(Unit *unit, int quality, int wearNo, int wearType, char *pkbOutPath, char *nsbmdOutName)
{
    st_wear_set *wearSet = &gWearSetFile[wearNo] + wearType;

    sprintf(pkbOutPath, "/data_iz/model/char/p%cb.pkb", GetModelQuality(quality));
    u8 bodyNo = unit->base.bodyNo;
    u8 bodyType = unit->base.bodyType;
    sprintf(nsbmdOutName, "p%cb%02d%02d%02d.nsbmd_", GetModelQuality(quality), wearSet->unk8, bodyType, bodyNo);
}

void GetKitNumberTexPath(int wearNo, int wearType, char *pkbOutPath, char *nsbtxOutName)
{
    st_wear_set *wearSet = &gWearSetFile[wearNo] + wearType;

    sprintf(pkbOutPath, "/data_iz/model/char/ptb.pkb");
    sprintf(nsbtxOutName, "ptb00%02d%02d.nsbtx_", wearSet->teamNo, wearSet->unk9);
}

void GetShoesModelPath(Unit *unit, int quality, int shoesNo, char *pkbOutPath, char *nsbmdOutName)
{
    st_shoes_info *shoesInfo = &gShoesInfoFile[shoesNo];

    sprintf(pkbOutPath, "/data_iz/model/char/p%cs.pkb", GetModelQuality(quality));
    u8 bodyType = unit->base.bodyType;
    sprintf(nsbmdOutName, "p%cs%02d%02d%02d.nsbmd_", GetModelQuality(quality), shoesInfo->unk0, bodyType, shoesInfo->unk1);
}

void GetCharacterMotionPath(Unit *unit, int motNo, char *pkbOutPath, char *pacOutName)
{
    GetCharacterMotionPath(unit->base.bodyType, motNo, pkbOutPath, pacOutName);
}

void GetCharacterMotionPath(int bodyType, int motNo, char *pkbOutPath, char *pacOutName)
{
    sprintf(pkbOutPath, "/data_iz/model/char/pcm.pkb");
    sprintf(pacOutName, "pcm%06d%02d.pac_", motNo, bodyType);
}

void GetHairModelOffsetAndSize(void *pkh, Unit *unit, s32 *outOffset, size_t *outSize)
{
    PackHeaderGetOffsetAndSize(pkh, (unit->base.faceNo * 100), outOffset, outSize);
}

void GetFaceModelOffsetAndSize(void *pkh, Unit *unit, s32 *outOffset, size_t *outSize)
{
    PackHeaderGetOffsetAndSize(pkh, (unit->base.faceNo * 100), outOffset, outSize);
}

void GetBodyModelOffsetAndSize(void *pkh, Unit *unit, int wearNo, int wearType, s32 *outOffset, size_t *outSize)
{
    st_wear_set *wearSet = &gWearSetFile[wearNo] + wearType;

    u8 bodyNo = unit->base.bodyNo;

    if ((unit->base.gender == GENDER_FEMALE) && ((wearType == 0) || (wearType == 2)) &&
        (FUN_ov16_020f0b58(wearNo))) {
        if (unit->base.bodyType == BODYTYPE_LARGE) {
            bodyNo = 6;
        }
        if (unit->base.bodyType == BODYTYPE_SMALL) {
            bodyNo = 7;
        }
    }

    PackHeaderGetOffsetAndSize(
        pkh, (wearSet->unk8 * 10000) + (unit->base.bodyType * 100) + (bodyNo), outOffset, outSize);
}

void GetKitNumberTexOffsetAndSize(void *pkh, int wearNo, int wearType, s32 *outOffset, size_t *outSize)
{
    st_wear_set *wearSet = &gWearSetFile[wearNo] + wearType;

    PackHeaderGetOffsetAndSize(pkh, (wearSet->teamNo * 100) + (wearSet->unk9), outOffset, outSize);
}

void GetShoesModelOffsetAndSize(void *pkh, Unit *unit, int shoesNo, s32 *outOffset, size_t *outSize)
{
    st_shoes_info *shoesInfo = &gShoesInfoFile[shoesNo];
    ;

    PackHeaderGetOffsetAndSize(
        pkh, (shoesInfo->unk0 * 10000) + (unit->base.bodyType * 100) + (shoesInfo->unk1), outOffset, outSize);
}

void GetCharacterMotionSizeAndOffset(void *pkh, int bodyType, int motNo, s32 *outOffset, size_t *outSize)
{
    PackHeaderGetOffsetAndSize(pkh, (motNo * 100) + (bodyType), outOffset, outSize);
}

void GetMapModelPath(const char *modelName, char *outPath)
{
    sprintf(outPath, "/data_iz/model/obj/%s.nsbmd_", modelName);
}

void GetMapMotionPath(const char *motionName, char *outPath)
{
    sprintf(outPath, "/data_iz/model/pac/%s.pac_", motionName);
}

void GetMapTexturePath(const char *textureName, char *outPath)
{
    sprintf(outPath, "/data_iz/model/obj/%s.nsbtx_", textureName);
}

void GetMapObjectModelPath(const char *modelName, char *outPath)
{
    sprintf(outPath, "/data_iz/model/obj/%s.nsbmd_", modelName);
}

void GetBallModelPath(const char *ballName, char *outPath)
{
    sprintf(outPath, "/data_iz/model/pac/%s.pac_", ballName);
}

u32 GetOverworldHeadCode(int faceNo2D, int param1)
{
    return (faceNo2D * 100) + param1;
}

u32 GetOverworldHeadPlttCode(int facePal2D)
{
    return facePal2D;
}

u32 GetOverworldBodyCode(int bodyType, int wearNo, int wearType, int param3)
{
    st_wear_set *wearSet = &gWearSetFile[wearNo] + wearType;

    if (bodyType == BODYTYPE_SMALL) {
        bodyType = BODYTYPE_NORMAL;
    }

    return ((wearSet->unk5) * 1000000) + (bodyType * 10000) + (wearSet->unk4 * 100) + (param3);
}

u32 GetOverworldBodyCode(int wearNo, int wearType)
{
    st_wear_set *wearSet = &gWearSetFile[wearNo] + wearType;

    return wearSet->unk6;
}

int GetMapNameHash(void *pkh, const char *str)
{
    u32 mask;
    int result;
    int i;

    if (!str) {
        return -1;
    }
    if (!pkh) {
        return -1;
    }
    if (!PackHeaderCheck(pkh)) {
        return -1;
    }

    int len = STD_GetStringLength(str);
    int maxNameLen = static_cast<PackHeader *>(pkh)->maxNameLen;
    if (len > maxNameLen) {
        return -1;
    }

    mask = static_cast<PackHeader *>(pkh)->mask;
    result = 0;

    for (i = 0; i < maxNameLen; i++) {
        if (i < len) {
            if (mask & 1) {
                result = result * 36;
            } else {
                result = result * 10;
            }

            char c = *str;

            int digit;
            if ((c >= '0') && (c <= '9')) {
                digit = c - '0';
                result += digit;
            } else if ((c >= 'a') && (c <= 'z')) {
                digit = (c - 'a') + 10;
                result += digit;
            } else if ((c >= 'A') && (c <= 'Z')) {
                digit = (c - 'A') + 10;
                result += digit;
            } else {
                digit = 0;
            }

            str++;
        }

        mask >>= 1;
    }

    return result;
}

BOOL SFPGetOffsetAndSize(char *filename, char *file, s32 *outOffset, size_t *outSize)
{
    SFPHeader *header = reinterpret_cast<SFPHeader *>(file);

    char temp[256];
    FUN_02053914(temp, filename); // lowercase to uppercase
    filename = std::strrchr(temp, '\\');
    if (!filename) {
        filename = std::strrchr(temp, '/');
    }
    if (!filename) {
        filename = temp;
    } else {
        filename++;
    }

    int idx;
    SFPEntry *entries = reinterpret_cast<SFPEntry *>(file + sizeof(*header));
    int entryCount = (entries->stringOffset - sizeof(*header)) / sizeof(entries[0]);

    for (idx = 0; idx < entryCount; idx++) {
        if (std::strcmp(file + entries[idx].stringOffset, filename) == 0) {
            break;
        }
    }

    if (idx >= entryCount) {
        return FALSE;
    }

    *outOffset = (header->chunkSize * entries[idx].dataOffset);
    *outSize = entries[idx].size;

    return TRUE;
}

} /* namespace Archive */

#ifndef IE3OGRES_UNITMANAGER_H
#define IE3OGRES_UNITMANAGER_H

#pragma once

#include <nitro.h>

#include "cnvdat.h"

#define UNIT_COMPANIONS_NUMBER 4
#define UNIT_PARTY_NUMBER 100

typedef enum {
    GENDER_NONE,
    GENDER_MALE,
    GENDER_FEMALE,
} UnitGender;

typedef enum {
    BODYTYPE_NORMAL,
    BODYTYPE_LARGE,
    BODYTYPE_SMALL,
} UnitBodyType;

typedef struct {
    u8 teamNo;
    u8 type;
    u16 palette;
    u8 unk4;
    u8 unk5;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
} st_wear_set;
/* 0x02099f34 */ extern st_wear_set *gWearSetFile;

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2[0x2]; //pad?
    u16 unk4[2];
} st_shoes_info;
/* 0x02099ef8 */ extern st_shoes_info *gShoesInfoFile;

typedef struct {
    u8 fullname[28];
    u8 nickname[16];
    u8 furiganaName[32];

    u8 levelCurve;
    u8 schoolNo;
    u16 unitNo;
    u16 faceNo;
    u8 bodyNo;
    u8 skinType;
    u16 faceNo2D;
    u16 facePal2D;
    u16 defaultWearNo;

    u8 gender;
    u8 age;
    u8 bodyType;
    u8 playerType;
    u16 unk5E;
    u16 unk60;
    u8 element;
    u8 unk63;
    u8 unk64;
    u8 unk65;
    u16 descriptionIdx; // multiply this value by 32 to get the offset of the player in unitbase.STR
} st_unit_base;

typedef struct {
    u16 st_max;
    u16 tp_max;
    s16 st_max_base;
    s16 tp_max_base;
    u8 stats[7];
    u8 base_stats[7]; /* 0: shoot, 1: dribble, 2: pass, 3: defense, 4: speed, 5: luck, 6: guts */
} st_unit_stats;

typedef struct Unit {
    st_unit_base base;
    st_unit_save *save;
    st_unit_stats stats;
    u8 unk82;
    u8 unk83;
    void *fieldPresence;
    void *unk88;
    u8 unk8C;
    u8 unk8D;
    u16 statusFlags;
    u32 skillsFlags;
    s16 companionIdx;
    u8 uniformNo;
    u8 unk97; //pad?
} Unit;

class CUnitMan {
    public:
        virtual ~CUnitMan();

    private:
    Unit *units;
    Unit **companions;
    st_unit_save *savesStart;
    st_unit_save *savesEnd;
    u32 *crcs;
    u16 unitCount;
    u8 unk1A[0x2]; //pad?
    void *fieldPresence;
    void *unk20;
    u16 unk24;
    u8 unk26[0x2]; // pad?
};

#endif //IE3OGRES_UNITMANAGER_H

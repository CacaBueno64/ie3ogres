#ifndef IE3OGRES_UNITBASE_H
#define IE3OGRES_UNITBASE_H

#include <nitro.h>

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
    u8 Element;
    u8 unk62;
    u8 unk63;
    u8 unk64;
    u8 unk65;
    u16 descriptionIdx; // multiply this value by 32 to get the offset of the player in unitbase.STR
} st_unit_base;

#endif //IE3OGRES_UNITBASE_H

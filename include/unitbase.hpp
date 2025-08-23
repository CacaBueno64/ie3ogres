#ifndef IE3OGRES_UNITBASE_H
#define IE3OGRES_UNITBASE_H

#include <nitro.h>

typedef enum u8
{
    GENDER_MALE   = 0x01,
    GENDER_FEMALE = 0x02
}
Gender;

typedef u8 Age;

typedef enum u8
{
    BODYTYPE_NORMAL = 0x00,
    BODYTYPE_LARGE  = 0x01,
    BODYTYPE_SMALL  = 0x02
}
BodyType;

typedef enum u8
{
    ELEMENT_AIR   = 0x01,
    ELEMENT_WOOD  = 0x02,
    ELEMENT_FIRE  = 0x03,
    ELEMENT_EARTH = 0x04
}
Element;

typedef struct {
    u8          fullname_Kanji[28];
    u8          surname_Hiragana[16];
    u8          fullname_Hiragana[32];

    u8          expCurve;
    u8          unk0;
    u16         Id1;
    u16         Id2;
    u8          unk1;
    u8          unk2;
    u16         unk3;
    u16         unk4;

    u16         unk5;
    Gender      Gender;
    Age         Age;
    BodyType    BodyType;
    u8          Position;
    u8          unk6[4];
    Element     Element;
    u16         unk7;
    u8          unk8;
    u16         DescriptionId; // multiply this value by 32 to get the address of the player in unitbase.STR
} Unitbase_FileEntry;

#endif //IE3OGRES_UNITBASE_H

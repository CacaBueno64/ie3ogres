#ifndef IE3OGRES_3DPLANECONTROLLER_H
#define IE3OGRES_3DPLANECONTROLLER_H

#pragma once

#include <nitro.h>

#include "3dspritefile.hpp"

typedef struct {
    u8 texKey1;
    u8 texKey2;
    u16 flags; /* 7: layer, 6: GXTexPlttColor0, 3: flipT, 2: flipS */
    u8 alpha;
    u8 polygonID;
    u16 colorMask;
    s16 widthPixels;
    s16 heightPixels;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
    u16 rotation;
    u8 unk16;
    u8 unk17;
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    VecFx32 offset;
    fx32 unk28;
    fx32 unk2C;
    u8 unk30;
    u8 unk31;
    u8 unk32;
    u8 unk33;
    u8 unk34;
    u8 unk35; /* 2: bounds update */
    u8 unk36;
    u8 unk37;
    fx32 height;
    fx32 width;
    fx32 s0;
    fx32 s1;
    fx32 t0;
    fx32 t1;
    fx32 unk50;
    fx32 unk54;
    fx32 rotCenterX;
    fx32 rotCenterY;
} PlaneComponent;

typedef struct PlaneSprite {
    PlaneComponent *components;
    u16 flags; /* 1: visible */
    u8 nComponents;
    u8 alpha;
    VecFx32 pos;
    u16 colorMask;
    u8 unk16;
    u8 unk17;
    PlaneSprite *prev;
    PlaneSprite *next;
} PlaneSprite;

class C3DPlaneCtrl {
    public:
        /* ov16 0x021122d0 */ BOOL init(int texCount, int sprCount);
    
    C3DSprFile sprFile;
    PlaneSprite *list;
    u32 len;
    PlaneSprite *head;
    PlaneSprite *tail;
};

extern C3DPlaneCtrl *g3DPlaneCtrl;

#endif //IE3OGRES_3DPLANECONTROLLER_H

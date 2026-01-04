#ifndef IE3OGRES_3DSPRITECONTROLLER_H
#define IE3OGRES_3DSPRITECONTROLLER_H

#pragma once

#include <nitro.h>

#include "3dspritefile.hpp"

typedef struct {
    u32 unk0;
    u16 texKey1;
    u16 texKey2;
    u8 unk8;
    u8 unk9;
    u16 flags;
    u8 alpha;
    u8 polygonID;
    u16 colorMask;
    s16 unk10;
    s16 unk12;
    void *unk14;
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    fx32 unk1C;
    fx32 unk20;
    u16 unk24;
    u8 unk26;
    u8 unk27;
    VecFx32 offset;
    u32 unk34;
    u32 unk38;
    u32 unk3C;
    u8 unk40;
    u8 unk41;
    u8 unk42;
    u8 unk43;
    u32 unk44;
} SpriteComponent;

typedef struct Sprite {
    SpriteComponent *components;
    u16 flags;
    u8 nComponents;
    u8 alpha;
    u16 colorMask;
    u8 unkA;
    u8 unkB;
    VecFx32 pos;
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    Sprite *prev;
    Sprite *next;
} Sprite;

class C3DSpriteCtrl {
    public:
        virtual BOOL FUN_ov16_02116834(void);
        virtual BOOL FUN_ov16_02116848(void);

        /* ov16 0x0211652c */ BOOL init(int texCount, int billboardCount);
    
    C3DSprFile sprFile;
    Sprite *list;
    s32 nSprites;
    Sprite *head;
    Sprite *tail;
    fx32 unk30;
    fx32 unk34;
    u32 unk38;
    u32 unk3C;
    u32 unk40;
    u32 shadowAlpha;
};

extern C3DSpriteCtrl *g3DSpriteCtrl;

#endif //IE3OGRES_3DSPRITECONTROLLER_H

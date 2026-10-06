#pragma once

#include <nitro/types.h>

#include "C3DPlaneCtrl.hpp"

typedef struct {
    u8 graphicIdx;
    u8 subGraphicIdx;
    u8 pad2[0x2];
} SButtonGraphicParam;

typedef struct SButton {
    s16 x;
    s16 y;
    s16 w;
    s16 h;
    u16 id;
    u16 unkA;
    u16 unkC;
    u8 state;
    u8 unkF;
    u8 unk10;
    u8 unk11;
    u8 draggable;
    u8 pad13;
    SButton *next;
    u32 unk18;
    void *unk1C; // func ptr
    void *unk20; // func ptr
    void *unk24; // func ptr
    void *unk28; // func ptr
    u32 unk2C;
    u16 unk30;
    u16 priority;
    u16 unk34;
    u16 unk36;
    u8 unk38;
    u8 pad39;
    SButtonGraphicParam graphicParams[3];
} SButton;

typedef struct {
    SButton *button;
    u16 unk4;
    u8 pad6[0x2];
} CSprButtonCtrl_E14;

typedef struct {
    struct {
        s16 x;
        s16 y;
    } last;
    struct {
        s16 x;
        s16 y;
    } press;
    u8 state;
    u8 significantChange;
    u8 padA[0x2];
} SButtonTouchState;

class CSprButtonCtrl
{
public:
    virtual ~CSprButtonCtrl(); // should be inlined

    static void FUN_ov16_0210e6fc(SButtonGraphicParam *param, bool param1, bool param2, bool param3);
    static void FUN_ov16_0210e720(SButtonGraphicParam *param, int graphicIdx, int subGraphicIdx, int param3);

    SButton *FUN_ov16_0210fba4(u16 param1, u16 param2, int x, int y, s16 width, s16 height, u16 priority);
    SButton *FUN_ov16_0210fbe8(u16 param1, u16 param2, pskey_t set, int priority);

    SButton buttons[50];
    CSprButtonCtrl_E14 unkE14[34];
    s32 unkF24;
    SButtonTouchState touchState;
    s32 focused;
    u16 unkF38;
};

extern CSprButtonCtrl *gSprButtonCtrl;

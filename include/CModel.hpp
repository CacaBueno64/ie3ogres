#pragma once

#include <nitro/fx/fx.h>
#include <nitro/gx/gxcommon.h>
#include <nitro/types.h>

#include "CMotion.hpp"
#include "CNsbPlttHook.hpp"
#include "CNsbResourceMan.hpp"
#include "CTexture.hpp"

typedef struct {

} CompositeModel;

class CModel
{
public:
    /* 0x020fa3dc */ virtual BOOL copy(CModel *);

    SNsbResource *modelRes;
    void *renderObj; // NNSG3dRenderObj
    u8 unkC;
    s8 unk10;
    GXRgb color;
    CModel *model;
    MtxFx43 *mtx;
    VecFx32 trans;
    VecFx32 rot;
    VecFx32 scale;
    u32 unk3C;
    u16 flags;
    u8 state;
    u8 unk43;
    s32 unk44;
    u8 alpha;
    s8 waistDictIdx;
    u8 unk4A;
    u8 unk4B;
    CMotion motions[5];
    CTexture textures[5];
    CNsbPlttHook nsbPlttHook;
};

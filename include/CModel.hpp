#pragma once

#include <nitro/fx/fx.h>
#include <nitro/gx/gxcommon.h>
#include <nitro/types.h>
#include <nnsys/g3d/kernel.h>

#include "CMotion.hpp"
#include "CNsbPlttHook.hpp"
#include "CNsbResourceMan.hpp"
#include "CTexture.hpp"

typedef struct {

} CompositeModel;

class CModel
{
public:
    /* ov16 0x020fa3dc */ virtual bool copy(CModel *);

    bool FUN_ov16_020f9ddc(SNsbResource *param1);
    bool FUN_ov16_020f9f7c(int param1, int param2);
    /* ov16 0x020fa154 */ void reload(void);
    /* ov16 0x020fa448 */ void setTranslation(VecFx32 *trans);
    /* ov16 0x020fa464 */ void setRotation(VecFx32 *rot);
    /* ov16 0x020fa4a0 */ void setScale(VecFx32 *scale);
    /* ov16 0x020fa7f0 */ bool setMotionRes(SNsbResource *res, int idx);
    bool FUN_ov16_020fa838(int param1, int param2);
    bool FUN_ov16_020fa8a0(int param1);
    bool FUN_ov16_020fa8b8(int param1);
    bool FUN_ov16_020fa930(void);
    /* ov16 0x020faa1c */ CMotion *getMotion(u32 idx);
    /* ov16 0x020faac4 */ bool close(void);
    /* ov16 0x020fab94 */ bool setup(void);

    SNsbResource *modelRes;
    NNSG3dRenderObj *renderObj;
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

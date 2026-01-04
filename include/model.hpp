#ifndef IE3OGRES_MODEL_H
#define IE3OGRES_MODEL_H

#pragma once

#include <nitro.h>

#include "nsbresourcemanager.hpp"
#include "motion.hpp"
#include "texture.hpp"
#include "nsbpltthook.hpp"

typedef struct {
    
} CompositeModel;

class CModel {
    public:
        /* 0x020fa3dc */ virtual BOOL copy(CModel *);

    NsbResource *modelRes;
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

#endif //IE3OGRES_MODEL_H

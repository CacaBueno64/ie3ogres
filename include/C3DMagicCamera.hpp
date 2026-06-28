#pragma once

#include <nitro/types.h>

#include "CModel.hpp"
#include "CModelCfg.hpp"
#include "archive.hpp"

class C3DMagicCamera
{
public:
    /* 0x02052618 */ C3DMagicCamera();
    /* 0x02052820 */ virtual ~C3DMagicCamera();

    SFileData cmrHeader;
    u32 unk10;
    u8 unk14;
    u8 unk15;
    s16 eyeIdx;
    s16 lookatIdx;
    s16 rollIdx;
    VecFx32 unk1C;
    s32 unk28;
    u8 unk2C[64];
    s32 unk6C;
    CModel model;
    CModelCfg modelCfg;
    void *unk340;
    s32 unk344;
    u32 unk348;
    // u32 unk34C;
};

extern C3DMagicCamera *g3DMagicCamera;

#ifndef IE3OGRES_3DMAGICCAMERA_H
#define IE3OGRES_3DMAGICCAMERA_H

#pragma once

#include <nitro.h>

#include "filesystem.hpp"
#include "model.hpp"
#include "modelconfig.hpp"

class C3DMagicCamera {
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
    //u32 unk34C;
};

extern C3DMagicCamera *g3DMagicCamera;

#endif //IE3OGRES_3DMAGICCAMERA_H

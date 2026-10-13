#pragma once

#include <nitro/types.h>
#include <nitro/fx/fx.h>

#include "C3DGameBase.hpp"
#include "CModelCfg.hpp"
#include "CNsbResourceMan.hpp"

typedef struct SEffectInstance {
    int unk0;
    int unk4;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    VecFx32 trans;
    VecFx32 rot;
    VecFx32 scale;
    CModel *model;
    CModelCfg *modelCfg;
    SNsbResource *nsbRes;
} SEffectInstance;

class C3DGameEffect : public C3DGameBase
{
public:
    C3DGameEffect()
    {
        this->reset();
    }
    /* 0x0205b4f0 */ virtual char *vFUN_00(int idx);
    /* 0x0205b504 */ virtual char *vFUN_04(int idx);
    /* 0x0205c99c */ virtual bool vFUN_08(char *path, int *outIdx, u32 *outCode);
    /* 0x0205c97c */ virtual ~C3DGameEffect();

    /* 0x0205b518 */ void reset(void);
    int FUN_0205b530(int param1, int param2);
    int FUN_0205b548(int param1);
    int FUN_0205b564(int param1, SEffectInstance **out);
    int FUN_0205b5cc(SEffectInstance **out);
    void FUN_0205b624(SEffectInstance *effect);
    int FUN_0205b6cc(SEffectInstance *effect);
    bool FUN_0205b768(SEffectInstance *effect);
    bool FUN_0205b9b8(SEffectInstance *effect);
    /* 0x0205bca4 */ bool init(int);
    /* 0x0205be20 */ void destroy(void);
    void FUN_0205bf14(int param1);
    void FUN_0205c060(void);
    void FUN_0205c468(void);

    SEffectInstance *effects;
    CModelCfg *modelCfgs;
};

extern C3DGameEffect *g3DGameEffect;

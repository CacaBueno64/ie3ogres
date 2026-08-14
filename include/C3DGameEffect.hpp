#pragma once

#include <nitro/types.h>

#include "C3DGameBase.hpp"
#include "CModelCfg.hpp"

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

    /* 0x0205bca4 */ bool init(int);
    /* 0x0205b518 */ void reset(void);

    void *unk4;
    CModelCfg *modelCfg;
};

extern C3DGameEffect *g3DGameEffect;

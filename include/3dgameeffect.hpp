#ifndef IE3OGRES_3DGAMEEFFECT_H
#define IE3OGRES_3DGAMEEFFECT_H

#pragma once

#include <nitro.h>

#include "3dgamebase.hpp"
#include "modelconfig.hpp"

class C3DGameEffect : public C3DGameBase {
    public:
        C3DGameEffect() {
            this->reset();
        }
        /* 0x0205b4f0 */ virtual char *vFUN_00(int param1);
        /* 0x0205b504 */ virtual char *vFUN_04(int param1);
        /* 0x0205c99c */ virtual BOOL vFUN_08(char *param1, int *param2, int *param3);
        /* 0x0205c97c */ virtual ~C3DGameEffect();

        /* 0x0205bca4 */ BOOL init(int);
        /* 0x0205b518 */ void reset(void);
    
    void *unk4;
    CModelCfg *modelCfg;
};

extern C3DGameEffect *g3DGameEffect;

#endif //IE3OGRES_3DGAMEEFFECT_H

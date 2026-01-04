#ifndef IE3OGRES_3DGAMEMAPOBJECT_H
#define IE3OGRES_3DGAMEMAPOBJECT_H

#pragma once

#include <nitro.h>

#include "cnvdat.h"
#include "3dgamebase.hpp"
#include "model.hpp"
#include "nsbresourcemanager.hpp"

typedef struct {
    u32 unk0;
    u16 unk4;
    u16 unk6;
    u32 unk8;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
    CModel *model;
    u32 unk18;
    NsbResource *res;
} C3DGameMapObject_14;

class C3DGameMapObject : public C3DGameBase {
    public:
        C3DGameMapObject() {
            this->reset();
        }
        /* 0x0205e2d8 */ virtual char *vFUN_00(int param1);
        /* 0x0205e34c */ virtual char *vFUN_04(int param1);
        /* 0x0205e3c0 */ virtual BOOL vFUN_08(char *param1, int *param2, int *param3);
        /* 0x0205ff60 */ virtual ~C3DGameMapObject();

        /* 0x0205ecd0 */ BOOL init(int);
        /* 0x0205e5d8 */ void reset(void);
    
    C3DGameMapObject_14 *unk14;
    u32 unk18;
    stGMapObjSave *rpgObjData;
    arckey_t arcKeys[5];
    u32 unk34;
    u32 unk38;
};

extern C3DGameMapObject *g3DGameMapObject;

#endif //IE3OGRES_3DGAMEMAPOBJECT_H

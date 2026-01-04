#ifndef IE3OGRES_3DGAMEMAP_H
#define IE3OGRES_3DGAMEMAP_H

#pragma once

#include <nitro.h>

#include "3dgamebase.hpp"
#include "model.hpp"
#include "filesystem.hpp"
#include "nsbresourcemanager.hpp"

typedef struct {
    s32 unk0;
    s32 unk4;
} ModelMap_64;

typedef struct {
    u8 unk0[0x2c];
    MtxFx43 mtx;
    CModel *model;
    NsbResource *res;
    ModelMap_64 unk64[5];
} ModelMap;

typedef struct {
    u8 unk0[0x10];
} C3DGameMap_10;

class C3DGameMap : public C3DGameBase {
    public:
        /* 0x0205d104 */ C3DGameMap();
        /* 0x0205ca78 */ virtual char *vFUN_00(int param1);
        /* 0x0205cac8 */ virtual char *vFUN_04(int param1);
        /* 0x0205cb18 */ virtual BOOL vFUN_08(char *param1, int *param2, int *param3);
        /* 0x0205e280 */ virtual BOOL vFUN_10(void);
        /* 0x0205d138 */ virtual ~C3DGameMap();

        /* 0x0205d180 */ BOOL init(int);

    C3DGameMap_10 *unk10;
    ModelMap *modelMap;
    u32 unk1C;
    arckey_t arcKeys[6];
};

extern C3DGameMap *g3DGameMap;

#endif //IE3OGRES_3DGAMEMAP_H

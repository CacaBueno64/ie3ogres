#pragma once

#include <nitro/types.h>

#include "C3DGameBase.hpp"
#include "CModel.hpp"
#include "CNsbResourceMan.hpp"
#include "filesystem.hpp"

typedef struct {
    s32 unk0;
    s32 unk4;
} ModelMap_64;

typedef struct {
    u8 unk0[0x2c];
    MtxFx43 mtx;
    CModel *model;
    SNsbResource *res;
    ModelMap_64 unk64[5];
} ModelMap;

typedef struct {
    u8 unk0[0x10];
} C3DGameMap_10;

class C3DGameMap : public C3DGameBase
{
public:
    /* 0x0205d104 */ C3DGameMap();

    /* 0x0205ca78 */ virtual char *vFUN_00(int idx);
    /* 0x0205cac8 */ virtual char *vFUN_04(int idx);
    /* 0x0205cb18 */ virtual bool vFUN_08(char *path, int *outIdx, u32 *outCode);
    /* 0x0205e280 */ virtual bool vFUN_10(void);
    /* 0x0205d138 */ virtual ~C3DGameMap();

    /* 0x0205d180 */ bool init(int);

    C3DGameMap_10 *unk10;
    ModelMap *modelMap;
    u32 unk1C;
    archandle_t arcKeys[6];
};

extern C3DGameMap *g3DGameMap;

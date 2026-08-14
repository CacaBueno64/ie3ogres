#pragma once

#include <nitro/types.h>

#include "C3DGameBase.hpp"
#include "CModel.hpp"
#include "CNsbResourceMan.hpp"
#include "filesystem.hpp"

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
    SNsbResource *res;
} C3DGameMapObject_14;

class C3DGameMapObject : public C3DGameBase
{
public:
    C3DGameMapObject()
    {
        this->reset();
    }
    /* 0x0205e2d8 */ virtual char *vFUN_00(int idx);
    /* 0x0205e34c */ virtual char *vFUN_04(int idx);
    /* 0x0205e3c0 */ virtual bool vFUN_08(char *path, int *outIdx, u32 *outCode);
    /* 0x0205ff60 */ virtual ~C3DGameMapObject();

    /* 0x0205ecd0 */ bool init(int);
    /* 0x0205e5d8 */ void reset(void);

    C3DGameMapObject_14 *unk14;
    u32 unk18;
    stGMapObjSave *rpgObjData;
    archandle_t arcKeys[5];
    u32 unk34;
    u32 unk38;
};

extern C3DGameMapObject *g3DGameMapObject;

#pragma once

#include <nitro.h>
#include <nnsys.h>

#include "CNsbPlttHook.hpp"
#include "CNsbResourceMan.hpp"

class CModel; // avoid cyclic dependency
class CTexture
{
public:
    virtual ~CTexture() {}

    bool FUN_ov16_02110b80(void);
    void FUN_ov16_02110bb0(void);
    bool FUN_ov16_02110bbc(archandle_t arcKey, const char *name, bool async);
    bool FUN_ov16_02110bfc(const char *path, bool async, size_t offset, size_t size, bool compressed, u8 strategy);
    /* ov16 0x02110db4 */ void releaseRes(void);

    SNsbResource *texRes;
    CModel *model;
    u32 unkC;
    NNSG3dPlttKey pltt;
    CNsbPlttHook nsbPlttHook;
};

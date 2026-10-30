#pragma once

#include <nitro.h>

#include "vram.hpp"
#include "CNsbResourceMan.hpp"

class CNsbPlttHook
{
public:
    virtual ~CNsbPlttHook();

    /* ov16 0x02111164 */ void clear(void);
    bool FUN_ov16_0211117c(SNsbResource *res);

    u32 unk4;
    SVRAMResource res;
    void *data;
    u32 size;
};

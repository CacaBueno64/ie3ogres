#pragma once

#include <nitro/types.h>

#include "vram.hpp"

class CNsbPlttHook {
    public:
        virtual ~CNsbPlttHook();
    
    u32 unk4;
    VramResource res;
    void *data;
    u32 size;
};

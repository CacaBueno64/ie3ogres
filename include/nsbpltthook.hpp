#ifndef IE3OGRES_NSBPLTTHOOK_H
#define IE3OGRES_NSBPLTTHOOK_H

#pragma once

#include <nitro.h>

#include "vram.hpp"

class CNsbPlttHook {
    public:
        virtual ~CNsbPlttHook();
    
    u32 unk4;
    VramResource res;
    void *data;
    u32 size;
};

#endif //IE3OGRES_NSBPLTTHOOK_H
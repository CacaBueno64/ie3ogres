#pragma once

#include <nitro/types.h>

#include "CNsbPlttHook.hpp"
#include "CNsbResourceMan.hpp"

class CModel; // avoid cyclic dependency
class CTexture {
    public:
        virtual ~CTexture() { }
    
    NsbResource *tesRes;
    CModel *model;
    u32 unkC;
    u32 pltt; // NNSG3dPlttKey
    CNsbPlttHook nsbPlttHook;
};

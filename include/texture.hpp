#ifndef IE3OGRES_TEXTURE_H
#define IE3OGRES_TEXTURE_H

#pragma once

#include <nitro.h>

#include "model.hpp"
#include "nsbresourcemanager.hpp"
#include "nsbpltthook.hpp"

class CTexture {
    public:
        virtual ~CTexture() { }
    
    NsbResource *tesRes;
    CModel *model;
    u32 unkC;
    u32 pltt; // NNSG3dPlttKey
    CNsbPlttHook nsbPlttHook;
};

#endif //IE3OGRES_TEXTURE_H
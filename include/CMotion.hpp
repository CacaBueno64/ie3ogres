#pragma once

#include <nitro/types.h>
#include "CNsbResourceMan.hpp"

class CModel; // avoid cyclic dependency
class CMotion {
    public:
        virtual ~CMotion() { }
    
    NsbResource *anmRes;
    u8 isLinked;
    u8 unk9; // pad?
    u16 anmIdx;
    void *anmObj; // NNSG3dAnmObj
    CModel *model;
};

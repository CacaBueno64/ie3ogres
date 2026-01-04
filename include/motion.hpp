#ifndef IE3OGRES_MOTION_H
#define IE3OGRES_MOTION_H

#pragma once

#include <nitro.h>

//#include "model.hpp"
class CModel;
#include "nsbresourcemanager.hpp"

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

#endif //IE3OGRES_MOTION_H

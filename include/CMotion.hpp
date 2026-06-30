#pragma once

#include "CNsbResourceMan.hpp"
#include <nitro/types.h>

class CModel; // avoid cyclic dependency
class CMotion
{
public:
    virtual ~CMotion() {}

    SNsbResource *anmRes;
    u8 isLinked;
    u8 unk9; // pad?
    u16 anmIdx;
    void *anmObj; // NNSG3dAnmObj
    CModel *model;
};

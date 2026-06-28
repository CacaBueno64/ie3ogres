#pragma once

#include <nitro/types.h>

class CSprButtonCtrl
{
public:
    virtual ~CSprButtonCtrl(); // should be inlined

    u8 unk4[0xF38];
};

extern CSprButtonCtrl *gSprButtonCtrl;

#ifndef IE3OGRES_SPRITEBUTTONCONTROLLER_H
#define IE3OGRES_SPRITEBUTTONCONTROLLER_H

#pragma once

#include <nitro.h>

class CSprButtonCtrl {
    public:
        virtual ~CSprButtonCtrl(); //should be inlined
    
    u8 unk4[0xF38];
};

extern CSprButtonCtrl *gSprButtonCtrl;

#endif //IE3OGRES_SPRITEBUTTONCONTROLLER_H

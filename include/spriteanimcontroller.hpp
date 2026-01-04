#ifndef IE3OGRES_SPRITEANIMCONTROLLER_H
#define IE3OGRES_SPRITEANIMCONTROLLER_H

#pragma once

#include <nitro.h>

class CSprAnimCtrl {
    public:
        /* ov16 0x0210e014 */ CSprAnimCtrl();
        /* ov16 0x0210e058 */ virtual ~CSprAnimCtrl();
    
    u8 unk4[0x420];
};

extern CSprAnimCtrl *gSprAnimeCtrl;

#endif //IE3OGRES_SPRITEANIMCONTROLLER_H

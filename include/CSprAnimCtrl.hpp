#pragma once

#include <nitro/types.h>

class CSprAnimCtrl {
    public:
        /* ov16 0x0210e014 */ CSprAnimCtrl();
        /* ov16 0x0210e058 */ virtual ~CSprAnimCtrl();
    
    u8 unk4[0x420];
};

extern CSprAnimCtrl *gSprAnimCtrl;

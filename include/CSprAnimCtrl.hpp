#pragma once

#include <nitro/types.h>

class CSprAnimCtrl
{
public:
    /* ov16 0x0210e014 */ CSprAnimCtrl();
    /* ov16 0x0210e058 */ virtual ~CSprAnimCtrl();

    bool FUN_ov16_0210e300(
        int param1,
        int param2,
        int param3,
        int param4,
        int param5,
        int param7,
        int param8,
        int param9,
        int param10,
        int param11,
        u8 param12
    );

    u8 unk4[0x420];
};

extern CSprAnimCtrl *gSprAnimCtrl;

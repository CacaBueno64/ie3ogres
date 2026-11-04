#pragma once

// clang-format off
#include <nitro.h>
// clang-format on

class C2DGChar
{
public:
    /* 0x02056760 */ C2DGChar();
    /* 0x020567b0 */ virtual ~C2DGChar();

    /* 0x02056828 */ void reset(void);
    void FUN_02057238(void);
    void FUN_02057250(void);

    u8 unk4[0xAC];
};

extern C2DGChar *g2DGChar;

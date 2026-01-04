#ifndef IE3OGRES_2DGAMECHAR_H
#define IE3OGRES_2DGAMECHAR_H

#pragma once

#include <nitro.h>

class C2DGChar {
    public:
        /* 0x02056760 */ C2DGChar();
        /* 0x020567b0 */ virtual ~C2DGChar();

        /* 0x02056828 */ void reset(void);

    u8 unk4[0xAC];
};

extern C2DGChar *g2DGChar;

#endif //IE3OGRES_2DGAMECHAR_H

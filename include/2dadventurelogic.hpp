#ifndef IE3OGRES_2DADVENTURELOGIC_H
#define IE3OGRES_2DADVENTURELOGIC_H

#pragma once

#include <nitro.h>

#include "cnvdat.h"

class C2DAdventureLogic {
    public:
        /* 0x02054f28 */ C2DAdventureLogic();
        /* 0x02054f48 */ virtual ~C2DAdventureLogic();

        /* 0x02054f60 */ void reset(void);
    
    u8 unk4[0x191c];
};

extern C2DAdventureLogic *g2DAdventureLogic;

#endif //IE3OGRES_2DADVENTURELOGIC_H

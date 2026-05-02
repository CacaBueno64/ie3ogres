#pragma once

#include <nitro/types.h>

class C2DAdventureLogic {
    public:
        /* 0x02054f28 */ C2DAdventureLogic();
        /* 0x02054f48 */ virtual ~C2DAdventureLogic();

        /* 0x02054f60 */ void reset(void);
    
    u8 unk4[0x191c];
};

extern C2DAdventureLogic *g2DAdventureLogic;

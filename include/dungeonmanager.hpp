#ifndef IE3OGRES_DUNGEONMANAGER_H
#define IE3OGRES_DUNGEONMANAGER_H

#pragma once

#include <nitro.h>

class CDungeonManager {
    public:
        /* ov16 0x020f82b0 */ CDungeonManager();
    
    u8 unk0[0x138];
};

extern CDungeonManager *gDungeonManager;

#endif //IE3OGRES_DUNGEONMANAGER_H

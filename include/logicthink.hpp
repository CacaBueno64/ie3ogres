#ifndef IE3OGRES_LOGICTHINK_H
#define IE3OGRES_LOGICTHINK_H

#pragma once

#include <nitro.h>

class CLogicThink {
    public:
        void FUN_0206f1e0(void);
        void FUN_0206f244(void);
        /* 0x0206f77c */ void initLiveTalk(void);
        /* 0x020715b4 */ void readUnitNo(void);
        /* 0x020724b8 */ void updateKeys(u16 pressed, u16 held);
};

extern CLogicThink gLogicThink;

#endif //IE3OGRES_LOGICTHINK_H

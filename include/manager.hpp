#ifndef IE3OGRES_MANAGER_H
#define IE3OGRES_MANAGER_H

#pragma once

#include <nitro.h>

class CManager {
    public:
        virtual ~CManager() { }
        virtual void init(void) = 0;
        /* 0x02029d14 */ virtual void startGraphics(u32 arg);
        /* 0x02029d10 */ virtual void vFUN_10();
        virtual BOOL updateKeys(u16 pressed, u16 held);
        virtual BOOL updateTP(TPData *tp);
        virtual BOOL update(int param1);
        /* 0x02029d0c */ virtual void vFUN_20();
        virtual BOOL updateLate(int param1);
        /* 0x02029d08 */ virtual void endGraphics(u32 arg);
        virtual void close(void) = 0;
        /* 0x02029d04 */ virtual void updateDisplayMapping(void); //probably misnomer
        /* 0x02029d00 */ virtual void vFUN_34();
    
        /* these may or may not be part of this
        virtual void vFUN_38();
        virtual void vFUN_3C();
        */
};

#endif //IE3OGRES_MANAGER_H

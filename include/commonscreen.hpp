#ifndef IE3OGRES_COMMONSCREEN_H
#define IE3OGRES_COMMONSCREEN_H

#pragma once

#include <nitro.h>

class CommonScreen {
    public:
        virtual ~CommonScreen() { }
        virtual void updateKeys(u16 pressed, u16 held);
        virtual void updateTP(TPData *tp);
        virtual void init(void);
        /* 0x0202b208 */ virtual BOOL vFUN_14();
        virtual void update(BOOL param1);
        virtual void updateLate(void);
        virtual void close(void);
        /* 0x0202b204 */ virtual void vFUN_24();
        /* 0x0202b200 */ virtual void vFUN_28();
        /* 0x0202b1f8 */ virtual void vFUN_2C();
        /* 0x0202b1f0 */ virtual void vFUN_30();
        /* 0x0202b1e8 */ virtual void vFUN_34();
        /* 0x0202b1e0 */ virtual void vFUN_38();
        virtual void fadeReset(void);
        virtual void fadeUpdate(void);
        virtual void blackOut(void);
        virtual void whiteOut(void);
        virtual void fadeIn(void);
        virtual void fadeBlack(void);
        virtual void fadeWhite(void);
        virtual BOOL isFading(void);
        virtual void isBrightAdjusted(void);
        /* 0x0202b1d8 */ virtual int transfer(void *arg);
        /* 0x0202b1d0 */ virtual int signal(int arg);
        /* 0x0202b1c8 */ virtual int state(void);
};

class CommonMainScreen : public CommonScreen {
    public:
        virtual ~CommonMainScreen() { }
        // virtual void updateKeys(u16 pressed, u16 held); // may exist but all children overwrite this
        // virtual void updateTP(TPData *tp); // may exist but all children overwrite this
        /* 0x0202b320 */ virtual void fadeReset(void);
        /* 0x0202b310 */ virtual void fadeUpdate(void);
        /* 0x0202b304 */ virtual void blackOut(void);
        /* 0x0202b2f8 */ virtual void whiteOut(void);
        /* 0x0202b2e8 */ virtual void fadeIn(void);
        /* 0x0202b2d8 */ virtual void fadeBlack(void);
        /* 0x0202b2c8 */ virtual void fadeWhite(void);
        /* 0x0202b2bc */ virtual BOOL isFading(void);
        /* 0x0202b2b0 */ virtual void isBrightAdjusted(void);
};

class CommonSubScreen : public CommonScreen {
    public:
        virtual ~CommonSubScreen() { }
        /* 0x0202b2a8 */ virtual void updateKeys(u16 pressed, u16 held);
        /* 0x0202b2a4 */ virtual void updateTP(TPData *tp);
        /* 0x0202b294 */ virtual void fadeReset(void);
        /* 0x0202b284 */ virtual void fadeUpdate(void);
        /* 0x0202b278 */ virtual void blackOut(void);
        /* 0x0202b26c */ virtual void whiteOut(void);
        /* 0x0202b25c */ virtual void fadeIn(void);
        /* 0x0202b24c */ virtual void fadeBlack(void);
        /* 0x0202b23c */ virtual void fadeWhite(void);
        /* 0x0202b230 */ virtual BOOL isFading(void);
        /* 0x0202b224 */ virtual void isBrightAdjusted(void);
};

#endif //IE3OGRES_COMMONSCREEN_H

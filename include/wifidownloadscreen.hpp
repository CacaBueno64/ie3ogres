#ifndef IE3OGRES_WIFIDOWNLOADSCREEN_H
#define IE3OGRES_WIFIDOWNLOADSCREEN_H

#pragma once

#include <nitro.h>
/* #include <dwc.h> */

#include "screenmanager.hpp"
#include "commonscreen.hpp"

class CWifiDownloadDWCInfo {
    public:
    private:
    u8 unk0[0x408];
};

class CSubTitleScreenWfDL : public CommonSubScreen {
    public:
        CSubTitleScreenWfDL(CScreenManager *manager) : manager(manager) { }
        virtual ~CSubTitleScreenWfDL() { }
        /* 0x020e3a10 */ virtual void init(void);
        /* 0x020e3a9c */ virtual void update(int arg);
        /* 0x020e3b14 */ virtual void updateLate(void);
        /* 0x020e3b6c */ virtual void close(void);
        /* 0x020e3210 */ virtual int vFUN_60(int arg);
    private:
    CScreenManager *manager;
    u8 unk8[0x7C];
};

class CMainTitleScreenGetInfo : public CommonMainScreen {
    public:
        CMainTitleScreenGetInfo(CScreenManager *manager) : manager(manager) { }
        virtual ~CMainTitleScreenGetInfo() { }
        /* 0x020e2df8 */ virtual void updateKeys(u16 pressed, u16 held);
        /* 0x020e2e40 */ virtual void updateTP(TPData *tp);
        /* 0x020e30d0 */ virtual void init(void);
        /* 0x020e30f4 */ virtual void update(int arg);
        /* 0x020e3198 */ virtual void updateLate(void);
        /* 0x020e31dc */ virtual void close(void);
        /* 0x020e0c84 */ virtual void vFUN_6c(void);
    private:
    u32 unk4;
    CScreenManager *manager;
    u8 unkC[0x3C];
};

class CMainTitleScreenWfDL : public CommonMainScreen {
    public:
        CMainTitleScreenWfDL(CScreenManager *manager) : manager(manager) { }
        virtual ~CMainTitleScreenWfDL() { }
        /* 0x020e1510 */ virtual void updateKeys(u16 pressed, u16 held);
        /* 0x020e1988 */ virtual void updateTP(TPData *tp);
        /* 0x020e2574 */ virtual void init(void);
        /* 0x020e262c */ virtual void update(int arg);
        /* 0x020e2744 */ virtual void updateLate(void);
        /* 0x020e2774 */ virtual void close(void);
    private:
    CScreenManager *manager;
    u8 unk8[0x194];
};

class CWifiDownloadScreenManager : public CScreenManager {
    public:
        CWifiDownloadScreenManager() : mainScreenWfDL(this), mainScreenGetInfo(this), subScreenWfDL(this), screenLoadContext(NULL) { }
        virtual ~CWifiDownloadScreenManager() { }
        /* ov15 0x020e0764 */ virtual void init(void);
        /* ov15 0x020e06f4 */ virtual void startGraphics(u32 arg);
        /* ov15 0x020e0724 */ virtual void endGraphics(u32 arg);
        /* ov15 0x020e08ac */ virtual void close(void);
        /* ov15 0x020e0968 */ virtual void updateScene(void);
    private:
    CWifiDownloadDWCInfo dwcInfo;
    u32 unk498;
    u32 unk49C;
    u32 unk4A0;
    CMainTitleScreenWfDL mainScreenWfDL;
    u32 unk640;
    CMainTitleScreenGetInfo mainScreenGetInfo;
    CSubTitleScreenWfDL subScreenWfDL;
    ScreenLoadContext *screenLoadContext;
};

#endif //IE3OGRES_WIFIDOWNLOADSCREEN_H

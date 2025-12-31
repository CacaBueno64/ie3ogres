//#ifndef IE3OGRES_TITLESCREEN_H
//#define IE3OGRES_TITLESCREEN_H
//
//#pragma once
//
//#include <nitro.h>
//
//#include "screenmanager.hpp"
//#include "commonscreen.hpp"
//#include "movie.hpp"
//
//class CMainTitleScreenInit : public CommonMainScreen {
//    public:
//        CMainTitleScreenInit(CScreenManager *manager) : manager(manager) { }
//        virtual ~CMainTitleScreenInit() { }
//        /* ov4 0x020bfeb4 */ virtual void updateKeys(u16 pressed, u16 held);
//        /* ov4 0x020c0088 */ virtual void updateTP(TPData *tp);
//        /* ov4 0x020c0cd0 */ virtual void init(void);
//        /* ov4 0x020c0dd4 */ virtual void update(int arg);
//        /* ov4 0x020c0f08 */ virtual void updateLate(void);
//        /* ov4 0x020c0f50 */ virtual void close(void);
//    private:
//    CScreenManager *manager;
//    int state;
//    u32 unkC;
//    u8 unk10;
//    u8 unk11;
//    u8 unk12;
//    u8 unk13;
//    u8 unk14;
//    u8 unk15;
//    u8 unk16;
//    u8 unk17;
//    u8 unk18;
//    u8 unk19;
//    u8 unk1A;
//    u8 unk1B;
//    u32 unk1C;
//    u32 unk20;
//    s32 unk24;
//    u8 unk28;
//    u8 unk29;
//    u8 unk2A;
//    u8 unk2B;
//    u8 unk2C;
//    u8 unk2D;
//    u8 unk2E;
//    u8 unk2F;
//    s32 unk30;
//    u32 unk34;
//    SFileData files[10];
//};
//
//struct CMainTitleScreenDCBmp : public CommonMainScreen {
//    public:
//        CMainTitleScreenDCBmp(CScreenManager *manager) : manager(manager) { }
//        virtual ~CMainTitleScreenDCBmp() { }
//        /* ov4 0x020bfa4c */ virtual void updateKeys(u16 pressed, u16 held);
//        /* ov4 0x020bfa74 */ virtual void updateTP(TPData *tp);
//        /* ov4 0x020bfac0 */ virtual void init(void);
//        /* ov4 0x020bfb34 */ virtual void update(int arg);
//        /* ov4 0x020bfb7c */ virtual void updateLate(void);
//        /* ov4 0x020bfb88 */ virtual void close(void);
//    private:
//    CScreenManager *manager;
//    u8 unk8;
//    u8 unk9;
//    u8 unkA;
//    u8 unkB;
//    u8 unkC;
//    u8 unkD;
//    u8 unkE;
//    u8 unkF;
//    SMovieInfo movieInfo;
//};
//
//class CTitleScreenManager : public CScreenManager {
//    public:
//        /* ov4 0x020be454 */ virtual void init(void);
//        /* ov4 0x020bf35c */ virtual void startGraphics(u32 arg);
//        /* ov4 0x020be3e0 */ virtual void vFUN_10(void);
//        /* ov4 0x020be400 */ virtual void vFUN_20(void);
//        /* ov4 0x020bf38c */ virtual void endGraphics(u32 arg);
//        /* ov4 0x020be6ec */ virtual void close(void);
//        /* ov4 0x020bef68 */ virtual void vFUN_34(void);
//    private:
//    u8 unk4[0x195C];
//    CUnitMan unitMan;
//    CMainTitleScreenInit mainScreenInit;
//    CMainTitleScreenDCBmp mainScreenDCBmp;
//    CMainTitleScreenWc mainScreenWc;
//    CMainTitleScreenWLGetInfo mainScreenWLGetInfo;
//    CSubTitleScreenInit subScreenInit;
//    CSubTitleScreenWc subScreenWc;
//    CSubTitleScreenWLDL subScreenWLDL;
//    CMainTitleScreenWcSave mainScreenWcSave;
//    CMainMenuScreenTrade mainScreenTrade;
//    CSubMenuScreenMovieView subScreenMovieView;
//    ScreenLoadContext *mainScreens;
//    ScreenLoadContext *subScreens;
//};
//
//#endif //IE3OGRES_SCRIPT_H

#ifndef IE3OGRES_LOGOSCREEN_H
#define IE3OGRES_LOGOSCREEN_H

#pragma once

#include <nitro.h>
#include "init/ov5_init.hpp"

#include "screenmanager.hpp"
#include "commonscreen.hpp"
#include "gamemodes.hpp"
#include "l5movie.hpp"
#include "l5sound.hpp"
#include "l5config.hpp"
#include "l5allocator.hpp"

class CMainLogoScreenDCBmp : public CommonMainScreen {
    public:
        CMainLogoScreenDCBmp(CScreenManager *manager) : manager(manager) { }
        virtual ~CMainLogoScreenDCBmp() { }
        /* ov5 0x020bceac */ virtual void updateKeys(u16 pressed, u16 held);
        /* ov5 0x020bcedc */ virtual void updateTP(TPData *tp);
        /* ov5 0x020bcf34 */ virtual void init(void);
        /* ov5 0x020bcfac */ virtual void update(int arg);
        /* ov5 0x020bcffc */ virtual void updateLate(void);
        /* ov5 0x020bd008 */ virtual void close(void);
    private:
    CScreenManager *manager;
    u32 unk_8;
    u8 tpTouch;
    u8 pad_d[3];
    s32 unk_10;
    SMovieInfo movieInfo;
};

class CMainLogoScreenInit : public CommonMainScreen {
    public:
        CMainLogoScreenInit(CScreenManager *manager) : manager(manager) { }
        virtual ~CMainLogoScreenInit() { }
        /* ov5 0x020bd040 */ virtual void updateKeys(u16 pressed, u16 held);
        /* ov5 0x020bd04c */ virtual void updateTP(TPData *tp);
        /* ov5 0x020bd1d8 */ virtual void init(void);
        /* ov5 0x020bd1fc */ virtual void update(int arg);
        /* ov5 0x020bd404 */ virtual void updateLate(void);
        /* ov5 0x020bd45c */ virtual void close(void);
        /* ov5 0x020bd448 */ virtual int vFUN_64(int arg);

        /* ov5 0x020bd0a0 */ void openArchives(void);
        /* ov5 0x020bd0f4 */ void closeArchives(void);
        /* ov5 0x020bd13c */ void loadImage(int idx);
        /* ov5 0x020bd19c */ void loadSceneImage(void);
    private:
    CScreenManager *manager;
    enum {
        STATE_IDLE = 0,
        STATE_INIT = 1,
        STATE_UPDATE_GRAPHICS = 2,
        STATE_FADE_IN = 3,
        STATE_IMAGE_WAIT = 4,
        STATE_FADE_OUT = 5,
        STATE_END = 6
    } state;
    enum {
        SCENE_COPYRIGHT = 0,
        SCENE_LEVEL5 = 1,
        SCENE_ACTIMAGINE = 2,
    } scene;
    s32 timer;
    u8 tpTouch;
    /* u8 pad_15[3]; */
    u32 tpX;
    u32 tpY;
    u8 dummy_20;
    u8 dummy_21;
    u8 skipSignal;
    /* u8 pad_23; */
    SFileData data[2]; // 0: level5 1: ActimagineOriginal
    u8 dummy_3c;
    /* u8 pad_3d[3]; */
};

class CSubLogoScreenInit : public CommonSubScreen {
    public:
        CSubLogoScreenInit(CScreenManager *manager) : manager(manager) { }
        virtual ~CSubLogoScreenInit() { }
        /* ov5 0x020bd5e4 */ virtual void updateKeys(u16 pressed, u16 held);
        /* ov5 0x020bd63c */ virtual void updateTP(TPData *tp);
        /* ov5 0x020bd6dc */ virtual void init(void);
        /* ov5 0x020bd6fc */ virtual void update(int arg);
        /* ov5 0x020bd720 */ virtual void updateLate(void);
        /* ov5 0x020bd724 */ virtual void close(void);
        /* ov5 0x020bd494 */ virtual int vFUN_64(int arg);

        /* ov5 0x020bd4a8 */ void openArchives(void);
        /* ov5 0x020bd4f4 */ void closeArchive(int idx);
        /* ov5 0x020bd538 */ void closeArchives(void);
        /* ov5 0x020bd560 */ void loadSceneImage(void);
    private:
    CScreenManager *manager;
    u8 image;
    u8 uploadComplete;
    u8 tpTouch;
    //u8 pad_b;
    u32 tpX;
    u32 tpY;
    u8 dummy_14;
    //u8 pad_15[3];
    SFileData data[3];
};

class CLogoScreenManager : public CScreenManager {
    public:
        CLogoScreenManager() : mainScreenInit(this), mainScreenDCBmp(this), subScreenInit(this) { }
        virtual ~CLogoScreenManager() { }
        /* ov5 0x020bcb40 */ virtual void init(void);
        /* ov5 0x020bcde4 */ virtual void startGraphics(u32 arg);
        /* ov5 0x020bce28 */ virtual void endGraphics(u32 arg);
        /* ov5 0x020bcc44 */ virtual void close(void);
        /* ov5 0x020bcc94 */ virtual void updateScene(void);
    private:
    CMainLogoScreenInit mainScreenInit;
    CMainLogoScreenDCBmp mainScreenDCBmp;
    CSubLogoScreenInit subScreenInit;
};

extern "C" {
    extern int unk_0209A110;
    extern void *gBgMenuManager;
    extern void FUN_ov16_020f10c8(void);
    extern void FUN_ov16_020f13d4(void);
    extern void FUN_ov16_020f1490(int);
    extern void FUN_ov16_020f14b4(int, int);
    extern void FUN_ov16_020f153c(int);
    extern void FUN_ov16_020f1560(int, int);
    extern void FUN_ov16_020f15dc(int);
    extern BOOL FUN_ov16_020f1660(void);
    extern BOOL FUN_ov16_020f1670(void);
    extern void FUN_ov16_020f2a18(SMovieInfo *, const char *);
    extern void FUN_ov16_020f2a74(SMovieInfo *);
    extern BOOL FUN_ov16_020f2aa4(void);
    extern void FUN_ov16_020f2ab4(void);
    extern void FUN_ov16_020f3054(const char *, SFileData *);
    extern void FUN_ov16_020f3f60(int);
    extern void FUN_ov16_020f47fc(void);
    extern void FUN_ov16_020f4894(int);
    extern void FUN_ov16_020f51a8(void);
    extern void FUN_ov16_020f5af0(void *, int);
    extern void FUN_ov16_020f6a9c(void *, int);
}

#endif //IE3OGRES_LOGOSCREEN_H

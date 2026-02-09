#ifndef IE3OGRES_ENDROLLSCREEN_H
#define IE3OGRES_ENDROLLSCREEN_H

#pragma once

#include <nitro.h>

#include "screenmanager.hpp"
#include "commonscreen.hpp"
#include "gamemodes.hpp"
#include "config.hpp"
#include "audioplayer.hpp"
#include "3ddevice.hpp"
#include "unk_020A0640.hpp"

typedef struct {
    char name[32];
    u16 duration;
} SEndrollOption;

typedef struct {
    BOOL subFinished;
    BOOL subInitialized;
    BOOL mainFinished;
} SEndrollScreenShared;

class CMainEndrollScreenInit : public CommonMainScreen {
    public:
        CMainEndrollScreenInit(CScreenManager *manager) : manager(manager) { }
        virtual ~CMainEndrollScreenInit() { }
        /* ov6 0x020bcec0 */ virtual void updateKeys(u16 pressed, u16 held);
        /* ov6 0x020bcefc */ virtual void updateTP(TPData *tp);
        /* ov6 0x020bd25c */ virtual void init(void);
        /* ov6 0x020bd2bc */ virtual void update(BOOL param1);
        /* ov6 0x020bd714 */ virtual void updateLate(void);
        /* ov6 0x020bd718 */ virtual void close(void);

    private:
        static const int CREDIT_IMAGE_COUNT = 38;

        typedef enum CreditBG {
            CREDIT_BG_A,
            CREDIT_BG_B
        } CreditBG;
        
        /* ov6 0x020bcf40 */ void loadFiles(void);
        /* ov6 0x020bcfe4 */ void freeFile(int idx);
        /* ov6 0x020bd028 */ void freeFiles(void);
        /* ov6 0x020bd050 */ void displayCredits(int idx, CreditBG bg);
        /* ov6 0x020bd13c */ void returnToOverworld(void);
        /* ov6 0x020bd154 */ void returnToTitle(void);
        BOOL FUN_ov6_020bd20c(void);

        inline void displayNextCredits(int *idx) {
            CreditBG bg = (*idx - 1) % 2 ? CREDIT_BG_B : CREDIT_BG_A;
            this->displayCredits(*idx++, bg);
        }

        SFileData creditsImages[1 + CREDIT_IMAGE_COUNT];
        enum State {
            STATE_INIT,
            STATE_DUMMY_1,
            STATE_CREDITS_START,
            STATE_CREDITS_SCROLL,
            STATE_PLAY_MUSIC,
            STATE_5,
            STATE_6,
            STATE_FIN,
            STATE_8,
            STATE_9,
        } state;
        int vOffsetA;
        int vOffsetB;
        int creditsIdx;
        u32 unk1E8;
        u8 unk1EC;
        BOOL unk1F0;
        u8 unk1F4;
        CScreenManager *manager;
        SEndrollScreenShared shared;
};

class CSubEndrollScreenInit : public CommonSubScreen {
    public:
        CSubEndrollScreenInit(CScreenManager *manager) : manager(manager) { }
        virtual ~CSubEndrollScreenInit() { }
        /* ov6 0x020bdc78 */ virtual void updateKeys(u16 pressed, u16 held) { }
        /* ov6 0x020bdc74 */ virtual void updateTP(TPData *tp) { }
        /* ov6 0x020bda40 */ virtual void init(void);
        /* ov6 0x020bdac4 */ virtual void update(BOOL param1);
        /* ov6 0x020bdc44 */ virtual void updateLate(void);
        /* ov6 0x020bdc48 */ virtual void close(void);
        /* ov6 0x020bdaa8 */ virtual int transfer(void *arg);
        /* ov6 0x020bd8f4 */ virtual int signal(int arg);
    private:
    static const int CREDIT_IMAGE_COUNT = 40;
    static const int CREDIT_IMAGE_FIN = 41;

    /* ov6 0x020bd764 */ BOOL readOptions(void);
    /* ov6 0x020bd864 */ void freeOptions(void);
    /* ov6 0x020bd888 */ void resetGraphics(void);
    /* ov6 0x020bd8fc */ void readFin(const char *path);
    /* ov6 0x020bd914 */ void readImage(int idx);
    /* ov6 0x020bd970 */ void freeImage(int idx);
    /* ov6 0x020bd9b4 */ void freeImages(void);
    /* ov6 0x020bd9dc */ void displayImage(int idx);

    CScreenManager *manager;
    SFileData creditImages[2 + CREDIT_IMAGE_COUNT];
    SEndrollOption *options;
    enum State {
        STATE_DUMMY_0,
        STATE_INIT,
        STATE_UPDATE,
        STATE_FIN,
        STATE_END,
    } state;
    u16 dummy208;
    u16 duration;
    u8 imageIdx;
    SEndrollScreenShared *shared;
};

class CEndrollScreenManager : public CScreenManager {
    public:
        CEndrollScreenManager() : mainScreenInit(this), subScreenInit(this) { }
        virtual ~CEndrollScreenManager() { }
        /* ov6 0x020bcb40 */ virtual void init(void);
        /* ov6 0x020bcdf8 */ virtual void startGraphics(u32 arg);
        /* ov6 0x020bce3c */ virtual void endGraphics(u32 arg);
        /* ov6 0x020bcc70 */ virtual void close(void);
        /* ov6 0x020bccc0 */ virtual void updateScene(void);
    private:
    CMainEndrollScreenInit mainScreenInit;
    CSubEndrollScreenInit subScreenInit;
};

extern "C" {
    extern void FUN_ov16_020f3f60(int);
    extern void FUN_ov16_020f4894(int);
    extern void FUN_ov16_020f47fc(void);
    extern void FUN_ov16_020f51a8(void);
}

#endif //IE3OGRES_ENDROLLSCREEN_H

#ifndef IE3OGRES_CARDSCREEN_H
#define IE3OGRES_CARDSCREEN_H

#pragma once

#include <nitro.h>

#include "screenmanager.hpp"
#include "commonscreen.hpp"

class CMainCardScreenInit : public CommonMainScreen {
    public:
        CMainCardScreenInit(CScreenManager *manager) : manager(manager) { }
        virtual ~CMainCardScreenInit() { }
        /* ov3 0x020bd234 */ virtual void updateKeys(u16 pressed, u16 held) { }
        /* ov3 0x020bd230 */ virtual void updateTP(TPData *tp) { }
        /* ov3 0x020bd10c */ virtual void init(void);
        /* ov3 0x020bd134 */ virtual void update(BOOL param1);
        /* ov3 0x020bd1a8 */ virtual void updateLate(void);
        /* ov3 0x020bd1ec */ virtual void close(void);
        
        /* ov3 0x020bcea0 */ void initGraphics(void);
        /* ov3 0x020bcf48 */ void deallocateFile(void);
        /* ov3 0x020bcf58 */ void displayGraphics(void);
        void FUN_ov3_020bd084(void);
    private:
    CScreenManager *manager;
    int state;
    SFileData file;
};

class CCardScreenManager : public CScreenManager {
    public:
        CCardScreenManager() : mainScreenInit(this) { }
        virtual ~CCardScreenManager() { }
        /* ov3 0x020bcb40 */ virtual void init(void);
        /* ov3 0x020bce00 */ virtual void startGraphics(u32 arg);
        /* ov3 0x020bce30 */ virtual void endGraphics(u32 arg);
        /* ov3 0x020bcbd4 */ virtual void close(void);
        /* ov3 0x020bcc24 */ virtual void updateScene(void);
    private:
    CMainCardScreenInit mainScreenInit;
};

typedef struct {
    //u8 unk0[0x14];
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
    u8 unk24;
    void *unk28;
} UnkStruct_ov3_020bd084;

extern "C" {
    extern void _ZN8Graphics17LoadBGPaletteMainEv(void);
    extern int _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti(Archive::ImagePAC *, EngineSelect, int);
    extern int _ZN8Graphics20AdjustTilemapIndicesEPtmii(void *, u32, int, int);
    extern void FUN_ov16_020f3f60(int);
    extern void FUN_ov16_020f4894(int);
    extern void FUN_ov16_020f47fc(void);
    extern void FUN_ov16_020f51a8(void);
    extern void FUN_ov16_020f5a58(/* CBgMenuManager */ void *);
    extern void FUN_ov16_020f5af0(/* CBgMenuManager */ void *, int);
    extern void FUN_ov16_020f5c34(/* CBgMenuManager */ void *, int, int, int, int, UnkStruct_ov3_020bd084 *, int, int, int);
    extern void FUN_ov16_020f672c(/* CBgMenuManager */ void *, int);
    extern void FUN_ov16_020f6a9c(/* CBgMenuManager */ void *, int);
    extern void *gBgMenuManager;
}

#endif //IE3OGRES_CARDSCREEN_H

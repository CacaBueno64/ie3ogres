#pragma once

// clang-format off
#include <nitro.h>

#include "CScreenManager.hpp"
#include "unk_0209A454.hpp"
// clang-format on

class C2DAdventureLogic;
class C2DGChar;
class C3DDevice;
class C3DGameChar;
class C3DGameEffect;
class C3DGameMap;
class C3DGameMapObject;
class C3DMagicCamera;
class C3DPlaneCtrl;
class C3DSpriteCtrl;
class CDungeonManager;
class CFontManager;
class CFontManager_2;
class CNsbResourceMan;
class CSprAnimCtrl;
class CSprButtonCtrl;
class CCameraCtrl;
class C3DVramMan;

FS_EXTERN_OVERLAY(overlay130);
FS_EXTERN_OVERLAY(overlay16);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u8 unk10;
    u8 unk11;
    u16 FontBlankCode;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u8 unk1A[0xA];
    C3DGameMap *unk24;
    CSprButtonCtrl *unk28;
    C3DMagicCamera *unk2C;
    void *unk30;
    C2DGChar *unk34;
    void *unk38;
    s32 IsValidSave;
    BOOL WaitVBlank;
    CFontManager *Font8;
    CSprAnimCtrl *unk48;
    C2DAdventureLogic *unk4C;
    CFontManager_2 *Font12T;
    u16 unk54[2];
    CNsbResourceMan *unk58;
    C3DGameMapObject *unk5C;
    C3DGameChar *unk60;
    void *unk64;
    u32 unk68;
    void *Logic_ShoesInfoFile;
    void *Logic_MissInfoFile;
    void *Logic_PalSkin2dFile;
    void *Logic_PalSkinFaceFile;
    u16 MainScreenBrightness;
    u16 SubScreenBrightness;
    int EvenFrames;
    C3DGameEffect *unk84;
    void *unk88; // C3DFieldSprite
    C3DDevice *unk8C;
    CFontManager *FontRubi8;
    void *unk94;
    CCameraCtrl *unk98;
    void *Logic_PalSkin3dFile;
    void *Logic_GlovesInfoFile;
    C3DVramMan *unkA4;
    void *Logic_WearSetFile;
    C3DPlaneCtrl *unkAC;
    BOOL UpdateBrightness;
    void *unkB4;
    void *unkB8;
    u32 unkBC;
    int unkC0; // OSHeapHandle
    CFontManager *Font12;
    CDungeonManager *unkC8;
    C3DSpriteCtrl *unkCC;
    u8 unkD0[0x114];
    void *unk1E4;
} UnkStruct_02099E8C;
extern UnkStruct_02099E8C unk_02099E8C;

void VBlankIntr(void);
void InitHeap(void);
void InitSDK(void);
void InitAlloc(void);
void VramClear(void);
void InitInterrupt(void);
void FUN_020292e8(void);
void FUN_020292f4(void);
void InitGlobals(void);
void InitG3d(void);
void InitTouchPannel(void);
void FUN_020295e8(void);
void InitCommonFiles(void);
void InitFont(void);

#ifndef IE3OGRES_INIT_H
#define IE3OGRES_INIT_H

#pragma once

#include <nitro.h>

#include "ov130.hpp"
#include "allocator.hpp"
#include "fileio.hpp"
#include "movieplayer.hpp"
#include "filesystem.hpp"
#include "wirelessutil.hpp"
#include "logicthink.hpp"
#include "fontmanager.hpp"
#include "3ddevice.hpp"
#include "resourcemanager.hpp"
#include "nsbresourcemanager.hpp"
#include "cameracontroller.hpp"
#include "3dgamechar.hpp"
#include "3dgamemap.hpp"
#include "3dgameeffect.hpp"
#include "3dgamemapobject.hpp"
#include "3dplanecontroller.hpp"
#include "3dspritecontroller.hpp"
#include "3dmagiccamera.hpp"
#include "2dadventurelogic.hpp"
#include "2dgamechar.hpp"
#include "spritebuttoncontroller.hpp"
#include "spriteanimcontroller.hpp"
#include "dungeonmanager.hpp"
#include "screenmanager.hpp"
#include "recordmanager.hpp"

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
    void *unk88; //C3DFieldSprite
    C3DDevice *unk8C;
    CFontManager *FontRubi8;
    void *unk94;
    CameraController *unk98;
    void *Logic_PalSkin3dFile;
    void *Logic_GlovesInfoFile;
    ResourceManager *unkA4;
    void *Logic_WearSetFile;
    C3DPlaneCtrl *unkAC;
    BOOL UpdateBrightness;
    void *unkB4;
    void *unkB8;
    u32 unkBC;
    int unkC0; //OSHeapHandle
    CFontManager *Font12;
    CDungeonManager *unkC8;
    C3DSpriteCtrl *unkCC;
    u8 unkD0[0x114];
    void *unk1E4;
} UnkStruct_02099E8C;
extern UnkStruct_02099E8C unk_02099E8C;

typedef struct {
    u8 izType; // 0: Ogre, 1: Bomber (or Spark idk)
    u8 geometryUnderflowCheck;
    u8 menuMovieMax;
    u32 rpgMoveAccelUp;
    u32 rpgMoveAccelDown;
    u32 rpgMoveSpeed;
    u32 rpgStandDist;
    u32 rpgGiveupMoveDist;
    u16 rpgMinimapScrollVelocity;
} UnkStruct_0209A1A8;
extern UnkStruct_0209A1A8 unk_0209A1A8;

typedef struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
    u8 unk20;
    u8 unk21;
    u8 unk22;
    u8 unk23;
    u32 unk24;
    u8 unk28;
    u8 unk29;
    u8 unk2A;
    u8 unk2B;
    u16 unk2C;
    u8 unk2E;
    u8 unk2F;
    u8 mini;
    u8 wireless;
    u8 unk32;
    u8 unk33;
    u8 unk34;
    u8 unk35;
    u8 unk36;
    u8 unk37;
    u8 unk38;
    u8 unk39;
    u8 unk3A;
    u8 unk3B;
    u16 unk3C;
    u16 unk3E;
    char unk40[32];
    char unk60[32];
    u8 unk80;
    u8 unk81;
    u8 unk82;
    u8 unk83;
    SceneType unk84;
    u8 unk88;
    u8 unk89;
    u8 unk8A;
    u8 unk8B;
} UnkStruct_0209A454;
extern UnkStruct_0209A454 unk_0209A454;

void VBlankIntr(void);
void InitHeap(void);
void InitCommon(void);
void FUN_02029140(void);
void VramClear(void);
void InitInterrupt(void);
void FUN_020292e8(void);
void FUN_020292f4(void);
void InitGlobals(void);
void InitG3d(void);
void InitTouchPannel(void);
void FUN_020295e8(void);
void FUN_02029608(void);
void InitFont(void);

#endif //IE3OGRES_INIT_H

#ifndef IE3OGRES_INIT_H
#define IE3OGRES_INIT_H

#pragma once

#include <nitro.h>

#include "ov130.hpp"
#include "l5allocator.hpp"
#include "l5filerequestmanager.hpp"
#include "l5movie.hpp"
#include "l5fs.hpp"
#include "unk_0209AEC0.hpp"
#include "unk_0209BA20.hpp"
#include "fontmanager.hpp"

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
    u8 unk1A[0x16];
    void *unk30;
    u32 unk34;
    void *unk38;
    u32 unk3C;
    s32 unk40;
    CFontManager *Font8;
    u32 unk48;
    u32 unk4C;
    CFontManager_2 *Font12T;
    u32 unk54;
    u8 unk58[0x10];
    u32 unk68;
    void *Logic_ShoesInfoFile;
    void *Logic_MissInfoFile;
    void *Logic_PalSkin2dFile;
    void *Logic_PalSkinFaceFile;
    u16 MainScreenBrightness;
    u16 SubScreenBrightness;
    int FrameCounter;
    u8 unk84[0x0C];
    CFontManager *FontRubi8;
    void *unk94;
    u32 unk98;
    void *Logic_PalSkin3dFile;
    void *Logic_GlovesInfoFile;
    u32 unkA4;
    void *Logic_WearSetFile;
    u32 unkAC;
    u32 unkB0;
    void *unkB4;
    u32 unkB8;
    u32 unkBC;
    int unkC0; //OSHeapHandle
    CFontManager *Font12;
    u8 unkC8[0x11C];
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

void VBlankIntr(void);
void InitHeap(void);
void InitCommon(void);
void FUN_02029140(void);
void VramClear(void);
void InitInterrupt(void);
void FUN_020292e8(void);
void FUN_020292f4(void);
extern "C" void FUN_02029304(void);
void InitG3d(void);
void InitTouchPannel(void);
void FUN_020295e8(void);
void FUN_02029608(void);

#endif //IE3OGRES_INIT_H

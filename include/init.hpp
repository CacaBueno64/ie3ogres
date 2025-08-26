#ifndef IE3OGRES_INIT_H
#define IE3OGRES_INIT_H

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

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
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u8 unk1A[0x16];
    void *unk30;
    u32 unk34;
    void *unk38;
    u32 unk3C;
    s32 unk40;
    u32 unk44;
    u32 unk48;
    u32 unk4C;
    u32 unk50;
    u32 unk54;
    u8 unk58[0x10];
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u16 unk7C;
    u16 unk7E;
    s32 unk80;
    u8 unk84[0x0C];
    u32 unk90;
    void *unk94;
    u32 unk98;
    u32 unk9C;
    u32 unkA0;
    u32 unkA4;
    u32 unkA8;
    u32 unkAC;
    u32 unkB0;
    void *unkB4;
    u32 unkB8;
    u32 unkBC;
    u32 unkC0;
    u32 unkC4;
    u8 unkC8[0x11C];
    void *unk1E4;
} UnkStruct_02099E8C;

typedef struct {
    u8      izType; // 0: Ogre, 1: Bomber 
    u8      geometryUnderflowCheck;
    u8      menuMovieMax;
    u32     rpgMoveAccelUp;
    u32     rpgMoveAccelDown;
    u32     rpgMoveSpeed;
    u32     rpgStandDist;
    u32     rpgGiveupMoveDist;
    u16     rpgMinimapScrollVelocity;
} UnkStruct_0209A1A8;

void FUN_02028fac(void);
void FUN_02029078(void);
void InitCommon(void);
void FUN_02029140(void);
void VramClear(void);
void InitInterrupt(void);
void FUN_020292e8(void);
void FUN_020292f4(void);
void FUN_02029304(void);
void InitG3d(void);
void InitTouchPannel(void);
void FUN_020295e8(void);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif //IE3OGRES_INIT_H

#pragma once

#include <nitro/types.h>  // for u32, u8, u16

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

void InitArena(void);
void InitConfig(void);

#ifndef IE3OGRES_OV130_H
#define IE3OGRES_OV130_H

#include <nitro.h>

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

#include "config.hpp"

void InitArena(void);
void InitConfig(void);

#endif //IE3OGRES_OV130_H

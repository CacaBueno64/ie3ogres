#ifndef IE3OGRES_VRAM_H
#define IE3OGRES_VRAM_H

#pragma once

#include <nitro.h>

typedef struct {
    s32 size;
    u32 key;
    u8 type; // 1: texture, 2: palette
    /* pad? */
} VramResource;

typedef struct {
    VramResource res;
    s32 refCount;
} SharedVramResource;

#endif //IE3OGRES_VRAM_H
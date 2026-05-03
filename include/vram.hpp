#pragma once

#include <nitro/types.h>

typedef struct {
    s32 size;
    u32 key;
    u8 type; // 1: texture, 2: palette
    u8 unk_9;
    u8 unk_a;
    u8 unk_b;
} VramResource;

typedef struct {
    VramResource res;
    s32 refCount;
} SharedVramResource;

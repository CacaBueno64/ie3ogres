#pragma once

#include <nitro/types.h>

typedef struct {
    s32 size;
    s32 key;
    u8 type;
    u8 unk_9;
    u8 unk_a;
    u8 unk_b;
} SVRAMResource;

typedef struct {
    SVRAMResource res;
    s32 refCount;
} SSharedVRAMResource;

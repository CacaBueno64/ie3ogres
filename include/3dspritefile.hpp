#ifndef IE3OGRES_3DSPRITEFILE_H
#define IE3OGRES_3DSPRITEFILE_H

#pragma once

#include <nitro.h>

#include "vram.hpp"

typedef struct {
    u32 hash; /* filename */
    void *data;
    u32 size;
    u16 flags;
    u8 type;
    u8 state; /* 0: idle, 1: allocated, 2: detached */
    s16 refCount;
    u8 s; /* GXTexSizeS */
    u8 t; /* GXTexSizeT */
    u8 format; /* GXTexFmt */
    s8 fileHandle;
    u8 unk16;
    u8 unk17;
    VramResource texture;
    VramResource palette;
    u8 unk30;
    u8 unk31;
    u8 unk32;
    u8 unk33;
} Texture;

typedef struct {
    Texture *textures;
    s16 cap;
    s16 cur;
} TextureList;

class C3DSprFile {
    public:
        /* 0x020585bc */ C3DSprFile();
        /* 0x020585fc */ virtual ~C3DSprFile();
    
    TextureList list;
    SharedVramResource defaultPltt;
};

#endif //IE3OGRES_3DSPRITEFILE_H

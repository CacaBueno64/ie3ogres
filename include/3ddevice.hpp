#ifndef IE3OGRES_3DDEVICE_H
#define IE3OGRES_3DDEVICE_H

#pragma once

#include <nitro.h>

typedef struct {
    GXRgb rgb;
    u8 alpha;
    u8 fog;
} S3DDevice_Clear;

typedef struct {
    GXRgb color;
    u8 alpha;
    u8 enable;
    u8 blend;
    u8 slope;
    u16 offset;
    u32 table[8];
} S3DDevice_Fog;

class C3DDevice {
    public:
        virtual ~C3DDevice();
        /* 0x02051144 */ void init();
        /* 0x020512a8 */ void setClearColor(GXRgb rgb, u8 alpha, u8 fog);
    
    u8 unk4;
    S3DDevice_Clear clear;
    GXRgb edgeColorTable[8];
    S3DDevice_Fog fog;
    u8 antiAliasing;
    u8 edgeMarking;
    u8 unk46; //pad
    u8 unk47; //pad
};

extern C3DDevice *g3DDevice;

#endif //IE3OGRES_3DDEVICE_H

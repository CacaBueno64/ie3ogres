#pragma once

#include <nitro/gx/g3.h>
#include <nitro/gx/g3x.h>
#include <nitro/gx/gxcommon.h>
#include <nitro/types.h>

class C3DDevice
{
public:
    /* 0x0205108c */ virtual ~C3DDevice();

    /* 0x02051144 */ BOOL init(void);
    /* 0x020512a8 */ void setClearColor(GXRgb color, u8 alpha, BOOL fog);
    /* 0x020512dc */ void setAntiAliasing(BOOL enable);
    /* 0x0205131c */ void setEdgeMarking(BOOL enable);
    /* 0x0205135c */ void setEdgeColor(GXRgb color);
    /* 0x02051384 */ void setFog(BOOL enable);
    /* 0x020513a8 */ void setFog(BOOL color, GXFogSlope slope, u16 offset);
    /* 0x020513ec */ void setFogColor(GXRgb color, u8 alpha);
    /* 0x02051408 */ void setFogTable(u32 *table);
    /* 0x02051434 */ void reset(void);
    /* 0x02051448 */ void finishFrame(void);

    typedef struct {
        GXRgb color;
        u8 alpha;
        u8 fog;
    } SClear;

    typedef struct {
        GXRgb color;
        u8 alpha;
        u8 enable;
        u8 blend; // GXFogBlend
        u8 slope; // GXFogSlope
        u16 offset;
        u32 table[8];
    } SFog;

    u8 unk4; // alpha?
    u8 pad5;
    u8 pad6;
    u8 pad7;
    SClear clear;
    GXRgb edgeColorTable[8];
    SFog fog;
    u8 antiAliasing;
    u8 edgeMarking;
    u8 pad46;
    u8 pad47;
};

extern C3DDevice *g3DDevice;

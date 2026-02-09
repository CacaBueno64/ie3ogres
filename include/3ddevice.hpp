#ifndef IE3OGRES_3DDEVICE_H
#define IE3OGRES_3DDEVICE_H

#pragma once

#include <nitro.h>

class C3DDevice {
    public:
        /* 0x0205108c */ virtual ~C3DDevice();
        
        /* 0x02051144 */ BOOL init(void);
        /* 0x020512a8 */ void setClearColor(GXRgb rgb, u8 alpha, BOOL fog);
        /* 0x020512dc */ void setAntiAliasing(BOOL enable);
        /* 0x0205131c */ void setEdgeMarking(BOOL enable);
        /* 0x0205135c */ void setEdgeColor(GXRgb rgb);
        /* 0x02051384 */ void setFog(BOOL enable);
        /* 0x020513a8 */ void setFog(GXFogBlend blend, GXFogSlope slope, u16 offset);
        /* 0x020513ec */ void setFogColor(GXRgb rgb, u8 alpha);
        /* 0x02051408 */ void setFogTable(u32 *table);
        /* 0x02051434 */ void reset(void);
        /* 0x02051448 */ void commitFrame(void);

        typedef struct {
            GXRgb rgb;
            u8 alpha;
            u8 fog;
        } Clear;

    typedef struct {
        GXRgb rgb;
        u8 alpha;
        u8 enable;
        u8 blend; // GXFogBlend
        u8 slope; // GXFogSlope
        u16 offset;
        u32 table[8];
    } Fog;

    u8 unk4; // alpha?
    u8 pad5;
    u8 pad6;
    u8 pad7;
    Clear clear;
    GXRgb edgeColorTable[8];
    Fog fog;
    u8 antiAliasing;
    u8 edgeMarking;
    u8 pad46;
    u8 pad47;
};

extern "C" {
    extern void FUN_ov16_020ef624(int); // Create Circle

    // TODO: implement TwlSystem headers, one day
    extern void NNS_G3dGeBufferOP_N(u32, u32 *, u32);
    static inline void NNS_G3dGeViewPort(
        int x1,
        int y1,
        int x2,
        int y2)
    {
        u32 tmp;
        GX_VIEWPORT_ASSERT(x1, y1, x2, y2);
        tmp = GX_PACK_VIEWPORT_PARAM(x1, y1, x2, y2);

        NNS_G3dGeBufferOP_N(G3OP_VIEWPORT, &tmp, G3OP_VIEWPORT_NPARAMS);
    }
    extern void NNS_G3dGeUseFastDma(BOOL cond);
    extern void NNS_G3dGeFlushBuffer(void);
}

extern C3DDevice *g3DDevice;

#endif //IE3OGRES_3DDEVICE_H

#include "C3DDevice.hpp"

#include <nitro/mi/memory.h>
#include <nitro/types.h>

#include <nnsys/g3d/gecom.h>

#include "Shadow.hpp"
#include "init/arm9_init.hpp"

C3DDevice::~C3DDevice()
{
    MI_CpuClearFast(&this->clear, sizeof(this->clear));
    MI_CpuClearFast(this->edgeColorTable, sizeof(this->edgeColorTable));
    MI_CpuClearFast(&this->fog, sizeof(this->fog));
    this->antiAliasing = 0;
    this->edgeMarking = 0;
}

BOOL C3DDevice::init()
{
    u32 fog_table[8];
    GXRgb toon_table[32];

    this->unk4 = 0;
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    this->setClearColor(GX_RGB(0, 0, 0), 0, FALSE);
    this->setEdgeMarking(1);
    this->setEdgeColor(0);
    this->setAntiAliasing(1);
    for (int i = 0; i < 8; ++i) {
        fog_table[i] = (16 * i) | ((16 * i + 4) << 8) | ((16 * i + 8) << 16) | ((16 * i + 12) << 24);
    }
    this->setFog(FALSE);
    this->setFog(TRUE, GX_FOGSLOPE_0x2000, 0x5800);
    this->setFogColor(0, 0);
    this->setFogTable(fog_table);
    for (int i = 0; i < 0x20; ++i) {
        toon_table[i] = GX_RGB(i, i, i);
    }
    G3X_SetShading(GX_SHADING_HIGHLIGHT);
    G3X_SetToonTable(toon_table);
    NNS_G3dGeViewPort(0, 0, GX_LCD_SIZE_X - 1, GX_LCD_SIZE_Y - 1);
    Shadow::Initialize(8);
    NNS_G3dGeUseFastDma(0);
    return TRUE;
}

void C3DDevice::setClearColor(GXRgb color, u8 alpha, BOOL fog)
{
    this->clear.alpha = alpha;
    this->clear.color = color;
    this->clear.fog = fog;
    G3X_SetClearColor(this->clear.color, this->clear.alpha, 0x7fff, 63, fog);
}

void C3DDevice::setAntiAliasing(BOOL enable)
{
    this->antiAliasing = enable;
    if (enable) {
        G3X_AntiAlias(TRUE);
        return;
    }
    G3X_AntiAlias(FALSE);
}

void C3DDevice::setEdgeMarking(BOOL enable)
{
    this->edgeMarking = enable;
    if (enable) {
        G3X_EdgeMarking(TRUE);
        return;
    }
    G3X_EdgeMarking(FALSE);
}

void C3DDevice::setEdgeColor(GXRgb edge_color)
{
    for (int i = 0; i < 8; ++i) {
        this->edgeColorTable[i] = edge_color;
    }
    G3X_SetEdgeColorTable(this->edgeColorTable);
}

void C3DDevice::setFog(BOOL enable)
{
    this->fog.enable = enable;
    G3X_SetFog(this->fog.enable, (GXFogBlend)(this->fog).blend, (GXFogSlope)(this->fog).slope, (int)(this->fog).offset);
}

void C3DDevice::setFog(BOOL color, GXFogSlope slope, u16 offset)
{
    if (color) {
        this->fog.blend = GX_FOGBLEND_COLOR_ALPHA;
    } else {
        this->fog.blend = GX_FOGBLEND_ALPHA;
    }
    this->fog.slope = slope;
    if (0x7fff < offset) {
        offset = 0x7fff;
    }
    this->fog.offset = offset;
    if (this->fog.enable) {
        this->setFog(1);
    }
}

void C3DDevice::setFogColor(GXRgb color, u8 alpha)
{
    this->fog.color = color;
    this->fog.alpha = alpha;
    G3X_SetFogColor(color, alpha);
}

void C3DDevice::setFogTable(u32 *fog_table)
{
    if (!fog_table) return;
    MIi_CpuCopyFast(fog_table, this->fog.table, sizeof(this->fog.table));
    G3X_SetFogTable(fog_table);
}

void C3DDevice::reset()
{
    G3X_ClearFifo();
    G3X_Reset();
    G3X_ResetMtxStack();
}

void C3DDevice::finishFrame()
{
    MI_WaitDma(GX_GetDefaultDMA());
    if (G3X_IsLineBufferUnderflow()) {
        G3X_ResetLineBufferUnderflow();
    }
    if (G3X_IsListRamOverflow()) {
        G3X_ResetListRamOverflow();
    }
    s32 overflow = 0;
    s32 res = G3X_IsMtxStackOverflow(&overflow);
    if (res == 0 && overflow) {
        G3X_ResetMtxStackOverflow();
    }
    NNS_G3dGeFlushBuffer();
    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

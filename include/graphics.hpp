#ifndef IE3OGRES_GRAPHICS_H
#define IE3OGRES_GRAPHICS_H

#pragma once

#include <nitro.h>

#include "archive.hpp"

typedef enum {
    ENGINE_MAIN = 0,
    ENGINE_SUB = 1
} EngineSelect;

typedef struct {
    u8 enable;
    u8 dirty;
} PulseFlags;

namespace Graphics {

void ResetBGPulse(EngineSelect engine);
void StopBGPulse(EngineSelect engine);
void SetBGPalettePulse(EngineSelect engine, int plttIdx, BOOL flag);
void ApplyBGPalettePulse(EngineSelect engine);
void SetBGPaletteDirect(EngineSelect engine, int plttIdx, int clrIdx);
void LoadMainBGPalette(void);
void LoadSubBGPalette(void);
void LoadBGPalette(EngineSelect engine);
void LoadTempPaletteFromPac(void *imagePac, EngineSelect engine, int plttIdx);
void LoadTempPalette(u16 *pltt, EngineSelect engine, int plttIdx);

} /* namespace Graphics */

#endif //IE3OGRES_GRAPHICS_H

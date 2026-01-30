#ifndef IE3OGRES_GRAPHICS_H
#define IE3OGRES_GRAPHICS_H

#pragma once

#include <nitro.h>

#include "allocator.hpp"
#include "filesystem.hpp"
#include "archive.hpp"

typedef enum {
    ENGINE_MAIN,
    ENGINE_SUB,
} EngineSelect;

typedef enum {
    CHAR_FORMAT_16 = 16,
    CHAR_FORMAT_256 = 256,
} CharFormat;

typedef struct {
    u8 enable;
    u8 dirty;
} PulseFlags;

typedef enum {
    FADE_NONE,
    FADE_FROM_BLACK,
    FADE_TO_BLACK,
    FADE_FROM_WHITE,
    FADE_TO_WHITE,
} ScreenFadeType;

typedef struct {
    ScreenFadeType type;
    s16 brightness;
    s16 delta;
    u16 unk8;
    u16 unkA;
} ScreenFade;

/* 0x0209a110 */ extern int gDeltaTime;

/* 0x0209a144 */ extern SFileData gDebugFont;

/* 0x0209a100 */ extern PulseFlags gBGPulseFlags[2];
/* 0x0209a1e0 */ extern u8 gBGPulsePaletteEnable[2][16];
/* 0x0209a0ec */ extern u8 gBGPulsePhase[2];
/* 0x0209b220 */ extern GXBGStdPlttData gBGPalettesTemp[2];
/* 0x0209b620 */ extern GXBGStdPlttData gBGPalettesFinal[2];

/* 0x02099f08 */ extern u16 gScreenBrightness[2];
/* 0x02099f3c */ extern BOOL gUpdateBrightness;

/* 0x0209a160 */ extern ScreenFade gScreenFades[2];

/* 0x020a6c40 */ extern u16 gMainScreen0[1024];
/* 0x020a7440 */ extern u16 gMainScreen1[1024];
/* 0x020a7c40 */ extern u16 gMainScreen2[1024];
/* 0x020a8440 */ extern u16 gSubScreen0[1024];
/* 0x020a8c40 */ extern u16 gSubScreen1[1024];
/* 0x020a9440 */ extern u16 gSubScreen2[1024];

namespace Graphics {

#define PALETTE_PULSE_CYCLE 32
#define PALETTE_PULSE_SHIFT 5
#define PALETTE_PULSE_MAX (1 << PALETTE_PULSE_SHIFT)
#define PALETTE_PULSE_AMPLITUDE 9

static inline void SetPulseFlags(EngineSelect engine, int enable, int dirty) {
    PulseFlags *pulseFlag = &gBGPulseFlags[engine];
    pulseFlag->enable = enable;
    pulseFlag->dirty = dirty;
}
static inline void SetPulseFlagEnable(EngineSelect engine, int enable) {
    PulseFlags *pulseFlag = &gBGPulseFlags[engine];
    pulseFlag->enable = enable;
}
static inline void SetPulseFlagDirty(EngineSelect engine, int dirty) {
    PulseFlags *pulseFlag = &gBGPulseFlags[engine];
    pulseFlag->dirty = dirty;
}

void ResetBGPulse(EngineSelect engine);
void StopBGPulse(EngineSelect engine);
void SetBGPalettePulse(EngineSelect engine, int plttIdx, BOOL flag);
void ApplyBGPalettePulse(EngineSelect engine);

void SetBGPaletteDirect(EngineSelect engine, int plttIdx, int clrIdx, GXRgb color);

void LoadBGPaletteMain(void);
void LoadBGPaletteSub(void);
void LoadBGPalette(EngineSelect engine);
void LoadTempPaletteFromPac(void *data, EngineSelect engine, int plttIdx);
void LoadTempPalette(GXBGPltt16 *pltt, EngineSelect engine, int plttIdx);

void SetScreenBrightness(u16 fadeMask, int value);

void ResetScreenFades(void);
void ResetScreenFade(EngineSelect engine);

void BlackOutMain(void);
void BlackOutSub(void);
void BlackOutScreens(void);
void BlackOutScreen(EngineSelect engine);

void WhiteOutMain(void);
void WhiteOutSub(void);
void WhiteOutScreens(void);
void WhiteOutScreen(EngineSelect engine);

void FadeInMain(s32 ticks);
void FadeInSub(s32 ticks);
void FadeInScreens(s32 ticks);
void FadeInScreen(EngineSelect engine, s32 ticks);

void FadeMainBlack(s32 ticks);
void FadeSubBlack(s32 ticks);
void FadeScreensBlack(s32 ticks);
void FadeScreenBlack(EngineSelect engine, s32 ticks);

void FadeMainWhite(s32 ticks);
void FadeSubWhite(s32 ticks);
void FadeScreensWhite(s32 ticks);
void FadeScreenWhite(EngineSelect engine, s32 ticks);

BOOL IsMainFading(void);
BOOL IsSubFading(void);
BOOL IsAnyScreenFading(void);
BOOL IsScreenFading(EngineSelect engine);

void UpdateScreenFade(EngineSelect engine);

BOOL IsMainBrightAdjusted(void);
BOOL IsSubBrightAdjusted(void);
BOOL IsAnyScreenBrightAdjusted(void);
BOOL IsScreenBrightAdjusted(EngineSelect engine);

int AdjustTilemapIndices(u16 *screen, u32 size, int tileIdx, int plttIdx);
int SetupTilemap(void *data, int tileIdx, int plttIdx);

void ScreenCopy(int x, int y, int width, int height, u16 *src, u16 *dst);
void ScreenFill(int x, int y, int width, int height, u16 data, u16 *dst);

u32 LoadBGXCharMain(int bg, void *data, u32 offset);
u32 LoadBGXCharSub(int bg, void *data, u32 offset);

void ClearBGXMain(int bg, CharFormat charFmt);
void ClearBGXSub(int bg, CharFormat charFmt);

} /* namespace Graphics */

#endif //IE3OGRES_GRAPHICS_H

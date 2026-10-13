#include "graphics.hpp"

namespace Graphics {

BOOL ov16_02118490[2] = {TRUE, TRUE};

// MATCH: Useless temporary permuter variable
void ResetBGPulse(EngineSelect engine)
{
    int perm_var_2 = engine;
    
    gBGPulsePhase[engine] = 0;
    SetPulseFlags(engine, 0, 0);
    
    MI_CpuClearFast(&gBGPulsePaletteEnable[engine], sizeof(gBGPulsePaletteEnable[engine]));
    DC_FlushRange(&gBGPulsePaletteEnable[perm_var_2], sizeof(gBGPulsePaletteEnable[engine]));
    
    MI_CpuCopyFast(&gBGPalettesTemp[engine], &gBGPalettesFinal[engine], sizeof(gBGPalettesFinal[engine]));
    DC_FlushRange(&gBGPalettesFinal[perm_var_2], sizeof(gBGPalettesFinal[engine]));
}

void StopBGPulse(EngineSelect engine)
{
    ResetBGPulse(engine);
}

#pragma opt_rotateloops off
// MATCH: Useless temporary permuter variable
void SetBGPalettePulse(EngineSelect engine, int plttIdx, BOOL flag)
{
    int perm_var_2 = engine;
    
    gBGPulsePaletteEnable[engine][plttIdx] = flag;

    if (!flag)
    {
        MI_CpuCopyFast(&gBGPalettesTemp[engine].pltt16[plttIdx],
                       &gBGPalettesFinal[engine].pltt16[plttIdx],
                       sizeof(gBGPalettesFinal[engine].pltt16[plttIdx]));
        DC_FlushRange(&gBGPalettesFinal[perm_var_2].pltt16[plttIdx], sizeof(gBGPalettesFinal[engine].pltt16[plttIdx]));

        BOOL pulse = FALSE;
        u8 *BGPulsePaletteEnable = gBGPulsePaletteEnable[engine];
        for (int i = 0; i < (int)sizeof(gBGPulsePaletteEnable[engine]); i++, BGPulsePaletteEnable++) {
            if (*BGPulsePaletteEnable) {
                pulse = TRUE;
                break;
            }
        }
        SetPulseFlagEnable(engine, pulse);
    }
    else
    {
        SetPulseFlagEnable(engine, TRUE);
    }
    
    SetPulseFlagDirty(engine, TRUE);
}
#pragma opt_rotateloops reset

#pragma opt_rotateloops off
void ApplyBGPalettePulse(EngineSelect engine) {
    GXRgb *dst;
    GXRgb *src;
    u8 *enabled;
    
    if (!gBGPulseFlags[engine].enable) return;

    int select = engine;
    u8 phase = (gBGPulsePhase[select] + gDeltaTime) & (PALETTE_PULSE_CYCLE - 1);
    s32 brightness = (FX_SinIdx(phase * (65536 / PALETTE_PULSE_CYCLE)) * PALETTE_PULSE_AMPLITUDE) /
                     (FX32_ONE) +
                     (PALETTE_PULSE_MAX - PALETTE_PULSE_AMPLITUDE);
    gBGPulsePhase[engine] = phase;

    enabled = gBGPulsePaletteEnable[engine];
    dst = gBGPalettesFinal[engine].pltt256.rgb;
    src = gBGPalettesTemp[engine].pltt256.rgb;

    for (int i = 0; i < 16; ++i, enabled++) {
        if (!*enabled) {
            dst += 16;
            src += 16;
        } else {
            for (int j = 0; j < 16; ++j) {
                GXRgb c = *src;
                
                int r;
                int g;
                int b;
                g = (c >> GX_RGB_G_SHIFT) & 0x1F;
                g = (g * brightness) >> PALETTE_PULSE_SHIFT;
                b = (c >> GX_RGB_B_SHIFT) & 0x1F;
                b = (b * brightness) >> PALETTE_PULSE_SHIFT;
                r = (c >> GX_RGB_R_SHIFT) & 0x1F;
                r = (r * brightness) >> PALETTE_PULSE_SHIFT;

                *dst = (
                    (b << GX_RGB_B_SHIFT) |
                    (g << GX_RGB_G_SHIFT) |
                    (r << 0)
                );

                dst++;
                src++;
            }
        }
    }

    DC_FlushRange(&gBGPalettesFinal[select], sizeof(gBGPalettesFinal[select]));
}
#pragma opt_rotateloops reset

void SetBGPaletteDirect(EngineSelect engine, int plttIdx, int clrIdx, GXRgb color)
{
    gBGPalettesTemp[engine].pltt16[plttIdx].rgb[clrIdx] = color;
    gBGPalettesFinal[engine].pltt16[plttIdx].rgb[clrIdx] = color;
}

void LoadBGPaletteMain(void)
{
    GX_LoadBGPltt(&gBGPalettesFinal[ENGINE_MAIN], 0, sizeof(gBGPalettesFinal[ENGINE_MAIN]));
}

void LoadBGPaletteSub(void)
{
    GXS_LoadBGPltt(&gBGPalettesFinal[ENGINE_SUB], 0, sizeof(gBGPalettesFinal[ENGINE_SUB]));
}

void LoadBGPalette(EngineSelect engine)
{
    if ((gBGPulseFlags[engine].enable == FALSE) && (gBGPulseFlags[engine].dirty == FALSE)) {
        return;
    }

    if (engine == ENGINE_MAIN) {
        LoadBGPaletteMain();
    } else {
        LoadBGPaletteSub();
    }

    gBGPulseFlags[engine].dirty = FALSE;
}

void LoadTempPaletteFromPac(void *data, EngineSelect engine, int plttIdx)
{
    if (!data) {
        return;
    }
    if (PAC_PSC_GetPaletteSize(data) != sizeof(GXBGPltt16)) {
        return;
    }

    LoadTempPalette(static_cast<GXBGPltt16 *>(PAC_PSC_GetPalettePtr(data)), engine, plttIdx);
}

void LoadTempPalette(GXBGPltt16 *pltt, EngineSelect engine, int plttIdx)
{
    if (!pltt) {
        return;
    }

    GXBGPltt16 *temp = &gBGPalettesTemp[engine].pltt16[plttIdx];
    GXBGPltt16 *final = &gBGPalettesFinal[engine].pltt16[plttIdx];
    MI_CpuCopy8(pltt, temp, sizeof(*temp));
    MI_CpuCopy8(pltt, final, sizeof(*final));

    if ((plttIdx == 0) && (gDebugFont.data != NULL)) {
        void *src = PAC_PSC_GetPalettePtr(gDebugFont.data);
        MI_CpuCopy8(src, temp, 8);
        MI_CpuCopy8(src, final, 8);
    }

    DC_FlushRange(temp, sizeof(*temp));
    DC_FlushRange(final, sizeof(*final));
}

// TODO: set up inlines functions for the bitwise operations
void SetScreenBrightness(u16 fadeMask, int value)
{
    for (int i = 0; i < 2; i++) {
        if (fadeMask & (1 << i)) {
            u16 *pBrightness;
            if (i == ENGINE_MAIN) {
                pBrightness = &gScreenBrightness[ENGINE_MAIN];
            } else { // ENGINE_SUB
                pBrightness = &gScreenBrightness[ENGINE_SUB];
            }

            if (value == 0) {
                *pBrightness = 0;
            } else if (value > 0) {
                *pBrightness = value | 0x4000;
            } else {
                *pBrightness = -value | 0x8000;
            }
        }
    }
    
    if (fadeMask & 0x8000) {
        gUpdateBrightness = TRUE;
    }
}

void ResetScreenFades(void)
{
    ResetScreenFade(ENGINE_MAIN);
    ResetScreenFade(ENGINE_SUB);
}

void ResetScreenFade(EngineSelect engine)
{
    ScreenFade *fade = &gScreenFades[engine];
    
    fade->type = FADE_NONE;
    fade->brightness = 0;
    fade->delta = 32;
    fade->unk8 = 0;

    SetScreenBrightness((1 << engine) | 0x8000, 0);
}

void BlackOutMain(void)
{
    BlackOutScreen(ENGINE_MAIN);
}

void BlackOutSub(void)
{
    BlackOutScreen(ENGINE_SUB);
}

void BlackOutScreens(void)
{
    BlackOutScreen(ENGINE_MAIN);
    BlackOutScreen(ENGINE_SUB);
}

void BlackOutScreen(EngineSelect engine)
{
    ScreenFade *fade = &gScreenFades[engine];
    
    fade->brightness = -256;
    fade->type = FADE_NONE;
    fade->unk8 = 0;

    SetScreenBrightness(1 << engine, -16);

    if (engine == ENGINE_MAIN) {
        reg_GX_MASTER_BRIGHT = gScreenBrightness[ENGINE_MAIN];
    } else {
        reg_GXS_DB_MASTER_BRIGHT = gScreenBrightness[ENGINE_SUB];
    }
}

void WhiteOutMain(void)
{
    WhiteOutScreen(ENGINE_MAIN);
}

void WhiteOutSub(void)
{
    WhiteOutScreen(ENGINE_SUB);
}

void WhiteOutScreens(void)
{
    WhiteOutScreen(ENGINE_MAIN);
    WhiteOutScreen(ENGINE_SUB);
}

void WhiteOutScreen(EngineSelect engine)
{
    ScreenFade *fade = &gScreenFades[engine];
    
    fade->brightness = 256;
    fade->type = FADE_NONE;
    fade->unk8 = 0;

    SetScreenBrightness(1 << engine, 16);

    if (engine == ENGINE_MAIN) {
        reg_GX_MASTER_BRIGHT = gScreenBrightness[ENGINE_MAIN];
    } else {
        reg_GXS_DB_MASTER_BRIGHT = gScreenBrightness[ENGINE_SUB];
    }
}

void FadeInMain(s32 ticks)
{
    FadeInScreen(ENGINE_MAIN, ticks);
}

void FadeInSub(s32 ticks)
{
    FadeInScreen(ENGINE_SUB, ticks);
}

void FadeInScreens(s32 ticks)
{
    FadeInScreen(ENGINE_MAIN, ticks);
    FadeInScreen(ENGINE_SUB, ticks);
}

void FadeInScreen(EngineSelect engine, s32 ticks)
{
    ScreenFade *fade = &gScreenFades[engine];

    if (fade->brightness < 0) {
        fade->type = FADE_FROM_BLACK;
    } else if (fade->brightness > 0) {
        fade->type = FADE_FROM_WHITE;
    } else {
        fade->type = FADE_NONE;
    }

    if (ticks < 1) {
        ticks = 1;
    }
    if (ticks > 128) {
        ticks = 128;
    }

    fade->delta = 256 / ticks;
    fade->unk8 = 1;
}

void FadeMainBlack(s32 ticks)
{
    FadeScreenBlack(ENGINE_MAIN, ticks);
}

void FadeSubBlack(s32 ticks)
{
    FadeScreenBlack(ENGINE_SUB, ticks);
}

void FadeScreensBlack(s32 ticks)
{
    FadeScreenBlack(ENGINE_MAIN, ticks);
    FadeScreenBlack(ENGINE_SUB, ticks);
}

void FadeScreenBlack(EngineSelect engine, s32 ticks)
{
    ScreenFade *fade = &gScreenFades[engine];

    if (fade->brightness > -256) {
        fade->type = FADE_TO_BLACK;
    } else {
        fade->type = FADE_NONE;
    }

    if (ticks < 1) {
        ticks = 1;
    }
    if (ticks > 128) {
        ticks = 128;
    }

    fade->delta = 256 / ticks;
    fade->unk8 = 0;
}

void FadeMainWhite(s32 ticks)
{
    FadeScreenWhite(ENGINE_MAIN, ticks);
}

void FadeSubWhite(s32 ticks)
{
    FadeScreenWhite(ENGINE_SUB, ticks);
}

void FadeScreensWhite(s32 ticks)
{
    FadeScreenWhite(ENGINE_MAIN, ticks);
    FadeScreenWhite(ENGINE_SUB, ticks);
}

void FadeScreenWhite(EngineSelect engine, s32 ticks)
{
    ScreenFade *fade = &gScreenFades[engine];

    if (fade->brightness < 256) {
        fade->type = FADE_TO_WHITE;
    } else {
        fade->type = FADE_NONE;
    }

    if (ticks < 1) {
        ticks = 1;
    }
    if (ticks > 128) {
        ticks = 128;
    }

    fade->delta = 256 / ticks;
    fade->unk8 = 0;
}

BOOL IsMainFading(void)
{
    return IsScreenFading(ENGINE_MAIN);
}

BOOL IsSubFading(void)
{
    return IsScreenFading(ENGINE_SUB);
}

BOOL IsAnyScreenFading(void)
{
    BOOL fading = FALSE;

    if ((IsScreenFading(ENGINE_MAIN)) || IsScreenFading(ENGINE_SUB)) {
        fading = TRUE;
    }

    return fading;
}

BOOL IsScreenFading(EngineSelect engine)
{
    ScreenFade *fade = &gScreenFades[engine];

    return fade->type != FALSE;
}

void UpdateScreenFade(EngineSelect engine)
{
    if (!ov16_02118490[engine]) {
        return;
    }
    ov16_02118490[engine] = FALSE;
    
    s16 new_brightness;
    ScreenFade *fade = &gScreenFades[engine];
    
    if (fade->unk8) {
        fade->unk8--;
        return;
    }

    new_brightness = fade->brightness;
    switch (fade->type) {
        case FADE_NONE:
            break;
        case FADE_FROM_BLACK:
            new_brightness += fade->delta;
            if (new_brightness > 0) {
                new_brightness = 0;
                fade->type = FADE_NONE;
            }
            break;
        case FADE_TO_BLACK:
            new_brightness -= fade->delta;
            if (new_brightness < -256) {
                new_brightness = -256;
                fade->type = FADE_NONE;
            }
            break;
        case FADE_FROM_WHITE:
            new_brightness -= fade->delta;
            if (new_brightness < 0) {
                new_brightness = 0;
                fade->type = FADE_NONE;
            }
            break;
        case FADE_TO_WHITE:
            new_brightness += fade->delta;
            if (new_brightness > 256) {
                new_brightness = 256;
                fade->type = FADE_NONE;
            }
            break;
    }
    
    if (fade->brightness / 16 != new_brightness / 16) {
        SetScreenBrightness(1 << engine, (s32)new_brightness / 16);
    }
    
    fade->brightness = new_brightness;
}

BOOL IsMainBrightAdjusted(void)
{
    return IsScreenBrightAdjusted(ENGINE_MAIN);
}

BOOL IsSubBrightAdjusted(void)
{
    return IsScreenBrightAdjusted(ENGINE_SUB);
}

BOOL IsAnyScreenBrightAdjusted(void)
{
    BOOL ajusted = FALSE;

    if ((IsScreenBrightAdjusted(ENGINE_MAIN)) || IsScreenBrightAdjusted(ENGINE_SUB)) {
        ajusted = TRUE;
    }

    return ajusted;
}
BOOL IsScreenBrightAdjusted(EngineSelect engine)
{
    ScreenFade *fade = &gScreenFades[engine];

    return fade->brightness != FALSE;
}

int SetupScreen(void *scr, u32 size, int tileIdx, int plttIdx)
{
    u16 *screen = reinterpret_cast<u16 *>(scr);
    u16 *begin;
    int beginSize;
    s32 charNum;
    s32 maxIdx;
    
    maxIdx = 0;
    begin = screen;
    beginSize = size;
    if ((!screen) || (!size)) {
        return tileIdx;
    }

    while (size != 0)
    {
        charNum = tileIdx + (*screen & 0x03FF);

        if (plttIdx >= 0) {
            *screen = (*screen & 0xFFFF0C00) | (charNum | (plttIdx << 12));
        } else {
            *screen = charNum | (*screen & 0xFFFFFC00);
        }

        if (maxIdx < charNum) {
            maxIdx = charNum;
        }

        screen++;
        size -= sizeof(u16);
    }

    DC_FlushRange(begin, beginSize);
    return maxIdx;
}

int SetupScreen(void *data, int tileIdx, int plttIdx)
{
    u32 size = tileIdx;
    
    if (data) {
        size = PAC_PSC_GetScreenSize(data);
        if (size) {
            return SetupScreen(static_cast<u16 *>(PAC_PSC_GetScreenPtr(data)), size, tileIdx, plttIdx);
        }
    }

    return tileIdx;
}

void ScreenCopy(int x, int y, int width, int height, u16 *src, u16 *dst)
{
    if ((!src) || (!dst)) {
        return;
    }
    
    u16 *adjusted = dst + y * 32 + x;
    
    for (int h = height; h > 0; h--) {
        dst = adjusted;
        for (int w = width; w > 0; w--) {
            *dst++ = *src++;
        }
        adjusted += 32;
    }
}

void ScreenFill(int x, int y, int width, int height, u16 data, u16 *dst)
{
    if (!dst) {
        return;
    }

    u16 *adjusted = dst + (y * 32) + x;
    
    for (int h = height; h > 0; h--) {
        dst = adjusted;
        for (int w = width; w > 0; w--) {
            *dst++ = data;
        }
        adjusted += 32;
    }
}

u32 LoadBGXCharMain(int bg, void *data, u32 offset)
{
    if (!data) {
        return offset;
    }

    void *charPtr = PAC_PSC_GetCharacterPtr(data);
    switch (bg) {
        case 0:
            GX_LoadBG0Char(charPtr, offset, PAC_PSC_GetCharacterSize(data));
            break;
        case 1:
            GX_LoadBG1Char(charPtr, offset, PAC_PSC_GetCharacterSize(data));
            break;
        case 2:
            GX_LoadBG2Char(charPtr, offset, PAC_PSC_GetCharacterSize(data));
            break;
        case 3:
            GX_LoadBG3Char(charPtr, offset, PAC_PSC_GetCharacterSize(data));
            break;
    }

    return offset + PAC_PSC_GetCharacterSize(data);
}

u32 LoadBGXCharSub(int bg, void *data, u32 offset)
{
    if (!data) {
        return offset;
    }

    void *charPtr = PAC_PSC_GetCharacterPtr(data);
    switch (bg) {
        case 0:
            GXS_LoadBG0Char(charPtr, offset, PAC_PSC_GetCharacterSize(data));
            break;
        case 1:
            GXS_LoadBG1Char(charPtr, offset, PAC_PSC_GetCharacterSize(data));
            break;
        case 2:
            GXS_LoadBG2Char(charPtr, offset, PAC_PSC_GetCharacterSize(data));
            break;
        case 3:
            GXS_LoadBG3Char(charPtr, offset, PAC_PSC_GetCharacterSize(data));
            break;
    }

    return offset + PAC_PSC_GetCharacterSize(data);
}

void ClearBGXMain(int bg, CharFormat charFmt)
{
    u32 charSize;
    void *charPtr = NULL;

    switch (bg) {
        case 0:
            charPtr = G2_GetBG0CharPtr();
            break;
        case 1:
            charPtr = G2_GetBG1CharPtr();
            break;
        case 2:
            charPtr = G2_GetBG2CharPtr();
            break;
        case 3:
            charPtr = G2_GetBG3CharPtr();
            break;
    }
    if (!charPtr) {
        return;
    }

    if (charFmt == CHAR_FORMAT_16) {
        charSize = 0x20;
    } else if (charFmt == CHAR_FORMAT_256) {
        charSize = 0x40;
    } else {
        return;
    }

    MI_CpuClearFast(charPtr, charSize);
    DC_FlushRange(charPtr, charSize);

    void *screen = gAllocator.allocate(sizeof(gMainScreen0));
    if (!screen) {
        return;
    }

    MI_CpuClearFast(screen, sizeof(gMainScreen0));
    DC_FlushRange(screen, sizeof(gMainScreen0));

    switch (bg) {
        case 0:
            GX_LoadBG0Scr(screen, 0, sizeof(gMainScreen0));
            break;
        case 1:
            GX_LoadBG1Scr(screen, 0, sizeof(gMainScreen0));
            break;
        case 2:
            GX_LoadBG2Scr(screen, 0, sizeof(gMainScreen0));
            break;
        case 3:
            GX_LoadBG3Scr(screen, 0, sizeof(gMainScreen0));
            break;
    }

    gAllocator.deallocate(screen);
}

void ClearBGXSub(int bg, CharFormat charFmt)
{
    u32 charSize;
    void *charPtr = NULL;

    switch (bg) {
        case 0:
            charPtr = G2S_GetBG0CharPtr();
            break;
        case 1:
            charPtr = G2S_GetBG1CharPtr();
            break;
        case 2:
            charPtr = G2S_GetBG2CharPtr();
            break;
        case 3:
            charPtr = G2S_GetBG3CharPtr();
            break;
    }
    if (!charPtr) {
        return;
    }

    if (charFmt == CHAR_FORMAT_16) {
        charSize = 0x20;
    } else if (charFmt == CHAR_FORMAT_256) {
        charSize = 0x40;
    } else {
        return;
    }

    MI_CpuClearFast(charPtr, charSize);
    DC_FlushRange(charPtr, charSize);

    void *screen = gAllocator.allocate(sizeof(gSubScreen0));
    if (!screen) {
        return;
    }

    MI_CpuClearFast(screen, sizeof(gSubScreen0));
    DC_FlushRange(screen, sizeof(gSubScreen0));

    switch (bg) {
        case 0:
            GXS_LoadBG0Scr(screen, 0, sizeof(gSubScreen0));
            break;
        case 1:
            GXS_LoadBG1Scr(screen, 0, sizeof(gSubScreen0));
            break;
        case 2:
            GXS_LoadBG2Scr(screen, 0, sizeof(gSubScreen0));
            break;
        case 3:
            GXS_LoadBG3Scr(screen, 0, sizeof(gSubScreen0));
            break;
    }

    gAllocator.deallocate(screen);
}

void FUN_ov16_020f1d64(void)
{
    g3DGameChar->close();
    g3DGameEffect->closeModels();
    g3DGameMap->closeModels();
    g3DGameMapObject->closeModels();
    g2DGChar->FUN_02057238();
    g3DSpriteCtrl->FUN_ov16_02116834();
    g3DPlaneCtrl->file.FUN_02059880();
    g3DVramMan->FUN_02051e50();
}

#pragma opt_rotateloops off
void FUN_ov16_020f1e14(void)
{
    for (int i = 0; i < 5; i++) {
        OS_WaitVBlankIntr();
    }
    
    g3DGameChar->setup();
    g3DGameEffect->setupModels();
    g3DGameMap->setupModels();
    g3DGameMapObject->setupModels();
    g2DGChar->FUN_02057250();
    g3DSpriteCtrl->FUN_ov16_02116848();
    g3DPlaneCtrl->file.FUN_020598ec();

    for (int i = 0; i < 5; i++) {
        OS_WaitVBlankIntr();
    }
}
#pragma opt_rotateloops reset

void FUN_ov16_020f1ee4(u32 *src, int width, int height, u32 *dst)
{
    u32 *dest = dst;
    u32 *tile;
    int i, x, y;

    for (y = height; y > 0; y--) {
        for (x = width; x > 0; x--) {
            tile = src;
            for (i = 8; i > 0; i--) {
                *dest++ = *tile;
                tile += width;
            }
            src++;
        }
        src += width * 7;
    }

    DC_FlushRange(dst, width * height * 32);
}

void FUN_ov16_020f1f5c(char *src, char *dst)
{
    while (*src != '\0')
    {
        if (((u8(*src) >= 0x81) && (u8(*src) <= 0x9F)) || ((u8(*src) >= 0xE0) && (u8(*src) <= 0xFC)))
        {
            *dst++ = *src++;
            if (*src) {
                *dst++ = *src++;
            }
        }
        else
        {
            if ((*src >= 0x30) && (*src <= 0x39)) {
                *dst++ = (*src + 0x821F) >> 8;
                *dst++ = (*src + 0x821F);
            } else if ((*src >= 0x41) && (*src <= 0x5A)) {
                *dst++ = (*src + 0x821F) >> 8;
                *dst++ = (*src + 0x821F);
            } else if ((*src >= 0x61) && (*src <= 0x7A)) {
                *dst++ = (*src + 0x8220) >> 8;
                *dst++ = (*src + 0x8220);
            } else if ((*src >= 0x20) && (*src <= 0x2F)) {
                *dst++ = unk_0208F728[*src - 32] >> 8;
                *dst++ = unk_0208F728[*src - 32];
            } else if ((*src >= 0x3A) && (*src <= 0x40)) {
                *dst++ = unk_0208F728[*src - 42] >> 8;
                *dst++ = unk_0208F728[*src - 42];
            } else if ((*src >= 0x5B) && (*src <= 0x5F)) {
                *dst++ = unk_0208F728[*src - 68] >> 8;
                *dst++ = unk_0208F728[*src - 68];
            } else if ((*src >= 0x7B) && (*src <= 0x7E)) {
                *dst++ = unk_0208F728[*src - 95] >> 8;
                *dst++ = unk_0208F728[*src - 95];
            } else {
                *dst++ = *src;
            }
            src++;
        }
    }

    *dst = '\0';
}

void ApplyFontBlankCode(char *str)
{
    while (*str != '\0')
    {
        int c = u8(str[0]);
        if (((c >= 0x81) && (c <= 0x9F)) || ((c >= 0xE0) && (c <= 0xFC))) {
            if ((c == 0x81) && (u8(str[1]) == 0x40)) {
                str[0] = gFontBlankCode >> 8;
                str[1] = gFontBlankCode;
            }
            str++;
        }
        str++;
    }
}

void DrawTextTileWithRuby(char *text, void *dest, int width, int height, int color, int rubyColor, int charSpacing, int lineSpacing, int x, int y, CFontManager::Alignment align)
{
    CFontManager::RubyBlock ruby[16];
    CFontManager::GlyphBounds bounds[256];
    char str[256];
    
    if (!text) {
        return;
    }

    int rubySize = FUN_ov16_020f24e8(text, str, ruby);

    gFont12Manager->setSpacing(charSpacing, lineSpacing + 8);
    gFont12Manager->drawTextTile4bpp(
        x,
        y + 8,
        str,
        color,
        align,
        dest,
        width,
        height,
        bounds,
        sizeof(str)
    );
    gFont12Manager->resetSpacing();

    for (int i = 0; i < rubySize; i++) {
        int idx = ruby[i].startIndex;
        int len = idx + ruby[i].length;

        int x = ((bounds[idx].x + bounds[len - 1].x + bounds[len - 1].width) / 2) - (gRubi8Manager->getTextWidth(ruby[i].text) / 2);
        int y = bounds[ruby[i].startIndex].y - 8;
        gRubi8Manager->drawTextTile4bpp(
            x,
            y,
            ruby[i].text,
            rubyColor,
            CFontManager::ALIGNEMENT_LEFT,
            dest,
            width,
            height,
            NULL,
            0
        );
    }

    DC_FlushRange(dest, width * height * 32);
}

void DrawTextTexWithRuby(char *text, sfkey_t key, int color, int rubyColor, int charSpacing, int lineSpacing, int width, int height, int x, int y, CFontManager::Alignment align)
{
    
}

} /* namespace Graphics */

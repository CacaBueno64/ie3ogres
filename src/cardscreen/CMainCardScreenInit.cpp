// clang-format off
#include "CCardScreenManager.hpp"  // for CMainCardScreenInit, gBgMenuManager, UnkStruct_ov3_020bd084

#include <cstddef>                 // for NULL

#include <nitro/gx/gx_bgcnt.h>     // for G2_GetBG1CharPtr, G2_GetBG2CharPtr, G2_GetBG3CharPtr
#include <nitro/gx/gx_load.h>      // for GX_LoadBG1Char, GX_LoadBG1Scr, GX_LoadBG2Scr, GX_LoadBG3Char, GX_LoadBG3Scr
#include <nitro/mi/memory.h>       // for MI_CpuClearFast, MI_CpuClear8
#include <nitro/os/ARM9/cache.h>   // for DC_FlushRange

#include "CBgMenuManager.hpp"      // for CBgMenuManager, gBgMenuManager
#include "archive.hpp"             // for Close, Deallocate, RequestNewRead, TryFinalize
#include "graphics.hpp"            // for gMainScreen0, gMainScreen1, gMainScreen2, LoadBGPaletteMain, LoadTempPaletteFromPac, SetupScreen, ENGINE_MAIN, gDebugFont
#include "pac.hpp"                 // for PAC_PSC_GetCharacterPtr, PAC_PSC_GetCharacterSize, PAC_PSC_GetScreenPtr, PAC_PSC_GetScreenSize
#include "init/arm9_init.hpp"      // IWYU pragma: keep
// clang-format on

void CMainCardScreenInit::initGraphics(void)
{
    MI_CpuClear8(&this->file, sizeof(this->file));
    Archive::RequestNewRead("/data_iz/pic2d/menu/sfdn_i09.pac_", &this->file);
    MI_CpuClearFast(&gMainScreen0, sizeof(gMainScreen0));
    MI_CpuClearFast(&gMainScreen2, sizeof(gMainScreen2));
    MI_CpuClearFast(&gMainScreen1, sizeof(gMainScreen1));
    DC_FlushRange(&gMainScreen0, sizeof(gMainScreen0));
    DC_FlushRange(&gMainScreen2, sizeof(gMainScreen2));
    DC_FlushRange(&gMainScreen1, sizeof(gMainScreen1));
    this->state = 1;
}

void CMainCardScreenInit::deallocateFile(void)
{
    Archive::Deallocate(&this->file);
}

#ifdef NONMATCHING
// https://decomp.me/scratch/qUjbS
void CMainCardScreenInit::displayGraphics(void)
{
    MI_CpuClearFast(G2_GetBG3CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG3CharPtr(), 0x20);
    GX_LoadBG3Scr(&gMainScreen0, 0, sizeof(gMainScreen0));

    void *font = gDebugFont.data;
    GX_LoadBG3Char(PAC_PSC_GetCharacterPtr(font), 0, PAC_PSC_GetCharacterSize(font));

    MI_CpuClearFast(G2_GetBG1CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG1CharPtr(), 0x20);
    GX_LoadBG1Scr(&gMainScreen1, 0, sizeof(gMainScreen1));

    void *img = this->file.data;
    if (img != NULL) {
        Graphics::SetupScreen(PAC_PSC_GetScreenPtr(img), PAC_PSC_GetScreenSize(img), 1, 1);
        Graphics::LoadTempPaletteFromPac(img, ENGINE_MAIN, 1);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(img), 0x20, PAC_PSC_GetCharacterSize(img));
    }

    MI_CpuClearFast(G2_GetBG2CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG2CharPtr(), 0x20);
    GX_LoadBG2Scr(&gMainScreen2, 0, sizeof(gMainScreen2));

    Graphics::LoadBGPaletteMain();
}
#else  // NONMATCHING

// clang-format off
asm void CMainCardScreenInit::displayGraphics(void) {
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	ldr r0, =gMainScreen0
	mov r1, r5
	mov r6, #0x800
	mov r2, r6
	bl GX_LoadBG3Scr
	ldr r0, =gDebugFont
	mov r1, r5
	ldr r3, [r0]
	ldr r2, [r3, #0x18]
	ldr r0, [r3, #0x14]
	add r0, r3, r0
	bl GX_LoadBG3Char
	bl G2_GetBG1CharPtr
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r2, r6
	ldr r0, =gMainScreen1
	mov r1, r5
	bl GX_LoadBG1Scr
	ldr r7, [r7, #0xc]
	cmp r7, #0
	beq _020BD034
	ldr r0, [r7, #0xc]
	mov r6, #1
	ldr r1, [r7, #0x10]
	mov r3, r6
	add r0, r7, r0
	add r2, r5, #1
	bl _ZN8Graphics11SetupScreenEPtmii
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x18]
	mov r1, r4
	add r0, r7, r0
	bl GX_LoadBG1Char
_020BD034:
	bl G2_GetBG2CharPtr
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r4
	bl DC_FlushRange
	ldr r0, =gMainScreen2
	mov r1, r5
	mov r2, #0x800
	bl GX_LoadBG2Scr
	bl _ZN8Graphics17LoadBGPaletteMainEv
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif // NONMATCHING

void CMainCardScreenInit::FUN_ov3_020bd084(void)
{
    SBgMenuElementInit init;
    void *img = this->file.data;

    if (!img) return;
    void *pScreen = PAC_PSC_GetScreenPtr(img);

    init.x = 4;
    init.y = 8;
    init.w = 0x18;
    init.h = 8;
    init.boundX = 0;
    init.boundY = 0;
    init.boundW = 0;
    init.boundH = 0;
    init.palette = 0;
    init.screen = pScreen;

    gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 1, 1, &init, 0, 0, 0);
}

void CMainCardScreenInit::init(void)
{
    this->state = 0;
    gBgMenuManager.init(ENGINE_MAIN);
    this->initGraphics();
}

void CMainCardScreenInit::update(int arg)
{
    switch (this->state) {
    case 1:
        if (Archive::TryFinalize(&this->file, 1)) {
            this->state = 2;
        }
        break;
    case 3:
        this->state = 4;
        this->FUN_ov3_020bd084();
        this->fadeIn();
    case 4:
        gBgMenuManager.updateGraphics(ENGINE_MAIN);
        break;
    }
}

void CMainCardScreenInit::updateLate(void)
{
    switch (this->state) {
    case 2:
        this->displayGraphics();
        this->state = 3;
        break;
    case 4:
        gBgMenuManager.draw(ENGINE_MAIN);
        break;
    }
}

void CMainCardScreenInit::close(void)
{
    gBgMenuManager.finalize(ENGINE_MAIN);
    Archive::Close(&this->file, 1);
    this->deallocateFile();
}

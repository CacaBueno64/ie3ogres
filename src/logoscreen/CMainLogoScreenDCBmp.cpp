// clang-format off
#include "CLogoScreenManager.hpp"  // for CMainLogoScreenDCBmp, FUN_ov16_020f2a18, FUN_ov16_020f2a74, FUN_ov16_020f2aa4, FUN_ov16_020f2ab4

#include <nitro/gx/gx_vramcnt.h>   // for GX_ResetBankForBG
#include <nitro/pad/common/pad.h>  // for PAD_BUTTON_A
#include <nitro/spi/ARM9/tp.h>     // for TPData
#include <nitro/types.h>           // for FALSE, TRUE, u16, BOOL

#include "CScreenManager.hpp"      // for CScreenManager
#include "CConfig.hpp"             // for CConfig, gConfig
#include "gamemodes.hpp"           // for SetNextMode, GAME_MODE_TITLE
#include "movieplayer.hpp"         // for MoviePlayer, gMoviePlayer
#include "init/arm9_init.hpp"      // IWYU pragma: keep
// clang-format on

void CMainLogoScreenDCBmp::updateKeys(u16 pressed, u16 held)
{
    if ((this->unk_10 < 30) || (this->tpTouch)) {
        return;
    }

    if (pressed & PAD_BUTTON_A) {
        gMoviePlayer.FUN_0202e958();
    }
}

void CMainLogoScreenDCBmp::updateTP(TPData *tp)
{
    if (this->unk_10 < 30) {
        return;
    }
    if (tp->touch == TRUE) {
        if (tp->validity == FALSE) {
            this->tpTouch = TRUE;
        }
        return;
    }
    if (this->tpTouch) {
        gMoviePlayer.FUN_0202e958();
    }
    this->tpTouch = FALSE;
}

void CMainLogoScreenDCBmp::init(void)
{
    this->unk_8 = 1;
    this->tpTouch = FALSE;
    this->unk_10 = 0;

    this->manager->endGraphics(0);

    switch (gConfig.getParam("IZ_TYPE")) {
    default:
    case 0:
        FUN_ov16_020f2a18(&this->movieInfo, "op00f");
        break;
    case 1:
        FUN_ov16_020f2a18(&this->movieInfo, "op00b");
        break;
    }
}

void CMainLogoScreenDCBmp::update(BOOL param1)
{
    this->unk_10++;
    if ((this->unk_8 != 1) && (this->unk_8 != 2)) {
        return;
    }
    if (!FUN_ov16_020f2aa4()) {
        FUN_ov16_020f2a74(&this->movieInfo);
        this->unk_8 = 0;
        SetNextMode(GAME_MODE_TITLE);
    }
}

void CMainLogoScreenDCBmp::updateLate(void)
{
    FUN_ov16_020f2ab4();
}

void CMainLogoScreenDCBmp::close(void)
{
    GX_ResetBankForBG();
    this->manager->startGraphics(0);
}

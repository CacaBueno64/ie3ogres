#include "logoscreen.hpp"

const ov5_Init ov5_020BD930 = ov5_Init(0x4e2000, 0x0000EA3C, 0x800, 0x00009CCD, 0x2000, 0x840800);

void CMainLogoScreenDCBmp::updateKeys(u16 pressed, u16 held)
{
    if ((this->unk_10 < 30) || (this->tpTouch)) {
        return;
    }
    
    if (pressed & PAD_BUTTON_A) {
        gMovie.FUN_0202e958();
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
        gMovie.FUN_0202e958();
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

void CMainLogoScreenDCBmp::update(int arg)
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

void CMainLogoScreenDCBmp::updateLate(void) { FUN_ov16_020f2ab4(); }

void CMainLogoScreenDCBmp::close(void)
{
    GX_ResetBankForBG();
    this->manager->startGraphics(0);
}

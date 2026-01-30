#include "endrollscreen.hpp"

const ov6_Init_020BDE10 ov6_020BDE10 = ov6_Init_020BDE10(0x800, 0xea3c, 0x4e2000, 0x9ccd, 0x2000, 0x840800);

void CMainEndrollScreenInit::updateKeys(u16 pressed, u16 held)
{
    if (this->unk1F4)
    {
        if (pressed & PAD_BUTTON_A) {
            this->returnToTitle();
        }
    }
    else if (this->state == STATE_FIN)
    {
        if (pressed & PAD_BUTTON_A) {
            this->returnToOverworld();
        }
    }
}

void CMainEndrollScreenInit::updateTP(TPData *tp)
{
    if (this->unk1F4)
    {
        if ((this->state == STATE_FIN) && (tp->touch == TP_TOUCH_ON)) {
            this->returnToTitle();
        }
    }
    else if ((this->state == STATE_FIN) && (tp->touch == TP_TOUCH_ON))
    {
        this->returnToOverworld();
    }
}

void CMainEndrollScreenInit::loadFiles(void)
{
    char path[256];

    MI_CpuClear8(path, sizeof(path));

    for (int i = 0; i < this->CREDIT_IMAGE_COUNT - 1; i++) {
        switch (gConfig.getParam("IZ_TYPE")) {
            default:
            case 0:
                sprintf(path, "/data_iz/pic2d/ending/eddf%02d.pac_", i + 1);
                break;
            case 1:
                sprintf(path, "/data_iz/pic2d/ending/eddb%02d.pac_", i + 1);
                break;
        }
        Archive::ReadNewUncompress(path, &this->creditsImages[i]);
    }
}

void CMainEndrollScreenInit::freeFile(int idx)
{
    if ((this->creditsImages[idx].data) && (this->creditsImages[idx].unk_9)) {
        gAllocator.deallocate(this->creditsImages[idx].data);
        this->creditsImages[idx].data = NULL;
    }
}

void CMainEndrollScreenInit::freeFiles(void)
{
    for (int i = 0; i < this->CREDIT_IMAGE_COUNT + 1; i++) {
        this->freeFile(i);
    }
}

void CMainEndrollScreenInit::displayCredits(int idx, CreditBG bg)
{
    void *data = this->creditsImages[idx].data;
    
    if (data) {
        if (bg == CREDIT_BG_A)
        {
            Graphics::SetupTilemap(data, 0, 1);
            GX_LoadBG2Scr(Archive::ImagePAC::GetScreenPtr(data), 0, Archive::ImagePAC::GetScreenSize(data));
            GX_LoadBG2Char(Archive::ImagePAC::GetCharacterPtr(data), 0, Archive::ImagePAC::GetCharacterSize(data));
            Graphics::LoadTempPaletteFromPac(data, ENGINE_MAIN, 1);
            GX_LoadBGPltt(Archive::ImagePAC::GetPalettePtr(data), sizeof(GXBGPltt16) * 1, Archive::ImagePAC::GetPaletteSize(data));
        }
        else
        {
            Graphics::SetupTilemap(data, 0, 2);
            GX_LoadBG1Scr(Archive::ImagePAC::GetScreenPtr(data), 0, Archive::ImagePAC::GetScreenSize(data));
            GX_LoadBG1Char(Archive::ImagePAC::GetCharacterPtr(data), 0, Archive::ImagePAC::GetCharacterSize(data));
            Graphics::LoadTempPaletteFromPac(data, ENGINE_MAIN, 2);
            GX_LoadBGPltt(Archive::ImagePAC::GetPalettePtr(data), sizeof(GXBGPltt16) * 2, Archive::ImagePAC::GetPaletteSize(data));
        }
    }
}

void CMainEndrollScreenInit::returnToOverworld(void)
{
    Graphics::FadeScreensBlack(6);
    SetNextMode(GAME_MODE_ADVENTURE);
}

void CMainEndrollScreenInit::returnToTitle(void)
{
    switch (gConfig.getParam("IZ_TYPE")) {
        default:
        case 0:
            if (gAudioPlayer.FUN_0202d724("end00f.SAD")) {
                gAudioPlayer.FUN_0202d798("end00f.SAD", 500);
                gAudioPlayer.FUN_0202d578(0);
            }
            break;
        case 1:
            if (gAudioPlayer.FUN_0202d724("end00b.SAD")) {
                gAudioPlayer.FUN_0202d798("end00b.SAD", 500);
                gAudioPlayer.FUN_0202d578(0);
            }
            break;
    }
    
    this->state = STATE_9;
    this->fadeBlack();
    SetNextMode(GAME_MODE_TITLE);
}

BOOL CMainEndrollScreenInit::FUN_ov6_020bd20c(void)
{
    if (this->creditsIdx >= this->CREDIT_IMAGE_COUNT - 1)
    {
        if (((this->creditsIdx) % 2) != 0) {
            if (this->vOffsetA >= GX_LCD_SIZE_Y) {
                this->unk1EC = 2;
                this->unk1F0 = TRUE;
            }
        } else {
            if (this->vOffsetB >= GX_LCD_SIZE_Y) {
                this->unk1EC = 1;
                this->unk1F0 = TRUE;
            }
        }
    }

    return this->unk1F0;
}

void CMainEndrollScreenInit::init(void)
{
    this->state = STATE_INIT;
    this->vOffsetB = 0;
    this->vOffsetA = -GX_LCD_SIZE_Y;
    this->creditsIdx = 0;
    this->unk1E8 = 0;
    this->unk1F0 = FALSE;
    this->unk1EC = 0;
    this->unk1F4 = 0;

    MI_CpuClear8(&this->shared, sizeof(this->shared));
    this->shared.subFinished = FALSE;
    this->shared.subInitialized = FALSE;
    this->shared.mainFinished = FALSE;

    MI_CpuClear8(&this->creditsImages, sizeof(this->creditsImages));
}

void CMainEndrollScreenInit::update(BOOL param1)
{
    int *perm_var_1;
    CreditBG perm_var_2;

    switch (this->state) {
        case STATE_INIT:
            this->unk1F4 = unk_020A0640.unkAF;

            G2_SetBG1Offset(0, this->vOffsetB);
            G2_SetBG2Offset(0, this->vOffsetA);
            G2_SetBG1Priority(0);
            G2_SetBG2Priority(1);
            G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG2, FALSE);
            G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG2, FALSE);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG1, FALSE);

            this->loadFiles();
            this->state = STATE_CREDITS_START;

            /* fallthrough */
        case STATE_CREDITS_START:
            perm_var_1 = &this->creditsIdx;

            perm_var_2 = (*perm_var_1 - 1) % 2 ? CREDIT_BG_B : CREDIT_BG_A;
            this->displayCredits(this->creditsIdx++, perm_var_2);

            perm_var_2 = (*perm_var_1- 1) % 2 ? CREDIT_BG_B : CREDIT_BG_A;
            this->displayCredits(this->creditsIdx++, perm_var_2);

            this->state = STATE_CREDITS_SCROLL;

            (void)this->manager->transferSub(&this->shared);

            this->fadeIn();

            /* fallthrough */
        case STATE_PLAY_MUSIC:
            this->state = STATE_PLAY_MUSIC;

            if (!this->shared.subInitialized) {
                break;
            }

            switch (gConfig.getParam("IZ_TYPE")) {
                default:
                case 0:
                    gAudioPlayer.FUN_0202d594(0, "end00f.SAD");
                    break;
                case 1:
                    gAudioPlayer.FUN_0202d594(0, "end00b.SAD");
                    break;
            }
            
            this->state = STATE_CREDITS_SCROLL;
            break;
        case STATE_CREDITS_SCROLL:
            if (Graphics::IsScreenFading(ENGINE_MAIN)) {
                break;
            }

            GX_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);

            if (!this->unk1F0) {
                this->vOffsetB++;
                this->vOffsetA++;

                perm_var_1 = &this->creditsIdx;
                if ((this->vOffsetB > GX_LCD_SIZE_Y) && (*perm_var_1 < this->CREDIT_IMAGE_COUNT)) {
                    perm_var_2 = (*perm_var_1 - 1) % 2 ? CREDIT_BG_B : CREDIT_BG_A;
                    this->displayCredits(this->creditsIdx++, perm_var_2);
                    this->vOffsetB -= 2 * GX_LCD_SIZE_Y;
                }
                if ((this->vOffsetA > GX_LCD_SIZE_Y) && (*perm_var_1 < this->CREDIT_IMAGE_COUNT)) {
                    perm_var_2 = (*perm_var_1 - 1) % 2 ? CREDIT_BG_B : CREDIT_BG_A;
                    this->displayCredits(this->creditsIdx++, perm_var_2);
                    this->vOffsetA -= 2 * GX_LCD_SIZE_Y;
                }

                G2_SetBG1Offset(0, this->vOffsetB);
                G2_SetBG2Offset(0, this->vOffsetA);
            }

            if (this->vOffsetA <= 0)
            {
                G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG1, FALSE);
                G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG1, FALSE);
                G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG2, FALSE);
                G2_SetWnd0Position(0,                 0, GX_LCD_SIZE_X - 1, -this->vOffsetA);
                G2_SetWnd1Position(GX_LCD_SIZE_X - 1, 0, 0,                 -this->vOffsetA);
            }
            else
            {
                G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG2, FALSE);
                G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG2, FALSE);
                G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG1, FALSE);
                G2_SetWnd0Position(0,                 0, GX_LCD_SIZE_X - 1, GX_LCD_SIZE_Y - this->vOffsetA);
                G2_SetWnd1Position(GX_LCD_SIZE_X - 1, 0, 0,                 GX_LCD_SIZE_Y - this->vOffsetA);
            }

            if (this->FUN_ov6_020bd20c() && this->shared.subFinished)
            {
                GX_SetVisibleWnd(GX_WNDMASK_NONE);

                if (this->unk1EC == 1) {
                    G2_SetBG1Priority(1);
                    G2_SetBG2Priority(0);
                } else {
                    G2_SetBG1Priority(0);
                    G2_SetBG2Priority(1);
                }
                
                this->state = STATE_5;
            }
            break;
        case STATE_5:
            this->state = STATE_6;

            this->shared.mainFinished = TRUE;

            (void)this->manager->transferSub(&this->shared);
            break;
        case STATE_6:
            this->unk1E8 = 0;

            this->state = STATE_FIN;

            Graphics::FadeInScreen(ENGINE_SUB, 30);
            break;
        case STATE_FIN:
            break;
        case STATE_8:
            break;
        default:
            break;
    }
}

void CMainEndrollScreenInit::updateLate(void) { }

void CMainEndrollScreenInit::close(void)
{
    this->freeFiles();
    
    G2_SetBG1Offset(0, 0);
    G2_SetBG2Offset(0, 0);

    g3DDevice->setClearColor(GX_RGB(0, 0, 0), 0, 0);
}

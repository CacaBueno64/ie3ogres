#include "logoscreen.hpp"

const ov5_Init ov5_020BD9D4 = ov5_Init(0x4e2000, 0x0000EA3C, 0x800, 0x00009CCD, 0x2000, 0x840800);

void CMainLogoScreenInit::updateKeys(u16 pressed, u16 held) {
    if (this->state == STATE_IMAGE_WAIT && this->scene == SCENE_COPYRIGHT) {
        return;
    }
}

void CMainLogoScreenInit::updateTP(TPData *tp)
{
    if (this->state != 4) {
        return;
    }
    
    if (tp->touch == TP_TOUCH_ON) {
        if (tp->validity != TP_VALIDITY_VALID) {
            return;
        }
        if (this->tpTouch == TP_TOUCH_OFF) {
            this->tpTouch = TP_TOUCH_ON;
        }
        this->tpX = tp->x;
        this->tpY = tp->y;
    } else {
        this->tpTouch = TP_TOUCH_OFF;
    }
}

void CMainLogoScreenInit::openArchives(void)
{
    gAllocator.setNextArena(1);
    FUN_ov16_020f3054("/data_iz/pic2d/title/level5.pac_", &this->data[0]);
    gAllocator.setNextArena(1);
    FUN_ov16_020f3054("/data_iz/pic2d/title/ActimagineOriginal.pac_", &this->data[1]);
    this->state = STATE_INIT;
}

void CMainLogoScreenInit::closeArchives(void)
{
    for (int i = 0; i < 2; i++) {
        if (this->data[i].data != NULL) {
            gAllocator.deallocate(this->data[i].data);
            this->data[i].data = NULL;
        }
    }
}

void CMainLogoScreenInit::loadImage(int idx)
{
    void *img = this->data[idx].data;
    if (img == NULL) {
        return;
    }

    GX_LoadBG0Scr(ImagePAC_GetScreenPtr(img), 0, ImagePAC_GetScreenSize(img));
    GX_LoadBG0Char(ImagePAC_GetCharacterPtr(img), 0, ImagePAC_GetCharacterSize(img));
    GX_BeginLoadBGExtPltt();
    GX_LoadBGExtPltt(ImagePAC_GetPalettePtr(img), 0, ImagePAC_GetPaletteSize(img));
    GX_EndLoadBGExtPltt();
}

void CMainLogoScreenInit::loadSceneImage(void)
{
    switch (this->scene) {
        case SCENE_COPYRIGHT:
            break;
        case SCENE_LEVEL5:
            this->loadImage(0);
            break;
        case SCENE_ACTIMAGINE:
            this->loadImage(1);
            break;
    }
}

void CMainLogoScreenInit::init(void)
{
    this->state = STATE_IDLE;
    this->scene = SCENE_COPYRIGHT;
    this->tpTouch = FALSE;
    this->dummy_20 = 0;
    this->skipSignal = FALSE;
    this->openArchives();
}

void CMainLogoScreenInit::update(int arg)
{
    switch (this->state) {
        default:
            break;
        case STATE_IDLE:
            break;
        case STATE_INIT:
            this->state = STATE_UPDATE_GRAPHICS;
            break;
        case STATE_UPDATE_GRAPHICS:
            break;
        case STATE_FADE_IN:
            if (this->scene == SCENE_COPYRIGHT) {
                FUN_ov16_020f1560(0, 8);
                FUN_ov16_020f14b4(1, 8);
            } else if (this->scene == SCENE_LEVEL5) {
                gAudioPlayer.FUN_0202cf6c(0x83DE);
                FUN_ov16_020f1490(6);
            } else {
                FUN_ov16_020f14b4(0, 8);
                FUN_ov16_020f14b4(1, 8);
            }
            this->state = STATE_IMAGE_WAIT;
            this->dummy_20 = 0;
            if (this->scene == SCENE_COPYRIGHT) {
                this->timer = 3600;
            } else if (this->scene == SCENE_LEVEL5) {
                this->timer = 80;
            } else {
                this->timer = 120;
            }
            break;
        case STATE_IMAGE_WAIT:
            if (this->scene == SCENE_COPYRIGHT) {
                if ((this->skipSignal) && (this->timer > 30)) {
                    this->timer = 30;
                }
            }
            if (!FUN_ov16_020f1670()) {
                this->timer -= gDeltaTime;
            }
            if (this->timer >= 0) {
                break;
            }
            if (this->scene == SCENE_LEVEL5) {
                FUN_ov16_020f15dc(8);
            } else {
                FUN_ov16_020f153c(6);
            }
            this->state = STATE_FADE_OUT;
            break;
        case STATE_FADE_OUT:
            if (FUN_ov16_020f1670()) {
                break;
            }
            if (this->scene == SCENE_COPYRIGHT) {
                this->scene = SCENE_LEVEL5;
                this->dummy_3c = 1;
                this->state = STATE_UPDATE_GRAPHICS;
                this->manager->signalSub(1);
                this->skipSignal = 0;
                break;
            }
            if (this->scene != SCENE_LEVEL5) {
                this->state = STATE_END;
                break;
            }
            this->scene = SCENE_ACTIMAGINE;
            this->state = STATE_UPDATE_GRAPHICS;
            this->dummy_3c = 2;
            this->manager->signalSub(2);
            break;
        case STATE_END:
            this->manager->nextMainDisplay = 0;
            this->manager->setNextScenes(SCENE_MOVIE, SCENE_NONE);
            break;
    }
}

void CMainLogoScreenInit::updateLate(void)
{
    switch (this->state) {
        case STATE_UPDATE_GRAPHICS:
            this->loadSceneImage();
            this->state = STATE_FADE_IN;
            break;
        case STATE_IMAGE_WAIT:
            FUN_ov16_020f6a9c(&gBgMenuManager, 0);
            break;
    }
}

int CMainLogoScreenInit::signal(int arg)
{
    if (arg == 1) {
        this->skipSignal = 1;
    }
    return 0;
}

void CMainLogoScreenInit::close(void)
{
    FUN_ov16_020f5af0(&gBgMenuManager, 0);
    this->closeArchives();
}

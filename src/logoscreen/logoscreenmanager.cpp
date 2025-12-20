#include "logoscreen.hpp"

const ov5_Init ov5_020BD8C0 = ov5_Init(0x4e2000, 0x0000EA3C, 0x800, 0x00009CCD, 0x2000, 0x840800);

void CLogoScreenManager::init(void)
{
    this->startGraphics(2);
    this->mainScreen = NULL;
    this->subScreen = NULL;
    this->setScenes(SCENE_NONE, SCENE_NONE);
    this->setNextScenes(SCENE_TITLE_INIT, SCENE_TITLE_INIT);
    this->nextMainDisplay = 1;
    this->toggleDisplays = 0;
    
    FUN_ov16_020f13d4();
    
    gL5Sound.FUN_0202b838(4, 0, 0);
    while (!gL5Sound.FUN_0202b7b4()) {
        OS_Sleep(20);
    }
    while (!gL5Sound.FUN_0202b7f0()) {
        OS_Sleep(20);
    }
    
    this->updateScene();
}

void CLogoScreenManager::close(void)
{
    if (this->mainScreen != NULL) {
        this->mainScreen->close();
    }
    if (this->subScreen != NULL) {
        this->subScreen->close();
    }
    this->endGraphics(2);
}

void CLogoScreenManager::updateScene(void)
{
    SceneType nextSceneMain = this->getNextSceneMain();
    
    if (((this->getCurSceneMain() != nextSceneMain) || (this->sceneChanged[ENGINE_SUB])) &&
        ((this->mainScreen == NULL) || (!this->mainScreen->isFading())))
    {
        if (this->mainScreen != NULL) {
            this->mainScreen->close();
        }
        switch (nextSceneMain) {
            case SCENE_TITLE_INIT:
                this->mainScreen = &this->mainScreenInit;
                break;
            case SCENE_MOVIE:
                this->mainScreen = &this->mainScreenDCBmp;
                break;
            default:
                this->mainScreen = NULL;
        }
        this->setScene(ENGINE_MAIN, nextSceneMain);
        if (this->mainScreen != NULL) {
            this->mainScreen->init();
        }
    }
    
    SceneType nextSceneSub = this->getNextSceneSub();
    
    if (((this->getCurSceneSub() != nextSceneSub) || (this->sceneChanged[ENGINE_SUB])) &&
        ((this->subScreen == NULL) || (!this->subScreen->isFading())))
    {
        if (this->subScreen != NULL) {
            this->subScreen->close();
        }
        switch (nextSceneSub) {
            case SCENE_TITLE_INIT:
                this->subScreen = &this->subScreenInit;
                break;
            default:
                this->subScreen = NULL;
                break;
        }
        this->setScene(ENGINE_SUB, nextSceneSub);
        if (this->subScreen != NULL) {
            this->subScreen->init();
        }
    }
}

void CLogoScreenManager::startGraphics(u32 arg)
{
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    
    if ((arg == 0) || (arg == 2)) {
        FUN_ov16_020f3f60(5);
    }
    if ((arg - 1) <= 1) {
        FUN_ov16_020f4894(5);
    }
}

void CLogoScreenManager::endGraphics(u32 arg)
{
    if ((arg == 0) || (arg == 2)) {
        FUN_ov16_020f47fc();
    }
    if ((arg - 1) <= 1) {
        FUN_ov16_020f51a8();
    }
    if (arg == 2) {
        MI_CpuClearFast((void *)HW_LCDC_VRAM, HW_LCDC_VRAM_SIZE);
    }
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
}

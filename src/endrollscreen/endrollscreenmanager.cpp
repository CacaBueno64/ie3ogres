#include "endrollscreen.hpp"
#include "init/arm9_init.hpp"

static u8 sDummy;

#pragma opt_rotateloops off
void CEndrollScreenManager::init(void)
{
    this->startGraphics(2);
    this->mainScreen = NULL;
    this->subScreen = NULL;
    sDummy = 1;
    this->setScenes(SCENE_NONE, SCENE_NONE);
    this->setNextScenes(SCENE_ENDROLL_INIT, SCENE_ENDROLL_INIT);
    this->toggleDisplays = 0;
    this->nextMainDisplay = 0;

    Graphics::FadeScreensBlack(6);
    
    gAudioPlayer.FUN_0202b838(6, 0, 0);
    gAudioPlayer.FUN_0202c44c(0, 0);
    
    while (!gAudioPlayer.FUN_0202b7b4()) {
        OS_Sleep(20);
    }
    while (!gAudioPlayer.FUN_0202b7f0()) {
        OS_Sleep(20);
    }

    this->updateScene();

    g3DDevice->setClearColor(GX_RGB(21, 25, 28), 31, 0);
}
#pragma opt_rotateloops reset

void CEndrollScreenManager::close(void)
{
    if (this->mainScreen != NULL) {
        this->mainScreen->close();
    }
    if (this->subScreen != NULL) {
        this->subScreen->close();
    }
    this->endGraphics(2);
}

void CEndrollScreenManager::updateScene(void)
{
    SceneType nextSceneMain = this->getNextSceneMain();
    
    if (((nextSceneMain != this->getCurSceneMain()) || (this->sceneChanged[ENGINE_SUB])) && 
       ((!this->mainScreen) || (!this->mainScreen->isFading()))
    ) {
        if (this->mainScreen) {
            this->mainScreen->close();
        }
        switch (nextSceneMain) {
            case SCENE_ENDROLL_INIT:
                this->mainScreen = &this->mainScreenInit;
                break;
            default:
                this->mainScreen = NULL;
                break;
        }
        this->setScene(ENGINE_MAIN, nextSceneMain);
        if (this->mainScreen) {
            this->mainScreen->init();
        }
    }

    SceneType nextSceneSub = this->getNextSceneSub();
    
    if (((nextSceneSub != this->getCurSceneSub()) || (this->sceneChanged[ENGINE_SUB])) && 
       ((!this->subScreen) || (!this->subScreen->isFading()))
    ) {
        if (this->subScreen) {
            this->subScreen->close();
        }
        switch (nextSceneSub) {
            case SCENE_ENDROLL_INIT:
                this->subScreen = &this->subScreenInit;
                break;
            default:
                this->subScreen = NULL;
                break;
        }
        this->setScene(ENGINE_SUB, nextSceneSub);
        if (this->subScreen) {
            this->subScreen->init();
        }
    }
}

void CEndrollScreenManager::startGraphics(u32 arg)
{
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    
    if ((arg == 0) || (arg == 2)) {
        FUN_ov16_020f3f60(8);
    }
    if ((arg - 1) <= 1) {
        FUN_ov16_020f4894(8);
    }
}

void CEndrollScreenManager::endGraphics(u32 arg)
{
    if ((arg == 0) || (arg == 2)) {
        FUN_ov16_020f47fc();
    }
    if ((arg - 1) <= 1) {
        FUN_ov16_020f51a8();
    }
    if (arg == 2) {
        MI_CpuClearFast(reinterpret_cast<void *>(HW_LCDC_VRAM), HW_LCDC_VRAM_SIZE);
    }
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
}



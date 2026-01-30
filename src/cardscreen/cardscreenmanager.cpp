#include "cardscreen.hpp"

const ov3_Init_020BD300 ov3_020BD300 = ov3_Init_020BD300(0x4e2000, 0x0000EA3C, 0x800, 0x00009CCD, 0x2000, 0x840800);

void CCardScreenManager::init(void)
{
    this->startGraphics(2);
    this->mainScreen = NULL;
    this->subScreen = NULL;
    this->clear();
    this->setScenes(SCENE_NONE, SCENE_NONE);
    this->setNextScenes(SCENE_CARD_INIT, SCENE_NONE);
    this->toggleDisplays = FALSE;
    this->nextMainDisplay = 0;
    Graphics::WhiteOutScreens();
    this->updateScene();
}

void CCardScreenManager::close(void)
{
    if (this->mainScreen != NULL) {
        this->mainScreen->close();
    }
    if (this->subScreen != NULL) {
        this->subScreen->close();
    }
    this->endGraphics(2);
}

void CCardScreenManager::updateScene(void)
{
    static ScreenLoadContext mainScreenContext[] = {
        {SCENE_CARD_INIT, &this->mainScreenInit, FALSE, 0},
        {SCENE_NONE, NULL, FALSE, 0},
    };
    static ScreenLoadContext subScreenContext[] = {
        {SCENE_NONE, NULL, FALSE, 0}
    };
    
    SceneType nextSceneMain = this->getNextSceneMain();
    if (((this->getCurSceneMain() != nextSceneMain) || (this->sceneChanged[ENGINE_MAIN])) &&
        ((this->mainScreen == NULL) || (!this->mainScreen->isFading()))
    ) {
        if (this->mainScreen != NULL) {
            this->mainScreen->close();
            this->mainScreen->blackOut();
        }
        this->mainScreen = NULL;
        for (ScreenLoadContext *ctx = &mainScreenContext[0]; ctx->type != SCENE_NONE; ctx++) {
            if (nextSceneMain == ctx->type) {
                this->mainScreen = static_cast<CommonMainScreen *>(ctx->screen);
                break;
            }
        }
        this->setScene(ENGINE_MAIN, nextSceneMain);
        if (this->mainScreen != NULL) {
            this->mainScreen->init();
        }
    }

    SceneType nextSceneSub = this->getNextSceneSub();
    if (((this->getCurSceneSub() != nextSceneSub) || (this->sceneChanged[ENGINE_SUB])) &&
        ((this->subScreen == NULL) || (!this->subScreen->isFading()))
    ) {
        if (this->subScreen != NULL) {
            this->subScreen->close();
            this->subScreen->blackOut();
        }
        this->subScreen = NULL;
        SceneType type;
        for (ScreenLoadContext *ctx = &subScreenContext[0]; (type = ctx->type) != SCENE_NONE; ctx++) {
            if (nextSceneSub == type) {
                this->subScreen = static_cast<CommonSubScreen *>(ctx->screen);
                break;
            }
        }
        this->setScene(ENGINE_SUB, nextSceneSub);
        if (this->subScreen != NULL) {
            this->subScreen->init();
        }
    }
}

void CCardScreenManager::startGraphics(u32 arg)
{
    if ((arg == 0) || (arg == 2)) {
        FUN_ov16_020f3f60(1);
    }
    if ((arg - 1) <= 1) {
        FUN_ov16_020f4894(1);
    }
}

void CCardScreenManager::endGraphics(u32 arg)
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
}

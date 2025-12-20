#include "screenmanager.hpp"

CScreenManager::CScreenManager() { this->clear(); }

CScreenManager::~CScreenManager() { }

void CScreenManager::clear(void)
{
    this->layerIdx[ENGINE_MAIN] = 0;
    this->layerIdx[ENGINE_SUB] = 0;
    MI_CpuClear8(&this->layer, sizeof(this->layer));
    this->mainScreen = NULL;
    this->subScreen = NULL;
    this->toggleDisplays = 0;
    this->nextMainDisplay = 0;
    this->unk_8a = 0;
    this->unk_8b = 0;
    this->unk_8c = 0;
    this->unk_8e = 0;
    this->sceneChanged[ENGINE_MAIN] = FALSE;
    this->sceneChanged[ENGINE_SUB] = FALSE;
    this->layerStep[ENGINE_MAIN] = LAYER_STEP_NONE;
    this->layerStep[ENGINE_SUB] = LAYER_STEP_NONE;
    this->loadedScene[ENGINE_MAIN] = SCENE_NONE;
    this->loadedScene[ENGINE_SUB] = SCENE_NONE;
}

BOOL CScreenManager::updateKeys(u16 pressed, u16 held)
{
    if (this->nextMainDisplay != 0) {
        if ((this->subScreen != NULL) && (!FUN_ov16_020f1660())) {
            this->subScreen->updateKeys(pressed, held);
        }
    } else if ((this->mainScreen != NULL) && (!FUN_ov16_020f1650())) {
        this->mainScreen->updateKeys(pressed, held);
    }

    gLogicThink.updateKeys(pressed, held);

    return FALSE;
}

BOOL CScreenManager::updateTP(TPData *tp)
{
    if (this->nextMainDisplay != 0) {
        if ((this->subScreen != NULL) && (!FUN_ov16_020f1660())) {
            this->subScreen->updateTP(tp);
        }
    } else if ((this->mainScreen != NULL) && (!FUN_ov16_020f1650())) {
        this->mainScreen->updateTP(tp);
    }

    return FALSE;
}

BOOL CScreenManager::update(int param1)
{
    if (param1 == 0) {
        if (this->mainScreen != NULL) {
            int r1 = this->mainScreen->vFUN_14();
            this->mainScreen->update(r1);
        }
    } else if (this->subScreen != NULL) {
        int r1 = this->subScreen->vFUN_14();
        this->subScreen->update(r1);
    }

    FUN_ov16_020f16c8(param1);

    return FALSE;
}

BOOL CScreenManager::updateLate(int param1)
{
    FUN_ov16_020f16c8(param1);
    
    if (param1 == 0) {
        if (this->mainScreen != NULL) {
            this->mainScreen->updateLate();
        }
    } else if (this->subScreen != NULL) {
        this->subScreen->updateLate();
    }
    
    return FALSE;
}

void CScreenManager::deleteScreen(CommonScreen *screen, ScreenLoadContext *ctx)
{
    for ( ; ctx->type != SCENE_NONE; ctx++) {
        if ((ctx->isInit) && (ctx->screen == screen)) {
            FS_UnloadOverlay(MI_PROCESSOR_ARM9, ctx->id);
            
            if (ctx->screen != NULL) {
                delete ctx->screen;
            }
            ctx->screen = NULL;
            break;
        }
    }
}

void CScreenManager::fadeInMain(void)
{
    if (this->mainScreen == NULL) {
        return;
    }
    FUN_ov16_020f1468(6);
}

void CScreenManager::fadeMainBlack(void)
{
    if (this->mainScreen == NULL) {
        return;
    }
    FUN_ov16_020f1514(6);
}

void CScreenManager::fadeSubBlack(void)
{
    if (this->subScreen == NULL) {
        return;
    }
    FUN_ov16_020f1528(6);
}

int CScreenManager::vFUN_38(int arg)
{
    if (this->mainScreen == NULL) {
        return -1;
    }
    return this->mainScreen->vFUN_60(arg);
}

int CScreenManager::vFUN_3C(int arg)
{
    if (this->subScreen == NULL) {
        return -1;
    }
    return this->subScreen->vFUN_60(arg);
}

int CScreenManager::signalMain(int signal)
{
    if (this->mainScreen == NULL) {
        return -1;
    }
    return this->mainScreen->vFUN_64(signal);
}

int CScreenManager::signalSub(int signal)
{
    if (this->subScreen == NULL) {
        return -1;
    }
    return this->subScreen->vFUN_64(signal);
}

int CScreenManager::vFUN_48(void)
{
    if (this->mainScreen == NULL) {
        return -1;
    }
    return this->mainScreen->vFUN_68();
}

int CScreenManager::vFUN_4C(void)
{
    if (this->subScreen == NULL) {
        return -1;
    }
    return this->subScreen->vFUN_68();
}

void CScreenManager::setNextScene(EngineSelect screen, SceneType next)
{
    int idx = this->layerIdx[screen];
    SceneLayer *scnLayer = &this->layer[idx][screen];
    this->layerStep[screen] = LAYER_STEP_NONE;
    BOOL changed = FALSE;
    if (scnLayer->next != next) {
        changed = TRUE;
    }
    this->sceneChanged[screen] = changed;
    scnLayer->next = next;
}

void CScreenManager::pushScene(EngineSelect screen, SceneType next)
{
    int idx = this->layerIdx[screen];
    SceneLayer *scnLayer = &this->layer[idx + 1][screen];
    this->layerStep[screen] = LAYER_STEP_UP;
    this->sceneChanged[screen] = TRUE;
    scnLayer->next = next;
}

void CScreenManager::popScene(EngineSelect screen)
{
    int idx = this->layerIdx[screen];
    SceneLayer *scnLayer = &this->layer[idx - 1][screen];
    this->layerStep[screen] = LAYER_STEP_DOWN;
    this->sceneChanged[screen] = TRUE;
    scnLayer->next = scnLayer->cur;
    scnLayer->cur = SCENE_NONE;
}

void CScreenManager::setScene(EngineSelect screen, SceneType scene)
{
    int idx = this->layerIdx[screen];
    SceneLayer *scnLayer = &this->layer[idx][screen];
    this->loadedScene[screen] = scnLayer->cur;
    switch (this->layerStep[screen]) {
        case LAYER_STEP_UP:
            idx++;
            break;
        case LAYER_STEP_DOWN:
            idx--;
            break;
        default:
            break;
    }
    this->layerIdx[screen] = idx;
    this->layerStep[screen] = LAYER_STEP_NONE;
    this->sceneChanged[screen] = FALSE;
    
    scnLayer = &this->layer[idx][screen];
    scnLayer->prev = scnLayer->cur;
    scnLayer->cur = scene;
}

SceneType CScreenManager::getCurSceneMain(void)
{
    int idx = this->layerIdx[ENGINE_MAIN];
    
    switch (this->layerStep[ENGINE_MAIN]) {
        case LAYER_STEP_UP:
            idx++;
            break;
        case LAYER_STEP_DOWN:
            idx--;
            break;
        default:
            break;
    }
    
    return this->layer[idx][ENGINE_MAIN].cur;
}

SceneType CScreenManager::getNextSceneMain(void)
{
    int idx = this->layerIdx[ENGINE_MAIN];
    
    switch (this->layerStep[ENGINE_MAIN]) {
        case LAYER_STEP_UP:
            idx++;
            break;
        case LAYER_STEP_DOWN:
            idx--;
            break;
        default:
            break;
    }
    
    return this->layer[idx][ENGINE_MAIN].next;
}

SceneType CScreenManager::getLoadedSceneMain(void) { return this->loadedScene[ENGINE_MAIN]; }

SceneType CScreenManager::getCurSceneSub(void)
{
    int idx = this->layerIdx[ENGINE_SUB];
    
    switch (this->layerStep[ENGINE_SUB]) {
        case LAYER_STEP_UP:
            idx++;
            break;
        case LAYER_STEP_DOWN:
            idx--;
            break;
        default:
            break;
    }
    
    return this->layer[idx][ENGINE_SUB].cur;
}

SceneType CScreenManager::getNextSceneSub(void)
{
    int idx = this->layerIdx[ENGINE_SUB];
    
    switch (this->layerStep[ENGINE_SUB]) {
        case LAYER_STEP_UP:
            idx++;
            break;
        case LAYER_STEP_DOWN:
            idx--;
            break;
        default:
            break;
    }
    
    return this->layer[idx][ENGINE_SUB].next;
}

SceneType CScreenManager::getLoadedSceneSub(void) { return this->loadedScene[ENGINE_SUB]; }

void CScreenManager::updateDisplayMapping(void)
{
    if (this->toggleDisplays == 0) {
        return;
    }
    if (this->nextMainDisplay != 0) {
        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    } else {
        GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    }
    int disp;
    if (this->nextMainDisplay != 0) {
        disp = 0;
    } else {
        disp = 1;
    }
    this->nextMainDisplay = disp;
    this->toggleDisplays = 0;
}

BOOL CScreenManager::FUN_02042110(SceneType scene)
{
    if ((scene == SCENE_MENU_FORMATION) ||
        (scene == SCENE_MENU_ITEM) ||
        (scene == SCENE_MENU_SPECIAL_COMMAND) ||
        (scene == SCENE_MENU_EQUIP))
    {
        return TRUE;
    }

    return FALSE;
}

void CScreenManager::endGraphics(u32 arg) { }

void CScreenManager::startGraphics(u32 arg) { }

#ifndef IE3OGRES_SCREENMANAGER_H
#define IE3OGRES_SCREENMANAGER_H

#pragma once

#include <nitro.h>

#include "manager.hpp"
#include "commonscreen.hpp"
#include "logicthink.hpp"
#include "archive.hpp"

typedef struct {
    void *data;
    size_t size;
    u8 available;
    u8 unk_9;
    u8 unk_a;
    u8 pad_b;
} SFileData;

typedef enum {
    LAYER_STEP_NONE = 0,
    LAYER_STEP_UP = 1,
    LAYER_STEP_DOWN = 2
} SceneLayerStep;

typedef enum {
    SCENE_NONE = 0,
    SCENE_MOVIE = 1,
    SCENE_CARD_INIT = 2,
    SCENE_TITLE_INIT = 10 /* also LOGO_INIT */,
    SCENE_TITLE_CAUTION = 11,
    SCENE_TITLE_SAVE = 12,
    SCENE_TITLE_SELECT_SLOT = 13,
    SCENE_TITLE_WC_MENU = 14,
    SCENE_TITLE_WC = 15,
    SCENE_TITLE_TRADE = 16,
    SCENE_TITLE_WL_DL = 17,
    SCENE_TITLE_WL_SAVE_TO_TITLE = 18,
    SCENE_TITLE_WL_GET_INFO = 19,
    SCENE_TITLE_WFDL = 20,
    SCENE_TITLE_SAVE_TO_TITLE = 22,
    SCENE_TITLE_GET_INFO = 23,
    SCENE_TITLE_MOVIE_VIEW = 24,
    SCENE_TITLE_WC_SAVE = 25,
    SCENE_TITLE_SECRET = 26,
    SCENE_TITLE_PASS_COMMU_MAIN = 27,
    SCENE_TITLE_PASS_COMMU_SUB = 28,
    SCENE_TITLE_PASS_COMMU_VS = 29,
    SCENE_TITLE_PASS_COMMU_CFG = 30,
    SCENE_TITLE_PROFILE_EDIT_MAIN = 31,
    SCENE_TITLE_PROFILE_EDIT_SUB = 32,
    SCENE_TITLE_PREMIUM_INIT = 33,
    SCENE_TITLE_OPTION = 34,
    SCENE_TITLE_EXPLAIN = 35,
    SCENE_TITLE_PHONE = 36,
    SCENE_TITLE_PASSWORD_ISSUE = 37,
    SCENE_TITLE_MOVIE_LINK = 38,
    SCENE_TITLE_COLLECTION = 39,
    SCENE_PLAY_INIT = 50,
    SCENE_PLAY_BEGIN_GAME = 51,
    SCENE_PLAY_PLAYER_INTRO = 52,
    SCENE_PLAY_EVENT_DUMMY = 53,
    SCENE_PLAY_EVENT_3D = 54,
    SCENE_PLAY_FORMATION = 55,
    SCENE_PLAY_ACTION = 56,
    SCENE_PLAY_ENCOUNT = 57,
    SCENE_PLAY_SHOOT = 58,
    SCENE_PLAY_ANTI_SHOOT_59 = 59,
    SCENE_PLAY_PERIOD_NORMAL = 60,
    SCENE_PLAY_END_GAME = 61,
    SCENE_PLAY_DRAW_TIME = 62,
    SCENE_PLAY_SELECT_FIELD = 63,
    SCENE_PLAY_SELECT_TEAM = 64,
    SCENE_PLAY_ACTION_MINI = 65,
    SCENE_PLAY_CLEAR_BONUS = 69,
    SCENE_PLAY_PK = 70,
    SCENE_PLAY_PK_PREPARE = 71,
    SCENE_PLAY_UNIFORM_CHECK = 72,
    SCENE_PLAY_WC_ERR = 74,
    SCENE_PLAY_SAVE = 75,
    SCENE_PLAY_WC = 76,
    SCENE_PLAY_PREMIUM_UNIT = 77,
    SCENE_PLAY_TACTICS = 78,
    SCENE_PLAY_JOIN_FIELD = 79,
    SCENE_PLAY_PREMIUM_ITEM = 80,
    SCENE_PLAY_ANTI_SHOOT_81 = 81,
    SCENE_MENU_FORMATION = 90,
    SCENE_MENU_ITEM = 91,
    SCENE_MENU_SPECIAL_COMMAND = 92,
    SCENE_MENU_EQUIP = 93,
    SCENE_MENU_GLOBAL_MAP = 94,
    SCENE_MENU_ENTER_NAME = 95,
    SCENE_MENU_SAVE = 96,
    SCENE_MENU_REPLACE_UNIT = 97,
    SCENE_MENU_UNIFORM = 98,
    SCENE_ADVENTURE_BLOG = 99,
    SCENE_MENU_EMBLEM = 100,
    SCENE_MENU_EMBLEM_CHECK = 101,
    SCENE_MENU_SHOP = 102,
    SCENE_MENU_BINDER = 103,
    SCENE_MENU_WC_RESULT = 104,
    SCENE_MENU_BG = 105,
    SCENE_ADVENTURE_CONFIG = 106,
    SCENE_MENU_TOKKUN = 107,
    SCENE_MENU_TOKKUN_CHARA_SELECT = 108,
    SCENE_MENU_WAZA_DEN = 109,
    SCENE_MENU_WAZA_DEN_CHARA_SELECT = 110,
    SCENE_MENU_TOURNAMENT = 111,
    SCENE_MENU_CHARA_SELECT = 112,
    SCENE_MENU_MINNA = 113,
    SCENE_MENU_HENSEI_STORY = 114,
    SCENE_MENU_HENSEI_TSUSHIN = 115,
    SCENE_ADVENTURE_TUTORIAL = 116,
    SCENE_MENU_SELECT_FIELD = 117,
    SCENE_MENU_WC_MEMBER = 118,
    SCENE_MENU_WC_RULE = 119,
    SCENE_MENU_RANKING = 120,
    SCENE_MENU_TOURNAMENT_BATTLE = 121,
    SCENE_ADVENTURE_CLEAR_BONUS = 122,
    SCENE_MENU_CAPSULE = 123,
    SCENE_MENU_SELECT_VS_COM = 124,
    SCENE_MENU_WAZA_BINDER = 125,
    SCENE_ADVENTURE_INIT = 130,
    SCENE_ADVENTURE_MAP = 131,
    SCENE_ADVENTURE_EVENT_3D = 132,
    SCENE_ADVENTURE_SCOUT_SEARCH = 133,
    SCENE_ADVENTURE_SCOUT_RESULT = 134,
    SCENE_ADVENTURE_JINMYAKU = 135,
    SCENE_ADVENTURE_HEADHUNT_SEARCH = 136,
    SCENE_ADVENTURE_HEADHUNT_RESULT = 137,
    SCENE_ADVENTURE_PRACTICE_GAME = 138,
    SCENE_ADVENTURE_INABIKARI_MENU = 139,
    SCENE_ADVENTURE_INABIKARI_CLEAR = 140,
    SCENE_141 = 141,
    SCENE_ADVENTURE_PRACTICE_RULE = 142,
    SCENE_ADVENTURE_PRACTICE_RESULT = 143,
    SCENE_ENDROLL_INIT = 150,
    MASK_SCENE_1000000 = 16777216
} SceneType;

typedef struct {
    SceneType prev;
    SceneType cur;
    SceneType next;
} SceneLayer;

typedef struct {
    SceneType type;
    CommonScreen *screen;
    u8 isInit;
    FSOverlayID id;
} ScreenLoadContext;

typedef enum {
    ENGINE_MAIN = 0,
    ENGINE_SUB = 1
} EngineSelect;

class CScreenManager : public CManager {
    public:
        /* 0x02041ac8 */ CScreenManager();
        virtual ~CScreenManager();
        /* 0x02042128 */ virtual void startGraphics(u32 arg);
        /* 0x02041b64 */ virtual BOOL updateKeys(u16 pressed, u16 held);
        /* 0x02041bec */ virtual BOOL updateTP(TPData *tp);
        /* 0x02041c58 */ virtual BOOL update(int param1);
        /* 0x02041cc8 */ virtual BOOL updateLate(int param1);
        /* 0x02042124 */ virtual void endGraphics(u32 arg);
        /* 0x020420bc */ virtual void updateDisplayMapping(void);
        /* 0x02029d00 */ virtual void updateScene(void) = 0;
        /* 0x02041dd4 */ virtual int vFUN_38(int arg);
        /* 0x02041df8 */ virtual int vFUN_3C(int arg);
        /* 0x02041e1c */ virtual int signalMain(int signal);
        /* 0x02041e40 */ virtual int signalSub(int signal);
        /* 0x02041e64 */ virtual int vFUN_48();
        /* 0x02041e88 */ virtual int vFUN_4C();

        /* 0x02041b04 */ void clear(void);
        /* 0x02041d14 */ void deleteScreen(CommonScreen *screen, ScreenLoadContext *ctx);
        /* 0x02041d80 */ void fadeInMain(void);
        /* 0x02041d9c */ void fadeMainBlack(void);
        /* 0x02041db8 */ void fadeSubBlack(void);
        /* 0x02041eac */ void setNextScene(EngineSelect screen, SceneType next);
        /* 0x02041ef0 */ void pushScene(EngineSelect screen, SceneType next);
        /* 0x02041f2c */ void popScene(EngineSelect screen);
        /* 0x02041f74 */ void setScene(EngineSelect screen, SceneType scene);
        /* 0x02041fec */ SceneType getCurSceneMain(void);
        /* 0x0204201c */ SceneType getNextSceneMain(void);
        /* 0x0204204c */ SceneType getLoadedSceneMain(void);
        /* 0x02042054 */ SceneType getCurSceneSub(void);
        /* 0x02042084 */ SceneType getNextSceneSub(void);
        /* 0x020420b4 */ SceneType getLoadedSceneSub(void);
        BOOL FUN_02042110(SceneType scene);

        inline void setScenes(SceneType mainScene, SceneType subScene) {
            this->setScene(ENGINE_MAIN, mainScene);
            this->setScene(ENGINE_SUB, subScene);
        }

        inline void setNextScenes(SceneType mainScene, SceneType subScene) {
            this->setNextScene(ENGINE_MAIN, mainScene);
            this->setNextScene(ENGINE_SUB, subScene);
        }

    u8 sceneChanged[2];
    /* u8 pad_6[2]; */
    SceneLayerStep layerStep[2];
    SceneType loadedScene[2];
    int layerIdx[2];
    SceneLayer layer[4][2];
    CommonMainScreen *mainScreen;
    CommonSubScreen *subScreen;
    u8 nextMainDisplay; // 0: top 1: bottom
    u8 toggleDisplays;
    u8 unk_8a;
    u8 unk_8b;
    u8 unk_8c;
    u8 pad_8d;
    u16 unk_8e;
};

extern "C" {
    extern void FUN_ov16_020f1468(int);
    extern void FUN_ov16_020f1514(int);
    extern void FUN_ov16_020f1528(int);
    extern BOOL FUN_ov16_020f1650(void);
    extern BOOL FUN_ov16_020f1660(void);
    extern void FUN_ov16_020f16c8(int);
}

#endif //IE3OGRES_SCREENMANAGER_H

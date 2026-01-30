#ifndef IE3OGRES_GAMEMODES_H
#define IE3OGRES_GAMEMODES_H

#pragma once

#include <nitro.h>

#include "endrollscreen.hpp"
#include "cardscreen.hpp"
#include "logoscreen.hpp"

typedef enum {
    GAME_MODE_NONE = 0,
    GAME_MODE_TITLE = 1,
    GAME_MODE_PLAY = 2,
    GAME_MODE_ADVENTURE = 3,
    GAME_MODE_LOGO = 4,
    GAME_MODE_CARD = 5, // save file error
    GAME_MODE_ENDROLL = 6,
    GAME_MODE_WIFI_SETTING = 7,
    GAME_MODE_WIFI_DOWNLOAD = 8,
    GAME_MODE_BINDER = 9 // only in 3ds release
} GameMode;

typedef struct {
    GameMode mode;
    CScreenManager *screenManager;
    FSOverlayID overlayID;
} GameModeContext;

void SetNextMode(GameMode mode);

void EndrollScreenLoad(GameModeContext *ctx);
void CardScreenLoad(GameModeContext *ctx);
void LogoScreenLoad(GameModeContext *ctx);

extern "C" {
    extern BOOL FUN_ov16_LoadOverlay(u32 ovy_id);
}

#endif //IE3OGRES_GAMEMODES_H

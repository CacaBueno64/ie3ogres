#include "gamemodes.hpp"

void CardScreenLoad(GameModeContext *ctx)
{
    if (FUN_ov16_LoadOverlay(ctx->overlayID)) {
        ctx->screenManager = new CCardScreenManager();
    }
}

void LogoScreenLoad(GameModeContext *ctx)
{
    if (FUN_ov16_LoadOverlay(ctx->overlayID)) {
        ctx->screenManager = new CLogoScreenManager();
    }
}

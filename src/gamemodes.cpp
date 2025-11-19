#include "gamemodes.hpp"

void LogoScreenLoad(GameModeContext *ctx)
{
    if (FUN_ov16_LoadOverlay(ctx->overlayID)) {
        ctx->screenManager = new CLogoScreenManager();
    }
}

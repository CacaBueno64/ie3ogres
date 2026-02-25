#include "gamemodes.hpp"

void EndrollScreenLoad(GameModeContext *ctx)
{
    if (Overlay::Load(ctx->overlayID)) {
        ctx->screenManager = new CEndrollScreenManager();
    }
}

void CardScreenLoad(GameModeContext *ctx)
{
    if (Overlay::Load(ctx->overlayID)) {
        ctx->screenManager = new CCardScreenManager();
    }
}

void LogoScreenLoad(GameModeContext *ctx)
{
    if (Overlay::Load(ctx->overlayID)) {
        ctx->screenManager = new CLogoScreenManager();
    }
}

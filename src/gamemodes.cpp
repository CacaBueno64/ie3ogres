#include "overlay.hpp"
#include "gamemodes.hpp"

#include "CCardScreenManager.hpp"
#include "CEndrollScreenManager.hpp"
#include "CLogoScreenManager.hpp"

void EndrollScreenLoad(GameModeContext *ctx) {
    if (Overlay::Load(ctx->overlayID)) {
        ctx->screenManager = new CEndrollScreenManager();
    }
}

void CardScreenLoad(GameModeContext *ctx) {
    if (Overlay::Load(ctx->overlayID)) {
        ctx->screenManager = new CCardScreenManager();
    }
}

void LogoScreenLoad(GameModeContext *ctx) {
    if (Overlay::Load(ctx->overlayID)) {
        ctx->screenManager = new CLogoScreenManager();
    }
}

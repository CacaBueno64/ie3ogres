#include "CBgMenuManager.hpp"

#include <nitro/mi/memory.h>
#include <nitro/os/ARM9/cache.h>
#include <nitro/types.h>

#include "CBgMenuRadioButton.hpp"
#include "graphics.hpp"
#include "init/arm9_init.hpp" // IWYU pragma: keep

/* This is not a real symbol atm but it corresponds to gMainScreen0 */
/* We still need to figure out what's up with this */
extern GXScrText32x32 gScreens[2][3];

#pragma opt_rotateloops off
void CBgMenuManager::init(EngineSelect engine)
{
    this->enable(engine);
    for (int i = 0; i < 3; ++i) {
        this->screenUsed[engine][i] = false;
    }
    int perm_var_1 = engine;
    MI_CpuFillFast(&gScreens[perm_var_1], 0, sizeof(*gScreens));
    DC_FlushRange(&gScreens[engine], sizeof(*gScreens));
    this->deleteAll(engine, 0);
    Graphics::ResetBGPulse(engine);
    this->flash[engine].base = 0;
    this->flash[engine].flash = 0;
    this->flash[engine].timer = 0;
}
#pragma opt_rotateloops reset

void CBgMenuManager::finalize(EngineSelect engine)
{
    for (int i = 0; i < 3; i += 1) {
        if (this->screenUsed[engine][i] && this->screens[engine][i]) {
            MI_CpuFillFast(this->screens[engine][i], 0, 0x800);
            this->screenUsed[engine][i] = false;
        }
    }
    this->deleteAll(engine, 0);
    Graphics::StopBGPulse(engine);
}

void CBgMenuManager::setScreens(EngineSelect engine, void *scrA, void *scrB, void *scrC)
{
    this->screens[engine][0] = static_cast<u16 *>(scrA);
    this->screens[engine][1] = static_cast<u16 *>(scrB);
    this->screens[engine][2] = static_cast<u16 *>(scrC);
}

#pragma opt_rotateloops off
void CBgMenuManager::writeScreen(EngineSelect engine, int bg, s32 x, s32 y, s32 width, s32 height, u16 palette, u16 *src)
{
    if (!src) return;
    palette <<= GX_SCRFMT_TEXT_COLORPLTT_SHIFT;
    GXScrText32x32 *screen = &gScreens[engine][bg];
    for (; height > 0; --height, ++y) {
        if (y < 0) {
            src += width;
            continue;
        }
        if (y >= 24) return;
        u16 *dest = &screen->data16[y * 0x20 + x];
        int sVar2 = width;
        int i = x;
        while (sVar2 > 0) {
            if (i >= 0 && i < 0x20) {
                *dest = *src | palette;
            }
            --sVar2;
            ++i;
            ++src;
            ++dest;
        }
    }
}
#pragma opt_rotateloops reset

bool CBgMenuManager::addDynamic(EngineSelect engine, u8 bg, u8 id, u8 group, SBgMenuElementInit *init, int moveTime, int dx, int dy)
{
    int x = init->x - moveTime * dx;
    int y = init->y - moveTime * dy;
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == 0) {
            this->screenUsed[engine][bg] = true;
            dyn->engine = engine;
            dyn->id = id;
            dyn->group = group;
            dyn->bg = bg;
            dyn->x = x;
            dyn->y = y;
            dyn->w = init->w;
            dyn->h = init->h;
            if (init->boundW == 0) {
                dyn->bounds.x0 = 0;
                dyn->bounds.x1 = 0;
                dyn->bounds.y0 = 0;
                dyn->bounds.y1 = 0;
            } else {
                dyn->bounds.x0 = init->boundX;
                dyn->bounds.y0 = init->boundY;
                dyn->bounds.x1 = init->boundX + init->boundW + -1;
                dyn->bounds.y1 = init->boundY + init->boundH + -1;
            }
            dyn->show = 1;
            dyn->blink = 0;
            dyn->blinkTimer = 0;
            dyn->hideTime = 0;
            dyn->lifeTime = 0;
            dyn->moveTime = moveTime;
            dyn->deltaX = dx;
            dyn->deltaY = dy;
            dyn->palette = init->palette;
            dyn->screen = init->screen;
            this->writeScreen(engine, bg, x, y, init->w, init->h, init->palette, static_cast<u16 *>(init->screen));
            return true;
        }
    }
    return false;
}

bool CBgMenuManager::addStatic(EngineSelect engine, int bg, int priority, int id, int group, s8 x, s8 y, u8 w, u8 h, u8 palette, void *screen)
{
    bool added = false;
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (!stt->id) {
            added = true;
            this->screenUsed[engine][bg] = true;
            stt->engine = engine;
            stt->bg = bg;
            stt->priority = priority;
            stt->id = id;
            stt->group = group;
            stt->x = x;
            stt->y = y;
            stt->w = w;
            stt->h = h;
            stt->palette = palette;
            stt->show = 1;
            stt->screen = screen;
            this->writeScreen(engine, bg, x, y, w, h, palette, static_cast<u16 *>(screen));
            break;
        }
    }
    if (!added) {
        SBgMenuElementInit init;
        init.x = x;
        init.y = y;
        init.w = w;
        init.h = h;
        init.palette = palette;
        init.screen = screen;
        init.boundX = 0;
        init.boundY = 0;
        init.boundW = 0;
        init.boundH = 0;
        /* Why global instead of this? */
        added = gBgMenuManager.addDynamic(engine, bg, id, group, &init, 0, 0, 0);
    }
    return added;
}

void CBgMenuManager::deleteID(EngineSelect engine, int id, u16 lifeTime)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == id && dyn->engine == engine) {
            if (lifeTime == 0) {
                dyn->id = 0;
            } else {
                dyn->lifeTime = lifeTime;
            }
        }
    }
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (stt->id == id && stt->engine == engine) {
            stt->id = 0;
        }
    }
}

void CBgMenuManager::deleteGroup(EngineSelect engine, int group, u16 lifeTime)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (!dyn->id) continue;
        if (dyn->engine == engine && dyn->group == group) {
            if (lifeTime == 0) {
                dyn->id = 0;
            } else {
                dyn->lifeTime = lifeTime;
            }
        }
    }
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (!stt->id) continue;
        if (stt->engine == engine && stt->group == group) {
            stt->id = 0;
        }
    }
}

void CBgMenuManager::deleteAll(EngineSelect engine, u16 lifeTime)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id && dyn->engine == engine) {
            if (lifeTime == 0) {
                dyn->id = 0;
            } else {
                dyn->lifeTime = lifeTime;
            }
        }
    }
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (stt->id && stt->engine == engine) {
            stt->id = 0;
        }
    }
}

void CBgMenuManager::enable(EngineSelect engine)
{
    this->engineToggle[engine] = true;
}

void CBgMenuManager::hideID(EngineSelect engine, int id)
{
    if (!id) return;
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == id && dyn->engine == engine) {
            dyn->show = false;
        }
    }
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (stt->id == id && stt->engine == engine) {
            stt->show = false;
        }
    }
}

void CBgMenuManager::showID(EngineSelect engine, int id)
{
    if (!id) return;
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == id && dyn->engine == engine) {
            dyn->show = true;
        }
    }
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (stt->id == id && stt->engine == engine) {
            stt->show = true;
        }
    }
}

void CBgMenuManager::hideGroup(EngineSelect engine, int group)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id && dyn->engine == engine && dyn->group == group) {
            dyn->show = false;
        }
    }
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (stt->id && stt->engine == engine && stt->group == group) {
            stt->show = false;
        }
    }
}

void CBgMenuManager::showGroup(EngineSelect engine, int group)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id && dyn->engine == engine && dyn->group == group) {
            dyn->show = true;
        }
    }
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (stt->id && stt->engine == engine && stt->group == group) {
            stt->show = true;
        }
    }
}

void CBgMenuManager::updateRadio()
{
    int count = gBgMenuRadioButton.count();
    for (int i = 0; i < count; ++i) {
        SRadioButton *btn = gBgMenuRadioButton.get(i);
        if (!btn) return;
        switch (btn->state) {
        case RADIO_STATE_IDLE:
            this->hideID(ENGINE_MAIN, btn->gxActive);
            this->hideID(ENGINE_MAIN, btn->gxSelected);
            this->showID(ENGINE_MAIN, btn->gxIdle);
            break;
        case RADIO_STATE_ACTIVE:
            this->hideID(ENGINE_MAIN, btn->gxIdle);
            this->hideID(ENGINE_MAIN, btn->gxSelected);
            this->showID(ENGINE_MAIN, btn->gxActive);
            break;
        case RADIO_STATE_SELECTED:
            this->hideID(ENGINE_MAIN, btn->gxIdle);
            this->hideID(ENGINE_MAIN, btn->gxActive);
            this->showID(ENGINE_MAIN, btn->gxSelected);
            break;
        }
    }
}

void CBgMenuManager::hideTemp(EngineSelect engine, int id, u16 time)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == id && dyn->engine == engine) {
            dyn->hideTime = time;
        }
    }
}

void CBgMenuManager::setBlinking(EngineSelect engine, int id)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == id && dyn->engine == engine) {
            dyn->blink = 1;
            dyn->blinkTimer = 0;
        }
    }
}

void CBgMenuManager::setPos(EngineSelect engine, int id, int x, int y)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == id && dyn->engine == engine) {
            dyn->x = x;
            dyn->y = y;
        }
    }
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (stt->id == id && stt->engine == engine) {
            stt->x = x;
            stt->y = y;
        }
    }
}

void CBgMenuManager::setBounds(EngineSelect engine, int id, int x, int y, int w, int h)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == id && dyn->engine == engine) {
            dyn->bounds.x0 = x;
            dyn->bounds.y0 = y;
            dyn->bounds.x1 = x + w + -1;
            dyn->bounds.y1 = y + h + -1;
        }
    }
}

void CBgMenuManager::resetBounds(EngineSelect engine)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->engine == engine && dyn->bounds.x1 > 0) {
            dyn->bounds.x0 = 0;
            dyn->bounds.y0 = 0;
            dyn->bounds.x1 = 0;
            dyn->bounds.y1 = 0;
        }
    }
}

void CBgMenuManager::setFlash(EngineSelect engine, u8 base, u8 flash)
{
    this->flash[engine].base = base;
    this->flash[engine].flash = flash;
    this->flash[engine].timer = 7;
    return;
}

void CBgMenuManager::releaseButton(rbkey_t key)
{
    SRadioButton *btn = gBgMenuRadioButton.get(key);
    if (btn == NULL) return;
    gBgMenuRadioButton.releaseButton(key, true);
    u8 base = btn->gxSelected;
    if (base == 0) {
        base = btn->gxIdle;
    }
    this->setFlash(ENGINE_MAIN, base, btn->gxActive);
}

bool CBgMenuManager::isFlashActive(EngineSelect engine)
{
    return this->flash[engine].timer != 0;
}

bool CBgMenuManager::isFlashing(EngineSelect engine)
{
    return this->flash[engine].timer > 1;
}

void CBgMenuManager::updateFlash()
{
    SBgMenuFlash *flash;
    int engine;
    for (engine = 0, flash = this->flash; engine < 2; ++engine, ++flash) {
        u8 timer = flash->timer;
        if (flash->timer != 0) {
            --flash->timer;
            if (flash->timer == 0) {
                flash->base = 0;
                flash->flash = 0;
                flash->timer = 0;
            } else if (flash->timer <= 2) {
                this->hideID(static_cast<EngineSelect>(engine), flash->flash);
                this->showID(static_cast<EngineSelect>(engine), flash->base);
            } else if (flash->timer <= 5) {
                this->showID(static_cast<EngineSelect>(engine), flash->flash);
                this->hideID(static_cast<EngineSelect>(engine), flash->base);
            } else if (flash->timer <= 7) {
                this->hideID(static_cast<EngineSelect>(engine), flash->flash);
                this->showID(static_cast<EngineSelect>(engine), flash->base);
            }
        }
    }
}

bool CBgMenuManager::isAnimating(EngineSelect engine)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == 0) continue;
        if (dyn->engine == engine && dyn->moveTime > 0) return true;
    }
    return false;
}

bool CBgMenuManager::isVisible(EngineSelect engine, int id)
{
    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == 0) continue;
        if (dyn->engine == engine && dyn->id == id && dyn->show && (dyn->blink == 0 || dyn->blinkTimer < BG_MENU_BLINK_TIME_VISIBLE)) {
            return true;
        }
    }
    return false;
}

#pragma opt_rotateloops off
void CBgMenuManager::updateGraphics(EngineSelect engine)
{
    for (int i = 0; i < 3; i += 1) {
        if (this->screenUsed[engine][i]) {
            MI_CpuFillFast(&gScreens[engine][i], 0, sizeof(gScreens[engine][i]));
        }
    }
    this->updateFlash();
    struct st_sort {
        u8 priority;
        u8 elemIdx;
    } sort[80];

    int count = 0;
    SBgMenuStaticElement *stt = this->stt;
    for (int i = 0; i < BG_MENU_STATIC_ELEMENT_COUNT; ++i, ++stt) {
        if (stt->id != 0 && stt->engine == engine && stt->show) {
            if (stt->priority != 0) {
                sort[count].priority = stt->priority;
                sort[count].elemIdx = i;
                ++count;
            } else {
                this->writeScreen(engine, stt->bg, stt->x, stt->y, stt->w, stt->h, stt->palette, static_cast<u16 *>(stt->screen));
            }
        }
    }

    SBgMenuDynamicElement *dyn = this->dyn;
    for (int i = 0; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id != 0 && dyn->engine == engine) {
            if (dyn->hideTime > 0) {
                --dyn->hideTime;
                continue;
            }
            if (dyn->moveTime > 0) {
                --dyn->moveTime;
                dyn->x += dyn->deltaX;
                dyn->y += dyn->deltaY;
            }
            if (dyn->lifeTime > 0) {
                --dyn->lifeTime;
                if (dyn->lifeTime == 0) {
                    dyn->id = 0;
                }
            }
            if (!dyn->show) continue;
            if (dyn->blink) {
                ++dyn->blinkTimer;
                dyn->blinkTimer %= BG_MENU_BLINK_TIME_TOTAL;
                if (dyn->blinkTimer >= BG_MENU_BLINK_TIME_VISIBLE) continue;
            }
            this->writeScreen(engine, dyn->bg, dyn->x, dyn->y, dyn->w, dyn->h, dyn->palette, static_cast<u16 *>(dyn->screen));
        }
    }

    if (count > 0) {
        int max = count - 1;
        for (int i = max; i >= 0; i = max) {
            max = -1;
            for (int j = 0; j < i; ++j) {
                if (sort[j].priority > sort[j + 1].priority) {
                    u8 tempPrio = sort[j].priority;
                    sort[j].priority = sort[j + 1].priority;
                    sort[j + 1].priority = tempPrio;
                    u8 tempIdx = sort[j].elemIdx;
                    sort[j].elemIdx = sort[j + 1].elemIdx;
                    sort[j + 1].elemIdx = tempIdx;
                    max = j;
                }
            }
        }
        for (int i = 0; i < count; ++i) {
            SBgMenuStaticElement *stt = &this->stt[sort[i].elemIdx];
            this->writeScreen(engine, stt->bg, stt->x, stt->y, stt->w, stt->h, stt->palette, static_cast<u16 *>(stt->screen));
        }
    }
    int perm_var_1 = engine;
    for (int i = 0; i < 3; ++i) {
        if (this->screenUsed[perm_var_1][i]) {
            DC_FlushRange(&gScreens[perm_var_1][i], sizeof(gScreens[perm_var_1][i]));
        }
    }
    Graphics::ApplyBGPalettePulse(engine);
}
#pragma opt_rotateloops reset

void CBgMenuManager::draw(EngineSelect engine)
{
    Graphics::LoadBGPalette(engine);
    for (int i = 0; i < 3; ++i) {
        if (!this->screenUsed[engine][i] || this->screens[engine][i] == NULL) continue;
        if (this->engineToggle[engine]) {
            MI_CpuCopyFast(&gScreens[engine][i], this->screens[engine][i], 0x800);
        } else {
            MI_CpuFillFast(this->screens[engine][i], 0, 0x800);
        }
    }
}

int CBgMenuManager::getHit(EngineSelect engine, int x, int y)
{
    int id = 0;
    int min_bg = 3;
    SBgMenuDynamicElement *dyn;
    int i;
    for (i = 0, dyn = this->dyn; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->id == 0 || dyn->engine != engine || dyn->moveTime > 0) continue;
        if (dyn->bounds.x1 <= 0 || min_bg <= dyn->bg) continue;
        if (x >= dyn->x * 8 + dyn->bounds.x0 && x <= dyn->x * 8 + dyn->bounds.x1 && y >= dyn->y * 8 + dyn->bounds.y0 && y <= dyn->y * 8 + dyn->bounds.y1) {
            min_bg = dyn->bg;
            id = dyn->id;
        }
    }
    return id;
}

void CBgMenuManager::setScreen(EngineSelect engine, int id, void *screen)
{
    SBgMenuDynamicElement *dyn;
    int i;
    for (i = 0, dyn = this->dyn; i < BG_MENU_DYNAMIC_ELEMENT_COUNT; ++i, ++dyn) {
        if (dyn->engine == engine && dyn->id == id) {
            dyn->screen = screen;
            return;
        }
    }
}

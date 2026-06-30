#pragma once

#include <nitro/types.h>

#include "CBgMenuRadioButton.hpp"
#include "graphics.hpp"

#define BG_MENU_DYNAMIC_ELEMENT_COUNT 48
#define BG_MENU_STATIC_ELEMENT_COUNT 80

#define BG_MENU_BLINK_TIME_VISIBLE 18
#define BG_MENU_BLINK_TIME_INVISIBLE 6
#define BG_MENU_BLINK_TIME_TOTAL (BG_MENU_BLINK_TIME_VISIBLE + BG_MENU_BLINK_TIME_INVISIBLE)

typedef struct {
    s16 x;
    s16 y;
    u16 w;
    u16 h;
    u16 boundX;
    u16 boundY;
    u16 boundW;
    u16 boundH;
    u8 palette;
    void *screen;
} SBgMenuElementInit;

typedef struct {
    u8 engine;
    u8 id;
    u8 group;
    u8 bg;
    u8 palette;
    bool show;
    bool blink;
    u8 blinkTimer;
    u16 hideTime;
    u16 lifeTime;
    s32 x;
    s32 y;
    s32 w;
    s32 h;
    struct {
        s32 x0;
        s32 y0;
        s32 x1;
        s32 y1;
    } bounds;
    s32 moveTime;
    s32 deltaX;
    s32 deltaY;
    void *screen;
} SBgMenuDynamicElement;

typedef struct {
    u8 engine;
    u8 id;
    u8 group;
    u8 bg;
    u8 priority;
    s8 x;
    s8 y;
    u8 w;
    u8 h;
    u8 palette;
    bool show;
    // u8 pad_b[1];
    void *screen;
} SBgMenuStaticElement;

typedef struct {
    u8 base;
    u8 flash;
    u8 timer;
} SBgMenuFlash;

class CBgMenuManager
{
public:
    virtual ~CBgMenuManager();
    void init(EngineSelect engine);
    void finalize(EngineSelect engine);
    void setScreens(EngineSelect engine, void *bgA, void *bgB, void *bgC);

    bool addDynamic(EngineSelect engine, u8 bg, u8 id, u8 group, SBgMenuElementInit *param_5, int param_6, int dx, int dy);
    bool addStatic(EngineSelect engine, int bg, int priority, int id, int group, s8 x, s8 y, u8 width, u8 height, u8 palette, void *screen);
    void deleteID(EngineSelect engine, int id, u16 lifeTime);
    void deleteGroup(EngineSelect engine, int group, u16 lifeTime);
    void deleteAll(EngineSelect engine, u16 lifeTime);

    void hideID(EngineSelect engine, int id);
    void showID(EngineSelect engine, int id);
    void hideGroup(EngineSelect engine, int group);
    void showGroup(EngineSelect engine, int group);
    void updateRadio();
    void hideTemp(EngineSelect engine, int id, u16 time);
    void setBlinking(EngineSelect engine, int id);
    void setPos(EngineSelect engine, int id, int x, int y);
    void setBounds(EngineSelect engine, int id, int x, int y, int w, int h);
    void resetBounds(EngineSelect engine);
    void setFlash(EngineSelect engine, u8 base, u8 flash);
    void releaseButton(rbkey_t key);
    bool isFlashActive(EngineSelect engine);
    bool isFlashing(EngineSelect engine);
    void updateFlash();
    bool isAnimating(EngineSelect engine);
    bool isVisible(EngineSelect engine, int id);
    void updateGraphics(EngineSelect engine);
    void draw(EngineSelect engine);
    int getHit(EngineSelect engine, int x, int y);
    void setScreen(EngineSelect engine, int id, void *screen);

private:
    void writeScreen(EngineSelect engine, int bg, s32 x, s32 y, s32 width, s32 height, u16 palette, u16 *data);
    void enable(EngineSelect engine);
    u16 *screens[2][3];
    u8 engineToggle[2];
    bool screenUsed[2][3];
    SBgMenuDynamicElement dyn[BG_MENU_DYNAMIC_ELEMENT_COUNT];
    SBgMenuStaticElement stt[BG_MENU_STATIC_ELEMENT_COUNT];
    SBgMenuFlash flash[2];
    // u8 pad_10da[2];
};

extern CBgMenuManager gBgMenuManager;
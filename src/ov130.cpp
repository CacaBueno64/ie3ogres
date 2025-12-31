#include "ov130.hpp"

const ov130_Init ov130_0212AB60 = ov130_Init(0x4e2000, 0x0000EA3C, 0x800, 0x00009CCD, 0x2000, 0x840800);

void InitAlloc(void)
{
    void *lo = OS_GetMainArenaLo();
    void *hi = OS_GetMainArenaHi();
    MI_CpuClearFast(lo, (u32)hi - (u32)lo);
    void *newLo = OS_InitAlloc(OS_ARENA_MAIN, lo, hi, 2);
    OS_SetMainArenaLo(newLo);
}

void Config_Init(void)
{
    gConfig.clear();
    gConfig.init();
    gConfig.openFile("INAZUMA.INI");

    unk_0209A1A8.izType                   = gConfig.getParam("IZ_TYPE");
    unk_0209A1A8.geometryUnderflowCheck   = gConfig.getParam("GEOMETRY_UNDERFLOW_CHECK");
    unk_0209A1A8.menuMovieMax             = gConfig.getParam("MENU_MOVIE_MAX");
    unk_0209A1A8.rpgMoveAccelUp           = gConfig.getParam("RPG_MOVEACCEL_UP");
    unk_0209A1A8.rpgMoveAccelDown         = gConfig.getParam("RPG_MOVEACCEL_DOWN");
    unk_0209A1A8.rpgMoveSpeed             = gConfig.getParam("RPG_MOVESPEED");
    unk_0209A1A8.rpgStandDist             = gConfig.getParam("RPG_STANDDIST");
    unk_0209A1A8.rpgGiveupMoveDist        = gConfig.getParam("RPG_GIVEUPMOVE_DIST");
    unk_0209A1A8.rpgMinimapScrollVelocity = gConfig.getParam("RPG_MINIMAP_SCROLL_VEROCITY");
}

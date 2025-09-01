#include "ov130.hpp"

const UnkStruct_ov130_0212AB60 ov130_0212AB60 = UnkStruct_ov130_0212AB60(
    0x4e2000,
    0x0000EA3C,
    0x800,
    0x00009CCD,
    0x2000,
    0x840800
);

#ifdef __cplusplus
extern "C" {
#endif

void FUN_ov130_0212a9c0(void)
{
    void *lo = OS_GetArenaLo(OS_ARENA_MAIN);
    void *hi = OS_GetArenaHi(OS_ARENA_MAIN);
    MI_CpuClearFast(lo, (u32)hi - (u32)lo);
    void *newLo = OS_InitAlloc(OS_ARENA_MAIN, lo, hi, 2);
    OS_SetArenaLo(OS_ARENA_MAIN, newLo);
}

extern UnkStruct_0209A1A8 unk_0209A1A8;

#ifdef __cplusplus
} /* extern "C" */
#endif

void FUN_ov130_0212aa14(void)
{
    gL5Config.clear();
    gL5Config.init();
    gL5Config.openFile("INAZUMA.INI");

    unk_0209A1A8.izType                   = gL5Config.getParam("IZ_TYPE");
    unk_0209A1A8.geometryUnderflowCheck   = gL5Config.getParam("GEOMETRY_UNDERFLOW_CHECK");
    unk_0209A1A8.menuMovieMax             = gL5Config.getParam("MENU_MOVIE_MAX");
    unk_0209A1A8.rpgMoveAccelUp           = gL5Config.getParam("RPG_MOVEACCEL_UP");
    unk_0209A1A8.rpgMoveAccelDown         = gL5Config.getParam("RPG_MOVEACCEL_DOWN");
    unk_0209A1A8.rpgMoveSpeed             = gL5Config.getParam("RPG_MOVESPEED");
    unk_0209A1A8.rpgStandDist             = gL5Config.getParam("RPG_STANDDIST");
    unk_0209A1A8.rpgGiveupMoveDist        = gL5Config.getParam("RPG_GIVEUPMOVE_DIST");
    unk_0209A1A8.rpgMinimapScrollVelocity = gL5Config.getParam("RPG_MINIMAP_SCROLL_VEROCITY");
}

// clang-format off
#include "ov130.hpp"

#include <nitro/mi/memory.h>        // for MI_CpuClearFast
#include <nitro/os/common/alloc.h>  // for OS_InitAlloc
#include <nitro/os/common/arena.h>  // for OS_GetMainArenaHi, OS_GetMainArenaLo, OS_SetMainArenaLo, OS_ARENA_MAIN

#include "CConfig.hpp"              // for CConfig, gConfig
#include "init/arm9_init.hpp"       // IWYU pragma: keep
// clang-format on

void InitArena(void)
{
    void *lo = OS_GetMainArenaLo();
    void *hi = OS_GetMainArenaHi();
    MI_CpuClearFast(lo, reinterpret_cast<u32>(hi) - reinterpret_cast<u32>(lo));
    void *newLo = OS_InitAlloc(OS_ARENA_MAIN, lo, hi, 2);
    OS_SetMainArenaLo(newLo);
}

void InitConfig(void)
{
    gConfig.clear();
    gConfig.init();
    gConfig.openFile("INAZUMA.INI");

    unk_0209A1A8.izType = gConfig.getParam("IZ_TYPE");
    unk_0209A1A8.geometryUnderflowCheck = gConfig.getParam("GEOMETRY_UNDERFLOW_CHECK");
    unk_0209A1A8.menuMovieMax = gConfig.getParam("MENU_MOVIE_MAX");
    unk_0209A1A8.rpgMoveAccelUp = gConfig.getParam("RPG_MOVEACCEL_UP");
    unk_0209A1A8.rpgMoveAccelDown = gConfig.getParam("RPG_MOVEACCEL_DOWN");
    unk_0209A1A8.rpgMoveSpeed = gConfig.getParam("RPG_MOVESPEED");
    unk_0209A1A8.rpgStandDist = gConfig.getParam("RPG_STANDDIST");
    unk_0209A1A8.rpgGiveupMoveDist = gConfig.getParam("RPG_GIVEUPMOVE_DIST");
    unk_0209A1A8.rpgMinimapScrollVelocity = gConfig.getParam("RPG_MINIMAP_SCROLL_VEROCITY");
}

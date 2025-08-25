#include "init.hpp"
#include "ov130.hpp"
#include <nitro.h>

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
    MIi_CpuClearFast(0, lo, (u32)hi - (u32)lo);
    void *newLo = OS_InitAlloc(OS_ARENA_MAIN, lo, hi, 2);
    OS_SetArenaLo(OS_ARENA_MAIN, newLo);
}

extern void _ZN8L5Config5clearEv(void *);
extern void _ZN8L5Config4initEv(void *);
extern void _ZN8L5Config8initFileEPc(void *, char *);
extern u32 _ZN8L5Config8getParamEPc(void *, char *);
extern u32 unk_02099F78;

extern UnkStruct_0209A1A8 unk_0209A1A8;

void FUN_ov130_0212aa14(void)
{
    UnkStruct_0209A1A8* ptr = &unk_0209A1A8;
    
    _ZN8L5Config5clearEv(&unk_02099F78);
    _ZN8L5Config4initEv(&unk_02099F78);
    
    _ZN8L5Config8initFileEPc(&unk_02099F78, "INAZUMA.INI");
    
    ptr->izType                   = _ZN8L5Config8getParamEPc(&unk_02099F78, "IZ_TYPE");
    ptr->geometryUnderflowCheck   = _ZN8L5Config8getParamEPc(&unk_02099F78, "GEOMETRY_UNDERFLOW_CHECK");
    ptr->menuMovieMax             = _ZN8L5Config8getParamEPc(&unk_02099F78, "MENU_MOVIE_MAX");
    ptr->rpgMoveAccelUp           = _ZN8L5Config8getParamEPc(&unk_02099F78, "RPG_MOVEACCEL_UP");
    ptr->rpgMoveAccelDown         = _ZN8L5Config8getParamEPc(&unk_02099F78, "RPG_MOVEACCEL_DOWN");
    ptr->rpgMoveSpeed             = _ZN8L5Config8getParamEPc(&unk_02099F78, "RPG_MOVESPEED");
    ptr->rpgStandDist             = _ZN8L5Config8getParamEPc(&unk_02099F78, "RPG_STANDDIST");
    ptr->rpgGiveupMoveDist        = _ZN8L5Config8getParamEPc(&unk_02099F78, "RPG_GIVEUPMOVE_DIST");
    ptr->rpgMinimapScrollVelocity = _ZN8L5Config8getParamEPc(&unk_02099F78, "RPG_MINIMAP_SCROLL_VEROCITY");
}

#ifdef __cplusplus
} /* extern "C" */
#endif


#ifdef __cplusplus
extern "C" {
#endif

#include <ov130.h>
#include <nitro.h>
#include <global.h>

void FUN_ov130_0212a9c0(void)
{
    void *lo = OS_GetArenaLo(OS_ARENA_MAIN);
    void *hi = OS_GetArenaHi(OS_ARENA_MAIN);
    MIi_CpuClearFast(0, lo, (u32)hi - (u32)lo);
    void *newLo = OS_InitAlloc(OS_ARENA_MAIN, lo, hi, 2);
    OS_SetArenaLo(OS_ARENA_MAIN, newLo);
}

extern void FUN_020417dc(void *);
extern void FUN_020418e4(void *);
extern void FUN_020417e8(void *, char[]);
extern u32 L5_IniFileGetParam(void *, char[]);

extern UnkStruct_0209A1A8 unk_0209A1A8;

extern u32 unk_02099F78;

void FUN_ov130_0212aa14(void)
{
    UnkStruct_0209A1A8* ptr = &unk_0209A1A8;
    
    FUN_020417dc(&unk_02099F78);
    FUN_020418e4(&unk_02099F78);
    
    FUN_020417e8(&unk_02099F78, "INAZUMA.INI");
    
    ptr->izType                   = L5_IniFileGetParam(&unk_02099F78, "IZ_TYPE");
    ptr->geometryUnderflowCheck   = L5_IniFileGetParam(&unk_02099F78, "GEOMETRY_UNDERFLOW_CHECK");
    ptr->menuMovieMax             = L5_IniFileGetParam(&unk_02099F78, "MENU_MOVIE_MAX");
    ptr->rpgMoveAccelUp           = L5_IniFileGetParam(&unk_02099F78, "RPG_MOVEACCEL_UP");
    ptr->rpgMoveAccelDown         = L5_IniFileGetParam(&unk_02099F78, "RPG_MOVEACCEL_DOWN");
    ptr->rpgMoveSpeed             = L5_IniFileGetParam(&unk_02099F78, "RPG_MOVESPEED");
    ptr->rpgStandDist             = L5_IniFileGetParam(&unk_02099F78, "RPG_STANDDIST");
    ptr->rpgGiveupMoveDist        = L5_IniFileGetParam(&unk_02099F78, "RPG_GIVEUPMOVE_DIST");
    ptr->rpgMinimapScrollVelocity = L5_IniFileGetParam(&unk_02099F78, "RPG_MINIMAP_SCROLL_VEROCITY");
}

//extern u32 ov130_0212AB60[6];
//
//static void FUN_ov130_Init(void) {
//    ov130_0212AB60[4] = FX_Sqrt(0x2000);
//    ov130_0212AB60[3] = FX_Sqrt(0x00009CCD);
//    ov130_0212AB60[2] = 0x800;
//    ov130_0212AB60[1] = 0x0000EA3C;
//    ov130_0212AB60[0] = 0x4e2000;
//    ov130_0212AB60[5] = 0x840800;
//}
//
//#define NitroStaticInit FUN_ov130_Init
//#include <nitro/sinit.h>
extern int ov130_0212AB60[6];
#ifdef __cplusplus
} /* extern "C" */
#endif

class ov130_0212AB00 {
public:
    ov130_0212AB00() {
        ov130_0212AB60[4] = FX_Sqrt(0x2000);
        ov130_0212AB60[3] = FX_Sqrt(0x00009CCD);
        ov130_0212AB60[2] = 0x800;
        ov130_0212AB60[1] = 0x0000EA3C;
        ov130_0212AB60[0] = 0x4e2000;
        ov130_0212AB60[5] = 0x840800;
    }
};
ov130_0212AB00 cls = ov130_0212AB00();

#include "ov130.h"
#include "nitro.h"

extern u32 OS_GetArenaLo(u32);
extern u32 OS_GetArenaHi(u32);
extern void MIi_CpuClearFast(u32 data, u32 destp, u32 size);
extern u32 FUN_02002dcc(u32, u32, u32, u32);
extern void OS_SetArenaLo(u32, u32);

void FUN_ov130_0212a9c0(void)
{
    u32 r0, r5;
    r5 = OS_GetArenaLo(0);
    r0 = OS_GetArenaHi(0);
    MIi_CpuClearFast(0, r5, r0 - r5);
    r0 = FUN_02002dcc(0, r5, r0, 2);
    OS_SetArenaLo(0, r0);
}


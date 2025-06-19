#include "ov130.h"
#include "nitro/types.h"

extern u32 FUN_02002914(u32);
extern u32 FUN_02002900(u32);
extern void MIi_CpuClearFast(u32, u32, u32);
extern u32 FUN_02002dcc(u32, u32, u32, u32);
extern void FUN_02002ac0(u32, u32);

void FUN_ov130_0212a9c0(void)
{
    u32 r0, r5;
    r5 = FUN_02002914(0);
    r0 = FUN_02002900(0);
    MIi_CpuClearFast(0, r5, r0 - r5);
    r0 = FUN_02002dcc(0, r5, r0, 2);
    FUN_02002ac0(0, r0);
}

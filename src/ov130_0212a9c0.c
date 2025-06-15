#include "ov130_0212a9c0.h"

extern int FUN_02002914(int);
extern int FUN_02002900(int);
extern void FUN_0200787c(int, int, int);
extern int FUN_02002dcc(int, int, int, int);
extern void FUN_02002ac0(int, int);

void FUN_ov130_0212a9c0(void)
{
    int r0, r5;
    r0 = FUN_02002914(0x0);
    r5 = r0;
    r0 = FUN_02002900(0x0);
    FUN_0200787c(0x0, r5, r0 - r5);
    r0 = FUN_02002dcc(0x0, r5, r0, 0x2);
    FUN_02002ac0(0x0, r0);
    return;
}
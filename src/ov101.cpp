#include "ov101.hpp"
#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

extern void FUN_ov16_020f338c(u32 *, u32);
extern void FUN_ov101_02124d4c(u32 *);

void FUN_ov101_02124ff8(u32 *ptr)
{
    FUN_ov16_020f338c(&ptr[4], 1);
    FUN_ov101_02124d4c(ptr);
}

extern void operator_delete(void *ptr);

void * FUN_ov101_02125018(void *ptr)
{
    operator_delete(ptr);
    return ptr;
}

void FUN_ov101_0212502c(void) { }

extern u32 ov101_021250A0[6];

void FUN_ov101_Init(void)
{
    ov101_021250A0[5] = FX_Sqrt(0x2000);
    ov101_021250A0[4] = FX_Sqrt(0x00009CCD);
    ov101_021250A0[3] = 0x800;
    ov101_021250A0[2] = 0x0000EA3C;
    ov101_021250A0[1] = 0x4E2000;
    ov101_021250A0[0] = 0x840800;
}

#define NitroStaticInit FUN_ov101_Init
#include <nitro/sinit.h>

#ifdef __cplusplus
} /* extern "C" */
#endif

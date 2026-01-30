#include "ov101.hpp"

#ifdef __cplusplus
extern "C" {
#endif

extern void FUN_ov101_02124d4c(u32 *);

void FUN_ov101_02124ff8(u32 *ptr)
{
    Archive::Close((SFileData *)&ptr[4], 1);
    FUN_ov101_02124d4c(ptr);
}

extern void _ZdlPv(void *ptr);

void *FUN_ov101_02125018(void *ptr)
{
    _ZdlPv(ptr);
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

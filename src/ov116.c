#include "ov116.h"
#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

extern void operator_delete(void *ptr);

void *FUN_ov116_02124e24(void *ptr)
{
    operator_delete(ptr);
    return ptr;
}

void FUN_ov116_02124e38(void) { }

extern u32 ov116_02124EA0[6];

static void FUN_ov116_Init(void)
{
    ov116_02124EA0[5] = FX_Sqrt(0x2000);
    ov116_02124EA0[4] = FX_Sqrt(0x00009CCD);
    ov116_02124EA0[3] = 0x800;
    ov116_02124EA0[2] = 0x0000EA3C;
    ov116_02124EA0[1] = 0x4E2000;
    ov116_02124EA0[0] = 0x840800;
}

#define NitroStaticInit FUN_ov116_Init
#include <nitro/sinit.h>

#ifdef __cplusplus
} /* extern "C" */
#endif

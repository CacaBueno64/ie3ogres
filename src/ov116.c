#include "ov116.h"
#include "nitro.h"

extern void FUN_0201e078(void);

u32 FUN_ov116_02124e24(u32 param1) {
    FUN_0201e078();
    return param1;
}

void FUN_ov116_02124e38(void) { }

extern u32 ov116_02124EA0[6];

extern u32 FX_Sqrt(u32);

static void FUN_ov116_Init(void) {
    ov116_02124EA0[5] = FX_Sqrt(0x2000);
    ov116_02124EA0[4] = FX_Sqrt(0x00009CCD);
    ov116_02124EA0[3] = 0x800;
    ov116_02124EA0[2] = 0x0000EA3C;
    ov116_02124EA0[1] = 0x4E2000;
    ov116_02124EA0[0] = 0x840800;
}

#define NitroStaticInit FUN_ov116_Init
#include "sinit.h"

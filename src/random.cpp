// clang-format off
#include "random.hpp"

#include <nitro/gx/gx.h>                // for GX_GetVCount
#include <nitro/mi/memory.h>            // for MI_CpuCopy8
#include <nitro/os/ARM9/cache.h>        // for DC_FlushRange
#include <nitro/os/common/interrupt.h>  // for OS_GetVBlankCount
// clang-format on

namespace Random
{

void Init(void)
{
    MATH_InitRand32(&gRNGStateA, OS_GetVBlankCount() + GX_GetVCount());
    MATH_InitRand32(&gRNGStateB, OS_GetVBlankCount() + GX_GetVCount());
}

u32 RandA(u32 max)
{
    if (max == 0) {
        return 0;
    }

    return MATH_Rand32(&gRNGStateA, max);
}

u32 RandB(u32 max)
{
    if (max == 0) {
        return 0;
    }

    return MATH_Rand32(&gRNGStateB, max);
}

MATHRandContext32 *GetStateA(MATHRandContext32 *dst)
{
    if (dst) {
        MI_CpuCopy8(&gRNGStateA, dst, sizeof(gRNGStateA));
        DC_FlushRange(dst, sizeof(*dst));
    }

    return &gRNGStateA;
}

void SetStateA(MATHRandContext32 *src)
{
    if (src) {
        MI_CpuCopy8(src, &gRNGStateA, sizeof(*src));
        DC_FlushRange(&gRNGStateA, sizeof(gRNGStateA));
    }
}

void Tick(void)
{
    RandA(1);
    RandB(1);
}

} /* namespace Random */

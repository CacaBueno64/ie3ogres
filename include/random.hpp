#pragma once

// clang-format off
#include <nitro/math/rand.h>  // for MATHRandContext32
#include <nitro/types.h>      // for u32
// clang-format on

extern MATHRandContext32 gRNGStateA;
extern MATHRandContext32 gRNGStateB;

namespace Random {

void Init(void);
u32 RandA(u32 max);
u32 RandB(u32 max);
MATHRandContext32 *GetStateA(MATHRandContext32 *dst);
void SetStateA(MATHRandContext32 *src);
void Tick(void);

} /* namespace Random */

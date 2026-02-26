#ifndef IE3OGRES_RANDOM_H
#define IE3OGRES_RANDOM_H

#include <nitro.h>

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

#endif //IE3OGRES_RANDOM_H

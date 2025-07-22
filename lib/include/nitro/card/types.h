#ifndef NITRO_CARD_TYPES_H_
#define NITRO_CARD_TYPES_H_

#include <nitro/misc.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C"
{
#endif

typedef struct CARDRomRegion
{
    u32 offset;
    u32 length;
}
CARDRomRegion;

#ifdef __cplusplus
} // extern "C"
#endif

#endif // NITRO_CARD_TYPES_H_

#ifndef IE3OGRES_COMMON_H
#define IE3OGRES_COMMON_H

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

u32 Common_CalcCRC32(const void *data, u32 dataLength);
s32 FUN_0208596c(FSFile *file, void *dst, s32 len);
BOOL FUN_020859f8(void **dst, FSFileID file_id, s32 src, s32 len);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif //IE3OGRES_COMMON_H

#ifndef IE3OGRES_COMMON_H
#define IE3OGRES_COMMON_H

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    void **unk0;
    void **unk4;
    u32 unk8;
    FSFileID unkC;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} UnkStruct_020BC504_08;

typedef struct {
    s32 unk0;
    u32 unk4;
    UnkStruct_020BC504_08 *unk8;
} UnkStruct_020BC504;

u32 Common_CalcCRC32(const void *data, u32 dataLength);
s32 FUN_0208596c(FSFile *file, void *dst, s32 len);
BOOL FUN_020859f8(void **dst, FSFileID file_id, s32 src, s32 len);
void FUN_02085ab4(void);
s32 Common_OpenFileRead(void *dst, const char *filepath, s32 offset, s32 len);
UnkStruct_020BC504_08 *FUN_02085c6c(u8 *param0);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif //IE3OGRES_COMMON_H

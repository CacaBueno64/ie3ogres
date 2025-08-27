#ifdef __cplusplus
extern "C" {
#endif

#include "l5common.h"

extern void *FUN_020866d8(s32 len, s32 param1);
extern MATHCRC32Table unk_020BC738;

s32 FUN_0208596c(FSFile *file, void* dst, s32 len)
{
    s32 temp_r3 = len + 0x3FFF;
    s32 unk = (s32) (temp_r3 + ((u32) (temp_r3 >> 0xD) >> 0x12)) >> 0xE;
    s32 totalRead = 0;
    s32 i = 0;
    if (unk > 0) {
        do {
            s32 r2 = 0x4000;
            if (len < 0x4000) {
                r2 = len;
            }
            len -= r2;
            s32 len = FS_ReadFile(file, (void *)((int)dst + (i << 14)), r2);
            i++;
            totalRead += len;
        } while (i < unk);
    }

    return totalRead;
}

u32 Common_CalcCRC32(const void *data, u32 dataLength)
{
    return MATH_CalcCRC32(&unk_020BC738, data, dataLength);
}

BOOL FUN_020859f8(void **dst, FSFileID file_id, s32 src, s32 len)
{
    FSFile file;
    FS_InitFile(&file);
    if (!FS_OpenFileFast(&file, file_id)) {
        OS_Terminate();
    }
    if (len <= 0) {
        len = FS_GetLength(&file);
    }
    if (src > 0) {
        FS_SeekFile(&file, src, FS_SEEK_SET);
    }
    if (*dst == NULL) {
        *dst = FUN_020866d8(len, -1);
    }

    BOOL result = FUN_0208596c(&file, *dst, len);
    (void)FS_CloseFile(&file);

    return result;
}

#ifdef __cplusplus
} /* extern "C" */
#endif

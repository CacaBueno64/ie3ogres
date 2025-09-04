#ifdef __cplusplus
extern "C" {
#endif

#include "l5common.h"

extern void *FUN_020866d8(s32 len, s32 param1);
extern void FUN_02086738(void *ptr);
extern MATHCRC32Table unk_020BC738;
extern UnkStruct_020BC504 unk_020BC504;

s32 FUN_0208596c(FSFile *file, void *dst, s32 len)
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
            s32 len = FS_ReadFile(file, (void *)((int)dst + (i * 0x4000)), r2);
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

s32 FUN_020859f8(void **dst, FSFileID file_id, s32 offset, s32 len)
{
    FSFile file;
    FS_InitFile(&file);

    if (!FS_OpenFileFast(&file, file_id)) {
        OS_Terminate();
    }
    if (len <= 0) {
        len = FS_GetLength(&file);
    }
    if (offset > 0) {
        FS_SeekFile(&file, offset, FS_SEEK_SET);
    }
    if (*dst == NULL) {
        *dst = FUN_020866d8(len, -1);
    }

    s32 totalRead = FUN_0208596c(&file, *dst, len);
    (void)FS_CloseFile(&file);

    return totalRead;
}

void FUN_02085ab4(void)
{
    FSFile file;
    s32 r9 = 0;
    UnkStruct_020BC504_08 *unk_020BC504_08 = unk_020BC504.unk8;
    FS_InitFile(&file);

    do {
        OS_Sleep(1);
        if (unk_020BC504_08->unk0 == NULL) {
            continue;
        }
        void *src = unk_020BC504_08->unk4 ? unk_020BC504_08->unk4 : unk_020BC504_08->unk0;
        (void)FUN_020859f8(&src, unk_020BC504_08->unkC, unk_020BC504_08->unk14, unk_020BC504_08->unk18);
        if (unk_020BC504_08->unk4 != NULL) {
            switch (unk_020BC504_08->unk1C & MI_COMPRESSION_TYPE_MASK) {
                case MI_COMPRESSION_LZ:
                    MI_UncompressLZ8(src, unk_020BC504_08->unk0);
                    break;
                case MI_COMPRESSION_HUFFMAN:
                    MI_UncompressHuffman(src, unk_020BC504_08->unk0);
                    break;
                default:
                    OS_Terminate();
            }
            FUN_02086738(unk_020BC504_08->unk4);
            DC_FlushRange(unk_020BC504_08->unk0, unk_020BC504_08->unk1C >> 8);
        }
        r9 = (r9 + 1) % 56;
        unk_020BC504_08->unk0 = NULL;
        unk_020BC504_08 = unk_020BC504.unk8 + r9;
    } while (TRUE);
}

s32 Common_OpenFileRead(void *dst, const char *filepath, s32 offset, s32 len)
{
    FSFile file;
    FS_InitFile(&file);

    if (!FS_OpenFile(&file, filepath)) {
        OS_Terminate();
    }
    if (len <= 0) {
        len = FS_GetLength(&file);
    }
    if (offset > 0) {
        (void)FS_SeekFile(&file, offset, FS_SEEK_SET);
    }
    if (*(size_t *)dst == NULL) {
        *(size_t *)dst = (size_t)FUN_020866d8(len, -1);
    }

    void *ptr = (void *)(*(size_t *)dst); //this is ugly, i know
    s32 read = FUN_0208596c(&file, ptr, len);
    FS_CloseFile(&file);

    return read;
}

UnkStruct_020BC504_08 *FUN_02085c6c(u8 *param0)
{
    UnkStruct_020BC504_08 *ptr = &unk_020BC504.unk8[unk_020BC504.unk0];

    if (ptr->unk0 != NULL) {
        OS_Terminate();
    }
    if (param0 != NULL) {
        *param0 = unk_020BC504.unk0;
    }
    unk_020BC504.unk0 = (unk_020BC504.unk0 + 1) % 56;

    return ptr;
}

#ifdef __cplusplus
} /* extern "C" */
#endif

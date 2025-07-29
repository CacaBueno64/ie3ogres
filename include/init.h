#ifndef IE3OGRES_INIT_H
#define IE3OGRES_INIT_H

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u8      unk0[0x30];
    void *  unk30;
    u8      unk34[0x04];
    void *  unk38;
    u8      unk3C[0x04];
    s32     unk40;
    u8      unk44[0x38];
    u16     unk7C;
    u16     unk7E;
    s32     unk80;
    u8      unk84[0x10];
    void *  unk94;
    u8      unk98[0x0C];
    u32     unkA4;
    u8      unkA8[0x08];
    u32     unkB0;
    void *  unkB4;
    u8      unkB8[0x04];
    void *  unkBC;
    u32     unkC0;
} UnkStruct_02099E8C;

void FUN_02028fac(void);
void FUN_02029078(void);
void InitCommon(void);
void FUN_02029140(void);
void VramClear(void);
void InitInterrupt(void);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif //IE3OGRES_INIT_H

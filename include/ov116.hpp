#ifndef IE3OGRES_OV116_H
#define IE3OGRES_OV116_H

#include <nitro.h>

class UnkStruct_ov116_02124EA0 {
public:
    fx32 unk0;
    fx32 unk1;
    fx32 unk2;
    fx32 unk3;
    fx32 unk4;
    fx32 unk5;
    fx32 unk6;
    fx32 unk7;

    UnkStruct_ov116_02124EA0(fx32 param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5)
    {
        this->unk5 = FX_Sqrt(param5);
        this->unk4 = FX_Sqrt(param4);
        this->unk3 = param3;
        this->unk2 = param2;
        this->unk1 = param1;
        this->unk0 = param0;
    }
};

#ifdef __cplusplus
extern "C" {
#endif

void FUN_ov116_02124d00(void *);
void *FUN_ov116_02124e24(void *);
void FUN_ov116_02124e38(void);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif //IE3OGRES_OV116_H

#ifndef IE3OGRES_OV130_H
#define IE3OGRES_OV130_H

#include <nitro.h>

class UnkStruct_ov130_0212AB60 {
public:
    fx32 unk0;
    fx32 unk1;
    fx32 unk2;
    fx32 unk3;
    fx32 unk4;
    fx32 unk5;

    UnkStruct_ov130_0212AB60(fx32 param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5)
    {
        this->unk4 = FX_Sqrt(param4);
        this->unk3 = FX_Sqrt(param3);
        this->unk2 = param2;
        this->unk1 = param1;
        this->unk0 = param0;
        this->unk5 = param5;
    }
};

#ifdef __cplusplus
extern "C" {
#endif

void FUN_ov130_0212a9c0(void);
void FUN_ov130_0212aa14(void);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif //IE3OGRES_OV130_H

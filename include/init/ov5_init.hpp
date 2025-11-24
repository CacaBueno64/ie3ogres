#ifndef IE3OGRES_OV5_INIT_H
#define IE3OGRES_OV5_INIT_H

#pragma once

#include <nitro.h>

class ov5_Init {
    public:
        ov5_Init(fx32 param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5)
        {
            this->unk5 = FX_Sqrt(param4);
            this->unk4 = FX_Sqrt(param3);
            this->unk3 = param2;
            this->unk2 = param1;
            this->unk1 = param0;
            this->unk0 = param5;
        }
    private:
    fx32 unk0; fx32 unk1; fx32 unk2; fx32 unk3; fx32 unk4; fx32 unk5;
};

#endif //IE3OGRES_OV5_INIT_H

#ifndef IE3OGRES_OV130_H
#define IE3OGRES_OV130_H

#include <nitro.h>

#include "init.hpp"
#include "l5config.hpp"

class ov130_Init {
    public:
        ov130_Init(fx32 param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5)
        {
            this->unk4 = FX_Sqrt(param4);
            this->unk3 = FX_Sqrt(param3);
            this->unk2 = param2;
            this->unk1 = param1;
            this->unk0 = param0;
            this->unk5 = param5;
        }
    private:
    fx32 unk0; fx32 unk1; fx32 unk2; fx32 unk3; fx32 unk4; fx32 unk5;
};

void InitAlloc(void);
void Config_Init(void);

#endif //IE3OGRES_OV130_H

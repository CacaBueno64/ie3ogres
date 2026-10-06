#pragma once

#include <nitro/types.h>

#include "CNsbResourceMan.hpp"

class CModelCfg
{
public:
    virtual ~CModelCfg() {}
    virtual void reset(void);
    virtual void init(SNsbResource *param1);
    virtual void vFUN_10(void);
    virtual void vFUN_14(void);
    virtual void vFUN_18(void);
    virtual void vFUN_1C(void);
    virtual void destroy(void);
    virtual void vFUN_24(void);

    u8 unk4[0x114];
};

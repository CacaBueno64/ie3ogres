#ifndef IE3OGRES_ARM9_INIT_H
#define IE3OGRES_ARM9_INIT_H

#pragma once

#include <nitro.h>

static inline fx32 init_dummy(fx32 v) { return v; }

static const fx32 init_var0 = FX_Sqrt(0x2000);
static const fx32 init_var1 = FX_Sqrt(0x9ccd);
static const fx32 init_var2 = init_dummy(0x800);
static const fx32 init_var3 = init_dummy(0xea3c);
static const fx32 init_var4 = init_dummy(0x4e2000);
static const fx32 init_var5 = init_dummy(0x840800);

#endif //IE3OGRES_ARM9_INIT_H

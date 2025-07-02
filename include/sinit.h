
#include "nitro.h"

static void NitroStaticInit(void);
#pragma define_section SINIT ".sinit" abs32 RWX
#pragma section SINIT begin
SDK_FORCE_EXPORT static void (*NitroStaticInit_[])(void) = { NitroStaticInit };
#pragma section SINIT end

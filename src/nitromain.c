#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

void NitroMain(void);
extern void L5_Main(void);

void NitroMain(void)
{
    L5_Main();
}

#ifdef __cplusplus
} /* extern "C" { */
#endif

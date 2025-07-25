#ifndef NITRO_MISC_H_
#define NITRO_MISC_H_

#ifdef __cplusplus
extern "C" {
#endif

void    OSi_ReferSymbol(void *symbol);
#define SDK_REFER_SYMBOL(symbol) OSi_ReferSymbol((void*)(symbol))

#define SDK_MIDDLEWARE_STRING(vender, module) "[SDK+" vender ":" module "]"
#define SDK_DEFINE_MIDDLEWARE(id, vender, module) static char id [] = SDK_MIDDLEWARE_STRING(vender, module)
#define SDK_USING_MIDDLEWARE(id) SDK_REFER_SYMBOL(id)

#ifdef __cplusplus
} /* extern "C" */
#endif

/* NITRO_MISC_H_ */
#endif

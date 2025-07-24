#ifndef NITRO_SECTION_H_
#define NITRO_SECTION_H_

#ifdef __cplusplus
extern "C" {
#endif

#if     defined(SDK_CW) || defined(SDK_RX) || defined(__MWERKS__)
#pragma define_section ITCM ".itcm" ".itcm.bss" abs32 RWX
#pragma define_section DTCM ".dtcm" ".dtcm.bss" abs32 RWX
#endif

#ifdef __cplusplus
} /* extern "C" */
#endif

/* NITRO_SECTION_H_ */
#endif

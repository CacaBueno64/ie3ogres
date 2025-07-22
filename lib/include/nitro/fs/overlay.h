#ifndef NITRO_FS_OVERLAY_H_
#define NITRO_FS_OVERLAY_H_

#include <nitro/mi.h>
#include <nitro/card/rom.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef u32 FSOverlayID;
#define	FS_EXTERN_OVERLAY(name)     extern u32 SDK_OVERLAY_ ## name ## _ID[1]
#define	FS_OVERLAY_ID(name)         ((u32)&(SDK_OVERLAY_ ## name ## _ID))
#define	FS_EXTERN_LTDOVERLAY(name)  extern u32 SDK_LTDOVERLAY_ ## name ## _ID[1]
#define	FS_LTDOVERLAY_ID(name)      ((u32)&(SDK_LTDOVERLAY_ ## name ## _ID))

typedef void (*FSOverlayInitFunc) (void);

typedef struct FSOverlayInfoHeader
{
    u32 id;
    u8 *ram_address;
    u32 ram_size;
    u32 bss_size;
    FSOverlayInitFunc *sinit_init;
    FSOverlayInitFunc *sinit_init_end;
    u32 file_id;
    u32 compressed:24;
    u32 flag:8;
}
FSOverlayInfoHeader;

typedef struct FSOverlayInfo
{
    FSOverlayInfoHeader header;
    MIProcessor         target;
    CARDRomRegion       file_pos;
}
FSOverlayInfo;

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* NITRO_FS_OVERLAY_H_ */

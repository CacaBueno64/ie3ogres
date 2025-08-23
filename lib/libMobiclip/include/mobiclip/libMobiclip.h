#ifndef NITRO_LIBMOBICLIP_H_
#define NITRO_LIBMOBICLIP_H_

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#define MO_INVALID_HANDLE 0

#define MO_NB_BUFFERED_FRAME_MIN 6

#define MO_QUALITY_ENHANCEMENT_NONE		0
#define MO_QUALITY_ENHANCEMENT_MEDIUM	1
#define MO_QUALITY_ENHANCEMENT_HIGH		2

typedef void *MOHandle;

extern void *MO_Malloc (u32 size);
extern void MO_Free (void *mem_p);

MOHandle MO_OpenMovie (FSFile *file, u32 nbBufferedFrameMax);
void MO_CloseMovie (MOHandle handle);

u32 MO_GetNbFrame (MOHandle handle);
u32 MO_GetVideoFps (MOHandle handle);
u32 MO_ReadFrame (MOHandle handle);
u32 MO_UnpackFrameImage (MOHandle handle);
u32 MO_BlitFrameImage (MOHandle handle, u16 *outFrameBufferPtr, u32 outFrameBufferPitch, u32 qualityEnhancement);
u32 MO_SkipFrameImage (MOHandle handle);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* NITRO_LIBMOBICLIP_H_ */

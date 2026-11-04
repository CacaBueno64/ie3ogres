#pragma once

// clang-format off
#include <nitro.h>
#include <nnsys.h>

#include "vram.hpp"
// clang-format on

class C3DVramMan
{
public:
    bool initVramManagers(void);
    bool queueTexUpload(u32 slotAddr, u32 size, void *src, u32 chunkSize, u8 *pendingFlag);
    bool queuePlttUpload(u32 slotAddr, u32 size, void *src, u32 chunkSize, u8 *pendingFlag);
    bool init(int texBlockCount, int plttBlockCount, int uploadEntryCount);
    void reset(void);
    bool allocTex(SVRAMResource *tex, s32 size);
    bool allocPltt(SVRAMResource *pltt, s32 size);
    void freeRes(SVRAMResource *res);
    BOOL uploadRes(SVRAMResource *res, u32 offset, void *src, u32 size, BOOL immediate, u32 chunkSize, u8 *pendingFlag);
    BOOL queueUpload(SVRAMResource *res, u32 offset, void *src, u32 size, u32 chunkSize, u8 *pendingFlag);
    BOOL uploadResNow(SVRAMResource *res, u32 offset, void *src, u32 size);
    BOOL setupNNSFile(void *data);
    BOOL releaseNNSFile(void *data);
    BOOL loadNNSFile(void *data);
    bool getResKeyAddr(SVRAMResource *res, u32 *outAddr);
    void onVBlank(void);
    void beginLoadTex(void);
    void endLoadTex(void);
    void beginLoadTexPltt(void);
    void endLoadTexPltt(void);
    BOOL evictRes(SVRAMResource *res);
    BOOL restoreRes(SVRAMResource *res);
    void resetUploadQueue(void);
    BOOL loadNNSFileInternal(NNSG3dResFileHeader *header);
    void uploadNNSTexAsync(NNSG3dResTex *tex, int param2);
    void uploadNNSPlttAsync(NNSG3dResTex *tex, int param2);

    static int getTexSize(GXTexSizeS s, GXTexSizeT t, GXTexFmt fmt);
    static int getPlttSize(GXTexFmt fmt);

    typedef enum {
        FLAG_TEX_INIT = 1,
        FLAG_PLTT_INIT = 2,
    } Flag;

    void *texWork;
    void *plttWork;
    OSMutex mutex;
    u32 unk20; // unused?
    u32 texWorkSize;
    u32 plttWorkSize;
    u32 flags;
    int texLoads;
    int plttLoads;
    u32 unk38;
};

extern C3DVramMan *g3DVramMan;

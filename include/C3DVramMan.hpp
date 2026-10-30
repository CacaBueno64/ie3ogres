#pragma once

// clang-format off
#include <nitro.h>
#include <nnsys.h>
// clang-format on

class C3DVramMan
{
public:
    /* 0x02051690 */ void init(int texBlkSize, int pltBlkCount, int queueBlkCount);
    /* 0x02051778 */ void reset(void);
    /* 0x02051b28 */ bool setup(void *data);
    /* 0x02051b58 */ bool release(void *data);
    /* 0x02051b84 */ bool loadNNSFile(void *data);
    void FUN_02051c10(void);
    void FUN_02051e50(void);
    
    void *texWork;
    void *plttWork;
    OSMutex mutex;
    u32 unk20;
    u32 texWorkSize;
    u32 plttWorkSize;
    u32 flags; /* 1: pltt, 0: tex */
    s32 pendingLoads;
    s32 unk34;
    u32 unk38;
};

extern C3DVramMan *g3DVramMan;

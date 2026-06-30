#pragma once

// clang-format off
#include <nitro/os/common/thread.h>  // for OSMutex
#include <nitro/types.h>             // for u32, s32
// clang-format on

class C3DVramMan {
    public:
        /* 0x02051690 */ void init(int texBlkSize, int pltBlkCount, int queueBlkCount);
        /* 0x02051778 */ void reset(void);
        void FUN_02051c10(void);
    
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

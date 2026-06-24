#pragma once

#include <nitro/types.h>

class ResourceManager {
    public:
        /* 0x02051690 */ void init(u32 nns_tex_size, u32 nns_pltt_size, int vramEntryCount);
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

extern ResourceManager *gResourceManager;

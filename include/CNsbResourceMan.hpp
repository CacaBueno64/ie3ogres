#pragma once

#include <nitro/os/common/mutex.h>
#include <nitro/types.h>

#include "filesystem.hpp"

typedef struct SNsbResource {
    u32 hash;
    void *data;
    u32 size;
    u8 type; /* 6: auto, 7: bca, 8: bma, 9: bta */
    u8 state;
    u8 inUse;
    s8 fileIdx;
    u16 flags; /* 5: linked, 0: loaded */
    u16 refCount;
    SNsbResource *next;
} SNsbResource;

class CNsbResourceMan
{
public:
    virtual ~CNsbResourceMan() {}
    FileSystem::Result getResult(SNsbResource *res);
    /* ov16 0x020fc9f4 */ void init(int resCount);
    /* ov16 0x020fd278 */ int tryFinalize(SNsbResource *res);
    /* ov16 0x020fd350 */ void release(SNsbResource *res);
    /* ov16 0x020fd4a8 */ CNsbResourceMan();
    SNsbResource *FUN_ov16_020fd6d8(SNsbResource *param1, int param2, int param3);

    SNsbResource *resources;
    int cap;
    int cur;
    OSMutex mutex;
    u32 totalSize;
};

extern CNsbResourceMan *gNsbResourceMan;

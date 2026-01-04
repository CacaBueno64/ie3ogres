#ifndef IE3OGRES_NSBRESOURCEMAN_H
#define IE3OGRES_NSBRESOURCEMAN_H

#pragma once

#include <nitro.h>

typedef struct NsbResource {
    u32 hash;
    void *data;
    u32 size;
    u8 type; /* 6: auto, 7: bca, 8: bma, 9: bta */
    u8 state;
    u8 inUse;
    s8 fileIdx;
    u16 flags; /* 5: linked, 0: loaded */
    u16 refCount;
    NsbResource *next;
} NsbResource;

class CNsbResourceMan {
    public:
        /* ov16 0x020fd4a8 */ CNsbResourceMan();
        virtual ~CNsbResourceMan() { }
        /* ov16 0x020fc9f4 */ void init(int resCount);

    NsbResource *resources;
    int cap;
    int cur;
    OSMutex mutex;
    u32 totalSize;
};

extern CNsbResourceMan *gNsbResourceMan;

#endif //IE3OGRES_NSBRESOURCEMAN_H

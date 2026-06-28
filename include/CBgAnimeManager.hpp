#pragma once

#include <nitro/types.h>

/* TODO: Put in common Header */
typedef struct {
    s16 x;
    s16 y;
} SCoord;

typedef u8 bakey_t;

typedef struct {
    u16 frameCur;
    u16 frameCount;
    u8 frameTime[150];
    SCoord coord[150];
} SBgAnimation;

class CBgAnimeManager
{
public:
    CBgAnimeManager() {};
    virtual ~CBgAnimeManager() {};
    bakey_t create();
    bool addFrame(bakey_t anim, s16 x, s16 y, u8 frameTime);
    SCoord *update(bakey_t anim);

private:
    u8 cur;
    SBgAnimation anim[16];
};

// clang-format off
#include "CBgAnimeManager.hpp"

#include <nitro/types.h>  // for s16, u16, u8
#include <cstddef>        // for NULL
// clang-format on

bakey_t CBgAnimeManager::create()
{
    SBgAnimation *list = this->anim;
    this->cur = (this->cur + 1) % 16;
    SBgAnimation *a = &list[this->cur];
    a->frameCur = 0;
    a->frameCount = 0;
    return this->cur;
}

bool CBgAnimeManager::addFrame(bakey_t anim, s16 x, s16 y, u8 frameTime)
{
    SBgAnimation *a = &this->anim[anim];
    int i = a->frameCount;
    if ((int)i >= 150) {
        return false;
    }
    if (i > 0 && x == a->coord[i - 1].x && y == a->coord[i - 1].y && frameTime + a->frameTime[i - 1] <= 255) {
        a->frameTime[--i] += frameTime;
    } else {
        a->frameTime[i] = frameTime;
        a->frameCount = a->frameCount + 1;
    }

    a->coord[i].x = x;
    a->coord[i].y = y;
    return true;
}

SCoord *CBgAnimeManager::update(bakey_t anim)
{
    SBgAnimation *a = this->anim + anim;
    u16 i = a->frameCur;
    if ((int)i >= (int)a->frameCount) return NULL;
    if (--a->frameTime[i] == 0) {
        a->frameCur = a->frameCur + 1;
    }
    return a->coord + i;
}

int main()
{
    volatile CBgAnimeManager a;
}

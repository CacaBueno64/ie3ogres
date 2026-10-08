#pragma once

// clang-format off
#include <nitro.h>
// clang-format on

class CCalcMap
{
public:
    CCalcMap();
    virtual ~CCalcMap()
    {
        this->release();
    }

    void release(void);
    bool init(int width, int height);
    void calcDistance(fx32 stepX, fx32 stepY);

    fx32 *table;
    int width;
    int height;
    int size;
    fx32 stepX;
    fx32 stepY;
};

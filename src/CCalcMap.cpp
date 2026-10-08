// clang-format off
#include "CCalcMap.hpp"

#include "CAllocator.hpp"
#include "init/arm9_init.hpp"
// clang-format off

CCalcMap::CCalcMap()
{
    this->table = NULL;
    this->width = 0;
    this->height = 0;
    this->size = 0;
    this->stepX = 0;
    this->stepY = 0;
}

void CCalcMap::release(void)
{
    if (this->table) {
        gAllocator.deallocate(this->table);
        this->table = NULL;
    }
    this->width = 0;
    this->height = 0;
    this->size = 0;
    this->stepX = 0;
    this->stepY = 0;
}

bool CCalcMap::init(int width, int height)
{
    int size = width * height * sizeof(*this->table);

    if (this->size < size) {
        if (this->table) {
            gAllocator.deallocate(this->table);
        }

        this->table = static_cast<fx32 *>(gAllocator.allocate(size));
        if (!this->table) {
            return false;
        }

        this->size = size;
    }

    this->width = width;
    this->height = height;
    
    return true;
}

void CCalcMap::calcDistance(fx32 stepX, fx32 stepY)
{
    fx32 *dst;
    int i;
    int j;
    fx32 x;
    fx32 y;

    dst = this->table;
    y = 0;

    for (i = 0; i < this->height; i++) {
        x = 0;
        for (j = 0; j < this->width; j++) {
            *dst++ = FX_Sqrt((FX_Mul(x, x) >> 4) + (FX_Mul(y, y) >> 4)) << 2;
            x += stepX;
        }
        y += stepY;
    }

    this->stepX = stepX;
    this->stepY = stepY;
}

// clang-format off
#include "CDistanceMap.hpp"
// clang-format on

#define DISTANCE_MAP_SIZE 32

static inline int lostBitsMask(int shift)
{
    return (1 << (shift + FX32_SHIFT)) - 1;
}

CDistanceMap::CDistanceMap() { }

CDistanceMap::~CDistanceMap() { }

bool CDistanceMap::init(void)
{
    return CCalcMap::init(DISTANCE_MAP_SIZE, DISTANCE_MAP_SIZE);
}

void CDistanceMap::calcDistance(void)
{
    CCalcMap::calcDistance(FX32_ONE, FX32_ONE);
}

fx32 CDistanceMap::getDistance(int x, int y)
{
    return this->table[x + y * DISTANCE_MAP_SIZE];
}

fx32 CDistanceMap::approxDistance(fx32 diffX, fx32 diffY)
{
    int x = FX_Whole(diffX);
    int y = FX_Whole(diffY);
    int shift = 0;

    while ((x | y) & -DISTANCE_MAP_SIZE) {
        x >>= 1;
        y >>= 1;
        shift++;
    }

    fx32 distance = this->getDistance(x, y);

    if (diffX > diffY * 2) {
        return (diffX & lostBitsMask(shift)) + (distance << shift);
    }
    if (diffY > diffX * 2) {
        return (diffY & lostBitsMask(shift)) + (distance << shift);
    }

    int mask = lostBitsMask(shift);
    fx32 result = (((diffX & mask) + (diffY & mask)) >> 1) + (distance << shift);
    return result + (((diffX | diffY) & mask) >> 2);
}

fx32 CDistanceMap::approxDistanceAbs(fx32 diffX, fx32 diffY)
{
    return this->approxDistance(MATH_ABS(diffX), MATH_ABS(diffY));
}

fx32 CDistanceMap::distanceBetween(VecFx32 *a, VecFx32 *b)
{
    return this->approxDistance(MATH_ABS(a->x - b->x), MATH_ABS(a->y - b->y));
}

// probably a debugging thing?
void CDistanceMap::FUN_02043c5c(void)
{
    this->FUN_02043c68();
}

void CDistanceMap::FUN_02043c68(void) { }

fx32 CDistanceMap::distanceBetweenUnits(Unit *a, Unit *b)
{
    return this->distanceBetween(&a->fieldPresence->pos, &b->fieldPresence->pos);
}

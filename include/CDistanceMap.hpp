#pragma once

// clang-format off
#include <nitro.h>

#include "CCalcMap.hpp"
#include "CUnitMan.hpp"
// clang-format on

class CDistanceMap : public CCalcMap
{
public:
    CDistanceMap();
    virtual ~CDistanceMap();

    bool init(void);
    void calcDistance(void);
    fx32 getDistance(int x, int y);
    fx32 approxDistance(fx32 diffX, fx32 diffY);
    fx32 approxDistanceAbs(fx32 diffX, fx32 diffY);
    fx32 distanceBetween(VecFx32 *a, VecFx32 *b);
    void FUN_02043c5c(void);
    void FUN_02043c68(void);
    fx32 distanceBetweenUnits(Unit *a, Unit *b);
};

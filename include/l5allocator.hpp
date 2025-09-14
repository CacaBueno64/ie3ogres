#ifndef IE3OGRES_L5ALLOCATOR_H
#define IE3OGRES_L5ALLOCATOR_H

#pragma once

#include <nitro.h>

#include "l5filerequestmanager.hpp"

class L5Allocator {
    public:
        void FUN_0202dc54(OSArenaId id, void *arenaLo, void *arenaHi);
        void *allocate(int size, int type, int strategy);
        void setNextArena(int arena);
        void setDefaultArena(int arena);
        void deallocate(void *ptr);

    L5FileRequestManager *fileRequestManager;
};

extern L5Allocator gL5Allocator;

#endif //IE3OGRES_L5ALLOCATOR_H

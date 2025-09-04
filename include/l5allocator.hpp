#ifndef IE3OGRES_L5ALLOCATOR_H
#define IE3OGRES_L5ALLOCATOR_H

#pragma once

#include <nitro.h>

#include "l5filerequestmanager.hpp"

class L5Allocator {
    public:
        void FUN_0202dc54(u32 param1, void *param2, void *param3);
        void *allocate(int size, int type, int strategy);
        void FUN_0202e1ac(u32 param1);
        void deallocate(void *ptr);

    L5FileRequestManager *fileRequestManager;
};

extern L5Allocator gL5Allocator;

#endif //IE3OGRES_L5ALLOCATOR_H

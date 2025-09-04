#ifndef IE3OGRES_L5FILEREQUESTMANAGER_H
#define IE3OGRES_L5FILEREQUESTMANAGER_H

#pragma once

#include <nitro.h>

#include "l5allocator.hpp"

class L5Allocator;
class L5FileRequestManager {
    public:
        void init(int max_requests, L5Allocator *allocator);
        void FUN_0202f794(void);
};

extern L5FileRequestManager gL5FileRequestManager;

#endif //IE3OGRES_L5FILEREQUESTMANAGER_H
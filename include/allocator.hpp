#ifndef IE3OGRES_ALLOCATOR_H
#define IE3OGRES_ALLOCATOR_H

#pragma once

#include <nitro.h>

class CFileIO;
class Allocator {
    public:
        /* 0x0202dc54 */ void initArenas(OSArenaId id, void *arenaLo, void *arenaHi);
        /* 0x0202de44 */ void *allocate(size_t size);
        /* 0x0202de58 */ void *allocate(size_t size, int type, int strategy);
        /* 0x0202e19c */ void setNextArena(int arena);
        /* 0x0202e1ac */ void setDefaultArena(int arena);
        /* 0x0202e1c0 */ void deallocate(void *ptr);

    CFileIO *fileIO;
};

extern Allocator gAllocator;

#endif //IE3OGRES_ALLOCATOR_H

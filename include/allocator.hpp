#ifndef IE3OGRES_ALLOCATOR_H
#define IE3OGRES_ALLOCATOR_H

#pragma once

#include <nitro.h>

class CFileIO;

class Allocator {
    public:
        typedef enum {
            STRATEGY_0,
            STRATEGY_1
        } Strategy;

        typedef enum {
            ALLOC_TYPE_4 = 4,
            ALLOC_TYPE_13 = 13,
            ALLOC_TYPE_14 = 14,
            ALLOC_TYPE_19 = 19,
        } AllocType;

        typedef struct AllocatorMetadata {
            u8 inUse;
            u8 pad1;
            u16 type;
            size_t size;
            AllocatorMetadata *prev;
            AllocatorMetadata *next;
        } AllocatorMetadata;

        /* 0x0202dbf8 */ Allocator();
        /* 0x0202dc1c */ ~Allocator();
        /* 0x0202dc54 */ void initArenas(OSArenaId id, void *arenaLo, void *arenaHi);
        /* 0x0202dda0 */ static void tryMerge(AllocatorMetadata *chunk);
        /* 0x0202de44 */ void *allocate(size_t size);
        /* 0x0202de58 */ void *allocate(size_t size, int type, int strategy);
        /* 0x0202e19c */ int setNextArena(int arena);
        /* 0x0202e1ac */ int setDefaultArena(int arena);
        /* 0x0202e1c0 */ void deallocate(void *ptr);
        /* 0x0202e38c */ void getHeapInfo(int *usedSizeOut, int *freeSizeOut, int *maxFreeSizeOut);
    
    CFileIO *fileIO;
    OSArenaId arenaId;
    OSHeapHandle heap;
    OSMutex mutex;
    void *arenas[5];
    size_t sizes[5];
    int nextArena;
    int defaultArena;
};

extern Allocator gAllocator;

#endif //IE3OGRES_ALLOCATOR_H

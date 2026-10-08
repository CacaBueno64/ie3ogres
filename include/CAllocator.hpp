#pragma once

#include <nitro/types.h>
#include <nitro/os/common/alloc.h>
#include <nitro/os/common/arena.h>
#include <nitro/os/common/mutex.h>

class CFileIO;
class CAllocator {
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

        CAllocator();
        ~CAllocator();
        void initArenas(OSArenaId id, void *arenaLo, void *arenaHi);
        static void tryMerge(AllocatorMetadata *chunk);
        void *allocate(size_t size);
        void *allocate(size_t size, int type, int strategy);
        int setNextArena(int arena);
        int setDefaultArena(int arena);
        void deallocate(void *ptr);
        void getHeapInfo(int *usedSizeOut, int *freeSizeOut, int *maxFreeSizeOut);
    
    CFileIO *fileIO;
    OSArenaId arenaId;
    OSHeapHandle heap;
    OSMutex mutex;
    void *arenas[5];
    size_t sizes[5];
    int nextArena;
    int defaultArena;
};

extern CAllocator gAllocator;

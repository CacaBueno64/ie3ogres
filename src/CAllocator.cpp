// clang-format off
#include "allocator.hpp"

#include <nitro/mi.h>
#include <nitro/os/ARM9/cache.h>

//#include "init/arm9_init.hpp"
// clang-format on

CAllocator::CAllocator()
{
    for (int i = 0; i < 5; i++) {
        this->arenas[i] = NULL;
        this->sizes[i] = 0;
    }
}

CAllocator::~CAllocator()
{
    for (int i = 0; i < 5; i++) {
        if (this->arenas[i]) {
            OS_FreeToHeap(this->arenaId, this->heap, this->arenas[i]);
        }
    }
}

void CAllocator::initArenas(OSArenaId id, void *arenaLo, void *arenaHi)
{
    static const u32 arenaSizes[5] = {0x150, 0x3D9, 0x2E0, 0x08, 0x100};

    this->arenaId = id;
    this->heap = OS_CreateHeap(this->arenaId, arenaLo, arenaHi);
    OS_InitMutex(&this->mutex);

    for (int i = 1; i <= 2; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            if (((i == 1) && (j == 1)) || ((i == 2) && (j != 1))) {
                continue;
            }

            this->arenas[j] = NULL;
            this->sizes[j] = 0;

            u32 freeSize = OS_GetTotalFreeSize(this->arenaId, this->heap);
            if (freeSize == 0) {
                break;
            }
            u32 arenaSize = arenaSizes[j] * 0x400;

            u32 size;
            if (i == 2) {
                size = freeSize;
            } else {
                size = arenaSize;
            }

            if (size > 0)
            {
                if ((((i == 1) && (size > arenaSize)) || ((i == 2) && (size > freeSize))) && (i == 1)) {
                    OS_Terminate();
                    return;
                }

                this->arenas[j] = OS_AllocFromHeap(this->arenaId, this->heap, size);
                if (!this->arenas[j]) {
                    OS_Terminate();
                    return;
                }
                this->sizes[j] = size;
                MI_CpuClearFast(this->arenas[j], this->sizes[j]);

                AllocatorMetadata *metadata = static_cast<AllocatorMetadata *>(this->arenas[j]);
                metadata->size = size - sizeof(*metadata);
                metadata->type = 20;
            }

            if (i == 2) {
                break;
            }
        }
    }

    this->nextArena = -1;
    this->defaultArena = 1;
}

void CAllocator::tryMerge(AllocatorMetadata *chunk)
{
    AllocatorMetadata *next = chunk->next;
    if (next->next != reinterpret_cast<AllocatorMetadata *>(reinterpret_cast<char *>(next) + next->size + sizeof(*next))) {
        return;
    }
    
    if ((chunk->inUse) || (next->inUse)) {
        chunk->size = reinterpret_cast<char *>(next) - reinterpret_cast<char *>(chunk) - sizeof(*chunk) ;
        chunk->next = next;
        next->prev = chunk;
    }
    else {
        chunk->size = reinterpret_cast<char *>(next) - reinterpret_cast<char *>(chunk) - sizeof(*chunk) ;
        chunk->size += next->size + sizeof(*next);
        chunk->next = next->next;
        if (chunk->next) {
            chunk->next->prev = chunk;
        }
    }

    DC_FlushRange(chunk, sizeof(*chunk));
    if (chunk->next) {
        DC_FlushRange(chunk->next, sizeof(*chunk->next));
    }
    
    DC_WaitWriteBufferEmpty();
}

void *CAllocator::allocate(size_t size)
{
    return this->allocate(size, 0, 1);
}

void *CAllocator::allocate(size_t size, int type, int strategy)
{
    int attempt;
    AllocatorMetadata *chunk;
    AllocatorMetadata *candidate;
    const u8 arena_fallback[5] = {1, 0, 4, 2, 3};

    OS_LockMutex(&this->mutex);
    OSIntrMode state = OS_DisableInterrupts();

    int arena = this->nextArena;
    size = (size + 3) & ~3;

    if (arena >= 0) {
        this->nextArena = -1;
    } else {
        switch (type) {
            case ALLOC_TYPE_13:
            case ALLOC_TYPE_14:
            case ALLOC_TYPE_19:
                arena    = 3;
                strategy = STRATEGY_1;
                break;
            case ALLOC_TYPE_4:
                arena = 2;
                break;
            default:
                arena = this->defaultArena;
                break;
        }
    }
    if (type == 4) {
        arena = 2;
    }

    if (arena & 0x100) {
        arena &= ~0x100;
        strategy = STRATEGY_0;
    }
    attempt = 0;
    chunk = (AllocatorMetadata *)this->arenas[arena];
    candidate = chunk;
    if (arena != 2 && (int)size >= 0x32000) {
        strategy = STRATEGY_0;
    }
    while (TRUE)
    {
        if (strategy != STRATEGY_0)
        {
            for (; chunk; chunk = chunk->next)
            {
                if (chunk->inUse || chunk->size < size) {
                    continue;
                }
                if (candidate->inUse) {
                    candidate = chunk;
                }
                if (candidate->size < size) {
                    candidate = chunk;
                }
                if (chunk->size < size * 2 && candidate->size > chunk->size) {
                    candidate = chunk;
                }
                if (candidate->size != size) {
                    if (chunk->next && chunk->next != (AllocatorMetadata *)((char *)chunk + chunk->size + sizeof(AllocatorMetadata))) {
                        tryMerge(chunk);
                    }
                } else {
                    break;
                }
            }
        }
        else
        {
            while (chunk->next) {
                chunk = chunk->next;
            }
            while (chunk->prev) {
                if (chunk->size >= size && !chunk->inUse) {
                    break;
                }
                chunk = chunk->prev;
            }
            candidate = chunk;
        }

        if (candidate->inUse || candidate->size < size)
        {
            if (attempt < 5) {
                strategy = STRATEGY_1;
                chunk = (AllocatorMetadata *)this->arenas[arena_fallback[attempt]];
                candidate = chunk;
                attempt++;
            } else {
                OS_RestoreInterrupts(state);
                OS_UnlockMutex(&this->mutex);
                return NULL;
            }
        }
        else
        {
            if (strategy == STRATEGY_1)
            {
                if (candidate->size > size + sizeof(AllocatorMetadata) + 0x30) {
                    AllocatorMetadata *split = (AllocatorMetadata *)((char *)candidate + sizeof(AllocatorMetadata) + size);
                    split->inUse = 0;
                    split->size = candidate->size - size - sizeof(AllocatorMetadata);
                    split->type = candidate->type;
                    split->prev = candidate;
                    split->next = candidate->next;
                    candidate->next = split;
                    if (split->next) {
                        split->next->prev = split;
                    }
                    candidate->size = size;
                }
            }
            else if (candidate->size > size + sizeof(AllocatorMetadata) + 0x30)
            {
                candidate = (AllocatorMetadata *)((char *)(candidate + 1) + (chunk->size - size)) - 1;
                candidate->inUse = 0;
                candidate->size = size;
                candidate->prev = chunk;
                candidate->next = chunk->next;
                chunk->next = candidate;
                if (candidate->next) {
                    candidate->next->prev = candidate;
                }
                chunk->size -= size + sizeof(AllocatorMetadata);
            }
            candidate->inUse = 1;
            candidate->type = type;
            DC_FlushRange(candidate, sizeof(AllocatorMetadata));
            if (candidate->prev) {
                DC_FlushRange(candidate->prev, sizeof(AllocatorMetadata));
            }
            if (candidate->next) {
                DC_FlushRange(candidate->next, sizeof(AllocatorMetadata));
            }
            DC_WaitWriteBufferEmpty();
            OS_RestoreInterrupts(state);
            OS_UnlockMutex(&this->mutex);
            return (void *)((char *)candidate + sizeof(AllocatorMetadata));
        }
    }
}

int CAllocator::setNextArena(int arena)
{
    int prevArena = this->nextArena;
    this->nextArena = arena;

    return prevArena;
}

int CAllocator::setDefaultArena(int arena)
{
    int prevArena = this->defaultArena;
    if (arena >= 0) {
        this->defaultArena = arena;
    }

    return prevArena;
}

void CAllocator::deallocate(void *ptr)
{
    if (ptr == NULL) {
        return;
    }

    void *arena = NULL;
    for (int i = 0; i < 5; i++) {
        if (ptr < this->arenas[i]) {
            continue;
        }
        if (ptr < static_cast<void *>(static_cast<char *>(this->arenas[i]) + this->sizes[i])) {
            arena = this->arenas[i];
            break;
        }
    }

    if (arena == NULL) {
        OS_Terminate();
        return;
    }

    OS_LockMutex(&this->mutex);
    OSIntrMode intr = OS_DisableInterrupts();
    
    AllocatorMetadata *metadata = static_cast<AllocatorMetadata *>(ptr);
    metadata--;
    
    if (!metadata->inUse) {
        OS_RestoreInterrupts(intr);
        OS_UnlockMutex(&this->mutex);
        return;
    }

    if ((metadata->next != NULL) && (metadata->next != static_cast<void *>(static_cast<char *>(ptr) + metadata->size))) {
        OS_RestoreInterrupts(intr);
        OS_UnlockMutex(&this->mutex);
        return;
    }

    metadata->inUse = FALSE;
    
    if ((metadata->prev != NULL) && (!metadata->prev->inUse)) {
        metadata->prev->size += metadata->size + sizeof(*metadata);
        metadata->prev->next = metadata->next;
        if (metadata->next != NULL) {
            metadata->next->prev = metadata->prev;
        }
        metadata = metadata->prev;
    }

    DC_FlushRange(metadata, sizeof(*metadata));
    if (metadata->prev != NULL) {
        DC_FlushRange(metadata->prev, sizeof(*metadata->prev));
    }
    if (metadata->next != NULL) {
        DC_FlushRange(metadata->next, sizeof(*metadata->next));
    }

    if ((metadata->next != NULL) && (!metadata->next->inUse)) {
        metadata->size += metadata->next->size + sizeof(*metadata);
        metadata->next = metadata->next->next;
        if (metadata->next != NULL) {
            metadata->next->prev = metadata;
        }
    }

    DC_FlushRange(metadata, sizeof(*metadata));
    if (metadata->prev != NULL) {
        DC_FlushRange(metadata->prev, sizeof(*metadata->prev));
    }
    if (metadata->next != NULL) {
        DC_FlushRange(metadata->next, sizeof(*metadata->next));
    }

    DC_WaitWriteBufferEmpty();
    OS_RestoreInterrupts(intr);
    OS_UnlockMutex(&this->mutex);
}

void CAllocator::getHeapInfo(int *usedSizeOut, int *freeSizeOut, int *maxFreeChunkSizeOut)
{
    if (usedSizeOut != NULL) {
        *usedSizeOut = 0;
    }
    if (freeSizeOut != NULL) {
        *freeSizeOut = 0;
    }
    if (maxFreeChunkSizeOut != NULL) {
        *maxFreeChunkSizeOut = -1;
    }

    OS_GetTotalFreeSize(this->arenaId, this->heap);
    OS_GetMainArenaLo();
    OS_GetMainArenaHi();

    AllocatorMetadata *metadata;
    int usedSize, freeSize, maxFreeChunkSize;
    for (int i = 0; i < 5; i++) {
        metadata = static_cast<AllocatorMetadata *>(this->arenas[i]);
        if (!metadata) {
            continue;
        }

        maxFreeChunkSize = 0;
        freeSize = 0;
        usedSize = 0;

        while (metadata) {
            if (metadata->inUse) {
                usedSize += metadata->size;
            } else {
                freeSize += metadata->size;
                if (metadata->size > maxFreeChunkSize) {
                    maxFreeChunkSize = metadata->size;
                }
            }
            metadata = metadata->next;
        }

        if (usedSizeOut) {
            *usedSizeOut += usedSize;
        }
        if (freeSizeOut) {
            *freeSizeOut += freeSize;
        }
        if (maxFreeChunkSizeOut) {
            if ((*maxFreeChunkSizeOut < 0) || (*maxFreeChunkSizeOut < maxFreeChunkSize)) {
                *maxFreeChunkSizeOut = maxFreeChunkSize;
            }
        }
    }
}

#include "vram.hpp"

#include <nitro.h>

#include "CAllocator.hpp"

#include "init/arm9_init.hpp"

namespace Vram {

UploadQueue sUploadQueue;

BOOL MemMove(const void *src, void *dst, size_t size)
{
    if (!src || !dst) return FALSE;
    if (size == 0) return TRUE;

    int diff = (int)src - (int)dst;
    if (diff < 0) diff = -diff;
    if (diff < size) {
        MI_CpuCopy8(src, dst, size);
        return TRUE;
    }

    void *ptr = gAllocator.allocate(size);
    if (!ptr) return FALSE;

    MI_CpuCopy8(src, ptr, size);
    MI_CpuCopy8(ptr, dst, size);

    gAllocator.deallocate(ptr);
    return TRUE;
}

void AllocBuffer(UploadQueue *queue)
{
    queue->buffer = gAllocator.allocate(0x8000);
    queue->pos = 0;
}

void ResetPos(UploadQueue *queue)
{
    queue->pos = 0;
}

void Init(int n)
{
    size_t size;
    UploadQueue *queue = &sUploadQueue;

    MI_CpuClearFast(queue, sizeof(*queue));

    queue->entryCount = n;
    if (n <= 0) return;

    size = sizeof(*queue->entries) * n;
    queue->entries = static_cast<UploadEntry *>(gAllocator.allocate(size));
    if (queue->entries) {
        MI_CpuClearFast(queue->entries, size);
    }

    AllocBuffer(queue);
}

BOOL QueueVramTextureUpload(u32 slotAddr, void *src, u32 size, u32 chunkSize, u8 *pendingFlag)
{
    UploadQueue *queue = &sUploadQueue;
    UploadEntry *cur;
    int i;
    int count;
    UploadEntry *entry;

    if (!queue->entries) return FALSE;
    if (!src || size == 0) return FALSE;

    size = MATH_ROUNDUP(size, 4);
    count = queue->entryCount;
    if ((queue->texCount + queue->plttCount) >= count) return FALSE;
    chunkSize = MATH_ROUNDUP(chunkSize, 4);
    if ((chunkSize == 0) ||
        (chunkSize >= size) ||
        ((src >= queue->buffer) && (((size_t)src - (size_t)queue->buffer) < 0x8000)))
    {
        chunkSize = size;
    }

    for (cur = queue->texHead; cur; cur = cur->next) {
        if (cur->src == src && cur->slotAddr == slotAddr && cur->size == size) {
            cur->loadedSize = 0;
            return TRUE;
        }
    }

    entry = NULL;
    for (i = 0; i < count; i++) {
        if (!queue->entries[i].src) {
            entry = &queue->entries[i];
            break;
        }
    }

    if (!entry) return FALSE;
    entry->slotAddr = slotAddr;
    entry->src = src;
    entry->size = size;
    entry->next = NULL;
    entry->chunkSize = chunkSize;
    entry->loadedSize = 0;
    entry->pendingFlag = pendingFlag;
    if (entry->pendingFlag) *entry->pendingFlag = 1;

    if (!queue->texHead) queue->texHead = entry;
    if (queue->texTail) queue->texTail->next = entry;
    queue->texTail = entry;
    queue->texCount++;

    return TRUE;
}

BOOL QueueVramPaletteUpload(u32 slotAddr, void *src, u32 size, u32 chunkSize, u8 *pendingFlag)
{
    UploadQueue *queue = &sUploadQueue;
    UploadEntry *cur;
    int i;
    int count;
    UploadEntry *entry;

    if (!queue->entries) return FALSE;
    if (!src || size == 0) return FALSE;

    size = MATH_ROUNDUP(size, 4);
    count = queue->entryCount;
    if ((queue->texCount + queue->plttCount) >= count) return FALSE;
    chunkSize = MATH_ROUNDUP(chunkSize, 4);
    if ((chunkSize == 0) ||
        (chunkSize >= size) ||
        ((src >= queue->buffer) && (((size_t)src - (size_t)queue->buffer) < 0x8000)))
    {
        chunkSize = size;
    }

    for (cur = queue->plttHead; cur; cur = cur->next) {
        if (cur->src == src && cur->slotAddr == slotAddr && cur->size == size) {
            cur->loadedSize = 0;
            return TRUE;
        }
    }

    entry = NULL;
    for (i = 0; i < count; i++) {
        if (!queue->entries[i].src) {
            entry = &queue->entries[i];
            break;
        }
    }

    if (!entry) return FALSE;
    entry->slotAddr = slotAddr;
    entry->src = src;
    entry->size = size;
    entry->next = NULL;
    entry->chunkSize = chunkSize;
    entry->loadedSize = 0;
    entry->pendingFlag = pendingFlag;
    if (entry->pendingFlag) *entry->pendingFlag = 1;

    if (!queue->plttHead) queue->plttHead = entry;
    if (queue->plttTail) queue->plttTail->next = entry;
    queue->plttTail = entry;
    queue->plttCount++;

    return TRUE;
}

void ProcessUploadQueue(void)
{
    UploadQueue *queue = &sUploadQueue;
    UploadEntry *texHead;
    UploadEntry *texTail;
    UploadEntry *plttHead;
    UploadEntry *plttTail;
    u16 texCount;
    u16 plttCount;
    UploadEntry *cur;
    UploadEntry *next;
    u32 addr;
    void *src;
    u32 loaded;
    u32 len;

    if (!queue->entries) return;

    texTail = NULL;
    texHead = NULL;
    plttTail = NULL;
    plttHead = NULL;
    plttCount = 0;
    texCount = 0;

    cur = queue->texHead;
    if (cur) {
        GX_BeginLoadTex();
        for (; cur; cur = next) {
            next = cur->next;
            addr = cur->slotAddr;
            src = cur->src;
            loaded = cur->loadedSize;
            len = cur->chunkSize;
            if (loaded + len > cur->size) len = cur->size - loaded;
            GX_LoadTex(static_cast<u8 *>(src) + loaded, addr + loaded, len);
            cur->loadedSize += len;
            if (cur->loadedSize >= cur->size) {
                if (cur->pendingFlag) *cur->pendingFlag = 0;
                cur->src = NULL;
                cur->size = 0;
                cur->slotAddr = 0;
            } else {
                if (!texHead) texHead = cur;
                if (texTail) texTail->next = cur;
                texTail = cur;
                cur->next = NULL;
                texCount++;
            }
        }
        GX_EndLoadTex();
    }

    cur = queue->plttHead;
    if (cur) {
        GX_BeginLoadTexPltt();
        for (; cur; cur = next) {
            next = cur->next;
            addr = cur->slotAddr;
            src = cur->src;
            loaded = cur->loadedSize;
            len = cur->chunkSize;
            if (loaded + len > cur->size) len = cur->size - loaded;
            GX_LoadTexPltt(static_cast<u8 *>(src) + loaded, addr + loaded, len);
            cur->loadedSize += len;
            if (cur->loadedSize >= cur->size) {
                if (cur->pendingFlag) *cur->pendingFlag = 0;
                cur->src = NULL;
                cur->size = 0;
                cur->slotAddr = 0;
            } else {
                if (!plttHead) plttHead = cur;
                if (plttTail) plttTail->next = cur;
                plttTail = cur;
                cur->next = NULL;
                plttCount++;
            }
        }
        GX_EndLoadTexPltt();
    }

    queue->texHead = texHead;
    queue->texTail = texTail;
    queue->plttHead = plttHead;
    queue->plttTail = plttTail;
    queue->texCount = texCount;
    queue->plttCount = plttCount;
    ResetPos(queue);
}

u32 GetPendingUploadSize(void)
{
    UploadQueue *queue = &sUploadQueue;
    if (!queue->entries) return 0;

    u32 v0 = 0;
    for (UploadEntry *cur = queue->texHead; cur; cur = cur->next) {
        v0 += cur->size - cur->loadedSize;
    }
    for (UploadEntry *cur = queue->plttHead; cur; cur = cur->next) {
        v0 += cur->size - cur->loadedSize;
    }

    return v0;
}

void Reset(void)
{
    UploadQueue *queue = &sUploadQueue;
    if (!queue->entries) return;

    u32 size = sizeof(*queue->entries) * queue->entryCount;
    
    queue->texHead = NULL;
    queue->texTail = NULL;
    queue->plttHead = NULL;
    queue->plttTail = NULL;
    queue->texCount = 0;
    queue->plttCount = 0;
    
    MI_CpuClearFast(queue->entries, size);
    DC_FlushRange(queue->entries, size);

    ResetPos(queue);
}

void *Allocate(s32 *size)
{
    UploadQueue *queue = &sUploadQueue;
    if (!queue->buffer) return NULL;

    *size = MATH_ROUNDUP32(*size);
    if (*size > (0x8000 - queue->pos)) return NULL;
    
    void *ptr = (u8 *)queue->buffer + queue->pos;
    queue->pos += *size;
    MI_CpuClearFast(ptr, *size);

    return ptr;
}

} /* namespace Vram */

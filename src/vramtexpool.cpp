#include "vram.hpp"

#include <nitro.h>

#include "CAllocator.hpp"
#include "C3DVramMan.hpp"

namespace Vram {

TexPool sTexPool ATTRIBUTE_ALIGN(4);

void ClearTexPool(void)
{
    MI_CpuClearFast(&sTexPool, sizeof(sTexPool));
}

BOOL InitTexPool(int n, u32 elementSize)
{
    FreeTexPool();

    BOOL ret = FALSE;
    size_t size = elementSize * n;
    void *buffer = gAllocator.allocate(size);
    if (!buffer) return ret;

    SVRAMResource tex;
    tex.size = 0;
    tex.key = 0;
    tex.type = VRAM_RES_TYPE_NONE;
    tex.evicted = false;
    if (!g3DVramMan->allocTex(&tex, size)) {
        gAllocator.deallocate(buffer);
        return ret;
    }

    MI_CpuClearFast(&sTexPool, sizeof(sTexPool));
    MI_CpuClearFast(buffer, size);

    sTexPool.res = tex;
    sTexPool.buffer = buffer;
    sTexPool.size = size;
    sTexPool.count = n;
    sTexPool.elementSize = elementSize;

    return TRUE;
}

void FreeTexPool(void)
{
    g3DVramMan->freeRes(&sTexPool.res);
    if (sTexPool.buffer) gAllocator.deallocate(sTexPool.buffer);
    MI_CpuClearFast(&sTexPool, sizeof(sTexPool));
}

void UploadTexPool(void)
{
    if (!sTexPool.buffer || sTexPool.res.size <= 0) return;
    if (sTexPool.res.evicted) return;

    g3DVramMan->queueUpload(&sTexPool.res, 0, sTexPool.buffer, sTexPool.size, 0, NULL);
}

void *GetTexPoolElement(int idx)
{
    if (idx < 0 || idx >= sTexPool.count) return NULL;

    return (u8 *)sTexPool.buffer + (sTexPool.elementSize * idx);
}

u32 GetTexPoolElementVramAddr(int idx)
{
    if (idx < 0 || idx >= sTexPool.count) return -1;

    u32 addr;
    g3DVramMan->getResKeyAddr(&sTexPool.res, &addr);
    if (addr != -1) addr += (sTexPool.elementSize * idx);
    return addr;
}

BOOL EvictTexPool(void)
{
    return g3DVramMan->evictRes(&sTexPool.res);
}

void RestoreTexPool(void)
{
    g3DVramMan->restoreRes(&sTexPool.res);
}

} /* namespace Vram */

#pragma once

#include <nitro.h>
#include <nnsys.h>

typedef enum {
    VRAM_RES_TYPE_NONE,
    VRAM_RES_TYPE_TEX,
    VRAM_RES_TYPE_PLTT,
} EVRAMResourceType;

typedef struct {
    s32 size;
    u32 key; // NNSGfdTexKey | NNSGfdPlttKey
    u8 type; // 1: texture, 2: palette
    bool evicted;
    u8 padA[2];
} SVRAMResource;

typedef struct {
    SVRAMResource res;
    s32 refCount;
} SSharedVRAMResource;

namespace Vram {

typedef struct UploadEntry {
    u32 slotAddr;
    void *src;
    u32 size;
    UploadEntry *next;
    u32 chunkSize;
    u32 loadedSize;
    u8 *pendingFlag;
} UploadEntry;

typedef struct {
    UploadEntry *entries;
    int entryCount;
    u16 texCount;
    u16 plttCount;
    UploadEntry *texHead;
    UploadEntry *texTail;
    UploadEntry *plttHead;
    UploadEntry *plttTail;
    void *buffer;
    int pos;
} UploadQueue;

typedef struct {
    SVRAMResource res;
    void *buffer;
    u32 size;
    int count;
    u32 elementSize;
} TexPool;

BOOL MemMove(const void *src, void *dst, size_t size);
void AllocBuffer(UploadQueue *queue);
void ResetPos(UploadQueue *queue);
void Init(int n);
BOOL QueueVramTextureUpload(u32 slotAddr, void *src, u32 size, u32 chunkSize, u8 *pendingFlag);
BOOL QueueVramPaletteUpload(u32 slotAddr, void *src, u32 size, u32 chunkSize, u8 *pendingFlag);
void ProcessUploadQueue(void);
u32 GetPendingUploadSize(void);
void Reset(void);
void *Allocate(s32 *size);

void ClearTexPool(void);
BOOL InitTexPool(int n, u32 elementSize);
void FreeTexPool(void);
void UploadTexPool(void);
void *GetTexPoolElement(int idx);
u32 GetTexPoolElementVramAddr(int idx);
BOOL EvictTexPool(void);
void RestoreTexPool(void);

} /* namespace Vram */

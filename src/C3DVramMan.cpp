#include "C3DVramMan.hpp"

#include <nitro.h>
#include <nnsys.h>

#include "vram.hpp"
#include "CAllocator.hpp"

#include "init/arm9_init.hpp"

bool C3DVramMan::initVramManagers(void)
{
    u32 texSize = GX_GetSizeOfTex();
    u32 plttSize = GX_GetSizeOfTexPltt();

    if (texSize) {
        NNS_GfdInitLnkTexVramManager(texSize, 0, this->texWork, this->texWorkSize, TRUE);
        this->flags |= FLAG_TEX_INIT;
    }
    if (plttSize) {
        NNS_GfdInitLnkPlttVramManager(plttSize, this->plttWork, this->plttWorkSize, TRUE);
        this->flags |= FLAG_PLTT_INIT;
    }

    return true;
}

bool C3DVramMan::queueTexUpload(u32 slotAddr, u32 size, void *src, u32 chunkSize, u8 *pendingFlag)
{
    return Vram::QueueVramTextureUpload(slotAddr, src, size, chunkSize, pendingFlag);
}

bool C3DVramMan::queuePlttUpload(u32 slotAddr, u32 size, void *src, u32 chunkSize, u8 *pendingFlag)
{
    return Vram::QueueVramPaletteUpload(slotAddr, src, size, chunkSize, pendingFlag);
}

int C3DVramMan::getTexSize(GXTexSizeS s, GXTexSizeT t, GXTexFmt fmt)
{
    int size = (8 << s) * (8 << t);

    switch (fmt) {
    case GX_TEXFMT_A3I5:
    case GX_TEXFMT_PLTT256:
    case GX_TEXFMT_A5I3:
        break;
    case GX_TEXFMT_PLTT4:
        return (size + 3) >> 2;
    case GX_TEXFMT_PLTT16:
        return (size + 1) >> 1;
    case GX_TEXFMT_DIRECT:
        return size << 1;
    default:
        return 0;
    }

    return size;
}

int C3DVramMan::getPlttSize(GXTexFmt fmt)
{
    switch (fmt) {
    case GX_TEXFMT_NONE:
        break;
    case GX_TEXFMT_A3I5:
        return 0;
    case GX_TEXFMT_PLTT4:
        return 0x20;
    case GX_TEXFMT_PLTT16:
        return 0x20;
    case GX_TEXFMT_PLTT256:
        return 0x200;
    case GX_TEXFMT_COMP4x4:
        break;
    case GX_TEXFMT_A5I3:
        return 0;
    case GX_TEXFMT_DIRECT:
        return 0;
    }
    return 0;
}

bool C3DVramMan::init(int texBlockCount, int plttBlockCount, int uploadEntryCount)
{
    this->texWork = NULL;
    this->plttWork = NULL;
    this->unk20 = 0;
    this->texWorkSize = 0;
    this->plttWorkSize = 0;
    this->flags = 0;
    this->texLoads = 0;
    this->plttLoads = 0;

    OS_InitMutex(&this->mutex);

    this->unk38 = 0;

    if (texBlockCount <= 0 || plttBlockCount <= 0) return false;
    this->texWorkSize = NNS_GfdGetLnkTexVramManagerWorkSize(texBlockCount);
    this->texWork = gAllocator.allocate(this->texWorkSize);
    this->plttWorkSize = NNS_GfdGetLnkPlttVramManagerWorkSize(plttBlockCount);
    this->plttWork = gAllocator.allocate(this->plttWorkSize);
    if (!this->texWork || !this->plttWork) return false;

    MI_CpuClearFast(this->texWork, this->texWorkSize);
    MI_CpuClearFast(this->plttWork, this->plttWorkSize);

    if (!this->initVramManagers()) return false;

    Vram::Init(uploadEntryCount);
    return true;
}

void C3DVramMan::reset(void)
{
    if (this->flags & FLAG_TEX_INIT) NNS_GfdResetLnkTexVramState();
    if (this->flags & FLAG_PLTT_INIT) NNS_GfdResetLnkPlttVramState();
    this->initVramManagers();
}

bool C3DVramMan::allocTex(SVRAMResource *tex, s32 size)
{
    this->freeRes(tex);
    
    if (size < 0) return false;
    size = MATH_ROUNDUP32(size);

    NNSGfdTexKey key = NNS_GfdAllocLnkTexVram(size, FALSE, 0);
    if (key == 0) return false;
    tex->key = key;
    tex->size = size;
    tex->type = VRAM_RES_TYPE_TEX;

    return true;
}

bool C3DVramMan::allocPltt(SVRAMResource *pltt, s32 size)
{
    this->freeRes(pltt);
    
    if (size < 0) return false;
    size = MATH_ROUNDUP32(size);

    NNSGfdPlttKey key = NNS_GfdAllocLnkPlttVram(size, FALSE, 0);
    if (key == 0) return false;
    pltt->key = key;
    pltt->size = size;
    pltt->type = VRAM_RES_TYPE_PLTT;

    return true;
}

void C3DVramMan::freeRes(SVRAMResource *res)
{
    if (res->key) {
        switch (res->type) {
        case VRAM_RES_TYPE_TEX:
            NNS_GfdFreeLnkTexVram(res->key);
            break;
        case VRAM_RES_TYPE_PLTT:
            NNS_GfdFreeLnkPlttVram(res->key);
            break;
        default:
            return;
        }
    }

    res->size = 0;
    res->key = 0;
    res->type = VRAM_RES_TYPE_NONE;
    res->evicted = 0;
}

BOOL C3DVramMan::uploadRes(SVRAMResource *res, u32 offset, void *src, u32 size, BOOL immediate, u32 chunkSize, u8 *param7)
{
    size = MATH_ROUNDUP(size, 4);
    if (res->size < (s32)size) size = res->size;

    switch (res->type) {
    case VRAM_RES_TYPE_TEX: {
        u32 slotAddr = offset + NNS_GfdGetTexKeyAddr(res->key);
        if (immediate) {
            if (param7) *param7 = 0;
            this->beginLoadTex();
            GX_LoadTex(src, slotAddr, size);
            this->endLoadTex();
        } else {
            return this->queueTexUpload(slotAddr, size, src, chunkSize, param7);
        }
        break;
    }
    case VRAM_RES_TYPE_PLTT: {
        u32 slotAddr = offset + NNS_GfdGetPlttKeyAddr(res->key);
        if (immediate) {
            if (param7) *param7 = 0;
            this->beginLoadTexPltt();
            GX_LoadTexPltt(src, slotAddr, size);
            this->endLoadTexPltt();
        } else {
            return this->queuePlttUpload(slotAddr, size, src, chunkSize, param7);
        }
        break;
    }
    default:
        return FALSE;
    }

    return TRUE;
}

BOOL C3DVramMan::queueUpload(SVRAMResource *res, u32 offset, void *src, u32 size, u32 chunkSize, u8 *param6)
{
    size = MATH_ROUNDUP(size, 4);
    if (res->size < (s32)size) size = res->size;

    switch (res->type) {
    case VRAM_RES_TYPE_TEX:
        offset += NNS_GfdGetTexKeyAddr(res->key);
        return this->queueTexUpload(offset, size, src, chunkSize, param6);
    case VRAM_RES_TYPE_PLTT:
        offset += NNS_GfdGetPlttKeyAddr(res->key);
        return this->queuePlttUpload(offset, size, src, chunkSize, param6);
    default:
        return FALSE;
    }

    return TRUE;
}

BOOL C3DVramMan::uploadResNow(SVRAMResource *res, u32 offset, void *src, u32 size)
{
    u32 slotAddr;

    size = MATH_ROUNDUP(size, 4);
    if (res->size < (s32)size) size = res->size;

    switch (res->type) {
    case VRAM_RES_TYPE_TEX:
        slotAddr = offset + NNS_GfdGetTexKeyAddr(res->key);
        this->beginLoadTex();
        GX_LoadTex(src, slotAddr, size);
        this->endLoadTex();
        break;
    case VRAM_RES_TYPE_PLTT:
        slotAddr = offset + NNS_GfdGetPlttKeyAddr(res->key);
        this->beginLoadTexPltt();
        GX_LoadTexPltt(src, slotAddr, size);
        this->endLoadTexPltt();
        break;
    default:
        return FALSE;
    }

    return TRUE;
}

BOOL C3DVramMan::setupNNSFile(void *data)
{
    OS_LockMutex(&this->mutex);
    BOOL result = NNS_G3dResDefaultSetup(data);
    OS_UnlockMutex(&this->mutex);
    return result;
}

BOOL C3DVramMan::releaseNNSFile(void *data)
{
    OS_LockMutex(&this->mutex);
    NNS_G3dResDefaultRelease(data);
    OS_UnlockMutex(&this->mutex);
    return TRUE;
}

BOOL C3DVramMan::loadNNSFile(void *data)
{
    OS_LockMutex(&this->mutex);
    BOOL result = this->loadNNSFileInternal(static_cast<NNSG3dResFileHeader *>(data));
    OS_UnlockMutex(&this->mutex);
    return result;
}

bool C3DVramMan::getResKeyAddr(SVRAMResource *res, u32 *outAddr)
{
    if (res->key == 0) return false;

    switch (res->type) {
    case VRAM_RES_TYPE_TEX:
        *outAddr = NNS_GfdGetTexKeyAddr(res->key);
        return true;
    case VRAM_RES_TYPE_PLTT:
        *outAddr = NNS_GfdGetPlttKeyAddr(res->key);
        return true;
    default:
        return false;
    }

    return true;
}

void C3DVramMan::onVBlank(void)
{
    if (GX_GetBankForTex() == GX_VRAM_TEX_NONE) return;
    if (GX_GetVCount() <= 193) OS_SpinWaitSysCycles(392);
    if (G3X_IsGeometryBusy()) return;
    if (this->unk38 == 0) return;
    this->unk38 = 0;
    if (Vram::GetPendingUploadSize() == 0) return;
    Vram::ProcessUploadQueue();
}

void C3DVramMan::beginLoadTex(void)
{
    OS_LockMutex(&this->mutex);
    int loads = this->texLoads;
    this->texLoads++;
    if (loads > 0) return;
    GX_BeginLoadTex();
}

void C3DVramMan::endLoadTex(void)
{
    if (this->texLoads > 0) {
        this->texLoads--;
        if (this->texLoads <= 0) GX_EndLoadTex();
    }
    OS_UnlockMutex(&this->mutex);
}

void C3DVramMan::beginLoadTexPltt(void)
{
    OS_LockMutex(&this->mutex);
    int loads = this->plttLoads;
    this->plttLoads++;
    if (loads > 0) return;
    GX_BeginLoadTexPltt();
}

void C3DVramMan::endLoadTexPltt(void)
{
    if (this->plttLoads > 0) {
        this->plttLoads--;
        if (this->plttLoads <= 0) GX_EndLoadTexPltt();
    }
    OS_UnlockMutex(&this->mutex);
}

BOOL C3DVramMan::evictRes(SVRAMResource *res)
{
    if (res->evicted) return TRUE;

    OS_LockMutex(&this->mutex);

    if (res->key != 0) {
        switch (res->type) {
        case VRAM_RES_TYPE_TEX:
            NNS_GfdFreeLnkTexVram(res->key);
            break;
        case VRAM_RES_TYPE_PLTT:
            NNS_GfdFreeLnkPlttVram(res->key);
            break;
        default:
            OS_UnlockMutex(&this->mutex);
            return FALSE;
        }

        res->key = 0;
        res->evicted = true;
    }

    OS_UnlockMutex(&this->mutex);
    return TRUE;
}

BOOL C3DVramMan::restoreRes(SVRAMResource *res)
{
    if (!res->evicted) return FALSE;

    OS_LockMutex(&this->mutex);

    switch (res->type) {
    case VRAM_RES_TYPE_TEX:
        this->allocTex(res, res->size);
        break;
    case VRAM_RES_TYPE_PLTT:
        this->allocPltt(res, res->size);
        break;
    default:
        OS_UnlockMutex(&this->mutex);
        return FALSE;
    }

    res->evicted = false;

    OS_UnlockMutex(&this->mutex);
    return TRUE;
}

void C3DVramMan::resetUploadQueue(void)
{
    OS_LockMutex(&this->mutex);
    Vram::Reset();
    OS_UnlockMutex(&this->mutex);
}

BOOL C3DVramMan::loadNNSFileInternal(NNSG3dResFileHeader *header)
{
    switch (header->sigVal) {
    case NNS_G3D_SIGNATURE_NSBMD:
    case NNS_G3D_SIGNATURE_NSBTX: {
        NNSG3dResTex *tex;
        u32 texSize, tex4x4Size, plttSize;
        BOOL isTex = TRUE;
        BOOL isTex4x4 = TRUE;
        BOOL isPltt = TRUE;
        NNSGfdTexKey texKey;
        NNSGfdTexKey tex4x4Key;
        NNSGfdPlttKey plttKey;

        tex = NNS_G3dGetTex(header);
        if (tex) {
            texSize = NNS_G3dTexGetRequiredSize(tex);
            tex4x4Size = NNS_G3dTex4x4GetRequiredSize(tex);
            plttSize = NNS_G3dPlttGetRequiredSize(tex);

            if (texSize > 0) {
                texKey = NNS_GfdAllocTexVram(texSize, FALSE, 0);
                if (texKey == NNS_GFD_ALLOC_ERROR_TEXKEY) isTex = FALSE;
            } else {
                texKey = 0;
            }

            if (tex4x4Size > 0) {
                tex4x4Key = NNS_GfdAllocTexVram(tex4x4Size, TRUE, 0);
                if (tex4x4Key == NNS_GFD_ALLOC_ERROR_TEXKEY) isTex4x4 = FALSE;
            } else {
                tex4x4Key = 0;
            }

            if (plttSize > 0) {
                plttKey = NNS_GfdAllocPlttVram(plttSize, tex->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);
                if (plttKey == NNS_GFD_ALLOC_ERROR_PLTTKEY) isPltt = FALSE;
            } else {
                plttKey = 0;
            }

            if (!isTex || !isTex4x4 || !isPltt) {
                NNS_GfdFreePlttVram(plttKey);
                NNS_GfdFreeTexVram(tex4x4Key);
                NNS_GfdFreeTexVram(texKey);
                return FALSE;
            }

            NNS_G3dTexSetTexKey(tex, texKey, tex4x4Key);
            NNS_G3dPlttSetPlttKey(tex, plttKey);

            this->uploadNNSTexAsync(tex, 1);
            this->uploadNNSPlttAsync(tex, 1);
        }

        if (header->sigVal == NNS_G3D_SIGNATURE_NSBMD) {
            NNSG3dResMdlSet *mdlSet = NNS_G3dGetMdlSet(header);
            if (tex) NNS_G3dBindMdlSet(mdlSet, tex);
        }
        return TRUE;
    }
    case NNS_G3D_SIGNATURE_NSBCA:
    case NNS_G3D_SIGNATURE_NSBVA:
    case NNS_G3D_SIGNATURE_NSBMA:
    case NNS_G3D_SIGNATURE_NSBTP:
    case NNS_G3D_SIGNATURE_NSBTA:
        return TRUE;
    default:
        return FALSE;
    }
}

void C3DVramMan::uploadNNSTexAsync(NNSG3dResTex *tex, int param2)
{
    u32 size = tex->texInfo.sizeTex << 3;
    if (size == 0) return;
    this->queueTexUpload(
        NNS_GfdGetTexKeyAddr(tex->texInfo.vramKey),
        size,
        (void *)NNS_G3dGetTexData(tex),
        0,
        NULL);
    tex->texInfo.flag |= NNS_G3D_RESTEX_LOADED;
}

void C3DVramMan::uploadNNSPlttAsync(NNSG3dResTex *tex, int param2)
{
    this->queuePlttUpload(
        NNS_GfdGetPlttKeyAddr(tex->plttInfo.vramKey),
        tex->plttInfo.sizePltt << 3,
        (void *)NNS_G3dGetPlttData(tex),
        0,
        NULL);
    tex->plttInfo.flag |= NNS_G3D_RESPLTT_LOADED;
}

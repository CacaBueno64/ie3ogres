#include <nitro.h>
#include <string.h>

#include "CNsbResourceMan.hpp"
#include "filesystem.hpp"
#include "CAllocator.hpp"
#include "CFileIO.hpp"
#include "C3DVramMan.hpp"
#include "C3DVramMan.hpp"
#include "pac.hpp"

#include "init/arm9_init.hpp"

/* TODO: Create header */ extern "C" void FUN_020538b0(char *dst, const char *src, size_t n);

void CNsbResourceMan::increase(size_t size)
{
    this->totalSize += size;
}

void CNsbResourceMan::decrease(size_t size)
{
    this->totalSize = this->totalSize - size;
    if ((int)this->totalSize < 0) {
        this->totalSize = 0;
    }
}

int CNsbResourceMan::getFromData(void *data, SNsbResource **out)
{
    SNsbResource *res = this->resources;

    if (!data) {
        return -1;
    }

    for (int i = 0; i < this->cap; i++) {
        if ((res->data) && (res->flags & 1) && (res->data == data)) {
            if (out) {
                *out = res;
            }

            return i;
        }

        res++;
    }

    return -1;
}

void CNsbResourceMan::updateType(SNsbResource *res)
{
    if (res->type != 6) {
        return;
    }

    char *magic = static_cast<char *>(res->data);
    if ((magic[0] == 'B') && (magic[1] == 'C') && (magic[2] == 'A')) {
        res->type = 7;
    }
    else if ((magic[0] == 'B') && (magic[1] == 'M') && (magic[2] == 'A')) {
        res->type = 8;
    }
    else if ((magic[0] == 'B') && (magic[1] == 'T') && (magic[2] == 'A')) {
        res->type = 9;
    }
}

bool CNsbResourceMan::init(int resCount)
{
    this->resources = NULL;
    this->cap = 0;
    this->cur = 0;
    this->totalSize = 0;
    OS_InitMutex(&this->mutex);

    if (resCount <= 0) {
        return false;
    }

    this->resources = static_cast<SNsbResource *>(FileSystem::AllocateClear(sizeof(*this->resources) * resCount, -1));
    if (!this->resources) {
        return false;
    }

    this->cap = resCount;
    this->cur = 0;

    return true;
}

void CNsbResourceMan::destroy(void)
{
    this->freeAll();
    
    if (this->resources) {
        FileSystem::Deallocate(this->resources);
    }
    this->resources = NULL;

    this->cap = 0;
    this->cur = 0;
    this->totalSize = 0;
}

typedef struct {
    char name[32];
    size_t offset;
    size_t size;
    u32 type;
} SNsbResourceKey;

u32 CNsbResourceMan::calcHash(const char *str, size_t offset, size_t size, u32 type)
{
    SNsbResourceKey key;

    MI_CpuClearFast(&key, sizeof(key));
    FUN_020538b0(key.name, str, sizeof(key.name));
    key.offset = offset;
    key.size = size;
    key.type = type;

    return FileSystem::CalcCRC32(&key, sizeof(key));
}

void CNsbResourceMan::getHash(SNsbResource *res, const char *str, size_t offset, size_t size, u32 type)
{
    res->hash = this->calcHash(str, offset, size, type);
}

SNsbResource *CNsbResourceMan::getFromName(const char *name, size_t offset, size_t size, u32 type)
{
    SNsbResource *res = this->resources;
    u32 hash = this->calcHash(name, offset, size, type);

    for (int i = 0; i < this->cap; i++) {
        if (!(res->flags & 0x30) && (hash == res->hash)) {
            return res;
        }

        res++;
    }

    return NULL;
}

SNsbResource *CNsbResourceMan::getFromDir(archandle_t arcKey, const char *name, u8 type, BOOL async)
{
    SNsbResource *res = this->getFromName(name, 0, 0, type);
    if (res) {
        return this->aquire(res);
    }

    if (this->getFree(&res) < 0) {
        return NULL;
    }

    MI_CpuClearFast(res, sizeof(*res));
    OS_LockMutex(&this->mutex);

    void *data = NULL;
    filekey_t fileKey;
    s32 dataSize;
    if (async) {
        dataSize = FileSystem::ReadFileByNameDeferred(&data, arcKey, name, &fileKey);
    } else {
        dataSize = FileSystem::ReadFileByName(&data, arcKey, name);
    }

    if (dataSize > 0) {
        this->getHash(res, name, 0, 0, type);
        res->data = data;
        res->size = dataSize;
        res->type = type;
        res->flags |= 1;
        res->refCount = 1;
        if (async) {
            res->state = 1;
            res->fileKey = fileKey;
        } else {
            res->state = 2;
            this->updateType(res);
        }
        this->cur++;
        this->increase(dataSize);
    }

    OS_UnlockMutex(&this->mutex);

    return (dataSize < 0) ? NULL : res;
}

SNsbResource *CNsbResourceMan::getFromPathEx(const char *path, u8 type, BOOL async, size_t offset, size_t size, bool compressed, u8 strategy)
{
    SNsbResource *res = this->getFromName(path, offset, size, type);
    if (res) {
        return this->aquire(res);
    }

    if (this->getFree(&res) < 0) {
        return NULL;
    }

    MI_CpuClearFast(res, sizeof(*res));
    OS_LockMutex(&this->mutex);

    if ((offset == 0) && (size == 0)) {
        compressed = FALSE;
    }

    void *data = NULL;
    size_t dataSize = 0;
    if (async) {
        if (gAllocator.fileIO) {
            dataSize = gAllocator.fileIO->readDeferred(path, &data, &gAllocator, offset, size, compressed, strategy);
        }
    } else {
        if (gAllocator.fileIO) {
            dataSize = gAllocator.fileIO->readDirect(path, &data, &gAllocator, offset, size, compressed, strategy);
        }
    }

    if (dataSize > 0) {
        this->getHash(res, path, offset, size, type);
        res->data = data;
        res->size = dataSize;
        res->type = type;
        res->flags |= 1;
        res->refCount = 1;
        if (async) {
            res->state = 1;
            res->fileKey = -1;
        } else {
            res->state = 2;
            this->updateType(res);
        }
        this->cur++;
        this->increase(dataSize);
    }

    OS_UnlockMutex(&this->mutex);

    return (dataSize == 0) ? NULL : res;
}

#ifdef NONMATCHING

// https://decomp.me/scratch/YsJPG
// https://decomp.me/scratch/ZrQoA

#else // NONMATCHING

// clang-format off
extern "C" void _ZN7CFileIO12readDeferredEPKcPPvP10CAllocatorlmih(void);
extern "C" void _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih(void);

asm SNsbResource *CNsbResourceMan::getFromContainer(const char *path, const char *name, u8 type, BOOL async, size_t offset, size_t size, u8 strategy)
{
    stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
    sub sp, sp, #0x18
    ldr r6, [sp, #0x44]
    mov r7, r2
    str r1, [sp, #0x10]
    mov r11, r3
    ldr r5, [sp, #0x48]
    mov r1, r7
    mov r2, r6
    mov r3, r5
    mov r8, r0
    str r11, [sp]
    bl getFromName
    movs r4, r0
    beq _020FCF48
    mov r0, r8
    mov r1, r4
    bl aquire
    add sp, sp, #0x18
    ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FCF48:
    ldr r9, [r8, #8]
    mov r12, #0
    cmp r9, #0
    ble _020FCF94
    ldr lr, [r8, #4]
    mov r1, r12
    mov r2, #1
    mov r0, #0x18
_020FCF68:
    mla r10, r12, r0, lr
    ldrh r3, [r10, #0x10]
    tst r3, #1
    movne r3, r2
    moveq r3, r1
    cmp r3, #0
    moveq r4, r10
    beq _020FCF98
    add r12, r12, #1
    cmp r12, r9
    blt _020FCF68
_020FCF94:
    mvn r12, #0
_020FCF98:
    cmp r12, #0
    addlt sp, sp, #0x18
    movlt r0, #0
    ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
    mov r9, #0
    mov r0, r9
    mov r1, r4
    mov r2, #0x18
    bl MIi_CpuClearFast
    add r0, r8, #0x10
    bl OS_LockMutex
    mov r0, r7
    bl strlen
    sub r0, r0, #1
    ldrsb r0, [r7, r0]
    mov r10, #0
    cmp r0, #0x5f
    ldr r0, [sp, #0x40]
    moveq r9, #1
    str r10, [sp, #0x14]
    cmp r0, #0
    beq _020FD020
    ldr r3, =gAllocator
    ldr r0, [r3]
    cmp r0, #0
    beq _020FD050
    str r6, [sp]
    ldrb r10, [sp, #0x4c]
    stmib sp, {r5, r9}
    ldr r1, [sp, #0x10]
    add r2, sp, #0x14
    str r10, [sp, #0xc]
    bl _ZN7CFileIO12readDeferredEPKcPPvP10CAllocatorlmih
    b _020FD04C
_020FD020:
    ldr r3, =gAllocator
    ldr r0, [r3]
    cmp r0, #0
    beq _020FD050
    str r6, [sp]
    ldrb r10, [sp, #0x4c]
    stmib sp, {r5, r9}
    ldr r1, [sp, #0x10]
    add r2, sp, #0x14
    str r10, [sp, #0xc]
    bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020FD04C:
    mov r10, r0
_020FD050:
    cmp r10, #0
    beq _020FD0D4
    stmia sp, {r5, r11}
    mov r0, r8
    mov r1, r4
    mov r2, r7
    mov r3, r6
    bl getHash
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x40]
    stmib r4, {r1, r10}
    strb r11, [r4, #0xc]
    ldrh r2, [r4, #0x10]
    cmp r0, #0
    mov r1, #1
    orr r0, r2, #1
    strh r0, [r4, #0x10]
    strh r1, [r4, #0x12]
    strneb r1, [r4, #0xd]
    subne r0, r1, #2
    strneb r0, [r4, #0xf]
    bne _020FD0BC
    mov r2, #2
    mov r0, r8
    mov r1, r4
    strb r2, [r4, #0xd]
    bl updateType
_020FD0BC:
    ldr r1, [r8, #0xc]
    mov r0, r8
    add r2, r1, #1
    mov r1, r10
    str r2, [r8, #0xc]
    bl increase
_020FD0D4:
    add r0, r8, #0x10
    bl OS_UnlockMutex
    cmp r10, #0
    moveq r4, #0
    mov r0, r4
    add sp, sp, #0x18
    ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
}
// clang-format on

#endif // NONMATCHING

SNsbResource *CNsbResourceMan::getFromPath(const char *path, u8 type)
{
    return this->getFromPathEx(path, type, true, 0, 0, false, 1);
}

SNsbResource *CNsbResourceMan::allocate(void *data, size_t size, u8 type)
{
    SNsbResource *res = NULL;

    if (this->getFree(&res) < 0) {
        return NULL;
    }

    MI_CpuClearFast(res, sizeof(*res));
    OS_LockMutex(&this->mutex);

    if ((size != 0) && (data != NULL)) {
        res->data = data;
        res->size = size;
        res->type = type;
        res->flags |= 0x11;
        res->state = 2;
        res->refCount = 1;
        this->updateType(res);
        this->cur++;
        this->increase(size);
    }

    OS_UnlockMutex(&this->mutex);

    return ((size != 0) && (data != NULL)) ? res : NULL;
}

SNsbResource *CNsbResourceMan::aquire(SNsbResource *res)
{
    if (this->isFree(res)) {
        return NULL;
    }

    OS_LockMutex(&this->mutex);
    OS_LockMutex(&this->mutex);
    res->refCount = res->refCount + 1;
    OS_UnlockMutex(&this->mutex);
    OS_UnlockMutex(&this->mutex);

    return res;
}

int CNsbResourceMan::tryFinalize(SNsbResource *res)
{
    int result;

    OS_LockMutex(&this->mutex);

    if ((res == NULL) || (res->data == NULL) || !(res->flags & 1)) {
        result = -1;
    } else {
        switch (res->state) {
        case 0:
            result = -1;
            break;
        case 2:
            result = 0;
            break;
        case 1:
            if (res->fileKey >= 0) {
                result = FileSystem::IsFileBusy(res->fileKey);
            } else if (gAllocator.fileIO) {
                result = gAllocator.fileIO->tryFinalize(res->data);
            } else {
                result = -1;
            }

            if (result == 0) {
                res->state = 2;
                this->updateType(res);
            }
            break;
        default:
            OS_UnlockMutex(&this->mutex);
            return -1;
        }
    }

    OS_UnlockMutex(&this->mutex);

    return result;
}

void CNsbResourceMan::release(SNsbResource *res)
{
    if (!res) {
        return;
    }

    OS_LockMutex(&this->mutex);
    res->refCount = res->refCount + (u16)-1;
    OS_UnlockMutex(&this->mutex);

    if (res->refCount != 0) {
        return;
    }

    this->free(res);
}

void CNsbResourceMan::freeAll(void)
{
    SNsbResource *res = this->resources;
    int i = 0;

    if (this->cap <= 0) {
        return;
    }

    for (; i < this->cap; i++) {
        this->free(res);

        res++;
    }
}

void CNsbResourceMan::free(SNsbResource *res)
{
    if (!res) {
        return;
    }

    this->releaseData(res);

    if (res->data) {
        if (res->flags & 0x20) {
            this->release(res->next);
        } else if (res->flags & 0x10) {
            this->decrease(res->size);
        } else {
            this->decrease(res->size);
            if (res->state == 1) {
                if (res->fileKey >= 0) {
                    FileSystem::Panic();
                } else {
                    void *data = res->data;
                    if (gAllocator.fileIO) {
                        gAllocator.fileIO->close(data, true);
                    }
                }
            } else {
                gAllocator.deallocate(res->data);
            }
        }

        this->cur--;
    }

    MI_CpuClearFast(res, sizeof(*res));
}

CNsbResourceMan::CNsbResourceMan()
{
    this->resources = NULL;
    this->cap = 0;
    this->cur = 0;
    this->totalSize = 0;
}

bool CNsbResourceMan::load(SNsbResource *res)
{
    if (!res) {
        return false;
    }
    if (!res->data) {
        return false;
    }

    OS_LockMutex(&this->mutex);

    bool result = true;
    if (res->inUse != 0) {
        res->inUse++;
    } else {
        BOOL isNNS = ((res->type >= 3) && (res->type < 11)) ? TRUE : FALSE;
        if (isNNS) {
            if (!g3DVramMan->loadNNSFile(res->data)) {
                result = false;
            } else {
                res->inUse = 1;
            }
        }
    }

    OS_UnlockMutex(&this->mutex);

    return result;
}

void CNsbResourceMan::unload(SNsbResource *res)
{
    if (!res || !res->data) {
        return;
    }
    if (!this->isLoaded(res)) {
        return;
    }

    OS_LockMutex(&this->mutex);

    BOOL isNNS = ((res->type >= 3) && (res->type < 11)) ? TRUE : FALSE;
    if (isNNS) {
        u8 count = res->inUse - 1;
        res->inUse = count;
        if (count == 0) {
            g3DVramMan->releaseNNSFile(res->data);
            res->inUse = 0;
        }
    }

    OS_UnlockMutex(&this->mutex);
}

void CNsbResourceMan::releaseData(SNsbResource *res)
{
    if (!res || !res->data) {
        return;
    }
    if (!this->isLoaded(res)) {
        return;
    }

    OS_LockMutex(&this->mutex);

    BOOL isNNS = ((res->type >= 3) && (res->type < 11)) ? TRUE : FALSE;
    if (isNNS) {
        g3DVramMan->releaseNNSFile(res->data);
    }

    res->inUse = 0;

    OS_UnlockMutex(&this->mutex);
}

bool CNsbResourceMan::isLoaded(SNsbResource *res)
{
    if (!res) {
        return false;
    }

    OS_LockMutex(&this->mutex);

    bool inUse = res->inUse;

    OS_UnlockMutex(&this->mutex);

    return inUse;
}

bool CNsbResourceMan::isPac(SNsbResource *res)
{
    return (res->type >= 12) && (res->type < 16);
}

int CNsbResourceMan::getPacCount(SNsbResource *res)
{
    if (!this->isPac(res)) {
        return -1;
    }

    return PAC_GetFileCount(res->data);
}

SNsbResource *CNsbResourceMan::initPacResource(SNsbResource *main, int part, u8 type)
{
    if (part >= this->getPacCount(main)) {
        return NULL;
    }

    SNsbResource *res = NULL;

    if (this->tryFinalize(main) != 0) {
        return NULL;
    }

    void *data = PAC_GetPtr(main->data, part);
    size_t size = PAC_GetSize(main->data, part);
    if ((!data) || (!size)) {
        return NULL;
    }

    if (this->getFromData(data, &res) >= 0) {
        return this->aquire(res);
    }

    if (this->getFree(&res) < 0) {
        return NULL;
    }

    MI_CpuClearFast(res, sizeof(*res));
    OS_LockMutex(&this->mutex);

    res->data = data;
    res->size = size;
    res->type = type;
    res->flags |= 0x21;
    res->state = 2;
    res->refCount = 1;
    res->next = main;
    this->aquire(main);
    this->updateType(res);
    this->cur++;

    OS_UnlockMutex(&this->mutex);

    return res;
}

bool CNsbResourceMan::close(SNsbResource *res)
{
    if (!res) {
        return false;
    }
    if (!res->data) {
        return false;
    }

    OS_LockMutex(&this->mutex);

    if ((res->inUse) && (!(res->flags & 0x100))) {
        g3DVramMan->releaseNNSFile(res->data);
        res->flags |= 0x100;
    }

    OS_UnlockMutex(&this->mutex);
    return true;
}

bool CNsbResourceMan::setup(SNsbResource *res)
{
    if (!res) {
        return false;
    }
    if (!res->data) {
        return false;
    }

    OS_LockMutex(&this->mutex);

    if ((res->inUse) && (res->flags & 0x100)) {
        g3DVramMan->setupNNSFile(res->data);
        res->flags &= 0xFEFF;
    }

    OS_UnlockMutex(&this->mutex);
    return true;
}

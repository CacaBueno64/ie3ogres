#include "C3DSprFile.hpp"

#include <string.h>
#include <nitro.h>

#include "pac.hpp"
#include "C3DVramMan.hpp"
#include "CAllocator.hpp"
#include "CFileIO.hpp"

#include "init/arm9_init.hpp"

GXRgb sDefaultPltt[16] = {
    GX_RGB(31, 0, 31),
    GX_RGB(31, 31, 31),
    GX_RGB(0, 0, 0),
    GX_RGB(31, 0, 0),
    GX_RGB(0, 31, 0),
    GX_RGB(0, 0, 31),
    GX_RGB(0, 31, 31),
    GX_RGB(31, 0, 31),
    GX_RGB(31, 31, 0),
    GX_RGB(21, 21, 21)
};

bool C3DSprSheet::isIdle(void)
{
    return (this->flags == 0 && this->state == 0);
}

void C3DSprSheet::addRefCount(int n)
{
    this->refCount += n;
    if (this->refCount < 0) this->refCount = 0;
}

bool C3DSprSheetList::init(int n)
{
    if (n <= 0) return false;

    C3DSprSheet *list = static_cast<C3DSprSheet *>(FileSystem::AllocateClear(MATH_ROUNDUP(sizeof(*list) * n, 4), -1));
    if (!list) return false;

    this->clear();
    this->list = list;
    this->cap = n;
    this->cur = 0;

    return true;
}

void C3DSprSheetList::clear(void)
{
    if (this->list) FileSystem::Deallocate(this->list);
    this->list = NULL;
}

sfkey_t C3DSprSheetList::getFree(C3DSprSheet **out)
{
    if (out) *out = NULL;

    C3DSprSheet *cur = this->list;
    if (!cur) return NULL;

    for (sfkey_t key = 0; key < this->cap; key++) {
        if (cur->isIdle()) {
            if (out) *out = cur;
            return key + 1;
        }
        cur++;
    }

    return NULL;
}

u32 C3DSprSheetList::calcHash(const char *str, size_t offset, size_t size)
{
    struct {
        char name[32];
        size_t offset;
        size_t size;
    } key;

    MI_CpuClearFast(&key, sizeof(key));
    STD_CopyString(key.name, str);
    key.offset = offset;
    key.size = size;
    return FileSystem::CalcCRC32(&key, sizeof(key));
}

void C3DSprSheetList::getHash(u32 *out, const char *str, size_t offset, size_t size)
{
    *out = this->calcHash(str, offset, size);
}

sfkey_t C3DSprSheetList::getByName(const char *name, size_t offset, size_t size, C3DSprSheet **out)
{
    C3DSprSheet *cur;
    sfkey_t key;
    u32 hash;

    if (out) *out = NULL;
    if (!this->list) return 0;

    hash = this->calcHash(name, offset, size);
    cur = this->list;
    for (key = 0; key < this->cap; key++) {
        if (!cur->isIdle() && (hash == cur->hash)) {
            if (out) *out = cur;
            return key + 1;
        }
        cur++;
    }

    return 0;
}

C3DSprSheet *C3DSprSheetList::get(sfkey_t key)
{
    if (key <= 0 || key > this->cap) return NULL;

    return &this->list[key - 1];
}

void C3DSprFile::uploadSheet(C3DSprSheet *sheet)
{
    if (sheet->flags & 0x10) this->uploadTexData(sheet, 1, 0);
    if (sheet->flags & 0x20) this->uploadPlttData(sheet, 1, 0);
}

bool C3DSprFile::hasTexture(C3DSprSheet *sheet)
{
    if (!sheet) return false;

    switch (sheet->type) {
    case 2:
    case 4:
    case 5:
    case 7:
    case 8:
        return true;
    default:
    case 0:
    case 1:
    case 3:
    case 6:
        return false;
    }
}

bool C3DSprFile::hasPalette(C3DSprSheet *sheet)
{
    if (!sheet) return false;

    switch (sheet->type) {
    case 3:
    case 4:
    case 5:
    case 8:
        return true;
    default:
    case 0:
    case 1:
    case 2:
    case 6:
    case 7:
        return false;
    }
}

bool C3DSprFile::allocTex(C3DSprSheet *sheet)
{
    u32 size;

    if (this->tryFinalize(sheet)) return false;
    if (sheet->flags & 0x10) return true;

    switch (sheet->type) {
    case 2:
    case 4:
    case 5:
        if (sheet->flags & 2) return false;
        
        if (sheet->type == 5) {
            size = PAC_GetSize(sheet->data, 0);

            PAC_METADATA_SINGLE *meta = static_cast<PAC_METADATA_SINGLE *>(PAC_GetPtr(sheet->data, 2));
            if (!meta) return false;

            sheet->s = meta->wExp;
            sheet->t = meta->hExp;
            sheet->format = meta->fmt;
        } else {
            size = PAC_GetSize(sheet->data, 1);
        }
        break;
    case 7:
    case 8:
        size = C3DVramMan::getTexSize((GXTexSizeS)sheet->s, (GXTexSizeT)sheet->t, (GXTexFmt)sheet->format);
        break;
    default:
    case 0:
    case 1:
    case 3:
    case 6:
        return false;
    }

    if ((int)size <= 0) return false;

    if (g3DVramMan->allocTex(&sheet->texture, size)) {
        sheet->flags |= 0x10;
        return true;
    }

    g3DVramMan->freeRes(&sheet->texture);
    return false;
}

bool C3DSprFile::allocPltt(C3DSprSheet *sheet)
{
    u32 size;

    if (this->tryFinalize(sheet)) return false;
    if (sheet->flags & 0x20) return true;

    switch (sheet->type) {
    case 3:
        size = sheet->size;
        break;
    case 4:
    case 5:
        if (sheet->flags & 2) return false;
        
        if (sheet->type == 5) {
            size = PAC_GetSize(sheet->data, 1);

            PAC_METADATA_SINGLE *meta = static_cast<PAC_METADATA_SINGLE *>(PAC_GetPtr(sheet->data, 2));
            if (!meta) return false;

            sheet->s = meta->wExp;
            sheet->t = meta->hExp;
            sheet->format = meta->fmt;
            
        } else {
            size = PAC_GetSize(sheet->data, 2);
        }
        break;
    case 7:
        return true;
    case 8:
        size = C3DVramMan::getPlttSize((GXTexFmt)sheet->format);
        break;
    default:
    case 0:
    case 1:
    case 2:
    case 6:
        return false;
    }

    if ((int)size <= 0) return false;

    if (g3DVramMan->allocPltt(&sheet->palette, size)) {
        sheet->flags |= 0x20;
        return true;
    }

    g3DVramMan->freeRes(&sheet->palette);
    return false;
}

u8 C3DSprFile::uploadTexData(C3DSprSheet *sheet, u8 param2, int param3)
{
    if (this->tryFinalize(sheet) || !(sheet->flags & 0x10)) return 0;

    switch (sheet->type) {
    case 2:
    case 4:
        if (sheet->flags & 2) return 0;
        return this->uploadTex(sheet, PAC_GetPtr(sheet->data, 1), PAC_GetSize(sheet->data, 1), param2, param3, 0);
    case 5:
        if (sheet->flags & 2) return 0;
        return this->uploadTex(sheet, PAC_GetPtr(sheet->data, 0), PAC_GetSize(sheet->data, 0), param2, param3, 0);
    case 7:
    case 8:
        return 1;
    }

    return 0;
}

u8 C3DSprFile::uploadTex(C3DSprSheet *sheet, void *data, u32 size, u8 param4, int param5, int param6)
{
    if (this->tryFinalize(sheet) || !(sheet->flags & 0x10)) return 0;
    return g3DVramMan->uploadRes(&sheet->texture, param6, data, size, param4, param5, &sheet->pendingFlagTex);
}

u8 C3DSprFile::uploadPlttData(C3DSprSheet *sheet, u8 param2, int param3)
{
    if (this->tryFinalize(sheet) || !(sheet->flags & 0x20)) return 0;

    switch (sheet->type) {
    case 4:
        if (sheet->flags & 2) return 0;
        return this->uploadPltt(sheet, PAC_GetPtr(sheet->data, 2), PAC_GetSize(sheet->data, 2), param2, param3, 0);
    case 5:
        if (sheet->flags & 2) return 0;
        return this->uploadPltt(sheet, PAC_GetPtr(sheet->data, 1), PAC_GetSize(sheet->data, 1), param2, param3, 0);
    case 3: {
        void *data = sheet->data;
        u32 size = sheet->size;
        if (!data) return 0;
        return this->uploadPltt(sheet, data, size, param2, param3, 0);
    }
    case 7:
    case 8:
        return 1;
    }

    return 0;
}

u8 C3DSprFile::uploadPltt(C3DSprSheet *sheet, void *data, u32 size, u8 param4, int param5, int param6)
{
    if (this->tryFinalize(sheet) || !(sheet->flags & 0x20)) return 0;
    return g3DVramMan->uploadRes(&sheet->palette, param6, data, size, param4, param5, &sheet->pendingFlagPltt);
}

C3DSprFile::C3DSprFile()
{
    MI_CpuClearFast(&this->list, sizeof(this->list));
    MI_CpuClearFast(&this->defaultPltt, sizeof(this->defaultPltt));
}

C3DSprFile::~C3DSprFile()
{
    this->clear();
}

bool C3DSprFile::init(int texCount)
{
    int errors = 0;

    if (!this->list.init(texCount)) errors++;

    if (errors > 0) return false;
    return true;
}

void C3DSprFile::clear(void)
{
    this->releaseAll();
    this->list.clear();
}

sfkey_t C3DSprFile::loadFromArchive(int type, archandle_t handle, const char *name, BOOL async, BOOL param5, void *dest)
{
    if (type < 1 || type > 6) return 0;

    C3DSprSheet *sheet;
    sfkey_t key = this->list.getByName(name, 0, 0, &sheet);
    if (key) {
        sheet->addRefCount(1);
        return key;
    }

    key = this->list.getFree(&sheet);
    if (!key) return 0;

    MI_CpuClearFast(sheet, sizeof(*sheet));

    s32 dataSize;
    if (!async) {
        dataSize = FileSystem::ReadFileByName(&dest, handle, name);
    } else {
        dataSize = FileSystem::ReadFileByNameDeferred(&dest, handle, name, &sheet->key);
    }

    if (dataSize <= 0) return 0;

    this->list.getHash(&sheet->hash, name, 0, 0);
    sheet->data = dest;
    sheet->size = dataSize;
    sheet->flags = 0;
    if (param5) sheet->flags = 1;
    sheet->type = type;
    if (async) {
        sheet->state = 1;
    } else {
        sheet->state = 2;
    }
    sheet->addRefCount(1);
    this->list.cur++;

    return key;
}

sfkey_t C3DSprFile::loadFromPath(int type, const char *path, BOOL async, bool param4, bool compressed, void *dest, size_t offset, size_t size)
{
    if ((type < 1 || type > 6) || !path) return 0;

    const char *name = path;
    const char *match = strrchr(path, '/');
    if (match) name = match + 1;
    match = strrchr(path, '\\');
    if (match) name = match + 1;

    C3DSprSheet *sheet;
    sfkey_t key = this->list.getByName(name, offset, size, &sheet);
    if (key) {
        sheet->addRefCount(1);
        return key;
    }

    key = this->list.getFree(&sheet);
    if (!key) return 0;

    MI_CpuClearFast(sheet, sizeof(*sheet));
    
    s32 dataSize = 0;
    if (async) {
        if (gAllocator.fileIO) {
            dataSize = gAllocator.fileIO->readDeferred(path, &dest, &gAllocator, offset, size, compressed, 1);
        }
    } else {
        if (gAllocator.fileIO) {
            dataSize = gAllocator.fileIO->readDirect(path, &dest, &gAllocator, offset, size, compressed, 1);
        }
    }

    if (dataSize <= 0) return 0;

    this->list.getHash(&sheet->hash, name, size, offset);
    sheet->data = dest;
    sheet->size = dataSize;
    sheet->flags = 0;
    if (param4) sheet->flags = 1;
    sheet->type = type;
    if (async) {
        sheet->state = 1;
        sheet->key = -1;
    } else {
        sheet->state = 2;
    }
    sheet->addRefCount(1);
    this->list.cur++;

    return key;
}

static inline void allocUncompressed(void *src, void *&dst, s32 &size)
{
    size = MI_GetUncompressedSize(src);
    dst = gAllocator.allocate(size, 1, 1);
}

sfkey_t C3DSprFile::loadFromFile(FSFile *file, int type, const char *path, bool param4, void *dest, size_t offset, size_t size)
{
    const char *match;
    C3DSprSheet *sheet;
    sfkey_t key;
    s32 dataSize;
    const char *name;
    void *compData;

    if ((type < 1 || type > 6) || !path) return 0;

    name = path;
    match = strrchr(path, '/');
    if (match) name = match + 1;
    match = strrchr(path, '\\');
    if (match) name = match + 1;

    key = this->list.getByName(name, offset, size, &sheet);
    if (key) {
        sheet->addRefCount(1);
        return key;
    }

    key = this->list.getFree(&sheet);
    if (!key) return 0;

    MI_CpuClearFast(sheet, sizeof(*sheet));

    FS_SeekFile(file, offset, FS_SEEK_SET);

    gAllocator.setNextArena(257);
    compData = gAllocator.allocate(size);
    if (!compData) return 0;

    if (FS_ReadFile(file, compData, size) < 0) {
        gAllocator.deallocate(compData);
        return 0;
    }

    allocUncompressed(compData, dest, dataSize);
    if (!dest) return 0;

    switch (MI_GetCompressionType(compData)) {
    case MI_COMPRESSION_LZ:
        MI_UncompressLZ8(compData, dest);
        break;
    case MI_COMPRESSION_HUFFMAN:
        MI_UncompressHuffman(compData, dest);
        break;
    default:
        OS_Terminate();
        break;
    }

    gAllocator.deallocate(compData);

    if (dataSize <= 0) return 0;

    this->list.getHash(&sheet->hash, name, size, offset);
    sheet->data = dest;
    sheet->size = dataSize;
    sheet->flags = 0;
    if (param4) sheet->flags = 1;
    sheet->type = type;
    sheet->state = 2;
    sheet->addRefCount(1);
    this->list.cur++;

    return key;
}

sfkey_t C3DSprFile::load(void *data, int type, const char *path, bool param4, void *dest, size_t offset, size_t size)
{
    const char *match;
    C3DSprSheet *sheet;
    sfkey_t key;
    s32 dataSize;
    const char *name;

    if ((type < 1 || type > 6) || !path) return 0;

    name = path;
    match = strrchr(path, '/');
    if (match) name = match + 1;
    match = strrchr(path, '\\');
    if (match) name = match + 1;

    key = this->list.getByName(name, offset, size, &sheet);
    if (key) {
        sheet->addRefCount(1);
        return key;
    }

    key = this->list.getFree(&sheet);
    if (!key) return 0;

    MI_CpuClearFast(sheet, sizeof(*sheet));

    allocUncompressed(static_cast<u8 *>(data) + offset, dest, dataSize);
    if (!dest) OS_Terminate();

    switch (MI_GetCompressionType(static_cast<u8 *>(data) + offset)) {
    case MI_COMPRESSION_LZ:
        MI_UncompressLZ8(static_cast<u8 *>(data) + offset, dest);
        break;
    case MI_COMPRESSION_HUFFMAN:
        MI_UncompressHuffman(static_cast<u8 *>(data) + offset, dest);
        break;
    default:
        OS_Terminate();
        break;
    }

    if (dataSize <= 0) return 0;

    this->list.getHash(&sheet->hash, name, size, offset);
    sheet->data = dest;
    sheet->size = dataSize;
    sheet->flags = 0;
    if (param4) sheet->flags = 1;
    sheet->type = type;
    sheet->state = 2;
    sheet->addRefCount(1);
    this->list.cur++;

    return key;
}

int C3DSprFile::tryFinalize(sfkey_t key)
{
    return this->tryFinalize(this->list.get(key));
}

int C3DSprFile::tryFinalize(C3DSprSheet *sheet)
{
    if (!sheet || sheet->isIdle()) return -1;

    int result;
    switch (sheet->state) {
    case SPR_SHEET_STATE_ALLOCATED:
        if (sheet->key >= 0) {
            result = FileSystem::IsFileBusy(sheet->key);
        } else {
            void *data = sheet->data;
            if (gAllocator.fileIO) {
                result = gAllocator.fileIO->tryFinalize(data);
            } else {
                result = -1;
            }
        }

        if (result == 0) sheet->state = 2;
        
        return result;
    case SPR_SHEET_STATE_DETACHED:
        return 0;
    default:
        return -1;
    }

    return -1;
}

bool C3DSprFile::release(sfkey_t key)
{
    C3DSprSheet *sheet = this->list.get(key);
    if (!sheet || sheet->isIdle()) return false;

    sheet->addRefCount(-1);
    if (sheet->refCount <= 0) {
        void *data = sheet->data;

        if (data && !(sheet->flags & 1)) {
            if (sheet->state == SPR_SHEET_STATE_ALLOCATED) {
                if (gAllocator.fileIO) {
                    gAllocator.fileIO->close(data, true);
                }
            } else {
                gAllocator.deallocate(data);
            }
        }

        g3DVramMan->freeRes(&sheet->texture);
        g3DVramMan->freeRes(&sheet->palette);
        MI_CpuClearFast(sheet, sizeof(*sheet));
        this->list.cur--;
    }

    return true;
}

bool C3DSprFile::releaseAll(void)
{
    sfkey_t key;
    int count;
    for (count = 0, key = 0; key < this->list.cap; key++) {
        if (this->release(key + 1)) count++;
    }

    return (count > 0);
}

bool C3DSprFile::isInVram(sfkey_t key)
{
    C3DSprSheet *sheet = this->list.get(key);
    if (!sheet) return false;
    
    return (sheet->flags & 0x10) || (sheet->flags & 0x20);
}

bool C3DSprFile::loadToVram(sfkey_t key, u8 param2, int param3)
{
    C3DSprSheet *sheet = this->list.get(key);
    if (this->tryFinalize(key)) return false;
    
    if (this->hasTexture(sheet) && !this->loadTexToVram(key, param2, param3)) {
        this->freeVram(key);
        return false;
    }
    if (this->hasPalette(sheet) && !this->loadPlttToVram(key, param2, param3)) {
        this->freeVram(key);
        return false;
    }

    return true;
}

bool C3DSprFile::loadTexToVram(sfkey_t key, u8 param2, int param3)
{
    C3DSprSheet *sheet = this->list.get(key);
    if (this->tryFinalize(sheet)) return false;

    if (!(sheet->flags & 0x10)) {
        if (!this->allocTex(sheet)) return false;
        this->uploadTexData(sheet, param2, param3);
    }

    return true;
}

bool C3DSprFile::loadPlttToVram(sfkey_t key, u8 param2, int param3)
{
    C3DSprSheet *sheet = this->list.get(key);
    if (this->tryFinalize(sheet)) return false;

    if (!(sheet->flags & 0x20)) {
        if (!this->allocPltt(sheet)) return false;
        this->uploadPlttData(sheet, param2, param3);
    }

    return true;
}

void C3DSprFile::freeVram(sfkey_t key)
{
    this->freeTexVram(key);
    this->freePlttVram(key);
}

void C3DSprFile::freeTexVram(sfkey_t key)
{
    C3DSprSheet *sheet = this->list.get(key);
    if (!sheet) return;

    g3DVramMan->freeRes(&sheet->texture);
    sheet->flags &= 0xFFEF;
}

void C3DSprFile::freePlttVram(sfkey_t key)
{
    C3DSprSheet *sheet = this->list.get(key);
    if (!sheet) return;

    g3DVramMan->freeRes(&sheet->palette);
    sheet->flags &= 0xFFDF;
}

u8 C3DSprFile::uploadTex(sfkey_t key, void *data, size_t size, u8 param4, int param5, int param6)
{
    return this->uploadTex(this->list.get(key), data, size, param4, param5, param6);
}

u8 C3DSprFile::uploadPltt(sfkey_t key, void *data, size_t size, u8 param4, int param5, int param6)
{
    return this->uploadPltt(this->list.get(key), data, size, param4, param5, param6);
}

bool C3DSprFile::isUploadDone(sfkey_t key)
{
    C3DSprSheet *sheet = this->list.get(key);
    if (sheet == NULL) return true;

    return (sheet->pendingFlagTex == 0 && sheet->pendingFlagPltt == 0);
}

bool C3DSprFile::allocTexBuffer(sfkey_t key, void **dest, size_t *outSize)
{
    if (!dest) return false;
    *dest = NULL;
    if (outSize) *outSize = 0;

    C3DSprSheet *sheet = this->list.get(key);
    if (this->tryFinalize(sheet)) return false;

    s32 size;
    switch (sheet->type) {
    case 2:
    case 4:
        size = PAC_GetSize(sheet->data, 1);
        break;
    case 5:
        size = PAC_GetSize(sheet->data, 0);
        break;
    case 7:
    case 8:
        size = C3DVramMan::getTexSize((GXTexSizeS)sheet->s, (GXTexSizeT)sheet->t, (GXTexFmt)sheet->format);
        break;
    default:
    case 0:
    case 1:
    case 3:
    case 6:
        return false;
    }

    return this->allocBuffer(size, dest, outSize);
}

bool C3DSprFile::allocPlttBuffer(sfkey_t key, void **dest, size_t *outSize)
{
    if (!dest) return false;
    *dest = NULL;
    if (outSize) *outSize = 0;

    C3DSprSheet *sheet = this->list.get(key);
    if (this->tryFinalize(sheet)) return false;

    s32 size;
    switch (sheet->type) {
    case 3:
        size = sheet->size;
        break;
    case 8:
        size = C3DVramMan::getPlttSize((GXTexFmt)sheet->format);
        break;
    case 4:
        size = PAC_GetSize(sheet->data, 2);
        break;
    case 5:
        size = PAC_GetSize(sheet->data, 1);
        break;
    default:
    case 0:
    case 1:
    case 2:
    case 6:
    case 7:
        return false;
    }

    return this->allocBuffer(size, dest, outSize);
}

bool C3DSprFile::allocBuffer(s32 size, void **dest, size_t *outSize)
{
    if (size <= 0 || !dest) return false;
    *dest = NULL;
    if (outSize) *outSize = 0;

    void *data = Vram::Allocate(&size);
    if (!data) return false;

    *dest = data;
    if (outSize) *outSize = size;

    return true;
}

sfkey_t C3DSprFile::createTex(u8 s, u8 t, u8 fmt)
{
    C3DSprSheet *sheet;
    sfkey_t key = this->list.getFree(&sheet);
    if (!key) return NULL;

    MI_CpuClearFast(sheet, sizeof(*sheet));

    s32 size = C3DVramMan::getTexSize((GXTexSizeS)s, (GXTexSizeT)t, (GXTexFmt)fmt);
    if (size <= 0) return NULL;

    sheet->size = size;
    sheet->flags = 0;
    sheet->type = 8;
    sheet->state = SPR_SHEET_STATE_DETACHED;
    sheet->refCount = 1;
    sheet->s = s;
    sheet->t = t;
    sheet->format = fmt;
    this->list.cur++;

    return key;
}

sfkey_t C3DSprFile::createTex16(u8 s, u8 t)
{
    C3DSprSheet *sheet;
    sfkey_t key = this->list.getFree(&sheet);
    if (!key) return NULL;

    MI_CpuClearFast(sheet, sizeof(*sheet));

    s32 size = C3DVramMan::getTexSize((GXTexSizeS)s, (GXTexSizeT)t, GX_TEXFMT_PLTT16);
    if (size <= 0) return NULL;

    sheet->size = size;
    sheet->flags = 0;
    sheet->type = 7;
    sheet->state = SPR_SHEET_STATE_DETACHED;
    sheet->refCount = 1;
    sheet->s = s;
    sheet->t = t;
    sheet->format = GX_TEXFMT_PLTT16;
    this->list.cur++;

    return key;
}

sfkey_t C3DSprFile::createPltt(u8 fmt, int nPalettes)
{
    C3DSprSheet *sheet;
    sfkey_t key = this->list.getFree(&sheet);
    if (!key) return NULL;

    MI_CpuClearFast(sheet, sizeof(*sheet));

    s32 size = C3DVramMan::getPlttSize((GXTexFmt)fmt);
    if ((nPalettes * size) <= 0) return NULL;

    sheet->size = nPalettes * size;
    sheet->flags = 0;
    sheet->type = 3;
    sheet->state = SPR_SHEET_STATE_DETACHED;
    sheet->refCount = 1;
    sheet->format = fmt;
    this->list.cur++;

    return key;
}

bool C3DSprFile::acquireDefaultPltt(void)
{
    if (this->defaultPltt.refCount > 0) {
        this->defaultPltt.refCount++;
        return true;
    }

    this->defaultPltt.res.size = 0;
    this->defaultPltt.res.key = 0;
    this->defaultPltt.res.type = 0;
    this->defaultPltt.res.evicted = false;
    this->defaultPltt.refCount = 0;

    if (!g3DVramMan->allocPltt(&this->defaultPltt.res, 0x20)) return false;
    if (!g3DVramMan->uploadResNow(&this->defaultPltt.res, 0, sDefaultPltt, sizeof(sDefaultPltt))) return false;

    this->defaultPltt.refCount++;

    return true;
}

bool C3DSprFile::releaseDefaultPltt(bool force)
{
    this->defaultPltt.refCount--;
    
    if ((this->defaultPltt.refCount <= 0) || (force)) {
        g3DVramMan->freeRes(&this->defaultPltt.res);
        this->defaultPltt.refCount = 0;
    }

    return true;
}

#pragma opt_rotateloops off
bool C3DSprFile::evictVram(void)
{
    for (sfkey_t key = 0; key < this->list.cap; key++) {
        C3DSprSheet *sheet = this->list.get(key + 1);
        if (sheet) {
            g3DVramMan->evictRes(&sheet->texture);
            g3DVramMan->evictRes(&sheet->palette);
        }
    }

    g3DVramMan->evictRes(&this->defaultPltt.res);

    return true;
}
#pragma opt_rotateloops reset

#pragma opt_rotateloops off
bool C3DSprFile::restoreVram(void)
{
    for (sfkey_t key = 0; key < this->list.cap; key++) {
        C3DSprSheet *sheet = this->list.get(key + 1);
        if (sheet) {
            g3DVramMan->restoreRes(&sheet->texture);
            g3DVramMan->restoreRes(&sheet->palette);
            this->uploadSheet(sheet);
        }
    }

    if (g3DVramMan->restoreRes(&this->defaultPltt.res)) {
        g3DVramMan->uploadResNow(&this->defaultPltt.res, 0, sDefaultPltt, sizeof(sDefaultPltt));
    }

    return true;
}
#pragma opt_rotateloops reset

C3DSprSheet *C3DSprFile::getSpriteSheet(sfkey_t key)
{
    return this->list.get(key);
}

void *C3DSprFile::getTextureData(C3DSprSheet *sheet, u32 *outSize)
{
    if (this->tryFinalize(sheet)) return NULL;

    u32 size;
    switch (sheet->type) {
    case 2:
    case 4:
        if (sheet->flags & 2) return NULL;

        size = PAC_GetSize(sheet->data, 1);
        if ((s32)size <= 0) return NULL;

        if (outSize) *outSize = size;

        return PAC_GetPtr(sheet->data, 1);
    case 5:
        if (sheet->flags & 2) return NULL;

        size = PAC_GetSize(sheet->data, 0);
        if ((s32)size <= 0) return NULL;

        if (outSize) *outSize = size;

        return PAC_GetPtr(sheet->data, 0);
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    default:
        break;
    }

    return NULL;
}

void *C3DSprFile::getPaletteData(sfkey_t key, u32 *outSize)
{
    return this->getPaletteData(this->list.get(key), outSize);
}

void *C3DSprFile::getPaletteData(C3DSprSheet *sheet, u32 *outSize)
{
    if (this->tryFinalize(sheet)) return NULL;

    u32 size;
    switch (sheet->type) {
    case 3:
        if (outSize) *outSize = sheet->size;
        return sheet->data;
    case 4:
        if (sheet->flags & 2) return NULL;

        size = PAC_GetSize(sheet->data, 2);
        if ((s32)size <= 0) return NULL;

        if (outSize) *outSize = size;

        return PAC_GetPtr(sheet->data, 2);
    case 5:
        if (sheet->flags & 2) return NULL;

        size = PAC_GetSize(sheet->data, 1);
        if ((s32)size <= 0) return NULL;

        if (outSize) *outSize = size;

        return PAC_GetPtr(sheet->data, 1);
    case 0:
    case 1:
    case 6:
    case 7:
    case 8:
    default:
        break;
    }

    return NULL;
}

void *C3DSprFile::getMetadata(sfkey_t key, u32 *outSize)
{
    return this->getMetadata(this->list.get(key), outSize);
}

void *C3DSprFile::getMetadata(C3DSprSheet *sheet, u32 *outSize)
{
    if (this->tryFinalize(sheet)) return NULL;

    u32 size;
    switch (sheet->type) {
    case 2:
    case 4:
        if (sheet->flags & 2) return NULL;

        size = PAC_GetSize(sheet->data, 0);
        if ((s32)size <= 0) return NULL;

        if (outSize) *outSize = size;

        return PAC_GetPtr(sheet->data, 0);
    case 5:
        if (sheet->flags & 2) return NULL;

        size = PAC_GetSize(sheet->data, 2);
        if ((s32)size <= 0) return NULL;

        if (outSize) *outSize = size;

        return PAC_GetPtr(sheet->data, 2);
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    default:
        break;
    }

    return NULL;
}

bool C3DSprFile::getResKeyAddresses(sfkey_t key, u32 *texOut, u32 *plttOut)
{
    return this->getResKeyAddresses(this->list.get(key), texOut, plttOut);
}

bool C3DSprFile::getResKeyAddresses(C3DSprSheet *sheet, u32 *texOut, u32 *plttOut)
{
    if (!texOut && !plttOut) return false;
    if (texOut) *texOut = -1;
    if (plttOut) *plttOut = -1;
    if (this->tryFinalize(sheet)) return false;
    if (texOut && !g3DVramMan->getResKeyAddr(&sheet->texture, texOut)) return false;
    if (plttOut) {
        if (sheet->type == 7) {
            if (!g3DVramMan->getResKeyAddr(&this->defaultPltt.res, plttOut)) return false;
        } else {
            if (!g3DVramMan->getResKeyAddr(&sheet->palette, plttOut)) return false;
        }
    }
    return true;
}

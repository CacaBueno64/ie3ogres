#pragma once

#include <nitro.h>

#include "vram.hpp"
#include "archive.hpp"
#include "filesystem.hpp"

typedef int sfkey_t;
typedef unsigned char sfkey_char_t;

typedef enum {
    SPR_SHEET_STATE_IDLE,
    SPR_SHEET_STATE_ALLOCATED,
    SPR_SHEET_STATE_DETACHED,
} SprSheetState;

class C3DSprSheet
{
public:
    friend class C3DPlaneCtrl;
    friend class C3DSprFile;
    friend class C3DSprSheetList;
    /* 0x02057c6c */ bool isIdle(void);
    /* 0x02057c88 */ void addRefCount(int n);

private:
    u32 hash;
    void *data;
    u32 size;
    u16 flags;
    u8 type;
    u8 state;
    s16 refCount;
    u8 s; // GXTexSizeS
    u8 t; // GXTexSizeT
    u8 format; // GXTexFmt
    filekey_t key;
    u8 pad_16[2];
    SVRAMResource texture;
    SVRAMResource palette;
    u8 pendingFlagTex;
    u8 pendingFlagPltt;
    u8 unk_32;
    u8 pad_33[1];
};

class C3DSprSheetList
{
public:
    friend class C3DPlaneCtrl;
    friend class C3DSprFile;
    /* 0x02057cac */ bool init(int n);
    /* 0x02057d08 */ void clear(void);
    /* 0x02057d2c */ sfkey_t getFree(C3DSprSheet **out);
    /* 0x02057d9c */ u32 calcHash(const char *str, size_t offset, size_t size);
    /* 0x02057df0 */ void getHash(u32 *out, const char *str, size_t offset, size_t size);
    /* 0x02057e10 */ sfkey_t getByName(const char *name, size_t offset, size_t size, C3DSprSheet **out);
    /* 0x02057e9c */ C3DSprSheet *get(sfkey_t key);

private:
    C3DSprSheet *list;
    s16 cap;
    s16 cur;
};
class C3DSprFile
{
public:
    virtual ~C3DSprFile();

    void uploadSheet(C3DSprSheet *sheet);
    bool hasTexture(C3DSprSheet *sheet);
    bool hasPalette(C3DSprSheet *sheet);
    bool allocTex(C3DSprSheet *sheet);
    bool allocPltt(C3DSprSheet *sheet);
    u8 uploadTexData(C3DSprSheet *sheet, u8 param2, int param3);
    u8 uploadTex(C3DSprSheet *sheet, void *data, u32 size, u8 param4, int param5, int param6);
    u8 uploadPlttData(C3DSprSheet *sheet, u8 param2, int param3);
    u8 uploadPltt(C3DSprSheet *sheet, void *data, u32 size, u8 param4, int param5, int param6);
    C3DSprFile();
    bool init(int texCount);
    void clear(void);
    sfkey_t loadFromArchive(int type, archandle_t handle, const char *name, BOOL async, BOOL param5, void *data);
    sfkey_t loadFromPath(int type, const char *path, BOOL async, bool param4, bool compressed, void *dest, size_t offset, size_t size);
    sfkey_t loadFromFile(FSFile *file, int type, const char *path, bool param4, void *dest, size_t offset, size_t size);
    sfkey_t load(void *data, int type, const char *path, bool param4, void *dest, size_t offset, size_t size);
    int tryFinalize(sfkey_t key);
    int tryFinalize(C3DSprSheet *sheet);
    bool release(sfkey_t key);
    bool releaseAll(void);
    bool isInVram(sfkey_t key);
    bool loadToVram(sfkey_t key, u8 param2, int param3);
    bool loadTexToVram(sfkey_t key, u8 param2, int param3);
    bool loadPlttToVram(sfkey_t key, u8 param2, int param3);
    void freeVram(sfkey_t key);
    void freeTexVram(sfkey_t key);
    void freePlttVram(sfkey_t key);
    u8 uploadTex(sfkey_t key, void *data, size_t size, u8 param4, int param5, int param6);
    u8 uploadPltt(sfkey_t key, void *data, size_t size, u8 param4, int param5, int param6);
    bool isUploadDone(sfkey_t key);
    bool allocTexBuffer(sfkey_t key, void **dest, size_t *outSize);
    bool allocPlttBuffer(sfkey_t key, void **dest, size_t *outSize);
    bool allocBuffer(s32 size, void **dest, size_t *outSize);
    sfkey_t createTex(u8 s, u8 t, u8 fmt);
    sfkey_t createTex16(u8 s, u8 t);
    sfkey_t createPltt(u8 fmt, int nPalettes);
    bool acquireDefaultPltt(void);
    bool releaseDefaultPltt(bool param1);
    bool evictVram(void);
    bool restoreVram(void);
    C3DSprSheet *getSpriteSheet(sfkey_t key);
    void *getTextureData(C3DSprSheet *sheet, u32 *outSize);
    void *getPaletteData(sfkey_t key, u32 *outSize);
    void *getPaletteData(C3DSprSheet *sheet, u32 *outSize);
    void *getMetadata(sfkey_t key, u32 *outSize);
    void *getMetadata(C3DSprSheet *sheet, u32 *outSize);
    bool getResKeyAddresses(sfkey_t key, u32 *texOut, u32 *plttOut);
    bool getResKeyAddresses(C3DSprSheet *sheet, u32 *texOut, u32 *plttOut);

    inline u32 getPaletteSizeSingle(C3DSprSheet *sheet)
    {
        if (!sheet) return 0;
        if (sheet->format == GX_TEXFMT_PLTT16) return 0x20;
        if (sheet->format == GX_TEXFMT_PLTT256) return 0x200;
        return 0;
    }

private:
    C3DSprSheetList list;
    SSharedVRAMResource defaultPltt;
};

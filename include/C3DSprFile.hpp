#pragma once

#include <nitro/gx/g3.h>
#include <nitro/types.h>

#include "vram.hpp"

typedef int sfkey_t;
typedef unsigned char sfkey_char_t;

class C3DSprSheet
{
public:
    friend class C3DPlaneCtrl;
    friend class C3DSprFile;
    bool isIdle();

private:
    u32 hash;
    void *data;
    u32 size;
    u16 flags;
    u8 type;
    u8 state;
    s16 refCount;
    u8 s;
    u8 t;
    u8 format;
    sfkey_char_t key;
    u8 pad_16[2];
    SVRAMResource texture;
    SVRAMResource palette;
    u8 unk_30;
    u8 unk_31;
    u8 unk_32;
    u8 pad_33[1];
};

class C3DSprSheetList
{
private:
    C3DSprSheet *list;
    u16 cap;
    u16 cur;
};
class C3DSprFile
{
public:
    C3DSprFile();
    virtual ~C3DSprFile();
    void finalize();
    bool acquire();
    bool release(bool);
    bool init(u32 fileCount);
    C3DSprSheet *getSpriteSheet(sfkey_t key);
    void *FUN_02059bb4(C3DSprSheet *sheet, u32 *outSize);
    void *getPaletteData(C3DSprSheet *sheet, u32 *outSize);
    bool getResKeyAddresses(C3DSprSheet *sheet, u32 *texOut, u32 *plttOut);
    bool FUN_02059004(sfkey_t key);
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

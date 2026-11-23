#ifndef IMAGE_HPP
#define IMAGE_HPP
#endif /* IMAGE_HPP */

#include <cstdint>
#include <iostream>
#include <bit>

#include "spng/spng.h"

namespace GX {

enum {
    TILE_ROW_SIZE_4BPP = 4,
    TILE_ROW_SIZE_8BPP = 8,
    TILE_ROW_COUNT = 8,
    TILE_FLIP_H_FLAG = 0x0400,
    TILE_FLIP_V_FLAG = 0x0800,
    TILE_FLIP_HV_FLAG = 0x0C00,
};

typedef enum : uint8_t {
    TEXFMT_NONE = 0,
    TEXFMT_A3I5 = 1,
    TEXFMT_PLTT4 = 2,
    TEXFMT_PLTT16 = 3,
    TEXFMT_PLTT256 = 4,
    TEXFMT_COMP4x4 = 5,
    TEXFMT_A5I3 = 6,
    TEXFMT_DIRECT = 7,
} TexFmt;

typedef enum : uint8_t {
    TEXSIZE_S8 = 0,
    TEXSIZE_S16 = 1,
    TEXSIZE_S32 = 2,
    TEXSIZE_S64 = 3,
    TEXSIZE_S128 = 4,
    TEXSIZE_S256 = 5,
    TEXSIZE_S512 = 6,
    TEXSIZE_S1024 = 7,
} TexSizeS;

typedef enum : uint8_t {
    TEXSIZE_T8 = 0,
    TEXSIZE_T16 = 1,
    TEXSIZE_T32 = 2,
    TEXSIZE_T64 = 3,
    TEXSIZE_T128 = 4,
    TEXSIZE_T256 = 5,
    TEXSIZE_T512 = 6,
    TEXSIZE_T1024 = 7,
} TexSizeT;

inline void GetTexSizeST(int width, int height, TexSizeS *s, TexSizeT *t) {
    *s = static_cast<TexSizeS>(std::countr_zero(std::bit_ceil(static_cast<unsigned>(std::max(width, 8)))) - 3);
    *t = static_cast<TexSizeT>(std::countr_zero(std::bit_ceil(static_cast<unsigned>(std::max(height, 8)))) - 3);
}

TexFmt GetTexFmt(int count) {
    // only pltt16 and pltt256 are supported by the game right now (and pltt4 but i never saw any)
    if (count > 16) {
        return TEXFMT_PLTT256;
    } else {
        return TEXFMT_PLTT16;
    }
}

} /* namespace GX */

namespace PAC {

typedef enum {
    TYPE_BPM,
    TYPE_CP,
    TYPE_PSC,
    TYPE_PSCM,
} Type;

typedef struct {
    uint32_t count;
    uint32_t charOffs;
    uint32_t charSize;
    uint32_t plttOffs;
    uint32_t plttSize;
    uint32_t dataSize;
} HeaderCP;

typedef struct {
    uint32_t count;
    uint32_t bmpOffs;
    uint32_t bmpSize;
    uint32_t plttOffs;
    uint32_t plttSize;
    uint32_t metaOffs;
    uint32_t metaSize;
    uint32_t dataSize;
} HeaderBPM;

typedef struct {
    uint32_t count;
    uint32_t plttOffs;
    uint32_t plttSize;
    uint32_t scrnOffs;
    uint32_t scrnSize;
    uint32_t charOffs;
    uint32_t charSize;
    uint32_t dataSize;
} HeaderPSC;

typedef struct {
    uint32_t count;
    uint32_t plttOffs;
    uint32_t plttSize;
    uint32_t scrnOffs;
    uint32_t scrnSize;
    uint32_t charOffs;
    uint32_t charSize;
    uint32_t metaOffs;
    uint32_t metaSize;
    uint32_t dataSize;
} HeaderPSCM;

typedef struct {
    int16_t x;
    int16_t y;
    int16_t w;
    int16_t h;
} MetadataCell;

typedef struct {
    int16_t count;
    GX::TexSizeS s;
    GX::TexSizeT t;
    GX::TexFmt fmt;
    uint8_t pad[3];
    MetadataCell cells[];
} Metadata;

} /* namespace PAC */

typedef struct {
    uint8_t r;
    uint8_t g;
    uint8_t b;
} PaletteEntry;

typedef struct {
    int count;
    PaletteEntry entries[];
} Palette;

typedef struct {
    GX::TexFmt format;
    int width;
    int height;
    void *bitmap;
    size_t bitmapSize;
    Palette *palette;
} Image;

GX::TexFmt GetTexFmt(Image *image);
void FreeImage(Image *image);
bool LoadPalette(Image *image, struct spng_plte *plte);
Image *LoadPng(const char *path);
bool LoadConfig(const char *path, Image *image, PAC::Metadata *&dest, size_t *dest_size);
bool PaletteToBGR555(Palette *palette, GX::TexFmt format, uint16_t *&dest, size_t *dest_size);
bool BmpToCharAndScreen(Image *image, uint8_t *&chara, uint16_t *&screen, size_t *chara_size, size_t *screen_size);
void FlipTileH(uint8_t *tile, GX::TexFmt format, int tile_row_size);
void FlipTileV(uint8_t *tile, GX::TexFmt format, int tile_row_size);
void FlipTileHV(uint8_t *tile, GX::TexFmt format, int tile_row_size);
bool BmpToCharAndScreenOpt(Image *image, uint8_t *&chara, uint16_t *&screen, size_t *chara_size, size_t *screen_size);
bool ImageToPac(Image *image,
                uint16_t *palette, size_t palette_size,
                uint8_t *chara, size_t chara_size,
                uint16_t *screen, size_t screen_size,
                PAC::Metadata *metadata, size_t metadata_size,
                PAC::Type type, void *&dest, size_t *dest_size);


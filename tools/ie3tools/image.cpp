#include "image.hpp"

#include <fstream>
#include <cstdlib>
#include <cstring>
#include <cstdint>
#include <filesystem>
#include <string>
#include <unordered_map>

#include "spng/spng.h"
#include "nlohmann/json.hpp"

#define ROUND(x, base) (((x) + ((base)-1)) & ~((base)-1))
#define ROUND32(x) (ROUND(x, 32))

void FreeImage(Image *image) {
    if (image) {
        if (image->bitmap) free(image->bitmap);
        if (image->palette) free(image->palette);
        free(image);
    }
}

bool LoadPalette(Image *image, struct spng_plte *plte) {
    image->palette = static_cast<Palette *>(malloc(sizeof(Palette) + (sizeof(PaletteEntry) * plte->n_entries)));
    if (image->palette == NULL) {
        fprintf(stderr, "image: LoadPalette() failed: palette alloc error\n");
        return false;
    }

    image->palette->count = plte->n_entries;
    for (int i = 0; i < image->palette->count; i++) {
        image->palette->entries[i].r = plte->entries[i].red;
        image->palette->entries[i].g = plte->entries[i].green;
        image->palette->entries[i].b = plte->entries[i].blue;
    }

    return true;
}

Image *LoadPng(const char *path)
{
    FILE *file = fopen(path, "rb");
    if (!file) {
        fprintf(stderr, "image: LoadPng() failed: error opening input file: %s\n", path);
        return NULL;
    }
    spng_ctx *ctx = spng_ctx_new(0);
    if (!ctx) {
        fprintf(stderr, "image: spng_ctx_new() failed\n");
        spng_ctx_free(ctx);
        fclose(file);
        return NULL;
    }

    size_t limit = 1024 * 1024 * 64;
    spng_set_chunk_limits(ctx, limit, limit);
    spng_set_png_file(ctx, file);
    
    struct spng_ihdr ihdr;
    int ret = spng_get_ihdr(ctx, &ihdr);
    if (ret) {
        fprintf(stderr, "image: spng_get_ihdr() failed: %s\n", spng_strerror(ret));
        spng_ctx_free(ctx);
        fclose(file);
        return NULL;
    }

    struct spng_plte plte = {0};
    ret = spng_get_plte(ctx, &plte);
    if (ret && ret != SPNG_ECHUNKAVAIL) {
        fprintf(stderr, "image: spng_get_plte() failed: %s\n", spng_strerror(ret));
        spng_ctx_free(ctx);
        fclose(file);
        return NULL;
    }

    size_t data_size;
    int fmt = SPNG_FMT_PNG;
    ret = spng_decoded_image_size(ctx, fmt, &data_size);
    if (ret) {
        fprintf(stderr, "image: spng_decoded_image_size() failed: %s\n", spng_strerror(ret));
        spng_ctx_free(ctx);
        fclose(file);
        return NULL;
    }

    void *data = calloc(1, data_size);
    if (!data) {
        fprintf(stderr, "image: LoadPng() failed: data alloc error\n");
        spng_ctx_free(ctx);
        fclose(file);
        return NULL;
    }

    ret = spng_decode_image(ctx, data, data_size, fmt, 0);
    if (ret) {
        fprintf(stderr, "image: spng_decode_image() failed: %s\n", spng_strerror(ret));
        spng_ctx_free(ctx);
        free(data);
        fclose(file);
        return NULL;
    }

    if (ihdr.color_type == SPNG_COLOR_TYPE_INDEXED && ihdr.bit_depth == 4) {
        uint8_t *p = static_cast<uint8_t *>(data);
        for (size_t i = 0; i < data_size; i++) {
            p[i] = static_cast<uint8_t>((p[i] << 4) | (p[i] >> 4));
        }
    }

    Image *image = static_cast<Image *>(calloc(1, sizeof(Image)));
    if (!image) {
        fprintf(stderr, "image: LoadPng() failed: image alloc error\n");
        spng_ctx_free(ctx);
        free(data);
        fclose(file);
        return NULL;
    }
    image->width = ihdr.width;
    image->height = ihdr.height;
    image->bitmap = data;
    image->bitmapSize = data_size;
    if (!LoadPalette(image, &plte)) {
        fprintf(stderr, "image: LoadPng() failed: LoadPalette() error\n");
        spng_ctx_free(ctx);
        fclose(file);
        FreeImage(image);
        return NULL;
    }
    image->format = GX::GetTexFmt(image->palette->count);

    spng_ctx_free(ctx);
    fclose(file);
    return image;
}

bool LoadConfig(const char *path, Image *image, PAC::Metadata *&dest, size_t *dest_size)
{
    std::filesystem::path config_path = path;
    config_path.replace_extension(".json");
    if (!std::filesystem::exists(config_path)) { // we don't need a config file when there's only 1 cell
        dest = static_cast<PAC::Metadata *>(calloc(1, sizeof(PAC::Metadata) + sizeof(PAC::MetadataCell)));
        if (!dest) {
            fprintf(stderr, "image: LoadConfig() failed: metadata alloc error\n");
            return false;
        }

        dest->count = 1;
        GX::GetTexSizeST(image->width, image->height, &dest->s, &dest->t);
        dest->fmt = image->format;
        dest->cells[0].x = 0;
        dest->cells[0].y = 0;
        dest->cells[0].w = image->width;
        dest->cells[0].h = image->height;

        *dest_size = sizeof(PAC::Metadata) + sizeof(PAC::MetadataCell);
        return true;
    }

    std::ifstream file(config_path, std::ios::in);
    nlohmann::json config = nlohmann::json::parse(file);

    uint16_t count = config["Cells"].size();
    dest = static_cast<PAC::Metadata *>(calloc(1, sizeof(PAC::Metadata) + sizeof(PAC::MetadataCell) * count));
    if (!dest) {
        fprintf(stderr, "image: LoadConfig() failed: metadata alloc error\n");
        file.close();
        return false;
    }

    dest->count = count;
    dest->s = config["GXTexSizeS"];
    dest->t = config["GXTexSizeT"];
    dest->fmt = config["GXTexFmt"];
    int i = 0;
    for (auto &cell : config["Cells"]) {
        dest->cells[i].x = cell["x"];
        dest->cells[i].y = cell["y"];
        dest->cells[i].w = cell["w"];
        dest->cells[i].h = cell["h"];
        i++;
    }

    *dest_size = sizeof(PAC::Metadata) + sizeof(PAC::MetadataCell) * count;

    return true;
}

bool PaletteToBGR555(Palette *palette, GX::TexFmt format, uint16_t *&dest, size_t *dest_size)
{
    dest = static_cast<uint16_t *>(calloc(1, sizeof(uint16_t) * palette->count));
    if (!dest) {
        fprintf(stderr, "image: PaletteToBGR555() failed: data alloc error\n");
        return false;
    }

    for (int i = 0; i < palette->count; i++) {
        dest[i] = (((palette->entries[i].b / 8) << 10) | ((palette->entries[i].g / 8) << 5) | (palette->entries[i].r / 8));
    }

    *dest_size = sizeof(uint16_t) * palette->count;

    return true;
}

bool BmpToCharAndScreen(Image *image, uint8_t *&chara, uint16_t *&screen, size_t *chara_size, size_t *screen_size)
{
    int tile_row_size;
    if (image->format == GX::TEXFMT_PLTT16) {
        tile_row_size = GX::TILE_ROW_SIZE_4BPP;
    } else { // GX::TEXFMT_PLTT256
        tile_row_size = GX::TILE_ROW_SIZE_8BPP;
    }
    int tile_size = tile_row_size * GX::TILE_ROW_COUNT;
    int tile_count_h = image->width / 8;
    int tile_count_v = image->height / 8;

    uint8_t *bitmap = static_cast<uint8_t *>(image->bitmap);
    chara = static_cast<uint8_t *>(calloc(1, tile_count_h * tile_count_v * tile_size));
    screen = static_cast<uint16_t *>(calloc(1, tile_count_h * tile_count_v * sizeof(uint16_t)));
    if (!chara || !screen) {
        fprintf(stderr, "image: BmpToCharAndScreen() failed: chara/screen alloc error\n");
        return false;
    }

    uint16_t char_idx = 0;
    for (int y = 0; y < tile_count_v; y++) {
        for (int x = 0; x < tile_count_h; x++) {
            screen[x + y * tile_count_h] = char_idx;

            for (int r = 0; r < GX::TILE_ROW_COUNT; r++) {
                memcpy(chara + (char_idx * tile_size) + (r * tile_row_size),
                       bitmap + ((x + (r + y * 8) * tile_count_h) * tile_row_size),
                       tile_row_size);
            }

            char_idx++;
        }
    }

    *chara_size = tile_count_h * tile_count_v * tile_size;
    *screen_size = tile_count_h * tile_count_v * sizeof(uint16_t);

    return true;
}

void FlipTileH(uint8_t *tile, GX::TexFmt format, int tile_row_size)
{
    for (int r = 0; r < GX::TILE_ROW_COUNT; r++) {
        for (int i = 0, j = tile_row_size - 1; i < tile_row_size / 2; i++, j--) {
            int idx1 = i + r * tile_row_size;
            int idx2 = j + r * tile_row_size;
            if (format == GX::TEXFMT_PLTT16) {
                uint8_t p1 = ((tile[idx1] & 0x0F) << 4 | (tile[idx1] & 0xF0) >> 4);
                uint8_t p2 = ((tile[idx2] & 0x0F) << 4 | (tile[idx2] & 0xF0) >> 4);
                tile[idx1] = p2;
                tile[idx2] = p1;
            } else { /* GX::TEXFMT_PLTT256 */
                uint8_t temp = tile[idx1];
                tile[idx1] = tile[idx2];
                tile[idx2] = temp;
            }
        }
    }
}

void FlipTileV(uint8_t *tile, GX::TexFmt format, int tile_row_size)
{
    for (int r1 = 0, r2 = 8 - 1; r1 < GX::TILE_ROW_COUNT / 2; r1++, r2--) {
        for (int i = 0; i < tile_row_size; i++) {
            int idx1 = i + r1 * tile_row_size;
            int idx2 = i + r2 * tile_row_size;
            uint8_t temp = tile[idx1];
            tile[idx1] = tile[idx2];
            tile[idx2] = temp;
        }
    }
}

void FlipTileHV(uint8_t *tile, GX::TexFmt format, int tile_row_size)
{
    FlipTileV(tile, format, tile_row_size);
    FlipTileH(tile, format, tile_row_size);
}

bool BmpToCharAndScreenOpt(Image *image, uint8_t *&chara, uint16_t *&screen, size_t *chara_size, size_t *screen_size)
{
    int tile_row_size;
    if (image->format == GX::TEXFMT_PLTT16) {
        tile_row_size = GX::TILE_ROW_SIZE_4BPP;
    } else { // GX::TEXFMT_PLTT256
        tile_row_size = GX::TILE_ROW_SIZE_8BPP;
    }
    int tile_size = tile_row_size * GX::TILE_ROW_COUNT;
    int tile_count_h = image->width / 8;
    int tile_count_v = image->height / 8;

    uint8_t *bitmap = static_cast<uint8_t *>(image->bitmap);
    chara = static_cast<uint8_t *>(calloc(1, tile_count_h * tile_count_v * tile_size));
    screen = static_cast<uint16_t *>(calloc(1, tile_count_h * tile_count_v * sizeof(uint16_t)));
    if (!chara || !screen) {
        fprintf(stderr, "image: BmpToCharAndScreenOpt() failed: chara/screen alloc error\n");
        return false;
    }

    std::unordered_map<std::string, uint16_t> tile_map;
    auto find_tile = [&](uint8_t *t) { // c++ is fun
        return tile_map.find(std::string(reinterpret_cast<char *>(t), tile_size));
    };

    uint8_t tile[64], tile_h[64], tile_v[64], tile_hv[64];
    uint16_t char_count = 0;
    for (int y = 0; y < tile_count_v; y++) {
        for (int x = 0; x < tile_count_h; x++) {
            for (int r = 0; r < GX::TILE_ROW_COUNT; r++) {
                memcpy(tile + (r * tile_row_size),
                       bitmap + ((x + (r + y * 8) * tile_count_h) * tile_row_size),
                       tile_row_size);
            }

            memcpy(tile_h, tile, tile_size);
            FlipTileH(tile_h, image->format, tile_row_size);
            memcpy(tile_v, tile, tile_size);
            FlipTileV(tile_v, image->format, tile_row_size);
            memcpy(tile_hv, tile, tile_size);
            FlipTileHV(tile_hv, image->format, tile_row_size);

            uint16_t idx;
            uint16_t flags = 0;
            auto it = find_tile(tile);
            if (it != tile_map.end()) {
                idx = it->second;
            } else if ((it = find_tile(tile_h)) != tile_map.end()) {
                idx = it->second;
                flags = GX::TILE_FLIP_H_FLAG;
            } else if ((it = find_tile(tile_v)) != tile_map.end()) {
                idx = it->second;
                flags = GX::TILE_FLIP_V_FLAG;
            } else if ((it = find_tile(tile_hv)) != tile_map.end()) {
                idx = it->second;
                flags = GX::TILE_FLIP_HV_FLAG;
            } else {
                idx = char_count++;
                tile_map.emplace(std::string(reinterpret_cast<char *>(tile), tile_size), idx);
                memcpy(chara + (idx * tile_size), tile, tile_size);
            }

            screen[x + y * tile_count_h] = idx | flags;
        }
    }

    *chara_size = char_count * tile_size;
    *screen_size = tile_count_h * tile_count_v * sizeof(uint16_t);

    return true;
}

bool ImageToPac(Image *image,
                uint16_t *palette, size_t palette_size,
                uint8_t *chara, size_t chara_size,
                uint16_t *screen, size_t screen_size,
                PAC::Metadata *metadata, size_t metadata_size,
                PAC::Type type, void *&dest, size_t *dest_size)
{
    size_t size = 0;
    switch (type) {
    case PAC::TYPE_CP: {
        size = ROUND32(sizeof(PAC::HeaderCP)) + ROUND32(chara_size) + ROUND32(palette_size);
        dest = malloc(size);
        if (!dest) {
            fprintf(stderr, "image: ImageToPac() failed: cp alloc error\n");
            return false;
        }
        memset(dest, 0xFF, size);
        PAC::HeaderCP *header = static_cast<PAC::HeaderCP *>(dest);
        header->count = 2;
        header->charOffs = ROUND32(sizeof(PAC::HeaderCP));
        header->charSize = chara_size;
        header->plttOffs = ROUND32(sizeof(PAC::HeaderCP)) + ROUND32(chara_size);
        header->plttSize = palette_size;
        header->dataSize = ROUND32(chara_size) + ROUND32(palette_size);
        memcpy(static_cast<uint8_t *>(dest) + header->charOffs, chara, header->charSize);
        memcpy(static_cast<uint8_t *>(dest) + header->plttOffs, palette, header->plttSize);
        break;
      }
    case PAC::TYPE_PSC: {
        size = sizeof(PAC::HeaderPSC) + ROUND32(palette_size) + ROUND32(screen_size) + ROUND32(chara_size);
        dest = malloc(size);
        if (!dest) {
            fprintf(stderr, "image: ImageToPac() failed: psc alloc error\n");
            return false;
        }
        memset(dest, 0xFF, size);
        PAC::HeaderPSC *header = static_cast<PAC::HeaderPSC *>(dest);
        header->count = 3;
        header->plttOffs = sizeof(PAC::HeaderPSC);
        header->plttSize = palette_size;
        header->scrnOffs = sizeof(PAC::HeaderPSC) + ROUND32(palette_size);
        header->scrnSize = screen_size;
        header->charOffs = sizeof(PAC::HeaderPSC) + ROUND32(palette_size) + ROUND32(screen_size);
        header->charSize = chara_size;
        header->dataSize = ROUND32(palette_size) + ROUND32(screen_size) + ROUND32(chara_size);
        memcpy(static_cast<uint8_t *>(dest) + header->plttOffs, palette, header->plttSize);
        memcpy(static_cast<uint8_t *>(dest) + header->scrnOffs, screen, header->scrnSize);
        memcpy(static_cast<uint8_t *>(dest) + header->charOffs, chara, header->charSize);
        break;
      }
    case PAC::TYPE_BPM: {
        size = sizeof(PAC::HeaderBPM) + ROUND32(image->bitmapSize) + ROUND32(palette_size) + metadata_size;
        dest = malloc(size);
        if (!dest) {
            fprintf(stderr, "image: ImageToPac() failed: bpm alloc error\n");
            return false;
        }
        memset(dest, 0xFF, size);
        PAC::HeaderBPM *header = static_cast<PAC::HeaderBPM *>(dest);
        header->count = 3;
        header->bmpOffs = sizeof(PAC::HeaderBPM);
        header->bmpSize = image->bitmapSize;
        header->plttOffs = sizeof(PAC::HeaderBPM) + ROUND32(image->bitmapSize);
        header->plttSize = palette_size;
        header->metaOffs = sizeof(PAC::HeaderBPM) + ROUND32(image->bitmapSize) + ROUND32(palette_size);
        header->metaSize = metadata_size;
        header->dataSize = ROUND32(image->bitmapSize) + ROUND32(palette_size) + metadata_size;
        memcpy(static_cast<uint8_t *>(dest) + header->bmpOffs, image->bitmap, header->bmpSize);
        memcpy(static_cast<uint8_t *>(dest) + header->plttOffs, palette, header->plttSize);
        memcpy(static_cast<uint8_t *>(dest) + header->metaOffs, metadata, header->metaSize);
        break;
      }
    case PAC::TYPE_PSCM: {
        size = ROUND32(sizeof(PAC::HeaderPSCM)) + \
               ROUND32(palette_size) + ROUND32(screen_size) + ROUND32(chara_size) + metadata_size;
        dest = malloc(size);
        if (!dest) {
            fprintf(stderr, "image: ImageToPac() failed: pscm alloc error\n");
            return false;
        }
        memset(dest, 0xFF, size);
        PAC::HeaderPSCM *header = static_cast<PAC::HeaderPSCM *>(dest);
        header->count = 4;
        header->plttOffs = ROUND32(sizeof(PAC::HeaderPSCM));
        header->plttSize = palette_size;
        header->scrnOffs = ROUND32(sizeof(PAC::HeaderPSCM)) + ROUND32(palette_size);
        header->scrnSize = screen_size;
        header->charOffs = ROUND32(sizeof(PAC::HeaderPSCM)) + ROUND32(palette_size) + ROUND32(screen_size);
        header->charSize = chara_size;
        header->metaOffs = ROUND32(sizeof(PAC::HeaderPSCM)) + ROUND32(palette_size) + ROUND32(screen_size) + ROUND32(chara_size);
        header->metaSize = metadata_size;
        header->dataSize = ROUND32(palette_size) + ROUND32(screen_size) + ROUND32(chara_size) + metadata_size;
        memcpy(static_cast<uint8_t *>(dest) + header->plttOffs, palette, header->plttSize);
        memcpy(static_cast<uint8_t *>(dest) + header->scrnOffs, screen, header->scrnSize);
        memcpy(static_cast<uint8_t *>(dest) + header->charOffs, chara, header->charSize);
        memcpy(static_cast<uint8_t *>(dest) + header->metaOffs, metadata, header->metaSize);
        break;
      }
    }

    *dest_size = size;

    return true;
}

// g++ -g -std=c++20 tools/ie3tools/image.cpp -x c tools/ie3tools/spng/spng.c -x none -lz -o tools/ie3tools/image
int main(int argc, char **argv)
{
    if ((strcmp("-h", argv[1]) == 0)) {
show_help:
        fprintf(stderr, "usage: image [-h] (-d | -c) input output --type TYPE [--opt true|false]\n");
        fprintf(stderr, "\nImage data conversion.\n");
        fprintf(stderr, "\noptions:\n");
        fprintf(stderr, "\tinput\tInput path\n");
        fprintf(stderr, "\toutput\tOutput path\n");
        fprintf(stderr, "\t-h\tShow this help message and exit\n");
        fprintf(stderr, "\t-d\tDecode\n");
        fprintf(stderr, "\t-c\tEncode\n");
        fprintf(stderr, "\t--type\tData type: (CP | PSC | PSCM | BPM)\n");
        fprintf(stderr, "\t--opt\tTile optimisation (set to false by default)\n");
        return 1;
    } else if (strcmp("-d", argv[1]) == 0) {
        fprintf(stderr, "image: decoding is not supported, use the python script instead\n");
        return 1;
    } else if ((argc > 5) && (strcmp("-c", argv[1]) == 0) && (strcmp("--type", argv[4]) == 0)) {
        PAC::Type type;
        if (strcmp("BPM", argv[5]) == 0) {
            type = PAC::TYPE_BPM;
        } else if (strcmp("CP", argv[5]) == 0) {
            type = PAC::TYPE_CP;
        } else if (strcmp("PSC", argv[5]) == 0) {
            type = PAC::TYPE_PSC;
        } else if (strcmp("PSCM", argv[5]) == 0) {
            type = PAC::TYPE_PSCM;
        } else {
            fprintf(stderr, "image: unknown type: %s\n", argv[5]);
            return 1;
        }

        Image *image = LoadPng(argv[2]);
        if (image == NULL) {
            return 1;
        }

        PAC::Metadata *metadata = NULL;
        size_t metadata_size = 0;
        if (type == PAC::TYPE_BPM || type == PAC::TYPE_PSCM) {
            if (!LoadConfig(argv[2], image, metadata, &metadata_size)) {
                return 1;
            }
        }

        bool ret;
        uint8_t *chara = NULL;
        size_t chara_size = 0;
        uint16_t *screen = NULL;
        size_t screen_size = 0;
        bool opt = (image->width >= 256) && (image->height >= 192);
        if ((argc > 7) && (strcmp("--opt", argv[6]) == 0)) {
            if (strcmp("true", argv[7]) == 0) {
                opt = true;
            } else if (strcmp("false", argv[7]) == 0) {
                opt = false;
            } else {
                fprintf(stderr, "image: --opt expects true or false, got: %s\n", argv[7]);
                FreeImage(image);
                if (metadata) free(metadata);
                return 1;
            }
        }
        if (type == PAC::TYPE_CP) {
            opt = false;
        }
        if (opt) {
            ret = BmpToCharAndScreenOpt(image, chara, screen, &chara_size, &screen_size);
        } else {
            ret = BmpToCharAndScreen(image, chara, screen, &chara_size, &screen_size);
        }
        if (!ret) {
            FreeImage(image);
            if (metadata) free(metadata);
            return 1;
        }
        uint16_t *palette = NULL;
        size_t palette_size = 0;
        if (!PaletteToBGR555(image->palette, image->format, palette, &palette_size)) {
            FreeImage(image);
            free(chara);
            free(screen);
            if (metadata) free(metadata);
            return 1;
        }
        void *pac = NULL;
        size_t pac_size = 0;
        if (!ImageToPac(image,
                        palette, palette_size,
                        chara, chara_size,
                        screen, screen_size,
                        metadata, metadata_size,
                        type, pac, &pac_size))
        {
            FreeImage(image);
            free(palette);
            free(chara);
            free(screen);
            if (metadata) free(metadata);
            return 1;
        }

        FILE *out = fopen(argv[3], "wb");
        if (!out) {
            FreeImage(image);
            free(palette);
            free(chara);
            free(screen);
            if (metadata) free(metadata);
            return 1;
        }
        fwrite(pac, pac_size, 1, out);
        fclose(out);

        FreeImage(image);
        free(palette);
        free(chara);
        free(screen);
        if (metadata) free(metadata);
        return 0;
    } else if ((strcmp("-c", argv[1]) == 0) && (strcmp("--type", argv[4]) != 0)) {
        fprintf(stderr, "image: data type flag missing (--type)\n");
        goto show_help;
    } else {
        goto show_help;
    }
    return 0;
}

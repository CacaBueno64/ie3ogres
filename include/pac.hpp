#pragma once

// clang-format off
#include <nitro/types.h>  // for u8, u16, u32, s16
// clang-format on

/*
 * Structs for generic PAC archives
 * Header Layout is
 * <PAC_HEADER_START>
 * <PAC_FILE_BLOCK>
 * ...
 * <PAC_HEADER_END>
 */
typedef struct {
    u32 nFiles;
} PAC_HEADER_START;

typedef struct {
    u32 offs;
    u32 size;
} PAC_FILE_BLOCK;

typedef struct {
    u32 unk_0;
} PAC_HEADER_END;

/* These might belong in a different header*/
/* 0x2053960 */ extern "C" void *PAC_GetOffset(void *pac, int idx);
/* 0x2053994 */ extern "C" void *PAC_GetSize(void *pac, int idx);
/* 0x20539c8 */ extern "C" void *PAC_GetPtr(void *pac, int idx);

/*
 * Structs for Metadata appearing in PAC texture formats
 * Differs depending on whether the texture contains multiple sprites
 */
typedef struct {
    u16 unk_0;
    u8 wExp;
    u8 hExp;
    u8 fmt;
    u8 pad[3];
    u16 unk_8;
    u16 unk_a;
    u16 width;
    u16 height;
} PAC_METADATA_SINGLE;

typedef struct {
    s16 count;
    u8 unk_2[0x6];
} PAC_METADATA_MULTI_HEADER;

typedef struct {
    s16 s;
    s16 t;
    s16 w;
    s16 h;
} PAC_METADATA_MULTI_CHUNK;

inline u32 PAC_GetFileCount(void *data)
{
    return static_cast<PAC_HEADER_START *>(data)->nFiles;
}

typedef struct {
    PAC_HEADER_START h;
    PAC_FILE_BLOCK plt;
    PAC_FILE_BLOCK scr;
    PAC_FILE_BLOCK chr;
    PAC_HEADER_END e;
} PAC_HEADER_PSC;

inline u32 PAC_PSC_GetPaletteSize(void *data)
{
    return static_cast<PAC_HEADER_PSC *>(data)->plt.size;
}
inline u32 PAC_PSC_GetScreenSize(void *data)
{
    return static_cast<PAC_HEADER_PSC *>(data)->scr.size;
}
inline u32 PAC_PSC_GetCharacterSize(void *data)
{
    return static_cast<PAC_HEADER_PSC *>(data)->chr.size;
}
inline void *PAC_PSC_GetPalettePtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_PSC *>(data)) +
                               static_cast<PAC_HEADER_PSC *>(data)->plt.offs);
}
inline void *PAC_PSC_GetScreenPtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_PSC *>(data)) +
                               static_cast<PAC_HEADER_PSC *>(data)->scr.offs);
}
inline void *PAC_PSC_GetCharacterPtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_PSC *>(data)) +
                               static_cast<PAC_HEADER_PSC *>(data)->chr.offs);
}

typedef struct {
    PAC_HEADER_START h;
    PAC_FILE_BLOCK plt;
    PAC_FILE_BLOCK scr;
    PAC_FILE_BLOCK chr;
    PAC_FILE_BLOCK met;
    PAC_HEADER_END e;
} PAC_HEADER_PSCM;

inline u32 PAC_PSCM_GetPaletteSize(void *data)
{
    return static_cast<PAC_HEADER_PSCM *>(data)->plt.size;
}
inline u32 PAC_PSCM_GetScreenSize(void *data)
{
    return static_cast<PAC_HEADER_PSCM *>(data)->scr.size;
}
inline u32 PAC_PSCM_GetCharacterSize(void *data)
{
    return static_cast<PAC_HEADER_PSCM *>(data)->chr.size;
}
inline u32 PAC_PSCM_GetMetaSize(void *data)
{
    return static_cast<PAC_HEADER_PSCM *>(data)->met.size;
}
inline void *PAC_PSCM_GetPalettePtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_PSCM *>(data)) +
                               static_cast<PAC_HEADER_PSCM *>(data)->plt.offs);
}
inline void *PAC_PSCM_GetScreenPtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_PSCM *>(data)) +
                               static_cast<PAC_HEADER_PSCM *>(data)->scr.offs);
}
inline void *PAC_PSCM_GetCharacterPtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_PSCM *>(data)) +
                               static_cast<PAC_HEADER_PSCM *>(data)->chr.offs);
}
inline void *PAC_PSCM_GetMetaPtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_PSCM *>(data)) +
                               static_cast<PAC_HEADER_PSCM *>(data)->met.offs);
}

typedef struct {
    PAC_HEADER_START s;
    PAC_FILE_BLOCK img;
    PAC_FILE_BLOCK plt;
    PAC_FILE_BLOCK met;
    PAC_HEADER_END e;
} PAC_HEADER_IPM;

inline u32 PAC_IPM_GetImageSize(void *data)
{
    return static_cast<PAC_HEADER_IPM *>(data)->img.size;
}
inline u32 PAC_IPM_GetPaletteSize(void *data)
{
    return static_cast<PAC_HEADER_IPM *>(data)->plt.size;
}
inline u32 PAC_IPM_GetMetaSize(void *data)
{
    return static_cast<PAC_HEADER_IPM *>(data)->met.size;
}
inline u32 PAC_IPM_GetTotalSize(void *data)
{
    return sizeof(PAC_HEADER_PSCM) + PAC_IPM_GetImageSize(data) +
           PAC_IPM_GetPaletteSize(data) * PAC_IPM_GetMetaSize(data);
}
inline void *PAC_IPM_GetImagePtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_IPM *>(data)) +
                               static_cast<PAC_HEADER_IPM *>(data)->img.offs);
}
inline void *PAC_IPM_GetPalettePtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_IPM *>(data)) +
                               static_cast<PAC_HEADER_IPM *>(data)->plt.offs);
}
inline void *PAC_IPM_GetMetaPtr(void *data)
{
    return static_cast<void *>(reinterpret_cast<char *>(static_cast<PAC_HEADER_IPM *>(data)) +
                               static_cast<PAC_HEADER_IPM *>(data)->met.offs);
}

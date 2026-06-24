#pragma once

#include <nitro.h>

extern "C" {
    // TODO: implement TwlSystem includes
    #define NNS_G2D_GLYPH_INDEX_NOT_FOUND 0xFFFF
    #define NNS_INLINE inline
    #define NNS_G2D_INLINE NNS_INLINE

    typedef struct NNSG2dCharWidths
    {
        s8 left;
        u8 glyphWidth;
        s8 charWidth;
    }
    NNSG2dCharWidths;

    typedef struct NNSG2dFontGlyph
    {
        u8  cellWidth;
        u8  cellHeight;
        u16 cellSize;
        s8  baselinePos;
        u8  maxCharWidth;
        u8  bpp;
        u8  flags;

        u8  glyphTable[];
    }
    NNSG2dFontGlyph;

    typedef struct NNSG2dFontWidth
    {
        u16                     indexBegin;
        u16                     indexEnd;
        struct NNSG2dFontWidth* pNext;
        NNSG2dCharWidths        widthTable[];
    }
    NNSG2dFontWidth;

    typedef struct NNSG2dFontCodeMap
    {
        u16                         ccodeBegin;
        u16                         ccodeEnd;
        u16                         mappingMethod;
        u16                         reserved;
        struct NNSG2dFontCodeMap*   pNext;
        u16                         mapInfo[];
    }
    NNSG2dFontCodeMap;

    typedef struct NNSG2dFontInformation
    {
        u8                  fontType;
        s8                  linefeed;
        u16                 alterCharIndex;
        NNSG2dCharWidths    defaultWidth;
        u8                  encoding;
        NNSG2dFontGlyph*    pGlyph;
        NNSG2dFontWidth*    pWidth;
        NNSG2dFontCodeMap*  pMap;
        u8                  height;
        u8                  width;
        u8                  ascent;
        u8                  padding_[1];
    }
    NNSG2dFontInformation;

    typedef u16 (*NNSiG2dSplitCharCallback)(const void** ppChar);

    typedef struct NNSG2dFont
    {
        NNSG2dFontInformation*   pRes;
        NNSiG2dSplitCharCallback cbCharSpliter;
    }
    NNSG2dFont;

    extern void NNS_G2dFontInitUTF16(NNSG2dFont* pFont, void* pNftrFile);
    extern void NNS_G2dFontInitShiftJIS(NNSG2dFont* pFont, void* pNftrFile);
    extern u16 NNS_G2dFontFindGlyphIndex( const NNSG2dFont* pFont, u16 c );
    extern const NNSG2dCharWidths* NNS_G2dFontGetCharWidthsFromIndex( const NNSG2dFont* pFont, u16 idx );

    NNS_G2D_INLINE u16 NNS_G2dFontGetGlyphIndex( const NNSG2dFont* pFont, u16 c )
    {
        const u16 idx = NNS_G2dFontFindGlyphIndex(pFont, c);
        if( idx != NNS_G2D_GLYPH_INDEX_NOT_FOUND )
        {
            return idx ;
        }
        return pFont->pRes->alterCharIndex ;
    }

    NNS_G2D_INLINE const NNSG2dCharWidths* NNS_G2dFontGetCharWidths( const NNSG2dFont* pFont, u16 c )
    {
        u16 iGlyph;

        iGlyph = NNS_G2dFontGetGlyphIndex( pFont, c );
        return NNS_G2dFontGetCharWidthsFromIndex( pFont, iGlyph );
    }

    NNS_G2D_INLINE int NNSi_G2dFontGetGlyphDataSize( const NNSG2dFont* pFont )
    {
        return pFont->pRes->pGlyph->cellSize;
    }

    NNS_G2D_INLINE const u8* NNS_G2dFontGetGlyphImageFromIndex(
                                            const NNSG2dFont* pFont, u16 idx )
    {
        return pFont->pRes->pGlyph->glyphTable + idx * NNSi_G2dFontGetGlyphDataSize(pFont);
    }

    NNS_G2D_INLINE const u8* NNS_G2dFontGetGlyphImage( const NNSG2dFont* pFont, u16 c )
    {
        u16 iGlyph;

        iGlyph = NNS_G2dFontGetGlyphIndex( pFont, c );
        return NNS_G2dFontGetGlyphImageFromIndex( pFont, iGlyph );
    }
}

class CFontManager {
    public:
        typedef enum {
            CHAR_TYPE_NULL,
            CHAR_TYPE_HALFWIDTH,
            CHAR_TYPE_FULLWIDTH
        } CharType;

        typedef enum {
            ALIGNEMENT_LEFT,
            ALIGNEMENT_CENTER,
            ALIGNEMENT_RIGHT
        } Alignment;

        typedef struct {
            u16 xPos;
            u16 yPos;
            u16 width;
            s16 height;
        } GlyphBounds;

        CFontManager();
        virtual ~CFontManager();
        /* 0x02042e4c */ virtual BOOL vFUN_08(int indentation, int yPos, char *text, int color, Alignment align, void *dest, int maxWidth, int maxHeight, GlyphBounds *bounds, int maxGlyphs);
        /* 0x020430b0 */ virtual BOOL vFUN_0C(int indentation, int yPos, char *text, int color, Alignment align, void *dest, int maxWidth, int maxHeight, GlyphBounds *bounds, int maxGlyphs);
        /* 0x02042b4c */ virtual int vFUN_10(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
        /* 0x02042298 */ virtual int vFUN_14(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
        /* 0x02042cf4 */ virtual int vFUN_18(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
        /* 0x02042420 */ virtual int vFUN_1C(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);

        /* 0x0204224c */ void clear();
        void FUN_02042274(void *dest, u8 param2);
        /* 0x02042544 */ static CharType getCharTypeSJIS(char *text);
        /* 0x02042584 */ static CharType getCharTypeUTF16(char *text);
        /* 0x020425a0 */ CharType getCharType(char *text);
        /* 0x020425c4 */ u16 decodeChar(char *text);
        BOOL FUN_020425fc(char *text, void *dest, int maxWidth, int maxHeight, int indentation, int yPos, int color, GlyphBounds *bounds, int maxGlyphs, int param10, Alignment align);
        /* 0x0204294c */ int getLineWidth(char *text);
        /* 0x020429fc */ int getCurrentLineWidth(char *text);
        /* 0x02042aa4 */ int getCharPosX(int indentation, int maxWidth, char *text, Alignment align);
        /* 0x02042b0c */ s8 getCharWidth(char *text);
        /* 0x02043310 */ void setSpacing(int charSpacing, int lineSpacing);
        /* 0x0204331c */ void resetSpacing(void);
        /* 0x02043330 */ BOOL init(void *pNftrFile, u32 param2, u8 encoding);
        void FUN_02043380(void *dest, int maxWidth, int maxHeight, int indentation, int yPos, int lineWidth, int lineHeight);

    private:
    NNSG2dFont g2dfont;
    void *file;
    u32 unk10;
    u32 charSpacing;
    u32 lineSpacing;
    struct {
        u8 unk0;
        u8 unk1;
    } unk1C;
    u8 unk1E;
    u8 unk1F;
    u8 encoding; // 0: SJIS, 1: UTF16
};

class CFontManager_2 : public CFontManager {
    public:
        CFontManager_2();
};

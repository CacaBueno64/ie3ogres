#pragma once

// clang-format off
#include <nitro.h>

#include <nnsys/g2d/fmt/g2d_Font_data.h>
#include <nnsys/g2d/g2d_Font.h>
// clang-format on

extern u16 gFontBlankCode;

class CFontManager
{
public:
    typedef enum {
        COLOR_TRANSPARENT,
        COLOR_WHITE,
        COLOR_BLACK,
        COLOR_RED,
        COLOR_GREEN,
        COLOR_BLUE,
        COLOR_CYAN,
        COLOR_PURPLE,
        COLOR_YELLOW,
        COLOR_GRAY,
        COLOR_MAX = 16,
    } Color;

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
        u8 startIndex;
        u8 length;
        char text[30];
    } RubyBlock;

    typedef struct {
        s16 x;
        s16 y;
        s16 width;
        s16 height;
    } GlyphBounds;

    CFontManager();
    virtual ~CFontManager();
    virtual BOOL drawTextTile4bpp(int indentation, int yPos, char *text, int color, Alignment align, void *dest, int maxWidth, int maxHeight, GlyphBounds *bounds, int maxGlyphs);
    virtual BOOL drawTextTile8bpp(int indentation, int yPos, char *text, int color, Alignment align, void *dest, int maxWidth, int maxHeight, GlyphBounds *bounds, int maxGlyphs);
    virtual int drawGlyphTile4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    virtual int drawGlyphTex4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    virtual int drawGlyphTile8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    virtual int drawGlyphTex8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);

    void clear();
    void writeCharByte(void *dest, u8 param2);
    static CharType getCharTypeSJIS(char *text);
    static CharType getCharTypeUTF16(char *text);
    CharType getCharType(char *text);
    u16 decodeChar(char *text);
    BOOL drawTextTex4bpp(char *text, void *dest, int maxWidth, int maxHeight, int indentation, int yPos, int color, GlyphBounds *bounds, int maxGlyphs, int param10, Alignment align);
    int getTextWidth(char *text);
    int getLineWidth(char *text);
    int getCharPosX(int indentation, int maxWidth, char *text, Alignment align);
    int getCharWidth(char *text);
    void setSpacing(int charSpacing, int lineSpacing);
    void resetSpacing(void);
    BOOL init(void *pNftrFile, u32 param2, u8 encoding);
    void clearTexture(void *dest, int texWidth,int texHeight, int x, int y, int width, int height);
    void clearVram(void *dest, int texWidth,int texHeight, int x, int y, int width, int height);
    void setSubColors(int edge, int shadow);

    static void getNameFurigana(char *dst, char *furigana, char *name);

    NNSG2dFont g2dfont;
    void *file;
    u32 baseColor; // complete guess, unused
    u32 charSpacing;
    u32 lineSpacing;
    struct {
        u8 edge;
        u8 shadow;
    } subColors;
    u8 unk1E; // unused
    u8 unk1F; // unused
    u8 encoding; // 0: SJIS, 1: UTF16
};

extern CFontManager *gFont12Manager;
extern CFontManager *gFont8Manager;
extern CFontManager *gRubi8Manager;

class CFontManager_2 : public CFontManager
{
public:
    CFontManager_2();
    virtual ~CFontManager_2();

    virtual int drawGlyphTile4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    virtual int drawGlyphTex4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    virtual int drawGlyphTile8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    virtual int drawGlyphTex8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
};

extern CFontManager_2 *gFont12TManager;

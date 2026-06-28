#pragma once

// clang-format off
#include <nitro.h>

#include <nnsys/g2d/fmt/g2d_Font_data.h>
#include <nnsys/g2d/g2d_Font.h>
// clang-format on

class CFontManager
{
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
    /* 0x02042e4c */ virtual BOOL drawTextTile4bpp(int indentation, int yPos, char *text, int color, Alignment align, void *dest, int maxWidth, int maxHeight, GlyphBounds *bounds, int maxGlyphs);
    /* 0x020430b0 */ virtual BOOL drawTextTile8bpp(int indentation, int yPos, char *text, int color, Alignment align, void *dest, int maxWidth, int maxHeight, GlyphBounds *bounds, int maxGlyphs);
    /* 0x02042b4c */ virtual int drawGlyphTile4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    /* 0x02042298 */ virtual int drawGlyphTex4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    /* 0x02042cf4 */ virtual int drawGlyphTile8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);
    /* 0x02042420 */ virtual int drawGlyphTex8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos);

    /* 0x0204224c */ void clear();
    /* 0x02042274 */ void writeCharByte(void *dest, u8 param2);
    /* 0x02042544 */ static CharType getCharTypeSJIS(char *text);
    /* 0x02042584 */ static CharType getCharTypeUTF16(char *text);
    /* 0x020425a0 */ CharType getCharType(char *text);
    /* 0x020425c4 */ u16 decodeChar(char *text);
    /* 0x020425fc */ BOOL drawTextTex4bpp(char *text, void *dest, int maxWidth, int maxHeight, int indentation, int yPos, int color, GlyphBounds *bounds, int maxGlyphs, int param10, Alignment align);
    /* 0x0204294c */ int getTextWidth(char *text);
    /* 0x020429fc */ int getLineWidth(char *text);
    /* 0x02042aa4 */ int getCharPosX(int indentation, int maxWidth, char *text, Alignment align);
    /* 0x02042b0c */ s8 getCharWidth(char *text);
    /* 0x02043310 */ void setSpacing(int charSpacing, int lineSpacing);
    /* 0x0204331c */ void resetSpacing(void);
    /* 0x02043330 */ BOOL init(void *pNftrFile, u32 param2, u8 encoding);
    /* 0x02043380 */ void clearTexture(void *dest, int texWidth,int texHeight, int x, int y, int width, int height);
    /* 0x020435b0 */ void clearVram(void *dest, int texWidth,int texHeight, int x, int y, int width, int height);
    void FUN_02043780(int param1, int param2);
    
    /* 0x0204378c */ static void getNameFurigana(s8 *dst, s8 *furigana, s8 *name);

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

class CFontManager_2 : public CFontManager
{
public:
    CFontManager_2();
};

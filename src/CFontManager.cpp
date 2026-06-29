#include "CFontManager.hpp"

CFontManager::CFontManager()
{
    this->file = NULL;
    this->charSpacing = 1;
    this->lineSpacing = 1;
    this->unk1E = 0;
    this->unk1F = 0;
    this->encoding = 0;

    MI_CpuClearFast(&this->g2dfont, sizeof(this->g2dfont));
    MI_CpuClear8(&this->unk1C, sizeof(this->unk1C));
}

CFontManager::~CFontManager()
{
    this->clear();
}

void CFontManager::clear(void)
{
    this->file = NULL;
    this->unk1E = 0;
    this->unk1F = 0;

    MI_CpuClearFast(&this->g2dfont, sizeof(this->g2dfont));
}

void CFontManager::writeCharByte(void *dest, u8 param2)
{
    u16 *ptr = reinterpret_cast<u16 *>(reinterpret_cast<u32>(dest) & ~1);
    if (reinterpret_cast<u32>(dest) & 1) {
        *ptr = (*ptr & 0xFF) | (param2 << 8);
    } else {
        *ptr = (*ptr & 0xFF00) | param2;
    }
}

int CFontManager::drawGlyphTex4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos)
{
    int x, y, i;
    
    s32 mask = 0x80;
    int visibleWidth = charWidths->charWidth - charWidths->left;
    int skipWidth = this->g2dfont.pRes->pGlyph->cellWidth - visibleWidth;
    xPos += charWidths->left;

    for (y = 0; y < height; y++)
    {
        u8 *ptr = &static_cast<u8 *>(dest)[(maxWidth * (yPos + y) + xPos) / 2];
        BOOL isEven = (xPos & 1) != FALSE;
        
        for (x = 0; x < visibleWidth; x++)
        {
            if (*glyphImage & mask) {
                if (isEven) {
                    this->writeCharByte(ptr, (*ptr & 0xF) | (color & 0xF) * 16);
                } else {
                    this->writeCharByte(ptr, (*ptr & 0xF0) | (color & 0xF));
                }
            }
            
            mask >>= 1;
            
            if (mask == 0) {
                mask = 0x80;
                glyphImage++;
            }
            
            if (isEven) {
                ptr++;
            }
            
            isEven = !isEven;
        }

        for (i = 0; i < skipWidth; i++)
        {
            mask >>= 1;
            if (mask == 0) {
                mask = 0x80;
                glyphImage++;
            }
        }
    }

    return visibleWidth + 1;
}

int CFontManager::drawGlyphTex8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int xPos, int yPos)
{
    int x, y, i;
    
    s32 mask = 0x80;
    int visibleWidth = charWidths->charWidth - charWidths->left;
    int skipWidth = this->g2dfont.pRes->pGlyph->cellWidth - visibleWidth;
    xPos += charWidths->left;

    for (y = 0; y < height; y++)
    {
        u8 *ptr = &static_cast<u8 *>(dest)[maxWidth * (yPos + y) + xPos];
        
        for (x = 0; x < visibleWidth; x++)
        {
            if (*glyphImage & mask) {
                this->writeCharByte(ptr, color);
            }
            
            mask >>= 1;
            
            if (mask == 0) {
                mask = 0x80;
                glyphImage++;
            }

            ptr++;
        }

        for (i = 0; i < skipWidth; i++)
        {
            mask >>= 1;
            if (mask == 0) {
                mask = 0x80;
                glyphImage++;
            }
        }
    }

    return visibleWidth + 1;
}

CFontManager::CharType CFontManager::getCharTypeSJIS(char *text)
{
    if (text == NULL) {
        return CHAR_TYPE_NULL;
    }

    unsigned char c = *reinterpret_cast<unsigned char *>(text);

    if ((c >= 0x20 && c <= 0x7E) || (c >= 0xA1 && c <= 0xDF)) {
        return CHAR_TYPE_HALFWIDTH;
    } else {
        return CHAR_TYPE_FULLWIDTH;
    }
}

CFontManager::CharType CFontManager::getCharTypeUTF16(char *text)
{
    if (*reinterpret_cast<unsigned char *>(text) == 0) {
        if (*reinterpret_cast<unsigned char *>(text + 1) == 0) {
            return CHAR_TYPE_NULL;
        }
    }

    return CHAR_TYPE_FULLWIDTH;
}

CFontManager::CharType CFontManager::getCharType(char *text)
{
    if (this->encoding != 0) {
        return this->getCharTypeUTF16(text);
    } else {
        return this->getCharTypeSJIS(text);
    }
}

u16 CFontManager::decodeChar(char *text)
{
    CharType type = this->getCharType(text);

    if (type == CHAR_TYPE_NULL) {
        return 0;
    } else if (type == CHAR_TYPE_HALFWIDTH) {
        return *reinterpret_cast<unsigned char *>(text);
    } else { // CHAR_TYPE_HALFWIDTH
        unsigned char c0 = *reinterpret_cast<unsigned char *>(text);
        unsigned char c1 = *reinterpret_cast<unsigned char *>(text + 1);
        return ((c0 << 8) | (c1));
    }
}

BOOL CFontManager::drawTextTex4bpp(char *text, void *dest, int maxWidth, int maxHeight, int indentation, int yPos, int color, GlyphBounds *bounds, int maxGlyphs, int param10, Alignment align)
{
    int i = 0;

    if ((!text) || (!dest) || (maxWidth <= 0)) {
        return FALSE;
    }

    int cellHeight = this->g2dfont.pRes->pGlyph->cellHeight;
    int xPos = this->getCharPosX(indentation, maxWidth, text, align);

    if (param10 != 0) {
        this->clearTexture(dest, maxWidth, maxHeight, indentation, yPos, this->getLineWidth(text), cellHeight + this->lineSpacing);
    }

    if (yPos < 0) {
        return FALSE;
    }

    while (*text != '\0')
    {
        if (*text == '\n')
        {
            xPos = this->getCharPosX(indentation, maxWidth, text + 1, align);
            if (param10 != 0) {
                this->clearTexture(dest, maxWidth, maxHeight, indentation, yPos + cellHeight, this->getLineWidth(text + 1), cellHeight + this->lineSpacing);
            }
            yPos += cellHeight + this->lineSpacing;
        }
        else
        {
            u16 c = this->decodeChar(text);
            const NNSG2dCharWidths *charWidths = NNS_G2dFontGetCharWidths(&this->g2dfont, c);
            int charWidth = charWidths->charWidth;
            const u8 *glyphImage = NNS_G2dFontGetGlyphImage(&this->g2dfont, c);

            if ((xPos + charWidth) > maxWidth) {
                xPos = this->getCharPosX(indentation, maxWidth, text, align);
                if (param10 != 0) {
                    this->clearTexture(dest, maxWidth, maxHeight, indentation, yPos + cellHeight, this->getLineWidth(text), cellHeight + this->lineSpacing);
                }
                yPos += cellHeight + this->lineSpacing;
            }

            if ((yPos + cellHeight) > maxHeight) {
                break;
            }

            if ((bounds) && (i < maxGlyphs)) {
                bounds->xPos = xPos;
                bounds->yPos = yPos;
                bounds->width = charWidth;
                bounds->height = cellHeight;
                bounds++;
                i++;
            }

            this->drawGlyphTex4bpp(glyphImage, dest, maxWidth, color, charWidths, cellHeight, xPos, yPos);

            #ifdef TRANSLATION_BUGFIX
            xPos += charWidth + 1;
            #else
            xPos += charWidth + this->charSpacing;
            #endif

            if (this->getCharType(text) == CHAR_TYPE_FULLWIDTH) {
                text++;
            }
        }

        text++;
    }
    
    return TRUE;
}

int CFontManager::getTextWidth(char *text)
{
    int lineWidth, result;
    lineWidth = result = 0;

    for ( ; *text != '\0'; text++)
    {
        if (*text == '\n')
        {
            lineWidth = 0;
        }
        else
        {
            s8 charWidth = NNS_G2dFontGetCharWidths(&this->g2dfont, this->decodeChar(text))->charWidth;

            if ((charWidth != 0) && (lineWidth != 0)) {
                lineWidth += this->charSpacing;
            }

            lineWidth += charWidth;
            
            if (lineWidth > result) {
                result = lineWidth;
            }
            
            if (this->getCharType(text) == CHAR_TYPE_FULLWIDTH) {
                text++;
            }
        }
    }

    return result;
}

int CFontManager::getLineWidth(char *text)
{
    int lineWidth, result;
    lineWidth = result = 0;
    
    while (*text)
    {
        if (*text == '\n') {
            break;
        }

        s8 char_width = NNS_G2dFontGetCharWidths(&this->g2dfont, this->decodeChar(text))->charWidth;

        if ((char_width != 0) && (lineWidth != 0)) {
            lineWidth += this->charSpacing;
        }

        lineWidth += char_width;

        if (lineWidth > result) {
            result = lineWidth;
        }

        if (this->getCharType(text) == CHAR_TYPE_FULLWIDTH) {
            text++;
        }

        text++;
    }

    return result;
}

int CFontManager::getCharPosX(int indentation, int maxWidth, char *text, Alignment align)
{
    if ((indentation < 0) || (indentation > maxWidth)) {
        return 0;
    }

    if (align == ALIGNEMENT_LEFT) {
        return indentation;
    }

    maxWidth = (maxWidth - indentation);
    int currentLineWidth = this->getLineWidth(text);

    if (currentLineWidth > maxWidth) {
        return indentation;
    }

    if (align == ALIGNEMENT_CENTER) {
        return ((indentation + (maxWidth >> 1)) - (currentLineWidth >> 1));
    } else { /* ALIGNEMENT_RIGHT */
        return ((indentation + maxWidth) - 1) - currentLineWidth;
    }
}

s8 CFontManager::getCharWidth(char *text)
{
    return NNS_G2dFontGetCharWidths(&this->g2dfont, this->decodeChar(text))->charWidth;
}


int CFontManager::drawGlyphTile4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int x, int y) {
#define TILE_BPP 4
#define TILE_WIDTH 8
#define TILE_HEIGHT 8
#define TILE_SIZE ((TILE_WIDTH*TILE_HEIGHT*TILE_BPP)/8)

    int xx, yy;

    int visibleWidth = charWidths->charWidth - charWidths->left;
    int skipWidth = this->g2dfont.pRes->pGlyph->cellWidth - visibleWidth;
    
    x += charWidths->left;
    
    s32 mask = 0x80;
    
    for (yy = 0; yy < height; ++yy) {
        int rowWidth = (maxWidth >> 3) * TILE_SIZE;
        int rowOffset = rowWidth * ((yy + y) >> 3) + ((yy + y) & 7) * 4;
    
        BOOL isEven = (x & 1) != 0;
    
        for (xx = 0; xx < visibleWidth; ++xx) {
            int tileX = ((xx + x) >> 3);
            int localX = ((xx + x) & 7);
            int perm_var_1 = 1;
            u8 *ptr = &static_cast<u8 *>(dest)[rowOffset + tileX * TILE_SIZE + (localX >> perm_var_1)];
            
            if (*glyphImage & mask) {
                if (isEven) {
                    this->writeCharByte(ptr, (*ptr & 0xF) | (color & 0xF) << 4);
                } else {
                    this->writeCharByte(ptr, (*ptr & 0xF0) | (color & 0xF));
                }
            }
            
            mask >>= 1;
            
            if (mask == 0) {
                mask = 0x80;
                glyphImage++;
            }
            
            isEven = !isEven;
        }

        for (xx = 0; xx < skipWidth; ++xx) {
            mask >>= 1;
            
            if (mask == 0) {
                mask = 0x80;
                glyphImage++;
            }
        }
    }

    return visibleWidth + this->charSpacing;
}

int CFontManager::drawGlyphTile8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int x, int y)
{
    int xx, yy;
    
    s32 mask = 0x80;
    int visibleWidth = charWidths->charWidth - charWidths->left;
    int skipWidth = this->g2dfont.pRes->pGlyph->cellWidth - visibleWidth;
    x += charWidths->left;
    
    for (yy = 0; yy < height; ++yy) {
        int rowWidth = (maxWidth / 8) * 64;
        int q = (yy + y) / 8;
        int r = (yy + y) % 8;
        int rowOffset = q * rowWidth + r * 8;

        for (xx = 0; xx < visibleWidth; ++xx) {
            int tileX = ((xx + x) >> 3) * 64;
            u8 *ptr = &static_cast<u8 *>(dest)[rowOffset + tileX + ((xx + x) & 7)];
            if (*glyphImage & mask) {
                this->writeCharByte(ptr, color);
            }
            mask >>= 1;
            if (mask == 0) {
                mask = 0x80;
                glyphImage++;
            }
        }

        for (xx = 0; xx < skipWidth; ++xx) {
            mask >>= 1;
            if (mask == 0) {
                mask = 0x80;
                glyphImage++;
            }
        }
    }

    return visibleWidth + this->charSpacing;
}

BOOL CFontManager::drawTextTile4bpp(int indentation, int yPos, char *text, int color, Alignment align, void *dest, int maxWidth, int maxHeight, GlyphBounds *bounds, int maxGlyphs)
{
    int i = 0;
    
    if (!text) {
        return FALSE;
    }

    int cellHeight = this->g2dfont.pRes->pGlyph->cellHeight;
    int xPos = this->getCharPosX(indentation, maxWidth, text, align);
    
    if (yPos < 0) {
        return FALSE;
    }
    
    while (*text != '\0')
    {
        if (*text == '\n')
        {
            xPos = this->getCharPosX(indentation, maxWidth, text + 1, align);
            yPos += cellHeight + this->lineSpacing;
        }
        else
        {
            u16 c = this->decodeChar(text);
            const NNSG2dCharWidths *charWidths =  NNS_G2dFontGetCharWidths(&this->g2dfont, c);
            int charWidth = charWidths->charWidth;
            const u8 *glyphImage = NNS_G2dFontGetGlyphImage(&this->g2dfont, c);

            if ((xPos + charWidth) > maxWidth) {
                xPos = getCharPosX(indentation, maxWidth, text, align);
                yPos += cellHeight + this->lineSpacing;
            }

            if ((yPos + cellHeight) > maxHeight) {
                break;
            }
            
            if ((bounds) && (i < maxGlyphs)) {
                bounds->xPos = xPos;
                bounds->yPos = yPos;
                bounds->width = charWidth;
                bounds->height = cellHeight;
                bounds++;
                i++;
            }

            this->drawGlyphTile4bpp(glyphImage, dest, maxWidth, color, charWidths, cellHeight, xPos, yPos);

            xPos += charWidth + this->charSpacing;

            if (this->getCharType(text) == CHAR_TYPE_FULLWIDTH) {
                text++;
            }
        }
        
        text++;
    }

    DC_FlushRange(dest, (maxWidth * maxHeight) >> 1);

    return TRUE;
}

BOOL CFontManager::drawTextTile8bpp(int indentation, int yPos, char *text, int color, Alignment align, void *dest, int maxWidth, int maxHeight, GlyphBounds *bounds, int maxGlyphs)
{
    int i = 0;
    
    if (!text) {
        return FALSE;
    }

    int cellHeight = this->g2dfont.pRes->pGlyph->cellHeight;
    int xPos = this->getCharPosX(indentation, maxWidth, text, align);
    
    if (yPos < 0) {
        return FALSE;
    }
    
    while (*text != '\0')
    {
        if (*text == '\n')
        {
            xPos = this->getCharPosX(indentation, maxWidth, text + 1, align);
            yPos += cellHeight + this->lineSpacing;
        }
        else
        {
            u16 c = this->decodeChar(text);
            const NNSG2dCharWidths *charWidths =  NNS_G2dFontGetCharWidths(&this->g2dfont, c);
            int charWidth = charWidths->charWidth;
            const u8 *glyphImage = NNS_G2dFontGetGlyphImage(&this->g2dfont, c);

            if ((xPos + charWidth) > maxWidth) {
                xPos = getCharPosX(indentation, maxWidth, text, align);
                yPos += cellHeight + this->lineSpacing;
            }

            if ((yPos + cellHeight) > maxHeight) {
                break;
            }
            
            if ((bounds) && (i < maxGlyphs)) {
                bounds->xPos = xPos;
                bounds->yPos = yPos;
                bounds->width = charWidth;
                bounds->height = cellHeight;
                bounds++;
                i++;
            }

            this->drawGlyphTile8bpp(glyphImage, dest, maxWidth, color, charWidths, cellHeight, xPos, yPos);

            xPos += charWidth + this->charSpacing;

            if (this->getCharType(text) == CHAR_TYPE_FULLWIDTH) {
                text++;
            }
        }
        
        text++;
    }

    DC_FlushRange(dest, maxWidth * maxHeight);

    return TRUE;
}

void CFontManager::setSpacing(int charSpacing, int lineSpacing)
{
    this->charSpacing = charSpacing;
    this->lineSpacing = lineSpacing;
}

void CFontManager::resetSpacing(void)
{
    this->setSpacing(1, 1);
}

BOOL CFontManager::init(void *pNftrFile, u32 param2, u8 encoding)
{
    void *file = pNftrFile;
    
	if (!pNftrFile) {
		return FALSE;
	}
	
	this->unk1F = 0;
	
	if (pNftrFile) {
		file = pNftrFile;
	}
	
	if (param2 >= 16) {
		param2 = 0;
	}
	
	this->file = file;
	this->unk10 = param2;

	if (encoding != 0) {
		NNS_G2dFontInitUTF16(&this->g2dfont, file);
	} else {
		NNS_G2dFontInitShiftJIS(&this->g2dfont, file);
	}
	
	this->encoding = encoding;

	return TRUE;
}
 
void CFontManager::clearTexture(void *dest, int texWidth,int texHeight, int x, int y, int width, int height) {
    if (!dest) return;
    if (x < 0) return;
    if (x >= texWidth) return;
    if (y < 0)  return;
    if (y >= texHeight) return;
    
    if (x + width > texWidth) {
        width = texWidth - x;
    }
    if (y + height > texHeight) {
        height = texHeight - y;
    }

    int xx, yy;
    for (yy = 0; yy < height; ++yy) {
        u8 * ptr = &static_cast<u8 *>(dest)[(texWidth * (y + yy) + x) / 2];
        BOOL odd = (x & 1) != 0;
        for (int curRem = x & 7; curRem & 7; ++curRem) {
            if (odd) {
                this->writeCharByte(ptr, *ptr & 0xF);
                ++ptr;
            } else {
                this->writeCharByte(ptr, *ptr & 0xF0);
            }
            odd = !odd;
        }

        s32 contWidth = width;
        if ((x & 7) != 0) {
            contWidth -= 8 - (x & 7);
        }
        contWidth &= ~7;
        MI_CpuClearFast(ptr, contWidth / 2);
        ptr += contWidth / 2;

        odd = FALSE;
        for (xx = 0; xx < ((x + width) & 3); xx++) {
            if (odd) {
                this->writeCharByte(ptr, *ptr & 0xF);
                ptr++;
            } else {
                this->writeCharByte(ptr, *ptr & 0xF0);
            }
            odd = !odd;
        }
    };
}

#ifdef NONMATCHING

void CFontManager::clearVram(void *dest, int texWidth,int texHeight, int x, int y, int width, int height)
{
    if (!dest) return;
    if (x < 0) return;
    if (x >= texWidth) return;
    if (y < 0)  return;
    if (y >= texHeight) return;

    if (x + width > texWidth) {
        width = texWidth - x;
    }
    if (y + height > texHeight) {
        height = texHeight - y;
    }

    int tilesPerRow = texWidth / 8;

    for (int py = y; py < height; py++)
    {
        int tileY   = py / 8;
        int inTileY = py & 7;

        for (int px = x; px < width; px++)
        {
            int offset =
                tileY * tilesPerRow * 32 +
                (px / 8) * 32 +
                inTileY * 4 +
                ((px & 7) >> 1);

            u8 *p = (u8 *)dest + offset;

            if (px & 1)
                this->writeCharByte(p, *p & 0x0F);
            else
                this->writeCharByte(p, *p & 0xF0);
        }
    }
}

void CFontManager::FUN_02043780(int param1, int param2)
{
    this->unk1C.unk0 = param1;
    this->unk1C.unk1 = param2;
}

void CFontManager::getNameFurigana(s8 *dst, s8 *furigana, s8 *name)
{
    int i = 0;
    BOOL isKanji0 = FALSE;
    BOOL isKanji1 = FALSE;

    while (*name != '\0') {
        char c0 = name[0];
        unsigned char c1 = name[1];
        name += 2;

        u32 c = c1 | (u16)(c0 << 8);
        if (c == 0x8140) {
            break;
        }
        if (c >= 0x889F) {
            isKanji0 = TRUE;
        }
    }

    while (*name != '\0') {
        char c0 = name[0];
        unsigned char c1 = name[1];
        name += 2;

        u32 c = c1 | (u16)(c0 << 8);
        if (c >= 0x889F) {
            isKanji1 = TRUE;
        }
    }

    while (*furigana != '\0') {
        unsigned char c0 = furigana[0];
        unsigned char c1 = furigana[1];
        furigana += 2;

        u32 c = c1 | (u16)(c0 << 8);
        if (c == 0x8140) {
            dst[i] = c0;
            dst[i + 1] = c1;
            i += 2;
            break;
        }
        if (isKanji0) {
            dst[i] = c0;
            dst[i + 1] = c1;
        } else {
            dst[i] = 0x81;
            dst[i + 1] = 0x40;
        }

        i += 2;
    }

    while (*furigana != '\0') {
        char c0 = furigana[0];
        unsigned char c1 = furigana[1];
        furigana += 2;

        if (isKanji1) {
            dst[i] = static_cast<unsigned char>(c0);
            dst[i + 1] = c1;
        } else {
            dst[i] = 0x81;
            dst[i + 1] = 0x40;
        }

        i += 2;
    }

    dst[i] = '\0';
}

#endif // NONMATCHING

#include "CFontManager.hpp"

CFontManager_2::CFontManager_2()
{
    this->setSpacing(0, this->lineSpacing);
}

CFontManager_2::~CFontManager_2() { }

int CFontManager_2::drawGlyphTile4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int x, int y)
{
    int px, py;
    s32 mask;
    s32 shift;
    u8 colors[4];
    int visibleWidth;
    int skipWidth;

    visibleWidth = charWidths->charWidth - charWidths->left;
    skipWidth = this->g2dfont.pRes->pGlyph->cellWidth - visibleWidth;
    x += charWidths->left;

    colors[0] = 0;
    colors[1] = color & 0xF;
    colors[2] = this->subColors.edge & 0xF;
    colors[3] = this->subColors.shadow & 0xF;

    mask = 0xC0;
    shift = 6;

    for (py = 0; py < height; py++)
    {
        int tileRowSize = (maxWidth >> 3) * 32;
        int rowOffset = tileRowSize * ((py + y) >> 3) + ((py + y) & 7) * 4;
        
        BOOL odd = (x & 1) != FALSE;
        
        for (px = 0; px < visibleWidth; px++)
        {
            int tileX = (px + x) >> 3;
            u8 *ptr = &static_cast<u8 *>(dest)[rowOffset + tileX * 32 + (((px + x) & 7) >> 1)];

            int idx = (*glyphImage & mask) >> shift;
            if (idx > 0) {
                if (odd) {
                    this->writeCharByte(ptr, (*ptr & 0xF) | (colors[idx]) << 4);
                } else {
                    this->writeCharByte(ptr, (*ptr & 0xF0) | (colors[idx]));
                }
            }
            
            mask >>= 2;
            shift -= 2;

            if (mask == 0) {
                mask = 0xC0;
                shift = 6;
                glyphImage++;
            }
            
            if (odd) {
                ptr++;
            }
            
            odd = !odd;
        }

        for (px = 0; px < skipWidth; px++)
        {
            mask >>= 2;
            shift -= 2;
            if (mask == 0) {
                mask = 0xC0;
                shift = 6;
                glyphImage++;
            }
        }
    }

    return visibleWidth + this->charSpacing;
}

int CFontManager_2::drawGlyphTile8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int x, int y)
{
    int px, py;
    s32 mask;
    s32 shift;
    u8 colors[4];
    int visibleWidth;
    int skipWidth;

    visibleWidth = charWidths->charWidth - charWidths->left;
    skipWidth = this->g2dfont.pRes->pGlyph->cellWidth - visibleWidth;
    x += charWidths->left;

    colors[0] = 0;
    colors[1] = color;
    colors[2] = this->subColors.edge;
    colors[3] = this->subColors.shadow;

    mask = 0xC0;
    shift = 6;

    for (py = 0; py < height; py++)
    {
        int rowWidth = (maxWidth / 8) * 64;
        int q = (py + y) / 8;
        int r = (py + y) % 8;
        int rowOffset = q * rowWidth + r * 8;
        
        for (px = 0; px < visibleWidth; px++)
        {
            int tileX = ((px + x) >> 3) * 64;
            u8 *ptr = &static_cast<u8 *>(dest)[rowOffset + tileX + ((px + x) & 7)];

            int idx = (*glyphImage & mask) >> shift;
            if (idx > 0) {
                this->writeCharByte(ptr, colors[idx]);
            }
            
            mask >>= 2;
            shift -= 2;

            if (mask == 0) {
                mask = 0xC0;
                shift = 6;
                glyphImage++;
            }
            
            ptr++;
        }

        for (px = 0; px < skipWidth; px++)
        {
            mask >>= 2;
            shift -= 2;
            if (mask == 0) {
                mask = 0xC0;
                shift = 6;
                glyphImage++;
            }
        }
    }

    return visibleWidth + this->charSpacing;
}

int CFontManager_2::drawGlyphTex4bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int x, int y)
{
    int px, py;
    s32 mask;
    s32 shift;
    u8 colors[4];
    int visibleWidth;

    visibleWidth = charWidths->charWidth - charWidths->left;
    x += charWidths->left;

    colors[0] = 0;
    colors[1] = color & 0xF;
    colors[2] = this->subColors.edge & 0xF;
    colors[3] = this->subColors.shadow & 0xF;

    shift = 6;
    mask = 0xC0;

    for (py = 0; py < height; py++)
    {
        u8 *ptr = &static_cast<u8 *>(dest)[(maxWidth * (y + py) + x) / 2];
        BOOL odd = (x & 1) != FALSE;
        
        for (px = 0; px < visibleWidth; px++)
        {
            int idx = (*glyphImage & mask) >> shift;
            if (idx > 0) {
                if (odd) {
                    this->writeCharByte(ptr, (*ptr & 0xF) | (colors[idx]) << 4);
                } else {
                    this->writeCharByte(ptr, (*ptr & 0xF0) | (colors[idx]));
                }
            }
            
            mask >>= 2;
            shift -= 2;

            if (mask == 0) {
                mask = 0xC0;
                shift = 6;
                glyphImage++;
            }
            
            if (odd) {
                ptr++;
            }
            
            odd = !odd;
        }

        for (px = 0; px < charWidths->left; px++)
        {
            mask >>= 2;
            shift -= 2;
            if (mask == 0) {
                mask = 0xC0;
                shift = 6;
                glyphImage++;
            }
        }
    }

    return visibleWidth + 1;
}

int CFontManager_2::drawGlyphTex8bpp(const u8 *glyphImage, void *dest, int maxWidth, u8 color, const NNSG2dCharWidths *charWidths, int height, int x, int y)
{
    int px, py;
    s32 mask;
    s32 shift;
    u8 colors[4];
    int visibleWidth;

    visibleWidth = charWidths->charWidth - charWidths->left;
    x += charWidths->left;

    colors[0] = 0;
    colors[1] = color;
    colors[2] = this->subColors.edge;
    colors[3] = this->subColors.shadow;

    mask = 0xC0;
    shift = 6;

    for (py = 0; py < height; py++)
    {
        u8 *ptr = &static_cast<u8 *>(dest)[maxWidth * (y + py) + x];
        
        for (px = 0; px < visibleWidth; px++)
        {
            int idx = (*glyphImage & mask) >> shift;
            if (idx > 0) {
                this->writeCharByte(ptr, colors[idx]);
            }
            
            mask >>= 2;
            shift -= 2;

            if (mask == 0) {
                mask = 0xC0;
                shift = 6;
                glyphImage++;
            }
            
            ptr++;
        }

        for (px = 0; px < charWidths->left; px++)
        {
            mask >>= 2;
            shift -= 2;
            if (mask == 0) {
                mask = 0xC0;
                shift = 6;
                glyphImage++;
            }
        }
    }

    return visibleWidth + 1;
}

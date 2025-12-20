#ifndef IE3OGRES_FONTMANAGER_H
#define IE3OGRES_FONTMANAGER_H

#pragma once

#include <nitro.h>

typedef enum {
    TEXT_CHAR_TYPE_NULL,
    TEXT_CHAR_TYPE_HALFWIDTH,
    TEXT_CHAR_TYPE_FULLWIDTH
} Text_CharType;

typedef enum {
    TEXT_ALIGNED_TO_LEFT,
    TEXT_ALIGNED_TO_CENTER,
    TEXT_ALIGNED_TO_RIGHT
} Text_Alignment;

typedef struct {
    u16 x_pos;
    u16 y_pos;
    u16 char_width;
    u16 cell_height;
} Text_CharacterCtx;

class CFontManager {
    public:
        CFontManager();
        virtual ~CFontManager();
        /* 0x02042e4c */ virtual BOOL vFUN_08(int indentation, int y_pos, char *text, int color, Text_Alignment alignment, void *param6, int maxWidth, int maxHeight, Text_CharacterCtx *charCtx, int param10);
        /* 0x020430b0 */ virtual void vFUN_0c();
        /* 0x02042b4c */ virtual void vFUN_10();
        /* 0x02042298 */ virtual void vFUN_14(u8 *param1, void *param2, int param3, int param4, const void /* NNSG2dCharWidths */*param5, int param6, int param7, int param8);
        /* 0x02042cf4 */ virtual void vFUN_18();
        /* 0x02042420 */ virtual void vFUN_1c();

        /* 0x0204224c */ void clear();
        /* 0x020425a0 */ Text_CharType getCharType(char *text);
        /* 0x020425c4 */ u16 decodeChar(char *text);
        BOOL FUN_020425fc(char *text, void *param2, int maxWidth, int maxHeight, int indentation, int y_pos, u8 color, Text_CharacterCtx *charCtx, int param9, int param10, Text_Alignment alignment);
        /* 0x0204294c */ int getLineWidth(char *text);
        /* 0x020429fc */ int getCurrentLineWidth(char *text);
        /* 0x02042aa4 */ int getCharPosX(int indentation, int maxWidth, char *text, Text_Alignment alignment);
        /* 0x02042b0c */ s8 getCharWidth(char *text);
        /* 0x02043310 */ void setSpacing(int charSpacing, int lineSpacing);
        /* 0x0204331c */ void setDefaultSpacing(void);
        /* 0x02043330 */ BOOL fontInit(void *pNftrFile, u32 param2, u8 encoding);
        void FUN_02043380(void *param1, int maxWidth, int maxHeight, int indentation, int y_pos, int lineWidth, int charHeight);

    private:
    void *font; //NNSG2dFont
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
    u8 encoding; //0: SJIS, 1: UTF16
};

class CFontManager_2 : public CFontManager {
    public:
        CFontManager_2();
};

/* 0x02042544 */ int GetCharTypeSJIS(char *text);
/* 0x02042584 */ int GetCharTypeUTF16(char *text);

#endif //IE3OGRES_FONTMANAGER_H

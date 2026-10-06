#pragma once

#include <nitro.h>
#include <string.h>

#include "allocator.hpp"
#include "archive.hpp"
#include "graphics.hpp"
#include "pac.hpp"
#include "CScreenManager.hpp"
#include "CommonScreen.hpp"
#include "CBgMenuManager.hpp"
#include "audioplayer.hpp"
#include "CFontManager.hpp"
#include "CPhonePassword.hpp"
#include "CLogicThink.hpp"
#include "CRecordManager.hpp"
#include "unk_0209A454.hpp"
#include "unk_020A0640.hpp"
#include "unk_020A9C40.hpp"

extern u16 gKeysRepeated;
extern "C" {
    extern int FUN_ov16_020f081c(void);
    extern void FUN_ov16_020f2184(char *text, void *dest, int width, int height, int color, int rubyColor, int charSpacing, int lineSpacing, int x, int y, int align);
    typedef struct {
        u16 *unk0;
        void *unk4;
        u32 unk8;
        u16 unkC;
        u16 unkE;
        u8 unk10;
    } SCanvas;
    extern void FUN_ov16_020f2f20(SCanvas *);
    extern void FUN_ov16_020f2f7c(SCanvas *, int);
    extern void FUN_ov16_020f2fa8(SCanvas *, int, int);
    extern void FUN_ov16_020f2fe4(SCanvas *, int);
}

typedef enum {
    KEY_TYPE_NONE    = 0,
    KEY_TYPE_CHAR    = 1,
    KEY_TYPE_CONFIRM = 3,
    KEY_TYPE_CANCEL  = 4,
    KEY_TYPE_SPECIAL = 11,
} EKeyType;

typedef struct {
    int type;
    int x;
    u32 y;
    u16 chara;
} SKey;

class CMainMenuScreenEnterName : public CommonMainScreen
{
public:
    static bool FUN_ov55_02119f00(int param0);
    static CFontManager::CharType getCharType(char *text);
    static u16 decodeChar(char *text, CFontManager::CharType type);
    static u16 normalizeChar(u16 c, u16 *data, int size);
    static void normalizeNgWordString(char *dst, char *src, u16 *fcodeck, size_t fcodeckSize);
    static bool containsNgWord(char *src, u16 *fcodeck, size_t fcodeckSize, char **param3, int param4);

    CMainMenuScreenEnterName(CScreenManager *manager) : manager(manager) { }
    virtual void updateKeys(u16 pressed, u16 held);
    virtual void updateTP(TPData *tp);
    virtual void init(void);
    virtual void update(BOOL param1);
    virtual void updateLate(void);
    virtual void close(void);
    virtual void vFUN_6C(void);
    virtual void vFUN_70(void);
    virtual BOOL tryFinalize(void);
    virtual void closeFiles(void);
    virtual void deallocateFile(int idx);
    virtual void deallocateFiles(void);
    virtual u32 loadBG0Char(int fileIdx, u32 offset) {
        return Graphics::LoadBGXCharMain(0, this->files[fileIdx].data, offset);
    }
    virtual u32 loadBG1Char(int fileIdx, u32 offset) {
        return Graphics::LoadBGXCharMain(1, this->files[fileIdx].data, offset);
    }
    virtual u32 loadBG2Char(int fileIdx, u32 offset) {
        return Graphics::LoadBGXCharMain(2, this->files[fileIdx].data, offset);
    }
    virtual u32 loadBG3Char(int fileIdx, u32 offset) {
        return Graphics::LoadBGXCharMain(3, this->files[fileIdx].data, offset);
    }
    virtual void vFUN_94(void);
    virtual void vFUN_98(void);
    virtual void loadTempPalette(int fileIdx, int plttIdx) {
        Graphics::LoadTempPaletteFromPac(this->files[fileIdx].data, ENGINE_MAIN, plttIdx);
    }
    virtual int setupScreen(int fileIdx, int tileIdx, int plttIdx) {
        return Graphics::SetupScreen(this->files[fileIdx].data, tileIdx + 1, plttIdx);
    }
    virtual void vFUN_A4(int param1);
    virtual void setKey(int x, u32 y, SKey *key);
    virtual u16 getChara(int x, u32 y);
    virtual void vFUN_B0(int param1, int param2, SKey *key);
    virtual void typeCharacter(void);
    virtual void vFUN_B8(void);
    virtual void vFUN_BC(void);
    virtual void vFUN_C0(void);
    virtual void vFUN_C4(int param1);
    virtual void vFUN_C8(void);
    virtual void vFUN_CC(int param1);
    virtual void drawText(void);
    virtual void vFUN_D4(void);
    virtual void vFUN_D8(void);
    virtual void vFUN_DC(void);
    virtual void vFUN_E0(void);
    virtual void vFUN_E4(void);
    virtual ~CMainMenuScreenEnterName() { }

private:
    inline u8 read_u8(u8 *src) {
        return u8(src[0]);
    }
    inline u16 read_u16(u8 *src) {
        return u16((src[0] & 0xFF) | (u8(src[1]) << 8));
    }

    static const int ENTER_NAME_WIDTH = 26;
    static const int ENTER_NAME_HEIGHT = 6;
    static const int ENTER_NAME_MAX = 16;

    static const int KEYCODE_EMPTY = '  ';
    static const int KEYCODE_KANA = 'AA';
    static const int KEYCODE_HANDAKU = 'BB';
    static const int KEYCODE_DAKUTEN = 'CC';
    static const int KEYCODE_DELETE = 'DD';

    enum {
        FILE_ARCHIVE,                      // 0
        FILE_XXDN_BG,                      // 1
        FILE_2,                            // 2
        FILE_BG02,                         // 3
        FILE_BG03,                         // 4
        FILE_BG06,                         // 5
        FILE_C00,                          // 6
        FILE_I00,                          // 7
        FILE_I01,                          // 8
        FILE_I02,                          // 9
        FILE_W70,                          // 10
        FILE_B70,                          // 11
        FILE_W10,                          // 12
        FILE_FCODE_BASE,                   // 13
        FILE_FCODE0 = FILE_FCODE_BASE,     // 13
        FILE_FCODE1 = FILE_FCODE_BASE + 1, // 14
        FILE_FCODE2 = FILE_FCODE_BASE + 2, // 15
        FILE_HANDAKU,                      // 16
        FILE_DAKUTEN,                      // 17
        FILE_NGWORD,                       // 18
        FILE_FCODECK,                      // 19
        FILE_MAX,                          // 20
    };

    CScreenManager *manager;
    int state;
    int unkC;
    int unk10;
    u8 unk14;
    u8 tpTouch;
    u8 pad16[0x2];
    u32 tpX;
    u32 tpY;
    SKey unk20;
    SKey unk30;
    SKey keyActive;
    int keyboardLayout;
    u8 unk54;
    u8 unk55;
    u8 unk56;
    u8 unk57;
    int unk58;
    u8 unk5C;
    u8 unk5D;
    u8 unk5E;
    u8 unk5F;
    u32 unk60;
    u8 *unk64;
    u16 *screen;
    char unk6C[17];
    char *ngWordData;
    char **ngWordLines;
    size_t ngWordLineCount;
    size_t ngWordDataSize;
    SCanvas canvas;
    SFileData files[FILE_MAX];
    CPhonePassword phonePassword;
};

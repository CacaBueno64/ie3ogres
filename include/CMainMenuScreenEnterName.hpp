#pragma once

#include <nitro.h>
#include <string.h>

#include "CAllocator.hpp"
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

/* TODO: Create header */
typedef struct {
    u16 *screen;
    u8 *tile;
    u32 offset;
    u16 width;
    u16 height;
    bool dirty;
} SCanvas;

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
    static bool isPasswordUnit(int unitNo);
    static CFontManager::CharType getCharType(char *text);
    static u16 decodeChar(char *text, CFontManager::CharType type);
    static u16 normalizeChar(u16 c, u16 *fcodeck, size_t fcodeckSize);
    static void normalizeNgWordString(char *dst, char *src, u16 *fcodeck, size_t fcodeckSize);
    static bool containsNgWord(char *src, u16 *fcodeck, size_t fcodeckSize, char **ngLines, int ngLineCount);

    CMainMenuScreenEnterName(CScreenManager *manager) : manager(manager) { }
    virtual void updateKeys(u16 pressed, u16 held);
    virtual void updateTP(TPData *tp);
    virtual void init(void);
    virtual void update(BOOL param1);
    virtual void updateLate(void);
    virtual void close(void);
    virtual void readFiles(void);
    virtual void requestFiles(void);
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
    virtual void loadGraphics(void);
    virtual void transferText(void);
    virtual void loadTempPalette(int fileIdx, int plttIdx) {
        Graphics::LoadTempPaletteFromPac(this->files[fileIdx].data, ENGINE_MAIN, plttIdx);
    }
    virtual int setupScreen(int fileIdx, int tileIdx, int plttIdx) {
        return Graphics::SetupScreen(this->files[fileIdx].data, tileIdx + 1, plttIdx);
    }
    virtual void setFlashButton(int button);
    virtual void setKey(int x, u32 y, SKey *key);
    virtual u16 getChara(int x, u32 y);
    virtual void getKeyAt(int x, int y, SKey *key);
    virtual void typeCharacter(void);
    virtual void onTouchHold(void);
    virtual void onTouchRelease(void);
    virtual void confirmEntry(void);
    virtual void exitScreen(int param1);
    virtual void cancelEntry(void);
    virtual void showButtons(int param1);
    virtual void drawText(void);
    virtual void showFlashPressed(void);
    virtual void showFlashSelected(void);
    virtual void updateTouchButtons(void);
    virtual void updateMenu(void);
    virtual void setupMenu(void);
    virtual ~CMainMenuScreenEnterName() { }

private:
    inline u8 read_u8(u8 *src) {
        return u8(src[0]);
    }
    inline u16 read_u16(u8 *src) {
        return u16((src[0] & 0xFF) | (u8(src[1]) << 8));
    }

    enum {
        FILE_ARCHIVE,                      // 0
        FILE_XXDN_BG,                      // 1
        FILE_BG01,                         // 2
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
        FILE_COUNT,                        // 20
    };

    typedef enum {
        MODE_INPUT,
        MODE_NGWORD,
        MODE_WRONG_PASSWORD,
        MODE_CORRECT_PASSWORD,
    } Mode;

    typedef enum {
        KEYCODE_EMPTY = '  ',
        KEYCODE_KANA = 'AA',
        KEYCODE_HANDAKU = 'BB',
        KEYCODE_DAKUTEN = 'CC',
        KEYCODE_DELETE = 'DD',
    } KeyCode;

    //static const int 

    static const int ENTER_NAME_WIDTH = 26;
    static const int ENTER_NAME_HEIGHT = 6;
    static const int ENTER_NAME_MAX = 16;

    CScreenManager *manager;
    int state;
    Mode mode;
    Mode nextMode;
    u8 unk14;
    u8 tpTouch;
    u8 pad16[2];
    int tpX;
    int tpY;
    SKey keyStart;
    SKey keyCur;
    SKey keyActive;
    int keyboardLayout;
    u8 dummy54[4];
    int flashButton;
    bool nameDirty;
    u8 pad5D[3];
    u32 nameCharOffset;
    u8 *nameChars;
    u16 *screen;
    char prevEntry[17];
    char *ngWordData;
    char **ngWordLines;
    int ngWordLineCount;
    size_t ngWordDataSize;
    SCanvas canvas;
    SFileData files[FILE_COUNT];
    CPhonePassword phonePassword;
};

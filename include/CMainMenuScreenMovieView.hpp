#pragma once

#include <nitro.h>

#include "CScreenManager.hpp"
#include "CommonScreen.hpp"
#include "archive.hpp"
#include "filesystem.hpp"
#include "CConfig.hpp"
#include "CAllocator.hpp"
#include "CFileIO.hpp"
#include "C3DPlaneCtrl.hpp"
#include "CSprButtonCtrl.hpp"
#include "CSprAnimCtrl.hpp"

extern "C" {
    extern int FUN_ov16_020f5450(const char *, void *, const Archive::SFPFileEntry *, int *, bool);
}

typedef struct {
    s16 idx;
    char name[10];
    char description[104];
} st_movie_view;

class CMainMenuScreenMovieView : public CommonMainScreen
{
public:
    virtual ~CMainMenuScreenMovieView() { }
    CMainMenuScreenMovieView(CScreenManager *manager) : manager(manager) { }
    void FUN_ov37_02119f00(void);
    void FUN_ov37_02119f48(void);
    void FUN_ov37_0211a024(void);
    void FUN_ov37_0211a060(void);
    void FUN_ov37_0211a0c0(SFileData *unused, int param2);
    void FUN_ov37_0211a194(void);
    void FUN_ov37_0211a220(int param1);
    void FUN_ov37_0211a284(int param1);
    void FUN_ov37_0211a2cc(void);
    bool FUN_ov37_0211a3a4(int *param1);
    bool FUN_ov37_0211a3e8(void);
    bool FUN_ov37_0211a4fc(void);
    void FUN_ov37_0211a5a4(void);
    SButton *FUN_ov37_0211a624(int param1, u32 param2, u8 param3, int x, int y, int param6, int param7, u16 param8, u8 param9, u8 param10);
    void FUN_ov37_0211a75c(void);
    void FUN_ov37_0211a800(void);
    void FUN_ov37_0211a8a8(void);
    void FUN_ov37_0211a9ec(void);
    void FUN_ov37_0211aa94(void);
    void FUN_ov37_0211ab10(bool param1, bool param2);
    void FUN_ov37_0211ad28(bool param1);
    void FUN_ov37_0211ae24(bool param1);
    void FUN_ov37_0211ae64(bool param1);
    void FUN_ov37_0211aea4(void);
    void FUN_ov37_0211aed0(void);
    bool FUN_ov37_0211af0c(int param1, int param2, int param3, int param4, int param5, u8 param6);
    void FUN_ov37_0211b0f4(void);
    int FUN_ov37_0211b258(int param1, int param2);
    void FUN_ov37_0211b274(int param1, int *xOut, int *yOut);


private:
    enum {
        FILE_ARCHIVE,
    };

    CScreenManager *manager;
    int unk8;
    u8 unkC[52];
    int unk40;
    int unk44;
    SFileData files[3];
    u8 unk6C[4];
    archandle_t mvdn_e;
    archandle_t mvdn_q;
    sfkey_t unk78[4];
    pskey_t unk88[7];
    sfkey_t *unkA4;
    sfkey_t unkA8[2];
    int unkB0;
    int unkB4;
    st_movie_view *movieView;
    int unkBC;
    int unkC0;
    int unkC4;
    u8 *unkC8;
    int unkCC;
    u8 unkD0;
    u8 unkD1;
    u8 unkD2;
    // ... 0xE0;
};

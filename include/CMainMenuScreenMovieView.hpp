#pragma once

#include <nitro.h>

#include "CScreenManager.hpp"
#include "CommonScreen.hpp"
#include "archive.hpp"
#include "filesystem.hpp"
#include "CConfig.hpp"
#include "allocator.hpp"
#include "CFileIO.hpp"
#include "C3DPlaneCtrl.hpp"

extern "C" {
    extern int FUN_ov16_020f5450(const char *, void *, const Archive::SFPFileEntry *, archandle_t *, bool);
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
    void FUN_ov37_0211a0c0(int param1, int param2);
    void FUN_ov37_0211a194(void);
    void FUN_ov37_0211a220(int param1);
    void FUN_ov37_0211a284(int param1);
    void FUN_ov37_0211a2cc(void);
    bool FUN_ov37_0211a3a4(int *param1);
    int FUN_ov37_0211b258(int param1, int param2);

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
    archandle_t unk78[4];
    pskey_t unk88[7];
    int *unkA4;
    int unkA8[2];
    int unkB0;
    int unkB4;
    st_movie_view *unkB8;
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

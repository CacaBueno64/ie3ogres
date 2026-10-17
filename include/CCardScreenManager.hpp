#pragma once

// clang-format off
#include <nitro/spi/ARM9/tp.h>  // for TPData
#include <nitro/types.h>        // for u16, u32, BOOL, u8

#include "CScreenManager.hpp"   // for CScreenManager
#include "CommonScreen.hpp"     // for CommonMainScreen
#include "archive.hpp"          // for ImagePAC, SFileData
#include "graphics.hpp"         // for EngineSelect
// clang-format on

class CMainCardScreenInit : public CommonMainScreen
{
public:
    CMainCardScreenInit(CScreenManager *manager) : manager(manager) {}
    virtual ~CMainCardScreenInit() {}
    virtual void updateKeys(u16 pressed, u16 held) {}
    virtual void updateTP(TPData *tp) {}
    virtual void init(void);
    virtual void update(BOOL param1);
    virtual void updateLate(void);
    virtual void close(void);

    void initGraphics(void);
    void deallocateFile(void);
    void displayGraphics(void);
    void FUN_ov3_020bd084(void);

private:
    CScreenManager *manager;
    int state;
    SFileData file;
};

class CCardScreenManager : public CScreenManager
{
public:
    CCardScreenManager() : mainScreenInit(this) {}
    virtual ~CCardScreenManager() {}
    virtual void init(void);
    virtual void startGraphics(u32 arg);
    virtual void endGraphics(u32 arg);
    virtual void close(void);
    virtual void updateScene(void);

private:
    CMainCardScreenInit mainScreenInit;
};

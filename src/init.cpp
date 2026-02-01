#include "init.hpp"

extern "C" {
    extern void FUN_ov16_020f5258(void);
}

void VBlankIntr(void)
{
    unk_02099E8C.EvenFrames++;
    if (unk_02099E8C.unkA4) {
        unk_02099E8C.unkA4->FUN_02051c10();
    }
    if (unk_02099E8C.WaitVBlank && unk_02099E8C.EvenFrames >= 2 || unk_02099E8C.UpdateBrightness) {
        reg_GX_MASTER_BRIGHT = unk_02099E8C.MainScreenBrightness;
        reg_GXS_DB_MASTER_BRIGHT = unk_02099E8C.SubScreenBrightness;
        unk_02099E8C.UpdateBrightness = 0;
    }
    if (unk_02099E8C.WaitVBlank && unk_02099E8C.EvenFrames >= 2) {
        FUN_ov16_020f5258();
        unk_02099E8C.EvenFrames = 0;
        unk_02099E8C.WaitVBlank = FALSE;
    }

    gWirelessUtil.FUN_02047a10();
    gFileIO.wakeUp();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

void InitHeap(void)
{
    InitAlloc();
    
    void *heapstart = OS_AllocFromMainArenaLo(0x2d000, 0x20);
    OSHeapHandle handle = OS_CreateHeap(OS_ARENA_MAIN, heapstart, (void *)((u32)heapstart + 0x2d000));
    OS_SetCurrentHeap(OS_ARENA_MAIN, handle);
    
    unk_02099E8C.unkC0 = handle;
}

void InitCommon(void)
{
    OS_Init();
    OS_InitTick();
    OS_InitAlarm();
    OS_InitThread();
    FS_Init(FS_DMA_NOT_USE);
    RTC_Init();
    FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay130));
    InitHeap();
    FX_Init();
    GX_DMAID = 2;
    GX_Init();
    GX_DispOff();
    GXS_DispOff();
    FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay16));
}

void FUN_02029140(void)
{
    void *arenaLo = OS_GetMainArenaLo();
    unk_02099E8C.unk94 = arenaLo;
    void *arenaHi = OS_GetMainArenaHi();
    unk_02099E8C.unk38 = arenaHi;
    
    unk_02099E8C.unkB4 = reinterpret_cast<void *>(reinterpret_cast<u32>(unk_02099E8C.unk94) + 0x00244800);

    if (unk_02099E8C.unkB4 > arenaHi) {
        OS_Terminate();
    } else {
        unk_02099E8C.unk30 = arenaHi;
    }

    void *destp = unk_02099E8C.unk94;
    u32 size = reinterpret_cast<u32>(unk_02099E8C.unk30) - reinterpret_cast<u32>(unk_02099E8C.unk94);
    unk_02099E8C.unkBC = size;
    MI_CpuClearFast(destp, size);
    DC_FlushRange(unk_02099E8C.unk94, unk_02099E8C.unkBC);

    gAllocator.initArenas(OS_ARENA_MAIN, unk_02099E8C.unk94, unk_02099E8C.unk30);

    OS_SetMainArenaLo(reinterpret_cast<void *>((reinterpret_cast<u32>(unk_02099E8C.unk30) + 31) & ~31));

    gAllocator.setDefaultArena(0);
    gAllocator.fileIO = &gFileIO;
    gFileIO.init(64, &gAllocator);
    gMovie.init(&gAllocator);
}

void VramClear(void)
{
    GX_SetBankForLCDC(GX_VRAM_LCDC_ALL);
    MI_CpuClearFast(reinterpret_cast<void *>(HW_LCDC_VRAM), HW_LCDC_VRAM_SIZE);
    (void)GX_DisableBankForLCDC();
    
    MI_CpuFillFast(reinterpret_cast<void *>(HW_OAM), 192, HW_OAM_SIZE);
    MI_CpuClearFast(reinterpret_cast<void *>(HW_PLTT), HW_PLTT_SIZE);
    MI_CpuFillFast(reinterpret_cast<void *>(HW_DB_OAM), 192, HW_DB_OAM_SIZE);
    MI_CpuClearFast(reinterpret_cast<void *>(HW_DB_PLTT), HW_DB_PLTT_SIZE);
}

void InitInterrupt(void)
{
    (void)OS_DisableIrq();
    (void)OS_SetIrqFunction(OS_IE_V_BLANK, VBlankIntr);
    (void)OS_EnableIrqMask(OS_IE_V_BLANK);
    (void)OS_EnableIrqMask(OS_IE_FIFO_RECV);
    (void)OS_EnableIrq();
    (void)GX_VBlankIntr(TRUE);
    OS_WaitVBlankIntr();
}

void FUN_020292e8(void)
{
    gFileIO.FUN_0202ede8();
}

void FUN_020292f4(void)
{
    FileSystem::Init();
    InitConfig();
}

void InitGlobals(void) // https://decomp.me/scratch/kU9Um
{
    unk_02099E8C.unk8C = new C3DDevice();
    unk_02099E8C.unkA4 = new ResourceManager();
    unk_02099E8C.unk58 = new CNsbResourceMan();
    unk_02099E8C.unk98 = new CameraController();
    unk_02099E8C.unk60 = new C3DGameChar();
    unk_02099E8C.unk24 = new C3DGameMap();
    unk_02099E8C.unk84 = new C3DGameEffect();
    unk_02099E8C.unk5C = new C3DGameMapObject();
    unk_02099E8C.unk88 = NULL;
    unk_02099E8C.unkAC = new C3DPlaneCtrl();
    unk_02099E8C.unkCC = new C3DSpriteCtrl();
    unk_02099E8C.unk2C = new C3DMagicCamera();
    unk_02099E8C.unk4C = new C2DAdventureLogic();
    unk_02099E8C.unk34 = new C2DGChar();
    unk_02099E8C.unk28 = new CSprButtonCtrl();
    unk_02099E8C.unk48 = new CSprAnimCtrl();
    unk_02099E8C.unkC8 = new CDungeonManager();
    
    unk_02099E8C.unk8C->init();
    unk_02099E8C.unkA4->init(0x100, 0x80, 128);
    unk_02099E8C.unk58->init(256);
    unk_02099E8C.unk98->init();
    unk_02099E8C.unk60->init(8);
    unk_02099E8C.unk5C->init(32);
    unk_02099E8C.unk24->init(8);
    unk_02099E8C.unk84->init(16);
    unk_02099E8C.unkAC->init(192, 160);
    unk_02099E8C.unkCC->init(96, 96);
    unk_02099E8C.unk4C->reset();
    unk_02099E8C.unk34->reset();
    unk_02099E8C.unkB8 = NULL;
    unk_02099E8C.unk64 = NULL;
}

extern "C" {
    extern void NNS_G3dInit(void);
    extern void NNS_G3dGlbInit(void);
}

void InitG3d(void)
{
    NNS_G3dInit();
    NNS_G3dGlbInit();
    G3X_InitMtxStack();
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
}

void InitTouchPannel(void)
{
    TP_Init();
    TPCalibrateParam calibrate;
    BOOL userInfo = TP_GetUserInfo(&calibrate);
    if (!userInfo) {
        OS_Terminate();
        return;
    }
    TP_SetCalibrateParam(&calibrate);
}

void FUN_020295e8(void)
{
    gLogicThink.FUN_0206f1e0();
    gLogicThink.FUN_0206f244();
}

void FUN_02029608(void)
{
    gLogicThink.readUnitNo();
    gLogicThink.initLiveTalk();

    unk_02099E8C.Logic_WearSetFile = NULL;

    char *wearSetFileName = "/data_iz/logic/wearset.dat";
    if (gAllocator.fileIO != NULL) {
        gAllocator.fileIO->readDirect(wearSetFileName, &unk_02099E8C.Logic_WearSetFile, &gAllocator, 0, 0, FALSE, 1);
    }

    unk_02099E8C.Logic_ShoesInfoFile = NULL;
    unk_02099E8C.Logic_GlovesInfoFile = NULL;
    unk_02099E8C.Logic_MissInfoFile = NULL;
    unk_02099E8C.Logic_PalSkin3dFile = NULL;
    unk_02099E8C.Logic_PalSkin2dFile = NULL;

    FileSystem::ReadFile(&unk_02099E8C.Logic_ShoesInfoFile, "logic/shoesinfo.dat", 0, 0);
    FileSystem::ReadFile(&unk_02099E8C.Logic_GlovesInfoFile, "logic/gloveinfo.dat", 0, 0);
    FileSystem::ReadFile(&unk_02099E8C.Logic_MissInfoFile, "logic/missinfo.dat", 0, 0);
    FileSystem::ReadFile(&unk_02099E8C.Logic_PalSkin3dFile, "logic/palskin3d.dat", 0, 0);
    FileSystem::ReadFile(&unk_02099E8C.Logic_PalSkin2dFile, "logic/palskin2d.dat", 0, 0);
    FileSystem::ReadFile(&unk_02099E8C.Logic_PalSkinFaceFile, "logic/palskinface.dat", 0, 0);
}

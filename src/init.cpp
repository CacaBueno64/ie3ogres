#include "init.hpp"
#include "ov130.hpp"
#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

extern void FUN_0202f794(void *);
extern void FUN_02047a10(void *);
extern void FUN_02051c10(void);
extern void FUN_ov16_020f5258(void);

extern UnkStruct_02099E8C unk_02099E8C;
extern u32 *unk_0209AEC0;
extern u32 *unk_0209C2C4;

void FUN_02028fac(void)
{
    unk_02099E8C.unk80++;
    if (unk_02099E8C.unkA4) {
        FUN_02051c10();
    }
    if (unk_02099E8C.unk40 != 0 && unk_02099E8C.unk80 >= 2 || unk_02099E8C.unkB0) {
        reg_GX_MASTER_BRIGHT = unk_02099E8C.unk7C;
        reg_GXS_DB_MASTER_BRIGHT = unk_02099E8C.unk7E;
        unk_02099E8C.unkB0 = 0;
    }
    if (unk_02099E8C.unk40 != 0 && unk_02099E8C.unk80 >= 2) {
        FUN_ov16_020f5258();
        unk_02099E8C.unk80 = 0;
        unk_02099E8C.unk40 = 0;
    }
    
    FUN_02047a10(&unk_0209AEC0);
    FUN_0202f794(&unk_0209C2C4);
    
    asm {
        ldr r0, =SDK_AUTOLOAD_DTCM_START
    	add r0, r0, #0x3000
        ldr r1, [r0, #0xff8]
        orr r1, r1, #1
    	str r1, [r0, #0xff8]
    }
}

void FUN_02029078(void)
{
    FUN_ov130_0212a9c0();
    
    void *heapstart = OS_AllocFromArenaLo(OS_ARENA_MAIN, 0x2d000, 0x20);
    OSHeapHandle handle = OS_CreateHeap(OS_ARENA_MAIN, heapstart, (void *)((u32)heapstart + 0x2d000));
    OS_SetCurrentHeap(OS_ARENA_MAIN, handle);
    
    unk_02099E8C.unkC0 = handle;
}

FS_EXTERN_OVERLAY(overlay130);
FS_EXTERN_OVERLAY(overlay16);

void InitCommon(void)
{
    OS_Init();
    OS_InitTick();
    OS_InitAlarm();
    OS_InitThread();
    FS_Init(-1);
    RTC_Init();
    FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay130));
    FUN_02029078();
    FX_Init();
    GXi_DmaId = 2;
    GX_Init();
    GX_DispOff();
    GXS_DispOff();
    FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay16));
}

extern void FUN_0202dc54(void *, u32, void *, void *);
extern void FUN_0202e1ac(void *, u32);
extern void FUN_0202edec(void *, u32, void *);
extern void _ZN7L5Movie12FUN_0202e4acEPv(void *, void *);

extern void *unk_0209A250;
extern void *gL5Movie;

void FUN_02029140(void)
{
    void *arenalo = OS_GetArenaLo(OS_ARENA_MAIN);
    unk_02099E8C.unk94 = arenalo;
    void *arenahi = OS_GetArenaHi(OS_ARENA_MAIN);
    unk_02099E8C.unk38 = arenahi;
	
    unk_02099E8C.unkB4 = (void *)(((u32)unk_02099E8C.unk94) + 0x00244800);
    if (unk_02099E8C.unkB4 > arenahi) {
        OS_Terminate();
    }
    else {
        unk_02099E8C.unk30 = arenahi;
    }
    
    void *destp = unk_02099E8C.unk94;
    u32 size = (u32)unk_02099E8C.unk30 - (u32)unk_02099E8C.unk94;
    unk_02099E8C.unkBC = size;
    MI_CpuClearFast(destp, size);
    
    DC_FlushRange(unk_02099E8C.unk94, (u32)unk_02099E8C.unkBC);
    
    void *allocator = &unk_0209A250;
    FUN_0202dc54(allocator, 0, unk_02099E8C.unk94, unk_02099E8C.unk30);
    
    OS_SetArenaLo(OS_ARENA_MAIN, (void *)(((u32)unk_02099E8C.unk30 + 31) & ~31));
    
    FUN_0202e1ac(allocator, 0);
    *(u32 *)allocator = (u32)&unk_0209C2C4;
    FUN_0202edec(&unk_0209C2C4, 0x40, allocator);
    
    _ZN7L5Movie12FUN_0202e4acEPv(&gL5Movie, allocator);
}

void VramClear(void)
{
    GX_SetBankForLCDC(GX_VRAM_LCDC_ALL);
    MI_CpuClearFast((void *)HW_LCDC_VRAM, HW_LCDC_VRAM_SIZE);
    (void)GX_DisableBankForLCDC();
    
    MI_CpuFillFast((void *)HW_OAM, 192, HW_OAM_SIZE);
    MI_CpuClearFast((void *)HW_PLTT, HW_PLTT_SIZE);
    MI_CpuFillFast((void*)HW_DB_OAM, 192, HW_DB_OAM_SIZE);
    MI_CpuClearFast((void *)HW_DB_PLTT, HW_DB_PLTT_SIZE);
}

void InitInterrupt(void)
{
    (void)OS_DisableIrq();
    (void)OS_SetIrqFunction(OS_IE_V_BLANK, FUN_02028fac);
    (void)OS_EnableIrqMask(OS_IE_V_BLANK);
    (void)OS_EnableIrqMask(OS_IE_FIFO_RECV);
    (void)OS_EnableIrq();
    (void)GX_VBlankIntr(TRUE);
    OS_WaitVBlankIntr();
}

extern void FUN_0202ede8(void);
extern void FUN_020864b4(void);

void FUN_020292e8(void)
{
    FUN_0202ede8();
}

void FUN_020292f4(void)
{
	FUN_020864b4();
	extern void _Z18FUN_ov130_0212aa14v(void);
	_Z18FUN_ov130_0212aa14v();
}

#ifdef NONMATCHING
#else
extern void FUN_ov16_020fd4a8(void);
extern void FUN_02059fcc(void);
extern void FUN_0205d104(void);
extern void FUN_02052144(void);
extern void FUN_0205b518(void);
extern void FUN_0205e5d8(void);
extern void FUN_020585bc(void);
extern void FUN_02052618(void);
extern void FUN_02054f28(void);
extern void FUN_02056760(void);
extern void FUN_ov16_0210e014(void);
extern void FUN_ov16_020f82b0(void);
extern void FUN_02051144(void);
extern void FUN_02051690(void);
extern void FUN_ov16_020fc9f4(void);
extern void FUN_ov16_020f7374(void);
extern void FUN_0205a1bc(void);
extern void FUN_0205ecd0(void);
extern void FUN_0205d180(void);
extern void FUN_0205bca4(void);
extern void FUN_ov16_021122d0(void);
extern void FUN_ov16_0211652c(void);
extern void FUN_02054f60(void);
extern void FUN_02056828(void);
extern void operator_new(void);
extern void *unk_0209057C;
extern void *unk_0208F6E0;
extern void *unk_0209095C;
extern void *unk_02090BF8;
extern void *ov16_02119E9C;
extern void *unk_0208F6A0;
asm void FUN_02029304(void)
{
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x48
	ldr r4, =unk_02099E8C
	bl operator_new
	cmp r0, #0
	ldrne r1, =unk_0209057C
	strne r1, [r0]
	str r0, [r4, #0x8c]
	mov r0, #0x3c
	bl operator_new
	str r0, [r4, #0xa4]
	mov r0, #0x2c
	bl operator_new
	cmp r0, #0
	beq _02029344
	bl FUN_ov16_020fd4a8
_02029344:
	str r0, [r4, #0x58]
	ldr r0, =0x000005E4
	bl operator_new
	str r0, [r4, #0x98]
	mov r0, #0x94
	bl operator_new
	movs r5, r0
	beq _02029370
	ldr r1, =unk_0208F6E0
	str r1, [r5]
	bl FUN_02059fcc
_02029370:
	mov r0, #0x38
	str r5, [r4, #0x60]
	bl operator_new
	cmp r0, #0
	beq _02029388
	bl FUN_0205d104
_02029388:
	str r0, [r4, #0x24]
	mov r0, #0x1c
	bl operator_new
	movs r5, r0
	beq _020293B0
	bl FUN_02052144
	ldr r1, =unk_0209095C
	mov r0, r5
	str r1, [r5]
	bl FUN_0205b518
_020293B0:
	mov r0, #0x3c
	str r5, [r4, #0x84]
	bl operator_new
	movs r5, r0
	beq _020293D8
	bl FUN_02052144
	ldr r1, =unk_02090BF8
	mov r0, r5
	str r1, [r5]
	bl FUN_0205e5d8
_020293D8:
	str r5, [r4, #0x5c]
	mov r1, #0
	mov r0, #0x2c
	str r1, [r4, #0x88]
	bl operator_new
	movs r5, r0
	beq _020293F8
	bl FUN_020585bc
_020293F8:
	mov r0, #0x48
	str r5, [r4, #0xac]
	bl operator_new
	movs r5, r0
	beq _0202941C
	ldr r1, =ov16_02119E9C
	add r0, r5, #4
	str r1, [r5]
	bl FUN_020585bc
_0202941C:
	mov r0, #0x350
	str r5, [r4, #0xcc]
	bl operator_new
	cmp r0, #0
	beq _02029434
	bl FUN_02052618
_02029434:
	str r0, [r4, #0x2c]
	ldr r0, =0x00001920
	bl operator_new
	cmp r0, #0
	beq _0202944C
	bl FUN_02054f28
_0202944C:
	str r0, [r4, #0x4c]
	mov r0, #0xb0
	bl operator_new
	cmp r0, #0
	beq _02029464
	bl FUN_02056760
_02029464:
	str r0, [r4, #0x34]
	ldr r0, =0x00000F3C
	bl operator_new
	cmp r0, #0
	ldrne r1, =unk_0208F6A0
	strne r1, [r0]
	str r0, [r4, #0x28]
	ldr r0, =0x00000424
	bl operator_new
	cmp r0, #0
	beq _02029494
	bl FUN_ov16_0210e014
_02029494:
	str r0, [r4, #0x48]
	mov r0, #0x138
	bl operator_new
	cmp r0, #0
	beq _020294AC
	bl FUN_ov16_020f82b0
_020294AC:
	str r0, [r4, #0xc8]
	ldr r0, [r4, #0x8c]
	bl FUN_02051144
	mov r5, #0x100
	mov r2, #0x80
	ldr r0, [r4, #0xa4]
	mov r1, r5
	mov r3, r2
	bl FUN_02051690
	ldr r0, [r4, #0x58]
	mov r1, r5
	bl FUN_ov16_020fc9f4
	ldr r0, [r4, #0x98]
	bl FUN_ov16_020f7374
	mov r5, #8
	ldr r0, [r4, #0x60]
	mov r1, r5
	bl FUN_0205a1bc
	ldr r0, [r4, #0x5c]
	mov r1, #0x20
	bl FUN_0205ecd0
	ldr r0, [r4, #0x24]
	mov r1, r5
	bl FUN_0205d180
	ldr r0, [r4, #0x84]
	mov r1, #0x10
	bl FUN_0205bca4
	ldr r0, [r4, #0xac]
	mov r1, #0xc0
	mov r2, #0xa0
	bl FUN_ov16_021122d0
	mov r1, #0x60
	ldr r0, [r4, #0xcc]
	mov r2, r1
	bl FUN_ov16_0211652c
	ldr r0, [r4, #0x4c]
	bl FUN_02054f60
	ldr r0, [r4, #0x34]
	bl FUN_02056828
	mov r0, #0
	str r0, [r4, #0xb8]
	str r0, [r4, #0x64]
	ldmfd sp!, {r3, r4, r5, pc}
}
#endif

extern void NNS_G3dInit(void);
extern void NNS_G3dGlbInit(void);

void InitG3d(void)
{
    NNS_G3dInit();
    NNS_G3dGlbInit();
    G3X_InitMtxStack();
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
}

void InitTouchPannel(void) {
    TP_Init();
    TPCalibrateParam calibrate;
    BOOL userInfo = TP_GetUserInfo(&calibrate);
    if (!userInfo) {
        OS_Terminate();
        return;
    }
    TP_SetCalibrateParam(&calibrate);
}

extern void FUN_0206f1e0(void *ptr);
extern void FUN_0206f244(void *ptr);
extern void *unk_0209BA20;

void FUN_020295e8(void)
{
    void *ptr = (void *)&unk_0209BA20;
    FUN_0206f1e0(ptr);
    FUN_0206f244(ptr);
}

#ifdef __cplusplus
} /* extern "C" */
#endif

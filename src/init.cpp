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

extern UnkStruct_02099E8C *unk_02099E8C;
extern u32 *unk_0209AEC0;
extern u32 *unk_0209C2C4;

void FUN_02028fac(void)
{
    UnkStruct_02099E8C *ctx = (UnkStruct_02099E8C *)&unk_02099E8C;
    ctx->unk80++;
    if (ctx->unkA4) {
        FUN_02051c10();
    }
    if (ctx->unk40 != 0 && ctx->unk80 >= 2 || ctx->unkB0) {
        reg_GX_MASTER_BRIGHT = ctx->unk7C;
        reg_GXS_DB_MASTER_BRIGHT = ctx->unk7E;
        ctx->unkB0 = 0;
    }
    if (ctx->unk40 != 0 && ctx->unk80 >= 2) {
        FUN_ov16_020f5258();
        ctx->unk80 = 0;
        ctx->unk40 = 0;
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
    
    UnkStruct_02099E8C *struct_02099E8C = (UnkStruct_02099E8C *)&unk_02099E8C;
    struct_02099E8C->unkC0 = handle;
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
    (void)FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay130));
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
extern void FUN_0202e4ac(void *, void *);

extern void *unk_0209A250;
extern void *unk_0209A8A0;

// https://decomp.me/scratch/6nH8k
#ifdef NONMATCHING
void FUN_02029140(void)
{
    void *arenalo = OS_GetArenaLo(OS_ARENA_MAIN);
    UnkStruct_02099E8C *struct_02099E8C = (UnkStruct_02099E8C *)&unk_02099E8C;
    struct_02099E8C->unk94 = arenalo;
    void *arenahi = OS_GetArenaHi(OS_ARENA_MAIN);
    struct_02099E8C->unk38 = arenahi;
    struct_02099E8C->unkB4 = struct_02099E8C->unk94 + 0x00244800;
    if (struct_02099E8C->unkB4 > arenahi) {
        OS_Terminate();
    }
    else {
        struct_02099E8C->unk30 = arenahi;
    }
    
    //void *destp = struct_02099E8C->unk94;
    //u32 clearsize = struct_02099E8C->unk30 - struct_02099E8C->unk94;
    struct_02099E8C->unkBC = struct_02099E8C->unk30 - struct_02099E8C->unk94;
    MIi_CpuClearFast(0, struct_02099E8C->unk94, struct_02099E8C->unk30 - struct_02099E8C->unk94);
    
    DC_FlushRange(struct_02099E8C->unk94, (u32)struct_02099E8C->unkBC);
    
    void *allocator = (void *)&unk_0209A250;
    FUN_0202dc54(allocator, 0, struct_02099E8C->unk94, struct_02099E8C->unk30);
    
    OS_SetArenaLo(OS_ARENA_MAIN, (void *)(((u32)struct_02099E8C->unk30 + 31) & ~31));

    FUN_0202e1ac(allocator, 0);
    *(u32 *)allocator = &unk_0209C2C4;
    FUN_0202edec(&unk_0209C2C4, 0x40, allocator);

    FUN_0202e4ac(&unk_0209A8A0, allocator);
}
#else
asm void FUN_02029140(void) {
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r0, r5
	bl OS_GetArenaLo
	ldr r4, =unk_02099E8C
	str r0, [r4, #0x94]
	mov r0, r5
	bl OS_GetArenaHi
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x94]
	add r1, r1, #0x4800
	add r1, r1, #0x240000
	str r1, [r4, #0xb4]
	cmp r1, r0
	strls r0, [r4, #0x30]
	bls _02029184
	bl OS_Terminate
_02029184:
	ldr r4, =unk_02099E8C
	mov r6, #0
	ldr r1, [r4, #0x94]
	ldr r2, [r4, #0x30]
	mov r0, r6
	sub r2, r2, r1
	str r2, [r4, #0xbc]
	bl MIi_CpuClearFast
	ldr r0, [r4, #0x94]
	ldr r1, [r4, #0xbc]
	bl DC_FlushRange
	ldr r5, =unk_0209A250
	ldr r2, [r4, #0x94]
	ldr r3, [r4, #0x30]
	mov r0, r5
	mov r1, r6
	bl FUN_0202dc54
	ldr r1, [r4, #0x30]
	mov r0, r6
	add r1, r1, #0x1f
	bic r1, r1, #0x1f
	bl OS_SetArenaLo
	mov r1, r6
	mov r0, r5
	bl FUN_0202e1ac
	ldr r0, =unk_0209C2C4
	mov r1, #0x40
	str r0, [r5]
	mov r2, r5
	bl FUN_0202edec
	mov r1, r5
	ldr r0, =unk_0209A8A0
	bl FUN_0202e4ac
	ldmfd sp!, {r4, r5, r6, pc}
}
#endif

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

#ifdef __cplusplus
} /* extern "C" */
#endif

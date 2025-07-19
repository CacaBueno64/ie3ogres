#include <nitro.h>
#include <nitro/code32.h>

extern void NitroMain(void);
extern void OS_IrqHandler(void);
static void do_autoload(void);
static void init_cp15(void);
void _start(void);
static void INITi_CpuClear32(register u32 data, register void *destp, register u32 size);
extern void *const _start_ModuleParams[];
void _start_AutoloadDoneCallback(void *argv[]);

extern void __call_static_initializers(void);
extern void _fp_init(void);
void OSi_ReferSymbol(void *symbol);

extern void SDK_IRQ_STACKSIZE(void);
extern void SDK_AUTOLOAD_START(void);
extern void SDK_AUTOLOAD_LIST(void);
extern void SDK_AUTOLOAD_LIST_END(void);
extern void SDK_STATIC_BSS_START(void);
extern void SDK_STATIC_BSS_END(void);

#include <nitro/version.h>
#define SDK_VERSION_ID ((u32)SDK_VERSION_MAJOR<<24 | \
                        (u32)SDK_VERSION_MINOR<<16 | \
                        (u32)SDK_VERSION_RELSTEP)

#define SDK_NITROCODE_LE 0x2106c0de
#define SDK_NITROCODE_BE 0xdec00621

#define SDK_BUILDCODE_LE 0x3381c0de
#define SDK_BUILDCODE_BE 0xdec08133

#define SDK_BUILDCODE 0
#define SDK_TARGET 9

#define INITi_HW_DTCM SDK_AUTOLOAD_DTCM_START
SDK_WEAK_SYMBOL asm void _start(void)
{
    mov r12, #0x4000000
    str r12, [r12, #0x208]
_02000808:
    ldrh r0, [r12, #6]
    cmp r0, #0
    bne _02000808
    bl init_cp15
    mov r0, #0x13
    msr cpsr_c, r0
    ldr r0, =INITi_HW_DTCM
    add r0, r0, #0x3fc0
    mov sp, r0
    mov r0, #0x12
    msr cpsr_c, r0
    ldr r0, =INITi_HW_DTCM
    add r0, r0, #0x3fc0
    sub r0, r0, #0x40
    sub sp, r0, #4
    tst sp, #4
    subeq sp, sp, #4
    ldr r1, =SDK_IRQ_STACKSIZE
    sub r1, r0, r1
    mov r0, #0x1f
    msr cpsr_fsxc, r0
    sub sp, r1, #4
    tst sp, #4
    subne sp, sp, #4
    mov r0, #0
    ldr r1, =INITi_HW_DTCM
    mov r2, #0x4000
    bl INITi_CpuClear32
    mov r0, #0
    ldr r1, =0x05000000
    mov r2, #0x400
    bl INITi_CpuClear32
    mov r0, #0x200
    ldr r1, =0x07000000
    mov r2, #0x400
    bl INITi_CpuClear32
    ldr r1, =_start_ModuleParams
    ldr r0, [r1, #0x14]
    bl MIi_UncompressBackward
    bl do_autoload
    ldr r0, =_start_ModuleParams
    ldr r1, [r0, #0xc]
    ldr r2, [r0, #0x10]
    mov r3, r1
    mov r0, #0
_020008BC:
    cmp r1, r2
    strlo r0, [r1], #4
    blo _020008BC
    bic r1, r3, #0x1f
_020008CC:
    mcr p15, 0, r0, c7, c10, 4
    mcr p15, 0, r1, c7, c5, 1
    mcr p15, 0, r1, c7, c14, 1
    add r1, r1, #0x20
    cmp r1, r2
    blt _020008CC
    ldr r1, =0x02FFFF9C
    str r0, [r1]
    ldr r1, =INITi_HW_DTCM
    add r1, r1, #0x3fc0
    add r1, r1, #0x3c
    ldr r0, =OS_IrqHandler
    str r0, [r1]
    bl _fp_init
    bl NitroStartUp
    bl __call_static_initializers
    ldr r1, =NitroMain
    ldr lr, =0xFFFF0000
    bx r1
}

static asm void INITi_CpuClear32(register u32 data, register void *destp, register u32 size)
{
    add r12, r1, r2
_02000940:
    cmp r1, r12
    stmltia r1!, {r0}
    blt _02000940
    bx lr
}

void *const _start_ModuleParams[] = {
    (void *)SDK_AUTOLOAD_LIST,
    (void *)SDK_AUTOLOAD_LIST_END,
    (void *)SDK_AUTOLOAD_START,
    (void *)SDK_STATIC_BSS_START,
    (void *)SDK_STATIC_BSS_END,
    (void *)0,
    (void *)SDK_VERSION_ID,
    (void *)SDK_NITROCODE_BE,
    (void *)SDK_NITROCODE_LE,
};

#pragma force_active on
void* const _start_BuildParams[] = {
    (void*)0,
    (void*)0,
    (void*)0,
    (void*)0,
    (void*)(SDK_BUILDCODE | (SDK_TARGET << 8)),
    (void*)1,
    (void*)SDK_BUILDCODE_BE,
    (void*)SDK_BUILDCODE_LE,
};
#ifdef SDK_NITRO
static void* DUMMY = (void*)&_start_BuildParams[0];
#endif

asm void MIi_UncompressBackward(register void* bottom)
{
    cmp bottom, #0
    beq _020009F8
    stmfd sp!, {r4, r5, r6, r7}
    ldmdb bottom, {r1, r2}
    add r2, bottom, r2
    sub r3, bottom, r1, lsr #24
    bic r1, r1, #0xff000000
    sub r1, bottom, r1
    mov r4, r2
_02000974:
    cmp r3, r1
    ble _020009D4
    ldrb r5, [r3, #-1]!
    mov r6, #8
_02000984:
    subs r6, r6, #1
    blt _02000974
    tst r5, #0x80
    bne _020009A0
    ldrb r0, [r3, #-1]!
    strb r0, [r2, #-1]!
    b _020009C8
_020009A0:
    ldrb r12, [r3, #-1]!
    ldrb r7, [r3, #-1]!
    orr r7, r7, r12, lsl #8
    bic r7, r7, #0xf000
    add r7, r7, #2
    add r12, r12, #0x20
_020009B8:
    ldrb r0, [r2, r7]
    strb r0, [r2, #-1]!
    subs r12, r12, #0x10
    bge _020009B8
_020009C8:
    cmp r3, r1
    mov r5, r5, lsl #1
    bgt _02000984
_020009D4:
    mov r0, #0
    bic r3, r1, #0x1f
_020009DC:
    mcr p15, 0, r0, c7, c10, 4
    mcr p15, 0, r3, c7, c5, 1
    mcr p15, 0, r3, c7, c14, 1
    add r3, r3, #0x20
    cmp r3, r4
    blt _020009DC
    ldmfd sp!, {r4, r5, r6, r7}
_020009F8:
    bx lr
}

static asm void do_autoload(void)
{
    ldr r0, =_start_ModuleParams
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r3, [r0, #8]
_02000A0C:
    cmp r1, r2
    beq _02000A6C
    ldr r5, [r1], #4
    ldr r7, [r1], #4
    add r6, r5, r7
    mov r4, r5
_02000A24:
    cmp r4, r6
    ldrmi r7, [r3], #4
    strmi r7, [r4], #4
    bmi _02000A24
    ldr r7, [r1], #4
    add r6, r4, r7
    mov r7, #0
_02000A40:
    cmp r4, r6
    strlo r7, [r4], #4
    blo _02000A40
    bic r4, r5, #0x1f
_02000A50:
    mcr p15, 0, r7, c7, c10, 4
    mcr p15, 0, r4, c7, c5, 1
    mcr p15, 0, r4, c7, c14, 1
    add r4, r4, #0x20
    cmp r4, r6
    blt _02000A50
    b _02000A0C
_02000A6C:
    b _start_AutoloadDoneCallback
}

SDK_WEAK_SYMBOL asm void _start_AutoloadDoneCallback(void* argv[])
{
    bx lr
}

static asm void init_cp15(void)
{
    mrc p15, 0, r0, c1, c0, 0
    ldr r1, =0x000F9005
    bic r0, r0, r1
    mcr p15, 0, r0, c1, c0, 0
    mov r0, #0
    mcr p15, 0, r0, c7, c5, 0
    mcr p15, 0, r0, c7, c6, 0
    mcr p15, 0, r0, c7, c10, 4
    ldr r0, =0x04000033
    mcr p15, 0, r0, c6, c0, 0
    ldr r0, =0x02000031
    mcr p15, 0, r0, c6, c1, 0
    ldr r0, =0x027FF017
    mcr p15, 0, r0, c6, c2, 0
    ldr r0, =0x08000035
    mcr p15, 0, r0, c6, c3, 0
    ldr r0, =SDK_AUTOLOAD_DTCM_START
    orr r0, r0, #0x1a
    orr r0, r0, #1
    mcr p15, 0, r0, c6, c4, 0
    ldr r0, =0x0100002F
    mcr p15, 0, r0, c6, c5, 0
    ldr r0, =0xFFFF001D
    mcr p15, 0, r0, c6, c6, 0
    ldr r0, =0x02FFF017
    mcr p15, 0, r0, c6, c7, 0
    mov r0, #0x20
    mcr p15, 0, r0, c9, c1, 1
    ldr r0, =INITi_HW_DTCM
    orr r0, r0, #0xa
    mcr p15, 0, r0, c9, c1, 0
    mov r0, #0x4a
    mcr p15, 0, r0, c2, c0, 1
    mov r0, #0x4a
    mcr p15, 0, r0, c2, c0, 0
    mov r0, #0xa
    mcr p15, 0, r0, c3, c0, 0
    ldr r0, =0x05101011
    mcr p15, 0, r0, c5, c0, 3
    ldr r0, =0x15111111
    mcr p15, 0, r0, c5, c0, 2
    mrc p15, 0, r0, c1, c0, 0
    ldr r1, =0x0005707D
    orr r0, r0, r1
    mcr p15, 0, r0, c1, c0, 0
    bx lr
}

SDK_WEAK_SYMBOL void NitroStartUp(void)
{
}

void OSi_ReferSymbol(void *symbol)
{
#pragma unused(symbol)
}

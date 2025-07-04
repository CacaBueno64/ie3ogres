	.include "include/crt0.inc"
	.include "asm/macros/function.inc"
	.public SDK_AUTOLOAD_DTCM_START
	.public SDK_AUTOLOAD_LIST
	.public SDK_AUTOLOAD_LIST_END
	.public SDK_AUTOLOAD_START
	.public SDK_STATIC_BSS_START
	.public SDK_STATIC_BSS_END
	.public SDK_IRQ_STACKSIZE

	.text

	arm_func_start _start
_start: ; 0x02000800
	mov r12, #0x4000000
	str r12, [r12, #0x208]
_02000808:
	ldrh r0, [r12, #6]
	cmp r0, #0
	bne _02000808
	bl init_cp15
	mov r0, #0x13
	msr cpsr_c, r0
	ldr r0, _02000918 ; =SDK_AUTOLOAD_DTCM_START
	add r0, r0, #0x3fc0
	mov sp, r0
	mov r0, #0x12
	msr cpsr_c, r0
	ldr r0, _02000918 ; =SDK_AUTOLOAD_DTCM_START
	add r0, r0, #0x3fc0
	sub r0, r0, #0x40
	sub sp, r0, #4
	tst sp, #4
	subeq sp, sp, #4
	ldr r1, _0200091C ; =SDK_IRQ_STACKSIZE
	sub r1, r0, r1
	mov r0, #0x1f
	msr cpsr_fsxc, r0
	sub sp, r1, #4
	tst sp, #4
	subne sp, sp, #4
	mov r0, #0
	ldr r1, _02000918 ; =SDK_AUTOLOAD_DTCM_START
	mov r2, #0x4000
	bl INITi_CpuClear32
	mov r0, #0
	ldr r1, _02000920 ; =0x05000000
	mov r2, #0x400
	bl INITi_CpuClear32
	mov r0, #0x200
	ldr r1, _02000924 ; =0x07000000
	mov r2, #0x400
	bl INITi_CpuClear32
	ldr r1, _02000928 ; =_start_ModuleParams
	ldr r0, [r1, #0x14]
	bl MIi_UncompressBackward
	bl do_autoload
	ldr r0, _02000928 ; =_start_ModuleParams
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
	ldr r1, _0200092C ; =0x02FFFF9C
	str r0, [r1]
	ldr r1, _02000918 ; =SDK_AUTOLOAD_DTCM_START
	add r1, r1, #0x3fc0
	add r1, r1, #0x3c
	ldr r0, _02000930 ; =OS_IrqHandler
	str r0, [r1]
	bl _fp_init
	bl NitroStartUp
	bl __call_static_initializers
	ldr r1, _02000934 ; =NitroMain
	ldr lr, _02000938 ; =0xFFFF0000
	bx r1
_02000918: .word SDK_AUTOLOAD_DTCM_START
_0200091C: .word SDK_IRQ_STACKSIZE
_02000920: .word 0x05000000
_02000924: .word 0x07000000
_02000928: .word _start_ModuleParams
_0200092C: .word 0x02FFFF9C
_02000930: .word OS_IrqHandler
_02000934: .word NitroMain
_02000938: .word 0xFFFF0000
	arm_func_end _start

	arm_func_start INITi_CpuClear32
INITi_CpuClear32: ; 0x0200093C
	add r12, r1, r2
_02000940:
	cmp r1, r12
	stmltia r1!, {r0}
	blt _02000940
	bx lr
	arm_func_end INITi_CpuClear32

	arm_func_start MIi_UncompressBackward
MIi_UncompressBackward: ; 0x02000950
	cmp r0, #0
	beq _020009F8
	stmfd sp!, {r4, r5, r6, r7}
	ldmdb r0, {r1, r2}
	add r2, r0, r2
	sub r3, r0, r1, lsr #24
	bic r1, r1, #0xff000000
	sub r1, r0, r1
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
	arm_func_end MIi_UncompressBackward

	arm_func_start do_autoload
do_autoload: ; 0x020009FC
	ldr r0, _02000A70 ; =_start_ModuleParams
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
_02000A70: .word _start_ModuleParams
	arm_func_end do_autoload

	arm_func_start _start_AutoloadDoneCallback
_start_AutoloadDoneCallback:
	bx lr
	arm_func_end _start_AutoloadDoneCallback

	arm_func_start init_cp15
init_cp15: ; 0x02000A78
	mrc p15, 0, r0, c1, c0, 0
	ldr r1, _02000B30 ; =0x000F9005
	bic r0, r0, r1
	mcr p15, 0, r0, c1, c0, 0
	mov r0, #0
	mcr p15, 0, r0, c7, c5, 0
	mcr p15, 0, r0, c7, c6, 0
	mcr p15, 0, r0, c7, c10, 4
	ldr r0, _02000B34 ; =0x04000033
	mcr p15, 0, r0, c6, c0, 0
	ldr r0, _02000B38 ; =0x02000031
	mcr p15, 0, r0, c6, c1, 0
	ldr r0, _02000B3C ; =0x027FF017
	mcr p15, 0, r0, c6, c2, 0
	ldr r0, _02000B40 ; =0x08000035
	mcr p15, 0, r0, c6, c3, 0
	ldr r0, _02000B44 ; =SDK_AUTOLOAD_DTCM_START
	orr r0, r0, #0x1a
	orr r0, r0, #1
	mcr p15, 0, r0, c6, c4, 0
	ldr r0, _02000B48 ; =0x0100002F
	mcr p15, 0, r0, c6, c5, 0
	ldr r0, _02000B4C ; =0xFFFF001D
	mcr p15, 0, r0, c6, c6, 0
	ldr r0, _02000B50 ; =0x02FFF017
	mcr p15, 0, r0, c6, c7, 0
	mov r0, #0x20
	mcr p15, 0, r0, c9, c1, 1
	ldr r0, _02000B44 ; =SDK_AUTOLOAD_DTCM_START
	orr r0, r0, #0xa
	mcr p15, 0, r0, c9, c1, 0
	mov r0, #0x4a
	mcr p15, 0, r0, c2, c0, 1
	mov r0, #0x4a
	mcr p15, 0, r0, c2, c0, 0
	mov r0, #0xa
	mcr p15, 0, r0, c3, c0, 0
	ldr r0, _02000B54 ; =0x05101011
	mcr p15, 0, r0, c5, c0, 3
	ldr r0, _02000B58 ; =0x15111111
	mcr p15, 0, r0, c5, c0, 2
	mrc p15, 0, r0, c1, c0, 0
	ldr r1, _02000B5C ; =0x0005707D
	orr r0, r0, r1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
_02000B30: .word 0x000F9005
_02000B34: .word 0x04000033
_02000B38: .word 0x02000031
_02000B3C: .word 0x027FF017
_02000B40: .word 0x08000035
_02000B44: .word OS_IRQTable
_02000B48: .word 0x0100002F
_02000B4C: .word 0xFFFF001D
_02000B50: .word 0x02FFF017
_02000B54: .word 0x05101011
_02000B58: .word 0x15111111
_02000B5C: .word 0x0005707D
	arm_func_end init_cp15

	arm_func_start NitroStartUp
NitroStartUp: ; 0x02000B60
	bx lr
	arm_func_end NitroStartUp

	arm_func_start OSi_ReferSymbol
OSi_ReferSymbol: ; 0x02000B64
	bx lr
	arm_func_end OSi_ReferSymbol

	.rodata
	.public _start_BuildParams
_start_BuildParams: ; 0x02000B68
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0x00000900
	.word 0x00000001
	.word 0xDEC08133
	.word 0x3381C0DE

	.public _start_ModuleParams
_start_ModuleParams: ; 0x02000B88
	.word SDK_AUTOLOAD_LIST
	.word SDK_AUTOLOAD_LIST_END
	.word SDK_AUTOLOAD_START
	.word SDK_STATIC_BSS_START
	.word SDK_STATIC_BSS_END
	.word 0
	.word 0x05047531
	.word 0xDEC00621
	.word 0x2106C0DE

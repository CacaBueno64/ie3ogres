
    .include "asm/macros/function.inc"
	.include "libos_itcm.inc"

	.section .itcm
	arm_func_start OS_IrqHandler
OS_IrqHandler: ; 0x01ff8000
	stmdb sp!, {lr}
	mov r12, #0x4000000
	add r12, r12, #0x210
	ldr r1, [r12, #-8]
	cmp r1, #0
	ldmeqia sp!, {pc}
	ldmia r12, {r1, r2}
	ands r1, r1, r2
	ldmeqia sp!, {pc}
	mov r3, #0x80000000
_01FF8028:
	clz r0, r1
	bics r1, r1, r3, lsr r0
	bne _01FF8028
	mov r1, r3, lsr r0
	str r1, [r12, #4]
	rsbs r0, r0, #0x1f
	ldr r1, _01FF8050 ; =OS_IRQTable
	ldr r0, [r1, r0, lsl #2]
	ldr lr, _01FF8054 ; =OS_IrqHandler_ThreadSwitch
	bx r0
_01FF8050: .word OS_IRQTable
_01FF8054: .word OS_IrqHandler_ThreadSwitch
	arm_func_end OS_IrqHandler

	arm_func_start OS_IrqHandler_ThreadSwitch
OS_IrqHandler_ThreadSwitch: ; 0x01ff8058
	ldr r12, _01FF81A8 ; =OSi_IrqThreadQueue
	mov r3, #0
	ldr r12, [r12]
	mov r2, #1
	cmp r12, #0
	beq _01FF80A8
_01FF8070:
	str r2, [r12, #0x64]
_01FF8074:
	str r3, [r12, #0x78]
	str r3, [r12, #0x7c]
	ldr r0, [r12, #0x80]
	str r3, [r12, #0x80]
	mov r12, r0
	cmp r12, #0
	bne _01FF8070
	ldr r12, _01FF81A8 ; =OSi_IrqThreadQueue
	str r3, [r12]
	str r3, [r12, #4]
	ldr r12, _01FF81AC ; =OSi_ThreadInfo
	mov r1, #1
	strh r1, [r12]
_01FF80A8:
	ldr r12, _01FF81AC ; =OSi_ThreadInfo
	ldrh r1, [r12]
	cmp r1, #0
	ldreq pc, [sp], #4
	mov r1, #0
	strh r1, [r12]
	mov r3, #0xd2
	msr cpsr_c, r3
	add r2, r12, #8
	ldr r1, [r2]
_01FF80D0:
	cmp r1, #0
	ldrneh r0, [r1, #0x64]
	cmpne r0, #1
	ldrne r1, [r1, #0x68]
	bne _01FF80D0
	cmp r1, #0
	bne _01FF80F8
_01FF80EC:
	mov r3, #0x92
	msr cpsr_c, r3
	ldr pc, [sp], #4
_01FF80F8:
	ldr r0, [r12, #4]
	cmp r1, r0
	beq _01FF80EC
	ldr r3, [r12, #0xc]
	cmp r3, #0
	beq _01FF8120
	stmfd sp!, {r0, r1, r12}
	mov lr, pc
	bx r3
	ldmfd sp!, {r0, r1, r12}
_01FF8120:
	str r1, [r12, #4]
	mrs r2, spsr
	str r2, [r0, #0]!
	stmfd sp!, {r0, r1}
	add r0, r0, #0
	add r0, r0, #0x48
	ldr r1, _01FF81B0 ; =CP_SaveContext
	blx r1
	ldmfd sp!, {r0, r1}
	ldmib sp!, {r2, r3}
	stmib r0!, {r2, r3}
	ldmib sp!, {r2, r3, r12, lr}
	stmib r0, {r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, sp, lr} ^
	add r0, r0, #0x34
	stmib r0!, {lr}
	mov r3, #0xd3
	msr cpsr_c, r3
	stmib r0!, {sp}
	stmdb sp!, {r1}
	add r0, r1, #0
	add r0, r0, #0x48
	ldr r1, _01FF81B4 ; =CPi_RestoreContext
	blx r1
	ldmia sp!, {r1}
	ldr sp, [r1, #0x44]
	mov r3, #0xd2
	msr cpsr_c, r3
	ldr r2, [r1, #0]!
	msr spsr_fc, r2
	ldr lr, [r1, #0x40]
	ldmib r1, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, sp, lr} ^
	mov r0, r0 ; nop
	stmda sp!, {r0, r1, r2, r3, r12, lr}
	ldmia sp!, {pc}
_01FF81A8: .word OSi_IrqThreadQueue
_01FF81AC: .word OSi_ThreadInfo
_01FF81B0: .word CP_SaveContext
_01FF81B4: .word CPi_RestoreContext
	arm_func_end OS_IrqHandler_ThreadSwitch

	arm_func_start OSi_DoResetSystem
OSi_DoResetSystem: ; 0x02093AD8
	stmfd sp!, {r3, lr}
_01FF81BC:
	bl OS_IsResetOccurred
	cmp r0, #0
	beq _01FF81BC
	ldr r1, _01FF81E0 ; =0x04000208
	mov r0, #0
	strh r0, [r1]
	bl OSi_ReloadRomData
	bl OSi_DoBoot
	ldmfd sp!, {r3, pc}
_01FF81E0: .word 0x04000208
	arm_func_end OSi_DoResetSystem

	arm_func_start OSi_DoBoot
OSi_DoBoot: ; 0x02093B04
	mov r12, #0x4000000
	str r12, [r12, #0x208]
	ldr r1, _01FF8294 ; =OS_IRQTable
	add r1, r1, #0x3fc0
	add r1, r1, #0x3c
	mov r0, #0
	str r0, [r1]
	ldr r1, _01FF8298 ; =0x04000180
_01FF8204:
	ldrh r0, [r1]
	and r0, r0, #0xf
	cmp r0, #1
	bne _01FF8204
	mov r0, #0x100
	strh r0, [r1]
	mov r0, #0
	ldr r3, _01FF829C ; =0x02FFFF9C
	ldr r4, [r3]
	ldr r1, _01FF82A0 ; =0x02FFFD80
	mov r2, #0x80
	bl OSi_CpuClear32
	ldr r3, _01FF82A4 ; =0x02FFFD9C
	str r4, [r3]
	ldr r1, _01FF82A8 ; =0x02FFFF80
	mov r2, #0x18
	bl OSi_CpuClear32
	ldr r1, _01FF82AC ; =0x02FFFF98
	strh r0, [r1]
	ldr r1, _01FF829C ; =0x02FFFF9C
	mov r2, #0x64
	bl OSi_CpuClear32
	ldr r1, _01FF8298 ; =0x04000180
_01FF8260:
	ldrh r0, [r1]
	and r0, r0, #0xf
	cmp r0, #1
	beq _01FF8260
	mov r0, #0
	strh r0, [r1]
	ldr r3, _01FF82B0 ; =0x02FFFE00
	ldr r12, [r3, #0x24]
	mov lr, r12
	ldr r11, _01FF82A8 ; =0x02FFFF80
	ldmia r11, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10}
	mov r11, #0
	bx r12
_01FF8294: .word OS_IRQTable
_01FF8298: .word 0x04000180
_01FF829C: .word 0x02FFFF9C
_01FF82A0: .word 0x02FFFD80
_01FF82A4: .word 0x02FFFD9C
_01FF82A8: .word 0x02FFFF80
_01FF82AC: .word 0x02FFFF98
_01FF82B0: .word 0x02FFFE00
	arm_func_end OSi_DoBoot

	arm_func_start OSi_CpuClear32
OSi_CpuClear32: ; 0x02093BD4
	add r12, r1, r2
_01FF82B8:
	cmp r1, r12
	stmltia r1!, {r0}
	blt _01FF82B8
	bx lr
	arm_func_end OSi_CpuClear32

	arm_func_start OSi_ReloadRomData
OSi_ReloadRomData: ; 0x02093BE8
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r4, #0
	movne r0, #0
	ldreq r0, _01FF8380 ; =0x02FFFC2C
	ldreq r0, [r0]
	stmdb sp!, {r0}
	cmp r0, #0x8000
	ldrhs r1, _01FF8384 ; =0x02FFFE00
	movhs r2, #0x160
	blhs OSi_ReadCardRom32
	ldr r12, _01FF8384 ; =0x02FFFE00
	ldr r0, [r12, #0x20]
	ldr r1, [r12, #0x28]
	ldr r2, [r12, #0x2c]
	ldr r3, [sp]
	add r0, r0, r3
	subs r3, r0, #0x8000
	movlt r0, #0x8000
	sublt r1, r1, r3
	addlt r2, r2, r3
	cmp r2, #0
	blgt OSi_ReadCardRom32
	ldr r12, _01FF8384 ; =0x02FFFE00
	ldr r0, [r12, #0x30]
	ldr r1, [r12, #0x38]
	ldr r2, [r12, #0x3c]
	ldr r3, [sp]
	add r0, r0, r3
	cmp r2, #0
	blgt OSi_ReadCardRom32
	ldmia sp!, {r0}
	mov r1, #0
_01FF834C:
	mov r0, #0
_01FF8350:
	orr r2, r1, r0
	mcr p15, 0, r2, c7, c10, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _01FF8350
	adds r1, r1, #0x40000000
	bne _01FF834C
	mov r0, #0
	mcr p15, 0, r0, c7, c6, 0
	mcr p15, 0, r0, c7, c5, 0
	mcr p15, 0, r0, c7, c10, 4
	ldmfd sp!, {r4, pc}
_01FF8380: .word 0x02FFFC2C
_01FF8384: .word 0x02FFFE00
	arm_func_end OSi_ReloadRomData

	arm_func_start OSi_ReadCardRom32
OSi_ReadCardRom32: ; 0x02093CA8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _01FF8448 ; =0x02FFFE60
	ldr r3, _01FF844C ; =0x000001FF
	ldr r5, [r4]
	and r4, r0, r3
	bic r3, r5, #0x7000000
	ldr r5, _01FF8450 ; =0x040001A4
	orr r3, r3, #0xa1000000
	rsb r12, r4, #0
_01FF83AC:
	ldr r4, [r5]
	tst r4, #0x80000000
	bne _01FF83AC
	ldr r7, _01FF8454 ; =0x040001A1
	mov r4, #0x80
	strb r4, [r7]
	cmp r12, r2
	add r0, r0, r12
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _01FF8458 ; =0x04100010
	mov r6, #0xb7
	mov r5, #0
_01FF83DC:
	strb r6, [r7, #7]
	mov lr, r0, lsr #0x18
	strb lr, [r7, #8]
	mov lr, r0, lsr #0x10
	strb lr, [r7, #9]
	mov lr, r0, lsr #8
	strb lr, [r7, #0xa]
	strb r0, [r7, #0xb]
	strb r5, [r7, #0xc]
	strb r5, [r7, #0xd]
	strb r5, [r7, #0xe]
	str r3, [r7, #3]
_01FF840C:
	ldr r8, [r7, #3]
	tst r8, #0x800000
	beq _01FF8430
	cmp r12, #0
	ldr lr, [r4]
	blt _01FF842C
	cmp r12, r2
	strlt lr, [r1, r12]
_01FF842C:
	add r12, r12, #4
_01FF8430:
	tst r8, #0x80000000
	bne _01FF840C
	cmp r12, r2
	add r0, r0, #0x200
	blt _01FF83DC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_01FF8448: .word 0x02FFFE60
_01FF844C: .word 0x000001FF
_01FF8450: .word 0x040001A4
_01FF8454: .word 0x040001A1
_01FF8458: .word 0x04100010
	arm_func_end OSi_ReadCardRom32

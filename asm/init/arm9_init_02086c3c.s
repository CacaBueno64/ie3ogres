
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02086c3c
FUN_02086c3c: ; 0x02086C3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086C80 ; =0x0208FF14
	str r0, [r4, #0x10]
	ldr r0, _02086C84 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02086C88 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02086C80: .word unk_0208FF14
_02086C84: .word 0x00009CCD
_02086C88: .word 0x0000EA3C
	arm_func_end FUN_02086c3c

	.section .sinit, 4
unk_0208EB74:
	.word FUN_02086c3c

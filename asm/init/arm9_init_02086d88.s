
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02086d88
FUN_02086d88: ; 0x02086D88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086DD0 ; =0x0208FF74
	str r0, [r4]
	ldr r0, _02086DD4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086DD8 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086DD0: .word unk_0208FF74
_02086DD4: .word 0x00009CCD
_02086DD8: .word 0x0000EA3C
	arm_func_end FUN_02086d88

	.section .sinit, 4
unk_0208EB84:
	.word FUN_02086d88

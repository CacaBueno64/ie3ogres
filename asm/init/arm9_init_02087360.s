
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087360
FUN_02087360: ; 0x02087360
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020873A8 ; =0x020906B0
	str r0, [r4]
	ldr r0, _020873AC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020873B0 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020873A8: .word unk_020906B0
_020873AC: .word 0x00009CCD
_020873B0: .word 0x0000EA3C
	arm_func_end FUN_02087360

	.section .sinit, 4
unk_0208EBCC:
	.word FUN_02087360


	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087650
FUN_02087650: ; 0x02087650
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087698 ; =0x02090DB4
	str r0, [r4, #0x14]
	ldr r0, _0208769C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020876A0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087698: .word unk_02090DB4
_0208769C: .word 0x00009CCD
_020876A0: .word 0x0000EA3C
	arm_func_end FUN_02087650

	.section .ctor, 4
#pragma force_active on
unk_0208EBF0:
	.word FUN_02087650


	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087500
FUN_02087500: ; 0x02087500
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087548 ; =0x02090894
	str r0, [r4, #4]
	ldr r0, _0208754C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02087550 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02087548: .word unk_02090894
_0208754C: .word 0x00009CCD
_02087550: .word 0x0000EA3C
	arm_func_end FUN_02087500

	.section .sinit, 4
unk_0208EBE0:
	.word FUN_02087500

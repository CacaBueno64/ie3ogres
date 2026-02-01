
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020870d0
FUN_020870d0: ; 0x020870D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087114 ; =0x020904C0
	str r0, [r4, #0x10]
	ldr r0, _02087118 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0208711C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02087114: .word unk_020904C0
_02087118: .word 0x00009CCD
_0208711C: .word 0x0000EA3C
	arm_func_end FUN_020870d0

	.section .sinit, 4
unk_0208EBAC:
	.word FUN_020870d0

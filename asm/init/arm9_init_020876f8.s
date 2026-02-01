
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020876f8
FUN_020876f8: ; 0x020876F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087740 ; =0x020912D8
	str r0, [r4, #4]
	ldr r0, _02087744 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _02087748 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02087740: .word unk_020912D8
_02087744: .word 0x00009CCD
_02087748: .word 0x0000EA3C
	arm_func_end FUN_020876f8

	.section .sinit, 4
unk_0208EBF8:
	.word FUN_020876f8

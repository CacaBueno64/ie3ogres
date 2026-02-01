
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020875fc
FUN_020875fc: ; 0x020875FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087644 ; =0x02090B3C
	str r0, [r4, #4]
	ldr r0, _02087648 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0208764C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087644: .word unk_02090B3C
_02087648: .word 0x00009CCD
_0208764C: .word 0x0000EA3C
	arm_func_end FUN_020875fc

	.section .sinit, 4
unk_0208EBEC:
	.word FUN_020875fc

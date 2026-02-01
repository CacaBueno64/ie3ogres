
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_0208707c
FUN_0208707c: ; 0x0208707C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020870C4 ; =0x02090464
	str r0, [r4, #0x14]
	ldr r0, _020870C8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020870CC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020870C4: .word unk_02090464
_020870C8: .word 0x00009CCD
_020870CC: .word 0x0000EA3C
	arm_func_end FUN_0208707c

	.section .sinit, 4
unk_0208EBA8:
	.word FUN_0208707c

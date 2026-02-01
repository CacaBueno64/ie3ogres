
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020876a4
FUN_020876a4: ; 0x020876A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020876EC ; =0x020912B0
	str r0, [r4, #0x14]
	ldr r0, _020876F0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020876F4 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020876EC: .word unk_020912B0
_020876F0: .word 0x00009CCD
_020876F4: .word 0x0000EA3C
	arm_func_end FUN_020876a4

	.section .sinit, 4
unk_0208EBF4:
	.word FUN_020876a4

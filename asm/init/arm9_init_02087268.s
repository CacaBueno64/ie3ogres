
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087268
FUN_02087268: ; 0x02087268
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020872B0 ; =0x020905B4
	str r0, [r4]
	ldr r0, _020872B4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020872B8 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020872B0: .word unk_020905B4
_020872B4: .word 0x00009CCD
_020872B8: .word 0x0000EA3C
	arm_func_end FUN_02087268

	.section .sinit, 4
unk_0208EBC0:
	.word FUN_02087268

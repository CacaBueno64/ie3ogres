
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020875a8
FUN_020875a8: ; 0x020875A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020875F0 ; =0x020909B0
	str r0, [r4]
	ldr r0, _020875F4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020875F8 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020875F0: .word unk_020909B0
_020875F4: .word 0x00009CCD
_020875F8: .word 0x0000EA3C
	arm_func_end FUN_020875a8

	.section .sinit, 4
unk_0208EBE8:
	.word FUN_020875a8

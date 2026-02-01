
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_0208774c
FUN_0208774c: ; 0x0208774C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087794 ; =0x020938A0
	str r0, [r4]
	ldr r0, _02087798 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0208779C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087794: .word unk_020938A0
_02087798: .word 0x00009CCD
_0208779C: .word 0x0000EA3C
	arm_func_end FUN_0208774c

	.section .sinit, 4
unk_0208EBFC:
	.word FUN_0208774c

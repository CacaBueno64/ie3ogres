
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02086fd4
FUN_02086fd4: ; 0x02086FD4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208701C ; =0x020902D0
	str r0, [r4, #8]
	ldr r0, _02087020 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02087024 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0208701C: .word unk_020902D0
_02087020: .word 0x00009CCD
_02087024: .word 0x0000EA3C
	arm_func_end FUN_02086fd4

	.section .sinit, 4
unk_0208EBA0:
	.word FUN_02086fd4

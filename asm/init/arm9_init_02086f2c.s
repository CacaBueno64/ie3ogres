
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02086f2c
FUN_02086f2c: ; 0x02086F2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086F74 ; =0x020901D0
	str r0, [r4, #0x14]
	ldr r0, _02086F78 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02086F7C ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_02086F74: .word unk_020901D0
_02086F78: .word 0x00009CCD
_02086F7C: .word 0x0000EA3C
	arm_func_end FUN_02086f2c

	.section .sinit, 4
unk_0208EB98:
	.word FUN_02086f2c

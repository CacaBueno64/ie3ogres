
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087554
FUN_02087554: ; 0x02087554
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208759C ; =0x0209093C
	str r0, [r4, #8]
	ldr r0, _020875A0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020875A4 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0208759C: .word unk_0209093C
_020875A0: .word 0x00009CCD
_020875A4: .word 0x0000EA3C
	arm_func_end FUN_02087554

	.section .sinit, 4
unk_0208EBE4:
	.word FUN_02087554


	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087218
FUN_02087218: ; 0x02087218
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208725C ; =0x0209059C
	str r0, [r4, #0x10]
	ldr r0, _02087260 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02087264 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0208725C: .word unk_0209059C
_02087260: .word 0x00009CCD
_02087264: .word 0x0000EA3C
	arm_func_end FUN_02087218

	.section .sinit, 4
unk_0208EBBC:
	.word FUN_02087218


	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020873b4
FUN_020873b4: ; 0x020873B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020873FC ; =0x020906C8
	str r0, [r4, #0x14]
	ldr r0, _02087400 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02087404 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020873FC: .word unk_020906C8
_02087400: .word 0x00009CCD
_02087404: .word 0x0000EA3C
	arm_func_end FUN_020873b4

	.section .ctor, 4
#pragma force_active on
unk_0208EBD0:
	.word FUN_020873b4

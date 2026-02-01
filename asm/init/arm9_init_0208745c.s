
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_0208745c
FUN_0208745c: ; 0x0208745C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020874A4 ; =0x020907BC
	str r0, [r4]
	ldr r0, _020874A8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020874AC ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020874A4: .word unk_020907BC
_020874A8: .word 0x00009CCD
_020874AC: .word 0x0000EA3C
	arm_func_end FUN_0208745c

	.section .ctor, 4
#pragma force_active on
unk_0208EBD8:
	.word FUN_0208745c

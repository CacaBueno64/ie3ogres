.public FX_Sqrt

	.include "/macros/function.inc"

	.section .init, 4
	arm_func_start FUN_ov16_02117c38
FUN_ov16_02117c38: ; 0x02117C38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117C80 ; =0x02118500
	str r0, [r4, #0x14]
	ldr r0, _02117C84 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02117C88 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117C80: .word ov16_02118500
_02117C84: .word 0x00009CCD
_02117C88: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117c38

	.section .ctor, 4
#pragma force_active on
	.word FUN_ov16_02117c38

    .data
	.global ov16_02118500
ov16_02118500:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
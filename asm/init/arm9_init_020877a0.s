
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020877a0
FUN_020877a0: ; 0x020877A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020877E4 ; =0x020938F4
	str r0, [r4, #0x10]
	ldr r0, _020877E8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020877EC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020877E4: .word unk_020938F4
_020877E8: .word 0x00009CCD
_020877EC: .word 0x0000EA3C
	arm_func_end FUN_020877a0

	.data
	.global unk_020938F4
unk_020938F4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .ctor, 4
#pragma force_active on
unk_0208EC00:
	.word FUN_020877a0

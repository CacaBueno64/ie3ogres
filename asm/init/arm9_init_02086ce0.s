
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02086ce0
FUN_02086ce0: ; 0x02086CE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086D28 ; =0x0208FF44
	str r0, [r4, #0x14]
	ldr r0, _02086D2C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086D30 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086D28: .word unk_0208FF44
_02086D2C: .word 0x00009CCD
_02086D30: .word 0x0000EA3C
	arm_func_end FUN_02086ce0

	.section .ctor, 4
#pragma force_active on
unk_0208EB7C:
	.word FUN_02086ce0

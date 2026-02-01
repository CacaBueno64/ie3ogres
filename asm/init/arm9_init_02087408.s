
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087408
FUN_02087408: ; 0x02087408
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087450 ; =0x020906FC
	str r0, [r4]
	ldr r0, _02087454 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02087458 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02087450: .word unk_020906FC
_02087454: .word 0x00009CCD
_02087458: .word 0x0000EA3C
	arm_func_end FUN_02087408

	.section .ctor, 4
#pragma force_active on
unk_0208EBD4:
	.word FUN_02087408

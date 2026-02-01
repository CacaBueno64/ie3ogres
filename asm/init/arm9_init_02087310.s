
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087310
FUN_02087310: ; 0x02087310
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087354 ; =0x02090698
	str r0, [r4, #0x10]
	ldr r0, _02087358 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0208735C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02087354: .word unk_02090698
_02087358: .word 0x00009CCD
_0208735C: .word 0x0000EA3C
	arm_func_end FUN_02087310

	.section .ctor, 4
#pragma force_active on
unk_0208EBC8:
	.word FUN_02087310

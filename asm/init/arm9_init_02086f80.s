
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02086f80
FUN_02086f80: ; 0x02086F80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086FC8 ; =0x02090224
	str r0, [r4, #8]
	ldr r0, _02086FCC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02086FD0 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02086FC8: .word unk_02090224
_02086FCC: .word 0x00009CCD
_02086FD0: .word 0x0000EA3C
	arm_func_end FUN_02086f80

	.section .ctor, 4
#pragma force_active on
unk_0208EB9C:
	.word FUN_02086f80

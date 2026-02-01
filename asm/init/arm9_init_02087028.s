
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02087028
FUN_02087028: ; 0x02087028
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087070 ; =0x02090408
	str r0, [r4, #0x14]
	ldr r0, _02087074 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02087078 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02087070: .word unk_02090408
_02087074: .word 0x00009CCD
_02087078: .word 0x0000EA3C
	arm_func_end FUN_02087028

	.section .sinit, 4
unk_0208EBA4:
	.word FUN_02087028

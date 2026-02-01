
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020871c8
FUN_020871c8: ; 0x020871C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208720C ; =0x02090584
	str r0, [r4, #0x10]
	ldr r0, _02087210 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02087214 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0208720C: .word unk_02090584
_02087210: .word 0x00009CCD
_02087214: .word 0x0000EA3C
	arm_func_end FUN_020871c8

	.section .sinit, 4
unk_0208EBB8:
	.word FUN_020871c8

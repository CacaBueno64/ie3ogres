
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_020874b0
FUN_020874b0: ; 0x020874B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020874F4 ; =0x02090804
	str r0, [r4, #0x10]
	ldr r0, _020874F8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020874FC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020874F4: .word unk_02090804
_020874F8: .word 0x00009CCD
_020874FC: .word 0x0000EA3C
	arm_func_end FUN_020874b0

	.section .sinit, 4
unk_0208EBDC:
	.word FUN_020874b0

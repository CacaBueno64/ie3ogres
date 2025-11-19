
	.include "/macros/function.inc"

	.public FX_Sqrt
	.public ov5_020BD8C0
	.public ov5_020BD930
	.public ov5_020BD9D4
	.public ov5_020BDAB4

	.section .init, 4
	arm_func_start FUN_ov5_020bd744
FUN_ov5_020bd744: ; 0x020BD744
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BD78C ; =0x020BD8C0
	str r0, [r4, #0x14]
	ldr r0, _020BD790 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD794 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD78C: .word ov5_020BD8C0
_020BD790: .word 0x00009CCD
_020BD794: .word 0x0000EA3C
	arm_func_end FUN_ov5_020bd744

	arm_func_start FUN_ov5_020bd798
FUN_ov5_020bd798: ; 0x020BD798
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BD7E0 ; =0x020BD930
	str r0, [r4, #0x14]
	ldr r0, _020BD7E4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD7E8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD7E0: .word ov5_020BD930
_020BD7E4: .word 0x00009CCD
_020BD7E8: .word 0x0000EA3C
	arm_func_end FUN_ov5_020bd798

	arm_func_start FUN_ov5_020bd7ec
FUN_ov5_020bd7ec: ; 0x020BD7EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BD834 ; =0x020BD9D4
	str r0, [r4, #0x14]
	ldr r0, _020BD838 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD83C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD834: .word ov5_020BD9D4
_020BD838: .word 0x00009CCD
_020BD83C: .word 0x0000EA3C
	arm_func_end FUN_ov5_020bd7ec

	arm_func_start FUN_ov5_020bd840
FUN_ov5_020bd840: ; 0x020BD840
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BD888 ; =0x020BDAB4
	str r0, [r4, #0x14]
	ldr r0, _020BD88C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD890 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD888: .word ov5_020BDAB4
_020BD88C: .word 0x00009CCD
_020BD890: .word 0x0000EA3C
	arm_func_end FUN_ov5_020bd840

	.section .sinit, 4
ov5_020BD894:
	.word FUN_ov5_020bd744
	.word FUN_ov5_020bd798
	.word FUN_ov5_020bd7ec
	.word FUN_ov5_020bd840

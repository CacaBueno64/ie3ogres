
	.include "/macros/function.inc"
	.include "/include/overlay130.inc"

	.text
	arm_func_start FUN_ov130_0212aa14
FUN_ov130_0212aa14: ; 0x0212AA14
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0212AAD0 ; =0x02099F78
	mov r0, r5
	bl FUN_020417dc
	mov r0, r5
	bl FUN_020418e4
	ldr r1, _0212AAD4 ; =0x0212AB78
	mov r0, r5
	bl FUN_020417e8
	ldr r1, _0212AAD8 ; =0x0212AB84
	mov r0, r5
	bl FUN_020418b0
	ldr r4, _0212AADC ; =0x0209A1A8
	ldr r1, _0212AAE0 ; =0x0212AB8C
	strb r0, [r4]
	mov r0, r5
	bl FUN_020418b0
	strb r0, [r4, #1]
	ldr r1, _0212AAE4 ; =0x0212ABA8
	mov r0, r5
	bl FUN_020418b0
	strb r0, [r4, #2]
	mov r0, r5
	ldr r1, _0212AAE8 ; =0x0212ABB8
	bl FUN_020418b0
	str r0, [r4, #4]
	mov r0, r5
	ldr r1, _0212AAEC ; =0x0212ABCC
	bl FUN_020418b0
	str r0, [r4, #8]
	mov r0, r5
	ldr r1, _0212AAF0 ; =0x0212ABE0
	bl FUN_020418b0
	str r0, [r4, #0xc]
	mov r0, r5
	ldr r1, _0212AAF4 ; =0x0212ABF0
	bl FUN_020418b0
	str r0, [r4, #0x10]
	mov r0, r5
	ldr r1, _0212AAF8 ; =0x0212AC00
	bl FUN_020418b0
	str r0, [r4, #0x14]
	mov r0, r5
	ldr r1, _0212AAFC ; =0x0212AC14
	bl FUN_020418b0
	strh r0, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_0212AAD0: .word 0x02099F78
_0212AAD4: .word 0x0212AB78
_0212AAD8: .word 0x0212AB84
_0212AADC: .word 0x0209A1A8
_0212AAE0: .word 0x0212AB8C
_0212AAE4: .word 0x0212ABA8
_0212AAE8: .word 0x0212ABB8
_0212AAEC: .word 0x0212ABCC
_0212AAF0: .word 0x0212ABE0
_0212AAF4: .word 0x0212ABF0
_0212AAF8: .word 0x0212AC00
_0212AAFC: .word 0x0212AC14
	arm_func_end FUN_ov130_0212aa14

	arm_func_start FUN_ov130_0212ab00
FUN_ov130_0212ab00: ; 0x0212AB00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0212AB44 ; =0x0212AB60
	str r0, [r4, #0x10]
	ldr r0, _0212AB48 ; =0x00009CCD
	bl FUN_020095ac
	str r0, [r4, #0xc]
	ldr r0, _0212AB4C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0212AB44: .word 0x0212AB60
_0212AB48: .word 0x00009CCD
_0212AB4C: .word 0x0000EA3C
	arm_func_end FUN_ov130_0212ab00
	; 0x0212AB50


	.rodata
	.incbin "/incbin/overlay130_rodata.bin"

	.bss
	.space 0x0

	.include "/macros/function.inc"
	.include "/include/cameracontroller.inc"

    .text
	arm_func_start FUN_02059d9c
FUN_02059d9c: ; 0x02059D9C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _02059E38 ; =gConfig
	ldr r1, _02059E3C ; =0x0209081C
	mov r0, r4
	bl _ZN7CConfig8getParamEPKc
	cmp r0, #0
	ble _02059DE0
	ldr r1, _02059E40 ; =0x0209082C
	mov r0, r4
	bl _ZN7CConfig8getParamEPKc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02059DFC
_02059DE0:
	ldr r1, _02059E44 ; =0x0209083C
	mov r0, r4
	bl _ZN7CConfig8getParamEPKc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02059DFC:
	bl _ffix
	cmp r0, #0
	ldreq r0, _02059E48 ; =0x01001000
	mov r2, #0x1000
	str r2, [sp]
	add r1, r0, #0x1000
	str r1, [sp, #4]
	ldr r0, _02059E4C ; =gCameraCtrl
	ldr r1, _02059E50 ; =0x00000536
	ldr r0, [r0]
	ldr r3, _02059E54 ; =0x00001555
	sub r2, r2, #0xdf
	bl FUN_ov16_020f77b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02059E38: .word gConfig
_02059E3C: .word unk_0209081C
_02059E40: .word unk_0209082C
_02059E44: .word unk_0209083C
_02059E48: .word 0x01001000
_02059E4C: .word gCameraCtrl
_02059E50: .word 0x00000536
_02059E54: .word 0x00001555
	arm_func_end FUN_02059d9c

	arm_func_start FUN_02059e58
FUN_02059e58: ; 0x02059E58
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r5, _02059F80 ; =gConfig
	ldr r1, _02059F84 ; =0x0209084C
	mov r0, r5
	mov r4, #0x1000
	bl _ZN7CConfig8getParamEPKc
	cmp r0, #0
	ble _02059EA0
	ldr r1, _02059F88 ; =0x02090860
	mov r0, r5
	bl _ZN7CConfig8getParamEPKc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02059EBC
_02059EA0:
	ldr r1, _02059F8C ; =0x02090874
	mov r0, r5
	bl _ZN7CConfig8getParamEPKc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02059EBC:
	bl _ffix
	movs r5, r0
	ldr r0, _02059F80 ; =gConfig
	ldr r1, _02059F90 ; =0x02090888
	ldreq r5, _02059F94 ; =0x01001000
	bl _ZN7CConfig8getParamEPKc
	cmp r0, #0
	moveq r1, #0x800
	ldreq r2, _02059F98 ; =0x00000DDB
	beq _02059F5C
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02059F04
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02059F10
_02059F04:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02059F10:
	bl _ffix
	ldr r1, _02059F9C ; =0x0B60B60B
	mov r2, #0xb6
	umull r12, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r0, r12, #0
	adc r0, r3, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r2, _02059FA0 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
_02059F5C:
	str r4, [sp]
	add r3, r5, r4
	ldr r0, _02059FA4 ; =gCameraCtrl
	str r3, [sp, #4]
	ldr r0, [r0]
	ldr r3, _02059FA8 ; =0x00001555
	bl FUN_ov16_020f77b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_02059F80: .word gConfig
_02059F84: .word unk_0209084C
_02059F88: .word unk_02090860
_02059F8C: .word unk_02090874
_02059F90: .word unk_02090888
_02059F94: .word 0x01001000
_02059F98: .word 0x00000DDB
_02059F9C: .word 0x0B60B60B
_02059FA0: .word FX_SinCosTable_
_02059FA4: .word gCameraCtrl
_02059FA8: .word 0x00001555
	arm_func_end FUN_02059e58

	arm_func_start FUN_02059fac
FUN_02059fac: ; 0x02059FAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov16_020f77e4
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f74dc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059fac

	.data
	.global unk_02090804
unk_02090804:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0209081C
unk_0209081C:
	.asciz "FARCLIP_LENGTH"
	.balign 4, 0
	.global unk_0209082C
unk_0209082C:
	.asciz "FARCLIP_LENGTH"
	.balign 4, 0
	.global unk_0209083C
unk_0209083C:
	.asciz "FARCLIP_LENGTH"
	.balign 4, 0
	.global unk_0209084C
unk_0209084C:
	.asciz "RPG_FARCLIP_LENGTH"
	.balign 4, 0
	.global unk_02090860
unk_02090860:
	.asciz "RPG_FARCLIP_LENGTH"
	.balign 4, 0
	.global unk_02090874
unk_02090874:
	.asciz "RPG_FARCLIP_LENGTH"
	.balign 4, 0
	.global unk_02090888
unk_02090888:
	.asciz "RPG_FOVY"
	.balign 4, 0

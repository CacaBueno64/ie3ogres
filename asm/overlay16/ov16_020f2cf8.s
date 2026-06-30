
	.include "/macros/function.inc"
	.include "/include/ov16_020f2cf8.inc"

	.text
	arm_func_start FUN_ov16_020f2cf8
FUN_ov16_020f2cf8: ; 0x020F2CF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x40
	movs r4, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020F2D94 ; =gConfig
	ldr r1, _020F2D98 ; =0x021184B4
	bl _ZN7CConfig8getParamEPKc
	add r5, sp, #0
	mov r6, r0
	ldr r1, _020F2D9C ; =0x021184BC
	mov r0, r5
	mov r2, r9
	bl sprintf
	cmp r8, #0
	blt _020F2D58
	ldr r1, _020F2DA0 ; =0x021184D8
	mov r0, r5
	mov r2, r5
	mov r3, r8
	bl sprintf
_020F2D58:
	cmp r7, #0
	beq _020F2D70
	ldr r1, _020F2DA4 ; =0x0211789C
	add r0, sp, #0
	add r1, r1, r6, lsl #1
	bl strcat
_020F2D70:
	add r5, sp, #0
	ldr r1, _020F2DA8 ; =0x021184E0
	mov r0, r5
	bl strcat
	mov r0, r4
	mov r1, r5
	bl strcpy
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F2D94: .word gConfig
_020F2D98: .word ov16_021184B4
_020F2D9C: .word ov16_021184BC
_020F2DA0: .word ov16_021184D8
_020F2DA4: .word ov16_0211789C
_020F2DA8: .word ov16_021184E0
	arm_func_end FUN_ov16_020f2cf8

	arm_func_start FUN_ov16_020f2dac
FUN_ov16_020f2dac: ; 0x020F2DAC
	stmfd sp!, {r3, lr}
	ldr r0, _020F2E1C ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _020F2DE4
	beq _020F2DD0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020F2DD0:
	ldr r2, _020F2E1C ; 0x02099EF0
	mov r0, #0
	ldr r1, _020F2E20 ; =0x00000084
	str r0, [r2]
	bl FS_UnloadOverlay
_020F2DE4:
	ldr r0, _020F2E24 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020F2E28 ; =0x00000083
	bl _ZN7Overlay4LoadEm
	mov r0, #0x38
	bl _Znwm
	cmp r0, #0
	beq _020F2E10
	bl FUN_ov131_0213acc0
_020F2E10:
	ldr r1, _020F2E24 ; =0x02099F44
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_020F2E1C: .word gUtilGame
_020F2E20: .word 0x00000084
_020F2E24: .word unk_02099F44
_020F2E28: .word 0x00000083
	arm_func_end FUN_ov16_020f2dac

	arm_func_start FUN_ov16_020f2e2c
FUN_ov16_020f2e2c: ; 0x020F2E2C
	stmfd sp!, {r3, lr}
	ldr r0, _020F2E94 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _020F2E5C
	beq _020F2E48
	bl _ZdlPv
_020F2E48:
	ldr r2, _020F2E94 ; =0x02099F44
	mov r0, #0
	ldr r1, _020F2E98 ; =0x00000083
	str r0, [r2]
	bl FS_UnloadOverlay
_020F2E5C:
	ldr r0, _020F2E9C ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020F2EA0 ; =0x00000084
	bl _ZN7Overlay4LoadEm
	ldr r0, _020F2EA4 ; =0x000005C8
	bl _Znwm
	cmp r0, #0
	beq _020F2E88
	bl FUN_ov132_0213acc0
_020F2E88:
	ldr r1, _020F2E9C ; 0x02099EF0
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_020F2E94: .word unk_02099F44
_020F2E98: .word 0x00000083
_020F2E9C: .word gUtilGame
_020F2EA0: .word 0x00000084
_020F2EA4: .word 0x000005C8
	arm_func_end FUN_ov16_020f2e2c

	arm_func_start FUN_ov16_020f2ea8
FUN_ov16_020f2ea8: ; 0x020F2EA8
	mul r2, r1, r2
	cmp r2, #0
	mov r3, #0
	ble _020F2ECC
_020F2EB8:
	mov r1, r3, lsl #1
	strh r3, [r0, r1]
	add r3, r3, #1
	cmp r3, r2
	blt _020F2EB8
_020F2ECC:
	ldr r12, _020F2ED8 ; =DC_FlushRange
	mov r1, r2, lsl #1
	bx r12
_020F2ED8: .word DC_FlushRange
	arm_func_end FUN_ov16_020f2ea8

	arm_func_start FUN_ov16_020f2edc
FUN_ov16_020f2edc: ; 0x020F2EDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mul r1, r6, r5
	ldr r0, _020F2F1C ; =gAllocator
	mov r1, r1, lsl #1
	mov r2, #0x11
	mov r3, #1
	bl _ZN10CAllocator8allocateEmii
	movs r4, r0
	beq _020F2F14
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f2ea8
_020F2F14:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020F2F1C: .word gAllocator
	arm_func_end FUN_ov16_020f2edc

	arm_func_start FUN_ov16_020f2f20
FUN_ov16_020f2f20: ; 0x020F2F20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r3, [r5, #0xc]
	ldrh r2, [r5, #0xe]
	ldr r0, [r5, #4]
	mov r1, #0
	mul r2, r3, r2
	mov r4, r2, lsl #5
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, [r5, #4]
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f2f20

	arm_func_start FUN_ov16_020f2f58
FUN_ov16_020f2f58: ; 0x020F2F58
	mul r1, r0, r1
	ldr r0, _020F2F74 ; =gAllocator
	ldr r12, _020F2F78 ; =_ZN10CAllocator8allocateEmii
	mov r1, r1, lsl #5
	mov r2, #0x11
	mov r3, #1
	bx r12
_020F2F74: .word gAllocator
_020F2F78: .word _ZN10CAllocator8allocateEmii
	arm_func_end FUN_ov16_020f2f58

	arm_func_start FUN_ov16_020f2f7c
FUN_ov16_020f2f7c: ; 0x020F2F7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x14
	mul r4, r1, r2
	mov r5, r0
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f2f7c

	arm_func_start FUN_ov16_020f2fa8
FUN_ov16_020f2fa8: ; 0x020F2FA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f2edc
	str r0, [r6]
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f2f58
	str r0, [r6, #4]
	strh r5, [r6, #0xc]
	strh r4, [r6, #0xe]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020f2fa8

	arm_func_start FUN_ov16_020f2fe4
FUN_ov16_020f2fe4: ; 0x020F2FE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	cmp r8, #0
	mov r9, r0
	mov r7, #0
	cmpgt r8, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r6, _020F3050 ; =gAllocator
	mov r5, r7
	mov r4, r7
_020F300C:
	ldr r1, [r9]
	cmp r1, #0
	beq _020F3024
	mov r0, r6
	bl _ZN10CAllocator10deallocateEPv
	str r5, [r9]
_020F3024:
	ldr r1, [r9, #4]
	cmp r1, #0
	beq _020F303C
	mov r0, r6
	bl _ZN10CAllocator10deallocateEPv
	str r4, [r9, #4]
_020F303C:
	add r7, r7, #1
	cmp r7, r8
	add r9, r9, #0x14
	blt _020F300C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F3050: .word gAllocator
	arm_func_end FUN_ov16_020f2fe4

    .rodata
	.global ov16_0211789C
ov16_0211789C:
	.byte 0x46, 0x00, 0x42, 0x00, 0x00, 0x08, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov16_02117be8
FUN_ov16_02117be8: ; 0x02117BE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117C2C ; =0x021184E8
	str r0, [r4, #0x10]
	ldr r0, _02117C30 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117C34 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117C2C: .word ov16_021184E8
_02117C30: .word 0x00009CCD
_02117C34: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117be8

	.section .ctor, 4
#pragma force_active on
	.word FUN_ov16_02117be8

.data
	.global ov16_021184B4
ov16_021184B4:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global ov16_021184BC
ov16_021184BC:
	.asciz "/data_iz/logic/Practice%s"
	.balign 4, 0
	.global ov16_021184D8
ov16_021184D8:
	.asciz "%s%d"
	.balign 4, 0
	.global ov16_021184E0
ov16_021184E0:
	.asciz ".dat"
	.balign 4, 0
	.global ov16_021184E8
ov16_021184E8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/overlay100.inc"

	.text
	arm_func_start FUN_ov100_02124d00
FUN_ov100_02124d00: ; 0x02124D00
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3c
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r0, _02124D30 ; =0x021256EC
	add r1, r4, #0x3c
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124D30: .word 0x021256EC
	arm_func_end FUN_ov100_02124d00

	arm_func_start FUN_ov100_02124d34
FUN_ov100_02124d34: ; 0x02124D34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r7, [r4, #0x3c]
	cmp r7, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02124DBC ; =0x021255B4
	ldr r8, _02124DC0 ; =0x021255B4
	ldr r0, [r0]
	cmp r0, #0
	beq _02124D80
	add r6, r4, #0x3c
	mov r5, #0xc
_02124D64:
	ldr r3, [r8, #4]
	mov r2, r7
	mla r1, r3, r5, r6
	bl  FUN_ov16_020f32b4
	ldr r0, [r8, #8]!
	cmp r0, #0
	bne _02124D64
_02124D80:
	add r0, r4, #0x3c
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #1
	mov r5, #3
_02124D9C:
	mov r0, r6
	bl FUN_02001eb0
	mov r1, r5
	add r0, r4, #0x3c
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _02124D9C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02124DBC: .word 0x021255B4
_02124DC0: .word 0x021255B4
	arm_func_end FUN_ov100_02124d34

	arm_func_start FUN_ov100_02124dc4
FUN_ov100_02124dc4: ; 0x02124DC4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x3c
	mov r4, #0xc
_02124DD4:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _02124DD4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov100_02124dc4

	arm_func_start FUN_ov100_02124dec
FUN_ov100_02124dec: ; 0x02124DEC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	ldr r7, [r10, #0x48]
	mov r5, #0
	mov r11, #1
	cmp r7, #0
	mov r2, r5
	beq _02124E34
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x10]
	mov r3, r11
	add r0, r7, r0
	bl  FUN_ov16_020f1868
	mov r0, r7
	mov r1, r11
	mov r2, r11
	bl  FUN_ov16_020f1138
_02124E34:
	ldr r0, _02124FAC ; =0x021255A4
	add r8, sp, #0x20
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	mov r6, #0
	mvn r4, #0
	b _02124E98
_02124E50:
	mov r0, #0xc
	ldmia r8, {r1, r9}
	mla r0, r1, r0, r10
	ldr r7, [r0, #0x3c]
	cmp r7, #0
	beq _02124E94
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x10]
	mov r3, r9
	add r0, r7, r0
	add r2, r6, #1
	bl  FUN_ov16_020f1868
	mov r6, r0
	mov r0, r7
	mov r1, r11
	mov r2, r9
	bl  FUN_ov16_020f1138
_02124E94:
	add r8, r8, #8
_02124E98:
	ldr r0, [r8]
	cmp r0, r4
	bne _02124E50
	ldr r7, _02124FB0 ; =0x020A8440
	mov r8, #0
	mov r4, #0x800
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r4
	bl DC_FlushRange
	add r7, r10, #0x10
	mov r4, #0x20
	b _02124F38
_02124ED8:
	ldr r0, [r7]
	mov r1, r5
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r1, r11
	cmp r1, #0
	beq _02124F30
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	ldr r0, [r7]
	mov r3, r5
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r6, #1
	bl  FUN_ov16_020f1868
	str r4, [r7, #8]
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	mov r6, r0
	mul r0, r2, r1
	add r4, r4, r0, lsl #5
_02124F30:
	add r8, r8, #1
	add r7, r7, #0x14
_02124F38:
	cmp r8, #1
	blt _02124ED8
	ldr r0, [r10, #0x10]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x14]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02124FA0
	ldr r4, [r10, #0x10]
	mov r1, #1
	mov r2, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, _02124FB4 ; =0x0209F5C0
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02124FA0:
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02124FAC: .word 0x021255A4
_02124FB0: .word 0x020A8440
_02124FB4: .word 0x0209F5C0
	arm_func_end FUN_ov100_02124dec

	arm_func_start FUN_ov100_02124fb8
FUN_ov100_02124fb8: ; 0x02124FB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r5, [r6, #0x48]
	cmp r5, #0
	beq _02124FF8
	ldr r0, [r5, #0x14]
	mov r4, #0
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl FUN_020057ec
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl FUN_0200546c
_02124FF8:
	bl FUN_02004fac
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r4
	bl DC_FlushRange
	ldr r1, [r6, #0x54]
	mov r0, #1
	mov r2, r4
	bl  FUN_ov16_020f1a60
	bl FUN_0200501c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_0200501c
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov100_02124fb8

	arm_func_start FUN_ov100_02125054
FUN_ov100_02125054: ; 0x02125054
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _02125080
	add r0, r4, #0x24
	add r1, r4, #0x30
	mov r2, #0xc
	bl FUN_020219ac
	cmp r0, #0
	beq _02125098
_02125080:
	mov r3, #1
	add r0, r4, #0x24
	add r1, r4, #0x30
	mov r2, #0xc
	strb r3, [r4, #0xc]
	bl MI_CpuCopy8
_02125098:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov100_021250b8
	mov r0, #0
	strb r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov100_02125054

	arm_func_start FUN_ov100_021250b8
FUN_ov100_021250b8: ; 0x021250B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r6, _02125158 ; =0x0209F5C0
	mov r5, #1
	mov r4, #0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_020f5f64
	ldrb r0, [r7, #0x24]
	cmp r0, #0
	ldrne r2, [r7, #0x54]
	cmpne r2, #0
	beq _02125144
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r6, r2, r1
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125144:
	ldr r0, _02125158 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125158: .word 0x0209F5C0
	arm_func_end FUN_ov100_021250b8

	arm_func_start FUN_ov100_0212515c
FUN_ov100_0212515c: ; 0x0212515C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xa4
	mov r10, r0
	ldr r0, [r10, #0x28]
	mov r9, #0
	cmp r0, #0
	ldrb r0, [r10, #0x24]
	mov r1, #1
	movlt r1, r9
	cmp r0, #0
	ldr r0, [r10, #0x10]
	moveq r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x14]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r1, #0
	cmp r1, #0
	bne _021251C8
	bl FUN_02004db8
	mov r1, #0
	mov r2, #0x800
	bl FUN_02021940
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021251C8:
	bl FUN_02004db8
	add r0, r0, #0x3c0
	mov r1, #1
_021251D4:
	strh r1, [r0], #2
	add r1, r1, #1
	cmp r1, #0x100
	blt _021251D4
	ldrh r2, [r10, #0x1c]
	ldrh r1, [r10, #0x1e]
	ldr r0, [r10, #0x14]
	mul r3, r2, r1
	mov r1, r9
	mov r2, r3, lsl #5
	bl MI_CpuFill8
	add r1, sp, #0x24
	mov r0, #0x20
_02125208:
	strb r9, [r1]
	strb r9, [r1, #1]
	strb r9, [r1, #2]
	strb r9, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _02125208
	add r8, sp, #0x24
	mov r11, #0x80
	mov r0, r9
	mov r1, r8
	mov r2, r11
	bl MIi_CpuClearFast
	add r4, sp, #0x1c
	strb r9, [r4]
	strb r9, [r4, #1]
	strb r9, [r4, #2]
	strb r9, [r4, #3]
	strb r9, [r4, #4]
	strb r9, [r4, #5]
	strb r9, [r4, #6]
	strb r9, [r4, #7]
	ldr r1, _02125360 ; =0x02125714
	ldr r2, [r10, #0x28]
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	mov r1, r8
	bl  FUN_ov16_020f1f5c
	mov r7, #3
	str r7, [sp]
	mov r6, #8
	str r6, [sp, #4]
	mov r5, #1
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	mov r4, #0xa
	str r4, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r9, [sp, #0x18]
	ldrh r2, [r10, #0x1c]
	ldrh r3, [r10, #0x1e]
	ldr r1, [r10, #0x14]
	mov r0, r8
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	mov r2, r11
	mov r0, r9
	mov r1, r8
	bl MIi_CpuClearFast
	ldr r1, _02125364 ; =0x0212571C
	ldr r2, [r10, #0x2c]
	mov r0, r8
	bl FUN_02023c40
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r1, #0x20
	str r1, [sp, #0x14]
	str r9, [sp, #0x18]
	ldrh r2, [r10, #0x1c]
	ldrh r3, [r10, #0x1e]
	ldr r1, [r10, #0x14]
	mov r0, r8
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldrh r2, [r10, #0x1c]
	ldrh r1, [r10, #0x1e]
	ldr r0, [r10, #0x14]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	ldrh r3, [r10, #0x1c]
	ldrh r2, [r10, #0x1e]
	ldr r0, [r10, #0x14]
	ldr r1, [r10, #0x18]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_020059ac
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125360: .word 0x02125714
_02125364: .word 0x0212571C
	arm_func_end FUN_ov100_0212515c

	arm_func_start FUN_ov100_02125368
FUN_ov100_02125368: ; 0x02125368
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r4, #1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl  FUN_ov16_020f4894
	ldr r0, _0212540C ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5a58
	mov r1, r4
	add r0, r6, #0x10
	bl  FUN_ov16_020f2f7c
	add r0, r6, #0x10
	mov r1, #0x20
	mov r2, #8
	bl  FUN_ov16_020f2fa8
	add r0, r6, #0x10
	bl  FUN_ov16_020f2f20
	mov r5, #0
	mov r0, r5
	add r1, r6, #0x3c
	mov r4, #0x24
	mov r2, r4
	bl MIi_CpuClearFast
	sub r0, r4, #0x25
	str r5, [r6, #8]
	strb r5, [r6, #0x24]
	strb r5, [r6, #0x25]
	str r0, [r6, #0x28]
	str r0, [r6, #0x34]
	str r5, [r6, #0x2c]
	strb r5, [r6, #0x30]
	strb r5, [r6, #0x31]
	str r5, [r6, #0x38]
	mov r0, r6
	bl FUN_ov100_02124d00
	ldmfd sp!, {r4, r5, r6, pc}
_0212540C: .word 0x0209F5C0
	arm_func_end FUN_ov100_02125368

	arm_func_start FUN_ov100_02125410
FUN_ov100_02125410: ; 0x02125410
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _02125430
	cmp r1, #3
	beq _02125460
	ldmfd sp!, {r4, pc}
_02125430:
	add r0, r4, #0x3c
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov100_02124d34
	mov r0, r4
	bl FUN_ov100_02124dec
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125460:
	bl FUN_ov100_02125054
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov100_02125410

	arm_func_start FUN_ov100_02125468
FUN_ov100_02125468: ; 0x02125468
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _02125488
	cmp r1, #3
	beq _021254A8
	ldmfd sp!, {r4, pc}
_02125488:
	bl FUN_ov100_02124fb8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021254A8:
	ldr r0, _021254C0 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	mov r0, r4
	bl FUN_ov100_0212515c
	ldmfd sp!, {r4, pc}
_021254C0: .word 0x0209F5C0
	arm_func_end FUN_ov100_02125468

	arm_func_start FUN_ov100_021254c4
FUN_ov100_021254c4: ; 0x021254C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldrne r0, [r4, #0x14]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02125524
	ldrh r3, [r4, #0x1c]
	ldrh r2, [r4, #0x1e]
	ldr r0, [r4, #0x14]
	mov r1, #0
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl MI_CpuFill8
	ldrh r3, [r4, #0x1c]
	ldrh r2, [r4, #0x1e]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_020058cc
_02125524:
	add r0, r4, #0x3c
	mov r1, #3
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov100_02124dc4
	ldr r0, [r4, #4]
	mov r5, #1
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xc]
	blx r2
	mov r1, r5
	add r0, r4, #0x10
	bl  FUN_ov16_020f2fe4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov100_021254c4

	arm_func_start FUN_ov100_02125560
FUN_ov100_02125560: ; 0x02125560
	stmfd sp!, {r3, lr}
	mov r2, r0
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	add r1, r2, #0x24
	mov r2, #0xc
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov100_02125560

	arm_func_start FUN_ov100_0212558c
FUN_ov100_0212558c: ; 0x0212558C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov100_0212558c

	arm_func_start FUN_ov100_021255a0
FUN_ov100_021255a0: ; 0x021255A0
	bx lr
	arm_func_end FUN_ov100_021255a0
_021255A4:
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x68, 0x56, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x58, 0x56, 0x12, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov100_021255cc
FUN_ov100_021255cc: ; 0x021255CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02125614 ; =0x02125640
	str r0, [r4, #4]
	ldr r0, _02125618 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _0212561C ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02125614: .word 0x02125640
_02125618: .word 0x00009CCD
_0212561C: .word 0x0000EA3C
	arm_func_end FUN_ov100_021255cc

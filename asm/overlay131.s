
	.include "/macros/function.inc"
	.include "/include/overlay131.inc"

	.text
	arm_func_start FUN_ov131_0213acc0
FUN_ov131_0213acc0: ; 0x0213ACC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	ldr r0, _0213ACF4 ; =0x02099F78
	ldr r1, _0213ACF8 ; =0x0214C838
	strb r2, [r4]
	str r2, [r4, #4]
	strh r2, [r4, #8]
	strb r2, [r4, #0xa]
	bl FUN_020418b0
	strh r0, [r4, #0x34]
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0213ACF4: .word unk_02099F78
_0213ACF8: .word ov131_0214C838
	arm_func_end FUN_ov131_0213acc0

	arm_func_start FUN_ov131_0213acfc
FUN_ov131_0213acfc: ; 0x0213ACFC
	ldr r0, _0213AD08 ; =0x020A0B00
	ldr r12, _0213AD0C ; =FUN_02074748
	bx r12
_0213AD08: .word unk_020A0B00
_0213AD0C: .word FUN_02074748
	arm_func_end FUN_ov131_0213acfc

	arm_func_start FUN_ov131_0213ad10
FUN_ov131_0213ad10: ; 0x0213AD10
	ldr r0, _0213AD1C ; =0x020A0640
	ldrb r0, [r0, #0x565]
	bx lr
_0213AD1C: .word unk_020A0640
	arm_func_end FUN_ov131_0213ad10

	arm_func_start FUN_ov131_0213ad20
FUN_ov131_0213ad20: ; 0x0213AD20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _0213ADD0 ; =0x0209BA20
	mov r5, r1
	mov r0, r6
	mov r4, r2
	bl  FUN_ov16_020ee034
	movs r7, r0
	moveq r0, #0xd
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020edeb4
	add r0, r4, r0
	cmp r0, #0x63
	ble _0213AD7C
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020edeb4
	rsb r4, r0, #0x63
_0213AD7C:
	ldr r0, _0213ADD0 ; =0x0209BA20
	bl  FUN_ov16_020edf7c
	ldrh r1, [r7, #0x20]
	mul r2, r1, r4
	cmp r0, r2
	movlo r0, #0xe
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0213ADD4 ; =0x020A0640
	rsb r2, r2, #0
	ldr r1, [r0, #0x4d4]
	ldr r0, _0213ADD8 ; =0x020A0B00
	add r1, r1, r2
	bl FUN_02074538
	ldr r0, _0213ADDC ; =0x020A0700
	mov r1, r5
	ldrb r2, [r0, r5]
	add r2, r4, r2
	and r2, r2, #0xff
	bl  FUN_ov16_020eef64
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213ADD0: .word unk_0209BA20
_0213ADD4: .word unk_020A0640
_0213ADD8: .word unk_020A0B00
_0213ADDC: .word unk_020A0700
	arm_func_end FUN_ov131_0213ad20

	arm_func_start FUN_ov131_0213ade0
FUN_ov131_0213ade0: ; 0x0213ADE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r1
	mov r7, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	ldr r4, _0213AE54 ; =0x0209BA20
	mov r5, r6
_0213AE00:
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020edec4
	cmp r0, #0
	beq _0213AE40
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020ee034
	cmp r0, #0
	ldrneh r0, [r0, #0x20]
	cmpne r0, #0
	beq _0213AE40
	cmp r6, r7
	movlt r0, r6, lsl #1
	strlth r5, [r8, r0]
	add r6, r6, #1
_0213AE40:
	add r5, r5, #1
	cmp r5, #0x400
	blt _0213AE00
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213AE54: .word unk_0209BA20
	arm_func_end FUN_ov131_0213ade0

	arm_func_start FUN_ov131_0213ae58
FUN_ov131_0213ae58: ; 0x0213AE58
	ldr r3, _0213AE6C ; =0x020A1640
	mov r0, #0
	strb r1, [r3, #0x1ad]
	strb r2, [r3, #0x1ac]
	bx lr
_0213AE6C: .word unk_020A1640
	arm_func_end FUN_ov131_0213ae58

	arm_func_start FUN_ov131_0213ae70
FUN_ov131_0213ae70: ; 0x0213AE70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x54
	add r5, sp, #0x14
	mov r9, r1
	mov r7, r3
	ldr r3, _0213AF88 ; =0x0209A250
	str r5, [sp, #0x10]
	ldr r4, [r3]
	ldr r1, _0213AF8C ; =0x020A1640
	mov r10, r0
	ldrb r0, [r1, #0x1ac]
	mov r5, #0
	cmp r4, #0
	mov r8, r2
	ldr r1, _0213AF90 ; =0x0214C864
	moveq r0, r5
	beq _0213AED8
	mov r0, r0, lsl #6
	str r0, [sp]
	mov r0, #0x40
	stmib sp, {r0, r5}
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x10
	bl FUN_0202eff0
_0213AED8:
	cmp r0, #0
	bne _0213AEF8
	cmp r7, #0
	movne r0, #0x18
	strne r0, [r7]
	add sp, sp, #0x54
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213AEF8:
	mov r6, #0
	add r4, sp, #0x14
	ldr r11, _0213AF94 ; =0x0209BA20
	b _0213AF68
_0213AF08:
	mov r0, r6, lsl #1
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _0213AF64
	mov r0, r11
	bl  FUN_ov16_020ee034
	mov r1, r0
	ldrh r0, [r1, #0x20]
	cmp r0, #0
	beq _0213AF64
	ldrb r0, [r1, #0x25]
	cmp r0, #0
	beq _0213AF4C
	mov r0, r10
	bl FUN_ov131_0213b0fc
	cmp r0, #0
	beq _0213AF64
_0213AF4C:
	cmp r5, r8
	movlt r0, r6, lsl #1
	ldrlth r1, [r4, r0]
	movlt r0, r5, lsl #1
	add r5, r5, #1
	strlth r1, [r9, r0]
_0213AF64:
	add r6, r6, #1
_0213AF68:
	cmp r6, #0x20
	blt _0213AF08
	cmp r7, #0
	movne r0, #0
	strne r0, [r7]
	mov r0, r5
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213AF88: .word unk_0209A250
_0213AF8C: .word unk_020A1640
_0213AF90: .word ov131_0214C864
_0213AF94: .word unk_0209BA20
	arm_func_end FUN_ov131_0213ae70

	arm_func_start FUN_ov131_0213af98
FUN_ov131_0213af98: ; 0x0213AF98
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0213B03C ; =0x0209BA20
	mov r8, r0
	mov r0, r6
	mov r7, r1
	mov r4, r2
	bl  FUN_ov16_020ee034
	movs r5, r0
	moveq r0, #0xd
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, r7
	bl  FUN_ov16_020edec4
	cmp r0, r4
	movlt r0, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, r7
	mov r2, r4
	mov r3, #1
	bl  FUN_ov16_020ee16c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r1, [r5, #0x20]
	ldrh r0, [r8, #0x34]
	ldr r3, _0213B040 ; =0x020A0640
	ldr r2, _0213B044 ; =0x51EB851F
	mul r12, r1, r0
	mov r0, r12, lsr #0x1f
	smull r1, r12, r2, r12
	ldr r1, [r3, #0x4d4]
	add r12, r0, r12, asr #5
	mla r1, r4, r12, r1
	ldr r0, _0213B048 ; =0x020A0B00
	bl FUN_02074538
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213B03C: .word unk_0209BA20
_0213B040: .word unk_020A0640
_0213B044: .word 0x51EB851F
_0213B048: .word unk_020A0B00
	arm_func_end FUN_ov131_0213af98

	arm_func_start FUN_ov131_0213b04c
FUN_ov131_0213b04c: ; 0x0213B04C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _0213B0AC ; =0x0209BA20
	mov r7, r1
	mov r0, r5
	mov r6, r2
	bl  FUN_ov16_020ee034
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl  FUN_ov16_020edf7c
	ldrh r1, [r4, #0x20]
	mul r2, r1, r6
	cmp r0, r2
	movlo r0, #0
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r7
	bl  FUN_ov16_020edeb4
	add r0, r6, r0
	cmp r0, #0x63
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213B0AC: .word unk_0209BA20
	arm_func_end FUN_ov131_0213b04c

	arm_func_start FUN_ov131_0213b0b0
FUN_ov131_0213b0b0: ; 0x0213B0B0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0213B0F8 ; =0x0209BA20
	mov r6, r1
	mov r0, r4
	mov r5, r2
	bl  FUN_ov16_020ee034
	cmp r0, #0
	ldrneh r0, [r0, #0x20]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	bl  FUN_ov16_020edec4
	cmp r0, r5
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0213B0F8: .word unk_0209BA20
	arm_func_end FUN_ov131_0213b0b0

	arm_func_start FUN_ov131_0213b0fc
FUN_ov131_0213b0fc: ; 0x0213B0FC
	ldrb r0, [r1, #0x25]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	cmp r0, #1
	blo _0213B140
	cmp r0, #0x65
	bhs _0213B140
	ldr r1, _0213B178 ; =0x020A1140
	sub r2, r0, #1
	mov r0, #1
	mov r3, r0, lsl r2
	ldrh r2, [r1, #0x9c]
	mov r1, r3, lsl #0x10
	tst r2, r1, lsr #16
	moveq r0, #0
	bx lr
_0213B140:
	ldrb r0, [r1, #0x25]
	cmp r0, #0x65
	blo _0213B170
	ldr r1, _0213B17C ; =0x020A0640
	sub r2, r0, #0x65
	mov r0, #1
	mov r2, r0, lsl r2
	ldrb r1, [r1, #0xba0]
	and r2, r2, #0xff
	tst r1, r2
	moveq r0, #0
	bx lr
_0213B170:
	mov r0, #1
	bx lr
_0213B178: .word unk_020A1140
_0213B17C: .word unk_020A0640
	arm_func_end FUN_ov131_0213b0fc

	arm_func_start FUN_ov131_0213b180
FUN_ov131_0213b180: ; 0x0213B180
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r10, r0
	cmp r1, #1
	mov r4, #0
	blt _0213B1A0
	cmp r1, #0x64
	ble _0213B1AC
_0213B1A0:
	add sp, sp, #0x40
	mov r0, #0xb
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B1AC:
	mvn r6, #0
	mov r7, r4
	ldr r3, _0213B324 ; =0x0214C514
	b _0213B1E4
_0213B1BC:
	add r5, r7, r7, lsl #1
	add r2, r3, r5
	ldrb r0, [r2, #1]
	cmp r0, r1
	bgt _0213B1E0
	ldrb r0, [r2, #2]
	cmp r0, r1
	ldrgeb r6, [r3, r5]
	bge _0213B1EC
_0213B1E0:
	add r7, r7, #1
_0213B1E4:
	cmp r7, #0xa
	blt _0213B1BC
_0213B1EC:
	cmn r6, #1
	addeq sp, sp, #0x40
	moveq r0, #0xb
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B1FC:
	add r8, sp, #0
	mov r7, #0
	mov r0, r8
	mov r1, r7
	mov r2, #0x40
	bl MI_CpuFill8
	mov r9, r7
	ldr r5, _0213B328 ; =0x0209BA20
	b _0213B244
_0213B220:
	mov r0, r5
	mov r1, r9
	bl  FUN_ov16_020ee034
	ldrb r0, [r0, #0x28]
	cmp r0, r6
	moveq r0, r7, lsl #1
	streqh r9, [r8, r0]
	addeq r7, r7, #1
	add r9, r9, #1
_0213B244:
	cmp r9, #0x400
	blt _0213B220
	mov r8, r7
	ldr r11, _0213B32C ; =0x020A0700
	mov r9, #0
	add r5, sp, #0
	b _0213B2AC
_0213B260:
	mov r0, r9, lsl #1
	ldrh r1, [r5, r0]
	ldrb r0, [r11, r1]
	cmp r0, #0
	bne _0213B2A8
	mov r0, r10
	mov r2, #1
	bl FUN_ov131_0213b4e0
	cmp r0, #0
	bne _0213B2A8
	mov r0, r9, lsl #1
	ldrh r1, [r5, r0]
	mov r0, r10
	bl FUN_ov131_0213b594
	cmp r0, #0
	moveq r0, r9, lsl #1
	streqh r4, [r5, r0]
	subeq r7, r7, #1
_0213B2A8:
	add r9, r9, #1
_0213B2AC:
	cmp r9, r8
	blt _0213B260
	cmp r7, #1
	bge _0213B2D4
	cmp r6, #1
	addle sp, sp, #0x40
	movle r0, #0xb
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r6, r6, #1
	b _0213B1FC
_0213B2D4:
	bl FUN_02023c6c
	mov r1, r7
	bl _s32_div_f
	mov r3, #0
	add r2, sp, #0
	b _0213B310
_0213B2EC:
	mov r0, r3, lsl #1
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _0213B30C
	cmp r1, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r1, r1, #1
_0213B30C:
	add r3, r3, #1
_0213B310:
	cmp r3, #0x20
	blt _0213B2EC
	mov r0, #0xb
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B324: .word 0x0214C514
_0213B328: .word unk_0209BA20
_0213B32C: .word unk_020A0700
	arm_func_end FUN_ov131_0213b180

	arm_func_start FUN_ov131_0213b330
FUN_ov131_0213b330: ; 0x0213B330
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r10, r0
	cmp r1, #1
	blt _0213B34C
	cmp r1, #0x64
	ble _0213B358
_0213B34C:
	add sp, sp, #0x40
	mov r0, #0x15
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B358:
	mvn r5, #0
	mov r6, #0xa
	ldr r3, _0213B4D4 ; =0x0214C514
	b _0213B390
_0213B368:
	add r4, r6, r6, lsl #1
	add r2, r3, r4
	ldrb r0, [r2, #1]
	cmp r0, r1
	bgt _0213B38C
	ldrb r0, [r2, #2]
	cmp r0, r1
	ldrgeb r5, [r3, r4]
	bge _0213B398
_0213B38C:
	add r6, r6, #1
_0213B390:
	cmp r6, #0x14
	blt _0213B368
_0213B398:
	cmn r5, #1
	addeq sp, sp, #0x40
	moveq r0, #0x15
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B3A8:
	add r7, sp, #0
	mov r6, #0
	mov r0, r7
	mov r1, r6
	mov r2, #0x40
	bl MI_CpuFill8
	mov r8, r6
	ldr r4, _0213B4D8 ; =0x0209BA20
	b _0213B3F0
_0213B3CC:
	mov r0, r4
	mov r1, r8
	bl  FUN_ov16_020ee034
	ldrb r0, [r0, #0x28]
	cmp r0, r5
	moveq r0, r6, lsl #1
	streqh r8, [r7, r0]
	addeq r6, r6, #1
	add r8, r8, #1
_0213B3F0:
	cmp r8, #0x400
	blt _0213B3CC
	mov r9, #0
	mov r7, r6
	ldr r8, _0213B4DC ; =0x020A0700
	mov r11, r9
	add r4, sp, #0
	b _0213B45C
_0213B410:
	mov r0, r9, lsl #1
	ldrh r1, [r4, r0]
	ldrb r0, [r8, r1]
	cmp r0, #0
	bne _0213B458
	mov r0, r10
	mov r2, #1
	bl FUN_ov131_0213b4e0
	cmp r0, #0
	bne _0213B458
	mov r0, r9, lsl #1
	ldrh r1, [r4, r0]
	mov r0, r10
	bl FUN_ov131_0213b594
	cmp r0, #0
	moveq r0, r9, lsl #1
	streqh r11, [r4, r0]
	subeq r6, r6, #1
_0213B458:
	add r9, r9, #1
_0213B45C:
	cmp r9, r7
	blt _0213B410
	cmp r6, #1
	bge _0213B484
	cmp r5, #0x65
	addle sp, sp, #0x40
	movle r0, #0x15
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r5, r5, #1
	b _0213B3A8
_0213B484:
	bl FUN_02023c6c
	mov r1, r6
	bl _s32_div_f
	mov r3, #0
	add r2, sp, #0
	b _0213B4C0
_0213B49C:
	mov r0, r3, lsl #1
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _0213B4BC
	cmp r1, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r1, r1, #1
_0213B4BC:
	add r3, r3, #1
_0213B4C0:
	cmp r3, #0x20
	blt _0213B49C
	mov r0, #0x15
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B4D4: .word 0x0214C514
_0213B4D8: .word unk_0209BA20
_0213B4DC: .word unk_020A0700
	arm_func_end FUN_ov131_0213b330

	arm_func_start FUN_ov131_0213b4e0
FUN_ov131_0213b4e0: ; 0x0213B4E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r0, _0213B590 ; =0x0209BA20
	mov r10, r2
	mov r5, #0
	bl  FUN_ov16_020ee034
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r1, [r0, #0x1d]
	cmp r1, #0xf
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl  FUN_ov16_020eef40
	mov r6, r0
	mov r7, r5
	mov r4, #4
_0213B520:
	cmp r7, #0x10
	blt _0213B530
	cmp r7, #0x20
	ble _0213B57C
_0213B530:
	mov r0, r7
	bl  FUN_ov16_020efa80
	movs r8, r0
	beq _0213B57C
	mov r9, r5
	cmp r10, #0
	movne r9, r4
	cmp r9, #5
	bgt _0213B57C
_0213B554:
	mov r0, r8
	bl FUN_0206dcd4
	add r0, r0, r9, lsl #1
	ldrh r0, [r0, #0x38]
	cmp r6, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r9, r9, #1
	cmp r9, #5
	ble _0213B554
_0213B57C:
	add r7, r7, #1
	cmp r7, #0x64
	blt _0213B520
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0213B590: .word unk_0209BA20
	arm_func_end FUN_ov131_0213b4e0

	arm_func_start FUN_ov131_0213b594
FUN_ov131_0213b594: ; 0x0213B594
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _0213B634 ; =0x0209BA20
	mov r4, r1
	mov r5, #0
	bl  FUN_ov16_020ee034
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x16
	blo _0213B5C8
	cmp r0, #0x1e
	bls _0213B5D0
_0213B5C8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213B5D0:
	mov r6, r5
_0213B5D4:
	cmp r6, #0x10
	blt _0213B5E4
	cmp r6, #0x20
	ble _0213B620
_0213B5E4:
	mov r0, r6
	bl  FUN_ov16_020efa80
	movs r7, r0
	beq _0213B620
	mov r8, r5
_0213B5F8:
	mov r0, r7
	bl FUN_0206dcd4
	add r0, r0, r8, lsl #1
	ldrh r0, [r0, #0x10]
	cmp r4, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r8, r8, #1
	cmp r8, #4
	blt _0213B5F8
_0213B620:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0213B5D4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213B634: .word unk_0209BA20
	arm_func_end FUN_ov131_0213b594

	arm_func_start FUN_ov131_0213b638
FUN_ov131_0213b638: ; 0x0213B638
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r5, r2
	cmpne r5, #0
	mov r4, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	bl MI_CpuFill8
	mov r7, r4
	mov r3, #1
	mov r2, r4
	ldr r1, _0213B6D4 ; =0x020A0640
	b _0213B6C4
_0213B674:
	mov r12, r2, lsl r7
	rsb r0, r7, #0x20
	orr r12, r12, r3, lsr r0
	ldr lr, [r1, #0x4f4]
	sub r0, r7, #0x20
	orr r12, r12, r3, lsl r0
	ldr r0, [r1, #0x4f8]
	and lr, lr, r3, lsl r7
	and r0, r0, r12
	cmp r0, #0
	cmpeq lr, #0
	movne r0, r3
	moveq r0, r2
	cmp r0, #0
	beq _0213B6C0
	cmp r4, r5
	bge _0213B6CC
	strb r7, [r6, r4]
	add r4, r4, #1
_0213B6C0:
	add r7, r7, #1
_0213B6C4:
	cmp r7, #0x40
	blt _0213B674
_0213B6CC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213B6D4: .word unk_020A0640
	arm_func_end FUN_ov131_0213b638

	arm_func_start FUN_ov131_0213b6d8
FUN_ov131_0213b6d8: ; 0x0213B6D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r5, r2
	cmpne r5, #0
	mov r4, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	bl MI_CpuFill8
	mov r7, r4
	mov r3, #1
	mov r2, r4
	ldr r1, _0213B774 ; =0x020A0640
	b _0213B764
_0213B714:
	mov r12, r2, lsl r7
	rsb r0, r7, #0x20
	orr r12, r12, r3, lsr r0
	ldr lr, [r1, #0x4fc]
	sub r0, r7, #0x20
	orr r12, r12, r3, lsl r0
	ldr r0, [r1, #0x500]
	and lr, lr, r3, lsl r7
	and r0, r0, r12
	cmp r0, #0
	cmpeq lr, #0
	movne r0, r3
	moveq r0, r2
	cmp r0, #0
	beq _0213B760
	cmp r4, r5
	bge _0213B76C
	strb r7, [r6, r4]
	add r4, r4, #1
_0213B760:
	add r7, r7, #1
_0213B764:
	cmp r7, #0x40
	blt _0213B714
_0213B76C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213B774: .word unk_020A0640
	arm_func_end FUN_ov131_0213b6d8

	arm_func_start FUN_ov131_0213b778
FUN_ov131_0213b778: ; 0x0213B778
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r3, _0213B7B8 ; =0x020A0C3C
	ldrb r12, [r3, #0x20]
	str r12, [sp]
	ldrb r12, [r3, #0x22]
	str r12, [sp, #4]
	ldrb r12, [r3, #0x21]
	str r12, [sp, #8]
	ldrb r12, [r3, #0x25]
	str r12, [sp, #0xc]
	ldrb r12, [r3, #0x23]
	str r12, [sp, #0x10]
	bl FUN_ov131_0213b7bc
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0213B7B8: .word unk_020A0C3C
	arm_func_end FUN_ov131_0213b778

	arm_func_start FUN_ov131_0213b7bc
FUN_ov131_0213b7bc: ; 0x0213B7BC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14c
	mov r10, r0
	mov r4, #0
	ldr r0, _0213BE84 ; =0x0209BA20
	str r4, [sp, #0x20]
	mov r11, r1
	str r2, [sp]
	mov r9, r3
	bl FUN_0204eac8
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x2c]
	sub r1, r1, #1
	mov r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	cmp r11, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldrne r0, [sp]
	cmpne r0, #0
	addle sp, sp, #0x14c
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov131_02140dec
	str r0, [sp, #0x24]
	ldr r2, [sp]
	ldr r1, [sp, #0x20]
	mov r0, r11
	mov r2, r2, lsl #3
	bl MI_CpuFill8
	ldr r0, [sp, #0x20]
	cmp r9, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x28]
	ldrnesb r0, [r9]
	cmpne r0, #0
	beq _0213B894
	ldrb r2, [r9, #1]
	and r1, r0, #0xff
	mov r0, r9
	add r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x28]
	bl STD_GetStringLength
	str r0, [sp, #0x30]
_0213B894:
	ldrh r1, [r10, #8]
	ldr r0, _0213BE88 ; =0x0209A250
	mov r1, r1, lsl #3
	bl FUN_0202de44
	movs r5, r0
	addeq sp, sp, #0x14c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r1, [r10, #8]
	mov r6, #0
	mov r0, r6
	mov r2, r1, lsl #3
	mov r1, r5
	bl MIi_CpuClear32
	ldr r0, [sp, #0x170]
	ldr r4, [r10, #4]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x174]
	mov r7, r6
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x178]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x180]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x17c]
	str r0, [sp, #0x44]
	ldr r0, _0213BE8C ; =0x0000028E
	add r0, r0, #0x19c
	str r0, [sp, #0x48]
	b _0213BD10
_0213B90C:
	ldrh r0, [r4, #0x24]
	mov r8, #0
	cmp r0, #0
	beq _0213BD08
	ldrb r0, [r4, #0x2a]
	cmp r0, #1
	bne _0213BD08
	ldrb r0, [r4, #0x2b]
	tst r0, #4
	movne r0, #1
	moveq r0, r8
	cmp r0, #0
	ldrne r0, [sp, #0x1c]
	addne r0, r0, #1
	strne r0, [sp, #0x1c]
	bne _0213B96C
	ldrb r0, [r4, #0x2b]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrne r0, [sp, #0x18]
	addne r0, r0, #1
	strne r0, [sp, #0x18]
_0213B96C:
	ldr r0, _0213BE90 ; =0x0209A11C
	ldrh r1, [r4, #0x24]
	ldr r0, [r0]
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	bne _0213BD08
	ldrb r1, [r4, #0x26]
	cmp r1, #0xc9
	cmpne r1, #0xff
	beq _0213BD08
	mov r0, r10
	bl FUN_ov131_0213beb0
	str r0, [sp, #4]
	cmp r0, #1
	beq _0213BD08
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ldrb r0, [r4, #0x26]
	beq _0213BB84
	cmp r0, #0xd4
	bne _0213BA10
	ldrh r1, [r4, #0x24]
	ldr r0, _0213BE94 ; =0x00000FFF
	and r1, r1, r0
	ldr r0, _0213BE8C ; =0x0000028E
	cmp r1, r0
	cmpne r1, #0x3f4
	ldrne r0, [sp, #0x48]
	cmpne r1, r0
	cmpne r1, #0x3a8
	add r0, sp, #0x4c
	bne _0213B9F8
	ldr r1, _0213BE98 ; =0x0214C8DC
	b _0213B9FC
_0213B9F8:
	ldr r1, _0213BE9C ; =0x0214C8E8
_0213B9FC:
	bl STD_CopyString
	mov r0, r9
	add r1, sp, #0x4c
	bl STD_CompareString
	b _0213BA94
_0213BA10:
	cmp r0, #0xd7
	bne _0213BA30
	ldrh r1, [r4, #0x24]
	mov r0, r10
	mov r2, r9
	bl FUN_ov131_0213bef0
	cmp r0, #1
	b _0213BA98
_0213BA30:
	ldrh r1, [r4, #0x10]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _0213BA58
	ldr r2, [sp, #0x30]
	mov r0, r9
	add r1, r4, #0x10
	bl STD_CompareNString
	cmp r0, #0
	moveq r8, #1
_0213BA58:
	cmp r8, #0
	bne _0213BA9C
	ldrb r0, [r4, #0x2b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldreqh r1, [r4]
	ldreq r0, [sp, #0x28]
	cmpeq r0, r1
	bne _0213BA9C
	ldr r2, [sp, #0x30]
	mov r0, r9
	mov r1, r4
	bl STD_CompareNString
_0213BA94:
	cmp r0, #0
_0213BA98:
	moveq r8, #1
_0213BA9C:
	cmp r8, #0
	beq _0213BD08
	ldrb r0, [r4, #0x2b]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0213BAD4
	ldr r0, _0213BEA0 ; =0x020A11DC
	ldr r1, [sp, #0x1c]
	bl FUN_ov131_02142694
	cmp r0, #0
	beq _0213BD08
	b _0213BBEC
_0213BAD4:
	ldrb r0, [r4, #0x2b]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0213BB04
	ldr r0, _0213BEA0 ; =0x020A11DC
	ldr r1, [sp, #0x18]
	bl FUN_ov131_021426bc
	cmp r0, #0
	beq _0213BD08
	b _0213BBEC
_0213BB04:
	ldrb r1, [r4, #0x26]
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	bge _0213BB70
	cmp r1, #0xd4
	cmpne r1, #0xd7
	beq _0213BB70
	cmp r1, #0xdd
	blo _0213BB30
	cmp r1, #0xe6
	bls _0213BB70
_0213BB30:
	ldr r0, [sp, #4]
	cmp r0, #2
	beq _0213BB70
	ldrb r1, [r4, #0x26]
	cmp r1, #0xca
	blo _0213BB5C
	ldr r0, _0213BEA4 ; =0x020A0640
	ldrb r0, [r0, #0x50a]
	add r0, r0, #0xc8
	cmp r1, r0
	ble _0213BB70
_0213BB5C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x14]
	b _0213BD08
_0213BB70:
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x10]
	b _0213BBEC
_0213BB84:
	cmp r0, #0xdd
	blo _0213BB94
	cmp r0, #0xe6
	bls _0213BBB0
_0213BB94:
	ldr r0, [sp, #4]
	cmp r0, #2
	beq _0213BBB0
	ldrb r1, [r4, #0x26]
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	blt _0213BD08
_0213BBB0:
	ldrb r0, [r4, #0x26]
	cmp r0, #0xca
	blo _0213BBC4
	cmp r0, #0xd4
	bls _0213BD08
_0213BBC4:
	ldrb r0, [r4, #0x26]
	cmp r0, #0xd7
	beq _0213BD08
	ldrb r0, [r4, #0x2b]
	tst r0, #0xc
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0213BD08
	mov r8, #1
_0213BBEC:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0213BC04
	ldrb r1, [r4, #0x27]
	cmp r1, r0
	bne _0213BD08
_0213BC04:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _0213BC1C
	ldrb r1, [r4, #0x28]
	cmp r1, r0
	bne _0213BD08
_0213BC1C:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0213BC34
	ldrb r1, [r4, #0x29]
	cmp r1, r0
	bne _0213BD08
_0213BC34:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0213BC4C
	ldrb r1, [r4, #0x2a]
	cmp r1, r0
	bne _0213BD08
_0213BC4C:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0213BC64
	ldrb r1, [r4, #0x23]
	cmp r1, r0
	bne _0213BD08
_0213BC64:
	ldrh r1, [r4, #0x24]
	ldr r0, _0213BE84 ; =0x0209BA20
	bl FUN_0204bc4c
	mov r1, r0
	ldr r0, _0213BEA8 ; =0x0209C094
	bl FUN_0205079c
	cmp r0, #0
	bne _0213BD08
	ldrb r0, [r4, #0x26]
	cmp r0, #0xdd
	blo _0213BCCC
	cmp r0, #0xe6
	bhi _0213BCCC
	ldrh r1, [r4, #0x24]
	ldr r0, _0213BE84 ; =0x0209BA20
	bl FUN_0204bc4c
	mov r1, r0
	ldr r0, _0213BEAC ; =0x020A0C68
	bl FUN_02050820
	cmp r0, #0
	bne _0213BCCC
	ldr r0, [sp, #8]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
	b _0213BD08
_0213BCCC:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	cmp r8, #0
	str r0, [sp, #8]
	beq _0213BD08
	ldrh r2, [r4, #0x24]
	mov r0, r6, lsl #3
	add r1, r5, r6, lsl #3
	strh r2, [r5, r0]
	ldrb r0, [r4, #0x28]
	add r6, r6, #1
	strb r0, [r1, #2]
	ldrb r0, [r4, #0x26]
	strb r0, [r1, #4]
_0213BD08:
	add r7, r7, #1
	add r4, r4, #0x2c
_0213BD10:
	ldrh r0, [r10, #8]
	cmp r7, r0
	blt _0213B90C
	ldr r0, [sp]
	mov r7, #0
	cmp r6, r0
	movle r0, #1
	strle r6, [sp]
	strle r0, [sp, #0x20]
	b _0213BDB4
_0213BD38:
	cmp r6, #0
	beq _0213BDC0
	mov r0, r6
	bl  FUN_ov16_020ef8d4
	mov r1, r0, lsl #3
	ldrh r3, [r5, r1]
	mov r2, r7, lsl #3
	add r1, r5, r0, lsl #3
	strh r3, [r11, r2]
	add r2, r0, #1
	ldrb r4, [r1, #2]
	add r0, r11, r7, lsl #3
	sub r3, r6, r2
	strb r4, [r0, #2]
	cmp r3, #0
	ldrb r4, [r1, #3]
	strb r4, [r0, #3]
	ldrb r4, [r1, #4]
	strb r4, [r0, #4]
	ldrb r8, [r1, #5]
	ldrb r4, [r1, #6]
	strb r8, [r0, #5]
	strb r4, [r0, #6]
	ldrb r4, [r1, #7]
	strb r4, [r0, #7]
	ble _0213BDAC
	add r0, r5, r2, lsl #3
	mov r2, r3, lsl #3
	bl FUN_02040dc8
_0213BDAC:
	sub r6, r6, #1
	add r7, r7, #1
_0213BDB4:
	ldr r0, [sp]
	cmp r7, r0
	blt _0213BD38
_0213BDC0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0213BE08
	mov r7, #0
	ldr r4, _0213BE84 ; =0x0209BA20
	b _0213BDF8
_0213BDD8:
	mov r0, r7, lsl #3
	ldrh r1, [r11, r0]
	mov r0, r4
	bl FUN_0204bc4c
	mov r1, r0
	ldr r0, _0213BEA8 ; =0x0209C094
	bl FUN_02050740
	add r7, r7, #1
_0213BDF8:
	ldr r0, [sp]
	cmp r7, r0
	blt _0213BDD8
	b _0213BE10
_0213BE08:
	mov r0, r10
	bl FUN_ov131_0213c2a8
_0213BE10:
	ldr r0, [sp, #0x24]
	mov r4, #1
	cmp r0, #0
	beq _0213BE28
	ldr r0, _0213BE84 ; =0x0209BA20
	bl FUN_0204ec3c
_0213BE28:
	ldr r0, _0213BE88 ; =0x0209A250
	mov r1, r5
	bl FUN_0202e1c0
	ldr r0, _0213BEA4 ; =0x020A0640
	strb r4, [r0, #0x620]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	ldreq r0, [sp]
	addeq sp, sp, #0x14c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x14]
	cmp r0, #0
	addne sp, sp, #0x14c
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	mvnne r0, #1
	moveq r0, #0
	add sp, sp, #0x14c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213BE84: .word unk_0209BA20
_0213BE88: .word unk_0209A250
_0213BE8C: .word 0x0000028E
_0213BE90: .word unk_0209A11C
_0213BE94: .word 0x00000FFF
_0213BE98: .word ov131_0214C8DC
_0213BE9C: .word ov131_0214C8E8
_0213BEA0: .word unk_020A11DC
_0213BEA4: .word unk_020A0640
_0213BEA8: .word unk_0209C094
_0213BEAC: .word unk_020A0C68
	arm_func_end FUN_ov131_0213b7bc

	arm_func_start FUN_ov131_0213beb0
FUN_ov131_0213beb0: ; 0x0213BEB0
	cmp r1, #0xe7
	blt _0213BEE4
	cmp r1, #0xf0
	bgt _0213BEE4
	ldr r0, _0213BEEC ; =0x020A1240
	sub r1, r1, #0xe7
	ldrh r2, [r0, #0x72]
	mov r0, #1
	mov r1, r0, lsl r1
	mov r2, r2, lsl #0x13
	tst r1, r2, lsr #22
	movne r0, #2
	bx lr
_0213BEE4:
	mov r0, #0
	bx lr
_0213BEEC: .word unk_020A1240
	arm_func_end FUN_ov131_0213beb0

	arm_func_start FUN_ov131_0213bef0
FUN_ov131_0213bef0: ; 0x0213BEF0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r0, _0213BF68 ; =0x0214C8F0
	mov r6, r1
	add r1, sp, #0
	mov r7, r2
	mov r4, #0
	bl  FUN_ov16_020f3054
	ldr r5, [sp]
	ldrh r1, [r5]
	cmp r1, #0
	beq _0213BF54
	ldr r0, _0213BF6C ; =0x00000FFF
	and r6, r6, r0
_0213BF28:
	cmp r1, r6
	bne _0213BF48
	mov r0, r7
	add r1, r5, #2
	bl STD_CompareString
	cmp r0, #0
	moveq r4, #1
	beq _0213BF54
_0213BF48:
	ldrh r1, [r5, #0x16]!
	cmp r1, #0
	bne _0213BF28
_0213BF54:
	add r0, sp, #0
	bl  FUN_ov16_020f33fc
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213BF68: .word ov131_0214C8F0
_0213BF6C: .word 0x00000FFF
	arm_func_end FUN_ov131_0213bef0

	arm_func_start FUN_ov131_0213bf70
FUN_ov131_0213bf70: ; 0x0213BF70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1dc
	ldr r11, _0213C1F8 ; =0x0209BA20
	mov r10, r0
	mov r9, r1
	mov r0, r11
	mov r8, r2
	str r3, [sp]
	mov r6, #0
	bl FUN_0204eac8
	cmp r9, #0
	cmpne r8, #0
	addle sp, sp, #0x1dc
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov131_02140dec
	str r0, [sp, #4]
	mov r0, r9
	mov r1, r6
	mov r2, r8, lsl #3
	bl MI_CpuFill8
	ldrh r1, [r10, #8]
	ldr r0, _0213C1FC ; =0x0209A250
	mov r1, r1, lsl #3
	bl FUN_0202de44
	movs r5, r0
	addeq sp, sp, #0x1dc
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r2, [r10, #8]
	mov r0, r6
	mov r1, r5
	mov r2, r2, lsl #3
	bl MIi_CpuClear32
	mov r7, r6
	ldr r4, [r10, #4]
	b _0213C0D8
_0213C008:
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	ldrneb r1, [r4, #0x26]
	cmpne r1, #0xff
	beq _0213C0D0
	ldrb r2, [r4, #0x2a]
	ldr r0, [sp]
	cmp r0, r2
	bne _0213C0D0
	mov r0, r10
	bl FUN_ov131_0213beb0
	cmp r0, #1
	beq _0213C0D0
	cmp r0, #0
	bne _0213C050
	ldrb r0, [r4, #0x26]
	cmp r0, #0xa
	bne _0213C0D0
_0213C050:
	ldr r0, _0213C200 ; =0x020AF81C
	mov r1, #0xf
	bl FUN_02044658
	ldrh r1, [r4, #0x24]
	ldr r0, [r0]
	cmp r1, r0
	beq _0213C0D0
	ldrb r1, [r4, #0x2a]
	mov r0, r11
	add r2, sp, #0x70
	bl FUN_0207039c
	ldrh r1, [r4, #0x24]
	mov r0, r11
	bl FUN_0204bc4c
	mov r1, r0
	ldr r0, _0213C204 ; =0x0209C094
	bl FUN_0205079c
	cmp r0, #0
	bne _0213C0D0
	ldrh r1, [r4, #0x24]
	mov r0, r6, lsl #3
	add r3, r5, r6, lsl #3
	strh r1, [r5, r0]
	ldrb r1, [r4, #0x28]
	mov r0, r11
	add r2, sp, #8
	strb r1, [r3, #2]
	ldrb r1, [r4, #0x26]
	strb r1, [r3, #4]
	ldrh r1, [r4, #0x24]
	bl FUN_0204bd64
	add r6, r6, #1
_0213C0D0:
	add r7, r7, #1
	add r4, r4, #0x2c
_0213C0D8:
	ldrh r0, [r10, #8]
	cmp r7, r0
	blt _0213C008
	cmp r6, r8
	movle r8, r6
	mov r7, #0
	b _0213C170
_0213C0F4:
	cmp r6, #0
	beq _0213C178
	mov r0, r6
	bl  FUN_ov16_020ef8d4
	mov r1, r0, lsl #3
	ldrh r3, [r5, r1]
	mov r2, r7, lsl #3
	add r1, r5, r0, lsl #3
	strh r3, [r9, r2]
	ldrb r3, [r1, #2]
	add r2, r9, r7, lsl #3
	add r0, r0, #1
	strb r3, [r2, #2]
	ldrb r4, [r1, #3]
	sub r3, r6, r0
	cmp r3, #0
	strb r4, [r2, #3]
	ldrb r4, [r1, #4]
	strb r4, [r2, #4]
	ldrb r11, [r1, #5]
	ldrb r4, [r1, #6]
	strb r11, [r2, #5]
	strb r4, [r2, #6]
	ldrb r4, [r1, #7]
	strb r4, [r2, #7]
	ble _0213C168
	add r0, r5, r0, lsl #3
	mov r2, r3, lsl #3
	bl FUN_02040dc8
_0213C168:
	sub r6, r6, #1
	add r7, r7, #1
_0213C170:
	cmp r7, r8
	blt _0213C0F4
_0213C178:
	movs r0, #1
	bne _0213C1B8
	mov r7, #0
	ldr r4, _0213C1F8 ; =0x0209BA20
	b _0213C1AC
_0213C18C:
	mov r0, r7, lsl #3
	ldrh r1, [r9, r0]
	mov r0, r4
	bl FUN_0204bc4c
	mov r1, r0
	ldr r0, _0213C204 ; =0x0209C094
	bl FUN_02050740
	add r7, r7, #1
_0213C1AC:
	cmp r7, r8
	blt _0213C18C
	b _0213C1C0
_0213C1B8:
	mov r0, r10
	bl FUN_ov131_0213c328
_0213C1C0:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0213C1D4
	ldr r0, _0213C1F8 ; =0x0209BA20
	bl FUN_0204ec3c
_0213C1D4:
	ldr r0, _0213C1FC ; =0x0209A250
	mov r1, r5
	bl FUN_0202e1c0
	ldr r1, _0213C208 ; =0x020A0640
	mov r2, #1
	mov r0, r8
	strb r2, [r1, #0x625]
	add sp, sp, #0x1dc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213C1F8: .word unk_0209BA20
_0213C1FC: .word unk_0209A250
_0213C200: .word unk_020AF81C
_0213C204: .word unk_0209C094
_0213C208: .word unk_020A0640
	arm_func_end FUN_ov131_0213bf70

	arm_func_start FUN_ov131_0213c20c
FUN_ov131_0213c20c: ; 0x0213C20C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0213C284 ; =0x020A0C3C
	mov r7, r0
	mov r8, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x20
	mov r5, r3
	bl MI_CpuFill8
	cmp r8, #0
	beq _0213C248
	mov r0, r4
	mov r1, r8
	bl STD_CopyString
_0213C248:
	ldr lr, [sp, #0x18]
	ldr r12, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	mov r1, #0
	mov r0, r7
	strb r6, [r4, #0x20]
	strb r5, [r4, #0x22]
	strb lr, [r4, #0x21]
	strb r12, [r4, #0x25]
	strb r3, [r4, #0x23]
	strb r2, [r4, #0x26]
	strb r1, [r4, #0x24]
	bl FUN_ov131_0213c2a8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213C284: .word unk_020A0C3C
	arm_func_end FUN_ov131_0213c20c

	arm_func_start FUN_ov131_0213c288
FUN_ov131_0213c288: ; 0x0213C288
	ldr r3, _0213C2A0 ; =0x020A0C64
	mov r2, #0
	ldr r12, _0213C2A4 ; =FUN_ov131_0213c2a8
	strb r1, [r3]
	strb r2, [r3, #1]
	bx r12
_0213C2A0: .word unk_020A0C64
_0213C2A4: .word FUN_ov131_0213c2a8
	arm_func_end FUN_ov131_0213c288

	arm_func_start FUN_ov131_0213c2a8
FUN_ov131_0213c2a8: ; 0x0213C2A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r7, _0213C320 ; =0x0209C094
	bl FUN_ov131_02140dec
	ldrh r1, [r8, #8]
	mov r6, r0
	ldr r4, [r8, #4]
	cmp r1, #0
	mov r5, #0
	ble _0213C30C
	ldr r9, _0213C324 ; =0x0209BA20
_0213C2D4:
	ldrb r0, [r4, #0x2a]
	cmp r0, #1
	bne _0213C2F8
	ldrh r1, [r4, #0x24]
	mov r0, r9
	bl FUN_0204bc4c
	mov r1, r0
	mov r0, r7
	bl FUN_0205076c
_0213C2F8:
	ldrh r0, [r8, #8]
	add r5, r5, #1
	add r4, r4, #0x2c
	cmp r5, r0
	blt _0213C2D4
_0213C30C:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0213C324 ; =0x0209BA20
	bl FUN_0204ec3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213C320: .word unk_0209C094
_0213C324: .word unk_0209BA20
	arm_func_end FUN_ov131_0213c2a8

	arm_func_start FUN_ov131_0213c328
FUN_ov131_0213c328: ; 0x0213C328
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r7, _0213C3A0 ; =0x0209C094
	bl FUN_ov131_02140dec
	ldrh r1, [r8, #8]
	mov r6, r0
	ldr r4, [r8, #4]
	cmp r1, #0
	mov r5, #0
	ble _0213C38C
	ldr r9, _0213C3A4 ; =0x0209BA20
_0213C354:
	ldrb r0, [r4, #0x2a]
	cmp r0, #1
	beq _0213C378
	ldrh r1, [r4, #0x24]
	mov r0, r9
	bl FUN_0204bc4c
	mov r1, r0
	mov r0, r7
	bl FUN_0205076c
_0213C378:
	ldrh r0, [r8, #8]
	add r5, r5, #1
	add r4, r4, #0x2c
	cmp r5, r0
	blt _0213C354
_0213C38C:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0213C3A4 ; =0x0209BA20
	bl FUN_0204ec3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213C3A0: .word unk_0209C094
_0213C3A4: .word unk_0209BA20
	arm_func_end FUN_ov131_0213c328

	arm_func_start FUN_ov131_0213c3a8
FUN_ov131_0213c3a8: ; 0x0213C3A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _0213C494 ; =0x020A1240
	mov r6, r0
	ldrh r2, [r7, #0x72]
	mov r5, r1
	mov r4, #0
	mov r1, r2, lsl #0x1d
	movs r1, r1, lsr #0x1d
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov131_02140dec
	cmp r5, #0
	beq _0213C47C
	ldr r2, _0213C498 ; =0x020A12B4
	mov r1, r4
	b _0213C448
_0213C3E8:
	mov r3, r4, lsl #1
	ldrh r12, [r2, r3]
	mov lr, r1
	ldr r3, [r6, #4]
	b _0213C404
_0213C3FC:
	add r3, r3, #0x2c
	add lr, lr, #1
_0213C404:
	ldrh r8, [r6, #8]
	cmp lr, r8
	bge _0213C41C
	ldrh r8, [r3, #0x24]
	cmp r8, r12
	bne _0213C3FC
_0213C41C:
	ldrh r8, [r3, #0x24]
	mov r12, r4, lsl #3
	add lr, r5, r4, lsl #3
	strh r8, [r5, r12]
	ldrb r12, [r3, #0x28]
	add r4, r4, #1
	strb r12, [lr, #2]
	ldrb r12, [r3, #0x2b]
	strb r12, [lr, #3]
	ldrb r3, [r3, #0x26]
	strb r3, [lr, #4]
_0213C448:
	ldrh r3, [r7, #0x72]
	mov r3, r3, lsl #0x1d
	cmp r4, r3, lsr #29
	blt _0213C3E8
	cmp r0, #0
	beq _0213C468
	ldr r0, _0213C49C ; =0x0209BA20
	bl FUN_0204ec3c
_0213C468:
	ldr r0, _0213C494 ; =0x020A1240
	ldrh r0, [r0, #0x72]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213C47C:
	cmp r0, #0
	beq _0213C48C
	ldr r0, _0213C49C ; =0x0209BA20
	bl FUN_0204ec3c
_0213C48C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213C494: .word unk_020A1240
_0213C498: .word unk_020A12B4
_0213C49C: .word unk_0209BA20
	arm_func_end FUN_ov131_0213c3a8

	arm_func_start FUN_ov131_0213c4a0
FUN_ov131_0213c4a0: ; 0x0213C4A0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov lr, #0
	ldr r0, _0213C4EC ; =0x020A12B4
	b _0213C4C8
_0213C4B8:
	mov r12, lr, lsl #1
	ldrh r3, [r1, r12]
	add lr, lr, #1
	strh r3, [r0, r12]
_0213C4C8:
	cmp lr, r2
	blt _0213C4B8
	ldr r0, _0213C4F0 ; =0x020A1240
	and r1, r2, #7
	ldrh r2, [r0, #0x72]
	bic r2, r2, #7
	orr r1, r2, r1
	strh r1, [r0, #0x72]
	ldmfd sp!, {r3, pc}
_0213C4EC: .word unk_020A12B4
_0213C4F0: .word unk_020A1240
	arm_func_end FUN_ov131_0213c4a0

	arm_func_start FUN_ov131_0213c4f4
FUN_ov131_0213c4f4: ; 0x0213C4F4
	ldr r0, _0213C508 ; =0x020A1240
	ldrh r1, [r0, #0x72]
	bic r1, r1, #7
	strh r1, [r0, #0x72]
	bx lr
_0213C508: .word unk_020A1240
	arm_func_end FUN_ov131_0213c4f4

	arm_func_start FUN_ov131_0213c50c
FUN_ov131_0213c50c: ; 0x0213C50C
	stmfd sp!, {r4, lr}
	cmp r1, #0
	beq _0213C584
	ldrb r2, [r0, #0xa]
	mov r4, #0
	cmp r2, #0
	ble _0213C57C
_0213C528:
	add lr, r0, r4, lsl #3
	ldrh r2, [lr, #0xc]
	mov r3, r4, lsl #3
	add r12, r1, r4, lsl #3
	strh r2, [r1, r3]
	ldrb r2, [lr, #0xe]
	add r4, r4, #1
	strb r2, [r12, #2]
	ldrb r2, [lr, #0xf]
	strb r2, [r12, #3]
	ldrb r2, [lr, #0x10]
	strb r2, [r12, #4]
	ldrb r3, [lr, #0x11]
	ldrb r2, [lr, #0x12]
	strb r3, [r12, #5]
	strb r2, [r12, #6]
	ldrb r2, [lr, #0x13]
	strb r2, [r12, #7]
	ldrb r2, [r0, #0xa]
	cmp r4, r2
	blt _0213C528
_0213C57C:
	mov r0, r2
	ldmfd sp!, {r4, pc}
_0213C584:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov131_0213c50c

	arm_func_start FUN_ov131_0213c58c
FUN_ov131_0213c58c: ; 0x0213C58C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, #0
	mov r5, #0
	ble _0213C5F4
_0213C5A4:
	mov r3, r5, lsl #3
	ldrh r3, [r1, r3]
	add r4, r0, r5, lsl #3
	add lr, r1, r5, lsl #3
	strh r3, [r4, #0xc]
	ldrb r3, [lr, #2]
	add r5, r5, #1
	cmp r5, r2
	strb r3, [r4, #0xe]
	ldrb r3, [lr, #3]
	strb r3, [r4, #0xf]
	ldrb r3, [lr, #4]
	strb r3, [r4, #0x10]
	ldrb r12, [lr, #5]
	ldrb r3, [lr, #6]
	strb r12, [r4, #0x11]
	strb r3, [r4, #0x12]
	ldrb r3, [lr, #7]
	strb r3, [r4, #0x13]
	blt _0213C5A4
_0213C5F4:
	strb r2, [r0, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov131_0213c58c

	arm_func_start FUN_ov131_0213c5fc
FUN_ov131_0213c5fc: ; 0x0213C5FC
	mov r1, #0
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end FUN_ov131_0213c5fc

	arm_func_start FUN_ov131_0213c608
FUN_ov131_0213c608: ; 0x0213C608
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r6, #0
	bl FUN_ov131_02140dec
	str r0, [sp]
	ldr r0, _0213C72C ; =0x0209BA20
	ldr r7, [r10, #4]
	bl FUN_0204eac8
	mov r8, r0
	mov r9, r6
	mov r4, #1
	mov r5, r6
	ldr r11, _0213C730 ; =0x0209A11C
	b _0213C704
_0213C640:
	ldrb r1, [r7, #0x26]
	cmp r1, #0xff
	beq _0213C6FC
	ldrb r0, [r7, #0x2a]
	cmp r0, #1
	bne _0213C6FC
	cmp r1, #0xc9
	beq _0213C6FC
	cmp r1, #0xca
	blo _0213C670
	cmp r1, #0xd4
	blo _0213C6FC
_0213C670:
	ldrb r0, [r7, #0x26]
	cmp r0, #0xd4
	cmpne r0, #0xd7
	beq _0213C6FC
	ldrh r1, [r7, #0x24]
	ldr r0, [r11]
	mov r2, r5
	bl FUN_0206c7dc
	cmp r0, #0
	bne _0213C6FC
	ldrb r0, [r7, #0x2b]
	tst r0, #0xc
	movne r0, #1
	moveq r0, r5
	cmp r0, #0
	bne _0213C6FC
	ldrb r0, [r7, #0x26]
	cmp r0, #0xdd
	blo _0213C6E8
	cmp r0, #0xe6
	bhi _0213C6E8
	ldrh r1, [r7, #0x24]
	ldr r0, _0213C72C ; =0x0209BA20
	bl FUN_0204bc4c
	mov r1, r0
	ldr r0, _0213C734 ; =0x020A0C68
	bl FUN_02050820
	cmp r0, #0
	beq _0213C6FC
	b _0213C6F4
_0213C6E8:
	ldrb r0, [r7, #0x26]
	cmp r8, r0
	blt _0213C6FC
_0213C6F4:
	ldrb r0, [r7, #0x28]
	orr r6, r6, r4, lsl r0
_0213C6FC:
	add r9, r9, #1
	add r7, r7, #0x2c
_0213C704:
	ldrh r0, [r10, #8]
	cmp r9, r0
	blt _0213C640
	ldr r0, [sp]
	cmp r0, #0
	beq _0213C724
	ldr r0, _0213C72C ; =0x0209BA20
	bl FUN_0204ec3c
_0213C724:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213C72C: .word unk_0209BA20
_0213C730: .word unk_0209A11C
_0213C734: .word unk_020A0C68
	arm_func_end FUN_ov131_0213c608

	arm_func_start FUN_ov131_0213c738
FUN_ov131_0213c738: ; 0x0213C738
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov131_02140dec
	cmp r0, #0
	ldrh r4, [r4, #8]
	beq _0213C758
	ldr r0, _0213C760 ; =0x0209BA20
	bl FUN_0204ec3c
_0213C758:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0213C760: .word unk_0209BA20
	arm_func_end FUN_ov131_0213c738

	arm_func_start FUN_ov131_0213c764
FUN_ov131_0213c764: ; 0x0213C764
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r5, #0
	ldr r6, _0213C7E0 ; =0x020A11DC
	bl FUN_ov131_02140dec
	mov r4, r0
	mov r0, r8
	mov r1, r7
	bl FUN_ov131_0213c7e8
	movs r1, r0
	bmi _0213C7A0
	mov r0, r6
	bl FUN_ov131_02142694
	mov r5, r0
_0213C7A0:
	cmp r5, #0
	bne _0213C7C8
	mov r0, r8
	mov r1, r7
	bl FUN_ov131_0213c868
	movs r1, r0
	bmi _0213C7C8
	mov r0, r6
	bl FUN_ov131_021426bc
	mov r5, r0
_0213C7C8:
	cmp r4, #0
	beq _0213C7D8
	ldr r0, _0213C7E4 ; =0x0209BA20
	bl FUN_0204ec3c
_0213C7D8:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213C7E0: .word unk_020A11DC
_0213C7E4: .word unk_0209BA20
	arm_func_end FUN_ov131_0213c764

	arm_func_start FUN_ov131_0213c7e8
FUN_ov131_0213c7e8: ; 0x0213C7E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	mvn r5, #0
	mov r6, #0
	bl FUN_ov131_02140dec
	ldrh r12, [r7, #8]
	mov r2, r6
	ldr r3, [r7, #4]
	cmp r12, #0
	ble _0213C844
_0213C814:
	ldrb r1, [r3, #0x2b]
	tst r1, #4
	beq _0213C834
	ldrh r1, [r3, #0x24]
	add r5, r5, #1
	cmp r1, r4
	moveq r6, #1
	beq _0213C844
_0213C834:
	add r2, r2, #1
	cmp r2, r12
	add r3, r3, #0x2c
	blt _0213C814
_0213C844:
	cmp r0, #0
	beq _0213C854
	ldr r0, _0213C864 ; =0x0209BA20
	bl FUN_0204ec3c
_0213C854:
	mov r0, r5
	cmp r6, #0
	mvneq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213C864: .word unk_0209BA20
	arm_func_end FUN_ov131_0213c7e8

	arm_func_start FUN_ov131_0213c868
FUN_ov131_0213c868: ; 0x0213C868
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	mvn r5, #0
	mov r6, #0
	bl FUN_ov131_02140dec
	ldrh r12, [r7, #8]
	mov r2, r6
	ldr r3, [r7, #4]
	cmp r12, #0
	ble _0213C8C4
_0213C894:
	ldrb r1, [r3, #0x2b]
	tst r1, #8
	beq _0213C8B4
	ldrh r1, [r3, #0x24]
	add r5, r5, #1
	cmp r1, r4
	moveq r6, #1
	beq _0213C8C4
_0213C8B4:
	add r2, r2, #1
	cmp r2, r12
	add r3, r3, #0x2c
	blt _0213C894
_0213C8C4:
	cmp r0, #0
	beq _0213C8D4
	ldr r0, _0213C8E4 ; =0x0209BA20
	bl FUN_0204ec3c
_0213C8D4:
	mov r0, r5
	cmp r6, #0
	mvneq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213C8E4: .word unk_0209BA20
	arm_func_end FUN_ov131_0213c868

	arm_func_start FUN_ov131_0213c8e8
FUN_ov131_0213c8e8: ; 0x0213C8E8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0213C98C ; =0x0209BA20
	mov r7, #0
	ldr lr, [r6, #0x7ec]
	mov r5, r1
	mov r4, r7
	cmp lr, #0
	bne _0213C918
	mov r0, r6
	bl FUN_0204eba0
	ldr lr, [r6, #0x7ec]
	mov r7, #1
_0213C918:
	ldr r0, _0213C990 ; =0x0209C220
	mov r6, #0
	ldrh r8, [r0, #0x6a]
	cmp r8, #0
	bls _0213C974
	mov r3, #1
	mov r2, r6
	mov r0, r6
	mov r1, r3
_0213C93C:
	ldrh r12, [lr, #0x24]
	cmp r12, r5
	bne _0213C964
	ldrb r4, [lr, #0x2b]
	tst r4, #0x10
	movne r4, r3
	moveq r4, r2
	cmp r4, #0
	movne r4, r1
	moveq r4, r0
_0213C964:
	add r6, r6, #1
	cmp r6, r8
	add lr, lr, #0x2c
	blo _0213C93C
_0213C974:
	cmp r7, #0
	beq _0213C984
	ldr r0, _0213C98C ; =0x0209BA20
	bl FUN_0204ec3c
_0213C984:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213C98C: .word unk_0209BA20
_0213C990: .word unk_0209C220
	arm_func_end FUN_ov131_0213c8e8

	arm_func_start FUN_ov131_0213c994
FUN_ov131_0213c994: ; 0x0213C994
	stmfd sp!, {r4, lr}
	movs r4, r1
	beq _0213C9B0
	mov r0, r4
	bl STD_GetStringLength
	cmp r0, #2
	bge _0213C9B8
_0213C9B0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0213C9B8:
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, r1, lsl #8
	mov r0, r0, lsl #0x10
	movs r2, r0, lsr #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _0213D4F4 ; =0x00009583
	cmp r2, r1
	bgt _0213CE88
	bge _0213D3A4
	sub r0, r1, #0x2c00
	cmp r2, r0
	bgt _0213CC34
	bge _0213D41C
	sub r0, r1, #0x3f00
	cmp r2, r0
	bgt _0213CB1C
	bge _0213D3D4
	sub r0, r1, #0x4800
	cmp r2, r0
	bgt _0213CA98
	bge _0213D3AC
	sub r0, r1, #0x4e00
	cmp r2, r0
	bgt _0213CA54
	bge _0213D394
	sub r0, r1, #0x5200
	cmp r2, r0
	bgt _0213CA44
	bge _0213D384
	sub r0, r1, #0x5400
	cmp r2, r0
	beq _0213D37C
	b _0213D4EC
_0213CA44:
	sub r0, r1, #0x5000
	cmp r2, r0
	beq _0213D38C
	b _0213D4EC
_0213CA54:
	sub r0, r1, #0x4b00
	cmp r2, r0
	bgt _0213CA74
	bge _0213D3A4
	sub r0, r1, #0x4c00
	cmp r2, r0
	beq _0213D39C
	b _0213D4EC
_0213CA74:
	sub r0, r1, #0x4a00
	cmp r2, r0
	bgt _0213CA88
	beq _0213D3A4
	b _0213D4EC
_0213CA88:
	sub r0, r1, #0x4900
	cmp r2, r0
	beq _0213D3AC
	b _0213D4EC
_0213CA98:
	sub r0, r1, #0x4400
	cmp r2, r0
	bgt _0213CAD8
	bge _0213D3BC
	sub r0, r1, #0x4600
	cmp r2, r0
	bgt _0213CAC8
	bge _0213D3B4
	sub r0, r1, #0x4700
	cmp r2, r0
	beq _0213D3B4
	b _0213D4EC
_0213CAC8:
	sub r0, r1, #0x4500
	cmp r2, r0
	beq _0213D3BC
	b _0213D4EC
_0213CAD8:
	sub r0, r1, #0x4200
	cmp r2, r0
	bgt _0213CAF8
	bge _0213D3C4
	sub r0, r1, #0x4300
	cmp r2, r0
	beq _0213D3C4
	b _0213D4EC
_0213CAF8:
	sub r0, r1, #0x4100
	cmp r2, r0
	bgt _0213CB0C
	beq _0213D3CC
	b _0213D4EC
_0213CB0C:
	sub r0, r1, #0x4000
	cmp r2, r0
	beq _0213D3CC
	b _0213D4EC
_0213CB1C:
	sub r0, r1, #0x3600
	cmp r2, r0
	bgt _0213CBB0
	bge _0213D3F4
	sub r0, r1, #0x3b00
	cmp r2, r0
	bgt _0213CB6C
	bge _0213D3E4
	sub r0, r1, #0x3d00
	cmp r2, r0
	bgt _0213CB5C
	bge _0213D3DC
	sub r0, r1, #0x3e00
	cmp r2, r0
	beq _0213D3D4
	b _0213D4EC
_0213CB5C:
	sub r0, r1, #0x3c00
	cmp r2, r0
	beq _0213D3DC
	b _0213D4EC
_0213CB6C:
	sub r0, r1, #0x3900
	cmp r2, r0
	bgt _0213CB8C
	bge _0213D3EC
	sub r0, r1, #0x3a00
	cmp r2, r0
	beq _0213D3E4
	b _0213D4EC
_0213CB8C:
	sub r0, r1, #0x3800
	cmp r2, r0
	bgt _0213CBA0
	beq _0213D3EC
	b _0213D4EC
_0213CBA0:
	sub r0, r1, #0x3700
	cmp r2, r0
	beq _0213D3F4
	b _0213D4EC
_0213CBB0:
	sub r0, r1, #0x3100
	cmp r2, r0
	bgt _0213CBF0
	bge _0213D404
	sub r0, r1, #0x3400
	cmp r2, r0
	bgt _0213CBE0
	bge _0213D3FC
	sub r0, r1, #0x3500
	cmp r2, r0
	beq _0213D3FC
	b _0213D4EC
_0213CBE0:
	sub r0, r1, #0x3200
	cmp r2, r0
	beq _0213D404
	b _0213D4EC
_0213CBF0:
	sub r0, r1, #0x2f00
	cmp r2, r0
	bgt _0213CC10
	bge _0213D40C
	sub r0, r1, #0x3000
	cmp r2, r0
	beq _0213D40C
	b _0213D4EC
_0213CC10:
	sub r0, r1, #0x2e00
	cmp r2, r0
	bgt _0213CC24
	beq _0213D414
	b _0213D4EC
_0213CC24:
	sub r0, r1, #0x2d00
	cmp r2, r0
	beq _0213D414
	b _0213D4EC
_0213CC34:
	sub r0, r1, #0x1a00
	cmp r2, r0
	bgt _0213CD5C
	bge _0213D464
	sub r0, r1, #0x2300
	cmp r2, r0
	bgt _0213CCD8
	bge _0213D44C
	sub r0, r1, #0x2800
	cmp r2, r0
	bgt _0213CC94
	bge _0213D43C
	sub r0, r1, #0x2a00
	cmp r2, r0
	bgt _0213CC84
	bge _0213D42C
	sub r0, r1, #0x2b00
	cmp r2, r0
	beq _0213D424
	b _0213D4EC
_0213CC84:
	sub r0, r1, #0x2900
	cmp r2, r0
	beq _0213D434
	b _0213D4EC
_0213CC94:
	sub r0, r1, #0x2600
	cmp r2, r0
	bgt _0213CCB4
	bge _0213D444
	sub r0, r1, #0x2700
	cmp r2, r0
	beq _0213D444
	b _0213D4EC
_0213CCB4:
	sub r0, r1, #0x2500
	cmp r2, r0
	bgt _0213CCC8
	beq _0213D444
	b _0213D4EC
_0213CCC8:
	sub r0, r1, #0x2400
	cmp r2, r0
	beq _0213D44C
	b _0213D4EC
_0213CCD8:
	sub r0, r1, #0x1f00
	cmp r2, r0
	bgt _0213CD18
	bge _0213D454
	sub r0, r1, #0x2100
	cmp r2, r0
	bgt _0213CD08
	bge _0213D454
	sub r0, r1, #0x2200
	cmp r2, r0
	beq _0213D44C
	b _0213D4EC
_0213CD08:
	sub r0, r1, #0x2000
	cmp r2, r0
	beq _0213D454
	b _0213D4EC
_0213CD18:
	sub r0, r1, #0x1d00
	cmp r2, r0
	bgt _0213CD38
	bge _0213D45C
	sub r0, r1, #0x1e00
	cmp r2, r0
	beq _0213D45C
	b _0213D4EC
_0213CD38:
	sub r0, r1, #0x1c00
	cmp r2, r0
	bgt _0213CD4C
	beq _0213D45C
	b _0213D4EC
_0213CD4C:
	sub r0, r1, #0x1b00
	cmp r2, r0
	beq _0213D464
	b _0213D4EC
_0213CD5C:
	sub r0, r1, #0xd00
	cmp r2, r0
	bgt _0213CDF0
	bge _0213D4A4
	sub r0, r1, #0x1500
	cmp r2, r0
	bgt _0213CDAC
	bge _0213D47C
	sub r0, r1, #0x1800
	cmp r2, r0
	bgt _0213CD9C
	bge _0213D46C
	sub r0, r1, #0x1900
	cmp r2, r0
	beq _0213D464
	b _0213D4EC
_0213CD9C:
	sub r0, r1, #0x1700
	cmp r2, r0
	beq _0213D474
	b _0213D4EC
_0213CDAC:
	sub r0, r1, #0x1300
	cmp r2, r0
	bgt _0213CDCC
	bge _0213D48C
	sub r0, r1, #0x1400
	cmp r2, r0
	beq _0213D484
	b _0213D4EC
_0213CDCC:
	sub r0, r1, #0x1100
	cmp r2, r0
	bgt _0213CDE0
	beq _0213D494
	b _0213D4EC
_0213CDE0:
	sub r0, r1, #0xf00
	cmp r2, r0
	beq _0213D49C
	b _0213D4EC
_0213CDF0:
	sub r0, r1, #0x800
	cmp r2, r0
	bgt _0213CE44
	bge _0213D4CC
	sub r0, r1, #0xb00
	cmp r2, r0
	bgt _0213CE20
	bge _0213D4B4
	sub r0, r1, #0xc00
	cmp r2, r0
	beq _0213D4AC
	b _0213D4EC
_0213CE20:
	sub r0, r1, #0xa00
	cmp r2, r0
	bgt _0213CE34
	beq _0213D4BC
	b _0213D4EC
_0213CE34:
	sub r0, r1, #0x900
	cmp r2, r0
	beq _0213D4C4
	b _0213D4EC
_0213CE44:
	sub r0, r1, #0x300
	cmp r2, r0
	bgt _0213CE64
	bge _0213D4DC
	sub r0, r1, #0x600
	cmp r2, r0
	beq _0213D4D4
	b _0213D4EC
_0213CE64:
	sub r0, r1, #0x200
	cmp r2, r0
	bgt _0213CE78
	beq _0213D4E4
	b _0213D4EC
_0213CE78:
	sub r0, r1, #0x100
	cmp r2, r0
	beq _0213D38C
	b _0213D4EC
_0213CE88:
	ldr r0, _0213D4F8 ; =0x0000C782
	cmp r2, r0
	bgt _0213D100
	bge _0213D414
	sub r3, r0, #0x1300
	cmp r2, r3
	bgt _0213CFD8
	bge _0213D3CC
	sub r3, r0, #0x1c00
	cmp r2, r3
	bgt _0213CF4C
	bge _0213D3AC
	sub r3, r0, #0x2300
	cmp r2, r3
	bgt _0213CF00
	bge _0213D38C
	sub r3, r0, #0x2700
	cmp r2, r3
	bgt _0213CEF0
	sub r0, r0, #0x2700
	cmp r2, r0
	bge _0213D37C
	add r0, r1, #0x100
	cmp r2, r0
	beq _0213D3BC
	b _0213D4EC
_0213CEF0:
	sub r0, r0, #0x2500
	cmp r2, r0
	beq _0213D384
	b _0213D4EC
_0213CF00:
	sub r1, r0, #0x1f00
	cmp r2, r1
	bgt _0213CF20
	bge _0213D39C
	sub r0, r0, #0x2100
	cmp r2, r0
	beq _0213D394
	b _0213D4EC
_0213CF20:
	sub r1, r0, #0x1e00
	cmp r2, r1
	bgt _0213CF3C
	sub r0, r0, #0x1e00
	cmp r2, r0
	beq _0213D3A4
	b _0213D4EC
_0213CF3C:
	sub r0, r0, #0x1d00
	cmp r2, r0
	beq _0213D3A4
	b _0213D4EC
_0213CF4C:
	sub r1, r0, #0x1800
	cmp r2, r1
	bgt _0213CF8C
	bge _0213D3BC
	sub r1, r0, #0x1a00
	cmp r2, r1
	bgt _0213CF7C
	bge _0213D3B4
	sub r0, r0, #0x1b00
	cmp r2, r0
	beq _0213D3AC
	b _0213D4EC
_0213CF7C:
	sub r0, r0, #0x1900
	cmp r2, r0
	beq _0213D3B4
	b _0213D4EC
_0213CF8C:
	sub r1, r0, #0x1600
	cmp r2, r1
	bgt _0213CFAC
	bge _0213D3C4
	sub r0, r0, #0x1700
	cmp r2, r0
	beq _0213D3BC
	b _0213D4EC
_0213CFAC:
	sub r1, r0, #0x1500
	cmp r2, r1
	bgt _0213CFC8
	sub r0, r0, #0x1500
	cmp r2, r0
	beq _0213D3C4
	b _0213D4EC
_0213CFC8:
	sub r0, r0, #0x1400
	cmp r2, r0
	beq _0213D3CC
	b _0213D4EC
_0213CFD8:
	sub r1, r0, #0xa00
	cmp r2, r1
	bgt _0213D074
	bge _0213D3F4
	sub r1, r0, #0xf00
	cmp r2, r1
	bgt _0213D028
	bge _0213D3DC
	sub r1, r0, #0x1100
	cmp r2, r1
	bgt _0213D018
	bge _0213D3D4
	sub r0, r0, #0x1200
	cmp r2, r0
	beq _0213D3D4
	b _0213D4EC
_0213D018:
	sub r0, r0, #0x1000
	cmp r2, r0
	beq _0213D3DC
	b _0213D4EC
_0213D028:
	sub r1, r0, #0xd00
	cmp r2, r1
	bgt _0213D048
	bge _0213D3E4
	sub r0, r0, #0xe00
	cmp r2, r0
	beq _0213D3E4
	b _0213D4EC
_0213D048:
	sub r1, r0, #0xc00
	cmp r2, r1
	bgt _0213D064
	sub r0, r0, #0xc00
	cmp r2, r0
	beq _0213D3EC
	b _0213D4EC
_0213D064:
	sub r0, r0, #0xb00
	cmp r2, r0
	beq _0213D3EC
	b _0213D4EC
_0213D074:
	sub r1, r0, #0x500
	cmp r2, r1
	bgt _0213D0B4
	bge _0213D404
	sub r1, r0, #0x800
	cmp r2, r1
	bgt _0213D0A4
	bge _0213D3FC
	sub r0, r0, #0x900
	cmp r2, r0
	beq _0213D3F4
	b _0213D4EC
_0213D0A4:
	sub r0, r0, #0x700
	cmp r2, r0
	beq _0213D3FC
	b _0213D4EC
_0213D0B4:
	sub r1, r0, #0x300
	cmp r2, r1
	bgt _0213D0D4
	bge _0213D40C
	sub r0, r0, #0x400
	cmp r2, r0
	beq _0213D404
	b _0213D4EC
_0213D0D4:
	sub r1, r0, #0x200
	cmp r2, r1
	bgt _0213D0F0
	sub r0, r0, #0x200
	cmp r2, r0
	beq _0213D40C
	b _0213D4EC
_0213D0F0:
	sub r0, r0, #0x100
	cmp r2, r0
	beq _0213D414
	b _0213D4EC
_0213D100:
	add r1, r0, #0x1200
	cmp r2, r1
	bgt _0213D238
	bge _0213D464
	add r1, r0, #0x900
	cmp r2, r1
	bgt _0213D1AC
	bge _0213D44C
	add r1, r0, #0x400
	cmp r2, r1
	bgt _0213D160
	bge _0213D434
	add r1, r0, #0x200
	cmp r2, r1
	bgt _0213D150
	bge _0213D424
	add r0, r0, #0x100
	cmp r2, r0
	beq _0213D41C
	b _0213D4EC
_0213D150:
	add r0, r0, #0x300
	cmp r2, r0
	beq _0213D42C
	b _0213D4EC
_0213D160:
	add r1, r0, #0x600
	cmp r2, r1
	bgt _0213D180
	bge _0213D444
	add r0, r0, #0x500
	cmp r2, r0
	beq _0213D43C
	b _0213D4EC
_0213D180:
	add r1, r0, #0x700
	cmp r2, r1
	bgt _0213D19C
	add r0, r0, #0x700
	cmp r2, r0
	beq _0213D444
	b _0213D4EC
_0213D19C:
	add r0, r0, #0x800
	cmp r2, r0
	beq _0213D444
	b _0213D4EC
_0213D1AC:
	add r1, r0, #0xd00
	cmp r2, r1
	bgt _0213D1EC
	bge _0213D454
	add r1, r0, #0xb00
	cmp r2, r1
	bgt _0213D1DC
	bge _0213D44C
	add r0, r0, #0xa00
	cmp r2, r0
	beq _0213D44C
	b _0213D4EC
_0213D1DC:
	add r0, r0, #0xc00
	cmp r2, r0
	beq _0213D454
	b _0213D4EC
_0213D1EC:
	add r1, r0, #0xf00
	cmp r2, r1
	bgt _0213D20C
	bge _0213D45C
	add r0, r0, #0xe00
	cmp r2, r0
	beq _0213D454
	b _0213D4EC
_0213D20C:
	add r1, r0, #0x1000
	cmp r2, r1
	bgt _0213D228
	add r0, r0, #0x1000
	cmp r2, r0
	beq _0213D45C
	b _0213D4EC
_0213D228:
	add r0, r0, #0x1100
	cmp r2, r0
	beq _0213D45C
	b _0213D4EC
_0213D238:
	add r1, r0, #0x1d00
	cmp r2, r1
	bgt _0213D2D4
	bge _0213D49C
	add r1, r0, #0x1600
	cmp r2, r1
	bgt _0213D288
	bge _0213D474
	add r1, r0, #0x1400
	cmp r2, r1
	bgt _0213D278
	bge _0213D464
	add r0, r0, #0x1300
	cmp r2, r0
	beq _0213D464
	b _0213D4EC
_0213D278:
	add r0, r0, #0x1500
	cmp r2, r0
	beq _0213D46C
	b _0213D4EC
_0213D288:
	add r1, r0, #0x1800
	cmp r2, r1
	bgt _0213D2A8
	bge _0213D484
	add r0, r0, #0x1700
	cmp r2, r0
	beq _0213D47C
	b _0213D4EC
_0213D2A8:
	add r1, r0, #0x1900
	cmp r2, r1
	bgt _0213D2C4
	add r0, r0, #0x1900
	cmp r2, r0
	beq _0213D48C
	b _0213D4EC
_0213D2C4:
	add r0, r0, #0x1b00
	cmp r2, r0
	beq _0213D494
	b _0213D4EC
_0213D2D4:
	add r1, r0, #0x2300
	cmp r2, r1
	bgt _0213D330
	bge _0213D4C4
	add r1, r0, #0x2000
	cmp r2, r1
	bgt _0213D304
	bge _0213D4AC
	add r0, r0, #0x1f00
	cmp r2, r0
	beq _0213D4A4
	b _0213D4EC
_0213D304:
	add r1, r0, #0x2100
	cmp r2, r1
	bgt _0213D320
	add r0, r0, #0x2100
	cmp r2, r0
	beq _0213D4B4
	b _0213D4EC
_0213D320:
	add r0, r0, #0x2200
	cmp r2, r0
	beq _0213D4BC
	b _0213D4EC
_0213D330:
	add r1, r0, #0x2600
	cmp r2, r1
	bgt _0213D350
	bge _0213D4D4
	add r0, r0, #0x2400
	cmp r2, r0
	beq _0213D4CC
	b _0213D4EC
_0213D350:
	add r1, r0, #0x2900
	cmp r2, r1
	bgt _0213D36C
	add r0, r0, #0x2900
	cmp r2, r0
	beq _0213D4DC
	b _0213D4EC
_0213D36C:
	add r0, r0, #0x2a00
	cmp r2, r0
	beq _0213D4E4
	b _0213D4EC
_0213D37C:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0213D384:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_0213D38C:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_0213D394:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_0213D39C:
	mov r0, #5
	ldmfd sp!, {r4, pc}
_0213D3A4:
	mov r0, #6
	ldmfd sp!, {r4, pc}
_0213D3AC:
	mov r0, #7
	ldmfd sp!, {r4, pc}
_0213D3B4:
	mov r0, #8
	ldmfd sp!, {r4, pc}
_0213D3BC:
	mov r0, #9
	ldmfd sp!, {r4, pc}
_0213D3C4:
	mov r0, #0xa
	ldmfd sp!, {r4, pc}
_0213D3CC:
	mov r0, #0xb
	ldmfd sp!, {r4, pc}
_0213D3D4:
	mov r0, #0xc
	ldmfd sp!, {r4, pc}
_0213D3DC:
	mov r0, #0xd
	ldmfd sp!, {r4, pc}
_0213D3E4:
	mov r0, #0xe
	ldmfd sp!, {r4, pc}
_0213D3EC:
	mov r0, #0xf
	ldmfd sp!, {r4, pc}
_0213D3F4:
	mov r0, #0x10
	ldmfd sp!, {r4, pc}
_0213D3FC:
	mov r0, #0x11
	ldmfd sp!, {r4, pc}
_0213D404:
	mov r0, #0x12
	ldmfd sp!, {r4, pc}
_0213D40C:
	mov r0, #0x13
	ldmfd sp!, {r4, pc}
_0213D414:
	mov r0, #0x14
	ldmfd sp!, {r4, pc}
_0213D41C:
	mov r0, #0x15
	ldmfd sp!, {r4, pc}
_0213D424:
	mov r0, #0x16
	ldmfd sp!, {r4, pc}
_0213D42C:
	mov r0, #0x17
	ldmfd sp!, {r4, pc}
_0213D434:
	mov r0, #0x18
	ldmfd sp!, {r4, pc}
_0213D43C:
	mov r0, #0x19
	ldmfd sp!, {r4, pc}
_0213D444:
	mov r0, #0x1a
	ldmfd sp!, {r4, pc}
_0213D44C:
	mov r0, #0x1b
	ldmfd sp!, {r4, pc}
_0213D454:
	mov r0, #0x1c
	ldmfd sp!, {r4, pc}
_0213D45C:
	mov r0, #0x1d
	ldmfd sp!, {r4, pc}
_0213D464:
	mov r0, #0x1e
	ldmfd sp!, {r4, pc}
_0213D46C:
	mov r0, #0x1f
	ldmfd sp!, {r4, pc}
_0213D474:
	mov r0, #0x20
	ldmfd sp!, {r4, pc}
_0213D47C:
	mov r0, #0x21
	ldmfd sp!, {r4, pc}
_0213D484:
	mov r0, #0x22
	ldmfd sp!, {r4, pc}
_0213D48C:
	mov r0, #0x23
	ldmfd sp!, {r4, pc}
_0213D494:
	mov r0, #0x24
	ldmfd sp!, {r4, pc}
_0213D49C:
	mov r0, #0x25
	ldmfd sp!, {r4, pc}
_0213D4A4:
	mov r0, #0x26
	ldmfd sp!, {r4, pc}
_0213D4AC:
	mov r0, #0x27
	ldmfd sp!, {r4, pc}
_0213D4B4:
	mov r0, #0x28
	ldmfd sp!, {r4, pc}
_0213D4BC:
	mov r0, #0x29
	ldmfd sp!, {r4, pc}
_0213D4C4:
	mov r0, #0x2a
	ldmfd sp!, {r4, pc}
_0213D4CC:
	mov r0, #0x2b
	ldmfd sp!, {r4, pc}
_0213D4D4:
	mov r0, #0x2c
	ldmfd sp!, {r4, pc}
_0213D4DC:
	mov r0, #0x2d
	ldmfd sp!, {r4, pc}
_0213D4E4:
	mov r0, #0x2e
	ldmfd sp!, {r4, pc}
_0213D4EC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0213D4F4: .word 0x00009583
_0213D4F8: .word 0x0000C782
	arm_func_end FUN_ov131_0213c994

	arm_func_start FUN_ov131_0213d4fc
FUN_ov131_0213d4fc: ; 0x0213D4FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x188
	ldr r5, _0213D698 ; =0x0209BA20
	mov r4, #1
	mov r9, r2
	mov r10, r1
	add r2, sp, #0x1a
	mov r0, r5
	mov r1, r4
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x188
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r4
	mov r11, #0
	bl FUN_0207249c
	ldrh r1, [sp, #0x42]
	cmp r1, #0
	ldreqh r1, [sp, #0x40]
	strh r1, [r0, #0x26]
	ldrh r1, [sp, #0x4a]
	strh r1, [r0, #0x30]
	ldrh r1, [sp, #0x4c]
	strh r1, [r0, #0x32]
	ldrb r1, [sp, #0x46]
	strb r1, [r0, #0x2c]
	ldrh r1, [sp, #0x4e]
	strh r1, [r0, #0x34]
	mov r0, r9
	bl FUN_ov131_0213e174
	ldr r0, _0213D698 ; =0x0209BA20
	mov r7, #0
	ldr r6, [r0, #0x7ec]
	sub r5, sp, #4
	and r4, r11, #0xff
	b _0213D67C
_0213D594:
	ldrh r0, [r6, #0x24]
	cmp r0, #0
	beq _0213D674
	ldrb r0, [r6, #0x2b]
	tst r0, #2
	moveq r0, #1
	movne r0, r11
	cmp r0, #0
	ldreqb r0, [r6, #0x2a]
	cmpeq r0, #1
	bne _0213D674
	ldrb r0, [r6, #0x28]
	cmp r0, r10
	beq _0213D5D8
	cmp r10, #0x62
	cmpeq r0, #0
	bne _0213D674
_0213D5D8:
	ldrh r1, [r6, #0x24]
	ldr r0, _0213D698 ; =0x0209BA20
	strh r1, [sp, #2]
	ldrb r1, [r6, #0x28]
	strb r11, [sp, #5]
	strb r1, [sp, #4]
	ldrh r1, [r6, #0x24]
	bl FUN_0204bc4c
	mov r8, r0
	ldr r0, _0213D69C ; =0x020A108A
	mov r1, r8
	bl FUN_020509d8
	cmp r0, #0
	ldrneb r0, [sp, #5]
	mov r1, r8
	orrne r0, r0, #1
	strneb r0, [sp, #5]
	ldr r0, _0213D6A0 ; =0x020A0DB0
	bl FUN_020508fc
	cmp r0, #0
	ldrneb r0, [sp, #5]
	mov r1, r8
	orrne r0, r0, #2
	strneb r0, [sp, #5]
	ldr r0, _0213D6A4 ; =0x020A0EF8
	bl FUN_02050bdc
	cmp r0, #0
	ldrneb r0, [sp, #5]
	add r1, sp, #0xa
	mov r2, #0x10
	orrne r0, r0, #4
	strneb r0, [sp, #5]
	mov r0, r6
	bl MIi_CpuCopy16
	strb r4, [r5]
	ldr r2, [r5]
	mov r0, r9
	add r1, sp, #2
	bl FUN_ov131_0213e0e0
_0213D674:
	add r7, r7, #1
	add r6, r6, #0x2c
_0213D67C:
	ldr r0, _0213D6A8 ; =0x0209C220
	ldrh r0, [r0, #0x6a]
	cmp r7, r0
	blt _0213D594
	ldr r0, [r9, #4]
	add sp, sp, #0x188
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D698: .word unk_0209BA20
_0213D69C: .word unk_020A108A
_0213D6A0: .word unk_020A0DB0
_0213D6A4: .word unk_020A0EF8
_0213D6A8: .word unk_0209C220
	arm_func_end FUN_ov131_0213d4fc

	arm_func_start FUN_ov131_0213d6ac
FUN_ov131_0213d6ac: ; 0x0213D6AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x188
	ldr r5, _0213D850 ; =0x0209BA20
	mov r4, #1
	mov r10, r1
	add r2, sp, #0x1a
	mov r0, r5
	mov r1, r4
	ldr r11, _0213D854 ; =0x020A0EF8
	mov r6, #0
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x188
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	ldrh r1, [sp, #0x42]
	cmp r1, #0
	ldreqh r1, [sp, #0x40]
	strh r1, [r0, #0x28]
	ldrh r1, [sp, #0x4a]
	strh r1, [r0, #0x30]
	ldrh r1, [sp, #0x4c]
	strh r1, [r0, #0x32]
	ldrb r1, [sp, #0x46]
	strb r1, [r0, #0x2c]
	ldrh r1, [sp, #0x4e]
	strh r1, [r0, #0x4a]
	mov r0, r10
	bl FUN_ov131_0213e174
	ldr r0, _0213D850 ; =0x0209BA20
	mov r8, #0
	ldr r7, [r0, #0x7ec]
	sub r5, sp, #4
	and r4, r6, #0xff
	b _0213D834
_0213D744:
	ldrh r0, [r7, #0x24]
	cmp r0, #0
	beq _0213D82C
	ldrb r0, [r7, #0x2b]
	tst r0, #2
	moveq r0, #1
	movne r0, r6
	cmp r0, #0
	ldreqb r0, [r7, #0x2a]
	cmpeq r0, #1
	bne _0213D82C
	ldrh r1, [r7, #0x24]
	ldr r0, _0213D850 ; =0x0209BA20
	bl FUN_0204bc4c
	mov r9, r0
	mov r0, r11
	mov r1, r9
	bl FUN_02050bdc
	cmp r0, #0
	beq _0213D82C
	add r0, sp, #2
	mov r1, r6
	mov r2, #0x18
	bl MI_CpuFill
	ldrh r2, [r7, #0x24]
	ldr r0, _0213D858 ; =0x020A108A
	mov r1, r9
	strh r2, [sp, #2]
	ldrb r2, [r7, #0x28]
	strb r2, [sp, #4]
	bl FUN_020509d8
	cmp r0, #0
	ldrneb r0, [sp, #5]
	mov r1, r9
	orrne r0, r0, #1
	strneb r0, [sp, #5]
	ldr r0, _0213D85C ; =0x020A0DB0
	bl FUN_020508fc
	cmp r0, #0
	ldrneb r0, [sp, #5]
	mov r1, r9
	orrne r0, r0, #2
	strneb r0, [sp, #5]
	mov r0, r11
	bl FUN_02050bdc
	cmp r0, #0
	ldrneb r0, [sp, #5]
	add r1, sp, #0xa
	mov r2, #0x10
	orrne r0, r0, #4
	strneb r0, [sp, #5]
	mov r0, r7
	bl MIi_CpuCopy16
	strb r4, [r5]
	ldr r2, [r5]
	mov r0, r10
	add r1, sp, #2
	bl FUN_ov131_0213e0e0
_0213D82C:
	add r8, r8, #1
	add r7, r7, #0x2c
_0213D834:
	ldr r0, _0213D860 ; =0x0209C220
	ldrh r0, [r0, #0x6a]
	cmp r8, r0
	blt _0213D744
	mov r0, #1
	add sp, sp, #0x188
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D850: .word unk_0209BA20
_0213D854: .word unk_020A0EF8
_0213D858: .word unk_020A108A
_0213D85C: .word unk_020A0DB0
_0213D860: .word unk_0209C220
	arm_func_end FUN_ov131_0213d6ac

	arm_func_start FUN_ov131_0213d864
FUN_ov131_0213d864: ; 0x0213D864
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18c
	ldr r5, _0213DA58 ; =0x0209BA20
	mov r4, #1
	mov r9, r2
	mov r10, r1
	add r2, sp, #0x1e
	mov r0, r5
	mov r1, r4
	str r3, [sp]
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x18c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	ldrh r1, [sp, #0x46]
	cmp r1, #0
	ldreqh r1, [sp, #0x44]
	strh r1, [r0, #0x26]
	ldrh r1, [sp, #0x4e]
	strh r1, [r0, #0x30]
	ldrh r1, [sp, #0x50]
	strh r1, [r0, #0x32]
	ldrb r1, [sp, #0x4a]
	strb r1, [r0, #0x2c]
	ldrh r1, [sp, #0x52]
	strh r1, [r0, #0x34]
	mov r0, r9
	bl FUN_ov131_0213e174
	b _0213DA40
_0213D8E8:
	ldr r0, _0213DA58 ; =0x0209BA20
	mov r7, #0
	ldr r6, [r0, #0x7ec]
	mov r0, r7
	sub r5, sp, #4
	mov r4, r0
	mov r11, r7
	b _0213DA00
_0213D908:
	ldrh r0, [r6, #0x24]
	cmp r0, #0
	beq _0213D9F8
	ldrb r0, [r6, #0x2b]
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	ldreqb r0, [r6, #0x2a]
	cmpeq r0, #1
	bne _0213D9F8
	ldr r0, _0213DA5C ; =0x02099F44
	mov r1, r6
	ldr r0, [r0]
	bl FUN_ov131_0213c994
	cmp r10, r0
	bne _0213D9F8
	add r0, sp, #6
	mov r1, r11
	mov r2, #0x18
	bl MI_CpuFill
	ldrh r1, [r6, #0x24]
	ldr r0, _0213DA58 ; =0x0209BA20
	strh r1, [sp, #6]
	ldrb r1, [r6, #0x28]
	strb r11, [sp, #9]
	strb r1, [sp, #8]
	ldrh r1, [r6, #0x24]
	bl FUN_0204bc4c
	mov r8, r0
	ldr r0, _0213DA60 ; =0x020A108A
	mov r1, r8
	bl FUN_020509d8
	cmp r0, #0
	ldrneb r0, [sp, #9]
	mov r1, r8
	orrne r0, r0, #1
	strneb r0, [sp, #9]
	ldr r0, _0213DA64 ; =0x020A0DB0
	bl FUN_020508fc
	cmp r0, #0
	ldrneb r0, [sp, #9]
	mov r1, r8
	orrne r0, r0, #2
	strneb r0, [sp, #9]
	ldr r0, _0213DA68 ; =0x020A0EF8
	bl FUN_02050bdc
	cmp r0, #0
	ldrneb r0, [sp, #9]
	add r1, sp, #0xe
	mov r2, #0x10
	orrne r0, r0, #4
	strneb r0, [sp, #9]
	mov r0, r6
	bl MIi_CpuCopy16
	strb r4, [r5]
	ldr r2, [r5]
	mov r0, r9
	add r1, sp, #6
	bl FUN_ov131_0213e0e0
_0213D9F8:
	add r7, r7, #1
	add r6, r6, #0x2c
_0213DA00:
	ldr r0, _0213DA6C ; =0x0209C220
	ldrh r0, [r0, #0x6a]
	cmp r7, r0
	blt _0213D908
	ldr r0, [r9, #4]
	cmp r0, #0
	bne _0213DA40
	ldr r0, [sp]
	cmp r0, #0
	addne r10, r10, #1
	subeq r10, r10, #1
	cmp r10, #0
	movlt r10, #0x2e
	blt _0213DA40
	cmp r10, #0x2e
	movgt r10, #1
_0213DA40:
	ldr r0, [r9, #4]
	cmp r0, #0
	beq _0213D8E8
	mov r0, r10
	add sp, sp, #0x18c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213DA58: .word unk_0209BA20
_0213DA5C: .word unk_02099F44
_0213DA60: .word unk_020A108A
_0213DA64: .word unk_020A0DB0
_0213DA68: .word unk_020A0EF8
_0213DA6C: .word unk_0209C220
	arm_func_end FUN_ov131_0213d864

	arm_func_start FUN_ov131_0213da70
FUN_ov131_0213da70: ; 0x0213DA70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18c
	ldr r4, _0213DC50 ; =0x0209BA20
	mov r10, r2
	add r2, sp, #0x1e
	mov r0, r4
	mov r11, #0
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x18c
	moveq r0, r11
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_0207249c
	ldrh r2, [sp, #0x46]
	mov r1, r0
	add r0, sp, #0x1e
	cmp r2, #0
	ldreqh r2, [sp, #0x44]
	strh r2, [r1, #0x26]
	ldrh r3, [sp, #0x4e]
	mov r2, #0x1f
	strh r3, [r1, #0x30]
	ldrh r3, [sp, #0x50]
	strh r3, [r1, #0x32]
	ldrb r3, [sp, #0x4a]
	strb r3, [r1, #0x2c]
	ldrh r3, [sp, #0x52]
	strh r3, [r1, #0x34]
	bl MI_CpuCopy8
	mov r0, r10
	bl FUN_ov131_0213e174
	ldr r1, _0213DC50 ; =0x0209BA20
	mov r0, #0
	str r0, [sp]
	ldr r7, [r1, #0x7ec]
	b _0213DC30
_0213DB08:
	ldrh r1, [r7, #0x24]
	cmp r1, #0
	ldrne r0, _0213DC54 ; =0x00000449
	cmpne r1, r0
	beq _0213DC20
	ldrb r0, [r7, #0x2b]
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _0213DC20
	mov r8, #0
	sub r5, sp, #4
	and r4, r11, #0xff
	add r6, sp, #6
	b _0213DC18
_0213DB48:
	mov r1, r8, lsl #3
	add r0, sp, #0x6a
	ldrh r2, [r7, #0x24]
	ldrh r0, [r0, r1]
	cmp r2, r0
	bne _0213DC14
	mov r0, r6
	mov r1, r11
	mov r2, #0x18
	bl MI_CpuFill
	ldrh r1, [r7, #0x24]
	ldr r0, _0213DC50 ; =0x0209BA20
	strh r1, [sp, #6]
	ldrb r1, [r7, #0x28]
	strb r1, [sp, #8]
	ldrh r1, [r7, #0x24]
	bl FUN_0204bc4c
	mov r9, r0
	ldr r0, _0213DC58 ; =0x020A0C68
	mov r1, r9
	bl FUN_02050820
	cmp r0, #0
	ldrneb r0, [sp, #9]
	mov r1, r9
	orrne r0, r0, #1
	strneb r0, [sp, #9]
	ldr r0, _0213DC5C ; =0x020A0DB0
	bl FUN_020508fc
	cmp r0, #0
	ldrneb r0, [sp, #9]
	mov r1, r9
	orrne r0, r0, #2
	strneb r0, [sp, #9]
	ldr r0, _0213DC60 ; =0x020A0EF8
	bl FUN_02050bdc
	cmp r0, #0
	ldrneb r0, [sp, #9]
	add r1, sp, #0xe
	orrne r0, r0, #4
	strneb r0, [sp, #9]
	ldrb r2, [sp, #9]
	mov r0, r7
	orr r2, r2, #8
	strb r2, [sp, #9]
	mov r2, #0x10
	bl MIi_CpuCopy16
	strb r4, [r5]
	ldr r2, [r5]
	mov r0, r10
	mov r1, r6
	bl FUN_ov131_0213e0e0
_0213DC14:
	add r8, r8, #1
_0213DC18:
	cmp r8, #0x20
	blt _0213DB48
_0213DC20:
	ldr r0, [sp]
	add r7, r7, #0x2c
	add r0, r0, #1
	str r0, [sp]
_0213DC30:
	ldr r0, _0213DC64 ; =0x0209C220
	ldrh r1, [r0, #0x6a]
	ldr r0, [sp]
	cmp r0, r1
	blt _0213DB08
	mov r0, #1
	add sp, sp, #0x18c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213DC50: .word unk_0209BA20
_0213DC54: .word 0x00000449
_0213DC58: .word unk_020A0C68
_0213DC5C: .word unk_020A0DB0
_0213DC60: .word unk_020A0EF8
_0213DC64: .word unk_0209C220
	arm_func_end FUN_ov131_0213da70

	arm_func_start FUN_ov131_0213dc68
FUN_ov131_0213dc68: ; 0x0213DC68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r0, _0213DEF8 ; =0x0209C220
	mov r10, r1
	ldrh r11, [r0, #0x6a]
	mov r9, r2
	mov r6, #0
	mov r8, r3
	strh r6, [r9]
	mov r0, r10
	strh r6, [r8]
	bl FUN_ov131_0213df10
	mov r0, r10
	mov r1, #0x2e
	bl FUN_ov131_0213df80
	b _0213DCD4
_0213DCA4:
	ldr r1, [r10]
	ldr r0, [r10, #0xc]
	add r4, r6, r1
	ldr r1, [r10, #0x14]
	add r0, r0, r4, lsr #8
	bl _u32_div_f
	ldr r0, [r10, #8]
	and r2, r4, #0xff
	ldr r1, [r0, r1, lsl #2]
	mov r0, #0
	add r6, r6, #1
	str r0, [r1, r2, lsl #2]
_0213DCD4:
	ldr r0, [r10, #4]
	cmp r6, r0
	blo _0213DCA4
	ldr r0, _0213DEFC ; =0x0209BA20
	mov r6, #0
	ldr r5, [r0, #0x7ec]
	mvn r0, #0
	str r0, [sp]
	b _0213DDD4
_0213DCF8:
	ldrh r0, [r5, #0x24]
	cmp r0, #0
	beq _0213DDCC
	ldrb r0, [r5, #0x2a]
	cmp r0, #1
	bne _0213DDCC
	ldrb r0, [r5, #0x2b]
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _0213DDCC
	ldrh r1, [r5, #0x24]
	ldr r0, _0213DEFC ; =0x0209BA20
	bl FUN_0204bc4c
	mov r4, r0
	ldr r0, [sp]
	cmp r4, r0
	beq _0213DDCC
	ldr r0, _0213DF00 ; =0x02099F44
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov131_0213c994
	mov r7, r0
	ldr r0, _0213DF04 ; =0x020A108A
	mov r1, r4
	bl FUN_020509d8
	cmp r0, #0
	bne _0213DD80
	ldr r0, _0213DF08 ; =0x020A0DB0
	mov r1, r4
	bl FUN_020508fc
	cmp r0, #0
	beq _0213DD8C
_0213DD80:
	ldrh r0, [r9]
	add r0, r0, #1
	strh r0, [r9]
_0213DD8C:
	sub r2, r7, #1
	ldrh r0, [r8]
	add r0, r0, #1
	strh r0, [r8]
	ldr r1, [r10]
	ldr r0, [r10, #0xc]
	add r4, r2, r1
	add r0, r0, r4, lsr #8
	ldr r1, [r10, #0x14]
	bl _u32_div_f
	and r2, r4, #0xff
	ldr r0, [r10, #8]
	ldr r1, [r0, r1, lsl #2]
	ldr r0, [r1, r2, lsl #2]
	add r0, r0, #1
	str r0, [r1, r2, lsl #2]
_0213DDCC:
	add r6, r6, #1
	add r5, r5, #0x2c
_0213DDD4:
	cmp r6, r11
	blo _0213DCF8
	mov r7, #0
	mov r6, r7
	mov r11, #1
	ldr r5, _0213DF0C ; =0x66666667
	mov r4, #0xa
	b _0213DE9C
_0213DDF4:
	ldr r1, [r10]
	ldr r0, [r10, #0xc]
	add r8, r6, r1
	ldr r1, [r10, #0x14]
	add r0, r0, r8, lsr #8
	bl _u32_div_f
	ldr r0, [r10, #8]
	ldr r2, [r10]
	ldr r3, [r0, r1, lsl #2]
	and r1, r8, #0xff
	ldr r8, [r3, r1, lsl #2]
	ldr r0, [r10, #0xc]
	add r9, r6, r2
	ldr r1, [r10, #0x14]
	add r0, r0, r9, lsr #8
	bl _u32_div_f
	smull r3, r2, r5, r8
	ldr r12, [r10, #8]
	mov r0, r8, lsr #0x1f
	ldr r3, [r12, r1, lsl #2]
	add r2, r0, r2, asr #2
	and r1, r9, #0xff
	smull r2, r9, r4, r2
	subs r2, r8, r2
	smull r2, r8, r5, r8
	add r8, r0, r8, asr #2
	str r8, [r3, r1, lsl #2]
	ldr r1, [r10]
	moveq r9, r7
	add r8, r6, r1
	ldr r0, [r10, #0xc]
	ldr r1, [r10, #0x14]
	add r0, r0, r8, lsr #8
	movne r9, r11
	bl _u32_div_f
	ldr r0, [r10, #8]
	and r2, r8, #0xff
	ldr r1, [r0, r1, lsl #2]
	add r6, r6, #1
	ldr r0, [r1, r2, lsl #2]
	add r0, r0, r9
	str r0, [r1, r2, lsl #2]
_0213DE9C:
	ldr r0, [r10, #4]
	cmp r6, r0
	blo _0213DDF4
	mov r8, #0
	mov r6, r8
	b _0213DEE4
_0213DEB4:
	ldr r1, [r10]
	ldr r0, [r10, #0xc]
	add r4, r6, r1
	ldr r1, [r10, #0x14]
	add r0, r0, r4, lsr #8
	bl _u32_div_f
	ldr r2, [r10, #8]
	and r0, r4, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r6, r6, #1
	ldr r0, [r1, r0, lsl #2]
	add r8, r8, r0
_0213DEE4:
	ldr r0, [r10, #4]
	cmp r6, r0
	blo _0213DEB4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213DEF8: .word unk_0209C220
_0213DEFC: .word unk_0209BA20
_0213DF00: .word unk_02099F44
_0213DF04: .word unk_020A108A
_0213DF08: .word unk_020A0DB0
_0213DF0C: .word 0x66666667
	arm_func_end FUN_ov131_0213dc68

	arm_func_start FUN_ov131_0213df10
FUN_ov131_0213df10: ; 0x0213DF10
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r4, #4]
	cmp r0, #2
	bls _0213DF6C
	mov r5, r1
_0213DF30:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl FUN_0201e078
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r1, #1
	cmp r1, r0
	ldr r0, [r4, #0x10]
	str r1, [r4, #0xc]
	sub r0, r0, #1
	streq r5, [r4, #0xc]
	str r0, [r4, #0x10]
	cmp r0, #2
	bhi _0213DF30
_0213DF6C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0x80
	strne r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov131_0213df10

	arm_func_start FUN_ov131_0213df80
FUN_ov131_0213df80: ; 0x0213DF80
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #4]
	cmp r1, r12
	bls _0213DF9C
	sub r1, r1, r12
	bl FUN_ov131_0213dfbc
	ldmfd sp!, {r3, pc}
_0213DF9C:
	ldmhsfd sp!, {r3, pc}
	mov r2, #0
	sub r3, sp, #4
	strb r2, [r3]
	ldr r2, [r3]
	sub r1, r12, r1
	bl FUN_ov131_0213e044
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_0213df80

	arm_func_start FUN_ov131_0213dfbc
FUN_ov131_0213dfbc: ; 0x0213DFBC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r5, #0x10]
	ldr r1, [r5]
	cmp r0, #0
	moveq r2, #0
	subne r0, r0, #1
	movne r2, r0, lsl #8
	ldr r0, [r5, #4]
	add r0, r1, r0
	sub r1, r2, r0
	cmp r4, r1
	bls _0213E00C
	mov r0, r5
	sub r1, r4, r1
	bl FUN_ov131_0213f734
_0213E00C:
	add r6, sp, #4
	ldr r2, [r5, #4]
	mov r0, r6
	mov r1, r5
	bl FUN_ov131_0213f674
	add r12, r5, #4
	add r0, sp, #0x18
	mov r1, r4
	mov r2, r6
	add r3, r5, #8
	str r12, [sp]
	bl FUN_ov131_0213eb00
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov131_0213dfbc

	arm_func_start FUN_ov131_0213e044
FUN_ov131_0213e044: ; 0x0213E044
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #4]
	ldr r2, [r0, #0x10]
	sub r1, r3, r1
	cmp r2, #0
	moveq r2, #0
	str r1, [r0, #4]
	subne r1, r2, #1
	movne r2, r1, lsl #8
	add r5, r0, #8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r0, r0, r1
	sub r6, r2, r0
	cmp r6, #0x200
	addlo sp, sp, #4
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
_0213E09C:
	ldmib r5, {r0, r1}
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r5, #0xc]
	sub r0, r0, #1
	str r2, [r5, #8]
	bl _u32_div_f
	ldr r7, [r5]
	mov r8, r1
	ldr r0, [r7, r8, lsl #2]
	bl FUN_0201e078
	sub r6, r6, #0x100
	str r4, [r7, r8, lsl #2]
	cmp r6, #0x200
	bhs _0213E09C
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_0213e044

	arm_func_start FUN_ov131_0213e0e0
FUN_ov131_0213e0e0: ; 0x0213E0E0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	cmp r0, #0
	subne r1, r0, #1
	moveq r2, #0
	movne r0, #0x2a
	mulne r2, r1, r0
	ldr r1, [r5]
	ldr r0, [r5, #4]
	add r0, r1, r0
	subs r0, r2, r0
	bne _0213E128
	mov r0, r5
	mov r1, #1
	bl FUN_ov131_0213e1e4
_0213E128:
	ldr r2, [r5, #4]
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov131_0213fd14
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0213E160
	mov r2, #6
_0213E148:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _0213E148
_0213E160:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov131_0213e0e0

	arm_func_start FUN_ov131_0213e174
FUN_ov131_0213e174: ; 0x0213E174
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r4, #4]
	cmp r0, #2
	bls _0213E1D0
	mov r5, r1
_0213E194:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl FUN_0201e078
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r1, #1
	cmp r1, r0
	ldr r0, [r4, #0x10]
	str r1, [r4, #0xc]
	sub r0, r0, #1
	streq r5, [r4, #0xc]
	str r0, [r4, #0x10]
	cmp r0, #2
	bhi _0213E194
_0213E1D0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0x15
	strne r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov131_0213e174

	arm_func_start FUN_ov131_0213e1e4
FUN_ov131_0213e1e4: ; 0x0213E1E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x13c
	ldr r2, _0213E70C ; =0x86186187
	mov r10, r0
	umull r2, r3, r1, r2
	sub r2, r1, r3
	add r3, r3, r2, lsr #1
	mov r4, #0x2a
	mov r3, r3, lsr #5
	umull r2, r3, r4, r3
	subs r3, r1, r2
	ldr r0, _0213E70C ; =0x86186187
	mov r6, #0
	umull r0, r2, r1, r0
	movne r3, #1
	sub r0, r1, r2
	moveq r3, r6
	add r2, r2, r0, lsr #1
	add r7, r3, r2, lsr #5
	add r4, sp, #0x28
	b _0213E2A4
_0213E238:
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r1
	ldr r5, [r2, r1, lsl #2]
	add r1, r0, #1
	ldr r0, [r10, #0x14]
	str r1, [r10, #0xc]
	cmp r1, r0
	streq r6, [r10, #0xc]
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #0xc]
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r10, #0x14]
	sub r0, r0, #1
	str r2, [r10, #0x10]
	bl _u32_div_f
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r5, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x28]
	bl FUN_ov131_0213e858
	ldr r0, [r10]
	sub r7, r7, #1
	sub r0, r0, #0x2a
	str r0, [r10]
_0213E2A4:
	cmp r7, #0
	beq _0213E2B8
	ldr r0, [r10]
	cmp r0, #0x2a
	bhs _0213E238
_0213E2B8:
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _0213E710 ; =0x0214CDA8
	ldr r2, [r1]
	tst r2, #1
	orreq r2, r2, #1
	streq r2, [r1]
	ldreq r0, _0213E714 ; =0x0214C89C
	mvneq r3, #0x2d
	streq r3, [r0]
	mov r1, #0x2a
	ldr r3, _0213E714 ; =0x0214C89C
	mul r0, r7, r1
	ldr r2, [r3]
	cmp r0, r2
	bhi _0213E344
	ldr r2, _0213E710 ; =0x0214CDA8
	ldr r5, [r2]
	tst r5, #1
	subeq r4, r1, #0x58
	orreq r1, r5, #1
	streq r1, [r2]
	ldr r2, [r10, #0x10]
	streq r4, [r3]
	ldr r1, _0213E714 ; =0x0214C89C
	cmp r2, #0
	ldr r3, [r1]
	moveq r1, #0
	subne r2, r2, #1
	movne r1, #0x2a
	mulne r1, r2, r1
	sub r0, r3, r0
	cmp r1, r0
	bls _0213E34C
_0213E344:
	ldr r0, _0213E718 ; =0x0214C910
	bl FUN_ov131_0213e720
_0213E34C:
	ldr r0, [r10, #0x14]
	mov r1, #0
	cmp r0, #0
	subne r1, r0, #1
	ldr r0, [r10, #0x10]
	add r0, r7, r0
	cmp r0, r1
	bhi _0213E3E0
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0213E71C ; =0x0214C8C0
	add r9, sp, #0x24
	mov r5, #0x3f0
_0213E384:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0213E3A0
	mov r0, r4
	bl FUN_02023ab4
	bl FUN_02021040
_0213E3A0:
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	ldr r1, [r10, #0x14]
	add r0, r2, r0
	sub r0, r0, #1
	bl _u32_div_f
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r8, [r2, r1, lsl #2]
	mov r1, r9
	str r6, [sp, #0x24]
	bl FUN_ov131_0213e858
	subs r7, r7, #1
	bne _0213E384
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213E3E0:
	movs r1, #0
	add r4, sp, #0x12c
	str r1, [sp, #0x124]
	str r1, [sp, #0x128]
	str r1, [sp, #0xb4]
	str r1, [sp, #0xb8]
	str r1, [sp, #0xbc]
	str r1, [sp, #0xc0]
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	add r8, sp, #0xb4
	beq _0213E420
	add r0, r1, r1
	bl _u32_div_f
_0213E420:
	ldr r5, [r8]
	ldr r2, [r8, #4]
	ldr r0, [r8, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	add r8, r5, r1, lsl #2
	ldrb r1, [sp, #0x10]
	add r0, sp, #0xc4
	str r8, [sp, #0xc4]
	str r5, [sp, #0xc8]
	str r5, [sp, #0xd8]
	str r3, [sp, #0xcc]
	str r2, [sp, #0xd0]
	str r0, [sp, #4]
	add r0, sp, #0xd4
	strb r1, [sp, #8]
	sub r5, sp, #0xc
	str r3, [sp, #0xd4]
	str r3, [sp, #0xdc]
	str r2, [sp, #0xe0]
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	ldmia r5, {r1, r2, r3}
	bl FUN_ov131_021409dc
	add r0, sp, #0xb4
	bl FUN_ov131_021400bc
	ldr r0, [r10, #0x10]
	mov r2, #0
	add r0, r7, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r10, #0x14]
	add r9, sp, #0x12c
	cmp r1, #0
	subne r2, r1, #1
	cmp r0, r2, lsl #1
	addhi r0, sp, #0x1c
	mov r1, r2, lsl #1
	addls r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r1, [r0]
	mov r0, r9
	bl FUN_ov131_0213e730
	add r1, sp, #0x18
	mov r0, r9
	str r6, [sp, #0x18]
	bl FUN_ov131_0213e858
	cmp r7, #0
	beq _0213E548
	ldr r11, _0213E71C ; =0x0214C8C0
	add r4, sp, #0x14
	mov r5, #0x3f0
_0213E4F4:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0213E510
	mov r0, r11
	bl FUN_02023ab4
	bl FUN_02021040
_0213E510:
	ldr r2, [r9, #4]
	ldr r0, [r9, #8]
	ldr r1, [r9, #0xc]
	add r0, r2, r0
	sub r0, r0, #1
	bl _u32_div_f
	ldr r2, [r9]
	mov r0, r9
	str r8, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x14]
	bl FUN_ov131_0213e858
	subs r7, r7, #1
	bne _0213E4F4
_0213E548:
	ldr r0, [r10, #0x10]
	mov r5, #0
	cmp r0, #0
	beq _0213E6B0
	ldr r1, [r10, #0x14]
	cmp r1, #0
	moveq r1, r5
	beq _0213E578
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	add r0, r2, r0
	bl _u32_div_f
_0213E578:
	ldr r6, [r10, #8]
	ldr r3, [r10, #0xc]
	add r2, r6, r1, lsl #2
	ldr r0, [r10, #0x14]
	add r4, r6, r3, lsl #2
	add r3, r6, r0, lsl #2
	add r0, sp, #0xa4
	str r2, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r4, [sp, #0xac]
	str r3, [sp, #0xb0]
	mvn r1, #0
	str r2, [sp, #0xe4]
	str r6, [sp, #0xe8]
	str r4, [sp, #0xec]
	str r3, [sp, #0xf0]
	bl FUN_ov131_021400f0
	ldr r1, [r10, #8]
	ldr r7, [sp, #0xa8]
	ldr r6, [sp, #0xac]
	ldr r8, [sp, #0xa4]
	ldr r3, [sp, #0xb0]
	ldr r0, [r10, #0xc]
	ldr r2, [r9]
	add r4, r1, r0, lsl #2
	ldr r0, [r10, #0x14]
	str r7, [sp, #0xf8]
	str r7, [sp, #0x40]
	str r7, [sp, #0x88]
	str r7, [sp, #0x74]
	add r7, r1, r0, lsl #2
	ldr r0, [r9, #4]
	str r6, [sp, #0xfc]
	str r6, [sp, #0x44]
	str r6, [sp, #0x8c]
	str r6, [sp, #0x78]
	add r6, r2, r0, lsl #2
	ldr r0, [r9, #0xc]
	and r5, r5, #0xff
	add r0, r2, r0, lsl #2
	str r3, [sp, #0x100]
	str r1, [sp, #0x108]
	str r3, [sp, #0x48]
	str r1, [sp, #0x30]
	str r3, [sp, #0x90]
	str r3, [sp, #0x7c]
	str r1, [sp, #0x98]
	str r1, [sp, #0x60]
	str r8, [sp, #0x70]
	add r1, sp, #0x4c
	str r2, [sp, #0x118]
	str r2, [sp, #0x50]
	add r2, sp, #0x5c
	str r0, [sp, #0x120]
	str r0, [sp, #0x58]
	add r3, sp, #0x70
	str r7, [sp, #0x68]
	mov r0, r9
	str r4, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x54]
	str r8, [sp, #0xf4]
	str r4, [sp, #0x104]
	str r4, [sp, #0x10c]
	str r8, [sp, #0x3c]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x34]
	str r8, [sp, #0x84]
	str r4, [sp, #0x94]
	str r4, [sp, #0x9c]
	str r7, [sp, #0x110]
	str r6, [sp, #0x114]
	str r6, [sp, #0x11c]
	str r7, [sp, #0x38]
	str r7, [sp, #0xa0]
	strb r5, [sp]
	bl FUN_ov131_0213ec20
_0213E6B0:
	ldr r2, [r10, #8]
	ldr r1, [r9]
	add r0, sp, #0x124
	str r1, [r10, #8]
	str r2, [r9]
	ldr r2, [r10, #0xc]
	ldr r1, [r9, #4]
	str r1, [r10, #0xc]
	str r2, [r9, #4]
	ldr r2, [r10, #0x10]
	ldr r1, [r9, #8]
	str r1, [r10, #0x10]
	str r2, [r9, #8]
	ldr r2, [r10, #0x14]
	ldr r1, [r9, #0xc]
	str r1, [r10, #0x14]
	ldr r1, [r9, #8]
	str r2, [r9, #0xc]
	sub r1, r1, r1
	str r1, [r9, #8]
	bl FUN_ov131_0213fc44
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213E70C: .word 0x86186187
_0213E710: .word ov131_0214CDA8
_0213E714: .word ov131_0214C89C
_0213E718: .word ov131_0214C910
_0213E71C: .word ov131_0214C8C0
	arm_func_end FUN_ov131_0213e1e4

	arm_func_start FUN_ov131_0213e720
FUN_ov131_0213e720: ; 0x0213E720
	stmfd sp!, {r3, lr}
	bl FUN_02023ab4
	bl FUN_02021040
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_0213e720

	arm_func_start FUN_ov131_0213e730
FUN_ov131_0213e730: ; 0x0213E730
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r1, r0
	addls sp, sp, #0x38
	ldmlsfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	add r0, r6, #0xc
	str r0, [sp, #0x34]
	str r4, [sp, #0x24]
	str r4, [sp, #0x28]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x30]
	sub r0, sp, #4
	strb r4, [r0]
	ldr r2, [r0]
	add r0, sp, #0x24
	bl FUN_ov131_0213fe38
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _0213E7A8
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	add r0, r2, r0
	bl _u32_div_f
	mov r4, r1
_0213E7A8:
	ldr r2, [r6]
	mov r5, #0
	add r0, r2, r4, lsl #2
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r4, sp, #0x24
	add r1, r2, r0, lsl #2
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	add r0, r2, r0, lsl #2
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r0, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	add r1, sp, #0x14
	add r2, sp, #4
	mov r0, r4
	bl FUN_ov131_0213ffbc
	str r5, [r6, #8]
	ldr r1, [r6]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r6]
	str r1, [sp, #0x24]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x28]
	mov r0, r4
	str r1, [r6, #4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [r6, #8]
	str r5, [sp, #0x2c]
	ldr r2, [r6, #0xc]
	ldr r1, [r3]
	str r1, [r6, #0xc]
	str r2, [r3]
	bl FUN_ov131_0213fe04
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov131_0213e730

	arm_func_start FUN_ov131_0213e858
FUN_ov131_0213e858: ; 0x0213E858
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r3, [r6, #8]
	mov r4, r1
	ldr r1, [r6, #0xc]
	add r2, r3, #1
	cmp r2, r1
	bhs _0213E8AC
	ldr r0, [r6, #4]
	add r0, r0, r3
	bl _u32_div_f
	ldr r0, [r6]
	add sp, sp, #0x38
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [r6, #8]
	add r0, r0, #1
	str r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0213E8AC:
	mov r5, #0
	add r2, r6, #0xc
	mov r1, #1
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	str r5, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r2, [sp, #0x34]
	bl FUN_ov131_0213e9dc
	mov r1, r0
	sub r0, sp, #4
	strb r5, [r0]
	ldr r2, [r0]
	add r0, sp, #0x24
	bl FUN_ov131_0213fe38
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [r6, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _0213E92C
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	add r0, r2, r0
	bl _u32_div_f
_0213E92C:
	ldr r2, [r6]
	mov r5, #0
	add r0, r2, r1, lsl #2
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r4, sp, #0x24
	add r1, r2, r0, lsl #2
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	add r0, r2, r0, lsl #2
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r0, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	add r1, sp, #0x14
	add r2, sp, #4
	mov r0, r4
	bl FUN_ov131_0213feb4
	str r5, [r6, #8]
	ldr r1, [r6]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r6]
	str r1, [sp, #0x24]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x28]
	mov r0, r4
	str r1, [r6, #4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [r6, #8]
	str r5, [sp, #0x2c]
	ldr r2, [r6, #0xc]
	ldr r1, [r3]
	str r1, [r6, #0xc]
	str r2, [r3]
	bl FUN_ov131_0213fe04
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov131_0213e858

	arm_func_start FUN_ov131_0213e9dc
FUN_ov131_0213e9dc: ; 0x0213E9DC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _0213EAD8 ; =0x0214CDAC
	mov r5, #0
	ldr r3, [r2]
	tst r3, #1
	orreq r3, r3, #1
	ldreq r1, _0213EADC ; =0x0214C8A0
	mvneq r4, #0xc0000001
	streq r3, [r2]
	streq r4, [r1]
	ldr r1, [r0, #0xc]
	ldr r0, _0213EADC ; =0x0214C8A0
	cmp r1, #0
	subne r5, r1, #1
	ldr r4, [r0]
	ldr r1, [sp, #0x1c]
	sub r0, r4, r5
	cmp r1, r0
	bls _0213EA34
	bl FUN_ov131_0213eae8
_0213EA34:
	ldr r0, _0213EAE0 ; =0xAAAAAAAB
	umull r0, r1, r4, r0
	mov r1, r1, lsr #1
	cmp r5, r1
	bhs _0213EA88
	add r1, r5, #1
	ldr r0, _0213EAE4 ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x1c]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x1c
	addls r0, sp, #4
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r5, r0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0213EA88:
	cmp r5, r1, lsl #1
	bhs _0213EAC4
	ldr r0, [sp, #0x1c]
	add r1, r5, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x1c
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r5, r0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0213EAC4:
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0213EAD8: .word ov131_0214CDAC
_0213EADC: .word ov131_0214C8A0
_0213EAE0: .word 0xAAAAAAAB
_0213EAE4: .word 0xCCCCCCCD
	arm_func_end FUN_ov131_0213e9dc

	arm_func_start FUN_ov131_0213eae8
FUN_ov131_0213eae8: ; 0x0213EAE8
	stmfd sp!, {r3, lr}
	ldr r0, _0213EAFC ; =0x0214C928
	bl FUN_02023ab4
	bl FUN_02021040
	ldmfd sp!, {r3, pc}
_0213EAFC: .word ov131_0214C928
	arm_func_end FUN_ov131_0213eae8

	arm_func_start FUN_ov131_0213eb00
FUN_ov131_0213eb00: ; 0x0213EB00
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r1, [sp, #0x2c]
	mov r10, r0
	mov r9, r2
	cmp r1, #0
	ldr r8, [sp, #0x38]
	beq _0213EBE8
	ldr r1, [sp, #0x2c]
	add r5, sp, #0x2c
	add r6, sp, #0
	mov r4, #0
_0213EB34:
	ldr r2, [r9, #0x10]
	cmp r2, #0
	ldrne r0, [r9]
	ldrne r0, [r0]
	addne r0, r0, #0x400
	moveq r0, r2
	sub r2, r0, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	movhi r0, r6
	str r2, [sp]
	movls r0, r5
	ldr r7, [r0]
	ldr r0, [r9, #0x10]
	mov r1, r4
	mov r2, r7, lsl #2
	bl FUN_02021940
	ldr r1, [r8]
	sub r0, r7, #1
	add r1, r1, r7
	str r1, [r8]
	ldr r1, [r9, #0x10]
	ldr r2, [r9]
	add r0, r1, r0, lsl #2
	add r1, r0, #4
	str r1, [r9, #0x10]
	ldr r0, [r2]
	add r0, r0, #0x400
	cmp r1, r0
	bne _0213EBD8
	ldr r0, [r9, #0xc]
	add r1, r2, #4
	cmp r1, r0
	ldreq r0, [r9, #4]
	str r1, [r9]
	streq r0, [r9]
	ldr r0, [r9]
	ldr r0, [r0]
	str r0, [r9, #0x10]
_0213EBD8:
	ldr r0, [sp, #0x2c]
	subs r1, r0, r7
	str r1, [sp, #0x2c]
	bne _0213EB34
_0213EBE8:
	ldr r0, [r9]
	str r0, [r10]
	ldr r0, [r9, #4]
	str r0, [r10, #4]
	ldr r0, [r9, #8]
	str r0, [r10, #8]
	ldr r0, [r9, #0xc]
	str r0, [r10, #0xc]
	ldr r0, [r9, #0x10]
	str r0, [r10, #0x10]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov131_0213eb00

	arm_func_start FUN_ov131_0213ec20
FUN_ov131_0213ec20: ; 0x0213EC20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b4
	mov r9, r2
	mov r8, r3
	ldrb r2, [r9, #0x10]
	ldrb r7, [r8, #0x10]
	mov r10, r0
	str r1, [sp]
	ldr r0, [r8, #8]
	ldr r1, [r8, #0xc]
	ldr r6, [r9]
	ldr r5, [r9, #4]
	ldr r4, [r9, #8]
	ldr r3, [r9, #0xc]
	ldr r12, [r8]
	ldr r11, [r8, #4]
	str r0, [sp, #0x170]
	str r0, [sp, #0x74]
	str r1, [sp, #0x174]
	str r1, [sp, #0x78]
	add r0, sp, #0x6c
	add r1, sp, #0x58
	str r12, [sp, #0x168]
	str r11, [sp, #0x16c]
	strb r7, [sp, #0x178]
	str r6, [sp, #0x17c]
	str r5, [sp, #0x180]
	strb r2, [sp, #0x18c]
	str r4, [sp, #0x184]
	str r12, [sp, #0x6c]
	str r11, [sp, #0x70]
	strb r7, [sp, #0x7c]
	str r3, [sp, #0x188]
	str r6, [sp, #0x58]
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	strb r2, [sp, #0x68]
	bl FUN_ov131_02140134
	movs r4, r0
	addeq sp, sp, #0x1b4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	ldr r3, [r10]
	ldr r1, [r10, #4]
	ldr r2, [r0]
	add r7, r3, r1, lsl #2
	sub r1, r2, r7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r2, r7
	mov r5, r0, asr #2
	ldrlo r0, [r10, #0xc]
	mov r6, #0
	addlo r5, r5, r0
	ldr r0, [r10, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r4, r0
	ldrls r2, [r10, #8]
	subls r0, r0, r4
	cmpls r2, r0
	bhi _0213EFFC
	str r7, [sp, #0x1a4]
	ldr r6, [r10]
	sub r0, r2, r5
	str r0, [sp, #8]
	str r6, [sp, #0x1a8]
	ldr r1, [sp, #8]
	ldr r0, [r10, #4]
	cmp r5, r1
	add r1, r6, r0, lsl #2
	str r1, [sp, #4]
	str r1, [sp, #0x1ac]
	ldr r1, [r10, #0xc]
	add r11, r6, r1, lsl #2
	str r11, [sp, #0x1b0]
	bhs _0213EE40
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov131_021400f0
	ldr r0, [r10, #8]
	ldr r3, [sp, #0x1a4]
	ldr r2, [r10]
	add r1, r0, r4
	sub r2, r3, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	stmib r10, {r0, r1}
	cmp r5, #0
	beq _0213EF70
	ldr r2, [sp, #0x1b0]
	ldr r10, [sp, #0x1a4]
	ldr r4, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	str r2, [sp, #0x134]
	ldr r2, [sp, #4]
	add r0, sp, #0x48
	mov r1, r5
	str r10, [sp, #0x128]
	str r4, [sp, #0x12c]
	str r3, [sp, #0x130]
	str r7, [sp, #0x48]
	str r6, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r11, [sp, #0x54]
	bl FUN_ov131_021400f0
	ldr r2, [r0]
	add r1, sp, #0x148
	str r2, [sp, #0x138]
	ldr r3, [r0, #4]
	add r2, sp, #0x138
	str r3, [sp, #0x13c]
	ldr r4, [r0, #8]
	add r3, sp, #0x128
	str r4, [sp, #0x140]
	ldr r4, [r0, #0xc]
	add r0, sp, #0x158
	str r4, [sp, #0x144]
	ldr r4, [sp, #4]
	str r7, [sp, #0x148]
	str r6, [sp, #0x14c]
	str r4, [sp, #0x150]
	str r11, [sp, #0x154]
	bl FUN_ov131_0213f50c
	ldr r3, [sp, #0x158]
	ldr r2, [sp, #0x15c]
	ldr r1, [sp, #0x160]
	ldr r0, [sp, #0x164]
	str r3, [sp, #0x1a4]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
	b _0213EF70
_0213EE40:
	add r2, r2, r4
	cmp r1, #0
	str r2, [r10, #8]
	moveq r1, #0
	beq _0213EE5C
	add r0, r0, r2
	bl _u32_div_f
_0213EE5C:
	ldr r5, [r10]
	ldr r2, [r10, #4]
	ldr r0, [r10, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	ldr r0, [sp, #8]
	add r1, r5, r1, lsl #2
	str r1, [sp, #0x1a4]
	str r5, [sp, #0x1a8]
	str r3, [sp, #0x1ac]
	str r2, [sp, #0x1b0]
	cmp r0, #0
	beq _0213EF64
	add r0, sp, #0x28
	str r1, [sp, #0xe8]
	str r1, [sp, #0x28]
	str r5, [sp, #0xec]
	str r3, [sp, #0xf0]
	str r2, [sp, #0xf4]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	rsb r1, r4, #0
	bl FUN_ov131_021400f0
	ldr r2, [r0]
	ldr r1, [sp, #8]
	str r2, [sp, #0xf8]
	ldr r2, [r0, #4]
	add r1, r4, r1
	str r2, [sp, #0xfc]
	ldr r2, [r0, #8]
	ldr r6, [sp, #0x1a4]
	str r2, [sp, #0x100]
	ldr r7, [r0, #0xc]
	ldr r5, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	ldr r2, [sp, #0x1b0]
	add r0, sp, #0x38
	str r7, [sp, #0x104]
	str r6, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	rsb r1, r1, #0
	bl FUN_ov131_021400f0
	ldr r2, [r0]
	add r1, sp, #0x108
	str r2, [sp, #0x108]
	ldr r3, [r0, #4]
	add r2, sp, #0xf8
	str r3, [sp, #0x10c]
	ldr r5, [r0, #8]
	add r3, sp, #0xe8
	str r5, [sp, #0x110]
	ldr r5, [r0, #0xc]
	add r0, sp, #0x118
	str r5, [sp, #0x114]
	bl FUN_ov131_0213f384
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	ldr r1, [sp, #0x120]
	str r0, [sp, #0x1a4]
	ldr r0, [sp, #0x124]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
_0213EF64:
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov131_021400f0
_0213EF70:
	ldrb r0, [r8, #0x10]
	ldr r10, [sp, #0x1a4]
	ldr r7, [sp, #0x1a8]
	ldr r6, [sp, #0x1ac]
	ldr r5, [sp, #0x1b0]
	ldr r4, [r8]
	ldr r3, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0xc]
	strb r0, [sp, #0xc0]
	str r10, [sp, #0xa0]
	str r7, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r5, [sp, #0xac]
	str r4, [sp, #0xb0]
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r1, [sp, #0xbc]
	ldr r1, [r9]
	add r0, sp, #0xd8
	str r1, [sp, #0xc4]
	ldr r2, [r9, #4]
	add r1, sp, #0xc4
	str r2, [sp, #0xc8]
	ldr r3, [r9, #8]
	add r2, sp, #0xb0
	str r3, [sp, #0xcc]
	ldr r4, [r9, #0xc]
	add r3, sp, #0xa0
	str r4, [sp, #0xd0]
	ldrb r4, [r9, #0x10]
	strb r4, [sp, #0xd4]
	bl FUN_ov131_0213f1b8
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213EFFC:
	add r2, r10, #0xc
	mov r0, r10
	mov r1, r4
	str r6, [sp, #0x190]
	str r6, [sp, #0x194]
	str r6, [sp, #0x198]
	str r6, [sp, #0x19c]
	str r2, [sp, #0x1a0]
	bl FUN_ov131_0213e9dc
	mov r1, r0
	and r2, r6, #0xff
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0]
	add r0, sp, #0x190
	bl FUN_ov131_0213fe38
	ldr r0, [sp, #0x190]
	str r5, [sp, #0x194]
	cmp r4, #0
	add r0, r0, r5, lsl #2
	beq _0213F0B4
_0213F050:
	ldr r5, [r9]
	ldr r1, [r9, #0xc]
	ldr r3, [r9, #4]
	ldr r2, [r9, #8]
	str r1, [sp, #0x24]
	ldr r1, [r5]
	cmp r0, #0
	strne r1, [r0]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x20]
	add r1, r1, #1
	str r1, [sp, #0x198]
	ldr r2, [r9]
	ldr r1, [r9, #0xc]
	add r2, r2, #4
	cmp r2, r1
	ldreq r1, [r9, #4]
	str r2, [r9]
	sub r4, r4, #1
	streq r1, [r9]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, r0, #4
	cmp r4, #0
	bne _0213F050
_0213F0B4:
	ldr r1, [r10, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _0213F0D4
	ldr r2, [r10, #4]
	ldr r0, [r10, #8]
	add r0, r2, r0
	bl _u32_div_f
_0213F0D4:
	ldr r2, [r10]
	add r4, sp, #0x190
	add r0, r2, r1, lsl #2
	str r2, [sp, #0x94]
	str r0, [sp, #0x90]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x98]
	ldr r0, [r10, #0xc]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x9c]
	and r0, r6, #0xff
	strb r0, [r1]
	ldr r3, [r1]
	ldr r1, [sp]
	add r2, sp, #0x90
	mov r0, r4
	bl FUN_ov131_0213ffbc
	ldr r3, [r10]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r3, r0, lsl #2
	str r0, [sp, #0x80]
	str r0, [sp, #0x88]
	str r3, [sp, #0x84]
	ldr r2, [r10, #0xc]
	and r0, r6, #0xff
	add r2, r3, r2, lsl #2
	str r2, [sp, #0x8c]
	strb r0, [r1]
	ldr r3, [r1]
	ldr r2, [sp]
	add r1, sp, #0x80
	mov r0, r4
	bl FUN_ov131_0213feb4
	str r6, [r10, #8]
	ldr r1, [r10]
	ldr r0, [sp, #0x190]
	add r3, sp, #0x19c
	str r0, [r10]
	str r1, [sp, #0x190]
	ldr r2, [r10, #4]
	ldr r1, [sp, #0x194]
	mov r0, r4
	str r1, [r10, #4]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x194]
	str r1, [r10, #8]
	str r6, [sp, #0x198]
	ldr r2, [r10, #0xc]
	ldr r1, [r3]
	str r1, [r10, #0xc]
	str r2, [r3]
	bl FUN_ov131_0213fe04
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov131_0213ec20

	arm_func_start FUN_ov131_0213f1b8
FUN_ov131_0213f1b8: ; 0x0213F1B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r6, r1
	ldr r7, [r6]
	ldr r4, [r2]
	mov r11, r0
	mov r5, r3
	cmp r7, r4
	beq _0213F35C
	mov r0, r2
	bl FUN_ov131_02140134
	str r0, [sp, #0xc]
_0213F1E8:
	ldr r2, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	addle r0, sp, #0xc
	str r2, [sp, #8]
	addgt r0, sp, #8
	ldr r4, [r0]
	ldr r1, [r6]
	add r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r2, [r6, #4]
	mov r1, r4
	str r2, [sp, #0x24]
	ldr r2, [r6, #8]
	str r2, [sp, #0x28]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x2c]
	ldrb r2, [r6, #0x10]
	strb r2, [sp, #0x30]
	bl FUN_ov131_021400f0
	ldrb r12, [sp, #0x30]
	ldr r9, [sp, #0x20]
	ldr r8, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr lr, [sp, #0x2c]
	ldr r10, [r6]
	ldrb r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r2, [r6, #8]
	ldr r1, [r6, #0xc]
	str r3, [sp, #0x4c]
	strb r12, [sp, #0x6c]
	str r9, [sp, #0x5c]
	str r8, [sp, #0x60]
	str r7, [sp, #0x64]
	str r7, [sp, #0x3c]
	str lr, [sp, #0x68]
	str r9, [sp, #0x34]
	str r8, [sp, #0x38]
	str lr, [sp, #0x40]
	strb r12, [sp, #0x44]
	str r10, [sp, #0x48]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	strb r0, [sp, #0x58]
	cmp r10, r9
	ldr r7, [r5]
	add r3, sp, #0x48
	beq _0213F308
_0213F2C0:
	ldr r8, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	add r8, r8, #4
	str r8, [r3]
	cmp r8, r0
	ldr r1, [r3, #8]
	ldr r12, [r10]
	streq r2, [r3]
	str r10, [sp, #0x10]
	ldr r10, [r3]
	str r12, [r7]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r7, r7, #4
	cmp r10, r9
	bne _0213F2C0
_0213F308:
	ldr r0, [sp, #0xc]
	sub r1, r4, #1
	sub r0, r0, r4
	str r0, [sp, #0xc]
	ldr r2, [r5]
	ldr r0, [r5, #0xc]
	add r1, r2, r1, lsl #2
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [r5, #4]
	str r1, [r5]
	streq r0, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0213F35C
	add r0, sp, #0x5c
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldrb r4, [sp, #0x6c]
	strb r4, [r6, #0x10]
	b _0213F1E8
_0213F35C:
	ldr r0, [r5]
	str r0, [r11]
	ldr r0, [r5, #4]
	str r0, [r11, #4]
	ldr r0, [r5, #8]
	str r0, [r11, #8]
	ldr r0, [r5, #0xc]
	str r0, [r11, #0xc]
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov131_0213f1b8

	arm_func_start FUN_ov131_0213f384
FUN_ov131_0213f384: ; 0x0213F384
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r8, r2
	ldr r2, [r8]
	ldr r1, [r9]
	mov r10, r0
	mov r7, r3
	cmp r1, r2
	beq _0213F4E4
	add r4, sp, #8
	mov r11, #0
	mov r5, #1
_0213F3B8:
	ldr r0, [r8, #4]
	mov r6, r5
	cmp r2, r0
	ldreq r0, [r8, #0xc]
	mov r12, #1
	streq r0, [r8]
	ldr r0, [r8]
	sub r0, r0, #4
	str r0, [r8]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	cmp r1, r0
	ldreq r0, [r7, #0xc]
	ldr r1, [r7, #8]
	streq r0, [r7]
	ldr r0, [r7]
	sub r0, r0, #4
	cmp r0, r1
	ldrlo r1, [r7, #4]
	str r0, [r7]
	sub r1, r0, r1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r3, [r9]
	ldr r2, [r9, #8]
	ldr r1, [r8, #8]
	cmp r3, r2
	ldr r2, [r8]
	movlo r6, r11
	cmp r2, r1
	movlo r12, #0
	cmp r6, r12
	bne _0213F468
	sub r2, r2, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _0213F490
_0213F468:
	cmp r2, r1
	ldrlo r1, [r8, #4]
	sub r2, r2, r1
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_0213F490:
	ldr r6, [r0]
	ldr r1, [r8]
	add r0, r6, #1
	sub r1, r1, r6, lsl #2
	mov r2, r0, lsl #2
	str r1, [r8]
	ldr r3, [r7]
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	add r3, r3, #4
	mov r2, r0, asr #2
	sub r0, r3, r2, lsl #2
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r0, [r7]
	sub r0, r0, r6, lsl #2
	str r0, [r7]
	ldr r2, [r8]
	ldr r0, [r9]
	cmp r0, r2
	bne _0213F3B8
_0213F4E4:
	ldr r0, [r7]
	str r0, [r10]
	ldr r0, [r7, #4]
	str r0, [r10, #4]
	ldr r0, [r7, #8]
	str r0, [r10, #8]
	ldr r0, [r7, #0xc]
	str r0, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov131_0213f384

	arm_func_start FUN_ov131_0213f50c
FUN_ov131_0213f50c: ; 0x0213F50C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r8, r2
	ldr r2, [r9]
	ldr r1, [r8]
	mov r10, r0
	mov r7, r3
	cmp r2, r1
	beq _0213F64C
	add r4, sp, #8
	mov r11, #0
	mov r5, #1
_0213F540:
	ldr r1, [r7, #0xc]
	ldr r0, [r7]
	mov r6, r5
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r2, [r9]
	ldr r1, [r9, #8]
	ldr r3, [r8]
	cmp r2, r1
	ldr r1, [r8, #8]
	movlo r6, r11
	cmp r3, r1
	movhs r1, #1
	movlo r1, #0
	cmp r6, r1
	bne _0213F5B0
	sub r2, r3, r2
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _0213F5D4
_0213F5B0:
	ldr r1, [r9, #0xc]
	sub r2, r1, r2
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_0213F5D4:
	ldr r6, [r0]
	mov r1, r6, lsl #2
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	ldr r1, [r9]
	ldr r0, [r7]
	bl FUN_020218f4
	ldr r1, [r9]
	sub r0, r6, #1
	add r1, r1, r0, lsl #2
	add r2, r1, #4
	ldr r1, [r9, #0xc]
	str r2, [r9]
	cmp r2, r1
	ldreq r1, [r9, #4]
	streq r1, [r9]
	ldr r2, [r7]
	ldr r1, [r7, #0xc]
	add r0, r2, r0, lsl #2
	add r0, r0, #4
	str r0, [r7]
	cmp r0, r1
	ldreq r0, [r7, #4]
	streq r0, [r7]
	ldr r1, [r9]
	ldr r0, [r8]
	cmp r1, r0
	bne _0213F540
_0213F64C:
	ldr r0, [r7]
	str r0, [r10]
	ldr r0, [r7, #4]
	str r0, [r10, #4]
	ldr r0, [r7, #8]
	str r0, [r10, #8]
	ldr r0, [r7, #0xc]
	str r0, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov131_0213f50c

	arm_func_start FUN_ov131_0213f674
FUN_ov131_0213f674: ; 0x0213F674
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r5, r1
	ldr lr, [r5, #8]
	ldr r3, [r5, #0xc]
	ldr r1, [r5, #0x14]
	add r12, lr, r3, lsl #2
	ldr r7, [r5]
	add r3, lr, r1, lsl #2
	mov r4, r2
	add r4, r4, r7
	mov r6, r0
	add r0, sp, #0
	str r12, [sp]
	str lr, [sp, #4]
	str r12, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, r4, lsr #8
	str r12, [sp, #0x10]
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl FUN_ov131_021400f0
	ldr r0, [r5, #0x10]
	ldr r12, [sp]
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	cmp r0, #0
	mov r5, #0
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r12, [sp, #0x20]
	mov r0, r4, lsl #0x18
	ldrne r5, [r12]
	ldr r4, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r5, r0, lsr #22
	str r4, [r6]
	str r3, [r6, #4]
	str r2, [r6, #8]
	str r1, [r6, #0xc]
	str r0, [r6, #0x10]
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_0213f674

	arm_func_start FUN_ov131_0213f734
FUN_ov131_0213f734: ; 0x0213F734
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x13c
	mov r10, r0
	tst r1, #0xff
	mov r6, #0
	movne r0, #1
	moveq r0, r6
	add r7, r0, r1, lsr #8
	add r4, sp, #0x28
	b _0213F7C8
_0213F75C:
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r1
	ldr r5, [r2, r1, lsl #2]
	add r1, r0, #1
	ldr r0, [r10, #0x14]
	str r1, [r10, #0xc]
	cmp r1, r0
	streq r6, [r10, #0xc]
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #0xc]
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r10, #0x14]
	sub r0, r0, #1
	str r2, [r10, #0x10]
	bl _u32_div_f
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r5, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x28]
	bl FUN_ov131_0213e858
	ldr r0, [r10]
	sub r7, r7, #1
	sub r0, r0, #0x100
	str r0, [r10]
_0213F7C8:
	cmp r7, #0
	beq _0213F7DC
	ldr r0, [r10]
	cmp r0, #0x100
	bhs _0213F75C
_0213F7DC:
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _0213FC34 ; =0x0214CDA0
	ldr r0, [r1]
	tst r0, #1
	bne _0213F810
	mov r3, #0x200
	orr r2, r0, #1
	ldr r0, _0213FC38 ; =0x0214C894
	rsb r3, r3, #0
	str r3, [r0]
	str r2, [r1]
_0213F810:
	ldr r2, _0213FC38 ; =0x0214C894
	mov r0, r7, lsl #8
	ldr r1, [r2]
	cmp r1, r7, lsl #8
	blo _0213F86C
	ldr r1, _0213FC34 ; =0x0214CDA0
	ldr r3, [r1]
	tst r3, #1
	moveq r4, #0x200
	orreq r3, r3, #1
	rsbeq r4, r4, #0
	streq r3, [r1]
	streq r4, [r2]
	ldr r2, [r10, #0x10]
	ldr r1, _0213FC38 ; =0x0214C894
	cmp r2, #0
	ldr r3, [r1]
	moveq r1, #0
	subne r1, r2, #1
	movne r1, r1, lsl #8
	sub r0, r3, r0
	cmp r1, r0
	bls _0213F874
_0213F86C:
	ldr r0, _0213FC3C ; =0x0214C93C
	bl FUN_ov131_0213e720
_0213F874:
	ldr r0, [r10, #0x14]
	mov r1, #0
	cmp r0, #0
	subne r1, r0, #1
	ldr r0, [r10, #0x10]
	add r0, r7, r0
	cmp r0, r1
	bhi _0213F908
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0213FC40 ; =0x0214C8A4
	add r9, sp, #0x24
	mov r5, #0x400
_0213F8AC:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0213F8C8
	mov r0, r4
	bl FUN_02023ab4
	bl FUN_02021040
_0213F8C8:
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	ldr r1, [r10, #0x14]
	add r0, r2, r0
	sub r0, r0, #1
	bl _u32_div_f
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r8, [r2, r1, lsl #2]
	mov r1, r9
	str r6, [sp, #0x24]
	bl FUN_ov131_0213e858
	subs r7, r7, #1
	bne _0213F8AC
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213F908:
	movs r1, #0
	add r4, sp, #0x12c
	str r1, [sp, #0x124]
	str r1, [sp, #0x128]
	str r1, [sp, #0xb4]
	str r1, [sp, #0xb8]
	str r1, [sp, #0xbc]
	str r1, [sp, #0xc0]
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	add r8, sp, #0xb4
	beq _0213F948
	add r0, r1, r1
	bl _u32_div_f
_0213F948:
	ldr r5, [r8]
	ldr r2, [r8, #4]
	ldr r0, [r8, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	add r8, r5, r1, lsl #2
	ldrb r1, [sp, #0x10]
	add r0, sp, #0xc4
	str r8, [sp, #0xc4]
	str r5, [sp, #0xc8]
	str r5, [sp, #0xd8]
	str r3, [sp, #0xcc]
	str r2, [sp, #0xd0]
	str r0, [sp, #4]
	add r0, sp, #0xd4
	strb r1, [sp, #8]
	sub r5, sp, #0xc
	str r3, [sp, #0xd4]
	str r3, [sp, #0xdc]
	str r2, [sp, #0xe0]
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	ldmia r5, {r1, r2, r3}
	bl FUN_ov131_021409dc
	add r0, sp, #0xb4
	bl FUN_ov131_021400bc
	ldr r0, [r10, #0x10]
	mov r2, #0
	add r0, r7, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r10, #0x14]
	add r9, sp, #0x12c
	cmp r1, #0
	subne r2, r1, #1
	cmp r0, r2, lsl #1
	addhi r0, sp, #0x1c
	mov r1, r2, lsl #1
	addls r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r1, [r0]
	mov r0, r9
	bl FUN_ov131_0213e730
	add r1, sp, #0x18
	mov r0, r9
	str r6, [sp, #0x18]
	bl FUN_ov131_0213e858
	cmp r7, #0
	beq _0213FA70
	ldr r11, _0213FC40 ; =0x0214C8A4
	add r4, sp, #0x14
	mov r5, #0x400
_0213FA1C:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0213FA38
	mov r0, r11
	bl FUN_02023ab4
	bl FUN_02021040
_0213FA38:
	ldr r2, [r9, #4]
	ldr r0, [r9, #8]
	ldr r1, [r9, #0xc]
	add r0, r2, r0
	sub r0, r0, #1
	bl _u32_div_f
	ldr r2, [r9]
	mov r0, r9
	str r8, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x14]
	bl FUN_ov131_0213e858
	subs r7, r7, #1
	bne _0213FA1C
_0213FA70:
	ldr r0, [r10, #0x10]
	mov r5, #0
	cmp r0, #0
	beq _0213FBD8
	ldr r1, [r10, #0x14]
	cmp r1, #0
	moveq r1, r5
	beq _0213FAA0
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	add r0, r2, r0
	bl _u32_div_f
_0213FAA0:
	ldr r6, [r10, #8]
	ldr r3, [r10, #0xc]
	add r2, r6, r1, lsl #2
	ldr r0, [r10, #0x14]
	add r4, r6, r3, lsl #2
	add r3, r6, r0, lsl #2
	add r0, sp, #0xa4
	str r2, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r4, [sp, #0xac]
	str r3, [sp, #0xb0]
	mvn r1, #0
	str r2, [sp, #0xe4]
	str r6, [sp, #0xe8]
	str r4, [sp, #0xec]
	str r3, [sp, #0xf0]
	bl FUN_ov131_021400f0
	ldr r1, [r10, #8]
	ldr r7, [sp, #0xa8]
	ldr r6, [sp, #0xac]
	ldr r8, [sp, #0xa4]
	ldr r3, [sp, #0xb0]
	ldr r0, [r10, #0xc]
	ldr r2, [r9]
	add r4, r1, r0, lsl #2
	ldr r0, [r10, #0x14]
	str r7, [sp, #0xf8]
	str r7, [sp, #0x40]
	str r7, [sp, #0x88]
	str r7, [sp, #0x74]
	add r7, r1, r0, lsl #2
	ldr r0, [r9, #4]
	str r6, [sp, #0xfc]
	str r6, [sp, #0x44]
	str r6, [sp, #0x8c]
	str r6, [sp, #0x78]
	add r6, r2, r0, lsl #2
	ldr r0, [r9, #0xc]
	and r5, r5, #0xff
	add r0, r2, r0, lsl #2
	str r3, [sp, #0x100]
	str r1, [sp, #0x108]
	str r3, [sp, #0x48]
	str r1, [sp, #0x30]
	str r3, [sp, #0x90]
	str r3, [sp, #0x7c]
	str r1, [sp, #0x98]
	str r1, [sp, #0x60]
	str r8, [sp, #0x70]
	add r1, sp, #0x4c
	str r2, [sp, #0x118]
	str r2, [sp, #0x50]
	add r2, sp, #0x5c
	str r0, [sp, #0x120]
	str r0, [sp, #0x58]
	add r3, sp, #0x70
	str r7, [sp, #0x68]
	mov r0, r9
	str r4, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x54]
	str r8, [sp, #0xf4]
	str r4, [sp, #0x104]
	str r4, [sp, #0x10c]
	str r8, [sp, #0x3c]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x34]
	str r8, [sp, #0x84]
	str r4, [sp, #0x94]
	str r4, [sp, #0x9c]
	str r7, [sp, #0x110]
	str r6, [sp, #0x114]
	str r6, [sp, #0x11c]
	str r7, [sp, #0x38]
	str r7, [sp, #0xa0]
	strb r5, [sp]
	bl FUN_ov131_021401a8
_0213FBD8:
	ldr r2, [r10, #8]
	ldr r1, [r9]
	add r0, sp, #0x124
	str r1, [r10, #8]
	str r2, [r9]
	ldr r2, [r10, #0xc]
	ldr r1, [r9, #4]
	str r1, [r10, #0xc]
	str r2, [r9, #4]
	ldr r2, [r10, #0x10]
	ldr r1, [r9, #8]
	str r1, [r10, #0x10]
	str r2, [r9, #8]
	ldr r2, [r10, #0x14]
	ldr r1, [r9, #0xc]
	str r1, [r10, #0x14]
	ldr r1, [r9, #8]
	str r2, [r9, #0xc]
	sub r1, r1, r1
	str r1, [r9, #8]
	bl FUN_ov131_0214090c
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213FC34: .word ov131_0214CDA0
_0213FC38: .word ov131_0214C894
_0213FC3C: .word ov131_0214C93C
_0213FC40: .word ov131_0214C8A4
	arm_func_end FUN_ov131_0213f734

	arm_func_start FUN_ov131_0213fc44
FUN_ov131_0213fc44: ; 0x0213FC44
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _0213FD00
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0213FC84
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl _u32_div_f
	mov r3, r1
_0213FC84:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _0213FD00
_0213FCC4:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0213FCD8
	bl FUN_0201e078
_0213FCD8:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _0213FCC4
_0213FD00:
	add r0, r5, #8
	bl FUN_ov131_021400bc
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov131_0213fc44

	arm_func_start FUN_ov131_0213fd14
FUN_ov131_0213fd14: ; 0x0213FD14
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	mov r5, r1
	ldr lr, [r5]
	mov r4, r2
	ldr r12, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #0x14]
	add r3, r12, r2, lsl #2
	add r2, r12, r1, lsl #2
	mov r6, r0
	ldr r0, _0213FE00 ; =0x86186187
	add r4, r4, lr
	umull r0, r1, r4, r0
	sub r0, r4, r1
	add r1, r1, r0, lsr #1
	add r0, sp, #0
	str r3, [sp, #8]
	mov r1, r1, lsr #5
	str r3, [sp]
	str r12, [sp, #4]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	bl FUN_ov131_021400f0
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	str r2, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r2, _0213FE00 ; =0x86186187
	ldr r1, [sp, #0xc]
	umull r2, r3, r4, r2
	sub r2, r4, r3
	add r3, r3, r2, lsr #1
	ldr r12, [sp]
	str r1, [sp, #0x2c]
	mov r3, r3, lsr #5
	mov r5, #0x2a
	umull r2, r3, r5, r3
	sub r3, r4, r2
	mov r1, #0
	cmp r0, #0
	str r12, [sp, #0x20]
	ldrne r1, [r12]
	mov r2, #0x18
	mla r1, r3, r2, r1
	ldr r0, [sp, #0x20]
	ldr lr, [sp, #0x24]
	ldr r12, [sp, #0x28]
	stmia r6, {r0, lr}
	ldr r5, [sp, #0x2c]
	str r12, [r6, #8]
	str r5, [r6, #0xc]
	str r1, [r6, #0x10]
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, pc}
_0213FE00: .word 0x86186187
	arm_func_end FUN_ov131_0213fd14

	arm_func_start FUN_ov131_0213fe04
FUN_ov131_0213fe04: ; 0x0213FE04
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0213FE2C
	ldr r1, [r4, #8]
	sub r1, r1, r1
	str r1, [r4, #8]
	bl FUN_0201e078
_0213FE2C:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov131_0213fe04

	arm_func_start FUN_ov131_0213fe38
FUN_ov131_0213fe38: ; 0x0213FE38
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0213FEA8 ; =0x0214CDA4
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	tst r3, #1
	orreq r1, r3, #1
	ldreq r0, _0213FEAC ; =0x0214C898
	mvneq r3, #0xc0000001
	streq r3, [r0]
	ldr r0, _0213FEAC ; =0x0214C898
	streq r1, [r2]
	ldr r0, [r0]
	cmp r4, r0
	bls _0213FE78
	bl FUN_ov131_0213eae8
_0213FE78:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl FUN_0201e014
	movs r6, r0
	bne _0213FE98
	ldr r0, _0213FEB0 ; =0x0214C8A4
	bl FUN_02023ab4
	bl FUN_02021040
_0213FE98:
	add r0, r4, #1
	str r6, [r5]
	str r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_0213FEA8: .word ov131_0214CDA4
_0213FEAC: .word ov131_0214C898
_0213FEB0: .word ov131_0214C8A4
	arm_func_end FUN_ov131_0213fe38

	arm_func_start FUN_ov131_0213feb4
FUN_ov131_0213feb4: ; 0x0213FEB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r3, [r7]
	ldr r0, [r7, #4]
	ldr r2, [r5]
	ldr r1, [r6]
	add r0, r3, r0, lsl #2
	cmp r1, r2
	bhi _0213FF28
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r3, r2, asr #2
	mov r2, r3, lsl #2
	sub r0, r0, r3, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r6]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	sub r0, r1, r0, asr #2
	stmib r7, {r0, r2}
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213FF28:
	ldr r1, [r5, #4]
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	sub r4, r0, r2, lsl #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r6]
	ldr r0, [r6, #0xc]
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	sub r0, r4, r0, lsl #2
	bl FUN_020218f4
	ldr r1, [r6, #0xc]
	ldr r0, [r6]
	ldr r4, [r5]
	ldr r3, [r5, #4]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	mov r0, r3, asr #1
	add r1, r2, r1, lsr #30
	add r0, r3, r0, lsr #30
	mov r2, r1, asr #2
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	ldr r0, [r7, #8]
	sub r1, r1, r2
	add r0, r0, r2
	str r1, [r7, #4]
	str r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_0213feb4

	arm_func_start FUN_ov131_0213ffbc
FUN_ov131_0213ffbc: ; 0x0213FFBC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r3, [r7, #4]
	ldr r0, [r7, #8]
	mov r6, r1
	ldr r1, [r7, #0xc]
	add r0, r3, r0
	mov r5, r2
	bl _u32_div_f
	ldr r2, [r7]
	ldr r0, [r5]
	add r4, r2, r1, lsl #2
	ldr r1, [r6]
	cmp r1, r0
	bhi _02140038
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r6]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r0, r2, r0, asr #2
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02140038:
	ldr r2, [r6, #0xc]
	mov r0, r4
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r8, r2, asr #2
	mov r2, r8, lsl #2
	bl FUN_020218f4
	ldr r1, [r5, #4]
	ldr r2, [r5]
	add r0, r4, r8, lsl #2
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr r4, [r6, #0xc]
	ldr r3, [r6]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r1, r1, asr #2
	ldr r2, [r7, #8]
	add r0, r1, r0, asr #2
	add r0, r2, r0
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_0213ffbc

	arm_func_start FUN_ov131_021400bc
FUN_ov131_021400bc: ; 0x021400BC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _021400E4
	ldr r1, [r4, #8]
	sub r1, r1, r1
	str r1, [r4, #8]
	bl FUN_0201e078
_021400E4:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov131_021400bc

	arm_func_start FUN_ov131_021400f0
FUN_ov131_021400f0: ; 0x021400F0
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub r12, r2, r4
	sub lr, r3, r4
	mov r3, r12, asr #1
	mov r2, lr, asr #1
	add r3, r12, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _02140128
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_02140128:
	add r1, r4, r1, lsl #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov131_021400f0

	arm_func_start FUN_ov131_02140134
FUN_ov131_02140134: ; 0x02140134
	stmfd sp!, {r3, lr}
	ldr r12, [r1]
	ldr r3, [r0]
	ldr lr, [r0, #8]
	sub r2, r3, r12
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _02140180
	cmp r12, lr
	bhs _021401A0
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _021401A0
_02140180:
	cmp r12, lr
	blo _021401A0
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_021401A0:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_02140134

	arm_func_start FUN_ov131_021401a8
FUN_ov131_021401a8: ; 0x021401A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b4
	mov r9, r2
	mov r8, r3
	ldrb r2, [r9, #0x10]
	ldrb r7, [r8, #0x10]
	mov r10, r0
	str r1, [sp]
	ldr r0, [r8, #8]
	ldr r1, [r8, #0xc]
	ldr r6, [r9]
	ldr r5, [r9, #4]
	ldr r4, [r9, #8]
	ldr r3, [r9, #0xc]
	ldr r12, [r8]
	ldr r11, [r8, #4]
	str r0, [sp, #0x170]
	str r0, [sp, #0x74]
	str r1, [sp, #0x174]
	str r1, [sp, #0x78]
	add r0, sp, #0x6c
	add r1, sp, #0x58
	str r12, [sp, #0x168]
	str r11, [sp, #0x16c]
	strb r7, [sp, #0x178]
	str r6, [sp, #0x17c]
	str r5, [sp, #0x180]
	strb r2, [sp, #0x18c]
	str r4, [sp, #0x184]
	str r12, [sp, #0x6c]
	str r11, [sp, #0x70]
	strb r7, [sp, #0x7c]
	str r3, [sp, #0x188]
	str r6, [sp, #0x58]
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	strb r2, [sp, #0x68]
	bl FUN_ov131_02140134
	movs r4, r0
	addeq sp, sp, #0x1b4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	ldr r3, [r10]
	ldr r1, [r10, #4]
	ldr r2, [r0]
	add r7, r3, r1, lsl #2
	sub r1, r2, r7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r2, r7
	mov r5, r0, asr #2
	ldrlo r0, [r10, #0xc]
	mov r6, #0
	addlo r5, r5, r0
	ldr r0, [r10, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r4, r0
	ldrls r2, [r10, #8]
	subls r0, r0, r4
	cmpls r2, r0
	bhi _02140584
	str r7, [sp, #0x1a4]
	ldr r6, [r10]
	sub r0, r2, r5
	str r0, [sp, #8]
	str r6, [sp, #0x1a8]
	ldr r1, [sp, #8]
	ldr r0, [r10, #4]
	cmp r5, r1
	add r1, r6, r0, lsl #2
	str r1, [sp, #4]
	str r1, [sp, #0x1ac]
	ldr r1, [r10, #0xc]
	add r11, r6, r1, lsl #2
	str r11, [sp, #0x1b0]
	bhs _021403C8
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov131_021400f0
	ldr r0, [r10, #8]
	ldr r3, [sp, #0x1a4]
	ldr r2, [r10]
	add r1, r0, r4
	sub r2, r3, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	stmib r10, {r0, r1}
	cmp r5, #0
	beq _021404F8
	ldr r2, [sp, #0x1b0]
	ldr r10, [sp, #0x1a4]
	ldr r4, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	str r2, [sp, #0x134]
	ldr r2, [sp, #4]
	add r0, sp, #0x48
	mov r1, r5
	str r10, [sp, #0x128]
	str r4, [sp, #0x12c]
	str r3, [sp, #0x130]
	str r7, [sp, #0x48]
	str r6, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r11, [sp, #0x54]
	bl FUN_ov131_021400f0
	ldr r2, [r0]
	add r1, sp, #0x148
	str r2, [sp, #0x138]
	ldr r3, [r0, #4]
	add r2, sp, #0x138
	str r3, [sp, #0x13c]
	ldr r4, [r0, #8]
	add r3, sp, #0x128
	str r4, [sp, #0x140]
	ldr r4, [r0, #0xc]
	add r0, sp, #0x158
	str r4, [sp, #0x144]
	ldr r4, [sp, #4]
	str r7, [sp, #0x148]
	str r6, [sp, #0x14c]
	str r4, [sp, #0x150]
	str r11, [sp, #0x154]
	bl FUN_ov131_0213f50c
	ldr r3, [sp, #0x158]
	ldr r2, [sp, #0x15c]
	ldr r1, [sp, #0x160]
	ldr r0, [sp, #0x164]
	str r3, [sp, #0x1a4]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
	b _021404F8
_021403C8:
	add r2, r2, r4
	cmp r1, #0
	str r2, [r10, #8]
	moveq r1, #0
	beq _021403E4
	add r0, r0, r2
	bl _u32_div_f
_021403E4:
	ldr r5, [r10]
	ldr r2, [r10, #4]
	ldr r0, [r10, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	ldr r0, [sp, #8]
	add r1, r5, r1, lsl #2
	str r1, [sp, #0x1a4]
	str r5, [sp, #0x1a8]
	str r3, [sp, #0x1ac]
	str r2, [sp, #0x1b0]
	cmp r0, #0
	beq _021404EC
	add r0, sp, #0x28
	str r1, [sp, #0xe8]
	str r1, [sp, #0x28]
	str r5, [sp, #0xec]
	str r3, [sp, #0xf0]
	str r2, [sp, #0xf4]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	rsb r1, r4, #0
	bl FUN_ov131_021400f0
	ldr r2, [r0]
	ldr r1, [sp, #8]
	str r2, [sp, #0xf8]
	ldr r2, [r0, #4]
	add r1, r4, r1
	str r2, [sp, #0xfc]
	ldr r2, [r0, #8]
	ldr r6, [sp, #0x1a4]
	str r2, [sp, #0x100]
	ldr r7, [r0, #0xc]
	ldr r5, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	ldr r2, [sp, #0x1b0]
	add r0, sp, #0x38
	str r7, [sp, #0x104]
	str r6, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	rsb r1, r1, #0
	bl FUN_ov131_021400f0
	ldr r2, [r0]
	add r1, sp, #0x108
	str r2, [sp, #0x108]
	ldr r3, [r0, #4]
	add r2, sp, #0xf8
	str r3, [sp, #0x10c]
	ldr r5, [r0, #8]
	add r3, sp, #0xe8
	str r5, [sp, #0x110]
	ldr r5, [r0, #0xc]
	add r0, sp, #0x118
	str r5, [sp, #0x114]
	bl FUN_ov131_0213f384
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	ldr r1, [sp, #0x120]
	str r0, [sp, #0x1a4]
	ldr r0, [sp, #0x124]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
_021404EC:
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov131_021400f0
_021404F8:
	ldrb r0, [r8, #0x10]
	ldr r10, [sp, #0x1a4]
	ldr r7, [sp, #0x1a8]
	ldr r6, [sp, #0x1ac]
	ldr r5, [sp, #0x1b0]
	ldr r4, [r8]
	ldr r3, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0xc]
	strb r0, [sp, #0xc0]
	str r10, [sp, #0xa0]
	str r7, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r5, [sp, #0xac]
	str r4, [sp, #0xb0]
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r1, [sp, #0xbc]
	ldr r1, [r9]
	add r0, sp, #0xd8
	str r1, [sp, #0xc4]
	ldr r2, [r9, #4]
	add r1, sp, #0xc4
	str r2, [sp, #0xc8]
	ldr r3, [r9, #8]
	add r2, sp, #0xb0
	str r3, [sp, #0xcc]
	ldr r4, [r9, #0xc]
	add r3, sp, #0xa0
	str r4, [sp, #0xd0]
	ldrb r4, [r9, #0x10]
	strb r4, [sp, #0xd4]
	bl FUN_ov131_02140740
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02140584:
	add r2, r10, #0xc
	mov r0, r10
	mov r1, r4
	str r6, [sp, #0x190]
	str r6, [sp, #0x194]
	str r6, [sp, #0x198]
	str r6, [sp, #0x19c]
	str r2, [sp, #0x1a0]
	bl FUN_ov131_0213e9dc
	mov r1, r0
	and r2, r6, #0xff
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0]
	add r0, sp, #0x190
	bl FUN_ov131_0213fe38
	ldr r0, [sp, #0x190]
	str r5, [sp, #0x194]
	cmp r4, #0
	add r0, r0, r5, lsl #2
	beq _0214063C
_021405D8:
	ldr r5, [r9]
	ldr r1, [r9, #0xc]
	ldr r3, [r9, #4]
	ldr r2, [r9, #8]
	str r1, [sp, #0x24]
	ldr r1, [r5]
	cmp r0, #0
	strne r1, [r0]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x20]
	add r1, r1, #1
	str r1, [sp, #0x198]
	ldr r2, [r9]
	ldr r1, [r9, #0xc]
	add r2, r2, #4
	cmp r2, r1
	ldreq r1, [r9, #4]
	str r2, [r9]
	sub r4, r4, #1
	streq r1, [r9]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, r0, #4
	cmp r4, #0
	bne _021405D8
_0214063C:
	ldr r1, [r10, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _0214065C
	ldr r2, [r10, #4]
	ldr r0, [r10, #8]
	add r0, r2, r0
	bl _u32_div_f
_0214065C:
	ldr r2, [r10]
	add r4, sp, #0x190
	add r0, r2, r1, lsl #2
	str r2, [sp, #0x94]
	str r0, [sp, #0x90]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x98]
	ldr r0, [r10, #0xc]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x9c]
	and r0, r6, #0xff
	strb r0, [r1]
	ldr r3, [r1]
	ldr r1, [sp]
	add r2, sp, #0x90
	mov r0, r4
	bl FUN_ov131_0213ffbc
	ldr r3, [r10]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r3, r0, lsl #2
	str r0, [sp, #0x80]
	str r0, [sp, #0x88]
	str r3, [sp, #0x84]
	ldr r2, [r10, #0xc]
	and r0, r6, #0xff
	add r2, r3, r2, lsl #2
	str r2, [sp, #0x8c]
	strb r0, [r1]
	ldr r3, [r1]
	ldr r2, [sp]
	add r1, sp, #0x80
	mov r0, r4
	bl FUN_ov131_0213feb4
	str r6, [r10, #8]
	ldr r1, [r10]
	ldr r0, [sp, #0x190]
	add r3, sp, #0x19c
	str r0, [r10]
	str r1, [sp, #0x190]
	ldr r2, [r10, #4]
	ldr r1, [sp, #0x194]
	mov r0, r4
	str r1, [r10, #4]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x194]
	str r1, [r10, #8]
	str r6, [sp, #0x198]
	ldr r2, [r10, #0xc]
	ldr r1, [r3]
	str r1, [r10, #0xc]
	str r2, [r3]
	bl FUN_ov131_0213fe04
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov131_021401a8

	arm_func_start FUN_ov131_02140740
FUN_ov131_02140740: ; 0x02140740
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r6, r1
	ldr r7, [r6]
	ldr r4, [r2]
	mov r11, r0
	mov r5, r3
	cmp r7, r4
	beq _021408E4
	mov r0, r2
	bl FUN_ov131_02140134
	str r0, [sp, #0xc]
_02140770:
	ldr r2, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	addle r0, sp, #0xc
	str r2, [sp, #8]
	addgt r0, sp, #8
	ldr r4, [r0]
	ldr r1, [r6]
	add r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r2, [r6, #4]
	mov r1, r4
	str r2, [sp, #0x24]
	ldr r2, [r6, #8]
	str r2, [sp, #0x28]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x2c]
	ldrb r2, [r6, #0x10]
	strb r2, [sp, #0x30]
	bl FUN_ov131_021400f0
	ldrb r12, [sp, #0x30]
	ldr r9, [sp, #0x20]
	ldr r8, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr lr, [sp, #0x2c]
	ldr r10, [r6]
	ldrb r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r2, [r6, #8]
	ldr r1, [r6, #0xc]
	str r3, [sp, #0x4c]
	strb r12, [sp, #0x6c]
	str r9, [sp, #0x5c]
	str r8, [sp, #0x60]
	str r7, [sp, #0x64]
	str r7, [sp, #0x3c]
	str lr, [sp, #0x68]
	str r9, [sp, #0x34]
	str r8, [sp, #0x38]
	str lr, [sp, #0x40]
	strb r12, [sp, #0x44]
	str r10, [sp, #0x48]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	strb r0, [sp, #0x58]
	cmp r10, r9
	ldr r7, [r5]
	add r3, sp, #0x48
	beq _02140890
_02140848:
	ldr r8, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	add r8, r8, #4
	str r8, [r3]
	cmp r8, r0
	ldr r1, [r3, #8]
	ldr r12, [r10]
	streq r2, [r3]
	str r10, [sp, #0x10]
	ldr r10, [r3]
	str r12, [r7]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r7, r7, #4
	cmp r10, r9
	bne _02140848
_02140890:
	ldr r0, [sp, #0xc]
	sub r1, r4, #1
	sub r0, r0, r4
	str r0, [sp, #0xc]
	ldr r2, [r5]
	ldr r0, [r5, #0xc]
	add r1, r2, r1, lsl #2
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [r5, #4]
	str r1, [r5]
	streq r0, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021408E4
	add r0, sp, #0x5c
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldrb r4, [sp, #0x6c]
	strb r4, [r6, #0x10]
	b _02140770
_021408E4:
	ldr r0, [r5]
	str r0, [r11]
	ldr r0, [r5, #4]
	str r0, [r11, #4]
	ldr r0, [r5, #8]
	str r0, [r11, #8]
	ldr r0, [r5, #0xc]
	str r0, [r11, #0xc]
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov131_02140740

	arm_func_start FUN_ov131_0214090c
FUN_ov131_0214090c: ; 0x0214090C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _021409C8
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0214094C
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl _u32_div_f
	mov r3, r1
_0214094C:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _021409C8
_0214098C:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _021409A0
	bl FUN_0201e078
_021409A0:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _0214098C
_021409C8:
	add r0, r5, #8
	bl FUN_ov131_021400bc
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov131_0214090c

	arm_func_start FUN_ov131_021409dc
FUN_ov131_021409dc: ; 0x021409DC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	ldr r1, [sp, #0x4c]
	mov r4, r0
	ldmia r1, {r0, r1, r2, r3}
	add r12, sp, #0x14
	stmia r12, {r0, r1, r2, r3}
	add r6, sp, #0x3c
	add r5, sp, #4
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r12
	mov r1, r5
	bl FUN_ov131_02140d78
	movs r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r5, #0
	sub r0, sp, #4
	strb r5, [r0]
	ldr r2, [r0]
	mov r0, r4
	bl FUN_ov131_02140cb8
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	ldr r2, [sp, #0x4c]
	mov r0, r4
	mov r1, r6
	bl FUN_ov131_02140a70
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov131_021409dc

	arm_func_start FUN_ov131_02140a70
FUN_ov131_02140a70: ; 0x02140A70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x5c
	mov r7, r0
	ldr r4, [r7]
	mov r6, r1
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r7, #4]
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	add r0, r2, r0
	bl _u32_div_f
	add r4, r4, r1, lsl #2
	mov r0, r5
	mov r1, r6
	bl FUN_ov131_02140d78
	str r0, [sp, #0x18]
	ldr r2, [r7]
	ldr r1, [r7, #0xc]
	ldr r12, [r6]
	add r1, r2, r1, lsl #2
	sub r2, r1, r4
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	addlt r1, sp, #0x18
	str r2, [sp, #0x14]
	addge r1, sp, #0x14
	ldr r1, [r1]
	ldr r3, [r6, #8]
	str r1, [sp, #0x14]
	ldr r1, [r7, #8]
	ldr r2, [r6, #0xc]
	add r0, r1, r0
	str r0, [r7, #8]
	ldr r8, [r6, #4]
	ldr r1, [sp, #0x14]
	add r0, sp, #0x2c
	str r12, [sp, #0x2c]
	str r3, [sp, #0x34]
	str r2, [sp, #0x38]
	str r8, [sp, #0x30]
	bl FUN_ov131_02140d34
	ldr r8, [r0]
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r8, [sp, #0x4c]
	add r0, sp, #0x4c
	mov r8, sp
	str r3, [sp, #0x50]
	str r2, [sp, #0x54]
	str r1, [sp, #0x58]
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	ldmia r6, {r0, r1, r2, r3}
	bl FUN_ov131_02140be8
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, [r6]
	ldr r4, [r6, #4]
	ldr r3, [r6, #8]
	ldr r2, [r6, #0xc]
	add r0, sp, #0x1c
	str r8, [sp, #0x1c]
	str r4, [sp, #0x20]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	bl FUN_ov131_02140d34
	ldmia r0, {r8, lr}
	ldr r12, [r0, #8]
	ldr r6, [r0, #0xc]
	mov r4, sp
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r4, [r7]
	str r8, [sp, #0x3c]
	add r0, sp, #0x3c
	str lr, [sp, #0x40]
	str r12, [sp, #0x44]
	str r6, [sp, #0x48]
	ldmia r0, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	bl FUN_ov131_02140be8
	add sp, sp, #0x5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_02140a70

	arm_func_start FUN_ov131_02140be8
FUN_ov131_02140be8: ; 0x02140BE8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r0, [sp, #0x28]
	ldr r7, [sp, #0x38]
	ldr r10, [sp, #0x48]
	cmp r0, r7
	ldr r8, [sp, #0x40]
	beq _02140CA8
	ldr r6, [sp, #0x38]
	mov r11, #1
	add r4, sp, #0x28
_02140C14:
	ldr r1, [sp, #0x30]
	mov r2, #1
	cmp r0, r1
	movhs r1, r11
	movlo r1, #0
	cmp r7, r8
	movlo r2, #0
	cmp r1, r2
	ldrne r1, [sp, #0x34]
	subeq r2, r6, r0
	subne r2, r1, r0
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r9, r1, asr #2
	ldr r1, [sp, #0x28]
	add r0, r0, r9, lsl #2
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r5, r0, asr #2
	mov r2, r5, lsl #2
	mov r0, r10
	bl FUN_020218f4
	ldr r1, [r4]
	sub r0, r9, #1
	add r2, r1, r0, lsl #2
	ldr r0, [sp, #0x34]
	add r1, r2, #4
	str r2, [r4]
	cmp r1, r0
	ldreq r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	streq r0, [sp, #0x28]
	ldr r0, [sp, #0x28]
	add r10, r10, r5, lsl #2
	cmp r0, r7
	bne _02140C14
_02140CA8:
	mov r0, r10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov131_02140be8

	arm_func_start FUN_ov131_02140cb8
FUN_ov131_02140cb8: ; 0x02140CB8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02140D28 ; =0x0214CDAC
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	tst r3, #1
	orreq r1, r3, #1
	ldreq r0, _02140D2C ; =0x0214C8A0
	mvneq r3, #0xc0000001
	streq r3, [r0]
	ldr r0, _02140D2C ; =0x0214C8A0
	streq r1, [r2]
	ldr r0, [r0]
	cmp r4, r0
	bls _02140CF8
	bl FUN_ov131_0213eae8
_02140CF8:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl FUN_0201e014
	movs r6, r0
	bne _02140D18
	ldr r0, _02140D30 ; =0x0214C8A4
	bl FUN_02023ab4
	bl FUN_02021040
_02140D18:
	add r0, r4, #1
	str r6, [r5]
	str r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_02140D28: .word ov131_0214CDAC
_02140D2C: .word ov131_0214C8A0
_02140D30: .word ov131_0214C8A4
	arm_func_end FUN_ov131_02140cb8

	arm_func_start FUN_ov131_02140d34
FUN_ov131_02140d34: ; 0x02140D34
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub r12, r2, r4
	sub lr, r3, r4
	mov r3, r12, asr #1
	mov r2, lr, asr #1
	add r3, r12, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _02140D6C
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_02140D6C:
	add r1, r4, r1, lsl #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov131_02140d34

	arm_func_start FUN_ov131_02140d78
FUN_ov131_02140d78: ; 0x02140D78
	stmfd sp!, {r3, lr}
	ldr r12, [r1]
	ldr r3, [r0]
	ldr lr, [r0, #8]
	sub r2, r3, r12
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _02140DC4
	cmp r12, lr
	bhs _02140DE4
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _02140DE4
_02140DC4:
	cmp r12, lr
	blo _02140DE4
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_02140DE4:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_02140d78

	arm_func_start FUN_ov131_02140dec
FUN_ov131_02140dec: ; 0x02140DEC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02140E30 ; =0x0209BA20
	mov r5, r0
	ldr r1, [r4, #0x7ec]
	mov r0, #0
	str r1, [r5, #4]
	cmp r1, #0
	bne _02140E20
	mov r0, r4
	bl FUN_0204eba0
	ldr r1, [r4, #0x7ec]
	mov r0, #1
	str r1, [r5, #4]
_02140E20:
	ldr r1, _02140E34 ; =0x0209C220
	ldrh r1, [r1, #0x6a]
	strh r1, [r5, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02140E30: .word unk_0209BA20
_02140E34: .word unk_0209C220
	arm_func_end FUN_ov131_02140dec

	arm_func_start FUN_ov131_02140e38
FUN_ov131_02140e38: ; 0x02140E38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov131_02140dec
	ldrh r1, [r7, #8]
	mov r4, #0
	mov r12, r4
	cmp r1, #0
	ldr r3, [r7, #4]
	ble _02140E98
_02140E64:
	ldrb r1, [r3, #0x2b]
	tst r1, #8
	ldrneh r2, [r3, #0x24]
	movne r1, r4, lsl #1
	addne r4, r4, #1
	strneh r2, [r6, r1]
	cmp r4, r5
	bge _02140E98
	ldrh r1, [r7, #8]
	add r12, r12, #1
	add r3, r3, #0x2c
	cmp r12, r1
	blt _02140E64
_02140E98:
	cmp r0, #0
	beq _02140EA8
	ldr r0, _02140EB0 ; =0x0209BA20
	bl FUN_0204ec3c
_02140EA8:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02140EB0: .word unk_0209BA20
	arm_func_end FUN_ov131_02140e38

	arm_func_start FUN_ov131_02140eb4
FUN_ov131_02140eb4: ; 0x02140EB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov131_02140dec
	ldrh r1, [r7, #8]
	mov r4, #0
	mov r12, r4
	cmp r1, #0
	ldr r3, [r7, #4]
	ble _02140F14
_02140EE0:
	ldrb r1, [r3, #0x2b]
	tst r1, #8
	ldrneh r2, [r3, #0x24]
	movne r1, r4, lsl #1
	addne r4, r4, #1
	strneh r2, [r6, r1]
	cmp r4, r5
	bge _02140F14
	ldrh r1, [r7, #8]
	add r12, r12, #1
	add r3, r3, #0x2c
	cmp r12, r1
	blt _02140EE0
_02140F14:
	cmp r0, #0
	beq _02140F24
	ldr r0, _02140F2C ; =0x0209BA20
	bl FUN_0204ec3c
_02140F24:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02140F2C: .word unk_0209BA20
	arm_func_end FUN_ov131_02140eb4

	arm_func_start FUN_ov131_02140f30
FUN_ov131_02140f30: ; 0x02140F30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov131_02140dec
	ldrh r1, [r7, #8]
	mov r4, #0
	mov r12, r4
	cmp r1, #0
	ldr r3, [r7, #4]
	ble _02140F90
_02140F5C:
	ldrb r1, [r3, #0x2b]
	tst r1, #4
	ldrneh r2, [r3, #0x24]
	movne r1, r4, lsl #1
	addne r4, r4, #1
	strneh r2, [r6, r1]
	cmp r4, r5
	bge _02140F90
	ldrh r1, [r7, #8]
	add r12, r12, #1
	add r3, r3, #0x2c
	cmp r12, r1
	blt _02140F5C
_02140F90:
	cmp r0, #0
	beq _02140FA0
	ldr r0, _02140FA8 ; =0x0209BA20
	bl FUN_0204ec3c
_02140FA0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02140FA8: .word unk_0209BA20
	arm_func_end FUN_ov131_02140f30

	arm_func_start FUN_ov131_02140fac
FUN_ov131_02140fac: ; 0x02140FAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov131_02140dec
	ldrh r2, [r7, #8]
	mov r4, #0
	mov r1, r4
	cmp r2, #0
	ldr r12, [r7, #4]
	ble _02141014
_02140FD8:
	ldrb r2, [r12, #0x2a]
	add r2, r2, #0xc2
	and r2, r2, #0xff
	cmp r2, #1
	ldrlsh r3, [r12, #0x24]
	movls r2, r4, lsl #1
	addls r4, r4, #1
	strlsh r3, [r6, r2]
	cmp r4, r5
	bge _02141014
	ldrh r2, [r7, #8]
	add r1, r1, #1
	add r12, r12, #0x2c
	cmp r1, r2
	blt _02140FD8
_02141014:
	cmp r0, #0
	beq _02141024
	ldr r0, _0214102C ; =0x0209BA20
	bl FUN_0204ec3c
_02141024:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214102C: .word unk_0209BA20
	arm_func_end FUN_ov131_02140fac

	arm_func_start FUN_ov131_02141030
FUN_ov131_02141030: ; 0x02141030
	cmp r2, #0x14
	beq _02141044
	cmp r2, #0x16
	beq _0214104C
	b _02141054
_02141044:
	mov r0, r1
	bx lr
_0214104C:
	add r0, r1, #8
	bx lr
_02141054:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov131_02141030

	arm_func_start FUN_ov131_0214105c
FUN_ov131_0214105c: ; 0x0214105C
	sub r0, r2, #0x1e
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _021410C0
_0214106C: ; jump table
	b _02141088 ; case 0
	b _02141090 ; case 1
	b _02141098 ; case 2
	b _021410A0 ; case 3
	b _021410A8 ; case 4
	b _021410B0 ; case 5
	b _021410B8 ; case 6
_02141088:
	add r0, r1, #0x10
	bx lr
_02141090:
	add r0, r1, #0x14
	bx lr
_02141098:
	add r0, r1, #0x18
	bx lr
_021410A0:
	add r0, r1, #0x1c
	bx lr
_021410A8:
	add r0, r1, #0x20
	bx lr
_021410B0:
	add r0, r1, #0x24
	bx lr
_021410B8:
	add r0, r1, #0x28
	bx lr
_021410C0:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov131_0214105c

	arm_func_start FUN_ov131_021410c8
FUN_ov131_021410c8: ; 0x021410C8
	stmfd sp!, {r3, lr}
	sub r0, r2, #0x14
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0214110C
_021410DC: ; jump table
	b _021410EC ; case 0
	b _021410EC ; case 1
	b _021410FC ; case 2
	b _021410FC ; case 3
_021410EC:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsh r0, [r0, #0x18]
	ldmfd sp!, {r3, pc}
_021410FC:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsh r0, [r0, #0x1a]
	ldmfd sp!, {r3, pc}
_0214110C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_021410c8

	arm_func_start FUN_ov131_02141114
FUN_ov131_02141114: ; 0x02141114
	stmfd sp!, {r4, lr}
	sub r0, r2, #0x14
	mov r4, r3
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0214112C: ; jump table
	b _0214113C ; case 0
	b _0214113C ; case 1
	b _02141150 ; case 2
	b _02141150 ; case 3
_0214113C:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206df6c
	ldmfd sp!, {r4, pc}
_02141150:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206dfd4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov131_02141114

	arm_func_start FUN_ov131_02141164
FUN_ov131_02141164: ; 0x02141164
	stmfd sp!, {r3, lr}
	sub r0, r2, #0x14
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _0214124C
_02141178: ; jump table
	b _021411BC ; case 0
	b _021411BC ; case 1
	b _021411CC ; case 2
	b _021411CC ; case 3
	b _0214124C ; case 4
	b _0214124C ; case 5
	b _0214124C ; case 6
	b _0214124C ; case 7
	b _0214124C ; case 8
	b _0214124C ; case 9
	b _021411DC ; case 10
	b _021411EC ; case 11
	b _021411FC ; case 12
	b _0214120C ; case 13
	b _0214121C ; case 14
	b _0214122C ; case 15
	b _0214123C ; case 16
_021411BC:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsh r0, [r0, #0x18]
	ldmfd sp!, {r3, pc}
_021411CC:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsh r0, [r0, #0x1a]
	ldmfd sp!, {r3, pc}
_021411DC:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x4f]
	ldmfd sp!, {r3, pc}
_021411EC:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x50]
	ldmfd sp!, {r3, pc}
_021411FC:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x51]
	ldmfd sp!, {r3, pc}
_0214120C:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x52]
	ldmfd sp!, {r3, pc}
_0214121C:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x53]
	ldmfd sp!, {r3, pc}
_0214122C:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x54]
	ldmfd sp!, {r3, pc}
_0214123C:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x55]
	ldmfd sp!, {r3, pc}
_0214124C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_02141164

	arm_func_start FUN_ov131_02141254
FUN_ov131_02141254: ; 0x02141254
	stmfd sp!, {r4, lr}
	sub r0, r2, #0x14
	mov r4, r3
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0214126C: ; jump table
	b _021412B0 ; case 0
	b _021412B0 ; case 1
	b _021412C4 ; case 2
	b _021412C4 ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	ldmfd sp!, {r4, pc} ; case 6
	ldmfd sp!, {r4, pc} ; case 7
	ldmfd sp!, {r4, pc} ; case 8
	ldmfd sp!, {r4, pc} ; case 9
	b _021412D8 ; case 10
	b _021412EC ; case 11
	b _02141300 ; case 12
	b _02141314 ; case 13
	b _02141328 ; case 14
	b _0214133C ; case 15
	b _02141350 ; case 16
_021412B0:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206df6c
	ldmfd sp!, {r4, pc}
_021412C4:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206dfd4
	ldmfd sp!, {r4, pc}
_021412D8:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e50c
	ldmfd sp!, {r4, pc}
_021412EC:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e574
	ldmfd sp!, {r4, pc}
_02141300:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e5dc
	ldmfd sp!, {r4, pc}
_02141314:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e644
	ldmfd sp!, {r4, pc}
_02141328:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e6ac
	ldmfd sp!, {r4, pc}
_0214133C:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e714
	ldmfd sp!, {r4, pc}
_02141350:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e77c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov131_02141254

	arm_func_start FUN_ov131_02141364
FUN_ov131_02141364: ; 0x02141364
	sub r0, r1, #0x14
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _02141400
_02141374: ; jump table
	b _021413F0 ; case 0
	b _02141400 ; case 1
	b _021413F8 ; case 2
	b _02141400 ; case 3
	b _02141400 ; case 4
	b _02141400 ; case 5
	b _02141400 ; case 6
	b _02141400 ; case 7
	b _02141400 ; case 8
	b _02141400 ; case 9
	b _021413B8 ; case 10
	b _021413D8 ; case 11
	b _021413E0 ; case 12
	b _021413C0 ; case 13
	b _021413C8 ; case 14
	b _021413E8 ; case 15
	b _021413D0 ; case 16
_021413B8:
	mov r0, #0x21
	bx lr
_021413C0:
	mov r0, #0x1e
	bx lr
_021413C8:
	mov r0, #0x24
	bx lr
_021413D0:
	mov r0, #0x22
	bx lr
_021413D8:
	mov r0, #0x20
	bx lr
_021413E0:
	mov r0, #0x23
	bx lr
_021413E8:
	mov r0, #0x1f
	bx lr
_021413F0:
	mov r0, #0x16
	bx lr
_021413F8:
	mov r0, #0x14
	bx lr
_02141400:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov131_02141364

	arm_func_start FUN_ov131_02141408
FUN_ov131_02141408: ; 0x02141408
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x50
	mov r6, r3
	mov r9, r0
	mov r8, r1
	mov r7, r2
	bl FUN_ov131_021410c8
	cmp r6, #0
	mov r5, r0
	addeq sp, sp, #0x50
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bge _02141494
	ldr r0, _02141520 ; =0xFFFFFC19
	add r1, r5, r6
	cmp r1, r0
	sublt r6, r0, r5
	add r0, r5, r6
	mov r3, r0, lsl #0x10
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r3, asr #0x10
	bl FUN_ov131_02141114
	mov r2, #2
	str r2, [sp]
	mov r3, #0
	ldr r0, _02141524 ; =0x0209BA20
	mov r1, r8
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #0x50
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02141494:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov131_021419ac
	cmp r6, r0
	movgt r6, r0
	mov r0, r8
	bl FUN_0206cbf8
	ldr r4, _02141524 ; =0x0209BA20
	mov r1, r0
	add r2, sp, #8
	mov r0, r4
	bl FUN_0204c078
	cmp r0, #0
	addeq sp, sp, #0x50
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, r6
	mov r3, r0, lsl #0x10
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r3, asr #0x10
	bl FUN_ov131_02141114
	mov r2, #2
	mov r0, r4
	mov r1, r8
	str r2, [sp]
	mov r3, #0
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
	mov r0, r6
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02141520: .word 0xFFFFFC19
_02141524: .word unk_0209BA20
	arm_func_end FUN_ov131_02141408

	arm_func_start FUN_ov131_02141528
FUN_ov131_02141528: ; 0x02141528
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	mov r9, r1
	mov r8, r2
	cmp r8, #0x14
	mov r10, r0
	mov r7, r3
	add r5, r9, #0x6c
	cmpne r8, #0x16
	bne _0214156C
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov131_02141408
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214156C:
	bl FUN_ov131_02141164
	mov r4, r0, lsl #0x18
	mov r0, r10
	mov r1, r8
	bl FUN_ov131_02141364
	mov r2, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov131_02141164
	cmp r7, #0
	mov r11, r0, lsl #0x18
	addeq sp, sp, #0x50
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #0
	bge _02141610
	add r1, r7, r4, asr #24
	mvn r0, #0x7e
	cmp r1, r0
	sublt r7, r0, r4, asr #24
	ldrb r0, [sp, #0x78]
	cmp r0, #0
	beq _02141604
	add r0, r7, r4, asr #24
	mov r3, r0, lsl #0x18
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r3, asr #0x18
	bl FUN_ov131_02141254
	mov r2, #2
	ldr r0, _02141778 ; =0x0209BA20
	mov r1, r9
	str r2, [sp]
	mov r3, #0
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
_02141604:
	add sp, sp, #0x50
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02141610:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov131_021419ac
	cmp r7, r0
	movgt r7, r0
	mov r0, r9
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _02141778 ; =0x0209BA20
	add r2, sp, #8
	bl FUN_0204c078
	cmp r0, #0
	addeq sp, sp, #0x50
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0214177C ; =0x020A1540
	ldrb r1, [sp, #0x4e]
	ldrh r0, [r0, #0xd0]
	mov r0, r0, asr r1
	tst r0, #1
	movne r2, #1
	ldrh r1, [sp, #0x44]
	moveq r2, #0
	mov r0, #0x14
	cmp r1, #0
	ldreq r1, _02141780 ; =0x00007FFF
	mla r6, r2, r0, r1
	mov r1, #0
	b _02141698
_02141688:
	add r0, r5, r1
	ldrb r0, [r0, #0xf]
	add r1, r1, #1
	sub r6, r6, r0
_02141698:
	cmp r1, #7
	blt _02141688
	mov r0, r9
	bl FUN_0206cc34
	mov r5, r0
	mov r0, r10
	mov r1, r8
	bl FUN_ov131_02141364
	mov r2, r0
	mov r0, r10
	add r1, sp, #8
	bl FUN_ov131_0214105c
	mov r1, r0
	ldr r0, _02141778 ; =0x0209BA20
	mov r2, r5
	bl FUN_0204e01c
	add r1, r0, r11, asr #24
	sub r0, r7, r6
	sub r0, r1, r0
	cmp r0, #1
	ldrb r0, [sp, #0x78]
	sublt r7, r1, #1
	cmp r0, #0
	beq _0214176C
	add r0, r7, r4, asr #24
	mov r3, r0, lsl #0x18
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r3, asr #0x18
	bl FUN_ov131_02141254
	sub r0, r7, r6
	cmp r0, #0
	ble _0214174C
	mov r0, r10
	mov r1, r8
	bl FUN_ov131_02141364
	sub r1, r7, r6
	rsb r1, r1, r11, asr #24
	mov r3, r1, lsl #0x18
	mov r2, r0
	mov r0, r10
	mov r1, r9
	mov r3, r3, asr #0x18
	bl FUN_ov131_02141254
_0214174C:
	mov r2, #2
	ldr r0, _02141778 ; =0x0209BA20
	mov r1, r9
	str r2, [sp]
	mov r3, #0
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
_0214176C:
	mov r0, r7
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02141778: .word unk_0209BA20
_0214177C: .word unk_020A1540
_02141780: .word 0x00007FFF
	arm_func_end FUN_ov131_02141528

	arm_func_start FUN_ov131_02141784
FUN_ov131_02141784: ; 0x02141784
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x48
	mov r9, r1
	mov r8, r2
	cmp r8, #0x14
	cmpne r8, #0x16
	mov r10, r0
	mov r7, r3
	add r5, r9, #0x6c
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_ov131_02141164
	mov r0, r10
	mov r1, r8
	bl FUN_ov131_02141364
	mov r2, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov131_02141164
	cmp r7, #0
	mov r4, r0, lsl #0x18
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov131_021419ac
	cmp r7, r0
	movgt r7, r0
	mov r0, r9
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _021418E0 ; =0x0209BA20
	add r2, sp, #0
	bl FUN_0204c078
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _021418E4 ; =0x020A1540
	ldrb r1, [sp, #0x46]
	ldrh r0, [r0, #0xd0]
	mov r0, r0, asr r1
	tst r0, #1
	movne r2, #1
	ldrh r1, [sp, #0x3c]
	moveq r2, #0
	mov r0, #0x14
	cmp r1, #0
	ldreq r1, _021418E8 ; =0x00007FFF
	mla r6, r2, r0, r1
	mov r1, #0
	b _02141870
_02141860:
	add r0, r5, r1
	ldrb r0, [r0, #0xf]
	add r1, r1, #1
	sub r6, r6, r0
_02141870:
	cmp r1, #7
	blt _02141860
	mov r0, r9
	bl FUN_0206cc34
	mov r5, r0
	mov r0, r10
	mov r1, r8
	bl FUN_ov131_02141364
	mov r2, r0
	add r1, sp, #0
	mov r0, r10
	bl FUN_ov131_0214105c
	mov r1, r0
	ldr r0, _021418E0 ; =0x0209BA20
	mov r2, r5
	bl FUN_0204e01c
	add r1, r0, r4, asr #24
	sub r0, r7, r6
	sub r0, r1, r0
	cmp r0, #1
	ldrb r0, [sp, #0x68]
	sublt r7, r1, #1
	cmp r0, #0
	subne r0, r7, r6
	cmpne r0, #0
	movle r0, #0
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021418E0: .word unk_0209BA20
_021418E4: .word unk_020A1540
_021418E8: .word 0x00007FFF
	arm_func_end FUN_ov131_02141784

	arm_func_start FUN_ov131_021418ec
FUN_ov131_021418ec: ; 0x021418EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	mov r7, r2
	mov r8, r0
	mov r4, r1
	bl FUN_ov131_02141164
	mov r5, r0
	cmp r7, #0x14
	beq _02141918
	cmp r7, #0x16
	bne _02141930
_02141918:
	cmp r5, #0x14
	addge sp, sp, #0x48
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	rsb r6, r5, #0x14
	b _02141944
_02141930:
	cmp r5, #0x32
	addge sp, sp, #0x48
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	rsb r6, r5, #0x32
_02141944:
	mov r0, r4
	bl FUN_0206cbf8
	add r4, sp, #0
	mov r1, r0
	ldr r0, _021419A4 ; =0x0209BA20
	mov r2, r4
	bl FUN_0204c078
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl FUN_ov131_02141030
	ldrh r1, [r0, #2]
	ldr r0, _021419A8 ; =0x000003E7
	add r1, r1, r5
	sub r0, r0, r1
	cmp r0, r6
	movlt r6, r0
	mov r0, r6
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021419A4: .word unk_0209BA20
_021419A8: .word 0x000003E7
	arm_func_end FUN_ov131_021418ec

	arm_func_start FUN_ov131_021419ac
FUN_ov131_021419ac: ; 0x021419AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x48
	movs r7, r1
	mov r8, r0
	mov r5, r2
	add r4, r7, #0x6c
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0x14
	cmpne r5, #0x16
	bne _021419F4
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov131_021418ec
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021419F4:
	bl FUN_ov131_02141164
	mov r6, r0
	mov r0, r8
	mov r1, r5
	bl FUN_ov131_02141364
	mov r2, r0
	mov r0, r8
	mov r1, r7
	bl FUN_ov131_02141164
	mov r1, r5
	mov r5, r0
	mov r0, r8
	bl FUN_ov131_02141364
	add r10, sp, #0
	mov r2, r0
	mov r0, r8
	mov r1, r10
	bl FUN_ov131_0214105c
	cmp r6, #0x32
	mov r9, r0
	addge sp, sp, #0x48
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r7
	rsb r6, r6, #0x32
	bl FUN_0206cbf8
	ldr r8, _02141B18 ; =0x0209BA20
	mov r1, r0
	mov r0, r8
	mov r2, r10
	bl FUN_0204c078
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r7
	bl FUN_0206cc34
	mov r2, r0
	mov r0, r8
	mov r1, r9
	bl FUN_0204e01c
	ldr r1, _02141B1C ; =0x020A1540
	ldrb r3, [r9, #1]
	ldrb r2, [sp, #0x46]
	ldrh r1, [r1, #0xd0]
	sub r3, r3, r0
	mov r0, r1, asr r2
	tst r0, #1
	movne r7, #1
	ldrh r1, [sp, #0x3c]
	moveq r7, #0
	mov r0, #0x14
	cmp r1, #0
	ldreq r1, _02141B20 ; =0x00007FFF
	mla r2, r7, r0, r1
	mov r1, #0
	b _02141AE8
_02141AD8:
	add r0, r4, r1
	ldrb r0, [r0, #0xf]
	add r1, r1, #1
	sub r2, r2, r0
_02141AE8:
	cmp r1, #7
	blt _02141AD8
	sub r1, r5, r3
	mvn r0, #0x7e
	subs r0, r0, r1
	rsbmi r0, r0, #0
	add r0, r2, r0
	cmp r6, r0
	movgt r6, r0
	mov r0, r6
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02141B18: .word unk_0209BA20
_02141B1C: .word unk_020A1540
_02141B20: .word 0x00007FFF
	arm_func_end FUN_ov131_021419ac

	arm_func_start FUN_ov131_02141b24
FUN_ov131_02141b24: ; 0x02141B24
	ldrb r0, [r0]
	bx lr
	arm_func_end FUN_ov131_02141b24

	arm_func_start FUN_ov131_02141b2c
FUN_ov131_02141b2c: ; 0x02141B2C
	strb r1, [r0]
	bx lr
	arm_func_end FUN_ov131_02141b2c

	arm_func_start FUN_ov131_02141b34
FUN_ov131_02141b34: ; 0x02141B34
	cmp r1, #0
	moveq r1, #1
	cmp r1, #5
	ldr r0, _02141B50 ; =0x020A0B00
	ldr r12, _02141B54 ; =FUN_02074750
	movhs r1, #4
	bx r12
_02141B50: .word unk_020A0B00
_02141B54: .word FUN_02074750
	arm_func_end FUN_ov131_02141b34

	arm_func_start FUN_ov131_02141b58
FUN_ov131_02141b58: ; 0x02141B58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x268
	mov r4, #0
	mov r11, r1
	mov r2, #6
	add r0, sp, #8
	mov r1, r4
	mov r6, r2
	bl MI_CpuFill8
	add r9, sp, #0xe
	mov r1, r4
	mov r0, r9
	mov r2, #0x258
	bl MI_CpuFill8
	mov r5, #0x50
	mov r0, r11
	mov r1, r4
	mov r2, r5
	bl MI_CpuFill8
	mov r2, r5
	add r0, r11, #0x50
	mov r1, r4
	bl MI_CpuFill8
	strb r4, [r11, #0xb8]
	mov r7, r4
_02141BBC:
	mov r0, r7
	bl  FUN_ov16_020efa80
	movs r5, r0
	beq _02141C10
	bl FUN_0206d64c
	cmp r0, #0
	beq _02141C10
	mul r10, r4, r6
	mov r0, r5
	add r8, r9, r10
	bl FUN_0206cbf8
	strh r0, [r9, r10]
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r1, [r0, #6]
	mov r0, r5
	strh r1, [r8, #2]
	bl FUN_0206dcd4
	ldrh r0, [r0, #0xa]
	add r4, r4, #1
	strh r0, [r8, #4]
_02141C10:
	add r7, r7, #1
	cmp r7, #0x64
	blt _02141BBC
	cmp r4, #0xa
	movgt r0, #1
	strgtb r0, [r11, #0xb8]
	mov r0, #0
	cmp r4, #0
	str r0, [sp]
	ble _02141CB8
	sub r8, r4, #1
	add r7, sp, #8
_02141C40:
	mov r10, #0
	cmp r8, #0
	ble _02141CA4
_02141C4C:
	mla r5, r10, r6, r9
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #0xa]
	cmp r1, r0
	bhs _02141C98
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl MI_CpuCopy8
	mov r1, r5
	add r0, r10, #1
	mul r5, r0, r6
	add r0, r9, r5
	mov r2, r6
	bl MI_CpuCopy8
	add r1, r9, r5
	mov r0, r7
	mov r2, r6
	bl MI_CpuCopy8
_02141C98:
	add r10, r10, #1
	cmp r10, r8
	blt _02141C4C
_02141CA4:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r4
	blt _02141C40
_02141CB8:
	cmp r4, #0
	add r3, sp, #0xe
	mov r7, #6
	mov r5, #0
	ble _02141D04
_02141CCC:
	cmp r5, #0xa
	bge _02141D04
	mul r2, r5, r7
	ldrh r0, [r3, r2]
	add r1, r11, r5, lsl #3
	add r5, r5, #1
	strh r0, [r1, #0x50]
	and r0, r5, #0xff
	strh r0, [r1, #0x52]
	add r0, r3, r2
	ldrh r0, [r0, #4]
	cmp r5, r4
	strh r0, [r1, #0x54]
	blt _02141CCC
_02141D04:
	add r9, sp, #0xe
	mov r6, #0
	sub r1, r4, #1
	mov r0, #9
	b _02141D34
_02141D18:
	add r5, r11, r6, lsl #3
	ldrh r3, [r5, #0x54]
	ldrh r2, [r5, #0x5c]
	add r6, r6, #1
	cmp r3, r2
	ldreqh r2, [r5, #0x52]
	streqh r2, [r5, #0x5a]
_02141D34:
	ldrb r2, [r11, #0xb8]
	cmp r2, #0
	moveq r2, r1
	movne r2, r0
	cmp r6, r2
	blt _02141D18
	mov r0, #0
	cmp r4, #0
	str r0, [sp, #4]
	ble _02141DDC
	sub r10, r4, #1
	add r8, sp, #8
_02141D64:
	mov r5, #0
	cmp r10, #0
	ble _02141DC8
_02141D70:
	mla r6, r5, r7, r9
	ldrh r1, [r6, #2]
	ldrh r0, [r6, #8]
	cmp r1, r0
	bhs _02141DBC
	mov r0, r6
	mov r1, r8
	mov r2, r7
	bl MI_CpuCopy8
	mov r1, r6
	add r0, r5, #1
	mul r6, r0, r7
	add r0, r9, r6
	mov r2, r7
	bl MI_CpuCopy8
	add r1, r9, r6
	mov r0, r8
	mov r2, r7
	bl MI_CpuCopy8
_02141DBC:
	add r5, r5, #1
	cmp r5, r10
	blt _02141D70
_02141DC8:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, r4
	blt _02141D64
_02141DDC:
	cmp r4, #0
	add r5, sp, #0xe
	mov r0, #6
	mov r6, #0
	ble _02141E2C
_02141DF0:
	cmp r6, #0xa
	bge _02141E2C
	mul r3, r6, r0
	ldrh r1, [r5, r3]
	mov r2, r6, lsl #3
	add r6, r6, #1
	strh r1, [r11, r2]
	and r1, r6, #0xff
	add r2, r11, r2
	strh r1, [r2, #2]
	add r1, r5, r3
	ldrh r1, [r1, #2]
	cmp r6, r4
	strh r1, [r2, #4]
	blt _02141DF0
_02141E2C:
	mov r5, #0
	sub r1, r4, #1
	mov r0, #9
	b _02141E58
_02141E3C:
	add r4, r11, r5, lsl #3
	ldrh r3, [r4, #4]
	ldrh r2, [r4, #0xc]
	add r5, r5, #1
	cmp r3, r2
	ldreqh r2, [r4, #2]
	streqh r2, [r4, #0xa]
_02141E58:
	ldrb r2, [r11, #0xb8]
	cmp r2, #0
	moveq r2, r1
	movne r2, r0
	cmp r5, r2
	blt _02141E3C
	add sp, sp, #0x268
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov131_02141b58

	arm_func_start FUN_ov131_02141e78
FUN_ov131_02141e78: ; 0x02141E78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, r2
	mov r10, r1
	ldr r5, _021421C0 ; =0x0000270F
	mov r4, #0
	bl FUN_ov131_02141b58
	cmp r6, #0
	ldr r0, _021421C4 ; =0x36B06E71
	beq _02141EF0
	ldr r1, _021421C8 ; =0x020A0640
	ldr r2, _021421CC ; =0x000003E7
	ldr r3, [r1, #0x4dc]
	umull r1, r0, r3, r0
	sub r1, r3, r0
	add r0, r0, r1, lsr #1
	ldr r1, _021421D0 ; =0x91A2B3C5
	mov r0, r0, lsr #0x11
	umull r1, r6, r3, r1
	cmp r2, r0
	movlt r0, r2
	ldr r2, _021421D4 ; =0x88888889
	mov r6, r6, lsr #0xb
	umull r1, r2, r6, r2
	mov r2, r2, lsr #5
	mov r3, #0x3c
	umull r1, r2, r3, r2
	rsb r2, r1, r6
	strh r0, [r10, #0xa0]
	strh r2, [r10, #0xa2]
	b _02141F48
_02141EF0:
	ldr r1, _021421D8 ; =0x020A1640
	ldr r2, [r1, #0x248]
	ldr r1, _021421CC ; =0x000003E7
	umull r0, r3, r2, r0
	sub r0, r2, r3
	add r3, r3, r0, lsr #1
	mov r3, r3, lsr #0x11
	cmp r1, r3
	movlt r3, r1
	ldr r0, _021421D8 ; =0x020A1640
	strh r3, [r10, #0xa0]
	ldr r2, [r0, #0x248]
	ldr r0, _021421D0 ; =0x91A2B3C5
	ldr r1, _021421D4 ; =0x88888889
	umull r0, r3, r2, r0
	mov r3, r3, lsr #0xb
	umull r0, r1, r3, r1
	mov r1, r1, lsr #5
	mov r2, #0x3c
	umull r0, r1, r2, r1
	rsb r1, r0, r3
	strh r1, [r10, #0xa2]
_02141F48:
	ldrh r0, [r10]
	ldrh r1, [r10, #4]
	ldrh r2, [r10, #0x54]
	strh r0, [r10, #0xa4]
	ldrh r0, [r10, #0x50]
	cmp r1, r5
	movgt r1, r5
	strh r0, [r10, #0xa8]
	cmp r2, r5
	movgt r2, r5
	ldr r0, _021421C8 ; =0x020A0640
	strh r2, [r10, #0xaa]
	strh r1, [r10, #0xa6]
	ldr r1, [r0, #0x550]
	ldr r0, _021421DC ; =0x020A0B40
	cmp r1, r5
	movgt r1, r5
	strh r1, [r10, #0xac]
	ldrh r2, [r0, #0xf4]
	ldr r0, _021421E0 ; =0x0209BA20
	mov r1, r4
	cmp r2, r5
	movgt r2, r5
	strh r2, [r10, #0xae]
	bl FUN_0207249c
	cmp r0, #0
	beq _02141FDC
	ldrh r2, [r0, #0x44]
	ldrh r0, [r0, #0x46]
	add r1, r2, r0
	cmp r1, #0
	strleb r4, [r10, #0xb3]
	ble _02141FDC
	mov r0, #0x64
	mul r0, r2, r0
	bl _s32_div_f
	strb r0, [r10, #0xb3]
_02141FDC:
	mov r7, #0
	mov r3, r7
	ldr r1, _021421E4 ; =0x020A0DB0
	b _02142014
_02141FEC:
	mov r6, r4
	ldrb r2, [r1, r3]
	b _02142008
_02141FF8:
	mov r0, r2, asr r6
	and r0, r0, #1
	add r7, r7, r0
	add r6, r6, #1
_02142008:
	cmp r6, #8
	blt _02141FF8
	add r3, r3, #1
_02142014:
	cmp r3, #0x148
	blt _02141FEC
	ldr r0, _021421E0 ; =0x0209BA20
	cmp r7, r5
	movgt r7, r5
	mov r1, #0
	strh r7, [r10, #0xb0]
	bl FUN_0204c420
	mov r7, #0
	ldr r1, _021421CC ; =0x000003E7
	ldr r11, _021421E0 ; =0x0209BA20
	cmp r0, r1
	movgt r0, r1
	strb r0, [r10, #0xb2]
	mov r0, r11
	mov r8, r7
	mov r9, r7
	bl FUN_0204eba0
	ldr r0, _021421E8 ; =0x0209C220
	ldr r5, [r11, #0x7ec]
	ldrh r6, [r0, #0x6a]
	b _021420FC
_0214206C:
	ldrh r0, [r5, #0x24]
	cmp r0, #0
	beq _021420F4
	ldrb r0, [r5, #0x2b]
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #1
	beq _021420F4
	ldrh r1, [r5, #0x24]
	mov r0, r11
	bl FUN_0204bc4c
	mov r4, r0
	ldr r0, _021421E4 ; =0x020A0DB0
	mov r1, r4
	bl FUN_020508fc
	cmp r0, #0
	bne _021420DC
	ldr r0, _021421EC ; =0x020A0C68
	mov r1, r4
	bl FUN_02050820
	cmp r0, #0
	bne _021420DC
	ldr r0, _021421F0 ; =0x020A108A
	mov r1, r4
	bl FUN_020509d8
	cmp r0, #0
	beq _021420E8
_021420DC:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
_021420E8:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
_021420F4:
	add r9, r9, #1
	add r5, r5, #0x2c
_021420FC:
	cmp r9, r6
	blt _0214206C
	ldr r0, _021421C8 ; =0x020A0640
	ldrb r0, [r0, #0x564]
	cmp r0, #0
	mov r0, #0x64
	bne _02142124
	mul r0, r7, r0
	mov r1, r8
	bl _s32_div_f
_02142124:
	mov r5, #0
	strb r0, [r10, #0xb4]
	mov r6, r5
	mov r7, r5
	ldr r4, _021421E0 ; =0x0209BA20
	b _02142178
_0214213C:
	mov r0, r4
	mov r1, r7
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _02142174
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x15
	bne _02142174
	mov r0, r4
	mov r1, r7
	bl  FUN_ov16_020edec4
	cmp r0, #1
	addge r6, r6, #1
	add r5, r5, #1
_02142174:
	add r7, r7, #1
_02142178:
	cmp r7, #0x400
	blt _0214213C
	mov r0, #0x64
	mul r0, r6, r0
	mov r1, r5
	bl _s32_div_f
	strb r0, [r10, #0xb5]
	mov r0, #0
	b _021421A0
_0214219C:
	add r0, r0, #1
_021421A0:
	cmp r0, #0xa
	blt _0214219C
	mov r0, #0
	b _021421B4
_021421B0:
	add r0, r0, #1
_021421B4:
	cmp r0, #0xa
	blt _021421B0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021421C0: .word 0x0000270F
_021421C4: .word 0x36B06E71
_021421C8: .word unk_020A0640
_021421CC: .word 0x000003E7
_021421D0: .word 0x91A2B3C5
_021421D4: .word 0x88888889
_021421D8: .word unk_020A1640
_021421DC: .word unk_020A0B40
_021421E0: .word unk_0209BA20
_021421E4: .word unk_020A0DB0
_021421E8: .word unk_0209C220
_021421EC: .word unk_020A0C68
_021421F0: .word unk_020A108A
	arm_func_end FUN_ov131_02141e78

	arm_func_start FUN_ov131_021421f4
FUN_ov131_021421f4: ; 0x021421F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	add r1, r7, #3
	cmp r1, #3
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r1, #5
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r6, _021422D8 ; =0x0209BA20
	mov r0, r6
	bl FUN_0205107c
	mov r4, r0
	mov r0, r6
	mov r1, #2
	bl FUN_0205107c
	mov r1, r0
	mov r0, r4
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_0207249c
	ldr r1, _021422DC ; =0x020A1656
	mov r4, r7, lsl #1
	ldrh r1, [r1, r4]
	mov r6, #0x8000
	ldr r8, _021422E0 ; =0x020A165C
	strh r1, [r0, #0x48]
	mov r7, r6
	b _021422C0
_0214226C:
	mov r0, r5
	bl  FUN_ov16_020efa80
	movs r9, r0
	beq _021422BC
	bl FUN_0206d64c
	cmp r0, #0
	beq _021422BC
	mov r0, r9
	bl FUN_0206cbf8
	ldrh r1, [r8, r4]
	cmp r1, r0
	mov r0, r9
	bne _021422B0
	bl FUN_0206dcd4
	mov r1, r7
	bl FUN_0206e18c
	b _021422BC
_021422B0:
	bl FUN_0206dcd4
	mov r1, r6
	bl FUN_0206e20c
_021422BC:
	add r5, r5, #1
_021422C0:
	cmp r5, #0x64
	blt _0214226C
	ldr r0, _021422D8 ; =0x0209BA20
	mov r1, #0
	bl FUN_0204da5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021422D8: .word unk_0209BA20
_021422DC: .word unk_020A1656
_021422E0: .word unk_020A165C
	arm_func_end FUN_ov131_021421f4

	arm_func_start FUN_ov131_021422e4
FUN_ov131_021422e4: ; 0x021422E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	add r1, r6, #3
	cmp r1, #3
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #5
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0214239C ; =0x0209BA20
	mov r0, r5
	bl FUN_0205107c
	mov r4, r0
	mov r0, r5
	mov r1, #2
	bl FUN_0205107c
	mov r1, r4
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	ldrh r1, [r0, #0x48]
	ldr r0, _021423A0 ; =0x020A1656
	mov r7, r6, lsl #1
	strh r1, [r0, r7]
	ldr r5, _021423A4 ; =0x020A165C
	b _02142390
_02142350:
	mov r0, r4
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _0214238C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0214238C
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #0x8000
	beq _0214238C
	mov r0, r6
	bl FUN_0206cbf8
	strh r0, [r5, r7]
_0214238C:
	add r4, r4, #1
_02142390:
	cmp r4, #0x64
	blt _02142350
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214239C: .word unk_0209BA20
_021423A0: .word unk_020A1656
_021423A4: .word unk_020A165C
	arm_func_end FUN_ov131_021422e4

	arm_func_start FUN_ov131_021423a8
FUN_ov131_021423a8: ; 0x021423A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	add r5, sp, #8
	mov r0, r5
	mov r1, #0xff
	mov r2, #8
	ldr r6, _02142488 ; =0x020A11DC
	bl MI_CpuFill8
	mov r0, #6
	bl  FUN_ov16_020ef8d4
	mov r7, #0
	str r0, [r6, #8]
	mov r4, r7
	add r9, sp, #0
	mov r8, r7
	b _0214242C
_021423E8:
	rsb r0, r7, #8
	bl  FUN_ov16_020ef8d4
	mov r2, r4
	and r1, r0, #0xff
	b _02142414
_021423FC:
	ldrb r0, [r5, r2]
	cmp r0, #0xff
	addne r0, r1, #1
	andne r1, r0, #0xff
	add r0, r2, #1
	and r2, r0, #0xff
_02142414:
	cmp r2, r1
	bls _021423FC
	add r0, r7, #1
	strb r1, [r9, r7]
	strb r8, [r5, r1]
	and r7, r0, #0xff
_0214242C:
	cmp r7, #8
	blo _021423E8
	mov r0, #0
	add r2, sp, #0
	b _02142458
_02142440:
	ldrb r1, [r2, r0]
	ldr r3, [r6, #8]
	add r0, r0, #1
	orr r1, r1, r3, lsl #3
	str r1, [r6, #8]
	and r0, r0, #0xff
_02142458:
	cmp r0, #8
	blo _02142440
	ldr r1, [r6, #8]
	mov r0, #0x20
	mov r1, r1, lsl #5
	str r1, [r6, #8]
	bl  FUN_ov16_020ef8d4
	ldr r1, [r6, #8]
	orr r0, r1, r0
	str r0, [r6, #8]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02142488: .word unk_020A11DC
	arm_func_end FUN_ov131_021423a8

	arm_func_start FUN_ov131_0214248c
FUN_ov131_0214248c: ; 0x0214248C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r9, r2
	cmp r9, #0x34
	mov r10, r1
	addhs sp, sp, #0x58
	movhs r0, #1
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, [r0, #8]
	cmp r10, #0x30
	mov r0, r8, lsr #0x1d
	mov r0, r0, lsl #0x18
	mov r7, r0, asr #0x18
	bge _02142540
	ldr r3, _02142690 ; =0x2AAAAAAB
	mov r2, #6
	smull r0, r1, r3, r10
	add r1, r1, r10, lsr #31
	smull r0, r1, r2, r1
	sub r1, r10, r0
	cmp r7, r1
	mov r2, r10, lsr #0x1f
	bne _02142540
	smull r1, r0, r3, r10
	add r0, r2, r0
	mov r2, #0
_021424F4:
	add r1, r2, r2, lsl #1
	add r1, r1, #5
	mov r1, r8, lsr r1
	and r1, r1, #7
	cmp r1, r0
	bne _0214252C
	mov r0, #6
	mul r0, r2, r0
	add r0, r0, #5
	cmp r9, r0
	movge r0, #1
	add sp, sp, #0x58
	movlt r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214252C:
	add r1, r2, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, asr #0x10
	cmp r2, #8
	blt _021424F4
_02142540:
	mov r5, #0
	ldr r1, _02142690 ; =0x2AAAAAAB
	mov r6, r5
	mov r11, r5
	add r3, sp, #0
	mov r0, #6
_02142558:
	cmp r6, #8
	bge _02142590
	smull r2, r4, r1, r5
	add r4, r4, r5, lsr #31
	smull r2, r4, r0, r4
	sub r4, r5, r2
	cmp r7, r4
	bne _02142590
	add r2, r5, #1
	add r4, r6, #1
	mov r2, r2, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r5, r2, asr #0x10
	mov r6, r4, asr #0x10
_02142590:
	add r12, r11, #1
	add r2, r5, #1
	mov r4, r11, lsl #1
	mov r11, r12, lsl #0x10
	mov r11, r11, asr #0x10
	mov r2, r2, lsl #0x10
	strh r5, [r3, r4]
	cmp r11, #0x2c
	mov r5, r2, asr #0x10
	blt _02142558
	mov r11, #0
	cmp r9, #0
	mov r7, #0x2c
	mov r6, r11
	ble _02142684
	add r5, sp, #0
	mvn r4, #0
_021425D4:
	mov r0, r8
	mov r1, r7
	bl _u32_div_f
	mov r0, r1, lsl #0x10
	mov r1, r11
	movs r0, r0, asr #0x10
	bmi _02142620
	mvn r2, #0
_021425F4:
	mov r3, r1, lsl #1
	ldrsh r3, [r5, r3]
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	cmp r3, r2
	addeq r0, r0, #1
	moveq r0, r0, lsl #0x10
	moveq r0, r0, asr #0x10
	cmp r0, r1, asr #16
	mov r1, r1, asr #0x10
	bge _021425F4
_02142620:
	mov r0, r0, lsl #1
	ldrsh r1, [r5, r0]
	cmp r10, r1
	addeq sp, sp, #0x58
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r6, #1
	mov r1, r1, lsl #0x10
	mov r6, r1, asr #0x10
	ldr r12, _02142690 ; =0x2AAAAAAB
	add r1, r6, #1
	smull r3, r2, r12, r1
	sub r3, r7, #1
	mov r3, r3, lsl #0x10
	strh r4, [r5, r0]
	add r2, r2, r1, lsr #31
	mov r0, #6
	mov r7, r3, asr #0x10
	smull r2, r3, r0, r2
	sub r2, r1, r2
	cmp r2, #5
	moveq r0, r1, lsl #0x10
	moveq r6, r0, asr #0x10
	cmp r6, r9
	blt _021425D4
_02142684:
	mov r0, #0
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02142690: .word 0x2AAAAAAB
	arm_func_end FUN_ov131_0214248c

	arm_func_start FUN_ov131_02142694
FUN_ov131_02142694: ; 0x02142694
	stmfd sp!, {r3, lr}
	cmp r1, #0
	blt _021426A8
	cmp r1, #0x33
	ble _021426B0
_021426A8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_021426B0:
	ldrb r2, [r0, #2]
	bl FUN_ov131_0214248c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_02142694

	arm_func_start FUN_ov131_021426bc
FUN_ov131_021426bc: ; 0x021426BC
	cmp r1, #0
	blt _021426CC
	cmp r1, #7
	ble _021426D4
_021426CC:
	mov r0, #0
	bx lr
_021426D4:
	ldrb r2, [r0, #3]
	mov r0, #1
	tst r2, r0, lsl r1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov131_021426bc

	arm_func_start FUN_ov131_021426e8
FUN_ov131_021426e8: ; 0x021426E8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, #0
	mov r6, r1
	ldr r2, _021427FC ; =0x0000297C
	mov r5, r0
	mov r1, r4
	bl MI_CpuFill8
	add r0, r5, #0x1c8
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #0xf0
	bl MI_CpuFill8
	add r0, r5, #0x3000
	mov r2, #0x13
	mov r1, #1
	str r4, [r0, #0x2b8]
	str r4, [r0, #0x2c8]
	str r4, [r0, #0x2c0]
	str r4, [r0, #0x2c4]
	strb r2, [r0, #0x2cc]
	strb r1, [r0, #0x2cd]
	str r4, [r0, #0x2d0]
	strb r4, [r0, #0x2d8]
	strb r4, [r0, #0x2d9]
	strb r4, [r0, #0x2da]
	strb r4, [r0, #0x2db]
	str r4, [r0, #0x2dc]
	str r4, [r0, #0x2e0]
	str r4, [r0, #0x2e4]
	strb r4, [r0, #0x2e8]
	str r6, [r0, #0x2bc]
	str r4, [r0, #0x2d4]
	add r0, r5, #0x2d4
	add r2, r0, #0x3000
	mov r0, r1
_02142778:
	ldr r1, [r2]
	orr r1, r1, r0, lsl r4
	add r4, r4, #1
	str r1, [r2]
	cmp r4, #0x14
	blo _02142778
	add r0, sp, #0
	bl FUN_0200af48
	ldr r0, [sp]
	ldr r2, [sp, #4]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x10
	orr r3, r0, #0
	mov r0, r2, lsl #0x16
	ldr r1, [sp, #8]
	orr r2, r3, r0, lsr #16
	mov r0, r1, lsl #0x10
	orr r0, r2, r0, lsr #16
	bl FUN_02023ca0
	bl FUN_02023c6c
	ldr r3, _02142800 ; =0xB60B60B7
	mov r1, r0, lsr #0x1f
	smull r2, r4, r3, r0
	add r4, r0, r4
	add r4, r1, r4, asr #6
	mov r3, #0x5a
	smull r1, r2, r3, r4
	sub r4, r0, r1
	add r1, r4, #0x1e
	add r0, r5, #0x3000
	str r1, [r0, #0x2e0]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021427FC: .word 0x0000297C
_02142800: .word 0xB60B60B7
	arm_func_end FUN_ov131_021426e8

	arm_func_start FUN_ov131_02142804
FUN_ov131_02142804: ; 0x02142804
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0214283C ; =0x0209AEC0
	bl FUN_020465fc
	add r0, r4, #0x3000
	ldr r1, [r0, #0x2c8]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02142840 ; =0x0209A250
	bl FUN_0202e1c0
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x2c8]
	ldmfd sp!, {r4, pc}
_0214283C: .word unk_0209AEC0
_02142840: .word unk_0209A250
	arm_func_end FUN_ov131_02142804

	arm_func_start FUN_ov131_02142844
FUN_ov131_02142844: ; 0x02142844
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mov r5, r0
	add r0, r5, #0x3000
	mov r2, #0
	ldr r6, _02142994 ; =0x0214C984
	add lr, sp, #0
	mov r4, r1
	strb r2, [r0, #0x2e8]
	mov r12, #4
_0214286C:
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0214286C
	ldr r2, _02142998 ; =0x0208BFB0
	ldmia r6, {r0, r1}
	stmia lr, {r0, r1}
	ldr r0, [r2, #4]
	ldr r12, [r2]
	str r0, [sp, #0x44]
	str r12, [sp, #0x40]
	add r0, r5, #0x3000
	ldr r1, [r0, #0x2b8]
	add r3, sp, #0
	ldr r0, [r3, r1, lsl #3]
	add r1, r3, r1, lsl #3
	cmp r0, r12
	ldreq r1, [r1, #4]
	ldreq r0, [r2, #4]
	mov r6, #1
	cmpeq r1, r0
	moveq r6, #0
	cmp r6, #0
	addeq sp, sp, #0x48
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x3000
	ldr r1, [r0, #0x2bc]
	cmp r1, #2
	bne _0214292C
	ldr r1, _0214299C ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	beq _0214292C
	ldr r0, [r0, #0x2b8]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #7
	bne _0214292C
	ldr r0, _021429A0 ; =0x0209AEC0
	add r1, r5, #0x3000
	mov r2, #9
	str r2, [r1, #0x2b8]
	bl FUN_020465fc
	add sp, sp, #0x48
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0214292C:
	add r0, r5, #0x3000
	ldr r0, [r0, #0x2b8]
	add r1, sp, #0
	add r1, r1, r0, lsl #3
	ldr r0, [r1, #4]
	tst r0, #1
	add r0, r5, r0, asr #1
	ldrne r2, [r0]
	ldrne r1, [r1]
	ldrne r1, [r2, r1]
	ldreq r1, [r1]
	blx r1
	add r0, r5, #0x3000
	ldrb r1, [r0, #0x2e8]
	cmp r1, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0, #0x2e4]
	ldr r0, _021429A4 ; =0x0000084C
	sub r1, r1, #1
	mla r0, r1, r0, r5
	str r0, [r4]
	mov r0, #1
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, pc}
_02142994: .word ov131_0214C984
_02142998: .word unk_0208BFB0
_0214299C: .word 0x02FFFFA8
_021429A0: .word unk_0209AEC0
_021429A4: .word 0x0000084C
	arm_func_end FUN_ov131_02142844

	arm_func_start FUN_ov131_021429a8
FUN_ov131_021429a8: ; 0x021429A8
	add r0, r0, #0x3000
	ldr r0, [r0, #0x2e4]
	bx lr
	arm_func_end FUN_ov131_021429a8

	arm_func_start FUN_ov131_021429b4
FUN_ov131_021429b4: ; 0x021429B4
	cmp r1, #0
	blt _021429CC
	add r2, r0, #0x3000
	ldr r2, [r2, #0x2e4]
	cmp r1, r2
	blt _021429D4
_021429CC:
	mov r0, #0
	bx lr
_021429D4:
	ldr r2, _021429E0 ; =0x0000084C
	mla r0, r1, r2, r0
	bx lr
_021429E0: .word 0x0000084C
	arm_func_end FUN_ov131_021429b4

	arm_func_start FUN_ov131_021429e4
FUN_ov131_021429e4: ; 0x021429E4
	cmp r1, #0
	blt _021429FC
	add r2, r0, #0x3000
	ldr r2, [r2, #0x2e4]
	cmp r1, r2
	blt _02142A04
_021429FC:
	mov r0, #0
	bx lr
_02142A04:
	ldr r2, _02142A18 ; =0x0000084C
	mla r0, r1, r2, r0
	add r0, r0, #8
	add r0, r0, #0x800
	bx lr
_02142A18: .word 0x0000084C
	arm_func_end FUN_ov131_021429e4

	arm_func_start FUN_ov131_02142a1c
FUN_ov131_02142a1c: ; 0x02142A1C
	cmp r1, #0
	blt _02142A34
	add r2, r0, #0x3000
	ldr r2, [r2, #0x2e4]
	cmp r1, r2
	blt _02142A3C
_02142A34:
	mov r0, #0
	bx lr
_02142A3C:
	ldr r2, _02142A4C ; =0x0000084C
	mla r0, r1, r2, r0
	add r0, r0, #0x830
	bx lr
_02142A4C: .word 0x0000084C
	arm_func_end FUN_ov131_02142a1c

	arm_func_start FUN_ov131_02142a50
FUN_ov131_02142a50: ; 0x02142A50
	add r0, r0, #0x3000
	str r1, [r0, #0x2c0]
	str r2, [r0, #0x2c4]
	bx lr
	arm_func_end FUN_ov131_02142a50

	arm_func_start FUN_ov131_02142a60
FUN_ov131_02142a60: ; 0x02142A60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc8
	ldr r4, _02142EE8 ; =0x020A1640
	ldr r5, _02142EEC ; =0x00000888
	ldr r7, _02142EF0 ; =0x0209A250
	mov r10, r0
	mov r0, r7
	mov r1, r5
	ldr r8, [r4, #0x230]
	bl FUN_0202de44
	add r1, r10, #0x3000
	sub r6, r5, #0x80
	str r0, [r1, #0x2c8]
	mov r0, r7
	mov r1, r6
	bl FUN_0202de44
	mov r9, #0
	add r1, r10, #0x3000
	mov r2, r5
	mov r7, r0
	ldr r0, [r1, #0x2c8]
	mov r1, r9
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r9
	mov r2, r6
	bl MI_CpuFill8
	add r1, r10, #0x3000
	ldr r0, [r1, #0x2c0]
	cmp r0, #0
	bne _02142D28
	ldr r0, [r4, #0x248]
	ldr r5, _02142EF4 ; =0x020A0700
	str r0, [r7, #4]
	ldrb r0, [r5, #0x44a]
	mov r11, #2
	ldr r4, _02142EF8 ; =0x0209BA20
	strb r0, [r7, #1]
	add r0, r5, #0x400
	ldrsb r2, [r0, #0x2c]
	mov r0, r4
	mov r1, r11
	strb r2, [r7, #3]
	ldr r2, [r5, #0x424]
	strh r2, [r7, #0xc]
	ldr r2, [r5, #0x4ac]
	ldr r3, [r5, #0x4b0]
	str r2, [r7, #0x14]
	str r3, [r7, #0x18]
	ldrh r2, [r8, #4]
	strh r2, [r7, #0x10]
	bl FUN_0207371c
	strh r0, [r7, #0x12]
	mov r0, r4
	mov r1, r11
	bl FUN_020724c8
	strb r0, [r7, #2]
	mov r0, r4
	bl  FUN_ov16_020edf7c
	str r0, [r7, #8]
	mov r0, r10
	add r1, r7, #0x800
	bl FUN_ov131_02143f08
	mov r0, r4
	mov r1, r9
	bl FUN_0207249c
	add r1, r7, #0x394
	add r1, r1, #0x400
	mov r2, #0x1f
	bl MI_CpuCopy8
	add r0, r5, #0x400
	add r1, r7, #0x1c
	mov r2, #0x14
	bl MI_CpuCopy8
	add r0, r5, #0x400
	add r0, r0, #0xb4
	add r1, r7, #0x4c
	mov r2, #0x80
	bl MI_CpuCopy8
	add r0, r5, #0xf00
	ldrh r2, [r0, #0x10]
	mov r0, r4
	mov r1, r7
	strh r2, [r7, #0xd2]
	bl FUN_02072d28
	add r0, r7, #0x700
	ldrh r2, [r0, #0xdc]
	ldrh r1, [r0, #0xb6]
	ldr r4, _02142EFC ; =0x02099F44
	strh r1, [r0, #0xdc]
	strh r2, [r0, #0xb6]
	ldrb r1, [r7, #2]
	ldr r0, [r4]
	bl FUN_ov131_0213b180
	strh r0, [r7, #0xcc]
	ldrb r1, [r7, #2]
	ldr r0, [r4]
	bl FUN_ov131_0213b330
	strh r0, [r7, #0xce]
	add r1, r10, #0x3000
	ldrb r3, [r1, #0x2f7]
	mov r2, r6
	mov r0, r7
	strb r3, [r7, #0xd1]
	ldr r1, [r1, #0x2c8]
	bl MI_CpuCopy8
	add r1, r10, #0x3000
	ldr r1, [r1, #0x2c8]
	ldr r0, [r4]
	add r1, r1, #8
	add r4, sp, #0xc
	add r5, r1, #0x800
	mov r1, r4
	mov r2, r9
	bl FUN_ov131_02141e78
	ldrh r0, [sp, #0xac]
	strh r0, [r5, #0x18]
	ldrh r0, [sp, #0xae]
	strh r0, [r5, #0x1a]
	ldrh r0, [sp, #0xb8]
	strh r0, [r5, #0x1c]
	ldrh r0, [sp, #0xba]
	strh r0, [r5, #0x1e]
	ldrh r0, [sp, #0xbc]
	strh r0, [r5, #0x20]
	ldrb r0, [sp, #0xbe]
	strb r0, [r5, #0x22]
	ldrb r0, [sp, #0xbf]
	strb r0, [r5, #0x23]
	ldrb r0, [sp, #0xc0]
	strb r0, [r5, #0x24]
	ldrb r0, [sp, #0xc1]
	strb r0, [r5, #0x25]
	b _02142C9C
_02142C78:
	mov r0, r9, lsl #3
	ldrh r2, [r4, r0]
	mov r1, r9, lsl #2
	add r0, r4, r9, lsl #3
	strh r2, [r5, r1]
	ldrh r1, [r0, #4]
	add r0, r5, r9, lsl #2
	add r9, r9, #1
	strh r1, [r0, #2]
_02142C9C:
	cmp r9, #3
	blt _02142C78
	mov r6, #0
	add r3, sp, #0x5c
	add r1, sp, #0x60
	b _02142CD0
_02142CB4:
	mov r4, r6, lsl #3
	ldrh r0, [r3, r4]
	add r2, r5, r6, lsl #2
	add r6, r6, #1
	strh r0, [r2, #0xc]
	ldrh r0, [r1, r4]
	strh r0, [r2, #0xe]
_02142CD0:
	cmp r6, #3
	blt _02142CB4
	mov r0, #0
	b _02142CE4
_02142CE0:
	add r0, r0, #1
_02142CE4:
	cmp r0, #3
	blt _02142CE0
	mov r0, #0
	b _02142CF8
_02142CF4:
	add r0, r0, #1
_02142CF8:
	cmp r0, #3
	blt _02142CF4
	ldrb r0, [r7, #0xd1]
	tst r0, #2
	beq _02142DB4
	ldr r1, _02142F00 ; =0x02099E93
	add r0, r10, #0x3000
	ldrb r1, [r1]
	ldr r3, [r0, #0x2c8]
	cmp r1, #3
	bhi _02142DB4
	b _02142D9C
_02142D28:
	ldr r1, [r1, #0x2c8]
	mov r2, r6
	bl MI_CpuCopy8
	add r1, r10, #0x3000
	ldr r0, [r1, #0x2c4]
	cmp r0, #0
	beq _02142D58
	ldr r1, [r1, #0x2c8]
	mov r2, #0x28
	add r1, r1, #8
	add r1, r1, #0x800
	bl MI_CpuCopy8
_02142D58:
	add r0, r10, #0x3000
	ldr r3, [r0, #0x2c8]
	ldrb r2, [r0, #0x2f7]
	ldrb r1, [r3, #0xd1]
	bic r1, r1, #2
	and r1, r1, #0xff
	orr r1, r2, r1
	strb r1, [r0, #0x2f7]
	strb r1, [r3, #0xd1]
	ldrb r1, [r0, #0x2f7]
	tst r1, #2
	beq _02142DB4
	ldr r1, _02142F00 ; =0x02099E93
	ldr r3, [r0, #0x2c8]
	ldrb r1, [r1]
	cmp r1, #3
	bhi _02142DB4
_02142D9C:
	add r0, r8, #0x1e8
	add r0, r0, #0x5000
	mov r2, #0x1c
	mla r0, r1, r2, r0
	add r1, r3, #0x830
	bl MI_CpuCopy8
_02142DB4:
	ldr r0, _02142EF0 ; =0x0209A250
	mov r1, r7
	bl FUN_0202e1c0
	add r0, r10, #0x3000
	ldr r1, [r0, #0x2c8]
	ldr r0, _02142F04 ; =0x020A0B00
	add r1, r1, #0x34
	mov r2, #0x14
	bl MI_CpuCopy8
	add r0, r10, #0x3000
	ldr r1, [r0, #0x2c8]
	mov r2, #0
	strh r2, [r1, #0xe]
	ldr r1, [r0, #0x2c8]
	ldr r0, _02142F08 ; =0x020A0640
	strb r2, [r1, #0xd0]
	ldr r0, [r0, #0x4dc]
	bl FUN_02023ca0
	add r0, r10, #0x3000
	ldr r1, [r0, #0x2bc]
	ldr r4, [r0, #0x2c8]
	cmp r1, #0
	mov r2, #6
	ldr r1, _02142F0C ; =0x0209AEC0
	movne r2, #7
	strb r2, [r1, #0x302]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	add r0, r10, #0x3000
	str r2, [r1, #0x308]
	str r3, [r1, #0x30c]
	ldr r2, [r4, #4]
	mov r6, #1
	str r2, [r1, #0x310]
	ldr r0, [r0, #0x2bc]
	ldr r2, _02142F10 ; =0x0214C9CC
	cmp r0, #0
	ldr r4, _02142F0C ; =0x0209AEC0
	ldrne r2, _02142F14 ; =0x0214C9D8
	str r6, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	ldr r5, _02142F18 ; =0x00001423
	mov r0, r4
	mov r1, r6
	mov r3, #2
	str r5, [sp, #8]
	bl FUN_02046508
	mov r0, r4
	bl FUN_02046d60
	add r0, r10, #0x3000
	ldr r0, [r0, #0x2bc]
	cmp r0, #0
	bne _02142EA0
	bl FUN_02023c6c
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	add r6, r1, r0, ror #31
	b _02142EA8
_02142EA0:
	cmp r0, #1
	movne r6, #0
_02142EA8:
	cmp r6, #0
	beq _02142ECC
	ldr r0, _02142F0C ; =0x0209AEC0
	bl FUN_02046da4
	add r0, r10, #0x3000
	mov r1, #1
	str r1, [r0, #0x2b8]
	add sp, sp, #0xc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02142ECC:
	ldr r0, _02142F0C ; =0x0209AEC0
	bl FUN_02046dd0
	add r0, r10, #0x3000
	mov r1, #4
	str r1, [r0, #0x2b8]
	add sp, sp, #0xc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02142EE8: .word unk_020A1640
_02142EEC: .word 0x00000888
_02142EF0: .word unk_0209A250
_02142EF4: .word unk_020A0700
_02142EF8: .word unk_0209BA20
_02142EFC: .word unk_02099F44
_02142F00: .word unk_02099E93
_02142F04: .word unk_020A0B00
_02142F08: .word unk_020A0640
_02142F0C: .word unk_0209AEC0
_02142F10: .word ov131_0214C9CC
_02142F14: .word ov131_0214C9D8
_02142F18: .word 0x00001423
	arm_func_end FUN_ov131_02142a60

	arm_func_start FUN_ov131_02142f1c
FUN_ov131_02142f1c: ; 0x02142F1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02142F54 ; =0x0209AEC0
	bl FUN_02046ed4
	cmp r0, #1
	addeq r0, r4, #0x3000
	moveq r1, #2
	streq r1, [r0, #0x2b8]
	ldmeqfd sp!, {r4, pc}
	cmn r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov131_021439b0
	ldmfd sp!, {r4, pc}
_02142F54: .word unk_0209AEC0
	arm_func_end FUN_ov131_02142f1c

	arm_func_start FUN_ov131_02142f58
FUN_ov131_02142f58: ; 0x02142F58
	stmfd sp!, {r4, lr}
	ldr r1, _02142FB0 ; =0x0209AEC0
	mov r4, r0
	ldr r0, [r1, #0x60]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	add r0, r4, #0x3000
	movne r1, #3
	strne r1, [r0, #0x2b8]
	ldmnefd sp!, {r4, pc}
	ldr r0, [r0, #0x2bc]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov131_02143c90
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov131_021439b0
	ldmfd sp!, {r4, pc}
_02142FB0: .word unk_0209AEC0
	arm_func_end FUN_ov131_02142f58

	arm_func_start FUN_ov131_02142fb4
FUN_ov131_02142fb4: ; 0x02142FB4
	mov r3, #0x14
	cmp r1, #0
	movne r3, #0x15
	mov r0, #0
	cmp r3, #0
	mov r2, #0
	bxle lr
	mov r1, #1
_02142FD4:
	orr r0, r0, r1, lsl r2
	add r2, r2, #1
	cmp r2, r3
	blt _02142FD4
	bx lr
	arm_func_end FUN_ov131_02142fb4

	arm_func_start FUN_ov131_02142fe8
FUN_ov131_02142fe8: ; 0x02142FE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r7, r0
	mov r0, r8
	mov r1, r8
	mov r4, r8
	mov r5, #1
	bl  FUN_ov16_020f0634
	mov r6, r0
	ldr r0, _021433C4 ; =0x0209AEC0
	mov r1, r6
	add r2, r6, #0xf0
	mov r3, #0x78
	bl FUN_02046880
	cmp r0, #0
	movne r8, r5
	cmp r8, #0
	bne _021430BC
	mov r0, r7
	bl FUN_ov131_02143c90
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2d9]
	cmp r1, #0
	beq _021430A8
	ldr r2, [r0, #0x2e4]
	cmp r2, #5
	bhs _021430A8
	ldr r1, _021433C8 ; =0x0000084C
	mov r0, r7
	mla r3, r2, r1, r7
	ldr r1, [r3, #0x14]
	ldr r2, [r3, #0x18]
	ldr r3, [r3, #4]
	bl FUN_ov131_02143d2c
	cmp r0, #0
	beq _021430A8
	add r0, r7, #0x3000
	ldr r1, [r0, #0x2e4]
	mov r0, r7
	bl FUN_ov131_02143d88
	cmp r0, #0
	beq _021430A8
	add r1, r7, #0x3000
	mov r0, r7
	strb r5, [r1, #0x2e8]
	bl FUN_ov131_02143ec4
_021430A8:
	mov r0, r7
	bl FUN_ov131_02143cb4
	mov r0, r7
	bl FUN_ov131_021439b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021430BC:
	add r0, r7, #0x3000
	ldrh r1, [r6, #0xf4]
	ldr r8, [r0, #0x2e4]
	ldr r0, _021433C8 ; =0x0000084C
	mov r2, #0x68
	mla r9, r8, r0, r7
	mul r3, r1, r2
	cmp r1, #0x14
	moveq r2, #0x2c
	add r0, r6, #0xf8
	add r1, r9, r3
	bl MI_CpuCopy8
	add r1, r7, #0x3000
	ldr r8, [r6, #0x160]
	ldr r9, [r6, #0x164]
	ldr r0, [r1, #0x2f0]
	ldr r2, [r1, #0x2ec]
	cmp r9, r0
	cmpeq r8, r2
	beq _02143130
	add r0, r7, #0x2ec
	add r2, r6, #0x160
	add r0, r0, #0x3000
	ldmia r2, {r2, r3}
	stmia r0, {r2, r3}
	str r4, [r1, #0x2d0]
	strb r4, [r1, #0x2f4]
	strb r4, [r1, #0x2f5]
	strb r4, [r1, #0x2f6]
_02143130:
	add r1, r7, #0x3000
	ldrh r0, [r6, #0xf4]
	ldr r2, [r1, #0x2d0]
	orr r0, r2, r5, lsl r0
	str r0, [r1, #0x2d0]
	ldrh r0, [r6, #0xf4]
	cmp r0, #2
	bne _02143168
	ldr r2, [r1, #0x2e4]
	ldr r0, _021433C8 ; =0x0000084C
	mla r0, r2, r0, r7
	ldrb r0, [r0, #0xd1]
	cmp r0, #0
	strneb r5, [r1, #0x2f4]
_02143168:
	add r1, r7, #0x3000
	ldrh r0, [r6, #0xf4]
	ldr r2, [r1, #0x2f8]
	cmp r2, r0
	ble _021431B0
	add r0, r7, #0x3200
	ldrsb r2, [r0, #0xf6]
	add r2, r2, #1
	strb r2, [r1, #0x2f6]
	ldrsb r0, [r0, #0xf6]
	cmp r0, #4
	ble _021431D8
	ldrb r0, [r1, #0x2f7]
	strb r5, [r1, #0x2f5]
	ldr r1, [r1, #0x2c8]
	cmp r0, #0
	strneb r0, [r1, #0xd1]
	b _021431D8
_021431B0:
	bge _021431D8
	add r0, r7, #0x3200
	ldrsb r2, [r0, #0xf6]
	sub r2, r2, #1
	strb r2, [r1, #0x2f6]
	ldrsb r0, [r0, #0xf6]
	cmn r0, #4
	ldrlt r0, [r1, #0x2c8]
	strltb r4, [r1, #0x2f5]
	strltb r4, [r0, #0xd1]
_021431D8:
	ldrh r3, [r6, #0xf4]
	add r2, r7, #0x3000
	mov r0, r7
	mov r1, r5
	str r3, [r2, #0x2f8]
	bl FUN_ov131_02142fb4
	mov r4, r0
	mov r0, r7
	mov r1, #0
	bl FUN_ov131_02142fb4
	add r1, r7, #0x3000
	ldr r2, [r1, #0x2d0]
	cmp r2, r0
	add r0, r7, #0x3000
	streqb r5, [r1, #0x2db]
	ldr r1, [r0, #0x2d0]
	cmp r1, r4
	streqb r5, [r0, #0x2da]
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2db]
	cmp r1, #0
	beq _0214323C
	ldrb r1, [r0, #0x2f4]
	cmp r1, #0
	streqb r5, [r0, #0x2da]
_0214323C:
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2db]
	mov r4, #0xf0
	mov r2, r4
	cmp r1, #0
	ldrneb r1, [r0, #0x2da]
	cmpne r1, #0
	strneb r5, [r0, #0x2d9]
	ldrh r0, [r6, #0xf6]
	mov r6, #0
	mov r1, r6
	cmp r0, #0
	addne r0, r7, #0x3000
	strneb r5, [r0, #0x2d8]
	add r0, r7, #0x1c8
	add r0, r0, #0x3000
	bl MI_CpuFill8
	add r3, r7, #0x3000
	ldrb r9, [r3, #0x2cc]
	add r1, r7, #0x3100
	ldrb r8, [r3, #0x2d9]
	ldr r0, [r3, #0x2c8]
	mov r2, #0x68
	mla r0, r9, r2, r0
	ldr lr, _021433CC ; =0x020A0640
	strh r8, [r1, #0xce]
	strh r9, [r1, #0xcc]
	add r12, r7, #0x1d0
	ldr r8, [lr, #0x56c]
	ldr lr, [lr, #0x570]
	add r1, r12, #0x3000
	str r8, [r3, #0x238]
	str lr, [r3, #0x23c]
	bl MI_CpuCopy8
	add r1, r7, #0x1c8
	ldr r0, _021433C4 ; =0x0209AEC0
	mov r2, r4
	add r1, r1, #0x3000
	bl FUN_02046a20
	add r0, r7, #0x3000
	ldrb r0, [r0, #0x2cd]
	cmp r0, #0
	moveq r6, #1
	add r0, r7, #0x3000
	strb r6, [r0, #0x2cd]
	tst r6, #0xff
	beq _02143330
	ldrb r1, [r0, #0x2f5]
	cmp r1, #0
	ldrb r1, [r0, #0x2cc]
	bne _02143314
	cmp r1, #0
	moveq r1, #0x14
	b _0214331C
_02143314:
	cmp r1, #0
	moveq r1, #0x15
_0214331C:
	streqb r1, [r0, #0x2cc]
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2cc]
	sub r1, r1, #1
	strb r1, [r0, #0x2cc]
_02143330:
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2d8]
	cmp r1, #0
	ldrneb r1, [r0, #0x2d9]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [r0, #0x2e4]
	cmp r2, #5
	bhs _021433B0
	ldr r1, _021433C8 ; =0x0000084C
	mov r0, r7
	mla r3, r2, r1, r7
	ldr r1, [r3, #0x14]
	ldr r2, [r3, #0x18]
	ldr r3, [r3, #4]
	bl FUN_ov131_02143d2c
	cmp r0, #0
	beq _021433B0
	add r0, r7, #0x3000
	ldr r1, [r0, #0x2e4]
	mov r0, r7
	bl FUN_ov131_02143d88
	cmp r0, #0
	beq _021433B0
	add r1, r7, #0x3000
	mov r0, r7
	strb r5, [r1, #0x2e8]
	bl FUN_ov131_02143ec4
	add r0, r7, #0x3000
	ldr r1, [r0, #0x2bc]
	cmp r1, #1
	streq r5, [r0, #0x2e4]
_021433B0:
	mov r0, r7
	bl FUN_ov131_02143cb4
	mov r0, r7
	bl FUN_ov131_021439b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021433C4: .word unk_0209AEC0
_021433C8: .word 0x0000084C
_021433CC: .word unk_020A0640
	arm_func_end FUN_ov131_02142fe8

	arm_func_start FUN_ov131_021433d0
FUN_ov131_021433d0: ; 0x021433D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02143408 ; =0x0209AEC0
	bl FUN_02046fac
	cmp r0, #1
	addeq r0, r4, #0x3000
	moveq r1, #5
	streq r1, [r0, #0x2b8]
	ldmeqfd sp!, {r4, pc}
	cmn r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov131_021439b0
	ldmfd sp!, {r4, pc}
_02143408: .word unk_0209AEC0
	arm_func_end FUN_ov131_021433d0

	arm_func_start FUN_ov131_0214340c
FUN_ov131_0214340c: ; 0x0214340C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	mov r4, r0
	ldr r0, _02143584 ; =0x0209AEC0
	bl FUN_0204700c
	ldr r11, _02143588 ; =0x0209B13C
	mov r1, #0
	b _02143544
_0214342C:
	ldr r10, [r11, r1, lsl #2]
	cmp r10, #0
	beq _02143540
	ldrh r9, [r10, #0x40]
	ldrb r8, [r10, #0x42]
	ldrb r7, [r10, #0x43]
	ldrh r5, [r10, #0x48]
	ldrb lr, [r10, #0x4a]
	ldrb r12, [r10, #0x4b]
	ldrh r3, [r10, #0x4c]
	ldrh r2, [r10, #0x4e]
	ldr r6, [r10, #0x44]
	strh r5, [sp, #8]
	str r6, [sp, #4]
	add r0, sp, #0x10
	strh r9, [sp]
	strb r8, [sp, #2]
	strb r7, [sp, #3]
	strb lr, [sp, #0xa]
	strb r12, [sp, #0xb]
	strh r3, [sp, #0xc]
	strh r2, [sp, #0xe]
	add r6, r10, #0x50
	mov r5, #0x1c
_0214348C:
	ldrh r2, [r6, #2]
	ldrh r3, [r6], #4
	subs r5, r5, #1
	strh r2, [r0, #2]
	strh r3, [r0], #4
	bne _0214348C
	ldr r3, [sp, #4]
	ldr r0, _0214358C ; =0x00001423
	add r2, sp, #0x10
	cmp r3, r0
	ldreq r0, _02143584 ; =0x0209AEC0
	ldreqb r3, [r2, #0x22]
	ldreqb r0, [r0, #0x302]
	cmpeq r3, r0
	bne _02143540
	add r6, r4, #0x3000
	ldr r0, [r6, #0x2bc]
	cmp r0, #0
	bne _02143524
	mov r3, #0
	mov r5, r3
	ldr r0, [r2, #0x28]
	ldr r9, [r2, #0x2c]
	ldr r2, _02143590 ; =0x0000084C
	b _02143510
_021434F0:
	mla r8, r5, r2, r4
	ldr r7, [r8, #0x18]
	ldr r8, [r8, #0x14]
	cmp r9, r7
	cmpeq r0, r8
	moveq r3, #1
	beq _0214351C
	add r5, r5, #1
_02143510:
	ldr r7, [r6, #0x2e4]
	cmp r5, r7
	blt _021434F0
_0214351C:
	cmp r3, #0
	bne _02143540
_02143524:
	ldr r0, _02143584 ; =0x0209AEC0
	bl FUN_02046ea8
	add r0, r4, #0x3000
	mov r1, #6
	str r1, [r0, #0x2b8]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02143540:
	add r1, r1, #1
_02143544:
	cmp r1, #0x10
	blt _0214342C
	add r0, r4, #0x3000
	ldr r0, [r0, #0x2bc]
	cmp r0, #0
	addne sp, sp, #0x80
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov131_02143c90
	cmp r0, #0
	addeq sp, sp, #0x80
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov131_021439b0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02143584: .word unk_0209AEC0
_02143588: .word unk_0209B13C
_0214358C: .word 0x00001423
_02143590: .word 0x0000084C
	arm_func_end FUN_ov131_0214340c

	arm_func_start FUN_ov131_02143594
FUN_ov131_02143594: ; 0x02143594
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _021435CC ; =0x0209AEC0
	bl FUN_0204700c
	cmp r0, #1
	addeq r0, r4, #0x3000
	moveq r1, #7
	streq r1, [r0, #0x2b8]
	ldmeqfd sp!, {r4, pc}
	cmn r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov131_021439b0
	ldmfd sp!, {r4, pc}
_021435CC: .word unk_0209AEC0
	arm_func_end FUN_ov131_02143594

	arm_func_start FUN_ov131_021435d0
FUN_ov131_021435d0: ; 0x021435D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r7, r0
	mov r0, r8
	mov r1, r8
	mov r4, r8
	mov r5, #1
	bl  FUN_ov16_020f0634
	mov r6, r0
	ldr r0, _021439A4 ; =0x0209AEC0
	mov r1, r6
	add r2, r6, #0xf0
	mov r3, #0x78
	bl FUN_02046880
	cmp r0, #0
	movne r8, r5
	cmp r8, #0
	bne _021436AC
	ldr r0, _021439A4 ; =0x0209AEC0
	bl FUN_02046744
	mov r0, r7
	bl FUN_ov131_02143c90
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2d9]
	cmp r1, #0
	beq _02143698
	ldr r2, [r0, #0x2e4]
	cmp r2, #5
	bhs _02143698
	ldr r1, _021439A8 ; =0x0000084C
	mov r0, r7
	mla r3, r2, r1, r7
	ldr r1, [r3, #0x14]
	ldr r2, [r3, #0x18]
	ldr r3, [r3, #4]
	bl FUN_ov131_02143d2c
	cmp r0, #0
	beq _02143698
	add r0, r7, #0x3000
	ldr r1, [r0, #0x2e4]
	mov r0, r7
	bl FUN_ov131_02143d88
	cmp r0, #0
	beq _02143698
	add r1, r7, #0x3000
	mov r0, r7
	strb r5, [r1, #0x2e8]
	bl FUN_ov131_02143ec4
_02143698:
	mov r0, r7
	bl FUN_ov131_02143cb4
	mov r0, r7
	bl FUN_ov131_021439b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021436AC:
	add r0, r7, #0x3000
	ldrh r1, [r6, #4]
	ldr r8, [r0, #0x2e4]
	ldr r0, _021439A8 ; =0x0000084C
	mov r2, #0x68
	mla r9, r8, r0, r7
	mul r3, r1, r2
	cmp r1, #0x14
	moveq r2, #0x2c
	add r0, r6, #8
	add r1, r9, r3
	bl MI_CpuCopy8
	add r1, r7, #0x3000
	ldr r8, [r6, #0x70]
	ldr r9, [r6, #0x74]
	ldr r0, [r1, #0x2f0]
	ldr r2, [r1, #0x2ec]
	cmp r9, r0
	cmpeq r8, r2
	beq _02143720
	add r0, r7, #0x2ec
	add r2, r6, #0x70
	add r0, r0, #0x3000
	ldmia r2, {r2, r3}
	stmia r0, {r2, r3}
	str r4, [r1, #0x2d0]
	strb r4, [r1, #0x2f4]
	strb r4, [r1, #0x2f5]
	strb r4, [r1, #0x2f6]
_02143720:
	add r1, r7, #0x3000
	ldrh r0, [r6, #4]
	ldr r2, [r1, #0x2d0]
	orr r0, r2, r5, lsl r0
	str r0, [r1, #0x2d0]
	ldrh r0, [r6, #4]
	cmp r0, #2
	bne _02143758
	ldr r2, [r1, #0x2e4]
	ldr r0, _021439A8 ; =0x0000084C
	mla r0, r2, r0, r7
	ldrb r0, [r0, #0xd1]
	cmp r0, #0
	strneb r5, [r1, #0x2f4]
_02143758:
	add r1, r7, #0x3000
	ldrh r0, [r6, #4]
	ldr r2, [r1, #0x2f8]
	cmp r2, r0
	ble _021437A0
	add r0, r7, #0x3200
	ldrsb r2, [r0, #0xf6]
	add r2, r2, #1
	strb r2, [r1, #0x2f6]
	ldrsb r0, [r0, #0xf6]
	cmp r0, #4
	ble _021437C8
	ldrb r0, [r1, #0x2f7]
	ldr r2, [r1, #0x2c8]
	cmp r0, #0
	strneb r5, [r1, #0x2f5]
	strneb r0, [r2, #0xd1]
	b _021437C8
_021437A0:
	bge _021437C8
	add r0, r7, #0x3200
	ldrsb r2, [r0, #0xf6]
	sub r2, r2, #1
	strb r2, [r1, #0x2f6]
	ldrsb r0, [r0, #0xf6]
	cmn r0, #4
	ldrlt r0, [r1, #0x2c8]
	strltb r4, [r1, #0x2f5]
	strltb r4, [r0, #0xd1]
_021437C8:
	ldrh r3, [r6, #4]
	add r2, r7, #0x3000
	mov r0, r7
	mov r1, r5
	str r3, [r2, #0x2f8]
	bl FUN_ov131_02142fb4
	mov r4, r0
	mov r0, r7
	mov r1, #0
	bl FUN_ov131_02142fb4
	add r1, r7, #0x3000
	ldr r2, [r1, #0x2d0]
	cmp r2, r0
	add r0, r7, #0x3000
	streqb r5, [r1, #0x2db]
	ldr r1, [r0, #0x2d0]
	cmp r1, r4
	streqb r5, [r0, #0x2da]
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2db]
	cmp r1, #0
	beq _0214382C
	ldrb r1, [r0, #0x2f4]
	cmp r1, #0
	streqb r5, [r0, #0x2da]
_0214382C:
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2db]
	mov r4, #0xf0
	mov r2, r4
	cmp r1, #0
	ldrneb r1, [r0, #0x2da]
	cmpne r1, #0
	strneb r5, [r0, #0x2d9]
	ldrh r0, [r6, #6]
	mov r6, #0
	mov r1, r6
	cmp r0, #0
	addne r0, r7, #0x3000
	strneb r5, [r0, #0x2d8]
	add r0, r7, #0x1c8
	add r0, r0, #0x3000
	bl MI_CpuFill8
	add r3, r7, #0x3000
	ldrb r9, [r3, #0x2cc]
	add r1, r7, #0x3100
	ldrb r8, [r3, #0x2d9]
	ldr r0, [r3, #0x2c8]
	mov r2, #0x68
	mla r0, r9, r2, r0
	ldr lr, _021439AC ; =0x020A0640
	strh r8, [r1, #0xce]
	strh r9, [r1, #0xcc]
	add r12, r7, #0x1d0
	ldr r8, [lr, #0x56c]
	ldr lr, [lr, #0x570]
	add r1, r12, #0x3000
	str r8, [r3, #0x238]
	str lr, [r3, #0x23c]
	bl MI_CpuCopy8
	add r1, r7, #0x1c8
	ldr r0, _021439A4 ; =0x0209AEC0
	mov r2, r4
	add r1, r1, #0x3000
	bl FUN_02046a20
	add r0, r7, #0x3000
	ldrb r0, [r0, #0x2cd]
	cmp r0, #0
	moveq r6, #1
	add r0, r7, #0x3000
	strb r6, [r0, #0x2cd]
	tst r6, #0xff
	beq _02143920
	ldrb r1, [r0, #0x2f5]
	cmp r1, #0
	ldrb r1, [r0, #0x2cc]
	bne _02143904
	cmp r1, #0
	moveq r1, #0x14
	b _0214390C
_02143904:
	cmp r1, #0
	moveq r1, #0x15
_0214390C:
	streqb r1, [r0, #0x2cc]
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2cc]
	sub r1, r1, #1
	strb r1, [r0, #0x2cc]
_02143920:
	add r0, r7, #0x3000
	ldrb r1, [r0, #0x2d8]
	cmp r1, #0
	ldrneb r1, [r0, #0x2d9]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [r0, #0x2e4]
	cmp r2, #5
	bhs _02143990
	ldr r1, _021439A8 ; =0x0000084C
	mov r0, r7
	mla r3, r2, r1, r7
	ldr r1, [r3, #0x14]
	ldr r2, [r3, #0x18]
	ldr r3, [r3, #4]
	bl FUN_ov131_02143d2c
	cmp r0, #0
	beq _02143990
	add r0, r7, #0x3000
	ldr r1, [r0, #0x2e4]
	mov r0, r7
	bl FUN_ov131_02143d88
	cmp r0, #0
	beq _02143990
	add r1, r7, #0x3000
	mov r0, r7
	strb r5, [r1, #0x2e8]
	bl FUN_ov131_02143ec4
_02143990:
	mov r0, r7
	bl FUN_ov131_02143cb4
	mov r0, r7
	bl FUN_ov131_021439b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021439A4: .word unk_0209AEC0
_021439A8: .word 0x0000084C
_021439AC: .word unk_020A0640
	arm_func_end FUN_ov131_021435d0

	arm_func_start FUN_ov131_021439b0
FUN_ov131_021439b0: ; 0x021439B0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r6, r0
	add r0, r6, #0x3000
	ldr r0, [r0, #0x2bc]
	ldr r5, _02143C74 ; =0x0209AEC0
	cmp r0, #1
	ldr r1, [r5, #0x5c]
	beq _021439DC
	cmp r0, #2
	bne _02143A94
_021439DC:
	ldr r7, _02143C74 ; =0x0209AEC0
	mov r0, r7
	bl FUN_02046668
	mov r5, #1
	str r5, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	ldr r4, _02143C78 ; =0x00001423
	ldr r2, _02143C7C ; =0x0214C9EC
	mov r0, r7
	mov r1, r5
	mov r3, #2
	str r4, [sp, #8]
	bl FUN_02046508
	mov r0, r7
	bl FUN_02046d60
	add r0, r6, #0x3000
	ldr r0, [r0, #0x2bc]
	cmp r0, #1
	mov r0, r7
	bne _02143A40
	bl FUN_02046da4
	add r0, r6, #0x3000
	str r5, [r0, #0x2b8]
	b _02143A50
_02143A40:
	bl FUN_02046dd0
	add r0, r6, #0x3000
	mov r1, #4
	str r1, [r0, #0x2b8]
_02143A50:
	add r0, r6, #0x3000
	mov r1, #0
	str r1, [r0, #0x2dc]
	bl FUN_02023c6c
	ldr r3, _02143C80 ; =0xB60B60B7
	mov r1, r0, lsr #0x1f
	smull r2, r4, r3, r0
	add r4, r0, r4
	add r4, r1, r4, asr #6
	mov r3, #0x5a
	smull r1, r2, r3, r4
	sub r4, r0, r1
	add r1, r4, #0x1e
	add r0, r6, #0x3000
	str r1, [r0, #0x2e0]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02143A94:
	cmp r1, #1
	bne _02143B60
	mov r0, r5
	bl FUN_02046668
	mov r4, #1
	str r4, [sp]
	mov r0, #0x78
	ldr r7, _02143C78 ; =0x00001423
	str r0, [sp, #4]
	ldr r2, _02143C84 ; =0x0214CA00
	mov r0, r5
	mov r1, r4
	mov r3, #2
	str r7, [sp, #8]
	bl FUN_02046508
	mov r0, r5
	bl FUN_02046d60
	add r0, r6, #0x3000
	mov r1, #0
	str r1, [r0, #0x2dc]
	bl FUN_02023c6c
	ldr r2, _02143C80 ; =0xB60B60B7
	add r12, r6, #0x3000
	smull r1, r7, r2, r0
	ldr r1, [r12, #0x2e4]
	add r7, r0, r7
	cmp r1, #5
	mov r1, r0, lsr #0x1f
	add r7, r1, r7, asr #6
	mov r3, #0x5a
	smull r1, r2, r3, r7
	sub r7, r0, r1
	add r0, r7, #0x1e
	str r0, [r12, #0x2e0]
	blo _02143B44
	ldr r0, [r12, #0x2bc]
	cmp r0, #0
	bne _02143B44
	mov r0, r5
	bl FUN_02046da4
	add r0, r6, #0x3000
	add sp, sp, #0xc
	str r4, [r0, #0x2b8]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02143B44:
	ldr r0, _02143C74 ; =0x0209AEC0
	bl FUN_02046dd0
	add r0, r6, #0x3000
	mov r1, #4
	str r1, [r0, #0x2b8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02143B60:
	cmp r1, #2
	mov r0, r5
	mov r7, #1
	ldr r4, _02143C78 ; =0x00001423
	bne _02143BF4
	bl FUN_02046668
	str r7, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	ldr r2, _02143C88 ; =0x0214CA0C
	mov r0, r5
	mov r1, r7
	mov r3, #2
	str r4, [sp, #8]
	bl FUN_02046508
	mov r0, r5
	bl FUN_02046d60
	mov r0, r5
	bl FUN_02046da4
	add r0, r6, #0x3000
	mov r1, #0
	str r7, [r0, #0x2b8]
	str r1, [r0, #0x2dc]
	bl FUN_02023c6c
	ldr r3, _02143C80 ; =0xB60B60B7
	mov r1, r0, lsr #0x1f
	smull r2, r4, r3, r0
	add r4, r0, r4
	add r4, r1, r4, asr #6
	mov r3, #0x5a
	smull r1, r2, r3, r4
	sub r4, r0, r1
	add r1, r4, #0x1e
	add r0, r6, #0x3000
	str r1, [r0, #0x2e0]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02143BF4:
	bl FUN_02046668
	str r7, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	ldr r2, _02143C8C ; =0x0214CA18
	mov r0, r5
	mov r1, r7
	mov r3, #2
	str r4, [sp, #8]
	bl FUN_02046508
	mov r0, r5
	bl FUN_02046d60
	mov r0, r5
	bl FUN_02046da4
	add r0, r6, #0x3000
	mov r1, #0
	str r7, [r0, #0x2b8]
	str r1, [r0, #0x2dc]
	bl FUN_02023c6c
	ldr r3, _02143C80 ; =0xB60B60B7
	mov r1, r0, lsr #0x1f
	smull r2, r4, r3, r0
	add r4, r0, r4
	add r4, r1, r4, asr #6
	mov r3, #0x5a
	smull r1, r2, r3, r4
	sub r4, r0, r1
	add r1, r4, #0x1e
	add r0, r6, #0x3000
	str r1, [r0, #0x2e0]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02143C74: .word unk_0209AEC0
_02143C78: .word 0x00001423
_02143C7C: .word ov131_0214C9EC
_02143C80: .word 0xB60B60B7
_02143C84: .word ov131_0214CA00
_02143C88: .word ov131_0214CA0C
_02143C8C: .word ov131_0214CA18
	arm_func_end FUN_ov131_021439b0

	arm_func_start FUN_ov131_02143c90
FUN_ov131_02143c90: ; 0x02143C90
	add r0, r0, #0x3000
	ldr r2, [r0, #0x2dc]
	ldr r1, [r0, #0x2e0]
	add r2, r2, #1
	str r2, [r0, #0x2dc]
	mov r0, #1
	cmp r2, r1
	movlt r0, #0
	bx lr
	arm_func_end FUN_ov131_02143c90

	arm_func_start FUN_ov131_02143cb4
FUN_ov131_02143cb4: ; 0x02143CB4
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x3000
	mov r5, #0
	mov lr, #1
	sub r12, lr, #2
	mov r4, #0x13
	ldr r0, _02143D24 ; =0x0209AA60
	mov r1, r5
	mov r2, #0x1e4
	strb r5, [r3, #0x2d8]
	strb r5, [r3, #0x2d9]
	strb r5, [r3, #0x2da]
	strb r5, [r3, #0x2db]
	str r5, [r3, #0x2d0]
	strb r4, [r3, #0x2cc]
	strb lr, [r3, #0x2cd]
	str r5, [r3, #0x2ec]
	str r5, [r3, #0x2f0]
	str r12, [r3, #0x2f8]
	strb r5, [r3, #0x2f4]
	strb r5, [r3, #0x2f5]
	strb r5, [r3, #0x2f6]
	bl MI_CpuFill8
	ldr r0, _02143D28 ; =0x0209E6C0
	mov r1, r5
	mov r2, #0xf00
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_02143D24: .word unk_0209AA60
_02143D28: .word unk_0209E6C0
	arm_func_end FUN_ov131_02143cb4

	arm_func_start FUN_ov131_02143d2c
FUN_ov131_02143d2c: ; 0x02143D2C
	stmfd sp!, {r3, r4, r5, lr}
	add r12, r0, #0x3000
	ldr r3, [r12, #0x2bc]
	cmp r3, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #0
	ldr r3, _02143D84 ; =0x0000084C
	b _02143D70
_02143D50:
	mla r4, r5, r3, r0
	ldr lr, [r4, #0x18]
	ldr r4, [r4, #0x14]
	cmp r2, lr
	cmpeq r1, r4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
_02143D70:
	ldr lr, [r12, #0x2e4]
	cmp r5, lr
	blt _02143D50
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02143D84: .word 0x0000084C
	arm_func_end FUN_ov131_02143d2c

	arm_func_start FUN_ov131_02143d88
FUN_ov131_02143d88: ; 0x02143D88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r2, _02143EBC ; =0x0000084C
	mov r10, #0
	mla r6, r1, r2, r0
	add r1, sp, #0
	mov r7, r10
	mov r0, #4
_02143DA8:
	strh r10, [r1]
	strh r10, [r1, #2]
	strh r10, [r1, #4]
	strh r10, [r1, #6]
	add r1, r1, #8
	subs r0, r0, #1
	bne _02143DA8
	ldr r11, _02143EC0 ; =0x0209BA20
	mov r9, #0
	add r5, sp, #0
	mov r4, #0x6c
_02143DD4:
	mla r0, r9, r4, r6
	ldrh r8, [r0, #0xd8]
	cmp r8, #0
	beq _02143DFC
	mov r1, r8
	add r0, r6, #0x7e0
	bl FUN_0204fca0
	cmp r0, #0
	moveq r7, #1
	beq _02143E28
_02143DFC:
	mov r0, r11
	mov r1, r8
	bl FUN_0204bc4c
	cmp r0, #0
	movgt r1, r9, lsl #1
	addgt r0, r10, #1
	add r9, r9, #1
	strgth r8, [r5, r1]
	andgt r10, r0, #0xff
	cmp r9, #0x10
	blt _02143DD4
_02143E28:
	cmp r10, #0xb
	movlo r7, #1
	cmp r7, #0
	bne _02143EA8
	sub r5, r10, #1
	cmp r5, #0
	mov r3, #0
	ble _02143EA8
	add r2, sp, #0
	mov r0, #1
_02143E50:
	mov r1, r3, lsl #1
	ldrh r6, [r2, r1]
	cmp r6, #0
	beq _02143E9C
	add r4, r3, #1
	cmp r4, r10
	bge _02143E94
_02143E6C:
	mov r1, r4, lsl #1
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02143E88
	cmp r6, r1
	moveq r7, r0
	beq _02143E94
_02143E88:
	add r4, r4, #1
	cmp r4, r10
	blt _02143E6C
_02143E94:
	cmp r7, #0
	bne _02143EA8
_02143E9C:
	add r3, r3, #1
	cmp r3, r5
	blt _02143E50
_02143EA8:
	mov r0, #1
	cmp r7, #0
	movne r0, #0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02143EBC: .word 0x0000084C
_02143EC0: .word unk_0209BA20
	arm_func_end FUN_ov131_02143d88

	arm_func_start FUN_ov131_02143ec4
FUN_ov131_02143ec4: ; 0x02143EC4
	add r0, r0, #0x3000
	ldr r2, [r0, #0x2e4]
	ldr r1, _02143F00 ; =0x020A1640
	add r2, r2, #1
	str r2, [r0, #0x2e4]
	ldr r2, [r1, #0x230]
	ldrh r0, [r2, #4]
	add r0, r0, #1
	strh r0, [r2, #4]
	ldr r1, [r1, #0x230]
	ldrh r0, [r1, #4]
	cmp r0, #0x3e8
	ldrhs r0, _02143F04 ; =0x000003E7
	strhsh r0, [r1, #4]
	bx lr
_02143F00: .word unk_020A1640
_02143F04: .word 0x000003E7
	arm_func_end FUN_ov131_02143ec4

	arm_func_start FUN_ov131_02143f08
FUN_ov131_02143f08: ; 0x02143F08
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, #0
	add r4, sp, #0
	mov r6, r1
	ldr r0, _02143F6C ; =0x0209BA20
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020ef430
	mov r1, #1
_02143F30:
	mov r0, r5, lsl #1
	ldrh r3, [r4, r0]
	cmp r3, #0
	beq _02143F58
	and r0, r3, #7
	mov r0, r1, lsl r0
	ldrb r2, [r6, r3, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r6, r3, asr #3]
_02143F58:
	add r5, r5, #1
	cmp r5, #0x40
	blt _02143F30
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_02143F6C: .word unk_0209BA20
	arm_func_end FUN_ov131_02143f08

	arm_func_start FUN_ov131_02143f70
FUN_ov131_02143f70: ; 0x02143F70
	add r0, r0, #0x3000
	ldrb r2, [r0, #0x2f7]
	orr r1, r2, r1
	strb r1, [r0, #0x2f7]
	bx lr
	arm_func_end FUN_ov131_02143f70

	arm_func_start FUN_ov131_02143f84
FUN_ov131_02143f84: ; 0x02143F84
	add r0, r0, #0x3000
	ldrb r2, [r0, #0x2f7]
	mvn r1, r1
	and r1, r1, #0xff
	and r1, r2, r1
	strb r1, [r0, #0x2f7]
	bx lr
	arm_func_end FUN_ov131_02143f84

	arm_func_start FUN_ov131_02143fa0
FUN_ov131_02143fa0: ; 0x02143FA0
	stmfd sp!, {r4, lr}
	movs r4, r0
	beq _02143FB0
	blx r4
_02143FB0:
	mvn r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov131_02143fa0

	arm_func_start FUN_ov131_02143fb8
FUN_ov131_02143fb8: ; 0x02143FB8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r7
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, _02144070 ; =0x020A9C40
	bl FUN_020463b8
	ldr r7, [sp]
	cmp r7, #6
	bgt _02144048
	mov r1, #6
_02144010:
	mul r3, r4, r1
	ldrb r2, [r0, r3]
	add r3, r0, r3
	cmp r2, #0
	bne _0214403C
	strb r7, [r3]
	ldr r0, [sp, #4]
	strh r0, [r3, #2]
	ldr r0, [sp, #8]
	strh r0, [r3, #4]
	b _02144048
_0214403C:
	add r4, r4, #1
	cmp r4, #8
	blt _02144010
_02144048:
	ldrsb r1, [r6, #0xb]
	mov r0, #1
	strb r0, [r6, #0xa]
	add r1, r1, #1
	strb r1, [r6, #0xb]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02144070: .word unk_020A9C40
	arm_func_end FUN_ov131_02143fb8

	arm_func_start FUN_ov131_02144074
FUN_ov131_02144074: ; 0x02144074
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r8, sp, #4
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _021440C0
	cmp r0, #1
	beq _02144124
	cmp r0, #2
	beq _02144144
	b _02144178
_021440C0:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r1, [sp, #4]
	ldrsb r0, [r6, #0xb]
	str r1, [r6, #0xc]
	ldr r1, [sp, #8]
	add r0, r0, #1
	str r1, [r6, #0x10]
	ldr r1, [sp, #0x10]
	mov r3, r4
	str r1, [r6, #0x14]
	ldr r1, [sp, #0x14]
	str r1, [r6, #0x18]
	ldr r1, [sp, #0x18]
	str r1, [r6, #0x1c]
	str r4, [r6, #0x28]
	strb r0, [r6, #0xb]
	str r4, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x14]
	ldr r2, [sp, #0xc]
	bl FUN_020312d8
_02144124:
	ldr r0, [r7]
	ldr r1, [r6, #0x14]
	bl FUN_02031a08
	tst r0, #2
	beq _02144178
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02144144:
	mov r0, r7
	mov r1, r6
	bl FUN_ov131_0214419c
	cmp r0, #0
	beq _02144178
	ldr r0, [r7]
	ldr r1, [r6, #0x14]
	bl FUN_02031554
	ldrsb r1, [r6, #0xb]
	mov r0, #1
	strb r0, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
_02144178:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_02144074

	arm_func_start FUN_ov131_0214419c
FUN_ov131_0214419c: ; 0x0214419C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0x178]
	ldr r7, [r5, #0x18]
	subs r0, r1, r0
	ldr r1, [r5, #0x1c]
	mov r4, #0
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x28]
	movmi r4, #1
	add r1, r7, r1
	bl _s32_div_f
	cmp r4, #1
	beq _021441E4
	cmp r1, r7
	bge _021441EC
_021441E4:
	mov r0, #1
	b _021441F0
_021441EC:
	mov r0, #2
_021441F0:
	add r2, r5, r0, lsl #2
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [r2, #0xc]
	bl FUN_02031ae0
	ldr r1, [r5, #0x28]
	mov r0, r4
	add r1, r1, #1
	str r1, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_0214419c

	arm_func_start FUN_ov131_02144218
FUN_ov131_02144218: ; 0x02144218
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r7, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02144258
	cmp r0, #1
	beq _021442A4
	b _021442E0
_02144258:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp, #8]
	mov r0, #0x32
	str r1, [r5, #0xc]
	ldr r2, [sp, #0xc]
	mov r1, #1
	str r2, [r5, #0x10]
	stmia sp, {r0, r1}
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0x10]
	bl FUN_ov131_0214abb4
	ldrsb r0, [r5, #0xb]
	b _021442D8
_021442A4:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x10
	bne _021442E0
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214afd8
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
_021442D8:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021442E0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144218

	arm_func_start FUN_ov131_02144304
FUN_ov131_02144304: ; 0x02144304
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	add r8, sp, #0x18
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02144348
	cmp r0, #1
	beq _021443B4
	b _021443DC
_02144348:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x18]
	str r0, [r6, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	ldr r3, [sp, #0x30]
	bl FUN_ov131_0214b15c
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_021443B4:
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x100
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_021443DC:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_02144304

	arm_func_start FUN_ov131_02144400
FUN_ov131_02144400: ; 0x02144400
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	add r8, sp, #0x18
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02144444
	cmp r0, #1
	beq _021444B8
	b _021444E0
_02144444:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x18]
	mov r3, #0
	str r0, [r6, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0x10]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ldr r0, [sp, #0x20]
	movne r4, #1
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214b15c
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_021444B8:
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x100
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_021444E0:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_02144400

	arm_func_start FUN_ov131_02144504
FUN_ov131_02144504: ; 0x02144504
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02144544
	cmp r0, #1
	beq _0214457C
	b _02144590
_02144544:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	str r2, [r5, #0x10]
	ldr r0, [r7]
	bl FUN_ov131_0214ad04
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_0214457C:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144590:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144504

	arm_func_start FUN_ov131_021445b4
FUN_ov131_021445b4: ; 0x021445B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r8, sp, #0
	mov r6, r0
	mov r4, r2
	mov r7, #0
	mov r5, r1
	mov r0, r8
	mov r1, r7
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r3, [sp, #4]
	add r0, r0, #1
	mov r2, #1
	str r7, [r5, #0x10]
	strb r2, [r5, #0xa]
	str r3, [r5, #0x18]
	strb r0, [r5, #0xb]
	cmp r1, r3
	bge _02144654
	mvn r7, #0
_02144628:
	ldr r0, [r6]
	bl FUN_ov131_0214ad88
	ldr r0, [r5, #0xc]
	cmp r0, r7
	beq _02144654
	mov r1, r0
	add r1, r1, #1
	ldr r0, [r5, #0x18]
	str r1, [r5, #0xc]
	cmp r1, r0
	blt _02144628
_02144654:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_021445b4

	arm_func_start FUN_ov131_02144678
FUN_ov131_02144678: ; 0x02144678
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	add r7, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021446B8
	cmp r0, #1
	beq _02144704
	b _02144718
_021446B8:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	str r0, [r5, #0xc]
	ldr r0, [sp, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_ov131_0214b088
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144704:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144718:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144678

	arm_func_start FUN_ov131_0214473c
FUN_ov131_0214473c: ; 0x0214473C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	add r8, sp, #0x18
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02144780
	cmp r0, #1
	beq _021447EC
	b _02144814
_02144780:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x18]
	str r0, [r6, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	ldr r3, [sp, #0x30]
	bl FUN_ov131_0214b15c
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_021447EC:
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x100
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_02144814:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_0214473c

	arm_func_start FUN_ov131_02144838
FUN_ov131_02144838: ; 0x02144838
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa0
	add r8, sp, #0x20
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _0214487C
	cmp r0, #1
	beq _02144988
	b _02144A4C
_0214487C:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x20]
	str r0, [r6, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [r6, #0x10]
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	ldr r3, [sp, #0x38]
	bl FUN_ov131_0214b314
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214aabc
	cmp r0, #0
	ldreqsb r0, [r6, #0xb]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
	beq _02144A4C
	ldr r2, _02144A70 ; =0x02099ED8
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_020552cc
	movs r4, r0
	ldreqsb r0, [r6, #0xb]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
	beq _02144A4C
	mov r0, #4
	strb r0, [r4, #0x2d]
	ldr r0, [r7, #4]
	bl FUN_02048c34
	ldrb r1, [r4, #0x2d]
	and r0, r0, #0xff
	add r0, r1, r0
	strb r0, [r4, #0x2d]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _02144964
	ldr r0, [r4, #0x84]
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x88]
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x8c]
	str r0, [r4, #0x38]
_02144964:
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x74]
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02144988:
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	bl FUN_ov131_0214bcd4
	tst r0, #0x100
	bne _02144A4C
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214aabc
	cmp r0, #0
	beq _02144A4C
	ldr r2, _02144A70 ; =0x02099ED8
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_020552cc
	movs r4, r0
	beq _02144A4C
	add r0, r4, #0x6c
	add r3, sp, #0x14
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r1, r3
	add r0, r4, #0x84
	bl FUN_020535bc
	sub r0, r0, #0x11
	cmp r0, #0x11
	bgt _02144A0C
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	b _02144A4C
_02144A0C:
	ldr r0, [r7, #4]
	bl FUN_02048c34
	mov r8, r0
	ldr r0, [r7, #4]
	bl FUN_02048c50
	mov r1, #1
	tst r0, r1, lsl r8
	bne _02144A4C
	mov r0, #4
	strb r0, [r4, #0x2d]
	ldr r0, [r7, #4]
	bl FUN_02048c34
	ldrb r1, [r4, #0x2d]
	and r0, r0, #0xff
	add r0, r1, r0
	strb r0, [r4, #0x2d]
_02144A4C:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02144A70: .word unk_02099ED8
	arm_func_end FUN_ov131_02144838

	arm_func_start FUN_ov131_02144a74
FUN_ov131_02144a74: ; 0x02144A74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r7, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02144AB4
	cmp r0, #1
	beq _02144B08
	b _02144B30
_02144AB4:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0x10]
	bl FUN_ov131_0214b65c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144B08:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x400
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02144B30:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144a74

	arm_func_start FUN_ov131_02144b54
FUN_ov131_02144b54: ; 0x02144B54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r7, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02144B94
	cmp r0, #1
	beq _02144BE8
	b _02144C10
_02144B94:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0x18]
	bl FUN_ov131_0214b75c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144BE8:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x200
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02144C10:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144b54

	arm_func_start FUN_ov131_02144c34
FUN_ov131_02144c34: ; 0x02144C34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r7, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02144C74
	cmp r0, #1
	beq _02144CC8
	b _02144CF0
_02144C74:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0x10]
	bl FUN_ov131_0214b860
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144CC8:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x200
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02144CF0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144c34

	arm_func_start FUN_ov131_02144d14
FUN_ov131_02144d14: ; 0x02144D14
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r7, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02144D54
	cmp r0, #1
	beq _02144DA8
	b _02144DD0
_02144D54:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0x10]
	bl FUN_ov131_0214b9d0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144DA8:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x200
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02144DD0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144d14

	arm_func_start FUN_ov131_02144df4
FUN_ov131_02144df4: ; 0x02144DF4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	add r8, sp, #0x10
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	ldrsb r0, [r6, #0xb]
	mov r3, r4
	mov r4, #1
	add r0, r0, #1
	strb r4, [r6, #0xa]
	strb r0, [r6, #0xb]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	ldr r0, [r7]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl FUN_ov131_0214b4b8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x90
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_02144df4

	arm_func_start FUN_ov131_02144e90
FUN_ov131_02144e90: ; 0x02144E90
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02144ED0
	cmp r0, #1
	beq _02144F08
	b _02144F30
_02144ED0:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	str r2, [r5, #0x10]
	ldr r0, [r7]
	bl FUN_ov131_0214b594
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144F08:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x100
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02144F30:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144e90

	arm_func_start FUN_ov131_02144f54
FUN_ov131_02144f54: ; 0x02144F54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02144F94
	cmp r0, #1
	beq _02144FD0
	b _02144FF8
_02144F94:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	str r2, [r5, #0x10]
	ldr r0, [r7]
	ldr r3, [sp, #8]
	bl FUN_ov131_0214bb9c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02144FD0:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x10
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02144FF8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02144f54

	arm_func_start FUN_ov131_0214501c
FUN_ov131_0214501c: ; 0x0214501C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	add r7, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _0214505C
	cmp r0, #1
	beq _021450A8
	b _021450EC
_0214505C:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	str r0, [r5, #0xc]
	ldr r0, [sp, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_ov131_0214bc1c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021450A8:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #4
	bne _021450D8
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #8
	bne _021450EC
_021450D8:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021450EC:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_0214501c

	arm_func_start FUN_ov131_02145110
FUN_ov131_02145110: ; 0x02145110
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02145150
	cmp r0, #1
	beq _02145194
	b _021451D8
_02145150:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7, #0x150]
	cmp r0, #0
	bne _021451D8
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	add r0, r0, #1
	mov r1, #1
	str r2, [r5, #0x10]
	strb r1, [r5, #9]
	b _021451D4
_02145194:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #4
	bne _021451C4
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #8
	bne _021451D8
_021451C4:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
_021451D4:
	strb r0, [r5, #0xb]
_021451D8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02145110

	arm_func_start FUN_ov131_021451fc
FUN_ov131_021451fc: ; 0x021451FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	add r8, sp, #0x18
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02145240
	cmp r0, #1
	beq _021452AC
	b _02145344
_02145240:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r1, [sp, #0x18]
	mov r0, #0x32
	str r1, [r6, #0xc]
	ldr r2, [sp, #0x1c]
	mov r1, #1
	str r2, [r6, #0x10]
	stmia sp, {r0, r1}
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r3, r4
	bl FUN_ov131_0214abb4
	str r0, [r6, #0x18]
	ldr r1, [sp, #0x20]
	ldrsb r0, [r6, #0xb]
	str r1, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	add r0, r0, #1
	str r1, [r6, #0x20]
	ldr r1, [sp, #0x28]
	str r1, [r6, #0x24]
	b _02145340
_021452AC:
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x10
	bne _02145344
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214afd8
	ldr r0, [r6, #0x1c]
	mov r3, r4
	str r0, [sp]
	ldr r0, [r6, #0x20]
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_ov131_0214b15c
	ldr r4, _02145368 ; =0x02099ED8
	ldr r1, [r6, #0x18]
	ldr r0, [r4]
	mov r2, #3
	bl FUN_02055d2c
	ldr r0, [r4]
	ldr r1, [r6, #0x18]
	mov r2, #0x18
	bl FUN_02055bb0
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
_02145340:
	strb r0, [r6, #0xb]
_02145344:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145368: .word unk_02099ED8
	arm_func_end FUN_ov131_021451fc

	arm_func_start FUN_ov131_0214536c
FUN_ov131_0214536c: ; 0x0214536C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	mov r5, r1
	ldrsb r3, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r3, #0
	mov r8, #0
	beq _021453A4
	cmp r3, #1
	beq _021453D0
	cmp r3, #2
	beq _021454B4
	b _02145514
_021453A4:
	add r2, sp, #0
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, _02145538 ; =0x0209AC44
	ldr r2, _0214553C ; =0x0214CA3C
	mov r1, #1
	bl FUN_0202ceb0
_021453C0:
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02145514
_021453D0:
	ldr r7, _02145538 ; =0x0209AC44
	mov r0, r7
	bl FUN_0202b7f0
	cmp r0, #0
	beq _02145514
	ldr r1, _02145540 ; =0x000040A2
	mov r0, r7
	bl FUN_0202cf6c
	mov r7, #0x1d
	ldr r0, [r6]
	ldr r2, _02145544 ; =0x0214CA44
	mov r1, r7
	mov r3, r8
	bl FUN_02038554
	cmp r0, #0
	beq _02145420
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	bl FUN_020388c0
_02145420:
	mov r7, #0x1c
	ldr r0, [r6]
	ldr r2, _02145548 ; =0x0214CA4C
	mov r1, r7
	mov r3, r8
	bl FUN_02038554
	cmp r0, #0
	beq _02145450
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	bl FUN_020388c0
_02145450:
	mov r7, #0x1b
	ldr r0, [r6]
	ldr r2, _0214554C ; =0x0214CA54
	mov r1, r7
	mov r3, r8
	bl FUN_02038554
	cmp r0, #0
	beq _02145480
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	bl FUN_020388c0
_02145480:
	mov r7, #0x1a
	ldr r0, [r6]
	ldr r2, _02145550 ; =0x0214CA5C
	mov r1, r7
	mov r3, r8
	bl FUN_02038554
	cmp r0, #0
	beq _021454B0
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	bl FUN_020388c0
_021454B0:
	b _021453C0
_021454B4:
	ldr r0, [r6]
	mov r1, #0x1d
	bl FUN_020385c0
	tst r0, #8
	bne _02145514
	ldr r0, [r6]
	mov r1, #0x1c
	bl FUN_020385c0
	tst r0, #8
	bne _02145514
	ldr r0, [r6]
	mov r1, #0x1b
	bl FUN_020385c0
	tst r0, #8
	bne _02145514
	ldr r0, [r6]
	mov r1, #0x1a
	bl FUN_020385c0
	tst r0, #8
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02145514:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145538: .word unk_0209AC44
_0214553C: .word ov131_0214CA3C
_02145540: .word 0x000040A2
_02145544: .word ov131_0214CA44
_02145548: .word ov131_0214CA4C
_0214554C: .word ov131_0214CA54
_02145550: .word ov131_0214CA5C
	arm_func_end FUN_ov131_0214536c

	arm_func_start FUN_ov131_02145554
FUN_ov131_02145554: ; 0x02145554
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	mov r4, #1
	add r1, r1, #1
	ldr r0, _021455C0 ; =0x0209BA20
	strb r1, [r6, #0xb]
	strb r4, [r6, #0xa]
	bl FUN_0204ce50
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021455C0: .word unk_0209BA20
	arm_func_end FUN_ov131_02145554

	arm_func_start FUN_ov131_021455c4
FUN_ov131_021455c4: ; 0x021455C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r8, r0
	mov r6, r2
	mov r4, #0
	mov r7, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r1, [sp]
	ldr r0, _02145644 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	cmp r6, #0
	beq _02145638
	cmp r0, #0
	moveq r0, r4
	str r0, [r6]
_02145638:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145644: .word unk_0209BA20
	arm_func_end FUN_ov131_021455c4

	arm_func_start FUN_ov131_02145648
FUN_ov131_02145648: ; 0x02145648
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _021456B8 ; =0x0209BA20
	bl FUN_0204ead8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021456B8: .word unk_0209BA20
	arm_func_end FUN_ov131_02145648

	arm_func_start FUN_ov131_021456bc
FUN_ov131_021456bc: ; 0x021456BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r8, r0
	mov r6, r2
	mov r4, #0
	mov r7, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	beq _02145728
	ldr r1, [sp, #4]
	ldr r0, _02145750 ; =0x020A0B00
	b _02145734
_02145728:
	ldr r1, [sp, #4]
	ldr r0, _02145750 ; =0x020A0B00
	mov r2, r4
_02145734:
	bl FUN_0207461c
	mov r0, #1
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145750: .word unk_020A0B00
	arm_func_end FUN_ov131_021456bc

	arm_func_start FUN_ov131_02145754
FUN_ov131_02145754: ; 0x02145754
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _021457C8 ; =0x020A0B00
	and r1, r1, #0xff
	bl FUN_020747c0
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021457C8: .word unk_020A0B00
	arm_func_end FUN_ov131_02145754

	arm_func_start FUN_ov131_021457cc
FUN_ov131_021457cc: ; 0x021457CC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r4, r2
	add r2, sp, #0
	mov r5, r1
	bl  FUN_ov16_020fed6c
	str r0, [r5, #4]
	ldr r0, [sp]
	cmn r0, #1
	beq _02145830
	ldr r3, [sp, #8]
	cmp r3, #0
	ldrne r0, _02145880 ; =0x00989680
	cmpne r3, r0
	blt _0214581C
	ldr r1, [sp, #4]
	ldr r0, _02145884 ; =0x020A9C40
	mov r2, r1
_02145814:
	bl FUN_020461cc
	b _02145858
_0214581C:
	mov r2, r3
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	ldr r0, _02145884 ; =0x020A9C40
	b _02145814
_02145830:
	ldr r2, [sp, #8]
	cmp r2, #0
	bne _0214584C
	ldr r1, [sp, #4]
	ldr r0, _02145884 ; =0x020A9C40
	mov r2, r1
	b _02145854
_0214584C:
	ldr r1, [sp, #4]
	ldr r0, _02145884 ; =0x020A9C40
_02145854:
	bl FUN_0204625c
_02145858:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r1, r1, #1
	strb r1, [r5, #0xb]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_02145880: .word 0x00989680
_02145884: .word unk_020A9C40
	arm_func_end FUN_ov131_021457cc

	arm_func_start FUN_ov131_02145888
FUN_ov131_02145888: ; 0x02145888
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r7, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r1, [sp]
	sub r0, r2, #2
	cmp r1, r0
	ldr r3, _02145990 ; =0x30C30C31
	beq _021458F4
	b _02145904
_021458F4:
	ldr lr, [sp, #8]
	cmp lr, #0
	beq _02145904
	b _02145908
_02145904:
	ldr lr, [sp, #4]
_02145908:
	smull r0, r1, r3, lr
	smull r2, r0, r3, lr
	mov r12, lr, lsr #0x1f
	add r1, r12, r1, asr #2
	mov r3, #0x15
	smull r1, r2, r3, r1
	add r0, r12, r0, asr #2
	sub r1, lr, r1
	cmp r0, #0
	ble _02145938
	cmp r1, #0x13
	moveq r4, #0x14
_02145938:
	cmp r1, #0x14
	moveq r4, #0x15
	cmp r4, #0
	beq _02145978
	cmp r4, #0
	mov r2, #0
	ble _02145978
_02145954:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, #0x15
	add r0, r0, #0x15
	add r2, r2, #1
	str r1, [sp, #4]
	str r0, [sp, #8]
	cmp r2, r4
	blt _02145954
_02145978:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145990: .word 0x30C30C31
	arm_func_end FUN_ov131_02145888

	arm_func_start FUN_ov131_02145994
FUN_ov131_02145994: ; 0x02145994
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, _02145A08 ; =0x020A9C40
	bl FUN_020462e4
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145A08: .word unk_020A9C40
	arm_func_end FUN_ov131_02145994

	arm_func_start FUN_ov131_02145a0c
FUN_ov131_02145a0c: ; 0x02145A0C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r7, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r3, [sp]
	ldr r2, _02145AE0 ; =0x30C30C31
	mov r0, r3, lsr #0x1f
	smull r1, r6, r2, r3
	add r6, r0, r6, asr #2
	mov r2, #0x15
	smull r0, r1, r2, r6
	sub r6, r3, r0
	cmp r6, #0x14
	moveq r4, r2
	cmp r4, #0
	beq _02145AC8
	cmp r4, #0
	mov r7, #0
	ble _02145AC8
	ldr r6, _02145AE4 ; =0x020A9C40
_02145AA0:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	mov r0, r6
	bl FUN_020462e4
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #0x15
	str r0, [sp]
	cmp r7, r4
	blt _02145AA0
_02145AC8:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145AE0: .word 0x30C30C31
_02145AE4: .word unk_020A9C40
	arm_func_end FUN_ov131_02145a0c

	arm_func_start FUN_ov131_02145ae8
FUN_ov131_02145ae8: ; 0x02145AE8
	stmfd sp!, {r3, lr}
	bl OS_Terminate
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_02145ae8

	arm_func_start FUN_ov131_02145af8
FUN_ov131_02145af8: ; 0x02145AF8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	mov r1, #1
	add r2, r2, #1
	ldr r0, _02145B64 ; =0x020A9C40
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	bl FUN_0204630c
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145B64: .word unk_020A9C40
	arm_func_end FUN_ov131_02145af8

	arm_func_start FUN_ov131_02145b68
FUN_ov131_02145b68: ; 0x02145B68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xc0
	add r6, sp, #0x40
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_020febf8
	ldrsb r2, [r5, #0xb]
	mov r1, #1
	ldr r3, _02145C38 ; =0x0214CA64
	add r2, r2, #1
	strb r2, [r5, #0xb]
	add r12, sp, #0
	str r0, [r5, #4]
	strb r1, [r5, #0xa]
	mov r2, #5
_02145BC4:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _02145BC4
	ldr r5, _02145C3C ; =0x020A9C40
	mov r0, r5
	bl FUN_02045950
	add r1, sp, #0
	bl STD_CompareString
	cmp r0, #0
	bne _02145C10
	mov r0, r5
	bl FUN_0204630c
	mov r2, r0
	ldr r1, [sp, #0x40]
	mov r0, r5
	b _02145C1C
_02145C10:
	ldr r1, [sp, #0x40]
	mov r0, r5
	mvn r2, #0
_02145C1C:
	bl FUN_02045938
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0xc0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145C38: .word ov131_0214CA64
_02145C3C: .word unk_020A9C40
	arm_func_end FUN_ov131_02145b68

	arm_func_start FUN_ov131_02145c40
FUN_ov131_02145c40: ; 0x02145C40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02145CB0 ; =0x0209BA20
	bl FUN_020722f4
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145CB0: .word unk_0209BA20
	arm_func_end FUN_ov131_02145c40

	arm_func_start FUN_ov131_02145cb4
FUN_ov131_02145cb4: ; 0x02145CB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	strne r1, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02145cb4

	arm_func_start FUN_ov131_02145d18
FUN_ov131_02145d18: ; 0x02145D18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r6, r0
	mov r7, r2
	mov r5, #0
	mov r8, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r8
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r1, [r8, #0xb]
	mov r4, #1
	ldr r6, _02145E44 ; =0x020AA044
	add r1, r1, #1
	strb r1, [r8, #0xb]
	strb r4, [r8, #0xa]
	str r0, [r8, #4]
	ldrsb r0, [r6, #3]
	cmp r0, #0
	ldreqsb r0, [r6, #1]
	cmpeq r0, #0
	bne _02145DB0
	ldr r0, [sp]
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	beq _02145DB0
	bl  FUN_ov16_020f17f0
	cmp r0, #0
	ldrne r0, _02145E48 ; =0x020A0640
	strneb r4, [r6]
	strneb r5, [r6, #1]
	strne r4, [r0, #0xb0]
	bne _02145DC0
_02145DB0:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r6]
	strb r0, [r6, #1]
_02145DC0:
	ldr r0, [r8]
	ldrb r0, [r0, #6]
	cmp r0, #7
	blo _02145E2C
	mov r4, #0x20
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, r6, #4
	bl STD_CopyLString
	ldr r1, [sp, #8]
	mov r2, r4
	add r0, r6, #0x44
	bl STD_CopyLString
	ldr r0, [sp, #0x20]
	ldr r5, [sp, #0xc]
	ldr r4, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #0
	str r5, [r6, #0x64]
	str r4, [r6, #0x68]
	str r3, [r6, #0x6c]
	str r2, [r6, #0x70]
	strb r1, [r6, #2]
	streqb r0, [r6, #0x24]
_02145E2C:
	mov r0, #1
	cmp r7, #0
	strne r0, [r7]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145E44: .word unk_020AA044
_02145E48: .word unk_020A0640
	arm_func_end FUN_ov131_02145d18

	arm_func_start FUN_ov131_02145e4c
FUN_ov131_02145e4c: ; 0x02145E4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r7
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	mov r3, #1
	ldr r7, _02145EFC ; =0x020AA044
	add r1, r1, #1
	str r0, [r6, #4]
	strb r1, [r6, #0xb]
	strb r3, [r6, #0xa]
	strb r3, [r7]
	ldr r0, [r6]
	ldrb r0, [r0, #6]
	cmp r0, #1
	strlob r4, [r7, #1]
	blo _02145EE4
	mov r4, #0x20
	ldr r1, [sp]
	mov r2, r4
	add r0, r7, #4
	strb r3, [r7, #1]
	bl STD_CopyLString
	ldr r1, _02145F00 ; =0x0214CA70
	mov r2, r4
	add r0, r7, #0x44
	bl STD_CopyLString
_02145EE4:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145EFC: .word unk_020AA044
_02145F00: .word ov131_0214CA70
	arm_func_end FUN_ov131_02145e4c

	arm_func_start FUN_ov131_02145f04
FUN_ov131_02145f04: ; 0x02145F04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r2, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, _02145F78 ; =0x020AA044
	ldr r0, [sp]
	strb r2, [r1, #0xc6]
	strb r0, [r1, #0xc7]
	cmp r5, #0
	strne r2, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145F78: .word unk_020AA044
	arm_func_end FUN_ov131_02145f04

	arm_func_start FUN_ov131_02145f7c
FUN_ov131_02145f7c: ; 0x02145F7C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r7
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_020febf8
	mov r3, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r3, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r2, _02146058 ; =0x020AA044
	mov r0, #0x14
	mla r0, r1, r0, r2
	ldr r1, [sp, #4]
	strb r3, [r0, #0xda]
	strb r1, [r0, #0xdb]
	strb r3, [r0, #0xdc]
	ldr r1, [r6]
	ldrb r1, [r1, #6]
	cmp r1, #5
	blo _02146040
	ldr r3, [sp, #0x10]
	ldr r1, _0214605C ; =0x0B60B60B
	mov r2, #0xb6
	umull r12, r6, r3, r1
	mla r6, r3, r2, r6
	mov r2, r3, asr #0x1f
	ldr r3, [sp, #8]
	mla r6, r2, r1, r6
	str r3, [r0, #0xcc]
	adds r1, r12, r4
	adc r1, r6, #0x800
	ldr r2, [sp, #0xc]
	str r4, [r0, #0xd0]
	str r2, [r0, #0xd4]
	mov r1, r1, asr #0xc
	strh r1, [r0, #0xd8]
_02146040:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02146058: .word unk_020AA044
_0214605C: .word 0x0B60B60B
	arm_func_end FUN_ov131_02145f7c

	arm_func_start FUN_ov131_02146060
FUN_ov131_02146060: ; 0x02146060
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r6, #1
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	strb r6, [r5, #0xa]
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldr r3, [sp]
	ldr r0, _02146158 ; =0x020AA044
	mov r1, #0x14
	mla r2, r3, r1, r0
	ldr r1, [sp, #4]
	strb r6, [r2, #0xda]
	strb r1, [r2, #0xdb]
	ldr r1, [r5]
	ldrb r1, [r1, #6]
	cmp r1, #2
	ldrhi r1, [sp, #8]
	strhib r1, [r2, #0xdc]
	ldr r1, [r5]
	ldrb r1, [r1, #6]
	cmp r1, #5
	bls _02146140
	ldr r3, [sp, #0x14]
	ldr r2, _0214615C ; =0x0B60B60B
	mov r1, #0xb6
	umull r12, r5, r3, r2
	mla r5, r3, r1, r5
	mov r3, r3, asr #0x1f
	ldr r6, [sp]
	mov r1, #0x14
	mla lr, r6, r1, r0
	ldr r1, [sp, #0xc]
	mla r5, r3, r2, r5
	adds r0, r12, #0
	adc r0, r5, #0x800
	str r1, [lr, #0xcc]
	mov r2, #0
	ldr r1, [sp, #0x10]
	str r2, [lr, #0xd0]
	str r1, [lr, #0xd4]
	mov r0, r0, asr #0xc
	strh r0, [lr, #0xd8]
_02146140:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146158: .word unk_020AA044
_0214615C: .word 0x0B60B60B
	arm_func_end FUN_ov131_02146060

	arm_func_start FUN_ov131_02146160
FUN_ov131_02146160: ; 0x02146160
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x284
	add r6, sp, #0x204
	mov r5, r0
	mov r7, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r1, [sp, #0x208]
	ldr r7, _02146228 ; =0x020AA044
	ldr r0, [sp, #0x204]
	strb r2, [r7, #0x74]
	strb r0, [r7, #0x75]
	cmp r1, #0
	beq _021461D8
	add r0, r7, #0x76
	mov r2, #0x10
	bl STD_CopyLString
_021461D8:
	ldr r0, [sp, #0x20c]
	cmp r0, #0
	beq _02146210
	add r6, sp, #4
	mov r3, #0
	add r1, sp, #0x20c
	mov r0, r5
	mov r2, r6
	str r3, [sp]
	bl  FUN_ov16_02103044
	mov r1, r6
	add r0, r7, #0x86
	mov r2, #0x40
	bl STD_CopyLString
_02146210:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x284
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02146228: .word unk_020AA044
	arm_func_end FUN_ov131_02146160

	arm_func_start FUN_ov131_0214622c
FUN_ov131_0214622c: ; 0x0214622C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _0214629C ; =0x020A9C40
	bl FUN_020455a0
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214629C: .word unk_020A9C40
	arm_func_end FUN_ov131_0214622c

	arm_func_start FUN_ov131_021462a0
FUN_ov131_021462a0: ; 0x021462A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02146310 ; =0x020A9C40
	bl FUN_0204595c
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146310: .word unk_020A9C40
	arm_func_end FUN_ov131_021462a0

	arm_func_start FUN_ov131_02146314
FUN_ov131_02146314: ; 0x02146314
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x8c
	add r4, sp, #0xc
	mov r8, r0
	mov r6, r2
	mov r5, #0
	mov r7, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl  FUN_ov16_020febf8
	str r0, [r7, #4]
	ldrsb r0, [r7, #0xb]
	mov r4, #1
	strb r4, [r7, #0xa]
	add r0, r0, #1
	strb r0, [r7, #0xb]
	ldr r1, [sp, #0x18]
	ldr r0, _021463D4 ; =0x020A9C40
	str r1, [sp]
	ldr r1, [sp, #0x1c]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_02045980
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021463AC
	ldr r0, _021463D8 ; =0x02099ED8
	mov r1, r4
	b _021463B4
_021463AC:
	ldr r0, _021463D8 ; =0x02099ED8
	mov r1, r5
_021463B4:
	ldr r0, [r0]
	bl  FUN_ov0_020cd1a0 ; may be ov4
	mov r0, #1
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021463D4: .word unk_020A9C40
_021463D8: .word unk_02099ED8
	arm_func_end FUN_ov131_02146314

	arm_func_start FUN_ov131_021463dc
FUN_ov131_021463dc: ; 0x021463DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _0214644C ; =0x020A9C40
	bl FUN_02045a28
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214644C: .word unk_020A9C40
	arm_func_end FUN_ov131_021463dc

	arm_func_start FUN_ov131_02146450
FUN_ov131_02146450: ; 0x02146450
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _021464C0 ; =0x020A9C40
	bl FUN_02045a68
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021464C0: .word unk_020A9C40
	arm_func_end FUN_ov131_02146450

	arm_func_start FUN_ov131_021464c4
FUN_ov131_021464c4: ; 0x021464C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r8, r0
	mov r5, r1
	mov r7, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r6, #1
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	strb r6, [r5, #0xa]
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldr r0, [r8]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_ov131_0214aabc
	mov r5, r0
	ldr r0, _02146568 ; =0x020A9C40
	ldr r1, [r5, #4]
	bl FUN_02045550
	ldr r4, _0214656C ; =0x02099ED8
	ldr r1, [r5, #4]
	ldr r0, [r4]
	sub r2, r6, #2
	bl FUN_02055890
	ldr r0, [r4]
	ldr r1, [r5, #4]
	bl FUN_020559c0
	cmp r7, #0
	strne r6, [r7]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02146568: .word unk_020A9C40
_0214656C: .word unk_02099ED8
	arm_func_end FUN_ov131_021464c4

	arm_func_start FUN_ov131_02146570
FUN_ov131_02146570: ; 0x02146570
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xb8
	add r9, sp, #0x38
	mov r5, r0
	mov r4, r2
	mov r7, #0
	mov r8, r1
	mov r0, r9
	mov r1, r7
	mov r2, #0x80
	mov r6, #1
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r8
	mov r2, r9
	bl  FUN_ov16_020febf8
	mov r9, r6
	ldrsb r1, [r8, #0xb]
	str r0, [r8, #4]
	strb r9, [r8, #0xa]
	add r0, r1, #1
	strb r0, [r8, #0xb]
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021465E8
	add sp, sp, #0xb8
	cmp r4, #0
	strne r9, [r4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021465E8:
	ldr r0, _021467B0 ; =0x0209BA20
	mov r1, r7
	bl FUN_0205106c
	ldr r1, [sp, #0x38]
	ldr r2, _021467B4 ; =0x0209A11C
	mov r8, r0
	mov r1, r1, lsl #0x10
	ldr r0, [r2]
	mov r2, r7
	mov r1, r1, lsr #0x10
	bl FUN_0206c7dc
	cmp r0, #0
	ldr r0, [r5]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	movne r9, r7
	bl FUN_ov131_0214aabc
	mov r7, r0
	cmp r9, #0
	bne _021466E4
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _02146650
	mov r0, r8
	bl FUN_02050038
	str r0, [sp, #0x44]
_02146650:
	ldr r1, [sp, #0x44]
	mov r0, r8
	bl FUN_02050244
	movs r1, r0
	beq _02146688
	ldr r0, [r5]
	mov r2, #0
	bl FUN_ov131_0214aabc
	mov r7, r0
	ldr r0, _021467B8 ; =0x02099ED8
	ldr r1, [r7, #4]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_02055938
_02146688:
	ldr r0, [sp, #0x38]
	mov r5, #0
	mov r2, r0, lsl #0x10
	ldr r1, [sp, #0x44]
	mov r0, r8
	mov r3, r5
	mov r2, r2, lsr #0x10
	bl FUN_020501bc
	cmp r7, #0
	bne _021466CC
	ldr r1, [sp, #0x38]
	ldr r0, _021467B0 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	sub r2, r5, #1
	bl FUN_0204d524
	b _021466F4
_021466CC:
	ldr r0, _021467B8 ; =0x02099ED8
	ldr r1, [r7, #4]
	ldr r0, [r0]
	sub r2, r5, #1
	bl FUN_02055890
	b _021466F4
_021466E4:
	ldr r0, _021467B8 ; =0x02099ED8
	ldr r1, [r7, #4]
	ldr r0, [r0]
	bl FUN_02055a68
_021466F4:
	cmp r7, #0
	beq _0214679C
	ldr r5, _021467B8 ; =0x02099ED8
	ldr r1, [r7, #4]
	ldr r0, [r5]
	bl FUN_020552cc
	mov r8, r0
	bl FUN_020543f4
	cmp r0, #0
	bne _0214679C
	mov r0, r8
	mov r1, r6
	bl FUN_02054424
	ldr r0, [r5]
	bl FUN_02055c20
	ldr r1, [r7, #4]
	bl FUN_02054854
	mov r2, r0
	ldr r1, [r5]
	add r0, sp, #0x20
	bl FUN_02055c28
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	mov r0, #0
	stmia sp, {r0, r2}
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r2, [sp, #0x30]
	str r1, [sp, #0x34]
	ldr r1, [r5]
	ldr r2, [r7, #4]
	add r0, sp, #0x14
	str r3, [sp, #0x2c]
	bl FUN_020555e8
	ldr r2, [sp, #0x34]
	ldr r0, [r5]
	mov r2, r2, lsl #0x10
	ldr r1, [r7, #4]
	mov r2, r2, lsr #0x10
	bl FUN_02055558
_0214679C:
	cmp r4, #0
	strne r6, [r4]
	mov r0, #1
	add sp, sp, #0xb8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021467B0: .word unk_0209BA20
_021467B4: .word unk_0209A11C
_021467B8: .word unk_02099ED8
	arm_func_end FUN_ov131_02146570

	arm_func_start FUN_ov131_021467bc
FUN_ov131_021467bc: ; 0x021467BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r8, sp, #0
	mov r7, r0
	mov r6, r2
	mov r5, #0
	mov r4, r1
	mov r0, r8
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r4
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r4, #4]
	mov r0, #1
	ldrsb r1, [r4, #0xb]
	strb r0, [r4, #0xa]
	add r0, r1, #1
	strb r0, [r4, #0xb]
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_ov131_0214aabc
	movs r4, r0
	beq _02146884
	ldr r0, [sp]
	ldr r7, _02146898 ; =0x0209BA20
	mov r2, r0, lsl #0x10
	mov r0, r7
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_0204c760
	cmp r0, #0
	beq _02146864
	ldr r1, [sp]
	mov r0, r7
	mov r2, r1, lsl #0x10
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_0204d2a4
_02146864:
	cmp r4, #0
	beq _02146880
	ldr r0, _0214689C ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_02055938
_02146880:
	mov r5, #1
_02146884:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02146898: .word unk_0209BA20
_0214689C: .word unk_02099ED8
	arm_func_end FUN_ov131_021467bc

	arm_func_start FUN_ov131_021468a0
FUN_ov131_021468a0: ; 0x021468A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	strne r1, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_021468a0

	arm_func_start FUN_ov131_02146904
FUN_ov131_02146904: ; 0x02146904
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	mov r1, #1
	add r2, r2, #1
	ldr r0, _02146970 ; =0x020A9C40
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	bl FUN_02045570
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146970: .word unk_020A9C40
	arm_func_end FUN_ov131_02146904

	arm_func_start FUN_ov131_02146974
FUN_ov131_02146974: ; 0x02146974
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	mov r1, #1
	add r2, r2, #1
	ldr r0, _021469E0 ; =0x020A9C40
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	bl FUN_0204557c
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021469E0: .word unk_020A9C40
	arm_func_end FUN_ov131_02146974

	arm_func_start FUN_ov131_021469e4
FUN_ov131_021469e4: ; 0x021469E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	mov r1, #1
	add r2, r2, #1
	ldr r0, _02146A50 ; =0x020A9C40
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	bl FUN_02045594
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146A50: .word unk_020A9C40
	arm_func_end FUN_ov131_021469e4

	arm_func_start FUN_ov131_02146a54
FUN_ov131_02146a54: ; 0x02146A54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02146AC4 ; =0x020A9C40
	bl FUN_02045a78
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146AC4: .word unk_020A9C40
	arm_func_end FUN_ov131_02146a54

	arm_func_start FUN_ov131_02146ac8
FUN_ov131_02146ac8: ; 0x02146AC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r5, sp, #4
	mov r8, r0
	mov r6, r2
	mov r4, #0
	mov r7, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	mov r0, #1
	add r1, r1, #1
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	str r4, [sp]
	sub r3, r0, #2
	ldr r1, [sp, #4]
	ldr r0, _02146B48 ; =0x020A9C40
	ldr r2, [sp, #8]
	bl FUN_02045a80
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02146B48: .word unk_020A9C40
	arm_func_end FUN_ov131_02146ac8

	arm_func_start FUN_ov131_02146b4c
FUN_ov131_02146b4c: ; 0x02146B4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, _02146BC0 ; =0x020A9C40
	bl FUN_02045b40
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146BC0: .word unk_020A9C40
	arm_func_end FUN_ov131_02146b4c

	arm_func_start FUN_ov131_02146bc4
FUN_ov131_02146bc4: ; 0x02146BC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r4, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	mov r2, #1
	add r1, r1, #1
	strb r1, [r6, #0xb]
	strb r2, [r6, #0xa]
	ldr r0, _02146C3C ; =0x020A9C40
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_02045b50
	ldr r0, [sp, #4]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146C3C: .word unk_020A9C40
	arm_func_end FUN_ov131_02146bc4

	arm_func_start FUN_ov131_02146c40
FUN_ov131_02146c40: ; 0x02146C40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r4, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	mov r2, #1
	add r1, r1, #1
	strb r1, [r6, #0xb]
	strb r2, [r6, #0xa]
	ldr r0, _02146CB8 ; =0x020A9C40
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_02045b50
	ldr r0, [sp]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146CB8: .word unk_020A9C40
	arm_func_end FUN_ov131_02146c40

	arm_func_start FUN_ov131_02146cbc
FUN_ov131_02146cbc: ; 0x02146CBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02146D2C ; =0x020A9C40
	bl FUN_02045d58
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146D2C: .word unk_020A9C40
	arm_func_end FUN_ov131_02146cbc

	arm_func_start FUN_ov131_02146d30
FUN_ov131_02146d30: ; 0x02146D30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02146DA4 ; =0x020A9C40
	and r1, r1, #0xff
	bl FUN_02045df8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146DA4: .word unk_020A9C40
	arm_func_end FUN_ov131_02146d30

	arm_func_start FUN_ov131_02146da8
FUN_ov131_02146da8: ; 0x02146DA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02146E1C ; =0x020A9C40
	and r1, r1, #0xff
	bl FUN_02045e08
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146E1C: .word unk_020A9C40
	arm_func_end FUN_ov131_02146da8

	arm_func_start FUN_ov131_02146e20
FUN_ov131_02146e20: ; 0x02146E20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02146E90 ; =0x020A9C40
	bl FUN_02045edc
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146E90: .word unk_020A9C40
	arm_func_end FUN_ov131_02146e20

	arm_func_start FUN_ov131_02146e94
FUN_ov131_02146e94: ; 0x02146E94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02146F0C ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020737d8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146F0C: .word unk_0209BA20
	arm_func_end FUN_ov131_02146e94

	arm_func_start FUN_ov131_02146f10
FUN_ov131_02146f10: ; 0x02146F10
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	ldr r2, [sp, #4]
	cmp r0, #7
	subge r0, r0, #7
	addge r0, r0, #0xb
	strge r0, [sp]
	ldr r1, [sp]
	ldr r0, _02146F9C ; =0x020A9C40
	bl FUN_02045b74
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146F9C: .word unk_020A9C40
	arm_func_end FUN_ov131_02146f10

	arm_func_start FUN_ov131_02146fa0
FUN_ov131_02146fa0: ; 0x02146FA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	cmp r0, #7
	subge r0, r0, #7
	addge r0, r0, #0xb
	strge r0, [sp]
	ldr r1, [sp]
	ldr r0, _02147028 ; =0x020A9C40
	bl FUN_02045c74
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147028: .word unk_020A9C40
	arm_func_end FUN_ov131_02146fa0

	arm_func_start FUN_ov131_0214702c
FUN_ov131_0214702c: ; 0x0214702C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r0, #0xa
	ldr r0, _021470A8 ; =0x020A9C40
	str r1, [sp]
	bl FUN_02045b74
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021470A8: .word unk_020A9C40
	arm_func_end FUN_ov131_0214702c

	arm_func_start FUN_ov131_021470ac
FUN_ov131_021470ac: ; 0x021470AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02147124 ; =0x020A9C40
	add r1, r1, #0xa
	str r1, [sp]
	bl FUN_02045c74
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147124: .word unk_020A9C40
	arm_func_end FUN_ov131_021470ac

	arm_func_start FUN_ov131_02147128
FUN_ov131_02147128: ; 0x02147128
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, _0214719C ; =0x020A9C40
	bl FUN_02045b74
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214719C: .word unk_020A9C40
	arm_func_end FUN_ov131_02147128

	arm_func_start FUN_ov131_021471a0
FUN_ov131_021471a0: ; 0x021471A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	mov r4, #1
	ldr r1, _02147218 ; =0x02099F44
	add r2, r2, #1
	strb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	ldr r0, [r1]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_ov131_0213ae58
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147218: .word unk_02099F44
	arm_func_end FUN_ov131_021471a0

	arm_func_start FUN_ov131_0214721c
FUN_ov131_0214721c: ; 0x0214721C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r5, r0
	mov r7, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, [r5]
	beq _02147284
	bl FUN_ov131_0214c1a8
	b _02147288
_02147284:
	bl FUN_ov131_0214c49c
_02147288:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_0214721c

	arm_func_start FUN_ov131_021472a0
FUN_ov131_021472a0: ; 0x021472A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, _02147314 ; =0x020A9C40
	bl FUN_02045cbc
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147314: .word unk_020A9C40
	arm_func_end FUN_ov131_021472a0

	arm_func_start FUN_ov131_02147318
FUN_ov131_02147318: ; 0x02147318
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02147388 ; =0x020A9C40
	bl FUN_02046314
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147388: .word unk_020A9C40
	arm_func_end FUN_ov131_02147318

	arm_func_start FUN_ov131_0214738c
FUN_ov131_0214738c: ; 0x0214738C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _021473FC ; =0x020A9C40
	bl FUN_02046350
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021473FC: .word unk_020A9C40
	arm_func_end FUN_ov131_0214738c

	arm_func_start FUN_ov131_02147400
FUN_ov131_02147400: ; 0x02147400
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r4, r2
	mov r5, #0
	mov r7, r1
	mov r0, r6
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02147468
	ldr r0, _02147490 ; =0x02099ED8
	b _02147470
_02147468:
	ldr r0, _02147490 ; =0x02099ED8
	mov r1, r5
_02147470:
	ldr r0, [r0]
	bl  FUN_ov0_020ccd74
	mov r0, #1
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02147490: .word unk_02099ED8
	arm_func_end FUN_ov131_02147400

	arm_func_start FUN_ov131_02147494
FUN_ov131_02147494: ; 0x02147494
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldr r4, _02147524 ; =0x02099ED8
	str r0, [r6, #4]
	ldr r0, [r4]
	bl  FUN_ov0_020cccfc
	cmp r0, #0
	beq _02147504
	ldrsb r1, [r6, #0xb]
	mov r0, #1
	strb r0, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, [r4]
	bl  FUN_ov0_020ccd24
	b _0214750C
_02147504:
	ldr r0, [r4]
	bl  FUN_ov0_020ccc70
_0214750C:
	mov r0, #1
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147524: .word unk_02099ED8
	arm_func_end FUN_ov131_02147494

	arm_func_start FUN_ov131_02147528
FUN_ov131_02147528: ; 0x02147528
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	mov r4, #1
	ldr r1, _0214759C ; =0x02099ED8
	add r2, r2, #1
	strb r4, [r6, #0xa]
	strb r2, [r6, #0xb]
	str r0, [r6, #4]
	ldr r0, [r1]
	mov r1, r4
	bl  FUN_ov0_020ccd8c
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214759C: .word unk_02099ED8
	arm_func_end FUN_ov131_02147528

	arm_func_start FUN_ov131_021475a0
FUN_ov131_021475a0: ; 0x021475A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r4, r2
	mov r5, #0
	mov r7, r1
	mov r0, r6
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r3, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r3, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	cmp r0, #0
	ldr r0, _0214762C ; =0x02099ED8
	ldr r2, [sp, #4]
	ldr r0, [r0]
	moveq r3, r5
	bl FUN_020551a0
	mov r0, #1
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0214762C: .word unk_02099ED8
	arm_func_end FUN_ov131_021475a0

	arm_func_start FUN_ov131_02147630
FUN_ov131_02147630: ; 0x02147630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1f4
	mov r8, #0
	mov r5, r1
	mov r4, r2
	add r7, sp, #0x174
	mov r9, r0
	mov r0, r7
	mov r1, r8
	mov r2, #0x80
	mov r6, r8
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	strb r2, [r5, #0xa]
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldr r0, [sp, #0x174]
	ldr r1, [sp, #0x178]
	mov r0, r0, lsl #0x10
	cmp r1, #1
	movhi r8, r2
	ldr r5, _021478BC ; =0x0209BA20
	mov r7, r0, lsr #0x10
	mov r1, r8
	mov r0, r5
	bl FUN_0207249c
	movs r9, r0
	beq _021478A4
	add r2, sp, #8
	mov r0, r5
	mov r1, r7
	bl FUN_0207039c
	cmp r0, #0
	beq _021478A4
	strh r7, [r9, #0x20]
	ldrh r0, [sp, #0x32]
	mov r7, #0
	strh r0, [r9, #0x2a]
	ldrh r0, [sp, #0x30]
	cmp r0, #0
	ldreqh r0, [sp, #0x2e]
	strh r0, [r9, #0x26]
_021476F0:
	mov r0, r7
	bl  FUN_ov16_020efa80
	movs r5, r0
	beq _02147764
	bl FUN_0206d5f0
	cmp r8, r0
	bne _02147764
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r1, [r9, #0x30]
	ldrh r0, [r0, #0x10]
	cmp r1, r0
	bne _02147738
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r2, [sp, #0x38]
	mov r1, r6
	bl FUN_0206def8
_02147738:
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r1, [r9, #0x32]
	ldrh r0, [r0, #0x10]
	cmp r1, r0
	bne _02147764
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r2, [sp, #0x3a]
	mov r1, r6
	bl FUN_0206def8
_02147764:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x64
	blt _021476F0
	ldr r0, _021478C0 ; =0x0209A11C
	ldr r5, _021478C4 ; =0x0209A0AC
	ldr r0, [r0]
	cmp r5, r0
	beq _0214781C
	mov r7, #0
_02147790:
	mov r0, r5
	mov r1, r7
	bl FUN_0206c6fc
	movs r10, r0
	beq _02147808
	bl FUN_0206d5f0
	cmp r8, r0
	bne _02147808
	mov r0, r10
	bl FUN_0206dcd4
	ldrh r1, [r9, #0x30]
	ldrh r0, [r0, #0x10]
	cmp r1, r0
	bne _021477DC
	mov r0, r10
	bl FUN_0206dcd4
	ldrh r2, [sp, #0x38]
	mov r1, r6
	bl FUN_0206def8
_021477DC:
	mov r0, r10
	bl FUN_0206dcd4
	ldrh r1, [r9, #0x32]
	ldrh r0, [r0, #0x10]
	cmp r1, r0
	bne _02147808
	mov r0, r10
	bl FUN_0206dcd4
	ldrh r2, [sp, #0x3a]
	mov r1, r6
	bl FUN_0206def8
_02147808:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x64
	blt _02147790
_0214781C:
	ldrh r0, [sp, #0x38]
	ldr r6, _021478BC ; =0x0209BA20
	mov r7, #0
	strh r0, [r9, #0x30]
	ldrh r0, [sp, #0x3a]
	mov r10, #0
	mov r5, #1
	strh r0, [r9, #0x32]
	ldrh r1, [r9, #0x34]
	ldrh r0, [r9, #0x4a]
	cmp r1, r0
	ldreqh r0, [sp, #0x3c]
	streqh r0, [r9, #0x4a]
	ldrh r0, [sp, #0x3c]
	strh r0, [r9, #0x34]
_02147858:
	mov r0, r10
	bl  FUN_ov16_020efa80
	movs r9, r0
	beq _02147890
	bl FUN_0206d5f0
	cmp r8, r0
	bne _02147890
	str r7, [sp]
	mov r0, r6
	mov r1, r9
	mov r2, r5
	mov r3, r7
	str r7, [sp, #4]
	bl FUN_0204e79c
_02147890:
	add r0, r10, #1
	mov r0, r0, lsl #0x10
	mov r10, r0, asr #0x10
	cmp r10, #0x64
	blt _02147858
_021478A4:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x1f4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_021478BC: .word unk_0209BA20
_021478C0: .word unk_0209A11C
_021478C4: .word unk_0209A0AC
	arm_func_end FUN_ov131_02147630

	arm_func_start FUN_ov131_021478c8
FUN_ov131_021478c8: ; 0x021478C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02147940 ; =0x020A0B00
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	bl FUN_0207478c
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147940: .word unk_020A0B00
	arm_func_end FUN_ov131_021478c8

	arm_func_start FUN_ov131_02147944
FUN_ov131_02147944: ; 0x02147944
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r8, r0
	mov r4, r2
	mov r6, #0
	mov r5, r1
	mov r0, r7
	mov r1, r6
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02147988
	cmp r0, #0xa
	beq _021479F0
	b _02147A24
_02147988:
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, _02147A60 ; =0x0209BA20
	mov r1, r6
	mov r2, #1
	bl FUN_0204de70
	str r0, [r5, #0xc]
	ldr r0, _02147A64 ; =0x020A9C40
	str r6, [r5, #0x10]
	bl FUN_02045900
	ldr r6, _02147A68 ; =0x02099ED8
	mov r7, r0
	ldr r0, [r6]
	bl  FUN_ov0_020ccda4
	add r1, r7, #0x364
	mov r3, r0
	add r2, r1, #0x4000
	ldr r0, [r6]
	mov r1, #0x38
	mla r1, r3, r1, r2
	bl  FUN_ov0_020ccdbc
	ldr r0, [r6]
	b _02147A2C
_021479F0:
	ldr r0, _02147A68 ; =0x02099ED8
	ldr r0, [r0]
	bl  FUN_ov0_020cd11c
	ldr r0, [r8]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov131_0214bca4
	tst r0, #0x100
	bne _02147A3C
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	b _02147A34
_02147A24:
	ldr r0, _02147A68 ; =0x02099ED8
	ldr r0, [r0]
_02147A2C:
	bl  FUN_ov0_020cd11c
	ldrsb r0, [r5, #0xb]
_02147A34:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02147A3C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02147A60: .word unk_0209BA20
_02147A64: .word unk_020A9C40
_02147A68: .word unk_02099ED8
	arm_func_end FUN_ov131_02147944

	arm_func_start FUN_ov131_02147a6c
FUN_ov131_02147a6c: ; 0x02147A6C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r7, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r6, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r6, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, _02147AF0 ; =0x02099ED8
	movne r4, r6
	ldr r0, [r0]
	mov r1, r4
	bl FUN_02055798
	cmp r5, #0
	strne r6, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02147AF0: .word unk_02099ED8
	arm_func_end FUN_ov131_02147a6c

	arm_func_start FUN_ov131_02147af4
FUN_ov131_02147af4: ; 0x02147AF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	strne r1, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02147af4

	arm_func_start FUN_ov131_02147b58
FUN_ov131_02147b58: ; 0x02147B58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp, #4]
	ldr r0, _02147BE8 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020737f0
	ldr r2, [sp, #4]
	ldr r1, _02147BEC ; =0x020A1740
	ldr r0, _02147BF0 ; =0x020A1640
	strh r2, [r1, #0x7e]
	ldr r1, [sp, #8]
	cmp r5, #0
	strb r1, [r0, #0x180]
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147BE8: .word unk_0209BA20
_02147BEC: .word unk_020A1740
_02147BF0: .word unk_020A1640
	arm_func_end FUN_ov131_02147b58

	arm_func_start FUN_ov131_02147bf4
FUN_ov131_02147bf4: ; 0x02147BF4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r8, r0
	mov r7, r2
	mov r6, #0
	mov r4, r1
	mov r0, r5
	mov r1, r6
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020febf8
	ldr r1, _02147C74 ; =0x0209A454
	str r0, [r4, #4]
	ldr r0, [r1, #4]
	cmp r0, #4
	moveq r0, #1
	movne r0, r6
	tst r0, #0xff
	ldrne r6, _02147C78 ; =0x0209A460
	cmp r7, #0
	strne r6, [r7]
	ldrsb r1, [r4, #0xb]
	mov r0, #1
	strb r0, [r4, #0xa]
	add r1, r1, #1
	strb r1, [r4, #0xb]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02147C74: .word unk_0209A454
_02147C78: .word unk_0209A460
	arm_func_end FUN_ov131_02147bf4

	arm_func_start FUN_ov131_02147c7c
FUN_ov131_02147c7c: ; 0x02147C7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r5, r2
	add r2, sp, #0
	mov r6, r1
	mov r7, r0
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	mov r4, #1
	add r2, r1, #1
	add r0, r7, #0x294
	mov r1, #8
	strb r2, [r6, #0xb]
	strb r4, [r6, #0xa]
	bl FUN_0206c158
	add r0, r7, #0x294
	bl  FUN_ov16_020efa04
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02147c7c

	arm_func_start FUN_ov131_02147cd8
FUN_ov131_02147cd8: ; 0x02147CD8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r5, r2
	add r2, sp, #0
	mov r6, r1
	mov r7, r0
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	mov r4, #1
	add r1, r1, #1
	add r0, r7, #0x294
	strb r1, [r6, #0xb]
	strb r4, [r6, #0xa]
	bl FUN_0206c270
	ldr r0, _02147D30 ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147D30: .word unk_0209A0AC
	arm_func_end FUN_ov131_02147cd8

	arm_func_start FUN_ov131_02147d34
FUN_ov131_02147d34: ; 0x02147D34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r4, r2
	mov r5, #0
	mov r7, r1
	mov r0, r6
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	moveq r2, r5
	ldr r0, _02147DB4 ; =0x020AEC40
	cmp r4, #0
	strb r2, [r0, #0xbd8]
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02147DB4: .word unk_020AEC40
	arm_func_end FUN_ov131_02147d34

	arm_func_start FUN_ov131_02147db8
FUN_ov131_02147db8: ; 0x02147DB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	cmp r1, #1
	blt _02147E24
	cmp r1, #3
	ldrle r0, _02147E3C ; =0x020A1640
	suble r1, r1, #1
	strleb r1, [r0, #0x22]
_02147E24:
	mov r0, #1
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147E3C: .word unk_020A1640
	arm_func_end FUN_ov131_02147db8

	arm_func_start FUN_ov131_02147e40
FUN_ov131_02147e40: ; 0x02147E40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r2, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02147EB0 ; =0x020A1640
	cmp r5, #0
	strb r1, [r0, #0x23]
	strne r2, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02147EB0: .word unk_020A1640
	arm_func_end FUN_ov131_02147e40

	arm_func_start FUN_ov131_02147eb4
FUN_ov131_02147eb4: ; 0x02147EB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r8, r2
	mov r4, #0
	mov r6, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	mov r7, #1
	strb r7, [r6, #0xa]
	add r1, r1, #1
	strb r1, [r6, #0xb]
	str r0, [r6, #4]
	ldr r0, [sp, #4]
	mov r1, r4
	ldr r5, [sp]
	bl  FUN_ov16_020efa9c
	movs r10, r0
	beq _02147F94
	ldr r0, _02147FAC ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	mov r9, #0x6c
	mul r4, r5, r9
	mov r6, r0
	ldr r5, _02147FB0 ; =0x020A1664
	mov r0, r10
	bl FUN_0206dcd4
	mov r2, r9
	add r1, r5, r4
	bl MI_CpuCopy8
	mov r9, #0
	b _02147F6C
_02147F58:
	mov r1, r7
	mov r2, r9
	add r0, r5, r4
	bl FUN_0206def8
	add r7, r7, #1
_02147F6C:
	cmp r7, #4
	blt _02147F58
	ldrh r2, [r6, #0x30]
	mov r6, #0
	mov r1, r6
	add r0, r5, r4
	bl FUN_0206def8
	mov r1, r6
	add r0, r5, r4
	bl FUN_0206e8b4
_02147F94:
	mov r0, #1
	cmp r8, #0
	strne r0, [r8]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02147FAC: .word unk_0209BA20
_02147FB0: .word unk_020A1664
	arm_func_end FUN_ov131_02147eb4

	arm_func_start FUN_ov131_02147fb4
FUN_ov131_02147fb4: ; 0x02147FB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	cmp r1, #0
	blt _02148020
	cmp r1, #2
	ldrle r0, _02148044 ; =0x020A0640
	strleb r1, [r0, #0xac]
	ble _0214802C
_02148020:
	ldr r0, _02148044 ; =0x020A0640
	mvn r1, #0
	strb r1, [r0, #0xac]
_0214802C:
	mov r0, #1
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148044: .word unk_020A0640
	arm_func_end FUN_ov131_02147fb4

	arm_func_start FUN_ov131_02148048
FUN_ov131_02148048: ; 0x02148048
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r7, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r12, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r12, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	ble _021480D4
	cmp r0, #0xc
	bge _021480D4
	ldr r1, _021480E8 ; =0x020A1540
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	ldrh r2, [r1, #0xd0]
	mvn r0, r12, lsl r3
	and r0, r2, r0
	orr r0, r0, r12, lsl r3
	mov r4, r12
	strh r0, [r1, #0xd0]
_021480D4:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021480E8: .word unk_020A1540
	arm_func_end FUN_ov131_02148048

	arm_func_start FUN_ov131_021480ec
FUN_ov131_021480ec: ; 0x021480EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r7, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	ble _02148174
	cmp r0, #0xc
	bge _02148174
	ldr r1, _02148188 ; =0x020A1540
	mov r0, r0, lsl #0x10
	ldrh r1, [r1, #0xd0]
	mov r0, r0, lsr #0x10
	mov r0, r1, asr r0
	tst r0, #1
	moveq r2, r4
	mov r4, r2
_02148174:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02148188: .word unk_020A1540
	arm_func_end FUN_ov131_021480ec

	arm_func_start FUN_ov131_0214818c
FUN_ov131_0214818c: ; 0x0214818C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _021481F8 ; =0x020A0640
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1, #0x554]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021481F8: .word unk_020A0640
	arm_func_end FUN_ov131_0214818c

	arm_func_start FUN_ov131_021481fc
FUN_ov131_021481fc: ; 0x021481FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _02148268 ; =0x020A0640
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1, #0x550]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148268: .word unk_020A0640
	arm_func_end FUN_ov131_021481fc

	arm_func_start FUN_ov131_0214826c
FUN_ov131_0214826c: ; 0x0214826C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _021482D8 ; =0x020AF740
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldrh r0, [r1, #0xd6]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021482D8: .word unk_020AF740
	arm_func_end FUN_ov131_0214826c

	arm_func_start FUN_ov131_021482dc
FUN_ov131_021482dc: ; 0x021482DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02148358 ; =0x02099F44
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov131_0213c8e8
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148358: .word unk_02099F44
	arm_func_end FUN_ov131_021482dc

	arm_func_start FUN_ov131_0214835c
FUN_ov131_0214835c: ; 0x0214835C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r8, sp, #0
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_020febf8
	str r0, [r6, #4]
	mov r0, #1
	ldrsb r1, [r6, #0xb]
	strb r0, [r6, #0xa]
	add r2, r7, #0x1f4
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _021483F0 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x80
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r7, #0x210
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021483F0: .word unk_0209BA20
	arm_func_end FUN_ov131_0214835c

	arm_func_start FUN_ov131_021483f4
FUN_ov131_021483f4: ; 0x021483F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _02148460 ; =0x020A0640
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldrb r0, [r1, #0x18]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148460: .word unk_020A0640
	arm_func_end FUN_ov131_021483f4

	arm_func_start FUN_ov131_02148464
FUN_ov131_02148464: ; 0x02148464
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r8, r0
	mov r6, r2
	mov r4, #0
	mov r7, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	cmp r6, #0
	strne r4, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_02148464

	arm_func_start FUN_ov131_021484cc
FUN_ov131_021484cc: ; 0x021484CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xe8
	add r6, sp, #0
	mov r8, r0
	mov r5, r2
	mov r4, #0
	mov r7, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	strb r1, [r7, #0xa]
	str r0, [r7, #4]
	add r1, r2, #1
	strb r1, [r7, #0xb]
	ldr r0, [sp]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	ldr r1, [sp]
	mov r6, r0
	mov r1, r1, lsl #0x10
	ldr r0, _02148584 ; =0x0209BA20
	add r2, sp, #0x80
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0xe8
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	ldreqb r0, [sp, #0xcd]
	beq _02148570
	mov r0, r6
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4b]
_02148570:
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0xe8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02148584: .word unk_0209BA20
	arm_func_end FUN_ov131_021484cc

	arm_func_start FUN_ov131_02148588
FUN_ov131_02148588: ; 0x02148588
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r8, r0
	mov r6, r2
	mov r4, #0
	mov r7, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	mov r2, #1
	add r1, r1, #1
	strb r1, [r7, #0xb]
	ldr r0, _021485FC ; =0x0209BA20
	mov r1, r4
	strb r2, [r7, #0xa]
	bl FUN_0204c3e0
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021485FC: .word unk_0209BA20
	arm_func_end FUN_ov131_02148588

	arm_func_start FUN_ov131_02148600
FUN_ov131_02148600: ; 0x02148600
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r4, r2
	mov r5, #0
	mov r7, r1
	mov r0, r6
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r1, #1
	str r0, [r7, #4]
	ldrsb r2, [r7, #0xb]
	strb r1, [r7, #0xa]
	ldr r0, _02148680 ; =0x0209BA20
	add r1, r2, #1
	strb r1, [r7, #0xb]
	ldr r1, [sp]
	mov r2, r1, lsl #0x10
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_0204c760
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02148680: .word unk_0209BA20
	arm_func_end FUN_ov131_02148600

	arm_func_start FUN_ov131_02148684
FUN_ov131_02148684: ; 0x02148684
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	cmp r1, #4
	beq _021486F0
	ldr r0, _02148724 ; =0x02099ED8
	ldr r0, [r0]
	bl FUN_020552dc
	b _021486FC
_021486F0:
	ldr r0, _02148724 ; =0x02099ED8
	ldr r0, [r0]
	bl FUN_02055310
_021486FC:
	cmp r0, #0
	mov r1, #0
	beq _02148710
	bl FUN_020542b0
	mov r1, r0
_02148710:
	cmp r4, #0
	strne r1, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148724: .word unk_02099ED8
	arm_func_end FUN_ov131_02148684

	arm_func_start FUN_ov131_02148728
FUN_ov131_02148728: ; 0x02148728
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02148798 ; =0x0209BA20
	bl FUN_020727a8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148798: .word unk_0209BA20
	arm_func_end FUN_ov131_02148728

	arm_func_start FUN_ov131_0214879c
FUN_ov131_0214879c: ; 0x0214879C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, [r7, #4]
	ldr r2, [sp]
	mov r1, r4
	bl FUN_020483e4
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_0214879c

	arm_func_start FUN_ov131_02148810
FUN_ov131_02148810: ; 0x02148810
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r8, r0
	mov r6, r2
	mov r5, #0
	mov r7, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	strb r1, [r7, #0xa]
	str r0, [r7, #4]
	add r1, r2, #1
	strb r1, [r7, #0xb]
	ldr r0, [sp]
	mov r1, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _02148880
	bl FUN_0206dcd4
	ldrb r5, [r0, #0x4a]
_02148880:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_02148810

	arm_func_start FUN_ov131_02148894
FUN_ov131_02148894: ; 0x02148894
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	mov r5, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r5, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02148918 ; =0x02099EF0
	ldr r2, [sp, #4]
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	and r2, r2, #0xff
	bl  FUN_ov126_0213a1c4
	cmp r4, #0
	strne r5, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148918: .word unk_02099EF0
	arm_func_end FUN_ov131_02148894

	arm_func_start FUN_ov131_0214891c
FUN_ov131_0214891c: ; 0x0214891C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r7, r0
	mov r5, r2
	mov r4, #0
	mov r8, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_020febf8
	ldrsb r1, [r8, #0xb]
	str r0, [r8, #4]
	mov r7, #1
	add r1, r1, #1
	strb r1, [r8, #0xb]
	ldr r0, _021489C8 ; =0x0209BA20
	mov r1, r4
	strb r7, [r8, #0xa]
	bl FUN_0205106c
	ldr r1, [sp]
	mov r6, r0
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0204fff8
	mov r1, r0
	sub r0, r7, #2
	cmp r1, r0
	beq _021489B4
	ldr r2, [sp, #4]
	mov r0, r6
	mov r3, r7
	bl FUN_02050144
	mov r4, r7
_021489B4:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021489C8: .word unk_0209BA20
	arm_func_end FUN_ov131_0214891c

	arm_func_start FUN_ov131_021489cc
FUN_ov131_021489cc: ; 0x021489CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	mov r1, #1
	add r2, r2, #1
	ldr r0, _02148A38 ; =0x0209BA20
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	bl  FUN_ov16_020edf7c
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148A38: .word unk_0209BA20
	arm_func_end FUN_ov131_021489cc

	arm_func_start FUN_ov131_02148a3c
FUN_ov131_02148a3c: ; 0x02148A3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	mov r5, #1
	str r0, [r6, #4]
	add r1, r1, #1
	ldr r0, _02148AB8 ; =0x020A0640
	strb r1, [r6, #0xb]
	strb r5, [r6, #0xa]
	ldr r1, [r0, #0x4d4]
	ldr r2, [sp]
	ldr r0, _02148ABC ; =0x020A0B00
	add r1, r1, r2
	bl FUN_02074538
	cmp r4, #0
	strne r5, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148AB8: .word unk_020A0640
_02148ABC: .word unk_020A0B00
	arm_func_end FUN_ov131_02148a3c

	arm_func_start FUN_ov131_02148ac0
FUN_ov131_02148ac0: ; 0x02148AC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	mov r5, #1
	str r0, [r6, #4]
	add r1, r1, #1
	ldr r0, _02148B3C ; =0x020A0640
	strb r1, [r6, #0xb]
	strb r5, [r6, #0xa]
	ldr r1, [r0, #0x4d8]
	ldr r2, [sp]
	ldr r0, _02148B40 ; =0x020A0B00
	add r1, r1, r2
	bl FUN_020744f0
	cmp r4, #0
	strne r5, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148B3C: .word unk_020A0640
_02148B40: .word unk_020A0B00
	arm_func_end FUN_ov131_02148ac0

	arm_func_start FUN_ov131_02148b44
FUN_ov131_02148b44: ; 0x02148B44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r8, r0
	mov r6, r2
	mov r4, #0
	mov r7, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	mov r2, #1
	add r1, r1, #1
	strb r1, [r7, #0xb]
	ldr r0, _02148BB8 ; =0x0209BA20
	mov r1, r4
	strb r2, [r7, #0xa]
	bl FUN_020724c8
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02148BB8: .word unk_0209BA20
	arm_func_end FUN_ov131_02148b44

	arm_func_start FUN_ov131_02148bbc
FUN_ov131_02148bbc: ; 0x02148BBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02148C2C ; =0x0209BA20
	bl  FUN_ov16_020edeb4
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148C2C: .word unk_0209BA20
	arm_func_end FUN_ov131_02148bbc

	arm_func_start FUN_ov131_02148c30
FUN_ov131_02148c30: ; 0x02148C30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	mov r3, #1
	cmp r0, #0
	streq r1, [sp, #4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, _02148CB4 ; =0x0209BA20
	bl  FUN_ov16_020ee16c
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148CB4: .word unk_0209BA20
	arm_func_end FUN_ov131_02148c30

	arm_func_start FUN_ov131_02148cb8
FUN_ov131_02148cb8: ; 0x02148CB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02148D2C ; =0x020A9C40
	and r1, r1, #0xff
	bl FUN_02046368
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148D2C: .word unk_020A9C40
	arm_func_end FUN_ov131_02148cb8

	arm_func_start FUN_ov131_02148d30
FUN_ov131_02148d30: ; 0x02148D30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [r7, #4]
	ldr r1, [sp]
	bl FUN_02048278
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov131_02148d30

	arm_func_start FUN_ov131_02148da0
FUN_ov131_02148da0: ; 0x02148DA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _02148E14 ; =0x020A9C40
	and r1, r1, #0xff
	bl FUN_02046370
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148E14: .word unk_020A9C40
	arm_func_end FUN_ov131_02148da0

	arm_func_start FUN_ov131_02148e18
FUN_ov131_02148e18: ; 0x02148E18
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	mov r1, #1
	add r2, r2, #1
	ldr r0, _02148E84 ; =0x020A9C40
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	bl FUN_02046378
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148E84: .word unk_020A9C40
	arm_func_end FUN_ov131_02148e18

	arm_func_start FUN_ov131_02148e88
FUN_ov131_02148e88: ; 0x02148E88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, _02148F00 ; =0x02099F44
	ldr r1, [sp]
	ldr r0, [r0]
	and r1, r1, #0xff
	bl FUN_ov131_02141b34
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148F00: .word unk_02099F44
	arm_func_end FUN_ov131_02148e88

	arm_func_start FUN_ov131_02148f04
FUN_ov131_02148f04: ; 0x02148F04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	mov r1, #1
	add r2, r2, #1
	ldr r0, _02148F70 ; =0x0209BA20
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	bl  FUN_ov16_020edfb0
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148F70: .word unk_0209BA20
	arm_func_end FUN_ov131_02148f04

	arm_func_start FUN_ov131_02148f74
FUN_ov131_02148f74: ; 0x02148F74
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r4, r2
	mov r5, #0
	mov r7, r1
	mov r0, r6
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	moveq r2, r5
	ldr r0, _02148FF4 ; =0x0209BA20
	cmp r4, #0
	strb r2, [r0, #0x886]
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02148FF4: .word unk_0209BA20
	arm_func_end FUN_ov131_02148f74

	arm_func_start FUN_ov131_02148ff8
FUN_ov131_02148ff8: ; 0x02148FF8
	stmfd sp!, {r4, lr}
	ldr r4, _02149030 ; =0x0214CDB0
	ldr r0, [r4]
	cmp r0, #0
	bne _0214901C
	ldr r0, _02149034 ; =0x0209A250
	mov r1, #4
	bl FUN_0202de44
	str r0, [r4]
_0214901C:
	ldr r0, _02149030 ; =0x0214CDB0
	mov r1, #5
	ldr r0, [r0]
	str r1, [r0]
	ldmfd sp!, {r4, pc}
_02149030: .word ov131_0214CDB0
_02149034: .word unk_0209A250
	arm_func_end FUN_ov131_02148ff8

	arm_func_start FUN_ov131_02149038
FUN_ov131_02149038: ; 0x02149038
	stmfd sp!, {r4, lr}
	ldr r4, _02149070 ; =0x0214CDB0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0214905C
	ldr r0, _02149074 ; =0x0209A250
	mov r1, #4
	bl FUN_0202de44
	str r0, [r4, #4]
_0214905C:
	ldr r0, _02149070 ; =0x0214CDB0
	mov r1, #0xd
	ldr r0, [r0, #4]
	str r1, [r0]
	ldmfd sp!, {r4, pc}
_02149070: .word ov131_0214CDB0
_02149074: .word unk_0209A250
	arm_func_end FUN_ov131_02149038

	arm_func_start FUN_ov131_02149078
FUN_ov131_02149078: ; 0x02149078
	stmfd sp!, {r4, lr}
	ldr r4, _021490B0 ; =0x0214CDB0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0214909C
	ldr r0, _021490B4 ; =0x0209A250
	mov r1, #4
	bl FUN_0202de44
	str r0, [r4, #8]
_0214909C:
	ldr r0, _021490B0 ; =0x0214CDB0
	mov r1, #0x29
	ldr r0, [r0, #8]
	str r1, [r0]
	ldmfd sp!, {r4, pc}
_021490B0: .word ov131_0214CDB0
_021490B4: .word unk_0209A250
	arm_func_end FUN_ov131_02149078

	arm_func_start FUN_ov131_021490b8
FUN_ov131_021490b8: ; 0x021490B8
	stmfd sp!, {r4, lr}
	ldr r4, _021490F0 ; =0x0214CDB0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021490DC
	ldr r0, _021490F4 ; =0x0209A250
	mov r1, #4
	bl FUN_0202de44
	str r0, [r4, #0xc]
_021490DC:
	ldr r0, _021490F0 ; =0x0214CDB0
	mov r1, #0
	ldr r0, [r0, #0xc]
	str r1, [r0]
	ldmfd sp!, {r4, pc}
_021490F0: .word ov131_0214CDB0
_021490F4: .word unk_0209A250
	arm_func_end FUN_ov131_021490b8

	arm_func_start AntiPiracyCheck
AntiPiracyCheck: ; 0x021490F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	mov r6, #0
	mov r5, r1
	mov r10, r2
	add r7, sp, #0
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r2, #0x80
	mov r4, r6
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	mov r9, #1
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r8, _021492E0 ; =0x0000007E
	add r0, r1, #1
	strb r0, [r5, #0xb]
	mov r0, r6
	mov r1, r8
	strb r9, [r5, #0xa]
	bl FS_UnloadOverlay
	ldr r7, _021492E4 ; =0x00000081
	mov r0, r6
	mov r1, r7
	bl FS_LoadOverlay
	ldr r0, _021492E8 ; =0x0214CDB0
	ldr r5, _021492EC ; =FUN_ov131_02143fa0
	str r6, [r0, #0xc]
	str r6, [r0, #8]
	str r6, [r0, #4]
	str r6, [r0]
	ldr r1, _021492F0 ; =FUN_ov131_02148ff8
	mov r0, r5
	mov r2, r6
	.byte 0xf1, 0x86, 0xff, 0xeb ; bl FUN_ov129_0212ad60
	ldr r1, _021492F4 ; =FUN_ov131_02149038
	mov r0, r5
	mov r2, r6
	.byte 0x0b, 0x87, 0xff, 0xeb ; bl FUN_ov129_0212add8
	ldr r1, _021492F8 ; =FUN_ov131_02149078
	mov r0, r5
	mov r2, r6
	.byte 0x25, 0x87, 0xff, 0xeb ; bl FUN_ov129_0212ae50
	ldr r1, _021492FC ; =FUN_ov131_021490b8
	mov r0, r5
	mov r2, r6
	mvn r5, r1
	.byte 0xf3, 0x86, 0xff, 0xeb ; bl FUN_ov129_0212ad9c
	cmp r5, r0
	movne r9, r6
	cmp r9, #0
	bne _021491E0
	bl FUN_ov131_02148ff8
_021491E0:
	mov r9, #0
	ldr r0, _021492EC ; =FUN_ov131_02143fa0
	ldr r1, _021492FC ; =FUN_ov131_021490b8
	mov r2, r9
	.byte 0x07, 0x87, 0xff, 0xeb ; bl FUN_ov129_0212ae14
	cmp r5, r0
	moveq r9, #1
	cmp r9, #0
	bne _02149208
	bl FUN_ov131_02149038
_02149208:
	mov r9, #0
	ldr r0, _021492EC ; =FUN_ov131_02143fa0
	ldr r1, _021492FC ; =FUN_ov131_021490b8
	mov r2, r9
	.byte 0x1b, 0x87, 0xff, 0xeb ; bl FUN_ov129_0212ae8c
	cmp r5, r0
	moveq r9, #1
	cmp r9, #0
	bne _02149230
	bl FUN_ov131_02149078
_02149230:
	mov r0, r4
	mov r1, r7
	bl FS_UnloadOverlay
	mov r0, r4
	mov r1, r8
	bl FS_LoadOverlay
	ldr r0, _021492E8 ; =0x0214CDB0
	ldr r0, [r0]
	cmp r0, #0
	beq _02149264
	ldr r0, [r0]
	cmp r0, #5
	beq _0214929C
_02149264:
	ldr r0, _021492E8 ; =0x0214CDB0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02149280
	ldr r0, [r0]
	cmp r0, #0xd
	beq _0214929C
_02149280:
	ldr r0, _021492E8 ; =0x0214CDB0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021492A0
	ldr r0, [r0]
	cmp r0, #0x29
	bne _021492A0
_0214929C:
	mov r6, #1
_021492A0:
	ldr r4, _02149300 ; =0x0209A250
	ldr r5, _02149304 ; =0x0214CDB0
	mov r7, #0
_021492AC:
	ldr r1, [r5, r7, lsl #2]
	cmp r1, #0
	beq _021492C0
	mov r0, r4
	bl FUN_0202e1c0
_021492C0:
	add r7, r7, #1
	cmp r7, #4
	blt _021492AC
	cmp r10, #0
	strne r6, [r10]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021492E0: .word 0x0000007E
_021492E4: .word 0x00000081
_021492E8: .word ov131_0214CDB0
_021492EC: .word FUN_ov131_02143fa0
_021492F0: .word FUN_ov131_02148ff8
_021492F4: .word FUN_ov131_02149038
_021492F8: .word FUN_ov131_02149078
_021492FC: .word FUN_ov131_021490b8
_02149300: .word unk_0209A250
_02149304: .word ov131_0214CDB0
	arm_func_end AntiPiracyCheck

	arm_func_start FUN_ov131_02149308
FUN_ov131_02149308: ; 0x02149308
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, r5, #0x234
	mov r4, #0
	add r3, r5, #0x6000
	mov r1, r4
	add r0, r0, #0x6000
	mov r2, #0x80
	str r4, [r3, #0x22c]
	bl MI_CpuFill8
	ldr r3, _02149380 ; =0x0209A250
	add r1, r5, #0x22c
	ldr r0, [r3]
	add r1, r1, #0x6000
	str r1, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldr r1, _02149384 ; =0x0214CA90
	ldmeqfd sp!, {r4, r5, pc}
	str r4, [sp]
	mov r2, #4
	str r2, [sp, #4]
	add r2, sp, #0x10
	str r4, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02149380: .word unk_0209A250
_02149384: .word ov131_0214CA90
	arm_func_end FUN_ov131_02149308

	arm_func_start FUN_ov131_02149388
FUN_ov131_02149388: ; 0x02149388
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	mov r5, r1
	str r2, [sp, #0x10]
	mov r2, r5
	add r4, sp, #0x34
	mov r6, r0
	ldr r1, _02149AA0 ; =0x0214CAB0
	mov r0, r4
	mov r5, r3
	bl STD_TSNPrintf
	add r0, r6, #0x6000
	mov r10, #0
	ldr r1, _02149AA4 ; =0x0209A200
	str r10, [r0, #0x228]
	add r3, r6, #0x228
	ldr r1, [r1, #8]
	mov r2, r4
	add r0, r3, #0x6000
	bl FUN_0208622c
	add r0, r6, #0x6000
	ldr r0, [r0, #0x228]
	cmp r0, #0
	addeq sp, sp, #0x74
	moveq r0, r10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, r0, #0x10
	ldr r11, [r0]
	b _02149A8C
_021493FC:
	ldrsb r0, [r4, #1]
	cmp r0, #3
	bne _021494B0
	ldr r1, [r4, #0x28]
	mov r0, r6
	bl FUN_ov131_02149d38
	cmp r0, #0
	bne _02149A84
	add r0, r5, #0x364
	add r8, r0, #0x4000
	mov r7, #0
	b _02149458
_0214942C:
	ldrb r0, [r8, #0x20]
	cmp r0, #3
	cmpne r0, #0xe
	cmpne r0, #4
	bne _02149450
	ldrsh r1, [r8, #0x22]
	ldrsb r0, [r4]
	cmp r1, r0
	beq _02149464
_02149450:
	add r7, r7, #1
	add r8, r8, #0x38
_02149458:
	ldr r0, [r5, #0xc]
	cmp r7, r0
	blt _0214942C
_02149464:
	ldr r0, [r8, #0x1c]
	tst r0, #1
	bne _02149A84
	ldr r1, [r4, #0x28]
	mov r0, r6
	bl FUN_ov131_02149d38
	cmp r0, #0
	ldrne r0, [r8, #0x1c]
	orrne r0, r0, #1
	strne r0, [r8, #0x1c]
	bne _02149A84
	ldr r0, _02149AA8 ; =0x020A0640
	ldr r1, [r8, #0x28]
	ldrb r0, [r0, #0x50a]
	cmp r1, r0
	ldrgt r0, [r8, #0x1c]
	orrgt r0, r0, #1
	strgt r0, [r8, #0x1c]
	bgt _02149A84
_021494B0:
	ldrh r0, [r4, #2]
	mov r1, #1
	add r3, r6, #0x324
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, _02149AAC ; =0x0214CABC
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r3, #0x1c00
	ldrsb r1, [r4]
	mov r3, #4
	bl FUN_02037c98
	add r0, r6, #0x324
	ldrsb r1, [r4]
	add r0, r0, #0x1c00
	bl FUN_02037fb0
	ldrsb r0, [r4, #1]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02149A84
_02149508: ; jump table
	b _02149A84 ; case 0
	b _02149544 ; case 1
	b _0214951C ; case 2
	b _021496E8 ; case 3
	b _02149828 ; case 4
_0214951C:
	ldrh r2, [r4, #2]
	add r7, sp, #0x14
	ldr r1, _02149AB0 ; =0x0214CAC0
	mov r0, r7
	bl FUN_02023c40
	add r0, r6, #0x324
	ldrsb r1, [r4]
	mov r2, r7
	add r0, r0, #0x1c00
	bl FUN_020383c4
_02149544:
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x18]
	ldr r0, _02149AB4 ; =0x45800000
	bls _02149570
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0214957C
_02149570:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_0214957C:
	mov r9, r0
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x14]
	ldr r0, _02149AB4 ; =0x45800000
	bls _021495AC
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _021495B8
_021495AC:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_021495B8:
	mov r7, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x10]
	ldr r0, _02149AB4 ; =0x45800000
	bls _021495E8
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _021495F4
_021495E8:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_021495F4:
	bl FUN_0201fdac
	mov r8, r0
	mov r0, r7
	bl FUN_0201fdac
	mov r7, r0
	mov r0, r9
	bl FUN_0201fdac
	mov r3, r7
	str r0, [sp]
	mov r7, #0
	str r7, [sp, #4]
	add r0, r6, #0x324
	ldrsb r1, [r4]
	mov r2, r8
	add r0, r0, #0x1c00
	bl FUN_02038058
	ldr r0, [r4, #0x24]
	mov r1, r7
	bl FUN_0201f5c8
	ldr r1, [r4, #0x24]
	ldr r0, _02149AB4 ; =0x45800000
	bls _02149660
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0214966C
_02149660:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_0214966C:
	mov r9, r0
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x20]
	ldr r0, _02149AB4 ; =0x45800000
	bls _0214969C
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _021496A8
_0214969C:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_021496A8:
	mov r7, r0
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x1c]
	ldr r0, _02149AB4 ; =0x45800000
	bls _021496D8
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _021496E4
_021496D8:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_021496E4:
	b _02149A44
_021496E8:
	ldrh r2, [r4, #2]
	add r7, sp, #0x14
	ldr r1, _02149AB8 ; =0x0214CAC8
	mov r0, r7
	bl FUN_02023c40
	add r0, r6, #0x324
	ldrsb r1, [r4]
	mov r2, r7
	add r0, r0, #0x1c00
	bl FUN_020383c4
	add r0, r5, #0x364
	add r8, r0, #0x4000
	mov r7, #0
	b _02149818
_02149720:
	ldrb r0, [r8, #0x20]
	cmp r0, #3
	beq _02149734
	cmp r0, #4
	bne _02149810
_02149734:
	ldrsh r1, [r8, #0x22]
	ldrsb r0, [r4]
	cmp r1, r0
	bne _02149810
	ldr r1, [r8, #8]
	add r0, r6, #0x324
	str r1, [sp]
	mov r7, #0
	str r7, [sp, #4]
	ldrsb r1, [r4]
	add r0, r0, #0x1c00
	ldmia r8, {r2, r3}
	bl FUN_02038058
	ldr r0, [r4, #0x24]
	mov r1, r7
	bl FUN_0201f5c8
	ldr r1, [r4, #0x24]
	ldr r0, _02149AB4 ; =0x45800000
	bls _02149794
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _021497A0
_02149794:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_021497A0:
	mov r9, r0
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x1c]
	ldr r0, _02149AB4 ; =0x45800000
	bls _021497D0
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _021497DC
_021497D0:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_021497DC:
	bl FUN_0201fdac
	mov r7, r0
	mov r0, r9
	bl FUN_0201fdac
	mov r2, r7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [r8, #0x24]
	add r0, r6, #0x324
	add r0, r0, #0x1c00
	rsb r3, r1, #0x168000
	b _02149A7C
_02149810:
	add r7, r7, #1
	add r8, r8, #0x38
_02149818:
	ldr r0, [r5, #0xc]
	cmp r7, r0
	blt _02149720
	b _02149A84
_02149828:
	add r0, r5, #0x364
	add r8, r0, #0x4000
	mov r7, #0
	b _02149878
_02149838:
	ldrb r0, [r8, #0x20]
	cmp r0, #5
	beq _0214984C
	cmp r0, #6
	bne _02149870
_0214984C:
	ldrsh r1, [r8, #0x22]
	ldrsb r0, [r4]
	cmp r1, r0
	bne _02149870
	ldr r2, [r8, #0x28]
	ldr r1, _02149ABC ; =0x0214CAD0
	add r0, sp, #0x14
	bl FUN_02023c40
	b _02149884
_02149870:
	add r7, r7, #1
	add r8, r8, #0x38
_02149878:
	ldr r0, [r5, #0xc]
	cmp r7, r0
	blt _02149838
_02149884:
	ldr r0, [r5, #0xc]
	cmp r7, r0
	bge _021498A4
	ldrsb r1, [r4]
	add r0, r6, #0x324
	add r2, sp, #0x14
	add r0, r0, #0x1c00
	bl FUN_020383c4
_021498A4:
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x18]
	ldr r0, _02149AB4 ; =0x45800000
	bls _021498D0
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _021498DC
_021498D0:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_021498DC:
	mov r9, r0
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x14]
	ldr r0, _02149AB4 ; =0x45800000
	bls _0214990C
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _02149918
_0214990C:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_02149918:
	mov r7, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x10]
	ldr r0, _02149AB4 ; =0x45800000
	bls _02149948
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _02149954
_02149948:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_02149954:
	bl FUN_0201fdac
	mov r8, r0
	mov r0, r7
	bl FUN_0201fdac
	mov r7, r0
	mov r0, r9
	bl FUN_0201fdac
	mov r3, r7
	str r0, [sp]
	mov r7, #0
	str r7, [sp, #4]
	add r0, r6, #0x324
	ldrsb r1, [r4]
	mov r2, r8
	add r0, r0, #0x1c00
	bl FUN_02038058
	ldr r0, [r4, #0x24]
	mov r1, r7
	bl FUN_0201f5c8
	ldr r1, [r4, #0x24]
	ldr r0, _02149AB4 ; =0x45800000
	bls _021499C0
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _021499CC
_021499C0:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_021499CC:
	mov r9, r0
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x20]
	ldr r0, _02149AB4 ; =0x45800000
	bls _021499FC
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _02149A08
_021499FC:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_02149A08:
	mov r7, r0
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl FUN_0201f5c8
	ldr r1, [r4, #0x1c]
	ldr r0, _02149AB4 ; =0x45800000
	bls _02149A38
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _02149A44
_02149A38:
	bl _fmul
	mov r1, #0x3f000000
	bl FUN_020204a4
_02149A44:
	bl FUN_0201fdac
	mov r8, r0
	mov r0, r7
	bl FUN_0201fdac
	mov r7, r0
	mov r0, r9
	bl FUN_0201fdac
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r6, #0x324
	mov r2, r8
	mov r3, r7
	add r0, r0, #0x1c00
_02149A7C:
	ldrsb r1, [r4]
	bl FUN_020381a0
_02149A84:
	add r10, r10, #1
	add r4, r4, #0x38
_02149A8C:
	cmp r10, r11
	blt _021493FC
	mov r0, r11
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02149AA0: .word ov131_0214CAB0
_02149AA4: .word unk_0209A200
_02149AA8: .word unk_020A0640
_02149AAC: .word ov131_0214CABC
_02149AB0: .word ov131_0214CAC0
_02149AB4: .word 0x45800000
_02149AB8: .word ov131_0214CAC8
_02149ABC: .word ov131_0214CAD0
	arm_func_end FUN_ov131_02149388

	arm_func_start FUN_ov131_02149ac0
FUN_ov131_02149ac0: ; 0x02149AC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x6000
	ldr r0, [r0, #0x228]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x324
	add r0, r0, #0x1c00
	bl FUN_02038670
	add r0, r4, #0x6000
	ldr r1, [r0, #0x228]
	ldr r0, _02149B0C ; =0x0209A250
	bl FUN_0202e1c0
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x228]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02149B0C: .word unk_0209A250
	arm_func_end FUN_ov131_02149ac0

	arm_func_start FUN_ov131_02149b10
FUN_ov131_02149b10: ; 0x02149B10
	add r0, r0, #0x324
	ldr r12, _02149B20 ; =FUN_02037f38
	add r0, r0, #0x1c00
	bx r12
_02149B20: .word FUN_02037f38
	arm_func_end FUN_ov131_02149b10

	arm_func_start FUN_ov131_02149b24
FUN_ov131_02149b24: ; 0x02149B24
	add r0, r0, #0x324
	ldr r12, _02149B34 ; =FUN_02037c58
	add r0, r0, #0x1c00
	bx r12
_02149B34: .word FUN_02037c58
	arm_func_end FUN_ov131_02149b24

	arm_func_start FUN_ov131_02149b38
FUN_ov131_02149b38: ; 0x02149B38
	add r0, r0, #0x324
	ldr r12, _02149B48 ; =FUN_02037c78
	add r0, r0, #0x1c00
	bx r12
_02149B48: .word FUN_02037c78
	arm_func_end FUN_ov131_02149b38

	arm_func_start FUN_ov131_02149b4c
FUN_ov131_02149b4c: ; 0x02149B4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r4, r1
	add r3, sp, #0xc
	mov r1, #6
	mov r2, #0x40
	mov r5, r0
	bl FUN_02044ea4
	ldr r1, [r4, #0x34]
	mov r7, r0
	cmp r1, #0
	beq _02149C18
	ldr r0, _02149D1C ; =0x0209BA20
	bl  FUN_ov16_020edec4
	cmp r0, #0
	bne _02149C18
	ldr r0, [sp, #0xc]
	ldr r1, _02149D20 ; =0x0214CAD8
	bl STD_CopyString
	mov r8, #1
	ldr r4, _02149D24 ; =0x0000306B
	mov r0, r5
	mov r1, r7
	mov r2, r4
	mov r3, r8
	str r8, [sp]
	mov r6, #4
	str r6, [sp, #4]
	bl FUN_02045064
	mov r2, #2
	stmia sp, {r2, r6}
	mov r1, r0
	str r2, [sp, #8]
	mov r0, r5
	mov r3, r8
	sub r2, r4, #0x4f
	bl FUN_02045064
	str r8, [sp]
	ldr r3, [sp, #0xc]
	mov r1, r0
	str r3, [sp, #4]
	sub r2, r4, #0x4e
	mov r0, r5
	mov r3, r8
	bl FUN_02045064
	mov r1, r0
	mov r0, r5
	bl FUN_02044f78
	add sp, sp, #0x10
	mov r0, r8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02149C18:
	ldrsh r9, [r4, #0x22]
	add r0, r5, #0x324
	mov r11, #0
	mov r1, r9
	mov r2, r11
	add r0, r0, #0x1c00
	bl FUN_020388c0
	ldr r6, [sp, #0xc]
	ldr r1, _02149D28 ; =0x0214CB00
	mov r0, r6
	add r10, r6, #8
	bl STD_CopyString
	ldr r1, _02149D2C ; =0x0214CB08
	mov r0, r10
	bl STD_CopyString
	mov r8, #2
	mov r1, r7
	mov r7, #1
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r6, _02149D30 ; =0x00003014
	mov r0, r5
	mov r3, r7
	mov r2, r6
	bl FUN_02045064
	str r8, [sp]
	str r7, [sp, #4]
	ldr r2, [r4, #0x2c]
	mov r1, r0
	str r2, [sp, #8]
	mov r0, r5
	add r2, r6, #1
	mov r3, r11
	bl FUN_02045064
	mov r1, r0
	stmia sp, {r8, r9, r10}
	mov r0, r5
	add r2, r6, #0x2f
	mov r3, r7
	bl FUN_02045064
	mov r1, r0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02149D08
	mov r0, r5
	mov r3, r7
	str r11, [sp]
	sub r2, r6, #0xf
	bl FUN_02045064
	str r7, [sp]
	ldr r2, [r4, #0x30]
	mov r1, r0
	sub r4, r2, #1
	ldr r2, _02149D34 ; =0x00004026
	mov r0, r5
	mov r3, r7
	str r4, [sp, #4]
	bl FUN_02045064
	mov r1, r0
_02149D08:
	mov r0, r5
	bl FUN_02044f78
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02149D1C: .word unk_0209BA20
_02149D20: .word ov131_0214CAD8
_02149D24: .word 0x0000306B
_02149D28: .word ov131_0214CB00
_02149D2C: .word ov131_0214CB08
_02149D30: .word 0x00003014
_02149D34: .word 0x00004026
	arm_func_end FUN_ov131_02149b4c

	arm_func_start FUN_ov131_02149d38
FUN_ov131_02149d38: ; 0x02149D38
	add r2, r0, #0x6000
	ldr r2, [r2, #0x22c]
	cmp r1, r2
	movge r0, #1
	bxge lr
	mov r2, r1, asr #2
	add r2, r1, r2, lsr #29
	add r0, r0, r2, asr #3
	add r3, r0, #0x6000
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #29
	ldrb r1, [r3, #0x234]
	add r0, r2, r0, ror #29
	mov r2, #1
	and r0, r1, r2, lsl r0
	bx lr
	arm_func_end FUN_ov131_02149d38

	arm_func_start FUN_ov131_02149d78
FUN_ov131_02149d78: ; 0x02149D78
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r1
	bl FUN_ov131_02149d38
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r4, lr}
	addne sp, sp, #0x10
	bxne lr
	cmp r4, #0
	beq _02149DF4
	ldr r3, _02149E44 ; =0x0209A250
	ldr r1, _02149E48 ; =0x0214CB10
	ldr r0, [r3]
	cmp r0, #0
	beq _02149E30
	sub r2, r4, #1
	mov r2, r2, lsl #4
	add r2, r2, #0x10
	str r2, [sp]
	mov r2, #0x10
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x20
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	b _02149E30
_02149DF4:
	ldr r0, _02149E4C ; =0x02099F54
	ldr r0, [r0]
	bl  FUN_ov16_020f8860
	ldr lr, [sp, #0x20]
	add r12, r0, #0x14
	mov r3, #4
_02149E0C:
	ldrh r2, [r12]
	ldrh r1, [r12, #2]
	add r12, r12, #4
	subs r3, r3, #1
	strh r1, [lr, #2]
	strh r2, [lr], #4
	bne _02149E0C
	mov r1, #0
	strh r1, [r0, #0x14]
_02149E30:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_02149E44: .word unk_0209A250
_02149E48: .word ov131_0214CB10
_02149E4C: .word unk_02099F54
	arm_func_end FUN_ov131_02149d78

	arm_func_start FUN_ov131_02149e50
FUN_ov131_02149e50: ; 0x02149E50
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x9c
	mov r7, #0
	str r7, [sp, #0x20]
	ldrsh r11, [r1, #0x22]
	mov r10, r0
	add r0, r10, #0x324
	mov r1, r11
	add r0, r0, #0x1c00
	add r4, sp, #0x30
	bl FUN_020388f8
	movs r6, r0
	addmi sp, sp, #0x9c
	movmi r0, r7
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x324
	mov r1, r11
	add r0, r0, #0x1c00
	bl FUN_020385dc
	ldr r1, _0214A518 ; =0x02099EE8
	mov r2, r0
	ldr r1, [r1]
	add r0, sp, #0x24
	bl FUN_0205fb80
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x80]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x84]
	str r1, [sp, #0x88]
	mov r0, r10
	mov r1, #0x12
	mov r2, #0xc8
	add r3, sp, #0x20
	bl FUN_02044ea4
	mov r5, r0
	ldr r0, [sp, #0x20]
	ldr r1, _0214A51C ; =0x0214CB30
	bl STD_CopyString
	ldr r0, [sp, #0x20]
	add r8, r0, #8
	strb r7, [r0, #8]
	add r0, r8, #0x40
	b _02149F0C
_02149F00:
	add r1, r0, r7, lsl #4
	str r1, [r4, r7, lsl #2]
	add r7, r7, #1
_02149F0C:
	cmp r7, #4
	blt _02149F00
	mov r9, #0
	add r2, sp, #0x8c
	mov r0, r10
	mov r1, r6
	mov r7, r9
	bl FUN_ov131_02149d78
	cmp r0, #0
	beq _0214A180
	cmp r6, #0
	beq _02149F70
	mov r3, r6, lsr #0x1f
	rsb r0, r3, r6, lsl #29
	add r1, r10, #0x234
	add r3, r3, r0, ror #29
	mov r0, #1
	mov r2, r6, asr #2
	mov r3, r0, lsl r3
	add r4, r1, #0x6000
	add r0, r6, r2, lsr #29
	ldrb r2, [r4, r0, asr #3]
	and r1, r3, #0xff
	orr r1, r2, r1
	strb r1, [r4, r0, asr #3]
_02149F70:
	ldr r0, _0214A520 ; =0x02099F78
	ldr r1, _0214A524 ; =0x0214CB38
	bl FUN_020418b0
	cmp r0, #0
	beq _02149F8C
	cmp r0, #1
	beq _02149F94
_02149F8C:
	mov r2, #0
	b _02149F98
_02149F94:
	mov r2, #1
_02149F98:
	add r0, sp, #0x8c
	mov r1, r2, lsl #2
	ldrh r7, [r0, r1]
	add r0, r0, r2, lsl #2
	ldrh r0, [r0, #2]
	strh r7, [sp, #0x1c]
	cmp r7, #0
	strh r0, [sp, #0x1e]
	ldreqh r7, [sp, #0x8c]
	ldreqh r0, [sp, #0x8e]
	streqh r7, [sp, #0x1c]
	streqh r0, [sp, #0x1e]
	cmp r7, #0
	beq _0214A180
	cmp r7, #0x200
	beq _0214A11C
	ldr r0, _0214A528 ; =0x00000201
	cmp r7, r0
	beq _0214A0B4
	ldr r0, _0214A52C ; =0x0209BA20
	mov r1, r7
	bl  FUN_ov16_020ee034
	movs r4, r0
	moveq r7, #0
	beq _0214A180
	ldrh r0, [sp, #0x1e]
	mov r1, r7
	cmp r0, #0
	moveq r0, #1
	streqh r0, [sp, #0x1e]
	ldrh r2, [sp, #0x1e]
	ldr r0, _0214A52C ; =0x0209BA20
	bl  FUN_ov16_020ede60 ; may be ov17
	cmp r0, #0
	bne _0214A0A8
	mov r0, r8
	mov r1, r4
	bl STD_ConcatenateString
	ldrb r0, [r4, #0x1d]
	cmp r0, #0xe
	beq _0214A074
	cmp r0, #0xf
	beq _0214A050
	cmp r0, #0x11
	beq _0214A07C
	b _0214A088
_0214A050:
	ldr r1, _0214A530 ; =0x0214CB40
	mov r0, r8
	bl STD_ConcatenateString
	add r0, sp, #0x30
	ldr r0, [r0, r9, lsl #2]
	ldr r1, _0214A534 ; =0x0214CB4C
	add r9, r9, #1
	bl STD_CopyString
	b _0214A088
_0214A074:
	ldr r1, _0214A538 ; =0x0214CB58
	b _0214A080
_0214A07C:
	ldr r1, _0214A53C ; =0x0214CB74
_0214A080:
	mov r0, r8
	bl STD_ConcatenateString
_0214A088:
	ldrb r0, [r4, #0x1d]
	cmp r0, #0xe
	cmpne r0, #0x11
	beq _0214A180
	ldr r1, _0214A540 ; =0x0214CB84
	mov r0, r8
	bl STD_ConcatenateString
	b _0214A180
_0214A0A8:
	ldrh r0, [r4, #0x20]
	ldr r7, _0214A528 ; =0x00000201
	strh r0, [sp, #0x1e]
_0214A0B4:
	ldrh r2, [sp, #0x1e]
	ldr r1, _0214A544 ; =0x0214CB88
	add r0, sp, #0x60
	bl FUN_02023c40
	add r4, sp, #0x40
	add r0, sp, #0x60
	mov r1, r4
	bl  FUN_ov16_020f1f5c
	ldr r1, _0214A548 ; =0x0214CB8C
	mov r0, r8
	bl STD_ConcatenateString
	mov r1, r4
	mov r0, r8
	bl STD_ConcatenateString
	ldr r1, _0214A54C ; =0x0214CB9C
	mov r0, r8
	bl STD_ConcatenateString
	add r0, sp, #0x30
	ldr r0, [r0, r9, lsl #2]
	ldr r1, _0214A550 ; =0x0214CBA0
	add r9, r9, #1
	bl STD_CopyString
	ldrh r1, [sp, #0x1e]
	ldr r0, _0214A52C ; =0x0209BA20
	bl  FUN_ov16_020edf8c
	b _0214A180
_0214A11C:
	ldrh r2, [sp, #0x1e]
	ldr r1, _0214A554 ; =0x0214CBAC
	add r0, sp, #0x60
	bl FUN_02023c40
	add r4, sp, #0x40
	add r0, sp, #0x60
	mov r1, r4
	bl  FUN_ov16_020f1f5c
	ldr r1, _0214A558 ; =0x0214CBB0
	mov r0, r8
	bl STD_ConcatenateString
	mov r1, r4
	mov r0, r8
	bl STD_ConcatenateString
	ldr r1, _0214A55C ; =0x0214CBC0
	mov r0, r8
	bl STD_ConcatenateString
	add r0, sp, #0x30
	ldr r0, [r0, r9, lsl #2]
	ldr r1, _0214A560 ; =0x0214CBC4
	add r9, r9, #1
	bl STD_CopyString
	ldrh r1, [sp, #0x1e]
	ldr r0, _0214A52C ; =0x0209BA20
	bl  FUN_ov16_020edfe4
_0214A180:
	cmp r7, #0
	add r4, sp, #0x30
	beq _0214A1B8
	ldr r1, _0214A564 ; =0x0214CBD0
	mov r0, r8
	bl STD_ConcatenateString
	ldr r0, [r4, r9, lsl #2]
	ldr r1, _0214A568 ; =0x0214CBE8
	add r9, r9, #1
	bl STD_CopyString
	ldr r0, [r4, r9, lsl #2]
	ldr r1, _0214A56C ; =0x0214CBEC
	bl STD_CopyString
	b _0214A1D0
_0214A1B8:
	ldr r1, _0214A570 ; =0x0214CBF0
	mov r0, r8
	bl STD_CopyString
	ldr r0, [r4, r9, lsl #2]
	ldr r1, _0214A574 ; =0x0214CC04
	bl STD_CopyString
_0214A1D0:
	cmp r7, #0
	mov r4, #2
	cmpne r7, #0x400
	bge _0214A23C
	str r4, [sp]
	mov r9, #0x1f
	str r9, [sp, #4]
	ldr r2, _0214A578 ; =0x00003FFF
	mov r0, r10
	mov r1, r5
	mov r3, #1
	str r7, [sp, #8]
	bl FUN_02045064
	mov r1, r0
	mov r0, #4
	stmia sp, {r0, r9}
	ldr r5, [sp, #0x80]
	ldr r0, [sp, #0x84]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r5, [sp, #0x88]
	rsb r2, r4, #0x3040
	mov r3, #1
	mov r0, r10
	str r5, [sp, #0x10]
	bl FUN_02045064
	mov r5, r0
_0214A23C:
	cmp r7, #0
	beq _0214A2B8
	beq _0214A270
	str r4, [sp]
	mov r3, #0
	mov r1, r5
	ldr r2, _0214A57C ; =0x00003015
	mov r0, r10
	str r3, [sp, #4]
	mov r5, #0xf
	str r5, [sp, #8]
	bl FUN_02045064
	mov r5, r0
_0214A270:
	ldr r9, _0214A580 ; =0x00003043
	stmia sp, {r4, r11}
	ldr r11, [sp, #0x20]
	mov r0, r10
	mov r1, r5
	mov r2, r9
	mov r3, #0
	str r11, [sp, #8]
	bl FUN_02045064
	mov r3, #1
	mov r1, r0
	str r3, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	sub r2, r9, #0x41
	mov r0, r10
	bl FUN_02045064
	mov r5, r0
_0214A2B8:
	cmp r7, #0
	beq _0214A364
	cmp r7, #0x400
	bge _0214A318
	str r4, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	ldr r9, _0214A580 ; =0x00003043
	ldr r11, [sp, #0x20]
	mov r0, r10
	mov r1, r5
	mov r2, r9
	mov r3, #0
	str r11, [sp, #8]
	bl FUN_02045064
	mov r3, #1
	mov r1, r0
	str r3, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	sub r2, r9, #0x41
	mov r0, r10
	bl FUN_02045064
	mov r5, r0
_0214A318:
	ldr r9, _0214A57C ; =0x00003015
	str r4, [sp]
	mov r3, #0
	mov r1, r5
	mov r0, r10
	mov r2, r9
	str r3, [sp, #4]
	mov r5, #0x10
	str r5, [sp, #8]
	bl FUN_02045064
	mov r3, #1
	mov r1, r0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	sub r2, r9, #0x13
	mov r0, r10
	bl FUN_02045064
	mov r5, r0
_0214A364:
	mov r3, #1
	ldr r9, _0214A584 ; =0x0000306B
	mov r1, r5
	mov r5, r3
	str r5, [sp]
	mov r5, #4
	mov r0, r10
	mov r2, r9
	str r5, [sp, #4]
	bl FUN_02045064
	sub r11, r9, #0x4f
	stmia sp, {r4, r5}
	mov r1, r0
	mov r0, r10
	mov r2, r11
	mov r3, #1
	str r4, [sp, #8]
	bl FUN_02045064
	mov r1, r0
	mov r0, #5
	stmia sp, {r0, r8}
	ldr r2, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	sub r2, r9, #0x4e
	mov r0, r10
	mov r3, #1
	str r2, [sp, #0x18]
	bl FUN_02045064
	mov r1, #1
	str r1, [sp]
	mov r1, r0
	mov r0, #0x1f
	str r0, [sp, #4]
	mov r0, r10
	sub r2, r9, #0x2e
	mov r3, #1
	bl FUN_02045064
	cmp r6, #0
	mov r5, r0
	bne _0214A500
	cmp r7, #0
	beq _0214A500
	add r8, r8, #0x80
	ldr r1, _0214A588 ; =0x0214CC0C
	mov r0, r8
	bl STD_CopyString
	ldr r1, _0214A58C ; =0x0214CC30
	add r0, r8, #0x22
	bl STD_CopyString
	ldr r1, _0214A590 ; =0x0214CC38
	add r0, r8, #0x2a
	bl STD_CopyString
	mov r6, #0
	str r6, [sp]
	mov r1, r5
	sub r5, r9, #0x4d
	str r6, [sp, #4]
	mov r0, r10
	mov r2, r5
	mov r3, #1
	bl FUN_02045064
	str r6, [sp]
	mov r1, r0
	add r2, r9, #0x22
	str r6, [sp, #4]
	mov r0, r10
	mov r3, #1
	bl FUN_02045064
	str r4, [sp]
	mov r1, #5
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, r0
	mov r2, r11
	mov r0, r10
	mov r3, #1
	bl FUN_02045064
	mov r1, r0
	mov r0, #3
	stmia sp, {r0, r8}
	add r0, r8, #0x22
	str r0, [sp, #8]
	add r0, r8, #0x2a
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	mov r0, r10
	mov r3, #1
	bl FUN_02045064
	str r6, [sp]
	mov r1, r0
	mov r2, r5
	mov r3, #1
	mov r0, r10
	str r6, [sp, #4]
	bl FUN_02045064
	mov r5, r0
_0214A500:
	mov r0, r10
	mov r1, r5
	bl FUN_02044f78
	mov r0, #1
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214A518: .word unk_02099EE8
_0214A51C: .word ov131_0214CB30
_0214A520: .word unk_02099F78
_0214A524: .word ov131_0214CB38
_0214A528: .word 0x00000201
_0214A52C: .word unk_0209BA20
_0214A530: .word ov131_0214CB40
_0214A534: .word ov131_0214CB4C
_0214A538: .word ov131_0214CB58
_0214A53C: .word ov131_0214CB74
_0214A540: .word ov131_0214CB84
_0214A544: .word ov131_0214CB88
_0214A548: .word ov131_0214CB8C
_0214A54C: .word ov131_0214CB9C
_0214A550: .word ov131_0214CBA0
_0214A554: .word ov131_0214CBAC
_0214A558: .word ov131_0214CBB0
_0214A55C: .word ov131_0214CBC0
_0214A560: .word ov131_0214CBC4
_0214A564: .word ov131_0214CBD0
_0214A568: .word ov131_0214CBE8
_0214A56C: .word ov131_0214CBEC
_0214A570: .word ov131_0214CBF0
_0214A574: .word ov131_0214CC04
_0214A578: .word 0x00003FFF
_0214A57C: .word 0x00003015
_0214A580: .word 0x00003043
_0214A584: .word 0x0000306B
_0214A588: .word ov131_0214CC0C
_0214A58C: .word ov131_0214CC30
_0214A590: .word ov131_0214CC38
	arm_func_end FUN_ov131_02149e50

	arm_func_start FUN_ov131_0214a594
FUN_ov131_0214a594: ; 0x0214A594
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x50
	add r3, sp, #0xc
	mov r1, #5
	mov r2, #0x80
	mov r9, r0
	bl FUN_02044ea4
	ldr r1, [sp, #0xc]
	mov r7, #0
	strb r7, [r1]
	ldr r10, _0214A740 ; =0x020A0640
	add r6, sp, #0x30
	mov r8, r0
	ldrh r2, [r10, #0xa0]
	ldr r1, _0214A744 ; =0x0214CC40
	mov r0, r6
	bl FUN_02023c40
	add r5, sp, #0x10
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f1f5c
	ldr r0, [sp, #0xc]
	ldr r1, _0214A748 ; =0x0214CC44
	bl STD_ConcatenateString
	ldr r0, [sp, #0xc]
	mov r1, r5
	bl STD_ConcatenateString
	ldr r0, [sp, #0xc]
	ldr r1, _0214A74C ; =0x0214CC54
	bl STD_ConcatenateString
	ldr r0, [sp, #0xc]
	ldr r1, _0214A750 ; =0x0214CC60
	bl STD_ConcatenateString
	ldrh r1, [r10, #0xa0]
	ldr r4, _0214A754 ; =0x0209BA20
	mov r0, r4
	rsb r1, r1, #0
	bl  FUN_ov16_020edf8c
	ldrh r2, [r10, #0x9e]
	ldr r1, _0214A758 ; =0x0214CC64
	mov r0, r6
	bl FUN_02023c40
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f1f5c
	ldr r0, [sp, #0xc]
	ldr r1, _0214A75C ; =0x0214CC68
	bl STD_ConcatenateString
	ldr r0, [sp, #0xc]
	mov r1, r5
	bl STD_ConcatenateString
	ldr r0, [sp, #0xc]
	ldr r1, _0214A760 ; =0x0214CC78
	bl STD_ConcatenateString
	ldr r0, [sp, #0xc]
	ldr r1, _0214A764 ; =0x0214CC84
	bl STD_ConcatenateString
	ldrh r1, [r10, #0x9e]
	mov r0, r4
	rsb r1, r1, #0
	bl  FUN_ov16_020edfe4
	ldr r0, [sp, #0xc]
	ldr r1, _0214A768 ; =0x0214CC88
	bl STD_ConcatenateString
	strb r7, [r10, #0x9d]
	strh r7, [r10, #0xa0]
	mov r5, #1
	strh r7, [r10, #0x9e]
	ldr r4, _0214A76C ; =0x00003002
	str r5, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r1, r8
	mov r0, r9
	mov r3, r5
	mov r2, r4
	bl FUN_02045064
	mov r1, r0
	str r5, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, r9
	add r2, r4, #0x69
	mov r3, r5
	bl FUN_02045064
	mov r1, r0
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, r9
	add r2, r4, #0x1a
	mov r3, r5
	bl FUN_02045064
	mov r1, r0
	str r5, [sp]
	add r2, r4, #0x1b
	ldr r4, [sp, #0xc]
	mov r3, r5
	mov r0, r9
	str r4, [sp, #4]
	bl FUN_02045064
	mov r1, r0
	mov r0, r9
	bl FUN_02044f78
	add sp, sp, #0x50
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214A740: .word unk_020A0640
_0214A744: .word ov131_0214CC40
_0214A748: .word ov131_0214CC44
_0214A74C: .word ov131_0214CC54
_0214A750: .word ov131_0214CC60
_0214A754: .word unk_0209BA20
_0214A758: .word ov131_0214CC64
_0214A75C: .word ov131_0214CC68
_0214A760: .word ov131_0214CC78
_0214A764: .word ov131_0214CC84
_0214A768: .word ov131_0214CC88
_0214A76C: .word 0x00003002
	arm_func_end FUN_ov131_0214a594

	arm_func_start FUN_ov131_0214a770
FUN_ov131_0214a770: ; 0x0214A770
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x78
	ldr r9, _0214A884 ; =0x020A0640
	mov r8, r0
	ldrh r1, [r9, #0xa4]
	cmp r1, #0
	addeq sp, sp, #0x78
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0214A888 ; =0x0209BA20
	add r2, sp, #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x78
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r7, #4
	add r3, sp, #0xc
	mov r0, r8
	mov r1, r7
	mov r2, #0x80
	bl FUN_02044ea4
	ldr r1, [sp, #0xc]
	mov r6, #0
	strb r6, [r1]
	mov r4, r0
	ldr r0, [sp, #0xc]
	add r1, sp, #0x2c
	bl STD_ConcatenateString
	ldr r0, [sp, #0xc]
	ldr r1, _0214A88C ; =0x0214CC98
	bl STD_ConcatenateString
	mov r5, #1
	mov r1, r4
	ldr r4, _0214A890 ; =0x00003002
	str r5, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, r8
	mov r3, r5
	mov r2, r4
	bl FUN_02045064
	mov r1, r0
	stmia sp, {r5, r7}
	mov r0, r8
	add r2, r4, #0x69
	mov r3, r5
	bl FUN_02045064
	mov r2, #2
	mov r1, r0
	str r2, [sp]
	mov r0, #3
	stmib sp, {r0, r2}
	mov r0, r8
	add r2, r4, #0x1a
	mov r3, r5
	bl FUN_02045064
	mov r1, r0
	str r5, [sp]
	add r2, r4, #0x1b
	ldr r4, [sp, #0xc]
	mov r3, r5
	mov r0, r8
	str r4, [sp, #4]
	bl FUN_02045064
	mov r1, r0
	mov r0, r8
	bl FUN_02044f78
	strh r6, [r9, #0xa4]
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214A884: .word unk_020A0640
_0214A888: .word unk_0209BA20
_0214A88C: .word ov131_0214CC98
_0214A890: .word 0x00003002
	arm_func_end FUN_ov131_0214a770

	arm_func_start FUN_ov131_0214a894
FUN_ov131_0214a894: ; 0x0214A894
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov r8, #0x89
	ldr r0, _0214AA90 ; =0x0209BA20
	mov r1, r8
	mov r9, #0
	bl  FUN_ov16_020ee034
	mov r6, r0
	add r3, sp, #0x14
	mov r0, r4
	mov r1, #5
	mov r2, #0x80
	bl FUN_02044ea4
	ldr r1, [sp, #0x14]
	mov r5, r0
	strb r9, [r1]
	ldr r0, [sp, #0x14]
	ldr r1, _0214AA94 ; =0x0214CCB8
	bl STD_ConcatenateString
	ldr r0, [sp, #0x14]
	mov r1, r6
	bl STD_ConcatenateString
	ldr r0, [sp, #0x14]
	ldr r1, _0214AA98 ; =0x0214CCDC
	bl STD_ConcatenateString
	ldr r0, [sp, #0x14]
	ldr r1, _0214AA9C ; =0x0214CCE0
	bl STD_ConcatenateString
	ldr r0, [sp, #0x14]
	bl _strlen
	mov r7, r0
	ldr r0, [sp, #0x14]
	ldr r1, _0214AAA0 ; =0x0214CCF8
	add r0, r0, r7
	add r0, r0, #2
	bl STD_ConcatenateString
	ldr r0, [sp, #0x14]
	ldr r1, _0214AAA4 ; =0x0214CD04
	add r0, r0, r7
	add r0, r0, #0xc
	bl STD_ConcatenateString
	ldr r0, [sp, #0x14]
	ldr r1, _0214AAA8 ; =0x0214CD08
	add r0, r0, r7
	add r0, r0, #0x10
	bl STD_ConcatenateString
	mov r6, #1
	mov r1, r5
	ldr r5, _0214AAAC ; =0x00003002
	str r6, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, r4
	mov r3, r6
	mov r2, r5
	bl FUN_02045064
	mov r1, r0
	mov r0, #3
	stmia sp, {r0, r9}
	ldr r2, _0214AAB0 ; =0x0214CD0C
	mov r0, r4
	str r2, [sp, #8]
	str r9, [sp, #0xc]
	mov r3, r9
	add r2, r5, #0x15
	bl FUN_02045064
	mov r1, r0
	str r6, [sp]
	mov r9, #4
	mov r0, r4
	add r2, r5, #0x69
	mov r3, r6
	str r9, [sp, #4]
	bl FUN_02045064
	mov r1, r0
	mov r0, #2
	stmia sp, {r0, r9}
	str r0, [sp, #8]
	mov r0, r4
	add r2, r5, #0x1a
	mov r3, r6
	bl FUN_02045064
	mov r1, r0
	str r9, [sp]
	add r2, r5, #0x1b
	ldr r5, [sp, #0x14]
	mov r3, r6
	str r5, [sp, #4]
	ldr r5, [sp, #0x14]
	mov r0, r4
	add r5, r5, r7
	add r5, r5, #2
	str r5, [sp, #8]
	ldr r5, [sp, #0x14]
	add r5, r5, r7
	add r5, r5, #0xc
	str r5, [sp, #0xc]
	ldr r5, [sp, #0x14]
	add r5, r5, r7
	add r5, r5, #0x10
	str r5, [sp, #0x10]
	bl FUN_02045064
	ldr r6, _0214AAB4 ; =0x020A0640
	ldr r7, _0214AAB8 ; =0x020A0700
	ldrb r2, [r6, #0x149]
	mov r5, r0
	mov r0, r7
	add r2, r2, #1
	mov r1, r8
	and r2, r2, #0xff
	bl  FUN_ov16_020eef64
	ldrb r0, [r6, #0x149]
	cmp r0, #0x63
	bls _0214AA70
	mov r0, r7
	mov r1, r8
	mov r2, #0x63
	bl  FUN_ov16_020eef64
_0214AA70:
	mov r0, r4
	mov r1, r5
	bl FUN_02044f78
	ldr r0, _0214AAB4 ; =0x020A0640
	mov r1, #0
	strh r1, [r0, #0xa4]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214AA90: .word unk_0209BA20
_0214AA94: .word ov131_0214CCB8
_0214AA98: .word ov131_0214CCDC
_0214AA9C: .word ov131_0214CCE0
_0214AAA0: .word ov131_0214CCF8
_0214AAA4: .word ov131_0214CD04
_0214AAA8: .word ov131_0214CD08
_0214AAAC: .word 0x00003002
_0214AAB0: .word ov131_0214CD0C
_0214AAB4: .word unk_020A0640
_0214AAB8: .word unk_020A0700
	arm_func_end FUN_ov131_0214a894

	arm_func_start FUN_ov131_0214aabc
FUN_ov131_0214aabc: ; 0x0214AABC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r1, #0
	mov r2, #0x48
	b _0214AB0C
_0214AAD8:
	mul r12, r1, r2
	add r3, r6, r12
	add r0, r3, #0x1000
	ldr r0, [r0, #0x660]
	cmp r5, r0
	addeq r0, r3, #0x1600
	ldreqsh r0, [r0, #0x68]
	cmpeq r4, r0
	addeq r0, r6, #0x660
	addeq r0, r0, #0x1000
	addeq r0, r0, r12
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r1, r1, #1
_0214AB0C:
	cmp r1, #0x20
	blt _0214AAD8
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0214ABB0 ; =0x02099ED8
	mov r1, r5
	ldr r0, [r0]
	mov r2, r4
	bl FUN_020554b0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0
	mov r2, #0x48
	b _0214AB64
_0214AB4C:
	mla r3, r1, r2, r6
	add r3, r3, #0x1000
	ldr r3, [r3, #0x660]
	cmp r3, #0
	beq _0214AB6C
	add r1, r1, #1
_0214AB64:
	cmp r1, #0x20
	blt _0214AB4C
_0214AB6C:
	cmp r1, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r2, #0x48
	mul r12, r1, r2
	add r2, r6, r12
	add r1, r2, #0x1000
	str r5, [r1, #0x660]
	add r2, r2, #0x1600
	strh r4, [r2, #0x68]
	add r3, r6, #0x660
	str r0, [r1, #0x664]
	add r0, r3, #0x1000
	mov r1, #1
	strh r1, [r2, #0x6a]
	add r0, r0, r12
	ldmfd sp!, {r4, r5, r6, pc}
_0214ABB0: .word unk_02099ED8
	arm_func_end FUN_ov131_0214aabc

	arm_func_start FUN_ov131_0214abb4
FUN_ov131_0214abb4: ; 0x0214ABB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x6c
	ldr r5, [sp, #0x88]
	movs r8, r1
	mov r9, r0
	mov r4, #0
	mov r7, r2
	mov r6, r3
	addeq sp, sp, #0x6c
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0214ABFC
	bl FUN_0206dcd4
	b _0214AC20
_0214ABFC:
	mov r1, r8, lsl #0x10
	ldr r0, _0214ACF4 ; =0x0209BA20
	add r2, sp, #4
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x6c
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0214AC20:
	cmp r6, #0
	bne _0214AC50
	mov r1, r8, lsl #0x10
	ldr r0, _0214ACF4 ; =0x0209BA20
	add r2, sp, #4
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x6c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrh r6, [sp, #0x5c]
_0214AC50:
	mov r0, r9
	cmp r5, #0
	mov r1, r8
	mov r2, r7
	moveq r5, #0x32
	bl FUN_ov131_0214aabc
	movs r4, r0
	bne _0214AC84
	mov r1, #0
	mov r0, r9
	mov r2, r1
	bl FUN_ov131_0214aabc
	mov r4, r0
_0214AC84:
	str r8, [r4]
	strh r7, [r4, #8]
	ldr r9, _0214ACF8 ; =0x02099ED8
	str r5, [sp]
	ldr r0, [r9]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_02055004
	mov r1, r0
	str r1, [r4, #4]
	ldr r0, [r9]
	ldr r2, _0214ACFC ; =0x0000C350
	mov r3, #3
	bl FUN_02055528
	ldr r0, _0214AD00 ; =0x02099EC0
	str r5, [sp]
	ldr r0, [r0]
	mov r1, r8
	mov r2, r6
	mov r3, #0
	bl FUN_02056ed4
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x11
	strh r0, [r4, #0xa]
	ldr r0, [r4, #4]
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0214ACF4: .word unk_0209BA20
_0214ACF8: .word unk_02099ED8
_0214ACFC: .word 0x0000C350
_0214AD00: .word unk_02099EC0
	arm_func_end FUN_ov131_0214abb4

	arm_func_start FUN_ov131_0214ad04
FUN_ov131_0214ad04: ; 0x0214AD04
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov131_0214aabc
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0214AD80 ; =0x02099ED8
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_020559a0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	ldr r1, [r5, #4]
	bl FUN_02055324
	ldr r2, _0214AD84 ; =0x02099EC0
	mov r1, r0
	ldr r0, [r2]
	mov r2, #1
	bl FUN_02056e04
	ldr r0, [r4]
	ldr r1, [r5, #4]
	bl FUN_02055274
	mov r0, r5
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0214AD80: .word unk_02099ED8
_0214AD84: .word unk_02099EC0
	arm_func_end FUN_ov131_0214ad04

	arm_func_start FUN_ov131_0214ad88
FUN_ov131_0214ad88: ; 0x0214AD88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, #0
	movs r5, r1
	mov r4, r0
	mov r6, #1
	mov r8, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r0, r8, #1
	cmp r5, r0
	beq _0214AE9C
	mov r1, r5, lsl #0x10
	ldr r0, _0214AFCC ; =0x0209BA20
	mov r1, r1, lsr #0x10
	bl FUN_0204bcd8
	sub r1, r8, #1
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r4, #0x660
	add r4, r0, #0x1000
	mov r9, #0x48
	b _0214AE0C
_0214ADDC:
	ldr r0, [r4]
	cmp r0, r5
	bne _0214AE04
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, r7
	mov r2, r9
	bl MI_CpuFill8
_0214AE04:
	add r4, r4, #0x48
	add r8, r8, #1
_0214AE0C:
	cmp r8, #0x20
	blt _0214ADDC
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, _0214AFD0 ; =0x02099ED8
	mov r1, #1
	ldr r0, [r10]
	bl FUN_02055388
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	ldr r7, _0214AFD4 ; =0x02099EC0
	b _0214AE90
_0214AE3C:
	ldrh r0, [r4, #0x20]
	cmp r0, r5
	bne _0214AE88
	ldr r9, [r4, #0x5c]
	ldr r0, [r10]
	mov r1, r9
	bl FUN_020559a0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10]
	mov r1, r9
	bl FUN_02055324
	mov r1, r0
	ldr r0, [r7]
	mov r2, r6
	bl FUN_02056e04
	ldr r0, [r10]
	mov r1, r9
	bl FUN_02055274
_0214AE88:
	add r4, r4, #0xd4
	add r8, r8, #1
_0214AE90:
	cmp r8, #0x18
	blt _0214AE3C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214AE9C:
	add r0, r4, #0x660
	add r10, r0, #0x1000
	ldr r5, _0214AFD0 ; =0x02099ED8
	ldr r11, _0214AFD4 ; =0x02099EC0
	mvn r4, #0
	b _0214AF34
_0214AEB4:
	ldr r1, [r10]
	ldr r0, _0214AFCC ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0204bcd8
	cmp r0, r4
	beq _0214AF2C
	ldrh r0, [r10, #0xa]
	tst r0, #1
	beq _0214AF30
	mov r0, r10
	mov r1, r7
	mov r2, #0x48
	ldr r9, [r10, #4]
	bl MI_CpuFill8
	ldr r0, [r5]
	mov r1, r9
	bl FUN_020559a0
	cmp r0, #0
	bne _0214AF30
	ldr r0, [r5]
	mov r1, r9
	bl FUN_02055324
	mov r1, r0
	ldr r0, [r11]
	mov r2, r6
	bl FUN_02056e04
	mov r1, r9
	ldr r0, [r5]
	bl FUN_02055274
_0214AF2C:
	add r10, r10, #0x48
_0214AF30:
	add r8, r8, #1
_0214AF34:
	cmp r8, #0x20
	blt _0214AEB4
	ldr r7, _0214AFD0 ; =0x02099ED8
	mov r1, #1
	ldr r0, [r7]
	bl FUN_02055388
	mov r10, r0
	mov r8, #0
	ldr r11, _0214AFCC ; =0x0209BA20
	ldr r5, _0214AFD4 ; =0x02099EC0
	mvn r4, #0
	b _0214AFC0
_0214AF64:
	ldrh r1, [r10, #0x20]
	mov r0, r11
	bl FUN_0204bcd8
	cmp r0, r4
	beq _0214AFB8
	ldr r9, [r10, #0x5c]
	ldr r0, [r7]
	mov r1, r9
	bl FUN_020559a0
	cmp r0, #0
	bne _0214AFBC
	ldr r0, [r7]
	mov r1, r9
	bl FUN_02055324
	mov r1, r0
	ldr r0, [r5]
	mov r2, r6
	bl FUN_02056e04
	ldr r0, [r7]
	mov r1, r9
	bl FUN_02055274
_0214AFB8:
	add r10, r10, #0xd4
_0214AFBC:
	add r8, r8, #1
_0214AFC0:
	cmp r8, #0x18
	blt _0214AF64
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214AFCC: .word unk_0209BA20
_0214AFD0: .word unk_02099ED8
_0214AFD4: .word unk_02099EC0
	arm_func_end FUN_ov131_0214ad88

	arm_func_start FUN_ov131_0214afd8
FUN_ov131_0214afd8: ; 0x0214AFD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	movs r6, r1
	mov r5, r2
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r7, _0214B080 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r7]
	bl FUN_020552cc
	mov r8, r0
	ldr r0, [r7]
	ldr r1, [r4, #4]
	bl FUN_02055324
	ldrh r3, [r8, #0xa8]
	mov r1, #0
	mov r2, r6
	str r3, [sp]
	str r1, [sp, #4]
	ldrb r3, [r8, #0x67]
	ldr r6, _0214B084 ; =0x02099EC0
	mov r1, r0
	str r3, [sp, #8]
	ldr r0, [r6]
	mov r3, r5
	bl FUN_02056b24
	ldr r0, [r6]
	mov r1, #1
	bl FUN_02057020
	ldrh r0, [r4, #0xa]
	orr r0, r0, #2
	strh r0, [r4, #0xa]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0214B080: .word unk_02099ED8
_0214B084: .word unk_02099EC0
	arm_func_end FUN_ov131_0214afd8

	arm_func_start FUN_ov131_0214b088
FUN_ov131_0214b088: ; 0x0214B088
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x18]
	mov r7, r3
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0214B158 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	mov r6, r0
	cmp r5, #0
	bne _0214B0E4
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	and r1, r7, #0xff
	bl FUN_02054424
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214B0E4:
	cmp r7, #0
	beq _0214B104
	mov r0, #0
	str r0, [r4, #0x38]
	mov r1, r5, lsl #0xc
	mov r0, #0x20000
	bl FX_Div
	b _0214B11C
_0214B104:
	mov r2, #0x1f000
	mov r1, r5, lsl #0xc
	mov r0, #0x20000
	str r2, [r4, #0x38]
	bl FX_Div
	rsb r0, r0, #0
_0214B11C:
	str r0, [r4, #0x3c]
	strh r5, [r4, #0x40]
	cmp r6, #0
	beq _0214B148
	mov r0, r6
	mov r1, #1
	bl FUN_02054424
	ldr r1, [r4, #0x38]
	mov r0, r6
	mov r1, r1, asr #0xc
	bl FUN_02054350
_0214B148:
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x800
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214B158: .word unk_02099ED8
	arm_func_end FUN_ov131_0214b088

	arm_func_start FUN_ov131_0214b15c
FUN_ov131_0214b15c: ; 0x0214B15C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	ldr r6, [sp, #0x5c]
	cmp r1, #0
	mov r7, r3
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0214B310 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	movs r5, r0
	beq _0214B1B8
	mov r1, #1
	bl FUN_02054424
_0214B1B8:
	ldr r0, [r5, #0x84]
	ldr r2, [sp, #0x50]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x88]
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x30]
	ldr r3, [r5, #0x8c]
	ldr r0, [sp, #0x58]
	str r3, [sp, #0x34]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	cmp r7, #0
	beq _0214B200
	add r1, sp, #0x20
	add r0, sp, #0x2c
	mov r2, r1
	bl VEC_Add
_0214B200:
	cmp r6, #0
	bne _0214B28C
	ldr r1, [sp, #0x60]
	cmp r1, #0
	bne _0214B258
	ldr r1, [sp, #0x24]
	ldrb r0, [sp, #0x64]
	str r1, [sp]
	ldr r2, [sp, #0x28]
	mov r1, #1
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0214B310 ; =0x02099ED8
	ldr r2, [r4, #4]
	ldr r1, [r0]
	ldr r3, [sp, #0x20]
	add r0, sp, #0x14
	bl FUN_020555e8
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214B258:
	ldr r3, _0214B310 ; =0x02099ED8
	add r0, sp, #0x20
	str r1, [sp, #4]
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldr r0, [r3]
	ldr r1, [r4, #4]
	ldmia r5, {r2, r3}
	bl FUN_02055cb0
	mov r0, #0
	strh r0, [r4, #0xc]
	b _0214B2E8
_0214B28C:
	add r0, sp, #0x20
	add r1, sp, #0x2c
	mov r2, r0
	bl VEC_Subtract
	ldr r0, [sp, #0x20]
	mov r1, r6, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	mov r1, r6, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r1, r6, lsl #0xc
	bl FX_Div
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x28]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x28]
	str r0, [r4, #0x18]
	strh r6, [r4, #0xc]
_0214B2E8:
	ldrh r1, [r4, #0xa]
	ldr r0, _0214B310 ; =0x02099ED8
	mov r2, #0x18
	orr r1, r1, #0x100
	strh r1, [r4, #0xa]
	ldr r0, [r0]
	ldr r1, [r4, #4]
	bl FUN_02055bb0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214B310: .word unk_02099ED8
	arm_func_end FUN_ov131_0214b15c

	arm_func_start FUN_ov131_0214b314
FUN_ov131_0214b314: ; 0x0214B314
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	ldr r6, [sp, #0x5c]
	cmp r1, #0
	mov r7, r3
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov131_0214aabc
	movs r5, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r5, #0xa]
	tst r0, #1
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0214B4B4 ; =0x02099ED8
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	movs r4, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #1
	bl FUN_02054424
	ldr r0, [r4, #0x84]
	ldr r2, [sp, #0x50]
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x88]
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x30]
	ldr r3, [r4, #0x8c]
	ldr r0, [sp, #0x58]
	str r3, [sp, #0x34]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	cmp r7, #0
	beq _0214B3BC
	add r1, sp, #0x20
	add r0, sp, #0x2c
	mov r2, r1
	bl VEC_Add
_0214B3BC:
	cmp r6, #0
	bne _0214B444
	ldr r1, [sp, #0x60]
	cmp r1, #0
	bne _0214B410
	ldr r0, [sp, #0x24]
	mov r1, #1
	str r0, [sp]
	ldr r2, [sp, #0x28]
	ldr r0, _0214B4B4 ; =0x02099ED8
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r0]
	ldr r2, [r5, #4]
	ldr r3, [sp, #0x20]
	add r0, sp, #0x14
	bl FUN_020555e8
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214B410:
	ldr r3, _0214B4B4 ; =0x02099ED8
	add r0, sp, #0x20
	str r1, [sp, #4]
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [r3]
	ldr r1, [r5, #4]
	ldmia r4, {r2, r3}
	bl FUN_02055cb0
	mov r0, #0
	strh r0, [r5, #0xc]
	b _0214B4A0
_0214B444:
	add r0, sp, #0x20
	add r1, sp, #0x2c
	mov r2, r0
	bl VEC_Subtract
	ldr r0, [sp, #0x20]
	mov r1, r6, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	mov r1, r6, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r1, r6, lsl #0xc
	bl FX_Div
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x28]
	str r1, [r5, #0x10]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x18]
	strh r6, [r5, #0xc]
_0214B4A0:
	ldrh r0, [r5, #0xa]
	orr r0, r0, #0x100
	strh r0, [r5, #0xa]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214B4B4: .word unk_02099ED8
	arm_func_end FUN_ov131_0214b314

	arm_func_start FUN_ov131_0214b4b8
FUN_ov131_0214b4b8: ; 0x0214B4B8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	cmp r1, #0
	mov r5, r3
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r5, #0
	beq _0214B550
	ldr r0, _0214B590 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	ldr r6, [r0, #0x84]
	ldr r12, [r0, #0x8c]
	ldr r5, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr lr, [r0, #0x88]
	add r5, r5, r6
	add r3, r3, r12
	add r2, r2, r6
	add r0, r1, r12
	str r6, [sp, #8]
	str lr, [sp, #0xc]
	str r12, [sp, #0x10]
	str r5, [sp, #0x28]
	str r3, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r0, [sp, #0x34]
_0214B550:
	ldr r5, _0214B590 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r5]
	mov r2, #1
	bl FUN_020557d8
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl FUN_0205581c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0214B590: .word unk_02099ED8
	arm_func_end FUN_ov131_0214b4b8

	arm_func_start FUN_ov131_0214b594
FUN_ov131_0214b594: ; 0x0214B594
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r5, _0214B658 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r5]
	bl FUN_020552cc
	mov r6, r0
	ldr r0, [r5]
	ldr r1, [r4, #4]
	mov r2, #0x10
	bl FUN_02055bb0
	cmp r6, #0
	beq _0214B63C
	add r0, r6, #0x6c
	add r3, sp, #0x20
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x24]
	mov r1, #0
	str r0, [sp]
	ldr r2, [sp, #0x28]
	mov r0, #1
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, [r5]
	ldr r2, [r4, #4]
	ldr r3, [sp, #0x20]
	add r0, sp, #0x14
	bl FUN_020555e8
_0214B63C:
	mov r0, #0
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0214B658: .word unk_02099ED8
	arm_func_end FUN_ov131_0214b594

	arm_func_start FUN_ov131_0214b65c
FUN_ov131_0214b65c: ; 0x0214B65C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	mov r7, r3
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0214B750 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	cmp r6, #0
	bne _0214B6C4
	str r7, [r4, #0x30]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	ldr r2, [r4, #0x30]
	mov r3, r1
	bl FUN_02054340
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214B6C4:
	cmp r5, #0
	ldreq r3, _0214B754 ; =0x00005E14
	beq _0214B6F0
	mov r0, #0x6000
	umull r3, r2, r5, r0
	mov r1, r5, asr #0x1f
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
_0214B6F0:
	ldr r2, _0214B758 ; =0x88888889
	mov r0, r3, lsr #0x1f
	smull r1, r5, r2, r3
	add r5, r3, r5
	add r1, r6, r6, lsr #31
	add r5, r0, r5, asr #5
	mov r0, r7
	mov r1, r1, asr #1
	bl _s32_div_f
	add r1, r6, r6, lsr #31
	mov r1, r1, asr #1
	sub r1, r1, #1
	mul r1, r5, r1
	add r1, r1, r1, lsr #31
	add r0, r0, r1, asr #1
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x30]
	str r5, [r4, #0x28]
	strh r6, [r4, #0x34]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x400
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214B750: .word unk_02099ED8
_0214B754: .word 0x00005E14
_0214B758: .word 0x88888889
	arm_func_end FUN_ov131_0214b65c

	arm_func_start FUN_ov131_0214b75c
FUN_ov131_0214b75c: ; 0x0214B75C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	mov r6, r3
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0214B858 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	ldrh r1, [r0, #0x6a]
	mov r0, #0x1680000
	umull r3, r2, r1, r0
	mov r1, r1, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x80000
	adc r0, r2, #0
	mov r2, r3, lsr #0x14
	ldr r1, [sp, #0x14]
	orr r2, r2, r0, lsl #12
	cmp r6, #0
	addne r5, r5, r2
	cmp r1, #0
	bne _0214B80C
	ldr r0, _0214B85C ; =0x0B60B60B
	mov r1, #0xb6
	umull r6, r3, r5, r0
	mla r3, r5, r1, r3
	mov r2, r5, asr #0x1f
	mla r3, r2, r0, r3
	adds r0, r6, #0
	adc r0, r3, #0x800
	mov r2, r0, lsl #4
	ldr r1, _0214B858 ; =0x02099ED8
	mov r2, r2, lsr #0x10
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_02055558
	ldmfd sp!, {r4, r5, r6, pc}
_0214B80C:
	sub r0, r5, r2
	bl _s32_div_f
	ldr r1, _0214B85C ; =0x0B60B60B
	mov r2, #0xb6
	umull r5, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r0, r5, #0
	adc r0, r3, #0x800
	mov r0, r0, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [sp, #0x14]
	str r1, [r4, #0x20]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	ldmfd sp!, {r4, r5, r6, pc}
_0214B858: .word unk_02099ED8
_0214B85C: .word 0x0B60B60B
	arm_func_end FUN_ov131_0214b75c

	arm_func_start FUN_ov131_0214b860
FUN_ov131_0214b860: ; 0x0214B860
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	cmp r1, #0
	mov r4, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_ov131_0214aabc
	movs r5, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrh r0, [r5, #0xa]
	tst r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r7, _0214B9C8 ; =0x02099ED8
	ldr r1, [r5, #4]
	ldr r0, [r7]
	bl FUN_020552cc
	ldr r1, [r0, #0x84]
	ldr r3, [sp, #0x30]
	str r1, [sp, #0x10]
	ldr r12, [r0, #0x88]
	add r1, sp, #4
	str r12, [sp, #0x14]
	ldr r6, [r0, #0x8c]
	add r0, sp, #0x10
	add r2, sp, #0
	str r6, [sp, #0x18]
	str r4, [sp, #4]
	str r12, [sp, #8]
	str r3, [sp, #0xc]
	bl FUN_02053554
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _0214B904
	ldrh r2, [sp]
	ldr r0, [r7]
	ldr r1, [r5, #4]
	bl FUN_02055558
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0214B904:
	ldrh r1, [sp]
	mov r6, #0x1680000
	ldr r0, [r7]
	umull r3, r2, r1, r6
	mov r1, r1, asr #0x1f
	mla r2, r1, r6, r2
	adds r3, r3, #0x80000
	ldr r1, [r5, #4]
	adc r2, r2, #0
	mov r4, r3, lsr #0x14
	orr r4, r4, r2, lsl #12
	bl FUN_020552cc
	ldrh r3, [r0, #0x6a]
	umull r2, r1, r3, r6
	mov r0, r3, asr #0x1f
	mla r1, r0, r6, r1
	adds r2, r2, #0x80000
	adc r0, r1, #0
	mov r1, r2, lsr #0x14
	orr r1, r1, r0, lsl #12
	sub r0, r4, r1
	mov r1, #0xb4000
	cmp r0, #0xb4000
	rsbgt r0, r0, #0x168
	rsb r1, r1, #0
	cmp r0, r1
	ldr r1, [sp, #0x34]
	addlt r0, r0, #0x168
	strh r3, [sp]
	bl _s32_div_f
	ldr r1, _0214B9CC ; =0x0B60B60B
	mov r2, #0xb6
	umull r4, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r0, r4, #0
	adc r0, r3, #0x800
	mov r0, r0, asr #0xc
	strh r0, [sp]
	ldrh r1, [sp]
	ldr r0, [sp, #0x34]
	str r1, [r5, #0x20]
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0xa]
	orr r0, r0, #0x200
	strh r0, [r5, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0214B9C8: .word unk_02099ED8
_0214B9CC: .word 0x0B60B60B
	arm_func_end FUN_ov131_0214b860

	arm_func_start FUN_ov131_0214b9d0
FUN_ov131_0214b9d0: ; 0x0214B9D0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	cmp r3, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r2, [sp, #0x30]
	mov r1, r3
	bl FUN_ov131_0214aabc
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r7, _0214BB94 ; =0x02099ED8
	ldr r1, [r0, #4]
	ldr r0, [r7]
	bl FUN_020552cc
	ldr r1, [r0, #0x84]
	cmp r5, #0
	str r1, [sp, #4]
	ldr r1, [r0, #0x88]
	str r1, [sp, #8]
	ldr r0, [r0, #0x8c]
	str r0, [sp, #0xc]
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov131_0214aabc
	movs r5, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrh r0, [r5, #0xa]
	tst r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7]
	ldr r1, [r5, #4]
	bl FUN_020552cc
	ldr r2, [r0, #0x84]
	add r1, sp, #4
	str r2, [sp, #0x10]
	ldr r3, [r0, #0x88]
	add r2, sp, #0
	str r3, [sp, #0x14]
	ldr r3, [r0, #0x8c]
	add r0, sp, #0x10
	str r3, [sp, #0x18]
	bl FUN_02053554
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _0214BAD0
	ldrh r2, [sp]
	ldr r0, [r7]
	ldr r1, [r5, #4]
	bl FUN_02055558
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0214BAD0:
	ldrh r1, [sp]
	mov r6, #0x1680000
	ldr r0, [r7]
	umull r3, r2, r1, r6
	mov r1, r1, asr #0x1f
	mla r2, r1, r6, r2
	adds r3, r3, #0x80000
	ldr r1, [r5, #4]
	adc r2, r2, #0
	mov r4, r3, lsr #0x14
	orr r4, r4, r2, lsl #12
	bl FUN_020552cc
	ldrh r3, [r0, #0x6a]
	umull r2, r1, r3, r6
	mov r0, r3, asr #0x1f
	mla r1, r0, r6, r1
	adds r2, r2, #0x80000
	adc r0, r1, #0
	mov r1, r2, lsr #0x14
	orr r1, r1, r0, lsl #12
	sub r0, r4, r1
	mov r1, #0xb4000
	cmp r0, #0xb4000
	rsbgt r0, r0, #0x168
	rsb r1, r1, #0
	cmp r0, r1
	ldr r1, [sp, #0x34]
	addlt r0, r0, #0x168
	strh r3, [sp]
	bl _s32_div_f
	ldr r1, _0214BB98 ; =0x0B60B60B
	mov r2, #0xb6
	umull r4, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r0, r4, #0
	adc r0, r3, #0x800
	mov r0, r0, asr #0xc
	strh r0, [sp]
	ldrh r1, [sp]
	ldr r0, [sp, #0x34]
	str r1, [r5, #0x20]
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0xa]
	orr r0, r0, #0x200
	strh r0, [r5, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0214BB94: .word unk_02099ED8
_0214BB98: .word 0x0B60B60B
	arm_func_end FUN_ov131_0214b9d0

	arm_func_start FUN_ov131_0214bb9c
FUN_ov131_0214bb9c: ; 0x0214BB9C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r6, r1
	mov r5, r3
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0214BC14 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	str r5, [sp]
	ldr r1, _0214BC18 ; =0x02099EC0
	ldrh r2, [r0, #0xa8]
	ldr r0, [r1]
	mov r1, r6
	mov r3, #0
	bl FUN_02056ed4
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x10
	strh r0, [r4, #0xa]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0214BC14: .word unk_02099ED8
_0214BC18: .word unk_02099EC0
	arm_func_end FUN_ov131_0214bb9c

	arm_func_start FUN_ov131_0214bc1c
FUN_ov131_0214bc1c: ; 0x0214BC1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov131_0214aabc
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0214BC78
	ldr r0, _0214BCA0 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r5
	mov r3, #3
	bl FUN_02055528
	ldrh r0, [r4, #0xa]
	orr r0, r0, #4
	strh r0, [r4, #0xa]
	b _0214BC90
_0214BC78:
	ldr r0, _0214BCA0 ; =0x02099ED8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r5
	mov r3, #4
	bl FUN_02055528
_0214BC90:
	ldrh r0, [r4, #0xa]
	orr r0, r0, #8
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_0214BCA0: .word unk_02099ED8
	arm_func_end FUN_ov131_0214bc1c

	arm_func_start FUN_ov131_0214bca4
FUN_ov131_0214bca4: ; 0x0214BCA4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov131_0214aabc
	cmp r0, #0
	beq _0214BCCC
	ldrh r0, [r0, #0xa]
	tst r0, #1
	ldmnefd sp!, {r3, pc}
_0214BCCC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov131_0214bca4

	arm_func_start FUN_ov131_0214bcd4
FUN_ov131_0214bcd4: ; 0x0214BCD4
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0
	movs r5, r1
	mov r4, r2
	moveq r0, r2
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r0, #0x660
	add r1, r0, #0x1000
	b _0214BD24
_0214BCF8:
	ldr r0, [r1]
	cmp r0, r5
	bne _0214BD1C
	ldrh r0, [r1, #0xa]
	tst r0, #1
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, r0
	b _0214BD2C
_0214BD1C:
	add r1, r1, #0x48
	add r2, r2, #1
_0214BD24:
	cmp r2, #0x20
	blt _0214BCF8
_0214BD2C:
	cmp r2, #0x20
	bne _0214BD78
	ldr r0, _0214BD80 ; =0x02099ED8
	mov r1, #1
	ldr r0, [r0]
	bl FUN_02055388
	mov r2, #0
	b _0214BD64
_0214BD4C:
	ldrh r1, [r0, #0x20]
	cmp r1, r5
	ldreqh r4, [r0, #0xa4]
	beq _0214BD6C
	add r0, r0, #0xd4
	add r2, r2, #1
_0214BD64:
	cmp r2, #0x18
	blt _0214BD4C
_0214BD6C:
	cmp r2, #0x18
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
_0214BD78:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0214BD80: .word unk_02099ED8
	arm_func_end FUN_ov131_0214bcd4

	arm_func_start FUN_ov131_0214bd84
FUN_ov131_0214bd84: ; 0x0214BD84
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	add r0, r0, #0x660
	mov r6, #0x48
	add r8, r0, #0x1000
	mov r7, r4
	mov r5, r6
_0214BDA0:
	mul r3, r4, r5
	ldr r0, [r8, r3]
	cmp r0, #0
	beq _0214BDC0
	mov r1, r7
	mov r2, r6
	add r0, r8, r3
	bl MI_CpuFill8
_0214BDC0:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0214BDA0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov131_0214bd84

	arm_func_start FUN_ov131_0214bdd0
FUN_ov131_0214bdd0: ; 0x0214BDD0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r11, r0
	add r0, r11, #0x1000
	ldr r6, [r0, #0x3e0]
	ldr r9, _0214C188 ; =0x02099ED8
	mov r7, #0
	b _0214C178
_0214BDF0:
	mov r0, #0x48
	mul r1, r7, r0
	add r0, r11, #0x660
	add r2, r0, #0x1000
	ldr r0, [r2, r1]
	add r4, r2, r1
	cmp r0, #0
	beq _0214C174
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_020552cc
	ldrh r1, [r4, #0xa]
	mov r5, r0
	tst r1, #0x10
	beq _0214BE4C
	ldr r0, _0214C18C ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_020571ac
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _0214C190 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_0214BE4C:
	ldrh r0, [r4, #0xa]
	tst r0, #8
	beq _0214BE90
	tst r0, #4
	bne _0214BE90
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_02055324
	ldr r2, _0214C18C ; =0x02099EC0
	mov r1, r0
	ldr r0, [r2]
	bl FUN_020577a4
	cmp r0, #0
	ldrneh r1, [r4, #0xa]
	ldrne r0, _0214C194 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r4, #0xa]
_0214BE90:
	ldrh r0, [r4, #0xa]
	tst r0, #0x100
	beq _0214BFC8
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _0214BEE0
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_02055b6c
	cmp r0, #0
	bne _0214BFC8
	ldrh r1, [r4, #0xa]
	ldr r0, _0214C198 ; =0x0000FEFF
	mov r2, #0x18
	and r0, r1, r0
	strh r0, [r4, #0xa]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_02055b8c
	b _0214BFC8
_0214BEE0:
	ldr r0, [r5, #0x84]
	mov r10, #0
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x88]
	add r8, sp, #0x38
	str r0, [sp, #0x3c]
	ldr r0, [r5, #0x8c]
	str r0, [sp, #0x40]
	b _0214BF30
_0214BF04:
	mov r0, r8
	mov r2, r8
	add r1, r4, #0x10
	bl VEC_Add
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xc]
	beq _0214BF38
	add r10, r10, #1
_0214BF30:
	cmp r10, r6
	blo _0214BF04
_0214BF38:
	ldrh r0, [r4, #0xc]
	ldr r8, _0214C188 ; =0x02099ED8
	mov r10, #0
	cmp r0, #0
	bne _0214BF9C
	ldrh r1, [r4, #0xa]
	ldr r0, _0214C198 ; =0x0000FEFF
	mov r2, #0x18
	and r0, r1, r0
	strh r0, [r4, #0xa]
	ldr r0, [r8]
	ldr r1, [r4, #4]
	bl FUN_02055b8c
	ldr r0, [sp, #0x3c]
	mov r1, #1
	str r0, [sp]
	ldr r2, [sp, #0x40]
	add r0, sp, #0x20
	stmib sp, {r2, r10}
	str r1, [sp, #0xc]
	str r10, [sp, #0x10]
	ldr r1, [r8]
	ldr r2, [r4, #4]
	ldr r3, [sp, #0x38]
	b _0214BFC4
_0214BF9C:
	ldr r0, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x40]
	stmib sp, {r0, r10}
	str r10, [sp, #0xc]
	str r10, [sp, #0x10]
	ldr r1, [r8]
	ldr r2, [r4, #4]
	ldr r3, [sp, #0x38]
	add r0, sp, #0x14
_0214BFC4:
	bl FUN_020555e8
_0214BFC8:
	ldrh r0, [r4, #0xa]
	tst r0, #0x200
	beq _0214C048
	ldrh r0, [r5, #0x6a]
	mov r10, #0
	str r0, [sp, #0x30]
	b _0214C010
_0214BFE4:
	ldrh r0, [r4, #0xe]
	ldr r2, [sp, #0x30]
	ldr r1, [r4, #0x20]
	sub r0, r0, #1
	add r1, r2, r1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	str r1, [sp, #0x30]
	strh r0, [r4, #0xe]
	beq _0214C018
	add r10, r10, #1
_0214C010:
	cmp r10, r6
	blo _0214BFE4
_0214C018:
	ldr r0, [sp, #0x30]
	ldr r1, [r4, #4]
	mov r2, r0, lsl #0x10
	ldr r0, [r9]
	mov r2, r2, lsr #0x10
	bl FUN_02055558
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _0214C19C ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_0214C048:
	ldrh r0, [r4, #0xa]
	tst r0, #0x400
	beq _0214C0D0
	mov r10, #0
	b _0214C088
_0214C05C:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	add r2, r1, r0
	str r2, [r4, #0x30]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	cmp r2, #0
	sub r0, r1, r0
	str r0, [r4, #0x2c]
	ble _0214C090
	add r10, r10, #1
_0214C088:
	cmp r10, r6
	blo _0214C05C
_0214C090:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bgt _0214C0B4
	ldrh r1, [r4, #0xa]
	ldr r0, _0214C1A0 ; =0x0000FBFF
	and r0, r1, r0
	strh r0, [r4, #0xa]
	mov r0, #0
	str r0, [r4, #0x30]
_0214C0B4:
	cmp r5, #0
	beq _0214C0D0
	mov r1, #0
	ldr r2, [r4, #0x30]
	mov r0, r5
	mov r3, r1
	bl FUN_02054340
_0214C0D0:
	ldrh r0, [r4, #0xa]
	tst r0, #0x800
	beq _0214C174
	mov r10, #0
	b _0214C110
_0214C0E4:
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x40]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0x40]
	beq _0214C118
	add r10, r10, #1
_0214C110:
	cmp r10, r6
	blo _0214C0E4
_0214C118:
	ldrh r0, [r4, #0x40]
	cmp r0, #0
	bne _0214C15C
	ldrh r2, [r4, #0xa]
	ldr r0, _0214C1A4 ; =0x0000F7FF
	mov r1, #0x1f000
	and r0, r2, r0
	strh r0, [r4, #0xa]
	str r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bge _0214C15C
	cmp r5, #0
	beq _0214C15C
	mov r0, r5
	mov r1, #0
	bl FUN_02054424
_0214C15C:
	cmp r5, #0
	beq _0214C174
	ldr r1, [r4, #0x38]
	mov r0, r5
	mov r1, r1, asr #0xc
	bl FUN_02054350
_0214C174:
	add r7, r7, #1
_0214C178:
	cmp r7, #0x20
	blt _0214BDF0
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C188: .word unk_02099ED8
_0214C18C: .word unk_02099EC0
_0214C190: .word 0x0000FFEF
_0214C194: .word 0x0000FFF7
_0214C198: .word 0x0000FEFF
_0214C19C: .word 0x0000FDFF
_0214C1A0: .word 0x0000FBFF
_0214C1A4: .word 0x0000F7FF
	arm_func_end FUN_ov131_0214bdd0

	arm_func_start FUN_ov131_0214c1a8
FUN_ov131_0214c1a8: ; 0x0214C1A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	add r0, r10, #0x1000
	ldr r0, [r0, #0x348]
	cmp r0, #0
	bne _0214C3C4
	ldr r0, _0214C478 ; =0x0209A200
	ldr r4, _0214C47C ; =0x02099F38
	ldr r2, [r0]
	ldr r0, [r4]
	mov r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	ldr r3, _0214C480 ; =0x0214CD2C
	mov r1, #5
	str r5, [sp, #8]
	bl FUN_02058684
	mov r1, r0
	add r0, r10, #0x1000
	str r1, [r0, #0x350]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r3, _0214C484 ; =0x0209A250
	str r5, [sp, #0x1c]
	ldr r0, [r3]
	ldr r1, _0214C488 ; =0x0214CD3C
	cmp r0, #0
	beq _0214C244
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x1c
	bl FUN_0202eff0
_0214C244:
	ldr r1, [sp, #0x1c]
	ldr r0, _0214C48C ; =0x0214CD58
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f3d08
	ldr r4, _0214C47C ; =0x02099F38
	mov r9, #0
	ldr r6, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r4]
	mov r5, #1
	str r9, [sp]
	stmib sp, {r5, r9}
	str r1, [sp, #0xc]
	ldr r2, _0214C490 ; =0x0214CD68
	mov r3, r9
	mov r1, #5
	str r6, [sp, #0x10]
	bl FUN_02058800
	mov r1, r0
	add r0, r10, #0x1000
	str r1, [r0, #0x354]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	ldr r0, _0214C484 ; =0x0209A250
	ldr r1, [sp, #0x1c]
	bl FUN_0202e1c0
	ldr r0, [r4]
	mov r1, #7
	mov r2, r5
	bl  FUN_ov16_02112724
	mov r1, r0
	add r0, r10, #0x1000
	ldr r2, [r0, #0x354]
	str r1, [r0, #0x35c]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	add r2, r10, #0x1000
	ldr r3, [r2, #0x350]
	ldr r1, [r2, #0x35c]
	ldr r0, [r4]
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, r9
	mov r3, r9
	bl  FUN_ov16_0211346c
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, #0x32
	bl  FUN_ov16_02112b98
	add r1, r10, #0x1000
	mov r6, #2
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_0211329c
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_021142fc
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, #8
	mov r3, #0x50
	bl  FUN_ov16_02114248
	add r6, r10, #0x1000
	mov r5, #0x16
	b _0214C3AC
_0214C384:
	mov r0, r9, lsl #3
	str r5, [sp]
	rsb r0, r0, #0x30
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r6, #0x35c]
	add r2, r9, #2
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add r9, r9, #1
_0214C3AC:
	cmp r9, #6
	blt _0214C384
	add r0, r10, #0x1000
	ldr r1, [r0, #0x348]
	add r1, r1, #1
	str r1, [r0, #0x348]
_0214C3C4:
	ldr r0, _0214C494 ; =0x0209BA20
	bl  FUN_ov16_020edf7c
	mov r9, #0
	mov r8, r0
	add r4, r10, #0x1000
	mov r7, r9
	ldr r6, _0214C47C ; =0x02099F38
	ldr r5, _0214C498 ; =0x66666667
	mov r11, #0xa
	b _0214C444
_0214C3EC:
	mov r0, r8, lsr #0x1f
	smull r1, r3, r5, r8
	str r7, [sp]
	add r3, r0, r3, asr #2
	smull r2, r0, r11, r3
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	sub r3, r8, r2
	add r2, r9, #2
	bl  FUN_ov16_0211401c
	cmp r8, #0
	bne _0214C430
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	mov r3, #2
	add r2, r9, #2
	bl  FUN_ov16_02113f7c
_0214C430:
	mov r1, r8
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #2
	add r9, r9, #1
_0214C444:
	cmp r9, #6
	blt _0214C3EC
	mov r1, #1
	ldr r0, _0214C47C ; =0x02099F38
	str r1, [sp]
	add r1, r10, #0x1000
	mov r2, #2
	ldr r0, [r0]
	ldr r1, [r1, #0x35c]
	mov r3, r2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C478: .word unk_0209A200
_0214C47C: .word unk_02099F38
_0214C480: .word ov131_0214CD2C
_0214C484: .word unk_0209A250
_0214C488: .word ov131_0214CD3C
_0214C48C: .word ov131_0214CD58
_0214C490: .word ov131_0214CD68
_0214C494: .word unk_0209BA20
_0214C498: .word 0x66666667
	arm_func_end FUN_ov131_0214c1a8

	arm_func_start FUN_ov131_0214c49c
FUN_ov131_0214c49c: ; 0x0214C49C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x348]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0214C510 ; =0x02099F38
	ldr r1, [r0, #0x35c]
	ldr r0, [r4]
	mov r2, #2
	bl  FUN_ov16_02114370
	add r1, r5, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	bl  FUN_ov16_021128c4
	add r0, r5, #0x1000
	ldr r1, [r0, #0x350]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x354]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x348
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0214C510: .word unk_02099F38
	arm_func_end FUN_ov131_0214c49c
_0214C514:
	.byte 0x01, 0x01, 0x0A, 0x02, 0x0B, 0x14, 0x03, 0x15, 0x1E, 0x04, 0x1F, 0x28
	.byte 0x05, 0x29, 0x32, 0x06, 0x33, 0x3C, 0x07, 0x3D, 0x46, 0x08, 0x47, 0x50, 0x09, 0x51, 0x5A, 0x0A
	.byte 0x5B, 0x64, 0x65, 0x01, 0x0A, 0x66, 0x0B, 0x14, 0x67, 0x15, 0x1E, 0x68, 0x1F, 0x28, 0x69, 0x29
	.byte 0x32, 0x6A, 0x33, 0x3C, 0x6B, 0x3D, 0x46, 0x6C, 0x47, 0x50, 0x6D, 0x51, 0x5A, 0x6E, 0x5B, 0x64

	arm_func_start FUN_ov131_0214c550
FUN_ov131_0214c550: ; 0x0214C550
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0214C594 ; =0x0214C820
	str r0, [r4, #0x10]
	ldr r0, _0214C598 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0214C59C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0214C594: .word ov131_0214C820
_0214C598: .word 0x00009CCD
_0214C59C: .word 0x0000EA3C
	arm_func_end FUN_ov131_0214c550

	arm_func_start FUN_ov131_0214c5a0
FUN_ov131_0214c5a0: ; 0x0214C5A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0214C5E8 ; =0x0214C84C
	str r0, [r4, #0x14]
	ldr r0, _0214C5EC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0214C5F0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0214C5E8: .word ov131_0214C84C
_0214C5EC: .word 0x00009CCD
_0214C5F0: .word 0x0000EA3C
	arm_func_end FUN_ov131_0214c5a0

	arm_func_start FUN_ov131_0214c5f4
FUN_ov131_0214c5f4: ; 0x0214C5F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0214C63C ; =0x0214C87C
	str r0, [r4]
	ldr r0, _0214C640 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _0214C644 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0214C63C: .word ov131_0214C87C
_0214C640: .word 0x00009CCD
_0214C644: .word 0x0000EA3C
	arm_func_end FUN_ov131_0214c5f4

	arm_func_start FUN_ov131_0214c648
FUN_ov131_0214c648: ; 0x0214C648
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0214C68C ; =0x0214C954
	str r0, [r4, #0x10]
	ldr r0, _0214C690 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0214C694 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0214C68C: .word ov131_0214C954
_0214C690: .word 0x00009CCD
_0214C694: .word 0x0000EA3C
	arm_func_end FUN_ov131_0214c648

	arm_func_start FUN_ov131_0214c698
FUN_ov131_0214c698: ; 0x0214C698
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0214C6E0 ; =0x0214C96C
	str r0, [r4, #0x14]
	ldr r0, _0214C6E4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0214C6E8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0214C6E0: .word ov131_0214C96C
_0214C6E4: .word 0x00009CCD
_0214C6E8: .word 0x0000EA3C
	arm_func_end FUN_ov131_0214c698

	arm_func_start FUN_ov131_0214c6ec
FUN_ov131_0214c6ec: ; 0x0214C6EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0214C734 ; =0x0214CA24
	str r0, [r4, #0x14]
	ldr r0, _0214C738 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0214C73C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0214C734: .word ov131_0214CA24
_0214C738: .word 0x00009CCD
_0214C73C: .word 0x0000EA3C
	arm_func_end FUN_ov131_0214c6ec

	arm_func_start FUN_ov131_0214c740
FUN_ov131_0214c740: ; 0x0214C740
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0214C784 ; =0x0214CA78
	str r0, [r4, #0x10]
	ldr r0, _0214C788 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0214C78C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0214C784: .word ov131_0214CA78
_0214C788: .word 0x00009CCD
_0214C78C: .word 0x0000EA3C
	arm_func_end FUN_ov131_0214c740

	arm_func_start FUN_ov131_0214c790
FUN_ov131_0214c790: ; 0x0214C790
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0214C7D4 ; =0x0214CD14
	str r0, [r4, #0x10]
	ldr r0, _0214C7D8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0214C7DC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0214C7D4: .word ov131_0214CD14
_0214C7D8: .word 0x00009CCD
_0214C7DC: .word 0x0000EA3C
	arm_func_end FUN_ov131_0214c790

	.section .sinit, 4
ov131_0214C7E0:
	.word FUN_ov131_0214c550
	.word FUN_ov131_0214c5a0
	.word FUN_ov131_0214c5f4
	.word FUN_ov131_0214c648
	.word FUN_ov131_0214c698
	.word FUN_ov131_0214c6ec
	.word FUN_ov131_0214c740
	.word FUN_ov131_0214c790

	.data
	.global ov131_0214C820
ov131_0214C820:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C838
ov131_0214C838:
	.byte 0x49, 0x54, 0x45, 0x4D, 0x5F, 0x53, 0x45, 0x4C
	.byte 0x4C, 0x5F, 0x50, 0x45, 0x52, 0x43, 0x45, 0x4E, 0x54, 0x00, 0x00, 0x00
	.global ov131_0214C84C
ov131_0214C84C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C864
ov131_0214C864:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x73, 0x68, 0x6F, 0x70, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov131_0214C87C
ov131_0214C87C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C894
ov131_0214C894:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C898
ov131_0214C898:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C89C
ov131_0214C89C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C8A0
ov131_0214C8A0:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C8A4
ov131_0214C8A4:
	.byte 0x4D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x20, 0x61, 0x6C, 0x6C, 0x6F, 0x63
	.byte 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x66, 0x61, 0x69, 0x6C, 0x75, 0x72, 0x65, 0x00, 0x00, 0x00
	.global ov131_0214C8C0
ov131_0214C8C0:
	.byte 0x4D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x20, 0x61, 0x6C, 0x6C, 0x6F, 0x63, 0x61, 0x74, 0x69, 0x6F
	.byte 0x6E, 0x20, 0x66, 0x61, 0x69, 0x6C, 0x75, 0x72, 0x65, 0x00, 0x00, 0x00
	.global ov131_0214C8DC
ov131_0214C8DC:
	.byte 0x83, 0x67, 0x83, 0x93
	.byte 0x83, 0x52, 0x83, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C8E8
ov131_0214C8E8:
	.byte 0x83, 0x47, 0x83, 0x89, 0x81, 0x5B, 0x00, 0x00
	.global ov131_0214C8F0
ov131_0214C8F0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x53
	.byte 0x63, 0x6F, 0x75, 0x74, 0x53, 0x70, 0x43, 0x6F, 0x64, 0x65, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00
	.global ov131_0214C910
ov131_0214C910:
	.byte 0x64, 0x65, 0x71, 0x75, 0x65, 0x3A, 0x3A, 0x20, 0x6C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x20, 0x65
	.byte 0x72, 0x72, 0x6F, 0x72, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C928
ov131_0214C928:
	.byte 0x63, 0x64, 0x65, 0x71, 0x75, 0x65, 0x20, 0x6C
	.byte 0x65, 0x6E, 0x67, 0x74, 0x68, 0x20, 0x65, 0x72, 0x72, 0x6F, 0x72, 0x00
	.global ov131_0214C93C
ov131_0214C93C:
	.byte 0x64, 0x65, 0x71, 0x75
	.byte 0x65, 0x3A, 0x3A, 0x20, 0x6C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x20, 0x65, 0x72, 0x72, 0x6F, 0x72
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C954
ov131_0214C954:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C96C
ov131_0214C96C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C984
ov131_0214C984:
	.byte 0x60, 0x2A, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x2F, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0x2F, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x2F, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0x33, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x34, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0x35, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x35, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214C9CC
ov131_0214C9CC:
	.byte 0x82, 0xB7, 0x82, 0xEA
	.byte 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2, 0x00, 0x00
	.global ov131_0214C9D8
ov131_0214C9D8:
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x83, 0x5F
	.byte 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00
	.global ov131_0214C9EC
ov131_0214C9EC:
	.byte 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00
	.global ov131_0214CA00
ov131_0214CA00:
	.byte 0x82, 0xB7, 0x82, 0xEA, 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2, 0x00, 0x00
	.global ov131_0214CA0C
ov131_0214CA0C:
	.byte 0x82, 0xB7, 0x82, 0xEA
	.byte 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2, 0x00, 0x00
	.global ov131_0214CA18
ov131_0214CA18:
	.byte 0x82, 0xB7, 0x82, 0xEA, 0x82, 0xBF, 0x82, 0xAA
	.byte 0x82, 0xA2, 0x00, 0x00
	.global ov131_0214CA24
ov131_0214CA24:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CA3C
ov131_0214CA3C:
	.byte 0x32, 0x44, 0x5F, 0x30
	.byte 0x30, 0x32, 0x00, 0x00
	.global ov131_0214CA44
ov131_0214CA44:
	.byte 0x6F, 0x70, 0x65, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CA4C
ov131_0214CA4C:
	.byte 0x6F, 0x70, 0x65, 0x6E
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CA54
ov131_0214CA54:
	.byte 0x6F, 0x70, 0x65, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CA5C
ov131_0214CA5C:
	.byte 0x6F, 0x70, 0x65, 0x6E
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CA64
ov131_0214CA64:
	.byte 0x67, 0x6C, 0x6F, 0x62, 0x61, 0x6C, 0x6D, 0x61, 0x70, 0x00, 0x00, 0x00
	.global ov131_0214CA70
ov131_0214CA70:
	.byte 0x82, 0xCD, 0x82, 0xA2, 0x82, 0xB5, 0x00, 0x00
	.global ov131_0214CA78
ov131_0214CA78:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CA90
ov131_0214CA90:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x2F
	.byte 0x74, 0x72, 0x65, 0x61, 0x73, 0x75, 0x72, 0x65, 0x62, 0x6F, 0x78, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov131_0214CAB0
ov131_0214CAB0:
	.byte 0x25, 0x73, 0x6F, 0x62, 0x6A, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov131_0214CABC
ov131_0214CABC:
	.byte 0x6D, 0x6F, 0x00, 0x00
	.global ov131_0214CAC0
ov131_0214CAC0:
	.byte 0x6D, 0x6F, 0x25, 0x30, 0x34, 0x64, 0x00, 0x00
	.global ov131_0214CAC8
ov131_0214CAC8:
	.byte 0x6D, 0x6F, 0x25, 0x30, 0x34, 0x64, 0x00, 0x00
	.global ov131_0214CAD0
ov131_0214CAD0:
	.byte 0x6D, 0x6F, 0x25, 0x30, 0x34, 0x64, 0x00, 0x00
	.global ov131_0214CAD8
ov131_0214CAD8:
	.byte 0x82, 0xB1, 0x82, 0xCC, 0x83, 0x67, 0x83, 0x72
	.byte 0x83, 0x89, 0x82, 0xCC, 0x83, 0x4A, 0x83, 0x4D, 0x82, 0xF0, 0x82, 0xE0, 0x82, 0xC1, 0x82, 0xC4
	.byte 0x82, 0xC8, 0x82, 0xA2, 0x82, 0xE6, 0x82, 0xA4, 0x82, 0xBE, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CB00
ov131_0214CB00:
	.byte 0x32, 0x44, 0x5F, 0x30, 0x30, 0x32, 0x00, 0x00
	.global ov131_0214CB08
ov131_0214CB08:
	.byte 0x6F, 0x70, 0x65, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CB10
ov131_0214CB10:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x2F
	.byte 0x74, 0x72, 0x65, 0x61, 0x73, 0x75, 0x72, 0x65, 0x62, 0x6F, 0x78, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov131_0214CB30
ov131_0214CB30:
	.byte 0x6F, 0x70, 0x65, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CB38
ov131_0214CB38:
	.byte 0x49, 0x5A, 0x5F, 0x54, 0x59, 0x50, 0x45, 0x00
	.global ov131_0214CB40
ov131_0214CB40:
	.byte 0x82, 0xCC, 0x25, 0x33, 0x46, 0x94, 0xE9, 0x93, 0x60, 0x8F, 0x91, 0x00
	.global ov131_0214CB4C
ov131_0214CB4C:
	.byte 0x82, 0xD0, 0x82, 0xC5
	.byte 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE5, 0x00, 0x00
	.global ov131_0214CB58
ov131_0214CB58:
	.byte 0x0A, 0x82, 0xCC, 0x83, 0x74, 0x83, 0x48, 0x81
	.byte 0x5B, 0x83, 0x81, 0x81, 0x5B, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x83, 0x4A, 0x81, 0x5B, 0x83
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov131_0214CB74
ov131_0214CB74:
	.byte 0x0A, 0x82, 0xCC, 0x83, 0x6F, 0x83, 0x67, 0x83, 0x8B, 0x83, 0x4A, 0x81
	.byte 0x5B, 0x83, 0x68, 0x00
	.global ov131_0214CB84
ov131_0214CB84:
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov131_0214CB88
ov131_0214CB88:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov131_0214CB8C
ov131_0214CB8C:
	.byte 0x25, 0x32, 0x46, 0x94
	.byte 0x4D, 0x8C, 0x8C, 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67, 0x00
	.global ov131_0214CB9C
ov131_0214CB9C:
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov131_0214CBA0
ov131_0214CBA0:
	.byte 0x82, 0xCB, 0x82, 0xC1, 0x82, 0xAF, 0x82, 0xC2, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CBAC
ov131_0214CBAC:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov131_0214CBB0
ov131_0214CBB0:
	.byte 0x25, 0x32, 0x46, 0x97, 0x46, 0x8F, 0xEE, 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67, 0x00
	.global ov131_0214CBC0
ov131_0214CBC0:
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov131_0214CBC4
ov131_0214CBC4:
	.byte 0x82, 0xE4, 0x82, 0xA4, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x00, 0x00
	.global ov131_0214CBD0
ov131_0214CBD0:
	.byte 0x82, 0xF0, 0x25, 0x31, 0x46, 0x8E, 0xE8, 0x82, 0xC9, 0x25, 0x31, 0x46, 0x93, 0xFC, 0x82, 0xEA
	.byte 0x82, 0xBD, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CBE8
ov131_0214CBE8:
	.byte 0x82, 0xC4, 0x00, 0x00
	.global ov131_0214CBEC
ov131_0214CBEC:
	.byte 0x82, 0xA2, 0x00, 0x00
	.global ov131_0214CBF0
ov131_0214CBF0:
	.byte 0x25, 0x31, 0x46, 0x8B, 0xF3, 0x82, 0xC1, 0x82, 0xDB, 0x82, 0xBE, 0x82, 0xC1, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov131_0214CC04
ov131_0214CC04:
	.byte 0x82, 0xA9, 0x82, 0xE7, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CC0C
ov131_0214CC0C:
	.byte 0x82, 0xC7, 0x82, 0xB1
	.byte 0x82, 0xA9, 0x82, 0xC5, 0x25, 0x31, 0x46, 0x94, 0xE0, 0x82, 0xAA, 0x25, 0x31, 0x46, 0x8A, 0x4A
	.byte 0x82, 0xA2, 0x82, 0xBD, 0x82, 0xE6, 0x82, 0xA4, 0x82, 0xBE, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CC30
ov131_0214CC30:
	.byte 0x82, 0xC6, 0x82, 0xD1, 0x82, 0xE7, 0x00, 0x00
	.global ov131_0214CC38
ov131_0214CC38:
	.byte 0x82, 0xD0, 0x82, 0xE7, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CC40
ov131_0214CC40:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov131_0214CC44
ov131_0214CC44:
	.byte 0x82, 0xCB, 0x82, 0xC1, 0x82, 0xAF, 0x82, 0xC2, 0x82, 0x6F, 0x81, 0x40
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CC54
ov131_0214CC54:
	.byte 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CC60
ov131_0214CC60:
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov131_0214CC64
ov131_0214CC64:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov131_0214CC68
ov131_0214CC68:
	.byte 0x82, 0xE4, 0x82, 0xA4, 0x82, 0xB6, 0x82, 0xE5
	.byte 0x82, 0xA4, 0x82, 0x6F, 0x81, 0x40, 0x00, 0x00
	.global ov131_0214CC78
ov131_0214CC78:
	.byte 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CC84
ov131_0214CC84:
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov131_0214CC88
ov131_0214CC88:
	.byte 0x82, 0xF0, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xC8
	.byte 0x82, 0xC1, 0x82, 0xBD, 0x81, 0x49, 0x00, 0x00
	.global ov131_0214CC98
ov131_0214CC98:
	.byte 0x81, 0x40, 0x82, 0xAA, 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x82, 0xF0, 0x82, 0xB3, 0x82, 0xE9, 0x82, 0xB1, 0x82, 0xC6, 0x82, 0xC9, 0x82, 0xC8
	.byte 0x82, 0xC1, 0x82, 0xBD, 0x81, 0x42, 0x0A, 0x00
	.global ov131_0214CCB8
ov131_0214CCB8:
	.byte 0x25, 0x32, 0x46, 0x91, 0x49, 0x8E, 0xE8, 0x83
	.byte 0x6F, 0x83, 0x43, 0x83, 0x93, 0x83, 0x5F, 0x81, 0x5B, 0x83, 0x52, 0x83, 0x93, 0x83, 0x76, 0x83
	.byte 0x8A, 0x81, 0x5B, 0x83, 0x67, 0x81, 0x49, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CCDC
ov131_0214CCDC:
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov131_0214CCE0
ov131_0214CCE0:
	.byte 0x82, 0xF0, 0x25, 0x31, 0x46, 0x8E, 0xE8, 0x82, 0xC9, 0x25, 0x31, 0x46, 0x93, 0xFC, 0x82, 0xEA
	.byte 0x82, 0xBD, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CCF8
ov131_0214CCF8:
	.byte 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CD04
ov131_0214CD04:
	.byte 0x82, 0xC4, 0x00, 0x00
	.global ov131_0214CD08
ov131_0214CD08:
	.byte 0x82, 0xA2, 0x00, 0x00
	.global ov131_0214CD0C
ov131_0214CD0C:
	.byte 0x4A, 0x31, 0x32, 0x2E
	.byte 0x53, 0x41, 0x44, 0x00
	.global ov131_0214CD14
ov131_0214CD14:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CD2C
ov131_0214CD2C:
	.byte 0x79, 0x64, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov131_0214CD3C
ov131_0214CD3C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x73, 0x63, 0x6F, 0x75, 0x74
	.byte 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov131_0214CD58
ov131_0214CD58:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov131_0214CD68
ov131_0214CD68:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x73, 0x63, 0x6F, 0x75, 0x74, 0x2E, 0x53, 0x50, 0x44
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov131_0214CDA0
ov131_0214CDA0:
	.space 0x04
	.global ov131_0214CDA4
ov131_0214CDA4:
	.space 0x04
	.global ov131_0214CDA8
ov131_0214CDA8:
	.space 0x04
	.global ov131_0214CDAC
ov131_0214CDAC:
	.space 0x04
	.global ov131_0214CDB0
ov131_0214CDB0:
	.space 0x10

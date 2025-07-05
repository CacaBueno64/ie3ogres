
	.include "/macros/function.inc"
	.include "/include/overlay108.inc"

	.text
	arm_func_start FUN_ov108_02124d00
FUN_ov108_02124d00: ; 0x02124D00
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r5, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #8]
	cmp r0, #0
	cmpne r0, #1
	beq _02124D30
	sub r0, r0, #3
	cmp r0, #2
	bhi _02124D38
_02124D30:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02124D38:
	ldr r1, [r5, #0x14]
	ldr r0, [r4]
	cmp r1, r0
	beq _02124DAC
	cmp r1, #2
	bhi _02124DAC
	ldr r0, [r4]
	mov r1, #7
	str r0, [r5, #0x14]
	ldrh r2, [r4, #4]
	mov r0, #4
	strh r2, [r5, #0x18]
	ldr r2, [r4, #8]
	str r2, [r5, #0x1c]
	ldrh r2, [r4, #0xc]
	strh r2, [r5, #0x20]
	ldrh r2, [r4, #0xe]
	strh r2, [r5, #0x22]
	ldrb r2, [r4, #0x10]
	strb r2, [r5, #0x24]
	ldr r2, [r4, #0x14]
	str r2, [r5, #0x28]
	ldrb r2, [r4, #0x18]
	strb r2, [r5, #0x2c]
	str r1, [r5, #8]
	bl  FUN_ov16_020f1528
	mov r0, #1
	strb r0, [r5, #0x11]
	ldmfd sp!, {r4, r5, r6, pc}
_02124DAC:
	ldrb r1, [r5, #0x24]
	ldrb r0, [r4, #0x10]
	cmp r1, r0
	ldreqh r1, [r5, #0x18]
	ldreqh r0, [r4, #4]
	cmpeq r1, r0
	ldreqh r1, [r5, #0x20]
	ldreqh r0, [r4, #0xc]
	cmpeq r1, r0
	ldreqh r1, [r5, #0x22]
	ldreqh r0, [r4, #0xe]
	cmpeq r1, r0
	ldreq r1, [r5, #0x1c]
	ldreq r0, [r4, #8]
	cmpeq r1, r0
	bne _02124DF8
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _02124E84
_02124DF8:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02124E1C
	mov r6, #0
	mov r1, r6
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, pc}
_02124E1C:
	mov r1, #0
	ldr r0, [r4]
	strb r1, [r4, #0x18]
	str r0, [r5, #0x14]
	ldrh r1, [r4, #4]
	mov r0, r5
	strh r1, [r5, #0x18]
	ldr r1, [r4, #8]
	str r1, [r5, #0x1c]
	ldrh r1, [r4, #0xc]
	strh r1, [r5, #0x20]
	ldrh r1, [r4, #0xe]
	strh r1, [r5, #0x22]
	ldrb r1, [r4, #0x10]
	strb r1, [r5, #0x24]
	ldr r1, [r4, #0x14]
	str r1, [r5, #0x28]
	ldrb r1, [r4, #0x18]
	strb r1, [r5, #0x2c]
	bl FUN_ov108_021252ac
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov108_021251b8
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02124E84:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov108_02124d00

	arm_func_start FUN_ov108_02124e8c
FUN_ov108_02124e8c: ; 0x02124E8C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	ldrne r1, [r4, #0x144]
	cmpne r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02124EC8 ; =0x02099F04
	ldr r2, [r2]
	bl  FUN_ov16_020f0c30 ; may be ov17
	ldmfd sp!, {r4, pc}
_02124EC8: .word unk_02099F04
	arm_func_end FUN_ov108_02124e8c

	arm_func_start FUN_ov108_02124ecc
FUN_ov108_02124ecc: ; 0x02124ECC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x15c
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _02124F20 ; =0x02127438
	add r1, r4, #0x180
	bl  FUN_ov16_020f316c
	ldr r0, _02124F24 ; =0x02127454
	add r1, r4, #0x15c
	bl  FUN_ov16_020f316c
	ldr r0, _02124F28 ; =0x0212746C
	add r1, r4, #0x168
	bl  FUN_ov16_020f316c
	ldr r0, _02124F2C ; =0x02127484
	add r1, r4, #0x174
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124F20: .word ov108_02127438
_02124F24: .word ov108_02127454
_02124F28: .word ov108_0212746C
_02124F2C: .word ov108_02127484
	arm_func_end FUN_ov108_02124ecc

	arm_func_start FUN_ov108_02124f30
FUN_ov108_02124f30: ; 0x02124F30
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x15c
	mov r1, #4
	bl  FUN_ov16_020f338c
	add r5, r4, #0x15c
	mov r6, #0
	mov r4, #0xc
_02124F50:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #4
	blt _02124F50
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov108_02124f30

	arm_func_start FUN_ov108_02124f68
FUN_ov108_02124f68: ; 0x02124F68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	ldr r5, _0212500C ; =0x02126DA8
	add r4, sp, #0
	mov lr, r0
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
	ldr r12, _02125010 ; =0x02126DD0
	add r5, sp, #0x28
	mov r4, #6
_02124FA0:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02124FA0
	ldr r7, [lr, #0x84]
	cmp r7, #0
	addeq sp, sp, #0x88
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [lr, #0x14]
	add r6, sp, #0
	cmp r0, #1
	addne r6, sp, #0x28
	ldr r0, [r6]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, lr, #0x78
	mov r4, #0xc
_02124FE8:
	ldr r3, [r6, #4]
	mov r2, r7
	mla r1, r3, r4, r5
	bl  FUN_ov16_020f32b4
	ldr r0, [r6, #8]!
	cmp r0, #0
	bne _02124FE8
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212500C: .word 0x02126DA8
_02125010: .word 0x02126DD0
	arm_func_end FUN_ov108_02124f68

	arm_func_start FUN_ov108_02125014
FUN_ov108_02125014: ; 0x02125014
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldrh r0, [r6, #0x18]
	mov r7, #0
	mov r1, r7
	bl  FUN_ov16_020efa9c
	movs r4, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl  FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _02125158 ; =0x0209BA20
	bl FUN_0207249c
	mov r8, r0
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02125098
	add r5, sp, #8
	add r3, sp, #0xc
	mov r1, r4
	mov r2, r7
	str r5, [sp]
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _02125098
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _0212515C ; =0x0212749C
	add r1, r6, #0x12c
	bl  FUN_ov16_020f31fc
_02125098:
	ldrh r1, [r8, #0x28]
	mov r0, r4
	cmp r1, #0
	ldreqh r1, [r8, #0x26]
	bl  FUN_ov16_020f0b3c
	mov r5, r0
	ldr r0, [r6, #0x168]
	cmp r0, #0
	beq _02125100
	add r1, sp, #0xc
	str r1, [sp]
	add r12, sp, #8
	mov r1, r4
	mov r2, r5
	mov r3, #0
	str r12, [sp, #4]
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _02125100
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02125160 ; =0x021274B4
	add r1, r6, #0x138
	bl  FUN_ov16_020f31fc
_02125100:
	ldr r0, [r6, #0x174]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	add r12, sp, #8
	add r3, sp, #0xc
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	bl  FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02125164 ; =0x021274CC
	add r1, r6, #0x144
	bl  FUN_ov16_020f31fc
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125158: .word unk_0209BA20
_0212515C: .word ov108_0212749C
_02125160: .word ov108_021274B4
_02125164: .word ov108_021274CC
	arm_func_end FUN_ov108_02125014

	arm_func_start FUN_ov108_02125168
FUN_ov108_02125168: ; 0x02125168
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #0x18]
	mov r4, #0
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	str r4, [sp]
	ldrh r2, [r0, #0x66]
	ldr r0, _021251B4 ; =0x021274E4
	add r1, r5, #0x150
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
	ldmfd sp!, {r3, r4, r5, pc}
_021251B4: .word ov108_021274E4
	arm_func_end FUN_ov108_02125168

	arm_func_start FUN_ov108_021251b8
FUN_ov108_021251b8: ; 0x021251B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _021251D8
	cmp r1, #2
	beq _02125278
	b _02125290
_021251D8:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x78
	mov r2, #0xe4
	bl MI_CpuFill8
	ldr r5, _0212529C ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _021252A0 ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02125274
	cmp r0, #1
	beq _02125250
	cmp r0, #2
	beq _02125260
	b _02125274
_02125250:
	ldr r0, _021252A4 ; =0x02127500
	add r1, r4, #0x84
	bl  FUN_ov16_020f316c
	b _02125274
_02125260:
	ldr r0, _021252A8 ; =0x02127524
	add r1, r4, #0x84
	bl  FUN_ov16_020f316c
	mov r0, r4
	bl FUN_ov108_02125168
_02125274:
	b _02125288
_02125278:
	ldr r1, [r4, #0x14]
	cmp r1, #2
	bne _02125288
	bl FUN_ov108_02125014
_02125288:
	mov r0, #1
	strb r0, [r4, #0x11]
_02125290:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212529C: .word unk_020A8C40
_021252A0: .word unk_020A8440
_021252A4: .word ov108_02127500
_021252A8: .word ov108_02127524
	arm_func_end FUN_ov108_021251b8

	arm_func_start FUN_ov108_021252ac
FUN_ov108_021252ac: ; 0x021252AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x78
	mov r1, #0x13
	bl  FUN_ov16_020f338c
	add r5, r4, #0x78
	mov r6, #0
	mov r4, #0xc
_021252CC:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x13
	blt _021252CC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov108_021252ac

	arm_func_start FUN_ov108_021252e4
FUN_ov108_021252e4: ; 0x021252E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02125314
	ldr r0, _0212537C ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_02125314:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02125330
	ldr r0, _0212537C ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_02125330:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02125368
_02125350:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02125350
_02125368:
	ldr r1, [r4, #4]
	mov r2, r5, lsl #5
	mov r0, #0
	bl MIi_CpuClear32
	ldmfd sp!, {r3, r4, r5, pc}
_0212537C: .word unk_0209A250
	arm_func_end FUN_ov108_021252e4

	arm_func_start FUN_ov108_02125380
FUN_ov108_02125380: ; 0x02125380
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x3c
	add r4, r0, #0x30
	mov r3, #0xc
	mla r8, r1, r3, r4
	mov r9, r2
	mov r1, r8
	mov r2, #0x14
	mov r3, #4
	bl FUN_ov108_021252e4
	ldr r0, [r8, #4]
	cmp r0, #0
	cmpne r9, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r7, sp, #0x1c
	mov r2, r9
	mov r0, r7
	add r1, r9, #0x2c
	bl FUN_0204378c
	mov r6, #3
	str r6, [sp]
	mov r5, #1
	str r5, [sp, #4]
	ldr r0, [r8, #4]
	mov r4, #0
	str r0, [sp, #8]
	ldrh r2, [r8, #8]
	mov r3, r7
	ldr r0, _0212549C ; =0x02099ED0
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r12, [r8, #0xa]
	mov r1, r4
	mov r2, r6
	mov r7, r12, lsl #3
	str r7, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r0]
	ldr r7, [r0]
	ldr r7, [r7, #8]
	blx r7
	str r6, [sp]
	str r5, [sp, #4]
	ldr r1, [r8, #4]
	ldr r0, _021254A0 ; =0x02099F50
	str r1, [sp, #8]
	ldrh r2, [r8, #8]
	mov r1, r4
	mov r3, r9
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r5, [r8, #0xa]
	mov r2, #0xe
	mov r5, r5, lsl #3
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldrh r2, [r8, #8]
	ldrh r1, [r8, #0xa]
	ldr r0, [r8, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0212549C: .word unk_02099ED0
_021254A0: .word unk_02099F50
	arm_func_end FUN_ov108_02125380

	arm_func_start FUN_ov108_021254a4
FUN_ov108_021254a4: ; 0x021254A4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	add r2, r6, #0x30
	mov r7, #0xc
	mla r5, r1, r7, r2
	mov r1, r5
	mov r2, #0x1e
	mov r3, #6
	bl FUN_ov108_021252e4
	ldr r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrh r0, [r6, #0x18]
	mov r4, #0
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq _02125550
	ldrb r0, [r6, #0x24]
	cmp r0, #1
	bne _02125550
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r2, [r5, #8]
	ldrh r3, [r5, #0xa]
	ldr r1, [r5, #4]
	ldr r0, _021255C8 ; =0x02127548
	b _0212559C
_02125550:
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _021255A8
	mov r1, #3
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xc
	str r1, [sp, #0x10]
	mov r1, #4
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrh r2, [r5, #8]
	ldrh r3, [r5, #0xa]
	ldr r1, [r5, #4]
_0212559C:
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
_021255A8:
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #0xa]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_021255C8: .word ov108_02127548
	arm_func_end FUN_ov108_021254a4

	arm_func_start FUN_ov108_021255cc
FUN_ov108_021255cc: ; 0x021255CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r7, r0
	add r3, r7, #0x30
	mov r0, #0xc
	mla r5, r1, r0, r3
	mov r0, #0
	add r6, sp, #0x1c
	mov r8, r2
	mov r4, r0
_021255F4:
	str r4, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #3
	blo _021255F4
	mov r0, r7
	mov r1, r5
	mov r2, #0x10
	mov r3, #5
	bl FUN_ov108_021252e4
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _02125634
	add r0, sp, #0x1c
	bl FUN_0202895c
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125634:
	cmp r8, #0
	bne _0212564C
	add r0, sp, #0x1c
	bl FUN_0202895c
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212564C:
	ldrb r0, [r8, #0x4d]
	cmp r0, #1
	bne _021256C0
	ldr r1, _02125740 ; =0x02127584
	mov r0, r6
	bl FUN_ov108_02126d2c
	ldr r0, [sp, #0x1c]
	mov r1, #0
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r3, r6, #1
	ldrne r3, [sp, #0x24]
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r2, #4
	str r0, [sp, #8]
	ldrh r4, [r5, #8]
	ldr r0, _02125744 ; =0x02099F50
	mov r4, r4, lsl #3
	str r4, [sp, #0xc]
	ldrh r4, [r5, #0xa]
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	b _02125708
_021256C0:
	ldr r3, [r7, #0x28]
	cmp r3, #0
	beq _02125718
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	stmib sp, {r0, r1}
	ldrh r2, [r5, #8]
	ldr r0, _02125744 ; =0x02099F50
	mov r1, r4
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r6, [r5, #0xa]
	mov r2, #4
	mov r6, r6, lsl #3
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
_02125708:
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
_02125718:
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #0xa]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add r0, sp, #0x1c
	bl FUN_0202895c
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125740: .word ov108_02127584
_02125744: .word unk_02099F50
	arm_func_end FUN_ov108_021255cc

	arm_func_start FUN_ov108_02125748
FUN_ov108_02125748: ; 0x02125748
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	ldr r7, _021258A4 ; =0x021272D0
	mov r12, r0
	mov r8, r1
	mov r6, r2
	ldmia r7!, {r0, r1, r2, r3}
	add lr, sp, #0x28
	stmia lr!, {r0, r1, r2, r3}
	ldr r0, [r7]
	add r5, r12, #0x30
	mov r4, #0xc
	mla r4, r8, r4, r5
	mov r1, #0
	str r0, [lr]
	add r5, sp, #0x1c
	mov r0, r1
_0212578C:
	str r0, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _0212578C
	mov r0, r12
	mov r1, r4
	mov r2, #3
	mov r3, #2
	bl FUN_ov108_021252e4
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021257CC
	add r0, sp, #0x1c
	bl FUN_0202895c
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021257CC:
	cmp r6, #0
	bne _021257E4
	add r0, sp, #0x1c
	bl FUN_0202895c
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021257E4:
	mov r0, r6
	bl FUN_0206cd70
	cmp r0, #0
	blt _021257FC
	cmp r0, #4
	ble _02125800
_021257FC:
	mov r0, #0
_02125800:
	add r1, sp, #0x28
	ldr r1, [r1, r0, lsl #2]
	mov r0, r5
	bl FUN_ov108_02126d2c
	ldr r0, [sp, #0x1c]
	mov r1, #6
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r3, r5, #1
	ldrne r3, [sp, #0x24]
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	mov r5, #0
	str r0, [sp, #8]
	ldrh r2, [r4, #8]
	ldr r0, _021258A8 ; =0x02099ED0
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r6, [r4, #0xa]
	mov r2, #4
	mov r6, r6, lsl #3
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, [r0]
	ldr r5, [r0]
	ldr r5, [r5, #8]
	blx r5
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add r0, sp, #0x1c
	bl FUN_0202895c
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021258A4: .word ov108_021272D0
_021258A8: .word unk_02099ED0
	arm_func_end FUN_ov108_02125748

	arm_func_start FUN_ov108_021258ac
FUN_ov108_021258ac: ; 0x021258AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x118
	ldr r3, _02125CE0 ; =0x0209C220
	ldr r4, _02125CE4 ; =0x0209BA20
	ldrh r6, [r3, #0x6a]
	ldr r4, [r4, #0x7ec]
	ldr r10, _02125CE8 ; =0x021272E4
	add r9, sp, #0x74
	mov r8, r0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldmia r10!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	mov r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldmia r10!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	ldmia r10, {r0, r1, r2, r3}
	stmia r9, {r0, r1, r2, r3}
	ldr lr, _02125CEC ; =0x02127350
	mov r5, r7
	add r12, sp, #0xa4
	mov r11, #7
_02125910:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r11, r11, #1
	bne _02125910
	ldr r9, [lr]
	ldr r11, _02125CF0 ; =0x02127314
	add r10, sp, #0x38
	ldmia r11!, {r0, r1, r2, r3}
	stmia r10!, {r0, r1, r2, r3}
	str r9, [r12]
	ldr r0, [sp, #0x1c]
	add r2, r8, #0x30
	mov r1, #0xc
	mla r9, r0, r1, r2
	ldmia r11!, {r0, r1, r2, r3}
	stmia r10!, {r0, r1, r2, r3}
	ldmia r11!, {r0, r1, r2, r3}
	stmia r10!, {r0, r1, r2, r3}
	ldmia r11, {r0, r1, r2}
	ldr r12, _02125CF4 ; =0x02126FF0
	stmia r10, {r0, r1, r2}
	add lr, sp, #0x2c
	ldmia r12, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	mov r3, #6
	mov r0, r8
	mov r1, r9
	mov r2, #0xb
	bl FUN_ov108_021252e4
	ldr r0, [r9, #4]
	cmp r0, #0
	ldrne r1, [sp, #0x20]
	cmpne r1, #0
	addeq sp, sp, #0x118
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	mov r2, #0
	ble _02125A08
	ldrh r3, [r8, #0x18]
_021259AC:
	ldrh r1, [r4, #0x24]
	cmp r3, r1
	bne _021259F8
	ldrb r3, [r4, #0x2b]
	tst r3, #4
	movne r1, #1
	strne r1, [sp, #0x28]
	moveq r1, #0
	streq r1, [sp, #0x28]
	tst r3, #8
	movne r1, #1
	strne r1, [sp, #0x24]
	moveq r1, #0
	streq r1, [sp, #0x24]
	ldrb r5, [r4, #0x28]
	ldrb r7, [r4, #0x26]
	cmp r5, #0x1c
	movhi r5, #0
	b _02125A08
_021259F8:
	add r2, r2, #1
	cmp r2, r6
	add r4, r4, #0x2c
	blt _021259AC
_02125A08:
	cmp r2, r6
	mov r4, #1
	addge sp, sp, #0x118
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x28]
	mov r2, #0xa
	cmp r1, #0
	movne r2, #0
	bne _02125AB4
	ldr r1, [sp, #0x24]
	cmp r1, #0
	movne r2, r4
	bne _02125AB4
	cmp r7, #0xff
	moveq r2, #2
	beq _02125AB4
	cmp r7, #0xfe
	moveq r2, #3
	beq _02125AB4
	cmp r7, #0xfd
	moveq r2, #4
	beq _02125AB4
	cmp r7, #0xfc
	moveq r2, #5
	beq _02125AB4
	cmp r7, #0xc9
	moveq r2, #6
	beq _02125AB4
	cmp r7, #0xbf
	blo _02125A8C
	cmp r7, #0xc8
	movls r2, #7
	bls _02125AB4
_02125A8C:
	cmp r7, #0xb
	blo _02125AA0
	cmp r7, #0xbe
	movls r2, #8
	bls _02125AB4
_02125AA0:
	cmp r7, #0xa
	moveq r2, #9
	beq _02125AB4
	cmp r7, #0xfa
	moveq r2, #0xb
_02125AB4:
	mov r10, #1
	cmp r2, #8
	movne r10, #0
	mov r6, #0
	mov r8, r6
	cmp r10, #0
	beq _02125B58
	mov r1, r6
	mov r3, #0xa
_02125AD8:
	mul r12, r1, r3
	add r11, r12, #0xb
	cmp r7, r11
	add r11, r12, #0x13
	blt _02125AF8
	cmp r7, r11
	movle r6, r1
	ble _02125B04
_02125AF8:
	add r1, r1, #1
	cmp r1, #0xf
	blt _02125AD8
_02125B04:
	ldr r12, _02125CF8 ; =0x66666667
	mov r3, r7, lsr #0x1f
	smull r11, r1, r12, r7
	add r1, r3, r1, asr #2
	mov r11, #0xa
	smull r1, r3, r11, r1
	sub r1, r7, r1
	cmp r1, #1
	blt _02125B34
	cmp r1, #3
	movle r8, #0
	ble _02125B58
_02125B34:
	cmp r1, #4
	blt _02125B48
	cmp r1, #6
	movle r8, #1
	ble _02125B58
_02125B48:
	cmp r1, #7
	blt _02125B58
	cmp r1, #9
	movle r8, #2
_02125B58:
	mov r1, #3
	stmia sp, {r1, r4}
	str r0, [sp, #8]
	ldrh r0, [r9, #8]
	mov r1, #0
	ldr r7, _02125CFC ; =0x02099ED0
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0xa]
	add r3, sp, #0x74
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	mov r0, r1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r7]
	ldr r3, [r3, r2, lsl #2]
	ldr r11, [r0]
	mov r2, #3
	ldr r11, [r11, #8]
	blx r11
	mov r0, #3
	stmia sp, {r0, r4}
	ldr r0, [r9, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldrh r0, [r9, #8]
	add r3, sp, #0xa4
	mov r2, #0xe
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	mov r0, r1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r7]
	ldr r3, [r3, r5, lsl #2]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	cmp r10, #0
	addne r0, sp, #0x38
	ldrne r3, [r0, r6, lsl #2]
	mov r0, #3
	str r0, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r9, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldrh r5, [r9, #8]
	ldr r0, _02125CFC ; =0x02099ED0
	ldreq r3, _02125D00 ; =0x02127588
	mov r5, r5, lsl #3
	str r5, [sp, #0xc]
	ldrh r5, [r9, #0xa]
	mov r2, #0x19
	mov r5, r5, lsl #3
	str r5, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r5, [r0]
	ldr r5, [r5, #8]
	blx r5
	cmp r10, #0
	addne r0, sp, #0x2c
	ldrne r3, [r0, r8, lsl #2]
	mov r0, #3
	stmia sp, {r0, r4}
	ldr r0, [r9, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldrh r4, [r9, #8]
	ldr r0, _02125CFC ; =0x02099ED0
	ldreq r3, _02125D04 ; =0x0212758C
	mov r4, r4, lsl #3
	str r4, [sp, #0xc]
	ldrh r4, [r9, #0xa]
	mov r2, #0x24
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldrh r2, [r9, #8]
	ldrh r1, [r9, #0xa]
	ldr r0, [r9, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125CE0: .word unk_0209C220
_02125CE4: .word unk_0209BA20
_02125CE8: .word ov108_021272E4
_02125CEC: .word ov108_02127350
_02125CF0: .word ov108_02127314
_02125CF4: .word ov108_02126FF0
_02125CF8: .word 0x66666667
_02125CFC: .word unk_02099ED0
_02125D00: .word ov108_02127588
_02125D04: .word ov108_0212758C
	arm_func_end FUN_ov108_021258ac

	arm_func_start FUN_ov108_02125d08
FUN_ov108_02125d08: ; 0x02125D08
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x11]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r6, #0x18]
	strb r4, [r6, #0x11]
	cmp r0, #0
	beq _02125D40
	mov r1, r4
	bl  FUN_ov16_020efa9c
	mov r4, r0
_02125D40:
	cmp r5, #1
	beq _02125D54
	cmp r5, #2
	beq _02125DA4
	ldmfd sp!, {r4, r5, r6, pc}
_02125D54:
	ldr r0, [r6, #0x14]
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl FUN_ov108_02125380
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_ov108_021255cc
	mov r0, r6
	mov r2, r4
	mov r1, #4
	bl FUN_ov108_02125748
	mov r0, r6
	mov r2, r4
	mov r1, #5
	bl FUN_ov108_021258ac
	ldmfd sp!, {r4, r5, r6, pc}
_02125DA4:
	ldr r0, [r6, #0x14]
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, #3
	bl FUN_ov108_021254a4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov108_02125d08

	arm_func_start FUN_ov108_02125dc0
FUN_ov108_02125dc0: ; 0x02125DC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r5, [sp, #0x4c]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x78]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	mov r7, #1
	cmp r9, r0
	movgt r9, r0
	ldr r0, [r4, #0xc]
	mov r5, #2
	add r8, r4, r0
	mov r0, r2, lsl #0x18
	ldr r4, _02125E9C ; =0x66666667
	mov r6, r0, asr #0x18
	mov r11, #5
_02125E18:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	str r7, [sp]
	add r9, r0, r9, asr #2
	mov r0, r10, lsl #0x18
	str r7, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r5, [sp, #0x14]
	add r2, r8, r2, lsl #2
	str r11, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r2, #0
	ldr r0, _02125EA0 ; =0x0209F5C0
	mov r1, r7
	mov r3, r2
	bl  FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02125E18
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125E9C: .word 0x66666667
_02125EA0: .word unk_0209F5C0
	arm_func_end FUN_ov108_02125dc0

	arm_func_start FUN_ov108_02125ea4
FUN_ov108_02125ea4: ; 0x02125EA4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldr r3, [r6, #0x138]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _02125F18
	mov r1, #1
	str r1, [sp]
	mov r0, r5, lsl #0x18
	mov r2, r4, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xa
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _02125F84 ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125F18:
	ldr r6, [r6, #0x12c]
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #1
	str r1, [sp]
	mov r0, r5, lsl #0x18
	mov r2, r4, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	mov r2, #0
	str r0, [sp, #0x14]
	mov r0, #9
	str r0, [sp, #0x18]
	ldr r3, [r6, #0xc]
	ldr r0, _02125F84 ; =0x0209F5C0
	add r4, r6, r3
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02125F84: .word unk_0209F5C0
	arm_func_end FUN_ov108_02125ea4

	arm_func_start FUN_ov108_02125f88
FUN_ov108_02125f88: ; 0x02125F88
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr lr, [r4, #0x30]
	cmp lr, #0
	beq _02125FEC
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	ldrh r2, [r4, #0x38]
	mov r3, #0
	ldr r0, _02126100 ; =0x0209F5C0
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r12, [r4, #0x3a]
	mov r2, r1
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125FEC:
	ldr lr, [r4, #0x3c]
	cmp lr, #0
	beq _02126044
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	ldrh r3, [r4, #0x44]
	mov r2, #0
	ldr r0, _02126100 ; =0x0209F5C0
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r12, [r4, #0x46]
	mov r3, r2
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r2, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126044:
	ldr lr, [r4, #0x60]
	cmp lr, #0
	beq _0212609C
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldrh r3, [r4, #0x68]
	mov r2, #0
	ldr r0, _02126100 ; =0x0209F5C0
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r12, [r4, #0x6a]
	mov r3, r2
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r2, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0212609C:
	ldr r12, [r4, #0x6c]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldrh r3, [r4, #0x74]
	mov r2, #0
	ldr r0, _02126100 ; =0x0209F5C0
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r4, [r4, #0x76]
	mov r3, r2
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02126100: .word unk_0209F5C0
	arm_func_end FUN_ov108_02125f88

	arm_func_start FUN_ov108_02126104
FUN_ov108_02126104: ; 0x02126104
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr lr, [r0, #0x54]
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r2, #0x11
	str r2, [sp, #0xc]
	ldrh r12, [r0, #0x5c]
	mov r3, #0
	mov r2, r1
	and r12, r12, #0xff
	str r12, [sp, #0x10]
	ldrh r12, [r0, #0x5e]
	ldr r0, _0212616C ; =0x0209F5C0
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0212616C: .word unk_0209F5C0
	arm_func_end FUN_ov108_02126104

	arm_func_start FUN_ov108_02126170
FUN_ov108_02126170: ; 0x02126170
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	mov r1, r4
	bl  FUN_ov16_020efa9c
	movs r5, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r12, [r6, #0xc0]
	cmp r12, #0
	beq _02126208
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xb
	str r0, [sp, #0x18]
	ldrb r2, [r5, #0x5a]
	ldr r3, [r12, #0xc]
	ldr r0, _0212622C ; =0x0209F5C0
	add r3, r12, r3
	sub r2, r2, #1
	add r12, r3, r2, lsl #3
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126208:
	mov r0, r6
	mov r1, #2
	mov r2, #7
	bl FUN_ov108_02125ea4
	mov r0, r6
	mov r1, r5
	bl FUN_ov108_02125f88
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_0212622C: .word unk_0209F5C0
	arm_func_end FUN_ov108_02126170

	arm_func_start FUN_ov108_02126230
FUN_ov108_02126230: ; 0x02126230
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r3, [r4, #0xa8]
	cmp r3, #0
	beq _02126290
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _02126360 ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126290:
	ldr r12, [r4, #0x90]
	cmp r12, #0
	beq _021262E4
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _02126360 ; =0x0209F5C0
	add r12, r12, r2
	mov r2, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021262E4:
	ldr r3, [r4, #0x1c]
	cmp r3, #0
	ldrne r12, [r4, #0x9c]
	cmpne r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r2, #0xe
	sub r3, r3, #1
	mov r0, #0x38
	str r2, [sp, #0x10]
	mov r2, #4
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [r12, #0xc]
	mul r4, r3, r0
	add r0, r12, r2
	add r4, r0, r4, lsl #1
	ldr r0, _02126360 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02126360: .word unk_0209F5C0
	arm_func_end FUN_ov108_02126230

	arm_func_start FUN_ov108_02126364
FUN_ov108_02126364: ; 0x02126364
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r5, [r4, #0xcc]
	cmp r5, #0
	beq _021263C4
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	ldr r2, [r5, #0xc]
	ldr r0, _021264D4 ; =0x0209F5C0
	add r5, r5, r2
	mov r2, r1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021263C4:
	ldr r0, [r4, #0x1c]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _021263F4
_021263D4: ; jump table
	b _021263F4 ; case 0
	b _021263F4 ; case 1
	b _021263FC ; case 2
	b _02126404 ; case 3
	b _0212640C ; case 4
	b _02126414 ; case 5
	b _0212641C ; case 6
	b _02126424 ; case 7
_021263F4:
	mov r1, #8
	b _02126428
_021263FC:
	mov r1, #9
	b _02126428
_02126404:
	mov r1, #0xa
	b _02126428
_0212640C:
	mov r1, #0xb
	b _02126428
_02126414:
	mov r1, #0xc
	b _02126428
_0212641C:
	mov r1, #0xd
	b _02126428
_02126424:
	mov r1, #0xe
_02126428:
	mov r0, #0xc
	mla r0, r1, r0, r4
	ldr r5, [r0, #0x78]
	cmp r5, #0
	beq _02126488
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x1b
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r2, [r5, #0xc]
	ldr r0, _021264D4 ; =0x0209F5C0
	add r5, r5, r2
	mov r2, r1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126488:
	ldr r7, _021264D8 ; =0x0000270F
	mov r5, #4
	str r7, [sp]
	mov r6, #5
	str r6, [sp, #4]
	ldrh r3, [r4, #0x20]
	mov r0, r4
	mov r2, r5
	mov r1, #0x13
	bl FUN_ov108_02125dc0
	str r7, [sp]
	str r6, [sp, #4]
	ldrh r3, [r4, #0x22]
	mov r0, r4
	mov r2, r5
	mov r1, #0x18
	bl FUN_ov108_02125dc0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021264D4: .word unk_0209F5C0
_021264D8: .word 0x0000270F
	arm_func_end FUN_ov108_02126364

	arm_func_start FUN_ov108_021264dc
FUN_ov108_021264dc: ; 0x021264DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	ldr r0, _02126540 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl  FUN_ov16_020f5f64
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r0, #1
	beq _02126518
	cmp r0, #2
	beq _02126524
	ldmfd sp!, {r4, pc}
_02126518:
	mov r0, r4
	bl FUN_ov108_02126230
	ldmfd sp!, {r4, pc}
_02126524:
	mov r0, r4
	bl FUN_ov108_02126364
	mov r0, r4
	bl FUN_ov108_02126170
	mov r0, r4
	bl FUN_ov108_02126104
	ldmfd sp!, {r4, pc}
_02126540: .word unk_0209F5C0
	arm_func_end FUN_ov108_021264dc

	arm_func_start FUN_ov108_02126544
FUN_ov108_02126544: ; 0x02126544
	ldr r0, _02126554 ; =0x0209F5C0
	ldr r12, _02126558 ; = FUN_ov16_020f672c
	mov r1, #1
	bx r12
_02126554: .word unk_0209F5C0
_02126558: .word  FUN_ov16_020f672c
	arm_func_end FUN_ov108_02126544

	arm_func_start FUN_ov108_0212655c
FUN_ov108_0212655c: ; 0x0212655C
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x30
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _0212659C
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	mov r2, r0
_0212659C:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov108_0212655c

	arm_func_start FUN_ov108_021265a4
FUN_ov108_021265a4: ; 0x021265A4
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x30
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _021265EC
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG1Char
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_021265EC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov108_021265a4

	arm_func_start FUN_ov108_021265f4
FUN_ov108_021265f4: ; 0x021265F4
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x30
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _0212663C
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_0212663C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov108_021265f4

	arm_func_start FUN_ov108_02126644
FUN_ov108_02126644: ; 0x02126644
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r7, r1, r4
	add r6, r0, #0x78
	ldr r8, [r6, r7]
	ldr r9, [sp, #0x20]
	mov r4, r2
	mov r5, r3
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r5]
	mov r0, r8
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [r5]
	mov r5, #1
	ldr r1, [r6, r7]
	ldr r2, [r9]
	mov r0, r5
	bl  FUN_ov16_020f1a60
	str r0, [r9]
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov108_02126644

	arm_func_start FUN_ov108_021266ac
FUN_ov108_021266ac: ; 0x021266AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x78
	ldr r6, [r4, r5]
	ldr r7, [sp, #0x20]
	mov r9, r2
	mov r8, r3
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8]
	mov r0, r6
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [r8]
	ldr r1, [r4, r5]
	ldr r2, [r7]
	mov r0, #2
	bl  FUN_ov16_020f1a60
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov108_021266ac

	arm_func_start FUN_ov108_02126710
FUN_ov108_02126710: ; 0x02126710
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr r4, [r7, #0x78]
	cmp r4, #0
	beq _02126780
	ldr r0, [r4, #0xc]
	mov r6, #0
	mov r5, #1
	ldr r1, [r4, #0x10]
	mov r2, r6
	mov r3, r5
	add r0, r4, r0
	bl  FUN_ov16_020f1868
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_020f1138
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r1, r6
	add r0, r4, r0
	bl GXS_LoadBG0Char
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x10]
	add r0, r4, r0
	mov r1, r6
	bl GXS_LoadBG0Scr
_02126780:
	ldr r5, _02126A98 ; =0x020A8C40
	mov r6, #0
	mov r4, #0x800
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldr r8, _02126A9C ; =0x020A8440
	mov r9, #0x20
	mov r0, r6
	mov r1, r8
	str r6, [sp, #0x10]
	str r9, [sp, #8]
	mov r2, r4
	bl MIi_CpuClearFast
	mov r0, r8
	mov r1, r4
	bl DC_FlushRange
	str r9, [sp, #4]
	str r6, [sp, #0xc]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021267FC
	cmp r0, #1
	beq _02126820
	cmp r0, #2
	beq _02126880
	b _02126A8C
_021267FC:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GXS_LoadBG1Scr
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl GXS_LoadBG2Scr
	b _02126A8C
_02126820:
	add r5, sp, #0x10
	mov r8, #4
	mov r6, #2
	add r9, sp, #8
	mov r0, r7
	mov r1, r8
	mov r2, r6
	mov r3, r5
	str r9, [sp]
	bl FUN_ov108_02126644
	mov r4, #3
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	str r9, [sp]
	bl FUN_ov108_02126644
	mov r0, r7
	mov r1, r4
	mov r2, r8
	mov r3, r5
	str r9, [sp]
	bl FUN_ov108_02126644
	b _02126A8C
_02126880:
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r6
	bl FUN_ov108_0212655c
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r7
	mov r1, r6
	bl FUN_ov108_021265a4
	mov r4, #3
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov108_0212655c
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r4
	mov r0, r7
	bl FUN_ov108_021265a4
	str r0, [sp, #8]
	add r1, sp, #8
	str r1, [sp]
	mov r0, r7
	mov r1, #7
	mov r2, #6
	add r3, sp, #0x10
	bl FUN_ov108_02126644
	ldr r0, [r7, #0x1c]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02126920
_02126900: ; jump table
	b _02126920 ; case 0
	b _02126920 ; case 1
	b _02126928 ; case 2
	b _02126930 ; case 3
	b _02126938 ; case 4
	b _02126940 ; case 5
	b _02126948 ; case 6
	b _02126950 ; case 7
_02126920:
	mov r1, #8
	b _02126954
_02126928:
	mov r1, #9
	b _02126954
_02126930:
	mov r1, #0xa
	b _02126954
_02126938:
	mov r1, #0xb
	b _02126954
_02126940:
	mov r1, #0xc
	b _02126954
_02126948:
	mov r1, #0xd
	b _02126954
_02126950:
	mov r1, #0xe
_02126954:
	add r2, sp, #8
	str r2, [sp]
	add r3, sp, #0x10
	mov r0, r7
	mov r2, #7
	bl FUN_ov108_02126644
	ldr r0, [r7, #0x138]
	cmp r0, #0
	beq _021269A0
	ldr r1, [sp, #0x10]
	mov r2, #0xa
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	ldr r1, [r7, #0x138]
	mov r0, #1
	bl  FUN_ov16_020f1a60
	str r0, [sp, #8]
_021269A0:
	ldr r0, [r7, #0x144]
	cmp r0, #0
	beq _021269B8
	mov r1, #1
	mov r2, #0xa
	bl  FUN_ov16_020f1160
_021269B8:
	mov r4, #1
	ldr r2, [sp, #0xc]
	mov r0, r7
	mov r1, r4
	bl FUN_ov108_0212655c
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r0, r7
	mov r1, r4
	bl FUN_ov108_021265f4
	mov r4, #4
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r0, r7
	mov r1, r4
	bl FUN_ov108_0212655c
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r1, r4
	mov r0, r7
	bl FUN_ov108_021265f4
	mov r4, #5
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r0, r7
	mov r1, r4
	bl FUN_ov108_0212655c
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r0, r7
	mov r1, r4
	bl FUN_ov108_021265f4
	str r0, [sp, #4]
	add r5, sp, #4
	mov r1, r4
	mov r2, r4
	add r4, sp, #0xc
	mov r0, r7
	mov r3, r4
	str r5, [sp]
	bl FUN_ov108_021266ac
	mov r0, r7
	mov r1, #6
	mov r2, #0xb
	mov r3, r4
	str r5, [sp]
	bl FUN_ov108_021266ac
	mov r0, r7
	mov r3, r4
	mov r1, #0xf
	mov r2, #9
	str r5, [sp]
	bl FUN_ov108_021266ac
_02126A8C:
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02126A98: .word unk_020A8C40
_02126A9C: .word unk_020A8440
	arm_func_end FUN_ov108_02126710

	arm_func_start FUN_ov108_02126aa0
FUN_ov108_02126aa0: ; 0x02126AA0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, #1
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl  FUN_ov16_020f4894
	mov r4, #0
	mov r1, r4
	add r0, r6, #0x30
	mov r2, #0x48
	bl MI_CpuFill8
	add r0, r6, #0x78
	mov r1, r4
	mov r2, #0xe4
	bl MI_CpuFill8
	strb r4, [r6, #0x11]
	str r4, [r6, #0x14]
	strh r4, [r6, #0x18]
	str r5, [r6, #0x1c]
	strh r4, [r6, #0x20]
	strh r4, [r6, #0x22]
	strb r4, [r6, #0x24]
	str r4, [r6, #0x28]
	strb r4, [r6, #0x2c]
	mov r0, r6
	bl FUN_ov108_02124ecc
	mov r1, r5
	ldr r0, _02126B28 ; =0x0209F5C0
	bl  FUN_ov16_020f5a58
	ldmfd sp!, {r4, r5, r6, pc}
_02126B28: .word unk_0209F5C0
	arm_func_end FUN_ov108_02126aa0

	arm_func_start FUN_ov108_02126b2c
FUN_ov108_02126b2c: ; 0x02126B2C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02126B44: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02126B64 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _02126B80 ; case 3
	b _02126BE0 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _02126BF4 ; case 6
	b _02126C00 ; case 7
_02126B64:
	add r0, r4, #0x15c
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126B80:
	ldr r1, [r4, #0xc]
	bl FUN_ov108_02125d08
	add r0, r4, #0x78
	mov r1, #0x13
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02126BB4
	cmp r0, #2
	beq _02126BC4
	ldmfd sp!, {r4, pc}
_02126BB4:
	mov r0, r4
	mov r1, #2
	bl FUN_ov108_021251b8
	ldmfd sp!, {r4, pc}
_02126BC4:
	mov r0, r4
	bl FUN_ov108_02124f68
	mov r0, r4
	bl FUN_ov108_02124e8c
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126BE0:
	bl FUN_ov108_021264dc
	mov r0, #4
	bl  FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_02126BF4:
	mov r0, r4
	bl FUN_ov108_02126544
	ldmfd sp!, {r4, pc}
_02126C00:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov108_021252ac
	mov r0, r4
	mov r1, #1
	bl FUN_ov108_021251b8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov108_02126b2c

	arm_func_start FUN_ov108_02126c2c
FUN_ov108_02126c2c: ; 0x02126C2C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02126C4C
	cmp r1, #6
	beq _02126C5C
	ldmfd sp!, {r4, pc}
_02126C4C:
	bl FUN_ov108_02126710
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126C5C:
	ldr r0, _02126C6C ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02126C6C: .word unk_0209F5C0
	arm_func_end FUN_ov108_02126c2c

	arm_func_start FUN_ov108_02126c70
FUN_ov108_02126c70: ; 0x02126C70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	bl FUN_ov108_021252ac
	mov r0, r4
	bl FUN_ov108_02124f30
	mov r9, #0
	ldr r8, _02126D04 ; =0x0209A250
	mov r7, r9
	mov r6, r9
	mov r5, #0xc
_02126C98:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x30]
	cmp r1, #0
	beq _02126CB4
	mov r0, r8
	bl FUN_0202e1c0
	str r7, [r10, #0x30]
_02126CB4:
	ldr r1, [r10, #0x34]
	cmp r1, #0
	beq _02126CCC
	mov r0, r8
	bl FUN_0202e1c0
	str r6, [r10, #0x34]
_02126CCC:
	add r9, r9, #1
	cmp r9, #6
	blt _02126C98
	mov r5, #1
	ldr r0, _02126D08 ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5af0
	bl  FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02126D04: .word unk_0209A250
_02126D08: .word unk_0209F5C0
	arm_func_end FUN_ov108_02126c70

	arm_func_start FUN_ov108_02126d0c
FUN_ov108_02126d0c: ; 0x02126D0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov108_02126d0c

	arm_func_start FUN_ov108_02126d20
FUN_ov108_02126d20: ; 0x02126D20
	bx lr
	arm_func_end FUN_ov108_02126d20

	arm_func_start FUN_ov108_02126d24
FUN_ov108_02126d24: ; 0x02126D24
	bx lr
	arm_func_end FUN_ov108_02126d24

	arm_func_start FUN_ov108_02126d28
FUN_ov108_02126d28: ; 0x02126D28
	bx lr
	arm_func_end FUN_ov108_02126d28

	arm_func_start FUN_ov108_02126d2c
FUN_ov108_02126d2c: ; 0x02126D2C
	ldr r2, [r0]
	mov r3, r1
	mov r1, r2, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldreqb r1, [r0]
	ldr r12, _02126D58 ; =FUN_ov108_02126d5c
	moveq r1, r1, lsl #0x18
	moveq r2, r1, lsr #0x19
	ldrne r2, [r0, #4]
	mov r1, #0
	bx r12
_02126D58: .word FUN_ov108_02126d5c
	arm_func_end FUN_ov108_02126d2c

	arm_func_start FUN_ov108_02126d5c
FUN_ov108_02126d5c: ; 0x02126D5C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r3
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl _strlen
	add r0, r4, r0
	ldrb r12, [sp, #8]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	strb r12, [sp, #4]
	bl FUN_02028a98
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov108_02126d5c
_02126DA8:
	.byte 0xFC, 0x6F, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0x70, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x58, 0x70, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x68, 0x70, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA8, 0x70, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x08, 0x71, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x78, 0x70, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xE8, 0x70, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x88, 0x70, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x38, 0x70, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x98, 0x70, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x18, 0x71, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0xB8, 0x70, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xD8, 0x70, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0xC8, 0x70, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov108_02126e30
FUN_ov108_02126e30: ; 0x02126E30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02126E78 ; =0x02126EA0
	str r0, [r4, #4]
	ldr r0, _02126E7C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _02126E80 ; =0x0000EA3C
	str r1, [r4, #0x18]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02126E78: .word ov108_02126EA0
_02126E7C: .word 0x00009CCD
_02126E80: .word 0x0000EA3C
	arm_func_end FUN_ov108_02126e30

	.section .sinit, 4
ov108_02126E84:
	.word FUN_ov108_02126e30

	.data
	.global ov108_02126EA0
ov108_02126EA0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x81, 0x7C, 0x00, 0x00, 0x81, 0x7C, 0x00, 0x00, 0x81, 0x7C, 0x00, 0x00, 0x81, 0x7C, 0x00, 0x00
	.byte 0x81, 0x7C, 0x00, 0x00, 0x8B, 0x9E, 0x93, 0x73, 0x00, 0x00, 0x00, 0x00, 0x82, 0xA0, 0x82, 0xA8
	.byte 0x00, 0x00, 0x00, 0x00, 0x93, 0xDE, 0x97, 0xC7, 0x00, 0x00, 0x00, 0x00, 0x88, 0xA4, 0x95, 0x51
	.byte 0x00, 0x00, 0x00, 0x00, 0x91, 0xE5, 0x8D, 0xE3, 0x00, 0x00, 0x00, 0x00, 0x95, 0x9F, 0x89, 0xAA
	.byte 0x00, 0x00, 0x00, 0x00, 0x95, 0x78, 0x8E, 0x6D, 0x00, 0x00, 0x00, 0x00, 0x82, 0x66, 0x82, 0x6A
	.byte 0x00, 0x00, 0x00, 0x00, 0x82, 0x6C, 0x82, 0x65, 0x00, 0x00, 0x00, 0x00, 0x82, 0xA0, 0x82, 0xA9
	.byte 0x00, 0x00, 0x00, 0x00, 0x82, 0x63, 0x82, 0x65, 0x00, 0x00, 0x00, 0x00, 0x82, 0x65, 0x82, 0x76
	.byte 0x00, 0x00, 0x00, 0x00, 0x95, 0x78, 0x8E, 0x6D, 0x00, 0x00, 0x00, 0x00, 0x89, 0xAB, 0x93, 0xEA
	.byte 0x00, 0x00, 0x00, 0x00, 0x82, 0xAB, 0x82, 0xA2, 0x82, 0xEB, 0x00, 0x00, 0x93, 0xEC, 0x93, 0x8C
	.byte 0x8B, 0x9E, 0x00, 0x00, 0x96, 0x6B, 0x8A, 0x43, 0x93, 0xB9, 0x00, 0x00, 0x96, 0x6B, 0x8A, 0x43
	.byte 0x93, 0xB9, 0x00, 0x00, 0x96, 0x6B, 0x93, 0x8C, 0x8B, 0x9E, 0x00, 0x00, 0x82, 0xD0, 0x82, 0xAB
	.byte 0x82, 0xCA, 0x82, 0xAB, 0x00, 0x00, 0x00, 0x00, 0x82, 0xC6, 0x82, 0xAD, 0x82, 0xB5, 0x82, 0xE3
	.byte 0x00, 0x00, 0x00, 0x00, 0x92, 0x87, 0x8A, 0xD4, 0x95, 0x73, 0x89, 0xC2, 0x00, 0x00, 0x00, 0x00
	.byte 0x83, 0x52, 0x83, 0x93, 0x83, 0x68, 0x83, 0x8B, 0x93, 0x87, 0x00, 0x00, 0x83, 0x45, 0x83, 0x7E
	.byte 0x83, 0x4B, 0x83, 0x81, 0x93, 0x87, 0x00, 0x00, 0x88, 0xEE, 0x8D, 0xC8, 0x8F, 0xA4, 0x93, 0x58
	.byte 0x8A, 0x58, 0x00, 0x00, 0x83, 0x84, 0x83, 0x7D, 0x83, 0x6C, 0x83, 0x52, 0x93, 0x87, 0x00, 0x00
	.byte 0x95, 0x9F, 0x89, 0xAA, 0x81, 0x40, 0x89, 0xAB, 0x93, 0xEA, 0x00, 0x00, 0x83, 0x45, 0x83, 0x7E
	.byte 0x83, 0x77, 0x83, 0x72, 0x93, 0x87, 0x00, 0x00, 0x83, 0x58, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A
	.byte 0x81, 0x5B, 0x00, 0x00, 0x83, 0x4E, 0x83, 0x57, 0x83, 0x83, 0x83, 0x4E, 0x93, 0x87, 0x00, 0x00
	.global ov108_02126FF0
ov108_02126FF0:
	.byte 0x1C, 0x6F, 0x12, 0x02, 0xDC, 0x6E, 0x12, 0x02, 0x44, 0x6F, 0x12, 0x02, 0x63, 0x68, 0x75, 0x70
	.byte 0x5F, 0x62, 0x67, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x90, 0x6C, 0x96, 0xAC, 0x83, 0x56, 0x83, 0x58
	.byte 0x83, 0x65, 0x83, 0x80, 0x00, 0x00, 0x00, 0x00, 0x83, 0x7D, 0x83, 0x4F, 0x83, 0x6A, 0x81, 0x5B
	.byte 0x83, 0x68, 0x8E, 0x52, 0x00, 0x00, 0x00, 0x00, 0x83, 0x7D, 0x83, 0x4F, 0x83, 0x6A, 0x81, 0x5B
	.byte 0x83, 0x68, 0x8E, 0x52, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x83, 0x50, 0x81, 0x5B, 0x83, 0x5E, 0x83, 0x43
	.byte 0x98, 0x41, 0x93, 0xAE, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x83, 0x4B, 0x83, 0x60, 0x83, 0x83, 0x83, 0x56
	.byte 0x83, 0x58, 0x83, 0x65, 0x83, 0x80, 0x00, 0x00, 0x83, 0x75, 0x83, 0x89, 0x83, 0x57, 0x83, 0x8B
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x91, 0xE5, 0x8D, 0x5D, 0x8C, 0xCB, 0x8D, 0x91
	.byte 0x8D, 0xDB, 0x8B, 0xF3, 0x8D, 0x60, 0x00, 0x00, 0x83, 0x57, 0x83, 0x83, 0x83, 0x70, 0x83, 0x93
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x43, 0x83, 0x4D, 0x83, 0x8A, 0x83, 0x58
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x57, 0x83, 0x83, 0x83, 0x70, 0x83, 0x93
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x41, 0x83, 0x81, 0x83, 0x8A, 0x83, 0x4A
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x43, 0x83, 0x5E, 0x83, 0x8A, 0x83, 0x41
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x75, 0x83, 0x89, 0x83, 0x57, 0x83, 0x8B
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x43, 0x83, 0x4D, 0x83, 0x8A, 0x83, 0x58
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x94, 0x7A, 0x90, 0x4D, 0x00, 0x00, 0x83, 0x41, 0x83, 0x81, 0x83, 0x8A, 0x83, 0x4A
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x94, 0x7A, 0x90, 0x4D, 0x00, 0x00, 0x83, 0x43, 0x83, 0x5E, 0x83, 0x8A, 0x83, 0x41
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x7E, 0x83, 0x6A, 0x83, 0x6F, 0x83, 0x67
	.byte 0x83, 0x8B, 0x8F, 0x49, 0x97, 0xB9, 0x8C, 0xE3, 0x00, 0x00, 0x00, 0x00, 0x83, 0x52, 0x83, 0x67
	.byte 0x83, 0x41, 0x81, 0x5B, 0x83, 0x8B, 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x00, 0x00
	.byte 0x83, 0x52, 0x83, 0x67, 0x83, 0x41, 0x81, 0x5B, 0x83, 0x8B, 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41
	.byte 0x00, 0x00, 0x00, 0x00, 0x83, 0x58, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B
	.byte 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x00, 0x00, 0x83, 0x47, 0x83, 0x93, 0x83, 0x67, 0x83, 0x89
	.byte 0x83, 0x93, 0x83, 0x58, 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x91, 0xE5, 0x8D, 0xE3
	.byte 0x82, 0xC8, 0x82, 0xC7, 0x8A, 0xD6, 0x90, 0xBC, 0x81, 0x40, 0x88, 0xA4, 0x95, 0x51, 0x00, 0x00
	.byte 0x83, 0x47, 0x83, 0x93, 0x83, 0x67, 0x83, 0x89, 0x83, 0x93, 0x83, 0x58, 0x83, 0x47, 0x83, 0x8A
	.byte 0x83, 0x41, 0x00, 0x00, 0x83, 0x41, 0x83, 0x8B, 0x83, 0x5B, 0x83, 0x93, 0x83, 0x60, 0x83, 0x93
	.byte 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x41, 0x83, 0x8B, 0x83, 0x5B, 0x83, 0x93
	.byte 0x83, 0x60, 0x83, 0x93, 0x83, 0x47, 0x83, 0x8A, 0x83, 0x41, 0x00, 0x00, 0x83, 0x76, 0x83, 0x8C
	.byte 0x83, 0x7E, 0x83, 0x41, 0x83, 0x80, 0x83, 0x58, 0x83, 0x4A, 0x83, 0x45, 0x83, 0x67, 0x00, 0x00
	.global ov108_021272D0
ov108_021272D0:
	.byte 0xBC, 0x6E, 0x12, 0x02, 0x0C, 0x6F, 0x12, 0x02, 0x24, 0x6F, 0x12, 0x02, 0x14, 0x6F, 0x12, 0x02
	.byte 0x2C, 0x6F, 0x12, 0x02
	.global ov108_021272E4
ov108_021272E4:
	.byte 0xC8, 0x71, 0x12, 0x02, 0xE8, 0x71, 0x12, 0x02, 0xD8, 0x6F, 0x12, 0x02
	.byte 0xBC, 0x72, 0x12, 0x02, 0xF8, 0x70, 0x12, 0x02, 0x84, 0x6F, 0x12, 0x02, 0x08, 0x70, 0x12, 0x02
	.byte 0x08, 0x72, 0x12, 0x02, 0x28, 0x71, 0x12, 0x02, 0x6C, 0x6F, 0x12, 0x02, 0x78, 0x6F, 0x12, 0x02
	.byte 0x44, 0x72, 0x12, 0x02
	.global ov108_02127314
ov108_02127314:
	.byte 0xA8, 0x6F, 0x12, 0x02, 0x48, 0x71, 0x12, 0x02, 0x5C, 0x6F, 0x12, 0x02
	.byte 0x6C, 0x72, 0x12, 0x02, 0xC0, 0x6F, 0x12, 0x02, 0x78, 0x71, 0x12, 0x02, 0xB8, 0x71, 0x12, 0x02
	.byte 0xA8, 0x72, 0x12, 0x02, 0xD8, 0x71, 0x12, 0x02, 0xF8, 0x71, 0x12, 0x02, 0x38, 0x71, 0x12, 0x02
	.byte 0x1C, 0x72, 0x12, 0x02, 0x34, 0x6F, 0x12, 0x02, 0x28, 0x70, 0x12, 0x02, 0x80, 0x72, 0x12, 0x02
	.global ov108_02127350
ov108_02127350:
	.byte 0xC8, 0x6E, 0x12, 0x02, 0x64, 0x6F, 0x12, 0x02, 0x4C, 0x6F, 0x12, 0x02, 0xE4, 0x6E, 0x12, 0x02
	.byte 0x54, 0x6F, 0x12, 0x02, 0xD4, 0x6E, 0x12, 0x02, 0xEC, 0x6E, 0x12, 0x02, 0xF4, 0x6E, 0x12, 0x02
	.byte 0xFC, 0x6E, 0x12, 0x02, 0x3C, 0x6F, 0x12, 0x02, 0xC4, 0x6E, 0x12, 0x02, 0x58, 0x72, 0x12, 0x02
	.byte 0x58, 0x71, 0x12, 0x02, 0x68, 0x71, 0x12, 0x02, 0x94, 0x72, 0x12, 0x02, 0x88, 0x71, 0x12, 0x02
	.byte 0x98, 0x71, 0x12, 0x02, 0xA8, 0x71, 0x12, 0x02, 0x30, 0x72, 0x12, 0x02, 0xD0, 0x6E, 0x12, 0x02
	.byte 0xCC, 0x6E, 0x12, 0x02, 0xCC, 0x6F, 0x12, 0x02, 0xB4, 0x6F, 0x12, 0x02, 0xE4, 0x6F, 0x12, 0x02
	.byte 0x90, 0x6F, 0x12, 0x02, 0x9C, 0x6F, 0x12, 0x02, 0xC0, 0x6E, 0x12, 0x02, 0x04, 0x6F, 0x12, 0x02
	.byte 0x18, 0x70, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x6D, 0x12, 0x02
	.byte 0x0C, 0x6D, 0x12, 0x02, 0x24, 0x6D, 0x12, 0x02, 0x20, 0x6D, 0x12, 0x02, 0xA0, 0x6A, 0x12, 0x02
	.byte 0x08, 0xB2, 0x02, 0x02, 0x2C, 0x6B, 0x12, 0x02, 0x2C, 0x6C, 0x12, 0x02, 0x70, 0x6C, 0x12, 0x02
	.byte 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02
	.byte 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02
	.byte 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02
	.byte 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02, 0x00, 0x4D, 0x12, 0x02
	.byte 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov108_02127438
ov108_02127438:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x73, 0x63, 0x68, 0x69, 0x6E, 0x66, 0x6F, 0x2E, 0x64
	.byte 0x61, 0x74, 0x00, 0x00
	.global ov108_02127454
ov108_02127454:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov108_0212746C
ov108_0212746C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov108_02127484
ov108_02127484:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov108_0212749C
ov108_0212749C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov108_021274B4
ov108_021274B4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov108_021274CC
ov108_021274CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov108_021274E4
ov108_021274E4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x75, 0x6E, 0x69, 0x74, 0x62, 0x61, 0x73, 0x65, 0x2E, 0x53, 0x54, 0x52, 0x00
	.global ov108_02127500
ov108_02127500:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x42, 0x69, 0x6E, 0x64, 0x65, 0x72, 0x31, 0x2E, 0x53, 0x50
	.byte 0x46, 0x5F, 0x00, 0x00
	.global ov108_02127524
ov108_02127524:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x42, 0x69, 0x6E, 0x64, 0x65, 0x72
	.byte 0x32, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov108_02127548
ov108_02127548:
	.byte 0x5B, 0x92, 0x87, 0x8A, 0xD4, 0x2F, 0x82, 0xC8
	.byte 0x82, 0xA9, 0x82, 0xDC, 0x5D, 0x82, 0xC9, 0x82, 0xB7, 0x82, 0xE9, 0x82, 0xC6, 0x20, 0x82, 0xAD
	.byte 0x82, 0xED, 0x82, 0xB5, 0x82, 0xA2, 0x5B, 0x8F, 0xEE, 0x95, 0xF1, 0x2F, 0x82, 0xB6, 0x82, 0xE5
	.byte 0x82, 0xA4, 0x82, 0xD9, 0x82, 0xA4, 0x5D, 0x82, 0xAA, 0x82, 0xED, 0x82, 0xA9, 0x82, 0xE9, 0x82
	.byte 0xBC, 0x81, 0x49, 0x00
	.global ov108_02127584
ov108_02127584:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov108_02127588
ov108_02127588:
	.byte 0x81, 0x7C, 0x00, 0x00
	.global ov108_0212758C
ov108_0212758C:
	.byte 0x81, 0x7C, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

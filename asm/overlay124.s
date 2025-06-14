
	.include "/macros/function.inc"
	.include "/include/overlay124.inc"

	.text
	arm_func_start FUN_ov124_02124d00
FUN_ov124_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	cmp r0, #0
	cmpne r0, #1
	beq _02124D30
	sub r0, r0, #3
	cmp r0, #2
	bhi _02124D38
_02124D30:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02124D38:
	ldrh r2, [r4, #0x14]
	ldrh r0, [r1]
	cmp r2, r0
	ldreqb r0, [r1, #3]
	cmpeq r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r1]
	mov r2, #0
	strb r2, [r1, #3]
	strh r0, [r4, #0x14]
	ldrb r2, [r1, #2]
	mov r0, r4
	strb r2, [r4, #0x16]
	ldrb r2, [r1, #3]
	strb r2, [r4, #0x17]
	ldr r1, [r1, #4]
	str r1, [r4, #0x18]
	bl FUN_ov124_02125254
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov124_021251a8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov124_02124d00

	arm_func_start FUN_ov124_02124d9c
FUN_ov124_02124d9c: ; 0x02124D9C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r6, [r8, #0x18]
	cmp r6, #0
	bne _02124DC8
	ldrh r0, [r8, #0x14]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
	mov r6, r0
_02124DC8:
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _02124E08 ; =0x02099F04
	mov r7, #0
	mov r4, #0xc
_02124DDC:
	mla r0, r7, r4, r8
	ldr r1, [r0, #0x110]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r5]
	mov r0, r6
	bl  FUN_ov16_020f0c30 ; may be ov17
	add r7, r7, #1
	cmp r7, #2
	blt _02124DDC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02124E08: .word 0x02099F04
	arm_func_end FUN_ov124_02124d9c

	arm_func_start FUN_ov124_02124e0c
FUN_ov124_02124e0c: ; 0x02124E0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x128
	mov r1, #0
	mov r2, #0x24
	bl MemWrite
	ldr r0, _02124E54 ; =0x02126A1C
	add r1, r4, #0x128
	bl  FUN_ov16_020f316c
	ldr r0, _02124E58 ; =0x02126A34
	add r1, r4, #0x134
	bl  FUN_ov16_020f316c
	ldr r0, _02124E5C ; =0x02126A4C
	add r1, r4, #0x140
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124E54: .word 0x02126A1C
_02124E58: .word 0x02126A34
_02124E5C: .word 0x02126A4C
	arm_func_end FUN_ov124_02124e0c

	arm_func_start FUN_ov124_02124e60
FUN_ov124_02124e60: ; 0x02124E60
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x128
	mov r1, #3
	bl  FUN_ov16_020f338c
	add r5, r4, #0x128
	mov r6, #0
	mov r4, #0xc
_02124E80:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _02124E80
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov124_02124e60

	arm_func_start FUN_ov124_02124e98
FUN_ov124_02124e98: ; 0x02124E98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x118
	mov r7, #0
	mov r6, #0x20
	add r4, sp, #0x80
	mov r5, r0
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl MemWrite
	add r10, sp, #0x60
	mov r1, r7
	mov r0, r10
	mov r2, r6
	bl MemWrite
	add r9, sp, #0x40
	mov r1, r7
	mov r0, r9
	mov r2, r6
	bl MemWrite
	add r8, sp, #0x20
	mov r1, r7
	mov r0, r8
	mov r2, r6
	bl MemWrite
	mov r1, r7
	add r7, sp, #0
	mov r2, r6
	mov r0, r7
	bl MemWrite
	ldr r6, _0212500C ; =0x020A0640
	ldr r1, _02125010 ; =0x02126A64
	ldrb r2, [r6, #0x89]
	mov r0, r4
	bl FUN_02015184
	ldrb r2, [r6, #0x89]
	ldr r1, _02125014 ; =0x02126A74
	mov r0, r10
	add r2, r2, #3
	bl FUN_02015184
	ldrb r2, [r6, #0x89]
	ldr r1, _02125018 ; =0x02126A84
	mov r0, r9
	bl FUN_02015184
	ldrb r2, [r6, #0x89]
	mov r4, #0xa
	ldr r1, _0212501C ; =0x02126A94
	smulbb r2, r2, r4
	mov r0, r8
	bl FUN_02015184
	ldrb r2, [r6, #0x89]
	ldr r1, _02125020 ; =0x02126AA4
	mov r0, r7
	smulbb r2, r2, r4
	add r2, r2, #2
	bl FUN_02015184
	ldr r12, _02125024 ; =0x02126814
	add r6, sp, #0xa0
	mov r4, #7
_02124F84:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02124F84
	ldmia r12, {r0, r1}
	stmia r6, {r0, r1}
	add r4, sp, #0x80
	add r3, sp, #0x60
	add r2, sp, #0x20
	add r1, sp, #0
	add r0, sp, #0x40
	str r4, [sp, #0xa0]
	str r3, [sp, #0xa8]
	str r2, [sp, #0xb0]
	str r1, [sp, #0xc0]
	str r0, [sp, #0xe8]
	ldr r6, [r5, #0x38]
	cmp r6, #0
	addeq sp, sp, #0x118
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r7, sp, #0xa0
	add r5, r5, #0x38
	mov r4, #0xc
	b _02124FF8
_02124FE4:
	ldmia r7, {r0, r2}
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	add r7, r7, #8
_02124FF8:
	ldr r0, [r7]
	cmp r0, #0
	bne _02124FE4
	add sp, sp, #0x118
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212500C: .word 0x020A0640
_02125010: .word 0x02126A64
_02125014: .word 0x02126A74
_02125018: .word 0x02126A84
_0212501C: .word 0x02126A94
_02125020: .word 0x02126AA4
_02125024: .word 0x02126814
	arm_func_end FUN_ov124_02124e98

	arm_func_start FUN_ov124_02125028
FUN_ov124_02125028: ; 0x02125028
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r9, [r10, #0x18]
	mov r5, #0
	cmp r9, #0
	bne _02125054
	ldrh r0, [r10, #0x14]
	mov r1, r5
	bl  FUN_ov16_020efa9c
	mov r9, r0
_02125054:
	cmp r9, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl  FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _02125198 ; =0x0209BA20
	bl FUN_0207249c
	mov r6, r0
	ldr r0, [r10, #0x128]
	cmp r0, #0
	beq _021250C0
	add r4, sp, #8
	add r3, sp, #0xc
	mov r1, r9
	mov r2, #0
	str r4, [sp]
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _021250C0
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _0212519C ; =0x02126AB4
	add r1, r10, #0xec
	bl  FUN_ov16_020f31fc
_021250C0:
	mov r7, #0
	add r4, r10, #0x38
	add r11, sp, #8
_021250CC:
	mov r1, #1
	cmp r7, #1
	ldreqh r1, [r6, #0x28]
	mov r0, r9
	cmpeq r1, #0
	ldreqh r1, [r6, #0x26]
	bl  FUN_ov16_020f0b3c
	mov r8, r0
	ldr r0, [r10, #0x134]
	cmp r0, #0
	beq _0212513C
	add r1, sp, #0xc
	stmia sp, {r1, r11}
	mov r1, r9
	mov r2, r8
	mov r3, r5
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _0212513C
	add r2, r7, #0x10
	mov r1, #0xc
	mla r1, r2, r1, r4
	mov r0, #1
	str r0, [sp]
	ldr r0, _021251A0 ; =0x02126ACC
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl  FUN_ov16_020f31fc
_0212513C:
	ldr r0, [r10, #0x140]
	cmp r0, #0
	beq _02125184
	mov r1, r8
	mov r2, r5
	add r3, sp, #0xc
	str r11, [sp]
	bl  FUN_ov16_020f3744
	cmp r0, #0
	beq _02125184
	add r2, r7, #0x12
	mov r1, #0xc
	mla r1, r2, r1, r4
	str r5, [sp]
	ldr r0, _021251A4 ; =0x02126AE4
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl  FUN_ov16_020f31fc
_02125184:
	add r7, r7, #1
	cmp r7, #2
	blt _021250CC
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125198: .word 0x0209BA20
_0212519C: .word 0x02126AB4
_021251A0: .word 0x02126ACC
_021251A4: .word 0x02126AE4
	arm_func_end FUN_ov124_02125028

	arm_func_start FUN_ov124_021251a8
FUN_ov124_021251a8: ; 0x021251A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _021251C8
	cmp r1, #2
	beq _02125230
	b _0212523C
_021251C8:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x38
	mov r2, #0xf0
	bl MemWrite
	ldr r5, _02125248 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_0200787c
	mov r0, r5
	mov r1, r6
	bl FUN_020026d0
	ldr r5, _0212524C ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_0200787c
	mov r0, r5
	mov r1, r6
	bl FUN_020026d0
	ldr r0, _02125250 ; =0x02126AFC
	add r1, r4, #0x38
	bl  FUN_ov16_020f316c
	b _02125234
_02125230:
	bl FUN_ov124_02125028
_02125234:
	mov r0, #1
	strb r0, [r4, #0x11]
_0212523C:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125248: .word 0x020A8C40
_0212524C: .word 0x020A8440
_02125250: .word 0x02126AFC
	arm_func_end FUN_ov124_021251a8

	arm_func_start FUN_ov124_02125254
FUN_ov124_02125254: ; 0x02125254
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x38
	mov r1, #0x14
	bl  FUN_ov16_020f338c
	add r5, r4, #0x38
	mov r6, #0
	mov r4, #0xc
_02125274:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x14
	blt _02125274
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov124_02125254

	arm_func_start FUN_ov124_0212528c
FUN_ov124_0212528c: ; 0x0212528C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _021252BC
	ldr r0, _02125334 ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_021252BC:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021252D8
	ldr r0, _02125334 ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_021252D8:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02125310
_021252F8:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _021252F8
_02125310:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MemWrite
	ldr r0, [r4, #4]
	mov r1, r5
	bl FUN_020026d0
	ldmfd sp!, {r3, r4, r5, pc}
_02125334: .word 0x0209A250
	arm_func_end FUN_ov124_0212528c

	arm_func_start FUN_ov124_02125338
FUN_ov124_02125338: ; 0x02125338
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x5c
	movs r4, r2
	mov r5, r0
	mov r8, #0
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r3, r5, #0x20
	mov r2, #0xc
	mla r9, r1, r2, r3
	mov r0, r4
	bl GetStrLen
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	mov r3, #0x28
	mov r1, r3, asr #2
	add r3, r3, r1, lsr #29
	mov r2, #0x80
	cmp r0, #8
	mov r0, r2, asr #2
	add r2, r2, r0, lsr #29
	mov r7, #1
	movlt r7, r8
	mov r6, #3
	cmp r7, #0
	mov r0, r5
	mov r1, r9
	mov r2, r2, asr #3
	mov r3, r3, asr #3
	moveq r6, #0
	bl FUN_ov124_0212528c
	ldr r0, [r9, #4]
	cmp r0, #0
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02125584 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	bne _021254A8
	cmp r7, #0
	bne _021253F8
	ldr r0, _02125588 ; =0x02099ED0
	add r1, r4, #0x2c
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r6, r0, asr #1
_021253F8:
	add r5, sp, #0x3c
	mov r2, r4
	mov r0, r5
	add r1, r4, #0x2c
	bl FUN_0204378c
	mov r0, #3
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [r9, #4]
	mov r3, r5
	str r1, [sp, #8]
	ldrh r12, [r9, #8]
	ldr r0, _02125588 ; =0x02099ED0
	mov r1, r6
	mov r5, r12, lsl #3
	str r5, [sp, #0xc]
	ldrh r5, [r9, #0xa]
	mov r5, r5, lsl #3
	str r5, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, [r0]
	ldr r5, [r0]
	ldr r5, [r5, #8]
	blx r5
	cmp r7, #0
	bne _02125484
	ldr r0, _0212558C ; =0x02099F50
	mov r1, r4
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r6, r0, asr #1
_02125484:
	mov r0, #3
	stmia sp, {r0, r8}
	ldr r1, [r9, #4]
	ldr r0, _0212558C ; =0x02099F50
	str r1, [sp, #8]
	ldrh r2, [r9, #8]
	mov r1, r6
	mov r3, r4
	b _02125534
_021254A8:
	add r7, sp, #0x1c
	mov r2, r4
	mov r0, r7
	add r1, r4, #0x2c
	bl FUN_0204378c
	mov r6, #3
	str r6, [sp]
	mov r5, #1
	str r5, [sp, #4]
	ldr r0, [r9, #4]
	mov r3, r7
	str r0, [sp, #8]
	ldrh r2, [r9, #8]
	ldr r0, _02125588 ; =0x02099ED0
	mov r1, r8
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r12, [r9, #0xa]
	mov r2, #2
	mov r7, r12, lsl #3
	str r7, [sp, #0x10]
	str r8, [sp, #0x14]
	str r8, [sp, #0x18]
	ldr r0, [r0]
	ldr r7, [r0]
	ldr r7, [r7, #8]
	blx r7
	str r6, [sp]
	str r5, [sp, #4]
	ldr r1, [r9, #4]
	ldr r0, _0212558C ; =0x02099F50
	str r1, [sp, #8]
	ldrh r2, [r9, #8]
	mov r3, r4
	mov r1, r8
_02125534:
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r4, [r9, #0xa]
	mov r2, #0xc
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r8, [sp, #0x14]
	str r8, [sp, #0x18]
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldrh r2, [r9, #8]
	ldrh r1, [r9, #0xa]
	ldr r0, [r9, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl FUN_020026d0
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02125584: .word 0x020A0640
_02125588: .word 0x02099ED0
_0212558C: .word 0x02099F50
	arm_func_end FUN_ov124_02125338

	arm_func_start FUN_ov124_02125590
FUN_ov124_02125590: ; 0x02125590
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x11]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x18]
	strb r4, [r6, #0x11]
	cmp r0, #0
	bne _021255D4
	ldrh r0, [r6, #0x14]
	cmp r0, #0
	beq _021255D8
	mov r1, r4
	bl  FUN_ov16_020efa9c
	b _021255D4
_021255D4:
	mov r4, r0
_021255D8:
	cmp r5, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl FUN_ov124_02125338
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_ov124_02125338
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov124_02125590

	arm_func_start FUN_ov124_02125604
FUN_ov124_02125604: ; 0x02125604
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r5, [sp, #0x54]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x38]
	ldr r8, [sp, #0x48]
	ldr r7, [sp, #0x4c]
	mov r10, r1
	mov r9, r3
	cmp r4, #0
	ldr r0, [sp, #0x58]
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x50]
	cmp r7, r1
	movgt r7, r1
	ldr r1, [r4, #0xc]
	cmn r7, #1
	add r6, r4, r1
	addle sp, sp, #0x24
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r2, lsl #0x18
	and r0, r0, #0xff
	mov r5, r1, asr #0x18
	and r4, r9, #0xff
	and r11, r8, #0xff
	str r0, [sp, #0x20]
_02125674:
	mov r0, #1
	str r0, [sp]
	ldr r1, _02125710 ; =0x66666667
	str r0, [sp, #4]
	smull r2, r0, r1, r7
	mov r1, r7, lsr #0x1f
	add r0, r1, r0, asr #2
	mov r1, #0xa
	smull r0, r2, r1, r0
	sub r0, r7, r0
	mul r1, r0, r9
	mul r0, r8, r1
	ldr r1, _02125710 ; =0x66666667
	mov r3, r7
	smull r2, r7, r1, r3
	mov r1, r3, lsr #0x1f
	add r7, r1, r7, asr #2
	mov r1, r10, lsl #0x18
	mov r1, r1, asr #0x18
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r2, #0
	ldr r1, [sp, #0x20]
	str r11, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r6, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _02125714 ; =0x0209F5C0
	mov r1, #1
	mov r3, r2
	bl  FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r7, #0
	mov r10, r0, asr #0x10
	bgt _02125674
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125710: .word 0x66666667
_02125714: .word 0x0209F5C0
	arm_func_end FUN_ov124_02125604

	arm_func_start FUN_ov124_02125718
FUN_ov124_02125718: ; 0x02125718
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	add r4, r1, #0x10
	mov r0, #0xc
	mla r0, r4, r0, r6
	ldr r12, [r0, #0x38]
	mov r5, r2
	mov r4, r3
	cmp r12, #0
	beq _0212579C
	mov r2, #1
	str r2, [sp]
	mov r0, r5, lsl #0x18
	mov r3, r4, lsl #0x18
	str r2, [sp, #4]
	add r1, r1, #7
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r3, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	and r0, r1, #0xff
	str r0, [sp, #0x18]
	ldr r1, [r12, #0xc]
	ldr r0, _02125808 ; =0x0209F5C0
	add r12, r12, r1
	mov r1, r2
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0212579C:
	ldr r6, [r6, #0xec]
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
	mov r0, #6
	str r0, [sp, #0x18]
	ldr r3, [r6, #0xc]
	ldr r0, _02125808 ; =0x0209F5C0
	add r4, r6, r3
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02125808: .word 0x0209F5C0
	arm_func_end FUN_ov124_02125718

	arm_func_start FUN_ov124_0212580c
FUN_ov124_0212580c: ; 0x0212580C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	ldr lr, [sp, #0x38]
	mov r4, #0xc
	mul r5, r3, lr
	mla r3, r1, r4, r0
	ldr r0, [sp, #0x3c]
	ldr r12, [r3, #0x38]
	mul r4, r0, r5
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, [r12, #0xc]
	ldr r3, [sp, #0x30]
	ldr r5, [sp, #0x34]
	mov r1, #1
	str r1, [sp]
	mov r3, r3, lsl #0x18
	mov r5, r5, lsl #0x18
	add r12, r12, r6
	and r6, r2, #0xff
	mov r2, #0
	str r1, [sp, #4]
	mov r3, r3, asr #0x18
	str r3, [sp, #8]
	mov r3, r5, asr #0x18
	str r3, [sp, #0xc]
	and r3, lr, #0xff
	str r3, [sp, #0x10]
	and r0, r0, #0xff
	str r0, [sp, #0x14]
	ldr r0, _021258A8 ; =0x0209F5C0
	mov r3, r2
	str r6, [sp, #0x18]
	add r4, r12, r4, lsl #1
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_021258A8: .word 0x0209F5C0
	arm_func_end FUN_ov124_0212580c

	arm_func_start FUN_ov124_021258ac
FUN_ov124_021258ac: ; 0x021258AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r2, _021259AC ; =0x020A0640
	ldrb r2, [r2, #0x89]
	cmp r2, #0
	bne _02125948
	mov r3, #0xc
	mul r2, r1, r3
	add r0, r0, #0x20
	ldr r12, [r0, r2]
	add r2, r0, r2
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r0, r1, lsl #7
	add r1, r0, #8
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, lsl #0x15
	ldrh r4, [r2, #0xa]
	ldrh lr, [r2, #8]
	mov r2, #1
	mov r0, r0, asr #0x18
	str r2, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	and r0, lr, #0xff
	str r0, [sp, #0x10]
	and r0, r4, #0xff
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp, #0x18]
	ldr r0, _021259B0 ; =0x0209F5C0
	mov r1, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02125948:
	ldr r12, [r0, #0x20]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	ldrh r3, [r0, #0x2a]
	ldrh r2, [r0, #0x28]
	mov r1, #1
	mov r0, #8
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	and r0, r2, #0xff
	str r0, [sp, #0x10]
	and r0, r3, #0xff
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp, #0x18]
	ldr r0, _021259B0 ; =0x0209F5C0
	mov r2, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_021259AC: .word 0x020A0640
_021259B0: .word 0x0209F5C0
	arm_func_end FUN_ov124_021258ac

	arm_func_start FUN_ov124_021259b4
FUN_ov124_021259b4: ; 0x021259B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r7, r2
	mov r5, r0
	mov r0, r7
	mov r4, r1
	bl FUN_0206dcd4
	ldrb r10, [r0, #0x4a]
	mov r0, r7
	bl FUN_0204fb60
	str r0, [sp, #0x1c]
	mov r9, #0
	ldr r0, _02125EAC ; =0x0209BA20
	mov r1, r7
	mov r2, #0xf
	mov r3, r9
	ldrb r6, [r7, #0x5a]
	bl FUN_0204f02c
	str r0, [sp, #0x18]
	mov r0, r7
	bl FUN_0206ccec
	str r0, [sp, #0x14]
	mov r0, r7
	bl FUN_0206cc94
	mov r11, r0
	ldr r0, [sp, #0x1c]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02125A50
_02125A28: ; jump table
	b _02125A50 ; case 0
	b _02125A3C ; case 1
	b _02125A44 ; case 2
	b _02125A4C ; case 3
	b _02125A50 ; case 4
_02125A3C:
	mov r9, #1
	b _02125A50
_02125A44:
	mov r9, #2
	b _02125A50
_02125A4C:
	mov r9, #3
_02125A50:
	ldr r0, [sp, #0x18]
	mov r7, #0
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02125A9C
_02125A64: ; jump table
	b _02125A9C ; case 0
	b _02125A78 ; case 1
	b _02125A84 ; case 2
	b _02125A8C ; case 3
	b _02125A94 ; case 4
_02125A78:
	mov r7, #0xb
_02125A7C:
	mov r8, #4
	b _02125A9C
_02125A84:
	mov r7, #0xc
	b _02125A7C
_02125A8C:
	mov r7, #0xd
	b _02125A98
_02125A94:
	mov r7, #0xe
_02125A98:
	mov r8, #5
_02125A9C:
	ldr r0, _02125EB0 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	bne _02125D04
	mov r0, r4, lsl #7
	add r1, r0, #0x48
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	mov r2, #2
	str r0, [sp, #8]
	mov r3, r2
	str r3, [sp, #0xc]
	mov r0, r5
	mov r1, #3
	mov r3, #0
	bl FUN_ov124_0212580c
	mov r0, #2
	stmia sp, {r0, r10}
	mov r1, r4, lsl #7
	add r3, r1, #0x60
	mov r0, #0x63
	mov r1, r3, asr #2
	add r1, r3, r1, lsr #29
	str r0, [sp, #8]
	mov r10, #4
	mov r1, r1, lsl #0xd
	str r10, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r2, #0xf
	mov r0, r5
	mov r1, r1, asr #0x10
	mov r3, #1
	bl FUN_ov124_02125604
	cmp r9, #0
	blt _02125B7C
	mov r0, r4, lsl #7
	add r1, r0, #0x48
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	mov r0, #0x11
	stmib sp, {r0, r10}
	mov r2, #2
	mov r3, r9
	mov r9, r2
	mov r0, r5
	mov r1, #5
	str r9, [sp, #0xc]
	bl FUN_ov124_0212580c
_02125B7C:
	cmp r7, #0
	mov r1, #3
	mov r10, #1
	mov r9, #2
	blt _02125BC8
	mov r0, r4, lsl #7
	add r2, r0, #0x48
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	mov r0, #0x13
	stmib sp, {r0, r1}
	mov r0, r5
	mov r1, r7
	mov r2, r8
	mov r3, #0
	str r9, [sp, #0xc]
	bl FUN_ov124_0212580c
_02125BC8:
	mov r0, r4, lsl #7
	add r1, r0, #0x68
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	mov r0, #0x11
	stmib sp, {r0, r9}
	mov r3, #1
	cmp r6, #1
	moveq r3, #0
	mov r0, r5
	mov r1, #6
	mov r2, #3
	str r9, [sp, #0xc]
	bl FUN_ov124_0212580c
	mov r0, r4, lsl #7
	add r1, r0, #0x48
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	mov r6, #0x15
	mov r7, #7
	stmib sp, {r6, r9}
	mov r0, r5
	mov r1, r7
	mov r2, r9
	mov r3, #0
	str r10, [sp, #0xc]
	bl FUN_ov124_0212580c
	mov r0, r4, lsl #7
	add r1, r0, #0x48
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	mov r8, #0x16
	stmib sp, {r8, r9}
	mov r0, r5
	mov r1, r7
	mov r2, r9
	mov r3, r10
	str r10, [sp, #0xc]
	bl FUN_ov124_0212580c
	mov r1, r4, lsl #7
	add r3, r1, #0x68
	mov r1, r3, asr #2
	add r1, r3, r1, lsr #29
	mov r1, r1, lsl #0xd
	ldr r0, [sp, #0x14]
	add r7, r7, #0x3e0
	str r10, [sp]
	stmib sp, {r0, r7}
	mov r0, #8
	str r0, [sp, #0xc]
	mov r2, r6
	str r9, [sp, #0x10]
	mov r0, r5
	mov r1, r1, asr #0x10
	mov r3, r10
	bl FUN_ov124_02125604
	stmia sp, {r10, r11}
	mov r1, r4, lsl #7
	add r4, r1, #0x68
	str r7, [sp, #8]
	mov r1, #9
	str r1, [sp, #0xc]
	mov r1, r4, asr #2
	add r1, r4, r1, lsr #29
	mov r1, r1, lsl #0xd
	mov r0, r5
	mov r2, r8
	mov r3, r10
	mov r1, r1, asr #0x10
	str r9, [sp, #0x10]
	bl FUN_ov124_02125604
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125D04:
	mov r0, #0x12
	str r0, [sp]
	mov r4, #2
	mov r0, #0xf
	stmib sp, {r0, r4}
	mov r0, r5
	mov r2, r4
	str r4, [sp, #0xc]
	mov r1, #3
	mov r3, #0
	bl FUN_ov124_0212580c
	stmia sp, {r4, r10}
	mov r0, #0x63
	str r0, [sp, #8]
	mov r10, #4
	str r10, [sp, #0xc]
	mov r2, #0xf
	mov r0, r5
	mov r1, #0x15
	mov r3, #1
	str r4, [sp, #0x10]
	bl FUN_ov124_02125604
	cmp r9, #0
	blt _02125D8C
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x11
	stmib sp, {r0, r10}
	mov r0, r5
	mov r2, r4
	mov r3, r9
	mov r1, #5
	str r4, [sp, #0xc]
	bl FUN_ov124_0212580c
_02125D8C:
	cmp r7, #0
	mov r0, #3
	mov r9, #1
	mov r4, #2
	blt _02125DCC
	mov r1, #0x12
	str r1, [sp]
	mov r1, #0x13
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, r5
	mov r1, r7
	mov r2, r8
	mov r3, #0
	str r4, [sp, #0xc]
	bl FUN_ov124_0212580c
_02125DCC:
	mov r8, #0x16
	str r8, [sp]
	mov r0, #0x11
	stmib sp, {r0, r4}
	mov r3, #1
	cmp r6, #1
	moveq r3, #0
	mov r0, r5
	mov r1, #6
	mov r2, #3
	str r4, [sp, #0xc]
	bl FUN_ov124_0212580c
	mov r7, #0x12
	mov r10, #7
	str r7, [sp]
	mov r6, #0x15
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, r5
	str r9, [sp, #0xc]
	mov r1, r10
	mov r2, r4
	mov r3, #0
	bl FUN_ov124_0212580c
	stmia sp, {r7, r8}
	str r4, [sp, #8]
	mov r0, r5
	mov r1, r10
	mov r2, r4
	mov r3, r9
	str r9, [sp, #0xc]
	bl FUN_ov124_0212580c
	ldr r0, [sp, #0x14]
	add r7, r10, #0x3e0
	str r9, [sp]
	stmib sp, {r0, r7}
	mov r0, #8
	str r0, [sp, #0xc]
	mov r2, r6
	str r4, [sp, #0x10]
	mov r0, r5
	mov r1, r8
	mov r3, r9
	bl FUN_ov124_02125604
	stmia sp, {r9, r11}
	str r7, [sp, #8]
	mov r1, #9
	str r1, [sp, #0xc]
	mov r0, r5
	mov r3, r9
	mov r1, r8
	mov r2, r8
	str r4, [sp, #0x10]
	bl FUN_ov124_02125604
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125EAC: .word 0x0209BA20
_02125EB0: .word 0x020A0640
	arm_func_end FUN_ov124_021259b4

	arm_func_start FUN_ov124_02125eb4
FUN_ov124_02125eb4: ; 0x02125EB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r4, [r5, #0x18]
	cmp r4, #0
	bne _02125EE8
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
	mov r4, r0
_02125EE8:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _02126020 ; =0x020A0640
	mov r8, #1
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	bne _02125FB8
	mov r10, #0
	mov r6, #3
	mov r9, #0xf
	mov r0, r5
	mov r1, r10
	mov r2, r6
	mov r3, r9
	bl FUN_ov124_02125718
	mov r7, #0x11
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r9
	bl FUN_ov124_02125718
	mov r0, r5
	mov r1, r10
	bl FUN_ov124_021258ac
	mov r0, r5
	mov r1, r8
	bl FUN_ov124_021258ac
	mov r2, r4
	mov r0, r5
	mov r1, r8
	bl FUN_ov124_021259b4
	stmia sp, {r6, r9}
	mov r6, #8
	str r6, [sp, #8]
	mov r4, #0xa
	mov r3, r10
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r4
	mov r2, r8
	bl FUN_ov124_02126024
	stmia sp, {r7, r9}
	str r6, [sp, #8]
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, #0x80
	str r6, [sp, #0xc]
	bl FUN_ov124_02126024
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02125FB8:
	mov r7, #7
	mov r6, #0xf
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_ov124_02125718
	mov r0, r5
	mov r1, r8
	bl FUN_ov124_021258ac
	mov r0, r5
	mov r2, r4
	mov r1, r8
	bl FUN_ov124_021259b4
	str r7, [sp]
	str r6, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, r5
	mov r2, r8
	mov r1, #0xa
	mov r3, #0
	bl FUN_ov124_02126024
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02126020: .word 0x020A0640
	arm_func_end FUN_ov124_02125eb4

	arm_func_start FUN_ov124_02126024
FUN_ov124_02126024: ; 0x02126024
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r6, [r0, #0x38]
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r12, [r6, #0xc]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x34]
	mov r1, #1
	str r1, [sp]
	mov r0, r0, lsl #0x18
	mov lr, r4, lsl #0x18
	ldr r5, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	add r12, r6, r12
	and r2, r2, #0xff
	add r12, r3, r12
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, lr, asr #0x18
	str r0, [sp, #0xc]
	and r0, r5, #0xff
	str r0, [sp, #0x10]
	and r0, r4, #0xff
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, _021260B8 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_021260B8: .word 0x0209F5C0
	arm_func_end FUN_ov124_02126024

	arm_func_start FUN_ov124_021260bc
FUN_ov124_021260bc: ; 0x021260BC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, #1
	mov r6, r0
	mov r4, #0
	ldr r0, _02126150 ; =0x0209F5C0
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_020f5f64
	str r4, [sp]
	str r4, [sp, #4]
	mov r12, #0x20
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r4
	str r12, [sp, #8]
	mov r12, #0x18
	str r12, [sp, #0xc]
	bl FUN_ov124_02126024
	mov r0, #0xd
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r0, r6
	str r1, [sp, #0xc]
	mov r2, r5
	mov r3, r4
	mov r1, #2
	bl FUN_ov124_0212580c
	mov r0, r6
	bl FUN_ov124_02125eb4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_02126150: .word 0x0209F5C0
	arm_func_end FUN_ov124_021260bc

	arm_func_start FUN_ov124_02126154
FUN_ov124_02126154: ; 0x02126154
	ldr r0, _02126164 ; =0x0209F5C0
	ldr r12, _02126168 ; = FUN_ov16_020f672c
	mov r1, #1
	bx r12
_02126164: .word 0x0209F5C0
_02126168: .word  FUN_ov16_020f672c
	arm_func_end FUN_ov124_02126154

	arm_func_start FUN_ov124_0212616c
FUN_ov124_0212616c: ; 0x0212616C
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x20
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _021261AC
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	mov r2, r0
_021261AC:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov124_0212616c

	arm_func_start FUN_ov124_021261b4
FUN_ov124_021261b4: ; 0x021261B4
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x20
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _021261FC
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_020058cc
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_021261FC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov124_021261b4

	arm_func_start FUN_ov124_02126204
FUN_ov124_02126204: ; 0x02126204
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x38
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
	mov r0, #0
	bl  FUN_ov16_020f1a60
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov124_02126204

	arm_func_start FUN_ov124_02126268
FUN_ov124_02126268: ; 0x02126268
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r6, r1, r4
	add r5, r0, #0x38
	ldr r7, [r5, r6]
	ldr r8, [sp, #0x20]
	mov r4, r2
	mov r9, r3
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r9]
	mov r0, r7
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [r9]
	ldr r1, [r5, r6]
	ldr r2, [r8]
	mov r0, #2
	bl  FUN_ov16_020f1a60
	str r0, [r8]
	bl FUN_02005c3c
	mov r1, r4, lsl #9
	ldmib r7, {r0, r2}
	add r0, r7, r0
	add r1, r1, #0x4000
	bl FUN_02005c54
	bl FUN_02005cbc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov124_02126268

	arm_func_start FUN_ov124_021262d8
FUN_ov124_021262d8: ; 0x021262D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r6, #0
	add r4, sp, #0xc
	mov r8, #0x40
	mov r5, #1
	add r7, sp, #4
	mov r10, r0
	mov r1, r5
	mov r2, r6
	mov r3, r4
	str r6, [sp, #0xc]
	str r8, [sp, #4]
	str r7, [sp]
	bl FUN_ov124_02126268
	mov r0, r10
	mov r2, r5
	mov r3, r4
	mov r1, #0xa
	str r7, [sp]
	bl FUN_ov124_02126268
	bl FUN_02004fac
	mov r4, #0x20
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_0200787c
	bl FUN_02004fac
	mov r1, r4
	bl FUN_020026d0
	bl FUN_02004f58
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_0200787c
	bl FUN_02004f58
	mov r1, r4
	bl FUN_020026d0
	mov r0, r10
	mov r1, r6
	mov r2, r6
	str r6, [sp, #0x10]
	str r4, [sp, #8]
	bl FUN_ov124_0212616c
	mov r2, r4
	mov r4, r0
	mov r0, r10
	mov r1, r6
	bl FUN_ov124_021261b4
	mov r2, r4
	mov r4, r0
	mov r0, r10
	mov r1, r5
	bl FUN_ov124_0212616c
	mov r8, r0
	mov r1, r5
	mov r2, r4
	mov r0, r10
	bl FUN_ov124_021261b4
	mov r9, r0
	mov r11, r5
	mov r4, #0xc
_021263D0:
	mla r7, r6, r4, r10
	ldr r0, [r7, #0xf8]
	cmp r0, #0
	beq _02126404
	add r1, r8, #1
	add r2, r6, #7
	bl  FUN_ov16_020f18e8
	mov r8, r0
	ldr r1, [r7, #0xf8]
	mov r0, r5
	mov r2, r9
	bl  FUN_ov16_020f1a60
	mov r9, r0
_02126404:
	ldr r0, [r7, #0x110]
	cmp r0, #0
	beq _0212641C
	mov r1, r11
	add r2, r6, #7
	bl  FUN_ov16_020f1160
_0212641C:
	add r6, r6, #1
	cmp r6, #2
	blt _021263D0
	ldr r6, _02126478 ; =0x021267AC
	add r5, sp, #8
	add r4, sp, #0x10
_02126434:
	mov r0, r10
	mov r3, r4
	ldmia r6, {r1, r2}
	str r5, [sp]
	bl FUN_ov124_02126204
	ldr r0, [r6, #8]!
	cmp r0, #0
	bne _02126434
	mov r0, r10
	mov r3, r4
	mov r1, #0xf
	mov r2, #6
	str r5, [sp]
	bl FUN_ov124_02126204
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126478: .word 0x021267AC
	arm_func_end FUN_ov124_021262d8

	arm_func_start FUN_ov124_0212647c
FUN_ov124_0212647c: ; 0x0212647C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl  FUN_ov16_020f51a8
	mov r0, #0xc
	bl  FUN_ov16_020f4894
	ldr r3, _02126564 ; =0x04001008
	mov r5, #0
	ldrh r2, [r3]
	mov r1, r5
	add r0, r4, #0x20
	bic r2, r2, #3
	strh r2, [r3]
	ldrh r6, [r3, #2]
	mov r2, #0x18
	bic r6, r6, #3
	orr r6, r6, #1
	strh r6, [r3, #2]
	ldrh r6, [r3, #4]
	bic r6, r6, #3
	orr r6, r6, #2
	strh r6, [r3, #4]
	ldrh r6, [r3, #6]
	bic r6, r6, #3
	orr r6, r6, #3
	strh r6, [r3, #6]
	bl MemWrite
	add r0, r4, #0x38
	mov r1, r5
	mov r2, #0xf0
	bl MemWrite
	ldr r0, _02126568 ; =0x0209A250
	mov r1, #0x98
	bl FUN_0202de44
	str r0, [r4, #0x1c]
	strb r5, [r4, #0x11]
	strh r5, [r4, #0x14]
	strb r5, [r4, #0x16]
	strb r5, [r4, #0x17]
	str r5, [r4, #0x18]
	mov r0, r4
	bl FUN_ov124_02124e0c
	ldr r7, _0212656C ; =0x0209F5C0
	mov r6, #1
	mov r0, r7
	mov r1, r6
	bl  FUN_ov16_020f5a58
	bl FUN_02004cc0
	mov r5, r0
	bl FUN_02004d14
	mov r4, r0
	bl FUN_02004db8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r0, [sp]
	mov r0, r7
	bl  FUN_ov16_020f5b6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02126564: .word 0x04001008
_02126568: .word 0x0209A250
_0212656C: .word 0x0209F5C0
	arm_func_end FUN_ov124_0212647c

	arm_func_start FUN_ov124_02126570
FUN_ov124_02126570: ; 0x02126570
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02126588: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _021265AC ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _021265C8 ; case 3
	b _02126628 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _0212663C ; case 6
	b _02126648 ; case 7
	b _02126674 ; case 8
_021265AC:
	add r0, r4, #0x128
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021265C8:
	ldr r1, [r4, #0xc]
	bl FUN_ov124_02125590
	add r0, r4, #0x38
	mov r1, #0x14
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _021265FC
	cmp r0, #2
	beq _0212660C
	ldmfd sp!, {r4, pc}
_021265FC:
	mov r0, r4
	mov r1, #2
	bl FUN_ov124_021251a8
	ldmfd sp!, {r4, pc}
_0212660C:
	mov r0, r4
	bl FUN_ov124_02124e98
	mov r0, r4
	bl FUN_ov124_02124d9c
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126628:
	bl FUN_ov124_021260bc
	mov r0, #3
	bl  FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_0212663C:
	mov r0, r4
	bl FUN_ov124_02126154
	ldmfd sp!, {r4, pc}
_02126648:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov124_02125254
	mov r0, r4
	mov r1, #1
	bl FUN_ov124_021251a8
	ldmfd sp!, {r4, pc}
_02126674:
	bl FUN_ov124_02125254
	mov r0, r4
	mov r1, #1
	bl FUN_ov124_021251a8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov124_02126570

	arm_func_start FUN_ov124_02126688
FUN_ov124_02126688: ; 0x02126688
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _021266A8
	cmp r1, #6
	beq _021266B8
	ldmfd sp!, {r4, pc}
_021266A8:
	bl FUN_ov124_021262d8
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021266B8:
	ldr r0, _021266C8 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_021266C8: .word 0x0209F5C0
	arm_func_end FUN_ov124_02126688

	arm_func_start FUN_ov124_021266cc
FUN_ov124_021266cc: ; 0x021266CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	bl FUN_ov124_02125254
	mov r0, r4
	bl FUN_ov124_02124e60
	mov r9, #0
	ldr r8, _0212677C ; =0x0209A250
	mov r7, r9
	mov r6, r9
	mov r5, #0xc
_021266F4:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x20]
	cmp r1, #0
	beq _02126710
	mov r0, r8
	bl FUN_0202e1c0
	str r7, [r10, #0x20]
_02126710:
	ldr r1, [r10, #0x24]
	cmp r1, #0
	beq _02126728
	mov r0, r8
	bl FUN_0202e1c0
	str r6, [r10, #0x24]
_02126728:
	add r9, r9, #1
	cmp r9, #2
	blt _021266F4
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _02126750
	ldr r0, _0212677C ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x1c]
_02126750:
	mov r5, #1
	ldr r0, _02126780 ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5af0
	bl  FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212677C: .word 0x0209A250
_02126780: .word 0x0209F5C0
	arm_func_end FUN_ov124_021266cc

	arm_func_start FUN_ov124_02126784
FUN_ov124_02126784: ; 0x02126784
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov124_02126784

	arm_func_start FUN_ov124_02126798
FUN_ov124_02126798: ; 0x02126798
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov124_02126798

	arm_func_start FUN_ov124_021267a0
FUN_ov124_021267a0: ; 0x021267A0
	bx lr
	arm_func_end FUN_ov124_021267a0

	arm_func_start FUN_ov124_021267a4
FUN_ov124_021267a4: ; 0x021267A4
	bx lr
	arm_func_end FUN_ov124_021267a4

	arm_func_start FUN_ov124_021267a8
FUN_ov124_021267a8: ; 0x021267A8
	bx lr
	arm_func_end FUN_ov124_021267a8
_021267AC:
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x28, 0x69, 0x12, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x48, 0x69, 0x12, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x58, 0x69, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00, 0x78, 0x69, 0x12, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x88, 0x69, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x18, 0x69, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x38, 0x69, 0x12, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x68, 0x69, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x98, 0x69, 0x12, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov124_0212688c
FUN_ov124_0212688c: ; 0x0212688C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _021268D4 ; =0x02126900
	str r0, [r4, #0xc]
	ldr r0, _021268D8 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _021268DC ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_021268D4: .word 0x02126900
_021268D8: .word 0x00009CCD
_021268DC: .word 0x0000EA3C
	arm_func_end FUN_ov124_0212688c
	; 0x021268E0


	.rodata
	.incbin "/incbin/overlay124_rodata.bin"

	.bss
	.space 0x0
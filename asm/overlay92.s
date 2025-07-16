
	.include "/macros/function.inc"
	.include "/include/overlay92.inc"

	.text
	arm_func_start FUN_ov92_02124d00
FUN_ov92_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r4, #0
	mov r5, #1
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #8]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	beq _02124D3C
	sub r0, r0, #4
	cmp r0, #1
	bhi _02124D4C
_02124D3C:
	str r5, [r7, #0x120]
	str r6, [r7, #0x124]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124D4C:
	adds r0, r7, #0x1e
	add r1, r7, #0x26
	cmpne r1, #0
	str r5, [r7, #0x14]
	str r6, [r7, #0x18]
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r2, [r6]
	strh r2, [r0]
	ldrb r2, [r6, #0x35c]
	tst r2, #2
	addne r2, r6, #0x200
	ldrneh r2, [r2, #0x4e]
	moveq r2, r4
	strh r2, [r1]
	ldrsb r3, [r6, #4]
	add r2, r6, #0x200
	strb r3, [r0, #2]
	ldrsb r2, [r2, #0x52]
	ldr r3, [r7, #0x14]
	strb r2, [r1, #2]
	ldrb r2, [r6, #0x35c]
	tst r2, #1
	movne r2, #1
	moveq r2, #0
	strb r2, [r7, #0x1c]
	ldrh r12, [r6, #2]
	add r2, r6, #0x200
	cmp r3, #0
	strh r12, [r0, #4]
	ldrh r0, [r2, #0x50]
	strh r0, [r1, #4]
	ldrne r0, [r7, #0x18]
	cmpne r0, #0
	bne _02124DF0
	mov r1, #7
	mov r0, #4
	str r1, [r7, #8]
	bl  FUN_ov16_020f1528
	strb r5, [r7, #0x10]
	b _02124E20
_02124DF0:
	mov r0, r7
	bl FUN_ov92_021260fc
	ldrb r0, [r7, #0x11]
	cmp r0, #0
	beq _02124E14
	ldr r0, _02124E34 ; =0x0209F5C0
	mov r1, #1
	strb r4, [r7, #0x11]
	bl  FUN_ov16_020f5af0
_02124E14:
	mov r0, r7
	mov r1, #1
	bl FUN_ov92_02126130
_02124E20:
	ldrb r1, [r6, #0x35c]
	mov r0, #1
	and r1, r1, #0xfe
	strb r1, [r6, #0x35c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124E34: .word unk_0209F5C0
	arm_func_end FUN_ov92_02124d00

	arm_func_start FUN_ov92_02124e38
FUN_ov92_02124e38: ; 0x02124E38
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02124E68
	ldr r0, _02124ED0 ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_02124E68:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02124E84
	ldr r0, _02124ED0 ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_02124E84:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02124EBC
_02124EA4:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02124EA4
_02124EBC:
	ldr r1, [r4, #4]
	mov r2, r5, lsl #5
	mov r0, #0
	bl MIi_CpuClear32
	ldmfd sp!, {r3, r4, r5, pc}
_02124ED0: .word unk_0209A250
	arm_func_end FUN_ov92_02124e38

	arm_func_start FUN_ov92_02124ed4
FUN_ov92_02124ed4: ; 0x02124ED4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r12, [r4, #0x6c]
	cmp r12, #0
	beq _02124F2C
	mov r1, #1
	str r1, [sp]
	mov r2, #0
	stmib sp, {r1, r2}
	str r2, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0212503C ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02124F2C:
	ldr r12, [r4, #0x78]
	cmp r12, #0
	beq _02124F7C
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #5
	mov r2, #0
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0x1b
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0212503C ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02124F7C:
	ldr r12, [r4, #0x84]
	cmp r12, #0
	beq _02124FD8
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0x14
	str r0, [sp, #0x10]
	mov r0, #0xf
	mov r2, #0
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0212503C ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02124FD8:
	ldr r3, [r4, #0x90]
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	mov r0, #0x12
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _0212503C ; =0x0209F5C0
	add r4, r3, r2
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_0212503C: .word unk_0209F5C0
	arm_func_end FUN_ov92_02124ed4

	arm_func_start FUN_ov92_02125040
FUN_ov92_02125040: ; 0x02125040
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldr r3, [r6, #0xa8]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _021250B0
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
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _0212511C ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021250B0:
	ldr r6, [r6, #0x9c]
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
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r3, [r6, #0xc]
	ldr r0, _0212511C ; =0x0209F5C0
	add r4, r6, r3
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_0212511C: .word unk_0209F5C0
	arm_func_end FUN_ov92_02125040

	arm_func_start FUN_ov92_02125120
FUN_ov92_02125120: ; 0x02125120
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldr r3, [r6, #0xcc]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _02125194
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
	ldr r0, _02125200 ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125194:
	ldr r6, [r6, #0xc0]
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
	ldr r0, _02125200 ; =0x0209F5C0
	add r4, r6, r3
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02125200: .word unk_0209F5C0
	arm_func_end FUN_ov92_02125120

	arm_func_start FUN_ov92_02125204
FUN_ov92_02125204: ; 0x02125204
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr lr, [r4, #0x3c]
	cmp lr, #0
	beq _02125268
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldrh r2, [r4, #0x44]
	mov r3, #0
	ldr r0, _02125374 ; =0x0209F5C0
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r12, [r4, #0x46]
	mov r2, r1
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125268:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	ldrne r12, [r4, #0xe4]
	cmpne r12, #0
	beq _021252BC
	mov r1, #1
	str r1, [sp]
	mov r2, #0
	stmib sp, {r1, r2}
	str r2, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, #0xb
	str r0, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _02125374 ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021252BC:
	ldr lr, [r4, #0x30]
	cmp lr, #0
	beq _02125310
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldrh r12, [r4, #0x38]
	ldr r0, _02125374 ; =0x0209F5C0
	mov r3, r2
	and r12, r12, #0xff
	str r12, [sp, #0x10]
	ldrh r12, [r4, #0x3a]
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r2, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125310:
	ldrh r0, [r4, #0x26]
	cmp r0, #0
	ldrne lr, [r4, #0x48]
	cmpne lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r1, #1
	mov r2, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldrh r12, [r4, #0x50]
	ldr r0, _02125374 ; =0x0209F5C0
	mov r3, r2
	and r12, r12, #0xff
	str r12, [sp, #0x10]
	ldrh r4, [r4, #0x52]
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02125374: .word unk_0209F5C0
	arm_func_end FUN_ov92_02125204

	arm_func_start FUN_ov92_02125378
FUN_ov92_02125378: ; 0x02125378
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x1e]
	cmp r1, #0
	beq _02125398
	mov r1, #0
	mov r2, #5
	bl FUN_ov92_02125040
_02125398:
	ldrh r0, [r4, #0x26]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x18
	mov r2, #0x10
	bl FUN_ov92_02125120
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov92_02125378

	arm_func_start FUN_ov92_021253b8
FUN_ov92_021253b8: ; 0x021253B8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	mov r5, #3
	mov r3, r5
	add r1, r4, #0x30
	mov r2, #0x18
	bl FUN_ov92_02124e38
	ldr r1, [r4, #0x34]
	cmp r1, #0
	ldrne r12, [r4, #0x18]
	cmpne r12, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r4, #0x38]
	ldrh r3, [r4, #0x3a]
	add r0, r12, #8
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldrh r2, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	ldr r0, [r4, #0x34]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov92_021253b8

	arm_func_start FUN_ov92_0212544c
FUN_ov92_0212544c: ; 0x0212544C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r1, r4, #0x3c
	mov r2, #0x18
	mov r3, #0xe
	bl FUN_ov92_02124e38
	ldr r1, [r4, #0x40]
	cmp r1, #0
	ldrne r12, [r4, #0x18]
	cmpne r12, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldrh r2, [r4, #0x44]
	ldrh r3, [r4, #0x46]
	add r0, r12, #0x4a
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldrh r2, [r4, #0x44]
	ldrh r1, [r4, #0x46]
	ldr r0, [r4, #0x40]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov92_0212544c

	arm_func_start FUN_ov92_021254e0
FUN_ov92_021254e0: ; 0x021254E0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r1, r4, #0x48
	mov r2, #0x18
	mov r3, #7
	bl FUN_ov92_02124e38
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	ldrne r12, [r4, #0x18]
	cmpne r12, #0
	ldrneh r0, [r4, #0x26]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #3
	str r2, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldrh r2, [r4, #0x50]
	ldrh r3, [r4, #0x52]
	add r0, r12, #0x56
	add r0, r0, #0x200
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldrh r2, [r4, #0x50]
	ldrh r1, [r4, #0x52]
	ldr r0, [r4, #0x4c]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov92_021254e0

	arm_func_start FUN_ov92_02125584
FUN_ov92_02125584: ; 0x02125584
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	strb r0, [r4, #0x10]
	cmp r1, #1
	beq _021255B4
	cmp r1, #2
	beq _021255E4
	ldmfd sp!, {r4, pc}
_021255B4:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _021255C8
	cmp r0, #2
	ldmnefd sp!, {r4, pc}
_021255C8:
	mov r0, r4
	bl FUN_ov92_021253b8
	mov r0, r4
	bl FUN_ov92_0212544c
	mov r0, r4
	bl FUN_ov92_021254e0
	ldmfd sp!, {r4, pc}
_021255E4:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	cmpne r0, #2
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov92_021253b8
	mov r0, r4
	bl FUN_ov92_0212544c
	mov r0, r4
	bl FUN_ov92_021254e0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov92_02125584

	arm_func_start FUN_ov92_02125610
FUN_ov92_02125610: ; 0x02125610
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	ldr r0, _02125668 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl  FUN_ov16_020f5f64
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02125648
	cmp r0, #1
	cmpne r0, #2
	beq _02125654
	ldmfd sp!, {r4, pc}
_02125648:
	mov r0, r4
	bl FUN_ov92_02124ed4
	ldmfd sp!, {r4, pc}
_02125654:
	mov r0, r4
	bl FUN_ov92_02125378
	mov r0, r4
	bl FUN_ov92_02125204
	ldmfd sp!, {r4, pc}
_02125668: .word unk_0209F5C0
	arm_func_end FUN_ov92_02125610

	arm_func_start FUN_ov92_0212566c
FUN_ov92_0212566c: ; 0x0212566C
	stmfd sp!, {r4, r5, r6, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x54]
	mov r6, r2
	cmp r4, #0
	mov r5, r3
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r4, r0
	add r2, r6, #1
	bl  FUN_ov16_020f1868
	ldrb r1, [sp, #0x10]
	mov r6, r0
	cmp r1, #0
	beq _021256C4
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl  FUN_ov16_020f1138
_021256C4:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov92_0212566c

	arm_func_start FUN_ov92_021256cc
FUN_ov92_021256cc: ; 0x021256CC
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x30
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _0212570C
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	mov r2, r0
_0212570C:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov92_021256cc

	arm_func_start FUN_ov92_02125714
FUN_ov92_02125714: ; 0x02125714
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x30
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _0212575C
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
_0212575C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov92_02125714

	arm_func_start FUN_ov92_02125764
FUN_ov92_02125764: ; 0x02125764
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x30
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _021257AC
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
_021257AC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov92_02125764

	arm_func_start FUN_ov92_021257b4
FUN_ov92_021257b4: ; 0x021257B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r7, r1, r4
	add r6, r0, #0x54
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
	arm_func_end FUN_ov92_021257b4

	arm_func_start FUN_ov92_0212581c
FUN_ov92_0212581c: ; 0x0212581C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x54
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
	arm_func_end FUN_ov92_0212581c

	arm_func_start FUN_ov92_02125880
FUN_ov92_02125880: ; 0x02125880
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r6, #0
	mov r3, #1
	mov r4, r0
	mov r1, r6
	str r3, [sp]
	sub r2, r6, #1
	mov r5, r3
	bl FUN_ov92_0212566c
	ldr r1, [r4, #0x54]
	mov r0, r6
	mov r2, r6
	bl  FUN_ov16_020f1a60
	ldr r3, [r4, #0x54]
	cmp r3, #0
	beq _021258D8
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r6
	add r0, r3, r0
	bl GXS_LoadBG0Scr
_021258D8:
	bl G2S_GetBG1CharPtr
	mov r6, #0x20
	mov r7, #0
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r6
	bl DC_FlushRange
	str r7, [sp, #0x10]
	str r6, [sp, #8]
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r6
	bl DC_FlushRange
	str r7, [sp, #0xc]
	str r6, [sp, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0212594C
	cmp r0, #1
	cmpne r0, #2
	beq _021259CC
	b _02125B34
_0212594C:
	mov r10, #5
	mov r9, #2
	add r5, sp, #8
	add r3, sp, #0x10
	mov r0, r4
	mov r1, r10
	mov r2, r9
	str r5, [sp]
	bl FUN_ov92_021257b4
	add r5, sp, #0xc
	mov r7, #4
	mov r6, #3
	add r8, sp, #4
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r8, [sp]
	bl FUN_ov92_0212581c
	mov r1, r9
	mov r2, r7
	mov r0, r4
	mov r3, r5
	str r8, [sp]
	bl FUN_ov92_0212581c
	mov r0, r4
	mov r1, r6
	mov r2, r10
	mov r3, r5
	str r8, [sp]
	bl FUN_ov92_0212581c
	b _02125B34
_021259CC:
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r5
	bl FUN_ov92_021256cc
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r5
	bl FUN_ov92_02125714
	str r0, [sp, #8]
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	beq _02125A28
	ldr r1, [sp, #0x10]
	mov r2, #8
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r1, [r4, #0xa8]
	ldr r2, [sp, #8]
	mov r0, r5
	bl  FUN_ov16_020f1a60
	str r0, [sp, #8]
_02125A28:
	ldr r0, [r4, #0xb4]
	cmp r0, #0
	beq _02125A40
	mov r1, #1
	mov r2, #8
	bl  FUN_ov16_020f1160
_02125A40:
	ldr r0, [r4, #0xcc]
	cmp r0, #0
	beq _02125A74
	ldr r1, [sp, #0x10]
	mov r2, #0xa
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r1, [r4, #0xcc]
	ldr r2, [sp, #8]
	mov r0, #1
	bl  FUN_ov16_020f1a60
	str r0, [sp, #8]
_02125A74:
	ldr r0, [r4, #0xd8]
	cmp r0, #0
	beq _02125A8C
	mov r1, #1
	mov r2, #0xa
	bl  FUN_ov16_020f1160
_02125A8C:
	mov r5, #0
	ldr r2, [sp, #0xc]
	mov r0, r4
	mov r1, r5
	bl FUN_ov92_021256cc
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r0, r4
	mov r1, r5
	bl FUN_ov92_02125764
	mov r5, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r0, r4
	mov r1, r5
	bl FUN_ov92_021256cc
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r1, r5
	mov r0, r4
	bl FUN_ov92_02125764
	add r5, sp, #0xc
	str r0, [sp, #4]
	add r6, sp, #4
	mov r0, r4
	mov r1, #0xc
	mov r2, #0xb
	mov r3, r5
	str r6, [sp]
	bl FUN_ov92_0212581c
	mov r0, r4
	mov r1, #6
	mov r2, #7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov92_0212581c
	mov r1, #9
	mov r0, r4
	mov r3, r5
	mov r2, r1
	str r6, [sp]
	bl FUN_ov92_0212581c
_02125B34:
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov92_02125880

	arm_func_start FUN_ov92_02125b40
FUN_ov92_02125b40: ; 0x02125B40
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xf0
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _02125B88 ; =0x0212693C
	add r1, r4, #0xf0
	bl  FUN_ov16_020f3054
	ldr r0, _02125B8C ; =0x02126954
	add r1, r4, #0xfc
	bl  FUN_ov16_020f3054
	ldr r0, _02125B90 ; =0x0212696C
	add r1, r4, #0x108
	bl  FUN_ov16_020f3054
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125B88: .word ov92_0212693C
_02125B8C: .word ov92_02126954
_02125B90: .word ov92_0212696C
	arm_func_end FUN_ov92_02125b40

	arm_func_start FUN_ov92_02125b94
FUN_ov92_02125b94: ; 0x02125B94
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0xf0
	mov r1, #4
	bl  FUN_ov16_020f338c
	add r5, r4, #0xf0
	mov r6, #0
	mov r4, #0xc
_02125BB4:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #4
	blt _02125BB4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov92_02125b94

	arm_func_start FUN_ov92_02125bcc
FUN_ov92_02125bcc: ; 0x02125BCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x60]
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r0, #0x14]
	ldr r7, _02125C24 ; =0x021267A0
	cmp r1, #0
	ldrne r7, _02125C28 ; =0x02126788
	ldr r1, [r7]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x54
	mov r4, #0xc
_02125C00:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _02125C00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125C24: .word 0x021267A0
_02125C28: .word 0x02126788
	arm_func_end FUN_ov92_02125bcc

	arm_func_start FUN_ov92_02125c2c
FUN_ov92_02125c2c: ; 0x02125C2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x110
	mov r6, r0
	adds r7, r6, #0x1e
	ldrneh r1, [r7]
	add r5, r6, #0x26
	add r11, sp, #0xc
	add r4, sp, #8
	cmpne r1, #0
	beq _02125E40
	add r8, sp, #0xa8
	ldr r0, _02126054 ; =0x0209BA20
	mov r2, r8
	bl FUN_0204bd64
	add r3, sp, #0x10
	mov r2, #0xe
_02125C6C:
	ldrb r0, [r8, #1]
	ldrb r1, [r8], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125C6C
	add r8, sp, #0xc4
	add r3, sp, #0x2c
	mov r2, #8
_02125C90:
	ldrb r0, [r8, #1]
	ldrb r1, [r8], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125C90
	add r9, sp, #0xd4
	add r3, sp, #0x3c
	mov r2, #0x10
	add r8, sp, #0xc
_02125CB8:
	ldrb r0, [r9, #1]
	ldrb r1, [r9], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125CB8
	ldrb r9, [sp, #0xf4]
	add lr, sp, #8
	ldrb r3, [sp, #0xf5]
	strb r9, [sp, #0x5c]
	ldrh r9, [lr, #0xf8]
	ldrh r2, [sp, #0xf6]
	ldrh r1, [sp, #0xf8]
	ldrh r0, [sp, #0xfa]
	ldrh r12, [sp, #0xfc]
	strb r3, [sp, #0x5d]
	strh r2, [sp, #0x5e]
	strh r1, [sp, #0x60]
	strh r0, [sp, #0x62]
	strh r12, [sp, #0x64]
	ldrh r12, [lr, #0xfe]
	ldrh r10, [sp, #0xfe]
	ldrb r3, [sp, #0x102]
	ldrb r2, [sp, #0x103]
	ldrb r1, [sp, #0x104]
	ldrb r0, [sp, #0x105]
	strh r9, [sp, #0x68]
	strb r3, [sp, #0x6a]
	strb r2, [sp, #0x6b]
	strb r1, [sp, #0x6c]
	strh r10, [sp, #0x66]
	add lr, sp, #0x108
	strb r0, [sp, #0x6d]
	ldrh r0, [lr, #6]
	ldrh r10, [lr]
	ldrb r9, [sp, #0x10a]
	ldrb r3, [sp, #0x10b]
	ldrb r2, [sp, #0x10c]
	ldrb r1, [sp, #0x10d]
	strh r12, [sp, #0x6e]
	strh r10, [sp, #0x70]
	strb r9, [sp, #0x72]
	strb r3, [sp, #0x73]
	strb r2, [sp, #0x74]
	strb r1, [sp, #0x75]
	strh r0, [sp, #0x76]
	ldr r0, [r6, #0xf0]
	cmp r0, #0
	beq _02125DB4
	str r4, [sp]
	ldrb r2, [r7, #2]
	add r1, sp, #0x10
	add r3, sp, #0xc
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _02125DB4
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02126058 ; =0x02126984
	add r1, r6, #0x9c
	bl  FUN_ov16_020f3218
_02125DB4:
	ldr r0, [r6, #0xfc]
	cmp r0, #0
	beq _02125DFC
	str r8, [sp]
	str r4, [sp, #4]
	ldrh r2, [r7, #4]
	add r1, sp, #0x10
	mov r3, #0
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _02125DFC
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _0212605C ; =0x0212699C
	add r1, r6, #0xa8
	bl  FUN_ov16_020f3218
_02125DFC:
	ldr r0, [r6, #0x108]
	cmp r0, #0
	beq _02125E40
	str r4, [sp]
	ldrh r1, [r7, #4]
	mov r7, #0
	add r3, sp, #0xc
	mov r2, r7
	bl  FUN_ov16_020f3744
	cmp r0, #0
	beq _02125E40
	str r7, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02126060 ; =0x021269B4
	add r1, r6, #0xb4
	bl  FUN_ov16_020f3218
_02125E40:
	cmp r5, #0
	ldrneh r1, [r5]
	cmpne r1, #0
	addeq sp, sp, #0x110
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, sp, #0xa8
	ldr r0, _02126054 ; =0x0209BA20
	mov r2, r7
	bl FUN_0204bd64
	add r3, sp, #0x10
	mov r2, #0xe
_02125E6C:
	ldrb r0, [r7, #1]
	ldrb r1, [r7], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125E6C
	add r7, sp, #0xc4
	add r3, sp, #0x2c
	mov r2, #8
_02125E90:
	ldrb r0, [r7, #1]
	ldrb r1, [r7], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125E90
	add r7, sp, #0xd4
	add r3, sp, #0x3c
	mov r2, #0x10
_02125EB4:
	ldrb r0, [r7, #1]
	ldrb r1, [r7], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125EB4
	add r0, sp, #8
	ldrb r8, [sp, #0xf4]
	ldrh r0, [r0, #0xf8]
	ldrb r7, [sp, #0xf5]
	ldrh lr, [sp, #0xf6]
	strb r8, [sp, #0x5c]
	strb r7, [sp, #0x5d]
	strh lr, [sp, #0x5e]
	add lr, sp, #8
	ldrh lr, [lr, #0xfe]
	ldrh r12, [sp, #0xf8]
	ldrh r3, [sp, #0xfa]
	ldrh r2, [sp, #0xfc]
	ldrh r1, [sp, #0xfe]
	ldrb r10, [sp, #0x102]
	strh r12, [sp, #0x60]
	add r12, sp, #0x108
	strh r3, [sp, #0x62]
	strh r2, [sp, #0x64]
	strh r1, [sp, #0x66]
	strh r0, [sp, #0x68]
	strb r10, [sp, #0x6a]
	add r10, sp, #0x108
	ldrh r10, [r10, #6]
	ldrb r9, [sp, #0x103]
	ldrb r8, [sp, #0x104]
	ldrb r7, [sp, #0x105]
	ldrh r12, [r12]
	ldrb r3, [sp, #0x10a]
	ldrb r2, [sp, #0x10b]
	ldrb r1, [sp, #0x10c]
	ldrb r0, [sp, #0x10d]
	strb r9, [sp, #0x6b]
	strb r8, [sp, #0x6c]
	strb r7, [sp, #0x6d]
	strh lr, [sp, #0x6e]
	strh r12, [sp, #0x70]
	strb r3, [sp, #0x72]
	strb r2, [sp, #0x73]
	strb r1, [sp, #0x74]
	strh r10, [sp, #0x76]
	strb r0, [sp, #0x75]
	ldr r0, [r6, #0xf0]
	cmp r0, #0
	beq _02125FB8
	str r4, [sp]
	ldrb r2, [r5, #2]
	add r1, sp, #0x10
	add r3, sp, #0xc
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _02125FB8
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02126064 ; =0x021269CC
	add r1, r6, #0xc0
	bl  FUN_ov16_020f3218
_02125FB8:
	ldr r0, [r6, #0xfc]
	cmp r0, #0
	beq _02126000
	str r11, [sp]
	str r4, [sp, #4]
	ldrh r2, [r5, #4]
	add r1, sp, #0x10
	mov r3, #0
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _02126000
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02126068 ; =0x021269E4
	add r1, r6, #0xcc
	bl  FUN_ov16_020f3218
_02126000:
	ldr r0, [r6, #0x108]
	cmp r0, #0
	addeq sp, sp, #0x110
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r4, [sp]
	ldrh r1, [r5, #4]
	mov r4, #0
	add r3, sp, #0xc
	mov r2, r4
	bl  FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x110
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r4, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _0212606C ; =0x021269FC
	add r1, r6, #0xd8
	bl  FUN_ov16_020f3218
	add sp, sp, #0x110
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126054: .word unk_0209BA20
_02126058: .word ov92_02126984
_0212605C: .word ov92_0212699C
_02126060: .word ov92_021269B4
_02126064: .word ov92_021269CC
_02126068: .word ov92_021269E4
_0212606C: .word ov92_021269FC
	arm_func_end FUN_ov92_02125c2c

	arm_func_start FUN_ov92_02126070
FUN_ov92_02126070: ; 0x02126070
	ldr r12, _02126080 ; = FUN_ov16_020f330c
	add r0, r0, #0x54
	mov r1, #0xd
	bx r12
_02126080: .word  FUN_ov16_020f330c
	arm_func_end FUN_ov92_02126070

	arm_func_start FUN_ov92_02126084
FUN_ov92_02126084: ; 0x02126084
	stmfd sp!, {r4, lr}
	mov r2, #0xc
	mul r2, r1, r2
	add r0, r0, #0x54
	ldr r1, [r0, r2]
	add r4, r0, r2
	cmp r1, #0
	ldrneb r0, [r4, #9]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021260C4
	ldr r0, _021260F8 ; =0x0209A250
	bl FUN_0202e1c0
	b _021260DC
_021260C4:
	ldr r0, _021260F8 ; =0x0209A250
	ldr r0, [r0]
	cmp r0, #0
	beq _021260DC
	mov r2, #1
	bl FUN_0202f678
_021260DC:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	ldmfd sp!, {r4, pc}
_021260F8: .word unk_0209A250
	arm_func_end FUN_ov92_02126084

	arm_func_start FUN_ov92_021260fc
FUN_ov92_021260fc: ; 0x021260FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x54
	mov r1, #0xd
	bl  FUN_ov16_020f338c
	mov r4, #0
_02126114:
	mov r0, r5
	mov r1, r4
	bl FUN_ov92_02126084
	add r4, r4, #1
	cmp r4, #0xd
	blt _02126114
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov92_021260fc

	arm_func_start FUN_ov92_02126130
FUN_ov92_02126130: ; 0x02126130
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _02126150
	cmp r1, #2
	beq _021261DC
	b _021261FC
_02126150:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x54
	mov r2, #0x9c
	bl MI_CpuFill8
	ldr r5, _02126208 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _0212620C ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021261C4
	cmp r0, #1
	cmpne r0, #2
	beq _021261CC
	b _021261D8
_021261C4:
	ldr r0, _02126210 ; =0x02126A14
	b _021261D0
_021261CC:
	ldr r0, _02126214 ; =0x02126A38
_021261D0:
	add r1, r4, #0x60
	bl  FUN_ov16_020f3054
_021261D8:
	b _021261F4
_021261DC:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	cmpne r0, #2
	bne _021261F4
	mov r0, r4
	bl FUN_ov92_02125c2c
_021261F4:
	mov r0, #1
	strb r0, [r4, #0x10]
_021261FC:
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02126208: .word unk_020A8C40
_0212620C: .word unk_020A8440
_02126210: .word ov92_02126A14
_02126214: .word ov92_02126A38
	arm_func_end FUN_ov92_02126130

	arm_func_start FUN_ov92_02126218
FUN_ov92_02126218: ; 0x02126218
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
	mov r2, #0x24
	str r4, [r6, #8]
	str r4, [r6, #0x120]
	str r4, [r6, #0x124]
	bl MI_CpuFill8
	add r0, r6, #0x54
	mov r1, r4
	mov r2, #0x9c
	bl MI_CpuFill8
	strb r4, [r6, #0x10]
	add r0, r6, #0x14
	mov r1, r4
	mov r2, #0x1c
	bl MI_CpuFill8
	str r4, [r6, #0x14]
	mov r0, r6
	bl FUN_ov92_02125b40
	strb r5, [r6, #0x11]
	mov r1, r5
	ldr r0, _021262A4 ; =0x0209F5C0
	bl  FUN_ov16_020f5a58
	ldmfd sp!, {r4, r5, r6, pc}
_021262A4: .word unk_0209F5C0
	arm_func_end FUN_ov92_02126218

	arm_func_start FUN_ov92_021262a8
FUN_ov92_021262a8: ; 0x021262A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x120]
	cmp r1, #0
	movne r2, #0
	ldrne r1, [r4, #0x124]
	strne r2, [r4, #0x120]
	cmpne r1, #0
	beq _021262D8
	ldr r2, [r0]
	ldr r2, [r2, #0x60]
	blx r2
_021262D8:
	ldr r0, [r4, #8]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_021262E8: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02126308 ; case 1
	b _02126334 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _0212638C ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _021263A4 ; case 6
	b _021263B4 ; case 7
_02126308:
	add r0, r4, #0xf0
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov92_021260fc
	mov r0, r4
	mov r1, #1
	bl FUN_ov92_02126130
	ldmfd sp!, {r4, pc}
_02126334:
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl FUN_ov92_02125584
	mov r0, r4
	bl FUN_ov92_02126070
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02126368
	cmp r0, #2
	beq _02126378
	ldmfd sp!, {r4, pc}
_02126368:
	mov r0, r4
	mov r1, #2
	bl FUN_ov92_02126130
	ldmfd sp!, {r4, pc}
_02126378:
	mov r0, r4
	bl FUN_ov92_02125bcc
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0212638C:
	mov r0, r4
	bl FUN_ov92_02125610
	mov r0, #4
	bl  FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_021263A4:
	ldr r0, _021263E4 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_021263B4:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov92_021260fc
	mov r0, r4
	mov r1, #1
	bl FUN_ov92_02126130
	ldmfd sp!, {r4, pc}
_021263E4: .word unk_0209F5C0
	arm_func_end FUN_ov92_021262a8

	arm_func_start FUN_ov92_021263e8
FUN_ov92_021263e8: ; 0x021263E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02126408
	cmp r1, #6
	beq _02126420
	ldmfd sp!, {r4, pc}
_02126408:
	bl FUN_ov92_021264d0
	mov r0, r4
	bl FUN_ov92_02125880
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126420:
	ldr r0, _02126430 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02126430: .word unk_0209F5C0
	arm_func_end FUN_ov92_021263e8

	arm_func_start FUN_ov92_02126434
FUN_ov92_02126434: ; 0x02126434
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	bl FUN_ov92_021260fc
	mov r0, r4
	bl FUN_ov92_02125b94
	mov r9, #0
	ldr r8, _021264C8 ; =0x0209A250
	mov r7, r9
	mov r6, r9
	mov r5, #0xc
_0212645C:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x30]
	cmp r1, #0
	beq _02126478
	mov r0, r8
	bl FUN_0202e1c0
	str r7, [r10, #0x30]
_02126478:
	ldr r1, [r10, #0x34]
	cmp r1, #0
	beq _02126490
	mov r0, r8
	bl FUN_0202e1c0
	str r6, [r10, #0x34]
_02126490:
	add r9, r9, #1
	cmp r9, #3
	blt _0212645C
	mov r5, #1
	ldr r0, _021264CC ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5af0
	bl  FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021264C8: .word unk_0209A250
_021264CC: .word unk_0209F5C0
	arm_func_end FUN_ov92_02126434

	arm_func_start FUN_ov92_021264d0
FUN_ov92_021264d0: ; 0x021264D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x100
	mov r11, r0
	adds r0, r11, #0x1e
	ldrneh r1, [r0]
	add r4, r11, #0x26
	cmpne r1, #0
	beq _0212661C
	add r5, sp, #0x98
	ldr r0, _02126768 ; =0x0209BA20
	mov r2, r5
	bl FUN_0204bd64
	add r3, sp, #0
	mov r2, #0xe
_02126508:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02126508
	add r5, sp, #0xb4
	add r3, sp, #0x1c
	mov r2, #8
_0212652C:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0212652C
	add r5, sp, #0xc4
	add r3, sp, #0x2c
	mov r2, #0x10
_02126550:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02126550
	ldrb r8, [sp, #0xe4]
	ldrb r7, [sp, #0xe5]
	ldrh r6, [sp, #0xe6]
	ldrh r5, [sp, #0xe8]
	ldrh r3, [sp, #0xea]
	ldrh r2, [sp, #0xec]
	ldrh r0, [sp, #0xee]
	ldrh r1, [sp, #0xf0]
	ldrb lr, [sp, #0xf2]
	ldrb r12, [sp, #0xf3]
	ldrb r10, [sp, #0xf4]
	ldrb r9, [sp, #0xf5]
	strb r8, [sp, #0x4c]
	ldrh r8, [sp, #0xf6]
	strb r7, [sp, #0x4d]
	ldrh r7, [sp, #0xf8]
	strh r6, [sp, #0x4e]
	ldrb r6, [sp, #0xfa]
	strh r5, [sp, #0x50]
	ldrb r5, [sp, #0xfb]
	strh r3, [sp, #0x52]
	ldrb r3, [sp, #0xfc]
	strh r2, [sp, #0x54]
	ldrb r2, [sp, #0xfd]
	strh r0, [sp, #0x56]
	ldrh r0, [sp, #0xfe]
	strh r1, [sp, #0x58]
	ldr r1, [r11, #0xb4]
	strb lr, [sp, #0x5a]
	strb r12, [sp, #0x5b]
	strb r10, [sp, #0x5c]
	strb r9, [sp, #0x5d]
	strh r8, [sp, #0x5e]
	strh r7, [sp, #0x60]
	strb r6, [sp, #0x62]
	strb r5, [sp, #0x63]
	strb r3, [sp, #0x64]
	strb r2, [sp, #0x65]
	strh r0, [sp, #0x66]
	cmp r1, #0
	beq _0212661C
	ldr r2, _0212676C ; =0x02099F04
	ldrb r0, [sp, #0x53]
	ldr r2, [r2]
	bl  FUN_ov16_020f0c48
_0212661C:
	cmp r4, #0
	ldrneh r1, [r4]
	cmpne r1, #0
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, sp, #0x98
	ldr r0, _02126768 ; =0x0209BA20
	mov r2, r4
	bl FUN_0204bd64
	add r3, sp, #0
	mov r2, #0xe
_02126648:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02126648
	add r4, sp, #0xb4
	add r3, sp, #0x1c
	mov r2, #8
_0212666C:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0212666C
	add r4, sp, #0xc4
	add r3, sp, #0x2c
	mov r2, #0x10
_02126690:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02126690
	ldrb lr, [sp, #0xe4]
	ldrb r12, [sp, #0xe5]
	ldrh r4, [sp, #0xe6]
	ldrh r3, [sp, #0xe8]
	ldrh r2, [sp, #0xea]
	ldrh r0, [sp, #0xec]
	ldrh r1, [sp, #0xee]
	ldrh r10, [sp, #0xf0]
	ldrb r9, [sp, #0xf2]
	ldrb r8, [sp, #0xf3]
	ldrb r7, [sp, #0xf4]
	ldrb r6, [sp, #0xf5]
	ldrh r5, [sp, #0xf6]
	strb lr, [sp, #0x4c]
	ldrh lr, [sp, #0xf8]
	strb r12, [sp, #0x4d]
	ldrb r12, [sp, #0xfa]
	strh r4, [sp, #0x4e]
	ldrb r4, [sp, #0xfb]
	strh r3, [sp, #0x50]
	ldrb r3, [sp, #0xfc]
	strh r2, [sp, #0x52]
	ldrb r2, [sp, #0xfd]
	strh r0, [sp, #0x54]
	ldrh r0, [sp, #0xfe]
	strh r1, [sp, #0x56]
	ldr r1, [r11, #0xd8]
	strh r10, [sp, #0x58]
	strb r9, [sp, #0x5a]
	strb r8, [sp, #0x5b]
	strb r7, [sp, #0x5c]
	strb r6, [sp, #0x5d]
	strh r5, [sp, #0x5e]
	strh lr, [sp, #0x60]
	strb r12, [sp, #0x62]
	strb r4, [sp, #0x63]
	strb r3, [sp, #0x64]
	strb r2, [sp, #0x65]
	strh r0, [sp, #0x66]
	cmp r1, #0
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, _0212676C ; =0x02099F04
	ldrb r0, [sp, #0x53]
	ldr r2, [r2]
	bl  FUN_ov16_020f0c48
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126768: .word unk_0209BA20
_0212676C: .word unk_02099F04
	arm_func_end FUN_ov92_021264d0

	arm_func_start FUN_ov92_02126770
FUN_ov92_02126770: ; 0x02126770
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov92_02126770

	arm_func_start FUN_ov92_02126784
FUN_ov92_02126784: ; 0x02126784
	bx lr
	arm_func_end FUN_ov92_02126784
_02126788:
	.byte 0xB8, 0x68, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x78, 0x68, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA8, 0x68, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x88, 0x68, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x98, 0x68, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0x58, 0x68, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x68, 0x68, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov92_021267d0
FUN_ov92_021267d0: ; 0x021267D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02126818 ; =0x02126840
	str r0, [r4, #0x10]
	ldr r0, _0212681C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02126820 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02126818: .word ov92_02126840
_0212681C: .word 0x00009CCD
_02126820: .word 0x0000EA3C
	arm_func_end FUN_ov92_021267d0

	.section .sinit, 4
ov92_02126824:
	.word FUN_ov92_021267d0

	.data
	.global ov92_02126840
ov92_02126840:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x62, 0x6C, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x62, 0x6C, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x62, 0x6C, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x62, 0x6C, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x62, 0x6C, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x62, 0x6C, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x62, 0x6C, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x84, 0x67, 0x12, 0x02, 0x70, 0x67, 0x12, 0x02, 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02
	.byte 0x18, 0x62, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xA8, 0x62, 0x12, 0x02, 0xE8, 0x63, 0x12, 0x02
	.byte 0x34, 0x64, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02
	.byte 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02
	.byte 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02
	.byte 0x00, 0x4D, 0x12, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov92_0212693C
ov92_0212693C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov92_02126954
ov92_02126954:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov92_0212696C
ov92_0212696C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov92_02126984
ov92_02126984:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov92_0212699C
ov92_0212699C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov92_021269B4
ov92_021269B4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov92_021269CC
ov92_021269CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov92_021269E4
ov92_021269E4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov92_021269FC
ov92_021269FC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov92_02126A14
ov92_02126A14:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x42, 0x6C, 0x6F, 0x67, 0x31, 0x2E
	.byte 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov92_02126A38
ov92_02126A38:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x42, 0x6C
	.byte 0x6F, 0x67, 0x32, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

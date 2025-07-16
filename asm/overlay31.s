
	.include "/macros/function.inc"
	.include "/include/overlay31.inc"

	.text
	arm_func_start FUN_ov31_02119f00
FUN_ov31_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xbc
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, [r4, #4]
	str r1, [r4, #8]
	mov r6, #1
	mov r5, #0
	bl FUN_0204204c
	cmp r0, #0x1b
	beq _02119F48
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0x1d
	bne _02119F5C
_02119F48:
	bl  FUN_ov16_020f47fc
	mov r0, #6
	bl  FUN_ov16_020f3f60
	strb r6, [r4, #0x4e0]
	b _02119F60
_02119F5C:
	strb r5, [r4, #0x4e0]
_02119F60:
	ldr r0, _0211A23C ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A240 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r1, r5
	add r0, r4, #0x14
	mov r2, #0x60
	bl MI_CpuFill8
	mov r0, r4
	str r5, [r4, #0x74]
	str r5, [r4, #0x78]
	bl FUN_ov31_0211a9b4
	mov r0, r4
	bl FUN_ov31_0211aa70
	add r0, r4, #0xc4
	mov r1, r5
	mov r2, #0x104
	str r6, [r4, #0xb4]
	str r6, [r4, #0xb8]
	str r6, [r4, #0xbc]
	bl MI_CpuFill8
	mov r7, #0x50
	add r0, r4, #0x420
	mov r1, r5
	mov r2, r7
	bl MI_CpuFill8
	add r0, r4, #0x470
	mov r1, r5
	mov r2, r7
	bl MI_CpuFill8
	ldrb r0, [r4, #0x4e0]
	cmp r0, #0
	bne _0211A054
	ldr r0, _0211A244 ; =0x02099F44
	add r5, sp, #0
	ldr r0, [r0]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov131_02141e78
	mov r0, r5
	mov r2, r7
	add r1, r4, #0x420
	bl MI_CpuCopy8
	add r0, sp, #0x50
	mov r2, r7
	add r1, r4, #0x470
	bl MI_CpuCopy8
	add r1, r4, #0xc4
	add r0, sp, #0xa0
	add r1, r1, #0x400
	mov r2, #0x18
	bl MI_CpuCopy8
	ldrb r0, [sp, #0xb8]
	str r0, [r4, #0x4c0]
	b _0211A208
_0211A054:
	ldr r0, _0211A248 ; =0x0209A134
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0x3b0]
	cmpne r0, #0
	addne r6, r0, #0x76
	bne _0211A094
	ldr r0, [r4, #4]
	ldr r1, _0211A24C ; =0x020A1640
	add r0, r0, #0x1000
	ldr r2, [r1, #0x230]
	ldrb r1, [r0, #0x958]
	add r0, r2, #0x58
	add r2, r0, #0x5000
	mov r0, #0x28
	mla r6, r1, r0, r2
_0211A094:
	cmp r6, #0
	beq _0211A208
	ldrh r0, [r6, #0x18]
	mov r12, #1
	mov lr, #0
	strh r0, [sp, #0xa0]
	ldrh r0, [r6, #0x1a]
	add r2, sp, #0x50
	add r1, sp, #0x54
	strh r0, [sp, #0xa2]
	ldrh r0, [r6]
	strh r0, [sp, #0xa4]
	ldrh r0, [r6, #2]
	strh r0, [sp, #0xa6]
	ldrh r0, [r6, #0xc]
	strh r0, [sp, #0xa8]
	ldrh r0, [r6, #0xe]
	strh r0, [sp, #0xaa]
	ldrh r0, [r6, #0x1c]
	strh r0, [sp, #0xac]
	ldrh r0, [r6, #0x1e]
	strh r0, [sp, #0xae]
	ldrh r0, [r6, #0x20]
	strh r0, [sp, #0xb0]
	ldrb r0, [r6, #0x22]
	strb r0, [sp, #0xb2]
	ldrb r0, [r6, #0x23]
	strb r0, [sp, #0xb3]
	ldrb r0, [r6, #0x24]
	strb r0, [sp, #0xb4]
	ldrb r0, [r6, #0x25]
	strb r0, [sp, #0xb5]
	add r0, sp, #0x52
	b _0211A160
_0211A11C:
	add r3, r6, lr, lsl #2
	ldrh r7, [r3, #0xc]
	mov r8, lr, lsl #3
	cmp lr, #2
	strh r7, [r2, r8]
	ldrh r7, [r3, #0xe]
	strh r7, [r1, r8]
	addne r7, lr, #1
	strh r12, [r0, r8]
	addne r7, r6, r7, lsl #2
	ldrneh r8, [r3, #0xe]
	ldrneh r3, [r7, #0xe]
	cmpne r8, r3
	addne r3, lr, #2
	movne r3, r3, lsl #0x10
	movne r12, r3, lsr #0x10
	add lr, lr, #1
_0211A160:
	cmp lr, #3
	blt _0211A11C
	mov r12, #1
	mov r1, #0
	add r0, sp, #0
	b _0211A1C4
_0211A178:
	mov r2, r1, lsl #2
	ldrh r3, [r6, r2]
	mov r2, r1, lsl #3
	add lr, r6, r1, lsl #2
	strh r3, [r0, r2]
	ldrh r3, [lr, #2]
	add r2, r0, r1, lsl #3
	cmp r1, #2
	strh r3, [r2, #4]
	strh r12, [r2, #2]
	addne r2, r1, #1
	addne r2, r6, r2, lsl #2
	ldrneh r3, [lr, #2]
	ldrneh r2, [r2, #2]
	cmpne r3, r2
	addne r2, r1, #2
	movne r2, r2, lsl #0x10
	movne r12, r2, lsr #0x10
	add r1, r1, #1
_0211A1C4:
	cmp r1, #3
	blt _0211A178
	mov r6, #0x18
	add r0, sp, #0
	mov r2, r6
	add r1, r4, #0x420
	bl MI_CpuCopy8
	add r0, sp, #0x50
	mov r2, r6
	add r1, r4, #0x470
	bl MI_CpuCopy8
	add r1, r4, #0xc4
	add r0, sp, #0xa0
	mov r2, r6
	add r1, r1, #0x400
	bl MI_CpuCopy8
	str r5, [r4, #0x4c0]
_0211A208:
	ldr r0, _0211A250 ; =0x020A0640
	mov r1, #0
	ldrb r0, [r0, #0x1a]
	mov r2, #1
	cmp r0, #0
	moveq r2, r1
	ldr r0, _0211A250 ; =0x020A0640
	strb r2, [r4, #0xc0]
	strb r1, [r0, #0x1a]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	add sp, sp, #0xbc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A23C: .word unk_02099EB4
_0211A240: .word unk_02099ED4
_0211A244: .word unk_02099F44
_0211A248: .word unk_0209A134
_0211A24C: .word unk_020A1640
_0211A250: .word unk_020A0640
	arm_func_end FUN_ov31_02119f00

	arm_func_start FUN_ov31_0211a254
FUN_ov31_0211a254: ; 0x0211A254
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4, #0xc0]
	ldr r0, _0211A2C0 ; =0x020A0640
	mov r1, #0x4000000
	strb r2, [r0, #0x1a]
	ldr r0, [r1]
	ldr r2, [r4, #8]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A2C4 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A2C8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov31_0211baac
	mov r0, r4
	bl FUN_ov31_0211aab0
	mov r0, r4
	mov r1, #1
	bl FUN_ov31_0211a9cc
	ldr r0, _0211A2CC ; =0x0209BA20
	bl FUN_0204ec3c
	ldmfd sp!, {r4, pc}
_0211A2C0: .word unk_020A0640
_0211A2C4: .word unk_02099EB4
_0211A2C8: .word unk_02099ED4
_0211A2CC: .word unk_0209BA20
	arm_func_end FUN_ov31_0211a254

	arm_func_start FUN_ov31_0211a2d0
FUN_ov31_0211a2d0: ; 0x0211A2D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _0211A320 ; =0x02099ED4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r5, #0xc]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r4, #1
	beq _0211A30C
	mov r0, r5
	bl FUN_ov31_0211a3c4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A30C:
	tst r4, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov31_0211a408
	ldmfd sp!, {r3, r4, r5, pc}
_0211A320: .word unk_02099ED4
	arm_func_end FUN_ov31_0211a2d0

	arm_func_start FUN_ov31_0211a324
FUN_ov31_0211a324: ; 0x0211A324
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0211A3BC ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0xc]
	cmpeq r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A3C0 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r4]
	mov r2, #1
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211A36C: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	ldmfd sp!, {r4, r5, r6, pc} ; case 1
	b _0211A384 ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	ldmfd sp!, {r4, r5, r6, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, pc} ; case 5
_0211A384:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	cmp r0, #1
	bne _0211A3A0
	mov r0, r6
	bl FUN_ov31_0211a3c4
	ldmfd sp!, {r4, r5, r6, pc}
_0211A3A0:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov31_0211a408
	ldmfd sp!, {r4, r5, r6, pc}
_0211A3BC: .word unk_02099ED4
_0211A3C0: .word unk_02099EB4
	arm_func_end FUN_ov31_0211a324

	arm_func_start FUN_ov31_0211a3c4
FUN_ov31_0211a3c4: ; 0x0211A3C4
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #1
	mov r1, r4
	bl FUN_ov31_0211a9a4
	ldr r0, _0211A400 ; =0x02099EB4
	mov r1, r4
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	ldr r0, _0211A404 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A400: .word unk_02099EB4
_0211A404: .word unk_0209AC44
	arm_func_end FUN_ov31_0211a3c4

	arm_func_start FUN_ov31_0211a408
FUN_ov31_0211a408: ; 0x0211A408
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0211A424
	cmp r1, #1
	beq _0211A43C
	b _0211A444
_0211A424:
	mov r2, #0
	mov r1, #6
	str r2, [r0, #0x78]
	str r2, [r0, #0x74]
	str r1, [r0, #0xc]
	b _0211A444
_0211A43C:
	mov r1, #0
	bl FUN_ov31_0211a9a4
_0211A444:
	ldr r0, _0211A464 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	ldr r0, _0211A468 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211A464: .word unk_02099EB4
_0211A468: .word unk_0209AC44
	arm_func_end FUN_ov31_0211a408

	arm_func_start FUN_ov31_0211a46c
FUN_ov31_0211a46c: ; 0x0211A46C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r9, r0
	mov r4, r1
	add r0, r9, r4, lsl #2
	ldr r0, [r0, #0xa4]
	mov r8, r2
	cmp r0, #0
	mov r7, r3
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211A598 ; =0x02099F38
	mov r6, #1
	ldr r0, [r0]
	mov r2, r6
	mov r1, #2
	bl  FUN_ov16_02112724
	mov r5, r0
	add r0, r9, r4, lsl #2
	str r5, [r0, #0xa4]
	mov r4, #0
	str r4, [sp, #0x14]
	ldr r0, [sp, #0x38]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r9
	mov r1, r5
	mov r3, r8
	str r6, [sp, #0x10]
	bl FUN_ov31_0211ac0c
	ldr r1, [sp, #0x40]
	str r6, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0211A59C ; =0x02099EB4
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r0, [r0]
	mov r3, r5
	mov r1, r6
	bl  FUN_ov16_0210fc74
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	strb r4, [r5, #0x10]
	strb r4, [r5, #0xf]
	strh r4, [r5, #0xc]
	mov r1, r4
	mov r2, r6
	mov r3, r4
	add r0, r5, #0x3a
	strb r4, [r5, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r7
	mov r3, r4
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r6
	mov r3, r4
	add r0, r5, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	add r2, r7, #1
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e720
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A598: .word unk_02099F38
_0211A59C: .word unk_02099EB4
	arm_func_end FUN_ov31_0211a46c

	arm_func_start FUN_ov31_0211a5a0
FUN_ov31_0211a5a0: ; 0x0211A5A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xa4]
	mov r4, r2
	cmp r1, #0
	beq _0211A5D8
	ldr r0, _0211A5F0 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r6, r5, lsl #2
	mov r1, #0
	str r1, [r0, #0xa4]
_0211A5D8:
	ldr r0, _0211A5F4 ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210eab4
	ldmfd sp!, {r4, r5, r6, pc}
_0211A5F0: .word unk_02099F38
_0211A5F4: .word unk_02099EB4
	arm_func_end FUN_ov31_0211a5a0

	arm_func_start FUN_ov31_0211a5f8
FUN_ov31_0211a5f8: ; 0x0211A5F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r4, #0
	str r4, [sp, #0x28]
	ldr r0, [r0, #0x10]
	add r6, sp, #0x30
	mov r10, r2
	cmp r0, #0
	mov r5, #0x10
	mov r11, #0
	str r1, [sp, #0x20]
	mov r0, r6
	mov r1, r11
	mov r2, #4
	mov r9, r3
	ldr r8, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	mov r4, #0x80
	movne r5, #8
	bl MI_CpuFill8
	mov r2, #4
	mov r1, r11
	add r0, sp, #0x2c
	bl MI_CpuFill8
	mov r0, r4
	mov r1, r5
	mov r2, r6
	add r3, sp, #0x2c
	str r11, [r8]
	bl FUN_02054070
	ldr r6, _0211A868 ; =0x02099F38
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r0, [r6]
	bl FUN_02059630
	str r0, [r8]
	mov r1, r0
	ldr r0, [r6]
	mov r2, r11
	mov r3, r11
	bl FUN_02059038
	ldr r1, [r8]
	ldr r0, [r6]
	str r11, [sp, #0x24]
	add r2, sp, #0x24
	add r3, sp, #0x28
	bl FUN_0205935c
	ldr r0, [r6]
	ldr r1, [r8]
	ldr r4, [sp, #0x24]
	bl  FUN_ov16_02111438
	mov r5, r0
	ldr r0, [r6]
	ldr r1, [r8]
	bl  FUN_ov16_02111458
	mov r6, r0
	ldrb r0, [sp, #0x60]
	mov r1, #1
	cmp r0, #0
	beq _0211A738
	ldr r0, _0211A86C ; =0x02099ED0
	mov r2, #2
	ldr r0, [r0]
	bl FUN_02043310
	stmia sp, {r6, r11}
	str r11, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r11, [sp, #0x10]
	str r11, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _0211A86C ; =0x02099ED0
	str r11, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r4
	mov r3, r5
	bl FUN_020425fc
	ldr r0, _0211A86C ; =0x02099ED0
	b _0211A784
_0211A738:
	ldr r0, _0211A870 ; =0x02099F50
	mov r2, r11
	ldr r0, [r0]
	bl FUN_02043310
	stmia sp, {r6, r11}
	str r11, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r11, [sp, #0x10]
	str r11, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _0211A870 ; =0x02099F50
	str r11, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r4
	mov r3, r5
	bl FUN_020425fc
	ldr r0, _0211A870 ; =0x02099F50
_0211A784:
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r11, _0211A868 ; =0x02099F38
	ldr r3, [sp, #0x28]
	ldr r1, [r8]
	ldr r0, [r11]
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, r4
	mov r4, #0
	str r4, [sp, #8]
	bl FUN_02059288
	ldr r0, [r9]
	mov r1, r10
	add r2, r0, #1
	str r2, [r9]
	ldr r3, [r8]
	ldr r0, [r11]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, r4
	str r0, [sp]
	ldr r0, [r11]
	ldr r2, [r9]
	mov r3, r4
	mov r1, r10
	bl  FUN_ov16_02113d88
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r5, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r11]
	ldr r2, [r9]
	mov r1, r10
	bl  FUN_ov16_02113d08
	ldr r0, [r7, #4]
	mov r1, r10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r2, [r7]
	ldr r0, [r11]
	mov r2, r2, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r2, [r9]
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x64]
	ldr r0, [r11]
	mov r3, r3, lsl #0x10
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A868: .word unk_02099F38
_0211A86C: .word unk_02099ED0
_0211A870: .word unk_02099F50
	arm_func_end FUN_ov31_0211a5f8

	arm_func_start FUN_ov31_0211a874
FUN_ov31_0211a874: ; 0x0211A874
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211A8E0
_0211A88C: ; jump table
	b _0211A8AC ; case 0
	b _0211A8B0 ; case 1
	b _0211A8B8 ; case 2
	b _0211A8C0 ; case 3
	b _0211A8C8 ; case 4
	b _0211A8E0 ; case 5
	b _0211A8D4 ; case 6
	b _0211A8DC ; case 7
_0211A8AC:
	bl FUN_ov31_0211aa4c
_0211A8B0:
	mov r0, r4
	bl FUN_ov31_0211ab44
_0211A8B8:
	mov r0, r4
	bl FUN_ov31_0211accc
_0211A8C0:
	mov r0, r4
	bl FUN_ov31_0211ad4c
_0211A8C8:
	mov r0, r4
	bl FUN_ov31_0211bc9c
	b _0211A8E0
_0211A8D4:
	bl FUN_ov31_0211bcf0
	b _0211A8E0
_0211A8DC:
	bl FUN_ov31_0211bd24
_0211A8E0:
	mov r0, r4
	bl FUN_ov31_0211a954
	ldr r0, _0211A944 ; =0x02099ED4
	ldr r4, _0211A948 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl  FUN_ov16_0210e10c
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A920
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A92C
_0211A920:
	bl _ffltu
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A92C:
	bl FUN_0201fdac
	ldr r2, _0211A94C ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldmfd sp!, {r4, pc}
_0211A944: .word unk_02099ED4
_0211A948: .word unk_0209A110
_0211A94C: .word unk_02099F58
	arm_func_end FUN_ov31_0211a874

	arm_func_start FUN_ov31_0211a950
FUN_ov31_0211a950: ; 0x0211A950
	bx lr
	arm_func_end FUN_ov31_0211a950

	arm_func_start FUN_ov31_0211a954
FUN_ov31_0211a954: ; 0x0211A954
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r3, #0x10]
	mov r2, #0
	mov r1, #1
	strb r2, [r3, #0x21]
	strb r1, [r3, #0x22]
	cmp r0, #0
	beq _0211A988
	cmp r0, #1
	moveq r0, #0xc
	streq r0, [r3, #0x14]
	b _0211A98C
_0211A988:
	str r2, [r3, #0x14]
_0211A98C:
	ldr r0, [r3, #4]
	add r1, r3, #0x14
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov31_0211a954

	arm_func_start FUN_ov31_0211a9a4
FUN_ov31_0211a9a4: ; 0x0211A9A4
	mov r2, #4
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov31_0211a9a4

	arm_func_start FUN_ov31_0211a9b4
FUN_ov31_0211a9b4: ; 0x0211A9B4
	ldr r12, _0211A9C8 ; =MI_CpuFill8
	add r0, r0, #0x7c
	mov r1, #0
	mov r2, #0xc
	bx r12
_0211A9C8: .word MI_CpuFill8
	arm_func_end FUN_ov31_0211a9b4

	arm_func_start FUN_ov31_0211a9cc
FUN_ov31_0211a9cc: ; 0x0211A9CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #1
	blo _0211AA0C
	add r0, r6, #0x7c
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r6, #0x7c
	bl  FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r6, #0x7c]
	str r0, [r6, #0x80]
	strb r0, [r6, #0x84]
	strb r0, [r6, #0x85]
	strb r0, [r6, #0x86]
	ldmfd sp!, {r4, r5, r6, pc}
_0211AA0C:
	mov r0, #0xc
	mul r5, r1, r0
	add r4, r6, #0x7c
	add r0, r4, r5
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r5
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r5]
	add r0, r6, r5
	str r1, [r0, #0x80]
	strb r1, [r0, #0x84]
	strb r1, [r0, #0x85]
	strb r1, [r0, #0x86]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov31_0211a9cc

	arm_func_start FUN_ov31_0211aa4c
FUN_ov31_0211aa4c: ; 0x0211AA4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211AA6C ; =0x0211BF4C
	add r1, r4, #0x7c
	bl  FUN_ov16_020f3054
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211AA6C: .word ov31_0211BF4C
	arm_func_end FUN_ov31_0211aa4c

	arm_func_start FUN_ov31_0211aa70
FUN_ov31_0211aa70: ; 0x0211AA70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x88
	mov r2, #0x1c
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0xa4
	mov r2, #0x10
	bl MI_CpuFill8
	ldr r0, _0211AAAC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211AAAC: .word unk_02099F38
	arm_func_end FUN_ov31_0211aa70

	arm_func_start FUN_ov31_0211aab0
FUN_ov31_0211aab0: ; 0x0211AAB0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211AB40 ; =0x02099F38
	b _0211AAEC
_0211AAC8:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	beq _0211AAE8
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0xa4]
_0211AAE8:
	add r4, r4, #1
_0211AAEC:
	cmp r4, #4
	blt _0211AAC8
	mov r4, #0
	mov r7, r4
	ldr r6, _0211AB40 ; =0x02099F38
	b _0211AB28
_0211AB04:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x88]
	cmp r1, #0
	beq _0211AB24
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x88]
_0211AB24:
	add r4, r4, #1
_0211AB28:
	cmp r4, #7
	blt _0211AB04
	ldr r0, _0211AB40 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB40: .word unk_02099F38
	arm_func_end FUN_ov31_0211aab0

	arm_func_start FUN_ov31_0211ab44
FUN_ov31_0211ab44: ; 0x0211AB44
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x64
	mov r4, r0
	add r0, r4, #0x7c
	mov r1, #1
	bl  FUN_ov16_020f330c
	cmp r0, #0
	addeq sp, sp, #0x64
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0x44
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldrb r0, [r4, #0x4e0]
	mov r2, #3
	add r7, sp, #0x44
	cmp r0, #1
	ldr r1, _0211AC00 ; =0x0211BF6C
	movne r2, #2
	mov r0, r7
	bl sprintf
	ldr r6, _0211AC04 ; =0x0211BDAC
	add lr, sp, #4
	ldmia r6!, {r0, r1, r2, r3}
	mov r12, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r5, #0
	str r7, [sp, #0x24]
	str r5, [sp]
	ldr r0, _0211AC08 ; =0x0211BF80
	ldr r1, [r4, #0x7c]
	mov r2, r12
	add r3, r4, #0x88
	bl  FUN_ov16_020f5450
	mov r1, r5
	mov r0, r4
	bl FUN_ov31_0211a9cc
	mov r0, #2
	str r0, [r4, #0xc]
	add sp, sp, #0x64
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211AC00: .word ov31_0211BF6C
_0211AC04: .word 0x0211BDAC
_0211AC08: .word ov31_0211BF80
	arm_func_end FUN_ov31_0211ab44

	arm_func_start FUN_ov31_0211ac0c
FUN_ov31_0211ac0c: ; 0x0211AC0C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x88]
	ldr r6, _0211ACC8 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl  FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211ACC8: .word unk_02099F38
	arm_func_end FUN_ov31_0211ac0c

	arm_func_start FUN_ov31_0211accc
FUN_ov31_0211accc: ; 0x0211ACCC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, #0
	add r6, r8, #0x88
	mov r5, r7
	ldr r4, _0211AD48 ; =0x02099F38
	b _0211AD34
_0211ACE8:
	ldr r1, [r6]
	cmp r1, #0
	beq _0211AD2C
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r6]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #1
	beq _0211AD2C
	ldr r1, [r6]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211AD2C:
	add r7, r7, #1
	add r6, r6, #4
_0211AD34:
	cmp r7, #7
	blt _0211ACE8
	mov r0, #3
	str r0, [r8, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AD48: .word unk_02099F38
	arm_func_end FUN_ov31_0211accc

	arm_func_start FUN_ov31_0211ad4c
FUN_ov31_0211ad4c: ; 0x0211AD4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov31_0211ad74
	mov r0, r4
	bl FUN_ov31_0211ae78
	mov r0, r4
	bl FUN_ov31_0211aeec
	mov r0, #4
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov31_0211ad4c

	arm_func_start FUN_ov31_0211ad74
FUN_ov31_0211ad74: ; 0x0211AD74
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r0, [r10, #0xa4]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211AE74 ; =0x02099F38
	mov r9, #4
	mov r8, #1
	ldr r0, [r0]
	mov r1, r9
	mov r2, r8
	bl  FUN_ov16_02112724
	mov r7, r0
	mov r6, #0
	str r6, [sp, #0x14]
	str r7, [r10, #0xa4]
	str r6, [sp]
	str r6, [sp, #4]
	add r4, sp, #0x14
	str r6, [sp, #8]
	mov r5, #0x258
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r4
	str r8, [sp, #0x10]
	mov r3, #3
	bl FUN_ov31_0211ac0c
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	sub r0, r5, #1
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	mov r0, r10
	mov r1, r7
	mov r2, r4
	mov r3, #5
	bl FUN_ov31_0211ac0c
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r3, r9
	str r6, [sp, #0x10]
	mov r0, r10
	mov r1, r7
	mov r2, r4
	bl FUN_ov31_0211ac0c
	str r6, [sp]
	str r6, [sp, #4]
	sub r3, r5, #1
	str r6, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r4
	mov r3, #6
	str r6, [sp, #0x10]
	bl FUN_ov31_0211ac0c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AE74: .word unk_02099F38
	arm_func_end FUN_ov31_0211ad74

	arm_func_start FUN_ov31_0211ae78
FUN_ov31_0211ae78: ; 0x0211AE78
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r1, #0x10
	str r1, [sp]
	mov r4, #0
	mov r1, #0x70
	mov r6, #1
	str r1, [sp, #4]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	str r6, [sp, #8]
	mov r5, #0x1f4
	mov r7, r0
	str r5, [sp, #0xc]
	bl FUN_ov31_0211a46c
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r0, r7
	mov r2, r6
	mov r3, r4
	str r5, [sp, #0xc]
	bl FUN_ov31_0211a46c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov31_0211ae78

	arm_func_start FUN_ov31_0211aeec
FUN_ov31_0211aeec: ; 0x0211AEEC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xe4
	mov r10, r0
	ldr r0, [r10, #0xc4]
	mov r5, #0x190
	cmp r0, #0
	add r6, sp, #0x10
	mov r7, #8
	mov r11, #1
	addne sp, sp, #0xe4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211B604 ; =0x02099F38
	mov r4, #0
	ldr r0, [r0]
	mov r2, r11
	mov r1, #0x16
	str r4, [sp, #0x18]
	sub r9, r4, #1
	bl  FUN_ov16_02112724
	mov r8, r0
	str r8, [r10, #0xc4]
	mov r0, #0x18
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	add r0, r0, r9, lsl #2
	str r7, [sp, #0x10]
	stmia sp, {r0, r6, r11}
	ldr r1, _0211B608 ; =0x0211BFA0
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	str r5, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r3, r10, #0x400
	ldrh r2, [r3, #0xc4]
	ldrh r3, [r3, #0xc6]
	ldr r1, _0211B60C ; =0x0211BFAC
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0x23
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r7, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r6}
	str r4, [sp, #8]
	add r1, sp, #0x1c
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	str r5, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	mov r0, #0x38
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r7, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r6, r11}
	ldr r1, _0211B610 ; =0x0211BFBC
	add r3, sp, #0x18
	mov r0, r10
	mov r2, r8
	str r5, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r0, r10, #0x400
	ldrh r1, [r0, #0xca]
	mov r11, r7
	mov r7, r6
	cmp r1, #0
	mov r6, #1
	beq _0211B0EC
	ldrh r1, [r0, #0xc8]
	ldr r0, _0211B614 ; =0x0209BA20
	add r2, sp, #0x7c
	bl FUN_0204bd64
	cmp r0, #0
	add r0, sp, #0x5c
	beq _0211B048
	ldr r1, _0211B618 ; =0x0211BFC4
	add r2, sp, #0x98
	b _0211B04C
_0211B048:
	ldr r1, _0211B61C ; =0x0211BFC8
_0211B04C:
	bl sprintf
	mov r1, #0x42
	str r1, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r11, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	mov r2, #0
	str r2, [sp, #8]
	mov r4, #0x190
	add r1, sp, #0x5c
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r2, r10, #0x400
	ldrh r2, [r2, #0xca]
	ldr r1, _0211B620 ; =0x0211BFD4
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0x50
	str r0, [sp, #0x10]
	mov r0, #0x45
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	add r1, sp, #0x1c
	add r3, sp, #0x18
	mov r0, r10
	mov r2, r8
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
_0211B0EC:
	mov r1, #0x58
	str r1, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r11, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r1, _0211B624 ; =0x0211BFDC
	add r3, sp, #0x18
	mov r0, r10
	mov r2, r8
	str r5, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r0, r10, #0x400
	ldrh r1, [r0, #0xce]
	cmp r1, #0
	beq _0211B208
	ldrh r1, [r0, #0xcc]
	ldr r0, _0211B614 ; =0x0209BA20
	add r2, sp, #0x7c
	add r5, sp, #0x18
	mov r4, #8
	bl FUN_0204bd64
	cmp r0, #0
	add r0, sp, #0x5c
	beq _0211B164
	ldr r1, _0211B628 ; =0x0211BFEC
	add r2, sp, #0x98
	b _0211B168
_0211B164:
	ldr r1, _0211B62C ; =0x0211BFF0
_0211B168:
	bl sprintf
	mov r1, #0x62
	str r4, [sp, #0x10]
	str r1, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	mov r3, #0
	str r3, [sp, #8]
	mov r4, #0x190
	add r1, sp, #0x5c
	mov r0, r10
	mov r2, r8
	mov r3, r5
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r2, r10, #0x400
	ldrh r2, [r2, #0xce]
	ldr r1, _0211B630 ; =0x0211BFFC
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0x50
	str r0, [sp, #0x10]
	mov r0, #0x65
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	add r1, sp, #0x1c
	mov r3, r5
	mov r0, r10
	mov r2, r8
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
_0211B208:
	mov r5, #0x88
	add r9, r9, #1
	add r0, r10, #0xc8
	str r11, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	ldr r1, _0211B634 ; =0x0211C004
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	str r6, [sp, #8]
	mov r4, #0x190
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r2, r10, #0x400
	ldrh r2, [r2, #0xd0]
	ldr r1, _0211B638 ; =0x0211C01C
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0x50
	str r0, [sp, #0x10]
	mov r0, #0x8c
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	mov r0, r10
	add r1, sp, #0x1c
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	mov r0, #0xa0
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r11, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r1, _0211B63C ; =0x0211C024
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r2, r10, #0x400
	ldrh r2, [r2, #0xd2]
	ldr r1, _0211B640 ; =0x0211C03C
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0x50
	str r0, [sp, #0x10]
	mov r0, #0xa5
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	mov r0, r10
	add r1, sp, #0x1c
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	mov r0, #0x28
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r5, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r1, _0211B644 ; =0x0211C044
	str r4, [sp, #0xc]
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	bl FUN_ov31_0211a5f8
	ldrb r2, [r10, #0x4d7]
	ldr r1, _0211B648 ; =0x0211C05C
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0x2d
	mov r11, #0xd8
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r11, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	mov r0, r10
	add r1, sp, #0x1c
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	mov r0, #0x40
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r5, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r1, _0211B64C ; =0x0211C064
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r0, r10, #0x400
	ldrh r2, [r0, #0xd4]
	ldr r1, _0211B650 ; =0x0211C07C
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0xd0
	str r0, [sp, #0x10]
	mov r0, #0x45
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	mov r0, r10
	add r1, sp, #0x1c
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	mov r0, #0x58
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r5, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r1, _0211B654 ; =0x0211C084
	str r4, [sp, #0xc]
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	bl FUN_ov31_0211a5f8
	ldrb r2, [r10, #0x4d6]
	ldr r1, _0211B658 ; =0x0211C098
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0xd0
	str r0, [sp, #0x10]
	mov r0, #0x5d
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	mov r0, r10
	add r1, sp, #0x1c
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	mov r0, #0x70
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r5, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r1, _0211B65C ; =0x0211C0A0
	str r4, [sp, #0xc]
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	bl FUN_ov31_0211a5f8
	ldrb r2, [r10, #0x4d8]
	ldr r1, _0211B660 ; =0x0211C0BC
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0x75
	str r0, [sp, #0x14]
	add r9, r9, #1
	add r0, r10, #0xc8
	str r11, [sp, #0x10]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	mov r0, r10
	add r1, sp, #0x1c
	mov r2, r8
	add r3, sp, #0x18
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add r9, r9, #1
	add r0, r10, #0xc8
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, r0, r9, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r1, _0211B664 ; =0x0211C0C4
	str r4, [sp, #0xc]
	mov r0, r10
	mov r2, r8
	add r3, sp, #0x18
	bl FUN_ov31_0211a5f8
	ldrb r2, [r10, #0x4d9]
	ldr r1, _0211B668 ; =0x0211C0DC
	add r0, sp, #0x3c
	bl sprintf
	add r0, sp, #0x3c
	add r1, sp, #0x1c
	bl  FUN_ov16_020f1f5c
	mov r0, #0x8d
	str r0, [sp, #0x14]
	add r5, r9, #1
	add r0, r10, #0xc8
	str r11, [sp, #0x10]
	add r0, r0, r5, lsl #2
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	add r1, sp, #0x1c
	mov r2, r8
	add r3, sp, #0x18
	mov r0, r10
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add sp, sp, #0xe4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B604: .word unk_02099F38
_0211B608: .word ov31_0211BFA0
_0211B60C: .word ov31_0211BFAC
_0211B610: .word ov31_0211BFBC
_0211B614: .word unk_0209BA20
_0211B618: .word ov31_0211BFC4
_0211B61C: .word ov31_0211BFC8
_0211B620: .word ov31_0211BFD4
_0211B624: .word ov31_0211BFDC
_0211B628: .word ov31_0211BFEC
_0211B62C: .word ov31_0211BFF0
_0211B630: .word ov31_0211BFFC
_0211B634: .word ov31_0211C004
_0211B638: .word ov31_0211C01C
_0211B63C: .word ov31_0211C024
_0211B640: .word ov31_0211C03C
_0211B644: .word ov31_0211C044
_0211B648: .word ov31_0211C05C
_0211B64C: .word ov31_0211C064
_0211B650: .word ov31_0211C07C
_0211B654: .word ov31_0211C084
_0211B658: .word ov31_0211C098
_0211B65C: .word ov31_0211C0A0
_0211B660: .word ov31_0211C0BC
_0211B664: .word ov31_0211C0C4
_0211B668: .word ov31_0211C0DC
	arm_func_end FUN_ov31_0211aeec

	arm_func_start FUN_ov31_0211b66c
FUN_ov31_0211b66c: ; 0x0211B66C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xec
	mov r10, r0
	ldr r0, [r10, #0xc4]
	cmp r0, #0
	addne sp, sp, #0xec
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211BA78 ; =0x02099F38
	mov r9, #0
	ldr r0, [r0]
	mov r1, #0x2a
	mov r2, #1
	str r9, [sp, #0x20]
	sub r8, r9, #1
	bl  FUN_ov16_02112724
	mov r7, r0
	add r0, r10, #0x400
	str r7, [r10, #0xc4]
	add r4, r10, #0x120
	str r0, [sp, #0x10]
	add r11, sp, #0x64
	add r6, sp, #0x44
	add r5, sp, #0x24
	b _0211B808
_0211B6CC:
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #0xca]
	cmp r0, #0
	beq _0211B810
	add r0, r10, r9, lsl #3
	add r0, r0, #0x400
	ldrh r1, [r0, #0x24]
	cmp r1, #0
	beq _0211B804
	ldrh r1, [r0, #0x20]
	ldr r0, _0211BA7C ; =0x0209BA20
	add r2, sp, #0x84
	bl FUN_0204bd64
	cmp r0, #0
	mov r0, r11
	beq _0211B718
	ldr r1, _0211BA80 ; =0x0211C0E4
	add r2, sp, #0xa0
	b _0211B71C
_0211B718:
	ldr r1, _0211BA84 ; =0x0211C0E8
_0211B71C:
	bl sprintf
	add r2, r10, r9, lsl #3
	add r2, r2, #0x400
	ldrh r2, [r2, #0x22]
	ldr r1, _0211BA88 ; =0x0211C0F4
	mov r0, r6
	mov r3, r11
	bl sprintf
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f1f5c
	mov r0, #6
	str r0, [sp, #0x18]
	mov r0, r9, lsl #4
	add r0, r0, #0x15
	add r8, r8, #1
	str r0, [sp, #0x1c]
	add r0, r4, r8, lsl #2
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	mov r2, r7
	add r3, sp, #0x20
	bl FUN_ov31_0211a5f8
	add r2, r10, r9, lsl #3
	add r2, r2, #0x400
	ldrh r2, [r2, #0x24]
	ldr r1, _0211BA8C ; =0x0211C100
	mov r0, r6
	bl sprintf
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f1f5c
	mov r0, #0x52
	str r0, [sp, #0x18]
	mov r0, r9, lsl #4
	add r0, r0, #0x15
	add r8, r8, #1
	str r0, [sp, #0x1c]
	add r0, r4, r8, lsl #2
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	mov r2, r7
	add r3, sp, #0x20
	bl FUN_ov31_0211a5f8
_0211B804:
	add r9, r9, #1
_0211B808:
	cmp r9, #0xa
	blt _0211B6CC
_0211B810:
	add r0, r10, #0x400
	mov r9, #0
	add r4, r10, #0x120
	str r0, [sp, #0x14]
	add r6, sp, #0x64
	add r5, sp, #0x44
	add r11, sp, #0x24
	b _0211B97C
_0211B830:
	ldr r0, [sp, #0x14]
	ldrh r0, [r0, #0xce]
	cmp r0, #0
	beq _0211B984
	add r0, r10, r9, lsl #3
	add r0, r0, #0x400
	ldrh r1, [r0, #0x74]
	cmp r1, #0
	beq _0211B978
	ldrh r1, [r0, #0x70]
	ldr r0, _0211BA7C ; =0x0209BA20
	add r2, sp, #0x84
	bl FUN_0204bd64
	cmp r0, #0
	mov r0, r6
	beq _0211B87C
	ldr r1, _0211BA90 ; =0x0211C108
	add r2, sp, #0xa0
	b _0211B880
_0211B87C:
	ldr r1, _0211BA94 ; =0x0211C10C
_0211B880:
	bl sprintf
	ldr r1, _0211BA98 ; =0x0211C118
	mov r0, r6
	add r2, sp, #0xa0
	bl sprintf
	add r2, r10, r9, lsl #3
	add r2, r2, #0x400
	ldrh r2, [r2, #0x72]
	ldr r1, _0211BA9C ; =0x0211C11C
	mov r0, r5
	mov r3, r6
	bl sprintf
	mov r0, r5
	mov r1, r11
	bl  FUN_ov16_020f1f5c
	mov r0, #0x86
	str r0, [sp, #0x18]
	mov r0, r9, lsl #4
	add r0, r0, #0x15
	add r8, r8, #1
	str r0, [sp, #0x1c]
	add r0, r4, r8, lsl #2
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r11
	mov r2, r7
	add r3, sp, #0x20
	bl FUN_ov31_0211a5f8
	add r2, r10, r9, lsl #3
	add r2, r2, #0x400
	ldrh r2, [r2, #0x74]
	ldr r1, _0211BAA0 ; =0x0211C128
	mov r0, r5
	bl sprintf
	mov r0, r5
	mov r1, r11
	bl  FUN_ov16_020f1f5c
	mov r0, #0xd2
	str r0, [sp, #0x18]
	mov r0, r9, lsl #4
	add r0, r0, #0x15
	add r8, r8, #1
	str r0, [sp, #0x1c]
	add r0, r4, r8, lsl #2
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r11
	mov r2, r7
	add r3, sp, #0x20
	bl FUN_ov31_0211a5f8
_0211B978:
	add r9, r9, #1
_0211B97C:
	cmp r9, #0xa
	blt _0211B830
_0211B984:
	ldr r0, [r10, #0x4c0]
	mov r4, #1
	cmp r0, #0
	addeq sp, sp, #0xec
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x400
	ldrh r0, [r0, #0xca]
	mov r5, #9
	cmp r0, #1
	addhs r0, r10, r5, lsl #3
	addhs r0, r0, #0x400
	ldrhsh r0, [r0, #0x24]
	cmphs r0, #1
	blo _0211BA04
	mov r2, #0x38
	mov r1, #0xb0
	str r2, [sp, #0x18]
	add r8, r8, #1
	add r0, r10, #0x120
	str r1, [sp, #0x1c]
	add r1, r0, r8, lsl #2
	str r1, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r1, _0211BAA4 ; =0x0211C130
	add r3, sp, #0x20
	mov r0, r10
	mov r2, r7
	str r4, [sp, #8]
	mov r6, #0x190
	str r6, [sp, #0xc]
	bl FUN_ov31_0211a5f8
_0211BA04:
	add r0, r10, #0x400
	ldrh r0, [r0, #0xce]
	cmp r0, #1
	addhs r0, r10, r5, lsl #3
	addhs r0, r0, #0x400
	ldrhsh r0, [r0, #0x74]
	cmphs r0, #1
	addlo sp, sp, #0xec
	ldmlofd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r3, #0xb8
	mov r2, #0xb0
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r1, r8, #1
	add r0, r10, #0x120
	add r1, r0, r1, lsl #2
	str r1, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r4, #0x190
	ldr r1, _0211BAA8 ; =0x0211C138
	add r3, sp, #0x20
	mov r0, r10
	mov r2, r7
	str r4, [sp, #0xc]
	bl FUN_ov31_0211a5f8
	add sp, sp, #0xec
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BA78: .word unk_02099F38
_0211BA7C: .word unk_0209BA20
_0211BA80: .word ov31_0211C0E4
_0211BA84: .word ov31_0211C0E8
_0211BA88: .word ov31_0211C0F4
_0211BA8C: .word ov31_0211C100
_0211BA90: .word ov31_0211C108
_0211BA94: .word ov31_0211C10C
_0211BA98: .word ov31_0211C118
_0211BA9C: .word ov31_0211C11C
_0211BAA0: .word ov31_0211C128
_0211BAA4: .word ov31_0211C130
_0211BAA8: .word ov31_0211C138
	arm_func_end FUN_ov31_0211b66c

	arm_func_start FUN_ov31_0211baac
FUN_ov31_0211baac: ; 0x0211BAAC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0xc4]
	cmp r1, #0
	beq _0211BACC
	ldr r0, _0211BB40 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
_0211BACC:
	mov r5, #0
	ldr r4, _0211BB40 ; =0x02099F38
	b _0211BAF4
_0211BAD8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xc8]
	cmp r1, #0
	beq _0211BAF0
	ldr r0, [r4]
	bl FUN_02058ee0
_0211BAF0:
	add r5, r5, #1
_0211BAF4:
	cmp r5, #0x16
	blt _0211BAD8
	mov r5, #0
	ldr r4, _0211BB40 ; =0x02099F38
	b _0211BB24
_0211BB08:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x120]
	cmp r1, #0
	beq _0211BB20
	ldr r0, [r4]
	bl FUN_02058ee0
_0211BB20:
	add r5, r5, #1
_0211BB24:
	cmp r5, #0x2a
	blt _0211BB08
	add r0, r6, #0xc4
	mov r1, #0
	mov r2, #0x104
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211BB40: .word unk_02099F38
	arm_func_end FUN_ov31_0211baac

	arm_func_start FUN_ov31_0211bb44
FUN_ov31_0211bb44: ; 0x0211BB44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	ldr r0, [r5, #0xb4]
	ldr r6, _0211BBD0 ; =0x02099F38
	ldr r4, [r5, #0xa4]
	mov r9, r0, lsl #1
	mov r8, #2
	ldr r0, [r6]
	mov r1, r4
	mov r3, r8
	add r2, r9, #1
	bl  FUN_ov16_02113f7c
	ldr r0, [r6]
	mov r1, r4
	mov r3, r8
	add r2, r9, #2
	bl  FUN_ov16_02113f7c
	ldr r0, [r5, #0xb4]
	mov r7, #1
	eor r0, r0, #1
	str r0, [r5, #0xb4]
	mov r9, r0, lsl #1
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r4
	add r2, r9, #1
	mov r3, r8
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r4
	add r2, r9, #2
	mov r3, r8
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BBD0: .word unk_02099F38
	arm_func_end FUN_ov31_0211bb44

	arm_func_start FUN_ov31_0211bbd4
FUN_ov31_0211bbd4: ; 0x0211BBD4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r1, #1
	mov r2, r1
	mov r6, r0
	bl FUN_ov31_0211a5a0
	mov r5, #2
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl FUN_ov31_0211a5a0
	mov r4, #3
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov31_0211a5a0
	ldr r0, [r6, #0xb8]
	eors r0, r0, #1
	str r0, [r6, #0xb8]
	bne _0211BC34
	mov r0, r6
	bl FUN_ov31_0211ae78
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211BC34:
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0xb0
	str r0, [sp, #4]
	mov r0, r6
	mov r1, r4
	mov r2, r5
	str r5, [sp, #8]
	mov r12, #0x1f4
	mov r3, #0
	str r12, [sp, #0xc]
	bl FUN_ov31_0211a46c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov31_0211bbd4

	arm_func_start FUN_ov31_0211bc6c
FUN_ov31_0211bc6c: ; 0x0211BC6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov31_0211baac
	ldr r0, [r4, #0xbc]
	eors r0, r0, #1
	str r0, [r4, #0xbc]
	mov r0, r4
	beq _0211BC94
	bl FUN_ov31_0211b66c
	ldmfd sp!, {r4, pc}
_0211BC94:
	bl FUN_ov31_0211aeec
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov31_0211bc6c

	arm_func_start FUN_ov31_0211bc9c
FUN_ov31_0211bc9c: ; 0x0211BC9C
	stmfd sp!, {r4, lr}
	ldr r1, _0211BCEC ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov31_0211bb44
	mov r0, r4
	bl FUN_ov31_0211bbd4
	mov r0, r4
	bl FUN_ov31_0211bc6c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211BCEC: .word unk_02099ED4
	arm_func_end FUN_ov31_0211bc9c

	arm_func_start FUN_ov31_0211bcf0
FUN_ov31_0211bcf0: ; 0x0211BCF0
	stmfd sp!, {r4, lr}
	ldr r1, _0211BD20 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #7
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211BD20: .word unk_02099ED4
	arm_func_end FUN_ov31_0211bcf0

	arm_func_start FUN_ov31_0211bd24
FUN_ov31_0211bd24: ; 0x0211BD24
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x74]
	ldr r4, [r5, #0x78]
	mov r1, #0
	cmp r2, r4
	cmpeq r2, #0
	bne _0211BD74
	ldr r4, [r5, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211BD74:
	ldr r5, [r5, #4]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov31_0211bd24

	arm_func_start FUN_ov31_0211bd94
FUN_ov31_0211bd94: ; 0x0211BD94
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov31_0211bd94

	arm_func_start FUN_ov31_0211bda8
FUN_ov31_0211bda8: ; 0x0211BDA8
	bx lr
	arm_func_end FUN_ov31_0211bda8
_0211BDAC:
	.byte 0xA8, 0xBE, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x78, 0xBE, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x88, 0xBE, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xC8, 0xBE, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0xB8, 0xBE, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0x98, 0xBE, 0x11, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov31_0211bdec
FUN_ov31_0211bdec: ; 0x0211BDEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211BE34 ; =0x0211BE60
	str r0, [r4, #0xc]
	ldr r0, _0211BE38 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0211BE3C ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BE34: .word ov31_0211BE60
_0211BE38: .word 0x00009CCD
_0211BE3C: .word 0x0000EA3C
	arm_func_end FUN_ov31_0211bdec

	.section .sinit, 4
ov31_0211BE40:
	.word FUN_ov31_0211bdec

	.data
	.global ov31_0211BE60
ov31_0211BE60:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x72, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x72, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x72, 0x63, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x72, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x72, 0x63, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x72, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA8, 0xBD, 0x11, 0x02, 0x94, 0xBD, 0x11, 0x02, 0xD0, 0xA2, 0x11, 0x02, 0x24, 0xA3, 0x11, 0x02
	.byte 0x00, 0x9F, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x74, 0xA8, 0x11, 0x02, 0x50, 0xA9, 0x11, 0x02
	.byte 0x54, 0xA2, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov31_0211BF4C
ov31_0211BF4C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F
	.byte 0x72, 0x61, 0x6E, 0x6B, 0x69, 0x6E, 0x67, 0x2E, 0x53, 0x50, 0x4C, 0x00
	.global ov31_0211BF6C
ov31_0211BF6C:
	.byte 0x72, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov31_0211BF80
ov31_0211BF80:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x5F, 0x72, 0x61, 0x6E, 0x6B, 0x69, 0x6E, 0x67, 0x2E, 0x53, 0x50, 0x44, 0x00
	.global ov31_0211BFA0
ov31_0211BFA0:
	.byte 0x83, 0x76, 0x83, 0x8C, 0x83, 0x43, 0x8E, 0x9E, 0x8A, 0xD4, 0x00, 0x00
	.global ov31_0211BFAC
ov31_0211BFAC:
	.byte 0x25, 0x33, 0x64, 0x8E
	.byte 0x9E, 0x8A, 0xD4, 0x25, 0x32, 0x64, 0x95, 0xAA, 0x00, 0x00, 0x00, 0x00
	.global ov31_0211BFBC
ov31_0211BFBC:
	.byte 0x93, 0xBE, 0x93, 0x5F
	.byte 0x89, 0xA4, 0x00, 0x00
	.global ov31_0211BFC4
ov31_0211BFC4:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov31_0211BFC8
ov31_0211BFC8:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48
	.byte 0x81, 0x48, 0x00, 0x00
	.global ov31_0211BFD4
ov31_0211BFD4:
	.byte 0x25, 0x34, 0x64, 0x93, 0x5F, 0x00, 0x00, 0x00
	.global ov31_0211BFDC
ov31_0211BFDC:
	.byte 0x8F, 0x6F, 0x8F, 0xEA
	.byte 0x89, 0xF1, 0x90, 0x94, 0x83, 0x67, 0x83, 0x62, 0x83, 0x76, 0x00, 0x00
	.global ov31_0211BFEC
ov31_0211BFEC:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov31_0211BFF0
ov31_0211BFF0:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00
	.global ov31_0211BFFC
ov31_0211BFFC:
	.byte 0x25, 0x34, 0x64, 0x89
	.byte 0xF1, 0x00, 0x00, 0x00
	.global ov31_0211C004
ov31_0211C004:
	.byte 0x83, 0x7E, 0x83, 0x6A, 0x83, 0x6F, 0x83, 0x67, 0x83, 0x8B, 0x0A, 0x81
	.byte 0x40, 0x91, 0xCE, 0x90, 0xED, 0x89, 0xF1, 0x90, 0x94, 0x00, 0x00, 0x00
	.global ov31_0211C01C
ov31_0211C01C:
	.byte 0x25, 0x34, 0x64, 0x89
	.byte 0xF1, 0x00, 0x00, 0x00
	.global ov31_0211C024
ov31_0211C024:
	.byte 0x91, 0xCE, 0x90, 0xED, 0x83, 0x8B, 0x81, 0x5B, 0x83, 0x67, 0x0A, 0x81
	.byte 0x40, 0x8E, 0x8E, 0x8D, 0x87, 0x89, 0xF1, 0x90, 0x94, 0x00, 0x00, 0x00
	.global ov31_0211C03C
ov31_0211C03C:
	.byte 0x25, 0x34, 0x64, 0x89
	.byte 0xF1, 0x00, 0x00, 0x00
	.global ov31_0211C044
ov31_0211C044:
	.byte 0x83, 0x52, 0x83, 0x7D, 0x83, 0x93, 0x83, 0x68, 0x83, 0x6F, 0x83, 0x67
	.byte 0x83, 0x8B, 0x0A, 0x81, 0x40, 0x81, 0x40, 0x8F, 0x9F, 0x97, 0xA6, 0x00
	.global ov31_0211C05C
ov31_0211C05C:
	.byte 0x25, 0x33, 0x64, 0x25
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov31_0211C064
ov31_0211C064:
	.byte 0x82, 0xB1, 0x82, 0xEA, 0x82, 0xDC, 0x82, 0xC5, 0x82, 0xCC, 0x0A, 0x92
	.byte 0x87, 0x8A, 0xD4, 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x90, 0x94, 0x00
	.global ov31_0211C07C
ov31_0211C07C:
	.byte 0x25, 0x34, 0x64, 0x90
	.byte 0x6C, 0x00, 0x00, 0x00
	.global ov31_0211C084
ov31_0211C084:
	.byte 0x8D, 0xA1, 0x82, 0xCC, 0x0A, 0x92, 0x87, 0x8A, 0xD4, 0x83, 0x4C, 0x83
	.byte 0x83, 0x83, 0x89, 0x90, 0x94, 0x00, 0x00, 0x00
	.global ov31_0211C098
ov31_0211C098:
	.byte 0x25, 0x34, 0x64, 0x90, 0x6C, 0x00, 0x00, 0x00
	.global ov31_0211C0A0
ov31_0211C0A0:
	.byte 0x91, 0x49, 0x8E, 0xE8, 0x83, 0x6F, 0x83, 0x43, 0x83, 0x93, 0x83, 0x5F, 0x81, 0x5B, 0x0A, 0x81
	.byte 0x40, 0x83, 0x52, 0x83, 0x93, 0x83, 0x76, 0x97, 0xA6, 0x00, 0x00, 0x00
	.global ov31_0211C0BC
ov31_0211C0BC:
	.byte 0x25, 0x33, 0x64, 0x25
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov31_0211C0C4
ov31_0211C0C4:
	.byte 0x83, 0x86, 0x83, 0x6A, 0x83, 0x74, 0x83, 0x48, 0x81, 0x5B, 0x83, 0x80
	.byte 0x0A, 0x81, 0x40, 0x83, 0x52, 0x83, 0x93, 0x83, 0x76, 0x97, 0xA6, 0x00
	.global ov31_0211C0DC
ov31_0211C0DC:
	.byte 0x25, 0x33, 0x64, 0x25
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov31_0211C0E4
ov31_0211C0E4:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov31_0211C0E8
ov31_0211C0E8:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48
	.byte 0x81, 0x48, 0x00, 0x00
	.global ov31_0211C0F4
ov31_0211C0F4:
	.byte 0x25, 0x32, 0x64, 0x88, 0xCA, 0x20, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00
	.global ov31_0211C100
ov31_0211C100:
	.byte 0x25, 0x34, 0x64, 0x93, 0x5F, 0x00, 0x00, 0x00
	.global ov31_0211C108
ov31_0211C108:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov31_0211C10C
ov31_0211C10C:
	.byte 0x81, 0x48, 0x81, 0x48
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00
	.global ov31_0211C118
ov31_0211C118:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov31_0211C11C
ov31_0211C11C:
	.byte 0x25, 0x32, 0x64, 0x88
	.byte 0xCA, 0x20, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00
	.global ov31_0211C128
ov31_0211C128:
	.byte 0x25, 0x34, 0x64, 0x89, 0xF1, 0x00, 0x00, 0x00
	.global ov31_0211C130
ov31_0211C130:
	.byte 0x82, 0xC8, 0x82, 0xC7, 0x00, 0x00, 0x00, 0x00
	.global ov31_0211C138
ov31_0211C138:
	.byte 0x82, 0xC8, 0x82, 0xC7, 0x00, 0x00, 0x00, 0x00

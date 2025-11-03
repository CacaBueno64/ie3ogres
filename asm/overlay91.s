
	.include "/macros/function.inc"
	.include "/include/overlay91.inc"

	.text
	arm_func_start FUN_ov91_02119f00
FUN_ov91_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r4, #8]
	cmp r1, #3
	beq _02119F34
	cmp r1, #6
	beq _02119F40
	cmp r1, #7
	beq _02119F80
	ldmfd sp!, {r4, pc}
_02119F34:
	mov r0, #1
	strb r0, [r4, #0x11]
	ldmfd sp!, {r4, pc}
_02119F40:
	ldrh r2, [r4, #0xc]
	ldr r1, [r4, #4]
	add r0, r4, #0x5600
	strh r2, [r1, #0x8e]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r4, #0xc]
	cmp r1, r0
	ldrne r0, [r4, #4]
	movne r1, #1
	strneb r1, [r0, #0x8b]
	ldr r0, [r4, #4]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02041f2c
	ldmfd sp!, {r4, pc}
_02119F80:
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x8c]
	ldr r0, [r4, #4]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02041f2c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov91_02119f00

	arm_func_start FUN_ov91_02119fa4
FUN_ov91_02119fa4: ; 0x02119FA4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	sub sp, sp, #0x400
	mov r11, #0
	mov r10, r0
	mov r4, #0x200
	add r0, sp, #0x24c
	mov r1, r11
	mov r2, r4
	str r11, [r10, #0x74]
	mov r5, r11
	bl MI_CpuFill8
	add r0, sp, #0x4c
	mov r1, r11
	mov r2, r4
	bl MI_CpuFill8
	b _0211A118
_02119FE8:
	add r7, sp, #0
	mov r9, #1
	ldr r6, _0211A440 ; =0x020A12C0
	mov r4, #0x54
	ldr r1, _0211A444 ; =0x0211CA0C
	mov r0, r7
	mov r2, r11
	mov r3, r9
	mla r6, r11, r4, r6
	bl FUN_ov16_020f2cf8
	add r1, sp, #0x40
	mov r0, r7
	bl FUN_ov16_020f3054
	ldr r1, [sp, #0x40]
	add r0, r10, #0x5000
	add r7, r1, #0x4a
	ldr r8, [r0, #0x190]
	mov r4, r9
	b _0211A100
_0211A034:
	ldrsh r0, [r7, #0x3c]
	cmp r0, #0
	ble _0211A054
	ldrb r0, [r7, #0x46]
	cmp r0, #0
	ldrnesh r1, [r7, #0xa]
	cmpne r1, #0
	bgt _0211A05C
_0211A054:
	add r7, r7, #0x4a
	b _0211A0FC
_0211A05C:
	mov r0, r8
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq r7, r7, #0x4a
	addeq r9, r9, #1
	beq _0211A100
	ldrb r1, [r7, #0x46]
	ldrsh r0, [r7, #0x3c]
	mov r2, r4, lsl r9
	sub r1, r1, #1
	add r1, r10, r1, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x78]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x48]
	and r3, r0, r4, lsl r9
	and r0, r1, r2, asr #31
	cmp r0, #0
	ldrb r0, [r7, #0x46]
	cmpeq r3, #0
	subeq r0, r0, #1
	addeq r1, r10, r0, lsl #1
	ldreq r0, _0211A448 ; =0x0000FFFF
	streqh r0, [r1, #0x78]
	subne r0, r0, #1
	ldrnesh r1, [r7, #0xa]
	addne r0, r10, r0, lsl #1
	strneh r1, [r0, #0x78]
	ldrb r0, [r7, #0x46]
	cmp r0, #1
	ldreqsh r1, [r7, #0xa]
	subeq r0, r0, #1
	addeq r0, r10, r0, lsl #1
	streqh r1, [r0, #0x78]
	ldr r0, [r10, #0x74]
	add r7, r7, #0x4a
	add r0, r0, #1
	str r0, [r10, #0x74]
_0211A0FC:
	add r9, r9, #1
_0211A100:
	ldrsh r0, [r7, #0x3c]
	cmp r0, #0
	bge _0211A034
	add r0, sp, #0x40
	bl FUN_ov16_020f33fc
	add r11, r11, #1
_0211A118:
	cmp r11, #0xa
	blt _02119FE8
	mov r3, #0
	b _0211A184
_0211A128:
	add r0, r10, r3, lsl #1
	ldrh r0, [r0, #0x78]
	cmp r0, #0
	bne _0211A180
	add r0, r3, #1
	b _0211A178
_0211A140:
	add r2, r10, r0, lsl #1
	ldrh r1, [r2, #0x78]
	cmp r1, #0
	beq _0211A174
	add r0, r10, r3, lsl #1
	strh r1, [r0, #0x78]
	strh r5, [r2, #0x78]
	add r1, r2, #0x200
	ldrh r2, [r1, #0x78]
	add r0, r0, #0x200
	strh r2, [r0, #0x78]
	strh r5, [r1, #0x78]
	b _0211A180
_0211A174:
	add r0, r0, #1
_0211A178:
	cmp r0, #0x40
	blt _0211A140
_0211A180:
	add r3, r3, #1
_0211A184:
	cmp r3, #0x3f
	blt _0211A128
	mov r0, #0
	ldr r4, _0211A448 ; =0x0000FFFF
	b _0211A200
_0211A198:
	add r1, r10, r0, lsl #1
	ldrh r2, [r1, #0x78]
	ldr r1, _0211A448 ; =0x0000FFFF
	cmp r2, r1
	bne _0211A1FC
	add r6, r0, #1
	b _0211A1F0
_0211A1B4:
	add r3, r10, r6, lsl #1
	ldrh r2, [r3, #0x78]
	cmp r2, #0
	cmpne r2, r1
	beq _0211A1EC
	add r1, r10, r0, lsl #1
	strh r2, [r1, #0x78]
	strh r4, [r3, #0x78]
	add r2, r3, #0x200
	ldrh r3, [r2, #0x78]
	add r1, r1, #0x200
	strh r3, [r1, #0x78]
	strh r5, [r2, #0x78]
	b _0211A1FC
_0211A1EC:
	add r6, r6, #1
_0211A1F0:
	ldr r2, [r10, #0x74]
	cmp r6, r2
	blt _0211A1B4
_0211A1FC:
	add r0, r0, #1
_0211A200:
	ldr r1, [r10, #0x74]
	sub r1, r1, #1
	cmp r0, r1
	blt _0211A198
	ldr r0, _0211A44C ; =0x020A1640
	mov r7, #0
	ldrh r1, [r0, #0x10]
	cmp r1, #0
	beq _0211A30C
	mov r8, r7
	mov r9, r7
	add r11, r10, #0x5000
	mov r2, #1
	mov r1, #5
	add r4, sp, #0x24c
	add r3, sp, #0x4c
	b _0211A298
_0211A244:
	add r12, r10, r9, lsl #1
	ldrh r5, [r12, #0x78]
	mov r6, r9, lsl #1
	add r12, r12, #0x200
	strh r5, [r4, r6]
	ldrh r12, [r12, #0x78]
	strh r12, [r3, r6]
	ldrh r6, [r0, #0x10]
	cmp r6, r5
	bne _0211A28C
	mov r6, r7, lsr #0x1f
	rsb r5, r6, r7, lsl #31
	add r5, r6, r5, ror #31
	and r7, r5, #0xff
	cmp r7, #1
	mov r8, r9
	streqb r2, [r11, #0x634]
	streq r1, [r10, #0x14]
_0211A28C:
	add r5, r7, #1
	and r7, r5, #0xff
	add r9, r9, #1
_0211A298:
	ldr r5, [r10, #0x74]
	cmp r9, r5
	blt _0211A244
	mov r0, #0
	add r2, r10, #0x5000
	add r6, sp, #0x24c
	add r4, sp, #0x4c
	b _0211A300
_0211A2B8:
	ldr r1, [r10, #0x74]
	add r3, r8, r0
	cmp r3, r1
	subge r3, r3, r1
	ldrb r1, [r2, #0x634]
	cmp r1, #0
	beq _0211A2E0
	subs r3, r3, #1
	ldrmi r1, [r10, #0x74]
	submi r3, r1, #1
_0211A2E0:
	mov r7, r3, lsl #1
	ldrh r5, [r6, r7]
	add r3, r10, r0, lsl #1
	add r1, r3, #0x200
	strh r5, [r3, #0x78]
	ldrh r3, [r4, r7]
	add r0, r0, #1
	strh r3, [r1, #0x78]
_0211A300:
	ldr r1, [r10, #0x74]
	cmp r0, r1
	blt _0211A2B8
_0211A30C:
	mov r2, #0
	mov r4, r2
	ldr r0, _0211A448 ; =0x0000FFFF
	b _0211A330
_0211A31C:
	add r3, r10, r4, lsl #1
	ldrh r1, [r3, #0x78]
	add r4, r4, #1
	cmp r1, r0
	streqh r2, [r3, #0x78]
_0211A330:
	ldr r1, [r10, #0x74]
	cmp r4, r1
	blt _0211A31C
	mov r0, #0
	b _0211A3F8
_0211A344:
	ldr r5, [r10, #0x74]
	add r1, r0, #0xa
	cmp r1, r5
	bgt _0211A38C
	mov r6, #0
	add r1, r0, r0, lsr #31
	b _0211A380
_0211A360:
	add r4, r0, r6, lsl #1
	add r2, r6, r1, asr #1
	add r5, r4, #1
	add r3, r10, r2
	strb r5, [r3, #0x478]
	add r2, r4, #2
	strb r2, [r3, #0x4f8]
	add r6, r6, #1
_0211A380:
	cmp r6, #5
	blt _0211A360
	b _0211A3F4
_0211A38C:
	ldr r3, _0211A450 ; =0x66666667
	mov r1, r5, lsr #0x1f
	smull r2, r4, r3, r5
	add r4, r1, r4, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r4
	subs r4, r5, r1
	beq _0211A3F4
	add r1, r4, r4, lsr #31
	and r2, r4, #1
	add r6, r2, r1, asr #1
	mov r7, #0
	add r1, r0, r0, lsr #31
	b _0211A3EC
_0211A3C4:
	add r4, r0, r7, lsl #1
	add r2, r7, r1, asr #1
	add r5, r4, #1
	add r3, r10, r2
	strb r5, [r3, #0x478]
	ldr r2, [r10, #0x74]
	add r7, r7, #1
	cmp r5, r2
	addlt r2, r4, #2
	strltb r2, [r3, #0x4f8]
_0211A3EC:
	cmp r7, r6
	blt _0211A3C4
_0211A3F4:
	add r0, r0, #0xa
_0211A3F8:
	ldr r1, [r10, #0x74]
	cmp r0, r1
	blt _0211A344
	add r0, r1, r1, lsr #31
	and r1, r1, #1
	add r2, r1, r0, asr #1
	ldr r1, [r10, #0x14]
	mov r0, r10
	str r2, [r10, #0x54]
	bl FUN_ov91_0211b764
	strh r0, [r10, #0xc]
	ldr r1, [r10, #0x14]
	mov r0, r10
	bl FUN_ov91_0211b7d0
	strh r0, [r10, #0xe]
	add sp, sp, #0x4c
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A440: .word unk_020A12C0
_0211A444: .word ov91_0211CA0C
_0211A448: .word 0x0000FFFF
_0211A44C: .word unk_020A1640
_0211A450: .word 0x66666667
	arm_func_end FUN_ov91_02119fa4

	arm_func_start FUN_ov91_0211a454
FUN_ov91_0211a454: ; 0x0211A454
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x14]
	bl FUN_ov91_0211b764
	strh r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	mov r0, r5
	bl FUN_ov91_0211b7d0
	ldrh r1, [r5, #0xc]
	strh r0, [r5, #0xe]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #6
	ldr r0, _0211A4A4 ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, r4
	bl FUN_ov91_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4A4: .word gL5Sound
	arm_func_end FUN_ov91_0211a454

	arm_func_start FUN_ov91_0211a4a8
FUN_ov91_0211a4a8: ; 0x0211A4A8
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x50
	mov r12, r1
	mov r4, r2
	cmp r3, #0
	add r0, sp, #0
	beq _0211A4CC
	ldr r1, _0211A4EC ; =0x0211CA14
	b _0211A4D0
_0211A4CC:
	ldr r1, _0211A4F0 ; =0x0211CA2C
_0211A4D0:
	mov r2, r12
	bl sprintf
	add r0, sp, #0
	mov r1, r4
	bl FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r4, pc}
_0211A4EC: .word ov91_0211CA14
_0211A4F0: .word ov91_0211CA2C
	arm_func_end FUN_ov91_0211a4a8

	arm_func_start FUN_ov91_0211a4f4
FUN_ov91_0211a4f4: ; 0x0211A4F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r1, r4, #0x184
	ldr r0, _0211A57C ; =0x0211CA40
	add r1, r1, #0x5000
	bl FUN_ov16_020f316c
	add r2, r4, #0x190
	mov r5, #0
	ldr r1, _0211A580 ; =0x0211CA5C
	mov r0, r4
	mov r3, r5
	add r2, r2, #0x5000
	bl FUN_ov91_0211a4a8
	add r2, r4, #0x19c
	ldr r1, _0211A584 ; =0x0211CA6C
	mov r0, r4
	add r2, r2, #0x5000
	mov r3, r5
	bl FUN_ov91_0211a4a8
	mov r0, r4
	ldr r1, _0211A588 ; =0x0211CA7C
	add r2, r4, #0x1a8
	add r2, r2, #0x5000
	mov r5, #1
	mov r3, r5
	bl FUN_ov91_0211a4a8
	ldr r0, _0211A58C ; =0x0209BA20
	add r1, r4, #0x1e4
	add r1, r1, #0x5000
	bl FUN_ov16_020eed18 ; may be ov17
	mov r0, r4
	mov r1, r5
	bl FUN_ov91_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211A57C: .word ov91_0211CA40
_0211A580: .word ov91_0211CA5C
_0211A584: .word ov91_0211CA6C
_0211A588: .word ov91_0211CA7C
_0211A58C: .word unk_0209BA20
	arm_func_end FUN_ov91_0211a4f4

	arm_func_start FUN_ov91_0211a590
FUN_ov91_0211a590: ; 0x0211A590
	bx lr
	arm_func_end FUN_ov91_0211a590

	arm_func_start FUN_ov91_0211a594
FUN_ov91_0211a594: ; 0x0211A594
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0
	add r3, r4, #0x1f0
	str r0, [sp]
	add r0, r4, #0x5000
	ldr r1, [r0, #0x184]
	ldr r0, _0211A5DC ; =0x0211CA88
	ldr r2, _0211A5E0 ; =0x0211C88C
	add r3, r3, #0x5000
	bl FUN_ov16_020f5450
	add r0, r4, #0x178
	add r0, r0, #0x5000
	add r0, r0, #0xc
	bl FUN_ov16_020f33fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211A5DC: .word ov91_0211CA88
_0211A5E0: .word ov91_0211C88C
	arm_func_end FUN_ov91_0211a594

	arm_func_start FUN_ov91_0211a5e4
FUN_ov91_0211a5e4: ; 0x0211A5E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	add r0, r10, #0x1a8
	mov r9, #0
	add r8, r0, #0x5000
	mov r6, r9
	mov r5, #1
	add r7, sp, #0x18
	add r11, sp, #0x14
	ldr r4, _0211A69C ; =0x02099F38
	b _0211A678
_0211A614:
	add r0, r10, r9, lsl #1
	ldrh r1, [r0, #0x78]
	cmp r1, #0
	beq _0211A674
	ldr r0, [r8]
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A674
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _0211A6A0 ; =0x0211CAA4
	mov r3, r5
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x218]
_0211A674:
	add r9, r9, #1
_0211A678:
	ldr r0, [r10, #0x74]
	cmp r9, r0
	blt _0211A614
	add r0, r10, #0x178
	add r0, r0, #0x5000
	add r0, r0, #0x30
	bl FUN_ov16_020f33fc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A69C: .word unk_02099F38
_0211A6A0: .word ov91_0211CAA4
	arm_func_end FUN_ov91_0211a5e4

	arm_func_start FUN_ov91_0211a6a4
FUN_ov91_0211a6a4: ; 0x0211A6A4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	add r0, r4, #0x5000
	ldr r0, [r0, #0x190]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A768
	ldrb r0, [r4, #0x10]
	add r0, r0, #6
	add r0, r4, r0, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x1f0]
	cmp r1, #0
	beq _0211A71C
	ldr r0, _0211A820 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	ldrb r0, [r4, #0x10]
	mov r1, #0
	add r0, r0, #6
	add r0, r4, r0, lsl #2
	add r0, r0, #0x5000
	str r1, [r0, #0x1f0]
_0211A71C:
	ldr r0, _0211A820 ; =0x02099F38
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211A824 ; =0x0211CAC4
	str r12, [sp, #0x10]
	mov r1, #5
	bl FUN_02058800
	ldrb r1, [r4, #0x10]
	add r1, r1, #6
	add r1, r4, r1, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x1f0]
_0211A768:
	add r0, r4, #0x5000
	ldrh r1, [r4, #0xc]
	ldr r0, [r0, #0x19c]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldrb r0, [r4, #0x10]
	add r0, r0, #8
	add r0, r4, r0, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x1f0]
	cmp r1, #0
	beq _0211A7CC
	ldr r0, _0211A820 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	ldrb r0, [r4, #0x10]
	mov r1, #0
	add r0, r0, #8
	add r0, r4, r0, lsl #2
	add r0, r0, #0x5000
	str r1, [r0, #0x1f0]
_0211A7CC:
	ldr r0, _0211A820 ; =0x02099F38
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211A828 ; =0x0211CAE4
	str r12, [sp, #0x10]
	mov r1, #5
	bl FUN_02058800
	ldrb r1, [r4, #0x10]
	add r1, r1, #8
	add r1, r4, r1, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x1f0]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211A820: .word unk_02099F38
_0211A824: .word ov91_0211CAC4
_0211A828: .word ov91_0211CAE4
	arm_func_end FUN_ov91_0211a6a4

	arm_func_start FUN_ov91_0211a82c
FUN_ov91_0211a82c: ; 0x0211A82C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov16_020f081c
	mov r6, #1
	cmp r0, #0
	movne r6, #0
	mov r0, r6
	bl FUN_ov16_020f0a30
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0211A8A8 ; =0x0209BA20
	ldrh r2, [r4, #0xc]
	ldrh r3, [r4, #0xe]
	mov r0, r5
	mov r1, r6
	bl FUN_02070530
	mov r2, #1
	mov r0, r5
	mov r1, r6
	mov r3, r2
	bl FUN_0204d7fc
	mov r4, #4
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_0204baf0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_0204bb48
	ldmfd sp!, {r4, r5, r6, pc}
_0211A8A8: .word unk_0209BA20
	arm_func_end FUN_ov91_0211a82c

	arm_func_start FUN_ov91_0211a8ac
FUN_ov91_0211a8ac: ; 0x0211A8AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	ldr r6, _0211A940 ; =0x02099F38
	b _0211A8EC
_0211A8C0:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x1f0]
	cmp r1, #0
	beq _0211A8E8
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A8E8:
	add r4, r4, #1
_0211A8EC:
	cmp r4, #0xa
	blt _0211A8C0
	mov r4, #0
	ldr r6, _0211A940 ; =0x02099F38
	b _0211A92C
_0211A900:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x218]
	cmp r1, #0
	beq _0211A928
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A928:
	add r4, r4, #1
_0211A92C:
	ldr r0, [r5, #0x74]
	cmp r4, r0
	blt _0211A900
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A940: .word unk_02099F38
	arm_func_end FUN_ov91_0211a8ac

	arm_func_start FUN_ov91_0211a944
FUN_ov91_0211a944: ; 0x0211A944
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r9, r0
	mov r5, r8
	ldr r4, _0211AA30 ; =0x02099F38
	b _0211A9A0
_0211A95C:
	add r0, r9, r8, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x1f0]
	cmp r1, #0
	beq _0211A99C
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A99C
	add r0, r9, r8, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x1f0]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A99C:
	add r8, r8, #1
_0211A9A0:
	cmp r8, #6
	blt _0211A95C
	mov r8, #0
	mov r7, #4
	mov r6, #3
	mov r5, r8
	ldr r4, _0211AA30 ; =0x02099F38
	b _0211AA20
_0211A9C0:
	add r0, r9, r8, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x218]
	cmp r1, #0
	beq _0211AA1C
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AA1C
	add r0, r9, r8, lsl #2
	add r1, r0, #0x5000
	ldr r0, [r4]
	ldr r1, [r1, #0x218]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02114918
	add r0, r9, r8, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x218]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211AA1C:
	add r8, r8, #1
_0211AA20:
	ldr r0, [r9, #0x74]
	cmp r8, r0
	blt _0211A9C0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AA30: .word unk_02099F38
	arm_func_end FUN_ov91_0211a944

	arm_func_start FUN_ov91_0211aa34
FUN_ov91_0211aa34: ; 0x0211AA34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x178
	mov r7, #0
	add r6, r0, #0x5000
	mov r5, #0xc
	b _0211AA5C
_0211AA50:
	mla r0, r7, r5, r6
	bl FUN_ov16_020f33fc
	add r7, r7, #1
_0211AA5C:
	cmp r7, #0xa
	blt _0211AA50
	mov r6, #0
	ldr r5, _0211AB04 ; =0x02099F38
	b _0211AA90
_0211AA70:
	add r0, r4, r6, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x618]
	cmp r1, #0
	beq _0211AA8C
	ldr r0, [r5]
	bl FUN_ov16_021128c4
_0211AA8C:
	add r6, r6, #1
_0211AA90:
	cmp r6, #7
	blt _0211AA70
	mov r6, #0
	ldr r5, _0211AB04 ; =0x02099F38
	b _0211AAC4
_0211AAA4:
	add r0, r4, r6, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x218]
	cmp r1, #0
	beq _0211AAC0
	ldr r0, [r5]
	bl FUN_02058ee0
_0211AAC0:
	add r6, r6, #1
_0211AAC4:
	cmp r6, #0x100
	blt _0211AAA4
	mov r6, #0
	ldr r5, _0211AB04 ; =0x02099F38
	b _0211AAF8
_0211AAD8:
	add r0, r4, r6, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x1f0]
	cmp r1, #0
	beq _0211AAF4
	ldr r0, [r5]
	bl FUN_02058ee0
_0211AAF4:
	add r6, r6, #1
_0211AAF8:
	cmp r6, #0xa
	blt _0211AAD8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB04: .word unk_02099F38
	arm_func_end FUN_ov91_0211aa34

	arm_func_start FUN_ov91_0211ab08
FUN_ov91_0211ab08: ; 0x0211AB08
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, r1
	cmp r0, #5
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AC40 ; =0x02099ED4
	mov r4, #0
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0x18]
	cmpeq r0, #0
	ldreq r0, [r6, #0x40]
	cmpeq r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211AC44 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211AC38
_0211AB74: ; jump table
	b _0211AC38 ; case 0
	b _0211AB8C ; case 1
	b _0211ABA8 ; case 2
	b _0211ABE0 ; case 3
	b _0211AC08 ; case 4
	b _0211ABC4 ; case 5
_0211AB8C:
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov91_0211ae08
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ABA8:
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov91_0211ae74
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ABC4:
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov91_0211af10
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ABE0:
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	str r4, [sp]
	mov r1, r0
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	mov r0, r6
	bl FUN_ov91_0211af68
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC08:
	ldr r0, [r7]
	add r1, sp, #4
	bl FUN_ov16_0210f48c
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	mov r1, #1
	str r1, [sp]
	mov r1, r0
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r6
	bl FUN_ov91_0211af68
_0211AC38:
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC40: .word unk_02099ED4
_0211AC44: .word unk_02099EB4
	arm_func_end FUN_ov91_0211ab08

	arm_func_start FUN_ov91_0211ac48
FUN_ov91_0211ac48: ; 0x0211AC48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211ADF8 ; =0x0209A0F4
	mov r6, r0
	ldrh r0, [r2]
	mov r5, r1
	ldr r1, [r6, #8]
	orr r0, r0, r5
	mov r0, r0, lsl #0x10
	cmp r1, #5
	mov r4, r0, lsr #0x10
	ldreqb r0, [r6, #0x13]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211ADFC ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0x18]
	cmpeq r0, #0
	ldreq r0, [r6, #0x40]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211AE00 ; =0x02099EB4
	ldr r0, [r7]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211ACD4
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r4, r5
	strh r1, [r0, #0x38]
_0211ACD4:
	mov r0, r6
	mov r1, r5
	bl FUN_ov91_0211c304
	tst r5, #1
	beq _0211AD14
	mov r0, r6
	bl FUN_ov91_0211b220
	cmp r0, #0
	beq _0211AD04
	mov r0, r6
	bl FUN_ov91_0211a454
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD04:
	ldr r0, _0211AE04 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD14:
	tst r5, #2
	beq _0211AD38
	ldr r0, _0211AE04 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #7
	bl FUN_ov91_02119f00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD38:
	tst r4, #0x40
	beq _0211AD60
	ldr r1, [r6, #0x14]
	cmp r1, #5
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	sub r1, r1, #5
	mov r2, #5
	bl FUN_ov91_0211bcc8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD60:
	tst r4, #0x80
	beq _0211AD88
	ldr r1, [r6, #0x14]
	cmp r1, #5
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	add r1, r1, #5
	mov r2, #5
	bl FUN_ov91_0211bcc8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD88:
	tst r4, #0x20
	beq _0211ADC0
	ldr r1, [r6, #0x14]
	mov r0, r6
	cmp r1, #0
	cmpne r1, #5
	beq _0211ADB4
	sub r1, r1, #1
	mov r2, #5
	bl FUN_ov91_0211bcc8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADB4:
	mvn r1, #0
	bl FUN_ov91_0211c01c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADC0:
	tst r4, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x14]
	mov r0, r6
	cmp r1, #4
	cmpne r1, #9
	beq _0211ADEC
	add r1, r1, #1
	mov r2, #5
	bl FUN_ov91_0211bcc8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADEC:
	mov r1, #1
	bl FUN_ov91_0211c01c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADF8: .word unk_0209A0F4
_0211ADFC: .word unk_02099ED4
_0211AE00: .word unk_02099EB4
_0211AE04: .word gL5Sound
	arm_func_end FUN_ov91_0211ac48

	arm_func_start FUN_ov91_0211ae08
FUN_ov91_0211ae08: ; 0x0211AE08
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	cmp r1, #5
	blt _0211AE48
	cmp r1, #0xf
	bgt _0211AE48
	ldr r2, [r4, #0x14]
	sub r1, r1, #5
	str r2, [r4, #0x38]
	cmp r1, r2
	ldmeqfd sp!, {r4, pc}
	mov r2, #5
	bl FUN_ov91_0211bcc8
	ldmfd sp!, {r4, pc}
_0211AE48:
	sub r0, r1, #3
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	cmp r1, #3
	mvneq r1, #0
	movne r1, #1
	mov r0, r4
	bl FUN_ov91_0211c01c
	mov r0, #0xf
	str r0, [r4, #0x58]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov91_0211ae08

	arm_func_start FUN_ov91_0211ae74
FUN_ov91_0211ae74: ; 0x0211AE74
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211AF0C ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #1
	blt _0211AEC8
	cmp r5, #2
	bgt _0211AEC8
	cmp r0, #0
	ldrneh r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r4]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211AEC8:
	cmp r5, #3
	cmpne r5, #4
	moveq r0, #0
	streq r0, [r6, #0x58]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #5
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r5, #0xf
	ldrle r0, [r6, #0x38]
	suble r1, r5, #5
	cmple r0, r1
	ldreq r0, _0211AF0C ; =0x02099EB4
	moveq r1, #1
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211AF0C: .word unk_02099EB4
	arm_func_end FUN_ov91_0211ae74

	arm_func_start FUN_ov91_0211af10
FUN_ov91_0211af10: ; 0x0211AF10
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	sub r0, r1, #3
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	ldr r0, [r4, #0x58]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	sub r0, r0, #1
	str r0, [r4, #0x58]
	cmp r0, #0
	ldmgtfd sp!, {r4, pc}
	cmp r1, #3
	mvneq r1, #0
	movne r1, #1
	mov r0, r4
	bl FUN_ov91_0211c01c
	mov r0, #4
	str r0, [r4, #0x58]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov91_0211af10

	arm_func_start FUN_ov91_0211af68
FUN_ov91_0211af68: ; 0x0211AF68
	cmp r1, #0
	bxle lr
	sub r1, r1, #3
	cmp r1, #1
	bxhi lr
	ldrb r1, [sp]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x58]
	bx lr
	arm_func_end FUN_ov91_0211af68

	arm_func_start FUN_ov91_0211af90
FUN_ov91_0211af90: ; 0x0211AF90
	stmfd sp!, {r4, lr}
	bl G2_GetBG1CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov91_0211af90

	arm_func_start FUN_ov91_0211afc0
FUN_ov91_0211afc0: ; 0x0211AFC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r7, r0
	mov r4, r2
	mov r6, r3
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r5, #7
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0xa
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, r5, lsl #2
	add r0, r0, #0x5000
	ldr r0, [r0, #0x618]
	cmp r0, #0
	bne _0211B038
	ldr r0, _0211B180 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	add r1, r7, r5, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x618]
_0211B038:
	add r0, r7, r5, lsl #2
	add r1, r7, r4, lsl #2
	add r0, r0, #0x5000
	add r1, r1, #0x5000
	ldr r2, [r1, #0x1f0]
	ldr r4, [r0, #0x618]
	ldr r7, _0211B180 ; =0x02099F38
	mov r1, r4
	ldr r0, [r7]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r5, #0
	ldr r0, [r7]
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_0211346c
	ldr r0, [r7]
	mov r1, r4
	mov r2, #0x118
	bl FUN_ov16_02112b98
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r7]
	mov r1, r4
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r3, r4
	mov r2, r2, lsl #0x10
	ldr r0, _0211B184 ; =0x02099EB4
	str r1, [sp]
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fbe8
	movs r8, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [sp, #0x34]
	strb r4, [r8, #0x11]
	ldrh r7, [sp, #0x30]
	strb r0, [r8, #0x10]
	strb r5, [r8, #0xf]
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r8, #0x3a
	strh r7, [r8, #0xc]
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r8, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x3e
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r5
	add r2, r6, #1
	mov r3, r5
	bl FUN_ov16_0210e720
	mov r2, r4
	add r0, r8, #0x42
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r8, #0x42
	add r2, r6, #2
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B180: .word unk_02099F38
_0211B184: .word unk_02099EB4
	arm_func_end FUN_ov91_0211afc0

	arm_func_start FUN_ov91_0211b188
FUN_ov91_0211b188: ; 0x0211B188
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r1, #0xa0
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0x1e
	str r2, [sp, #0xc]
	mov r4, r0
	str r1, [sp, #0x10]
	mov r3, #0
	mov r2, #2
	str r3, [sp, #0x14]
	bl FUN_ov91_0211afc0
	mov r0, r4
	bl FUN_ov91_0211b1d8
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov91_0211b188

	arm_func_start FUN_ov91_0211b1d8
FUN_ov91_0211b1d8: ; 0x0211B1D8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211B21C ; =0x02099EB4
	mov r6, r0
	mov r5, #1
	ldr r0, [r1]
	mov r1, r5
	bl FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov91_0211b220
	cmp r0, #0
	movne r5, #0
	mov r0, r4
	strb r5, [r4, #0x10]
	bl FUN_ov16_0210e69c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B21C: .word unk_02099EB4
	arm_func_end FUN_ov91_0211b1d8

	arm_func_start FUN_ov91_0211b220
FUN_ov91_0211b220: ; 0x0211B220
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x14]
	bl FUN_ov91_0211b764
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov91_0211b220

	arm_func_start FUN_ov91_0211b23c
FUN_ov91_0211b23c: ; 0x0211B23C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r2, #0x1e
	str r2, [sp, #0xc]
	mov r4, r0
	str r1, [sp, #0x10]
	mov r3, #0
	mov r2, #3
	str r3, [sp, #0x14]
	bl FUN_ov91_0211afc0
	mov r0, r4
	bl FUN_ov91_0211b28c
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov91_0211b23c

	arm_func_start FUN_ov91_0211b28c
FUN_ov91_0211b28c: ; 0x0211B28C
	stmfd sp!, {r3, lr}
	ldr r0, _0211B2B8 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0
	strb r1, [r0, #0x10]
	bl FUN_ov16_0210e69c
	ldmfd sp!, {r3, pc}
_0211B2B8: .word unk_02099EB4
	arm_func_end FUN_ov91_0211b28c

	arm_func_start FUN_ov91_0211b2bc
FUN_ov91_0211b2bc: ; 0x0211B2BC
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0x11]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0211B2F8 ; =0x0209F5C0
	mov r5, #0
	strb r5, [r0, #0x11]
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_020f5ff4
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B2F8: .word unk_0209F5C0
	arm_func_end FUN_ov91_0211b2bc

	arm_func_start FUN_ov91_0211b2fc
FUN_ov91_0211b2fc: ; 0x0211B2FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x5000
	ldr r0, [r0, #0x618]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B380 ; =0x02099F38
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r6, r0
	add r0, r7, #0x5000
	str r6, [r0, #0x618]
	ldr r3, [r0, #0x1f0]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r6
	sub r3, r5, #1
	mov r2, #0x12c
	bl FUN_ov16_02112c90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B380: .word unk_02099F38
	arm_func_end FUN_ov91_0211b2fc

	arm_func_start FUN_ov91_0211b384
FUN_ov91_0211b384: ; 0x0211B384
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x5000
	ldr r0, [r0, #0x628]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _0211B4F0 ; =0x02099F38
	ldr r1, [r10, #0x74]
	ldr r0, [r5]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r7, r0
	add r0, r10, #0x5000
	ldr r2, [r0, #0x204]
	str r7, [r0, #0x628]
	ldr r0, [r5]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r4, #0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_0211346c
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0x104
	bl FUN_ov16_02112b98
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	bl FUN_ov16_02113390
	b _0211B440
_0211B40C:
	add r0, r10, r4, lsl #1
	ldrh r0, [r0, #0x78]
	cmp r0, #0
	beq _0211B43C
	add r0, r10, r4, lsl #2
	add r0, r0, #0x5000
	ldr r3, [r0, #0x218]
	ldr r0, [r5]
	mov r1, r7
	add r2, r4, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
_0211B43C:
	add r4, r4, #1
_0211B440:
	ldr r0, [r10, #0x74]
	cmp r4, r0
	blt _0211B40C
	mov r9, #0
	mov r6, #1
	ldr r4, _0211B4F4 ; =0x66666667
	ldr r5, _0211B4F0 ; =0x02099F38
	mov r11, #0x28
	b _0211B4E4
_0211B464:
	smull r2, r1, r4, r9
	mov r0, r9, lsr #0x1f
	add r1, r0, r1, asr #1
	mov r2, #5
	smull r1, r3, r2, r1
	smull r3, r2, r4, r9
	add r2, r0, r2, asr #1
	sub r1, r9, r1
	add r0, r10, r2, lsl #7
	add r0, r0, r1
	ldrb r8, [r0, #0x478]
	mov r0, #0x28
	mul r0, r2, r0
	add r0, r0, #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mul r0, r1, r11
	add r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r5]
	mov r2, r8
	mov r1, r7
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r9, r9, #1
_0211B4E4:
	cmp r9, #0xa
	blt _0211B464
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B4F0: .word unk_02099F38
_0211B4F4: .word 0x66666667
	arm_func_end FUN_ov91_0211b384

	arm_func_start FUN_ov91_0211b4f8
FUN_ov91_0211b4f8: ; 0x0211B4F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrh r0, [r6, #0xc]
	mov r5, #1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x10]
	ldr r4, _0211B704 ; =0x02099F38
	add r0, r0, #6
	add r0, r6, r0, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x1f0]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B580
	ldrb r1, [r6, #0x10]
	ldr r0, [r4]
	mov r2, #0xe
	add r1, r1, #6
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r1, [r1, #0x1f0]
	mov r3, #3
	bl FUN_ov16_02114918
	ldrb r1, [r6, #0x10]
	mov r2, #0
	ldr r0, [r4]
	add r1, r1, #6
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r1, [r1, #0x1f0]
	mov r3, r2
	bl FUN_02059038
_0211B580:
	ldrb r0, [r6, #0x10]
	ldr r4, _0211B704 ; =0x02099F38
	add r0, r0, #8
	add r0, r6, r0, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x1f0]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B5F0
	ldrb r1, [r6, #0x10]
	ldr r0, [r4]
	mov r2, #8
	add r1, r1, #8
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r1, [r1, #0x1f0]
	mov r3, #3
	bl FUN_ov16_02114918
	ldrb r1, [r6, #0x10]
	mov r2, #0
	ldr r0, [r4]
	add r1, r1, #8
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r1, [r1, #0x1f0]
	mov r3, r2
	bl FUN_02059038
_0211B5F0:
	add r0, r6, #0x5000
	ldr r0, [r0, #0x630]
	cmp r0, #0
	bne _0211B61C
	ldr r0, _0211B704 ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r6, #0x5000
	str r0, [r1, #0x630]
_0211B61C:
	ldrb r1, [r6, #0x10]
	add r0, r6, #0x5000
	ldr r7, _0211B704 ; =0x02099F38
	add r1, r1, #6
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r4, [r0, #0x630]
	ldr r3, [r1, #0x1f0]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0x118
	bl FUN_ov16_021139bc
	mov r0, #0x78
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0x68
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r4
	add r2, r5, #1
	ldrb r3, [r6, #0x10]
	add r3, r3, #8
	add r3, r6, r3, lsl #2
	add r3, r3, #0x5000
	ldr r3, [r3, #0x1f0]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r7]
	mov r1, r4
	add r2, r5, #1
	mov r3, #0x104
	bl FUN_ov16_021139bc
	add r2, r5, #1
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r3, #0x20
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r4
	mov r2, #0
	mov r3, r2
	bl FUN_ov16_0211346c
	ldr r0, [r7]
	mov r1, r4
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B704: .word unk_02099F38
	arm_func_end FUN_ov91_0211b4f8

	arm_func_start FUN_ov91_0211b708
FUN_ov91_0211b708: ; 0x0211B708
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	beq _0211B73C
	mov r1, #4
	bl FUN_ov91_02119f00
	ldrb r1, [r4, #0x10]
	mov r0, r4
	eor r1, r1, #1
	strb r1, [r4, #0x10]
	bl FUN_ov91_0211a6a4
	ldmfd sp!, {r4, pc}
_0211B73C:
	add r0, r4, #0x5000
	ldr r1, [r0, #0x630]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211B760 ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	bl FUN_ov16_02113390
	ldmfd sp!, {r4, pc}
_0211B760: .word unk_02099F38
	arm_func_end FUN_ov91_0211b708

	arm_func_start FUN_ov91_0211b764
FUN_ov91_0211b764: ; 0x0211B764
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211B7CC ; =0x66666667
	mov r5, r1
	smull r2, r3, r4, r5
	mov r1, r5, lsr #0x1f
	add r3, r1, r3, asr #1
	mov r2, #5
	mov r6, r0
	smull r0, r1, r2, r3
	ldr r2, [r6, #0x3c]
	sub r3, r5, r0
	ldr r1, [r6, #0x54]
	add r0, r2, r3
	bl _s32_div_f
	mov r0, r5, lsr #0x1f
	smull r2, r3, r4, r5
	add r3, r0, r3, asr #1
	add r0, r6, r3, lsl #7
	add r0, r0, r1
	ldrb r0, [r0, #0x478]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	addne r0, r6, r0, lsl #1
	ldrneh r0, [r0, #0x78]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B7CC: .word 0x66666667
	arm_func_end FUN_ov91_0211b764

	arm_func_start FUN_ov91_0211b7d0
FUN_ov91_0211b7d0: ; 0x0211B7D0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	ldr r4, _0211B878 ; =0x66666667
	mov r5, r1
	smull r2, r3, r4, r5
	mov r1, r5, lsr #0x1f
	add r3, r1, r3, asr #1
	mov r2, #5
	mov r6, r0
	smull r0, r1, r2, r3
	ldr r2, [r6, #0x3c]
	sub r3, r5, r0
	ldr r1, [r6, #0x54]
	add r0, r2, r3
	bl _s32_div_f
	mov r0, r5, lsr #0x1f
	smull r2, r3, r4, r5
	add r3, r0, r3, asr #1
	add r0, r6, r3, lsl #7
	add r0, r0, r1
	ldrb r0, [r0, #0x478]
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	sub r0, r0, #1
	add r0, r6, r0, lsl #1
	add r0, r0, #0x200
	ldrh r1, [r0, #0x78]
	ldr r0, _0211B87C ; =0x0209BA20
	add r2, sp, #0
	bl FUN_0207273c
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [sp, #2]
	ldrsb r2, [sp, #3]
	mov r0, r6
	bl FUN_ov91_0211b880
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, pc}
_0211B878: .word 0x66666667
_0211B87C: .word unk_0209BA20
	arm_func_end FUN_ov91_0211b7d0

	arm_func_start FUN_ov91_0211b880
FUN_ov91_0211b880: ; 0x0211B880
	cmp r1, #0
	ldreq r0, _0211B8A8 ; =0x020E9490
	ldreq r0, [r0]
	addeq r2, r2, r0
	cmp r2, #0
	movle r2, #1
	cmp r2, #0x63
	movgt r2, #0x63
	mov r0, r2
	bx lr
_0211B8A8: .word ov1_020E9490
	arm_func_end FUN_ov91_0211b880

	arm_func_start FUN_ov91_0211b8ac
FUN_ov91_0211b8ac: ; 0x0211B8AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r7, #0
	mov r6, #0x20
	mov r5, #0xa
	mov r4, #2
	ldr r9, _0211B928 ; =0x02099EB4
	b _0211B918
_0211B8D0:
	mov r0, r8
	mov r1, r7
	bl FUN_ov91_0211bb20
	mov r10, r0
	mov r0, r8
	mov r1, r7
	bl FUN_ov91_0211bb50
	stmia sp, {r0, r6}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r7, #5
	mov r2, r2, lsl #0x10
	ldr r0, [r9]
	mov r3, r10
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fba4
	add r7, r7, #1
_0211B918:
	cmp r7, #0xa
	blt _0211B8D0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B928: .word unk_02099EB4
	arm_func_end FUN_ov91_0211b8ac

	arm_func_start FUN_ov91_0211b92c
FUN_ov91_0211b92c: ; 0x0211B92C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, r4, #0x5000
	ldr r0, [r0, #0x624]
	mov r6, #1
	cmp r0, #0
	bne _0211B968
	ldr r0, _0211BB18 ; =0x02099F38
	mov r2, r6
	ldr r0, [r0]
	mov r1, #2
	bl FUN_ov16_02112724
	add r1, r4, #0x5000
	str r0, [r1, #0x624]
_0211B968:
	add r0, r4, #0x5000
	ldr r5, [r0, #0x624]
	ldr r2, [r0, #0x1f4]
	ldr r7, _0211BB18 ; =0x02099F38
	mov r1, r5
	ldr r0, [r7]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r7]
	mov r1, r5
	mov r2, #0xc8
	bl FUN_ov16_02112b98
	mov r4, #0
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r8, #0x18
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #1
	mov r3, #2
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r7]
	add r2, r6, #1
	mov r1, r5
	mov r3, #0xf0
	bl FUN_ov16_02113b78
	mov r7, #1
	mov r1, #3
	str r7, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, _0211BB1C ; =0x02099EB4
	mov r2, r1
	ldr r0, [r0]
	mov r3, r5
	bl FUN_ov16_0210fc74
	movs r6, r0
	beq _0211BA80
	mov r1, r4
	mov r2, r7
	mov r3, r4
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r7
	add r0, r6, #0x3e
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r7
	mov r1, r4
	mov r3, r4
	bl FUN_ov16_0210e720
_0211BA80:
	mov r4, #2
	str r4, [sp]
	mov r1, #0xa
	ldr r0, _0211BB1C ; =0x02099EB4
	str r1, [sp, #4]
	mov r8, #3
	ldr r0, [r0]
	mov r1, r8
	mov r3, r5
	mov r2, #4
	bl FUN_ov16_0210fc74
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r5, #1
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r2, r8
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BB18: .word unk_02099F38
_0211BB1C: .word unk_02099EB4
	arm_func_end FUN_ov91_0211b92c

	arm_func_start FUN_ov91_0211bb20
FUN_ov91_0211bb20: ; 0x0211BB20
	ldr r3, _0211BB4C ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r2, r12, r3, r1
	add r12, r0, r12, asr #1
	mov r3, #5
	smull r0, r2, r3, r12
	sub r12, r1, r0
	mov r0, #0x28
	mul r0, r12, r0
	add r0, r0, #0x20
	bx lr
_0211BB4C: .word 0x66666667
	arm_func_end FUN_ov91_0211bb20

	arm_func_start FUN_ov91_0211bb50
FUN_ov91_0211bb50: ; 0x0211BB50
	ldr r2, _0211BB70 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #1
	mov r0, #0x28
	mul r0, r3, r0
	add r0, r0, #0x10
	bx lr
_0211BB70: .word 0x66666667
	arm_func_end FUN_ov91_0211bb50

	arm_func_start FUN_ov91_0211bb74
FUN_ov91_0211bb74: ; 0x0211BB74
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x38]
	bx lr
	arm_func_end FUN_ov91_0211bb74

	arm_func_start FUN_ov91_0211bba4
FUN_ov91_0211bba4: ; 0x0211BBA4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	add r0, r4, #0x5000
	ldr r0, [r0, #0x62c]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _0211BC5C ; =0x02099F38
	mov r8, #1
	ldr r0, [r5]
	mov r1, r8
	mov r2, r8
	bl FUN_ov16_02112724
	mov r7, r0
	add r0, r4, #0x5000
	ldr r2, [r0, #0x200]
	str r7, [r0, #0x62c]
	ldr r0, [r5]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r6, #0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_0211346c
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xfa
	bl FUN_ov16_02112b98
	ldr r0, [r5]
	mov r1, r7
	mov r3, r8
	mov r2, #2
	bl FUN_ov16_0211329c
	add r0, r4, #0x5000
	ldrb r0, [r0, #0x634]
	cmp r0, #0
	mov r0, r4
	beq _0211BC50
	mov r1, #5
	bl FUN_ov91_0211bc60
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BC50:
	mov r1, r6
	bl FUN_ov91_0211bc60
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BC5C: .word unk_02099F38
	arm_func_end FUN_ov91_0211bba4

	arm_func_start FUN_ov91_0211bc60
FUN_ov91_0211bc60: ; 0x0211BC60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r2, r7, #0x5000
	str r6, [r7, #0x14]
	ldr r5, [r2, #0x62c]
	mov r4, #1
	bl FUN_ov91_0211bb20
	str r0, [r7, #0x1c]
	mov r0, r7
	mov r1, r6
	bl FUN_ov91_0211bb50
	mov r1, r0, lsl #0x10
	str r0, [r7, #0x20]
	mov r0, r1, asr #0x10
	str r0, [sp]
	ldr r1, [r7, #0x1c]
	ldr r0, _0211BCC4 ; =0x02099F38
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BCC4: .word unk_02099F38
	arm_func_end FUN_ov91_0211bc60

	arm_func_start FUN_ov91_0211bcc8
FUN_ov91_0211bcc8: ; 0x0211BCC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r7, [r6, #0x14]
	mov r5, r1
	mov r12, #1
	mov r3, #0
	mov r1, r7
	mov r4, r2
	str r12, [r6, #0x18]
	str r3, [r6, #0x2c]
	bl FUN_ov91_0211bb20
	str r0, [r6, #0x1c]
	mov r0, r6
	mov r1, r7
	bl FUN_ov91_0211bb50
	str r0, [r6, #0x20]
	mov r0, r6
	mov r1, r5
	bl FUN_ov91_0211bb20
	str r0, [r6, #0x24]
	mov r0, r6
	mov r1, r5
	bl FUN_ov91_0211bb50
	ldr r2, [r6, #0x24]
	ldr r1, [r6, #0x1c]
	str r0, [r6, #0x28]
	sub r0, r2, r1
	mov r1, r4
	bl _s32_div_f
	str r0, [r6, #0x30]
	ldr r2, [r6, #0x28]
	ldr r0, [r6, #0x20]
	mov r1, r4
	sub r0, r2, r0
	bl _s32_div_f
	str r0, [r6, #0x34]
	ldr r2, [r6, #0x24]
	ldr r0, [r6, #0x1c]
	cmp r0, r2
	ble _0211BD7C
	mov r1, r4
	sub r0, r0, r2
	bl _s32_div_f
	rsb r0, r0, #0
	str r0, [r6, #0x30]
_0211BD7C:
	ldr r2, [r6, #0x28]
	ldr r0, [r6, #0x20]
	cmp r0, r2
	ble _0211BDA0
	mov r1, r4
	sub r0, r0, r2
	bl _s32_div_f
	rsb r0, r0, #0
	str r0, [r6, #0x34]
_0211BDA0:
	ldr r0, _0211BDEC ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, r5
	str r5, [r6, #0x14]
	bl FUN_ov91_0211b764
	strh r0, [r6, #0xc]
	ldr r1, [r6, #0x14]
	mov r0, r6
	bl FUN_ov91_0211b7d0
	strh r0, [r6, #0xe]
	mov r0, r6
	bl FUN_ov91_0211b708
	mov r0, r6
	bl FUN_ov91_0211b1d8
	mov r0, r6
	bl FUN_ov91_0211b28c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BDEC: .word gL5Sound
	arm_func_end FUN_ov91_0211bcc8

	arm_func_start FUN_ov91_0211bdf0
FUN_ov91_0211bdf0: ; 0x0211BDF0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, [r0, #0x2c]
	ldr lr, [r0, #0x30]
	add r2, r1, #1
	ldr r3, [r0, #0x1c]
	ldr r12, [r0, #0x20]
	ldr r4, [r0, #0x34]
	add r1, r0, #0x5000
	mla r3, lr, r2, r3
	cmp lr, #0
	mla r12, r4, r2, r12
	str r2, [r0, #0x2c]
	ldr r1, [r1, #0x62c]
	mov r2, #1
	ldr lr, [r0, #0x24]
	bge _0211BE40
	cmp r3, lr
	movlt r3, lr
	b _0211BE48
_0211BE40:
	cmp r3, lr
	movgt r3, lr
_0211BE48:
	cmp r4, #0
	ldr lr, [r0, #0x28]
	bge _0211BE60
	cmp r12, lr
	movlt r12, lr
	b _0211BE68
_0211BE60:
	cmp r12, lr
	movgt r12, lr
_0211BE68:
	ldr lr, [r0, #0x24]
	cmp r3, lr
	ldreq lr, [r0, #0x28]
	mov r3, r3, lsl #0x10
	cmpeq r12, lr
	moveq lr, #0
	streq lr, [r0, #0x18]
	streq lr, [r0, #0x2c]
	mov r0, r12, lsl #0x10
	mov r12, r0, asr #0x10
	ldr r0, _0211BEAC ; =0x02099F38
	str r12, [sp]
	ldr r0, [r0]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211BEAC: .word unk_02099F38
	arm_func_end FUN_ov91_0211bdf0

	arm_func_start FUN_ov91_0211beb0
FUN_ov91_0211beb0: ; 0x0211BEB0
	mov r1, #0
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r1, [r0, #0x50]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x44]
	str r1, [r0, #0x58]
	bx lr
	arm_func_end FUN_ov91_0211beb0

	arm_func_start FUN_ov91_0211bed4
FUN_ov91_0211bed4: ; 0x0211BED4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r0
	add r0, r8, #0x5000
	ldr r4, [r0, #0x628]
	ldr r6, [r8, #0x3c]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r9, _0211C018 ; =0x02099F38
	mov r7, #0
	ldr r0, [r9]
	mov r1, r4
	mov r2, r7
	mov r3, r7
	bl FUN_ov16_02114248
	ldr r0, [r9]
	mov r1, r4
	mov r2, #2
	bl FUN_ov16_02113390
	mov r11, #1
	b _0211C00C
_0211BF24:
	add r0, r8, r6
	ldrb r5, [r0, #0x478]
	cmp r5, #0
	beq _0211BF8C
	mov r0, r8
	mov r1, r7
	bl FUN_ov91_0211bb20
	mov r10, r0
	mov r0, r8
	mov r1, r7
	bl FUN_ov91_0211bb50
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r10, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r9]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r9]
	mov r2, r5
	mov r1, r4
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211BF8C:
	add r0, r8, r6
	ldrb r5, [r0, #0x4f8]
	cmp r5, #0
	beq _0211BFF8
	mov r0, r8
	add r1, r7, #5
	bl FUN_ov91_0211bb20
	mov r10, r0
	mov r0, r8
	add r1, r7, #5
	bl FUN_ov91_0211bb50
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r10, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r9]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r9]
	mov r2, r5
	mov r1, r4
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211BFF8:
	ldr r0, [r8, #0x54]
	add r6, r6, #1
	cmp r6, r0
	movge r6, #0
	add r7, r7, #1
_0211C00C:
	cmp r7, #5
	blt _0211BF24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C018: .word unk_02099F38
	arm_func_end FUN_ov91_0211bed4

	arm_func_start FUN_ov91_0211c01c
FUN_ov91_0211c01c: ; 0x0211C01C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x5000
	ldr r5, [r0, #0x628]
	ldr r2, [r10, #0x3c]
	mov r9, r1
	add r4, r2, r9
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x54]
	cmp r4, #0
	sublt r4, r0, #1
	blt _0211C058
	cmp r4, r0
	movge r4, #0
_0211C058:
	mov r6, #0
	mov r0, #1
	str r0, [r10, #0x40]
	str r6, [r10, #0x44]
	cmp r9, #0
	bge _0211C100
	mov r0, r10
	mov r1, r6
	bl FUN_ov91_0211bb20
	sub r7, r0, #0x28
	mov r0, r10
	mov r1, r6
	bl FUN_ov91_0211bb50
	add r1, r10, r4
	ldrb r6, [r1, #0x478]
	cmp r6, #0
	beq _0211C0E0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r8, _0211C25C ; =0x02099F38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C0E0:
	mov r0, r10
	mov r1, #5
	bl FUN_ov91_0211bb50
	add r1, r10, r4
	ldrb r6, [r1, #0x4f8]
	cmp r6, #0
	beq _0211C1E4
	b _0211C1A0
_0211C100:
	ldr r1, [r10, #0x54]
	add r0, r2, #5
	bl _s32_div_f
	mov r6, #4
	mov r8, r1
	mov r0, r10
	mov r1, r6
	bl FUN_ov91_0211bb20
	add r7, r0, #0x28
	mov r0, r10
	mov r1, r6
	bl FUN_ov91_0211bb50
	add r1, r10, r8
	ldrb r6, [r1, #0x478]
	cmp r6, #0
	beq _0211C184
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r11, _0211C25C ; =0x02099F38
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C184:
	mov r0, r10
	mov r1, #5
	bl FUN_ov91_0211bb50
	add r1, r10, r8
	ldrb r6, [r1, #0x4f8]
	cmp r6, #0
	beq _0211C1E4
_0211C1A0:
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r8, _0211C25C ; =0x02099F38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C1E4:
	rsb r1, r9, #0
	mov r0, #0x28
	mul r5, r1, r0
	ldr r2, _0211C260 ; =0x66666667
	mov r3, #0
	mov r0, r5, lsr #0x1f
	smull r1, r6, r2, r5
	add r6, r0, r6, asr #1
	ldr r0, _0211C264 ; =gL5Sound
	mov r1, #8
	str r6, [r10, #0x50]
	str r3, [r10, #0x48]
	str r5, [r10, #0x4c]
	bl FUN_0202cf6c
	ldr r1, [r10, #0x14]
	mov r0, r10
	str r4, [r10, #0x3c]
	bl FUN_ov91_0211b764
	strh r0, [r10, #0xc]
	ldr r1, [r10, #0x14]
	mov r0, r10
	bl FUN_ov91_0211b7d0
	strh r0, [r10, #0xe]
	mov r0, r10
	bl FUN_ov91_0211b708
	mov r0, r10
	bl FUN_ov91_0211b1d8
	mov r0, r10
	bl FUN_ov91_0211b28c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C25C: .word unk_02099F38
_0211C260: .word 0x66666667
_0211C264: .word gL5Sound
	arm_func_end FUN_ov91_0211c01c

	arm_func_start FUN_ov91_0211c268
FUN_ov91_0211c268: ; 0x0211C268
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x44]
	ldr r3, [r0, #0x50]
	add r2, r1, #1
	ldr r12, [r0, #0x48]
	add r1, r0, #0x5000
	mla r12, r3, r2, r12
	str r2, [r0, #0x44]
	cmp r3, #0
	ldr r1, [r1, #0x628]
	ldr r2, [r0, #0x4c]
	bge _0211C2A4
	cmp r12, r2
	movlt r12, r2
	b _0211C2AC
_0211C2A4:
	cmp r12, r2
	movgt r12, r2
_0211C2AC:
	ldr r2, [r0, #0x4c]
	cmp r12, r2
	bne _0211C2CC
	mov r1, #0
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	bl FUN_ov91_0211bed4
	ldmfd sp!, {r3, pc}
_0211C2CC:
	ldr r0, _0211C2E8 ; =0x02099F38
	mov r2, r12, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, asr #0x10
	mov r3, #0
	bl FUN_ov16_02114248
	ldmfd sp!, {r3, pc}
_0211C2E8: .word unk_02099F38
	arm_func_end FUN_ov91_0211c268

	arm_func_start FUN_ov91_0211c2ec
FUN_ov91_0211c2ec: ; 0x0211C2EC
	ldr r0, _0211C2FC ; =0x0209F5C0
	ldr r12, _0211C300 ; = FUN_ov16_020f672c
	mov r1, #0
	bx r12
_0211C2FC: .word unk_0209F5C0
_0211C300: .word FUN_ov16_020f672c
	arm_func_end FUN_ov91_0211c2ec

	arm_func_start FUN_ov91_0211c304
FUN_ov91_0211c304: ; 0x0211C304
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r0, [r0, #0x70]
	ldr r4, _0211C34C ; =0x02099EB4
	add r2, sp, #0
	and r0, r1, r0
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211C34C: .word unk_02099EB4
	arm_func_end FUN_ov91_0211c304

	arm_func_start FUN_ov91_0211c350
FUN_ov91_0211c350: ; 0x0211C350
	stmfd sp!, {r4, r5, r6, lr}
	bl G2_GetBG1CharPtr
	mov r4, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	bl G2_GetBG2CharPtr
	mov r1, r4
	bl DC_FlushRange
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r0, r6
	ldr r5, _0211C414 ; =0x020A6C40
	mov r4, #0x800
	mov r1, r5
	mov r2, r4
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG1Scr
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG2Scr
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG3Scr
	ldmfd sp!, {r4, r5, r6, pc}
_0211C414: .word unk_020A6C40
	arm_func_end FUN_ov91_0211c350

	arm_func_start FUN_ov91_0211c418
FUN_ov91_0211c418: ; 0x0211C418
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	mov r1, #3
	str r4, [r5, #8]
	strb r4, [r5, #0x13]
	strb r4, [r5, #0x12]
	strb r4, [r5, #0x11]
	str r4, [r5, #0x74]
	strb r4, [r5, #0x10]
	strh r1, [r5, #0x70]
	bl FUN_ov91_0211bb74
	mov r0, r5
	bl FUN_ov91_0211beb0
	add r0, r5, #0x178
	mov r1, r4
	add r0, r0, #0x5000
	mov r2, #0x78
	bl MI_CpuFill8
	mov r6, #0x200
	mov r1, r4
	mov r2, r6
	add r0, r5, #0x78
	bl MI_CpuFill8
	mov r2, r6
	add r0, r5, #0x278
	mov r1, r4
	bl MI_CpuFill8
	add r0, r5, #0x1f0
	add r0, r0, #0x5000
	mov r1, r4
	mov r2, #0x28
	bl MI_CpuFill8
	add r0, r5, #0x218
	add r0, r0, #0x5400
	mov r1, r4
	mov r2, #0x1c
	bl MI_CpuFill8
	add r0, r5, #0x218
	add r0, r0, #0x5000
	mov r1, r4
	mov r2, #0x400
	bl MI_CpuFill8
	add r0, r5, #0x78
	add r0, r0, #0x400
	mov r1, r4
	mov r2, #0x100
	bl MI_CpuFill8
	ldr r0, _0211C56C ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211C570 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _0211C574 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	str r4, [r5, #0x5c]
	str r4, [r5, #0x68]
	strb r4, [r5, #0x6c]
	strb r4, [r5, #0x6d]
	mov r0, #1
	str r0, [r5, #0x60]
	sub r0, r0, #2
	str r0, [r5, #0x64]
	ldr r0, _0211C578 ; =0x0209BA20
	bl FUN_020728c4
	strh r0, [r5, #0xc]
	ldr r0, _0211C57C ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f5a58
	ldr r0, _0211C580 ; =0x020A1640
	strh r4, [r5, #0xc]
	ldrh r0, [r0, #0x10]
	mov r2, #0
	cmp r0, #0
	strneh r0, [r5, #0xc]
	ldrneh r1, [r5, #0xc]
	addne r0, r5, #0x5600
	strneh r1, [r0, #0x36]
	add r1, r5, #0x5000
	mov r0, r5
	strb r2, [r1, #0x634]
	bl FUN_ov91_0211a4f4
	ldmfd sp!, {r4, r5, r6, pc}
_0211C56C: .word unk_02099EB4
_0211C570: .word unk_02099ED4
_0211C574: .word unk_02099F38
_0211C578: .word unk_0209BA20
_0211C57C: .word unk_0209F5C0
_0211C580: .word unk_020A1640
	arm_func_end FUN_ov91_0211c418

	arm_func_start FUN_ov91_0211c584
FUN_ov91_0211c584: ; 0x0211C584
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211C6A0
_0211C59C: ; jump table
	b _0211C6A0 ; case 0
	b _0211C5BC ; case 1
	b _0211C6A0 ; case 2
	b _0211C608 ; case 3
	b _0211C684 ; case 4
	b _0211C6A0 ; case 5
	b _0211C69C ; case 6
	b _0211C69C ; case 7
_0211C5BC:
	add r0, r4, #0x178
	add r0, r0, #0x5000
	mov r1, #0xa
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211C6A0
	mov r0, r4
	bl FUN_ov91_0211a590
	mov r0, r4
	bl FUN_ov91_0211a594
	mov r0, r4
	bl FUN_ov91_02119fa4
	mov r0, r4
	bl FUN_ov91_0211a5e4
	mov r0, r4
	bl FUN_ov91_0211a6a4
	mov r0, r4
	mov r1, #2
	b _0211C67C
_0211C608:
	bl FUN_ov91_0211a8ac
	cmp r0, #0
	beq _0211C6A0
	mov r0, r4
	bl FUN_ov91_0211a944
	mov r0, r4
	bl FUN_ov91_0211b8ac
	mov r0, r4
	bl FUN_ov91_0211b92c
	mov r0, r4
	bl FUN_ov91_0211b2fc
	mov r0, r4
	bl FUN_ov91_0211b188
	mov r0, r4
	bl FUN_ov91_0211b23c
	mov r0, r4
	bl FUN_ov91_0211b2bc
	mov r0, r4
	bl FUN_ov91_0211b384
	mov r0, r4
	bl FUN_ov91_0211bba4
	mov r0, r4
	bl FUN_ov91_0211b4f8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211C674:
	mov r0, r4
	mov r1, #5
_0211C67C:
	bl FUN_ov91_02119f00
	b _0211C6A0
_0211C684:
	bl FUN_ov91_0211a8ac
	cmp r0, #0
	beq _0211C6A0
	mov r0, r4
	bl FUN_ov91_0211b4f8
	b _0211C674
_0211C69C:
	bl FUN_ov91_0211c2ec
_0211C6A0:
	ldr r0, _0211C724 ; =0x02099ED4
	ldr r5, _0211C728 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211C6D8
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211C6E4
_0211C6D8:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211C6E4:
	bl _ffix
	ldr r2, _0211C72C ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211C70C
	mov r0, r4
	bl FUN_ov91_0211bdf0
_0211C70C:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov91_0211c268
	ldmfd sp!, {r3, r4, r5, pc}
_0211C724: .word unk_02099ED4
_0211C728: .word unk_0209A110
_0211C72C: .word unk_02099F58
	arm_func_end FUN_ov91_0211c584

	arm_func_start FUN_ov91_0211c730
FUN_ov91_0211c730: ; 0x0211C730
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0211C750
	cmp r1, #5
	beq _0211C768
	ldmfd sp!, {r4, pc}
_0211C750:
	bl FUN_ov91_0211af90
	bl FUN_ov16_020f10ac
	mov r0, r4
	mov r1, #3
	bl FUN_ov91_02119f00
	ldmfd sp!, {r4, pc}
_0211C768:
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov91_0211c730

	arm_func_start FUN_ov91_0211c770
FUN_ov91_0211c770: ; 0x0211C770
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211C85C ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211C860 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov91_0211a82c
	ldr r5, _0211C864 ; =0x0209BA20
	mov r1, #0
	mov r0, r5
	bl FUN_0207249c
	mov r6, r0
	mov r0, r5
	mov r1, #1
	bl FUN_0207249c
	ldrh r2, [r6, #0x40]
	ldr r1, _0211C868 ; =0x0209A454
	strh r2, [r6, #0x28]
	cmp r2, #0
	ldreqh r2, [r6, #0x26]
	strh r2, [r1, #0x3c]
	ldrh r3, [r0, #0x40]
	ldr r1, _0211C868 ; =0x0209A454
	mov r2, #1
	strh r3, [r0, #0x28]
	cmp r3, #0
	ldreqh r3, [r0, #0x26]
	strh r3, [r1, #0x3e]
	strb r2, [r6, #0x2c]
	strb r2, [r0, #0x2c]
	ldrh r1, [r6, #0x28]
	ldrh r2, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r6, #0x26]
	cmp r2, #0
	ldreqh r2, [r0, #0x26]
	cmp r1, r2
	moveq r1, #0
	streqb r1, [r0, #0x2c]
	add r0, r4, #0x178
	add r0, r0, #0x5000
	mov r1, #0xa
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov91_0211aa34
	ldr r0, _0211C864 ; =0x0209BA20
	bl FUN_ov16_020eedb8
	ldr r0, _0211C86C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r0, _0211C870 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	mov r0, r4
	bl FUN_ov91_0211c350
	ldmfd sp!, {r4, r5, r6, pc}
_0211C85C: .word unk_02099EB4
_0211C860: .word unk_02099ED4
_0211C864: .word unk_0209BA20
_0211C868: .word unk_0209A454
_0211C86C: .word unk_02099F38
_0211C870: .word unk_0209F5C0
	arm_func_end FUN_ov91_0211c770

	arm_func_start FUN_ov91_0211c874
FUN_ov91_0211c874: ; 0x0211C874
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov91_0211c874

	arm_func_start FUN_ov91_0211c888
FUN_ov91_0211c888: ; 0x0211C888
	bx lr
	arm_func_end FUN_ov91_0211c888

	.rodata
	.global ov91_0211C88C
ov91_0211C88C:
	.word ov91_0211C988
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov91_0211C938
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov91_0211C948
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov91_0211C968
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov91_0211C978
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov91_0211C958
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov91_0211c8c4
FUN_ov91_0211c8c4: ; 0x0211C8C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211C90C ; =0x0211C920
	str r0, [r4, #4]
	ldr r0, _0211C910 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211C914 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C90C: .word ov91_0211C920
_0211C910: .word 0x00009CCD
_0211C914: .word 0x0000EA3C
	arm_func_end FUN_ov91_0211c8c4

	.section .sinit, 4
ov91_0211C918:
	.word FUN_ov91_0211c8c4

	.data
	.global ov91_0211C920
ov91_0211C920:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov91_0211C938
ov91_0211C938:
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov91_0211C948
ov91_0211C948:
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov91_0211C958
ov91_0211C958:
	.byte 0x77, 0x67, 0x64, 0x5F, 0x65, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov91_0211C968
ov91_0211C968:
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov91_0211C978
ov91_0211C978:
	.byte 0x77, 0x67, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov91_0211C988
ov91_0211C988:
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov91_0211C9A0
ov91_0211C9A0:
	.word FUN_ov91_0211c888
	.word FUN_ov91_0211c874
	.word FUN_ov91_0211ac48
	.word FUN_ov91_0211ab08
	.word FUN_ov91_0211c418
	.word FUN_0202b208
	.word FUN_ov91_0211c584
	.word FUN_ov91_0211c730
	.word FUN_ov91_0211c770
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b320
	.word FUN_0202b310
	.word FUN_0202b304
	.word FUN_0202b2f8
	.word FUN_0202b2e8
	.word FUN_0202b2d8
	.word FUN_0202b2c8
	.word FUN_0202b2bc
	.word FUN_0202b2b0
	.word FUN_0202b1d8
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global ov91_0211CA0C
ov91_0211CA0C:
	.byte 0x47, 0x61, 0x6D, 0x65
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov91_0211CA14
ov91_0211CA14:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x25, 0x73, 0x00, 0x00
	.global ov91_0211CA2C
ov91_0211CA2C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x25, 0x73, 0x00, 0x00, 0x00
	.global ov91_0211CA40
ov91_0211CA40:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x56
	.byte 0x73, 0x43, 0x6F, 0x6D, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov91_0211CA5C
ov91_0211CA5C:
	.byte 0x74, 0x65, 0x61, 0x6D
	.byte 0x2F, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x73, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov91_0211CA6C
ov91_0211CA6C:
	.byte 0x74, 0x65, 0x61, 0x6D
	.byte 0x2F, 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov91_0211CA7C
ov91_0211CA7C:
	.byte 0x6D, 0x67, 0x75, 0x5F
	.byte 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00
	.global ov91_0211CA88
ov91_0211CA88:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x56, 0x73, 0x43, 0x6F, 0x6D, 0x2E, 0x53, 0x50, 0x44
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov91_0211CAA4
ov91_0211CAA4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70
	.byte 0x6B, 0x62, 0x00, 0x00
	.global ov91_0211CAC4
ov91_0211CAC4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x73, 0x2E, 0x70
	.byte 0x6B, 0x62, 0x00, 0x00
	.global ov91_0211CAE4
ov91_0211CAE4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x62
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

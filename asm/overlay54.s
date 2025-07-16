
	.include "/macros/function.inc"
	.include "/include/overlay54.inc"

	.text
	arm_func_start FUN_ov54_02119f00
FUN_ov54_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F24 ; =0x0211C99C
	add r1, r4, #0x18
	bl  FUN_ov16_020f316c
	ldr r0, _02119F28 ; =0x0211C9B8
	add r1, r4, #0x24
	bl  FUN_ov16_020f316c
	ldmfd sp!, {r4, pc}
_02119F24: .word ov54_0211C99C
_02119F28: .word ov54_0211C9B8
	arm_func_end FUN_ov54_02119f00

	arm_func_start FUN_ov54_02119f2c
FUN_ov54_02119f2c: ; 0x02119F2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	str r4, [sp]
	ldr r1, [r5, #0x18]
	ldr r0, _02119F60 ; =0x0211C9D8
	ldr r2, _02119F64 ; =0x0211C7AC
	add r3, r5, #0x30
	bl  FUN_ov16_020f5450
	mov r0, r5
	mov r1, r4
	bl FUN_ov54_0211a000
	ldmfd sp!, {r3, r4, r5, pc}
_02119F60: .word ov54_0211C9D8
_02119F64: .word 0x0211C7AC
	arm_func_end FUN_ov54_02119f2c

	arm_func_start FUN_ov54_02119f68
FUN_ov54_02119f68: ; 0x02119F68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r9, #0
	mov r10, r0
	ldr r11, _02119FF8 ; =0x0211C9F4
	mov r6, r9
	mov r5, #1
	add r8, sp, #0x18
	add r7, sp, #0x14
	ldr r4, _02119FFC ; =0x02099F38
	b _02119FE8
_02119F94:
	ldr r0, [r10, #0x24]
	mov r2, r8
	mov r3, r7
	add r1, r9, #0x65
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _02119FE4
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	mov r2, r11
	mov r3, r5
	str r12, [sp, #0x10]
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x60]
_02119FE4:
	add r9, r9, #1
_02119FE8:
	cmp r9, #0x18
	blt _02119F94
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02119FF8: .word ov54_0211C9F4
_02119FFC: .word unk_02099F38
	arm_func_end FUN_ov54_02119f68

	arm_func_start FUN_ov54_0211a000
FUN_ov54_0211a000: ; 0x0211A000
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	bmi _0211A018
	cmp r4, #2
	blt _0211A06C
_0211A018:
	mov r4, #0
	add r9, r5, #0x18
	mov r8, #1
	mov r7, r4
	mov r6, #0xc
_0211A02C:
	mul r10, r4, r6
	mov r1, r8
	add r0, r9, r10
	bl  FUN_ov16_020f338c
	add r0, r9, r10
	bl  FUN_ov16_020f33fc
	add r0, r5, r10
	str r7, [r0, #0x18]
	str r7, [r0, #0x1c]
	strb r7, [r0, #0x20]
	strb r7, [r0, #0x21]
	add r4, r4, #1
	strb r7, [r0, #0x22]
	cmp r4, #2
	blt _0211A02C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A06C:
	mov r0, #0xc
	mul r6, r4, r0
	add r4, r5, #0x18
	add r0, r4, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r6
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r6]
	add r0, r5, r6
	str r1, [r0, #0x1c]
	strb r1, [r0, #0x20]
	strb r1, [r0, #0x21]
	strb r1, [r0, #0x22]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov54_0211a000

	arm_func_start FUN_ov54_0211a0ac
FUN_ov54_0211a0ac: ; 0x0211A0AC
	stmfd sp!, {r4, r5, r6, lr}
	mvn r1, #0
	mov r5, r0
	bl FUN_ov54_0211a000
	mov r4, #0
	ldr r6, _0211A150 ; =0x02099F38
	b _0211A0E4
_0211A0C8:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x44]
	cmp r1, #0
	beq _0211A0E0
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211A0E0:
	add r4, r4, #1
_0211A0E4:
	cmp r4, #7
	blt _0211A0C8
	mov r4, #0
	ldr r6, _0211A150 ; =0x02099F38
	b _0211A114
_0211A0F8:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _0211A110
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A110:
	add r4, r4, #1
_0211A114:
	cmp r4, #5
	blt _0211A0F8
	mov r4, #0
	ldr r6, _0211A150 ; =0x02099F38
	b _0211A144
_0211A128:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x60]
	cmp r1, #0
	beq _0211A140
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A140:
	add r4, r4, #1
_0211A144:
	cmp r4, #0x18
	blt _0211A128
	ldmfd sp!, {r4, r5, r6, pc}
_0211A150: .word unk_02099F38
	arm_func_end FUN_ov54_0211a0ac

	arm_func_start FUN_ov54_0211a154
FUN_ov54_0211a154: ; 0x0211A154
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r4
	ldr r7, _0211A260 ; =0x02099F38
	b _0211A1C4
_0211A16C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _0211A1C0
	ldr r0, [r7]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x30]
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A1C0
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x30]
	ldr r0, [r7]
	mov r2, r4
	mov r3, r4
	bl FUN_02059038
_0211A1C0:
	add r5, r5, #1
_0211A1C4:
	cmp r5, #5
	blt _0211A16C
	mov r5, #0
	mov r9, #8
	mov r8, #3
	ldr r7, _0211A260 ; =0x02099F38
	b _0211A250
_0211A1E0:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x60]
	cmp r1, #0
	beq _0211A24C
	ldr r0, [r7]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x60]
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A24C
	add r1, r6, r5, lsl #2
	ldr r0, [r7]
	ldr r1, [r1, #0x60]
	mov r2, r9
	mov r3, r8
	bl  FUN_ov16_02114918
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x60]
	ldr r0, [r7]
	mov r2, r4
	mov r3, r4
	bl FUN_02059038
_0211A24C:
	add r5, r5, #1
_0211A250:
	cmp r5, #0x18
	blt _0211A1E0
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A260: .word unk_02099F38
	arm_func_end FUN_ov54_0211a154

	arm_func_start FUN_ov54_0211a264
FUN_ov54_0211a264: ; 0x0211A264
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x44]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211A2E0 ; =0x02099F38
	mov r6, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r6
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r7, #0x44]
	ldr r0, [r4]
	mov r1, r5
	sub r3, r6, #2
	mov r2, #0x1f4
	bl  FUN_ov16_02112c90
	ldr r2, [r7, #0x30]
	ldr r0, [r4]
	mov r1, r5
	and r3, r2, #0xff
	mov r2, r6
	bl  FUN_ov16_021137dc
	mov r1, r5
	mov r2, r6
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2E0: .word unk_02099F38
	arm_func_end FUN_ov54_0211a264

	arm_func_start FUN_ov54_0211a2e4
FUN_ov54_0211a2e4: ; 0x0211A2E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r4, r1
	mov r8, r0
	mov r7, r2
	mov r6, r3
	bmi _0211A304
	cmp r4, #7
	blt _0211A30C
_0211A304:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A30C:
	cmp r7, #5
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r8, r4, lsl #2
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _0211A344
	ldr r0, _0211A414 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	add r1, r8, r4, lsl #2
	str r0, [r1, #0x44]
_0211A344:
	add r0, r8, r4, lsl #2
	ldr r5, [r0, #0x44]
	ldr r9, _0211A414 ; =0x02099F38
	mov r4, #1
	ldr r0, [r9]
	mov r1, r5
	mov r3, r4
	mov r2, #2
	bl  FUN_ov16_021142fc
	add r0, r8, r7, lsl #2
	ldr r2, [r0, #0x30]
	ldr r0, [r9]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r5
	mov r2, r6
	mov r3, #0
	bl  FUN_ov16_0211346c
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x1a4
	bl  FUN_ov16_02112b98
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r5
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldr r2, [sp, #0x2c]
	ldr r0, _0211A418 ; =0x02099EB4
	str r2, [sp]
	ldr r2, [sp, #0x28]
	ldr r0, [r0]
	mov r2, r2, lsl #0x10
	mov r1, r4
	mov r3, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fbe8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r3, [sp, #0x34]
	ldrb r2, [sp, #0x38]
	ldrh r1, [sp, #0x30]
	strb r3, [r0, #0x10]
	strb r2, [r0, #0xf]
	strh r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A414: .word unk_02099F38
_0211A418: .word unk_02099EB4
	arm_func_end FUN_ov54_0211a2e4

	arm_func_start FUN_ov54_0211a41c
FUN_ov54_0211a41c: ; 0x0211A41C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r1, #0x10
	str r1, [sp]
	mov r6, #1
	mov r1, #0x90
	stmib sp, {r1, r6}
	mov r5, #0
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r1, r6
	mov r2, r6
	mov r3, r5
	str r5, [sp, #0x18]
	bl FUN_ov54_0211a2e4
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov54_0211a41c

	arm_func_start FUN_ov54_0211a4c0
FUN_ov54_0211a4c0: ; 0x0211A4C0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r1, #0x98
	str r1, [sp]
	mov r7, #2
	mov r1, #0x90
	stmib sp, {r1, r7}
	mov r6, #0
	str r6, [sp, #0xc]
	mov r5, #1
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r1, r7
	mov r2, r5
	mov r3, r7
	str r6, [sp, #0x18]
	bl FUN_ov54_0211a2e4
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r7
	mov r3, r6
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #3
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov54_0211a4c0

	arm_func_start FUN_ov54_0211a568
FUN_ov54_0211a568: ; 0x0211A568
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r7, #0
	str r7, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r3, r7
	mov r2, #2
	mov r4, r0
	str r7, [sp, #0x18]
	bl FUN_ov54_0211a2e4
	movs r6, r0
	beq _0211A604
	mov r5, #1
	mov r1, r7
	mov r2, r5
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r7
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r7
	mov r2, r5
	add r0, r6, #0x3e
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r5
	mov r1, r7
	mov r3, r7
	bl  FUN_ov16_0210e720
_0211A604:
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r1, #4
	mov r6, #2
	str r1, [sp, #8]
	mov r7, #0
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, r4
	mov r2, r6
	mov r3, r6
	str r7, [sp, #0x18]
	bl FUN_ov54_0211a2e4
	movs r5, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r4, #1
	mov r1, r7
	mov r2, r4
	mov r3, r7
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r6
	mov r3, r7
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r7
	mov r2, r4
	mov r3, r7
	add r0, r5, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r7
	mov r3, r7
	mov r2, #3
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov54_0211a568

	arm_func_start FUN_ov54_0211a6ac
FUN_ov54_0211a6ac: ; 0x0211A6AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r9, #0
	mov r1, r9
	mov r10, r0
	bl FUN_ov54_0211a7ec
	add r8, sp, #0x14
	add r7, sp, #0x10
	mov r6, #0x40
	mov r5, r9
	mov r11, #2
	ldr r4, _0211A73C ; =0x02099EB4
	b _0211A72C
_0211A6E0:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov54_0211af84
	ldr r1, [sp, #0x10]
	add r0, r9, #5
	add r1, r1, #8
	stmia sp, {r1, r6}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	add r3, r1, #8
	ldr r0, [r4]
	mov r1, r11
	bl  FUN_ov16_0210fba4
	add r9, r9, #1
_0211A72C:
	cmp r9, #6
	blt _0211A6E0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A73C: .word unk_02099EB4
	arm_func_end FUN_ov54_0211a6ac

	arm_func_start FUN_ov54_0211a740
FUN_ov54_0211a740: ; 0x0211A740
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0x5c]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _0211A7E8 ; =0x02099F38
	mov r7, #2
	mov r6, #1
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r8, #0x5c]
	ldr r3, [r8, #0x40]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, [r4]
	mov r2, r6
	mov r1, r5
	mov r3, #0x1e0
	bl  FUN_ov16_021139bc
	ldr r1, [r8, #0x3c]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_021137dc
	mov r2, r7
	ldr r0, [r4]
	mov r1, r5
	mov r3, #0x1b8
	bl  FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r5
	mov r2, #0
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A7E8: .word unk_02099F38
	arm_func_end FUN_ov54_0211a740

	arm_func_start FUN_ov54_0211a7ec
FUN_ov54_0211a7ec: ; 0x0211A7EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r0, [r10, #0x58]
	str r1, [sp, #4]
	cmp r0, #0
	bne _0211A820
	ldr r0, _0211A9E8 ; =0x02099F38
	mov r1, #8
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r10, #0x58]
_0211A820:
	ldr r4, _0211A9E8 ; =0x02099F38
	ldr r8, [r10, #0x58]
	ldr r0, [r4]
	mov r1, r8
	mov r2, #0x1cc
	bl  FUN_ov16_02112b98
	mov r9, #0
	add r6, sp, #0xc
	add r5, sp, #8
	mov r11, r9
	b _0211A8E0
_0211A84C:
	ldr r1, [r10, #0xc8]
	mov r0, r10
	mov r2, r9
	bl FUN_ov54_0211af08
	mov r7, r0
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, r5
	bl FUN_ov54_0211af84
	ldr r0, [sp, #8]
	mov r1, r8
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	add r2, r9, #1
	ldr r3, [sp, #0xc]
	add r3, r3, #8
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add r0, r10, r7, lsl #2
	ldr r1, [r0, #0x60]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r8
	add r2, r9, #1
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r8
	add r2, r9, #1
	mov r3, r11
	bl  FUN_ov16_0211401c
	add r9, r9, #1
_0211A8E0:
	cmp r9, #6
	blt _0211A84C
	ldr r4, _0211A9E8 ; =0x02099F38
	mov r5, #2
	ldr r0, [r4]
	mov r1, r8
	mov r3, r5
	mov r2, #7
	bl  FUN_ov16_02113f7c
	ldr r0, [r4]
	mov r1, r8
	mov r3, r5
	mov r2, #8
	bl  FUN_ov16_02113f7c
	ldr r0, [sp, #4]
	ldr r2, _0211A9EC ; =0x2AAAAAAB
	cmp r0, #0
	ldr r0, [r10, #0xc8]
	mov r4, #0
	addeq r3, r0, #3
	addne r3, r0, #0xb
	smull r1, r5, r2, r3
	mov r0, r3, lsr #0x1f
	add r5, r0, r5, asr #1
	mov r2, #0xc
	smull r0, r1, r2, r5
	sub r5, r3, r0
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov54_0211af08
	add r0, r10, r0, lsl #2
	ldr r3, [r0, #0x60]
	ldr r6, _0211A9E8 ; =0x02099F38
	mov r7, #7
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r6]
	mov r2, r7
	mov r1, r8
	mov r3, r4
	bl  FUN_ov16_0211401c
	mov r1, r5
	mov r0, r10
	mov r2, #3
	bl FUN_ov54_0211af08
	add r0, r10, r0, lsl #2
	ldr r1, [r0, #0x60]
	mov r5, #8
	and r3, r1, #0xff
	ldr r0, [r6]
	mov r1, r8
	mov r2, r5
	bl  FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_0211401c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A9E8: .word unk_02099F38
_0211A9EC: .word 0x2AAAAAAB
	arm_func_end FUN_ov54_0211a7ec

	arm_func_start FUN_ov54_0211a9f0
FUN_ov54_0211a9f0: ; 0x0211A9F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r5, r1
	bl FUN_ov54_0211a7ec
	ldr r0, [r4, #0xc8]
	cmp r5, #0
	addeq r3, r0, #1
	addne r3, r0, #0xb
	ldr r2, _0211AC9C ; =0x2AAAAAAB
	mov r0, r3, lsr #0x1f
	smull r1, r6, r2, r3
	add r6, r0, r6, asr #1
	mov r2, #0xc
	smull r0, r1, r2, r6
	sub r6, r3, r0
	mov r8, #7
	mov r7, #2
	str r6, [r4, #0xc8]
	mov r9, #1
	str r9, [sp]
	ldr r10, _0211ACA0 ; =0x02099F38
	ldr r1, [r4, #0x58]
	ldr r0, [r10]
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_02113ec0
	str r9, [sp]
	mov r6, #8
	ldr r0, [r10]
	ldr r1, [r4, #0x58]
	mov r2, r6
	mov r3, r7
	bl  FUN_ov16_02113ec0
	cmp r5, #0
	mov r5, #0
	beq _0211AB90
	ldr r10, _0211ACA4 ; =0x0211C790
	mov r0, r4
	ldr r1, [r10, #0xc]
	str r1, [sp]
	ldr r3, [r10]
	mov r1, r8
	stmib sp, {r3, r5}
	ldr r2, [r10, #8]
	bl FUN_ov54_0211aca8
	ldr r1, [r10, #0x10]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10]
	mov r1, r9
	stmib sp, {r3, r5}
	ldr r2, [r10, #0xc]
	bl FUN_ov54_0211aca8
	ldr r2, [r10, #0x14]
	mov r1, r7
	str r2, [sp]
	ldr r3, [r10]
	mov r0, r4
	stmib sp, {r3, r5}
	ldr r2, [r10, #0x10]
	bl FUN_ov54_0211aca8
	ldr r1, [r10, #0x18]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10]
	mov r1, #3
	stmib sp, {r3, r5}
	ldr r2, [r10, #0x14]
	bl FUN_ov54_0211aca8
	ldr r2, [r10, #0xc]
	mov r1, r6
	str r2, [sp]
	ldr r3, [r10, #4]
	mov r0, r4
	stmib sp, {r3, r5}
	ldr r2, [r10, #8]
	bl FUN_ov54_0211aca8
	ldr r1, [r10, #0x10]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10, #4]
	mov r1, #4
	stmib sp, {r3, r5}
	ldr r2, [r10, #0xc]
	bl FUN_ov54_0211aca8
	ldr r1, [r10, #0x14]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10, #4]
	mov r1, #5
	stmib sp, {r3, r5}
	ldr r2, [r10, #0x10]
	bl FUN_ov54_0211aca8
	ldr r2, [r10, #0x18]
	mov r0, r4
	str r2, [sp]
	ldr r3, [r10, #4]
	mov r1, #6
	stmib sp, {r3, r9}
	ldr r2, [r10, #0x14]
	bl FUN_ov54_0211aca8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211AB90:
	ldr r10, _0211ACA4 ; =0x0211C790
	mov r0, r4
	ldr r1, [r10, #0x14]
	str r1, [sp]
	ldr r3, [r10]
	mov r1, r8
	stmib sp, {r3, r5}
	ldr r2, [r10, #0x18]
	bl FUN_ov54_0211aca8
	ldr r1, [r10, #8]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10]
	mov r1, r9
	stmib sp, {r3, r5}
	ldr r2, [r10, #0xc]
	bl FUN_ov54_0211aca8
	ldr r2, [r10, #0xc]
	mov r1, r7
	str r2, [sp]
	ldr r3, [r10]
	mov r0, r4
	stmib sp, {r3, r5}
	ldr r2, [r10, #0x10]
	bl FUN_ov54_0211aca8
	ldr r1, [r10, #0x10]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10]
	mov r1, #3
	stmib sp, {r3, r5}
	ldr r2, [r10, #0x14]
	bl FUN_ov54_0211aca8
	ldr r2, [r10, #0x14]
	mov r1, r6
	str r2, [sp]
	ldr r3, [r10, #4]
	mov r0, r4
	stmib sp, {r3, r5}
	ldr r2, [r10, #0x18]
	bl FUN_ov54_0211aca8
	ldr r1, [r10, #8]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10, #4]
	mov r1, #4
	stmib sp, {r3, r5}
	ldr r2, [r10, #0xc]
	bl FUN_ov54_0211aca8
	ldr r1, [r10, #0xc]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10, #4]
	mov r1, #5
	stmib sp, {r3, r5}
	ldr r2, [r10, #0x10]
	bl FUN_ov54_0211aca8
	ldr r2, [r10, #0x10]
	mov r0, r4
	str r2, [sp]
	ldr r3, [r10, #4]
	mov r1, #6
	stmib sp, {r3, r9}
	ldr r2, [r10, #0x14]
	bl FUN_ov54_0211aca8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211AC9C: .word 0x2AAAAAAB
_0211ACA0: .word unk_02099F38
_0211ACA4: .word 0x0211C790
	arm_func_end FUN_ov54_0211a9f0

	arm_func_start FUN_ov54_0211aca8
FUN_ov54_0211aca8: ; 0x0211ACA8
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldrb r12, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x2c]
	cmp r12, #0
	mov r12, #0
	str r12, [sp, #4]
	str r2, [sp, #8]
	ldr r2, [sp, #0x28]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, #8
	str r1, [sp, #0x18]
	mov lr, #1
	movne lr, #0
	str r12, [sp, #0x1c]
	str lr, [sp, #0x20]
	ldr r1, _0211AD14 ; =0x02099ED4
	ldr r3, [r0, #0x58]
	ldr r0, [r1]
	mov r2, r12
	mov r1, #2
	bl  FUN_ov16_0210e300
	add sp, sp, #0x24
	ldmia sp!, {pc}
_0211AD14: .word unk_02099ED4
	arm_func_end FUN_ov54_0211aca8

	arm_func_start FUN_ov54_0211ad18
FUN_ov54_0211ad18: ; 0x0211AD18
	mov r2, #3
	str r1, [r0, #0xc]
	str r2, [r0, #8]
	bx lr
	arm_func_end FUN_ov54_0211ad18

	arm_func_start FUN_ov54_0211ad28
FUN_ov54_0211ad28: ; 0x0211AD28
	mov r3, #5
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov54_0211ad28

	arm_func_start FUN_ov54_0211ad3c
FUN_ov54_0211ad3c: ; 0x0211AD3C
	mov r2, #0
	mov r1, #3
	strh r2, [r0, #0xc2]
	strh r1, [r0, #0xc0]
	bx lr
	arm_func_end FUN_ov54_0211ad3c

	arm_func_start FUN_ov54_0211ad50
FUN_ov54_0211ad50: ; 0x0211AD50
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	bl FUN_ov54_0211ada0
	and r0, r4, r0
	mov r1, r0, lsl #0x10
	ldr r4, _0211AD9C ; =0x02099EB4
	add r2, sp, #0
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl  FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211AD9C: .word unk_02099EB4
	arm_func_end FUN_ov54_0211ad50

	arm_func_start FUN_ov54_0211ada0
FUN_ov54_0211ada0: ; 0x0211ADA0
	ldrh r1, [r0, #0xc2]
	ldrh r2, [r0, #0xc0]
	mvn r0, r1
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov54_0211ada0

	arm_func_start FUN_ov54_0211adbc
FUN_ov54_0211adbc: ; 0x0211ADBC
	cmp r1, #0
	strge r1, [r0, #0xc8]
	mov r3, #0
	cmp r2, #0
	blt _0211ADE4
	ldr r1, [r0, #0xc4]
	mov r3, #1
	cmp r1, r2
	moveq r3, #0
	str r2, [r0, #0xc4]
_0211ADE4:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov54_0211adbc

	arm_func_start FUN_ov54_0211adec
FUN_ov54_0211adec: ; 0x0211ADEC
	stmfd sp!, {r4, lr}
	tst r1, #0x40
	ldr r4, [r0, #0xc4]
	bne _0211AE04
	tst r1, #0x80
	beq _0211AE28
_0211AE04:
	ldr r2, _0211AE7C ; =0x2AAAAAAB
	add r12, r4, #3
	smull r1, lr, r2, r12
	add lr, lr, r12, lsr #31
	mov r3, #6
	smull r1, r2, r3, lr
	sub lr, r12, r1
	str lr, [r0, #0xc4]
	b _0211AE68
_0211AE28:
	tst r1, #0x20
	beq _0211AE48
	cmp r4, #0
	cmpne r4, #3
	moveq r0, #2
	ldmeqfd sp!, {r4, pc}
	sub r1, r4, #1
	b _0211AE64
_0211AE48:
	tst r1, #0x10
	beq _0211AE68
	cmp r4, #2
	cmpne r4, #5
	moveq r0, #3
	ldmeqfd sp!, {r4, pc}
	add r1, r4, #1
_0211AE64:
	str r1, [r0, #0xc4]
_0211AE68:
	ldr r0, [r0, #0xc4]
	cmp r0, r4
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0211AE7C: .word 0x2AAAAAAB
	arm_func_end FUN_ov54_0211adec

	arm_func_start FUN_ov54_0211ae80
FUN_ov54_0211ae80: ; 0x0211AE80
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0xc4]
	mov r2, #2
	cmp r0, #3
	blt _0211AEA4
	mov r0, #0x38
	b _0211AEA8
_0211AEA4:
	mov r0, #8
_0211AEA8:
	str r0, [sp]
	ldr r0, _0211AF04 ; =0x02099F38
	ldr r1, [r4, #0x5c]
	ldr r0, [r0]
	sub r3, r2, #0xa
	bl  FUN_ov16_02113b78
	ldr r1, [r4, #0xc4]
	add r2, sp, #8
	add r3, sp, #4
	mov r0, r4
	bl FUN_ov54_0211af84
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	ldr r0, _0211AF04 ; =0x02099F38
	mov r3, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r4, #0x5c]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211AF04: .word unk_02099F38
	arm_func_end FUN_ov54_0211ae80

	arm_func_start FUN_ov54_0211af08
FUN_ov54_0211af08: ; 0x0211AF08
	stmfd sp!, {r3, lr}
	cmp r2, #3
	subge r2, r2, #3
	add r3, r1, r2
	ldr r2, _0211AF44 ; =0x2AAAAAAB
	mov lr, #0
	smull r1, r12, r2, r3
	mov r0, r3, lsr #0x1f
	add r12, r0, r12, asr #1
	mov r2, #0xc
	smull r0, r1, r2, r12
	movge lr, #0xc
	sub r12, r3, r0
	add r0, lr, r12
	ldmfd sp!, {r3, pc}
_0211AF44: .word 0x2AAAAAAB
	arm_func_end FUN_ov54_0211af08

	arm_func_start FUN_ov54_0211af48
FUN_ov54_0211af48: ; 0x0211AF48
	stmfd sp!, {r4, lr}
	ldr lr, _0211AF80 ; =0x2AAAAAAB
	mov r0, r1, lsr #0x1f
	smull r12, r4, lr, r1
	add r4, r0, r4, asr #2
	mov lr, #0x18
	smull r0, r12, lr, r4
	sub r4, r1, r0
	mov r0, #3
	cmp r1, #0xc
	str r4, [r2]
	movlt r0, #0
	str r0, [r3]
	ldmfd sp!, {r4, pc}
_0211AF80: .word 0x2AAAAAAB
	arm_func_end FUN_ov54_0211af48

	arm_func_start FUN_ov54_0211af84
FUN_ov54_0211af84: ; 0x0211AF84
	stmfd sp!, {r4, lr}
	ldr r4, _0211AFC4 ; =0x55555556
	mov lr, #3
	smull r0, r12, r4, r1
	add r12, r12, r1, lsr #31
	smull r0, r12, lr, r12
	smull r12, lr, r4, r1
	sub r12, r1, r0
	mov r0, #0x48
	mul r4, r12, r0
	add lr, lr, r1, lsr #31
	add r1, r4, #0x10
	mul r0, lr, r0
	str r1, [r2]
	str r0, [r3]
	ldmfd sp!, {r4, pc}
_0211AFC4: .word 0x55555556
	arm_func_end FUN_ov54_0211af84

	arm_func_start FUN_ov54_0211afc8
FUN_ov54_0211afc8: ; 0x0211AFC8
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #5
	ldmltfd sp!, {r4, pc}
	cmp r1, #0xb
	ldmgtfd sp!, {r4, pc}
	sub r2, r1, #5
	mvn r1, #0
	bl FUN_ov54_0211adbc
	cmp r0, #0
	beq _0211B000
	ldr r0, _0211B00C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211B000:
	mov r0, r4
	bl FUN_ov54_0211ae80
	ldmfd sp!, {r4, pc}
_0211B00C: .word unk_0209AC44
	arm_func_end FUN_ov54_0211afc8

	arm_func_start FUN_ov54_0211b010
FUN_ov54_0211b010: ; 0x0211B010
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211B0A8 ; =0x02099EB4
	mov r5, r1
	mov r6, r0
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #1
	blt _0211B060
	cmp r5, #2
	bgt _0211B060
	ldrh r1, [r0, #0xc]
	cmp r1, #0
	ldrne r0, [r4]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B060:
	cmp r5, #3
	bne _0211B084
	ldr r0, _0211B0AC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #1
	bl FUN_ov54_0211a9f0
	ldmfd sp!, {r4, r5, r6, pc}
_0211B084:
	cmp r5, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B0AC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #0
	bl FUN_ov54_0211a9f0
	ldmfd sp!, {r4, r5, r6, pc}
_0211B0A8: .word unk_02099EB4
_0211B0AC: .word unk_0209AC44
	arm_func_end FUN_ov54_0211b010

	arm_func_start FUN_ov54_0211b0b0
FUN_ov54_0211b0b0: ; 0x0211B0B0
	ldr r2, _0211B0C0 ; =0x0211C930
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211B0C0: .word ov54_0211C930
	arm_func_end FUN_ov54_0211b0b0

	arm_func_start FUN_ov54_0211b0c4
FUN_ov54_0211b0c4: ; 0x0211B0C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B224 ; =0x02099ED4
	ldr r3, _0211B228 ; =0x0209A0F4
	mov r6, r0
	ldr r0, [r2]
	ldrh r4, [r3]
	mov r5, r1
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #8]
	cmpeq r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211B22C ; =0x02099EB4
	ldr r0, [r7]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B124
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211B124:
	mov r0, r6
	mov r1, r5
	bl FUN_ov54_0211ad50
	tst r5, #1
	beq _0211B184
	mov r4, #1
	ldr r0, _0211B230 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldr r0, _0211B234 ; =0x020A9C40
	mov r2, r4
	mov r1, #0x12c
	bl FUN_020460a8
	ldr r1, [r6, #0xc8]
	ldr r2, [r6, #0xc4]
	mov r0, r6
	bl FUN_ov54_0211af08
	add r3, r0, #0x65
	mov r1, #0
	mov r0, r6
	mov r2, r1
	str r3, [r6, #0xcc]
	bl FUN_ov54_0211ad28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B184:
	tst r5, #2
	beq _0211B1C0
	ldr r0, _0211B230 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r4, #0
	ldr r0, _0211B234 ; =0x020A9C40
	mov r2, r4
	mov r1, #0x12c
	bl FUN_020460a8
	mov r0, r6
	mov r1, r4
	mov r2, r4
	bl FUN_ov54_0211ad28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B1C0:
	tst r4, #0xf0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_ov54_0211adec
	cmp r0, #1
	beq _0211B1F0
	cmp r0, #2
	beq _0211B1FC
	cmp r0, #3
	beq _0211B208
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B1F0:
	mov r0, r6
	bl FUN_ov54_0211ae80
	b _0211B214
_0211B1FC:
	mov r0, r6
	mov r1, #1
	b _0211B210
_0211B208:
	mov r0, r6
	mov r1, #0
_0211B210:
	bl FUN_ov54_0211a9f0
_0211B214:
	ldr r0, _0211B230 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B224: .word unk_02099ED4
_0211B228: .word unk_0209A0F4
_0211B22C: .word unk_02099EB4
_0211B230: .word unk_0209AC44
_0211B234: .word unk_020A9C40
	arm_func_end FUN_ov54_0211b0c4

	arm_func_start FUN_ov54_0211b238
FUN_ov54_0211b238: ; 0x0211B238
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B2BC ; =0x02099ED4
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #8]
	cmpeq r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B2C0 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210f20c
	cmp r0, #1
	beq _0211B28C
	cmp r0, #2
	beq _0211B2A4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B28C:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov54_0211afc8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B2A4:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov54_0211b010
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B2BC: .word unk_02099ED4
_0211B2C0: .word unk_02099EB4
	arm_func_end FUN_ov54_0211b238

	arm_func_start FUN_ov54_0211b2c4
FUN_ov54_0211b2c4: ; 0x0211B2C4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211B388 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e980
	ldr r0, _0211B38C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x18
	mov r2, #0x18
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	str r4, [r5, #0x14]
	str r4, [r5, #0x10]
	bl MI_CpuFill8
	add r0, r5, #0x30
	mov r1, r4
	mov r2, #0x14
	bl MI_CpuFill8
	add r0, r5, #0x44
	mov r1, r4
	mov r2, #0x1c
	bl MI_CpuFill8
	add r0, r5, #0x60
	mov r1, r4
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _0211B390 ; =0x0209BA20
	mov r1, r4
	strh r4, [r5, #0xc0]
	strh r4, [r5, #0xc2]
	bl FUN_0207249c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r0, #0x2d]
	str r0, [r5, #0xcc]
	cmp r0, #0x65
	blt _0211B37C
	cmp r0, #0x7c
	ldmlefd sp!, {r3, r4, r5, pc}
_0211B37C:
	mov r0, #0x65
	str r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B388: .word unk_02099EB4
_0211B38C: .word unk_02099ED4
_0211B390: .word unk_0209BA20
	arm_func_end FUN_ov54_0211b2c4

	arm_func_start FUN_ov54_0211b394
FUN_ov54_0211b394: ; 0x0211B394
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211B518
_0211B3AC: ; jump table
	b _0211B3C8 ; case 0
	b _0211B3D4 ; case 1
	b _0211B400 ; case 2
	b _0211B46C ; case 3
	b _0211B518 ; case 4
	b _0211B4A4 ; case 5
	b _0211B4D0 ; case 6
_0211B3C8:
	bl FUN_ov54_02119f00
	mov r0, #1
	str r0, [r4, #8]
_0211B3D4:
	mov r5, #2
	mov r1, r5
	add r0, r4, #0x18
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211B518
	mov r0, r4
	bl FUN_ov54_02119f2c
	mov r0, r4
	bl FUN_ov54_02119f68
	str r5, [r4, #8]
_0211B400:
	mov r0, r4
	bl FUN_ov54_0211a154
	cmp r0, #0
	beq _0211B518
	mov r0, r4
	bl FUN_ov54_0211a264
	mov r0, r4
	bl FUN_ov54_0211a41c
	mov r0, r4
	bl FUN_ov54_0211a4c0
	mov r0, r4
	bl FUN_ov54_0211a568
	mov r0, r4
	bl FUN_ov54_0211a740
	mov r0, r4
	ldr r1, [r4, #0xcc]
	add r2, r4, #0xc8
	sub r1, r1, #0x65
	add r3, r4, #0xc4
	bl FUN_ov54_0211af48
	mov r0, r4
	bl FUN_ov54_0211ae80
	mov r0, r4
	bl FUN_ov54_0211a6ac
	mov r0, r4
	mov r1, #1
	bl FUN_ov54_0211ad18
_0211B46C:
	ldr r0, _0211B574 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211B518
	mov r0, r4
	bl FUN_ov54_0211ad3c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #4
	str r0, [r4, #8]
	b _0211B518
_0211B4A4:
	ldr r0, _0211B574 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211B518
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #6
	str r0, [r4, #8]
_0211B4D0:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211B518
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	cmpeq r1, #0
	mov r1, #0
	bne _0211B50C
	ldr r0, [r4, #4]
	bl FUN_02041f2c
	b _0211B518
_0211B50C:
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #4]
	bl FUN_02041eac
_0211B518:
	ldr r0, _0211B574 ; =0x02099ED4
	ldr r4, _0211B578 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl  FUN_ov16_0210e10c
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211B550
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211B55C
_0211B550:
	bl _ffltu
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211B55C:
	bl FUN_0201fdac
	ldr r2, _0211B57C ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldmfd sp!, {r3, r4, r5, pc}
_0211B574: .word unk_02099ED4
_0211B578: .word unk_0209A110
_0211B57C: .word unk_02099F58
	arm_func_end FUN_ov54_0211b394

	arm_func_start FUN_ov54_0211b580
FUN_ov54_0211b580: ; 0x0211B580
	bx lr
	arm_func_end FUN_ov54_0211b580

	arm_func_start FUN_ov54_0211b584
FUN_ov54_0211b584: ; 0x0211B584
	stmfd sp!, {r4, lr}
	ldr r1, _0211B5BC ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211B5C0 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov54_0211a0ac
	ldr r1, [r4, #0xcc]
	ldr r0, _0211B5C4 ; =0x0209A454
	strb r1, [r0, #0x1d]
	ldmfd sp!, {r4, pc}
_0211B5BC: .word unk_02099EB4
_0211B5C0: .word unk_02099ED4
_0211B5C4: .word unk_0209A454
	arm_func_end FUN_ov54_0211b584

	arm_func_start FUN_ov54_0211b5c8
FUN_ov54_0211b5c8: ; 0x0211B5C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov54_0211b5c8

	arm_func_start FUN_ov54_0211b5dc
FUN_ov54_0211b5dc: ; 0x0211B5DC
	bx lr
	arm_func_end FUN_ov54_0211b5dc

	arm_func_start FUN_ov54_0211b5e0
FUN_ov54_0211b5e0: ; 0x0211B5E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211B604 ; =0x0211CB50
	add r1, r4, #0x10
	bl  FUN_ov16_020f316c
	ldr r0, _0211B608 ; =0x0211CB6C
	add r1, r4, #0x1c
	bl  FUN_ov16_020f316c
	ldmfd sp!, {r4, pc}
_0211B604: .word ov54_0211CB50
_0211B608: .word ov54_0211CB6C
	arm_func_end FUN_ov54_0211b5e0

	arm_func_start FUN_ov54_0211b60c
FUN_ov54_0211b60c: ; 0x0211B60C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r9, r0
	str r8, [sp]
	ldr r1, [r9, #0x10]
	ldr r0, _0211B6D4 ; =0x0211CB8C
	ldr r2, _0211B6D8 ; =0x0211C7DC
	add r3, r9, #0x28
	bl  FUN_ov16_020f5450
	ldr r1, _0211B6DC ; =0x0209A454
	mov r0, r9
	ldrb r1, [r1, #0x1d]
	bl FUN_ov54_0211b6e4
	mov r7, #5
	mov r6, #1
	ldr r4, _0211B6E0 ; =0x02099F38
	str r0, [r9, #0x34]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	bl FUN_02059630
	str r0, [r9, #0x38]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	bl FUN_02059630
	str r0, [r9, #0x3c]
	ldr r0, [r4]
	mov r1, r7
	mov r5, #3
	mov r2, r5
	bl FUN_02059630
	str r0, [r9, #0x40]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	bl FUN_02059630
	mov r1, r7
	mov r2, r5
	str r0, [r9, #0x44]
	ldr r0, [r4]
	bl FUN_02059630
	mov r1, r8
	str r0, [r9, #0x48]
	mov r0, r9
	bl FUN_ov54_0211b800
	mov r0, r9
	mov r1, r6
	bl FUN_ov54_0211b800
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B6D4: .word ov54_0211CB8C
_0211B6D8: .word 0x0211C7DC
_0211B6DC: .word unk_0209A454
_0211B6E0: .word unk_02099F38
	arm_func_end FUN_ov54_0211b60c

	arm_func_start FUN_ov54_0211b6e4
FUN_ov54_0211b6e4: ; 0x0211B6E4
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr r0, [r0, #0x1c]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {pc}
	ldr r0, _0211B74C ; =0x02099F38
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211B750 ; =0x0211CBA8
	mov r1, #5
	str r12, [sp, #0x10]
	bl FUN_02058800
	add sp, sp, #0x1c
	ldmia sp!, {pc}
_0211B74C: .word unk_02099F38
_0211B750: .word ov54_0211CBA8
	arm_func_end FUN_ov54_0211b6e4

	arm_func_start FUN_ov54_0211b754
FUN_ov54_0211b754: ; 0x0211B754
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r5, r0
	mov r9, #8
	mov r8, #3
	mov r7, r4
	ldr r6, _0211B7FC ; =0x02099F38
	b _0211B7EC
_0211B774:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0211B7E8
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B7E8
	cmp r4, #3
	bne _0211B7D0
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x28]
	mov r2, r9
	mov r3, r8
	bl  FUN_ov16_02114918
_0211B7D0:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211B7E8:
	add r4, r4, #1
_0211B7EC:
	cmp r4, #9
	blt _0211B774
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B7FC: .word unk_02099F38
	arm_func_end FUN_ov54_0211b754

	arm_func_start FUN_ov54_0211b800
FUN_ov54_0211b800: ; 0x0211B800
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	bmi _0211B818
	cmp r4, #2
	blt _0211B86C
_0211B818:
	mov r4, #0
	add r9, r5, #0x10
	mov r8, #1
	mov r7, r4
	mov r6, #0xc
_0211B82C:
	mul r10, r4, r6
	mov r1, r8
	add r0, r9, r10
	bl  FUN_ov16_020f338c
	add r0, r9, r10
	bl  FUN_ov16_020f33fc
	add r0, r5, r10
	str r7, [r0, #0x10]
	str r7, [r0, #0x14]
	strb r7, [r0, #0x18]
	strb r7, [r0, #0x19]
	add r4, r4, #1
	strb r7, [r0, #0x1a]
	cmp r4, #2
	blt _0211B82C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B86C:
	mov r0, #0xc
	mul r6, r4, r0
	add r4, r5, #0x10
	add r0, r4, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r6
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r6]
	add r0, r5, r6
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	strb r1, [r0, #0x19]
	strb r1, [r0, #0x1a]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov54_0211b800

	arm_func_start FUN_ov54_0211b8ac
FUN_ov54_0211b8ac: ; 0x0211B8AC
	stmfd sp!, {r4, r5, r6, lr}
	mvn r1, #0
	mov r6, r0
	bl FUN_ov54_0211b800
	mov r5, #0
	ldr r4, _0211B920 ; =0x02099F38
	b _0211B8E4
_0211B8C8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	beq _0211B8E0
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211B8E0:
	add r5, r5, #1
_0211B8E4:
	cmp r5, #2
	blt _0211B8C8
	mov r5, #0
	ldr r4, _0211B920 ; =0x02099F38
	b _0211B914
_0211B8F8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0211B910
	ldr r0, [r4]
	bl FUN_02058ee0
_0211B910:
	add r5, r5, #1
_0211B914:
	cmp r5, #9
	blt _0211B8F8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B920: .word unk_02099F38
	arm_func_end FUN_ov54_0211b8ac

	arm_func_start FUN_ov54_0211b924
FUN_ov54_0211b924: ; 0x0211B924
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov lr, #0
	str lr, [sp]
	str lr, [sp, #4]
	str lr, [sp, #8]
	mov r4, r1
	mov r12, #1
	mov r0, r3
	mov r1, r2
	str lr, [sp, #0xc]
	mov r2, r12
	mov r3, r12
	str r12, [sp, #0x10]
	bl  FUN_ov16_020f2304
	mov r0, r4
	bl FUN_0204331c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov54_0211b924

	arm_func_start FUN_ov54_0211b970
FUN_ov54_0211b970: ; 0x0211B970
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	mov r5, r1
	bl FUN_ov54_0211ba60
	mov r9, #0
	ldr r7, _0211BA58 ; =0x02099F38
	mov r10, r0
	ldr r0, [r7]
	add r2, sp, #0x20
	add r3, sp, #0x24
	mov r1, r5
	str r9, [sp, #0x20]
	bl FUN_0205935c
	ldr r4, [sp, #0x20]
	cmp r4, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r6, _0211BA5C ; =0x02099EDC
	mov r1, r9
	ldr r0, [r6]
	mov r2, r9
	bl FUN_02043310
	mov r1, #2
	ldr r0, [r6]
	mov r2, r1
	bl FUN_02043780
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov16_02111438
	mov r8, r0
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov16_02111458
	stmia sp, {r0, r9}
	str r9, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r9, [sp, #0x10]
	str r9, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r6]
	mov r1, r10
	mov r3, r8
	mov r2, r4
	bl FUN_020425fc
	ldr r0, [r6]
	bl FUN_0204331c
	ldr r0, [r7]
	ldr r3, [sp, #0x24]
	mov r1, r5
	str r9, [sp]
	str r9, [sp, #4]
	mov r2, r4
	str r9, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BA58: .word unk_02099F38
_0211BA5C: .word unk_02099EDC
	arm_func_end FUN_ov54_0211b970

	arm_func_start FUN_ov54_0211ba60
FUN_ov54_0211ba60: ; 0x0211BA60
	ldr r0, _0211BA68 ; =0x0209A460
	bx lr
_0211BA68: .word unk_0209A460
	arm_func_end FUN_ov54_0211ba60

	arm_func_start FUN_ov54_0211ba6c
FUN_ov54_0211ba6c: ; 0x0211BA6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #0x4c]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _0211BCD8 ; =0x02099F38
	mov r7, #1
	ldr r0, [r4]
	mov r2, r7
	mov r1, #5
	bl  FUN_ov16_02112724
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r6, [r8, #0x4c]
	ldr r0, [r4]
	mov r1, r6
	sub r3, r7, #2
	mov r2, #0x258
	bl  FUN_ov16_02112c90
	ldr r3, [r8, #0x28]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	ldr r3, [r8, #0x2c]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, r5
	bl  FUN_ov16_0211401c
	mov r0, #8
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, #0x18
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	ldr r3, [r8, #0x34]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, r5
	bl  FUN_ov16_0211401c
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, #0x60
	bl  FUN_ov16_02113b78
	mov r0, r8
	ldr r1, _0211BCDC ; =0x02099ED0
	ldr r2, [r8, #0x3c]
	ldr r1, [r1]
	ldr r3, _0211BCE0 ; =0x0211CBC8
	bl FUN_ov54_0211b924
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	ldr r3, [r8, #0x3c]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r5
	add r2, r7, #3
	bl  FUN_ov16_02113d88
	ldr r0, [r4]
	ldr r1, [r8, #0x3c]
	bl  FUN_ov16_02111438
	mov r9, r0
	ldr r0, [r4]
	ldr r1, [r8, #0x3c]
	bl  FUN_ov16_02111458
	mov r1, r9, lsl #0x10
	mov r3, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	bl  FUN_ov16_02113d08
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	mov r3, r5
	bl  FUN_ov16_02113b78
	mov r0, r8
	ldr r1, [r8, #0x38]
	bl FUN_ov54_0211b970
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #4
	ldr r3, [r8, #0x38]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #4
	mov r3, r5
	bl  FUN_ov16_02113d88
	ldr r0, [r4]
	ldr r1, [r8, #0x38]
	bl  FUN_ov16_02111438
	ldr r1, [r8, #0x38]
	mov r8, r0
	ldr r0, [r4]
	bl  FUN_ov16_02111458
	mov r1, r8, lsl #0x10
	mov r3, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #4
	bl  FUN_ov16_02113d08
	mov r3, r5
	mov r0, #0x62
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #4
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	mov r2, #2
	bl  FUN_ov16_021142fc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BCD8: .word unk_02099F38
_0211BCDC: .word unk_02099ED0
_0211BCE0: .word ov54_0211CBC8
	arm_func_end FUN_ov54_0211ba6c

	arm_func_start FUN_ov54_0211bce4
FUN_ov54_0211bce4: ; 0x0211BCE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _0211BE80 ; =0x0211CA2C
	mov r4, r0
	add r7, sp, #4
	ldmia r1, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	ldr r0, [r4, #0x50]
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _0211BE84 ; =0x02099F38
	mov r9, #1
	ldr r0, [r5]
	mov r2, r9
	mov r1, #3
	bl  FUN_ov16_02112724
	movs r8, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [r4, #0x50]
	mov r10, #0
	mov r11, r9
	b _0211BE58
_0211BD44:
	add r0, r10, #6
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x28]
	ldr r3, [r7, r10, lsl #2]
	and r6, r1, #0xff
	ldr r1, _0211BE88 ; =0x02099F50
	mov r0, r4
	ldr r1, [r1]
	mov r2, r6
	bl FUN_ov54_0211b924
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	mov r3, r6
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	mov r3, #0
	bl  FUN_ov16_02113d88
	ldr r0, [r5]
	mov r1, r6
	bl  FUN_ov16_02111438
	mov r1, r6
	mov r6, r0
	ldr r0, [r5]
	bl  FUN_ov16_02111458
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r6, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	bl  FUN_ov16_02113d08
	mov r0, #0x70
	cmp r10, #0
	movne r0, #0x7e
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	mov r3, #0
	bl  FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	mov r3, #0x12c
	bl  FUN_ov16_021139bc
	cmp r10, #0
	mov r3, #2
	bne _0211BE40
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	bl  FUN_ov16_02113ec0
	b _0211BE50
_0211BE40:
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	bl  FUN_ov16_02113f7c
_0211BE50:
	add r9, r9, #1
	add r10, r10, #1
_0211BE58:
	cmp r10, #3
	blt _0211BD44
	ldr r0, _0211BE84 ; =0x02099F38
	mov r1, r8
	ldr r0, [r0]
	mov r2, #2
	mov r3, #1
	bl  FUN_ov16_021142fc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE80: .word ov54_0211CA2C
_0211BE84: .word unk_02099F38
_0211BE88: .word unk_02099F50
	arm_func_end FUN_ov54_0211bce4

	arm_func_start FUN_ov54_0211be8c
FUN_ov54_0211be8c: ; 0x0211BE8C
	stmfd sp!, {r3, lr}
	mov r3, r1
	ldr r1, [r0, #0x50]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, #0
	beq _0211BEC8
	mov r2, #1
	str r2, [sp]
	ldr r0, _0211BEE0 ; =0x02099F38
	mov r2, r3
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_0211BEC8:
	ldr r0, _0211BEE0 ; =0x02099F38
	mov r2, r3
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211BEE0: .word unk_02099F38
	arm_func_end FUN_ov54_0211be8c

	arm_func_start FUN_ov54_0211bee4
FUN_ov54_0211bee4: ; 0x0211BEE4
	mov r1, #7
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov54_0211bee4

	arm_func_start FUN_ov54_0211bef0
FUN_ov54_0211bef0: ; 0x0211BEF0
	stmfd sp!, {r3, lr}
	cmp r1, #1
	bne _0211BF10
	ldr r0, [r0, #0x54]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, pc}
_0211BF10:
	cmp r1, #2
	ldmnefd sp!, {r3, pc}
	ldr r0, [r0, #0x54]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov54_0211bef0

	arm_func_start FUN_ov54_0211bf2c
FUN_ov54_0211bf2c: ; 0x0211BF2C
	ldr r2, _0211BF68 ; =0x02099EB4
	mov r3, #1
	ldr r0, [r2]
	cmp r1, #1
	add r0, r0, #0xf00
	strh r3, [r0, #0x38]
	ldreq r0, [r2]
	addeq r0, r0, #0xf00
	streqh r3, [r0, #0x38]
	bxeq lr
	cmp r1, #2
	ldreq r0, [r2]
	addeq r0, r0, #0xf00
	streqh r3, [r0, #0x38]
	bx lr
_0211BF68: .word unk_02099EB4
	arm_func_end FUN_ov54_0211bf2c

	arm_func_start FUN_ov54_0211bf6c
FUN_ov54_0211bf6c: ; 0x0211BF6C
	ldr r2, _0211BF7C ; =0x0211CAE4
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211BF7C: .word ov54_0211CAE4
	arm_func_end FUN_ov54_0211bf6c

	arm_func_start FUN_ov54_0211bf80
FUN_ov54_0211bf80: ; 0x0211BF80
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #6
	mov r7, #1
	mov r8, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211C2A0 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0211C2A4 ; =0x02099EB4
	ldr r0, [r6]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211BFF0
	ldr r0, [r6]
	add r0, r0, #0xf00
	ldrh r4, [r0, #0x38]
	cmp r4, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	strh r8, [r0, #0x38]
_0211BFF0:
	tst r4, #1
	beq _0211C174
	ldr r0, [r5, #0x54]
	bl  FUN_ov16_02110b04
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #1
	beq _0211C024
	cmp r0, #2
	beq _0211C0F8
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C024:
	ldr r0, _0211C2A8 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r5, #0x54]
	bl  FUN_ov16_02110b0c
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0211C05C
	cmp r0, #1
	beq _0211C070
	cmp r0, #2
	beq _0211C0D8
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C05C:
	mov r0, #5
	add sp, sp, #0x20
	str r7, [r5, #0xc]
	str r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C070:
	ldr r0, _0211C2AC ; =0x020A9C40
	ldr r1, _0211C2B0 ; =0x0000012D
	mov r2, #1
	bl FUN_020460a8
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211C2B4 ; =0x0209BA20
	bl FUN_0207249c
	mov r4, r0
	adds r0, sp, #0
	beq _0211C0A8
	ldr r1, _0211C2B8 ; =0x0209A460
	mov r2, #0x11
	bl STD_CopyLString
_0211C0A8:
	ldr r0, _0211C2B8 ; =0x0209A460
	bl STD_GetStringLength
	add r1, sp, #0
	mov r0, r4
	bl STD_CopyString
	ldr r1, _0211C2BC ; =0x0209A454
	mov r0, r5
	ldrb r1, [r1, #0x1d]
	strb r1, [r4, #0x2d]
	bl FUN_ov54_0211bee4
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C0D8:
	ldr r0, _0211C2AC ; =0x020A9C40
	ldr r1, _0211C2B0 ; =0x0000012D
	mov r2, #2
	bl FUN_020460a8
	mov r0, r5
	bl FUN_ov54_0211bee4
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C0F8:
	ldr r0, _0211C2A8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r5, #0x54]
	bl  FUN_ov16_02110b0c
	ldr r0, _0211C2AC ; =0x020A9C40
	ldr r1, _0211C2B0 ; =0x0000012D
	mov r2, #0
	bl FUN_020460a8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0211C13C
	cmp r0, #1
	beq _0211C15C
	cmp r0, #2
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0211C13C:
	ldr r0, _0211C2AC ; =0x020A9C40
	ldr r1, _0211C2B0 ; =0x0000012D
	mov r2, #0
	bl FUN_020460a8
	mov r0, r5
	bl FUN_ov54_0211bee4
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C15C:
	mov r1, #2
	mov r0, #5
	add sp, sp, #0x20
	str r1, [r5, #0xc]
	str r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C174:
	tst r4, #2
	beq _0211C22C
	ldr r0, [r5, #0x54]
	bl  FUN_ov16_02110b04
	cmp r0, #1
	beq _0211C1A0
	ldr r0, [r5, #0x54]
	bl  FUN_ov16_02110b04
	cmp r0, #2
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0211C1A0:
	ldr r0, [r5, #0x54]
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_02110a04
	ldr r0, _0211C2A8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r5, #0x54]
	bl  FUN_ov16_02110b0c
	ldr r0, _0211C2AC ; =0x020A9C40
	mov r2, r8
	add r1, r7, #0x12c
	bl FUN_020460a8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0211C1F4
	cmp r0, #1
	beq _0211C214
	cmp r0, #2
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0211C1F4:
	ldr r0, _0211C2AC ; =0x020A9C40
	ldr r1, _0211C2B0 ; =0x0000012D
	mov r2, #0
	bl FUN_020460a8
	mov r0, r5
	bl FUN_ov54_0211bee4
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C214:
	mov r1, #2
	mov r0, #5
	add sp, sp, #0x20
	str r1, [r5, #0xc]
	str r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C22C:
	tst r4, #0x20
	beq _0211C264
	ldr r0, [r5, #0x54]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211C2A8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C264:
	tst r4, #0x10
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5, #0x54]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211C2A8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C2A0: .word unk_02099ED4
_0211C2A4: .word unk_02099EB4
_0211C2A8: .word unk_0209AC44
_0211C2AC: .word unk_020A9C40
_0211C2B0: .word 0x0000012D
_0211C2B4: .word unk_0209BA20
_0211C2B8: .word unk_0209A460
_0211C2BC: .word unk_0209A454
	arm_func_end FUN_ov54_0211bf80

	arm_func_start FUN_ov54_0211c2c0
FUN_ov54_0211c2c0: ; 0x0211C2C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211C344 ; =0x02099ED4
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #8]
	cmpeq r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211C348 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210f20c
	cmp r0, #1
	beq _0211C314
	cmp r0, #2
	beq _0211C32C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C314:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov54_0211bef0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C32C:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov54_0211bf2c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C344: .word unk_02099ED4
_0211C348: .word unk_02099EB4
	arm_func_end FUN_ov54_0211c2c0

	arm_func_start FUN_ov54_0211c34c
FUN_ov54_0211c34c: ; 0x0211C34C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211C3E4 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e980
	ldr r0, _0211C3E8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r4, #0
	mov r1, r4
	str r4, [r5, #8]
	add r0, r5, #0x10
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r5, #0x28
	mov r1, r4
	mov r2, #0x24
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x4c
	mov r2, #8
	bl MI_CpuFill8
	mov r0, #0x74
	bl operator_new
	cmp r0, #0
	beq _0211C3C8
	bl  FUN_ov16_02110558
_0211C3C8:
	ldr r1, _0211C3EC ; =0x02099F38
	str r0, [r5, #0x54]
	ldr r0, [r1]
	bl  FUN_ov16_021123b4
	mov r0, #0
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C3E4: .word unk_02099EB4
_0211C3E8: .word unk_02099ED4
_0211C3EC: .word unk_02099F38
	arm_func_end FUN_ov54_0211c34c

	arm_func_start FUN_ov54_0211c3f0
FUN_ov54_0211c3f0: ; 0x0211C3F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211C6EC
_0211C40C: ; jump table
	b _0211C430 ; case 0
	b _0211C43C ; case 1
	b _0211C460 ; case 2
	b _0211C478 ; case 3
	b _0211C5C0 ; case 4
	b _0211C5F0 ; case 5
	b _0211C6EC ; case 6
	b _0211C69C ; case 7
	b _0211C6C8 ; case 8
_0211C430:
	bl FUN_ov54_0211b5e0
	mov r0, #1
	str r0, [r4, #8]
_0211C43C:
	mov r5, #2
	mov r1, r5
	add r0, r4, #0x10
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211C6EC
	mov r0, r4
	bl FUN_ov54_0211b60c
	str r5, [r4, #8]
_0211C460:
	mov r0, r4
	bl FUN_ov54_0211b754
	cmp r0, #0
	beq _0211C6EC
	mov r0, #3
	str r0, [r4, #8]
_0211C478:
	mov r0, r4
	bl FUN_ov54_0211ba6c
	mov r0, r4
	bl FUN_ov54_0211bce4
	mov r8, #1
	mov r7, #0
	str r8, [sp]
	sub r5, r8, #2
	str r5, [sp, #4]
	ldr r0, [r4, #0x54]
	ldr r3, [r4, #0x2c]
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_021107a0
	str r7, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x54]
	ldr r3, [r4, #0x30]
	mov r1, r8
	mov r2, r8
	bl  FUN_ov16_021107a0
	str r8, [sp]
	str r5, [sp, #4]
	mov r6, #2
	ldr r0, [r4, #0x54]
	ldr r3, [r4, #0x30]
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_021107a0
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x54]
	ldr r3, [r4, #0x2c]
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_021107a0
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x54]
	ldr r3, [r4, #0x30]
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_021107a0
	mov r0, #3
	stmia sp, {r0, r5}
	ldr r0, [r4, #0x54]
	ldr r3, [r4, #0x30]
	mov r1, r6
	mov r2, r6
	bl  FUN_ov16_021107a0
	ldr r0, [r4, #0x54]
	mov r1, #0x1f4
	bl  FUN_ov16_02110864
	ldr r0, [r4, #0x54]
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl  FUN_ov16_02110830
	ldr r0, [r4, #0x54]
	mov r1, r7
	bl  FUN_ov16_0211085c
	mov r5, #0x98
	ldr r0, [r4, #0x54]
	mov r2, r5
	mov r1, #0x38
	bl  FUN_ov16_021108c0
	ldr r0, [r4, #0x54]
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_021108cc
	str r8, [sp]
	ldr r0, [r4, #0x54]
	mov r1, r6
	mov r2, r7
	mov r3, r7
	bl  FUN_ov16_02110938
	mov r1, r8
	mov r2, r7
	ldr r0, [r4, #0x54]
	bl  FUN_ov16_02110a04
	mov r0, #4
	str r0, [r4, #8]
_0211C5C0:
	ldr r0, _0211C708 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211C6EC
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	str r0, [r4, #8]
	b _0211C6EC
_0211C5F0:
	ldr r0, _0211C708 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211C6EC
	ldr r0, [r4, #0xc]
	mov r1, #6
	str r1, [r4, #8]
	cmp r0, #0
	beq _0211C6EC
	cmp r0, #1
	beq _0211C62C
	cmp r0, #2
	beq _0211C668
	b _0211C6EC
_0211C62C:
	mov r6, #1
	mov r5, #0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov54_0211be8c
	mov r0, r4
	mov r2, r6
	mov r1, #2
	bl FUN_ov54_0211be8c
	mov r0, r4
	mov r2, r5
_0211C65C:
	mov r1, #3
	bl FUN_ov54_0211be8c
	b _0211C6EC
_0211C668:
	mov r6, #1
	mov r5, #0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov54_0211be8c
	mov r0, r4
	mov r2, r5
	mov r1, #2
	bl FUN_ov54_0211be8c
	mov r0, r4
	mov r2, r6
	b _0211C65C
_0211C69C:
	ldr r0, _0211C708 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211C6EC
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #8
	str r0, [r4, #8]
_0211C6C8:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211C6EC
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02041f2c
_0211C6EC:
	ldr r0, _0211C708 ; =0x02099ED4
	ldr r1, _0211C70C ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl  FUN_ov16_0210e10c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C708: .word unk_02099ED4
_0211C70C: .word unk_0209A110
	arm_func_end FUN_ov54_0211c3f0

	arm_func_start FUN_ov54_0211c710
FUN_ov54_0211c710: ; 0x0211C710
	bx lr
	arm_func_end FUN_ov54_0211c710

	arm_func_start FUN_ov54_0211c714
FUN_ov54_0211c714: ; 0x0211C714
	stmfd sp!, {r4, lr}
	ldr r1, _0211C76C ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211C770 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0211C74C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211C74C:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x54]
	bl FUN_ov54_0211b8ac
	ldr r0, _0211C774 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r4, pc}
_0211C76C: .word unk_02099EB4
_0211C770: .word unk_02099ED4
_0211C774: .word unk_02099F38
	arm_func_end FUN_ov54_0211c714

	arm_func_start FUN_ov54_0211c778
FUN_ov54_0211c778: ; 0x0211C778
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov54_0211c778

	arm_func_start FUN_ov54_0211c78c
FUN_ov54_0211c78c: ; 0x0211C78C
	bx lr
	arm_func_end FUN_ov54_0211c78c
_0211C790:
	.byte 0x08, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0xC0, 0xFF, 0xFF, 0xFF, 0x18, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x18, 0xC9, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0xC9, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0xD8, 0xC8, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xE8, 0xC8, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0xF8, 0xC8, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0xCA, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x38, 0xCA, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x48, 0xCA, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov54_0211c7fc
FUN_ov54_0211c7fc: ; 0x0211C7FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211C844 ; =0x0211C8C0
	str r0, [r4, #4]
	ldr r0, _0211C848 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211C84C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C844: .word ov54_0211C8C0
_0211C848: .word 0x00009CCD
_0211C84C: .word 0x0000EA3C
	arm_func_end FUN_ov54_0211c7fc

	arm_func_start FUN_ov54_0211c850
FUN_ov54_0211c850: ; 0x0211C850
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211C898 ; =0x0211CA14
	str r0, [r4, #8]
	ldr r0, _0211C89C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _0211C8A0 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C898: .word ov54_0211CA14
_0211C89C: .word 0x00009CCD
_0211C8A0: .word 0x0000EA3C
	arm_func_end FUN_ov54_0211c850

	.section .sinit, 4
ov54_0211C8A4:
	.word FUN_ov54_0211c7fc
	.word FUN_ov54_0211c850

	.data
	.global ov54_0211C8C0
ov54_0211C8C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x65, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x65, 0x6D, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x65, 0x6D, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x65, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x65, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov54_0211C930
ov54_0211C930:
	.byte 0xDC, 0xB5, 0x11, 0x02, 0xC8, 0xB5, 0x11, 0x02, 0xC4, 0xB0, 0x11, 0x02, 0x38, 0xB2, 0x11, 0x02
	.byte 0xC4, 0xB2, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x94, 0xB3, 0x11, 0x02, 0x80, 0xB5, 0x11, 0x02
	.byte 0x84, 0xB5, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov54_0211C99C
ov54_0211C99C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x65, 0x6D, 0x62, 0x6C, 0x65
	.byte 0x6D, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00
	.global ov54_0211C9B8
ov54_0211C9B8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x70, 0x6F, 0x5F, 0x65
	.byte 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov54_0211C9D8
ov54_0211C9D8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x65, 0x6D, 0x62, 0x6C, 0x65, 0x6D, 0x2E, 0x53, 0x50
	.byte 0x44, 0x00, 0x00, 0x00
	.global ov54_0211C9F4
ov54_0211C9F4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x62
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov54_0211CA14
ov54_0211CA14:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov54_0211CA2C
ov54_0211CA2C:
	.byte 0xA8, 0xCA, 0x11, 0x02
	.byte 0x80, 0xCA, 0x11, 0x02, 0x68, 0xCA, 0x11, 0x02, 0x65, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x65, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x65, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x82, 0xD6, 0x82, 0xF1, 0x82, 0xB1, 0x82, 0xA4
	.byte 0x82, 0xF0, 0x82, 0xE2, 0x82, 0xDF, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC4, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x82, 0xB1, 0x82, 0xCC, 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x5B, 0x96, 0xBC, 0x2F, 0x82, 0xDF, 0x82, 0xA2, 0x5D, 0x82, 0xC6, 0x83, 0x47, 0x83
	.byte 0x93, 0x83, 0x75, 0x83, 0x8C, 0x83, 0x80, 0x82, 0xC5, 0x0A, 0x82, 0xE6, 0x82, 0xEB, 0x82, 0xB5
	.byte 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov54_0211CAE4
ov54_0211CAE4:
	.byte 0x8C, 0xC7, 0x11, 0x02, 0x78, 0xC7, 0x11, 0x02, 0x80, 0xBF, 0x11, 0x02
	.byte 0xC0, 0xC2, 0x11, 0x02, 0x4C, 0xC3, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xF0, 0xC3, 0x11, 0x02
	.byte 0x10, 0xC7, 0x11, 0x02, 0x14, 0xC7, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov54_0211CB50
ov54_0211CB50:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x65
	.byte 0x6D, 0x62, 0x6C, 0x65, 0x6D, 0x5F, 0x63, 0x2E, 0x53, 0x50, 0x4C, 0x00
	.global ov54_0211CB6C
ov54_0211CB6C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F
	.byte 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov54_0211CB8C
ov54_0211CB8C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x65, 0x6D, 0x62, 0x6C, 0x65
	.byte 0x6D, 0x5F, 0x63, 0x2E, 0x53, 0x50, 0x44, 0x00
	.global ov54_0211CBA8
ov54_0211CBA8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x70, 0x6F, 0x5F, 0x65
	.byte 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov54_0211CBC8
ov54_0211CBC8:
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x96, 0xBC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

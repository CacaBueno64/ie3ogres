
	.include "/macros/function.inc"
	.include "/global.inc"

	.text
	arm_func_start FUN_ov83_02119f00
FUN_ov83_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, #0
	mov r1, #0x3c
	mov r0, #0xe
	str r1, [r6, #0x58]
	str r5, [r6, #0x5c]
	str r5, [r6, #0x60]
	str r5, [r6, #0x64]
	str r5, [r6, #0x68]
	str r0, [r6, #0x6c]
	mov r4, r5
	ldr r8, _02119FE4 ; =0x0209AEC0
	mvn r7, #0
	b _02119F58
_02119F3C:
	mov r0, r8
	bl FUN_02046730
	cmp r5, r0
	add r0, r6, r5, lsl #2
	streq r4, [r0, #0x70]
	strne r7, [r0, #0x70]
	add r5, r5, #1
_02119F58:
	cmp r5, #4
	blt _02119F3C
	mov r8, #0
	ldr r7, _02119FE4 ; =0x0209AEC0
	mvn r5, #0
	b _02119F8C
_02119F70:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r6, r8, lsl #2
	streq r4, [r0, #0x80]
	strne r5, [r0, #0x80]
	add r8, r8, #1
_02119F8C:
	cmp r8, #4
	blt _02119F70
	mov r1, #0
	b _02119FA8
_02119F9C:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0x90]
	add r1, r1, #1
_02119FA8:
	cmp r1, #4
	blt _02119F9C
	mov r1, r4
	add r0, r6, #0xa4
	mov r2, #0x60
	bl MemWrite
	ldr r2, _02119FE8 ; =0x0209A4E0
	strb r4, [r6, #0x404]
	mov r0, #0x3c
	strb r0, [r2, #2]
	ldr r0, _02119FE4 ; =0x0209AEC0
	mov r1, #6
	strb r4, [r2, #3]
	bl FUN_02046cb4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02119FE4: .word 0x0209AEC0
_02119FE8: .word 0x0209A4E0
	arm_func_end FUN_ov83_02119f00

	arm_func_start FUN_ov83_02119fec
FUN_ov83_02119fec: ; 0x02119FEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0211A018 ; =0x0211D5C0
	add r0, r4, #0x58
	bl  FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #6
	bl FUN_ov83_0211acc4
	ldmfd sp!, {r4, pc}
_0211A018: .word 0x0211D5C0
	arm_func_end FUN_ov83_02119fec

	arm_func_start FUN_ov83_0211a01c
FUN_ov83_0211a01c: ; 0x0211A01C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r0, r5
	mov r1, r5
	bl  FUN_ov16_020f0634
	ldr r1, [r6, #8]
	ldrb r0, [r0, #3]
	cmp r1, #4
	beq _0211A058
	cmp r1, #5
	beq _0211A07C
	cmp r1, #7
	beq _0211A0BC
	b _0211A0E8
_0211A058:
	mov r4, #5
	mov r1, r4
	mov r3, r5
	sub r2, r4, #6
	mov r0, #4
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A0E8
	b _0211A0DC
_0211A07C:
	cmp r0, #6
	cmpne r0, #7
	bne _0211A094
	mov r0, r6
	mov r1, #6
	b _0211A0E4
_0211A094:
	mov r0, #5
	sub r1, r0, #6
	mov r2, r1
	mov r3, r5
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A0E8
	mov r0, r6
	bl FUN_ov83_02119fec
	b _0211A0E8
_0211A0BC:
	mov r4, #8
	mov r1, r4
	mov r3, r5
	sub r2, r4, #9
	mov r0, #7
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A0E8
_0211A0DC:
	mov r0, r6
	mov r1, r4
_0211A0E4:
	bl FUN_ov83_0211acc4
_0211A0E8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov83_0211a01c

	arm_func_start FUN_ov83_0211a0f0
FUN_ov83_0211a0f0: ; 0x0211A0F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #5
	bne _0211A120
	ldr r0, _0211A134 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _0211A120
	add r0, r4, #0x58
	mov r1, #3
	bl  FUN_ov1_020e6eac
_0211A120:
	ldr r1, [r4, #8]
	add r0, r4, #0x58
	bl  FUN_ov1_020e5328
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0211A134: .word 0x0209AEC0
	arm_func_end FUN_ov83_0211a0f0

	arm_func_start FUN_ov83_0211a138
FUN_ov83_0211a138: ; 0x0211A138
	ldr r0, [r0, #8]
	cmp r0, #3
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov83_0211a138

	arm_func_start FUN_ov83_0211a14c
FUN_ov83_0211a14c: ; 0x0211A14C
	ldr r1, _0211A194 ; =0x020A0640
	ldrb r1, [r1, #0x8c]
	cmp r1, #0
	beq _0211A174
	ldr r1, [r0, #8]
	mov r0, #1
	cmp r1, #4
	cmpne r1, #5
	movne r0, #0
	bx lr
_0211A174:
	ldr r0, [r0, #8]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	cmpne r0, #3
	moveq r0, #0
	movne r0, #1
	bx lr
_0211A194: .word 0x020A0640
	arm_func_end FUN_ov83_0211a14c

	arm_func_start FUN_ov83_0211a198
FUN_ov83_0211a198: ; 0x0211A198
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xb8
	ldr r0, _0211A570 ; =0x020A0640
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	beq _0211A1E4
	bl  FUN_ov16_020f067c
	cmp r0, #0
	beq _0211A1E4
	ldr r0, _0211A574 ; =0x020A0B40
	ldr r2, _0211A578 ; =0x0000270F
	ldrh r0, [r0, #0xf4]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	cmp r2, r0, lsr #16
	mov r1, r0, lsr #0x10
	ldr r0, _0211A57C ; =0x020A0B00
	movlo r1, r2
	bl FUN_02074758
_0211A1E4:
	ldr r0, _0211A580 ; =0x02099EF0
	ldr r0, [r0]
	bl  FUN_ov132_021447c8
	cmp r0, #0xc
	addne sp, sp, #0xb8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211A570 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211A230
	ldr r0, _0211A584 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	addeq sp, sp, #0xb8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl  FUN_ov16_020f067c
	cmp r0, #0
	addeq sp, sp, #0xb8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A230:
	ldr r0, _0211A588 ; =0x0209BA20
	bl FUN_020737fc
	movs r5, r0
	addeq sp, sp, #0xb8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r7, sp, #0x78
	mvn r6, #0
	mov r4, #1
	ldr r1, _0211A58C ; =0x0211D804
	mov r0, r7
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_020f2cf8
	ldr r1, _0211A590 ; =0x02099E8E
	add r0, sp, #0x38
	ldrb r2, [r1]
	ldr r1, _0211A594 ; =0x0211D80C
	mov r3, r4
	bl  FUN_ov16_020f2cf8
	add r1, sp, #0x2c
	mov r0, r7
	bl  FUN_ov16_020f3054
	ldr r4, [sp, #0x2c]
	b _0211A2B0
_0211A290:
	ldrb r0, [r4, #4]
	cmp r0, r6
	bne _0211A2AC
	add r0, sp, #0x2c
	bl  FUN_ov16_020f33fc
	add sp, sp, #0xb8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A2AC:
	add r4, r4, #0x12
_0211A2B0:
	ldrsh r0, [r4]
	cmp r0, r5
	bne _0211A290
	ldr r5, _0211A570 ; =0x020A0640
	ldrb r0, [r4, #5]
	ldrb r2, [r5, #0x98]
	ldrb r1, [r5, #0x99]
	cmp r0, #0
	str r2, [sp]
	str r1, [sp, #4]
	beq _0211A340
	bl  FUN_ov1_020db338
	cmp r0, #0
	beq _0211A30C
	ldr r0, _0211A580 ; =0x02099EF0
	add r1, sp, #0x14
	ldr r0, [r0]
	bl  FUN_ov126_02136e2c
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	b _0211A340
_0211A30C:
	ldrb r1, [r5, #0x98]
	ldrb r0, [r5, #0x99]
	cmp r1, r0
	bne _0211A340
	ldr r0, _0211A580 ; =0x02099EF0
	ldr r0, [r0]
	bl  FUN_ov132_021447c8
	cmp r0, #0xb
	beq _0211A340
	add r0, sp, #0x2c
	bl  FUN_ov16_020f33fc
	add sp, sp, #0xb8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A340:
	ldr r0, _0211A590 ; =0x02099E8E
	ldr r5, _0211A598 ; =0x020A12C0
	ldrb r3, [r0]
	mov r2, #0x54
	add r0, sp, #0x38
	add r1, sp, #8
	mla r5, r3, r2, r5
	bl  FUN_ov16_020f3054
	ldrsh r12, [r4, #2]
	ldr r1, [sp, #8]
	mov r0, #0x4a
	mla r3, r12, r0, r1
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	ble _0211A54C
	mov lr, #0
	mov r1, #1
	mov r0, lr
	mvn r7, #0
	b _0211A410
_0211A394:
	add r2, r3, lr, lsl #1
	ldrsh r10, [r2, #0x3e]
	cmp r10, r7
	beq _0211A40C
	mov r8, r0, lsl r10
	rsb r6, r10, #0x20
	ldr r9, [r5, #0x4c]
	orr r8, r8, r1, lsr r6
	sub r6, r10, #0x20
	orr r9, r9, r1, lsl r10
	ldr r10, [r5, #0x50]
	orr r8, r8, r1, lsl r6
	orr r10, r10, r8
	str r9, [r5, #0x4c]
	str r10, [r5, #0x50]
	ldrb r6, [r3, #3]
	cmp r6, #0
	beq _0211A40C
	ldrsh r2, [r2, #0x3e]
	ldr r8, [r5, #0x44]
	ldr r9, [r5, #0x48]
	mov r6, r0, lsl r2
	rsb r10, r2, #0x20
	orr r6, r6, r1, lsr r10
	sub r10, r2, #0x20
	orr r2, r8, r1, lsl r2
	orr r6, r6, r1, lsl r10
	str r2, [r5, #0x44]
	orr r2, r9, r6
	str r2, [r5, #0x48]
_0211A40C:
	add lr, lr, #1
_0211A410:
	cmp lr, #4
	blo _0211A394
	mov r0, r12, lsl #1
	ldrh r6, [r5, r0]
	ldr r3, [sp]
	ldr r7, [sp, #4]
	and r1, r6, #0x1c
	mov r1, r1, lsl #0xe
	mov r2, r1, lsr #0x10
	cmp r2, #3
	sub r1, r3, r7
	bhi _0211A474
	ldrsh r3, [r4, #6]
	cmp r1, r3
	blt _0211A474
	ldrsh r3, [r4, #8]
	cmp r7, r3
	bgt _0211A474
	ldr r1, _0211A59C ; =0x0000FFE3
	and r1, r6, r1
	strh r1, [r5, r0]
	ldrh r1, [r5, r0]
	orr r1, r1, #0xc
	strh r1, [r5, r0]
	b _0211A500
_0211A474:
	cmp r2, #2
	bhi _0211A4BC
	ldrsh r0, [r4, #0xa]
	cmp r1, r0
	blt _0211A4BC
	ldrsh r0, [r4, #0xc]
	ldr r3, [sp, #4]
	cmp r3, r0
	bgt _0211A4BC
	mov r2, r12, lsl #1
	ldrh r1, [r5, r2]
	ldr r0, _0211A59C ; =0x0000FFE3
	and r0, r1, r0
	strh r0, [r5, r2]
	ldrh r0, [r5, r2]
	orr r0, r0, #8
	strh r0, [r5, r2]
	b _0211A500
_0211A4BC:
	cmp r2, #1
	bhi _0211A500
	ldrsh r0, [r4, #0xe]
	cmp r1, r0
	blt _0211A500
	ldrsh r0, [r4, #0x10]
	ldr r1, [sp, #4]
	cmp r1, r0
	bgt _0211A500
	mov r2, r12, lsl #1
	ldrh r1, [r5, r2]
	ldr r0, _0211A59C ; =0x0000FFE3
	and r0, r1, r0
	strh r0, [r5, r2]
	ldrh r0, [r5, r2]
	orr r0, r0, #4
	strh r0, [r5, r2]
_0211A500:
	mov r0, r12, lsl #1
	ldrh r1, [r5, r0]
	ldr r0, _0211A5A0 ; =0x0000FFE0
	mov r2, r12, lsl #1
	and r0, r1, r0
	mov r0, r0, lsl #0xb
	ldrh r1, [r5, r2]
	mov r0, r0, lsr #0x10
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	and r1, r1, #0x1f
	mov r0, r0, lsr #0x10
	strh r1, [r5, r2]
	cmp r0, #0x63
	movhi r0, #0x63
	ldrh r1, [r5, r2]
	mov r0, r0, lsl #0x15
	orr r0, r1, r0, lsr #16
	strh r0, [r5, r2]
_0211A54C:
	ldr r0, _0211A588 ; =0x0209BA20
	mov r1, #0
	bl FUN_020737f0
	add r0, sp, #0x2c
	bl  FUN_ov16_020f33fc
	add r0, sp, #8
	bl  FUN_ov16_020f33fc
	add sp, sp, #0xb8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A570: .word 0x020A0640
_0211A574: .word 0x020A0B40
_0211A578: .word 0x0000270F
_0211A57C: .word 0x020A0B00
_0211A580: .word 0x02099EF0
_0211A584: .word 0x0209AEC0
_0211A588: .word 0x0209BA20
_0211A58C: .word 0x0211D804
_0211A590: .word 0x02099E8E
_0211A594: .word 0x0211D80C
_0211A598: .word 0x020A12C0
_0211A59C: .word 0x0000FFE3
_0211A5A0: .word 0x0000FFE0
	arm_func_end FUN_ov83_0211a198

	arm_func_start FUN_ov83_0211a5a4
FUN_ov83_0211a5a4: ; 0x0211A5A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x44
	ldr r0, _0211A5CC ; =0x0211D814
	add r1, r1, #0x400
	bl  FUN_ov1_020dbe00
	mov r0, r4
	mov r1, #1
	bl FUN_ov83_0211acc4
	ldmfd sp!, {r4, pc}
_0211A5CC: .word 0x0211D814
	arm_func_end FUN_ov83_0211a5a4

	arm_func_start FUN_ov83_0211a5d0
FUN_ov83_0211a5d0: ; 0x0211A5D0
	add r1, r0, #0x44
	ldr r0, [r0, #0x444]
	ldr r2, _0211A5E8 ; =0x0211D5C8
	ldr r12, _0211A5EC ; = FUN_ov1_020dbfdc
	add r1, r1, #0x400
	bx r12
_0211A5E8: .word 0x0211D5C8
_0211A5EC: .word  FUN_ov1_020dbfdc
	arm_func_end FUN_ov83_0211a5d0

	arm_func_start FUN_ov83_0211a5f0
FUN_ov83_0211a5f0: ; 0x0211A5F0
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x44
	mov r6, #0
	add r5, r0, #0x400
	mov r4, #0xc
_0211A604:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0xe
	blt _0211A604
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov83_0211a5f0

	arm_func_start FUN_ov83_0211a61c
FUN_ov83_0211a61c: ; 0x0211A61C
	stmfd sp!, {r3, lr}
	ldr r0, _0211A648 ; =0x020AF81C
	mov r1, #0x40
	bl FUN_02044658
	ldr r1, [r0]
	mov r2, #0
	str r2, [r0]
	cmp r1, #0
	moveq r2, #1
	mov r0, r2
	ldmfd sp!, {r3, pc}
_0211A648: .word 0x020AF81C
	arm_func_end FUN_ov83_0211a61c

	arm_func_start FUN_ov83_0211a64c
FUN_ov83_0211a64c: ; 0x0211A64C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r8, r0
	ldrb r0, [r8, #0x30]
	mov r5, #1
	mov r6, #0
	cmp r0, #0
	beq _0211A698
	ldr r4, [r8, #4]
	mov r1, r6
	mov r0, r4
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r4
	mov r2, r6
	mov r1, r5
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A698:
	bl  FUN_ov16_020f081c
	ldr r4, _0211AA3C ; =0x02099EF0
	mov r1, r0
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov132_02145a44
	cmp r0, #0
	beq _0211A8CC
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211A7C8
	ldr r0, _0211AA40 ; =0x020A1640
	add r9, sp, #8
	ldr r7, [r0, #0x230]
	ldrb r2, [r0, #0x246]
	ldr r1, _0211AA44 ; =0x020A0640
	ldr r0, _0211AA48 ; =0x00000808
	add r7, r7, #8
	mla r7, r2, r0, r7
	add r3, sp, #0
	ldrb r2, [r1, #0x98]
	str r6, [r9]
	ldrb r0, [r1, #0x99]
	str r6, [r9, #4]
	str r6, [r3]
	str r6, [r3, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	bl  FUN_ov1_020db338
	cmp r0, #0
	beq _0211A730
	ldr r0, [r4]
	add r1, sp, #0x10
	bl  FUN_ov126_02136e2c
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r1, [sp]
	str r0, [sp, #4]
_0211A730:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bgt _0211A750
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	ble _0211A7C8
_0211A750:
	ldrh r0, [r7, #0xe]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	cmp r0, #3
	sub r2, r2, r1
	bhs _0211A780
	cmp r2, #5
	blt _0211A780
	cmp r1, #0
	movle r0, #3
	strleh r0, [r7, #0xe]
	ble _0211A7C8
_0211A780:
	ldrh r0, [r7, #0xe]
	cmp r0, #2
	bhs _0211A7A8
	cmp r2, #3
	blt _0211A7A8
	ldr r0, [sp, #0xc]
	cmp r0, #0x63
	movle r0, #2
	strleh r0, [r7, #0xe]
	ble _0211A7C8
_0211A7A8:
	ldrh r0, [r7, #0xe]
	cmp r0, #1
	bhs _0211A7C8
	cmp r2, #1
	blt _0211A7C8
	ldr r0, [sp, #0xc]
	cmp r0, #0x63
	strleh r5, [r7, #0xe]
_0211A7C8:
	ldr r0, _0211AA4C ; =0x020AF81C
	mov r1, #0x2d
	bl FUN_02044658
	str r6, [r0]
	cmp r6, #1
	bne _0211A80C
	ldr r4, [r8, #4]
	mov r1, r6
	mov r0, r4
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A80C:
	bl  FUN_ov16_020f067c
	cmp r0, #0
	beq _0211A848
	ldr r5, [r8, #4]
	mov r4, #0x4b
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A848:
	ldr r0, _0211AA44 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211A888
	ldr r5, [r8, #4]
	mov r4, #0x4b
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A888:
	ldr r0, _0211AA50 ; =0x02099E91
	mov r4, #0x45
	ldrb r0, [r0]
	mov r2, r4
	mov r1, #0
	cmp r0, #0
	ldrne r0, _0211AA54 ; =0x02099E8C
	strneb r5, [r0]
	ldr r5, [r8, #4]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A8CC:
	bl  FUN_ov16_020f067c
	cmp r0, #0
	beq _0211A908
	ldr r7, [r8, #4]
	mov r4, #0x4b
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_02041eac
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A908:
	ldr r7, _0211AA44 ; =0x020A0640
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	bne _0211A924
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211A988
_0211A924:
	cmp r6, #1
	bne _0211A958
	ldr r4, [r8, #4]
	mov r1, r6
	mov r0, r4
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A958:
	ldr r5, [r8, #4]
	mov r4, #0x4b
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A988:
	ldr r0, _0211AA4C ; =0x020AF81C
	mov r1, #0x2d
	bl FUN_02044658
	ldr r1, [r0]
	tst r1, #0xff
	str r6, [r0]
	bne _0211A9F8
	ldr r9, _0211AA58 ; =0x0209BA20
	mov r0, r9
	bl FUN_020731a4
	cmp r0, #0
	beq _0211A9F8
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r0, r9
	bl FUN_020724c8
	mov r9, r0
	ldr r0, [r4]
	mov r1, r9
	strb r5, [r7, #0x9d]
	mov r2, r5
	bl  FUN_ov132_0214609c
	mov r1, r9
	mov r2, r5
	strh r0, [r7, #0x9e]
	ldr r0, [r4]
	bl  FUN_ov132_02146014
	strh r0, [r7, #0xa0]
_0211A9F8:
	ldr r0, _0211AA50 ; =0x02099E91
	mov r2, #0x3d
	ldrb r0, [r0]
	cmp r0, #0
	ldrne r0, _0211AA54 ; =0x02099E8C
	movne r1, #2
	strneb r1, [r0]
	ldr r4, [r8, #4]
	mov r1, r6
	mov r0, r4
	bl FUN_02041eac
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AA3C: .word 0x02099EF0
_0211AA40: .word 0x020A1640
_0211AA44: .word 0x020A0640
_0211AA48: .word 0x00000808
_0211AA4C: .word 0x020AF81C
_0211AA50: .word 0x02099E91
_0211AA54: .word 0x02099E8C
_0211AA58: .word 0x0209BA20
	arm_func_end FUN_ov83_0211a64c

	arm_func_start FUN_ov83_0211aa5c
FUN_ov83_0211aa5c: ; 0x0211AA5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #4]
	ldr r6, _0211ACB4 ; =0x0209AC44
	mov r4, #1
	mov r5, #0
	bl FUN_02041fec
	bl  FUN_ov1_020db3e0
	ldr r0, _0211ACB8 ; =0x020A0640
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	bne _0211AAA0
	mov r0, r7
	bl FUN_ov83_0211a61c
	cmp r0, #0
	bne _0211AB44
_0211AAA0:
	bl  FUN_ov1_020db304
	cmp r0, #0
	beq _0211AAF8
	bl  FUN_ov1_020db2ac
	cmp r0, #0
	beq _0211AAD8
	bl  FUN_ov16_020f081c
	ldr r2, _0211ACBC ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, #1
	bl  FUN_ov132_02145a44
	cmp r0, #0
	bne _0211AAF8
_0211AAD8:
	mov r4, #0xfa
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl FUN_0202d774
	mov r0, r6
	mov r1, r4
	bl FUN_0202c470
_0211AAF8:
	ldr r0, _0211ACB8 ; =0x020A0640
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	beq _0211AB18
	mov r0, r7
	bl FUN_ov83_0211a64c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AB18:
	ldr r4, [r7, #4]
	mov r1, r5
	mov r0, r4
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AB44:
	ldr r8, _0211ACBC ; =0x02099EF0
	ldr r0, [r8]
	bl  FUN_ov132_02144f4c
	cmp r0, #0
	beq _0211AB7C
	ldr r0, [r8]
	mov r1, r5
	bl  FUN_ov132_02145140
	ldr r0, [r8]
	mov r1, r4
	bl  FUN_ov132_02145140
	ldr r0, _0211ACC0 ; =0x020E9485
	strb r5, [r0]
	strb r5, [r0, #1]
_0211AB7C:
	ldr r0, _0211ACBC ; =0x02099EF0
	ldr r0, [r0]
	bl  FUN_ov132_02144f4c
	cmp r0, #0
	beq _0211ABA0
	ldr r0, _0211ACB4 ; =0x0209AC44
	mov r1, #0
	mov r2, #0x3e8
	bl FUN_0202d774
_0211ABA0:
	ldr r0, _0211ACB8 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #6
	bne _0211ABC0
	ldr r0, _0211ACB4 ; =0x0209AC44
	mov r1, #0
	mov r2, #0x3e8
	bl FUN_0202d774
_0211ABC0:
	ldr r8, _0211ACBC ; =0x02099EF0
	mov r1, r5
	ldr r0, [r8]
	bl  FUN_ov132_02145190
	cmp r0, #0
	bne _0211AC1C
	ldr r0, [r8]
	mov r1, r4
	bl  FUN_ov132_02145190
	cmp r0, #0
	bne _0211AC1C
	mov r8, #0x7d0
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, r5
	bl FUN_0202c314
	mov r0, r6
	mov r1, r4
	mov r2, r8
	mov r3, r5
	bl FUN_0202c314
	b _0211AC4C
_0211AC1C:
	mov r4, #0x7d0
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #9
	str r5, [sp]
	bl FUN_0202c184
	mov r0, r6
	mov r2, r4
	mov r3, r5
	mov r1, #1
	bl FUN_0202c314
_0211AC4C:
	ldr r0, _0211ACB8 ; =0x020A0640
	mov r1, #0
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	bne _0211AC8C
	ldr r5, [r7, #4]
	mov r4, #0x47
	mov r0, r5
	mov r2, r4
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AC8C:
	ldr r4, [r7, #4]
	mov r2, #0x37
	mov r0, r4
	bl FUN_02041eac
	mov r0, r4
	mov r1, #1
	mov r2, #0x38
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211ACB4: .word 0x0209AC44
_0211ACB8: .word 0x020A0640
_0211ACBC: .word 0x02099EF0
_0211ACC0: .word 0x020E9485
	arm_func_end FUN_ov83_0211aa5c

	arm_func_start FUN_ov83_0211acc4
FUN_ov83_0211acc4: ; 0x0211ACC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #8]
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r6, _0211AF4C ; =0x0209F5C0
	mov r8, #0
	mov r5, #2
	str r1, [r9, #8]
	mov r7, #1
	mov r0, r6
	mov r1, r8
	mov r2, r5
	mov r3, r8
	str r8, [r9, #0x28]
	str r7, [r9, #0x2c]
	bl  FUN_ov16_020f5f64
	ldr r0, _0211AF50 ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	ldr r0, [r9, #8]
	cmp r0, #0xa
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, r8
	add pc, pc, r0, lsl #2
	mov r0, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AD2C:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	b _0211AD54
	b _0211AE14
	b _0211AE30
	b _0211AE3C
	b _0211AF38
	b _0211AE78
	b _0211AE78
_0211AD54:
	mov r1, #0x3c
	mov r0, #0xe
	str r1, [r9, #0x58]
	str r8, [r9, #0x5c]
	str r8, [r9, #0x60]
	str r8, [r9, #0x64]
	str r8, [r9, #0x68]
	str r0, [r9, #0x6c]
	ldr r6, _0211AF54 ; =0x0209AEC0
	mvn r5, #0
	b _0211AD9C
_0211AD80:
	mov r0, r6
	bl FUN_02046730
	cmp r8, r0
	add r0, r9, r8, lsl #2
	streq r4, [r0, #0x70]
	strne r5, [r0, #0x70]
	add r8, r8, #1
_0211AD9C:
	cmp r8, #4
	blt _0211AD80
	mov r7, #0
	ldr r6, _0211AF54 ; =0x0209AEC0
	mvn r5, #0
	b _0211ADD0
_0211ADB4:
	mov r0, r6
	bl FUN_02046730
	cmp r7, r0
	add r0, r9, r7, lsl #2
	streq r4, [r0, #0x80]
	strne r5, [r0, #0x80]
	add r7, r7, #1
_0211ADD0:
	cmp r7, #4
	blt _0211ADB4
	mov r1, #0
	b _0211ADEC
_0211ADE0:
	add r0, r9, r1, lsl #2
	str r4, [r0, #0x90]
	add r1, r1, #1
_0211ADEC:
	cmp r1, #4
	blt _0211ADE0
	mov r1, r4
	add r0, r9, #0xa4
	mov r2, #0x60
	bl MemWrite
	mov r0, r9
	strb r4, [r9, #0x404]
	bl FUN_ov83_0211c978
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AE14:
	ldr r1, _0211AF58 ; =0x0211D5C0
	mov r0, r8
	bl  FUN_ov1_020e5634
	mov r1, r0
	add r0, r9, #0x58
	bl  FUN_ov1_020e5030
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AE30:
	mov r0, r9
	bl FUN_ov83_0211bfcc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AE3C:
	mov r5, #3
	b _0211AE5C
_0211AE44:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_020f5eec
	add r5, r5, #1
_0211AE5C:
	cmp r5, #0xc
	ble _0211AE44
	mov r0, r9
	bl FUN_ov83_0211c978
	ldr r0, _0211AF5C ; =0x020E9482
	strb r4, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AE78:
	str r5, [r9, #0x2c]
	ldr r5, _0211AF4C ; =0x0209F5C0
	cmp r0, #0xa
	mov r0, r5
	mov r1, r4
	mov r3, r4
	mov r2, #1
	streq r7, [r9, #0x28]
	bl  FUN_ov16_020f5eec
	mov r0, r5
	mov r1, r4
	mov r3, r4
	mov r2, #2
	bl  FUN_ov16_020f5eec
	mov r0, r5
	mov r1, r4
	mov r3, r4
	mov r2, #0x11
	bl  FUN_ov16_020f5eec
	mov r0, r5
	mov r1, r4
	mov r2, #0x12
	mov r3, r4
	bl  FUN_ov16_020f5eec
	mov r6, #3
	b _0211AEF8
_0211AEE0:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_020f5eec
	add r6, r6, #1
_0211AEF8:
	cmp r6, #0xc
	ble _0211AEE0
	ldr r5, _0211AF4C ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	mov r3, r4
	mov r2, #0xd
	bl  FUN_ov16_020f5eec
	mov r0, r5
	mov r1, r4
	mov r3, r4
	mov r2, #0xe
	bl  FUN_ov16_020f5eec
	mov r0, r9
	bl FUN_ov83_0211c978
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AF38:
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, r9
	bl FUN_ov83_0211aa5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AF4C: .word 0x0209F5C0
_0211AF50: .word 0x0209A070
_0211AF54: .word 0x0209AEC0
_0211AF58: .word 0x0211D5C0
_0211AF5C: .word 0x020E9482
	arm_func_end FUN_ov83_0211acc4

	arm_func_start FUN_ov83_0211af60
FUN_ov83_0211af60: ; 0x0211AF60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, #0
	mov r10, r0
	mov r9, r11
_0211AF70:
	add r0, r10, r9
	mov r4, #1
	strb r4, [r0, #0x31]
	add r1, r10, r9, lsl #2
	mov r8, #0
	str r8, [r1, #0x34]
	ldr r0, _0211B078 ; =0x02099EF0
	mov r1, r9
	ldr r0, [r0]
	bl  FUN_ov132_02143a40
	movs r6, r0
	add r0, r10, r9, lsl #2
	str r6, [r0, #0x3c]
	beq _0211AFC0
	ldr r0, _0211B07C ; =0x0209A250
	mov r3, r4
	mov r1, r6, lsl #2
	mov r2, #0xd
	bl FUN_0202de58
	mov r8, r0
_0211AFC0:
	add r0, r10, r9, lsl #2
	str r8, [r0, #0x44]
	cmp r8, #0
	streq r11, [r0, #0x3c]
	beq _0211B040
	ldr r4, _0211B078 ; =0x02099EF0
	mov r1, r9
	ldr r0, [r4]
	bl  FUN_ov132_02143a34
	sub r1, r6, #1
	mov r7, r0
	add r8, r8, r1, lsl #2
	add r5, r10, r9, lsl #2
_0211AFF4:
	ldr r0, [r4]
	mov r1, r9
	mov r2, r7
	bl  FUN_ov132_02143c08
	cmp r0, #0
	ldrneb r0, [r0, #8]
	cmpne r0, #0xd
	cmpne r0, #0xc
	cmpne r0, #0xe
	strne r7, [r8], #-4
	subs r7, r7, #1
	ldr r0, [r5, #0x44]
	addmi r7, r7, #0x20
	cmp r8, r0
	bhs _0211AFF4
	subs r1, r6, #6
	movmi r1, #0
	add r0, r10, r9, lsl #2
	str r1, [r0, #0x34]
_0211B040:
	add r9, r9, #1
	cmp r9, #2
	blt _0211AF70
	add r1, r10, #8
	mov r0, r10
	add r1, r1, #0x400
	mov r2, #0
	bl FUN_ov83_0211b080
	add r1, r10, #0x1c
	mov r0, r10
	add r1, r1, #0x400
	mov r2, #1
	bl FUN_ov83_0211b080
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B078: .word 0x02099EF0
_0211B07C: .word 0x0209A250
	arm_func_end FUN_ov83_0211af60

	arm_func_start FUN_ov83_0211b080
FUN_ov83_0211b080: ; 0x0211B080
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	add r12, r0, #0x31
	ldrb r3, [r12, r2]
	cmp r3, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	strb r4, [r12, r2]
	mvn r12, #0
	add r3, sp, #0
_0211B0AC:
	str r12, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r4, #6
	blt _0211B0AC
	add lr, r0, r2, lsl #2
	ldr r12, [lr, #0x44]
	mov r3, #0
	cmp r12, #0
	ldrne r0, [lr, #0x3c]
	cmpne r0, #0
	beq _0211B114
	ldr r4, [lr, #0x34]
	mov r5, r3
	add r6, r12, r4, lsl #2
	add r12, sp, #0
	b _0211B100
_0211B0EC:
	ldr r0, [r6], #4
	add r3, r3, #1
	str r0, [r12, r5, lsl #2]
	add r4, r4, #1
	add r5, r5, #1
_0211B100:
	cmp r5, #6
	bge _0211B114
	ldr r0, [lr, #0x3c]
	cmp r4, r0
	blt _0211B0EC
_0211B114:
	mov r0, r1
	mov r1, r2
	add r2, sp, #0
	bl  FUN_ov1_020db600
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov83_0211b080

	arm_func_start FUN_ov83_0211b12c
FUN_ov83_0211b12c: ; 0x0211B12C
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4]
	cmp r0, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r3, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	ldr r0, [r4, #4]
	mov r1, #0
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl MemWrite
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl FUN_020026d0
	mov r0, #1
	strb r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov83_0211b12c

	arm_func_start FUN_ov83_0211b194
FUN_ov83_0211b194: ; 0x0211B194
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x34]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B1DC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r2, r5, #0x34
	ldr r1, [r2, r4, lsl #2]
	add r0, r5, r4
	sub r1, r1, #1
	str r1, [r2, r4, lsl #2]
	mov r1, #1
	strb r1, [r0, #0x31]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B1DC: .word 0x0209AC44
	arm_func_end FUN_ov83_0211b194

	arm_func_start FUN_ov83_0211b1e0
FUN_ov83_0211b1e0: ; 0x0211B1E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x34]
	ldr r0, [r0, #0x3c]
	add r1, r1, #6
	cmp r1, r0
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B230 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r2, r5, #0x34
	ldr r1, [r2, r4, lsl #2]
	add r0, r5, r4
	add r1, r1, #1
	str r1, [r2, r4, lsl #2]
	mov r1, #1
	strb r1, [r0, #0x31]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B230: .word 0x0209AC44
	arm_func_end FUN_ov83_0211b1e0

	arm_func_start FUN_ov83_0211b234
FUN_ov83_0211b234: ; 0x0211B234
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r4, r1
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B270 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x4d]
	ldr r0, _0211B274 ; =0x0209A070
	mov r2, #1
	str r4, [r5, #0x20]
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B270: .word 0x0209AC44
_0211B274: .word 0x0209A070
	arm_func_end FUN_ov83_0211b234

	arm_func_start FUN_ov83_0211b278
FUN_ov83_0211b278: ; 0x0211B278
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x40]
	mov r4, r1
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B2B4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x4e]
	ldr r0, _0211B2B8 ; =0x0209A070
	mov r2, #1
	str r4, [r5, #0x20]
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B2B4: .word 0x0209AC44
_0211B2B8: .word 0x0209A070
	arm_func_end FUN_ov83_0211b278

	arm_func_start FUN_ov83_0211b2bc
FUN_ov83_0211b2bc: ; 0x0211B2BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #8]
	mov r7, r1
	cmp r0, #6
	ldr r5, _0211B614 ; =0x0209F5C0
	mov r4, #1
	cmpne r0, #9
	beq _0211B2E8
	cmp r0, #0xa
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0211B2E8:
	ldrb r0, [r8, #0xe]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r0, r5
	mov r1, r6
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B618 ; =0x0209A0F4
	ldr r1, [r8, #8]
	ldrh r0, [r0]
	sub r1, r1, #9
	cmp r1, #1
	orr r0, r0, r7
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	bhi _0211B4A8
	tst r7, #1
	beq _0211B3C4
	ldr r0, [r8, #0x28]
	sub r4, r6, #1
	cmp r0, #0
	beq _0211B358
	cmp r0, #1
	moveq r6, #0x17
	moveq r4, #0xa
	b _0211B360
_0211B358:
	mov r6, #0x15
	mov r4, #9
_0211B360:
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r0, r6, #0x14
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211B3AC
_0211B378: ; jump table
	b _0211B388 ; case 0
	b _0211B394 ; case 1
	b _0211B388 ; case 2
	b _0211B3A0 ; case 3
_0211B388:
	ldr r0, _0211B61C ; =0x0209AC44
	mov r1, #8
	b _0211B3A8
_0211B394:
	ldr r0, _0211B61C ; =0x0209AC44
	mov r1, #6
	b _0211B3A8
_0211B3A0:
	ldr r0, _0211B61C ; =0x0209AC44
	mov r1, #4
_0211B3A8:
	bl FUN_0202cf6c
_0211B3AC:
	add r0, r8, r4
	ldrb r1, [r0, #0x4c]
	ldr r0, _0211B614 ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	str r6, [r8, #0x24]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B3C4:
	tst r7, #2
	beq _0211B400
	ldrb r1, [r8, #0x56]
	ldr r0, _0211B620 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldr r0, _0211B61C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r1, [r8, #0x56]
	mov r0, r5
	bl  FUN_ov16_020f6530
	mov r0, #0x17
	str r0, [r8, #0x24]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B400:
	tst r7, #0x20
	beq _0211B454
	ldr r0, _0211B61C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r8, #0x28]
	mov r2, #1
	cmp r0, #0
	addge r0, r0, #1
	movge r1, r0, lsr #0x1f
	rsbge r0, r1, r0, lsl #31
	strlt r6, [r8, #0x28]
	addge r0, r1, r0, ror #31
	strge r0, [r8, #0x28]
	ldr r1, [r8, #0x28]
	ldr r0, _0211B620 ; =0x0209A070
	add r1, r1, #9
	add r1, r8, r1
	ldrb r1, [r1, #0x4c]
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B454:
	tst r7, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B61C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r8, #0x28]
	mov r2, #1
	cmp r0, #0
	addge r0, r0, #1
	movge r1, r0, lsr #0x1f
	rsbge r0, r1, r0, lsl #31
	strlt r4, [r8, #0x28]
	addge r0, r1, r0, ror #31
	strge r0, [r8, #0x28]
	ldr r1, [r8, #0x28]
	ldr r0, _0211B620 ; =0x0209A070
	add r1, r1, #9
	add r1, r8, r1
	ldrb r1, [r1, #0x4c]
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B4A8:
	tst r7, #1
	beq _0211B4D0
	ldr r0, _0211B61C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldrb r1, [r8, #0x4c]
	mov r0, r5
	bl  FUN_ov16_020f6530
	str r4, [r8, #0x24]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B4D0:
	ldr r0, [r8, #0x20]
	cmp r0, #0x11
	bgt _0211B508
	bge _0211B544
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B4EC: ; jump table
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 0
	b _0211B514 ; case 1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 2
	b _0211B54C ; case 3
	b _0211B54C ; case 4
	b _0211B5B4 ; case 5
	b _0211B5B4 ; case 6
_0211B508:
	cmp r0, #0x12
	beq _0211B5AC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B514:
	tst r7, #0x20
	beq _0211B52C
	mov r0, r8
	mov r1, #3
	bl FUN_ov83_0211b234
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B52C:
	tst r7, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, #5
	bl FUN_ov83_0211b278
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B544:
	mov r0, #3
	str r0, [r8, #0x20]
_0211B54C:
	tst r1, #0x40
	beq _0211B570
	mov r0, r8
	mov r1, #0
	bl FUN_ov83_0211b194
	ldrb r1, [r8, #0x4f]
	ldr r0, _0211B614 ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B570:
	tst r1, #0x80
	beq _0211B594
	mov r0, r8
	mov r1, #0
	bl FUN_ov83_0211b1e0
	ldrb r1, [r8, #0x50]
	ldr r0, _0211B614 ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B594:
	tst r7, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, #5
	bl FUN_ov83_0211b278
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B5AC:
	mov r0, #5
	str r0, [r8, #0x20]
_0211B5B4:
	tst r1, #0x40
	beq _0211B5D8
	mov r0, r8
	mov r1, #1
	bl FUN_ov83_0211b194
	ldrb r1, [r8, #0x51]
	ldr r0, _0211B614 ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B5D8:
	tst r1, #0x80
	beq _0211B5FC
	mov r0, r8
	mov r1, #1
	bl FUN_ov83_0211b1e0
	ldrb r1, [r8, #0x52]
	ldr r0, _0211B614 ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B5FC:
	tst r7, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, #3
	bl FUN_ov83_0211b234
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B614: .word 0x0209F5C0
_0211B618: .word 0x0209A0F4
_0211B61C: .word 0x0209AC44
_0211B620: .word 0x0209A070
	arm_func_end FUN_ov83_0211b2bc

	arm_func_start FUN_ov83_0211b624
FUN_ov83_0211b624: ; 0x0211B624
	ldr r0, _0211B63C ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211B640 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211B63C: .word 0x0209F5C0
_0211B640: .word  FUN_ov16_020f6b3c
	arm_func_end FUN_ov83_0211b624

	arm_func_start FUN_ov83_0211b644
FUN_ov83_0211b644: ; 0x0211B644
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x18]
	cmp r1, #0x11
	bgt _0211B680
	bge _0211B698
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_0211B664: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _0211B68C ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	b _0211B6A0 ; case 3
	b _0211B6A0 ; case 4
	b _0211B6C4 ; case 5
	b _0211B6C4 ; case 6
_0211B680:
	cmp r1, #0x12
	beq _0211B6BC
	ldmfd sp!, {r3, pc}
_0211B68C:
	ldr r0, _0211B6E0 ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r3, pc}
_0211B698:
	mov r1, #3
	str r1, [r0, #0x18]
_0211B6A0:
	ldr r1, [r0, #0x20]
	cmp r1, #3
	cmpne r1, #4
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	bl FUN_ov83_0211b234
	ldmfd sp!, {r3, pc}
_0211B6BC:
	mov r1, #5
	str r1, [r0, #0x18]
_0211B6C4:
	ldr r1, [r0, #0x20]
	cmp r1, #5
	cmpne r1, #6
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	bl FUN_ov83_0211b278
	ldmfd sp!, {r3, pc}
_0211B6E0: .word 0x0209A070
	arm_func_end FUN_ov83_0211b644

	arm_func_start FUN_ov83_0211b6e4
FUN_ov83_0211b6e4: ; 0x0211B6E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0x11
	moveq r0, #3
	streq r0, [r4, #0x18]
	beq _0211B70C
	cmp r0, #0x12
	moveq r0, #5
	streq r0, [r4, #0x18]
_0211B70C:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	cmp r0, r1
	bne _0211B7A8
	ldr r0, _0211B7CC ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldrb r0, [r4, #0xd]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r4, #0xd]
	cmp r0, #8
	ldmlofd sp!, {r4, pc}
	ldr r0, [r4, #0x18]
	mov r1, #0
	strb r1, [r4, #0xd]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0211B754: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _0211B770 ; case 3
	b _0211B77C ; case 4
	b _0211B788 ; case 5
	b _0211B798 ; case 6
_0211B770:
	mov r0, r4
	bl FUN_ov83_0211b194
	ldmfd sp!, {r4, pc}
_0211B77C:
	mov r0, r4
	bl FUN_ov83_0211b1e0
	ldmfd sp!, {r4, pc}
_0211B788:
	mov r0, r4
	mov r1, #1
	bl FUN_ov83_0211b194
	ldmfd sp!, {r4, pc}
_0211B798:
	mov r0, r4
	mov r1, #1
	bl FUN_ov83_0211b1e0
	ldmfd sp!, {r4, pc}
_0211B7A8:
	ldr r4, _0211B7CC ; =0x0209A070
	mov r0, r4
	bl  FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211B7CC: .word 0x0209A070
	arm_func_end FUN_ov83_0211b6e4

	arm_func_start FUN_ov83_0211b7d0
FUN_ov83_0211b7d0: ; 0x0211B7D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r1, [r5, #0x18]
	mov r4, #0
	cmp r1, #0x12
	bgt _0211B828
	bge _0211B898
	cmp r1, #6
	bgt _0211B81C
	cmp r1, #0
	addge pc, pc, r1, lsl #2
	b _0211B8DC
_0211B800: ; jump table
	b _0211B8DC ; case 0
	b _0211B860 ; case 1
	b _0211B8DC ; case 2
	b _0211B87C ; case 3
	b _0211B88C ; case 4
	b _0211B8A0 ; case 5
	b _0211B8AC ; case 6
_0211B81C:
	cmp r1, #0x11
	beq _0211B874
	b _0211B8DC
_0211B828:
	cmp r1, #0x15
	bgt _0211B840
	bge _0211B8C0
	cmp r1, #0x14
	beq _0211B8B4
	b _0211B8DC
_0211B840:
	cmp r1, #0x17
	bgt _0211B8DC
	cmp r1, #0x16
	blt _0211B8DC
	beq _0211B8B4
	cmp r1, #0x17
	beq _0211B8CC
	b _0211B8DC
_0211B860:
	mov r4, #1
	ldr r0, _0211B930 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	b _0211B8DC
_0211B874:
	mov r0, #3
	str r0, [r5, #0x18]
_0211B87C:
	mov r0, r5
	mov r1, #0
_0211B884:
	bl FUN_ov83_0211b194
	b _0211B8DC
_0211B88C:
	mov r1, r4
_0211B890:
	bl FUN_ov83_0211b1e0
	b _0211B8DC
_0211B898:
	mov r0, #4
	str r0, [r5, #0x18]
_0211B8A0:
	mov r0, r5
	mov r1, #1
	b _0211B884
_0211B8AC:
	mov r1, #1
	b _0211B890
_0211B8B4:
	ldr r0, _0211B930 ; =0x0209AC44
	mov r1, #8
	b _0211B8D4
_0211B8C0:
	ldr r0, _0211B930 ; =0x0209AC44
	mov r1, #6
	b _0211B8D4
_0211B8CC:
	ldr r0, _0211B930 ; =0x0209AC44
	mov r1, #4
_0211B8D4:
	bl FUN_0202cf6c
	mov r4, #1
_0211B8DC:
	ldr r7, _0211B934 ; =0x0209A070
	ldr r1, [r5, #0x18]
	mov r0, r7
	bl  FUN_ov16_020f6d3c
	movs r6, r0
	bmi _0211B924
	cmp r4, #0
	mov r0, r7
	mov r1, r6
	beq _0211B91C
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldr r0, _0211B938 ; =0x0209F5C0
	mov r1, r6
	bl  FUN_ov16_020f6530
	b _0211B924
_0211B91C:
	mov r2, #0
	bl  FUN_ov16_020f6e8c
_0211B924:
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x24]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B930: .word 0x0209AC44
_0211B934: .word 0x0209A070
_0211B938: .word 0x0209F5C0
	arm_func_end FUN_ov83_0211b7d0

	arm_func_start FUN_ov83_0211b93c
FUN_ov83_0211b93c: ; 0x0211B93C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #6
	cmpne r0, #9
	beq _0211B960
	cmp r0, #0xa
	ldmnefd sp!, {r4, r5, r6, pc}
_0211B960:
	mov r6, #0
	ldr r0, _0211BA5C ; =0x0209F5C0
	mov r1, r6
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0211BA20
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0211B9EC
	mov r0, #1
	strb r0, [r5, #0xe]
	strb r6, [r5, #0xd]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	bl FUN_ov83_0211b624
	str r0, [r5, #0x18]
	cmp r0, #0x11
	moveq r0, #3
	streq r0, [r5, #0x18]
	beq _0211B9D8
	cmp r0, #0x12
	moveq r0, #5
	streq r0, [r5, #0x18]
_0211B9D8:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0211B9EC
	mov r0, r5
	bl FUN_ov83_0211b644
_0211B9EC:
	ldrh r1, [r4]
	mov r0, r5
	str r1, [r5, #0x10]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x14]
	bl FUN_ov83_0211b624
	ldr r1, [r5, #0x18]
	str r0, [r5, #0x1c]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov83_0211b6e4
	ldmfd sp!, {r4, r5, r6, pc}
_0211BA20:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	ldrne r1, [r5, #0x18]
	cmpne r1, #0
	beq _0211BA48
	ldr r0, [r5, #0x1c]
	cmp r0, r1
	bne _0211BA48
	mov r0, r5
	bl FUN_ov83_0211b7d0
_0211BA48:
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x18]
	strb r0, [r5, #0xe]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BA5C: .word 0x0209F5C0
	arm_func_end FUN_ov83_0211b93c

	arm_func_start FUN_ov83_0211ba60
FUN_ov83_0211ba60: ; 0x0211BA60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, #0x20
	mov r7, #0
	mov r10, r0
	str r8, [sp, #4]
	mov r4, r7
	mov r5, #1
	add r6, sp, #4
	bl FUN_0200505c
	mov r1, r0
	mov r0, r7
	mov r2, r8
	bl FUN_0200787c
	bl FUN_0200505c
	mov r1, r8
	bl FUN_020026d0
	ldr r0, [r10, #0x474]
	cmp r0, #0
	beq _0211BAC8
	mov r2, #3
	mov r1, r7
	mov r3, r2
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r7, r0
_0211BAC8:
	ldr r0, [r10, #0x480]
	cmp r0, #0
	beq _0211BAEC
	mov r2, #3
	mov r1, r7
	mov r3, r2
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r7, r0
_0211BAEC:
	ldr r0, [r10, #0x45c]
	cmp r0, #0
	beq _0211BB10
	mov r1, r7
	mov r2, #2
	mov r3, #3
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r7, r0
_0211BB10:
	ldr r0, [r10, #0x468]
	cmp r0, #0
	beq _0211BB34
	mov r1, r7
	mov r2, #2
	mov r3, #3
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r7, r0
_0211BB34:
	add r0, r10, #8
	add r8, r0, #0x400
	ldr r0, [sp, #4]
	mov r9, #0
_0211BB44:
	ldr r1, [r8]
	cmp r1, #0
	ldrne r1, [r8, #4]
	cmpne r1, #0
	movne r1, r5
	moveq r1, r4
	cmp r1, #0
	beq _0211BBA4
	str r0, [r8, #8]
	ldrh r2, [r8, #0xc]
	ldrh r1, [r8, #0xe]
	ldr r0, [r8]
	mov r3, r4
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	ldrh r2, [r8, #0xc]
	ldrh r1, [r8, #0xe]
	ldr r3, [sp, #4]
	mov r7, r0
	mul r0, r2, r1
	add r0, r3, r0, lsl #5
	str r0, [sp, #4]
_0211BBA4:
	add r9, r9, #1
	cmp r9, #3
	add r8, r8, #0x14
	mov r11, #0
	blt _0211BB44
	ldr r0, [r10, #0x4bc]
	cmp r0, #0
	beq _0211BBDC
	mov r1, r7
	mov r2, #6
	mov r3, #3
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r7, r0
_0211BBDC:
	ldr r0, [r10, #0x4b0]
	cmp r0, #0
	beq _0211BBFC
	mov r1, r7
	mov r2, #6
	mov r3, #3
	str r6, [sp]
	bl  FUN_ov1_020dc020
_0211BBFC:
	mov r4, #0x20
	mov r5, #0
	str r4, [sp, #4]
	bl FUN_02004f78
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r4
	bl FUN_020026d0
	ldr r0, [r10, #0x4a4]
	cmp r0, #0
	beq _0211BC4C
	mov r1, r5
	mov r2, #5
	mov r3, #1
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r5, r0
_0211BC4C:
	ldr r0, [r10, #0x48c]
	cmp r0, #0
	beq _0211BC70
	mov r1, r5
	mov r2, #4
	mov r3, #1
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r5, r0
_0211BC70:
	ldr r0, [r10, #0x498]
	cmp r0, #0
	beq _0211BC94
	mov r1, r5
	mov r2, #4
	mov r3, #1
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r5, r0
_0211BC94:
	ldr r0, [r10, #0x4c8]
	cmp r0, #0
	beq _0211BCB8
	mov r1, r5
	mov r2, #7
	mov r3, #1
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r5, r0
_0211BCB8:
	ldr r0, [r10, #0x4d4]
	cmp r0, #0
	beq _0211BCDC
	mov r1, r5
	mov r2, #8
	mov r3, #1
	str r6, [sp]
	bl  FUN_ov1_020dc020
	mov r5, r0
_0211BCDC:
	ldr r0, [r10, #0x4e0]
	cmp r0, #0
	beq _0211BCFC
	mov r1, r5
	mov r2, #7
	mov r3, #1
	str r6, [sp]
	bl  FUN_ov1_020dc020
_0211BCFC:
	str r11, [sp, #4]
	bl FUN_02004f78
	mov r4, #0x20
	mov r1, r0
	mov r0, r11
	mov r2, r4
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r4
	bl FUN_020026d0
	ldr r5, [r10, #0x450]
	cmp r5, #0
	beq _0211BD5C
	mov r0, r5
	str r6, [sp]
	sub r1, r4, #0x21
	mov r2, #1
	mov r3, #2
	bl  FUN_ov1_020dc020
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, r11
	add r0, r5, r0
	bl FUN_020055bc
_0211BD5C:
	bl  FUN_ov16_020f10ac
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov83_0211ba60

	arm_func_start FUN_ov83_0211bd6c
FUN_ov83_0211bd6c: ; 0x0211BD6C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	add r0, r0, #8
	add r7, r0, #0x400
	mov r5, r8
	mov r6, #1
	mov r4, r8
_0211BD88:
	ldr r0, [r7]
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, r6
	moveq r0, r5
	cmp r0, #0
	ldrneb r0, [r7, #0x10]
	cmpne r0, #0
	beq _0211BDCC
	strb r4, [r7, #0x10]
	ldrh r3, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldmib r7, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_02005a1c
_0211BDCC:
	add r8, r8, #1
	cmp r8, #3
	add r7, r7, #0x14
	blt _0211BD88
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov83_0211bd6c

	arm_func_start FUN_ov83_0211bde0
FUN_ov83_0211bde0: ; 0x0211BDE0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x430]
	mov r1, #0
	cmp r12, #0
	ldrne r0, [r0, #0x434]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r2, #0x18
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r1, #0
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211BE5C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211BE5C: .word 0x0209F5C0
	arm_func_end FUN_ov83_0211bde0

	arm_func_start FUN_ov83_0211be60
FUN_ov83_0211be60: ; 0x0211BE60
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x430
	mov r0, r4
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl  FUN_ov16_020f2f20
	ldr r5, _0211BF00 ; =0x02099F50
	mov r6, #1
	ldr r0, [r5]
	mov r1, r6
	mov r2, #4
	bl rwriteat14n18
	mov r1, #3
	str r1, [sp]
	stmib sp, {r1, r6}
	mov r1, #0
	str r1, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r2, [r4, #0xc]
	ldrh r3, [r4, #0xe]
	ldr r1, [r4, #4]
	mov r0, r9
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldr r0, [r5]
	bl wraper_rwiteat14n18
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4, #4]
	strb r6, [r4, #0x10]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl FUN_020026d0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211BF00: .word 0x02099F50
	arm_func_end FUN_ov83_0211be60

	arm_func_start FUN_ov83_0211bf04
FUN_ov83_0211bf04: ; 0x0211BF04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r8, [r0, #0x4a4]
	mov r9, r3
	cmp r8, #0
	ldrnesb r3, [r9]
	mov r10, r1
	cmpne r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r2, lsl #0x18
	mov r5, r0, asr #0x18
	mov r7, #0x18
	mov r6, #0
	mov r4, #2
	mov r11, #3
_0211BF44:
	ldr r0, [r8, #0xc]
	cmp r3, #0x30
	add r1, r8, r0
	blt _0211BF6C
	cmp r3, #0x39
	suble r2, r3, #0x30
	movle r0, #6
	mulle r0, r2, r0
	addle r1, r1, r0, lsl #1
	ble _0211BF70
_0211BF6C:
	add r1, r1, #0x78
_0211BF70:
	str r7, [sp]
	mov r0, r10, lsl #0x18
	mov r0, r0, asr #0x18
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r11, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _0211BFC8 ; =0x0209F5C0
	mov r1, r6
	mov r2, #1
	mov r3, r6
	bl  FUN_ov16_020f5da0
	ldrsb r3, [r9, #1]!
	add r10, r10, #2
	cmp r3, #0
	bne _0211BF44
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BFC8: .word 0x0209F5C0
	arm_func_end FUN_ov83_0211bf04

	arm_func_start FUN_ov83_0211bfcc
FUN_ov83_0211bfcc: ; 0x0211BFCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	mov r1, #0
	ldr r0, _0211C210 ; =0x0209F5C0
	mov r3, r1
	mov r2, #0x10
	bl  FUN_ov16_020f5eec
	ldr r0, _0211C214 ; =0x020A0640
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	ldreq r4, [r10, #0x45c]
	ldrne r4, [r10, #0x468]
	cmp r4, #0
	beq _0211C07C
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r9, r4, r0
	mov r8, #0xc
	mov r7, #0x14
	mov r6, #8
	mov r5, #3
	mov r3, #0x40
	mov r2, #0x18
	mov r0, #2
	strh r3, [sp, #0x2c]
	strh r2, [sp, #0x2e]
	strb r0, [sp, #0x30]
	strh r8, [sp, #0x20]
	strh r7, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r5, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	str r9, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211C210 ; =0x0209F5C0
	mov r2, r1
	mov r3, #1
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211C07C:
	cmp r4, #0
	beq _0211C0D8
	ldr r2, [r4, #0xc]
	mov r5, #2
	mov r1, #0
	str r5, [sp]
	str r1, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x14
	add r4, r4, r2
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	ldr r0, _0211C210 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r5, [sp, #0x18]
	add r4, r4, #0x30
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C0D8:
	ldr r11, _0211C218 ; =0x0209A070
	mov r9, #0xa
	mov r8, #1
	mov r7, #0
	mov r0, r11
	mov r1, r8
	mov r3, r7
	str r9, [sp]
	mov r2, #2
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x4c]
	mov r2, #0xb
	mov r0, r11
	mov r1, r7
	mov r3, r2
	str r7, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x4d]
	mov r2, #0xc
	str r7, [sp]
	mov r0, r11
	mov r1, r7
	mov r3, r2
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x4e]
	mov r6, #0x14
	str r6, [sp]
	mov r0, r11
	mov r5, #3
	mov r1, r5
	mov r2, #7
	mov r3, r7
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x4f]
	str r6, [sp]
	mov r0, r11
	mov r1, #4
	mov r2, #8
	mov r3, r7
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x50]
	str r6, [sp]
	mov r0, r11
	mov r4, #5
	mov r1, r4
	mov r2, #9
	mov r3, r7
	bl  FUN_ov16_020f6c8c
	mov r2, r9
	mov r3, r7
	strb r0, [r10, #0x51]
	str r6, [sp]
	mov r0, r11
	mov r1, #6
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x52]
	str r8, [r10, #0x20]
	ldr r0, [r10, #0x3c]
	cmp r0, #0
	ble _0211C1E4
	ldrb r1, [r10, #0x4d]
	mov r0, r11
	mov r2, r8
	bl  FUN_ov16_020f6e8c
	add sp, sp, #0x38
	str r5, [r10, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C1E4:
	ldr r0, [r10, #0x40]
	cmp r0, #0
	addle sp, sp, #0x38
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r10, #0x4e]
	mov r0, r11
	mov r2, r8
	bl  FUN_ov16_020f6e8c
	str r4, [r10, #0x20]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C210: .word 0x0209F5C0
_0211C214: .word 0x020A0640
_0211C218: .word 0x0209A070
	arm_func_end FUN_ov83_0211bfcc

	arm_func_start FUN_ov83_0211c21c
FUN_ov83_0211c21c: ; 0x0211C21C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r7, #1
	mov r10, r0
	mov r1, #0
	ldr r0, _0211C6F0 ; =0x0209F5C0
	mov r2, r7
	mov r3, r1
	bl  FUN_ov16_020f5f64
	ldr r0, [r10, #8]
	cmp r0, #6
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r10, #0x474]
	cmp r2, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r2, #0xc]
	ldr r0, [r10, #0x3c]
	add r8, r2, r1
	cmp r0, #0
	add r9, r8, #0x1c
	ble _0211C49C
	ldr r0, [r10, #0x34]
	cmp r0, #0
	ble _0211C380
	mov r0, #0
	strh r0, [sp, #0x1c]
	mov r6, #3
	strh r0, [sp, #0x1e]
	mov r0, #0x38
	mov r5, #0xd
	mov r4, #7
	mov r11, #2
	strh r0, [sp, #0x20]
	mov r0, #0x10
	strh r0, [sp, #0x22]
	mov r1, #0
	strh r6, [sp, #0x14]
	strh r5, [sp, #0x16]
	strh r4, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strb r6, [sp, #0x24]
	str r8, [sp, #0x28]
	str r7, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0211C6F0 ; =0x0209F5C0
	str r1, [sp, #0x10]
	mov r2, r1
	mov r3, r6
	bl  FUN_ov16_020f5c34
	ldr r2, [r10, #0x480]
	cmp r2, #0
	beq _0211C380
	ldr r1, [r2, #0xc]
	ldr r0, _0211C6F0 ; =0x0209F5C0
	add r1, r2, r1
	mov r2, #0
	strh r2, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	mov r2, #0x38
	strh r2, [sp, #0x20]
	mov r2, #0x10
	str r1, [sp, #0x28]
	strh r5, [sp, #0x16]
	strh r11, [sp, #0x1a]
	strh r6, [sp, #0x14]
	strh r4, [sp, #0x18]
	strh r2, [sp, #0x22]
	strb r6, [sp, #0x24]
	str r7, [sp]
	add r1, sp, #0x14
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r5, r1
	mov r2, r1
	mov r3, r4
	str r5, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211C6F0 ; =0x0209F5C0
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_020f6084
_0211C380:
	ldr r1, [r10, #0x34]
	ldr r0, [r10, #0x3c]
	add r1, r1, #6
	cmp r1, r0
	bge _0211C49C
	mov r0, #0
	mov r7, #3
	mov r6, #0x15
	mov r5, #7
	mov r11, #2
	mov r4, #0x38
	mov r1, #0
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #0x10
	strh r0, [sp, #0x22]
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r5, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r4, [sp, #0x20]
	strb r7, [sp, #0x24]
	str r9, [sp, #0x28]
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0211C6F0 ; =0x0209F5C0
	str r1, [sp, #0x10]
	mov r2, r1
	mov r3, #4
	bl  FUN_ov16_020f5c34
	ldr r2, [r10, #0x480]
	cmp r2, #0
	beq _0211C49C
	ldr r1, [r2, #0xc]
	ldr r0, _0211C6F0 ; =0x0209F5C0
	add r1, r2, r1
	add r2, r1, #0x1c
	mov r1, #0
	strh r5, [sp, #0x18]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	mov r1, #0x10
	strh r1, [sp, #0x22]
	mov r5, #8
	strh r6, [sp, #0x16]
	strh r7, [sp, #0x14]
	strh r11, [sp, #0x1a]
	strh r4, [sp, #0x20]
	strb r7, [sp, #0x24]
	str r2, [sp, #0x28]
	mov r1, #1
	str r1, [sp]
	add r1, sp, #0x14
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r4, r1
	mov r2, r1
	mov r3, r5
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211C6F0 ; =0x0209F5C0
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
_0211C49C:
	ldr r0, [r10, #0x40]
	cmp r0, #0
	addle sp, sp, #0x2c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x38]
	cmp r0, #0
	ble _0211C5C0
	mov r0, #0
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #0x10
	mov r7, #0x16
	mov r6, #0xd
	mov r5, #7
	mov r11, #2
	mov r4, #0x38
	strh r0, [sp, #0x22]
	mov r0, #3
	strb r0, [sp, #0x24]
	str r8, [sp, #0x28]
	mov r1, #0
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r5, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r4, [sp, #0x20]
	mov r8, #1
	str r8, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0211C6F0 ; =0x0209F5C0
	str r1, [sp, #0x10]
	mov r2, r1
	mov r3, #5
	bl  FUN_ov16_020f5c34
	ldr r2, [r10, #0x480]
	cmp r2, #0
	beq _0211C5C0
	ldr r1, [r2, #0xc]
	ldr r0, _0211C6F0 ; =0x0209F5C0
	add r1, r2, r1
	mov r2, #0
	strh r2, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	mov r2, #0x10
	strh r2, [sp, #0x22]
	mov r2, #3
	strh r5, [sp, #0x18]
	str r1, [sp, #0x28]
	mov r5, #9
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r11, [sp, #0x1a]
	strh r4, [sp, #0x20]
	strb r2, [sp, #0x24]
	str r8, [sp]
	add r1, sp, #0x14
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r4, r1
	mov r2, r1
	mov r3, r5
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211C6F0 ; =0x0209F5C0
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
_0211C5C0:
	ldr r1, [r10, #0x38]
	ldr r0, [r10, #0x40]
	add r1, r1, #6
	cmp r1, r0
	addge sp, sp, #0x2c
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0
	mov r8, #0x16
	mov r7, #0x15
	mov r6, #7
	mov r11, #2
	mov r5, #0x38
	mov r4, #0x10
	str r9, [sp, #0x28]
	mov r1, #0
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #3
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r5, [sp, #0x20]
	strh r4, [sp, #0x22]
	mov r9, #1
	str r9, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, r1
	ldr r0, _0211C6F0 ; =0x0209F5C0
	str r2, [sp, #0x10]
	mov r3, #6
	bl  FUN_ov16_020f5c34
	ldr r1, [r10, #0x480]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	mov r10, #0xa
	add r0, r1, r0
	add r1, r0, #0x1c
	mov r0, #0
	str r1, [sp, #0x28]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #3
	strb r0, [sp, #0x24]
	mov r1, #0
	strh r4, [sp, #0x22]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r5, [sp, #0x20]
	str r9, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r4, r1
	ldr r0, _0211C6F0 ; =0x0209F5C0
	mov r2, r1
	mov r3, r10
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211C6F0 ; =0x0209F5C0
	mov r1, r4
	mov r2, r10
	bl  FUN_ov16_020f6084
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C6F0: .word 0x0209F5C0
	arm_func_end FUN_ov83_0211c21c

	arm_func_start FUN_ov83_0211c6f4
FUN_ov83_0211c6f4: ; 0x0211C6F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r6, #0xe
	cmp r1, #0
	mov r10, r0
	mov r4, #0xb
	movne r6, #0xd
	movne r4, r6
	mov r2, #0xc
	mla r2, r4, r2, r10
	mov r3, #4
	mov r0, #0x18
	mov r1, #9
	ldr r5, [r2, #0x444]
	movne r3, #2
	movne r0, #0x1c
	movne r1, #0xa
	cmp r5, #0
	beq _0211C7B0
	mov r4, #0x13
	mov r2, r3, lsl #0x18
	mov r3, r6, lsl #0x18
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	mov r4, #0
	mov r2, r2, asr #0x18
	str r2, [sp, #8]
	mov r2, r3, asr #0x18
	str r2, [sp, #0xc]
	and r0, r0, #0xff
	str r0, [sp, #0x10]
	and r0, r1, #0xff
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r5, #0xc]
	ldr r0, _0211C970 ; =0x0209F5C0
	add r6, r5, r1
	mov r1, r4
	mov r3, r4
	mov r2, #1
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r5
	mov r1, r4
	mov r2, #7
	bl  FUN_ov16_020f1138
_0211C7B0:
	ldr r9, [r10, #0x4d4]
	cmp r9, #0
	beq _0211C90C
	ldr r3, [r9, #0xc]
	mov r0, #0x14
	str r0, [sp]
	mov r8, #2
	str r8, [sp, #4]
	mov r4, #7
	str r4, [sp, #8]
	mov r7, #0x13
	str r7, [sp, #0xc]
	mov r6, #6
	str r6, [sp, #0x10]
	mov r5, #3
	mov r1, #0
	add r9, r9, r3
	str r5, [sp, #0x14]
	mov r3, r1
	str r3, [sp, #0x18]
	ldr r0, _0211C970 ; =0x0209F5C0
	mov r2, #1
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r9, #0x24
	strh r4, [sp, #0x20]
	str r0, [sp, #0x34]
	mov r0, #0
	mov r4, #0x30
	mov r11, #0x18
	strh r7, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r5, [sp, #0x26]
	strh r0, [sp, #0x28]
	strh r0, [sp, #0x2a]
	strb r0, [sp, #0x30]
	strh r4, [sp, #0x2c]
	strh r11, [sp, #0x2e]
	str r8, [sp]
	add r1, sp, #0x20
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211C970 ; =0x0209F5C0
	mov r2, #1
	mov r3, #0x15
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, #0x16
	stmia sp, {r0, r8}
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, #0
	str r5, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r9, #0x48
	str r0, [sp, #0x1c]
	ldr r0, _0211C970 ; =0x0209F5C0
	mov r2, #1
	mov r3, r1
	bl  FUN_ov16_020f5da0
	mov r1, #0
	add r0, r9, #0x6c
	str r0, [sp, #0x34]
	strh r6, [sp, #0x24]
	strh r5, [sp, #0x26]
	strh r4, [sp, #0x2c]
	strh r11, [sp, #0x2e]
	strh r7, [sp, #0x20]
	strh r7, [sp, #0x22]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r8, [sp]
	add r1, sp, #0x20
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211C970 ; =0x0209F5C0
	mov r2, #1
	mov r3, #0x17
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211C90C:
	ldr r4, _0211C974 ; =0x0209A070
	mov r5, #0
	mov r0, r4
	mov r1, r5
	str r5, [sp]
	mov r2, #0x15
	mov r3, #0x14
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x55]
	mov r0, r4
	mov r1, r5
	str r5, [sp]
	mov r2, #0x17
	mov r3, #0x16
	bl  FUN_ov16_020f6c8c
	ldr r1, [r10, #0x28]
	strb r0, [r10, #0x56]
	add r0, r1, #9
	add r0, r10, r0
	ldrb r1, [r0, #0x4c]
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C970: .word 0x0209F5C0
_0211C974: .word 0x0209A070
	arm_func_end FUN_ov83_0211c6f4

	arm_func_start FUN_ov83_0211c978
FUN_ov83_0211c978: ; 0x0211C978
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	ldr r8, _0211CC28 ; =0x0209F5C0
	mov r7, #0
	mov r6, #0xf
	mov r4, r0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r7
	bl  FUN_ov16_020f5eec
	mov r5, #0x10
	mov r0, r8
	mov r1, r7
	mov r2, r5
	mov r3, r7
	bl  FUN_ov16_020f5eec
	ldr r0, [r4, #8]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _0211CC20
_0211C9CC: ; jump table
	b _0211CC20 ; case 0
	b _0211CC20 ; case 1
	b _0211CC20 ; case 2
	b _0211CC20 ; case 3
	b _0211C9F8 ; case 4
	b _0211C9F8 ; case 5
	b _0211CC20 ; case 6
	b _0211CA88 ; case 7
	b _0211CC20 ; case 8
	b _0211CB50 ; case 9
	b _0211CB50 ; case 10
_0211C9F8:
	ldr r1, [r4, #0x4b0]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r3, #0x1d
	add r4, r1, r0
	mov r2, #3
	mov r1, #2
	mov r0, #6
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strb r0, [sp, #0x24]
	strh r7, [sp, #0x16]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strh r7, [sp, #0x20]
	strh r7, [sp, #0x22]
	str r4, [sp, #0x28]
	add r0, sp, #0x14
	str r7, [sp]
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r5
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_020f63b0
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211CA88:
	add r1, r4, #8
	mov r0, r4
	add r1, r1, #0x400
	bl FUN_ov83_0211b12c
	add r1, r4, #0x1c
	mov r0, r4
	add r1, r1, #0x400
	bl FUN_ov83_0211b12c
	ldr r1, [r4, #0x4bc]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r2, #5
	add r0, r1, r0
	add r3, r0, #0x108
	mov r1, #0x16
	mov r0, #3
	mov r4, #6
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x18]
	strh r0, [sp, #0x1a]
	str r3, [sp, #0x28]
	strh r6, [sp, #0x16]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strh r7, [sp, #0x20]
	strh r7, [sp, #0x22]
	strb r4, [sp, #0x24]
	add r0, sp, #0x14
	str r7, [sp]
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #0x1e
	bl  FUN_ov16_020f637c
	mov r0, r7
	mov r1, r4
	mov r2, #1
	bl  FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211CB50:
	mov r0, r4
	bl FUN_ov83_0211bde0
	ldr r0, [r4, #8]
	cmp r0, #9
	ldreq r5, _0211CC2C ; =0x0211D820
	beq _0211CB90
	mov r5, #1
	bl  FUN_ov16_020f067c
	cmp r0, #0
	ldrne r0, _0211CC30 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	movne r5, r7
	cmp r5, #0
	ldrne r5, _0211CC34 ; =0x0211D848
	ldreq r5, _0211CC38 ; =0x0211D874
_0211CB90:
	mov r6, #1
	mov r7, r6
	bl  FUN_ov16_020f067c
	cmp r0, #0
	ldrne r0, _0211CC30 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	movne r7, #0
	cmp r7, #0
	bne _0211CBC4
	ldr r0, [r4, #8]
	cmp r0, #9
	movne r6, #0
_0211CBC4:
	mov r0, #0xc
	mul r3, r6, r0
	mov r6, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	add r3, r3, #6
	bl FUN_ov83_0211be60
	mov r5, r6
	bl  FUN_ov16_020f067c
	cmp r0, #0
	ldrne r0, _0211CC30 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	movne r5, #1
	cmp r5, #0
	beq _0211CC14
	ldr r0, [r4, #8]
	cmp r0, #0xa
	moveq r6, #1
_0211CC14:
	mov r0, r4
	mov r1, r6
	bl FUN_ov83_0211c6f4
_0211CC20:
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211CC28: .word 0x0209F5C0
_0211CC2C: .word 0x0211D820
_0211CC30: .word 0x0209AEC0
_0211CC34: .word 0x0211D848
_0211CC38: .word 0x0211D874
	arm_func_end FUN_ov83_0211c978

	arm_func_start FUN_ov83_0211cc3c
FUN_ov83_0211cc3c: ; 0x0211CC3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x68
	mov r5, #0
	mov r10, r0
	ldr r0, _0211D054 ; =0x0209F5C0
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_020f5ff4
	ldr r0, _0211D058 ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	ldr r4, _0211D05C ; =0x0209BA20
	mov r1, r5
	mov r0, r4
	bl FUN_020724dc
	str r0, [sp, #0x20]
	mov r0, r4
	mov r1, #1
	bl FUN_020724dc
	ldr r2, [sp, #0x20]
	ldr r1, [r0]
	ldr r2, [r2]
	str r0, [sp, #0x24]
	adds r1, r2, r1
	streq r5, [sp, #0x28]
	streq r5, [sp, #0x2c]
	beq _0211CCC0
	mov r0, #0x64
	mul r0, r2, r0
	add r0, r0, r1, lsr #1
	bl FUN_0201fbc8
	rsb r1, r0, #0x64
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
_0211CCC0:
	mov r6, #6
	mov r7, #0
	add r4, sp, #0x48
	add r11, sp, #0x28
	add r5, sp, #0x20
_0211CCD4:
	ldr r8, [r5, r7, lsl #2]
	mov r9, r6
	ldrb r2, [r8, #0xb]
	ldr r1, _0211D060 ; =0x0211D8CC
	mov r0, r4
	cmp r2, #0x63
	movgt r2, #0x63
	cmp r2, #0xa
	subge r9, r6, #1
	bl FUN_02023c40
	mov r1, r9
	mov r0, r10
	mov r2, #4
	mov r3, r4
	bl FUN_ov83_0211bf04
	ldrh r1, [r8, #4]
	ldrh r0, [r8, #6]
	mov r8, r6
	add r2, r1, r0
	cmp r2, #0x63
	movgt r2, #0x63
	cmp r2, #0xa
	ldr r1, _0211D064 ; =0x0211D8D0
	subge r8, r6, #1
	mov r0, r4
	bl FUN_02023c40
	mov r1, r8
	mov r0, r10
	mov r2, #7
	mov r3, r4
	bl FUN_ov83_0211bf04
	ldr r2, [r11, r7, lsl #2]
	cmp r2, #0xa
	movlt r8, r6
	blt _0211CD6C
	sub r8, r6, #1
	cmp r2, #0x64
	subge r8, r6, #3
_0211CD6C:
	ldr r1, _0211D068 ; =0x0211D8D4
	mov r0, r4
	bl FUN_02023c40
	mov r1, r8
	mov r0, r10
	mov r2, #0xa
	mov r3, r4
	bl FUN_ov83_0211bf04
	add r7, r7, #1
	add r6, r6, #0x12
	cmp r7, #2
	blt _0211CCD4
	ldr r1, [r10, #0x48c]
	mov r8, #1
	cmp r1, #0
	mov r9, #0
	beq _0211CE08
	mov r4, #0xb
	stmia sp, {r4, r9}
	str r9, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, [r1, #0xc]
	mov r3, r9
	add r5, r1, r0
	ldr r0, _0211D054 ; =0x0209F5C0
	mov r1, r9
	mov r2, r8
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r0, _0211D054 ; =0x0209F5C0
	mov r1, r9
	mov r2, r4
	bl  FUN_ov16_020f6084
_0211CE08:
	ldr r2, [r10, #0x498]
	cmp r2, #0
	beq _0211CE70
	mov r4, #0xc
	stmia sp, {r4, r9}
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	ldr r0, _0211D054 ; =0x0209F5C0
	add r5, r2, r1
	mov r1, r9
	mov r3, r9
	mov r2, #1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r0, _0211D054 ; =0x0209F5C0
	mov r1, r9
	mov r2, r4
	bl  FUN_ov16_020f6084
_0211CE70:
	ldr r4, [r10, #0x408]
	add r0, r10, #8
	add r5, r0, #0x400
	cmp r4, #0
	ldrne r0, [r5, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211CEDC
	mov r1, #0
	mov r0, #0xd
	stmia sp, {r0, r1, r8}
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldrh r3, [r5, #0xc]
	ldr r0, _0211D054 ; =0x0209F5C0
	mov r2, r1
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r5, [r5, #0xe]
	mov r3, r1
	and r5, r5, #0xff
	str r5, [sp, #0x14]
	str r1, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211CEDC:
	ldr r4, [r10, #0x41c]
	add r0, r10, #0x1c
	add r3, r0, #0x400
	cmp r4, #0
	ldrne r0, [r3, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211CF50
	mov r1, #0
	mov r0, #0xe
	stmia sp, {r0, r1}
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldrh r5, [r3, #0xc]
	ldr r0, _0211D054 ; =0x0209F5C0
	mov r2, r1
	and r5, r5, #0xff
	str r5, [sp, #0x10]
	ldrh r5, [r3, #0xe]
	mov r3, r1
	and r5, r5, #0xff
	str r5, [sp, #0x14]
	str r1, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211CF50:
	mov r7, #0xd
	mov r6, #0x17
	mov r5, #0x68
	mov r4, #0x50
	mov r11, #6
	strh r9, [sp, #0x30]
	strh r7, [sp, #0x32]
	strh r7, [sp, #0x34]
	strh r6, [sp, #0x36]
	strh r9, [sp, #0x38]
	strh r9, [sp, #0x3a]
	strh r5, [sp, #0x3c]
	strh r4, [sp, #0x3e]
	strb r11, [sp, #0x40]
	str r9, [sp, #0x44]
	str r9, [sp]
	add r0, sp, #0x30
	stmib sp, {r0, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211D054 ; =0x0209F5C0
	mov r1, r9
	mov r2, r8
	mov r3, #0x11
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, #0x13
	strh r0, [sp, #0x30]
	mov r0, #0x1f
	strh r6, [sp, #0x36]
	strh r0, [sp, #0x34]
	mov r6, #0x12
	strh r7, [sp, #0x32]
	strh r5, [sp, #0x3c]
	strh r9, [sp, #0x38]
	strh r9, [sp, #0x3a]
	strh r4, [sp, #0x3e]
	strb r11, [sp, #0x40]
	str r9, [sp, #0x44]
	str r9, [sp]
	add r0, sp, #0x30
	stmib sp, {r0, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211D054 ; =0x0209F5C0
	mov r1, r9
	mov r2, r8
	mov r3, r6
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r1, #0x11
	ldr r4, _0211D058 ; =0x0209A070
	str r9, [sp]
	mov r0, r4
	mov r2, r1
	mov r3, r1
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x53]
	mov r0, r4
	mov r1, r6
	mov r2, r6
	mov r3, r6
	str r9, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x54]
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D054: .word 0x0209F5C0
_0211D058: .word 0x0209A070
_0211D05C: .word 0x0209BA20
_0211D060: .word 0x0211D8CC
_0211D064: .word 0x0211D8D0
_0211D068: .word 0x0211D8D4
	arm_func_end FUN_ov83_0211cc3c

	arm_func_start FUN_ov83_0211d06c
FUN_ov83_0211d06c: ; 0x0211D06C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	cmpne r1, #8
	cmpne r1, #9
	cmpne r1, #0xa
	beq _0211D0B0
	add r1, r4, #8
	add r1, r1, #0x400
	mov r2, #0
	bl FUN_ov83_0211b080
	add r1, r4, #0x1c
	mov r0, r4
	add r1, r1, #0x400
	mov r2, #1
	bl FUN_ov83_0211b080
_0211D0B0:
	mov r0, r4
	bl FUN_ov83_0211c21c
	mov r0, r4
	bl FUN_ov83_0211d0e0
	ldr r4, _0211D0DC ; =0x0209F5C0
	mov r0, r4
	bl  FUN_ov16_020f6274
	mov r0, r4
	mov r1, #0
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_0211D0DC: .word 0x0209F5C0
	arm_func_end FUN_ov83_0211d06c

	arm_func_start FUN_ov83_0211d0e0
FUN_ov83_0211d0e0: ; 0x0211D0E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211D1F4 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x24]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #8]
	cmp r0, #6
	cmpne r0, #9
	beq _0211D120
	cmp r0, #0xa
	ldmnefd sp!, {r4, pc}
_0211D120:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bgt _0211D134
	beq _0211D154
	b _0211D1E8
_0211D134:
	sub r0, r0, #0x14
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211D1E8
_0211D144: ; jump table
	b _0211D188 ; case 0
	b _0211D188 ; case 1
	b _0211D1BC ; case 2
	b _0211D1BC ; case 3
_0211D154:
	ldr r0, _0211D1F8 ; =0x020A0640
	ldrb r1, [r0, #0x1a]
	cmp r1, #0
	beq _0211D184
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	mov r0, r4
	bne _0211D17C
	mov r1, #7
	b _0211D1E4
_0211D17C:
	mov r1, #9
	b _0211D1E4
_0211D184:
	b _0211D194
_0211D188:
	ldr r0, [r4, #8]
	cmp r0, #9
	bne _0211D1A0
_0211D194:
	mov r0, r4
	mov r1, #8
	b _0211D1E4
_0211D1A0:
	cmp r0, #0xa
	bne _0211D1E8
	mov r2, #1
	mov r0, r4
	mov r1, #8
	strb r2, [r4, #0x30]
	b _0211D1E4
_0211D1BC:
	ldr r0, [r4, #8]
	cmp r0, #9
	bne _0211D1D4
	mov r0, r4
	mov r1, #0xa
	b _0211D1E4
_0211D1D4:
	cmp r0, #0xa
	bne _0211D1E8
	mov r0, r4
	mov r1, #3
_0211D1E4:
	bl FUN_ov83_0211acc4
_0211D1E8:
	mov r0, #0
	str r0, [r4, #0x24]
	ldmfd sp!, {r4, pc}
_0211D1F4: .word 0x0209F5C0
_0211D1F8: .word 0x020A0640
	arm_func_end FUN_ov83_0211d0e0

	arm_func_start FUN_ov83_0211d1fc
FUN_ov83_0211d1fc: ; 0x0211D1FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, #0
	ldr r0, _0211D330 ; =0x0209F5C0
	mov r1, r5
	str r5, [r6, #8]
	strb r5, [r6, #0xe]
	str r5, [r6, #0x18]
	str r5, [r6, #0x1c]
	str r5, [r6, #0x20]
	str r5, [r6, #0x24]
	strb r5, [r6, #0x30]
	bl  FUN_ov16_020f5a58
	mov r4, #0xb
	ldr r0, _0211D334 ; =0x0209A070
	mov r1, r4
	bl  FUN_ov16_020f6c20
	add r0, r6, #0x44
	mov r1, r5
	add r0, r0, #0x400
	mov r2, #0xa8
	bl MemWrite
	mov r7, #8
	add r0, r6, #0x44
	mov r1, r5
	mov r2, r7
	bl MemWrite
	add r0, r6, #8
	add r0, r0, #0x400
	mov r1, #3
	bl  FUN_ov16_020f2f7c
	bl  FUN_ov1_020db274
	cmp r0, #0
	beq _0211D318
	add r0, r6, #8
	mov r7, #6
	mov r1, r4
	mov r2, r7
	add r0, r0, #0x400
	bl  FUN_ov16_020f2fa8
	add r0, r6, #0x1c
	mov r1, r4
	mov r2, r7
	add r0, r0, #0x400
	bl  FUN_ov16_020f2fa8
	mov r2, r7
	add r0, r6, #0x430
	mov r1, #0x18
	bl  FUN_ov16_020f2fa8
	mov r0, r6
	bl FUN_ov83_0211af60
	mov r0, r6
	bl FUN_ov83_0211a5a4
	ldr r0, _0211D338 ; =0x020A0640
	ldrb r1, [r0, #0x1a]
	cmp r1, #0
	ldrneb r0, [r0, #0x8c]
	cmpne r0, #0
	beq _0211D324
	ldr r7, _0211D33C ; =0x0209AC44
	mov r4, #0x7d0
	mov r0, r7
	mov r1, r4
	bl FUN_0202c470
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_0202d774
	ldr r0, _0211D340 ; =0x020E9483
	strb r5, [r0]
	b _0211D324
_0211D318:
	mov r0, r6
	mov r1, r7
	bl FUN_ov83_0211acc4
_0211D324:
	mov r0, r6
	bl FUN_ov83_0211a198
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D330: .word 0x0209F5C0
_0211D334: .word 0x0209A070
_0211D338: .word 0x020A0640
_0211D33C: .word 0x0209AC44
_0211D340: .word 0x020E9483
	arm_func_end FUN_ov83_0211d1fc

	arm_func_start FUN_ov83_0211d344
FUN_ov83_0211d344: ; 0x0211D344
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211D35C: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0211D388 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _0211D3B8 ; case 3
	b _0211D400 ; case 4
	b _0211D400 ; case 5
	b _0211D400 ; case 6
	b _0211D400 ; case 7
	b _0211D400 ; case 8
	b _0211D40C ; case 9
	b _0211D40C ; case 10
_0211D388:
	add r0, r4, #0x44
	add r0, r0, #0x400
	mov r1, #0xe
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov83_0211a5d0
	mov r0, r4
	mov r1, #2
	bl FUN_ov83_0211acc4
	ldmfd sp!, {r4, pc}
_0211D3B8:
	bl FUN_ov83_0211cc3c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldr r0, _0211D414 ; =0x020A0640
	ldrb r1, [r0, #0x1a]
	cmp r1, #0
	beq _0211D3F4
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	bne _0211D3F4
	mov r0, r4
	mov r1, #4
	b _0211D3FC
_0211D3F4:
	mov r0, r4
	mov r1, #6
_0211D3FC:
	bl FUN_ov83_0211acc4
_0211D400:
	mov r0, r4
	bl FUN_ov83_0211d06c
	ldmfd sp!, {r4, pc}
_0211D40C:
	bl FUN_ov83_0211d06c
	ldmfd sp!, {r4, pc}
_0211D414: .word 0x020A0640
	arm_func_end FUN_ov83_0211d344

	arm_func_start FUN_ov83_0211d418
FUN_ov83_0211d418: ; 0x0211D418
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211D430: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211D45C ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _0211D470 ; case 4
	b _0211D470 ; case 5
	b _0211D470 ; case 6
	b _0211D470 ; case 7
	b _0211D470 ; case 8
	b _0211D470 ; case 9
	b _0211D470 ; case 10
_0211D45C:
	bl FUN_ov83_0211ba60
	mov r0, r4
	mov r1, #3
	bl FUN_ov83_0211acc4
	ldmfd sp!, {r4, pc}
_0211D470:
	bl FUN_ov83_0211bd6c
	ldr r0, _0211D484 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211D484: .word 0x0209F5C0
	arm_func_end FUN_ov83_0211d418

	arm_func_start FUN_ov83_0211d488
FUN_ov83_0211d488: ; 0x0211D488
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	add r0, r5, #0x44
	add r0, r0, #0x400
	mov r1, #0xe
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov83_0211a5f0
	add r0, r5, #8
	add r0, r0, #0x400
	mov r1, #3
	bl  FUN_ov16_020f2fe4
	ldr r1, [r5, #0x44]
	cmp r1, #0
	beq _0211D4D8
	ldr r0, _0211D590 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r5, #0x44]
_0211D4D8:
	ldr r1, [r5, #0x48]
	cmp r1, #0
	beq _0211D4F4
	ldr r0, _0211D590 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r5, #0x48]
_0211D4F4:
	mov r4, #0
	ldr r0, _0211D594 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5af0
	ldr r0, _0211D598 ; =0x0209A070
	bl  FUN_ov16_020f6c58
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	mov r0, r5
	bl  FUN_ov1_020be6f8
	mov r0, r5
	bl  FUN_ov1_020be73c
	ldr r0, _0211D59C ; =0x020A0640
	ldrb r1, [r0, #0x8c]
	cmp r1, #0
	ldrneb r1, [r0, #0x8d]
	cmpne r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r2, [r0, #0x98]
	ldrb r1, [r0, #0x99]
	add r3, sp, #0
	str r4, [r3]
	str r4, [r3, #4]
	sub r0, r2, r1
	str r2, [sp]
	str r1, [sp, #4]
	cmp r0, #5
	blt _0211D57C
	cmp r1, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, pc}
_0211D57C:
	ldr r0, _0211D59C ; =0x020A0640
	mov r1, #0
	strb r1, [r0, #0x8d]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0211D590: .word 0x0209A250
_0211D594: .word 0x0209F5C0
_0211D598: .word 0x0209A070
_0211D59C: .word 0x020A0640
	arm_func_end FUN_ov83_0211d488

	arm_func_start FUN_ov83_0211d5a0
FUN_ov83_0211d5a0: ; 0x0211D5A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov83_0211d5a0

	arm_func_start FUN_ov83_0211d5b4
FUN_ov83_0211d5b4: ; 0x0211D5B4
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov83_0211d5b4

	arm_func_start FUN_ov83_0211d5bc
FUN_ov83_0211d5bc: ; 0x0211D5BC
	bx lr
	arm_func_end FUN_ov83_0211d5bc
_0211D5C0:
	.byte 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x70, 0xD7, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0xD7, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0x10, 0xD7, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x20, 0xD7, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x30, 0xD7, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x40, 0xD7, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x50, 0xD7, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x60, 0xD7, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0xB8, 0xD6, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0xC4, 0xD6, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0xE0, 0xD6, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0xF0, 0xD6, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xD0, 0xD6, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov83_0211d638
FUN_ov83_0211d638: ; 0x0211D638
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211D680 ; =0x0211D6A0
	str r0, [r4, #4]
	ldr r0, _0211D684 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _0211D688 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D680: .word 0x0211D6A0
_0211D684: .word 0x00009CCD
_0211D688: .word 0x0000EA3C
	arm_func_end FUN_ov83_0211d638
	; 0x0211D68C


	.rodata
	.incbin "/incbin/overlay83_rodata.bin"

	.bss
	.space 0x0
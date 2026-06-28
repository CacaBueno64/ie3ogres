
	.include "/macros/function.inc"
	.include "/include/ov16_020ede60.inc"

	.text
	arm_func_start FUN_ov16_020ede60
FUN_ov16_020ede60: ; 0x020EDE60
	stmfd sp!, {r3, lr}
	cmp r1, #1
	blt _020EDE74
	cmp r1, #0x400
	blt _020EDE7C
_020EDE74:
	mov r0, #0xd
	ldmfd sp!, {r3, pc}
_020EDE7C:
	ldr r0, _020EDEB0 ; =0x020A0700
	ldrb r0, [r0, r1]
	cmp r0, #0x63
	movge r0, #0x1b
	ldmgefd sp!, {r3, pc}
	add r2, r0, r2
	cmp r2, #0x63
	movge r2, #0x63
	ldr r0, _020EDEB0 ; =0x020A0700
	and r2, r2, #0xff
	bl FUN_ov16_020eef64
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020EDEB0: .word unk_020A0700
	arm_func_end FUN_ov16_020ede60

	arm_func_start FUN_ov16_020edeb4
FUN_ov16_020edeb4: ; 0x020EDEB4
	ldr r0, _020EDEC0 ; =0x020A0700
	ldrb r0, [r0, r1]
	bx lr
_020EDEC0: .word unk_020A0700
	arm_func_end FUN_ov16_020edeb4

	arm_func_start FUN_ov16_020edec4
FUN_ov16_020edec4: ; 0x020EDEC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r10, r1
	str r0, [sp]
	bmi _020EDEDC
	cmp r10, #0x400
	blt _020EDEE4
_020EDEDC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020EDEE4:
	ldr r0, _020EDF74 ; =0x020A0700
	mov r7, #0
	mov r8, r7
	ldrb r11, [r0, r10]
	mov r4, r7
	ldr r5, _020EDF78 ; =gUnitMan
	b _020EDF40
_020EDF00:
	mov r0, r5
	mov r1, r8
	bl FUN_0206c6fc
	movs r6, r0
	beq _020EDF3C
	mov r9, r4
	b _020EDF34
_020EDF1C:
	mov r0, r6
	mov r1, r9
	bl FUN_0206cd90
	cmp r10, r0
	addeq r7, r7, #1
	add r9, r9, #1
_020EDF34:
	cmp r9, #4
	blt _020EDF1C
_020EDF3C:
	add r8, r8, #1
_020EDF40:
	cmp r8, #0x64
	blt _020EDF00
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [sp]
	bl FUN_0207249c
	cmp r0, #0
	beq _020EDF6C
	ldrh r0, [r0, #0x4a]
	cmp r0, r10
	addeq r7, r7, #1
_020EDF6C:
	sub r0, r11, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020EDF74: .word unk_020A0700
_020EDF78: .word gUnitMan
	arm_func_end FUN_ov16_020edec4

	arm_func_start FUN_ov16_020edf7c
FUN_ov16_020edf7c: ; 0x020EDF7C
	ldr r0, _020EDF88 ; =0x020A0640
	ldr r0, [r0, #0x4d4]
	bx lr
_020EDF88: .word unk_020A0640
	arm_func_end FUN_ov16_020edf7c

	arm_func_start FUN_ov16_020edf8c
FUN_ov16_020edf8c: ; 0x020EDF8C
	ldr r2, _020EDFA4 ; =0x020A0640
	ldr r0, _020EDFA8 ; =0x020A0B00
	ldr r2, [r2, #0x4d4]
	ldr r12, _020EDFAC ; =FUN_02074538
	add r1, r2, r1
	bx r12
_020EDFA4: .word unk_020A0640
_020EDFA8: .word unk_020A0B00
_020EDFAC: .word FUN_02074538
	arm_func_end FUN_ov16_020edf8c

	arm_func_start FUN_ov16_020edfb0
FUN_ov16_020edfb0: ; 0x020EDFB0
	ldr r0, _020EDFBC ; =0x020A0640
	ldrb r0, [r0, #0x566]
	bx lr
_020EDFBC: .word unk_020A0640
	arm_func_end FUN_ov16_020edfb0

	arm_func_start FUN_ov16_020edfc0
FUN_ov16_020edfc0: ; 0x020EDFC0
	ldr r0, _020EDFCC ; =0x020A0640
	ldr r0, [r0, #0x4d8]
	bx lr
_020EDFCC: .word unk_020A0640
	arm_func_end FUN_ov16_020edfc0

	arm_func_start FUN_ov16_020edfd0
FUN_ov16_020edfd0: ; 0x020EDFD0
	ldr r0, _020EDFDC ; =0x020A0B00
	ldr r12, _020EDFE0 ; =FUN_020744f0
	bx r12
_020EDFDC: .word unk_020A0B00
_020EDFE0: .word FUN_020744f0
	arm_func_end FUN_ov16_020edfd0

	arm_func_start FUN_ov16_020edfe4
FUN_ov16_020edfe4: ; 0x020EDFE4
	ldr r2, _020EDFFC ; =0x020A0640
	ldr r0, _020EE000 ; =0x020A0B00
	ldr r2, [r2, #0x4d8]
	ldr r12, _020EE004 ; =FUN_020744f0
	add r1, r2, r1
	bx r12
_020EDFFC: .word unk_020A0640
_020EE000: .word unk_020A0B00
_020EE004: .word FUN_020744f0
	arm_func_end FUN_ov16_020edfe4

	arm_func_start FUN_ov16_020ee008
FUN_ov16_020ee008: ; 0x020EE008
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	mov r0, r1
	bl FUN_0206dcd4
	add r1, r4, #1
	add r0, r0, r1, lsl #1
	ldrh r1, [r0, #0x10]
	mov r0, r5
	bl FUN_ov16_020ee034
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020ee008

	arm_func_start FUN_ov16_020ee034
FUN_ov16_020ee034: ; 0x020EE034
	stmfd sp!, {r3, lr}
	cmp r1, #0x400
	movhs r0, #0
	ldmhsfd sp!, {r3, pc}
	ldr r2, [r0, #0x7fc]
	mov r1, r1, lsl #1
	ldrh r3, [r2, r1]
	ldr r1, [r0, #0x7d8]
	mov r2, #0x2c
	mla r1, r3, r2, r1
	bl FUN_020748c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020ee034

	arm_func_start FUN_ov16_020ee064
FUN_ov16_020ee064: ; 0x020EE064
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_0206dcd4
	ldrh r1, [r0, #0x10]
	mov r0, r4
	bl FUN_ov16_020ee034
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020ee064

	arm_func_start FUN_ov16_020ee084
FUN_ov16_020ee084: ; 0x020EE084
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r8, r1
	mov r9, r0
	mov r7, r2
	mov r6, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	mov r4, r5
_020EE0A8:
	cmp r6, #0
	mov r0, r9
	mov r1, r4
	bne _020EE0C8
	bl FUN_ov16_020edec4
	cmp r0, #0
	beq _020EE0E4
	b _020EE0D4
_020EE0C8:
	bl FUN_ov16_020edeb4
	cmp r0, #0
	beq _020EE0E4
_020EE0D4:
	cmp r5, r7
	movlt r0, r5, lsl #1
	strlth r4, [r8, r0]
	add r5, r5, #1
_020EE0E4:
	add r4, r4, #1
	cmp r4, #0x400
	blt _020EE0A8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020ee084

	arm_func_start FUN_ov16_020ee0f8
FUN_ov16_020ee0f8: ; 0x020EE0F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r7, r2
	mov r9, r0
	mov r8, r1
	mov r6, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	mov r4, r5
_020EE11C:
	mov r0, r9
	mov r1, r4
	bl FUN_ov16_020ee034
	ldrb r0, [r0, #0x1d]
	cmp r0, r8
	bne _020EE158
	mov r0, r9
	mov r1, r4
	bl FUN_ov16_020edec4
	cmp r0, #0
	beq _020EE158
	cmp r5, r6
	movlt r0, r5, lsl #1
	strlth r4, [r7, r0]
	add r5, r5, #1
_020EE158:
	add r4, r4, #1
	cmp r4, #0x400
	blt _020EE11C
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020ee0f8

	arm_func_start FUN_ov16_020ee16c
FUN_ov16_020ee16c: ; 0x020EE16C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020ee034
	movs r4, r0
	moveq r0, #0xd
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020edec4
	cmp r0, r6
	movlt r0, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	ldreqh r0, [r4, #0x20]
	cmpeq r0, #0
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020EE1E0 ; =0x020A0700
	rsb r2, r6, #0
	ldrb r3, [r0, r7]
	mov r1, r7
	add r2, r2, r3
	and r2, r2, #0xff
	bl FUN_ov16_020eef64
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020EE1E0: .word unk_020A0700
	arm_func_end FUN_ov16_020ee16c

	arm_func_start FUN_ov16_020ee1e4
FUN_ov16_020ee1e4: ; 0x020EE1E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	movs r6, r1
	mov r7, r0
	mov r4, r2
	addeq sp, sp, #0x18
	moveq r0, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r3, #3
	mov r2, #0
	str r3, [sp]
	mov r3, r2
	str r2, [sp, #4]
	bl FUN_0204e79c
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_020ee034
	movs r5, r0
	addeq sp, sp, #0x18
	moveq r0, #0xd
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_020eef1c
	cmp r0, #0
	beq _020EE26C
	add r4, sp, #8
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020eee80
	cmp r0, #0
	bne _020EE26C
	mov r1, r4
	add r0, r6, #0x6c
	bl FUN_02050ce0
_020EE26C:
	mov r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020ee1e4

	arm_func_start FUN_ov16_020ee278
FUN_ov16_020ee278: ; 0x020EE278
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r6, r2
	mov r4, r1
	mov r1, r6
	mov r5, r0
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _020EE2A8
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x17
	beq _020EE2B4
_020EE2A8:
	add sp, sp, #8
	mov r0, #0xd
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020EE2B4:
	mov r10, #0
	mov r0, r5
	mov r1, r4
	mov r2, r10
	bl FUN_ov16_020ee364
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	strh r6, [r0, #0x4a]
	mov r8, #3
	mov r7, r10
	mov r6, #1
_020EE2F0:
	mov r0, r10
	bl FUN_ov16_020efa80
	movs r9, r0
	cmpne r9, #0
	beq _020EE34C
	bl FUN_0206d64c
	cmp r0, #0
	beq _020EE34C
	mov r0, r9
	bl FUN_0206d5f0
	cmp r4, r0
	bne _020EE34C
	mov r0, r9
	bl FUN_0206d6d8
	cmp r0, #0
	beq _020EE34C
	str r8, [sp]
	mov r0, r5
	mov r1, r9
	mov r2, r6
	mov r3, r7
	str r7, [sp, #4]
	bl FUN_0204e79c
_020EE34C:
	add r10, r10, #1
	cmp r10, #0x64
	blt _020EE2F0
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020ee278

	arm_func_start FUN_ov16_020ee364
FUN_ov16_020ee364: ; 0x020EE364
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	mov r6, r2
	mov r9, #0
	bl FUN_ov16_020ee468
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	beq _020EE3B0
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	strh r9, [r0, #0x4a]
_020EE3B0:
	cmp r6, #0
	beq _020EE424
	mov r10, #0
	mov r7, #3
	mov r6, #1
_020EE3C4:
	mov r0, r10
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _020EE418
	bl FUN_0206d64c
	cmp r0, #0
	beq _020EE418
	mov r0, r8
	bl FUN_0206d5f0
	cmp r4, r0
	bne _020EE418
	mov r0, r8
	bl FUN_0206d6d8
	cmp r0, #0
	beq _020EE418
	mov r0, r5
	mov r1, r8
	mov r2, r6
	mov r3, r9
	stmia sp, {r7, r9}
	bl FUN_0204e79c
_020EE418:
	add r10, r10, #1
	cmp r10, #0x64
	blt _020EE3C4
_020EE424:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020ee364

	arm_func_start FUN_ov16_020ee430
FUN_ov16_020ee430: ; 0x020EE430
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	bl FUN_ov16_020ee468
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020ee430

	arm_func_start FUN_ov16_020ee468
FUN_ov16_020ee468: ; 0x020EE468
	stmfd sp!, {r3, lr}
	bl FUN_0207249c
	ldrh r0, [r0, #0x4a]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020ee468

	arm_func_start FUN_ov16_020ee478
FUN_ov16_020ee478: ; 0x020EE478
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r4
	bl FUN_ov16_020ee498
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020ee478

	arm_func_start FUN_ov16_020ee498
FUN_ov16_020ee498: ; 0x020EE498
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020ee468
	mov r1, r0
	mov r0, r4
	bl FUN_ov16_020ee034
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020ee498

	arm_func_start FUN_ov16_020ee4b4
FUN_ov16_020ee4b4: ; 0x020EE4B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _020EE4F0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020edeb4
	add r0, r4, r0
	cmp r0, #0x63
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020EE4F0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020ee4b4

	arm_func_start FUN_ov16_020ee4f8
FUN_ov16_020ee4f8: ; 0x020EE4F8
	stmdb sp!, {r3}
	sub sp, sp, #4
	cmp r2, #0
	addeq r2, sp, #0
	cmp r1, #0
	moveq r0, #0xd
	streq r0, [r2]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3}
	bxeq lr
	ldrb r0, [r1, #0x1d]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020EE574
_020EE534: ; jump table
	b _020EE574 ; case 0
	b _020EE55C ; case 1
	b _020EE55C ; case 2
	b _020EE55C ; case 3
	b _020EE574 ; case 4
	b _020EE574 ; case 5
	b _020EE55C ; case 6
	b _020EE55C ; case 7
	b _020EE574 ; case 8
	b _020EE55C ; case 9
_020EE55C:
	mov r0, #0
	str r0, [r2]
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r3}
	bx lr
_020EE574:
	mov r0, #7
	str r0, [r2]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
	arm_func_end FUN_ov16_020ee4f8

	arm_func_start FUN_ov16_020ee58c
FUN_ov16_020ee58c: ; 0x020EE58C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov16_020edec4
	cmp r0, #0
	bne _020EE5BC
	cmp r4, #0
	movne r0, #0xc
	strne r0, [r4]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020EE5BC:
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020ee034
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_020ee4f8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020ee58c

	arm_func_start FUN_ov16_020ee5dc
FUN_ov16_020ee5dc: ; 0x020EE5DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r2
	mov r4, r3
	mov r5, r1
	mov r6, #0
	mov r1, r7
	mov r2, r4
	mov r8, r0
	str r6, [sp]
	bl FUN_ov16_020ee58c
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	addeq r4, sp, #0
	cmp r5, #0
	moveq r0, #0x1c
	streq r0, [r4]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020ee034
	ldrb r1, [r0, #0x1d]
	cmp r1, #0x1e
	addls pc, pc, r1, lsl #2
	b _020EE82C
_020EE654: ; jump table
	b _020EE82C ; case 0
	b _020EE6D0 ; case 1
	b _020EE6F8 ; case 2
	b _020EE720 ; case 3
	b _020EE82C ; case 4
	b _020EE82C ; case 5
	b _020EE770 ; case 6
	b _020EE770 ; case 7
	b _020EE82C ; case 8
	b _020EE82C ; case 9
	b _020EE82C ; case 10
	b _020EE784 ; case 11
	b _020EE798 ; case 12
	b _020EE82C ; case 13
	b _020EE82C ; case 14
	b _020EE7AC ; case 15
	b _020EE808 ; case 16
	b _020EE82C ; case 17
	b _020EE82C ; case 18
	b _020EE82C ; case 19
	b _020EE82C ; case 20
	b _020EE82C ; case 21
	b _020EE82C ; case 22
	b _020EE82C ; case 23
	b _020EE82C ; case 24
	b _020EE82C ; case 25
	b _020EE82C ; case 26
	b _020EE82C ; case 27
	b _020EE82C ; case 28
	b _020EE82C ; case 29
	b _020EE82C ; case 30
_020EE6D0:
	mov r0, r5
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r5
	bl FUN_0206ccec
	cmp r4, r0
	movlt r0, #1
	add sp, sp, #4
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE6F8:
	mov r0, r5
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc94
	cmp r4, r0
	movlt r0, #1
	add sp, sp, #4
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE720:
	mov r0, r5
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r5
	bl FUN_0206ccec
	cmp r4, r0
	blt _020EE758
	mov r0, r5
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc94
	cmp r4, r0
	bge _020EE764
_020EE758:
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE764:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE770:
	mov r0, #0x1f
	str r0, [r4]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE784:
	mov r0, #0x1f
	str r0, [r4]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE798:
	mov r0, #0x1f
	str r0, [r4]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE7AC:
	bl FUN_ov16_020eef40
	movs r7, r0
	moveq r0, #9
	streq r0, [r4]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r6, #0
_020EE7CC:
	mov r0, r5
	mov r1, r6
	bl FUN_0206cdf8
	cmp r7, r0
	moveq r0, #8
	streq r0, [r4]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r6, r6, #1
	cmp r6, #6
	blt _020EE7CC
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE808:
	mov r0, r5
	bl FUN_0206cdbc
	cmp r0, #0
	moveq r0, #0xf
	streq r0, [r4]
	moveq r0, #0
	add sp, sp, #4
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE82C:
	mov r0, #7
	str r0, [r4]
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020ee5dc

	arm_func_start FUN_ov16_020ee840
FUN_ov16_020ee840: ; 0x020EE840
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r3
	add r3, sp, #0
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_ov16_020ee5dc
	cmp r0, #0
	ldreq r0, [sp]
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r6
	bl FUN_ov16_020ee034
	mov r4, r0
	ldrb r1, [r4, #0x1d]
	cmp r1, #0x10
	addls pc, pc, r1, lsl #2
	b _020EEA4C
_020EE890: ; jump table
	b _020EEA4C ; case 0
	b _020EE8D4 ; case 1
	b _020EE900 ; case 2
	b _020EE92C ; case 3
	b _020EEA4C ; case 4
	b _020EEA4C ; case 5
	b _020EE97C ; case 6
	b _020EE988 ; case 7
	b _020EEA4C ; case 8
	b _020EEA4C ; case 9
	b _020EEA4C ; case 10
	b _020EEA4C ; case 11
	b _020EEA4C ; case 12
	b _020EEA4C ; case 13
	b _020EEA4C ; case 14
	b _020EE994 ; case 15
	b _020EE9C4 ; case 16
_020EE8D4:
	mov r0, r7
	bl FUN_0206ccdc
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020eef40
	add r0, r5, r0
	mov r1, r0, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	bl FUN_0206cc9c
	b _020EEA58
_020EE900:
	mov r0, r7
	bl FUN_0206cc84
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020eef40
	add r0, r5, r0
	mov r1, r0, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
_020EE924:
	bl FUN_0206cc44
	b _020EEA58
_020EE92C:
	mov r0, r7
	bl FUN_0206ccdc
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020eef40
	add r0, r5, r0
	mov r1, r0, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	bl FUN_0206cc9c
	mov r0, r7
	bl FUN_0206cc84
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020eef40
	add r0, r5, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	mov r0, r7
	b _020EE924
_020EE97C:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE988:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE994:
	bl FUN_ov16_020eef40
	mov r2, r0, lsl #0x10
	mov r0, r7
	add r1, r5, #4
	mov r2, r2, lsr #0x10
	mov r3, #1
	bl FUN_0206ceac
	cmp r0, #0
	bne _020EEA58
	add sp, sp, #4
	mov r0, #0x1f
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EE9C4:
	mov r0, r7
	add r1, r5, #4
	bl FUN_0206cdf8
	movs r6, r0
	addeq sp, sp, #4
	moveq r0, #0xf
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
_020EE9E4:
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020ee034
	cmp r0, #0
	ldrneb r1, [r0, #0x1d]
	cmpne r1, #0xf
	beq _020EEA0C
	bl FUN_ov16_020eef40
	cmp r6, r0
	beq _020EEA18
_020EEA0C:
	add r4, r4, #1
	cmp r4, #0x400
	blt _020EE9E4
_020EEA18:
	cmp r4, #0x400
	addeq sp, sp, #4
	moveq r0, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	add r1, r5, #4
	bl FUN_0206d0e8
	mov r0, r8
	mov r1, r4
	mov r2, #1
	bl FUN_ov16_020ede60
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EEA4C:
	add sp, sp, #4
	mov r0, #0x1f
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EEA58:
	mov r0, r7
	bl FUN_ov16_020f0810
	bl FUN_ov16_020f0a14
	cmp r0, #0
	beq _020EEA80
	mov r2, #1
	mov r0, r8
	mov r1, r6
	mov r3, r2
	bl FUN_ov16_020ee16c
_020EEA80:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020ee840

	arm_func_start FUN_ov16_020eea8c
FUN_ov16_020eea8c: ; 0x020EEA8C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	movs r4, r3
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bmi _020EEAB0
	cmp r4, #4
	blt _020EEABC
_020EEAB0:
	add sp, sp, #8
	mov r0, #0x1e
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EEABC:
	cmp r6, #0
	beq _020EEB0C
	mov r0, r6
	bl FUN_0206dcd4
	mov r2, r5, lsl #0x10
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_0206def8
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _020EEB18
	mov r2, #3
	mov r0, r7
	mov r1, r6
	str r2, [sp]
	mov r3, #0
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
	b _020EEB18
_020EEB0C:
	add sp, sp, #8
	mov r0, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EEB18:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020eea8c

	arm_func_start FUN_ov16_020eeb24
FUN_ov16_020eeb24: ; 0x020EEB24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r1
	mov r4, #0
	mov r7, r0
	mov r0, r8
	mov r1, r4
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	ldrb r2, [sp, #0x20]
	mov r1, r0
	mov r0, r7
	str r2, [sp]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020eea8c
	ldr r0, _020EEBA8 ; =gUnitMan
	ldr r1, _020EEBAC ; =0x00000FFF
	and r1, r8, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206c718
	mov r2, r6
	mov r3, r5
	mov r1, r0
	mov r0, r7
	ldrb r5, [sp, #0x20]
	str r5, [sp]
	bl FUN_ov16_020eea8c
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EEBA8: .word gUnitMan
_020EEBAC: .word 0x00000FFF
	arm_func_end FUN_ov16_020eeb24

	arm_func_start FUN_ov16_020eebb0
FUN_ov16_020eebb0: ; 0x020EEBB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	movs r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, r3
	bmi _020EEBD4
	cmp r5, #4
	blt _020EEBE0
_020EEBD4:
	add sp, sp, #8
	mov r0, #0x1e
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020EEBE0:
	mov r9, #0
	mov r0, r6
	mov r1, r9
	bl FUN_ov16_020efa9c
	movs r8, r0
	beq _020EEC30
	bl FUN_0206dcd4
	mov r1, r5
	mov r2, r9
	bl FUN_0206def8
	cmp r4, #0
	beq _020EEC30
	mov r0, #3
	str r0, [sp]
	mov r0, r7
	mov r1, r8
	mov r3, r9
	mov r2, #1
	str r9, [sp, #4]
	bl FUN_0204e79c
_020EEC30:
	ldr r1, _020EEC98 ; =0x00000FFF
	ldr r0, _020EEC9C ; =gUnitMan
	and r1, r6, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206c718
	movs r8, r0
	beq _020EEC8C
	bl FUN_0206dcd4
	mov r6, #0
	mov r1, r5
	mov r2, r6
	bl FUN_0206def8
	cmp r4, #0
	beq _020EEC8C
	mov r0, #3
	str r0, [sp]
	mov r0, r7
	mov r1, r8
	mov r3, r6
	mov r2, #1
	str r6, [sp, #4]
	bl FUN_0204e79c
_020EEC8C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020EEC98: .word 0x00000FFF
_020EEC9C: .word gUnitMan
	arm_func_end FUN_ov16_020eebb0

	arm_func_start FUN_ov16_020eeca0
FUN_ov16_020eeca0: ; 0x020EECA0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x7dc]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r3, _020EED10 ; =gAllocator
	ldr r1, _020EED14 ; =0x021183D8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020EECFC
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x3dc
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020EECFC:
	cmp r0, #0x1000
	movne r0, #0
	moveq r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020EED10: .word gAllocator
_020EED14: .word ov16_021183D8
	arm_func_end FUN_ov16_020eeca0

	arm_func_start FUN_ov16_020eed18
FUN_ov16_020eed18: ; 0x020EED18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #0x7dc]
	mov r7, r1
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r6, _020EEDB0 ; =gAllocator
	mov r5, #0x1000
	mov r0, r6
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	cmp r0, #0
	str r0, [r8, #0x7dc]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r0, [r7]
	mov r4, #0
	ldr r0, _020EEDB4 ; =0x021183F4
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r4, [sp]
	bl _ZN7Archive13RequestReadExEPKcP9SFileDatalmi
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0x7dc]
	mov r0, r6
	bl _ZN10CAllocator10deallocateEPv
	mov r0, r4
	str r4, [r8, #0x7dc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EEDB0: .word gAllocator
_020EEDB4: .word ov16_021183F4
	arm_func_end FUN_ov16_020eed18

	arm_func_start FUN_ov16_020eedb8
FUN_ov16_020eedb8: ; 0x020EEDB8
	mov r0, #1
	bx lr
	arm_func_end FUN_ov16_020eedb8

	arm_func_start FUN_ov16_020eedc0
FUN_ov16_020eedc0: ; 0x020EEDC0
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	str r1, [sp, #0x10]
	ldr r0, [r0, #0x7dc]
	cmp r0, #0
	beq _020EEDF0
	add r0, r0, r2, lsl #4
	mov r2, #0x10
	bl MIi_CpuCopy32
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {pc}
_020EEDF0:
	ldr r3, _020EEE44 ; =gAllocator
	ldr r1, _020EEE48 ; =0x02118410
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020EEE30
	mov r2, r2, lsl #4
	str r2, [sp]
	mov r2, #0x10
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020EEE30:
	cmp r0, #0
	moveq r0, #0x16
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}
_020EEE44: .word gAllocator
_020EEE48: .word ov16_02118410
	arm_func_end FUN_ov16_020eedc0

	arm_func_start FUN_ov16_020eee4c
FUN_ov16_020eee4c: ; 0x020EEE4C
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r4, #4
	movhs r0, #0
	ldmhsfd sp!, {r4, pc}
	mov r0, r1
	bl FUN_0206dcd4
	add r0, r0, r4, lsl #1
	ldrh r0, [r0, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020eee4c

	arm_func_start FUN_ov16_020eee80
FUN_ov16_020eee80: ; 0x020EEE80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #0
	cmpne r4, #0
	moveq r0, #0x14
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r1
	bl FUN_ov16_020eef1c
	movs r2, r0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020eedc0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020eee80

	arm_func_start FUN_ov16_020eeec0
FUN_ov16_020eeec0: ; 0x020EEEC0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, r1
	mov r5, r2
	mov r4, r3
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r1, r0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020ee840
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020eeec0

	arm_func_start FUN_ov16_020eeef4
FUN_ov16_020eeef4: ; 0x020EEEF4
	ldrh r0, [r0, #0x1e]
	mov r0, r0, asr #0xe
	bx lr
	arm_func_end FUN_ov16_020eeef4

	arm_func_start FUN_ov16_020eef00
FUN_ov16_020eef00: ; 0x020EEF00
	ldrh r1, [r0, #0x1e]
	ldr r0, _020EEF18 ; =0x000003FF
	and r0, r1, r0
	tst r1, #0x400
	rsbne r0, r0, #0
	bx lr
_020EEF18: .word 0x000003FF
	arm_func_end FUN_ov16_020eef00

	arm_func_start FUN_ov16_020eef1c
FUN_ov16_020eef1c: ; 0x020EEF1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020eeef4
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020eef00
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020eef1c

	arm_func_start FUN_ov16_020eef40
FUN_ov16_020eef40: ; 0x020EEF40
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020eeef4
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020eef00
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020eef40

	arm_func_start FUN_ov16_020eef64
FUN_ov16_020eef64: ; 0x020EEF64
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0x400
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020EEF9C ; =gLogicThink
	mov r0, r4
	bl FUN_0207445c
	mov r0, r4
	strb r5, [r7, r6]
	bl FUN_02074440
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EEF9C: .word gLogicThink
	arm_func_end FUN_ov16_020eef64

	arm_func_start FUN_ov16_020eefa0
FUN_ov16_020eefa0: ; 0x020EEFA0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r0, #0
	mov r7, r0
	mov r2, #0xf
	mov r3, #0xe
	mov r12, #0xd
	mov lr, #0xc
	mov r4, #0xb
	mov r5, #0xa
_020EEFC4:
	ldrsb r6, [r1, r7]
	cmp r6, #0x30
	blt _020EEFE0
	cmp r6, #0x39
	suble r6, r6, #0x30
	andle r8, r6, #0xff
	ble _020EF03C
_020EEFE0:
	cmp r6, #0x61
	cmpne r6, #0x41
	moveq r8, r5
	beq _020EF03C
	cmp r6, #0x62
	cmpne r6, #0x42
	moveq r8, r4
	beq _020EF03C
	cmp r6, #0x63
	cmpne r6, #0x43
	moveq r8, lr
	beq _020EF03C
	cmp r6, #0x64
	cmpne r6, #0x44
	moveq r8, r12
	beq _020EF03C
	cmp r6, #0x65
	cmpne r6, #0x45
	moveq r8, r3
	beq _020EF03C
	cmp r6, #0x66
	cmpne r6, #0x46
	moveq r8, r2
_020EF03C:
	add r0, r8, r0, lsl #4
	add r7, r7, #1
	cmp r7, #2
	and r0, r0, #0xff
	blt _020EEFC4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020eefa0

	arm_func_start FUN_ov16_020ef054
FUN_ov16_020ef054: ; 0x020EF054
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, #0
	ldr r3, _020EF148 ; =0x020A11E8
	mov r0, #6
	b _020EF0A4
_020EF06C:
	mul r12, r4, r0
	ldrsh r2, [r3, r12]
	cmp r1, r2
	bne _020EF0A0
	ldr r0, _020EF14C ; =0x020A11EA
	ldr r4, _020EF150 ; =0x02119EC0
	add r0, r0, r12
	mov r1, r4
	mov r2, #4
	bl MI_CpuCopy8
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020EF0A0:
	add r4, r4, #1
_020EF0A4:
	cmp r4, #0x10
	blt _020EF06C
	mov r4, #0
	ldr r3, _020EF154 ; =0x020A1248
	mov r0, #6
	b _020EF0F4
_020EF0BC:
	mul r12, r4, r0
	ldrsh r2, [r3, r12]
	cmp r1, r2
	bne _020EF0F0
	ldr r0, _020EF158 ; =0x020A124A
	ldr r4, _020EF150 ; =0x02119EC0
	add r0, r0, r12
	mov r1, r4
	mov r2, #4
	bl MI_CpuCopy8
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020EF0F0:
	add r4, r4, #1
_020EF0F4:
	cmp r4, #8
	blt _020EF0BC
	ldr r2, _020EF15C ; =0x0211786C
	ldr r4, _020EF150 ; =0x02119EC0
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	ldrb r12, [r2, #2]
	strb r1, [sp]
	strb r0, [sp, #1]
	ldrb r3, [r2, #3]
	add r0, sp, #0
	mov r1, r4
	strb r12, [sp, #2]
	strb r3, [sp, #3]
	ldrb r3, [r2, #4]
	mov r2, #4
	strb r3, [sp, #4]
	bl MI_CpuCopy8
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020EF148: .word unk_020A11E8
_020EF14C: .word unk_020A11EA
_020EF150: .word ov16_02119EC0
_020EF154: .word unk_020A1248
_020EF158: .word unk_020A124A
_020EF15C: .word ov16_0211786C
	arm_func_end FUN_ov16_020ef054

	arm_func_start FUN_ov16_020ef160
FUN_ov16_020ef160: ; 0x020EF160
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	mov r8, r0
	ldr r1, [r8, #0x7d8]
	mov r4, #0
	cmp r1, #0
	beq _020EF188
	ldr r0, _020EF2B0 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	str r4, [r8, #0x7d8]
_020EF188:
	ldr r1, [r8, #0x7fc]
	cmp r1, #0
	beq _020EF1A0
	ldr r0, _020EF2B0 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	str r4, [r8, #0x7fc]
_020EF1A0:
	mov r0, r8
	bl FUN_02071458
	mov r0, r8
	bl FUN_ov16_020ef2d0
	mov r0, r8
	bl FUN_ov16_020ef414
	mov r5, r0
	cmp r5, #0
	mov r6, #0
	ble _020EF2A0
_020EF1C8:
	ands r1, r6, #0xff
	beq _020EF294
	mov r0, r8
	bl FUN_ov16_020ef3d4
	ldrsh r7, [r0]
	cmp r7, #0
	beq _020EF294
	add r9, r0, #2
	mov r10, #0
	add r4, sp, #0x14
_020EF1F0:
	mov r0, r8
	add r1, r9, r10, lsl #1
	bl FUN_ov16_020eefa0
	strb r0, [r4, r10]
	add r10, r10, #1
	cmp r10, #0x14
	blt _020EF1F0
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020ef054
	add r4, sp, #0
	mov r1, r0
	mov r0, r4
	mov r2, #4
	bl MATH_CalcSHA1
	mov r3, #1
	mov r9, #0
	add r2, sp, #0x14
_020EF238:
	ldrb r1, [r2, r9]
	ldrb r0, [r4, r9]
	cmp r1, r0
	movne r3, #0
	bne _020EF258
	add r9, r9, #1
	cmp r9, #0x14
	blt _020EF238
_020EF258:
	cmp r3, #0
	bne _020EF294
	ldr r0, _020EF2B4 ; =gConfig
	ldr r1, _020EF2B8 ; =0x0211842C
	bl _ZN7CConfig8getParamEPKc
	ldr r2, [r8, #0x7fc]
	mov r1, r0, lsl #1
	mov r0, r7, lsl #1
	ldrh r1, [r2, r1]
	ldrh r3, [r2, r0]
	ldr r4, [r8, #0x7d8]
	mov r2, #0x2c
	mla r0, r1, r2, r4
	mla r1, r3, r2, r4
	bl MI_CpuCopy8
_020EF294:
	add r6, r6, #1
	cmp r6, r5
	blt _020EF1C8
_020EF2A0:
	mov r0, r8
	bl FUN_ov16_020ef3a0
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020EF2B0: .word gAllocator
_020EF2B4: .word gConfig
_020EF2B8: .word ov16_0211842C
	arm_func_end FUN_ov16_020ef160

	arm_func_start FUN_ov16_020ef2bc
FUN_ov16_020ef2bc: ; 0x020EF2BC
	mov r1, #0
	str r1, [r0, #0x894]
	strb r1, [r0, #0x88d]
	mov r0, #1
	bx lr
	arm_func_end FUN_ov16_020ef2bc

	arm_func_start FUN_ov16_020ef2d0
FUN_ov16_020ef2d0: ; 0x020EF2D0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r12, _020EF394 ; =0x02117874
	add r3, sp, #0x10
	mov r4, r0
	mov r2, #0xd
_020EF2E8:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020EF2E8
	ldrb r0, [r12]
	strb r0, [r3]
	ldr r0, [r4, #0x894]
	cmp r0, #0
	bne _020EF364
	ldr r3, _020EF398 ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020EF350
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r4, #0x94
	str r12, [sp, #8]
	mov r12, #1
	add r1, sp, #0x10
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020EF350:
	cmp r0, #0
	moveq r0, #0
	bne _020EF370
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_020EF364:
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r3, r4, pc}
_020EF370:
	ldr r1, _020EF39C ; =0x86186187
	umull r1, r2, r0, r1
	sub r0, r0, r2
	add r2, r2, r0, lsr #1
	mov r2, r2, lsr #5
	strb r2, [r4, #0x88d]
	mov r0, #1
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_020EF394: .word ov16_02117874
_020EF398: .word gAllocator
_020EF39C: .word 0x86186187
	arm_func_end FUN_ov16_020ef2d0

	arm_func_start FUN_ov16_020ef3a0
FUN_ov16_020ef3a0: ; 0x020EF3A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x894]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020EF3D0 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	mov r0, r4
	bl FUN_ov16_020ef2bc
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020EF3D0: .word gAllocator
	arm_func_end FUN_ov16_020ef3a0

	arm_func_start FUN_ov16_020ef3d4
FUN_ov16_020ef3d4: ; 0x020EF3D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_ov16_020ef414
	cmp r4, r0
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldr r0, [r5, #0x894]
	mov r1, #0
	ldmlefd sp!, {r3, r4, r5, pc}
_020EF400:
	add r1, r1, #1
	cmp r1, r4
	add r0, r0, #0x2a
	blt _020EF400
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020ef3d4

	arm_func_start FUN_ov16_020ef414
FUN_ov16_020ef414: ; 0x020EF414
	ldrb r0, [r0, #0x88d]
	bx lr
	arm_func_end FUN_ov16_020ef414

	arm_func_start FUN_ov16_020ef41c
FUN_ov16_020ef41c: ; 0x020EF41C
	mov r1, #0
	str r1, [r0, #0x898]
	strb r1, [r0, #0x88e]
	mov r0, #1
	bx lr
	arm_func_end FUN_ov16_020ef41c

	arm_func_start FUN_ov16_020ef430
FUN_ov16_020ef430: ; 0x020EF430
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x94
	mov r6, #0
	movs r8, r2
	mov r9, r1
	str r6, [sp, #0x10]
	mov r5, r6
	beq _020EF49C
	ldr r3, _020EF5AC ; =gAllocator
	ldr r1, _020EF5B0 ; =0x0211843C
	ldr r0, [r3]
	cmp r0, #0
	beq _020EF484
	str r6, [sp]
	str r6, [sp, #4]
	add r2, sp, #0x10
	str r6, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
	mov r6, r0
_020EF484:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r4, r6, lsr #1
_020EF49C:
	add r2, sp, #0x14
	cmp r8, #0
	ldr r0, _020EF5B4 ; =gLogicThink
	moveq r2, r9
	mov r1, #0x12
	mov r3, #0x40
	bl FUN_ov16_020ee0f8
	mov r6, r0
	cmp r8, #0
	beq _020EF528
	mov r3, #0
	mov r7, r3
	cmp r4, #0
	ble _020EF524
	add r2, sp, #0x14
_020EF4D8:
	mov r12, r5
	cmp r6, #0
	ble _020EF518
	ldr r1, [sp, #0x10]
	mov r0, r7, lsl #1
	ldrh lr, [r1, r0]
_020EF4F0:
	mov r0, r12, lsl #1
	ldrh r1, [r2, r0]
	cmp lr, r1
	moveq r0, r3, lsl #1
	streqh r1, [r9, r0]
	addeq r3, r3, #1
	beq _020EF518
	add r12, r12, #1
	cmp r12, r6
	blt _020EF4F0
_020EF518:
	add r7, r7, #1
	cmp r7, r4
	blt _020EF4D8
_020EF524:
	mov r6, r3
_020EF528:
	cmp r6, #0
	mov r7, #0
	ble _020EF56C
	ldr r4, _020EF5B4 ; =gLogicThink
_020EF538:
	mov r0, r7, lsl #1
	ldrh r1, [r9, r0]
	mov r0, r4
	bl FUN_ov16_020ee034
	cmp r0, #0
	ldrneh r1, [r0, #0x26]
	movne r0, r7, lsl #1
	strneh r1, [r9, r0]
	moveq r0, r7, lsl #1
	add r7, r7, #1
	streqh r5, [r9, r0]
	cmp r7, r6
	blt _020EF538
_020EF56C:
	cmp r6, #0x40
	bge _020EF588
	rsb r1, r6, #0x40
	add r0, r9, r6, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
_020EF588:
	cmp r8, #0
	ldrne r1, [sp, #0x10]
	cmpne r1, #0
	beq _020EF5A0
	ldr r0, _020EF5AC ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_020EF5A0:
	mov r0, r6
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020EF5AC: .word gAllocator
_020EF5B0: .word ov16_0211843C
_020EF5B4: .word gLogicThink
	arm_func_end FUN_ov16_020ef430

	arm_func_start FUN_ov16_020ef5b8
FUN_ov16_020ef5b8: ; 0x020EF5B8
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov lr, r4
	mov r12, #1
_020EF5C8:
	and r3, lr, #7
	add r2, r0, lr, asr #3
	mov r3, r12, lsl r3
	ldrb r2, [r2, #0x800]
	and r3, r3, #0xff
	tst r3, r2
	movne r2, r4, lsl #1
	strneh lr, [r1, r2]
	add lr, lr, #1
	addne r4, r4, #1
	cmp lr, #0x40
	blt _020EF5C8
	mov r3, r4
	cmp r4, #0x40
	bge _020EF61C
	mov r2, #0
_020EF608:
	mov r0, r3, lsl #1
	add r3, r3, #1
	strh r2, [r1, r0]
	cmp r3, #0x40
	blt _020EF608
_020EF61C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020ef5b8

    .rodata
	.global ov16_0211786C
ov16_0211786C:
	.byte 0x30, 0x30, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov16_02117874
ov16_02117874:
	.asciz "/data_iz/logic/item_md.dat"
	.balign 4, 0
	.byte 0x00, 0xF0, 0xFF, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00

    .data
	.global ov16_021183C0
ov16_021183C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_021183D8
ov16_021183D8:
	.asciz "/data_iz/logic/i_detail.dat"
	.balign 4, 0
	.global ov16_021183F4
ov16_021183F4:
	.asciz "/data_iz/logic/i_detail.dat"
	.balign 4, 0
	.global ov16_02118410
ov16_02118410:
	.asciz "/data_iz/logic/i_detail.dat"
	.balign 4, 0
	.global ov16_0211842C
ov16_0211842C:
	.asciz "FUSEI_ITEM_NO"
	.balign 4, 0
	.global ov16_0211843C
ov16_0211843C:
	.asciz "/data_iz/logic/itemsortlist.dat"
	.balign 4, 0

    .bss
	.global ov16_02119EC0
ov16_02119EC0:
	.space 0x04

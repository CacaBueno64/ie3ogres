
	.include "/macros/function.inc"
	.include "/include/overlay16.inc"

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
	ldr r5, _020EDF78 ; =0x0209A0AC
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
_020EDF78: .word unk_0209A0AC
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
	ldr r0, _020EEBA8 ; =0x0209A0AC
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
_020EEBA8: .word unk_0209A0AC
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
	ldr r0, _020EEC9C ; =0x0209A0AC
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
_020EEC9C: .word unk_0209A0AC
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
	ldr r3, _020EED10 ; =0x0209A250
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
	bl FUN_0202eff0
_020EECFC:
	cmp r0, #0x1000
	movne r0, #0
	moveq r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020EED10: .word unk_0209A250
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
	ldr r6, _020EEDB0 ; =0x0209A250
	mov r5, #0x1000
	mov r0, r6
	mov r1, r5
	bl FUN_0202de44
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
	bl FUN_ov16_020f3234
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0x7dc]
	mov r0, r6
	bl FUN_0202e1c0
	mov r0, r4
	str r4, [r8, #0x7dc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020EEDB0: .word unk_0209A250
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
	ldr r3, _020EEE44 ; =0x0209A250
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
	bl FUN_0202eff0
_020EEE30:
	cmp r0, #0
	moveq r0, #0x16
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}
_020EEE44: .word unk_0209A250
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
	ldr r4, _020EEF9C ; =0x0209BA20
	mov r0, r4
	bl FUN_0207445c
	mov r0, r4
	strb r5, [r7, r6]
	bl FUN_02074440
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EEF9C: .word unk_0209BA20
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
_020EF15C: .word 0x0211786C
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
	ldr r0, _020EF2B0 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r8, #0x7d8]
_020EF188:
	ldr r1, [r8, #0x7fc]
	cmp r1, #0
	beq _020EF1A0
	ldr r0, _020EF2B0 ; =0x0209A250
	bl FUN_0202e1c0
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
	ldr r0, _020EF2B4 ; =0x02099F78
	ldr r1, _020EF2B8 ; =0x0211842C
	bl L5_IniFileGetParam
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
_020EF2B0: .word unk_0209A250
_020EF2B4: .word unk_02099F78
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
	ldr r3, _020EF398 ; =0x0209A250
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
	bl FUN_0202eff0
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
_020EF394: .word 0x02117874
_020EF398: .word unk_0209A250
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
	ldr r0, _020EF3D0 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, r4
	bl FUN_ov16_020ef2bc
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020EF3D0: .word unk_0209A250
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
	ldr r3, _020EF5AC ; =0x0209A250
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
	bl FUN_0202eff0
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
	ldr r0, _020EF5B4 ; =0x0209BA20
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
	ldr r4, _020EF5B4 ; =0x0209BA20
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
	ldr r0, _020EF5AC ; =0x0209A250
	bl FUN_0202e1c0
_020EF5A0:
	mov r0, r6
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020EF5AC: .word unk_0209A250
_020EF5B0: .word ov16_0211843C
_020EF5B4: .word unk_0209BA20
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

	arm_func_start FUN_ov16_020ef624
FUN_ov16_020ef624: ; 0x020EF624
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #6
	mul r1, r8, r0
	ldr r4, _020EF704 ; =0x02119EC4
	ldr r5, _020EF708 ; =0x0209A250
	str r8, [r4, #4]
	mov r0, r5
	str r8, [r4, #0xc]
	bl FUN_0202de44
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r0, r5
	bl FUN_0202de44
	str r0, [r4]
	cmp r8, #0
	ldr r7, [r4, #8]
	mov r6, #0
	ble _020EF6C0
	ldr r5, _020EF70C ; =FX_SinCosTable_
	ldr r4, _020EF710 ; =0x00000199
_020EF678:
	mov r1, r8
	mov r0, r6, lsl #0x10
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r2, r0, lsl #1
	mov r0, r2, lsl #1
	ldrsh r1, [r5, r0]
	add r0, r5, r2, lsl #1
	add r6, r6, #1
	strh r1, [r7]
	ldrsh r0, [r0, #2]
	strh r4, [r7, #2]
	cmp r6, r8
	strh r0, [r7, #4]
	add r7, r7, #6
	blt _020EF678
_020EF6C0:
	ldr r0, _020EF704 ; =0x02119EC4
	mov r1, #0
	ldr r2, [r0]
	cmp r8, #1
	strb r1, [r2]
	mov r1, #1
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
_020EF6DC:
	add r0, r1, r1, lsr #31
	tst r1, #1
	movne r0, r0, asr #1
	addne r0, r0, #1
	subeq r0, r8, r0, asr #1
	strb r0, [r2, r1]
	add r1, r1, #1
	cmp r1, r8
	blt _020EF6DC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020EF704: .word ov16_02119EC4
_020EF708: .word unk_0209A250
_020EF70C: .word FX_SinCosTable_
_020EF710: .word 0x00000199
	arm_func_end FUN_ov16_020ef624

	arm_func_start FUN_ov16_020ef714
FUN_ov16_020ef714: ; 0x020EF714
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, #1
	mov r6, r1
	mov r7, r0
	mov r5, #0
	add r1, sp, #0x10
	mov r2, r4
	mov r0, #0x30
	str r5, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0xc
	mov r2, r4
	mov r0, #0x31
	str r5, [sp, #0xc]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #8
	mov r2, r4
	mov r0, #0x2a
	str r5, [sp, #8]
	bl NNS_G3dGeBufferOP_N
	mov r0, r6, lsl #0x18
	orr r0, r0, #0xc1
	orr r0, r0, r7, lsl #16
	str r0, [sp, #4]
	add r1, sp, #4
	mov r0, #0x29
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	mov r2, r4
	mov r0, #0x20
	add r1, sp, #0
	str r5, [sp]
	bl NNS_G3dGeBufferOP_N
	bl FUN_ov16_020ef7a8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020ef714

	arm_func_start FUN_ov16_020ef7a8
FUN_ov16_020ef7a8: ; 0x020EF7A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r6, _020EF84C ; =0x02119EC4
	mov r0, #2
	ldr r5, [r6]
	add r1, sp, #8
	str r0, [sp, #8]
	mov r0, #0x40
	mov r2, #1
	ldr r4, [r6, #8]
	bl NNS_G3dGeBufferOP_N
	ldr r6, [r6, #0xc]
	mov r7, #0
	cmp r6, #0
	ble _020EF834
	mov r10, #0x23
	add r9, sp, #0
	mov r11, #2
	mov r8, #6
_020EF7F4:
	ldrb r2, [r5], #1
	mov r0, r10
	mov r1, r9
	mul r3, r2, r8
	add r2, r4, r3
	ldrh r12, [r4, r3]
	ldrh r3, [r2, #2]
	ldrh lr, [r2, #4]
	mov r2, r11
	orr r3, r12, r3, lsl #16
	str r3, [sp]
	str lr, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	add r7, r7, #1
	cmp r7, r6
	blt _020EF7F4
_020EF834:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020EF84C: .word ov16_02119EC4
	arm_func_end FUN_ov16_020ef7a8

	arm_func_start FUN_ov16_020ef850
FUN_ov16_020ef850: ; 0x020EF850
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020EF8B8 ; =0x04000006
	ldr r6, _020EF8BC ; =0x02FFFC3C
	ldrh r2, [r7]
	ldr r1, [r6]
	ldr r0, _020EF8C0 ; =0x0209A178
	add r2, r1, r2
	mov r5, #0
	ldr lr, _020EF8C4 ; =0x6C078965
	str r2, [r0]
	ldr r4, _020EF8C8 ; =0x5D588B65
	stmib r0, {r5, lr}
	ldr r12, _020EF8CC ; =0x00269EC3
	str r4, [r0, #0xc]
	str r12, [r0, #0x10]
	mov r3, r5
	str r3, [r0, #0x14]
	ldrh r2, [r7]
	ldr r1, [r6]
	ldr r0, _020EF8D0 ; =0x0209A190
	add r2, r1, r2
	stmia r0, {r2, r5, lr}
	str r4, [r0, #0xc]
	str r12, [r0, #0x10]
	str r3, [r0, #0x14]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EF8B8: .word 0x04000006
_020EF8BC: .word 0x02FFFC3C
_020EF8C0: .word unk_0209A178
_020EF8C4: .word 0x6C078965
_020EF8C8: .word 0x5D588B65
_020EF8CC: .word 0x00269EC3
_020EF8D0: .word unk_0209A190
	arm_func_end FUN_ov16_020ef850

	arm_func_start FUN_ov16_020ef8d4
FUN_ov16_020ef8d4: ; 0x020EF8D4
	stmfd sp!, {r4, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020EF924 ; =0x0209A178
	ldmia r1, {r2, r3, r12}
	umull r4, lr, r12, r2
	mla lr, r12, r3, lr
	ldr r3, [r1, #0xc]
	ldr r12, [r1, #0x10]
	mla lr, r3, r2, lr
	ldr r2, [r1, #0x14]
	adds r4, r12, r4
	adc r12, r2, lr
	stmia r1, {r4, r12}
	cmp r0, #0
	umullne r1, r0, r12, r0
	movne r12, r0
	mov r0, r12
	ldmfd sp!, {r4, pc}
_020EF924: .word unk_0209A178
	arm_func_end FUN_ov16_020ef8d4

	arm_func_start FUN_ov16_020ef928
FUN_ov16_020ef928: ; 0x020EF928
	stmfd sp!, {r4, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020EF978 ; =0x0209A190
	ldmia r1, {r2, r3, r12}
	umull r4, lr, r12, r2
	mla lr, r12, r3, lr
	ldr r3, [r1, #0xc]
	ldr r12, [r1, #0x10]
	mla lr, r3, r2, lr
	ldr r2, [r1, #0x14]
	adds r4, r12, r4
	adc r12, r2, lr
	stmia r1, {r4, r12}
	cmp r0, #0
	umullne r1, r0, r12, r0
	movne r12, r0
	mov r0, r12
	ldmfd sp!, {r4, pc}
_020EF978: .word unk_0209A190
	arm_func_end FUN_ov16_020ef928

	arm_func_start FUN_ov16_020ef97c
FUN_ov16_020ef97c: ; 0x020EF97C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	beq _020EF9A8
	mov r4, #0x18
	ldr r0, _020EF9B0 ; =0x0209A178
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
_020EF9A8:
	ldr r0, _020EF9B0 ; =0x0209A178
	ldmfd sp!, {r3, r4, r5, pc}
_020EF9B0: .word unk_0209A178
	arm_func_end FUN_ov16_020ef97c

	arm_func_start FUN_ov16_020ef9b4
FUN_ov16_020ef9b4: ; 0x020EF9B4
	stmfd sp!, {r3, r4, r5, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _020EF9E4 ; =0x0209A178
	mov r4, #0x18
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_020EF9E4: .word unk_0209A178
	arm_func_end FUN_ov16_020ef9b4

	arm_func_start FUN_ov16_020ef9e8
FUN_ov16_020ef9e8: ; 0x020EF9E8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov16_020ef8d4
	mov r0, r4
	bl FUN_ov16_020ef928
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020ef9e8

	arm_func_start FUN_ov16_020efa04
FUN_ov16_020efa04: ; 0x020EFA04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020EFA44 ; =0x0209A11C
	mov r7, r0
	ldr r0, [r4]
	cmp r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _020EFA48 ; =0x0209BA20
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_0207420c
	mov r0, r6
	mov r1, r5
	str r7, [r4]
	bl FUN_020740a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EFA44: .word unk_0209A11C
_020EFA48: .word unk_0209BA20
	arm_func_end FUN_ov16_020efa04

	arm_func_start FUN_ov16_020efa4c
FUN_ov16_020efa4c: ; 0x020EFA4C
	stmfd sp!, {r4, lr}
	ldr r4, _020EFA78 ; =0x0209A0AC
	mov r1, #0x64
	mov r0, r4
	bl FUN_0206c158
	mov r0, r4
	bl FUN_ov16_020efa04
	ldr r0, _020EFA7C ; =0x0209A11C
	ldr r0, [r0]
	bl FUN_0206c62c
	ldmfd sp!, {r4, pc}
_020EFA78: .word unk_0209A0AC
_020EFA7C: .word unk_0209A11C
	arm_func_end FUN_ov16_020efa4c

	arm_func_start FUN_ov16_020efa80
FUN_ov16_020efa80: ; 0x020EFA80
	ldr r2, _020EFA94 ; =0x0209A11C
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _020EFA98 ; =FUN_0206c6fc
	bx r12
_020EFA94: .word unk_0209A11C
_020EFA98: .word FUN_0206c6fc
	arm_func_end FUN_ov16_020efa80

	arm_func_start FUN_ov16_020efa9c
FUN_ov16_020efa9c: ; 0x020EFA9C
	ldr r2, _020EFAB4 ; =0x0209A11C
	mov r1, r0, lsl #0x10
	ldr r0, [r2]
	ldr r12, _020EFAB8 ; =FUN_0206c718
	mov r1, r1, lsr #0x10
	bx r12
_020EFAB4: .word unk_0209A11C
_020EFAB8: .word FUN_0206c718
	arm_func_end FUN_ov16_020efa9c

	arm_func_start FUN_ov16_020efabc
FUN_ov16_020efabc: ; 0x020EFABC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _020EFB40 ; =0x0209A11C
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
_020EFAD4:
	ldr r0, [r4]
	mov r1, r6
	bl FUN_0206c6fc
	movs r5, r0
	beq _020EFB2C
	bl FUN_0206d64c
	cmp r0, #0
	beq _020EFB2C
	mov r0, r5
	bl FUN_0206d688
	cmp r0, #0
	beq _020EFB2C
	mov r0, r5
	bl FUN_0206d5f0
	cmp r9, r0
	bne _020EFB2C
	mov r0, r5
	mov r1, r7
	bl FUN_0206d824
	cmp r8, r0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020EFB2C:
	add r6, r6, #1
	cmp r6, #0x64
	blt _020EFAD4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020EFB40: .word unk_0209A11C
	arm_func_end FUN_ov16_020efabc

	arm_func_start FUN_ov16_020efb44
FUN_ov16_020efb44: ; 0x020EFB44
	stmfd sp!, {r4, lr}
	cmp r2, #0
	movne r2, #1
	mov r4, #0
	moveq r2, #0
	mov r3, r4
	bl FUN_ov16_020efb6c
	mov r1, r4
	bl FUN_ov16_020efa9c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020efb44

	arm_func_start FUN_ov16_020efb6c
FUN_ov16_020efb6c: ; 0x020EFB6C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r8, r7
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _020EFBD4
_020EFB90: ; jump table
	b _020EFBD4 ; case 0
	b _020EFBA0 ; case 1
	b _020EFBB4 ; case 2
	b _020EFBC8 ; case 3
_020EFBA0:
	ldr r0, _020EFC64 ; =0x0209BA20
	mov r1, r6
_020EFBA8:
	bl FUN_0205107c
	mov r7, r0
	b _020EFC28
_020EFBB4:
	ldr r0, _020EFC64 ; =0x0209BA20
	mov r1, r6
	bl FUN_0205106c
	mov r8, r0
	b _020EFC28
_020EFBC8:
	ldr r0, _020EFC64 ; =0x0209BA20
	mov r1, #2
	b _020EFBA8
_020EFBD4:
	ldr r7, _020EFC64 ; =0x0209BA20
	mov r0, r7
	bl FUN_020731b4
	cmp r0, #0
	movne r3, #2
	bne _020EFC14
	mov r0, r7
	bl FUN_020731d0
	cmp r0, #0
	beq _020EFC10
	ldr r0, _020EFC68 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	moveq r3, #3
	beq _020EFC14
_020EFC10:
	mov r3, #1
_020EFC14:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020efb6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020EFC28:
	cmp r8, #0
	beq _020EFC40
	mov r0, r8
	mov r1, r5
	bl FUN_0204fed8
	b _020EFC4C
_020EFC40:
	mov r0, r7
	sub r1, r5, #1
	bl FUN_0204fbe8
_020EFC4C:
	cmp r4, #0
	ldrne r1, _020EFC6C ; =0x00000FFF
	andne r0, r0, r1
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020EFC64: .word unk_0209BA20
_020EFC68: .word unk_020A0640
_020EFC6C: .word 0x00000FFF
	arm_func_end FUN_ov16_020efb6c

	arm_func_start FUN_ov16_020efc70
FUN_ov16_020efc70: ; 0x020EFC70
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	cmpne r5, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r2, #0x68
	bl MI_CpuCopy8
	add r0, r6, #0x6c
	add r1, r5, #0x6c
	mov r2, #0x18
	bl MI_CpuCopy8
	cmp r4, #0
	beq _020EFD20
	ldr r0, [r6, #0x84]
	cmp r0, #0
	ldrne r1, [r5, #0x84]
	cmpne r1, #0
	beq _020EFCC4
	mov r2, #0x20
	bl MI_CpuCopy8
_020EFCC4:
	ldr r0, [r6, #0x88]
	cmp r0, #0
	ldrne r1, [r5, #0x88]
	cmpne r1, #0
	beq _020EFCE0
	mov r2, #0x90
	bl MI_CpuCopy8
_020EFCE0:
	mov r0, r6
	bl FUN_0206dcdc
	cmp r0, #0
	bne _020EFD20
	mov r0, r5
	bl FUN_0206dcdc
	cmp r0, #0
	bne _020EFD20
	mov r0, r5
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r4
	bl FUN_0206ed40
_020EFD20:
	ldrh r0, [r6, #0x8e]
	strh r0, [r5, #0x8e]
	ldrb r0, [r6, #0x8c]
	strb r0, [r5, #0x8c]
	ldrsh r0, [r6, #0x94]
	strh r0, [r5, #0x94]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020efc70

	arm_func_start FUN_ov16_020efd3c
FUN_ov16_020efd3c: ; 0x020EFD3C
	add r0, r0, #0xff
	add r0, r0, #0xf00
	mov r0, r0, asr #0xd
	add r0, r0, #2
	and r0, r0, #7
	bx lr
	arm_func_end FUN_ov16_020efd3c

	arm_func_start FUN_ov16_020efd54
FUN_ov16_020efd54: ; 0x020EFD54
	mov r0, r0, lsl #0xd
	add r0, r0, #0xc000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov16_020efd54

	arm_func_start FUN_ov16_020efd68
FUN_ov16_020efd68: ; 0x020EFD68
	adds r2, r0, r2
	bmi _020EFD8C
	cmp r0, #0x100
	bge _020EFD8C
	adds r0, r1, r3
	bmi _020EFD8C
	cmp r1, #0xc0
	movlt r0, #1
	bxlt lr
_020EFD8C:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020efd68

	arm_func_start FUN_ov16_020efd94
FUN_ov16_020efd94: ; 0x020EFD94
	stmfd sp!, {r4, r5, r6, lr}
	ldr r12, _020EFE28 ; =0x0209A12C
	mov r4, r1
	ldr r1, [r12]
	mov r6, r2
	add r0, r0, r1
	cmp r0, #0
	mov r5, r3
	mov r0, r0, lsl #0xc
	ble _020EFDD0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFDDC
_020EFDD0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFDDC:
	bl _ffix
	ldr r1, _020EFE2C ; =0x0209A140
	str r0, [r6]
	ldr r0, [r1]
	add r0, r4, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFE10
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFE1C
_020EFE10:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFE1C:
	bl _ffix
	str r0, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_020EFE28: .word unk_0209A12C
_020EFE2C: .word unk_0209A140
	arm_func_end FUN_ov16_020efd94

	arm_func_start FUN_ov16_020efe30
FUN_ov16_020efe30: ; 0x020EFE30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020EFEE0 ; =0x0209A12C
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mov r4, r3
	mov r0, r0, lsl #0xc
	ble _020EFE6C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFE78
_020EFE6C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFE78:
	bl _ffix
	sub r1, r7, r0
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r1, r0, asr #0xc
	ldr r0, _020EFEE4 ; =0x0209A140
	str r1, [r5]
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFEB8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFEC4
_020EFEB8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFEC4:
	bl _ffix
	sub r1, r6, r0
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EFEE0: .word unk_0209A12C
_020EFEE4: .word unk_0209A140
	arm_func_end FUN_ov16_020efe30

	arm_func_start FUN_ov16_020efee8
FUN_ov16_020efee8: ; 0x020EFEE8
	stmfd sp!, {r3, lr}
	ldr lr, _020EFF10 ; =0x0209A12C
	ldr r12, _020EFF14 ; =0x0209A140
	ldr lr, [lr]
	sub r0, r0, lr
	str r0, [r2]
	ldr r0, [r12]
	sub r0, r1, r0
	str r0, [r3]
	ldmfd sp!, {r3, pc}
_020EFF10: .word unk_0209A12C
_020EFF14: .word unk_0209A140
	arm_func_end FUN_ov16_020efee8

	arm_func_start FUN_ov16_020eff18
FUN_ov16_020eff18: ; 0x020EFF18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	movs r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, r3
	bne _020EFF7C
	ldr r0, _020F00D0 ; =0x0208F6F0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFF5C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFF68
_020EFF5C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFF68:
	bl _ffix
	mov r1, #0x64000
	bl FX_Div
	add r5, sp, #4
	str r0, [sp, #4]
_020EFF7C:
	cmp r4, #0
	bne _020EFFCC
	ldr r0, _020F00D0 ; =0x0208F6F0
	ldr r0, [r0, #0x34]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFFAC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFFB8
_020EFFAC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFFB8:
	bl _ffix
	mov r1, #0x64000
	bl FX_Div
	add r4, sp, #0
	str r0, [sp]
_020EFFCC:
	ldr r0, _020F00D4 ; =0x0209A720
	ldrsh r0, [r0, #0xa8]
	mov r0, r0, asr #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFFF8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020F0004
_020EFFF8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020F0004:
	bl _ffix
	ldr r1, _020F00D0 ; =0x0208F6F0
	ldr r2, [r7]
	ldr r1, [r1, #0x28]
	sub r0, r2, r0
	mul r0, r1, r0
	ldr r8, _020F00D4 ; =0x0209A720
	ldrsh r1, [r8, #0xac]
	bl _s32_div_f
	mov r1, #0
	stmia r6, {r0, r1}
	ldrsh r0, [r8, #0xaa]
	mov r0, r0, asr #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020F0058
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020F0064
_020F0058:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020F0064:
	bl _ffix
	ldr r2, _020F00D0 ; =0x0208F6F0
	ldr r3, [r7, #4]
	ldr r1, _020F00D4 ; =0x0209A720
	ldr r2, [r2, #0x2c]
	sub r0, r3, r0
	mul r0, r2, r0
	ldrsh r1, [r1, #0xae]
	bl _s32_div_f
	str r0, [r6, #8]
	ldr r1, [r5]
	ldr r3, [r6]
	smull r2, r1, r3, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r6]
	ldr r1, [r4]
	smull r2, r1, r0, r1
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r6, #8]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F00D0: .word unk_0208F6F0
_020F00D4: .word unk_0209A720
	arm_func_end FUN_ov16_020eff18

	arm_func_start FUN_ov16_020f00d8
FUN_ov16_020f00d8: ; 0x020F00D8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _020F0234 ; =0x0209A11C
	mov r6, r0
	mov r5, r1
	mov r4, #0
_020F00EC:
	ldr r0, [r7]
	mov r1, r4
	bl FUN_0206c6fc
	movs r8, r0
	beq _020F017C
	bl FUN_0206d64c
	cmp r0, #0
	beq _020F017C
	mov r0, r8
	bl FUN_0206d660
	cmp r0, #0
	beq _020F017C
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	beq _020F017C
	mov r0, r8
	bl FUN_0206d6b0
	cmp r0, #0
	beq _020F017C
	ldr r2, [r8, #0x84]
	ldr r1, [r2]
	sub r0, r1, #0x10000
	cmp r6, r0
	blt _020F017C
	add r0, r1, #0x10000
	cmp r6, r0
	bge _020F017C
	ldr r1, [r2, #4]
	sub r0, r1, #0x28000
	cmp r5, r0
	ble _020F017C
	add r0, r1, #0x4000
	cmp r5, r0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
_020F017C:
	add r4, r4, #1
	cmp r4, #0x64
	blt _020F00EC
	ldr r7, _020F0234 ; =0x0209A11C
	mov r4, #0
_020F0190:
	ldr r0, [r7]
	mov r1, r4
	bl FUN_0206c6fc
	movs r8, r0
	beq _020F0220
	bl FUN_0206d64c
	cmp r0, #0
	beq _020F0220
	mov r0, r8
	bl FUN_0206d660
	cmp r0, #0
	beq _020F0220
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	beq _020F0220
	mov r0, r8
	bl FUN_0206d6b0
	cmp r0, #0
	bne _020F0220
	ldr r2, [r8, #0x84]
	ldr r1, [r2]
	sub r0, r1, #0x10000
	cmp r6, r0
	blt _020F0220
	add r0, r1, #0x10000
	cmp r6, r0
	bge _020F0220
	ldr r1, [r2, #4]
	sub r0, r1, #0x28000
	cmp r5, r0
	ble _020F0220
	add r0, r1, #0x4000
	cmp r5, r0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
_020F0220:
	add r4, r4, #1
	cmp r4, #0x64
	blt _020F0190
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F0234: .word unk_0209A11C
	arm_func_end FUN_ov16_020f00d8

	arm_func_start FUN_ov16_020f0238
FUN_ov16_020f0238: ; 0x020F0238
	mov r2, r0, lsr #0x1f
	rsb r0, r2, r0, lsl #29
	add r0, r2, r0, ror #29
	mov r0, r0, lsl #0x1d
	mov r2, #0
	mov r0, r0, lsr #0x10
	str r2, [r1]
	stmib r1, {r0, r2}
	bx lr
	arm_func_end FUN_ov16_020f0238

	arm_func_start FUN_ov16_020f025c
FUN_ov16_020f025c: ; 0x020F025C
	ldr r12, [r0]
	cmp r12, #0x80000000
	ldrne r2, [r1]
	cmpne r2, #0x80000000
	bxeq lr
	ldr r2, _020F0294 ; =0x0209A720
	ldr r3, [r2, #0xd4]
	rsb r3, r12, r3, lsl #1
	str r3, [r0]
	ldr r2, [r2, #0xd8]
	ldr r0, [r1]
	rsb r0, r0, r2, lsl #1
	str r0, [r1]
	bx lr
_020F0294: .word unk_0209A720
	arm_func_end FUN_ov16_020f025c

	arm_func_start FUN_ov16_020f0298
FUN_ov16_020f0298: ; 0x020F0298
	ldr r12, [r0]
	cmp r12, #0x80000000
	ldrne r3, [r0, #4]
	cmpne r3, #0x80000000
	bxeq lr
	ldr r1, _020F02CC ; =0x0209A720
	ldr r2, [r1, #0xd4]
	rsb r2, r12, r2, lsl #1
	str r2, [r0]
	ldr r1, [r1, #0xd8]
	rsb r1, r3, r1, lsl #1
	str r1, [r0, #4]
	bx lr
_020F02CC: .word unk_0209A720
	arm_func_end FUN_ov16_020f0298

	arm_func_start FUN_ov16_020f02d0
FUN_ov16_020f02d0: ; 0x020F02D0
	stmfd sp!, {r3, lr}
	mov r12, r1
	mov lr, r0
	mov r3, r2
	mov r2, r12
	ldmia lr, {r0, r1}
	bl FUN_ov16_020f02f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f02d0

	arm_func_start FUN_ov16_020f02f0
FUN_ov16_020f02f0: ; 0x020F02F0
	stmfd sp!, {r3, lr}
	cmp r0, #0x80000000
	cmpne r1, #0x80000000
	moveq r0, #0x400
	rsbeq r0, r0, #0
	streq r0, [r2]
	streq r0, [r3]
	ldmeqfd sp!, {r3, pc}
	mov r12, r0, asr #0xb
	add r0, r0, r12, lsr #20
	ldr r12, _020F0364 ; =0xFFFFFC01
	mov lr, r1, asr #0xb
	add r1, r1, lr, lsr #20
	cmp r12, r0, asr #12
	mov lr, r0, asr #0xc
	ldr r0, _020F0368 ; =0x000003FF
	movgt lr, r12
	cmp lr, r0
	movgt lr, r0
	ldr r0, _020F0364 ; =0xFFFFFC01
	mov r1, r1, asr #0xc
	cmp r1, r0
	movlt r1, r0
	ldr r0, _020F0368 ; =0x000003FF
	str lr, [r2]
	cmp r1, r0
	movgt r1, r0
	str r1, [r3]
	ldmfd sp!, {r3, pc}
_020F0364: .word 0xFFFFFC01
_020F0368: .word 0x000003FF
	arm_func_end FUN_ov16_020f02f0

	arm_func_start FUN_ov16_020f036c
FUN_ov16_020f036c: ; 0x020F036C
	ldr r12, [sp]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020F03F4
_020F037C: ; jump table
	b _020F03F4 ; case 0
	b _020F0394 ; case 1
	b _020F03A8 ; case 2
	b _020F03BC ; case 3
	b _020F03D0 ; case 4
	b _020F03E4 ; case 5
_020F0394:
	cmp r2, r12
	cmpeq r1, r3
	beq _020F03F4
	mov r0, #0
	bx lr
_020F03A8:
	cmp r2, r12
	cmpeq r1, r3
	blo _020F03F4
	mov r0, #0
	bx lr
_020F03BC:
	cmp r2, r12
	cmpeq r1, r3
	bls _020F03F4
	mov r0, #0
	bx lr
_020F03D0:
	cmp r2, r12
	cmpeq r1, r3
	bhs _020F03F4
	mov r0, #0
	bx lr
_020F03E4:
	cmp r2, r12
	cmpeq r1, r3
	movls r0, #0
	bxls lr
_020F03F4:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov16_020f036c

	arm_func_start FUN_ov16_020f03fc
FUN_ov16_020f03fc: ; 0x020F03FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r3, [sp, #0x34]
	mov r9, r0
	movs r0, r3
	str r3, [sp, #0x34]
	cmpne r9, #0
	mov r8, r1
	mov r7, r2
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, #0x64
	umull r1, r0, r7, r2
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	mov r4, #0
	ldr r0, [sp, #0x34]
	umull r5, r11, r3, r2
	str r1, [sp, #4]
	strb r4, [r0]
	mov r6, r4
_020F0450:
	ldrb r0, [r9, #0x1b]
	cmp r0, #0
	beq _020F04A0
	cmp r8, #0
	ldreqb r3, [r9, #0x1a]
	moveq r1, #0
	moveq r2, r1
	moveq r10, r3, asr #0x1f
	beq _020F0490
	ldrb lr, [r9, #0x1a]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	mov r12, lr, asr #0x1f
	umull r3, r10, r8, lr
	mla r10, r8, r12, r10
	mla r10, r6, lr, r10
_020F0490:
	str r10, [sp]
	bl FUN_ov16_020f036c
	cmp r0, #0
	beq _020F0534
_020F04A0:
	ldrb r0, [r9, #0x1d]
	cmp r0, #0
	beq _020F04CC
	ldrb r3, [r9, #0x1c]
	mov r1, r8
	mov r2, r6
	mov r10, r3, asr #0x1f
	str r10, [sp]
	bl FUN_ov16_020f036c
	cmp r0, #0
	beq _020F0534
_020F04CC:
	ldrb r0, [r9, #0x1f]
	cmp r0, #0
	beq _020F051C
	cmp r7, #0
	ldreqb r3, [r9, #0x1e]
	moveq r1, #0
	moveq r2, r1
	moveq r10, r3, asr #0x1f
	beq _020F050C
	ldrb lr, [r9, #0x1e]
	mov r1, r5
	mov r2, r11
	mov r12, lr, asr #0x1f
	umull r3, r10, r7, lr
	mla r10, r7, r12, r10
	mla r10, r6, lr, r10
_020F050C:
	str r10, [sp]
	bl FUN_ov16_020f036c
	cmp r0, #0
	beq _020F0534
_020F051C:
	ldr r1, [sp, #0x34]
	mov r0, r9
	mov r2, #0x19
	bl MI_CpuCopy8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F0534:
	add r4, r4, #1
	cmp r4, #0x14
	add r9, r9, #0x20
	blt _020F0450
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020f03fc

	arm_func_start FUN_ov16_020f054c
FUN_ov16_020f054c: ; 0x020F054C
	ldr r1, _020F0564 ; =0x0209A0D4
	mov r2, #0
	ldr r0, _020F0568 ; =0x0209A0E4
	strb r2, [r1]
	strb r2, [r0]
	bx lr
_020F0564: .word unk_0209A0D4
_020F0568: .word unk_0209A0E4
	arm_func_end FUN_ov16_020f054c

	arm_func_start FUN_ov16_020f056c
FUN_ov16_020f056c: ; 0x020F056C
	ldr r3, _020F0588 ; =0x0209A0D4
	ldr r2, _020F058C ; =0x0209A0E4
	ldrb r3, [r3]
	strb r3, [r0]
	ldrb r0, [r2]
	strb r0, [r1]
	bx lr
_020F0588: .word unk_0209A0D4
_020F058C: .word unk_0209A0E4
	arm_func_end FUN_ov16_020f056c

	arm_func_start FUN_ov16_020f0590
FUN_ov16_020f0590: ; 0x020F0590
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _020F05C4 ; =0x021178C4
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [r12, r5, lsl #2]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_020F05C4: .word 0x021178C4
	arm_func_end FUN_ov16_020f0590

	arm_func_start FUN_ov16_020f05c8
FUN_ov16_020f05c8: ; 0x020F05C8
	stmfd sp!, {r4, lr}
	ldr r1, _020F0620 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _020F05F0
	ldr r0, _020F0624 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020F05F0:
	mov r0, r4
	bl FUN_ov16_020f0590
	mov r1, r0
	ldr r0, _020F0628 ; =0x0209AC44
	bl FUN_0202cf6c
	ldr r0, _020F062C ; =0x0209A0E4
	ldr r1, _020F0630 ; =0x0209A0D4
	ldrb r2, [r0]
	strb r4, [r1]
	add r1, r2, #1
	strb r1, [r0]
	ldmfd sp!, {r4, pc}
_020F0620: .word unk_020A0640
_020F0624: .word unk_0209AEC0
_020F0628: .word unk_0209AC44
_020F062C: .word unk_0209A0E4
_020F0630: .word unk_0209A0D4
	arm_func_end FUN_ov16_020f05c8

	arm_func_start FUN_ov16_020f0634
FUN_ov16_020f0634: ; 0x020F0634
	ldr r3, _020F064C ; =0x0209D7C0
	mov r2, #0x3c0
	mla r2, r1, r2, r3
	mov r1, #0xf0
	mla r0, r1, r0, r2
	bx lr
_020F064C: .word unk_0209D7C0
	arm_func_end FUN_ov16_020f0634

	arm_func_start FUN_ov16_020f0650
FUN_ov16_020f0650: ; 0x020F0650
	ldr r0, _020F0668 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F0668: .word unk_020A0640
	arm_func_end FUN_ov16_020f0650

	arm_func_start FUN_ov16_020f066c
FUN_ov16_020f066c: ; 0x020F066C
	ldr r0, _020F0678 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	bx lr
_020F0678: .word unk_020A0640
	arm_func_end FUN_ov16_020f066c

	arm_func_start FUN_ov16_020f067c
FUN_ov16_020f067c: ; 0x020F067C
	ldr r0, _020F0688 ; =0x020A0640
	ldrb r0, [r0, #0x8a]
	bx lr
_020F0688: .word unk_020A0640
	arm_func_end FUN_ov16_020f067c

	arm_func_start FUN_ov16_020f068c
FUN_ov16_020f068c: ; 0x020F068C
	ldr r0, _020F0698 ; =0x020A1640
	ldrb r0, [r0, #0x245]
	bx lr
_020F0698: .word unk_020A1640
	arm_func_end FUN_ov16_020f068c

	arm_func_start FUN_ov16_020f069c
FUN_ov16_020f069c: ; 0x020F069C
	ldr r1, _020F06A8 ; =0x0209A118
	str r0, [r1]
	bx lr
_020F06A8: .word unk_0209A118
	arm_func_end FUN_ov16_020f069c

	arm_func_start FUN_ov16_020f06ac
FUN_ov16_020f06ac: ; 0x020F06AC
	ldr r0, _020F06B8 ; =0x0209A118
	ldr r0, [r0]
	bx lr
_020F06B8: .word unk_0209A118
	arm_func_end FUN_ov16_020f06ac

	arm_func_start FUN_ov16_020f06bc
FUN_ov16_020f06bc: ; 0x020F06BC
	ldr r0, _020F06D4 ; =0x0209A454
	ldrb r0, [r0, #0x82]
	cmp r0, #6
	moveq r0, #1
	movne r0, #0
	bx lr
_020F06D4: .word unk_0209A454
	arm_func_end FUN_ov16_020f06bc

	arm_func_start FUN_ov16_020f06d8
FUN_ov16_020f06d8: ; 0x020F06D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020efa80
	mov r5, r0
	cmp r4, #0
	cmpne r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f06d8

	arm_func_start FUN_ov16_020f0728
FUN_ov16_020f0728: ; 0x020F0728
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f0728

	arm_func_start FUN_ov16_020f0750
FUN_ov16_020f0750: ; 0x020F0750
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	bl FUN_0206d6c4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f0750

	arm_func_start FUN_ov16_020f076c
FUN_ov16_020f076c: ; 0x020F076C
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	bl FUN_0206d6c4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f076c

	arm_func_start FUN_ov16_020f077c
FUN_ov16_020f077c: ; 0x020F077C
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	bl FUN_0206d6b0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f077c

	arm_func_start FUN_ov16_020f078c
FUN_ov16_020f078c: ; 0x020F078C
	ldr r1, _020F07A4 ; =0x020A0640
	ldrb r1, [r1, #0x9a]
	cmp r0, r1
	moveq r0, #0
	movne r0, #1
	bx lr
_020F07A4: .word unk_020A0640
	arm_func_end FUN_ov16_020f078c

	arm_func_start FUN_ov16_020f07a8
FUN_ov16_020f07a8: ; 0x020F07A8
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	bl FUN_0206d5f0
	ldr r1, _020F07CC ; =0x020A0640
	ldrb r1, [r1, #0x9a]
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, pc}
_020F07CC: .word unk_020A0640
	arm_func_end FUN_ov16_020f07a8

	arm_func_start FUN_ov16_020f07d0
FUN_ov16_020f07d0: ; 0x020F07D0
	stmfd sp!, {r3, lr}
	bl FUN_0206d5f0
	ldr r1, _020F07F0 ; =0x020A0640
	ldrb r1, [r1, #0x9a]
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, pc}
_020F07F0: .word unk_020A0640
	arm_func_end FUN_ov16_020f07d0

	arm_func_start FUN_ov16_020f07f4
FUN_ov16_020f07f4: ; 0x020F07F4
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_0206d5f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f07f4

	arm_func_start FUN_ov16_020f0810
FUN_ov16_020f0810: ; 0x020F0810
	ldr r12, _020F0818 ; =FUN_0206d5f0
	bx r12
_020F0818: .word FUN_0206d5f0
	arm_func_end FUN_ov16_020f0810

	arm_func_start FUN_ov16_020f081c
FUN_ov16_020f081c: ; 0x020F081C
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	moveq r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f081c

	arm_func_start FUN_ov16_020f083c
FUN_ov16_020f083c: ; 0x020F083C
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f083c

	arm_func_start FUN_ov16_020f085c
FUN_ov16_020f085c: ; 0x020F085C
	stmfd sp!, {r3, lr}
	ldr r1, _020F089C ; =0x020A0640
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	ldrne r1, _020F08A0 ; =0x020A0660
	ldrne r0, [r1, r0, lsl #2]
	ldmnefd sp!, {r3, pc}
	cmp r0, #0
	bne _020F0888
	bl FUN_ov16_020f081c
	ldmfd sp!, {r3, pc}
_020F0888:
	bl FUN_ov16_020f081c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020F089C: .word unk_020A0640
_020F08A0: .word unk_020A0660
	arm_func_end FUN_ov16_020f085c

	arm_func_start FUN_ov16_020f08a4
FUN_ov16_020f08a4: ; 0x020F08A4
	cmp r0, #4
	ldrlt r1, _020F08B8 ; =0x020A0672
	movge r0, #4
	ldrltb r0, [r1, r0]
	bx lr
_020F08B8: .word unk_020A0672
	arm_func_end FUN_ov16_020f08a4

	arm_func_start FUN_ov16_020f08bc
FUN_ov16_020f08bc: ; 0x020F08BC
	stmfd sp!, {r4, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020F0918 ; =0x020A0640
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	bne _020F08F8
	bl FUN_0206d5f0
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_020F08F8:
	bl FUN_0206d554
	mov r4, r0
	ldr r0, _020F091C ; =0x0209AEC0
	bl FUN_02046730
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_020F0918: .word unk_020A0640
_020F091C: .word unk_0209AEC0
	arm_func_end FUN_ov16_020f08bc

	arm_func_start FUN_ov16_020f0920
FUN_ov16_020f0920: ; 0x020F0920
	ldr r1, _020F093C ; =0x020A0640
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	ldrne r1, _020F0940 ; =0x020A0670
	andeq r0, r0, #0xff
	ldrneb r0, [r1, r0]
	bx lr
_020F093C: .word unk_020A0640
_020F0940: .word unk_020A0670
	arm_func_end FUN_ov16_020f0920

	arm_func_start FUN_ov16_020f0944
FUN_ov16_020f0944: ; 0x020F0944
	stmfd sp!, {r4, lr}
	ldr r0, _020F0980 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020f081c
	bl FUN_ov16_020f0920
	mov r4, r0
	ldr r0, _020F0984 ; =0x0209AEC0
	bl FUN_02046730
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_020F0980: .word unk_020A0640
_020F0984: .word unk_0209AEC0
	arm_func_end FUN_ov16_020f0944

	arm_func_start FUN_ov16_020f0988
FUN_ov16_020f0988: ; 0x020F0988
	stmfd sp!, {r4, lr}
	ldr r1, _020F09BC ; =0x020A0640
	mov r4, r0
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020f085c
	bl FUN_ov16_020f0920
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_020F09BC: .word unk_020A0640
	arm_func_end FUN_ov16_020f0988

	arm_func_start FUN_ov16_020f09c0
FUN_ov16_020f09c0: ; 0x020F09C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, _020F0A10 ; =0x0209AEC0
	bl FUN_02046744
	mov r6, #0
	mov r5, r0
	mov r7, r6
	mov r4, #1
	b _020F0A00
_020F09E4:
	tst r5, r4, lsl r7
	beq _020F09FC
	mov r0, r7
	bl FUN_ov16_020f085c
	cmp r8, r0
	addeq r6, r6, #1
_020F09FC:
	add r7, r7, #1
_020F0A00:
	cmp r7, #4
	blt _020F09E4
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F0A10: .word unk_0209AEC0
	arm_func_end FUN_ov16_020f09c0

	arm_func_start FUN_ov16_020f0a14
FUN_ov16_020f0a14: ; 0x020F0A14
	ldr r1, _020F0A2C ; =0x020A06D6
	ldrb r0, [r1, r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F0A2C: .word unk_020A06D6
	arm_func_end FUN_ov16_020f0a14

	arm_func_start FUN_ov16_020f0a30
FUN_ov16_020f0a30: ; 0x020F0A30
	ldr r1, _020F0A48 ; =0x020A06D6
	ldrb r0, [r1, r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
_020F0A48: .word unk_020A06D6
	arm_func_end FUN_ov16_020f0a30

	arm_func_start FUN_ov16_020f0a4c
FUN_ov16_020f0a4c: ; 0x020F0A4C
	stmfd sp!, {r3, lr}
	ldr r1, _020F0A8C ; =0x0209A2C0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _020F0A68
	bl FUN_ov16_020f07f4
	ldmfd sp!, {r3, pc}
_020F0A68:
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	blt _020F0A7C
	bl FUN_ov16_020f07f4
	ldmfd sp!, {r3, pc}
_020F0A7C:
	ldr r0, _020F0A90 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144770
	ldmfd sp!, {r3, pc}
_020F0A8C: .word unk_0209A2C0
_020F0A90: .word unk_02099EF0
	arm_func_end FUN_ov16_020f0a4c

	arm_func_start FUN_ov16_020f0a94
FUN_ov16_020f0a94: ; 0x020F0A94
	stmfd sp!, {r3, lr}
	ldr r1, _020F0AE8 ; =0x0209A2C0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _020F0AB0
	bl FUN_ov16_020f07a8
	ldmfd sp!, {r3, pc}
_020F0AB0:
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	blt _020F0AC4
	bl FUN_ov16_020f07a8
	ldmfd sp!, {r3, pc}
_020F0AC4:
	ldr r0, _020F0AEC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144770
	ldr r1, _020F0AF0 ; =0x020A0640
	ldrb r1, [r1, #0x9a]
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, pc}
_020F0AE8: .word unk_0209A2C0
_020F0AEC: .word unk_02099EF0
_020F0AF0: .word unk_020A0640
	arm_func_end FUN_ov16_020f0a94

	arm_func_start FUN_ov16_020f0af4
FUN_ov16_020f0af4: ; 0x020F0AF4
	cmp r0, #0
	moveq r0, r1
	bxeq lr
	ldrb r0, [r0, #0x5a]
	cmp r0, #1
	beq _020F0B30
	ldr r2, _020F0B38 ; =0x021178A4
	mov r3, #0
_020F0B14:
	ldr r0, [r2, r3, lsl #2]
	cmp r1, r0
	addeq r1, r1, #4
	beq _020F0B30
	add r3, r3, #1
	cmp r3, #8
	blo _020F0B14
_020F0B30:
	mov r0, r1
	bx lr
_020F0B38: .word 0x021178A4
	arm_func_end FUN_ov16_020f0af4

	arm_func_start FUN_ov16_020f0b3c
FUN_ov16_020f0b3c: ; 0x020F0B3C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _020F0B50
	bl FUN_ov16_020f0af4
	mov r1, r0
_020F0B50:
	mov r0, r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f0b3c

	arm_func_start FUN_ov16_020f0b58
FUN_ov16_020f0b58: ; 0x020F0B58
	ldr r2, _020F0B88 ; =0x021178A4
	mov r3, #0
_020F0B60:
	ldr r1, [r2, r3, lsl #2]
	add r1, r1, #4
	cmp r0, r1
	moveq r0, #1
	bxeq lr
	add r3, r3, #1
	cmp r3, #8
	blo _020F0B60
	mov r0, #0
	bx lr
_020F0B88: .word 0x021178A4
	arm_func_end FUN_ov16_020f0b58

	arm_func_start FUN_ov16_020f0b8c
FUN_ov16_020f0b8c: ; 0x020F0B8C
	ldr r2, _020F0BA0 ; =0x02099F34
	mov r1, #0xc
	ldr r2, [r2]
	mla r0, r1, r0, r2
	bx lr
_020F0BA0: .word unk_02099F34
	arm_func_end FUN_ov16_020f0b8c

	arm_func_start FUN_ov16_020f0ba4
FUN_ov16_020f0ba4: ; 0x020F0BA4
	ldr r2, _020F0BC8 ; =0x02099F34
	mov r1, #0xc
	ldr r2, [r2]
	mla r1, r0, r1, r2
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F0BC8: .word unk_02099F34
	arm_func_end FUN_ov16_020f0ba4

	arm_func_start FUN_ov16_020f0bcc
FUN_ov16_020f0bcc: ; 0x020F0BCC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r0, [r4, #0x28]
	mov r5, r1
	cmp r0, #0
	ldreqh r0, [r4, #0x26]
	bl FUN_ov16_020f0ba4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x2c]
	mov r4, #0
	cmp r0, #0
	mov r0, r5
	moveq r4, #2
	bl FUN_0206d6d8
	cmp r0, #0
	bne _020F0C24
	mov r0, r5
	bl FUN_0206d8b8
	cmp r0, #1
	bne _020F0C28
_020F0C24:
	add r4, r4, #1
_020F0C28:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f0bcc

	arm_func_start FUN_ov16_020f0c30
FUN_ov16_020f0c30: ; 0x020F0C30
	stmfd sp!, {r3, lr}
	ldrb r0, [r0, #0x53]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020f0c48
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f0c30

	arm_func_start FUN_ov16_020f0c48
FUN_ov16_020f0c48: ; 0x020F0C48
	ldr r12, _020F0C5C ; =MIi_CpuCopy16
	add r0, r2, r0, lsl #3
	add r1, r1, #0x18
	mov r2, #8
	bx r12
_020F0C5C: .word MIi_CpuCopy16
	arm_func_end FUN_ov16_020f0c48

	arm_func_start FUN_ov16_020f0c60
FUN_ov16_020f0c60: ; 0x020F0C60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _020F0D54 ; =0x02099F34
	mov r7, r2
	ldr r5, [r4]
	ldr r4, [sp, #0x24]
	mov r2, #0xc
	mla r6, r4, r2, r5
	ldr r5, [sp, #0x28]
	ldrb r12, [r7, #0x53]
	mla r4, r5, r2, r6
	mov r9, r0
	mov r8, r1
	mov r6, r3
	cmp r12, #0
	ldr r5, [sp, #0x2c]
	beq _020F0CB0
	add r0, r5, r12, lsl #4
	add r1, r9, #0x10
	mov r2, #0x10
	bl MIi_CpuCopy16
_020F0CB0:
	mov r0, r7
	bl FUN_0206d6d8
	cmp r0, #0
	beq _020F0CE8
	cmp r6, #0
	ble _020F0D34
	ldr r1, [sp, #0x30]
	mov r0, #0x14
	mla r0, r6, r0, r1
	mov r1, r9
	add r0, r0, #4
	mov r2, #0x10
_020F0CE0:
	bl MIi_CpuCopy16
	b _020F0D34
_020F0CE8:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _020F0D34
	ldr r2, [sp, #0x20]
	cmp r2, #0
	ble _020F0D14
	ldr r0, [sp, #0x34]
	add r1, r9, #4
	add r0, r0, r2, lsl #4
	mov r2, #0xc
	b _020F0CE0
_020F0D14:
	ldrb r0, [r7, #0x53]
	cmp r0, #0
	beq _020F0D34
	add r0, r5, r0, lsl #4
	ldrh r0, [r0, #0xc]
	add r1, r9, #4
	mov r2, #0xc
	bl MIi_CpuClear16
_020F0D34:
	ldrb r0, [r7, #0x53]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, r0, lsl #4
	add r1, r8, #0x10
	mov r2, #0x10
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F0D54: .word unk_02099F34
	arm_func_end FUN_ov16_020f0c60

	arm_func_start FUN_ov16_020f0d58
FUN_ov16_020f0d58: ; 0x020F0D58
	stmfd sp!, {r3, lr}
	mov r3, r0
	cmp r1, #0
	ldmlefd sp!, {r3, pc}
	add r0, r2, r1, lsl #3
	add r1, r3, #0x1a
	mov r2, #6
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f0d58

	arm_func_start FUN_ov16_020f0d7c
FUN_ov16_020f0d7c: ; 0x020F0D7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r1, #0
	mov r6, r0
	ldrne r1, [sp, #0x20]
	mov r4, r3
	movne r0, #0x14
	mlane r7, r4, r0, r1
	ldr r0, [sp, #0x18]
	moveq r7, #0
	ldr r1, [sp, #0x24]
	cmp r0, #0
	mov r5, r2
	add r0, r1, r0, lsl #3
	ble _020F0DCC
	cmp r0, #0
	beq _020F0DCC
	add r0, r0, #4
	add r1, r6, #4
	mov r2, #4
	bl MIi_CpuCopy16
_020F0DCC:
	cmp r4, #0
	ble _020F0DEC
	cmp r7, #0
	beq _020F0DEC
	mov r0, r7
	add r1, r6, #8
	mov r2, #2
	bl MIi_CpuCopy16
_020F0DEC:
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x1c]
	add r1, r6, #0x1a
	add r0, r0, r5, lsl #3
	mov r2, #6
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f0d7c

	arm_func_start FUN_ov16_020f0e0c
FUN_ov16_020f0e0c: ; 0x020F0E0C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020F0E7C ; =0x0209A100
	mov r4, r0
	ldr r6, _020F0E80 ; =0x0209A1E0
	mov r0, #0
	ldr r12, _020F0E84 ; =0x0209A0EC
	mov r5, #0x10
	mov r2, r5
	strb r0, [r1, r4, lsl #1]
	add r3, r1, r4, lsl #1
	add r1, r6, r4, lsl #4
	strb r0, [r12, r4]
	strb r0, [r3, #1]
	bl MIi_CpuClearFast
	mov r1, r5
	add r0, r6, r4, lsl #4
	bl DC_FlushRange
	ldr r0, _020F0E88 ; =0x0209B220
	ldr r6, _020F0E8C ; =0x0209B620
	mov r5, #0x200
	mov r2, r5
	add r0, r0, r4, lsl #9
	add r1, r6, r4, lsl #9
	bl MIi_CpuCopyFast
	mov r1, r5
	add r0, r6, r4, lsl #9
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_020F0E7C: .word unk_0209A100
_020F0E80: .word unk_0209A1E0
_020F0E84: .word unk_0209A0EC
_020F0E88: .word unk_0209B220
_020F0E8C: .word unk_0209B620
	arm_func_end FUN_ov16_020f0e0c

	arm_func_start FUN_ov16_020f0e90
FUN_ov16_020f0e90: ; 0x020F0E90
	ldr r12, _020F0E98 ; =FUN_ov16_020f0e0c
	bx r12
_020F0E98: .word FUN_ov16_020f0e0c
	arm_func_end FUN_ov16_020f0e90

	arm_func_start FUN_ov16_020f0e9c
FUN_ov16_020f0e9c: ; 0x020F0E9C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020F0F48 ; =0x0209A1E0
	mov r6, r0
	mov r5, r1
	add r0, r4, r6, lsl #4
	strb r2, [r5, r0]
	cmp r2, #0
	bne _020F0F28
	ldr r0, _020F0F4C ; =0x0209B220
	ldr r8, _020F0F50 ; =0x0209B620
	add r0, r0, r6, lsl #9
	add r1, r8, r6, lsl #9
	mov r7, #0x20
	mov r2, r7
	add r0, r0, r5, lsl #5
	add r1, r1, r5, lsl #5
	bl MIi_CpuCopyFast
	add r0, r8, r6, lsl #9
	mov r1, r7
	add r0, r0, r5, lsl #5
	bl DC_FlushRange
	mov r1, #0
	mov r3, r1
	add r2, r4, r6, lsl #4
	b _020F0F18
_020F0F00:
	ldrb r0, [r2]
	cmp r0, #0
	movne r1, #1
	bne _020F0F20
	add r3, r3, #1
	add r2, r2, #1
_020F0F18:
	cmp r3, #0x10
	blt _020F0F00
_020F0F20:
	ldr r0, _020F0F54 ; =0x0209A100
	b _020F0F30
_020F0F28:
	ldr r0, _020F0F54 ; =0x0209A100
	mov r1, #1
_020F0F30:
	strb r1, [r0, r6, lsl #1]
	ldr r0, _020F0F54 ; =0x0209A100
	mov r1, #1
	add r0, r0, r6, lsl #1
	strb r1, [r0, #1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F0F48: .word unk_0209A1E0
_020F0F4C: .word unk_0209B220
_020F0F50: .word unk_0209B620
_020F0F54: .word unk_0209A100
	arm_func_end FUN_ov16_020f0e9c

	arm_func_start FUN_ov16_020f0f58
FUN_ov16_020f0f58: ; 0x020F0F58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _020F105C ; =0x0209A100
	ldrb r1, [r1, r0, lsl #1]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _020F1060 ; =0x0209A0EC
	ldr r2, _020F1064 ; =0x0209A110
	ldrb r3, [r1, r0]
	ldr r2, [r2]
	ldr r6, _020F1068 ; =0x0209B220
	add r2, r3, r2
	and r2, r2, #0x1f
	mov r3, r2, lsl #0xb
	mov r5, r3, asr #4
	ldr r3, _020F106C ; =FX_SinCosTable_
	mov r5, r5, lsl #2
	ldrsh r3, [r3, r5]
	ldr r4, _020F1070 ; =0x0209A1E0
	ldr r7, _020F1074 ; =0x0209B620
	add r5, r3, r3, lsl #3
	mov r3, r5, asr #0xb
	add r3, r5, r3, lsr #20
	mov r3, r3, asr #0xc
	add lr, r6, r0, lsl #9
	mov r6, #0
	add r5, r3, #0x17
	strb r2, [r1, r0]
	add r4, r4, r0, lsl #4
	add r12, r7, r0, lsl #9
	mov r3, r6
	b _020F1040
_020F0FD4:
	ldrb r1, [r4]
	cmp r1, #0
	addeq r12, r12, #0x20
	addeq lr, lr, #0x20
	beq _020F1038
	mov r7, r3
	b _020F1030
_020F0FF0:
	ldrh r2, [lr], #2
	add r7, r7, #1
	mov r1, r2, asr #5
	and r9, r1, #0x1f
	mov r8, r2, asr #0xa
	mul r1, r9, r5
	and r8, r8, #0x1f
	mul r9, r8, r5
	and r8, r2, #0x1f
	mov r2, r1, asr #5
	mul r1, r8, r5
	mov r8, r9, asr #5
	mov r2, r2, lsl #5
	orr r2, r2, r8, lsl #10
	orr r1, r2, r1, asr #5
	strh r1, [r12], #2
_020F1030:
	cmp r7, #0x10
	blt _020F0FF0
_020F1038:
	add r6, r6, #1
	add r4, r4, #1
_020F1040:
	cmp r6, #0x10
	blt _020F0FD4
	ldr r2, _020F1074 ; =0x0209B620
	mov r1, #0x200
	add r0, r2, r0, lsl #9
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F105C: .word unk_0209A100
_020F1060: .word unk_0209A0EC
_020F1064: .word unk_0209A110
_020F1068: .word unk_0209B220
_020F106C: .word FX_SinCosTable_
_020F1070: .word unk_0209A1E0
_020F1074: .word unk_0209B620
	arm_func_end FUN_ov16_020f0f58

	arm_func_start FUN_ov16_020f1078
FUN_ov16_020f1078: ; 0x020F1078
	stmfd sp!, {r3, lr}
	ldr lr, _020F10A4 ; =0x0209B220
	ldr r12, _020F10A8 ; =0x0209B620
	add lr, lr, r0, lsl #9
	add r0, r12, r0, lsl #9
	mov r12, r2, lsl #1
	add r2, lr, r1, lsl #5
	add r0, r0, r1, lsl #5
	strh r3, [r12, r2]
	strh r3, [r12, r0]
	ldmfd sp!, {r3, pc}
_020F10A4: .word unk_0209B220
_020F10A8: .word unk_0209B620
	arm_func_end FUN_ov16_020f1078

	arm_func_start FUN_ov16_020f10ac
FUN_ov16_020f10ac: ; 0x020F10AC
	ldr r0, _020F10C0 ; =0x0209B620
	ldr r12, _020F10C4 ; =GX_LoadBGPltt
	mov r1, #0
	mov r2, #0x200
	bx r12
_020F10C0: .word unk_0209B620
_020F10C4: .word GX_LoadBGPltt
	arm_func_end FUN_ov16_020f10ac

	arm_func_start FUN_ov16_020f10c8
FUN_ov16_020f10c8: ; 0x020F10C8
	ldr r0, _020F10DC ; =0x0209B820
	ldr r12, _020F10E0 ; =GXS_LoadBGPltt
	mov r1, #0
	mov r2, #0x200
	bx r12
_020F10DC: .word unk_0209B820
_020F10E0: .word GXS_LoadBGPltt
	arm_func_end FUN_ov16_020f10c8

	arm_func_start FUN_ov16_020f10e4
FUN_ov16_020f10e4: ; 0x020F10E4
	stmfd sp!, {r4, lr}
	ldr r1, _020F1130 ; =0x0209A100
	mov r4, r0
	ldrb r0, [r1, r4, lsl #1]
	cmp r0, #0
	bne _020F110C
	ldr r0, _020F1134 ; =0x0209A101
	ldrb r0, [r0, r4, lsl #1]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020F110C:
	cmp r4, #0
	bne _020F111C
	bl FUN_ov16_020f10ac
	b _020F1120
_020F111C:
	bl FUN_ov16_020f10c8
_020F1120:
	ldr r0, _020F1134 ; =0x0209A101
	mov r1, #0
	strb r1, [r0, r4, lsl #1]
	ldmfd sp!, {r4, pc}
_020F1130: .word unk_0209A100
_020F1134: .word unk_0209A101
	arm_func_end FUN_ov16_020f10e4

	arm_func_start FUN_ov16_020f1138
FUN_ov16_020f1138: ; 0x020F1138
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r0, #8]
	cmp r3, #0x20
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #4]
	add r0, r0, r3
	bl FUN_ov16_020f1160
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f1138

	arm_func_start FUN_ov16_020f1160
FUN_ov16_020f1160: ; 0x020F1160
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r0
	mov r6, r2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, _020F1208 ; =0x0209B220
	ldr r2, _020F120C ; =0x0209B620
	add r4, r3, r1, lsl #9
	add r3, r2, r1, lsl #9
	add r4, r4, r6, lsl #5
	mov r8, #0x20
	mov r1, r4
	mov r2, r8
	add r5, r3, r6, lsl #5
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl MI_CpuCopy8
	cmp r6, #0
	bne _020F11E8
	ldr r0, _020F1210 ; =0x0209A144
	ldr r8, [r0]
	cmp r8, #0
	beq _020F11E8
	ldr r7, [r8, #4]
	mov r6, #8
	mov r1, r4
	mov r2, r6
	add r0, r8, r7
	bl MI_CpuCopy8
	mov r1, r5
	mov r2, r6
	add r0, r8, r7
	bl MI_CpuCopy8
_020F11E8:
	mov r6, #0x20
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F1208: .word unk_0209B220
_020F120C: .word unk_0209B620
_020F1210: .word unk_0209A144
	arm_func_end FUN_ov16_020f1160

	arm_func_start FUN_ov16_020f1214
FUN_ov16_020f1214: ; 0x020F1214
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	rsb r2, r1, #0
	orr r3, r1, #0x4000
	orr r2, r2, #0x8000
	mov r6, #0
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr lr, _020F1290 ; =0x02099F0A
	ldr r4, _020F1294 ; =0x02099F08
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	mov r12, r6
	mov r5, #1
_020F1248:
	tst r0, r5, lsl r6
	beq _020F1270
	mov r7, r4
	cmp r6, #0
	movne r7, lr
	cmp r1, #0
	streqh r12, [r7]
	beq _020F1270
	strgth r3, [r7]
	strleh r2, [r7]
_020F1270:
	add r6, r6, #1
	cmp r6, #2
	blt _020F1248
	tst r0, #0x8000
	ldrne r0, _020F1298 ; =0x02099F3C
	movne r1, #1
	strne r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F1290: .word unk_02099F0A
_020F1294: .word unk_02099F08
_020F1298: .word unk_02099F3C
	arm_func_end FUN_ov16_020f1214

	arm_func_start FUN_ov16_020f129c
FUN_ov16_020f129c: ; 0x020F129C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov16_020f12b4
	mov r0, #1
	bl FUN_ov16_020f12b4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f129c

	arm_func_start FUN_ov16_020f12b4
FUN_ov16_020f12b4: ; 0x020F12B4
	mov r1, #0xc
	mul r3, r0, r1
	mov r1, #1
	mov r0, r1, lsl r0
	orr r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	ldr r2, _020F12F8 ; =0x0209A160
	mov r1, #0
	str r1, [r2, r3]
	add r3, r2, r3
	strh r1, [r3, #4]
	mov r2, #0x20
	strh r2, [r3, #6]
	ldr r12, _020F12FC ; =FUN_ov16_020f1214
	mov r0, r0, lsr #0x10
	strh r1, [r3, #8]
	bx r12
_020F12F8: .word unk_0209A160
_020F12FC: .word FUN_ov16_020f1214
	arm_func_end FUN_ov16_020f12b4

	arm_func_start FUN_ov16_020f1300
FUN_ov16_020f1300: ; 0x020F1300
	ldr r12, _020F130C ; =FUN_ov16_020f1338
	mov r0, #0
	bx r12
_020F130C: .word FUN_ov16_020f1338
	arm_func_end FUN_ov16_020f1300

	arm_func_start FUN_ov16_020f1310
FUN_ov16_020f1310: ; 0x020F1310
	ldr r12, _020F131C ; =FUN_ov16_020f1338
	mov r0, #1
	bx r12
_020F131C: .word FUN_ov16_020f1338
	arm_func_end FUN_ov16_020f1310

	arm_func_start FUN_ov16_020f1320
FUN_ov16_020f1320: ; 0x020F1320
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov16_020f1338
	mov r0, #1
	bl FUN_ov16_020f1338
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f1320

	arm_func_start FUN_ov16_020f1338
FUN_ov16_020f1338: ; 0x020F1338
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0xc
	mov r4, r0
	mul r12, r4, r1
	mov r2, #1
	ldr lr, _020F13A4 ; =0x0209A160
	mov r0, r2, lsl r4
	mov r0, r0, lsl #0x10
	add r5, lr, r12
	sub r1, r1, #0x10c
	strh r1, [r5, #4]
	mov r3, #0
	str r3, [lr, r12]
	mov r0, r0, lsr #0x10
	sub r1, r2, #0x11
	strh r3, [r5, #8]
	bl FUN_ov16_020f1214
	cmp r4, #0
	ldreq r0, _020F13A8 ; =0x02099F08
	ldreq r1, _020F13AC ; =0x0400006C
	ldreqh r0, [r0]
	streqh r0, [r1]
	ldrne r0, _020F13A8 ; =0x02099F08
	ldrne r1, _020F13B0 ; =0x0400106C
	ldrneh r0, [r0, #2]
	strneh r0, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_020F13A4: .word unk_0209A160
_020F13A8: .word unk_02099F08
_020F13AC: .word 0x0400006C
_020F13B0: .word 0x0400106C
	arm_func_end FUN_ov16_020f1338

	arm_func_start FUN_ov16_020f13b4
FUN_ov16_020f13b4: ; 0x020F13B4
	ldr r12, _020F13C0 ; =FUN_ov16_020f13ec
	mov r0, #0
	bx r12
_020F13C0: .word FUN_ov16_020f13ec
	arm_func_end FUN_ov16_020f13b4

	arm_func_start FUN_ov16_020f13c4
FUN_ov16_020f13c4: ; 0x020F13C4
	ldr r12, _020F13D0 ; =FUN_ov16_020f13ec
	mov r0, #1
	bx r12
_020F13D0: .word FUN_ov16_020f13ec
	arm_func_end FUN_ov16_020f13c4

	arm_func_start FUN_ov16_020f13d4
FUN_ov16_020f13d4: ; 0x020F13D4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov16_020f13ec
	mov r0, #1
	bl FUN_ov16_020f13ec
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f13d4

	arm_func_start FUN_ov16_020f13ec
FUN_ov16_020f13ec: ; 0x020F13EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0xc
	mul r3, r4, r0
	ldr r12, _020F1458 ; =0x0209A160
	mov r0, #1
	mov r0, r0, lsl r4
	mov r0, r0, lsl #0x10
	add lr, r12, r3
	mov r1, #0x100
	strh r1, [lr, #4]
	mov r2, #0
	str r2, [r12, r3]
	mov r0, r0, lsr #0x10
	mov r1, #0x10
	strh r2, [lr, #8]
	bl FUN_ov16_020f1214
	cmp r4, #0
	ldreq r0, _020F145C ; =0x02099F08
	ldreq r1, _020F1460 ; =0x0400006C
	ldreqh r0, [r0]
	streqh r0, [r1]
	ldrne r0, _020F145C ; =0x02099F08
	ldrne r1, _020F1464 ; =0x0400106C
	ldrneh r0, [r0, #2]
	strneh r0, [r1]
	ldmfd sp!, {r4, pc}
_020F1458: .word unk_0209A160
_020F145C: .word unk_02099F08
_020F1460: .word 0x0400006C
_020F1464: .word 0x0400106C
	arm_func_end FUN_ov16_020f13ec

	arm_func_start FUN_ov16_020f1468
FUN_ov16_020f1468: ; 0x020F1468
	ldr r12, _020F1478 ; =FUN_ov16_020f14b4
	mov r1, r0
	mov r0, #0
	bx r12
_020F1478: .word FUN_ov16_020f14b4
	arm_func_end FUN_ov16_020f1468

	arm_func_start FUN_ov16_020f147c
FUN_ov16_020f147c: ; 0x020F147C
	ldr r12, _020F148C ; =FUN_ov16_020f14b4
	mov r1, r0
	mov r0, #1
	bx r12
_020F148C: .word FUN_ov16_020f14b4
	arm_func_end FUN_ov16_020f147c

	arm_func_start FUN_ov16_020f1490
FUN_ov16_020f1490: ; 0x020F1490
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl FUN_ov16_020f14b4
	mov r1, r4
	mov r0, #1
	bl FUN_ov16_020f14b4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f1490

	arm_func_start FUN_ov16_020f14b4
FUN_ov16_020f14b4: ; 0x020F14B4
	stmfd sp!, {r4, lr}
	ldr r3, _020F1510 ; =0x0209A160
	mov r2, #0xc
	mla r4, r0, r2, r3
	ldrsh r0, [r4, #4]
	cmp r0, #0
	movlt r0, #1
	strlt r0, [r4]
	blt _020F14E8
	movgt r0, #3
	strgt r0, [r4]
	movle r0, #0
	strle r0, [r4]
_020F14E8:
	cmp r1, #1
	movlt r1, #1
	cmp r1, #0x80
	movgt r1, #0x80
	mov r0, #0x100
	bl _s32_div_f
	strh r0, [r4, #6]
	mov r0, #1
	strh r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020F1510: .word unk_0209A160
	arm_func_end FUN_ov16_020f14b4

	arm_func_start FUN_ov16_020f1514
FUN_ov16_020f1514: ; 0x020F1514
	ldr r12, _020F1524 ; =FUN_ov16_020f1560
	mov r1, r0
	mov r0, #0
	bx r12
_020F1524: .word FUN_ov16_020f1560
	arm_func_end FUN_ov16_020f1514

	arm_func_start FUN_ov16_020f1528
FUN_ov16_020f1528: ; 0x020F1528
	ldr r12, _020F1538 ; =FUN_ov16_020f1560
	mov r1, r0
	mov r0, #1
	bx r12
_020F1538: .word FUN_ov16_020f1560
	arm_func_end FUN_ov16_020f1528

	arm_func_start FUN_ov16_020f153c
FUN_ov16_020f153c: ; 0x020F153C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl FUN_ov16_020f1560
	mov r1, r4
	mov r0, #1
	bl FUN_ov16_020f1560
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f153c

	arm_func_start FUN_ov16_020f1560
FUN_ov16_020f1560: ; 0x020F1560
	stmfd sp!, {r4, lr}
	ldr r3, _020F15B0 ; =0x0209A160
	mov r2, #0xc
	mla r4, r0, r2, r3
	ldrsh r3, [r4, #4]
	sub r0, r2, #0x10c
	cmp r3, r0
	movgt r0, #2
	movle r0, #0
	cmp r1, #1
	movlt r1, #1
	str r0, [r4]
	cmp r1, #0x80
	movgt r1, #0x80
	mov r0, #0x100
	bl _s32_div_f
	strh r0, [r4, #6]
	mov r0, #0
	strh r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020F15B0: .word unk_0209A160
	arm_func_end FUN_ov16_020f1560

	arm_func_start FUN_ov16_020f15b4
FUN_ov16_020f15b4: ; 0x020F15B4
	ldr r12, _020F15C4 ; =FUN_ov16_020f1600
	mov r1, r0
	mov r0, #0
	bx r12
_020F15C4: .word FUN_ov16_020f1600
	arm_func_end FUN_ov16_020f15b4

	arm_func_start FUN_ov16_020f15c8
FUN_ov16_020f15c8: ; 0x020F15C8
	ldr r12, _020F15D8 ; =FUN_ov16_020f1600
	mov r1, r0
	mov r0, #1
	bx r12
_020F15D8: .word FUN_ov16_020f1600
	arm_func_end FUN_ov16_020f15c8

	arm_func_start FUN_ov16_020f15dc
FUN_ov16_020f15dc: ; 0x020F15DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl FUN_ov16_020f1600
	mov r1, r4
	mov r0, #1
	bl FUN_ov16_020f1600
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f15dc

	arm_func_start FUN_ov16_020f1600
FUN_ov16_020f1600: ; 0x020F1600
	stmfd sp!, {r4, lr}
	ldr r3, _020F164C ; =0x0209A160
	mov r2, #0xc
	mla r4, r0, r2, r3
	ldrsh r0, [r4, #4]
	cmp r0, #0x100
	movlt r0, #4
	movge r0, #0
	cmp r1, #1
	movlt r1, #1
	str r0, [r4]
	cmp r1, #0x80
	movgt r1, #0x80
	mov r0, #0x100
	bl _s32_div_f
	strh r0, [r4, #6]
	mov r0, #0
	strh r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020F164C: .word unk_0209A160
	arm_func_end FUN_ov16_020f1600

	arm_func_start FUN_ov16_020f1650
FUN_ov16_020f1650: ; 0x020F1650
	ldr r12, _020F165C ; =FUN_ov16_020f16a4
	mov r0, #0
	bx r12
_020F165C: .word FUN_ov16_020f16a4
	arm_func_end FUN_ov16_020f1650

	arm_func_start FUN_ov16_020f1660
FUN_ov16_020f1660: ; 0x020F1660
	ldr r12, _020F166C ; =FUN_ov16_020f16a4
	mov r0, #1
	bx r12
_020F166C: .word FUN_ov16_020f16a4
	arm_func_end FUN_ov16_020f1660

	arm_func_start FUN_ov16_020f1670
FUN_ov16_020f1670: ; 0x020F1670
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov16_020f16a4
	cmp r0, #0
	bne _020F1698
	mov r0, #1
	bl FUN_ov16_020f16a4
	cmp r0, #0
	beq _020F169C
_020F1698:
	mov r4, #1
_020F169C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f1670

	arm_func_start FUN_ov16_020f16a4
FUN_ov16_020f16a4: ; 0x020F16A4
	mov r1, #0xc
	mul r1, r0, r1
	ldr r0, _020F16C4 ; =0x0209A160
	ldr r0, [r0, r1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F16C4: .word unk_0209A160
	arm_func_end FUN_ov16_020f16a4

	arm_func_start FUN_ov16_020f16c8
FUN_ov16_020f16c8: ; 0x020F16C8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020F17E8 ; =0x02118490
	ldr r1, [r3, r0, lsl #2]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F17EC ; =0x0209A160
	mov r12, #0xc
	mla r5, r0, r12, r1
	ldrh r2, [r5, #8]
	mov r1, #0
	str r1, [r3, r0, lsl #2]
	cmp r2, #0
	subne r0, r2, #1
	strneh r0, [r5, #8]
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r5]
	ldrsh r4, [r5, #4]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020F17A8
_020F1718: ; jump table
	b _020F17A8 ; case 0
	b _020F172C ; case 1
	b _020F174C ; case 2
	b _020F1770 ; case 3
	b _020F178C ; case 4
_020F172C:
	ldrsh r2, [r5, #6]
	add r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r4, r2, asr #0x10
	cmp r4, #0
	movgt r4, r1
	strgt r1, [r5]
	b _020F17A8
_020F174C:
	ldrsh r2, [r5, #6]
	sub r3, r12, #0x10c
	sub r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r4, r2, asr #0x10
	cmp r3, r2, asr #16
	strgt r1, [r5]
	movgt r4, r3
	b _020F17A8
_020F1770:
	ldrsh r2, [r5, #6]
	sub r2, r4, r2
	mov r2, r2, lsl #0x10
	movs r4, r2, asr #0x10
	movmi r4, r1
	strmi r1, [r5]
	b _020F17A8
_020F178C:
	ldrsh r2, [r5, #6]
	add r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r4, r2, asr #0x10
	cmp r4, #0x100
	strgt r1, [r5]
	movgt r4, #0x100
_020F17A8:
	ldrsh r3, [r5, #4]
	mov r1, r4, asr #3
	add r2, r4, r1, lsr #28
	mov r1, r3, asr #3
	add r1, r3, r1, lsr #28
	mov r1, r1, asr #4
	cmp r1, r2, asr #4
	mov r1, r2, asr #4
	beq _020F17E0
	mov r2, #1
	mov r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov16_020f1214
_020F17E0:
	strh r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020F17E8: .word ov16_02118490
_020F17EC: .word unk_0209A160
	arm_func_end FUN_ov16_020f16c8

	arm_func_start FUN_ov16_020f17f0
FUN_ov16_020f17f0: ; 0x020F17F0
	ldr r12, _020F17FC ; =FUN_ov16_020f1844
	mov r0, #0
	bx r12
_020F17FC: .word FUN_ov16_020f1844
	arm_func_end FUN_ov16_020f17f0

	arm_func_start FUN_ov16_020f1800
FUN_ov16_020f1800: ; 0x020F1800
	ldr r12, _020F180C ; =FUN_ov16_020f1844
	mov r0, #1
	bx r12
_020F180C: .word FUN_ov16_020f1844
	arm_func_end FUN_ov16_020f1800

	arm_func_start FUN_ov16_020f1810
FUN_ov16_020f1810: ; 0x020F1810
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov16_020f1844
	cmp r0, #0
	bne _020F1838
	mov r0, #1
	bl FUN_ov16_020f1844
	cmp r0, #0
	beq _020F183C
_020F1838:
	mov r4, #1
_020F183C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f1810

	arm_func_start FUN_ov16_020f1844
FUN_ov16_020f1844: ; 0x020F1844
	ldr r2, _020F1864 ; =0x0209A160
	mov r1, #0xc
	mla r1, r0, r1, r2
	ldrsh r0, [r1, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F1864: .word unk_0209A160
	arm_func_end FUN_ov16_020f1844

	arm_func_start FUN_ov16_020f1868
FUN_ov16_020f1868: ; 0x020F1868
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	cmp r0, #0
	mov r12, r0
	cmpne r1, #0
	mov lr, r1
	moveq r0, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	beq _020F18D4
	mov r6, #0x400
	rsb r6, r6, #0
	sub r7, r6, #0xf000
_020F1898:
	ldrh r8, [r0]
	cmp r3, #0
	and r4, r8, r6, lsr #22
	add r4, r2, r4
	andge r9, r8, r7
	orrge r8, r4, r3, lsl #12
	orrge r8, r9, r8
	andlt r8, r8, r6
	orrlt r8, r4, r8
	strh r8, [r0]
	cmp r5, r4
	movlt r5, r4
	add r0, r0, #2
	subs r1, r1, #2
	bne _020F1898
_020F18D4:
	mov r0, r12
	mov r1, lr
	bl DC_FlushRange
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020f1868

	arm_func_start FUN_ov16_020f18e8
FUN_ov16_020f18e8: ; 0x020F18E8
	stmfd sp!, {r3, lr}
	mov lr, r1
	cmp r0, #0
	ldrne r1, [r0, #0x10]
	mov r3, r2
	cmpne r1, #0
	moveq r0, lr
	ldmeqfd sp!, {r3, pc}
	ldr r12, [r0, #0xc]
	mov r2, lr
	add r0, r0, r12
	bl FUN_ov16_020f1868
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f18e8

	arm_func_start FUN_ov16_020f191c
FUN_ov16_020f191c: ; 0x020F191C
	stmfd sp!, {r4, lr}
	ldr r4, [sp, #8]
	ldr lr, [sp, #0xc]
	cmp r4, #0
	cmpne lr, #0
	ldmeqfd sp!, {r4, pc}
	add r1, lr, r1, lsl #6
	cmp r3, #0
	add r1, r1, r0, lsl #1
	ldmlefd sp!, {r4, pc}
_020F1944:
	mov lr, r1
	mov r12, r2
	cmp r2, #0
	ble _020F1968
_020F1954:
	ldrh r0, [r4], #2
	sub r12, r12, #1
	cmp r12, #0
	strh r0, [lr], #2
	bgt _020F1954
_020F1968:
	sub r3, r3, #1
	cmp r3, #0
	add r1, r1, #0x40
	bgt _020F1944
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f191c

	arm_func_start FUN_ov16_020f197c
FUN_ov16_020f197c: ; 0x020F197C
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #0xc]
	ldr lr, [sp, #8]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	add r1, r12, r1, lsl #6
	cmp r3, #0
	add r0, r1, r0, lsl #1
	ldmlefd sp!, {r3, pc}
_020F19A0:
	mov r12, r0
	mov r1, r2
	cmp r2, #0
	ble _020F19C0
_020F19B0:
	sub r1, r1, #1
	cmp r1, #0
	strh lr, [r12], #2
	bgt _020F19B0
_020F19C0:
	sub r3, r3, #1
	cmp r3, #0
	add r0, r0, #0x40
	bgt _020F19A0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f197c

	arm_func_start FUN_ov16_020f19d4
FUN_ov16_020f19d4: ; 0x020F19D4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r2
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020F1A54
_020F19F8: ; jump table
	b _020F1A08 ; case 0
	b _020F1A1C ; case 1
	b _020F1A30 ; case 2
	b _020F1A44 ; case 3
_020F1A08:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GX_LoadBG0Char
	b _020F1A54
_020F1A1C:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GX_LoadBG1Char
	b _020F1A54
_020F1A30:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GX_LoadBG2Char
	b _020F1A54
_020F1A44:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GX_LoadBG3Char
_020F1A54:
	ldr r0, [r5, #0x18]
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f19d4

	arm_func_start FUN_ov16_020f1a60
FUN_ov16_020f1a60: ; 0x020F1A60
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r2
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020F1AE0
_020F1A84: ; jump table
	b _020F1A94 ; case 0
	b _020F1AA8 ; case 1
	b _020F1ABC ; case 2
	b _020F1AD0 ; case 3
_020F1A94:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GXS_LoadBG0Char
	b _020F1AE0
_020F1AA8:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GXS_LoadBG1Char
	b _020F1AE0
_020F1ABC:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GXS_LoadBG2Char
	b _020F1AE0
_020F1AD0:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GXS_LoadBG3Char
_020F1AE0:
	ldr r0, [r5, #0x18]
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f1a60

	arm_func_start FUN_ov16_020f1aec
FUN_ov16_020f1aec: ; 0x020F1AEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r1
	cmp r4, #3
	mov r7, #0
	addls pc, pc, r4, lsl #2
	b _020F1B38
_020F1B08: ; jump table
	b _020F1B18 ; case 0
	b _020F1B20 ; case 1
	b _020F1B28 ; case 2
	b _020F1B30 ; case 3
_020F1B18:
	bl G2_GetBG0CharPtr
	b _020F1B34
_020F1B20:
	bl G2_GetBG1CharPtr
	b _020F1B34
_020F1B28:
	bl G2_GetBG2CharPtr
	b _020F1B34
_020F1B30:
	bl G2_GetBG3CharPtr
_020F1B34:
	mov r7, r0
_020F1B38:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	moveq r5, #0x20
	beq _020F1B58
	cmp r5, #0x100
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0x40
_020F1B58:
	mov r6, #0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r5
	bl DC_FlushRange
	mov r5, #0x800
	ldr r0, _020F1C24 ; =0x0209A250
	mov r1, r5
	bl FUN_0202de44
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r5
	bl DC_FlushRange
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020F1C14
_020F1BB8: ; jump table
	b _020F1BC8 ; case 0
	b _020F1BDC ; case 1
	b _020F1BF0 ; case 2
	b _020F1C04 ; case 3
_020F1BC8:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GX_LoadBG0Scr
	b _020F1C14
_020F1BDC:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GX_LoadBG1Scr
	b _020F1C14
_020F1BF0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GX_LoadBG2Scr
	b _020F1C14
_020F1C04:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GX_LoadBG3Scr
_020F1C14:
	ldr r0, _020F1C24 ; =0x0209A250
	mov r1, r7
	bl FUN_0202e1c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F1C24: .word unk_0209A250
	arm_func_end FUN_ov16_020f1aec

	arm_func_start FUN_ov16_020f1c28
FUN_ov16_020f1c28: ; 0x020F1C28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r1
	cmp r4, #3
	mov r7, #0
	addls pc, pc, r4, lsl #2
	b _020F1C74
_020F1C44: ; jump table
	b _020F1C54 ; case 0
	b _020F1C5C ; case 1
	b _020F1C64 ; case 2
	b _020F1C6C ; case 3
_020F1C54:
	bl G2S_GetBG0CharPtr
	b _020F1C70
_020F1C5C:
	bl G2S_GetBG1CharPtr
	b _020F1C70
_020F1C64:
	bl G2S_GetBG2CharPtr
	b _020F1C70
_020F1C6C:
	bl G2S_GetBG3CharPtr
_020F1C70:
	mov r7, r0
_020F1C74:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	moveq r5, #0x20
	beq _020F1C94
	cmp r5, #0x100
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0x40
_020F1C94:
	mov r6, #0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r5
	bl DC_FlushRange
	mov r5, #0x800
	ldr r0, _020F1D60 ; =0x0209A250
	mov r1, r5
	bl FUN_0202de44
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r5
	bl DC_FlushRange
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020F1D50
_020F1CF4: ; jump table
	b _020F1D04 ; case 0
	b _020F1D18 ; case 1
	b _020F1D2C ; case 2
	b _020F1D40 ; case 3
_020F1D04:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GXS_LoadBG0Scr
	b _020F1D50
_020F1D18:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GXS_LoadBG1Scr
	b _020F1D50
_020F1D2C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GXS_LoadBG2Scr
	b _020F1D50
_020F1D40:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GXS_LoadBG3Scr
_020F1D50:
	ldr r0, _020F1D60 ; =0x0209A250
	mov r1, r7
	bl FUN_0202e1c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F1D60: .word unk_0209A250
	arm_func_end FUN_ov16_020f1c28

	arm_func_start FUN_ov16_020f1d64
FUN_ov16_020f1d64: ; 0x020F1D64
	stmfd sp!, {r3, lr}
	ldr r0, _020F1DF4 ; =0x02099EEC
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _020F1DF8 ; =0x02099F10
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F1DFC ; =0x02099EB0
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F1E00 ; =0x02099EE8
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F1E04 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_02057238
	ldr r0, _020F1E08 ; =0x02099F58
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _020F1E0C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02059880
	ldr r0, _020F1E10 ; =0x02099F30
	ldr r0, [r0]
	bl FUN_02051e50
	ldmfd sp!, {r3, pc}
_020F1DF4: .word unk_02099EEC
_020F1DF8: .word unk_02099F10
_020F1DFC: .word unk_02099EB0
_020F1E00: .word unk_02099EE8
_020F1E04: .word unk_02099EC0
_020F1E08: .word unk_02099F58
_020F1E0C: .word unk_02099F38
_020F1E10: .word unk_02099F30
	arm_func_end FUN_ov16_020f1d64

	arm_func_start FUN_ov16_020f1e14
FUN_ov16_020f1e14: ; 0x020F1E14
	stmfd sp!, {r4, lr}
	mov r4, #0
	b _020F1E28
_020F1E20:
	bl OS_WaitVBlankIntr
	add r4, r4, #1
_020F1E28:
	cmp r4, #5
	blt _020F1E20
	ldr r0, _020F1EC8 ; =0x02099EEC
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldr r0, _020F1ECC ; =0x02099F10
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, _020F1ED0 ; =0x02099EB0
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, _020F1ED4 ; =0x02099EE8
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, _020F1ED8 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_02057250
	ldr r0, _020F1EDC ; =0x02099F58
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldr r0, _020F1EE0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_020598ec
	mov r4, #0
	b _020F1EBC
_020F1EB4:
	bl OS_WaitVBlankIntr
	add r4, r4, #1
_020F1EBC:
	cmp r4, #5
	blt _020F1EB4
	ldmfd sp!, {r4, pc}
_020F1EC8: .word unk_02099EEC
_020F1ECC: .word unk_02099F10
_020F1ED0: .word unk_02099EB0
_020F1ED4: .word unk_02099EE8
_020F1ED8: .word unk_02099EC0
_020F1EDC: .word unk_02099F58
_020F1EE0: .word unk_02099F38
	arm_func_end FUN_ov16_020f1e14

	arm_func_start FUN_ov16_020f1ee4
FUN_ov16_020f1ee4: ; 0x020F1EE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r3
	mov r6, r2
	cmp r2, #0
	ble _020F1F48
	rsb r4, r1, r1, lsl #3
	mov lr, #8
_020F1F00:
	mov r7, r1
	cmp r1, #0
	ble _020F1F38
_020F1F0C:
	mov r5, r0
	mov r8, lr
_020F1F14:
	ldr r12, [r5], r1, lsl #2
	sub r8, r8, #1
	cmp r8, #0
	str r12, [r9], #4
	bgt _020F1F14
	sub r7, r7, #1
	cmp r7, #0
	add r0, r0, #4
	bgt _020F1F0C
_020F1F38:
	sub r6, r6, #1
	cmp r6, #0
	add r0, r0, r4, lsl #2
	bgt _020F1F00
_020F1F48:
	mul r2, r1, r2
	mov r0, r3
	mov r1, r2, lsl #5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020f1ee4

	arm_func_start FUN_ov16_020f1f5c
FUN_ov16_020f1f5c: ; 0x020F1F5C
	ldrsb r3, [r0]
	cmp r3, #0
	beq _020F2108
	ldr r2, _020F2114 ; =0x0208F728
_020F1F6C:
	and r12, r3, #0xff
	cmp r12, #0x81
	blo _020F1F80
	cmp r12, #0x9f
	bls _020F1F90
_020F1F80:
	cmp r12, #0xe0
	blo _020F1FB8
	cmp r12, #0xfc
	bhi _020F1FB8
_020F1F90:
	ldrsb r3, [r0]
	add r12, r1, #1
	strb r3, [r1]
	ldrsb r3, [r0, #1]!
	mov r1, r12
	cmp r3, #0
	strneb r3, [r12]
	addne r0, r0, #1
	addne r1, r12, #1
	b _020F20FC
_020F1FB8:
	cmp r3, #0x30
	blt _020F1FF0
	cmp r3, #0x39
	bgt _020F1FF0
_020F1FC8:
	add r3, r3, #0x1f
	add r3, r3, #0x8200
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r3, #0x1f
	add r3, r3, #0x8200
_020F1FE4:
	strb r3, [r1, #1]
	add r1, r1, #2
	b _020F20F8
_020F1FF0:
	cmp r3, #0x41
	blt _020F2004
	cmp r3, #0x5a
	bgt _020F2004
	b _020F1FC8
_020F2004:
	cmp r3, #0x61
	blt _020F2034
	cmp r3, #0x7a
	bgt _020F2034
	add r3, r3, #0x220
	add r3, r3, #0x8000
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r3, #0x220
	add r3, r3, #0x8000
	b _020F1FE4
_020F2034:
	cmp r3, #0x20
	blt _020F2064
	cmp r3, #0x2f
	bgt _020F2064
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x40]
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x40]
	b _020F1FE4
_020F2064:
	cmp r3, #0x3a
	blt _020F2094
	cmp r3, #0x40
	bgt _020F2094
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x54]
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x54]
	b _020F1FE4
_020F2094:
	cmp r3, #0x5b
	blt _020F20C4
	cmp r3, #0x5f
	bgt _020F20C4
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x88]
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x88]
	b _020F1FE4
_020F20C4:
	cmp r3, #0x7b
	blt _020F20F4
	cmp r3, #0x7e
	bgt _020F20F4
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0xbe]
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0xbe]
	b _020F1FE4
_020F20F4:
	strb r3, [r1], #1
_020F20F8:
	add r0, r0, #1
_020F20FC:
	ldrsb r3, [r0]
	cmp r3, #0
	bne _020F1F6C
_020F2108:
	mov r0, #0
	strb r0, [r1]
	bx lr
_020F2114: .word 0x0208F728
	arm_func_end FUN_ov16_020f1f5c

	arm_func_start FUN_ov16_020f2118
FUN_ov16_020f2118: ; 0x020F2118
	ldrsb r2, [r0]
	cmp r2, #0
	bxeq lr
	ldr r1, _020F2180 ; =0x02099E9E
_020F2128:
	and r2, r2, #0xff
	cmp r2, #0x81
	blt _020F213C
	cmp r2, #0x9f
	ble _020F214C
_020F213C:
	cmp r2, #0xe0
	blt _020F2170
	cmp r2, #0xfc
	bgt _020F2170
_020F214C:
	cmp r2, #0x81
	ldreqb r2, [r0, #1]
	cmpeq r2, #0x40
	ldreqh r2, [r1]
	moveq r2, r2, asr #8
	streqb r2, [r0]
	ldreqh r2, [r1]
	streqb r2, [r0, #1]
	add r0, r0, #1
_020F2170:
	ldrsb r2, [r0, #1]!
	cmp r2, #0
	bne _020F2128
	bx lr
_020F2180: .word unk_02099E9E
	arm_func_end FUN_ov16_020f2118

	arm_func_start FUN_ov16_020f2184
FUN_ov16_020f2184: ; 0x020F2184
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb20
	mov r11, r1
	ldr r1, [sp, #0xb4c]
	mov r10, r2
	mov r9, r3
	cmp r0, #0
	str r1, [sp, #0xb4c]
	addeq sp, sp, #0xb20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, sp, #0x20
	mov r1, r4
	add r2, sp, #0x920
	bl FUN_ov16_020f24e8
	ldr r1, [sp, #0xb54]
	ldr r5, _020F22FC ; =0x02099F50
	str r0, [sp, #0x1c]
	add r2, r1, #8
	ldr r0, [r5]
	ldr r1, [sp, #0xb50]
	bl FUN_02043310
	ldr r1, [sp, #0xb48]
	mov r3, r4
	str r1, [sp]
	ldr r0, [sp, #0xb60]
	ldr r2, [sp, #0xb5c]
	stmib sp, {r0, r11}
	str r10, [sp, #0xc]
	str r9, [sp, #0x10]
	add r4, sp, #0x120
	mov r0, #0x100
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5]
	ldr r1, [sp, #0xb58]
	ldr r6, [r0]
	add r2, r2, #8
	ldr r6, [r6, #8]
	blx r6
	ldr r0, [r5]
	bl FUN_0204331c
	ldr r0, [sp, #0x1c]
	mov r5, #0
	cmp r0, #0
	ble _020F22E4
_020F2238:
	add r0, sp, #0x920
	add r8, r0, r5, lsl #5
	ldrb r6, [r0, r5, lsl #5]
	ldrb r2, [r8, #1]
	ldr r0, _020F2300 ; =0x02099F1C
	add r1, r8, #2
	ldr r0, [r0]
	add r7, r6, r2
	bl FUN_0204294c
	mov r1, r6, lsl #3
	add r2, r4, r7, lsl #3
	ldrsh r1, [r4, r1]
	ldrsh r7, [r2, #-8]
	ldrsh r6, [r2, #-4]
	add r2, r0, r0, lsr #31
	add r0, r1, r7
	add r0, r0, r6
	mov r1, r2, asr #1
	add r0, r0, r0, lsr #31
	rsb r1, r1, r0, asr #1
	ldr r0, [sp, #0xb4c]
	add r2, sp, #0x920
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r11}
	str r10, [sp, #0xc]
	str r9, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _020F2300 ; =0x02099F1C
	ldrb r2, [r2, r5, lsl #5]
	ldr r0, [r0]
	add r3, r8, #2
	add r2, r4, r2, lsl #3
	ldr r6, [r0]
	ldrsh r2, [r2, #2]
	ldr r6, [r6, #8]
	sub r2, r2, #8
	blx r6
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blt _020F2238
_020F22E4:
	mul r1, r10, r9
	mov r0, r11
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0xb20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F22FC: .word unk_02099F50
_020F2300: .word unk_02099F1C
	arm_func_end FUN_ov16_020f2184

	arm_func_start FUN_ov16_020f2304
FUN_ov16_020f2304: ; 0x020F2304
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2ac
	sub sp, sp, #0x400
	add r11, sp, #0x400
	add r11, r11, #0xac
	str r1, [sp, #0x20]
	mov r4, r2
	add r1, sp, #0x2c
	mov r2, r11
	mov r10, r3
	bl FUN_ov16_020f24e8
	ldr r5, _020F24DC ; =0x02099F38
	mov r6, r0
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	bl FUN_ov16_02111438
	mov r7, r0
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	bl FUN_ov16_02111458
	mov r8, r0
	mov r9, #0
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r9, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, _020F24E0 ; =0x02099F50
	ldr r2, [sp, #0x6d4]
	ldr r1, [sp, #0x6d0]
	ldr r0, [r0]
	ldr r5, [sp, #0x24]
	add r2, r2, #8
	bl FUN_02043310
	ldr r0, [sp, #0x6dc]
	ldr r2, [sp, #0x6d8]
	str r8, [sp]
	str r2, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r4, sp, #0xac
	mov r0, #0x80
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x6e0]
	add r1, sp, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, _020F24E0 ; =0x02099F50
	mov r2, r5
	ldr r0, [r0]
	mov r3, r7
	bl FUN_020425fc
	ldr r0, _020F24E0 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	b _020F2494
_020F23F4:
	ldr r0, _020F24E4 ; =0x02099F1C
	add r1, r11, r9, lsl #5
	ldr r0, [r0]
	add r1, r1, #2
	bl FUN_0204294c
	add r1, r11, r9, lsl #5
	ldrb r2, [r11, r9, lsl #5]
	ldrb r12, [r1, #1]
	add r0, r0, r0, lsr #31
	mov r3, r2, lsl #3
	add r12, r2, r12
	sub lr, r12, #1
	add r2, r4, r2, lsl #3
	ldrsh r12, [r2, #2]
	mov r2, lr, lsl #3
	add lr, r4, lr, lsl #3
	ldrsh r3, [r4, r3]
	ldrsh r2, [r4, r2]
	ldrsh lr, [lr, #4]
	mov r0, r0, asr #1
	add r2, r3, r2
	add r2, r2, lr
	add r2, r2, r2, lsr #31
	rsb r0, r0, r2, asr #1
	sub r3, r12, #8
	str r8, [sp]
	stmib sp, {r0, r3}
	str r10, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _020F24E4 ; =0x02099F1C
	add r1, r1, #2
	ldr r0, [r0]
	mov r2, r5
	mov r3, r7
	bl FUN_020425fc
	add r9, r9, #1
_020F2494:
	cmp r9, r6
	blt _020F23F4
	ldr r1, [sp, #0x28]
	mov r0, r5
	bl DC_FlushRange
	ldr r0, _020F24DC ; =0x02099F38
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2ac
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F24DC: .word unk_02099F38
_020F24E0: .word unk_02099F50
_020F24E4: .word unk_02099F1C
	arm_func_end FUN_ov16_020f2304

	arm_func_start FUN_ov16_020f24e8
FUN_ov16_020f24e8: ; 0x020F24E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldrsb r10, [r0]
	mov r4, #0
	mov r7, r4
	mov r6, r4
	mov lr, r4
	cmp r10, #0
	beq _020F25F8
	mov r3, r4
	mov r12, r4
_020F2510:
	cmp r10, #0x2f
	bgt _020F2528
	bge _020F2560
	cmp r10, #0xa
	beq _020F2548
	b _020F2590
_020F2528:
	cmp r10, #0x5d
	bgt _020F2590
	cmp r10, #0x5b
	blt _020F2590
	beq _020F2554
	cmp r10, #0x5d
	beq _020F2578
	b _020F2590
_020F2548:
	strb r10, [r1, r6]
	add r6, r6, #1
	b _020F25EC
_020F2554:
	strb r7, [r2, r4, lsl #5]
_020F2558:
	add lr, lr, #1
	b _020F25EC
_020F2560:
	ldrb r9, [r2, r4, lsl #5]
	add r8, r2, r4, lsl #5
	mov r5, r12
	sub r9, r7, r9
	strb r9, [r8, #1]
	b _020F2558
_020F2578:
	add r8, r2, r4, lsl #5
	add r8, r5, r8
	mov lr, r3
	strb r3, [r8, #2]
	add r4, r4, #1
	b _020F25EC
_020F2590:
	cmp r10, #0x20
	blt _020F25A0
	cmp r10, #0x7e
	ble _020F25EC
_020F25A0:
	cmp r10, #0xa1
	blt _020F25B0
	cmp r10, #0xdf
	ble _020F25EC
_020F25B0:
	cmp lr, #2
	beq _020F25D4
	strb r10, [r1, r6]
	ldrsb r8, [r0, #1]!
	add r9, r1, r6
	add r6, r6, #2
	strb r8, [r9, #1]
	add r7, r7, #1
	b _020F25EC
_020F25D4:
	add r8, r2, r4, lsl #5
	add r9, r8, r5
	strb r10, [r9, #2]
	ldrsb r8, [r0, #1]!
	add r5, r5, #2
	strb r8, [r9, #3]
_020F25EC:
	ldrsb r10, [r0, #1]!
	cmp r10, #0
	bne _020F2510
_020F25F8:
	mov r0, r4
	strb r10, [r1, r6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020f24e8

	arm_func_start FUN_ov16_020f2604
FUN_ov16_020f2604: ; 0x020F2604
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r7, #0x10
	mov r8, #1
	cmp r1, #0
	subeq r7, r8, #0x11
	subeq r8, r8, #2
	mov r9, #0
	cmp r11, #0x11
	beq _020F26A4
	ldr r6, _020F26F0 ; =0x0209AC44
	mov r4, #0x3e8
	mov r0, r6
	mov r1, r4
	bl FUN_0202c470
	mov r10, #0
	mov r0, r6
	mov r1, r10
	mov r2, r4
	bl FUN_0202d774
	ldr r5, _020F26F4 ; =0x00008003
	b _020F2694
_020F265C:
	mov r0, r6
	bl FUN_0202b768
	mov r0, r5
	mov r1, r9
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
	mov r0, r9
	bl abs
	mov r4, r0
	mov r0, r7
	bl abs
	cmp r4, r0
	addlt r9, r9, r8
	add r10, r10, #1
_020F2694:
	cmp r10, #0x3c
	bge _020F26A4
	cmp r9, r7
	bne _020F265C
_020F26A4:
	ldr r0, _020F26F4 ; =0x00008003
	mov r1, r7
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
	ldr r0, _020F26F8 ; =0x0209AEC0
	bl FUN_0204665c
	ldr r4, _020F26F0 ; =0x0209AC44
	mov r0, r4
	bl FUN_0202bc6c
	mov r0, r4
	bl FUN_0202b758
	ldr r2, _020F26FC ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	bl OS_EnableInterrupts
	mov r0, r11
	bl OS_ResetSystem
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F26F0: .word unk_0209AC44
_020F26F4: .word 0x00008003
_020F26F8: .word unk_0209AEC0
_020F26FC: .word 0x04000208
	arm_func_end FUN_ov16_020f2604

	arm_func_start FUN_ov16_020f2700
FUN_ov16_020f2700: ; 0x020F2700
	ldr r0, _020F2710 ; =0x02099EF0
	ldr r12, _020F2714 ; = FUN_ov132_02146218
	ldr r0, [r0]
	bx r12
_020F2710: .word unk_02099EF0
_020F2714: .word FUN_ov132_02146218
	arm_func_end FUN_ov16_020f2700

	arm_func_start FUN_ov16_020f2718
FUN_ov16_020f2718: ; 0x020F2718
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F285C ; =0x04000304
	mov r0, #0xb
	ldrh r1, [r4]
	bic r1, r1, #0x8000
	strh r1, [r4]
	bl GX_SetBankForBG
	mov r5, #0
	mov r2, r5
	mov r0, #1
	mov r1, #5
	bl GX_SetGraphicsMode
	mov r0, #0x4000000
	ldr r2, [r0]
	ldr r1, _020F2860 ; =0x00006884
	bic r2, r2, #0x1f00
	str r2, [r0]
	ldr r2, [r0]
	add r1, r1, #0x800
	bic r2, r2, #0xe000
	str r2, [r0]
	ldrh r2, [r0, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #0x84
	orr r2, r2, #0x6800
	strh r2, [r0, #0xc]
	ldrh r2, [r0, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r0, #0xc]
	ldrh r2, [r0, #0xe]
	and r2, r2, #0x43
	orr r1, r2, r1
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #8]
	and r1, r1, #0x43
	orr r1, r1, #8
	strh r1, [r0, #8]
	ldrh r1, [r0, #8]
	bic r1, r1, #3
	strh r1, [r0, #8]
	ldrh r0, [r4]
	orr r0, r0, #2
	strh r0, [r4]
	bl G2_GetBG2ScrPtr
	mov r1, r0
	mov r0, r5
	mov r4, #0x20000
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3ScrPtr
	mov r2, r4
	mov r1, r0
	mov r0, r5
	bl MIi_CpuClearFast
	bl G2_GetBG2ScrPtr
	mov r4, r0
	bl G2_GetBG3ScrPtr
	mov r1, r4
	str r5, [sp]
	mov r2, r0
	ldr r0, _020F2864 ; =0x0209A8A0
	mov r3, r5
	bl FUN_0202e4cc
	bl G2_GetBG0ScrPtr
_020F282C:
	mov r1, r5, lsl #1
	strh r5, [r0, r1]
	add r5, r5, #1
	cmp r5, #0x400
	blt _020F282C
	bl G2_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x6000
	bl MIi_CpuClearFast
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, r4, r5, pc}
_020F285C: .word 0x04000304
_020F2860: .word 0x00006884
_020F2864: .word unk_0209A8A0
	arm_func_end FUN_ov16_020f2718

	arm_func_start FUN_ov16_020f2868
FUN_ov16_020f2868: ; 0x020F2868
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x8c
	ldr r5, _020F2A04 ; =0x02119ED4
	mov r4, #0
	ldr r8, [r5]
	bl FUN_ov16_020f2718
	ldr r0, _020F2A08 ; =0x02118474
	mov r6, #1
	ldr r0, [r0, #8]
	mov r1, r8
	cmp r0, #0
	moveq r6, r4
	ldr r0, _020F2A0C ; =0x0209A8A0
	mov r2, r4
	mov r3, r4
	str r6, [sp]
	bl L5_PlayOpeningMovie
	mov r0, #6
	bl FUN_ov16_020f1468
	add r7, sp, #0x44
	str r4, [r5, #0xc]
	mov r0, r7
	str r4, [r5, #8]
	bl FS_InitFile
	add r6, sp, #4
	ldr r1, _020F2A10 ; =0x02118498
	mov r2, r8
	mov r0, r6
	bl sprintf
	mov r1, r6
	mov r0, r7
	bl FS_OpenFile
	cmp r0, #0
	beq _020F2984
	mov r0, r7
	bl FS_GetLength
	mov r6, r0
	ldr r0, _020F2A14 ; =0x0209A250
	mov r1, r6
	bl FUN_0202de44
	mov r1, r0
	mov r0, r7
	mov r2, r6
	str r1, [r5, #0xc]
	bl FS_ReadFile
	mov r0, r7
	bl FS_CloseFile
	ldr r1, [r5, #0xc]
	add r0, r1, #4
	str r0, [r5, #8]
	ldr r1, [r1]
	ldr r0, [r5]
	str r1, [r0, #0x24]
	ldr r1, [r5, #8]
	add r0, r1, #4
	str r0, [r5, #8]
	ldr r1, [r1]
	ldr r0, [r5]
	str r1, [r0, #0x28]
	ldr r0, [r5, #8]
	add r3, r0, #4
	str r3, [r5, #8]
	ldr r2, [r0]
	ldr r1, [r5]
	mov r0, r2, asr #1
	str r3, [r1, #0x2c]
	add r0, r2, r0, lsr #30
	ldr r1, [r5, #8]
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #2
	str r0, [r5, #8]
_020F2984:
	ldr r0, [r5]
	ldr r6, _020F2A0C ; =0x0209A8A0
	str r4, [r0, #0x30]
_020F2990:
	bl FUN_0206ee5c
	mov r0, r6
	bl FUN_0202e78c
	cmp r0, #0
	bne _020F2990
	mov r0, #6
	bl FUN_ov16_020f1514
	mov r0, #0x10
	bl FUN_0206eed0
	ldr r0, _020F2A08 ; =0x02118474
	mov r1, #1
	ldr r0, [r0, #8]
	cmp r0, #0
	ldr r0, _020F2A0C ; =0x0209A8A0
	moveq r1, #0
	bl FUN_0202eb00
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _020F29E8
	ldr r0, _020F2A14 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r5, #0xc]
_020F29E8:
	bl FUN_0206ee5c
	bl FUN_ov16_020f1670
	cmp r0, #0
	bne _020F29E8
	str r4, [r5, #4]
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020F2A04: .word ov16_02119ED4
_020F2A08: .word ov16_02118474
_020F2A0C: .word unk_0209A8A0
_020F2A10: .word ov16_02118498
_020F2A14: .word unk_0209A250
	arm_func_end FUN_ov16_020f2868

	arm_func_start FUN_ov16_020f2a18
FUN_ov16_020f2a18: ; 0x020F2A18
	stmfd sp!, {r4, lr}
	ldr r4, _020F2A68 ; =0x02119ED4
	str r0, [r4]
	bl STD_CopyString
	ldr r0, _020F2A6C ; =0x0209A250
	mov r1, #0x4000
	bl FUN_0202de44
	ldr r1, [r4]
	str r0, [r1, #0x20]
	ldr r0, [r4]
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020F2A70 ; =FUN_ov16_020f2868
	add r2, r1, #0x4000
	mov r1, #0
	bl FUN_0206efa0
	mov r0, #1
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020F2A68: .word ov16_02119ED4
_020F2A6C: .word unk_0209A250
_020F2A70: .word FUN_ov16_020f2868
	arm_func_end FUN_ov16_020f2a18

	arm_func_start FUN_ov16_020f2a74
FUN_ov16_020f2a74: ; 0x020F2A74
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldreq r0, _020F2A9C ; =0x02119ED4
	ldreq r0, [r0]
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020F2AA0 ; =0x0209A250
	bl FUN_0202e1c0
	ldmfd sp!, {r3, pc}
_020F2A9C: .word ov16_02119ED4
_020F2AA0: .word unk_0209A250
	arm_func_end FUN_ov16_020f2a74

	arm_func_start FUN_ov16_020f2aa4
FUN_ov16_020f2aa4: ; 0x020F2AA4
	ldr r0, _020F2AB0 ; =0x02119ED4
	ldr r0, [r0, #4]
	bx lr
_020F2AB0: .word ov16_02119ED4
	arm_func_end FUN_ov16_020f2aa4

	arm_func_start FUN_ov16_020f2ab4
FUN_ov16_020f2ab4: ; 0x020F2AB4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	ldr r1, _020F2CC8 ; =0x04000006
	ldr r4, _020F2CCC ; =0x0209A8A0
	ldrh r5, [r1]
	mov r0, r4
	bl FUN_0202e784
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	cmp r5, #0xc0
	addlt sp, sp, #0x1c
	ldmltfd sp!, {r4, r5, pc}
	mov r0, r4
	bl FUN_0202e4ec
	mov r1, #0x4000000
	cmp r0, #0
	ldreq r0, [r1]
	biceq r0, r0, #0x1f00
	orreq r0, r0, #0x500
	streq r0, [r1]
	ldrne r0, [r1]
	bicne r0, r0, #0x1f00
	orrne r0, r0, #0x900
	strne r0, [r1]
	ldr r4, _020F2CCC ; =0x0209A8A0
	mov r0, r4
	bl FUN_0202ec30
	ldr r2, [r4, #0x1a0]
	ldr r1, [r4, #0x198]
	mov r5, #3
	add r4, r2, r1
	mov r3, #0xe8000000
	mov r2, r0
	umull r0, r1, r4, r3
	mla r1, r4, r5, r1
	mov r4, r4, asr #0x1f
	mla r1, r4, r3, r1
	mov r3, #0
	bl _ull_div
	ldr r4, _020F2CD0 ; =0x02119ED4
	ldr r1, [r4, #8]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r1, #0x1e
	mul r1, r0, r1
	ldr r2, _020F2CD4 ; =0x10624DD3
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	ldr r1, [r4]
	add r3, r0, r3, asr #6
	str r3, [r1, #0x30]
	ldr r2, [r4]
	ldr r0, [r2, #0x2c]
	ldr r1, [r2, #0x30]
	cmp r0, #0
	beq _020F2C04
	ldr r0, [r2, #0x24]
	cmp r1, r0
	addlt sp, sp, #0x1c
	ldmltfd sp!, {r4, r5, pc}
	bl G2_GetBG0CharPtr
	str r5, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r1, #0xa4
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [r4]
	mov r1, r0
	ldr r0, [r2, #0x2c]
	mov r2, #0x100
	mov r3, #0xc0
	bl FUN_ov16_020f2184
	ldr r0, [r4]
	add sp, sp, #0x1c
	str r5, [r0, #0x2c]
	ldmfd sp!, {r4, r5, pc}
_020F2C04:
	ldr r0, [r2, #0x28]
	cmp r1, r0
	addlt sp, sp, #0x1c
	ldmltfd sp!, {r4, r5, pc}
	bl G2_GetBG0CharPtr
	mov r5, #0
	str r5, [sp]
	mov r1, #0xa0
	str r1, [sp, #4]
	mov r2, #0x100
	str r2, [sp, #8]
	mov r1, #0x20
	str r1, [sp, #0xc]
	ldr r3, _020F2CD8 ; =0x02099F50
	mov r1, r0
	ldr r0, [r3]
	mov r3, #0xc0
	bl FUN_020435b0
	ldr r1, [r4, #8]
	add r0, r1, #4
	str r0, [r4, #8]
	ldr r1, [r1]
	ldr r0, [r4]
	str r1, [r0, #0x24]
	ldr r2, [r4]
	ldr r0, [r2, #0x24]
	cmp r0, #0
	addlt sp, sp, #0x1c
	strlt r5, [r4, #8]
	ldmltfd sp!, {r4, r5, pc}
	ldr r1, [r4, #8]
	add r0, r1, #4
	str r0, [r4, #8]
	ldr r0, [r1]
	str r0, [r2, #0x28]
	ldr r0, [r4, #8]
	add r3, r0, #4
	str r3, [r4, #8]
	ldr r2, [r0]
	ldr r1, [r4]
	mov r0, r2, asr #1
	str r3, [r1, #0x2c]
	add r0, r2, r0, lsr #30
	ldr r1, [r4, #8]
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #2
	str r0, [r4, #8]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_020F2CC8: .word 0x04000006
_020F2CCC: .word unk_0209A8A0
_020F2CD0: .word ov16_02119ED4
_020F2CD4: .word 0x10624DD3
_020F2CD8: .word unk_02099F50
	arm_func_end FUN_ov16_020f2ab4

	arm_func_start FUN_ov16_020f2cdc
FUN_ov16_020f2cdc: ; 0x020F2CDC
	stmfd sp!, {r3, lr}
_020F2CE0:
	bl FUN_ov16_020f1670
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_0206ee5c
	b _020F2CE0
	arm_func_end FUN_ov16_020f2cdc

	arm_func_start FUN_ov16_020f2cf4
FUN_ov16_020f2cf4: ; 0x020F2CF4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f2cf4

	arm_func_start FUN_ov16_020f2cf8
FUN_ov16_020f2cf8: ; 0x020F2CF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x40
	movs r4, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020F2D94 ; =0x02099F78
	ldr r1, _020F2D98 ; =0x021184B4
	bl L5_IniFileGetParam
	add r5, sp, #0
	mov r6, r0
	ldr r1, _020F2D9C ; =0x021184BC
	mov r0, r5
	mov r2, r9
	bl sprintf
	cmp r8, #0
	blt _020F2D58
	ldr r1, _020F2DA0 ; =0x021184D8
	mov r0, r5
	mov r2, r5
	mov r3, r8
	bl sprintf
_020F2D58:
	cmp r7, #0
	beq _020F2D70
	ldr r1, _020F2DA4 ; =0x0211789C
	add r0, sp, #0
	add r1, r1, r6, lsl #1
	bl strcat
_020F2D70:
	add r5, sp, #0
	ldr r1, _020F2DA8 ; =0x021184E0
	mov r0, r5
	bl strcat
	mov r0, r4
	mov r1, r5
	bl strcpy
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F2D94: .word unk_02099F78
_020F2D98: .word ov16_021184B4
_020F2D9C: .word ov16_021184BC
_020F2DA0: .word ov16_021184D8
_020F2DA4: .word 0x0211789C
_020F2DA8: .word ov16_021184E0
	arm_func_end FUN_ov16_020f2cf8

	arm_func_start FUN_ov16_020f2dac
FUN_ov16_020f2dac: ; 0x020F2DAC
	stmfd sp!, {r3, lr}
	ldr r0, _020F2E1C ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _020F2DE4
	beq _020F2DD0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020F2DD0:
	ldr r2, _020F2E1C ; =0x02099EF0
	mov r0, #0
	ldr r1, _020F2E20 ; =0x00000084
	str r0, [r2]
	bl FS_UnloadOverlay
_020F2DE4:
	ldr r0, _020F2E24 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020F2E28 ; =0x00000083
	bl FUN_ov16_LoadOverlay
	mov r0, #0x38
	bl operator_new
	cmp r0, #0
	beq _020F2E10
	bl FUN_ov131_0213acc0 ; may be ov132
_020F2E10:
	ldr r1, _020F2E24 ; =0x02099F44
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_020F2E1C: .word unk_02099EF0
_020F2E20: .word 0x00000084
_020F2E24: .word unk_02099F44
_020F2E28: .word 0x00000083
	arm_func_end FUN_ov16_020f2dac

	arm_func_start FUN_ov16_020f2e2c
FUN_ov16_020f2e2c: ; 0x020F2E2C
	stmfd sp!, {r3, lr}
	ldr r0, _020F2E94 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _020F2E5C
	beq _020F2E48
	bl operator_delete
_020F2E48:
	ldr r2, _020F2E94 ; =0x02099F44
	mov r0, #0
	ldr r1, _020F2E98 ; =0x00000083
	str r0, [r2]
	bl FS_UnloadOverlay
_020F2E5C:
	ldr r0, _020F2E9C ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020F2EA0 ; =0x00000084
	bl FUN_ov16_LoadOverlay
	ldr r0, _020F2EA4 ; =0x000005C8
	bl operator_new
	cmp r0, #0
	beq _020F2E88
	bl FUN_ov131_0213acc0 ; may be ov132
_020F2E88:
	ldr r1, _020F2E9C ; =0x02099EF0
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_020F2E94: .word unk_02099F44
_020F2E98: .word 0x00000083
_020F2E9C: .word unk_02099EF0
_020F2EA0: .word 0x00000084
_020F2EA4: .word 0x000005C8
	arm_func_end FUN_ov16_020f2e2c

	arm_func_start FUN_ov16_020f2ea8
FUN_ov16_020f2ea8: ; 0x020F2EA8
	mul r2, r1, r2
	cmp r2, #0
	mov r3, #0
	ble _020F2ECC
_020F2EB8:
	mov r1, r3, lsl #1
	strh r3, [r0, r1]
	add r3, r3, #1
	cmp r3, r2
	blt _020F2EB8
_020F2ECC:
	ldr r12, _020F2ED8 ; =DC_FlushRange
	mov r1, r2, lsl #1
	bx r12
_020F2ED8: .word DC_FlushRange
	arm_func_end FUN_ov16_020f2ea8

	arm_func_start FUN_ov16_020f2edc
FUN_ov16_020f2edc: ; 0x020F2EDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mul r1, r6, r5
	ldr r0, _020F2F1C ; =0x0209A250
	mov r1, r1, lsl #1
	mov r2, #0x11
	mov r3, #1
	bl FUN_0202de58
	movs r4, r0
	beq _020F2F14
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f2ea8
_020F2F14:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020F2F1C: .word unk_0209A250
	arm_func_end FUN_ov16_020f2edc

	arm_func_start FUN_ov16_020f2f20
FUN_ov16_020f2f20: ; 0x020F2F20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r3, [r5, #0xc]
	ldrh r2, [r5, #0xe]
	ldr r0, [r5, #4]
	mov r1, #0
	mul r2, r3, r2
	mov r4, r2, lsl #5
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, [r5, #4]
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f2f20

	arm_func_start FUN_ov16_020f2f58
FUN_ov16_020f2f58: ; 0x020F2F58
	mul r1, r0, r1
	ldr r0, _020F2F74 ; =0x0209A250
	ldr r12, _020F2F78 ; =FUN_0202de58
	mov r1, r1, lsl #5
	mov r2, #0x11
	mov r3, #1
	bx r12
_020F2F74: .word unk_0209A250
_020F2F78: .word FUN_0202de58
	arm_func_end FUN_ov16_020f2f58

	arm_func_start FUN_ov16_020f2f7c
FUN_ov16_020f2f7c: ; 0x020F2F7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x14
	mul r4, r1, r2
	mov r5, r0
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f2f7c

	arm_func_start FUN_ov16_020f2fa8
FUN_ov16_020f2fa8: ; 0x020F2FA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f2edc
	str r0, [r6]
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f2f58
	str r0, [r6, #4]
	strh r5, [r6, #0xc]
	strh r4, [r6, #0xe]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020f2fa8

	arm_func_start FUN_ov16_020f2fe4
FUN_ov16_020f2fe4: ; 0x020F2FE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	cmp r8, #0
	mov r9, r0
	mov r7, #0
	cmpgt r8, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r6, _020F3050 ; =0x0209A250
	mov r5, r7
	mov r4, r7
_020F300C:
	ldr r1, [r9]
	cmp r1, #0
	beq _020F3024
	mov r0, r6
	bl FUN_0202e1c0
	str r5, [r9]
_020F3024:
	ldr r1, [r9, #4]
	cmp r1, #0
	beq _020F303C
	mov r0, r6
	bl FUN_0202e1c0
	str r4, [r9, #4]
_020F303C:
	add r7, r7, #1
	cmp r7, r8
	add r9, r9, #0x14
	blt _020F300C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F3050: .word unk_0209A250
	arm_func_end FUN_ov16_020f2fe4

	arm_func_start FUN_ov16_020f3054
FUN_ov16_020f3054: ; 0x020F3054
	ldr r12, _020F3064 ; =FUN_ov16_020f3068
	mov r2, #0
	str r2, [r1]
	bx r12
_020F3064: .word FUN_ov16_020f3068
	arm_func_end FUN_ov16_020f3054

	arm_func_start FUN_ov16_020f3068
FUN_ov16_020f3068: ; 0x020F3068
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r1
	ldr r2, [r4]
	mov r1, r0
	cmp r2, #0
	mov r0, #1
	mov r2, #0
	mov r12, #1
	movne r0, #0
	ldr r3, _020F30E4 ; =0x0209A250
	strb r2, [r4, #8]
	strb r12, [r4, #9]
	strb r0, [r4, #0xa]
	ldr r0, [r3]
	cmp r0, #0
	beq _020F30C8
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, r4
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	mov r2, r0
_020F30C8:
	cmp r2, #0
	moveq r0, #0
	movne r0, #1
	str r2, [r4, #4]
	strneb r0, [r4, #8]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_020F30E4: .word unk_0209A250
	arm_func_end FUN_ov16_020f3068

	arm_func_start FUN_ov16_020f30e8
FUN_ov16_020f30e8: ; 0x020F30E8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r1
	ldr r12, [r5]
	mov r1, r0
	cmp r12, #0
	mov r0, #1
	mov r4, #0
	mov lr, #1
	movne r0, #0
	ldr r12, _020F3168 ; =0x0209A250
	strb r4, [r5, #8]
	strb lr, [r5, #9]
	strb r0, [r5, #0xa]
	ldr r0, [r12]
	cmp r0, #0
	beq _020F314C
	stmia sp, {r2, r3}
	ldr r2, [sp, #0x20]
	mov r3, r12
	str r2, [sp, #8]
	mov r2, r5
	str lr, [sp, #0xc]
	bl FUN_0202eff0
	mov r4, r0
_020F314C:
	cmp r4, #0
	moveq r0, #0
	movne r0, #1
	str r4, [r5, #4]
	strneb r0, [r5, #8]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020F3168: .word unk_0209A250
	arm_func_end FUN_ov16_020f30e8

	arm_func_start FUN_ov16_020f316c
FUN_ov16_020f316c: ; 0x020F316C
	ldr r12, _020F317C ; =FUN_ov16_020f3180
	mov r2, #0
	str r2, [r1]
	bx r12
_020F317C: .word FUN_ov16_020f3180
	arm_func_end FUN_ov16_020f316c

	arm_func_start FUN_ov16_020f3180
FUN_ov16_020f3180: ; 0x020F3180
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r1
	ldr r2, [r4]
	mov r1, r0
	cmp r2, #0
	mov r0, #1
	mov r2, #0
	mov r12, #1
	movne r0, #0
	ldr r3, _020F31F8 ; =0x0209A250
	strb r2, [r4, #8]
	strb r12, [r4, #9]
	strb r0, [r4, #0xa]
	ldr r0, [r3]
	cmp r0, #0
	beq _020F31E0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, r4
	str r12, [sp, #0xc]
	bl FUN_0202f294
	mov r2, r0
_020F31E0:
	mov r0, #0
	cmp r2, #0
	str r2, [r4, #4]
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_020F31F8: .word unk_0209A250
	arm_func_end FUN_ov16_020f3180

	arm_func_start FUN_ov16_020f31fc
FUN_ov16_020f31fc: ; 0x020F31FC
	stmfd sp!, {r3, lr}
	mov lr, #0
	ldr r12, [sp, #8]
	str lr, [r1]
	str r12, [sp]
	bl FUN_ov16_020f3234
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f31fc

	arm_func_start FUN_ov16_020f3218
FUN_ov16_020f3218: ; 0x020F3218
	stmfd sp!, {r3, lr}
	mov lr, #0
	ldr r12, [sp, #8]
	str lr, [r1]
	str r12, [sp]
	bl FUN_ov16_020f30e8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f3218

	arm_func_start FUN_ov16_020f3234
FUN_ov16_020f3234: ; 0x020F3234
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r1
	ldr r12, [r5]
	mov r1, r0
	cmp r12, #0
	mov r0, #1
	mov r4, #0
	mov lr, #1
	movne r0, #0
	ldr r12, _020F32B0 ; =0x0209A250
	strb r4, [r5, #8]
	strb lr, [r5, #9]
	strb r0, [r5, #0xa]
	ldr r0, [r12]
	cmp r0, #0
	beq _020F3298
	stmia sp, {r2, r3}
	ldr r2, [sp, #0x20]
	mov r3, r12
	str r2, [sp, #8]
	mov r2, r5
	str lr, [sp, #0xc]
	bl FUN_0202f294
	mov r4, r0
_020F3298:
	mov r0, #0
	cmp r4, #0
	str r4, [r5, #4]
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020F32B0: .word unk_0209A250
	arm_func_end FUN_ov16_020f3234

	arm_func_start FUN_ov16_020f32b4
FUN_ov16_020f32b4: ; 0x020F32B4
	stmfd sp!, {r4, lr}
	mov lr, r0
	mov r4, r1
	mov r12, #0
	mov r3, r2
	ldr r0, _020F3308 ; =0x0209C2C4
	mov r1, lr
	mov r2, r4
	strb r12, [r4, #0xa]
	strb r12, [r4, #8]
	strb r12, [r4, #9]
	bl FUN_0202fc4c
	str r0, [r4, #4]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020F3308: .word unk_0209C2C4
	arm_func_end FUN_ov16_020f32b4

	arm_func_start FUN_ov16_020f330c
FUN_ov16_020f330c: ; 0x020F330C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	cmp r7, #0
	ble _020F3380
	ldr r4, _020F3388 ; =0x0209A250
	mvn r6, #0
	mov r5, #1
_020F332C:
	ldr r1, [r8]
	cmp r1, #0
	ldrneb r0, [r8, #9]
	cmpne r0, #0
	beq _020F3370
	ldrb r0, [r8, #8]
	cmp r0, #0
	bne _020F3370
	ldr r0, [r4]
	cmp r0, #0
	moveq r0, r6
	beq _020F3360
	bl FUN_0202f57c
_020F3360:
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	strb r5, [r8, #8]
_020F3370:
	sub r7, r7, #1
	cmp r7, #0
	add r8, r8, #0xc
	bgt _020F332C
_020F3380:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F3388: .word unk_0209A250
	arm_func_end FUN_ov16_020f330c

	arm_func_start FUN_ov16_020f338c
FUN_ov16_020f338c: ; 0x020F338C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	cmp r7, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _020F33F8 ; =0x0209A250
	mov r6, #1
	mov r5, #0
_020F33AC:
	ldr r1, [r8]
	cmp r1, #0
	ldrneb r0, [r8, #9]
	cmpne r0, #0
	beq _020F33E4
	ldrb r0, [r8, #8]
	cmp r0, #0
	bne _020F33E4
	ldr r0, [r4]
	cmp r0, #0
	beq _020F33E0
	mov r2, r6
	bl FUN_0202f678
_020F33E0:
	str r5, [r8]
_020F33E4:
	sub r7, r7, #1
	cmp r7, #0
	add r8, r8, #0xc
	bgt _020F33AC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F33F8: .word unk_0209A250
	arm_func_end FUN_ov16_020f338c

	arm_func_start FUN_ov16_020f33fc
FUN_ov16_020f33fc: ; 0x020F33FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	ldrneb r0, [r4, #9]
	cmpne r0, #0
	ldrneb r0, [r4, #0xa]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020F3434 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_020F3434: .word unk_0209A250
	arm_func_end FUN_ov16_020f33fc

	arm_func_start FUN_ov16_020f3438
FUN_ov16_020f3438: ; 0x020F3438
	stmfd sp!, {r3, lr}
	ldr r1, _020F3458 ; =0x02118518
	mov r2, #0x10
	bl STD_CompareNString
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020F3458: .word ov16_02118518
	arm_func_end FUN_ov16_020f3438

	arm_func_start FUN_ov16_020f345c
FUN_ov16_020f345c: ; 0x020F345C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r3
	ldr r3, _020F34EC ; =0x0209A250
	mov r12, r0
	ldr r0, [r3]
	mov r4, #0
	mov r7, r1
	mov r6, r2
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _020F34AC
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r2, sp, #0x10
	mov r1, r12
	str r4, [sp, #0xc]
	bl FUN_0202eff0
_020F34AC:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020f34f0
	mov r4, r0
	ldr r1, [sp, #0x10]
	ldr r0, _020F34EC ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020F34EC: .word unk_0209A250
	arm_func_end FUN_ov16_020f345c

	arm_func_start FUN_ov16_020f34f0
FUN_ov16_020f34f0: ; 0x020F34F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_020f3438
	cmp r0, #0
	mov r1, #0x30
	moveq r1, #0x20
	ldrh r0, [r7, #0x12]
	add r12, r7, r1
	cmp r0, #0
	blt _020F3534
	cmp r0, #3
	ble _020F353C
_020F3534:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F353C:
	ldrh r2, [r7, #0x16]
	mov r1, #0
	cmp r2, #0
	ble _020F3654
	mov r8, #0xc
_020F3550:
	add r3, r1, r2
	add r3, r3, r3, lsr #31
	cmp r0, #3
	mov lr, r3, asr #1
	addls pc, pc, r0, lsl #2
	b _020F35A4
_020F3568: ; jump table
	b _020F3578 ; case 0
	b _020F3588 ; case 1
	b _020F3594 ; case 2
	b _020F3598 ; case 3
_020F3578:
	mul r9, lr, r8
	add r3, r12, r9
	ldr r9, [r12, r9]
	b _020F35AC
_020F3588:
	add r3, r12, lr, lsl #3
	ldr r9, [r12, lr, lsl #3]
	b _020F35AC
_020F3594:
	b _020F3588
_020F3598:
	add r3, r12, lr, lsl #2
	ldr r9, [r12, lr, lsl #2]
	b _020F35AC
_020F35A4:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F35AC:
	cmp r6, r9
	addhi r1, lr, #1
	bhi _020F364C
	movlo r2, lr
	blo _020F364C
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020F363C
_020F35CC: ; jump table
	b _020F35DC ; case 0
	b _020F35F4 ; case 1
	b _020F3600 ; case 2
	b _020F361C ; case 3
_020F35DC:
	cmp r5, #0
	ldrne r0, [r3, #4]
	strne r0, [r5]
	cmp r4, #0
	ldrne r0, [r3, #8]
	b _020F3634
_020F35F4:
	cmp r5, #0
	ldrne r0, [r3, #4]
	b _020F3628
_020F3600:
	cmp r5, #0
	ldrne r0, [r7, #0x1c]
	mulne r0, lr, r0
	strne r0, [r5]
	cmp r4, #0
	ldrne r0, [r3, #4]
	b _020F3634
_020F361C:
	cmp r5, #0
	ldrne r0, [r7, #0x1c]
	mulne r0, lr, r0
_020F3628:
	strne r0, [r5]
	cmp r4, #0
	ldrne r0, [r7, #0x1c]
_020F3634:
	strne r0, [r4]
	b _020F3644
_020F363C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F3644:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F364C:
	cmp r1, r2
	blt _020F3550
_020F3654:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020f34f0

	arm_func_start FUN_ov16_020f365c
FUN_ov16_020f365c: ; 0x020F365C
	ldrh r2, [r0, #0x50]
	mov r0, #0x64
	mla r0, r2, r0, r1
	bx lr
	arm_func_end FUN_ov16_020f365c

	arm_func_start FUN_ov16_020f366c
FUN_ov16_020f366c: ; 0x020F366C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	mov r1, r2
	mov r4, r3
	bl FUN_ov16_020f365c
	mov r1, r0
	ldr r3, [sp, #0x10]
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f366c

	arm_func_start FUN_ov16_020f369c
FUN_ov16_020f369c: ; 0x020F369C
	stmfd sp!, {r3, lr}
	ldr r12, _020F36E8 ; =0x02099F34
	mov r3, #0xc
	ldr lr, [r12]
	mul r12, r2, r3
	mla r3, r1, r3, lr
	add r1, r3, r12
	ldrb r2, [r1, #1]
	ldr r1, _020F36EC ; =0x00002710
	ldrb r12, [r3, r12]
	mul r3, r2, r1
	ldr r1, _020F36F0 ; =0x000F4240
	ldrb r2, [r0, #0x5c]
	mla r3, r12, r1, r3
	mov r1, #0x64
	mla r1, r2, r1, r3
	ldrb r0, [r0, #0x52]
	add r0, r0, r1
	ldmfd sp!, {r3, pc}
_020F36E8: .word unk_02099F34
_020F36EC: .word 0x00002710
_020F36F0: .word 0x000F4240
	arm_func_end FUN_ov16_020f369c

	arm_func_start FUN_ov16_020f36f4
FUN_ov16_020f36f4: ; 0x020F36F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	bl FUN_ov16_020f369c
	mov r1, r0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, r4
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f36f4

	arm_func_start FUN_ov16_020f3724
FUN_ov16_020f3724: ; 0x020F3724
	ldr r3, _020F3740 ; =0x02099F34
	mov r2, #0xc
	ldr r3, [r3]
	mla r3, r0, r2, r3
	mla r0, r1, r2, r3
	ldrh r0, [r0, #2]
	bx lr
_020F3740: .word unk_02099F34
	arm_func_end FUN_ov16_020f3724

	arm_func_start FUN_ov16_020f3744
FUN_ov16_020f3744: ; 0x020F3744
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	mov r1, r2
	mov r4, r3
	bl FUN_ov16_020f3724
	mov r1, r0
	ldr r3, [sp, #0x10]
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f3744

	arm_func_start FUN_ov16_020f3774
FUN_ov16_020f3774: ; 0x020F3774
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r3
	mov r6, r0
	mov r3, #0x73
	cmp r5, #1
	movne r3, #0x62
	mov r0, r2
	ldr r1, _020F37C0 ; =0x0211852C
	mov r2, r3
	bl sprintf
	ldrh r3, [r6, #0x50]
	mov r2, #0x73
	cmp r5, #1
	ldr r1, _020F37C4 ; =0x0211854C
	movne r2, #0x62
	mov r0, r4
	bl sprintf
	ldmfd sp!, {r4, r5, r6, pc}
_020F37C0: .word ov16_0211852C
_020F37C4: .word ov16_0211854C
	arm_func_end FUN_ov16_020f3774

	arm_func_start FUN_ov16_020f37c8
FUN_ov16_020f37c8: ; 0x020F37C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r3
	mov r6, r0
	mov r3, #0x73
	cmp r5, #1
	movne r3, #0x62
	mov r0, r2
	ldr r1, _020F3814 ; =0x02118560
	mov r2, r3
	bl sprintf
	ldrh r3, [r6, #0x50]
	mov r2, #0x73
	cmp r5, #1
	ldr r1, _020F3818 ; =0x02118580
	movne r2, #0x62
	mov r0, r4
	bl sprintf
	ldmfd sp!, {r4, r5, r6, pc}
_020F3814: .word ov16_02118560
_020F3818: .word ov16_02118580
	arm_func_end FUN_ov16_020f37c8

	arm_func_start FUN_ov16_020f381c
FUN_ov16_020f381c: ; 0x020F381C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r12, _020F388C ; =0x02099F34
	mov r5, r1
	ldr r12, [r12]
	mov r1, #0xc
	mla r12, r2, r1, r12
	mla r4, r3, r1, r12
	mov r6, r0
	mov r2, #0x73
	cmp r5, #1
	ldr r0, [sp, #0x18]
	ldr r1, _020F3890 ; =0x02118594
	movne r2, #0x62
	bl sprintf
	cmp r5, #1
	moveq r2, #0x73
	ldrb r0, [r6, #0x52]
	ldrb r1, [r6, #0x5c]
	movne r2, #0x62
	str r1, [sp]
	str r0, [sp, #4]
	ldrb r3, [r4, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, _020F3894 ; =0x021185B4
	bl sprintf
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020F388C: .word unk_02099F34
_020F3890: .word ov16_02118594
_020F3894: .word ov16_021185B4
	arm_func_end FUN_ov16_020f381c

	arm_func_start FUN_ov16_020f3898
FUN_ov16_020f3898: ; 0x020F3898
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr lr, _020F38DC ; =0x02099F34
	mov r12, #0xc
	ldr lr, [lr]
	mul r4, r1, r12
	mla r5, r0, r12, lr
	ldr r1, _020F38E0 ; =0x021185CC
	mov r0, r2
	add r6, r5, r4
	mov r7, r3
	bl sprintf
	ldrb r2, [r5, r4]
	ldrb r3, [r6, #9]
	ldr r1, _020F38E4 ; =0x021185E8
	mov r0, r7
	bl sprintf
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F38DC: .word unk_02099F34
_020F38E0: .word ov16_021185CC
_020F38E4: .word ov16_021185E8
	arm_func_end FUN_ov16_020f3898

	arm_func_start FUN_ov16_020f38e8
FUN_ov16_020f38e8: ; 0x020F38E8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r12, _020F3950 ; =0x02099EF8
	mov r5, r1
	ldr r1, [r12]
	mov r6, r0
	add r4, r1, r2, lsl #3
	cmp r5, #1
	moveq r2, #0x73
	ldr r1, _020F3954 ; =0x02118600
	movne r2, #0x62
	mov r0, r3
	bl sprintf
	ldrb r0, [r6, #0x5c]
	mov r2, #0x73
	cmp r5, #1
	str r0, [sp]
	ldrb r3, [r4, #1]
	ldr r0, [sp, #0x18]
	ldr r1, _020F3958 ; =0x02118620
	str r3, [sp, #4]
	ldrb r3, [r4]
	movne r2, #0x62
	bl sprintf
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020F3950: .word unk_02099EF8
_020F3954: .word ov16_02118600
_020F3958: .word ov16_02118620
	arm_func_end FUN_ov16_020f38e8

	arm_func_start FUN_ov16_020f395c
FUN_ov16_020f395c: ; 0x020F395C
	ldrb r0, [r0, #0x5c]
	ldr r12, _020F3968 ; =FUN_ov16_020f396c
	bx r12
_020F3968: .word FUN_ov16_020f396c
	arm_func_end FUN_ov16_020f395c

	arm_func_start FUN_ov16_020f396c
FUN_ov16_020f396c: ; 0x020F396C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldr r1, _020F39A0 ; =0x02118638
	mov r0, r2
	mov r4, r3
	bl sprintf
	ldr r1, _020F39A4 ; =0x02118654
	mov r0, r4
	mov r2, r5
	mov r3, r6
	bl sprintf
	ldmfd sp!, {r4, r5, r6, pc}
_020F39A0: .word ov16_02118638
_020F39A4: .word ov16_02118654
	arm_func_end FUN_ov16_020f396c

	arm_func_start FUN_ov16_020f39a8
FUN_ov16_020f39a8: ; 0x020F39A8
	stmfd sp!, {r3, lr}
	ldrh r12, [r1, #0x50]
	mov r1, #0x64
	mul r1, r12, r1
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f39a8

	arm_func_start FUN_ov16_020f39c0
FUN_ov16_020f39c0: ; 0x020F39C0
	stmfd sp!, {r3, lr}
	ldrh r12, [r1, #0x50]
	mov r1, #0x64
	mul r1, r12, r1
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f39c0

	arm_func_start FUN_ov16_020f39d8
FUN_ov16_020f39d8: ; 0x020F39D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020F3A6C ; =0x02099F34
	mov r5, r1
	ldr r4, [r4]
	mov r1, #0xc
	mla r6, r2, r1, r4
	ldrb r4, [r5, #0x5a]
	mla r7, r3, r1, r6
	mov r6, r0
	cmp r4, #2
	ldrb r4, [r5, #0x52]
	bne _020F3A3C
	cmp r3, #0
	beq _020F3A18
	cmp r3, #2
	bne _020F3A3C
_020F3A18:
	mov r0, r2
	bl FUN_ov16_020f0b58
	cmp r0, #0
	beq _020F3A3C
	ldrb r0, [r5, #0x5c]
	cmp r0, #1
	moveq r4, #6
	cmp r0, #2
	moveq r4, #7
_020F3A3C:
	ldrb r1, [r5, #0x5c]
	mov r0, #0x64
	ldrb r3, [r7, #8]
	smulbb r1, r1, r0
	ldr r0, _020F3A70 ; =0x00002710
	ldr r2, [sp, #0x18]
	mla r1, r3, r0, r1
	ldr r3, [sp, #0x1c]
	mov r0, r6
	add r1, r4, r1
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F3A6C: .word unk_02099F34
_020F3A70: .word 0x00002710
	arm_func_end FUN_ov16_020f39d8

	arm_func_start FUN_ov16_020f3a74
FUN_ov16_020f3a74: ; 0x020F3A74
	stmfd sp!, {r4, lr}
	ldr lr, _020F3AB0 ; =0x02099F34
	mov r12, #0xc
	ldr lr, [lr]
	mul r4, r2, r12
	mla r2, r1, r12, lr
	add r1, r2, r4
	ldrb lr, [r1, #9]
	ldrb r12, [r2, r4]
	mov r1, #0x64
	mov r2, r3
	mla r1, r12, r1, lr
	ldr r3, [sp, #8]
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r4, pc}
_020F3AB0: .word unk_02099F34
	arm_func_end FUN_ov16_020f3a74

	arm_func_start FUN_ov16_020f3ab4
FUN_ov16_020f3ab4: ; 0x020F3AB4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _020F3AF4 ; =0x02099EF8
	ldrb lr, [r1, #0x5c]
	ldr r5, [r12]
	mov r1, #0x64
	ldrb r4, [r5, r2, lsl #3]
	smulbb r12, lr, r1
	ldr r1, _020F3AF8 ; =0x00002710
	add r2, r5, r2, lsl #3
	mla r1, r4, r1, r12
	ldrb r4, [r2, #1]
	mov r2, r3
	ldr r3, [sp, #0x10]
	add r1, r4, r1
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r3, r4, r5, pc}
_020F3AF4: .word unk_02099EF8
_020F3AF8: .word 0x00002710
	arm_func_end FUN_ov16_020f3ab4

	arm_func_start FUN_ov16_020f3afc
FUN_ov16_020f3afc: ; 0x020F3AFC
	stmfd sp!, {r3, lr}
	mov r12, #0x64
	mla r1, r2, r12, r1
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_ov16_020f34f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f3afc

	arm_func_start FUN_ov16_020f3b18
FUN_ov16_020f3b18: ; 0x020F3B18
	mov r2, r0
	mov r0, r1
	ldr r1, _020F3B2C ; =0x02118668
	ldr r12, _020F3B30 ; =sprintf
	bx r12
_020F3B2C: .word ov16_02118668
_020F3B30: .word sprintf
	arm_func_end FUN_ov16_020f3b18

	arm_func_start FUN_ov16_020f3b34
FUN_ov16_020f3b34: ; 0x020F3B34
	mov r2, r0
	mov r0, r1
	ldr r1, _020F3B48 ; =0x02118688
	ldr r12, _020F3B4C ; =sprintf
	bx r12
_020F3B48: .word ov16_02118688
_020F3B4C: .word sprintf
	arm_func_end FUN_ov16_020f3b34

	arm_func_start FUN_ov16_020f3b50
FUN_ov16_020f3b50: ; 0x020F3B50
	mov r2, r0
	mov r0, r1
	ldr r1, _020F3B64 ; =0x021186A4
	ldr r12, _020F3B68 ; =sprintf
	bx r12
_020F3B64: .word ov16_021186A4
_020F3B68: .word sprintf
	arm_func_end FUN_ov16_020f3b50

	arm_func_start FUN_ov16_020f3b6c
FUN_ov16_020f3b6c: ; 0x020F3B6C
	mov r2, r0
	mov r0, r1
	ldr r1, _020F3B80 ; =0x021186C4
	ldr r12, _020F3B84 ; =sprintf
	bx r12
_020F3B80: .word ov16_021186C4
_020F3B84: .word sprintf
	arm_func_end FUN_ov16_020f3b6c

	arm_func_start FUN_ov16_020f3b88
FUN_ov16_020f3b88: ; 0x020F3B88
	mov r2, r0
	mov r0, r1
	ldr r1, _020F3B9C ; =0x021186E4
	ldr r12, _020F3BA0 ; =sprintf
	bx r12
_020F3B9C: .word ov16_021186E4
_020F3BA0: .word sprintf
	arm_func_end FUN_ov16_020f3b88

	arm_func_start FUN_ov16_020f3ba4
FUN_ov16_020f3ba4: ; 0x020F3BA4
	mov r2, #0x64
	mla r0, r2, r0, r1
	bx lr
	arm_func_end FUN_ov16_020f3ba4

	arm_func_start FUN_ov16_020f3bb0
FUN_ov16_020f3bb0: ; 0x020F3BB0
	bx lr
	arm_func_end FUN_ov16_020f3bb0

	arm_func_start FUN_ov16_020f3bb4
FUN_ov16_020f3bb4: ; 0x020F3BB4
	stmfd sp!, {r3, lr}
	ldr lr, _020F3BFC ; =0x02099F34
	cmp r0, #2
	ldr lr, [lr]
	mov r12, #0xc
	mla lr, r1, r12, lr
	mla r12, r2, r12, lr
	ldrb r2, [r12, #5]
	ldr r1, _020F3C00 ; =0x00002710
	moveq r0, #0
	mul r1, r0, r1
	ldr r0, _020F3C04 ; =0x000F4240
	ldrb r12, [r12, #4]
	mla r1, r2, r0, r1
	mov r0, #0x64
	mla r0, r12, r0, r1
	add r0, r3, r0
	ldmfd sp!, {r3, pc}
_020F3BFC: .word unk_02099F34
_020F3C00: .word 0x00002710
_020F3C04: .word 0x000F4240
	arm_func_end FUN_ov16_020f3bb4

	arm_func_start FUN_ov16_020f3c08
FUN_ov16_020f3c08: ; 0x020F3C08
	ldr r3, _020F3C24 ; =0x02099F34
	mov r2, #0xc
	ldr r3, [r3]
	mla r3, r0, r2, r3
	mla r0, r1, r2, r3
	ldrh r0, [r0, #6]
	bx lr
_020F3C24: .word unk_02099F34
	arm_func_end FUN_ov16_020f3c08

	arm_func_start FUN_ov16_020f3c28
FUN_ov16_020f3c28: ; 0x020F3C28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r7, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_020f3438
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl STD_GetStringLength
	ldrh r6, [r7, #0x24]
	cmp r0, r6
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov lr, #0
	mov r5, lr
	cmp r6, #0
	ldr r12, [r7, #0x20]
	ble _020F3D00
	mov r2, #0xa
	mov r3, #0x24
_020F3C8C:
	cmp r5, r0
	bge _020F3CF0
	tst r12, #1
	mulne r1, lr, r3
	muleq r1, lr, r2
	mov lr, r1
	ldrsb r1, [r4]
	cmp r1, #0x30
	blt _020F3CC0
	cmp r1, #0x39
	suble r1, r1, #0x30
	addle lr, lr, r1
	ble _020F3CEC
_020F3CC0:
	cmp r1, #0x61
	blt _020F3CD8
	cmp r1, #0x7a
	suble r1, r1, #0x57
	addle lr, lr, r1
	ble _020F3CEC
_020F3CD8:
	cmp r1, #0x41
	blt _020F3CEC
	cmp r1, #0x5a
	suble r1, r1, #0x37
	addle lr, lr, r1
_020F3CEC:
	add r4, r4, #1
_020F3CF0:
	add r5, r5, #1
	cmp r5, r6
	mov r12, r12, lsr #1
	blt _020F3C8C
_020F3D00:
	mov r0, lr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f3c28

	arm_func_start FUN_ov16_020f3d08
FUN_ov16_020f3d08: ; 0x020F3D08
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x100
	add r4, sp, #0
	mov r10, r0
	mov r9, r1
	mov r0, r4
	mov r1, r10
	mov r8, r2
	mov r7, r3
	bl FUN_02053914
	mov r0, r4
	mov r1, #0x5c
	bl strrchr
	movs r10, r0
	bne _020F3D54
	mov r0, r4
	mov r1, #0x2f
	bl strrchr
	mov r10, r0
_020F3D54:
	ldr r0, [r9, #0x20]
	cmp r10, #0
	sub r0, r0, #0x20
	addeq r10, sp, #0
	mov r6, r0, lsr #4
	addne r10, r10, #1
	add r5, r9, #0x20
	cmp r6, #0
	mov r4, #0
	ble _020F3DA0
_020F3D7C:
	ldr r0, [r5, r4, lsl #4]
	mov r1, r10
	add r0, r9, r0
	bl strcmp
	cmp r0, #0
	beq _020F3DA0
	add r4, r4, #1
	cmp r4, r6
	blt _020F3D7C
_020F3DA0:
	cmp r4, r6
	addge sp, sp, #0x100
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r2, r5, r4, lsl #4
	ldr r3, [r9, #0xc]
	ldr r1, [r2, #8]
	mov r0, #1
	mul r1, r3, r1
	str r1, [r8]
	ldr r1, [r2, #4]
	str r1, [r7]
	add sp, sp, #0x100
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020f3d08

	arm_func_start FUN_ov16_020f3dd8
FUN_ov16_020f3dd8: ; 0x020F3DD8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r6, #0
	mov r5, #0x4000
	mov r4, #1
_020F3DF4:
	mov r7, r8
	cmp r8, #0x4000
	movge r7, r5
	mov r0, r10
	mov r1, r9
	mov r2, r7
	bl FS_ReadFile
	cmp r7, r0
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r9, r9, r7
	add r6, r6, r7
	subs r8, r8, r7
	beq _020F3E38
	mov r0, r4
	bl OS_Sleep
	b _020F3DF4
_020F3E38:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020f3dd8

	arm_func_start FUN_ov16_LoadOverlay
FUN_ov16_LoadOverlay: ; 0x020F3E40
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x7c
	mov r4, #0
	add r7, sp, #8
	mov r2, r0
	mov r0, r7
	mov r1, r4
	bl FS_LoadOverlayInfo
	cmp r0, #0
	addeq sp, sp, #0x7c
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r6, sp, #0x34
	mov r0, r6
	bl FS_InitFile
	add r5, sp, #0
	mov r1, r7
	mov r0, r5
	bl FS_GetOverlayFileID
	mov r0, r6
	ldmia r5, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	beq _020F3EF4
	ldr r0, [sp, #0x24]
	ldr r6, [sp, #0xc]
	mov r1, r0, lsr #0x18
	tst r1, #1
	movne r0, r0, lsl #8
	movne r7, r0, lsr #8
	add r5, sp, #8
	ldreq r7, [sp, #0x10]
	mov r0, r5
	bl FS_ClearOverlayImage
	add r0, sp, #0x34
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_020f3dd8
	cmp r7, r0
	bne _020F3EEC
	mov r0, r5
	mov r4, #1
	bl FS_StartOverlay
_020F3EEC:
	add r0, sp, #0x34
	bl FS_CloseFile
_020F3EF4:
	mov r0, r4
	add sp, sp, #0x7c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_LoadOverlay

	arm_func_start FUN_ov16_020f3f00
FUN_ov16_020f3f00: ; 0x020F3F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r4, _020F3F3C ; =0x0209A228
	mov r5, #0x10
	ldr r0, _020F3F40 ; =0x0209A22C
	mov r1, r6
	mov r2, r5
	str r6, [r4]
	bl MI_CpuFill8
	ldr r0, _020F3F44 ; =0x0209A240
	mov r1, r6
	mov r2, r5
	str r6, [r4, #0x14]
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_020F3F3C: .word unk_0209A228
_020F3F40: .word unk_0209A22C
_020F3F44: .word unk_0209A240
	arm_func_end FUN_ov16_020f3f00

	arm_func_start FUN_ov16_020f3f48
FUN_ov16_020f3f48: ; 0x020F3F48
	ldr r0, _020F3F50 ; =0x0209A22C
	bx lr
_020F3F50: .word unk_0209A22C
	arm_func_end FUN_ov16_020f3f48

	arm_func_start FUN_ov16_020f3f54
FUN_ov16_020f3f54: ; 0x020F3F54
	ldr r0, _020F3F5C ; =0x0209A240
	bx lr
_020F3F5C: .word unk_0209A240
	arm_func_end FUN_ov16_020f3f54

	arm_func_start FUN_ov16_020f3f60
FUN_ov16_020f3f60: ; 0x020F3F60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r8, _020F47E0 ; =0x0209A228
	mov r9, r0
	ldr r11, _020F47E4 ; =0x0209F5C0
	ldr r4, _020F47E8 ; =0x0000FFBF
	ldr r5, _020F47EC ; =0x02099F30
	str r9, [r8]
	cmp r9, #0xf
	mov r10, #0x10
	mov r7, #0x4000000
	mov r6, #0
	addls pc, pc, r9, lsl #2
	b _020F47CC
_020F3F94: ; jump table
	b _020F47CC ; case 0
	b _020F3FD4 ; case 1
	b _020F436C ; case 2
	b _020F40D0 ; case 3
	b _020F40D0 ; case 4
	b _020F3FD4 ; case 5
	b _020F40D0 ; case 6
	b _020F44B8 ; case 7
	b _020F3FD4 ; case 8
	b _020F45C4 ; case 9
	b _020F47CC ; case 10
	b _020F4728 ; case 11
	b _020F4558 ; case 12
	b _020F47CC ; case 13
	b _020F436C ; case 14
	b _020F41C8 ; case 15
_020F3FD4:
	mov r0, #3
	bl GX_SetBankForBG
	mov r0, #0x20
	bl GX_SetBankForBGExtPltt
	mov r0, r10
	bl GX_SetBankForOBJ
	mov r0, #8
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r1, r6
	mov r0, #1
	mov r2, r1
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x20000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0xc000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	mov r0, #0x8000
	str r0, [r8, #0xc]
	mov r0, #0xa000
	str r1, [r8, #4]
	str r0, [r8, #0x10]
	ldrh r0, [r7, #8]
	and r0, r0, #0x43
	orr r0, r0, #0x1480
	orr r0, r0, #0x20
	strh r0, [r7, #8]
	ldrh r0, [r7, #8]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r7, #8]
	ldrh r0, [r7, #8]
	and r0, r0, r4
	strh r0, [r7, #8]
	ldrh r0, [r7, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x1500
	orr r0, r0, #0xc
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	and r0, r0, r4
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x1600
	orr r0, r0, #0x18
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0xc]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r7, #0xc]
	b _020F42C0
_020F40D0:
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0xe
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r2, r0
	mov r1, r6
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x60000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0xc000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	mov r0, #0x8000
	str r0, [r8, #0xc]
	mov r0, #0xa800
	str r1, [r8, #4]
	cmp r9, #3
	str r0, [r8, #0x10]
	ldreqh r0, [r7, #8]
	biceq r0, r0, #3
	orreq r0, r0, #3
	streqh r0, [r7, #8]
	ldrneh r0, [r7, #8]
	bicne r0, r0, #3
	orrne r0, r0, #2
	strneh r0, [r7, #8]
	ldr r0, _020F47F0 ; =0x0400000A
	cmp r9, #3
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, #0x1500
	orr r1, r1, #0xc
	strh r1, [r0]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r1, r4
	strh r1, [r0]
	ldrh r1, [r0, #2]
	and r1, r1, #0x43
	orr r1, r1, #0x1600
	orr r1, r1, #0x18
	strh r1, [r0, #2]
	ldreqh r1, [r0, #2]
	biceq r1, r1, #3
	orreq r1, r1, #2
	streqh r1, [r0, #2]
	ldrneh r1, [r0, #2]
	bicne r1, r1, #3
	orrne r1, r1, #3
	strneh r1, [r0, #2]
	b _020F4460
_020F41C8:
	mov r0, #8
	bl GX_SetBankForBG
	mov r0, #0x20
	bl GX_SetBankForBGExtPltt
	mov r0, r10
	bl GX_SetBankForOBJ
	mov r0, #3
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r1, r6
	mov r0, #1
	mov r2, r1
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x20000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0xc000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	mov r0, #0x8000
	str r0, [r8, #0xc]
	mov r0, #0xa000
	str r1, [r8, #4]
	str r0, [r8, #0x10]
	ldrh r0, [r7, #8]
	and r0, r0, #0x43
	orr r0, r0, #0x1480
	orr r0, r0, #0x20
	strh r0, [r7, #8]
	ldrh r0, [r7, #8]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r7, #8]
	ldrh r0, [r7, #8]
	and r0, r0, r4
	strh r0, [r7, #8]
	ldrh r0, [r7, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x1500
	orr r0, r0, #0xc
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	and r0, r0, r4
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x1600
	orr r0, r0, #0x18
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0xc]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r7, #0xc]
_020F42C0:
	ldrh r0, [r7, #0xc]
	cmp r9, #5
	and r0, r0, r4
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0xe]
	and r0, r0, #0x43
	orr r0, r0, #0x1700
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0xe]
	bic r0, r0, #3
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0xe]
	and r0, r0, r4
	strh r0, [r7, #0xe]
	ldr r0, [r5]
	bl FUN_02051778
	mov r0, r6
	mov r1, #0x100
	bl FUN_ov16_020f1aec
	mov r1, r10
	mov r0, #1
	bl FUN_ov16_020f1aec
	mov r0, #2
	mov r1, r10
_020F4320:
	bl FUN_ov16_020f1aec
	mov r1, r10
	mov r0, #3
	bl FUN_ov16_020f1aec
	mov r0, r11
	mov r1, r6
	bl FUN_ov16_020f5a58
	bl G2_GetBG3ScrPtr
	mov r5, r0
	bl G2_GetBG1ScrPtr
	mov r4, r0
	bl G2_GetBG2ScrPtr
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r0, [sp]
_020F4360:
	mov r0, r11
_020F4364:
	bl FUN_ov16_020f5b6c
	b _020F47CC
_020F436C:
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0xa
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r2, r0
	mov r1, r6
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x40000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0xc000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	mov r0, #0x8000
	str r0, [r8, #0xc]
	mov r0, #0xa800
	str r1, [r8, #4]
	cmp r9, #3
	str r0, [r8, #0x10]
	ldreqh r0, [r7, #8]
	biceq r0, r0, #3
	orreq r0, r0, #3
	streqh r0, [r7, #8]
	ldrneh r0, [r7, #8]
	bicne r0, r0, #3
	orrne r0, r0, #2
	strneh r0, [r7, #8]
	ldr r0, _020F47F0 ; =0x0400000A
	cmp r9, #3
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, #0x1500
	orr r1, r1, #0xc
	strh r1, [r0]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r1, r4
	strh r1, [r0]
	ldrh r1, [r0, #2]
	and r1, r1, #0x43
	orr r1, r1, #0x1600
	orr r1, r1, #0x18
	strh r1, [r0, #2]
	ldreqh r1, [r0, #2]
	biceq r1, r1, #3
	orreq r1, r1, #2
	streqh r1, [r0, #2]
	ldrneh r1, [r0, #2]
	bicne r1, r1, #3
	orrne r1, r1, #3
	strneh r1, [r0, #2]
_020F4460:
	ldr r0, _020F47F4 ; =0x0400000C
	ldrh r1, [r0]
	and r1, r1, r4
	strh r1, [r0]
	ldrh r1, [r0, #2]
	and r1, r1, #0x43
	orr r1, r1, #0x1700
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	bic r1, r1, #3
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	and r1, r1, r4
	strh r1, [r0, #2]
	ldr r0, [r5]
	bl FUN_02051778
	mov r1, r10
	mov r0, #1
	bl FUN_ov16_020f1aec
	mov r1, r10
	mov r0, #2
	b _020F4320
_020F44B8:
	mov r0, #0xf
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r1, r6
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r0, [r7]
	bic r0, r0, #0xe000
	str r0, [r7]
	str r6, [r8, #4]
	str r6, [r8, #8]
	str r6, [r8, #0xc]
	str r6, [r8, #0x10]
	ldrh r0, [r7, #8]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r7, #8]
_020F4514:
	ldr r0, [r5]
	bl FUN_02051778
	ldr r7, _020F47E4 ; =0x0209F5C0
	mov r1, r6
	mov r0, r7
	bl FUN_ov16_020f5a58
	bl G2_GetBG3ScrPtr
	mov r5, r0
	bl G2_GetBG1ScrPtr
	mov r4, r0
	bl G2_GetBG2ScrPtr
	str r0, [sp]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	mov r0, r7
	b _020F4364
_020F4558:
	mov r0, #0xb
	bl GX_SetBankForTex
	mov r0, #0x60
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r1, r6
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r0, [r7]
	bic r0, r0, #0xe000
	str r0, [r7]
	str r6, [r8, #4]
	str r6, [r8, #8]
	str r6, [r8, #0xc]
	str r6, [r8, #0x10]
	ldrh r0, [r7, #8]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r7, #8]
	ldrh r0, [r7, #0xe]
	and r0, r0, r4
	strh r0, [r7, #0xe]
	b _020F4514
_020F45C4:
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0xe
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #0x40
	bl GX_SetBankForBGExtPltt
	mov r0, #1
	mov r1, r6
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x60000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0x7000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	str r0, [r8, #0xc]
	mov r0, #0x10000
	str r1, [r8, #4]
	str r0, [r8, #0x10]
	ldrh r3, [r7, #8]
	sub r1, r0, #0x41
	mov r2, r1
	bic r3, r3, #3
	orr r3, r3, #1
	strh r3, [r7, #8]
	ldrh r3, [r7, #0xa]
	and r3, r3, #0x43
	orr r3, r3, #0x2e00
	strh r3, [r7, #0xa]
	ldrh r3, [r7, #0xa]
	bic r3, r3, #3
	strh r3, [r7, #0xa]
	ldrh r3, [r7, #0xa]
	and r1, r3, r1
	strh r1, [r7, #0xa]
	ldrh r1, [r7, #0xc]
	and r1, r1, #0x43
	orr r1, r1, #0xf00
	orr r1, r1, #8
	strh r1, [r7, #0xc]
	ldrh r1, [r7, #0xc]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r7, #0xc]
	ldrh r1, [r7, #0xc]
	and r1, r1, r2
	strh r1, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	and r1, r1, #0x43
	orr r1, r1, #0x1f80
	orr r1, r1, #0x10
	strh r1, [r7, #0xe]
	ldrh r1, [r7, #0xe]
	sub r0, r0, #0x41
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r7, #0xe]
	ldrh r1, [r7, #0xe]
	and r0, r1, r0
	strh r0, [r7, #0xe]
	ldr r0, [r5]
	bl FUN_02051778
	mov r0, #1
	mov r1, r10
	bl FUN_ov16_020f1aec
	mov r1, r10
	mov r0, #2
	bl FUN_ov16_020f1aec
	mov r0, #3
	mov r1, #0x100
	bl FUN_ov16_020f1aec
	mov r0, r11
	mov r1, r6
	bl FUN_ov16_020f5a58
	bl G2_GetBG1ScrPtr
	mov r4, r0
	bl G2_GetBG2ScrPtr
	mov r2, r4
	str r6, [sp]
	mov r1, r6
	mov r3, r0
	b _020F4360
_020F4728:
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0xe
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r2, r0
	mov r1, r6
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x60000
	bic r0, r0, #0x1f00
	orr r0, r0, #0x500
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0x1c000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #0xc]
	stmib r8, {r1, r6}
	str r6, [r8, #0x10]
	ldrh r2, [r7, #8]
	mov r0, #2
	mov r1, r10
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r7, #8]
	ldrh r2, [r7, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #4
	strh r2, [r7, #0xc]
	ldrh r2, [r7, #0xc]
	bic r2, r2, #3
	strh r2, [r7, #0xc]
	ldrh r2, [r7, #0xc]
	and r2, r2, r4
	strh r2, [r7, #0xc]
	bl FUN_ov16_020f1aec
	ldr r0, [r5]
	bl FUN_02051778
_020F47CC:
	ldr r1, _020F47F8 ; =0x04000304
	ldrh r0, [r1]
	orr r0, r0, #2
	strh r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F47E0: .word unk_0209A228
_020F47E4: .word unk_0209F5C0
_020F47E8: .word 0x0000FFBF
_020F47EC: .word unk_02099F30
_020F47F0: .word 0x0400000A
_020F47F4: .word 0x0400000C
_020F47F8: .word 0x04000304
	arm_func_end FUN_ov16_020f3f60

	arm_func_start FUN_ov16_020f47fc
FUN_ov16_020f47fc: ; 0x020F47FC
	stmfd sp!, {r3, lr}
	ldr r0, _020F488C ; =0x0209A228
	ldr r0, [r0]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020F4870
_020F4814: ; jump table
	b _020F4870 ; case 0
	b _020F4848 ; case 1
	b _020F4848 ; case 2
	b _020F4864 ; case 3
	b _020F4864 ; case 4
	b _020F4848 ; case 5
	b _020F4864 ; case 6
	b _020F4864 ; case 7
	b _020F4848 ; case 8
	b _020F4854 ; case 9
	b _020F4870 ; case 10
	b _020F4864 ; case 11
	b _020F4864 ; case 12
_020F4848:
	bl GX_ResetBankForBG
	bl GX_ResetBankForBGExtPltt
	b _020F4868
_020F4854:
	bl GX_ResetBankForBG
	bl GX_ResetBankForTex
	bl GX_ResetBankForBGExtPltt
	b _020F486C
_020F4864:
	bl GX_ResetBankForBG
_020F4868:
	bl GX_ResetBankForTex
_020F486C:
	bl GX_ResetBankForTexPltt
_020F4870:
	ldr r3, _020F488C ; =0x0209A228
	mov r1, #0
	ldr r0, _020F4890 ; =0x0209A22C
	mov r2, #0x10
	str r1, [r3]
	bl MI_CpuFill8
	ldmfd sp!, {r3, pc}
_020F488C: .word unk_0209A228
_020F4890: .word unk_0209A22C
	arm_func_end FUN_ov16_020f47fc

	arm_func_start FUN_ov16_020f4894
FUN_ov16_020f4894: ; 0x020F4894
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r9, _020F5180 ; =0x0209A23C
	ldr r6, _020F5184 ; =0x0209F5C0
	ldr r8, _020F5188 ; =0x04001000
	ldr r4, _020F518C ; =0x0000FFBF
	cmp r0, #0x10
	str r0, [r9]
	mov r10, #1
	mov r7, #0x4000
	mov r5, #0
	addls pc, pc, r0, lsl #2
	b _020F516C
_020F48C4: ; jump table
	b _020F516C ; case 0
	b _020F4A3C ; case 1
	b _020F516C ; case 2
	b _020F4B74 ; case 3
	b _020F4C74 ; case 4
	b _020F4908 ; case 5
	b _020F4B74 ; case 6
	b _020F516C ; case 7
	b _020F4908 ; case 8
	b _020F516C ; case 9
	b _020F516C ; case 10
	b _020F4DFC ; case 11
	b _020F4ED0 ; case 12
	b _020F4CEC ; case 13
	b _020F516C ; case 14
	b _020F516C ; case 15
	b _020F503C ; case 16
_020F4908:
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r0, #3
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	mov r1, #0x8000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r8]
	ldr r2, [r8]
	mov r0, #0xe000
	bic r2, r2, #0xe000
	str r2, [r8]
	str r0, [r9, #0xc]
	stmib r9, {r1, r7}
	str r7, [r9, #0x10]
	ldrh r2, [r8, #8]
	ldr r1, _020F5190 ; =0x00001C10
	mov r0, r6
	and r2, r2, #0x43
	orr r2, r2, #0xc10
	orr r2, r2, #0x1000
	strh r2, [r8, #8]
	ldrh r5, [r8, #8]
	add r2, r1, #0x10c
	add r3, r1, #0x208
	bic r1, r5, #3
	strh r1, [r8, #8]
	ldrh r5, [r8, #8]
	mov r1, r10
	and r5, r5, r4
	strh r5, [r8, #8]
	ldrh r5, [r8, #0xa]
	and r5, r5, #0x43
	orr r2, r5, r2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	and r2, r2, r4
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #0x1f80
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xe]
	and r2, r2, #0x43
	orr r2, r2, r3
	strh r2, [r8, #0xe]
	ldrh r2, [r8, #0xe]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xe]
	ldrh r2, [r8, #0xe]
	and r2, r2, r4
	strh r2, [r8, #0xe]
	bl FUN_ov16_020f5a58
	bl G2S_GetBG0ScrPtr
	mov r4, r0
	bl G2S_GetBG1ScrPtr
	str r0, [sp]
	mov r1, r10
	mov r2, r4
	mov r0, r6
	mov r3, #0
	b _020F4B70
_020F4A3C:
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r0, #3
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	mov r1, #0x8000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r8]
	ldr r2, [r8]
	mov r0, #0xe000
	bic r2, r2, #0xe000
	str r2, [r8]
	str r1, [r9, #8]
	str r0, [r9, #0xc]
	str r7, [r9, #4]
	str r7, [r9, #0x10]
	ldrh r2, [r8, #8]
	ldr r1, _020F5190 ; =0x00001C10
	mov r0, r6
	and r2, r2, #0x43
	orr r3, r2, #0xc10
	orr r3, r3, #0x1000
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	add r2, r1, #0x108
	mov r1, r10
	bic r3, r3, #3
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	and r2, r2, r4
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #0x1f80
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xe]
	and r2, r2, #0x43
	orr r2, r2, #0x214
	orr r2, r2, #0x5c00
	strh r2, [r8, #0xe]
	ldrh r2, [r8, #0xe]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xe]
	ldrh r2, [r8, #0xe]
	and r2, r2, r4
	strh r2, [r8, #0xe]
	bl FUN_ov16_020f5a58
	bl G2S_GetBG0ScrPtr
	mov r4, r0
	bl G2S_GetBG1ScrPtr
	str r0, [sp]
	mov r1, r10
	mov r2, r4
	mov r0, r6
	mov r3, r5
_020F4B70:
	b _020F5168
_020F4B74:
	mov r0, r5
	bl GX_SetBankForSubOBJ
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x700
	str r0, [r8]
	ldr r0, [r8]
	bic r0, r0, #0xe000
	str r0, [r8]
	mov r0, #0x2800
	stmib r9, {r0, r7}
	str r7, [r9, #0xc]
	str r5, [r9, #0x10]
	ldrh r1, [r8, #8]
	ldr r0, _020F5194 ; =0x00000604
	mov r7, #0x10
	and r1, r1, #0x43
	orr r1, r1, #0x500
	strh r1, [r8, #8]
	ldrh r1, [r8, #8]
	add r2, r0, #0x104
	mov r0, r5
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r8, #8]
	ldrh r3, [r8, #8]
	mov r1, r7
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r3, r3, #0x204
	orr r3, r3, #0x400
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	and r3, r3, r4
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xc]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	bl FUN_ov16_020f1c28
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020f1c28
	mov r1, r7
	mov r0, #2
	bl FUN_ov16_020f1c28
	b _020F4DEC
_020F4C74:
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1100
	str r0, [r8]
	ldr r1, [r8]
	ldr r0, _020F5198 ; =0xFFCFFFEF
	bic r1, r1, #0xe000
	str r1, [r8]
	ldrh r1, [r8, #8]
	and r1, r1, #0x43
	orr r1, r1, #0x4e00
	strh r1, [r8, #8]
	ldrh r1, [r8, #8]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r8, #8]
	ldrh r1, [r8, #8]
	and r1, r1, r4
	strh r1, [r8, #8]
	ldr r1, [r8]
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r8]
	b _020F516C
_020F4CEC:
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x700
	str r0, [r8]
	ldr r0, [r8]
	bic r0, r0, #0xe000
	str r0, [r8]
	mov r0, #0x2800
	str r0, [r9, #8]
	str r7, [r9, #4]
	str r7, [r9, #0xc]
	str r5, [r9, #0x10]
	ldrh r1, [r8, #8]
	ldr r0, _020F519C ; =0x00000688
	mov r7, #0x10
	and r1, r1, #0x43
	orr r1, r1, #0x288
	orr r1, r1, #0x400
	strh r1, [r8, #8]
	ldrh r3, [r8, #8]
	add r2, r0, #0x7c
	mov r0, r5
	bic r3, r3, #3
	orr r3, r3, #3
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	mov r1, r7
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r3, r3, #0x500
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	and r3, r3, r4
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xc]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	bl FUN_ov16_020f1c28
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020f1c28
	mov r1, r7
	mov r0, #2
	bl FUN_ov16_020f1c28
_020F4DEC:
	mov r0, r6
	mov r1, r10
	bl FUN_ov16_020f5a58
	b _020F5140
_020F4DFC:
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	mov r1, #0x3000
	bic r0, r0, #0x1f00
	orr r0, r0, #0x500
	str r0, [r8]
	ldr r0, [r8]
	bic r0, r0, #0xe000
	str r0, [r8]
	mov r0, #0x3800
	str r1, [r9, #4]
	str r7, [r9, #0xc]
	str r5, [r9, #0x10]
	str r0, [r9, #8]
	ldrh r0, [r8, #8]
	and r0, r0, #0x43
	orr r0, r0, #0x600
	strh r0, [r8, #8]
	ldrh r0, [r8, #8]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r8, #8]
	ldrh r0, [r8, #8]
	and r0, r0, r4
	strh r0, [r8, #8]
	ldrh r0, [r8, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x304
	orr r0, r0, #0xc00
	strh r0, [r8, #0xa]
	ldrh r0, [r8, #0xa]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r8, #0xa]
	ldrh r0, [r8, #0xa]
	and r0, r0, r4
	strh r0, [r8, #0xa]
	ldrh r0, [r8, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x308
	orr r0, r0, #0x400
	strh r0, [r8, #0xc]
	ldrh r0, [r8, #0xc]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r8, #0xc]
	ldrh r0, [r8, #0xc]
	and r0, r0, r4
	strh r0, [r8, #0xc]
	b _020F516C
_020F4ED0:
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	mov r11, #0x100
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1700
	str r0, [r8]
	ldr r1, [r8]
	mov r0, r11
	bic r1, r1, #0xe000
	str r1, [r8]
	bl GX_SetBankForSubOBJ
	ldr r2, [r8]
	ldr r0, _020F5198 ; =0xFFCFFFEF
	mov r1, #0x8000
	and r0, r2, r0
	orr r0, r0, #0x10
	str r0, [r8]
	stmib r9, {r1, r7}
	mov r0, #0xe000
	str r0, [r9, #0xc]
	str r5, [r9, #0x10]
	ldrh r2, [r8, #8]
	ldr r1, _020F5190 ; =0x00001C10
	mov r7, #0x10
	and r2, r2, #0x43
	orr r3, r2, #0xc10
	orr r3, r3, #0x1000
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	add r2, r1, #0x10c
	mov r0, r5
	bic r3, r3, #3
	orr r3, r3, #3
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	mov r1, r7
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	and r2, r2, r4
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #0x1f80
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	bl FUN_ov16_020f1c28
	mov r1, r7
	mov r0, r10
	bl FUN_ov16_020f1c28
	mov r1, r11
	mov r0, #2
	bl FUN_ov16_020f1c28
	mov r0, r6
	mov r1, r10
	bl FUN_ov16_020f5a58
	bl G2S_GetBG2ScrPtr
	mov r7, r0
	bl G2S_GetBG1ScrPtr
	mov r4, r0
	bl G2S_GetBG0ScrPtr
	str r0, [sp]
	mov r1, r10
	mov r2, r7
	mov r3, r4
	mov r0, r6
	bl FUN_ov16_020f5b6c
	mov r1, r5
	mov r0, #0x6200000
	mov r2, #0x20000
	bl MI_CpuFill8
	b _020F516C
_020F503C:
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r1, [r8]
	ldr r0, _020F51A0 ; =0x00001504
	bic r1, r1, #0x1f00
	orr r1, r1, #0x700
	str r1, [r8]
	ldr r1, [r8]
	add r2, r0, #0x104
	bic r1, r1, #0xe000
	str r1, [r8]
	mov r1, #0x2000
	str r7, [r9, #4]
	str r7, [r9, #8]
	str r5, [r9, #0x10]
	str r1, [r9, #0xc]
	ldrh r1, [r8, #8]
	mov r7, #0x10
	mov r0, r5
	and r1, r1, #0x43
	orr r1, r1, #0x1400
	strh r1, [r8, #8]
	ldrh r1, [r8, #8]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r8, #8]
	ldrh r3, [r8, #8]
	mov r1, r7
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r3, r3, #0x104
	orr r3, r3, #0x1400
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	and r3, r3, r4
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xc]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	bl FUN_ov16_020f1c28
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020f1c28
	mov r1, r7
	mov r0, #2
	bl FUN_ov16_020f1c28
	mov r0, r6
	mov r1, r10
	bl FUN_ov16_020f5a58
_020F5140:
	bl G2S_GetBG2ScrPtr
	mov r5, r0
	bl G2S_GetBG1ScrPtr
	mov r4, r0
	bl G2S_GetBG0ScrPtr
	str r0, [sp]
	mov r1, r10
	mov r2, r5
	mov r3, r4
	mov r0, r6
_020F5168:
	bl FUN_ov16_020f5b6c
_020F516C:
	ldr r1, _020F51A4 ; =0x04000304
	ldrh r0, [r1]
	orr r0, r0, #0x200
	strh r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F5180: .word unk_0209A23C
_020F5184: .word unk_0209F5C0
_020F5188: .word 0x04001000
_020F518C: .word 0x0000FFBF
_020F5190: .word 0x00001C10
_020F5194: .word 0x00000604
_020F5198: .word 0xFFCFFFEF
_020F519C: .word 0x00000688
_020F51A0: .word 0x00001504
_020F51A4: .word 0x04000304
	arm_func_end FUN_ov16_020f4894

	arm_func_start FUN_ov16_020f51a8
FUN_ov16_020f51a8: ; 0x020F51A8
	stmfd sp!, {r3, lr}
	ldr r0, _020F5240 ; =0x0209A228
	ldr r0, [r0, #0x14]
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _020F5224
_020F51C0: ; jump table
	b _020F5224 ; case 0
	b _020F5204 ; case 1
	b _020F5224 ; case 2
	b _020F5220 ; case 3
	b _020F5210 ; case 4
	b _020F5204 ; case 5
	b _020F5220 ; case 6
	b _020F5224 ; case 7
	b _020F5204 ; case 8
	b _020F5224 ; case 9
	b _020F521C ; case 10
	b _020F5220 ; case 11
	b _020F5204 ; case 12
	b _020F5224 ; case 13
	b _020F5224 ; case 14
	b _020F5224 ; case 15
	b _020F5220 ; case 16
_020F5204:
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubBGExtPltt
	b _020F5224
_020F5210:
	bl GX_ResetBankForSubBG
_020F5214:
	bl GX_ResetBankForSubOBJ
	b _020F5224
_020F521C:
	b _020F5214
_020F5220:
	bl GX_ResetBankForSubBG
_020F5224:
	ldr r3, _020F5240 ; =0x0209A228
	mov r1, #0
	ldr r0, _020F5244 ; =0x0209A240
	mov r2, #0x10
	str r1, [r3, #0x14]
	bl MI_CpuFill8
	ldmfd sp!, {r3, pc}
_020F5240: .word unk_0209A228
_020F5244: .word unk_0209A240
	arm_func_end FUN_ov16_020f51a8

	arm_func_start FUN_ov16_020f5248
FUN_ov16_020f5248: ; 0x020F5248
	ldr r1, _020F5254 ; =0x02119EE4
	str r0, [r1]
	bx lr
_020F5254: .word ov16_02119EE4
	arm_func_end FUN_ov16_020f5248

	arm_func_start FUN_ov16_020f5258
FUN_ov16_020f5258: ; 0x020F5258
	stmfd sp!, {r3, lr}
	ldr r0, _020F5274 ; =0x02119EE4
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	blx r0
	ldmfd sp!, {r3, pc}
_020F5274: .word ov16_02119EE4
	arm_func_end FUN_ov16_020f5258

	arm_func_start FUN_ov16_020f5278
FUN_ov16_020f5278: ; 0x020F5278
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r1
	mov r1, r4
	mov r2, #8
	mov r7, r0
	bl MI_CpuFill8
	mov r0, #0xc
	mul r5, r6, r0
	ldr r0, _020F52C0 ; =0x0209A250
	mov r1, r5
	bl FUN_0202de44
	mov r1, r4
	mov r2, r5
	str r0, [r7]
	bl MI_CpuFill8
	str r6, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F52C0: .word unk_0209A250
	arm_func_end FUN_ov16_020f5278

	arm_func_start FUN_ov16_020f52c4
FUN_ov16_020f52c4: ; 0x020F52C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	beq _020F52E0
	ldr r0, _020F52F0 ; =0x0209A250
	bl FUN_0202e1c0
_020F52E0:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020F52F0: .word unk_0209A250
	arm_func_end FUN_ov16_020f52c4

	arm_func_start FUN_ov16_020f52f4
FUN_ov16_020f52f4: ; 0x020F52F4
	ldr r12, [r0, #0xc]
	ldr r3, [r0]
	ldr r2, [r0, #4]
	sub r3, r3, r12
	str r12, [r0, #0x14]
	mov r12, #0
	str r3, [r0, #0x18]
	cmp r2, #0
	movle r0, r12
	bxle lr
	cmp r1, #0
	movlt r1, r12
	blt _020F5330
	cmp r1, r2
	subge r1, r2, #1
_020F5330:
	ldr r3, [r0, #0xc]
	str r1, [r0]
	cmp r3, r1
	bgt _020F5350
	ldr r2, [r0, #8]
	add r2, r3, r2
	cmp r2, r1
	bgt _020F537C
_020F5350:
	cmp r3, r1
	ble _020F5360
	movne r12, #1
	b _020F5374
_020F5360:
	ldr r2, [r0, #8]
	mov r12, #1
	sub r1, r1, r2
	add r1, r1, #1
	cmp r3, r1
_020F5374:
	moveq r12, #0
	str r1, [r0, #0xc]
_020F537C:
	ldr r3, [r0]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x18]
	sub r2, r3, r2
	str r2, [r0, #0x10]
	cmp r2, r1
	mov r0, #1
	moveq r0, #0
	mov r1, #2
	cmp r12, #0
	moveq r1, #0
	add r0, r1, r0
	bx lr
	arm_func_end FUN_ov16_020f52f4

	arm_func_start FUN_ov16_020f53b0
FUN_ov16_020f53b0: ; 0x020F53B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	add r2, r0, r1
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _020F53D8
	add r0, r2, r1
	bl _s32_div_f
	mov r2, r1
_020F53D8:
	mov r0, r4
	mov r1, r2
	bl FUN_ov16_020f52f4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f53b0

	arm_func_start FUN_ov16_020f53e8
FUN_ov16_020f53e8: ; 0x020F53E8
	cmp r1, #0
	blt _020F5400
	ldmib r0, {r2, r3}
	add r3, r1, r3
	cmp r3, r2
	ble _020F5408
_020F5400:
	mov r0, #0
	bx lr
_020F5408:
	ldr r3, [r0, #0xc]
	ldr r2, [r0]
	str r3, [r0, #0x14]
	sub r3, r2, r3
	sub r2, r2, r1
	str r3, [r0, #0x18]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	mov r0, #1
	cmp r2, r3
	moveq r0, #0
	add r0, r0, #2
	bx lr
	arm_func_end FUN_ov16_020f53e8

	arm_func_start FUN_ov16_020f543c
FUN_ov16_020f543c: ; 0x020F543C
	ldr r2, [r0, #0xc]
	ldr r12, _020F544C ; =FUN_ov16_020f53e8
	add r1, r2, r1
	bx r12
_020F544C: .word FUN_ov16_020f53e8
	arm_func_end FUN_ov16_020f543c

	arm_func_start FUN_ov16_020f5450
FUN_ov16_020f5450: ; 0x020F5450
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r6, #0
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	ldrb r4, [sp, #0x40]
	mov r5, r6
	mov r11, #1
	b _020F54E8
_020F547C:
	ldr r0, [r8]
	mov r1, r9
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f3d08
	cmp r0, #0
	beq _020F54E4
	ldr r0, [r8, #4]
	ldr r0, [r7, r0, lsl #2]
	cmp r0, #0
	bne _020F54E4
	ldr r0, _020F5500 ; =0x02099F38
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #5
	stmia sp, {r5, r11}
	str r5, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r10
	mov r3, r4
	bl FUN_02058800
	ldr r1, [r8, #4]
	add r6, r6, #1
	str r0, [r7, r1, lsl #2]
_020F54E4:
	add r8, r8, #8
_020F54E8:
	ldr r0, [r8]
	cmp r0, #0
	bne _020F547C
	mov r0, r6
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F5500: .word unk_02099F38
	arm_func_end FUN_ov16_020f5450

	arm_func_start FUN_ov16_020f5504
FUN_ov16_020f5504: ; 0x020F5504
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r6, #0
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	ldr r4, [sp, #0x44]
	mov r5, r6
	ldr r11, _020F55B0 ; =0x02099F38
	b _020F5598
_020F5530:
	ldr r0, [r8, #4]
	ldr r0, [r7, r0, lsl #2]
	cmp r0, #0
	bne _020F5594
	ldr r0, [r8]
	mov r1, r9
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl FUN_ov16_020f3d08
	cmp r0, #0
	beq _020F5594
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r11]
	mov r1, r4
	str r5, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r2, #5
	mov r3, r10
	bl FUN_02058c60
	ldr r1, [r8, #4]
	add r6, r6, #1
	str r0, [r7, r1, lsl #2]
_020F5594:
	add r8, r8, #8
_020F5598:
	ldr r0, [r8]
	cmp r0, #0
	bne _020F5530
	mov r0, r6
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F55B0: .word unk_02099F38
	arm_func_end FUN_ov16_020f5504

	arm_func_start FUN_ov16_020f55b4
FUN_ov16_020f55b4: ; 0x020F55B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r7, r3
	movs r6, r0
	cmpne r7, #0
	ldrne r10, [r7]
	mov r4, r2
	cmpne r10, #0
	cmpne r4, #0
	mov r5, r1
	mov r8, #0xc
	addle sp, sp, #0x1c
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020f5738
	cmp r0, #0
	addgt sp, sp, #0x1c
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0
	b _020F5620
_020F560C:
	mla r2, r0, r8, r10
	ldr r1, [r2, #4]
	add r0, r0, #1
	add r1, r1, #1
	str r1, [r2, #4]
_020F5620:
	ldr r1, [r7, #4]
	cmp r0, r1
	blt _020F560C
	mvn r9, #0
	mov r0, #0
	mov r1, r9
	b _020F5674
_020F563C:
	mla r3, r0, r8, r10
	ldrh r2, [r3, #8]
	cmp r2, #0
	moveq r9, r0
	beq _020F5680
	cmp r9, r1
	beq _020F566C
	mla r2, r9, r8, r10
	ldr r3, [r3, #4]
	ldr r2, [r2, #4]
	cmp r3, r2
	ble _020F5670
_020F566C:
	mov r9, r0
_020F5670:
	add r0, r0, #1
_020F5674:
	ldr r2, [r7, #4]
	cmp r0, r2
	blt _020F563C
_020F5680:
	mov r7, #0xc
	mla r0, r9, r7, r10
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _020F56A0
	ldr r0, _020F5734 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_020F56A0:
	mla r0, r9, r7, r10
	mov r8, #0
	mov r1, r8
	mov r2, r7
	bl MI_CpuFill8
	add r2, sp, #0x18
	add r3, sp, #0x14
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _020F5734 ; =0x02099F38
	ldr r6, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	ldrb r1, [sp, #0x48]
	str r8, [sp]
	ldrb r3, [sp, #0x4c]
	stmib sp, {r1, r8}
	str r2, [sp, #0xc]
	mov r2, r5
	mov r1, #5
	str r6, [sp, #0x10]
	bl FUN_02058800
	mul r1, r9, r7
	ldrb r2, [sp, #0x40]
	str r4, [r10, r1]
	add r3, r10, r1
	strh r0, [r3, #8]
	ldr r1, [sp, #0x44]
	strb r2, [r3, #0xa]
	strb r1, [r3, #0xb]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020F5734: .word unk_02099F38
	arm_func_end FUN_ov16_020f55b4

	arm_func_start FUN_ov16_020f5738
FUN_ov16_020f5738: ; 0x020F5738
	stmfd sp!, {r4, lr}
	cmp r0, #0
	ble _020F5754
	cmp r1, #0
	ldrne lr, [r1]
	cmpne lr, #0
	bne _020F575C
_020F5754:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020F575C:
	ldr r4, [r1, #4]
	mov r12, #0
	cmp r4, #0
	ble _020F57A8
	mov r1, #0xc
_020F5770:
	mul r3, r12, r1
	ldr r2, [lr, r3]
	add r3, lr, r3
	cmp r0, r2
	bne _020F579C
	ldrh r2, [r3, #8]
	cmp r2, #0
	movne r0, #0
	strne r0, [r3, #4]
	ldrneh r0, [r3, #8]
	ldmnefd sp!, {r4, pc}
_020F579C:
	add r12, r12, #1
	cmp r12, r4
	blt _020F5770
_020F57A8:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f5738

	arm_func_start FUN_ov16_020f57b0
FUN_ov16_020f57b0: ; 0x020F57B0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r0
	ldrne r4, [r6]
	mov r5, r1
	cmpne r4, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	blt _020F57DC
	ldr r0, [r6, #4]
	cmp r5, r0
	ble _020F582C
_020F57DC:
	mov r5, #0
	ldr r8, _020F5864 ; =0x02099F38
	mov r7, #0xc
	b _020F5808
_020F57EC:
	mla r0, r5, r7, r4
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _020F5804
	ldr r0, [r8]
	bl FUN_02058ee0
_020F5804:
	add r5, r5, #1
_020F5808:
	ldr r1, [r6, #4]
	cmp r5, r1
	blt _020F57EC
	mov r0, #0xc
	mul r2, r1, r0
	mov r0, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F582C:
	mov r0, #0xc
	mla r0, r5, r0, r4
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _020F584C
	ldr r0, _020F5864 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_020F584C:
	mov r0, #0xc
	mla r0, r5, r0, r4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5864: .word unk_02099F38
	arm_func_end FUN_ov16_020f57b0

	arm_func_start FUN_ov16_020f5868
FUN_ov16_020f5868: ; 0x020F5868
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r6, r0
	ldrne r4, [r6]
	cmpne r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	mov r9, #3
	mov r8, r5
	ldr r7, _020F5918 ; =0x02099F38
	b _020F5904
_020F5894:
	ldrh r1, [r4, #8]
	cmp r1, #0
	beq _020F58FC
	ldr r0, [r7]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r1, [r4, #8]
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _020F58FC
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _020F58E8
	ldrh r1, [r4, #8]
	ldrb r2, [r4, #0xb]
	ldr r0, [r7]
	mov r3, r9
	bl FUN_ov16_02114918
_020F58E8:
	ldrh r1, [r4, #8]
	ldr r0, [r7]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
_020F58FC:
	add r5, r5, #1
	add r4, r4, #0xc
_020F5904:
	ldr r0, [r6, #4]
	cmp r5, r0
	blt _020F5894
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F5918: .word unk_02099F38
	arm_func_end FUN_ov16_020f5868

	arm_func_start FUN_ov16_020f591c
FUN_ov16_020f591c: ; 0x020F591C
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #4]
	ldr r3, _020F5960 ; =0x000002F2
	add r12, r0, #6
	add r1, r1, #1
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #28
	add lr, r2, r1, ror #28
	and r1, lr, #0xff
	mul r2, r1, r3
	strb lr, [r0, #4]
	mov r1, #0
	strh r1, [r12, r2]
	add r2, r12, r2
	strh r1, [r2, #2]
	ldrb r0, [r0, #4]
	ldmfd sp!, {r3, pc}
_020F5960: .word 0x000002F2
	arm_func_end FUN_ov16_020f591c

	arm_func_start FUN_ov16_020f5964
FUN_ov16_020f5964: ; 0x020F5964
	stmfd sp!, {r4, lr}
	ldr r12, _020F5A00 ; =0x000002F2
	add r0, r0, #6
	mla r0, r1, r12, r0
	ldrh r1, [r0, #2]
	cmp r1, #0x96
	movge r0, #0
	ldmgefd sp!, {r4, pc}
	cmp r1, #0
	ble _020F59D0
	sub r12, r1, #1
	add lr, r0, r12, lsl #2
	ldrsh r4, [lr, #0x9a]
	cmp r2, r4
	ldreqsh r4, [lr, #0x9c]
	cmpeq r3, r4
	bne _020F59D0
	add r4, r0, r12
	ldrb lr, [sp, #8]
	ldrb r4, [r4, #4]
	add r4, lr, r4
	cmp r4, #0xff
	addle r4, r0, #4
	ldrleb r1, [r4, r12]
	addle r1, r1, lr
	strleb r1, [r4, r12]
	ble _020F59EC
_020F59D0:
	ldrb r4, [sp, #8]
	add lr, r0, r1
	mov r12, r1
	strb r4, [lr, #4]
	ldrh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
_020F59EC:
	add r0, r0, r12, lsl #2
	strh r2, [r0, #0x9a]
	strh r3, [r0, #0x9c]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020F5A00: .word 0x000002F2
	arm_func_end FUN_ov16_020f5964

	arm_func_start FUN_ov16_020f5a04
FUN_ov16_020f5a04: ; 0x020F5A04
	ldr r2, _020F5A54 ; =0x000002F2
	add r3, r0, #6
	mul r0, r1, r2
	add r2, r3, r0
	ldrh r3, [r3, r0]
	ldrh r0, [r2, #2]
	cmp r3, r0
	movge r0, #0
	bxge lr
	add r1, r2, #4
	ldrb r0, [r1, r3]
	sub r0, r0, #1
	strb r0, [r1, r3]
	tst r0, #0xff
	ldreqh r0, [r2]
	addeq r0, r0, #1
	streqh r0, [r2]
	add r0, r2, #0x9a
	add r0, r0, r3, lsl #2
	bx lr
_020F5A54: .word 0x000002F2
	arm_func_end FUN_ov16_020f5a04

	arm_func_start FUN_ov16_020f5a58
FUN_ov16_020f5a58: ; 0x020F5A58
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	bl FUN_ov16_020f6074
	mov r3, #0
	add r0, r5, r5, lsl #1
	add r1, r6, r0
	mov r2, r3
	b _020F5A88
_020F5A7C:
	add r0, r1, r3
	strb r2, [r0, #0x1e]
	add r3, r3, #1
_020F5A88:
	cmp r3, #3
	blt _020F5A7C
	ldr r8, _020F5AEC ; =0x020A6C40
	mov r7, #0x1800
	mla r1, r5, r7, r8
	mov r4, #0
	mov r0, r4
	mov r2, r7
	bl MIi_CpuClearFast
	mla r0, r5, r7, r8
	mov r1, r7
	bl DC_FlushRange
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f5ff4
	mov r0, r5
	bl FUN_ov16_020f0e0c
	add r0, r5, r5, lsl #1
	add r0, r6, r0
	add r0, r0, #0x1000
	strb r4, [r0, #0x64]
	strb r4, [r0, #0x65]
	strb r4, [r0, #0x66]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5AEC: .word unk_020A6C40
	arm_func_end FUN_ov16_020f5a58

	arm_func_start FUN_ov16_020f5af0
FUN_ov16_020f5af0: ; 0x020F5AF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r10, r1
	mov r0, #0xc
	mla r8, r10, r0, r11
	add r0, r10, r10, lsl #1
	mov r6, #0
	add r7, r11, r0
	mov r5, r6
	mov r4, #0x800
_020F5B18:
	add r9, r7, r6
	ldrb r0, [r9, #0x1e]
	cmp r0, #0
	addne r0, r8, r6, lsl #2
	ldrne r1, [r0, #4]
	cmpne r1, #0
	beq _020F5B44
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	strb r5, [r9, #0x1e]
_020F5B44:
	add r6, r6, #1
	cmp r6, #3
	blt _020F5B18
	mov r0, r11
	mov r1, r10
	mov r2, #0
	bl FUN_ov16_020f5ff4
	mov r0, r10
	bl FUN_ov16_020f0e90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020f5af0

	arm_func_start FUN_ov16_020f5b6c
FUN_ov16_020f5b6c: ; 0x020F5B6C
	mov r12, #0xc
	mla r12, r1, r12, r0
	ldr r0, [sp]
	stmib r12, {r2, r3}
	str r0, [r12, #0xc]
	bx lr
	arm_func_end FUN_ov16_020f5b6c

	arm_func_start FUN_ov16_020f5b84
FUN_ov16_020f5b84: ; 0x020F5B84
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r12, [sp, #0x28]
	ldr lr, [sp, #0x18]
	cmp r12, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r4, [sp, #0x24]
	ldr r5, _020F5C30 ; =0x020A6C40
	ldr r0, [sp, #0x20]
	mov r4, r4, lsl #0xc
	strh r4, [sp, #0x24]
	mov r4, #0x1800
	mla r4, r1, r4, r5
	add r5, r4, r2, lsl #11
	ldrh r1, [sp, #0x24]
	ldr r4, [sp, #0x1c]
	b _020F5C24
_020F5BC4:
	cmp lr, #0
	addlt r12, r12, r4, lsl #1
	blt _020F5C1C
	cmp lr, #0x18
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	add r2, r3, lr, lsl #5
	mov r6, r3
	mov r8, r4
	add r7, r5, r2, lsl #1
	b _020F5C14
_020F5BEC:
	cmp r6, #0
	blt _020F5C04
	cmp r6, #0x20
	ldrlth r2, [r12]
	orrlt r2, r2, r1
	strlth r2, [r7]
_020F5C04:
	sub r8, r8, #1
	add r6, r6, #1
	add r12, r12, #2
	add r7, r7, #2
_020F5C14:
	cmp r8, #0
	bgt _020F5BEC
_020F5C1C:
	sub r0, r0, #1
	add lr, lr, #1
_020F5C24:
	cmp r0, #0
	bgt _020F5BC4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5C30: .word unk_020A6C40
	arm_func_end FUN_ov16_020f5b84

	arm_func_start FUN_ov16_020f5c34
FUN_ov16_020f5c34: ; 0x020F5C34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r6, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r7, [sp, #0x34]
	mul r12, r6, r4
	ldrsh lr, [r7]
	mul r5, r6, r5
	ldrsh r8, [r7, #2]
	mov r4, #0
	sub lr, lr, r12
	mov r6, r4
	sub r5, r8, r5
	add r12, r0, #0x24
_020F5C70:
	ldrb r8, [r12, #1]
	cmp r8, #0
	bne _020F5D84
	add r4, r1, r1, lsl #1
	add r4, r0, r4
	add r4, r4, r2
	mov r6, #1
	strb r6, [r4, #0x1e]
	strb r1, [r12]
	ldr r4, [sp, #0x30]
	strb r3, [r12, #1]
	strb r4, [r12, #2]
	strb r2, [r12, #3]
	str lr, [r12, #0xc]
	str r5, [r12, #0x10]
	ldrh r3, [r7, #4]
	str r3, [r12, #0x14]
	ldrh r3, [r7, #6]
	str r3, [r12, #0x18]
	ldrh r3, [r7, #0xc]
	cmp r3, #0
	moveq r3, #0
	streq r3, [r12, #0x1c]
	streq r3, [r12, #0x24]
	streq r3, [r12, #0x20]
	beq _020F5D0C
	ldrh r3, [r7, #8]
	str r3, [r12, #0x1c]
	ldrh r3, [r7, #0xa]
	str r3, [r12, #0x20]
	ldrh r4, [r7, #8]
	ldrh r3, [r7, #0xc]
	add r3, r4, r3
	sub r3, r3, #1
	str r3, [r12, #0x24]
	ldrh r4, [r7, #0xa]
	ldrh r3, [r7, #0xe]
	add r3, r4, r3
	sub r3, r3, #1
_020F5D0C:
	str r3, [r12, #0x28]
	mov r4, #1
	strb r4, [r12, #5]
	mov r6, #0
	strb r6, [r12, #6]
	strb r6, [r12, #7]
	strh r6, [r12, #8]
	strh r6, [r12, #0xa]
	ldr r3, [sp, #0x38]
	ldr r6, [sp, #0x3c]
	str r3, [r12, #0x2c]
	ldr r3, [sp, #0x40]
	str r6, [r12, #0x30]
	str r3, [r12, #0x34]
	ldrb r6, [r7, #0x10]
	mov r3, lr
	strb r6, [r12, #4]
	ldr r6, [r7, #0x14]
	str r6, [r12, #0x38]
	str r5, [sp]
	ldrh r5, [r7, #4]
	str r5, [sp, #4]
	ldrh r5, [r7, #6]
	str r5, [sp, #8]
	ldrb r5, [r7, #0x10]
	str r5, [sp, #0xc]
	ldr r5, [r7, #0x14]
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5b84
	b _020F5D94
_020F5D84:
	add r6, r6, #1
	cmp r6, #0x30
	add r12, r12, #0x3c
	blt _020F5C70
_020F5D94:
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020f5c34

	arm_func_start FUN_ov16_020f5da0
FUN_ov16_020f5da0: ; 0x020F5DA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	mov r4, #0
	add r12, r0, #0x364
	mov r6, r1
	mov r5, r2
	mov r7, r4
	add r1, r12, #0x800
_020F5DC0:
	ldrb r2, [r1, #1]
	cmp r2, #0
	bne _020F5E50
	add r2, r6, r6, lsl #1
	add r2, r0, r2
	add r2, r2, r5
	mov r4, #1
	strb r4, [r2, #0x1e]
	strb r6, [r1]
	strb r5, [r1, #3]
	strb r3, [r1, #4]
	ldr r3, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	ldrsb r3, [sp, #0x50]
	ldrsb r8, [sp, #0x54]
	ldrb lr, [sp, #0x58]
	strb r3, [r1, #5]
	strb r8, [r1, #6]
	ldrb r12, [sp, #0x5c]
	strb lr, [r1, #7]
	ldrb r2, [sp, #0x60]
	strb r12, [r1, #8]
	ldr r7, [sp, #0x64]
	strb r2, [r1, #9]
	strb r4, [r1, #0xa]
	str r7, [r1, #0xc]
	stmia sp, {r8, lr}
	str r12, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, r6
	mov r2, r5
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5b84
	b _020F5E60
_020F5E50:
	add r7, r7, #1
	cmp r7, #0x50
	add r1, r1, #0x10
	blt _020F5DC0
_020F5E60:
	cmp r4, #0
	bne _020F5EDC
	ldrsb r7, [sp, #0x50]
	ldrsb lr, [sp, #0x54]
	mov r4, #0
	ldrb r12, [sp, #0x58]
	ldrb r3, [sp, #0x5c]
	ldrb r2, [sp, #0x60]
	ldr r0, [sp, #0x64]
	strh r3, [sp, #0x1a]
	strb r2, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x4c]
	strh r7, [sp, #0x14]
	strh lr, [sp, #0x16]
	strh r12, [sp, #0x18]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	str r1, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r3, [sp, #0x48]
	ldr r0, _020F5EE8 ; =0x0209F5C0
	mov r1, r6
	mov r2, r5
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r4, r0
_020F5EDC:
	mov r0, r4
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020F5EE8: .word unk_0209F5C0
	arm_func_end FUN_ov16_020f5da0

	arm_func_start FUN_ov16_020f5eec
FUN_ov16_020f5eec: ; 0x020F5EEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	add r4, r0, #0x24
	mov r12, r5
_020F5EFC:
	ldrb lr, [r4, #1]
	cmp lr, r2
	ldreqb lr, [r4]
	cmpeq lr, r1
	bne _020F5F1C
	cmp r3, #0
	streqb r12, [r4, #1]
	strneh r3, [r4, #0xa]
_020F5F1C:
	add r5, r5, #1
	cmp r5, #0x30
	add r4, r4, #0x3c
	blt _020F5EFC
	add r0, r0, #0x364
	mov r5, #0
	add r4, r0, #0x800
	mov r0, r5
_020F5F3C:
	ldrb r3, [r4, #1]
	add r5, r5, #1
	cmp r3, r2
	ldreqb r3, [r4]
	cmpeq r3, r1
	streqb r0, [r4, #1]
	cmp r5, #0x50
	add r4, r4, #0x10
	blt _020F5F3C
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f5eec

	arm_func_start FUN_ov16_020f5f64
FUN_ov16_020f5f64: ; 0x020F5F64
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	add r4, r0, #0x24
	mov r12, r5
_020F5F74:
	ldrb lr, [r4, #1]
	cmp lr, #0
	beq _020F5FA0
	ldrb lr, [r4]
	cmp lr, r1
	ldreqb lr, [r4, #2]
	cmpeq lr, r2
	bne _020F5FA0
	cmp r3, #0
	streqb r12, [r4, #1]
	strneh r3, [r4, #0xa]
_020F5FA0:
	add r5, r5, #1
	cmp r5, #0x30
	add r4, r4, #0x3c
	blt _020F5F74
	add r0, r0, #0x364
	mov r5, #0
	add r4, r0, #0x800
	mov r0, r5
_020F5FC0:
	ldrb r3, [r4, #1]
	cmp r3, #0
	beq _020F5FE0
	ldrb r3, [r4]
	cmp r3, r1
	ldreqb r3, [r4, #2]
	cmpeq r3, r2
	streqb r0, [r4, #1]
_020F5FE0:
	add r5, r5, #1
	cmp r5, #0x50
	add r4, r4, #0x10
	blt _020F5FC0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f5f64

	arm_func_start FUN_ov16_020f5ff4
FUN_ov16_020f5ff4: ; 0x020F5FF4
	stmfd sp!, {r4, lr}
	mov r4, #0
	add lr, r0, #0x24
	mov r3, r4
_020F6004:
	ldrb r12, [lr, #1]
	cmp r12, #0
	beq _020F6028
	ldrb r12, [lr]
	cmp r12, r1
	bne _020F6028
	cmp r2, #0
	streqb r3, [lr, #1]
	strneh r2, [lr, #0xa]
_020F6028:
	add r4, r4, #1
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F6004
	add r0, r0, #0x364
	mov r4, #0
	add r3, r0, #0x800
	mov r0, r4
_020F6048:
	ldrb r2, [r3, #1]
	cmp r2, #0
	beq _020F6060
	ldrb r2, [r3]
	cmp r2, r1
	streqb r0, [r3, #1]
_020F6060:
	add r4, r4, #1
	cmp r4, #0x50
	add r3, r3, #0x10
	blt _020F6048
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f5ff4

	arm_func_start FUN_ov16_020f6074
FUN_ov16_020f6074: ; 0x020F6074
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0, #0x1c]
	bx lr
	arm_func_end FUN_ov16_020f6074

	arm_func_start FUN_ov16_020f6084
FUN_ov16_020f6084: ; 0x020F6084
	stmfd sp!, {r4, lr}
	cmp r2, #0
	ldmeqfd sp!, {r4, pc}
	mov r4, #0
	add lr, r0, #0x24
	mov r3, r4
_020F609C:
	ldrb r12, [lr, #1]
	add r4, r4, #1
	cmp r12, r2
	ldreqb r12, [lr]
	cmpeq r12, r1
	streqb r3, [lr, #5]
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F609C
	add r0, r0, #0x364
	mov r4, #0
	add r12, r0, #0x800
	mov r0, r4
_020F60D0:
	ldrb r3, [r12, #1]
	add r4, r4, #1
	cmp r3, r2
	ldreqb r3, [r12]
	cmpeq r3, r1
	streqb r0, [r12, #0xa]
	cmp r4, #0x50
	add r12, r12, #0x10
	blt _020F60D0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f6084

	arm_func_start FUN_ov16_020f60f8
FUN_ov16_020f60f8: ; 0x020F60F8
	stmfd sp!, {r4, lr}
	cmp r2, #0
	ldmeqfd sp!, {r4, pc}
	add lr, r0, #0x24
	mov r4, #0
	mov r3, #1
_020F6110:
	ldrb r12, [lr, #1]
	add r4, r4, #1
	cmp r12, r2
	ldreqb r12, [lr]
	cmpeq r12, r1
	streqb r3, [lr, #5]
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F6110
	add r0, r0, #0x364
	add r12, r0, #0x800
	mov r4, #0
	mov r0, #1
_020F6144:
	ldrb r3, [r12, #1]
	add r4, r4, #1
	cmp r3, r2
	ldreqb r3, [r12]
	cmpeq r3, r1
	streqb r0, [r12, #0xa]
	cmp r4, #0x50
	add r12, r12, #0x10
	blt _020F6144
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f60f8

	arm_func_start FUN_ov16_020f616c
FUN_ov16_020f616c: ; 0x020F616C
	stmfd sp!, {r4, lr}
	mov r4, #0
	add lr, r0, #0x24
	mov r3, r4
_020F617C:
	ldrb r12, [lr, #1]
	cmp r12, #0
	beq _020F619C
	ldrb r12, [lr]
	cmp r12, r1
	ldreqb r12, [lr, #2]
	cmpeq r12, r2
	streqb r3, [lr, #5]
_020F619C:
	add r4, r4, #1
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F617C
	add r0, r0, #0x364
	mov r4, #0
	add r12, r0, #0x800
	mov r0, r4
_020F61BC:
	ldrb r3, [r12, #1]
	cmp r3, #0
	beq _020F61DC
	ldrb r3, [r12]
	cmp r3, r1
	ldreqb r3, [r12, #2]
	cmpeq r3, r2
	streqb r0, [r12, #0xa]
_020F61DC:
	add r4, r4, #1
	cmp r4, #0x50
	add r12, r12, #0x10
	blt _020F61BC
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f616c

	arm_func_start FUN_ov16_020f61f0
FUN_ov16_020f61f0: ; 0x020F61F0
	stmfd sp!, {r4, lr}
	add lr, r0, #0x24
	mov r4, #0
	mov r3, #1
_020F6200:
	ldrb r12, [lr, #1]
	cmp r12, #0
	beq _020F6220
	ldrb r12, [lr]
	cmp r12, r1
	ldreqb r12, [lr, #2]
	cmpeq r12, r2
	streqb r3, [lr, #5]
_020F6220:
	add r4, r4, #1
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F6200
	add r0, r0, #0x364
	add r12, r0, #0x800
	mov r4, #0
	mov r0, #1
_020F6240:
	ldrb r3, [r12, #1]
	cmp r3, #0
	beq _020F6260
	ldrb r3, [r12]
	cmp r3, r1
	ldreqb r3, [r12, #2]
	cmpeq r3, r2
	streqb r0, [r12, #0xa]
_020F6260:
	add r4, r4, #1
	cmp r4, #0x50
	add r12, r12, #0x10
	blt _020F6240
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f61f0

	arm_func_start FUN_ov16_020f6274
FUN_ov16_020f6274: ; 0x020F6274
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r11, _020F6378 ; =0x0209A070
	mov r10, r0
	mov r0, r11
	bl FUN_ov16_020f6d10
	mov r8, r0
	mov r9, #0
	cmp r8, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, r9
	mov r5, r9
	mov r6, r9
_020F62A4:
	mov r0, r11
	mov r1, r9
	bl FUN_ov16_020f6ce8
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq _020F62D8
	cmp r0, #1
	beq _020F6308
	cmp r0, #2
	beq _020F6338
	b _020F6368
_020F62D8:
	ldrb r2, [r7, #1]
	mov r0, r10
	mov r1, r6
	bl FUN_ov16_020f6084
	ldrb r2, [r7, #2]
	mov r0, r10
	mov r1, r6
	bl FUN_ov16_020f6084
	ldrb r2, [r7]
	mov r0, r10
	mov r1, r6
	b _020F6364
_020F6308:
	ldrb r2, [r7]
	mov r0, r10
	mov r1, r5
	bl FUN_ov16_020f6084
	ldrb r2, [r7, #2]
	mov r0, r10
	mov r1, r5
	bl FUN_ov16_020f6084
	ldrb r2, [r7, #1]
	mov r0, r10
	mov r1, r5
	b _020F6364
_020F6338:
	ldrb r2, [r7]
	mov r0, r10
	mov r1, r4
	bl FUN_ov16_020f6084
	ldrb r2, [r7, #1]
	mov r0, r10
	mov r1, r4
	bl FUN_ov16_020f6084
	ldrb r2, [r7, #2]
	mov r0, r10
	mov r1, r4
_020F6364:
	bl FUN_ov16_020f60f8
_020F6368:
	add r9, r9, #1
	cmp r9, r8
	blt _020F62A4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F6378: .word unk_0209A070
	arm_func_end FUN_ov16_020f6274

	arm_func_start FUN_ov16_020f637c
FUN_ov16_020f637c: ; 0x020F637C
	stmfd sp!, {r3, lr}
	add r12, r0, #0x24
	mov lr, #0
_020F6388:
	ldrb r0, [r12, #1]
	add lr, lr, #1
	cmp r0, r2
	ldreqb r0, [r12]
	cmpeq r0, r1
	streqh r3, [r12, #8]
	cmp lr, #0x30
	add r12, r12, #0x3c
	blt _020F6388
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f637c

	arm_func_start FUN_ov16_020f63b0
FUN_ov16_020f63b0: ; 0x020F63B0
	stmfd sp!, {r4, lr}
	mov r4, #0
	add lr, r0, #0x24
	mov r3, #1
	mov r0, r4
_020F63C4:
	ldrb r12, [lr, #1]
	add r4, r4, #1
	cmp r12, r2
	ldreqb r12, [lr]
	cmpeq r12, r1
	streqb r3, [lr, #6]
	streqb r0, [lr, #7]
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F63C4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f63b0

	arm_func_start FUN_ov16_020f63f0
FUN_ov16_020f63f0: ; 0x020F63F0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	add lr, r0, #0x24
	mov r4, #0
_020F6400:
	ldrb r12, [lr, #1]
	add r4, r4, #1
	cmp r12, r2
	ldreqb r12, [lr]
	cmpeq r12, r1
	streq r3, [lr, #0xc]
	streq r5, [lr, #0x10]
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F6400
	add r0, r0, #0x364
	add lr, r0, #0x800
	mov r0, r3, lsl #0x18
	mov r3, r5, lsl #0x18
	mov r12, r0, asr #0x18
	mov r4, #0
	mov r0, r3, asr #0x18
_020F6444:
	ldrb r3, [lr, #1]
	add r4, r4, #1
	cmp r3, r2
	ldreqb r3, [lr]
	cmpeq r3, r1
	streqb r12, [lr, #5]
	streqb r0, [lr, #6]
	cmp r4, #0x50
	add lr, lr, #0x10
	blt _020F6444
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f63f0

	arm_func_start FUN_ov16_020f6470
FUN_ov16_020f6470: ; 0x020F6470
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [sp, #0x14]
	ldr r12, [sp, #0x10]
	ldr lr, [sp, #0x18]
	add r4, r3, r4
	add lr, r12, lr
	sub r6, r4, #1
	add r5, r0, #0x24
	sub lr, lr, #1
	mov r4, #0
_020F6498:
	ldrb r0, [r5, #1]
	add r4, r4, #1
	cmp r0, r2
	ldreqb r0, [r5]
	cmpeq r0, r1
	streq r3, [r5, #0x1c]
	streq r12, [r5, #0x20]
	streq r6, [r5, #0x24]
	streq lr, [r5, #0x28]
	cmp r4, #0x30
	add r5, r5, #0x3c
	blt _020F6498
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020f6470

	arm_func_start FUN_ov16_020f64cc
FUN_ov16_020f64cc: ; 0x020F64CC
	mov r12, #0
	add r3, r0, #0x24
	mov r0, r12
_020F64D8:
	ldrb r2, [r3]
	cmp r2, r1
	bne _020F64FC
	ldr r2, [r3, #0x24]
	cmp r2, #0
	strgt r0, [r3, #0x1c]
	strgt r0, [r3, #0x24]
	strgt r0, [r3, #0x20]
	strgt r0, [r3, #0x28]
_020F64FC:
	add r12, r12, #1
	cmp r12, #0x30
	add r3, r3, #0x3c
	blt _020F64D8
	bx lr
	arm_func_end FUN_ov16_020f64cc

	arm_func_start FUN_ov16_020f6510
FUN_ov16_020f6510: ; 0x020F6510
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	add r0, r0, #0x1000
	strb r2, [r0, #0x64]
	strb r3, [r0, #0x65]
	mov r1, #7
	strb r1, [r0, #0x66]
	bx lr
	arm_func_end FUN_ov16_020f6510

	arm_func_start FUN_ov16_020f6530
FUN_ov16_020f6530: ; 0x020F6530
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020F6580 ; =0x0209A070
	mov r7, r0
	mov r0, r4
	mov r6, r1
	bl FUN_ov16_020f6ce8
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #1]
	mov r0, r7
	cmp r2, #0
	ldreqb r2, [r5]
	mov r1, #0
	bl FUN_ov16_020f6510
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F6580: .word unk_0209A070
	arm_func_end FUN_ov16_020f6530

	arm_func_start FUN_ov16_020f6584
FUN_ov16_020f6584: ; 0x020F6584
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x66]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020f6584

	arm_func_start FUN_ov16_020f65a4
FUN_ov16_020f65a4: ; 0x020F65A4
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x66]
	cmp r0, #1
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov16_020f65a4

	arm_func_start FUN_ov16_020f65c4
FUN_ov16_020f65c4: ; 0x020F65C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x64
	mov r7, #0
	add r6, r0, #0x1000
	mov r5, r7
_020F65DC:
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _020F6664
	sub r0, r0, #1
	strb r0, [r6, #2]
	ands r0, r0, #0xff
	streqb r5, [r6]
	streqb r5, [r6, #1]
	streqb r5, [r6, #2]
	beq _020F6664
	cmp r0, #2
	bhi _020F6610
	b _020F6644
_020F6610:
	cmp r0, #5
	bhi _020F663C
	ldrb r2, [r6, #1]
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020f60f8
	ldrb r2, [r6]
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020f6084
	b _020F6664
_020F663C:
	cmp r0, #7
	bhi _020F6664
_020F6644:
	ldrb r2, [r6, #1]
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020f6084
	ldrb r2, [r6]
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020f60f8
_020F6664:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #3
	blt _020F65DC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f65c4

	arm_func_start FUN_ov16_020f6678
FUN_ov16_020f6678: ; 0x020F6678
	add r2, r0, #0x24
	mov r3, #0
_020F6680:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _020F66A8
	ldrb r0, [r2]
	cmp r0, r1
	bne _020F66A8
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	movgt r0, #1
	bxgt lr
_020F66A8:
	add r3, r3, #1
	cmp r3, #0x30
	add r2, r2, #0x3c
	blt _020F6680
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020f6678

	arm_func_start FUN_ov16_020f66c0
FUN_ov16_020f66c0: ; 0x020F66C0
	stmfd sp!, {r3, lr}
	add r12, r0, #0x24
	mov lr, #0
_020F66CC:
	ldrb r3, [r12, #1]
	cmp r3, #0
	beq _020F6714
	ldrb r0, [r12]
	cmp r0, r1
	cmpeq r3, r2
	bne _020F6714
	ldrb r0, [r12, #5]
	cmp r0, #0
	beq _020F6714
	ldrb r0, [r12, #6]
	cmp r0, #0
	beq _020F670C
	ldrb r0, [r12, #7]
	cmp r0, #0x12
	bhs _020F6714
_020F670C:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020F6714:
	add lr, lr, #1
	cmp lr, #0x30
	add r12, r12, #0x3c
	blt _020F66CC
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f66c0

	arm_func_start FUN_ov16_020f672c
FUN_ov16_020f672c: ; 0x020F672C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb4
	mov r9, r1
	mov r10, r0
	ldr r1, _020F6A94 ; =0x020A6C40
	mov r0, #0x1800
	mla r8, r9, r0, r1
	mov r5, #0
	add r0, r9, r9, lsl #1
	mov r6, r5
	add r4, r10, r0
	mov r7, #0x800
	b _020F6784
_020F6760:
	add r0, r4, r6
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _020F6780
	mov r0, r5
	mov r2, r7
	add r1, r8, r6, lsl #11
	bl MIi_CpuClearFast
_020F6780:
	add r6, r6, #1
_020F6784:
	cmp r6, #3
	blt _020F6760
	mov r0, r10
	bl FUN_ov16_020f65c4
	add r0, r10, #0x364
	mov r6, #0
	mov r8, r6
	add r7, r0, #0x800
	add r4, sp, #0x14
	b _020F6830
_020F67AC:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _020F6828
	ldrb r0, [r7]
	cmp r0, r9
	bne _020F6828
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _020F6828
	ldrb r0, [r7, #4]
	cmp r0, #0
	strneb r0, [r4, r6, lsl #1]
	addne r0, r4, r6, lsl #1
	strneb r8, [r0, #1]
	addne r6, r6, #1
	bne _020F6828
	ldrsb r2, [r7, #6]
	mov r0, r10
	mov r1, r9
	str r2, [sp]
	ldrb r2, [r7, #7]
	str r2, [sp, #4]
	ldrb r2, [r7, #8]
	str r2, [sp, #8]
	ldrb r2, [r7, #9]
	str r2, [sp, #0xc]
	ldr r2, [r7, #0xc]
	str r2, [sp, #0x10]
	ldrb r2, [r7, #3]
	ldrsb r3, [r7, #5]
	bl FUN_ov16_020f5b84
_020F6828:
	add r8, r8, #1
	add r7, r7, #0x10
_020F6830:
	cmp r8, #0x50
	blt _020F67AC
	add r7, r10, #0x24
	mov r8, #0
	ldr r4, _020F6A98 ; =0x2AAAAAAB
	mov r11, #0x18
	b _020F6958
_020F684C:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _020F6950
	ldrb r0, [r7]
	cmp r0, r9
	bne _020F6950
	ldrh r0, [r7, #8]
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r7, #8]
	bne _020F6950
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	ble _020F68AC
	sub r0, r0, #1
	str r0, [r7, #0x2c]
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x30]
	add r0, r1, r0
	str r0, [r7, #0xc]
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x34]
	add r0, r1, r0
	str r0, [r7, #0x10]
_020F68AC:
	ldrh r0, [r7, #0xa]
	cmp r0, #0
	beq _020F68CC
	sub r0, r0, #1
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	cmp r0, #0
	streqb r5, [r7, #1]
_020F68CC:
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _020F6950
	ldrb r0, [r7, #6]
	cmp r0, #0
	beq _020F6914
	ldrb r0, [r7, #7]
	add r0, r0, #1
	and r0, r0, #0xff
	mov r1, r0, lsr #0x1f
	smull r2, r3, r4, r0
	add r3, r1, r3, asr #2
	smull r1, r2, r11, r3
	sub r3, r0, r1
	and r0, r3, #0xff
	strb r3, [r7, #7]
	cmp r0, #0x12
	bhs _020F6950
_020F6914:
	ldr r1, [r7, #0x10]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r7, #0x14]
	mov r1, r9
	str r2, [sp, #4]
	ldr r2, [r7, #0x18]
	str r2, [sp, #8]
	ldrb r2, [r7, #4]
	str r2, [sp, #0xc]
	ldr r2, [r7, #0x38]
	str r2, [sp, #0x10]
	ldrb r2, [r7, #3]
	ldr r3, [r7, #0xc]
	bl FUN_ov16_020f5b84
_020F6950:
	add r8, r8, #1
	add r7, r7, #0x3c
_020F6958:
	cmp r8, #0x30
	blt _020F684C
	cmp r6, #0
	ble _020F6A3C
	sub r2, r6, #1
	add r0, sp, #0x14
	mvn r1, #0
	b _020F69CC
_020F6978:
	mov r3, r1
	mov r4, r5
	b _020F69C0
_020F6984:
	add r8, r4, #1
	ldrb r11, [r0, r4, lsl #1]
	ldrb r7, [r0, r8, lsl #1]
	cmp r11, r7
	bls _020F69BC
	strb r7, [r0, r4, lsl #1]
	strb r11, [r0, r8, lsl #1]
	add r12, r0, r4, lsl #1
	add r8, r0, r8, lsl #1
	ldrb r11, [r12, #1]
	ldrb r7, [r8, #1]
	mov r3, r4
	strb r7, [r12, #1]
	strb r11, [r8, #1]
_020F69BC:
	add r4, r4, #1
_020F69C0:
	cmp r4, r2
	blt _020F6984
	mov r2, r3
_020F69CC:
	cmp r2, #0
	bge _020F6978
	add r0, r10, #0x364
	mov r7, #0
	add r5, r0, #0x800
	add r4, sp, #0x14
	b _020F6A34
_020F69E8:
	add r0, r4, r7, lsl #1
	ldrb r2, [r0, #1]
	mov r0, r10
	mov r1, r9
	add r3, r5, r2, lsl #4
	ldrsb r2, [r3, #6]
	str r2, [sp]
	ldrb r2, [r3, #7]
	str r2, [sp, #4]
	ldrb r2, [r3, #8]
	str r2, [sp, #8]
	ldrb r2, [r3, #9]
	str r2, [sp, #0xc]
	ldr r2, [r3, #0xc]
	str r2, [sp, #0x10]
	ldrb r2, [r3, #3]
	ldrsb r3, [r3, #5]
	bl FUN_ov16_020f5b84
	add r7, r7, #1
_020F6A34:
	cmp r7, r6
	blt _020F69E8
_020F6A3C:
	ldr r1, _020F6A94 ; =0x020A6C40
	mov r0, #0x1800
	mla r6, r9, r0, r1
	add r0, r9, r9, lsl #1
	mov r4, #0
	add r7, r10, r0
	mov r5, #0x800
	b _020F6A7C
_020F6A5C:
	add r0, r7, r4
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _020F6A78
	mov r1, r5
	add r0, r6, r4, lsl #11
	bl DC_FlushRange
_020F6A78:
	add r4, r4, #1
_020F6A7C:
	cmp r4, #3
	blt _020F6A5C
	mov r0, r9
	bl FUN_ov16_020f0f58
	add sp, sp, #0xb4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F6A94: .word unk_020A6C40
_020F6A98: .word 0x2AAAAAAB
	arm_func_end FUN_ov16_020f672c

	arm_func_start FUN_ov16_020f6a9c
FUN_ov16_020f6a9c: ; 0x020F6A9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r10, #0
	bl FUN_ov16_020f10e4
	mov r1, #0xc
	ldr r2, _020F6B38 ; =0x020A6C40
	mov r0, #0x1800
	mla r6, r4, r0, r2
	add r0, r4, r4, lsl #1
	mla r8, r4, r1, r5
	add r7, r5, r4
	mov r11, #0x800
	add r9, r5, r0
	mov r4, r10
	mov r5, r11
	b _020F6B2C
_020F6AE4:
	add r0, r9, r10
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	addne r0, r8, r10, lsl #2
	ldrne r1, [r0, #4]
	cmpne r1, #0
	beq _020F6B28
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	beq _020F6B1C
	mov r2, r5
	add r0, r6, r10, lsl #11
	bl MIi_CpuCopyFast
	b _020F6B28
_020F6B1C:
	mov r0, r4
	mov r2, r11
	bl MIi_CpuClearFast
_020F6B28:
	add r10, r10, #1
_020F6B2C:
	cmp r10, #3
	blt _020F6AE4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F6B38: .word unk_020A6C40
	arm_func_end FUN_ov16_020f6a9c

	arm_func_start FUN_ov16_020f6b3c
FUN_ov16_020f6b3c: ; 0x020F6B3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov lr, #0
	mov r6, lr
	add r5, r0, #0x24
	mov r4, #3
_020F6B50:
	ldrb r12, [r5, #1]
	cmp r12, #0
	beq _020F6BD0
	ldrb r0, [r5]
	cmp r0, r1
	bne _020F6BD0
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bgt _020F6BD0
	ldr r9, [r5, #0x24]
	cmp r9, #0
	ldrgtb r0, [r5, #3]
	cmpgt r4, r0
	ble _020F6BD0
	ldr r8, [r5, #0xc]
	ldr r7, [r5, #0x1c]
	add r7, r7, r8, lsl #3
	cmp r2, r7
	blt _020F6BD0
	add r7, r9, r8, lsl #3
	cmp r2, r7
	bgt _020F6BD0
	ldr r8, [r5, #0x10]
	ldr r7, [r5, #0x20]
	add r7, r7, r8, lsl #3
	cmp r3, r7
	blt _020F6BD0
	ldr r7, [r5, #0x28]
	add r7, r7, r8, lsl #3
	cmp r3, r7
	movle r4, r0
	movle lr, r12
_020F6BD0:
	add r6, r6, #1
	cmp r6, #0x30
	add r5, r5, #0x3c
	blt _020F6B50
	mov r0, lr
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020f6b3c

	arm_func_start FUN_ov16_020f6be8
FUN_ov16_020f6be8: ; 0x020F6BE8
	stmfd sp!, {r3, lr}
	add r12, r0, #0x24
	mov lr, #0
_020F6BF4:
	ldrb r0, [r12]
	cmp r0, r1
	ldreqb r0, [r12, #1]
	cmpeq r0, r2
	streq r3, [r12, #0x38]
	ldmeqfd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, #0x30
	add r12, r12, #0x3c
	blt _020F6BF4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f6be8

	arm_func_start FUN_ov16_020f6c20
FUN_ov16_020f6c20: ; 0x020F6C20
	stmfd sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #4]
	mov r2, #0
	ldr r0, _020F6C48 ; =0x0209A250
	add r1, r1, r1, lsl #2
	str r2, [r4, #8]
	bl FUN_0202de44
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020F6C48: .word unk_0209A250
	arm_func_end FUN_ov16_020f6c20

	arm_func_start FUN_ov16_020f6c4c
FUN_ov16_020f6c4c: ; 0x020F6C4C
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov16_020f6c4c

	arm_func_start FUN_ov16_020f6c58
FUN_ov16_020f6c58: ; 0x020F6C58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xc]
	mov r4, #0
	str r4, [r5, #8]
	str r4, [r5, #4]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020F6C88 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020F6C88: .word unk_0209A250
	arm_func_end FUN_ov16_020f6c58

	arm_func_start FUN_ov16_020f6c8c
FUN_ov16_020f6c8c: ; 0x020F6C8C
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0xc]
	cmp r4, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldmib r0, {r12, lr}
	cmp lr, r12
	mvnge r0, #0
	ldmgefd sp!, {r4, pc}
	add r12, lr, lr, lsl #2
	strb r1, [r4, r12]
	add r12, r4, r12
	strb r2, [r12, #1]
	ldr r1, [sp, #8]
	strb r3, [r12, #2]
	strb r1, [r12, #3]
	mov r1, #0
	strb r1, [r12, #4]
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f6c8c

	arm_func_start FUN_ov16_020f6ce8
FUN_ov16_020f6ce8: ; 0x020F6CE8
	ldr r2, [r0, #0xc]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #8]
	cmp r1, r0
	movge r0, #0
	addlt r0, r1, r1, lsl #2
	addlt r0, r2, r0
	bx lr
	arm_func_end FUN_ov16_020f6ce8

	arm_func_start FUN_ov16_020f6d10
FUN_ov16_020f6d10: ; 0x020F6D10
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov16_020f6d10

	arm_func_start FUN_ov16_020f6d18
FUN_ov16_020f6d18: ; 0x020F6D18
	ldr r2, [r0, #0xc]
	cmp r2, #0
	ldrne r0, [r0, #8]
	cmpne r1, r0
	addlt r0, r1, r1, lsl #2
	addlt r0, r2, r0
	movlt r1, #0
	strltb r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_020f6d18

	arm_func_start FUN_ov16_020f6d3c
FUN_ov16_020f6d3c: ; 0x020F6D3C
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	cmp r3, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r12, [r0, #8]
	mov r4, #0
	cmp r12, #0
	ble _020F6D94
_020F6D60:
	ldrb r2, [r3]
	cmp r2, r1
	ldrneb r2, [r3, #1]
	cmpne r2, r1
	bne _020F6D84
	mov r1, r4
	bl FUN_ov16_020f6d18
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020F6D84:
	add r4, r4, #1
	cmp r4, r12
	add r3, r3, #5
	blt _020F6D60
_020F6D94:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f6d3c

	arm_func_start FUN_ov16_020f6d9c
FUN_ov16_020f6d9c: ; 0x020F6D9C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r0, #0xc]
	cmp r5, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r2, r1, r1, lsl #2
	ldr lr, [r0, #8]
	add r3, r5, r2
	cmp lr, #0
	ldrb r4, [r3, #3]
	mov r6, #0
	cmpgt lr, #0
	ble _020F6E14
	mov r3, #2
	mov r12, r6
_020F6DD4:
	ldrb lr, [r5, #3]
	cmp lr, r4
	ldrneb lr, [r5, #2]
	cmpne lr, #0
	beq _020F6DF4
	ldrb lr, [r5, #4]
	cmp lr, #2
	beq _020F6DFC
_020F6DF4:
	strb r12, [r5, #4]
	b _020F6E00
_020F6DFC:
	strb r3, [r5, #4]
_020F6E00:
	ldr lr, [r0, #8]
	add r6, r6, #1
	cmp r6, lr
	add r5, r5, #5
	blt _020F6DD4
_020F6E14:
	cmp r1, lr
	ldrlt r0, [r0, #0xc]
	movlt r1, #1
	addlt r0, r0, r2
	strltb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020f6d9c

	arm_func_start FUN_ov16_020f6e2c
FUN_ov16_020f6e2c: ; 0x020F6E2C
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	cmp r3, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r12, [r0, #8]
	mov r4, #0
	cmp r12, #0
	ble _020F6E84
_020F6E50:
	ldrb r2, [r3]
	cmp r2, r1
	ldrneb r2, [r3, #1]
	cmpne r2, r1
	bne _020F6E74
	mov r1, r4
	bl FUN_ov16_020f6d9c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020F6E74:
	add r4, r4, #1
	cmp r4, r12
	add r3, r3, #5
	blt _020F6E50
_020F6E84:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f6e2c

	arm_func_start FUN_ov16_020f6e8c
FUN_ov16_020f6e8c: ; 0x020F6E8C
	stmfd sp!, {r3, r4, r5, lr}
	ldr lr, [r0, #0xc]
	mov r3, #0
	cmp lr, #0
	moveq r0, r3
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r1, #0
	blt _020F6EB8
	ldr r12, [r0, #8]
	cmp r1, r12
	blt _020F6EC0
_020F6EB8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020F6EC0:
	cmp r2, #0
	beq _020F6F24
	add r5, r1, r1, lsl #2
	add r1, lr, r5
	cmp r12, #0
	ldrb r2, [r1, #3]
	mov r4, r3
	cmpgt r12, #0
	ble _020F6F04
_020F6EE4:
	ldrb r1, [lr, #3]
	add r4, r4, #1
	cmp r1, r2
	streqb r3, [lr, #4]
	ldr r1, [r0, #8]
	add lr, lr, #5
	cmp r4, r1
	blt _020F6EE4
_020F6F04:
	ldr r0, [r0, #0xc]
	add r1, r0, r5
	ldrb r0, [r1, #2]
	cmp r0, #0
	streqb r3, [r1, #4]
	movne r0, #2
	strneb r0, [r1, #4]
	b _020F6F30
_020F6F24:
	add r0, r1, r1, lsl #2
	add r0, lr, r0
	strb r3, [r0, #4]
_020F6F30:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f6e8c

	arm_func_start FUN_ov16_020f6f38
FUN_ov16_020f6f38: ; 0x020F6F38
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #8]
	mov r3, #0
	mov r12, r3
	cmp lr, #0
	ldr r2, [r0, #0xc]
	ble _020F6F84
_020F6F54:
	ldrb r0, [r2, #3]
	cmp r0, r1
	bne _020F6F74
	ldrb r0, [r2, #4]
	cmp r0, #2
	moveq r0, r3
	ldmeqfd sp!, {r3, pc}
	add r3, r3, #1
_020F6F74:
	add r12, r12, #1
	cmp r12, lr
	add r2, r2, #5
	blt _020F6F54
_020F6F84:
	mvn r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f6f38

	arm_func_start FUN_ov16_020f6f8c
FUN_ov16_020f6f8c: ; 0x020F6F8C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, [r1]
	ldr r2, [r1, #4]
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	mov r2, r3, asr #4
	mov r12, r2, lsl #1
	mov r1, r1, asr #4
	mov r4, r1, lsl #1
	add r2, r12, #1
	add r1, r4, #1
	ldr r6, _020F7024 ; =FX_SinCosTable_
	mov r3, r2, lsl #1
	mov r2, r4, lsl #1
	mov r1, r1, lsl #1
	ldrsh r5, [r6, r3]
	ldrsh r3, [r6, r2]
	ldrsh r1, [r6, r1]
	mov r2, r12, lsl #1
	smull r12, lr, r3, r5
	adds r4, r12, #0x800
	ldrsh r12, [r6, r2]
	smull r3, r2, r1, r5
	adc r1, lr, #0
	adds r3, r3, #0x800
	mov r4, r4, lsr #0xc
	orr r4, r4, r1, lsl #20
	rsb lr, r4, #0
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	rsb r1, r2, #0
	str lr, [r0]
	str r12, [r0, #4]
	str r1, [r0, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020F7024: .word FX_SinCosTable_
	arm_func_end FUN_ov16_020f6f8c

	arm_func_start FUN_ov16_020f7028
FUN_ov16_020f7028: ; 0x020F7028
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	ldmia r1, {r6, r7, r8}
	mov r9, r0
	rsb r0, r6, #0
	rsb r1, r8, #0
	bl FX_Atan2Idx
	mov r5, r0
	rsb r0, r5, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r2, _020F70CC ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	add r4, sp, #0x40
	mov r0, r4
	blx MTX_RotY44_
	add r10, sp, #0
	mov r0, r10
	bl MTX_Identity44_
	str r8, [sp, #0x38]
	mov r1, r4
	mov r0, r10
	mov r2, r10
	str r6, [sp, #0x30]
	str r7, [sp, #0x34]
	bl MTX_Concat44
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x34]
	rsb r1, r1, #0
	bl FX_Atan2Idx
	stmia r9, {r0, r5}
	mov r0, #0
	str r0, [r9, #8]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F70CC: .word FX_SinCosTable_
	arm_func_end FUN_ov16_020f7028

	arm_func_start FUN_ov16_020f70d0
FUN_ov16_020f70d0: ; 0x020F70D0
	ldr r12, [r1]
	ldr r1, [r2]
	sub r1, r1, r12
	smull r3, r2, r1, r3
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r12, r2
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov16_020f70d0

	arm_func_start FUN_ov16_020f70fc
FUN_ov16_020f70fc: ; 0x020F70FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020f70d0
	mov r3, r4
	add r0, r7, #4
	add r1, r6, #4
	add r2, r5, #4
	bl FUN_ov16_020f70d0
	mov r3, r4
	add r0, r7, #8
	add r1, r6, #8
	add r2, r5, #8
	bl FUN_ov16_020f70d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f70fc

	arm_func_start FUN_ov16_020f7140
FUN_ov16_020f7140: ; 0x020F7140
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r4, r3
	ldr r0, [r6]
	ldr r1, [r5]
	mov r2, r4
	bl FUN_ov16_020f7194
	str r0, [r7]
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	mov r2, r4
	bl FUN_ov16_020f7194
	str r0, [r7, #4]
	ldr r0, [r6, #8]
	ldr r1, [r5, #8]
	mov r2, r4
	bl FUN_ov16_020f7194
	str r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f7140

	arm_func_start FUN_ov16_020f7194
FUN_ov16_020f7194: ; 0x020F7194
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r3, r2
	subs r2, r1, r0
	rsbmi r2, r2, #0
	cmp r2, #0x8000
	ble _020F71D4
	cmp r1, r0
	ldrgt r0, [sp, #0xc]
	addgt r0, r0, #0x10000
	strgt r0, [sp, #0xc]
	ldrle r0, [sp, #8]
	addle r0, r0, #0x10000
	strle r0, [sp, #8]
_020F71D4:
	add r0, sp, #0
	add r1, sp, #8
	add r2, sp, #0xc
	bl FUN_ov16_020f70d0
	ldr r0, [sp]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov16_020f7194

	arm_func_start FUN_ov16_020f71fc
FUN_ov16_020f71fc: ; 0x020F71FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, #0x60000
	mov r4, r0
	mov r6, #0
	mov lr, #0x1000
	mov r3, #0x10000
	sub r12, lr, #0xff000000
	ldr r0, _020F7368 ; =0x00001555
	ldr r2, _020F736C ; =0x00000536
	ldr r1, _020F7370 ; =0x00000F21
	mov r5, #0xc
	sub r9, r10, #0xc0000
	sub r8, r10, #0xe0000
	mov r7, #0x80000
	str r0, [r4, #8]
	mov r0, r6
	str r2, [r4]
	mov r2, r5
	str r1, [r4, #4]
	add r1, r4, #0xdc
	str r10, [r4, #0x14]
	str r9, [r4, #0x18]
	str r8, [r4, #0x1c]
	str r7, [r4, #0x20]
	str lr, [r4, #0xc]
	str r12, [r4, #0x10]
	str lr, [r4, #0x24]
	str r12, [r4, #0x28]
	str r6, [r4, #0x2c]
	str lr, [r4, #0x30]
	str r6, [r4, #0x34]
	strh r6, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str lr, [r4, #0x44]
	str r6, [r4, #0x48]
	str r6, [r4, #0x4c]
	str r6, [r4, #0x50]
	str r6, [r4, #0x58]
	str r6, [r4, #0x5c]
	str r6, [r4, #0x60]
	str r3, [r4, #0x54]
	str r6, [r4, #0x64]
	str r6, [r4, #0x68]
	str lr, [r4, #0x6c]
	str r6, [r4, #0x70]
	str r6, [r4, #0x74]
	str r6, [r4, #0x78]
	str r6, [r4, #0x80]
	str r6, [r4, #0x84]
	str r6, [r4, #0x88]
	str r3, [r4, #0x7c]
	str r6, [r4, #0x8c]
	str r6, [r4, #0x90]
	str lr, [r4, #0x94]
	str r6, [r4, #0x98]
	str r6, [r4, #0x9c]
	str r6, [r4, #0xa0]
	str r6, [r4, #0xa8]
	str r6, [r4, #0xac]
	str r6, [r4, #0xb0]
	str r3, [r4, #0xa4]
	str r6, [r4, #0xb4]
	str r6, [r4, #0xb8]
	str lr, [r4, #0xbc]
	str r6, [r4, #0xc0]
	str r6, [r4, #0xc4]
	str r6, [r4, #0xc8]
	str r6, [r4, #0xd0]
	str r6, [r4, #0xd4]
	str r6, [r4, #0xd8]
	str r3, [r4, #0xcc]
	bl MIi_CpuClearFast
	mov r0, r6
	mov r2, r5
	add r1, r4, #0xe8
	bl MIi_CpuClearFast
	mov r0, r6
	mov r2, r5
	add r1, r4, #0xf4
	bl MIi_CpuClearFast
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x100
	bl MIi_CpuClearFast
	mov r0, r6
	add r1, r4, #0x10c
	mov r2, #0x20
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F7368: .word 0x00001555
_020F736C: .word 0x00000536
_020F7370: .word 0x00000F21
	arm_func_end FUN_ov16_020f71fc

	arm_func_start FUN_ov16_020f7374
FUN_ov16_020f7374: ; 0x020F7374
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r5, _020F74C8 ; =0x02099F78
	ldr r1, _020F74CC ; =0x02118790
	mov r4, r0
	mov r0, r5
	bl L5_IniFileGetParam
	cmp r0, #0
	ble _020F73BC
	ldr r1, _020F74D0 ; =0x021187A0
	mov r0, r5
	bl L5_IniFileGetParam
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020F73D8
_020F73BC:
	ldr r1, _020F74D4 ; =0x021187B0
	mov r0, r5
	bl L5_IniFileGetParam
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020F73D8:
	bl _ffix
	cmp r0, #0
	ldreq r0, _020F74D8 ; =0x01001000
	mov r7, #0
	add r6, r0, #0x1000
	mov r5, #0x12c
_020F73F0:
	mla r8, r7, r5, r4
	mov r0, r8
	bl FUN_ov16_020f71fc
	str r6, [r8, #0x10]
	add r7, r7, #1
	str r6, [r8, #0x28]
	cmp r7, #5
	blt _020F73F0
	mov r0, #4
	str r0, [r4, #0x5dc]
	mov r6, #0
	sub r0, r0, #0xc4
	mov r3, #0x1000
	str r0, [sp]
	mov r0, r4
	mov r1, r6
	mov r2, r6
	str r3, [sp, #4]
	sub r5, r3, #0xff000000
	mov r3, #0x100
	str r5, [sp, #8]
	bl FUN_ov16_020f7848
	mov r0, r4
	bl FUN_ov16_020f7bf4
	mov r3, r0
	str r6, [sp]
	ldr r2, [r3, #0x7c]
	add r1, r3, #0x64
	str r2, [sp, #4]
	mov r0, r4
	mov r2, r1
	add r3, r3, #0x70
	bl FUN_ov16_020f7fc0
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f74dc
	str r6, [r4, #0x5dc]
	mov r0, r4
	bl FUN_ov16_020f7bf4
	mov r3, r0
	str r6, [sp]
	ldr r1, [r3, #0x7c]
	mov r0, r4
	str r1, [sp, #4]
	add r1, r3, #0x64
	mov r2, r1
	add r3, r3, #0x70
	bl FUN_ov16_020f7fc0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f74dc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020F74C8: .word unk_02099F78
_020F74CC: .word ov16_02118790
_020F74D0: .word ov16_021187A0
_020F74D4: .word ov16_021187B0
_020F74D8: .word 0x01001000
	arm_func_end FUN_ov16_020f7374

	arm_func_start FUN_ov16_020f74dc
FUN_ov16_020f74dc: ; 0x020F74DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r9, r0
	mov r8, r1
	bl FUN_ov16_020f7bf4
	mov r7, r0
	add r0, r7, #0x64
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, r7, #0x70
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r7, #0x7c]
	add r0, r7, #0x80
	str r1, [sp, #0x18]
	add r3, sp, #0x1c
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrh r0, [r7, #0x38]
	cmp r0, #3
	beq _020F7558
	cmp r0, #5
	beq _020F7564
	cmp r0, #6
	ldreqh r1, [r7, #0x3a]
	ldreq r0, _020F7798 ; =0x0000FFFE
	andeq r0, r1, r0
	streqh r0, [r7, #0x3a]
	b _020F7574
_020F7558:
	ldrh r1, [r7, #0x3a]
	ldr r0, _020F779C ; =0x0000FFFB
	b _020F756C
_020F7564:
	ldrh r1, [r7, #0x3a]
	ldr r0, _020F77A0 ; =0x0000FFFD
_020F756C:
	and r0, r1, r0
	strh r0, [r7, #0x3a]
_020F7574:
	ldrh r0, [r7, #0x3a]
	tst r0, #1
	beq _020F75B8
	mov r0, r9
	mov r2, r8
	add r1, r7, #0xdc
	bl FUN_ov16_020f7c74
	mov r3, r0
	cmp r3, #0x1000
	ldrgeh r1, [r7, #0x3a]
	ldrge r0, _020F7798 ; =0x0000FFFE
	add r2, r7, #0x8c
	andge r0, r1, r0
	strgeh r0, [r7, #0x3a]
	add r0, sp, #0
	add r1, r7, #0xb4
	bl FUN_ov16_020f70fc
_020F75B8:
	ldrh r0, [r7, #0x3a]
	tst r0, #2
	beq _020F75FC
	mov r0, r9
	mov r2, r8
	add r1, r7, #0xe8
	bl FUN_ov16_020f7c74
	mov r3, r0
	cmp r3, #0x1000
	ldrgeh r1, [r7, #0x3a]
	ldrge r0, _020F77A0 ; =0x0000FFFD
	add r2, r7, #0x98
	andge r0, r1, r0
	strgeh r0, [r7, #0x3a]
	add r0, sp, #0xc
	add r1, r7, #0xc0
	bl FUN_ov16_020f70fc
_020F75FC:
	ldrh r0, [r7, #0x3a]
	tst r0, #4
	beq _020F7640
	mov r0, r9
	mov r2, r8
	add r1, r7, #0xf4
	bl FUN_ov16_020f7c74
	mov r3, r0
	cmp r3, #0x1000
	ldrgeh r1, [r7, #0x3a]
	ldrge r0, _020F779C ; =0x0000FFFB
	add r2, r7, #0xa8
	andge r0, r1, r0
	strgeh r0, [r7, #0x3a]
	add r0, sp, #0x1c
	add r1, r7, #0xd0
	bl FUN_ov16_020f7140
_020F7640:
	ldrh r0, [r7, #0x3a]
	tst r0, #8
	beq _020F7684
	mov r0, r9
	mov r2, r8
	add r1, r7, #0x100
	bl FUN_ov16_020f7c74
	mov r3, r0
	cmp r3, #0x1000
	ldrgeh r1, [r7, #0x3a]
	ldrge r0, _020F77A4 ; =0x0000FFF7
	add r2, r7, #0xa4
	andge r0, r1, r0
	strgeh r0, [r7, #0x3a]
	add r0, sp, #0x18
	add r1, r7, #0xcc
	bl FUN_ov16_020f70d0
_020F7684:
	ldrh r1, [r7, #0x38]
	add r2, sp, #0
	mov r0, r9
	bl FUN_ov16_020f7db8
	ldrh r0, [r7, #0x3a]
	add r6, sp, #0
	add r3, r7, #0x64
	cmp r0, #0
	moveq r0, #0
	streqh r0, [r7, #0x38]
	ldmia r6, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r5, sp, #0xc
	add r3, r7, #0x70
	ldmia r5, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x18]
	add r4, sp, #0x1c
	str r0, [r7, #0x7c]
	add r3, r7, #0x80
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r3, r8
	mov r0, r9
	mov r1, r6
	add r2, r7, #0x10c
	bl FUN_ov16_020f7e50
	add r12, r7, #0x3c
	ldmia r6, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	add r8, r7, #0x48
	ldmia r5, {r0, r1, r2}
	stmia r8, {r0, r1, r2}
	ldr r0, [sp, #0x18]
	add r3, r7, #0x58
	str r0, [r7, #0x54]
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r9
	bl FUN_ov16_020f7c04
	mov r1, r0
	ldr r2, [r7, #0x3c]
	ldr r4, _020F77A8 ; =NNS_G3dGlb
	add r0, r7, #0x3c
	str r2, [r4, #0x240]
	ldr r3, [r7, #0x40]
	mov r2, r8
	str r3, [r4, #0x244]
	ldr r5, [r7, #0x44]
	ldr r3, _020F77AC ; =NNS_G3dGlb_cameraMtx
	str r5, [r4, #0x248]
	ldr r5, [r1]
	str r5, [r4, #0x24c]
	ldr r5, [r1, #4]
	str r5, [r4, #0x250]
	ldr r5, [r1, #8]
	str r5, [r4, #0x254]
	ldr r5, [r7, #0x48]
	str r5, [r4, #0x258]
	ldr r5, [r7, #0x4c]
	str r5, [r4, #0x25c]
	ldr r5, [r7, #0x50]
	str r5, [r4, #0x260]
	bl MTX_LookAt
	ldr r0, [r4, #0xfc]
	bic r0, r0, #0xe8
	str r0, [r4, #0xfc]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F7798: .word 0x0000FFFE
_020F779C: .word 0x0000FFFB
_020F77A0: .word 0x0000FFFD
_020F77A4: .word 0x0000FFF7
_020F77A8: .word NNS_G3dGlb
_020F77AC: .word NNS_G3dGlb_cameraMtx
	arm_func_end FUN_ov16_020f74dc

	arm_func_start FUN_ov16_020f77b0
FUN_ov16_020f77b0: ; 0x020F77B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020f7bf4
	str r6, [r0]
	str r5, [r0, #4]
	ldr r2, [sp, #0x10]
	str r4, [r0, #8]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020f77b0

	arm_func_start FUN_ov16_020f77e4
FUN_ov16_020f77e4: ; 0x020F77E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl FUN_ov16_020f7bf4
	mov r3, r0
	ldr r0, [r3, #0x10]
	mov r1, #0x1000
	str r0, [sp]
	ldr r0, _020F7840 ; =NNS_G3dGlb_projMtx
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldmia r3, {r0, r1, r2}
	ldr r3, [r3, #0xc]
	bl MTX_PerspectiveW
	ldr r2, _020F7844 ; =NNS_G3dGlb
	mov r0, r4
	ldr r3, [r2, #0xfc]
	mov r1, #0
	bic r3, r3, #0x50
	str r3, [r2, #0xfc]
	bl FUN_ov16_020f74dc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_020F7840: .word NNS_G3dGlb_projMtx
_020F7844: .word NNS_G3dGlb
	arm_func_end FUN_ov16_020f77e4

	arm_func_start FUN_ov16_020f7848
FUN_ov16_020f7848: ; 0x020F7848
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020f7bf4
	ldr r1, [sp, #0x10]
	mov r2, r5, lsl #0xc
	str r2, [r0, #0x14]
	mov r1, r1, lsl #0xc
	str r1, [r0, #0x18]
	mov r1, r6, lsl #0xc
	str r1, [r0, #0x1c]
	mov r1, r4, lsl #0xc
	ldr r2, [sp, #0x14]
	str r1, [r0, #0x20]
	ldr r1, [sp, #0x18]
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020f7848

	arm_func_start FUN_ov16_020f7894
FUN_ov16_020f7894: ; 0x020F7894
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	bl FUN_ov16_020f7bf4
	mov r3, r0
	ldr r0, [r3, #0x24]
	mov r1, #0x1800
	str r0, [sp]
	ldr r2, [r3, #0x28]
	ldr r0, _020F7900 ; =NNS_G3dGlb_projMtx
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	ldr r2, [r3, #0x1c]
	ldr r3, [r3, #0x20]
	bl MTX_OrthoW
	ldr r2, _020F7904 ; =NNS_G3dGlb
	mov r0, r4
	ldr r3, [r2, #0xfc]
	mov r1, #0
	bic r3, r3, #0x50
	str r3, [r2, #0xfc]
	bl FUN_ov16_020f74dc
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_020F7900: .word NNS_G3dGlb_projMtx
_020F7904: .word NNS_G3dGlb
	arm_func_end FUN_ov16_020f7894

	arm_func_start FUN_ov16_020f7908
FUN_ov16_020f7908: ; 0x020F7908
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x5dc]
	cmp r2, #4
	ldmeqfd sp!, {r3, pc}
	mov r1, #4
	str r2, [r0, #0x5e0]
	str r1, [r0, #0x5dc]
	bl FUN_ov16_020f7894
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7908

	arm_func_start FUN_ov16_020f792c
FUN_ov16_020f792c: ; 0x020F792C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x5dc]
	cmp r1, #4
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0x5e0]
	str r1, [r0, #0x5dc]
	bl FUN_ov16_020f77e4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f792c

	arm_func_start FUN_ov16_020f794c
FUN_ov16_020f794c: ; 0x020F794C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	bl FUN_ov16_020f7bf4
	ldrh r2, [sp, #0x20]
	ldrh r1, [sp, #0x24]
	ldr r3, [sp, #0x14]
	orr r2, r2, #1
	strh r2, [r0, #0x38]
	ldr r2, [r0, #0x64]
	cmp r1, #0
	str r2, [r0, #0xb4]
	ldr r2, [r0, #0x68]
	str r2, [r0, #0xb8]
	ldr r2, [r0, #0x6c]
	str r2, [r0, #0xbc]
	str r3, [r0, #0x8c]
	str r5, [r0, #0x90]
	str r4, [r0, #0x94]
	str r1, [r0, #0xdc]
	ldrh r2, [r0, #0x3a]
	ldrne r1, [sp, #0x28]
	orrne r2, r2, #1
	strneh r2, [r0, #0x3a]
	strne r1, [r0, #0xe4]
	strne r1, [r0, #0xe0]
	ldmnefd sp!, {r3, r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r1, _020F79E8 ; =0x0000FFFE
	and r1, r2, r1
	strh r1, [r0, #0x3a]
	str r3, [r0, #0x64]
	str r5, [r0, #0x68]
	str r4, [r0, #0x6c]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020F79E8: .word 0x0000FFFE
	arm_func_end FUN_ov16_020f794c

	arm_func_start FUN_ov16_020f79ec
FUN_ov16_020f79ec: ; 0x020F79EC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	bl FUN_ov16_020f7bf4
	ldrh r2, [sp, #0x20]
	ldrh r1, [sp, #0x24]
	ldr r3, [sp, #0x14]
	orr r2, r2, #2
	strh r2, [r0, #0x38]
	ldr r2, [r0, #0x70]
	cmp r1, #0
	str r2, [r0, #0xc0]
	ldr r2, [r0, #0x74]
	str r2, [r0, #0xc4]
	ldr r2, [r0, #0x78]
	str r2, [r0, #0xc8]
	str r3, [r0, #0x98]
	str r5, [r0, #0x9c]
	str r4, [r0, #0xa0]
	str r1, [r0, #0xe8]
	ldrh r2, [r0, #0x3a]
	ldrne r1, [sp, #0x28]
	orrne r2, r2, #2
	strneh r2, [r0, #0x3a]
	strne r1, [r0, #0xf0]
	strne r1, [r0, #0xec]
	ldmnefd sp!, {r3, r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r1, _020F7A88 ; =0x0000FFFD
	and r1, r2, r1
	strh r1, [r0, #0x3a]
	str r3, [r0, #0x70]
	str r5, [r0, #0x74]
	str r4, [r0, #0x78]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020F7A88: .word 0x0000FFFD
	arm_func_end FUN_ov16_020f79ec

	arm_func_start FUN_ov16_020f7a8c
FUN_ov16_020f7a8c: ; 0x020F7A8C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	bl FUN_ov16_020f7bf4
	ldrh r3, [sp, #0x20]
	ldrh r1, [sp, #0x24]
	ldr r2, [sp, #0x14]
	orr r3, r3, #4
	strh r3, [r0, #0x38]
	ldr r3, [r0, #0x80]
	cmp r1, #0
	str r3, [r0, #0xd0]
	ldr r3, [r0, #0x84]
	str r3, [r0, #0xd4]
	ldr r3, [r0, #0x88]
	str r3, [r0, #0xd8]
	str r2, [r0, #0xa8]
	str r5, [r0, #0xac]
	str r4, [r0, #0xb0]
	str r1, [r0, #0xf4]
	bne _020F7B28
	ldrh r3, [r0, #0x3a]
	ldr r2, [sp, #0x14]
	ldr r1, _020F7B4C ; =0x0000FFFB
	mov r2, r2, lsl #0x10
	and r12, r3, r1
	mov r1, r5, lsl #0x10
	strh r12, [r0, #0x3a]
	mov r2, r2, lsr #0x10
	mov r3, r4, lsl #0x10
	str r2, [r0, #0x80]
	mov r1, r1, lsr #0x10
	str r1, [r0, #0x84]
	mov r1, r3, lsr #0x10
	str r1, [r0, #0x88]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020F7B28:
	ldrh r2, [r0, #0x3a]
	ldr r1, [sp, #0x28]
	orr r2, r2, #4
	strh r2, [r0, #0x3a]
	str r1, [r0, #0xfc]
	str r1, [r0, #0xf8]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020F7B4C: .word 0x0000FFFB
	arm_func_end FUN_ov16_020f7a8c

	arm_func_start FUN_ov16_020f7b50
FUN_ov16_020f7b50: ; 0x020F7B50
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r4, r1
	mov r5, r3
	bl FUN_ov16_020f7bf4
	orr r1, r6, #4
	strh r1, [r0, #0x38]
	ldr r1, [r0, #0x7c]
	cmp r5, #0
	str r1, [r0, #0xcc]
	str r4, [r0, #0xa4]
	str r5, [r0, #0x100]
	ldrh r2, [r0, #0x3a]
	ldreq r1, _020F7BAC ; =0x0000FFF7
	andeq r1, r2, r1
	streqh r1, [r0, #0x3a]
	streq r4, [r0, #0x7c]
	orrne r2, r2, #8
	ldrne r1, [sp, #0x10]
	strneh r2, [r0, #0x3a]
	strne r1, [r0, #0x108]
	strne r1, [r0, #0x104]
	ldmfd sp!, {r4, r5, r6, pc}
_020F7BAC: .word 0x0000FFF7
	arm_func_end FUN_ov16_020f7b50

	arm_func_start FUN_ov16_020f7bb0
FUN_ov16_020f7bb0: ; 0x020F7BB0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	str r1, [r0, #0x2c]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov16_020f7bb0

	arm_func_start FUN_ov16_020f7be0
FUN_ov16_020f7be0: ; 0x020F7BE0
	cmp r1, #0
	bxlt lr
	cmp r1, #5
	strlt r1, [r0, #0x5dc]
	bx lr
	arm_func_end FUN_ov16_020f7be0

	arm_func_start FUN_ov16_020f7bf4
FUN_ov16_020f7bf4: ; 0x020F7BF4
	ldr r2, [r0, #0x5dc]
	mov r1, #0x12c
	mla r0, r2, r1, r0
	bx lr
	arm_func_end FUN_ov16_020f7bf4

	arm_func_start FUN_ov16_020f7c04
FUN_ov16_020f7c04: ; 0x020F7C04
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	add r0, r0, #0x2c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c04

	arm_func_start FUN_ov16_020f7c14
FUN_ov16_020f7c14: ; 0x020F7C14
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	add r0, r0, #0x3c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c14

	arm_func_start FUN_ov16_020f7c24
FUN_ov16_020f7c24: ; 0x020F7C24
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	add r0, r0, #0x48
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c24

	arm_func_start FUN_ov16_020f7c34
FUN_ov16_020f7c34: ; 0x020F7C34
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	add r0, r0, #0x58
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c34

	arm_func_start FUN_ov16_020f7c44
FUN_ov16_020f7c44: ; 0x020F7C44
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	ldr r0, [r0, #0x54]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c44

	arm_func_start FUN_ov16_020f7c54
FUN_ov16_020f7c54: ; 0x020F7C54
	stmfd sp!, {r3, lr}
	cmp r1, #0
	cmpeq r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r2
	bl FX_Div
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c54

	arm_func_start FUN_ov16_020f7c74
FUN_ov16_020f7c74: ; 0x020F7C74
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	mov r0, r2, lsl #0xc
	ble _020F7CA0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020F7CAC
_020F7CA0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020F7CAC:
	bl _ffix
	ldr r1, [r4, #4]
	subs r0, r1, r0
	str r0, [r4, #4]
	movmi r0, #0
	strmi r0, [r4, #4]
	ldr r0, [r4]
	cmp r0, #0
	beq _020F7DAC
	cmp r0, #1
	beq _020F7CE4
	cmp r0, #2
	beq _020F7CFC
	b _020F7DAC
_020F7CE4:
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	mov r0, r5
	bl FUN_ov16_020f7c54
	rsb r0, r0, #0x1000
	ldmfd sp!, {r3, r4, r5, pc}
_020F7CFC:
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	mov r0, r5
	bl FUN_ov16_020f7c54
	rsb r3, r0, #0x1000
	cmp r3, #0x800
	ble _020F7D68
	rsb r1, r3, #0x1000
	mov r0, r1, asr #0x1f
	mov r2, r0, lsl #0x1a
	mov r0, #0x800
	adds r3, r0, r1, lsl #26
	orr r2, r2, r1, lsr #6
	adc r0, r2, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #4
	ldr r0, _020F7DB4 ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrsh r0, [r0, r1]
	ldmfd sp!, {r3, r4, r5, pc}
_020F7D68:
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0x1a
	mov r0, #0x800
	adds r2, r0, r3, lsl #26
	orr r1, r1, r3, lsr #6
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #4
	ldr r0, _020F7DB4 ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrsh r0, [r0, r1]
	ldmfd sp!, {r3, r4, r5, pc}
_020F7DAC:
	mov r0, #0x1000
	ldmfd sp!, {r3, r4, r5, pc}
_020F7DB4: .word FX_SinCosTable_
	arm_func_end FUN_ov16_020f7c74

	arm_func_start FUN_ov16_020f7db8
FUN_ov16_020f7db8: ; 0x020F7DB8
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	cmp r1, #3
	beq _020F7DE0
	cmp r1, #5
	beq _020F7E04
	cmp r1, #6
	beq _020F7E28
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F7DE0:
	mov r1, #0
	str r1, [sp]
	ldr r12, [r2, #0x18]
	mov r1, r2
	add r3, r2, #0xc
	str r12, [sp, #4]
	bl FUN_ov16_020f7fc0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F7E04:
	add r1, r2, #0x1c
	str r1, [sp]
	ldr r12, [r2, #0x18]
	mov r1, r2
	mov r3, #0
	str r12, [sp, #4]
	bl FUN_ov16_020f7fc0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F7E28:
	add r1, r2, #0x1c
	str r1, [sp]
	ldr r12, [r2, #0x18]
	mov r1, r2
	add r3, r2, #0xc
	mov r2, #0
	str r12, [sp, #4]
	bl FUN_ov16_020f7fc0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7db8

	arm_func_start FUN_ov16_020f7e50
FUN_ov16_020f7e50: ; 0x020F7E50
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	mov r4, r2
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #1
	addne sp, sp, #0x90
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r3, #0
	ldrne r1, [r4, #0x18]
	ldrne r0, [r4, #0x10]
	mlane r1, r0, r3, r1
	strne r1, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r0, r1
	movge r0, #0
	addge sp, sp, #0x90
	strge r0, [r4]
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r4, #0x14]
	mov r2, r0, lsl #0x10
	cmp r3, #0
	mov r6, r2, lsr #0x10
	moveq r7, #0x1000
	beq _020F7EC0
	bl FX_Div
	rsb r7, r0, #0x1000
_020F7EC0:
	ldr r0, [r4, #4]
	mov r6, r6, asr #4
	smull r2, r1, r0, r7
	adds r2, r2, #0x800
	ldr r3, _020F7FBC ; =FX_SinCosTable_
	mov r6, r6, lsl #2
	ldrsh r3, [r3, r6]
	ldr r0, [r4, #8]
	ldr r8, [r4, #0xc]
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	smull r1, r12, r2, r3
	adds r1, r1, #0x800
	smull r6, r4, r0, r7
	adc r2, r12, #0
	adds r6, r6, #0x800
	adc r0, r4, #0
	mov r4, r6, lsr #0xc
	orr r4, r4, r0, lsl #20
	smull r0, lr, r4, r3
	mov r4, r1, lsr #0xc
	adds r0, r0, #0x800
	smull r12, r7, r8, r7
	adc r1, lr, #0
	mov r8, r0, lsr #0xc
	adds r12, r12, #0x800
	adc r0, r7, #0
	mov r7, r12, lsr #0xc
	orr r7, r7, r0, lsl #20
	smull r0, r3, r7, r3
	adds r7, r0, #0x800
	add r6, sp, #0
	mov r0, r6
	adc r3, r3, #0
	mov r7, r7, lsr #0xc
	orr r4, r4, r2, lsl #20
	orr r8, r8, r1, lsl #20
	orr r7, r7, r3, lsl #20
	bl MTX_Identity43_
	str r4, [sp, #0x24]
	add r4, sp, #0x30
	str r8, [sp, #0x28]
	str r7, [sp, #0x2c]
	add r1, r5, #0x1c
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_02053b48
	mov r0, r6
	mov r1, r4
	add r2, sp, #0x60
	bl MTX_Concat43
	add r4, sp, #0x84
	mov r0, r5
	mov r2, r5
	mov r1, r4
	bl VEC_Add
	add r0, r5, #0xc
	mov r1, r4
	mov r2, r0
	bl VEC_Add
	add sp, sp, #0x90
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F7FBC: .word FX_SinCosTable_
	arm_func_end FUN_ov16_020f7e50

	arm_func_start FUN_ov16_020f7fc0
FUN_ov16_020f7fc0: ; 0x020F7FC0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r10, r3
	movs r8, r2
	mov r9, r1
	ldr r4, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	cmpne r10, #0
	beq _020F7FF4
	mov r0, r8
	mov r1, r10
	bl VEC_Distance
	mov r7, r0
_020F7FF4:
	cmp r4, #0
	beq _020F8018
	ldr r0, [r4]
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	str r0, [sp, #0x14]
	b _020F8070
_020F8018:
	add r2, sp, #0
	mov r0, r10
	mov r1, r8
	bl VEC_Subtract
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	moveq r0, #0
	streq r0, [sp, #0xc]
	streq r0, [sp, #0x10]
	streq r0, [sp, #0x14]
	beq _020F8070
	add r4, sp, #0
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	add r0, sp, #0xc
	mov r1, r4
	bl FUN_ov16_020f7028
_020F8070:
	cmp r8, #0
	ldmneia r8, {r4, r5, r6}
	bne _020F80F0
	add r0, sp, #0
	add r1, sp, #0xc
	bl FUN_ov16_020f6f8c
	ldr r2, [sp]
	ldr r1, [sp, #4]
	rsb r2, r2, #0
	smull r2, r3, r7, r2
	ldr r0, [sp, #8]
	rsb r1, r1, #0
	adds r5, r2, #0x800
	smull r2, r4, r7, r1
	adc r1, r3, #0
	rsb r0, r0, #0
	adds r6, r2, #0x800
	mov r2, r5, lsr #0xc
	orr r2, r2, r1, lsl #20
	smull r0, r3, r7, r0
	adc r5, r4, #0
	adds r4, r0, #0x800
	mov r0, r6, lsr #0xc
	mov r6, r4, lsr #0xc
	adc r3, r3, #0
	ldmia r10, {r4, r12}
	orr r0, r0, r5, lsl #20
	ldr r1, [r10, #8]
	orr r6, r6, r3, lsl #20
	add r4, r4, r2
	add r5, r12, r0
	add r6, r1, r6
_020F80F0:
	cmp r10, #0
	ldrne r3, [r10]
	ldrne r1, [r10, #4]
	ldrne r0, [r10, #8]
	bne _020F8170
	add r0, sp, #0
	add r1, sp, #0xc
	bl FUN_ov16_020f6f8c
	ldr r1, [sp]
	ldr r10, [sp, #8]
	smull r1, r2, r7, r1
	adds r3, r1, #0x800
	ldr r0, [sp, #4]
	smull r12, r10, r7, r10
	smull r1, r0, r7, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	adds r12, r12, #0x800
	mov r1, r1, lsr #0xc
	mov lr, r12, lsr #0xc
	adc r10, r10, #0
	orr r3, r3, r2, lsl #20
	ldr r12, [r8]
	orr r1, r1, r0, lsl #20
	ldr r2, [r8, #4]
	ldr r0, [r8, #8]
	orr lr, lr, r10, lsl #20
	add r3, r12, r3
	add r1, r2, r1
	add r0, r0, lr
_020F8170:
	stmia r9, {r4, r5, r6}
	str r3, [r9, #0xc]
	str r1, [r9, #0x10]
	str r0, [r9, #0x14]
	ldr r0, [sp, #0xc]
	str r0, [r9, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r9, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [r9, #0x24]
	str r7, [r9, #0x18]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020f7fc0

	arm_func_start FUN_ov16_020f81a4
FUN_ov16_020f81a4: ; 0x020F81A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r7, r1
	bl FUN_ov16_020f7c14
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020f7c24
	mov r4, r0
	add r3, sp, #0
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_02053214
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_0205318c
	mov r6, r0
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	beq _020F8214
	cmp r6, #0
	bgt _020F8228
_020F8214:
	mov r0, r5
	mov r1, r4
	bl VEC_Distance
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020F8228:
	add r4, sp, #0
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	ldr r2, [sp]
	ldr r1, [sp, #4]
	smull r12, r3, r2, r6
	adds r8, r12, #0x800
	smull r2, r12, r1, r6
	adc r1, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r1, lsl #20
	ldr r0, [sp, #8]
	adds lr, r2, #0x800
	smull r2, r1, r0, r6
	adc r0, r12, #0
	adds r2, r2, #0x800
	mov r12, lr, lsr #0xc
	orr r12, r12, r0, lsl #20
	adc r0, r1, #0
	mov r6, r2, lsr #0xc
	orr r6, r6, r0, lsl #20
	mov r0, r7
	mov r1, r4
	mov r2, r4
	str r3, [sp]
	str r12, [sp, #4]
	str r6, [sp, #8]
	bl VEC_Add
	mov r0, r5
	mov r1, r4
	bl VEC_Distance
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020f81a4

	arm_func_start FUN_ov16_020f82b0
FUN_ov16_020f82b0: ; 0x020F82B0
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov16_020f82b0

	arm_func_start FUN_ov16_020f82bc
FUN_ov16_020f82bc: ; 0x020F82BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x34
	ldr r2, _020F880C ; =0x020A0640
	mov r4, r0
	ldrb r0, [r2, #0x50a]
	mov r9, r1
	mov r6, #1
	subs r8, r0, #1
	mov r7, #0
	bmi _020F82EC
	cmp r8, #0xf
	ble _020F82F0
_020F82EC:
	mov r8, #0
_020F82F0:
	mov r0, r4
	bl FUN_ov16_020f882c
	ldr r5, _020F8810 ; =0x0209A250
	ldr r10, _020F8814 ; =0x00000444
	mov r0, r5
	mov r1, r10
	bl FUN_0202de44
	mov r1, r7
	mov r2, r10
	str r0, [r4]
	bl MI_CpuFill8
	ldr r0, [r4]
	add r2, r8, r8, lsl #3
	strb r9, [r0, #0x43c]
	ldr r1, [r4]
	ldr r0, [r5]
	str r1, [sp, #0x10]
	add r3, r9, r2
	cmp r0, #0
	ldr r1, _020F8818 ; =0x021187D8
	beq _020F836C
	mov r0, #0x14
	mul r2, r3, r0
	str r2, [sp]
	stmib sp, {r0, r7}
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r5]
	add r2, sp, #0x10
	mov r3, r5
	bl FUN_0202eff0
_020F836C:
	add r0, r4, #4
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r3, _020F8810 ; =0x0209A250
	ldrh r1, [r0, #0x10]
	ldr r0, [r3]
	sub r1, r1, #1
	cmp r0, #0
	mov r0, r1, lsl #8
	ldr r1, _020F881C ; =0x021187F4
	beq _020F83B4
	str r0, [sp]
	mov r0, #0x100
	stmib sp, {r0, r7}
	str r6, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x10
	bl FUN_0202eff0
_020F83B4:
	add r0, r4, #0x104
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r3, _020F8810 ; =0x0209A250
	ldrh r2, [r0, #0x12]
	ldr r1, [r3]
	mov r0, #0x30
	sub r2, r2, #1
	mul r5, r2, r0
	cmp r1, #0
	ldr r1, _020F8820 ; =0x02118814
	beq _020F83FC
	str r5, [sp]
	stmib sp, {r0, r7}
	str r6, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x10
	bl FUN_0202eff0
_020F83FC:
	ldr r1, [r4]
	ldrb r0, [r1]
	strb r0, [r1, #0x43d]
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r1, #0x43e]
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	strb r0, [r1, #0x43f]
	ldr r1, [r4]
	ldrb r0, [r1, #3]
	strb r0, [r1, #0x440]
	ldr r2, [r4]
	ldrb r0, [r2, #0x440]
	ldrb r1, [r2, #0x43f]
	cmp r0, r1
	bhs _020F8450
	mov r0, r4
	bl FUN_ov16_020f882c
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020F8450:
	ldrb r0, [r2, #0x43e]
	cmp r0, r1
	bls _020F846C
	mov r0, r4
	bl FUN_ov16_020f882c
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020F846C:
	str r7, [sp, #0x20]
	str r7, [sp, #0x1c]
	str r7, [sp, #0x18]
	str r7, [sp, #0x14]
_020F847C:
	ldr r0, [r4]
	ldrb r0, [r0, #0x43d]
	bl FUN_ov16_020ef928
	ldr r1, [r4]
	and r0, r0, #0xff
	str r0, [r1, #0x424]
	ldr r1, [r4]
	ldr r3, _020F8824 ; =0x00000103
	ldrb r0, [r1, #0x43e]
	sub r0, r0, #1
	and r0, r0, #0xff
	str r0, [r1, #0x428]
	ldr r2, [r4]
	ldr r1, [r2, #0x424]
	ldr r0, [r2, #0x428]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	strb r7, [r0, #0x25]
	ldr r2, [r4]
	ldr r1, [r2, #0x424]
	ldr r0, [r2, #0x428]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	strh r3, [r0, #0x26]
	ldr r2, [r4]
	ldrb r1, [r2, #0x43f]
	ldrb r0, [r2, #0x43e]
	ldr r2, [r2, #0x424]
	sub r0, r1, r0
	subs r5, r2, r0
	add r8, r2, r0
	ldr r0, [r4]
	movmi r5, r7
	ldrb r0, [r0, #0x43d]
	cmp r8, r0
	movgt r8, r0
	cmp r5, r8
	ldreq r0, [r4]
	streq r5, [r0, #0x42c]
	beq _020F8534
	sub r0, r8, r5
	bl FUN_ov16_020ef928
	add r1, r5, r0
	ldr r0, [r4]
	and r1, r1, #0xff
	str r1, [r0, #0x42c]
_020F8534:
	ldr r0, [r4]
	str r6, [r0, #0x430]
	ldr r0, [r4]
	ldr r2, [r4]
	ldr r1, [r0, #0x42c]
	ldr r0, [r0, #0x424]
	subs r3, r1, r0
	ldrb r1, [r2, #0x43e]
	ldrb r0, [r2, #0x43f]
	rsbmi r3, r3, #0
	sub r1, r1, #1
	add r1, r1, r3
	sub r0, r0, r1
	tst r0, #1
	beq _020F8588
	ldr r0, [r2, #0x42c]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r2, #0x42c]
	addeq r0, r0, #1
	streq r0, [r2, #0x42c]
_020F8588:
	ldr r5, [r4]
	ldr r3, _020F8828 ; =0x00000203
	ldrb r2, [r5, #0x43f]
	ldr r1, [r5, #0x42c]
	ldr r0, [r5, #0x430]
	add r1, r5, r1, lsl #6
	sub r2, r2, #1
	add r0, r1, r0, lsl #2
	strb r2, [r0, #0x25]
	ldr r2, [r4]
	add r5, r3, #0x4e00
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x430]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	strh r3, [r0, #0x26]
	ldr r2, [r4]
	mov r3, #4
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x430]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	strb r6, [r0, #0x24]
	ldr r8, [r4]
	ldr r1, [r8, #0x42c]
	ldr r0, [r8, #0x430]
	ldrb r2, [r8, #0x43f]
	add r1, r8, r1, lsl #6
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	strb r2, [r0, #0x25]
	ldr r2, [r4]
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x430]
	add r1, r2, r1, lsl #6
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	strh r5, [r0, #0x26]
	ldr r2, [r4]
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x430]
	add r1, r2, r1, lsl #6
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	strb r3, [r0, #0x24]
	str r7, [sp, #0x30]
	str r7, [sp, #0x2c]
	str r7, [sp, #0x28]
	str r7, [sp, #0x24]
	ldr r2, [r4]
	ldrb r0, [r2, #0x43e]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x424]
	subs r8, r1, r0
	rsbmi r0, r8, #0
	strpl r8, [sp, #0x28]
	strmi r0, [sp, #0x30]
	ldr r1, [r4]
	cmp r8, #0
	ldrb r0, [r1, #0x43e]
	ldrb r1, [r1, #0x43f]
	rsblt r8, r8, #0
	sub r0, r0, #1
	add r0, r0, r8
	sub r8, r1, r0
	cmp r8, #0
	ble _020F86B8
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x30]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x28]
	str r0, [sp, #0x30]
	sub r8, r8, #2
_020F86B8:
	cmp r8, #0
	ble _020F86DC
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x30]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x28]
	str r0, [sp, #0x30]
	sub r8, r8, #2
_020F86DC:
	mov r5, #2
	b _020F872C
_020F86E4:
	mov r0, r5
	bl FUN_ov16_020ef928
	tst r0, #1
	beq _020F8710
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x24]
	str r0, [sp, #0x2c]
	b _020F8728
_020F8710:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x30]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x28]
	str r0, [sp, #0x30]
_020F8728:
	sub r8, r8, #2
_020F872C:
	cmp r8, #0
	bgt _020F86E4
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x24]
	cmp r1, r0
	ldreq r1, [sp, #0x18]
	ldreq r0, [sp, #0x28]
	cmpeq r1, r0
	ldreq r1, [sp, #0x1c]
	ldreq r0, [sp, #0x2c]
	cmpeq r1, r0
	bne _020F876C
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	beq _020F847C
_020F876C:
	str r7, [sp]
	str r7, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0x24
	ldr r2, [r0, #0x424]
	ldr r3, [r0, #0x428]
	mov r0, r4
	bl FUN_ov16_020f8c60
	cmp r0, #0
	bne _020F87B8
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	b _020F847C
_020F87B8:
	ldr r2, [r4]
	mov r0, r4
	ldr r1, [r2, #0x424]
	add r3, r2, #0x24
	ldr r2, [r2, #0x428]
	add r3, r3, r1, lsl #6
	ldrb r1, [r3, r2, lsl #2]
	and r1, r1, #0xfb
	strb r1, [r3, r2, lsl #2]
	bl FUN_ov16_020f9064
	mov r0, r4
	bl FUN_ov16_020f9354
	ldr r2, [r4]
	ldr r1, [r2, #0x424]
	add r0, r2, #0x24
	str r1, [r2, #0x434]
	ldr r1, [r0, #0x404]
	add r0, r2, #0x34
	str r1, [r0, #0x404]
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020F880C: .word unk_020A0640
_020F8810: .word unk_0209A250
_020F8814: .word 0x00000444
_020F8818: .word ov16_021187D8
_020F881C: .word ov16_021187F4
_020F8820: .word ov16_02118814
_020F8824: .word 0x00000103
_020F8828: .word 0x00000203
	arm_func_end FUN_ov16_020f82bc

	arm_func_start FUN_ov16_020f882c
FUN_ov16_020f882c: ; 0x020F882C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020F885C ; =0x0209A250
	bl FUN_0202e1c0
	mov r1, #0
	add r0, r4, #0x100
	str r1, [r4]
	strh r1, [r0, #0x34]
	ldmfd sp!, {r4, pc}
_020F885C: .word unk_0209A250
	arm_func_end FUN_ov16_020f882c

	arm_func_start FUN_ov16_020f8860
FUN_ov16_020f8860: ; 0x020F8860
	ldr r0, [r0]
	bx lr
	arm_func_end FUN_ov16_020f8860

	arm_func_start FUN_ov16_020f8868
FUN_ov16_020f8868: ; 0x020F8868
	sub r1, r1, #1
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_020F8878: ; jump table
	b _020F888C ; case 0
	b _020F88A0 ; case 1
	b _020F88B4 ; case 2
	b _020F88C8 ; case 3
	b _020F888C ; case 4
_020F888C:
	ldr r1, [r0]
	ldr r0, [r1, #0x438]
	sub r0, r0, #1
	str r0, [r1, #0x438]
	bx lr
_020F88A0:
	ldr r1, [r0]
	ldr r0, [r1, #0x434]
	add r0, r0, #1
	str r0, [r1, #0x434]
	bx lr
_020F88B4:
	ldr r1, [r0]
	ldr r0, [r1, #0x438]
	add r0, r0, #1
	str r0, [r1, #0x438]
	bx lr
_020F88C8:
	ldr r1, [r0]
	ldr r0, [r1, #0x434]
	sub r0, r0, #1
	str r0, [r1, #0x434]
	bx lr
	arm_func_end FUN_ov16_020f8868

	arm_func_start FUN_ov16_020f88dc
FUN_ov16_020f88dc: ; 0x020F88DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r7, r0
	ldr r2, [r7]
	ldr r1, [r2, #0x434]
	ldr r0, [r2, #0x438]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	ldrh r0, [r0, #0x26]
	mov r1, #0
	tst r0, #0x4000
	addne r0, r7, #0x100
	strneh r1, [r0, #0x34]
	addne sp, sp, #0x80
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0
_020F891C:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #0x20
	blt _020F891C
	mov r6, #1
	add r4, sp, #0
	mov r5, #0
_020F8938:
	mov r0, r5
	mov r2, r6
	cmp r6, #0x20
	bge _020F8964
_020F8948:
	ldr r1, [r4, r2, lsl #2]
	add r2, r2, #1
	add r1, r7, r1, lsl #3
	ldrh r1, [r1, #4]
	cmp r2, #0x20
	add r0, r0, r1
	blt _020F8948
_020F8964:
	cmp r0, #0
	beq _020F89BC
	bl FUN_ov16_020ef928
	mov r2, r6
	cmp r6, #0x1f
	bge _020F89A0
_020F897C:
	ldr r1, [r4, r2, lsl #2]
	add r1, r7, r1, lsl #3
	ldrh r1, [r1, #4]
	sub r0, r0, r1
	cmp r0, #0
	ble _020F89A0
	add r2, r2, #1
	cmp r2, #0x1f
	blt _020F897C
_020F89A0:
	ldr r1, [r4, r6, lsl #2]
	ldr r0, [r4, r2, lsl #2]
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	str r1, [r4, r2, lsl #2]
	cmp r6, #0x1f
	blt _020F8938
_020F89BC:
	ldr r5, _020F8A10 ; =0x0209BA20
	mov r4, #1
	add r6, sp, #0
_020F89C8:
	ldr r0, [r6, r4, lsl #2]
	add r0, r7, r0, lsl #3
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _020F89EC
	mov r0, r5
	bl FUN_0207290c
	cmp r0, #0
	bne _020F89F8
_020F89EC:
	add r4, r4, #1
	cmp r4, #0x1f
	blt _020F89C8
_020F89F8:
	add r1, sp, #0
	ldr r1, [r1, r4, lsl #2]
	add r0, r7, #0x100
	strh r1, [r0, #0x34]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F8A10: .word unk_0209BA20
	arm_func_end FUN_ov16_020f88dc

	arm_func_start FUN_ov16_020f8a14
FUN_ov16_020f8a14: ; 0x020F8A14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x19c
	mov r11, r0
	add r0, r11, #0x100
	ldrsh r0, [r0, #0x34]
	mov r7, #0
	add r0, r11, r0, lsl #3
	ldrh r8, [r0, #6]
	cmp r8, #0
	bne _020F8B30
	ldr r4, _020F8B4C ; =0x0209BA20
	ldrh r1, [r0, #8]
	add r2, sp, #0
	mov r0, r4
	bl FUN_0207273c
	cmp r0, #0
	addeq sp, sp, #0x19c
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r1, [sp]
	add r5, sp, #0x30
	mov r0, r4
	mov r2, r5
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x19c
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, r7
	ldr r4, _020F8B50 ; =0x0209A11C
	ldr r9, _020F8B54 ; =0x00000FFF
	mov r6, r8
_020F8A94:
	add r0, r5, r6, lsl #3
	ldrh r0, [r0, #0x4c]
	and r0, r0, r9
	mov r0, r0, lsl #0x10
	movs r1, r0, lsr #0x10
	beq _020F8AC0
	ldr r0, [r4]
	mov r2, r7
	bl FUN_0206c7dc
	cmp r0, #0
	addeq r8, r8, #1
_020F8AC0:
	add r6, r6, #1
	cmp r6, #0x20
	blt _020F8A94
	mov r0, r8
	bl FUN_ov16_020ef928
	ldr r5, _020F8B50 ; =0x0209A11C
	ldr r4, _020F8B54 ; =0x00000FFF
	mov r9, r0
	mov r10, #0
	add r6, sp, #0x30
_020F8AE8:
	add r0, r6, r10, lsl #3
	ldrh r0, [r0, #0x4c]
	and r0, r0, r4
	mov r0, r0, lsl #0x10
	movs r8, r0, lsr #0x10
	beq _020F8B24
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	bl FUN_0206c7dc
	cmp r0, #0
	bne _020F8B24
	cmp r9, #0
	beq _020F8B30
	sub r9, r9, #1
_020F8B24:
	add r10, r10, #1
	cmp r10, #0x20
	blt _020F8AE8
_020F8B30:
	add r0, r11, #0x100
	ldrsh r1, [r0, #0x34]
	mov r0, r8
	add r1, r11, r1, lsl #3
	strh r8, [r1, #6]
	add sp, sp, #0x19c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F8B4C: .word unk_0209BA20
_020F8B50: .word unk_0209A11C
_020F8B54: .word 0x00000FFF
	arm_func_end FUN_ov16_020f8a14

	arm_func_start FUN_ov16_020f8b58
FUN_ov16_020f8b58: ; 0x020F8B58
	add r1, r0, #0x100
	ldrsh r1, [r1, #0x34]
	add r0, r0, r1, lsl #3
	ldrh r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov16_020f8b58

	arm_func_start FUN_ov16_020f8b6c
FUN_ov16_020f8b6c: ; 0x020F8B6C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r1, #0
	add r0, sp, #0
_020F8B80:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #8
	blt _020F8B80
	mov r6, #0
	add r4, sp, #0
	mov r5, r6
_020F8B9C:
	mov r0, r5
	mov r12, r6
	cmp r6, #8
	bge _020F8BD0
	mov r1, #6
_020F8BB0:
	ldr r3, [r4, r12, lsl #2]
	add r12, r12, #1
	mla r2, r3, r1, r7
	add r2, r2, #0x100
	ldrh r2, [r2, #4]
	cmp r12, #8
	add r0, r0, r2
	blt _020F8BB0
_020F8BD0:
	cmp r0, #0
	beq _020F8C30
	bl FUN_ov16_020ef928
	mov r12, r6
	cmp r6, #7
	bge _020F8C14
	mov r1, #6
_020F8BEC:
	ldr r3, [r4, r12, lsl #2]
	mla r2, r3, r1, r7
	add r2, r2, #0x100
	ldrh r2, [r2, #4]
	sub r0, r0, r2
	cmp r0, #0
	ble _020F8C14
	add r12, r12, #1
	cmp r12, #7
	blt _020F8BEC
_020F8C14:
	ldr r1, [r4, r6, lsl #2]
	ldr r0, [r4, r12, lsl #2]
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	str r1, [r4, r12, lsl #2]
	cmp r6, #7
	blt _020F8B9C
_020F8C30:
	ldr r1, [sp]
	mov r0, #6
	mla r0, r1, r0, r7
	add r0, r0, #0x100
	ldrh r2, [r0, #6]
	ldr r1, [r7]
	strh r2, [r1, #0x14]
	ldrh r1, [r0, #8]
	ldr r0, [r7]
	strh r1, [r0, #0x16]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f8b6c

	arm_func_start FUN_ov16_020f8c60
FUN_ov16_020f8c60: ; 0x020F8C60
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r9, r0
	ldr r4, [sp, #0x48]
	ldr r0, [r9]
	ldr r6, [sp, #0x4c]
	add r4, r4, #2
	ldrb r7, [r0, #0x43f]
	and r5, r4, #3
	mov r4, #1
	str r6, [sp, #0x4c]
	mov r8, r1
	sub r10, r7, #2
	ldr r1, [sp, #0x4c]
	mov r5, r4, lsl r5
	mov r7, r2
	mov r6, r3
	cmp r1, r10
	and r2, r5, #0xff
	blt _020F8D98
	ldr r5, [r0, #0x42c]
	mov r3, #0
	cmp r5, r7
	ldreq r1, [r0, #0x430]
	subeq r8, r6, #1
	cmpeq r1, r8
	bne _020F8CE8
	add r0, r0, #0x24
	add r5, r0, r5, lsl #6
	ldrb r0, [r5, r1, lsl #2]
	mov r3, r4
	orr r0, r0, #4
	strb r0, [r5, r1, lsl #2]
	b _020F8D40
_020F8CE8:
	sub r1, r7, #1
	cmp r5, r1
	ldreq r4, [r0, #0x430]
	cmpeq r4, r6
	bne _020F8D14
	add r0, r0, #0x24
	add r1, r0, r5, lsl #6
	ldrb r0, [r1, r4, lsl #2]
	mov r3, #8
	orr r0, r0, #2
	b _020F8D3C
_020F8D14:
	add r1, r7, #1
	cmp r5, r1
	ldreq r4, [r0, #0x430]
	cmpeq r4, r6
	bne _020F8D40
	add r0, r0, #0x24
	add r1, r0, r5, lsl #6
	ldrb r0, [r1, r4, lsl #2]
	mov r3, #2
	orr r0, r0, #8
_020F8D3C:
	strb r0, [r1, r4, lsl #2]
_020F8D40:
	cmp r3, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9]
	mov r1, #3
	add r0, r0, r7, lsl #6
	add r0, r0, r6, lsl #2
	strh r1, [r0, #0x26]
	ldr r0, [r9]
	orr r1, r2, r3
	add r0, r0, r7, lsl #6
	add r0, r0, r6, lsl #2
	strb r1, [r0, #0x24]
	ldr r1, [r9]
	mov r0, #1
	add r1, r1, r7, lsl #6
	add r2, r1, r6, lsl #2
	ldr r1, [sp, #0x4c]
	add sp, sp, #0x24
	strb r1, [r2, #0x25]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F8D98:
	mvn r1, r2
	and r1, r1, #0xff
	cmp r7, #0
	and r5, r1, #0xf
	beq _020F8DC4
	sub r1, r7, #1
	add r1, r0, r1, lsl #6
	add r1, r1, r6, lsl #2
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _020F8DC8
_020F8DC4:
	and r5, r5, #0xf7
_020F8DC8:
	ldrb r1, [r0, #0x43d]
	sub r1, r1, #1
	cmp r7, r1
	beq _020F8DF0
	add r1, r7, #1
	add r1, r0, r1, lsl #6
	add r1, r1, r6, lsl #2
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _020F8DF4
_020F8DF0:
	and r5, r5, #0xfd
_020F8DF4:
	cmp r6, #0
	beq _020F8E14
	add r3, r0, r7, lsl #6
	sub r1, r6, #1
	add r1, r3, r1, lsl #2
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _020F8E18
_020F8E14:
	and r5, r5, #0xfe
_020F8E18:
	ldrb r1, [r0, #0x43e]
	sub r1, r1, #1
	cmp r6, r1
	beq _020F8E40
	add r3, r0, r7, lsl #6
	add r1, r6, #1
	add r1, r3, r1, lsl #2
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _020F8E44
_020F8E40:
	and r5, r5, #0xfb
_020F8E44:
	mov r4, #0
	mov r3, #1
_020F8E4C:
	ldr r1, [r8, r4, lsl #2]
	cmp r1, #0
	mvneq r1, r3, lsl r4
	andeq r1, r1, #0xff
	add r4, r4, #1
	andeq r5, r5, r1
	cmp r4, #4
	blt _020F8E4C
	cmp r5, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r0, #0x26
	add r4, r0, r7, lsl #6
	mov r3, r6, lsl #2
	ldrh r1, [r4, r3]
	mov r0, #0
	orr r1, r1, #3
	strh r1, [r4, r3]
	ldr r1, [r9]
	add r1, r1, r7, lsl #6
	add r1, r1, r6, lsl #2
	strb r2, [r1, #0x24]
	ldr r1, [r9]
	add r1, r1, r7, lsl #6
	add r2, r1, r6, lsl #2
	ldr r1, [sp, #0x4c]
	strb r1, [r2, #0x25]
	add r1, sp, #0x14
_020F8EC0:
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #4
	blt _020F8EC0
	mov r4, #0
	add r11, sp, #0x14
_020F8ED8:
	rsb r0, r4, #4
	ldr r10, [r11, r4, lsl #2]
	bl FUN_ov16_020ef928
	add r1, r4, r0
	ldr r0, [r11, r1, lsl #2]
	str r0, [r11, r4, lsl #2]
	add r4, r4, #1
	str r10, [r11, r1, lsl #2]
	cmp r4, #3
	blt _020F8ED8
	mov r0, r6, lsl #2
	add r0, r0, r7, lsl #6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	mov r11, #1
	add r0, r0, #1
	str r0, [sp, #0x10]
	mvn r0, #0
	mov r10, #0
	str r0, [sp, #8]
_020F8F28:
	add r0, sp, #0x14
	ldr r4, [r0, r10, lsl #2]
	tst r5, r11, lsl r4
	beq _020F8FF0
	mov r1, #0
	cmp r4, #3
	mov r0, r1
	addls pc, pc, r4, lsl #2
	b _020F8F78
_020F8F4C: ; jump table
	b _020F8F5C ; case 0
	b _020F8F64 ; case 1
	b _020F8F6C ; case 2
	b _020F8F74 ; case 3
_020F8F5C:
	ldr r1, [sp, #8]
	b _020F8F78
_020F8F64:
	mov r0, r11
	b _020F8F78
_020F8F6C:
	mov r1, r11
	b _020F8F78
_020F8F74:
	ldr r0, [sp, #8]
_020F8F78:
	ldr r3, [r9]
	ldr r2, [sp, #0xc]
	add r2, r3, r2
	add r2, r2, r0, lsl #6
	add r2, r2, r1, lsl #2
	ldrh r2, [r2, #0x26]
	tst r2, #1
	mvnne r0, r11, lsl r4
	andne r0, r0, #0xff
	andne r5, r5, r0
	bne _020F8FF0
	add r3, r6, r1
	ldr r1, [r8, r4, lsl #2]
	add r2, r7, r0
	sub r1, r1, #1
	str r1, [r8, r4, lsl #2]
	ldr r1, [sp, #0x10]
	str r4, [sp]
	str r1, [sp, #4]
	mov r0, r9
	mov r1, r8
	bl FUN_ov16_020f8c60
	cmp r0, #0
	bne _020F8FFC
	mvn r0, r11, lsl r4
	and r0, r0, #0xff
	and r5, r5, r0
	ldr r0, [r8, r4, lsl #2]
	add r0, r0, #1
	str r0, [r8, r4, lsl #2]
_020F8FF0:
	add r10, r10, #1
	cmp r10, #4
	blt _020F8F28
_020F8FFC:
	cmp r5, #0
	mov r4, #0
	bne _020F9030
	ldr r0, [r9]
	mov r1, r4
	add r0, r0, #0x24
	add r0, r0, r7, lsl #6
	add r0, r0, r6, lsl #2
	mov r2, #4
	bl MI_CpuFill8
	add sp, sp, #0x24
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F9030:
	ldr r1, [r9]
	add r0, sp, #0x14
	add r1, r1, #0x24
	add r3, r1, r7, lsl #6
	ldr r1, [r0, r10, lsl #2]
	mov r0, #1
	mov r1, r0, lsl r1
	ldrb r2, [r3, r6, lsl #2]
	and r1, r1, #0xff
	orr r1, r2, r1
	strb r1, [r3, r6, lsl #2]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020f8c60

	arm_func_start FUN_ov16_020f9064
FUN_ov16_020f9064: ; 0x020F9064
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	sub sp, sp, #0x400
	mov r4, #0
	str r0, [sp]
	mov r6, r4
	mov r3, r4
	add r1, sp, #0x24
_020F9084:
	ldr r0, [sp]
	mov r5, r3
	ldr r7, [r0]
	add r2, r7, r6, lsl #2
_020F9094:
	add r0, r2, r5, lsl #6
	ldrh r0, [r0, #0x26]
	tst r0, #1
	beq _020F90B4
	tst r0, #0x4000
	addeq r0, r5, r6, lsl #4
	streq r0, [r1, r4, lsl #2]
	addeq r4, r4, #1
_020F90B4:
	add r5, r5, #1
	cmp r5, #0x10
	blt _020F9094
	add r6, r6, #1
	cmp r6, #0x10
	blt _020F9084
	ldrb r0, [r7, #0x440]
	cmp r4, r0
	addge sp, sp, #0x24
	addge sp, sp, #0x400
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F90E0:
	mov r0, r4
	bl FUN_ov16_020ef928
	add r1, sp, #0x24
	ldr r3, [r1, r0, lsl #2]
	mov r5, #0
	mov r1, r3, lsr #0x1f
	mov r2, r3, asr #3
	rsb r0, r1, r3, lsl #28
	add r0, r1, r0, ror #28
	add r2, r3, r2, lsr #28
	str r0, [sp, #4]
	mov r0, r2, asr #4
	str r0, [sp, #8]
	add r0, sp, #0x14
_020F9118:
	str r5, [r0, r5, lsl #2]
	add r5, r5, #1
	cmp r5, #4
	blt _020F9118
	mov r7, #0
	add r5, sp, #0x14
_020F9130:
	rsb r0, r7, #4
	ldr r6, [r5, r7, lsl #2]
	bl FUN_ov16_020ef928
	add r1, r7, r0
	ldr r0, [r5, r1, lsl #2]
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	str r6, [r5, r1, lsl #2]
	cmp r7, #3
	blt _020F9130
	ldr r0, [sp]
	mov r7, #0
	ldr r12, [r0]
	ldr r0, [sp, #4]
	mov r11, #1
	add r1, r12, r0, lsl #6
	ldr r0, [sp, #8]
	add r2, r1, r0, lsl #2
	ldrb r0, [r2, #0x24]
	mvn r1, #0
	str r0, [sp, #0x10]
_020F9184:
	add r0, sp, #0x14
	ldr r6, [r0, r7, lsl #2]
	ldr r0, [sp, #0x10]
	mov r3, r11, lsl r6
	str r3, [sp, #0xc]
	tst r3, r0
	bne _020F9328
	mov r9, #0
	cmp r6, #3
	mov r8, r9
	addls pc, pc, r6, lsl #2
	b _020F91E0
_020F91B4: ; jump table
	b _020F91C4 ; case 0
	b _020F91CC ; case 1
	b _020F91D4 ; case 2
	b _020F91DC ; case 3
_020F91C4:
	mov r9, r1
	b _020F91E0
_020F91CC:
	mov r8, r11
	b _020F91E0
_020F91D4:
	mov r9, r11
	b _020F91E0
_020F91DC:
	mov r8, r1
_020F91E0:
	ldr r0, [sp, #4]
	adds lr, r0, r8
	bmi _020F9328
	ldrb r0, [r12, #0x43d]
	cmp lr, r0
	bge _020F9328
	ldr r0, [sp, #8]
	adds r5, r0, r9
	bmi _020F9328
	ldrb r0, [r12, #0x43e]
	cmp r5, r0
	bge _020F9328
	add r0, r2, r8, lsl #6
	add r10, r0, r9, lsl #2
	ldrh r3, [r10, #0x26]
	tst r3, #0x4000
	bne _020F9328
	tst r3, #2
	beq _020F924C
	ldrh r0, [r2, #0x26]
	tst r0, #2
	bne _020F9328
	ldrb r10, [r10, #0x25]
	ldrb r0, [r2, #0x25]
	add r0, r0, #1
	cmp r10, r0
	blt _020F9328
_020F924C:
	tst r3, #1
	beq _020F9274
	add r0, r2, r8, lsl #6
	add r0, r0, r9, lsl #2
	ldrb r3, [r0, #0x25]
	ldrb r0, [r2, #0x25]
	subs r0, r3, r0
	rsbmi r0, r0, #0
	cmp r0, #2
	bgt _020F9328
_020F9274:
	ldr r0, [sp, #4]
	add r1, r12, r0, lsl #6
	ldr r0, [sp, #8]
	add r3, r1, r0, lsl #2
	ldr r0, [sp, #0xc]
	ldrb r2, [r3, #0x24]
	and r0, r0, #0xff
	add r1, r6, #2
	orr r0, r2, r0
	strb r0, [r3, #0x24]
	ldr r0, [sp]
	ldr r2, [r0]
	and r0, r1, #3
	add r1, r2, lr, lsl #6
	add r3, r1, r5, lsl #2
	mov r1, #1
	mov r0, r1, lsl r0
	ldrb r2, [r3, #0x24]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, #0x24]
	ldr r0, [sp]
	ldr r3, [r0]
	add r0, r3, lr, lsl #6
	add r0, r0, r5, lsl #2
	ldrh r2, [r0, #0x26]
	tst r2, #1
	bne _020F9334
	ldr r2, [sp, #4]
	add r3, r3, r2, lsl #6
	ldr r2, [sp, #8]
	add r2, r3, r2, lsl #2
	ldrb r6, [r2, #0x25]
	add r2, sp, #0x24
	add r3, lr, r5, lsl #4
	add r6, r6, #1
	strb r6, [r0, #0x25]
	ldr r0, [sp]
	str r3, [r2, r4, lsl #2]
	ldr r0, [r0]
	add r4, r4, #1
	add r0, r0, lr, lsl #6
	add r0, r0, r5, lsl #2
	strh r1, [r0, #0x26]
	b _020F9334
_020F9328:
	add r7, r7, #1
	cmp r7, #4
	blt _020F9184
_020F9334:
	ldr r0, [sp]
	ldr r0, [r0]
	ldrb r0, [r0, #0x440]
	cmp r4, r0
	blt _020F90E0
	add sp, sp, #0x24
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020f9064

	arm_func_start FUN_ov16_020f9354
FUN_ov16_020f9354: ; 0x020F9354
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x200
	mov r7, r0
	ldr r3, [r7]
	mov r4, #0
	ldrb r5, [r3, #4]
	cmp r5, #0
	ble _020F9390
	mov r2, #0x1000
	add r0, sp, #0
_020F937C:
	mov r1, r4, lsl #1
	add r4, r4, #1
	strh r2, [r0, r1]
	cmp r4, r5
	blt _020F937C
_020F9390:
	ldrb r0, [r3, #3]
	cmp r4, r0
	bge _020F93B8
	mov r3, #0x2000
	add r1, sp, #0
_020F93A4:
	mov r2, r4, lsl #1
	add r4, r4, #1
	strh r3, [r1, r2]
	cmp r4, r0
	blt _020F93A4
_020F93B8:
	sub r1, r0, #1
	cmp r1, #0
	mov r6, #0
	ble _020F940C
	add r4, sp, #0
_020F93CC:
	mov r1, r6, lsl #1
	sub r0, r0, r6
	ldrh r5, [r4, r1]
	bl FUN_ov16_020ef928
	add r1, r6, r0
	ldr r0, [r7]
	mov r12, r1, lsl #1
	ldrb r0, [r0, #3]
	mov r2, r6, lsl #1
	ldrh r3, [r4, r12]
	add r6, r6, #1
	sub r1, r0, #1
	strh r3, [r4, r2]
	strh r5, [r4, r12]
	cmp r6, r1
	blt _020F93CC
_020F940C:
	mov r6, #0
	mov r5, r6
	add r1, sp, #0
	mov r4, r6
_020F941C:
	mov r12, r4
_020F9420:
	ldr r0, [r7]
	add r0, r0, r5, lsl #2
	add r3, r0, r12, lsl #6
	ldrh r2, [r3, #0x26]
	tst r2, #1
	beq _020F9450
	tst r2, #0x4000
	moveq r0, r6, lsl #1
	ldreqh r0, [r1, r0]
	addeq r6, r6, #1
	orreq r0, r2, r0
	streqh r0, [r3, #0x26]
_020F9450:
	add r12, r12, #1
	cmp r12, #0x10
	blt _020F9420
	add r5, r5, #1
	cmp r5, #0x10
	blt _020F941C
	add sp, sp, #0x200
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f9354

	arm_func_start FUN_ov16_020f9470
FUN_ov16_020f9470: ; 0x020F9470
	ldr r12, _020F9494 ; =FUN_ov16_020f949c
	ldr r2, _020F9498 ; =FUN_ov16_020f952c
	mov r3, #3
	mov r1, #2
	str r12, [r0, #0x24]
	strb r3, [r0, #0x92]
	str r2, [r0, #0x14]
	strb r1, [r0, #0x8e]
	bx lr
_020F9494: .word FUN_ov16_020f949c
_020F9498: .word FUN_ov16_020f952c
	arm_func_end FUN_ov16_020f9470

	arm_func_start FUN_ov16_020f949c
FUN_ov16_020f949c: ; 0x020F949C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	tst r1, #0x10
	ldrneb r12, [r0, #0xae]
	ldr r1, [r0, #4]
	mvneq r12, #0
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r1, #0x2c]
	cmp r3, #0
	moveq r1, #0
	streq r1, [r0, #0x24]
	streqb r1, [r0, #0x92]
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [r3, #0x40]
	ldr r1, [r3, #0x14]
	tst r2, #2
	beq _020F94F8
	mov r0, #0x30
	mla r0, r12, r0, r1
	mov r1, #0
	bl NNS_G3dGetCurrentMtx
	ldmfd sp!, {r3, pc}
_020F94F8:
	tst r2, #4
	beq _020F951C
	ldrsb r0, [r3, #0x49]
	cmp r12, r0
	ldmnefd sp!, {r3, pc}
	mov r0, r1
	mov r1, #0
	bl NNS_G3dGetCurrentMtx
	ldmfd sp!, {r3, pc}
_020F951C:
	mov r1, #0
	str r1, [r0, #0x24]
	strb r1, [r0, #0x92]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f949c

	arm_func_start FUN_ov16_020f952c
FUN_ov16_020f952c: ; 0x020F952C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x10
	ldrneb r1, [r4, #0xae]
	ldr r0, [r4, #4]
	mvneq r1, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x14]
	streqb r0, [r4, #0x8e]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020fab74
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0xb8]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f952c

	arm_func_start FUN_ov16_020f9588
FUN_ov16_020f9588: ; 0x020F9588
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_020f9588

	arm_func_start FUN_ov16_020f959c
FUN_ov16_020f959c: ; 0x020F959C
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020f959c

	arm_func_start FUN_ov16_020f95b0
FUN_ov16_020f95b0: ; 0x020F95B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r1, #0x40]
	mov r5, #0
	tst r0, #2
	movne r0, #1
	moveq r0, r5
	cmp r0, #0
	ldrne r5, [r1, #0x14]
	cmp r5, #0
	beq _020F9624
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	ldrsb r2, [r4, #0xd]
	mov r1, #0x30
	mov r0, #0x19
	mla r1, r2, r1, r5
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F9624:
	add r0, sp, #0x18
	bl FUN_ov16_020fa538
	ldr r5, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r7, sp, #0x24
	mov r6, #3
	str r0, [sp, #0x2c]
	mov r1, r7
	mov r2, r6
	str r5, [sp, #0x24]
	str r3, [sp, #0x28]
	mov r0, #0x1c
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r4, #0x10]
	add r0, sp, #0xc
	bl FUN_ov16_020fa54c
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	add r5, sp, #0x30
	str r0, [sp, #0x2c]
	str r1, [sp, #0x24]
	mov r0, r5
	ldmia r7, {r1, r2, r3}
	bl FUN_02053a70
	mov r1, r5
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r4, #0x10]
	add r0, sp, #0
	bl FUN_ov16_020fa560
	ldr r3, [sp]
	ldr r0, [sp, #4]
	str r3, [sp, #0x24]
	ldr r3, [sp, #8]
	str r0, [sp, #0x28]
	mov r1, r7
	mov r2, r6
	mov r0, #0x1b
	str r3, [sp, #0x2c]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f95b0

	arm_func_start FUN_ov16_020f96dc
FUN_ov16_020f96dc: ; 0x020F96DC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r4, r0
	add r1, r4, #0x18
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldrh r0, [r4, #0x40]
	tst r0, #0x10
	beq _020F9748
	ldr lr, _020F9784 ; =NNS_G3dGlb_cameraMtx
	add r12, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	mov r5, r12
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	mov r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	mov r0, r5
	mov r1, r5
	bl MTX_Inverse43
	b _020F975C
_020F9748:
	add r5, sp, #0
	add r1, r4, #0x24
	mov r0, r5
	ldmia r1, {r1, r2, r3}
	bl FUN_02053b48
_020F975C:
	mov r1, r5
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add r1, r4, #0x30
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, pc}
_020F9784: .word NNS_G3dGlb_cameraMtx
	arm_func_end FUN_ov16_020f96dc

	arm_func_start FUN_ov16_020f9788
FUN_ov16_020f9788: ; 0x020F9788
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fa638
	ldrh r1, [r4, #0xe]
	bl NNS_G3dMdlSetMdlDiffAll
	mov r0, r4
	bl FUN_ov16_020fa638
	ldrb r1, [r4, #0x4b]
	bl NNS_G3dMdlSetMdlAlphaAll
	ldrb r0, [r4, #0x43]
	cmp r0, #0
	bne _020F97C4
	mov r0, r4
	mov r1, #1
	bl FUN_ov16_020fac0c
_020F97C4:
	ldr r4, [r4, #8]
	ldr r1, _020F97E8 ; =FUN_ov16_020f9470
	mov r0, r4
	bl NNS_G3dRenderObjSetInitFunc
	mov r0, r4
	bl FUN_02053f7c
	mov r0, r4
	bl NNS_G3dRenderObjResetCallBack
	ldmfd sp!, {r4, pc}
_020F97E8: .word FUN_ov16_020f9470
	arm_func_end FUN_ov16_020f9788

	arm_func_start FUN_ov16_020f97ec
FUN_ov16_020f97ec: ; 0x020F97EC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r5, r0
	ldr r1, [r5, #0x44]
	cmp r1, #0
	addle sp, sp, #0x48
	ldmlefd sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0x48]
	cmp r1, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020faab0
	cmp r0, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r12, [r5, #0x14]
	cmp r12, #0
	beq _020F98B0
	ldrsb r1, [r5, #0x49]
	cmp r1, #0
	blt _020F98B0
	ldrh r0, [r5, #0x40]
	tst r0, #6
	beq _020F98B0
	tst r0, #2
	beq _020F9860
	mov r0, #0x30
	mla r12, r1, r0, r12
	b _020F9868
_020F9860:
	tst r0, #4
	beq _020F9884
_020F9868:
	add r4, sp, #0x18
	ldmia r12!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
_020F9884:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	addlt sp, sp, #0x48
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	b _020F98D8
_020F98B0:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	addlt sp, sp, #0x48
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x20]
	ldr r1, [r5, #0x18]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
_020F98D8:
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r4, #3
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x1c
	bl NNS_G3dGeBufferOP_N
	ldr r3, [r5, #0x44]
	ldr r1, [r5, #0x30]
	mov r0, #0x1000
	str r0, [sp, #0x10]
	smull r1, r0, r3, r1
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x38]
	mov r2, r4
	smull r1, r0, r3, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x14]
	add r1, sp, #0xc
	mov r0, #0x1b
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r5, #0x48]
	mov r1, #8
	bl FUN_ov16_020ef714
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f97ec

	arm_func_start FUN_ov16_020f9968
FUN_ov16_020f9968: ; 0x020F9968
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	bl FUN_ov16_020fabf4
	movs r4, r0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r5, #0x40]
	tst r0, #0x40
	beq _020F99A0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f9ad4
_020F99A0:
	ldrh r0, [r5, #0x40]
	tst r0, #0x20
	addeq sp, sp, #0x20
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsh r0, [r4, #0x18]
	mov r5, #0
	mov r1, r5
	strh r0, [sp, #0x14]
	ldrsh r3, [r4, #0x1a]
	mov r2, r5
	mov r0, #0x11
	strh r3, [sp, #0x16]
	ldrsh r3, [r4, #0x1c]
	strh r3, [sp, #0x18]
	ldrsh r3, [r4, #0x1e]
	strh r3, [sp, #0x1a]
	ldrsh r3, [r4, #0x20]
	strh r3, [sp, #0x1c]
	ldrsh r3, [r4, #0x22]
	strh r3, [sp, #0x1e]
	bl NNS_G3dGeBufferOP_N
	ldr r3, [r4, #0x24]
	mov r4, #3
	add r1, sp, #8
	mov r2, r4
	mov r0, #0x1b
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGeFlushBuffer
	ldr r0, _020F9AC8 ; =0x000030C1
	ldr r3, _020F9ACC ; =0x040004A4
	add r1, sp, #0x14
	str r0, [r3]
	str r5, [r3, #0x5c]
	mov r2, r4
	mov r0, #0x70
	str r5, [r3, #0x60]
	bl NNS_G3dGeBufferOP_N
	bl OS_GetTick
	add r5, sp, #4
	mov r6, r0
	mov r0, r5
	bl G3X_GetBoxTestResult
	cmp r0, #0
	beq _020F9A98
	ldr r4, _020F9AD0 ; =0x7D269B01
_020F9A64:
	bl OS_GetTick
	subs r0, r0, r6
	mov r1, r0, lsl #6
	umull r0, r2, r1, r4
	mov r2, r2, lsr #0xe
	cmp r2, #0x64
	movhi r0, #1
	strhi r0, [sp, #4]
	bhi _020F9A98
	mov r0, r5
	bl G3X_GetBoxTestResult
	cmp r0, #0
	bne _020F9A64
_020F9A98:
	mov r4, #1
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x12
	str r4, [sp]
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #4]
	cmp r0, #0
	moveq r4, #0
	mov r0, r4
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AC8: .word 0x000030C1
_020F9ACC: .word 0x040004A4
_020F9AD0: .word 0x7D269B01
	arm_func_end FUN_ov16_020f9968

	arm_func_start FUN_ov16_020f9ad4
FUN_ov16_020f9ad4: ; 0x020F9AD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	ldr r4, _020F9CC8 ; =0x021178F8
	add r3, sp, #0x6c
	mov r8, r1
	mov r2, #5
_020F9AEC:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F9AEC
	ldr r4, _020F9CCC ; =0x021178E4
	add r3, sp, #0x58
	mov r2, #5
_020F9B10:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F9B10
	ldr r4, _020F9CD0 ; =0x0211790C
	add r3, sp, #0x44
	mov r2, #5
_020F9B34:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F9B34
	mov r7, #0
	mov r1, r7
	mov r2, r7
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	ldr r4, _020F9CD4 ; =0x001F801F
	mov r6, #1
	add r1, sp, #0x1c
	mov r2, r6
	mov r0, #0x30
	str r4, [sp, #0x1c]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x18
	mov r2, r6
	mov r0, #0x31
	str r4, [sp, #0x18]
	bl NNS_G3dGeBufferOP_N
	ldr r0, _020F9CD8 ; =0x3F0000C0
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	mov r2, r6
	mov r0, #0x29
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r8, #0x24]
	mov r4, #3
	mov r5, #0x1b
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	mov r0, r5
	add r1, sp, #0x38
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	ldrsh r9, [r8, #0x1c]
	ldrsh r3, [r8, #0x1a]
	ldrsh r2, [r8, #0x18]
	mov r0, #0x1c
	add r1, sp, #0x2c
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r9, [sp, #0x34]
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	mov r0, r5
	ldrsh r9, [r8, #0x22]
	ldrsh r5, [r8, #0x20]
	ldrsh r3, [r8, #0x1e]
	add r1, sp, #0x20
	mov r2, r4
	str r3, [sp, #0x20]
	str r5, [sp, #0x24]
	str r9, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x40
	add r1, sp, #0x10
	mov r2, r6
	str r4, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x1f
	str r0, [sp, #0xc]
	mov r2, r6
	mov r0, #0x20
	add r1, sp, #0xc
	bl NNS_G3dGeBufferOP_N
	add r6, sp, #0x6c
	add r5, sp, #0x58
	add r4, sp, #0x44
	mov r10, #0x23
	add r9, sp, #4
	mov r8, #2
_020F9C64:
	mov r0, r7, lsl #1
	ldrh r2, [r6, r0]
	ldrh r1, [r5, r0]
	ldrh r3, [r4, r0]
	mov r0, r10
	orr r12, r2, r1, lsl #16
	mov r1, r9
	mov r2, r8
	str r12, [sp, #4]
	str r3, [sp, #8]
	bl NNS_G3dGeBufferOP_N
	add r7, r7, #1
	cmp r7, #0xa
	blt _020F9C64
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	mov r2, #1
	add r1, sp, #0
	mov r0, #0x12
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F9CC8: .word 0x021178F8
_020F9CCC: .word 0x021178E4
_020F9CD0: .word 0x0211790C
_020F9CD4: .word 0x001F801F
_020F9CD8: .word 0x3F0000C0
	arm_func_end FUN_ov16_020f9ad4

	arm_func_start FUN_ov16_020f9cdc
FUN_ov16_020f9cdc: ; 0x020F9CDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #4
	mov r2, #0x48
	bl MIi_CpuClearFast
	mov r8, #0x1000
	mov r3, #3
	sub r2, r3, #4
	ldrh r0, [r5, #0x40]
	ldr r6, _020F9D7C ; =0x00007FFF
	mov r7, #0x1f
	orr r0, r0, #8
	mov r1, #0x10
	strb r7, [r5, #0x4b]
	strh r6, [r5, #0xe]
	str r8, [r5, #0x30]
	str r8, [r5, #0x34]
	str r8, [r5, #0x38]
	strb r3, [r5, #0x4a]
	strb r2, [r5, #0xd]
	strb r1, [r5, #0x48]
	strb r2, [r5, #0x49]
	str r2, [r5, #0x3c]
	strh r0, [r5, #0x40]
	add r9, r5, #0x4c
	add r8, r5, #0xb0
	mov r6, #0x14
	mov r7, #0x30
_020F9D54:
	mla r0, r4, r6, r9
	bl FUN_ov16_020fc538
	mla r0, r4, r7, r8
	bl FUN_ov16_02110b80
	add r4, r4, #1
	cmp r4, #5
	blt _020F9D54
	add r0, r5, #0x1a0
	bl FUN_ov16_02111164
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F9D7C: .word 0x00007FFF
	arm_func_end FUN_ov16_020f9cdc

	arm_func_start FUN_ov16_020f9d80
FUN_ov16_020f9d80: ; 0x020F9D80
	ldr r12, _020F9D88 ; =FUN_ov16_020fa154
	bx r12
_020F9D88: .word FUN_ov16_020fa154
	arm_func_end FUN_ov16_020f9d80

	arm_func_start FUN_ov16_020f9d8c
FUN_ov16_020f9d8c: ; 0x020F9D8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r2, [r4, #4]
	mov r5, r0
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	cmp r2, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fa154
	ldr r0, _020F9DD8 ; =0x02099EE4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020F9DD8: .word unk_02099EE4
	arm_func_end FUN_ov16_020f9d8c

	arm_func_start FUN_ov16_020f9ddc
FUN_ov16_020f9ddc: ; 0x020F9DDC
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	cmp r4, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fa154
	ldr r0, _020F9E20 ; =0x02099EE4
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020F9E20: .word unk_02099EE4
	arm_func_end FUN_ov16_020f9ddc

	arm_func_start FUN_ov16_020f9e24
FUN_ov16_020f9e24: ; 0x020F9E24
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, r0
	cmp r3, #0
	ldreq r0, [sp, #0x20]
	ldr r5, [sp, #0x20]
	cmpeq r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x24]
	stmia sp, {r3, r5}
	ldrb r0, [sp, #0x24]
	mov r3, r2
	mov r6, #1
	str r0, [sp, #8]
	ldr r0, _020F9E98 ; =0x02099EE4
	str r6, [sp, #0xc]
	ldr r0, [r0]
	mov r2, #4
	bl FUN_ov16_020fcd08
	movs r5, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov16_020fa154
	mov r0, r6
	str r5, [r4, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020F9E98: .word unk_02099EE4
	arm_func_end FUN_ov16_020f9e24

	arm_func_start FUN_ov16_020f9e9c
FUN_ov16_020f9e9c: ; 0x020F9E9C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _020F9ED8 ; =0x02099EE4
	str r3, [sp]
	mov r5, r0
	ldr r0, [r12]
	mov r3, #4
	bl FUN_ov16_020fcb70
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020fa154
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020F9ED8: .word unk_02099EE4
	arm_func_end FUN_ov16_020f9e9c

	arm_func_start FUN_ov16_020f9edc
FUN_ov16_020f9edc: ; 0x020F9EDC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x20]
	str r3, [sp]
	ldr r3, [sp, #0x24]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r5, #1
	ldr r3, _020F9F3C ; =0x02099EE4
	str r5, [sp, #0xc]
	mov r6, r0
	ldr r0, [r3]
	mov r3, #4
	bl FUN_ov16_020fcef8
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov16_020fa154
	mov r0, r5
	str r4, [r6, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020F9F3C: .word unk_02099EE4
	arm_func_end FUN_ov16_020f9edc

	arm_func_start FUN_ov16_020f9f40
FUN_ov16_020f9f40: ; 0x020F9F40
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020F9F78 ; =0x02099EE4
	mov r5, r0
	ldr r0, [r3]
	mov r3, #4
	bl FUN_ov16_020fd120
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020fa154
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020F9F78: .word unk_02099EE4
	arm_func_end FUN_ov16_020f9f40

	arm_func_start FUN_ov16_020f9f7c
FUN_ov16_020f9f7c: ; 0x020F9F7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl FUN_ov16_020fa93c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov16_020fa6c0
	mov r0, r6
	bl FUN_ov16_020f959c
	cmp r0, #0
	beq _020F9FC8
	ldrb r1, [r6, #0xc]
	and r0, r4, #0xff
	cmp r1, r0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020F9FC8:
	mov r0, r6
	bl FUN_ov16_020fa0e8
	mov r0, r6
	strb r4, [r6, #0xc]
	bl FUN_ov16_020fa638
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020FA0D8 ; =0x0209A250
	mov r1, #0x54
	bl FUN_0202de44
	str r0, [r6, #8]
	cmp r0, #0
	bne _020FA010
	mov r0, r6
	bl FUN_ov16_020fa0e8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA010:
	mov r1, r4
	bl NNS_G3dRenderObjInit
	ldrh r1, [r6, #0x40]
	ldr r0, _020FA0DC ; =0x0000FFF9
	cmp r5, #1
	and r0, r1, r0
	strh r0, [r6, #0x40]
	mov r7, #0
	beq _020FA04C
	cmp r5, #2
	ldreqh r0, [r6, #0x40]
	moveq r7, #0x30
	orreq r0, r0, #4
	streqh r0, [r6, #0x40]
	b _020FA064
_020FA04C:
	ldrh r1, [r6, #0x40]
	ldrb r2, [r4, #0x17]
	mov r0, #0x30
	orr r1, r1, #2
	smulbb r7, r2, r0
	strh r1, [r6, #0x40]
_020FA064:
	cmp r7, #0
	ble _020FA08C
	ldr r0, _020FA0D8 ; =0x0209A250
	mov r1, r7
	bl FUN_0202de44
	mov r1, r0
	mov r2, r7
	mov r0, #0
	str r1, [r6, #0x14]
	bl MIi_CpuClearFast
_020FA08C:
	ldr r0, [r6, #8]
	ldr r5, _020FA0E0 ; =0x02099EE4
	str r6, [r0, #0x2c]
	ldr r0, [r5]
	ldr r1, [r6, #4]
	bl FUN_ov16_020fd660
	cmp r0, #0
	bne _020FA0C0
	ldr r0, [r5]
	ldr r1, [r6, #4]
	bl FUN_ov16_020fd4cc
	mov r0, #1
	strb r0, [r6, #0x42]
_020FA0C0:
	ldr r1, _020FA0E4 ; =0x02118858
	mov r0, r4
	bl FUN_02053c20
	strb r0, [r6, #0x49]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA0D8: .word unk_0209A250
_020FA0DC: .word 0x0000FFF9
_020FA0E0: .word unk_02099EE4
_020FA0E4: .word ov16_02118858
	arm_func_end FUN_ov16_020f9f7c

	arm_func_start FUN_ov16_020fa0e8
FUN_ov16_020fa0e8: ; 0x020FA0E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020FA0F4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fa8e4
	add r4, r4, #1
	cmp r4, #5
	blt _020FA0F4
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _020FA128
	ldr r0, _020FA150 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r5, #8]
_020FA128:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _020FA144
	ldr r0, _020FA150 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r5, #0x14]
_020FA144:
	mov r0, r5
	bl FUN_ov16_020fabe4
	ldmfd sp!, {r3, r4, r5, pc}
_020FA150: .word unk_0209A250
	arm_func_end FUN_ov16_020fa0e8

	arm_func_start FUN_ov16_020fa154
FUN_ov16_020fa154: ; 0x020FA154
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl FUN_ov16_020fa0e8
	mov r7, #0
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020fac0c
	add r6, r4, #0xb0
	mov r5, #0x30
	b _020FA188
_020FA17C:
	mla r0, r7, r5, r6
	bl FUN_ov16_02110db4
	add r7, r7, #1
_020FA188:
	cmp r7, #5
	blt _020FA17C
	mov r7, #0
	add r6, r4, #0x4c
	mov r5, #0x14
	b _020FA1AC
_020FA1A0:
	mla r0, r7, r5, r6
	bl FUN_ov16_020fc5f8
	add r7, r7, #1
_020FA1AC:
	cmp r7, #5
	blt _020FA1A0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020FA1CC
	ldr r0, _020FA1E0 ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_020FA1CC:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl FUN_ov16_020f9cdc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA1E0: .word unk_02099EE4
	arm_func_end FUN_ov16_020fa154

	arm_func_start FUN_ov16_020fa1e4
FUN_ov16_020fa1e4: ; 0x020FA1E4
	ldr r12, _020FA1F8 ; =NNS_G3dGeBufferOP_N
	add r1, r0, #0x18
	mov r0, #0x1c
	mov r2, #3
	bx r12
_020FA1F8: .word NNS_G3dGeBufferOP_N
	arm_func_end FUN_ov16_020fa1e4

	arm_func_start FUN_ov16_020fa1fc
FUN_ov16_020fa1fc: ; 0x020FA1FC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	add r4, sp, #0
	add r1, r0, #0x24
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_02053a70
	mov r1, r4
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x30
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa1fc

	arm_func_start FUN_ov16_020fa230
FUN_ov16_020fa230: ; 0x020FA230
	ldr r12, _020FA244 ; =NNS_G3dGeBufferOP_N
	add r1, r0, #0x30
	mov r0, #0x1b
	mov r2, #3
	bx r12
_020FA244: .word NNS_G3dGeBufferOP_N
	arm_func_end FUN_ov16_020fa230

	arm_func_start FUN_ov16_020fa248
FUN_ov16_020fa248: ; 0x020FA248
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl FUN_ov16_020f959c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _020FA27C
	mov r1, #0
	mov r2, r1
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
_020FA27C:
	mov r0, r4
	bl FUN_ov16_020f95b0
	mov r0, r4
	bl FUN_ov16_020f96dc
	mov r0, r4
	bl FUN_ov16_020fa2bc
	mov r4, r0
	cmp r5, #0
	beq _020FA2B4
	mov r2, #1
	add r1, sp, #0
	mov r0, #0x12
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
_020FA2B4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fa248

	arm_func_start FUN_ov16_020fa2bc
FUN_ov16_020fa2bc: ; 0x020FA2BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020f959c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020f9968
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020f9788
	mov r0, r4
	bl FUN_ov16_020f97ec
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa2bc

	arm_func_start FUN_ov16_020fa300
FUN_ov16_020fa300: ; 0x020FA300
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020f959c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r1, r4
	mov r2, r4
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fa248
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fa300

	arm_func_start FUN_ov16_020fa340
FUN_ov16_020fa340: ; 0x020FA340
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r8, r1
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r2, #5
	blo _020FA388
	mov r7, #0
	add r6, r4, #0x4c
	mov r5, #0x14
_020FA36C:
	mla r0, r7, r5, r6
	mov r1, r8
	bl FUN_ov16_020fc748
	add r7, r7, #1
	cmp r7, #5
	blt _020FA36C
	b _020FA398
_020FA388:
	add r3, r4, #0x4c
	mov r0, #0x14
	mla r0, r2, r0, r3
	bl FUN_ov16_020fc748
_020FA398:
	ldrh r0, [r4, #0x40]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #8]
	ldr r0, [r1]
	orr r0, r0, #1
	str r0, [r1]
	ldr r1, [r4, #8]
	ldr r0, [r1]
	orr r0, r0, #2
	str r0, [r1]
	ldr r0, [r4, #8]
	bl FUN_02053f7c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fa340

	arm_func_start FUN_ov16_020fa3dc
FUN_ov16_020fa3dc: ; 0x020FA3DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov16_020f9d8c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
_020FA3FC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020faa1c
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_020fa7cc
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020faa34
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_020fa574
	add r4, r4, #1
	cmp r4, #5
	blt _020FA3FC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fa3dc

	arm_func_start FUN_ov16_020fa448
FUN_ov16_020fa448: ; 0x020FA448
	ldr r2, [r1]
	str r2, [r0, #0x18]
	ldr r2, [r1, #4]
	str r2, [r0, #0x1c]
	ldr r1, [r1, #8]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_ov16_020fa448

	arm_func_start FUN_ov16_020fa464
FUN_ov16_020fa464: ; 0x020FA464
	ldr r2, [r1]
	str r2, [r0, #0x24]
	ldr r12, [r1, #4]
	mov r2, r2, lsl #0x10
	str r12, [r0, #0x28]
	ldr r3, [r1, #8]
	mov r1, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r2, lsr #0x10
	mov r2, r1, lsr #0x10
	mov r1, r3, lsr #0x10
	str r12, [r0, #0x24]
	str r2, [r0, #0x28]
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end FUN_ov16_020fa464

	arm_func_start FUN_ov16_020fa4a0
FUN_ov16_020fa4a0: ; 0x020FA4A0
	ldr r2, [r1]
	str r2, [r0, #0x30]
	ldr r2, [r1, #4]
	str r2, [r0, #0x34]
	ldr r1, [r1, #8]
	str r1, [r0, #0x38]
	bx lr
	arm_func_end FUN_ov16_020fa4a0

	arm_func_start FUN_ov16_020fa4bc
FUN_ov16_020fa4bc: ; 0x020FA4BC
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r1, [sp]
	add r1, sp, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_ov16_020fa448
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_020fa4bc

	arm_func_start FUN_ov16_020fa4e0
FUN_ov16_020fa4e0: ; 0x020FA4E0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r1, [sp]
	add r1, sp, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_ov16_020fa464
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_020fa4e0

	arm_func_start FUN_ov16_020fa504
FUN_ov16_020fa504: ; 0x020FA504
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r1, [sp]
	add r1, sp, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_ov16_020fa4a0
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_020fa504

	arm_func_start FUN_ov16_020fa528
FUN_ov16_020fa528: ; 0x020FA528
	cmp r1, #0x1f
	movhi r1, #0x1f
	strb r1, [r0, #0x4b]
	bx lr
	arm_func_end FUN_ov16_020fa528

	arm_func_start FUN_ov16_020fa538
FUN_ov16_020fa538: ; 0x020FA538
	mov r3, r0
	add r0, r1, #0x18
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fa538

	arm_func_start FUN_ov16_020fa54c
FUN_ov16_020fa54c: ; 0x020FA54C
	mov r3, r0
	add r0, r1, #0x24
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fa54c

	arm_func_start FUN_ov16_020fa560
FUN_ov16_020fa560: ; 0x020FA560
	mov r3, r0
	add r0, r1, #0x30
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fa560

	arm_func_start FUN_ov16_020fa574
FUN_ov16_020fa574: ; 0x020FA574
	stmfd sp!, {r3, lr}
	add r3, r0, #0xb0
	mov r0, #0x30
	mla r0, r2, r0, r3
	bl FUN_ov16_02110cc8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa574

	arm_func_start FUN_ov16_020fa598
FUN_ov16_020fa598: ; 0x020FA598
	stmfd sp!, {r3, lr}
	add r12, r0, #0xb0
	mov r0, #0x30
	mla r0, r3, r0, r12
	ldr r3, [sp, #8]
	bl FUN_ov16_02110bbc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa598

	arm_func_start FUN_ov16_020fa5b4
FUN_ov16_020fa5b4: ; 0x020FA5B4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	add r12, r0, #0xb0
	mov r0, #0x30
	mla r0, r2, r0, r12
	ldr r12, [sp, #0x14]
	mov r2, r3
	ldrb r3, [sp, #0x18]
	str r12, [sp]
	ldrb r12, [sp, #0x1c]
	str r3, [sp, #4]
	ldr r3, [sp, #0x10]
	str r12, [sp, #8]
	bl FUN_ov16_02110bfc
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_020fa5b4

	arm_func_start FUN_ov16_020fa5f4
FUN_ov16_020fa5f4: ; 0x020FA5F4
	stmfd sp!, {r3, lr}
	add r2, r0, #0xb0
	mov r0, #0x30
	mla r0, r1, r0, r2
	bl FUN_ov16_02110db4
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa5f4

	arm_func_start FUN_ov16_020fa610
FUN_ov16_020fa610: ; 0x020FA610
	stmfd sp!, {r3, lr}
	cmp r2, #0
	add r2, r0, #0xb0
	mov r0, #0x30
	mla r0, r1, r0, r2
	beq _020FA630
	bl FUN_ov16_02110f78
	ldmfd sp!, {r3, pc}
_020FA630:
	bl FUN_ov16_02110d18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa610

	arm_func_start FUN_ov16_020fa638
FUN_ov16_020fa638: ; 0x020FA638
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	ldrne r0, [r0, #4]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl NNS_G3dGetMdlSet
	ldrb r12, [r4, #0xc]
	ldrb r1, [r0, #9]
	cmp r12, r1
	movhs r0, #0
	ldmhsfd sp!, {r4, pc}
	cmp r0, #0
	beq _020FA6B8
	adds r3, r0, #8
	beq _020FA6A4
	ldrb r1, [r0, #9]
	cmp r12, r1
	bhs _020FA6A4
	ldrh r2, [r0, #0xe]
	ldrh r1, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r2, r1, r12, r2
	b _020FA6A8
_020FA6A4:
	mov r2, #0
_020FA6A8:
	cmp r2, #0
	ldrne r1, [r2]
	addne r0, r0, r1
	ldmnefd sp!, {r4, pc}
_020FA6B8:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa638

	arm_func_start FUN_ov16_020fa6c0
FUN_ov16_020fa6c0: ; 0x020FA6C0
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_020fa6c0

	arm_func_start FUN_ov16_020fa6d4
FUN_ov16_020fa6d4: ; 0x020FA6D4
	ldr r2, _020FA6F0 ; =0x0000FFF0
	ldrh r3, [r0, #0x40]
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	orr r1, r3, r1, lsr #16
	strh r1, [r0, #0x40]
	bx lr
_020FA6F0: .word 0x0000FFF0
	arm_func_end FUN_ov16_020fa6d4

	arm_func_start FUN_ov16_020fa6f4
FUN_ov16_020fa6f4: ; 0x020FA6F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fa93c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020fa6c0
	bl NNS_G3dGetTex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa6f4

	arm_func_start FUN_ov16_020fa71c
FUN_ov16_020fa71c: ; 0x020FA71C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov16_020fa6f4
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r5, r4, #0xb0
	mov r6, #0
	mov r4, #0x30
_020FA73C:
	mla r0, r6, r4, r5
	bl FUN_ov16_02110f20
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #5
	blt _020FA73C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fa71c

	arm_func_start FUN_ov16_020fa760
FUN_ov16_020fa760: ; 0x020FA760
	stmfd sp!, {r4, r5, r6, lr}
	cmp r1, #0
	moveq r1, #0
	mov r6, r0
	subeq r0, r1, #1
	mov r5, r2
	streq r1, [r6, #0x10]
	streqb r0, [r6, #0xd]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	mvneq r0, #0
	streq r1, [r6, #0x10]
	streqb r0, [r6, #0xd]
	ldmeqfd sp!, {r4, r5, r6, pc}
	mvn r4, #0
	mov r0, r1
	str r1, [r6, #0x10]
	strb r4, [r6, #0xd]
	bl FUN_ov16_020fa638
	mov r1, r5
	bl FUN_02053c20
	cmp r0, #0
	movlt r0, #0
	strltb r4, [r6, #0xd]
	strlt r0, [r6, #0x10]
	strgeb r0, [r6, #0xd]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fa760

	arm_func_start FUN_ov16_020fa7cc
FUN_ov16_020fa7cc: ; 0x020FA7CC
	stmfd sp!, {r3, lr}
	add r3, r0, #0x4c
	mov r0, #0x14
	mla r0, r2, r0, r3
	bl FUN_ov16_020fc55c
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa7cc

	arm_func_start FUN_ov16_020fa7f0
FUN_ov16_020fa7f0: ; 0x020FA7F0
	stmfd sp!, {r3, lr}
	add r3, r0, #0x4c
	mov r0, #0x14
	mla r0, r2, r0, r3
	bl FUN_ov16_020fc578
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa7f0

	arm_func_start FUN_ov16_020fa814
FUN_ov16_020fa814: ; 0x020FA814
	stmfd sp!, {r3, lr}
	add r12, r0, #0x4c
	mov r0, #0x14
	mla r0, r3, r0, r12
	bl FUN_ov16_020fc5bc
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa814

	arm_func_start FUN_ov16_020fa838
FUN_ov16_020fa838: ; 0x020FA838
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r1, #0x14
	mul r4, r7, r1
	mov r8, r0
	add r5, r8, #0x4c
	add r0, r5, r4
	mov r6, r2
	bl FUN_ov16_020fc8d0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r8
	mov r2, r6
	add r0, r5, r4
	bl FUN_ov16_020fc630
	cmp r0, #0
	bne _020FA890
	add r0, r5, r4
	bl FUN_ov16_020fc5f8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FA890:
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020fa8b8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fa838

	arm_func_start FUN_ov16_020fa8a0
FUN_ov16_020fa8a0: ; 0x020FA8A0
	add r2, r0, #0x4c
	mov r0, #0x14
	mla r0, r1, r0, r2
	ldr r12, _020FA8B4 ; =FUN_ov16_020fc5f8
	bx r12
_020FA8B4: .word FUN_ov16_020fc5f8
	arm_func_end FUN_ov16_020fa8a0

	arm_func_start FUN_ov16_020fa8b8
FUN_ov16_020fa8b8: ; 0x020FA8B8
	stmfd sp!, {r4, lr}
	add r2, r0, #0x4c
	mov r0, #0x14
	mla r0, r1, r0, r2
	mov r4, #0
	mov r1, r4
	bl FUN_ov16_020fc7b4
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa8b8

	arm_func_start FUN_ov16_020fa8e4
FUN_ov16_020fa8e4: ; 0x020FA8E4
	add r2, r0, #0x4c
	mov r0, #0x14
	mla r0, r1, r0, r2
	ldr r12, _020FA8F8 ; =FUN_ov16_020fc898
	bx r12
_020FA8F8: .word FUN_ov16_020fc898
	arm_func_end FUN_ov16_020fa8e4

	arm_func_start FUN_ov16_020fa8fc
FUN_ov16_020fa8fc: ; 0x020FA8FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x4c
	mov r4, #0x14
_020FA90C:
	mla r0, r6, r4, r5
	bl FUN_ov16_020fc5f8
	add r6, r6, #1
	cmp r6, #5
	blt _020FA90C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fa8fc

	arm_func_start FUN_ov16_020fa924
FUN_ov16_020fa924: ; 0x020FA924
	ldr r12, _020FA92C ; =FUN_ov16_020f9588
	bx r12
_020FA92C: .word FUN_ov16_020f9588
	arm_func_end FUN_ov16_020fa924

	arm_func_start FUN_ov16_020fa930
FUN_ov16_020fa930: ; 0x020FA930
	ldr r12, _020FA938 ; =FUN_ov16_020f959c
	bx r12
_020FA938: .word FUN_ov16_020f959c
	arm_func_end FUN_ov16_020fa930

	arm_func_start FUN_ov16_020fa93c
FUN_ov16_020fa93c: ; 0x020FA93C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FA960 ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	ldmfd sp!, {r3, pc}
_020FA960: .word unk_02099EE4
	arm_func_end FUN_ov16_020fa93c

	arm_func_start FUN_ov16_020fa964
FUN_ov16_020fa964: ; 0x020FA964
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	mov r4, #0
	bl FUN_ov16_020fa93c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, r4
	add r8, r6, #0x4c
	mov r9, #1
	mov r7, #0x14
_020FA98C:
	mul r1, r5, r7
	add r0, r6, r1
	ldr r0, [r0, #0x50]
	cmp r0, #0
	moveq r0, r9
	movne r0, r4
	cmp r0, #0
	bne _020FA9BC
	add r0, r8, r1
	bl FUN_ov16_020fc8d0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FA9BC:
	add r5, r5, #1
	cmp r5, #5
	blt _020FA98C
	mov r5, #0
	add r8, r6, #0xb0
	mov r9, #1
	mov r7, #0x30
_020FA9D8:
	mul r1, r5, r7
	add r0, r6, r1
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	moveq r0, r9
	movne r0, r4
	cmp r0, #0
	bne _020FAA08
	add r0, r8, r1
	bl FUN_ov16_02110f00
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FAA08:
	add r5, r5, #1
	cmp r5, #5
	blt _020FA9D8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020fa964

	arm_func_start FUN_ov16_020faa1c
FUN_ov16_020faa1c: ; 0x020FAA1C
	cmp r1, #5
	movhs r0, #0
	addlo r2, r0, #0x4c
	movlo r0, #0x14
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov16_020faa1c

	arm_func_start FUN_ov16_020faa34
FUN_ov16_020faa34: ; 0x020FAA34
	cmp r1, #5
	movhs r0, #0
	addlo r2, r0, #0xb0
	movlo r0, #0x30
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov16_020faa34

	arm_func_start FUN_ov16_020faa4c
FUN_ov16_020faa4c: ; 0x020FAA4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020faa7c
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020faa84
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020faa8c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020faa4c

	arm_func_start FUN_ov16_020faa7c
FUN_ov16_020faa7c: ; 0x020FAA7C
	str r1, [r0, #0x44]
	bx lr
	arm_func_end FUN_ov16_020faa7c

	arm_func_start FUN_ov16_020faa84
FUN_ov16_020faa84: ; 0x020FAA84
	strb r1, [r0, #0x48]
	bx lr
	arm_func_end FUN_ov16_020faa84

	arm_func_start FUN_ov16_020faa8c
FUN_ov16_020faa8c: ; 0x020FAA8C
	cmp r1, #0
	ldrneh r1, [r0, #0x40]
	ldreqh r2, [r0, #0x40]
	orrne r1, r1, #8
	ldreq r1, _020FAAAC ; =0x0000FFF7
	andeq r1, r2, r1
	strh r1, [r0, #0x40]
	bx lr
_020FAAAC: .word 0x0000FFF7
	arm_func_end FUN_ov16_020faa8c

	arm_func_start FUN_ov16_020faab0
FUN_ov16_020faab0: ; 0x020FAAB0
	ldrh r0, [r0, #0x40]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020faab0

	arm_func_start FUN_ov16_020faac4
FUN_ov16_020faac4: ; 0x020FAAC4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020FAB08 ; =0x02099EE4
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_ov16_020fd878
	add r5, r4, #0xb0
	mov r6, #0
	mov r4, #0x30
	b _020FAAF8
_020FAAEC:
	mla r0, r6, r4, r5
	bl FUN_ov16_021110ac
	add r6, r6, #1
_020FAAF8:
	cmp r6, #5
	blt _020FAAEC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020FAB08: .word unk_02099EE4
	arm_func_end FUN_ov16_020faac4

	arm_func_start FUN_ov16_020fab0c
FUN_ov16_020fab0c: ; 0x020FAB0C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r4, r2
	bl FUN_ov16_020fa638
	mov r1, r5
	bl FUN_02053c20
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_020fab3c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fab0c

	arm_func_start FUN_ov16_020fab3c
FUN_ov16_020fab3c: ; 0x020FAB3C
	cmp r1, #0
	bxlt lr
	cmp r1, #0x20
	bxge lr
	cmp r2, #0
	ldrne r3, [r0, #0x3c]
	mov r2, #1
	orrne r1, r3, r2, lsl r1
	strne r1, [r0, #0x3c]
	mvneq r1, r2, lsl r1
	ldreq r2, [r0, #0x3c]
	andeq r1, r2, r1
	streq r1, [r0, #0x3c]
	bx lr
	arm_func_end FUN_ov16_020fab3c

	arm_func_start FUN_ov16_020fab74
FUN_ov16_020fab74: ; 0x020FAB74
	cmp r1, #0x20
	movhs r0, #0
	bxhs lr
	ldr r2, [r0, #0x3c]
	mov r0, #1
	tst r2, r0, lsl r1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020fab74

	arm_func_start FUN_ov16_020fab94
FUN_ov16_020fab94: ; 0x020FAB94
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020FABD8 ; =0x02099EE4
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_ov16_020fd8ec
	add r5, r4, #0xb0
	mov r6, #0
	mov r4, #0x30
	b _020FABC8
_020FABBC:
	mla r0, r6, r4, r5
	bl FUN_ov16_021110d4
	add r6, r6, #1
_020FABC8:
	cmp r6, #5
	blt _020FABBC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020FABD8: .word unk_02099EE4
	arm_func_end FUN_ov16_020fab94

	arm_func_start FUN_ov16_020fabdc
FUN_ov16_020fabdc: ; 0x020FABDC
	strb r1, [r0, #0x4a]
	bx lr
	arm_func_end FUN_ov16_020fabdc

	arm_func_start FUN_ov16_020fabe4
FUN_ov16_020fabe4: ; 0x020FABE4
	ldr r12, _020FABF0 ; =FUN_ov16_02111248
	add r0, r0, #0x1a0
	bx r12
_020FABF0: .word FUN_ov16_02111248
	arm_func_end FUN_ov16_020fabe4

	arm_func_start FUN_ov16_020fabf4
FUN_ov16_020fabf4: ; 0x020FABF4
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020fa638
	cmp r0, #0
	addne r0, r0, #0x14
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fabf4

	arm_func_start FUN_ov16_020fac0c
FUN_ov16_020fac0c: ; 0x020FAC0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, r1
	bl FUN_ov16_020f959c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov16_020fa638
	str r0, [sp]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r8, r9
	add r5, r10, #0xb0
	mov r6, r9
	mov r7, #1
	mov r4, #0x30
_020FAC50:
	mul r1, r8, r4
	add r0, r10, r1
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	moveq r0, r7
	movne r0, r6
	cmp r0, #0
	bne _020FAC80
	add r0, r5, r1
	bl FUN_ov16_02110f54
	cmp r0, #0
	addne r9, r9, #1
_020FAC80:
	add r8, r8, #1
	cmp r8, #5
	blt _020FAC50
	ldrb r0, [r10, #0x42]
	cmp r0, #1
	bne _020FACA4
	cmp r11, #0
	cmpne r9, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FACA4:
	mov r0, r10
	bl FUN_ov16_020fad24
	cmp r11, #0
	cmpne r9, #0
	ble _020FACE8
	mov r6, #0
	add r5, r10, #0xb0
	mov r4, #0x30
_020FACC4:
	mla r0, r6, r4, r5
	mov r1, r10
	bl FUN_ov16_02110df0
	add r6, r6, #1
	cmp r6, #5
	blt _020FACC4
	mov r0, #2
	strb r0, [r10, #0x42]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FACE8:
	mov r0, r10
	bl FUN_ov16_020fa6f4
	movs r4, r0
	moveq r0, #0
	streqb r0, [r10, #0x42]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	mov r1, r4
	bl NNS_G3dBindMdlTex
	ldr r0, [sp]
	mov r1, r4
	bl NNS_G3dBindMdlPltt
	mov r0, #1
	strb r0, [r10, #0x42]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020fac0c

	arm_func_start FUN_ov16_020fad24
FUN_ov16_020fad24: ; 0x020FAD24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov16_020f959c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov16_020fa638
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r7, #0x42]
	cmp r1, #0
	beq _020FAD98
	cmp r1, #1
	beq _020FAD68
	cmp r1, #2
	beq _020FAD78
	b _020FAD98
_020FAD68:
	bl NNS_G3dReleaseMdlTex
	mov r0, r4
	bl NNS_G3dReleaseMdlPltt
	b _020FAD98
_020FAD78:
	mov r6, #0
	add r5, r7, #0xb0
	mov r4, #0x30
_020FAD84:
	mla r0, r6, r4, r5
	bl FUN_ov16_02110eb4
	add r6, r6, #1
	cmp r6, #5
	blt _020FAD84
_020FAD98:
	mov r0, #0
	strb r0, [r7, #0x42]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fad24

	arm_func_start FUN_ov16_020fada4
FUN_ov16_020fada4: ; 0x020FADA4
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x43]
	bx lr
	arm_func_end FUN_ov16_020fada4

	arm_func_start FUN_ov16_020fadb8
FUN_ov16_020fadb8: ; 0x020FADB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0x20
	mov r1, r5
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	sub r0, r4, #0x21
	str r0, [r5, #8]
	str r0, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fadb8

	arm_func_start FUN_ov16_020fade4
FUN_ov16_020fade4: ; 0x020FADE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	add r0, r4, #0x24
	str r1, [r4, #4]
	str r1, [r4, #8]
	bl FUN_ov16_020fadb8
	mov r0, r4
	bl FUN_ov16_020fb2cc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fade4

	arm_func_start FUN_ov16_020fae0c
FUN_ov16_020fae0c: ; 0x020FAE0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #0xc]
	mov r5, r0
	cmp r1, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, _020FAE50 ; =0x02099EE4
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FAE50: .word unk_02099EE4
	arm_func_end FUN_ov16_020fae0c

	arm_func_start FUN_ov16_020fae54
FUN_ov16_020fae54: ; 0x020FAE54
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fae54

	arm_func_start FUN_ov16_020fae6c
FUN_ov16_020fae6c: ; 0x020FAE6C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r3, [r0]
	mov r8, r0
	ldr r3, [r3, #0x20]
	mov r7, r1
	mov r6, r2
	blx r3
	mov r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r4, #1
	ldr r0, _020FAED4 ; =0x02099EE4
	str r4, [sp, #0xc]
	ldr r0, [r0]
	mov r1, r7
	mov r3, r6
	mov r2, #2
	bl FUN_ov16_020fcd08
	str r0, [r8, #4]
	cmp r0, #0
	moveq r0, r5
	movne r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FAED4: .word unk_02099EE4
	arm_func_end FUN_ov16_020fae6c

	arm_func_start FUN_ov16_020faed8
FUN_ov16_020faed8: ; 0x020FAED8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, [r0]
	mov r6, r0
	ldr r3, [r3, #0x20]
	mov r5, r1
	mov r4, r2
	blx r3
	ldr r0, _020FAF20 ; =0x02099EE4
	mov r1, r5
	ldr r0, [r0]
	mov r2, r4
	mov r3, #2
	bl FUN_ov16_020fd120
	str r0, [r6, #4]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020FAF20: .word unk_02099EE4
	arm_func_end FUN_ov16_020faed8

	arm_func_start FUN_ov16_020faf24
FUN_ov16_020faf24: ; 0x020FAF24
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020FAF44
	ldr r0, _020FAF58 ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_020FAF44:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmfd sp!, {r4, pc}
_020FAF58: .word unk_02099EE4
	arm_func_end FUN_ov16_020faf24

	arm_func_start FUN_ov16_020faf5c
FUN_ov16_020faf5c: ; 0x020FAF5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov16_020fb050
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020fafb0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020faf5c

	arm_func_start FUN_ov16_020faf80
FUN_ov16_020faf80: ; 0x020FAF80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020fb110
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fb050
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020fafb0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020faf80

	arm_func_start FUN_ov16_020fafb0
FUN_ov16_020fafb0: ; 0x020FAFB0
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _020FAFCC
	bl FUN_ov16_020fb018
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020FAFCC:
	str r2, [r4, #0x2c]
	ldr r12, [r1, #0xc]
	mov r2, #0
	str r12, [r4, #0x24]
	str r12, [r4, #0x30]
	ldr r3, [r1, #0x10]
	str r3, [r4, #0x34]
	ldr r3, [r1, #0x14]
	str r3, [r4, #0x38]
	ldr r3, [r1, #0x14]
	mov r1, r12
	str r3, [r4, #0x3c]
	strb r2, [r4, #0x40]
	strb r2, [r4, #0x41]
	bl FUN_ov16_020fb024
	mov r0, r4
	bl FUN_ov16_020fb2cc
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fafb0

	arm_func_start FUN_ov16_020fb018
FUN_ov16_020fb018: ; 0x020FB018
	ldr r1, [r0, #0x3c]
	str r1, [r0, #0x38]
	bx lr
	arm_func_end FUN_ov16_020fb018

	arm_func_start FUN_ov16_020fb024
FUN_ov16_020fb024: ; 0x020FB024
	str r1, [r0, #0x24]
	bx lr
	arm_func_end FUN_ov16_020fb024

	arm_func_start FUN_ov16_020fb02c
FUN_ov16_020fb02c: ; 0x020FB02C
	ldrb r0, [r0, #0x40]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020fb02c

	arm_func_start FUN_ov16_020fb040
FUN_ov16_020fb040: ; 0x020FB040
	strb r1, [r0, #0x41]
	bx lr
	arm_func_end FUN_ov16_020fb040

	arm_func_start FUN_ov16_020fb048
FUN_ov16_020fb048: ; 0x020FB048
	ldrb r0, [r0, #0x41]
	bx lr
	arm_func_end FUN_ov16_020fb048

	arm_func_start FUN_ov16_020fb050
FUN_ov16_020fb050: ; 0x020FB050
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	ldr r1, [r6, #4]
	cmp r1, #0
	ldrne r0, [r1, #4]
	cmpne r0, #0
	moveq r5, #0
	beq _020FB0BC
	ldr r0, [r6, #8]
	cmp r0, #0
	movne r5, #1
	bne _020FB0BC
	ldr r0, _020FB10C ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	mov r5, #0
	bne _020FB0BC
	ldr r0, [r6, #4]
	mov r2, r5
	ldr r1, [r0, #4]
	add r0, r6, #0xc
	bl SSD_InitFile
	cmp r0, #0
	movne r5, #1
	strne r5, [r6, #8]
_020FB0BC:
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r6, #0xc
	mov r1, #0x3e8
	bl FUN_0202ff60
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	blt _020FB0F4
	ldr r1, [r0, #8]
	cmp r4, r1
	blt _020FB0FC
_020FB0F4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020FB0FC:
	add r1, r0, #0xc
	mov r0, #0x18
	mla r0, r4, r0, r1
	ldmfd sp!, {r4, r5, r6, pc}
_020FB10C: .word unk_02099EE4
	arm_func_end FUN_ov16_020fb050

	arm_func_start FUN_ov16_020fb110
FUN_ov16_020fb110: ; 0x020FB110
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #4]
	cmp r1, #0
	ldrne r0, [r1, #4]
	cmpne r0, #0
	moveq r5, #0
	beq _020FB184
	ldr r0, [r6, #8]
	cmp r0, #0
	movne r5, #1
	bne _020FB184
	ldr r0, _020FB1E8 ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	mov r5, #0
	bne _020FB184
	ldr r0, [r6, #4]
	mov r2, r5
	ldr r1, [r0, #4]
	add r0, r6, #0xc
	bl SSD_InitFile
	cmp r0, #0
	movne r5, #1
	strne r5, [r6, #8]
_020FB184:
	cmp r5, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0xc
	mov r1, #0x3e8
	bl FUN_0202ff60
	movs r5, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r5, #0xc
	mov r7, #0
	b _020FB1D4
_020FB1B4:
	ldr r0, [r6, #8]
	mov r1, r4
	bl strcmp
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
	add r6, r6, #0x18
_020FB1D4:
	ldr r0, [r5, #8]
	cmp r7, r0
	blt _020FB1B4
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FB1E8: .word unk_02099EE4
	arm_func_end FUN_ov16_020fb110

	arm_func_start FUN_ov16_020fb1ec
FUN_ov16_020fb1ec: ; 0x020FB1EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #0x38]
	cmp r1, #0
	ldrlt r0, [r4, #0x34]
	mul r2, r1, r2
	strlt r0, [r4, #0x24]
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0x34]
	add r1, r1, r2
	str r1, [r4, #0x24]
	cmp r1, r3
	blt _020FB2A4
	ldrb r1, [r4, #0x41]
	mov r5, #1
	strb r5, [r4, #0x40]
	cmp r1, #0
	beq _020FB244
	cmp r1, #1
	beq _020FB298
	b _020FB2A0
_020FB244:
	ldr r1, [r4, #0x28]
	sub r2, r5, #2
	cmp r1, r2
	streq r3, [r4, #0x24]
	beq _020FB2A4
	ldr r2, [r4, #0x2c]
	cmp r1, r2
	streqb r5, [r4, #0x40]
	streqb r5, [r4, #0x41]
	streq r3, [r4, #0x24]
	beq _020FB2A4
	bl FUN_ov16_020faf5c
	cmp r0, #0
	bne _020FB2A4
	ldr r0, [r4, #0x34]
	sub r2, r5, #2
	mov r1, #2
	str r2, [r4, #0x28]
	strb r1, [r4, #0x41]
_020FB290:
	str r0, [r4, #0x24]
	b _020FB2A4
_020FB298:
	ldr r0, [r4, #0x30]
	b _020FB290
_020FB2A0:
	str r3, [r4, #0x24]
_020FB2A4:
	ldr r0, [r4, #0x24]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fb1ec

	arm_func_start FUN_ov16_020fb2ac
FUN_ov16_020fb2ac: ; 0x020FB2AC
	ldr r1, _020FB2C4 ; =0x02099EE4
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #4]
	ldr r12, _020FB2C8 ; =FUN_ov16_020fd278
	bx r12
_020FB2C4: .word unk_02099EE4
_020FB2C8: .word FUN_ov16_020fd278
	arm_func_end FUN_ov16_020fb2ac

	arm_func_start FUN_ov16_020fb2cc
FUN_ov16_020fb2cc: ; 0x020FB2CC
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x8c]
	str r1, [r0, #0xd0]
	str r1, [r0, #0x44]
	bx lr
	arm_func_end FUN_ov16_020fb2cc

	arm_func_start FUN_ov16_020fb2e4
FUN_ov16_020fb2e4: ; 0x020FB2E4
	stmfd sp!, {r4, lr}
	ldr r1, _020FB318 ; =0x02118880
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r4, #0xc
	bl FUN_0202fd44
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020FB318: .word ov16_02118880
	arm_func_end FUN_ov16_020fb2e4

	arm_func_start FUN_ov16_020fb31c
FUN_ov16_020fb31c: ; 0x020FB31C
	stmfd sp!, {r3, lr}
	ldr r3, [r0]
	mov r2, #1
	ldr r3, [r3, #0x14]
	blx r3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fb31c

	arm_func_start FUN_ov16_020fb334
FUN_ov16_020fb334: ; 0x020FB334
	ldr r0, [r0, #0x99c]
	tst r0, #0x100
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020fb334

	arm_func_start FUN_ov16_020fb348
FUN_ov16_020fb348: ; 0x020FB348
	add r0, r0, #0x348
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_ov16_020fb348

	arm_func_start FUN_ov16_020fb354
FUN_ov16_020fb354: ; 0x020FB354
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020FB378
_020FB360: ; jump table
	b _020FB370 ; case 0
	b _020FB378 ; case 1
	b _020FB370 ; case 2
	b _020FB378 ; case 3
_020FB370:
	mov r0, #1
	bx lr
_020FB378:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020fb354

	arm_func_start FUN_ov16_020fb380
FUN_ov16_020fb380: ; 0x020FB380
	stmfd sp!, {r3, lr}
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_020FB390: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	ldmfd sp!, {r3, pc} ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	b _020FB3A0 ; case 3
_020FB3A0:
	ldr r3, _020FB3B0 ; =0x021188C0
	mov r2, #0
	bl FUN_ov16_020fb3b4
	ldmfd sp!, {r3, pc}
_020FB3B0: .word ov16_021188C0
	arm_func_end FUN_ov16_020fb380

	arm_func_start FUN_ov16_020fb3b4
FUN_ov16_020fb3b4: ; 0x020FB3B4
	stmfd sp!, {r4, r5, r6, lr}
	cmp r1, #4
	mov r6, r3
	movhs r4, #0
	movlo r3, #0x1bc
	mlalo r4, r1, r3, r0
	cmp r2, #4
	movhs r5, #0
	movlo r1, #0x1bc
	mlalo r5, r2, r1, r0
	mov r0, r5
	bl FUN_ov16_020fa638
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r6
	bl FUN_02053c20
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020fa760
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fb3b4

	arm_func_start FUN_ov16_020fb41c
FUN_ov16_020fb41c: ; 0x020FB41C
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020FB440
_020FB428: ; jump table
	b _020FB438 ; case 0
	b _020FB438 ; case 1
	b _020FB438 ; case 2
	b _020FB440 ; case 3
_020FB438:
	mov r0, #1
	bx lr
_020FB440:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020fb41c

	arm_func_start FUN_ov16_020fb448
FUN_ov16_020fb448: ; 0x020FB448
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r6, #0
	mov r5, #0x1bc
_020FB458:
	mla r0, r6, r5, r4
	bl FUN_ov16_020f9cdc
	add r6, r6, #1
	cmp r6, #4
	blt _020FB458
	add r0, r4, #0x6f0
	bl FUN_ov16_02110b80
	mov r7, #0
	add r6, r4, #0x720
	mov r5, #0x14
_020FB480:
	mla r0, r7, r5, r6
	bl FUN_ov16_020fc538
	add r7, r7, #1
	cmp r7, #2
	blt _020FB480
	add r0, r4, #0x348
	add r0, r0, #0x400
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r5, #0
	str r5, [r4, #0x85c]
	add r0, r4, #0x860
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, #0x1000
	str r5, [r4, #0x974]
	str r5, [r4, #0x990]
	str r5, [r4, #0x994]
	str r5, [r4, #0x998]
	str r5, [r4, #0x978]
	str r5, [r4, #0x97c]
	str r5, [r4, #0x980]
	str r0, [r4, #0x984]
	str r0, [r4, #0x988]
	str r0, [r4, #0x98c]
	str r5, [r4, #0x99c]
	str r5, [r4, #0x9a0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fb448

	arm_func_start FUN_ov16_020fb4f8
FUN_ov16_020fb4f8: ; 0x020FB4F8
	ldr r12, _020FB500 ; =FUN_ov16_020fb7ac
	bx r12
_020FB500: .word FUN_ov16_020fb7ac
	arm_func_end FUN_ov16_020fb4f8

	arm_func_start FUN_ov16_020fb504
FUN_ov16_020fb504: ; 0x020FB504
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r0, r8, #0x348
	add r0, r0, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	mov r7, #0
	mov r6, r0
	mov r5, r7
	mov r4, #0x1bc
_020FB530:
	mla r0, r7, r4, r8
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fa340
	add r7, r7, #1
	cmp r7, #4
	blt _020FB530
	ldr r1, [r8, #0x884]
	mov r0, r8
	mov r2, #1
	bl FUN_ov16_020fa340
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fb504

	arm_func_start FUN_ov16_020fb564
FUN_ov16_020fb564: ; 0x020FB564
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r10, r0
	bl FUN_ov16_020fb334
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	mov r1, r8
	mov r2, r8
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	add r0, r10, #0x178
	mov r9, r8
	add r5, r0, #0x800
	add r4, r10, #0x184
	mov r7, #3
	add r6, sp, #4
	mov r11, #0x1bc
_020FB5B4:
	mov r1, #0
	mov r0, #0x15
	mov r2, r1
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r0, #0x1c
	add r1, r10, #0x990
	mov r2, r7
	bl NNS_G3dGeBufferOP_N
	mov r0, r6
	ldmia r5, {r1, r2, r3}
	bl FUN_02053b48
	mov r0, #0x19
	mov r1, r6
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x1b
	add r1, r4, #0x800
	mov r2, r7
	bl NNS_G3dGeBufferOP_N
	mla r0, r9, r11, r10
	mov r1, #1
	bl FUN_ov16_020fa248
	cmp r0, #0
	add r9, r9, #1
	addne r8, r8, #1
	cmp r9, #4
	blt _020FB5B4
	mov r4, #1
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x12
	str r4, [sp]
	bl NNS_G3dGeBufferOP_N
	cmp r8, #0
	movle r4, #0
	mov r0, r4
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020fb564

	arm_func_start FUN_ov16_020fb650
FUN_ov16_020fb650: ; 0x020FB650
	stmfd sp!, {r3, lr}
	cmp r1, #4
	movhs r0, #0
	movlo r2, #0x1bc
	mlalo r0, r1, r2, r0
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fa154
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fb650

	arm_func_start FUN_ov16_020fb674
FUN_ov16_020fb674: ; 0x020FB674
	stmfd sp!, {r4, lr}
	cmp r1, #1
	movhs r4, #0
	addlo r3, r0, #0x6f0
	movlo r2, #0x30
	mlalo r4, r1, r2, r3
	cmp r4, #0
	mov r2, #0
	ldmeqfd sp!, {r4, pc}
	cmp r1, #0
	moveq r2, r0
	moveq r0, #1
	movne r0, r2
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r2
	bl FUN_ov16_020fa5f4
	mov r0, r4
	bl FUN_ov16_02110db4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fb674

	arm_func_start FUN_ov16_020fb6c4
FUN_ov16_020fb6c4: ; 0x020FB6C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	bmi _020FB6DC
	cmp r6, #2
	blt _020FB6E4
_020FB6DC:
	mov r0, #0
	b _020FB6F0
_020FB6E4:
	add r1, r7, #0x720
	mov r0, #0x14
	mla r0, r6, r0, r1
_020FB6F0:
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_020fc5f8
	mov r5, #0
	mov r4, #0x1bc
_020FB704:
	mla r0, r5, r4, r7
	mov r1, r6
	bl FUN_ov16_020fa8a0
	add r5, r5, #1
	cmp r5, #4
	blt _020FB704
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fb6c4

	arm_func_start FUN_ov16_020fb720
FUN_ov16_020fb720: ; 0x020FB720
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x85c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FB74C ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	mov r0, #0
	str r0, [r4, #0x85c]
	ldmfd sp!, {r4, pc}
_020FB74C: .word unk_02099EE4
	arm_func_end FUN_ov16_020fb720

	arm_func_start FUN_ov16_020fb750
FUN_ov16_020fb750: ; 0x020FB750
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x860
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, [r4, #0x974]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FB78C ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	mov r0, #0
	str r0, [r4, #0x974]
	ldmfd sp!, {r4, pc}
_020FB78C: .word unk_02099EE4
	arm_func_end FUN_ov16_020fb750

	arm_func_start FUN_ov16_020fb790
FUN_ov16_020fb790: ; 0x020FB790
	stmfd sp!, {r3, lr}
	add r0, r0, #0x348
	add r0, r0, #0x400
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fb790

	arm_func_start FUN_ov16_020fb7ac
FUN_ov16_020fb7ac: ; 0x020FB7AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020fb790
	mov r4, #0
_020FB7BC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fb6c4
	add r4, r4, #1
	cmp r4, #2
	blt _020FB7BC
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fb674
_020FB7E4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fb650
	add r4, r4, #1
	cmp r4, #4
	blt _020FB7E4
	mov r0, r5
	bl FUN_ov16_020fb720
	mov r0, r5
	bl FUN_ov16_020fb750
	mov r0, r5
	bl FUN_ov16_020fb448
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fb7ac

	arm_func_start FUN_ov16_020fb818
FUN_ov16_020fb818: ; 0x020FB818
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	cmp r3, #4
	mov r6, r1
	movhs r4, #0
	movlo r1, #0x1bc
	mlalo r4, r3, r1, r0
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r3
	bl FUN_ov16_020fb650
	ldr r0, [sp, #0x18]
	ldr r12, [sp, #0x1c]
	str r0, [sp]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	mov r3, #1
	str r12, [sp, #4]
	bl FUN_ov16_020f9edc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fb818

	arm_func_start FUN_ov16_020fb87c
FUN_ov16_020fb87c: ; 0x020FB87C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	movs r7, r3
	mov r10, r0
	mov r9, r1
	mov r8, r2
	bmi _020FB8A0
	cmp r7, #1
	blt _020FB8A8
_020FB8A0:
	mov r6, #0
	b _020FB8B4
_020FB8A8:
	add r1, r10, #0x6f0
	mov r0, #0x30
	mla r6, r7, r0, r1
_020FB8B4:
	cmp r6, #0
	mov r4, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020fb674
	cmp r7, #0
	moveq r4, r10
	moveq r0, #1
	movne r0, r4
	moveq r5, r7
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	mov r0, r6
	mov r1, r9
	mov r2, r8
	str r3, [sp, #4]
	mov r7, #0
	mov r3, #1
	str r7, [sp, #8]
	bl FUN_ov16_02110c64
	cmp r0, #0
	beq _020FB940
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fa574
	mov r7, r0
_020FB940:
	mov r0, r7
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020fb87c

	arm_func_start FUN_ov16_020fb94c
FUN_ov16_020fb94c: ; 0x020FB94C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, #1
	str r5, [sp]
	str r3, [sp, #4]
	ldr r4, [sp, #0x28]
	ldr r3, _020FB9A8 ; =0x02099EE4
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	mov r7, r0
	ldr r0, [r3]
	mov r3, #0xf
	mov r6, #0
	bl FUN_ov16_020fcef8
	mov r4, r0
	mov r0, r7
	bl FUN_ov16_020fb720
	cmp r4, #0
	moveq r0, r6
	movne r0, r5
	strne r4, [r7, #0x85c]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FB9A8: .word unk_02099EE4
	arm_func_end FUN_ov16_020fb94c

	arm_func_start FUN_ov16_020fb9ac
FUN_ov16_020fb9ac: ; 0x020FB9AC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r6, r0
	ldr r1, _020FBA08 ; =0x021188C8
	mov r0, r4
	mov r5, #0
	bl sprintf
	ldr r0, _020FBA0C ; =0x02099EE4
	mov r1, r4
	ldr r0, [r0]
	mov r2, #0xf
	bl FUN_ov16_020fd0f4
	movs r4, r0
	addeq sp, sp, #0x80
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov16_020fb750
	str r4, [r6, #0x974]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_020FBA08: .word ov16_021188C8
_020FBA0C: .word unk_02099EE4
	arm_func_end FUN_ov16_020fb9ac

	arm_func_start FUN_ov16_020fba10
FUN_ov16_020fba10: ; 0x020FBA10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r7, _020FBCD0 ; =0x02117928
	mov r10, r0
	ldmia r7!, {r0, r1, r2, r3}
	add r6, sp, #8
	mov r11, r6
	stmia r6!, {r0, r1, r2, r3}
	ldr r0, [r7]
	ldr r4, _020FBCD4 ; =0x02117920
	str r0, [r6]
	ldr r5, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r10, #0x85c]
	str r5, [sp]
	str r0, [sp, #4]
	cmp r1, #0
	mov r6, #0
	beq _020FBB4C
	ldr r0, _020FBCD8 ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov16_020fb790
	mov r8, r6
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020fb6c4
	add r5, r10, #0x348
	mov r4, #0x1bc
	b _020FBB30
_020FBA98:
	ldr r0, _020FBCD8 ; =0x02099EE4
	ldr r1, [r10, #0x85c]
	ldr r0, [r0]
	ldr r3, [r11, r8, lsl #2]
	add r2, r8, #1
	bl FUN_ov16_020fd6d8
	movs r9, r0
	beq _020FBB2C
	cmp r8, #0
	bne _020FBAD8
	add r0, r5, #0x400
	ldr r2, [r0]
	mov r1, r9
	ldr r2, [r2, #0xc]
	blx r2
	b _020FBB1C
_020FBAD8:
	mov r1, r9
	add r0, r10, #0x720
	bl FUN_ov16_020fc578
	mov r7, r6
	b _020FBB14
_020FBAEC:
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020fb41c
	cmp r0, #0
	beq _020FBB10
	mla r0, r7, r4, r10
	mov r1, r9
	mov r2, r6
	bl FUN_ov16_020fa7f0
_020FBB10:
	add r7, r7, #1
_020FBB14:
	cmp r7, #4
	blt _020FBAEC
_020FBB1C:
	ldr r0, _020FBCD8 ; =0x02099EE4
	mov r1, r9
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_020FBB2C:
	add r8, r8, #1
_020FBB30:
	cmp r8, #2
	blt _020FBA98
	ldr r0, _020FBCD8 ; =0x02099EE4
	ldr r1, [r10, #0x85c]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	str r6, [r10, #0x85c]
_020FBB4C:
	ldr r1, [r10, #0x974]
	cmp r1, #0
	beq _020FBC30
	ldr r5, _020FBCD8 ; =0x02099EE4
	ldr r0, [r5]
	bl FUN_ov16_020fd278
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x860
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r10
	mov r1, #1
	bl FUN_ov16_020fb6c4
	mov r8, #0
	add r4, r10, #0x334
	mov r11, #1
	add r7, sp, #0
	b _020FBC14
_020FBBA0:
	ldr r0, [r5]
	ldr r1, [r10, #0x974]
	ldr r3, [r7, r8, lsl #2]
	mov r2, r8
	bl FUN_ov16_020fd6d8
	movs r9, r0
	beq _020FBC10
	cmp r8, #0
	bne _020FBBE8
	add r0, r10, #0x860
	ldr r2, [r0]
	mov r1, r9
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r10, #0x9a0]
	add r0, r10, #0x860
	bl FUN_ov16_020faf5c
	b _020FBC04
_020FBBE8:
	mov r1, r9
	add r0, r4, #0x400
	bl FUN_ov16_020fc578
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_ov16_020fa7f0
_020FBC04:
	ldr r0, [r5]
	mov r1, r9
	bl FUN_ov16_020fd350
_020FBC10:
	add r8, r8, #1
_020FBC14:
	cmp r8, #2
	blt _020FBBA0
	ldr r0, _020FBCD8 ; =0x02099EE4
	ldr r1, [r10, #0x974]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	str r6, [r10, #0x974]
_020FBC30:
	mov r5, #0x30
	mov r7, #0
	add r8, r10, #0x6f0
	mov r9, #1
	mov r4, r5
	b _020FBC7C
_020FBC48:
	mla r0, r7, r5, r10
	ldr r0, [r0, #0x6f4]
	cmp r0, #0
	moveq r0, r9
	movne r0, r6
	cmp r0, #0
	bne _020FBC78
	mla r0, r7, r4, r8
	bl FUN_ov16_02110f00
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBC78:
	add r7, r7, #1
_020FBC7C:
	cmp r7, #1
	blt _020FBC48
	mov r4, #0x1bc
	mov r7, #0
	mov r5, r4
	b _020FBCBC
_020FBC94:
	mla r0, r7, r5, r10
	bl FUN_ov16_020fa924
	cmp r0, #0
	bne _020FBCB8
	mla r0, r7, r4, r10
	bl FUN_ov16_020fa93c
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBCB8:
	add r7, r7, #1
_020FBCBC:
	cmp r7, #4
	blt _020FBC94
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBCD0: .word 0x02117928
_020FBCD4: .word 0x02117920
_020FBCD8: .word unk_02099EE4
	arm_func_end FUN_ov16_020fba10

	arm_func_start FUN_ov16_020fbcdc
FUN_ov16_020fbcdc: ; 0x020FBCDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, #0
	mov r10, r0
	mov r5, #1
	mov r8, r6
_020FBCF0:
	mov r0, #0x1bc
	mul r7, r8, r0
	add r0, r10, r7
	bl FUN_ov16_020fa924
	cmp r0, #0
	bne _020FBE24
	add r0, r10, r7
	bl FUN_ov16_020fa930
	cmp r0, #0
	bne _020FBD40
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020fb354
	mov r2, r0
	mov r1, r6
	add r0, r10, r7
	bl FUN_ov16_020f9f7c
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBD40:
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020fb380
	mov r4, #0
_020FBD50:
	mov r1, r4
	add r0, r10, r7
	bl FUN_ov16_020faa1c
	ldr r1, [r0, #4]
	mov r2, r5
	cmp r1, #0
	movne r2, r6
	cmp r2, #0
	bne _020FBDAC
	cmp r1, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	movne r0, r5
	moveq r0, r6
	cmp r0, #0
	bne _020FBDAC
	mov r1, r4
	mov r2, r6
	add r0, r10, r7
	bl FUN_ov16_020fa838
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBDAC:
	add r4, r4, #1
	cmp r4, #2
	blt _020FBD50
	mov r11, #0
	mov r4, #1
	mov r9, r11
_020FBDC4:
	mov r1, r9
	add r0, r10, r7
	bl FUN_ov16_020faa34
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r1, r4
	movne r1, r11
	cmp r1, #0
	bne _020FBE18
	bne _020FBDFC
	ldr r1, [r0, #0xc]
	tst r1, #1
	movne r1, r4
	bne _020FBE00
_020FBDFC:
	mov r1, #0
_020FBE00:
	cmp r1, #0
	bne _020FBE18
	bl FUN_ov16_02110f78
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBE18:
	add r9, r9, #1
	cmp r9, #5
	blt _020FBDC4
_020FBE24:
	add r8, r8, #1
	cmp r8, #4
	blt _020FBCF0
	mov r0, r10
	mov r1, r5
	bl FUN_ov16_020fbe44
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020fbcdc

	arm_func_start FUN_ov16_020fbe44
FUN_ov16_020fbe44: ; 0x020FBE44
	cmp r1, #0
	ldr r1, [r0, #0x99c]
	orrne r1, r1, #0x100
	biceq r1, r1, #0x100
	str r1, [r0, #0x99c]
	bx lr
	arm_func_end FUN_ov16_020fbe44

	arm_func_start FUN_ov16_020fbe5c
FUN_ov16_020fbe5c: ; 0x020FBE5C
	str r1, [r0, #0x990]
	str r2, [r0, #0x994]
	str r3, [r0, #0x998]
	bx lr
	arm_func_end FUN_ov16_020fbe5c

	arm_func_start FUN_ov16_020fbe6c
FUN_ov16_020fbe6c: ; 0x020FBE6C
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	mov r1, r3, lsr #0x10
	str r12, [r0, #0x978]
	str r2, [r0, #0x97c]
	str r1, [r0, #0x980]
	bx lr
	arm_func_end FUN_ov16_020fbe6c

	arm_func_start FUN_ov16_020fbe94
FUN_ov16_020fbe94: ; 0x020FBE94
	str r1, [r0, #0x984]
	str r2, [r0, #0x988]
	str r3, [r0, #0x98c]
	bx lr
	arm_func_end FUN_ov16_020fbe94

	arm_func_start FUN_ov16_020fbea4
FUN_ov16_020fbea4: ; 0x020FBEA4
	mov r3, r0
	add r0, r1, #0x990
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fbea4

	arm_func_start FUN_ov16_020fbeb8
FUN_ov16_020fbeb8: ; 0x020FBEB8
	add r1, r1, #0x178
	mov r3, r0
	add r0, r1, #0x800
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fbeb8

	arm_func_start FUN_ov16_020fbed0
FUN_ov16_020fbed0: ; 0x020FBED0
	add r1, r1, #0x184
	mov r3, r0
	add r0, r1, #0x800
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fbed0

	arm_func_start FUN_ov16_020fbee8
FUN_ov16_020fbee8: ; 0x020FBEE8
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0x984]
	smull lr, r12, r1, r12
	adds r1, lr, #0x800
	adc r12, r12, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r12, lsl #20
	bl FUN_ov16_020faa4c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fbee8

	arm_func_start FUN_ov16_020fbf0c
FUN_ov16_020fbf0c: ; 0x020FBF0C
	ldr r2, [r0, #0x984]
	ldr r12, _020FBF2C ; =FUN_ov16_020faa7c
	smull r3, r2, r1, r2
	adds r1, r3, #0x800
	adc r2, r2, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r2, lsl #20
	bx r12
_020FBF2C: .word FUN_ov16_020faa7c
	arm_func_end FUN_ov16_020fbf0c

	arm_func_start FUN_ov16_020fbf30
FUN_ov16_020fbf30: ; 0x020FBF30
	ldr r12, _020FBF38 ; =FUN_ov16_020faa8c
	bx r12
_020FBF38: .word FUN_ov16_020faa8c
	arm_func_end FUN_ov16_020fbf30

	arm_func_start FUN_ov16_020fbf3c
FUN_ov16_020fbf3c: ; 0x020FBF3C
	mov r12, #0
	mov r2, #0x1bc
_020FBF44:
	mla r3, r12, r2, r0
	adds r3, r3, #4
	add r12, r12, #1
	strneh r1, [r3, #0xa]
	cmp r12, #4
	blt _020FBF44
	bx lr
	arm_func_end FUN_ov16_020fbf3c

	arm_func_start FUN_ov16_020fbf60
FUN_ov16_020fbf60: ; 0x020FBF60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x210
	ldr r4, [sp, #0x238]
	movs r7, r1
	mov r8, r0
	add r11, sp, #0xc
	mov r6, r2
	mov r5, r3
	addeq sp, sp, #0x210
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _020FC284 ; =0x0209BA20
	bl FUN_0207249c
	movs r10, r0
	addeq sp, sp, #0x210
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r1, [r10, #0x28]
	mov r0, r7
	cmp r1, #0
	ldreqh r1, [r10, #0x26]
	bl FUN_ov16_020f0b3c
	mov r9, r0
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020f0bcc
	ldrb r1, [sp, #0x23c]
	mov r10, r0
	ldrb r0, [sp, #0x240]
	cmp r1, #0
	moveq r10, #0
	cmp r0, #0
	bne _020FC000
	mov r0, r7
	bl FUN_0206dcd4
	ldrh r9, [r0, #0xe]
	mov r10, #0
_020FC000:
	cmp r5, #0
	movne r5, #0x17
	bne _020FC024
	ldr r0, _020FC284 ; =0x0209BA20
	mov r1, r7
	bl FUN_ov16_020ee064
	cmp r0, #0
	ldrneh r5, [r0, #0x26]
	moveq r5, #0
_020FC024:
	mov r0, r7
	mov r1, #1
	bl FUN_0206d9b0
	sub r0, r0, #1
	str r0, [r8, #0x9a0]
	mov r1, #4
	cmp r6, #1
	movne r1, #5
	mov r0, #0xc
	mul r0, r1, r0
	add r1, sp, #8
	str r11, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, r0]
	mov r1, r7
	mov r2, r9
	mov r3, r10
	bl FUN_ov16_020f39d8
	cmp r0, #0
	beq _020FC0BC
	add r11, sp, #0x10
	str r11, [sp]
	add r12, sp, #0x110
	mov r0, r7
	mov r1, r6
	mov r2, r9
	mov r3, r10
	str r12, [sp, #4]
	bl FUN_ov16_020f381c
	ldr r0, [sp, #0xc]
	mov r1, r11
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0x110
	str r0, [sp, #4]
	mov r0, r8
	mov r3, #0
	bl FUN_ov16_020fb818
_020FC0BC:
	mov r1, #0
	cmp r6, #1
	movne r1, #1
	mov r0, #0xc
	mul r0, r1, r0
	ldr r0, [r4, r0]
	add r2, sp, #0xc
	add r3, sp, #8
	mov r1, r7
	bl FUN_ov16_020f39a8
	cmp r0, #0
	beq _020FC128
	add r11, sp, #0x10
	mov r0, r7
	mov r1, r6
	mov r2, r11
	add r3, sp, #0x110
	bl FUN_ov16_020f3774
	ldr r0, [sp, #0xc]
	mov r1, r11
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0x110
	str r0, [sp, #4]
	mov r0, r8
	mov r3, #2
	bl FUN_ov16_020fb818
_020FC128:
	mov r1, #2
	cmp r6, #1
	movne r1, #3
	mov r0, #0xc
	mul r0, r1, r0
	ldr r0, [r4, r0]
	add r2, sp, #0xc
	add r3, sp, #8
	mov r1, r7
	bl FUN_ov16_020f39c0
	cmp r0, #0
	beq _020FC194
	add r11, sp, #0x10
	mov r0, r7
	mov r1, r6
	mov r2, r11
	add r3, sp, #0x110
	bl FUN_ov16_020f37c8
	ldr r0, [sp, #0xc]
	mov r1, r11
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0x110
	str r0, [sp, #4]
	mov r0, r8
	mov r3, #3
	bl FUN_ov16_020fb818
_020FC194:
	mov r2, #6
	cmp r6, #1
	movne r2, #7
	mov r0, #0xc
	mul r0, r2, r0
	add r1, sp, #8
	str r1, [sp]
	ldr r0, [r4, r0]
	add r3, sp, #0xc
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_020f3ab4
	cmp r0, #0
	beq _020FC20C
	add r11, sp, #0x110
	mov r0, r7
	mov r1, r6
	mov r2, r5
	add r3, sp, #0x10
	str r11, [sp]
	bl FUN_ov16_020f38e8
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r1, [sp]
	ldr r5, [sp, #8]
	add r1, sp, #0x10
	mov r2, r11
	mov r3, #1
	str r5, [sp, #4]
	bl FUN_ov16_020fb818
_020FC20C:
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [r4, #0x60]
	add r3, sp, #0xc
	mov r1, r9
	mov r2, r10
	add r5, sp, #0x110
	add r6, sp, #0x10
	bl FUN_ov16_020f3a74
	cmp r0, #0
	beq _020FC270
	mov r0, r9
	mov r1, r10
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020f3898
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r1, [sp]
	ldr r4, [sp, #8]
	mov r1, r6
	mov r2, r5
	mov r3, #0
	str r4, [sp, #4]
	bl FUN_ov16_020fb87c
_020FC270:
	mov r0, r8
	bl FUN_ov16_020fb9ac
	mov r0, #1
	add sp, sp, #0x210
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FC284: .word unk_0209BA20
	arm_func_end FUN_ov16_020fbf60

	arm_func_start FUN_ov16_020fc288
FUN_ov16_020fc288: ; 0x020FC288
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r1
	mov r5, r0
	mov r0, r10
	mov r4, r2
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _020FC474 ; =0x0209BA20
	bl FUN_0207249c
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r9, [r0, #0x28]
	mov r1, r10
	cmp r9, #0
	ldreqh r9, [r0, #0x26]
	bl FUN_ov16_020f0bcc
	cmp r4, #0
	mov r11, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0
	moveq r11, #0
	bl FUN_ov16_020faa34
	mov r6, r0
	ldr r0, [r6, #4]
	cmp r0, #0
	moveq r0, #1
	movne r0, r4
	cmp r0, #0
	bne _020FC318
	ldr r0, [r6, #0xc]
	tst r0, #1
	movne r4, #1
_020FC318:
	cmp r4, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl FUN_ov16_02111084
	mov r5, r0
	mov r0, r6
	bl FUN_ov16_02110f20
	movs r4, r0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #0
	ldrneh r0, [r4, #0x34]
	cmpne r0, #0
	moveq r0, #0
	beq _020FC36C
	ldr r1, _020FC478 ; =0x02117950
	add r0, r4, r0
	bl NNS_G3dGetResDataByName
_020FC36C:
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r0]
	cmp r4, #0
	str r0, [sp, #0x18]
	ldrneh r0, [r4, #0x34]
	cmpne r0, #0
	moveq r0, #0
	beq _020FC3A4
	ldr r1, _020FC47C ; =0x0211793C
	add r0, r4, r0
	bl NNS_G3dGetResDataByName
_020FC3A4:
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r0]
	mov r7, #0
	mov r8, r7
	str r0, [sp, #0x1c]
	ldr r4, _020FC474 ; =0x0209BA20
	b _020FC3F8
_020FC3CC:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	bl FUN_ov16_020ee008
	cmp r0, #0
	beq _020FC3F4
	ldrb r1, [r0, #0x1d]
	cmp r1, #0x18
	ldreqh r7, [r0, #0x26]
	beq _020FC400
_020FC3F4:
	add r8, r8, #1
_020FC3F8:
	cmp r8, #2
	blt _020FC3CC
_020FC400:
	ldr r0, _020FC474 ; =0x0209BA20
	mov r1, r10
	bl FUN_ov16_020ee478
	cmp r0, #0
	ldrneh r3, [r0, #0x26]
	ldr r0, _020FC480 ; =0x02099F28
	mov r2, r10
	stmia sp, {r7, r9, r11}
	ldr r1, [r0]
	ldr r0, _020FC484 ; =0x02099F2C
	str r1, [sp, #0xc]
	ldr r1, [r0]
	ldr r0, _020FC488 ; =0x02099EFC
	str r1, [sp, #0x10]
	ldr r4, [r0]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	moveq r3, #0
	add r0, r5, r0, lsl #3
	add r1, r5, r1, lsl #3
	str r4, [sp, #0x14]
	bl FUN_ov16_020f0c60
	mov r4, #1
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_02111098
	mov r0, r4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FC474: .word unk_0209BA20
_020FC478: .word 0x02117950
_020FC47C: .word 0x0211793C
_020FC480: .word unk_02099F28
_020FC484: .word unk_02099F2C
_020FC488: .word unk_02099EFC
	arm_func_end FUN_ov16_020fc288

	arm_func_start FUN_ov16_020fc48c
FUN_ov16_020fc48c: ; 0x020FC48C
	stmfd sp!, {r3, lr}
	mov r1, #0
	bl FUN_ov16_020faa34
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_02110ffc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fc48c

	arm_func_start FUN_ov16_020fc4a8
FUN_ov16_020fc4a8: ; 0x020FC4A8
	ldrb r0, [r0, #0x42]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_020fc4a8

	arm_func_start FUN_ov16_020fc4bc
FUN_ov16_020fc4bc: ; 0x020FC4BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #0x1bc
_020FC4CC:
	mla r0, r5, r4, r6
	bl FUN_ov16_020faac4
	add r5, r5, #1
	cmp r5, #4
	blt _020FC4CC
	add r0, r6, #0x6f0
	bl FUN_ov16_021110ac
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fc4bc

	arm_func_start FUN_ov16_020fc4f0
FUN_ov16_020fc4f0: ; 0x020FC4F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #0x1bc
_020FC500:
	mla r0, r5, r4, r6
	bl FUN_ov16_020fab94
	add r5, r5, #1
	cmp r5, #4
	blt _020FC500
	add r0, r6, #0x6f0
	bl FUN_ov16_021110d4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fc4f0

	arm_func_start FUN_ov16_020fc524
FUN_ov16_020fc524: ; 0x020FC524
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_020fc524

	arm_func_start FUN_ov16_020fc538
FUN_ov16_020fc538: ; 0x020FC538
	ldr r12, _020FC54C ; =MIi_CpuClearFast
	add r1, r0, #4
	mov r0, #0
	mov r2, #0x10
	bx r12
_020FC54C: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_020fc538

	arm_func_start FUN_ov16_020fc550
FUN_ov16_020fc550: ; 0x020FC550
	ldr r12, _020FC558 ; =FUN_ov16_020fc5f8
	bx r12
_020FC558: .word FUN_ov16_020fc5f8
	arm_func_end FUN_ov16_020fc550

	arm_func_start FUN_ov16_020fc55c
FUN_ov16_020fc55c: ; 0x020FC55C
	stmfd sp!, {r3, lr}
	adds r1, r1, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r1]
	bl FUN_ov16_020fc578
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fc55c

	arm_func_start FUN_ov16_020fc578
FUN_ov16_020fc578: ; 0x020FC578
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020FC5B8 ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020fc5f8
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FC5B8: .word unk_02099EE4
	arm_func_end FUN_ov16_020fc578

	arm_func_start FUN_ov16_020fc5bc
FUN_ov16_020fc5bc: ; 0x020FC5BC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020FC5F4 ; =0x02099EE4
	mov r5, r0
	ldr r0, [r3]
	mov r3, #6
	bl FUN_ov16_020fd120
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020fc5f8
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FC5F4: .word unk_02099EE4
	arm_func_end FUN_ov16_020fc5bc

	arm_func_start FUN_ov16_020fc5f8
FUN_ov16_020fc5f8: ; 0x020FC5F8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fc714
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020FC61C
	ldr r0, _020FC62C ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_020FC61C:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020FC62C: .word unk_02099EE4
	arm_func_end FUN_ov16_020fc5f8

	arm_func_start FUN_ov16_020fc630
FUN_ov16_020fc630: ; 0x020FC630
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov16_020fc8d0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0xc]
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x10]
	cmp r0, r5
	ldreqh r0, [r6, #0xa]
	cmpeq r0, r4
	bne _020FC690
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020FC690:
	mov r0, r6
	bl FUN_ov16_020fc714
	mov r0, r5
	bl FUN_ov16_020fa638
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov16_020fc524
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r4
	bl NNS_G3dGetAnmByIdx
	mov r7, #0x100
	ldr r0, _020FC710 ; =0x0209A250
	mov r1, r7
	bl FUN_0202de44
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _020FC6F4
	mov r0, r6
	bl FUN_ov16_020fc714
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FC6F4:
	mov r2, r7
	mov r1, #0
	bl MI_CpuFill8
	str r5, [r6, #0x10]
	strh r4, [r6, #0xa]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FC710: .word unk_0209A250
	arm_func_end FUN_ov16_020fc630

	arm_func_start FUN_ov16_020fc714
FUN_ov16_020fc714: ; 0x020FC714
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fc898
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _020FC734
	ldr r0, _020FC744 ; =0x0209A250
	bl FUN_0202e1c0
_020FC734:
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_020FC744: .word unk_0209A250
	arm_func_end FUN_ov16_020fc714

	arm_func_start FUN_ov16_020fc748
FUN_ov16_020fc748: ; 0x020FC748
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0xc]
	mov r4, r1
	cmp r2, #0
	ldrneb r1, [r5, #8]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fc788
	cmp r0, #0
	moveq r4, #0
	cmp r4, r0
	subge r4, r0, #1
	ldr r0, [r5, #0xc]
	str r4, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fc748

	arm_func_start FUN_ov16_020fc788
FUN_ov16_020fc788: ; 0x020FC788
	ldrb r1, [r0, #8]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	ldrneh r0, [r0, #4]
	movne r0, r0, lsl #0xc
	bx lr
	arm_func_end FUN_ov16_020fc788

	arm_func_start FUN_ov16_020fc7b4
FUN_ov16_020fc7b4: ; 0x020FC7B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov16_020fc8d0
	cmp r0, #0
	bne _020FC7E0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldrne r0, [r5, #0x10]
	cmpne r0, #0
	bne _020FC7E8
_020FC7E0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020FC7E8:
	ldr r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov16_020fc898
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov16_020fc524
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r1, [r5, #0xa]
	bl NNS_G3dGetAnmByIdx
	mov r6, r0
	cmp r4, #0
	bne _020FC848
	ldr r0, [r5, #0x10]
	bl FUN_ov16_020fa71c
	mov r4, r0
_020FC848:
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0xc]
	cmp r0, #9
	cmpeq r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x10]
	bl FUN_ov16_020fa638
	mov r2, r0
	ldr r0, [r5, #0xc]
	mov r1, r6
	mov r3, r4
	bl NNS_G3dAnmObjInit
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #8]
	bl NNS_G3dRenderObjAddAnmObj
	mov r0, #1
	strb r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fc7b4

	arm_func_start FUN_ov16_020fc898
FUN_ov16_020fc898: ; 0x020FC898
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	ldrne r2, [r4, #0x10]
	cmpne r2, #0
	ldrneb r0, [r4, #8]
	cmpne r0, #0
	beq _020FC8C4
	ldr r0, [r2, #8]
	bl NNS_G3dRenderObjRemoveAnmObj
_020FC8C4:
	mov r0, #0
	strb r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fc898

	arm_func_start FUN_ov16_020fc8d0
FUN_ov16_020fc8d0: ; 0x020FC8D0
	ldr r1, _020FC8E8 ; =0x02099EE4
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #4]
	ldr r12, _020FC8EC ; =FUN_ov16_020fd278
	bx r12
_020FC8E8: .word unk_02099EE4
_020FC8EC: .word FUN_ov16_020fd278
	arm_func_end FUN_ov16_020fc8d0

	arm_func_start FUN_ov16_020fc8f0
FUN_ov16_020fc8f0: ; 0x020FC8F0
	ldr r2, [r0, #0x28]
	add r1, r2, r1
	str r1, [r0, #0x28]
	bx lr
	arm_func_end FUN_ov16_020fc8f0

	arm_func_start FUN_ov16_020fc900
FUN_ov16_020fc900: ; 0x020FC900
	ldr r2, [r0, #0x28]
	subs r1, r2, r1
	str r1, [r0, #0x28]
	movmi r1, #0
	strmi r1, [r0, #0x28]
	bx lr
	arm_func_end FUN_ov16_020fc900

	arm_func_start FUN_ov16_020fc918
FUN_ov16_020fc918: ; 0x020FC918
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr lr, [r0, #4]
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r4, [r0, #8]
	mov r0, #0
	cmp r4, #0
	ble _020FC978
_020FC93C:
	ldr r12, [lr, #4]
	cmp r12, #0
	beq _020FC968
	ldrh r3, [lr, #0x10]
	tst r3, #1
	beq _020FC968
	cmp r12, r1
	bne _020FC968
	cmp r2, #0
	strne lr, [r2]
	ldmfd sp!, {r4, pc}
_020FC968:
	add r0, r0, #1
	cmp r0, r4
	add lr, lr, #0x18
	blt _020FC93C
_020FC978:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fc918

	arm_func_start FUN_ov16_020fc980
FUN_ov16_020fc980: ; 0x020FC980
	ldrb r0, [r1, #0xc]
	cmp r0, #6
	bxne lr
	ldr r2, [r1, #4]
	ldrsb r3, [r2]
	cmp r3, #0x42
	ldreqsb r0, [r2, #1]
	cmpeq r0, #0x43
	ldreqsb r0, [r2, #2]
	cmpeq r0, #0x41
	moveq r0, #7
	streqb r0, [r1, #0xc]
	bxeq lr
	cmp r3, #0x42
	ldreqsb r0, [r2, #1]
	cmpeq r0, #0x4d
	ldreqsb r0, [r2, #2]
	cmpeq r0, #0x41
	moveq r0, #8
	streqb r0, [r1, #0xc]
	bxeq lr
	cmp r3, #0x42
	ldreqsb r0, [r2, #1]
	cmpeq r0, #0x54
	ldreqsb r0, [r2, #2]
	cmpeq r0, #0x41
	moveq r0, #9
	streqb r0, [r1, #0xc]
	bx lr
	arm_func_end FUN_ov16_020fc980

	arm_func_start FUN_ov16_020fc9f4
FUN_ov16_020fc9f4: ; 0x020FC9F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
	mov r5, r1
	add r0, r6, #0x10
	str r4, [r6, #4]
	str r4, [r6, #8]
	str r4, [r6, #0xc]
	str r4, [r6, #0x28]
	bl OS_InitMutex
	cmp r5, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r1, #0x18
	mul r0, r5, r1
	sub r1, r1, #0x19
	bl FUN_0208670c
	cmp r0, #0
	str r0, [r6, #4]
	moveq r0, r4
	strne r5, [r6, #8]
	strne r4, [r6, #0xc]
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fc9f4

	arm_func_start FUN_ov16_020fca54
FUN_ov16_020fca54: ; 0x020FCA54
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fd39c
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020FCA70
	bl FUN_02086738
_020FCA70:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x28]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fca54

	arm_func_start FUN_ov16_020fca88
FUN_ov16_020fca88: ; 0x020FCA88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	add r5, sp, #0
	mov r8, r1
	mov r4, #0x2c
	mov r7, r2
	mov r1, r5
	mov r2, r4
	mov r0, #0
	mov r6, r3
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r8
	mov r2, #0x20
	bl FUN_020538b0
	ldr r2, [sp, #0x48]
	mov r0, r5
	mov r1, r4
	str r7, [sp, #0x20]
	str r6, [sp, #0x24]
	str r2, [sp, #0x28]
	bl FUN_020859d8
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fca88

	arm_func_start FUN_ov16_020fcae8
FUN_ov16_020fcae8: ; 0x020FCAE8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r1, r2
	mov r2, r3
	ldr r12, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r12, [sp]
	bl FUN_ov16_020fca88
	str r0, [r4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_020fcae8

	arm_func_start FUN_ov16_020fcb18
FUN_ov16_020fcb18: ; 0x020FCB18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #4]
	ldr r12, [sp, #0x10]
	str r12, [sp]
	bl FUN_ov16_020fca88
	ldr r3, [r5, #8]
	mov r2, #0
	cmp r3, #0
	ble _020FCB68
_020FCB40:
	ldrh r1, [r4, #0x10]
	tst r1, #0x30
	ldreq r1, [r4]
	cmpeq r0, r1
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, r3
	add r4, r4, #0x18
	blt _020FCB40
_020FCB68:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fcb18

	arm_func_start FUN_ov16_020fcb70
FUN_ov16_020fcb70: ; 0x020FCB70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r6, #0
	mov r8, r3
	mov r9, r2
	mov r10, r1
	mov r1, r9
	mov r2, r6
	mov r3, r6
	mov r4, r0
	str r8, [sp]
	mov r5, r6
	bl FUN_ov16_020fcb18
	movs r7, r0
	beq _020FCBC0
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020fd21c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020FCBC0:
	ldr r12, [r4, #8]
	cmp r12, #0
	ble _020FCC04
	ldr r3, [r4, #4]
	mov r1, #1
	mov r0, #0x18
_020FCBD8:
	mla lr, r6, r0, r3
	ldrh r2, [lr, #0x10]
	tst r2, #1
	movne r2, r1
	moveq r2, r5
	cmp r2, #0
	moveq r7, lr
	beq _020FCC08
	add r6, r6, #1
	cmp r6, r12
	blt _020FCBD8
_020FCC04:
	mvn r6, #0
_020FCC08:
	cmp r6, #0
	mov r5, #0
	addlt sp, sp, #0x10
	mov r0, r5
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r7
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r4, #0x10
	bl OS_LockMutex
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	cmp r0, #0
	add r0, sp, #0xc
	beq _020FCC58
	add r3, sp, #8
	mov r1, r10
	mov r2, r9
	bl FUN_02086390
	b _020FCC64
_020FCC58:
	mov r1, r10
	mov r2, r9
	bl FUN_0208622c
_020FCC64:
	mov r5, r0
	cmp r5, #0
	ble _020FCCEC
	mov r3, #0
	stmia sp, {r3, r8}
	mov r0, r4
	mov r1, r7
	mov r2, r9
	bl FUN_ov16_020fcae8
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x30]
	stmib r7, {r1, r5}
	strb r8, [r7, #0xc]
	ldrh r2, [r7, #0x10]
	cmp r0, #0
	mov r1, #1
	orr r0, r2, #1
	strh r0, [r7, #0x10]
	strh r1, [r7, #0x12]
	strneb r1, [r7, #0xd]
	ldrnesb r0, [sp, #8]
	strneb r0, [r7, #0xf]
	bne _020FCCD4
	mov r2, #2
	mov r0, r4
	mov r1, r7
	strb r2, [r7, #0xd]
	bl FUN_ov16_020fc980
_020FCCD4:
	ldr r1, [r4, #0xc]
	mov r0, r4
	add r2, r1, #1
	mov r1, r5
	str r2, [r4, #0xc]
	bl FUN_ov16_020fc8f0
_020FCCEC:
	add r0, r4, #0x10
	bl OS_UnlockMutex
	cmp r5, #0
	movlt r7, #0
	mov r0, r7
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020fcb70

	arm_func_start FUN_ov16_020fcd08
FUN_ov16_020fcd08: ; 0x020FCD08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	mov r7, r2
	mov r11, r3
	mov r2, r6
	mov r3, r5
	mov r8, r0
	str r1, [sp, #0x10]
	str r7, [sp]
	bl FUN_ov16_020fcb18
	movs r4, r0
	beq _020FCD54
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020fd21c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FCD54:
	ldr r9, [r8, #8]
	mov r12, #0
	cmp r9, #0
	ble _020FCDA0
	ldr lr, [r8, #4]
	mov r1, r12
	mov r2, #1
	mov r0, #0x18
_020FCD74:
	mla r10, r12, r0, lr
	ldrh r3, [r10, #0x10]
	tst r3, #1
	movne r3, r2
	moveq r3, r1
	cmp r3, #0
	moveq r4, r10
	beq _020FCDA4
	add r12, r12, #1
	cmp r12, r9
	blt _020FCD74
_020FCDA0:
	mvn r12, #0
_020FCDA4:
	cmp r12, #0
	mov r9, #0
	addlt sp, sp, #0x18
	mov r0, r9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r4
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r8, #0x10
	bl OS_LockMutex
	cmp r6, #0
	cmpeq r5, #0
	streqb r9, [sp, #0x48]
	mov r9, #0
	str r9, [sp, #0x14]
	cmp r11, #0
	beq _020FCE20
	ldr r3, _020FCEF4 ; =0x0209A250
	ldr r0, [r3]
	cmp r0, #0
	beq _020FCE58
	ldrb r1, [sp, #0x48]
	str r6, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	ldrb r9, [sp, #0x4c]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x14
	str r9, [sp, #0xc]
	bl FUN_0202f294
	b _020FCE54
_020FCE20:
	ldr r3, _020FCEF4 ; =0x0209A250
	ldr r0, [r3]
	cmp r0, #0
	beq _020FCE58
	ldrb r1, [sp, #0x48]
	str r6, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	ldrb r9, [sp, #0x4c]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x14
	str r9, [sp, #0xc]
	bl FUN_0202eff0
_020FCE54:
	mov r9, r0
_020FCE58:
	cmp r9, #0
	beq _020FCED8
	ldr r2, [sp, #0x10]
	stmia sp, {r5, r7}
	mov r0, r8
	mov r1, r4
	mov r3, r6
	bl FUN_ov16_020fcae8
	ldr r1, [sp, #0x14]
	mov r0, #1
	stmib r4, {r1, r9}
	strb r7, [r4, #0xc]
	ldrh r1, [r4, #0x10]
	cmp r11, #0
	orr r1, r1, #1
	strh r1, [r4, #0x10]
	strh r0, [r4, #0x12]
	strneb r0, [r4, #0xd]
	subne r0, r0, #2
	strneb r0, [r4, #0xf]
	bne _020FCEC0
	mov r2, #2
	mov r0, r8
	mov r1, r4
	strb r2, [r4, #0xd]
	bl FUN_ov16_020fc980
_020FCEC0:
	ldr r1, [r8, #0xc]
	mov r0, r8
	add r2, r1, #1
	mov r1, r9
	str r2, [r8, #0xc]
	bl FUN_ov16_020fc8f0
_020FCED8:
	add r0, r8, #0x10
	bl OS_UnlockMutex
	cmp r9, #0
	moveq r4, #0
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FCEF4: .word unk_0209A250
	arm_func_end FUN_ov16_020fcd08

	arm_func_start FUN_ov16_020fcef8
FUN_ov16_020fcef8: ; 0x020FCEF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r6, [sp, #0x44]
	mov r7, r2
	str r1, [sp, #0x10]
	mov r11, r3
	ldr r5, [sp, #0x48]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r8, r0
	str r11, [sp]
	bl FUN_ov16_020fcb18
	movs r4, r0
	beq _020FCF48
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020fd21c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FCF48:
	ldr r9, [r8, #8]
	mov r12, #0
	cmp r9, #0
	ble _020FCF94
	ldr lr, [r8, #4]
	mov r1, r12
	mov r2, #1
	mov r0, #0x18
_020FCF68:
	mla r10, r12, r0, lr
	ldrh r3, [r10, #0x10]
	tst r3, #1
	movne r3, r2
	moveq r3, r1
	cmp r3, #0
	moveq r4, r10
	beq _020FCF98
	add r12, r12, #1
	cmp r12, r9
	blt _020FCF68
_020FCF94:
	mvn r12, #0
_020FCF98:
	cmp r12, #0
	addlt sp, sp, #0x18
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r0, r9
	mov r1, r4
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r8, #0x10
	bl OS_LockMutex
	mov r0, r7
	bl strlen
	sub r0, r0, #1
	ldrsb r0, [r7, r0]
	mov r10, #0
	cmp r0, #0x5f
	ldr r0, [sp, #0x40]
	moveq r9, #1
	str r10, [sp, #0x14]
	cmp r0, #0
	beq _020FD020
	ldr r3, _020FD0F0 ; =0x0209A250
	ldr r0, [r3]
	cmp r0, #0
	beq _020FD050
	str r6, [sp]
	ldrb r10, [sp, #0x4c]
	stmib sp, {r5, r9}
	ldr r1, [sp, #0x10]
	add r2, sp, #0x14
	str r10, [sp, #0xc]
	bl FUN_0202f294
	b _020FD04C
_020FD020:
	ldr r3, _020FD0F0 ; =0x0209A250
	ldr r0, [r3]
	cmp r0, #0
	beq _020FD050
	str r6, [sp]
	ldrb r10, [sp, #0x4c]
	stmib sp, {r5, r9}
	ldr r1, [sp, #0x10]
	add r2, sp, #0x14
	str r10, [sp, #0xc]
	bl FUN_0202eff0
_020FD04C:
	mov r10, r0
_020FD050:
	cmp r10, #0
	beq _020FD0D4
	stmia sp, {r5, r11}
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_020fcae8
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x40]
	stmib r4, {r1, r10}
	strb r11, [r4, #0xc]
	ldrh r2, [r4, #0x10]
	cmp r0, #0
	mov r1, #1
	orr r0, r2, #1
	strh r0, [r4, #0x10]
	strh r1, [r4, #0x12]
	strneb r1, [r4, #0xd]
	subne r0, r1, #2
	strneb r0, [r4, #0xf]
	bne _020FD0BC
	mov r2, #2
	mov r0, r8
	mov r1, r4
	strb r2, [r4, #0xd]
	bl FUN_ov16_020fc980
_020FD0BC:
	ldr r1, [r8, #0xc]
	mov r0, r8
	add r2, r1, #1
	mov r1, r10
	str r2, [r8, #0xc]
	bl FUN_ov16_020fc8f0
_020FD0D4:
	add r0, r8, #0x10
	bl OS_UnlockMutex
	cmp r10, #0
	moveq r4, #0
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FD0F0: .word unk_0209A250
	arm_func_end FUN_ov16_020fcef8

	arm_func_start FUN_ov16_020fd0f4
FUN_ov16_020fd0f4: ; 0x020FD0F4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r3, #1
	str r3, [sp, #0xc]
	bl FUN_ov16_020fcd08
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fd0f4

	arm_func_start FUN_ov16_020fd120
FUN_ov16_020fd120: ; 0x020FD120
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	ldr r0, [r8, #8]
	mov r4, #0
	mov r6, r2
	mov r7, r1
	mov r5, r3
	mov lr, r4
	cmp r0, #0
	mov r2, r4
	ble _020FD184
	ldr r9, [r8, #4]
	mov r3, #1
	mov r1, #0x18
_020FD158:
	mla r10, lr, r1, r9
	ldrh r12, [r10, #0x10]
	tst r12, #1
	movne r12, r3
	moveq r12, r2
	cmp r12, #0
	moveq r4, r10
	beq _020FD188
	add lr, lr, #1
	cmp lr, r0
	blt _020FD158
_020FD184:
	mvn lr, #0
_020FD188:
	cmp lr, #0
	mov r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r4
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r8, #0x10
	bl OS_LockMutex
	cmp r6, #0
	cmpne r7, #0
	beq _020FD200
	str r7, [r4, #4]
	str r6, [r4, #8]
	strb r5, [r4, #0xc]
	ldrh r1, [r4, #0x10]
	mov r0, #2
	mov r2, #1
	orr r1, r1, #0x11
	strh r1, [r4, #0x10]
	strb r0, [r4, #0xd]
	mov r0, r8
	mov r1, r4
	strh r2, [r4, #0x12]
	bl FUN_ov16_020fc980
	ldr r1, [r8, #0xc]
	mov r0, r8
	add r2, r1, #1
	mov r1, r6
	str r2, [r8, #0xc]
	bl FUN_ov16_020fc8f0
_020FD200:
	add r0, r8, #0x10
	bl OS_UnlockMutex
	cmp r6, #0
	cmpne r7, #0
	moveq r4, #0
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020fd120

	arm_func_start FUN_ov16_020fd21c
FUN_ov16_020fd21c: ; 0x020FD21C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r1, [r4, #0x10]
	mov r5, r0
	tst r1, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrh r1, [r4, #0x12]
	add r0, r5, #0x10
	add r1, r1, #1
	strh r1, [r4, #0x12]
	bl OS_UnlockMutex
	add r0, r5, #0x10
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fd21c

	arm_func_start FUN_ov16_020fd278
FUN_ov16_020fd278: ; 0x020FD278
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, #0x10
	bl OS_LockMutex
	cmp r5, #0
	ldrne r1, [r5, #4]
	cmpne r1, #0
	beq _020FD2A8
	ldrh r0, [r5, #0x10]
	tst r0, #1
	bne _020FD2B0
_020FD2A8:
	mvn r4, #0
	b _020FD33C
_020FD2B0:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _020FD2D0
	cmp r0, #1
	beq _020FD2DC
	cmp r0, #2
	beq _020FD2D4
	b _020FD32C
_020FD2D0:
	b _020FD2A8
_020FD2D4:
	mov r4, #0
	b _020FD33C
_020FD2DC:
	ldrsb r0, [r5, #0xf]
	cmp r0, #0
	blt _020FD2F0
	bl FUN_02086480
	b _020FD308
_020FD2F0:
	ldr r0, _020FD34C ; =0x0209A250
	ldr r0, [r0]
	cmp r0, #0
	mvneq r4, #0
	beq _020FD30C
	bl FUN_0202f57c
_020FD308:
	mov r4, r0
_020FD30C:
	cmp r4, #0
	bne _020FD33C
	mov r2, #2
	mov r0, r6
	mov r1, r5
	strb r2, [r5, #0xd]
	bl FUN_ov16_020fc980
	b _020FD33C
_020FD32C:
	add r0, r6, #0x10
	bl OS_UnlockMutex
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020FD33C:
	add r0, r6, #0x10
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020FD34C: .word unk_0209A250
	arm_func_end FUN_ov16_020fd278

	arm_func_start FUN_ov16_020fd350
FUN_ov16_020fd350: ; 0x020FD350
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrh r1, [r4, #0x12]
	add r0, r5, #0x10
	add r1, r1, #0xff
	add r1, r1, #0xff00
	strh r1, [r4, #0x12]
	bl OS_UnlockMutex
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fd3e0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fd350

	arm_func_start FUN_ov16_020fd39c
FUN_ov16_020fd39c: ; 0x020FD39C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	ldr r4, [r6, #4]
	cmp r0, #0
	mov r5, #0
	cmpgt r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_020FD3BC:
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020fd3e0
	ldr r0, [r6, #8]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #0x18
	blt _020FD3BC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fd39c

	arm_func_start FUN_ov16_020fd3e0
FUN_ov16_020fd3e0: ; 0x020FD3E0
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fd5ec
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020FD490
	ldrh r0, [r4, #0x10]
	tst r0, #0x20
	beq _020FD41C
	ldr r1, [r4, #0x14]
	mov r0, r5
	bl FUN_ov16_020fd350
	b _020FD484
_020FD41C:
	tst r0, #0x10
	ldr r1, [r4, #8]
	mov r0, r5
	beq _020FD434
	bl FUN_ov16_020fc900
	b _020FD484
_020FD434:
	bl FUN_ov16_020fc900
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _020FD478
	ldrsb r0, [r4, #0xf]
	cmp r0, #0
	blt _020FD458
	bl FUN_020864a8
	b _020FD484
_020FD458:
	ldr r0, _020FD4A4 ; =0x0209A250
	ldr r1, [r4, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _020FD484
	mov r2, #1
	bl FUN_0202f678
	b _020FD484
_020FD478:
	ldr r1, [r4, #4]
	ldr r0, _020FD4A4 ; =0x0209A250
	bl FUN_0202e1c0
_020FD484:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
_020FD490:
	mov r1, r4
	mov r0, #0
	mov r2, #0x18
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, pc}
_020FD4A4: .word unk_0209A250
	arm_func_end FUN_ov16_020fd3e0

	arm_func_start FUN_ov16_020fd4a8
FUN_ov16_020fd4a8: ; 0x020FD4A8
	ldr r2, _020FD4C8 ; =0x02118924
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x28]
	bx lr
_020FD4C8: .word ov16_02118924
	arm_func_end FUN_ov16_020fd4a8

	arm_func_start FUN_ov16_020fd4cc
FUN_ov16_020fd4cc: ; 0x020FD4CC
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r6, #0x10
	bl OS_LockMutex
	ldrb r0, [r5, #0xe]
	mov r4, #1
	cmp r0, #0
	addne r0, r0, #1
	strneb r0, [r5, #0xe]
	bne _020FD550
	ldrb r0, [r5, #0xc]
	mov r1, #0
	cmp r0, #3
	blo _020FD528
	cmp r0, #0xb
	movlo r1, r4
_020FD528:
	cmp r1, #0
	beq _020FD550
	ldr r0, _020FD560 ; =0x02099F30
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_02051b84
	cmp r0, #0
	movne r0, #1
	moveq r4, #0
	strneb r0, [r5, #0xe]
_020FD550:
	add r0, r6, #0x10
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020FD560: .word unk_02099F30
	arm_func_end FUN_ov16_020fd4cc

	arm_func_start FUN_ov16_020fd564
FUN_ov16_020fd564: ; 0x020FD564
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	ldrne r2, [r4, #4]
	mov r5, r0
	cmpne r2, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fd660
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xc]
	mov r1, #0
	cmp r0, #3
	blo _020FD5A8
	cmp r0, #0xb
	movlo r1, #1
_020FD5A8:
	cmp r1, #0
	beq _020FD5DC
	ldrb r0, [r4, #0xe]
	sub r0, r0, #1
	ands r0, r0, #0xff
	strb r0, [r4, #0xe]
	bne _020FD5DC
	ldr r0, _020FD5E8 ; =0x02099F30
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_02051b58
	mov r0, #0
	strb r0, [r4, #0xe]
_020FD5DC:
	add r0, r5, #0x10
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5E8: .word unk_02099F30
	arm_func_end FUN_ov16_020fd564

	arm_func_start FUN_ov16_020fd5ec
FUN_ov16_020fd5ec: ; 0x020FD5EC
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	ldrne r2, [r4, #4]
	mov r5, r0
	cmpne r2, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fd660
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xc]
	mov r1, #0
	cmp r0, #3
	blo _020FD630
	cmp r0, #0xb
	movlo r1, #1
_020FD630:
	cmp r1, #0
	beq _020FD648
	ldr r0, _020FD65C ; =0x02099F30
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_02051b58
_020FD648:
	mov r1, #0
	add r0, r5, #0x10
	strb r1, [r4, #0xe]
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020FD65C: .word unk_02099F30
	arm_func_end FUN_ov16_020fd5ec

	arm_func_start FUN_ov16_020fd660
FUN_ov16_020fd660: ; 0x020FD660
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xe]
	mov r4, #1
	cmp r0, #0
	add r0, r5, #0x10
	moveq r4, #0
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fd660

	arm_func_start FUN_ov16_020fd69c
FUN_ov16_020fd69c: ; 0x020FD69C
	ldrb r1, [r1, #0xc]
	mov r0, #0
	cmp r1, #0xc
	bxlo lr
	cmp r1, #0x10
	movlo r0, #1
	bx lr
	arm_func_end FUN_ov16_020fd69c

	arm_func_start FUN_ov16_020fd6b8
FUN_ov16_020fd6b8: ; 0x020FD6B8
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov16_020fd69c
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldrne r0, [r0]
	mvneq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fd6b8

	arm_func_start FUN_ov16_020fd6d8
FUN_ov16_020fd6d8: ; 0x020FD6D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, r2
	mov r10, r0
	mov r9, r1
	mov r8, r3
	mov r4, #0
	bl FUN_ov16_020fd6b8
	cmp r6, r0
	addge sp, sp, #4
	movge r0, r4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, r4
	mov r0, r10
	mov r1, r9
	str r7, [sp]
	bl FUN_ov16_020fd278
	cmp r0, #0
	addne sp, sp, #4
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #4]
	mov r1, r6
	bl FUN_020539c8
	mov r5, r0
	ldr r0, [r9, #4]
	mov r1, r6
	bl FUN_02053994
	mov r6, r0
	cmp r5, #0
	cmpne r6, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r2, sp, #0
	mov r0, r10
	mov r1, r5
	bl FUN_ov16_020fc918
	cmp r0, #0
	blt _020FD78C
	ldr r1, [sp]
	mov r0, r10
	bl FUN_ov16_020fd21c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020FD78C:
	ldr r12, [r10, #8]
	cmp r12, #0
	ble _020FD7D0
	ldr r3, [r10, #4]
	mov r1, #1
	mov r0, #0x18
_020FD7A4:
	mla lr, r7, r0, r3
	ldrh r2, [lr, #0x10]
	tst r2, #1
	movne r2, r1
	moveq r2, r4
	cmp r2, #0
	streq lr, [sp]
	beq _020FD7D4
	add r7, r7, #1
	cmp r7, r12
	blt _020FD7A4
_020FD7D0:
	mvn r7, #0
_020FD7D4:
	cmp r7, #0
	addlt sp, sp, #4
	mov r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [sp]
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r10, #0x10
	bl OS_LockMutex
	ldr r0, [sp]
	mov r4, #2
	str r5, [r0, #4]
	ldr r0, [sp]
	mov r3, #1
	str r6, [r0, #8]
	ldr r1, [sp]
	mov r0, r10
	strb r8, [r1, #0xc]
	ldr r5, [sp]
	mov r1, r9
	ldrh r2, [r5, #0x10]
	orr r2, r2, #0x21
	strh r2, [r5, #0x10]
	ldr r2, [sp]
	strb r4, [r2, #0xd]
	ldr r2, [sp]
	strh r3, [r2, #0x12]
	ldr r2, [sp]
	str r9, [r2, #0x14]
	bl FUN_ov16_020fd21c
	ldr r1, [sp]
	mov r0, r10
	bl FUN_ov16_020fc980
	ldr r1, [r10, #0xc]
	add r0, r10, #0x10
	add r1, r1, #1
	str r1, [r10, #0xc]
	bl OS_UnlockMutex
	ldr r0, [sp]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020fd6d8

	arm_func_start FUN_ov16_020fd878
FUN_ov16_020fd878: ; 0x020FD878
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _020FD8D8
	ldrh r0, [r4, #0x10]
	tst r0, #0x100
	bne _020FD8D8
	ldr r0, _020FD8E8 ; =0x02099F30
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_02051b58
	ldrh r0, [r4, #0x10]
	orr r0, r0, #0x100
	strh r0, [r4, #0x10]
_020FD8D8:
	add r0, r5, #0x10
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FD8E8: .word unk_02099F30
	arm_func_end FUN_ov16_020fd878

	arm_func_start FUN_ov16_020fd8ec
FUN_ov16_020fd8ec: ; 0x020FD8EC
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _020FD950
	ldrh r0, [r4, #0x10]
	tst r0, #0x100
	beq _020FD950
	ldr r0, _020FD960 ; =0x02099F30
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_02051b28
	ldrh r1, [r4, #0x10]
	ldr r0, _020FD964 ; =0x0000FEFF
	and r0, r1, r0
	strh r0, [r4, #0x10]
_020FD950:
	add r0, r5, #0x10
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FD960: .word unk_02099F30
_020FD964: .word 0x0000FEFF
	arm_func_end FUN_ov16_020fd8ec

	arm_func_start FUN_ov16_020fd968
FUN_ov16_020fd968: ; 0x020FD968
	stmfd sp!, {r4, lr}
	ldr r1, _020FD98C ; =0x02118924
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fca54
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020FD98C: .word ov16_02118924
	arm_func_end FUN_ov16_020fd968

	arm_func_start FUN_ov16_020fd990
FUN_ov16_020fd990: ; 0x020FD990
	stmfd sp!, {r4, lr}
	ldr r1, _020FD9AC ; =0x02118924
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fca54
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020FD9AC: .word ov16_02118924
	arm_func_end FUN_ov16_020fd990

	arm_func_start FUN_ov16_020fd9b0
FUN_ov16_020fd9b0: ; 0x020FD9B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x38
	mov r1, #0
	mov r2, #0x3c
	bl MI_CpuFill8
	ldr r0, _020FD9E0 ; =0x021189D0
	add r1, r4, #0x38
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020FD9E0: .word ov16_021189D0
	arm_func_end FUN_ov16_020fd9b0

	arm_func_start FUN_ov16_020fd9e4
FUN_ov16_020fd9e4: ; 0x020FD9E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x38]
	cmp r6, #0
	ldrne r1, _020FDA30 ; =0x02117964
	ldrne r7, _020FDA34 ; =0x02117964
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x38
	mov r4, #0xc
_020FDA0C:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020FDA0C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDA30: .word 0x02117964
_020FDA34: .word 0x02117964
	arm_func_end FUN_ov16_020fd9e4

	arm_func_start FUN_ov16_020fda38
FUN_ov16_020fda38: ; 0x020FDA38
	ldr r12, _020FDA48 ; =FUN_ov16_020f330c
	add r0, r0, #0x38
	mov r1, #5
	bx r12
_020FDA48: .word FUN_ov16_020f330c
	arm_func_end FUN_ov16_020fda38

	arm_func_start FUN_ov16_020fda4c
FUN_ov16_020fda4c: ; 0x020FDA4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x38
	mov r4, #0xc
_020FDA5C:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #5
	blt _020FDA5C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fda4c

	arm_func_start FUN_ov16_020fda74
FUN_ov16_020fda74: ; 0x020FDA74
	str r1, [r0, #0x24]
	cmp r1, #0
	moveq r1, #0
	movne r1, #7
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_ov16_020fda74

	arm_func_start FUN_ov16_020fda8c
FUN_ov16_020fda8c: ; 0x020FDA8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #4
	mov r2, #1
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x20]
	cmp r0, #0
	movgt r0, r2
	ldmgtfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #8]
	cmp r0, #0
	movne r0, r2
	ldmnefd sp!, {r4, r5, r6, pc}
	tst r1, #0x20
	beq _020FDAF4
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _020FDAF0
	ldr r0, _020FDBA8 ; =0x0209AC44
	mov r1, #8
	str r2, [r4, #0x1c]
	bl FUN_0202cf6c
_020FDAF0:
	b _020FDB98
_020FDAF4:
	tst r1, #0x10
	beq _020FDB20
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	beq _020FDB1C
	ldr r0, _020FDBA8 ; =0x0209AC44
	mov r2, #2
	mov r1, #8
	str r2, [r4, #0x1c]
	bl FUN_0202cf6c
_020FDB1C:
	b _020FDB98
_020FDB20:
	tst r1, #1
	beq _020FDB70
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _020FDB4C
	ldr r0, _020FDBA8 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #1
	b _020FDB68
_020FDB4C:
	cmp r0, #2
	bne _020FDB6C
	ldr r0, _020FDBA8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #2
_020FDB68:
	bl FUN_ov16_020fda74
_020FDB6C:
	b _020FDB98
_020FDB70:
	tst r1, #2
	beq _020FDBA0
	ldr r0, _020FDBA8 ; =0x0209AC44
	mov r5, #2
	mov r1, #4
	str r5, [r4, #0x1c]
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020fda74
_020FDB98:
	str r6, [r4, #0x18]
	str r6, [r4, #0x14]
_020FDBA0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020FDBA8: .word unk_0209AC44
	arm_func_end FUN_ov16_020fda8c

	arm_func_start FUN_ov16_020fdbac
FUN_ov16_020fdbac: ; 0x020FDBAC
	cmp r2, #0x80
	blt _020FDBE4
	cmp r2, #0x98
	bge _020FDBE4
	cmp r1, #0x30
	blt _020FDBD0
	cmp r1, #0x70
	movlt r0, #1
	bxlt lr
_020FDBD0:
	cmp r1, #0x90
	blt _020FDBE4
	cmp r1, #0xd0
	movlt r0, #2
	bxlt lr
_020FDBE4:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020fdbac

	arm_func_start FUN_ov16_020fdbec
FUN_ov16_020fdbec: ; 0x020FDBEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #4]
	mov r4, r1
	cmp r2, #4
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x20]
	cmp r1, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldrh r1, [r4, #4]
	cmp r1, #1
	bne _020FDC80
	ldrh r1, [r4, #6]
	cmp r1, #0
	bne _020FDD0C
	ldrb r1, [r5, #8]
	cmp r1, #0
	bne _020FDC60
	mov r1, #1
	strb r1, [r5, #8]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	bl FUN_ov16_020fdbac
	sub r1, r0, #1
	cmp r1, #1
	str r0, [r5, #0x14]
	strls r0, [r5, #0x1c]
_020FDC60:
	ldrh r1, [r4]
	mov r0, r5
	str r1, [r5, #0xc]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x10]
	bl FUN_ov16_020fdbac
	str r0, [r5, #0x18]
	b _020FDD0C
_020FDC80:
	ldrb r1, [r5, #8]
	cmp r1, #0
	ldrne r4, [r5, #0x14]
	cmpne r4, #0
	beq _020FDCFC
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov16_020fdbac
	cmp r4, r0
	bne _020FDCFC
	ldr r0, [r5, #0x1c]
	cmp r0, r4
	ldrne r0, [r5, #0x14]
	strne r0, [r5, #0x1c]
	ldr r0, [r5, #0x1c]
	cmp r0, #1
	bne _020FDCDC
	ldr r0, _020FDD14 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #1
	b _020FDCF8
_020FDCDC:
	cmp r0, #2
	bne _020FDCFC
	ldr r0, _020FDD14 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #2
_020FDCF8:
	bl FUN_ov16_020fda74
_020FDCFC:
	mov r0, #0
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	strb r0, [r5, #8]
_020FDD0C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FDD14: .word unk_0209AC44
	arm_func_end FUN_ov16_020fdbec

	arm_func_start FUN_ov16_020fdd18
FUN_ov16_020fdd18: ; 0x020FDD18
	ldr r1, _020FDD2C ; =0x020A6C40
	ldr r12, _020FDD30 ; =MIi_CpuClearFast
	mov r0, #0
	mov r2, #0x800
	bx r12
_020FDD2C: .word unk_020A6C40
_020FDD30: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_020fdd18

	arm_func_start FUN_ov16_020fdd34
FUN_ov16_020fdd34: ; 0x020FDD34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0xc
	mla r0, r1, r0, r7
	ldr r4, [r0, #0x38]
	mov r6, r2
	mov r5, r3
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x2c]
	ldr r3, [r4, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020FDDB8
_020FDD6C: ; jump table
	b _020FDD7C ; case 0
	b _020FDD90 ; case 1
	b _020FDDA4 ; case 2
	b _020FDDB8 ; case 3
_020FDD7C:
	ldr r1, [r5]
	ldr r2, [r4, #0x18]
	add r0, r4, r3
	bl GX_LoadBG0Char
	b _020FDDC8
_020FDD90:
	ldr r1, [r5]
	ldr r2, [r4, #0x18]
	add r0, r4, r3
	bl GX_LoadBG1Char
	b _020FDDC8
_020FDDA4:
	ldr r1, [r5]
	ldr r2, [r4, #0x18]
	add r0, r4, r3
	bl GX_LoadBG2Char
	b _020FDDC8
_020FDDB8:
	ldr r1, [r5]
	ldr r2, [r4, #0x18]
	add r0, r4, r3
	bl GX_LoadBG3Char
_020FDDC8:
	ldr r1, [r5]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r5]
	ldr r2, [r7, #0x30]
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6]
	mov r0, r4
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	str r0, [r6]
	ldr r2, [r7, #0x30]
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fdd34

	arm_func_start FUN_ov16_020fde0c
FUN_ov16_020fde0c: ; 0x020FDE0C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x2c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020FDE5C
_020FDE28: ; jump table
	b _020FDE38 ; case 0
	b _020FDE44 ; case 1
	b _020FDE4C ; case 2
	b _020FDE54 ; case 3
_020FDE38:
	bl G2_GetBG0CharPtr
_020FDE3C:
	mov r5, r0
	b _020FDE64
_020FDE44:
	bl G2_GetBG1CharPtr
	b _020FDE3C
_020FDE4C:
	bl G2_GetBG2CharPtr
	b _020FDE3C
_020FDE54:
	bl G2_GetBG3CharPtr
	b _020FDE3C
_020FDE5C:
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FDE64:
	mov r8, #0
	mov r7, #0x20
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r7
	bl DC_FlushRange
	add r6, sp, #4
	add r5, sp, #0
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #1
	str r8, [sp, #4]
	str r7, [sp]
	bl FUN_ov16_020fdd34
	mov r0, r4
	mov r1, #2
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020fdd34
	mov r0, r4
	mov r1, #3
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020fdd34
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #4
	bl FUN_ov16_020fdd34
	bl FUN_ov16_020f10ac
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fde0c

	arm_func_start FUN_ov16_020fdef4
FUN_ov16_020fdef4: ; 0x020FDEF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r3, r12, r0
	ldr r12, [r0, #0x38]
	cmp r12, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r12, #0xc]
	ldr r3, [sp, #0x18]
	add r0, r12, r0
	add r5, r3, r0
	mov r6, #3
	ldr r12, _020FDF80 ; =0x020A6C40
	mov r3, #8
	b _020FDF74
_020FDF2C:
	add r0, r12, r2, lsl #6
	mov lr, r1
	mov r7, r3
	add r4, r0, r1, lsl #1
	b _020FDF64
_020FDF40:
	cmp lr, #0
	blt _020FDF54
	cmp lr, #0x20
	ldrlth r0, [r5]
	strlth r0, [r4]
_020FDF54:
	sub r7, r7, #1
	add lr, lr, #1
	add r5, r5, #2
	add r4, r4, #2
_020FDF64:
	cmp r7, #0
	bgt _020FDF40
	sub r6, r6, #1
	add r2, r2, #1
_020FDF74:
	cmp r6, #0
	bgt _020FDF2C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDF80: .word unk_020A6C40
	arm_func_end FUN_ov16_020fdef4

	arm_func_start FUN_ov16_020fdf84
FUN_ov16_020fdf84: ; 0x020FDF84
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0x1c]
	mov r6, r1
	cmp r0, #1
	moveq r4, #3
	moveq r5, #2
	ldr r0, [r7, #0x20]
	movne r4, #2
	movne r5, #3
	cmp r0, #0
	ble _020FE05C
	sub r0, r0, #1
	str r0, [r7, #0x20]
	cmp r0, #0
	bgt _020FE02C
	ldr r0, [r7, #0x24]
	cmp r0, #1
	beq _020FDFEC
	cmp r0, #2
	moveq r1, #0
	moveq r0, #5
	streq r1, [r7, #0x28]
	streq r0, [r7, #4]
	b _020FE01C
_020FDFEC:
	ldr r0, _020FE0CC ; =0x0209AC44
	mov r2, #6
	ldr r1, _020FE0D0 ; =0x000005DC
	str r2, [r7, #4]
	bl FUN_0202c470
	mov r8, #0x28
	mov r1, r8
	mov r0, #0
	bl FUN_ov16_020f1600
	mov r1, r8
	mov r0, #1
	bl FUN_ov16_020f1600
_020FE01C:
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020fda74
	b _020FE088
_020FE02C:
	cmp r0, #2
	ble _020FE088
	cmp r0, #5
	bgt _020FE088
	ldr r0, [r7, #0x24]
	cmp r0, #1
	beq _020FE050
	cmp r0, #2
	b _020FE080
_020FE050:
	mov r4, #4
	mov r5, #2
	b _020FE088
_020FE05C:
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	cmp r1, r0
	bne _020FE088
	cmp r1, #1
	moveq r4, #4
	moveq r5, #2
	beq _020FE088
	cmp r1, #2
_020FE080:
	moveq r4, #2
	moveq r5, #4
_020FE088:
	mov r8, #0x10
	mov r12, #0
	mov r0, r7
	mov r2, r8
	mov r3, r4
	add r1, r6, #6
	str r12, [sp]
	bl FUN_ov16_020fdef4
	mov r4, #0x30
	mov r0, r7
	mov r2, r8
	mov r3, r5
	add r1, r6, #0x12
	str r4, [sp]
	bl FUN_ov16_020fdef4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020FE0CC: .word unk_0209AC44
_020FE0D0: .word 0x000005DC
	arm_func_end FUN_ov16_020fdf84

	arm_func_start FUN_ov16_020fe0d4
FUN_ov16_020fe0d4: ; 0x020FE0D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r4, r1
	mov r5, r0
	mov r1, #1
	strb r1, [r5, #0x34]
	beq _020FE0F0
	bl FUN_ov16_020fdd18
_020FE0F0:
	ldr r1, [r5, #0x44]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r1, #0xc]
	cmp r4, #0
	add r6, r1, r0
	addlt r12, r4, #0x20
	movlt lr, #0
	mov r8, #0
	ldr r7, _020FE174 ; =0x020A6C40
	sublt r6, r6, r4, lsl #1
	movge lr, r4
	rsbge r12, r4, #0x20
	mov r3, r8
	b _020FE15C
_020FE12C:
	mov r9, r3
	add r0, r7, lr, lsl #1
	b _020FE148
_020FE138:
	mov r2, r9, lsl #1
	ldrh r1, [r6, r2]
	add r9, r9, #1
	strh r1, [r2, r0]
_020FE148:
	cmp r9, r12
	blt _020FE138
	add lr, lr, #0x20
	add r6, r6, #0x40
	add r8, r8, #1
_020FE15C:
	cmp r8, #0x18
	blt _020FE12C
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fdf84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FE174: .word unk_020A6C40
	arm_func_end FUN_ov16_020fe0d4

	arm_func_start FUN_ov16_020fe178
FUN_ov16_020fe178: ; 0x020FE178
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0x34]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020FE218 ; =0x020A6C40
	mov r4, #0x800
	mov r6, #0
	mov r0, r5
	mov r1, r4
	strb r6, [r7, #0x34]
	bl DC_FlushRange
	ldr r0, [r7, #0x2c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE1B8: ; jump table
	b _020FE1C8 ; case 0
	b _020FE1DC ; case 1
	b _020FE1F0 ; case 2
	b _020FE204 ; case 3
_020FE1C8:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG0Scr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE1DC:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG1Scr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE1F0:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG2Scr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE204:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG3Scr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE218: .word unk_020A6C40
	arm_func_end FUN_ov16_020fe178

	arm_func_start FUN_ov16_020fe21c
FUN_ov16_020fe21c: ; 0x020FE21C
	mov r2, #0
	mov r1, #2
	str r2, [r0, #0x28]
	strb r2, [r0, #8]
	str r2, [r0, #0x18]
	str r2, [r0, #0x14]
	str r1, [r0, #0x1c]
	bx lr
	arm_func_end FUN_ov16_020fe21c

	arm_func_start FUN_ov16_020fe23c
FUN_ov16_020fe23c: ; 0x020FE23C
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x3c
	mov r5, r0
	mov r4, #0
	sub r1, r2, #0x3d
	str r4, [r5, #4]
	strb r2, [r5, #0x36]
	str r1, [r5, #0x2c]
	str r4, [r5, #0x30]
	bl FUN_ov16_020fe21c
	mov r0, r5
	mov r1, r4
	strb r4, [r5, #0x35]
	strb r4, [r5, #0x34]
	bl FUN_ov16_020fda74
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fe23c

	arm_func_start FUN_ov16_020fe27c
FUN_ov16_020fe27c: ; 0x020FE27C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	cmp r1, #0
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	movlt r0, r5
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020FE3B8
_020FE2CC: ; jump table
	b _020FE3B8 ; case 0
	b _020FE2EC ; case 1
	b _020FE3B8 ; case 2
	b _020FE310 ; case 3
	b _020FE34C ; case 4
	b _020FE358 ; case 5
	b _020FE388 ; case 6
	b _020FE3AC ; case 7
_020FE2EC:
	mov r0, r4
	bl FUN_ov16_020fda38
	cmp r0, #0
	beq _020FE3B8
	mov r0, r4
	bl FUN_ov16_020fd9e4
	mov r0, #2
_020FE308:
	str r0, [r4, #4]
	b _020FE3B8
_020FE310:
	ldr r0, _020FE3CC ; =0x0209A110
	ldr r1, [r4, #0x28]
	ldr r0, [r0]
	add r1, r1, r0, lsl #2
	str r1, [r4, #0x28]
	cmp r1, #0x20
	mov r0, r4
	blt _020FE340
	mov r1, r5
	bl FUN_ov16_020fe0d4
	mov r0, #4
	b _020FE308
_020FE340:
	sub r1, r1, #0x20
_020FE344:
	bl FUN_ov16_020fe0d4
	b _020FE3B8
_020FE34C:
	mov r0, r4
	mov r1, r5
	b _020FE344
_020FE358:
	ldr r0, _020FE3CC ; =0x0209A110
	ldr r2, [r4, #0x28]
	ldr r1, [r0]
	mov r0, r4
	add r1, r2, r1, lsl #2
	str r1, [r4, #0x28]
	bl FUN_ov16_020fe0d4
	ldr r0, [r4, #0x28]
	cmp r0, #0x20
	movgt r0, #7
	strgt r0, [r4, #4]
	b _020FE3B8
_020FE388:
	ldrb r0, [r4, #0x36]
	sub r0, r0, #1
	strb r0, [r4, #0x36]
	tst r0, #0xff
	bne _020FE3B8
	mov r0, #0x11
	mov r1, #1
	bl FUN_ov16_020f2604
	b _020FE3B8
_020FE3AC:
	mov r0, r4
	bl FUN_ov16_020fda4c
	str r5, [r4, #4]
_020FE3B8:
	ldrb r0, [r4, #0x35]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020FE3CC: .word unk_0209A110
	arm_func_end FUN_ov16_020fe27c

	arm_func_start FUN_ov16_020fe3d0
FUN_ov16_020fe3d0: ; 0x020FE3D0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020fe3d0

	arm_func_start FUN_ov16_020fe3e4
FUN_ov16_020fe3e4: ; 0x020FE3E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	cmp r1, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x2c]
	cmp r1, #0
	movlt r0, r4
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020FE474
_020FE434: ; jump table
	b _020FE474 ; case 0
	b _020FE474 ; case 1
	b _020FE454 ; case 2
	b _020FE46C ; case 3
	b _020FE46C ; case 4
	b _020FE46C ; case 5
	b _020FE474 ; case 6
	b _020FE46C ; case 7
_020FE454:
	mov r0, r5
	bl FUN_ov16_020fde0c
	mov r0, #3
	str r4, [r5, #0x28]
	str r0, [r5, #4]
	b _020FE474
_020FE46C:
	mov r0, r5
	bl FUN_ov16_020fe178
_020FE474:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fe3e4

	arm_func_start FUN_ov16_020fe47c
FUN_ov16_020fe47c: ; 0x020FE47C
	stmfd sp!, {r4, lr}
	mov r4, r0
	strb r1, [r4, #0x35]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020fe21c
	mov r0, r4
	bl FUN_ov16_020fd9b0
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fe47c

	arm_func_start FUN_ov16_020fe4c8
FUN_ov16_020fe4c8: ; 0x020FE4C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fe4c8

	arm_func_start FUN_ov16_020fe4dc
FUN_ov16_020fe4dc: ; 0x020FE4DC
	str r1, [r0, #0x30]
	bx lr
	arm_func_end FUN_ov16_020fe4dc

	arm_func_start FUN_ov16_020fe4e4
FUN_ov16_020fe4e4: ; 0x020FE4E4
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end FUN_ov16_020fe4e4

	arm_func_start FUN_ov16_020fe4ec
FUN_ov16_020fe4ec: ; 0x020FE4EC
	bx lr
	arm_func_end FUN_ov16_020fe4ec

	arm_func_start FUN_ov16_020fe4f0
FUN_ov16_020fe4f0: ; 0x020FE4F0
	bx lr
	arm_func_end FUN_ov16_020fe4f0

	arm_func_start FUN_ov16_020fe4f4
FUN_ov16_020fe4f4: ; 0x020FE4F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x294
	bl FUN_0206c0d8
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	str r1, [r4, #0x148]
	str r1, [r4, #0x290]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fe4f4

	arm_func_start FUN_ov16_020fe51c
FUN_ov16_020fe51c: ; 0x020FE51C
	mov r2, #0
	str r1, [r0, #4]
	str r2, [r0, #0x134]
	str r2, [r0, #0x148]
	bx lr
	arm_func_end FUN_ov16_020fe51c

	arm_func_start FUN_ov16_020fe530
FUN_ov16_020fe530: ; 0x020FE530
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, [r4, #0x148]
	cmp r2, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	str r1, [r4, #0x140]
	bl FUN_02047f80
	str r0, [r4, #8]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fe530

	arm_func_start FUN_ov16_020fe56c
FUN_ov16_020fe56c: ; 0x020FE56C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fe8b0
	mov r0, #0
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fe56c

	arm_func_start FUN_ov16_020fe584
FUN_ov16_020fe584: ; 0x020FE584
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r7, r1
	mov r8, r0
	mov r4, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r3, #1
	str r7, [r8, #0xc]
	str r3, [r8, #0x148]
	bl FUN_ov16_020fe9f4
	ldrb r2, [r7, #6]
	mov r0, r8
	mov r1, r7
	add r3, r2, #7
	mov r2, r3, asr #2
	add r2, r3, r2, lsr #29
	mov r5, r2, asr #3
	bl FUN_ov16_020fe9e4
	mov r6, r0
	ldrh r0, [r6, #4]
	ldr r9, _020FE6E0 ; =0x00006012
	cmp r0, r9
	strne r4, [r8, #0x148]
	addne r0, r7, r5, lsl #2
	ldrne r0, [r0, #8]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020fe9e4
	movs r7, r0
	beq _020FE628
	sub r9, r9, #0x11
_020FE604:
	ldrh r0, [r7, #4]
	cmp r0, r9
	beq _020FE628
	mov r0, r8
	mov r1, r7
	add r4, r4, #1
	bl FUN_ov16_020fe9e4
	movs r7, r0
	bne _020FE604
_020FE628:
	cmp r7, #0
	moveq r0, #0
	streq r0, [r8, #0x148]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, #0x2c
	mul r1, r4, r0
	mov r0, r8
	str r4, [r8, #0x138]
	bl FUN_ov16_020fe9c4
	str r0, [r8, #0x134]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0x138]
	mov r4, #0
	cmp r0, #0
	ble _020FE69C
	mov r7, #0x2c
_020FE670:
	mul r2, r4, r7
	ldr r3, [r8, #0x134]
	mov r0, r8
	mov r1, r6
	str r6, [r3, r2]
	bl FUN_ov16_020fe9e4
	ldr r1, [r8, #0x138]
	add r4, r4, #1
	mov r6, r0
	cmp r4, r1
	blt _020FE670
_020FE69C:
	ldr r1, [r8, #0x134]
	add r2, sp, #0
	mov r0, r8
	bl FUN_ov16_020feeb8
	ldr r1, [r8, #0x134]
	ldr r0, _020FE6E4 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r8, #0x134]
	str r0, [r8, #0x138]
	str r0, [r8, #0x148]
	ldr r1, [sp]
	cmp r1, #0
	ldrne r0, [r8, #0xc]
	addne r0, r0, r5, lsl #2
	ldrne r0, [r0, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FE6E0: .word 0x00006012
_020FE6E4: .word unk_0209A250
	arm_func_end FUN_ov16_020fe584

	arm_func_start FUN_ov16_020fe6e8
FUN_ov16_020fe6e8: ; 0x020FE6E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r2
	mov r5, r1
	mov r6, r0
	mov r1, r4
	mov r2, r3
	bl FUN_ov16_020fe9f4
	add r0, r6, #0x114
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldrh r1, [r4, #4]
	ldr r0, _020FE8A4 ; =0x00003001
	cmp r1, r0
	bne _020FE748
	ldrb r0, [r4, #6]
	add r1, r0, #7
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #8]
	str r0, [r6, #0x144]
_020FE748:
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020fe9e4
	movs r4, r0
	beq _020FE780
	ldr r7, _020FE8A8 ; =0x00006001
_020FE760:
	ldrh r0, [r4, #4]
	cmp r0, r7
	beq _020FE780
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020fe9e4
	movs r4, r0
	bne _020FE760
_020FE780:
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	str r4, [r6, #0xc]
	mov r7, #1
	bl FUN_ov16_020fe9e4
	movs r1, r0
	beq _020FE7D4
	ldr r4, _020FE8AC ; =0x00006002
_020FE7AC:
	ldrh r0, [r1, #4]
	add r7, r7, #1
	cmp r0, r4
	ldreq r0, [r1, #0xc]
	cmpeq r0, #0
	beq _020FE7D4
	mov r0, r6
	bl FUN_ov16_020fe9e4
	movs r1, r0
	bne _020FE7AC
_020FE7D4:
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #8]
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_02049194
	mov r0, #0x2c
	mul r1, r7, r0
	mov r0, r6
	str r7, [r6, #0x138]
	bl FUN_ov16_020fe9c4
	cmp r0, #0
	addeq sp, sp, #8
	str r0, [r6, #0x134]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x138]
	ldr r1, [r6, #0xc]
	cmp r0, #0
	mov r4, #0
	ble _020FE864
	mov r7, #0x2c
_020FE82C:
	mul r12, r4, r7
	ldr r2, [r6, #0x134]
	mov r0, r6
	str r1, [r2, r12]
	ldr r2, [r6, #0x134]
	ldrb r3, [r1, #7]
	add r2, r2, r12
	strb r3, [r2, #9]
	bl FUN_ov16_020fe9e4
	ldr r2, [r6, #0x138]
	add r4, r4, #1
	mov r1, r0
	cmp r4, r2
	blt _020FE82C
_020FE864:
	ldr r2, [r6, #0x134]
	mov r1, #0
	mov r0, #1
	str r5, [r6]
	str r2, [r6, #0x110]
	str r1, [r6, #0x180]
	str r1, [r6, #0x168]
	str r1, [r6, #0x14c]
	str r1, [r6, #0x150]
	str r1, [r6, #0x154]
	str r1, [r6, #0x158]
	str r1, [r6, #0x15c]
	str r0, [r6, #0x148]
	str r1, [r6, #0x164]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE8A4: .word 0x00003001
_020FE8A8: .word 0x00006001
_020FE8AC: .word 0x00006002
	arm_func_end FUN_ov16_020fe6e8

	arm_func_start FUN_ov16_020fe8b0
FUN_ov16_020fe8b0: ; 0x020FE8B0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x134]
	mov r1, #0
	str r1, [r4, #0x148]
	cmp r0, #0
	beq _020FE8EC
	ldr r0, [r4, #8]
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_02049194
	ldr r1, [r4, #0x134]
	mov r0, r4
	bl FUN_ov16_020fe9d4
_020FE8EC:
	mov r1, #0
	ldr r0, [r4, #0x164]
	str r1, [r4, #0x134]
	str r1, [r4, #0x138]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fe8b0

	arm_func_start FUN_ov16_020fe904
FUN_ov16_020fe904: ; 0x020FE904
	ldr r1, [r0, #0x158]
	cmp r1, #0
	moveq r1, #1
	streq r1, [r0, #0x14c]
	bx lr
	arm_func_end FUN_ov16_020fe904

	arm_func_start FUN_ov16_020fe918
FUN_ov16_020fe918: ; 0x020FE918
	ldr r1, [r0, #0x158]
	cmp r1, #0
	moveq r1, #1
	streq r1, [r0, #0x150]
	bx lr
	arm_func_end FUN_ov16_020fe918

	arm_func_start FUN_ov16_020fe92c
FUN_ov16_020fe92c: ; 0x020FE92C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x148]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x138]
	ldr r2, [r4, #0x134]
	sub r3, r1, #1
	mov r5, #0x2c
	mla r2, r3, r5, r2
	ldr r1, _020FE9A0 ; =0x0209A110
	ldr r3, [r4, #0x168]
	ldr r12, [r1]
	ldr r1, [r4, #0x110]
	add r3, r3, r12
	str r12, [r4, #0x178]
	str r3, [r4, #0x168]
	bl FUN_ov16_020fedc8
	ldr r1, [r4, #0x138]
	ldr r2, [r4, #0x134]
	sub r1, r1, #1
	mla r2, r1, r5, r2
	str r0, [r4, #0x110]
	cmp r0, r2
	movhs r0, #0
	strhs r0, [r4, #0x148]
	movlo r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FE9A0: .word unk_0209A110
	arm_func_end FUN_ov16_020fe92c

	arm_func_start FUN_ov16_020fe9a4
FUN_ov16_020fe9a4: ; 0x020FE9A4
	ldr r0, [r0, #0x134]
	bx lr
	arm_func_end FUN_ov16_020fe9a4

	arm_func_start FUN_ov16_020fe9ac
FUN_ov16_020fe9ac: ; 0x020FE9AC
	ldr r0, [r0, #0x138]
	bx lr
	arm_func_end FUN_ov16_020fe9ac

	arm_func_start FUN_ov16_020fe9b4
FUN_ov16_020fe9b4: ; 0x020FE9B4
	str r1, [r0, #0x110]
	bx lr
	arm_func_end FUN_ov16_020fe9b4

	arm_func_start FUN_ov16_020fe9bc
FUN_ov16_020fe9bc: ; 0x020FE9BC
	str r1, [r0, #0x148]
	bx lr
	arm_func_end FUN_ov16_020fe9bc

	arm_func_start FUN_ov16_020fe9c4
FUN_ov16_020fe9c4: ; 0x020FE9C4
	ldr r0, [r0, #4]
	ldr r12, _020FE9D0 ; =FUN_02047c30
	bx r12
_020FE9D0: .word FUN_02047c30
	arm_func_end FUN_ov16_020fe9c4

	arm_func_start FUN_ov16_020fe9d4
FUN_ov16_020fe9d4: ; 0x020FE9D4
	ldr r0, [r0, #4]
	ldr r12, _020FE9E0 ; =FUN_02047c68
	bx r12
_020FE9E0: .word FUN_02047c68
	arm_func_end FUN_ov16_020fe9d4

	arm_func_start FUN_ov16_020fe9e4
FUN_ov16_020fe9e4: ; 0x020FE9E4
	ldr r0, [r0, #8]
	ldr r12, _020FE9F0 ; =SSD_GetNextInstructionWraper
	bx r12
_020FE9F0: .word SSD_GetNextInstructionWraper
	arm_func_end FUN_ov16_020fe9e4

	arm_func_start FUN_ov16_020fe9f4
FUN_ov16_020fe9f4: ; 0x020FE9F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	add r0, r6, #0x10
	mov r1, #0
	mov r2, #0x100
	bl MI_CpuFill8
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r2, [r5, #6]
	mov r3, #2
	add r1, r2, #7
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	cmp r2, #2
	mov r0, r0, asr #3
	ble _020FEA68
	add r1, r5, r0, lsl #2
_020FEA40:
	add r0, r1, r3, lsl #2
	add r2, r4, r3, lsl #2
	ldr r0, [r0, #8]
	ldr r2, [r2, #-8]
	add r0, r6, r0, lsl #2
	str r2, [r0, #0x10]
	ldrb r2, [r5, #6]
	add r3, r3, #1
	cmp r3, r2
	blt _020FEA40
_020FEA68:
	sub r0, r2, #2
	str r0, [r6, #0x160]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fe9f4

	arm_func_start FUN_ov16_020fea74
FUN_ov16_020fea74: ; 0x020FEA74
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldreq r1, [r0, #0x134]
	ldr r12, [r0, #0x134]
	ldr r3, _020FEAFC ; =0xBA2E8BA3
	sub r12, r1, r12
	umull r3, r4, r12, r3
	ldr lr, [r0, #0x138]
	mov r4, r4, lsr #5
	mov r0, r1
	mov r12, r4
	cmp lr, r4
	ble _020FEAC8
_020FEAA8:
	ldr r3, [r0]
	ldrh r3, [r3]
	cmp r3, r2
	ldmeqfd sp!, {r4, pc}
	add r12, r12, #1
	cmp r12, lr
	add r0, r0, #0x2c
	blt _020FEAA8
_020FEAC8:
	cmp r4, #0
	sub r0, r1, #0x2c
	ble _020FEAF4
_020FEAD4:
	ldr r1, [r0]
	ldrh r1, [r1]
	cmp r1, r2
	ldmeqfd sp!, {r4, pc}
	sub r4, r4, #1
	cmp r4, #0
	sub r0, r0, #0x2c
	bgt _020FEAD4
_020FEAF4:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020FEAFC: .word 0xBA2E8BA3
	arm_func_end FUN_ov16_020fea74

	arm_func_start FUN_ov16_020feb00
FUN_ov16_020feb00: ; 0x020FEB00
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldreq r1, [r0, #0x138]
	ldreq r12, [r0, #0x134]
	subeq r3, r1, #1
	moveq r1, #0x2c
	mlaeq r1, r3, r1, r12
	ldr r12, [r0, #0x134]
	ldr r3, _020FEB98 ; =0xBA2E8BA3
	sub r12, r1, r12
	umull r3, lr, r12, r3
	movs lr, lr, lsr #5
	mov r12, r1
	mov r4, lr
	bmi _020FEB5C
_020FEB3C:
	ldr r3, [r12]
	ldrh r3, [r3]
	cmp r3, r2
	moveq r0, r12
	ldmeqfd sp!, {r4, pc}
	sub r12, r12, #0x2c
	subs r4, r4, #1
	bpl _020FEB3C
_020FEB5C:
	ldr r3, [r0, #0x138]
	add r4, lr, #1
	cmp r4, r3
	add r0, r1, #0x2c
	bge _020FEB90
_020FEB70:
	ldr r1, [r0]
	ldrh r1, [r1]
	cmp r1, r2
	ldmeqfd sp!, {r4, pc}
	add r4, r4, #1
	cmp r4, r3
	add r0, r0, #0x2c
	blt _020FEB70
_020FEB90:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020FEB98: .word 0xBA2E8BA3
	arm_func_end FUN_ov16_020feb00

	arm_func_start FUN_ov16_020feb9c
FUN_ov16_020feb9c: ; 0x020FEB9C
	cmp r1, #0
	ldreq r1, [r0, #0x138]
	ldreq r12, [r0, #0x134]
	subeq r3, r1, #1
	moveq r1, #0x2c
	mlaeq r1, r3, r1, r12
	ldr r3, [r0, #0x134]
	ldr r0, _020FEBF4 ; =0xBA2E8BA3
	sub r3, r1, r3
	umull r0, r12, r3, r0
	movs r12, r12, lsr #5
	bmi _020FEBEC
_020FEBCC:
	ldr r0, [r1]
	ldrh r0, [r0, #4]
	cmp r0, r2
	moveq r0, r1
	bxeq lr
	sub r1, r1, #0x2c
	subs r12, r12, #1
	bpl _020FEBCC
_020FEBEC:
	mov r0, #0
	bx lr
_020FEBF4: .word 0xBA2E8BA3
	arm_func_end FUN_ov16_020feb9c

	arm_func_start FUN_ov16_020febf8
FUN_ov16_020febf8: ; 0x020FEBF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	ldr r6, [r10], #0x2c
	mov r9, r0
	ldrb r3, [r6, #6]
	mov r8, r2
	mov r7, #0
	add r1, r3, #7
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	cmp r3, #0
	mov r0, r0, asr #3
	ble _020FED64
	add r5, r6, r0, lsl #2
	add r11, r9, #0x10
_020FEC34:
	mov r0, r7, asr #2
	add r0, r7, r0, lsr #29
	mov r0, r0, asr #3
	add r1, r6, r0, lsl #2
	mov r0, r7, lsl #0x1d
	ldr r1, [r1, #8]
	mov r0, r0, lsr #0x1b
	mov r0, r1, asr r0
	and r0, r0, #0xf
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020FED54
_020FEC64: ; jump table
	b _020FED54 ; case 0
	b _020FEC80 ; case 1
	b _020FEC80 ; case 2
	b _020FEC84 ; case 3
	b _020FEC90 ; case 4
	b _020FECCC ; case 5
	b _020FED14 ; case 6
_020FEC80:
	b _020FEC84
_020FEC84:
	add r0, r5, r7, lsl #2
	ldr r0, [r0, #8]
	b _020FED50
_020FEC90:
	add r0, r5, r7, lsl #2
	ldr r2, [r0, #8]
	mov r0, r9
	mov r1, r10
	bl FUN_ov16_020fea74
	mov r4, r0
	mov r0, r9
	mov r1, r4
	add r2, sp, #0
	bl FUN_ov16_020feeb8
	ldr r10, [r4, #4]
	ldr r0, [sp]
	cmp r10, #0
	addeq r10, r4, #0x2c
	b _020FED50
_020FECCC:
	add r0, r5, r7, lsl #2
	ldr r2, [r0, #8]
	mov r0, r2, lsl #0x10
	tst r2, #0x10000
	mov r1, r0, lsr #0x10
	beq _020FECF4
	ldr r0, [r9, #4]
	bl FUN_02047e20
_020FECEC:
	ldr r0, [r0]
	b _020FED50
_020FECF4:
	tst r2, #0x20000
	addeq r0, r9, r1, lsl #2
	ldreq r0, [r0, #0x10]
	streq r0, [r8, r7, lsl #2]
	beq _020FED54
	ldr r0, [r9, #8]
	bl FUN_020493dc
	b _020FECEC
_020FED14:
	add r0, r5, r7, lsl #2
	ldr r2, [r0, #8]
	mov r0, r2, lsl #0x10
	tst r2, #0x10000
	mov r1, r0, lsr #0x10
	beq _020FED38
	ldr r0, [r9, #4]
	bl FUN_02047e20
	b _020FED50
_020FED38:
	tst r2, #0x20000
	addeq r0, r11, r1, lsl #2
	streq r0, [r8, r7, lsl #2]
	beq _020FED54
	ldr r0, [r9, #8]
	bl FUN_020493dc
_020FED50:
	str r0, [r8, r7, lsl #2]
_020FED54:
	ldrb r0, [r6, #6]
	add r7, r7, #1
	cmp r7, r0
	blt _020FEC34
_020FED64:
	mov r0, r10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020febf8

	arm_func_start FUN_ov16_020fed6c
FUN_ov16_020fed6c: ; 0x020FED6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r1, r4
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClearFast
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fed6c

	arm_func_start FUN_ov16_020feda4
FUN_ov16_020feda4: ; 0x020FEDA4
	ldr r2, [r1, #0xc]
	ldr r2, [r2, #0xc]
	str r2, [r0, #0x17c]
	add r2, r0, r2, lsl #2
	str r1, [r2, #0x114]
	ldr r1, [r0, #0x17c]
	add r1, r1, #1
	str r1, [r0, #0x17c]
	bx lr
	arm_func_end FUN_ov16_020feda4

	arm_func_start FUN_ov16_020fedc8
FUN_ov16_020fedc8: ; 0x020FEDC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r8, r1
	mov r7, r2
	mov r9, r0
	mov r6, r8
	cmp r8, r7
	bhs _020FEE8C
	ldr r10, _020FEEB4 ; =0x00003003
	mov r5, #1
	add r4, sp, #0
_020FEDF4:
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	beq _020FEE14
	ldr r0, [r6, #4]
	cmp r0, #0
	movne r6, r0
	addeq r6, r6, #0x2c
	b _020FEE84
_020FEE14:
	ldr r0, [r9, #0x150]
	cmp r0, #0
	beq _020FEE3C
	ldr r0, [r6]
	ldrh r1, [r0, #4]
	mov r0, r1, asr #0xc
	cmp r0, #3
	bne _020FEE3C
	cmp r1, r10
	strneb r5, [r6, #0xa]
_020FEE3C:
	mov r0, r9
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020feeb8
	ldr r1, [r6, #4]
	cmp r1, r8
	bhs _020FEE60
	cmp r1, #0
	movne r8, r1
_020FEE60:
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	bne _020FEE78
	ldrsb r0, [r6, #9]
	cmp r0, #0
	bne _020FEE8C
_020FEE78:
	mov r6, r1
	cmp r1, #0
	beq _020FEE8C
_020FEE84:
	cmp r6, r7
	blo _020FEDF4
_020FEE8C:
	ldrsb r0, [r8, #0xa]
	cmp r0, #0
	beq _020FEEA8
_020FEE98:
	add r8, r8, #0x2c
	ldrsb r0, [r8, #0xa]
	cmp r0, #0
	bne _020FEE98
_020FEEA8:
	mov r0, r8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020FEEB4: .word 0x00003003
	arm_func_end FUN_ov16_020fedc8

	arm_func_start FUN_ov16_020feeb8
FUN_ov16_020feeb8: ; 0x020FEEB8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, [r1]
	mov r4, r2
	ldrh r2, [r3, #4]
	mov r2, r2, asr #0xc
	cmp r2, #7
	addls pc, pc, r2, lsl #2
	b _020FEF38
_020FEEDC: ; jump table
	b _020FEF38 ; case 0
	b _020FEEFC ; case 1
	b _020FEEFC ; case 2
	b _020FEF08 ; case 3
	b _020FEF14 ; case 4
	b _020FEF38 ; case 5
	b _020FEF20 ; case 6
	b _020FEF2C ; case 7
_020FEEFC:
	add r2, sp, #0
	bl FUN_ov16_020ffab4
	b _020FEF40
_020FEF08:
	add r2, sp, #0
	bl FUN_ov16_020ff0c8
	b _020FEF40
_020FEF14:
	add r2, sp, #0
	bl FUN_ov16_020ff59c
	b _020FEF40
_020FEF20:
	add r2, sp, #0
	bl FUN_ov16_020fef54
	b _020FEF40
_020FEF2C:
	add r2, sp, #0
	bl FUN_ov16_020ff884
	b _020FEF40
_020FEF38:
	add r2, sp, #0
	bl FUN_ov16_020ff9f8
_020FEF40:
	cmp r4, #0
	ldrne r1, [sp]
	strne r1, [r4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_020feeb8

	arm_func_start FUN_ov16_020fef54
FUN_ov16_020fef54: ; 0x020FEF54
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, [r1]
	ldr r3, _020FF0C0 ; =0x00006014
	ldrh r12, [r4, #4]
	mov r4, r2
	cmp r12, r3
	bgt _020FEFD4
	sub r2, r3, #0x13
	subs r2, r12, r2
	addpl pc, pc, r2, lsl #2
	b _020FF0A4
_020FEF84: ; jump table
	b _020FEFE4 ; case 0
	b _020FEFF0 ; case 1
	b _020FF0A4 ; case 2
	b _020FF0A4 ; case 3
	b _020FF0A4 ; case 4
	b _020FF0A4 ; case 5
	b _020FF0A4 ; case 6
	b _020FEFFC ; case 7
	b _020FF008 ; case 8
	b _020FF014 ; case 9
	b _020FF020 ; case 10
	b _020FF02C ; case 11
	b _020FF050 ; case 12
	b _020FF038 ; case 13
	b _020FF044 ; case 14
	b _020FF05C ; case 15
	b _020FF068 ; case 16
	b _020FF074 ; case 17
	b _020FF080 ; case 18
	b _020FF08C ; case 19
_020FEFD4:
	ldr r2, _020FF0C4 ; =0x00006FFF
	cmp r12, r2
	beq _020FF098
	b _020FF0A4
_020FEFE4:
	add r2, sp, #0
	bl FUN_ov16_020fff8c
	b _020FF0AC
_020FEFF0:
	add r2, sp, #0
	bl FUN_ov16_0210001c
	b _020FF0AC
_020FEFFC:
	add r2, sp, #0
	bl FUN_ov16_021001c8
	b _020FF0AC
_020FF008:
	add r2, sp, #0
	bl FUN_ov16_021003fc
	b _020FF0AC
_020FF014:
	add r2, sp, #0
	bl FUN_ov16_02100514
	b _020FF0AC
_020FF020:
	add r2, sp, #0
	bl FUN_ov16_021006a4
	b _020FF0AC
_020FF02C:
	add r2, sp, #0
	bl FUN_ov16_021002b0
	b _020FF0AC
_020FF038:
	add r2, sp, #0
	bl FUN_ov16_02100850
	b _020FF0AC
_020FF044:
	add r2, sp, #0
	bl FUN_ov16_021009a4
	b _020FF0AC
_020FF050:
	add r2, sp, #0
	bl FUN_ov16_02100aa4
	b _020FF0AC
_020FF05C:
	add r2, sp, #0
	bl FUN_ov16_02100c3c
	b _020FF0AC
_020FF068:
	add r2, sp, #0
	bl FUN_ov16_02100bc0
	b _020FF0AC
_020FF074:
	add r2, sp, #0
	bl FUN_ov16_02100144
	b _020FF0AC
_020FF080:
	add r2, sp, #0
	bl FUN_ov16_02100ce4
	b _020FF0AC
_020FF08C:
	add r2, sp, #0
	bl FUN_ov16_02100e88
	b _020FF0AC
_020FF098:
	add r2, sp, #0
	bl FUN_ov16_02101010
	b _020FF0AC
_020FF0A4:
	add r2, sp, #0
	bl FUN_ov16_020ff9f8
_020FF0AC:
	cmp r4, #0
	ldrne r1, [sp]
	strne r1, [r4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FF0C0: .word 0x00006014
_020FF0C4: .word 0x00006FFF
	arm_func_end FUN_ov16_020fef54

	arm_func_start FUN_ov16_020ff0c8
FUN_ov16_020ff0c8: ; 0x020FF0C8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x9c
	sub sp, sp, #0x800
	mov r3, #1
	mov r12, r1
	str r3, [sp, #0x10]
	ldr r4, [r12]
	ldr r5, _020FF588 ; =0x000030F0
	ldrh r6, [r4, #4]
	mov lr, r0
	mov r4, r2
	cmp r6, r5
	beq _020FF10C
	add r2, r5, #1
	cmp r6, r2
	beq _020FF12C
	b _020FF150
_020FF10C:
	add r2, sp, #0x10
	bl FUN_ov16_02108a14
	cmp r4, #0
	ldrne r1, [sp, #0x10]
	add sp, sp, #0x9c
	add sp, sp, #0x800
	strne r1, [r4]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020FF12C:
	add r2, sp, #0x10
	mov r3, #0
	bl FUN_ov16_02108a14
	cmp r4, #0
	ldrne r1, [sp, #0x10]
	add sp, sp, #0x9c
	add sp, sp, #0x800
	strne r1, [r4]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020FF150:
	ldr r7, _020FF58C ; =0x02118A3C
	add r6, sp, #0x14
	mov r5, #0x88
_020FF15C:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020FF15C
	ldmia r7, {r0, r1}
	stmia r6, {r0, r1}
	ldr r2, _020FF590 ; =0x0208BFB0
	ldr r0, _020FF594 ; =0x00003FFF
	ldr r3, [r2, #4]
	ldr r2, [r2]
	str r3, [sp, #0x18]
	str r2, [sp, #0x14]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	str r2, [sp, #0x144]
	str r3, [sp, #0x148]
	str r2, [sp, #0x184]
	str r3, [sp, #0x188]
	str r2, [sp, #0x1d4]
	str r3, [sp, #0x1d8]
	str r2, [sp, #0x22c]
	str r3, [sp, #0x230]
	str r2, [sp, #0x484]
	str r3, [sp, #0x488]
	str r2, [sp, #0x48c]
	str r3, [sp, #0x490]
	str r2, [sp, #0x494]
	str r3, [sp, #0x498]
	str r2, [sp, #0x524]
	str r3, [sp, #0x528]
	str r2, [sp, #0x52c]
	str r3, [sp, #0x530]
	str r2, [sp, #0x534]
	str r3, [sp, #0x538]
	str r2, [sp, #0x53c]
	str r3, [sp, #0x540]
	str r2, [sp, #0x544]
	str r3, [sp, #0x548]
	str r2, [sp, #0x54c]
	str r3, [sp, #0x550]
	str r2, [sp, #0x554]
	str r3, [sp, #0x558]
	str r2, [sp, #0x55c]
	str r3, [sp, #0x560]
	str r2, [sp, #0x564]
	str r3, [sp, #0x568]
	str r2, [sp, #0x56c]
	str r3, [sp, #0x570]
	str r2, [sp, #0x574]
	str r3, [sp, #0x578]
	str r2, [sp, #0x57c]
	str r3, [sp, #0x580]
	str r2, [sp, #0x584]
	str r3, [sp, #0x588]
	str r2, [sp, #0x58c]
	str r3, [sp, #0x590]
	str r2, [sp, #0x594]
	str r3, [sp, #0x598]
	str r2, [sp, #0x59c]
	str r3, [sp, #0x5a0]
	str r2, [sp, #0x5a4]
	str r3, [sp, #0x5a8]
	str r2, [sp, #0x5ac]
	str r3, [sp, #0x5b0]
	str r2, [sp, #0x5b4]
	str r3, [sp, #0x5b8]
	str r2, [sp, #0x5bc]
	str r3, [sp, #0x5c0]
	str r2, [sp, #0x5c4]
	str r3, [sp, #0x5c8]
	str r2, [sp, #0x5cc]
	str r3, [sp, #0x5d0]
	str r2, [sp, #0x5d4]
	str r3, [sp, #0x5d8]
	str r2, [sp, #0x5dc]
	str r3, [sp, #0x5e0]
	str r2, [sp, #0x5e4]
	str r3, [sp, #0x5e8]
	str r2, [sp, #0x5ec]
	str r3, [sp, #0x5f0]
	str r2, [sp, #0x5f4]
	str r3, [sp, #0x5f8]
	str r2, [sp, #0x5fc]
	str r3, [sp, #0x600]
	str r2, [sp, #0x604]
	str r3, [sp, #0x608]
	str r2, [sp, #0x60c]
	str r3, [sp, #0x610]
	str r2, [sp, #0x614]
	str r3, [sp, #0x618]
	str r2, [sp, #0x61c]
	str r3, [sp, #0x620]
	str r2, [sp, #0x624]
	str r3, [sp, #0x628]
	str r2, [sp, #0x62c]
	str r3, [sp, #0x630]
	str r2, [sp, #0x634]
	str r3, [sp, #0x638]
	str r2, [sp, #0x63c]
	str r3, [sp, #0x640]
	str r2, [sp, #0x644]
	str r3, [sp, #0x648]
	str r2, [sp, #0x64c]
	str r3, [sp, #0x650]
	str r2, [sp, #0x654]
	str r3, [sp, #0x658]
	str r2, [sp, #0x65c]
	str r3, [sp, #0x660]
	str r2, [sp, #0x664]
	str r3, [sp, #0x668]
	str r2, [sp, #0x66c]
	str r3, [sp, #0x670]
	str r2, [sp, #0x674]
	str r3, [sp, #0x678]
	str r2, [sp, #0x67c]
	str r3, [sp, #0x680]
	str r2, [sp, #0x684]
	str r3, [sp, #0x688]
	str r2, [sp, #0x68c]
	str r3, [sp, #0x690]
	str r2, [sp, #0x694]
	str r3, [sp, #0x698]
	str r2, [sp, #0x69c]
	str r3, [sp, #0x6a0]
	str r2, [sp, #0x6a4]
	str r3, [sp, #0x6a8]
	str r2, [sp, #0x6ac]
	str r3, [sp, #0x6b0]
	str r2, [sp, #0x6b4]
	str r3, [sp, #0x6b8]
	str r2, [sp, #0x6bc]
	str r3, [sp, #0x6c0]
	str r2, [sp, #0x6c4]
	str r3, [sp, #0x6c8]
	str r2, [sp, #0x6cc]
	str r3, [sp, #0x6d0]
	str r2, [sp, #0x6d4]
	str r3, [sp, #0x6d8]
	str r2, [sp, #0x6dc]
	str r3, [sp, #0x6e0]
	str r2, [sp, #0x6e4]
	str r3, [sp, #0x6e8]
	str r2, [sp, #0x6ec]
	str r3, [sp, #0x6f0]
	str r2, [sp, #0x6f4]
	str r3, [sp, #0x6f8]
	str r2, [sp, #0x6fc]
	str r3, [sp, #0x700]
	str r2, [sp, #0x704]
	str r3, [sp, #0x708]
	str r2, [sp, #0x70c]
	str r3, [sp, #0x710]
	str r2, [sp, #0x714]
	str r3, [sp, #0x718]
	str r2, [sp, #0x71c]
	str r3, [sp, #0x720]
	str r2, [sp, #0x724]
	str r3, [sp, #0x728]
	str r2, [sp, #0x72c]
	str r3, [sp, #0x730]
	str r2, [sp, #0x734]
	str r3, [sp, #0x738]
	str r2, [sp, #0x73c]
	str r3, [sp, #0x740]
	str r2, [sp, #0x744]
	str r3, [sp, #0x748]
	str r2, [sp, #0x74c]
	str r3, [sp, #0x750]
	str r2, [sp, #0x754]
	str r3, [sp, #0x758]
	str r2, [sp, #0x75c]
	str r3, [sp, #0x760]
	str r2, [sp, #0x764]
	str r3, [sp, #0x768]
	str r2, [sp, #0x76c]
	str r3, [sp, #0x770]
	str r2, [sp, #0x774]
	str r3, [sp, #0x778]
	str r2, [sp, #0x77c]
	str r3, [sp, #0x780]
	str r2, [sp, #0x784]
	str r3, [sp, #0x788]
	str r2, [sp, #0x78c]
	str r3, [sp, #0x790]
	str r2, [sp, #0x794]
	str r3, [sp, #0x798]
	str r2, [sp, #0x79c]
	str r3, [sp, #0x7a0]
	str r2, [sp, #0x7a4]
	str r3, [sp, #0x7a8]
	str r2, [sp, #0x7ac]
	str r3, [sp, #0x7b0]
	str r2, [sp, #0x7b4]
	str r3, [sp, #0x7b8]
	str r2, [sp, #0x7bc]
	str r3, [sp, #0x7c0]
	str r2, [sp, #0x7c4]
	str r3, [sp, #0x7c8]
	str r2, [sp, #0x7cc]
	str r3, [sp, #0x7d0]
	str r2, [sp, #0x7d4]
	str r3, [sp, #0x7d8]
	str r2, [sp, #0x7dc]
	str r3, [sp, #0x7e0]
	ldr r1, [r12]
	str r2, [sp]
	ldrh r1, [r1, #4]
	str r2, [sp, #8]
	str r3, [sp, #4]
	str r3, [sp, #0xc]
	cmp r1, r0
	add r2, sp, #0x14
	bne _020FF4D8
	add r2, sp, #0x10
	mov r0, lr
	mov r1, r12
	bl FUN_ov16_021068e8
	cmp r4, #0
	ldrne r1, [sp, #0x10]
	add sp, sp, #0x9c
	add sp, sp, #0x800
	strne r1, [r4]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020FF4D8:
	sub r0, r0, #0x7000
	adds r1, r1, r0
	bmi _020FF500
	ldr r0, _020FF598 ; =0x00000222
	cmp r1, r0
	addlo r0, r2, r1, lsl #3
	ldrlo r1, [r0]
	ldrlo r0, [r0, #4]
	strlo r1, [sp, #8]
	strlo r0, [sp, #0xc]
_020FF500:
	ldr r2, _020FF590 ; =0x0208BFB0
	ldr r1, [sp, #8]
	ldr r0, [r2]
	mov r3, #1
	cmp r1, r0
	add r0, sp, #8
	ldreq r1, [r0, #4]
	ldreq r0, [r2, #4]
	cmpeq r1, r0
	moveq r3, #0
	cmp r3, #0
	beq _020FF560
	add r1, sp, #8
	ldr r0, [r1, #4]
	tst r0, #1
	add r0, lr, r0, asr #1
	ldrne r2, [r0]
	ldrne r1, [r1]
	ldrne r3, [r2, r1]
	add r2, sp, #0x10
	ldreq r3, [r1]
	mov r1, r12
	blx r3
	b _020FF570
_020FF560:
	add r2, sp, #0x10
	mov r0, lr
	mov r1, r12
	bl FUN_ov16_0210c820
_020FF570:
	cmp r4, #0
	ldrne r1, [sp, #0x10]
	strne r1, [r4]
	add sp, sp, #0x9c
	add sp, sp, #0x800
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020FF588: .word 0x000030F0
_020FF58C: .word ov16_02118A3C
_020FF590: .word unk_0208BFB0
_020FF594: .word 0x00003FFF
_020FF598: .word 0x00000222
	arm_func_end FUN_ov16_020ff0c8

	arm_func_start FUN_ov16_020ff59c
FUN_ov16_020ff59c: ; 0x020FF59C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2ac
	sub sp, sp, #0x800
	mov r4, #1
	ldr r8, _020FF874 ; =0x021192C4
	add lr, sp, #0x144
	mov r7, r0
	mov r6, r1
	mov r5, r2
	str r4, [sp, #0x10]
	mov r12, #0x96
_020FF5C8:
	ldmia r8!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _020FF5C8
	ldr r2, _020FF878 ; =0x0208BFB0
	ldmia r8, {r0, r1}
	stmia lr, {r0, r1}
	ldr r1, [r2, #4]
	ldr r2, [r2]
	ldr r12, _020FF87C ; =0x021179BC
	add r0, sp, #0x14
	str r2, [sp]
	str r1, [sp, #4]
	str r2, [sp, #0x144]
	str r1, [sp, #0x148]
	str r2, [sp, #0x25c]
	str r1, [sp, #0x260]
	str r2, [sp, #0x384]
	str r1, [sp, #0x388]
	str r2, [sp, #0x39c]
	str r1, [sp, #0x3a0]
	str r2, [sp, #0x3a4]
	str r1, [sp, #0x3a8]
	str r2, [sp, #0x3b4]
	str r1, [sp, #0x3b8]
	str r2, [sp, #0x444]
	str r1, [sp, #0x448]
	str r2, [sp, #0x44c]
	str r1, [sp, #0x450]
	str r2, [sp, #0x4ec]
	str r1, [sp, #0x4f0]
	str r2, [sp, #0x4fc]
	str r1, [sp, #0x500]
	str r2, [sp, #0x544]
	str r1, [sp, #0x548]
	str r2, [sp, #0x54c]
	str r1, [sp, #0x550]
	str r2, [sp, #0x554]
	str r1, [sp, #0x558]
	str r2, [sp, #0x5a4]
	str r1, [sp, #0x5a8]
	str r2, [sp, #0x614]
	str r1, [sp, #0x618]
	str r2, [sp, #0x62c]
	str r1, [sp, #0x630]
	str r2, [sp, #0x63c]
	str r1, [sp, #0x640]
	str r2, [sp, #0x644]
	str r1, [sp, #0x648]
	str r2, [sp, #0x64c]
	str r1, [sp, #0x650]
	str r2, [sp, #0x66c]
	str r1, [sp, #0x670]
	str r2, [sp, #0x684]
	str r1, [sp, #0x688]
	str r2, [sp, #0x68c]
	str r1, [sp, #0x690]
	str r2, [sp, #0x694]
	str r1, [sp, #0x698]
	str r2, [sp, #0x6bc]
	str r1, [sp, #0x6c0]
	str r2, [sp, #0x6c4]
	str r1, [sp, #0x6c8]
	str r2, [sp, #0x704]
	str r1, [sp, #0x708]
	str r2, [sp, #0x70c]
	str r1, [sp, #0x710]
	str r2, [sp, #0x75c]
	str r1, [sp, #0x760]
	str r2, [sp, #0x764]
	str r1, [sp, #0x768]
	str r2, [sp, #0x76c]
	str r1, [sp, #0x770]
	str r2, [sp, #0x774]
	str r1, [sp, #0x778]
	str r2, [sp, #0x7ec]
	str r1, [sp, #0x7f0]
	str r2, [sp, #0x82c]
	str r1, [sp, #0x830]
	str r2, [sp, #0x974]
	str r1, [sp, #0x978]
	str r2, [sp, #0x98c]
	str r1, [sp, #0x990]
	str r2, [sp, #0x994]
	str r1, [sp, #0x998]
	str r2, [sp, #0x99c]
	str r1, [sp, #0x9a0]
	mov r3, #0x96
_020FF728:
	ldrb r1, [r12, #1]
	ldrb r2, [r12], #2
	subs r3, r3, #1
	strb r1, [r0, #1]
	strb r2, [r0], #2
	bne _020FF728
	ldr r1, [r6]
	ldrb lr, [r12]
	ldrh r2, [r1, #4]
	ldr r12, [sp]
	ldr r3, [sp, #4]
	mvn r1, #0x4000
	strb lr, [r0]
	str r12, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r2, r1
	bmi _020FF790
	ldr r1, _020FF880 ; =0x0000025A
	cmp r0, r1
	bhs _020FF790
	add r2, sp, #0x144
	add r1, r2, r0, lsl #3
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
_020FF790:
	ldr r3, _020FF878 ; =0x0208BFB0
	ldr r2, [sp, #8]
	ldr r1, [r3]
	mov r8, #1
	cmp r2, r1
	add r1, sp, #8
	ldreq r2, [r1, #4]
	ldreq r1, [r3, #4]
	cmpeq r2, r1
	moveq r8, #0
	cmp r8, #0
	beq _020FF844
	add r1, sp, #0x14
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _020FF7E4
	cmp r0, #2
	beq _020FF828
	cmp r0, #3
	beq _020FF858
	b _020FF840
_020FF7E4:
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020ffa88
	cmp r0, #0
	beq _020FF858
_020FF7F8:
	add r1, sp, #8
	ldr r0, [r1, #4]
	tst r0, #1
	add r0, r7, r0, asr #1
	ldrne r2, [r0]
	ldrne r1, [r1]
	ldrne r3, [r2, r1]
	add r2, sp, #0x10
	ldreq r3, [r1]
	mov r1, r6
	blx r3
	b _020FF854
_020FF828:
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020ffa5c
	cmp r0, #0
	beq _020FF858
	b _020FF7F8
_020FF840:
	b _020FF7F8
_020FF844:
	add r2, sp, #0x10
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_0210c970
_020FF854:
	mov r4, r0
_020FF858:
	cmp r5, #0
	ldrne r0, [sp, #0x10]
	strne r0, [r5]
	mov r0, r4
	add sp, sp, #0x2ac
	add sp, sp, #0x800
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020FF874: .word ov16_021192C4
_020FF878: .word unk_0208BFB0
_020FF87C: .word 0x021179BC
_020FF880: .word 0x0000025A
	arm_func_end FUN_ov16_020ff59c

	arm_func_start FUN_ov16_020ff884
FUN_ov16_020ff884: ; 0x020FF884
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, [r1]
	mov r4, r2
	ldrh r2, [r3, #4]
	sub r2, r2, #1
	sub r2, r2, #0x7000
	cmp r2, #0x12
	addls pc, pc, r2, lsl #2
	b _020FF9DC
_020FF8AC: ; jump table
	b _020FF8F8 ; case 0
	b _020FF904 ; case 1
	b _020FF910 ; case 2
	b _020FF91C ; case 3
	b _020FF928 ; case 4
	b _020FF934 ; case 5
	b _020FF940 ; case 6
	b _020FF94C ; case 7
	b _020FF958 ; case 8
	b _020FF964 ; case 9
	b _020FF970 ; case 10
	b _020FF97C ; case 11
	b _020FF988 ; case 12
	b _020FF994 ; case 13
	b _020FF9A0 ; case 14
	b _020FF9AC ; case 15
	b _020FF9B8 ; case 16
	b _020FF9C4 ; case 17
	b _020FF9D0 ; case 18
_020FF8F8:
	add r2, sp, #0
	bl FUN_ov16_0210be48
	b _020FF9E4
_020FF904:
	add r2, sp, #0
	bl FUN_ov16_0210c500
	b _020FF9E4
_020FF910:
	add r2, sp, #0
	bl FUN_ov16_0210becc
	b _020FF9E4
_020FF91C:
	add r2, sp, #0
	bl FUN_ov16_0210bf48
	b _020FF9E4
_020FF928:
	add r2, sp, #0
	bl FUN_ov16_0210bfc4
	b _020FF9E4
_020FF934:
	add r2, sp, #0
	bl FUN_ov16_0210c040
	b _020FF9E4
_020FF940:
	add r2, sp, #0
	bl FUN_ov16_0210c0bc
	b _020FF9E4
_020FF94C:
	add r2, sp, #0
	bl FUN_ov16_0210c138
	b _020FF9E4
_020FF958:
	add r2, sp, #0
	bl FUN_ov16_0210c1b4
	b _020FF9E4
_020FF964:
	add r2, sp, #0
	bl FUN_ov16_0210c224
	b _020FF9E4
_020FF970:
	add r2, sp, #0
	bl FUN_ov16_0210c294
	b _020FF9E4
_020FF97C:
	add r2, sp, #0
	bl FUN_ov16_0210c304
	b _020FF9E4
_020FF988:
	add r2, sp, #0
	bl FUN_ov16_0210c374
	b _020FF9E4
_020FF994:
	add r2, sp, #0
	bl FUN_ov16_0210c470
	b _020FF9E4
_020FF9A0:
	add r2, sp, #0
	bl FUN_ov16_0210c3e4
	b _020FF9E4
_020FF9AC:
	add r2, sp, #0
	bl FUN_ov16_0210c574
	b _020FF9E4
_020FF9B8:
	add r2, sp, #0
	bl FUN_ov16_0210c5f4
	b _020FF9E4
_020FF9C4:
	add r2, sp, #0
	bl FUN_ov16_0210c670
	b _020FF9E4
_020FF9D0:
	add r2, sp, #0
	bl FUN_ov16_0210c6dc
	b _020FF9E4
_020FF9DC:
	add r2, sp, #0
	bl FUN_ov16_020ff9f8
_020FF9E4:
	cmp r4, #0
	ldrne r1, [sp]
	strne r1, [r4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_020ff884

	arm_func_start FUN_ov16_020ff9f8
FUN_ov16_020ff9f8: ; 0x020FF9F8
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
	bl FUN_ov16_020febf8
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
	arm_func_end FUN_ov16_020ff9f8

	arm_func_start FUN_ov16_020ffa5c
FUN_ov16_020ffa5c: ; 0x020FFA5C
	ldr r0, _020FFA84 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	ldreqsb r2, [r1, #0xb]
	mov r0, #1
	streqb r0, [r1, #0xa]
	addeq r0, r2, #1
	streqb r0, [r1, #0xb]
	moveq r0, #0
	bx lr
_020FFA84: .word unk_02099EF0
	arm_func_end FUN_ov16_020ffa5c

	arm_func_start FUN_ov16_020ffa88
FUN_ov16_020ffa88: ; 0x020FFA88
	ldr r0, _020FFAB0 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	ldreqsb r2, [r1, #0xb]
	mov r0, #1
	streqb r0, [r1, #0xa]
	addeq r0, r2, #1
	streqb r0, [r1, #0xb]
	moveq r0, #0
	bx lr
_020FFAB0: .word unk_02099F44
	arm_func_end FUN_ov16_020ffa88

	arm_func_start FUN_ov16_020ffab4
FUN_ov16_020ffab4: ; 0x020FFAB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x84
	mov r6, r1
	ldrsb r3, [r6, #0xb]
	mov r7, r0
	mov r5, r2
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _020FFBC0
_020FFAD8: ; jump table
	b _020FFAE8 ; case 0
	b _020FFB48 ; case 1
	b _020FFB68 ; case 2
	b _020FFB98 ; case 3
_020FFAE8:
	add r8, sp, #4
	mov r2, r8
	bl FUN_ov16_020fed6c
	str r8, [sp]
	ldr r0, [r6]
	mov r9, #0
	ldrh r3, [r0, #4]
	ldr r0, [r7, #4]
	ldr r2, [r7, #0x140]
	mov r1, r9
	bl FUN_02048674
	movs r8, r0
	moveq r0, #1
	streqb r0, [r6, #0xa]
	beq _020FFBC0
	ldr r0, [r7, #4]
	ldr r2, [r7, #0x140]
	sub r1, r9, #1
	bl FUN_020485d0
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #0x10]
	str r8, [r6, #0xc]
	add r0, r1, #1
	strb r0, [r6, #0xb]
_020FFB48:
	ldr r0, [r6, #0x10]
	ldr r1, [r7]
	ldr r2, [r6, #0xc]
	add r3, sp, #4
	bl FUN_ov16_020fe6e8
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_020FFB68:
	ldr r0, [r7, #0x150]
	cmp r0, #0
	beq _020FFB7C
	ldr r0, [r6, #0x10]
	bl FUN_ov16_020fe918
_020FFB7C:
	ldr r0, [r6, #0x10]
	bl FUN_ov16_020fe92c
	cmp r0, #0
	bne _020FFBC0
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_020FFB98:
	ldr r0, [r6, #0x10]
	bl FUN_ov16_020fe8b0
	mov r4, r0
	ldr r0, [r6, #0x10]
	bl FUN_ov16_020fe56c
	ldrsb r1, [r6, #0xb]
	mov r0, #1
	strb r0, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
_020FFBC0:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020ffab4

	arm_func_start FUN_ov16_020ffbd4
FUN_ov16_020ffbd4: ; 0x020FFBD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x84
	add r5, sp, #4
	mov r9, r0
	mov r7, r2
	mov r4, #0
	mov r8, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r8, #0xb]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020FFD80
_020FFC10: ; jump table
	b _020FFC24 ; case 0
	b _020FFC7C ; case 1
	b _020FFCFC ; case 2
	b _020FFD1C ; case 3
	b _020FFD4C ; case 4
_020FFC24:
	mov r0, r9
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020febf8
	str r0, [r8, #4]
	mov r5, #1
	str r5, [sp]
	ldr r0, [r9, #4]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, #0xb
	bl FUN_02047f8c
	cmp r0, #0
	strltb r5, [r8, #0xa]
	blt _020FFD80
	ldrsb r1, [r8, #0xb]
	str r0, [r8, #0x18]
	ldr r2, [sp, #0xc]
	add r0, r1, #1
	str r2, [r8, #0x1c]
	str r4, [r8, #0xc]
	strb r0, [r8, #0xb]
_020FFC7C:
	ldr r0, [r9, #4]
	ldr r1, [r8, #0x18]
	bl FUN_02048178
	cmp r0, #0
	beq _020FFD80
	add r2, sp, #4
	mov r0, r9
	mov r1, r8
	bl FUN_ov16_020febf8
	ldr r1, [r8, #0xc]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r9, #4]
	ldr r2, [r8, #0x18]
	ldr r3, [sp, #0xc]
	bl FUN_02048674
	movs r4, r0
	ldr r0, [r9, #4]
	bne _020FFCDC
	ldr r1, [r8, #0x18]
	bl FUN_02048288
	mov r0, #1
	strb r0, [r8, #0xa]
	b _020FFD80
_020FFCDC:
	ldr r2, [r8, #0x18]
	mvn r1, #0
	bl FUN_020485d0
	ldrsb r1, [r8, #0xb]
	str r0, [r8, #0x10]
	str r4, [r8, #0xc]
	add r0, r1, #1
	strb r0, [r8, #0xb]
_020FFCFC:
	ldr r0, [r8, #0x10]
	ldr r1, [r9]
	ldr r2, [r8, #0xc]
	add r3, sp, #0x10
	bl FUN_ov16_020fe6e8
	ldrsb r0, [r8, #0xb]
	add r0, r0, #1
	strb r0, [r8, #0xb]
_020FFD1C:
	ldr r0, [r9, #0x150]
	cmp r0, #0
	beq _020FFD30
	ldr r0, [r8, #0x10]
	bl FUN_ov16_020fe918
_020FFD30:
	ldr r0, [r8, #0x10]
	bl FUN_ov16_020fe92c
	cmp r0, #0
	ldreqsb r0, [r8, #0xb]
	addeq r0, r0, #1
	streqb r0, [r8, #0xb]
	b _020FFD80
_020FFD4C:
	ldr r0, [r8, #0x10]
	bl FUN_ov16_020fe8b0
	mov r6, r0
	ldr r0, [r8, #0x10]
	bl FUN_ov16_020fe56c
	ldr r0, [r9, #4]
	ldr r1, [r8, #0x18]
	bl FUN_02048288
	ldrsb r1, [r8, #0xb]
	mov r0, #1
	strb r0, [r8, #0xa]
	add r0, r1, #1
	strb r0, [r8, #0xb]
_020FFD80:
	cmp r7, #0
	strne r6, [r7]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020ffbd4

	arm_func_start FUN_ov16_020ffd94
FUN_ov16_020ffd94: ; 0x020FFD94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x8c
	add r10, sp, #0xc
	mov r9, r0
	mov r6, #0
	mov r8, r1
	mov r5, #0x80
	mov r7, r2
	mov r0, r10
	mov r1, r6
	mov r2, r5
	mov r4, #1
	bl MI_CpuFill8
	mov r0, r9
	mov r2, r10
	mov r1, r8
	bl FUN_ov16_020febf8
	str r0, [r8, #4]
	ldrsb r0, [r8, #0xb]
	ldr r1, [sp, #0xc]
	sub r1, r1, #0xd
	cmp r0, #0
	beq _020FFE00
	cmp r0, #1
	mov r10, r4
	beq _020FFE70
	b _020FFF1C
_020FFE00:
	ldr r0, [r9, #4]
	ldr r3, [sp, #0x14]
	mov r2, r8
	bl FUN_02048b4c
	movs r5, r0
	ldreqsb r0, [r8, #0xb]
	streqb r4, [r8, #0xa]
	addeq r0, r0, #1
	streqb r0, [r8, #0xb]
	beq _020FFE64
	str r4, [sp]
	ldr r0, [r9, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r2, r4
	bl FUN_02047f8c
	str r0, [r5, #0x18]
	cmp r0, #0
	ldrltsb r0, [r8, #0xb]
	strltb r4, [r8, #0xa]
	addlt r0, r0, #1
	strltb r0, [r8, #0xb]
	movge r0, #0x2000
	strge r0, [r5, #0x1c]
	strge r6, [r5, #0xc]
_020FFE64:
	ldrsb r0, [r8, #0xb]
	add r0, r0, #1
	b _020FFF18
_020FFE70:
	str r6, [sp, #8]
	ldr r0, [r9, #4]
	add r2, sp, #8
	bl FUN_02048b10
	movs r4, r0
	ldreqsb r0, [r8, #0xb]
	streqb r10, [r8, #0xa]
	addeq r0, r0, #1
	streqb r0, [r8, #0xb]
	beq _020FFF1C
	ldr r0, [r9, #4]
	ldr r1, [r4, #0x18]
	bl FUN_02048178
	cmp r0, #0
	beq _020FFF1C
	add r10, sp, #4
	str r6, [sp, #4]
	str r10, [sp]
	ldr r0, [r9, #4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl FUN_02048674
	str r0, [r4, #0xc]
	cmp r0, #0
	ldr r0, [r9, #4]
	bne _020FFEE8
	ldr r1, [r4, #0x18]
	bl FUN_02048288
	b _020FFF08
_020FFEE8:
	ldr r2, [r4, #0x18]
	sub r1, r5, #0x81
	bl FUN_020485d0
	str r0, [r4, #0x10]
	ldr r1, [r9]
	ldr r2, [r4, #0xc]
	mov r3, r10
	bl FUN_ov16_020fe6e8
_020FFF08:
	ldrsb r1, [r8, #0xb]
	mov r0, #1
	strb r0, [r8, #0xa]
	add r0, r1, #1
_020FFF18:
	strb r0, [r8, #0xb]
_020FFF1C:
	cmp r7, #0
	movne r0, #0
	strne r0, [r7]
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020ffd94

	arm_func_start FUN_ov16_020fff34
FUN_ov16_020fff34: ; 0x020FFF34
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
	bl FUN_ov16_020febf8
	mov r1, #1
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	cmp r5, #0
	strne r1, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fff34

	arm_func_start FUN_ov16_020fff8c
FUN_ov16_020fff8c: ; 0x020FFF8C
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
	bl FUN_ov16_020febf8
	mov r0, #1
	ldrsb r1, [r5, #0xb]
	strb r0, [r5, #0xa]
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldr r2, [sp, #4]
	mov r0, r7
	mov r1, r5
	bl FUN_ov16_020fea74
	ldr r1, [r5, #0x10]
	str r0, [r5, #0x18]
	str r1, [r0, #0x10]
	ldr r1, [sp]
	add r0, r5, #0x2c
	str r1, [r5, #0xc]
	str r0, [r5, #4]
	cmp r4, #0
	ldrne r0, [sp]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fff8c

	arm_func_start FUN_ov16_0210001c
FUN_ov16_0210001c: ; 0x0210001C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r1, #0
	mov r0, r5
	mov r2, #0x80
	mov r4, r1
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_020febf8
	ldrsb r0, [r7, #0xb]
	mov r5, #1
	strb r5, [r7, #0xa]
	add r0, r0, #1
	strb r0, [r7, #0xb]
	ldr r2, [sp, #4]
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020feb00
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x10]
	ldr r1, [sp]
	cmp r0, #0
	addeq r0, r7, #0x2c
	str r1, [r7, #0xc]
	streq r0, [r7, #4]
	beq _02100108
	ldr r1, [r0]
	ldrh r1, [r1, #4]
	add r1, r1, #0xf7
	add r1, r1, #0x9f00
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	bhi _02100100
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _02100100
	strb r5, [r0, #0xb]
	cmp r0, r7
	beq _021000F0
_021000D4:
	ldrsb r1, [r0, #0xa]
	cmp r1, #0
	strneb r4, [r0, #0xb]
	strb r4, [r0, #0xa]
	add r0, r0, #0x2c
	cmp r0, r7
	bne _021000D4
_021000F0:
	strb r4, [r0, #0xb]
	strb r4, [r0, #0xa]
	ldr r0, [r7, #0x10]
	b _02100104
_02100100:
	add r0, r7, #0x2c
_02100104:
	str r0, [r7, #4]
_02100108:
	ldr r3, [r7, #0xc]
	add r0, r8, #0x114
	add r2, r3, #1
	rsb r1, r2, #8
	add r0, r0, r2, lsl #2
	mov r2, r1, lsl #2
	mov r1, #0
	str r3, [r8, #0x17c]
	bl MI_CpuFill8
	cmp r6, #0
	ldrne r0, [sp]
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210001c

	arm_func_start FUN_ov16_02100144
FUN_ov16_02100144: ; 0x02100144
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r8, r0
	mov r4, r2
	mov r6, #0
	mov r7, r1
	mov r0, r5
	mov r1, r6
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_020febf8
	ldr r1, [r7]
	str r0, [r7, #4]
	ldrb r1, [r1, #6]
	cmp r1, #0
	ble _021001AC
_02100194:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _021001AC
	add r6, r6, #1
	cmp r6, r1
	blt _02100194
_021001AC:
	mov r0, #1
	cmp r6, r1
	movne r0, #0
	str r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02100144

	arm_func_start FUN_ov16_021001c8
FUN_ov16_021001c8: ; 0x021001C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r4, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r1, [r7, #0xb]
	mov r3, #1
	mov r0, r8
	add r2, r1, #1
	strb r2, [r7, #0xb]
	mov r1, r7
	mov r2, r4
	strb r3, [r7, #0xa]
	bl FUN_ov16_020febf8
	mov r4, r0
	add r2, sp, #0
	str r7, [r4, #0x10]
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020feeb8
	ldr r5, [r4, #4]
	str r4, [r7, #0xc]
	ldr r0, [r4, #0x18]
	str r0, [r7, #0x10]
	ldr r0, [sp, #4]
	str r0, [r7, #0x18]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02100288
	ldr r0, [r4, #0x18]
	cmp r5, r0
	bhs _02100274
	mov r1, #1
_02100260:
	strb r1, [r5, #0xa]
	ldr r0, [r4, #0x18]
	add r5, r5, #0x2c
	cmp r5, r0
	blo _02100260
_02100274:
	add r2, sp, #0
	mov r0, r8
	mov r1, r5
	bl FUN_ov16_020feeb8
	ldr r5, [r5, #4]
_02100288:
	mov r0, r8
	mov r1, r7
	str r5, [r7, #4]
	bl FUN_ov16_020feda4
	cmp r6, #0
	ldrne r0, [sp, #4]
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_021001c8

	arm_func_start FUN_ov16_021002b0
FUN_ov16_021002b0: ; 0x021002B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x84
	add r9, sp, #4
	mov r6, r0
	mov r4, r2
	mov r8, #0
	mov r5, r1
	mov r0, r9
	mov r1, r8
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r1, [r5, #0xb]
	mov r7, #1
	mov r0, r6
	add r1, r1, #1
	strb r1, [r5, #0xb]
	mov r1, r5
	mov r2, r9
	strb r7, [r5, #0xa]
	bl FUN_ov16_020febf8
	str r8, [sp]
	ldr r1, [r5, #-0x1c]
	mov r9, r0
	ldrsb r2, [r1, #0xa]
	cmp r2, #0
	beq _02100324
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _02100338
_02100324:
	cmp r2, #0
	beq _021003C4
	ldrsb r0, [r1, #0xb]
	cmp r0, #0
	bne _021003C4
_02100338:
	ldr r1, [r9]
	ldr r0, _021003F4 ; =0x00006008
	ldrh r1, [r1, #4]
	mov r3, r9
	cmp r1, r0
	ldr r0, _021003F8 ; =0x00006001
	movne r3, r5
	cmp r1, r0
	beq _02100370
_0210035C:
	strb r7, [r9, #0xa]
	ldr r1, [r9, #0x2c]!
	ldrh r1, [r1, #4]
	cmp r1, r0
	bne _0210035C
_02100370:
	add r2, sp, #0
	mov r0, r6
	mov r1, r9
	str r3, [r9, #0x10]
	bl FUN_ov16_020feeb8
	ldr r8, [r9, #4]
	ldr r0, [r9, #0x18]
	cmp r8, r0
	bhs _021003A8
_02100394:
	strb r7, [r8, #0xa]
	ldr r0, [r9, #0x18]
	add r8, r8, #0x2c
	cmp r8, r0
	blo _02100394
_021003A8:
	add r2, sp, #0
	mov r0, r6
	mov r1, r8
	bl FUN_ov16_020feeb8
	ldr r9, [r8, #4]
	str r7, [sp]
	b _021003D8
_021003C4:
	ldr r1, [r9]
	ldr r0, _021003F8 ; =0x00006001
	ldrh r1, [r1, #4]
	cmp r1, r0
	streq r5, [r9, #0x10]
_021003D8:
	str r9, [r5, #4]
	cmp r4, #0
	ldrne r0, [sp]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021003F4: .word 0x00006008
_021003F8: .word 0x00006001
	arm_func_end FUN_ov16_021002b0

	arm_func_start FUN_ov16_021003fc
FUN_ov16_021003fc: ; 0x021003FC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	mov r4, #0
	mov r7, r0
	mov r5, r2
	mov r6, r1
	add r0, sp, #4
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _0210043C
	cmp r0, #1
	beq _02100448
	b _021004E4
_0210043C:
	add r0, r0, #1
	strb r4, [r6, #9]
	strb r0, [r6, #0xb]
_02100448:
	add r2, sp, #4
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020febf8
	mov r4, r0
	str r6, [r4, #0x10]
	ldr r3, [sp, #4]
	add r2, sp, #0
	mov r0, r7
	mov r1, r4
	str r3, [r6, #0x18]
	bl FUN_ov16_020feeb8
	ldr r1, [r4, #4]
	ldr r0, [r6, #0x18]
	str r4, [r6, #0xc]
	ldr r2, [r4, #0x18]
	cmp r0, #0
	str r2, [r6, #0x10]
	bne _021004D4
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bhs _021004B8
	mov r2, #1
_021004A4:
	strb r2, [r1, #0xa]
	ldr r0, [r4, #0x18]
	add r1, r1, #0x2c
	cmp r1, r0
	blo _021004A4
_021004B8:
	add r2, sp, #0
	mov r0, r7
	bl FUN_ov16_020feeb8
	mov r1, #1
	ldrsb r0, [r6, #0xb]
	strb r1, [r6, #0xa]
	b _021004DC
_021004D4:
	ldrsb r0, [r6, #0xb]
	str r1, [r6, #4]
_021004DC:
	add r0, r0, #1
	strb r0, [r6, #0xb]
_021004E4:
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	bne _021004FC
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020feda4
_021004FC:
	cmp r5, #0
	ldrne r0, [r6, #0x18]
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021003fc

	arm_func_start FUN_ov16_02100514
FUN_ov16_02100514: ; 0x02100514
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
	beq _02100558
	cmp r0, #1
	beq _02100594
	b _02100674
_02100558:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #0x14]
	str r6, [r0, #0x10]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r1, r2, r1
	str r1, [r0]
	ldrsb r0, [r6, #0xb]
	strb r4, [r6, #9]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02100594:
	add r2, sp, #4
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020febf8
	ldr r3, [sp, #4]
	mov r1, #1
	str r1, [r6, #0x18]
	ldr r2, [r3]
	ldr r1, [sp, #0x10]
	mov r4, r0
	add r0, r2, r1
	str r0, [r3]
	ldr r0, [sp, #0x10]
	ldr r1, [r3]
	cmp r0, #0
	blt _021005E8
	ldr r0, [sp, #0xc]
	cmp r1, r0
	movgt r0, #0
	strgt r0, [r6, #0x18]
	b _021005F8
_021005E8:
	ldr r0, [sp, #0xc]
	cmp r1, r0
	movlt r0, #0
	strlt r0, [r6, #0x18]
_021005F8:
	add r2, sp, #0
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_020feeb8
	ldr r1, [r4, #4]
	ldr r0, [r6, #0x18]
	str r4, [r6, #0xc]
	ldr r2, [r4, #0x18]
	cmp r0, #0
	str r2, [r6, #0x10]
	bne _02100664
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bhs _02100648
	mov r2, #1
_02100634:
	strb r2, [r1, #0xa]
	ldr r0, [r4, #0x18]
	add r1, r1, #0x2c
	cmp r1, r0
	blo _02100634
_02100648:
	add r2, sp, #0
	mov r0, r7
	bl FUN_ov16_020feeb8
	mov r1, #1
	ldrsb r0, [r6, #0xb]
	strb r1, [r6, #0xa]
	b _0210066C
_02100664:
	ldrsb r0, [r6, #0xb]
	str r1, [r6, #4]
_0210066C:
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02100674:
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	bne _0210068C
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020feda4
_0210068C:
	cmp r5, #0
	ldrne r0, [r6, #0x18]
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02100514

	arm_func_start FUN_ov16_021006a4
FUN_ov16_021006a4: ; 0x021006A4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	add r4, sp, #4
	mov r10, r0
	mov r11, r2
	mov r7, #0
	mov r9, r1
	mov r0, r4
	mov r1, r7
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r2, [r9, #0xb]
	mov r1, #1
	strb r1, [r9, #0xa]
	add r2, r2, #1
	strb r2, [r9, #0xb]
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov16_020febf8
	mov r4, r0
	add r6, sp, #0
	str r9, [r4, #0x10]
	mov r0, r10
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020feeb8
	ldr r8, [r4, #4]
	mov r0, r10
	str r4, [r9, #0xc]
	ldr r2, [r4, #0x18]
	mov r1, r9
	str r2, [r9, #0x10]
	bl FUN_ov16_020feda4
	ldr r0, [sp, #4]
	str r0, [r9, #0x18]
	str r7, [sp]
	ldr r0, [r9, #0x10]
	cmp r8, r0
	bhs _021007C0
	ldr r4, _0210084C ; =0x00006011
	sub r5, r4, #4
_0210074C:
	ldr r0, [r8]
	ldrh r0, [r0, #4]
	cmp r0, r5
	bne _02100780
	mov r0, r10
	mov r1, r8
	mov r2, r6
	bl FUN_ov16_020feeb8
	cmp r0, #0
	beq _02100780
	ldr r0, [sp]
	cmp r0, #0
	bne _021007C0
_02100780:
	ldr r0, [r8]
	ldrh r0, [r0, #4]
	cmp r0, r4
	bne _021007B0
	mov r0, r10
	mov r1, r8
	mov r2, r6
	bl FUN_ov16_020feeb8
	cmp r0, #0
	ldrne r0, [sp]
	cmpne r0, #0
	movne r7, r8
_021007B0:
	ldr r0, [r9, #0x10]
	add r8, r8, #0x2c
	cmp r8, r0
	blo _0210074C
_021007C0:
	ldr r0, [r9, #0x10]
	cmp r8, r0
	movhs r8, r7
	cmp r8, #0
	beq _021007F8
	ldr r1, [r9, #0xc]
	cmp r1, r8
	bhs _02100830
	mov r0, #1
_021007E4:
	strb r0, [r1, #0xa]
	add r1, r1, #0x2c
	cmp r1, r8
	blo _021007E4
	b _02100830
_021007F8:
	ldr r4, [r9, #0xc]
	cmp r4, r0
	bhs _0210081C
	mov r1, #1
_02100808:
	strb r1, [r4, #0xa]
	ldr r0, [r9, #0x10]
	add r4, r4, #0x2c
	cmp r4, r0
	blo _02100808
_0210081C:
	add r2, sp, #0
	mov r0, r10
	mov r1, r4
	bl FUN_ov16_020feeb8
	ldr r1, [r4, #4]
_02100830:
	str r1, [r9, #4]
	cmp r11, #0
	ldrne r0, [sp]
	strne r0, [r11]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210084C: .word 0x00006011
	arm_func_end FUN_ov16_021006a4

	arm_func_start FUN_ov16_02100850
FUN_ov16_02100850: ; 0x02100850
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r4, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r1, [r6, #0xb]
	mov r3, #1
	mov r0, r7
	add r2, r1, #1
	strb r2, [r6, #0xb]
	mov r1, r6
	mov r2, r4
	strb r3, [r6, #0xa]
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02100988
	ldr r12, _021009A0 ; =0x00006009
	add r4, r12, #1
	add r3, r12, #2
	add r2, r12, #0xa
	add r0, r12, #0xb
_021008C0:
	ldr r1, [sp, #4]
	sub r8, r1, #1
	str r8, [sp, #4]
	add r1, r7, r8, lsl #2
	ldr r1, [r1, #0x114]
	cmp r1, #0
	moveq r0, #1
	streqb r0, [r6, #0xa]
	beq _02100988
	ldr lr, [r1]
	ldrh lr, [lr, #4]
	cmp lr, r12
	cmpne lr, r4
	cmpne lr, r3
	cmpne lr, r2
	beq _02100908
	cmp lr, r0
	bne _02100980
_02100908:
	mov r0, #1
	strb r0, [r1, #0xa]
	ldr r2, [r1]
	mov r4, r1
	ldrh r2, [r2, #4]
	add r2, r2, #0xf7
	add r2, r2, #0x9f00
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	cmp r2, #1
	movls r2, #0
	strls r2, [r1, #0x18]
	ldr r2, [r1, #0x10]
	add r2, r2, #0x2c
	str r2, [r1, #4]
	ldr r2, [r1, #0x10]
	cmp r1, r2
	beq _02100964
_02100950:
	strb r0, [r4, #0xa]
	ldr r2, [r1, #0x10]
	add r4, r4, #0x2c
	cmp r4, r2
	bne _02100950
_02100964:
	add r2, sp, #0
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_020feeb8
	ldr r0, [r4, #4]
	str r0, [r6, #4]
	b _02100988
_02100980:
	cmp r8, #0
	bne _021008C0
_02100988:
	cmp r5, #0
	ldrne r0, [sp, #4]
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021009A0: .word 0x00006009
	arm_func_end FUN_ov16_02100850

	arm_func_start FUN_ov16_021009a4
FUN_ov16_021009a4: ; 0x021009A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r1, [r5, #0xb]
	mov r3, #1
	mov r0, r6
	add r2, r1, #1
	strb r2, [r5, #0xb]
	mov r1, r5
	mov r2, r7
	strb r3, [r5, #0xa]
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp]
	cmp r0, #0
	beq _02100A88
	ldr r0, _02100AA0 ; =0x0000600A
	sub r1, r0, #1
_02100A08:
	ldr r2, [sp]
	sub r3, r2, #1
	str r3, [sp]
	add r2, r6, r3, lsl #2
	ldr r7, [r2, #0x114]
	ldr r2, [r7]
	ldrh r2, [r2, #4]
	cmp r2, r1
	beq _02100A34
	cmp r2, r0
	bne _02100A80
_02100A34:
	mov r0, #1
	mov r3, r7
	strb r0, [r7, #0xb]
	cmp r7, r5
	beq _02100A6C
	mov r1, #0
	mov r0, r1
_02100A50:
	ldrsb r2, [r7, #0xa]
	cmp r2, #0
	strneb r1, [r7, #0xb]
	strb r0, [r7, #0xa]
	add r7, r7, #0x2c
	cmp r7, r5
	bne _02100A50
_02100A6C:
	mov r0, #0
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xa]
	str r3, [r5, #4]
	b _02100A88
_02100A80:
	cmp r3, #0
	bne _02100A08
_02100A88:
	cmp r4, #0
	ldrne r0, [sp]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02100AA0: .word 0x0000600A
	arm_func_end FUN_ov16_021009a4

	arm_func_start FUN_ov16_02100aa4
FUN_ov16_02100aa4: ; 0x02100AA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r9, r0
	mov r7, r2
	mov r4, #0
	mov r8, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r1, [r8, #0xb]
	mov r6, #1
	mov r0, r9
	add r1, r1, #1
	strb r1, [r8, #0xb]
	mov r1, r8
	mov r2, r5
	strb r6, [r8, #0xa]
	bl FUN_ov16_020febf8
	str r0, [r8, #4]
	ldr r3, [sp]
	sub r0, r3, #1
	add r0, r9, r0, lsl #2
	ldr r2, [r0, #0x114]
	cmp r2, #0
	bne _02100B24
	add sp, sp, #0x80
	cmp r7, #0
	strne r4, [r7]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02100B24:
	ldr r1, [r2]
	ldr r0, _02100BBC ; =0x0000600B
	ldrh r1, [r1, #4]
	cmp r1, r0
	beq _02100B4C
	add sp, sp, #0x80
	cmp r7, #0
	strne r4, [r7]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02100B4C:
	ldr r0, [r9, #0x17c]
	cmp r0, r3
	beq _02100B6C
	add sp, sp, #0x80
	cmp r7, #0
	strne r4, [r7]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02100B6C:
	ldr r0, [r8]
	ldrb r3, [r0, #6]
	cmp r3, #1
	ble _02100B98
	ldr r1, [r2, #0x18]
_02100B80:
	ldr r0, [r5, r6, lsl #2]
	cmp r1, r0
	beq _02100B98
	add r6, r6, #1
	cmp r6, r3
	blt _02100B80
_02100B98:
	cmp r7, #0
	beq _02100BB0
	mov r0, #1
	cmp r6, r3
	movge r0, #0
	str r0, [r7]
_02100BB0:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02100BBC: .word 0x0000600B
	arm_func_end FUN_ov16_02100aa4

	arm_func_start FUN_ov16_02100bc0
FUN_ov16_02100bc0: ; 0x02100BC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r9, r0
	mov r7, r2
	mov r4, #0
	mov r8, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r1, [r8, #0xb]
	mov r6, #1
	mov r0, r9
	add r1, r1, #1
	strb r1, [r8, #0xb]
	mov r1, r8
	mov r2, r5
	strb r6, [r8, #0xa]
	bl FUN_ov16_020febf8
	str r0, [r8, #4]
	cmp r7, #0
	beq _02100C30
	ldr r1, [r9, #0x17c]
	ldr r0, [sp]
	cmp r1, r0
	movne r6, r4
	str r6, [r7]
_02100C30:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02100bc0

	arm_func_start FUN_ov16_02100c3c
FUN_ov16_02100c3c: ; 0x02100C3C
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
	ldrsb r2, [r7, #0xb]
	mov r1, #1
	strb r1, [r7, #0xa]
	add r2, r2, #1
	strb r2, [r7, #0xb]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020febf8
	str r0, [r7, #4]
	ldr r1, [sp]
	ldr r0, [r8, #0x138]
	str r1, [r8, #0x164]
	cmp r0, #0
	ldr r2, [r8, #0x134]
	ble _02100CCC
	mov r1, #1
_02100CAC:
	ldrsb r0, [r2, #0xb]
	add r5, r5, #1
	cmp r0, #0
	streqb r1, [r2, #0xa]
	ldr r0, [r8, #0x138]
	add r2, r2, #0x2c
	cmp r5, r0
	blt _02100CAC
_02100CCC:
	ldr r0, [sp]
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02100c3c

	arm_func_start FUN_ov16_02100ce4
FUN_ov16_02100ce4: ; 0x02100CE4
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
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02100E64
_02100D1C: ; jump table
	b _02100D2C ; case 0
	b _02100D8C ; case 1
	b _02100DD4 ; case 2
	b _02100E34 ; case 3
_02100D2C:
	mov r3, #1
	mov r0, r6
	mov r1, r5
	mov r2, r7
	strb r3, [r5, #9]
	bl FUN_ov16_020febf8
	str r0, [r5, #0xc]
	ldr r1, [sp, #4]
	add r2, sp, #0
	str r1, [r5, #0x1c]
	str r5, [r0, #0x10]
	ldr r1, [r5, #0xc]
	mov r0, r6
	bl FUN_ov16_020feeb8
	ldr r2, [r5, #0xc]
	ldrsb r0, [r5, #0xb]
	ldr r1, [r2, #4]
	str r1, [r5, #0x14]
	ldr r2, [r2, #0x18]
	add r0, r0, #1
	add r1, r2, #0x2c
	str r2, [r5, #0x10]
	str r1, [r5, #4]
	strb r0, [r5, #0xb]
_02100D8C:
	ldr r0, [r6, #0x14c]
	cmp r0, #0
	ldrne r0, [r6, #0x150]
	cmpne r0, #0
	bne _02100DB0
	ldr r1, [r6, #0x168]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	blt _02100E64
_02100DB0:
	ldr r0, [r6, #0x180]
	mov r1, #0
	add r0, r0, #1
	str r0, [r6, #0x180]
	add r0, r6, r0, lsl #2
	str r1, [r0, #0x168]
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02100DD4:
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020feda4
	ldr r3, [r6, #0x180]
	add r12, r6, #0x168
	ldr r2, [r12, r3, lsl #2]
	ldr r1, [r6, #0x178]
	mov r0, r6
	add r1, r2, r1
	str r1, [r12, r3, lsl #2]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x10]
	bl FUN_ov16_020fedc8
	ldr r1, [r5, #0xc]
	str r0, [r5, #0x14]
	ldr r0, [r1, #0xc]
	str r0, [r6, #0x17c]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	blo _02100E64
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02100E34:
	ldr r1, [r5, #0x10]
	add r2, sp, #0
	mov r0, r6
	bl FUN_ov16_020feeb8
	ldr r0, [r6, #0x180]
	mov r1, #1
	sub r0, r0, #1
	str r0, [r6, #0x180]
	ldrsb r0, [r5, #0xb]
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02100E64:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02100ce4

	arm_func_start FUN_ov16_02100e88
FUN_ov16_02100e88: ; 0x02100E88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r4, sp, #4
	mov r7, r0
	mov r5, r2
	mov r8, #0
	mov r6, r1
	mov r0, r4
	mov r1, r8
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02100FEC
_02100EC4: ; jump table
	b _02100ED4 ; case 0
	b _02100F44 ; case 1
	b _02100F7C ; case 2
	b _02100FD4 ; case 3
_02100ED4:
	strb r8, [r6, #9]
	ldr r1, [r7, #0x188]
	mov r0, r7
	add r3, r1, #1
	mov r1, r6
	mov r2, r4
	str r3, [r7, #0x188]
	bl FUN_ov16_020febf8
	str r0, [r6, #0xc]
	ldr r1, [sp, #4]
	add r2, sp, #0
	str r1, [r6, #0x1c]
	ldr r1, [r7, #0x188]
	str r1, [r6, #0x20]
	str r6, [r0, #0x10]
	ldr r1, [r6, #0xc]
	mov r0, r7
	bl FUN_ov16_020feeb8
	ldr r2, [r6, #0xc]
	ldrsb r0, [r6, #0xb]
	ldr r1, [r2, #4]
	str r1, [r6, #0x14]
	ldr r2, [r2, #0x18]
	add r0, r0, #1
	add r1, r2, #0x2c
	str r2, [r6, #0x10]
	str r1, [r6, #4]
	strb r0, [r6, #0xb]
_02100F44:
	ldr r0, [r7, #0x14c]
	cmp r0, #0
	ldrne r0, [r7, #0x150]
	cmpne r0, #0
	bne _02100F70
	ldr r1, [r7, #0x180]
	ldr r0, [r6, #0x1c]
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0x168]
	cmp r1, r0
	blt _02100FEC
_02100F70:
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02100F7C:
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020feda4
	ldr r4, [r7, #0x184]
	ldr r1, [r6, #0x20]
	mov r0, r7
	str r1, [r7, #0x184]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x10]
	bl FUN_ov16_020fedc8
	str r0, [r6, #0x14]
	str r4, [r7, #0x184]
	ldr r0, [r6, #0xc]
	ldr r0, [r0, #0xc]
	str r0, [r7, #0x17c]
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	blo _02100FEC
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02100FD4:
	ldr r1, [r6, #0x10]
	add r2, sp, #0
	mov r0, r7
	bl FUN_ov16_020feeb8
	mov r0, #1
	strb r0, [r6, #0xa]
_02100FEC:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02100e88

	arm_func_start FUN_ov16_02101010
FUN_ov16_02101010: ; 0x02101010
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldrsb r1, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r1, #0
	bne _0210105C
	add r0, r5, #0xc
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	add r2, r5, #0xc
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	add r0, r1, #1
	strb r0, [r5, #0xb]
_0210105C:
	ldr r1, [r5, #0xc]
	mov r0, r5
	blx r1
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02101010

	arm_func_start FUN_ov16_02101088
FUN_ov16_02101088: ; 0x02101088
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021010C8
	cmp r0, #1
	beq _02101128
	b _0210117C
_021010C8:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _0210117C
	ldr r0, [sp]
	cmp r0, #0
	bge _02101104
	ldr r0, [sp, #4]
	cmp r0, #0
	ldreq r0, _021011A0 ; =0x00002F0F
	streq r0, [sp, #4]
_02101104:
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	add r0, r0, #1
	mov r1, #1
	str r2, [r5, #0x10]
	strb r1, [r5, #9]
	strb r0, [r5, #0xb]
_02101128:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _0210114C
	ldr r0, [r6]
	add r0, r0, #0x4200
	ldrh r0, [r0, #0x5c]
	tst r0, r1
	movne r0, #0
	strne r0, [r5, #0xc]
_0210114C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	blt _0210117C
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	cmp r0, #0
	str r0, [r5, #0xc]
	ldrlesb r0, [r5, #0xb]
	movle r1, #1
	strleb r1, [r5, #0xa]
	addle r0, r0, #1
	strleb r0, [r5, #0xb]
_0210117C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021011A0: .word 0x00002F0F
	arm_func_end FUN_ov16_02101088

	arm_func_start FUN_ov16_021011a4
FUN_ov16_021011a4: ; 0x021011A4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2b4
	mov r5, r1
	ldrsb r3, [r5, #0xb]
	mov r4, r2
	cmp r3, #0
	beq _021011CC
	cmp r3, #1
	beq _0210127C
	b _02101290
_021011CC:
	add r2, sp, #0x234
	bl FUN_ov16_020fed6c
	str r0, [r5, #4]
	ldr r0, [sp, #0x240]
	add r6, sp, #0x34
	str r0, [sp]
	ldr r1, [sp, #0x244]
	mov r0, r6
	str r1, [sp, #4]
	ldr r1, [sp, #0x248]
	str r1, [sp, #8]
	ldr r1, [sp, #0x24c]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x250]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x254]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x258]
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x25c]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x260]
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x264]
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x268]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x26c]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x270]
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x234]
	ldr r2, [sp, #0x238]
	ldr r3, [sp, #0x23c]
	bl sprintf
	ldr r1, _021012B4 ; =0x02119C2C
	add r0, sp, #0x134
	mov r2, r6
	bl sprintf
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #9]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_0210127C:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02101290:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x2b4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021012B4: .word ov16_02119C2C
	arm_func_end FUN_ov16_021011a4

	arm_func_start FUN_ov16_021012b8
FUN_ov16_021012b8: ; 0x021012B8
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
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021012FC
	cmp r0, #1
	beq _0210134C
	b _0210136C
_021012FC:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	str r7, [sp, #4]
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _0210136C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	moveq r0, #8
	streq r0, [sp, #4]
	ldr r0, [r6]
	ldr r2, [sp, #4]
	bl FUN_02031084
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_0210134C:
	ldr r0, [r6]
	bl FUN_020312cc
	cmp r0, #0
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_0210136C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_021012b8

	arm_func_start FUN_ov16_02101390
FUN_ov16_02101390: ; 0x02101390
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
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021013D4
	cmp r0, #1
	beq _02101424
	b _02101444
_021013D4:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	str r7, [sp, #4]
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02101444
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	moveq r0, #8
	streq r0, [sp, #4]
	ldr r0, [r6]
	ldr r2, [sp, #4]
	bl FUN_020311b8
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02101424:
	ldr r0, [r6]
	bl FUN_020312cc
	cmp r0, #0
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02101444:
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	addne sp, sp, #0x80
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	strne r0, [r4]
	mov r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02101390

	arm_func_start FUN_ov16_0210146c
FUN_ov16_0210146c: ; 0x0210146C
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
	bl FUN_ov16_020febf8
	str r0, [r7, #4]
	add r0, sp, #0
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	mov r5, #1
	cmp r0, #0
	beq _021014E0
	cmp r0, #1
	beq _021014E8
	cmp r0, #2
	beq _021014F0
	b _021014FC
_021014E0:
	bl FUN_ov16_020f1810
	b _021014F4
_021014E8:
	bl FUN_ov16_020f17f0
	b _021014F4
_021014F0:
	bl FUN_ov16_020f1800
_021014F4:
	cmp r0, #0
	movne r5, r4
_021014FC:
	cmp r5, #0
	movne r0, #1
	strneb r0, [r7, #0xa]
	cmp r6, #0
	movne r0, #1
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210146c

	arm_func_start FUN_ov16_02101520
FUN_ov16_02101520: ; 0x02101520
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
	beq _02101564
	cmp r0, #1
	beq _0210159C
	b _021015C8
_02101564:
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r8]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_02030790
	ldr r0, _021015EC ; =0x0209A454
	mov r1, #1
	strb r1, [r0, #0x39]
	ldrsb r0, [r5, #0xb]
	b _021015C0
_0210159C:
	ldr r0, [r8]
	bl FUN_02030f54
	cmp r0, #0
	beq _021015C8
	ldr r0, _021015EC ; =0x0209A454
	mov r1, #1
	strb r6, [r0, #0x39]
	ldrsb r0, [r5, #0xb]
	strb r1, [r5, #0xa]
_021015C0:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021015C8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021015EC: .word unk_0209A454
	arm_func_end FUN_ov16_02101520

	arm_func_start FUN_ov16_021015f0
FUN_ov16_021015f0: ; 0x021015F0
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
	beq _02101630
	cmp r0, #1
	beq _0210165C
	b _0210167C
_02101630:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	mov r2, #1
	str r0, [r5, #4]
	add r0, r1, #1
	strb r2, [r5, #9]
	strb r0, [r5, #0xb]
	b _0210167C
_0210165C:
	ldr r0, [r7]
	bl FUN_02030f54
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_0210167C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021015f0

	arm_func_start FUN_ov16_021016a0
FUN_ov16_021016a0: ; 0x021016A0
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
	beq _021016E4
	cmp r0, #1
	beq _02101710
	b _02101734
_021016E4:
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	mov r2, #1
	str r0, [r5, #4]
	add r0, r1, #1
	strb r2, [r5, #9]
	strb r0, [r5, #0xb]
	b _02101734
_02101710:
	ldr r0, _02101758 ; =0x020A9C40
	mov r1, r6
	bl FUN_020460d8
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02101734:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02101758: .word unk_020A9C40
	arm_func_end FUN_ov16_021016a0

	arm_func_start FUN_ov16_0210175c
FUN_ov16_0210175c: ; 0x0210175C
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
	beq _0210179C
	cmp r0, #1
	beq _021017C4
	b _021017D8
_0210179C:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7]
	bl FUN_02030fa0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021017C4:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021017D8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210175c

	arm_func_start FUN_ov16_021017fc
FUN_ov16_021017fc: ; 0x021017FC
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
	beq _0210183C
	cmp r0, #1
	beq _02101874
	b _02101894
_0210183C:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	mov r0, #6
	bl FUN_ov16_020f1514
	ldr r0, [r7]
	ldr r1, [sp]
	bl FUN_02030fe0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02101894
_02101874:
	ldr r0, [r7]
	bl FUN_02031048
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02101894:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021017fc

	arm_func_start FUN_ov16_021018b8
FUN_ov16_021018b8: ; 0x021018B8
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
	beq _021018F8
	cmp r0, #1
	beq _0210193C
	b _02101960
_021018F8:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	mov r7, #1
	ldr r6, _02101984 ; =0x02099F14
	str r0, [r5, #4]
	ldr r0, [r6]
	mov r1, r7
	bl FUN_ov1_020df110
	ldr r0, [r6]
	mov r2, r7
	mov r1, #0x40
	bl FUN_ov1_020df1dc
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_0210193C:
	ldr r0, _02101984 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3d74
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02101960:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101984: .word unk_02099F14
	arm_func_end FUN_ov16_021018b8

	arm_func_start FUN_ov16_02101988
FUN_ov16_02101988: ; 0x02101988
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
	beq _021019C8
	cmp r0, #1
	beq _021019F8
	b _02101A0C
_021019C8:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	ldr r1, _02101A30 ; =0x02099F14
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, #1
	bl FUN_ov1_020df110
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021019F8:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02101A0C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101A30: .word unk_02099F14
	arm_func_end FUN_ov16_02101988

	arm_func_start FUN_ov16_02101a34
FUN_ov16_02101a34: ; 0x02101A34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r5, r1
	ldrsb r1, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02101B4C
_02101A58: ; jump table
	b _02101A68 ; case 0
	b _02101AC4 ; case 1
	b _02101AF4 ; case 2
	b _02101B30 ; case 3
_02101A68:
	add r7, sp, #0
	mov r1, #0
	mov r0, r7
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp]
	mov r1, #2
	str r0, [r5, #0xc]
	ldr r0, [sp, #4]
	str r0, [r5, #0x10]
	ldr r0, [r6]
	bl FUN_02030fe0
	mov r1, #1
	ldrsb r0, [r5, #0xb]
	strb r1, [r5, #9]
_02101AB8:
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02101B4C
_02101AC4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02101AE0
	ldr r0, [r6]
	bl FUN_02031048
	cmp r0, #0
	beq _02101B4C
_02101AE0:
	ldr r1, [r5, #0xc]
	add r0, r6, #0x25c
	bl FUN_ov16_020f2a18
	ldrsb r0, [r5, #0xb]
	b _02101AB8
_02101AF4:
	bl FUN_ov16_020f2aa4
	cmp r0, #0
	bne _02101B4C
	add r0, r6, #0x25c
	bl FUN_ov16_020f2a74
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02101B20
	ldr r0, [r6]
	mov r1, #0
	bl FUN_02030fe0
_02101B20:
	ldrsb r0, [r5, #0xb]
	mov r1, #3
	str r1, [r5, #0xc]
	b _02101AB8
_02101B30:
	ldr r0, [r5, #0xc]
	subs r0, r0, #1
	str r0, [r5, #0xc]
	addeq r0, r1, #1
	moveq r1, #1
	streqb r1, [r5, #0xa]
	streqb r0, [r5, #0xb]
_02101B4C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02101a34

	arm_func_start FUN_ov16_02101b70
FUN_ov16_02101b70: ; 0x02101B70
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	mov r5, r1
	ldrsb r3, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r3, #0
	beq _02101B9C
	cmp r3, #1
	beq _02101BF0
	b _02101C20
_02101B9C:
	add r2, sp, #4
	bl FUN_ov16_020fed6c
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _02101BC0
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02101C20
_02101BC0:
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_020312d8
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0xc]
	b _02101C1C
_02101BF0:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_02031a08
	tst r0, #1
	beq _02101C0C
	tst r0, #2
	beq _02101C20
_02101C0C:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
_02101C1C:
	strb r0, [r5, #0xb]
_02101C20:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov16_02101b70

	arm_func_start FUN_ov16_02101c44
FUN_ov16_02101c44: ; 0x02101C44
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
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [r7]
	ldr r1, [sp]
	bl FUN_02031554
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02101c44

	arm_func_start FUN_ov16_02101cc4
FUN_ov16_02101cc4: ; 0x02101CC4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x88
	add r8, sp, #8
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _02101D1C
	cmp r1, #1
	beq _02101D74
	b _02101D98
_02101D1C:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	strne r7, [sp, #0x14]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_02031640
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp, #8]
	add r0, r0, #1
	str r1, [r5, #0xc]
	strb r0, [r5, #0xb]
_02101D74:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_02031a08
	tst r0, #0x10
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02101D98:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02101cc4

	arm_func_start FUN_ov16_02101dbc
FUN_ov16_02101dbc: ; 0x02101DBC
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _02101E10
	cmp r1, #1
	beq _02101E4C
	b _02101E60
_02101E10:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_020315f0
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp]
	add r0, r0, #1
	str r1, [r5, #0xc]
	strb r0, [r5, #0xb]
_02101E4C:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02101E60:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02101dbc

	arm_func_start FUN_ov16_02101e84
FUN_ov16_02101e84: ; 0x02101E84
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	add r8, sp, #0x10
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _02101EDC
	cmp r1, #1
	beq _02101F44
	b _02101F68
_02101EDC:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	ldr r0, [sp, #0x1c]
	strne r7, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl FUN_02031718
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	str r1, [r5, #0xc]
	strb r0, [r5, #0xb]
_02101F44:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_02031a08
	tst r0, #0x10
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02101F68:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x90
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02101e84

	arm_func_start FUN_ov16_02101f8c
FUN_ov16_02101f8c: ; 0x02101F8C
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
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_020317f0
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	cmp r5, #0
	strb r0, [r6, #0xb]
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02101f8c

	arm_func_start FUN_ov16_02102014
FUN_ov16_02102014: ; 0x02102014
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r8, sp, #4
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _0210206C
	cmp r1, #1
	beq _021020C4
	b _021020E8
_0210206C:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	ldrne r0, [sp, #0xc]
	strne r7, [sp, #0x10]
	strne r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_02031844
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0xc]
	strb r0, [r5, #0xb]
_021020C4:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_02031a08
	tst r0, #0x40
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_021020E8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02102014

	arm_func_start FUN_ov16_0210210c
FUN_ov16_0210210c: ; 0x0210210C
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
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_020318e8
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210210c

	arm_func_start FUN_ov16_02102190
FUN_ov16_02102190: ; 0x02102190
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021021D0
	cmp r0, #1
	beq _02102208
	b _0210222C
_021021D0:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_02031930
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp]
	add r0, r0, #1
	str r1, [r5, #0xc]
	strb r0, [r5, #0xb]
_02102208:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_02031a08
	tst r0, #2
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_0210222C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02102190

	arm_func_start FUN_ov16_02102250
FUN_ov16_02102250: ; 0x02102250
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02102290
	cmp r0, #1
	beq _021022B8
	b _021022EC
_02102290:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r2, [sp]
	add r0, r1, #1
	str r2, [r5, #0xc]
	strb r0, [r5, #0xb]
_021022B8:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_02031a08
	tst r0, #2
	beq _021022EC
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_0203194c
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021022EC:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02102250

	arm_func_start FUN_ov16_02102310
FUN_ov16_02102310: ; 0x02102310
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x9c
	add r8, sp, #0x1c
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
	beq _02102354
	cmp r0, #1
	beq _02102418
	b _02102454
_02102354:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x18]
	ldr r0, [r7]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_02031e68
	str r4, [sp]
	ldr r0, [sp, #0x44]
	mov r3, r4
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	mov r1, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r7]
	ldr r2, [sp, #0x40]
	bl FUN_02032040
	str r4, [sp]
	ldr r0, [sp, #0x50]
	mov r1, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x54]
	mov r3, r4
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r7]
	ldr r2, [sp, #0x4c]
	bl FUN_02032040
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02102418:
	ldr r0, [r7]
	bl FUN_020326e0
	tst r0, #0x50
	bne _02102454
	ldrsb r0, [r6, #9]
	cmp r0, #0
	beq _02102440
	ldr r0, [r7]
	mov r1, #1
	bl FUN_020326b4
_02102440:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02102454:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x9c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02102310

	arm_func_start FUN_ov16_02102478
FUN_ov16_02102478: ; 0x02102478
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x98
	mov r8, r1
	mov r9, r0
	mov r0, r8
	mov r1, #0
	mov r7, r2
	mov r6, r3
	bl FUN_ov16_020efa9c
	movs r4, r0
	bne _021024BC
	mov r1, r8, lsl #0x10
	ldr r0, _02102698 ; =0x0209BA20
	add r2, sp, #0
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	b _0210254C
_021024BC:
	add r3, sp, #0
	mov r5, r4
	mov r2, #0x1a
_021024C8:
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	add r5, r5, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _021024C8
	ldr r0, [r4, #0x68]
	add r3, sp, #0x6c
	str r0, [sp, #0x68]
	add r5, r4, #0x6c
	mov r2, #6
_021024F8:
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	add r5, r5, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _021024F8
	ldr r0, [r4, #0x84]
	str r0, [sp, #0x84]
	ldr r0, [r4, #0x88]
	str r0, [sp, #0x88]
	ldrb r0, [r4, #0x8c]
	strb r0, [sp, #0x8c]
	ldrh r0, [r4, #0x8e]
	strh r0, [sp, #0x8e]
	ldr r0, [r4, #0x90]
	str r0, [sp, #0x90]
	ldrsh r0, [r4, #0x94]
	strh r0, [sp, #0x94]
	ldrb r0, [r4, #0x96]
	strb r0, [sp, #0x96]
_0210254C:
	cmp r6, #0
	mov r5, #0
	bne _0210261C
	bl FUN_02029d54
	cmp r0, #3
	bne _021025B4
	ldr r6, _0210269C ; =0x020A9C40
	mov r0, r6
	bl FUN_02045570
	mov r4, r0
	mov r0, r6
	bl FUN_0204557c
	cmp r4, r8
	mov r2, r0
	ldr r4, _021026A0 ; =0x02099ED8
	movne r2, r5
	ldr r0, [r4]
	mov r1, r8
	bl FUN_020554b0
	movs r1, r0
	ldreqh r6, [sp, #0x58]
	beq _0210261C
	ldr r0, [r4]
	bl FUN_020552cc
	ldrh r6, [r0, #0xa8]
	b _0210261C
_021025B4:
	cmp r4, #0
	beq _02102618
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _02102698 ; =0x0209BA20
	bl FUN_0207249c
	ldrh r6, [r0, #0x28]
	cmp r6, #0
	ldreqh r6, [r0, #0x26]
	mov r0, r6
	bl FUN_ov16_020f0ba4
	cmp r0, #0
	beq _0210261C
	ldr r0, _02102698 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204c2ec
	cmp r0, #0
	mov r5, #0
	moveq r5, #2
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	addne r5, r5, #1
	b _0210261C
_02102618:
	ldrh r6, [sp, #0x58]
_0210261C:
	add r4, sp, #0
	mov r1, r6
	mov r0, r4
	bl FUN_ov16_020f0b3c
	mov r6, r0
	mov r0, r4
	and r1, r7, #0xff
	bl FUN_ov16_020f365c
	movs r2, r0
	mvneq r0, #0
	streq r0, [r9, #0xc0]
	ldr r1, _021026A4 ; =0x02119C40
	mov r0, r9
	bl sprintf
	add r0, sp, #0
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f369c
	mov r2, r0
	ldr r1, _021026A8 ; =0x02119C4C
	add r0, r9, #0x40
	bl sprintf
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f3724
	mov r2, r0
	ldr r1, _021026AC ; =0x02119C58
	add r0, r9, #0x80
	bl sprintf
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02102698: .word unk_0209BA20
_0210269C: .word unk_020A9C40
_021026A0: .word unk_02099ED8
_021026A4: .word ov16_02119C40
_021026A8: .word ov16_02119C4C
_021026AC: .word ov16_02119C58
	arm_func_end FUN_ov16_02102478

	arm_func_start FUN_ov16_021026b0
FUN_ov16_021026b0: ; 0x021026B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x218
	add r9, sp, #0x68
	mov r6, r0
	mov r4, r2
	mov r8, #0
	mov r5, r1
	mov r0, r9
	mov r1, r8
	mov r2, #0x80
	mov r7, #1
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021026F8
	cmp r0, #1
	beq _02102AD0
	b _02102B0C
_021026F8:
	mov r0, r6
	mov r1, r5
	mov r2, r9
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #0x6c]
	mov r1, r8
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _02102838
	add r7, sp, #0xe8
	mov r8, r0
	mov r3, #0xe
_0210272C:
	ldrb r2, [r8]
	ldrb r1, [r8, #1]
	add r8, r8, #2
	subs r3, r3, #1
	strb r1, [r7, #1]
	strb r2, [r7], #2
	bne _0210272C
	add r7, sp, #0x104
	add r8, r0, #0x1c
	mov r3, #8
_02102754:
	ldrb r2, [r8]
	ldrb r1, [r8, #1]
	add r8, r8, #2
	subs r3, r3, #1
	strb r1, [r7, #1]
	strb r2, [r7], #2
	bne _02102754
	add r7, sp, #0x114
	add r8, r0, #0x2c
	mov r3, #0x10
_0210277C:
	ldrb r2, [r8]
	ldrb r1, [r8, #1]
	add r8, r8, #2
	subs r3, r3, #1
	strb r1, [r7, #1]
	strb r2, [r7], #2
	bne _0210277C
	ldrb r1, [r0, #0x4c]
	strb r1, [sp, #0x134]
	ldrb r1, [r0, #0x4d]
	strb r1, [sp, #0x135]
	ldrh r2, [r0, #0x4e]
	add r1, sp, #0x11c
	strh r2, [r1, #0x1a]
	ldrh r3, [r0, #0x50]
	ldrh r2, [r0, #0x52]
	strh r3, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	ldrh r3, [r0, #0x54]
	ldrh r2, [r0, #0x56]
	strh r3, [r1, #0x20]
	strh r2, [r1, #0x22]
	ldrh r2, [r0, #0x58]
	strh r2, [r1, #0x24]
	ldrb r2, [r0, #0x5a]
	strb r2, [sp, #0x142]
	ldrb r2, [r0, #0x5b]
	strb r2, [sp, #0x143]
	ldrb r2, [r0, #0x5c]
	strb r2, [sp, #0x144]
	ldrb r2, [r0, #0x5d]
	strb r2, [sp, #0x145]
	ldrh r2, [r0, #0x5e]
	strh r2, [r1, #0x2a]
	ldrh r2, [r0, #0x60]
	strh r2, [r1, #0x2c]
	ldrb r2, [r0, #0x62]
	strb r2, [sp, #0x14a]
	ldrb r2, [r0, #0x63]
	strb r2, [sp, #0x14b]
	ldrb r3, [r0, #0x64]
	ldrb r2, [r0, #0x65]
	strb r3, [sp, #0x14c]
	strb r2, [sp, #0x14d]
	ldrh r0, [r0, #0x66]
	strh r0, [r1, #0x32]
	b _0210285C
_02102838:
	ldr r1, [sp, #0x6c]
	ldr r0, _02102B30 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	add r2, sp, #0xe8
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	streqb r7, [r5, #0xa]
	beq _02102B0C
_0210285C:
	mov r8, #0
	add r0, sp, #0x40
	mov r1, r8
	mov r2, #0x28
	mov r7, #1
	bl MI_CpuFill8
	add r0, sp, #0x150
	mov r1, r8
	mov r2, #0xc8
	bl MI_CpuFill8
	add r8, sp, #0x1f
	add r1, sp, #0x104
	mov r0, r8
	str r1, [sp, #0x40]
	bl strcpy
	mov r0, r8
	bl strlen
	cmp r0, #0
	beq _02102948
	cmp r0, #1
	bne _021028CC
	ldrsb r0, [sp, #0x1f]
	subs r0, r0, #0x30
	bmi _02102948
	cmp r0, #9
	ldrle r0, _02102B34 ; =0x02119C64
	strle r0, [sp, #0x40]
	b _02102948
_021028CC:
	sub r1, r0, #2
	add r0, sp, #0x1c
	add r1, r8, r1
	bl strcpy
	ldrb r0, [sp, #0x1c]
	cmp r0, #0x82
	bne _02102900
	ldrsb r0, [sp, #0x1d]
	subs r0, r0, #0x4f
	bmi _02102918
	cmp r0, #9
	ldrle r0, _02102B38 ; =0x02119C68
	b _02102914
_02102900:
	ldrsb r0, [sp, #0x1d]
	subs r0, r0, #0x30
	bmi _02102918
	cmp r0, #9
	ldrle r0, _02102B3C ; =0x02119C6C
_02102914:
	strle r0, [sp, #0x40]
_02102918:
	ldr r1, _02102B40 ; =0x02119C70
	add r0, sp, #0x1f
	bl strcmp
	cmp r0, #0
	ldreq r0, _02102B44 ; =0x02119C7C
	ldr r1, _02102B48 ; =0x02119C80
	streq r0, [sp, #0x40]
	add r0, sp, #0x1f
	bl strcmp
	cmp r0, #0
	ldreq r0, _02102B4C ; =0x02119C8C
	streq r0, [sp, #0x40]
_02102948:
	ldr r0, _02102B30 ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	beq _02102970
	ldr r0, [sp, #0x68]
	cmp r0, #1
	streq r7, [sp, #0x44]
	movne r0, #2
	strne r0, [sp, #0x44]
	b _02102974
_02102970:
	str r7, [sp, #0x44]
_02102974:
	ldr r0, [sp, #0x7c]
	ldr r3, [sp, #0x68]
	add r0, r0, #1
	mov r2, #0xf0
	mov r1, #3
	str r3, [sp, #0x48]
	str r3, [sp, #0x58]
	str r2, [sp, #0x5c]
	str r1, [sp, #0x60]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021029FC
_021029A4: ; jump table
	b _021029BC ; case 0
	b _021029C4 ; case 1
	b _021029E0 ; case 2
	b _021029E4 ; case 3
	b _021029EC ; case 4
	b _021029F4 ; case 5
_021029BC:
	sub r0, r1, #4
	b _021029F8
_021029C4:
	ldrb r0, [sp, #0x142]
	cmp r0, #2
	movne r0, #0xc
	strne r0, [sp, #0x64]
	moveq r0, #0xb
	streq r0, [sp, #0x64]
	b _021029FC
_021029E0:
	b _021029E4
_021029E4:
	mov r0, #0xc
	b _021029F8
_021029EC:
	mov r0, #0xd
	b _021029F8
_021029F4:
	mov r0, #0xa
_021029F8:
	str r0, [sp, #0x64]
_021029FC:
	ldr r8, [sp, #0x74]
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x78]
	add r0, sp, #0x150
	str r7, [sp, #0x210]
	str r8, [sp, #0x214]
	bl FUN_ov16_02102478
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _02102A44
	ldr r0, [sp, #0x210]
	str r7, [sp, #0x50]
	cmp r0, #1
	streq r7, [sp, #0x4c]
	movne r0, #5
	strne r0, [sp, #0x4c]
	str r7, [sp, #0x54]
_02102A44:
	ldr r0, [sp, #0x4c]
	str r0, [sp]
	ldr r0, [sp, #0x50]
	str r0, [sp, #4]
	ldr r0, [sp, #0x54]
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x18]
	ldr r0, [r6]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x48]
	bl FUN_02031e68
	add r0, sp, #0x1d0
	str r0, [sp]
	ldr r0, [sp, #0x210]
	add r2, sp, #0x150
	str r0, [sp, #4]
	ldr r0, [sp, #0x214]
	add r3, sp, #0x190
	str r0, [sp, #8]
	ldrb r0, [sp, #0x13b]
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldr r1, [sp, #0x48]
	bl FUN_02032040
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02102AD0:
	ldr r0, [r6]
	mov r7, #1
	bl FUN_020326e0
	tst r0, #0x50
	bne _02102B0C
	ldrsb r0, [r5, #9]
	cmp r0, #0
	beq _02102AFC
	ldr r0, [r6]
	mov r1, r7
	bl FUN_020326b4
_02102AFC:
	ldrsb r0, [r5, #0xb]
	strb r7, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02102B0C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x218
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02102B30: .word unk_0209BA20
_02102B34: .word ov16_02119C64
_02102B38: .word ov16_02119C68
_02102B3C: .word ov16_02119C6C
_02102B40: .word ov16_02119C70
_02102B44: .word ov16_02119C7C
_02102B48: .word ov16_02119C80
_02102B4C: .word ov16_02119C8C
	arm_func_end FUN_ov16_021026b0

	arm_func_start FUN_ov16_02102b50
FUN_ov16_02102b50: ; 0x02102B50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18c
	add r4, sp, #0x44
	mov r8, r0
	mov r6, r2
	mov r5, #0
	mov r7, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r7, #0xb]
	cmp r0, #0
	beq _02102B94
	cmp r0, #1
	beq _02102CA8
	b _02102CE4
_02102B94:
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020febf8
	str r0, [r7, #4]
	add r0, sp, #0x1c
	mov r1, r5
	mov r2, #0x28
	bl MI_CpuFill8
	add r4, sp, #0xc4
	mov r1, r5
	mov r0, r4
	mov r2, #0xc8
	bl MI_CpuFill8
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, [r8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_02031e68
	ldr r1, [sp, #0x48]
	cmp r1, #0
	ble _02102C60
	ldr lr, [sp, #0x50]
	ldr r12, [sp, #0x54]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x58]
	mov r0, r4
	str lr, [sp, #0x184]
	str r12, [sp, #0x188]
	bl FUN_ov16_02102478
	add r0, sp, #0x144
	str r0, [sp]
	ldr r0, [sp, #0x184]
	add r3, sp, #0x104
	str r0, [sp, #4]
	mov r2, r4
	ldr r0, [sp, #0x188]
	b _02102C88
_02102C60:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x184]
	str r0, [sp, #0x188]
	str r5, [sp]
	ldr r0, [sp, #0x184]
	mov r2, r5
	str r0, [sp, #4]
	ldr r0, [sp, #0x188]
	mov r3, r5
_02102C88:
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r8]
	ldr r1, [sp, #0x44]
	bl FUN_02032040
	ldrsb r0, [r7, #0xb]
	add r0, r0, #1
	strb r0, [r7, #0xb]
_02102CA8:
	ldr r0, [r8]
	bl FUN_020326e0
	tst r0, #0x10
	bne _02102CE4
	ldrsb r0, [r7, #9]
	cmp r0, #0
	beq _02102CD0
	ldr r0, [r8]
	mov r1, #1
	bl FUN_020326b4
_02102CD0:
	ldrsb r0, [r7, #0xb]
	mov r1, #1
	strb r1, [r7, #0xa]
	add r0, r0, #1
	strb r0, [r7, #0xb]
_02102CE4:
	cmp r6, #0
	ldrnesb r0, [r7, #0xa]
	strne r0, [r6]
	ldrsb r0, [r7, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x18c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02102b50

	arm_func_start FUN_ov16_02102d08
FUN_ov16_02102d08: ; 0x02102D08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x9c
	add r8, sp, #0x1c
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
	beq _02102D4C
	cmp r0, #1
	beq _02102DB4
	b _02102DF0
_02102D4C:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x1c]
	mov r1, r4
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r2, r4
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r3, r4
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r7]
	bl FUN_02031e68
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02102DB4:
	ldr r0, [r7]
	bl FUN_020326e0
	tst r0, #0x40
	bne _02102DF0
	ldrsb r0, [r6, #9]
	cmp r0, #0
	beq _02102DDC
	ldr r0, [r7]
	mov r1, #1
	bl FUN_020326b4
_02102DDC:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02102DF0:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x9c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02102d08

	arm_func_start FUN_ov16_02102e14
FUN_ov16_02102e14: ; 0x02102E14
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
	beq _02102E54
	cmp r0, #1
	beq _02102E88
	b _02102E9C
_02102E54:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldr r0, [r7]
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	bl FUN_02032670
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02102E88:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02102E9C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02102e14

	arm_func_start FUN_ov16_02102ec0
FUN_ov16_02102ec0: ; 0x02102EC0
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
	beq _02102F00
	cmp r0, #1
	beq _02102F34
	b _02102F48
_02102F00:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldr r0, [r7]
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	bl FUN_02032688
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02102F34:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02102F48:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02102ec0

	arm_func_start FUN_ov16_02102f6c
FUN_ov16_02102f6c: ; 0x02102F6C
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
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02102FB0
	cmp r0, #1
	beq _02102FDC
	b _02103020
_02102FB0:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6]
	mov r1, r7
	bl FUN_020326cc
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02102FDC:
	ldr r0, [r6]
	bl FUN_020326e0
	cmp r0, #0
	beq _0210300C
	ldr r0, [r6]
	bl FUN_020326e0
	tst r0, #0x80
	beq _02103020
	ldr r0, [r6]
	bl FUN_020326e0
	tst r0, #0x20
	beq _02103020
_0210300C:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02103020:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02102f6c

	arm_func_start FUN_ov16_02103044
FUN_ov16_02103044: ; 0x02103044
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	ldr r0, _021033D8 ; =0x0211798C
	mov r8, #0
	ldrb r5, [r0]
	ldrb r4, [r0, #1]
	ldrb r0, [r0, #2]
	mov r11, r1
	str r3, [sp, #4]
	strb r0, [sp, #0x12]
	movs r0, r3
	ldr r0, [sp, #0x68]
	str r2, [sp]
	mov r9, r8
	str r8, [sp, #8]
	str r8, [sp, #0xc]
	strb r5, [sp, #0x10]
	strb r4, [sp, #0x11]
	str r0, [sp, #0x68]
	ldr r6, [r11]
	mov r7, #1
	beq _021030B4
	mov r0, r3
	rsb r1, r7, #0x8000
	strh r8, [r0]
	strh r1, [r0, #2]
	add r0, r8, #1
	str r0, [sp, #0xc]
_021030B4:
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _021030CC
	mov r1, #0xff
	mov r2, #0x2a0
	bl MI_CpuFill8
_021030CC:
	ldrsb r0, [r6]
	cmp r0, #0
	beq _02103380
	ldrsb r4, [sp, #0x11]
_021030DC:
	cmp r0, #0x25
	bne _021032FC
	add r6, r6, #1
	mov r0, #0
	b _021030FC
_021030F0:
	sub r1, r1, #0x30
	add r0, r0, r1
	add r6, r6, #1
_021030FC:
	ldrsb r1, [r6]
	cmp r1, #0x30
	blt _02103110
	cmp r1, #0x39
	ble _021030F0
_02103110:
	mov r10, #0
	cmp r1, #0x64
	mov r5, r10
	bgt _02103148
	cmp r1, #0x64
	bge _0210316C
	cmp r1, #0x46
	bgt _02103290
	cmp r1, #0x43
	blt _02103290
	beq _021031D8
	cmp r1, #0x46
	beq _02103248
	b _02103290
_02103148:
	cmp r1, #0x73
	bne _02103290
	ldr r0, [r11, r7, lsl #2]
	bl STD_GetStringLength
	mov r5, r0
	ldr r1, [r11, r7, lsl #2]
	add r0, sp, #0x23
	bl STD_CopyString
	b _0210328C
_0210316C:
	ldr r2, [r11, r7, lsl #2]
	ldr r1, _021033DC ; =0x02119C90
	add r0, sp, #0x13
	bl sprintf
	add r0, sp, #0x13
	bl STD_GetStringLength
	mov r5, r0
	cmp r5, #0
	add r7, r7, #1
	ble _021031C4
	ldrsb r0, [sp, #0x10]
	add r1, sp, #0x23
_0210319C:
	add r3, sp, #0x13
	ldrsb r3, [r3, r10]
	strb r0, [r1, r10, lsl #1]
	add r2, r1, r10, lsl #1
	add r3, r4, r3
	add r10, r10, #1
	sub r3, r3, #0x30
	cmp r10, r5
	strb r3, [r2, #1]
	blt _0210319C
_021031C4:
	add r0, sp, #0x23
	mov r1, #0
	strb r1, [r0, r10, lsl #1]
	mov r5, r5, lsl #1
	b _02103290
_021031D8:
	ldr r0, [sp, #0xc]
	cmp r0, #0x10
	bge _02103290
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02103244
	ldr r0, [sp, #0xc]
	mov r2, r0, lsl #2
	ldr r0, [sp, #4]
	strh r8, [r0, r2]
	ldr r10, [r11, r7, lsl #2]
	tst r10, #0xff000000
	ldreq r1, _021033E0 ; =0x00007FFF
	addeq r0, r0, r2
	beq _02103234
	mov r1, r10, lsr #0x10
	mov r3, r1, lsl #0x1b
	mov r1, r10, lsr #8
	add r0, r0, r2
	and r2, r10, #0x1f
	mov r1, r1, lsl #0x1b
	orr r1, r2, r1, lsr #22
	orr r1, r1, r3, lsr #17
_02103234:
	strh r1, [r0, #2]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_02103244:
	b _0210328C
_02103248:
	ldr r1, [sp, #0x68]
	cmp r1, #0
	ldrne r1, [sp, #8]
	cmpne r1, #0x10
	bge _0210328C
	mov r2, #0x2a
	mul r2, r1, r2
	ldr r1, [sp, #0x68]
	strh r8, [r1, r2]
	add r2, r1, r2
	strb r0, [r2, #2]
	ldr r1, [r11, r7, lsl #2]
	add r0, r2, #0xa
	bl STD_CopyString
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0210328C:
	add r7, r7, #1
_02103290:
	cmp r5, #0
	beq _02103374
	ldr r0, _021033E4 ; =0x02099F50
	add r5, sp, #0x23
	ldr r0, [r0]
	mov r1, r5
	bl FUN_0204294c
	ldr r0, [sp]
	mov r10, #0
	mov r1, r5
	strb r10, [r0, r9]
	bl STD_ConcatenateString
	ldr r0, [sp]
	bl STD_GetStringLength
	mov r9, r0
	mov r0, r5
	bl STD_GetStringLength
	cmp r0, #0
	ble _02103374
_021032DC:
	ldrsb r1, [r5, r10]
	add r8, r8, #1
	tst r1, #0x80
	addne r10, r10, #1
	add r10, r10, #1
	cmp r10, r0
	blt _021032DC
	b _02103374
_021032FC:
	cmp r0, #0x5c
	bne _02103328
	ldrsb r0, [r6, #1]!
	cmp r0, #0x66
	beq _02103320
	cmp r0, #0x6e
	moveq r0, #0xa
	streqb r0, [r6]
	b _02103328
_02103320:
	mov r0, #0xc
	strb r0, [r6]
_02103328:
	ldrsb r0, [r6]
	cmp r0, #0xa
	cmpne r0, #0xc
	beq _0210334C
	ldr r0, _021033E4 ; =0x02099F50
	mov r1, r6
	ldr r0, [r0]
	bl FUN_02042b0c
	add r8, r8, #1
_0210334C:
	ldrsb r1, [r6]
	tst r1, #0x80
	ldrne r0, [sp]
	addne r6, r6, #1
	strneb r1, [r0, r9]
	ldrsb r1, [r6]
	ldr r0, [sp]
	addne r9, r9, #1
	strb r1, [r0, r9]
	add r9, r9, #1
_02103374:
	ldrsb r0, [r6, #1]!
	cmp r0, #0
	bne _021030DC
_02103380:
	ldr r0, [sp]
	mov r1, #0
	strb r1, [r0, r9]
	ldr r0, [sp, #0xc]
	cmp r0, #0x10
	addge sp, sp, #0x44
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x44
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0xc]
	ldr r2, _021033E0 ; =0x00007FFF
	mov r1, r0, lsl #2
	ldr r0, [sp, #4]
	strh r8, [r0, r1]
	mov r1, r0
	ldr r0, [sp, #0xc]
	add r0, r1, r0, lsl #2
	strh r2, [r0, #2]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021033D8: .word 0x0211798C
_021033DC: .word ov16_02119C90
_021033E0: .word 0x00007FFF
_021033E4: .word unk_02099F50
	arm_func_end FUN_ov16_02103044

	arm_func_start FUN_ov16_021033e8
FUN_ov16_021033e8: ; 0x021033E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x970
	add r3, sp, #0x50
	mov r6, r1
	str r3, [sp, #0xc]
	ldrsb r3, [r6, #0xb]
	mov r7, r0
	mov r5, r2
	cmp r3, #0
	beq _0210341C
	cmp r3, #1
	beq _02103558
	b _02103578
_0210341C:
	add r2, sp, #0x8f0
	bl FUN_ov16_020fed6c
	str r0, [r6, #4]
	ldr r0, [sp, #0x8f0]
	ldr r8, [r6]
	ldrsb r1, [r0], #1
	cmp r1, #0x40
	bne _02103514
	mov r1, #0
	mov r2, #0xa
_02103444:
	ldrsb r3, [r0], #1
	cmp r3, #0x30
	blt _02103460
	cmp r3, #0x39
	suble r3, r3, #0x30
	mlale r1, r2, r1, r3
	ble _02103444
_02103460:
	mov r2, #0
	mov r3, #0xa
_02103468:
	ldrsb r4, [r0], #1
	cmp r4, #0x30
	blt _02103484
	cmp r4, #0x39
	suble r4, r4, #0x30
	mlale r2, r3, r2, r4
	ble _02103468
_02103484:
	ldr r9, [r7, #8]
	mov r4, #0
	ldr r3, [r9, #0x174]
	ldr r0, _0210359C ; =0x0209C2C4
	add r1, r3, r1
	stmia sp, {r1, r2}
	add r2, sp, #0xc
	mov r3, r4
	str r4, [sp, #8]
	add r1, r9, #0x16c
	bl FUN_0202f500
	ldrb r1, [r8, #6]
	mov r0, r4
	cmp r1, #0
	ble _02103514
	add r9, sp, #0x50
	add r2, sp, #0x8f0
_021034C8:
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r1, r1, asr #3
	add r3, r8, r1, lsl #2
	mov r1, r0, lsl #0x1d
	ldr r3, [r3, #8]
	mov r1, r1, lsr #0x1b
	mov r1, r3, asr r1
	and r1, r1, #0xf
	cmp r1, #3
	addeq r3, r9, r4
	ldreqb r1, [r3, #3]
	addeq r3, r3, #4
	streq r3, [r2, r0, lsl #2]
	addeq r4, r4, r1
	ldrb r1, [r8, #6]
	add r0, r0, #1
	cmp r0, r1
	blt _021034C8
_02103514:
	add r9, sp, #0x450
	add r8, sp, #0x6f0
	add r4, sp, #0x10
	add r1, sp, #0x8f0
	mov r0, r7
	mov r2, r8
	mov r3, r4
	str r9, [sp]
	bl FUN_ov16_02103044
	ldr r0, [r7]
	mov r1, r8
	mov r2, r4
	mov r3, r9
	bl FUN_02032498
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02103558:
	ldr r0, [r7]
	bl FUN_020326e0
	tst r0, #2
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_02103578:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x970
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210359C: .word unk_0209C2C4
	arm_func_end FUN_ov16_021033e8

	arm_func_start FUN_ov16_021035a0
FUN_ov16_021035a0: ; 0x021035A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r9, r0
	mov r8, r1
	mov r4, #0x80
	mov r7, r2
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldrsb r0, [r8, #0xb]
	cmp r0, #0
	beq _021035E4
	cmp r0, #1
	beq _02103664
	b _02103678
_021035E4:
	mov r0, r9
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020febf8
	str r0, [r8, #4]
	ldr r0, [sp]
	add r0, r0, #1
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0210364C
_0210360C: ; jump table
	b _02103624 ; case 0
	b _0210362C ; case 1
	b _02103630 ; case 2
	b _02103638 ; case 3
	b _02103640 ; case 4
	b _02103648 ; case 5
_02103624:
	sub r6, r4, #0x81
	b _0210364C
_0210362C:
	b _02103648
_02103630:
	mov r6, #0xc
	b _0210364C
_02103638:
	mov r6, #0xb
	b _0210364C
_02103640:
	mov r6, #0xd
	b _0210364C
_02103648:
	mov r6, #0xa
_0210364C:
	ldr r0, [r9]
	mov r1, r6
	bl FUN_020326a8
	ldrsb r0, [r8, #0xb]
	add r0, r0, #1
	strb r0, [r8, #0xb]
_02103664:
	ldrsb r0, [r8, #0xb]
	mov r1, #1
	strb r1, [r8, #0xa]
	add r0, r0, #1
	strb r0, [r8, #0xb]
_02103678:
	cmp r7, #0
	ldrnesb r0, [r8, #0xa]
	strne r0, [r7]
	ldrsb r0, [r8, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_021035a0

	arm_func_start FUN_ov16_0210369c
FUN_ov16_0210369c: ; 0x0210369C
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
	beq _021036DC
	cmp r0, #1
	beq _02103708
	b _02103728
_021036DC:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7]
	bl FUN_020322bc
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02103728
_02103708:
	ldr r0, [r7]
	bl FUN_020326e0
	tst r0, #0x100
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02103728:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210369c

	arm_func_start FUN_ov16_0210374c
FUN_ov16_0210374c: ; 0x0210374C
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
	beq _0210378C
	cmp r0, #1
	beq _021037C0
	b _021037E0
_0210378C:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_02032384
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _021037E0
_021037C0:
	ldr r0, [r7]
	bl FUN_020326e0
	tst r0, #0x100
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_021037E0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210374c

	arm_func_start FUN_ov16_02103804
FUN_ov16_02103804: ; 0x02103804
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
	beq _02103844
	cmp r0, #1
	beq _02103870
	b _02103890
_02103844:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7]
	bl FUN_02032488
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02103890
_02103870:
	ldr r0, [r7]
	bl FUN_020326e0
	tst r0, #0x200
	moveq r0, #1
	ldreqsb r1, [r5, #0xb]
	streqb r0, [r5, #0xa]
	addeq r0, r1, #1
	streqb r0, [r5, #0xb]
_02103890:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02103804

	arm_func_start FUN_ov16_021038b4
FUN_ov16_021038b4: ; 0x021038B4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, r1
	ldrsb r3, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r3, #0
	beq _021038E0
	cmp r3, #1
	beq _02103924
	b _02103944
_021038E0:
	add r2, sp, #0
	bl FUN_ov16_020fed6c
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _02103904
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02103944
_02103904:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, _02103968 ; =0x0209AC44
	bl FUN_0202ceb0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02103944
_02103924:
	ldr r0, _02103968 ; =0x0209AC44
	bl FUN_0202b7f0
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02103944:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_02103968: .word unk_0209AC44
	arm_func_end FUN_ov16_021038b4

	arm_func_start FUN_ov16_0210396c
FUN_ov16_0210396c: ; 0x0210396C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021039AC
	cmp r0, #1
	beq _02103A1C
	b _02103A68
_021039AC:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02103A68
	ldr r2, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5]
	orr r1, r1, r2, lsl #14
	str r1, [r5, #0xc]
	ldr r2, [sp, #8]
	ldr r1, _02103A8C ; =0x00003015
	str r2, [r5, #0x10]
	ldr r2, [sp, #0xc]
	str r2, [r5, #0x18]
	ldr r2, [sp, #0x10]
	str r2, [r5, #0x1c]
	strh r1, [r0, #4]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r5, #0x1c]
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02103A1C:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _02103A68
	ldr r1, [r5, #0xc]
	ldr r0, _02103A90 ; =0x0209AC44
	bl FUN_0202cf6c
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x18]
	subs r0, r0, #1
	str r0, [r5, #0x1c]
	ldreqsb r0, [r5, #0xb]
	str r1, [r5, #0x10]
	moveq r1, #1
	addeq r0, r0, #1
	streqb r1, [r5, #0xa]
	streqb r0, [r5, #0xb]
_02103A68:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02103A8C: .word 0x00003015
_02103A90: .word unk_0209AC44
	arm_func_end FUN_ov16_0210396c

	arm_func_start FUN_ov16_02103a94
FUN_ov16_02103a94: ; 0x02103A94
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	add r4, sp, #4
	mov r10, r0
	str r2, [sp]
	mov r8, #0
	mov r9, r1
	mov r0, r4
	mov r1, r8
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r9, #0xb]
	cmp r0, #0
	beq _02103AE4
	cmp r0, #1
	addeq r0, r0, #1
	moveq r1, #1
	streqb r1, [r9, #0xa]
	streqb r0, [r9, #0xb]
	b _02103BA4
_02103AE4:
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov16_020febf8
	str r0, [r9, #4]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	mov r6, r9
	cmp r9, #0
	orr r7, r0, r1, lsl #14
	beq _02103B98
	ldr r4, _02103BCC ; =0x0209AC44
	ldr r5, _02103BD0 ; =0x00003015
	mov r11, r8
_02103B1C:
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020feb9c
	mov r6, r0
	cmp r7, #0
	beq _02103B90
	ldr r0, [sp, #8]
	ldr r1, [r6, #0xc]
	cmp r0, #0
	beq _02103B68
	cmp r1, r7
	bne _02103B90
	ldr r0, _02103BCC ; =0x0209AC44
	mov r2, #0
	bl FUN_0202cfd8
	mov r0, #1
	strb r0, [r6, #0xa]
	b _02103B98
_02103B68:
	ldr r0, [sp, #4]
	cmp r0, r1, asr #14
	bne _02103B80
	mov r0, r4
	mov r2, r11
	bl FUN_0202cfd8
_02103B80:
	ldr r0, [r10, #0x138]
	add r8, r8, #1
	cmp r8, r0
	beq _02103B98
_02103B90:
	cmp r6, #0
	bne _02103B1C
_02103B98:
	ldrsb r0, [r9, #0xb]
	add r0, r0, #1
	strb r0, [r9, #0xb]
_02103BA4:
	ldr r0, [sp]
	cmp r0, #0
	ldrnesb r1, [r9, #0xa]
	strne r1, [r0]
	ldrsb r0, [r9, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02103BCC: .word unk_0209AC44
_02103BD0: .word 0x00003015
	arm_func_end FUN_ov16_02103a94

	arm_func_start FUN_ov16_02103bd4
FUN_ov16_02103bd4: ; 0x02103BD4
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
	beq _02103C18
	cmp r0, #1
	moveq r0, #1
	streqb r0, [r5, #0xa]
	b _02103C44
_02103C18:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldr r0, _02103C68 ; =0x0209AC44
	bl FUN_0202cf00
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02103C44:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02103C68: .word unk_0209AC44
	arm_func_end FUN_ov16_02103bd4

	arm_func_start FUN_ov16_02103c6c
FUN_ov16_02103c6c: ; 0x02103C6C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, r1
	ldrsb r3, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r3, #0
	beq _02103C98
	cmp r3, #1
	beq _02103D1C
	b _02103D40
_02103C98:
	add r2, sp, #0
	bl FUN_ov16_020fed6c
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _02103CB8
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02103D40
_02103CB8:
	ldr r1, [sp]
	ldr r6, _02103D64 ; =0x0209AC44
	str r1, [r5, #0xc]
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
	mov r0, r6
	add r3, r3, #1
	bl FUN_0202bfb8
	mov r0, r6
	mov r1, #8
	bl FUN_0202db98
	ldr r0, [sp, #0xc]
	cmp r0, #1
	moveq r0, #1
	streqb r0, [r5, #0xa]
	beq _02103D0C
	ldr r0, [sp, #4]
	ldrsb r0, [r0]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r5, #0xa]
_02103D0C:
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02103D40
_02103D1C:
	ldr r1, [r5, #0xc]
	ldr r0, _02103D64 ; =0x0209AC44
	bl FUN_0202d060
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02103D40:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_02103D64: .word unk_0209AC44
	arm_func_end FUN_ov16_02103c6c

	arm_func_start FUN_ov16_02103d68
FUN_ov16_02103d68: ; 0x02103D68
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, r1
	ldrsb r3, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r3, #0
	beq _02103D94
	cmp r3, #1
	beq _02103DD4
	b _02103E40
_02103D94:
	add r2, sp, #0
	bl FUN_ov16_020fed6c
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02103E40
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0x10]
	ldr r1, [sp, #8]
	str r1, [r5, #0x14]
	ldr r1, [sp, #0xc]
	str r1, [r5, #0x18]
	strb r0, [r5, #0xb]
_02103DD4:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _02103E40
	ldr r0, [r5, #0x18]
	cmp r0, #2
	bne _02103E0C
	ldr r1, [r5, #0xc]
	ldr r0, _02103E64 ; =0x0209AC44
	bl FUN_0202d060
	cmp r0, #0
	beq _02103E40
_02103E0C:
	ldr r0, [r5, #0x18]
	mov r2, #0
	cmp r0, #1
	ldr r1, [r5, #0xc]
	ldr r3, [r5, #0x14]
	ldr r0, _02103E64 ; =0x0209AC44
	subeq r2, r2, #1
	bl FUN_0202c364
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02103E40:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_02103E64: .word unk_0209AC44
	arm_func_end FUN_ov16_02103d68

	arm_func_start FUN_ov16_02103e68
FUN_ov16_02103e68: ; 0x02103E68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02103EA8
	cmp r0, #1
	beq _02103EEC
	b _02103F28
_02103EA8:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02103F28
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0x10]
	ldr r1, [sp, #8]
	str r1, [r5, #0x14]
	strb r0, [r5, #0xb]
_02103EEC:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _02103F28
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x14]
	ldr r0, _02103F4C ; =0x0209AC44
	bl FUN_0202c4ac
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02103F28:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02103F4C: .word unk_0209AC44
	arm_func_end FUN_ov16_02103e68

	arm_func_start FUN_ov16_02103f50
FUN_ov16_02103f50: ; 0x02103F50
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02103F90
	cmp r0, #1
	beq _02103FC8
	b _02104004
_02103F90:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0x10]
	ldr r1, [sp, #8]
	str r1, [r5, #0x14]
	strb r0, [r5, #0xb]
_02103FC8:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _02104004
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x14]
	ldr r0, _02104028 ; =0x0209AC44
	bl FUN_0202c44c
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104004:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104028: .word unk_0209AC44
	arm_func_end FUN_ov16_02103f50

	arm_func_start FUN_ov16_0210402c
FUN_ov16_0210402c: ; 0x0210402C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xa0
	add r8, sp, #0x20
	mov r9, r0
	mov r5, r2
	mov r4, #0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	ldr r7, _02104194 ; =0x0209AC44
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02104074
	cmp r0, #1
	beq _02104150
	b _02104170
_02104074:
	mov r0, r9
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021040AC
	ldr r0, _02104194 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202c5a4
	cmp r0, #0
	movne r0, #1
	strne r0, [r6, #0xc]
_021040AC:
	ldr r2, [sp, #0x20]
	cmp r2, #0
	beq _021040DC
	add r8, sp, #0
	ldr r1, _02104198 ; =0x02119C94
	mov r0, r8
	bl sprintf
	mov r1, #0
	ldr r0, _02104194 ; =0x0209AC44
	mov r2, r8
	mov r3, r1
	bl FUN_0202bec0
_021040DC:
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _0210410C
	add r8, sp, #0
	ldr r1, _0210419C ; =0x02119C9C
	mov r0, r8
	bl sprintf
	ldr r0, _02104194 ; =0x0209AC44
	mov r2, r8
	mov r1, #1
	mov r3, #0
	bl FUN_0202bec0
_0210410C:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _02104140
	ldr r1, [sp, #0x20]
	mov r0, r7
	mov r2, r4
	mov r3, r4
	bl FUN_0202c364
	ldr r1, [sp, #0x24]
	mov r0, r7
	mov r2, r4
	mov r3, r4
	bl FUN_0202c364
_02104140:
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	b _02104170
_02104150:
	ldr r0, _02104194 ; =0x0209AC44
	bl FUN_0202b7b4
	cmp r0, #0
	ldrnesb r0, [r6, #0xb]
	movne r1, #1
	strneb r1, [r6, #0xa]
	addne r0, r0, #1
	strneb r0, [r6, #0xb]
_02104170:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xa0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02104194: .word unk_0209AC44
_02104198: .word ov16_02119C94
_0210419C: .word ov16_02119C9C
	arm_func_end FUN_ov16_0210402c

	arm_func_start FUN_ov16_021041a0
FUN_ov16_021041a0: ; 0x021041A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021041E0
	cmp r0, #1
	beq _02104210
	b _02104250
_021041E0:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0x10]
	strb r0, [r5, #0xb]
_02104210:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _02104250
	mov r2, #0
	ldr r1, [r5, #0xc]
	ldr r0, _02104274 ; =0x0209AC44
	mov r3, r2
	bl FUN_0202c314
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104250:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104274: .word unk_0209AC44
	arm_func_end FUN_ov16_021041a0

	arm_func_start FUN_ov16_02104278
FUN_ov16_02104278: ; 0x02104278
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
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _021042C4
	cmp r0, #1
	beq _0210430C
	cmp r0, #2
	beq _02104340
	b _02104354
_021042C4:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	str r4, [r6, #0xc]
	ldr r1, [sp, #8]
	ldr r0, _02104378 ; =0x0209AC44
	str r1, [r6, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r3, r1, lsl #0x18
	mov r1, r4
	mov r3, r3, asr #0x18
	bl FUN_0202d4c4
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_0210430C:
	ldr r1, [r6, #0x10]
	ldr r0, [r7, #0x178]
	sub r0, r1, r0
	str r0, [r6, #0x10]
	cmp r0, #0
	bgt _02104354
	ldr r1, [r6, #0xc]
	ldr r0, _02104378 ; =0x0209AC44
	mov r2, #0
	bl FUN_0202d594
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02104340:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02104354:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104378: .word unk_0209AC44
	arm_func_end FUN_ov16_02104278

	arm_func_start FUN_ov16_0210437c
FUN_ov16_0210437c: ; 0x0210437C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021043BC
	cmp r0, #1
	beq _021043F4
	b _02104430
_021043BC:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0x10]
	ldr r1, [sp, #8]
	str r1, [r5, #0x14]
	strb r0, [r5, #0xb]
_021043F4:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _02104430
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x14]
	ldr r0, _02104454 ; =0x0209AC44
	bl FUN_0202d774
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104430:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104454: .word unk_0209AC44
	arm_func_end FUN_ov16_0210437c

	arm_func_start FUN_ov16_02104458
FUN_ov16_02104458: ; 0x02104458
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
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021044A4
	cmp r0, #1
	beq _021044D8
	cmp r0, #2
	beq _021044F8
	b _02104520
_021044A4:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	str r7, [r5, #0xc]
	ldr r2, [sp, #4]
	add r0, r1, #1
	str r2, [r5, #0x10]
	ldr r1, [sp, #8]
	str r1, [r5, #0x14]
	strb r0, [r5, #0xb]
_021044D8:
	ldr r1, [r5, #0xc]
	ldr r0, _02104544 ; =0x0209AC44
	bl FUN_0202d6c4
	cmp r0, #0
	bne _02104520
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021044F8:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	cmp r0, #0
	str r0, [r5, #0x10]
	ldrlesb r0, [r5, #0xb]
	movle r1, #1
	strleb r1, [r5, #0xa]
	addle r0, r0, #1
	strleb r0, [r5, #0xb]
_02104520:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104544: .word unk_0209AC44
	arm_func_end FUN_ov16_02104458

	arm_func_start FUN_ov16_02104548
FUN_ov16_02104548: ; 0x02104548
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
	beq _02104590
	cmp r0, #1
	beq _021045DC
	cmp r0, #2
	beq _02104608
	b _02104630
_02104590:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	str r2, [r5, #0x10]
	ldr r0, [r7]
	ldr r3, [sp, #8]
	bl FUN_02035c98
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r5, #0xa]
_021045CC:
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02104630
_021045DC:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_020362b0
	tst r0, #0x10
	bne _02104630
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_02035db0
	b _021045CC
_02104608:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_020362b0
	tst r0, #2
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02104630:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104548

	arm_func_start FUN_ov16_02104654
FUN_ov16_02104654: ; 0x02104654
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
	beq _02104694
	cmp r0, #1
	beq _021046CC
	b _021046E0
_02104694:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	str r2, [r5, #0x10]
	ldr r0, [r7]
	bl FUN_02035d64
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021046CC:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021046E0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104654

	arm_func_start FUN_ov16_02104704
FUN_ov16_02104704: ; 0x02104704
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
	beq _02104744
	cmp r0, #1
	beq _02104780
	b _02104794
_02104744:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	str r2, [r5, #0x10]
	ldr r0, [r7]
	ldr r3, [sp, #8]
	bl FUN_02035dec
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104780:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104794:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104704

	arm_func_start FUN_ov16_021047b8
FUN_ov16_021047b8: ; 0x021047B8
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
	beq _021047F8
	cmp r0, #1
	beq _02104844
	b _02104858
_021047F8:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
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
	bl FUN_02035e30
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104844:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104858:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021047b8

	arm_func_start FUN_ov16_0210487c
FUN_ov16_0210487c: ; 0x0210487C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x94
	add r8, sp, #0x14
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
	beq _021048C0
	cmp r0, #1
	beq _02104928
	b _02104950
_021048C0:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x14]
	str r0, [r6, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r6, #0x10]
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	ldr r3, [sp, #0x2c]
	bl FUN_02035e74
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02104928:
	ldr r0, [r7]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	bl FUN_020362b0
	tst r0, #0x100
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_02104950:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x94
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210487c

	arm_func_start FUN_ov16_02104974
FUN_ov16_02104974: ; 0x02104974
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
	beq _021049B4
	cmp r0, #1
	beq _02104A00
	b _02104A28
_021049B4:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
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
	bl FUN_02035fe4
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104A00:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_020362b0
	tst r0, #0x200
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02104A28:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104974

	arm_func_start FUN_ov16_02104a4c
FUN_ov16_02104a4c: ; 0x02104A4C
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
	beq _02104A8C
	cmp r0, #1
	beq _02104B00
	b _02104B40
_02104A8C:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _02104AB8
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02104B40
_02104AB8:
	ldr r0, [sp, #4]
	str r0, [r5, #0xc]
	ldr r0, [sp, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	cmp r3, #0
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	beq _02104AF0
	b _02104AF4
_02104AF0:
	ldr r3, [r6, #0x13c]
_02104AF4:
	bl FUN_020361b8
	ldrsb r0, [r5, #0xb]
	b _02104B38
_02104B00:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_020362b0
	tst r0, #0x10
	bne _02104B40
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	bl FUN_0203620c
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
_02104B38:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104B40:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104a4c

	arm_func_start FUN_ov16_02104b64
FUN_ov16_02104b64: ; 0x02104B64
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
	beq _02104BA4
	cmp r0, #1
	beq _02104BFC
	b _02104C40
_02104BA4:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02104C40
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
	bl FUN_02036248
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104BFC:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_020362b0
	tst r0, #4
	bne _02104C2C
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_020362b0
	tst r0, #8
	bne _02104C40
_02104C2C:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104C40:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104b64

	arm_func_start FUN_ov16_02104c64
FUN_ov16_02104c64: ; 0x02104C64
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02104CA4
	cmp r0, #1
	beq _02104CE8
	b _02104D2C
_02104CA4:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02104D2C
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r2, [sp, #4]
	add r0, r0, #1
	mov r1, #1
	str r2, [r5, #0x10]
	strb r1, [r5, #9]
	strb r0, [r5, #0xb]
_02104CE8:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_020362b0
	tst r0, #4
	bne _02104D18
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_020362b0
	tst r0, #8
	bne _02104D2C
_02104D18:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104D2C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104c64

	arm_func_start FUN_ov16_02104d50
FUN_ov16_02104d50: ; 0x02104D50
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
	beq _02104D98
	cmp r0, #1
	beq _02104DE8
	cmp r0, #2
	beq _02104E0C
	b _02104E30
_02104D98:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7, #0x150]
	cmp r0, #0
	beq _02104DC4
	ldr r0, [r7, #0x15c]
	cmp r0, #0
	beq _02104E30
_02104DC4:
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	ldr r2, [sp, #4]
	bl FUN_02036590
_02104DD8:
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02104E30
_02104DE8:
	ldr r0, [r7]
	ldr r1, [r5, #0x10]
	bl FUN_02036920
	tst r0, #0x10
	bne _02104E30
	ldr r0, [r7]
	ldr r1, [r5, #0x10]
	bl FUN_0203664c
	b _02104DD8
_02104E0C:
	ldr r0, [r7]
	ldr r1, [r5, #0x10]
	bl FUN_02036920
	tst r0, #2
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02104E30:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104d50

	arm_func_start FUN_ov16_02104e54
FUN_ov16_02104e54: ; 0x02104E54
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
	beq _02104E94
	cmp r0, #1
	beq _02104EC4
	b _02104ED8
_02104E94:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	bl FUN_02036604
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104EC4:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104ED8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104e54

	arm_func_start FUN_ov16_02104efc
FUN_ov16_02104efc: ; 0x02104EFC
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
	beq _02104F3C
	cmp r0, #1
	beq _02104F70
	b _02104F84
_02104F3C:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	ldr r2, [sp, #4]
	bl FUN_020366a0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104F70:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02104F84:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104efc

	arm_func_start FUN_ov16_02104fa8
FUN_ov16_02104fa8: ; 0x02104FA8
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
	beq _02104FE8
	cmp r0, #1
	beq _02105020
	b _02105034
_02104FE8:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_020366d8
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105020:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105034:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02104fa8

	arm_func_start FUN_ov16_02105058
FUN_ov16_02105058: ; 0x02105058
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
	beq _02105098
	cmp r0, #1
	beq _021050E8
	b _0210510C
_02105098:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_02036714
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _0210510C
_021050E8:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02036920
	tst r0, #0x100
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_0210510C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02105058

	arm_func_start FUN_ov16_02105130
FUN_ov16_02105130: ; 0x02105130
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
	beq _02105170
	cmp r0, #1
	beq _021051D0
	b _02105208
_02105170:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7, #0x150]
	cmp r0, #0
	beq _0210519C
	ldr r0, [r7, #0x15c]
	cmp r0, #0
	beq _02105208
_0210519C:
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r3, [sp, #4]
	str r3, [r5, #0x14]
	ldr r2, [sp, #8]
	ldr r0, [r7]
	cmp r2, #0
	beq _021051C0
	b _021051C4
_021051C0:
	ldr r2, [r7, #0x13c]
_021051C4:
	bl FUN_0203681c
	ldrsb r0, [r5, #0xb]
	b _02105200
_021051D0:
	ldr r0, [r7]
	ldr r1, [r5, #0x10]
	bl FUN_02036920
	tst r0, #0x10
	bne _02105208
	ldr r0, [r7]
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	bl FUN_02036890
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
_02105200:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105208:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02105130

	arm_func_start FUN_ov16_0210522c
FUN_ov16_0210522c: ; 0x0210522C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _0210526C
	cmp r0, #1
	beq _021052B0
	b _021052EC
_0210526C:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _021052EC
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r6]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_020368c8
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021052B0:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02036920
	tst r0, #4
	bne _021052D8
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02036920
	tst r0, #8
	bne _021052EC
_021052D8:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021052EC:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210522c

	arm_func_start FUN_ov16_02105310
FUN_ov16_02105310: ; 0x02105310
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02105350
	cmp r0, #1
	beq _0210538C
	b _021053C8
_02105350:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _021053C8
	ldrsb r0, [r5, #0xb]
	ldr r2, [sp]
	mov r1, #1
	add r0, r0, #1
	str r2, [r5, #0x10]
	strb r1, [r5, #9]
	strb r0, [r5, #0xb]
_0210538C:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02036920
	tst r0, #4
	bne _021053B4
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02036920
	tst r0, #8
	bne _021053C8
_021053B4:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021053C8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02105310

	arm_func_start FUN_ov16_021053ec
FUN_ov16_021053ec: ; 0x021053EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	mov r6, r0
	mov r5, r1
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	mov r4, r2
	bl FUN_02037154
	add r7, sp, #0
	mov r8, r0
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02105444
	cmp r0, #1
	beq _021054A8
	cmp r0, #2
	beq _021054CC
	b _021054F0
_02105444:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _02105470
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _021054F0
_02105470:
	ldr r0, [sp]
	str r0, [r5, #0x10]
	ldr r3, [sp, #8]
	mov r0, #0x64
	cmp r3, #0
	ldrne r1, [sp, #4]
	mlane r2, r3, r0, r1
	ldreq r2, [sp, #4]
	ldreq r1, [r6, #0x13c]
	mlaeq r2, r1, r0, r2
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02036b3c
	b _021054C4
_021054A8:
	tst r8, #0x10
	bne _021054F0
	tst r8, #1
	beq _021054C4
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02036bd0
_021054C4:
	ldrsb r0, [r5, #0xb]
	b _021054E8
_021054CC:
	tst r8, #1
	beq _021054DC
	tst r8, #2
	beq _021054F0
_021054DC:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
_021054E8:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021054F0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_021053ec

	arm_func_start FUN_ov16_02105514
FUN_ov16_02105514: ; 0x02105514
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
	beq _02105554
	cmp r0, #1
	beq _02105584
	b _02105598
_02105554:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	bl FUN_02036b8c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105584:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105598:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02105514

	arm_func_start FUN_ov16_021055bc
FUN_ov16_021055bc: ; 0x021055BC
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
	beq _021055FC
	cmp r0, #1
	beq _021056C0
	b _021056E4
_021055FC:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	ldr r7, _02105708 ; =0x02099EF0
	str r0, [r5, #0x10]
	ldr r0, [r7]
	cmp r0, #0
	beq _02105690
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _02105690
	ldr r0, [r7]
	bl FUN_ov132_02159df0
	movs r7, r0
	beq _02105690
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	bne _02105690
	mov r0, r7
	bl FUN_ov132_0215a440
	mov r1, r0
	ldr r0, _0210570C ; =0x0209BA20
	bl FUN_0204b0ac
	cmp r0, #0
	ldrneb r0, [r0, #2]
	cmpne r0, #2
	beq _02105690
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	rsb r1, r1, #0x100000
	rsb r0, r0, #0xc0000
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_02105690:
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_02036c14
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021056C0:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02037154
	tst r0, #0x100
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_021056E4:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02105708: .word unk_02099EF0
_0210570C: .word unk_0209BA20
	arm_func_end FUN_ov16_021055bc

	arm_func_start FUN_ov16_02105710
FUN_ov16_02105710: ; 0x02105710
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
	beq _02105750
	cmp r0, #1
	beq _0210579C
	b _021057C0
_02105750:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_02036d18
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_0210579C:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02037154
	tst r0, #0x200
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_021057C0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02105710

	arm_func_start FUN_ov16_021057e4
FUN_ov16_021057e4: ; 0x021057E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x88
	add r8, sp, #8
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
	beq _02105828
	cmp r0, #1
	beq _02105894
	b _021058A8
_02105828:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r1, [sp, #8]
	ldr r0, [r6]
	str r1, [r6, #0x10]
	ldrb r0, [r0, #6]
	cmp r0, #4
	blo _02105870
	ldr r0, [sp, #0x14]
	stmia sp, {r0, r4}
	ldr r0, [r7]
	ldr r1, [r6, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	b _02105884
_02105870:
	ldr r2, [sp, #0xc]
	stmia sp, {r2, r4}
	ldr r0, [r7]
	ldr r1, [r6, #0x10]
	mov r3, r2
_02105884:
	bl FUN_02036f50
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02105894:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_021058A8:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_021057e4

	arm_func_start FUN_ov16_021058cc
FUN_ov16_021058cc: ; 0x021058CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _0210590C
	cmp r0, #1
	beq _02105950
	b _0210598C
_0210590C:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _0210598C
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r6]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_02036f98
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105950:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02037154
	tst r0, #4
	bne _02105978
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02037154
	tst r0, #8
	bne _0210598C
_02105978:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_0210598C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021058cc

	arm_func_start FUN_ov16_021059b0
FUN_ov16_021059b0: ; 0x021059B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021059F0
	cmp r0, #1
	beq _02105A2C
	b _02105A68
_021059F0:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02105A68
	ldrsb r0, [r5, #0xb]
	ldr r2, [sp]
	mov r1, #1
	add r0, r0, #1
	str r2, [r5, #0x10]
	strb r1, [r5, #9]
	strb r0, [r5, #0xb]
_02105A2C:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02037154
	tst r0, #4
	bne _02105A54
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02037154
	tst r0, #8
	bne _02105A68
_02105A54:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105A68:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021059b0

	arm_func_start FUN_ov16_02105a8c
FUN_ov16_02105a8c: ; 0x02105A8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x8c
	add r6, sp, #0xc
	mov r9, r0
	mov r7, r2
	mov r5, #0
	mov r8, r1
	mov r0, r6
	mov r1, r5
	mov r2, #0x80
	mov r4, #1
	bl MI_CpuFill8
	ldrsb r0, [r8, #0xb]
	cmp r0, #0
	beq _02105AD4
	cmp r0, #1
	beq _02105B80
	b _02105B90
_02105AD4:
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r8, #4]
	ldr r0, [sp, #0x1c]
	ldr r10, _02105BB4 ; =0x02099EF0
	cmp r0, #1
	moveq r5, r4
	cmp r5, #0
	movne r5, #1
	ldr r0, [r10]
	moveq r5, #0
	mov r6, #0
	cmp r0, #0
	beq _02105B58
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _02105B58
	ldr r0, [r10]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _02105B58
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	bne _02105B58
	ldr r0, [sp, #0x20]
	cmp r0, #1
	moveq r6, #1
	cmp r6, #0
	movne r6, #1
	moveq r6, #0
_02105B58:
	ldr r0, [sp, #0x18]
	stmia sp, {r0, r5, r6}
	ldr r0, [r9]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_02037008
	ldrsb r0, [r8, #0xb]
	add r0, r0, #1
	strb r0, [r8, #0xb]
_02105B80:
	ldrsb r0, [r8, #0xb]
	strb r4, [r8, #0xa]
	add r0, r0, #1
	strb r0, [r8, #0xb]
_02105B90:
	cmp r7, #0
	ldrnesb r0, [r8, #0xa]
	strne r0, [r7]
	ldrsb r0, [r8, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02105BB4: .word unk_02099EF0
	arm_func_end FUN_ov16_02105a8c

	arm_func_start FUN_ov16_02105bb8
FUN_ov16_02105bb8: ; 0x02105BB8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	mov r6, r0
	mov r5, r1
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	mov r4, r2
	bl FUN_02037728
	add r7, sp, #0
	mov r8, r0
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02105C08
	cmp r0, #1
	beq _02105C58
	b _02105C88
_02105C08:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _02105C34
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02105C88
_02105C34:
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r6]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_02037440
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	b _02105C84
_02105C58:
	tst r8, #4
	bne _02105C88
	tst r8, #1
	beq _02105C74
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020375ec
_02105C74:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r0, r1, #1
_02105C84:
	strb r0, [r5, #0xb]
_02105C88:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02105bb8

	arm_func_start FUN_ov16_02105cac
FUN_ov16_02105cac: ; 0x02105CAC
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
	beq _02105CEC
	cmp r0, #1
	beq _02105D1C
	b _02105D30
_02105CEC:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	bl FUN_02037514
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105D1C:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105D30:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02105cac

	arm_func_start FUN_ov16_02105d54
FUN_ov16_02105d54: ; 0x02105D54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r6, sp, #8
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02105D94
	cmp r0, #1
	beq _02105DE0
	b _02105DF4
_02105D94:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_02037744
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp, #8]
	add r0, r0, #1
	str r1, [r5, #0xc]
	strb r0, [r5, #0xb]
_02105DE0:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02105DF4:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02105d54

	arm_func_start FUN_ov16_02105e18
FUN_ov16_02105e18: ; 0x02105E18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x88
	add r8, sp, #8
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _02105E70
	cmp r1, #1
	beq _02105EC8
	b _02105EEC
_02105E70:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	strne r7, [sp, #0x14]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_02037818
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp, #8]
	add r0, r0, #1
	str r1, [r5, #0xc]
	strb r0, [r5, #0xb]
_02105EC8:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_02037728
	tst r0, #0x10
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02105EEC:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02105e18

	arm_func_start FUN_ov16_02105f10
FUN_ov16_02105f10: ; 0x02105F10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r8, sp, #4
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _02105F68
	cmp r1, #1
	beq _02106010
	b _02106024
_02105F68:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	ldr r0, [sp, #8]
	strne r7, [sp, #0xc]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02105FAC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02105FB8
_02105FAC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02105FB8:
	bl _ffix
	ldr r1, _02106048 ; =0x0B60B60B
	mov r2, #0xb6
	umull r12, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	ldr lr, [sp, #0x10]
	adds r0, r12, #0
	str lr, [sp]
	adc r0, r3, #0x800
	mov r2, r0, lsl #4
	ldr r0, [r6]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	mov r2, r2, lsr #0x10
	bl FUN_0203793c
	ldrsb r0, [r5, #0xb]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0xc]
	strb r0, [r5, #0xb]
_02106010:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106024:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02106048: .word 0x0B60B60B
	arm_func_end FUN_ov16_02105f10

	arm_func_start FUN_ov16_0210604c
FUN_ov16_0210604c: ; 0x0210604C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x90
	mov r5, r1
	ldrsb r3, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r3, #0
	beq _02106080
	cmp r3, #1
	beq _02106150
	cmp r3, #2
	beq _02106174
	b _02106198
_02106080:
	add r2, sp, #0x10
	bl FUN_ov16_020fed6c
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _021060A4
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02106198
_021060A4:
	ldr r0, [sp, #0x10]
	mov r7, #0
	str r0, [r5, #0x10]
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _021060D8
	cmp r1, #1
	subeq r7, r7, #1
	beq _021060D8
	ldr r0, _021061BC ; =0x02099EB0
	ldr r0, [r0]
	bl FUN_0205e1e8
	mov r7, r0
_021060D8:
	ldr r0, [sp, #0x14]
	ldr r1, _021061C0 ; =0x02119CA4
	bl STD_CompareString
	cmp r0, #0
	mov r0, #0
	bne _0210611C
	ldr r1, [sp, #0x18]
	mov r3, #4
	stmia sp, {r1, r7}
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [sp, #0x14]
	bl FUN_02037c98
	b _02106140
_0210611C:
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl FUN_02037dd8
_02106140:
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02106198
_02106150:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #0x10
	bne _02106198
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02037fb0
	b _02106140
_02106174:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #2
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02106198:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021061BC: .word unk_02099EB0
_021061C0: .word ov16_02119CA4
	arm_func_end FUN_ov16_0210604c

	arm_func_start FUN_ov16_021061c4
FUN_ov16_021061c4: ; 0x021061C4
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
	beq _02106210
	cmp r0, #1
	addeq r0, r0, #1
	moveq r1, #1
	streqb r1, [r5, #0xa]
	streqb r0, [r5, #0xb]
	b _02106240
_02106210:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	bl FUN_02037ef0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106240:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021061c4

	arm_func_start FUN_ov16_02106264
FUN_ov16_02106264: ; 0x02106264
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
	beq _021062A4
	cmp r0, #1
	beq _021062D8
	b _021062EC
_021062A4:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	ldr r2, [sp, #4]
	bl FUN_020388c0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021062D8:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021062EC:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02106264

	arm_func_start FUN_ov16_02106310
FUN_ov16_02106310: ; 0x02106310
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
	beq _02106350
	cmp r0, #1
	beq _02106384
	b _02106398
_02106350:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	ldr r2, [sp, #4]
	bl FUN_02037fe8
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106384:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106398:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02106310

	arm_func_start FUN_ov16_021063bc
FUN_ov16_021063bc: ; 0x021063BC
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
	beq _021063FC
	cmp r0, #1
	beq _02106434
	b _02106448
_021063FC:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r7]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_02038020
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106434:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106448:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021063bc

	arm_func_start FUN_ov16_0210646c
FUN_ov16_0210646c: ; 0x0210646C
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
	beq _021064AC
	cmp r0, #1
	beq _021064F8
	b _0210651C
_021064AC:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_02038058
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021064F8:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #0x100
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_0210651C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210646c

	arm_func_start FUN_ov16_02106540
FUN_ov16_02106540: ; 0x02106540
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
	beq _02106580
	cmp r0, #1
	beq _021065CC
	b _021065F0
_02106580:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_020381a0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021065CC:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #0x200
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_021065F0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02106540

	arm_func_start FUN_ov16_02106614
FUN_ov16_02106614: ; 0x02106614
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	mov r5, r1
	ldrsb r3, [r5, #0xb]
	mov r6, r0
	mov r4, r2
	cmp r3, #0
	beq _02106640
	cmp r3, #1
	beq _021066CC
	b _02106704
_02106640:
	add r2, sp, #4
	bl FUN_ov16_020fed6c
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _02106664
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02106704
_02106664:
	ldr r0, [sp, #4]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x14]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x10]
	ldrsb r0, [r2]
	cmp r3, #0
	ldreq r3, [r6, #0x13c]
	cmp r0, #0x6d
	ldreqsb r0, [r2, #1]
	cmpeq r0, #0x6f
	bne _021066B0
	cmp r3, #0
	bge _021066B0
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020383c4
	b _021066C4
_021066B0:
	ldr r0, [r5, #0x14]
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02038430
_021066C4:
	ldrsb r0, [r5, #0xb]
	b _021066FC
_021066CC:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #0x10
	bne _02106704
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	bl FUN_0203851c
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
_021066FC:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106704:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov16_02106614

	arm_func_start FUN_ov16_02106728
FUN_ov16_02106728: ; 0x02106728
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02106768
	cmp r0, #1
	beq _021067AC
	b _021067E8
_02106768:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _021067E8
	ldr r1, [sp]
	str r1, [r5, #0x10]
	ldr r0, [r6]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_02038554
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021067AC:
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #4
	bne _021067D4
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #8
	bne _021067E8
_021067D4:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021067E8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02106728

	arm_func_start FUN_ov16_0210680c
FUN_ov16_0210680c: ; 0x0210680C
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
	beq _0210684C
	cmp r0, #1
	beq _02106888
	b _021068C4
_0210684C:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7, #0x150]
	cmp r0, #0
	bne _021068C4
	ldrsb r0, [r5, #0xb]
	ldr r2, [sp]
	mov r1, #1
	add r0, r0, #1
	str r2, [r5, #0x10]
	strb r1, [r5, #9]
	b _021068C0
_02106888:
	ldr r0, [r7]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #4
	bne _021068B0
	ldr r0, [r7]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #8
	bne _021068C4
_021068B0:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
_021068C0:
	strb r0, [r5, #0xb]
_021068C4:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210680c

	arm_func_start FUN_ov16_021068e8
FUN_ov16_021068e8: ; 0x021068E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xe8
	add r9, sp, #0x68
	mov r6, r0
	mov r4, r2
	mov r8, #0
	mov r5, r1
	mov r0, r9
	mov r1, r8
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #5
	bhi _02106C80
	mov r7, #1
	add pc, pc, r0, lsl #2
	mov r0, r0
	b _02106944
_02106930:
	b _021069C4
	b _02106A94
	b _02106AB4
	b _02106C20
	b _02106C4C
_02106944:
	mov r0, r6
	mov r1, r5
	mov r2, r9
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	beq _02106970
	ldr r0, [r6, #0x15c]
	cmp r0, #0
	beq _02106C80
_02106970:
	ldr r0, [sp, #0x68]
	ldr r3, _02106CA4 ; =0x0209A250
	str r8, [r5, #0x14]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x6c]
	ldr r1, _02106CA8 ; =0x02119CA8
	str r8, [r5, #0x1c]
	str r0, [r5, #0x18]
	ldr r0, [r3]
	cmp r0, #0
	beq _021069B8
	str r8, [sp]
	str r8, [sp, #4]
	str r8, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r3]
	add r2, r5, #0x1c
	bl FUN_0202f294
_021069B8:
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021069C4:
	ldr r0, _02106CA4 ; =0x0209A250
	ldr r1, [r5, #0x1c]
	ldr r0, [r0]
	cmp r0, #0
	mvneq r0, #0
	beq _021069E0
	bl FUN_0202f57c
_021069E0:
	cmp r0, #0
	bne _02106C80
	ldr r1, [r5, #0x18]
	mov r9, #1
	cmp r1, #0x400
	bge _02106A08
	ldr r0, _02106CAC ; =0x0209BA20
	bl FUN_ov16_020ee034
	cmp r0, #0
	ldrneh r9, [r0, #0x22]
_02106A08:
	ldr r1, _02106CB0 ; =0x02119CC0
	add r0, sp, #0x28
	mov r2, r9
	bl sprintf
	ldr r0, [r5, #0x1c]
	add r2, sp, #0x24
	add r3, sp, #0x20
	mov r1, r9
	bl FUN_ov16_020f34f0
	ldr r0, _02106CB4 ; =0x02099F38
	ldr r3, [sp, #0x20]
	ldr r0, [r0]
	ldr r1, [sp, #0x24]
	ldr r2, _02106CB8 ; =0x02119CCC
	str r8, [sp]
	stmib sp, {r7, r8}
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r1, #5
	mov r3, r7
	bl FUN_02058800
	str r0, [r5, #0x18]
	ldr r0, _02106CA4 ; =0x0209A250
	ldr r1, [r5, #0x1c]
	bl FUN_0202e1c0
	mov r0, #0x63
	stmia sp, {r0, r8}
	str r8, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	ldr r2, _02106CBC ; =0x02119CE4
	mov r3, #4
	bl FUN_02037c98
	b _02106C44
_02106A94:
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #0x10
	bne _02106C80
	ldrsb r0, [r5, #0xb]
	add r0, r0, #0x1
	strb r0, [r5, #0xb]
_02106AB4:
	ldr r8, [r5, #0x18]
	cmp r8, #0x0
	bne _02106AD0
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x10]
	bl FUN_02037fb0
	b _02106C44
_02106AD0:
	ldr r0, _02106CB4 ; =02099F38h
	mov r1, r8
	ldr r0, [r0, #0x0] ; =_02099F38
	bl FUN_02058e30
	cmp r0, #0x0
	bgt _02106C80
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x10]
	bl FUN_020385dc
	ldr r2, _02106CC0 ; =02099EE8h
	mov r1, r0
	ldr r0, [r2, #0x0] ; =_02099EE8
	bl FUN_0205fa18
	bl FUN_ov16_020fa71c
	movs r7, r0
	moveq r10, #0x0
	beq _02106B24
	ldr r1, _02106CC4 ; =021179A8h
	add r0, r7, #0x3c
	bl NNS_G3dGetResDataByName
	mov r10, r0
_02106B24:
	cmp r7, #0x0
	ldrneh r0, [r7, #0x34]
	cmpne r0, #0x0
	moveq r0, #0x0
	beq _02106B44
	ldr r1, _02106CC8 ; =02117994h
	add r0, r7, r0
	bl NNS_G3dGetResDataByName
_02106B44:
	ldr r11, [r10, #0x0]
	ldr r2, [r7, #0x14]
	ldr r1, [r7, #0x38]
	ldr r9, _02106CB4 ; =02099F38h
	ldrh r10, [r0, #0x0]
	add r3, r7, r1
	ldr r0, [r9, #0x0] ; =_02099F38
	mov r11, r11, lsl #0x10
	add r2, r7, r2
	add r2, r2, r11, lsr #0xd
	mov r1, r8
	str r2, [sp, #0x1c]
	add r11, r3, r10, lsl #0x3
	bl FUN_ov16_02111414
	mov r7, r0
	ldr r0, [r9, #0x0] ; =_02099F38
	mov r1, r8
	bl FUN_ov16_021113cc
	str r0, [sp, #0x18]
	ldr r0, [r9, #0x0] ; =_02099F38
	mov r1, r8
	bl FUN_ov16_021113f0
	ldrb r2, [r7, #0x2]
	mov r3, #0x8
	ldrb r1, [r7, #0x3]
	str r0, [sp, #0x14]
	sub r10, r7, r0
	mov r0, r3, lsl r1
	mov r2, r3, lsl r2
	mul r9, r2, r0
	ldrb r0, [r7, #0x4]
	ldr r1, [sp, #0x1c]
	cmp r0, #0x3
	moveq r9, r9, lsr #0x1
	ldr r0, [sp, #0x18]
	mov r2, r9
	bl MI_CpuCopy8
	ldr r0, [sp, #0x14]
	mov r1, r11
	mov r2, r10
	bl MI_CpuCopy8
	ldr r0, [sp, #0x1c]
	mov r1, r9
	bl DC_FlushRange
	mov r0, r11
	mov r1, r10
	bl DC_FlushRange
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x10]
	bl FUN_02037fb0
	ldr r0, _02106CB4 ; =02099F38h
	mov r1, r8
	ldr r0, [r0, #0x0] ; =_02099F38
	bl FUN_02058ee0
	b _02106C44
_02106C20:
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #0x2
	beq _02106C80
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x10]
	ldr r2, _02106CCC ; =02119CE8h
	bl FUN_020383c4
_02106C44:
	ldrsb r0, [r5, #0xb]
	b _02106C78
_02106C4C:
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x10]
	bl FUN_020385c0
	tst r0, #0x10
	bne _02106C80
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x10]
	mov r2, r8
	bl FUN_0203851c
	ldrsb r0, [r5, #0xb]
	strb r7, [r5, #0xa]
_02106C78:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106C80:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xe8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02106CA4: .word unk_0209A250
_02106CA8: .word ov16_02119CA8
_02106CAC: .word unk_0209BA20
_02106CB0: .word ov16_02119CC0
_02106CB4: .word unk_02099F38
_02106CB8: .word ov16_02119CCC
_02106CBC: .word ov16_02119CE4
_02106CC0: .word unk_02099EE8
_02106CC4: .word 0x021179A8
_02106CC8: .word 0x02117994
_02106CCC: .word ov16_02119CE8
	arm_func_end FUN_ov16_021068e8

	arm_func_start FUN_ov16_02106cd0
FUN_ov16_02106cd0: ; 0x02106CD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r6, sp, #8
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02106D10
	cmp r0, #1
	beq _02106D54
	b _02106D68
_02106D10:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_0203891c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106D54:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106D68:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02106cd0

	arm_func_start FUN_ov16_02106d8c
FUN_ov16_02106d8c: ; 0x02106D8C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x88
	add r8, sp, #8
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
	beq _02106DD0
	cmp r0, #1
	beq _02106E3C
	b _02106E50
_02106DD0:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r1, [sp, #8]
	ldr r0, [r6]
	str r1, [r6, #0x10]
	ldrb r0, [r0, #6]
	cmp r0, #4
	blo _02106E18
	ldr r0, [sp, #0x14]
	stmia sp, {r0, r4}
	ldr r0, [r7]
	ldr r1, [r6, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	b _02106E2C
_02106E18:
	ldr r2, [sp, #0xc]
	stmia sp, {r2, r4}
	ldr r0, [r7]
	ldr r1, [r6, #0x10]
	mov r3, r2
_02106E2C:
	bl FUN_02038984
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02106E3C:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02106E50:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02106d8c

	arm_func_start FUN_ov16_02106e74
FUN_ov16_02106e74: ; 0x02106E74
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	add r8, sp, #0x18
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r8
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02106EB4
	cmp r0, #1
	beq _02106F3C
	b _02106F6C
_02106EB4:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _02106EE8
	cmp r0, #2
	beq _02106EF0
	cmp r0, #3
	moveq r4, #4
	b _02106EF4
_02106EE8:
	mov r4, #1
	b _02106EF4
_02106EF0:
	mov r4, #2
_02106EF4:
	ldr r12, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	add r1, sp, #0xc
	str r4, [sp]
	ldr r0, [sp, #0x28]
	str r12, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #0x10]
	str r0, [sp, #8]
	str r2, [sp, #0x14]
	ldr r0, [r7]
	ldmia r1, {r1, r2, r3}
	bl FUN_020389d0
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02106F3C:
	ldr r0, _02106F90 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7bf4
	ldrh r0, [r0, #0x3a]
	and r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_02106F6C:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02106F90: .word unk_02099F24
	arm_func_end FUN_ov16_02106e74

	arm_func_start FUN_ov16_02106f94
FUN_ov16_02106f94: ; 0x02106F94
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	add r8, sp, #0x18
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r8
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02106FD4
	cmp r0, #1
	beq _0210705C
	b _0210708C
_02106FD4:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _02107008
	cmp r0, #2
	beq _02107010
	cmp r0, #3
	moveq r4, #4
	b _02107014
_02107008:
	mov r4, #1
	b _02107014
_02107010:
	mov r4, #2
_02107014:
	ldr r12, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	add r1, sp, #0xc
	str r4, [sp]
	ldr r0, [sp, #0x28]
	str r12, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #0x10]
	str r0, [sp, #8]
	str r2, [sp, #0x14]
	ldr r0, [r7]
	ldmia r1, {r1, r2, r3}
	bl FUN_02038a30
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_0210705C:
	ldr r0, _021070B0 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7bf4
	ldrh r0, [r0, #0x3a]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_0210708C:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021070B0: .word unk_02099F24
	arm_func_end FUN_ov16_02106f94

	arm_func_start FUN_ov16_021070b4
FUN_ov16_021070b4: ; 0x021070B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x98
	add r8, sp, #0x18
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r8
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _021070F4
	cmp r0, #1
	beq _021071F8
	b _02107228
_021070F4:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _02107128
	cmp r0, #2
	beq _02107130
	cmp r0, #3
	moveq r4, #4
	b _02107134
_02107128:
	mov r4, #1
	b _02107134
_02107130:
	mov r4, #2
_02107134:
	ldr r0, [sp, #0x1c]
	ldr r1, _0210724C ; =0x0B60B60B
	mov r11, #0xb6
	umull r2, r1, r0, r1
	mla r1, r0, r11, r1
	ldr r8, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r9, _0210724C ; =0x0B60B60B
	str r4, [sp]
	mov r4, r0, asr #0x1f
	ldr r0, _0210724C ; =0x0B60B60B
	umull r10, r9, r8, r9
	adds r2, r2, #0
	ldr r2, [sp, #0x28]
	ldr r12, _0210724C ; =0x0B60B60B
	mla r1, r4, r0, r1
	str r2, [sp, #4]
	adc r2, r1, #0x800
	adds r0, r10, #0
	mov r0, r2, lsl #4
	ldr r1, [sp, #0x2c]
	mov r0, r0, lsr #0x10
	str r0, [sp, #0xc]
	str r1, [sp, #8]
	umull lr, r12, r3, r12
	mla r9, r8, r11, r9
	ldr r0, _0210724C ; =0x0B60B60B
	mov r1, r8, asr #0x1f
	mla r9, r1, r0, r9
	adc r0, r9, #0x800
	mov r0, r0, lsl #4
	mov r1, r0, lsr #0x10
	mla r12, r3, r11, r12
	ldr r0, _0210724C ; =0x0B60B60B
	mov r2, r3, asr #0x1f
	mla r12, r2, r0, r12
	adds r0, lr, #0
	adc r0, r12, #0x800
	mov r0, r0, lsl #4
	mov r3, r0, lsr #0x10
	ldr r0, [r7]
	add r2, sp, #0xc
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	ldmia r2, {r1, r2, r3}
	bl FUN_02038a9c
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_021071F8:
	ldr r0, _02107250 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7bf4
	ldrh r0, [r0, #0x3a]
	and r0, r0, #4
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_02107228:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210724C: .word 0x0B60B60B
_02107250: .word unk_02099F24
	arm_func_end FUN_ov16_021070b4

	arm_func_start FUN_ov16_02107254
FUN_ov16_02107254: ; 0x02107254
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	add r8, sp, #0x18
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r8
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02107294
	cmp r0, #1
	beq _02107350
	b _02107380
_02107294:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _021072C8
	cmp r0, #2
	beq _021072D0
	cmp r0, #3
	moveq r4, #4
	b _021072D4
_021072C8:
	mov r4, #1
	b _021072D4
_021072D0:
	mov r4, #2
_021072D4:
	ldr r0, _021073A4 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7c34
	ldr r12, [sp, #0x1c]
	ldr r2, _021073A8 ; =0x0B60B60B
	mov r3, #0xb6
	umull r1, lr, r12, r2
	mla lr, r12, r3, lr
	adds r1, r1, #0
	mov r3, r12, asr #0x1f
	ldr r8, [r0]
	ldr r1, [r0, #8]
	mla lr, r3, r2, lr
	str r4, [sp]
	ldr r0, [sp, #0x20]
	adc r2, lr, #0x800
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r8, [sp, #0xc]
	str r0, [sp, #8]
	mov r0, r2, lsl #4
	mov r3, r0, lsr #0x10
	ldr r0, [r7]
	add r2, sp, #0xc
	str r1, [sp, #0x14]
	str r3, [sp, #0x10]
	ldmia r2, {r1, r2, r3}
	bl FUN_02038a9c
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02107350:
	ldr r0, _021073A4 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7bf4
	ldrh r0, [r0, #0x3a]
	and r0, r0, #4
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_02107380:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021073A4: .word unk_02099F24
_021073A8: .word 0x0B60B60B
	arm_func_end FUN_ov16_02107254

	arm_func_start FUN_ov16_021073ac
FUN_ov16_021073ac: ; 0x021073AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r8, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r8
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _021073EC
	cmp r0, #1
	beq _02107454
	b _02107484
_021073EC:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _02107420
	cmp r0, #2
	beq _02107428
	cmp r0, #3
	moveq r4, #4
	b _0210742C
_02107420:
	mov r4, #1
	b _0210742C
_02107428:
	mov r4, #2
_0210742C:
	ldr r0, [sp, #0x10]
	mov r2, r4
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_02038afc
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02107454:
	ldr r0, _021074A8 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7bf4
	ldrh r0, [r0, #0x3a]
	and r0, r0, #8
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqsb r0, [r6, #0xb]
	moveq r1, #1
	streqb r1, [r6, #0xa]
	addeq r0, r0, #1
	streqb r0, [r6, #0xb]
_02107484:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021074A8: .word unk_02099F24
	arm_func_end FUN_ov16_021073ac

	arm_func_start FUN_ov16_021074ac
FUN_ov16_021074ac: ; 0x021074AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x8c
	add r7, sp, #0xc
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021074EC
	cmp r0, #1
	beq _02107564
	b _02107594
_021074EC:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _02107520
	cmp r0, #2
	beq _02107528
	cmp r0, #3
	moveq r8, #4
	b _0210752C
_02107520:
	mov r8, #1
	b _0210752C
_02107528:
	mov r8, #2
_0210752C:
	str r8, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, [r6]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl FUN_02038b30
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02107594
_02107564:
	ldr r0, _021075B8 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7bf4
	ldrh r0, [r0, #0x3a]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqsb r0, [r5, #0xb]
	moveq r1, #1
	streqb r1, [r5, #0xa]
	addeq r0, r0, #1
	streqb r0, [r5, #0xb]
_02107594:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021075B8: .word unk_02099F24
	arm_func_end FUN_ov16_021074ac

	arm_func_start FUN_ov16_021075bc
FUN_ov16_021075bc: ; 0x021075BC
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
	beq _021075FC
	cmp r0, #1
	beq _02107624
	b _02107638
_021075FC:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7]
	bl FUN_02038b9c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02107624:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02107638:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021075bc

	arm_func_start FUN_ov16_0210765c
FUN_ov16_0210765c: ; 0x0210765C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _0210769C
	cmp r0, #1
	beq _021076F0
	b _02107710
_0210769C:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02107710
	ldr r2, [sp]
	mov r0, #0x64
	cmp r2, #0
	beq _021076D0
	b _021076D4
_021076D0:
	ldr r2, [r6, #0x13c]
_021076D4:
	mul r1, r2, r0
	ldr r0, [r6]
	bl FUN_02038cdc
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _02107710
_021076F0:
	ldr r0, [r6]
	bl FUN_02038cf8
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02107710:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210765c

	arm_func_start FUN_ov16_02107734
FUN_ov16_02107734: ; 0x02107734
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02107774
	cmp r0, #1
	beq _021077AC
	b _021077CC
_02107774:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _021077CC
	ldr r0, [r6]
	ldr r1, [sp]
	bl FUN_02038d28
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021077AC:
	ldr r0, [r6]
	bl FUN_02038d58
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_021077CC:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02107734

	arm_func_start FUN_ov16_021077f0
FUN_ov16_021077f0: ; 0x021077F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02107830
	cmp r0, #1
	beq _02107864
	b _02107884
_02107830:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02107884
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #9]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02107864:
	ldr r0, [r6]
	bl FUN_02038d58
	cmp r0, #0
	ldrnesb r0, [r5, #0xb]
	movne r1, #1
	strneb r1, [r5, #0xa]
	addne r0, r0, #1
	strneb r0, [r5, #0xb]
_02107884:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021077f0

	arm_func_start FUN_ov16_021078a8
FUN_ov16_021078a8: ; 0x021078A8
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
	bl FUN_ov16_020febf8
	ldr r1, _02107928 ; =0x02099EF0
	str r0, [r5, #4]
	ldr r0, [r1]
	bl FUN_ov132_021451d0
	mov r0, #1
	ldrsb r1, [r5, #0xb]
	strb r0, [r5, #0xa]
	cmp r4, #0
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02107928: .word unk_02099EF0
	arm_func_end FUN_ov16_021078a8

	arm_func_start FUN_ov16_0210792c
FUN_ov16_0210792c: ; 0x0210792C
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
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02107978
	cmp r0, #1
	beq _02107A00
	cmp r0, #2
	beq _02107A18
	b _02107A3C
_02107978:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r1, [sp]
	ldr r0, [r7, #0x150]
	str r1, [r7, #0x13c]
	cmp r0, #0
	bne _02107A3C
	ldr r0, _02107A60 ; =0x0208F6F0
	ldr r2, _02107A64 ; =0x0209A730
	ldr r3, [r0]
	mov r1, r4
	str r3, [r0, #0x14]
	ldr r4, [r0, #4]
	mov r3, #1
	str r4, [r0, #0x18]
	ldr r4, [r0, #8]
	str r4, [r0, #0x1c]
	ldr r4, [r0, #0xc]
	str r4, [r0, #0x20]
	ldr r4, [r0, #0x10]
	str r4, [r0, #0x24]
	ldr r0, [r7]
	bl FUN_0203533c
	ldr r0, [r7]
	bl FUN_020391a8
	ldr r0, [r7]
	bl FUN_0203a300
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	b _02107A3C
_02107A00:
	ldr r0, [r7]
	mov r1, r4
	bl FUN_02035498
	cmp r0, #0
	ldrnesb r0, [r6, #0xb]
	b _02107A34
_02107A18:
	ldr r0, [r7]
	mov r1, r4
	bl FUN_02035500
	tst r0, #2
	movne r1, #1
	ldrnesb r0, [r6, #0xb]
	strneb r1, [r6, #0xa]
_02107A34:
	addne r0, r0, #1
	strneb r0, [r6, #0xb]
_02107A3C:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107A60: .word unk_0208F6F0
_02107A64: .word unk_0209A730
	arm_func_end FUN_ov16_0210792c

	arm_func_start FUN_ov16_02107a68
FUN_ov16_02107a68: ; 0x02107A68
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
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02107AAC
	cmp r0, #1
	beq _02107B18
	b _02107B2C
_02107AAC:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r6]
	mov r1, r7
	bl FUN_02035448
	ldr r0, [r6]
	mov r1, #0x10
	bl FUN_02037ef0
	ldr r0, _02107B50 ; =0x0208F6F0
	mov r1, #0x1000
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	ldr r0, [r6]
	bl FUN_020397b4
	ldr r0, [r6]
	bl FUN_02039f08
	ldr r0, [r6]
	bl FUN_0203a47c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02107B18:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02107B2C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107B50: .word unk_0208F6F0
	arm_func_end FUN_ov16_02107a68

	arm_func_start FUN_ov16_02107b54
FUN_ov16_02107b54: ; 0x02107B54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x98
	ldr r3, _02107CB8 ; =0x0209A2C0
	mov r5, r1
	ldr lr, [r3]
	ldr r12, [r3, #4]
	ldr r1, [r3, #8]
	mov r4, r2
	str r1, [sp, #0x14]
	add r7, sp, #0x18
	mov r6, r0
	mov r0, r7
	str lr, [sp, #0xc]
	str r12, [sp, #0x10]
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02107BB0
	cmp r0, #1
	beq _02107C80
	b _02107C94
_02107BB0:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, _02107CBC ; =0x0209A720
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0xdc]
	add r0, r0, #0x8000
	cmp r1, r0
	strlt r0, [sp, #0xc]
	ldr r0, _02107CBC ; =0x0209A720
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0xe4]
	sub r0, r0, #0x8000
	cmp r1, r0
	strgt r0, [sp, #0xc]
	ldr r0, _02107CBC ; =0x0209A720
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xe0]
	add r0, r0, #0x8000
	cmp r1, r0
	strlt r0, [sp, #0x10]
	ldr r0, _02107CBC ; =0x0209A720
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xe8]
	sub r0, r0, #0x8000
	cmp r1, r0
	strgt r0, [sp, #0x10]
	ldr r0, [r6, #0x150]
	cmp r0, #0
	bne _02107C94
	ldr r0, _02107CC0 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_02143114
	ldrsh r3, [r0, #0x1c]
	add r2, sp, #0xc
	mov r1, #0
	cmp r3, #0
	ldrltsh r3, [r0, #0x1e]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, [r6]
	bl FUN_0203551c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02107C80:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02107C94:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02107CB8: .word unk_0209A2C0
_02107CBC: .word unk_0209A720
_02107CC0: .word unk_02099EF0
	arm_func_end FUN_ov16_02107b54

	arm_func_start FUN_ov16_02107cc4
FUN_ov16_02107cc4: ; 0x02107CC4
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
	ldrsb r0, [r6, #0xb]
	cmp r0, #0
	beq _02107D08
	cmp r0, #1
	beq _02107D5C
	b _02107D90
_02107D08:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #0x14]
	mov r1, r4
	str r0, [sp]
	ldr r0, [sp, #0x18]
	rsb r0, r0, #0
	stmib sp, {r0, r4}
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r0, [r7]
	ldr r2, [sp, #0x20]
	rsb r3, r3, #0
	bl FUN_020355f8
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02107D5C:
	ldrsb r0, [r6, #9]
	cmp r0, #0
	beq _02107D7C
	ldr r0, [r7]
	mov r1, #0
	bl FUN_02035500
	tst r0, #0x100
	bne _02107D90
_02107D7C:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02107D90:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x90
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02107cc4

	arm_func_start FUN_ov16_02107db4
FUN_ov16_02107db4: ; 0x02107DB4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x88
	add r8, sp, #8
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
	beq _02107DF8
	cmp r0, #1
	beq _02107E60
	b _02107E74
_02107DF8:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	and r0, r0, #7
	bl FUN_ov16_020efd54
	str r4, [sp]
	mov r3, r0
	mov r1, #0x1680000
	str r4, [sp, #4]
	ldr r0, [r7]
	umull r2, r1, r3, r1
	mla r1, r3, r4, r1
	adds r2, r2, #0x80000
	adc r1, r1, r4
	mov r3, r2, lsr #0x14
	orr r3, r3, r1, lsl #12
	mov r1, r4
	mov r2, r4
	bl FUN_02035758
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02107E60:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
_02107E74:
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x88
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02107db4

	arm_func_start FUN_ov16_02107e98
FUN_ov16_02107e98: ; 0x02107E98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x94
	add r10, sp, #0x14
	mov r9, r0
	mov r7, r2
	mov r5, #0
	mov r8, r1
	mov r0, r10
	mov r1, r5
	mov r2, #0x80
	mvn r4, #0
	bl MI_CpuFill8
	ldrsb r0, [r8, #0xb]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021081A8
_02107ED8: ; jump table
	b _02107EE8 ; case 0
	b _0210811C ; case 1
	b _02108148 ; case 2
	b _02108194 ; case 3
_02107EE8:
	mov r0, r9
	mov r1, r8
	mov r2, r10
	bl FUN_ov16_020febf8
	str r0, [r8, #4]
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _02107FA8
	ldr r0, [r9]
	ldr r2, _021081CC ; =0x02119CF0
	mov r1, r5
	mov r3, r5
	bl FUN_02035988
	ldr r0, [sp, #0x18]
	cmp r0, #2
	beq _02107F40
	cmp r0, #3
	beq _02107F4C
	cmp r0, #4
	ldreq r5, _021081D0 ; =0x0209A760
	ldreq r6, _021081D4 ; =0x0209A790
	b _02107F54
_02107F40:
	ldr r5, _021081D8 ; =0x0209A740
	ldr r6, _021081DC ; =0x0209A770
	b _02107F54
_02107F4C:
	ldr r5, _021081E0 ; =0x0209A750
	ldr r6, _021081E4 ; =0x0209A780
_02107F54:
	cmp r5, #0
	mov r0, #1
	mov r11, #0
	beq _02107FA8
	mov r1, #0x10
	str r1, [r8, #0x10]
	str r11, [sp]
	str r11, [sp, #4]
	str r0, [sp, #8]
	sub r10, r0, #2
	ldr r0, [r9]
	ldr r1, [r8, #0x10]
	mov r2, r5
	mov r3, r10
	bl FUN_02037dd8
	str r11, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0x10]
	mov r2, r6
	mov r3, r10
	bl FUN_02038430
_02107FA8:
	ldr r0, [sp, #0x14]
	mov r5, #1
	cmp r0, #1
	bne _02107FC0
	bl FUN_ov16_020f081c
	b _02107FC8
_02107FC0:
	bl FUN_ov16_020f081c
	eor r0, r0, #1
_02107FC8:
	str r0, [sp, #0x14]
	ldr r0, _021081E8 ; =0x02099EF0
	ldr r6, [sp, #0x14]
	ldr r0, [r0]
	mov r1, r6
	bl FUN_ov126_02139800
	cmp r0, #0
	ldrnesh r4, [r0, #0x94]
	ldr r2, [sp, #0x14]
	ldr r1, _021081EC ; =0x0209A87C
	ldr r0, _021081F0 ; =0x0209A880
	ldr r1, [r1, r2, lsl #3]
	ldr r0, [r0, r2, lsl #3]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r6, #0
	bne _02108084
	ldr r0, _021081F4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02108060
	bl FUN_ov16_020f081c
	mov r6, r0
	mov r0, #0
	bl FUN_ov16_020f085c
	cmp r6, r0
	beq _02108060
	ldr r0, _021081F8 ; =0x0209A720
	mov r1, #0x1000
	ldr r0, [r0, #0xe0]
	str r0, [sp, #0x10]
	str r1, [sp]
	stmib sp, {r1, r5}
_0210804C:
	ldr r0, [r9]
	add r2, sp, #0xc
	mov r1, #0
	mov r3, r4
	b _021080F8
_02108060:
	ldr r0, _021081F8 ; =0x0209A720
	mov r1, #0x1000
	ldr r2, [r0, #0xe8]
	mov r0, #5
	str r2, [sp, #0x10]
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	b _021080E8
_02108084:
	ldr r0, _021081F4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _021080D0
	bl FUN_ov16_020f081c
	mov r6, r0
	mov r0, #0
	bl FUN_ov16_020f085c
	cmp r6, r0
	beq _021080D0
	ldr r0, _021081F8 ; =0x0209A720
	mov r1, #0x1000
	ldr r2, [r0, #0xe8]
	mov r0, #5
	str r2, [sp, #0x10]
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	b _0210804C
_021080D0:
	ldr r0, _021081F8 ; =0x0209A720
	mov r1, #0x1000
	ldr r0, [r0, #0xe0]
	str r0, [sp, #0x10]
	str r1, [sp]
	stmib sp, {r1, r5}
_021080E8:
	ldr r0, [r9]
	add r2, sp, #0xc
	mov r3, r4
	mov r1, #0
_021080F8:
	bl FUN_0203551c
	ldr r0, [r8, #0x10]
	cmp r0, #0
	moveq r0, #3
	streqb r0, [r8, #0xb]
	ldrnesb r0, [r8, #0xb]
	addne r0, r0, #1
	strneb r0, [r8, #0xb]
	b _021081A8
_0210811C:
	ldr r0, [r9]
	ldr r1, [r8, #0x10]
	bl FUN_020385c0
	tst r0, #0x10
	bne _021081A8
	ldr r0, [r9]
	ldr r1, [r8, #0x10]
	bl FUN_02037fb0
	ldrsb r0, [r8, #0xb]
	add r0, r0, #1
	strb r0, [r8, #0xb]
_02108148:
	ldr r0, [r9]
	ldr r1, [r8, #0x10]
	bl FUN_020385c0
	tst r0, #2
	beq _021081A8
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r9]
	ldr r1, [r8, #0x10]
	mov r3, r2
	bl FUN_02038058
	ldr r0, [r9]
	ldr r1, [r8, #0x10]
	ldr r2, [r8, #0x14]
	bl FUN_0203851c
	ldrsb r0, [r8, #0xb]
	add r0, r0, #1
	strb r0, [r8, #0xb]
_02108194:
	ldrsb r0, [r8, #0xb]
	mov r1, #1
	strb r1, [r8, #0xa]
	add r0, r0, #1
	strb r0, [r8, #0xb]
_021081A8:
	cmp r7, #0
	ldrnesb r0, [r8, #0xa]
	strne r0, [r7]
	ldrsb r0, [r8, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021081CC: .word ov16_02119CF0
_021081D0: .word unk_0209A760
_021081D4: .word unk_0209A790
_021081D8: .word unk_0209A740
_021081DC: .word unk_0209A770
_021081E0: .word unk_0209A750
_021081E4: .word unk_0209A780
_021081E8: .word unk_02099EF0
_021081EC: .word unk_0209A87C
_021081F0: .word unk_0209A880
_021081F4: .word unk_020A0640
_021081F8: .word unk_0209A720
	arm_func_end FUN_ov16_02107e98

	arm_func_start FUN_ov16_021081fc
FUN_ov16_021081fc: ; 0x021081FC
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
	beq _0210823C
	cmp r0, #1
	beq _0210828C
	b _021082A0
_0210823C:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	ldr r1, _021082C4 ; =0x02099EF0
	str r0, [r5, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _0210826C
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02108280
_0210826C:
	ldr r0, _021082C4 ; =0x02099EF0
	ldr r1, [sp]
	ldr r0, [r0]
	ldr r2, [sp, #4]
	bl FUN_ov126_02139e4c
_02108280:
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_0210828C:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021082A0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021082C4: .word unk_02099EF0
	arm_func_end FUN_ov16_021081fc

	arm_func_start FUN_ov16_021082c8
FUN_ov16_021082c8: ; 0x021082C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02108308
	cmp r0, #1
	beq _02108338
	b _02108370
_02108308:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0x10]
	strb r0, [r5, #0xb]
_02108338:
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	bgt _02108370
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	bl FUN_02039598
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108370:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021082c8

	arm_func_start FUN_ov16_02108394
FUN_ov16_02108394: ; 0x02108394
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021083D4
	cmp r0, #1
	beq _021083FC
	b _02108430
_021083D4:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r2, [sp]
	add r0, r1, #1
	str r2, [r5, #0xc]
	strb r0, [r5, #0xb]
_021083FC:
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	bgt _02108430
	ldr r0, [r6]
	bl FUN_02039764
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108430:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02108394

	arm_func_start FUN_ov16_02108454
FUN_ov16_02108454: ; 0x02108454
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02108494
	cmp r0, #1
	beq _021084BC
	b _021084F0
_02108494:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r2, [sp]
	add r0, r1, #1
	str r2, [r5, #0xc]
	strb r0, [r5, #0xb]
_021084BC:
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	bgt _021084F0
	ldr r0, [r6]
	bl FUN_02039750
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021084F0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02108454

	arm_func_start FUN_ov16_02108514
FUN_ov16_02108514: ; 0x02108514
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
	beq _02108560
	cmp r0, #1
	addeq r0, r0, #1
	moveq r1, #1
	streqb r1, [r5, #0xa]
	streqb r0, [r5, #0xb]
	b _02108588
_02108560:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7]
	bl FUN_02038dec
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108588:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02108514

	arm_func_start FUN_ov16_021085ac
FUN_ov16_021085ac: ; 0x021085AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021085EC
	cmp r0, #1
	beq _02108614
	b _02108648
_021085EC:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r2, [sp]
	add r0, r1, #1
	str r2, [r5, #0xc]
	strb r0, [r5, #0xb]
_02108614:
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	bgt _02108648
	ldr r0, [r6]
	bl FUN_020390ac
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108648:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021085ac

	arm_func_start FUN_ov16_0210866c
FUN_ov16_0210866c: ; 0x0210866C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021086AC
	cmp r0, #1
	beq _021086D4
	b _02108708
_021086AC:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r2, [sp]
	add r0, r1, #1
	str r2, [r5, #0xc]
	strb r0, [r5, #0xb]
_021086D4:
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	bgt _02108708
	ldr r0, [r6]
	bl FUN_02039124
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108708:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210866c

	arm_func_start FUN_ov16_0210872c
FUN_ov16_0210872c: ; 0x0210872C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _0210876C
	cmp r0, #1
	beq _02108794
	b _021087C8
_0210876C:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r2, [sp]
	add r0, r1, #1
	str r2, [r5, #0xc]
	strb r0, [r5, #0xb]
_02108794:
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	bgt _021087C8
	ldr r0, [r6]
	bl FUN_020390e8
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021087C8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210872c

	arm_func_start FUN_ov16_021087ec
FUN_ov16_021087ec: ; 0x021087EC
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
	beq _02108838
	cmp r0, #1
	addeq r0, r0, #1
	moveq r1, #1
	streqb r1, [r5, #0xa]
	streqb r0, [r5, #0xb]
	b _02108864
_02108838:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7]
	ldr r1, [sp]
	bl FUN_02039b70
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108864:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021087ec

	arm_func_start FUN_ov16_02108888
FUN_ov16_02108888: ; 0x02108888
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _021088C8
	cmp r0, #1
	beq _021088F0
	b _02108924
_021088C8:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r2, [sp]
	add r0, r1, #1
	str r2, [r5, #0xc]
	strb r0, [r5, #0xb]
_021088F0:
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	bgt _02108924
	ldr r0, [r6]
	bl FUN_02039fa4
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108924:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02108888

	arm_func_start FUN_ov16_02108948
FUN_ov16_02108948: ; 0x02108948
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	beq _02108988
	cmp r0, #1
	beq _021089B8
	b _021089F0
_02108988:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldrsb r0, [r5, #0xb]
	str r1, [r5, #0xc]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r1, [r5, #0x10]
	strb r0, [r5, #0xb]
_021089B8:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x178]
	sub r0, r1, r0
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _021089F0
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_02039fcc
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_021089F0:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02108948

	arm_func_start FUN_ov16_02108a14
FUN_ov16_02108a14: ; 0x02108A14
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	mov r5, r3
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020febf8
	str r0, [r7, #4]
	mov r0, #1
	strb r0, [r7, #0xa]
	str r0, [r6]
	str r5, [r8, #0x290]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02108a14

	arm_func_start FUN_ov16_02108a6c
FUN_ov16_02108a6c: ; 0x02108A6C
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
	beq _02108AB8
	cmp r0, #1
	addeq r0, r0, #1
	moveq r1, #1
	streqb r1, [r5, #0xa]
	streqb r0, [r5, #0xb]
	b _02108B00
_02108AB8:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r7, #0x150]
	cmp r0, #0
	beq _02108AE4
	ldr r0, [r7, #0x15c]
	cmp r0, #0
	beq _02108B00
_02108AE4:
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0203a5e4
	mov r0, #1
	strb r0, [r5, #0xb]
_02108B00:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02108a6c

	arm_func_start FUN_ov16_02108b24
FUN_ov16_02108b24: ; 0x02108B24
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
	beq _02108B68
	cmp r0, #1
	beq _02108BA0
	b _02108BB4
_02108B68:
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [r8, #0x150]
	ldr r1, [sp]
	cmp r0, #0
	strne r6, [sp, #0xc]
	ldr r0, [r8]
	bl FUN_0203aa4c
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108BA0:
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02108BB4:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02108b24

	arm_func_start FUN_ov16_02108bd8
FUN_ov16_02108bd8: ; 0x02108BD8
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
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r0, [r7]
	bl FUN_0203aaf4
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldrsb r0, [r6, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02108bd8

	arm_func_start FUN_ov16_02108c54
FUN_ov16_02108c54: ; 0x02108C54
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
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r8, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r8, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp, #4]
	ldr r0, _02108D00 ; =0x020AF81C
	bl FUN_020443a4
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02108CE8
	mov r6, #2
	ldr r0, [r7, #4]
	mov r1, r6
	bl FUN_0204836c
	str r4, [sp]
	ldr r0, [r7, #4]
	ldr r3, [sp, #8]
	mov r1, r6
	mov r2, r8
	bl FUN_02048068
_02108CE8:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02108D00: .word unk_020AF81C
	arm_func_end FUN_ov16_02108c54

	arm_func_start FUN_ov16_02108d04
FUN_ov16_02108d04: ; 0x02108D04
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
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r2, [sp, #4]
	cmp r2, #0xa
	addls pc, pc, r2, lsl #2
	b _02108DDC
_02108D68: ; jump table
	b _02108DDC ; case 0
	b _02108D94 ; case 1
	b _02108DB4 ; case 2
	b _02108DC4 ; case 3
	b _02108DDC ; case 4
	b _02108DDC ; case 5
	b _02108DDC ; case 6
	b _02108DDC ; case 7
	b _02108DDC ; case 8
	b _02108DDC ; case 9
	b _02108DB4 ; case 10
_02108D94:
	ldr r0, [r7, #4]
	bl FUN_0204836c
	str r4, [sp]
	ldr r0, [r7, #4]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	mov r2, #2
	b _02108DD8
_02108DB4:
	ldr r0, [r7, #4]
	mov r1, r2
	bl FUN_0204836c
	mov r1, r4
_02108DC4:
	str r1, [sp]
	ldr r0, [r7, #4]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	mov r2, #1
_02108DD8:
	bl FUN_02048068
_02108DDC:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02108d04

	arm_func_start FUN_ov16_02108df4
FUN_ov16_02108df4: ; 0x02108DF4
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	mov r5, #1
	strb r5, [r7, #0xa]
	add r1, r1, #1
	strb r1, [r7, #0xb]
	str r0, [r7, #4]
	ldr r0, [r8]
	bl FUN_0203247c
	ldr r2, [r7]
	ldr r1, _02108E84 ; =0x00004020
	ldrh r2, [r2, #4]
	cmp r2, r1
	bne _02108E70
	cmp r0, #0
	movne r5, r4
	mov r0, r5
_02108E70:
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108E84: .word 0x00004020
	arm_func_end FUN_ov16_02108df4

	arm_func_start FUN_ov16_02108e88
FUN_ov16_02108e88: ; 0x02108E88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r4, r0
	mov r7, r1
	mov r6, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	mov r2, r5
	add r0, r1, #1
	strb r0, [r7, #0xb]
	mov r0, #1
	strb r0, [r7, #0xa]
	ldr r1, [r7]
	ldr r0, [r4]
	ldrb r1, [r1, #6]
	bl FUN_02038d70
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02108e88

	arm_func_start FUN_ov16_02108f00
FUN_ov16_02108f00: ; 0x02108F00
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x8c
	add r6, sp, #0xc
	mov r7, r0
	mov r4, r2
	mov r3, #0
	mov r5, r1
	mov r0, r6
	mov r1, r3
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	ldrsb r3, [r5, #0xb]
	mov r2, #1
	ldr r1, _02108FAC ; =0x02099F24
	add r3, r3, #1
	strb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	str r0, [r5, #4]
	ldr r0, [r1]
	bl FUN_ov16_020f7c34
	ldr r12, [r0]
	mov r1, #0x1680000
	umull r5, r3, r12, r1
	mov r2, r12, asr #0x1f
	mla r3, r2, r1, r3
	adds r1, r5, #0x80000
	ldr r5, [r0, #4]
	ldr r2, [r0, #8]
	adc r0, r3, #0
	mov r1, r1, lsr #0x14
	orr r1, r1, r0, lsl #12
	cmp r4, #0
	str r12, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
	strne r1, [r4]
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02108FAC: .word unk_02099F24
	arm_func_end FUN_ov16_02108f00

	arm_func_start FUN_ov16_02108fb0
FUN_ov16_02108fb0: ; 0x02108FB0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x8c
	add r6, sp, #0xc
	mov r7, r0
	mov r4, r2
	mov r3, #0
	mov r5, r1
	mov r0, r6
	mov r1, r3
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	ldrsb r3, [r5, #0xb]
	mov r2, #1
	ldr r1, _0210905C ; =0x02099F24
	add r3, r3, #1
	strb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	str r0, [r5, #4]
	ldr r0, [r1]
	bl FUN_ov16_020f7c34
	ldr r12, [r0, #4]
	mov r1, #0x1680000
	umull r5, r3, r12, r1
	mov r2, r12, asr #0x1f
	mla r3, r2, r1, r3
	adds r1, r5, #0x80000
	ldr r5, [r0]
	ldr r2, [r0, #8]
	adc r0, r3, #0
	mov r1, r1, lsr #0x14
	orr r1, r1, r0, lsl #12
	cmp r4, #0
	str r12, [sp, #4]
	str r5, [sp]
	str r2, [sp, #8]
	strne r1, [r4]
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210905C: .word unk_02099F24
	arm_func_end FUN_ov16_02108fb0

	arm_func_start FUN_ov16_02109060
FUN_ov16_02109060: ; 0x02109060
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	mov r2, #1
	add r1, r1, #1
	strb r1, [r6, #0xb]
	strb r2, [r6, #0xa]
	ldr r0, _021090D8 ; =0x020A9C40
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020460c0
	ldr r0, [sp, #4]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021090D8: .word unk_020A9C40
	arm_func_end FUN_ov16_02109060

	arm_func_start FUN_ov16_021090dc
FUN_ov16_021090dc: ; 0x021090DC
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	mov r2, #1
	add r1, r1, #1
	strb r1, [r6, #0xb]
	strb r2, [r6, #0xa]
	ldr r0, _02109154 ; =0x020A9C40
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020460c0
	ldr r0, [sp]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02109154: .word unk_020A9C40
	arm_func_end FUN_ov16_021090dc

	arm_func_start FUN_ov16_02109158
FUN_ov16_02109158: ; 0x02109158
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
	bl FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _021091D0 ; =0x0209AC44
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0202bb70
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021091D0: .word unk_0209AC44
	arm_func_end FUN_ov16_02109158

	arm_func_start FUN_ov16_021091d4
FUN_ov16_021091d4: ; 0x021091D4
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	mov r2, #1
	add r3, r1, #1
	ldr r0, _02109244 ; =0x02099F78
	ldr r1, _02109248 ; =0x02119CF8
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	bl L5_IniFileGetParam
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02109244: .word unk_02099F78
_02109248: .word ov16_02119CF8
	arm_func_end FUN_ov16_021091d4

	arm_func_start FUN_ov16_0210924c
FUN_ov16_0210924c: ; 0x0210924C
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	moveq r2, r5
	ldr r0, _021092CC ; =0x0209BA20
	cmp r4, #0
	strb r2, [r0, #0x885]
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021092CC: .word unk_0209BA20
	arm_func_end FUN_ov16_0210924c

	arm_func_start FUN_ov16_021092d0
FUN_ov16_021092d0: ; 0x021092D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r7, r0
	mov r5, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020febf8
	mov r3, #1
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	strb r3, [r5, #0xa]
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	cmp r2, #1
	mov r4, r0, lsr #0x10
	mov r5, r1, asr #0x10
	beq _02109350
	cmp r2, #2
	beq _02109360
	b _02109368
_02109350:
	bl FUN_ov16_020f081c
_02109354:
	mov r0, r0, lsl #0x18
	mov r10, r0, asr #0x18
	b _0210936C
_02109360:
	bl FUN_ov16_020f083c
	b _02109354
_02109368:
	sub r10, r3, #2
_0210936C:
	mov r9, #0
	mvn r7, #0
_02109374:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _021093B8
	bl FUN_0206d5f0
	cmp r10, r0
	beq _02109398
	cmp r10, r7
	bne _021093B8
_02109398:
	mov r0, r8
	bl FUN_0206cc00
	cmp r4, r0
	bne _021093B8
	mov r0, r8
	mov r1, r5
	bl FUN_0206cc44
	b _021093C4
_021093B8:
	add r9, r9, #1
	cmp r9, #0x64
	blt _02109374
_021093C4:
	cmp r6, #0
	movne r0, #1
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_021092d0

	arm_func_start FUN_ov16_021093dc
FUN_ov16_021093dc: ; 0x021093DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r0, r0, lsl #0x10
	cmp r1, #1
	mov r4, r0, lsr #0x10
	beq _02109454
	cmp r1, #2
	beq _02109464
	b _0210946C
_02109454:
	bl FUN_ov16_020f081c
_02109458:
	mov r0, r0, lsl #0x18
	mov r10, r0, asr #0x18
	b _02109470
_02109464:
	bl FUN_ov16_020f083c
	b _02109458
_0210946C:
	sub r10, r2, #2
_02109470:
	mov r9, #0
	mvn r7, #0
_02109478:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _021094BC
	bl FUN_0206d5f0
	cmp r10, r0
	beq _0210949C
	cmp r10, r7
	bne _021094BC
_0210949C:
	mov r0, r8
	bl FUN_0206cc00
	cmp r4, r0
	bne _021094BC
	mov r0, r8
	bl FUN_0206cc84
	mov r5, r0
	b _021094C8
_021094BC:
	add r9, r9, #1
	cmp r9, #0x64
	blt _02109478
_021094C8:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_021093dc

	arm_func_start FUN_ov16_021094dc
FUN_ov16_021094dc: ; 0x021094DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	add r5, sp, #4
	mov r7, r0
	mov r11, r2
	mov r4, #0
	mov r6, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020febf8
	mov r10, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r10, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r0, r0, lsl #0x10
	cmp r2, #0
	mov r1, r1, lsl #0x10
	mov r6, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	moveq r10, r4
	mov r7, #0
	cmp r0, #1
	beq _02109574
	cmp r0, #2
	beq _02109584
	b _0210958C
_02109574:
	bl FUN_ov16_020f081c
_02109578:
	mov r0, r0, lsl #0x18
	mov r9, r0, asr #0x18
	b _02109590
_02109584:
	bl FUN_ov16_020f083c
	b _02109578
_0210958C:
	sub r9, r7, #1
_02109590:
	mov r8, #0
	mvn r4, #0
_02109598:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0210960C
	bl FUN_0206d5f0
	cmp r9, r0
	beq _021095BC
	cmp r9, r4
	bne _0210960C
_021095BC:
	mov r0, r5
	bl FUN_0206cc00
	cmp r6, r0
	bne _0210960C
	ldr r0, _0210962C ; =0x0209BA20
	ldr r1, [sp]
	bl FUN_0204a2c4
	cmp r0, #0
	beq _02109618
	cmp r10, #0
	beq _02109600
	mov r1, #0
	mov r2, #0x64
	bl FUN_0204b0c4
_021095F4:
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	b _02109618
_02109600:
	mov r1, r5
	bl FUN_0204b114
	b _021095F4
_0210960C:
	add r8, r8, #1
	cmp r8, #0x64
	blt _02109598
_02109618:
	cmp r11, #0
	strne r7, [r11]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210962C: .word unk_0209BA20
	arm_func_end FUN_ov16_021094dc

	arm_func_start FUN_ov16_02109630
FUN_ov16_02109630: ; 0x02109630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xd0
	add r4, sp, #0x50
	mov r6, r0
	str r2, [sp, #4]
	mov r8, #0
	mov r5, r1
	mov r0, r4
	mov r1, r8
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020febf8
	ldrsb r2, [r5, #0xb]
	mov r1, #1
	ldr r4, _02109744 ; =0x02119D08
	add r2, r2, #1
	ldr r7, _02109748 ; =0x02118A0C
	ldr r6, _0210974C ; =0x02119D00
	mov r9, r8
	str r0, [r5, #4]
	strb r2, [r5, #0xb]
	strb r1, [r5, #0xa]
	add r5, sp, #0x10
	add r11, sp, #0xc
_0210969C:
	add r0, r7, r9, lsl #3
	ldr r10, [r0, #4]
	mov r1, r6
	mov r0, r10
	bl strcmp
	cmp r0, #0
	beq _0210972C
	ldr r2, [r7, r9, lsl #3]
	mov r0, r5
	mov r3, r10
	mov r1, r4
	bl sprintf
	ldr r1, [sp, #0x50]
	mov r0, r5
	mov r2, r11
	add r3, sp, #8
	bl FUN_ov16_020f345c
	cmp r0, #0
	movne r8, #1
	bne _0210972C
	ldr r1, [sp, #0x50]
	add r0, r7, r9, lsl #3
	str r1, [sp]
	ldr r3, [r0, #4]
	ldr r2, [r7, r9, lsl #3]
	ldr r1, _02109750 ; =0x02119D14
	mov r0, r5
	bl sprintf
	ldr r0, _02109754 ; =0x0209C2C4
	mov r1, r5
	bl FUN_0202ef9c
	cmp r0, #0
	movne r8, #1
	bne _0210972C
	add r9, r9, #1
	b _0210969C
_0210972C:
	ldr r0, [sp, #4]
	cmp r0, #0
	strne r8, [r0]
	mov r0, #1
	add sp, sp, #0xd0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02109744: .word ov16_02119D08
_02109748: .word ov16_02118A0C
_0210974C: .word ov16_02119D00
_02109750: .word ov16_02119D14
_02109754: .word unk_0209C2C4
	arm_func_end FUN_ov16_02109630

	arm_func_start FUN_ov16_02109758
FUN_ov16_02109758: ; 0x02109758
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
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r1, [sp]
	ldr r2, _021097FC ; =0x0209A5D0
	and r1, r1, #0xff
	sub r3, r1, #1
	mov lr, r4, lsl r3
	mov r0, #1
	rsb r1, r3, #0x20
	ldr r12, [r2, #0x28]
	orr lr, lr, r0, lsr r1
	sub r1, r3, #0x20
	orr lr, lr, r0, lsl r1
	orr r4, r12, r0, lsl r3
	ldr r1, [r2, #0x2c]
	cmp r5, #0
	orr r12, r1, lr
	str r4, [r2, #0x28]
	str r12, [r2, #0x2c]
	ldrsb r1, [r6, #0xb]
	strb r0, [r6, #0xa]
	add r1, r1, #1
	strb r1, [r6, #0xb]
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021097FC: .word unk_0209A5D0
	arm_func_end FUN_ov16_02109758

	arm_func_start FUN_ov16_02109800
FUN_ov16_02109800: ; 0x02109800
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xe8
	add r8, sp, #0x68
	mov r9, r0
	mov r4, #0
	mov r6, r1
	mov r7, #0x80
	mov r5, r2
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r1, [sp, #0x68]
	ldr r0, _021098B8 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	add r2, sp, #0
	bl FUN_0204bd64
	cmp r0, #0
	bne _02109880
	cmp r5, #0
	subne r0, r7, #0x81
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0xe8
	strb r0, [r6, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02109880:
	ldrb r0, [sp, #0x5a]
	cmp r0, #1
	beq _02109898
	cmp r0, #2
	moveq r4, #2
	b _0210989C
_02109898:
	mov r4, #1
_0210989C:
	mov r0, #1
	strb r0, [r6, #0xa]
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0xe8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021098B8: .word unk_0209BA20
	arm_func_end FUN_ov16_02109800

	arm_func_start FUN_ov16_021098bc
FUN_ov16_021098bc: ; 0x021098BC
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _0210992C ; =0x0209BA20
	bl FUN_02072338
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210992C: .word unk_0209BA20
	arm_func_end FUN_ov16_021098bc

	arm_func_start FUN_ov16_02109930
FUN_ov16_02109930: ; 0x02109930
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	add r8, sp, #0
	mov r9, r0
	mov r6, r2
	mov r5, #0
	mov r7, r1
	mov r0, r8
	mov r1, r5
	mov r2, #0x80
	mov r4, #1
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_020febf8
	str r0, [r7, #4]
	ldr r12, [sp]
	ldr r3, [sp, #4]
	mov r0, r4, lsl r12
	cmp r3, #0
	blt _021099F4
	cmp r3, #0x10
	bge _021099F4
	ldr r2, _02109A10 ; =0x020A12C0
	mov r1, #0x54
	mla r1, r3, r1, r2
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _021099D4
	ldr r2, [sp, #8]
	add r1, r1, #0x44
	cmp r2, #0
	movne r5, r4
	add r12, r1, r5, lsl #3
	ldmia r12, {r2, r3}
	orr r2, r2, r0
	str r2, [r1, r5, lsl #3]
	orr r0, r3, r0, asr #31
	str r0, [r12, #4]
	b _021099F4
_021099D4:
	mov r3, r12, lsl #1
	ldrh r2, [r1, r3]
	ldr r0, _02109A14 ; =0x0000FFFD
	and r0, r2, r0
	strh r0, [r1, r3]
	ldrh r0, [r1, r3]
	orr r0, r0, #2
	strh r0, [r1, r3]
_021099F4:
	mov r0, #1
	strb r0, [r7, #0xa]
	cmp r6, #0
	strne r4, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02109A10: .word unk_020A12C0
_02109A14: .word 0x0000FFFD
	arm_func_end FUN_ov16_02109930

	arm_func_start FUN_ov16_02109a18
FUN_ov16_02109a18: ; 0x02109A18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r9, r0
	mov r7, r2
	mov r6, #0
	mov r8, r1
	mov r0, r5
	mov r1, r6
	mov r2, #0x80
	ldr r4, _02109B48 ; =0x0209BA20
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020febf8
	mov r5, #1
	ldrsb r1, [r8, #0xb]
	str r0, [r8, #4]
	strb r5, [r8, #0xa]
	add r0, r1, #1
	strb r0, [r8, #0xb]
	ldr r0, [sp]
	cmp r0, #4
	bgt _02109A9C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _02109B28
_02109A88: ; jump table
	b _02109B28 ; case 0
	b _02109AA8 ; case 1
	b _02109ABC ; case 2
	b _02109AE4 ; case 3
	b _02109AF4 ; case 4
_02109A9C:
	cmp r0, #0x10
	beq _02109B18
	b _02109B28
_02109AA8:
	ldr r0, _02109B48 ; =0x0209BA20
	mov r1, r6
	mov r2, r5
	bl FUN_0204c560
	b _02109B34
_02109ABC:
	mov r0, r4
	mov r1, r6
	bl FUN_0204c4cc
	mov r8, r0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_0204c560
	sub r0, r8, r0
	b _02109B34
_02109AE4:
	ldr r0, _02109B48 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204c4cc
	b _02109B34
_02109AF4:
	mov r0, r4
	mov r1, r6
	bl FUN_0204c420
	mov r5, r0
	mov r0, r4
	mov r1, r6
	bl FUN_0204c4cc
	sub r0, r5, r0
	b _02109B34
_02109B18:
	ldr r0, _02109B48 ; =0x0209BA20
	mov r1, #0
	bl FUN_0204c3e0
	b _02109B34
_02109B28:
	ldr r0, _02109B48 ; =0x0209BA20
	mov r1, #0
	bl FUN_0204c420
_02109B34:
	cmp r7, #0
	strne r0, [r7]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02109B48: .word unk_0209BA20
	arm_func_end FUN_ov16_02109a18

	arm_func_start FUN_ov16_02109b4c
FUN_ov16_02109b4c: ; 0x02109B4C
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	mov r2, #1
	add r1, r1, #1
	strb r1, [r7, #0xb]
	ldr r0, _02109BC0 ; =0x0209BA20
	mov r1, r4
	strb r2, [r7, #0xa]
	bl FUN_0204c4cc
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02109BC0: .word unk_0209BA20
	arm_func_end FUN_ov16_02109b4c

	arm_func_start FUN_ov16_02109bc4
FUN_ov16_02109bc4: ; 0x02109BC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	mov r9, r0
	ldr r0, _02109C90 ; =0x0209BA20
	mov r5, #0
	mov r8, r1
	mov r1, r5
	mov r7, r2
	bl FUN_0205107c
	add r6, sp, #0
	mov r4, r0
	mov r0, r6
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r9
	mov r2, r6
	mov r1, r8
	bl FUN_ov16_020febf8
	str r0, [r8, #4]
	ldrsb r0, [r8, #0xb]
	mov r6, #1
	strb r6, [r8, #0xa]
	add r0, r0, #1
	strb r0, [r8, #0xb]
	ldr r0, _02109C94 ; =0x0209A11C
	ldr r1, [sp]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r5
	bl FUN_0206c7dc
	cmp r0, #0
	beq _02109C78
	ldr r1, [sp]
	mov r0, r4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0204fd68
	cmp r0, #0
	moveq r6, #4
	beq _02109C7C
	cmp r0, #0xb
	movgt r6, #2
	b _02109C7C
_02109C78:
	mov r6, r5
_02109C7C:
	cmp r7, #0
	strne r6, [r7]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02109C90: .word unk_0209BA20
_02109C94: .word unk_0209A11C
	arm_func_end FUN_ov16_02109bc4

	arm_func_start FUN_ov16_02109c98
FUN_ov16_02109c98: ; 0x02109C98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x8c
	add r6, sp, #0xc
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp, #0x1c]
	ldr r6, _02109D8C ; =0x0209BA20
	cmp r0, #0
	ldr r0, [sp, #0x18]
	moveq r2, r4
	and r0, r0, #0xff
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r4, #0
	stmib sp, {r0, r2}
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	mov r2, r0, lsl #0x10
	mov r0, r6
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_0204c778
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02109D74
	ldr r0, [sp, #0xc]
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _02109D74
_02109D50:
	mov r0, r7
	mov r1, r4
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r6
	bl FUN_02074a2c
	add r4, r4, #1
	cmp r4, #6
	blt _02109D50
_02109D74:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02109D8C: .word unk_0209BA20
	arm_func_end FUN_ov16_02109c98

	arm_func_start FUN_ov16_02109d90
FUN_ov16_02109d90: ; 0x02109D90
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r6, r0
	mov r7, r2
	mov r4, #0
	mov r8, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020febf8
	mov r6, #1
	ldrsb r1, [r8, #0xb]
	str r0, [r8, #4]
	strb r6, [r8, #0xa]
	add r0, r1, #1
	strb r0, [r8, #0xb]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r0, r0, lsl #0x10
	cmp r1, #2
	mov r5, r0, lsr #0x10
	movne r6, r4
	orreq r5, r5, #0x8000
	cmp r6, #0
	bne _02109EB8
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02109E58
	mov r9, #0
	mov r0, r5
	mov r1, r9
	bl FUN_ov16_020efa9c
	movs r8, r0
	beq _02109E58
	ldr r4, _02109F3C ; =0x0209BA20
	b _02109E50
_02109E34:
	mov r0, r8
	mov r1, r9
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_02074a2c
	add r9, r9, #1
_02109E50:
	cmp r9, #6
	blt _02109E34
_02109E58:
	ldr r4, _02109F40 ; =0x02099ED8
	mov r10, #0
	ldr r0, [r4]
	mov r1, r5
	mov r2, r10
	bl FUN_020554b0
	mov r9, r0
	mov r8, #1
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	bl FUN_02055938
	ldr r0, [r4]
	mov r1, r9
	bl FUN_02055274
	mov r2, r10
	ldr r4, _02109F44 ; =0x02099EC0
	mov r1, r5
	ldr r0, [r4]
	bl FUN_02056a88
	mov r2, r8
	mov r1, r0
	ldr r0, [r4]
	bl FUN_02056e04
_02109EB8:
	ldr r4, _02109F3C ; =0x0209BA20
	mov r1, r6
	mov r0, r4
	mov r2, r5
	bl FUN_0204d2a4
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_0204d354
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_0204d3c0
	mov r0, r4
	mov r1, r6
	bl FUN_0204d0b4
	cmp r6, #0
	ldreq r0, _02109F48 ; =0x0209A11C
	ldreq r1, _02109F4C ; =0x0209A0AC
	ldreq r0, [r0]
	cmpeq r1, r0
	bne _02109F24
	mov r0, r4
	mov r1, #2
	bl FUN_0204d0b4
	mov r0, r4
	bl FUN_0204ce50
_02109F24:
	mov r0, #1
	cmp r7, #0
	strne r0, [r7]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02109F3C: .word unk_0209BA20
_02109F40: .word unk_02099ED8
_02109F44: .word unk_02099EC0
_02109F48: .word unk_0209A11C
_02109F4C: .word unk_0209A0AC
	arm_func_end FUN_ov16_02109d90

	arm_func_start FUN_ov16_02109f50
FUN_ov16_02109f50: ; 0x02109F50
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	mov r4, #1
	add r1, r1, #1
	strb r1, [r7, #0xb]
	ldr r0, _02109FC4 ; =0x0209BA20
	mov r1, r5
	strb r4, [r7, #0xa]
	bl FUN_0204eb4c
	cmp r6, #0
	strne r4, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02109FC4: .word unk_0209BA20
	arm_func_end FUN_ov16_02109f50

	arm_func_start FUN_ov16_02109fc8
FUN_ov16_02109fc8: ; 0x02109FC8
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	ldr r6, _0210A090 ; =0x0209BA20
	cmp r0, #0
	streq r1, [sp, #4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	mov r0, r6
	bl FUN_ov16_020ede60
	ldr r5, _0210A094 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0210A07C
	ldr r1, [sp]
	mov r0, r6
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0210A07C
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x12
	bne _0210A07C
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r5]
	bl FUN_ov132_0215a0c4
_0210A07C:
	cmp r4, #0
	strne r7, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210A090: .word unk_0209BA20
_0210A094: .word unk_02099EF0
	arm_func_end FUN_ov16_02109fc8

	arm_func_start FUN_ov16_0210a098
FUN_ov16_0210a098: ; 0x0210A098
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	beq _0210A104
	ldr r1, [sp, #4]
	ldr r0, _0210A12C ; =0x020A0B00
	b _0210A110
_0210A104:
	ldr r1, [sp, #4]
	ldr r0, _0210A12C ; =0x020A0B00
	mov r2, r4
_0210A110:
	bl FUN_0207467c
	mov r0, #1
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A12C: .word unk_020A0B00
	arm_func_end FUN_ov16_0210a098

	arm_func_start FUN_ov16_0210a130
FUN_ov16_0210a130: ; 0x0210A130
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	beq _0210A19C
	ldr r1, [sp, #4]
	ldr r0, _0210A1C4 ; =0x020A0B00
	b _0210A1A8
_0210A19C:
	ldr r1, [sp, #4]
	ldr r0, _0210A1C4 ; =0x020A0B00
	mov r2, r4
_0210A1A8:
	bl FUN_02074594
	mov r0, #1
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A1C4: .word unk_020A0B00
	arm_func_end FUN_ov16_0210a130

	arm_func_start FUN_ov16_0210a1c8
FUN_ov16_0210a1c8: ; 0x0210A1C8
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
	bl FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	mov r4, #1
	strb r4, [r7, #0xa]
	add r1, r1, #1
	strb r1, [r7, #0xb]
	str r0, [r7, #4]
	ldr r0, [sp]
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0210A244
	bl FUN_0206d5f0
	bl FUN_ov16_020f0a14
	mov r5, r4
	cmp r0, #0
	moveq r5, #2
_0210A244:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210a1c8

	arm_func_start FUN_ov16_0210a258
FUN_ov16_0210a258: ; 0x0210A258
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa4
	add r6, sp, #0x24
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r2, [sp, #0x24]
	cmp r2, #0x10
	bgt _0210A2CC
	ldr r0, _0210A314 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204dea4
	mov r4, r0
	b _0210A300
_0210A2CC:
	add r6, sp, #4
	ldr r0, _0210A314 ; =0x0209BA20
	mov r1, r4
	mov r2, r6
	str r4, [sp]
	mov r3, #0x10
	bl FUN_0204b438
	ldr r1, [sp, #0x24]
	add r0, r0, #0x11
	cmp r1, r0
	sublt r0, r1, #0x11
	movlt r0, r0, lsl #1
	ldrlth r4, [r6, r0]
_0210A300:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0xa4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210A314: .word unk_0209BA20
	arm_func_end FUN_ov16_0210a258

	arm_func_start FUN_ov16_0210a318
FUN_ov16_0210a318: ; 0x0210A318
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	mov r0, r7
	bl FUN_ov16_0210c768
	mov r2, r0
	mov r1, r2, lsl #0x10
	ldr r0, _0210A3A0 ; =0x0209BA20
	mov r1, r1, lsr #0x10
	str r2, [sp]
	bl FUN_0204eb00
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210A3A0: .word unk_0209BA20
	arm_func_end FUN_ov16_0210a318

	arm_func_start FUN_ov16_0210a3a4
FUN_ov16_0210a3a4: ; 0x0210A3A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x90
	add r6, sp, #0x10
	mov r8, r0
	mov r10, r2
	mov r4, #0
	mov r5, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	mov r7, #1
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	mov r6, r7
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	strb r6, [r5, #0xa]
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldr r0, [sp, #0x18]
	cmp r0, #2
	movne r6, r4
	ldr r0, _0210A5D4 ; =0x0209BA20
	mov r1, r6
	bl FUN_0205107c
	ldr r1, [sp, #0x10]
	mov r8, r0
	mov r0, r1, lsl #0x10
	mov r9, r0, lsr #0x10
	cmp r6, #1
	orreq r9, r9, #0x8000
	mov r0, r8
	mov r1, r9
	ldr r4, [sp, #0x14]
	bl FUN_0204fd68
	movs r5, r0
	bne _0210A450
	mov r0, r8
	bl FUN_0204fda4
	mov r5, r0
_0210A450:
	mov r0, r8
	sub r1, r4, #1
	bl FUN_0204fbe8
	mov r11, r0
	ldr r0, _0210A5D4 ; =0x0209BA20
	mov r1, r6
	mov r2, r9
	mov r3, r4
	str r7, [sp]
	bl FUN_0204c92c
	mov r6, #0
	mov r0, r9
	mov r1, r6
	bl FUN_ov16_020efa9c
	mov r1, r6
	mov r6, r0
	mov r0, r11
	bl FUN_ov16_020efa9c
	mov r7, r0
	mov r0, #0x80000000
	cmp r6, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	str r0, [sp, #4]
	mov r8, r0
	beq _0210A4DC
	mov r0, r6
	bl FUN_0206d688
	cmp r0, #0
	ldrne r1, [r6, #0x84]
	cmpne r1, #0
	ldrne r0, [r1]
	strne r0, [sp, #0xc]
	ldrne r0, [r1, #4]
	strne r0, [sp, #8]
_0210A4DC:
	cmp r7, #0
	beq _0210A504
	mov r0, r7
	bl FUN_0206d688
	cmp r0, #0
	ldrne r1, [r7, #0x84]
	cmpne r1, #0
	ldrne r0, [r1]
	ldrne r8, [r1, #4]
	strne r0, [sp, #4]
_0210A504:
	cmp r6, #0
	ldrne r0, [r6, #0x88]
	cmpne r0, #0
	beq _0210A550
	cmp r4, #1
	blt _0210A540
	cmp r4, #0xb
	bgt _0210A540
	ldr r0, _0210A5D4 ; =0x0209BA20
	ldr r3, [sp, #4]
	mov r1, r9
	mov r2, r4
	str r8, [sp]
	bl FUN_ov126_0212ab9c
	b _0210A550
_0210A540:
	ldr r0, _0210A5D4 ; =0x0209BA20
	mov r1, r9
	mov r2, r4
	bl FUN_ov126_0212aa34
_0210A550:
	cmp r7, #0
	ldrne r0, [r7, #0x88]
	mov r6, #1
	cmpne r0, #0
	beq _0210A5A4
	cmp r5, #1
	blt _0210A594
	cmp r5, #0xb
	bgt _0210A594
	ldr r4, [sp, #8]
	ldr r0, _0210A5D4 ; =0x0209BA20
	ldr r3, [sp, #0xc]
	mov r1, r11
	mov r2, r5
	str r4, [sp]
	bl FUN_ov126_0212ab9c
	b _0210A5A4
_0210A594:
	ldr r0, _0210A5D4 ; =0x0209BA20
	mov r1, r11
	mov r2, r5
	bl FUN_ov126_0212aa34
_0210A5A4:
	ldr r0, _0210A5D8 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0210A5C0
	mov r1, #1
	mov r2, #0
	bl FUN_ov132_021435c0
_0210A5C0:
	cmp r10, #0
	strne r6, [r10]
	mov r0, #1
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210A5D4: .word unk_0209BA20
_0210A5D8: .word unk_02099EF0
	arm_func_end FUN_ov16_0210a3a4

	arm_func_start FUN_ov16_0210a5dc
FUN_ov16_0210a5dc: ; 0x0210A5DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r6, sp, #4
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	strb r1, [r7, #0xa]
	str r0, [r7, #4]
	add r1, r2, #1
	strb r1, [r7, #0xb]
	ldr r0, [sp, #4]
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r1, r0
	beq _0210A654
	ldr r2, [sp, #8]
	ldr r0, _0210A688 ; =0x0209BA20
	add r3, sp, #0
	bl FUN_0204a318
_0210A654:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	movlt r0, #0
	strlt r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, sp, #0
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210A688: .word unk_0209BA20
	arm_func_end FUN_ov16_0210a5dc

	arm_func_start FUN_ov16_0210a68c
FUN_ov16_0210a68c: ; 0x0210A68C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r6, sp, #4
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	strb r1, [r7, #0xa]
	str r0, [r7, #4]
	add r1, r2, #1
	strb r1, [r7, #0xb]
	ldr r0, [sp, #4]
	mov r1, r5
	bl FUN_ov16_020efa9c
	mov r6, r0
	ldr r0, [sp, #0xc]
	mov r1, r5
	bl FUN_ov16_020efa9c
	mov r1, r5
	mov r5, r0
	ldr r0, [sp, #0x10]
	bl FUN_ov16_020efa9c
	cmp r6, #0
	beq _0210A72C
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r0, _0210A744 ; =0x0209BA20
	mov r1, r6
	mov r3, r5
	bl FUN_0204a918
_0210A72C:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210A744: .word unk_0209BA20
	arm_func_end FUN_ov16_0210a68c

	arm_func_start FUN_ov16_0210a748
FUN_ov16_0210a748: ; 0x0210A748
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r8, r0
	mov r5, r2
	mov r6, #0
	mov r7, r1
	mov r0, r4
	mov r1, r6
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	mov r4, #1
	strb r4, [r7, #0xa]
	add r1, r1, #1
	strb r1, [r7, #0xb]
	str r0, [r7, #4]
	ldr r0, [sp]
	mov r1, r6
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0210A7EC
	ldr r0, [sp]
	ldr r6, _0210A804 ; =0x0209BA20
	mov r1, r0, lsl #0x10
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, r6
	mov r1, r1, lsr #0x10
	bl FUN_02049ea4
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0210A7F0
	ldr r1, [sp, #4]
	mov r0, r6
	bl FUN_02074a2c
	b _0210A7F0
_0210A7EC:
	mov r4, r6
_0210A7F0:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A804: .word unk_0209BA20
	arm_func_end FUN_ov16_0210a748

	arm_func_start FUN_ov16_0210a808
FUN_ov16_0210a808: ; 0x0210A808
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x88
	add r6, sp, #8
	mov r9, r0
	mov r7, r2
	mov r4, #0
	mov r8, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_ov16_020febf8
	mov r6, #1
	ldrsb r1, [r8, #0xb]
	str r0, [r8, #4]
	strb r6, [r8, #0xa]
	add r0, r1, #1
	strb r0, [r8, #0xb]
	ldr r0, [sp, #8]
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r1, r0
	ldr r0, [sp, #0xc]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0210A91C
_0210A87C: ; jump table
	b _0210A91C ; case 0
	b _0210A890 ; case 1
	b _0210A8A8 ; case 2
	b _0210A8CC ; case 3
	b _0210A8F0 ; case 4
_0210A890:
	ldr r0, [sp, #0x14]
	mov r2, #0
	cmp r0, #0
	moveq r6, r4
	ldr r0, [sp, #0x10]
	b _0210A904
_0210A8A8:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	cmp r0, #0
	str r2, [sp]
	moveq r6, r4
	ldr r0, _0210A930 ; =0x0209BA20
	mov r2, #0
	mov r3, #1
	b _0210A8EC
_0210A8CC:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	cmp r0, #0
	str r2, [sp]
	ldr r0, _0210A930 ; =0x0209BA20
	moveq r6, r4
	mov r2, #1
	mov r3, #0
_0210A8EC:
	b _0210A910
_0210A8F0:
	ldr r0, [sp, #0x14]
	mov r2, #1
	cmp r0, #0
	ldr r0, [sp, #0x10]
	moveq r6, r4
_0210A904:
	str r0, [sp]
	ldr r0, _0210A930 ; =0x0209BA20
	mov r3, r2
_0210A910:
	str r6, [sp, #4]
	bl FUN_0204aba4
	mov r5, r0
_0210A91C:
	cmp r7, #0
	strne r5, [r7]
	mov r0, #1
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210A930: .word unk_0209BA20
	arm_func_end FUN_ov16_0210a808

	arm_func_start FUN_ov16_0210a934
FUN_ov16_0210a934: ; 0x0210A934
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	strb r1, [r7, #0xa]
	str r0, [r7, #4]
	add r1, r2, #1
	strb r1, [r7, #0xb]
	ldr r0, [sp]
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r1, r0
	beq _0210A9AC
	ldr r2, [sp, #4]
	ldr r0, _0210A9C0 ; =0x0209BA20
	bl FUN_0207224c
	mov r5, r0
_0210A9AC:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A9C0: .word unk_0209BA20
	arm_func_end FUN_ov16_0210a934

	arm_func_start FUN_ov16_0210a9c4
FUN_ov16_0210a9c4: ; 0x0210A9C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r5, r2
	mov r7, #0
	mov r4, r1
	mov r0, r6
	mov r1, r7
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r4, #0xb]
	strb r1, [r4, #0xa]
	ldr r6, _0210AB00 ; =0x02099EF0
	add r1, r2, #1
	strb r1, [r4, #0xb]
	str r0, [r4, #4]
	ldr r0, [r6]
	mov r1, r7
	ldr r4, [sp]
	bl FUN_ov132_02143114
	mov r7, r0
	ldrsh r0, [r7, #0x1c]
	bl FUN_ov16_020efa80
	ldrb r9, [r7, #0x25]
	mov r8, r0
	ldr r0, [r6]
	mov r1, r9
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0210AA58
	b _0210AA98
_0210AA58:
	cmp r9, #0
	beq _0210AA68
	cmp r9, #0xf
	bne _0210AAA8
_0210AA68:
	cmp r8, #0
	beq _0210AAA8
	mov r0, r8
	bl FUN_0206d6d8
	cmp r0, #0
	beq _0210AAA8
	ldr r6, _0210AB00 ; =0x02099EF0
	ldrb r1, [r7, #0x26]
	ldr r0, [r6]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0210AAA8
_0210AA98:
	ldr r0, [r6]
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	b _0210AAB8
_0210AAA8:
	ldr r0, _0210AB00 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213246c
	ldrsb r0, [r0, #4]
_0210AAB8:
	bl FUN_ov16_020f07f4
	ldr r1, [sp, #4]
	cmp r1, #1
	bne _0210AADC
	cmp r0, #0
	ldrne r0, [sp]
	orrne r0, r0, #0x8000
	strne r0, [sp]
	b _0210AAEC
_0210AADC:
	cmp r0, #0
	ldreq r0, [sp]
	orreq r0, r0, #0x8000
	streq r0, [sp]
_0210AAEC:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210AB00: .word unk_02099EF0
	arm_func_end FUN_ov16_0210a9c4

	arm_func_start FUN_ov16_0210ab04
FUN_ov16_0210ab04: ; 0x0210AB04
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #1
	mov r0, r5
	bne _0210AB80
	bl FUN_ov16_020f0a14
	cmp r0, #0
	ldreq r0, [sp]
	orreq r0, r0, #0x8000
	streq r0, [sp]
	b _0210AB94
_0210AB80:
	bl FUN_ov16_020f0a14
	cmp r0, #0
	ldrne r0, [sp]
	orrne r0, r0, #0x8000
	strne r0, [sp]
_0210AB94:
	ldr r0, [sp]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210ab04

	arm_func_start FUN_ov16_0210abac
FUN_ov16_0210abac: ; 0x0210ABAC
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
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	mov r0, #1
	ldrsb r1, [r5, #0xb]
	strb r0, [r5, #0xa]
	add r0, r1, #1
	strb r0, [r5, #0xb]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r2, [r5]
	ldr r0, [r6]
	ldrb r3, [r2, #6]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	sub r3, r3, #2
	bl FUN_02036118
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210abac

	arm_func_start FUN_ov16_0210ac34
FUN_ov16_0210ac34: ; 0x0210AC34
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	cmp r1, #0
	beq _0210AC98
	ldr r0, _0210ACD8 ; =0x0209BA20
	bl FUN_020728a8
_0210AC98:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0210ACAC
	ldr r0, _0210ACD8 ; =0x0209BA20
	bl FUN_0207287c
_0210ACAC:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0210ACC0
	ldr r0, _0210ACD8 ; =0x0209BA20
	bl FUN_020728d4
_0210ACC0:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210ACD8: .word unk_0209BA20
	arm_func_end FUN_ov16_0210ac34

	arm_func_start FUN_ov16_0210acdc
FUN_ov16_0210acdc: ; 0x0210ACDC
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	cmp r0, #1
	bne _0210AD40
	bl FUN_ov16_020f081c
	b _0210AD48
_0210AD40:
	bl FUN_ov16_020f081c
	eor r0, r0, #1
_0210AD48:
	str r0, [sp]
	ldr r1, [sp]
	ldr r0, _0210AD70 ; =0x020A06D2
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210AD70: .word unk_020A06D2
	arm_func_end FUN_ov16_0210acdc

	arm_func_start FUN_ov16_0210ad74
FUN_ov16_0210ad74: ; 0x0210AD74
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
	bl FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	mov r1, #1
	add r2, r2, #1
	ldr r0, _0210ADE0 ; =0x020A9C40
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	bl FUN_02045950
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210ADE0: .word unk_020A9C40
	arm_func_end FUN_ov16_0210ad74

	arm_func_start FUN_ov16_0210ade4
FUN_ov16_0210ade4: ; 0x0210ADE4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xdc
	add r5, sp, #0x5c
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
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	mov r0, #1
	ldrsb r1, [r6, #0xb]
	strb r0, [r6, #0xa]
	add r5, sp, #0x34
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #0x68]
	str r0, [sp]
	ldr r1, [sp, #0x6c]
	mov r0, r5
	str r1, [sp, #4]
	ldr r1, [sp, #0x70]
	str r1, [sp, #8]
	ldr r1, [sp, #0x74]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x78]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x7c]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x80]
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x84]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x88]
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x8c]
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x90]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x94]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sprintf
	mov r2, r5
	add r5, sp, #0x48
	ldr r1, _0210AEE8 ; =0x02119D20
	mov r0, r5
	bl sprintf
	ldr r0, _0210AEEC ; =0x020A9C40
	mov r1, r5
	bl FUN_02046380
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0xdc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210AEE8: .word ov16_02119D20
_0210AEEC: .word unk_020A9C40
	arm_func_end FUN_ov16_0210ade4

	arm_func_start FUN_ov16_0210aef0
FUN_ov16_0210aef0: ; 0x0210AEF0
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
	bl FUN_ov16_020febf8
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _0210AF5C ; =0x020A0640
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldrb r0, [r1, #0x90]
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210AF5C: .word unk_020A0640
	arm_func_end FUN_ov16_0210aef0

	arm_func_start FUN_ov16_0210af60
FUN_ov16_0210af60: ; 0x0210AF60
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	cmp r0, #1
	bne _0210AFC8
	bl FUN_ov16_020f081c
	mov r1, r0
	b _0210AFD0
_0210AFC8:
	bl FUN_ov16_020f081c
	eor r1, r0, #1
_0210AFD0:
	ldr r0, _0210AFF0 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_02139248
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210AFF0: .word unk_02099EF0
	arm_func_end FUN_ov16_0210af60

	arm_func_start FUN_ov16_0210aff4
FUN_ov16_0210aff4: ; 0x0210AFF4
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
	bl FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, _0210B070 ; =0x02099EF0
	ldr r1, [sp]
	ldr r0, [r0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_ov132_02146dd4
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B070: .word unk_02099EF0
	arm_func_end FUN_ov16_0210aff4

	arm_func_start FUN_ov16_0210b074
FUN_ov16_0210b074: ; 0x0210B074
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
	bl FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, _0210B0F0 ; =0x02099EF0
	ldr r1, [sp]
	ldr r0, [r0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_ov132_02146d18
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B0F0: .word unk_02099EF0
	arm_func_end FUN_ov16_0210b074

	arm_func_start FUN_ov16_0210b0f4
FUN_ov16_0210b0f4: ; 0x0210B0F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xa8
	add r8, sp, #0x28
	mov r9, r0
	mov r4, #0
	mov r7, r1
	mov r6, #0x80
	mov r5, r2
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r1, [sp, #0x28]
	sub r0, r2, #3
	cmp r1, r0
	beq _0210B1CC
	sub r0, r2, #2
	cmp r1, r0
	bne _0210B230
	bl FUN_ov16_020f081c
	ldr r2, _0210B258 ; =0x02099EF0
	stmia sp, {r4, r6}
	mov r1, r0
	add r7, sp, #8
	ldr r0, [r2]
	mov r2, r7
	mov r3, #0x10
	bl FUN_ov126_02138d98
	mov r8, r0
	cmp r8, #0
	ble _0210B240
	ldr r6, _0210B25C ; =0x0209BA20
_0210B19C:
	mov r0, r4, lsl #1
	ldrh r1, [r7, r0]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	mov r0, r6
	bl FUN_0204afd0
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, asr #16
	mov r4, r0, asr #0x10
	bgt _0210B19C
	b _0210B240
_0210B1CC:
	bl FUN_ov16_020f083c
	ldr r2, _0210B258 ; =0x02099EF0
	stmia sp, {r4, r6}
	mov r1, r0
	add r7, sp, #8
	ldr r0, [r2]
	mov r2, r7
	mov r3, #0x10
	bl FUN_ov126_02138d98
	mov r8, r0
	cmp r8, #0
	ble _0210B240
	ldr r6, _0210B25C ; =0x0209BA20
_0210B200:
	mov r0, r4, lsl #1
	ldrh r1, [r7, r0]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	mov r0, r6
	bl FUN_0204afd0
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, asr #16
	mov r4, r0, asr #0x10
	bgt _0210B200
	b _0210B240
_0210B230:
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	ldr r0, _0210B25C ; =0x0209BA20
	bl FUN_0204afd0
_0210B240:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0xa8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210B258: .word unk_02099EF0
_0210B25C: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b0f4

	arm_func_start FUN_ov16_0210b260
FUN_ov16_0210b260: ; 0x0210B260
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
	bl FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	mov r4, #1
	ldr r1, _0210B2D8 ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	ldr r0, [r1]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_ov132_02146e90
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B2D8: .word unk_02099EF0
	arm_func_end FUN_ov16_0210b260

	arm_func_start FUN_ov16_0210b2dc
FUN_ov16_0210b2dc: ; 0x0210B2DC
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	beq _0210B348
	ldr r1, [sp, #4]
	ldr r0, _0210B370 ; =0x020A0B00
	b _0210B354
_0210B348:
	ldr r1, [sp, #4]
	ldr r0, _0210B370 ; =0x020A0B00
	mov r2, r4
_0210B354:
	bl FUN_020745d8
	mov r0, #1
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210B370: .word unk_020A0B00
	arm_func_end FUN_ov16_0210b2dc

	arm_func_start FUN_ov16_0210b374
FUN_ov16_0210b374: ; 0x0210B374
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
	bl FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	mov r4, #1
	ldr r1, _0210B3F0 ; =0x02099F54
	add r2, r2, #1
	strb r2, [r6, #0xb]
	strb r4, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov16_020f8b58
	mov r1, r0
	ldr r0, _0210B3F4 ; =0x0209BA20
	bl FUN_020727a8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B3F0: .word unk_02099F54
_0210B3F4: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b374

	arm_func_start FUN_ov16_0210b3f8
FUN_ov16_0210b3f8: ; 0x0210B3F8
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
	bl FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r4, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, _0210B474 ; =0x02099EF0
	ldr r1, [sp]
	ldr r0, [r0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_ov132_02146ef8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B474: .word unk_02099EF0
	arm_func_end FUN_ov16_0210b3f8

	arm_func_start FUN_ov16_0210b478
FUN_ov16_0210b478: ; 0x0210B478
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	cmp r0, #1
	bne _0210B4E0
	bl FUN_ov16_020f081c
	mov r1, r0
	b _0210B4E8
_0210B4E0:
	bl FUN_ov16_020f081c
	eor r1, r0, #1
_0210B4E8:
	ldr r0, _0210B510 ; =0x02099EF0
	str r1, [sp]
	ldr r0, [r0]
	bl FUN_ov132_02147000
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B510: .word unk_02099EF0
	arm_func_end FUN_ov16_0210b478

	arm_func_start FUN_ov16_0210b514
FUN_ov16_0210b514: ; 0x0210B514
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
	bl FUN_ov16_020febf8
	mov r1, #1
	strb r1, [r7, #0xa]
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	mov r1, r5
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0210B5B0
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0210B59C
	cmp r1, #1
	beq _0210B5A8
	b _0210B5B0
_0210B59C:
	mov r1, #2
	bl FUN_0206d3fc
	b _0210B5B0
_0210B5A8:
	mov r1, #2
	bl FUN_0206d3c8
_0210B5B0:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210b514

	arm_func_start FUN_ov16_0210b5c8
FUN_ov16_0210b5c8: ; 0x0210B5C8
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210B630
	cmp r0, #1
	beq _0210B648
	b _0210B65C
_0210B630:
	ldr r1, [sp]
	ldr r0, _0210B674 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020503c0
	b _0210B65C
_0210B648:
	ldr r1, [sp]
	ldr r0, _0210B674 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050324
_0210B65C:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B674: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b5c8

	arm_func_start FUN_ov16_0210b678
FUN_ov16_0210b678: ; 0x0210B678
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210B6E0
	cmp r0, #1
	beq _0210B6F8
	b _0210B70C
_0210B6E0:
	ldr r1, [sp]
	ldr r0, _0210B724 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050470
	b _0210B70C
_0210B6F8:
	ldr r1, [sp]
	ldr r0, _0210B724 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020503e4
_0210B70C:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B724: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b678

	arm_func_start FUN_ov16_0210b728
FUN_ov16_0210b728: ; 0x0210B728
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210B790
	cmp r0, #1
	beq _0210B7A8
	b _0210B7BC
_0210B790:
	ldr r1, [sp]
	ldr r0, _0210B7D4 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020504d4
	b _0210B7BC
_0210B7A8:
	ldr r1, [sp]
	ldr r0, _0210B7D4 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050494
_0210B7BC:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B7D4: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b728

	arm_func_start FUN_ov16_0210b7d8
FUN_ov16_0210b7d8: ; 0x0210B7D8
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210B840
	cmp r0, #1
	beq _0210B858
	b _0210B86C
_0210B840:
	ldr r1, [sp]
	ldr r0, _0210B884 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0205052c
	b _0210B86C
_0210B858:
	ldr r1, [sp]
	ldr r0, _0210B884 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020504f8
_0210B86C:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B884: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b7d8

	arm_func_start FUN_ov16_0210b888
FUN_ov16_0210b888: ; 0x0210B888
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210B8F0
	cmp r0, #1
	beq _0210B908
	b _0210B91C
_0210B8F0:
	ldr r1, [sp]
	ldr r0, _0210B934 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050584
	b _0210B91C
_0210B908:
	ldr r1, [sp]
	ldr r0, _0210B934 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050550
_0210B91C:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B934: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b888

	arm_func_start FUN_ov16_0210b938
FUN_ov16_0210b938: ; 0x0210B938
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210B9A0
	cmp r0, #1
	beq _0210B9B8
	b _0210B9CC
_0210B9A0:
	ldr r1, [sp]
	ldr r0, _0210B9E4 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050618
	b _0210B9CC
_0210B9B8:
	ldr r1, [sp]
	ldr r0, _0210B9E4 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020505a8
_0210B9CC:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B9E4: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b938

	arm_func_start FUN_ov16_0210b9e8
FUN_ov16_0210b9e8: ; 0x0210B9E8
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210BA50
	cmp r0, #1
	beq _0210BA68
	b _0210BA7C
_0210BA50:
	ldr r1, [sp]
	ldr r0, _0210BA94 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050670
	b _0210BA7C
_0210BA68:
	ldr r1, [sp]
	ldr r0, _0210BA94 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0205063c
_0210BA7C:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210BA94: .word unk_0209BA20
	arm_func_end FUN_ov16_0210b9e8

	arm_func_start FUN_ov16_0210ba98
FUN_ov16_0210ba98: ; 0x0210BA98
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210BB00
	cmp r0, #1
	beq _0210BB18
	b _0210BB2C
_0210BB00:
	ldr r1, [sp]
	ldr r0, _0210BB44 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020506b8
	b _0210BB2C
_0210BB18:
	ldr r1, [sp]
	ldr r0, _0210BB44 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050694
_0210BB2C:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210BB44: .word unk_0209BA20
	arm_func_end FUN_ov16_0210ba98

	arm_func_start FUN_ov16_0210bb48
FUN_ov16_0210bb48: ; 0x0210BB48
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0210BBB0
	cmp r0, #1
	beq _0210BBC8
	b _0210BBDC
_0210BBB0:
	ldr r1, [sp]
	ldr r0, _0210BBF4 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02050300
	b _0210BBDC
_0210BBC8:
	ldr r1, [sp]
	ldr r0, _0210BBF4 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020502dc
_0210BBDC:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210BBF4: .word unk_0209BA20
	arm_func_end FUN_ov16_0210bb48

	arm_func_start FUN_ov16_0210bbf8
FUN_ov16_0210bbf8: ; 0x0210BBF8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r4, r2
	add r2, sp, #0
	mov r6, r1
	bl FUN_ov16_020fed6c
	ldrsb r0, [r6, #0xb]
	mov r7, #1
	ldr r5, _0210BC94 ; =0x02099EF0
	add r0, r0, #1
	strb r7, [r6, #0xa]
	strb r0, [r6, #0xb]
	ldr r0, [r5]
	cmp r0, #0
	beq _0210BC84
	ldr r6, _0210BC98 ; =0x0209BA20
	mov r1, #0
	mov r0, r6
	bl FUN_0204da5c
	mov r0, r6
	mov r1, r7
	bl FUN_0204da5c
	ldr r0, [r5]
	bl FUN_ov126_0213921c
	ldr r0, [sp]
	cmp r0, #0
	bne _0210BC84
	ldr r5, _0210BC9C ; =0x02099F14
	mov r1, r7
	ldr r0, [r5]
	bl FUN_ov1_020df110
	ldr r0, [r5]
	ldr r1, _0210BCA0 ; =0x00007E7F
	mov r2, r7
	bl FUN_ov1_020df1dc
_0210BC84:
	mov r0, #1
	str r0, [r4]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210BC94: .word unk_02099EF0
_0210BC98: .word unk_0209BA20
_0210BC9C: .word unk_02099F14
_0210BCA0: .word 0x00007E7F
	arm_func_end FUN_ov16_0210bbf8

	arm_func_start FUN_ov16_0210bca4
FUN_ov16_0210bca4: ; 0x0210BCA4
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
	bl FUN_ov16_020febf8
	mov r1, #1
	strb r1, [r7, #0xa]
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	mov r1, r5
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov16_020efa9c
	movs r6, r0
	beq _0210BD50
	bl FUN_0206d5f0
	ldr r5, _0210BD68 ; =0x0209BA20
	mov r1, r0
	mov r0, r5
	bl FUN_0207249c
	ldr r1, [sp]
	strh r1, [r0, #0x2e]
	mov r0, r6
	bl FUN_0206d5f0
	ldr r2, [sp]
	mov r1, r0
	mov r2, r2, lsl #0x10
	mov r0, r5
	mov r2, r2, lsr #0x10
	bl FUN_0204d864
_0210BD50:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210BD68: .word unk_0209BA20
	arm_func_end FUN_ov16_0210bca4

	arm_func_start FUN_ov16_0210bd6c
FUN_ov16_0210bd6c: ; 0x0210BD6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldr r5, [r9]
	mov r10, r0
	ldrb r3, [r5, #6]
	mov r8, r2
	mov r6, #1
	add r1, r3, #7
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	cmp r3, #0
	mov r0, r0, asr #3
	mov r7, #0
	ble _0210BE40
	add r4, r5, r0, lsl #2
	add r11, sp, #0
_0210BDAC:
	mov r0, r7, asr #2
	add r0, r7, r0, lsr #29
	mov r0, r0, asr #3
	add r1, r5, r0, lsl #2
	mov r0, r7, lsl #0x1d
	ldr r1, [r1, #8]
	mov r0, r0, lsr #0x1b
	mov r0, r1, asr r0
	and r0, r0, #0xf
	cmp r0, #4
	bne _0210BE30
	add r0, r4, r7, lsl #2
	ldr r2, [r0, #8]
	mov r0, r10
	mov r1, r9
	bl FUN_ov16_020fea74
	mov r9, r0
	ldrsb r0, [r9, #0xa]
	cmp r0, #0
	bne _0210BE20
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_ov16_020feeb8
	ldrsb r0, [r9, #0xa]
	cmp r0, #0
	ldrne r0, [sp]
	moveq r6, #0
	strne r0, [r8, r7, lsl #2]
_0210BE20:
	ldr r0, [r9, #4]
	cmp r0, #0
	movne r9, r0
	addeq r9, r9, #0x2c
_0210BE30:
	ldrb r0, [r5, #6]
	add r7, r7, #1
	cmp r7, r0
	blt _0210BDAC
_0210BE40:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_0210bd6c

	arm_func_start FUN_ov16_0210be48
FUN_ov16_0210be48: ; 0x0210BE48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrsb r3, [r6, #0xb]
	mov r7, r0
	mov r5, r2
	cmp r3, #0
	mov r4, #0
	beq _0210BE74
	cmp r3, #1
	beq _0210BE94
	b _0210BEBC
_0210BE74:
	add r2, r6, #0xc
	bl FUN_ov16_020febf8
	ldrsb r1, [r6, #0xb]
	mov r2, #1
	str r0, [r6, #4]
	add r0, r1, #1
	strb r2, [r6, #9]
	strb r0, [r6, #0xb]
_0210BE94:
	mov r0, r7
	mov r1, r6
	add r2, r6, #0xc
	bl FUN_ov16_0210bd6c
	cmp r0, #0
	movne r1, #1
	ldrne r0, [r6, #0xc]
	ldrne r4, [r6, #0x10]
	strneb r1, [r6, #0xa]
	strne r4, [r0]
_0210BEBC:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210be48

	arm_func_start FUN_ov16_0210becc
FUN_ov16_0210becc: ; 0x0210BECC
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	cmp r4, #0
	beq _0210BF3C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	movne r2, r5
	str r2, [r4]
_0210BF3C:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210becc

	arm_func_start FUN_ov16_0210bf48
FUN_ov16_0210bf48: ; 0x0210BF48
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	cmp r4, #0
	beq _0210BFB8
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	moveq r2, r5
	str r2, [r4]
_0210BFB8:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210bf48

	arm_func_start FUN_ov16_0210bfc4
FUN_ov16_0210bfc4: ; 0x0210BFC4
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	cmp r4, #0
	beq _0210C034
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	movge r2, r5
	str r2, [r4]
_0210C034:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210bfc4

	arm_func_start FUN_ov16_0210c040
FUN_ov16_0210c040: ; 0x0210C040
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	cmp r4, #0
	beq _0210C0B0
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	movgt r2, r5
	str r2, [r4]
_0210C0B0:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210c040

	arm_func_start FUN_ov16_0210c0bc
FUN_ov16_0210c0bc: ; 0x0210C0BC
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	cmp r4, #0
	beq _0210C12C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	movle r2, r5
	str r2, [r4]
_0210C12C:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210c0bc

	arm_func_start FUN_ov16_0210c138
FUN_ov16_0210c138: ; 0x0210C138
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	cmp r4, #0
	beq _0210C1A8
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	movlt r2, r5
	str r2, [r4]
_0210C1A8:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210c138

	arm_func_start FUN_ov16_0210c1b4
FUN_ov16_0210c1b4: ; 0x0210C1B4
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r4, #0
	add r0, r1, r0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c1b4

	arm_func_start FUN_ov16_0210c224
FUN_ov16_0210c224: ; 0x0210C224
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r4, #0
	sub r0, r1, r0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c224

	arm_func_start FUN_ov16_0210c294
FUN_ov16_0210c294: ; 0x0210C294
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r4, #0
	mul r0, r1, r0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c294

	arm_func_start FUN_ov16_0210c304
FUN_ov16_0210c304: ; 0x0210C304
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl _s32_div_f
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c304

	arm_func_start FUN_ov16_0210c374
FUN_ov16_0210c374: ; 0x0210C374
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl _s32_div_f
	cmp r5, #0
	strne r1, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c374

	arm_func_start FUN_ov16_0210c3e4
FUN_ov16_0210c3e4: ; 0x0210C3E4
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
	bl FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	mov r3, #1
	ldr r1, [r6]
	add r2, r2, #1
	str r0, [r6, #4]
	strb r3, [r6, #0xa]
	strb r2, [r6, #0xb]
	ldrb r2, [r1, #6]
	ldr r1, [sp]
	cmp r2, #1
	ble _0210C45C
_0210C448:
	ldr r0, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r2
	and r1, r1, r0
	blt _0210C448
_0210C45C:
	cmp r4, #0
	strne r1, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c3e4

	arm_func_start FUN_ov16_0210c470
FUN_ov16_0210c470: ; 0x0210C470
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r3, [r7, #0xb]
	str r0, [r7, #4]
	ldr r1, [r7]
	add r0, r3, #1
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xa]
	ldrb r2, [r1, #6]
	mov r1, r5
	cmp r2, #0
	ble _0210C4EC
_0210C4D8:
	ldr r0, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	orr r5, r5, r0
	blt _0210C4D8
_0210C4EC:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210c470

	arm_func_start FUN_ov16_0210c500
FUN_ov16_0210c500: ; 0x0210C500
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
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	movne r2, r4
	cmp r6, #0
	strne r2, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210c500

	arm_func_start FUN_ov16_0210c574
FUN_ov16_0210c574: ; 0x0210C574
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	add r0, r0, #1
	bl FUN_ov16_020ef8d4
	ldr r1, [sp]
	cmp r4, #0
	add r0, r0, r1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c574

	arm_func_start FUN_ov16_0210c5f4
FUN_ov16_0210c5f4: ; 0x0210C5F4
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
	bl FUN_ov16_020febf8
	mov r5, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r5, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl STD_CompareString
	cmp r0, #0
	movne r5, r4
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210c5f4

	arm_func_start FUN_ov16_0210c670
FUN_ov16_0210c670: ; 0x0210C670
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	cmp r5, #0
	mov r0, r0, lsl #0xc
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c670

	arm_func_start FUN_ov16_0210c6dc
FUN_ov16_0210c6dc: ; 0x0210C6DC
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r6, #0xb]
	str r0, [r6, #4]
	strb r1, [r6, #0xa]
	add r0, r2, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	cmp r5, #0
	mov r0, r0, asr #0xc
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210c6dc

	arm_func_start FUN_ov16_0210c748
FUN_ov16_0210c748: ; 0x0210C748
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	bl FUN_ov16_020f0810
	bl FUN_ov16_020f0a14
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_0210c748

	arm_func_start FUN_ov16_0210c768
FUN_ov16_0210c768: ; 0x0210C768
	stmfd sp!, {r4, lr}
	ldr r0, _0210C7D4 ; =0x020A0640
	mov r4, r1
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0210C79C
	ldr r0, _0210C7D8 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0210C7A4
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _0210C7A4
_0210C79C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210C7A4:
	tst r4, #0x8000
	bne _0210C7CC
	ldr r0, _0210C7DC ; =0x0209A11C
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	mov r2, #1
	bl FUN_0206c7dc
	cmp r0, #0
	orrne r4, r4, #0x8000
_0210C7CC:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210C7D4: .word unk_020A0640
_0210C7D8: .word unk_02099EF0
_0210C7DC: .word unk_0209A11C
	arm_func_end FUN_ov16_0210c768

	arm_func_start FUN_ov16_0210c7e0
FUN_ov16_0210c7e0: ; 0x0210C7E0
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r1
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0210C814
	ldr r2, _0210C81C ; =0x02099EF0
	ldrsh r1, [r0, #0x94]
	ldr r0, [r2]
	mov r2, r4
	bl FUN_ov132_021430b4
	mov r4, r0
_0210C814:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210C81C: .word unk_02099EF0
	arm_func_end FUN_ov16_0210c7e0

	arm_func_start FUN_ov16_0210c820
FUN_ov16_0210c820: ; 0x0210C820
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, [r1]
	ldr r12, _0210C96C ; =0x000030F2
	ldrh r3, [r3, #4]
	mov r4, r2
	cmp r3, r12
	bgt _0210C87C
	bge _0210C8E4
	sub r2, r12, #0x61
	cmp r3, r2
	bgt _0210C950
	sub r2, r12, #0x63
	cmp r3, r2
	blt _0210C950
	beq _0210C8C0
	sub r2, r12, #0x62
	cmp r3, r2
	beq _0210C8CC
	sub r2, r12, #0x61
	cmp r3, r2
	beq _0210C8D8
	b _0210C950
_0210C87C:
	add r2, r12, #1
	cmp r3, r2
	bgt _0210C890
	beq _0210C8F0
	b _0210C950
_0210C890:
	add r2, r12, #2
	sub r2, r3, r2
	cmp r2, #6
	addls pc, pc, r2, lsl #2
	b _0210C950
_0210C8A4: ; jump table
	b _0210C8FC ; case 0
	b _0210C908 ; case 1
	b _0210C914 ; case 2
	b _0210C920 ; case 3
	b _0210C92C ; case 4
	b _0210C938 ; case 5
	b _0210C944 ; case 6
_0210C8C0:
	add r2, sp, #0
	bl FUN_ov16_0210ca04
	b _0210C958
_0210C8CC:
	add r2, sp, #0
	bl FUN_ov16_0210ca7c
	b _0210C958
_0210C8D8:
	add r2, sp, #0
	bl FUN_ov16_0210caf4
	b _0210C958
_0210C8E4:
	add r2, sp, #0
	bl FUN_ov16_0210cb6c
	b _0210C958
_0210C8F0:
	add r2, sp, #0
	bl FUN_ov16_0210cc60
	b _0210C958
_0210C8FC:
	add r2, sp, #0
	bl FUN_ov16_0210cca8
	b _0210C958
_0210C908:
	add r2, sp, #0
	bl FUN_ov16_0210cd88
	b _0210C958
_0210C914:
	add r2, sp, #0
	bl FUN_ov16_0210ce08
	b _0210C958
_0210C920:
	add r2, sp, #0
	bl FUN_ov16_0210ce94
	b _0210C958
_0210C92C:
	add r2, sp, #0
	bl FUN_ov16_0210cf74
	b _0210C958
_0210C938:
	add r2, sp, #0
	bl FUN_ov16_0210cffc
	b _0210C958
_0210C944:
	add r2, sp, #0
	bl FUN_ov16_0210d1a8
	b _0210C958
_0210C950:
	add r2, sp, #0
	bl FUN_ov16_020ff9f8
_0210C958:
	cmp r4, #0
	ldrne r1, [sp]
	strne r1, [r4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210C96C: .word 0x000030F2
	arm_func_end FUN_ov16_0210c820

	arm_func_start FUN_ov16_0210c970
FUN_ov16_0210c970: ; 0x0210C970
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, [r1]
	mov r4, r2
	ldrh r2, [r3, #4]
	sub r2, r2, #0xa9
	sub r2, r2, #0x4000
	cmp r2, #7
	addls pc, pc, r2, lsl #2
	b _0210C9E8
_0210C998: ; jump table
	b _0210C9B8 ; case 0
	b _0210C9C4 ; case 1
	b _0210C9D0 ; case 2
	b _0210C9E8 ; case 3
	b _0210C9E8 ; case 4
	b _0210C9E8 ; case 5
	b _0210C9E8 ; case 6
	b _0210C9DC ; case 7
_0210C9B8:
	add r2, sp, #0
	bl FUN_ov16_0210d25c
	b _0210C9F0
_0210C9C4:
	add r2, sp, #0
	bl FUN_ov16_0210d2e0
	b _0210C9F0
_0210C9D0:
	add r2, sp, #0
	bl FUN_ov16_0210d4ac
	b _0210C9F0
_0210C9DC:
	add r2, sp, #0
	bl FUN_ov16_0210d5b4
	b _0210C9F0
_0210C9E8:
	add r2, sp, #0
	bl FUN_ov16_020ff9f8
_0210C9F0:
	cmp r4, #0
	ldrne r1, [sp]
	strne r1, [r4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_0210c970

	arm_func_start FUN_ov16_0210ca04
FUN_ov16_0210ca04: ; 0x0210CA04
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
	bl FUN_ov16_020febf8
	ldrsb r2, [r6, #0xb]
	mov r4, #1
	ldr r1, _0210CA78 ; =0x02099F44
	add r2, r2, #1
	strb r4, [r6, #0xa]
	strb r2, [r6, #0xb]
	str r0, [r6, #4]
	ldr r0, [r1]
	mov r1, r4
	bl FUN_ov131_02141b2c
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CA78: .word unk_02099F44
	arm_func_end FUN_ov16_0210ca04

	arm_func_start FUN_ov16_0210ca7c
FUN_ov16_0210ca7c: ; 0x0210CA7C
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
	bl FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	ldr r0, _0210CAF0 ; =0x020AF81C
	add r1, r1, #1
	strb r1, [r6, #0xb]
	mov r2, r4
	mov r1, #0xa
	strb r4, [r6, #0xa]
	bl FUN_02044754
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CAF0: .word unk_020AF81C
	arm_func_end FUN_ov16_0210ca7c

	arm_func_start FUN_ov16_0210caf4
FUN_ov16_0210caf4: ; 0x0210CAF4
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
	bl FUN_ov16_020febf8
	mov r4, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	ldr r0, _0210CB68 ; =0x020AF81C
	add r1, r1, #1
	strb r1, [r6, #0xb]
	mov r2, r4
	mov r1, #9
	strb r4, [r6, #0xa]
	bl FUN_02044754
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CB68: .word unk_020AF81C
	arm_func_end FUN_ov16_0210caf4

	arm_func_start FUN_ov16_0210cb6c
FUN_ov16_0210cb6c: ; 0x0210CB6C
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
	bl FUN_ov16_020febf8
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _0210CC48 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov132_02143b6c
	movs r6, r0
	beq _0210CC30
	bl FUN_ov16_020f081c
	ldrb r1, [r6, #6]
	cmp r1, r0
	bne _0210CBF0
	ldr r0, _0210CC4C ; =0x0209AC44
	ldr r2, _0210CC50 ; =0x02119D3C
	b _0210CC14
_0210CBF0:
	ldr r0, _0210CC54 ; =0x0209BA20
	bl FUN_02072b3c
	cmp r0, #0
	beq _0210CC0C
	ldr r0, _0210CC4C ; =0x0209AC44
	ldr r2, _0210CC58 ; =0x02119D44
	b _0210CC14
_0210CC0C:
	ldr r0, _0210CC4C ; =0x0209AC44
	ldr r2, _0210CC5C ; =0x02119D4C
_0210CC14:
	mov r1, r4
	mov r3, r4
	bl FUN_0202d4c4
	mov r1, #0
	ldr r0, _0210CC4C ; =0x0209AC44
	mov r2, r1
	bl FUN_0202d594
_0210CC30:
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210CC48: .word unk_02099EF0
_0210CC4C: .word unk_0209AC44
_0210CC50: .word ov16_02119D3C
_0210CC54: .word unk_0209BA20
_0210CC58: .word ov16_02119D44
_0210CC5C: .word ov16_02119D4C
	arm_func_end FUN_ov16_0210cb6c

	arm_func_start FUN_ov16_0210cc60
FUN_ov16_0210cc60: ; 0x0210CC60
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0210CCA4 ; =0x02099EEC
	mov r5, r1
	ldr r0, [r0]
	mov r4, r2
	bl FUN_0205b438
	cmp r0, #0
	movne r0, #1
	ldrnesb r1, [r5, #0xb]
	strneb r0, [r5, #0xa]
	addne r0, r1, #1
	strneb r0, [r5, #0xb]
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0210CCA4: .word unk_02099EEC
	arm_func_end FUN_ov16_0210cc60

	arm_func_start FUN_ov16_0210cca8
FUN_ov16_0210cca8: ; 0x0210CCA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, #0
	mov r11, r1
	str r2, [sp]
	mov r9, #1
	mov r4, r10
_0210CCC0:
	mov r0, r10
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _0210CD14
	bl FUN_0206d64c
	cmp r0, #1
	bne _0210CD14
	mov r0, r8
	bl FUN_0206cc84
	mov r7, r0
	mov r0, r8
	bl FUN_0206cc94
	mov r6, r0
	mov r0, r8
	bl FUN_0206ccdc
	mov r5, r0
	mov r0, r8
	bl FUN_0206ccec
	cmp r6, r7
	cmple r0, r5
	movgt r9, r4
_0210CD14:
	add r10, r10, #1
	cmp r10, #0x10
	blt _0210CCC0
	ldr r6, _0210CD84 ; =0x0209BA20
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_0207249c
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_020725ac
	ldrb r4, [r4, #0x43]
	mov r0, r6
	mov r1, r5
	bl FUN_020724e8
	cmp r4, r0
	mov r0, #1
	ldrsb r1, [r11, #0xb]
	strb r0, [r11, #0xa]
	movlt r9, r5
	add r0, r1, #1
	strb r0, [r11, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	strne r9, [r0]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210CD84: .word unk_0209BA20
	arm_func_end FUN_ov16_0210cca8

	arm_func_start FUN_ov16_0210cd88
FUN_ov16_0210cd88: ; 0x0210CD88
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
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	cmp r1, #0
	blt _0210CDDC
	cmp r1, #0x10
	ldrlt r0, _0210CE04 ; =0x02099E8E
	strltb r1, [r0]
_0210CDDC:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r1, r1, #1
	strb r1, [r5, #0xb]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CE04: .word unk_02099E8E
	arm_func_end FUN_ov16_0210cd88

	arm_func_start FUN_ov16_0210ce08
FUN_ov16_0210ce08: ; 0x0210CE08
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
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r2, [sp]
	cmp r2, #0
	blt _0210CE68
	cmp r2, #0x10
	movlt r0, #0x54
	mullt r1, r2, r0
	ldrlt r0, _0210CE90 ; =0x020A1302
	movlt r2, #1
	strltb r2, [r0, r1]
_0210CE68:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r1, r1, #1
	strb r1, [r5, #0xb]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CE90: .word unk_020A1302
	arm_func_end FUN_ov16_0210ce08

	arm_func_start FUN_ov16_0210ce94
FUN_ov16_0210ce94: ; 0x0210CE94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xd4
	add r7, sp, #0x54
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
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldr r2, [sp, #0x54]
	cmp r2, #0
	blt _0210CF48
	cmp r2, #0x10
	bge _0210CF48
	ldr r1, _0210CF70 ; =0x020A12C0
	mov r0, #0x54
	mla r7, r2, r0, r1
	add lr, sp, #0
	mov r12, #5
_0210CEFC:
	ldmia r7!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0210CEFC
	ldr r0, [r7]
	mov r2, #0
	str r0, [lr]
	add r1, sp, #0
	b _0210CF40
_0210CF20:
	mov r0, r2, lsl #1
	ldrh r0, [r1, r0]
	add r2, r2, #1
	and r0, r0, #0x1c
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x10
	cmp r0, #3
	addeq r4, r4, #1
_0210CF40:
	cmp r2, #0x21
	blt _0210CF20
_0210CF48:
	ldrsb r1, [r6, #0xb]
	mov r0, #1
	strb r0, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0xd4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210CF70: .word unk_020A12C0
	arm_func_end FUN_ov16_0210ce94

	arm_func_start FUN_ov16_0210cf74
FUN_ov16_0210cf74: ; 0x0210CF74
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
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldr r0, _0210CFF4 ; =0x020A0640
	and r1, r1, #0xff
	strh r1, [r0, #0xa2]
	ldrh r1, [r0, #0xa2]
	ldr r0, _0210CFF8 ; =0x0209BA20
	bl FUN_0206f834
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r1, r1, #1
	strb r1, [r5, #0xb]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CFF4: .word unk_020A0640
_0210CFF8: .word unk_0209BA20
	arm_func_end FUN_ov16_0210cf74

	arm_func_start FUN_ov16_0210cffc
FUN_ov16_0210cffc: ; 0x0210CFFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x98
	add r7, sp, #0x18
	mov r8, r0
	mov r5, #0
	mov r10, r1
	mov r4, #0x80
	mov r9, r2
	mov r0, r7
	mov r1, r5
	mov r2, r4
	mov r6, #1
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r10
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r10, #4]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	orr r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	ldr r1, [sp, #0x24]
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x14]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0xc]
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	sub r11, r4, #0x81
	str r0, [sp, #0x10]
_0210D084:
	mov r0, r5
	bl FUN_ov16_020efa80
	cmp r0, #0
	moveq r11, r5
	beq _0210D0A4
	add r5, r5, #1
	cmp r5, #8
	blt _0210D084
_0210D0A4:
	ldr r7, _0210D1A0 ; =0x0209BA20
	ldr r4, _0210D1A4 ; =0x0209A11C
	mov r8, #1
	mov r5, #0
_0210D0B4:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_0204dea4
	movs r1, r0
	beq _0210D0EC
	ldr r0, [r4]
	mov r2, r5
	bl FUN_0206c7dc
	cmp r0, #0
	beq _0210D0EC
	add r8, r8, #1
	cmp r8, #0x10
	ble _0210D0B4
_0210D0EC:
	mvn r0, #0
	cmp r11, r0
	mov r4, #1
	beq _0210D17C
	cmp r8, #0x10
	mov r5, r4
	bgt _0210D17C
	add r1, r0, #0x1000
	ldr r0, [sp, #0x14]
	mov r6, #0x32
	and r0, r0, r1
	mov r1, r0, lsl #0x10
	str r6, [sp]
	mov r6, #0
	ldr r0, _0210D1A0 ; =0x0209BA20
	mov r2, r11
	mov r3, r5
	mov r1, r1, lsr #0x10
	str r6, [sp, #4]
	bl FUN_02071d74
	movs r6, r0
	beq _0210D164
	bl FUN_0206dcd4
	ldr r1, [sp, #0xc]
	bl FUN_0206de90
	ldr r1, [sp, #0x10]
	mov r0, r6
	mov r2, r5
	and r1, r1, #0xff
	bl FUN_0206d9cc
_0210D164:
	ldr r0, _0210D1A0 ; =0x0209BA20
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #8]
	mov r3, #0
	str r3, [sp]
	bl FUN_ov16_020eeb24
_0210D17C:
	ldrsb r0, [r10, #0xb]
	strb r4, [r10, #0xa]
	cmp r9, #0
	add r0, r0, #1
	strb r0, [r10, #0xb]
	strne r4, [r9]
	mov r0, #1
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210D1A0: .word unk_0209BA20
_0210D1A4: .word unk_0209A11C
	arm_func_end FUN_ov16_0210cffc

	arm_func_start FUN_ov16_0210d1a8
FUN_ov16_0210d1a8: ; 0x0210D1A8
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
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r1, [sp]
	ldr r0, _0210D254 ; =0x0209BA20
	orr r1, r1, #0x8000
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, #1
	mov r2, r7
	bl FUN_0204d354
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0210D22C
	ldr r2, _0210D258 ; =0x0209A11C
	ldrsh r1, [r0, #0x94]
	ldr r0, [r2]
	bl FUN_0206c5d8
_0210D22C:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r1, r1, #1
	strb r1, [r5, #0xb]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D254: .word unk_0209BA20
_0210D258: .word unk_0209A11C
	arm_func_end FUN_ov16_0210d1a8

	arm_func_start FUN_ov16_0210d25c
FUN_ov16_0210d25c: ; 0x0210D25C
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
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	strb r1, [r7, #0xa]
	str r0, [r7, #4]
	add r1, r2, #1
	strb r1, [r7, #0xb]
	ldr r0, [sp]
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0210D2CC
	bl FUN_0206dcd4
	ldrb r5, [r0, #0x5d]
_0210D2CC:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210d25c

	arm_func_start FUN_ov16_0210d2e0
FUN_ov16_0210d2e0: ; 0x0210D2E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x100
	mov r5, #0
	mov r6, r1
	mov r8, r2
	add r7, sp, #0x80
	mov r9, r0
	mov r0, r7
	mov r1, r5
	mov r2, #0x80
	mov r4, r5
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_020febf8
	mov r9, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	ldr r7, _0210D498 ; =0x0209BA20
	add r0, r1, #1
	strb r0, [r6, #0xb]
	strb r9, [r6, #0xa]
	ldr r6, [r7, #0x7ec]
	cmp r6, #0
	bne _0210D358
	mov r0, r7
	bl FUN_0204eba0
	ldr r6, [r7, #0x7ec]
	mov r5, r9
_0210D358:
	ldr r0, _0210D49C ; =0x02099F44
	ldr r0, [r0]
	bl FUN_ov131_0213c738
	cmp r0, #0
	mov r2, #0
	ble _0210D390
	ldr r3, [sp, #0x80]
_0210D374:
	ldrh r1, [r6, #0x24]
	cmp r1, r3
	beq _0210D390
	add r2, r2, #1
	cmp r2, r0
	add r6, r6, #0x2c
	blt _0210D374
_0210D390:
	ldrb r6, [r6, #0x2a]
	add r1, sp, #0x58
	cmp r6, #1
	bne _0210D3B0
	ldr r0, _0210D49C ; =0x02099F44
	ldr r0, [r0]
	bl FUN_ov131_0213c3a8
	b _0210D3BC
_0210D3B0:
	ldr r0, _0210D49C ; =0x02099F44
	ldr r0, [r0]
	bl FUN_ov131_0213c50c
_0210D3BC:
	mov r7, r0
	cmp r5, #0
	beq _0210D3D0
	ldr r0, _0210D498 ; =0x0209BA20
	bl FUN_0204ec3c
_0210D3D0:
	cmp r7, #0
	mvn r5, #0
	mov r3, #0
	ble _0210D40C
	ldr r9, [sp, #0x80]
	add r1, sp, #0x58
_0210D3E8:
	mov r2, r3, lsl #3
	ldrh r0, [r1, r2]
	cmp r9, r0
	addeq r0, sp, #0x5c
	ldreqb r5, [r0, r2]
	beq _0210D40C
	add r3, r3, #1
	cmp r3, r7
	blt _0210D3E8
_0210D40C:
	cmn r5, #1
	addeq sp, sp, #0x100
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r6, #1
	add r0, sp, #0x18
	bne _0210D430
	ldr r1, _0210D4A0 ; =0x02119D54
	b _0210D434
_0210D430:
	ldr r1, _0210D4A4 ; =0x02119D74
_0210D434:
	bl STD_CopyString
	ldr r3, _0210D4A8 ; =0x0209A250
	add r1, sp, #0x14
	ldr r0, [r3]
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _0210D480
	sub r1, r5, #1
	mov r1, r1, lsl #2
	add r1, r1, #2
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r1, sp, #0x18
	add r2, sp, #0x10
	str r4, [sp, #0xc]
	bl FUN_0202eff0
_0210D480:
	ldrb r0, [sp, #0x14]
	cmp r8, #0
	strne r0, [r8]
	mov r0, #1
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210D498: .word unk_0209BA20
_0210D49C: .word unk_02099F44
_0210D4A0: .word ov16_02119D54
_0210D4A4: .word ov16_02119D74
_0210D4A8: .word unk_0209A250
	arm_func_end FUN_ov16_0210d2e0

	arm_func_start FUN_ov16_0210d4ac
FUN_ov16_0210d4ac: ; 0x0210D4AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x94
	sub sp, sp, #0x400
	add r9, sp, #0x400
	add r9, r9, #0x14
	mov r5, r0
	mov r4, r2
	mov r6, #0
	mov r7, r1
	mov r0, r9
	mov r1, r6
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r5
	mov r2, r9
	mov r1, r7
	bl FUN_ov16_020febf8
	str r0, [r7, #4]
	ldrsb r0, [r7, #0xb]
	mov r9, #1
	ldr r3, _0210D5AC ; =0x0209A250
	add r0, r0, #1
	strb r0, [r7, #0xb]
	strb r9, [r7, #0xa]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, _0210D5B0 ; =0x02119D94
	cmp r0, #0
	beq _0210D53C
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	add r2, sp, #0x10
	str r9, [sp, #0xc]
	bl FUN_0202eff0
_0210D53C:
	add r7, sp, #0x10
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_0210d6cc
	mov r10, r0
	cmp r10, #0
	mov r9, #0
	ble _0210D594
_0210D55C:
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_0210d6cc
	mov r6, r0
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_0210d6cc
	ldr r1, [sp, #0x414]
	cmp r6, r1
	moveq r8, r0
	beq _0210D594
	add r9, r9, #1
	cmp r9, r10
	blt _0210D55C
_0210D594:
	cmp r4, #0
	strne r8, [r4]
	mov r0, #1
	add sp, sp, #0x94
	add sp, sp, #0x400
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0210D5AC: .word unk_0209A250
_0210D5B0: .word ov16_02119D94
	arm_func_end FUN_ov16_0210d4ac

	arm_func_start FUN_ov16_0210d5b4
FUN_ov16_0210d5b4: ; 0x0210D5B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x94
	sub sp, sp, #0x400
	add r8, sp, #0x400
	add r8, r8, #0x14
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
	bl FUN_ov16_020febf8
	str r0, [r6, #4]
	ldrsb r0, [r6, #0xb]
	mov r12, #1
	ldr r3, _0210D6C0 ; =0x0209A250
	add r0, r0, #1
	strb r0, [r6, #0xb]
	strb r12, [r6, #0xa]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, _0210D6C4 ; =0x02119DB4
	cmp r0, #0
	beq _0210D644
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0210D644:
	add r6, sp, #0x10
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_0210d6cc
	mov r10, r0
	mov r9, #0
	ldr r0, _0210D6C8 ; =0x0209BA20
	mov r1, r9
	bl FUN_020724c8
	mov r8, r0
	cmp r10, #0
	mov r0, #0x32
	ble _0210D6A8
_0210D678:
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_0210d6cc
	mov r4, r0
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_0210d6cc
	cmp r8, r4
	beq _0210D6A8
	add r9, r9, #1
	cmp r9, r10
	blt _0210D678
_0210D6A8:
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x94
	add sp, sp, #0x400
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0210D6C0: .word unk_0209A250
_0210D6C4: .word ov16_02119DB4
_0210D6C8: .word unk_0209BA20
	arm_func_end FUN_ov16_0210d5b4

	arm_func_start FUN_ov16_0210d6cc
FUN_ov16_0210d6cc: ; 0x0210D6CC
	ldr r2, [r1]
	ldrh r0, [r2], #2
	str r2, [r1]
	bx lr
	arm_func_end FUN_ov16_0210d6cc

	arm_func_start FUN_ov16_0210d6dc
FUN_ov16_0210d6dc: ; 0x0210D6DC
	ldr r12, _0210D6F0 ; =MIi_CpuClearFast
	mov r1, r0
	mov r0, #0
	mov r2, #0x20
	bx r12
_0210D6F0: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_0210d6dc

	arm_func_start FUN_ov16_0210d6f4
FUN_ov16_0210d6f4: ; 0x0210D6F4
	cmp r1, #0
	bxeq lr
	ldr r2, [r0]
	cmp r2, #0
	streq r1, [r0]
	moveq r2, #0
	streq r2, [r1, #0xc]
	beq _0210D73C
	ldr r3, [r2, #0xc]
	cmp r3, #0
	beq _0210D730
_0210D720:
	mov r2, r3
	ldr r3, [r3, #0xc]
	cmp r3, #0
	bne _0210D720
_0210D730:
	str r1, [r2, #0xc]
	mov r2, #0
	str r2, [r1, #0xc]
_0210D73C:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_0210d6f4

	arm_func_start FUN_ov16_0210d74c
FUN_ov16_0210d74c: ; 0x0210D74C
	mov r2, #0
_0210D750:
	add r1, r0, r2, lsl #5
	ldrb r1, [r1, #8]
	cmp r1, #0
	addeq r0, r0, #4
	addeq r0, r0, r2, lsl #5
	bxeq lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _0210D750
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_0210d74c

	arm_func_start FUN_ov16_0210d77c
FUN_ov16_0210d77c: ; 0x0210D77C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	ldr r5, [r10]
	mov r8, #0
	mov r11, r0
	mov r9, r2
	mov r7, r8
	cmp r5, #0
	beq _0210D85C
	mov r4, r9, lsl #0x10
_0210D7A4:
	ldrb r0, [r5, #0xa]
	ldr r6, [r5, #0xc]
	cmp r0, #0
	bne _0210D7E8
	mov r0, r11
	mov r1, r5
	mov r2, r9
	bl FUN_ov16_0210d86c
	cmp r0, #0
	movne r0, #1
	strneb r0, [r5, #0xa]
	bne _0210D7E8
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r8, r8, #1
_0210D7E8:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0210D84C
	ldrsh r0, [r5, #6]
	cmp r0, #0
	bgt _0210D830
	ldr r1, [r10, #4]
	mov r0, r5
	sub r1, r1, #1
	str r1, [r10, #4]
	bl FUN_ov16_0210d6dc
	ldr r0, [r10]
	cmp r5, r0
	streq r6, [r10]
	cmp r7, #0
	strne r6, [r7, #0xc]
	mov r5, #0
	b _0210D84C
_0210D830:
	sub r0, r0, r4, asr #16
	strh r0, [r5, #6]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r8, r8, #1
_0210D84C:
	mov r7, r5
	mov r5, r6
	cmp r6, #0
	bne _0210D7A4
_0210D85C:
	mov r0, #1
	cmp r8, #0
	movle r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_0210d77c

	arm_func_start FUN_ov16_0210d86c
FUN_ov16_0210d86c: ; 0x0210D86C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r7, r1
	ldrb r3, [r7, #4]
	ldr r4, _0210DE50 ; =0x02099F38
	ldr r5, _0210DE54 ; =0x02099F58
	mov r8, r0
	mov r1, #1
	cmp r3, #8
	mov r6, #0
	addls pc, pc, r3, lsl #2
	b _0210DE40
_0210D89C: ; jump table
	b _0210DE40 ; case 0
	b _0210D8C0 ; case 1
	b _0210DA8C ; case 2
	b _0210DB14 ; case 3
	b _0210DBB4 ; case 4
	b _0210DC24 ; case 5
	b _0210DCA4 ; case 6
	b _0210DD84 ; case 7
	b _0210DE40 ; case 8
_0210D8C0:
	ldrsh r9, [r7, #0x1a]
	ldrb r3, [r7, #0x1c]
	mov r1, r2, lsl #0x10
	add r1, r9, r1, asr #16
	strh r1, [r7, #0x1a]
	cmp r3, #0
	mov r9, r6
	beq _0210D914
	add r2, sp, #0x10
	add r1, sp, #0xc
	str r2, [sp]
	str r1, [sp, #4]
	ldrb r1, [r7, #5]
	ldrh r2, [r7]
	ldrh r3, [r7, #2]
	bl FUN_ov16_0210deec
	ldr r0, [sp, #0x10]
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0xc]
	strh r0, [r7, #0x12]
	strb r6, [r7, #0x1c]
_0210D914:
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	beq _0210D968
	add r1, sp, #0x10
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldrb r1, [r7, #5]
	ldrh r2, [r7]
	ldrh r3, [r7, #2]
	mov r0, r8
	bl FUN_ov16_0210deec
	ldrsh r3, [r7, #0x14]
	ldrsh r2, [r7, #0x10]
	ldrsh r1, [r7, #0x16]
	ldrsh r0, [r7, #0x12]
	add r2, r3, r2
	strh r2, [r7, #0x14]
	add r0, r1, r0
	strh r0, [r7, #0x16]
	strb r9, [r7, #0x1d]
_0210D968:
	ldrsh r3, [r7, #0x1a]
	ldrsh r1, [r7, #0x18]
	cmp r3, r1
	blt _0210D98C
	ldrsh r8, [r7, #0x14]
	mov r6, #1
	str r8, [sp, #0x10]
	ldrsh r1, [r7, #0x16]
	b _0210D9D0
_0210D98C:
	ldrsh r2, [r7, #0x14]
	ldrsh r0, [r7, #0x10]
	sub r0, r2, r0
	mul r0, r3, r0
	bl _s32_div_f
	ldrsh r1, [r7, #0x10]
	add r8, r1, r0
	str r8, [sp, #0x10]
	ldrsh r2, [r7, #0x16]
	ldrsh r0, [r7, #0x12]
	ldrsh r3, [r7, #0x1a]
	ldrsh r1, [r7, #0x18]
	sub r0, r2, r0
	mul r0, r3, r0
	bl _s32_div_f
	ldrsh r1, [r7, #0x12]
	add r1, r1, r0
_0210D9D0:
	str r1, [sp, #0xc]
	ldrb r0, [r7, #5]
	cmp r0, #0
	ldrh r0, [r7, #2]
	beq _0210DA38
	cmp r0, #0
	bne _0210DA0C
	mov r3, r1, lsl #0x10
	mov r2, r8, lsl #0x10
	ldrh r1, [r7]
	ldr r0, [r5]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117514
	b _0210DE44
_0210DA0C:
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldrh r1, [r7]
	mov r3, r0, lsl #0x10
	ldrh r2, [r7, #2]
	ldr r0, [r5]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117390
	b _0210DE44
_0210DA38:
	cmp r0, #0
	bne _0210DA60
	mov r3, r1, lsl #0x10
	mov r2, r8, lsl #0x10
	ldrh r1, [r7]
	ldr r0, [r4]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	b _0210DE44
_0210DA60:
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldrh r1, [r7]
	mov r3, r0, lsl #0x10
	ldrh r2, [r7, #2]
	ldr r0, [r4]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	b _0210DE44
_0210DA8C:
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _0210DADC
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _0210DABC
	ldrh r1, [r7]
	ldrh r2, [r7, #0x10]
	ldr r0, [r5]
	sub r3, r6, #1
	bl FUN_ov16_02116b08
	b _0210DB14
_0210DABC:
	sub r0, r6, #1
	str r0, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldrh r3, [r7, #0x10]
	ldr r0, [r5]
	bl FUN_ov16_02117180
	b _0210DB14
_0210DADC:
	ldrh r2, [r7, #2]
	cmp r2, #0
	bne _0210DB00
	ldrsh r2, [r7, #0x10]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	b _0210DB14
_0210DB00:
	ldrsh r3, [r7, #0x10]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
_0210DB14:
	ldrb r0, [r7, #5]
	mov r2, #0
	mov r1, #1
	cmp r0, #0
	ldrh r0, [r7, #2]
	beq _0210DB78
	cmp r0, #0
	bne _0210DB54
	str r2, [sp]
	str r1, [sp, #4]
	ldrh r1, [r7]
	ldrsh r2, [r7, #0x12]
	ldr r0, [r5]
	mov r3, #4
	bl FUN_ov16_0211702c
	b _0210DBB0
_0210DB54:
	mov r0, #4
	stmia sp, {r0, r2}
	str r1, [sp, #8]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldrsh r3, [r7, #0x12]
	ldr r0, [r5]
	bl FUN_ov16_02117414
	b _0210DBB0
_0210DB78:
	cmp r0, #0
	bne _0210DB98
	ldrh r1, [r7]
	ldrsh r2, [r7, #0x12]
	ldr r0, [r4]
	mov r3, #0
	bl FUN_ov16_0211346c
	b _0210DBB0
_0210DB98:
	str r2, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldrsh r3, [r7, #0x12]
	ldr r0, [r4]
	bl FUN_ov16_0211401c
_0210DBB0:
	b _0210DE40
_0210DBB4:
	ldrb r0, [r7, #5]
	ldrh r2, [r7, #2]
	cmp r0, #0
	beq _0210DBF0
	cmp r2, #0
	ldrh r1, [r7]
	bne _0210DBE0
	ldrsh r2, [r7, #0x10]
	ldr r0, [r5]
	bl FUN_ov16_02116bdc
	b _0210DC24
_0210DBE0:
	ldrsh r3, [r7, #0x10]
	ldr r0, [r5]
	bl FUN_ov16_02117220
	b _0210DC24
_0210DBF0:
	cmp r2, #0
	bne _0210DC10
	ldrsh r2, [r7, #0x10]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl FUN_ov16_02112a34
	b _0210DC24
_0210DC10:
	ldrsh r3, [r7, #0x10]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl FUN_ov16_02113890
_0210DC24:
	ldrb r0, [r7, #5]
	ldrh r2, [r7, #2]
	cmp r0, #0
	beq _0210DC6C
	cmp r2, #0
	bne _0210DC54
	ldrsh r2, [r7, #0x12]
	ldrh r1, [r7]
	ldr r0, [r5]
	and r2, r2, #0xff
	bl FUN_ov16_02116c60
	b _0210DCA0
_0210DC54:
	ldrsh r3, [r7, #0x12]
	ldrh r1, [r7]
	ldr r0, [r5]
	and r3, r3, #0xff
	bl FUN_ov16_0211726c
	b _0210DCA0
_0210DC6C:
	cmp r2, #0
	bne _0210DC8C
	ldrsh r2, [r7, #0x12]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl FUN_ov16_02112af0
	b _0210DCA0
_0210DC8C:
	ldrsh r3, [r7, #0x12]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl FUN_ov16_02113944
_0210DCA0:
	b _0210DE40
_0210DCA4:
	ldrb r0, [r7, #5]
	ldrh r2, [r7, #2]
	cmp r0, #0
	beq _0210DD1C
	cmp r2, #0
	ldrb r0, [r7, #0x10]
	bne _0210DCE8
	cmp r0, #0
	ldrh r1, [r7]
	mov r2, #2
	ldr r0, [r5]
	beq _0210DCE0
	mov r3, #1
	bl FUN_ov16_02117598
	b _0210DD80
_0210DCE0:
	bl FUN_ov16_021175dc
	b _0210DD80
_0210DCE8:
	cmp r0, #0
	mov r3, #2
	beq _0210DD0C
	str r1, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldr r0, [r5]
	bl FUN_ov16_02117284
	b _0210DD80
_0210DD0C:
	ldrh r1, [r7]
	ldr r0, [r5]
	bl FUN_ov16_021172cc
	b _0210DD80
_0210DD1C:
	cmp r2, #0
	ldrb r0, [r7, #0x10]
	bne _0210DD50
	cmp r0, #0
	ldrh r1, [r7]
	mov r2, #2
	ldr r0, [r4]
	beq _0210DD48
	mov r3, #1
	bl FUN_ov16_021142fc
	b _0210DD80
_0210DD48:
	bl FUN_ov16_02114370
	b _0210DD80
_0210DD50:
	cmp r0, #0
	mov r3, #2
	beq _0210DD74
	str r1, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldr r0, [r4]
	bl FUN_ov16_02113ec0
	b _0210DD80
_0210DD74:
	ldrh r1, [r7]
	ldr r0, [r4]
	bl FUN_ov16_02113f7c
_0210DD80:
	b _0210DE40
_0210DD84:
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _0210DDFC
	ldrh r2, [r7, #2]
	ldrb r0, [r7, #0x10]
	cmp r2, #0
	bne _0210DDC8
	cmp r0, #0
	ldrh r1, [r7]
	mov r2, #0x4000
	ldr r0, [r5]
	beq _0210DDC0
	mov r3, #1
	bl FUN_ov16_02117598
	b _0210DE3C
_0210DDC0:
	bl FUN_ov16_021175dc
	b _0210DE3C
_0210DDC8:
	cmp r0, #0
	mov r3, #0x4000
	beq _0210DDEC
	str r1, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldr r0, [r5]
	bl FUN_ov16_02117284
	b _0210DE3C
_0210DDEC:
	ldrh r1, [r7]
	ldr r0, [r5]
	bl FUN_ov16_021172cc
	b _0210DE3C
_0210DDFC:
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _0210DE20
	ldrh r1, [r7]
	ldrb r3, [r7, #0x10]
	ldr r0, [r4]
	mov r2, #0x4000
	bl FUN_ov16_021142fc
	b _0210DE3C
_0210DE20:
	ldrb r0, [r7, #0x10]
	mov r3, #0x4000
	str r0, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldr r0, [r4]
	bl FUN_ov16_02113ec0
_0210DE3C:
	b _0210DE40
_0210DE40:
	mov r6, #1
_0210DE44:
	mov r0, r6
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0210DE50: .word unk_02099F38
_0210DE54: .word unk_02099F58
	arm_func_end FUN_ov16_0210d86c

	arm_func_start FUN_ov16_0210de58
FUN_ov16_0210de58: ; 0x0210DE58
	stmfd sp!, {r4, lr}
	mov r12, #0
	cmp r1, #0
	mov r4, r2
	movlt r1, r12
	blt _0210DE78
	cmp r1, #4
	movge r1, #3
_0210DE78:
	ldrb r3, [r4, #4]
	add r2, r0, #4
	add r2, r2, #0x400
	cmp r3, #1
	add r2, r2, r1, lsl #3
	bne _0210DEA4
	ldrsh r1, [r4, #0x18]
	cmp r1, #0
	ldrlesh r1, [r4, #6]
	cmple r1, #0
	b _0210DEAC
_0210DEA4:
	ldrsh r1, [r4, #6]
	cmp r1, #0
_0210DEAC:
	movle r12, #1
	cmp r12, #0
	beq _0210DEDC
	ldr r1, [r2]
	cmp r1, #0
	bne _0210DEDC
	mov r1, r4
	mov r2, #0
	bl FUN_ov16_0210d86c
	mov r0, r4
	bl FUN_ov16_0210d6dc
	ldmfd sp!, {r4, pc}
_0210DEDC:
	mov r0, r2
	mov r1, r4
	bl FUN_ov16_0210d6f4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210de58

	arm_func_start FUN_ov16_0210deec
FUN_ov16_0210deec: ; 0x0210DEEC
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldr r5, [sp, #0x10]
	ldr r4, [sp, #0x14]
	beq _0210DF7C
	cmp r3, #0
	bgt _0210DF40
	ldr r0, _0210E00C ; =0x02099F58
	mov r1, r2
	ldr r0, [r0]
	bl FUN_ov16_0211685c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #0xc]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [r5]
	ldr r1, [r0, #0x10]
	b _0210DFF4
_0210DF40:
	ldr r0, _0210E00C ; =0x02099F58
	mov r1, r2
	ldr r0, [r0]
	mov r2, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #0x28]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [r5]
	ldr r1, [r0, #0x2c]
	b _0210DFF4
_0210DF7C:
	cmp r3, #0
	bgt _0210DFBC
	ldr r0, _0210E010 ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	bl FUN_ov16_02114444
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #8]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [r5]
	ldr r1, [r0, #0xc]
	b _0210DFF4
_0210DFBC:
	ldr r0, _0210E010 ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, r3
	bl FUN_ov16_021143d4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #0x1c]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [r5]
	ldr r1, [r0, #0x20]
_0210DFF4:
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	str r0, [r4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0210E00C: .word unk_02099F58
_0210E010: .word unk_02099F38
	arm_func_end FUN_ov16_0210deec

	arm_func_start FUN_ov16_0210e014
FUN_ov16_0210e014: ; 0x0210E014
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _0210E054 ; =0x02119DF4
	mov r4, #0
	mov r0, r4
	add r1, r5, #4
	mov r2, #0x400
	str r3, [r5]
	bl MIi_CpuClearFast
	add r1, r5, #4
	mov r0, r4
	add r1, r1, #0x400
	mov r2, #0x20
	bl MIi_CpuClearFast
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_0210E054: .word ov16_02119DF4
	arm_func_end FUN_ov16_0210e014

	arm_func_start FUN_ov16_0210e058
FUN_ov16_0210e058: ; 0x0210E058
	stmfd sp!, {r4, lr}
	ldr r1, _0210E074 ; =0x02119DF4
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210E074: .word ov16_02119DF4
	arm_func_end FUN_ov16_0210e058

	arm_func_start FUN_ov16_0210e078
FUN_ov16_0210e078: ; 0x0210E078
	stmfd sp!, {r4, lr}
	ldr r1, _0210E09C ; =0x02119DF4
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210E09C: .word ov16_02119DF4
	arm_func_end FUN_ov16_0210e078

	arm_func_start FUN_ov16_0210e0a0
FUN_ov16_0210e0a0: ; 0x0210E0A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #4
	mov r2, #0x400
	bl MI_CpuFill8
	add r0, r5, #4
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x20
	bl MI_CpuFill8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e0a0

	arm_func_start FUN_ov16_0210e0d8
FUN_ov16_0210e0d8: ; 0x0210E0D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #4
	mov r2, #0x400
	bl MI_CpuFill8
	add r0, r5, #4
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x20
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e0d8

	arm_func_start FUN_ov16_0210e10c
FUN_ov16_0210e10c: ; 0x0210E10C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r6, #0
	add r0, r8, #4
	mov r7, r1
	mov r5, r6
	add r4, r0, #0x400
_0210E128:
	mov r0, r8
	mov r2, r7
	add r1, r4, r5, lsl #3
	bl FUN_ov16_0210d77c
	cmp r0, #0
	add r5, r5, #1
	addne r6, r6, #1
	cmp r5, #4
	blt _0210E128
	mov r0, #1
	cmp r6, #0
	movle r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e10c

	arm_func_start FUN_ov16_0210e15c
FUN_ov16_0210e15c: ; 0x0210E15C
	mov r2, #0
_0210E160:
	add r1, r0, r2, lsl #3
	ldr r1, [r1, #0x404]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #4
	blt _0210E160
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e15c

	arm_func_start FUN_ov16_0210e188
FUN_ov16_0210e188: ; 0x0210E188
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r6, r3
	mov r9, r0
	mov r8, r1
	mov r7, r2
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_0210d74c
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_0210d6dc
	mov r4, #1
	ldr r0, [sp, #0x44]
	strb r4, [r5, #4]
	strh r0, [r5, #6]
	ldr r0, [sp, #0x24]
	strb r7, [r5, #5]
	ldrb r1, [sp, #0x48]
	strh r0, [r5, #8]
	ldr r0, [sp, #0x20]
	strb r1, [r5, #0xb]
	strh r6, [r5]
	ldr r1, [sp, #0x28]
	strh r0, [r5, #2]
	ldr r0, [sp, #0x2c]
	strh r1, [r5, #0x10]
	ldr r1, [sp, #0x30]
	strh r0, [r5, #0x12]
	ldr r0, [sp, #0x34]
	strh r1, [r5, #0x14]
	ldr r1, [sp, #0x40]
	strh r0, [r5, #0x16]
	ldrb r0, [sp, #0x38]
	strh r1, [r5, #0x18]
	ldrb r3, [sp, #0x3c]
	strb r0, [r5, #0x1c]
	mov r0, r9
	mov r1, r8
	mov r2, r5
	strb r3, [r5, #0x1d]
	bl FUN_ov16_0210de58
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_0210e188

	arm_func_start FUN_ov16_0210e238
FUN_ov16_0210e238: ; 0x0210E238
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	ldr lr, [sp, #0x30]
	ldr r12, [sp, #0x34]
	str lr, [sp]
	str r12, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	ldr lr, [sp, #0x38]
	str r12, [sp, #0xc]
	ldr r12, [sp, #0x3c]
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	mov lr, #1
	str lr, [sp, #0x18]
	ldr r12, [sp, #0x40]
	str lr, [sp, #0x1c]
	ldr lr, [sp, #0x44]
	str r12, [sp, #0x20]
	ldrb r12, [sp, #0x48]
	str lr, [sp, #0x24]
	str r12, [sp, #0x28]
	bl FUN_ov16_0210e188
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_0210e238

	arm_func_start FUN_ov16_0210e29c
FUN_ov16_0210e29c: ; 0x0210E29C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r12, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	str r12, [sp]
	str r4, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	ldr lr, [sp, #0x40]
	str r4, [sp, #0xc]
	ldr r12, [sp, #0x44]
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	mov r12, #1
	str r12, [sp, #0x18]
	ldr r12, [sp, #0x48]
	str r4, [sp, #0x1c]
	ldr lr, [sp, #0x4c]
	str r12, [sp, #0x20]
	ldrb r12, [sp, #0x50]
	str lr, [sp, #0x24]
	str r12, [sp, #0x28]
	bl FUN_ov16_0210e188
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_0210e29c

	arm_func_start FUN_ov16_0210e300
FUN_ov16_0210e300: ; 0x0210E300
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	ldr lr, [sp, #0x30]
	ldr r12, [sp, #0x34]
	str lr, [sp]
	ldr lr, [sp, #0x38]
	str r12, [sp, #4]
	ldr r12, [sp, #0x3c]
	str lr, [sp, #8]
	ldr lr, [sp, #0x40]
	str r12, [sp, #0xc]
	ldr r12, [sp, #0x44]
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	mov lr, #0
	str lr, [sp, #0x18]
	ldr r12, [sp, #0x48]
	str lr, [sp, #0x1c]
	ldr lr, [sp, #0x4c]
	str r12, [sp, #0x20]
	ldrb r12, [sp, #0x50]
	str lr, [sp, #0x24]
	str r12, [sp, #0x28]
	bl FUN_ov16_0210e188
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_0210e300

	arm_func_start FUN_ov16_0210e368
FUN_ov16_0210e368: ; 0x0210E368
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #2
	ldr r0, [sp, #0x28]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r1, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r0, [sp, #0x2c]
	strh r1, [r4, #8]
	ldr r1, [sp, #0x18]
	strb r0, [r4, #0xb]
	strh r5, [r4]
	ldr r0, [sp, #0x20]
	strh r1, [r4, #2]
	ldr r3, [sp, #0x24]
	strh r0, [r4, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strh r3, [r4, #0x12]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e368

	arm_func_start FUN_ov16_0210e3f0
FUN_ov16_0210e3f0: ; 0x0210E3F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #3
	ldr r0, [sp, #0x24]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r1, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r1, [r4, #0xb]
	strh r5, [r4]
	ldr r3, [sp, #0x20]
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strh r3, [r4, #0x12]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e3f0

	arm_func_start FUN_ov16_0210e470
FUN_ov16_0210e470: ; 0x0210E470
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #5
	ldr r0, [sp, #0x24]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r1, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r1, [r4, #0xb]
	strh r5, [r4]
	ldr r3, [sp, #0x20]
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strh r3, [r4, #0x12]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e470

	arm_func_start FUN_ov16_0210e4f0
FUN_ov16_0210e4f0: ; 0x0210E4F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #6
	ldr r0, [sp, #0x24]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r1, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r1, [r4, #0xb]
	strh r5, [r4]
	ldrb r3, [sp, #0x20]
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strb r3, [r4, #0x10]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e4f0

	arm_func_start FUN_ov16_0210e570
FUN_ov16_0210e570: ; 0x0210E570
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #7
	ldr r0, [sp, #0x24]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r1, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r1, [r4, #0xb]
	strh r5, [r4]
	ldrb r3, [sp, #0x20]
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strb r3, [r4, #0x10]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e570

	arm_func_start FUN_ov16_0210e5f0
FUN_ov16_0210e5f0: ; 0x0210E5F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_0210d6dc
	mov r0, #8
	strb r0, [r4, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r4
	strh r5, [r4, #6]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210e5f0

	arm_func_start FUN_ov16_0210e638
FUN_ov16_0210e638: ; 0x0210E638
	ldr r12, _0210E648 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x48
	bx r12
_0210E648: .word MI_CpuFill8
	arm_func_end FUN_ov16_0210e638

	arm_func_start FUN_ov16_0210e64c
FUN_ov16_0210e64c: ; 0x0210E64C
	ldr r12, _0210E654 ; =FUN_ov16_0210e638
	bx r12
_0210E654: .word FUN_ov16_0210e638
	arm_func_end FUN_ov16_0210e64c

	arm_func_start FUN_ov16_0210e658
FUN_ov16_0210e658: ; 0x0210E658
	ldrh r1, [r0, #8]
	cmp r1, #0
	ldreqh r0, [r0, #0xa]
	cmpeq r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e658

	arm_func_start FUN_ov16_0210e674
FUN_ov16_0210e674: ; 0x0210E674
	ldr r12, [sp]
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	strh r12, [r0, #6]
	bx lr
	arm_func_end FUN_ov16_0210e674

	arm_func_start FUN_ov16_0210e68c
FUN_ov16_0210e68c: ; 0x0210E68C
	strh r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov16_0210e68c

	arm_func_start FUN_ov16_0210e694
FUN_ov16_0210e694: ; 0x0210E694
	strh r1, [r0, #0x32]
	bx lr
	arm_func_end FUN_ov16_0210e694

	arm_func_start FUN_ov16_0210e69c
FUN_ov16_0210e69c: ; 0x0210E69C
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	beq _0210E6C0
	ldr r1, [r0, #0x24]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	blx r1
	ldmfd sp!, {r3, pc}
_0210E6C0:
	ldrb r1, [r0, #0xe]
	cmp r1, #1
	bne _0210E6E0
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	blx r1
	ldmfd sp!, {r3, pc}
_0210E6E0:
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_0210e69c

	arm_func_start FUN_ov16_0210e6f4
FUN_ov16_0210e6f4: ; 0x0210E6F4
	ldrb r0, [r0, #0x12]
	bx lr
	arm_func_end FUN_ov16_0210e6f4

	arm_func_start FUN_ov16_0210e6fc
FUN_ov16_0210e6fc: ; 0x0210E6FC
	cmp r1, #0
	mov r1, #0
	orrne r1, r1, #1
	cmp r2, #0
	orrne r1, r1, #2
	cmp r3, #0
	orrne r1, r1, #4
	strb r1, [r0, #3]
	bx lr
	arm_func_end FUN_ov16_0210e6fc

	arm_func_start FUN_ov16_0210e720
FUN_ov16_0210e720: ; 0x0210E720
	strb r1, [r0]
	strb r2, [r0, #1]
	strb r3, [r0, #2]
	bx lr
	arm_func_end FUN_ov16_0210e720

	arm_func_start FUN_ov16_0210e730
FUN_ov16_0210e730: ; 0x0210E730
	ldrb r0, [r0, #3]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e730

	arm_func_start FUN_ov16_0210e744
FUN_ov16_0210e744: ; 0x0210E744
	ldrb r0, [r0, #3]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e744

	arm_func_start FUN_ov16_0210e758
FUN_ov16_0210e758: ; 0x0210E758
	ldrb r0, [r0, #3]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e758

	arm_func_start FUN_ov16_0210e76c
FUN_ov16_0210e76c: ; 0x0210E76C
	ldr r12, _0210E780 ; =MIi_CpuClearFast
	mov r1, r0
	mov r0, #0
	mov r2, #8
	bx r12
_0210E780: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_0210e76c

	arm_func_start FUN_ov16_0210e784
FUN_ov16_0210e784: ; 0x0210E784
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e784

	arm_func_start FUN_ov16_0210e798
FUN_ov16_0210e798: ; 0x0210E798
	stmfd sp!, {r3, r4, r5, lr}
	add r4, r0, #4
	mov r5, #0
_0210E7A4:
	mov r0, r4
	bl FUN_ov16_0210e658
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #0x32
	add r4, r4, #0x48
	blt _0210E7A4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e798

	arm_func_start FUN_ov16_0210e7d0
FUN_ov16_0210e7d0: ; 0x0210E7D0
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	add r0, r0, #4
	mov r3, #0
_0210E7E4:
	ldrh r2, [r0, #8]
	cmp r2, r1
	bxeq lr
	add r3, r3, #1
	cmp r3, #0x32
	add r0, r0, #0x48
	blt _0210E7E4
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e7d0

	arm_func_start FUN_ov16_0210e808
FUN_ov16_0210e808: ; 0x0210E808
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x214
	add r4, r0, #0xc00
	mov r5, #0
_0210E818:
	mov r0, r4
	bl FUN_ov16_0210e784
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #0x22
	add r4, r4, #8
	blt _0210E818
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e808

	arm_func_start FUN_ov16_0210e844
FUN_ov16_0210e844: ; 0x0210E844
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x214
	mov r6, r1
	add r4, r0, #0xc00
	mov r5, #0
_0210E858:
	mov r0, r4
	bl FUN_ov16_0210e784
	cmp r0, #0
	ldreq r0, [r4]
	ldreqh r0, [r0, #0xa]
	cmpeq r0, r6
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #0x22
	add r4, r4, #8
	blt _0210E858
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210e844

	arm_func_start FUN_ov16_0210e890
FUN_ov16_0210e890: ; 0x0210E890
	ldr r0, [sp]
	sub r1, r1, r3
	sub r2, r2, r0
	mul r0, r2, r2
	mla r0, r1, r1, r0
	cmp r0, #0x100
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e890

	arm_func_start FUN_ov16_0210e8b4
FUN_ov16_0210e8b4: ; 0x0210E8B4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	ldrb r2, [r4, #8]
	mov r3, r1
	cmp r2, #3
	moveq r1, #0
	streqb r1, [r4, #8]
	streqb r1, [r4, #9]
	ldrh r1, [r3, #4]
	cmp r1, #1
	bne _0210E964
	ldrh r1, [r3, #6]
	cmp r1, #0
	bne _0210E974
	ldrh r2, [r3]
	ldrb r1, [r4, #8]
	strh r2, [r4]
	ldrh r2, [r3, #2]
	cmp r1, #0
	strh r2, [r4, #2]
	bne _0210E928
	mov r0, #1
	strb r0, [r4, #8]
	ldrh r0, [r3]
	strh r0, [r4, #4]
	ldrh r0, [r3, #2]
	strh r0, [r4, #6]
	b _0210E974
_0210E928:
	ldrb r1, [r4, #9]
	mov r2, #2
	strb r2, [r4, #8]
	cmp r1, #0
	bne _0210E974
	ldrsh r1, [r3, #2]
	str r1, [sp]
	ldrsh r1, [r4, #4]
	ldrsh r2, [r4, #6]
	ldrsh r3, [r3]
	bl FUN_ov16_0210e890
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #9]
	b _0210E974
_0210E964:
	ldrb r0, [r4, #8]
	cmp r0, #0
	movne r0, #3
	strneb r0, [r4, #8]
_0210E974:
	ldrb r0, [r4, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_0210e8b4

	arm_func_start FUN_ov16_0210e980
FUN_ov16_0210e980: ; 0x0210E980
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #4
	mov r2, #0xe10
	bl MI_CpuFill8
	add r0, r5, #0x214
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0x110
	bl MI_CpuFill8
	add r0, r5, #0x328
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0xc
	str r4, [r5, #0xf24]
	bl MI_CpuFill8
	add r0, r5, #0xf00
	str r4, [r5, #0xf34]
	strh r4, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e980

	arm_func_start FUN_ov16_0210e9d8
FUN_ov16_0210e9d8: ; 0x0210E9D8
	ldr r12, _0210E9E0 ; =FUN_ov16_0210e980
	bx r12
_0210E9E0: .word FUN_ov16_0210e980
	arm_func_end FUN_ov16_0210e9d8

	arm_func_start FUN_ov16_0210e9e4
FUN_ov16_0210e9e4: ; 0x0210E9E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r2
	mov r5, r0
	mov r7, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_0210e844
	movs r4, r0
	bne _0210EA2C
	mov r0, r5
	bl FUN_ov16_0210e808
	mov r4, r0
_0210EA2C:
	mov r0, r5
	bl FUN_ov16_0210e798
	movs r5, r0
	cmpne r4, #0
	beq _0210EA9C
	bl FUN_ov16_0210e638
	strh r6, [r5, #8]
	strh r7, [r5, #0xa]
	ldr r0, [r4]
	ldr r1, _0210EAA4 ; =FUN_ov16_0210f4a8
	str r0, [r5, #0x14]
	str r4, [r5, #0x18]
	ldr r0, _0210EAA8 ; =FUN_ov16_0210f61c
	str r1, [r5, #0x20]
	ldr r1, _0210EAAC ; =FUN_ov16_0210f7a0
	str r0, [r5, #0x1c]
	ldr r0, _0210EAB0 ; =FUN_ov16_0210f8fc
	str r1, [r5, #0x24]
	str r0, [r5, #0x28]
	ldr r0, [r4]
	cmp r0, #0
	bne _0210EA8C
	mov r0, r4
	bl FUN_ov16_0210e76c
_0210EA8C:
	str r5, [r4]
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
_0210EA9C:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210EAA4: .word FUN_ov16_0210f4a8
_0210EAA8: .word FUN_ov16_0210f61c
_0210EAAC: .word FUN_ov16_0210f7a0
_0210EAB0: .word FUN_ov16_0210f8fc
	arm_func_end FUN_ov16_0210e9e4

	arm_func_start FUN_ov16_0210eab4
FUN_ov16_0210eab4: ; 0x0210EAB4
	stmfd sp!, {r4, lr}
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r4, [r0, #0x18]
	ldr r2, [r4]
	cmp r2, r0
	bne _0210EAE0
	ldr r1, [r0, #0x14]
	str r1, [r4]
	b _0210EAFC
_0210EAE0:
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _0210EB20
_0210EAEC:
	cmp r1, r0
	bne _0210EB10
	ldr r1, [r0, #0x14]
	str r1, [r2, #0x14]
_0210EAFC:
	ldrh r1, [r4, #4]
	cmp r1, #0
	subne r1, r1, #1
	strneh r1, [r4, #4]
	b _0210EB20
_0210EB10:
	mov r2, r1
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _0210EAEC
_0210EB20:
	bl FUN_ov16_0210e64c
	ldr r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_0210e76c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210eab4

	arm_func_start FUN_ov16_0210eb3c
FUN_ov16_0210eb3c: ; 0x0210EB3C
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov16_0210e844
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #0
	beq _0210EB6C
_0210EB58:
	ldr r5, [r0, #0x14]
	bl FUN_ov16_0210e64c
	mov r0, r5
	cmp r5, #0
	bne _0210EB58
_0210EB6C:
	mov r0, r4
	bl FUN_ov16_0210e76c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210eb3c

	arm_func_start FUN_ov16_0210eb78
FUN_ov16_0210eb78: ; 0x0210EB78
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x214
	add r4, r0, #0xc00
	mov r6, #0
_0210EB88:
	mov r0, r4
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210EBC0
	ldr r0, [r4]
	cmp r0, #0
	beq _0210EBB8
_0210EBA4:
	ldr r5, [r0, #0x14]
	bl FUN_ov16_0210e64c
	mov r0, r5
	cmp r5, #0
	bne _0210EBA4
_0210EBB8:
	mov r0, r4
	bl FUN_ov16_0210e76c
_0210EBC0:
	add r6, r6, #1
	cmp r6, #0x22
	add r4, r4, #8
	blt _0210EB88
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210eb78

	arm_func_start FUN_ov16_0210ebd4
FUN_ov16_0210ebd4: ; 0x0210EBD4
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x214
	mov r6, r1
	add r5, r0, #0xc00
	mov r4, #0
_0210EBE8:
	mov r0, r5
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210EC1C
	ldr r0, [r5]
	cmp r0, #0
	beq _0210EC1C
_0210EC04:
	ldrh r1, [r0, #0xc]
	tst r1, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0210EC04
_0210EC1C:
	add r4, r4, #1
	cmp r4, #0x22
	add r5, r5, #8
	blt _0210EBE8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210ebd4

	arm_func_start FUN_ov16_0210ec34
FUN_ov16_0210ec34: ; 0x0210EC34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r0, r8, #0x214
	mov r6, r2
	mov r4, #0
	mov r7, r1
	str r4, [r6]
	add r5, r0, #0xc00
_0210EC54:
	mov r0, r5
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210ECA0
	ldr r1, [r5]
	cmp r1, #0
	beq _0210ECA0
	ldr r2, [r8, #0xf24]
_0210EC74:
	ldrh r0, [r1, #0x32]
	cmp r0, r2
	blt _0210EC94
	ldrh r0, [r1, #0xc]
	tst r0, r7
	strne r1, [r6]
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0210EC94:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _0210EC74
_0210ECA0:
	add r4, r4, #1
	cmp r4, #0x22
	add r5, r5, #8
	blt _0210EC54
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210ec34

	arm_func_start FUN_ov16_0210ecb8
FUN_ov16_0210ecb8: ; 0x0210ECB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrb r8, [sp, #0x20]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r8, #0
	beq _0210ECE0
	bl FUN_ov16_0210ed80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210ECE0:
	cmp r4, #0
	movne r0, #0
	strne r0, [r4]
	add r0, r7, #0x214
	add r9, r0, #0xc00
	mov r8, #0
_0210ECF8:
	mov r0, r9
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210ED68
	ldr r0, [r9]
	cmp r0, #0
	beq _0210ED68
	ldr r1, [r7, #0xf24]
_0210ED18:
	ldrh r2, [r0, #0x32]
	cmp r2, r1
	ldrgesh r3, [r0]
	cmpge r6, r3
	ldrgesh r2, [r0, #4]
	addge r2, r3, r2
	cmpge r2, r6
	ldrgesh r3, [r0, #2]
	cmpge r5, r3
	ldrgesh r2, [r0, #6]
	addge r2, r3, r2
	cmpge r2, r5
	blt _0210ED5C
	cmp r4, #0
	strne r0, [r4]
	ldrh r0, [r0, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210ED5C:
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0210ED18
_0210ED68:
	add r8, r8, #1
	cmp r8, #0x22
	add r9, r9, #8
	blt _0210ECF8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_0210ecb8

	arm_func_start FUN_ov16_0210ed80
FUN_ov16_0210ed80: ; 0x0210ED80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x214
	movs r11, r3
	mov r7, #0
	mov r9, r1
	mov r8, r2
	mvn r6, #0
	strne r7, [r11]
	add r5, r0, #0xc00
	mov r4, #0
_0210EDAC:
	mov r0, r5
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210EE18
	ldr r1, [r5]
	cmp r1, #0
	beq _0210EE18
	ldr r2, [r10, #0xf24]
_0210EDCC:
	ldrh r0, [r1, #0x32]
	cmp r0, r2
	ldrgesh r12, [r1]
	cmpge r9, r12
	ldrgesh r3, [r1, #4]
	addge r3, r12, r3
	cmpge r3, r9
	ldrgesh r12, [r1, #2]
	cmpge r8, r12
	ldrgesh r3, [r1, #6]
	addge r3, r12, r3
	cmpge r3, r8
	blt _0210EE0C
	cmp r6, r0
	movlt r6, r0
	movlt r7, r1
_0210EE0C:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _0210EDCC
_0210EE18:
	add r4, r4, #1
	cmp r4, #0x22
	add r5, r5, #8
	blt _0210EDAC
	cmp r7, #0
	beq _0210EE40
	cmp r11, #0
	strne r7, [r11]
	ldrh r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210EE40:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_0210ed80

	arm_func_start FUN_ov16_0210ee48
FUN_ov16_0210ee48: ; 0x0210EE48
	cmp r1, #0
	beq _0210EE70
	ldrb r2, [r1, #0x10]
	cmp r2, #0
	bne _0210EE70
	ldrh r1, [r1, #0x32]
	ldr r0, [r0, #0xf24]
	cmp r1, r0
	movge r0, #1
	bxge lr
_0210EE70:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_0210ee48

	arm_func_start FUN_ov16_0210ee78
FUN_ov16_0210ee78: ; 0x0210EE78
	str r1, [r0, #0xf24]
	bx lr
	arm_func_end FUN_ov16_0210ee78

	arm_func_start FUN_ov16_0210ee80
FUN_ov16_0210ee80: ; 0x0210EE80
	stmfd sp!, {r4, lr}
	movs r4, r1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_0210ee48
	cmp r0, #0
	bne _0210EEB0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
_0210EEB0:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _0210EED4
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
_0210EED4:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210ee80

	arm_func_start FUN_ov16_0210eeec
FUN_ov16_0210eeec: ; 0x0210EEEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_0210e844
	cmp r0, #0
	ldrne r4, [r0]
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0210EF08:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_0210ee80
	ldr r4, [r4, #0x14]
	cmp r4, #0
	bne _0210EF08
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210eeec

	arm_func_start FUN_ov16_0210ef24
FUN_ov16_0210ef24: ; 0x0210EF24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x214
	add r4, r0, #0xc00
	mov r6, #0
_0210EF38:
	mov r0, r4
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210EF74
	ldr r5, [r4]
	cmp r5, #0
	beq _0210EF6C
_0210EF54:
	mov r0, r7
	mov r1, r5
	bl FUN_ov16_0210ee80
	ldr r5, [r5, #0x14]
	cmp r5, #0
	bne _0210EF54
_0210EF6C:
	mov r0, r4
	bl FUN_ov16_0210e76c
_0210EF74:
	add r6, r6, #1
	cmp r6, #0x22
	add r4, r4, #8
	blt _0210EF38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210ef24

	arm_func_start FUN_ov16_0210ef88
FUN_ov16_0210ef88: ; 0x0210EF88
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov16_0210ee48
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x28]
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210ef88

	arm_func_start FUN_ov16_0210efac
FUN_ov16_0210efac: ; 0x0210EFAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_0210e7d0
	mov r1, r0
	mov r0, r4
	bl FUN_ov16_0210ef88
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210efac

	arm_func_start FUN_ov16_0210efc8
FUN_ov16_0210efc8: ; 0x0210EFC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r4, #0
	mov r9, r2
	mov r10, r1
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x10
	mov r11, r3
	bl MI_CpuFill8
	ldr r6, _0210F124 ; =0x02099F38
	mov r1, r10
	ldr r0, [r6]
	bl FUN_ov16_02114444
	movs r7, r0
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r7, #8]
	ldr r2, [r7, #0xc]
	mov r0, r3, asr #0xb
	mov r1, r2, asr #0xb
	add r4, r3, r0, lsr #20
	add r5, r2, r1, lsr #20
	mov r8, #1
	b _0210F0CC
_0210F030:
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	bl FUN_ov16_021143d4
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r0, #0x1c]
	ldr r12, [r0, #0x20]
	mov r1, r3, asr #0xb
	add r1, r3, r1, lsr #20
	ldrsh r3, [r0, #8]
	mov r2, r12, asr #0xb
	add r2, r12, r2, lsr #20
	ldrsh r0, [r0, #0xa]
	mov r12, r1, asr #0xc
	cmp r8, #1
	mov lr, r2, asr #0xc
	add r1, r3, r1, asr #12
	add r0, r0, r2, asr #12
	streq r12, [sp]
	streq lr, [sp, #4]
	streq r1, [sp, #8]
	streq r0, [sp, #0xc]
	beq _0210F0C8
	ldr r2, [sp]
	cmp r2, r12
	ldr r2, [sp, #4]
	strgt r12, [sp]
	cmp r2, lr
	ldr r2, [sp, #8]
	strgt lr, [sp, #4]
	cmp r2, r1
	strlt r1, [sp, #8]
	ldr r1, [sp, #0xc]
	cmp r1, r0
	strlt r0, [sp, #0xc]
_0210F0C8:
	add r8, r8, #1
_0210F0CC:
	ldrb r0, [r7, #6]
	cmp r8, r0
	ble _0210F030
	ldr r0, [sp]
	ldr r2, [sp, #0x38]
	add r0, r0, r4, asr #12
	str r0, [r9]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x3c]
	add r0, r0, r5, asr #12
	str r0, [r11]
	ldr r4, [sp, #8]
	ldr r3, [sp]
	mov r0, #1
	sub r3, r4, r3
	str r3, [r2]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #4]
	sub r2, r3, r2
	str r2, [r1]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210F124: .word unk_02099F38
	arm_func_end FUN_ov16_0210efc8

	arm_func_start FUN_ov16_0210f128
FUN_ov16_0210f128: ; 0x0210F128
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r7, _0210F208 ; =0x02099F38
	mov r5, r1
	ldr r0, [r7]
	mov r4, r2
	mov r6, r3
	bl FUN_ov16_02114444
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, [r0, #8]
	ldr lr, [r0, #0xc]
	ldr r0, [r7]
	mov r3, r8, asr #0xb
	mov r2, r4
	mov r12, lr, asr #0xb
	mov r1, r5
	add r4, r8, r3, lsr #20
	add r5, lr, r12, lsr #20
	bl FUN_ov16_021143d4
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #0x1c]
	ldr r2, [r0, #0x20]
	mov r1, r3, asr #0xb
	add r12, r3, r1, lsr #20
	mov r3, r12, asr #0xc
	mov r1, r2, asr #0xb
	ldrsh r7, [r0, #8]
	ldrsh r0, [r0, #0xa]
	add lr, r2, r1, lsr #20
	mov r2, lr, asr #0xc
	add r1, r7, r12, asr #12
	add r0, r0, lr, asr #12
	add r7, r3, r4, asr #12
	ldr r4, [sp, #0x28]
	str r7, [r6]
	add r6, r2, r5, asr #12
	ldr r5, [sp, #0x2c]
	str r6, [r4]
	sub r6, r1, r12, asr #12
	ldr r4, [sp, #0x30]
	str r6, [r5]
	sub r5, r0, lr, asr #12
	str r3, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r5, [r4]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210F208: .word unk_02099F38
	arm_func_end FUN_ov16_0210f128

	arm_func_start FUN_ov16_0210f20c
FUN_ov16_0210f20c: ; 0x0210F20C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	add r3, r6, #0x328
	mov r5, r2
	mov r4, #0
	add r2, r3, #0xc00
	str r4, [sp, #4]
	bl FUN_ov16_0210e8b4
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0210F3F4
_0210F23C: ; jump table
	b _0210F24C ; case 0
	b _0210F254 ; case 1
	b _0210F2A4 ; case 2
	b _0210F338 ; case 3
_0210F24C:
	str r4, [r6, #0xf34]
	b _0210F3F4
_0210F254:
	str r5, [sp]
	add r0, r6, #0xf00
	ldrsh r1, [r0, #0x2c]
	ldrsh r2, [r0, #0x2e]
	add r3, sp, #4
	mov r0, r6
	bl FUN_ov16_0210ecb8
	str r0, [r6, #0xf34]
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrne r1, [r0, #0x1c]
	cmpne r1, #0
	beq _0210F28C
	blx r1
_0210F28C:
	ldr r0, [r6, #0xf34]
	cmp r0, #0
	ble _0210F3F4
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0210F2A4:
	ldr r1, [r6, #0xf34]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	str r0, [sp, #4]
	cmp r0, #0
	beq _0210F320
	bl FUN_ov16_0210e6f4
	cmp r0, #0
	bne _0210F320
	str r5, [sp]
	add r0, r6, #0xf00
	ldrsh r1, [r0, #0x28]
	ldrsh r2, [r0, #0x2a]
	mov r0, r6
	mov r3, r4
	bl FUN_ov16_0210ecb8
	ldr r1, [r6, #0xf34]
	cmp r1, r0
	beq _0210F30C
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _0210F320
	b _0210F31C
_0210F30C:
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0210F320
_0210F31C:
	blx r1
_0210F320:
	ldrb r0, [r6, #0xf31]
	add sp, sp, #8
	cmp r0, #0
	movne r0, #3
	moveq r0, #5
	ldmfd sp!, {r4, r5, r6, pc}
_0210F338:
	ldr r0, [r6, #0xf34]
	cmp r0, #0
	addle sp, sp, #8
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r1, r0, lsl #0x10
	mov r0, r6
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	str r0, [sp, #4]
	cmp r0, #0
	ldrne r1, [r0, #0x20]
	cmpne r1, #0
	beq _0210F374
	blx r1
_0210F374:
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	beq _0210F390
	bl FUN_ov16_0210e6f4
	cmp r0, #0
	movne r4, #1
_0210F390:
	ldrb r0, [r6, #0xf31]
	cmp r0, #0
	cmpne r4, #0
	addne sp, sp, #8
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	str r5, [sp]
	add r0, r6, #0xf00
	mov r5, #0
	ldrsh r1, [r0, #0x28]
	ldrsh r2, [r0, #0x2a]
	mov r0, r6
	mov r3, r5
	bl FUN_ov16_0210ecb8
	ldr r1, [r6, #0xf34]
	cmp r1, r0
	beq _0210F3E8
	cmp r4, #0
	movne r5, #4
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0210F3E8:
	add sp, sp, #8
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_0210F3F4:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210f20c

	arm_func_start FUN_ov16_0210f400
FUN_ov16_0210f400: ; 0x0210F400
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r0
	mov r5, r1
	str r4, [sp]
	bl FUN_ov16_0210f468
	cmp r0, #0
	addne sp, sp, #4
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	add r2, sp, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r0, r6
	bl FUN_ov16_0210ef88
	ldr r0, [sp]
	ldrh r0, [r0, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210f400

	arm_func_start FUN_ov16_0210f468
FUN_ov16_0210f468: ; 0x0210F468
	ldrb r0, [r0, #0xf30]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_0210f468

	arm_func_start FUN_ov16_0210f47c
FUN_ov16_0210f47c: ; 0x0210F47C
	str r1, [r0, #0xf34]
	bx lr
	arm_func_end FUN_ov16_0210f47c

	arm_func_start FUN_ov16_0210f484
FUN_ov16_0210f484: ; 0x0210F484
	ldr r0, [r0, #0xf34]
	bx lr
	arm_func_end FUN_ov16_0210f484

	arm_func_start FUN_ov16_0210f48c
FUN_ov16_0210f48c: ; 0x0210F48C
	cmp r1, #0
	addne r0, r0, #0xf00
	ldrnesh r2, [r0, #0x28]
	strneh r2, [r1]
	ldrnesh r0, [r0, #0x2a]
	strneh r0, [r1, #2]
	bx lr
	arm_func_end FUN_ov16_0210f48c

	arm_func_start FUN_ov16_0210f4a8
FUN_ov16_0210f4a8: ; 0x0210F4A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	ldr r1, _0210F614 ; =0x02099EB4
	mov r6, r0
	ldr r0, [r1]
	mov r1, r6
	mov r4, #0
	bl FUN_ov16_0210ee48
	cmp r0, #0
	bne _0210F4E0
	mov r0, r6
	bl FUN_ov16_0210f7a0
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210F4E0:
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	bne _0210F530
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq _0210F530
	ldrh r1, [r6, #0x36]
	sub r0, r4, #1
	stmia sp, {r1, r4}
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _0210F618 ; =0x02099ED4
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e238
_0210F530:
	add r0, r6, #0x3a
	bl FUN_ov16_0210e730
	mov r8, r0
	add r0, r6, #0x3a
	bl FUN_ov16_0210e744
	mov r7, r0
	add r0, r6, #0x3a
	bl FUN_ov16_0210e758
	mov r5, r0
	cmp r8, #0
	beq _0210F598
	ldrh r1, [r6, #0x36]
	ldr r0, _0210F618 ; =0x02099ED4
	stmia sp, {r1, r4}
	ldrb r1, [r6, #0x3a]
	str r1, [sp, #8]
	ldrb r1, [r6, #0x3b]
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e368
	b _0210F5D0
_0210F598:
	cmp r7, #0
	beq _0210F5D0
	ldrh r1, [r6, #0x36]
	ldr r0, _0210F618 ; =0x02099ED4
	stmia sp, {r1, r4}
	ldrb r1, [r6, #0x3b]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e3f0
_0210F5D0:
	cmp r5, #0
	beq _0210F608
	ldrh r1, [r6, #0x36]
	ldr r0, _0210F618 ; =0x02099ED4
	stmia sp, {r1, r4}
	ldrb r1, [r6, #0x3c]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e470
_0210F608:
	strb r4, [r6, #0xe]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210F614: .word unk_02099EB4
_0210F618: .word unk_02099ED4
	arm_func_end FUN_ov16_0210f4a8

	arm_func_start FUN_ov16_0210f61c
FUN_ov16_0210f61c: ; 0x0210F61C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	ldr r1, _0210F798 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r1]
	mov r1, r5
	bl FUN_ov16_0210ee48
	cmp r0, #0
	bne _0210F650
	mov r0, r5
	bl FUN_ov16_0210f7a0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210F650:
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	ldrneb r0, [r5, #0xf]
	cmpne r0, #0
	beq _0210F6A4
	ldrh r2, [r5, #0x36]
	mov r1, #0
	mov r0, #1
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0210F79C ; =0x02099ED4
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e238
_0210F6A4:
	add r0, r5, #0x3e
	bl FUN_ov16_0210e730
	mov r7, r0
	add r0, r5, #0x3e
	bl FUN_ov16_0210e744
	mov r6, r0
	add r0, r5, #0x3e
	bl FUN_ov16_0210e758
	mov r4, r0
	cmp r7, #0
	beq _0210F710
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F79C ; =0x02099ED4
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x3e]
	str r1, [sp, #8]
	ldrb r1, [r5, #0x3f]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e368
	b _0210F74C
_0210F710:
	cmp r6, #0
	beq _0210F74C
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F79C ; =0x02099ED4
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x3f]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e3f0
_0210F74C:
	cmp r4, #0
	beq _0210F788
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F79C ; =0x02099ED4
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x40]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e470
_0210F788:
	mov r0, #1
	strb r0, [r5, #0xe]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210F798: .word unk_02099EB4
_0210F79C: .word unk_02099ED4
	arm_func_end FUN_ov16_0210f61c

	arm_func_start FUN_ov16_0210f7a0
FUN_ov16_0210f7a0: ; 0x0210F7A0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _0210F804
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0210F804
	ldrh r2, [r5, #0x36]
	mov r1, #0
	sub r0, r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0210F8F8 ; =0x02099ED4
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e238
_0210F804:
	add r0, r5, #0x42
	bl FUN_ov16_0210e730
	mov r7, r0
	add r0, r5, #0x42
	bl FUN_ov16_0210e744
	mov r6, r0
	add r0, r5, #0x42
	bl FUN_ov16_0210e758
	mov r4, r0
	cmp r7, #0
	beq _0210F870
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F8F8 ; =0x02099ED4
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x42]
	str r1, [sp, #8]
	ldrb r1, [r5, #0x43]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e368
	b _0210F8AC
_0210F870:
	cmp r6, #0
	beq _0210F8AC
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F8F8 ; =0x02099ED4
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x43]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e3f0
_0210F8AC:
	cmp r4, #0
	beq _0210F8E8
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F8F8 ; =0x02099ED4
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x44]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e470
_0210F8E8:
	mov r0, #2
	strb r0, [r5, #0xe]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210F8F8: .word unk_02099ED4
	arm_func_end FUN_ov16_0210f7a0

	arm_func_start FUN_ov16_0210f8fc
FUN_ov16_0210f8fc: ; 0x0210F8FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210f61c
	ldr r4, _0210F93C ; =0x02099ED4
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210f4a8
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_0210F93C: .word unk_02099ED4
	arm_func_end FUN_ov16_0210f8fc

	arm_func_start FUN_ov16_0210f940
FUN_ov16_0210f940: ; 0x0210F940
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, #1
	str r4, [sp]
	mov r1, #0
	stmib sp, {r1, r4}
	str r1, [sp, #0xc]
	mov r5, r0
	str r1, [sp, #0x10]
	ldr r0, _0210F988 ; =0x02099ED4
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e4f0
	strb r4, [r5, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_0210F988: .word unk_02099ED4
	arm_func_end FUN_ov16_0210f940

	arm_func_start FUN_ov16_0210f98c
FUN_ov16_0210f98c: ; 0x0210F98C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, #1
	str r6, [sp]
	mov r5, #0
	stmib sp, {r5, r6}
	str r5, [sp, #0xc]
	mov r7, r0
	str r5, [sp, #0x10]
	ldr r4, _0210FA1C ; =0x02099ED4
	ldrb r1, [r7, #0x11]
	ldrb r2, [r7, #0x38]
	ldrh r3, [r7, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	mov r0, #2
	stmia sp, {r0, r5, r6}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r7, #0x11]
	ldrb r2, [r7, #0x38]
	ldrh r3, [r7, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	mov r0, #3
	stmia sp, {r0, r5, r6}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r7, #0x11]
	ldrb r2, [r7, #0x38]
	ldrh r3, [r7, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	strb r6, [r7, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210FA1C: .word unk_02099ED4
	arm_func_end FUN_ov16_0210f98c

	arm_func_start FUN_ov16_0210fa20
FUN_ov16_0210fa20: ; 0x0210FA20
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r1, #1
	str r1, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r5, r0
	str r4, [sp, #0x10]
	ldr r0, _0210FA6C ; =0x02099ED4
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e4f0
	strb r4, [r5, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_0210FA6C: .word unk_02099ED4
	arm_func_end FUN_ov16_0210fa20

	arm_func_start FUN_ov16_0210fa70
FUN_ov16_0210fa70: ; 0x0210FA70
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r1, #1
	str r1, [sp]
	mov r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	mov r6, r0
	str r5, [sp, #0x10]
	ldr r4, _0210FB0C ; =0x02099ED4
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	mov r0, #2
	stmia sp, {r0, r5}
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	mov r0, #3
	stmia sp, {r0, r5}
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	strb r5, [r6, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0210FB0C: .word unk_02099ED4
	arm_func_end FUN_ov16_0210fa70

	arm_func_start FUN_ov16_0210fb10
FUN_ov16_0210fb10: ; 0x0210FB10
	mov r1, #2
	strb r1, [r0, #0xe]
	bx lr
	arm_func_end FUN_ov16_0210fb10

	arm_func_start FUN_ov16_0210fb1c
FUN_ov16_0210fb1c: ; 0x0210FB1C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210f940
	ldr r4, _0210FB5C ; =0x02099ED4
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210fa20
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_0210FB5C: .word unk_02099ED4
	arm_func_end FUN_ov16_0210fb1c

	arm_func_start FUN_ov16_0210fb60
FUN_ov16_0210fb60: ; 0x0210FB60
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210f98c
	ldr r4, _0210FBA0 ; =0x02099ED4
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210fa70
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_0210FBA0: .word unk_02099ED4
	arm_func_end FUN_ov16_0210fb60

	arm_func_start FUN_ov16_0210fba4
FUN_ov16_0210fba4: ; 0x0210FBA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	bl FUN_ov16_0210e9e4
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r12, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r1, r5
	str r12, [sp]
	bl FUN_ov16_0210e674
	ldr r1, [sp, #0x1c]
	mov r0, r4
	bl FUN_ov16_0210e694
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210fba4

	arm_func_start FUN_ov16_0210fbe8
FUN_ov16_0210fbe8: ; 0x0210FBE8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r3
	bl FUN_ov16_0210e9e4
	movs r4, r0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	strh r5, [r4, #0x34]
	mov r1, #0
	strb r1, [r4, #0x38]
	add r0, sp, #0xc
	str r0, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	ldr r0, _0210FC70 ; =0x02099EB4
	add r2, sp, #0x14
	ldr r0, [r0]
	add r3, sp, #0x10
	mov r1, r5
	bl FUN_ov16_0210efc8
	ldr r1, [sp, #8]
	mov r0, r4
	str r1, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_ov16_0210e674
	ldr r1, [sp, #0x28]
	mov r0, r4
	bl FUN_ov16_0210e694
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0210FC70: .word unk_02099EB4
	arm_func_end FUN_ov16_0210fbe8

	arm_func_start FUN_ov16_0210fc74
FUN_ov16_0210fc74: ; 0x0210FC74
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r3
	bl FUN_ov16_0210e9e4
	movs r4, r0
	addeq sp, sp, #0x1c
	mov r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	strh r5, [r4, #0x34]
	strb r0, [r4, #0x38]
	add r1, sp, #0x14
	str r1, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r1, sp, #0xc
	str r1, [sp, #8]
	ldr r0, _0210FD08 ; =0x02099EB4
	ldr r2, [sp, #0x28]
	ldr r0, [r0]
	add r3, sp, #0x18
	mov r1, r5
	bl FUN_ov16_0210f128
	ldr r1, [sp, #0xc]
	mov r0, r4
	str r1, [sp]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	bl FUN_ov16_0210e674
	ldr r1, [sp, #0x2c]
	mov r0, r4
	bl FUN_ov16_0210e694
	ldr r1, [sp, #0x28]
	mov r0, r4
	strh r1, [r4, #0x36]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_0210FD08: .word unk_02099EB4
	arm_func_end FUN_ov16_0210fc74

	arm_func_start FUN_ov16_0210fd0c
FUN_ov16_0210fd0c: ; 0x0210FD0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	moveq r0, #0
	strneh r5, [r0]
	strneh r4, [r0, #2]
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210fd0c

	arm_func_start FUN_ov16_0210fd34
FUN_ov16_0210fd34: ; 0x0210FD34
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, #0
	mov r1, r6
	add r0, r4, #4
	mov r2, #4
	bl MI_CpuFill8
	mov r5, #0x10
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x10
	strh r6, [r4, #8]
	strh r6, [r4, #0xc]
	strb r6, [r4, #0x2c]
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0x20
	mov r2, #0xc
	bl MI_CpuFill8
	mov r2, #3
	mov r1, r5
	strb r6, [r4, #0x2d]
	strb r6, [r4, #0x2e]
	strb r6, [r4, #0x2f]
	strb r6, [r4, #0x30]
	sub r0, r2, #4
	strb r2, [r4, #0x32]
	mov r5, #0x38
	str r0, [r4, #0x3c]
	str r0, [r4, #0x38]
	mov r0, #5
	strb r0, [r4, #0x31]
	mov r0, #0x2c
	str r0, [r4, #0x34]
	mov r0, r4
	mov r2, r5
	bl FUN_ov16_021108b4
	mov r1, r5
	mov r0, r4
	mov r5, #0x68
	mov r2, r5
	bl FUN_ov16_021108c0
	mov r0, r4
	mov r1, #0x98
	mov r2, r5
	bl FUN_ov16_021108cc
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_021108d8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210fd34

	arm_func_start FUN_ov16_0210fe00
FUN_ov16_0210fe00: ; 0x0210FE00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldrb r12, [r5, #3]
	add r0, r2, #0x3a
	add r4, r0, r3, lsl #2
	and r1, r12, #1
	and r2, r12, #2
	and r3, r12, #4
	mov r0, r4
	bl FUN_ov16_0210e6fc
	ldrb r1, [r5]
	ldrb r2, [r5, #1]
	ldrb r3, [r5, #2]
	mov r0, r4
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210fe00

	arm_func_start FUN_ov16_0210fe40
FUN_ov16_0210fe40: ; 0x0210FE40
	mov r0, #8
	mov r0, r0, lsl r1
	bx lr
	arm_func_end FUN_ov16_0210fe40

	arm_func_start FUN_ov16_0210fe4c
FUN_ov16_0210fe4c: ; 0x0210FE4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0210FE88 ; =0x02099EB4
	b _0210FE7C
_0210FE60:
	add r0, r6, r5, lsl #1
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _0210FE78
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
_0210FE78:
	add r5, r5, #1
_0210FE7C:
	cmp r5, #2
	blt _0210FE60
	ldmfd sp!, {r4, r5, r6, pc}
_0210FE88: .word unk_02099EB4
	arm_func_end FUN_ov16_0210fe4c

	arm_func_start FUN_ov16_0210fe8c
FUN_ov16_0210fe8c: ; 0x0210FE8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r10, r0
	ldr r0, [r10, #0x1c]
	mov r8, #1
	mov r6, #0
	cmp r2, #0
	moveq r8, r6
	mov r9, r1
	mov r4, r3
	cmp r0, #0
	beq _0210FEC8
	ldrb r0, [r10, #0x30]
	cmp r0, #0
	beq _0210FF14
_0210FEC8:
	ldr r1, [r10, #0x1c]
	cmp r1, #0
	beq _0210FEE4
	ldr r0, _02110034 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	str r6, [r10, #0x1c]
_0210FEE4:
	ldr r5, _02110034 ; =0x02099F38
	ldrb r2, [r10, #0x32]
	ldrb r1, [r10, #0x31]
	ldr r0, [r5]
	bl FUN_02059630
	mov r1, r0
	str r1, [r10, #0x1c]
	ldr r0, [r5]
	mov r3, r6
	mov r2, #1
	bl FUN_02059038
	strb r6, [r10, #0x30]
_0210FF14:
	ldr r1, [r10, #0x1c]
	cmp r1, #0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	beq _02110028
	cmp r4, #0
	beq _0210FF60
	mov r2, #1
	str r2, [sp]
	stmib sp, {r2, r6}
	str r6, [sp, #0xc]
	str r8, [sp, #0x10]
	ldr r1, [r10, #0x1c]
	mov r0, r9
	mov r3, r2
	bl FUN_ov16_020f2304
	b _0211001C
_0210FF60:
	ldr r11, _02110034 ; =0x02099F38
	add r2, sp, #0x20
	ldr r0, [r11]
	add r3, sp, #0x24
	str r6, [sp, #0x20]
	bl FUN_0205935c
	ldr r7, [sp, #0x20]
	cmp r7, #0
	beq _0211001C
	ldr r4, _02110038 ; =0x02099F50
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl FUN_02043310
	ldrb r1, [r10, #0x31]
	mov r0, r10
	bl FUN_ov16_0210fe40
	mov r5, r0
	ldrb r1, [r10, #0x32]
	mov r0, r10
	bl FUN_ov16_0210fe40
	stmia sp, {r0, r6}
	str r6, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r0, [sp, #0x18]
	str r8, [sp, #0x1c]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	mov r2, r7
	bl FUN_020425fc
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl DC_FlushRange
	ldr r0, [r4]
	bl FUN_0204331c
	ldr r1, [r10, #0x1c]
	ldr r0, [r11]
	ldr r3, [sp, #0x24]
	mov r2, r7
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
_0211001C:
	add sp, sp, #0x28
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02110028:
	mov r0, #0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02110034: .word unk_02099F38
_02110038: .word unk_02099F50
	arm_func_end FUN_ov16_0210fe8c

	arm_func_start FUN_ov16_0211003c
FUN_ov16_0211003c: ; 0x0211003C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r0, [r10, #0x20]
	mov r9, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	cmp r0, #0
	ldr r6, _02110550 ; =0x02099F38
	bne _02110078
	ldr r0, [r6]
	mov r1, #3
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x20]
_02110078:
	ldr r5, [r10, #0x20]
	ldrh r2, [r10, #0xc]
	ldr r0, [r6]
	mov r1, r5
	mvn r3, #0
	bl FUN_ov16_02112c90
	ldrsh r2, [r10, #0x40]
	ldrsh r3, [r10, #0x42]
	ldr r0, [r6]
	mov r1, r5
	bl FUN_ov16_02114248
	ldr r0, [r10, #0x18]
	mov r7, #0
	cmp r0, #0
	ble _021100D0
	ldrb r0, [r10, #0x2e]
	mov r1, #1
	cmp r0, #3
	cmpne r0, #4
	movne r1, r7
	cmp r1, #0
	movne r7, #1
_021100D0:
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, r10
	mov r1, r9
	bl FUN_ov16_0210fe8c
	ldrb r1, [r10, #0x2e]
	mov r6, r0
	ldrb r0, [r10, #0x2e]
	cmp r1, #2
	mov r8, #1
	cmpne r1, #4
	movne r8, #0
	cmp r0, #1
	cmpne r0, #2
	moveq r4, #0
	beq _0211011C
	cmp r0, #3
	cmpne r0, #4
	moveq r4, #1
_0211011C:
	add r0, r10, r4, lsl #2
	ldr r3, [r0, #0x10]
	ldr r4, _02110550 ; =0x02099F38
	mov r1, r5
	ldr r0, [r4]
	mov r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r11, #0
	str r11, [sp]
	ldrb r3, [r10, #0x2c]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	bl FUN_ov16_0211401c
	mov r0, #1
	str r0, [sp]
	mov r2, r0
	ldr r0, [r4]
	mov r1, r5
	mov r3, #2
	bl FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r4]
	mov r3, #2
	mov r1, r5
	mov r2, #3
	bl FUN_ov16_02113ec0
	cmp r7, #0
	beq _021101DC
	ldr r2, [r10, #0x18]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r1, r5
	mov r2, #3
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r5
	mov r2, #3
	bl FUN_ov16_0211401c
	mov r3, #0x10
	str r3, [sp]
	ldr r0, [r4]
	mov r2, #3
	mov r1, r5
	bl FUN_ov16_02113b78
_021101DC:
	ldr r0, _02110550 ; =0x02099F38
	str r6, [sp]
	mov r2, #2
	ldr r0, [r0]
	mov r1, r5
	mov r3, r2
	bl FUN_ov16_02113ec0
	cmp r6, #0
	beq _02110340
	ldr r11, _02110550 ; =0x02099F38
	mov r6, #0
	mov r4, #0xa
	b _02110228
_02110210:
	mov r0, r9
	mov r1, r4
	bl strchr
	movs r9, r0
	addne r9, r9, #1
	add r6, r6, #1
_02110228:
	cmp r9, #0
	bne _02110210
	ldr r0, [sp, #8]
	ldr r4, [r10, #0x3c]
	mov r1, #0x15
	cmp r0, #0
	moveq r1, #0xc
	cmn r4, #1
	bne _02110264
	mul r0, r1, r6
	ldr r1, [r10, #0x34]
	sub r0, r1, r0
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	add r4, r0, #2
_02110264:
	ldr r1, [r10, #0x38]
	ldr r0, [sp, #4]
	cmn r1, #1
	moveq r1, #0xa
	mov r6, #2
	cmp r0, #0
	beq _021102A4
	ldrb r1, [r10, #0x31]
	mov r0, r10
	bl FUN_ov16_0210fe40
	ldrsh r1, [r10, #0x40]
	rsb r0, r0, #0x100
	cmp r7, #0
	rsb r1, r1, r0, asr #1
	addne r1, r1, #0x10
	b _021102AC
_021102A4:
	cmp r7, #0
	addne r1, r1, #0x20
_021102AC:
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r1, lsl #0x10
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [r10, #0x1c]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_02113d88
	ldrb r1, [r10, #0x31]
	mov r0, r10
	bl FUN_ov16_0210fe40
	mov r4, r0
	ldrb r1, [r10, #0x32]
	mov r0, r10
	bl FUN_ov16_0210fe40
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r4, lsl #0x10
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113d08
_02110340:
	ldr r0, [r10, #0x24]
	mov r6, #0
	cmp r0, #0
	ldr r4, _02110550 ; =0x02099F38
	bne _02110384
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl FUN_ov16_02112724
	mov r1, r0
	ldrh r2, [r10, #0xc]
	str r1, [r10, #0x24]
	sub r0, r2, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
_02110384:
	ldr r5, [r10, #0x24]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	cmp r8, #0
	beq _021103C0
	ldrsh r2, [r10, #0x44]
	ldrsh r3, [r10, #0x46]
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_02112f04
	add r7, r10, #0x5c
	b _021103D8
_021103C0:
	ldrsh r2, [r10, #0x4c]
	ldrsh r3, [r10, #0x4e]
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_02112f04
	add r7, r10, #0x50
_021103D8:
	ldrb r2, [r7]
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_02112950
	ldrb r2, [r7, #1]
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	bl FUN_ov16_0211346c
	ldrh r1, [r10, #0xa]
	ldr r0, _02110554 ; =0x02099EB4
	mov r3, r5
	str r1, [sp]
	ldrh r1, [r10, #8]
	ldrh r2, [r10, #4]
	ldr r0, [r0]
	bl FUN_ov16_0210fbe8
	movs r5, r0
	beq _02110458
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0210fe00
	add r7, r10, #0x64
	cmp r8, #0
	addeq r7, r10, #0x58
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, #1
	bl FUN_ov16_0210fe00
_02110458:
	ldr r0, [r10, #0x28]
	mov r6, #0
	cmp r0, #0
	bne _02110498
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl FUN_ov16_02112724
	mov r1, r0
	ldrh r2, [r10, #0xc]
	str r1, [r10, #0x28]
	sub r0, r2, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
_02110498:
	ldr r5, [r10, #0x28]
	ldr r0, [r4]
	mov r1, r5
	mov r3, r8
	mov r2, #2
	bl FUN_ov16_0211329c
	cmp r8, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r10, #0x48]
	ldrsh r3, [r10, #0x4a]
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_02112f04
	ldrb r2, [r10, #0x68]
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_02112950
	ldrb r2, [r10, #0x69]
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	bl FUN_ov16_0211346c
	ldrh r1, [r10, #0xa]
	ldr r0, _02110554 ; =0x02099EB4
	mov r3, r5
	str r1, [sp]
	ldrh r1, [r10, #8]
	ldrh r2, [r10, #6]
	ldr r0, [r0]
	bl FUN_ov16_0210fbe8
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r2, r4
	mov r3, r6
	add r1, r10, #0x68
	bl FUN_ov16_0210fe00
	mov r0, r10
	mov r2, r4
	add r1, r10, #0x70
	mov r3, #1
	bl FUN_ov16_0210fe00
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02110550: .word unk_02099F38
_02110554: .word unk_02099EB4
	arm_func_end FUN_ov16_0211003c

	arm_func_start FUN_ov16_02110558
FUN_ov16_02110558: ; 0x02110558
	stmfd sp!, {r4, lr}
	ldr r1, _02110574 ; =0x02119E34
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_0210fd34
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02110574: .word ov16_02119E34
	arm_func_end FUN_ov16_02110558

	arm_func_start FUN_ov16_02110578
FUN_ov16_02110578: ; 0x02110578
	stmfd sp!, {r4, lr}
	ldr r1, _02110594 ; =0x02119E34
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_021105c0
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02110594: .word ov16_02119E34
	arm_func_end FUN_ov16_02110578

	arm_func_start FUN_ov16_02110598
FUN_ov16_02110598: ; 0x02110598
	stmfd sp!, {r4, lr}
	ldr r1, _021105BC ; =0x02119E34
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_021105c0
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_021105BC: .word ov16_02119E34
	arm_func_end FUN_ov16_02110598

	arm_func_start FUN_ov16_021105c0
FUN_ov16_021105c0: ; 0x021105C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210fe4c
	mov r5, #0
	ldr r4, _02110620 ; =0x02099F38
	b _021105F4
_021105D8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _021105F0
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_021105F0:
	add r5, r5, #1
_021105F4:
	cmp r5, #3
	blt _021105D8
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq _02110614
	ldr r0, _02110620 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_02110614:
	mov r0, r6
	bl FUN_ov16_0210fd34
	ldmfd sp!, {r4, r5, r6, pc}
_02110620: .word unk_02099F38
	arm_func_end FUN_ov16_021105c0

	arm_func_start FUN_ov16_02110624
FUN_ov16_02110624: ; 0x02110624
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	cmp r1, #0
	mov r5, r0
	mov r4, r2
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r1, #3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r1, #4
	addlt r0, r5, r1, lsl #2
	addlt sp, sp, #8
	strlt r4, [r0, #0x10]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r1, #5
	bne _021106C8
	mov r9, #2
	mov r7, #0
	str r9, [sp]
	sub r8, r9, #3
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r8, [sp, #4]
	bl FUN_ov16_021107a0
	mov r6, #1
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r3, r4
	stmia sp, {r7, r8}
	bl FUN_ov16_021107a0
	mov r0, r5
	mov r1, r9
	mov r2, r7
	mov r3, r4
	stmia sp, {r6, r8}
	bl FUN_ov16_021107a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021106C8:
	cmp r1, #6
	bne _02110730
	mov r9, #2
	mov r7, #0
	mov r6, #1
	str r9, [sp]
	sub r8, r9, #3
	mov r1, r7
	mov r2, r6
	mov r3, r4
	str r8, [sp, #4]
	bl FUN_ov16_021107a0
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	stmia sp, {r7, r8}
	bl FUN_ov16_021107a0
	mov r0, r5
	mov r1, r9
	mov r2, r6
	mov r3, r4
	stmia sp, {r6, r8}
	bl FUN_ov16_021107a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02110730:
	cmp r1, #7
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r8, #2
	mov r6, #0
	str r8, [sp]
	sub r7, r8, #3
	mov r1, r6
	mov r2, r8
	mov r3, r4
	str r7, [sp, #4]
	bl FUN_ov16_021107a0
	str r6, [sp]
	mov r6, #1
	mov r0, r5
	mov r1, r6
	mov r2, r8
	mov r3, r4
	str r7, [sp, #4]
	bl FUN_ov16_021107a0
	mov r0, r5
	mov r1, r8
	mov r2, r8
	mov r3, r4
	stmia sp, {r6, r7}
	bl FUN_ov16_021107a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02110624

	arm_func_start FUN_ov16_021107a0
FUN_ov16_021107a0: ; 0x021107A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	cmp r1, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r1, #3
	ldmgefd sp!, {r3, r4, r5, pc}
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r2, #3
	ldmgefd sp!, {r3, r4, r5, pc}
	add r3, r0, #0x50
	mov r0, #0xc
	mla r0, r1, r0, r3
	add r4, r0, r2, lsl #2
	mov r0, r4
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	cmp r5, #0
	ldrgeb r0, [r4, #3]
	ldr r1, [sp, #0x10]
	orrge r0, r0, #1
	strgeb r0, [r4, #3]
	strgeb r5, [r4]
	cmp r1, #0
	ldrgeb r0, [r4, #3]
	orrge r0, r0, #2
	strgeb r0, [r4, #3]
	strgeb r1, [r4, #1]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	ldrgeb r0, [r4, #3]
	orrge r0, r0, #4
	strgeb r0, [r4, #3]
	strgeb r1, [r4, #2]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_021107a0

	arm_func_start FUN_ov16_02110830
FUN_ov16_02110830: ; 0x02110830
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_0210fe4c
	strh r6, [r7, #8]
	strh r5, [r7, #4]
	strh r4, [r7, #6]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02110830

	arm_func_start FUN_ov16_0211085c
FUN_ov16_0211085c: ; 0x0211085C
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end FUN_ov16_0211085c

	arm_func_start FUN_ov16_02110864
FUN_ov16_02110864: ; 0x02110864
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	strh r1, [r7, #0xc]
	mov r6, #0
	mvn r5, #0
	ldr r4, _021108B0 ; =0x02099F38
	b _021108A4
_02110880:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _021108A0
	ldrh r2, [r7, #0xc]
	ldr r0, [r4]
	mov r3, r5
	bl FUN_ov16_02112c90
_021108A0:
	add r6, r6, #1
_021108A4:
	cmp r6, #3
	blt _02110880
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021108B0: .word unk_02099F38
	arm_func_end FUN_ov16_02110864

	arm_func_start FUN_ov16_021108b4
FUN_ov16_021108b4: ; 0x021108B4
	strh r1, [r0, #0x40]
	strh r2, [r0, #0x42]
	bx lr
	arm_func_end FUN_ov16_021108b4

	arm_func_start FUN_ov16_021108c0
FUN_ov16_021108c0: ; 0x021108C0
	strh r1, [r0, #0x44]
	strh r2, [r0, #0x46]
	bx lr
	arm_func_end FUN_ov16_021108c0

	arm_func_start FUN_ov16_021108cc
FUN_ov16_021108cc: ; 0x021108CC
	strh r1, [r0, #0x48]
	strh r2, [r0, #0x4a]
	bx lr
	arm_func_end FUN_ov16_021108cc

	arm_func_start FUN_ov16_021108d8
FUN_ov16_021108d8: ; 0x021108D8
	strh r1, [r0, #0x4c]
	strh r2, [r0, #0x4e]
	bx lr
	arm_func_end FUN_ov16_021108d8

	arm_func_start FUN_ov16_021108e4
FUN_ov16_021108e4: ; 0x021108E4
	str r1, [r0, #0x38]
	str r2, [r0, #0x3c]
	bx lr
	arm_func_end FUN_ov16_021108e4

	arm_func_start FUN_ov16_021108f0
FUN_ov16_021108f0: ; 0x021108F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x31]
	cmp r0, r1
	ldreqb r0, [r4, #0x32]
	strb r1, [r4, #0x31]
	and r1, r2, #0xff
	cmpeq r0, r2
	movne r3, #1
	moveq r3, #0
	mov r0, r4
	strb r3, [r4, #0x30]
	strb r2, [r4, #0x32]
	bl FUN_ov16_0210fe40
	str r0, [r4, #0x34]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_021108f0

	arm_func_start FUN_ov16_02110930
FUN_ov16_02110930: ; 0x02110930
	str r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_ov16_02110930

	arm_func_start FUN_ov16_02110938
FUN_ov16_02110938: ; 0x02110938
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	ble _02110958
	cmp r1, #5
	blt _02110960
_02110958:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02110960:
	ldrh r2, [r6, #4]
	cmp r2, #0
	ldrneh r2, [r6, #6]
	cmpne r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	strb r1, [r6, #0x2e]
	bl FUN_ov16_0210fe4c
	ldrb r3, [sp, #0x10]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_0211003c
	mov r0, #1
	strb r0, [r6, #0x2f]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02110938

	arm_func_start FUN_ov16_021109a0
FUN_ov16_021109a0: ; 0x021109A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r5, #2
	ldr r4, _021109F4 ; =0x02099F38
	b _021109D0
_021109B8:
	add r1, r7, r6, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x20]
	mov r2, r5
	bl FUN_ov16_02113390
	add r6, r6, #1
_021109D0:
	cmp r6, #3
	blt _021109B8
	ldr r0, _021109F8 ; =0x02099EB4
	ldrh r1, [r7, #8]
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	mov r0, #0
	strb r0, [r7, #0x2f]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021109F4: .word unk_02099F38
_021109F8: .word unk_02099EB4
	arm_func_end FUN_ov16_021109a0

	arm_func_start FUN_ov16_021109fc
FUN_ov16_021109fc: ; 0x021109FC
	ldrb r0, [r0, #0x2f]
	bx lr
	arm_func_end FUN_ov16_021109fc

	arm_func_start FUN_ov16_02110a04
FUN_ov16_02110a04: ; 0x02110A04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldrb r0, [r10, #0x2e]
	mov r9, r1
	mov r4, #0
	cmp r0, #2
	mov r1, #1
	cmpne r0, #4
	movne r1, r4
	mov r8, r2
	cmp r9, #0
	cmpne r8, #0
	movne r8, #0
	ldrb r6, [r10, #0x2d]
	cmp r1, #0
	beq _02110AEC
	ldr r11, _02110B00 ; =0x02099EB4
	ldrh r1, [r10, #4]
	ldr r0, [r11]
	add r7, r10, #0x60
	cmp r9, #0
	addeq r7, r10, #0x5c
	bl FUN_ov16_0210e7d0
	movs r5, r0
	beq _02110A88
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, #0
	bl FUN_ov16_0210fe00
	ldr r0, [r11]
	mov r1, r5
	bl FUN_ov16_0210ee80
_02110A88:
	ldr r11, _02110B00 ; =0x02099EB4
	ldrh r1, [r10, #6]
	ldr r0, [r11]
	add r7, r10, #0x6c
	cmp r8, #0
	addeq r7, r10, #0x68
	bl FUN_ov16_0210e7d0
	movs r5, r0
	beq _02110ACC
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, #0
	bl FUN_ov16_0210fe00
	ldr r0, [r11]
	mov r1, r5
	bl FUN_ov16_0210ee80
_02110ACC:
	cmp r9, #0
	movne r0, #1
	strneb r0, [r10, #0x2d]
	bne _02110AEC
	cmp r8, #0
	movne r0, #2
	strneb r0, [r10, #0x2d]
	streqb r4, [r10, #0x2d]
_02110AEC:
	ldrb r0, [r10, #0x2d]
	cmp r0, r6
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02110B00: .word unk_02099EB4
	arm_func_end FUN_ov16_02110a04

	arm_func_start FUN_ov16_02110b04
FUN_ov16_02110b04: ; 0x02110B04
	ldrb r0, [r0, #0x2d]
	bx lr
	arm_func_end FUN_ov16_02110b04

	arm_func_start FUN_ov16_02110b0c
FUN_ov16_02110b0c: ; 0x02110B0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x2e]
	mov r4, #1
	cmp r0, #2
	cmpne r0, #4
	mov r0, r5
	movne r4, #0
	bl FUN_ov16_02110b04
	cmp r0, #0
	beq _02110B4C
	cmp r0, #1
	beq _02110B54
	cmp r0, #2
	beq _02110B68
	ldmfd sp!, {r3, r4, r5, pc}
_02110B4C:
	cmp r4, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_02110B54:
	ldr r0, _02110B7C ; =0x02099EB4
	ldrh r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	ldmfd sp!, {r3, r4, r5, pc}
_02110B68:
	ldr r0, _02110B7C ; =0x02099EB4
	ldrh r1, [r5, #6]
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	ldmfd sp!, {r3, r4, r5, pc}
_02110B7C: .word unk_02099EB4
	arm_func_end FUN_ov16_02110b0c

	arm_func_start FUN_ov16_02110b80
FUN_ov16_02110b80: ; 0x02110B80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #4
	mov r2, #0xc
	bl MIi_CpuClearFast
	add r0, r5, #0x14
	str r4, [r5, #0x10]
	bl FUN_ov16_02111164
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02110b80

	arm_func_start FUN_ov16_02110bb0
FUN_ov16_02110bb0: ; 0x02110BB0
	ldr r12, _02110BB8 ; =FUN_ov16_02110db4
	bx r12
_02110BB8: .word FUN_ov16_02110db4
	arm_func_end FUN_ov16_02110bb0

	arm_func_start FUN_ov16_02110bbc
FUN_ov16_02110bbc: ; 0x02110BBC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _02110BF8 ; =0x02099EE4
	str r3, [sp]
	mov r5, r0
	ldr r0, [r12]
	mov r3, #5
	bl FUN_ov16_020fcb70
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_02110db4
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02110BF8: .word unk_02099EE4
	arm_func_end FUN_ov16_02110bbc

	arm_func_start FUN_ov16_02110bfc
FUN_ov16_02110bfc: ; 0x02110BFC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x20]
	str r3, [sp]
	str r4, [sp, #4]
	ldrb r3, [sp, #0x24]
	ldrb r4, [sp, #0x28]
	mov r5, r0
	str r3, [sp, #8]
	ldr r3, _02110C60 ; =0x02099EE4
	str r4, [sp, #0xc]
	ldr r0, [r3]
	mov r3, r2
	mov r2, #5
	bl FUN_ov16_020fcd08
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_02110db4
	str r4, [r5, #4]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02110C60: .word unk_02099EE4
	arm_func_end FUN_ov16_02110bfc

	arm_func_start FUN_ov16_02110c64
FUN_ov16_02110c64: ; 0x02110C64
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x20]
	str r3, [sp]
	str r4, [sp, #4]
	ldr r3, [sp, #0x24]
	ldrb r4, [sp, #0x28]
	str r3, [sp, #8]
	ldr r3, _02110CC4 ; =0x02099EE4
	str r4, [sp, #0xc]
	mov r5, r0
	ldr r0, [r3]
	mov r3, #5
	bl FUN_ov16_020fcef8
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_02110db4
	str r4, [r5, #4]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02110CC4: .word unk_02099EE4
	arm_func_end FUN_ov16_02110c64

	arm_func_start FUN_ov16_02110cc8
FUN_ov16_02110cc8: ; 0x02110CC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r2, [r4, #4]
	mov r5, r0
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	cmp r2, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_02110db4
	ldr r0, _02110D14 ; =0x02099EE4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02110D14: .word unk_02099EE4
	arm_func_end FUN_ov16_02110cc8

	arm_func_start FUN_ov16_02110d18
FUN_ov16_02110d18: ; 0x02110D18
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_02110f00
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	tst r0, #1
	movne r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _02110D6C ; =0x02099EE4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd4cc
	cmp r0, #0
	ldrne r1, [r4, #0xc]
	moveq r0, #0
	orrne r1, r1, #1
	movne r0, #1
	strne r1, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_02110D6C: .word unk_02099EE4
	arm_func_end FUN_ov16_02110d18

	arm_func_start FUN_ov16_02110d70
FUN_ov16_02110d70: ; 0x02110D70
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_02110eb4
	ldr r0, [r4, #0xc]
	tst r0, #1
	beq _02110DA4
	ldr r0, _02110DB0 ; =0x02099EE4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd564
	ldr r0, [r4, #0xc]
	bic r0, r0, #1
	str r0, [r4, #0xc]
_02110DA4:
	add r0, r4, #0x14
	bl FUN_ov16_02111248
	ldmfd sp!, {r4, pc}
_02110DB0: .word unk_02099EE4
	arm_func_end FUN_ov16_02110d70

	arm_func_start FUN_ov16_02110db4
FUN_ov16_02110db4: ; 0x02110DB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_02110d70
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02110DD8
	ldr r0, _02110DEC ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_02110DD8:
	add r1, r4, #4
	mov r0, #0
	mov r2, #0xc
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
_02110DEC: .word unk_02099EE4
	arm_func_end FUN_ov16_02110db4

	arm_func_start FUN_ov16_02110df0
FUN_ov16_02110df0: ; 0x02110DF0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	mov r6, #0
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, r6
	cmp r0, #0
	ldrne r8, [r0, #4]
	cmp r8, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl NNS_G3dGetTex
	movs r7, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r5, #0x14
	mov r1, #0
	bl FUN_ov16_02111334
	movs r1, r0
	beq _02110E68
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02110E68
	mov r0, r7
	bl FUN_ov16_02111398
	str r0, [r5, #0x10]
_02110E68:
	mov r0, r4
	bl FUN_ov16_020fa638
	mov r1, r7
	bl NNS_G3dBindMdlTex
	mov r0, r4
	bl FUN_ov16_020fa638
	mov r1, r7
	bl NNS_G3dBindMdlPltt
	ldr r0, [r5, #0x10]
	str r4, [r5, #8]
	cmp r0, #0
	beq _02110EAC
	mov r0, r8
	bl NNS_G3dGetTex
	ldr r1, [r5, #0x10]
	bl FUN_ov16_02111398
	str r6, [r5, #0x10]
_02110EAC:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02110df0

	arm_func_start FUN_ov16_02110eb4
FUN_ov16_02110eb4: ; 0x02110EB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02110EF4
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r1, #0
	ldrne r1, [r1, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020fa638
	bl NNS_G3dReleaseMdlTex
	ldr r0, [r4, #8]
	bl FUN_ov16_020fa638
	bl NNS_G3dReleaseMdlPltt
_02110EF4:
	mov r0, #0
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02110eb4

	arm_func_start FUN_ov16_02110f00
FUN_ov16_02110f00: ; 0x02110F00
	ldr r1, _02110F18 ; =0x02099EE4
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #4]
	ldr r12, _02110F1C ; =FUN_ov16_020fd278
	bx r12
_02110F18: .word unk_02099EE4
_02110F1C: .word FUN_ov16_020fd278
	arm_func_end FUN_ov16_02110f00

	arm_func_start FUN_ov16_02110f20
FUN_ov16_02110f20: ; 0x02110F20
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	mov r1, #0
	cmp r0, #0
	ldrne r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #4]
	bl NNS_G3dGetTex
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02110f20

	arm_func_start FUN_ov16_02110f54
FUN_ov16_02110f54: ; 0x02110F54
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #0xc]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_02110f54

	arm_func_start FUN_ov16_02110f78
FUN_ov16_02110f78: ; 0x02110F78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_02110f00
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	tst r0, #1
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02110FF8 ; =0x02099EE4
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd4cc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	add r0, r5, #0x14
	bl FUN_ov16_0211117c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_02111098
	ldr r1, [r5, #0xc]
	mov r0, r4
	orr r1, r1, #1
	str r1, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02110FF8: .word unk_02099EE4
	arm_func_end FUN_ov16_02110f78

	arm_func_start FUN_ov16_02110ffc
FUN_ov16_02110ffc: ; 0x02110FFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r2, [r4, #4]
	ldrh r1, [r2, #0x10]
	tst r1, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, [r2, #4]
	bl FUN_ov16_02110f20
	cmp r9, #0
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r8, [r0, #0x14]
	sub r7, r0, r9
	ldr r6, _02111080 ; =0x0209A250
	add r1, r8, r7
	mov r0, r6
	bl FUN_0202de44
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r5
	add r2, r8, r7
	bl MI_CpuCopy8
	ldr r2, [r4, #4]
	mov r0, r6
	mov r1, r9
	str r5, [r2, #4]
	bl FUN_0202e1c0
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x10]
	orr r0, r0, #2
	strh r0, [r1, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02111080: .word unk_0209A250
	arm_func_end FUN_ov16_02110ffc

	arm_func_start FUN_ov16_02111084
FUN_ov16_02111084: ; 0x02111084
	ldr r12, _02111094 ; =FUN_ov16_02111320
	add r0, r0, #0x14
	mov r1, #0
	bx r12
_02111094: .word FUN_ov16_02111320
	arm_func_end FUN_ov16_02111084

	arm_func_start FUN_ov16_02111098
FUN_ov16_02111098: ; 0x02111098
	ldr r12, _021110A8 ; =FUN_ov16_0211128c
	add r0, r0, #0x14
	and r1, r1, #0xff
	bx r12
_021110A8: .word FUN_ov16_0211128c
	arm_func_end FUN_ov16_02111098

	arm_func_start FUN_ov16_021110ac
FUN_ov16_021110ac: ; 0x021110AC
	stmfd sp!, {r4, lr}
	ldr r1, _021110D0 ; =0x02099EE4
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_ov16_020fd878
	add r0, r4, #0x14
	bl FUN_ov16_02111348
	ldmfd sp!, {r4, pc}
_021110D0: .word unk_02099EE4
	arm_func_end FUN_ov16_021110ac

	arm_func_start FUN_ov16_021110d4
FUN_ov16_021110d4: ; 0x021110D4
	stmfd sp!, {r4, lr}
	ldr r1, _021110F8 ; =0x02099EE4
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_ov16_020fd8ec
	add r0, r4, #0x14
	bl FUN_ov16_0211136c
	ldmfd sp!, {r4, pc}
_021110F8: .word unk_02099EE4
	arm_func_end FUN_ov16_021110d4

	arm_func_start FUN_ov16_021110fc
FUN_ov16_021110fc: ; 0x021110FC
	stmfd sp!, {r4, lr}
	ldr r1, _02111118 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111164
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111118: .word ov16_02119E5C
	arm_func_end FUN_ov16_021110fc

	arm_func_start FUN_ov16_0211111c
FUN_ov16_0211111c: ; 0x0211111C
	stmfd sp!, {r4, lr}
	ldr r1, _02111138 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111248
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111138: .word ov16_02119E5C
	arm_func_end FUN_ov16_0211111c

	arm_func_start FUN_ov16_0211113c
FUN_ov16_0211113c: ; 0x0211113C
	stmfd sp!, {r4, lr}
	ldr r1, _02111160 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111248
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111160: .word ov16_02119E5C
	arm_func_end FUN_ov16_0211113c

	arm_func_start FUN_ov16_02111164
FUN_ov16_02111164: ; 0x02111164
	ldr r12, _02111178 ; =MIi_CpuClearFast
	add r1, r0, #4
	mov r0, #0
	mov r2, #0x18
	bx r12
_02111178: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_02111164

	arm_func_start FUN_ov16_0211117c
FUN_ov16_0211117c: ; 0x0211117C
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r6, r0
	beq _021111A0
	ldr r0, _0211123C ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	beq _021111A8
_021111A0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021111A8:
	ldr r0, [r4, #4]
	bl FUN_02053ccc
	mov r5, r0
	ldr r0, [r4, #4]
	bl FUN_02053cb0
	mov r4, r0
	cmp r5, #0
	blt _021111D0
	cmp r4, #0
	bne _021111D8
_021111D0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021111D8:
	mov r0, r6
	bl FUN_ov16_02111248
	ldr r0, _02111240 ; =0x02099F30
	mov r2, r5
	ldr r0, [r0]
	add r1, r6, #8
	bl FUN_02051800
	cmp r0, #0
	beq _02111214
	ldr r0, _02111244 ; =0x0209A250
	mov r1, r5
	bl FUN_0202de44
	movs r1, r0
	str r1, [r6, #0x14]
	bne _02111224
_02111214:
	mov r0, r6
	bl FUN_ov16_02111248
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02111224:
	mov r0, r4
	mov r2, r5
	str r5, [r6, #0x18]
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211123C: .word unk_02099EE4
_02111240: .word unk_02099F30
_02111244: .word unk_0209A250
	arm_func_end FUN_ov16_0211117c

	arm_func_start FUN_ov16_02111248
FUN_ov16_02111248: ; 0x02111248
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _02111264
	ldr r0, _02111284 ; =0x0209A250
	bl FUN_0202e1c0
_02111264:
	ldr r0, _02111288 ; =0x02099F30
	add r1, r4, #8
	ldr r0, [r0]
	bl FUN_02051858
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
_02111284: .word unk_0209A250
_02111288: .word unk_02099F30
	arm_func_end FUN_ov16_02111248

	arm_func_start FUN_ov16_0211128c
FUN_ov16_0211128c: ; 0x0211128C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r12, r0
	ldr r2, [r12, #0x18]
	cmp r2, #0
	ble _021112B0
	ldr r0, [r12, #0x14]
	cmp r0, #0
	bne _021112BC
_021112B0:
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {pc}
_021112BC:
	cmp r1, #0
	beq _021112F4
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, _0211131C ; =0x02099F30
	ldr r3, [r12, #0x14]
	ldr r0, [r0]
	add r1, r12, #8
	bl FUN_020519e4
	add sp, sp, #0xc
	and r0, r0, #0xff
	ldmia sp!, {pc}
_021112F4:
	ldr r0, _0211131C ; =0x02099F30
	str r2, [sp]
	ldr r0, [r0]
	ldr r3, [r12, #0x14]
	add r1, r12, #8
	mov r2, #0
	bl FUN_02051a7c
	and r0, r0, #0xff
	add sp, sp, #0xc
	ldmia sp!, {pc}
_0211131C: .word unk_02099F30
	arm_func_end FUN_ov16_0211128c

	arm_func_start FUN_ov16_02111320
FUN_ov16_02111320: ; 0x02111320
	cmp r1, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov16_02111320

	arm_func_start FUN_ov16_02111334
FUN_ov16_02111334: ; 0x02111334
	cmp r1, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov16_02111334

	arm_func_start FUN_ov16_02111348
FUN_ov16_02111348: ; 0x02111348
	stmfd sp!, {r3, lr}
	ldr r1, _02111368 ; =0x02099F30
	mov r2, r0
	ldr r0, [r1]
	add r1, r2, #8
	bl FUN_02051d3c
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_02111368: .word unk_02099F30
	arm_func_end FUN_ov16_02111348

	arm_func_start FUN_ov16_0211136c
FUN_ov16_0211136c: ; 0x0211136C
	stmfd sp!, {r4, lr}
	ldr r1, _02111394 ; =0x02099F30
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #8
	bl FUN_02051dc4
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_0211128c
	ldmfd sp!, {r4, pc}
_02111394: .word unk_02099F30
	arm_func_end FUN_ov16_0211136c

	arm_func_start FUN_ov16_02111398
FUN_ov16_02111398: ; 0x02111398
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	cmpne r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl NNS_G3dPlttReleasePlttKey
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl NNS_G3dPlttSetPlttKey
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02111398

	arm_func_start FUN_ov16_021113cc
FUN_ov16_021113cc: ; 0x021113CC
	stmfd sp!, {r3, lr}
	bl FUN_0205998c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #4]
	mov r1, #0
	bl FUN_020539c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_021113cc

	arm_func_start FUN_ov16_021113f0
FUN_ov16_021113f0: ; 0x021113F0
	stmfd sp!, {r3, lr}
	bl FUN_0205998c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #4]
	mov r1, #1
	bl FUN_020539c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_021113f0

	arm_func_start FUN_ov16_02111414
FUN_ov16_02111414: ; 0x02111414
	stmfd sp!, {r3, lr}
	bl FUN_0205998c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #4]
	mov r1, #2
	bl FUN_020539c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02111414

	arm_func_start FUN_ov16_02111438
FUN_ov16_02111438: ; 0x02111438
	stmfd sp!, {r3, lr}
	bl FUN_0205998c
	cmp r0, #0
	ldrneb r0, [r0, #0x12]
	movne r1, #8
	movne r0, r1, lsl r0
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02111438

	arm_func_start FUN_ov16_02111458
FUN_ov16_02111458: ; 0x02111458
	stmfd sp!, {r3, lr}
	bl FUN_0205998c
	cmp r0, #0
	ldrneb r0, [r0, #0x13]
	movne r1, #8
	movne r0, r1, lsl r0
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02111458

	arm_func_start FUN_ov16_02111478
FUN_ov16_02111478: ; 0x02111478
	ldr r12, _02111480 ; =FUN_02059cc0
	bx r12
_02111480: .word FUN_02059cc0
	arm_func_end FUN_ov16_02111478

	arm_func_start FUN_ov16_02111484
FUN_ov16_02111484: ; 0x02111484
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrh r0, [r1, #4]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_02111484

	arm_func_start FUN_ov16_021114a4
FUN_ov16_021114a4: ; 0x021114A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	mov r5, #0
	cmp r1, #0
	ldrne r0, [r4, #0x20]
	cmpne r0, #0
	movle r1, #0
	ble _021114D0
	cmp r0, #1
	movlt r1, r5
_021114D0:
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x20]
	mov r6, #1
	cmp r0, #1
	ble _02111544
_021114EC:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	cmpne r0, #0
	movle r1, r5
	ble _02111520
	cmp r6, #0
	ble _02111510
	cmp r6, r0
	ble _02111518
_02111510:
	mov r1, r5
	b _02111520
_02111518:
	sub r0, r6, #1
	add r1, r1, r0, lsl #5
_02111520:
	mov r0, r4
	bl FUN_ov16_02111484
	cmp r0, #0
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x20]
	add r6, r6, #1
	cmp r6, r0
	blt _021114EC
_02111544:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_021114a4

	arm_func_start FUN_ov16_0211154c
FUN_ov16_0211154c: ; 0x0211154C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r1]
	cmp r4, #0
	ldrne r5, [r2]
	cmpne r5, #0
	streq r3, [r1]
	streq r3, [r2]
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r12, r4
	cmp r4, #0
	beq _02111594
	ldrb lr, [r3, #0x16]
_0211157C:
	ldrb r0, [r12, #0x16]
	cmp lr, r0
	bhi _02111594
	ldr r12, [r12, #0x1c]
	cmp r12, #0
	bne _0211157C
_02111594:
	cmp r12, #0
	bne _021115B8
	str r3, [r5, #0x1c]
	mov r0, #0
	str r0, [r3, #0x1c]
	ldr r0, [r2]
	str r0, [r3, #0x18]
	str r3, [r2]
	ldmfd sp!, {r3, r4, r5, pc}
_021115B8:
	cmp r12, r4
	streq r3, [r1]
	str r12, [r3, #0x1c]
	ldr r0, [r12, #0x18]
	str r0, [r3, #0x18]
	str r3, [r12, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0211154c

	arm_func_start FUN_ov16_021115d4
FUN_ov16_021115d4: ; 0x021115D4
	ldr r0, [r1]
	cmp r3, r0
	ldreq r0, [r3, #0x1c]
	streq r0, [r1]
	ldr r0, [r2]
	cmp r3, r0
	ldreq r0, [r3, #0x18]
	streq r0, [r2]
	ldr r1, [r3, #0x18]
	cmp r1, #0
	ldrne r0, [r3, #0x1c]
	strne r0, [r1, #0x1c]
	ldr r1, [r3, #0x1c]
	cmp r1, #0
	ldrne r0, [r3, #0x18]
	strne r0, [r1, #0x18]
	mov r0, #0
	str r0, [r3, #0x18]
	str r0, [r3, #0x1c]
	bx lr
	arm_func_end FUN_ov16_021115d4

	arm_func_start FUN_ov16_02111624
FUN_ov16_02111624: ; 0x02111624
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _02111668 ; =0x2108DAD6
	mov r4, #1
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x30
	str r3, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	ldr r3, _0211166C ; =0x2108FFFF
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x31
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02111668: .word 0x2108DAD6
_0211166C: .word 0x2108FFFF
	arm_func_end FUN_ov16_02111624

	arm_func_start FUN_ov16_02111670
FUN_ov16_02111670: ; 0x02111670
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r2
	ldrh r0, [r4, #2]
	mov r5, r1
	tst r0, #0x4000
	bne _02111698
	ldrh r0, [r5, #4]
	tst r0, #0x4000
	beq _021116B4
_02111698:
	mov r3, #0x10
	add r1, sp, #8
	mov r0, #0x20
	mov r2, #1
	str r3, [sp, #8]
	mov r6, #2
	b _021116D4
_021116B4:
	ldrh r3, [r5, #0x14]
	ldrh r2, [r4, #6]
	add r1, sp, #4
	mov r0, #0x20
	and r3, r3, r2
	mov r2, #1
	str r3, [sp, #4]
	mov r6, #0
_021116D4:
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r4, #4]
	ldrb r2, [r5, #7]
	ldrb r1, [r4, #5]
	cmp r2, r0
	movhs r2, r0
	mov r0, r6, lsl #4
	orr r0, r0, #0x80
	orr r0, r0, r1, lsl #24
	orr r3, r0, r2, lsl #16
	add r1, sp, #0
	mov r0, #0x29
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov16_02111670

	arm_func_start FUN_ov16_02111718
FUN_ov16_02111718: ; 0x02111718
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r8, r2
	mov r9, r1
	ldrb r1, [r8]
	mov r10, r0
	mov r11, #0
	bl FUN_0205998c
	mov r6, r0
	ldrb r1, [r8, #1]
	mov r0, r10
	bl FUN_0205998c
	ldrh r1, [r8, #2]
	mov r5, #0
	mov r7, r0
	tst r1, #0x40
	movne r4, r11
	moveq r4, #1
	tst r1, #4
	andne r0, r5, #0xff
	orrne r5, r0, #1
	tst r1, #8
	andne r0, r5, #0xff
	orrne r5, r0, #2
	ldrh r0, [r9, #4]
	mov r9, #1
	tst r0, #0x8000
	bne _02111790
	tst r1, #0x8000
	beq _021117B8
_02111790:
	add r1, sp, #0xc
	mov r2, r9
	mov r0, #0x2b
	str r11, [sp, #0xc]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x10
	mov r2, r9
	mov r0, #0x2a
	str r11, [sp, #0x10]
	b _02111908
_021117B8:
	mov r9, #0
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r6
	mov r3, r9
	bl FUN_ov16_02111478
	cmp r0, #0
	beq _021117F4
	add r3, sp, #0x14
	mov r0, r10
	mov r1, r7
	mov r2, r9
	bl FUN_ov16_02111478
	cmp r0, #0
	bne _02111800
_021117F4:
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02111800:
	cmp r7, #0
	mov r11, #1
	beq _02111854
	add r2, sp, #8
	mov r0, r10
	mov r1, r7
	bl FUN_02059aa0
	cmp r0, #0
	beq _02111854
	cmp r7, #0
	beq _02111844
	ldrb r0, [r7, #0x14]
	cmp r0, #3
	moveq r9, #0x20
	beq _02111844
	cmp r0, #4
	moveq r9, #0x200
_02111844:
	ldr r0, [sp, #8]
	mov r1, r9
	bl _u32_div_f
	mov r9, r0
_02111854:
	ldrb r1, [r8, #0x34]
	and r0, r9, #0xff
	cmp r1, r0
	movhi r1, #0
	cmp r7, #0
	and r1, r1, #0xff
	moveq r2, #0
	beq _02111890
	ldrb r0, [r7, #0x14]
	cmp r0, #3
	moveq r2, #0x20
	beq _02111890
	mov r2, #0x200
	cmp r0, #4
	movne r2, #0
_02111890:
	ldr r0, [sp, #0x14]
	mla r1, r2, r1, r0
	str r1, [sp, #0x14]
	ldrb r0, [r6, #0x14]
	mov r2, r11
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #4
	mov r0, r1, lsr r0
	str r0, [sp, #4]
	add r1, sp, #4
	mov r0, #0x2b
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r6, #0x14]
	ldr r1, [sp, #0x18]
	ldrb r2, [r6, #0x12]
	mov r0, r0, lsl #0x1a
	orr r0, r0, r1, lsr #3
	orr r0, r0, #0x40000000
	orr r0, r0, r2, lsl #20
	ldrb r3, [r6, #0x13]
	add r1, sp, #0
	mov r2, r11
	orr r0, r0, r3, lsl #23
	orr r0, r0, #0x30000
	orr r0, r0, r5, lsl #18
	orr r3, r0, r4, lsl #29
	mov r0, #0x2a
	str r3, [sp]
_02111908:
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02111718

	arm_func_start FUN_ov16_02111918
FUN_ov16_02111918: ; 0x02111918
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x74
	mov r6, r2
	mov r7, r1
	mov r1, r6
	mov r5, r3
	bl FUN_ov16_02111e3c
	ldr r8, [r7, #0xc]
	ldr r0, [r6, #0x20]
	ldr r2, [r7, #8]
	ldr r1, [r6, #0x1c]
	ldrh r4, [r6, #0x14]
	ldr lr, [r7, #0x10]
	ldr r12, [r6, #0x24]
	ldr r3, [r6, #0x54]
	add r7, r8, r0
	ldr r0, [r6, #0x50]
	add r1, r2, r1
	add r8, lr, r12
	sub r2, r7, r3
	sub r0, r1, r0
	str r0, [sp, #0x68]
	str r2, [sp, #0x6c]
	str r8, [sp, #0x70]
	cmp r5, #0
	beq _02111B08
	ldrh r0, [r6, #2]
	tst r0, #0x1000
	beq _02111AB4
	tst r0, #0x2000
	beq _02111A18
	ldrsh r1, [r6, #0xa]
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	add r0, r1, r0, asr #12
	bl FUN_02053a5c
	cmp r0, #0
	ble _021119E0
	ldr r2, [sp, #0x6c]
	ldrsh r1, [r6, #0xa]
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	add r0, r1, r0, asr #12
	bl FUN_02053a5c
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111A08
_021119E0:
	ldr r2, [sp, #0x6c]
	ldrsh r1, [r6, #0xa]
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	add r0, r1, r0, asr #12
	bl FUN_02053a5c
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111A08:
	bl _ffix
	ldr r1, [sp, #0x70]
	sub r0, r1, r0
	str r0, [sp, #0x70]
_02111A18:
	ldr r3, [sp, #0x68]
	ldr r2, [sp, #0x6c]
	mov r0, r3, asr #0xb
	add r0, r3, r0, lsr #20
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	add r2, sp, #4
	add r3, sp, #0
	mov r0, r0, asr #0xc
	mov r1, r1, asr #0xc
	bl FUN_ov16_020efee8
	ldr r0, [sp, #4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02111A68
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111A74
_02111A68:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111A74:
	bl _ffix
	ldr r1, [sp]
	str r0, [sp, #0x68]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _02111AA0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111AAC
_02111AA0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111AAC:
	bl _ffix
	str r0, [sp, #0x6c]
_02111AB4:
	mov r1, r4, lsr #0x1f
	rsb r0, r1, r4, lsl #18
	adds r0, r1, r0, ror #18
	bne _02111AFC
	ldr r2, [sp, #0x68]
	cmp r2, #0xff000
	ldrlt r1, [sp, #0x6c]
	cmplt r1, #0xbf000
	bge _02111AF0
	ldr r0, [r6, #0x38]
	adds r0, r2, r0
	bmi _02111AF0
	ldr r0, [r6, #0x3c]
	adds r0, r1, r0
	bpl _02111AFC
_02111AF0:
	add sp, sp, #0x74
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02111AFC:
	ldr r0, [sp, #0x6c]
	rsb r0, r0, #0
	str r0, [sp, #0x6c]
_02111B08:
	add r1, sp, #0x68
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	cmp r4, #0
	bne _02111B28
	cmp r5, #0
	bne _02111C18
_02111B28:
	ldr r0, [r6, #0x5c]
	ldr r3, [r6, #0x58]
	rsb r7, r0, #0
	mov r8, #0
	add r1, sp, #0x2c
	mov r0, #0x1c
	mov r2, #3
	str r3, [sp, #0x2c]
	str r7, [sp, #0x30]
	str r8, [sp, #0x34]
	bl NNS_G3dGeBufferOP_N
	cmp r5, #0
	bne _02111BA8
	ldr lr, _02111C98 ; =NNS_G3dGlb_cameraMtx
	add r12, sp, #0x38
	ldmia lr!, {r0, r1, r2, r3}
	mov r7, r12
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	mov r0, r7
	mov r1, r7
	str r8, [sp, #0x64]
	str r8, [sp, #0x60]
	str r8, [sp, #0x5c]
	bl MTX_Inverse43
	mov r1, r7
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_02111BA8:
	cmp r4, #0
	beq _02111BEC
	mov r0, r4, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r2, _02111C9C ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	add r4, sp, #0x38
	mov r0, r4
	blx MTX_RotZ43_
	mov r1, r4
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_02111BEC:
	ldr r0, [r6, #0x58]
	ldr r7, [r6, #0x5c]
	rsb r4, r0, #0
	mov r3, #0
	add r1, sp, #0x20
	mov r0, #0x1c
	mov r2, #3
	str r4, [sp, #0x20]
	str r7, [sp, #0x24]
	str r3, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
_02111C18:
	ldr r0, [r6, #0x28]
	mov r7, #3
	str r0, [sp, #0x68]
	ldr r0, [r6, #0x2c]
	ldr r4, [sp, #0x68]
	rsb r0, r0, #0
	cmp r5, #0
	str r0, [sp, #0x6c]
	rsbne r0, r0, #0
	strne r0, [sp, #0x6c]
	ldr r3, [sp, #0x6c]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r1, sp, #0x14
	mov r2, r7
	str r4, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r0, #0x1c
	bl NNS_G3dGeBufferOP_N
	ldr r5, [r6, #0x3c]
	ldr r4, [r6, #0x38]
	mov r3, #0x1000
	add r1, sp, #8
	mov r2, r7
	mov r0, #0x1b
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r3, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add sp, sp, #0x74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02111C98: .word NNS_G3dGlb_cameraMtx
_02111C9C: .word FX_SinCosTable_
	arm_func_end FUN_ov16_02111918

	arm_func_start FUN_ov16_02111ca0
FUN_ov16_02111ca0: ; 0x02111CA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r8, r2
	mov r1, r8
	bl FUN_ov16_02111f9c
	ldr r0, [r8, #0x48]
	ldr r2, [r8, #0x40]
	mov r0, r0, lsl #8
	mov r1, r0, asr #0x10
	mov r0, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r6, #1
	mov r7, #0x22
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r3, r1, r0, lsr #16
	add r1, sp, #0x20
	mov r0, r7
	mov r2, r6
	str r3, [sp, #0x20]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #0x23
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r8, #0x4c]
	ldr r2, [r8, #0x40]
	mov r1, r0, lsl #8
	mov r0, r2, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x14]
	add r1, sp, #0x14
	mov r0, r7
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	mov r5, #0xf0000000
	mov r4, #0x25
	str r5, [sp, #0x10]
	mov r0, r4
	add r1, sp, #0x10
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r8, #0x4c]
	ldr r0, [r8, #0x44]
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #8
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0xc]
	mov r0, r7
	add r1, sp, #0xc
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	add r0, r5, #0x1000
	str r0, [sp, #8]
	mov r0, r4
	add r1, sp, #8
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	ldr r2, [r8, #0x48]
	ldr r1, [r8, #0x44]
	mov r2, r2, lsl #8
	mov r2, r2, asr #0x10
	mov r1, r1, lsl #8
	mov r2, r2, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r1, r2, r1, lsr #16
	str r1, [sp, #4]
	mov r0, r7
	add r1, sp, #4
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	mov r3, #0x1000
	add r1, sp, #0
	mov r0, r4
	mov r2, r6
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02111ca0

	arm_func_start FUN_ov16_02111e2c
FUN_ov16_02111e2c: ; 0x02111E2C
	ldrb r0, [r1, #0x35]
	orr r0, r0, r2
	strb r0, [r1, #0x35]
	bx lr
	arm_func_end FUN_ov16_02111e2c

	arm_func_start FUN_ov16_02111e3c
FUN_ov16_02111e3c: ; 0x02111E3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r0, [r4, #0x35]
	tst r0, #0xd
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r3, [r4, #0x10]
	ldrsh r2, [r4, #8]
	ldrsh r5, [r4, #0x12]
	cmp r3, #0
	moveq r3, #0x64
	mul r3, r2, r3
	cmp r5, #0
	ldrsh r0, [r4, #0xa]
	moveq r5, #0x64
	ldr r1, _02111F98 ; =0x51EB851F
	mul r2, r0, r5
	smull r0, r12, r1, r3
	mov r0, r3, lsr #0x1f
	add r12, r0, r12, asr #5
	smull r0, r5, r1, r2
	mov r0, r2, lsr #0x1f
	add r5, r0, r5, asr #5
	cmp r12, #0
	mov r0, r12, lsl #0xc
	ble _02111EB4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111EC0
_02111EB4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111EC0:
	bl _ffix
	str r0, [r4, #0x38]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _02111EE8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111EF4
_02111EE8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111EF4:
	bl _ffix
	ldrb r1, [r4, #0x35]
	str r0, [r4, #0x3c]
	tst r1, #4
	beq _02111F40
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1a]
	ldr r12, [r4, #0x38]
	mul r3, r0, r1
	mul r1, r12, r2
	ldr r2, _02111F98 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r12, r2, r1
	add r12, r0, r12, asr #5
	smull r0, r1, r2, r3
	mov r0, r3, lsr #0x1f
	add r1, r0, r1, asr #5
	str r12, [r4, #0x50]
	str r1, [r4, #0x54]
_02111F40:
	ldrb r0, [r4, #0x35]
	tst r0, #8
	beq _02111F88
	ldrb r2, [r4, #0x18]
	ldr r3, [r4, #0x38]
	ldrb r0, [r4, #0x19]
	ldr r1, [r4, #0x3c]
	mul r12, r3, r2
	mul r3, r1, r0
	ldr r2, _02111F98 ; =0x51EB851F
	mov r0, r12, lsr #0x1f
	smull r1, r12, r2, r12
	add r12, r0, r12, asr #5
	smull r0, r1, r2, r3
	mov r0, r3, lsr #0x1f
	add r1, r0, r1, asr #5
	str r12, [r4, #0x58]
	str r1, [r4, #0x5c]
_02111F88:
	ldrb r0, [r4, #0x35]
	and r0, r0, #0xf2
	strb r0, [r4, #0x35]
	ldmfd sp!, {r3, r4, r5, pc}
_02111F98: .word 0x51EB851F
	arm_func_end FUN_ov16_02111e3c

	arm_func_start FUN_ov16_02111f9c
FUN_ov16_02111f9c: ; 0x02111F9C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r1
	ldrb r0, [r4, #0x35]
	tst r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsh r7, [r4, #0xc]
	and r0, r0, #0xfd
	strb r0, [r4, #0x35]
	cmp r7, #0
	mov r0, r7, lsl #0xc
	ble _02111FDC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111FE8
_02111FDC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111FE8:
	bl _ffix
	ldrsh r9, [r4, #0xe]
	mov r5, r0
	cmp r9, #0
	mov r0, r9, lsl #0xc
	ble _02112014
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112020
_02112014:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112020:
	bl _ffix
	ldrh r8, [r4, #2]
	mov r6, r0
	tst r8, #4
	ldrne r0, [r4, #0x38]
	addne r7, r5, r0
	bne _02112078
	ldrsh r0, [r4, #8]
	add r0, r7, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02112064
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112070
_02112064:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112070:
	bl _ffix
	mov r7, r0
_02112078:
	tst r8, #8
	ldrne r0, [r4, #0x3c]
	addne r8, r6, r0
	bne _021120C4
	ldrsh r0, [r4, #0xa]
	add r0, r9, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021120B0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021120BC
_021120B0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021120BC:
	bl _ffix
	mov r8, r0
_021120C4:
	ldrsh r0, [r4, #0x10]
	ldrsh r10, [r4, #0x12]
	cmp r0, #0
	moveq r0, #0x64
	cmp r10, #0
	moveq r10, #0x64
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021120FC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112108
_021120FC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112108:
	bl _ffix
	mov r1, r0
	mov r0, #0x32000
	bl FX_Div
	mov r9, r0
	cmp r10, #0
	mov r0, r10, lsl #0xc
	ble _0211213C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112148
_0211213C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112148:
	bl _ffix
	mov r1, r0
	mov r0, #0x32000
	bl FX_Div
	ldrh r3, [r4, #2]
	ands r2, r3, #0x10
	movne r1, r5
	subne r5, r7, r9
	subne r7, r1, r9
	ands r3, r3, #0x20
	movne r1, r6
	subne r6, r8, r0
	subne r8, r1, r0
	ldrh r1, [r4, #0x14]
	cmp r1, #0
	beq _021122B8
	cmp r1, #0xe000
	movhs r10, #0
	movhs r1, r10
	bhs _0211226C
	cmp r1, #0xc000
	blo _021121C8
	sub r1, r1, #0xc000
	mov r1, r1, lsl #1
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r10, r1, #1
	ldr r1, _021122CC ; =FX_SinCosTable_
	mov r10, r10, lsl #1
	ldrsh r1, [r1, r10]
	mov r10, #0
	b _0211226C
_021121C8:
	cmp r1, #0xa000
	movhs r10, #0
	movhs r1, #0x1000
	bhs _0211226C
	cmp r1, #0x8000
	blo _02112208
	sub r1, r1, #0x8000
	mov r1, r1, lsl #1
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r10, r1, #1
	ldr r1, _021122CC ; =FX_SinCosTable_
	mov r10, r10, lsl #1
	ldrsh r10, [r1, r10]
	mov r1, #0x1000
	b _0211226C
_02112208:
	cmp r1, #0x6000
	blo _02112230
	sub r1, r1, #0x6000
	mov r1, r1, lsl #1
	mov r10, r1, asr #4
	ldr r1, _021122CC ; =FX_SinCosTable_
	mov r10, r10, lsl #2
	ldrsh r1, [r1, r10]
	mov r10, #0x1000
	b _0211226C
_02112230:
	cmp r1, #0x4000
	movhs r10, #0x1000
	movhs r1, #0
	bhs _0211226C
	cmp r1, #0x2000
	movlo r10, #0
	movlo r1, r10
	blo _0211226C
	sub r1, r1, #0x2000
	mov r1, r1, lsl #1
	mov r10, r1, asr #4
	ldr r1, _021122CC ; =FX_SinCosTable_
	mov r10, r10, lsl #2
	ldrsh r10, [r1, r10]
	mov r1, #0
_0211226C:
	cmp r2, #0
	rsbne r10, r10, #0
	cmp r3, #0
	smull r3, r9, r10, r9
	rsbne r1, r1, #0
	adds r10, r3, #0x800
	smull r3, r0, r1, r0
	mov r2, #0
	adc r9, r9, r2
	adds r1, r3, #0x800
	mov r3, r10, lsr #0xc
	orr r3, r3, r9, lsl #20
	adc r0, r0, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r5, r5, r3
	sub r7, r7, r3
	sub r6, r6, r1
	sub r8, r8, r1
_021122B8:
	str r5, [r4, #0x40]
	str r7, [r4, #0x44]
	str r6, [r4, #0x48]
	str r8, [r4, #0x4c]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021122CC: .word FX_SinCosTable_
	arm_func_end FUN_ov16_02111f9c

	arm_func_start FUN_ov16_021122d0
FUN_ov16_021122d0: ; 0x021122D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, #0
	mov r6, r2
	cmp r1, #0
	cmpgt r6, #0
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02058644
	mov r5, r6, lsl #5
	ldr r0, _02112348 ; =0x0209A250
	mov r1, r5
	bl FUN_0202de44
	movs r1, r0
	str r1, [r7, #0x1c]
	bne _02112330
	mov r0, r7
	bl FUN_ov16_021123c4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02112330:
	mov r0, r4
	mov r2, r5
	bl MIi_CpuClearFast
	str r6, [r7, #0x20]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02112348: .word unk_0209A250
	arm_func_end FUN_ov16_021122d0

	arm_func_start FUN_ov16_0211234c
FUN_ov16_0211234c: ; 0x0211234C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02112390
	ldr r4, [r5, #0x20]
	cmp r4, #1
	blt _02112384
_0211236C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_021128c4
	sub r4, r4, #1
	cmp r4, #1
	bge _0211236C
_02112384:
	ldr r1, [r5, #0x1c]
	ldr r0, _021123B0 ; =0x0209A250
	bl FUN_0202e1c0
_02112390:
	mov r0, r5
	bl FUN_0205866c
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
_021123B0: .word unk_0209A250
	arm_func_end FUN_ov16_0211234c

	arm_func_start FUN_ov16_021123b4
FUN_ov16_021123b4: ; 0x021123B4
	stmfd sp!, {r3, lr}
	bl FUN_020597a0
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_021123b4

	arm_func_start FUN_ov16_021123c4
FUN_ov16_021123c4: ; 0x021123C4
	ldr r12, _021123D0 ; =FUN_02059838
	mov r1, #0
	bx r12
_021123D0: .word FUN_02059838
	arm_func_end FUN_ov16_021123c4

	arm_func_start FUN_ov16_021123d4
FUN_ov16_021123d4: ; 0x021123D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldr r0, [r10, #0x24]
	mov r9, r1
	cmp r0, #0
	mov r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r5
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldr r7, [r10, #0x24]
_02112410:
	ldr r0, [r7]
	cmp r0, #0
	beq _021125B4
	ldrh r0, [r7, #4]
	tst r0, #2
	ldrneb r0, [r7, #7]
	cmpne r0, #0
	beq _021125B4
	ldrb r0, [r7, #6]
	mov r6, #1
	cmp r0, #1
	blt _021125B4
	mov r11, #0x11
	mov r4, #0x60
_02112448:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _02112464
	cmp r6, r0
	ble _0211246C
_02112464:
	mov r8, r5
	b _02112474
_0211246C:
	sub r0, r6, #1
	mla r8, r0, r4, r1
_02112474:
	cmp r8, #0
	beq _021125A4
	ldrb r0, [r8, #0x36]
	cmp r0, #0
	beq _021124B0
	mov r0, r10
	ldrb r1, [r8]
	bl FUN_02059004
	cmp r0, #0
	beq _021125A4
	mov r0, r10
	mov r1, r8
	ldrb r2, [r8, #0x37]
	mov r3, r5
	bl FUN_ov16_02112620
_021124B0:
	ldrh r1, [r8, #2]
	tst r1, #2
	ldrnesh r0, [r8, #8]
	cmpne r0, #0
	ldrgtsh r0, [r8, #0xa]
	cmpgt r0, #0
	ble _021125A4
	ldrb r0, [r8, #4]
	cmp r0, #0
	beq _021125A4
	cmp r9, #0
	beq _021124E8
	tst r1, #0x80
	beq _021124F8
_021124E8:
	cmp r9, #0
	bne _021125A4
	tst r1, #0x80
	beq _021125A4
_021124F8:
	mov r0, r10
	bl FUN_ov16_02111624
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_02111670
	mov r0, r11
	mov r1, r5
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x40
	add r1, sp, #4
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_02111918
	cmp r0, #0
	beq _0211257C
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_02111718
	cmp r0, #0
	beq _0211257C
	mov r2, r8
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_02111ca0
_0211257C:
	mov r0, #0x41
	mov r1, r5
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	str r0, [sp]
	mov r0, #0x12
	add r1, sp, #0
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_021125A4:
	add r6, r6, #1
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _02112448
_021125B4:
	ldr r7, [r7, #0x1c]
	cmp r7, #0
	bne _02112410
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_021123d4

	arm_func_start FUN_ov16_021125c8
FUN_ov16_021125c8: ; 0x021125C8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	strb r2, [r1]
	bl FUN_ov16_021125e0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_021125c8

	arm_func_start FUN_ov16_021125e0
FUN_ov16_021125e0: ; 0x021125E0
	cmp r1, #0
	strneb r2, [r1, #1]
	bx lr
	arm_func_end FUN_ov16_021125e0

	arm_func_start FUN_ov16_021125ec
FUN_ov16_021125ec: ; 0x021125EC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r12, [r1, #8]
	cmp r12, r2
	ldreqsh r12, [r1, #0xa]
	cmpeq r12, r3
	ldmeqfd sp!, {r3, pc}
	strh r2, [r1, #8]
	mov r2, #0xff
	strh r3, [r1, #0xa]
	bl FUN_ov16_02111e2c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_021125ec

	arm_func_start FUN_ov16_02112620
FUN_ov16_02112620: ; 0x02112620
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	mov r8, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r5]
	mov r7, #0
	strb r7, [r5, #0x36]
	bl FUN_0205998c
	movs r1, r0
	ldrne r0, [r1, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r2, r7
	bl FUN_02059bb4
	cmp r8, #0
	movne r0, #1
	strneb r0, [r5, #0x36]
	strneb r4, [r5, #0x37]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #0
	ldrnesh r1, [r0]
	cmpne r4, r1
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r0, #8
	strb r7, [r5, #0x36]
	mov r0, r4, lsl #3
	ldrsh r2, [r1, r0]
	ldrsh r0, [r5, #0xc]
	add r3, r1, r4, lsl #3
	cmp r0, r2
	ldreqsh r1, [r5, #0xe]
	ldreqsh r0, [r3, #2]
	cmpeq r1, r0
	ldreqsh r1, [r5, #8]
	ldreqsh r0, [r3, #4]
	cmpeq r1, r0
	ldreqsh r1, [r5, #0xa]
	ldreqsh r0, [r3, #6]
	cmpeq r1, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	strh r2, [r5, #0xc]
	ldrsh r2, [r3, #2]
	mov r0, r6
	mov r1, r5
	strh r2, [r5, #0xe]
	ldrsh r4, [r3, #4]
	mov r2, #0xff
	strh r4, [r5, #8]
	ldrsh r3, [r3, #6]
	strh r3, [r5, #0xa]
	bl FUN_ov16_02111e2c
	mov r0, #0
	strb r0, [r5, #0x36]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02112620

	arm_func_start FUN_ov16_02112704
FUN_ov16_02112704: ; 0x02112704
	ldr r12, _02112710 ; =FUN_ov16_021123d4
	mov r1, #1
	bx r12
_02112710: .word FUN_ov16_021123d4
	arm_func_end FUN_ov16_02112704

	arm_func_start FUN_ov16_02112714
FUN_ov16_02112714: ; 0x02112714
	ldr r12, _02112720 ; =FUN_ov16_021123d4
	mov r1, #0
	bx r12
_02112720: .word FUN_ov16_021123d4
	arm_func_end FUN_ov16_02112714

	arm_func_start FUN_ov16_02112724
FUN_ov16_02112724: ; 0x02112724
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r1
	mov r10, r0
	mov r11, r2
	cmp r8, #0
	mov r6, #0
	ble _02112748
	cmp r8, #0xfe
	blt _02112750
_02112748:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02112750:
	bl FUN_ov16_021114a4
	ldr r1, [r10, #0x1c]
	mov r7, r0
	cmp r1, #0
	ldrne r0, [r10, #0x20]
	cmpne r0, #0
	movle r9, #0
	ble _02112790
	cmp r7, #0
	ble _02112780
	cmp r7, r0
	ble _02112788
_02112780:
	mov r9, #0
	b _02112790
_02112788:
	sub r0, r7, #1
	add r9, r1, r0, lsl #5
_02112790:
	cmp r9, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r9
	mov r2, #0x20
	bl MIi_CpuClearFast
	mov r0, #0x60
	mul r5, r8, r0
	mov r0, #0x1f
	strb r0, [r9, #7]
	ldr r2, _021128BC ; =0x00007FFF
	ldr r0, _021128C0 ; =0x0209A250
	mov r1, r5
	strh r2, [r9, #0x14]
	bl FUN_0202de44
	movs r4, r0
	mov r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	str r4, [r9]
	strb r8, [r9, #6]
	ldrh r0, [r9, #4]
	cmp r11, #0
	orr r0, r0, #3
	strh r0, [r9, #4]
	beq _02112818
	mov r0, r10
	mov r3, r9
	add r1, r10, #0x24
	add r2, r10, #0x28
	bl FUN_ov16_0211154c
_02112818:
	ldrb r8, [r9, #6]
	cmp r8, #1
	blt _021128B4
	ldr r4, _021128BC ; =0x00007FFF
	mov r5, #0x1f
	mov r11, #0x3f
_02112830:
	cmp r9, #0
	ldrne r2, [r9]
	cmpne r2, #0
	cmpne r8, #0
	ble _02112850
	ldrb r0, [r9, #6]
	cmp r8, r0
	ble _02112858
_02112850:
	mov r10, r6
	b _02112864
_02112858:
	sub r1, r8, #1
	mov r0, #0x60
	mla r10, r1, r0, r2
_02112864:
	cmp r10, #0
	beq _021128A8
	mov r0, r6
	mov r1, r10
	mov r2, #0x60
	bl MIi_CpuClearFast
	strb r5, [r10, #4]
	strh r4, [r10, #6]
	strb r11, [r10, #5]
	mov r0, #0x32
	strb r0, [r10, #0x18]
	strb r0, [r10, #0x19]
	strb r6, [r10, #0x1a]
	strb r6, [r10, #0x1b]
	ldrh r0, [r10, #2]
	orr r0, r0, #3
	strh r0, [r10, #2]
_021128A8:
	sub r8, r8, #1
	cmp r8, #1
	bge _02112830
_021128B4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021128BC: .word 0x00007FFF
_021128C0: .word unk_0209A250
	arm_func_end FUN_ov16_02112724

	arm_func_start FUN_ov16_021128c4
FUN_ov16_021128c4: ; 0x021128C4
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r2, [r0, #0x20]
	cmpne r2, #0
	movle r4, #0
	ble _02112900
	cmp r1, #0
	ble _021128F0
	cmp r1, r2
	ble _021128F8
_021128F0:
	mov r4, #0
	b _02112900
_021128F8:
	sub r1, r1, #1
	add r4, r3, r1, lsl #5
_02112900:
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r4, #4]
	tst r1, #1
	beq _02112924
	mov r3, r4
	add r1, r0, #0x24
	add r2, r0, #0x28
	bl FUN_ov16_021115d4
_02112924:
	ldr r1, [r4]
	cmp r1, #0
	beq _02112938
	ldr r0, _0211294C ; =0x0209A250
	bl FUN_0202e1c0
_02112938:
	mov r1, r4
	mov r0, #0
	mov r2, #0x20
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
_0211294C: .word unk_0209A250
	arm_func_end FUN_ov16_021128c4

	arm_func_start FUN_ov16_02112950
FUN_ov16_02112950: ; 0x02112950
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r2
	mov r4, r1
	mov r1, r6
	mov r7, r0
	bl FUN_0205998c
	cmp r6, #0
	beq _02112984
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02112984:
	ldr r1, [r7, #0x1c]
	cmp r1, #0
	ldrne r0, [r7, #0x20]
	cmpne r0, #0
	movle r5, #0
	ble _021129BC
	cmp r4, #0
	ble _021129AC
	cmp r4, r0
	ble _021129B4
_021129AC:
	mov r5, #0
	b _021129BC
_021129B4:
	sub r0, r4, #1
	add r5, r1, r0, lsl #5
_021129BC:
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r4, [r5, #6]
	cmp r4, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r9, #0
	mov r8, #0x60
_021129E0:
	cmp r5, #0
	ldrne r1, [r5]
	cmpne r1, #0
	cmpne r4, #0
	ble _02112A00
	ldrb r0, [r5, #6]
	cmp r4, r0
	ble _02112A08
_02112A00:
	mov r1, r9
	b _02112A10
_02112A08:
	sub r0, r4, #1
	mla r1, r0, r8, r1
_02112A10:
	cmp r1, #0
	beq _02112A24
	mov r0, r7
	mov r2, r6
	bl FUN_ov16_021125c8
_02112A24:
	sub r4, r4, #1
	cmp r4, #1
	bge _021129E0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02112950

	arm_func_start FUN_ov16_02112a34
FUN_ov16_02112a34: ; 0x02112A34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r3, [r7, #0x1c]
	mov r6, r2
	cmp r3, #0
	ldrne r0, [r7, #0x20]
	cmpne r0, #0
	movle r5, #0
	ble _02112A78
	cmp r1, #0
	ble _02112A68
	cmp r1, r0
	ble _02112A70
_02112A68:
	mov r5, #0
	b _02112A78
_02112A70:
	sub r0, r1, #1
	add r5, r3, r0, lsl #5
_02112A78:
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r4, [r5, #6]
	cmp r4, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r9, #0
	mov r8, #0x60
_02112A9C:
	cmp r5, #0
	ldrne r1, [r5]
	cmpne r1, #0
	cmpne r4, #0
	ble _02112ABC
	ldrb r0, [r5, #6]
	cmp r4, r0
	ble _02112AC4
_02112ABC:
	mov r1, r9
	b _02112ACC
_02112AC4:
	sub r0, r4, #1
	mla r1, r0, r8, r1
_02112ACC:
	cmp r1, #0
	beq _02112AE0
	mov r0, r7
	mov r2, r6
	bl FUN_ov16_021125e0
_02112AE0:
	sub r4, r4, #1
	cmp r4, #1
	bge _02112A9C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02112a34

	arm_func_start FUN_ov16_02112af0
FUN_ov16_02112af0: ; 0x02112AF0
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02112B2C
	cmp r1, #0
	ble _02112B1C
	cmp r1, r0
	ble _02112B24
_02112B1C:
	mov r4, #0
	b _02112B2C
_02112B24:
	sub r0, r1, #1
	add r4, r3, r0, lsl #5
_02112B2C:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb lr, [r4, #6]
	cmp lr, #1
	ldmltfd sp!, {r4, pc}
	mov r3, #0
	mov r0, #0x60
_02112B50:
	cmp r4, #0
	ldrne r12, [r4]
	cmpne r12, #0
	cmpne lr, #0
	ble _02112B70
	ldrb r1, [r4, #6]
	cmp lr, r1
	ble _02112B78
_02112B70:
	mov r12, r3
	b _02112B80
_02112B78:
	sub r1, lr, #1
	mla r12, r1, r0, r12
_02112B80:
	sub lr, lr, #1
	cmp r12, #0
	strneb r2, [r12, #0x34]
	cmp lr, #1
	bge _02112B50
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02112af0

	arm_func_start FUN_ov16_02112b98
FUN_ov16_02112b98: ; 0x02112B98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r3, _02112C8C ; =0x00007FFF
	cmp r2, r3
	movhi r2, r3
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r7, #0
	ble _02112BE0
	cmp r1, #0
	ble _02112BD0
	cmp r1, r0
	ble _02112BD8
_02112BD0:
	mov r7, #0
	b _02112BE0
_02112BD8:
	sub r0, r1, #1
	add r7, r3, r0, lsl #5
_02112BE0:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r7, #6]
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	rsb r9, r2, #0
	mov r10, r9, lsl #0xc
	mov r5, #0
	mov r11, #0x3f000000
	mov r4, #0x60
_02112C10:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _02112C30
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _02112C38
_02112C30:
	mov r8, r5
	b _02112C40
_02112C38:
	sub r0, r6, #1
	mla r8, r0, r4, r1
_02112C40:
	cmp r8, #0
	beq _02112C7C
	cmp r9, #0
	mov r0, r10
	ble _02112C68
	bl _fflt
	mov r1, r0
	mov r0, r11
	bl _fadd
	b _02112C74
_02112C68:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112C74:
	bl _ffix
	str r0, [r8, #0x24]
_02112C7C:
	sub r6, r6, #1
	cmp r6, #1
	bge _02112C10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02112C8C: .word 0x00007FFF
	arm_func_end FUN_ov16_02112b98

	arm_func_start FUN_ov16_02112c90
FUN_ov16_02112c90: ; 0x02112C90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r10, r2
	mov r5, #0
	mov r9, r3
	movmi r10, r5
	bmi _02112CB4
	ldr r2, _02112DA8 ; =0x00007FFF
	cmp r10, r2
	movgt r10, r2
_02112CB4:
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r7, #0
	ble _02112CEC
	cmp r1, #0
	ble _02112CDC
	cmp r1, r0
	ble _02112CE4
_02112CDC:
	mov r7, #0
	b _02112CEC
_02112CE4:
	sub r0, r1, #1
	add r7, r2, r0, lsl #5
_02112CEC:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7, #6]
	mov r6, #0
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02112DA8 ; =0x00007FFF
	mov r11, #0x60
_02112D14:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _02112D30
	cmp r6, r0
	ble _02112D38
_02112D30:
	mov r8, r5
	b _02112D40
_02112D38:
	sub r0, r6, #1
	mla r8, r0, r11, r1
_02112D40:
	cmp r8, #0
	beq _02112D94
	rsb r0, r10, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02112D6C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112D78
_02112D6C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112D78:
	bl _ffix
	adds r10, r10, r9
	str r0, [r8, #0x24]
	movmi r10, r5
	bmi _02112D94
	cmp r10, r4
	movgt r10, r4
_02112D94:
	ldrb r0, [r7, #6]
	add r6, r6, #1
	cmp r6, r0
	ble _02112D14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02112DA8: .word 0x00007FFF
	arm_func_end FUN_ov16_02112c90

	arm_func_start FUN_ov16_02112dac
FUN_ov16_02112dac: ; 0x02112DAC
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r2, #0x1f
	movhi r2, #0x1f
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02112DF0
	cmp r1, #0
	ble _02112DE0
	cmp r1, r0
	ble _02112DE8
_02112DE0:
	mov r4, #0
	b _02112DF0
_02112DE8:
	sub r0, r1, #1
	add r4, r3, r0, lsl #5
_02112DF0:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb lr, [r4, #6]
	cmp lr, #1
	ldmltfd sp!, {r4, pc}
	mov r3, #0
	mov r0, #0x60
_02112E14:
	cmp r4, #0
	ldrne r12, [r4]
	cmpne r12, #0
	cmpne lr, #0
	ble _02112E34
	ldrb r1, [r4, #6]
	cmp lr, r1
	ble _02112E3C
_02112E34:
	mov r12, r3
	b _02112E44
_02112E3C:
	sub r1, lr, #1
	mla r12, r1, r0, r12
_02112E44:
	sub lr, lr, #1
	cmp r12, #0
	strneb r2, [r12, #4]
	cmp lr, #1
	bge _02112E14
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02112dac

	arm_func_start FUN_ov16_02112e5c
FUN_ov16_02112e5c: ; 0x02112E5C
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02112E98
	cmp r1, #0
	ble _02112E88
	cmp r1, r0
	ble _02112E90
_02112E88:
	mov r4, #0
	b _02112E98
_02112E90:
	sub r0, r1, #1
	add r4, r3, r0, lsl #5
_02112E98:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb lr, [r4, #6]
	cmp lr, #1
	ldmltfd sp!, {r4, pc}
	mov r3, #0
	mov r0, #0x60
_02112EBC:
	cmp r4, #0
	ldrne r12, [r4]
	cmpne r12, #0
	cmpne lr, #0
	ble _02112EDC
	ldrb r1, [r4, #6]
	cmp lr, r1
	ble _02112EE4
_02112EDC:
	mov r12, r3
	b _02112EEC
_02112EE4:
	sub r1, lr, #1
	mla r12, r1, r0, r12
_02112EEC:
	sub lr, lr, #1
	cmp r12, #0
	strneh r2, [r12, #6]
	cmp lr, #1
	bge _02112EBC
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02112e5c

	arm_func_start FUN_ov16_02112f04
FUN_ov16_02112f04: ; 0x02112F04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, [r0, #0x1c]
	mov r10, r2
	cmp r4, #0
	ldrne r0, [r0, #0x20]
	mov r9, r3
	cmpne r0, #0
	movle r5, #0
	ble _02112F48
	cmp r1, #0
	ble _02112F38
	cmp r1, r0
	ble _02112F40
_02112F38:
	mov r5, #0
	b _02112F48
_02112F40:
	sub r0, r1, #1
	add r5, r4, r0, lsl #5
_02112F48:
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r4, [r5, #6]
	cmp r4, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, r10, lsl #0xc
	mov r8, r9, lsl #0xc
	mov r11, #0x60
_02112F70:
	cmp r5, #0
	ldrne r1, [r5]
	cmpne r1, #0
	cmpne r4, #0
	ble _02112F90
	ldrb r0, [r5, #6]
	cmp r4, r0
	ble _02112F98
_02112F90:
	mov r6, #0
	b _02112FA0
_02112F98:
	sub r0, r4, #1
	mla r6, r0, r11, r1
_02112FA0:
	cmp r6, #0
	beq _02113010
	cmp r10, #0
	mov r0, r7
	ble _02112FC8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112FD4
_02112FC8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112FD4:
	bl _ffix
	str r0, [r6, #0x1c]
	cmp r9, #0
	mov r0, r8
	ble _02112FFC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02113008
_02112FFC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02113008:
	bl _ffix
	str r0, [r6, #0x20]
_02113010:
	sub r4, r4, #1
	cmp r4, #1
	bge _02112F70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02112f04

	arm_func_start FUN_ov16_02113020
FUN_ov16_02113020: ; 0x02113020
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r4, [r10, #0x1c]
	mov r9, r2
	cmp r4, #0
	ldrne r0, [r10, #0x20]
	mov r8, r3
	cmpne r0, #0
	movle r7, #0
	ble _02113068
	cmp r1, #0
	ble _02113058
	cmp r1, r0
	ble _02113060
_02113058:
	mov r7, #0
	b _02113068
_02113060:
	sub r0, r1, #1
	add r7, r4, r0, lsl #5
_02113068:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r7, #6]
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r11, #0xd
	mov r4, #0x60
_02113090:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _021130B0
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _021130B8
_021130B0:
	mov r1, r5
	b _021130C0
_021130B8:
	sub r0, r6, #1
	mla r1, r0, r4, r1
_021130C0:
	cmp r1, #0
	beq _021130F0
	ldrsh r0, [r1, #0x10]
	cmp r0, r9
	ldreqsh r0, [r1, #0x12]
	cmpeq r0, r8
	beq _021130F0
	strh r9, [r1, #0x10]
	mov r0, r10
	mov r2, r11
	strh r8, [r1, #0x12]
	bl FUN_ov16_02111e2c
_021130F0:
	sub r6, r6, #1
	cmp r6, #1
	bge _02113090
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02113020

	arm_func_start FUN_ov16_02113100
FUN_ov16_02113100: ; 0x02113100
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r4, [r9, #0x1c]
	mov r8, r2
	cmp r4, #0
	ldrne r0, [r9, #0x20]
	mov r7, r3
	cmpne r0, #0
	movle r6, #0
	ble _02113148
	cmp r1, #0
	ble _02113138
	cmp r1, r0
	ble _02113140
_02113138:
	mov r6, #0
	b _02113148
_02113140:
	sub r0, r1, #1
	add r6, r4, r0, lsl #5
_02113148:
	cmp r6, #0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r5, [r6, #6]
	cmp r5, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r4, #0
	mov r10, #0x60
_0211316C:
	cmp r6, #0
	ldrne r1, [r6]
	cmpne r1, #0
	cmpne r5, #0
	ble _0211318C
	ldrb r0, [r6, #6]
	cmp r5, r0
	ble _02113194
_0211318C:
	mov r1, r4
	b _0211319C
_02113194:
	sub r0, r5, #1
	mla r1, r0, r10, r1
_0211319C:
	mov r0, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_021125ec
	sub r5, r5, #1
	cmp r5, #1
	bge _0211316C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_02113100

	arm_func_start FUN_ov16_021131bc
FUN_ov16_021131bc: ; 0x021131BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r4, [r10, #0x1c]
	mov r9, r2
	cmp r4, #0
	ldrne r0, [r10, #0x20]
	mov r8, r3
	cmpne r0, #0
	movle r7, #0
	ble _02113204
	cmp r1, #0
	ble _021131F4
	cmp r1, r0
	ble _021131FC
_021131F4:
	mov r7, #0
	b _02113204
_021131FC:
	sub r0, r1, #1
	add r7, r4, r0, lsl #5
_02113204:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r7, #6]
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r11, #2
	mov r4, #0x60
_0211322C:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _0211324C
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _02113254
_0211324C:
	mov r1, r5
	b _0211325C
_02113254:
	sub r0, r6, #1
	mla r1, r0, r4, r1
_0211325C:
	cmp r1, #0
	beq _0211328C
	ldrsh r0, [r1, #0xc]
	cmp r0, r9
	ldreqsh r0, [r1, #0xe]
	cmpeq r0, r8
	beq _0211328C
	strh r9, [r1, #0xc]
	mov r0, r10
	mov r2, r11
	strh r8, [r1, #0xe]
	bl FUN_ov16_02111e2c
_0211328C:
	sub r6, r6, #1
	cmp r6, #1
	bge _0211322C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_021131bc

	arm_func_start FUN_ov16_0211329c
FUN_ov16_0211329c: ; 0x0211329C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	cmp r3, #0
	bne _021132B4
	bl FUN_ov16_02113390
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021132B4:
	ldr r3, [r10, #0x1c]
	cmp r3, #0
	ldrne r0, [r10, #0x20]
	cmpne r0, #0
	movle r8, #0
	ble _021132EC
	cmp r1, #0
	ble _021132DC
	cmp r1, r0
	ble _021132E4
_021132DC:
	mov r8, #0
	b _021132EC
_021132E4:
	sub r0, r1, #1
	add r8, r3, r0, lsl #5
_021132EC:
	cmp r8, #0
	ldrne r0, [r8]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r7, [r8, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211338C ; =0x0000F0FF
	and r9, r2, #0x3c
	and r0, r2, r0
	mov r5, r0, lsl #0x10
	mov r6, #0
	mov r11, #2
	mov r4, #0x60
_02113324:
	cmp r8, #0
	ldrne r1, [r8]
	cmpne r1, #0
	cmpne r7, #0
	ble _02113344
	ldrb r0, [r8, #6]
	cmp r7, r0
	ble _0211334C
_02113344:
	mov r1, r6
	b _02113354
_0211334C:
	sub r0, r7, #1
	mla r1, r0, r4, r1
_02113354:
	cmp r1, #0
	beq _0211337C
	ldrh r0, [r1, #2]
	cmp r9, #0
	orr r0, r0, r5, lsr #16
	strh r0, [r1, #2]
	beq _0211337C
	mov r0, r10
	mov r2, r11
	bl FUN_ov16_02111e2c
_0211337C:
	sub r7, r7, #1
	cmp r7, #1
	bge _02113324
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211338C: .word 0x0000F0FF
	arm_func_end FUN_ov16_0211329c

	arm_func_start FUN_ov16_02113390
FUN_ov16_02113390: ; 0x02113390
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r3, [r10, #0x1c]
	cmp r3, #0
	ldrne r0, [r10, #0x20]
	cmpne r0, #0
	movle r8, #0
	ble _021133D0
	cmp r1, #0
	ble _021133C0
	cmp r1, r0
	ble _021133C8
_021133C0:
	mov r8, #0
	b _021133D0
_021133C8:
	sub r0, r1, #1
	add r8, r3, r0, lsl #5
_021133D0:
	cmp r8, #0
	ldrne r0, [r8]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r7, [r8, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r0, r2
	and r9, r2, #0x3c
	mov r5, r0, lsl #0x10
	mov r6, #0
	mov r11, #2
	mov r4, #0x60
_02113404:
	cmp r8, #0
	ldrne r1, [r8]
	cmpne r1, #0
	cmpne r7, #0
	ble _02113424
	ldrb r0, [r8, #6]
	cmp r7, r0
	ble _0211342C
_02113424:
	mov r1, r6
	b _02113434
_0211342C:
	sub r0, r7, #1
	mla r1, r0, r4, r1
_02113434:
	cmp r1, #0
	beq _0211345C
	ldrh r0, [r1, #2]
	cmp r9, #0
	and r0, r0, r5, lsr #16
	strh r0, [r1, #2]
	beq _0211345C
	mov r0, r10
	mov r2, r11
	bl FUN_ov16_02111e2c
_0211345C:
	sub r7, r7, #1
	cmp r7, #1
	bge _02113404
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02113390

	arm_func_start FUN_ov16_0211346c
FUN_ov16_0211346c: ; 0x0211346C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r4, [r9, #0x1c]
	mov r8, r2
	cmp r4, #0
	ldrne r0, [r9, #0x20]
	mov r7, r3
	cmpne r0, #0
	movle r6, #0
	ble _021134B4
	cmp r1, #0
	ble _021134A4
	cmp r1, r0
	ble _021134AC
_021134A4:
	mov r6, #0
	b _021134B4
_021134AC:
	sub r0, r1, #1
	add r6, r4, r0, lsl #5
_021134B4:
	cmp r6, #0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r5, [r6, #6]
	cmp r5, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r4, #0
	mov r10, #0x60
_021134D8:
	cmp r6, #0
	ldrne r1, [r6]
	cmpne r1, #0
	cmpne r5, #0
	ble _021134F8
	ldrb r0, [r6, #6]
	cmp r5, r0
	ble _02113500
_021134F8:
	mov r1, r4
	b _02113508
_02113500:
	sub r0, r5, #1
	mla r1, r0, r10, r1
_02113508:
	mov r0, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02112620
	sub r5, r5, #1
	cmp r5, #1
	bge _021134D8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_0211346c

	arm_func_start FUN_ov16_02113528
FUN_ov16_02113528: ; 0x02113528
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r4, [r10, #0x1c]
	mov r9, r2
	cmp r4, #0
	ldrne r0, [r10, #0x20]
	mov r8, r3
	cmpne r0, #0
	movle r7, #0
	ble _02113570
	cmp r1, #0
	ble _02113560
	cmp r1, r0
	ble _02113568
_02113560:
	mov r7, #0
	b _02113570
_02113568:
	sub r0, r1, #1
	add r7, r4, r0, lsl #5
_02113570:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r7, #6]
	cmp r9, #0x64
	movhi r9, #0x64
	cmp r8, #0x64
	movhi r8, #0x64
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r11, #4
	mov r4, #0x60
_021135A8:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _021135C8
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _021135D0
_021135C8:
	mov r1, r5
	b _021135D8
_021135D0:
	sub r0, r6, #1
	mla r1, r0, r4, r1
_021135D8:
	cmp r1, #0
	beq _02113608
	ldrb r0, [r1, #0x1a]
	cmp r0, r9
	ldreqb r0, [r1, #0x1b]
	cmpeq r0, r8
	beq _02113608
	strb r9, [r1, #0x1a]
	mov r0, r10
	mov r2, r11
	strb r8, [r1, #0x1b]
	bl FUN_ov16_02111e2c
_02113608:
	sub r6, r6, #1
	cmp r6, #1
	bge _021135A8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02113528

	arm_func_start FUN_ov16_02113618
FUN_ov16_02113618: ; 0x02113618
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	ldr r3, [r5, #0x1c]
	mov r4, r2
	cmp r3, #0
	ldrne r0, [r5, #0x20]
	cmpne r0, #0
	movle r10, #0
	ble _0211365C
	cmp r1, #0
	ble _0211364C
	cmp r1, r0
	ble _02113654
_0211364C:
	mov r10, #0
	b _0211365C
_02113654:
	sub r0, r1, #1
	add r10, r3, r0, lsl #5
_0211365C:
	cmp r10, #0
	ldrne r0, [r10]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r9, [r10, #6]
	sub r0, r9, #1
	add r4, r4, r0, lsl #3
	cmp r9, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r8, #0
	mov r7, #0xff
	mov r6, #0x60
_0211368C:
	cmp r10, #0
	ldrne r1, [r10]
	cmpne r1, #0
	cmpne r9, #0
	ble _021136AC
	ldrb r0, [r10, #6]
	cmp r9, r0
	ble _021136B4
_021136AC:
	mov r1, r8
	b _021136BC
_021136B4:
	sub r0, r9, #1
	mla r1, r0, r6, r1
_021136BC:
	cmp r1, #0
	beq _02113720
	ldrsh r0, [r4]
	ldrsh r2, [r1, #0xc]
	cmp r2, r0
	ldreqsh r3, [r1, #0xe]
	ldreqsh r2, [r4, #2]
	cmpeq r3, r2
	ldreqsh r3, [r1, #8]
	ldreqsh r2, [r4, #4]
	cmpeq r3, r2
	ldreqsh r3, [r1, #0xa]
	ldreqsh r2, [r4, #6]
	cmpeq r3, r2
	beq _02113720
	strh r0, [r1, #0xc]
	ldrsh r3, [r4, #2]
	mov r0, r5
	mov r2, r7
	strh r3, [r1, #0xe]
	ldrsh r3, [r4, #4]
	strh r3, [r1, #8]
	ldrsh r3, [r4, #6]
	strh r3, [r1, #0xa]
	bl FUN_ov16_02111e2c
_02113720:
	sub r9, r9, #1
	cmp r9, #1
	sub r4, r4, #8
	bge _0211368C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_02113618

	arm_func_start FUN_ov16_02113734
FUN_ov16_02113734: ; 0x02113734
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02113770
	cmp r1, #0
	ble _02113760
	cmp r1, r0
	ble _02113768
_02113760:
	mov r4, #0
	b _02113770
_02113768:
	sub r0, r1, #1
	add r4, r3, r0, lsl #5
_02113770:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb lr, [r4, #6]
	cmp lr, #1
	ldmltfd sp!, {r4, pc}
	mov r3, #0
	mov r0, #0x60
_02113794:
	cmp r4, #0
	ldrne r12, [r4]
	cmpne r12, #0
	cmpne lr, #0
	ble _021137B4
	ldrb r1, [r4, #6]
	cmp lr, r1
	ble _021137BC
_021137B4:
	mov r12, r3
	b _021137C4
_021137BC:
	sub r1, lr, #1
	mla r12, r1, r0, r12
_021137C4:
	sub lr, lr, #1
	cmp r12, #0
	strneb r2, [r12, #5]
	cmp lr, #1
	bge _02113794
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02113734

	arm_func_start FUN_ov16_021137dc
FUN_ov16_021137dc: ; 0x021137DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r7, r1
	mov r1, r4
	mov r6, r0
	mov r5, r2
	bl FUN_0205998c
	cmp r4, #0
	beq _02113814
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02113814:
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	ldrne r0, [r6, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _0211384C
	cmp r7, #0
	ble _0211383C
	cmp r7, r0
	ble _02113844
_0211383C:
	mov r0, #0
	b _0211384C
_02113844:
	sub r0, r7, #1
	add r0, r1, r0, lsl #5
_0211384C:
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	cmpne r5, #0
	ble _0211386C
	ldrb r0, [r0, #6]
	cmp r5, r0
	ble _02113874
_0211386C:
	mov r1, #0
	b _02113880
_02113874:
	sub r2, r5, #1
	mov r0, #0x60
	mla r1, r2, r0, r1
_02113880:
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_021125c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021137dc

	arm_func_start FUN_ov16_02113890
FUN_ov16_02113890: ; 0x02113890
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r7, r1
	mov r1, r4
	mov r6, r0
	mov r5, r2
	bl FUN_0205998c
	cmp r4, #0
	beq _021138C8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_021138C8:
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	ldrne r0, [r6, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113900
	cmp r7, #0
	ble _021138F0
	cmp r7, r0
	ble _021138F8
_021138F0:
	mov r0, #0
	b _02113900
_021138F8:
	sub r0, r7, #1
	add r0, r1, r0, lsl #5
_02113900:
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	cmpne r5, #0
	ble _02113920
	ldrb r0, [r0, #6]
	cmp r5, r0
	ble _02113928
_02113920:
	mov r1, #0
	b _02113934
_02113928:
	sub r2, r5, #1
	mov r0, #0x60
	mla r1, r2, r0, r1
_02113934:
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_021125e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02113890

	arm_func_start FUN_ov16_02113944
FUN_ov16_02113944: ; 0x02113944
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _0211397C
	cmp r1, #0
	ble _0211396C
	cmp r1, r0
	ble _02113974
_0211396C:
	mov r0, #0
	b _0211397C
_02113974:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_0211397C:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _0211399C
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _021139A4
_0211399C:
	mov r0, #0
	b _021139B0
_021139A4:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r12
_021139B0:
	cmp r0, #0
	strneb r3, [r0, #0x34]
	bx lr
	arm_func_end FUN_ov16_02113944

	arm_func_start FUN_ov16_021139bc
FUN_ov16_021139bc: ; 0x021139BC
	stmfd sp!, {r4, lr}
	ldr r12, _02113A7C ; =0x00007FFF
	cmp r3, r12
	movhi r3, r12
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113A04
	cmp r1, #0
	ble _021139F4
	cmp r1, r0
	ble _021139FC
_021139F4:
	mov r0, #0
	b _02113A04
_021139FC:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_02113A04:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113A24
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02113A2C
_02113A24:
	mov r4, #0
	b _02113A38
_02113A2C:
	sub r1, r2, #1
	mov r0, #0x60
	mla r4, r1, r0, r12
_02113A38:
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	rsb r0, r3, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02113A64
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02113A70
_02113A64:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02113A70:
	bl _ffix
	str r0, [r4, #0x24]
	ldmfd sp!, {r4, pc}
_02113A7C: .word 0x00007FFF
	arm_func_end FUN_ov16_021139bc

	arm_func_start FUN_ov16_02113a80
FUN_ov16_02113a80: ; 0x02113A80
	ldr r12, [r0, #0x1c]
	cmp r3, #0x1f
	movhi r3, #0x1f
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113AC0
	cmp r1, #0
	ble _02113AB0
	cmp r1, r0
	ble _02113AB8
_02113AB0:
	mov r0, #0
	b _02113AC0
_02113AB8:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_02113AC0:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113AE0
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02113AE8
_02113AE0:
	mov r0, #0
	b _02113AF4
_02113AE8:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r12
_02113AF4:
	cmp r0, #0
	strneb r3, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_02113a80

	arm_func_start FUN_ov16_02113b00
FUN_ov16_02113b00: ; 0x02113B00
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113B38
	cmp r1, #0
	ble _02113B28
	cmp r1, r0
	ble _02113B30
_02113B28:
	mov r0, #0
	b _02113B38
_02113B30:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_02113B38:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113B58
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02113B60
_02113B58:
	mov r0, #0
	b _02113B6C
_02113B60:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r12
_02113B6C:
	cmp r0, #0
	strneh r3, [r0, #6]
	bx lr
	arm_func_end FUN_ov16_02113b00

	arm_func_start FUN_ov16_02113b78
FUN_ov16_02113b78: ; 0x02113B78
	stmfd sp!, {r4, lr}
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113BB4
	cmp r1, #0
	ble _02113BA4
	cmp r1, r0
	ble _02113BAC
_02113BA4:
	mov r0, #0
	b _02113BB4
_02113BAC:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_02113BB4:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113BD4
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02113BDC
_02113BD4:
	mov r4, #0
	b _02113BE8
_02113BDC:
	sub r1, r2, #1
	mov r0, #0x60
	mla r4, r1, r0, r12
_02113BE8:
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	cmp r3, #0
	mov r0, r3, lsl #0xc
	ble _02113C10
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02113C1C
_02113C10:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02113C1C:
	bl _ffix
	ldrsh r1, [sp, #8]
	str r0, [r4, #0x1c]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _02113C48
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02113C54
_02113C48:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02113C54:
	bl _ffix
	str r0, [r4, #0x20]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02113b78

	arm_func_start FUN_ov16_02113c60
FUN_ov16_02113c60: ; 0x02113C60
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113C9C
	cmp r1, #0
	ble _02113C8C
	cmp r1, r12
	ble _02113C94
_02113C8C:
	mov r1, #0
	b _02113C9C
_02113C94:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113C9C:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113CBC
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113CC4
_02113CBC:
	mov r1, #0
	b _02113CD0
_02113CC4:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113CD0:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r2, [r1, #0x10]
	cmp r2, r3
	ldreqsh r12, [r1, #0x12]
	ldreqsh r2, [sp, #8]
	cmpeq r12, r2
	ldmeqfd sp!, {r3, pc}
	ldrsh r12, [sp, #8]
	strh r3, [r1, #0x10]
	mov r2, #0xd
	strh r12, [r1, #0x12]
	bl FUN_ov16_02111e2c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02113c60

	arm_func_start FUN_ov16_02113d08
FUN_ov16_02113d08: ; 0x02113D08
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113D44
	cmp r1, #0
	ble _02113D34
	cmp r1, r12
	ble _02113D3C
_02113D34:
	mov r1, #0
	b _02113D44
_02113D3C:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113D44:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113D64
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113D6C
_02113D64:
	mov r1, #0
	b _02113D78
_02113D6C:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113D78:
	mov r2, r3
	ldrsh r3, [sp, #8]
	bl FUN_ov16_021125ec
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02113d08

	arm_func_start FUN_ov16_02113d88
FUN_ov16_02113d88: ; 0x02113D88
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113DC4
	cmp r1, #0
	ble _02113DB4
	cmp r1, r12
	ble _02113DBC
_02113DB4:
	mov r1, #0
	b _02113DC4
_02113DBC:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113DC4:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113DE4
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113DEC
_02113DE4:
	mov r1, #0
	b _02113DF8
_02113DEC:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113DF8:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r2, [r1, #0xc]
	cmp r2, r3
	ldreqsh r12, [r1, #0xe]
	ldreqsh r2, [sp, #8]
	cmpeq r12, r2
	ldmeqfd sp!, {r3, pc}
	ldrsh r12, [sp, #8]
	strh r3, [r1, #0xc]
	mov r2, #2
	strh r12, [r1, #0xe]
	bl FUN_ov16_02111e2c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02113d88

	arm_func_start FUN_ov16_02113e30
FUN_ov16_02113e30: ; 0x02113E30
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113E6C
	cmp r1, #0
	ble _02113E5C
	cmp r1, r12
	ble _02113E64
_02113E5C:
	mov r1, #0
	b _02113E6C
_02113E64:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113E6C:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113E8C
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113E94
_02113E8C:
	mov r1, #0
	b _02113EA0
_02113E94:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113EA0:
	cmp r1, #0
	ldrneh r2, [r1, #0x14]
	cmpne r2, r3
	ldmeqfd sp!, {r3, pc}
	mov r2, #2
	strh r3, [r1, #0x14]
	bl FUN_ov16_02111e2c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02113e30

	arm_func_start FUN_ov16_02113ec0
FUN_ov16_02113ec0: ; 0x02113EC0
	stmfd sp!, {r3, lr}
	ldrb r12, [sp, #8]
	cmp r12, #0
	bne _02113ED8
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_02113ED8:
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113F10
	cmp r1, #0
	ble _02113F00
	cmp r1, r12
	ble _02113F08
_02113F00:
	mov r1, #0
	b _02113F10
_02113F08:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113F10:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113F30
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113F38
_02113F30:
	mov r1, #0
	b _02113F44
_02113F38:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113F44:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _02113F78 ; =0x0000F0FF
	ldrh r12, [r1, #2]
	and r2, r3, r2
	mov r2, r2, lsl #0x10
	orr r2, r12, r2, lsr #16
	strh r2, [r1, #2]
	tst r3, #0x3c
	ldmeqfd sp!, {r3, pc}
	mov r2, #2
	bl FUN_ov16_02111e2c
	ldmfd sp!, {r3, pc}
_02113F78: .word 0x0000F0FF
	arm_func_end FUN_ov16_02113ec0

	arm_func_start FUN_ov16_02113f7c
FUN_ov16_02113f7c: ; 0x02113F7C
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113FB8
	cmp r1, #0
	ble _02113FA8
	cmp r1, r12
	ble _02113FB0
_02113FA8:
	mov r1, #0
	b _02113FB8
_02113FB0:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113FB8:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113FD8
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113FE0
_02113FD8:
	mov r1, #0
	b _02113FEC
_02113FE0:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113FEC:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r12, [r1, #2]
	mvn r2, r3
	mov r2, r2, lsl #0x10
	and r2, r12, r2, lsr #16
	strh r2, [r1, #2]
	tst r3, #0x3c
	ldmeqfd sp!, {r3, pc}
	mov r2, #2
	bl FUN_ov16_02111e2c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02113f7c

	arm_func_start FUN_ov16_0211401c
FUN_ov16_0211401c: ; 0x0211401C
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02114058
	cmp r1, #0
	ble _02114048
	cmp r1, r12
	ble _02114050
_02114048:
	mov r1, #0
	b _02114058
_02114050:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02114058:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02114078
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02114080
_02114078:
	mov r1, #0
	b _0211408C
_02114080:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_0211408C:
	mov r2, r3
	ldrb r3, [sp, #8]
	bl FUN_ov16_02112620
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_0211401c

	arm_func_start FUN_ov16_0211409c
FUN_ov16_0211409c: ; 0x0211409C
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x1c]
	ldr r12, [sp, #8]
	cmp r4, #0
	ldrne lr, [r0, #0x20]
	cmpne lr, #0
	movle r1, #0
	ble _021140DC
	cmp r1, #0
	ble _021140CC
	cmp r1, lr
	ble _021140D4
_021140CC:
	mov r1, #0
	b _021140DC
_021140D4:
	sub r1, r1, #1
	add r1, r4, r1, lsl #5
_021140DC:
	cmp r1, #0
	ldrne lr, [r1]
	cmpne lr, #0
	cmpne r2, #0
	ble _021140FC
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02114104
_021140FC:
	mov r1, #0
	b _02114110
_02114104:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, lr
_02114110:
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r2, [r1, #0x18]
	cmp r3, #0x64
	movhi r3, #0x64
	cmp r12, #0x64
	movhi r12, #0x64
	cmp r2, r3
	ldreqb r2, [r1, #0x19]
	cmpeq r2, r12
	ldmeqfd sp!, {r4, pc}
	strb r3, [r1, #0x18]
	mov r2, #8
	strb r12, [r1, #0x19]
	bl FUN_ov16_02111e2c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211409c

	arm_func_start FUN_ov16_02114150
FUN_ov16_02114150: ; 0x02114150
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x1c]
	ldr r12, [sp, #8]
	cmp r4, #0
	ldrne lr, [r0, #0x20]
	cmpne lr, #0
	movle r1, #0
	ble _02114190
	cmp r1, #0
	ble _02114180
	cmp r1, lr
	ble _02114188
_02114180:
	mov r1, #0
	b _02114190
_02114188:
	sub r1, r1, #1
	add r1, r4, r1, lsl #5
_02114190:
	cmp r1, #0
	ldrne lr, [r1]
	cmpne lr, #0
	cmpne r2, #0
	ble _021141B0
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _021141B8
_021141B0:
	mov r1, #0
	b _021141C4
_021141B8:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, lr
_021141C4:
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r2, [r1, #0x1a]
	cmp r3, #0x64
	movhi r3, #0x64
	cmp r12, #0x64
	movhi r12, #0x64
	cmp r2, r3
	ldreqb r2, [r1, #0x1b]
	cmpeq r2, r12
	ldmeqfd sp!, {r4, pc}
	strb r3, [r1, #0x1a]
	mov r2, #4
	strb r12, [r1, #0x1b]
	bl FUN_ov16_02111e2c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02114150

	arm_func_start FUN_ov16_02114204
FUN_ov16_02114204: ; 0x02114204
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _0211423C
	cmp r1, #0
	ble _0211422C
	cmp r1, r0
	ble _02114234
_0211422C:
	mov r0, #0
	b _0211423C
_02114234:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_0211423C:
	cmp r0, #0
	strneh r2, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov16_02114204

	arm_func_start FUN_ov16_02114248
FUN_ov16_02114248: ; 0x02114248
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, [r0, #0x1c]
	mov r5, r3
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02114288
	cmp r1, #0
	ble _02114278
	cmp r1, r0
	ble _02114280
_02114278:
	mov r4, #0
	b _02114288
_02114280:
	sub r0, r1, #1
	add r4, r12, r0, lsl #5
_02114288:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, #0
	mov r0, r2, lsl #0xc
	ble _021142B0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021142BC
_021142B0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021142BC:
	bl _ffix
	str r0, [r4, #8]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _021142E4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021142F0
_021142E4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021142F0:
	bl _ffix
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02114248

	arm_func_start FUN_ov16_021142fc
FUN_ov16_021142fc: ; 0x021142FC
	stmfd sp!, {r3, lr}
	cmp r3, #0
	bne _02114310
	bl FUN_ov16_02114370
	ldmfd sp!, {r3, pc}
_02114310:
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r3, #0
	ble _02114348
	cmp r1, #0
	ble _02114338
	cmp r1, r0
	ble _02114340
_02114338:
	mov r3, #0
	b _02114348
_02114340:
	sub r0, r1, #1
	add r3, r3, r0, lsl #5
_02114348:
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211436C ; =0x00007003
	ldrh r1, [r3, #4]
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r3, #4]
	ldmfd sp!, {r3, pc}
_0211436C: .word 0x00007003
	arm_func_end FUN_ov16_021142fc

	arm_func_start FUN_ov16_02114370
FUN_ov16_02114370: ; 0x02114370
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r3, #0
	ble _021143A8
	cmp r1, #0
	ble _02114398
	cmp r1, r0
	ble _021143A0
_02114398:
	mov r3, #0
	b _021143A8
_021143A0:
	sub r0, r1, #1
	add r3, r3, r0, lsl #5
_021143A8:
	cmp r3, #0
	bxeq lr
	ldr r0, _021143D0 ; =0x00007003
	ldrh r1, [r3, #4]
	and r0, r2, r0
	mvn r0, r0
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	strh r0, [r3, #4]
	bx lr
_021143D0: .word 0x00007003
	arm_func_end FUN_ov16_02114370

	arm_func_start FUN_ov16_021143d4
FUN_ov16_021143d4: ; 0x021143D4
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _0211440C
	cmp r1, #0
	ble _021143FC
	cmp r1, r0
	ble _02114404
_021143FC:
	mov r0, #0
	b _0211440C
_02114404:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_0211440C:
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	cmpne r2, #0
	ble _0211442C
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02114434
_0211442C:
	mov r0, #0
	bx lr
_02114434:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r3
	bx lr
	arm_func_end FUN_ov16_021143d4

	arm_func_start FUN_ov16_02114444
FUN_ov16_02114444: ; 0x02114444
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	bxle lr
	cmp r1, #0
	ble _0211446C
	cmp r1, r0
	ble _02114474
_0211446C:
	mov r0, #0
	bx lr
_02114474:
	sub r0, r1, #1
	add r0, r2, r0, lsl #5
	bx lr
	arm_func_end FUN_ov16_02114444

	arm_func_start FUN_ov16_02114480
FUN_ov16_02114480: ; 0x02114480
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x1c]
	ldr r12, [sp, #8]
	cmp r4, #0
	ldrne r0, [r0, #0x20]
	mov lr, #0
	cmpne r0, #0
	movle r0, #0
	ble _021144C4
	cmp r1, #0
	ble _021144B4
	cmp r1, r0
	ble _021144BC
_021144B4:
	mov r0, #0
	b _021144C4
_021144BC:
	sub r0, r1, #1
	add r0, r4, r0, lsl #5
_021144C4:
	cmp r0, #0
	ldrne r4, [r0]
	cmpne r4, #0
	cmpne r2, #0
	ble _021144E4
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _021144EC
_021144E4:
	mov r2, #0
	b _021144F8
_021144EC:
	sub r1, r2, #1
	mov r0, #0x60
	mla r2, r1, r0, r4
_021144F8:
	cmp r2, #0
	beq _0211451C
	cmp r3, #0
	ldrnesh r0, [r2, #8]
	strne r0, [r3]
	cmp r12, #0
	ldrnesh r0, [r2, #0xa]
	strne r0, [r12]
	ldmfd sp!, {r4, pc}
_0211451C:
	cmp r3, #0
	strne lr, [r3]
	cmp r12, #0
	strne lr, [r12]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02114480

	arm_func_start FUN_ov16_02114530
FUN_ov16_02114530: ; 0x02114530
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02114568
	cmp r1, #0
	ble _02114558
	cmp r1, r0
	ble _02114560
_02114558:
	mov r0, #0
	b _02114568
_02114560:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_02114568:
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	cmpne r2, #0
	ble _02114588
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02114590
_02114588:
	mov r0, #0
	b _0211459C
_02114590:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r3
_0211459C:
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_02114530

	arm_func_start FUN_ov16_021145ac
FUN_ov16_021145ac: ; 0x021145AC
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _021145E4
	cmp r1, #0
	ble _021145D4
	cmp r1, r0
	ble _021145DC
_021145D4:
	mov r0, #0
	b _021145E4
_021145DC:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_021145E4:
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	cmpne r2, #0
	ble _02114604
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _0211460C
_02114604:
	mov r0, #0
	b _02114618
_0211460C:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r3
_02114618:
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #0x1a]
	bx lr
	arm_func_end FUN_ov16_021145ac

	arm_func_start FUN_ov16_02114628
FUN_ov16_02114628: ; 0x02114628
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02114660
	cmp r1, #0
	ble _02114650
	cmp r1, r0
	ble _02114658
_02114650:
	mov r0, #0
	b _02114660
_02114658:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_02114660:
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	cmpne r2, #0
	ble _02114680
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02114688
_02114680:
	mov r0, #0
	b _02114694
_02114688:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r3
_02114694:
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #0x1b]
	bx lr
	arm_func_end FUN_ov16_02114628

	arm_func_start FUN_ov16_021146a4
FUN_ov16_021146a4: ; 0x021146A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	bl FUN_0205998c
	str r0, [sp, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #4]
	strne r0, [sp, #0x20]
	cmpne r0, #0
	ldrne r0, [r0]
	cmpne r0, #3
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x20]
	mov r5, #8
	ldr r1, [r0, #0x1c]
	ldr r3, [r0, #0xc]
	add r0, r0, r1
	ldrb r1, [r0, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	cmp r1, #3
	ldr r2, [r0, #0x14]
	add r0, r0, r3
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r6, #1
	add r0, r0, r2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	moveq r6, #2
	ldr r0, [r0, #4]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	mov r1, r5, lsl r1
	mov r0, r5, lsl r0
	mul r0, r1, r0
	mov r1, r6
	bl _s32_div_f
	mov r4, r0
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #8]
	add r0, r4, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r2, [r0, #0x20]
	ldr r0, [sp, #4]
	add r0, r0, r1
	add r1, r2, r0
	ldr r0, _02114914 ; =0x0209A250
	bl FUN_0202de44
	mov r2, #3
	str r2, [r0]
	mov r2, #0x20
	stmib r0, {r2, r4}
	add r3, r4, #0x20
	str r0, [sp]
	str r3, [r0, #0xc]
	ldr r0, [sp, #0x20]
	mov r1, r6
	ldr r6, [r0, #8]
	ldr r0, [sp]
	mov r2, r3
	add r3, r3, r6
	str r6, [r0, #0x10]
	add r4, r0, #0x20
	str r3, [r0, #0x14]
	ldr r0, [sp, #0x20]
	add r2, r2, r6
	ldr r6, [r0, #0x20]
	mov r0, r5
	add r3, r6, r2
	ldr r2, [sp]
	str r6, [r2, #0x18]
	str r3, [r2, #0x1c]
	bl _s32_div_f
	mov r10, r0
	ldr r0, [sp, #0x14]
	mov r8, #0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	mov r2, r5, lsl r1
	mov r1, r5, lsl r0
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r6, r0, asr #3
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _02114890
	mov r0, r10, lsl #3
	str r0, [sp, #8]
_02114820:
	cmp r6, #0
	mov r7, #0
	ble _02114880
	mul r1, r8, r6
	ldr r0, [sp, #0x1c]
	add r11, r0, r1, lsl #1
_02114838:
	mov r0, r7, lsl #1
	ldrh r2, [r0, r11]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r9, #0
	mla r5, r1, r2, r0
_02114850:
	mla r0, r9, r10, r5
	add r1, r9, r8, lsl #3
	mla r2, r1, r6, r7
	mla r1, r10, r2, r4
	mov r2, r10
	bl MI_CpuCopy8
	add r9, r9, #1
	cmp r9, #8
	blt _02114850
	add r7, r7, #1
	cmp r7, r6
	blt _02114838
_02114880:
	ldr r0, [sp, #0x10]
	add r8, r8, #1
	cmp r8, r0
	blt _02114820
_02114890:
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	ldr r1, [sp]
	add r1, r1, r3
	bl MI_CpuCopy8
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r3, [r0, #0x14]
	ldr r2, [r0, #0x18]
	ldr r0, [sp, #0x14]
	add r1, r1, r3
	bl MI_CpuCopy8
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #8]
	ldr r2, [r0, #0x20]
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp]
	add r1, r2, r1
	bl DC_FlushRange
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	ldr r0, _02114914 ; =0x0209A250
	bl FUN_0202e1c0
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	str r1, [r0, #4]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02114914: .word unk_0209A250
	arm_func_end FUN_ov16_021146a4

	arm_func_start FUN_ov16_02114918
FUN_ov16_02114918: ; 0x02114918
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r11, r2
	str r3, [sp]
	bl FUN_0205998c
	str r0, [sp, #0x10]
	cmp r0, #0
	ldrne r0, [r0, #4]
	strne r0, [sp, #0x30]
	cmpne r0, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r0]
	cmp r0, #3
	addlo sp, sp, #0x3c
	ldmlofd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	addne sp, sp, #0x3c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x30]
	mov r6, #2
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	ldr r0, [sp]
	cmp r0, #3
	ldr r0, [sp, #0x30]
	movne r6, #1
	add r0, r0, r2
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	mov r1, r11
	ldr r0, [r0, #4]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #0x10]
	bl _u32_div_f
	mov r1, #0
	mov r0, r0, lsr #1
	str r0, [sp, #0x24]
	mov r0, #4
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, r11, lsl #3
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x24]
	mov r5, r0
	mov r1, r1, lsl #3
	str r1, [sp, #0x14]
_021149EC:
	ldr r1, [sp, #0x18]
	mov r5, r5, lsl #1
	cmp r1, r5
	ble _02114A10
	ldr r1, [sp, #0x20]
	cmp r5, #0x400
	add r1, r1, #1
	str r1, [sp, #0x20]
	blt _021149EC
_02114A10:
	ldr r1, [sp, #0x14]
	mov r0, r0, lsl #1
	cmp r1, r0
	ble _02114A34
	ldr r1, [sp, #0x1c]
	cmp r0, #0x400
	add r1, r1, #1
	str r1, [sp, #0x1c]
	blt _02114A10
_02114A34:
	mul r0, r5, r0
	mov r1, r6
	bl _s32_div_f
	mov r4, r0
	ldr r0, [sp, #0x30]
	add r2, r4, #0x30
	ldr r1, [r0, #8]
	ldr r0, _02114BF4 ; =0x0209A250
	add r1, r2, r1
	str r1, [sp, #8]
	bl FUN_0202de44
	mov r2, #3
	str r2, [r0]
	mov r2, #0x20
	stmib r0, {r2, r4}
	add r3, r4, #0x20
	str r0, [sp, #4]
	str r3, [r0, #0xc]
	ldr r0, [sp, #0x30]
	mov r2, #0x10
	ldr r4, [r0, #8]
	ldr r0, [sp, #4]
	add r3, r3, r4
	str r4, [r0, #0x10]
	str r3, [r0, #0x14]
	str r2, [r0, #0x18]
	ldr r2, [sp, #8]
	mov r1, r6
	str r2, [r0, #0x1c]
	add r4, r0, #0x20
	mov r0, #8
	bl _s32_div_f
	mov r10, r0
	ldr r0, [sp, #0x24]
	mov r7, #0
	cmp r0, #0
	mov r0, r5, asr #2
	add r0, r5, r0, lsr #29
	mov r9, r0, asr #3
	ble _02114B54
	mov r0, r10, lsl #3
	str r0, [sp, #0xc]
_02114ADC:
	cmp r11, #0
	mov r6, #0
	ble _02114B44
	mul r1, r7, r11
	ldr r0, [sp, #0x2c]
	add r0, r0, r1, lsl #1
	str r0, [sp, #0x38]
_02114AF8:
	ldr r0, [sp, #0x38]
	mov r1, r6, lsl #1
	ldrh r2, [r1, r0]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x28]
	mov r8, #0
	mla r5, r1, r2, r0
_02114B14:
	mla r0, r8, r10, r5
	add r1, r8, r7, lsl #3
	mla r2, r1, r9, r6
	mla r1, r10, r2, r4
	mov r2, r10
	bl MI_CpuCopy8
	add r8, r8, #1
	cmp r8, #8
	blt _02114B14
	add r6, r6, #1
	cmp r6, r11
	blt _02114AF8
_02114B44:
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	cmp r7, r0
	blt _02114ADC
_02114B54:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	ldr r1, [sp, #4]
	add r1, r1, r3
	bl MI_CpuCopy8
	ldr r0, [sp, #4]
	mov r4, #1
	ldr r1, [r0, #0x14]
	ldr r2, [sp, #0x14]
	strh r4, [r0, r1]
	add r3, r0, r1
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #8]
	strb r0, [r3, #2]
	ldr r0, [sp, #0x1c]
	strb r0, [r3, #3]
	ldr r0, [sp]
	strb r0, [r3, #4]
	mov r0, #0
	strh r0, [r3, #8]
	strh r0, [r3, #0xa]
	ldr r0, [sp, #0x18]
	strh r0, [r3, #0xc]
	ldr r0, [sp, #4]
	strh r2, [r3, #0xe]
	bl DC_FlushRange
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #4]
	ldr r0, _02114BF4 ; =0x0209A250
	bl FUN_0202e1c0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	str r1, [r0, #4]
	strb r4, [r0, #0x32]
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02114BF4: .word unk_0209A250
	arm_func_end FUN_ov16_02114918

	arm_func_start FUN_ov16_02114bf8
FUN_ov16_02114bf8: ; 0x02114BF8
	ldrh r0, [r0, #4]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_02114bf8

	arm_func_start FUN_ov16_02114c0c
FUN_ov16_02114c0c: ; 0x02114C0C
	ldr r0, [r1]
	cmp r2, #0
	add r3, r1, r0
	blt _02114C28
	ldrh r0, [r3]
	cmp r2, r0
	blt _02114C30
_02114C28:
	mov r0, #0
	bx lr
_02114C30:
	add r0, r3, r2, lsl #2
	ldr r0, [r0, #4]
	add r0, r1, r0
	bx lr
	arm_func_end FUN_ov16_02114c0c

	arm_func_start FUN_ov16_02114c40
FUN_ov16_02114c40: ; 0x02114C40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	mov r4, r1
	bl FUN_ov16_02114c0c
	add r0, r0, r5, lsl #3
	ldr r1, [r4, #4]
	ldrh r0, [r0, #8]
	add r1, r4, r1
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #4]
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02114c40

	arm_func_start FUN_ov16_02114c70
FUN_ov16_02114c70: ; 0x02114C70
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrh r0, [r1, #4]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_02114c70

	arm_func_start FUN_ov16_02114c90
FUN_ov16_02114c90: ; 0x02114C90
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x24]
	mov r4, #1
	cmp r0, #1
	blt _02114CDC
_02114CA8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_0211685c
	mov r1, r0
	mov r0, r5
	bl FUN_ov16_02114c70
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x24]
	add r4, r4, #1
	cmp r4, r0
	ble _02114CA8
_02114CDC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02114c90

	arm_func_start FUN_ov16_02114ce4
FUN_ov16_02114ce4: ; 0x02114CE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0
	mov r2, #0x48
	mov r4, r1
	bl MIi_CpuClearFast
	mov r2, #0x3f
	sub r0, r2, #0x40
	ldr lr, _02114D38 ; =0x00007FFF
	mov r5, #0x1f
	mov r12, #0x32
	mov r3, #0x64
	mov r1, #0x1000
	strb r5, [r4, #0xc]
	strh lr, [r4, #0xe]
	strb r12, [r4, #0x26]
	strb r3, [r4, #0x27]
	strb r2, [r4, #0xd]
	str r1, [r4, #0x44]
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	ldmfd sp!, {r3, r4, r5, pc}
_02114D38: .word 0x00007FFF
	arm_func_end FUN_ov16_02114ce4

	arm_func_start FUN_ov16_02114d3c
FUN_ov16_02114d3c: ; 0x02114D3C
	stmfd sp!, {r4, lr}
	mov r0, #0
	mov r2, #0x24
	mov r4, r1
	bl MIi_CpuClearFast
	ldr r0, _02114D64 ; =0x00007FFF
	mov r1, #0x1f
	strb r1, [r4, #7]
	strh r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02114D64: .word 0x00007FFF
	arm_func_end FUN_ov16_02114d3c

	arm_func_start FUN_ov16_02114d68
FUN_ov16_02114d68: ; 0x02114D68
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, #1
	mov r5, #0
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x30
	str r5, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x31
	str r5, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02114d68

	arm_func_start FUN_ov16_02114da8
FUN_ov16_02114da8: ; 0x02114DA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _02114DF0
	mov r6, #0
	add r1, sp, #0xc
	str r6, [sp, #0xc]
	mov r0, #0x20
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r7, #0x44]
	mov r1, r6
	and r3, r0, #0xff
	mov r2, #0x30
	b _02114E60
_02114DF0:
	ldrh r0, [r4, #0xa]
	tst r0, #0x4000
	bne _02114E08
	ldrh r0, [r5, #4]
	tst r0, #0x4000
	beq _02114E24
_02114E08:
	mov r3, #0x10
	add r1, sp, #8
	mov r0, #0x20
	mov r2, #1
	str r3, [sp, #8]
	mov r6, #2
	b _02114E44
_02114E24:
	ldrh r3, [r5, #8]
	ldrh r2, [r4, #0xe]
	add r1, sp, #4
	mov r0, #0x20
	and r3, r3, r2
	mov r2, #1
	str r3, [sp, #4]
	mov r6, #0
_02114E44:
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r4, #0xc]
	ldrb r3, [r5, #7]
	ldrb r2, [r4, #0xd]
	mov r1, #0x800
	cmp r3, r0
	movhs r3, r0
_02114E60:
	mov r0, r6, lsl #4
	orr r1, r1, #0x3000
	orr r0, r0, #0xc0
	orr r0, r1, r0
	orr r0, r0, r2, lsl #24
	orr r3, r0, r3, lsl #16
	add r1, sp, #0
	mov r0, #0x29
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02114da8

	arm_func_start FUN_ov16_02114e94
FUN_ov16_02114e94: ; 0x02114E94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r4, #0
	mov r9, r0
	mov r5, r3
	mov r8, r2
	mov r1, r5
	mov r2, r4
	add r0, r9, #4
	str r4, [sp, #0x14]
	str r4, [sp, #0x10]
	ldr r7, [sp, #0x3c]
	ldr r6, [sp, #0x40]
	bl FUN_0205999c
	ldr r1, [sp, #0x38]
	add r2, sp, #0xc
	add r0, r9, #4
	bl FUN_02059aa0
	ldr r0, [sp, #0xc]
	cmp r0, #0x20
	blt _02114F04
	ldr r1, [sp, #0x38]
	add r3, sp, #0x10
	mov r2, r4
	add r0, r9, #4
	bl FUN_02059cc0
	cmp r0, #0
	bne _02114F10
_02114F04:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02114F10:
	ldr r1, [r8, #0x14]
	cmp r1, #0
	ldrne r0, [r8]
	strne r0, [sp, #0x14]
	bne _02114F6C
	ldrh r0, [r5, #0xc]
	tst r0, #0x10
	beq _02114F5C
	ldr r0, _02115054 ; =0x02099F30
	add r2, sp, #0x14
	ldr r0, [r0]
	add r1, r5, #0x18
	bl FUN_02051bb8
	ldr r1, [sp, #0x14]
	ldr r0, [r7, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x14]
	str r0, [r8]
	b _02114F6C
_02114F5C:
	cmp r1, #0
	addeq sp, sp, #0x18
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02114F6C:
	ldrh r0, [r8, #0xa]
	tst r0, #0x40
	ldrb r0, [r6, #2]
	movne r5, #0
	moveq r5, #1
	bl FUN_0205162c
	mov r4, r0
	ldr r0, [sp, #0xc]
	mov r1, r4
	bl _u32_div_f
	ldrb r1, [r8, #8]
	cmp r1, r0
	ldr r0, [sp, #0x10]
	movhi r1, #0
	mla r1, r4, r1, r0
	str r1, [sp, #0x10]
	ldrb r0, [r6, #2]
	mov r4, #1
	mov r2, r4
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #4
	mov r0, r1, lsr r0
	str r0, [sp, #8]
	add r1, sp, #8
	mov r0, #0x2b
	bl NNS_G3dGeBufferOP_N
	ldrh r0, [r8, #0xa]
	tst r0, #0x200
	ldrb r0, [r6, #2]
	bne _02115020
	ldr r2, [sp, #0x14]
	mov r0, r0, lsl #0x1a
	orr r0, r0, r2, lsr #3
	ldrh r1, [r7, #8]
	ldrh r2, [r7, #0xa]
	orr r0, r0, r1, lsl #20
	orr r0, r0, r2, lsl #23
	orr r3, r0, r5, lsl #29
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x2a
	str r3, [sp, #4]
	b _02115044
_02115020:
	ldr r2, [sp, #0x14]
	mov r0, r0, lsl #0x1a
	orr r0, r0, r2, lsr #3
	orr r0, r0, #0x1200000
	orr r3, r0, r5, lsl #29
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x2a
	str r3, [sp]
_02115044:
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02115054: .word unk_02099F30
	arm_func_end FUN_ov16_02114e94

	arm_func_start FUN_ov16_02115058
FUN_ov16_02115058: ; 0x02115058
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x128
	mov r4, #0
	mov r6, r2
	str r4, [sp, #0x11c]
	str r4, [sp, #0x120]
	str r4, [sp, #0x124]
	ldr r2, [r6, #0x44]
	str r0, [sp]
	str r2, [sp, #0x110]
	str r2, [sp, #0x114]
	str r2, [sp, #0x118]
	ldrh r0, [r6, #0xa]
	mov r10, r1
	mov r5, r3
	tst r0, #0x200
	ldr r0, [sp, #0x154]
	movne r7, #0x20
	str r0, [sp, #0x154]
	ldrh r0, [r6, #0x24]
	ldr r4, [sp, #0x150]
	ldr r11, [sp, #0x158]
	str r0, [sp, #0x10]
	movne r8, r7
	bne _021150D8
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mov r2, #1
	mov r1, r2, lsl r1
	mov r0, r2, lsl r0
	mov r7, r1, lsl #3
	mov r8, r0, lsl #3
_021150D8:
	cmp r7, #0
	mov r0, r7, lsl #0xc
	ble _021150F8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115104
_021150F8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115104:
	bl _ffix
	str r0, [sp, #0xc]
	cmp r8, #0
	mov r0, r8, lsl #0xc
	ble _0211512C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115138
_0211512C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115138:
	bl _ffix
	ldr r1, [sp, #0x15c]
	str r0, [sp, #8]
	cmp r1, #0
	mov r1, r0
	ldr r0, [sp]
	mov r9, #0
	str r1, [r0, #0x34]
	ldr r1, [sp, #0xc]
	str r9, [r0, #0x38]
	str r1, [r0, #0x30]
	str r9, [r0, #0x3c]
	ldrne r0, _021158F4 ; =0x02099F24
	mov r2, r9
	ldrne r0, [r0]
	cmpne r0, #0
	beq _021151E8
	bl FUN_ov16_020f7c34
	ldr r0, [r0, #4]
	rsb r0, r0, #0x8000
	str r0, [sp, #4]
	bl labs
	rsb r12, r0, #0x8000
	mov lr, #0x60
	umull r3, r2, r12, lr
	mla r2, r12, r9, r2
	mov r1, r12, asr #0x1f
	mla r2, r1, lr, r2
	adds r3, r3, #0x800
	adc r1, r2, r9
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r0, #0x2000
	umull r1, r12, r2, r0
	mla r12, r2, r9, r12
	mov r3, r2, asr #0x1f
	mla r12, r3, r0, r12
	adds r1, r1, #0x800
	adc r3, r12, r9
	ldr r0, [sp, #4]
	mov r9, r1, lsr #0xc
	orr r9, r9, r3, lsl #20
	cmp r0, #0
	rsblt r9, r9, #0
_021151E8:
	ldr r1, [r10, #0x14]
	ldr r0, [r6, #0x30]
	ldr r12, [r10, #0x10]
	add r0, r1, r0
	sub r1, r0, r2
	ldr r0, [r6, #0x2c]
	ldr r3, [r10, #0xc]
	add r0, r12, r0
	ldr r2, [r6, #0x28]
	add r2, r3, r2
	sub r2, r2, r9
	str r2, [sp, #0x11c]
	str r0, [sp, #0x120]
	str r1, [sp, #0x124]
	ldrh r0, [r6, #0xa]
	tst r0, #0x1000
	bne _02115238
	ldrh r0, [r10, #4]
	tst r0, #0x1000
	beq _0211536C
_02115238:
	ldrh r0, [r6, #0xa]
	tst r0, #0x2000
	bne _02115250
	ldrh r0, [r10, #4]
	tst r0, #0x2000
	beq _021152D0
_02115250:
	ldr r1, [sp, #0x120]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	bl FUN_02053a5c
	cmp r0, #0
	ble _02115298
	ldr r1, [sp, #0x120]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	bl FUN_02053a5c
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021152BC
_02115298:
	ldr r1, [sp, #0x120]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	bl FUN_02053a5c
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021152BC:
	bl _ffix
	ldr r1, [sp, #0x124]
	rsb r0, r0, #0
	add r0, r1, r0
	str r0, [sp, #0x124]
_021152D0:
	ldr r3, [sp, #0x11c]
	ldr r2, [sp, #0x120]
	mov r0, r3, asr #0xb
	add r0, r3, r0, lsr #20
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	add r2, sp, #0x1c
	add r3, sp, #0x18
	mov r0, r0, asr #0xc
	mov r1, r1, asr #0xc
	bl FUN_ov16_020efee8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115320
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211532C
_02115320:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211532C:
	bl _ffix
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x11c]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _02115358
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115364
_02115358:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115364:
	bl _ffix
	str r0, [sp, #0x120]
_0211536C:
	ldr r1, [sp, #0x124]
	ldr r0, [r6, #0x3c]
	cmp r11, #0
	add r0, r1, r0
	str r0, [sp, #0x124]
	ldrne r0, [sp, #0x120]
	add r1, sp, #0x11c
	rsbne r0, r0, #0
	strne r0, [sp, #0x120]
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x15c]
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	bne _021153B8
	cmp r11, #0
	bne _021155D8
_021153B8:
	ldrh r0, [r4]
	mov r0, r0, lsl #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021153E0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021153EC
_021153E0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021153EC:
	bl _ffix
	ldrh r1, [r4, #2]
	mov r9, r0
	add r0, r1, #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211541C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115428
_0211541C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115428:
	bl _ffix
	ldrb r3, [r6, #0x26]
	ldrb r2, [r6, #0x27]
	ldr r1, _021158F8 ; =0x51EB851F
	sub r3, r3, #0x32
	mul r3, r9, r3
	sub r2, r2, #0x64
	mul r2, r0, r2
	smull r0, r9, r1, r3
	mov r0, r3, lsr #0x1f
	add r9, r0, r9, asr #5
	smull r0, r10, r1, r2
	mov r0, r2, lsr #0x1f
	add r10, r0, r10, asr #5
	rsb r0, r9, #0
	str r0, [sp, #0x44]
	rsb r0, r10, #0
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x4c]
	mov r0, #0x1c
	add r1, sp, #0x44
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x15c]
	cmp r0, #0
	beq _0211551C
	ldr r0, [sp, #0x10]
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r2, r0, lsl #1
	ldr r0, _021158FC ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r2, [r0, r2]
	ldrsh r1, [r0, r1]
	add r0, sp, #0xb0
	blx MTX_RotZ43_
	ldr r0, _021158FC ; =FX_SinCosTable_
	ldrsh r2, [r0, #2]
	ldrsh r1, [r0]
	add r0, sp, #0x50
	blx MTX_RotY43_
	ldr r0, _02115900 ; =0x0208A874
	ldrsh r2, [r0, #2]
	ldrsh r1, [r0]
	add r0, sp, #0x80
	blx MTX_RotX43_
	add r1, sp, #0xb0
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x19
	add r1, sp, #0x80
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	b _021155B8
_0211551C:
	cmp r11, #0
	bne _02115574
	ldr r12, _02115904 ; =NNS_G3dGlb_cameraMtx
	add lr, sp, #0xe0
	ldmia r12!, {r0, r1, r2, r3}
	str lr, [sp, #0x14]
	stmia lr!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r0, #0
	str r0, [sp, #0x10c]
	str r0, [sp, #0x108]
	str r0, [sp, #0x104]
	ldr r0, [sp, #0x14]
	mov r1, r0
	bl MTX_Inverse43
	ldr r1, [sp, #0x14]
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_02115574:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021155B8
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r2, r0, #1
	ldr r1, _021158FC ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	ldrsh r2, [r1, r2]
	ldrsh r1, [r1, r0]
	add r0, sp, #0xe0
	blx MTX_RotZ43_
	add r1, sp, #0xe0
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_021155B8:
	mov r3, #0
	add r1, sp, #0x38
	mov r0, #0x1c
	mov r2, #3
	str r9, [sp, #0x38]
	str r10, [sp, #0x3c]
	str r3, [sp, #0x40]
	bl NNS_G3dGeBufferOP_N
_021155D8:
	add r1, sp, #0x110
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x154]
	ldr r0, [r0, #4]
	tst r0, #0x10000000
	beq _02115684
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x10
	strh r0, [r6, #0xa]
	tst r0, #0x200
	bne _0211564C
	ldrh r1, [r4]
	ldrh r0, [r5]
	sub r0, r1, r0
	sub r0, r0, r7
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211563C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115648
_0211563C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115648:
	b _02115710
_0211564C:
	ldrh r0, [r4]
	sub r0, r0, r7
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115674
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115680
_02115674:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115680:
	b _02115710
_02115684:
	ldrh r1, [r6, #0xa]
	ldr r0, _02115908 ; =0x0000FFEF
	and r0, r1, r0
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #0x200
	bne _021156DC
	ldrh r1, [r5]
	ldrh r0, [r4]
	sub r0, r1, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021156CC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021156D8
_021156CC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021156D8:
	b _02115710
_021156DC:
	ldrh r0, [r4]
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115704
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115710
_02115704:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115710:
	bl _ffix
	str r0, [sp, #0x11c]
	ldr r0, [sp, #0x154]
	mov r9, #0
	ldr r0, [r0, #4]
	mov r7, #3
	tst r0, #0x20000000
	beq _021157BC
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x20
	strh r0, [r6, #0xa]
	tst r0, #0x200
	bne _02115784
	ldrh r1, [r4, #2]
	ldrh r0, [r5, #2]
	sub r0, r1, r0
	sub r0, r0, r8
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115774
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115780
_02115774:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115780:
	b _02115848
_02115784:
	ldrh r0, [r4, #2]
	sub r0, r0, r8
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021157AC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021157B8
_021157AC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021157B8:
	b _02115848
_021157BC:
	ldrh r1, [r6, #0xa]
	ldr r0, _0211590C ; =0x0000FFDF
	and r0, r1, r0
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #0x200
	bne _02115814
	ldrh r1, [r5, #2]
	ldrh r0, [r4, #2]
	sub r0, r1, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115804
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115810
_02115804:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115810:
	b _02115848
_02115814:
	ldrh r0, [r4, #2]
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211583C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115848
_0211583C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115848:
	bl _ffix
	rsb r0, r0, #0
	str r0, [sp, #0x120]
	cmp r11, #0
	beq _0211587C
	ldr r2, [sp, #0x11c]
	ldr r0, [r6, #0x34]
	ldr r1, [sp, #0x120]
	add r0, r2, r0
	str r0, [sp, #0x11c]
	ldr r0, [r6, #0x38]
	sub r0, r1, r0
	b _02115898
_0211587C:
	ldr r2, [sp, #0x11c]
	ldr r0, [r6, #0x34]
	ldr r1, [sp, #0x120]
	add r0, r2, r0
	str r0, [sp, #0x11c]
	ldr r0, [r6, #0x38]
	add r0, r1, r0
_02115898:
	str r0, [sp, #0x120]
	ldr r4, [sp, #0x120]
	ldr r3, [sp, #0x11c]
	add r1, sp, #0x2c
	mov r2, r7
	mov r0, #0x1c
	str r3, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r9, [sp, #0x34]
	bl NNS_G3dGeBufferOP_N
	ldr r3, [sp, #0xc]
	mov r4, #0x1000
	str r3, [sp, #0x20]
	ldr r3, [sp, #8]
	add r1, sp, #0x20
	mov r2, r7
	mov r0, #0x1b
	str r3, [sp, #0x24]
	str r4, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add sp, sp, #0x128
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021158F4: .word unk_02099F24
_021158F8: .word 0x51EB851F
_021158FC: .word FX_SinCosTable_
_02115900: .word 0x0208A874
_02115904: .word NNS_G3dGlb_cameraMtx
_02115908: .word 0x0000FFEF
_0211590C: .word 0x0000FFDF
	arm_func_end FUN_ov16_02115058

	arm_func_start FUN_ov16_02115910
FUN_ov16_02115910: ; 0x02115910
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	ldr r4, [r2, #0x44]
	mov r1, #0x800
	mov r3, r4, asr #0x1f
	mov r5, r3, lsl #0xb
	ldrh r7, [r2, #0xa]
	adds r6, r1, r4, lsl #11
	orr r5, r5, r4, lsr #21
	ldr r3, [r0, #0x38]
	ldr r8, [r0, #0x30]
	adc r1, r5, #0
	ldr r4, [r0, #0x3c]
	ldr r9, [r0, #0x34]
	mov r0, r6, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldrh r2, [r2, #0x24]
	mov r5, r3
	mov r6, r4
	add r8, r3, r8
	ands r1, r7, #0x10
	subne r5, r8, r0
	subne r8, r3, r0
	ands r10, r7, #0x20
	add r9, r4, r9
	subne r6, r9, r0
	subne r9, r4, r0
	mov r7, #0
	mov r4, #0x1000
	cmp r2, #0
	beq _02115ABC
	cmp r2, #0xe000
	movhs r2, #0
	movhs r3, r2
	bhs _02115A70
	cmp r2, #0xc000
	blo _021159CC
	sub r2, r2, #0xc000
	mov r2, r2, lsl #1
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r3, r2, #1
	ldr r2, _02115CFC ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	ldrsh r3, [r2, r3]
	mov r2, #0
	b _02115A70
_021159CC:
	cmp r2, #0xa000
	movhs r2, #0
	movhs r3, r4
	bhs _02115A70
	cmp r2, #0x8000
	blo _02115A0C
	sub r2, r2, #0x8000
	mov r2, r2, lsl #1
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r3, r2, #1
	ldr r2, _02115CFC ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	ldrsh r2, [r2, r3]
	mov r3, r4
	b _02115A70
_02115A0C:
	cmp r2, #0x6000
	blo _02115A34
	sub r2, r2, #0x6000
	mov r2, r2, lsl #1
	mov r3, r2, asr #4
	ldr r2, _02115CFC ; =FX_SinCosTable_
	mov r3, r3, lsl #2
	ldrsh r3, [r2, r3]
	mov r2, r4
	b _02115A70
_02115A34:
	cmp r2, #0x4000
	movhs r2, r4
	movhs r3, #0
	bhs _02115A70
	cmp r2, #0x2000
	movlo r2, #0
	movlo r3, r2
	blo _02115A70
	sub r2, r2, #0x2000
	mov r2, r2, lsl #1
	mov r3, r2, asr #4
	ldr r2, _02115CFC ; =FX_SinCosTable_
	mov r3, r3, lsl #2
	ldrsh r2, [r2, r3]
	mov r3, #0
_02115A70:
	cmp r1, #0
	rsbne r2, r2, #0
	cmp r10, #0
	smull r10, r1, r2, r0
	rsbne r3, r3, #0
	adds r2, r10, #0x800
	smull r10, r0, r3, r0
	mov r11, #0
	adc r3, r1, r11
	adds r1, r10, #0x800
	mov r2, r2, lsr #0xc
	orr r2, r2, r3, lsl #20
	adc r0, r0, r11
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r5, r5, r2
	sub r8, r8, r2
	sub r6, r6, r1
	sub r9, r9, r1
_02115ABC:
	mov r11, #1
	add r1, sp, #0x48
	mov r2, r11
	mov r0, #0x40
	str r11, [sp, #0x48]
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x70]
	mov r1, r5, lsl #8
	cmp r0, #0
	mov r0, r6, lsl #8
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	beq _02115BF0
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r6, r1, lsr #0x10
	mov r5, r0, lsr #0x10
	mov r4, #0x22
	orr r3, r6, r5, lsl #16
	add r1, sp, #0x44
	mov r0, r4
	mov r2, r11
	str r3, [sp, #0x44]
	bl NNS_G3dGeBufferOP_N
	mov r3, #0x800
	add r1, sp, #0x3c
	mov r0, #0x23
	mov r2, #2
	str r3, [sp, #0x3c]
	str r7, [sp, #0x40]
	bl NNS_G3dGeBufferOP_N
	mov r0, r9, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	orr r2, r6, r7, lsl #16
	str r2, [sp, #0x38]
	add r1, sp, #0x38
	mov r0, r4
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	mov r6, #0x25
	mov r9, #0xf0000000
	mov r0, r6
	add r1, sp, #0x34
	mov r2, r11
	str r9, [sp, #0x34]
	bl NNS_G3dGeBufferOP_N
	mov r0, r8, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	orr r0, r8, r7, lsl #16
	str r0, [sp, #0x30]
	mov r0, r4
	add r1, sp, #0x30
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	add r0, r9, #0x1000
	str r0, [sp, #0x2c]
	mov r0, r6
	add r1, sp, #0x2c
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	orr r0, r8, r5, lsl #16
	str r0, [sp, #0x28]
	mov r0, r4
	add r1, sp, #0x28
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	mov r1, #0x1800
	str r1, [sp, #0x24]
	mov r0, r6
	mov r2, r11
	add r1, sp, #0x24
	bl NNS_G3dGeBufferOP_N
	b _02115CE4
_02115BF0:
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r10, r1, lsr #0x10
	mov r6, r0, lsr #0x10
	mov r5, #0x22
	orr r3, r10, r6, lsl #16
	add r1, sp, #0x20
	mov r0, r5
	mov r2, r11
	str r3, [sp, #0x20]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x18
	mov r0, #0x23
	mov r2, #2
	str r7, [sp, #0x18]
	str r7, [sp, #0x1c]
	bl NNS_G3dGeBufferOP_N
	mov r0, r9, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	orr r0, r10, r7, lsl #16
	str r0, [sp, #0x14]
	add r1, sp, #0x14
	mov r0, r5
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	mov r10, #0x25
	mov r9, #0xf0000000
	mov r0, r10
	add r1, sp, #0x10
	mov r2, r11
	str r9, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	mov r0, r8, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	orr r0, r8, r7, lsl #16
	str r0, [sp, #0xc]
	mov r0, r5
	add r1, sp, #0xc
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	add r0, r9, #0x1000
	str r0, [sp, #8]
	mov r0, r10
	add r1, sp, #8
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	orr r0, r8, r6, lsl #16
	str r0, [sp, #4]
	mov r0, r5
	add r1, sp, #4
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	mov r0, r10
	mov r2, r11
	add r1, sp, #0
	str r4, [sp]
	bl NNS_G3dGeBufferOP_N
_02115CE4:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02115CFC: .word FX_SinCosTable_
	arm_func_end FUN_ov16_02115910

	arm_func_start FUN_ov16_02115d00
FUN_ov16_02115d00: ; 0x02115D00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r8, r2
	mov r9, r1
	ldrh r1, [r8, #4]
	mov r10, r0
	str r3, [sp, #0x10]
	ldr r7, [sp, #0x50]
	bl FUN_ov16_02116920
	str r0, [sp, #0x18]
	ldrh r1, [r8, #6]
	mov r0, r10
	bl FUN_ov16_02116920
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r10, #4
	bl FUN_02058e50
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x14]
	add r0, r10, #4
	bl FUN_02058e50
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x18]
	add r0, r10, #4
	mov r2, #0
	bl FUN_02059bb4
	movs r4, r0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r8, #0x10]
	mov r0, r10
	mov r1, r4
	bl FUN_ov16_02114c0c
	str r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r8, #0x12]
	ldr r3, [r4, #4]
	ldrh r1, [r8, #0xa]
	add r0, r0, r2, lsl #3
	ldrh r0, [r0, #8]
	add r11, r4, r3
	tst r1, #0x200
	add r0, r11, r0, lsl #2
	ldr r0, [r0, #4]
	movne r6, #1
	add r0, r4, r0
	ldreqh r6, [r0, #8]
	str r0, [sp, #0x1c]
	add r4, r0, #0xc
	cmp r6, #0
	mov r5, #0
	addle sp, sp, #0x28
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02115DEC:
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	stmia sp, {r0, r4, r11}
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_02114e94
	cmp r0, #0
	beq _02115E9C
	mov r1, #0
	mov r0, #0x11
	mov r2, r1
	bl NNS_G3dGeBufferOP_N
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02114da8
	ldr r0, [sp, #0x1c]
	mov r1, r9
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r2, r8
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r3, r4
	str r0, [sp, #8]
	mov r0, r10
	str r7, [sp, #0xc]
	bl FUN_ov16_02115058
	cmp r0, #0
	beq _02115E84
	str r7, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r4
	bl FUN_ov16_02115910
_02115E84:
	mov r0, #1
	str r0, [sp, #0x24]
	mov r0, #0x12
	add r1, sp, #0x24
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_02115E9C:
	add r4, r4, #0x10
	add r5, r5, #1
	cmp r5, r6
	blt _02115DEC
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02115d00

	arm_func_start FUN_ov16_02115eb4
FUN_ov16_02115eb4: ; 0x02115EB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r1
	ldr r1, [r10, #0x14]
	mov r7, r0
	cmp r1, #0
	mov r6, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r1, [r10, #0x10]
	cmp r1, r2
	bne _02115EF4
	ldrsh r0, [r10, #0x12]
	cmp r0, r3
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02115EF4:
	cmp r1, #0
	ldrgesh r0, [r10, #0x12]
	cmpge r0, #0
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r1, [r10, #4]
	mov r0, r7
	bl FUN_ov16_02116920
	mov r5, r0
	mov r1, r5
	add r0, r7, #4
	bl FUN_02058e50
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r5
	mov r2, r6
	add r0, r7, #4
	bl FUN_02059bb4
	mov r4, r0
	mov r1, r5
	mov r2, r6
	add r0, r7, #4
	bl FUN_0205999c
	mov r5, r0
	ldrsh r2, [r10, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_02114c0c
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r10, #0x12]
	ldrh r1, [r10, #0xa]
	ldr r3, [r4, #4]
	add r0, r0, r2, lsl #3
	ldrh r2, [r0, #8]
	add r0, r4, r3
	str r0, [sp, #4]
	add r0, r0, r2, lsl #2
	ldr r0, [r0, #4]
	tst r1, #0x200
	add r0, r4, r0
	str r0, [sp, #8]
	add r4, r0, #0xc
	beq _02115FBC
	ldr r0, [r10, #0x14]
	mov r1, r6
	mov r2, #0x200
	bl MI_CpuFill8
_02115FBC:
	ldr r0, [sp, #8]
	mov r7, #0
	ldrh r0, [r0, #8]
	str r7, [sp]
	cmp r0, #0
	ble _0211612C
_02115FD4:
	ldr r2, [sp, #4]
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldrb r2, [r2, #2]
	bl FUN_020515c8
	ldrh r1, [r10, #0xa]
	mov r6, r0
	tst r1, #0x200
	beq _021160F0
	ldrh r11, [r4]
	ldrh r1, [r4, #0xa]
	mov r2, #8
	ldrh r0, [r4, #8]
	tst r11, #1
	mov r7, r2, lsl r1
	mov r0, r2, lsl r0
	ldrh r8, [r4, #2]
	bne _02116060
	cmp r7, #0
	mov r6, #0
	ble _021160E8
	mov r9, r0, asr #1
_0211602C:
	ldr r0, [r4, #0xc]
	ldr r2, [r10, #0x14]
	add r0, r5, r0
	mla r0, r9, r6, r0
	add r1, r6, r8
	add r1, r2, r1, lsl #4
	mov r2, r9
	add r1, r1, r11, asr #1
	bl MI_CpuCopy8
	add r6, r6, #1
	cmp r6, r7
	blt _0211602C
	b _021160E8
_02116060:
	cmp r7, #0
	mov r1, #0
	ble _021160E8
	mov r0, r0, asr #1
	add r3, r11, #1
	mov lr, r1
_02116078:
	ldr r2, [r4, #0xc]
	ldr r6, [r10, #0x14]
	add r2, r5, r2
	mla r9, r0, r1, r2
	cmp r0, #0
	add r2, r1, r8
	add r2, r6, r2, lsl #4
	add r11, r2, r3, asr #1
	mov r6, lr
	ble _021160DC
_021160A0:
	ldrb r2, [r11, #-1]
	ldrb r12, [r9]
	add r6, r6, #1
	and r2, r2, #0xf
	mov r12, r12, lsl #0x1c
	orr r2, r2, r12, lsr #24
	strb r2, [r11, #-1]
	cmp r6, r0
	ldrb r2, [r11]
	ldrb r12, [r9], #1
	and r2, r2, #0xf0
	and r12, r12, #0xf0
	orr r2, r2, r12, asr #4
	strb r2, [r11], #1
	blt _021160A0
_021160DC:
	add r1, r1, #1
	cmp r1, r7
	blt _02116078
_021160E8:
	mov r7, #0x200
	b _0211610C
_021160F0:
	ldr r0, [r4, #0xc]
	ldr r1, [r10, #0x14]
	mov r2, r6
	add r0, r5, r0
	add r1, r1, r7
	bl MIi_CpuCopy32
	add r7, r7, r6
_0211610C:
	ldr r0, [sp, #8]
	add r4, r4, #0x10
	ldrh r1, [r0, #8]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r1
	blt _02115FD4
_0211612C:
	ldr r0, [r10, #0x14]
	mov r1, r7
	bl DC_FlushRange
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02115eb4

	arm_func_start FUN_ov16_02116140
FUN_ov16_02116140: ; 0x02116140
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldrh r1, [r4, #4]
	mov r8, r0
	mov r5, #0
	mov r7, r2
	mov r2, r5
	add r0, r8, #4
	mov r6, r3
	bl FUN_02059b8c
	movs r1, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r2, r7
	bl FUN_ov16_02114c0c
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x1c]
	strh r7, [r4, #0x10]
	cmp r1, #0
	beq _021161D8
	strh r5, [r4, #0x12]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _021161C4
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021161D0
_021161C4:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_021161D0:
	bl _ffix
	str r0, [r4, #0x20]
_021161D8:
	ldr r0, [sp, #0x18]
	cmp r6, #0
	str r0, [r4, #0x1c]
	ldrneh r0, [r4, #0xa]
	strb r6, [r4, #0x1a]
	orrne r0, r0, #2
	strneh r0, [r4, #0xa]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02116140

	arm_func_start FUN_ov16_021161fc
FUN_ov16_021161fc: ; 0x021161FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrb r1, [r6, #0x1a]
	mov r7, r0
	mov r5, r2
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	ble _0211623C
	sub r0, r0, r5
	str r0, [r6, #0x1c]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r6, #0x1c]
_0211623C:
	ldrh r1, [r6, #4]
	mov r4, #0
	mov r2, r4
	add r0, r7, #4
	bl FUN_02059b8c
	movs r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r2, [r6, #0x10]
	mov r0, r7
	bl FUN_ov16_02114c0c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r2, [r6, #0x12]
	ldr r1, [r6, #0x20]
	add r3, r0, #8
	cmp r1, #0
	add r3, r3, r2, lsl #3
	bgt _02116348
	ldrh r1, [r3, #2]
	cmp r1, #0
	bne _021162E0
	ldrb r1, [r6, #0x1a]
	mov r2, #1
	strb r2, [r6, #0x1b]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _021162C4
_021162A8: ; jump table
	b _021162E0 ; case 0
	b _021162C4 ; case 1
	b _021162C4 ; case 2
	b _021162E0 ; case 3
	b _021162BC ; case 4
_021162BC:
	strb r4, [r6, #0x1a]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021162C4:
	ldrh r1, [r6, #0xa]
	ldr r0, _02116354 ; =0x0000FFFD
	mov r2, #0
	and r0, r1, r0
	strb r2, [r6, #0x1a]
	strh r0, [r6, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021162E0:
	ldrsh r4, [r6, #0x12]
	ldrh r1, [r3, #2]
	ldrsh r5, [r6, #0x10]
	strh r1, [r6, #0x12]
	ldrsh r1, [r6, #0x12]
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211631C
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02116328
_0211631C:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_02116328:
	bl _ffix
	str r0, [r6, #0x20]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02115eb4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116348:
	sub r0, r1, r5
	str r0, [r6, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116354: .word 0x0000FFFD
	arm_func_end FUN_ov16_021161fc

	arm_func_start FUN_ov16_02116358
FUN_ov16_02116358: ; 0x02116358
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r1]
	cmp r4, #0
	ldrne r5, [r2]
	cmpne r5, #0
	streq r3, [r1]
	streq r3, [r2]
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r12, r4
	cmp r4, #0
	beq _021163A0
	ldrb lr, [r3, #0x18]
_02116388:
	ldrb r0, [r12, #0x18]
	cmp lr, r0
	bhi _021163A0
	ldr r12, [r12, #0x20]
	cmp r12, #0
	bne _02116388
_021163A0:
	cmp r12, #0
	bne _021163C4
	str r3, [r5, #0x20]
	mov r0, #0
	str r0, [r3, #0x20]
	ldr r0, [r2]
	str r0, [r3, #0x1c]
	str r3, [r2]
	ldmfd sp!, {r3, r4, r5, pc}
_021163C4:
	cmp r12, r4
	streq r3, [r1]
	str r12, [r3, #0x20]
	ldr r0, [r12, #0x1c]
	str r0, [r3, #0x1c]
	str r3, [r12, #0x1c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02116358

	arm_func_start FUN_ov16_021163e0
FUN_ov16_021163e0: ; 0x021163E0
	ldr r0, [r1]
	cmp r3, r0
	ldreq r0, [r3, #0x20]
	streq r0, [r1]
	ldr r0, [r2]
	cmp r3, r0
	ldreq r0, [r3, #0x1c]
	streq r0, [r2]
	ldr r1, [r3, #0x1c]
	cmp r1, #0
	ldrne r0, [r3, #0x20]
	strne r0, [r1, #0x20]
	ldr r1, [r3, #0x20]
	cmp r1, #0
	ldrne r0, [r3, #0x1c]
	strne r0, [r1, #0x1c]
	mov r0, #0
	str r0, [r3, #0x1c]
	str r0, [r3, #0x20]
	bx lr
	arm_func_end FUN_ov16_021163e0

	arm_func_start FUN_ov16_02116430
FUN_ov16_02116430: ; 0x02116430
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	ldr r4, [r1, #0x14]
	ldr lr, [r2, #0x30]
	ldr r12, [r1, #0x10]
	ldr r3, [r2, #0x2c]
	ldr r0, [r2, #0x28]
	ldr r1, [r1, #0xc]
	add r12, r12, r3
	add r3, r1, r0
	add r4, r4, lr
	add r0, sp, #8
	add r1, sp, #4
	add r2, sp, #0
	str r3, [sp, #8]
	str r12, [sp, #0xc]
	str r4, [sp, #0x10]
	bl NNS_G3dWorldPosToScrPos
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [sp, #4]
	mvn r0, #0xf
	cmp r1, r0
	blt _021164B8
	cmp r1, #0x110
	bge _021164B8
	ldr r1, [sp]
	sub r0, r0, #0x10
	cmp r1, r0
	blt _021164B8
	cmp r1, #0xe0
	blt _021164C4
_021164B8:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r3, r4, pc}
_021164C4:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_02116430

	arm_func_start FUN_ov16_021164d0
FUN_ov16_021164d0: ; 0x021164D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r1
	ldrsh r5, [r6, #0x10]
	ldrsh r4, [r6, #0x12]
	ldr lr, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str lr, [sp]
	mov r7, r0
	str r12, [sp, #4]
	bl FUN_ov16_02116140
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r12, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	strb r12, [r6, #0x1b]
	bl FUN_ov16_02115eb4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021164d0

	arm_func_start FUN_ov16_0211652c
FUN_ov16_0211652c: ; 0x0211652C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, #0
	mov r6, r2
	cmp r1, #0
	cmpgt r6, #0
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	str r4, [r7, #0x2c]
	str r4, [r7, #0x40]
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #4
	bl FUN_02058644
	mov r0, #0x24
	mul r5, r6, r0
	ldr r0, _021165B0 ; =0x0209A250
	mov r1, r5
	bl FUN_0202de44
	movs r1, r0
	str r1, [r7, #0x20]
	bne _02116598
	mov r0, r7
	bl FUN_ov16_02116650
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116598:
	mov r0, r4
	mov r2, r5
	bl MIi_CpuClearFast
	str r6, [r7, #0x24]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021165B0: .word unk_0209A250
	arm_func_end FUN_ov16_0211652c

	arm_func_start FUN_ov16_021165b4
FUN_ov16_021165b4: ; 0x021165B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021165F8
	ldr r4, [r5, #0x24]
	cmp r4, #1
	blt _021165EC
_021165D4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_02116aa8
	sub r4, r4, #1
	cmp r4, #1
	bge _021165D4
_021165EC:
	ldr r1, [r5, #0x20]
	ldr r0, _02116618 ; =0x0209A250
	bl FUN_0202e1c0
_021165F8:
	add r0, r5, #4
	bl FUN_0205866c
	mov r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
_02116618: .word unk_0209A250
	arm_func_end FUN_ov16_021165b4

	arm_func_start FUN_ov16_0211661c
FUN_ov16_0211661c: ; 0x0211661C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02116648 ; =0x02099F78
	ldr r1, _0211664C ; =0x02119EA4
	bl L5_IniFileGetParam
	str r0, [r4, #0x44]
	cmp r0, #0x20
	movhs r0, #0x10
	strhs r0, [r4, #0x44]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02116648: .word unk_02099F78
_0211664C: .word ov16_02119EA4
	arm_func_end FUN_ov16_0211661c

	arm_func_start FUN_ov16_02116650
FUN_ov16_02116650: ; 0x02116650
	bx lr
	arm_func_end FUN_ov16_02116650

	arm_func_start FUN_ov16_02116654
FUN_ov16_02116654: ; 0x02116654
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7, #0x28]
	mov r6, r1
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0211666C:
	ldr r0, [r5]
	cmp r0, #0
	beq _021166CC
	ldrb r4, [r5, #6]
	cmp r4, #1
	blt _021166CC
_02116684:
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_021168c0
	movs r1, r0
	beq _021166C0
	ldr r0, [r7, #0x40]
	tst r0, #1
	beq _021166B4
	ldrh r0, [r1, #0xa]
	tst r0, #0x100
	beq _021166C0
_021166B4:
	mov r0, r7
	mov r2, r6
	bl FUN_ov16_021161fc
_021166C0:
	sub r4, r4, #1
	cmp r4, #1
	bge _02116684
_021166CC:
	ldr r5, [r5, #0x20]
	cmp r5, #0
	bne _0211666C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116654

	arm_func_start FUN_ov16_021166dc
FUN_ov16_021166dc: ; 0x021166DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #0x28]
	mov r8, r1
	mov r7, r2
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r0, r9
	bl FUN_ov16_02114d68
	ldr r6, [r9, #0x28]
_02116718:
	ldr r0, [r6]
	cmp r0, #0
	beq _021167E8
	ldrh r0, [r6, #4]
	tst r0, #2
	ldrneb r0, [r6, #7]
	cmpne r0, #0
	beq _021167E8
	ldrb r0, [r6, #6]
	mov r5, #1
	cmp r0, #1
	blt _021167E8
_02116748:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_021168c0
	movs r4, r0
	ldrneb r0, [r4, #0xc]
	cmpne r0, #0
	beq _021167D8
	ldrh r1, [r4, #0xa]
	tst r1, #2
	beq _021167D8
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bgt _021167D8
	cmp r8, #0
	beq _02116790
	tst r1, #0x80
	beq _021167A0
_02116790:
	cmp r8, #0
	bne _021167D8
	tst r1, #0x80
	beq _021167D8
_021167A0:
	cmp r8, #0
	bne _021167C0
	mov r0, r9
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_02116430
	cmp r0, #0
	beq _021167D8
_021167C0:
	mov r0, r9
	mov r1, r6
	mov r2, r4
	mov r3, r8
	str r7, [sp]
	bl FUN_ov16_02115d00
_021167D8:
	ldrb r0, [r6, #6]
	add r5, r5, #1
	cmp r5, r0
	ble _02116748
_021167E8:
	ldr r6, [r6, #0x20]
	cmp r6, #0
	bne _02116718
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_021166dc

	arm_func_start FUN_ov16_021167f8
FUN_ov16_021167f8: ; 0x021167F8
	ldr r12, _02116808 ; =FUN_ov16_021166dc
	mov r1, #1
	mov r2, #0
	bx r12
_02116808: .word FUN_ov16_021166dc
	arm_func_end FUN_ov16_021167f8

	arm_func_start FUN_ov16_0211680c
FUN_ov16_0211680c: ; 0x0211680C
	mov r1, #0
	ldr r12, _0211681C ; =FUN_ov16_021166dc
	mov r2, r1
	bx r12
_0211681C: .word FUN_ov16_021166dc
	arm_func_end FUN_ov16_0211680c

	arm_func_start FUN_ov16_02116820
FUN_ov16_02116820: ; 0x02116820
	ldr r12, _02116830 ; =FUN_ov16_021166dc
	mov r1, #0
	mov r2, #1
	bx r12
_02116830: .word FUN_ov16_021166dc
	arm_func_end FUN_ov16_02116820

	arm_func_start FUN_ov16_02116834
FUN_ov16_02116834: ; 0x02116834
	stmfd sp!, {r3, lr}
	add r0, r0, #4
	bl FUN_02059880
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02116834

	arm_func_start FUN_ov16_02116848
FUN_ov16_02116848: ; 0x02116848
	stmfd sp!, {r3, lr}
	add r0, r0, #4
	bl FUN_020598ec
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02116848

	arm_func_start FUN_ov16_0211685c
FUN_ov16_0211685c: ; 0x0211685C
	ldr r2, [r0, #0x20]
	cmp r2, #0
	ldrne r0, [r0, #0x24]
	cmpne r0, #0
	movle r0, #0
	bxle lr
	cmp r1, #0
	ble _02116884
	cmp r1, r0
	ble _0211688C
_02116884:
	mov r0, #0
	bx lr
_0211688C:
	sub r1, r1, #1
	mov r0, #0x24
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov16_0211685c

	arm_func_start FUN_ov16_0211689c
FUN_ov16_0211689c: ; 0x0211689C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_ov16_0211685c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_021168c0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0211689c

	arm_func_start FUN_ov16_021168c0
FUN_ov16_021168c0: ; 0x021168C0
	cmp r1, #0
	ldrne r3, [r1]
	cmpne r3, #0
	cmpne r2, #0
	ble _021168E0
	ldrb r0, [r1, #6]
	cmp r2, r0
	ble _021168E8
_021168E0:
	mov r0, #0
	bx lr
_021168E8:
	sub r1, r2, #1
	mov r0, #0x48
	mla r0, r1, r0, r3
	bx lr
	arm_func_end FUN_ov16_021168c0

	arm_func_start FUN_ov16_021168f8
FUN_ov16_021168f8: ; 0x021168F8
	ldr r12, _0211690C ; =FUN_02059038
	add r0, r0, #4
	and r2, r2, #0xff
	mov r3, #0
	bx r12
_0211690C: .word FUN_02059038
	arm_func_end FUN_ov16_021168f8

	arm_func_start FUN_ov16_02116910
FUN_ov16_02116910: ; 0x02116910
	ldr r12, _0211691C ; =FUN_020591e8
	add r0, r0, #4
	bx r12
_0211691C: .word FUN_020591e8
	arm_func_end FUN_ov16_02116910

	arm_func_start FUN_ov16_02116920
FUN_ov16_02116920: ; 0x02116920
	ldr r12, _0211692C ; =FUN_0205998c
	add r0, r0, #4
	bx r12
_0211692C: .word FUN_0205998c
	arm_func_end FUN_ov16_02116920

	arm_func_start FUN_ov16_02116930
FUN_ov16_02116930: ; 0x02116930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, #0
	mov r6, r2
	mov r2, r4
	add r0, r7, #4
	mov r5, r3
	bl FUN_02059b8c
	movs r1, r0
	beq _0211696C
	mov r0, r7
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_02114c40
	mov r4, r0
_0211696C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116930

	arm_func_start FUN_ov16_02116974
FUN_ov16_02116974: ; 0x02116974
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
	mov r5, r2
	mov r2, r4
	add r0, r6, #4
	bl FUN_02059b8c
	movs r1, r0
	beq _021169A8
	mov r0, r6
	mov r2, r5
	bl FUN_ov16_02114c0c
	mov r4, r0
_021169A8:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02116974

	arm_func_start FUN_ov16_021169b0
FUN_ov16_021169b0: ; 0x021169B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r1
	mov r6, r0
	cmp r9, #0
	ble _021169CC
	cmp r9, #0xfe
	blt _021169D4
_021169CC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021169D4:
	bl FUN_ov16_02114c90
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_0211685c
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_02114d3c
	mov r0, #0x48
	mul r8, r9, r0
	ldr r0, _02116AA4 ; =0x0209A250
	mov r1, r8
	bl FUN_0202de44
	movs r7, r0
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, r7
	mov r2, r8
	bl MIi_CpuClearFast
	str r7, [r5]
	strb r9, [r5, #6]
	ldrh r1, [r5, #4]
	mov r0, r6
	mov r3, r5
	orr r1, r1, #3
	strh r1, [r5, #4]
	add r1, r6, #0x28
	add r2, r6, #0x2c
	bl FUN_ov16_02116358
	ldrb r8, [r5, #6]
	cmp r8, #1
	blt _02116A9C
_02116A60:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_021168c0
	movs r7, r0
	beq _02116A90
	mov r0, r6
	mov r1, r7
	bl FUN_ov16_02114ce4
	ldrh r0, [r7, #0xa]
	orr r0, r0, #1
	strh r0, [r7, #0xa]
_02116A90:
	sub r8, r8, #1
	cmp r8, #1
	bge _02116A60
_02116A9C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02116AA4: .word unk_0209A250
	arm_func_end FUN_ov16_021169b0

	arm_func_start FUN_ov16_02116aa8
FUN_ov16_02116aa8: ; 0x02116AA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_0211685c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	tst r0, #1
	beq _02116ADC
	mov r0, r5
	mov r3, r4
	add r1, r5, #0x28
	add r2, r5, #0x2c
	bl FUN_ov16_021163e0
_02116ADC:
	ldr r1, [r4]
	cmp r1, #0
	beq _02116AF0
	ldr r0, _02116B04 ; =0x0209A250
	bl FUN_0202e1c0
_02116AF0:
	mov r1, r4
	mov r0, #0
	mov r2, #0x24
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, pc}
_02116B04: .word unk_0209A250
	arm_func_end FUN_ov16_02116aa8

	arm_func_start FUN_ov16_02116b08
FUN_ov16_02116b08: ; 0x02116B08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	movs r6, r3
	mov r7, r2
	mov r9, r1
	movmi r6, r7
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_02116920
	mov r5, r0
	mov r0, r8
	mov r1, r6
	bl FUN_ov16_02116920
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	mov r1, r9
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6, lsl #0x10
	mov r9, r0, lsr #0x10
	mvn r6, #0
_02116BA0:
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	strneh r9, [r0, #6]
	ldrneh r1, [r0, #4]
	sub r5, r5, #1
	cmpne r1, r7
	strneh r7, [r0, #4]
	strneh r6, [r0, #0x10]
	strneh r6, [r0, #0x12]
	cmp r5, #1
	bge _02116BA0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02116b08

	arm_func_start FUN_ov16_02116bdc
FUN_ov16_02116bdc: ; 0x02116BDC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r6, r1
	mov r1, r5
	mov r4, r0
	bl FUN_ov16_02116920
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r6
	bl FUN_ov16_0211685c
	movs r6, r0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r7, [r6, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5, lsl #0x10
	mov r5, r0, lsr #0x10
_02116C38:
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r7, r7, #1
	strneh r5, [r0, #6]
	cmp r7, #1
	bge _02116C38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116bdc

	arm_func_start FUN_ov16_02116c60
FUN_ov16_02116c60: ; 0x02116C60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_02116C8C:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneb r6, [r0, #8]
	cmp r5, #1
	bge _02116C8C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116c60

	arm_func_start FUN_ov16_02116cb4
FUN_ov16_02116cb4: ; 0x02116CB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r7, r2
	cmp r3, #0
	bne _02116CD0
	bl FUN_ov16_02116d30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116CD0:
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02116D2C ; =0x00007BC3
	and r0, r7, r0
	mov r7, r0, lsl #0x10
_02116CFC:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	ldrneh r1, [r0, #0xa]
	sub r5, r5, #1
	orrne r1, r1, r7, lsr #16
	strneh r1, [r0, #0xa]
	cmp r5, #1
	bge _02116CFC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116D2C: .word 0x00007BC3
	arm_func_end FUN_ov16_02116cb4

	arm_func_start FUN_ov16_02116d30
FUN_ov16_02116d30: ; 0x02116D30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r2
	bl FUN_ov16_0211685c
	movs r6, r0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r7, [r6, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mvn r0, r5
	mov r5, r0, lsl #0x10
_02116D64:
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021168c0
	cmp r0, #0
	ldrneh r1, [r0, #0xa]
	sub r7, r7, #1
	andne r1, r1, r5, lsr #16
	strneh r1, [r0, #0xa]
	cmp r7, #1
	bge _02116D64
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116d30

	arm_func_start FUN_ov16_02116d94
FUN_ov16_02116d94: ; 0x02116D94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	cmp r6, #0x1f
	mov r0, r7
	movhi r6, #0x1f
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_02116DCC:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneb r6, [r0, #0xc]
	cmp r5, #1
	bge _02116DCC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116d94

	arm_func_start FUN_ov16_02116df4
FUN_ov16_02116df4: ; 0x02116DF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	movs r4, r2
	mov r0, r10
	movmi r4, #0
	bl FUN_ov16_0211685c
	movs r5, r0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r7, [r5, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	rsb r8, r4, #0
	mov r11, #0x3f000000
	mov r9, r8, lsl #0xc
	mov r4, r11
_02116E38:
	mov r0, r10
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_021168c0
	movs r6, r0
	beq _02116E84
	cmp r8, #0
	mov r0, r9
	ble _02116E70
	bl _fflt
	mov r1, r0
	mov r0, r4
	bl _fadd
	b _02116E7C
_02116E70:
	bl _fflt
	mov r1, r11
	bl _fsub
_02116E7C:
	bl _ffix
	str r0, [r6, #0x30]
_02116E84:
	sub r7, r7, #1
	cmp r7, #1
	bge _02116E38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02116df4

	arm_func_start FUN_ov16_02116e94
FUN_ov16_02116e94: ; 0x02116E94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_02116EC0:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneh r6, [r0, #0xe]
	cmp r5, #1
	bge _02116EC0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116e94

	arm_func_start FUN_ov16_02116ee8
FUN_ov16_02116ee8: ; 0x02116EE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r10, r2
	mov r9, r3
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, r10, lsl #0xc
	mov r8, r9, lsl #0xc
_02116F20:
	mov r0, r11
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	movs r6, r0
	beq _02116FA0
	cmp r10, #0
	mov r0, r7
	ble _02116F58
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02116F64
_02116F58:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02116F64:
	bl _ffix
	str r0, [r6, #0x28]
	cmp r9, #0
	mov r0, r8
	ble _02116F8C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02116F98
_02116F8C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02116F98:
	bl _ffix
	str r0, [r6, #0x2c]
_02116FA0:
	sub r5, r5, #1
	cmp r5, #1
	bge _02116F20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02116ee8

	arm_func_start FUN_ov16_02116fb0
FUN_ov16_02116fb0: ; 0x02116FB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r2
	mov r7, r3
	bl FUN_ov16_0211685c
	movs r5, r0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r6, [r5, #6]
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0
_02116FE4:
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_021168c0
	movs r1, r0
	beq _0211701C
	ldrsh r2, [r1, #0x10]
	ldrsh r3, [r1, #0x12]
	mov r0, r9
	strh r8, [r1, #0x10]
	strh r7, [r1, #0x12]
	strb r4, [r1, #0x1a]
	strb r4, [r1, #0x1b]
	bl FUN_ov16_02115eb4
_0211701C:
	sub r6, r6, #1
	cmp r6, #1
	bge _02116FE4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02116fb0

	arm_func_start FUN_ov16_0211702c
FUN_ov16_0211702c: ; 0x0211702C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	bl FUN_ov16_0211685c
	movs r9, r0
	ldrne r0, [r9]
	cmpne r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r10, [r9, #6]
	cmp r10, #1
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02117070:
	mov r0, r8
	mov r1, r9
	mov r2, r10
	bl FUN_ov16_021168c0
	mov r1, r0
	str r5, [sp]
	mov r0, r8
	mov r2, r7
	str r4, [sp, #4]
	mov r3, r6
	bl FUN_ov16_021164d0
	sub r10, r10, #1
	cmp r10, #1
	bge _02117070
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_0211702c

	arm_func_start FUN_ov16_021170b0
FUN_ov16_021170b0: ; 0x021170B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_021170DC:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneh r6, [r0, #0x24]
	cmp r5, #1
	bge _021170DC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021170b0

	arm_func_start FUN_ov16_02117104
FUN_ov16_02117104: ; 0x02117104
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r2
	mov r6, r3
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
_02117134:
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	strneb r7, [r0, #0x26]
	sub r5, r5, #1
	strneb r6, [r0, #0x27]
	cmp r5, #1
	bge _02117134
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02117104

	arm_func_start FUN_ov16_02117160
FUN_ov16_02117160: ; 0x02117160
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldrne r1, [sp, #8]
	strne r4, [r0]
	strne r1, [r0, #0x14]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02117160

	arm_func_start FUN_ov16_02117180
FUN_ov16_02117180: ; 0x02117180
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r6, [sp, #0x20]
	mov r10, r0
	mov r7, r3
	mov r9, r1
	cmp r6, #0
	movlt r6, r7
	mov r0, r10
	mov r1, r7
	mov r8, r2
	bl FUN_ov16_02116920
	mov r5, r0
	mov r0, r10
	mov r1, r6
	bl FUN_ov16_02116920
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneh r6, [r0, #6]
	ldrneh r1, [r0, #4]
	cmpne r1, r7
	strneh r7, [r0, #4]
	mvnne r1, #0
	strneh r1, [r0, #0x10]
	strneh r1, [r0, #0x12]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_02117180

	arm_func_start FUN_ov16_02117220
FUN_ov16_02117220: ; 0x02117220
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r6, r1
	mov r1, r4
	mov r7, r0
	mov r5, r2
	bl FUN_ov16_02116920
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02057c6c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneh r4, [r0, #6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02117220

	arm_func_start FUN_ov16_0211726c
FUN_ov16_0211726c: ; 0x0211726C
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneb r4, [r0, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211726c

	arm_func_start FUN_ov16_02117284
FUN_ov16_02117284: ; 0x02117284
	stmfd sp!, {r4, lr}
	ldrb r12, [sp, #8]
	mov r4, r3
	cmp r12, #0
	bne _021172A0
	bl FUN_ov16_021172cc
	ldmfd sp!, {r4, pc}
_021172A0:
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _021172C8 ; =0x00007BC3
	ldrh r2, [r0, #0xa]
	and r1, r4, r1
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0xa]
	ldmfd sp!, {r4, pc}
_021172C8: .word 0x00007BC3
	arm_func_end FUN_ov16_02117284

	arm_func_start FUN_ov16_021172cc
FUN_ov16_021172cc: ; 0x021172CC
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02117300 ; =0x0000FFFE
	ldrh r2, [r0, #0xa]
	and r1, r4, r1
	mvn r1, r1
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r0, #0xa]
	ldmfd sp!, {r4, pc}
_02117300: .word 0x0000FFFE
	arm_func_end FUN_ov16_021172cc

	arm_func_start FUN_ov16_02117304
FUN_ov16_02117304: ; 0x02117304
	stmfd sp!, {r4, lr}
	mov r4, r3
	cmp r4, #0x1f
	movhi r4, #0x1f
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneb r4, [r0, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02117304

	arm_func_start FUN_ov16_02117324
FUN_ov16_02117324: ; 0x02117324
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldrneb r0, [r0, #0xc]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02117324

	arm_func_start FUN_ov16_0211733c
FUN_ov16_0211733c: ; 0x0211733C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r3
	movmi r5, #0
	bl FUN_ov16_0211689c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	rsb r0, r5, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02117378
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02117384
_02117378:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02117384:
	bl _ffix
	str r0, [r4, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0211733c

	arm_func_start FUN_ov16_02117390
FUN_ov16_02117390: ; 0x02117390
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	bl FUN_ov16_0211689c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _021173C4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021173D0
_021173C4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021173D0:
	bl _ffix
	ldrsh r1, [sp, #0x10]
	str r0, [r4, #0x28]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _021173FC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02117408
_021173FC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02117408:
	bl _ffix
	str r0, [r4, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02117390

	arm_func_start FUN_ov16_02117414
FUN_ov16_02117414: ; 0x02117414
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r3
	bl FUN_ov16_0211689c
	ldr r2, [sp, #0x1c]
	mov r1, r0
	ldrb r3, [sp, #0x18]
	ldr r12, [sp, #0x20]
	str r2, [sp]
	mov r0, r5
	mov r2, r4
	str r12, [sp, #4]
	bl FUN_ov16_021164d0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02117414

	arm_func_start FUN_ov16_02117454
FUN_ov16_02117454: ; 0x02117454
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneh r4, [r0, #0x24]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02117454

	arm_func_start FUN_ov16_0211746c
FUN_ov16_0211746c: ; 0x0211746C
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldrneb r1, [sp, #8]
	strneb r4, [r0, #0x26]
	strneb r1, [r0, #0x27]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211746c

	arm_func_start FUN_ov16_0211748c
FUN_ov16_0211748c: ; 0x0211748C
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r4, #0x1f
	movhi r4, #0x1f
	bl FUN_ov16_0211685c
	cmp r0, #0
	strneb r4, [r0, #7]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211748c

	arm_func_start FUN_ov16_021174ac
FUN_ov16_021174ac: ; 0x021174AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	rsb r0, r5, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021174E4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021174F0
_021174E4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021174F0:
	bl _ffix
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_021174ac

	arm_func_start FUN_ov16_021174fc
FUN_ov16_021174fc: ; 0x021174FC
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_ov16_0211685c
	cmp r0, #0
	strneh r4, [r0, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_021174fc

	arm_func_start FUN_ov16_02117514
FUN_ov16_02117514: ; 0x02117514
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_0211685c
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _0211754C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02117558
_0211754C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02117558:
	bl _ffix
	str r0, [r4, #0xc]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _02117580
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211758C
_02117580:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211758C:
	bl _ffix
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02117514

	arm_func_start FUN_ov16_02117598
FUN_ov16_02117598: ; 0x02117598
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r3, #0
	bne _021175B0
	bl FUN_ov16_021175dc
	ldmfd sp!, {r4, pc}
_021175B0:
	bl FUN_ov16_0211685c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _021175D8 ; =0x00007003
	ldrh r2, [r0, #4]
	and r1, r4, r1
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_021175D8: .word 0x00007003
	arm_func_end FUN_ov16_02117598

	arm_func_start FUN_ov16_021175dc
FUN_ov16_021175dc: ; 0x021175DC
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_ov16_0211685c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02117610 ; =0x00007002
	ldrh r2, [r0, #4]
	and r1, r4, r1
	mvn r1, r1
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_02117610: .word 0x00007002
	arm_func_end FUN_ov16_021175dc

	arm_func_start FUN_ov16_02117614
FUN_ov16_02117614: ; 0x02117614
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	beq _02117638
	ldrh r0, [r0, #0xa]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_02117638:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02117614

	arm_func_start FUN_ov16_02117640
FUN_ov16_02117640: ; 0x02117640
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0211685c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	blt _02117698
_02117664:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	beq _0211768C
	ldrh r0, [r0, #0xa]
	tst r0, #2
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_0211768C:
	sub r5, r5, #1
	cmp r5, #1
	bge _02117664
_02117698:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02117640

	arm_func_start FUN_ov16_021176a0
FUN_ov16_021176a0: ; 0x021176A0
	ldr r2, [r0, #0x40]
	orr r1, r2, r1
	str r1, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov16_021176a0

	arm_func_start FUN_ov16_021176b0
FUN_ov16_021176b0: ; 0x021176B0
	ldr r2, [r0, #0x40]
	mvn r1, r1
	and r1, r2, r1
	str r1, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov16_021176b0

	arm_func_start FUN_ov16_021176c4
FUN_ov16_021176c4: ; 0x021176C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_0211685c
	cmp r0, #0
	strne r5, [r0, #0xc]
	ldrne r1, [sp, #0x10]
	strne r4, [r0, #0x10]
	strne r1, [r0, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_021176c4

	arm_func_start FUN_ov16_021176ec
FUN_ov16_021176ec: ; 0x021176EC
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #0x1a]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_021176ec

	arm_func_start FUN_ov16_02117704
FUN_ov16_02117704: ; 0x02117704
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	moveq r0, #0
	ldrneh r0, [r0, #6]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02117704

	arm_func_start FUN_ov16_0211771c
FUN_ov16_0211771c: ; 0x0211771C
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldrne r2, [sp, #8]
	strne r4, [r0, #0x34]
	ldrne r1, [sp, #0xc]
	strne r2, [r0, #0x38]
	strne r1, [r0, #0x3c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211771c

	arm_func_start FUN_ov16_02117744
FUN_ov16_02117744: ; 0x02117744
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0x1a]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x1b]
	ldrb r0, [r0, #0x1b]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02117744

	arm_func_start FUN_ov16_02117770
FUN_ov16_02117770: ; 0x02117770
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_0211779C:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strne r6, [r0, #0x40]
	cmp r5, #1
	bge _0211779C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02117770

	arm_func_start FUN_ov16_021177c4
FUN_ov16_021177c4: ; 0x021177C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_021177F0:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneb r6, [r0, #0xd]
	cmp r5, #1
	bge _021177F0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021177c4

	arm_func_start FUN_ov16_02117818
FUN_ov16_02117818: ; 0x02117818
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_02117844:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strne r6, [r0, #0x44]
	cmp r5, #1
	bge _02117844
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02117818
_0211786C:
	.byte 0x30, 0x30, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x69, 0x74, 0x65, 0x6D, 0x5F, 0x6D, 0x64, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00
	.byte 0x00, 0xF0, 0xFF, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x46, 0x00, 0x42, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0xCB, 0x00, 0x00, 0x00, 0xD1, 0x00, 0x00, 0x00
	.byte 0xD3, 0x00, 0x00, 0x00, 0xD9, 0x00, 0x00, 0x00, 0xDB, 0x00, 0x00, 0x00, 0xE1, 0x00, 0x00, 0x00
	.byte 0xE3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x40, 0x00, 0x00, 0x6B, 0x40, 0x00, 0x00
	.byte 0x64, 0x40, 0x00, 0x00, 0x65, 0x40, 0x00, 0x00, 0x69, 0x40, 0x00, 0x00, 0x6A, 0x40, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10
	.byte 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10
	.byte 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10
	.byte 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x73, 0x6F, 0x63, 0x6B
	.byte 0x73, 0x30, 0x30, 0x5F, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x75, 0x6E, 0x69, 0x30, 0x31, 0x5F, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x44, 0x89, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x60, 0x89, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x70, 0x89, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x50, 0x89, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0x4F, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x69, 0x63, 0x6F, 0x5F, 0x69, 0x30, 0x30, 0x5F, 0x70, 0x6C, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x6F, 0x30, 0x30, 0x39, 0x39, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x01, 0x00, 0x00
	.byte 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
	.byte 0x01, 0x00, 0x02, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x03
	.byte 0x02, 0x01, 0x00, 0x02, 0x01, 0x01, 0x02, 0x02, 0x02, 0x01, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02
	.byte 0x02, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01
	.byte 0x01, 0x01, 0x00, 0x01, 0x03, 0x01, 0x00, 0x03, 0x03, 0x02, 0x00, 0x02, 0x02, 0x02, 0x01, 0x01
	.byte 0x01, 0x01, 0x02, 0x01, 0x00, 0x01, 0x02, 0x02, 0x01, 0x02, 0x01, 0x02, 0x03, 0x03, 0x01, 0x01
	.byte 0x01, 0x02, 0x02, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x01, 0x03, 0x01, 0x03, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01
	.byte 0x02, 0x02, 0x01, 0x02, 0x01, 0x00, 0x00, 0x01, 0x03, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x00, 0x01, 0x01, 0x00, 0x03, 0x00, 0x01, 0x03, 0x00, 0x03, 0x03, 0x03, 0x00, 0x01
	.byte 0x01, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x00, 0x03, 0x02, 0x02, 0x01
	.byte 0x01, 0x01, 0x00, 0x00, 0x03, 0x03, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x03
	.byte 0x03, 0x03, 0x03, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x01, 0x03, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x02, 0x02, 0x02, 0x00, 0x00, 0x02, 0x02, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x00
	.byte 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
	.byte 0x02, 0x02, 0x03, 0x01, 0x02, 0x03, 0x03, 0x03, 0x02, 0x02, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02
	.byte 0x02, 0x02, 0x01, 0x02, 0x02, 0x01, 0x01, 0x00, 0x02, 0x01, 0x01, 0x00, 0x01, 0x02, 0x01, 0x01
	.byte 0x02, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov16_02117aec
FUN_ov16_02117aec: ; 0x02117AEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117B34 ; =0x021183C0
	str r0, [r4, #0xc]
	ldr r0, _02117B38 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _02117B3C ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117B34: .word ov16_021183C0
_02117B38: .word 0x00009CCD
_02117B3C: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117aec

	arm_func_start FUN_ov16_02117b40
FUN_ov16_02117b40: ; 0x02117B40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117B88 ; =0x0211845C
	str r0, [r4, #0x14]
	ldr r0, _02117B8C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02117B90 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117B88: .word ov16_0211845C
_02117B8C: .word 0x00009CCD
_02117B90: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117b40

	arm_func_start FUN_ov16_02117b94
FUN_ov16_02117b94: ; 0x02117B94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117BDC ; =0x02118474
	str r0, [r4, #0x10]
	ldr r0, _02117BE0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02117BE4 ; =0x0000EA3C
	str r1, [r4, #0x18]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02117BDC: .word ov16_02118474
_02117BE0: .word 0x00009CCD
_02117BE4: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117b94

	arm_func_start FUN_ov16_02117be8
FUN_ov16_02117be8: ; 0x02117BE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117C2C ; =0x021184E8
	str r0, [r4, #0x10]
	ldr r0, _02117C30 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117C34 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117C2C: .word ov16_021184E8
_02117C30: .word 0x00009CCD
_02117C34: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117be8

	arm_func_start FUN_ov16_02117c38
FUN_ov16_02117c38: ; 0x02117C38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117C80 ; =0x02118500
	str r0, [r4, #0x14]
	ldr r0, _02117C84 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02117C88 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117C80: .word ov16_02118500
_02117C84: .word 0x00009CCD
_02117C88: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117c38

	arm_func_start FUN_ov16_02117c8c
FUN_ov16_02117c8c: ; 0x02117C8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117CD4 ; =0x02118700
	str r0, [r4, #0x14]
	ldr r0, _02117CD8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02117CDC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117CD4: .word ov16_02118700
_02117CD8: .word 0x00009CCD
_02117CDC: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117c8c

	arm_func_start FUN_ov16_02117ce0
FUN_ov16_02117ce0: ; 0x02117CE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117D24 ; =0x02118718
	str r0, [r4, #0x10]
	ldr r0, _02117D28 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117D2C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117D24: .word ov16_02118718
_02117D28: .word 0x00009CCD
_02117D2C: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117ce0

	arm_func_start FUN_ov16_02117d30
FUN_ov16_02117d30: ; 0x02117D30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117D74 ; =0x02118730
	str r0, [r4, #0x10]
	ldr r0, _02117D78 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117D7C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117D74: .word ov16_02118730
_02117D78: .word 0x00009CCD
_02117D7C: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117d30

	arm_func_start FUN_ov16_02117d80
FUN_ov16_02117d80: ; 0x02117D80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117DC4 ; =0x02118748
	str r0, [r4, #0x10]
	ldr r0, _02117DC8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117DCC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117DC4: .word ov16_02118748
_02117DC8: .word 0x00009CCD
_02117DCC: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117d80

	arm_func_start FUN_ov16_02117dd0
FUN_ov16_02117dd0: ; 0x02117DD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117E14 ; =0x02118760
	str r0, [r4, #0x10]
	ldr r0, _02117E18 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117E1C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117E14: .word ov16_02118760
_02117E18: .word 0x00009CCD
_02117E1C: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117dd0

	arm_func_start FUN_ov16_02117e20
FUN_ov16_02117e20: ; 0x02117E20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117E64 ; =0x02118778
	str r0, [r4, #0x10]
	ldr r0, _02117E68 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117E6C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117E64: .word ov16_02118778
_02117E68: .word 0x00009CCD
_02117E6C: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117e20

	arm_func_start FUN_ov16_02117e70
FUN_ov16_02117e70: ; 0x02117E70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117EB4 ; =0x021187C0
	str r0, [r4, #0x10]
	ldr r0, _02117EB8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117EBC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117EB4: .word ov16_021187C0
_02117EB8: .word 0x00009CCD
_02117EBC: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117e70

	arm_func_start FUN_ov16_02117ec0
FUN_ov16_02117ec0: ; 0x02117EC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117F08 ; =0x02118834
	str r0, [r4, #8]
	ldr r0, _02117F0C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02117F10 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02117F08: .word ov16_02118834
_02117F0C: .word 0x00009CCD
_02117F10: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117ec0

	arm_func_start FUN_ov16_02117f14
FUN_ov16_02117f14: ; 0x02117F14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117F5C ; =0x02118860
	str r0, [r4, #0x14]
	ldr r0, _02117F60 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02117F64 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117F5C: .word ov16_02118860
_02117F60: .word 0x00009CCD
_02117F64: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117f14

	arm_func_start FUN_ov16_02117f68
FUN_ov16_02117f68: ; 0x02117F68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117FB0 ; =0x021188A8
	str r0, [r4, #8]
	ldr r0, _02117FB4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02117FB8 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02117FB0: .word ov16_021188A8
_02117FB4: .word 0x00009CCD
_02117FB8: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117f68

	arm_func_start FUN_ov16_02117fbc
FUN_ov16_02117fbc: ; 0x02117FBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118000 ; =0x021188EC
	str r0, [r4, #0x10]
	ldr r0, _02118004 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02118008 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02118000: .word ov16_021188EC
_02118004: .word 0x00009CCD
_02118008: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117fbc

	arm_func_start FUN_ov16_0211800c
FUN_ov16_0211800c: ; 0x0211800C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118054 ; =0x02118904
	str r0, [r4, #0x14]
	ldr r0, _02118058 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211805C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02118054: .word ov16_02118904
_02118058: .word 0x00009CCD
_0211805C: .word 0x0000EA3C
	arm_func_end FUN_ov16_0211800c

	arm_func_start FUN_ov16_02118060
FUN_ov16_02118060: ; 0x02118060
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021180A8 ; =0x0211892C
	str r0, [r4, #8]
	ldr r0, _021180AC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _021180B0 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021180A8: .word ov16_0211892C
_021180AC: .word 0x00009CCD
_021180B0: .word 0x0000EA3C
	arm_func_end FUN_ov16_02118060

	arm_func_start FUN_ov16_021180b4
FUN_ov16_021180b4: ; 0x021180B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021180FC ; =0x021189F4
	str r0, [r4, #8]
	ldr r0, _02118100 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02118104 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_021180FC: .word ov16_021189F4
_02118100: .word 0x00009CCD
_02118104: .word 0x0000EA3C
	arm_func_end FUN_ov16_021180b4

	arm_func_start FUN_ov16_02118108
FUN_ov16_02118108: ; 0x02118108
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211814C ; =0x02119D24
	str r0, [r4, #0x10]
	ldr r0, _02118150 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02118154 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211814C: .word ov16_02119D24
_02118150: .word 0x00009CCD
_02118154: .word 0x0000EA3C
	arm_func_end FUN_ov16_02118108

	arm_func_start FUN_ov16_02118158
FUN_ov16_02118158: ; 0x02118158
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021181A0 ; =0x02119DD4
	str r0, [r4, #0x14]
	ldr r0, _021181A4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _021181A8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_021181A0: .word ov16_02119DD4
_021181A4: .word 0x00009CCD
_021181A8: .word 0x0000EA3C
	arm_func_end FUN_ov16_02118158

	arm_func_start FUN_ov16_021181ac
FUN_ov16_021181ac: ; 0x021181AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021181F0 ; =0x02119DFC
	str r0, [r4, #0x10]
	ldr r0, _021181F4 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _021181F8 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021181F0: .word ov16_02119DFC
_021181F4: .word 0x00009CCD
_021181F8: .word 0x0000EA3C
	arm_func_end FUN_ov16_021181ac

	arm_func_start FUN_ov16_021181fc
FUN_ov16_021181fc: ; 0x021181FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118244 ; =0x02119E14
	str r0, [r4, #0x14]
	ldr r0, _02118248 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211824C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02118244: .word ov16_02119E14
_02118248: .word 0x00009CCD
_0211824C: .word 0x0000EA3C
	arm_func_end FUN_ov16_021181fc

	arm_func_start FUN_ov16_02118250
FUN_ov16_02118250: ; 0x02118250
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118298 ; =0x02119E3C
	str r0, [r4, #0x14]
	ldr r0, _0211829C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _021182A0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02118298: .word ov16_02119E3C
_0211829C: .word 0x00009CCD
_021182A0: .word 0x0000EA3C
	arm_func_end FUN_ov16_02118250

	arm_func_start FUN_ov16_021182a4
FUN_ov16_021182a4: ; 0x021182A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021182E8 ; =0x02119E64
	str r0, [r4, #0x10]
	ldr r0, _021182EC ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _021182F0 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021182E8: .word ov16_02119E64
_021182EC: .word 0x00009CCD
_021182F0: .word 0x0000EA3C
	arm_func_end FUN_ov16_021182a4

	arm_func_start FUN_ov16_021182f4
FUN_ov16_021182f4: ; 0x021182F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211833C ; =0x02119E7C
	str r0, [r4, #0x14]
	ldr r0, _02118340 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02118344 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211833C: .word ov16_02119E7C
_02118340: .word 0x00009CCD
_02118344: .word 0x0000EA3C
	arm_func_end FUN_ov16_021182f4

	.section .sinit, 4
ov16_02118348:
	.word FUN_ov16_02117aec
	.word FUN_ov16_02117b40
	.word FUN_ov16_02117b94
	.word FUN_ov16_02117be8
	.word FUN_ov16_02117c38
	.word FUN_ov16_02117c8c
	.word FUN_ov16_02117ce0
	.word FUN_ov16_02117d30
	.word FUN_ov16_02117d80
	.word FUN_ov16_02117dd0
	.word FUN_ov16_02117e20
	.word FUN_ov16_02117e70
	.word FUN_ov16_02117ec0
	.word FUN_ov16_02117f14
	.word FUN_ov16_02117f68
	.word FUN_ov16_02117fbc
	.word FUN_ov16_0211800c
	.word FUN_ov16_02118060
	.word FUN_ov16_021180b4
	.word FUN_ov16_02118108
	.word FUN_ov16_02118158
	.word FUN_ov16_021181ac
	.word FUN_ov16_021181fc
	.word FUN_ov16_02118250
	.word FUN_ov16_021182a4
	.word FUN_ov16_021182f4

	.data
	.global ov16_021183C0
ov16_021183C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_021183D8
ov16_021183D8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x2E
	.byte 0x64, 0x61, 0x74, 0x00
	.global ov16_021183F4
ov16_021183F4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x69, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov16_02118410
ov16_02118410:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69
	.byte 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov16_0211842C
ov16_0211842C:
	.byte 0x46, 0x55, 0x53, 0x45
	.byte 0x49, 0x5F, 0x49, 0x54, 0x45, 0x4D, 0x5F, 0x4E, 0x4F, 0x00, 0x00, 0x00
	.global ov16_0211843C
ov16_0211843C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69, 0x74, 0x65, 0x6D, 0x73
	.byte 0x6F, 0x72, 0x74, 0x6C, 0x69, 0x73, 0x74, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov16_0211845C
ov16_0211845C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02118474
ov16_02118474:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118490
ov16_02118490:
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov16_02118498
ov16_02118498:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6D, 0x6F, 0x76, 0x69, 0x65, 0x2F, 0x74, 0x78, 0x74, 0x2F, 0x25, 0x73, 0x2E, 0x64, 0x61
	.byte 0x74, 0x00, 0x00, 0x00
	.global ov16_021184B4
ov16_021184B4:
	.byte 0x49, 0x5A, 0x5F, 0x54, 0x59, 0x50, 0x45, 0x00
	.global ov16_021184BC
ov16_021184BC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x50, 0x72, 0x61, 0x63, 0x74
	.byte 0x69, 0x63, 0x65, 0x25, 0x73, 0x00, 0x00, 0x00
	.global ov16_021184D8
ov16_021184D8:
	.byte 0x25, 0x73, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov16_021184E0
ov16_021184E0:
	.byte 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00
	.global ov16_021184E8
ov16_021184E8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118500
ov16_02118500:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118518
ov16_02118518:
	.byte 0x50, 0x61, 0x63, 0x6B, 0x4E, 0x75, 0x6D, 0x20
	.byte 0x32, 0x30, 0x30, 0x38, 0x30, 0x36, 0x32, 0x36, 0x00, 0x00, 0x00, 0x00
	.global ov16_0211852C
ov16_0211852C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6D, 0x6F, 0x64, 0x65, 0x6C, 0x2F, 0x63, 0x68, 0x61, 0x72, 0x2F
	.byte 0x70, 0x25, 0x63, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov16_0211854C
ov16_0211854C:
	.byte 0x70, 0x25, 0x63, 0x68
	.byte 0x30, 0x30, 0x25, 0x30, 0x34, 0x64, 0x30, 0x30, 0x2E, 0x6E, 0x73, 0x62, 0x6D, 0x64, 0x5F, 0x00
	.global ov16_02118560
ov16_02118560:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6D, 0x6F, 0x64, 0x65, 0x6C, 0x2F, 0x63
	.byte 0x68, 0x61, 0x72, 0x2F, 0x70, 0x25, 0x63, 0x66, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118580
ov16_02118580:
	.byte 0x70, 0x25, 0x63, 0x66, 0x30, 0x30, 0x25, 0x30, 0x34, 0x64, 0x30, 0x30, 0x2E, 0x6E, 0x73, 0x62
	.byte 0x6D, 0x64, 0x5F, 0x00
	.global ov16_02118594
ov16_02118594:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6D, 0x6F, 0x64
	.byte 0x65, 0x6C, 0x2F, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x70, 0x25, 0x63, 0x62, 0x2E, 0x70, 0x6B, 0x62
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_021185B4
ov16_021185B4:
	.byte 0x70, 0x25, 0x63, 0x62, 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64
	.byte 0x25, 0x30, 0x32, 0x64, 0x2E, 0x6E, 0x73, 0x62, 0x6D, 0x64, 0x5F, 0x00
	.global ov16_021185CC
ov16_021185CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6D, 0x6F, 0x64, 0x65, 0x6C, 0x2F, 0x63, 0x68, 0x61, 0x72, 0x2F
	.byte 0x70, 0x74, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov16_021185E8
ov16_021185E8:
	.byte 0x70, 0x74, 0x62, 0x30, 0x30, 0x25, 0x30, 0x32
	.byte 0x64, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x6E, 0x73, 0x62, 0x74, 0x78, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118600
ov16_02118600:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6D, 0x6F, 0x64, 0x65, 0x6C, 0x2F, 0x63
	.byte 0x68, 0x61, 0x72, 0x2F, 0x70, 0x25, 0x63, 0x73, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118620
ov16_02118620:
	.byte 0x70, 0x25, 0x63, 0x73, 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64
	.byte 0x2E, 0x6E, 0x73, 0x62, 0x6D, 0x64, 0x5F, 0x00
	.global ov16_02118638
ov16_02118638:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6D, 0x6F, 0x64, 0x65, 0x6C, 0x2F, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x70, 0x63, 0x6D, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov16_02118654
ov16_02118654:
	.byte 0x70, 0x63, 0x6D, 0x25, 0x30, 0x36, 0x64, 0x25, 0x30, 0x32, 0x64, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118668
ov16_02118668:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6D, 0x6F, 0x64, 0x65, 0x6C, 0x2F, 0x6F, 0x62, 0x6A, 0x2F, 0x25, 0x73, 0x2E, 0x6E, 0x73
	.byte 0x62, 0x6D, 0x64, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118688
ov16_02118688:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6D, 0x6F, 0x64, 0x65, 0x6C, 0x2F, 0x70, 0x61, 0x63, 0x2F, 0x25, 0x73, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00
	.global ov16_021186A4
ov16_021186A4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6D, 0x6F, 0x64
	.byte 0x65, 0x6C, 0x2F, 0x6F, 0x62, 0x6A, 0x2F, 0x25, 0x73, 0x2E, 0x6E, 0x73, 0x62, 0x74, 0x78, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_021186C4
ov16_021186C4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6D, 0x6F, 0x64
	.byte 0x65, 0x6C, 0x2F, 0x6F, 0x62, 0x6A, 0x2F, 0x25, 0x73, 0x2E, 0x6E, 0x73, 0x62, 0x6D, 0x64, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_021186E4
ov16_021186E4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6D, 0x6F, 0x64
	.byte 0x65, 0x6C, 0x2F, 0x70, 0x61, 0x63, 0x2F, 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.global ov16_02118700
ov16_02118700:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118718
ov16_02118718:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118730
ov16_02118730:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118748
ov16_02118748:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118760
ov16_02118760:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118778
ov16_02118778:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118790
ov16_02118790:
	.byte 0x46, 0x41, 0x52, 0x43, 0x4C, 0x49, 0x50, 0x5F, 0x4C, 0x45, 0x4E, 0x47, 0x54, 0x48, 0x00, 0x00
	.global ov16_021187A0
ov16_021187A0:
	.byte 0x46, 0x41, 0x52, 0x43, 0x4C, 0x49, 0x50, 0x5F, 0x4C, 0x45, 0x4E, 0x47, 0x54, 0x48, 0x00, 0x00
	.global ov16_021187B0
ov16_021187B0:
	.byte 0x46, 0x41, 0x52, 0x43, 0x4C, 0x49, 0x50, 0x5F, 0x4C, 0x45, 0x4E, 0x47, 0x54, 0x48, 0x00, 0x00
	.global ov16_021187C0
ov16_021187C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_021187D8
ov16_021187D8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x2F, 0x64, 0x67, 0x6E, 0x63, 0x72, 0x73, 0x2E, 0x64
	.byte 0x61, 0x74, 0x00, 0x00
	.global ov16_021187F4
ov16_021187F4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x73, 0x63, 0x72
	.byte 0x69, 0x70, 0x74, 0x2F, 0x64, 0x67, 0x6E, 0x6D, 0x61, 0x74, 0x63, 0x68, 0x2E, 0x64, 0x61, 0x74
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02118814
ov16_02118814:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x73, 0x63, 0x72
	.byte 0x69, 0x70, 0x74, 0x2F, 0x64, 0x67, 0x6E, 0x74, 0x72, 0x65, 0x61, 0x73, 0x75, 0x72, 0x65, 0x2E
	.byte 0x64, 0x61, 0x74, 0x00
	.global ov16_02118834
ov16_02118834:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xDC, 0xA3, 0x0F, 0x02
	.global ov16_02118858
ov16_02118858:
	.byte 0x77, 0x61, 0x69, 0x73, 0x74, 0x00, 0x00, 0x00
	.global ov16_02118860
ov16_02118860:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118880
ov16_02118880:
	.byte 0xE8, 0x25, 0x05, 0x02, 0xE4, 0xB2, 0x0F, 0x02, 0xE4, 0xAD, 0x0F, 0x02, 0x0C, 0xAE, 0x0F, 0x02
	.byte 0x54, 0xAE, 0x0F, 0x02, 0x6C, 0xAE, 0x0F, 0x02, 0x1C, 0xB3, 0x0F, 0x02, 0xD8, 0xAE, 0x0F, 0x02
	.byte 0x24, 0xAF, 0x0F, 0x02, 0xEC, 0xB1, 0x0F, 0x02
	.global ov16_021188A8
ov16_021188A8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_021188C0
ov16_021188C0:
	.byte 0x68, 0x65, 0x61, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov16_021188C8
ov16_021188C8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6D, 0x6F, 0x64, 0x65, 0x6C, 0x2F, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x62, 0x6F, 0x64, 0x79
	.byte 0x5F, 0x6E, 0x6F, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov16_021188EC
ov16_021188EC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02118904
ov16_02118904:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02118924
ov16_02118924:
	.byte 0x90, 0xD9, 0x0F, 0x02, 0x68, 0xD9, 0x0F, 0x02
	.global ov16_0211892C
ov16_0211892C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x61, 0x64, 0x6E, 0x5F, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x70, 0x61, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x61, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x61, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xE4, 0x0F, 0x02, 0xC8, 0xE4, 0x0F, 0x02
	.byte 0x3C, 0xE2, 0x0F, 0x02, 0x14, 0x9D, 0x02, 0x02, 0x10, 0x9D, 0x02, 0x02, 0x8C, 0xDA, 0x0F, 0x02
	.byte 0xEC, 0xDB, 0x0F, 0x02, 0x7C, 0xE2, 0x0F, 0x02, 0x0C, 0x9D, 0x02, 0x02, 0xE4, 0xE3, 0x0F, 0x02
	.byte 0x08, 0x9D, 0x02, 0x02, 0xEC, 0xE4, 0x0F, 0x02, 0x04, 0x9D, 0x02, 0x02, 0x00, 0x9D, 0x02, 0x02
	.byte 0xE4, 0xE4, 0x0F, 0x02, 0xDC, 0xE4, 0x0F, 0x02, 0x7C, 0xE4, 0x0F, 0x02, 0xD0, 0xE3, 0x0F, 0x02
	.global ov16_021189D0
ov16_021189D0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x2F, 0x4D, 0x4D, 0x51, 0x75, 0x69, 0x74, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_021189F4
ov16_021189F4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118A0C
ov16_02118A0C:
	.byte 0x28, 0x8A, 0x11, 0x02
	.byte 0x1C, 0x8A, 0x11, 0x02, 0xF0, 0x89, 0x11, 0x02, 0x20, 0x8A, 0x11, 0x02, 0x65, 0x76, 0x65, 0x00
	.byte 0x45, 0x4E, 0x44, 0x46, 0x49, 0x4C, 0x45, 0x00, 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x2F, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118A3C
ov16_02118A3C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x10, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD4, 0xFB, 0x0F, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB8, 0x12, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x90, 0x13, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xFC, 0x17, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x1B, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x44, 0x1C, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC4, 0x1C, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x1C, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x8C, 0x1F, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x21, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x21, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x50, 0x22, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0x1A, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x3C, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x3D, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x50, 0x3F, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0x38, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x39, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0x3A, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x78, 0x42, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x7C, 0x43, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x23, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB0, 0x26, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x50, 0x2B, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x2D, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x33, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x2F, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x48, 0x45, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x46, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x48, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x7C, 0x48, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x74, 0x49, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0x49, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x4A, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x4B, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x4C, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x50, 0x4D, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x4E, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x58, 0x50, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0x50, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x30, 0x51, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0x52, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x53, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xEC, 0x53, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x55, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xBC, 0x55, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x55, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x57, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x57, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE4, 0x57, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xCC, 0x58, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB0, 0x59, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x8C, 0x5A, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x4C, 0x60, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x61, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x64, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x64, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x65, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x40, 0x65, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x66, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x28, 0x67, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x68, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0x6C, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x76, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0x77, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x77, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0x79, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x54, 0x7B, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x7A, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x81, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0x82, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x54, 0x84, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0x83, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x85, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xAC, 0x85, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x87, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x86, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x58, 0x44, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x98, 0x7E, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x9C, 0x36, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x42, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x04, 0x45, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x04, 0x43, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x4B, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x54, 0x4B, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x4F, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x50, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x51, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x74, 0x6E, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0x6F, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x70, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xAC, 0x73, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x74, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x3C, 0x47, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x74, 0x4A, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x78, 0x46, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x90, 0x4E, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x20, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x35, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x2E, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x2E, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0x4C, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x4D, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA4, 0x11, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x7C, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x75, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x54, 0x72, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0x7D, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x68, 0x3E, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0x78, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x48, 0x89, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xEC, 0x87, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x88, 0x88, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF4, 0x4D, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB8, 0x18, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x19, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x17, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x15, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x63, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x63, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x4E, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0x4F, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x04, 0x47, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB8, 0x47, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x16, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF0, 0x15, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xBC, 0x1D, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x84, 0x1E, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x40, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA0, 0x41, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x64, 0x62, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xFC, 0x51, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x53, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x4C, 0x37, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x38, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x45, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0x40, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x94, 0xFD, 0x0F, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x38, 0x48, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x34, 0xFF, 0x0F, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x8C, 0x6D, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB8, 0x3F, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD4, 0x3B, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x14, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x55, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB8, 0xEA, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0xF9, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x90, 0xFA, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0xFB, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x7C, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD8, 0x7C, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x8A, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x24, 0x8B, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD8, 0x8B, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0x74, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x75, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x78, 0xCC, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x08, 0xCE, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0xD4, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x90, 0xD5, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0xDF, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB8, 0x5B, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xAC, 0x5C, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x54, 0x5D, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x5E, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x18, 0x5E, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x5F, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x5F, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x44, 0x79, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE4, 0xE4, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x24, 0xE6, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x64, 0xE9, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x7A, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF4, 0x7A, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_021192C4
ov16_021192C4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x83, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0xA1, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xAC, 0xAB, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x8E, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x6C, 0xB0, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xAC, 0xF0, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xDC, 0xB4, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0xB7, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xEC, 0xB7, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA4, 0xB8, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x9C, 0xBC, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE0, 0xBA, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x1C, 0xBE, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0xBF, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x84, 0xA8, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA0, 0xA5, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA8, 0xA6, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD4, 0xA7, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x30, 0xA7, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x69, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x54, 0x8C, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0xAC, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x70, 0xAB, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x5B, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x48, 0xA9, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF4, 0xAE, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x08, 0xB6, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE4, 0x69, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC4, 0xA9, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0xAB, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF4, 0x8D, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC4, 0x64, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x70, 0x65, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x67, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0xB5, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x62, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0xAD, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0xC1, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF4, 0x83, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x64, 0x84, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0xF1, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD4, 0xC8, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0xC2, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x5E, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0x61, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xB3, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xCC, 0x84, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x30, 0xC3, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xCC, 0xF2, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB4, 0xF3, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xF4, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x9C, 0xF4, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x5D, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x9C, 0xBB, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x1C, 0xBC, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x40, 0xF3, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x5F, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x08, 0xA8, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0xAC, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x98, 0x9C, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x9D, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x18, 0x9A, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC4, 0x9B, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x9B, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x85, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x86, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x84, 0x86, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x28, 0x87, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x8D, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x9C, 0x87, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x88, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0x9F, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xB0, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE4, 0xD0, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0xF1, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x2C, 0xBA, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF8, 0x5A, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x57, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0x59, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x6F, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xFC, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x62, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0xA7, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x48, 0x56, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA4, 0xC9, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x50, 0xEE, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x7C, 0x5F, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x58, 0xBD, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0x69, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x4C, 0xF2, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x57, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x6D, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x6C, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x98, 0xB1, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xFC, 0xB1, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x30, 0xA1, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0xB4, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x3C, 0xC8, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0xCA, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xEC, 0xAF, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0xEE, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x68, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x7C, 0xEC, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x60, 0x90, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xDC, 0x90, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x18, 0xA3, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA4, 0xA3, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x30, 0x6D, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x6E, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0x88, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0x6A, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8F, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB0, 0x8F, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x6B, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x6A, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x6F, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x98, 0xA0, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xBC, 0x56, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x60, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x98, 0xB2, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x74, 0xFF, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA0, 0x72, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC4, 0xC3, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA0, 0x71, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x89, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xDC, 0xA5, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x89, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x8A, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC0, 0x8A, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x63, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0x70, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x28, 0x71, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xAC, 0x70, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xDC, 0x63, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x50, 0x64, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x44, 0x8B, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x50, 0x9F, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x72, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC4, 0x55, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x8C, 0xA6, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF4, 0x8D, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x8B, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0x91, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0xA2, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x94, 0x6E, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x8C, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0xED, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x5C, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBC, 0xF5, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE0, 0xC5, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x78, 0xC4, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0xC5, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEC, 0xAA, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0xAE, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x88, 0x58, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0x5A, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x5A, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x96, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x58, 0x97, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x73, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x8C, 0x73, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x30, 0x99, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB8, 0x8C, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF4, 0xAF, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0xB0, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF4, 0xB0, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0xB2, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF8, 0xB3, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xDC, 0xB2, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x30, 0x8D, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0xB5, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x78, 0xB6, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xB7, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD8, 0xB7, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x38, 0xB9, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE8, 0xB9, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x98, 0xBA, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD4, 0x91, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x4C, 0x92, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x8D, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x8E, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0xBB, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE4, 0xAD, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x5C, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x88, 0x8E, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x8F, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xAE, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0xAF, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0x92, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xDC, 0x93, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xDC, 0x94, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xBC, 0x98, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0xF6, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x78, 0xB4, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x38, 0xF5, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xAC, 0xC6, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC4, 0xC7, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xDC, 0xAC, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0xA9, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB8, 0xF6, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x9C, 0xB6, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x75, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x40, 0xF7, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB8, 0xF7, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x3C, 0xF8, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0xFC, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x4C, 0xFD, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x76, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA4, 0xBC, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0xCF, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x34, 0xD7, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x98, 0xD6, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x74, 0xD9, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0xDA, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x1C, 0xDB, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0xDD, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x48, 0xDF, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x9C, 0xCF, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x30, 0xEA, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0xE1, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x94, 0xE0, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0xE1, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xE6, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0xE2, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE3, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC0, 0xE3, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x68, 0xE4, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC8, 0x78, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0xAD, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0xF8, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xAD, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0x8F, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x82, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xDC, 0x82, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x58, 0x7B, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC0, 0xFB, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xD7, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0xD8, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x44, 0xD8, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF4, 0x7B, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE4, 0xFD, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0xFE, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x6B, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x6C, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x88, 0xB8, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE8, 0xEB, 0x15, 0x02, 0x00, 0x00, 0x00, 0x00, 0x48, 0x80, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xEC, 0x80, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF8, 0xBB, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x8C, 0x81, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x64, 0xB9, 0x15, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xFC, 0x81, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF8, 0x90, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x16, 0x02, 0x00, 0x00, 0x00, 0x00, 0x34, 0x7D, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB8, 0x7D, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x40, 0x7E, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0x7E, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x7F, 0x14, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0xB3, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x16, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0xB5, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00
	.global ov16_02119C2C
ov16_02119C2C:
	.byte 0x53, 0x43, 0x52, 0x49
	.byte 0x50, 0x54, 0x20, 0x50, 0x52, 0x49, 0x4E, 0x54, 0x5B, 0x20, 0x25, 0x73, 0x20, 0x5D, 0x0A, 0x00
	.global ov16_02119C40
ov16_02119C40:
	.byte 0x2A, 0x25, 0x30, 0x38, 0x64, 0x2E, 0x70, 0x6B, 0x62, 0x5F, 0x00, 0x00
	.global ov16_02119C4C
ov16_02119C4C:
	.byte 0x2A, 0x25, 0x30, 0x38
	.byte 0x64, 0x2E, 0x70, 0x6B, 0x62, 0x5F, 0x00, 0x00
	.global ov16_02119C58
ov16_02119C58:
	.byte 0x2A, 0x25, 0x30, 0x38, 0x64, 0x2E, 0x70, 0x6B
	.byte 0x62, 0x00, 0x00, 0x00
	.global ov16_02119C64
ov16_02119C64:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119C68
ov16_02119C68:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119C6C
ov16_02119C6C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119C70
ov16_02119C70:
	.byte 0x82, 0xC8, 0x82, 0xC2, 0x82, 0xDD, 0x82, 0xD4, 0x82, 0xA9, 0x00, 0x00
	.global ov16_02119C7C
ov16_02119C7C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119C80
ov16_02119C80:
	.byte 0x82, 0xBA, 0x82, 0xA4, 0x82, 0xB7, 0x82, 0xAD, 0x82, 0xEB, 0x00, 0x00
	.global ov16_02119C8C
ov16_02119C8C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119C90
ov16_02119C90:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov16_02119C94
ov16_02119C94:
	.byte 0x50, 0x25, 0x30, 0x32, 0x64, 0x00, 0x00, 0x00
	.global ov16_02119C9C
ov16_02119C9C:
	.byte 0x53, 0x52, 0x5F, 0x25
	.byte 0x30, 0x33, 0x64, 0x00
	.global ov16_02119CA4
ov16_02119CA4:
	.byte 0x6D, 0x6F, 0x00, 0x00
	.global ov16_02119CA8
ov16_02119CA8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x6F, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov16_02119CC0
ov16_02119CC0:
	.byte 0x69, 0x6F, 0x25, 0x30, 0x34, 0x64, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov16_02119CCC
ov16_02119CCC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x6F, 0x2E, 0x70, 0x6B
	.byte 0x62, 0x00, 0x00, 0x00
	.global ov16_02119CE4
ov16_02119CE4:
	.byte 0x6D, 0x6F, 0x00, 0x00
	.global ov16_02119CE8
ov16_02119CE8:
	.byte 0x6D, 0x6F, 0x30, 0x30, 0x39, 0x39, 0x00, 0x00
	.global ov16_02119CF0
ov16_02119CF0:
	.byte 0x67, 0x6F, 0x61, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov16_02119CF8
ov16_02119CF8:
	.byte 0x49, 0x5A, 0x5F, 0x54, 0x59, 0x50, 0x45, 0x00
	.global ov16_02119D00
ov16_02119D00:
	.byte 0x45, 0x4E, 0x44, 0x46, 0x49, 0x4C, 0x45, 0x00
	.global ov16_02119D08
ov16_02119D08:
	.byte 0x25, 0x73, 0x25, 0x73, 0x2E, 0x70, 0x6B, 0x68
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119D14
ov16_02119D14:
	.byte 0x25, 0x73, 0x25, 0x73, 0x25, 0x64, 0x2E, 0x73, 0x73, 0x64, 0x5F, 0x00
	.global ov16_02119D20
ov16_02119D20:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov16_02119D24
ov16_02119D24:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02119D3C
ov16_02119D3C:
	.byte 0x4A, 0x30, 0x36, 0x2E
	.byte 0x53, 0x41, 0x44, 0x00
	.global ov16_02119D44
ov16_02119D44:
	.byte 0x4A, 0x31, 0x38, 0x2E, 0x53, 0x41, 0x44, 0x00
	.global ov16_02119D4C
ov16_02119D4C:
	.byte 0x4A, 0x31, 0x39, 0x2E
	.byte 0x53, 0x41, 0x44, 0x00
	.global ov16_02119D54
ov16_02119D54:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x53, 0x63, 0x6F, 0x75, 0x74, 0x44, 0x61, 0x74, 0x61, 0x2E, 0x64, 0x61, 0x74
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119D74
ov16_02119D74:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x48, 0x65, 0x61, 0x64, 0x68, 0x75, 0x6E, 0x74, 0x44, 0x61, 0x74, 0x61, 0x2E
	.byte 0x64, 0x61, 0x74, 0x00
	.global ov16_02119D94
ov16_02119D94:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x4A, 0x69, 0x6E, 0x6D, 0x79, 0x61, 0x6B, 0x75, 0x4C, 0x56, 0x2E, 0x64, 0x61
	.byte 0x74, 0x00, 0x00, 0x00
	.global ov16_02119DB4
ov16_02119DB4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x53, 0x65, 0x74, 0x52, 0x65, 0x73, 0x74, 0x50, 0x6F, 0x69, 0x6E, 0x74, 0x2E
	.byte 0x64, 0x61, 0x74, 0x00
	.global ov16_02119DD4
ov16_02119DD4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119DF4
ov16_02119DF4:
	.byte 0x58, 0xE0, 0x10, 0x02, 0x78, 0xE0, 0x10, 0x02
	.global ov16_02119DFC
ov16_02119DFC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119E14
ov16_02119E14:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119E34
ov16_02119E34:
	.byte 0x78, 0x05, 0x11, 0x02, 0x98, 0x05, 0x11, 0x02
	.global ov16_02119E3C
ov16_02119E3C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02119E5C
ov16_02119E5C:
	.byte 0x1C, 0x11, 0x11, 0x02
	.byte 0x3C, 0x11, 0x11, 0x02
	.global ov16_02119E64
ov16_02119E64:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02119E7C
ov16_02119E7C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x68, 0x11, 0x02
	.byte 0x48, 0x68, 0x11, 0x02
	.global ov16_02119EA4
ov16_02119EA4:
	.byte 0x52, 0x50, 0x47, 0x5F, 0x53, 0x48, 0x41, 0x44, 0x4F, 0x57, 0x5F, 0x41
	.byte 0x4C, 0x50, 0x48, 0x41, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov16_02119EC0
ov16_02119EC0:
	.space 0x04
	.global ov16_02119EC4
ov16_02119EC4:
	.space 0x10
	.global ov16_02119ED4
ov16_02119ED4:
	.space 0x10
	.global ov16_02119EE4
ov16_02119EE4:
	.space 0x1C

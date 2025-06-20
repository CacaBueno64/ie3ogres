
	.include "/macros/function.inc"
	.include "/include/overlay55.inc"

	.text
	arm_func_start FUN_ov55_02119f00
FUN_ov55_02119f00: ; 0x02119F00
	ldr r1, _02119F4C ; =0x0209C220
	ldr r2, _02119F50 ; =0x0209BA20
	ldrh r3, [r1, #0x6a]
	ldr r2, [r2, #0x7ec]
	mov r12, #0
	cmp r3, #0
	ble _02119F44
_02119F1C:
	ldrh r1, [r2, #0x24]
	cmp r1, r0
	ldreqb r1, [r2, #0x26]
	cmpeq r1, #0xfd
	moveq r0, #1
	bxeq lr
	add r12, r12, #1
	cmp r12, r3
	add r2, r2, #0x2c
	blt _02119F1C
_02119F44:
	mov r0, #0
	bx lr
_02119F4C: .word 0x0209C220
_02119F50: .word 0x0209BA20
	arm_func_end FUN_ov55_02119f00

	arm_func_start FUN_ov55_02119f54
FUN_ov55_02119f54: ; 0x02119F54
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldrsb r0, [r0]
	cmp r0, #0
	blt _02119F74
	cmp r0, #0x7e
	ble _02119F84
_02119F74:
	cmp r0, #0xa1
	blt _02119F8C
	cmp r0, #0xdf
	bgt _02119F8C
_02119F84:
	mov r0, #1
	bx lr
_02119F8C:
	mov r0, #2
	bx lr
	arm_func_end FUN_ov55_02119f54

	arm_func_start FUN_ov55_02119f94
FUN_ov55_02119f94: ; 0x02119F94
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #1
	ldreqb r0, [r0]
	ldrneb r1, [r0, #1]
	ldrneb r0, [r0]
	orrne r0, r0, r1, lsl #8
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov55_02119f94

	arm_func_start FUN_ov55_02119fc0
FUN_ov55_02119fc0: ; 0x02119FC0
	stmfd sp!, {r3, lr}
	mov r3, r2, asr #1
	add r2, r2, r3, lsr #30
	mov r12, r2, asr #2
	cmp r12, #0
	mov lr, #0
	ble _0211A008
_02119FDC:
	mov r3, lr, lsl #1
	mov r2, r3, lsl #1
	ldrh r2, [r1, r2]
	cmp r0, r2
	addeq r0, r3, #1
	moveq r0, r0, lsl #1
	ldreqh r0, [r1, r0]
	ldmeqfd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, r12
	blt _02119FDC
_0211A008:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov55_02119fc0

	arm_func_start FUN_ov55_0211a010
FUN_ov55_0211a010: ; 0x0211A010
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r2
	movs r7, r1
	mov r8, r0
	cmpne r6, #0
	moveq r0, #0
	mov r5, r3
	streqb r0, [r8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r7
	bl STD_GetStringLength
	add r4, r7, r0
	cmp r7, r4
	bhs _0211A0B4
	ldr r9, _0211A0C0 ; =0x00004081
_0211A04C:
	mov r0, r7
	bl FUN_ov55_02119f54
	mov r10, r0
	mov r0, r7
	mov r1, r10
	bl FUN_ov55_02119f94
	cmp r10, #2
	bne _0211A09C
	cmp r0, r9
	beq _0211A094
	mov r1, r6
	mov r2, r5
	bl FUN_ov55_02119fc0
	cmp r0, #0
	strneb r0, [r8]
	movne r0, r0, asr #8
	strneb r0, [r8, #1]
	addne r8, r8, #2
_0211A094:
	add r7, r7, #2
	b _0211A0AC
_0211A09C:
	cmp r10, #1
	bne _0211A0B4
	ldrsb r0, [r7], #1
	strb r0, [r8], #1
_0211A0AC:
	cmp r7, r4
	blo _0211A04C
_0211A0B4:
	mov r0, #0
	strb r0, [r8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A0C0: .word 0x00004081
	arm_func_end FUN_ov55_0211a010

	arm_func_start FUN_ov55_0211a0c4
FUN_ov55_0211a0c4: ; 0x0211A0C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r6, r1
	cmp r0, #0
	mov r10, r3
	cmpne r6, #0
	cmpne r10, #0
	ldr r9, [sp, #0x38]
	mov r4, r2
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r5, sp, #0
	mov r1, r0
	mov r0, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov55_0211a010
	mov r0, r5
	bl STD_GetStringLength
	mov r6, r0
	cmp r6, #0
	mov r7, #0
	ble _0211A174
	mov r4, r7
_0211A128:
	mov r8, r4
	cmp r9, #0
	ble _0211A168
_0211A134:
	ldr r0, [r10, r8, lsl #2]
	bl STD_GetStringLength
	mov r2, r0
	ldr r1, [r10, r8, lsl #2]
	add r0, r5, r7
	bl STD_CompareNString
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r8, r8, #1
	cmp r8, r9
	blt _0211A134
_0211A168:
	add r7, r7, #2
	cmp r7, r6
	blt _0211A128
_0211A174:
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov55_0211a0c4

	arm_func_start FUN_ov55_0211a180
FUN_ov55_0211a180: ; 0x0211A180
	stmfd sp!, {r3, lr}
	str r1, [r0, #0x58]
	cmp r1, #1
	beq _0211A1A4
	cmp r1, #2
	beq _0211A1BC
	cmp r1, #3
	beq _0211A1D4
	ldmfd sp!, {r3, pc}
_0211A1A4:
	ldr r0, _0211A1EC ; =0x0209F5C0
	mov r1, #0
	mov r2, #7
	mov r3, #5
	bl  FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_0211A1BC:
	ldr r0, _0211A1EC ; =0x0209F5C0
	mov r1, #0
	mov r2, #8
	mov r3, #6
	bl  FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_0211A1D4:
	mov r1, #0
	ldr r0, _0211A1EC ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xb
	bl  FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_0211A1EC: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211a180

	arm_func_start FUN_ov55_0211a1f0
FUN_ov55_0211a1f0: ; 0x0211A1F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x98
	ldr r1, _0211A42C ; =0x0209A454
	mov r6, #0
	ldr r1, [r1, #4]
	mov r4, r0
	cmp r1, #0
	cmpne r1, #2
	mov r5, #1
	mov r0, r6
	cmpne r1, #3
	bne _0211A23C
	ldr r1, [r4, #0x88]
	ldr r0, _0211A430 ; =0x0209A460
	str r1, [sp]
	ldr r1, [r4, #0x188]
	ldr r2, [r4, #0x18c]
	ldr r3, [r4, #0x84]
	bl FUN_ov55_0211a0c4
_0211A23C:
	ldr r1, _0211A42C ; =0x0209A454
	ldr r1, [r1, #4]
	cmp r1, #5
	beq _0211A258
	cmp r1, #6
	beq _0211A33C
	b _0211A3BC
_0211A258:
	add r2, sp, #4
	mov r0, #4
_0211A260:
	strb r6, [r2]
	strb r6, [r2, #1]
	strb r6, [r2, #2]
	strb r6, [r2, #3]
	add r2, r2, #4
	subs r0, r0, #1
	bne _0211A260
	ldr r0, _0211A434 ; =0x0209A5D0
	add r1, sp, #0x18
	strb r6, [r2]
	bl FUN_02062800
	ldr r2, _0211A430 ; =0x0209A460
	add r1, sp, #0x34
	add r0, r4, #0x194
	bl FUN_ov55_0211d1f0
	mov r7, r0
	bl FUN_ov55_02119f00
	cmp r0, #0
	beq _0211A30C
	ldr r6, _0211A438 ; =0x020A9C40
	mov r1, r7
	mov r0, r6
	mov r2, #5
	bl FUN_02045b40
	mov r0, r4
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xa4]
	blx r2
	ldr r0, _0211A43C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r6
	mov r2, r5
	mov r1, #0
	bl FUN_020460a8
	mov r0, r4
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xc4]
	blx r2
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A30C:
	mov r0, r4
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xa4]
	blx r2
	ldr r0, _0211A43C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	mov r0, #2
	add sp, sp, #0x98
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A33C:
	ldr r0, _0211A440 ; =0x0211D86C
	ldr r1, _0211A430 ; =0x0209A460
	mov r5, #0
	bl STD_CompareString
	cmp r0, #0
	mov r0, r4
	ldr r2, [r0]
	moveq r5, #1
	cmp r5, #0
	mov r1, #1
	ldr r2, [r2, #0xa4]
	beq _0211A39C
	blx r2
	ldr r0, _0211A43C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r1, #3
	ldr r0, _0211A444 ; =0x020A1640
	str r1, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	add sp, sp, #0x98
	orr r1, r1, #2
	strb r1, [r0, #0x12]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A39C:
	blx r2
	ldr r0, _0211A43C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	mov r0, #2
	add sp, sp, #0x98
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3BC:
	cmp r0, #0
	mov r0, r4
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xa4]
	beq _0211A3F0
	blx r2
	ldr r0, _0211A43C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x98
	str r5, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3F0:
	blx r2
	ldr r0, _0211A43C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, _0211A438 ; =0x020A9C40
	mov r2, r5
	mov r1, #0
	bl FUN_020460a8
	mov r0, r4
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xc4]
	blx r2
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A42C: .word 0x0209A454
_0211A430: .word 0x0209A460
_0211A434: .word 0x0209A5D0
_0211A438: .word 0x020A9C40
_0211A43C: .word 0x0209AC44
_0211A440: .word 0x0211D86C
_0211A444: .word 0x020A1640
	arm_func_end FUN_ov55_0211a1f0

	arm_func_start FUN_ov55_0211a448
FUN_ov55_0211a448: ; 0x0211A448
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #5
	ldr r0, _0211A4EC ; =0x0209A454
	str r2, [r5, #8]
	ldr r0, [r0, #4]
	mov r4, r1
	cmp r0, #6
	bne _0211A488
	ldr r0, _0211A4F0 ; =0x020A1640
	ldrb r0, [r0, #0x12]
	tst r0, #2
	beq _0211A488
	mov r0, #6
	bl  FUN_ov16_020f153c
	b _0211A498
_0211A488:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
_0211A498:
	ldr r0, _0211A4EC ; =0x0209A454
	mov r1, #0
	ldr r0, [r0, #4]
	cmp r0, #5
	bne _0211A4E0
	cmp r4, #0
	ldr r0, [r5, #4]
	beq _0211A4C4
	mov r2, #0x24
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4C4:
	mov r2, #0x22
	bl FUN_02041eac
	ldr r0, [r5, #4]
	mov r1, #1
	mov r2, #0xa
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4E0:
	ldr r0, [r5, #4]
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4EC: .word 0x0209A454
_0211A4F0: .word 0x020A1640
	arm_func_end FUN_ov55_0211a448

	arm_func_start FUN_ov55_0211a4f4
FUN_ov55_0211a4f4: ; 0x0211A4F4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211A570 ; =0x0209A454
	mov r5, r0
	ldrb r0, [r1, #0x1f]
	cmp r0, #0
	movne r0, #0
	strne r0, [r1, #8]
	strneb r0, [r1, #0xc]
	bne _0211A524
	ldr r0, _0211A574 ; =0x0209A460
	add r1, r5, #0x6c
	bl STD_CopyString
_0211A524:
	mov r0, r5
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0xa4]
	blx r2
	ldr r0, _0211A578 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r4, #0
	ldr r0, _0211A57C ; =0x020A9C40
	mov r1, r4
	mov r2, r4
	bl FUN_020460a8
	mov r0, r5
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0xc4]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_0211A570: .word 0x0209A454
_0211A574: .word 0x0209A460
_0211A578: .word 0x0209AC44
_0211A57C: .word 0x020A9C40
	arm_func_end FUN_ov55_0211a4f4

	arm_func_start FUN_ov55_0211a580
FUN_ov55_0211a580: ; 0x0211A580
	ldr r12, [r0, #0x50]
	mov r3, #0xc
	add r12, r12, #0xd
	mla r0, r12, r3, r0
	ldr r3, [r0, #0xa4]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0
	blt _0211A5B8
	cmp r1, #0x1a
	bge _0211A5B8
	cmp r2, #6
	blo _0211A5C0
_0211A5B8:
	mov r0, #0
	bx lr
_0211A5C0:
	mov r0, #0x1a
	mul r0, r2, r0
	mov r1, r1, lsl #1
	add r0, r3, r0, lsl #1
	ldrh r0, [r1, r0]
	bx lr
	arm_func_end FUN_ov55_0211a580

	arm_func_start FUN_ov55_0211a5d8
FUN_ov55_0211a5d8: ; 0x0211A5D8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r12, [r0]
	mov r8, r0
	ldr r12, [r12, #0xac]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	blx r12
	mov r4, r0
	b _0211A604
_0211A600:
	sub r7, r7, #1
_0211A604:
	cmp r7, #0
	ble _0211A62C
	mov r0, r8
	ldr r3, [r0]
	mov r2, r6
	ldr r3, [r3, #0xac]
	sub r1, r7, #1
	blx r3
	cmp r4, r0
	beq _0211A600
_0211A62C:
	mov r0, #1
	stmia r5, {r0, r7}
	str r6, [r5, #8]
	strh r4, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov55_0211a5d8

	arm_func_start FUN_ov55_0211a640
FUN_ov55_0211a640: ; 0x0211A640
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r0, _0211AA1C ; =0x0209A460
	ldr r5, _0211AA20 ; =0x0209A454
	mov r8, #1
	mov r7, #0
	ldr r6, _0211AA1C ; =0x0209A460
	bl _strlen
	cmp r0, #0x10
	blo _0211A6A0
	ldrh r1, [r4, #0x4c]
	ldr r0, _0211AA24 ; =0x00004242
	cmp r1, r0
	ldrne r0, _0211AA28 ; =0x00004343
	cmpne r1, r0
	ldrne r0, _0211AA2C ; =0x00004444
	cmpne r1, r0
	ldrne r0, _0211AA30 ; =0x00004141
	cmpne r1, r0
	beq _0211A6A0
	ldr r0, _0211AA34 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A6A0:
	ldrh r1, [r4, #0x4c]
	ldr r0, _0211AA30 ; =0x00004141
	cmp r1, r0
	bgt _0211A6D4
	bge _0211A704
	cmp r1, #0
	bgt _0211A6C4
	beq _0211A9E4
	b _0211A98C
_0211A6C4:
	ldr r0, _0211AA38 ; =0x00002020
	cmp r1, r0
	beq _0211A9E4
	b _0211A98C
_0211A6D4:
	ldr r0, _0211AA28 ; =0x00004343
	cmp r1, r0
	bgt _0211A6F4
	bge _0211A870
	ldr r0, _0211AA24 ; =0x00004242
	cmp r1, r0
	beq _0211A774
	b _0211A98C
_0211A6F4:
	ldr r0, _0211AA2C ; =0x00004444
	cmp r1, r0
	beq _0211A960
	b _0211A98C
_0211A704:
	ldr r0, _0211AA34 ; =0x0209AC44
	mov r1, r8
	bl FUN_0202cf6c
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _0211A748
	ldr r5, _0211AA3C ; =0x0209F5C0
	mov r1, r7
	mov r0, r5
	mov r2, r8
	str r8, [r4, #0x50]
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r7
	mov r2, #2
	bl  FUN_ov16_020f60f8
	b _0211A9E4
_0211A748:
	ldr r5, _0211AA3C ; =0x0209F5C0
	mov r1, r7
	mov r0, r5
	mov r2, r8
	str r7, [r4, #0x50]
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r7
	mov r2, #2
	bl  FUN_ov16_020f6084
	b _0211A9E4
_0211A774:
	ldr r0, [r5, #8]
	cmp r0, #2
	blt _0211A9E4
	sub r1, r0, #2
	sub r0, r0, #1
	ldrb r1, [r6, r1]
	ldrsb r0, [r6, r0]
	ldr r9, [r4, #0x164]
	mov r8, #0
	orr r0, r1, r0, lsl #8
	cmp r9, #0
	mov r1, r0, lsl #0x10
	beq _0211A9E4
	mov r7, r8
	b _0211A834
_0211A7B0:
	ldrb r0, [r9, #1]
	and r2, r2, #0xff
	orr r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, r1, lsr #16
	bne _0211A82C
	ldr r0, _0211AA34 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	tst r7, #1
	subne r9, r9, #2
	addeq r9, r9, #2
	ldrb r2, [r9]
	ldrb r0, [r9, #1]
	ldr r1, [r5, #8]
	orr r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	sub r0, r1, #2
	strb r2, [r6, r0]
	ldr r0, [r5, #8]
	mov r2, r2, asr #8
	sub r1, r0, #1
	mov r0, r4
	strb r2, [r6, r1]
	ldr r1, [r0]
	ldr r1, [r1, #0xd0]
	blx r1
	mov r8, #1
	b _0211A848
_0211A82C:
	add r7, r7, #1
	add r9, r9, #2
_0211A834:
	ldrb r2, [r9]
	cmp r2, #0
	beq _0211A848
	cmp r2, #0x20
	bhs _0211A7B0
_0211A848:
	ldr r0, _0211AA1C ; =0x0209A460
	bl _strlen
	cmp r0, #0x10
	blo _0211A9E4
	cmp r8, #0
	bne _0211A9E4
_0211A860:
	ldr r0, _0211AA34 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	b _0211A9E4
_0211A870:
	ldr r0, [r5, #8]
	cmp r0, #2
	blt _0211A9E4
	sub r1, r0, #2
	sub r0, r0, #1
	ldrb r1, [r6, r1]
	ldrsb r0, [r6, r0]
	ldr r9, [r4, #0x170]
	mov r8, #0
	orr r0, r1, r0, lsl #8
	cmp r9, #0
	mov r1, r0, lsl #0x10
	beq _0211A9E4
	mov r7, r8
	b _0211A930
_0211A8AC:
	ldrb r0, [r9, #1]
	and r2, r2, #0xff
	orr r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, r1, lsr #16
	bne _0211A928
	ldr r0, _0211AA34 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	tst r7, #1
	subne r9, r9, #2
	addeq r9, r9, #2
	ldrb r2, [r9]
	ldrb r0, [r9, #1]
	ldr r1, [r5, #8]
	orr r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	sub r0, r1, #2
	strb r2, [r6, r0]
	ldr r0, [r5, #8]
	mov r2, r2, asr #8
	sub r1, r0, #1
	mov r0, r4
	strb r2, [r6, r1]
	ldr r1, [r0]
	ldr r1, [r1, #0xd0]
	blx r1
	mov r8, #1
	b _0211A944
_0211A928:
	add r7, r7, #1
	add r9, r9, #2
_0211A930:
	ldrb r2, [r9]
	cmp r2, #0
	beq _0211A944
	cmp r2, #0x20
	bhs _0211A8AC
_0211A944:
	ldr r0, _0211AA1C ; =0x0209A460
	bl _strlen
	cmp r0, #0x10
	blo _0211A9E4
	cmp r8, #0
	bne _0211A9E4
	b _0211A860
_0211A960:
	ldr r0, [r5, #8]
	cmp r0, #0
	ble _0211A9E4
	ldr r0, _0211AA34 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r5, #8]
	sub r1, r0, #2
	str r1, [r5, #8]
	mov r0, r4
	b _0211A9D4
_0211A98C:
	ldr r0, [r5, #8]
	cmp r0, #0x10
	bge _0211A9E4
	ldr r0, _0211AA34 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r2, [r5, #8]
	add r0, r2, #1
	str r0, [r5, #8]
	ldrh r1, [r4, #0x4c]
	mov r0, r4
	strb r1, [r6, r2]
	ldr r3, [r5, #8]
	mov r1, r1, asr #8
	add r2, r3, #1
	str r2, [r5, #8]
	strb r1, [r6, r3]
	ldr r1, [r5, #8]
_0211A9D4:
	strb r7, [r6, r1]
	ldr r1, [r0]
	ldr r1, [r1, #0xd0]
	blx r1
_0211A9E4:
	ldr r0, _0211AA1C ; =0x0209A460
	bl _strlen
	cmp r0, #0x10
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r1, [r4, #0x4c]
	ldr r0, _0211AA28 ; =0x00004343
	cmp r1, r0
	ldrne r0, _0211AA24 ; =0x00004242
	cmpne r1, r0
	ldrne r0, _0211AA30 ; =0x00004141
	cmpne r1, r0
	movne r0, #3
	strne r0, [r4, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AA1C: .word 0x0209A460
_0211AA20: .word 0x0209A454
_0211AA24: .word 0x00004242
_0211AA28: .word 0x00004343
_0211AA2C: .word 0x00004444
_0211AA30: .word 0x00004141
_0211AA34: .word 0x0209AC44
_0211AA38: .word 0x00002020
_0211AA3C: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211a640

	arm_func_start FUN_ov55_0211aa40
FUN_ov55_0211aa40: ; 0x0211AA40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #8]
	ldr r4, _0211AF5C ; =0x00002020
	cmp r0, #4
	ldreqb r0, [r10, #0x15]
	mov r9, r1
	mov r11, #4
	mov r6, #3
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	ldr r0, _0211AF60 ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldreq r1, [r10, #0xc]
	ldreq r0, [r10, #0x10]
	cmpeq r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AF64 ; =0x0209A0F4
	cmp r1, #0
	ldrh r0, [r0]
	orr r0, r0, r9
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bne _0211AEC8
	tst r0, #0x80
	ldr r7, [r10, #0x44]
	ldr r8, [r10, #0x48]
	beq _0211AB98
	ldr r0, [r10, #0x40]
	cmp r0, #1
	bne _0211AB38
_0211AAC8:
	mov r0, r10
	ldr r3, [r0]
	add r8, r8, #1
	ldr r3, [r3, #0xac]
	mov r1, r7
	mov r2, r8
	mov r5, #4
	blx r3
	cmp r0, r4
	beq _0211AAC8
	cmp r0, #0
	ldr r0, _0211AF68 ; =0x0209A454
	bne _0211AB20
	cmp r7, #0xb
	blt _0211AB10
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _0211AB18
_0211AB10:
	str r6, [r10, #0x40]
	b _0211AB88
_0211AB18:
	str r5, [r10, #0x40]
	b _0211AB88
_0211AB20:
	mov r0, r10
	ldr r4, [r0]
	mov r1, r7
	ldr r4, [r4, #0xa8]
	mov r2, r8
	b _0211AB80
_0211AB38:
	sub r0, r0, #3
	cmp r0, #1
	bhi _0211AB88
	sub r5, r5, #1
_0211AB48:
	mov r0, r10
	ldr r3, [r0]
	add r5, r5, #1
	ldr r3, [r3, #0xac]
	mov r1, r7
	mov r2, r5
	blx r3
	cmp r0, r4
	beq _0211AB48
	mov r0, r10
	ldr r4, [r0]
	mov r1, r7
	ldr r4, [r4, #0xa8]
	mov r2, r5
_0211AB80:
	add r3, r10, #0x40
	blx r4
_0211AB88:
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB98:
	tst r0, #0x40
	ldr r5, _0211AF68 ; =0x0209A454
	beq _0211AC48
	ldr r0, [r10, #0x40]
	cmp r0, #3
	moveq r8, #6
	beq _0211ABBC
	cmp r0, #4
	moveq r8, #6
_0211ABBC:
	mov r0, r10
	ldr r3, [r0]
	sub r8, r8, #1
	ldr r3, [r3, #0xac]
	mov r1, r7
	mov r2, r8
	mov r5, #4
	blx r3
	cmp r0, r4
	beq _0211ABBC
	cmp r0, #0
	ldreq r1, [r10, #0x40]
	ldr r0, _0211AF68 ; =0x0209A454
	cmpeq r1, #1
	bne _0211AC1C
	cmp r7, #0xb
	blt _0211AC0C
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _0211AC14
_0211AC0C:
	str r6, [r10, #0x40]
	b _0211AC38
_0211AC14:
	str r5, [r10, #0x40]
	b _0211AC38
_0211AC1C:
	mov r0, r10
	ldr r4, [r0]
	mov r1, r7
	ldr r4, [r4, #0xa8]
	mov r2, r8
	add r3, r10, #0x40
	blx r4
_0211AC38:
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AC48:
	tst r0, #0x20
	beq _0211AD18
	ldr r1, [r10, #0x40]
	mov r0, r5
	cmp r1, #1
	bne _0211ACD4
	ldr r6, _0211AF70 ; =0x4EC4EC4F
	mov r5, #0x1a
_0211AC68:
	add r2, r7, #0x19
	smull r1, r7, r6, r2
	mov r0, r2, lsr #0x1f
	add r7, r0, r7, asr #3
	smull r1, r0, r5, r7
	sub r7, r2, r1
	mov r0, r10
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #0xac]
	mov r2, r8
	blx r3
	cmp r0, r4
	ldrneh r1, [r10, #0x4c]
	cmpne r0, r1
	beq _0211AC68
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r10
	ldr r4, [r0]
	mov r1, r7
	ldr r4, [r4, #0xa8]
	mov r2, r8
	add r3, r10, #0x40
	blx r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACD4:
	cmp r1, #3
	bne _0211ACFC
	ldr r0, [r0, #4]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r11, [r10, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACFC:
	cmp r1, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r6, [r10, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AD18:
	tst r0, #0x10
	beq _0211ADE4
	ldr r0, [r10, #0x40]
	cmp r0, #1
	bne _0211ADA0
	ldr r6, _0211AF70 ; =0x4EC4EC4F
	mov r5, #0x1a
_0211AD34:
	add r2, r7, #1
	smull r1, r7, r6, r2
	mov r0, r2, lsr #0x1f
	add r7, r0, r7, asr #3
	smull r1, r0, r5, r7
	sub r7, r2, r1
	mov r0, r10
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #0xac]
	mov r2, r8
	blx r3
	cmp r0, r4
	ldrneh r1, [r10, #0x4c]
	cmpne r0, r1
	beq _0211AD34
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r10
	ldr r4, [r0]
	mov r1, r7
	ldr r4, [r4, #0xa8]
	mov r2, r8
	add r3, r10, #0x40
	blx r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADA0:
	cmp r0, #3
	bne _0211ADC8
	ldr r0, [r5, #4]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r11, [r10, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADC8:
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r6, [r10, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADE4:
	tst r9, #1
	beq _0211AE80
	ldr r0, [r10, #0x40]
	cmp r0, #1
	beq _0211AE0C
	cmp r0, #3
	beq _0211AE20
	cmp r0, #4
	beq _0211AE6C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE0C:
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE20:
	ldr r0, _0211AF74 ; =0x0209A460
	bl STD_GetStringLength
	cmp r0, #0
	bgt _0211AE40
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE40:
	ldr r0, [r5, #8]
	cmp r0, #0
	bgt _0211AE58
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE58:
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0xc0]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE6C:
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0xc8]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE80:
	tst r9, #2
	beq _0211AEAC
	ldrh r4, [r10, #0x4c]
	ldr r1, _0211AF78 ; =0x00004444
	mov r0, r10
	strh r1, [r10, #0x4c]
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	strh r4, [r10, #0x4c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AEAC:
	tst r9, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r6, [r10, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AEC8:
	cmp r1, #3
	bne _0211AF28
	tst r9, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #1
	ldr r0, _0211AF7C ; =0x020A9C40
	mov r1, r5
	mov r2, r4
	bl FUN_020460a8
	mov r0, r10
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0xc4]
	blx r2
	mov r0, r10
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #0xa4]
	blx r2
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, r11
	str r6, [r10, #0x40]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF28:
	tst r9, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	str r5, [r10, #0x10]
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #0xa4]
	blx r2
	ldr r0, _0211AF6C ; =0x0209AC44
	mov r1, r11
	str r6, [r10, #0x40]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF5C: .word 0x00002020
_0211AF60: .word 0x0209F5C0
_0211AF64: .word 0x0209A0F4
_0211AF68: .word 0x0209A454
_0211AF6C: .word 0x0209AC44
_0211AF70: .word 0x4EC4EC4F
_0211AF74: .word 0x0209A460
_0211AF78: .word 0x00004444
_0211AF7C: .word 0x020A9C40
	arm_func_end FUN_ov55_0211aa40

	arm_func_start FUN_ov55_0211af80
FUN_ov55_0211af80: ; 0x0211AF80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r4, r1
	mov r7, r2
	mov r5, r3
	ldr r0, _0211B074 ; =0x0209F5C0
	mov r2, r4
	mov r3, r7
	mov r1, #0
	bl  FUN_ov16_020f6b3c
	ldr r1, [r6, #0xc]
	sub r1, r1, #1
	cmp r1, #2
	bhi _0211AFE0
	cmp r4, #0x68
	blt _0211AFDC
	cmp r4, #0x98
	bge _0211AFDC
	cmp r7, #0x68
	blt _0211AFDC
	cmp r7, #0x80
	movlt r0, #0xb
	blt _0211AFE0
_0211AFDC:
	mov r0, #0
_0211AFE0:
	cmp r0, #1
	bne _0211B06C
	mov r0, r7, asr #2
	add r2, r7, r0, lsr #29
	mov r0, r6
	mov r1, r4, asr #2
	mov r2, r2, asr #3
	add r1, r4, r1, lsr #29
	sub r2, r2, #7
	ldr r3, [r0]
	mov r4, r1, asr #3
	add r1, r2, r2, lsr #31
	sub r4, r4, #3
	mov r7, r1, asr #1
	ldr r3, [r3, #0xac]
	mov r1, r4
	mov r2, r7
	blx r3
	ldr r1, _0211B078 ; =0x00002020
	cmp r0, r1
	bne _0211B04C
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #4]
	str r0, [r5, #8]
	strh r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B04C:
	mov r0, r6
	ldr r6, [r0]
	mov r1, r4
	ldr r6, [r6, #0xa8]
	mov r2, r7
	mov r3, r5
	blx r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B06C:
	str r0, [r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B074: .word 0x0209F5C0
_0211B078: .word 0x00002020
	arm_func_end FUN_ov55_0211af80

	arm_func_start FUN_ov55_0211b07c
FUN_ov55_0211b07c: ; 0x0211B07C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	ldr r0, [r7, #0xc]
	ldr r8, _0211B2F0 ; =0x02099F50
	mov r4, #1
	cmp r0, #3
	mov r5, #0
	addls pc, pc, r0, lsl #2
	b _0211B2E8
_0211B0A4: ; jump table
	b _0211B0B4 ; case 0
	b _0211B158 ; case 1
	b _0211B1E0 ; case 2
	b _0211B268 ; case 3
_0211B0B4:
	ldr r1, [r7, #0x64]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r6, r5
	mov r0, r6
	mov r2, #0x540
	bl MIi_CpuClearFast
	ldr r0, [r8]
	mov r1, #2
	mov r2, r4
	bl rwriteat14n18
	ldr r0, _0211B2F4 ; =0x0209A454
	ldr r3, _0211B2F8 ; =0x0209A460
	ldr r0, [r0, #4]
	mov r2, #6
	cmp r0, #4
	cmpne r0, #5
	cmpne r0, #6
	mov r0, #3
	stmia sp, {r0, r5}
	ldr r1, [r7, #0x64]
	mov r0, #0x70
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, [r8]
	moveq r6, #5
	ldr r5, [r0]
	mov r1, r6
	ldr r5, [r5, #8]
	blx r5
	ldr r0, [r7, #0x64]
	mov r1, #0x540
	bl DC_FlushRange
	add sp, sp, #0x1c
	strb r4, [r7, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B158:
	add r0, r7, #0x90
	bl  FUN_ov16_020f2f20
	ldr r0, [r8]
	mov r1, r4
	mov r2, #4
	bl rwriteat14n18
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r0, [r7, #0x9e]
	ldrh r2, [r7, #0x9c]
	ldr r1, [r7, #0x94]
	mov r3, r0, lsl #3
	ldr r0, _0211B2FC ; =0x0211D87C
	mov r2, r2, lsl #3
	bl  FUN_ov16_020f2184
	ldr r0, [r8]
	bl wraper_rwiteat14n18
	ldrh r2, [r7, #0x9c]
	ldrh r1, [r7, #0x9e]
	ldr r0, [r7, #0x94]
	strb r4, [r7, #0xa0]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B1E0:
	add r0, r7, #0x90
	bl  FUN_ov16_020f2f20
	ldr r0, [r8]
	mov r1, r4
	mov r2, #4
	bl rwriteat14n18
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, #0xd
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r0, [r7, #0x9e]
	ldrh r2, [r7, #0x9c]
	ldr r1, [r7, #0x94]
	mov r3, r0, lsl #3
	ldr r0, _0211B300 ; =0x0211D8C8
	mov r2, r2, lsl #3
	bl  FUN_ov16_020f2184
	ldr r0, [r8]
	bl wraper_rwiteat14n18
	ldrh r2, [r7, #0x9c]
	ldrh r1, [r7, #0x9e]
	ldr r0, [r7, #0x94]
	strb r4, [r7, #0xa0]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B268:
	add r0, r7, #0x90
	bl  FUN_ov16_020f2f20
	mov r6, #4
	ldr r0, [r8]
	mov r1, r4
	mov r2, r6
	bl rwriteat14n18
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r0, [r7, #0x9e]
	ldrh r2, [r7, #0x9c]
	ldr r1, [r7, #0x94]
	mov r3, r0, lsl #3
	ldr r0, _0211B304 ; =0x0211D8E4
	mov r2, r2, lsl #3
	bl  FUN_ov16_020f2184
	ldr r0, [r8]
	bl wraper_rwiteat14n18
	ldrh r2, [r7, #0x9c]
	ldrh r1, [r7, #0x9e]
	ldr r0, [r7, #0x94]
	strb r4, [r7, #0xa0]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_0211B2E8:
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B2F0: .word 0x02099F50
_0211B2F4: .word 0x0209A454
_0211B2F8: .word 0x0209A460
_0211B2FC: .word 0x0211D87C
_0211B300: .word 0x0211D8C8
_0211B304: .word 0x0211D8E4
	arm_func_end FUN_ov55_0211b07c

	arm_func_start FUN_ov55_0211b308
FUN_ov55_0211b308: ; 0x0211B308
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x20]
	cmp r3, #0
	ldr r1, [r4, #0x40]
	bne _0211B454
	cmp r1, r2
	beq _0211B35C
	ldrh r2, [r4, #0x2c]
	ldr r12, [r4, #0x20]
	ldr r5, [r4, #0x24]
	ldr r3, [r4, #0x28]
	ldr r0, _0211B51C ; =0x0209AC44
	mov r1, #8
	str r12, [r4, #0x40]
	str r5, [r4, #0x44]
	str r3, [r4, #0x48]
	strh r2, [r4, #0x4c]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B35C:
	cmp r2, #1
	beq _0211B378
	cmp r2, #3
	beq _0211B3F4
	cmp r2, #4
	beq _0211B444
	ldmfd sp!, {r3, r4, r5, pc}
_0211B378:
	ldr r3, [r4, #0x24]
	ldr r1, [r4, #0x44]
	cmp r3, r1
	ldreq r2, [r4, #0x28]
	ldreq r1, [r4, #0x48]
	cmpeq r2, r1
	beq _0211B3C4
	ldrh r2, [r4, #0x2c]
	ldr r12, [r4, #0x20]
	ldr r5, [r4, #0x24]
	ldr r3, [r4, #0x28]
	ldr r0, _0211B51C ; =0x0209AC44
	mov r1, #8
	str r12, [r4, #0x40]
	str r5, [r4, #0x44]
	str r3, [r4, #0x48]
	strh r2, [r4, #0x4c]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B3C4:
	ldr r1, [r4, #0x34]
	cmp r3, r1
	ldreq r1, [r4, #0x38]
	cmpeq r2, r1
	ldreqh r2, [r4, #0x2c]
	ldreqh r1, [r4, #0x3c]
	cmpeq r2, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211B3F4:
	ldr r0, _0211B520 ; =0x0209A460
	bl STD_GetStringLength
	cmp r0, #0
	bgt _0211B414
	ldr r0, _0211B51C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B414:
	ldr r0, _0211B524 ; =0x0209A454
	ldr r1, [r0, #8]
	cmp r1, #0
	bgt _0211B430
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0211B430:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc0]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211B444:
	ldr r1, [r0]
	ldr r1, [r1, #0xc8]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211B454:
	cmp r1, r2
	beq _0211B48C
	ldrh r2, [r4, #0x2c]
	ldr r12, [r4, #0x20]
	ldr r5, [r4, #0x24]
	ldr r3, [r4, #0x28]
	ldr r0, _0211B51C ; =0x0209AC44
	mov r1, #8
	str r12, [r4, #0x40]
	str r5, [r4, #0x44]
	str r3, [r4, #0x48]
	strh r2, [r4, #0x4c]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B48C:
	cmp r2, #0xb
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r3, #3
	mov r1, #0
	bne _0211B4F0
	mov r5, #1
	ldr r0, _0211B528 ; =0x020A9C40
	mov r2, r5
	bl FUN_020460a8
	mov r0, r4
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xc4]
	blx r2
	mov r0, r4
	ldr r2, [r0]
	mov r5, #3
	ldr r2, [r2, #0xa4]
	mov r1, r5
	blx r2
	ldr r0, _0211B51C ; =0x0209AC44
	mov r1, #4
	str r5, [r4, #0x40]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4F0:
	str r1, [r4, #0x10]
	ldr r2, [r0]
	mov r5, #3
	ldr r2, [r2, #0xa4]
	mov r1, r5
	blx r2
	ldr r0, _0211B51C ; =0x0209AC44
	mov r1, #4
	str r5, [r4, #0x40]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B51C: .word 0x0209AC44
_0211B520: .word 0x0209A460
_0211B524: .word 0x0209A454
_0211B528: .word 0x020A9C40
	arm_func_end FUN_ov55_0211b308

	arm_func_start FUN_ov55_0211b52c
FUN_ov55_0211b52c: ; 0x0211B52C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x20]
	cmp r1, #4
	bgt _0211B55C
	cmp r1, #1
	ldmltfd sp!, {r4, pc}
	beq _0211B568
	cmp r1, #3
	cmpne r1, #4
	beq _0211B5C0
	ldmfd sp!, {r4, pc}
_0211B55C:
	cmp r1, #0xb
	beq _0211B5C0
	ldmfd sp!, {r4, pc}
_0211B568:
	ldr r0, [r4, #0x40]
	cmp r0, r1
	ldreq r1, [r4, #0x44]
	ldreq r0, [r4, #0x24]
	cmpeq r1, r0
	bne _0211B590
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ldmeqfd sp!, {r4, pc}
_0211B590:
	ldr r0, _0211B614 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldrh r0, [r4, #0x2c]
	ldr r3, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r1, [r4, #0x28]
	str r3, [r4, #0x40]
	str r2, [r4, #0x44]
	str r1, [r4, #0x48]
	strh r0, [r4, #0x4c]
	ldmfd sp!, {r4, pc}
_0211B5C0:
	ldr r0, [r4, #0x40]
	cmp r0, r1
	ldreq r1, [r4, #0x44]
	ldreq r0, [r4, #0x24]
	cmpeq r1, r0
	ldreq r1, [r4, #0x48]
	ldreq r0, [r4, #0x28]
	cmpeq r1, r0
	beq _0211B5F0
	ldr r0, _0211B614 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211B5F0:
	ldrh r0, [r4, #0x2c]
	ldr r3, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r1, [r4, #0x28]
	str r3, [r4, #0x40]
	str r2, [r4, #0x44]
	str r1, [r4, #0x48]
	strh r0, [r4, #0x4c]
	ldmfd sp!, {r4, pc}
_0211B614: .word 0x0209AC44
	arm_func_end FUN_ov55_0211b52c

	arm_func_start FUN_ov55_0211b618
FUN_ov55_0211b618: ; 0x0211B618
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B74C ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldreq r1, [r5, #0xc]
	ldreq r0, [r5, #0x10]
	cmpeq r1, r0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0211B6D0
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	bne _0211B698
	mov r0, #1
	strb r0, [r5, #0x15]
	mov r0, r5
	ldr r12, [r0]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	ldr r12, [r12, #0xb0]
	add r3, r5, #0x20
	blx r12
_0211B698:
	ldrh r1, [r4]
	mov r0, r5
	add r3, r5, #0x30
	str r1, [r5, #0x18]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x1c]
	ldr r4, [r0]
	ldr r4, [r4, #0xb0]
	blx r4
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xb8]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211B6D0:
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	ldrne r0, [r5, #0x20]
	cmpne r0, #0
	beq _0211B720
	mov r0, r5
	ldr r4, [r0]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	ldr r4, [r4, #0xb0]
	add r3, r5, #0x30
	blx r4
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	bne _0211B720
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xbc]
	blx r1
_0211B720:
	mov r0, #0
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	str r0, [r5, #0x38]
	strh r0, [r5, #0x3c]
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	strh r0, [r5, #0x2c]
	strb r0, [r5, #0x15]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B74C: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211b618

	arm_func_start FUN_ov55_0211b750
FUN_ov55_0211b750: ; 0x0211B750
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0xa4
	mov r1, #0
	mov r2, #0xf0
	bl MI_CpuFill8
	ldr r0, _0211B834 ; =0x0211D924
	add r1, r4, #0xa4
	bl  FUN_ov16_020f316c
	ldr r0, _0211B838 ; =0x0209A454
	ldr r0, [r0, #4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211B7B4
_0211B788: ; jump table
	b _0211B7B4 ; case 0
	b _0211B7A4 ; case 1
	b _0211B7AC ; case 2
	b _0211B7AC ; case 3
	b _0211B7BC ; case 4
	b _0211B7C4 ; case 5
	b _0211B7CC ; case 6
_0211B7A4:
	ldr r0, _0211B83C ; =0x0211D944
	b _0211B7D0
_0211B7AC:
	ldr r0, _0211B840 ; =0x0211D968
	b _0211B7D0
_0211B7B4:
	ldr r0, _0211B844 ; =0x0211D98C
	b _0211B7D0
_0211B7BC:
	ldr r0, _0211B848 ; =0x0211D9B0
	b _0211B7D0
_0211B7C4:
	ldr r0, _0211B84C ; =0x0211D9D4
	b _0211B7D0
_0211B7CC:
	ldr r0, _0211B850 ; =0x0211D9F8
_0211B7D0:
	add r1, r4, #0xb0
	bl  FUN_ov16_020f316c
	ldr r1, [r4, #0x64]
	cmp r1, #0
	beq _0211B800
	mov r5, #0x540
	mov r2, r5
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r0, [r4, #0x64]
	mov r1, r5
	bl DC_FlushRange
_0211B800:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0211B828
	mov r2, #0
_0211B810:
	ldr r1, [r4, #0x68]
	mov r0, r2, lsl #1
	strh r2, [r1, r0]
	add r2, r2, #1
	cmp r2, #0x2a
	blt _0211B810
_0211B828:
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B834: .word 0x0211D924
_0211B838: .word 0x0209A454
_0211B83C: .word 0x0211D944
_0211B840: .word 0x0211D968
_0211B844: .word 0x0211D98C
_0211B848: .word 0x0211D9B0
_0211B84C: .word 0x0211D9D4
_0211B850: .word 0x0211D9F8
	arm_func_end FUN_ov55_0211b750

	arm_func_start FUN_ov55_0211b854
FUN_ov55_0211b854: ; 0x0211B854
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	add r6, sp, #0
	mov r4, r0
	mov r0, #0
	mov r1, r6
	mov r2, #0x20
	mov r5, r0
	bl MIi_CpuClearFast
	ldr r0, _0211BAAC ; =0x0209A454
	ldr r0, [r0, #4]
	cmp r0, #4
	cmpne r0, #5
	beq _0211B894
	cmp r0, #6
	bne _0211B8BC
_0211B894:
	ldr r3, _0211BAB0 ; =0x0211DA1C
	add r6, sp, #0
	mov r2, #7
_0211B8A0:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r6, #1]
	strb r1, [r6], #2
	bne _0211B8A0
	b _0211B8DC
_0211B8BC:
	ldr r3, _0211BAB4 ; =0x0211DA2C
	mov r2, #7
_0211B8C4:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r6, #1]
	strb r1, [r6], #2
	bne _0211B8C4
_0211B8DC:
	ldr r1, _0211BAB8 ; =0x0211DAA0
	ldr r9, _0211BABC ; =0x0211D6E4
	ldr r2, [r1]
	tst r2, #1
	ldreq r0, _0211BABC ; =0x0211D6E4
	addeq r3, sp, #0
	orreq r2, r2, #1
	streq r3, [r0]
	streq r2, [r1]
	ldr r0, [r9]
	ldr r8, [r4, #0xa4]
	cmp r0, #0
	beq _0211B934
	add r7, r4, #0xa4
	mov r6, #0xc
_0211B918:
	ldr r3, [r9, #4]
	mov r2, r8
	mla r1, r3, r6, r7
	bl  FUN_ov16_020f32b4
	ldr r0, [r9, #8]!
	cmp r0, #0
	bne _0211B918
_0211B934:
	ldr r9, [r4, #0x17c]
	cmp r9, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #0x80]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #0x180]
	mov r7, #0
	add r6, r9, r0
	mov r8, r7
	str r0, [r4, #0x8c]
	cmp r9, r6
	bhs _0211B9BC
_0211B970:
	mov r0, r9
	bl FUN_ov55_02119f54
	cmp r0, #2
	addeq r8, r8, #1
	addeq r9, r9, #2
	beq _0211B9B4
	cmp r0, #1
	bne _0211B9BC
	ldrsb r0, [r9]
	cmp r0, #0xd
	beq _0211B9A4
	cmp r0, #0xa
	bne _0211B9B0
_0211B9A4:
	cmp r8, #0
	movne r8, r5
	addne r7, r7, #1
_0211B9B0:
	add r9, r9, #1
_0211B9B4:
	cmp r9, r6
	blo _0211B970
_0211B9BC:
	ldr r6, _0211BAC0 ; =0x0209A250
	ldr r1, [r4, #0x8c]
	mov r0, r6
	str r7, [r4, #0x88]
	bl FUN_0202de44
	str r0, [r4, #0x80]
	mov r0, r6
	mov r1, r7, lsl #2
	bl FUN_0202de44
	str r0, [r4, #0x84]
	ldr r0, [r4, #0x80]
	ldr r1, [r4, #0x17c]
	ldr r2, [r4, #0x8c]
	bl FUN_020218d4
	ldr r8, [r4, #0x80]
	ldr r0, [r4, #0x8c]
	mov r6, #0
	add r10, r8, r0
	cmp r8, r10
	mov r7, r6
	mov r9, r8
	addhs sp, sp, #0x20
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BA18:
	mov r0, r8
	bl FUN_ov55_02119f54
	mov r1, r0
	cmp r1, #2
	bne _0211BA64
	mov r0, r8
	cmp r7, #0
	moveq r9, r8
	bl FUN_ov55_02119f94
	ldr r1, [r4, #0x188]
	ldr r2, [r4, #0x18c]
	bl FUN_ov55_02119fc0
	cmp r0, #0
	strneb r0, [r8]
	movne r0, r0, asr #8
	strneb r0, [r8, #1]
	add r7, r7, #1
	add r8, r8, #2
	b _0211BA9C
_0211BA64:
	cmp r1, #1
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsb r0, [r8]
	cmp r0, #0xd
	beq _0211BA84
	cmp r0, #0xa
	bne _0211BA98
_0211BA84:
	cmp r7, #0
	ldrne r0, [r4, #0x84]
	movne r7, r5
	strne r9, [r0, r6, lsl #2]
	addne r6, r6, #1
_0211BA98:
	strb r5, [r8], #1
_0211BA9C:
	cmp r8, r10
	blo _0211BA18
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BAAC: .word 0x0209A454
_0211BAB0: .word 0x0211DA1C
_0211BAB4: .word 0x0211DA2C
_0211BAB8: .word 0x0211DAA0
_0211BABC: .word 0x0211D6E4
_0211BAC0: .word 0x0209A250
	arm_func_end FUN_ov55_0211b854

	arm_func_start FUN_ov55_0211bac4
FUN_ov55_0211bac4: ; 0x0211BAC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0211BAD0:
	mov r0, r5
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x7c]
	blx r2
	add r4, r4, #1
	cmp r4, #0x14
	blt _0211BAD0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov55_0211bac4

	arm_func_start FUN_ov55_0211baf4
FUN_ov55_0211baf4: ; 0x0211BAF4
	add r2, r0, #0xa4
	mov r0, #0xc
	mla r0, r1, r0, r2
	ldr r12, _0211BB08 ; = FUN_ov16_020f33fc
	bx r12
_0211BB08: .word  FUN_ov16_020f33fc
	arm_func_end FUN_ov55_0211baf4

	arm_func_start FUN_ov55_0211bb0c
FUN_ov55_0211bb0c: ; 0x0211BB0C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	mov r5, #2
	bl FUN_0200505c
	mov r8, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r8
	bl DC_FlushRange
	ldr r9, [r4, #0xec]
	mov r7, r6
	cmp r9, #0
	beq _0211BB9C
	ldr r0, [r9, #0xc]
	mov r10, #3
	ldr r1, [r9, #0x10]
	mov r3, r10
	add r0, r9, r0
	mov r2, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r1, r6
	mov r2, r10
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	add r0, r9, r0
	mov r1, r8
	bl FUN_02005a1c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BB9C:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0211BBBC
	add r2, r7, #1
	mov r1, #0x54
	mov r3, #0
	bl  FUN_ov16_020f1868
	mov r7, r0
_0211BBBC:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0211BBDC
	mov r1, r8
	mov r2, #0x540
	str r8, [r4, #0x60]
	bl FUN_02005a1c
	add r8, r8, #0x540
_0211BBDC:
	ldr r0, [r4, #0x90]
	cmp r0, #0
	ldrne r0, [r4, #0x94]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211BC20
	ldrh r3, [r4, #0x9c]
	ldrh r1, [r4, #0x9e]
	ldr r0, [r4, #0x90]
	add r2, r7, #1
	mul r1, r3, r1
	mov r1, r1, lsl #1
	mov r3, #0
	str r8, [r4, #0x98]
	bl  FUN_ov16_020f1868
_0211BC20:
	bl FUN_02004f78
	mov r8, #0x20
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r8
	bl DC_FlushRange
	ldr r9, [r4, #0xbc]
	mov r7, r6
	cmp r9, #0
	beq _0211BC9C
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	mov r2, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	add r0, r9, r0
	mov r1, r8
	bl FUN_0200585c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BC9C:
	ldr r9, [r4, #0xc8]
	cmp r9, #0
	beq _0211BCF0
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	mov r1, r8
	add r0, r9, r0
	bl FUN_0200585c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BCF0:
	ldr r0, _0211BFC8 ; =0x0209A454
	mov r2, #5
	ldr r0, [r0, #4]
	sub r0, r0, #2
	cmp r0, #1
	movhi r2, #4
	mov r0, #0xc
	mul r1, r2, r0
	add r0, r4, #0xa4
	ldr r9, [r0, r1]
	cmp r9, #0
	beq _0211BD68
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	mov r1, r8
	add r0, r9, r0
	bl FUN_0200585c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BD68:
	ldr r9, [r4, #0xf8]
	cmp r9, #0
	beq _0211BDBC
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	mov r1, r8
	add r0, r9, r0
	bl FUN_0200585c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BDBC:
	ldr r9, [r4, #0x104]
	cmp r9, #0
	beq _0211BE10
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	mov r1, r8
	add r0, r9, r0
	bl FUN_0200585c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BE10:
	ldr r9, [r4, #0x11c]
	cmp r9, #0
	beq _0211BE68
	ldr r0, [r9, #0xc]
	mov r10, #4
	ldr r1, [r9, #0x10]
	mov r3, r10
	add r0, r9, r0
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r10
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	mov r1, r8
	add r0, r9, r0
	ldr r2, [r9, #0x18]
	bl FUN_0200585c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BE68:
	ldr r9, [r4, #0x128]
	cmp r9, #0
	beq _0211BEC0
	ldr r0, [r9, #0xc]
	mov r10, #5
	ldr r1, [r9, #0x10]
	mov r3, r10
	add r0, r9, r0
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r10
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	mov r1, r8
	add r0, r9, r0
	ldr r2, [r9, #0x18]
	bl FUN_0200585c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BEC0:
	ldr r9, [r4, #0x110]
	cmp r9, #0
	beq _0211BF14
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	add r0, r9, r0
	mov r1, r8
	bl FUN_0200585c
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BF14:
	ldr r5, [r4, #0x134]
	cmp r5, #0
	beq _0211BF60
	ldr r0, [r5, #0xc]
	mov r9, #4
	ldr r1, [r5, #0x10]
	mov r3, r9
	add r0, r5, r0
	add r2, r7, #1
	bl  FUN_ov16_020f1868
	mov r0, r5
	mov r2, r9
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r8
	add r0, r5, r0
	bl FUN_0200585c
_0211BF60:
	ldr r5, [r4, #0xb0]
	cmp r5, #0
	beq _0211BFC0
	mov r4, #1
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020f1138
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r2, r6
	mov r3, r4
	add r0, r5, r0
	bl  FUN_ov16_020f1868
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r6
	add r0, r5, r0
	bl FUN_0200593c
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r5, r0
	mov r1, r6
	bl FUN_020055bc
_0211BFC0:
	bl  FUN_ov16_020f10ac
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BFC8: .word 0x0209A454
	arm_func_end FUN_ov55_0211bb0c

	arm_func_start FUN_ov55_0211bfcc
FUN_ov55_0211bfcc: ; 0x0211BFCC
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _0211C00C
	ldrb r0, [r3, #0x5c]
	cmp r0, #0
	ldrne r0, [r3, #0x64]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r12, #0
	ldr r1, [r3, #0x60]
	mov r2, #0x540
	strb r12, [r3, #0x5c]
	bl FUN_02005a1c
	ldmfd sp!, {r3, pc}
_0211C00C:
	ldr r0, [r3, #0x90]
	cmp r0, #0
	ldrne r0, [r3, #0x94]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [r3, #0xa0]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [r3, #0x9c]
	ldrh r1, [r3, #0x9e]
	mov lr, #0
	ldr r0, [r3, #0x94]
	mul r12, r2, r1
	ldr r1, [r3, #0x98]
	mov r2, r12, lsl #5
	strb lr, [r3, #0xa0]
	bl FUN_02005a1c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov55_0211bfcc

	arm_func_start FUN_ov55_0211c05c
FUN_ov55_0211c05c: ; 0x0211C05C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0211C174 ; =0x0209F5C0
	mov r4, #0
	mov r6, r1
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl  FUN_ov16_020f616c
	cmp r6, #9
	addls pc, pc, r6, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211C088: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	ldmfd sp!, {r4, r5, r6, pc} ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	ldmfd sp!, {r4, r5, r6, pc} ; case 4
	b _0211C0B0 ; case 5
	b _0211C0D4 ; case 6
	b _0211C0F8 ; case 7
	b _0211C11C ; case 8
	b _0211C140 ; case 9
_0211C0B0:
	mov r0, r5
	mov r1, r4
	mov r2, #4
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #5
	bl  FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C0D4:
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #6
	bl  FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C0F8:
	mov r0, r5
	mov r1, r4
	mov r2, #4
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #7
	bl  FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C11C:
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl  FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C140:
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #4
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #9
	bl  FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C174: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211c05c

	arm_func_start FUN_ov55_0211c178
FUN_ov55_0211c178: ; 0x0211C178
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x58]
	cmp r1, #1
	beq _0211C194
	cmp r1, #2
	beq _0211C1A8
	ldmfd sp!, {r3, pc}
_0211C194:
	ldr r2, [r0]
	mov r1, #5
	ldr r2, [r2, #0xcc]
	blx r2
	ldmfd sp!, {r3, pc}
_0211C1A8:
	ldr r2, [r0]
	mov r1, #6
	ldr r2, [r2, #0xcc]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov55_0211c178

	arm_func_start FUN_ov55_0211c1bc
FUN_ov55_0211c1bc: ; 0x0211C1BC
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x58]
	cmp r1, #1
	beq _0211C1D8
	cmp r1, #2
	beq _0211C1EC
	ldmfd sp!, {r3, pc}
_0211C1D8:
	ldr r2, [r0]
	mov r1, #7
	ldr r2, [r2, #0xcc]
	blx r2
	ldmfd sp!, {r3, pc}
_0211C1EC:
	ldr r2, [r0]
	mov r1, #8
	ldr r2, [r2, #0xcc]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov55_0211c1bc

	arm_func_start FUN_ov55_0211c200
FUN_ov55_0211c200: ; 0x0211C200
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _0211C260
	ldr r5, _0211C2EC ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #4
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #5
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #6
	bl  FUN_ov16_020f6084
	b _0211C270
_0211C260:
	ldr r0, _0211C2EC ; =0x0209F5C0
	mov r1, #0
	mov r2, #0xb
	bl  FUN_ov16_020f6084
_0211C270:
	ldr r1, [r6, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x30]
	cmp r1, r0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x40]
	cmp r0, #3
	beq _0211C2A8
	cmp r0, #4
	beq _0211C2C0
	cmp r0, #0xb
	beq _0211C2D8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C2A8:
	mov r0, r6
	ldr r2, [r0]
	mov r1, #5
	ldr r2, [r2, #0xcc]
	blx r2
	ldmfd sp!, {r4, r5, r6, pc}
_0211C2C0:
	mov r0, r6
	ldr r2, [r0]
	mov r1, #6
	ldr r2, [r2, #0xcc]
	blx r2
	ldmfd sp!, {r4, r5, r6, pc}
_0211C2D8:
	ldr r0, _0211C2EC ; =0x0209F5C0
	mov r1, #0
	mov r2, #0xb
	bl  FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C2EC: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211c200

	arm_func_start FUN_ov55_0211c2f0
FUN_ov55_0211c2f0: ; 0x0211C2F0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	beq _0211C368
	ldr r6, _0211C450 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f6584
	cmp r0, #0
	bne _0211C368
	ldr r2, [r4, #0x10]
	mov r0, r6
	mov r1, r5
	str r2, [r4, #0xc]
	bl  FUN_ov16_020f5af0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5a58
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xe4]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xd0]
	blx r1
_0211C368:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0211C3FC
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _0211C394
	cmp r0, #3
	beq _0211C3D8
	cmp r0, #4
	beq _0211C3E8
	b _0211C3FC
_0211C394:
	mov r0, r4
	ldr r2, [r0]
	mov r5, #9
	ldr r2, [r2, #0xcc]
	mov r1, r5
	blx r2
	ldr r1, [r4, #0x48]
	ldr r0, _0211C450 ; =0x0209F5C0
	mov r1, r1, lsl #1
	add r1, r1, #6
	str r1, [sp]
	ldr r1, [r4, #0x44]
	mov r2, r5
	add r3, r1, #2
	mov r1, #0
	bl  FUN_ov16_020f63f0
	b _0211C3FC
_0211C3D8:
	mov r0, r4
	ldr r2, [r0]
	mov r1, #7
	b _0211C3F4
_0211C3E8:
	mov r0, r4
	ldr r2, [r0]
	mov r1, #8
_0211C3F4:
	ldr r2, [r2, #0xcc]
	blx r2
_0211C3FC:
	mov r5, #0
	ldr r0, _0211C450 ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f65a4
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _0211C438
	mov r0, r4
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xa4]
	blx r2
_0211C438:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xdc]
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C450: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211c2f0

	arm_func_start FUN_ov55_0211c454
FUN_ov55_0211c454: ; 0x0211C454
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	ldr r1, _0211CBEC ; =0x0209A454
	mov r6, r0
	ldr r0, [r1, #4]
	mov r11, #1
	cmp r0, #2
	mov r9, #0
	moveq r4, r11
	movne r4, r9
	ldr r0, [r6, #0xc]
	mov r5, #0xc
	cmp r4, #0
	moveq r5, #5
	mov r7, #3
	add r8, sp, #0x20
	cmp r0, #0
	bne _0211CA88
	ldr r1, [r6, #0xf8]
	mov r7, #3
	cmp r1, #0
	beq _0211C584
	ldr r0, [r1, #0xc]
	mov r2, r11
	add r10, r1, r0
	mov r0, #0x14
	strh r0, [sp, #0x22]
	mov r0, #0xa
	strh r0, [sp, #0x24]
	mov r0, #4
	strh r0, [sp, #0x26]
	mov r0, #0x50
	strh r0, [sp, #0x2c]
	mov r0, #0x20
	strh r0, [sp, #0x2e]
	strh r5, [sp, #0x20]
	strh r9, [sp, #0x28]
	strh r9, [sp, #0x2a]
	strb r9, [sp, #0x30]
	str r10, [sp, #0x34]
	str r11, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r3, r7
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	cmp r4, #0
	bne _0211C584
	mov r0, #0x14
	strh r0, [sp, #0x22]
	mov r0, #0xa
	mov r1, #4
	strh r0, [sp, #0x24]
	mov r0, #0x50
	strh r0, [sp, #0x2c]
	mov r0, #0x20
	strh r0, [sp, #0x2e]
	add r0, r10, #0x50
	str r0, [sp, #0x34]
	strh r1, [sp, #0x26]
	mov r3, r1
	mov r1, #0x11
	strh r1, [sp, #0x20]
	strh r9, [sp, #0x28]
	strh r9, [sp, #0x2a]
	strb r9, [sp, #0x30]
	str r11, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r2, r11
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211C584:
	ldr r1, [r6, #0x104]
	cmp r1, #0
	beq _0211C68C
	ldr r0, [r1, #0xc]
	mov r2, r11
	add r10, r1, r0
	mov r0, #0x14
	strh r0, [sp, #0x22]
	mov r0, #0xa
	strh r0, [sp, #0x24]
	mov r0, #4
	strh r0, [sp, #0x26]
	mov r0, #0x50
	strh r0, [sp, #0x2c]
	mov r0, #0x20
	strh r0, [sp, #0x2e]
	strh r5, [sp, #0x20]
	strh r9, [sp, #0x28]
	strh r9, [sp, #0x2a]
	strb r9, [sp, #0x30]
	str r10, [sp, #0x34]
	str r11, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r3, #5
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, #5
	mov r1, r9
	bl  FUN_ov16_020f6084
	cmp r4, #0
	bne _0211C68C
	mov r0, #0x14
	strh r0, [sp, #0x22]
	mov r0, #0xa
	strh r0, [sp, #0x24]
	mov r0, #4
	strh r0, [sp, #0x26]
	mov r0, #0x50
	strh r0, [sp, #0x2c]
	mov r0, #0x20
	strh r0, [sp, #0x2e]
	add r0, r10, #0x50
	str r0, [sp, #0x34]
	mov r0, #0x11
	strh r0, [sp, #0x20]
	mov r10, #6
	strh r9, [sp, #0x28]
	strh r9, [sp, #0x2a]
	strb r9, [sp, #0x30]
	str r11, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, r11
	mov r1, r9
	mov r3, r10
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r2, r10
	bl  FUN_ov16_020f6084
_0211C68C:
	ldr r1, [r6, #0x110]
	cmp r1, #0
	beq _0211C790
	ldr r0, [r1, #0xc]
	mov r2, r11
	add r10, r1, r0
	mov r0, #0x14
	strh r0, [sp, #0x22]
	mov r0, #0xa
	strh r0, [sp, #0x24]
	mov r0, #4
	strh r5, [sp, #0x20]
	mov r5, #0x20
	strh r0, [sp, #0x26]
	mov r0, #0x50
	strh r0, [sp, #0x2c]
	strh r9, [sp, #0x28]
	strh r9, [sp, #0x2a]
	strh r5, [sp, #0x2e]
	strb r9, [sp, #0x30]
	str r10, [sp, #0x34]
	str r11, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r3, #7
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, #7
	mov r1, r9
	bl  FUN_ov16_020f6084
	cmp r4, #0
	bne _0211C790
	mov r0, #0x14
	strh r0, [sp, #0x22]
	mov r0, #0xa
	strh r0, [sp, #0x24]
	add r1, r10, #0x50
	mov r0, #4
	strh r0, [sp, #0x26]
	mov r0, #0x11
	strh r0, [sp, #0x20]
	mov r0, #0x50
	strh r0, [sp, #0x2c]
	str r1, [sp, #0x34]
	mov r10, #8
	strh r9, [sp, #0x28]
	strh r9, [sp, #0x2a]
	strh r5, [sp, #0x2e]
	strb r9, [sp, #0x30]
	str r11, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r2, r11
	mov r3, r10
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r2, r10
	bl  FUN_ov16_020f6084
_0211C790:
	ldr r2, [r6, #0xbc]
	mov r5, #7
	cmp r2, #0
	beq _0211C7FC
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r9, r2, r0
	mov r2, #1
	mov r3, #0x1e
	mov r0, #0x11
	strh r3, [sp, #0x24]
	strh r0, [sp, #0x26]
	strh r2, [sp, #0x20]
	strh r7, [sp, #0x22]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r1, [sp, #0x30]
	str r9, [sp, #0x34]
	stmia sp, {r1, r8}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r3, #0xd
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211C7FC:
	cmp r4, #0
	bne _0211C814
	ldr r0, _0211CBEC ; =0x0209A454
	ldr r0, [r0, #4]
	cmp r0, #3
	bne _0211C888
_0211C814:
	ldr r2, [r6, #0xe0]
	cmp r2, #0
	beq _0211C988
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r9, r2, r0
	mov r0, #0x1a
	mov r4, #0xd0
	mov r3, #0x60
	strh r0, [sp, #0x24]
	mov r0, #0xc
	strh r0, [sp, #0x26]
	strh r7, [sp, #0x20]
	strh r5, [sp, #0x22]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r4, [sp, #0x2c]
	strh r3, [sp, #0x2e]
	mov r2, #1
	strb r1, [sp, #0x30]
	str r9, [sp, #0x34]
	stmia sp, {r1, r8}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	b _0211C988
_0211C888:
	ldr r2, [r6, #0xc8]
	cmp r2, #0
	beq _0211C8F8
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r9, r2, r0
	mov r0, #0x1a
	mov r4, #0xd0
	mov r3, #0x60
	strh r0, [sp, #0x24]
	mov r0, #0xc
	strh r0, [sp, #0x26]
	strh r7, [sp, #0x20]
	strh r5, [sp, #0x22]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r4, [sp, #0x2c]
	strh r3, [sp, #0x2e]
	mov r2, #1
	strb r1, [sp, #0x30]
	str r9, [sp, #0x34]
	stmia sp, {r1, r8}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211C8F8:
	ldr r2, [r6, #0xd4]
	cmp r2, #0
	beq _0211C960
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r2, r2, r0
	mov r0, #0x1a
	strh r0, [sp, #0x24]
	mov r0, #0xc
	strh r0, [sp, #0x26]
	str r2, [sp, #0x34]
	strh r7, [sp, #0x20]
	strh r5, [sp, #0x22]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r1, [sp, #0x30]
	stmia sp, {r1, r8}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, #1
	mov r3, #2
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211C960:
	ldr r0, [r6, #0x50]
	mov r1, #0
	cmp r0, #0
	bne _0211C97C
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, #2
	b _0211C984
_0211C97C:
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, #1
_0211C984:
	bl  FUN_ov16_020f6084
_0211C988:
	ldr r5, [r6, #0xec]
	cmp r5, #0
	beq _0211CA04
	ldr r3, [r6, #0x48]
	ldr r4, [r5, #0xc]
	ldr r2, [r6, #0x44]
	mov r1, #0
	mov r0, #4
	mov r3, r3, lsl #1
	add r4, r5, r4
	add r3, r3, #6
	add r2, r2, #2
	strh r2, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r0, [sp, #0x24]
	strh r0, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r1, [sp, #0x30]
	str r4, [sp, #0x34]
	str r11, [sp]
	str r8, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, r1
	mov r3, #9
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211CA04:
	ldr r3, [r6, #0x68]
	cmp r3, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211CBEC ; =0x0209A454
	mov r1, #0
	ldr r0, [r0, #4]
	str r3, [sp, #0x34]
	cmp r0, #4
	cmpne r0, #5
	cmpne r0, #6
	moveq r2, #9
	movne r2, #0xc
	mov r0, #0xe
	strh r2, [sp, #0x20]
	strh r0, [sp, #0x24]
	strh r7, [sp, #0x22]
	strh r7, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r1, [sp, #0x30]
	stmia sp, {r1, r8}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xd
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CA88:
	mov r1, #0xa
	cmp r0, #3
	moveq r1, #0xc
	mov r0, #0xc
	mla r0, r1, r0, r6
	ldr r2, [r0, #0xa4]
	mov r4, #7
	cmp r2, #0
	beq _0211CB0C
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r10, r2, r0
	mov r2, #1
	mov r5, #7
	mov r0, #0x1e
	mov r3, #0xa
	strh r0, [sp, #0x24]
	strh r5, [sp, #0x22]
	strh r2, [sp, #0x20]
	strh r3, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r1, [sp, #0x30]
	str r10, [sp, #0x34]
	mov r0, #2
	stmia sp, {r0, r8}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211CB0C:
	ldr r2, [r6, #0x128]
	mov r5, #2
	cmp r2, #0
	beq _0211CB8C
	ldr r0, [r2, #0xc]
	mov r1, #0xd
	add r2, r2, r0
	mov r0, #6
	strh r0, [sp, #0x24]
	str r2, [sp, #0x34]
	mov r10, #0xb
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r7, [sp, #0x26]
	strh r9, [sp, #0x28]
	strh r9, [sp, #0x2a]
	strh r9, [sp, #0x2c]
	strh r9, [sp, #0x2e]
	strb r9, [sp, #0x30]
	mov r0, r5
	stmia sp, {r0, r8, r9}
	str r9, [sp, #0xc]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r3, r10
	mov r2, #1
	str r9, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r1, r9
	mov r2, r10
	bl  FUN_ov16_020f6084
_0211CB8C:
	ldr r7, [r6, #0x90]
	mov r1, #0
	cmp r7, #0
	ldrne r0, [r6, #0x94]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0xc
	stmia sp, {r0, r5, r11}
	str r4, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r1, #0
	str r4, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211CBF0 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CBEC: .word 0x0209A454
_0211CBF0: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211c454

	arm_func_start FUN_ov55_0211cbf4
FUN_ov55_0211cbf4: ; 0x0211CBF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, _0211CD74 ; =0x0209BA20
	bl FUN_0204eba0
	mov r2, #0
	sub r1, r2, #1
	ldr r0, _0211CD78 ; =0x0209A454
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	strb r2, [r4, #0x14]
	strb r2, [r4, #0x15]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	mov r7, #0
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	str r2, [r4, #0x28]
	strh r2, [r4, #0x2c]
	str r2, [r4, #0x30]
	str r2, [r4, #0x34]
	str r2, [r4, #0x38]
	strh r2, [r4, #0x3c]
	ldr r0, [r0, #4]
	mov r1, r7
	sub r0, r0, #2
	cmp r0, #1
	movls r0, #2
	strls r0, [r4, #0x50]
	mov r0, r4
	strhi r2, [r4, #0x50]
	ldr r2, [r0]
	ldr r2, [r2, #0xa4]
	blx r2
	ldr r6, _0211CD7C ; =0x0209A460
	add r0, r4, #0x6c
	mov r1, r6
	strb r7, [r4, #0x5c]
	str r7, [r4, #0x60]
	bl STD_CopyString
	ldr r5, _0211CD80 ; =0x0209A250
	mov r1, #0x540
	mov r0, r5
	bl FUN_0202de44
	str r0, [r4, #0x64]
	mov r0, r5
	mov r1, #0x54
	bl FUN_0202de44
	str r0, [r4, #0x68]
	ldr r1, _0211CD84 ; =0x0001E240
	add r0, r4, #0x194
	str r7, [r4, #0x80]
	str r7, [r4, #0x84]
	str r7, [r4, #0x88]
	str r7, [r4, #0x8c]
	bl FUN_ov55_0211d1a4
	ldr r5, _0211CD78 ; =0x0209A454
	ldr r0, [r5, #4]
	cmp r0, #3
	bne _0211CD0C
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211CD74 ; =0x0209BA20
	bl FUN_0207249c
	mov r1, r0
	mov r0, r6
	bl STD_CopyString
	mov r0, r6
	bl _strlen
	str r0, [r5, #8]
_0211CD0C:
	ldr r7, _0211CD88 ; =0x0209F5C0
	mov r6, #0
	mov r0, r7
	mov r1, r6
	bl  FUN_ov16_020f5a58
	bl FUN_02004e2c
	mov r5, r0
	bl FUN_02004ce0
	mov r2, r5
	str r6, [sp]
	mov r1, r6
	mov r3, r0
	mov r0, r7
	bl  FUN_ov16_020f5b6c
	add r0, r4, #0x90
	mov r1, #1
	bl  FUN_ov16_020f2f7c
	add r0, r4, #0x90
	mov r1, #0x1e
	mov r2, #7
	bl  FUN_ov16_020f2fa8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CD74: .word 0x0209BA20
_0211CD78: .word 0x0209A454
_0211CD7C: .word 0x0209A460
_0211CD80: .word 0x0209A250
_0211CD84: .word 0x0001E240
_0211CD88: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211cbf4

	arm_func_start FUN_ov55_0211cd8c
FUN_ov55_0211cd8c: ; 0x0211CD8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211CDA4: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211CDBC ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	b _0211CE08 ; case 3
	b _0211CE70 ; case 4
	b _0211CE70 ; case 5
_0211CDBC:
	ldr r1, [r0]
	ldr r1, [r1, #0x74]
	blx r1
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	mov r0, r4
	ldr r5, [r0]
	mov r1, #0
	ldr r5, [r5, #0xa8]
	mov r2, r1
	add r3, r4, #0x40
	blx r5
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211CE08:
	ldr r6, _0211CE8C ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5af0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5a58
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xe4]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xd0]
	blx r1
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f672c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211CE70:
	ldr r1, [r0]
	ldr r1, [r1, #0xe0]
	blx r1
	ldr r0, _0211CE8C ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_0211CE8C: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211cd8c

	arm_func_start FUN_ov55_0211ce90
FUN_ov55_0211ce90: ; 0x0211CE90
	ldr r12, _0211CEA0 ; = FUN_ov16_020f330c
	add r0, r0, #0xa4
	mov r1, #0x14
	bx r12
_0211CEA0: .word  FUN_ov16_020f330c
	arm_func_end FUN_ov55_0211ce90

	arm_func_start FUN_ov55_0211cea4
FUN_ov55_0211cea4: ; 0x0211CEA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0211CEC8
	cmp r1, #4
	cmpne r1, #5
	beq _0211CEE0
	ldmfd sp!, {r4, pc}
_0211CEC8:
	ldr r1, [r0]
	ldr r1, [r1, #0x94]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211CEE0:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x98]
	blx r1
	ldr r0, _0211CF00 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211CF00: .word 0x0209F5C0
	arm_func_end FUN_ov55_0211cea4

	arm_func_start FUN_ov55_0211cf04
FUN_ov55_0211cf04: ; 0x0211CF04
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, _0211D024 ; =0x0209BA20
	bl FUN_0204ec3c
	bl FUN_02004e2c
	mov r6, r0
	bl FUN_02004ce0
	mov r5, r0
	bl FUN_02004d34
	mov r2, r6
	mov r3, r5
	str r0, [sp]
	ldr r6, _0211D028 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5b6c
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5af0
	ldr r1, [r4, #0x64]
	cmp r1, #0
	beq _0211CF70
	ldr r0, _0211D02C ; =0x0209A250
	bl FUN_0202e1c0
	str r5, [r4, #0x64]
_0211CF70:
	ldr r1, [r4, #0x68]
	cmp r1, #0
	beq _0211CF8C
	ldr r0, _0211D02C ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x68]
_0211CF8C:
	ldr r1, [r4, #0x80]
	cmp r1, #0
	beq _0211CFA8
	ldr r0, _0211D02C ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x80]
_0211CFA8:
	ldr r1, [r4, #0x84]
	cmp r1, #0
	beq _0211CFC4
	ldr r0, _0211D02C ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x84]
_0211CFC4:
	mov r5, #1
	mov r1, r5
	add r0, r4, #0x90
	bl  FUN_ov16_020f2fe4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x78]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x80]
	blx r1
	mov r4, #0x10
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f1aec
	mov r1, r4
	mov r0, #2
	bl  FUN_ov16_020f1aec
	mov r1, r4
	mov r0, #3
	bl  FUN_ov16_020f1aec
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211D024: .word 0x0209BA20
_0211D028: .word 0x0209F5C0
_0211D02C: .word 0x0209A250
	arm_func_end FUN_ov55_0211cf04

	arm_func_start FUN_ov55_0211d030
FUN_ov55_0211d030: ; 0x0211D030
	ldr r12, _0211D040 ; = FUN_ov16_020f338c
	add r0, r0, #0xa4
	mov r1, #0x14
	bx r12
_0211D040: .word  FUN_ov16_020f338c
	arm_func_end FUN_ov55_0211d030

	arm_func_start FUN_ov55_0211d044
FUN_ov55_0211d044: ; 0x0211D044
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x194
	bl FUN_ov55_0211d15c
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov55_0211d044

	arm_func_start FUN_ov55_0211d064
FUN_ov55_0211d064: ; 0x0211D064
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x194
	bl FUN_ov55_0211d15c
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov55_0211d064

	arm_func_start FUN_ov55_0211d07c
FUN_ov55_0211d07c: ; 0x0211D07C
	stmfd sp!, {r3, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r0, [r0, #0xa4]
	add r1, r2, #1
	mov r2, r3
	bl  FUN_ov16_020f18e8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov55_0211d07c

	arm_func_start FUN_ov55_0211d09c
FUN_ov55_0211d09c: ; 0x0211D09C
	mov r3, #0xc
	mla r0, r1, r3, r0
	ldr r0, [r0, #0xa4]
	ldr r12, _0211D0B4 ; = FUN_ov16_020f1138
	mov r1, #0
	bx r12
_0211D0B4: .word  FUN_ov16_020f1138
	arm_func_end FUN_ov55_0211d09c

	arm_func_start FUN_ov55_0211d0b8
FUN_ov55_0211d0b8: ; 0x0211D0B8
	mov r3, #0xc
	mla r0, r1, r3, r0
	ldr r1, [r0, #0xa4]
	ldr r12, _0211D0D0 ; = FUN_ov16_020f19d4
	mov r0, #3
	bx r12
_0211D0D0: .word  FUN_ov16_020f19d4
	arm_func_end FUN_ov55_0211d0b8

	arm_func_start FUN_ov55_0211d0d4
FUN_ov55_0211d0d4: ; 0x0211D0D4
	mov r3, #0xc
	mla r0, r1, r3, r0
	ldr r1, [r0, #0xa4]
	ldr r12, _0211D0EC ; = FUN_ov16_020f19d4
	mov r0, #2
	bx r12
_0211D0EC: .word  FUN_ov16_020f19d4
	arm_func_end FUN_ov55_0211d0d4

	arm_func_start FUN_ov55_0211d0f0
FUN_ov55_0211d0f0: ; 0x0211D0F0
	mov r3, #0xc
	mla r0, r1, r3, r0
	ldr r1, [r0, #0xa4]
	ldr r12, _0211D108 ; = FUN_ov16_020f19d4
	mov r0, #1
	bx r12
_0211D108: .word  FUN_ov16_020f19d4
	arm_func_end FUN_ov55_0211d0f0

	arm_func_start FUN_ov55_0211d10c
FUN_ov55_0211d10c: ; 0x0211D10C
	mov r3, #0xc
	mla r0, r1, r3, r0
	ldr r1, [r0, #0xa4]
	ldr r12, _0211D124 ; = FUN_ov16_020f19d4
	mov r0, #0
	bx r12
_0211D124: .word  FUN_ov16_020f19d4
	arm_func_end FUN_ov55_0211d10c

	arm_func_start FUN_ov55_0211d128
FUN_ov55_0211d128: ; 0x0211D128
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _0211D158 ; =0x0211DA5C
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #0x18
	str r3, [r5]
	bl MIi_CpuClearFast
	mov r0, r5
	str r4, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D158: .word 0x0211DA5C
	arm_func_end FUN_ov55_0211d128

	arm_func_start FUN_ov55_0211d15c
FUN_ov55_0211d15c: ; 0x0211D15C
	stmfd sp!, {r4, lr}
	ldr r1, _0211D178 ; =0x0211DA5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov55_0211d1c4
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0211D178: .word 0x0211DA5C
	arm_func_end FUN_ov55_0211d15c

	arm_func_start FUN_ov55_0211d17c
FUN_ov55_0211d17c: ; 0x0211D17C
	stmfd sp!, {r4, lr}
	ldr r1, _0211D1A0 ; =0x0211DA5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov55_0211d1c4
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0211D1A0: .word 0x0211DA5C
	arm_func_end FUN_ov55_0211d17c

	arm_func_start FUN_ov55_0211d1a4
FUN_ov55_0211d1a4: ; 0x0211D1A4
	mov r2, r0
	str r1, [r2, #0x28]
	ldr r0, _0211D1BC ; =0x0211DA64
	ldr r12, _0211D1C0 ; = FUN_ov16_020f3054
	add r1, r2, #4
	bx r12
_0211D1BC: .word 0x0211DA64
_0211D1C0: .word  FUN_ov16_020f3054
	arm_func_end FUN_ov55_0211d1a4

	arm_func_start FUN_ov55_0211d1c4
FUN_ov55_0211d1c4: ; 0x0211D1C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl  FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov55_0211d1c4

	arm_func_start FUN_ov55_0211d1f0
FUN_ov55_0211d1f0: ; 0x0211D1F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r7, #0
	mov r9, r0
	mov r4, r1
	mov r8, r2
	str r7, [sp]
	str r7, [sp, #4]
	mov r5, r7
	add r6, sp, #8
_0211D218:
	mov r0, r7, lsl #1
	rsb r0, r0, #0xe
	strb r5, [r6]
	strb r5, [r6, #1]
	strb r5, [r6, #2]
	add r2, r8, r0
	ldrb r1, [r8, r0]
	ldrb r0, [r2, #1]
	cmp r7, #0
	strb r1, [r6]
	strb r0, [r6, #1]
	beq _0211D264
	ldr r0, [sp, #4]
	ldr r2, [sp]
	mov r1, r0, lsl #7
	orr r1, r1, r2, lsr #25
	mov r0, r2, lsl #7
	str r0, [sp]
	str r1, [sp, #4]
_0211D264:
	mov r0, r9
	mov r1, r6
	bl FUN_ov55_0211d4c0
	add r7, r7, #1
	ldr r2, [sp]
	and r0, r0, #0x7f
	ldr r1, [sp, #4]
	orr r2, r2, r0
	orr r3, r1, r0, asr #31
	str r2, [sp]
	str r3, [sp, #4]
	cmp r7, #8
	blt _0211D218
	mov r1, #0
	ldr r8, [r9, #0x28]
	ldr r6, _0211D4AC ; =0x6C078965
	ldr r7, _0211D4B0 ; =0x5D588B65
	ldr r2, _0211D4B4 ; =0x00269EC3
	mov r0, r1
	str r1, [r9, #0x14]
	str r8, [r9, #0x10]
	str r6, [r9, #0x18]
	str r7, [r9, #0x1c]
	str r2, [r9, #0x20]
	str r0, [r9, #0x24]
	add r1, sp, #0xc
_0211D2CC:
	ldr r6, [r9, #0x18]
	ldr r2, [r9, #0x10]
	ldr r3, [r9, #0x14]
	umull r7, r5, r6, r2
	mla r5, r6, r3, r5
	ldr r3, [r9, #0x1c]
	ldr r6, [r9, #0x20]
	mla r5, r3, r2, r5
	adds r6, r6, r7
	ldr r2, [r9, #0x24]
	str r6, [r9, #0x10]
	adc r2, r2, r5
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	str r2, [r9, #0x14]
	cmp r0, #3
	blo _0211D2CC
	ldr r1, [sp, #0x10]
	ldr r2, [sp]
	ldr r3, [sp, #0xc]
	orr r1, r1, #0
	eor r2, r2, r1
	ldr r1, [sp, #4]
	orr r3, r3, #0
	eor r3, r1, r3
	add r0, sp, #0
	str r3, [sp, #4]
	add r1, r0, #1
	str r2, [sp]
	mov r0, #0
	mov r3, #1
_0211D348:
	ldr r2, [sp]
	ldr r5, [sp, #4]
	mov r6, r2, lsr r0
	rsb r2, r0, #0x20
	orr r6, r6, r5, lsl r2
	sub r2, r0, #0x20
	orr r6, r6, r5, lsr r2
	ldrb r7, [r1]
	and r5, r6, #1
	and r2, r7, #1
	bic r7, r7, #1
	orr r5, r7, r5
	strb r5, [r1], #1
	mvn r5, r3, lsl r0
	ldr r6, [sp]
	ldr r7, [sp, #4]
	and r6, r6, r5
	orr r12, r6, r2, lsl r0
	mov r2, r2, lsl r0
	and r5, r7, r5, asr #31
	orr lr, r5, r2, asr #31
	add r0, r0, #1
	str r12, [sp]
	str lr, [sp, #4]
	cmp r0, #6
	blt _0211D348
	ldr r6, _0211D4B8 ; =0x0000FFFF
	mov r8, r12, lsr #0x10
	and r0, r12, r6
	mov r2, r0, lsl #0x10
	mov r9, lr, lsr #0x10
	orr r8, r8, lr, lsl #16
	mov r7, r2, lsr #0x10
	ldr r0, _0211D4BC ; =0x0209BA20
	add r1, sp, #0
	mov r2, #5
	str r8, [sp]
	str r9, [sp, #4]
	mov r5, #0
	bl FUN_02074854
	cmp r7, r0
	addne sp, sp, #0x28
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r0, lsr #8
	orr r2, r2, r1, lsl #24
	and r0, r2, r6
	mov r1, r1, lsr #8
	mov r2, r2, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r3, r1, lsr #0x10
	orr r2, r2, r1, lsl #16
	mov r6, r0, lsr #0x10
	add r1, sp, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	mov r0, #4
_0211D434:
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	strb r5, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211D434
	add r3, sp, #0x18
	mov r2, #8
_0211D458:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211D458
	ldr r2, [sp]
	ldr r1, _0211D4B8 ; =0x0000FFFF
	ldr r0, _0211D4BC ; =0x0209BA20
	and r1, r2, r1
	mov r2, r1, lsl #0x10
	mov r4, r2, lsr #0x10
	add r1, sp, #0x18
	mov r2, #0x10
	bl FUN_02074854
	cmp r4, r0
	movne r6, r5
	mov r0, r6
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D4AC: .word 0x6C078965
_0211D4B0: .word 0x5D588B65
_0211D4B4: .word 0x00269EC3
_0211D4B8: .word 0x0000FFFF
_0211D4BC: .word 0x0209BA20
	arm_func_end FUN_ov55_0211d1f0

	arm_func_start FUN_ov55_0211d4c0
FUN_ov55_0211d4c0: ; 0x0211D4C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, [r0, #8]
	mov r8, r1
	movs r7, r2, lsr #1
	ldr r5, [r0, #4]
	mov r6, #0
	beq _0211D50C
	mov r4, #2
_0211D4E0:
	mov r1, r8
	mov r2, r4
	add r0, r5, r6, lsl #1
	bl FUN_020240f4
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, r7
	blo _0211D4E0
_0211D50C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov55_0211d4c0

	arm_func_start FUN_ov55_0211d514
FUN_ov55_0211d514: ; 0x0211D514
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211D55C ; =0x0211D5E0
	str r0, [r4, #0x10]
	ldr r0, _0211D560 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _0211D564 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D55C: .word 0x0211D5E0
_0211D560: .word 0x00009CCD
_0211D564: .word 0x0000EA3C
	arm_func_end FUN_ov55_0211d514

	arm_func_start FUN_ov55_0211d568
FUN_ov55_0211d568: ; 0x0211D568
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211D5B0 ; =0x0211DA3C
	str r0, [r4, #0x14]
	ldr r0, _0211D5B4 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211D5B8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D5B0: .word 0x0211DA3C
_0211D5B4: .word 0x00009CCD
_0211D5B8: .word 0x0000EA3C
	arm_func_end FUN_ov55_0211d568
	; 0x0211D5BC


	.rodata
	.incbin "/incbin/overlay55_rodata.bin"

	.bss
	.space 0x0

	.include "/macros/function.inc"
	.include "/include/overlay87.inc"

	.text
	arm_func_start FUN_ov87_02119f00
FUN_ov87_02119f00: ; 0x02119F00
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_02119F10:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _02119F28
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_02119F28:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _02119F10
	bx lr
	arm_func_end FUN_ov87_02119f00

	arm_func_start FUN_ov87_02119f38
FUN_ov87_02119f38: ; 0x02119F38
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, #1
	mov r2, #0x3f
	str r3, [r4, #0x68]
	str r2, [r4, #0x64]
	str r1, [r4, #0x70]
	strb r3, [r4, #0x74]
	bl FUN_ov87_02119f00
	strb r0, [r4, #0x75]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov87_02119f38

	arm_func_start FUN_ov87_02119f64
FUN_ov87_02119f64: ; 0x02119F64
	stmfd sp!, {r3, lr}
	ldr r0, _02119F8C ; =0x0209AEC0
	mov r1, #4
	bl FUN_02046cb4
	ldr r0, _02119F90 ; =0x0209A4E0
	mov r1, #0x3f
	strb r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #3]
	ldmfd sp!, {r3, pc}
_02119F8C: .word 0x0209AEC0
_02119F90: .word 0x0209A4E0
	arm_func_end FUN_ov87_02119f64

	arm_func_start FUN_ov87_02119f94
FUN_ov87_02119f94: ; 0x02119F94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, _0211A004 ; =0x0209A4E4
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A008 ; =0x0209BA20
	bl FUN_0207249c
	ldrb r1, [r5, #0x96d]
	cmp r1, #0
	ldreqh r1, [r5, #0x12]
	streqh r1, [r4]
	ldreqh r1, [r5, #0x14]
	streqh r1, [r4, #4]
	beq _02119FE0
	mov r2, #0
	strh r2, [r4]
	ldrh r1, [r5, #0x14]
	strh r1, [r4, #4]
	strb r2, [r5, #0x96d]
_02119FE0:
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r0, #0x26]
	strh r1, [r4, #6]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #8]
	ldrb r0, [r0, #0x42]
	strb r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A004: .word 0x0209A4E4
_0211A008: .word 0x0209BA20
	arm_func_end FUN_ov87_02119f94

	arm_func_start FUN_ov87_0211a00c
FUN_ov87_0211a00c: ; 0x0211A00C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211A144 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _0211A08C
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl  FUN_ov16_020f0634
	ldrh r1, [r4, #0x12]
	ldrh r0, [r0, #4]
	cmp r1, r0
	beq _0211A08C
	mov r0, r5
	mov r1, r5
	bl  FUN_ov16_020f0634
	ldrh r2, [r0, #4]
	mov r0, r5
	mov r1, r5
	strh r2, [r4, #0x12]
	bl  FUN_ov16_020f0634
	ldrh r1, [r0, #8]
	ldr r0, [r4, #8]
	strh r1, [r4, #0x14]
	cmp r0, #5
	bne _0211A08C
	mov r0, r4
	bl FUN_ov87_0211bcd8
_0211A08C:
	ldr r4, _0211A144 ; =0x0209AEC0
	mov r0, r4
	bl FUN_02046744
	mov r8, r0
	mov r0, r4
	bl FUN_02046730
	mov r10, #0
	mov r9, r0
	mov r5, r10
	mov r11, #1
	b _0211A138
_0211A0B8:
	tst r8, r11, lsl r10
	cmpne r9, r10
	beq _0211A134
	mov r0, r10
	bl  FUN_ov16_020f085c
	mov r6, r0
	ldr r0, _0211A148 ; =0x020A0670
	ldrb r0, [r0, r6]
	cmp r10, r0
	bne _0211A134
	mov r0, r10
	mov r1, r5
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	cmp r0, #0x3f
	bne _0211A134
	mov r0, r10
	mov r1, r5
	bl  FUN_ov16_020f0634
	mov r4, r0
	ldrh r7, [r4, #0xa]
	cmp r7, #0
	beq _0211A134
	ldr r0, _0211A14C ; =0x0209BA20
	mov r1, r6
	bl FUN_0207249c
	strh r7, [r0, #0x28]
	ldrh r1, [r4, #0xc]
	strh r1, [r0, #0x2e]
	ldrb r1, [r4, #0xe]
	strb r1, [r0, #0x42]
_0211A134:
	add r10, r10, #1
_0211A138:
	cmp r10, #4
	blt _0211A0B8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A144: .word 0x0209AEC0
_0211A148: .word 0x020A0670
_0211A14C: .word 0x0209BA20
	arm_func_end FUN_ov87_0211a00c

	arm_func_start FUN_ov87_0211a150
FUN_ov87_0211a150: ; 0x0211A150
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, r0
	mov r0, r6
	mov r1, r6
	bl  FUN_ov16_020f0634
	ldr r1, _0211A258 ; =0x0209AEC0
	ldr r2, [r4, #8]
	ldrb r7, [r0, #3]
	ldrb r5, [r1, #0x64]
	cmp r2, #8
	addls pc, pc, r2, lsl #2
	b _0211A250
_0211A184: ; jump table
	b _0211A250 ; case 0
	b _0211A250 ; case 1
	b _0211A250 ; case 2
	b _0211A250 ; case 3
	b _0211A250 ; case 4
	b _0211A1A8 ; case 5
	b _0211A1CC ; case 6
	b _0211A1F8 ; case 7
	b _0211A248 ; case 8
_0211A1A8:
	mov r0, r4
	bl FUN_ov87_0211a00c
	cmp r5, #0
	cmpeq r7, #6
	bne _0211A250
	mov r0, r4
	mov r1, #7
_0211A1C4:
	bl FUN_ov87_0211a2c8
	b _0211A250
_0211A1CC:
	cmp r5, #0
	beq _0211A250
	mov r5, #7
	sub r1, r5, #8
	mov r0, r5
	mov r2, r1
	mov r3, r6
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A250
	b _0211A228
_0211A1F8:
	mov r0, r4
	bl FUN_ov87_0211a00c
	cmp r5, #0
	beq _0211A234
	mov r5, #8
	sub r1, r5, #9
	mov r0, r5
	mov r2, r1
	mov r3, r6
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A250
_0211A228:
	mov r0, r4
	mov r1, r5
	b _0211A1C4
_0211A234:
	cmp r7, #7
	bne _0211A250
	mov r0, r4
	mov r1, #8
	b _0211A1C4
_0211A248:
	mov r0, r4
	bl FUN_ov87_0211a00c
_0211A250:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A258: .word 0x0209AEC0
	arm_func_end FUN_ov87_0211a150

	arm_func_start FUN_ov87_0211a25c
FUN_ov87_0211a25c: ; 0x0211A25C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #7
	bne _0211A280
	mov r0, r4
	bl FUN_ov87_02119f94
_0211A280:
	ldr r1, _0211A29C ; =0x0209A4E0
	mov r0, #0x3f
	strb r0, [r1, #2]
	ldr r2, [r4, #8]
	mov r0, #1
	strb r2, [r1, #3]
	ldmfd sp!, {r4, pc}
_0211A29C: .word 0x0209A4E0
	arm_func_end FUN_ov87_0211a25c

	arm_func_start FUN_ov87_0211a2a0
FUN_ov87_0211a2a0: ; 0x0211A2A0
	ldr r0, [r0, #8]
	cmp r0, #4
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov87_0211a2a0

	arm_func_start FUN_ov87_0211a2b4
FUN_ov87_0211a2b4: ; 0x0211A2B4
	ldr r0, [r0, #8]
	cmp r0, #4
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov87_0211a2b4

	arm_func_start FUN_ov87_0211a2c8
FUN_ov87_0211a2c8: ; 0x0211A2C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	str r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211A2EC: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _0211A310 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	b _0211A310 ; case 6
	b _0211A31C ; case 7
	b _0211A340 ; case 8
_0211A310:
	mov r0, #1
	strb r0, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A31C:
	mov r1, #1
	ldr r0, _0211A374 ; =0x0209AEC0
	strb r1, [r4, #0x18]
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldrne r0, _0211A378 ; =0x020E9482
	movne r1, #0
	strneb r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A340:
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r5, [r4, #4]
	mov r4, #0x33
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_0211A374: .word 0x0209AEC0
_0211A378: .word 0x020E9482
	arm_func_end FUN_ov87_0211a2c8

	arm_func_start FUN_ov87_0211a37c
FUN_ov87_0211a37c: ; 0x0211A37C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	sub sp, sp, #0x400
	mov r10, r0
	ldrb r0, [r10, #0x17]
	mov r7, #0
	cmp r0, #0
	addeq sp, sp, #0xc
	addeq sp, sp, #0x400
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0x200
	add r0, sp, #0x20c
	mov r1, r7
	mov r2, r4
	bl MemWrite
	add r0, sp, #0xc
	mov r1, r7
	mov r2, r4
	bl MemWrite
	ldr r0, [r10, #0x51c]
	ldr r11, [r10, #0x4d0]
	mov r8, r0, lsr #2
	mov r0, #0
	str r0, [sp]
	cmp r8, #0x100
	movgt r8, #0x100
	str r0, [sp, #8]
	str r0, [sp, #4]
	mov r9, r0
	str r0, [r10, #0x7c]
	ldr r4, [r10, #0x518]
	b _0211A4D4
_0211A3FC:
	mov r0, r4
	bl  FUN_ov126_0212afec
	mov r5, r0
	mov r0, r4
	bl  FUN_ov126_0212afdc
	mov r6, r0
	cmp r5, #0
	cmpne r6, #0
	beq _0211A4CC
	cmp r6, #1
	streq r9, [sp, #8]
	streq r5, [sp, #4]
	cmp r9, #0
	blt _0211A43C
	cmp r9, #0x100
	blo _0211A444
_0211A43C:
	mov r0, #0
	b _0211A45C
_0211A444:
	ldr r0, _0211A80C ; =0x020A0B6C
	and r2, r9, #7
	ldrb r1, [r0, r9, asr #3]
	mov r0, #1
	tst r1, r0, lsl r2
	moveq r0, #0
_0211A45C:
	cmp r0, #0
	bne _0211A484
	sub r0, r6, #1
	add r1, r10, r0, lsl #1
	ldr r0, [r10, #0x7c]
	add r0, r0, #1
	str r0, [r10, #0x7c]
	ldr r0, _0211A810 ; =0x0000FFFF
	strh r0, [r1, #0x80]
	b _0211A4CC
_0211A484:
	mov r2, #0
	mov r0, r11
	mov r1, r5
	mov r3, r2
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A4CC
	sub r1, r6, #1
	add r0, r10, r1, lsl #1
	strh r9, [r0, #0x80]
	add r0, r10, r1
	strb r5, [r0, #0x280]
	ldr r1, [r10, #0x7c]
	mov r0, #1
	str r0, [sp]
	add r0, r1, #1
	str r0, [r10, #0x7c]
	add r7, r7, #1
_0211A4CC:
	add r9, r9, #1
	add r4, r4, #4
_0211A4D4:
	cmp r9, r8
	blt _0211A3FC
	ldr r0, [sp]
	cmp r0, #0
	mov r0, #0
	bne _0211A500
	ldr r1, [sp, #8]
	cmp r1, #0
	strneh r1, [r10, #0x80]
	ldrne r1, [sp, #4]
	strneb r1, [r10, #0x280]
_0211A500:
	mov r5, #0
	sub r1, r8, #1
	b _0211A568
_0211A50C:
	add r2, r10, r5, lsl #1
	ldrh r2, [r2, #0x80]
	cmp r2, #0
	bne _0211A564
	add r6, r5, #1
	b _0211A55C
_0211A524:
	add r4, r10, r6, lsl #1
	ldrh r3, [r4, #0x80]
	cmp r3, #0
	beq _0211A558
	add r2, r10, r5, lsl #1
	strh r3, [r2, #0x80]
	strh r0, [r4, #0x80]
	add r4, r10, r6
	ldrb r3, [r4, #0x280]
	add r2, r10, r5
	strb r3, [r2, #0x280]
	strb r0, [r4, #0x280]
	b _0211A564
_0211A558:
	add r6, r6, #1
_0211A55C:
	cmp r6, r8
	blt _0211A524
_0211A564:
	add r5, r5, #1
_0211A568:
	cmp r5, r1
	blt _0211A50C
	mov r1, #0
	sub r2, r8, #1
	ldr r6, _0211A810 ; =0x0000FFFF
	b _0211A5E0
_0211A580:
	add r3, r10, r1, lsl #1
	ldrh r3, [r3, #0x80]
	cmp r3, r6
	bne _0211A5DC
	add r7, r1, #1
	b _0211A5D4
_0211A598:
	add r5, r10, r7, lsl #1
	ldrh r4, [r5, #0x80]
	cmp r4, #0
	cmpne r4, r6
	beq _0211A5D0
	add r3, r10, r1, lsl #1
	strh r4, [r3, #0x80]
	strh r6, [r5, #0x80]
	add r5, r10, r7
	ldrb r4, [r5, #0x280]
	add r3, r10, r1
	strb r4, [r3, #0x280]
	strb r0, [r5, #0x280]
	b _0211A5DC
_0211A5D0:
	add r7, r7, #1
_0211A5D4:
	cmp r7, r8
	blt _0211A598
_0211A5DC:
	add r1, r1, #1
_0211A5E0:
	cmp r1, r2
	blt _0211A580
	ldr r5, _0211A814 ; =0x020A1640
	mov r2, #0
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq _0211A6DC
	mov r3, r2
	mov r4, r2
	mov r8, #1
	mov r7, #3
	add r1, sp, #0x20c
	add r0, sp, #0xc
	b _0211A66C
_0211A618:
	add r6, r10, r4, lsl #1
	ldrh r9, [r6, #0x80]
	mov r11, r4, lsl #1
	add r6, r10, r4
	strh r9, [r1, r11]
	ldrb r6, [r6, #0x280]
	strh r6, [r0, r11]
	ldrh r6, [r5, #0xe]
	cmp r6, r9
	bne _0211A660
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #31
	add r2, r3, r2, ror #31
	and r2, r2, #0xff
	cmp r2, #1
	mov r3, r4
	streqb r8, [r10, #0x96c]
	streq r7, [r10, #0x1c]
_0211A660:
	add r2, r2, #1
	and r2, r2, #0xff
	add r4, r4, #1
_0211A66C:
	ldr r6, [r10, #0x7c]
	cmp r4, r6
	blt _0211A618
	mov r0, #0
	add r6, sp, #0x20c
	add r4, sp, #0xc
	b _0211A6D0
_0211A688:
	ldr r1, [r10, #0x7c]
	add r2, r3, r0
	cmp r2, r1
	subge r2, r2, r1
	ldrb r1, [r10, #0x96c]
	cmp r1, #0
	beq _0211A6B0
	subs r2, r2, #1
	ldrmi r1, [r10, #0x7c]
	submi r2, r1, #1
_0211A6B0:
	mov r7, r2, lsl #1
	ldrh r5, [r6, r7]
	add r2, r10, r0, lsl #1
	add r1, r10, r0
	strh r5, [r2, #0x80]
	ldrh r2, [r4, r7]
	add r0, r0, #1
	strb r2, [r1, #0x280]
_0211A6D0:
	ldr r1, [r10, #0x7c]
	cmp r0, r1
	blt _0211A688
_0211A6DC:
	mov r2, #0
	mov r4, r2
	ldr r0, _0211A810 ; =0x0000FFFF
	b _0211A700
_0211A6EC:
	add r3, r10, r4, lsl #1
	ldrh r1, [r3, #0x80]
	add r4, r4, #1
	cmp r1, r0
	streqh r2, [r3, #0x80]
_0211A700:
	ldr r1, [r10, #0x7c]
	cmp r4, r1
	blt _0211A6EC
	mov r0, #0
	b _0211A7C4
_0211A714:
	ldr r5, [r10, #0x7c]
	add r1, r0, #6
	cmp r1, r5
	bgt _0211A75C
	mov r6, #0
	add r1, r0, r0, lsr #31
	b _0211A750
_0211A730:
	add r4, r0, r6, lsl #1
	add r2, r6, r1, asr #1
	add r5, r4, #1
	add r3, r10, r2
	strb r5, [r3, #0x380]
	add r2, r4, #2
	strb r2, [r3, #0x400]
	add r6, r6, #1
_0211A750:
	cmp r6, #3
	blt _0211A730
	b _0211A7C0
_0211A75C:
	ldr r2, _0211A818 ; =0x2AAAAAAB
	mov r3, #6
	smull r1, r4, r2, r5
	add r4, r4, r5, lsr #31
	smull r1, r2, r3, r4
	subs r4, r5, r1
	beq _0211A7C0
	add r1, r4, r4, lsr #31
	and r2, r4, #1
	add r6, r2, r1, asr #1
	mov r7, #0
	add r1, r0, r0, lsr #31
	b _0211A7B8
_0211A790:
	add r4, r0, r7, lsl #1
	add r2, r7, r1, asr #1
	add r5, r4, #1
	add r3, r10, r2
	strb r5, [r3, #0x380]
	ldr r2, [r10, #0x7c]
	add r7, r7, #1
	cmp r5, r2
	addlt r2, r4, #2
	strltb r2, [r3, #0x400]
_0211A7B8:
	cmp r7, r6
	blt _0211A790
_0211A7C0:
	add r0, r0, #6
_0211A7C4:
	ldr r1, [r10, #0x7c]
	cmp r0, r1
	blt _0211A714
	add r0, r1, r1, lsr #31
	and r1, r1, #1
	add r2, r1, r0, asr #1
	ldr r1, [r10, #0x1c]
	mov r0, r10
	str r2, [r10, #0x5c]
	bl FUN_ov87_0211bd30
	strh r0, [r10, #0x12]
	ldr r1, [r10, #0x1c]
	mov r0, r10
	bl FUN_ov87_0211bd94
	strh r0, [r10, #0x14]
	add sp, sp, #0xc
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A80C: .word 0x020A0B6C
_0211A810: .word 0x0000FFFF
_0211A814: .word 0x020A1640
_0211A818: .word 0x2AAAAAAB
	arm_func_end FUN_ov87_0211a37c

	arm_func_start FUN_ov87_0211a81c
FUN_ov87_0211a81c: ; 0x0211A81C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x1c]
	bl FUN_ov87_0211bd30
	strh r0, [r5, #0x12]
	ldr r1, [r5, #0x1c]
	mov r0, r5
	bl FUN_ov87_0211bd94
	ldrh r1, [r5, #0x12]
	strh r0, [r5, #0x14]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #6
	ldr r0, _0211A888 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldr r0, _0211A88C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r5
	beq _0211A87C
	mov r1, r4
	bl FUN_ov87_0211a2c8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A87C:
	mov r1, #8
	bl FUN_ov87_0211a2c8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A888: .word 0x0209AC44
_0211A88C: .word 0x020A0640
	arm_func_end FUN_ov87_0211a81c

	arm_func_start FUN_ov87_0211a890
FUN_ov87_0211a890: ; 0x0211A890
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	ldr r1, _0211A9C4 ; =0x020A0640
	mov r5, r0
	ldrb r0, [r1, #0x8b]
	cmp r0, #0
	bne _0211A8B8
	ldr r0, _0211A9C8 ; =0x0211D124
	add r1, r5, #0x4a0
	bl  FUN_ov16_020f316c
_0211A8B8:
	ldr r0, _0211A9CC ; =0x0211D140
	add r1, r5, #0x4d0
	bl  FUN_ov1_020dbe00
	add r1, r5, #0xdc
	ldr r0, _0211A9D0 ; =0x0211D150
	add r1, r1, #0x400
	bl  FUN_ov1_020dbe00
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _0211A8F0
	add r1, r5, #0x118
	ldr r0, _0211A9D4 ; =0x0211D164
	add r1, r1, #0x400
	bl  FUN_ov16_020f316c
_0211A8F0:
	ldr r0, _0211A9C4 ; =0x020A0640
	ldrb r0, [r0, #0x8b]
	cmp r0, #0
	bne _0211A9A0
	add r1, r5, #0x94
	ldr r0, _0211A9D8 ; =0x0211D180
	add r1, r1, #0x400
	bl  FUN_ov16_020f316c
	ldr r0, [r5, #0x480]
	add r4, r5, #0x480
	cmp r0, #0
	ldrne r0, [r4, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211A9A0
	mov r0, r4
	bl  FUN_ov16_020f2f20
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r4, #0xc]
	ldrh r3, [r4, #0xe]
	ldr r1, [r4, #4]
	ldr r0, _0211A9DC ; =0x0211D19C
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4, #4]
	mov r2, r2, lsl #3
	mov r1, r1, lsl #3
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl FUN_020026d0
_0211A9A0:
	add r1, r5, #0x124
	ldr r0, _0211A9E0 ; =0x0209BA20
	add r1, r1, #0x400
	bl  FUN_ov16_020eed18 ; may be ov17
	mov r0, r5
	mov r1, #1
	bl FUN_ov87_0211a2c8
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_0211A9C4: .word 0x020A0640
_0211A9C8: .word 0x0211D124
_0211A9CC: .word 0x0211D140
_0211A9D0: .word 0x0211D150
_0211A9D4: .word 0x0211D164
_0211A9D8: .word 0x0211D180
_0211A9DC: .word 0x0211D19C
_0211A9E0: .word 0x0209BA20
	arm_func_end FUN_ov87_0211a890

	arm_func_start FUN_ov87_0211a9e4
FUN_ov87_0211a9e4: ; 0x0211A9E4
	add r1, r0, #0x94
	ldr r0, [r0, #0x494]
	ldr r2, _0211A9FC ; =0x0211CECC
	ldr r12, _0211AA00 ; = FUN_ov1_020dbfdc
	add r1, r1, #0x400
	bx r12
_0211A9FC: .word 0x0211CECC
_0211AA00: .word  FUN_ov1_020dbfdc
	arm_func_end FUN_ov87_0211a9e4

	arm_func_start FUN_ov87_0211aa04
FUN_ov87_0211aa04: ; 0x0211AA04
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x4a0]
	beq _0211AA34
	ldr r0, _0211AA5C ; =0x0211D1EC
	ldr r2, _0211AA60 ; =0x0211CEEC
	b _0211AA3C
_0211AA34:
	ldr r0, _0211AA64 ; =0x0211D208
	ldr r2, _0211AA68 ; =0x0211CF1C
_0211AA3C:
	add r3, r4, #0x530
	bl  FUN_ov16_020f5450
	add r0, r4, #0x94
	add r0, r0, #0x400
	add r0, r0, #0xc
	bl  FUN_ov16_020f33fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211AA5C: .word 0x0211D1EC
_0211AA60: .word 0x0211CEEC
_0211AA64: .word 0x0211D208
_0211AA68: .word 0x0211CF1C
	arm_func_end FUN_ov87_0211aa04

	arm_func_start FUN_ov87_0211aa6c
FUN_ov87_0211aa6c: ; 0x0211AA6C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	mov r9, #0
	add r4, r10, #0xdc
	ldr r11, _0211AB10 ; =0x0211D224
	mov r6, r9
	add r8, sp, #0x18
	add r7, sp, #0x14
	ldr r5, _0211AB14 ; =0x02099F38
	b _0211AAFC
_0211AA98:
	add r0, r10, r9
	ldrb r1, [r0, #0x280]
	cmp r1, #0
	beq _0211AAF8
	ldr r0, [r4, #0x400]
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211AAF8
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r5]
	mov r1, #5
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r11
	mov r3, #1
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x554]
_0211AAF8:
	add r9, r9, #1
_0211AAFC:
	ldr r0, [r10, #0x7c]
	cmp r9, r0
	blt _0211AA98
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB10: .word 0x0211D224
_0211AB14: .word 0x02099F38
	arm_func_end FUN_ov87_0211aa6c

	arm_func_start FUN_ov87_0211ab18
FUN_ov87_0211ab18: ; 0x0211AB18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	ldrneh r1, [r4, #0x14]
	cmpne r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4, #0x4d0]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211ABD4
	ldrb r0, [r4, #0x16]
	add r0, r0, #5
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x530]
	cmp r1, #0
	beq _0211AB8C
	ldr r0, _0211AC7C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	ldrb r0, [r4, #0x16]
	mov r1, #0
	add r0, r0, #5
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x530]
_0211AB8C:
	ldr r0, _0211AC7C ; =0x02099F38
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211AC80 ; =0x0211D244
	str r3, [sp, #0x10]
	mov r1, #5
	mov r3, #1
	bl FUN_02058800
	ldrb r1, [r4, #0x16]
	add r1, r1, #5
	add r1, r4, r1, lsl #2
	str r0, [r1, #0x530]
_0211ABD4:
	ldrh r1, [r4, #0x14]
	ldr r0, [r4, #0x4dc]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldrb r0, [r4, #0x16]
	add r0, r0, #7
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x530]
	cmp r1, #0
	beq _0211AC2C
	ldr r0, _0211AC7C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	ldrb r0, [r4, #0x16]
	mov r1, #0
	add r0, r0, #7
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x530]
_0211AC2C:
	ldr r0, _0211AC7C ; =0x02099F38
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211AC84 ; =0x0211D264
	str r3, [sp, #0x10]
	mov r1, #5
	mov r3, #1
	bl FUN_02058800
	ldrb r1, [r4, #0x16]
	add r1, r1, #7
	add r1, r4, r1, lsl #2
	str r0, [r1, #0x530]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211AC7C: .word 0x02099F38
_0211AC80: .word 0x0211D244
_0211AC84: .word 0x0211D264
	arm_func_end FUN_ov87_0211ab18

	arm_func_start FUN_ov87_0211ac88
FUN_ov87_0211ac88: ; 0x0211AC88
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211AD14 ; =0x02099F38
	b _0211ACC4
_0211AC9C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x530]
	cmp r1, #0
	beq _0211ACC0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211ACC0:
	add r5, r5, #1
_0211ACC4:
	cmp r5, #9
	blt _0211AC9C
	mov r5, #0
	ldr r4, _0211AD14 ; =0x02099F38
	b _0211AD00
_0211ACD8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x554]
	cmp r1, #0
	beq _0211ACFC
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211ACFC:
	add r5, r5, #1
_0211AD00:
	ldr r0, [r6, #0x7c]
	cmp r5, r0
	blt _0211ACD8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211AD14: .word 0x02099F38
	arm_func_end FUN_ov87_0211ac88

	arm_func_start FUN_ov87_0211ad18
FUN_ov87_0211ad18: ; 0x0211AD18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211ADF0 ; =0x02099F38
	b _0211AD6C
_0211AD30:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x530]
	cmp r1, #0
	beq _0211AD68
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AD68
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x530]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211AD68:
	add r6, r6, #1
_0211AD6C:
	cmp r6, #5
	blt _0211AD30
	mov r6, #0
	mov r5, #8
	mov r4, #3
	mov r9, r6
	ldr r8, _0211ADF0 ; =0x02099F38
	b _0211ADE0
_0211AD8C:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x554]
	cmp r1, #0
	beq _0211ADDC
	ldr r0, [r8]
	bl FUN_02059004
	cmp r0, #0
	bne _0211ADDC
	add r1, r7, r6, lsl #2
	ldr r0, [r8]
	ldr r1, [r1, #0x554]
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_02114918
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x554]
	ldr r0, [r8]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
_0211ADDC:
	add r6, r6, #1
_0211ADE0:
	ldr r0, [r7, #0x7c]
	cmp r6, r0
	blt _0211AD8C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ADF0: .word 0x02099F38
	arm_func_end FUN_ov87_0211ad18

	arm_func_start FUN_ov87_0211adf4
FUN_ov87_0211adf4: ; 0x0211ADF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x94
	mov r7, #0
	add r6, r0, #0x400
	mov r5, #0xc
	b _0211AE1C
_0211AE10:
	mla r0, r7, r5, r6
	bl  FUN_ov16_020f33fc
	add r7, r7, #1
_0211AE1C:
	cmp r7, #0xd
	blt _0211AE10
	mov r6, #0
	ldr r5, _0211AEB8 ; =0x02099F38
	b _0211AE4C
_0211AE30:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x954]
	cmp r1, #0
	beq _0211AE48
	ldr r0, [r5]
	bl  FUN_ov16_021128c4
_0211AE48:
	add r6, r6, #1
_0211AE4C:
	cmp r6, #6
	blt _0211AE30
	mov r6, #0
	ldr r5, _0211AEB8 ; =0x02099F38
	b _0211AE7C
_0211AE60:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x554]
	cmp r1, #0
	beq _0211AE78
	ldr r0, [r5]
	bl FUN_02058ee0
_0211AE78:
	add r6, r6, #1
_0211AE7C:
	cmp r6, #0x100
	blt _0211AE60
	mov r6, #0
	ldr r5, _0211AEB8 ; =0x02099F38
	b _0211AEAC
_0211AE90:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x530]
	cmp r1, #0
	beq _0211AEA8
	ldr r0, [r5]
	bl FUN_02058ee0
_0211AEA8:
	add r6, r6, #1
_0211AEAC:
	cmp r6, #9
	blt _0211AE90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AEB8: .word 0x02099F38
	arm_func_end FUN_ov87_0211adf4

	arm_func_start FUN_ov87_0211aebc
FUN_ov87_0211aebc: ; 0x0211AEBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, r1
	cmp r0, #5
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AFF4 ; =0x02099ED4
	mov r4, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0x20]
	cmpeq r0, #0
	ldreq r0, [r6, #0x48]
	cmpeq r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211AFF8 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r7]
	mov r2, r4
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211AFEC
_0211AF28: ; jump table
	b _0211AFEC ; case 0
	b _0211AF40 ; case 1
	b _0211AF5C ; case 2
	b _0211AF94 ; case 3
	b _0211AFBC ; case 4
	b _0211AF78 ; case 5
_0211AF40:
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov87_0211b1a4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF5C:
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov87_0211b210
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF78:
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov87_0211b2a8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF94:
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	str r4, [sp]
	mov r1, r0
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	mov r0, r6
	bl FUN_ov87_0211b300
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AFBC:
	ldr r0, [r7]
	add r1, sp, #4
	bl  FUN_ov16_0210f48c
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	mov r1, #1
	str r1, [sp]
	mov r1, r0
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r6
	bl FUN_ov87_0211b300
_0211AFEC:
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AFF4: .word 0x02099ED4
_0211AFF8: .word 0x02099EB4
	arm_func_end FUN_ov87_0211aebc

	arm_func_start FUN_ov87_0211affc
FUN_ov87_0211affc: ; 0x0211AFFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B194 ; =0x0209A0F4
	mov r6, r0
	ldrh r0, [r2]
	mov r5, r1
	ldr r1, [r6, #8]
	orr r0, r0, r5
	mov r0, r0, lsl #0x10
	cmp r1, #5
	mov r4, r0, lsr #0x10
	ldreqb r0, [r6, #0x1a]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B198 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0x20]
	cmpeq r0, #0
	ldreq r0, [r6, #0x48]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211B19C ; =0x02099EB4
	ldr r0, [r7]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B094
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r4, r5
	strh r1, [r0, #0x38]
_0211B094:
	mov r0, r6
	mov r1, r5
	bl FUN_ov87_0211c874
	tst r5, #1
	beq _0211B0D4
	mov r0, r6
	bl FUN_ov87_0211b684
	cmp r0, #0
	beq _0211B0C4
	mov r0, r6
	bl FUN_ov87_0211a81c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0C4:
	ldr r0, _0211B1A0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0D4:
	tst r4, #0x40
	beq _0211B0FC
	ldr r1, [r6, #0x1c]
	cmp r1, #3
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	sub r1, r1, #3
	mov r2, #5
	bl FUN_ov87_0211c224
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0FC:
	tst r4, #0x80
	beq _0211B124
	ldr r1, [r6, #0x1c]
	cmp r1, #3
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	add r1, r1, #3
	mov r2, #5
	bl FUN_ov87_0211c224
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B124:
	tst r4, #0x20
	beq _0211B15C
	ldr r1, [r6, #0x1c]
	mov r0, r6
	cmp r1, #0
	cmpne r1, #3
	beq _0211B150
	sub r1, r1, #1
	mov r2, #5
	bl FUN_ov87_0211c224
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B150:
	mvn r1, #0
	bl FUN_ov87_0211c570
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B15C:
	tst r4, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x1c]
	mov r0, r6
	cmp r1, #2
	cmpne r1, #5
	beq _0211B188
	add r1, r1, #1
	mov r2, #5
	bl FUN_ov87_0211c224
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B188:
	mov r1, #1
	bl FUN_ov87_0211c570
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B194: .word 0x0209A0F4
_0211B198: .word 0x02099ED4
_0211B19C: .word 0x02099EB4
_0211B1A0: .word 0x0209AC44
	arm_func_end FUN_ov87_0211affc

	arm_func_start FUN_ov87_0211b1a4
FUN_ov87_0211b1a4: ; 0x0211B1A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	cmp r1, #4
	blt _0211B1E4
	cmp r1, #0xe
	bgt _0211B1E4
	ldr r2, [r4, #0x1c]
	sub r1, r1, #4
	str r2, [r4, #0x40]
	cmp r1, r2
	ldmeqfd sp!, {r4, pc}
	mov r2, #5
	bl FUN_ov87_0211c224
	ldmfd sp!, {r4, pc}
_0211B1E4:
	sub r0, r1, #2
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	cmp r1, #2
	mvneq r1, #0
	movne r1, #1
	mov r0, r4
	bl FUN_ov87_0211c570
	mov r0, #0xf
	str r0, [r4, #0x60]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov87_0211b1a4

	arm_func_start FUN_ov87_0211b210
FUN_ov87_0211b210: ; 0x0211B210
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211B2A4 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r5, #1
	blt _0211B260
	bgt _0211B260
	cmp r0, #0
	ldrneh r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r4]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B260:
	cmp r5, #2
	cmpne r5, #3
	moveq r0, #0
	streq r0, [r6, #0x60]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #4
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r5, #0xe
	ldrle r0, [r6, #0x40]
	suble r1, r5, #4
	cmple r0, r1
	ldreq r0, _0211B2A4 ; =0x02099EB4
	moveq r1, #1
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B2A4: .word 0x02099EB4
	arm_func_end FUN_ov87_0211b210

	arm_func_start FUN_ov87_0211b2a8
FUN_ov87_0211b2a8: ; 0x0211B2A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	sub r0, r1, #2
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	sub r0, r0, #1
	str r0, [r4, #0x60]
	cmp r0, #0
	ldmgtfd sp!, {r4, pc}
	cmp r1, #2
	mvneq r1, #0
	movne r1, #1
	mov r0, r4
	bl FUN_ov87_0211c570
	mov r0, #4
	str r0, [r4, #0x60]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov87_0211b2a8

	arm_func_start FUN_ov87_0211b300
FUN_ov87_0211b300: ; 0x0211B300
	cmp r1, #0
	bxle lr
	sub r1, r1, #2
	cmp r1, #1
	bxhi lr
	ldrb r1, [sp]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x60]
	bx lr
	arm_func_end FUN_ov87_0211b300

	arm_func_start FUN_ov87_0211b328
FUN_ov87_0211b328: ; 0x0211B328
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r6, #0x20
	mov r8, r0
	str r6, [sp, #4]
	bl FUN_02004f78
	mov r7, #0
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r6
	bl FUN_020026d0
	mov r5, #1
	add r4, sp, #4
	str r4, [sp]
	ldr r0, [r8, #0x4ac]
	mov r1, r7
	mov r2, r5
	mov r3, r5
	bl  FUN_ov1_020dc020
	str r4, [sp]
	mov r1, r0
	ldr r0, [r8, #0x4b8]
	mov r2, #2
	mov r3, r5
	bl  FUN_ov1_020dc020
	str r6, [sp, #4]
	ldr r0, [r8, #0x480]
	add r4, r8, #0x480
	cmp r0, #0
	ldrne r1, [r4, #4]
	cmpne r1, #0
	movne r7, r5
	cmp r7, #0
	beq _0211B40C
	ldrh r12, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	mov r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	ldrh r3, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	ldr r0, [r4, #4]
	ldr r1, [sp, #4]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_02005a1c
	ldrh r1, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	ldr r2, [sp, #4]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #4]
_0211B40C:
	bl  FUN_ov16_020f10ac
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov87_0211b328

	arm_func_start FUN_ov87_0211b418
FUN_ov87_0211b418: ; 0x0211B418
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r7, r0
	mov r4, r2
	mov r6, r3
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r5, #6
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #9
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, r5, lsl #2
	ldr r0, [r0, #0x954]
	cmp r0, #0
	bne _0211B488
	ldr r0, _0211B5C8 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	add r1, r7, r5, lsl #2
	str r0, [r1, #0x954]
_0211B488:
	add r0, r7, r4, lsl #2
	add r1, r7, r5, lsl #2
	ldr r4, [r1, #0x954]
	ldr r2, [r0, #0x530]
	ldr r7, _0211B5C8 ; =0x02099F38
	mov r1, r4
	ldr r0, [r7]
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r5, #0
	ldr r0, [r7]
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_0211346c
	ldr r0, [r7]
	mov r1, r4
	mov r2, #0x118
	bl  FUN_ov16_02112b98
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r7]
	mov r1, r4
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r3, r4
	mov r2, r2, lsl #0x10
	ldr r0, _0211B5CC ; =0x02099EB4
	str r1, [sp]
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fbe8
	movs r8, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [sp, #0x34]
	strb r4, [r8, #0x11]
	ldrh r7, [sp, #0x30]
	strb r0, [r8, #0x10]
	strb r4, [r8, #0xf]
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r8, #0x3a
	strh r7, [r8, #0xc]
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x3e
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r5
	add r2, r6, #1
	mov r3, r5
	bl  FUN_ov16_0210e720
	mov r2, r4
	add r0, r8, #0x42
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x42
	add r2, r6, #2
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B5C8: .word 0x02099F38
_0211B5CC: .word 0x02099EB4
	arm_func_end FUN_ov87_0211b418

	arm_func_start FUN_ov87_0211b5d0
FUN_ov87_0211b5d0: ; 0x0211B5D0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldrb r1, [r4, #0x17]
	cmp r1, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, pc}
	mov r1, #0xc8
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0x1e
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r3, #0
	mov r2, #2
	str r3, [sp, #0x14]
	bl FUN_ov87_0211b418
	mov r0, r4
	bl FUN_ov87_0211b630
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov87_0211b5d0

	arm_func_start FUN_ov87_0211b630
FUN_ov87_0211b630: ; 0x0211B630
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B680 ; =0x02099EB4
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov87_0211b684
	cmp r0, #0
	movne r5, #0
	mov r0, r4
	strb r5, [r4, #0x10]
	bl  FUN_ov16_0210e69c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B680: .word 0x02099EB4
	arm_func_end FUN_ov87_0211b630

	arm_func_start FUN_ov87_0211b684
FUN_ov87_0211b684: ; 0x0211B684
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x17]
	cmp r1, #0
	beq _0211B6AC
	ldr r1, [r0, #0x1c]
	bl FUN_ov87_0211bd30
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0211B6AC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov87_0211b684

	arm_func_start FUN_ov87_0211b6b4
FUN_ov87_0211b6b4: ; 0x0211B6B4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, pc}
	ldr r12, [r4, #0x4ac]
	cmp r12, #0
	beq _0211B71C
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r2}
	str r2, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0211B798 ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211B71C:
	ldr r12, [r4, #0x480]
	add lr, r4, #0x480
	cmp r12, #0
	ldrne r0, [lr, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211B788
	mov r1, #0
	mov r0, #1
	stmia sp, {r0, r1}
	mov r0, #2
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r3, [lr, #0xc]
	ldr r0, _0211B798 ; =0x0209F5C0
	mov r2, r1
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh lr, [lr, #0xe]
	mov r3, r1
	and lr, lr, #0xff
	str lr, [sp, #0x14]
	str r1, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211B788:
	mov r0, r4
	bl FUN_ov87_0211b79c
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_0211B798: .word 0x0209F5C0
	arm_func_end FUN_ov87_0211b6b4

	arm_func_start FUN_ov87_0211b79c
FUN_ov87_0211b79c: ; 0x0211B79C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r8, r0
	ldrb r0, [r8, #0x17]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0211B840 ; =0x0209F5C0
	mov r5, #0
	mov r4, #2
	mov r7, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	strb r7, [r8, #0x10]
	bl  FUN_ov16_020f5eec
	ldr r2, [r8, #0x4b8]
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	stmia sp, {r4, r5}
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r4, r2, r1
	mov r1, r5
	mov r2, r7
	mov r3, r5
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B840: .word 0x0209F5C0
	arm_func_end FUN_ov87_0211b79c

	arm_func_start FUN_ov87_0211b844
FUN_ov87_0211b844: ; 0x0211B844
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	ldrne r3, [r0, #0x4c4]
	cmpne r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0xc]
	ldr r2, [r3, #4]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r1, r3, r2
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #5
	mov r1, #0
	mov r2, #2
	bl  FUN_ov16_020f1160
	bl  FUN_ov16_020f10ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov87_0211b844

	arm_func_start FUN_ov87_0211b88c
FUN_ov87_0211b88c: ; 0x0211B88C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	ldr r0, _0211B908 ; =0x020A0640
	strb r1, [r4, #0x18]
	ldrb r0, [r0, #0x8b]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211B90C ; =0x0209F5C0
	mov r2, r1
	bl  FUN_ov16_020f5ff4
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _0211B8F0
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _0211B8F8
	cmp r0, #6
	beq _0211B8EC
	cmp r0, #7
	bne _0211B8F8
_0211B8EC:
	b _0211B8F0
_0211B8F0:
	mov r0, r4
	bl FUN_ov87_0211b6b4
_0211B8F8:
	ldr r0, _0211B90C ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_0211B908: .word 0x020A0640
_0211B90C: .word 0x0209F5C0
	arm_func_end FUN_ov87_0211b88c

	arm_func_start FUN_ov87_0211b910
FUN_ov87_0211b910: ; 0x0211B910
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x954]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B98C ; =0x02099F38
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_02112724
	mov r6, r0
	str r6, [r7, #0x954]
	ldr r3, [r7, #0x530]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r5, #0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r6
	sub r3, r5, #1
	mov r2, #0x12c
	bl  FUN_ov16_02112c90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B98C: .word 0x02099F38
	arm_func_end FUN_ov87_0211b910

	arm_func_start FUN_ov87_0211b990
FUN_ov87_0211b990: ; 0x0211B990
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x960]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r6, _0211BAE4 ; =0x02099F38
	ldr r1, [r5, #0x7c]
	ldr r0, [r6]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r9, r0
	str r9, [r5, #0x960]
	ldr r2, [r5, #0x540]
	ldr r0, [r6]
	mov r1, r9
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r4, #0
	ldr r0, [r6]
	mov r1, r9
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_0211346c
	ldr r0, [r6]
	mov r1, r9
	mov r2, #0x104
	bl  FUN_ov16_02112b98
	ldr r0, [r6]
	mov r1, r9
	mov r2, #2
	bl  FUN_ov16_02113390
	b _0211BA48
_0211BA18:
	add r0, r5, r4
	ldrb r0, [r0, #0x280]
	cmp r0, #0
	beq _0211BA44
	add r0, r5, r4, lsl #2
	ldr r3, [r0, #0x554]
	ldr r0, [r6]
	mov r1, r9
	add r2, r4, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
_0211BA44:
	add r4, r4, #1
_0211BA48:
	ldr r0, [r5, #0x7c]
	cmp r4, r0
	blt _0211BA18
	mov r10, #0
	mov r8, #1
	mov r7, #2
	mov r4, #0x38
	ldr r6, _0211BAE4 ; =0x02099F38
	mov r5, #0x48
	b _0211BAD4
_0211BA70:
	mov r1, r10, lsr #0x1f
	rsb r0, r1, r10, lsl #31
	add r0, r1, r0, ror #31
	mul r2, r0, r4
	add r0, r10, r10, lsr #31
	mov r0, r0, asr #1
	mul r1, r0, r5
	add r0, r2, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	add r0, r1, #0x18
	mov r3, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r9
	add r2, r10, #1
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	str r8, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r3, r7
	add r2, r10, #1
	bl  FUN_ov16_02113ec0
	add r10, r10, #1
_0211BAD4:
	cmp r10, #6
	blt _0211BA70
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211BAE4: .word 0x02099F38
	arm_func_end FUN_ov87_0211b990

	arm_func_start FUN_ov87_0211bae8
FUN_ov87_0211bae8: ; 0x0211BAE8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrh r0, [r6, #0x12]
	mov r5, #1
	cmp r0, #0
	ldrneh r0, [r6, #0x14]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x16]
	ldr r4, _0211BCD0 ; =0x02099F38
	add r0, r0, #5
	add r0, r6, r0, lsl #2
	ldr r1, [r0, #0x530]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211BB6C
	ldrb r1, [r6, #0x16]
	ldr r0, [r4]
	mov r2, #0x1a
	add r1, r1, #5
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x530]
	mov r3, #3
	bl  FUN_ov16_02114918
	ldrb r1, [r6, #0x16]
	mov r2, #0
	ldr r0, [r4]
	add r1, r1, #5
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x530]
	mov r3, r2
	bl FUN_02059038
_0211BB6C:
	ldrb r0, [r6, #0x16]
	ldr r4, _0211BCD0 ; =0x02099F38
	add r0, r0, #7
	add r0, r6, r0, lsl #2
	ldr r1, [r0, #0x530]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211BBD0
	ldrb r1, [r6, #0x16]
	ldr r0, [r4]
	mov r2, #8
	add r1, r1, #7
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x530]
	mov r3, #3
	bl  FUN_ov16_02114918
	ldrb r1, [r6, #0x16]
	mov r2, #0
	ldr r0, [r4]
	add r1, r1, #7
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x530]
	mov r3, r2
	bl FUN_02059038
_0211BBD0:
	ldr r0, [r6, #0x968]
	cmp r0, #0
	bne _0211BBF4
	ldr r0, _0211BCD0 ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r6, #0x968]
_0211BBF4:
	ldrb r0, [r6, #0x16]
	ldr r7, _0211BCD0 ; =0x02099F38
	ldr r4, [r6, #0x968]
	add r0, r0, #5
	add r0, r6, r0, lsl #2
	ldr r3, [r0, #0x530]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, [r7]
	ldr r3, _0211BCD4 ; =0x00000122
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_021139bc
	mov r0, #0x70
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0x18
	bl  FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r4
	add r2, r5, #1
	ldrb r3, [r6, #0x16]
	add r3, r3, #7
	add r3, r6, r3, lsl #2
	ldr r3, [r3, #0x530]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, [r7]
	mov r1, r4
	add r2, r5, #1
	mov r3, #0x104
	bl  FUN_ov16_021139bc
	add r2, r5, #1
	mov r0, #0x78
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r3, #0x30
	bl  FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r4
	mov r2, #0
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r0, [r7]
	mov r1, r4
	mov r2, #2
	mov r3, #1
	bl  FUN_ov16_0211329c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BCD0: .word 0x02099F38
_0211BCD4: .word 0x00000122
	arm_func_end FUN_ov87_0211bae8

	arm_func_start FUN_ov87_0211bcd8
FUN_ov87_0211bcd8: ; 0x0211BCD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x12]
	cmp r1, #0
	beq _0211BD0C
	mov r1, #4
	bl FUN_ov87_0211a2c8
	ldrb r1, [r4, #0x16]
	mov r0, r4
	eor r1, r1, #1
	strb r1, [r4, #0x16]
	bl FUN_ov87_0211ab18
	ldmfd sp!, {r4, pc}
_0211BD0C:
	ldr r1, [r4, #0x968]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211BD2C ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	bl  FUN_ov16_02113390
	ldmfd sp!, {r4, pc}
_0211BD2C: .word 0x02099F38
	arm_func_end FUN_ov87_0211bcd8

	arm_func_start FUN_ov87_0211bd30
FUN_ov87_0211bd30: ; 0x0211BD30
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211BD90 ; =0x55555556
	mov r5, r1
	smull r1, r3, r4, r5
	add r3, r3, r5, lsr #31
	mov r2, #3
	mov r6, r0
	smull r0, r1, r2, r3
	ldr r2, [r6, #0x44]
	sub r3, r5, r0
	ldr r1, [r6, #0x5c]
	add r0, r2, r3
	bl FUN_0201f9bc
	smull r0, r2, r4, r5
	add r2, r2, r5, lsr #31
	add r0, r6, r2, lsl #7
	add r0, r0, r1
	ldrb r0, [r0, #0x380]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	addne r0, r6, r0, lsl #1
	ldrneh r0, [r0, #0x80]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BD90: .word 0x55555556
	arm_func_end FUN_ov87_0211bd30

	arm_func_start FUN_ov87_0211bd94
FUN_ov87_0211bd94: ; 0x0211BD94
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211BDF4 ; =0x55555556
	mov r5, r1
	smull r1, r3, r4, r5
	add r3, r3, r5, lsr #31
	mov r2, #3
	mov r6, r0
	smull r0, r1, r2, r3
	ldr r2, [r6, #0x44]
	sub r3, r5, r0
	ldr r1, [r6, #0x5c]
	add r0, r2, r3
	bl FUN_0201f9bc
	smull r0, r2, r4, r5
	add r2, r2, r5, lsr #31
	add r0, r6, r2, lsl #7
	add r0, r0, r1
	ldrb r0, [r0, #0x380]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	addne r0, r6, r0
	ldrneb r0, [r0, #0x280]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BDF4: .word 0x55555556
	arm_func_end FUN_ov87_0211bd94

	arm_func_start FUN_ov87_0211bdf8
FUN_ov87_0211bdf8: ; 0x0211BDF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldrb r0, [r10, #0x17]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r7, #0x40
	mov r6, #0x30
	mov r5, #0xa
	mov r11, #2
	ldr r4, _0211BE8C ; =0x02099EB4
	b _0211BE7C
_0211BE30:
	mov r0, r10
	mov r1, r9
	bl FUN_ov87_0211c08c
	mov r8, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov87_0211c0b8
	add r0, r0, #8
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r9, #4
	mov r2, r2, lsl #0x10
	ldr r0, [r4]
	add r3, r8, #8
	mov r1, r11
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fba4
	add r9, r9, #1
_0211BE7C:
	cmp r9, #6
	blt _0211BE30
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE8C: .word 0x02099EB4
	arm_func_end FUN_ov87_0211bdf8

	arm_func_start FUN_ov87_0211be90
FUN_ov87_0211be90: ; 0x0211BE90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0x17]
	mov r6, #1
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4, #0x95c]
	cmp r0, #0
	bne _0211BED4
	ldr r0, _0211C084 ; =0x02099F38
	mov r2, r6
	ldr r0, [r0]
	mov r1, #2
	bl  FUN_ov16_02112724
	str r0, [r4, #0x95c]
_0211BED4:
	ldr r7, _0211C084 ; =0x02099F38
	ldr r5, [r4, #0x95c]
	ldr r2, [r4, #0x534]
	ldr r0, [r7]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r7]
	mov r1, r5
	mov r2, #0xc8
	bl  FUN_ov16_02112b98
	mov r4, #0
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_0211401c
	mov r9, #0x18
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_02113b78
	str r4, [sp]
	mov r8, #2
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #1
	mov r3, r8
	bl  FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r7]
	add r2, r6, #1
	mov r1, r5
	mov r3, #0xf0
	bl  FUN_ov16_02113b78
	mov r7, #1
	str r7, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, _0211C088 ; =0x02099EB4
	mov r2, r8
	ldr r0, [r0]
	mov r1, #3
	mov r3, r5
	bl  FUN_ov16_0210fc74
	movs r6, r0
	beq _0211BFEC
	mov r1, r4
	mov r2, r7
	mov r3, r4
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r7
	add r0, r6, #0x3e
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r7
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e720
_0211BFEC:
	mov r4, #2
	str r4, [sp]
	mov r1, #0xa
	mov r8, #3
	str r1, [sp, #4]
	ldr r0, _0211C088 ; =0x02099EB4
	mov r1, r8
	ldr r0, [r0]
	mov r2, r8
	mov r3, r5
	bl  FUN_ov16_0210fc74
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r6, #0
	mov r5, #1
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r7, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r2, r8
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C084: .word 0x02099F38
_0211C088: .word 0x02099EB4
	arm_func_end FUN_ov87_0211be90

	arm_func_start FUN_ov87_0211c08c
FUN_ov87_0211c08c: ; 0x0211C08C
	ldr r2, _0211C0B4 ; =0x55555556
	mov r3, #3
	smull r0, r12, r2, r1
	add r12, r12, r1, lsr #31
	smull r0, r2, r3, r12
	sub r12, r1, r0
	mov r0, #0x48
	mul r0, r12, r0
	add r0, r0, #0x10
	bx lr
_0211C0B4: .word 0x55555556
	arm_func_end FUN_ov87_0211c08c

	arm_func_start FUN_ov87_0211c0b8
FUN_ov87_0211c0b8: ; 0x0211C0B8
	ldr r2, _0211C0D0 ; =0x55555556
	mov r3, #0x38
	smull r0, r12, r2, r1
	add r12, r12, r1, lsr #31
	mul r0, r12, r3
	bx lr
_0211C0D0: .word 0x55555556
	arm_func_end FUN_ov87_0211c0b8

	arm_func_start FUN_ov87_0211c0d4
FUN_ov87_0211c0d4: ; 0x0211C0D4
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x34]
	str r1, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov87_0211c0d4

	arm_func_start FUN_ov87_0211c104
FUN_ov87_0211c104: ; 0x0211C104
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0x964]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _0211C1BC ; =0x02099F38
	mov r8, #1
	ldr r0, [r5]
	mov r1, r8
	mov r2, r8
	bl  FUN_ov16_02112724
	mov r7, r0
	str r7, [r4, #0x964]
	ldr r2, [r4, #0x53c]
	ldr r0, [r5]
	mov r1, r7
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r6, #0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_0211346c
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xfa
	bl  FUN_ov16_02112b98
	ldr r0, [r5]
	mov r1, r7
	mov r3, r8
	mov r2, #2
	bl  FUN_ov16_0211329c
	ldrb r0, [r4, #0x96c]
	cmp r0, #0
	mov r0, r4
	beq _0211C1B0
	mov r1, #3
	bl FUN_ov87_0211c1c0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C1B0:
	mov r1, r6
	bl FUN_ov87_0211c1c0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C1BC: .word 0x02099F38
	arm_func_end FUN_ov87_0211c104

	arm_func_start FUN_ov87_0211c1c0
FUN_ov87_0211c1c0: ; 0x0211C1C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	str r6, [r7, #0x1c]
	ldr r5, [r7, #0x964]
	mov r4, #1
	bl FUN_ov87_0211c08c
	str r0, [r7, #0x24]
	mov r0, r7
	mov r1, r6
	bl FUN_ov87_0211c0b8
	mov r1, r0, lsl #0x10
	str r0, [r7, #0x28]
	mov r0, r1, asr #0x10
	str r0, [sp]
	ldr r1, [r7, #0x24]
	ldr r0, _0211C220 ; =0x02099F38
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C220: .word 0x02099F38
	arm_func_end FUN_ov87_0211c1c0

	arm_func_start FUN_ov87_0211c224
FUN_ov87_0211c224: ; 0x0211C224
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r7, [r6, #0x1c]
	mov r5, r1
	mov r12, #1
	mov r3, #0
	mov r1, r7
	mov r4, r2
	str r12, [r6, #0x20]
	str r3, [r6, #0x34]
	bl FUN_ov87_0211c08c
	str r0, [r6, #0x24]
	mov r0, r6
	mov r1, r7
	bl FUN_ov87_0211c0b8
	str r0, [r6, #0x28]
	mov r0, r6
	mov r1, r5
	bl FUN_ov87_0211c08c
	str r0, [r6, #0x2c]
	mov r0, r6
	mov r1, r5
	bl FUN_ov87_0211c0b8
	ldr r2, [r6, #0x2c]
	ldr r1, [r6, #0x24]
	str r0, [r6, #0x30]
	sub r0, r2, r1
	mov r1, r4
	bl FUN_0201f9bc
	str r0, [r6, #0x38]
	ldr r2, [r6, #0x30]
	ldr r0, [r6, #0x28]
	mov r1, r4
	sub r0, r2, r0
	bl FUN_0201f9bc
	str r0, [r6, #0x3c]
	ldr r2, [r6, #0x2c]
	ldr r0, [r6, #0x24]
	cmp r0, r2
	ble _0211C2D8
	mov r1, r4
	sub r0, r0, r2
	bl FUN_0201f9bc
	rsb r0, r0, #0
	str r0, [r6, #0x38]
_0211C2D8:
	ldr r2, [r6, #0x30]
	ldr r0, [r6, #0x28]
	cmp r0, r2
	ble _0211C2FC
	mov r1, r4
	sub r0, r0, r2
	bl FUN_0201f9bc
	rsb r0, r0, #0
	str r0, [r6, #0x3c]
_0211C2FC:
	ldr r0, _0211C340 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, r5
	str r5, [r6, #0x1c]
	bl FUN_ov87_0211bd30
	strh r0, [r6, #0x12]
	ldr r1, [r6, #0x1c]
	mov r0, r6
	bl FUN_ov87_0211bd94
	strh r0, [r6, #0x14]
	mov r0, r6
	bl FUN_ov87_0211bcd8
	mov r0, r6
	bl FUN_ov87_0211b630
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C340: .word 0x0209AC44
	arm_func_end FUN_ov87_0211c224

	arm_func_start FUN_ov87_0211c344
FUN_ov87_0211c344: ; 0x0211C344
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x38]
	add r1, r1, #1
	ldr r3, [r0, #0x24]
	ldr r12, [r0, #0x28]
	ldr r4, [r0, #0x3c]
	mla r3, r2, r1, r3
	cmp r2, #0
	mla r12, r4, r1, r12
	str r1, [r0, #0x34]
	ldr r1, [r0, #0x964]
	mov r2, #1
	ldr lr, [r0, #0x2c]
	bge _0211C390
	cmp r3, lr
	movlt r3, lr
	b _0211C398
_0211C390:
	cmp r3, lr
	movgt r3, lr
_0211C398:
	cmp r4, #0
	ldr lr, [r0, #0x30]
	bge _0211C3B0
	cmp r12, lr
	movlt r12, lr
	b _0211C3B8
_0211C3B0:
	cmp r12, lr
	movgt r12, lr
_0211C3B8:
	ldr lr, [r0, #0x2c]
	cmp r3, lr
	ldreq lr, [r0, #0x30]
	mov r3, r3, lsl #0x10
	cmpeq r12, lr
	moveq lr, #0
	streq lr, [r0, #0x20]
	streq lr, [r0, #0x34]
	mov r0, r12, lsl #0x10
	mov r12, r0, asr #0x10
	ldr r0, _0211C3FC ; =0x02099F38
	str r12, [sp]
	ldr r0, [r0]
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211C3FC: .word 0x02099F38
	arm_func_end FUN_ov87_0211c344

	arm_func_start FUN_ov87_0211c400
FUN_ov87_0211c400: ; 0x0211C400
	mov r1, #0
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x58]
	str r1, [r0, #0x50]
	str r1, [r0, #0x54]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x60]
	bx lr
	arm_func_end FUN_ov87_0211c400

	arm_func_start FUN_ov87_0211c424
FUN_ov87_0211c424: ; 0x0211C424
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r5, [r10, #0x960]
	ldr r7, [r10, #0x44]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211C56C ; =0x02099F38
	mov r9, #0
	ldr r0, [r4]
	mov r1, r5
	mov r2, r9
	mov r3, r9
	bl  FUN_ov16_02114248
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	bl  FUN_ov16_02113390
	mov r11, #1
	b _0211C560
_0211C470:
	add r0, r10, r7
	ldrb r6, [r0, #0x380]
	cmp r6, #0
	beq _0211C4DC
	mov r0, r10
	mov r1, r9
	bl FUN_ov87_0211c08c
	add r8, r0, #8
	mov r0, r10
	mov r1, r9
	bl FUN_ov87_0211c0b8
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r8, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r4]
	mov r2, r6
	mov r1, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211C4DC:
	add r0, r10, r7
	ldrb r6, [r0, #0x400]
	cmp r6, #0
	beq _0211C54C
	mov r0, r10
	add r1, r9, #3
	bl FUN_ov87_0211c08c
	add r8, r0, #8
	mov r0, r10
	add r1, r9, #3
	bl FUN_ov87_0211c0b8
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r8, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r6
	mov r1, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211C54C:
	ldr r0, [r10, #0x5c]
	add r7, r7, #1
	cmp r7, r0
	movge r7, #0
	add r9, r9, #1
_0211C560:
	cmp r9, #3
	blt _0211C470
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C56C: .word 0x02099F38
	arm_func_end FUN_ov87_0211c424

	arm_func_start FUN_ov87_0211c570
FUN_ov87_0211c570: ; 0x0211C570
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r2, [r10, #0x44]
	ldr r5, [r10, #0x960]
	mov r9, r1
	add r4, r2, r9
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x5c]
	cmp r4, #0
	sublt r4, r0, #1
	blt _0211C5A8
	cmp r4, r0
	movge r4, #0
_0211C5A8:
	mov r6, #0
	mov r0, #1
	str r0, [r10, #0x48]
	str r6, [r10, #0x4c]
	cmp r9, #0
	bge _0211C658
	mov r0, r10
	mov r1, r6
	bl FUN_ov87_0211c08c
	sub r7, r0, #0x40
	mov r0, r10
	mov r1, r6
	bl FUN_ov87_0211c0b8
	add r1, r10, r4
	ldrb r6, [r1, #0x380]
	add r0, r0, #8
	cmp r6, #0
	beq _0211C634
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r8, _0211C7B0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211C634:
	mov r0, r10
	mov r1, #3
	bl FUN_ov87_0211c0b8
	add r1, r10, r4
	ldrb r6, [r1, #0x400]
	add r0, r0, #8
	cmp r6, #0
	beq _0211C740
	b _0211C6FC
_0211C658:
	ldr r1, [r10, #0x5c]
	add r0, r2, #3
	bl FUN_0201f9bc
	mov r8, r1
	mov r0, r10
	mov r1, #2
	bl FUN_ov87_0211c08c
	add r7, r0, #0x50
	mov r0, r10
	mov r1, #2
	bl FUN_ov87_0211c0b8
	add r1, r10, r8
	ldrb r6, [r1, #0x380]
	add r0, r0, #8
	cmp r6, #0
	beq _0211C6DC
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r11, _0211C7B0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211C6DC:
	mov r0, r10
	mov r1, #3
	bl FUN_ov87_0211c0b8
	add r1, r10, r8
	ldrb r6, [r1, #0x400]
	add r0, r0, #8
	cmp r6, #0
	beq _0211C740
_0211C6FC:
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r8, _0211C7B0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211C740:
	rsb r1, r9, #0
	mov r0, #0x48
	mul r5, r1, r0
	ldr r2, _0211C7B4 ; =0x66666667
	mov r3, #0
	mov r0, r5, lsr #0x1f
	smull r1, r6, r2, r5
	add r6, r0, r6, asr #1
	ldr r0, _0211C7B8 ; =0x0209AC44
	mov r1, #8
	str r6, [r10, #0x58]
	str r3, [r10, #0x50]
	str r5, [r10, #0x54]
	bl FUN_0202cf6c
	ldr r1, [r10, #0x1c]
	mov r0, r10
	str r4, [r10, #0x44]
	bl FUN_ov87_0211bd30
	strh r0, [r10, #0x12]
	ldr r1, [r10, #0x1c]
	mov r0, r10
	bl FUN_ov87_0211bd94
	strh r0, [r10, #0x14]
	mov r0, r10
	bl FUN_ov87_0211bcd8
	mov r0, r10
	bl FUN_ov87_0211b630
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C7B0: .word 0x02099F38
_0211C7B4: .word 0x66666667
_0211C7B8: .word 0x0209AC44
	arm_func_end FUN_ov87_0211c570

	arm_func_start FUN_ov87_0211c7bc
FUN_ov87_0211c7bc: ; 0x0211C7BC
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x4c]
	ldr r2, [r0, #0x58]
	add r1, r1, #1
	ldr r3, [r0, #0x50]
	str r1, [r0, #0x4c]
	mla r3, r2, r1, r3
	cmp r2, #0
	ldr r1, [r0, #0x960]
	ldr r2, [r0, #0x54]
	bge _0211C7F4
	cmp r3, r2
	movlt r3, r2
	b _0211C7FC
_0211C7F4:
	cmp r3, r2
	movgt r3, r2
_0211C7FC:
	ldr r2, [r0, #0x54]
	cmp r3, r2
	bne _0211C81C
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	bl FUN_ov87_0211c424
	ldmfd sp!, {r3, pc}
_0211C81C:
	ldr r0, _0211C838 ; =0x02099F38
	mov r2, r3, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, asr #0x10
	mov r3, #0
	bl  FUN_ov16_02114248
	ldmfd sp!, {r3, pc}
_0211C838: .word 0x02099F38
	arm_func_end FUN_ov87_0211c7bc

	arm_func_start FUN_ov87_0211c83c
FUN_ov87_0211c83c: ; 0x0211C83C
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x17]
	cmp r1, #0
	beq _0211C85C
	ldr r1, [r0, #8]
	sub r1, r1, #6
	cmp r1, #1
	bhi _0211C860
_0211C85C:
	bl FUN_ov87_0211b79c
_0211C860:
	ldr r0, _0211C870 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r3, pc}
_0211C870: .word 0x0209F5C0
	arm_func_end FUN_ov87_0211c83c

	arm_func_start FUN_ov87_0211c874
FUN_ov87_0211c874: ; 0x0211C874
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r0, [r0, #0x78]
	ldr r4, _0211C8BC ; =0x02099EB4
	add r2, sp, #0
	and r0, r1, r0
	mov r1, r0, lsl #0x10
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
_0211C8BC: .word 0x02099EB4
	arm_func_end FUN_ov87_0211c874

	arm_func_start FUN_ov87_0211c8c0
FUN_ov87_0211c8c0: ; 0x0211C8C0
	stmfd sp!, {r4, lr}
	ldr r0, _0211C900 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r4, #0
	b _0211C8F4
_0211C8DC:
	mov r0, r4
	bl  FUN_ov16_020efa80
	cmp r0, #0
	beq _0211C8F0
	bl FUN_0206d64c
_0211C8F0:
	add r4, r4, #1
_0211C8F4:
	cmp r4, #0x64
	blt _0211C8DC
	ldmfd sp!, {r4, pc}
_0211C900: .word 0x020A0640
	arm_func_end FUN_ov87_0211c8c0

	arm_func_start FUN_ov87_0211c904
FUN_ov87_0211c904: ; 0x0211C904
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, #0
	mov r5, #1
	str r6, [r7, #8]
	strb r6, [r7, #0x1a]
	strb r6, [r7, #0x17]
	strb r6, [r7, #0x19]
	strb r6, [r7, #0x18]
	str r6, [r7, #0x7c]
	strb r6, [r7, #0x16]
	strb r5, [r7, #0x96d]
	strh r5, [r7, #0x78]
	str r6, [r7, #0xc]
	strb r6, [r7, #0x10]
	bl FUN_ov87_0211c0d4
	mov r0, r7
	bl FUN_ov87_0211c400
	add r0, r7, #0x94
	mov r1, r6
	add r0, r0, #0x400
	mov r2, #0x9c
	bl MemWrite
	mov r1, r6
	add r0, r7, #0x80
	mov r2, #0x200
	bl MemWrite
	mov r8, #0x100
	add r0, r7, #0x280
	mov r1, r6
	mov r2, r8
	bl MemWrite
	add r0, r7, #0x480
	mov r1, r6
	mov r2, #0x14
	bl MemWrite
	add r0, r7, #0x530
	mov r1, r6
	mov r2, #0x24
	bl MemWrite
	add r0, r7, #0x154
	mov r4, #0x18
	add r0, r0, #0x800
	mov r1, r6
	mov r2, r4
	bl MemWrite
	add r0, r7, #0x154
	add r0, r0, #0x400
	mov r1, r6
	mov r2, #0x400
	bl MemWrite
	mov r2, r8
	add r0, r7, #0x380
	mov r1, r6
	bl MemWrite
	ldr r0, _0211CAD8 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211CADC ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r0, _0211CAE0 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	sub r0, r4, #0x19
	str r0, [r7, #0x6c]
	ldr r0, _0211CAE4 ; =0x020A0640
	str r5, [r7, #0x68]
	str r6, [r7, #0x64]
	str r6, [r7, #0x70]
	strb r6, [r7, #0x74]
	strb r6, [r7, #0x75]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _0211CAE8 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	strneb r0, [r7, #0x17]
	ldr r0, _0211CAEC ; =0x0209BA20
	bl FUN_020728c4
	strh r0, [r7, #0x12]
	mov r4, #0
	ldr r0, _0211CAF0 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5a58
	ldr r0, _0211CAE4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211CAC8
	add r0, r7, #0x480
	mov r1, #0x1c
	mov r2, #6
	strh r4, [r7, #0x12]
	bl  FUN_ov16_020f2fa8
	mov r0, r7
	bl FUN_ov87_0211a890
	ldr r0, _0211CAF4 ; =0x020A1640
	ldrh r1, [r0, #0xe]
	cmp r1, #0
	moveq r1, #0x42
	streqh r1, [r0, #0xe]
	ldr r0, _0211CAF4 ; =0x020A1640
	mov r1, #0
	ldrh r2, [r0, #0xe]
	ldr r0, _0211CAE4 ; =0x020A0640
	strh r2, [r7, #0x12]
	strb r1, [r7, #0x96c]
	ldrb r0, [r0, #0x8b]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0211CAF8 ; =0x0211D284
	mov r0, r7
	bl FUN_ov87_02119f38
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211CAC8:
	mov r0, r7
	mov r1, #8
	bl FUN_ov87_0211a2c8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211CAD8: .word 0x02099EB4
_0211CADC: .word 0x02099ED4
_0211CAE0: .word 0x02099F38
_0211CAE4: .word 0x020A0640
_0211CAE8: .word 0x0209AEC0
_0211CAEC: .word 0x0209BA20
_0211CAF0: .word 0x0209F5C0
_0211CAF4: .word 0x020A1640
_0211CAF8: .word 0x0211D284
	arm_func_end FUN_ov87_0211c904

	arm_func_start FUN_ov87_0211cafc
FUN_ov87_0211cafc: ; 0x0211CAFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	ldr r5, _0211CD8C ; =0x020A0640
	cmp r0, #5
	cmpne r0, #6
	beq _0211CB20
	cmp r0, #7
	bne _0211CB58
_0211CB20:
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	beq _0211CB58
	ldr r6, _0211CD90 ; =0x0209AEC0
	mov r0, r6
	bl FUN_020467c0
	cmp r0, #0
	ldrneb r0, [r6, #0x64]
	cmpne r0, #0
	beq _0211CB58
	mov r0, r6
	bl FUN_020467ac
	mov r0, r6
	bl FUN_02046e28
_0211CB58:
	ldr r0, [r4, #8]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0211CCF0
_0211CB68: ; jump table
	b _0211CCF0 ; case 0
	b _0211CB8C ; case 1
	b _0211CCF0 ; case 2
	b _0211CC20 ; case 3
	b _0211CCA4 ; case 4
	b _0211CCC8 ; case 5
	b _0211CCC0 ; case 6
	b _0211CCC0 ; case 7
	b _0211CCDC ; case 8
_0211CB8C:
	add r0, r4, #0x94
	add r0, r0, #0x400
	mov r1, #0xd
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211CCF0
	ldrb r0, [r5, #0x8b]
	cmp r0, #0
	bne _0211CBC0
	mov r0, r4
	bl FUN_ov87_0211a9e4
	mov r0, r4
	bl FUN_ov87_0211aa04
_0211CBC0:
	mov r0, r4
	bl FUN_ov87_0211a37c
	ldrb r0, [r5, #0x8b]
	cmp r0, #0
	bne _0211CBE4
	mov r0, r4
	bl FUN_ov87_0211aa6c
	mov r0, r4
	bl FUN_ov87_0211ab18
_0211CBE4:
	ldrb r0, [r5, #0x8b]
	cmp r0, #0
	bne _0211CBFC
	mov r0, r4
	mov r1, #2
_0211CBF8:
	b _0211CC9C
_0211CBFC:
	ldr r0, _0211CD90 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	mov r0, r4
	beq _0211CC18
	mov r1, #6
	b _0211CBF8
_0211CC18:
	mov r1, #7
	b _0211CBF8
_0211CC20:
	mov r0, r4
	bl FUN_ov87_0211ac88
	cmp r0, #0
	beq _0211CCF0
	ldrb r0, [r5, #0x8b]
	cmp r0, #0
	bne _0211CC94
	mov r0, r4
	bl FUN_ov87_0211ad18
	mov r0, r4
	bl FUN_ov87_0211bdf8
	mov r0, r4
	bl FUN_ov87_0211be90
	mov r0, r4
	bl FUN_ov87_0211b910
	mov r0, r4
	bl FUN_ov87_0211b5d0
	mov r0, r4
	bl FUN_ov87_0211b88c
	mov r0, r4
	bl FUN_ov87_0211b990
	mov r0, r4
	bl FUN_ov87_0211c104
	mov r0, r4
	bl FUN_ov87_0211bae8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211CC94:
	mov r0, r4
	mov r1, #5
_0211CC9C:
	bl FUN_ov87_0211a2c8
	b _0211CCF0
_0211CCA4:
	mov r0, r4
	bl FUN_ov87_0211ac88
	cmp r0, #0
	beq _0211CCF0
	mov r0, r4
	bl FUN_ov87_0211bae8
	b _0211CC94
_0211CCC0:
	mov r0, r4
	bl FUN_ov87_0211b88c
_0211CCC8:
	ldr r0, [r4, #4]
	add r1, r4, #0x64
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
_0211CCDC:
	ldrb r0, [r5, #0x8b]
	cmp r0, #0
	bne _0211CCF0
	mov r0, r4
	bl FUN_ov87_0211c83c
_0211CCF0:
	ldr r0, _0211CD94 ; =0x02099ED4
	ldr r5, _0211CD98 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl  FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211CD28
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211CD34
_0211CD28:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211CD34:
	bl FUN_0201fdac
	ldr r2, _0211CD9C ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0211CD5C
	mov r0, r4
	bl FUN_ov87_0211c344
_0211CD5C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0211CD70
	mov r0, r4
	bl FUN_ov87_0211c7bc
_0211CD70:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_0211CD8C: .word 0x020A0640
_0211CD90: .word 0x0209AEC0
_0211CD94: .word 0x02099ED4
_0211CD98: .word 0x0209A110
_0211CD9C: .word 0x02099F58
	arm_func_end FUN_ov87_0211cafc

	arm_func_start FUN_ov87_0211cda0
FUN_ov87_0211cda0: ; 0x0211CDA0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211CDB8: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211CDD8 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	b _0211CDF0 ; case 5
	b _0211CDF4 ; case 6
	b _0211CDF4 ; case 7
_0211CDD8:
	bl FUN_ov87_0211b328
	bl  FUN_ov16_020f10ac
	mov r0, r4
	mov r1, #3
	bl FUN_ov87_0211a2c8
	ldmfd sp!, {r4, pc}
_0211CDF0:
	bl  FUN_ov16_020f10ac
_0211CDF4:
	ldr r0, _0211CE0C ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	mov r0, r4
	bl FUN_ov87_0211b844
	ldmfd sp!, {r4, pc}
_0211CE0C: .word 0x0209F5C0
	arm_func_end FUN_ov87_0211cda0

	arm_func_start FUN_ov87_0211ce10
FUN_ov87_0211ce10: ; 0x0211CE10
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211CEA0 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211CEA4 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r4, _0211CEA8 ; =0x0209BA20
	ldrh r1, [r5, #0x12]
	mov r0, r4
	bl FUN_020728a8
	mov r0, r5
	bl FUN_ov87_0211c8c0
	add r0, r5, #0x94
	add r0, r0, #0x400
	mov r1, #0xd
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov87_0211adf4
	mov r0, r4
	bl  FUN_ov16_020eedb8
	ldr r0, _0211CEAC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	add r0, r5, #0x480
	mov r1, #1
	bl  FUN_ov16_020f2fe4
	ldr r0, _0211CEB0 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f5af0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211CEA0: .word 0x02099EB4
_0211CEA4: .word 0x02099ED4
_0211CEA8: .word 0x0209BA20
_0211CEAC: .word 0x02099F38
_0211CEB0: .word 0x0209F5C0
	arm_func_end FUN_ov87_0211ce10

	arm_func_start FUN_ov87_0211ceb4
FUN_ov87_0211ceb4: ; 0x0211CEB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov87_0211ceb4

	arm_func_start FUN_ov87_0211cec8
FUN_ov87_0211cec8: ; 0x0211CEC8
	bx lr
	arm_func_end FUN_ov87_0211cec8
_0211CECC:
	.byte 0xD8, 0xCF, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xE4, 0xCF, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x40, 0xD0, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0xD0, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0xD0, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x20, 0xD0, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x30, 0xD0, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x60, 0xD0, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xD0, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x50, 0xD0, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x70, 0xD0, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0xF0, 0xCF, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov87_0211cf4c
FUN_ov87_0211cf4c: ; 0x0211CF4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211CF94 ; =0x0211CFC0
	str r0, [r4, #0x14]
	ldr r0, _0211CF98 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211CF9C ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CF94: .word 0x0211CFC0
_0211CF98: .word 0x00009CCD
_0211CF9C: .word 0x0000EA3C
	arm_func_end FUN_ov87_0211cf4c
	; 0x0211CFA0


	.rodata
	.incbin "/incbin/overlay87_rodata.bin"

	.bss
	.space 0x0
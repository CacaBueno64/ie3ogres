
	.include "/macros/function.inc"
	.include "/include/overlay35.inc"

	.text
	arm_func_start FUN_ov35_02119f00
FUN_ov35_02119f00: ; 0x02119F00
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
	arm_func_end FUN_ov35_02119f00

	arm_func_start FUN_ov35_02119f38
FUN_ov35_02119f38: ; 0x02119F38
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #6
	mov r6, r0
	mov r5, #5
	ldr r3, _02119F94 ; =0x0209A454
	ldr r2, _02119F98 ; =0x0211BF2C
	mov r1, r4
	str r5, [r6, #8]
	mov r5, #1
	strb r5, [r3, #0x81]
	bl FUN_ov35_02119ff4
	mov r0, r4
	bl FUN_ov16_020f153c
	ldr r4, [r6, #4]
	mov r1, #0
	mov r0, r4
	mov r2, #0xe
	bl FUN_02041eac
	mov r0, r4
	mov r1, r5
	mov r2, #0xf
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_02119F94: .word unk_0209A454
_02119F98: .word ov35_0211BF2C
	arm_func_end FUN_ov35_02119f38

	arm_func_start FUN_ov35_02119f9c
FUN_ov35_02119f9c: ; 0x02119F9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _02119FF0 ; =0x0209A454
	mov r1, #4
	str r1, [r0, #0x24]
	ldrb r2, [r4, #0xf9]
	ldr r0, [r4, #4]
	mov r1, #0
	str r2, [r0, #0x94]
	ldrb r3, [r4, #0xfa]
	ldr r0, [r4, #4]
	mov r2, #0x12
	str r3, [r0, #0x98]
	ldr r0, [r4, #4]
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
_02119FF0: .word unk_0209A454
	arm_func_end FUN_ov35_02119f9c

	arm_func_start FUN_ov35_02119ff4
FUN_ov35_02119ff4: ; 0x02119FF4
	stmfd sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x38]
	mov r12, #0xe
	mov r3, #1
	mov r1, r2
	str r12, [r4, #0x34]
	str r2, [r4, #0x40]
	strb r3, [r4, #0x44]
	bl FUN_ov35_02119f00
	strb r0, [r4, #0x45]
	ldr r0, _0211A030 ; =0x0209AEC0
	bl FUN_020466c0
	str r0, [r4, #0x3c]
	ldmfd sp!, {r4, pc}
_0211A030: .word unk_0209AEC0
	arm_func_end FUN_ov35_02119ff4

	arm_func_start FUN_ov35_0211a034
FUN_ov35_0211a034: ; 0x0211A034
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r5, _0211A068 ; =0x0209F5C0
	mov r4, r6
_0211A044:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f6084
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x12
	blo _0211A044
	ldmfd sp!, {r4, r5, r6, pc}
_0211A068: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211a034

	arm_func_start FUN_ov35_0211a06c
FUN_ov35_0211a06c: ; 0x0211A06C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x2c]
	mov r4, r1
	cmp r0, r4
	beq _0211A090
	ldr r0, _0211A098 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
_0211A090:
	str r4, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A098: .word gL5Sound
	arm_func_end FUN_ov35_0211a06c

	arm_func_start FUN_ov35_0211a09c
FUN_ov35_0211a09c: ; 0x0211A09C
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0211A0E0
_0211A0A8: ; jump table
	b _0211A0E0 ; case 0
	b _0211A0E0 ; case 1
	b _0211A0E0 ; case 2
	b _0211A0E0 ; case 3
	b _0211A0D0 ; case 4
	b _0211A0D0 ; case 5
	b _0211A0D8 ; case 6
	b _0211A0D8 ; case 7
	b _0211A0E0 ; case 8
	b _0211A0D0 ; case 9
_0211A0D0:
	mov r0, #0
	bx lr
_0211A0D8:
	mov r0, #1
	bx lr
_0211A0E0:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov35_0211a09c

	arm_func_start FUN_ov35_0211a0e8
FUN_ov35_0211a0e8: ; 0x0211A0E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r7, r1
	cmp r0, #4
	ldreqb r0, [r5, #0x11]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211A3B0 ; =0x0209F5C0
	mov r4, #0
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	strh r7, [r5, #0xf4]
	tst r7, #1
	beq _0211A248
	ldr r0, [r5, #0xc]
	sub r6, r4, #1
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211A1A4
_0211A144: ; jump table
	b _0211A160 ; case 0
	b _0211A1A4 ; case 1
	b _0211A188 ; case 2
	b _0211A194 ; case 3
	b _0211A194 ; case 4
	b _0211A160 ; case 5
	b _0211A160 ; case 6
_0211A160:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _0211A17C
	cmp r0, #1
	moveq r4, #7
	moveq r6, #2
	b _0211A1A4
_0211A17C:
	mov r4, #5
	mov r6, #1
	b _0211A1A4
_0211A188:
	mov r6, #4
	mov r4, #0xf
	b _0211A1A4
_0211A194:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	movge r6, #4
	movge r4, #0x11
_0211A1A4:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0x11
	addls pc, pc, r4, lsl #2
	b _0211A230
_0211A1B8: ; jump table
	b _0211A230 ; case 0
	b _0211A230 ; case 1
	b _0211A230 ; case 2
	b _0211A230 ; case 3
	b _0211A200 ; case 4
	b _0211A20C ; case 5
	b _0211A200 ; case 6
	b _0211A218 ; case 7
	b _0211A230 ; case 8
	b _0211A218 ; case 9
	b _0211A230 ; case 10
	b _0211A230 ; case 11
	b _0211A230 ; case 12
	b _0211A230 ; case 13
	b _0211A230 ; case 14
	b _0211A20C ; case 15
	b _0211A230 ; case 16
	b _0211A224 ; case 17
_0211A200:
	ldr r0, _0211A3B4 ; =gL5Sound
	mov r1, #8
	b _0211A22C
_0211A20C:
	ldr r0, _0211A3B4 ; =gL5Sound
	mov r1, #6
	b _0211A22C
_0211A218:
	ldr r0, _0211A3B4 ; =gL5Sound
	mov r1, #4
	b _0211A22C
_0211A224:
	ldr r0, _0211A3B4 ; =gL5Sound
	mov r1, #1
_0211A22C:
	bl FUN_0202cf6c
_0211A230:
	add r0, r5, r6
	ldrb r1, [r0, #0x50]
	ldr r0, _0211A3B0 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	str r4, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A248:
	tst r7, #2
	beq _0211A2D0
	ldr r0, [r5, #0xc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A260: ; jump table
	b _0211A2AC ; case 0
	b _0211A27C ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 4
	b _0211A2AC ; case 5
	b _0211A2AC ; case 6
_0211A27C:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A3B4 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x53]
	mov r0, r6
	bl FUN_ov16_020f6530
	mov r0, #9
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2AC:
	ldr r0, _0211A3B4 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x52]
	mov r0, r6
	bl FUN_ov16_020f6530
	mov r0, #7
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2D0:
	tst r7, #0x20
	beq _0211A340
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0211A2F0
	sub r0, r0, #5
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2F0:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bge _0211A308
	mov r0, r5
	mov r1, #0
	b _0211A31C
_0211A308:
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #31
	mov r0, r5
	add r1, r2, r1, ror #31
_0211A31C:
	bl FUN_ov35_0211a06c
	ldr r1, [r5, #0x2c]
	ldr r0, _0211A3B8 ; =0x0209A070
	add r1, r1, #1
	add r1, r5, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A340:
	tst r7, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0211A360
	sub r0, r0, #5
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
_0211A360:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bge _0211A378
	mov r0, r5
	mov r1, #1
	b _0211A38C
_0211A378:
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #31
	mov r0, r5
	add r1, r2, r1, ror #31
_0211A38C:
	bl FUN_ov35_0211a06c
	ldr r1, [r5, #0x2c]
	ldr r0, _0211A3B8 ; =0x0209A070
	add r1, r1, #1
	add r1, r5, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3B0: .word unk_0209F5C0
_0211A3B4: .word gL5Sound
_0211A3B8: .word unk_0209A070
	arm_func_end FUN_ov35_0211a0e8

	arm_func_start FUN_ov35_0211a3bc
FUN_ov35_0211a3bc: ; 0x0211A3BC
	ldr r0, _0211A3D4 ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211A3D8 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211A3D4: .word unk_0209F5C0
_0211A3D8: .word FUN_ov16_020f6b3c
	arm_func_end FUN_ov35_0211a3bc

	arm_func_start FUN_ov35_0211a3dc
FUN_ov35_0211a3dc: ; 0x0211A3DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	bl FUN_ov35_0211a09c
	movs r1, r0
	bmi _0211A408
	ldr r0, [r4, #0x30]
	cmp r1, r0
	bge _0211A408
	mov r0, r4
	bl FUN_ov35_0211a06c
_0211A408:
	ldr r1, [r4, #0x1c]
	ldr r0, _0211A418 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211A418: .word unk_0209A070
	arm_func_end FUN_ov35_0211a3dc

	arm_func_start FUN_ov35_0211a41c
FUN_ov35_0211a41c: ; 0x0211A41C
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, r1
	bne _0211A43C
	ldr r0, _0211A460 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211A43C:
	ldr r4, _0211A460 ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211A460: .word unk_0209A070
	arm_func_end FUN_ov35_0211a41c

	arm_func_start FUN_ov35_0211a464
FUN_ov35_0211a464: ; 0x0211A464
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x20]
	cmp r0, #0x11
	addls pc, pc, r0, lsl #2
	b _0211A4F4
_0211A47C: ; jump table
	b _0211A4F4 ; case 0
	b _0211A4F4 ; case 1
	b _0211A4F4 ; case 2
	b _0211A4F4 ; case 3
	b _0211A4C4 ; case 4
	b _0211A4D0 ; case 5
	b _0211A4C4 ; case 6
	b _0211A4DC ; case 7
	b _0211A4F4 ; case 8
	b _0211A4DC ; case 9
	b _0211A4F4 ; case 10
	b _0211A4F4 ; case 11
	b _0211A4F4 ; case 12
	b _0211A4F4 ; case 13
	b _0211A4F4 ; case 14
	b _0211A4D0 ; case 15
	b _0211A4F4 ; case 16
	b _0211A4E8 ; case 17
_0211A4C4:
	ldr r0, _0211A534 ; =gL5Sound
	mov r1, #8
	b _0211A4F0
_0211A4D0:
	ldr r0, _0211A534 ; =gL5Sound
	mov r1, #6
	b _0211A4F0
_0211A4DC:
	ldr r0, _0211A534 ; =gL5Sound
	mov r1, #4
	b _0211A4F0
_0211A4E8:
	ldr r0, _0211A534 ; =gL5Sound
	mov r1, #1
_0211A4F0:
	bl FUN_0202cf6c
_0211A4F4:
	ldr r5, _0211A538 ; =0x0209A070
	ldr r1, [r6, #0x1c]
	mov r0, r5
	bl FUN_ov16_020f6d3c
	movs r4, r0
	bmi _0211A528
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldr r0, _0211A53C ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f6530
_0211A528:
	ldr r0, [r6, #0x1c]
	str r0, [r6, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A534: .word gL5Sound
_0211A538: .word unk_0209A070
_0211A53C: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211a464

	arm_func_start FUN_ov35_0211a540
FUN_ov35_0211a540: ; 0x0211A540
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A62C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211A5F0
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0211A5BC
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov35_0211a3bc
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211A5BC
	mov r0, r4
	bl FUN_ov35_0211a3dc
_0211A5BC:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x14]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x18]
	bl FUN_ov35_0211a3bc
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov35_0211a41c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A5F0:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ldrne r1, [r4, #0x1c]
	cmpne r1, #0
	beq _0211A618
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _0211A618
	mov r0, r4
	bl FUN_ov35_0211a464
_0211A618:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A62C: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211a540

	arm_func_start FUN_ov35_0211a630
FUN_ov35_0211a630: ; 0x0211A630
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x6c
	mov r1, #0
	mov r2, #0x84
	bl MI_CpuFill8
	ldr r0, _0211A660 ; =0x0211BF30
	add r1, r4, #0x6c
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211A660: .word ov35_0211BF30
	arm_func_end FUN_ov35_0211a630

	arm_func_start FUN_ov35_0211a664
FUN_ov35_0211a664: ; 0x0211A664
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x6c]
	cmp r6, #0
	ldrne r7, _0211A6AC ; =0x0211BD34
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x6c
	mov r4, #0xc
_0211A688:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211A688
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A6AC: .word ov35_0211BD34
	arm_func_end FUN_ov35_0211a664

	arm_func_start FUN_ov35_0211a6b0
FUN_ov35_0211a6b0: ; 0x0211A6B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x6c
	mov r4, #0xc
_0211A6C0:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0xb
	blt _0211A6C0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov35_0211a6b0

	arm_func_start FUN_ov35_0211a6d8
FUN_ov35_0211a6d8: ; 0x0211A6D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x6c]
	ldr r5, [sp, #0x1c]
	mov r7, r2
	cmp r4, #0
	mov r6, r3
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r2, r6
	add r1, r7, #1
	bl FUN_ov16_020f18e8
	mov r7, r0
	cmp r5, #0
	beq _0211A730
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl FUN_ov16_020f19d4
	str r0, [r5]
_0211A730:
	cmp r6, #0
	blt _0211A748
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl FUN_ov16_020f1138
_0211A748:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov35_0211a6d8

	arm_func_start FUN_ov35_0211a750
FUN_ov35_0211a750: ; 0x0211A750
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	mov r7, #3
	mov r2, r6
	mov r4, #5
	str r7, [sp]
	add r6, sp, #8
	mov r0, r5
	str r6, [sp, #4]
	mov r1, #2
	mov r3, r4
	bl FUN_ov35_0211a6d8
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r5
	mov r1, r7
	mov r3, r4
	bl FUN_ov35_0211a6d8
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r3, r4
	mov r0, r5
	mov r1, #4
	bl FUN_ov35_0211a6d8
	mov r3, r0
	ldr r0, [r5, #0x58]
	cmp r0, #0
	ldrne r0, [r5, #0x5c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211A84C
	ldrh r2, [r5, #0x64]
	ldrh r1, [r5, #0x66]
	ldr r4, [sp, #8]
	ldr r0, [r5, #0x58]
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r3, #1
	mov r3, #0
	str r4, [r5, #0x60]
	bl FUN_ov16_020f1868
	ldrh r1, [r5, #0x64]
	ldrh r0, [r5, #0x66]
	ldr r2, [sp, #8]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #8]
_0211A84C:
	bl G2_GetBG1CharPtr
	mov r9, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r9
	bl DC_FlushRange
	str r9, [sp, #8]
	mov r8, #1
	str r8, [sp]
	add r7, sp, #8
	mov r0, r5
	str r7, [sp, #4]
	mov r1, #5
	mov r2, r4
	mov r3, #3
	bl FUN_ov35_0211a6d8
	mov r6, #6
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, r6
	mov r3, r6
	bl FUN_ov35_0211a6d8
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #7
	mov r3, r6
	bl FUN_ov35_0211a6d8
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #8
	mov r3, r6
	bl FUN_ov35_0211a6d8
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #9
	mov r3, r6
	bl FUN_ov35_0211a6d8
	str r8, [sp]
	mov r2, r0
	mov r3, r6
	mov r0, r5
	mov r1, #0xa
	str r7, [sp, #4]
	bl FUN_ov35_0211a6d8
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r9
	bl DC_FlushRange
	str r9, [sp, #8]
	mov r0, #2
	stmia sp, {r0, r7}
	mov r0, r5
	mov r1, r8
	mov r3, r8
	mov r2, r4
	bl FUN_ov35_0211a6d8
	ldr r3, [r5, #0x78]
	cmp r3, #0
	beq _0211A98C
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r4
	add r0, r3, r0
	bl GX_LoadBG2Scr
_0211A98C:
	bl FUN_ov16_020f10ac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov35_0211a750

	arm_func_start FUN_ov35_0211a998
FUN_ov35_0211a998: ; 0x0211A998
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x58]
	cmp r0, #0
	ldrne r0, [lr, #0x5c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x68]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x64]
	ldrh r1, [lr, #0x66]
	mov r12, #0
	ldr r0, [lr, #0x5c]
	mul r3, r2, r1
	ldr r1, [lr, #0x60]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x68]
	bl GX_LoadBG3Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov35_0211a998

	arm_func_start FUN_ov35_0211a9f0
FUN_ov35_0211a9f0: ; 0x0211A9F0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x58]
	mov r1, #0
	cmp r12, #0
	ldrne r0, [r0, #0x5c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r1, #0
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0x16
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211AA70 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211AA70: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211a9f0

	arm_func_start FUN_ov35_0211aa74
FUN_ov35_0211aa74: ; 0x0211AA74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r0, r4, #0x58
	mov r8, r1
	mov r7, r2
	bl FUN_ov16_020f2f20
	ldr r5, _0211AB10 ; =0x02099F50
	mov r6, #1
	ldr r0, [r5]
	mov r1, r6
	mov r2, #4
	bl FUN_02043310
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r6}
	mov r0, #0
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r2, [r4, #0x64]
	ldrh r3, [r4, #0x66]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x5c]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldr r0, [r5]
	bl FUN_0204331c
	ldrh r2, [r4, #0x64]
	ldrh r1, [r4, #0x66]
	ldr r0, [r4, #0x5c]
	strb r6, [r4, #0x68]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AB10: .word unk_02099F50
	arm_func_end FUN_ov35_0211aa74

	arm_func_start FUN_ov35_0211ab14
FUN_ov35_0211ab14: ; 0x0211AB14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r3, #6
	cmp r1, #0
	mov r10, r0
	movne r3, #0xa
	mov r2, #0xc
	mla r2, r3, r2, r10
	mov r6, #4
	mov r7, #8
	mov r0, #0x18
	mov r1, #9
	ldr r5, [r2, #0x6c]
	movne r1, r3
	movne r6, #2
	movne r7, #7
	movne r0, #0x1c
	cmp r5, #0
	beq _0211ABCC
	mov r2, #3
	mov r4, #0
	str r2, [sp]
	mov r2, r6, lsl #0x18
	mov r3, r7, lsl #0x18
	str r4, [sp, #4]
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
	ldr r0, _0211AD80 ; =0x0209F5C0
	add r6, r5, r1
	mov r1, r4
	mov r3, r4
	mov r2, #1
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, r5
	mov r1, r4
	mov r2, #6
	bl FUN_ov16_020f1138
_0211ABCC:
	ldr r5, [r10, #0x84]
	cmp r5, #0
	beq _0211AD38
	ldr r4, [r5, #0xc]
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r11, #7
	mov r1, #0
	str r11, [sp, #8]
	mov r8, #0xd
	str r8, [sp, #0xc]
	mov r7, #6
	str r7, [sp, #0x10]
	mov r6, #3
	str r6, [sp, #0x14]
	mov r9, r1
	str r9, [sp, #0x18]
	add r9, r5, r4
	ldr r0, _0211AD80 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r9, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add r0, r9, #0x24
	mov r5, #0x30
	str r0, [sp, #0x34]
	mov r0, #0
	mov r4, #0x18
	strh r11, [sp, #0x20]
	strh r8, [sp, #0x22]
	strh r7, [sp, #0x24]
	strh r6, [sp, #0x26]
	strh r0, [sp, #0x28]
	strh r0, [sp, #0x2a]
	strh r5, [sp, #0x2c]
	strh r4, [sp, #0x2e]
	strb r0, [sp, #0x30]
	str r0, [sp]
	add r1, sp, #0x20
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211AD80 ; =0x0209F5C0
	str r1, [sp, #0x10]
	mov r2, r1
	mov r3, #5
	bl FUN_ov16_020f5c34
	mov r1, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r9, #0x48
	str r0, [sp, #0x1c]
	ldr r0, _0211AD80 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020f5da0
	mov r1, #0
	mov r0, #0x13
	strh r0, [sp, #0x20]
	add r0, r9, #0x6c
	str r0, [sp, #0x34]
	strh r8, [sp, #0x22]
	strh r7, [sp, #0x24]
	strh r6, [sp, #0x26]
	strh r5, [sp, #0x2c]
	strh r4, [sp, #0x2e]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r1, [sp]
	add r1, sp, #0x20
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211AD80 ; =0x0209F5C0
	mov r3, r11
	mov r2, r1
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211AD38:
	ldr r4, _0211AD84 ; =0x0209A070
	mov r5, #0
	mov r0, r4
	mov r1, r5
	str r5, [sp]
	mov r2, #5
	mov r3, #4
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x51]
	mov r0, r4
	mov r1, r5
	mov r2, #7
	mov r3, #6
	str r5, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x52]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AD80: .word unk_0209F5C0
_0211AD84: .word unk_0209A070
	arm_func_end FUN_ov35_0211ab14

	arm_func_start FUN_ov35_0211ad88
FUN_ov35_0211ad88: ; 0x0211AD88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0xc0]
	cmp r5, #0
	beq _0211ADF0
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _0211AEF4 ; =0x0209F5C0
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211ADF0:
	ldr r2, [r4, #0x9c]
	cmp r2, #0
	beq _0211AE6C
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r8, r2, r0
	mov r7, #0xc
	mov r6, #0xe
	mov r5, #8
	mov r3, #3
	mov r2, #0x40
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r7, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r5, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r8, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211AEF4 ; =0x0209F5C0
	mov r2, r1
	mov r3, #9
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211AE6C:
	ldr r1, [r4, #0xa8]
	cmp r1, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	ldr r4, _0211AEF4 ; =0x0209F5C0
	mov r9, #0
	add r10, r1, r0
	mov r8, #0xa
	mov r7, #0xb
	mov r6, #0xc
	mov r5, #3
	mov r11, #1
_0211AEA0:
	add r0, r9, #0xa
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r1, #0
	mov r0, r4
	mov r2, r11
	mov r3, r1
	str r10, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add r0, r9, #1
	and r9, r0, #0xff
	cmp r9, #4
	add r10, r10, #0x48
	blo _0211AEA0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AEF4: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211ad88

	arm_func_start FUN_ov35_0211aef8
FUN_ov35_0211aef8: ; 0x0211AEF8
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r12, [r4, #0xcc]
	cmp r12, #0
	beq _0211AF60
	mov r0, #0xe
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #8
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0211AFE4 ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211AF60:
	ldr r2, [r4, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add lr, r2, r0
	mov r12, #0xd
	mov r4, #6
	mov r3, #3
	mov r2, #0x30
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r12, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str lr, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211AFE4 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xf
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r4, pc}
_0211AFE4: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211aef8

	arm_func_start FUN_ov35_0211afe8
FUN_ov35_0211afe8: ; 0x0211AFE8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0xd8]
	cmp r5, #0
	beq _0211B050
	mov r0, #0x10
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _0211B0D8 ; =0x0209F5C0
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211B050:
	ldr r2, [r4, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov lr, #0xd
	mov r12, #0xe
	mov r4, #6
	mov r3, #3
	mov r2, #0x30
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh lr, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r5, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211B0D8 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0x11
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, pc}
_0211B0D8: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211afe8

	arm_func_start FUN_ov35_0211b0dc
FUN_ov35_0211b0dc: ; 0x0211B0DC
	ldr r0, _0211B0E8 ; =0x0209F5C0
	ldr r12, _0211B0EC ; = FUN_ov16_020f6274
	bx r12
_0211B0E8: .word unk_0209F5C0
_0211B0EC: .word FUN_ov16_020f6274
	arm_func_end FUN_ov35_0211b0dc

	arm_func_start FUN_ov35_0211b0f0
FUN_ov35_0211b0f0: ; 0x0211B0F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	sub r5, r6, #1
	mov r4, #5
	mov r1, r6
	mov r2, r4
	add r0, r7, #0x50
	str r6, [r7, #8]
	str r6, [r7, #0x48]
	strb r6, [r7, #0x10]
	strb r6, [r7, #0x11]
	str r5, [r7, #0x14]
	str r5, [r7, #0x18]
	str r6, [r7, #0x1c]
	str r6, [r7, #0x20]
	str r6, [r7, #0x24]
	str r6, [r7, #0x28]
	str r6, [r7, #0xc]
	bl MI_CpuFill8
	ldr r0, _0211B1B4 ; =0x0209A070
	mov r1, r4
	bl FUN_ov16_020f6c20
	ldr r0, _0211B1B8 ; =0x020A11DC
	add r1, r7, #0x100
	mov r2, #0x9c
	str r6, [r7, #0x34]
	str r6, [r7, #0x38]
	str r5, [r7, #0x3c]
	str r6, [r7, #0x40]
	strb r6, [r7, #0x44]
	strb r6, [r7, #0x45]
	strb r6, [r7, #0xf6]
	strb r6, [r7, #0xf7]
	strb r6, [r7, #0xf8]
	strb r6, [r7, #0xf9]
	strb r6, [r7, #0xfa]
	str r6, [r7, #0xfc]
	bl MI_CpuCopy8
	add r0, r7, #0x58
	mov r1, #1
	bl FUN_ov16_020f2f7c
	add r0, r7, #0x58
	mov r1, #0x16
	mov r2, #0xc
	bl FUN_ov16_020f2fa8
	mov r0, r7
	bl FUN_ov35_0211a630
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B1B4: .word unk_0209A070
_0211B1B8: .word unk_020A11DC
	arm_func_end FUN_ov35_0211b0f0

	arm_func_start FUN_ov35_0211b1bc
FUN_ov35_0211b1bc: ; 0x0211B1BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211B1D4: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211B1EC ; case 1
	b _0211B214 ; case 2
	b _0211B234 ; case 3
	b _0211B244 ; case 4
	b _0211B244 ; case 5
_0211B1EC:
	add r0, r4, #0x6c
	mov r1, #0xb
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov35_0211a664
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B214:
	bl FUN_ov35_0211a750
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B234:
	mov r1, #0
	bl FUN_ov35_0211b53c
	mov r0, #4
	str r0, [r4, #8]
_0211B244:
	mov r0, r4
	bl FUN_ov35_0211b0dc
	ldr r0, [r4, #4]
	add r1, r4, #0x34
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov35_0211b6dc
	ldr r6, _0211B2B4 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov35_0211b820
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B2B4: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211b1bc

	arm_func_start FUN_ov35_0211b2b8
FUN_ov35_0211b2b8: ; 0x0211B2B8
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #4
	cmpne r1, #5
	cmpne r1, #6
	ldmnefd sp!, {r3, pc}
	bl FUN_ov35_0211a998
	ldr r0, _0211B2E4 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, pc}
_0211B2E4: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211b2b8

	arm_func_start FUN_ov35_0211b2e8
FUN_ov35_0211b2e8: ; 0x0211B2E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211B330 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	ldr r0, _0211B334 ; =0x0209A070
	bl FUN_ov16_020f6c58
	add r0, r4, #0x6c
	mov r1, #0xb
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov35_0211a6b0
	ldr r0, _0211B338 ; =0x0209AEC0
	bl FUN_020465fc
	add r0, r4, #0x58
	mov r1, #1
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r4, pc}
_0211B330: .word unk_0209F5C0
_0211B334: .word unk_0209A070
_0211B338: .word unk_0209AEC0
	arm_func_end FUN_ov35_0211b2e8

	arm_func_start FUN_ov35_0211b33c
FUN_ov35_0211b33c: ; 0x0211B33C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	ldr r0, _0211B508 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5ff4
	ldr r0, _0211B50C ; =0x0209A070
	bl FUN_ov16_020f6c4c
	mov r0, r5
	bl FUN_ov35_0211a9f0
	ldr r0, [r5, #0xc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211B378: ; jump table
	b _0211B394 ; case 0
	b _0211B3CC ; case 1
	b _0211B400 ; case 2
	b _0211B450 ; case 3
	b _0211B484 ; case 4
	b _0211B4B8 ; case 5
	b _0211B4E0 ; case 6
_0211B394:
	mov r0, r5
	mov r1, r4
	bl FUN_ov35_0211ab14
	ldr r3, _0211B510 ; =0x0211BF4C
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov35_0211aa74
	ldr r2, _0211B514 ; =0x0211BF70
	mov r0, r5
	mov r1, #6
	bl FUN_ov35_02119ff4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B3CC:
	mov r0, r5
	bl FUN_ov35_0211ad88
	ldr r3, _0211B518 ; =0x0211BFA8
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov35_0211aa74
	ldr r2, _0211B51C ; =0x0211BFCC
	mov r0, r5
	mov r1, #6
	bl FUN_ov35_02119ff4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B400:
	mov r0, r5
	bl FUN_ov35_0211aef8
	ldr r3, _0211B520 ; =0x0211C028
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov35_0211aa74
	ldrb r0, [r5, #0xf6]
	mov r1, #6
	cmp r0, #0
	beq _0211B440
	ldr r2, _0211B524 ; =0x0211C054
	mov r0, r5
	bl FUN_ov35_02119ff4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B440:
	ldr r2, _0211B528 ; =0x0211C078
	mov r0, r5
	bl FUN_ov35_02119ff4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B450:
	mov r0, r5
	bl FUN_ov35_0211afe8
	ldr r3, _0211B52C ; =0x0211C0A4
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov35_0211aa74
	ldr r2, [r5, #0x4c]
	mov r0, r5
	mov r1, #6
	bl FUN_ov35_02119ff4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B484:
	mov r0, r5
	bl FUN_ov35_0211afe8
	ldr r3, _0211B530 ; =0x0211C0C8
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov35_0211aa74
	ldr r2, [r5, #0x4c]
	mov r0, r5
	mov r1, #6
	bl FUN_ov35_02119ff4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4B8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov35_0211ab14
	ldr r3, _0211B534 ; =0x0211C0E4
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov35_0211aa74
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4E0:
	mov r0, r5
	mov r1, #1
	bl FUN_ov35_0211ab14
	ldr r3, _0211B538 ; =0x0211C10C
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov35_0211aa74
	ldmfd sp!, {r3, r4, r5, pc}
_0211B508: .word unk_0209F5C0
_0211B50C: .word unk_0209A070
_0211B510: .word ov35_0211BF4C
_0211B514: .word ov35_0211BF70
_0211B518: .word ov35_0211BFA8
_0211B51C: .word ov35_0211BFCC
_0211B520: .word ov35_0211C028
_0211B524: .word ov35_0211C054
_0211B528: .word ov35_0211C078
_0211B52C: .word ov35_0211C0A4
_0211B530: .word ov35_0211C0C8
_0211B534: .word ov35_0211C0E4
_0211B538: .word ov35_0211C10C
	arm_func_end FUN_ov35_0211b33c

	arm_func_start FUN_ov35_0211b53c
FUN_ov35_0211b53c: ; 0x0211B53C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	str r1, [r6, #0xc]
	ldr r7, _0211B6D4 ; =0x0209F5C0
	mov r8, #2
	bl FUN_ov35_0211b33c
	mov r4, #0
	mov r0, r6
	mov r1, r4
	bl FUN_ov35_0211a034
	ldr r0, [r6, #0xc]
	mov r5, #1
	str r4, [r6, #0x2c]
	str r5, [r6, #0x30]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211B6BC
_0211B584: ; jump table
	b _0211B5A0 ; case 0
	b _0211B5F4 ; case 1
	b _0211B63C ; case 2
	b _0211B674 ; case 3
	b _0211B6B8 ; case 4
	b _0211B5A0 ; case 5
	b _0211B5A0 ; case 6
_0211B5A0:
	cmp r0, #6
	movne r5, r4
	mov r4, #0
	mov r0, r7
	mov r1, r4
	mov r2, #3
	str r5, [r6, #0x2c]
	str r8, [r6, #0x30]
	bl FUN_ov16_020f60f8
	mov r0, r7
	mov r1, r4
	mov r2, r8
	bl FUN_ov16_020f60f8
	ldr r1, [r6, #0x2c]
	ldr r0, _0211B6D8 ; =0x0209A070
	add r1, r1, #1
	add r1, r6, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	b _0211B6C4
_0211B5F4:
	mov r0, r7
	mov r1, r4
	mov r2, #8
	bl FUN_ov16_020f60f8
	mov r0, r7
	mov r1, r4
	mov r2, r8
	bl FUN_ov16_020f60f8
	ldr r0, _0211B6D8 ; =0x0209A070
	mov r1, r4
	mov r3, r4
	str r5, [sp]
	mov r2, #9
	bl FUN_ov16_020f6c8c
	strb r0, [r6, #0x53]
	str r4, [r6, #0xf0]
	str r4, [r6, #0xfc]
	b _0211B6C4
_0211B63C:
	mov r0, r7
	mov r1, r4
	mov r2, #0xe
	bl FUN_ov16_020f60f8
	mov r0, r7
	mov r1, r4
	mov r2, r8
	bl FUN_ov16_020f60f8
	ldr r0, _0211B6D8 ; =0x0209A070
	mov r1, r4
	mov r3, r4
	str r8, [sp]
	mov r2, #0xf
	b _0211B6AC
_0211B674:
	mov r0, r7
	mov r1, r4
	mov r2, #0x10
	bl FUN_ov16_020f60f8
	mov r0, r7
	mov r1, r4
	mov r2, r8
	bl FUN_ov16_020f60f8
	mov r2, #3
	str r2, [sp]
	ldr r0, _0211B6D8 ; =0x0209A070
	mov r1, r4
	mov r3, r4
	mov r2, #0x11
_0211B6AC:
	bl FUN_ov16_020f6c8c
	strb r0, [r6, #0x54]
	b _0211B6C4
_0211B6B8:
	b _0211B674
_0211B6BC:
	mov r0, #1
	str r0, [r6, #0x30]
_0211B6C4:
	mov r0, #0
	str r0, [r6, #0x28]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B6D4: .word unk_0209F5C0
_0211B6D8: .word unk_0209A070
	arm_func_end FUN_ov35_0211b53c

	arm_func_start FUN_ov35_0211b6dc
FUN_ov35_0211b6dc: ; 0x0211B6DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0xc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B6F4: ; jump table
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 0
	b _0211B710 ; case 1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 3
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 6
_0211B710:
	ldr r0, [r8, #0xf0]
	cmp r0, #0x258
	ble _0211B738
	ldr r0, _0211B810 ; =0x0209AEC0
	bl FUN_020465fc
	ldr r2, _0211B814 ; =0x0211C140
	mov r0, r8
	mov r1, #3
	str r2, [r8, #0x4c]
	bl FUN_ov35_0211b53c
_0211B738:
	ldr r4, _0211B810 ; =0x0209AEC0
	mov r0, r4
	bl FUN_02046698
	cmp r0, #0
	bne _0211B768
	mov r0, r4
	bl FUN_020465fc
	ldr r2, _0211B818 ; =0x0211C174
	mov r0, r8
	mov r1, #4
	str r2, [r8, #0x4c]
	bl FUN_ov35_0211b53c
_0211B768:
	mov r7, #0
	ldr r6, _0211B81C ; =0x0209F5C0
	mov r4, r7
	mov r5, r7
	b _0211B7C4
_0211B77C:
	ldr r1, [r8, #0xf0]
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	cmp r7, r0
	mov r0, r6
	bne _0211B7B4
	mov r1, r5
	add r2, r7, #0xa
	bl FUN_ov16_020f60f8
	b _0211B7C0
_0211B7B4:
	mov r1, r4
	add r2, r7, #0xa
	bl FUN_ov16_020f6084
_0211B7C0:
	add r7, r7, #1
_0211B7C4:
	cmp r7, #4
	blt _0211B77C
	ldr r1, [r8, #0xf0]
	ldr r0, [r8, #0xfc]
	add r1, r1, #1
	str r1, [r8, #0xf0]
	cmp r0, #0
	bne _0211B7FC
	ldr r0, _0211B810 ; =0x0209AEC0
	bl FUN_02046fac
	cmp r0, #1
	moveq r0, #1
	streq r0, [r8, #0xfc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B7FC:
	ldr r0, _0211B810 ; =0x0209AEC0
	bl FUN_0204700c
	mov r0, r8
	bl FUN_ov35_0211ba44
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B810: .word unk_0209AEC0
_0211B814: .word ov35_0211C140
_0211B818: .word ov35_0211C174
_0211B81C: .word unk_0209F5C0
	arm_func_end FUN_ov35_0211b6dc

	arm_func_start FUN_ov35_0211b820
FUN_ov35_0211b820: ; 0x0211B820
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x28]
	cmp r1, #0x11
	addls pc, pc, r1, lsl #2
	b _0211BA1C
_0211B83C: ; jump table
	b _0211BA1C ; case 0
	b _0211BA1C ; case 1
	b _0211BA1C ; case 2
	b _0211BA1C ; case 3
	b _0211B884 ; case 4
	b _0211B884 ; case 5
	b _0211B928 ; case 6
	b _0211B928 ; case 7
	b _0211BA1C ; case 8
	b _0211B974 ; case 9
	b _0211BA1C ; case 10
	b _0211BA1C ; case 11
	b _0211BA1C ; case 12
	b _0211BA1C ; case 13
	b _0211BA1C ; case 14
	b _0211B9FC ; case 15
	b _0211BA1C ; case 16
	b _0211B9CC ; case 17
_0211B884:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211B8E8
	mov r6, #1
	ldr r5, _0211BA24 ; =0x0209AEC0
	str r6, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	ldr r12, _0211BA28 ; =0x00001423
	ldr r2, _0211BA2C ; =0x0211C1B0
	mov r0, r5
	mov r1, r6
	mov r3, #2
	str r12, [sp, #8]
	bl FUN_02046508
	mov r0, r5
	bl FUN_02046dd0
	ldr r3, [r5, #0x5c]
	ldr r2, _0211BA30 ; =0x020A0640
	mov r0, r4
	mov r1, r6
	strb r3, [r2, #0x1c]
	bl FUN_ov35_0211b53c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B8E8:
	cmp r1, #5
	bne _0211B8FC
	bl FUN_ov35_02119f9c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B8FC:
	cmp r1, #6
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r1, _0211BA34 ; =0x020A11DC
	add r0, r4, #0x100
	mov r2, #0x9c
	bl MI_CpuCopy8
	mov r0, r4
	bl FUN_ov35_02119f38
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B928:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211B940
	bl FUN_ov35_02119f38
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B940:
	cmp r1, #5
	bne _0211B958
	mov r1, #6
	bl FUN_ov35_0211b53c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B958:
	cmp r1, #6
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, #5
	bl FUN_ov35_0211b53c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B974:
	mov r5, #0
	ldr r0, _0211BA38 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f64cc
	sub r1, r5, #1
	ldr r0, _0211BA24 ; =0x0209AEC0
	str r5, [r4, #0x28]
	str r1, [r4, #0x2c]
	bl FUN_020465fc
	ldr r3, _0211BA3C ; =0x0211C1C4
	mov r0, r4
	mov r1, r5
	mov r2, #0xc
	str r3, [r4, #0x48]
	bl FUN_ov35_0211aa74
	ldr r2, _0211BA40 ; =0x0211C1E0
	mov r0, r4
	mov r1, #4
	str r2, [r4, #0x4c]
	bl FUN_ov35_0211b53c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B9CC:
	mov r5, #0
	ldr r0, _0211BA38 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f64cc
	sub r2, r5, #1
	mov r0, r4
	mov r1, r5
	str r5, [r4, #0x28]
	str r2, [r4, #0x2c]
	bl FUN_ov35_0211b53c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B9FC:
	ldrb r1, [r4, #0xf6]
	cmp r1, #0
	beq _0211BA18
	mov r1, #5
	bl FUN_ov35_0211b53c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BA18:
	bl FUN_ov35_02119f38
_0211BA1C:
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BA24: .word unk_0209AEC0
_0211BA28: .word 0x00001423
_0211BA2C: .word ov35_0211C1B0
_0211BA30: .word unk_020A0640
_0211BA34: .word unk_020A11DC
_0211BA38: .word unk_0209F5C0
_0211BA3C: .word ov35_0211C1C4
_0211BA40: .word ov35_0211C1E0
	arm_func_end FUN_ov35_0211b820

	arm_func_start FUN_ov35_0211ba44
FUN_ov35_0211ba44: ; 0x0211BA44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x90
	mov r3, #0
	mov r10, r0
	ldr r1, _0211BD00 ; =0x0209B13C
	mov r2, r3
	b _0211BCF0
_0211BA60:
	ldr r0, [r1, r2, lsl #2]
	cmp r0, #0
	beq _0211BCEC
	ldrh r4, [r0, #0x40]
	add r8, r0, #0x50
	add r7, sp, #0x20
	strh r4, [sp, #0x10]
	ldrb r4, [r0, #0x42]
	mov r6, #0x1c
	strb r4, [sp, #0x12]
	ldrb r4, [r0, #0x43]
	strb r4, [sp, #0x13]
	ldr r4, [r0, #0x44]
	str r4, [sp, #0x14]
	ldrh r4, [r0, #0x48]
	strh r4, [sp, #0x18]
	ldrb r4, [r0, #0x4a]
	strb r4, [sp, #0x1a]
	ldrb r4, [r0, #0x4b]
	strb r4, [sp, #0x1b]
	ldrh r4, [r0, #0x4c]
	strh r4, [sp, #0x1c]
	ldrh r0, [r0, #0x4e]
	strh r0, [sp, #0x1e]
_0211BAC0:
	ldrh r4, [r8]
	ldrh r0, [r8, #2]
	add r8, r8, #4
	subs r6, r6, #1
	strh r0, [r7, #2]
	strh r4, [r7], #4
	ldr r5, _0211BD04 ; =0x020A0640
	bne _0211BAC0
	ldr r4, [sp, #0x14]
	ldr r0, _0211BD08 ; =0x00001423
	mov r8, #1
	cmp r4, r0
	addeq r11, sp, #0x20
	ldreqb r0, [r11, #0x22]
	cmpeq r0, #3
	bne _0211BCEC
	ldrb r0, [r11, #0x23]
	mov r1, #0
	strb r0, [r10, #0xf7]
	ldrb r0, [r11, #0x24]
	strb r0, [r10, #0xf8]
	b _0211BB1C
_0211BB18:
	add r1, r1, #1
_0211BB1C:
	cmp r1, #8
	blt _0211BB18
	mov r0, #0
	b _0211BB30
_0211BB2C:
	add r0, r0, #1
_0211BB30:
	cmp r0, #8
	blt _0211BB2C
	mov r0, #0
	b _0211BB44
_0211BB40:
	add r0, r0, #1
_0211BB44:
	cmp r0, #8
	blt _0211BB40
	mov r0, #0
	b _0211BB58
_0211BB54:
	add r0, r0, #1
_0211BB58:
	cmp r0, #8
	blt _0211BB54
	ldrb r1, [r5, #0xb9f]
	ldrb r0, [r10, #0xf7]
	orr r0, r0, r1
	cmp r1, r0
	ldreqb r1, [r5, #0xba0]
	ldreqb r0, [r10, #0xf8]
	orreq r0, r0, r1
	cmpeq r1, r0
	streqb r3, [r10, #0xf6]
	beq _0211BCD0
	strb r8, [r10, #0xf6]
	ldrb r1, [r5, #0xb9f]
	ldrb r0, [r10, #0xf7]
	orr r0, r0, r1
	cmp r1, r0
	beq _0211BC14
	ldr r0, _0211BD0C ; =0x02099F44
	add r7, sp, #0
	ldr r0, [r0]
	mov r1, r7
	mov r2, #8
	bl FUN_ov131_02140eb4
	mov r9, #0
	ldr r6, _0211BD10 ; =0x020A9C40
	mov r4, #9
	b _0211BBF8
_0211BBC8:
	ldrb r0, [r5, #0xb9f]
	tst r0, r8, lsl r9
	bne _0211BBF4
	ldrb r0, [r10, #0xf7]
	tst r0, r8, lsl r9
	beq _0211BBF4
	mov r0, r9, lsl #1
	ldrh r2, [r7, r0]
	mov r0, r6
	mov r1, r4
	bl FUN_02045b74
_0211BBF4:
	add r9, r9, #1
_0211BBF8:
	cmp r9, #8
	blt _0211BBC8
	ldrb r1, [r5, #0xb9f]
	ldrb r0, [r10, #0xf7]
	orr r0, r1, r0
	strb r0, [r5, #0xb9f]
	strb r8, [r10, #0xf9]
_0211BC14:
	ldrb r1, [r5, #0xba0]
	ldrb r0, [r10, #0xf8]
	orr r0, r0, r1
	cmp r1, r0
	beq _0211BCD0
	mov r4, #0
	ldr r7, _0211BD10 ; =0x020A9C40
	mov r6, #0xa
	b _0211BC64
_0211BC38:
	ldrb r0, [r5, #0xba0]
	tst r0, r8, lsl r4
	bne _0211BC60
	ldrb r0, [r10, #0xf8]
	tst r0, r8, lsl r4
	beq _0211BC60
	mov r0, r7
	mov r1, r6
	add r2, r4, #0x65
	bl FUN_02045b74
_0211BC60:
	add r4, r4, #1
_0211BC64:
	cmp r4, #8
	blt _0211BC38
	add r7, r11, #0x34
	mov r11, #6
	mov r9, #0
	ldr r6, _0211BD14 ; =0x020A1248
	mov r4, r11
	b _0211BCB4
_0211BC84:
	ldrb r1, [r5, #0xba0]
	ldrb r0, [r10, #0xf8]
	tst r1, r8, lsl r9
	bne _0211BCB0
	tst r0, r8, lsl r9
	beq _0211BCB0
	mul r1, r9, r4
	mov r2, r11
	add r0, r7, r1
	add r1, r6, r1
	bl MI_CpuCopy8
_0211BCB0:
	add r9, r9, #1
_0211BCB4:
	cmp r9, #8
	blt _0211BC84
	ldrb r1, [r5, #0xba0]
	ldrb r0, [r10, #0xf8]
	orr r0, r1, r0
	strb r0, [r5, #0xba0]
	strb r8, [r10, #0xfa]
_0211BCD0:
	ldr r0, _0211BD18 ; =0x0209AEC0
	bl FUN_020465fc
	mov r0, r10
	mov r1, #2
	bl FUN_ov35_0211b53c
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BCEC:
	add r2, r2, #1
_0211BCF0:
	cmp r2, #0x10
	blt _0211BA60
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BD00: .word unk_0209B13C
_0211BD04: .word unk_020A0640
_0211BD08: .word 0x00001423
_0211BD0C: .word unk_02099F44
_0211BD10: .word unk_020A9C40
_0211BD14: .word unk_020A1248
_0211BD18: .word unk_0209AEC0
	arm_func_end FUN_ov35_0211ba44

	arm_func_start FUN_ov35_0211bd1c
FUN_ov35_0211bd1c: ; 0x0211BD1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov35_0211bd1c

	arm_func_start FUN_ov35_0211bd30
FUN_ov35_0211bd30: ; 0x0211BD30
	bx lr
	arm_func_end FUN_ov35_0211bd30

	.rodata
	.global ov35_0211BD34
ov35_0211BD34:
	.word ov35_0211BEA8
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov35_0211BE48
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov35_0211BE58
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov35_0211BE78
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov35_0211BE88
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov35_0211BE18
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov35_0211BE28
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov35_0211BE68
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov35_0211BE98
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov35_0211BE38
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov35_0211bd8c
FUN_ov35_0211bd8c: ; 0x0211BD8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211BDD4 ; =0x0211BE00
	str r0, [r4, #4]
	ldr r0, _0211BDD8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _0211BDDC ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BDD4: .word ov35_0211BE00
_0211BDD8: .word 0x00009CCD
_0211BDDC: .word 0x0000EA3C
	arm_func_end FUN_ov35_0211bd8c

	.section .sinit, 4
ov35_0211BDE0:
	.word FUN_ov35_0211bd8c

	.data
	.global ov35_0211BE00
ov35_0211BE00:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE18
ov35_0211BE18:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE28
ov35_0211BE28:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE38
ov35_0211BE38:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE48
ov35_0211BE48:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE58
ov35_0211BE58:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE68
ov35_0211BE68:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE78
ov35_0211BE78:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE88
ov35_0211BE88:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x67, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BE98
ov35_0211BE98:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BEA8
ov35_0211BEA8:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211BEC0
ov35_0211BEC0:
	.word FUN_ov35_0211bd30
	.word FUN_ov35_0211bd1c
	.word FUN_ov35_0211a0e8
	.word FUN_ov35_0211a540
	.word FUN_ov35_0211b0f0
	.word FUN_0202b208
	.word FUN_ov35_0211b1bc
	.word FUN_ov35_0211b2b8
	.word FUN_ov35_0211b2e8
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
	.global ov35_0211BF2C
ov35_0211BF2C:
	.byte 0x20, 0x00, 0x00, 0x00
	.global ov35_0211BF30
ov35_0211BF30:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D
	.byte 0x54, 0x53, 0x57, 0x66, 0x44, 0x4C, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov35_0211BF4C
ov35_0211BF4C:
	.byte 0x83, 0x66, 0x81, 0x5B
	.byte 0x83, 0x5E, 0x82, 0xF0, 0x5B, 0x8D, 0x58, 0x90, 0x56, 0x2F, 0x82, 0xB1, 0x82, 0xA4, 0x82, 0xB5
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov35_0211BF70
ov35_0211BF70:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92
	.byte 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC9, 0x5B
	.byte 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xB5
	.byte 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov35_0211BFA8
ov35_0211BFA8:
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x92, 0x86, 0x2F
	.byte 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xB7, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00
	.global ov35_0211BFCC
ov35_0211BFCC:
	.byte 0x82, 0x63, 0x82, 0x72
	.byte 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC9, 0x5B, 0x90, 0xDA, 0x91, 0xB1
	.byte 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2
	.byte 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82
	.byte 0xA8, 0x5B, 0x91, 0xD2, 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211C028
ov35_0211C028:
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xAA, 0x5B, 0x8A, 0xAE, 0x97, 0xB9, 0x2F, 0x82, 0xA9, 0x82, 0xF1
	.byte 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov35_0211C054
ov35_0211C054:
	.byte 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xAA, 0x5B, 0x8D, 0x58, 0x90
	.byte 0x56, 0x2F, 0x82, 0xB1, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82
	.byte 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00
	.global ov35_0211C078
ov35_0211C078:
	.byte 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xBD
	.byte 0x82, 0xE7, 0x5D, 0x82, 0xB5, 0x82, 0xA2, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xCD, 0x82
	.byte 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov35_0211C0A4
ov35_0211C0A4:
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC
	.byte 0x82, 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82
	.byte 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov35_0211C0C8
ov35_0211C0C8:
	.byte 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9
	.byte 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov35_0211C0E4
ov35_0211C0E4:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC4, 0x5B, 0x8F
	.byte 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov35_0211C10C
ov35_0211C10C:
	.byte 0x83, 0x5F, 0x83, 0x45
	.byte 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB9, 0x82, 0xB8, 0x82, 0xC9, 0x0A, 0x5B
	.byte 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov35_0211C140
ov35_0211C140:
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD
	.byte 0x82, 0xB3, 0x82, 0xAB, 0x5D, 0x82, 0xAA, 0x5B, 0x8C, 0xA9, 0x2F, 0x82, 0xDD, 0x5D, 0x82, 0xC2
	.byte 0x82, 0xA9, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov35_0211C174
ov35_0211C174:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xA9, 0x82, 0xE7, 0x0A, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2
	.byte 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00
	.global ov35_0211C1B0
ov35_0211C1B0:
	.byte 0x83, 0x41, 0x83, 0x68, 0x83, 0x7A, 0x83, 0x62, 0x83, 0x4E, 0x44, 0x4C, 0x83, 0x82, 0x81, 0x5B
	.byte 0x83, 0x68, 0x00, 0x00
	.global ov35_0211C1C4
ov35_0211C1C4:
	.byte 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov35_0211C1E0
ov35_0211C1E0:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92
	.byte 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xA9, 0x82
	.byte 0xE7, 0x0A, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00

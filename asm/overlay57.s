
	.include "/macros/function.inc"
	.include "/include/overlay57.inc"

	.text
	arm_func_start FUN_ov57_02119f00
FUN_ov57_02119f00: ; 0x02119F00
	cmp r1, #4
	movhs r0, #0
	bxhs lr
	cmp r2, #0
	blt _02119F24
	add r3, r0, r1, lsl #1
	ldrb r1, [r3, #0x75]
	cmp r2, r1
	blt _02119F2C
_02119F24:
	mov r0, #0
	bx lr
_02119F2C:
	ldrb r1, [r3, #0x74]
	add r1, r2, r1
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x30]
	bx lr
	arm_func_end FUN_ov57_02119f00

	arm_func_start FUN_ov57_02119f40
FUN_ov57_02119f40: ; 0x02119F40
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_02119F50:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _02119F68
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_02119F68:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _02119F50
	bx lr
	arm_func_end FUN_ov57_02119f40

	arm_func_start FUN_ov57_02119f78
FUN_ov57_02119f78: ; 0x02119F78
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, #1
	mov r2, #0x5a
	str r3, [r4, #0xfc8]
	str r2, [r4, #0xfc4]
	str r1, [r4, #0xfd0]
	strb r3, [r4, #0xfd4]
	bl FUN_ov57_02119f40
	strb r0, [r4, #0xfd5]
	ldr r0, _02119FB0 ; =0x0209AEC0
	bl FUN_020466c0
	str r0, [r4, #0xfcc]
	ldmfd sp!, {r4, pc}
_02119FB0: .word 0x0209AEC0
	arm_func_end FUN_ov57_02119f78

	arm_func_start FUN_ov57_02119fb4
FUN_ov57_02119fb4: ; 0x02119FB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, _0211A048 ; =0x021240FC
	add r0, r5, #0x34
	bl  FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl  FUN_ov16_020f067c
	cmp r0, #0
	beq _02119FF4
	mov r1, #0x33
	mov r0, r5
	mov r2, r1
	mov r3, #0
	bl FUN_ov57_0211ac2c
	ldmfd sp!, {r3, r4, r5, pc}
_02119FF4:
	mov r4, #0
	mov r0, r4
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211A018
	mov r0, #1
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	beq _0211A030
_0211A018:
	mov r0, r5
	mov r1, #0x40
	mov r2, #0x4c
	mov r3, #0
	bl FUN_ov57_0211ac2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A030:
	mov r0, r5
	mov r3, r4
	mov r1, #0x48
	mov r2, #0x4c
	bl FUN_ov57_0211ac2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A048: .word 0x021240FC
	arm_func_end FUN_ov57_02119fb4

	arm_func_start FUN_ov57_0211a04c
FUN_ov57_0211a04c: ; 0x0211A04C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, _0211A140 ; =0x02124864
	add r1, r4, #0x3e4
	bl  FUN_ov16_020f3054
	ldr r0, _0211A144 ; =0x02124880
	add r1, r4, #0x3f0
	bl  FUN_ov16_020f3054
	add r1, r4, #0x2c
	ldr r0, _0211A148 ; =0x021248A0
	add r1, r1, #0x400
	bl  FUN_ov16_020f3054
	ldr r0, _0211A14C ; =0x0209A454
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _0211A150 ; =0x021248C0
	add r1, r4, #0x3fc
	bl  FUN_ov16_020f3054
	ldr r1, [r4, #0xfa8]
	add r0, r4, #0x3a8
	add r4, r0, #0xc00
	cmp r1, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
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
	ldr r0, _0211A154 ; =0x021248DC
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
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211A140: .word 0x02124864
_0211A144: .word 0x02124880
_0211A148: .word 0x021248A0
_0211A14C: .word 0x0209A454
_0211A150: .word 0x021248C0
_0211A154: .word 0x021248DC
	arm_func_end FUN_ov57_0211a04c

	arm_func_start FUN_ov57_0211a158
FUN_ov57_0211a158: ; 0x0211A158
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r9, _0211A260 ; =0x0209A454
	mov r4, #0
	ldrb r10, [r9, #0x28]
	mov r8, r0
	mov r6, r4
	mov r7, r4
	ldr r5, _0211A264 ; =0x02124138
	bl  FUN_ov16_020f081c
	cmp r10, r0
	bne _0211A1BC
	ldrb r0, [r9, #0x31]
	cmp r0, #0
	ldreq r0, _0211A268 ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	bne _0211A1AC
	bl  FUN_ov16_020f066c
	cmp r0, #0
	beq _0211A1DC
_0211A1AC:
	ldr r0, _0211A26C ; =0x020A1640
	mov r6, #1
	ldrb r7, [r0, #0x22]
	b _0211A1DC
_0211A1BC:
	bl  FUN_ov16_020f066c
	cmp r0, #0
	bne _0211A1D4
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211A1DC
_0211A1D4:
	mov r6, #1
	mov r7, #3
_0211A1DC:
	ldr r0, _0211A260 ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	ldrne r5, _0211A270 ; =0x02124158
	bne _0211A234
	cmp r6, #0
	beq _0211A234
	ldrb r0, [r8, #0x30]
	ldr r5, _0211A274 ; =0x02124178
	cmp r0, #0
	ldrne r5, _0211A278 ; =0x02124198
	cmp r7, #2
	bhi _0211A220
	ldr r0, [r5, #0x10]
	ldr r1, _0211A27C ; =0x02124920
	mov r2, r7
	b _0211A230
_0211A220:
	cmp r7, #3
	bne _0211A234
	ldr r0, [r5, #0x10]
	ldr r1, _0211A280 ; =0x02124930
_0211A230:
	bl FUN_02023c40
_0211A234:
	mov r0, #0
	str r0, [sp]
	add r3, r8, #0x38
	ldr r1, [r8, #0x3f0]
	ldr r0, _0211A284 ; =0x02124940
	mov r2, r5
	add r3, r3, #0x400
	bl  FUN_ov16_020f5450
	add r0, r4, r0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211A260: .word 0x0209A454
_0211A264: .word 0x02124138
_0211A268: .word 0x02099E98
_0211A26C: .word 0x020A1640
_0211A270: .word 0x02124158
_0211A274: .word 0x02124178
_0211A278: .word 0x02124198
_0211A27C: .word 0x02124920
_0211A280: .word 0x02124930
_0211A284: .word 0x02124940
	arm_func_end FUN_ov57_0211a158

	arm_func_start FUN_ov57_0211a288
FUN_ov57_0211a288: ; 0x0211A288
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0xf1b]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl FUN_ov57_0211a2c8
	mov r0, r4
	mov r1, #1
	bl FUN_ov57_0211a2c8
	mov r0, r4
	mov r1, #2
	bl FUN_ov57_0211a2c8
	mov r0, r4
	bl FUN_ov57_0211a158
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov57_0211a288

	arm_func_start FUN_ov57_0211a2c8
FUN_ov57_0211a2c8: ; 0x0211A2C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x438]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A300 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x438]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A300: .word 0x02099F38
	arm_func_end FUN_ov57_0211a2c8

	arm_func_start FUN_ov57_0211a304
FUN_ov57_0211a304: ; 0x0211A304
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	bl FUN_ov57_0211a158
	mov r4, #0
	str r4, [sp]
	mov r5, r0
	add r3, r6, #0x38
	ldr r1, [r6, #0x3f0]
	ldr r0, _0211A388 ; =0x02124960
	ldr r2, _0211A38C ; =0x02124240
	add r3, r3, #0x400
	bl  FUN_ov16_020f5450
	add r5, r5, r0
	bl  FUN_ov16_020f066c
	str r4, [sp]
	cmp r0, #0
	add r3, r6, #0x38
	ldr r1, [r6, #0x3f0]
	bne _0211A360
	ldr r0, _0211A390 ; =0x02124980
	ldr r2, _0211A394 ; =0x021241B8
	b _0211A368
_0211A360:
	ldr r0, _0211A398 ; =0x021249A0
	ldr r2, _0211A39C ; =0x021241E0
_0211A368:
	add r3, r3, #0x400
	bl  FUN_ov16_020f5450
	add r5, r5, r0
	mov r0, #1
	cmp r5, #0x2a
	movlt r0, #0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A388: .word 0x02124960
_0211A38C: .word 0x02124240
_0211A390: .word 0x02124980
_0211A394: .word 0x021241B8
_0211A398: .word 0x021249A0
_0211A39C: .word 0x021241E0
	arm_func_end FUN_ov57_0211a304

	arm_func_start FUN_ov57_0211a3a0
FUN_ov57_0211a3a0: ; 0x0211A3A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211A3F8 ; =0x0209A454
	ldrb r1, [r1, #0x32]
	cmp r1, #0
	ldrne r6, [r0, #0x3fc]
	cmpne r6, #0
	ldrne r1, _0211A3FC ; =0x021240EC
	ldrne r7, _0211A400 ; =0x02124118
	ldrne r1, [r1, #0x2c]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x3e4
	mov r4, #0xc
_0211A3D4:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211A3D4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3F8: .word 0x0209A454
_0211A3FC: .word 0x021240EC
_0211A400: .word 0x02124118
	arm_func_end FUN_ov57_0211a3a0

	arm_func_start FUN_ov57_0211a404
FUN_ov57_0211a404: ; 0x0211A404
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl  FUN_ov16_020f066c
	cmp r0, #0
	ldreq r6, _0211A4EC ; =0x0209A454
	ldreqb r0, [r6, #0x31]
	cmpeq r0, #0
	bne _0211A480
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	ldrne r0, _0211A4F0 ; =0x02099E98
	ldrneb r0, [r0]
	cmpne r0, #0
	beq _0211A450
	ldrb r6, [r6, #0x28]
	bl  FUN_ov16_020f081c
	cmp r6, r0
	beq _0211A480
_0211A450:
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211A470
	ldr r0, _0211A4EC ; =0x0209A454
	ldrb r6, [r0, #0x28]
	bl  FUN_ov16_020f081c
	cmp r6, r0
	bne _0211A480
_0211A470:
	ldr r0, _0211A4F4 ; =0x020A1640
	ldrb r0, [r0, #0x22]
	cmp r0, #0x63
	bne _0211A4A0
_0211A480:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x4e4]
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #0x8000
	beq _0211A4E4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A4A0:
	ldr r0, _0211A4EC ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x4e4]
	bne _0211A4D0
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #0x2000
	beq _0211A4E4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A4D0:
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #0x4000
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A4E4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A4EC: .word 0x0209A454
_0211A4F0: .word 0x02099E98
_0211A4F4: .word 0x020A1640
	arm_func_end FUN_ov57_0211a404

	arm_func_start FUN_ov57_0211a4f8
FUN_ov57_0211a4f8: ; 0x0211A4F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0x10
	mov r4, r2
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	bl  FUN_ov16_020f066c
	cmp r0, #0
	ldreq r7, _0211A618 ; =0x0209A454
	ldreqb r0, [r7, #0x31]
	cmpeq r0, #0
	bne _0211A584
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	ldrne r0, _0211A61C ; =0x02099E98
	ldrneb r0, [r0]
	cmpne r0, #0
	beq _0211A554
	ldrb r7, [r7, #0x28]
	bl  FUN_ov16_020f081c
	cmp r7, r0
	beq _0211A584
_0211A554:
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211A574
	ldr r0, _0211A618 ; =0x0209A454
	ldrb r7, [r0, #0x28]
	bl  FUN_ov16_020f081c
	cmp r7, r0
	bne _0211A584
_0211A574:
	ldr r0, _0211A620 ; =0x020A1640
	ldrb r0, [r0, #0x22]
	cmp r0, #0x63
	bne _0211A5B0
_0211A584:
	add r0, r6, r5, lsl #2
	cmp r4, #0
	ldr r0, [r0, #0x4e4]
	beq _0211A5A4
	bl FUN_0206dcd4
	mov r1, #0x8000
_0211A59C:
	bl FUN_0206e18c
	b _0211A610
_0211A5A4:
	bl FUN_0206dcd4
	mov r1, #0x8000
	b _0211A60C
_0211A5B0:
	ldr r0, _0211A618 ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	bne _0211A5E8
	add r0, r6, r5, lsl #2
	cmp r4, #0
	ldr r0, [r0, #0x4e4]
	beq _0211A5DC
	bl FUN_0206dcd4
	mov r1, #0x2000
	b _0211A59C
_0211A5DC:
	bl FUN_0206dcd4
	mov r1, #0x2000
	b _0211A60C
_0211A5E8:
	add r0, r6, r5, lsl #2
	cmp r4, #0
	ldr r0, [r0, #0x4e4]
	beq _0211A604
	bl FUN_0206dcd4
	mov r1, #0x4000
	b _0211A59C
_0211A604:
	bl FUN_0206dcd4
	mov r1, #0x4000
_0211A60C:
	bl FUN_0206e20c
_0211A610:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A618: .word 0x0209A454
_0211A61C: .word 0x02099E98
_0211A620: .word 0x020A1640
	arm_func_end FUN_ov57_0211a4f8

	arm_func_start FUN_ov57_0211a624
FUN_ov57_0211a624: ; 0x0211A624
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov57_0211bccc
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211a404
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov57_0211a624

	arm_func_start FUN_ov57_0211a644
FUN_ov57_0211a644: ; 0x0211A644
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_ov57_0211bccc
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r2, r4
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211a4f8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov57_0211a644

	arm_func_start FUN_ov57_0211a66c
FUN_ov57_0211a66c: ; 0x0211A66C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldrb r0, [r10, #0xf18]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, _0211A7C0 ; =0x02099EC0
	mov r4, #1
	ldr r0, [r11]
	mov r1, r4
	bl FUN_02056e94
	ldr r0, [r11]
	bl FUN_0205711c
	ldr r0, _0211A7C4 ; =0x0209A454
	ldrb r0, [r0, #0x28]
	str r0, [sp, #0xc]
	ldr r0, _0211A7C8 ; =0x0209BA20
	ldr r1, [sp, #0xc]
	bl FUN_0207249c
	mov r7, r0
	add r0, r10, #0xe4
	mov r5, #0
	add r0, r0, #0x400
	mov r1, r5
	mov r2, #0x40
	bl MI_CpuFill8
	b _0211A7A4
_0211A6E0:
	mov r2, #0
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r3, r2
	bl  FUN_ov16_020efb6c
	movs r6, r0
	beq _0211A7A0
	mov r1, #0
	bl  FUN_ov16_020efa9c
	movs r8, r0
	beq _0211A7A0
	sub r0, r4, #1
	add r0, r10, r0, lsl #2
	str r8, [r0, #0x4e4]
	mov r0, r7
	mov r1, r8
	add r5, r5, #1
	bl  FUN_ov16_020f0bcc
	mov r9, r0
	ldrh r2, [r7, #0x28]
	mov r0, #0
	mov r1, r6
	cmp r2, #0
	ldreqh r2, [r7, #0x26]
	mov r3, r9
	str r0, [sp]
	ldr r0, [r11]
	bl FUN_02056ed4
	ldrh r0, [r7, #0x28]
	mov r2, r6
	mov r1, r4
	cmp r0, #0
	ldreqh r0, [r7, #0x26]
	mov r3, #0
	stmia sp, {r0, r9}
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r11]
	bl FUN_02056b24
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0211A7C8 ; =0x0209BA20
	mov r1, r8
	mov r2, #1
	mov r3, #0
	bl FUN_0204e79c
_0211A7A0:
	add r4, r4, #1
_0211A7A4:
	cmp r4, #0x10
	ble _0211A6E0
	mov r0, #0
	strb r0, [r10, #0xf18]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A7C0: .word 0x02099EC0
_0211A7C4: .word 0x0209A454
_0211A7C8: .word 0x0209BA20
	arm_func_end FUN_ov57_0211a66c

	arm_func_start FUN_ov57_0211a7cc
FUN_ov57_0211a7cc: ; 0x0211A7CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0x3e4
	mov r1, #7
	bl  FUN_ov16_020f338c
	mov r4, #0
	add r7, r5, #0x3e4
	mov r6, #0xc
	b _0211A7FC
_0211A7F0:
	mla r0, r4, r6, r7
	bl  FUN_ov16_020f33fc
	add r4, r4, #1
_0211A7FC:
	cmp r4, #7
	blt _0211A7F0
	add r1, r5, #0x1b8
	mov r0, r5
	add r1, r1, #0x400
	bl FUN_ov57_0211d00c
	mov r4, #0
	ldr r6, _0211A8C8 ; =0x02099F38
	b _0211A83C
_0211A820:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x524]
	cmp r1, #0
	beq _0211A838
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211A838:
	add r4, r4, #1
_0211A83C:
	cmp r4, #0x23
	blt _0211A820
	mov r4, #0
	ldr r6, _0211A8C8 ; =0x02099F38
	b _0211A86C
_0211A850:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xf54]
	cmp r1, #0
	beq _0211A868
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211A868:
	add r4, r4, #1
_0211A86C:
	cmp r4, #1
	blt _0211A850
	mov r4, #0
	b _0211A88C
_0211A87C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov57_0211a2c8
	add r4, r4, #1
_0211A88C:
	cmp r4, #0x2a
	blt _0211A87C
	mov r4, #0
	ldr r6, _0211A8C8 ; =0x02099F38
	b _0211A8BC
_0211A8A0:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x4e0]
	cmp r1, #0
	beq _0211A8B8
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A8B8:
	add r4, r4, #1
_0211A8BC:
	cmp r4, #1
	blt _0211A8A0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A8C8: .word 0x02099F38
	arm_func_end FUN_ov57_0211a7cc

	arm_func_start FUN_ov57_0211a8cc
FUN_ov57_0211a8cc: ; 0x0211A8CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A940 ; =0x02099F38
	b _0211A908
_0211A8E0:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x438]
	cmp r1, #0
	beq _0211A904
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A904:
	add r5, r5, #1
_0211A908:
	cmp r5, #0x2a
	blt _0211A8E0
	ldr r4, _0211A944 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_020571ac
	cmp r0, #0
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	bl FUN_020576a0
	cmp r0, #0
	movgt r0, #0
	movle r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A940: .word 0x02099F38
_0211A944: .word 0x02099EC0
	arm_func_end FUN_ov57_0211a8cc

	arm_func_start FUN_ov57_0211a948
FUN_ov57_0211a948: ; 0x0211A948
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A9A8 ; =0x02099F38
	b _0211A99C
_0211A960:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x438]
	cmp r1, #0
	beq _0211A998
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A998
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x438]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A998:
	add r6, r6, #1
_0211A99C:
	cmp r6, #0x2a
	blt _0211A960
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A9A8: .word 0x02099F38
	arm_func_end FUN_ov57_0211a948

	arm_func_start FUN_ov57_0211a9ac
FUN_ov57_0211a9ac: ; 0x0211A9AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r7, _0211AC20 ; =0x0209A454
	ldr r9, _0211AC24 ; =0x0209BA20
	ldrb r1, [r7, #0x28]
	mov r8, r0
	mov r0, r9
	mov r4, #3
	mov r5, #0
	bl FUN_0205106c
	ldrb r1, [r7, #0x31]
	mov r6, r0
	cmp r1, #0
	beq _0211A9EC
	mov r0, r9
	mov r1, #2
	b _0211A9F4
_0211A9EC:
	ldrb r1, [r7, #0x28]
	mov r0, r9
_0211A9F4:
	bl FUN_0205107c
	mov r7, r0
	ldr r0, _0211AC24 ; =0x0209BA20
	ldrb r0, [r0, #0x885]
	cmp r0, #0
	ldreq r0, _0211AC20 ; =0x0209A454
	ldreqb r0, [r0, #0x30]
	cmpeq r0, #0
	bne _0211AA78
	mov r0, r7
	bl FUN_0204fe48
	cmp r0, #0xb
	blt _0211AA78
	mov r10, #0
	mov r9, r10
_0211AA30:
	mov r0, r7
	mov r1, r9
	bl FUN_0204fbe8
	cmp r0, #0
	add r9, r9, #1
	addne r10, r10, #1
	cmp r9, #0xb
	blt _0211AA30
	cmp r10, #0xb
	bge _0211AA78
	mov r2, #2
	mov r0, r8
	mov r1, #3
	str r2, [r8, #0x680]
	bl FUN_ov57_0211ae9c
	mov r0, #0
	strb r0, [r8, #0x31]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AA78:
	ldr r0, _0211AC20 ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	beq _0211AB04
	mov r7, #0
	mov r9, r7
_0211AA90:
	mov r0, r6
	mov r1, r9
	bl FUN_02050244
	mov r1, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211AABC
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #1
	addeq r7, r7, #1
_0211AABC:
	add r9, r9, #1
	cmp r9, #4
	blt _0211AA90
	mov r0, r6
	mov r1, #1
	bl FUN_0204fed8
	cmp r0, #0
	bne _0211AB80
	cmp r7, #0
	beq _0211AB80
	mov r2, #4
	mov r0, r8
	mov r1, #3
	str r2, [r8, #0x680]
	bl FUN_ov57_0211ae9c
	mov r0, #0
	strb r0, [r8, #0x31]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AB04:
	mov r6, #0
	mov r9, r6
_0211AB0C:
	mov r0, r7
	mov r1, r9
	bl FUN_0204fbe8
	mov r1, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211AB38
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #1
	addeq r6, r6, #1
_0211AB38:
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211AB0C
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	cmp r0, #0
	bne _0211AB80
	cmp r6, #0
	beq _0211AB80
	mov r2, #4
	mov r0, r8
	mov r1, #3
	str r2, [r8, #0x680]
	bl FUN_ov57_0211ae9c
	mov r0, r5
	strb r5, [r8, #0x31]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AB80:
	ldr r1, _0211AC20 ; =0x0209A454
	ldrb r0, [r1, #0x29]
	cmp r0, #0
	ldreqb r0, [r1, #0x2a]
	cmpeq r0, #0
	ldreqb r0, [r1, #0x31]
	cmpeq r0, #0
	bne _0211AC18
	ldr r0, _0211AC28 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0211AC18
	ldrb r1, [r1, #0x28]
	bl  FUN_ov126_0213571c
	cmp r0, #0
	beq _0211AC18
	cmp r0, #1
	moveq r0, #1
	strb r5, [r8, #0x31]
	streq r0, [r8, #0x680]
	beq _0211AC04
	cmp r0, #2
	moveq r0, #2
	streq r0, [r8, #0x680]
	beq _0211AC04
	cmp r0, #3
	streq r4, [r8, #0x680]
	beq _0211AC04
	cmp r0, #4
	moveq r0, #4
	streq r0, [r8, #0x680]
	movne r0, #5
	strne r0, [r8, #0x680]
_0211AC04:
	mov r0, r8
	mov r1, #3
	bl FUN_ov57_0211ae9c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AC18:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AC20: .word 0x0209A454
_0211AC24: .word 0x0209BA20
_0211AC28: .word 0x02099EF0
	arm_func_end FUN_ov57_0211a9ac

	arm_func_start FUN_ov57_0211ac2c
FUN_ov57_0211ac2c: ; 0x0211AC2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r12, _0211AC9C ; =0x0209A454
	mov r7, r0
	ldrb r0, [r12, #0x32]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	bne _0211AC6C
	ldrb r0, [r12, #0x29]
	cmp r0, #0
	beq _0211AC6C
	cmp r6, #0
	cmpeq r5, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC6C:
	mov r0, r7
	bl FUN_ov57_0211a9ac
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #9
	str r0, [r7, #0x20]
	str r6, [r7, #0x14]
	str r5, [r7, #0x18]
	strb r4, [r7, #0x1c]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC9C: .word 0x0209A454
	arm_func_end FUN_ov57_0211ac2c

	arm_func_start FUN_ov57_0211aca0
FUN_ov57_0211aca0: ; 0x0211ACA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r5, r1
	mov r7, r4
	mov r8, #1
	ldr r6, _0211AD10 ; =0x02099EB4
	b _0211AD04
_0211ACBC:
	mov r0, r8, lsl r4
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r6]
	mov r1, r9
	bl  FUN_ov16_0210ebd4
	movs r1, r0
	beq _0211AD00
	tst r9, r5
	moveq r0, r8
	movne r0, r7
	strb r0, [r1, #0x10]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	beq _0211AD00
	ldr r0, [r6]
	bl  FUN_ov16_0210ee80
_0211AD00:
	add r4, r4, #1
_0211AD04:
	cmp r4, #0x10
	blt _0211ACBC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AD10: .word 0x02099EB4
	arm_func_end FUN_ov57_0211aca0

	arm_func_start FUN_ov57_0211ad14
FUN_ov57_0211ad14: ; 0x0211AD14
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211AD94 ; =0x0209A454
	mov r5, r0
	ldrb r2, [r1, #0x32]
	add r0, r5, #0xe00
	ldrh r4, [r0, #0xf8]
	cmp r2, #0
	beq _0211AD40
	ldrb r0, [r1, #0x29]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_0211AD40:
	ldr r0, _0211AD94 ; =0x0209A454
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	ldrne r0, _0211AD98 ; =0xFFFFF4FE
	andne r0, r4, r0
	movne r0, r0, lsl #0x10
	movne r4, r0, lsr #0x10
	ldr r0, [r5, #0x24]
	cmp r0, #1
	bne _0211AD84
	ldr r1, [r5, #0x5b8]
	mov r0, r5
	bl FUN_ov57_0211bb24
	cmp r0, #0
	bicle r0, r4, #1
	movle r0, r0, lsl #0x10
	movle r4, r0, lsr #0x10
_0211AD84:
	mov r0, r5
	mov r1, r4
	bl FUN_ov57_0211aca0
	ldmfd sp!, {r3, r4, r5, pc}
_0211AD94: .word 0x0209A454
_0211AD98: .word 0xFFFFF4FE
	arm_func_end FUN_ov57_0211ad14

	arm_func_start FUN_ov57_0211ad9c
FUN_ov57_0211ad9c: ; 0x0211AD9C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r6, r0
	tst r4, #0x400
	movne r0, #1
	strneb r0, [r6, #0xfc0]
	ldrb r0, [r6, #0xfc0]
	cmp r0, #0
	moveq r0, #1
	addeq sp, sp, #4
	streqb r0, [r6, #0xfc0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211AE44 ; =0x0209A454
	mov r5, #0
	ldrb r0, [r0, #0x28]
	ldr r1, [r6, #0x5b0]
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_020efb6c
	mov r1, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r0, r6, #0xe00
	ldrh r0, [r0, #0xf8]
	ldr r5, _0211AE48 ; =0x02099EB4
	add r2, sp, #0
	and r0, r4, r0
	mov r1, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r5]
	ldr r1, [sp]
	bl  FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211AE44: .word 0x0209A454
_0211AE48: .word 0x02099EB4
	arm_func_end FUN_ov57_0211ad9c

	arm_func_start FUN_ov57_0211ae4c
FUN_ov57_0211ae4c: ; 0x0211AE4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	str r1, [r5, #0x20]
	cmp r1, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r1, _0211AE94 ; =0x021240FC
	mov r0, r4
	bl  FUN_ov1_020e5634
	mov r1, r0
	add r0, r5, #0x34
	bl  FUN_ov1_020e5030
	ldr r0, _0211AE98 ; =0x020E9482
	strb r4, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE94: .word 0x021240FC
_0211AE98: .word 0x020E9482
	arm_func_end FUN_ov57_0211ae4c

	arm_func_start FUN_ov57_0211ae9c
FUN_ov57_0211ae9c: ; 0x0211AE9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #0x24]
	ldr r0, _0211AF38 ; =0x0209A454
	str r2, [r4, #0xf14]
	ldrb r0, [r0, #0x29]
	mov r5, r1
	cmp r0, #0
	movne r5, #0
	cmp r5, #2
	bne _0211AF10
	ldr r0, _0211AF38 ; =0x0209A454
	ldrb r0, [r0, #0x2f]
	cmp r0, #0
	beq _0211AF00
	ldr r1, [r4, #0x5b0]
	mov r0, r4
	bl FUN_ov57_0211bd58
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r1, r1, lsr #0x10
	mov r2, #0
	bl FUN_ov57_0211af3c
	cmp r0, #6
	bne _0211AF20
_0211AF00:
	mov r0, #6
	str r0, [r4, #0x680]
	mov r5, #3
	b _0211AF20
_0211AF10:
	cmp r5, #0
	bne _0211AF20
	mov r0, r4
	bl FUN_ov57_02122b3c
_0211AF20:
	mov r0, #2
	cmp r5, #0
	str r5, [r4, #0x24]
	movne r0, #5
	str r0, [r4, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AF38: .word 0x0209A454
	arm_func_end FUN_ov57_0211ae9c

	arm_func_start FUN_ov57_0211af3c
FUN_ov57_0211af3c: ; 0x0211AF3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r0, r1
	mov r1, r4
	mov r6, r2
	bl  FUN_ov16_020efa9c
	movs r5, r0
	moveq r0, #9
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B034 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211B038 ; =0x0209A454
	ldrb r0, [r7, #0x31]
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B03C ; =0x02099E98
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7, #0x30]
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0xc
	blt _0211AFD8
	mov r0, r5
	bl FUN_0206d484
	cmp r0, #0
	movne r0, #0xa
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211AFD8:
	cmp r6, #1
	blt _0211AFFC
	cmp r6, #0xb
	bgt _0211AFFC
	mov r0, r5
	bl FUN_0206d454
	cmp r0, #0
	movne r0, #0xb
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211AFFC:
	cmp r6, #1
	bne _0211B01C
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #1
	movne r0, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211B01C:
	mov r0, r5
	bl FUN_0206d494
	cmp r0, #0
	movne r0, #9
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B034: .word 0x020A0640
_0211B038: .word 0x0209A454
_0211B03C: .word 0x02099E98
	arm_func_end FUN_ov57_0211af3c

	arm_func_start FUN_ov57_0211b040
FUN_ov57_0211b040: ; 0x0211B040
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	mov r4, r0
	mov r5, r6
_0211B050:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x4e4]
	cmp r0, #0
	beq _0211B08C
	mov r1, r6, lsl #0x10
	mov r0, r4
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211a404
	cmp r0, #0
	beq _0211B08C
	mov r1, r6, lsl #0x10
	mov r0, r4
	mov r2, r5
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211a4f8
_0211B08C:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0211B050
	ldr r1, [r4, #0x5b0]
	mov r0, r4
	bl FUN_ov57_0211bd58
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r1, r1, lsr #0x10
	mov r2, #1
	bl FUN_ov57_0211a644
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov57_0211b040

	arm_func_start FUN_ov57_0211b0bc
FUN_ov57_0211b0bc: ; 0x0211B0BC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r3, _0211B180 ; =0x02124218
	mov r7, r1
	ldrh r9, [r3]
	ldrh r5, [r3, #2]
	ldrh r4, [r3, #4]
	ldrh r1, [r3, #6]
	mov r8, r0
	mov r6, r2
	strh r9, [sp]
	strh r5, [sp, #2]
	strh r4, [sp, #4]
	strh r1, [sp, #6]
	cmp r7, #0
	ble _0211B104
	cmp r7, #0x10
	ble _0211B108
_0211B104:
	mov r7, #1
_0211B108:
	mov r0, r8
	bl FUN_ov57_0211f89c
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	sub r1, r7, #1
	mov r5, #0
	add r9, r0, r1, lsl #2
	add r4, sp, #0
_0211B130:
	mov r0, r5, lsl #1
	ldrh r0, [r4, r0]
	tst r6, r0
	addne r0, r5, r9
	ldrneb r10, [r0, #0x20]
	cmpne r10, #0
	beq _0211B168
	mov r0, r8
	mov r1, r10
	bl FUN_ov57_0211f8b8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B168:
	add r5, r5, #1
	cmp r5, #4
	blt _0211B130
	mov r0, r7
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B180: .word 0x02124218
	arm_func_end FUN_ov57_0211b0bc

	arm_func_start FUN_ov57_0211b184
FUN_ov57_0211b184: ; 0x0211B184
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r2
	mov r6, r1
	mov r1, r5
	mov r7, r0
	bl FUN_ov57_0211bd58
	mov r4, r0
	cmp r4, #0
	ble _0211B1C4
	mov r1, r4, lsl #0x10
	mov r0, r7
	mov r2, r6
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211af3c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B1C4:
	mov r0, r7
	mov r1, r6
	bl FUN_ov57_0211bd58
	mov r9, r0
	cmp r9, #0
	ble _0211B1F8
	mov r1, r9, lsl #0x10
	mov r0, r7
	mov r2, r5
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211af3c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B1F8:
	mov r8, #0
	mov r0, r9
	mov r1, r8
	bl  FUN_ov16_020efa9c
	mov r9, r0
	mov r0, r4
	mov r1, r8
	bl  FUN_ov16_020efa9c
	cmp r6, #1
	mov r4, r0
	cmpne r5, #1
	moveq r0, #1
	streqb r0, [r7, #0xf18]
	cmp r9, #0
	beq _0211B248
	mov r0, r9
	bl FUN_0206d6d8
	cmp r0, #0
	movne r0, #1
	strneb r0, [r7, #0xf18]
_0211B248:
	cmp r4, #0
	beq _0211B264
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	movne r0, #1
	strneb r0, [r7, #0xf18]
_0211B264:
	ldr r1, _0211B290 ; =0x0209A454
	ldr r0, _0211B294 ; =0x0209BA20
	ldrb r1, [r1, #0x28]
	mov r2, r6
	mov r3, r5
	bl  FUN_ov126_0212ac54
	ldr r0, _0211B298 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B290: .word 0x0209A454
_0211B294: .word 0x0209BA20
_0211B298: .word 0x0209AC44
	arm_func_end FUN_ov57_0211b184

	arm_func_start FUN_ov57_0211b29c
FUN_ov57_0211b29c: ; 0x0211B29C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x5b0]
	ldr r2, [r4, #0x5b4]
	bl FUN_ov57_0211b184
	movs r5, r0
	bne _0211B30C
	mov r0, r4
	mov r1, #0
	bl FUN_ov57_0211ae9c
	ldr r0, _0211B32C ; =0x0209A454
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B330 ; =0x0209AEC0
	bl FUN_02046730
	add r1, r4, #0x324
	add r3, r1, #0xc00
	ldr r1, [r3, r0, lsl #2]
	mov r2, #1
	add r1, r1, #1
	str r1, [r3, r0, lsl #2]
	ldr r1, [r4, #0x5b0]
	ldr r0, [r4, #0x5b4]
	strb r2, [r4, #0xf34]
	strb r1, [r4, #0xf35]
	strb r0, [r4, #0xf36]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B30C:
	ldr r0, _0211B334 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #3
	str r5, [r4, #0x680]
	bl FUN_ov57_0211ae9c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B32C: .word 0x0209A454
_0211B330: .word 0x0209AEC0
_0211B334: .word 0x0209AC44
	arm_func_end FUN_ov57_0211b29c

	arm_func_start FUN_ov57_0211b338
FUN_ov57_0211b338: ; 0x0211B338
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B3DC ; =0x0209A454
	ldrb r1, [r0, #0x30]
	cmp r1, #0
	beq _0211B380
	ldrb r1, [r0, #0x28]
	ldr r0, _0211B3E0 ; =0x0209BA20
	bl FUN_0205106c
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r4
	bl FUN_0205019c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B380:
	ldrb r1, [r0, #0x31]
	cmp r1, #0
	beq _0211B3B4
	ldr r0, _0211B3E0 ; =0x0209BA20
	mov r1, #2
	bl FUN_0205107c
	mov r4, r0
	mov r0, r5
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r4
	bl FUN_0204fd68
	ldmfd sp!, {r3, r4, r5, pc}
_0211B3B4:
	ldrb r1, [r0, #0x28]
	ldr r0, _0211B3E0 ; =0x0209BA20
	bl FUN_0205107c
	mov r4, r0
	mov r0, r5
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r4
	bl FUN_0204fd68
	ldmfd sp!, {r3, r4, r5, pc}
_0211B3DC: .word 0x0209A454
_0211B3E0: .word 0x0209BA20
	arm_func_end FUN_ov57_0211b338

	arm_func_start FUN_ov57_0211b3e4
FUN_ov57_0211b3e4: ; 0x0211B3E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	ldr r4, _0211B8F0 ; =0x02099EB4
	mov r9, r0
	ldr r0, [r4]
	mov r1, #3
	bl  FUN_ov16_0210eb3c
	ldr r0, [r9, #0x67c]
	bl  FUN_ov16_021109a0
	mov r8, #0
	str r8, [sp]
	ldr r6, _0211B8F4 ; =0x02099F38
	mov r5, #1
	ldr r0, [r6]
	ldr r1, [r9, #0x598]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add r1, r9, #0x1b8
	mov r0, r9
	add r1, r1, #0x400
	bl FUN_ov57_0211d00c
	ldr r0, [r4]
	mov r1, #0x2e
	bl  FUN_ov16_0210eab4
	mov r0, r9
	strb r5, [r9, #0xe90]
	bl FUN_ov57_021235a8
	ldr r5, _0211B8F4 ; =0x02099F38
	mov r10, r8
	ldr r4, _0211B8F0 ; =0x02099EB4
	ldr r7, _0211B8F8 ; =0x00007FFF
	b _0211B480
_0211B468:
	add r1, r9, r8, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x524]
	mov r2, r7
	bl  FUN_ov16_02114204
	add r8, r8, #1
_0211B480:
	cmp r8, #0x23
	blt _0211B468
	ldr r6, _0211B8F8 ; =0x00007FFF
	ldr r0, [r5]
	ldr r1, [r9, #0xf54]
	mov r2, r6
	bl  FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r9, #0xf38]
	mov r2, r6
	bl  FUN_ov16_02114204
	mov r0, r9
	mov r1, r6
	bl FUN_ov57_0211ddc8
	ldr r0, _0211B8FC ; =0x0209A454
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	beq _0211B500
	ldrb r0, [r9, #0x30]
	mov r6, #1
	ldr r7, _0211B900 ; =0x00004210
	cmp r0, #0
	bne _0211B500
	ldr r0, [r5]
	ldr r1, [r9, #0x52c]
	mov r2, r7
	bl  FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r9, #0x538]
	mov r2, r7
	bl  FUN_ov16_02114204
	str r6, [r9, #0xfbc]
_0211B500:
	ldr r0, [r9, #0x24]
	ldr r6, _0211B900 ; =0x00004210
	cmp r0, #8
	mov r8, #2
	mov r7, #1
	addls pc, pc, r0, lsl #2
	b _0211B8E0
_0211B51C: ; jump table
	b _0211B540 ; case 0
	b _0211B5F4 ; case 1
	b _0211B5A8 ; case 2
	b _0211B638 ; case 3
	b _0211B73C ; case 4
	b _0211B7E0 ; case 5
	b _0211B83C ; case 6
	b _0211B83C ; case 7
	b _0211B898 ; case 8
_0211B540:
	ldr r0, [r4]
	mov r1, #0xa
	bl  FUN_ov16_0210ee78
	ldr r0, _0211B8FC ; =0x0209A454
	ldr r1, _0211B904 ; =0x00000F03
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	ldrne r1, _0211B908 ; =0x00000C03
	add r0, r9, #0xe00
	strh r1, [r0, #0xf8]
	ldr r0, [r9, #0x674]
	cmp r0, #0
	bne _0211B598
	add r1, r9, #0xe00
	ldrh r2, [r1, #0xf8]
	ldr r0, _0211B90C ; =0x0000FFFE
	and r0, r2, r0
	strh r0, [r1, #0xf8]
	ldr r0, [r5]
	ldr r1, [r9, #0x52c]
	ldr r2, _0211B900 ; =0x00004210
	bl  FUN_ov16_02114204
_0211B598:
	mov r0, r9
	mov r1, #0
	bl FUN_ov57_0211e334
	b _0211B8E0
_0211B5A8:
	ldr r0, [r4]
	mov r1, #0x14
	bl  FUN_ov16_0210ee78
	add r1, r9, #0xe00
	mov r2, #3
	mov r0, r9
	strh r2, [r1, #0xf8]
	bl FUN_ov57_02123f34
	ldr r0, [r5]
	ldr r1, [r9, #0x538]
	ldr r2, _0211B900 ; =0x00004210
	bl  FUN_ov16_02114204
	ldr r1, [r9, #0x5b0]
	mov r0, r9
	bl FUN_ov57_0211e334
	ldr r1, [r9, #0x5b0]
	mov r0, r9
	bl FUN_ov57_0211db38
	b _0211B8E0
_0211B5F4:
	strb r10, [r9, #0xe90]
	ldr r0, [r4]
	mov r1, #0x14
	bl  FUN_ov16_0210ee78
	ldr r1, _0211B910 ; =0x00000333
	add r0, r9, #0xe00
	strh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r1, #9
	bl  FUN_ov16_0210eab4
	mov r0, r9
	bl FUN_ov57_0211b948
	add r1, r9, #0x1b8
	mov r0, r9
	add r1, r1, #0x400
	bl FUN_ov57_0211d0c4
	b _0211B8E0
_0211B638:
	ldr r0, [r4]
	mov r1, #0x28
	bl  FUN_ov16_0210ee78
	add r2, r9, #0xe00
	mov r0, r9
	mov r1, #0
	strh r7, [r2, #0xf8]
	bl FUN_ov57_0211e334
	mov r0, r9
	mov r1, r7
	bl FUN_ov57_02121f50
	ldr r0, [r9, #0x680]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _0211B6EC
_0211B674: ; jump table
	b _0211B6EC ; case 0
	b _0211B6C4 ; case 1
	b _0211B6CC ; case 2
	b _0211B6D4 ; case 3
	b _0211B6DC ; case 4
	b _0211B6EC ; case 5
	b _0211B6E4 ; case 6
	b _0211B6EC ; case 7
	b _0211B6A4 ; case 8
	b _0211B6AC ; case 9
	b _0211B6B4 ; case 10
	b _0211B6BC ; case 11
_0211B6A4:
	ldr r2, _0211B914 ; =0x021249C0
	b _0211B6F0
_0211B6AC:
	ldr r2, _0211B918 ; =0x02124A00
	b _0211B6F0
_0211B6B4:
	ldr r2, _0211B91C ; =0x02124A38
	b _0211B6F0
_0211B6BC:
	ldr r2, _0211B920 ; =0x02124A7C
	b _0211B6F0
_0211B6C4:
	ldr r2, _0211B924 ; =0x02124AB8
	b _0211B6F0
_0211B6CC:
	ldr r2, _0211B928 ; =0x02124AE8
	b _0211B6F0
_0211B6D4:
	ldr r2, _0211B92C ; =0x02124B0C
	b _0211B6F0
_0211B6DC:
	ldr r2, _0211B930 ; =0x02124B40
	b _0211B6F0
_0211B6E4:
	ldr r2, _0211B934 ; =0x02124B68
	b _0211B6F0
_0211B6EC:
	ldr r2, _0211B938 ; =0x02124BA0
_0211B6F0:
	str r7, [sp]
	ldr r0, [r9, #0x67c]
	mov r3, r7
	mov r1, #3
	bl  FUN_ov16_02110938
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r9, #0x598]
	mov r2, r7
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r9, #0x52c]
	mov r2, r6
	bl  FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r9, #0x530]
	mov r2, r6
	b _0211B8D4
_0211B73C:
	mov r5, #0x14
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_0210ee78
	ldr r2, _0211B93C ; =0x00000803
	add r1, r9, #0xe00
	mov r0, r9
	strh r2, [r1, #0xf8]
	bl FUN_ov57_02122554
	mov r1, r8
	mov r7, #3
	mov r0, r9
	mov r2, r1
	mov r3, r7
	str r1, [sp]
	bl FUN_ov57_0211c8c4
	mov r0, r9
	bl FUN_ov57_02123f34
	str r10, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r6, #0xa8
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #0x47
	mov r3, r10
	bl  FUN_ov16_0210fba4
	str r6, [sp]
	mov r0, #0x8c
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r7
	mov r3, r10
	mov r2, #0x48
	bl  FUN_ov16_0210fba4
	b _0211B8E0
_0211B7E0:
	mov r8, #0
	b _0211B808
_0211B7E8:
	cmp r8, #0x11
	beq _0211B804
	add r1, r9, r8, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x524]
	mov r2, r6
	bl  FUN_ov16_02114204
_0211B804:
	add r8, r8, #1
_0211B808:
	cmp r8, #0x23
	blt _0211B7E8
	ldr r1, _0211B900 ; =0x00004210
	mov r0, r9
	bl FUN_ov57_0211ddc8
	ldr r0, [r4]
	mov r1, #0x28
	bl  FUN_ov16_0210ee78
	add r1, r9, #0xe00
	mov r0, r9
	strh r7, [r1, #0xf8]
	bl FUN_ov57_0212239c
	b _0211B8E0
_0211B83C:
	ldr r0, [r4]
	mov r1, #0x28
	bl  FUN_ov16_0210ee78
	mov r0, r9
	add r2, r9, #0xe00
	mov r3, #0x33
	mov r1, #0
	strh r3, [r2, #0xf8]
	bl FUN_ov57_02121f50
	ldr r0, [r9, #0x24]
	ldr r2, _0211B940 ; =0x02124BAC
	cmp r0, #6
	str r7, [sp]
	ldrne r2, _0211B944 ; =0x02124BD4
	ldr r0, [r9, #0x67c]
	mov r3, r7
	mov r1, #2
	bl  FUN_ov16_02110938
	ldr r0, [r9, #0x67c]
	mov r1, r7
	mov r2, #0
	bl  FUN_ov16_02110a04
	b _0211B8E0
_0211B898:
	mov r0, r9
	bl FUN_ov57_021232e0
	mov r0, r9
	bl FUN_ov57_021236a4
	mov r0, r9
	bl FUN_ov57_02123604
	mov r0, r9
	bl FUN_ov57_02123948
	mov r0, r9
	bl FUN_ov57_021236b4
	add r0, r9, #0xe00
	strh r8, [r0, #0xf8]
	ldr r0, [r5]
	ldr r1, [r9, #0x52c]
	ldr r2, _0211B900 ; =0x00004210
_0211B8D4:
	bl  FUN_ov16_02114204
	mov r0, r9
	bl FUN_ov57_0211b948
_0211B8E0:
	mov r0, r9
	bl FUN_ov57_0211ad14
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B8F0: .word 0x02099EB4
_0211B8F4: .word 0x02099F38
_0211B8F8: .word 0x00007FFF
_0211B8FC: .word 0x0209A454
_0211B900: .word 0x00004210
_0211B904: .word 0x00000F03
_0211B908: .word 0x00000C03
_0211B90C: .word 0x0000FFFE
_0211B910: .word 0x00000333
_0211B914: .word 0x021249C0
_0211B918: .word 0x02124A00
_0211B91C: .word 0x02124A38
_0211B920: .word 0x02124A7C
_0211B924: .word 0x02124AB8
_0211B928: .word 0x02124AE8
_0211B92C: .word 0x02124B0C
_0211B930: .word 0x02124B40
_0211B934: .word 0x02124B68
_0211B938: .word 0x02124BA0
_0211B93C: .word 0x00000803
_0211B940: .word 0x02124BAC
_0211B944: .word 0x02124BD4
	arm_func_end FUN_ov57_0211b3e4

	arm_func_start FUN_ov57_0211b948
FUN_ov57_0211b948: ; 0x0211B948
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211B99C ; =0x02099F38
	mov r6, r0
	ldr r5, _0211B9A0 ; =0x00004210
	ldr r0, [r4]
	ldr r1, [r6, #0x538]
	mov r2, r5
	bl  FUN_ov16_02114204
	ldr r0, [r4]
	ldr r1, [r6, #0x560]
	mov r2, r5
	bl  FUN_ov16_02114204
	ldr r0, [r4]
	ldr r1, [r6, #0xf54]
	mov r2, r5
	bl  FUN_ov16_02114204
	ldr r0, [r4]
	ldr r1, [r6, #0xf38]
	mov r2, r5
	bl  FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, pc}
_0211B99C: .word 0x02099F38
_0211B9A0: .word 0x00004210
	arm_func_end FUN_ov57_0211b948

	arm_func_start FUN_ov57_0211b9a4
FUN_ov57_0211b9a4: ; 0x0211B9A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r1, _0211BADC ; =0x0209A454
	mov r10, r0
	ldrb r0, [r1, #0x31]
	cmp r0, #0
	beq _0211B9CC
	bl  FUN_ov16_020f066c
	cmp r0, #0
	beq _0211B9D8
_0211B9CC:
	ldr r0, _0211BADC ; =0x0209A454
	ldrb r1, [r0, #0x28]
	b _0211B9DC
_0211B9D8:
	mov r1, #2
_0211B9DC:
	add r11, sp, #8
	mov r4, #0
	ldr r0, _0211BAE0 ; =0x0209BA20
	mov r2, r11
	str r4, [sp]
	mov r5, #0x80
	mov r3, #0x10
	str r5, [sp, #4]
	bl FUN_0204b540
	mov r5, r4
	mov r6, r4
	mov r8, r4
	str r4, [r10, #0x674]
	mov r7, #1
_0211BA14:
	mov r0, r8, lsl #1
	ldrh r0, [r11, r0]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	movs r9, r0
	beq _0211BA68
	mov r0, r10
	mov r1, r9
	bl FUN_ov57_0211b338
	cmp r0, #1
	mov r0, r9
	moveq r4, r9
	bl FUN_0206cc00
	cmp r0, #1
	ldr r0, [r10, #0x674]
	moveq r5, r9
	cmp r7, #0
	add r0, r0, #1
	movne r6, r9
	movne r7, #0
	str r0, [r10, #0x674]
_0211BA68:
	add r8, r8, #1
	cmp r8, #0x10
	blt _0211BA14
	cmp r4, #0
	beq _0211BA88
	mov r0, r10
	mov r1, r4
	b _0211BAB4
_0211BA88:
	cmp r5, #0
	beq _0211BA9C
	mov r0, r10
	mov r1, r5
	b _0211BAB4
_0211BA9C:
	cmp r6, #0
	moveq r0, #1
	streq r0, [r10, #0x5b0]
	beq _0211BABC
	mov r0, r10
	mov r1, r6
_0211BAB4:
	bl FUN_ov57_0211b338
	str r0, [r10, #0x5b0]
_0211BABC:
	ldr r0, [r10, #0x5b0]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r10, #0x5b0]
	ldr r0, [r10, #0x5b0]
	str r0, [r10, #0x670]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BADC: .word 0x0209A454
_0211BAE0: .word 0x0209BA20
	arm_func_end FUN_ov57_0211b9a4

	arm_func_start FUN_ov57_0211bae4
FUN_ov57_0211bae4: ; 0x0211BAE4
	stmfd sp!, {r4, lr}
	ldr r1, _0211BB1C ; =0x0209A454
	mov r4, r0
	ldrb r0, [r1, #0x30]
	add r2, r4, #0x288
	mov r1, #0x11
	cmp r0, #0
	ldr r0, _0211BB20 ; =0x0209BA20
	moveq r1, #0xe
	add r2, r2, #0x400
	mov r3, #0x400
	bl  FUN_ov16_020ee0f8
	str r0, [r4, #0xe88]
	ldmfd sp!, {r4, pc}
_0211BB1C: .word 0x0209A454
_0211BB20: .word 0x0209BA20
	arm_func_end FUN_ov57_0211bae4

	arm_func_start FUN_ov57_0211bb24
FUN_ov57_0211bb24: ; 0x0211BB24
	stmfd sp!, {r3, lr}
	cmp r1, #0
	movlt r0, #0
	ldmltfd sp!, {r3, pc}
	add r0, r0, r1, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r0, #0x88]
	ldr r0, _0211BB58 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	cmp r0, #0
	ldrneh r0, [r0, #0x26]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0211BB58: .word 0x0209BA20
	arm_func_end FUN_ov57_0211bb24

	arm_func_start FUN_ov57_0211bb5c
FUN_ov57_0211bb5c: ; 0x0211BB5C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	cmp r6, #0
	mvnle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xe88]
	mov r5, #0
	cmp r0, #0
	ble _0211BBC4
	ldr r4, _0211BBCC ; =0x0209BA20
_0211BB88:
	add r0, r7, r5, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r0, #0x88]
	mov r0, r4
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _0211BBB4
	ldrh r0, [r0, #0x26]
	cmp r0, r6
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BBB4:
	ldr r0, [r7, #0xe88]
	add r5, r5, #1
	cmp r5, r0
	blt _0211BB88
_0211BBC4:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BBCC: .word 0x0209BA20
	arm_func_end FUN_ov57_0211bb5c

	arm_func_start FUN_ov57_0211bbd0
FUN_ov57_0211bbd0: ; 0x0211BBD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	cmp r7, #0
	mvnle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, [r0, #0xf08]
	ldr r0, [r0, #0xf0c]
	add r6, r0, r5
	cmp r5, r6
	bge _0211BC2C
	ldr r4, _0211BC34 ; =0x0209BA20
_0211BBFC:
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _0211BC20
	ldrh r0, [r0, #0x26]
	cmp r0, r7
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC20:
	add r5, r5, #1
	cmp r5, r6
	blt _0211BBFC
_0211BC2C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC34: .word 0x0209BA20
	arm_func_end FUN_ov57_0211bbd0

	arm_func_start FUN_ov57_0211bc38
FUN_ov57_0211bc38: ; 0x0211BC38
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r7, #0
	mov r4, r2
	str r7, [r8]
	ldr r5, _0211BCC8 ; =0x0209BA20
	str r7, [r4]
	mov r6, #1
_0211BC58:
	mov r0, r5
	mov r1, r6
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _0211BCA0
	ldrb r0, [r0, #0x1d]
	cmp r0, #0xe
	beq _0211BC80
	cmp r0, #0x11
	bne _0211BCA0
_0211BC80:
	ldr r0, [r8]
	cmp r0, #0
	streq r6, [r8]
	cmp r7, #0
	beq _0211BC9C
	cmp r6, r7
	ble _0211BCA0
_0211BC9C:
	mov r7, r6
_0211BCA0:
	add r6, r6, #1
	cmp r6, #0x400
	blt _0211BC58
	ldr r0, [r8]
	cmp r0, #0
	moveq r0, #0
	subne r0, r7, r0
	addne r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BCC8: .word 0x0209BA20
	arm_func_end FUN_ov57_0211bc38

	arm_func_start FUN_ov57_0211bccc
FUN_ov57_0211bccc: ; 0x0211BCCC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0211BCDC:
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x4e4]
	cmp r0, #0
	beq _0211BCFC
	bl FUN_0206cbf8
	cmp r5, r0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
_0211BCFC:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211BCDC
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov57_0211bccc

	arm_func_start FUN_ov57_0211bd10
FUN_ov57_0211bd10: ; 0x0211BD10
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0211BD20:
	add r0, r6, r4, lsl #2
	ldr r1, [r0, #0x4e4]
	cmp r1, #0
	beq _0211BD44
	mov r0, r6
	bl FUN_ov57_0211b338
	cmp r5, r0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
_0211BD44:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211BD20
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov57_0211bd10

	arm_func_start FUN_ov57_0211bd58
FUN_ov57_0211bd58: ; 0x0211BD58
	stmfd sp!, {r3, lr}
	bl FUN_ov57_0211bd74
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_0206cbf8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov57_0211bd58

	arm_func_start FUN_ov57_0211bd74
FUN_ov57_0211bd74: ; 0x0211BD74
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov57_0211bd10
	cmp r0, #0
	movlt r0, #0
	addge r0, r4, r0, lsl #2
	ldrge r0, [r0, #0x4e4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov57_0211bd74

	arm_func_start FUN_ov57_0211bd94
FUN_ov57_0211bd94: ; 0x0211BD94
	cmp r1, r3
	ldrgt r0, [sp, #4]
	cmpgt r0, r1
	ldrgt r0, [sp]
	cmpgt r2, r0
	ldrgt r0, [sp, #8]
	cmpgt r0, r2
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov57_0211bd94

	arm_func_start FUN_ov57_0211bdbc
FUN_ov57_0211bdbc: ; 0x0211BDBC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211BE40 ; =0x0209A454
	mov r5, r0
	ldrb r0, [r1, #0x28]
	mov r4, #0
	ldr r1, [r5, #0x5b0]
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_020efb6c
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	bne _0211BE00
	ldr r0, _0211BE44 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211BE00:
	ldr r0, [r5, #0xef4]
	mov r1, #4
	cmp r0, #9
	moveq r0, #2
	movne r0, #9
	str r0, [r5, #0xef4]
	ldr r0, _0211BE48 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	ldrne r1, [r5, #0xef4]
	strneh r1, [r0, #0x30]
	ldr r0, _0211BE44 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211BE40: .word 0x0209A454
_0211BE44: .word 0x0209AC44
_0211BE48: .word 0x02099EB4
	arm_func_end FUN_ov57_0211bdbc

	arm_func_start FUN_ov57_0211be4c
FUN_ov57_0211be4c: ; 0x0211BE4C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211BF88 ; =0x0209A454
	mov r4, r0
	ldrb r0, [r1, #0x32]
	cmp r0, #0
	beq _0211BE70
	ldrb r0, [r1, #0x29]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_0211BE70:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _0211BEC0
	mov r1, #1
	mov r0, r4
	str r1, [r4, #0xe94]
	bl FUN_ov57_0211f7e8
	mov r1, r0
	mov r0, r4
	bl FUN_ov57_0211bb5c
	cmp r0, #0
	addlt r0, r4, #0xe00
	movlt r1, #0
	strlth r1, [r0, #0x9c]
	blt _0211BF6C
	add r0, r4, r0, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r0, #0x88]
_0211BEB8:
	add r0, r4, #0xe00
	b _0211BF68
_0211BEC0:
	cmp r0, #8
	bne _0211BEF0
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x7b]
	ldr r0, [r0, #0x84]
	mov r2, #0xd
	add r0, r0, r1, lsl #3
	add r0, r4, r0, lsl #1
	str r2, [r4, #0xe94]
	add r0, r0, #0xf00
	ldrh r1, [r0, #0xf8]
	b _0211BEB8
_0211BEF0:
	ldr r0, _0211BF88 ; =0x0209A454
	mov r5, #0
	ldrb r0, [r0, #0x28]
	ldr r1, [r4, #0x5b0]
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_020efb6c
	add r1, r4, #0xe00
	strh r0, [r1, #0x98]
	ldrh r0, [r1, #0x98]
	mov r1, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	bne _0211BF48
	ldr r0, [r4, #0x10]
	str r5, [r4, #0xe94]
	ldr r2, [r0]
	add r1, r4, #0x294
	ldr r2, [r2, #0x3c]
	add r1, r1, #0xc00
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_0211BF48:
	add r0, r4, #0xe00
	ldrh r0, [r0, #0x98]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0xef4]
	strne r0, [r4, #0xe94]
	streq r5, [r4, #0xe94]
	add r0, r4, #0xe00
_0211BF68:
	strh r1, [r0, #0x9c]
_0211BF6C:
	ldr r0, [r4, #0x10]
	add r1, r4, #0x294
	ldr r2, [r0]
	add r1, r1, #0xc00
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_0211BF88: .word 0x0209A454
	arm_func_end FUN_ov57_0211be4c

	arm_func_start FUN_ov57_0211bf8c
FUN_ov57_0211bf8c: ; 0x0211BF8C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #0x524]
	cmp r0, #0
	bne _0211C004
	ldr r4, _0211C0F0 ; =0x02099F38
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_02112724
	mov r7, r0
	str r7, [r6, #0x524]
	ldr r3, [r6, #0x438]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r5, #0
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r7
	sub r3, r5, #1
	mov r2, #0x12c
	bl  FUN_ov16_02112c90
_0211C004:
	ldr r0, [r6, #0x528]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211C0F0 ; =0x02099F38
	mov r5, #1
	ldr r0, [r7]
	mov r2, r5
	mov r1, #2
	bl  FUN_ov16_02112724
	ldrb r1, [r6, #0x30]
	mov r4, r0
	str r4, [r6, #0x528]
	cmp r1, #0
	bne _0211C0BC
	ldr r3, [r6, #0x43c]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, _0211C0F4 ; =0x0209A454
	mov r3, #8
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	beq _0211C070
	mov r0, #0x38
	b _0211C074
_0211C070:
	mov r0, #0x20
_0211C074:
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_02113b78
	ldr r7, _0211C0F0 ; =0x02099F38
	ldr r3, [r6, #0x440]
	ldr r0, [r7]
	mov r1, r4
	add r2, r5, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7]
	mov r1, r4
	add r2, r5, #1
	bl  FUN_ov16_02113b78
_0211C0BC:
	ldr r5, _0211C0F0 ; =0x02099F38
	mov r6, #0
	ldr r0, [r5]
	mov r1, r4
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_0211346c
	ldr r0, [r5]
	mov r1, r4
	sub r3, r6, #1
	mov r2, #0x12c
	bl  FUN_ov16_02112c90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C0F0: .word 0x02099F38
_0211C0F4: .word 0x0209A454
	arm_func_end FUN_ov57_0211bf8c

	arm_func_start FUN_ov57_0211c0f8
FUN_ov57_0211c0f8: ; 0x0211C0F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r1, [r6, #0xf1b]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r1, r5
	bl FUN_ov57_0211c158
	mov r4, #1
	mov r0, r6
	mov r1, r4
	bl FUN_ov57_0211c158
	mov r0, r6
	mov r1, #2
	bl FUN_ov57_0211c158
	mov r0, r6
	mov r1, r5
	bl FUN_ov57_0211c1a0
	mov r0, r6
	mov r1, r4
	bl FUN_ov57_0211c1a0
	mov r0, r6
	bl FUN_ov57_0211bf8c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov57_0211c0f8

	arm_func_start FUN_ov57_0211c158
FUN_ov57_0211c158: ; 0x0211C158
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r4, _0211C19C ; =0x02099F38
	ldr r1, [r0, #0x438]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, r5, lsl #2
	mov r2, #0
	ldr r1, [r0, #0x438]
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
	ldmfd sp!, {r4, r5, r6, pc}
_0211C19C: .word 0x02099F38
	arm_func_end FUN_ov57_0211c158

	arm_func_start FUN_ov57_0211c1a0
FUN_ov57_0211c1a0: ; 0x0211C1A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x524]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211C1D8 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x524]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C1D8: .word 0x02099F38
	arm_func_end FUN_ov57_0211c1a0

	arm_func_start FUN_ov57_0211c1dc
FUN_ov57_0211c1dc: ; 0x0211C1DC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r1, _0211C2EC ; =0x0209A454
	mov r6, r0
	ldrb r0, [r1, #0x32]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r4, #0x20
	str r4, [sp, #8]
	bl FUN_02004f78
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r4
	bl DC_FlushRange
	mov r7, #1
	str r7, [sp]
	add r4, sp, #8
	str r4, [sp, #4]
	ldr r1, [r6, #0x408]
	mov r0, r6
	mov r2, r5
	mov r3, r7
	bl FUN_ov57_0211c348
	str r7, [sp]
	str r4, [sp, #4]
	mov r2, r0
	ldr r1, [r6, #0x414]
	mov r0, r6
	mov r3, #2
	bl FUN_ov57_0211c348
	mov r2, r0
	add r0, r6, #0x3a8
	add r4, r0, #0xc00
	ldr r0, [r6, #0xfa8]
	cmp r0, #0
	ldrne r1, [r4, #4]
	cmpne r1, #0
	movne r5, r7
	cmp r5, #0
	beq _0211C2E0
	ldrh r5, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	add r2, r2, #1
	mov r3, #0
	mul r1, r5, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	ldrh r3, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	ldr r0, [r4, #4]
	ldr r1, [sp, #8]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_02005a1c
	ldrh r1, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	ldr r2, [sp, #8]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #8]
_0211C2E0:
	bl  FUN_ov16_020f10ac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C2EC: .word 0x0209A454
	arm_func_end FUN_ov57_0211c1dc

	arm_func_start FUN_ov57_0211c2f0
FUN_ov57_0211c2f0: ; 0x0211C2F0
	stmfd sp!, {r3, lr}
	ldr r1, _0211C344 ; =0x0209A454
	ldrb r1, [r1, #0x32]
	cmp r1, #0
	ldrneb r1, [r0, #0xfa4]
	cmpne r1, #0
	ldrne r3, [r0, #0x420]
	cmpne r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0xfa0]
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
_0211C344: .word 0x0209A454
	arm_func_end FUN_ov57_0211c2f0

	arm_func_start FUN_ov57_0211c348
FUN_ov57_0211c348: ; 0x0211C348
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x1c]
	movs r7, r1
	mov r6, r2
	mov r5, r3
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r2, r5
	add r1, r6, #1
	bl  FUN_ov16_020f18e8
	mov r6, r0
	cmp r4, #0
	beq _0211C394
	ldr r0, [sp, #0x18]
	ldr r2, [r4]
	mov r1, r7
	bl  FUN_ov16_020f19d4
	str r0, [r4]
_0211C394:
	cmp r5, #0
	blt _0211C3AC
	mov r0, r7
	mov r2, r5
	mov r1, #0
	bl  FUN_ov16_020f1138
_0211C3AC:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov57_0211c348

	arm_func_start FUN_ov57_0211c3b4
FUN_ov57_0211c3b4: ; 0x0211C3B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211C4C0 ; =0x0209A454
	mov r4, r0
	ldrb r0, [r1, #0x28]
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211C408
	ldr r0, _0211C4C4 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211C4C8 ; =0x0209BA20
	bl FUN_020731d0
	cmp r0, #0
	ldreq r0, _0211C4CC ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211C408:
	mov r5, #0
	b _0211C430
_0211C410:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0x4e4]
	cmp r0, #0
	beq _0211C42C
	bl FUN_0206d714
	cmp r0, #0
	bne _0211C438
_0211C42C:
	add r5, r5, #1
_0211C430:
	cmp r5, #0x10
	blt _0211C410
_0211C438:
	cmp r5, #0x10
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x544]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _0211C4D0 ; =0x02099F38
	mov r1, #1
	ldr r0, [r5]
	mov r2, r1
	bl  FUN_ov16_02112724
	movs r6, r0
	str r6, [r4, #0x544]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r4, #0x464]
	ldr r0, [r5]
	mov r1, r6
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r4, #0
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_0211346c
	ldr r0, [r5]
	mov r1, r6
	mov r2, #0xf0
	bl  FUN_ov16_02112b98
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_02112f04
	ldmfd sp!, {r4, r5, r6, pc}
_0211C4C0: .word 0x0209A454
_0211C4C4: .word 0x020A0640
_0211C4C8: .word 0x0209BA20
_0211C4CC: .word 0x02099E98
_0211C4D0: .word 0x02099F38
	arm_func_end FUN_ov57_0211c3b4

	arm_func_start FUN_ov57_0211c4d4
FUN_ov57_0211c4d4: ; 0x0211C4D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	b _0211C510
_0211C4E4:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x4e4]
	cmp r0, #0
	beq _0211C50C
	mov r1, r4, lsl #0x10
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211a404
	cmp r0, #0
	bne _0211C518
_0211C50C:
	add r4, r4, #1
_0211C510:
	cmp r4, #0x10
	blt _0211C4E4
_0211C518:
	cmp r4, #0x10
	ldmgefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x30]
	cmp r0, #0
	ldreq r0, _0211C5F4 ; =0x0209A454
	ldreqb r0, [r0, #0x29]
	cmpeq r0, #0
	bne _0211C58C
	add r4, r4, #1
	mov r6, #0
	b _0211C584
_0211C544:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x4e4]
	cmp r0, #0
	beq _0211C580
	mov r1, r4, lsl #0x10
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211a404
	cmp r0, #0
	beq _0211C580
	mov r1, r4, lsl #0x10
	mov r0, r5
	mov r2, r6
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211a4f8
_0211C580:
	add r4, r4, #1
_0211C584:
	cmp r4, #0x10
	blt _0211C544
_0211C58C:
	ldr r0, [r5, #0x548]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211C5F8 ; =0x02099F38
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl  FUN_ov16_02112724
	movs r6, r0
	str r6, [r5, #0x548]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r5, #0x468]
	ldr r0, [r4]
	mov r1, r6
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r6
	mov r2, #0xf0
	bl  FUN_ov16_02112b98
	ldmfd sp!, {r4, r5, r6, pc}
_0211C5F4: .word 0x0209A454
_0211C5F8: .word 0x02099F38
	arm_func_end FUN_ov57_0211c4d4

	arm_func_start FUN_ov57_0211c5fc
FUN_ov57_0211c5fc: ; 0x0211C5FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl  FUN_ov16_020f066c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x56c]
	cmp r0, #0
	bne _0211C634
	ldr r0, _0211C688 ; =0x02099F38
	mov r1, #0x10
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r6, #0x56c]
_0211C634:
	ldr r4, _0211C688 ; =0x02099F38
	ldr r5, [r6, #0x56c]
	ldr r2, [r6, #0x4a8]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r4]
	mov r1, r5
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	ldr r2, _0211C68C ; =0x0000010E
	mov r1, r5
	bl  FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	bl  FUN_ov16_02113390
	ldmfd sp!, {r4, r5, r6, pc}
_0211C688: .word 0x02099F38
_0211C68C: .word 0x0000010E
	arm_func_end FUN_ov57_0211c5fc

	arm_func_start FUN_ov57_0211c690
FUN_ov57_0211c690: ; 0x0211C690
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x550]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211C71C ; =0x02099F38
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl  FUN_ov16_02112724
	movs r5, r0
	str r5, [r6, #0x550]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x460]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r4]
	mov r1, r5
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r5
	mov r2, #0xfa
	bl  FUN_ov16_02112b98
	ldr r0, [r6, #0x674]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	ldr r1, [r6, #0x550]
	mov r2, #2
	bl  FUN_ov16_02114370
	ldmfd sp!, {r4, r5, r6, pc}
_0211C71C: .word 0x02099F38
	arm_func_end FUN_ov57_0211c690

	arm_func_start FUN_ov57_0211c720
FUN_ov57_0211c720: ; 0x0211C720
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r6, r0
	mov r4, r2
	mov r7, r3
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r5, #0x23
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0x2a
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x524]
	cmp r0, #0
	bne _0211C790
	ldr r0, _0211C8BC ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	add r1, r6, r5, lsl #2
	str r0, [r1, #0x524]
_0211C790:
	add r0, r6, r4, lsl #2
	add r1, r6, r5, lsl #2
	ldr r6, [r1, #0x524]
	ldr r2, [r0, #0x438]
	ldr r4, _0211C8BC ; =0x02099F38
	mov r1, r6
	ldr r0, [r4]
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r5, #0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl  FUN_ov16_0211346c
	ldrh r2, [sp, #0x38]
	ldr r0, [r4]
	mov r1, r6
	bl  FUN_ov16_02112b98
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r6
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldr r0, [r4]
	mov r4, #1
	mov r1, r6
	mov r2, #2
	mov r3, r4
	bl  FUN_ov16_0211329c
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	str r1, [sp]
	ldr r0, _0211C8C0 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r6
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fbe8
	movs r8, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [sp, #0x34]
	strb r4, [r8, #0x11]
	ldrh r6, [sp, #0x30]
	strb r0, [r8, #0x10]
	strb r4, [r8, #0xf]
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r8, #0x3a
	strh r6, [r8, #0xc]
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r8, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	add r2, r7, #1
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C8BC: .word 0x02099F38
_0211C8C0: .word 0x02099EB4
	arm_func_end FUN_ov57_0211c720

	arm_func_start FUN_ov57_0211c8c4
FUN_ov57_0211c8c4: ; 0x0211C8C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211C974 ; =0x02099EB4
	mov r9, r0
	ldr r0, [r5]
	mov r4, r4, lsl #0x10
	mov r8, r1
	mov r1, r4, lsr #0x10
	mov r7, r2
	mov r6, r3
	mov r5, #0
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211C978 ; =0x02099F38
	str r5, [sp]
	add r1, r9, r8, lsl #2
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x524]
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0211401c
	mov r1, r5
	mov r2, r8
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	add r0, r4, #0x3a
	mov r3, r5
	bl  FUN_ov16_0210e720
	mov r2, r8
	add r0, r4, #0x3e
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C974: .word 0x02099EB4
_0211C978: .word 0x02099F38
	arm_func_end FUN_ov57_0211c8c4

	arm_func_start FUN_ov57_0211c97c
FUN_ov57_0211c97c: ; 0x0211C97C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	ldr r0, [r5, #0x24]
	mov r4, #2
	sub r0, r0, #1
	cmp r0, #1
	movhi r4, #0
	bl  FUN_ov16_020f066c
	mov r0, r0, lsl #4
	rsb r0, r0, #0x68
	str r0, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r1, #2
	mov r3, r4
	str r1, [sp, #8]
	mov r0, #0x1e
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r2, #0
	str r2, [sp, #0x14]
	mov r4, #0x118
	mov r0, r5
	mov r2, #3
	str r4, [sp, #0x18]
	bl FUN_ov57_0211c720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov57_0211c97c

	arm_func_start FUN_ov57_0211c9f4
FUN_ov57_0211c9f4: ; 0x0211C9F4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	ldr r0, [r5, #0x24]
	mov r4, #0
	cmp r0, #0
	movne r4, #2
	bl  FUN_ov16_020f066c
	mov r0, r0, lsl #4
	rsb r0, r0, #0xd0
	str r0, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r1, #3
	mov r3, r4
	str r1, [sp, #8]
	mov r0, #0x1e
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r2, #0
	str r2, [sp, #0x14]
	mov r4, #0x118
	mov r0, r5
	mov r2, #4
	str r4, [sp, #0x18]
	bl FUN_ov57_0211c720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov57_0211c9f4

	arm_func_start FUN_ov57_0211ca68
FUN_ov57_0211ca68: ; 0x0211CA68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0x534]
	cmp r0, #0
	bne _0211CA94
	ldr r0, _0211CBBC ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	str r0, [r7, #0x534]
_0211CA94:
	ldr r4, _0211CBBC ; =0x02099F38
	ldr r5, [r7, #0x534]
	ldr r2, [r7, #0x454]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r6, #0
	str r6, [sp]
	mov r8, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r8
	mov r3, #0xd8
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r5
	mov r2, r8
	mov r3, #0x118
	bl  FUN_ov16_021139bc
	ldr r0, [r7, #0x24]
	cmp r0, #0
	movne r6, #2
	bne _0211CB00
	ldr r0, [r7, #0xef4]
	cmp r0, #2
	movne r6, r8
_0211CB00:
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211CBBC ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_0211401c
	ldr r8, _0211CBC0 ; =0x02099EB4
	mov r9, #4
	ldr r0, [r8]
	mov r1, r9
	bl  FUN_ov16_0210e7d0
	movs r6, r0
	bne _0211CB60
	mov r0, #0xa
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r9
	mov r3, r5
	bl  FUN_ov16_0210fbe8
	mov r6, r0
_0211CB60:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0
	mov r5, #0x10
	mov r0, r6
	mov r2, r4
	mov r1, #0xa0
	mov r3, #0x58
	str r5, [sp]
	bl  FUN_ov16_0210e674
	mov r0, #1
	strb r0, [r6, #0x11]
	mov r0, #0x400
	strh r0, [r6, #0xc]
	ldr r0, _0211CBC4 ; =FUN_ov57_02121e6c
	str r4, [r6, #0x1c]
	str r0, [r6, #0x20]
	ldr r0, _0211CBC8 ; =FUN_ov57_02121df4
	str r4, [r6, #0x24]
	str r0, [r6, #0x28]
	ldr r0, [r7, #0xef4]
	strh r0, [r6, #0x30]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CBBC: .word 0x02099F38
_0211CBC0: .word 0x02099EB4
_0211CBC4: .word FUN_ov57_02121e6c
_0211CBC8: .word FUN_ov57_02121df4
	arm_func_end FUN_ov57_0211ca68

	arm_func_start FUN_ov57_0211cbcc
FUN_ov57_0211cbcc: ; 0x0211CBCC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, [r4, #0x24]
	cmp r0, #4
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	bl  FUN_ov16_020f066c
	mov r0, r0, lsl #4
	rsb r0, r0, #0x98
	mov r1, #5
	str r0, [sp]
	mov r0, #0xa8
	stmib sp, {r0, r1}
	mov r0, #0x1e
	str r0, [sp, #0xc]
	mov r0, #0x800
	str r0, [sp, #0x10]
	mov r3, #0
	mov r0, r4
	mov r2, r1
	str r3, [sp, #0x14]
	mov r12, #0x118
	str r12, [sp, #0x18]
	bl FUN_ov57_0211c720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov57_0211cbcc

	arm_func_start FUN_ov57_0211cc38
FUN_ov57_0211cc38: ; 0x0211CC38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r0, [r10, #0x5ac]
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211CE04 ; =0x0209A454
	ldrb r1, [r0, #0x31]
	ldrb r5, [r0, #0x28]
	cmp r1, #0
	beq _0211CC7C
	mov r5, #2
	ldr r0, _0211CE08 ; =0x0209BA20
	mov r1, r5
	mov r2, #1
	bl FUN_02072560
_0211CC7C:
	ldr r0, _0211CE0C ; =0x020A1640
	ldrb r0, [r0, #0x22]
	cmp r0, #0x63
	bne _0211CCA4
	bl  FUN_ov16_020f083c
	mov r5, r0
	ldr r0, _0211CE08 ; =0x0209BA20
	mov r1, r5
	mov r2, #1
	bl FUN_02072560
_0211CCA4:
	ldr r7, _0211CE08 ; =0x0209BA20
	mov r1, r5
	mov r0, r7
	bl FUN_0207249c
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	mov r1, r5
	bl FUN_020725ac
	ldr r0, _0211CE10 ; =0x02099F38
	mov r1, #7
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r4, r0
	str r4, [r10, #0x5ac]
	mov r1, r5
	ldrb r8, [r6, #0x43]
	mov r0, r7
	mov r5, #0
	bl FUN_020724e8
	str r5, [sp]
	mov r9, r0
	mov r0, #0x98
	str r0, [sp, #4]
	mov r7, #0x10
	add r5, r5, #1
	str r7, [sp, #8]
	mov r0, #0x91
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r2, r5
	mov r3, #0x28
	bl FUN_ov57_02123e9c
	mov r0, #0x91
	mov r6, #0xd0
	sub r11, r0, #1
_0211CD40:
	ldr r0, _0211CE14 ; =0x66666667
	mov r1, r8, lsr #0x1f
	smull r2, r3, r0, r8
	add r3, r1, r3, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r3
	sub r3, r8, r1
	stmia sp, {r3, r6, r7}
	add r5, r5, #1
	mov r0, r10
	mov r1, r4
	mov r2, r5
	mov r3, #0x29
	str r11, [sp, #0xc]
	bl FUN_ov57_02123e9c
	ldr r0, _0211CE14 ; =0x66666667
	mov r2, r8
	smull r1, r8, r0, r2
	mov r0, r2, lsr #0x1f
	adds r8, r0, r8, asr #2
	sub r6, r6, #8
	bne _0211CD40
	mov r0, #0x91
	ldr r11, _0211CE14 ; =0x66666667
	mov r6, #0xf0
	mov r7, #0x10
	sub r8, r0, #1
_0211CDAC:
	smull r1, r2, r11, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	stmia sp, {r2, r6, r7}
	add r5, r5, #1
	mov r0, r10
	mov r1, r4
	mov r2, r5
	mov r3, #0x29
	str r8, [sp, #0xc]
	bl FUN_ov57_02123e9c
	mov r1, r9
	smull r0, r9, r11, r1
	mov r0, r1, lsr #0x1f
	adds r9, r0, r9, asr #2
	sub r6, r6, #8
	bne _0211CDAC
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CE04: .word 0x0209A454
_0211CE08: .word 0x0209BA20
_0211CE0C: .word 0x020A1640
_0211CE10: .word 0x02099F38
_0211CE14: .word 0x66666667
	arm_func_end FUN_ov57_0211cc38

	arm_func_start FUN_ov57_0211ce18
FUN_ov57_0211ce18: ; 0x0211CE18
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x5ac]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211CE44 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0x5ac]
	ldmfd sp!, {r4, pc}
_0211CE44: .word 0x02099F38
	arm_func_end FUN_ov57_0211ce18

	arm_func_start FUN_ov57_0211ce48
FUN_ov57_0211ce48: ; 0x0211CE48
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldr r0, [r7, #0x554]
	cmp r0, #0
	bne _0211CE78
	ldr r0, _0211CFFC ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r7, #0x554]
_0211CE78:
	ldr r8, _0211CFFC ; =0x02099F38
	ldr r6, [r7, #0x554]
	mov r5, #1
	ldr r0, [r8]
	mov r1, r6
	sub r3, r5, #2
	mov r2, #0x118
	bl  FUN_ov16_02112c90
	ldr r3, [r7, #0x4e0]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r4, #0
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_02113d88
	mov r0, #8
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, #0x50
	bl  FUN_ov16_02113d08
	mov r0, #0x94
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, #0xa8
	bl  FUN_ov16_02113b78
	ldr r0, [r7, #0x24]
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r7, #0x450]
	add r7, r5, #1
	ldr r0, [r8]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r7
	mov r3, r4
	bl  FUN_ov16_0211401c
	ldr r0, [r8]
	mov r1, r6
	mov r2, r7
	mov r3, r4
	bl  FUN_ov16_02113944
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r7
	mov r3, #0x98
	bl  FUN_ov16_02113b78
	ldr r0, [r8]
	mov r1, r6
	mov r2, r7
	mov r3, #2
	bl  FUN_ov16_02113f7c
	mov r0, #0x8e
	str r0, [sp]
	mov r0, #0x5b
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #0x1e
	str r0, [sp, #0xc]
	ldr r0, _0211D000 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r0]
	mov r3, #0xa1
	mov r2, #9
	bl  FUN_ov16_0210fba4
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	strh r6, [r0, #0x34]
	strh r7, [r0, #0x36]
	ldr r2, _0211D004 ; =FUN_ov57_02121f00
	strb r4, [r0, #0x38]
	ldr r1, _0211D008 ; =FUN_ov57_02121ed0
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r4, [r0, #0x24]
	str r4, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211CFFC: .word 0x02099F38
_0211D000: .word 0x02099EB4
_0211D004: .word FUN_ov57_02121f00
_0211D008: .word FUN_ov57_02121ed0
	arm_func_end FUN_ov57_0211ce48

	arm_func_start FUN_ov57_0211d00c
FUN_ov57_0211d00c: ; 0x0211D00C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, r1
	mov r4, #0x13
	mov r7, #0
	ldr r6, _0211D0C0 ; =0x02099F38
	b _0211D04C
_0211D028:
	add r0, r8, r4, lsl #2
	ldr r1, [r0, #0x524]
	cmp r1, #0
	ble _0211D048
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
	add r0, r8, r4, lsl #2
	str r7, [r0, #0x524]
_0211D048:
	add r4, r4, #1
_0211D04C:
	cmp r4, #0x1c
	ble _0211D028
	mov r4, #0
	ldr r6, _0211D0C0 ; =0x02099F38
	b _0211D07C
_0211D060:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x30]
	cmp r1, #0
	ble _0211D078
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211D078:
	add r4, r4, #1
_0211D07C:
	cmp r4, #0x10
	blt _0211D060
	ldr r1, [r5, #0x70]
	cmp r1, #0
	ble _0211D09C
	ldr r0, _0211D0C0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211D09C:
	mov r4, #0xb4
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D0C0: .word 0x02099F38
	arm_func_end FUN_ov57_0211d00c

	arm_func_start FUN_ov57_0211d0c4
FUN_ov57_0211d0c4: ; 0x0211D0C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r5, #0
	str r5, [sp, #0x10]
	str r5, [sp]
	mov r2, #0x100
	str r2, [sp, #4]
	mov r2, #0xc0
	str r2, [sp, #8]
	mov r4, #0x14
	ldr r6, _0211D5E4 ; =0x02099EB4
	str r4, [sp, #0xc]
	mov r10, r0
	ldr r0, [r6]
	mov r7, #3
	mov r9, r1
	mov r1, r7
	mov r3, r5
	mov r2, #0xa
	bl  FUN_ov16_0210fba4
	ldr r0, _0211D5E8 ; =0x021240EC
	mov r1, r7
	ldrsh r7, [r0, #0xe]
	mov r2, #0xb
	add r3, r7, #0x18
	str r3, [sp]
	ldrsh r3, [r0, #0xc]
	add r0, r7, #0x9c
	add r7, r3, #0x80
	str r7, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r6]
	bl  FUN_ov16_0210fba4
	mov r0, r10
	bl FUN_ov57_0211f7e8
	mov r1, r0
	mov r0, r10
	bl FUN_ov57_0211bb5c
	movs r7, r0
	mov r0, r10
	mov r1, r9
	movmi r7, r5
	add r4, sp, #0x10
	bl FUN_ov57_0211e818
	ldr r0, [r10, #0x24]
	mov r1, #8
	str r0, [r9, #0x1c]
	ldr r5, [r10, #0xe88]
	mov r11, #0
	str r1, [r9, #8]
	ldr r0, _0211D5E8 ; =0x021240EC
	str r5, [r9, #4]
	str r11, [r9, #0xc]
	ldrsh r3, [r0, #0xc]
	mov r8, #1
	mov r2, #0x70
	strh r3, [r9, #0x90]
	ldrsh r3, [r0, #0xe]
	mov r1, #0x10
	mov r6, #0
	mov r0, #0x8c
	strb r8, [r9, #0x89]
	cmp r5, #8
	movle r8, r11
	strh r3, [r9, #0x92]
	strh r2, [r9, #0x20]
	strh r1, [r9, #0x22]
	strb r8, [r9, #0x88]
	str r6, [r9, #0x84]
	str r0, [r9, #0x8c]
	ldr r0, [r10, #0x478]
	str r0, [r9, #0x80]
	ldr r0, _0211D5E8 ; =0x021240EC
	ldrsh r1, [r0, #6]
	b _0211D218
_0211D1F4:
	ldrsh r0, [r9, #0x90]
	add r3, r9, r6, lsl #2
	strh r0, [r3, #0x94]
	ldrsh r2, [r9, #0x92]
	ldrsh r0, [r9, #0x22]
	add r2, r2, r1
	mla r2, r0, r6, r2
	strh r2, [r3, #0x96]
	add r6, r6, #1
_0211D218:
	ldr r0, [r9, #8]
	cmp r6, r0
	blt _0211D1F4
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov57_0211d80c
	mov r6, #1
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r11
	str r6, [sp]
	bl FUN_ov57_0211d788
	movs r5, r0
	beq _0211D358
	ldr r4, _0211D5EC ; =0x02099F38
	ldr r2, [r10, #0x47c]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	mov r3, r11
	bl  FUN_ov16_0211346c
	ldr r2, [r9, #0x8c]
	ldr r0, [r4]
	sub r2, r2, #1
	mov r2, r2, lsl #0x10
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r3, _0211D5E8 ; =0x021240EC
	ldr r0, [r4]
	ldrsh r2, [r3]
	ldrsh r3, [r3, #2]
	mov r1, r5
	bl  FUN_ov16_02114248
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, r6
	bl  FUN_ov16_0211329c
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _0211D5E4 ; =0x02099EB4
	mov r3, r5
	ldr r0, [r0]
	mov r1, r6
	mov r2, #6
	bl  FUN_ov16_0210fbe8
	movs r5, r0
	beq _0211D358
	strb r6, [r5, #0x11]
	strb r6, [r5, #0x10]
	mov r1, r11
	mov r2, r6
	mov r3, r11
	strb r6, [r5, #0xf]
	mov r4, #0x220
	add r0, r5, #0x3a
	strh r4, [r5, #0xc]
	bl  FUN_ov16_0210e6fc
	mov r1, r11
	mov r2, r11
	mov r3, r11
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	add r0, r5, #0x3e
	mov r1, r11
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r6
	mov r1, r11
	mov r3, r11
	bl  FUN_ov16_0210e720
_0211D358:
	mov r6, #1
	add r2, sp, #0x10
	mov r0, r10
	mov r1, r9
	mov r3, r11
	str r6, [sp]
	bl FUN_ov57_0211d788
	movs r5, r0
	beq _0211D480
	ldr r4, _0211D5EC ; =0x02099F38
	ldr r2, [r10, #0x47c]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r8, #2
	ldr r0, [r4]
	mov r1, r5
	mov r2, r8
	mov r3, r11
	bl  FUN_ov16_0211346c
	ldr r2, [r9, #0x8c]
	ldr r0, [r4]
	sub r2, r2, #1
	mov r2, r2, lsl #0x10
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r3, _0211D5E8 ; =0x021240EC
	ldr r0, [r4]
	ldrsh r2, [r3, #8]
	ldrsh r3, [r3, #0xa]
	mov r1, r5
	bl  FUN_ov16_02114248
	ldr r0, [r4]
	mov r1, r5
	mov r2, r8
	mov r3, r6
	bl  FUN_ov16_0211329c
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _0211D5E4 ; =0x02099EB4
	mov r3, r5
	ldr r0, [r0]
	mov r1, r6
	mov r2, #7
	bl  FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211D480
	strb r6, [r4, #0x11]
	strb r6, [r4, #0x10]
	mov r1, r11
	mov r2, r6
	mov r3, r11
	strb r6, [r4, #0xf]
	mov r5, #0x110
	add r0, r4, #0x3a
	strh r5, [r4, #0xc]
	bl  FUN_ov16_0210e6fc
	mov r1, r11
	mov r2, r8
	mov r3, r11
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r2, r6
	add r0, r4, #0x3e
	mov r1, r11
	mov r3, r11
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r11
	mov r2, #3
	mov r3, r11
	bl  FUN_ov16_0210e720
_0211D480:
	ldr r4, [sp, #0x10]
	mov r6, #0
	str r4, [r10, #0x678]
	mov r4, #5
	add r2, sp, #0x10
	mov r0, r10
	mov r1, r9
	mov r3, r6
	str r4, [sp]
	bl FUN_ov57_0211d788
	movs r8, r0
	beq _0211D534
	ldr r0, [r9, #0x8c]
	ldr r4, _0211D5EC ; =0x02099F38
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r2, [r10, #0x480]
	ldr r0, [r4]
	mov r1, r8
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r5, _0211D5F0 ; =0x02124108
	b _0211D52C
_0211D4EC:
	add r0, r5, r6, lsl #2
	ldrsh r0, [r0, #2]
	mov r1, r6, lsl #2
	ldrsh r3, [r5, r1]
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	add r2, r6, #1
	bl  FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r8
	add r2, r6, #1
	mov r3, r6
	bl  FUN_ov16_0211401c
	add r6, r6, #1
_0211D52C:
	cmp r6, #4
	blt _0211D4EC
_0211D534:
	mov r0, r10
	mov r8, #0
	add r4, sp, #0x10
	bl FUN_ov57_021204bc
	mov r6, r8
	mov r5, #0x28
	b _0211D56C
_0211D550:
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r6
	str r5, [sp]
	bl FUN_ov57_0211d890
	add r6, r6, #1
_0211D56C:
	ldr r0, [r9, #8]
	cmp r6, r0
	blt _0211D550
	add r2, sp, #0x10
	mov r0, r10
	mov r1, r9
	bl FUN_ov57_0211da64
	mov r0, r9
	mov r1, r7
	bl  FUN_ov16_020f52f4
	mov r0, r10
	mov r1, r9
	bl FUN_ov57_0211e9d4
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov57_0211e52c
	mov r0, r10
	mov r1, r9
	bl FUN_ov57_0211e664
	ldr r1, [r9]
	mov r0, r10
	bl FUN_ov57_0211bb24
	str r0, [r10, #0x66c]
	mov r0, r10
	mov r1, r8
	mov r2, r8
	bl FUN_ov57_02120378
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D5E4: .word 0x02099EB4
_0211D5E8: .word 0x021240EC
_0211D5EC: .word 0x02099F38
_0211D5F0: .word 0x02124108
	arm_func_end FUN_ov57_0211d0c4

	arm_func_start FUN_ov57_0211d5f4
FUN_ov57_0211d5f4: ; 0x0211D5F4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r1, _0211D6E8 ; =0x0209A454
	mov r4, r0
	ldrb r0, [r1, #0x32]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	ldr r12, [r4, #0x408]
	cmp r12, #0
	beq _0211D664
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r2}
	mov r0, #8
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0211D6EC ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211D664:
	ldr r12, [r4, #0xfa8]
	add r0, r4, #0x3a8
	add lr, r0, #0xc00
	cmp r12, #0
	ldrne r0, [lr, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211D6D8
	mov r1, #0
	mov r0, #1
	stmia sp, {r0, r1}
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	ldrh r3, [lr, #0xc]
	ldr r0, _0211D6EC ; =0x0209F5C0
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
_0211D6D8:
	mov r0, r4
	bl FUN_ov57_0211d6f0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_0211D6E8: .word 0x0209A454
_0211D6EC: .word 0x0209F5C0
	arm_func_end FUN_ov57_0211d5f4

	arm_func_start FUN_ov57_0211d6f0
FUN_ov57_0211d6f0: ; 0x0211D6F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _0211D784 ; =0x0209F5C0
	mov r5, #0
	mov r4, #2
	mov r8, r0
	mov r7, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	strb r7, [r8, #0xfa4]
	bl  FUN_ov16_020f5eec
	ldr r2, [r8, #0x414]
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	stmia sp, {r4, r5}
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xe
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
_0211D784: .word 0x0209F5C0
	arm_func_end FUN_ov57_0211d6f0

	arm_func_start FUN_ov57_0211d788
FUN_ov57_0211d788: ; 0x0211D788
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x10
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #4
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D808 ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x75]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x74]
	ldr r1, [r5]
	add r2, r6, #0x75
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x30]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D808: .word 0x02099F38
	arm_func_end FUN_ov57_0211d788

	arm_func_start FUN_ov57_0211d80c
FUN_ov57_0211d80c: ; 0x0211D80C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, #1
	mov r3, r6
	mov r7, r1
	str r4, [sp]
	bl FUN_ov57_0211d788
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x8c]
	ldr r4, _0211D88C ; =0x02099F38
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r2, [r7, #0x90]
	ldrsh r3, [r7, #0x92]
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_02114248
	ldr r2, [r7, #0x80]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_0211346c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D88C: .word 0x02099F38
	arm_func_end FUN_ov57_0211d80c

	arm_func_start FUN_ov57_0211d890
FUN_ov57_0211d890: ; 0x0211D890
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r11, #2
	mov r6, #1
	mov r8, r3
	mov r9, r1
	mov r3, r6
	str r11, [sp]
	mov r10, r0
	bl FUN_ov57_0211d788
	ldr r1, [r9, #0x8c]
	movs r5, r0
	sub r7, r1, #0x14
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, r8, lsl #2
	ldr r4, _0211DA4C ; =0x02099F38
	ldrsh r2, [r0, #0x94]
	ldrsh r3, [r0, #0x96]
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_02114248
	ldr r2, [r10, #0x45c]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_021137dc
	mov r10, #0
	str r10, [sp]
	ldr r0, [r4]
	ldr r3, [r9, #0x84]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r3, r11
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_02113f7c
	add r3, r7, #1
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #1
	mov r3, #6
	bl  FUN_ov16_02113b78
	ldr r3, [r9, #0x70]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r11, #0xc
	str r11, [sp]
	ldrsh r3, [r9, #0x20]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #1
	bl  FUN_ov16_02113d08
	mul r0, r8, r11
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #1
	mov r3, r10
	bl  FUN_ov16_02113d88
	mov r1, r7, lsl #0x10
	mov r3, r1, lsr #0x10
	ldr r0, [r4]
	add r2, r6, #1
	mov r1, r5
	bl  FUN_ov16_021139bc
	add r3, r9, r8, lsl #2
	ldrsh r6, [r3, #0x96]
	add r0, r8, #0x2f
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r4, #0x80
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	ldr r4, [sp, #0x38]
	ldr r0, _0211DA50 ; =0x02099EB4
	str r4, [sp, #0xc]
	ldrsh r3, [r3, #0x94]
	ldr r0, [r0]
	mov r1, #3
	bl  FUN_ov16_0210fba4
	strh r5, [r0, #0x34]
	ldr r2, _0211DA54 ; =0x0210F940
	strb r10, [r0, #0x38]
	str r2, [r0, #0x1c]
	ldr r1, _0211DA58 ; =0x0210FA20
	ldr r2, _0211DA5C ; =0x0210FB10
	str r1, [r0, #0x20]
	ldr r1, _0211DA60 ; =0x0210FB1C
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DA4C: .word 0x02099F38
_0211DA50: .word 0x02099EB4
_0211DA54: .word 0x0210F940
_0211DA58: .word 0x0210FA20
_0211DA5C: .word 0x0210FB10
_0211DA60: .word 0x0210FB1C
	arm_func_end FUN_ov57_0211d890

	arm_func_start FUN_ov57_0211da64
FUN_ov57_0211da64: ; 0x0211DA64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r1
	ldrb r1, [r6, #0x89]
	mov r7, r0
	mov r4, #3
	cmp r1, #0
	mov r5, #2
	moveq r5, #1
	mov r0, r7
	mov r1, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_ov57_0211d788
	movs r5, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0x8c]
	ldr r8, _0211DB34 ; =0x02099F38
	sub r0, r0, #0x28
	mov r2, r0, lsl #0x10
	ldr r0, [r8]
	mov r1, r5
	mov r2, r2, lsr #0x10
	sub r3, r4, #4
	bl  FUN_ov16_02112c90
	ldrb r0, [r6, #0x89]
	mov r4, #1
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r3, [r7, #0x458]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r7, #0
	str r7, [sp]
	ldr r0, [r8]
	ldr r3, [r6, #0x84]
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DB34: .word 0x02099F38
	arm_func_end FUN_ov57_0211da64

	arm_func_start FUN_ov57_0211db38
FUN_ov57_0211db38: ; 0x0211DB38
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r1
	bl FUN_ov57_0211f89c
	cmp r0, #0
	cmpne r4, #0
	addle sp, sp, #0x10
	ldmlefd sp!, {r4, pc}
	cmp r4, #0x10
	addgt sp, sp, #0x10
	ldmgtfd sp!, {r4, pc}
	sub r12, r4, #1
	add r1, r0, r12, lsl #1
	ldrb r3, [r1, #1]
	mov r2, #0x20
	mov r1, #0x1e
	sub r3, r3, #0x20
	str r3, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r2, [r0, r12, lsl #1]
	ldr r0, _0211DBB8 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	sub r3, r2, #0x10
	mov r2, #0x2e
	bl  FUN_ov16_0210fba4
	mov r1, #1
	strb r1, [r0, #0x12]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0211DBB8: .word 0x02099EB4
	arm_func_end FUN_ov57_0211db38

	arm_func_start FUN_ov57_0211dbbc
FUN_ov57_0211dbbc: ; 0x0211DBBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl FUN_ov57_0211f89c
	cmp r0, #0
	cmpne r4, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	cmp r4, #0x10
	ldmgtfd sp!, {r3, r4, r5, pc}
	sub r2, r4, #1
	add r1, r0, r2, lsl #1
	ldrb r2, [r0, r2, lsl #1]
	ldrb r3, [r1, #1]
	ldr r0, _0211DC10 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	sub r2, r2, #0x10
	sub r3, r3, #0x20
	bl  FUN_ov16_0210fd0c
	ldmfd sp!, {r3, r4, r5, pc}
_0211DC10: .word 0x02099EB4
	arm_func_end FUN_ov57_0211dbbc

	arm_func_start FUN_ov57_0211dc14
FUN_ov57_0211dc14: ; 0x0211DC14
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, [r4, #0x5b4]
	mov r12, r1
	cmp r0, #0
	subgt r2, r2, #2
	cmp r3, #0
	bgt _0211DC64
	ldr r0, _0211DCD4 ; =0x02099F38
	sub r3, r12, #0x10
	sub r1, r2, #0x20
	mov r2, r3, lsl #0x10
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r4, #0x550]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	b _0211DCA4
_0211DC64:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r12, #0x10
	str r0, [sp, #8]
	sub r0, r2, #0x20
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, _0211DCD8 ; =0x02099ED4
	ldr r3, [r4, #0x550]
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_0210e29c
_0211DCA4:
	ldr r0, [r4, #0x674]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _0211DCD4 ; =0x02099F38
	ldr r1, [r4, #0x550]
	ldr r0, [r0]
	mov r2, #2
	mov r3, #1
	bl  FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211DCD4: .word 0x02099F38
_0211DCD8: .word 0x02099ED4
	arm_func_end FUN_ov57_0211dc14

	arm_func_start FUN_ov57_0211dcdc
FUN_ov57_0211dcdc: ; 0x0211DCDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov57_0211f89c
	cmp r0, #0
	cmpne r5, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0x10
	ldmgtfd sp!, {r4, r5, r6, pc}
	sub r1, r5, #1
	add r2, r0, r1, lsl #1
	ldrb r1, [r0, r1, lsl #1]
	ldrb r2, [r2, #1]
	mov r0, r6
	mov r3, r4
	bl FUN_ov57_0211dc14
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov57_0211dcdc

	arm_func_start FUN_ov57_0211dd24
FUN_ov57_0211dd24: ; 0x0211DD24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, #0
	mov r10, r0
	mov r11, #0x104
	mov r7, r9
	mov r6, #1
	ldr r5, _0211DDC0 ; =0x02099EC0
	ldr r4, _0211DDC4 ; =0x02099F58
	b _0211DDB0
_0211DD4C:
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x4e4]
	cmp r0, #0
	beq _0211DDAC
	ldr r0, [r5]
	add r1, r9, #1
	bl FUN_020571e0
	mov r8, r0
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	bl  FUN_ov16_021174ac
	str r7, [sp]
	str r6, [sp, #4]
	ldr r0, [r4]
	mov r1, r8
	mov r2, #4
	mov r3, #3
	bl  FUN_ov16_0211702c
	ldr r0, [r4]
	mov r1, r8
	mov r2, #2
	mov r3, r6
	bl  FUN_ov16_02117598
_0211DDAC:
	add r9, r9, #1
_0211DDB0:
	cmp r9, #0x10
	blt _0211DD4C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DDC0: .word 0x02099EC0
_0211DDC4: .word 0x02099F58
	arm_func_end FUN_ov57_0211dd24

	arm_func_start FUN_ov57_0211ddc8
FUN_ov57_0211ddc8: ; 0x0211DDC8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, #0
	ldr r4, _0211DE24 ; =0x02099F58
	ldr r5, _0211DE28 ; =0x02099EC0
	b _0211DE18
_0211DDE4:
	add r0, r8, r6, lsl #2
	ldr r0, [r0, #0x4e4]
	cmp r0, #0
	beq _0211DE14
	ldr r0, [r5]
	add r1, r6, #1
	bl FUN_020571e0
	movs r1, r0
	beq _0211DE14
	ldr r0, [r4]
	mov r2, r7
	bl  FUN_ov16_021174fc
_0211DE14:
	add r6, r6, #1
_0211DE18:
	cmp r6, #0x10
	blt _0211DDE4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211DE24: .word 0x02099F58
_0211DE28: .word 0x02099EC0
	arm_func_end FUN_ov57_0211ddc8

	arm_func_start FUN_ov57_0211de2c
FUN_ov57_0211de2c: ; 0x0211DE2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	cmp r1, #0
	ble _0211DE48
	bl FUN_ov57_0211f878
	b _0211DE4C
_0211DE48:
	bl FUN_ov57_0211f89c
_0211DE4C:
	movs r8, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r7, r9
	mov r6, #0x20
	mov r5, #0xa
	mov r11, #2
	ldr r4, _0211DEF4 ; =0x02099EB4
	b _0211DEE4
_0211DE74:
	mov r0, r10
	add r1, r9, #1
	bl FUN_ov57_0211bd74
	cmp r0, #0
	beq _0211DEA8
	bl FUN_0206cbf8
	str r7, [sp]
	add r2, r8, r9, lsl #1
	mov r1, r0
	ldrb r3, [r2, #1]
	mov r0, r10
	ldrb r2, [r8, r9, lsl #1]
	bl FUN_ov57_0211df08
_0211DEA8:
	add r0, r8, r9, lsl #1
	ldrb r1, [r0, #1]
	add r0, r9, #0xc
	mov r2, r0, lsl #0x10
	sub r0, r1, #0x20
	stmia sp, {r0, r6}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldrb r3, [r8, r9, lsl #1]
	ldr r0, [r4]
	mov r1, r11
	mov r2, r2, lsr #0x10
	sub r3, r3, #0x10
	bl  FUN_ov16_0210fba4
	add r9, r9, #1
_0211DEE4:
	cmp r9, #0x10
	blt _0211DE74
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DEF4: .word 0x02099EB4
	arm_func_end FUN_ov57_0211de2c

	arm_func_start FUN_ov57_0211def8
FUN_ov57_0211def8: ; 0x0211DEF8
	ldr r12, _0211DF04 ; =FUN_ov57_0211de2c
	mov r1, #0
	bx r12
_0211DF04: .word FUN_ov57_0211de2c
	arm_func_end FUN_ov57_0211def8

	arm_func_start FUN_ov57_0211df08
FUN_ov57_0211df08: ; 0x0211DF08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r7, [sp, #0x48]
	mov r10, r0
	str r1, [sp, #0x1c]
	mov r9, r2
	mov r8, r3
	mov r4, #0x104
	bl FUN_ov57_0211bccc
	movs r6, r0
	addmi sp, sp, #0x20
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, r6, lsl #2
	ldr r0, [r0, #0x4e4]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211E228 ; =0x02099EC0
	add r1, r6, #1
	ldr r0, [r0]
	bl FUN_020571e0
	movs r5, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, r6, lsl #2
	ldr r1, [r0, #0x4e4]
	mov r0, r10
	bl FUN_ov57_0211b338
	ldr r1, [r10, #0x5b4]
	cmp r1, r0
	bne _0211DF90
	cmp r1, #0
	subgt r4, r4, #1
	subgt r8, r8, #2
_0211DF90:
	ldr r0, _0211E22C ; =0x02099F58
	mov r2, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r2, asr #0x10
	bl  FUN_ov16_021174ac
	cmp r7, #0
	bgt _0211DFD4
	ldr r0, _0211E22C ; =0x02099F58
	mov r2, r9, lsl #0x10
	mov r3, r8, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02117514
	b _0211E004
_0211DFD4:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r9}
	str r8, [sp, #0xc]
	str r7, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r2, #1
	ldr r0, _0211E230 ; =0x02099ED4
	str r2, [sp, #0x18]
	ldr r0, [r0]
	mov r3, r5
	bl  FUN_ov16_0210e29c
_0211E004:
	add r0, r10, r6, lsl #2
	ldr r1, [r0, #0x4e4]
	mov r0, r10
	bl FUN_ov57_0211b338
	ldr r1, [r10, #0x5b4]
	cmp r1, r0
	add r0, r10, r6, lsl #2
	ldr r0, [r0, #0x4e4]
	bl FUN_0206d714
	cmp r0, #0
	beq _0211E0A4
	cmp r7, #0
	bgt _0211E064
	ldr r0, _0211E234 ; =0x02099F38
	sub r2, r9, #0x11
	sub r1, r8, #0x25
	mov r2, r2, lsl #0x10
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r10, #0x544]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	b _0211E0A4
_0211E064:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r9, #0x11
	str r0, [sp, #8]
	sub r0, r8, #0x25
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, _0211E230 ; =0x02099ED4
	ldr r3, [r10, #0x544]
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_0210e29c
_0211E0A4:
	ldr r0, _0211E238 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211E188
	add r0, r10, r6, lsl #2
	ldr r0, [r0, #0x4e4]
	bl FUN_0206d6c4
	cmp r0, #0
	bne _0211E188
	add r0, r10, r6, lsl #2
	ldr r0, [r0, #0x4e4]
	bl FUN_0206d4fc
	bl  FUN_ov16_020f08a4
	add r1, r10, r6, lsl #2
	mov r5, r0
	ldr r0, [r1, #0x4e4]
	bl FUN_0206d5f0
	mov r4, r0
	bl  FUN_ov16_020f081c
	cmp r4, r0
	add r0, r10, r6, lsl #2
	ldr r0, [r0, #0x4e4]
	bne _0211E114
	bl FUN_0206d6b0
	cmp r0, #0
	addeq r11, r5, #5
	addne r11, r5, #1
	b _0211E120
_0211E114:
	bl FUN_0206d6c4
	cmp r0, #0
	addeq r11, r5, #9
_0211E120:
	sub r0, r8, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r4, _0211E234 ; =0x02099F38
	sub r0, r9, #0x10
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r10, #0x56c]
	add r2, r6, #1
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x56c]
	add r2, r6, #1
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add r2, r6, #1
	mov r3, r11
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x56c]
	bl  FUN_ov16_0211401c
_0211E188:
	ldr r0, [sp, #0x1c]
	mov r1, r0, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	bl FUN_ov57_0211a624
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #0
	bgt _0211E1E0
	ldr r0, _0211E234 ; =0x02099F38
	sub r2, r9, #0x10
	sub r1, r8, #0x19
	mov r3, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r10, #0x548]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1E0:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r9, #0x10
	str r0, [sp, #8]
	sub r0, r8, #0x19
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, _0211E230 ; =0x02099ED4
	ldr r3, [r10, #0x548]
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_0210e29c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E228: .word 0x02099EC0
_0211E22C: .word 0x02099F58
_0211E230: .word 0x02099ED4
_0211E234: .word 0x02099F38
_0211E238: .word 0x020A0640
	arm_func_end FUN_ov57_0211df08

	arm_func_start FUN_ov57_0211e23c
FUN_ov57_0211e23c: ; 0x0211E23C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov57_0211f89c
	cmp r0, #0
	cmpne r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r2, r5, #1
	str r4, [sp]
	add r1, r0, r2, lsl #1
	ldrb r2, [r0, r2, lsl #1]
	ldrb r3, [r1, #1]
	mov r0, r7
	mov r1, r6
	bl FUN_ov57_0211df08
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov57_0211e23c

	arm_func_start FUN_ov57_0211e28c
FUN_ov57_0211e28c: ; 0x0211E28C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, r1
	mov r9, r2
	mov r8, r3
	bl FUN_ov57_0211f89c
	movs r5, r0
	cmpne r9, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0x10
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
_0211E2BC:
	add r0, r10, r6, lsl #2
	ldr r7, [r0, #0x4e4]
	cmp r7, #0
	beq _0211E324
	mov r0, r7
	bl FUN_0206cbf8
	mov r4, r0
	mov r0, r10
	mov r1, r7
	bl FUN_ov57_0211b338
	cmp r11, r4
	beq _0211E324
	cmp r9, r0
	str r8, [sp]
	add r0, r5, r0, lsl #1
	ldrb r2, [r0, #-2]
	ldrb r3, [r0, #-1]
	beq _0211E310
	mov r0, r10
	mov r1, r4
	b _0211E320
_0211E310:
	mov r0, r10
	mov r1, r4
	add r2, r2, #8
	sub r3, r3, #3
_0211E320:
	bl FUN_ov57_0211df08
_0211E324:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0211E2BC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov57_0211e28c

	arm_func_start FUN_ov57_0211e334
FUN_ov57_0211e334: ; 0x0211E334
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7, #0x5b4]
	str r1, [r7, #0x5b4]
	bl FUN_ov57_0211bd10
	cmp r0, #0
	blt _0211E38C
	add r0, r7, r0, lsl #2
	ldr r6, [r0, #0x4e4]
	cmp r6, #0
	beq _0211E38C
	mov r0, r6
	bl FUN_0206cbf8
	mov r4, r0
	mov r0, r7
	mov r1, r6
	bl FUN_ov57_0211b338
	mov r2, r0
	mov r0, r7
	mov r1, r4
	mov r3, #0
	bl FUN_ov57_0211e23c
_0211E38C:
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r5
	bl FUN_ov57_0211bd74
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_0206cbf8
	mov r4, r0
	mov r0, r7
	mov r1, r5
	bl FUN_ov57_0211b338
	mov r2, r0
	mov r0, r7
	mov r1, r4
	mov r3, #0
	bl FUN_ov57_0211e23c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov57_0211e334

	arm_func_start FUN_ov57_0211e3d4
FUN_ov57_0211e3d4: ; 0x0211E3D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7, #0x5b0]
	str r1, [r7, #0x5b0]
	bl FUN_ov57_0211bd10
	cmp r0, #0
	blt _0211E42C
	add r0, r7, r0, lsl #2
	ldr r6, [r0, #0x4e4]
	cmp r6, #0
	beq _0211E42C
	mov r0, r6
	bl FUN_0206cbf8
	mov r4, r0
	mov r0, r7
	mov r1, r6
	bl FUN_ov57_0211b338
	mov r2, r0
	mov r0, r7
	mov r1, r4
	mov r3, #0
	bl FUN_ov57_0211e23c
_0211E42C:
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r5
	bl FUN_ov57_0211bd74
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_0206cbf8
	mov r4, r0
	mov r0, r7
	mov r1, r5
	bl FUN_ov57_0211b338
	mov r2, r0
	mov r0, r7
	mov r1, r4
	mov r3, #0
	bl FUN_ov57_0211e23c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov57_0211e3d4

	arm_func_start FUN_ov57_0211e474
FUN_ov57_0211e474: ; 0x0211E474
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r5, #0
	mov r7, r2
	mov r0, r1
	mov r2, r5
	mov r1, #3
	mov r6, r3
	bl FUN_ov57_02119f00
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bgt _0211E4D4
	ldr r0, _0211E524 ; =0x02099F38
	mov r2, r7, lsl #0x10
	mov r3, r6, lsl #0x10
	ldr r0, [r0]
	mov r1, r4
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	b _0211E504
_0211E4D4:
	str r5, [sp]
	stmib sp, {r5, r7}
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, _0211E528 ; =0x02099ED4
	str r5, [sp, #0x18]
	ldr r0, [r0]
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_0210e29c
_0211E504:
	ldr r0, _0211E524 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, #2
	mov r3, #1
	bl  FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211E524: .word 0x02099F38
_0211E528: .word 0x02099ED4
	arm_func_end FUN_ov57_0211e474

	arm_func_start FUN_ov57_0211e52c
FUN_ov57_0211e52c: ; 0x0211E52C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	mov r6, r2
	mov r0, r4
	mov r1, #3
	mov r2, #0
	bl FUN_ov57_02119f00
	movs r1, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r2, [r4]
	ldr r0, [r4, #0xc]
	subs r2, r2, r0
	bmi _0211E578
	ldr r0, [r4, #8]
	cmp r2, r0
	blt _0211E590
_0211E578:
	ldr r0, _0211E5B8 ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	bl  FUN_ov16_02114370
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211E590:
	str r6, [sp]
	ldr r1, [r4, #0x10]
	mov r0, r5
	add r1, r4, r1, lsl #2
	ldrsh r2, [r1, #0x94]
	ldrsh r3, [r1, #0x96]
	mov r1, r4
	bl FUN_ov57_0211e474
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211E5B8: .word 0x02099F38
	arm_func_end FUN_ov57_0211e52c

	arm_func_start FUN_ov57_0211e5bc
FUN_ov57_0211e5bc: ; 0x0211E5BC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r1
	mov r7, #0
	mov r9, r2
	mov r0, r10
	mov r2, r7
	mov r1, #2
	mov r8, r3
	bl FUN_ov57_02119f00
	mov r1, r9, lsl #0x10
	mov r3, r8, lsl #0x10
	mov r2, r1, asr #0x10
	ldr r4, _0211E65C ; =0x02099F38
	mov r1, r0
	ldr r0, [r4]
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	mov r6, #2
	mov r5, #1
	b _0211E634
_0211E60C:
	mov r0, r10
	mov r1, r6
	mov r2, r7
	bl FUN_ov57_02119f00
	mov r1, r0
	ldr r0, [r4]
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_021142fc
	add r7, r7, #1
_0211E634:
	ldrb r0, [r10, #0x79]
	cmp r7, r0
	blt _0211E60C
	ldr r0, _0211E660 ; =0x02099EB4
	mov r2, r9
	ldr r0, [r0]
	mov r3, r8
	mov r1, #0x3c
	bl  FUN_ov16_0210fd0c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E65C: .word 0x02099F38
_0211E660: .word 0x02099EB4
	arm_func_end FUN_ov57_0211e5bc

	arm_func_start FUN_ov57_0211e664
FUN_ov57_0211e664: ; 0x0211E664
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r1, [r4, #0x2a]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #4]
	mul r0, r1, r0
	ldr r1, [r4, #8]
	sub r1, r2, r1
	bl FUN_0201f9bc
	mov r12, r0
	ldrsh r3, [r4, #0x26]
	ldrsh r2, [r4, #0x24]
	mov r0, r5
	mov r1, r4
	add r3, r3, r12
	bl FUN_ov57_0211e5bc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov57_0211e664

	arm_func_start FUN_ov57_0211e6b0
FUN_ov57_0211e6b0: ; 0x0211E6B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x30]
	mov r4, r1
	cmp r0, #0
	bne _0211E6EC
	ldr r0, [r5, #0x674]
	cmp r0, #0
	beq _0211E6EC
	ldr r0, _0211E774 ; =0x02099F38
	ldrb r3, [r5, #0xe90]
	ldr r0, [r0]
	ldr r1, [r5, #0x550]
	mov r2, #2
	bl  FUN_ov16_0211329c
_0211E6EC:
	cmp r4, #0
	ble _0211E720
	ldr r1, [r5, #0xe8c]
	ldr r0, _0211E774 ; =0x02099F38
	add r1, r1, r4
	and r1, r1, #0xf
	str r1, [r5, #0xe8c]
	mov r2, r1, asr #2
	ldr r0, [r0]
	ldr r1, [r5, #0x550]
	and r2, r2, #0xff
	mov r3, #0
	bl  FUN_ov16_0211346c
_0211E720:
	ldr r0, _0211E778 ; =0x02099ED4
	mov r1, r4
	ldr r0, [r0]
	bl  FUN_ov16_0210e10c
	cmp r4, #0
	mov r0, r4, lsl #0xc
	ble _0211E750
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211E75C
_0211E750:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211E75C:
	bl FUN_0201fdac
	ldr r2, _0211E77C ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldmfd sp!, {r3, r4, r5, pc}
_0211E774: .word 0x02099F38
_0211E778: .word 0x02099ED4
_0211E77C: .word 0x02099F58
	arm_func_end FUN_ov57_0211e6b0

	arm_func_start FUN_ov57_0211e780
FUN_ov57_0211e780: ; 0x0211E780
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, #0
	mov r7, r0
	str r6, [sp, #0x10]
	ldr r0, [r7, #0x4e0]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldr r4, _0211E814 ; =0x02099F38
	mov r1, #4
	ldr r0, [r4]
	mov r2, #1
	bl FUN_02059630
	mov r5, r0
	str r5, [r7, #0x4e0]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	ldr r0, [r4]
	add r2, sp, #0xc
	add r3, sp, #0x10
	str r6, [sp, #0xc]
	mov r1, r5
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, r5
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211E814: .word 0x02099F38
	arm_func_end FUN_ov57_0211e780

	arm_func_start FUN_ov57_0211e818
FUN_ov57_0211e818: ; 0x0211E818
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, #0
	mov r7, r1
	str r6, [sp, #0x10]
	ldr r0, [r7, #0x70]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldr r4, _0211E8AC ; =0x02099F38
	mov r1, #4
	ldr r0, [r4]
	mov r2, r1
	bl FUN_02059630
	mov r5, r0
	str r5, [r7, #0x70]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	ldr r0, [r4]
	add r2, sp, #0xc
	add r3, sp, #0x10
	str r6, [sp, #0xc]
	mov r1, r5
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, r5
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211E8AC: .word 0x02099F38
	arm_func_end FUN_ov57_0211e818

	arm_func_start FUN_ov57_0211e8b0
FUN_ov57_0211e8b0: ; 0x0211E8B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	mov r5, #0
	mov r4, r0
	str r5, [sp, #0x24]
	ldr r7, [r4, #0x4e0]
	cmp r7, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_ov57_0211f7e8
	mov r1, r0
	mov r0, r4
	bl FUN_ov57_0211bbd0
	movs r1, r0
	bmi _0211E8F8
	ldr r0, _0211E9C8 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	mov r5, r0
_0211E8F8:
	ldr r8, _0211E9CC ; =0x02099F38
	mov r4, #0
	ldr r0, [r8]
	add r2, sp, #0x20
	add r3, sp, #0x24
	mov r1, r7
	str r4, [sp, #0x20]
	bl FUN_0205935c
	ldr r6, [sp, #0x20]
	cmp r6, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8]
	mov r1, r7
	bl  FUN_ov16_02111458
	mov r9, #1
	ldr r8, _0211E9D0 ; =0x02099ED0
	mov r10, r0
	ldr r0, [r8]
	mov r1, r9
	mov r2, r9
	bl FUN_02043310
	cmp r5, #0
	beq _0211E98C
	str r10, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r9, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r9, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #0x80
	bl FUN_020425fc
_0211E98C:
	ldr r0, _0211E9D0 ; =0x02099ED0
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, _0211E9CC ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r1, r7
	mov r2, r6
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E9C8: .word 0x0209BA20
_0211E9CC: .word 0x02099F38
_0211E9D0: .word 0x02099ED0
	arm_func_end FUN_ov57_0211e8b0

	arm_func_start FUN_ov57_0211e9d4
FUN_ov57_0211e9d4: ; 0x0211E9D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r8, #0
	mov r4, r1
	str r8, [sp, #0x24]
	ldr r6, [r4, #0x70]
	mov r10, r0
	cmp r6, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211EB2C ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	bl  FUN_ov16_02111458
	ldr r11, _0211EB30 ; =0x02099F50
	mov r9, r0
	ldr r0, [r11]
	mov r1, r8
	mov r2, #1
	bl FUN_02043310
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _0211EAE8
	mov r7, r8
	mov r4, r8
	b _0211EADC
_0211EA3C:
	ldr r1, [r10, #0x5c4]
	ldr r0, [r10, #0x5bc]
	add r1, r7, r1
	cmp r1, r0
	bge _0211EAD8
	add r0, r10, r1, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r0, #0x88]
	ldr r0, _0211EB34 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	movs r5, r0
	beq _0211EAD8
	cmp r8, #0
	bne _0211EA98
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, _0211EB2C ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	add r2, sp, #0x20
	add r3, sp, #0x24
	bl FUN_0205935c
	ldr r8, [sp, #0x20]
_0211EA98:
	mov r0, #0xc
	mul r0, r7, r0
	str r9, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r8
	mov r3, #0x80
	bl FUN_020425fc
_0211EAD8:
	add r7, r7, #1
_0211EADC:
	ldr r0, [r10, #0x5c0]
	cmp r7, r0
	blt _0211EA3C
_0211EAE8:
	cmp r8, #0
	beq _0211EB18
	ldr r0, _0211EB2C ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r1, r6
	mov r2, r8
	str r4, [sp, #8]
	bl FUN_02059288
_0211EB18:
	ldr r0, _0211EB30 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EB2C: .word 0x02099F38
_0211EB30: .word 0x02099F50
_0211EB34: .word 0x0209BA20
	arm_func_end FUN_ov57_0211e9d4

	arm_func_start FUN_ov57_0211eb38
FUN_ov57_0211eb38: ; 0x0211EB38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xf80]
	mov r3, #1
	cmp r0, #1
	mov r12, #0
	cmpne r1, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	str r1, [r5, #0xf84]
	cmp r1, #0xc
	blt _0211EBE4
	cmp r1, #0x1c
	bgt _0211EBE4
	ldr r0, [r5, #0x5b0]
	sub r4, r1, #0xb
	strb r12, [r5, #0x634]
	cmp r4, r0
	streqb r3, [r5, #0x634]
	beq _0211EB9C
	ldr r0, [r5, #0x674]
	cmp r0, #0
	beq _0211EB9C
	ldr r0, _0211EE7C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211EB9C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov57_0211f8b8
	cmp r0, #0
	beq _0211EBD0
	mov r0, r5
	mov r1, r4
	bl FUN_ov57_0211e3d4
	mov r0, r5
	mov r1, r4
	mov r2, #6
	bl FUN_ov57_0211dcdc
	ldmfd sp!, {r3, r4, r5, pc}
_0211EBD0:
	ldr r0, _0211EE80 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210f47c
	ldmfd sp!, {r3, r4, r5, pc}
_0211EBE4:
	cmp r1, #0x2f
	blt _0211ECCC
	cmp r1, #0x37
	bgt _0211ECCC
	ldr r2, [r5, #0x5b8]
	ldr r0, [r5, #0x5c4]
	sub r4, r1, #0x2f
	sub r0, r2, r0
	strb r12, [r5, #0x634]
	cmp r4, r0
	streqb r3, [r5, #0x634]
	beq _0211EC20
	ldr r0, _0211EE7C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211EC20:
	ldr r0, [r5, #0x24]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x5c4]
	ldr r0, [r5, #0x5bc]
	add r1, r4, r1
	cmp r1, r0
	bge _0211ECBC
	add r0, r5, #0x1b8
	add r0, r0, #0x400
	bl  FUN_ov16_020f52f4
	add r1, r5, #0x1b8
	mov r0, r5
	add r1, r1, #0x400
	mov r2, #6
	bl FUN_ov57_0211e52c
	add r1, r5, #0x1b8
	mov r0, r5
	add r1, r1, #0x400
	bl FUN_ov57_0211e664
	add r1, r5, #0x1b8
	mov r0, r5
	add r1, r1, #0x400
	bl FUN_ov57_0211e9d4
	ldr r1, [r5, #0x5b8]
	mov r0, r5
	bl FUN_ov57_0211bb24
	str r0, [r5, #0x66c]
	ldr r1, [r5, #0x5b8]
	mov r0, r5
	bl FUN_ov57_0211bb24
	mov r1, r0
	mov r0, r5
	bl FUN_ov57_0211de2c
	ldr r1, [r5, #0x5b0]
	mov r0, r5
	mov r2, #0
	bl FUN_ov57_0211dcdc
	ldmfd sp!, {r3, r4, r5, pc}
_0211ECBC:
	ldr r0, _0211EE7C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211ECCC:
	cmp r1, #0x38
	bne _0211ED08
	add r0, r5, #0x1b8
	add r0, r0, #0x400
	mvn r1, #0
	bl  FUN_ov16_020f543c
	cmp r0, #0
	beq _0211ECFC
	mov r0, r5
	bl FUN_ov57_0212406c
	mov r0, #0xf
	str r0, [r5, #0x684]
_0211ECFC:
	mov r0, #0xf
	str r0, [r5, #0x684]
	ldmfd sp!, {r3, r4, r5, pc}
_0211ED08:
	cmp r1, #0x39
	bne _0211ED34
	add r0, r5, #0x1b8
	add r0, r0, #0x400
	mov r1, #0
	bl  FUN_ov16_020f53e8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov57_0212406c
	ldmfd sp!, {r3, r4, r5, pc}
_0211ED34:
	cmp r1, #0x3a
	bne _0211ED68
	add r0, r5, #0x1b8
	add r0, r0, #0x400
	mov r1, #1
	bl  FUN_ov16_020f543c
	cmp r0, #0
	beq _0211ED5C
	mov r0, r5
	bl FUN_ov57_0212406c
_0211ED5C:
	mov r0, #0xf
	str r0, [r5, #0x684]
	ldmfd sp!, {r3, r4, r5, pc}
_0211ED68:
	cmp r1, #0x3b
	bne _0211ED9C
	ldr r2, [r5, #0x5bc]
	ldr r1, [r5, #0x5c0]
	add r0, r5, #0x1b8
	add r0, r0, #0x400
	sub r1, r2, r1
	bl  FUN_ov16_020f53e8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov57_0212406c
	ldmfd sp!, {r3, r4, r5, pc}
_0211ED9C:
	cmp r1, #0x45
	bne _0211EDB8
	ldr r0, [r5, #0x67c]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, pc}
_0211EDB8:
	cmp r1, #0x46
	bne _0211EDD4
	ldr r0, [r5, #0x67c]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, pc}
_0211EDD4:
	cmp r1, #0x3d
	blt _0211EDF4
	cmp r1, #0x43
	bgt _0211EDF4
	mov r0, r5
	mov r2, #1
	bl FUN_ov57_02122fe4
	ldmfd sp!, {r3, r4, r5, pc}
_0211EDF4:
	cmp r1, #0x44
	bne _0211EE1C
	ldr r0, _0211EE84 ; =0x02099F38
	str r3, [sp]
	mov r2, #2
	ldr r0, [r0]
	ldr r1, [r5, #0x568]
	mov r3, r2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, pc}
_0211EE1C:
	cmp r1, #0x4b
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r1, #0x52
	ldmgtfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x1000
	ldr r3, [r0, #0x84]
	sub r2, r1, #0x4b
	cmp r2, r3
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r0, #0x7b]
	add r0, r2, r0, lsl #3
	add r0, r5, r0, lsl #1
	add r0, r0, #0xf00
	ldrh r0, [r0, #0xf8]
	cmp r0, #0
	beq _0211EE6C
	mov r0, r5
	mov r1, #0
	bl FUN_ov57_02123cc4
	ldmfd sp!, {r3, r4, r5, pc}
_0211EE6C:
	ldr r0, _0211EE7C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211EE7C: .word 0x0209AC44
_0211EE80: .word 0x02099EB4
_0211EE84: .word 0x02099F38
	arm_func_end FUN_ov57_0211eb38

	arm_func_start FUN_ov57_0211ee88
FUN_ov57_0211ee88: ; 0x0211EE88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _0211F114 ; =0x02099EB4
	mov r5, r1
	mov r6, r0
	mov r4, #1
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r5, lsl #0x10
	ldr r0, [r7]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	str r5, [r6, #0xf10]
	cmp r5, #1
	blt _0211EEF0
	cmp r5, #8
	bgt _0211EEF0
	cmp r0, #0
	ldrneh r2, [r0, #0xc]
	cmpne r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7]
	mov r1, #0
	add r0, r0, #0xf00
	strh r2, [r0, #0x38]
	strb r1, [r6, #0xfc0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EEF0:
	cmp r5, #0xc
	blt _0211EF50
	cmp r5, #0x1c
	bgt _0211EF50
	sub r5, r5, #0xb
	mov r0, r6
	mov r1, r5
	bl FUN_ov57_0211f8b8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x24]
	cmp r0, #2
	ldreq r0, [r7]
	addeq r0, r0, #0xf00
	streqh r4, [r0, #0x38]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov57_0211e3d4
	mov r0, r6
	mov r1, r5
	mov r2, #6
	bl FUN_ov57_0211dcdc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EF50:
	cmp r5, #0x2f
	blt _0211F01C
	cmp r5, #0x37
	bgt _0211F01C
	ldr r0, [r6, #0x24]
	sub r5, r5, #0x2f
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x5b8]
	ldr r1, [r6, #0x5c4]
	sub r0, r0, r1
	cmp r5, r0
	bne _0211EFAC
	ldrb r0, [r6, #0x634]
	cmp r0, #0
	beq _0211EFAC
	ldr r0, [r6, #0x5bc]
	add r1, r5, r1
	cmp r1, r0
	ldrlt r0, [r7]
	addlt r0, r0, #0xf00
	strlth r4, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EFAC:
	ldr r1, [r6, #0x5c4]
	ldr r0, [r6, #0x5bc]
	add r1, r5, r1
	cmp r1, r0
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1b8
	add r0, r0, #0x400
	bl  FUN_ov16_020f52f4
	add r1, r6, #0x1b8
	mov r0, r6
	add r1, r1, #0x400
	mov r2, #6
	bl FUN_ov57_0211e52c
	add r1, r6, #0x1b8
	mov r0, r6
	add r1, r1, #0x400
	bl FUN_ov57_0211e664
	add r1, r6, #0x1b8
	mov r0, r6
	add r1, r1, #0x400
	bl FUN_ov57_0211e9d4
	ldr r1, [r6, #0x5b8]
	mov r0, r6
	bl FUN_ov57_0211bb24
	mov r1, r0
	mov r0, r6
	bl FUN_ov57_0211de2c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F01C:
	cmp r5, #0x38
	cmpne r5, #0x3a
	moveq r0, #0
	streq r0, [r6, #0x684]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x45
	cmpne r5, #0x46
	ldreq r0, [r7]
	addeq r0, r0, #0xf00
	streqh r4, [r0, #0x38]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #9
	bne _0211F088
	ldr r0, [r6, #0xfbc]
	cmp r0, #0
	beq _0211F06C
	ldr r0, _0211F118 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F06C:
	ldr r0, _0211F118 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, r4
	bl FUN_ov57_0211ae9c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F088:
	cmp r5, #0xa
	cmpne r5, #0x47
	cmpne r5, #0x48
	ldreq r0, [r7]
	moveq r1, #2
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x3d
	blt _0211F0C8
	cmp r5, #0x43
	bgt _0211F0C8
	mov r0, r6
	mov r1, r5
	bl FUN_ov57_021230f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F0C8:
	cmp r5, #0x44
	ldreq r0, [r7]
	addeq r0, r0, #0xf00
	streqh r4, [r0, #0x38]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x49
	bne _0211F0F8
	mov r0, r6
	mov r1, #0x200
	mov r2, #0
	bl FUN_ov57_02123a38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F0F8:
	cmp r5, #0x4a
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x100
	mov r2, #0
	bl FUN_ov57_02123a38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F114: .word 0x02099EB4
_0211F118: .word 0x0209AC44
	arm_func_end FUN_ov57_0211ee88

	arm_func_start FUN_ov57_0211f11c
FUN_ov57_0211f11c: ; 0x0211F11C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211F1C8 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldr r0, [r4, #0x684]
	cmp r0, #0
	beq _0211F160
	sub r0, r0, #1
	str r0, [r4, #0x684]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
_0211F160:
	cmp r5, #0x38
	bne _0211F194
	add r0, r4, #0x1b8
	add r0, r0, #0x400
	mvn r1, #0
	bl  FUN_ov16_020f543c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov57_0212406c
	mov r0, #4
	str r0, [r4, #0x684]
	ldmfd sp!, {r3, r4, r5, pc}
_0211F194:
	cmp r5, #0x3a
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r4, #0x1b8
	add r0, r0, #0x400
	mov r1, #1
	bl  FUN_ov16_020f543c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov57_0212406c
	mov r0, #4
	str r0, [r4, #0x684]
	ldmfd sp!, {r3, r4, r5, pc}
_0211F1C8: .word 0x02099EB4
	arm_func_end FUN_ov57_0211f11c

	arm_func_start FUN_ov57_0211f1cc
FUN_ov57_0211f1cc: ; 0x0211F1CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r7, [sp, #0x40]
	mov r9, r2
	cmp r1, #0
	mov r10, r0
	mov r8, r3
	mov r4, #1
	addle sp, sp, #0x18
	mov r2, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, #0xc
	blt _0211F248
	cmp r1, #0x1c
	bgt _0211F248
	ldr r1, [r10, #0x5b0]
	bl FUN_ov57_0211bd58
	cmp r0, #0
	beq _0211F240
	ldr r2, [r10, #0x5b0]
	mov r0, r10
	mov r1, #2
	str r2, [r10, #0x670]
	strb r4, [r10, #0xfc1]
	bl FUN_ov57_0211ae9c
	ldr r0, _0211F734 ; =0x02099EB4
	mov r1, #0x2e
	ldr r0, [r0]
	bl  FUN_ov16_0210f47c
_0211F240:
	strb r4, [r10, #0xf19]
	b _0211F630
_0211F248:
	cmp r1, #0x2e
	bne _0211F4D4
	cmp r7, #0
	bne _0211F268
	ldr r0, [r10, #0x5b4]
	cmp r0, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F268:
	ldrb r0, [r10, #0xf19]
	cmp r0, #0
	bne _0211F2A0
	ldr r1, [r10, #0x5b0]
	mov r0, r10
	bl FUN_ov57_0211bd58
	cmp r0, #0
	beq _0211F29C
	ldr r1, [r10, #0x5b0]
	mov r0, r10
	str r1, [r10, #0x670]
	strb r4, [r10, #0xfc1]
	bl FUN_ov57_02123f34
_0211F29C:
	strb r4, [r10, #0xf19]
_0211F2A0:
	mov r0, r10
	bl FUN_ov57_0211f89c
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	b _0211F318
_0211F2BC:
	add r6, r5, r4, lsl #1
	ldrb r2, [r6, #1]
	mov r0, r10
	mov r1, r9
	sub r2, r2, #0x20
	str r2, [sp]
	ldrb r3, [r5, r4, lsl #1]
	mov r2, r8
	add r3, r3, #0x10
	str r3, [sp, #4]
	ldrb r3, [r6, #1]
	str r3, [sp, #8]
	ldrb r3, [r5, r4, lsl #1]
	sub r3, r3, #0x10
	bl FUN_ov57_0211bd94
	cmp r0, #0
	beq _0211F314
	mov r0, r10
	add r1, r4, #1
	bl FUN_ov57_0211f8b8
	cmp r0, #0
	bne _0211F320
_0211F314:
	add r4, r4, #1
_0211F318:
	cmp r4, #0x10
	blt _0211F2BC
_0211F320:
	ldr r1, [r10, #0x5b4]
	mov r0, r10
	mov r11, #0
	bl FUN_ov57_0211bd58
	mov r6, r0
	cmp r9, #0xa
	blt _0211F354
	cmp r9, #0xa2
	bgt _0211F354
	cmp r8, #0x19
	blt _0211F354
	cmp r8, #0xa0
	ble _0211F378
_0211F354:
	cmp r9, #0xa2
	blt _0211F374
	cmp r9, #0x100
	bgt _0211F374
	cmp r8, #0x4a
	blt _0211F374
	cmp r8, #0xa0
	ble _0211F378
_0211F374:
	mov r7, #1
_0211F378:
	cmp r7, #0
	beq _0211F448
	cmp r4, #0x10
	bge _0211F3F4
	mov r0, r10
	add r1, r4, #1
	bl FUN_ov57_0211f8b8
	cmp r0, #0
	beq _0211F3F4
	mov r0, r10
	add r1, r4, #1
	bl FUN_ov57_0211e3d4
	mov r0, r10
	mov r2, r11
	add r1, r4, #1
	bl FUN_ov57_0211dcdc
	mov r0, r10
	mov r1, r6
	add r2, r4, #1
	mov r3, r11
	bl FUN_ov57_0211e23c
	mov r1, r6
	mov r3, r11
	mov r0, r10
	add r2, r4, #1
	bl FUN_ov57_0211e28c
	add r2, r4, #1
	mov r0, r10
	mov r1, #0x2e
	bl FUN_ov57_0211dbbc
	b _0211F630
_0211F3F4:
	ldr r1, [r10, #0x670]
	mov r0, r10
	str r1, [r10, #0x5b0]
	bl FUN_ov57_0211e3d4
	mov r4, #6
	ldr r1, [r10, #0x670]
	mov r0, r10
	mov r2, r4
	bl FUN_ov57_0211dcdc
	ldr r2, [r10, #0x670]
	mov r1, r6
	mov r3, r4
	mov r0, r10
	bl FUN_ov57_0211e23c
	ldr r0, _0211F734 ; =0x02099EB4
	ldr r0, [r0]
	add r1, r0, #0xf00
	mov r0, #2
	strh r0, [r1, #0x38]
	strb r11, [r10, #0xf19]
	b _0211F630
_0211F448:
	cmp r4, #0x10
	bge _0211F4A4
	add r0, r5, r4, lsl #1
	ldrb r2, [r0, #1]
	ldrb r1, [r5, r4, lsl #1]
	mov r0, r10
	mov r3, r11
	bl FUN_ov57_0211dc14
	str r11, [sp]
	add r0, r5, r4, lsl #1
	ldrb r3, [r0, #1]
	ldrb r2, [r5, r4, lsl #1]
	mov r0, r10
	mov r1, r6
	bl FUN_ov57_0211df08
	mov r0, r10
	mov r1, r6
	add r2, r4, #1
	mov r3, #6
	bl FUN_ov57_0211e28c
	add r0, r4, #1
	str r0, [r10, #0x5b0]
	b _0211F630
_0211F4A4:
	mov r0, r10
	mov r3, r11
	sub r1, r9, #8
	add r2, r8, #0x10
	bl FUN_ov57_0211dc14
	mov r0, r10
	mov r1, r6
	sub r2, r9, #8
	add r3, r8, #0x10
	str r11, [sp]
	bl FUN_ov57_0211df08
	b _0211F630
_0211F4D4:
	cmp r1, #0x3c
	bne _0211F618
	add r0, r10, #0x1b8
	add r4, r0, #0x400
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	addle sp, sp, #0x18
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r0, [r4, #0x2e]
	ldrsh r2, [r4, #0x24]
	ldrsh r5, [r4, #0x26]
	sub r0, r8, r0, asr #1
	strh r0, [sp, #0x16]
	ldrsh r1, [sp, #0x16]
	strh r2, [sp, #0x14]
	cmp r1, r5
	strlth r5, [sp, #0x16]
	blt _0211F530
	ldrsh r0, [r4, #0x2a]
	add r0, r5, r0
	cmp r1, r0
	strgeh r0, [sp, #0x16]
_0211F530:
	cmp r7, #0
	bne _0211F54C
	ldrsh r2, [sp, #0x14]
	ldrsh r3, [sp, #0x16]
	mov r0, r10
	mov r1, r4
	bl FUN_ov57_0211e5bc
_0211F54C:
	ldrsh r2, [sp, #0x16]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	sub r2, r2, r5
	sub r0, r1, r0
	add r1, r0, #1
	mul r0, r1, r2
	ldrsh r1, [r4, #0x2a]
	bl FUN_0201f9bc
	ldr r3, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, r0
	cmp r3, r2
	movlt r1, #0
	blt _0211F5A0
	cmp r1, #0
	movlt r1, #0
	blt _0211F5A0
	sub r0, r3, r2
	cmp r1, r0
	movge r1, r0
_0211F5A0:
	cmp r7, #0
	beq _0211F5FC
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _0211F5C4
	mov r0, r10
	mov r1, r4
	bl FUN_ov57_0211e664
	b _0211F630
_0211F5C4:
	mov r0, r4
	bl  FUN_ov16_020f53e8
	mov r0, r10
	mov r1, r4
	mov r2, #6
	bl FUN_ov57_0211e52c
	mov r0, r10
	mov r1, r4
	bl FUN_ov57_0211e664
_0211F5E8:
	add r1, r10, #0x1b8
	mov r0, r10
	add r1, r1, #0x400
	bl FUN_ov57_0211e9d4
	b _0211F630
_0211F5FC:
	mov r0, r4
	bl  FUN_ov16_020f53e8
	mov r0, r10
	mov r1, r4
	mov r2, #6
	bl FUN_ov57_0211e52c
	b _0211F5E8
_0211F618:
	cmp r1, #0x38
	beq _0211F628
	cmp r1, #0x3a
	bne _0211F630
_0211F628:
	cmp r7, #0
	strne r2, [r10, #0x684]
_0211F630:
	cmp r7, #0
	mov r4, #1
	mov r0, #0
	bne _0211F728
	ldr r0, [r10, #0x24]
	cmp r0, #4
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r7, _0211F734 ; =0x02099EB4
	ldr r5, [r10, #0x560]
	ldr r0, [r7]
	add r1, sp, #0xc
	mov r8, #0
	mov r6, #5
	bl  FUN_ov16_0210f48c
	str r4, [sp]
	ldrsh r1, [sp, #0xc]
	ldrsh r2, [sp, #0xe]
	ldr r0, [r7]
	add r3, sp, #0x10
	bl  FUN_ov16_0210ecb8
	ldr r0, [sp, #0x10]
	cmp r0, #0
	movne r8, r4
	cmp r8, #0
	bne _0211F6B8
	ldr r0, _0211F738 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F6B8:
	ldr r0, [sp, #0x10]
	ldr r1, [r10, #0xf84]
	ldrh r0, [r0, #8]
	cmp r1, r0
	bne _0211F708
	cmp r1, #0x3d
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, #0x43
	addgt sp, sp, #0x18
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211F738 ; =0x02099F38
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F708:
	ldr r0, _0211F738 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F728:
	str r0, [r10, #0xf84]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F734: .word 0x02099EB4
_0211F738: .word 0x02099F38
	arm_func_end FUN_ov57_0211f1cc

	arm_func_start FUN_ov57_0211f73c
FUN_ov57_0211f73c: ; 0x0211F73C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x5b8]
	ldr r1, [r0, #0x5c4]
	subs r1, r2, r1
	ldmmifd sp!, {r3, pc}
	ldr r0, [r0, #0x5c0]
	cmp r1, r0
	ldmgtfd sp!, {r3, pc}
	ldr r0, _0211F778 ; =0x02099EB4
	add r1, r1, #0x2f
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_0211F778: .word 0x02099EB4
	arm_func_end FUN_ov57_0211f73c

	arm_func_start FUN_ov57_0211f77c
FUN_ov57_0211f77c: ; 0x0211F77C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r2, r1
	cmp r2, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, pc}
	ldr r0, _0211F7E0 ; =0x0209A454
	mov r3, #1
	ldrb r0, [r0, #0x30]
	mov r1, #1
	cmp r0, #0
	ldr r0, _0211F7E0 ; =0x0209A454
	moveq r3, #0
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [sp]
	ldr r0, _0211F7E0 ; =0x0209A454
	str r1, [sp, #4]
	ldrb r1, [r0, #0x28]
	ldr r0, _0211F7E4 ; =0x0209BA20
	bl  FUN_ov126_0212aebc
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0211F7E0: .word 0x0209A454
_0211F7E4: .word 0x0209BA20
	arm_func_end FUN_ov57_0211f77c

	arm_func_start FUN_ov57_0211f7e8
FUN_ov57_0211f7e8: ; 0x0211F7E8
	stmfd sp!, {r4, lr}
	ldr r0, [r0, #0x66c]
	cmp r0, #0
	ldmgtfd sp!, {r4, pc}
	ldr r4, _0211F868 ; =0x0209A454
	ldr r0, _0211F86C ; =0x0209BA20
	ldrb r1, [r4, #0x28]
	bl FUN_0207249c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r1, [r4, #0x30]
	cmp r1, #0
	ldrneh r0, [r0, #0x24]
	ldmnefd sp!, {r4, pc}
	ldrb r1, [r4, #0x31]
	cmp r1, #0
	beq _0211F860
	ldrh r1, [r0, #0x48]
	cmp r1, #0
	bne _0211F858
	mov r3, #1
	ldr r1, _0211F870 ; =0x020A1640
	strh r3, [r0, #0x48]
	ldrb r2, [r1, #0x22]
	ldr r1, _0211F874 ; =0x020A1656
	mov r2, r2, lsl #1
	strh r3, [r1, r2]
_0211F858:
	ldrh r0, [r0, #0x48]
	ldmfd sp!, {r4, pc}
_0211F860:
	ldrh r0, [r0, #0x22]
	ldmfd sp!, {r4, pc}
_0211F868: .word 0x0209A454
_0211F86C: .word 0x0209BA20
_0211F870: .word 0x020A1640
_0211F874: .word 0x020A1656
	arm_func_end FUN_ov57_0211f7e8

	arm_func_start FUN_ov57_0211f878
FUN_ov57_0211f878: ; 0x0211F878
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	ldr r2, [r0, #0x3e4]
	cmp r2, #0
	moveq r0, #0
	movne r0, #0x60
	mlane r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov57_0211f878

	arm_func_start FUN_ov57_0211f89c
FUN_ov57_0211f89c: ; 0x0211F89C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov57_0211f7e8
	mov r1, r0
	mov r0, r4
	bl FUN_ov57_0211f878
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov57_0211f89c

	arm_func_start FUN_ov57_0211f8b8
FUN_ov57_0211f8b8: ; 0x0211F8B8
	stmfd sp!, {r3, lr}
	ldr r0, _0211F8F0 ; =0x0209A454
	mov r2, r1
	ldrb r0, [r0, #0x30]
	mov r1, #0
	mov r3, #1
	cmp r0, #0
	ldr r0, _0211F8F0 ; =0x0209A454
	str r1, [sp]
	ldrb r1, [r0, #0x28]
	ldr r0, _0211F8F4 ; =0x0209BA20
	movne r3, #0
	bl FUN_02073260
	ldmfd sp!, {r3, pc}
_0211F8F0: .word 0x0209A454
_0211F8F4: .word 0x0209BA20
	arm_func_end FUN_ov57_0211f8b8

	arm_func_start FUN_ov57_0211f8f8
FUN_ov57_0211f8f8: ; 0x0211F8F8
	ldr r3, _0211F910 ; =0x021247F8
	mov r2, #1
	str r3, [r0]
	str r1, [r0, #0x10]
	strb r2, [r0, #0xe90]
	bx lr
_0211F910: .word 0x021247F8
	arm_func_end FUN_ov57_0211f8f8

	arm_func_start FUN_ov57_0211f914
FUN_ov57_0211f914: ; 0x0211F914
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r3, _02120228 ; =0x0209A0F4
	ldr r2, _0212022C ; =0x02099ED4
	ldrh r3, [r3]
	mov r8, r1
	mov r9, r0
	orr r0, r3, r8
	mov r1, r0, lsl #0x10
	ldr r0, [r2]
	ldr r4, _02120230 ; =0x0209A454
	mov r7, r1, lsr #0x10
	mov r10, #6
	mov r5, #1
	mov r6, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0xf80]
	cmp r0, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0xf64]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x2c]
	cmp r0, #0
	addgt sp, sp, #0xc
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, _02120234 ; =0x02099EB4
	ldr r0, [r11]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211F9C4
	ldr r0, [r11]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, r8
	strh r6, [r0, #0x38]
_0211F9C4:
	ldr r0, [r9, #0x20]
	cmp r0, #6
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	beq _0211F9F0
	ldrb r0, [r4, #0x29]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F9F0:
	ldr r0, [r9, #0x24]
	cmp r0, #4
	beq _0211FA14
	cmp r0, #2
	bne _0211FA10
	ldrb r0, [r9, #0xfc1]
	cmp r0, #0
	bne _0211FA98
_0211FA10:
	b _0211FA8C
_0211FA14:
	ldr r0, [r9, #0xf58]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211FA8C
_0211FA24: ; jump table
	b _0211FA3C ; case 0
	b _0211FA8C ; case 1
	b _0211FA4C ; case 2
	b _0211FA7C ; case 3
	b _0211FA6C ; case 4
	b _0211FA5C ; case 5
_0211FA3C:
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	bne _0211FA98
	b _0211FA8C
_0211FA4C:
	ldr r0, [r9, #0xf94]
	cmp r0, #0
	bne _0211FA98
	b _0211FA8C
_0211FA5C:
	ldr r0, [r9, #0xc]
	cmp r0, #0
	beq _0211FA98
	b _0211FA8C
_0211FA6C:
	ldr r0, [r9, #8]
	cmp r0, #0
	beq _0211FA98
	b _0211FA8C
_0211FA7C:
	ldr r0, [r9, #4]
	cmp r0, #0
	beq _0211FA98
	b _0211FA8C
_0211FA8C:
	mov r0, r9
	mov r1, r8
	bl FUN_ov57_0211ad9c
_0211FA98:
	tst r8, #2
	mov r11, #8
	ldr r0, [r9, #0x24]
	beq _0211FD0C
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211FCBC
_0211FAB4: ; jump table
	b _0211FAD4 ; case 0
	b _0211FCBC ; case 1
	b _0211FC98 ; case 2
	b _0211FD04 ; case 3
	b _0211FCBC ; case 4
	b _0211FD04 ; case 5
	b _0211FC44 ; case 6
	b _0211FC44 ; case 7
_0211FAD4:
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	bne _0211FBF0
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	bl  FUN_ov16_020f066c
	cmp r0, #0
	ldreqb r0, [r4, #0x31]
	cmpeq r0, #0
	ldreq r0, _0212023C ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	bne _0211FB34
	bl FUN_02029d54
	cmp r0, #1
	beq _0211FB34
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211FB70
	ldrb r5, [r4, #0x28]
	bl  FUN_ov16_020f083c
	cmp r5, r0
	bne _0211FB70
_0211FB34:
	ldr r0, _02120240 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _0211FB70
	ldr r0, _02120244 ; =0x020A1640
	ldrb r0, [r0, #0x22]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	bne _0211FB70
	ldr r0, _02120244 ; =0x020A1640
	ldr r2, _02120240 ; =0x02099F44
	ldrb r1, [r0, #0x22]
	ldr r0, [r2]
	bl  FUN_ov131_021422e4
_0211FB70:
	bl FUN_02029d54
	cmp r0, #1
	bne _0211FBAC
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _0211FBAC
	ldr r0, [r9, #0x10]
	bl  FUN_ov4_020bf6dc
	cmp r0, #0
	beq _0211FBAC
	mov r0, r9
	mov r1, #6
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FBAC:
	ldrb r0, [r4, #0x34]
	cmp r0, #0
	beq _0211FBD4
	mov r1, #0x71
	mov r0, r9
	mov r2, r1
	mov r3, #0
	bl FUN_ov57_0211ac2c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FBD4:
	mov r1, #0
	mov r0, r9
	mov r2, r1
	mov r3, r1
	bl FUN_ov57_0211ac2c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FBF0:
	mov r0, r9
	bl FUN_ov57_0211a9ac
	cmp r0, #0
	bne _0211FC14
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FC14:
	ldr r0, _02120238 ; =0x0209AC44
	mov r2, #7
	mov r1, #6
	str r2, [r9, #0x28]
	str r11, [r9, #0x2c]
	bl FUN_0202cf6c
	ldr r0, [r9, #0x10]
	mov r1, #1
	mov r2, #0x4c
	bl FUN_02041eac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FC44:
	ldr r0, [r9, #0x67c]
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r9, #0x67c]
	bl  FUN_ov16_02110b0c
	ldr r0, [r9, #0x24]
	cmp r0, #6
	mov r0, r9
	bne _0211FC88
	mov r1, #7
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FC88:
	mov r1, r6
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FC98:
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #4
	strb r6, [r9, #0xfc1]
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, r6
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FCBC:
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r9, #0x24]
	cmp r0, #4
	bne _0211FCDC
	mov r0, r9
	bl FUN_ov57_02122b3c
_0211FCDC:
	ldr r0, [r9, #0xf14]
	cmp r0, #4
	mov r0, r9
	bne _0211FCFC
	mov r1, #4
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FCFC:
	mov r1, #0
	bl FUN_ov57_0211ae9c
_0211FD04:
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FD0C:
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02120220
_0211FD18: ; jump table
	b _0211FD3C ; case 0
	b _0211FE6C ; case 1
	b _0211FE84 ; case 2
	b _0211FF3C ; case 3
	b _021200C0 ; case 4
	b _0211FF70 ; case 5
	b _0211FFA4 ; case 6
	b _0211FFA4 ; case 7
	b _02120210 ; case 8
_0211FD3C:
	tst r8, #1
	beq _0211FDBC
	ldr r1, [r9, #0x5b0]
	mov r0, r9
	bl FUN_ov57_0211bd58
	cmp r0, #0
	beq _0211FD6C
	ldr r1, [r9, #0x5b0]
	mov r0, r9
	bl FUN_ov57_0211f8b8
	cmp r0, #0
	bne _0211FD80
_0211FD6C:
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FD80:
	ldr r0, [r9, #0xfbc]
	cmp r0, #0
	beq _0211FD98
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	b _0211FDA0
_0211FD98:
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #1
_0211FDA0:
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #2
	strb r6, [r9, #0xfc1]
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FDBC:
	tst r8, #0x400
	beq _0211FDD4
	mov r0, r9
	bl FUN_ov57_0211bdbc
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FDD4:
	tst r8, #0x800
	beq _0211FE14
	ldr r0, [r9, #0xfbc]
	cmp r0, #0
	beq _0211FDF4
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	b _0211FDFC
_0211FDF4:
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #1
_0211FDFC:
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #4
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FE14:
	tst r7, #0xf0
	ldrne r0, [r9, #0x674]
	cmpne r0, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, r11
	bl FUN_0202cf6c
	ldr r1, [r9, #0x5b0]
	mov r0, r9
	mov r2, r7
	bl FUN_ov57_0211b0bc
	mov r4, r0
	mov r0, r9
	mov r1, r4
	mov r2, #6
	bl FUN_ov57_0211dcdc
	mov r0, r9
	mov r1, r4
	bl FUN_ov57_0211e3d4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FE6C:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov57_02120248
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FE84:
	tst r8, #1
	beq _0211FE9C
	mov r0, r9
	bl FUN_ov57_0211b29c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FE9C:
	tst r7, #0xf0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, r11
	bl FUN_0202cf6c
	ldr r1, [r9, #0x5b0]
	mov r0, r9
	mov r2, r7
	bl FUN_ov57_0211b0bc
	mov r4, r0
	mov r0, r9
	mov r1, r4
	mov r2, r10
	bl FUN_ov57_0211dcdc
	mov r0, r9
	mov r1, r4
	bl FUN_ov57_0211e3d4
	ldr r1, [r9, #0x5b4]
	mov r0, r9
	bl FUN_ov57_0211bd58
	mov r1, r0
	ldr r2, [r9, #0x5b0]
	mov r0, r9
	mov r3, r10
	bl FUN_ov57_0211e23c
	ldr r1, [r9, #0x5b4]
	mov r0, r9
	bl FUN_ov57_0211bd58
	mov r1, r0
	ldr r2, [r9, #0x5b0]
	mov r3, r10
	mov r0, r9
	bl FUN_ov57_0211e28c
	mov r0, r9
	mov r2, r4
	mov r1, #0x2e
	bl FUN_ov57_0211dbbc
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FF3C:
	tst r8, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, [r9, #0x67c]
	bl  FUN_ov16_02110b0c
	mov r0, r9
	mov r1, #0
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FF70:
	tst r8, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r9
	bl FUN_ov57_02122538
	mov r0, r9
	mov r1, #0
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FFA4:
	tst r8, #1
	beq _0212004C
	ldr r0, [r9, #0x67c]
	bl  FUN_ov16_02110b04
	cmp r0, #1
	beq _0211FFCC
	cmp r0, #2
	beq _02120008
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FFCC:
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r9, #0x67c]
	bl  FUN_ov16_02110b0c
	mov r1, #0
	ldr r0, [r9, #0x24]
	mov r2, r1
	cmp r0, #7
	mov r0, r9
	mov r3, r1
	streqb r5, [r9, #0x31]
	bl FUN_ov57_0211ac2c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120008:
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r9, #0x67c]
	bl  FUN_ov16_02110b0c
	ldr r0, [r9, #0x24]
	cmp r0, #6
	mov r0, r9
	bne _0212003C
	mov r1, #7
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212003C:
	mov r1, #0
	bl FUN_ov57_0211ae9c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212004C:
	tst r8, #0x20
	beq _02120084
	ldr r0, [r9, #0x67c]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, r11
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120084:
	tst r8, #0x10
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x67c]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, r11
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021200C0:
	tst r8, #1
	beq _021201AC
	ldr r0, [r9, #0xf58]
	str r5, [r9, #0xf5c]
	str r5, [r9, #0xf80]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02120198
_021200E0: ; jump table
	b _021200F8 ; case 0
	b _02120198 ; case 1
	b _02120118 ; case 2
	b _02120178 ; case 3
	b _02120158 ; case 4
	b _02120138 ; case 5
_021200F8:
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	beq _02120198
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120118:
	ldr r0, [r9, #0xf94]
	cmp r0, #0
	beq _02120198
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120138:
	ldr r0, [r9, #0xc]
	cmp r0, #0
	bne _02120198
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120158:
	ldr r0, [r9, #8]
	cmp r0, #0
	bne _02120198
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120178:
	ldr r0, [r9, #4]
	cmp r0, #0
	bne _02120198
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120198:
	ldr r0, _02120238 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021201AC:
	tst r7, #0x40
	beq _021201E0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #5
	stmib sp, {r0, r10}
	ldr r2, [r9, #0xf8c]
	ldr r3, [r9, #0xf90]
	mov r0, r9
	mov r1, #0
	bl FUN_ov57_02122c80
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021201E0:
	tst r7, #0x80
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0x10
	stmia sp, {r0, r5, r10}
	ldr r2, [r9, #0xf8c]
	ldr r3, [r9, #0xf90]
	mov r0, r9
	mov r1, #0
	bl FUN_ov57_02122c80
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120210:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov57_02123a38
_02120220:
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120228: .word 0x0209A0F4
_0212022C: .word 0x02099ED4
_02120230: .word 0x0209A454
_02120234: .word 0x02099EB4
_02120238: .word 0x0209AC44
_0212023C: .word 0x02099E98
_02120240: .word 0x02099F44
_02120244: .word 0x020A1640
	arm_func_end FUN_ov57_0211f914

	arm_func_start FUN_ov57_02120248
FUN_ov57_02120248: ; 0x02120248
	stmfd sp!, {r4, lr}
	mov r4, r0
	tst r1, #1
	beq _021202F0
	ldr r1, [r4, #0x5b8]
	bl FUN_ov57_0211bb24
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0212036C ; =0x0209A454
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	beq _021202AC
	ldr r0, _02120370 ; =0x0209AEC0
	bl FUN_02046730
	add r1, r4, #0x324
	add r3, r1, #0xc00
	ldr r1, [r3, r0, lsl #2]
	mov r2, #2
	add r1, r1, #1
	str r1, [r3, r0, lsl #2]
	ldr r1, [r4, #0x5b8]
	mov r0, r4
	strb r2, [r4, #0xf34]
	bl FUN_ov57_0211bb24
	strb r0, [r4, #0xf35]
_021202AC:
	ldr r0, _02120374 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r1, [r4, #0x5b8]
	mov r0, r4
	bl FUN_ov57_0211bb24
	mov r1, r0
	mov r0, r4
	bl FUN_ov57_0211f77c
	mov r0, r4
	bl FUN_ov57_0211e8b0
	mov r0, r4
	mov r1, #0
	bl FUN_ov57_0211ae9c
	mov r0, r4
	bl FUN_ov57_0211f73c
	ldmfd sp!, {r4, pc}
_021202F0:
	tst r2, #0x40
	beq _02120308
	mvn r1, #0
	mov r2, #0
	bl FUN_ov57_02120378
	ldmfd sp!, {r4, pc}
_02120308:
	tst r2, #0x80
	beq _02120320
	mov r1, #1
	mov r2, #0
	bl FUN_ov57_02120378
	ldmfd sp!, {r4, pc}
_02120320:
	tst r2, #0x200
	bne _02120330
	tst r2, #0x20
	beq _02120348
_02120330:
	ldr r1, [r4, #0x5c0]
	mov r0, r4
	rsb r1, r1, #0
	mov r2, #1
	bl FUN_ov57_02120378
	ldmfd sp!, {r4, pc}
_02120348:
	tst r2, #0x100
	bne _02120358
	tst r2, #0x10
	ldmeqfd sp!, {r4, pc}
_02120358:
	ldr r1, [r4, #0x5c0]
	mov r0, r4
	mov r2, #1
	bl FUN_ov57_02120378
	ldmfd sp!, {r4, pc}
_0212036C: .word 0x0209A454
_02120370: .word 0x0209AEC0
_02120374: .word 0x0209AC44
	arm_func_end FUN_ov57_02120248

	arm_func_start FUN_ov57_02120378
FUN_ov57_02120378: ; 0x02120378
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x5b8]
	mov r4, r2
	adds r6, r0, r1
	ldr r0, [r5, #0x5bc]
	submi r6, r0, #1
	bmi _021203A4
	cmp r0, r6
	cmple r4, #0
	moveq r6, #0
_021203A4:
	ldr r7, [r5, #0x5c0]
	mov r0, r6
	mov r1, r7
	bl FUN_0201f9bc
	mul r1, r7, r0
	str r1, [r5, #0x5c4]
	cmp r4, #0
	beq _021203F0
	ldr r0, [r5, #0x5bc]
	cmp r0, r1
	movle r0, #0
	strle r0, [r5, #0x5c4]
	ldr r0, [r5, #0x5b8]
	ldr r1, [r5, #0x5c0]
	bl FUN_0201f9bc
	ldr r0, [r5, #0x5c4]
	add r0, r0, r1
	str r0, [r5, #0x5b8]
	b _021203F4
_021203F0:
	str r6, [r5, #0x5b8]
_021203F4:
	ldr r0, [r5, #0x5bc]
	ldr r1, [r5, #0x5b8]
	sub r2, r0, #1
	cmp r1, r2
	bgt _02120414
	cmp r1, #0
	movlt r1, #0
	mov r2, r1
_02120414:
	add r0, r5, #0x1b8
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x400
	str r2, [r5, #0x5b8]
	bl  FUN_ov16_020f53b0
	mov r0, r5
	bl FUN_ov57_0211ad14
	ldr r0, _021204B8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r1, r5, #0x1b8
	mov r0, r5
	add r1, r1, #0x400
	mov r2, #6
	bl FUN_ov57_0211e52c
	mov r0, r5
	add r1, r5, #0x1b8
	add r1, r1, #0x400
	bl FUN_ov57_0211e664
	mov r0, r5
	add r1, r5, #0x1b8
	add r1, r1, #0x400
	bl FUN_ov57_0211e9d4
	mov r0, r5
	ldr r1, [r5, #0x5b8]
	bl FUN_ov57_0211bb24
	str r0, [r5, #0x66c]
	mov r0, r5
	ldr r1, [r5, #0x5b8]
	bl FUN_ov57_0211bb24
	mov r1, r0
	mov r0, r5
	bl FUN_ov57_0211de2c
	mov r2, r4
	mov r0, r5
	ldr r1, [r5, #0x5b0]
	bl FUN_ov57_0211dcdc
	mov r0, r5
	bl FUN_ov57_021204bc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021204B8: .word 0x0209AC44
	arm_func_end FUN_ov57_02120378

	arm_func_start FUN_ov57_021204bc
FUN_ov57_021204bc: ; 0x021204BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x5bc]
	ldr r1, [r5, #0x5c0]
	sub r0, r0, #1
	bl FUN_0201f9bc
	add r6, r0, #1
	ldr r0, [r5, #0x5b8]
	ldr r1, [r5, #0x5c0]
	bl FUN_0201f9bc
	add r9, r0, #1
	ldr r2, _02120644 ; =0x66666667
	cmp r6, #1
	smull r1, r8, r2, r9
	ldr r1, [r5, #0x678]
	movlt r6, #1
	add r1, r5, r1, lsl #2
	ldr r7, [r1, #0x5e8]
	smull r1, r3, r2, r9
	mov r0, r9, lsr #0x1f
	smull r10, r12, r2, r6
	add r3, r0, r3, asr #2
	mov r1, r6, lsr #0x1f
	add r8, r0, r8, asr #2
	smull r10, lr, r2, r6
	add lr, r1, lr, asr #2
	mov r5, #0
	mov r0, #0xa
	add r12, r1, r12, asr #2
	smull r1, r2, r0, r8
	sub r8, r9, r1
	smull r1, r2, r0, r12
	sub r12, r6, r1
	mov r4, #1
	ldr r6, _02120648 ; =0x02099F38
	str r5, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	str lr, [sp, #0xc]
	str r8, [sp, #8]
	str r12, [sp, #0x10]
	str r3, [sp, #4]
	bl  FUN_ov16_0211401c
	str r5, [sp]
	mov r8, #2
	ldr r0, [r6]
	ldr r3, [sp, #8]
	mov r1, r7
	mov r2, r8
	bl  FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r6]
	ldr r3, [sp, #0xc]
	mov r1, r7
	mov r2, #3
	bl  FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r6]
	ldr r3, [sp, #0x10]
	mov r1, r7
	mov r2, #4
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021205E0
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	mov r3, r8
	bl  FUN_ov16_02113f7c
	b _021205F8
_021205E0:
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	mov r3, r8
	bl  FUN_ov16_02113ec0
_021205F8:
	ldr r0, [sp, #0xc]
	mov r2, #3
	cmp r0, #0
	mov r3, #2
	bne _02120624
	ldr r0, _02120648 ; =0x02099F38
	mov r1, r7
	ldr r0, [r0]
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02120624:
	mov r1, #1
	str r1, [sp]
	ldr r0, _02120648 ; =0x02099F38
	mov r1, r7
	ldr r0, [r0]
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02120644: .word 0x66666667
_02120648: .word 0x02099F38
	arm_func_end FUN_ov57_021204bc

	arm_func_start FUN_ov57_0212064c
FUN_ov57_0212064c: ; 0x0212064C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r2, _02120824 ; =0x02099ED4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r5, #0x20]
	cmpeq r0, #6
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0xf80]
	cmp r0, #1
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0xf64]
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	addgt sp, sp, #8
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02120828 ; =0x0209A454
	ldrb r1, [r0, #0x32]
	cmp r1, #0
	beq _021206CC
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_021206CC:
	ldr r6, _0212082C ; =0x02099EB4
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021207BC
_021206F0: ; jump table
	b _021207BC ; case 0
	b _02120708 ; case 1
	b _02120724 ; case 2
	b _0212075C ; case 3
	b _02120788 ; case 4
	b _02120740 ; case 5
_02120708:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov57_0211eb38
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120724:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov57_0211ee88
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120740:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov57_0211f11c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212075C:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, #0
	str r1, [sp]
	mov r1, r0
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	mov r0, r5
	bl FUN_ov57_0211f1cc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120788:
	ldr r0, [r6]
	add r1, sp, #4
	bl  FUN_ov16_0210f48c
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	str r7, [sp]
	mov r1, r0
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r5
	bl FUN_ov57_0211f1cc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021207BC:
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _021207F0
	ldr r0, [r5, #0x24]
	cmp r0, #2
	bne _021207F0
	ldrb r0, [r5, #0xf19]
	cmp r0, #0
	beq _021207F0
	mov r0, r5
	bl FUN_ov57_0211b29c
	mov r0, #0
	strb r0, [r5, #0xf19]
_021207F0:
	ldr r0, [r5, #0x24]
	cmp r0, #4
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0212082C ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl FUN_ov57_02122fe4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120824: .word 0x02099ED4
_02120828: .word 0x0209A454
_0212082C: .word 0x02099EB4
	arm_func_end FUN_ov57_0212064c

	arm_func_start FUN_ov57_02120830
FUN_ov57_02120830: ; 0x02120830
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r10, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _02120E4C ; =0x02099EB4
	str r1, [r10, #0xefc]
	ldr r0, [r0]
	ldr r4, _02120E50 ; =0x0209A454
	mov r5, #1
	mov r7, #0
	bl  FUN_ov16_0210e980
	ldr r0, _02120E54 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	bl  FUN_ov16_020f066c
	cmp r0, #0
	ldreqb r0, [r4, #0x31]
	cmpeq r0, #0
	ldreq r0, _02120E58 ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	bne _021208CC
	bl FUN_02029d54
	cmp r0, #1
	beq _021208CC
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _021209F4
	ldrb r4, [r4, #0x28]
	bl  FUN_ov16_020f083c
	cmp r4, r0
	bne _021209F4
_021208CC:
	ldr r0, _02120E5C ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _021209F4
	ldr r1, _02120E60 ; =0x020A1640
	ldrb r1, [r1, #0x22]
	cmp r1, #2
	bhi _021209F4
	bl  FUN_ov131_021421f4
	ldr r6, _02120E64 ; =0x0209BA20
	mov r9, #0
	mov r0, r6
	mov r1, r9
	bl FUN_0205107c
	mov r4, r0
	mov r0, r6
	mov r1, #2
	bl FUN_0205107c
	mov r8, r0
	b _0212097C
_0212091C:
	mov r0, r9
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _02120970
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r4
	bl FUN_0204fca0
	cmp r0, #0
	bne _02120954
	mov r0, r6
	mov r1, r7
	mov r2, r7
	bl FUN_0206d9cc
_02120954:
	mov r0, r6
	mov r1, r7
	bl FUN_0206d9b0
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_0206d9cc
_02120970:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
_0212097C:
	cmp r9, #0x64
	blt _0212091C
	mov r9, #0
	ldr r4, _02120E64 ; =0x0209BA20
	mov r11, #2
	b _021209EC
_02120994:
	mov r0, r8
	mov r1, r9
	bl FUN_0204fbe8
	mov r1, r7
	bl  FUN_ov16_020efa9c
	movs r6, r0
	beq _021209E0
	mov r1, r5
	bl FUN_0206d9b0
	cmp r0, #0
	bne _021209E0
	mov r0, r4
	mov r1, r11
	mov r2, r5
	bl FUN_0204c86c
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_0206d9cc
_021209E0:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
_021209EC:
	cmp r9, #0x10
	blt _02120994
_021209F4:
	mov r7, #0
	mov r1, r7
	add r0, r10, #0x3e4
	mov r2, #0x54
	str r7, [r10, #0x18]
	str r7, [r10, #0x14]
	strb r7, [r10, #0x1c]
	str r7, [r10, #0x20]
	str r7, [r10, #0x24]
	mov r6, #1
	bl MI_CpuFill8
	add r0, r10, #0x38
	mov r1, r7
	add r0, r0, #0x400
	mov r2, #0xa8
	bl MI_CpuFill8
	mov r1, r7
	add r0, r10, #0x4e0
	mov r2, #4
	bl MI_CpuFill8
	add r0, r10, #0xe4
	mov r1, r7
	add r0, r0, #0x400
	mov r2, #0x40
	bl MI_CpuFill8
	add r0, r10, #0x124
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #0x8c
	bl MI_CpuFill8
	add r0, r10, #0x1b8
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #0xb4
	str r7, [r10, #0x5b4]
	bl MI_CpuFill8
	add r0, r10, #0x288
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #0x800
	bl MI_CpuFill8
	add r0, r10, #0xe00
	ldr r4, _02120E50 ; =0x0209A454
	str r7, [r10, #0xe88]
	str r7, [r10, #0xe8c]
	str r7, [r10, #0xf98]
	strb r7, [r10, #0xf1b]
	strb r7, [r10, #0x31]
	str r7, [r10, #0x28]
	str r7, [r10, #0x2c]
	str r7, [r10, #0xf10]
	str r7, [r10, #0x684]
	str r7, [r10, #0x66c]
	str r7, [r10, #0x674]
	strb r7, [r10, #0x30]
	strh r7, [r0, #0xf8]
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	ldrneb r0, [r4, #0x29]
	cmpne r0, #0
	strneb r6, [r10, #0x30]
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	ldrneb r0, [r4, #0x29]
	cmpne r0, #0
	beq _02120B24
	ldr r1, _02120E68 ; =0x02124BEC
	sub r2, r6, #2
	mov r0, r10
	str r7, [r10, #0xfc4]
	str r6, [r10, #0xfc8]
	str r2, [r10, #0xfcc]
	str r7, [r10, #0xfd0]
	strb r7, [r10, #0xfd4]
	strb r7, [r10, #0xfd5]
	bl FUN_ov57_02119f78
_02120B24:
	mov r5, #0
	add r0, r10, #0x354
	mov r1, r5
	add r0, r0, #0xc00
	mov r2, #4
	str r5, [r10, #0xf84]
	str r5, [r10, #0xf5c]
	str r5, [r10, #0xf60]
	str r5, [r10, #0xf80]
	str r5, [r10, #0xf64]
	str r5, [r10, #0xf6c]
	str r5, [r10, #0xf70]
	str r5, [r10, #0xf74]
	str r5, [r10, #0xf78]
	bl MI_CpuFill8
	mov r0, #6
	str r0, [r10, #0xf88]
	str r5, [r10, #0xf38]
	b _02120B7C
_02120B70:
	add r0, r10, r5, lsl #2
	str r7, [r0, #0xf3c]
	add r5, r5, #1
_02120B7C:
	cmp r5, #6
	blt _02120B70
	mov r0, r10
	mov r1, r7
	bl FUN_ov57_02122dbc
	ldr r0, [r10, #0x10]
	strb r7, [r10, #0xf9c]
	strb r7, [r10, #0x1d]
	bl FUN_0204204c
	cmp r0, #0x5b
	cmpne r0, #0x5c
	cmpne r0, #0x5d
	add r0, r10, #0x3a8
	mov r1, r7
	add r0, r0, #0xc00
	mov r2, #0x14
	streqb r6, [r10, #0x1d]
	streqb r6, [r10, #0xf9c]
	str r7, [r10, #0xf94]
	str r7, [r10, #0xfbc]
	strb r6, [r10, #0xfc0]
	bl MI_CpuFill8
	add r0, r10, #0x294
	mov r1, r7
	add r0, r0, #0xc00
	mov r2, #0x60
	str r7, [r10, #0xfa0]
	strb r7, [r10, #0xfa4]
	bl MI_CpuFill8
	add r0, r10, #0x324
	mov r3, #2
	mov r1, r7
	add r0, r0, #0xc00
	mov r2, #0x10
	str r3, [r10, #0xef4]
	strb r6, [r10, #0xf18]
	strb r7, [r10, #0xf19]
	strb r7, [r10, #0xf1a]
	bl MI_CpuFill8
	add r0, r10, #0x334
	add r0, r0, #0xc00
	mov r1, r7
	mov r2, #4
	bl MI_CpuFill8
	mov r0, r10
	bl FUN_ov57_0211b9a4
	add r0, r10, #0x3d8
	add r0, r0, #0xc00
	mov r1, r7
	mov r2, #0x20
	bl MI_CpuFill8
	mov r0, r10
	bl FUN_ov57_0211bae4
	mov r0, r10
	bl FUN_ov57_02123178
	mov r0, r10
	bl FUN_ov57_02123994
	mov r0, #0x74
	bl FUN_0201e014
	cmp r0, #0
	beq _02120C74
	bl  FUN_ov16_02110558
_02120C74:
	ldr r1, _02120E6C ; =0x02099F38
	str r0, [r10, #0x67c]
	ldr r0, [r1]
	bl  FUN_ov16_021123b4
	ldr r5, _02120E70 ; =0x02099EC0
	ldr r0, [r5]
	bl FUN_02056828
	mov r0, #0x4000
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6400
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #0x94000
	mov r2, #0x11
	mov r3, #0x10
	bl FUN_020568c4
	ldr r0, [r5]
	bl FUN_02057be4
	ldr r5, _02120E64 ; =0x0209BA20
	mov r0, r5
	bl  FUN_ov16_020eeca0
	add r1, r10, #0x308
	add r2, r10, #0x30c
	mov r0, r10
	add r1, r1, #0xc00
	add r2, r2, #0xc00
	bl FUN_ov57_0211bc38
	ldrb r9, [r4, #0x28]
	mov r0, r10
	bl FUN_ov57_0211f7e8
	mov r8, r0
	mov r0, r9
	bl  FUN_ov16_020f078c
	mov r2, r0
	mov r1, r8
	mov r0, r5
	mov r3, r7
	bl FUN_0206fb74
	ldrb r1, [r4, #0x28]
	mov r0, r5
	mov r2, r7
	mov r3, r7
	bl FUN_0204d7fc
	ldr r0, _02120E74 ; =0x0209F5C0
	strb r7, [r10, #0xfc1]
	mov r1, r7
	bl  FUN_ov16_020f5a58
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	beq _02120D58
	add r0, r10, #0x3a8
	add r0, r0, #0xc00
	mov r1, #0x1c
	mov r2, #6
	bl  FUN_ov16_020f2fa8
_02120D58:
	ldr r0, _02120E78 ; =0x020A0640
	str r6, [r10, #0xc]
	ldrb r0, [r0, #0x1a]
	ldr r1, _02120E50 ; =0x0209A454
	cmp r0, #0
	bne _02120D7C
	ldrb r0, [r1, #0x31]
	cmp r0, #0
	strne r7, [r10, #0xc]
_02120D7C:
	str r6, [r10, #8]
	ldrb r0, [r1, #0x2a]
	cmp r0, #0
	ldrneb r0, [r1, #0x31]
	cmpne r0, #0
	strne r7, [r10, #8]
	str r6, [r10, #4]
	ldrb r0, [r1, #0x2a]
	cmp r0, #0
	beq _02120DB0
	ldrb r0, [r1, #0x31]
	cmp r0, #0
	bne _02120DCC
_02120DB0:
	ldr r0, _02120E78 ; =0x020A0640
	ldrb r2, [r0, #0x1a]
	cmp r2, #0
	beq _02120DD0
	ldrb r0, [r0, #0x8e]
	cmp r0, #0
	bne _02120DD0
_02120DCC:
	str r7, [r10, #4]
_02120DD0:
	ldrb r0, [r1, #0x31]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02120E64 ; =0x0209BA20
	mov r1, #2
	bl FUN_0205107c
	mov r5, #0
	mov r4, r0
	mov r6, r5
	b _02120E2C
_02120DFC:
	mov r0, r4
	mov r1, r6
	bl FUN_0204fbe8
	mov r1, r7
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _02120E28
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #1
	addeq r5, r5, #1
_02120E28:
	add r6, r6, #1
_02120E2C:
	cmp r6, #0x10
	blt _02120DFC
	cmp r5, #0
	streq r7, [r10, #4]
	streq r7, [r10, #8]
	streq r7, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120E4C: .word 0x02099EB4
_02120E50: .word 0x0209A454
_02120E54: .word 0x02099ED4
_02120E58: .word 0x02099E98
_02120E5C: .word 0x02099F44
_02120E60: .word 0x020A1640
_02120E64: .word 0x0209BA20
_02120E68: .word 0x02124BEC
_02120E6C: .word 0x02099F38
_02120E70: .word 0x02099EC0
_02120E74: .word 0x0209F5C0
_02120E78: .word 0x020A0640
	arm_func_end FUN_ov57_02120830

	arm_func_start FUN_ov57_02120e7c
FUN_ov57_02120e7c: ; 0x02120E7C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02120F20 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xf80]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xf64]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ble _02120ECC
	sub r0, r0, #1
	str r0, [r4, #0x2c]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
_02120ECC:
	ldr r0, [r4, #0x28]
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02120F24 ; =0x0209AEC0
	mov r5, #0
	str r5, [r4, #0x28]
	bl FUN_02046730
	add r1, r4, #0x324
	add r3, r1, #0xc00
	ldr r2, [r3, r0, lsl #2]
	mov r1, r5
	add r2, r2, #1
	str r2, [r3, r0, lsl #2]
	mov r2, #1
	mov r3, #3
	mov r0, r4
	strb r3, [r4, #0xf34]
	strb r2, [r4, #0x30]
	strb r2, [r4, #0xf1b]
	bl FUN_ov57_0211ae9c
	ldmfd sp!, {r3, r4, r5, pc}
_02120F20: .word 0x02099ED4
_02120F24: .word 0x0209AEC0
	arm_func_end FUN_ov57_02120e7c

	arm_func_start FUN_ov57_02120f28
FUN_ov57_02120f28: ; 0x02120F28
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r0, [r8, #0x20]
	ldr r4, _02121678 ; =0x0209A454
	cmp r0, #6
	mov r7, #1
	mov r5, #0
	cmpne r0, #7
	beq _02120F58
	cmp r0, #8
	bne _02120FA0
_02120F58:
	ldr r0, _0212167C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrneb r0, [r4, #0x32]
	cmpne r0, #0
	beq _02120FA0
	ldr r6, _02121680 ; =0x0209AEC0
	mov r0, r6
	bl FUN_020467c0
	cmp r0, #0
	ldrneb r0, [r6, #0x64]
	cmpne r0, #0
	beq _02120FA0
	mov r0, r6
	bl FUN_020467ac
	mov r0, r6
	bl FUN_02046e28
	b _02120FE8
_02120FA0:
	ldr r0, _0212167C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02120FE8
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	bne _02120FE8
	ldr r0, _02121680 ; =0x0209AEC0
	bl FUN_020466e4
	cmp r0, #0
	ldreq r0, [r8, #0x20]
	cmpeq r0, #6
	bne _02120FE8
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r3, r1
	bl FUN_ov57_0211ac2c
_02120FE8:
	ldr r0, [r8, #0x20]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _021215F4
_02120FF8: ; jump table
	b _02121024 ; case 0
	b _02121044 ; case 1
	b _02121170 ; case 2
	b _02121070 ; case 3
	b _02121100 ; case 4
	b _0212124C ; case 5
	b _02121464 ; case 6
	b _021214C0 ; case 7
	b _021214C0 ; case 8
	b _021214DC ; case 9
	b _0212151C ; case 10
_02121024:
	ldr r0, _02121684 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_02057c2c
	cmp r0, #0
	bne _021215F4
	mov r0, r8
	bl FUN_ov57_0211a04c
	str r7, [r8, #0x20]
_02121044:
	add r0, r8, #0x3e4
	mov r1, #7
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _021215F4
	mov r0, r8
	bl FUN_ov57_0211a304
	mov r0, r8
	bl FUN_ov57_0211a3a0
	mov r0, #3
	str r0, [r8, #0x20]
_02121070:
	mov r0, r8
	bl FUN_ov57_0211a8cc
	cmp r0, #0
	beq _021215F4
	mov r0, r8
	bl FUN_ov57_0211a948
	ldr r0, [r8, #0x598]
	cmp r0, #0
	bne _021210F8
	ldr r9, _02121688 ; =0x02099F38
	mov r1, r7
	ldr r0, [r9]
	mov r2, r7
	bl  FUN_ov16_02112724
	mov r6, r0
	str r6, [r8, #0x598]
	str r5, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0x42
	str r0, [sp, #8]
	mov r1, #0x31
	str r1, [sp, #0xc]
	mov r0, r8
	mov r1, r6
	mov r2, r7
	mov r3, #0x16
	bl FUN_ov57_02123e9c
	str r5, [sp]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r7
	mov r3, #2
	bl  FUN_ov16_02113ec0
_021210F8:
	mov r0, #4
	str r0, [r8, #0x20]
_02121100:
	mov r0, r8
	bl FUN_ov57_0211bf8c
	mov r0, r8
	bl FUN_ov57_0211c1dc
	ldrb r0, [r8, #0x30]
	cmp r0, #0
	mov r0, r8
	beq _02121138
	mov r1, #0
	bl FUN_ov57_0211ae9c
	mov r0, #5
	add sp, sp, #0x10
	str r0, [r8, #0x20]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121138:
	bl FUN_ov57_0211e780
	mov r0, r8
	bl FUN_ov57_0211e8b0
	mov r0, r8
	bl FUN_ov57_02122bf4
	mov r0, r8
	bl FUN_ov57_0211c690
	mov r0, r8
	bl FUN_ov57_021220fc
	mov r0, r8
	mov r1, #0
	bl FUN_ov57_0211ae9c
	mov r0, #2
	str r0, [r8, #0x20]
_02121170:
	ldrb r0, [r8, #0x30]
	cmp r0, #0
	bne _02121188
	mov r0, r8
	bl FUN_ov57_0211a66c
	b _0212123C
_02121188:
	ldr r0, _02121684 ; =0x02099EC0
	mov r6, #1
	ldr r0, [r0]
	mov r1, r6
	bl FUN_02056e94
	mov r10, #2
	ldr r9, _02121688 ; =0x02099F38
	b _021211C0
_021211A8:
	add r1, r8, r6, lsl #2
	ldr r0, [r9]
	ldr r1, [r1, #0x524]
	mov r2, r10
	bl  FUN_ov16_02113390
	add r6, r6, #1
_021211C0:
	cmp r6, #0x1c
	ble _021211A8
	mov r0, r8
	bl FUN_ov57_0211ce18
	mov r6, #1
	sub r0, r6, #2
	str r5, [r8, #0xfc4]
	str r6, [r8, #0xfc8]
	str r0, [r8, #0xfcc]
	str r5, [r8, #0xfd0]
	strb r5, [r8, #0xfd4]
	strb r5, [r8, #0xfd5]
	bl  FUN_ov16_020f081c
	cmp r0, #0
	movne r6, r5
	mov r0, r6
	bl  FUN_ov16_020f09c0
	cmp r0, #0
	beq _02121230
	mov r0, #7
	sub r1, r0, #8
	mov r2, r1
	mov r3, #0
	bl  FUN_ov1_020db97c
	cmp r0, #0
	bne _02121230
	ldr r1, _0212168C ; =0x02124C30
	b _02121234
_02121230:
	ldr r1, _02121690 ; =0x02124C74
_02121234:
	mov r0, r8
	bl FUN_ov57_02119f78
_0212123C:
	mov r0, r8
	bl FUN_ov57_0211a288
	mov r0, #5
	str r0, [r8, #0x20]
_0212124C:
	mov r0, r8
	bl FUN_ov57_0211a8cc
	cmp r0, #0
	beq _021215F4
	ldrb r0, [r8, #0xf1b]
	cmp r0, #0
	beq _021212D0
	ldr r6, _02121688 ; =0x02099F38
	mov r9, #2
	ldr r0, [r6]
	ldr r1, [r8, #0x544]
	mov r2, r9
	bl  FUN_ov16_02114370
	ldr r0, [r6]
	ldr r1, [r8, #0x548]
	mov r2, r9
	bl  FUN_ov16_02114370
	ldr r0, [r6]
	ldr r1, [r8, #0x54c]
	mov r2, r9
	bl  FUN_ov16_02113390
	mov r0, r8
	bl FUN_ov57_0211c0f8
	ldrb r0, [r8, #0x30]
	cmp r0, #0
	bne _021212D0
	mov r0, r8
	bl FUN_ov57_0211b9a4
	mov r0, r8
	bl FUN_ov57_0211bae4
	mov r0, r8
	bl FUN_ov57_0211e8b0
	strb r5, [r8, #0xf1b]
_021212D0:
	ldrb r0, [r8, #0x30]
	str r5, [r8, #0x66c]
	cmp r0, #0
	bne _02121394
	mov r0, r8
	bl FUN_ov57_0211dd24
	ldr r0, _02121694 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _021215F4
	ldr r6, _02121698 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r6]
	bl  FUN_ov16_0210eb3c
	mov r0, r8
	bl FUN_ov57_02122500
	ldr r0, [r6]
	mov r1, #0xa
	bl  FUN_ov16_0210eab4
	ldr r0, [r6]
	mov r1, #0x47
	bl  FUN_ov16_0210eab4
	ldr r0, [r6]
	mov r1, #0x48
	bl  FUN_ov16_0210eab4
	mov r0, r8
	bl FUN_ov57_0211cbcc
	mov r0, r8
	bl FUN_ov57_0211ca68
	mov r0, r8
	bl FUN_ov57_0211c97c
	mov r0, r8
	bl FUN_ov57_0211c9f4
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	bne _02121374
	mov r0, r8
	bl FUN_ov57_0211ce18
	mov r0, r8
	bl FUN_ov57_0211cc38
_02121374:
	mov r0, r8
	bl FUN_ov57_0211ce48
	mov r0, r8
	bl FUN_ov57_0211c3b4
	mov r0, r8
	bl FUN_ov57_0211c4d4
	mov r0, r8
	bl FUN_ov57_0211c5fc
_02121394:
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	beq _021213C4
	ldrb r0, [r4, #0x29]
	cmp r0, #0
	ldreqb r0, [r8, #0xf9c]
	cmpeq r0, #0
	bne _021213C4
	mov r0, r8
	mov r1, #5
	strb r7, [r8, #0xf9c]
	bl FUN_ov57_0211ae9c
_021213C4:
	mov r0, r8
	bl FUN_ov57_0211b3e4
	ldrb r0, [r8, #0x30]
	cmp r0, #0
	bne _021213F0
	mov r0, r8
	bl FUN_ov57_0211def8
	ldr r1, [r8, #0x5b0]
	mov r0, r8
	mov r2, #0
	bl FUN_ov57_0211dcdc
_021213F0:
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldrb r0, [r8, #0x30]
	mov r1, #6
	str r1, [r8, #0x20]
	cmp r0, #0
	beq _0212143C
	ldr r4, _0212169C ; =0x0209F5C0
	mov r1, r5
	mov r0, r4
	mov r2, r5
	bl  FUN_ov16_020f5ff4
	mov r0, r8
	bl FUN_ov57_0211d5f4
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020f672c
_0212143C:
	ldrb r0, [r8, #0xf1b]
	cmp r0, #0
	ldrneb r0, [r8, #0x30]
	cmpne r0, #0
	beq _02121464
	mov r0, r8
	mov r1, #7
	bl FUN_ov57_0211ae4c
	strb r5, [r8, #0xf1b]
	b _021215F4
_02121464:
	ldrb r0, [r8, #0x30]
	cmp r0, #0
	beq _02121488
	ldr r0, [r8, #0x10]
	add r1, r8, #0x3c4
	ldr r2, [r0]
	add r1, r1, #0xc00
	ldr r2, [r2, #0x3c]
	blx r2
_02121488:
	ldr r0, [r8, #0x24]
	cmp r0, #8
	bne _021215F4
	add r0, r8, #0x7c
	add r0, r0, #0x1000
	bl  FUN_ov16_020f5868
	add r0, r8, #0x1000
	ldr r0, [r0, #0xa0]
	cmp r0, #0
	beq _021215F4
	mov r0, r8
	mov r1, #0
	bl FUN_ov57_02123dc8
	b _021215F4
_021214C0:
	ldr r0, [r8, #0x10]
	add r1, r8, #0x3c4
	ldr r2, [r0]
	add r1, r1, #0xc00
	ldr r2, [r2, #0x3c]
	blx r2
	b _021215F4
_021214DC:
	ldr r0, _02121694 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _021215F4
	ldr r0, [r8, #0x10]
	bl FUN_02042054
	ldr r1, [r8, #0x18]
	cmp r1, r0
	mov r0, #6
	beq _02121510
	bl  FUN_ov16_020f153c
	b _02121514
_02121510:
	bl  FUN_ov16_020f1514
_02121514:
	mov r0, #0xa
	str r0, [r8, #0x20]
_0212151C:
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _021215F4
	ldr r1, [r8, #0x14]
	ldr r0, [r8, #0x18]
	cmp r1, r0
	cmpeq r1, #0
	bne _02121568
	ldr r4, [r8, #0x10]
	mov r1, #0
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	b _021215F4
_02121568:
	ldr r0, _0212167C ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _021215CC
	ldrb r0, [r8, #0x1c]
	cmp r0, #0
	bne _021215CC
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	beq _021215CC
	ldr r6, _021216A0 ; =0x0209BA20
	mov r1, r5
	mov r0, r6
	bl FUN_0204b23c
	mov r0, r6
	mov r1, r7
	bl FUN_0204b23c
	strb r5, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r7, [r4, #0x2e]
	strb r7, [r4, #0x2f]
	strb r5, [r4, #0x30]
	strb r5, [r4, #0x31]
	strb r5, [r4, #0x32]
	strb r5, [r4, #0x33]
_021215CC:
	ldr r4, [r8, #0x10]
	ldr r5, [r8, #0x18]
	ldr r2, [r8, #0x14]
	mov r0, r4
	mov r1, #0
	bl FUN_02041eac
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl FUN_02041eac
_021215F4:
	mov r0, r8
	bl FUN_ov57_0211be4c
	ldr r0, [r8, #0xf64]
	cmp r0, #0
	beq _02121610
	mov r0, r8
	bl FUN_ov57_02122d2c
_02121610:
	mov r0, r8
	bl FUN_ov57_02120e7c
	ldr r0, [r8, #0xf5c]
	cmp r0, #1
	bne _0212162C
	mov r0, r8
	bl FUN_ov57_02122dcc
_0212162C:
	ldr r0, [r8, #0xfa0]
	ldr r2, _021216A4 ; =0x0209A110
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	str r0, [r8, #0xfa0]
	ldr r1, [r2]
	mov r0, r8
	bl FUN_ov57_0211e6b0
	ldr r0, [r8, #0x20]
	cmp r0, #6
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _02121684 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_0205722c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121678: .word 0x0209A454
_0212167C: .word 0x020A0640
_02121680: .word 0x0209AEC0
_02121684: .word 0x02099EC0
_02121688: .word 0x02099F38
_0212168C: .word 0x02124C30
_02121690: .word 0x02124C74
_02121694: .word 0x02099ED4
_02121698: .word 0x02099EB4
_0212169C: .word 0x0209F5C0
_021216A0: .word 0x0209BA20
_021216A4: .word 0x0209A110
	arm_func_end FUN_ov57_02120f28

	arm_func_start FUN_ov57_021216a8
FUN_ov57_021216a8: ; 0x021216A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #6
	cmpne r0, #7
	cmpne r0, #8
	ldmnefd sp!, {r4, pc}
	ldr r0, _021216DC ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	mov r0, r4
	bl FUN_ov57_0211c2f0
	ldmfd sp!, {r4, pc}
_021216DC: .word 0x0209F5C0
	arm_func_end FUN_ov57_021216a8

	arm_func_start FUN_ov57_021216e0
FUN_ov57_021216e0: ; 0x021216E0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #0xefc]
	bic r0, r0, #0x1f00
	orr r0, r0, r2, lsl #8
	str r0, [r1]
	bl  FUN_ov16_020f066c
	cmp r0, #0
	ldreq r5, _02121934 ; =0x0209A454
	ldreqb r0, [r5, #0x31]
	cmpeq r0, #0
	ldreq r0, _02121938 ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	bne _0212174C
	bl FUN_02029d54
	cmp r0, #1
	beq _0212174C
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _02121770
	ldrb r5, [r5, #0x28]
	bl  FUN_ov16_020f083c
	cmp r5, r0
	bne _02121770
_0212174C:
	ldr r0, _0212193C ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _02121770
	ldr r1, _02121940 ; =0x020A1640
	ldrb r1, [r1, #0x22]
	cmp r1, #2
	bhi _02121770
	bl  FUN_ov131_021422e4
_02121770:
	ldr r1, [r4, #0xf98]
	cmp r1, #0
	ble _02121790
	ldr r0, _02121944 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0xf98]
_02121790:
	ldr r0, [r4, #0x67c]
	cmp r0, #0
	beq _021217A8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021217A8:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x67c]
	bl FUN_ov57_02122b3c
	mov r0, r4
	bl FUN_ov57_021235a8
	mov r0, r4
	bl FUN_ov57_021239c8
	ldr r0, _02121948 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0212194C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r5, _02121950 ; =0x02099EC0
	ldr r0, [r5]
	bl FUN_020568a4
	ldr r0, [r5]
	bl FUN_02057c60
	ldr r0, _02121944 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r0, _02121934 ; =0x0209A454
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	beq _02121820
	add r0, r4, #0x3a8
	add r0, r0, #0xc00
	mov r1, #1
	bl  FUN_ov16_020f2fe4
_02121820:
	mov r8, #0
	ldr r0, _02121954 ; =0x0209F5C0
	mov r1, r8
	bl  FUN_ov16_020f5af0
	mov r0, r4
	bl FUN_ov57_0211a7cc
	ldr r5, _02121934 ; =0x0209A454
	ldr r1, [r4, #0x5b0]
	ldrb r0, [r5, #0x28]
	mov r2, r8
	mov r3, r8
	bl  FUN_ov16_020efb6c
	strh r0, [r5, #0x2c]
	ldrb r1, [r5, #0x28]
	ldr r7, _02121958 ; =0x0209BA20
	mov r2, r8
	mov r0, r7
	mov r3, r8
	bl FUN_0204d7fc
	ldrb r0, [r5, #0x30]
	cmp r0, #0
	beq _021218B4
	mov r0, r7
	bl FUN_02073f08
	cmp r0, #0
	bne _021218B4
	ldrb r1, [r5, #0x28]
	mov r0, r7
	bl FUN_0207249c
	mov r6, r0
	ldrb r0, [r5, #0x28]
	bl  FUN_ov16_020f078c
	mov r2, r0
	ldrh r1, [r6, #0x22]
	mov r0, r7
	mov r3, r8
	bl FUN_0206fb74
_021218B4:
	ldr r0, _02121958 ; =0x0209BA20
	bl  FUN_ov16_020eedb8
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _021218DC
	bl FUN_02029d54
	cmp r0, #1
	bne _021218DC
	ldr r0, [r4, #0x10]
	bl  FUN_ov4_020bf8e8
_021218DC:
	ldr r0, [r4, #0x10]
	bl FUN_0204204c
	cmp r0, #0x1d
	beq _021218FC
	ldr r0, [r4, #0x10]
	bl FUN_0204204c
	cmp r0, #0x1b
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_021218FC:
	ldr r0, _02121934 ; =0x0209A454
	mov r1, #1
	strb r1, [r0, #0x2e]
	strb r1, [r0, #0x2f]
	mov r1, #0
	strb r1, [r0, #0x30]
	strb r1, [r0, #0x31]
	strb r1, [r0, #0x32]
	strb r1, [r0, #0x33]
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	strb r1, [r0, #0x2a]
	strb r1, [r0, #0x2b]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02121934: .word 0x0209A454
_02121938: .word 0x02099E98
_0212193C: .word 0x02099F44
_02121940: .word 0x020A1640
_02121944: .word 0x02099F38
_02121948: .word 0x02099EB4
_0212194C: .word 0x02099ED4
_02121950: .word 0x02099EC0
_02121954: .word 0x0209F5C0
_02121958: .word 0x0209BA20
	arm_func_end FUN_ov57_021216e0

	arm_func_start FUN_ov57_0212195c
FUN_ov57_0212195c: ; 0x0212195C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02121A44 ; =0x0209A454
	mov r6, r0
	ldrb r0, [r1, #0x32]
	mov r4, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, r4
	mov r1, #0x5a
	mov r0, #0xe
	str r1, [r6, #0x34]
	str r5, [r6, #0x38]
	str r5, [r6, #0x3c]
	str r5, [r6, #0x40]
	str r5, [r6, #0x44]
	str r0, [r6, #0x48]
	ldr r8, _02121A48 ; =0x0209AEC0
	mvn r7, #0
	b _021219C4
_021219A8:
	mov r0, r8
	bl FUN_02046730
	cmp r5, r0
	add r0, r6, r5, lsl #2
	streq r4, [r0, #0x4c]
	strne r7, [r0, #0x4c]
	add r5, r5, #1
_021219C4:
	cmp r5, #4
	blt _021219A8
	mov r8, #0
	ldr r7, _02121A48 ; =0x0209AEC0
	mvn r5, #0
	b _021219F8
_021219DC:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r6, r8, lsl #2
	streq r4, [r0, #0x5c]
	strne r5, [r0, #0x5c]
	add r8, r8, #1
_021219F8:
	cmp r8, #4
	blt _021219DC
	mov r1, #0
	b _02121A14
_02121A08:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0x6c]
	add r1, r1, #1
_02121A14:
	cmp r1, #4
	blt _02121A08
	mov r1, r4
	add r0, r6, #0x80
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _02121A4C ; =0x0209A4E0
	strb r4, [r6, #0x3e0]
	mov r1, #0x5a
	strb r1, [r0, #2]
	strb r4, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02121A44: .word 0x0209A454
_02121A48: .word 0x0209AEC0
_02121A4C: .word 0x0209A4E0
	arm_func_end FUN_ov57_0212195c

	arm_func_start FUN_ov57_02121a50
FUN_ov57_02121a50: ; 0x02121A50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _02121AC4 ; =0x0209AEC0
	ldr r4, _02121AC8 ; =0x0209A4E0
	bl FUN_02046730
	ldr r2, [r5, #0x20]
	cmp r2, #8
	beq _02121AA4
	mov r1, #0x5a
	strb r1, [r4, #2]
	strb r2, [r4, #3]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0xf24]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xf34]
	strb r0, [r4, #4]
	ldrb r0, [r5, #0xf35]
	strb r0, [r4, #5]
	ldrb r0, [r5, #0xf36]
	strb r0, [r4, #6]
	b _02121ABC
_02121AA4:
	add r0, r5, #0x34
	mov r1, #0xa
	bl  FUN_ov1_020e6eac
	ldr r1, [r5, #0x20]
	add r0, r5, #0x34
	bl  FUN_ov1_020e5328
_02121ABC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02121AC4: .word 0x0209AEC0
_02121AC8: .word 0x0209A4E0
	arm_func_end FUN_ov57_02121a50

	arm_func_start FUN_ov57_02121acc
FUN_ov57_02121acc: ; 0x02121ACC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, _02121D80 ; =0x0209AEC0
	mov r10, r0
	mov r0, r5
	mov r4, #0
	bl FUN_02046730
	mov r11, r0
	mov r0, r5
	bl FUN_02046744
	mov r6, r0
	bl  FUN_ov16_020f081c
	mov r7, r0
	ldrb r0, [r5, #0x64]
	ldr r1, [r10, #0x20]
	cmp r1, #6
	str r0, [sp]
	beq _02121B18
	cmp r1, #7
	bne _02121C5C
_02121B18:
	mov r9, #0
	b _02121C54
_02121B20:
	mov r0, r9
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	bne _02121C50
	ldr r0, _02121D84 ; =0x020A0670
	ldrb r8, [r0, r9]
	cmp r8, r11
	beq _02121C50
	mov r0, #1
	tst r6, r0, lsl r8
	beq _02121C50
	mov r0, r8
	mov r1, r4
	bl  FUN_ov16_020f0634
	mov r5, r0
	ldr r0, _02121D88 ; =0x0209A4E0
	ldrb r1, [r5, #2]
	ldrb r0, [r0, #2]
	cmp r1, r0
	bne _02121C50
	add r1, r10, r8, lsl #2
	ldr r2, [r5, #8]
	ldr r0, [r1, #0xf24]
	cmp r2, r0
	beq _02121C50
	str r2, [r1, #0xf24]
	ldrb r0, [r5, #4]
	cmp r0, #1
	beq _02121BA8
	cmp r0, #2
	beq _02121BD8
	cmp r0, #3
	beq _02121C10
	b _02121C50
_02121BA8:
	cmp r7, r9
	ldreqb r0, [r10, #0x30]
	cmpeq r0, #0
	bne _02121C50
	mov r0, r10
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #6]
	bl FUN_ov57_0211b184
_02121BC8:
	mov r0, r10
	mov r1, r4
	bl FUN_ov57_0211ae9c
	b _02121C50
_02121BD8:
	cmp r7, r9
	ldreqb r0, [r10, #0x30]
	cmpeq r0, #0
	bne _02121BF8
	ldrb r1, [r5, #5]
	mov r0, r10
	bl FUN_ov57_0211f77c
	b _02121BC8
_02121BF8:
	ldr r0, _02121D8C ; =0x0209BA20
	mov r1, r9
	bl FUN_0207249c
	ldrb r1, [r5, #5]
	strh r1, [r0, #0x22]
	b _02121C50
_02121C10:
	cmp r7, r9
	ldreq r0, [r10, #0x20]
	cmpeq r0, #6
	bne _02121C50
	mov r0, r10
	mov r1, #7
	bl FUN_ov57_0211ae4c
	ldr r0, _02121D90 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f5ff4
	mov r0, r10
	bl FUN_ov57_0211d5f4
	ldr r0, _02121D90 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f672c
_02121C50:
	add r9, r9, #1
_02121C54:
	cmp r9, #2
	blt _02121B20
_02121C5C:
	mov r4, #0
	mov r0, r4
	mov r1, r4
	bl  FUN_ov16_020f0634
	ldrb r5, [r0, #3]
	mov r0, r4
	mov r1, r4
	bl  FUN_ov16_020f0634
	ldr r1, [r10, #0x20]
	ldrb r2, [r0, #2]
	cmp r1, #7
	bne _02121CBC
	mov r5, #8
	mov r1, r5
	mov r3, r4
	sub r2, r5, #9
	mov r0, #7
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _02121D78
	mov r0, r10
	mov r1, r5
	bl FUN_ov57_0211ae4c
	b _02121D78
_02121CBC:
	cmp r1, #8
	bne _02121D78
	ldr r0, [sp]
	cmp r0, #0
	bne _02121D54
	cmp r5, #9
	cmpne r5, #0xa
	beq _02121CEC
	ldr r0, _02121D88 ; =0x0209A4E0
	ldrb r0, [r0, #2]
	cmp r2, r0
	beq _02121D54
_02121CEC:
	bl  FUN_ov16_020f067c
	cmp r0, #0
	beq _02121D10
	mov r1, #0x33
	mov r0, r10
	mov r2, r1
_02121D04:
	mov r3, #0
_02121D08:
	bl FUN_ov57_0211ac2c
	b _02121D78
_02121D10:
	mov r0, r4
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	bne _02121D30
	mov r0, #1
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	beq _02121D40
_02121D30:
	mov r0, r10
	mov r1, #0x40
	mov r2, #0x4c
	b _02121D04
_02121D40:
	mov r0, r10
	mov r3, r4
	mov r1, #0x48
	mov r2, #0x4c
	b _02121D08
_02121D54:
	mov r0, #8
	sub r1, r0, #9
	mov r2, r1
	mov r3, #0
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _02121D78
	mov r0, r10
	bl FUN_ov57_02119fb4
_02121D78:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121D80: .word 0x0209AEC0
_02121D84: .word 0x020A0670
_02121D88: .word 0x0209A4E0
_02121D8C: .word 0x0209BA20
_02121D90: .word 0x0209F5C0
	arm_func_end FUN_ov57_02121acc

	arm_func_start FUN_ov57_02121d94
FUN_ov57_02121d94: ; 0x02121D94
	ldr r1, _02121DC0 ; =0x0209A454
	ldrb r1, [r1, #0x32]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #0x20]
	sub r0, r0, #6
	cmp r0, #4
	movls r0, #1
	movhi r0, #0
	bx lr
_02121DC0: .word 0x0209A454
	arm_func_end FUN_ov57_02121d94

	arm_func_start FUN_ov57_02121dc4
FUN_ov57_02121dc4: ; 0x02121DC4
	ldr r1, _02121DF0 ; =0x0209A454
	ldrb r1, [r1, #0x32]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #0x20]
	sub r0, r0, #6
	cmp r0, #4
	movls r0, #1
	movhi r0, #0
	bx lr
_02121DF0: .word 0x0209A454
	arm_func_end FUN_ov57_02121dc4

	arm_func_start FUN_ov57_02121df4
FUN_ov57_02121df4: ; 0x02121DF4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r6, #2
	str r6, [sp, #8]
	mov r5, #4
	str r5, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r4, _02121E68 ; =0x02099ED4
	ldrb r1, [r7, #0x11]
	ldrh r3, [r7, #0x34]
	ldr r0, [r4]
	bl  FUN_ov16_0210e3f0
	ldrb r1, [r7, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210e5f0
	ldrsh r0, [r7, #0x30]
	cmp r0, #9
	movne r6, #9
	mov r0, r7
	strh r6, [r7, #0x30]
	bl FUN_ov57_02121e6c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02121E68: .word 0x02099ED4
	arm_func_end FUN_ov57_02121df4

	arm_func_start FUN_ov57_02121e6c
FUN_ov57_02121e6c: ; 0x02121E6C
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldrsh r1, [r0, #0x30]
	mov r2, #1
	ldr r12, _02121ECC ; =0x02099ED4
	cmp r1, #9
	moveq r1, r2
	movne r1, #0
	cmp r1, #0
	movne r1, #1
	str r2, [sp]
	mov r2, #0
	moveq r1, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r0, #0x11]
	ldrh r3, [r0, #0x34]
	ldr r0, [r12]
	bl  FUN_ov16_0210e3f0
	add sp, sp, #0x14
	ldmia sp!, {pc}
_02121ECC: .word 0x02099ED4
	arm_func_end FUN_ov57_02121e6c

	arm_func_start FUN_ov57_02121ed0
FUN_ov57_02121ed0: ; 0x02121ED0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02121EFC ; =0x02099F38
	ldrh r1, [r4, #0x34]
	ldrh r2, [r4, #0x36]
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_02113f7c
	mov r0, #0
	strb r0, [r4, #0xe]
	ldmfd sp!, {r4, pc}
_02121EFC: .word 0x02099F38
	arm_func_end FUN_ov57_02121ed0

	arm_func_start FUN_ov57_02121f00
FUN_ov57_02121f00: ; 0x02121F00
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, #1
	mov r6, r0
	str r5, [sp]
	ldr r4, _02121F4C ; =0x02099F38
	ldrh r1, [r6, #0x34]
	ldrh r2, [r6, #0x36]
	ldr r0, [r4]
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldrh r1, [r6, #0x34]
	ldrh r2, [r6, #0x36]
	ldr r0, [r4]
	mov r3, #0x118
	bl  FUN_ov16_021139bc
	strb r5, [r6, #0xe]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02121F4C: .word 0x02099F38
	arm_func_end FUN_ov57_02121f00

	arm_func_start FUN_ov57_02121f50
FUN_ov57_02121f50: ; 0x02121F50
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x67c]
	mov r5, r1
	mov r1, #0x32
	bl  FUN_ov16_02110864
	ldr r0, [r4, #0x67c]
	mov r1, #4
	mov r2, #0x45
	mov r3, #0x46
	bl  FUN_ov16_02110830
	ldr r0, [r4, #0x67c]
	mov r1, #0x28
	bl  FUN_ov16_0211085c
	cmp r5, #0
	beq _02122000
	ldr r0, [r4, #0x67c]
	ldr r2, [r4, #0x484]
	mov r1, #1
	bl  FUN_ov16_02110624
	ldr r0, [r4, #0x67c]
	ldr r2, [r4, #0x488]
	mov r1, #5
	bl  FUN_ov16_02110624
	ldr r0, [r4, #0x67c]
	mov r1, #6
	mov r2, #0
	bl  FUN_ov16_02110624
	ldr r0, [r4, #0x67c]
	ldr r2, [r4, #0x48c]
	mov r1, #7
	bl  FUN_ov16_02110624
	mov r5, #0x38
	ldr r0, [r4, #0x67c]
	mov r1, #0x10
	mov r2, r5
	bl  FUN_ov16_021108b4
	sub r1, r5, #0x39
	ldr r0, [r4, #0x67c]
	mov r2, r1
	bl  FUN_ov16_021108e4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02122000:
	mov r8, #0
	ldr r0, [r4, #0x67c]
	ldr r2, [r4, #0x4bc]
	mov r1, r8
	bl  FUN_ov16_02110624
	mov r7, #1
	str r7, [sp]
	sub r6, r7, #2
	str r6, [sp, #4]
	ldr r0, [r4, #0x67c]
	ldr r3, [r4, #0x4bc]
	mov r1, r7
	mov r2, r8
	bl  FUN_ov16_021107a0
	str r8, [sp]
	str r6, [sp, #4]
	ldr r0, [r4, #0x67c]
	ldr r3, [r4, #0x4c0]
	mov r1, r7
	mov r2, r7
	bl  FUN_ov16_021107a0
	str r7, [sp]
	str r6, [sp, #4]
	mov r5, #2
	ldr r0, [r4, #0x67c]
	ldr r3, [r4, #0x4c0]
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_021107a0
	stmia sp, {r5, r6}
	ldr r0, [r4, #0x67c]
	ldr r3, [r4, #0x4bc]
	mov r2, r8
	mov r1, r5
	bl  FUN_ov16_021107a0
	stmia sp, {r5, r6}
	ldr r0, [r4, #0x67c]
	ldr r3, [r4, #0x4c0]
	mov r2, r7
	mov r1, r5
	bl  FUN_ov16_021107a0
	mov r0, #3
	stmia sp, {r0, r6}
	ldr r0, [r4, #0x67c]
	ldr r3, [r4, #0x4c0]
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_021107a0
	ldr r0, [r4, #0x67c]
	mov r1, #0x20
	mov r2, #0x60
	bl  FUN_ov16_021108b4
	mov r5, #0x88
	ldr r0, [r4, #0x67c]
	mov r1, #0x38
	mov r2, r5
	bl  FUN_ov16_021108c0
	ldr r0, [r4, #0x67c]
	mov r2, r5
	mov r1, #0x98
	bl  FUN_ov16_021108cc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov57_02121f50

	arm_func_start FUN_ov57_021220fc
FUN_ov57_021220fc: ; 0x021220FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r1, _021222C8 ; =0x0209A454
	mov r8, r0
	ldrb r0, [r1, #0x32]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0x568]
	cmp r0, #0
	bne _02122140
	ldr r0, _021222CC ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r8, #0x568]
_02122140:
	ldr r9, _021222CC ; =0x02099F38
	ldr r7, [r8, #0x568]
	mov r6, #1
	mov r5, #2
	ldr r0, [r9]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_02113f7c
	mov r4, #0
	str r4, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r3, #0x32
	mov r0, r8
	mov r1, r7
	mov r2, r6
	str r3, [sp, #0xc]
	mov r3, #0x1b
	bl FUN_ov57_02123e9c
	mov r2, r6
	ldr r0, [r9]
	mov r1, r7
	mov r3, r5
	bl  FUN_ov16_02113f7c
	str r4, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x28
	str r0, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, r5
	mov r3, #0x1a
	bl FUN_ov57_02123e9c
	ldr r0, [r9]
	mov r1, r7
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_02113f7c
	ldr r0, [r8, #0xf98]
	cmp r0, #0
	bne _02122224
	ldr r0, [r9]
	mov r1, #5
	mov r2, #4
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r8, #0xf98]
	ldr r0, [r9]
	mov r2, r4
	mov r3, r4
	bl FUN_02059038
_02122224:
	mov r0, #0x46
	ldr r4, _021222CC ; =0x02099F38
	str r0, [sp]
	mov r6, #3
	mov r5, #0
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_02113b78
	ldr r3, [r8, #0xf98]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x32
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	mov r3, #0x100
	bl  FUN_ov16_02113d08
	str r5, [sp]
	mov r3, r5
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_02113d88
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	mov r3, #0x28
	bl  FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021222C8: .word 0x0209A454
_021222CC: .word 0x02099F38
	arm_func_end FUN_ov57_021220fc

	arm_func_start FUN_ov57_021222d0
FUN_ov57_021222d0: ; 0x021222D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r8, #2
	mov r7, #0
	str r8, [sp]
	str r7, [sp, #4]
	mov r6, #1
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	mov r9, r0
	str r7, [sp, #0x10]
	ldr r4, _0212236C ; =0x02099ED4
	ldrb r1, [r9, #0x11]
	ldrh r3, [r9, #0x34]
	ldr r0, [r4]
	mov r2, r7
	bl  FUN_ov16_0210e4f0
	mov r5, #4
	ldrb r1, [r9, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210e5f0
	str r8, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r2, r7
	ldr r0, [r4]
	ldrb r1, [r9, #0x11]
	ldrh r3, [r9, #0x34]
	bl  FUN_ov16_0210e4f0
	ldr r0, [r4]
	mov r2, r5
	ldrb r1, [r9, #0x11]
	bl  FUN_ov16_0210e5f0
	strb r6, [r9, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0212236C: .word 0x02099ED4
	arm_func_end FUN_ov57_021222d0

	arm_func_start FUN_ov57_02122370
FUN_ov57_02122370: ; 0x02122370
	mov r1, #0
	strb r1, [r0, #0xe]
	ldr r3, _02122394 ; =0x02099F38
	ldrh r1, [r0, #0x34]
	mov r2, #2
	ldr r0, [r3]
	ldr r12, _02122398 ; = FUN_ov16_02113f7c
	mov r3, r2
	bx r12
_02122394: .word 0x02099F38
_02122398: .word  FUN_ov16_02113f7c
	arm_func_end FUN_ov57_02122370

	arm_func_start FUN_ov57_0212239c
FUN_ov57_0212239c: ; 0x0212239C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x9c
	mov r5, #0
	mov r4, #1
	str r5, [sp, #0x18]
	mov r7, #2
	ldr r1, _021224E8 ; =0x02099F38
	mov r6, r0
	str r4, [sp]
	ldr r0, [r1]
	ldr r1, [r6, #0x568]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	ldr r0, _021224EC ; =0x02099EB4
	ldr r3, [r6, #0x568]
	ldr r0, [r0]
	mov r1, #6
	mov r2, #0x44
	bl  FUN_ov16_0210fc74
	mov r1, #0x68
	mov r2, #0x18
	str r2, [sp]
	mov r7, r0
	mov r2, r1
	mov r3, #0x30
	bl  FUN_ov16_0210e674
	cmp r7, #0
	beq _02122438
	strb r4, [r7, #0x11]
	str r5, [r7, #0x1c]
	ldr r1, _021224F0 ; =FUN_ov57_021222d0
	str r5, [r7, #0x24]
	ldr r0, _021224F4 ; =FUN_ov57_02122370
	str r1, [r7, #0x28]
	str r0, [r7, #0x20]
_02122438:
	add r7, sp, #0x1c
	ldr r1, _021224F8 ; =0x02124C90
	mov r0, r7
	mov r8, #0
	bl FUN_02023c40
	mov r5, #1
	str r5, [sp]
	ldr r4, _021224E8 ; =0x02099F38
	ldr r1, [r6, #0x568]
	ldr r0, [r4]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, _021224FC ; =0x02099F50
	mov r1, r5
	ldr r0, [r0]
	mov r2, #4
	bl FUN_02043310
	ldr r1, [r6, #0xf98]
	ldr r0, [r4]
	str r8, [sp, #0x14]
	add r2, sp, #0x14
	add r3, sp, #0x18
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r4, [sp, #0x14]
	ldr r1, [r6, #0xf98]
	bl  FUN_ov16_02111458
	cmp r4, #0
	beq _021224D4
	stmia sp, {r5, r8}
	str r8, [sp, #8]
	str r8, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r1, [r6, #0xf98]
	mov r0, r7
	mov r2, r5
	mov r3, #9
	bl  FUN_ov16_020f2304
_021224D4:
	ldr r0, _021224FC ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	add sp, sp, #0x9c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021224E8: .word 0x02099F38
_021224EC: .word 0x02099EB4
_021224F0: .word FUN_ov57_021222d0
_021224F4: .word FUN_ov57_02122370
_021224F8: .word 0x02124C90
_021224FC: .word 0x02099F50
	arm_func_end FUN_ov57_0212239c

	arm_func_start FUN_ov57_02122500
FUN_ov57_02122500: ; 0x02122500
	stmfd sp!, {r3, lr}
	ldr r1, _02122530 ; =0x02099F38
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #0x568]
	mov r2, #2
	bl  FUN_ov16_02113390
	ldr r0, _02122534 ; =0x02099EB4
	mov r1, #6
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r3, pc}
_02122530: .word 0x02099F38
_02122534: .word 0x02099EB4
	arm_func_end FUN_ov57_02122500

	arm_func_start FUN_ov57_02122538
FUN_ov57_02122538: ; 0x02122538
	ldr r0, _0212254C ; =0x02099EB4
	ldr r12, _02122550 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	mov r1, #0x44
	bx r12
_0212254C: .word 0x02099EB4
_02122550: .word  FUN_ov16_0210efac
	arm_func_end FUN_ov57_02122538

	arm_func_start FUN_ov57_02122554
FUN_ov57_02122554: ; 0x02122554
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r10, r0
	ldr r0, [r10, #0x560]
	cmp r0, #0
	addne sp, sp, #0x70
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02122B24 ; =0x02099F38
	mov r1, #0xa
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r2, #0x80
	mov r1, #0x40
	mov r7, r0
	str r2, [r10, #0xf8c]
	str r1, [r10, #0xf90]
	mov r8, #0
	mov r4, #0x78
	bl  FUN_ov16_020f066c
	cmp r0, #0
	movne r0, #0x70
	strne r0, [r10, #0xf8c]
	add r8, r8, #1
	str r7, [r10, #0x560]
	mov r9, #0
	movne r4, #0x68
	str r9, [sp]
	str r4, [sp, #4]
	mov r3, #0x28
	str r3, [sp, #8]
	mov r5, #0xd2
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, #0x17
	str r5, [sp, #0xc]
	bl FUN_ov57_02123e9c
	mov r0, #0x28
	add r6, r4, #8
	add r5, r0, #0x48
	mov r11, r9
	b _02122634
_02122600:
	str r11, [sp]
	str r6, [sp, #4]
	add r0, r5, r9, lsl #4
	str r0, [sp, #8]
	mov r2, #0xd1
	add r8, r8, #1
	str r2, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, #0x1f
	bl FUN_ov57_02123e9c
	add r9, r9, #1
_02122634:
	cmp r9, #3
	blt _02122600
	mov r6, #0x80
	mov r5, #0
	mov r9, #0x50
	bl  FUN_ov16_020f066c
	cmp r0, #0
	subne r6, r6, #0x10
	stmia sp, {r5, r6, r9}
	add r8, r8, #1
	mov r6, #0xd0
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, #0x1d
	str r6, [sp, #0xc]
	bl FUN_ov57_02123e9c
	ldr r0, _02122B24 ; =0x02099F38
	mov r1, r7
	ldr r0, [r0]
	mov r2, r8
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldr r0, _02122B28 ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	beq _021226D8
	str r5, [sp]
	add r0, r4, #8
	str r0, [sp, #4]
	mov r0, #0x28
	add r3, r0, #0x18
	add r8, r8, #1
	str r3, [sp, #8]
	mov r5, #0xcf
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, #0x20
	str r5, [sp, #0xc]
	bl FUN_ov57_02123e9c
_021226D8:
	ldr r0, [r10, #0xc]
	mov r6, #0xcf
	cmp r0, #0
	mov r5, #1
	mov r9, #0
	bne _02122724
	str r9, [sp]
	add r0, r4, #8
	str r0, [sp, #4]
	mov r0, #0x28
	add r8, r8, #1
	add r0, r0, #0x68
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, #0x20
	str r6, [sp, #0xc]
	bl FUN_ov57_02123e9c
_02122724:
	ldr r0, [r10, #8]
	cmp r0, #0
	bne _02122764
	str r9, [sp]
	add r0, r4, #8
	str r0, [sp, #4]
	mov r0, #0x28
	add r8, r8, #1
	add r0, r0, #0x58
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, #0x20
	str r6, [sp, #0xc]
	bl FUN_ov57_02123e9c
_02122764:
	ldr r0, [r10, #4]
	cmp r0, #0
	bne _021227A4
	str r9, [sp]
	add r0, r4, #8
	str r0, [sp, #4]
	mov r0, #0x28
	add r8, r8, #1
	add r0, r0, #0x48
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, #0x20
	str r6, [sp, #0xc]
	bl FUN_ov57_02123e9c
_021227A4:
	ldr r1, [r10, #0x5b0]
	mov r0, r10
	str r9, [r10, #0xf94]
	bl FUN_ov57_0211bd58
	cmp r0, #0
	bne _021227F0
	str r5, [r10, #0xf94]
	str r9, [sp]
	add r0, r4, #8
	str r0, [sp, #4]
	mov r0, #0x28
	add r0, r0, #0x38
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r7
	add r2, r8, #1
	mov r3, #0x20
	str r6, [sp, #0xc]
	bl FUN_ov57_02123e9c
_021227F0:
	ldr r6, _02122B2C ; =0x021247D8
	mov r0, #5
	str r0, [r10, #0xf88]
	add r7, sp, #0x58
	ldmia r6!, {r0, r1, r2, r3}
	str r7, [sp, #0x20]
	stmia r7!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	add r5, sp, #0x40
	stmia r7, {r0, r1}
	ldr r6, _02122B30 ; =0x021247C0
	mov r8, #0
	str r5, [sp, #0x24]
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	mov r0, #0x80
	mov r1, #0x10
	add r2, sp, #0x3c
	add r3, sp, #0x38
	str r8, [sp, #0x34]
	mov r7, #1
	bl FUN_02054070
	ldr r5, _02122B24 ; =0x02099F38
	mov r1, #6
	ldr r0, [r5]
	mov r2, r7
	bl  FUN_ov16_02112724
	str r0, [r10, #0xf38]
	add r0, r4, #0xb
	mov r1, r0, lsl #0x10
	mov r0, #0x28
	add r0, r0, #0x1b
	str r0, [sp, #0x28]
	mov r0, r1, asr #0x10
	str r0, [sp, #0x2c]
	ldr r4, _02122B34 ; =0x02099F50
	b _02122A5C
_0212288C:
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r0, [r5]
	bl FUN_02059630
	add r1, r10, r8, lsl #2
	str r0, [r1, #0xf3c]
	mov r1, r0
	mov r2, #0
	ldr r0, [r5]
	mov r3, r2
	bl FUN_02059038
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0xf3c]
	mov r2, #0
	str r2, [sp, #0x30]
	ldr r0, [r5]
	add r2, sp, #0x30
	add r3, sp, #0x34
	bl FUN_0205935c
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	ldr r6, [sp, #0x30]
	bl FUN_02043310
	ldr r0, _02122B28 ; =0x0209A454
	add r1, r10, r8, lsl #2
	ldrb r0, [r0, #0x30]
	ldr r1, [r1, #0xf3c]
	cmp r0, #0
	ldreq r0, [sp, #0x20]
	ldrne r0, [sp, #0x24]
	ldr r9, [r0, r8, lsl #2]
	ldr r0, [r5]
	bl  FUN_ov16_02111438
	add r1, r10, r8, lsl #2
	mov r11, r0
	ldr r0, [r5]
	ldr r1, [r1, #0xf3c]
	bl  FUN_ov16_02111458
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r11
	mov r2, r6
	bl FUN_020425fc
	ldr r0, [r4]
	bl FUN_0204331c
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0xf3c]
	mov r2, r6
	ldr r3, [sp, #0x34]
	ldr r0, [r5]
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	add r3, r10, r8, lsl #2
	ldr r3, [r3, #0xf3c]
	ldr r0, [r5]
	ldr r1, [r10, #0xf38]
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, r6
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r10, #0xf38]
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_02113d88
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r0, r8, lsl #4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r10, #0xf38]
	mov r2, r7
	bl  FUN_ov16_02113b78
	add r1, r10, r8, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0xf3c]
	bl  FUN_ov16_02111438
	add r1, r10, r8, lsl #2
	mov r6, r0
	ldr r0, [r5]
	ldr r1, [r1, #0xf3c]
	bl  FUN_ov16_02111458
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r6, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r5]
	ldr r1, [r10, #0xf38]
	mov r2, r7
	bl  FUN_ov16_02113d08
	ldr r0, [r5]
	ldr r1, [r10, #0xf38]
	mov r2, r7
	mov r3, #0xcc
	bl  FUN_ov16_021139bc
	add r7, r7, #1
	add r8, r8, #1
_02122A5C:
	cmp r8, #6
	blt _0212288C
	ldr r5, [r10, #0xf8c]
	ldr r6, [r10, #0xf90]
	mov r4, #0x3d
	mov r7, #0x68
	mov r9, #0x10
	mov r8, #0
	mov r11, #0x14
	b _02122AB4
_02122A84:
	stmia sp, {r6, r7, r9}
	ldr r0, _02122B38 ; =0x02099EB4
	str r11, [sp, #0xc]
	mov r2, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, #5
	mov r3, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fba4
	add r4, r4, #1
	add r6, r6, #0x10
	add r8, r8, #1
_02122AB4:
	cmp r8, #6
	blt _02122A84
	mov r5, #1
	str r5, [sp]
	ldr r4, _02122B24 ; =0x02099F38
	ldr r1, [r10, #0xf54]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r10, #0xf54]
	mov r2, r5
	mov r3, #0xc8
	bl  FUN_ov16_021139bc
	ldr r0, [r10, #0xf90]
	mov r2, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r1, [r10, #0xf8c]
	ldr r0, [r4]
	mov r3, r1, lsl #0x10
	ldr r1, [r10, #0xf54]
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122B24: .word 0x02099F38
_02122B28: .word 0x0209A454
_02122B2C: .word 0x021247D8
_02122B30: .word 0x021247C0
_02122B34: .word 0x02099F50
_02122B38: .word 0x02099EB4
	arm_func_end FUN_ov57_02122554

	arm_func_start FUN_ov57_02122b3c
FUN_ov57_02122b3c: ; 0x02122B3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _02122BEC ; =0x02099F38
	mov r4, r0
	ldr r0, [r5]
	ldr r1, [r4, #0xf54]
	mov r2, #1
	mov r3, #2
	mov r6, #0
	bl  FUN_ov16_02113f7c
	ldr r1, [r4, #0xf38]
	cmp r1, #0
	beq _02122B78
	ldr r0, [r5]
	bl  FUN_ov16_021128c4
	str r6, [r4, #0xf38]
_02122B78:
	mov r7, #0
	ldr r5, _02122BEC ; =0x02099F38
	b _02122BA8
_02122B84:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0xf3c]
	cmp r1, #0
	beq _02122BA4
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, r7, lsl #2
	str r6, [r0, #0xf3c]
_02122BA4:
	add r7, r7, #1
_02122BA8:
	cmp r7, #6
	blt _02122B84
	ldr r1, [r4, #0x560]
	cmp r1, #0
	beq _02122BCC
	ldr r0, _02122BEC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r6, [r4, #0x560]
_02122BCC:
	ldr r0, _02122BF0 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	mov r0, r4
	mov r1, #0
	bl FUN_ov57_02122dbc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02122BEC: .word 0x02099F38
_02122BF0: .word 0x02099EB4
	arm_func_end FUN_ov57_02122b3c

	arm_func_start FUN_ov57_02122bf4
FUN_ov57_02122bf4: ; 0x02122BF4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0xf54]
	cmp r0, #0
	bne _02122C24
	ldr r0, _02122C7C ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	str r0, [r4, #0xf54]
_02122C24:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0xf8c]
	mov r5, #1
	str r0, [sp, #4]
	ldr r1, [r4, #0xf90]
	mov r0, #0xc8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [r4, #0xf54]
	mov r0, r4
	mov r2, r5
	mov r3, #0x18
	bl FUN_ov57_02123e9c
	ldr r0, _02122C7C ; =0x02099F38
	ldr r1, [r4, #0xf54]
	ldr r0, [r0]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02122C7C: .word 0x02099F38
	arm_func_end FUN_ov57_02122bf4

	arm_func_start FUN_ov57_02122c80
FUN_ov57_02122c80: ; 0x02122C80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	mov r1, #1
	mov r0, #0
	str r1, [r6, #0xf64]
	mov r4, r3
	str r5, [r6, #0xf68]
	add r1, r6, r5, lsl #2
	str r0, [r6, #0xf7c]
	ldr r12, [sp, #0x18]
	ldr r0, [r1, #0xf58]
	ldr r3, [sp, #0x1c]
	mla r0, r12, r0, r4
	str r0, [r6, #0xf70]
	ldr r0, [r1, #0xf58]
	ldr r1, [sp, #0x20]
	add r0, r3, r0
	mov r7, r2
	bl FUN_0201f9bc
	add r0, r6, r5, lsl #2
	str r1, [r0, #0xf58]
	ldr r0, [r6, #0xf68]
	str r7, [r6, #0xf6c]
	add r0, r6, r0, lsl #2
	ldr r2, [sp, #0x18]
	ldr r0, [r0, #0xf58]
	mov r1, #0xc
	mla r3, r2, r0, r4
	ldr r0, [r6, #0xf70]
	str r1, [r6, #0xf78]
	cmp r0, r3
	subgt r0, r1, #0xd
	mulgt r0, r1, r0
	strgt r0, [r6, #0xf78]
	ldr r0, _02122D28 ; =0x0209AC44
	mov r1, #8
	str r3, [r6, #0xf74]
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov57_02123f34
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02122D28: .word 0x0209AC44
	arm_func_end FUN_ov57_02122c80

	arm_func_start FUN_ov57_02122d2c
FUN_ov57_02122d2c: ; 0x02122D2C
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0xf78]
	ldr r2, [r0, #0xf7c]
	ldr r12, [r0, #0xf70]
	add r1, r2, #1
	mla r12, r3, r2, r12
	str r1, [r0, #0xf7c]
	cmp r3, #0
	ldr r2, [r0, #0xf74]
	bge _02122D6C
	cmp r12, r2
	movlt r1, #0
	movlt r12, r2
	strlt r1, [r0, #0xf64]
	strlt r1, [r0, #0xf7c]
	b _02122D80
_02122D6C:
	cmp r12, r2
	movgt r1, #0
	movgt r12, r2
	strgt r1, [r0, #0xf64]
	strgt r1, [r0, #0xf7c]
_02122D80:
	mov r1, r12, lsl #0x10
	mov r1, r1, asr #0x10
	str r1, [sp]
	ldr r3, [r0, #0xf68]
	ldr r2, [r0, #0xf6c]
	ldr r1, _02122DB8 ; =0x02099F38
	add r3, r0, r3, lsl #2
	mov r2, r2, lsl #0x10
	ldr r0, [r1]
	ldr r1, [r3, #0xf54]
	mov r3, r2, asr #0x10
	mov r2, #1
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, pc}
_02122DB8: .word 0x02099F38
	arm_func_end FUN_ov57_02122d2c

	arm_func_start FUN_ov57_02122dbc
FUN_ov57_02122dbc: ; 0x02122DBC
	add r0, r0, r1, lsl #2
	mov r1, #0
	str r1, [r0, #0xf58]
	bx lr
	arm_func_end FUN_ov57_02122dbc

	arm_func_start FUN_ov57_02122dcc
FUN_ov57_02122dcc: ; 0x02122DCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r4, [r7, #0x560]
	mov r8, #1
	mov r5, #5
	mov r6, #0x80
	bl  FUN_ov16_020f066c
	cmp r0, #0
	ldr r0, [r7, #0xf60]
	subne r6, r6, #0x10
	add r0, r0, #1
	str r0, [r7, #0xf60]
	cmp r0, #2
	bgt _02122E58
	ldr r8, _02122FDC ; =0x02099F38
	mov r1, r4
	ldr r0, [r8]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldr r0, [r7, #0xf58]
	mov r3, r6, lsl #0x10
	mov r0, r0, lsl #4
	add r0, r0, #0x40
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122E58:
	cmp r0, #4
	bgt _02122E84
	ldr r0, _02122FDC ; =0x02099F38
	str r8, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122E84:
	cmp r0, #6
	bgt _02122EAC
	ldr r0, _02122FDC ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122EAC:
	cmp r0, #7
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0xf58]
	mov r4, #0
	str r4, [r7, #0xf5c]
	str r4, [r7, #0xf60]
	str r4, [r7, #0xf80]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02122FD4
_02122ED8: ; jump table
	b _02122EF0 ; case 0
	b _02122F18 ; case 1
	b _02122F2C ; case 2
	b _02122F58 ; case 3
	b _02122F84 ; case 4
	b _02122FB0 ; case 5
_02122EF0:
	ldr r0, _02122FE0 ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, #8
	bl FUN_ov57_0211ae9c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122F18:
	mov r0, r7
	mov r1, #1
	bl FUN_ov57_0211ae9c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122F2C:
	ldr r0, [r7, #0xf94]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_ov57_0211b040
	mov r0, r7
	mov r1, r4
	bl FUN_ov57_0211ae9c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122F58:
	ldr r0, [r7, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, #0x5d
	mov r0, r7
	mov r2, r1
	mov r3, #1
	bl FUN_ov57_0211ac2c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122F84:
	ldr r0, [r7, #8]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, #0x5c
	mov r0, r7
	mov r2, r1
	mov r3, #1
	bl FUN_ov57_0211ac2c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122FB0:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, #0x5b
	mov r0, r7
	mov r2, r1
	mov r3, #1
	bl FUN_ov57_0211ac2c
_02122FD4:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122FDC: .word 0x02099F38
_02122FE0: .word 0x0209A454
	arm_func_end FUN_ov57_02122dcc

	arm_func_start FUN_ov57_02122fe4
FUN_ov57_02122fe4: ; 0x02122FE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	ldr r3, [r0, #0x24]
	mov r8, r2
	cmp r3, #4
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r2, [r0, #0xf90]
	ldr r9, [r0, #0xf58]
	ldr r4, [r0, #0xf8c]
	add r3, r2, r9, lsl #4
	mov r2, r4, lsl #0x10
	mov r3, r3, lsl #0x10
	sub r1, r1, #0x3d
	cmp r8, #0
	mov r6, r2, asr #0x10
	mov r7, r3, asr #0x10
	ldr r4, [r0, #0x560]
	mov r5, #5
	cmpne r9, r1
	beq _02123078
	cmp r9, r1
	sub r7, r1, r9
	subgt r2, r9, r1
	ldr r3, [r0, #0xf90]
	addgt r7, r2, r2, lsl #2
	mov r2, #0x10
	stmia sp, {r2, r7}
	mov r2, #6
	str r2, [sp, #8]
	add r1, r3, r1, lsl #4
	mov r7, r1, lsl #0x10
	ldr r3, [r0, #0xf90]
	mov r2, r6
	mov r1, #0
	mov r7, r7, asr #0x10
	bl FUN_ov57_02122c80
_02123078:
	ldr r9, _021230F0 ; =0x02099F38
	mov r0, #1
	str r0, [sp]
	mov r10, #2
	ldr r0, [r9]
	mov r1, r4
	mov r2, r5
	mov r3, r10
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r9]
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_02113b78
	ldr r0, [r9]
	mov r1, r4
	mov r2, r5
	mov r3, #0xd0
	bl  FUN_ov16_021139bc
	cmp r8, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9]
	mov r1, r4
	mov r2, r5
	mov r3, r10
	bl  FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_021230F0: .word 0x02099F38
	arm_func_end FUN_ov57_02122fe4

	arm_func_start FUN_ov57_021230f4
FUN_ov57_021230f4: ; 0x021230F4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, [r0, #0x24]
	cmp r2, #4
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	sub r12, r1, #0x3d
	ldr r1, [r0, #0xf90]
	mov r2, r12, lsl #0x14
	mov r1, r1, lsl #0x10
	mov r2, r2, asr #0x10
	add r1, r2, r1, asr #16
	mov r1, r1, lsl #0x10
	ldr r2, [r0, #0xf8c]
	mov r4, #1
	mov r3, r2, lsl #0x10
	str r12, [r0, #0xf58]
	mov r1, r1, asr #0x10
	str r1, [sp]
	ldr r2, _02123170 ; =0x02099F38
	ldr r1, [r0, #0xf54]
	ldr r0, [r2]
	mov r2, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r0, _02123174 ; =0x02099EB4
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r4, [r0, #0x38]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02123170: .word 0x02099F38
_02123174: .word 0x02099EB4
	arm_func_end FUN_ov57_021230f4

	arm_func_start FUN_ov57_02123178
FUN_ov57_02123178: ; 0x02123178
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x94
	ldr r3, _021232D4 ; =0x0209A250
	mov r6, r0
	ldr r0, [r3]
	mov r4, #0
	str r4, [sp, #0x10]
	cmp r0, #0
	ldr r1, _021232D8 ; =0x02124CC0
	beq _021231C0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r2, sp, #0x10
	str r4, [sp, #0xc]
	bl FUN_0202eff0
	mov r4, r0
_021231C0:
	cmp r4, #0
	addeq sp, sp, #0x94
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r8, sp, #0x14
	mov r5, #0
	mov r7, #0x80
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r4, r4, lsr #1
	bl MI_CpuFill8
	add r0, r6, #0x3f8
	mov r1, r5
	mov r2, r7
	add r0, r0, #0xc00
	bl MI_CpuFill8
	ldr r0, _021232DC ; =0x0209BA20
	mov r2, r8
	mov r1, #0x12
	mov r3, #0x400
	bl  FUN_ov16_020ee0f8
	cmp r0, #0
	moveq r5, #1
	beq _0212323C
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #29
	adds r1, r2, r1, ror #29
	mov r1, r0, asr #2
	movne r5, #1
	add r1, r0, r1, lsr #29
	add r5, r5, r1, asr #3
_0212323C:
	add r3, r6, #0x1000
	mov r1, #0
	mov r2, r1
	strh r0, [r3, #0x78]
	strb r5, [r3, #0x7a]
	strb r1, [r3, #0x7b]
	cmp r4, #0
	ble _021232B4
	add r12, sp, #0x14
	mov lr, r1
_02123264:
	mov r7, lr
	cmp r0, #0
	ble _021232A8
	ldr r5, [sp, #0x10]
	mov r3, r2, lsl #1
	ldrh r8, [r5, r3]
_0212327C:
	mov r3, r7, lsl #1
	ldrh r5, [r12, r3]
	cmp r8, r5
	addeq r3, r6, r1, lsl #1
	addeq r3, r3, #0xf00
	streqh r5, [r3, #0xf8]
	addeq r1, r1, #1
	beq _021232A8
	add r7, r7, #1
	cmp r7, r0
	blt _0212327C
_021232A8:
	add r2, r2, #1
	cmp r2, r4
	blt _02123264
_021232B4:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	addeq sp, sp, #0x94
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _021232D4 ; =0x0209A250
	bl FUN_0202e1c0
	add sp, sp, #0x94
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021232D4: .word 0x0209A250
_021232D8: .word 0x02124CC0
_021232DC: .word 0x0209BA20
	arm_func_end FUN_ov57_02123178

	arm_func_start FUN_ov57_021232e0
FUN_ov57_021232e0: ; 0x021232E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r9, r0
	ldr r0, [r9, #0x59c]
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r9, #0x84
	mov r8, #0
	mov r7, #0x28
	mov r1, r8
	mov r2, r7
	add r0, r0, #0x1000
	bl MI_CpuFill8
	add r0, r9, #0x1000
	mov r6, #1
	ldr r10, _0212359C ; =0x02099F38
	strb r8, [r0, #0x7b]
	ldr r0, [r10]
	mov r2, r6
	mov r1, #4
	bl  FUN_ov16_02112724
	mov r4, r0
	str r4, [r9, #0x59c]
	str r8, [sp]
	str r7, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x8c
	str r0, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	add r2, r8, #1
	mov r3, #0x23
	bl FUN_ov57_02123e9c
	str r8, [sp]
	str r7, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0x87
	str r0, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	add r2, r8, #2
	mov r3, #0x27
	bl FUN_ov57_02123e9c
	mov r1, r4
	add r0, r9, #0x1000
	ldrb r4, [r0, #0x7a]
	ldr r2, _021235A0 ; =0x66666667
	mov r3, #0xa
	smull r0, r5, r2, r4
	mov r0, r4, lsr #0x1f
	add r5, r0, r5, asr #2
	smull r0, r2, r3, r5
	sub r5, r4, r0
	str r5, [sp]
	mov r0, #0x90
	str r0, [sp, #4]
	mov r5, #0x10
	str r5, [sp, #8]
	mov r4, #0x8b
	str r4, [sp, #0xc]
	mov r0, r9
	add r2, r8, #3
	mov r3, #0x12
	bl FUN_ov57_02123e9c
	ldr r0, [r10]
	mov r1, r6
	mov r2, r6
	bl  FUN_ov16_02112724
	mov r10, r0
	str r10, [r9, #0x5a0]
	str r8, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r9
	mov r1, r10
	mov r2, r6
	mov r3, #0x11
	bl FUN_ov57_02123e9c
	mov r1, #0x1e
	str r1, [sp]
	ldr r0, _021235A4 ; =0x02099EB4
	mov r3, r10
	ldr r0, [r0]
	mov r1, #7
	mov r2, #0x49
	bl  FUN_ov16_0210fbe8
	movs r4, r0
	beq _021234B0
	strb r8, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r1, r8
	mov r2, r6
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	mov r2, r8
	mov r3, r8
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r8
	mov r2, r6
	add r0, r4, #0x3e
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e720
_021234B0:
	ldr r0, _0212359C ; =0x02099F38
	mov r6, #1
	ldr r0, [r0]
	mov r1, r6
	mov r2, r6
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r9, #0x5a4]
	mov r4, #2
	str r4, [sp]
	mov r0, #0xd8
	str r0, [sp, #4]
	mov r3, #0x10
	str r3, [sp, #8]
	mov r7, #0x8b
	mov r0, r9
	mov r1, r5
	mov r2, r6
	mov r3, #0x11
	str r7, [sp, #0xc]
	bl FUN_ov57_02123e9c
	mov r1, #0x1e
	str r1, [sp]
	ldr r0, _021235A4 ; =0x02099EB4
	mov r3, r5
	ldr r0, [r0]
	mov r1, #7
	mov r2, #0x4a
	bl  FUN_ov16_0210fbe8
	movs r7, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r5, #0
	strb r5, [r7, #0x10]
	strb r5, [r7, #0xf]
	strh r5, [r7, #0xc]
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x3a
	strb r5, [r7, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r7, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r5
	mov r3, r5
	mov r2, #3
	bl  FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212359C: .word 0x02099F38
_021235A0: .word 0x66666667
_021235A4: .word 0x02099EB4
	arm_func_end FUN_ov57_021232e0

	arm_func_start FUN_ov57_021235a8
FUN_ov57_021235a8: ; 0x021235A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r1, #0x1e
	bl FUN_ov57_0211c1a0
	mov r0, r5
	mov r1, #0x1f
	bl FUN_ov57_0211c1a0
	mov r0, r5
	mov r1, #0x20
	bl FUN_ov57_0211c1a0
	ldr r4, _02123600 ; =0x02099EB4
	mov r1, #7
	ldr r0, [r4]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #8
	bl  FUN_ov16_0210eb3c
	mov r0, r5
	bl FUN_ov57_021236a4
	mov r0, r5
	bl FUN_ov57_02123948
	ldmfd sp!, {r3, r4, r5, pc}
_02123600: .word 0x02099EB4
	arm_func_end FUN_ov57_021235a8

	arm_func_start FUN_ov57_02123604
FUN_ov57_02123604: ; 0x02123604
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0x5a8]
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0212369C ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r1, r4, #0x1000
	ldrb r1, [r1, #0x7b]
	ldr r12, _021236A0 ; =0x66666667
	mov r3, #0xa
	add r5, r1, #1
	mov r2, r5, lsr #0x1f
	smull r1, lr, r12, r5
	mov r1, r0
	add lr, r2, lr, asr #2
	smull r0, r2, r3, lr
	mov r3, #0
	str r1, [r4, #0x5a8]
	sub lr, r5, r0
	str lr, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	mov r2, #0x10
	mov r0, r4
	str r2, [sp, #8]
	mov r4, #0x8b
	add r2, r3, #1
	mov r3, #0x12
	str r4, [sp, #0xc]
	bl FUN_ov57_02123e9c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0212369C: .word 0x02099F38
_021236A0: .word 0x66666667
	arm_func_end FUN_ov57_02123604

	arm_func_start FUN_ov57_021236a4
FUN_ov57_021236a4: ; 0x021236A4
	ldr r12, _021236B0 ; =FUN_ov57_0211c1a0
	mov r1, #0x21
	bx r12
_021236B0: .word FUN_ov57_0211c1a0
	arm_func_end FUN_ov57_021236a4

	arm_func_start FUN_ov57_021236b4
FUN_ov57_021236b4: ; 0x021236B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	add r1, r10, #0x1000
	ldrb r1, [r1, #0x7b]
	mov r9, #0
	mov r8, r1, lsl #3
	add r1, r8, #8
	str r1, [sp, #0x10]
	bl FUN_ov57_021239c8
	mov r0, r10
	bl FUN_ov57_02123994
	add r0, r10, #0x1000
	str r0, [sp, #0x14]
	mov r4, r9
	ldr r11, _02123938 ; =0x02099F38
	b _02123924
_021236F8:
	add r0, r10, r8, lsl #1
	add r0, r0, #0xf00
	ldrh r1, [r0, #0xf8]
	cmp r1, #0
	beq _0212391C
	ldr r0, _0212393C ; =0x0209BA20
	bl  FUN_ov16_020ee034
	movs r7, r0
	beq _0212391C
	ldrh r1, [r7, #0x26]
	ldr r0, _0212393C ; =0x0209BA20
	bl FUN_0204b0ac
	movs r6, r0
	beq _0212391C
	ldr r0, [r11]
	mov r1, #5
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r5, r0
	add r0, r10, r9, lsl #2
	str r5, [r0, #0xfd8]
	mov r0, r9, lsl #4
	ldrb r2, [r6]
	add r1, r0, #0x20
	mov r3, #0x24
	sub r0, r2, #1
	str r0, [sp]
	mov r0, #0x28
	stmib sp, {r0, r1}
	mov r0, #0x8b
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, r4, #1
	bl FUN_ov57_02123e9c
	ldrh r1, [r7, #0x26]
	mov r0, r9, lsl #4
	add r7, r0, #0x20
	mov r0, r10
	bl FUN_ov57_021239f0
	and r3, r0, #0xff
	ldr r0, [r11]
	mov r1, r5
	add r2, r4, #2
	bl  FUN_ov16_021137dc
	mov r0, #1
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	add r2, r4, #2
	mov r3, r4
	bl  FUN_ov16_0211401c
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	add r2, r4, #2
	mov r3, #0x38
	bl  FUN_ov16_02113b78
	ldr r0, [r11]
	mov r1, r5
	add r2, r4, #2
	mov r3, #0x8b
	bl  FUN_ov16_021139bc
	str r4, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, r9, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #8]
	mov r0, #0x8b
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, r4, #3
	mov r3, #0x25
	bl FUN_ov57_02123e9c
	mov r0, r9, lsl #4
	ldrh r6, [r6, #4]
	ldr r1, _02123940 ; =0x66666667
	add r0, r0, #0x28
	smull r2, r3, r1, r6
	mov r1, r6, lsr #0x1f
	add r3, r1, r3, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r3
	sub r3, r6, r2
	str r3, [sp]
	mov r1, #0xee
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x8b
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, r4, #4
	mov r3, #0x26
	bl FUN_ov57_02123e9c
	cmp r6, #0xa
	blo _021238D0
	ldr r0, _02123940 ; =0x66666667
	mov r1, r5
	smull r2, r3, r0, r6
	mov r0, r6, lsr #0x1f
	add r3, r0, r3, asr #2
	str r3, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, r9, lsl #4
	add r0, r0, #0x28
	str r0, [sp, #8]
	mov r0, #0x8b
	str r0, [sp, #0xc]
	mov r0, r10
	add r2, r4, #5
	mov r3, #0x26
	bl FUN_ov57_02123e9c
_021238D0:
	ldr r0, [sp, #0x14]
	mov r1, #8
	str r9, [r0, #0xa8]
	add r0, r9, #0x4b
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r9, lsl #4
	add r0, r0, #0x20
	str r0, [sp]
	mov r0, #0xd0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x1e
	str r0, [sp, #0xc]
	ldr r0, _02123944 ; =0x02099EB4
	mov r3, #0x28
	ldr r0, [r0]
	bl  FUN_ov16_0210fba4
_0212391C:
	add r8, r8, #1
	add r9, r9, #1
_02123924:
	ldr r0, [sp, #0x10]
	cmp r8, r0
	blt _021236F8
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123938: .word 0x02099F38
_0212393C: .word 0x0209BA20
_02123940: .word 0x66666667
_02123944: .word 0x02099EB4
	arm_func_end FUN_ov57_021236b4

	arm_func_start FUN_ov57_02123948
FUN_ov57_02123948: ; 0x02123948
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _02123990 ; =0x02099F38
	b _02123984
_02123960:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xfd8]
	cmp r1, #0
	beq _02123980
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r7, r6, lsl #2
	str r5, [r0, #0xfd8]
_02123980:
	add r6, r6, #1
_02123984:
	cmp r6, #8
	blt _02123960
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02123990: .word 0x02099F38
	arm_func_end FUN_ov57_02123948

	arm_func_start FUN_ov57_02123994
FUN_ov57_02123994: ; 0x02123994
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x7c
	mov r4, #8
	mov r2, r4
	add r0, r0, #0x1000
	mov r1, #0
	bl MI_CpuFill8
	add r0, r5, #0x7c
	mov r1, r4
	add r0, r0, #0x1000
	bl  FUN_ov16_020f5278
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov57_02123994

	arm_func_start FUN_ov57_021239c8
FUN_ov57_021239c8: ; 0x021239C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x7c
	add r0, r0, #0x1000
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r4, #0x7c
	add r0, r0, #0x1000
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov57_021239c8

	arm_func_start FUN_ov57_021239f0
FUN_ov57_021239f0: ; 0x021239F0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r3, #1
	str r3, [sp]
	mov r2, #0x11
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r3, r0, #0x7c
	mov r2, r1
	ldr r0, [r0, #0x42c]
	ldr r1, _02123A34 ; =0x02124CE0
	add r3, r3, #0x1000
	bl  FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02123A34: .word 0x02124CE0
	arm_func_end FUN_ov57_021239f0

	arm_func_start FUN_ov57_02123a38
FUN_ov57_02123a38: ; 0x02123A38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r6, #0
	mov r7, #1
	mov r5, r0
	mov r4, r1
	mov r8, r7
	mov r9, r6
	tst r2, #0xc0
	mov r0, r6
	beq _02123B20
	add r1, r5, #0x1000
	ldrh r1, [r1, #0x78]
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	sub r1, r7, #2
	tst r2, #0x40
	movne r1, r6
	bne _02123A90
	tst r2, #0x80
	movne r1, r7
_02123A90:
	cmp r1, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r3, _02123CB0 ; =0x02124238
	add r2, r5, #0x1000
	ldr lr, [r3]
	ldr r12, [r3, #4]
	add r3, sp, #0x18
	str r12, [sp, #0x1c]
	str lr, [sp, #0x18]
	ldr r12, [r2, #0x84]
	ldr r2, [r3, r1, lsl #2]
	cmp r1, #0
	cmpeq r12, #0
	add r2, r12, r2
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #29
	add r2, r3, r2, ror #29
	moveq r7, r0
	moveq r8, r0
	moveq r4, #0x200
	beq _02123B08
	cmp r1, #1
	addeq r0, r5, #0x1000
	ldreq r1, [r0, #0x84]
	ldreq r0, [r0, #0xa8]
	cmpeq r1, r0
	moveq r2, #0
	moveq r8, r2
	moveq r4, #0x100
_02123B08:
	cmp r7, #0
	beq _02123B74
	mov r0, r5
	mov r1, #0
	bl FUN_ov57_02123cc4
	b _02123B74
_02123B20:
	tst r4, #0x30
	beq _02123B74
	sub r3, r7, #2
	tst r4, #0x10
	movne r3, r6
	bne _02123B40
	tst r4, #0x20
	movne r3, r7
_02123B40:
	cmp r3, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02123CB4 ; =0x02124210
	add r1, sp, #0x10
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r1, r3, lsl #2]
	mov r7, #2
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_02123B74:
	tst r4, #0x300
	beq _02123C0C
	mvn r6, #0
	tst r4, #0x100
	movne r6, #0
	bne _02123B94
	tst r4, #0x200
	movne r6, #1
_02123B94:
	cmp r6, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, #0x1000
	ldrb r2, [r0, #0x7b]
	ldrb r1, [r0, #0x7a]
	add r0, r2, #1
	bl FUN_0201f9bc
	add r0, r5, #0x1000
	str r1, [sp, #8]
	ldrb r1, [r0, #0x7a]
	ldrb r2, [r0, #0x7b]
	sub r0, r1, #1
	add r0, r2, r0
	bl FUN_0201f9bc
	ldr r0, _02123CB8 ; =0x02124220
	cmp r7, #1
	ldr r4, [r0]
	ldr r3, [r0, #4]
	add r2, sp, #8
	str r1, [sp, #0xc]
	ldr r1, [r2, r6, lsl #2]
	add r0, r5, #0x1000
	add r2, sp, #0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r9, [r2, r6, lsl #2]
	strb r1, [r0, #0x7b]
	moveq r7, #2
	mov r6, #1
_02123C0C:
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_ov57_021236a4
	mov r0, r5
	bl FUN_ov57_02123604
	mov r0, r5
	bl FUN_ov57_02123948
	mov r0, r5
	bl FUN_ov57_021236b4
	cmp r7, #0
	bne _02123C4C
	add r0, r5, #0x1000
	ldr r2, [r0, #0xa8]
	b _02123C68
_02123C4C:
	cmp r7, #2
	bne _02123C74
	add r0, r5, #0x1000
	ldr r1, [r0, #0x84]
	ldr r2, [r0, #0xa8]
	cmp r1, r2
	ble _02123C74
_02123C68:
	mov r0, r5
	mov r1, #0
	bl FUN_ov57_02123cc4
_02123C74:
	cmp r9, #0
	beq _02123C90
	ldr r0, _02123CBC ; =0x02099EB4
	mov r1, r9, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
_02123C90:
	cmp r8, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02123CC0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02123CB0: .word 0x02124238
_02123CB4: .word 0x02124210
_02123CB8: .word 0x02124220
_02123CBC: .word 0x02099EB4
_02123CC0: .word 0x0209AC44
	arm_func_end FUN_ov57_02123a38

	arm_func_start FUN_ov57_02123cc4
FUN_ov57_02123cc4: ; 0x02123CC4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	add r3, r0, #0x1000
	ldr r5, [r3, #0x84]
	ldr r4, _02123DB8 ; =0x02124230
	mov lr, r5, lsr #0x1f
	rsb r12, lr, r5, lsl #29
	add r5, lr, r12, ror #29
	ldr r12, [r4]
	ldr r8, [r4, #4]
	str r12, [sp, #0x18]
	cmp r1, #0
	streq r2, [r3, #0x84]
	add r12, r0, #0x1000
	ldr r0, [r12, #0x84]
	mov r5, r5, lsl #4
	mov r2, r0, lsr #0x1f
	rsb r0, r2, r0, lsl #29
	add r0, r2, r0, ror #29
	mov r0, r0, lsl #4
	add r7, sp, #0x10
	mov r6, #0
	ldr r3, _02123DBC ; =0x02124228
	add r4, r5, #0x20
	ldmia r3, {r2, r5}
	str r6, [r7]
	str r4, [sp, #0x10]
	add r4, sp, #0
	mov r3, #0
	str r3, [r4]
	add r0, r0, #0x20
	str r8, [sp, #0x1c]
	str r6, [r7, #4]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	str r3, [r4, #4]
	str r0, [sp]
	cmp r1, #0
	bne _02123DA4
	ldr r8, [sp, #0x18]
	ldr r7, [sp, #0x10]
	ldr r3, _02123DC0 ; =0x55555556
	sub r5, r2, r8
	sub r4, r0, r7
	smull r1, r6, r3, r5
	smull r1, lr, r3, r4
	add r6, r6, r5, lsr #31
	add lr, lr, r4, lsr #31
	mov r1, #1
	str r1, [r12, #0xa0]
	str r8, [r12, #0x88]
	str r7, [r12, #0x8c]
	str r2, [r12, #0x90]
	str r0, [r12, #0x94]
	str r6, [r12, #0x98]
	str lr, [r12, #0x9c]
_02123DA4:
	ldr r0, _02123DC4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02123DB8: .word 0x02124230
_02123DBC: .word 0x02124228
_02123DC0: .word 0x55555556
_02123DC4: .word 0x0209AC44
	arm_func_end FUN_ov57_02123cc4

	arm_func_start FUN_ov57_02123dc8
FUN_ov57_02123dc8: ; 0x02123DC8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	add r4, sp, #4
	mov r3, #0
	str r3, [r4]
	ldr r2, [r0, #0x59c]
	str r3, [r4, #4]
	cmp r1, #0
	addeq r3, r0, #0x1000
	ldreq r3, [r3, #0x88]
	cmp r1, #0
	addeq r12, r0, #0x1000
	ldreq r12, [r12, #0x8c]
	str r2, [sp, #4]
	movne r12, #0
	mov r2, #2
	cmp r1, #0
	bne _02123E68
	add lr, r0, #0x1000
	ldr r5, [lr, #0xa4]
	ldr r4, [lr, #0x9c]
	add r6, r5, #1
	ldr r5, [lr, #0x98]
	mla r12, r4, r6, r12
	str r6, [lr, #0xa4]
	mla r3, r5, r6, r3
	cmp r4, #0
	ldr lr, [lr, #0x94]
	bge _02123E48
	cmp r12, lr
	movlt r12, lr
	b _02123E50
_02123E48:
	cmp r12, lr
	movgt r12, lr
_02123E50:
	add r0, r0, #0x1000
	ldr lr, [r0, #0x94]
	cmp r12, lr
	moveq lr, #0
	streq lr, [r0, #0xa0]
	streq lr, [r0, #0xa4]
_02123E68:
	mov r0, r12, lsl #0x10
	mov lr, r0, asr #0x10
	add r12, sp, #4
	mov r3, r3, lsl #0x10
	ldr r0, _02123E98 ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	ldr r1, [r12, r1, lsl #2]
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02123E98: .word 0x02099F38
	arm_func_end FUN_ov57_02123dc8

	arm_func_start FUN_ov57_02123e9c
FUN_ov57_02123e9c: ; 0x02123E9C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	add r0, r0, r3, lsl #2
	ldr r3, [r0, #0x438]
	ldr r6, _02123F30 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	mov r4, r2
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r3, [sp, #0x18]
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	mov r1, r5
	mov r2, r4
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02123F30: .word 0x02099F38
	arm_func_end FUN_ov57_02123e9c

	arm_func_start FUN_ov57_02123f34
FUN_ov57_02123f34: ; 0x02123F34
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	cmp r0, #4
	bne _02124018
	ldr r0, [r4, #0xf58]
	cmp r0, #0
	bne _02123F64
	ldr r0, _02124058 ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	bne _02123FBC
_02123F64:
	ldr r0, [r4, #0xf58]
	cmp r0, #2
	bne _02123F7C
	ldr r0, [r4, #0xf94]
	cmp r0, #0
	bne _02123FBC
_02123F7C:
	ldr r0, [r4, #0xf58]
	cmp r0, #5
	bne _02123F94
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02123FBC
_02123F94:
	ldr r0, [r4, #0xf58]
	cmp r0, #4
	ldreq r0, [r4, #8]
	cmpeq r0, #0
	beq _02123FBC
	ldr r0, [r4, #0xf58]
	cmp r0, #3
	ldreq r0, [r4, #4]
	cmpeq r0, #0
	bne _02123FE8
_02123FBC:
	ldr r0, _0212405C ; =0x02099F38
	ldr r1, [r4, #0x52c]
	ldr r0, [r0]
	ldr r2, _02124060 ; =0x00004210
	bl  FUN_ov16_02114204
	add r1, r4, #0xe00
	ldrh r2, [r1, #0xf8]
	ldr r0, _02124064 ; =0x0000FFFE
	and r0, r2, r0
	strh r0, [r1, #0xf8]
	b _0212400C
_02123FE8:
	ldr r0, _0212405C ; =0x02099F38
	ldr r1, [r4, #0x52c]
	ldr r0, [r0]
	ldr r2, _02124068 ; =0x00007FFF
	bl  FUN_ov16_02114204
	add r0, r4, #0xe00
	ldrh r1, [r0, #0xf8]
	orr r1, r1, #1
	strh r1, [r0, #0xf8]
_0212400C:
	mov r0, r4
	bl FUN_ov57_0211ad14
	ldmfd sp!, {r4, r5, r6, pc}
_02124018:
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xfc1]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0212405C ; =0x02099F38
	ldr r6, _02124060 ; =0x00004210
	ldr r0, [r5]
	ldr r1, [r4, #0x52c]
	mov r2, r6
	bl  FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x530]
	mov r2, r6
	bl  FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, pc}
_02124058: .word 0x0209A454
_0212405C: .word 0x02099F38
_02124060: .word 0x00004210
_02124064: .word 0x0000FFFE
_02124068: .word 0x00007FFF
	arm_func_end FUN_ov57_02123f34

	arm_func_start FUN_ov57_0212406c
FUN_ov57_0212406c: ; 0x0212406C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _021240D0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r1, r4, #0x1b8
	mov r0, r4
	add r1, r1, #0x400
	mov r2, #0
	bl FUN_ov57_0211e52c
	add r1, r4, #0x1b8
	mov r0, r4
	add r1, r1, #0x400
	bl FUN_ov57_0211e664
	add r1, r4, #0x1b8
	mov r0, r4
	add r1, r1, #0x400
	bl FUN_ov57_0211e9d4
	ldr r1, [r4, #0x5b8]
	mov r0, r4
	bl FUN_ov57_0211bb24
	mov r1, r0
	mov r0, r4
	bl FUN_ov57_0211de2c
	ldmfd sp!, {r4, pc}
_021240D0: .word 0x0209AC44
	arm_func_end FUN_ov57_0212406c

	arm_func_start FUN_ov57_021240d4
FUN_ov57_021240d4: ; 0x021240D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov57_021240d4

	arm_func_start FUN_ov57_021240e8
FUN_ov57_021240e8: ; 0x021240E8
	bx lr
	arm_func_end FUN_ov57_021240e8
_021240EC:
	.byte 0x78, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x18, 0x00, 0xD8, 0x00, 0x10, 0x00, 0x78, 0x00, 0x08, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x98, 0x00, 0x10, 0x00, 0xA0, 0x00, 0x10, 0x00
	.byte 0xB0, 0x00, 0x10, 0x00, 0xB8, 0x00, 0x10, 0x00, 0x28, 0x44, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x34, 0x44, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xE0, 0x44, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x46, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x90, 0x44, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x40, 0x46, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x46, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xD0, 0x44, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x70, 0x46, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x46, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xA0, 0x44, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0xA0, 0x43, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x46, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x50, 0x44, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0xA4, 0x43, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x46, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x80, 0x46, 0x12, 0x02, 0x17, 0x00, 0x00, 0x00, 0x90, 0x46, 0x12, 0x02, 0x21, 0x00, 0x00, 0x00
	.byte 0xB0, 0x46, 0x12, 0x02, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x60, 0x44, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xD0, 0x46, 0x12, 0x02, 0x17, 0x00, 0x00, 0x00
	.byte 0x80, 0x44, 0x12, 0x02, 0x1A, 0x00, 0x00, 0x00, 0x40, 0x44, 0x12, 0x02, 0x1B, 0x00, 0x00, 0x00
	.byte 0xC0, 0x44, 0x12, 0x02, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x40, 0x00, 0x80, 0x00, 0x20, 0x00, 0x10, 0x00
	.byte 0x4A, 0x00, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00
	.byte 0x28, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xE0, 0x46, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0xF0, 0x46, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x47, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0x10, 0x47, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x20, 0x47, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x30, 0x47, 0x12, 0x02, 0x18, 0x00, 0x00, 0x00
	.byte 0x40, 0x47, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x50, 0x47, 0x12, 0x02, 0x19, 0x00, 0x00, 0x00
	.byte 0x60, 0x47, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x20, 0x46, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0xF0, 0x44, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x45, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x45, 0x12, 0x02, 0x11, 0x00, 0x00, 0x00, 0xE0, 0x45, 0x12, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0x20, 0x45, 0x12, 0x02, 0x13, 0x00, 0x00, 0x00, 0x30, 0x45, 0x12, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0x40, 0x45, 0x12, 0x02, 0x15, 0x00, 0x00, 0x00, 0xA0, 0x45, 0x12, 0x02, 0x16, 0x00, 0x00, 0x00
	.byte 0x50, 0x45, 0x12, 0x02, 0x1D, 0x00, 0x00, 0x00, 0x60, 0x45, 0x12, 0x02, 0x1E, 0x00, 0x00, 0x00
	.byte 0x70, 0x45, 0x12, 0x02, 0x1F, 0x00, 0x00, 0x00, 0x80, 0x45, 0x12, 0x02, 0x20, 0x00, 0x00, 0x00
	.byte 0x90, 0x45, 0x12, 0x02, 0x23, 0x00, 0x00, 0x00, 0xB0, 0x45, 0x12, 0x02, 0x24, 0x00, 0x00, 0x00
	.byte 0xC0, 0x45, 0x12, 0x02, 0x25, 0x00, 0x00, 0x00, 0xD0, 0x45, 0x12, 0x02, 0x26, 0x00, 0x00, 0x00
	.byte 0xF0, 0x45, 0x12, 0x02, 0x27, 0x00, 0x00, 0x00, 0x00, 0x46, 0x12, 0x02, 0x28, 0x00, 0x00, 0x00
	.byte 0x30, 0x46, 0x12, 0x02, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov57_02124330
FUN_ov57_02124330: ; 0x02124330
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02124378 ; =0x021243A8
	str r0, [r4, #0x14]
	ldr r0, _0212437C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02124380 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02124378: .word 0x021243A8
_0212437C: .word 0x00009CCD
_02124380: .word 0x0000EA3C
	arm_func_end FUN_ov57_02124330
	; 0x02124384


	.rodata
	.incbin "/incbin/overlay57_rodata.bin"

	.bss
	.space 0x0
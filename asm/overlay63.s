
	.include "/macros/function.inc"
	.include "/include/overlay63.inc"

	.text
	arm_func_start FUN_ov63_02119f00
FUN_ov63_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F24 ; =0x02124874
	add r1, r4, #0x78
	bl  FUN_ov16_020f316c
	ldr r0, _02119F28 ; =0x0212489C
	add r1, r4, #0x84
	bl  FUN_ov16_020f316c
	ldmfd sp!, {r4, pc}
_02119F24: .word ov63_02124874
_02119F28: .word ov63_0212489C
	arm_func_end FUN_ov63_02119f00

	arm_func_start FUN_ov63_02119f2c
FUN_ov63_02119f2c: ; 0x02119F2C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x194
	ldr lr, _02119F84 ; =0x0212428C
	add r12, sp, #4
	mov r5, r0
	mov r4, #0x19
_02119F44:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02119F44
	mov r4, #0
	str r4, [sp]
	ldr r1, [r5, #0x78]
	ldr r0, _02119F88 ; =0x021248BC
	add r2, sp, #4
	add r3, r5, #0xa8
	bl  FUN_ov16_020f5450
	mov r0, r5
	mov r1, r4
	bl FUN_ov63_0211a278
	add sp, sp, #0x194
	ldmfd sp!, {r4, r5, pc}
_02119F84: .word 0x0212428C
_02119F88: .word ov63_021248BC
	arm_func_end FUN_ov63_02119f2c

	arm_func_start FUN_ov63_02119f8c
FUN_ov63_02119f8c: ; 0x02119F8C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, [r5, #0x1cc]
	add r0, r5, r0, lsl #2
	ldr r1, [r0, #0x1c4]
	cmp r1, #0
	ble _02119FB8
	ldr r0, _0211A17C ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
_02119FB8:
	mov r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r6, _0211A17C ; =0x02099EEC
	ldrh r1, [r5, #0x1c]
	ldr r0, [r6]
	ldr r2, [r5, #0x1cc]
	mov r3, r4
	bl FUN_0205a828
	ldr r1, [r5, #0x1cc]
	ldr r2, _0211A180 ; =0x000F423F
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x1c4]
	ldr r1, [r5, #0x1cc]
	ldr r0, [r6]
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x1c4]
	mov r3, #0
	bl FUN_0205ab68
	ldr r6, _0211A184 ; =0x02099F78
	add r2, r5, #0x2000
	ldr r1, _0211A188 ; =0x021248E4
	mov r0, r6
	strb r4, [r2, #0x7d]
	bl L5_IniFileGetParam
	rsb r0, r0, #0
	cmp r0, #0
	ble _0211A054
	ldr r1, _0211A18C ; =0x021248F8
	mov r0, r6
	bl L5_IniFileGetParam
	rsb r0, r0, #0
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A074
_0211A054:
	ldr r1, _0211A190 ; =0x0212490C
	mov r0, r6
	bl L5_IniFileGetParam
	rsb r0, r0, #0
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A074:
	bl FUN_0201fdac
	ldr r4, _0211A184 ; =0x02099F78
	mov r6, r0
	ldr r1, _0211A194 ; =0x02124920
	mov r0, r4
	bl L5_IniFileGetParam
	cmp r0, #0
	ble _0211A0B8
	ldr r1, _0211A198 ; =0x02124934
	mov r0, r4
	bl L5_IniFileGetParam
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A0D4
_0211A0B8:
	ldr r1, _0211A19C ; =0x02124948
	mov r0, r4
	bl L5_IniFileGetParam
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A0D4:
	bl FUN_0201fdac
	mov r2, #0x1a4000
	str r0, [sp, #0xc]
	rsb r2, r2, #0
	ldr r0, _0211A184 ; =0x02099F78
	ldr r1, _0211A1A0 ; =0x0212495C
	str r2, [sp, #0x14]
	str r6, [sp, #0x10]
	bl L5_IniFileGetParam
	ldr r1, [sp, #0x14]
	ldr r4, _0211A17C ; =0x02099EEC
	str r1, [sp]
	ldr r1, [r5, #0x1cc]
	mov r6, r0
	add r1, r5, r1, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x1c4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_0205aea0
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0x1cc]
	mov r2, r6
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x1c4]
	mov r3, r6
	bl FUN_0205af58
	ldr r0, [r4]
	ldr r1, [r5, #0x1cc]
	mov r2, #0
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x1c4]
	bl FUN_0205acb0
	ldr r0, [r4]
	ldr r1, [r5, #0x1cc]
	mov r2, #1
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x1c4]
	bl FUN_0205b3cc
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_0211A17C: .word unk_02099EEC
_0211A180: .word 0x000F423F
_0211A184: .word unk_02099F78
_0211A188: .word ov63_021248E4
_0211A18C: .word ov63_021248F8
_0211A190: .word ov63_0212490C
_0211A194: .word ov63_02124920
_0211A198: .word ov63_02124934
_0211A19C: .word ov63_02124948
_0211A1A0: .word ov63_0212495C
	arm_func_end FUN_ov63_02119f8c

	arm_func_start FUN_ov63_0211a1a4
FUN_ov63_0211a1a4: ; 0x0211A1A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r3, _0211A204 ; =0x0209A250
	mov r4, r0
	ldr r0, [r3]
	ldr r1, _0211A208 ; =0x02124970
	cmp r0, #0
	moveq r0, #0
	beq _0211A1EC
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r4, #0xb4
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x2000
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0211A1EC:
	cmp r0, #0
	movne r1, r0, lsr #1
	addne r0, r4, #0x2000
	strneh r1, [r0, #0xb8]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0211A204: .word unk_0209A250
_0211A208: .word ov63_02124970
	arm_func_end FUN_ov63_0211a1a4

	arm_func_start FUN_ov63_0211a20c
FUN_ov63_0211a20c: ; 0x0211A20C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A274 ; =0x02099F38
	b _0211A268
_0211A224:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xa8]
	cmp r1, #0
	beq _0211A264
	cmp r6, #0x31
	bgt _0211A264
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A264
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xa8]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A264:
	add r6, r6, #1
_0211A268:
	cmp r6, #0x36
	blt _0211A224
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A274: .word unk_02099F38
	arm_func_end FUN_ov63_0211a20c

	arm_func_start FUN_ov63_0211a278
FUN_ov63_0211a278: ; 0x0211A278
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	bmi _0211A290
	cmp r4, #4
	blt _0211A2E4
_0211A290:
	mov r4, #0
	add r9, r5, #0x78
	mov r8, #1
	mov r7, r4
	mov r6, #0xc
_0211A2A4:
	mul r10, r4, r6
	mov r1, r8
	add r0, r9, r10
	bl  FUN_ov16_020f338c
	add r0, r9, r10
	bl  FUN_ov16_020f33fc
	add r0, r5, r10
	str r7, [r0, #0x78]
	str r7, [r0, #0x7c]
	strb r7, [r0, #0x80]
	strb r7, [r0, #0x81]
	add r4, r4, #1
	strb r7, [r0, #0x82]
	cmp r4, #4
	blt _0211A2A4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A2E4:
	mov r0, #0xc
	mul r6, r4, r0
	add r4, r5, #0x78
	add r0, r4, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r6
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r6]
	add r0, r5, r6
	str r1, [r0, #0x7c]
	strb r1, [r0, #0x80]
	strb r1, [r0, #0x81]
	strb r1, [r0, #0x82]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov63_0211a278

	arm_func_start FUN_ov63_0211a324
FUN_ov63_0211a324: ; 0x0211A324
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mvn r1, #0
	mov r5, r0
	bl FUN_ov63_0211a278
	mov r4, #0
	add r7, r5, #0x1d0
	mov r6, #0xd4
	b _0211A354
_0211A344:
	mla r1, r4, r6, r7
	mov r0, r5
	bl FUN_ov63_0211bae4
	add r4, r4, #1
_0211A354:
	cmp r4, #8
	blt _0211A344
	add r0, r5, #0x84
	add r0, r0, #0x2000
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	mov r4, #0
	ldr r6, _0211A430 ; =0x02099F38
	b _0211A394
_0211A378:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x180]
	cmp r1, #0
	beq _0211A390
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211A390:
	add r4, r4, #1
_0211A394:
	cmp r4, #0xf
	blt _0211A378
	mov r4, #0
	ldr r6, _0211A430 ; =0x02099F38
	b _0211A3C4
_0211A3A8:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xa8]
	cmp r1, #0
	beq _0211A3C0
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A3C0:
	add r4, r4, #1
_0211A3C4:
	cmp r4, #0x36
	blt _0211A3A8
	mov r4, #0
	ldr r6, _0211A430 ; =0x02099F38
	b _0211A3F4
_0211A3D8:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x1bc]
	cmp r1, #0
	beq _0211A3F0
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A3F0:
	add r4, r4, #1
_0211A3F4:
	cmp r4, #2
	blt _0211A3D8
	ldr r1, [r5, #0x1c4]
	cmp r1, #0
	ble _0211A414
	ldr r0, _0211A434 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
_0211A414:
	ldr r1, [r5, #0x1c8]
	cmp r1, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A434 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A430: .word unk_02099F38
_0211A434: .word unk_02099EEC
	arm_func_end FUN_ov63_0211a324

	arm_func_start FUN_ov63_0211a438
FUN_ov63_0211a438: ; 0x0211A438
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A484 ; =0x02099F38
	b _0211A474
_0211A44C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xa8]
	cmp r1, #0
	beq _0211A470
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A470:
	add r5, r5, #1
_0211A474:
	cmp r5, #0x36
	blt _0211A44C
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A484: .word unk_02099F38
	arm_func_end FUN_ov63_0211a438

	arm_func_start FUN_ov63_0211a488
FUN_ov63_0211a488: ; 0x0211A488
	stmfd sp!, {r3, lr}
	mov r3, r0
	add r0, r3, #0x2000
	ldrh r1, [r0, #0xf6]
	ldrh r0, [r3, #0x1c]
	mov r2, #5
	strh r1, [r3, #0x1e]
	cmp r0, #0
	moveq r0, #0
	str r2, [r3, #0x18]
	streq r0, [r3, #0x18]
	streqh r0, [r3, #0x1e]
	ldr r0, [r3, #4]
	add r1, r3, #0x18
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov63_0211a488

	arm_func_start FUN_ov63_0211a4d0
FUN_ov63_0211a4d0: ; 0x0211A4D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldr r0, [r9, #0x180]
	ldr r5, _0211A9EC ; =0x02099F38
	cmp r0, #0
	mov r7, #3
	mov r10, #1
	mov r8, #0
	bne _0211A624
	ldr r0, [r5]
	mov r1, r7
	mov r2, r10
	bl  FUN_ov16_02112724
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [r9, #0x180]
	ldr r0, [r5]
	ldr r2, _0211A9F0 ; =0x000001EA
	mov r1, r6
	sub r3, r10, #2
	bl  FUN_ov16_02112c90
	ldr r1, [r9, #0xa8]
	ldr r0, [r5]
	and r3, r1, #0xff
	mov r1, r6
	mov r2, r10
	bl  FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r10
	mov r3, r8
	bl  FUN_ov16_0211401c
	ldr r3, [r9, #0xc8]
	mov r11, #2
	ldr r0, [r5]
	mov r1, r6
	mov r2, r11
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r4, _0211A9F4 ; =0x021241CC
	mov r1, r6
	ldrsh r0, [r4, #0x5e]
	mov r2, r11
	str r0, [sp]
	ldrsh r3, [r4, #0x5c]
	ldr r0, [r5]
	bl  FUN_ov16_02113b78
	str r8, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r11
	mov r3, r8
	bl  FUN_ov16_0211401c
	ldr r3, [r9, #0x1bc]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldrsh r0, [r4, #0x76]
	mov r1, r6
	mov r2, r7
	str r0, [sp]
	ldrsh r3, [r4, #0x74]
	ldr r0, [r5]
	bl  FUN_ov16_02113b78
	str r8, [sp]
	ldr r0, [r5]
	mov r3, r8
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_02113d88
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r5]
	mov r2, r7
	mov r1, r6
	mov r3, #0x40
	bl  FUN_ov16_02113d08
	ldr r0, [r5]
	mov r1, r6
	mov r2, r11
	mov r3, r10
	bl  FUN_ov16_021142fc
_0211A624:
	ldr r0, [r9, #0x184]
	cmp r0, #0
	bne _0211A698
	mov r1, #1
	ldr r0, [r5]
	mov r2, r1
	bl  FUN_ov16_02112724
	mov r4, r0
	str r4, [r9, #0x184]
	ldr r2, [r9, #0x138]
	ldr r0, [r5]
	mov r1, r4
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r3, _0211A9F4 ; =0x021241CC
	ldr r0, [r5]
	ldrsh r2, [r3, #0x8c]
	ldrsh r3, [r3, #0x8e]
	mov r1, r4
	bl  FUN_ov16_02112f04
	mov r2, #0
	ldr r0, [r5]
	mov r1, r4
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r0, [r5]
	mov r1, r4
	mov r2, #0x154
	bl  FUN_ov16_02112b98
_0211A698:
	mov r0, r9
	mov r4, #1
	bl FUN_ov63_021201f4
	cmp r0, #5
	beq _0211A6BC
	mov r0, r9
	bl FUN_ov63_021201f4
	cmp r0, #6
	movne r4, #0
_0211A6BC:
	mov r11, #2
	ldr r0, [r5]
	ldr r1, [r9, #0x184]
	mov r2, r11
	mov r3, r4
	bl  FUN_ov16_021142fc
	add r0, r9, #0x2000
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x1b8]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	mov r1, r11
	mov r2, r10
	bl  FUN_ov16_02112724
	mov r4, r0
	mov r7, #0
	ldrh r0, [r9, #0x1c]
	mov r1, r7
	mov r8, r7
	mov r6, #0x2f
	str r4, [r9, #0x1b8]
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r9, #0x2000
	ldrb r1, [r1, #0xa2]
	bl FUN_0206cdf8
	mov r1, r0
	ldr r0, _0211A9F8 ; =0x0209BA20
	bl FUN_0204a2c4
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	cmpne r0, #0x17
	moveq r6, #0x2f
	moveq r7, #0
	beq _0211A800
	cmp r0, #0xf
	bne _0211A7A8
	ldrsh r0, [r5, #0xc]
	mov r6, #0x2e
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211A800
_0211A77C: ; jump table
	b _0211A800 ; case 0
	b _0211A790 ; case 1
	b _0211A794 ; case 2
	b _0211A798 ; case 3
	b _0211A7A0 ; case 4
_0211A790:
	b _0211A800
_0211A794:
	b _0211A7F4
_0211A798:
	mov r7, r11
	b _0211A800
_0211A7A0:
	mov r7, #3
	b _0211A800
_0211A7A8:
	cmp r0, #0xe
	moveq r6, #0x2e
	moveq r7, #4
	beq _0211A800
	cmp r0, #1
	moveq r6, #0x2e
	moveq r7, #5
	beq _0211A800
	cmp r0, #0xa
	bne _0211A7FC
	ldrsh r0, [r5, #0xc]
	cmp r0, #0
	beq _0211A7F0
	cmp r0, #1
	beq _0211A7F4
	cmp r0, #2
	moveq r7, #3
	b _0211A800
_0211A7F0:
	b _0211A798
_0211A7F4:
	mov r7, r10
	b _0211A800
_0211A7FC:
	mov r6, #0x30
_0211A800:
	add r0, r9, r6, lsl #2
	ldr r3, [r0, #0xa8]
	ldr r6, _0211A9EC ; =0x02099F38
	mov r10, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r11, #0
	str r11, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r3, r7
	mov r2, r10
	bl  FUN_ov16_0211401c
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	mov r3, #0xb8
	bl  FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	mov r3, #0x154
	bl  FUN_ov16_021139bc
	str r10, [sp]
	mov r7, #2
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	mov r3, r7
	bl  FUN_ov16_02113ec0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xf]
	mov r6, r11
	cmp r0, #0
	cmpne r0, #0x17
	moveq r1, #0x2f
	moveq r8, #0
	beq _0211A960
	cmp r0, #0xf
	bne _0211A900
	ldrsh r0, [r5, #0x10]
	mov r1, #0x2e
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211A960
_0211A8D0: ; jump table
	b _0211A960 ; case 0
	b _0211A8E4 ; case 1
	b _0211A8EC ; case 2
	b _0211A8F0 ; case 3
	b _0211A8F8 ; case 4
_0211A8E4:
	mov r8, r11
	b _0211A960
_0211A8EC:
	b _0211A950
_0211A8F0:
	mov r8, r7
	b _0211A960
_0211A8F8:
	mov r8, #3
	b _0211A960
_0211A900:
	cmp r0, #0xe
	moveq r1, #0x2e
	moveq r8, #4
	beq _0211A960
	cmp r0, #1
	moveq r1, #0x2e
	moveq r8, #5
	beq _0211A960
	cmp r0, #0xa
	bne _0211A958
	ldrsh r0, [r5, #0x10]
	mov r1, #0x2f
	cmp r0, #0
	beq _0211A94C
	cmp r0, #1
	beq _0211A950
	cmp r0, #2
	moveq r8, #3
	b _0211A960
_0211A94C:
	b _0211A8F0
_0211A950:
	mov r8, r10
	b _0211A960
_0211A958:
	mov r8, r11
	mov r1, #0x30
_0211A960:
	add r0, r9, r1, lsl #2
	ldr r3, [r0, #0xa8]
	ldr r7, _0211A9EC ; =0x02099F38
	mov r5, #2
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, r8
	bl  FUN_ov16_0211401c
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0xb8
	bl  FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0x154
	bl  FUN_ov16_021139bc
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A9EC: .word unk_02099F38
_0211A9F0: .word 0x000001EA
_0211A9F4: .word 0x021241CC
_0211A9F8: .word unk_0209BA20
	arm_func_end FUN_ov63_0211a4d0

	arm_func_start FUN_ov63_0211a9fc
FUN_ov63_0211a9fc: ; 0x0211A9FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldr r0, [r4]
	mov r6, r3
	cmp r0, #0
	bne _0211AA2C
	ldr r0, _0211AACC ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r4]
_0211AA2C:
	ldr r5, _0211AACC ; =0x02099F38
	ldr r1, [r4]
	ldr r0, [r5]
	mov r3, r6
	mov r2, #2
	bl  FUN_ov16_021142fc
	ldrb r0, [sp, #0x10]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [sp, #0x20]
	ldr r0, [r5]
	ldr r1, [r4]
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r2, [sp, #0x28]
	ldr r0, [r5]
	ldr r1, [r4]
	and r2, r2, #0xff
	bl  FUN_ov16_02112af0
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r2, [sp, #0x24]
	mov r3, #0
	bl  FUN_ov16_0211346c
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r2, [sp, #0x1c]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldmfd sp!, {r4, r5, r6, pc}
_0211AACC: .word unk_02099F38
	arm_func_end FUN_ov63_0211a9fc

	arm_func_start FUN_ov63_0211aad0
FUN_ov63_0211aad0: ; 0x0211AAD0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r0, _0211ABA4 ; =0x02099EB4
	str r3, [sp]
	mov r2, r2, lsl #0x10
	mov r12, r1, lsl #0x10
	mov r1, r2, lsr #0x10
	ldr r0, [r0]
	ldr r3, [sp, #0x18]
	mov r2, r12, lsr #0x10
	bl  FUN_ov16_0210fbe8
	movs r6, r0
	beq _0211AB98
	ldr r0, [sp, #0x20]
	ldrh r12, [sp, #0x1c]
	mov r4, #0
	mov r5, #1
	strb r0, [r6, #0x11]
	strb r5, [r6, #0xf]
	mov r1, r4
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	strh r12, [r6, #0xc]
	bl  FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r1, r4
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_0210e720
	mov r3, r5
	add r0, r6, #0x42
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x42
	mov r1, r4
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_0210e720
_0211AB98:
	mov r0, r6
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211ABA4: .word unk_02099EB4
	arm_func_end FUN_ov63_0211aad0

	arm_func_start FUN_ov63_0211aba8
FUN_ov63_0211aba8: ; 0x0211ABA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	mov r4, #1
	bl FUN_ov63_021201f4
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0211AF10
_0211ABC8: ; jump table
	b _0211AF10 ; case 0
	b _0211ACFC ; case 1
	b _0211ADF4 ; case 2
	b _0211ADF4 ; case 3
	b _0211ADF4 ; case 4
	b _0211AEC0 ; case 5
	b _0211AEC0 ; case 6
	b _0211ABFC ; case 7
	b _0211ABFC ; case 8
	b _0211ABFC ; case 9
	b _0211ABFC ; case 10
	b _0211ABFC ; case 11
	b _0211AEC0 ; case 12
_0211ABFC:
	str r4, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211AF48 ; =0x000001D6
	mov r8, #7
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xac]
	mov r7, #0
	str r0, [sp, #0x10]
	str r8, [sp, #0x14]
	mov r0, r5
	mov r2, r4
	mov r3, r4
	str r7, [sp, #0x18]
	add r1, r5, #0x188
	bl FUN_ov63_0211a9fc
	ldr r1, [r5, #0x188]
	mov r0, #0x400
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r4
	mov r2, r4
	mov r3, #0x1e
	str r4, [sp, #8]
	bl FUN_ov63_0211aad0
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r4
	mov r2, r4
	mov r3, r7
	strb r7, [r6, #0xf]
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xac]
	mov r2, r8
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	add r0, r6, #0x3e
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xb0]
	add r0, r6, #0x3e
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0210e720
	add r0, r6, #0x42
	mov r1, r4
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xb4]
	add r0, r6, #0x42
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211ACFC:
	str r4, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211AF48 ; =0x000001D6
	mov r8, #7
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xac]
	mov r7, #0
	str r0, [sp, #0x10]
	str r8, [sp, #0x14]
	mov r0, r5
	mov r2, r4
	mov r3, r4
	str r7, [sp, #0x18]
	add r1, r5, #0x188
	bl FUN_ov63_0211a9fc
	ldr r1, [r5, #0x188]
	mov r0, r5
	stmia sp, {r1, r4}
	mov r1, r4
	mov r2, r4
	mov r3, #0x1e
	str r4, [sp, #8]
	bl FUN_ov63_0211aad0
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r4
	mov r2, r4
	mov r3, r7
	strb r7, [r6, #0xf]
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xac]
	mov r2, r8
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	add r0, r6, #0x3e
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xb0]
	add r0, r6, #0x3e
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0210e720
	add r0, r6, #0x42
	mov r1, r4
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xb4]
	add r0, r6, #0x42
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211ADF4:
	str r4, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211AF48 ; =0x000001D6
	mov r7, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xac]
	mov r2, r4
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, r5
	mov r3, r4
	str r7, [sp, #0x18]
	add r1, r5, #0x188
	bl FUN_ov63_0211a9fc
	ldr r1, [r5, #0x188]
	mov r0, r5
	stmia sp, {r1, r4}
	mov r1, r4
	mov r2, r4
	mov r3, #0x1e
	str r4, [sp, #8]
	bl FUN_ov63_0211aad0
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r4
	mov r2, r4
	mov r3, r7
	strb r7, [r6, #0xf]
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xac]
	mov r2, r4
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r4
	add r0, r6, #0x3e
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xb0]
	add r0, r6, #0x3e
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AEC0:
	mov r2, r4
	str r2, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211AF48 ; =0x000001D6
	mov r1, #7
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xac]
	mov r3, r2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r4, #2
	mov r0, r5
	add r1, r5, #0x188
	str r4, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AF10:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, r5
	add r1, r5, #0x188
	mov r2, #1
	str r3, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AF48: .word 0x000001D6
	arm_func_end FUN_ov63_0211aba8

	arm_func_start FUN_ov63_0211af4c
FUN_ov63_0211af4c: ; 0x0211AF4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	bl FUN_ov63_021201f4
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0211B190
_0211AF68: ; jump table
	b _0211B190 ; case 0
	b _0211AF9C ; case 1
	b _0211B070 ; case 2
	b _0211B070 ; case 3
	b _0211B070 ; case 4
	b _0211B190 ; case 5
	b _0211B190 ; case 6
	b _0211B140 ; case 7
	b _0211B140 ; case 8
	b _0211B140 ; case 9
	b _0211B140 ; case 10
	b _0211B140 ; case 11
	b _0211B140 ; case 12
_0211AF9C:
	mov r4, #1
	str r4, [sp]
	mov r0, #0xd0
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211B1E0 ; =0x000001D6
	mov r8, #8
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xac]
	mov r7, #0
	str r0, [sp, #0x10]
	str r8, [sp, #0x14]
	mov r0, r5
	mov r2, r4
	mov r3, r4
	str r7, [sp, #0x18]
	add r1, r5, #0x18c
	bl FUN_ov63_0211a9fc
	ldr r0, [r5, #0x18c]
	mov r1, #2
	str r0, [sp]
	mov r0, r5
	mov r2, r4
	mov r3, #0x1e
	stmib sp, {r1, r4}
	bl FUN_ov63_0211aad0
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r4
	mov r2, r4
	mov r3, r7
	strb r7, [r6, #0xf]
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xac]
	mov r2, r8
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r4
	add r0, r6, #0x3e
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xb0]
	add r0, r6, #0x3e
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B070:
	mov r4, #1
	str r4, [sp]
	mov r0, #0xd0
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211B1E0 ; =0x000001D6
	mov r7, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xac]
	mov r2, r4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, r5
	mov r3, r4
	str r7, [sp, #0x18]
	add r1, r5, #0x18c
	bl FUN_ov63_0211a9fc
	ldr r0, [r5, #0x18c]
	mov r1, #2
	str r0, [sp]
	mov r0, r5
	mov r2, r4
	mov r3, #0x1e
	stmib sp, {r1, r4}
	bl FUN_ov63_0211aad0
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r4
	mov r2, r4
	mov r3, r7
	strb r7, [r6, #0xf]
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xac]
	mov r2, r7
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r4
	mov r3, r7
	add r0, r6, #0x3e
	bl  FUN_ov16_0210e6fc
	ldr r1, [r5, #0xb0]
	add r0, r6, #0x3e
	mov r2, r7
	mov r3, r7
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B140:
	mov r2, #1
	str r2, [sp]
	mov r0, #0xd0
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211B1E0 ; =0x000001D6
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xb4]
	mov r3, r2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r4, #2
	mov r0, r5
	add r1, r5, #0x18c
	str r4, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B190:
	mov r2, #1
	str r2, [sp]
	mov r0, #0xd0
	str r0, [sp, #4]
	mov r1, #0xa8
	ldr r0, _0211B1E0 ; =0x000001D6
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xac]
	mov r1, #0
	str r0, [sp, #0x10]
	mov r0, r5
	mov r3, r2
	str r1, [sp, #0x14]
	mov r4, #2
	add r1, r5, #0x18c
	str r4, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B1E0: .word 0x000001D6
	arm_func_end FUN_ov63_0211af4c

	arm_func_start FUN_ov63_0211b1e4
FUN_ov63_0211b1e4: ; 0x0211B1E4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	add r1, r6, #0x2000
	ldr r1, [r1, #0xe0]
	mov r5, #1
	cmp r1, #0
	mov r4, #0
	beq _0211B300
	str r5, [sp]
	mov r1, #0x98
	str r1, [sp, #4]
	mov r2, #0xa8
	str r2, [sp, #8]
	ldr r1, _0211B548 ; =0x000001D6
	mov r2, r5
	str r1, [sp, #0xc]
	ldr r1, [r6, #0xbc]
	mov r3, r5
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	add r1, r6, #0x194
	bl FUN_ov63_0211a9fc
	ldr r1, [r6, #0x194]
	mov r0, #0x800
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r1, #4
	mov r3, #0x1e
	str r5, [sp, #8]
	bl FUN_ov63_0211aad0
	movs r7, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r7, #0x3a
	strb r4, [r7, #0xf]
	bl  FUN_ov16_0210e6fc
	mov r6, #2
	mov r1, r4
	mov r2, r6
	mov r3, r4
	add r0, r7, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r5
	add r0, r7, #0x3e
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r4
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_0210e720
	mov r2, r5
	add r0, r7, #0x42
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r7, #0x42
	mov r2, r6
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B300:
	bl FUN_ov63_021201f4
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211B4FC
_0211B310: ; jump table
	b _0211B4FC ; case 0
	b _0211B35C ; case 1
	b _0211B42C ; case 2
	b _0211B324 ; case 3
	b _0211B324 ; case 4
_0211B324:
	mov r3, r4
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, r6
	add r1, r6, #0x194
	mov r2, r5
	str r3, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B35C:
	str r5, [sp]
	mov r0, #0x98
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211B548 ; =0x000001D6
	mov r2, r5
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xbc]
	mov r3, r5
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, r6
	str r4, [sp, #0x18]
	add r1, r6, #0x194
	bl FUN_ov63_0211a9fc
	ldr r1, [r6, #0x194]
	mov r0, #0x800
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r1, #4
	mov r3, #0x1e
	str r5, [sp, #8]
	bl FUN_ov63_0211aad0
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r6, #0x3a
	strb r4, [r6, #0xf]
	bl  FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r6, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r5
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B42C:
	str r5, [sp]
	mov r0, #0x98
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211B548 ; =0x000001D6
	mov r2, r5
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xbc]
	mov r3, r5
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, r6
	str r4, [sp, #0x18]
	add r1, r6, #0x194
	bl FUN_ov63_0211a9fc
	ldr r1, [r6, #0x194]
	mov r0, #0x800
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r1, #4
	mov r3, #0x1e
	str r5, [sp, #8]
	bl FUN_ov63_0211aad0
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r6, #0x3a
	strb r4, [r6, #0xf]
	bl  FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r6, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r1, r4
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B4FC:
	mov r2, #1
	str r2, [sp]
	mov r0, #0x98
	str r0, [sp, #4]
	mov r1, #0xa8
	str r1, [sp, #8]
	ldr r0, _0211B548 ; =0x000001D6
	mov r3, r2
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xbc]
	add r1, r6, #0x194
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r4, #2
	mov r0, r6
	str r4, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B548: .word 0x000001D6
	arm_func_end FUN_ov63_0211b1e4

	arm_func_start FUN_ov63_0211b54c
FUN_ov63_0211b54c: ; 0x0211B54C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r6, #0
	mov r8, r0
	mov r7, r6
	bl FUN_ov63_021201f4
	mov r5, #1
	cmp r0, #1
	str r5, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	mov r1, #0x18
	str r1, [sp, #8]
	ldr r0, _0211B68C ; =0x000001D6
	mov r4, #0
	str r0, [sp, #0xc]
	ldr r0, [r8, #0xc4]
	moveq r7, #1
	str r0, [sp, #0x10]
	movne r6, #2
	str r4, [sp, #0x14]
	mov r0, r8
	mov r2, r5
	mov r3, r5
	add r1, r8, #0x1a0
	str r6, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	cmp r7, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0x1a0]
	mov r0, #0x200
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, r5
	mov r1, #8
	mov r3, #0xa
	str r5, [sp, #8]
	bl FUN_ov63_0211aad0
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r6, #0x3a
	strb r4, [r6, #0xf]
	bl  FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r5
	add r0, r6, #0x3e
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r1, r4
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_0210e720
	mov r2, r5
	add r0, r6, #0x42
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x42
	mov r1, r4
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_0210e720
	ldr r0, _0211B690 ; =FUN_ov63_021240c4
	str r0, [r6, #0x28]
	ldr r0, [r8, #0x180]
	strh r0, [r6, #0x30]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B68C: .word 0x000001D6
_0211B690: .word FUN_ov63_021240c4
	arm_func_end FUN_ov63_0211b54c

	arm_func_start FUN_ov63_0211b694
FUN_ov63_0211b694: ; 0x0211B694
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r6, #0
	mov r8, r0
	mov r7, r6
	bl FUN_ov63_021201f4
	mov r5, #1
	cmp r0, #1
	mov r1, #0xd8
	str r5, [sp]
	str r1, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	add r0, r1, #0xfe
	str r0, [sp, #0xc]
	ldr r0, [r8, #0xc4]
	mov r4, #2
	str r0, [sp, #0x10]
	moveq r7, #1
	movne r6, #2
	str r4, [sp, #0x14]
	mov r0, r8
	mov r2, r5
	mov r3, r5
	add r1, r8, #0x1a4
	str r6, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	cmp r7, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0x1a4]
	mov r0, #0x100
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, r5
	mov r1, #7
	mov r3, #0xa
	str r5, [sp, #8]
	bl FUN_ov63_0211aad0
	movs r7, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3a
	strb r6, [r7, #0xf]
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r7, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	add r0, r7, #0x3e
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r6
	mov r2, #3
	mov r3, r6
	bl  FUN_ov16_0210e720
	mov r2, r5
	add r0, r7, #0x42
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	mov r2, r4
	add r0, r7, #0x42
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210e720
	ldr r0, _0211B7D8 ; =FUN_ov63_021240c4
	str r0, [r7, #0x28]
	ldr r0, [r8, #0x180]
	strh r0, [r7, #0x30]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B7D8: .word FUN_ov63_021240c4
	arm_func_end FUN_ov63_0211b694

	arm_func_start FUN_ov63_0211b7dc
FUN_ov63_0211b7dc: ; 0x0211B7DC
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0211B870
_0211B7E8: ; jump table
	b _0211B870 ; case 0
	b _0211B818 ; case 1
	b _0211B820 ; case 2
	b _0211B828 ; case 3
	b _0211B830 ; case 4
	b _0211B860 ; case 5
	b _0211B868 ; case 6
	b _0211B838 ; case 7
	b _0211B858 ; case 8
	b _0211B840 ; case 9
	b _0211B848 ; case 10
	b _0211B850 ; case 11
_0211B818:
	mov r0, #0
	bx lr
_0211B820:
	mov r0, #1
	bx lr
_0211B828:
	mov r0, #2
	bx lr
_0211B830:
	mov r0, #2
	bx lr
_0211B838:
	mvn r0, #0
	bx lr
_0211B840:
	mvn r0, #0
	bx lr
_0211B848:
	mvn r0, #0
	bx lr
_0211B850:
	mvn r0, #0
	bx lr
_0211B858:
	mvn r0, #0
	bx lr
_0211B860:
	mov r0, #2
	bx lr
_0211B868:
	mov r0, #3
	bx lr
_0211B870:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov63_0211b7dc

	arm_func_start FUN_ov63_0211b878
FUN_ov63_0211b878: ; 0x0211B878
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov63_0211b7dc
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	add r2, r6, #0x1d0
	mov r1, #0xd4
	mla r0, r1, r0, r2
	ldr r1, [r0, #0x1c]
	cmp r1, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov63_0211b878

	arm_func_start FUN_ov63_0211b8bc
FUN_ov63_0211b8bc: ; 0x0211B8BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r4
	mov r2, #0
	bl FUN_ov63_0211b878
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov63_0211b8bc

	arm_func_start FUN_ov63_0211b8dc
FUN_ov63_0211b8dc: ; 0x0211B8DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r5
	bl FUN_ov63_0211b7dc
	movs r4, r0
	bne _0211B908
	ldr r7, _0211BA40 ; =0x02099F38
	ldr r8, _0211BA44 ; =0x00007FFF
	b _0211B910
_0211B908:
	ldr r7, _0211BA40 ; =0x02099F38
	ldr r8, _0211BA48 ; =0x00004210
_0211B910:
	ldr r0, [r7]
	ldr r1, [r5, #0x180]
	mov r2, r8
	bl  FUN_ov16_02114204
	ldr r6, _0211BA4C ; =0x02099EEC
	ldr r1, [r5, #0x1c4]
	ldr r0, [r6]
	mov r2, r8
	bl FUN_0205ae4c
	ldr r0, [r6]
	ldr r1, [r5, #0x1c8]
	mov r2, r8
	bl FUN_0205ae4c
	ldr r0, [r7]
	ldr r1, [r5, #0x1a0]
	mov r2, r8
	bl  FUN_ov16_02114204
	ldr r0, [r7]
	ldr r1, [r5, #0x1a4]
	mov r2, r8
	bl  FUN_ov16_02114204
	ldr r7, _0211BA40 ; =0x02099F38
	ldr r1, [r5, #0x190]
	ldr r0, [r7]
	ldr r2, _0211BA48 ; =0x00004210
	bl  FUN_ov16_02114204
	cmp r4, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r5, #0x1d0
	mov r0, #0xd4
	mla r10, r4, r0, r1
	mov r8, #0
	add r6, r5, #0x2000
	ldr r9, _0211BA44 ; =0x00007FFF
	b _0211B9D8
_0211B99C:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B9D4
	ldr r0, [r10, #0x1c]
	cmp r0, #6
	ldreq r0, [r6, #0xb0]
	cmpeq r0, r1
	beq _0211B9D4
	add r1, r10, r8, lsl #2
	ldr r0, [r7]
	ldr r1, [r1, #0x20]
	mov r2, r9
	bl  FUN_ov16_02114204
_0211B9D4:
	add r8, r8, #1
_0211B9D8:
	cmp r8, #0x11
	blt _0211B99C
	sub r9, r4, #1
	add r7, r5, #0x1d0
	ldr r6, _0211BA48 ; =0x00004210
	mov r11, #0
	ldr r5, _0211BA40 ; =0x02099F38
	mov r4, #0xd4
	b _0211BA34
_0211B9FC:
	mla r10, r9, r4, r7
	mov r8, r11
	b _0211BA28
_0211BA08:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211BA24
	ldr r0, [r5]
	mov r2, r6
	bl  FUN_ov16_02114204
_0211BA24:
	add r8, r8, #1
_0211BA28:
	cmp r8, #0x11
	blt _0211BA08
	sub r9, r9, #1
_0211BA34:
	cmp r9, #0
	bge _0211B9FC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BA40: .word unk_02099F38
_0211BA44: .word 0x00007FFF
_0211BA48: .word 0x00004210
_0211BA4C: .word unk_02099EEC
	arm_func_end FUN_ov63_0211b8dc

	arm_func_start FUN_ov63_0211ba50
FUN_ov63_0211ba50: ; 0x0211BA50
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov63_0211b7dc
	cmp r0, #0
	movlt r0, #0
	add r6, r0, #2
	cmp r6, #8
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r7, #0x1d0
	mov r4, #0xd4
_0211BA78:
	mla r1, r6, r4, r5
	mov r0, r7
	bl FUN_ov63_0211bae4
	add r6, r6, #1
	cmp r6, #8
	blt _0211BA78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov63_0211ba50

	arm_func_start FUN_ov63_0211ba94
FUN_ov63_0211ba94: ; 0x0211BA94
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #2
	bl FUN_ov63_0211b7dc
	add r2, r4, #0x1d0
	mov r1, #0xd4
	mla r1, r0, r1, r2
	mov r0, r4
	bl FUN_ov63_0211bae4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov63_0211ba94

	arm_func_start FUN_ov63_0211babc
FUN_ov63_0211babc: ; 0x0211BABC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #6
	bl FUN_ov63_0211b7dc
	add r2, r4, #0x1d0
	mov r1, #0xd4
	mla r1, r0, r1, r2
	mov r0, r4
	bl FUN_ov63_0211bae4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov63_0211babc

	arm_func_start FUN_ov63_0211bae4
FUN_ov63_0211bae4: ; 0x0211BAE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
	ldr r4, _0211BB64 ; =0x02099F38
	b _0211BB18
_0211BAFC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211BB14
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211BB14:
	add r5, r5, #1
_0211BB18:
	cmp r5, #0x11
	blt _0211BAFC
	ldr r1, [r6, #0x64]
	cmp r1, #0
	ble _0211BB38
	ldr r0, _0211BB64 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211BB38:
	mov r0, r7
	bl FUN_ov63_02121710
	mov r4, #0xd4
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BB64: .word unk_02099F38
	arm_func_end FUN_ov63_0211bae4

	arm_func_start FUN_ov63_0211bb68
FUN_ov63_0211bb68: ; 0x0211BB68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r6, r1
	ldr r1, [r6, #0x1c]
	mov r7, r0
	cmp r1, #1
	ldreq r0, [r6]
	mov r1, r6
	streq r0, [sp, #0xc]
	movne r0, #0
	strne r0, [sp, #0xc]
	mov r0, r7
	bl FUN_ov63_0211bae4
	mov r0, r7
	bl FUN_ov63_0211ba94
	mov r0, #1
	str r0, [r6, #0x1c]
	ldr r0, [r7, #0xcc]
	mov r5, #0
	mov r3, #6
	mov r2, #0x17c
	mov r1, #0x48
	str r0, [r6, #0x74]
	mov r0, #0x30
	strh r1, [r6, #0x7e]
	strh r0, [r6, #0x80]
	str r2, [r6, #0xd0]
	add r11, sp, #0x10
	str r5, [r6, #0x78]
	strb r5, [r6, #0x7c]
	str r3, [r6, #4]
	str r3, [r6, #8]
	mov r0, r7
	mov r1, r6
	mov r2, r11
	str r5, [sp, #0x10]
	bl FUN_ov63_0211d9b8
	ldr r0, [r6, #8]
	cmp r0, #0
	ble _0211BC74
	mov r4, #0xaa
	mov r10, #0x10
	mov r9, #0x14
	mov r8, r5
_0211BC18:
	add r3, r6, r5, lsl #2
	strh r4, [r3, #0xa2]
	strh r10, [r3, #0xa4]
	ldrsh r2, [r6, #0x7e]
	mov r0, r7
	mov r1, r6
	add r2, r2, #7
	strh r2, [r3, #0x82]
	ldrsh lr, [r6, #0x80]
	ldrsh r12, [r3, #0xa4]
	mov r2, r11
	add lr, lr, #0x10
	mla r12, r5, r12, lr
	strh r12, [r3, #0x84]
	str r9, [sp]
	str r8, [sp, #4]
	mov r3, r5
	str r8, [sp, #8]
	bl FUN_ov63_0211da3c
	ldr r0, [r6, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _0211BC18
_0211BC74:
	mov r5, #0
	add r4, sp, #0x10
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	str r5, [sp]
	bl FUN_ov63_0211db48
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov63_0211dc18
	ldr r1, [sp, #0xc]
	mov r0, r6
	bl  FUN_ov16_020f52f4
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_02121944
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov63_02121058
	mov r2, r5
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_021211b4
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_0211f5d8
	ldr r1, [r6]
	mov r0, r7
	mov r2, #1
	bl FUN_ov63_02121534
	add r1, r7, #0x2000
	strh r0, [r1, #0xf6]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov63_0211bb68

	arm_func_start FUN_ov63_0211bd08
FUN_ov63_0211bd08: ; 0x0211BD08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r6, r1
	ldr r1, [r6, #0x1c]
	mov r7, r0
	cmp r1, #3
	ldreq r0, [r6]
	mov r9, #0
	streq r0, [sp, #0x1c]
	movne r0, r9
	strne r0, [sp, #0x1c]
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_0211bae4
	mov r0, r7
	bl FUN_ov63_0211d73c
	mov r0, #3
	str r0, [r6, #0x1c]
	ldr r0, [r7, #0xd0]
	mov r10, #1
	str r0, [r6, #0x74]
	str r10, [r6, #0x78]
	strb r10, [r6, #0x7c]
	add r0, r7, #0x2000
	ldr r0, [r0, #0x70]
	mov r1, #8
	str r0, [r6, #4]
	ldr r0, _0211C2DC ; =0x0000014A
	str r1, [r6, #8]
	ldr r8, _0211C2E0 ; =0x021241CC
	str r0, [r6, #0xd0]
	ldrsh r0, [r8, #0x54]
	mov r3, #0x10
	mov r2, #0x20
	strh r0, [r6, #0x7e]
	ldrsh r4, [r8, #0x56]
	mov r5, #0xa
	mov r0, r7
	strh r3, [r6, #0xca]
	strh r2, [r6, #0xcc]
	strh r4, [r6, #0x80]
	str r9, [sp, #0x24]
	mov r1, r6
	add r2, sp, #0x24
	mov r3, r9
	str r5, [sp]
	bl FUN_ov63_0211d934
	movs r1, r0
	str r1, [sp, #0x20]
	beq _0211BE98
	ldr r0, [r6, #0xd0]
	ldr r4, _0211C2E4 ; =0x02099F38
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r2, [r6, #0x7e]
	ldrsh r3, [r6, #0x80]
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	bl  FUN_ov16_02114248
	ldr r2, [r6, #0x74]
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	mov r2, r9
	mov r3, r9
	bl  FUN_ov16_0211346c
	str r9, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_0211401c
	str r9, [sp]
	mov r2, r5
	mov r5, #2
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	mov r3, r5
	bl  FUN_ov16_0211401c
	ldrsh r8, [r8, #2]
	mov r9, #0
	b _0211BE90
_0211BE64:
	sub r0, r5, #2
	add r0, r8, r0, lsl #4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	mov r2, r5
	mov r3, r9
	bl  FUN_ov16_02113b78
	add r5, r5, #1
_0211BE90:
	cmp r5, #0xa
	ble _0211BE64
_0211BE98:
	mov r4, #1
	mov r10, #0
	add r2, sp, #0x24
	mov r0, r7
	mov r1, r6
	mov r3, r10
	str r4, [sp]
	bl FUN_ov63_0211d934
	str r0, [sp, #0x20]
	ldr r2, _0211C2E0 ; =0x021241CC
	str r4, [sp]
	ldrsh r3, [r2, #0x38]
	add r1, sp, #0x20
	mov r0, r7
	str r3, [sp, #4]
	ldrsh r5, [r2, #0x3a]
	mov r2, r4
	mov r3, r4
	str r5, [sp, #8]
	ldr r5, [r6, #0xd0]
	sub r5, r5, #1
	str r5, [sp, #0xc]
	ldr r5, [r7, #0xb8]
	str r5, [sp, #0x10]
	str r10, [sp, #0x14]
	str r10, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _0211C2E8 ; =0x02099EB4
	ldr r3, [sp, #0x20]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #5
	bl  FUN_ov16_0210fbe8
	movs r8, r0
	beq _0211BFB0
	mov r1, r10
	mov r2, r4
	mov r3, r10
	strb r4, [r8, #0x11]
	mov r5, #0x220
	add r0, r8, #0x3a
	strh r5, [r8, #0xc]
	bl  FUN_ov16_0210e6fc
	mov r1, r10
	mov r2, r10
	mov r3, r10
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	add r0, r8, #0x3e
	mov r1, r10
	mov r2, r4
	mov r3, r10
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r10
	mov r2, r4
	mov r3, r10
	bl  FUN_ov16_0210e720
	mov r2, r4
	add r0, r8, #0x42
	mov r1, r10
	mov r3, r10
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x42
	mov r1, r10
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_0210e720
_0211BFB0:
	mov r9, #1
	add r2, sp, #0x24
	mov r0, r7
	mov r1, r6
	mov r3, r10
	str r9, [sp]
	bl FUN_ov63_0211d934
	str r0, [sp, #0x20]
	ldr r0, _0211C2E0 ; =0x021241CC
	str r9, [sp]
	ldrsh r2, [r0, #0x14]
	mov r8, #2
	add r1, sp, #0x20
	str r2, [sp, #4]
	ldrsh r3, [r0, #0x16]
	mov r0, r7
	mov r2, r9
	str r3, [sp, #8]
	ldr r4, [r6, #0xd0]
	mov r3, r9
	sub r4, r4, #1
	str r4, [sp, #0xc]
	ldr r4, [r7, #0xb8]
	str r4, [sp, #0x10]
	str r8, [sp, #0x14]
	str r10, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _0211C2E8 ; =0x02099EB4
	mov r5, #3
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	mov r1, r5
	mov r2, #6
	bl  FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211C0CC
	mov r1, r10
	mov r2, r9
	mov r3, r10
	strb r9, [r4, #0x11]
	mov r11, #0x110
	add r0, r4, #0x3a
	strh r11, [r4, #0xc]
	bl  FUN_ov16_0210e6fc
	mov r1, r10
	mov r2, r8
	add r0, r4, #0x3a
	mov r3, r10
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r10
	mov r2, r9
	mov r3, r10
	bl  FUN_ov16_0210e6fc
	mov r2, r5
	add r0, r4, #0x3e
	mov r1, r10
	mov r3, r10
	bl  FUN_ov16_0210e720
	mov r2, r9
	add r0, r4, #0x42
	mov r1, r10
	mov r3, r10
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r2, r8
	mov r1, r10
	mov r3, r10
	bl  FUN_ov16_0210e720
_0211C0CC:
	mov r5, #0
	mov r4, #5
	add r2, sp, #0x24
	mov r0, r7
	mov r1, r6
	mov r3, r5
	str r4, [sp]
	mov r9, r5
	bl FUN_ov63_0211d934
	movs r1, r0
	str r1, [sp, #0x20]
	beq _0211C17C
	ldr r0, [r6, #0xd0]
	ldr r8, _0211C2E4 ; =0x02099F38
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r8]
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r2, [r7, #0xd4]
	ldr r0, [r8]
	ldr r1, [sp, #0x20]
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r4, _0211C2EC ; =0x02124268
	b _0211C174
_0211C134:
	add r0, r4, r5, lsl #2
	ldrsh r0, [r0, #2]
	mov r1, r5, lsl #2
	ldrsh r3, [r4, r1]
	str r0, [sp]
	ldr r0, [r8]
	ldr r1, [sp, #0x20]
	add r2, r5, #1
	bl  FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [sp, #0x20]
	mov r3, r5
	add r2, r5, #1
	bl  FUN_ov16_0211401c
	add r5, r5, #1
_0211C174:
	cmp r5, #4
	blt _0211C134
_0211C17C:
	ldr r0, _0211C2E0 ; =0x021241CC
	mov r5, #0
	ldrsh r9, [r0, #2]
	mov r4, #0xc0
	mov r10, #0x10
	mov r8, #0x14
	mov r11, #3
	b _0211C1E8
_0211C19C:
	add r3, r6, r5, lsl #2
	strh r4, [r3, #0xa2]
	strh r10, [r3, #0xa4]
	ldrsh r2, [r6, #0x7e]
	mov r0, r7
	mov r1, r6
	strh r2, [r3, #0x82]
	ldrsh lr, [r6, #0x80]
	ldrsh r12, [r3, #0xa4]
	add r2, sp, #0x24
	add lr, lr, r9
	mla r12, r5, r12, lr
	strh r12, [r3, #0x84]
	stmia sp, {r8, r11}
	mov r3, #0
	str r3, [sp, #8]
	mov r3, r5
	bl FUN_ov63_0211da3c
	add r5, r5, #1
_0211C1E8:
	ldr r0, [r6, #8]
	cmp r5, r0
	blt _0211C19C
	mov r4, #7
	mov r5, #0
	add r2, sp, #0x24
	mov r0, r7
	mov r1, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_ov63_0211db48
	ldr r1, [sp, #0x1c]
	mov r0, r6
	bl  FUN_ov16_020f52f4
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_02121944
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov63_02121058
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov63_021211b4
	add r0, r7, #0x2000
	ldr r2, [r0, #0xbc]
	sub r0, r4, #8
	cmp r2, r0
	beq _0211C27C
	mov r0, r7
	mov r1, r6
	mov r3, r5
	bl FUN_ov63_02121340
	sub r1, r4, #8
	add r0, r7, #0x2000
	str r1, [r0, #0xbc]
_0211C27C:
	mov r4, #4
	mov r0, r7
	mov r1, r6
	mov r3, r4
	mov r2, #0
	bl FUN_ov63_0212138c
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov63_02121058
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_0211f5d8
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_0211f66c
	ldr r1, [r6]
	mov r0, r7
	mov r2, #1
	bl FUN_ov63_02121534
	add r1, r7, #0x2000
	strh r0, [r1, #0xf6]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C2DC: .word 0x0000014A
_0211C2E0: .word 0x021241CC
_0211C2E4: .word unk_02099F38
_0211C2E8: .word unk_02099EB4
_0211C2EC: .word 0x02124268
	arm_func_end FUN_ov63_0211bd08

	arm_func_start FUN_ov63_0211c2f0
FUN_ov63_0211c2f0: ; 0x0211C2F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r9, r1
	ldr r1, [r9, #0x1c]
	mov r10, r0
	cmp r1, #2
	ldreq r7, [r9]
	mov r8, #0
	mov r0, r10
	mov r1, r9
	movne r7, r8
	bl FUN_ov63_0211bae4
	mov r0, r10
	bl FUN_ov63_0211d2ec
	ldr r4, _0211C5D4 ; =0x02099F38
	mov r5, #4
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	bl FUN_02059630
	mov r1, r0
	str r1, [r9, #0x64]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
	mov r11, #1
	mov r6, #2
	str r6, [r9, #0x1c]
	strb r11, [r9, #0x7c]
	ldr r1, [r10, #0x148]
	add r0, r11, #0x158
	str r1, [r9, #0x74]
	str r0, [r9, #0xd0]
	ldr r3, _0211C5D8 ; =0x021241CC
	str r6, [r9, #0x78]
	str r5, [r9, #4]
	str r5, [r9, #8]
	ldrsh r5, [r3, #0x2c]
	mov r0, r10
	mov r1, r9
	strh r5, [r9, #0x7e]
	ldrsh r5, [r3, #0x2e]
	add r2, sp, #0xc
	mov r3, r8
	strh r5, [r9, #0x80]
	str r8, [sp, #0xc]
	str r6, [sp]
	bl FUN_ov63_0211d934
	movs r5, r0
	beq _0211C448
	ldr r1, [r9, #0xd0]
	ldr r0, [r4]
	mov r2, r1, lsl #0x10
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r2, [r9, #0x7e]
	ldrsh r3, [r9, #0x80]
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_02114248
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r8
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r5
	ldr r2, [r9, #0x74]
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	mov r3, r11
	bl  FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_0211401c
_0211C448:
	ldr r0, _0211C5D8 ; =0x021241CC
	mov r8, #0
	add r4, r10, #0x2000
	ldrsh r6, [r0, #0x34]
	ldrsh r5, [r0, #0x36]
	mov r11, #0x58
	b _0211C520
_0211C464:
	add r1, r9, r8, lsl #2
	strh r11, [r1, #0xa2]
	mov r0, #0x10
	strh r0, [r1, #0xa4]
	strh r6, [r1, #0x82]
	ldrsh r0, [r1, #0xa4]
	cmp r8, #0
	mla r0, r8, r0, r5
	strh r0, [r1, #0x84]
	bne _0211C498
	bl  FUN_ov16_020f066c
	cmp r0, #0
	bne _0211C4EC
_0211C498:
	cmp r8, #0
	bne _0211C4AC
	ldrh r0, [r10, #0x1c]
	cmp r0, #0
	beq _0211C4EC
_0211C4AC:
	cmp r8, #0
	bne _0211C4C4
	ldr r0, _0211C5DC ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	bne _0211C4EC
_0211C4C4:
	cmp r8, #3
	bne _0211C4DC
	mov r0, r10
	bl FUN_ov63_0211fed0
	cmp r0, #0
	beq _0211C4EC
_0211C4DC:
	cmp r8, #2
	ldreq r0, [r4, #0xe8]
	cmpeq r0, #0
	bne _0211C4F4
_0211C4EC:
	mov r0, #1
	strb r0, [r9, #0x71]
_0211C4F4:
	mov r0, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0xc
	mov r3, r8
	bl FUN_ov63_0211da3c
	add r8, r8, #1
_0211C520:
	ldr r0, [r9, #8]
	cmp r8, r0
	blt _0211C464
	mov r8, #0
	add r2, sp, #0xc
	mov r0, r10
	mov r1, r9
	sub r3, r8, #1
	str r8, [sp]
	mov r4, r8
	bl FUN_ov63_0211db48
	add r6, r10, #0x2000
	ldrb r0, [r6, #0xa1]
	add r0, r10, r0, lsl #1
	add r0, r0, #0x2000
	ldrh r5, [r0, #0xa4]
	b _0211C58C
_0211C564:
	mov r0, r10
	mov r1, r8
	mov r2, r4
	bl FUN_ov63_0211d070
	cmp r0, #0
	beq _0211C588
	ldrh r0, [r0]
	cmp r0, r5
	moveq r7, r8
_0211C588:
	add r8, r8, #1
_0211C58C:
	ldr r0, [r6, #0x70]
	cmp r8, r0
	blt _0211C564
	mov r0, r9
	mov r1, r7
	bl  FUN_ov16_020f52f4
	mov r0, r10
	mov r1, r9
	bl FUN_ov63_02121944
	mov r0, r10
	mov r1, r9
	mov r2, #0
	bl FUN_ov63_02121058
	mov r0, r10
	mov r1, r9
	bl FUN_ov63_0211f5d8
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C5D4: .word unk_02099F38
_0211C5D8: .word 0x021241CC
_0211C5DC: .word unk_0209BA20
	arm_func_end FUN_ov63_0211c2f0

	arm_func_start FUN_ov63_0211c5e0
FUN_ov63_0211c5e0: ; 0x0211C5E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r6, r1
	ldr r1, [r6, #0x1c]
	mov r7, r0
	cmp r1, #4
	ldreq r0, [r6]
	mov r1, r6
	streq r0, [sp, #0xc]
	movne r0, #0
	strne r0, [sp, #0xc]
	mov r0, r7
	bl FUN_ov63_0211bae4
	mov r0, #4
	str r0, [r6, #0x1c]
	ldr r4, [r7, #0x110]
	mov r3, #2
	mov r5, #0
	add r2, r3, #0x148
	mov r1, #0x20
	mov r0, #0x10
	strh r1, [r6, #0x7e]
	strh r0, [r6, #0x80]
	add r11, sp, #0x10
	str r2, [r6, #0xd0]
	str r4, [r6, #0x74]
	str r5, [r6, #0x78]
	strb r5, [r6, #0x7c]
	str r3, [r6, #4]
	str r3, [r6, #8]
	mov r0, r7
	mov r1, r6
	mov r2, r11
	str r5, [sp, #0x10]
	bl FUN_ov63_0211d9b8
	ldrsh r2, [r6, #0x80]
	mov r0, r7
	mov r1, r6
	add r2, r2, #0x10
	str r2, [sp]
	ldrsh r3, [r6, #0x7e]
	mov r2, r11
	add r3, r3, #6
	bl FUN_ov63_0211e184
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0211C708
	mov r4, #0xaa
	mov r10, #0x10
	mov r9, #0x14
	mov r8, r5
_0211C6AC:
	add r3, r6, r5, lsl #2
	strh r4, [r3, #0xa2]
	strh r10, [r3, #0xa4]
	ldrsh r2, [r6, #0x7e]
	mov r0, r7
	mov r1, r6
	add r2, r2, #7
	strh r2, [r3, #0x82]
	ldrsh lr, [r6, #0x80]
	ldrsh r12, [r3, #0xa4]
	mov r2, r11
	add lr, lr, #0x58
	mla r12, r5, r12, lr
	strh r12, [r3, #0x84]
	str r9, [sp]
	str r8, [sp, #4]
	mov r3, r5
	str r8, [sp, #8]
	bl FUN_ov63_0211da3c
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0211C6AC
_0211C708:
	mov r5, #0
	add r4, sp, #0x10
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	str r5, [sp]
	bl FUN_ov63_0211db48
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov63_0211dc18
	ldr r1, [sp, #0xc]
	mov r0, r6
	bl  FUN_ov16_020f52f4
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_02121944
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov63_02121058
	mov r2, r5
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_021211b4
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_0211f5d8
	ldr r1, [r6]
	mov r0, r7
	mov r2, #1
	bl FUN_ov63_02121534
	add r1, r7, #0x2000
	strh r0, [r1, #0xf6]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov63_0211c5e0

	arm_func_start FUN_ov63_0211c79c
FUN_ov63_0211c79c: ; 0x0211C79C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r2, _0211CBA0 ; =0x02124BA0
	mov r10, r0
	ldr r3, [r2, #4]
	mov r9, r1
	tst r3, #1
	mov r4, #0
	bne _0211C7F0
	ldr r1, _0211CBA4 ; =0x021241CC
	ldr r0, _0211CBA8 ; =0x02124480
	ldrsh r5, [r1, #0x50]
	orr r3, r3, #1
	strh r5, [r0, #0x28]
	ldrsh r5, [r1, #0x52]
	strh r5, [r0, #0x2a]
	ldrsh r5, [r1, #0x94]
	strh r5, [r0, #0x2c]
	ldrsh r1, [r1, #0x96]
	strh r1, [r0, #0x2e]
	str r3, [r2, #4]
_0211C7F0:
	ldr r2, _0211CBA0 ; =0x02124BA0
	ldr r3, [r2]
	tst r3, #1
	bne _0211C830
	ldr r1, _0211CBA4 ; =0x021241CC
	ldr r0, _0211CBA8 ; =0x02124480
	ldrsh r5, [r1, #0x18]
	orr r3, r3, #1
	strh r5, [r0, #0x18]
	ldrsh r5, [r1, #0x1a]
	strh r5, [r0, #0x1a]
	ldrsh r5, [r1, #8]
	strh r5, [r0, #0x1c]
	ldrsh r1, [r1, #0xa]
	strh r1, [r0, #0x1e]
	str r3, [r2]
_0211C830:
	ldr r2, _0211CBA0 ; =0x02124BA0
	ldr r3, [r2, #8]
	tst r3, #1
	bne _0211C870
	ldr r1, _0211CBA4 ; =0x021241CC
	ldr r0, _0211CBA8 ; =0x02124480
	ldrsh r5, [r1, #0x98]
	orr r3, r3, #1
	strh r5, [r0, #0x20]
	ldrsh r5, [r1, #0x9a]
	strh r5, [r0, #0x22]
	ldrsh r5, [r1, #4]
	strh r5, [r0, #0x24]
	ldrsh r1, [r1, #6]
	strh r1, [r0, #0x26]
	str r3, [r2, #8]
_0211C870:
	mov r0, r10
	bl FUN_ov63_0211d0a0
	ldr r0, [r9, #0x1c]
	mov r1, r9
	cmp r0, #5
	ldreq r0, [r9]
	streq r0, [sp, #0xc]
	movne r0, #0
	strne r0, [sp, #0xc]
	mov r0, r10
	bl FUN_ov63_0211bae4
	mov r0, #5
	str r0, [r9, #0x1c]
	add r0, r10, #0x2000
	ldrb r0, [r0, #0xa0]
	mov r5, #3
	mov r11, #2
	cmp r0, #1
	ldr r7, _0211CBAC ; =0x02099F38
	ldrls r8, [r10, #0x124]
	movls r6, #1
	ldr r0, [r7]
	ldrhi r8, [r10, #0x128]
	mov r1, r5
	mov r2, r11
	movhi r6, #2
	bl FUN_02059630
	mov r1, r0
	str r1, [r9, #0x64]
	ldr r0, [r7]
	mov r2, r4
	mov r3, r4
	bl FUN_02059038
	rsb r0, r5, #0x15c
	str r8, [r9, #0x74]
	str r0, [r9, #0xd0]
	ldr r7, _0211CBA4 ; =0x021241CC
	str r5, [r9, #0x78]
	str r6, [r9, #4]
	str r6, [r9, #8]
	ldrsh r2, [r7, #0x48]
	add r8, sp, #0x10
	mov r0, r10
	strh r2, [r9, #0x7e]
	ldrsh r3, [r7, #0x4a]
	mov r1, r9
	mov r2, r8
	strh r3, [r9, #0x80]
	str r4, [sp, #0x10]
	bl FUN_ov63_0211d9b8
	ldrsh r3, [r7, #0x1e]
	mov r2, r8
	mov r0, r10
	str r3, [sp]
	ldrsh r3, [r7, #0x1c]
	mov r1, r9
	bl FUN_ov63_0211e184
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109fc
	cmp r0, #0
	bne _0211CADC
	ldr r1, _0211CBB0 ; =0x02124498
	sub r0, r6, #1
	add r2, r1, r0, lsl #2
	mov r3, r0, lsl #2
	add r0, r10, #0x2000
	ldrsh r1, [r1, r3]
	ldrsh r2, [r2, #2]
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021108c0
	sub r0, r6, #1
	ldr r1, _0211CBB4 ; =0x021244A0
	mov r3, r0, lsl #2
	add r2, r1, r0, lsl #2
	add r0, r10, #0x2000
	ldrsh r1, [r1, r3]
	ldrsh r2, [r2, #2]
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021108cc
	mov r7, #1
	str r7, [sp]
	sub r6, r7, #2
	str r6, [sp, #4]
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	ldr r3, [r10, #0x124]
	mov r1, r7
	mov r2, r4
	bl  FUN_ov16_021107a0
	stmia sp, {r4, r6}
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	ldr r3, [r10, #0x118]
	mov r1, r7
	mov r2, r7
	bl  FUN_ov16_021107a0
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	ldr r3, [r10, #0x118]
	mov r1, r7
	mov r2, r11
	bl  FUN_ov16_021107a0
	str r11, [sp]
	str r6, [sp, #4]
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	ldr r3, [r10, #0x124]
	mov r1, r11
	mov r2, r4
	bl  FUN_ov16_021107a0
	stmia sp, {r4, r6}
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	ldr r3, [r10, #0x11c]
	mov r1, r11
	mov r2, r7
	bl  FUN_ov16_021107a0
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	ldr r3, [r10, #0x11c]
	mov r1, r11
	mov r2, r11
	bl  FUN_ov16_021107a0
	add r0, r10, #0x2000
	ldr r1, [r9, #0xd0]
	ldr r0, [r0, #0x78]
	sub r1, r1, #1
	bl  FUN_ov16_02110864
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	mov r1, r5
	mov r2, #0x19
	mov r3, #0x1a
	bl  FUN_ov16_02110830
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	mov r1, #0x1e
	bl  FUN_ov16_0211085c
	str r7, [sp]
	mov r1, r11
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_02110938
	add r0, r10, #0x2000
	ldr r0, [r0, #0x78]
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_02110a04
_0211CADC:
	mov r11, #0
	mov r8, r11
	mov r7, #0x5a
	mov r6, #0x10
	ldr r5, _0211CBB8 ; =0x021244A8
	mov r4, #0x14
	b _0211CB3C
_0211CAF8:
	add r3, r9, r8, lsl #2
	strh r7, [r3, #0xa2]
	strh r6, [r3, #0xa4]
	mov r0, r8, lsl #2
	ldrsh r2, [r5, r0]
	add r1, r5, r8, lsl #2
	mov r0, r10
	strh r2, [r3, #0x82]
	ldrsh r12, [r1, #2]
	mov r1, r9
	add r2, sp, #0x10
	strh r12, [r3, #0x84]
	stmia sp, {r4, r11}
	mov r3, r8
	str r11, [sp, #8]
	bl FUN_ov63_0211da3c
	add r8, r8, #1
_0211CB3C:
	ldr r0, [r9, #8]
	cmp r8, r0
	blt _0211CAF8
	mov r4, #0
	add r2, sp, #0x10
	mov r0, r10
	mov r1, r9
	sub r3, r4, #1
	str r4, [sp]
	bl FUN_ov63_0211db48
	ldr r1, [sp, #0xc]
	mov r0, r9
	bl  FUN_ov16_020f52f4
	mov r0, r10
	mov r1, r9
	bl FUN_ov63_02121944
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov63_02121058
	mov r0, r10
	mov r1, r9
	bl FUN_ov63_0211f5d8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CBA0: .word ov63_02124BA0
_0211CBA4: .word 0x021241CC
_0211CBA8: .word ov63_02124480
_0211CBAC: .word unk_02099F38
_0211CBB0: .word ov63_02124498
_0211CBB4: .word ov63_021244A0
_0211CBB8: .word ov63_021244A8
	arm_func_end FUN_ov63_0211c79c

	arm_func_start FUN_ov63_0211cbbc
FUN_ov63_0211cbbc: ; 0x0211CBBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r9, r1
	mov r10, r0
	mov r0, r10
	mov r1, r9
	mov r7, #0
	bl FUN_ov63_0211bae4
	mov r0, r10
	bl FUN_ov63_0211d404
	ldr r4, _0211D064 ; =0x02099F38
	mov r5, #4
	ldr r0, [r4]
	mov r1, #3
	mov r2, r5
	bl FUN_02059630
	mov r1, r0
	str r1, [r9, #0x64]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
	mov r0, #6
	mov r6, #1
	str r0, [r9, #0x1c]
	strb r6, [r9, #0x7c]
	ldr r2, [r10, #0x12c]
	add r1, r0, #0x144
	str r5, [r9, #0x78]
	add r0, r10, #0x2000
	str r2, [r9, #0x74]
	ldr r2, [r0, #0x70]
	mov r0, #8
	str r0, [r9, #8]
	mov r0, #0x90
	strh r0, [r9, #0x7e]
	mov r0, #0x10
	strh r0, [r9, #0xca]
	mov r0, #0x20
	str r2, [r9, #4]
	str r1, [r9, #0xd0]
	strh r0, [r9, #0xcc]
	strh r7, [r9, #0x80]
	str r7, [sp, #0x1c]
	mov r5, #2
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x1c
	mov r3, r7
	str r5, [sp]
	bl FUN_ov63_0211d934
	movs r1, r0
	str r1, [sp, #0x20]
	beq _0211CD1C
	ldr r2, [r9, #0xd0]
	ldr r0, [r4]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r2, [r9, #0x7e]
	ldrsh r3, [r9, #0x80]
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	bl  FUN_ov16_02114248
	mov r0, #0x88
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	mov r2, r5
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r2, [r9, #0x74]
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_0211401c
_0211CD1C:
	mov r5, #1
	mov r8, #0
	add r2, sp, #0x1c
	mov r0, r10
	mov r1, r9
	mov r3, r8
	str r5, [sp]
	bl FUN_ov63_0211d934
	str r0, [sp, #0x20]
	ldr r0, _0211D068 ; =0x021241CC
	str r5, [sp]
	ldrsh r2, [r0, #0x10]
	mov r4, #3
	add r1, sp, #0x20
	str r2, [sp, #4]
	ldrsh r3, [r0, #0x12]
	mov r0, r10
	mov r2, r5
	str r3, [sp, #8]
	ldr r6, [r9, #0xd0]
	mov r3, r5
	sub r6, r6, #1
	str r6, [sp, #0xc]
	ldr r6, [r10, #0x12c]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	str r8, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _0211D06C ; =0x02099EB4
	ldr r3, [sp, #0x20]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211CE0C
	strb r5, [r4, #0x11]
	mov r1, r5
	mov r2, r5
	mov r3, r8
	strh r5, [r4, #0xc]
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r1, [r10, #0x120]
	mov r2, r8
	mov r3, r8
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	add r0, r4, #0x3e
	mov r2, r5
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r5
	ldr r1, [r10, #0x120]
	mov r3, r8
	bl  FUN_ov16_0210e720
_0211CE0C:
	ldr r1, [sp, #0x20]
	add r0, r10, #0x2000
	str r1, [r0, #0xb0]
	mov r11, #1
	add r2, sp, #0x1c
	mov r0, r10
	mov r1, r9
	mov r3, r8
	str r11, [sp]
	bl FUN_ov63_0211d934
	str r0, [sp, #0x20]
	ldr r0, _0211D068 ; =0x021241CC
	str r11, [sp]
	ldrsh r2, [r0, #0x78]
	mov r7, #4
	add r1, sp, #0x20
	str r2, [sp, #4]
	ldrsh r3, [r0, #0x7a]
	mov r0, r10
	mov r2, r11
	str r3, [sp, #8]
	ldr r4, [r9, #0xd0]
	mov r3, r11
	sub r4, r4, #1
	str r4, [sp, #0xc]
	ldr r4, [r10, #0x12c]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	str r8, [sp, #0x18]
	bl FUN_ov63_0211a9fc
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _0211D06C ; =0x02099EB4
	mov r6, #3
	mov r5, #2
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211CF0C
	strb r11, [r4, #0x11]
	mov r1, r11
	mov r2, r11
	mov r3, r8
	strh r5, [r4, #0xc]
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r1, [r10, #0x120]
	mov r2, r6
	mov r3, r8
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r11
	mov r2, r11
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r7
	mov r3, r8
	ldr r1, [r10, #0x120]
	bl  FUN_ov16_0210e720
_0211CF0C:
	mov r11, #0
	mov r8, r11
	mov r7, #0x48
	mov r6, #0x10
	mov r5, #0x98
	mov r4, #0x14
	b _0211CF68
_0211CF28:
	add r2, r9, r8, lsl #2
	strh r7, [r2, #0xa2]
	strh r6, [r2, #0xa4]
	strh r5, [r2, #0x82]
	ldrsh r3, [r2, #0xa4]
	mov r0, r10
	mov r1, r9
	mul r3, r8, r3
	add r3, r3, #8
	strh r3, [r2, #0x84]
	stmia sp, {r4, r11}
	add r2, sp, #0x1c
	mov r3, r8
	str r11, [sp, #8]
	bl FUN_ov63_0211da3c
	add r8, r8, #1
_0211CF68:
	ldr r0, [r9, #8]
	cmp r8, r0
	blt _0211CF28
	mov r8, #0
	add r5, sp, #0x1c
	mov r0, r10
	mov r1, r9
	mov r2, r5
	str r8, [sp]
	sub r3, r8, #1
	mov r4, r8
	bl FUN_ov63_0211db48
	mov r3, #0x50
	mov r7, #0x28
	ldrsh r1, [r9, #0xa4]
	ldr r0, [r9, #8]
	mov r2, r5
	mul r0, r1, r0
	sub r6, r0, #0x60
	mov r0, r10
	mov r1, r9
	strh r3, [r9, #0xc2]
	strh r7, [r9, #0xc4]
	strh r8, [r9, #0xc6]
	strh r6, [r9, #0xc8]
	bl FUN_ov63_0211dc18
	add r6, r10, #0x2000
	ldrb r0, [r6, #0xa1]
	add r0, r10, r0, lsl #1
	add r0, r0, #0x2000
	ldrh r5, [r0, #0xa4]
	b _0211D000
_0211CFE8:
	mov r0, r10
	mov r1, r8
	mov r2, r4
	bl FUN_ov63_0211d070
	cmp r0, #0
	add r8, r8, #1
_0211D000:
	ldr r0, [r6, #0x70]
	cmp r8, r0
	blt _0211CFE8
	mov r0, r9
	mov r1, r4
	bl  FUN_ov16_020f52f4
	mov r0, r10
	mov r1, r9
	bl FUN_ov63_02121944
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov63_02121058
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov63_021211b4
	mov r0, r10
	mov r1, r9
	bl FUN_ov63_0211f5d8
	mov r0, r10
	mov r1, r9
	bl FUN_ov63_02122484
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D064: .word unk_02099F38
_0211D068: .word 0x021241CC
_0211D06C: .word unk_02099EB4
	arm_func_end FUN_ov63_0211cbbc

	arm_func_start FUN_ov63_0211d070
FUN_ov63_0211d070: ; 0x0211D070
	cmp r1, #0x400
	movhs r0, #0
	bxhs lr
	add r3, r0, #0x2000
	ldr r3, [r3, #0x70]
	cmp r1, r3
	cmpge r2, #0
	moveq r0, #0
	addne r2, r0, #0x870
	movne r0, #6
	mlane r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov63_0211d070

	arm_func_start FUN_ov63_0211d0a0
FUN_ov63_0211d0a0: ; 0x0211D0A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r11, #0
	mov r1, r11
	add r0, r5, #0x870
	mov r2, #0x1800
	bl MI_CpuFill8
	ldrh r0, [r5, #0x1c]
	mov r1, r11
	add r2, r5, #0x2000
	mov r3, #2
	str r3, [r2, #0x70]
	bl  FUN_ov16_020efa9c
	str r0, [sp, #8]
_0211D0DC:
	mov r4, #1
	mov r0, r5
	mov r1, r11
	mov r2, r4
	bl FUN_ov63_0211d070
	movs r7, r0
	beq _0211D2D4
	add r0, r5, r11, lsl #1
	add r0, r0, #0x2000
	ldrh r0, [r0, #0xa4]
	mov r1, #0
	strh r0, [r7]
	mov r0, r1
	strb r0, [r7, #2]
	strb r4, [r7, #3]
	ldrh r0, [r7]
	bl  FUN_ov16_020efa9c
	ldr r4, _0211D2E8 ; =0x0209BA20
	mov r9, r0
	mov r0, r4
	bl FUN_02073f08
	str r0, [sp]
	add r0, r11, #1
	str r0, [sp, #4]
	add r2, r5, #0x2000
	ldrb r2, [r2, #0xa2]
	ldr r1, [sp, #8]
	mov r0, r4
	mov r3, r9
	bl FUN_0204a74c
	strb r0, [r7, #4]
	add r0, r5, #0x2000
	ldrb r0, [r0, #0xa2]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_0204a2c4
	ldrb r1, [r7, #4]
	cmp r1, #3
	bne _0211D198
	ldrb r0, [r0, #0xb]
	cmp r0, #0x51
	movne r0, #0
	strneb r0, [r7, #4]
_0211D198:
	cmp r9, #0
	beq _0211D2D4
	mov r4, #0
	mov r0, r9
	mov r1, r4
	bl FUN_0206d824
	cmp r0, #0
	bne _0211D228
	add r6, r5, #0x2000
	ldrh r0, [r6, #0xf4]
	mov r8, r4
	cmp r0, #0
	ble _0211D20C
_0211D1CC:
	add r2, r5, r8, lsl #1
	add r0, r2, #0x2000
	ldrh r1, [r0, #0xec]
	add r0, r2, #0xec
	add r10, r0, #0x2000
	cmp r1, #0
	beq _0211D1FC
	mov r0, r9
	bl FUN_0206cbf8
	ldrh r1, [r10]
	cmp r1, r0
	moveq r4, #1
_0211D1FC:
	ldrh r0, [r6, #0xf4]
	add r8, r8, #1
	cmp r8, r0
	blt _0211D1CC
_0211D20C:
	cmp r4, #0
	bne _0211D2D4
	mov r0, r9
	bl FUN_0206d688
	cmp r0, #0
	bne _0211D2D4
	b _0211D2B8
_0211D228:
	cmp r0, #0xc
	blt _0211D2D4
	cmp r0, #0x10
	bgt _0211D2D4
	add r6, r5, #0x2000
	ldrh r0, [r6, #0xf4]
	mov r10, r4
	cmp r0, #0
	ble _0211D28C
_0211D24C:
	add r2, r5, r10, lsl #1
	add r0, r2, #0x2000
	ldrh r1, [r0, #0xec]
	add r0, r2, #0xec
	add r8, r0, #0x2000
	cmp r1, #0
	beq _0211D27C
	mov r0, r9
	bl FUN_0206cbf8
	ldrh r1, [r8]
	cmp r1, r0
	moveq r4, #1
_0211D27C:
	ldrh r0, [r6, #0xf4]
	add r10, r10, #1
	cmp r10, r0
	blt _0211D24C
_0211D28C:
	ldr r6, _0211D2E8 ; =0x0209BA20
	mov r0, r6
	bl FUN_02073f08
	cmp r0, #0
	beq _0211D2B0
	mov r0, r6
	bl FUN_020731a4
	cmp r0, #0
	moveq r4, #0
_0211D2B0:
	cmp r4, #0
	bne _0211D2D4
_0211D2B8:
	mov r2, #0
	strb r2, [r7, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r3, r2
	strh r2, [r7]
	bl FUN_0206d150
_0211D2D4:
	add r11, r11, #1
	cmp r11, #2
	blt _0211D0DC
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D2E8: .word unk_0209BA20
	arm_func_end FUN_ov63_0211d0a0

	arm_func_start FUN_ov63_0211d2ec
FUN_ov63_0211d2ec: ; 0x0211D2EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r1, _0211D3F8 ; =0x0212427C
	add r0, r8, #0x2000
	mov r2, #4
	str r2, [r0, #0x70]
	add r4, sp, #4
	ldmia r1, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	bl  FUN_ov16_020f066c
	cmp r0, #0
	movne r0, #0x29
	moveq r0, #0x28
	str r0, [sp, #4]
	add r0, r8, #0x2000
	ldr r0, [r0, #0xe8]
	mov r1, #0x2a
	cmp r0, #0
	moveq r1, #0x29
	mov r0, r8
	str r1, [sp, #0xc]
	bl FUN_ov63_0211fed0
	cmp r0, #0
	moveq r0, #0x29
	movne r0, #0x2a
	str r0, [sp, #0x10]
	ldrh r0, [r8, #0x1c]
	cmp r0, #0
	beq _0211D374
	ldr r0, _0211D3FC ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	beq _0211D37C
_0211D374:
	mov r0, #0x29
	str r0, [sp, #4]
_0211D37C:
	ldr r0, _0211D400 ; =0x02124278
	add r6, sp, #0
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	strb r3, [sp]
	strb r2, [sp, #1]
	strb r1, [sp, #2]
	strb r0, [sp, #3]
	mov r7, #0
	add r4, sp, #4
	mov r5, #1
_0211D3B0:
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov63_0211d070
	cmp r0, #0
	beq _0211D3E4
	strh r5, [r0]
	ldr r2, [r4, r7, lsl #2]
	ldrb r1, [r6, r7]
	add r2, r8, r2, lsl #2
	ldr r2, [r2, #0xa8]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
_0211D3E4:
	add r7, r7, #1
	cmp r7, #4
	blt _0211D3B0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211D3F8: .word 0x0212427C
_0211D3FC: .word unk_0209BA20
_0211D400: .word 0x02124278
	arm_func_end FUN_ov63_0211d2ec

	arm_func_start FUN_ov63_0211d404
FUN_ov63_0211d404: ; 0x0211D404
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xd8
	mov r10, r0
	add r2, sp, #0xc
	mov r1, #0x19
	mov r0, #0
_0211D41C:
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	add r2, r2, #8
	subs r1, r1, #1
	bne _0211D41C
	strh r0, [r2]
	mov r4, #0
	ldrh r0, [r10, #0x1c]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	add r1, r10, #0x2000
	ldrb r1, [r1, #0xa2]
	bl FUN_0206cdf8
	ldr r1, _0211D734 ; =0x0209A454
	mov r0, r0, lsl #0x10
	ldrb r6, [r1, #0x28]
	mov r0, r0, lsr #0x10
	ldr r5, _0211D738 ; =0x0209BA20
	str r0, [sp, #8]
	mov r0, r5
	mov r1, r6
	bl FUN_0204c3e0
	bl  FUN_ov16_020f06bc
	cmp r0, #1
	bne _0211D4D8
	mov r7, r4
	add r5, sp, #0xc
	mov r6, #1
_0211D494:
	mov r0, r10
	mov r1, r4
	mov r2, r6
	bl FUN_ov63_0211ffb8
	movs r4, r0
	ldrneh r0, [sp, #0xe]
	cmpne r4, r0
	beq _0211D4C8
	add r0, r5, r7, lsl #1
	add r7, r7, #1
	strh r4, [r0, #2]
	cmp r7, #0x10
	blt _0211D494
_0211D4C8:
	add r11, r7, #1
	cmp r11, #0x10
	movgt r11, #0x10
	b _0211D4FC
_0211D4D8:
	str r4, [sp]
	mov r4, #0x80
	add r2, sp, #0xe
	mov r0, r5
	mov r1, r6
	mov r3, #0x64
	str r4, [sp, #4]
	bl FUN_0204b540
	add r11, r0, #1
_0211D4FC:
	mov r9, #0
	cmp r11, #8
	movlt r11, #8
	mov r1, r9
	add r0, r10, #0x870
	mov r2, #0x1800
	bl MI_CpuFill8
	add r4, r10, #0x2000
	cmp r11, #0
	addle sp, sp, #0xd8
	str r9, [r4, #0x70]
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x70
	add r5, r0, #0x2000
	add r7, sp, #0xc
_0211D538:
	ldr r1, [r4, #0x70]
	mov r0, r10
	mov r2, #1
	bl FUN_ov63_0211d070
	movs r8, r0
	beq _0211D720
	mov r0, r9, lsl #1
	ldrh r2, [r7, r0]
	ldr r0, _0211D738 ; =0x0209BA20
	ldr r1, [sp, #8]
	strh r2, [r8]
	bl FUN_0204a2c4
	mov r6, r0
	mov r0, r9, lsl #1
	ldrh r0, [r7, r0]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	ldrb r2, [r4, #0xa1]
	cmp r2, #0
	bne _0211D64C
	mov r1, r9, lsl #1
	ldrh r3, [r7, r1]
	cmp r3, #0
	bne _0211D5D8
	ldrb r6, [r6, #0xb]
	cmp r6, #0x51
	beq _0211D5D8
	ldr r0, [r10, #0x12c]
	cmp r9, #0
	strb r0, [r8, #2]
	mov r0, #1
	strb r0, [r8, #3]
	ble _0211D648
	ldrh r0, [r7, r1]
	cmp r0, #0
	ldreq r0, [r10, #0x134]
	streqb r0, [r8, #2]
	moveq r0, #0
	streqb r0, [r8, #3]
	b _0211D648
_0211D5D8:
	cmp r0, #0
	ldrneh r1, [r10, #0x1c]
	cmpne r1, r3
	beq _0211D628
	cmp r2, #0
	bne _0211D5FC
	ldrh r0, [r4, #0xa6]
	cmp r0, r3
	beq _0211D628
_0211D5FC:
	cmp r2, #1
	ldreqh r0, [r4, #0xa4]
	cmpeq r0, r3
	beq _0211D628
	mov r0, #1
	str r0, [sp]
	ldrb r2, [r4, #0xa2]
	mov r0, r10
	bl FUN_ov63_0211fc6c
	cmp r0, #0
	bne _0211D638
_0211D628:
	ldr r0, [r10, #0x134]
	strb r0, [r8, #2]
	mov r0, #0
	b _0211D644
_0211D638:
	ldr r0, [r10, #0x12c]
	strb r0, [r8, #2]
	mov r0, #1
_0211D644:
	strb r0, [r8, #3]
_0211D648:
	b _0211D714
_0211D64C:
	cmp r2, #1
	bne _0211D720
	mov r1, r9, lsl #1
	ldrh r3, [r7, r1]
	cmp r3, #0
	bne _0211D6A4
	ldrb r6, [r6, #0xf]
	cmp r6, #0x51
	beq _0211D6A4
	ldr r0, [r10, #0x12c]
	cmp r9, #0
	strb r0, [r8, #2]
	mov r0, #1
	strb r0, [r8, #3]
	ble _0211D714
	ldrh r0, [r7, r1]
	cmp r0, #0
	ldreq r0, [r10, #0x134]
	streqb r0, [r8, #2]
	moveq r0, #0
	streqb r0, [r8, #3]
	b _0211D714
_0211D6A4:
	cmp r0, #0
	ldrneh r1, [r10, #0x1c]
	cmpne r1, r3
	beq _0211D6F4
	cmp r2, #0
	bne _0211D6C8
	ldrh r0, [r4, #0xa6]
	cmp r0, r3
	beq _0211D6F4
_0211D6C8:
	cmp r2, #1
	ldreqh r0, [r4, #0xa4]
	cmpeq r0, r3
	beq _0211D6F4
	mov r0, #2
	str r0, [sp]
	ldrb r2, [r4, #0xa2]
	mov r0, r10
	bl FUN_ov63_0211fc6c
	cmp r0, #0
	bne _0211D704
_0211D6F4:
	ldr r0, [r10, #0x134]
	strb r0, [r8, #2]
	mov r0, #0
	b _0211D710
_0211D704:
	ldr r0, [r10, #0x12c]
	strb r0, [r8, #2]
	mov r0, #1
_0211D710:
	strb r0, [r8, #3]
_0211D714:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0211D720:
	add r9, r9, #1
	cmp r9, r11
	blt _0211D538
	add sp, sp, #0xd8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D734: .word unk_0209A454
_0211D738: .word unk_0209BA20
	arm_func_end FUN_ov63_0211d404

	arm_func_start FUN_ov63_0211d73c
FUN_ov63_0211d73c: ; 0x0211D73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1000
	add r6, sp, #0
	mov r7, #0
	mov r10, r0
	mov r0, r7
	mov r1, r6
	mov r2, #0x800
	mov r4, r7
	bl MIi_CpuClear16
	add r5, sp, #0x800
	ldr r0, _0211D930 ; =0x0209BA20
	mov r2, r5
	mov r1, #0xf
	mov r3, #0x400
	bl  FUN_ov16_020ee0f8
	mov r8, r0
	cmp r8, #0
	ble _0211D7D8
	add r1, r10, #0x2000
_0211D78C:
	ldrh r0, [r1, #0xb8]
	mov r3, r4
	cmp r0, #0
	ble _0211D7CC
	mov r2, r7, lsl #1
	ldrh r11, [r5, r2]
	ldr r9, [r1, #0xb4]
_0211D7A8:
	mov r2, r3, lsl #1
	ldrh r2, [r9, r2]
	cmp r11, r2
	moveq r0, r7, lsl #1
	streqh r3, [r6, r0]
	beq _0211D7CC
	add r3, r3, #1
	cmp r3, r0
	blt _0211D7A8
_0211D7CC:
	add r7, r7, #1
	cmp r7, r8
	blt _0211D78C
_0211D7D8:
	sub r9, r8, #1
	cmp r9, #0
	mov r11, #0
	ble _0211D844
	add r2, sp, #0x800
	add r6, sp, #0
_0211D7F0:
	add r12, r11, #1
	cmp r12, r8
	bge _0211D838
	mov r4, r11, lsl #1
_0211D800:
	mov r7, r12, lsl #1
	ldrh r5, [r6, r7]
	ldrh r3, [r6, r4]
	cmp r3, r5
	bls _0211D82C
	ldrh r1, [r2, r7]
	ldrh r0, [r2, r4]
	strh r3, [r6, r7]
	strh r5, [r6, r4]
	strh r0, [r2, r7]
	strh r1, [r2, r4]
_0211D82C:
	add r12, r12, #1
	cmp r12, r8
	blt _0211D800
_0211D838:
	add r11, r11, #1
	cmp r11, r9
	blt _0211D7F0
_0211D844:
	mov r9, #0
	mov r1, r9
	add r0, r10, #0x870
	mov r2, #0x1800
	bl memset
	add r4, r10, #0x2000
	str r9, [r4, #0x70]
	cmp r8, #0
	ble _0211D8E4
	add r0, r10, #0x70
	ldr r11, _0211D930 ; =0x0209BA20
	add r5, r0, #0x2000
	add r6, sp, #0x800
_0211D878:
	ldr r1, [r4, #0x70]
	mov r0, r10
	mov r2, #1
	bl FUN_ov63_0211d070
	movs r7, r0
	beq _0211D8D8
	mov r0, r9, lsl #1
	ldrh r1, [r6, r0]
	mov r0, r11
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _0211D8D8
	bl  FUN_ov16_020eef40
	strh r0, [r7]
	mov r2, r9, lsl #1
	ldrh r1, [r6, r2]
	mov r0, r11
	strh r1, [r7, #4]
	ldrh r1, [r6, r2]
	bl  FUN_ov16_020edec4
	strh r0, [r7, #2]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0211D8D8:
	add r9, r9, #1
	cmp r9, r8
	blt _0211D878
_0211D8E4:
	add r0, r10, #0x2000
	ldr r3, [r0, #0x70]
	add r0, r10, #0x2000
	cmp r3, #1
	movle r3, #1
	mov r2, r3, lsr #0x1f
	rsb r1, r2, r3, lsl #29
	str r3, [r0, #0x70]
	adds r0, r2, r1, ror #29
	movne r1, #1
	mov r0, r3, asr #2
	moveq r1, #0
	add r0, r3, r0, lsr #29
	add r1, r1, r0, asr #3
	add r0, r10, #0x2000
	mov r1, r1, lsl #3
	str r1, [r0, #0x70]
	add sp, sp, #0x1000
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D930: .word unk_0209BA20
	arm_func_end FUN_ov63_0211d73c

	arm_func_start FUN_ov63_0211d934
FUN_ov63_0211d934: ; 0x0211D934
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x11
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #4
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D9B4 ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x69]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x68]
	ldr r1, [r5]
	add r2, r6, #0x69
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D9B4: .word unk_02099F38
	arm_func_end FUN_ov63_0211d934

	arm_func_start FUN_ov63_0211d9b8
FUN_ov63_0211d9b8: ; 0x0211D9B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, #1
	mov r3, r6
	mov r7, r1
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xd0]
	ldr r4, _0211DA38 ; =0x02099F38
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r2, [r7, #0x7e]
	ldrsh r3, [r7, #0x80]
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_02114248
	ldr r2, [r7, #0x74]
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
_0211DA38: .word unk_02099F38
	arm_func_end FUN_ov63_0211d9b8

	arm_func_start FUN_ov63_0211da3c
FUN_ov63_0211da3c: ; 0x0211DA3C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, #1
	mov r6, r3
	mov r4, #0x10
	mov r3, r5
	mov r8, r0
	mov r7, r1
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r4, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x1c]
	add r1, r7, r6, lsl #2
	cmp r0, #1
	cmpne r0, #4
	ldrsh r0, [r1, #0x82]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	add r0, r2, r0
	str r0, [sp]
	ldrsh r2, [r1, #0x84]
	movne r5, #0
	mov r0, r8
	add r2, r3, r2
	str r2, [sp, #4]
	mov r1, r7
	mov r2, r4
	mov r3, r6
	str r5, [sp, #8]
	bl FUN_ov63_0211e2f4
	add r7, r7, r6, lsl #2
	ldrsh r1, [r7, #0x84]
	add r0, r6, #9
	mov r0, r0, lsl #0x10
	str r1, [sp]
	ldrsh r1, [r7, #0xa2]
	ldr r3, [sp, #0x28]
	ldr r5, _0211DB34 ; =0x02099EB4
	str r1, [sp, #4]
	ldrsh r6, [r7, #0xa4]
	mov r2, r0, lsr #0x10
	mov r1, #3
	str r6, [sp, #8]
	str r3, [sp, #0xc]
	ldrsh r3, [r7, #0x82]
	ldr r0, [r5]
	bl  FUN_ov16_0210fba4
	strh r4, [r0, #0x34]
	mov r1, #0
	strb r1, [r0, #0x38]
	ldr r2, _0211DB38 ; =0x0210F940
	ldr r1, _0211DB3C ; =0x0210FA20
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r2, _0211DB40 ; =0x0210FB10
	ldr r1, _0211DB44 ; =0x0210FB1C
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211DB34: .word unk_02099EB4
_0211DB38: .word 0x0210F940
_0211DB3C: .word 0x0210FA20
_0211DB40: .word 0x0210FB10
_0211DB44: .word 0x0210FB1C
	arm_func_end FUN_ov63_0211da3c

	arm_func_start FUN_ov63_0211db48
FUN_ov63_0211db48: ; 0x0211DB48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, #3
	mov r7, r3
	mov r4, #2
	mov r3, r6
	mov r9, r0
	mov r8, r1
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0xd0]
	ldr r4, _0211DC10 ; =0x02099F38
	sub r0, r0, #0xa
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, lsr #0x10
	sub r3, r6, #4
	bl  FUN_ov16_02112c90
	ldr r3, [r9, #0xf8]
	mov r6, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, [r8, #0x78]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_0211401c
	mov r1, r5
	mov r2, r6
	ldr r3, _0211DC14 ; =0x021241CC
	ldr r0, [sp, #0x20]
	ldrsh r5, [r3, #0x7e]
	add r0, r5, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldrsh r3, [r3, #0x7c]
	add r3, r3, r7
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DC10: .word unk_02099F38
_0211DC14: .word 0x021241CC
	arm_func_end FUN_ov63_0211db48

	arm_func_start FUN_ov63_0211dc18
FUN_ov63_0211dc18: ; 0x0211DC18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, r1
	ldrb r3, [r6, #0x7c]
	mov r7, r0
	mov r5, r2
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #1
	mov r3, #2
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r8, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r9, _0211E17C ; =0x02099F38
	ldr r2, [r7, #0x104]
	ldr r0, [r9]
	mov r1, r8
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r9]
	mov r1, r8
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r2, [r6, #0xd0]
	ldr r0, [r9]
	sub r2, r2, #0xa
	mov r2, r2, lsl #0x10
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r11, [r6, #0x7e]
	ldrsh r2, [r6, #0xc2]
	ldrsh r10, [r6, #0x80]
	ldrsh r3, [r6, #0xc4]
	add r2, r11, r2
	mov r2, r2, lsl #0x10
	add r3, r10, r3
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r8
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	mov r3, r8
	mov r11, #0x14
	ldr r8, _0211E180 ; =0x02099EB4
	str r11, [sp]
	ldr r0, [r8]
	mov r1, #3
	mov r2, #0x16
	bl  FUN_ov16_0210fbe8
	mov r10, r0
	mov r0, #0
	mov r1, #0
	strb r0, [r10, #0xf]
	add r0, r10, #0x3a
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r1
	mov r3, r1
	bl  FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e720
	strb r4, [r10, #0x12]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, #2
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r7, #0x100]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r10
	mov r2, #4
	mov r3, #0
	bl  FUN_ov16_0211346c
	ldr r2, [r6, #0xd0]
	ldr r0, [r9]
	sub r2, r2, #0xa
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r3, [r6, #0x80]
	ldrsh r2, [r6, #0xc4]
	ldrsh lr, [r6, #0x7e]
	ldrsh r12, [r6, #0xc2]
	add r3, r3, r2
	sub r3, r3, #0x10
	add r12, lr, r12
	mov r12, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r10
	mov r2, r12, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	str r11, [sp]
	ldr r0, [r8]
	mov r3, r10
	mov r1, #3
	mov r2, #0x12
	bl  FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, #4
	add r0, r10, #0x3a
	mov r3, r1
	bl  FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, #5
	mov r3, r1
	bl  FUN_ov16_0210e720
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, #2
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r7, #0x100]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r10
	mov r2, #6
	mov r3, #0
	bl  FUN_ov16_0211346c
	ldr r2, [r6, #0xd0]
	ldr r0, [r9]
	sub r2, r2, #0xa
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r3, [r6, #0x7e]
	ldrsh r2, [r6, #0xc2]
	ldrsh r12, [r6, #0x80]
	ldrsh lr, [r6, #0xc8]
	add r2, r3, r2
	ldrsh r3, [r6, #0xc4]
	mov r2, r2, lsl #0x10
	ldr r0, [r9]
	add r3, r12, r3
	add r3, lr, r3
	add r3, r3, #0x20
	mov r3, r3, lsl #0x10
	mov r1, r10
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	str r11, [sp]
	ldr r0, [r8]
	mov r3, r10
	mov r1, #3
	mov r2, #0x13
	bl  FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, #6
	add r0, r10, #0x3a
	mov r3, r1
	bl  FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, #7
	mov r3, r1
	bl  FUN_ov16_0210e720
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, #2
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r7, #0x100]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r9]
	mov r1, r10
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r2, [r6, #0xd0]
	ldr r0, [r9]
	sub r2, r2, #0xa
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldrsh r3, [r6, #0x80]
	ldrsh r2, [r6, #0xc4]
	ldrsh lr, [r6, #0x7e]
	ldrsh r12, [r6, #0xc2]
	add r3, r3, r2
	sub r3, r3, #0x20
	add r12, lr, r12
	mov r12, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r10
	mov r2, r12, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	str r11, [sp]
	ldr r0, [r8]
	mov r3, r10
	mov r1, #3
	mov r2, r11
	bl  FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r1
	mov r3, r1
	bl  FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e720
	mov r2, r5
	mov r0, r7
	mov r1, r6
	mov r3, #2
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r7, #0x100]
	ldr r0, [r9]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r5
	mov r2, #2
	mov r3, #0
	bl  FUN_ov16_0211346c
	ldr r2, [r6, #0xd0]
	ldr r0, [r9]
	sub r2, r2, #0xa
	mov r2, r2, lsl #0x10
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r0, [r9]
	ldrsh r3, [r6, #0x7e]
	ldrsh r2, [r6, #0xc2]
	ldrsh r7, [r6, #0x80]
	ldrsh r9, [r6, #0xc8]
	add r2, r3, r2
	ldrsh r3, [r6, #0xc4]
	mov r2, r2, lsl #0x10
	mov r1, r5
	add r3, r7, r3
	add r3, r9, r3
	add r3, r3, #0x30
	mov r3, r3, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	str r11, [sp]
	ldr r0, [r8]
	mov r3, r5
	mov r1, #3
	mov r2, #0x15
	bl  FUN_ov16_0210fbe8
	mov r5, r0
	mov r1, #0
	add r0, r5, #0x3a
	mov r2, r4
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, #2
	add r0, r5, #0x3a
	mov r3, r1
	bl  FUN_ov16_0210e720
	mov r1, #0
	mov r2, r4
	add r0, r5, #0x3e
	mov r3, r1
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r5, #0x3e
	mov r2, #3
	mov r3, r1
	bl  FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E17C: .word unk_02099F38
_0211E180: .word unk_02099EB4
	arm_func_end FUN_ov63_0211dc18

	arm_func_start FUN_ov63_0211e184
FUN_ov63_0211e184: ; 0x0211E184
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r8, r1
	ldr r4, [r8, #0x1c]
	mov r9, r0
	mov r7, r3
	cmp r4, #4
	mov r6, #0
	bne _0211E210
	mov r4, #8
	mov r3, r6
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x28]
	str r7, [sp]
	str r0, [sp, #4]
	mov r5, #1
	mov r0, r9
	mov r1, r8
	mov r2, r4
	mov r3, r6
	str r5, [sp, #8]
	bl FUN_ov63_0211e2f4
	str r6, [sp]
	add r0, r9, #0x2000
	ldr r2, [r0, #0x8c]
	mov r0, r9
	mov r1, r4
	sub r3, r5, #2
	bl FUN_ov63_0211e9e4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211E210:
	mov r4, #1
	mov r3, r6
	str r4, [sp]
	bl FUN_ov63_0211d934
	movs r5, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrh r0, [r9, #0x1c]
	mov r1, r6
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211E250
	add r1, r9, #0x2000
	ldrb r1, [r1, #0xa2]
	bl FUN_0206cdf8
	mov r6, r0
_0211E250:
	ldr r0, [r8, #0xd0]
	ldr r4, _0211E2F0 ; =0x02099F38
	sub r0, r0, #5
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r0, [sp, #0x28]
	mov r2, r7, lsl #0x10
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	cmp r6, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r6
	bl FUN_ov63_021216e8
	mov r2, r0
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r6, #1
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	mov r2, #0
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	mov r2, #2
	bl  FUN_ov16_0211329c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211E2F0: .word unk_02099F38
	arm_func_end FUN_ov63_0211e184

	arm_func_start FUN_ov63_0211e2f4
FUN_ov63_0211e2f4: ; 0x0211E2F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldr r1, [r9, #0xd0]
	ldr r6, [r9, #0x1c]
	sub r1, r1, #5
	mov r1, r1, lsl #0x10
	cmp r6, #2
	mov r10, r0
	mov r8, r2
	mov r5, r3
	mov r7, r1, lsr #0x10
	mov r4, #0
	cmpne r6, #5
	beq _0211E334
	cmp r6, #6
	bne _0211E518
_0211E334:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov r2, r1, lsl #0x10
	mov r3, r0, lsl #0x10
	ldr r6, _0211E9DC ; =0x02099F38
	mov r1, r8
	ldr r0, [r6]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	bne _0211E3FC
	ldr r3, [r10, #0xfc]
	mov r10, #1
	ldr r0, [r6]
	mov r1, r8
	mov r2, r10
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, _0211E9E0 ; =0x021241CC
	mov r1, r8
	ldrsh r3, [r0, #0x7e]
	mov r2, r10
	str r3, [sp]
	ldrsh r3, [r0, #0x7c]
	ldr r0, [r6]
	sub r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r10
	ldr r3, [r9, #0x78]
	bl  FUN_ov16_0211401c
	ldr r0, [r6]
	mov r1, r8
	mov r2, r10
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldr r0, [r6]
	mov r2, r10
	mov r1, r8
	sub r3, r7, #1
	sub r3, r3, r4
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
_0211E3FC:
	ldr r6, _0211E9DC ; =0x02099F38
	ldr r3, [r9, #0x64]
	mov r4, #2
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_02113b78
	mov r10, #0xc
	mul r0, r5, r10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r5, #0
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_02113d88
	ldr r1, [r9, #0x64]
	ldr r0, [r6]
	bl  FUN_ov16_02111438
	mov r0, r0, lsl #0x10
	str r10, [sp]
	mov r3, r0, asr #0x10
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	bl  FUN_ov16_02113d08
	sub r3, r7, #2
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	mov r3, r4
	mov r4, #3
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	bl  FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	sub r3, r4, #0xb
	bl  FUN_ov16_02113b78
	ldr r0, [r6]
	mov r2, r4
	mov r3, r7
	mov r1, r8
	bl  FUN_ov16_021139bc
	mov r5, #5
	mov r4, #2
	b _0211E50C
_0211E4F4:
	ldr r0, [r6]
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_02113f7c
	add r5, r5, #1
_0211E50C:
	cmp r5, #9
	ble _0211E4F4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E518:
	ldrb r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	mov r6, #0xc
	cmp r0, #0
	moveq r6, r4
	mov r2, r1, lsl #0x10
	ldr r0, [sp, #0x2c]
	ldr r4, _0211E9DC ; =0x02099F38
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r8
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	sub r0, r7, #3
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r0, _0211E9E0 ; =0x021241CC
	mov r5, #0x14
	ldrsh r3, [r0, #0x7e]
	mov r1, r8
	mov r2, r5
	str r3, [sp]
	ldrsh r3, [r0, #0x7c]
	ldr r0, [r4]
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0x13c]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r11, #0
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r11
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113f7c
	sub r3, r7, #1
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r2, r5
	mov r1, r8
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	ldr r0, [r9, #0x78]
	ldr r3, [r10, #0xfc]
	cmp r0, #0
	ldr r5, _0211E9DC ; =0x02099F38
	mov r1, r8
	ldr r0, [r5]
	mov r2, #1
	and r3, r3, #0xff
	movne r11, #4
	bl  FUN_ov16_021137dc
	ldr r4, _0211E9E0 ; =0x021241CC
	mov r1, r8
	ldrsh r0, [r4, #0x7e]
	mov r2, #1
	str r0, [sp]
	ldrsh r3, [r4, #0x7c]
	ldr r0, [r5]
	add r3, r3, r11
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r11, #0
	str r11, [sp]
	ldr r3, [r9, #0x78]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #1
	bl  FUN_ov16_0211401c
	mov r9, #2
	ldr r0, [r5]
	mov r1, r8
	mov r2, #1
	mov r3, r9
	bl  FUN_ov16_02113f7c
	sub r0, r7, #2
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r0, [r5]
	mov r2, #1
	mov r1, r8
	bl  FUN_ov16_021139bc
	str r11, [sp]
	add r3, r6, #0x20
	mov r3, r3, lsl #0x10
	ldr r0, [r5]
	mov r1, r8
	mov r2, #3
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	str r11, [sp]
	sub r3, r6, #4
	mov r7, #7
	mov r3, r3, lsl #0x10
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0x10c]
	ldr r0, [r5]
	mov r2, r7
	mov r1, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	add r0, r6, #0xd
	mov r0, r0, lsl #0x10
	str r11, [sp]
	mov r3, r0, asr #0x10
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0xf0]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldrb r0, [sp, #0x30]
	mov r6, #4
	ldr r3, [r10, #0xd8]
	cmp r0, #0
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	beq _0211E8EC
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_0211401c
	ldrsh r0, [r4, #0x3e]
	mov r2, r6
	mov r1, r8
	str r0, [sp]
	ldrsh r3, [r4, #0x3c]
	ldr r0, [r5]
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0xdc]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r3, [r10, #0xdc]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r3, [r10, #0xe0]
	mov r6, #0xa
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_0211401c
	ldrsh r0, [r4, #0x46]
	mov r2, r6
	mov r1, r8
	str r0, [sp]
	ldrsh r3, [r4, #0x44]
	ldr r0, [r5]
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0xe4]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #0xb
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r3, [r10, #0xe4]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #0xc
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r3, [r10, #0xe8]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #0xd
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r3, [r10, #0xec]
	mov r6, #0xe
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_0211401c
	ldrsh r0, [r4, #0x46]
	mov r2, r6
	mov r1, r8
	str r0, [sp]
	ldrsh r3, [r4, #0x44]
	ldr r0, [r5]
	bl  FUN_ov16_02113b78
	mov r6, #8
	ldr r0, [r5]
	mov r3, r9
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_02113f7c
	ldrsh r0, [r4, #0x42]
	mov r1, r8
	mov r2, r6
	str r0, [sp]
	ldrsh r3, [r4, #0x40]
	ldr r0, [r5]
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0x144]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E8EC:
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_0211401c
	ldrsh r0, [r4, #0x22]
	mov r2, r6
	mov r1, r8
	str r0, [sp]
	ldrsh r3, [r4, #0x20]
	ldr r0, [r5]
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0xdc]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r3, [r10, #0xdc]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r3, [r10, #0x108]
	mov r6, #0xa
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_0211401c
	ldrsh r0, [r4, #0x4e]
	mov r2, r6
	mov r1, r8
	str r0, [sp]
	ldrsh r3, [r4, #0x4c]
	ldr r0, [r5]
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0x108]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #0xb
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r3, [r10, #0x108]
	ldr r0, [r5]
	mov r1, r8
	mov r2, #0xc
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E9DC: .word unk_02099F38
_0211E9E0: .word 0x021241CC
	arm_func_end FUN_ov63_0211e2f4

	arm_func_start FUN_ov63_0211e9e4
FUN_ov63_0211e9e4: ; 0x0211E9E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r5, r2
	str r0, [sp, #4]
	mov r6, r1
	mov r10, r3
	cmp r5, #0
	mov r9, #0xa
	mov r7, #1
	ldr r4, _0211F2A4 ; =0x02099F38
	bgt _0211EA28
	ldr r0, [r4]
	mov r2, #2
	bl  FUN_ov16_02113390
	cmp r5, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EA28:
	cmp r5, #0
	ble _0211EA84
	ldr r0, [sp, #4]
	mov r1, r5
	bl FUN_ov63_021216e8
	mov r8, #3
	and r3, r0, #0xff
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl  FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r4]
	mov r2, r8
	mov r1, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211EA84:
	ldrb r0, [sp, #0x40]
	mov r1, r6
	mov r2, #9
	str r0, [sp]
	ldr r0, [r4]
	mov r3, #2
	bl  FUN_ov16_02113ec0
	cmp r5, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211F2A8 ; =0x0209BA20
	mov r1, r5
	bl FUN_0204a2c4
	ldr r1, _0211F2AC ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	mov r8, #0
	cmp r0, #0
	beq _0211EAE0
	ldr r1, _0211F2B0 ; =0x0209A454
	ldrb r1, [r1, #0x28]
	bl  FUN_ov132_02145190
	mov r8, r0
_0211EAE0:
	mov r11, #0x64
	mov r0, r4
	mov r1, r8
	mov r2, r11
	bl FUN_0204b0c4
	ldr r7, _0211F2B4 ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r2, r3, r7, r0
	add r3, r1, r3, asr #2
	smull r1, r2, r9, r3
	sub r3, r0, r1
	mov r0, r4
	mov r1, r8
	mov r2, r11
	str r3, [sp, #0x10]
	bl FUN_0204b0c4
	smull r1, r2, r7, r0
	mov r0, r0, lsr #0x1f
	add r2, r0, r2, asr #2
	cmp r10, #0
	ldrlt r0, _0211F2B8 ; =0x021241CC
	str r2, [sp, #0x14]
	ldrltsh r7, [r0, #0x84]
	ldrltsh r8, [r0, #0x86]
	ldrge r0, _0211F2B8 ; =0x021241CC
	mov r2, #4
	ldrgesh r7, [r0, #0x28]
	ldrgesh r8, [r0, #0x2a]
	ldrb r0, [r4]
	cmp r0, #9
	bne _0211EBB0
	mov r8, #0
	ldr r7, _0211F2A4 ; =0x02099F38
	str r8, [sp]
	mov r9, #2
	ldr r0, [r7]
	mov r1, r6
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, #5
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r8, [sp]
	ldr r0, [r7]
	mov r3, r9
	mov r1, r6
	mov r2, #6
	bl  FUN_ov16_02113ec0
	b _0211EC8C
_0211EBB0:
	mov r9, #1
	ldr r11, _0211F2A4 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r11]
	mov r1, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	str r9, [sp]
	ldr r0, [r11]
	mov r3, #2
	mov r1, r6
	mov r2, #5
	bl  FUN_ov16_02113ec0
	ldr r0, [sp, #0x14]
	ldr r11, _0211F2A4 ; =0x02099F38
	cmp r0, #0
	moveq r9, #0
	str r9, [sp]
	ldr r0, [r11]
	mov r1, r6
	mov r2, #6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r9, #0
	str r9, [sp]
	ldr r0, [r11]
	ldr r3, [sp, #0x10]
	mov r1, r6
	mov r2, #5
	bl  FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r11]
	ldr r3, [sp, #0x14]
	mov r1, r6
	mov r2, #6
	bl  FUN_ov16_0211401c
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r7, lsl #0x10
	ldr r0, [r11]
	mov r2, #5
	mov r1, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	sub r1, r7, #8
	str r0, [sp]
	mov r1, r1, lsl #0x10
	mov r3, r1, asr #0x10
	ldr r0, [r11]
	mov r2, #6
	mov r1, r6
	bl  FUN_ov16_02113b78
_0211EC8C:
	ldrb r0, [r4, #0x14]
	ldr r7, _0211F2A4 ; =0x02099F38
	mov r11, #2
	cmp r0, #0
	bne _0211ED04
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xa
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xb
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r2, #0xc
	mov r3, r11
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r2, #0xd
	mov r3, r11
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r3, r11
	mov r1, r6
	mov r2, #0xe
_0211ED00:
	b _0211F038
_0211ED04:
	ldr r0, [sp, #4]
	mov r1, #0
	ldrh r0, [r0, #0x1c]
	bl  FUN_ov16_020efa9c
	mov r1, r0
	ldr r0, _0211F2A8 ; =0x0209BA20
	mov r2, r5
	bl FUN_0207224c
	ldrb r1, [r4, #0x14]
	mov r8, r0
	cmp r1, #1
	blo _0211EDCC
	cmp r1, #3
	bhi _0211EDCC
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xd
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r2, #0xe
	mov r3, r11
	bl  FUN_ov16_02113f7c
	cmp r8, #1
	ble _0211EDB8
	ldr r0, _0211F2B4 ; =0x66666667
	mov r9, #1
	smull r1, r3, r0, r8
	mov r2, r8, lsr #0x1f
	smull r11, r1, r0, r8
	add r1, r2, r1, asr #2
	add r3, r2, r3, asr #2
	mov r2, #0xa
	str r1, [sp, #0xc]
	smull r0, r1, r2, r3
	sub r3, r8, r0
	str r9, [sp]
	str r3, [sp, #8]
	ldr r0, [r7]
	mov r1, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r3, #2
	b _0211EF3C
_0211EDB8:
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xa
	b _0211F010
_0211EDCC:
	ldrb r0, [r4, #0x14]
	mov r9, #0xa
	ldr r7, _0211F2A4 ; =0x02099F38
	cmp r0, #0x65
	blo _0211EEB0
	cmp r0, #0x67
	bhi _0211EEB0
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, r9
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xb
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r2, #0xc
	mov r3, r11
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r2, #0xe
	mov r3, r11
	bl  FUN_ov16_02113f7c
	cmp r8, #1
	ble _0211EE9C
	mov r0, #1
	str r0, [sp]
	mov r9, #0xd
	ldr r0, [r7]
	mov r1, r6
	mov r2, r9
	mov r3, r11
	bl  FUN_ov16_02113ec0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r9
	sub r3, r8, #2
	bl  FUN_ov16_0211401c
	mov r2, r9
	ldr r3, _0211F2B8 ; =0x021241CC
	mov r1, r6
	ldrsh r0, [r3, #0x46]
	str r0, [sp]
	ldr r0, [r7]
	ldrsh r3, [r3, #0x44]
	b _0211EFF8
_0211EE9C:
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xd
	b _0211ED00
_0211EEB0:
	ldrb r0, [r4, #0x14]
	cmp r0, #0xc9
	blo _0211F03C
	cmp r0, #0xcb
	bhi _0211F03C
	ldr r0, [r7]
	mov r1, r6
	mov r2, r9
	mov r3, r11
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r2, #0xd
	mov r3, r11
	bl  FUN_ov16_02113f7c
	cmp r8, #1
	ble _0211F000
	ldr r1, _0211F2B4 ; =0x66666667
	mov r0, r8, lsr #0x1f
	smull r2, r3, r1, r8
	add r3, r0, r3, asr #2
	smull r2, r3, r9, r3
	sub r3, r8, r2
	smull r8, r2, r1, r8
	mov r9, #1
	add r2, r0, r2, asr #2
	str r9, [sp]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xe
	bl  FUN_ov16_02113ec0
	mov r3, r11
_0211EF3C:
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, #0xb
	bl  FUN_ov16_02113ec0
	ldr r0, [sp, #0xc]
	ldr r7, _0211F2A4 ; =0x02099F38
	cmp r0, #0
	moveq r9, #0
	str r9, [sp]
	mov r9, #0xc
	ldr r0, [r7]
	mov r1, r6
	mov r2, r9
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r8, #0
	str r8, [sp]
	mov r11, #0xb
	ldr r0, [r7]
	ldr r3, [sp, #8]
	mov r1, r6
	mov r2, r11
	bl  FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #0xc]
	mov r1, r6
	mov r2, r9
	bl  FUN_ov16_0211401c
	ldr r8, _0211F2B8 ; =0x021241CC
	mov r2, r11
	ldrsh r0, [r8, #0x8a]
	mov r1, r6
	str r0, [sp]
	ldrsh r3, [r8, #0x88]
	ldr r0, [r7]
	bl  FUN_ov16_02113b78
	ldrsh r0, [r8, #0x8a]
	mov r2, r9
	mov r1, r6
	str r0, [sp]
	ldrsh r3, [r8, #0x88]
	ldr r0, [r7]
	sub r3, r3, #8
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
_0211EFF8:
	bl  FUN_ov16_02113b78
	b _0211F03C
_0211F000:
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xe
_0211F010:
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	mov r2, #0xb
	bl  FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r3, r11
	mov r1, r6
	mov r2, #0xc
_0211F038:
	bl  FUN_ov16_02113f7c
_0211F03C:
	cmp r10, #0
	ldr r1, _0211F2B8 ; =0x021241CC
	mov r7, #0xa
	ldr r11, _0211F2A4 ; =0x02099F38
	blt _0211F15C
	ldr r0, _0211F2B4 ; =0x66666667
	mov r8, r10, lsr #0x1f
	smull r2, r3, r0, r10
	smull r9, r2, r0, r10
	add r3, r8, r3, asr #2
	smull r0, r3, r7, r3
	adds r2, r8, r2, asr #2
	ldrsh r7, [r1, #0x24]
	mov r9, #1
	sub r3, r10, r0
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r8, _0211F2A4 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r3, #2
	mov r2, #0xa
	subeq r7, r7, #4
	bl  FUN_ov16_02113ec0
	str r9, [sp]
	ldr r0, [r8]
	mov r3, #2
	mov r1, r6
	mov r2, #0xb
	bl  FUN_ov16_02113ec0
	ldr r0, [sp, #0xc]
	ldr r8, _0211F2A4 ; =0x02099F38
	cmp r0, #0
	moveq r9, #0
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, #0xc
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r9, #0
	str r9, [sp]
	ldr r0, [r8]
	ldr r3, [sp, #8]
	mov r1, r6
	mov r2, #0xb
	bl  FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r8]
	ldr r3, [sp, #0xc]
	mov r1, r6
	mov r2, #0xc
	bl  FUN_ov16_0211401c
	ldr r9, _0211F2B8 ; =0x021241CC
	mov r0, r7, lsl #0x10
	ldrsh r10, [r9, #0x86]
	mov r3, r0, asr #0x10
	mov r2, #0xb
	str r10, [sp]
	ldr r0, [r8]
	mov r1, r6
	bl  FUN_ov16_02113b78
	ldrsh r0, [r9, #0x86]
	sub r1, r7, #8
	mov r1, r1, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r8]
	mov r2, #0xc
	mov r1, r6
	bl  FUN_ov16_02113b78
_0211F15C:
	ldrb r0, [r4]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211F1B8
_0211F16C: ; jump table
	b _0211F1B8 ; case 0
	b _0211F1B8 ; case 1
	b _0211F1B8 ; case 2
	b _0211F1B8 ; case 3
	b _0211F1B8 ; case 4
	b _0211F194 ; case 5
	b _0211F198 ; case 6
	b _0211F1A0 ; case 7
	b _0211F1A8 ; case 8
	b _0211F1B0 ; case 9
_0211F194:
	b _0211F1B8
_0211F198:
	mov r3, #1
	b _0211F1BC
_0211F1A0:
	mov r3, #2
	b _0211F1BC
_0211F1A8:
	mov r3, #3
	b _0211F1BC
_0211F1B0:
	mov r3, #5
	b _0211F1BC
_0211F1B8:
	mov r3, #0
_0211F1BC:
	mov r7, #0
	str r7, [sp]
	ldr r0, [r11]
	mov r1, r6
	mov r2, #2
	bl  FUN_ov16_0211401c
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	ldr r0, [r11]
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_02113ec0
	cmp r4, #0
	cmpne r5, #0
	movgt r7, #1
	str r7, [sp]
	ldr r10, _0211F2A4 ; =0x02099F38
	mov r8, #7
	ldr r0, [r10]
	mov r1, r6
	mov r2, r8
	mov r3, #2
	mov r7, #0
	bl  FUN_ov16_02113ec0
	mov r9, r7
	str r9, [sp]
	ldrb r3, [r4, #8]
	ldr r0, [r10]
	mov r1, r6
	mov r2, r8
	sub r3, r3, #1
	bl  FUN_ov16_0211401c
	cmp r4, #0
	cmpne r5, #0
	mov r0, r9
	movgt r0, #1
	cmp r0, #0
	ldr r5, _0211F2A4 ; =0x02099F38
	beq _0211F268
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	movhs r9, #1
_0211F268:
	str r9, [sp]
	mov r8, #8
	ldr r0, [r5]
	mov r1, r6
	mov r2, r8
	mov r3, #2
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldrb r3, [r4, #0xa]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_0211401c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F2A4: .word unk_02099F38
_0211F2A8: .word unk_0209BA20
_0211F2AC: .word unk_02099EF0
_0211F2B0: .word unk_0209A454
_0211F2B4: .word 0x66666667
_0211F2B8: .word 0x021241CC
	arm_func_end FUN_ov63_0211e9e4

	arm_func_start FUN_ov63_0211f2bc
FUN_ov63_0211f2bc: ; 0x0211F2BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, r1
	ldrb r1, [r6, #0x6a]
	mov r5, r2
	ldr r3, [r6, #0xc]
	add r2, r1, r5
	ldr r1, [r6, #0x1c]
	add r2, r6, r2, lsl #2
	mov r7, r0
	cmp r1, #5
	add r8, r3, r5
	ldr r9, [r2, #0x20]
	mov r4, #0
	bne _0211F3A8
	mov r1, r8
	mov r2, r4
	ldr r5, _0211F5D4 ; =0x02099F38
	mov r6, r4
	bl FUN_ov63_0211d070
	cmp r0, #0
	beq _0211F358
	ldrb r0, [r0, #4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211F350
_0211F320: ; jump table
	b _0211F350 ; case 0
	b _0211F334 ; case 1
	b _0211F338 ; case 2
	b _0211F348 ; case 3
	b _0211F340 ; case 4
_0211F334:
	b _0211F35C
_0211F338:
	mov r4, #1
	b _0211F35C
_0211F340:
	mov r4, #2
	b _0211F35C
_0211F348:
	mov r4, #3
	b _0211F35C
_0211F350:
	mvn r4, #0
	b _0211F35C
_0211F358:
	sub r4, r4, #1
_0211F35C:
	mov r0, #1
	cmp r4, #0
	movlt r0, #0
	str r0, [sp]
	mov r7, #4
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	mov r3, #2
	bl  FUN_ov16_02113ec0
	cmp r4, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	mov r3, r4
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F3A8:
	cmp r1, #6
	mov r11, r4
	bne _0211F468
	mov r2, r4
	mov r1, r8
	mov r4, #1
	mov r5, r2
	bl FUN_ov63_0211d070
	cmp r0, #0
	ldrneb r10, [r0, #2]
	ldr r0, [r6, #4]
	ldr r3, [r7, #0x12c]
	cmp r8, r0
	ldr r8, _0211F5D4 ; =0x02099F38
	mov r6, #3
	ldr r0, [r8]
	mov r1, r9
	mov r2, r6
	and r3, r3, #0xff
	movge r10, #0
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r8]
	mov r1, r9
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_0211401c
	ldr r0, [r8]
	mov r1, r9
	mov r2, r6
	and r3, r10, #0xff
	bl  FUN_ov16_021137dc
	cmp r10, #0
	ble _0211F448
	str r5, [sp]
	ldr r0, [r8]
	mov r1, r9
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_0211401c
_0211F448:
	ldr r0, _0211F5D4 ; =0x02099F38
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r9
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F468:
	cmp r1, #2
	bne _0211F520
	mov r2, r4
	mov r1, r8
	mov r4, #1
	bl FUN_ov63_0211d070
	cmp r0, #0
	ldrneb r10, [r0, #2]
	ldr r0, [r6, #4]
	ldr r3, [r7, #0x148]
	cmp r8, r0
	ldr r6, _0211F5D4 ; =0x02099F38
	mov r5, #3
	ldr r0, [r6]
	mov r1, r9
	mov r2, r5
	and r3, r3, #0xff
	movge r10, #0
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r2, r5
	mov r3, r11
	bl  FUN_ov16_0211401c
	ldr r0, [r6]
	mov r1, r9
	mov r2, r5
	and r3, r10, #0xff
	bl  FUN_ov16_021137dc
	cmp r10, #0
	ble _0211F500
	str r11, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r2, r5
	mov r3, r11
	bl  FUN_ov16_0211401c
_0211F500:
	ldr r0, _0211F5D4 ; =0x02099F38
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r9
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F520:
	cmp r1, #1
	mov r1, r8
	mov r2, r4
	bne _0211F538
	bl FUN_ov63_0212163c
	b _0211F53C
_0211F538:
	bl FUN_ov63_02121534
_0211F53C:
	mov r10, r0
	ldr r0, [r6, #0x1c]
	cmp r0, #1
	beq _0211F554
	cmp r0, #4
	bne _0211F59C
_0211F554:
	ldr r0, [r6, #0x1c]
	mov r4, #0
	mov r1, r4
	cmp r0, #1
	mvn r6, #0
	bne _0211F574
	cmp r10, #0
	movgt r1, #1
_0211F574:
	cmp r1, #0
	beq _0211F5B8
	ldrh r1, [r7, #0x1c]
	mov r2, r5, lsl #0x10
	mov r0, r7
	mov r2, r2, lsr #0x10
	bl FUN_ov63_0211fb94
	cmp r0, #0
	moveq r4, #1
	b _0211F5B8
_0211F59C:
	mov r6, #0
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl FUN_ov63_0211d070
	cmp r0, #0
	ldrnesh r6, [r0, #2]
_0211F5B8:
	mov r0, r7
	mov r1, r9
	mov r2, r10
	mov r3, r6
	str r4, [sp]
	bl FUN_ov63_0211e9e4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F5D4: .word unk_02099F38
	arm_func_end FUN_ov63_0211f2bc

	arm_func_start FUN_ov63_0211f5d8
FUN_ov63_0211f5d8: ; 0x0211F5D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov63_0212178c
	mov r0, r5
	mov r1, r4
	bl FUN_ov63_0211f7fc
	mov r6, #0
	mov r0, r5
	mov r2, r6
	mov r1, #1
	bl FUN_ov63_0211b878
	mov r7, r0
	ldr r0, [r7, #8]
	cmp r0, #0
	ble _0211F638
_0211F618:
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl FUN_ov63_0211f2bc
	ldr r0, [r7, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0211F618
_0211F638:
	ldr r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0211F648:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov63_0211f2bc
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0211F648
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov63_0211f5d8

	arm_func_start FUN_ov63_0211f66c
FUN_ov63_0211f66c: ; 0x0211F66C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r4, r1
	ldmia r4, {r0, r1}
	add r0, r1, r0
	bl _s32_div_f
	ldmia r4, {r2, r3}
	mov r0, r3, asr #2
	mov r1, r2, asr #2
	add r0, r3, r0, lsr #29
	add r1, r2, r1, lsr #29
	mov r8, r0, asr #3
	mov r0, r1, asr #3
	add r9, r0, #1
	ldr r2, _0211F7F4 ; =0x66666667
	cmp r8, #1
	smull r1, r7, r2, r9
	movlt r8, #1
	smull r1, r3, r2, r9
	mov r0, r9, lsr #0x1f
	smull r10, r12, r2, r8
	add r3, r0, r3, asr #2
	mov r1, r8, lsr #0x1f
	add r7, r0, r7, asr #2
	smull r10, lr, r2, r8
	add lr, r1, lr, asr #2
	mov r0, #0xa
	add r12, r1, r12, asr #2
	smull r1, r2, r0, r7
	sub r7, r9, r1
	smull r1, r2, r0, r12
	sub r12, r8, r1
	ldr r4, [r4, #0x2c]
	mov r6, #0
	mov r5, #1
	ldr r8, _0211F7F8 ; =0x02099F38
	str r6, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	str lr, [sp, #0xc]
	str r7, [sp, #8]
	str r12, [sp, #0x10]
	str r3, [sp, #4]
	bl  FUN_ov16_0211401c
	str r6, [sp]
	mov r7, #2
	ldr r0, [r8]
	ldr r3, [sp, #8]
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r8]
	ldr r3, [sp, #0xc]
	mov r1, r4
	mov r2, #3
	bl  FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r8]
	ldr r3, [sp, #0x10]
	mov r1, r4
	mov r2, #4
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0211F790
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, r7
	bl  FUN_ov16_02113f7c
	b _0211F7A8
_0211F790:
	str r5, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, r7
	bl  FUN_ov16_02113ec0
_0211F7A8:
	ldr r0, [sp, #0xc]
	mov r2, #3
	cmp r0, #0
	mov r3, #2
	bne _0211F7D4
	ldr r0, _0211F7F8 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211F7D4:
	mov r1, #1
	str r1, [sp]
	ldr r0, _0211F7F8 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211F7F4: .word 0x66666667
_0211F7F8: .word unk_02099F38
	arm_func_end FUN_ov63_0211f66c

	arm_func_start FUN_ov63_0211f7fc
FUN_ov63_0211f7fc: ; 0x0211F7FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	add r8, sp, #0x38
	mov r6, #0
	mov r5, r0
	mov r10, r1
	mov r2, r8
	mov r0, r6
	mov r1, r6
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2, {r0, r1}
	ldr r0, [r10, #0x64]
	mov r4, r6
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x1c]
	cmp r0, #2
	beq _0211F8D4
	cmp r0, #5
	beq _0211F860
	cmp r0, #6
	bne _0211F914
_0211F860:
	mov r6, #0
	ldr r9, _0211FA1C ; =0x02124990
	add r8, sp, #0x38
	ldr r7, _0211FA20 ; =0x0212499C
	b _0211F8C4
_0211F874:
	ldr r1, [r10, #0xc]
	mov r0, r5
	mov r2, r4
	add r1, r1, r6
	bl FUN_ov63_0211d070
	cmp r0, #0
	beq _0211F8C0
	ldrb r1, [r0, #4]
	cmp r1, #0
	streq r9, [r8, r6, lsl #2]
	ldrh r0, [r0]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	addne r0, r0, #0x1c
	strne r0, [r8, r6, lsl #2]
	bne _0211F8C0
	cmp r6, #2
	strge r7, [r8, r6, lsl #2]
_0211F8C0:
	add r6, r6, #1
_0211F8C4:
	ldr r0, [r10, #8]
	cmp r6, r0
	blt _0211F874
	b _0211F914
_0211F8D4:
	ldr r0, _0211FA24 ; =0x021247F0
	add r7, sp, #0x28
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	b _0211F90C
_0211F8E8:
	ldr r1, [r10, #0xc]
	mov r0, r5
	mov r2, r4
	add r1, r1, r6
	bl FUN_ov63_0211d070
	cmp r0, #0
	ldrne r0, [r7, r6, lsl #2]
	strne r0, [r8, r6, lsl #2]
	add r6, r6, #1
_0211F90C:
	cmp r6, #4
	blo _0211F8E8
_0211F914:
	ldr r5, _0211FA28 ; =0x02099F38
	ldr r1, [r10, #0x64]
	mov r6, #0
	ldr r0, [r5]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r6, [sp, #0x20]
	mov r4, r6
	bl FUN_0205935c
	ldr r0, [r5]
	ldr r1, [r10, #0x64]
	ldr r7, [sp, #0x20]
	bl  FUN_ov16_02111438
	mov r8, r0
	ldr r0, [r5]
	ldr r1, [r10, #0x64]
	bl  FUN_ov16_02111458
	mov r9, r0
	ldr r0, _0211FA2C ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02043310
	mov r11, #1
	add r5, sp, #0x38
	b _0211F9CC
_0211F97C:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _0211F9C8
	mov r0, #0xc
	mul r0, r6, r0
	str r9, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r11, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r0, _0211FA2C ; =0x02099F50
	ldr r1, [r5, r6, lsl #2]
	ldr r0, [r0]
	mov r2, r7
	mov r3, r8
	bl FUN_020425fc
_0211F9C8:
	add r6, r6, #1
_0211F9CC:
	cmp r6, #8
	blt _0211F97C
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl DC_FlushRange
	ldr r0, _0211FA2C ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, _0211FA28 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r10, #0x64]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r7
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FA1C: .word ov63_02124990
_0211FA20: .word ov63_0212499C
_0211FA24: .word ov63_021247F0
_0211FA28: .word unk_02099F38
_0211FA2C: .word unk_02099F50
	arm_func_end FUN_ov63_0211f7fc

	arm_func_start FUN_ov63_0211fa30
FUN_ov63_0211fa30: ; 0x0211FA30
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r0, r1
	mov r1, r5
	mov r6, r2
	bl  FUN_ov16_020efa9c
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_0211FA54:
	mov r0, r4
	mov r1, r5
	bl FUN_0206cdf8
	cmp r6, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #6
	blt _0211FA54
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov63_0211fa30

	arm_func_start FUN_ov63_0211fa80
FUN_ov63_0211fa80: ; 0x0211FA80
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r0, _0211FB1C ; =0x0209BA20
	mov r5, r2
	bl FUN_02049ea4
	cmp r0, #0
	beq _0211FB14
	add r7, r6, #0x2000
	ldr r0, [r7, #0x70]
	mov r4, #0
	cmp r0, #0
	ble _0211FB00
	mov r8, r4
_0211FAB4:
	mov r0, r6
	mov r1, r4
	mov r2, r8
	bl FUN_ov63_0211d070
	cmp r0, #0
	beq _0211FAF0
	ldrsh r1, [r0]
	cmp r1, r5
	bne _0211FAF0
	ldrh r1, [r0, #4]
	mov r2, #1
	ldr r0, _0211FB1C ; =0x0209BA20
	mov r3, r2
	bl  FUN_ov16_020ee16c
	b _0211FB00
_0211FAF0:
	ldr r0, [r7, #0x70]
	add r4, r4, #1
	cmp r4, r0
	blt _0211FAB4
_0211FB00:
	ldr r0, _0211FB1C ; =0x0209BA20
	mov r1, r5
	bl FUN_02074a2c
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FB14:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FB1C: .word unk_0209BA20
	arm_func_end FUN_ov63_0211fa80

	arm_func_start FUN_ov63_0211fb20
FUN_ov63_0211fb20: ; 0x0211FB20
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	add r3, sp, #4
	mov r4, #0
	mov r0, r1
	mov r5, r2
	mov r1, r4
	str r4, [r3]
	str r4, [r3, #4]
	str r4, [r3, #8]
	bl  FUN_ov16_020efa9c
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	str r0, [sp, #8]
	ldrh r0, [r5, #6]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	str r0, [sp]
	str r0, [sp, #0xc]
	ldrb r2, [r5, #2]
	ldr r0, _0211FB90 ; =0x0209BA20
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0204aa60
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0211FB90: .word unk_0209BA20
	arm_func_end FUN_ov63_0211fb20

	arm_func_start FUN_ov63_0211fb94
FUN_ov63_0211fb94: ; 0x0211FB94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r7, #0
	mov r10, r0
	mov r0, r9
	mov r1, r7
	mov r8, r2
	bl  FUN_ov16_020efa9c
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r8
	bl FUN_0206cdf8
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, _0211FC68 ; =0x0209BA20
	mov r1, r5
	mov r0, r11
	mov r2, r8
	bl FUN_0204a2dc
	add r4, sp, #4
	mov r6, r0
	mov r0, r11
	mov r1, r5
	mov r2, r8
	mov r3, r4
	str r7, [sp]
	bl FUN_0204a394
	cmp r0, #0
	cmpne r6, #0
	ble _0211FC5C
_0211FC20:
	add r0, r7, #1
	str r0, [sp]
	mov r0, r7, lsl #1
	ldrh r3, [r4, r0]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov63_0211fc6c
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, #1
	cmp r7, r6
	blt _0211FC20
_0211FC5C:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FC68: .word unk_0209BA20
	arm_func_end FUN_ov63_0211fb94

	arm_func_start FUN_ov63_0211fc6c
FUN_ov63_0211fc6c: ; 0x0211FC6C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r5, r0
	mov r0, r1
	mov r8, r3
	mov r1, r4
	mov r6, r2
	mov r7, r4
	bl  FUN_ov16_020efa9c
	mov r10, r0
	mov r0, r8
	mov r1, r4
	bl  FUN_ov16_020efa9c
	ldr r8, _0211FE08 ; =0x0209BA20
	mov r9, r0
	mov r0, r8
	bl FUN_02073f08
	mov r2, r6
	str r0, [sp]
	ldr r6, [sp, #0x28]
	mov r1, r10
	mov r0, r8
	mov r3, r9
	str r6, [sp, #4]
	bl FUN_0204a74c
	mov r8, r0
	cmp r8, #4
	addeq sp, sp, #8
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r9, #0
	beq _0211FDF4
	mov r0, r9
	mov r1, r4
	bl FUN_0206d824
	cmp r0, #0
	bne _0211FD6C
	add r6, r5, #0x2000
	ldrh r0, [r6, #0xf4]
	mov r8, #2
	cmp r0, #0
	ble _0211FD58
_0211FD18:
	add r2, r5, r4, lsl #1
	add r0, r2, #0x2000
	ldrh r1, [r0, #0xec]
	add r0, r2, #0xec
	add r10, r0, #0x2000
	cmp r1, #0
	beq _0211FD48
	mov r0, r9
	bl FUN_0206cbf8
	ldrh r1, [r10]
	cmp r1, r0
	moveq r8, r7
_0211FD48:
	ldrh r0, [r6, #0xf4]
	add r4, r4, #1
	cmp r4, r0
	blt _0211FD18
_0211FD58:
	mov r0, r9
	bl FUN_0206d688
	cmp r0, #0
	movne r8, #0
	b _0211FDF4
_0211FD6C:
	cmp r0, #0xc
	blt _0211FDF4
	cmp r0, #0x10
	bgt _0211FDF4
	add r6, r5, #0x2000
	ldrh r0, [r6, #0xf4]
	mov r8, #2
	cmp r0, #0
	ble _0211FDD0
_0211FD90:
	add r2, r5, r4, lsl #1
	add r0, r2, #0x2000
	ldrh r1, [r0, #0xec]
	add r0, r2, #0xec
	add r10, r0, #0x2000
	cmp r1, #0
	beq _0211FDC0
	mov r0, r9
	bl FUN_0206cbf8
	ldrh r1, [r10]
	cmp r1, r0
	moveq r8, r7
_0211FDC0:
	ldrh r0, [r6, #0xf4]
	add r4, r4, #1
	cmp r4, r0
	blt _0211FD90
_0211FDD0:
	ldr r4, _0211FE08 ; =0x0209BA20
	mov r0, r4
	bl FUN_02073f08
	cmp r0, #0
	beq _0211FDF4
	mov r0, r4
	bl FUN_020731a4
	cmp r0, #0
	moveq r8, #2
_0211FDF4:
	mov r0, #1
	cmp r8, #0
	movne r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211FE08: .word unk_0209BA20
	arm_func_end FUN_ov63_0211fc6c

	arm_func_start FUN_ov63_0211fe0c
FUN_ov63_0211fe0c: ; 0x0211FE0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r0, r1
	mov r1, r4
	mov r5, r2
	bl  FUN_ov16_020efa9c
	mov r1, r0
	ldr r0, _0211FE44 ; =0x0209BA20
	mov r2, r5
	bl FUN_0204a2dc
	cmp r0, #1
	movge r4, #1
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE44: .word unk_0209BA20
	arm_func_end FUN_ov63_0211fe0c

	arm_func_start FUN_ov63_0211fe48
FUN_ov63_0211fe48: ; 0x0211FE48
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _0211FE6C
	cmp r1, #2
	beq _0211FE9C
	cmp r1, #3
	beq _0211FEB4
	b _0211FEC4
_0211FE6C:
	bl  FUN_ov16_020f066c
	cmp r0, #0
	bne _0211FE94
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211FE94
	ldr r0, _0211FECC ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	beq _0211FEC4
_0211FE94:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0211FE9C:
	add r0, r4, #0x2000
	ldr r0, [r0, #0xe8]
	cmp r0, #0
	bne _0211FEC4
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0211FEB4:
	bl FUN_ov63_0211fed0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_0211FEC4:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0211FECC: .word unk_0209BA20
	arm_func_end FUN_ov63_0211fe48

	arm_func_start FUN_ov63_0211fed0
FUN_ov63_0211fed0: ; 0x0211FED0
	stmfd sp!, {r3, lr}
	bl  FUN_ov16_020f0650
	cmp r0, #0
	beq _0211FEF0
	ldr r0, _0211FF08 ; =0x0209A454
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	bne _0211FF00
_0211FEF0:
	bl  FUN_ov16_020f06bc
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_0211FF00:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0211FF08: .word unk_0209A454
	arm_func_end FUN_ov63_0211fed0

	arm_func_start FUN_ov63_0211ff0c
FUN_ov63_0211ff0c: ; 0x0211FF0C
	mov r2, #6
	mla r0, r1, r2, r0
	add r0, r0, #0x800
	ldrsh r0, [r0, #0x70]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov63_0211ff0c

	arm_func_start FUN_ov63_0211ff2c
FUN_ov63_0211ff2c: ; 0x0211FF2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	add r0, r6, #0xa0
	mov r5, r2
	mov r4, #0
	mov r7, r1
	mov r1, r4
	add r0, r0, #0x2000
	mov r2, #8
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r4
	bl  FUN_ov16_020efa9c
	movs r8, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r7, _0211FFB4 ; =0x0209BA20
	mov r1, r8
	mov r0, r7
	mov r2, r5
	bl FUN_0204a2dc
	add r1, r6, #0x2000
	add r3, r6, #0xa4
	strb r0, [r1, #0xa0]
	strb r5, [r1, #0xa2]
	mov r0, r7
	mov r1, r8
	mov r2, r5
	add r3, r3, #0x2000
	str r4, [sp]
	bl FUN_0204a394
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211FFB4: .word unk_0209BA20
	arm_func_end FUN_ov63_0211ff2c

	arm_func_start FUN_ov63_0211ffb8
FUN_ov63_0211ffb8: ; 0x0211FFB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x198
	mov r5, #0
	mov r7, r0
	add r3, sp, #0xd0
	mov r10, r1
	str r2, [sp, #4]
	mov r9, r5
	mov r0, #0x19
_0211FFDC:
	strh r9, [r3]
	strh r9, [r3, #2]
	strh r9, [r3, #4]
	strh r9, [r3, #6]
	add r3, r3, #8
	subs r0, r0, #1
	bne _0211FFDC
	add r1, sp, #8
	mov r0, #0x19
_02120000:
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strh r5, [r1, #6]
	add r1, r1, #8
	subs r0, r0, #1
	bne _02120000
	bl  FUN_ov16_020f06bc
	cmp r0, #0
	beq _0212003C
	ldr r0, _0212016C ; =0x0209BA20
	mov r1, #2
	bl FUN_0205107c
	mov r8, r0
	b _0212007C
_0212003C:
	ldr r0, _02120170 ; =0x0209A454
	ldr r4, _0212016C ; =0x0209BA20
	ldrb r6, [r0, #0x28]
	mov r0, r4
	mov r1, r6
	bl FUN_0205107c
	add r2, r7, #0xec
	mov r8, r0
	mov r0, r4
	mov r1, r6
	add r2, r2, #0x2000
	mov r3, #4
	str r5, [sp]
	bl FUN_0204b2f4
	add r1, r7, #0x2000
	strh r0, [r1, #0xf4]
_0212007C:
	mov r7, #0
	add r11, sp, #8
	mov r6, r7
_02120088:
	mov r0, r8
	mov r1, r6
	bl FUN_0204fbe8
	mov r1, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _021200B4
	bl FUN_0206cbf8
	mov r1, r7, lsl #1
	strh r0, [r11, r1]
	add r7, r7, #1
_021200B4:
	add r6, r6, #1
	cmp r6, #0x10
	add r4, sp, #8
	blt _02120088
	cmp r7, #0
	mov r1, #0
	ble _021200F0
_021200D0:
	mov r0, r1, lsl #1
	ldrh r0, [r4, r0]
	cmp r10, r0
	moveq r9, r1
	beq _021200F0
	add r1, r1, #1
	cmp r1, r7
	blt _021200D0
_021200F0:
	cmp r1, r7
	movge r9, #0
	cmp r10, #0
	ldr r0, [sp, #4]
	moveq r9, #0
	cmp r0, #0
	moveq r0, r9, lsl #1
	addeq sp, sp, #0x198
	ldreqh r0, [r4, r0]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvnlt r6, #0
	movge r6, #1
	cmp r7, #0
	mov r5, #0
	ble _02120160
_0212012C:
	add r0, r9, r7
	mov r1, r7
	add r0, r6, r0
	bl _s32_div_f
	mov r9, r1
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	cmp r0, #0
	addne sp, sp, #0x198
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, r5, #1
	cmp r5, r7
	blt _0212012C
_02120160:
	mov r0, r10
	add sp, sp, #0x198
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212016C: .word unk_0209BA20
_02120170: .word unk_0209A454
	arm_func_end FUN_ov63_0211ffb8

	arm_func_start FUN_ov63_02120174
FUN_ov63_02120174: ; 0x02120174
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrh r1, [r5, #0x1c]
	mov r2, r4
	bl FUN_ov63_0211ffb8
	ldrh r1, [r5, #0x1c]
	cmp r1, r0
	bne _021201A0
	cmp r4, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_021201A0:
	strh r0, [r5, #0x1c]
	mov r0, r5
	bl FUN_ov63_02120e24
	mov r0, r5
	bl FUN_ov63_02119f8c
	ldrh r1, [r5, #0x1c]
	mov r0, r5
	bl FUN_ov63_021218b8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov63_02120174

	arm_func_start FUN_ov63_021201c4
FUN_ov63_021201c4: ; 0x021201C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #4
	str r1, [r4, #0x10]
	str r2, [r4, #0xc]
	cmp r1, #1
	ldmnefd sp!, {r4, pc}
	bl FUN_ov63_02121908
	add r0, r4, #0x2000
	mov r1, #0
	str r1, [r0, #0xe0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov63_021201c4

	arm_func_start FUN_ov63_021201f4
FUN_ov63_021201f4: ; 0x021201F4
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov63_021201f4

	arm_func_start FUN_ov63_021201fc
FUN_ov63_021201fc: ; 0x021201FC
	ldr r2, _02120224 ; =0x0209A454
	ldrb r2, [r2, #0x29]
	cmp r2, #0
	cmpne r1, #0
	movne r0, #0
	moveq r2, #6
	streq r2, [r0, #0xc]
	streq r1, [r0, #8]
	moveq r0, #1
	bx lr
_02120224: .word unk_0209A454
	arm_func_end FUN_ov63_021201fc

	arm_func_start FUN_ov63_02120228
FUN_ov63_02120228: ; 0x02120228
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x104
	mov r9, r0
	ldrh r0, [r9, #0x1c]
	mov r8, #0
	mov r1, r8
	add r4, sp, #4
	mov r5, #1
	bl  FUN_ov16_020efa9c
	ldr r1, _02120748 ; =0x02099EB4
	mov r7, r0
	mov r6, #3
	ldr r0, [r1]
	mov r1, r6
	bl  FUN_ov16_0210eb3c
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_021109a0
	mov r0, r9
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r9
	bl FUN_ov63_0211ba50
	add r0, r9, #0x2000
	strh r8, [r0, #0x80]
	mov r0, r9
	bl FUN_ov63_021201f4
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _02120740
_021202A0: ; jump table
	b _02120740 ; case 0
	b _021202D4 ; case 1
	b _02120364 ; case 2
	b _02120320 ; case 3
	b _021203A8 ; case 4
	b _021206CC ; case 5
	b _02120704 ; case 6
	b _021204B8 ; case 7
	b _021203EC ; case 8
	b _0212052C ; case 9
	b _0212058C ; case 10
	b _021205FC ; case 11
	b _0212066C ; case 12
_021202D4:
	mov r0, r9
	bl FUN_ov63_02124184
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	add r2, r6, #0xbf0
	add r1, r9, #0x2000
	strh r2, [r1, #0x7e]
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl FUN_ov63_0211b878
	mov r1, r0
	mov r0, r9
	bl FUN_ov63_0211bb68
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02120320:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	add r2, r6, #0x3f0
	add r1, r9, #0x2000
	strh r2, [r1, #0x7e]
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl FUN_ov63_0211b878
	mov r1, r0
	mov r0, r9
	bl FUN_ov63_0211bd08
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02120364:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	add r1, r9, #0x2000
	mov r2, #0xc3
	strh r2, [r1, #0x7e]
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl FUN_ov63_0211b878
	mov r1, r0
	mov r0, r9
	bl FUN_ov63_0211c2f0
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021203A8:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	add r1, r9, #0x2000
	mov r2, #0xc3
	strh r2, [r1, #0x7e]
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl FUN_ov63_0211b878
	mov r1, r0
	mov r0, r9
	bl FUN_ov63_0211c5e0
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021203EC:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	bl FUN_ov63_02121710
	add r2, r9, #0x2000
	ldr r1, [r2, #0x8c]
	ldr r0, _0212074C ; =0x0209BA20
	strh r5, [r2, #0x7e]
	bl FUN_0204a2c4
	cmp r0, #0
	bne _0212042C
	add r0, sp, #4
	ldr r1, _02120750 ; =0x021249A0
	ldr r2, _02120754 ; =0x021249BC
	b _02120458
_0212042C:
	ldr r3, [r9, #0x90]
	cmp r3, #0
	bne _02120448
	add r0, sp, #4
	ldr r1, _02120758 ; =0x021249D4
	ldr r2, _0212075C ; =0x021249F0
	b _02120458
_02120448:
	ldrh r2, [r0, #0x18]
	ldr r1, _02120760 ; =0x02124A08
	add r0, sp, #4
	add r2, r3, r2, lsl #5
_02120458:
	bl sprintf
	mov r0, r9
	mov r1, #0x32
	bl FUN_ov63_02121750
	add r0, r9, #0x2000
	mov r4, #0
	ldr r0, [r0, #0x74]
	ldr r2, [r9, #0x170]
	mov r1, r4
	bl  FUN_ov16_02110624
	str r5, [sp]
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	add r2, sp, #4
	mov r3, r5
	mov r1, #2
	bl  FUN_ov16_02110938
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_02110a04
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021204B8:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	bl FUN_ov63_02121710
	add r2, r9, #0x2000
	mov r0, r9
	mov r1, #0x32
	strh r5, [r2, #0x7e]
	bl FUN_ov63_02121750
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	ldr r2, [r9, #0x170]
	mov r1, r8
	bl  FUN_ov16_02110624
	str r5, [sp]
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	ldr r2, _02120764 ; =0x02124A24
	mov r1, #2
	mov r3, r5
	bl  FUN_ov16_02110938
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, r8
	mov r2, r5
	bl  FUN_ov16_02110a04
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0212052C:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	bl FUN_ov63_02121710
	add r2, r9, #0x2000
	mov r0, r9
	mov r1, #0x34
	strh r5, [r2, #0x7e]
	bl FUN_ov63_02121750
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	ldr r2, [r9, #0x178]
	mov r1, r5
	bl  FUN_ov16_02110624
	add r0, r9, #0x2000
	str r5, [sp]
	ldr r0, [r0, #0x74]
	ldr r2, _02120768 ; =0x02124A70
	mov r1, r6
	mov r3, r5
	bl  FUN_ov16_02110938
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0212058C:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	bl FUN_ov63_02121710
	add r0, r9, #0x2000
	strh r5, [r0, #0x7e]
	mov r0, r9
	mov r1, #0x35
	bl FUN_ov63_02121750
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	ldr r2, [r9, #0x17c]
	mov r1, r5
	bl  FUN_ov16_02110624
	ldr r1, _0212076C ; =0x02124A9C
	add r2, r7, #0x1c
	mov r0, r4
	bl sprintf
	add r0, r9, #0x2000
	str r5, [sp]
	ldr r0, [r0, #0x74]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_02110938
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021205FC:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	bl FUN_ov63_02121710
	add r0, r9, #0x2000
	strh r5, [r0, #0x7e]
	ldr r1, _02120770 ; =0x02124AC8
	add r2, r7, #0x1c
	mov r0, r4
	bl sprintf
	mov r0, r9
	mov r1, #0x33
	bl FUN_ov63_02121750
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	ldr r2, [r9, #0x174]
	mov r1, r8
	bl  FUN_ov16_02110624
	add r0, r9, #0x2000
	str r5, [sp]
	ldr r0, [r0, #0x74]
	mov r2, r4
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_02110938
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0212066C:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	bl FUN_ov63_02121710
	add r2, r9, #0x2000
	mov r0, r9
	mov r1, #0x33
	strh r5, [r2, #0x7e]
	bl FUN_ov63_02121750
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	ldr r2, [r9, #0x174]
	mov r1, r8
	bl  FUN_ov16_02110624
	add r0, r9, #0x2000
	str r5, [sp]
	ldr r0, [r0, #0x74]
	ldr r2, _02120774 ; =0x02124AF8
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_02110938
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021206CC:
	mov r0, r9
	add r1, r9, #0x2000
	mov r2, #0xf3
	strh r2, [r1, #0x7e]
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl FUN_ov63_0211b878
	mov r1, r0
	mov r0, r9
	bl FUN_ov63_0211c79c
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02120704:
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_021109a0
	mov r0, r9
	add r1, r9, #0x2000
	mov r2, #0xc3
	strh r2, [r1, #0x7e]
	bl FUN_ov63_021201f4
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl FUN_ov63_0211b878
	mov r1, r0
	mov r0, r9
	bl FUN_ov63_0211cbbc
_02120740:
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02120748: .word unk_02099EB4
_0212074C: .word unk_0209BA20
_02120750: .word ov63_021249A0
_02120754: .word ov63_021249BC
_02120758: .word ov63_021249D4
_0212075C: .word ov63_021249F0
_02120760: .word ov63_02124A08
_02120764: .word ov63_02124A24
_02120768: .word ov63_02124A70
_0212076C: .word ov63_02124A9C
_02120770: .word ov63_02124AC8
_02120774: .word ov63_02124AF8
	arm_func_end FUN_ov63_02120228

	arm_func_start FUN_ov63_02120778
FUN_ov63_02120778: ; 0x02120778
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r5, #1
	mov r6, #0
	bl FUN_ov63_0211b8bc
	movs r7, r0
	beq _02120B5C
	ldr r0, [r7, #0x1c]
	cmp r0, #1
	beq _021207B8
	cmp r0, #2
	beq _02120A40
	cmp r0, #3
	beq _02120B28
	b _02120B54
_021207B8:
	ldr r0, _02120C80 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	mov r8, r0
	ldrh r1, [r10, #0x1c]
	ldr r2, [r7]
	mov r0, r10
	bl FUN_ov63_0211fe0c
	cmp r0, #0
	beq _0212087C
	add r1, r10, #0x2000
	ldrh r2, [r1, #0x80]
	ldr r0, _02120C84 ; =0x0000FFFE
	str r6, [r1, #0xd4]
	and r0, r2, r0
	strh r0, [r1, #0x80]
	cmp r8, #0
	beq _02120B5C
	mov r1, r5
	mov r2, r5
	mov r3, r6
	strb r6, [r8, #0xf]
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r4, #7
	ldr r1, [r10, #0xac]
	mov r2, r4
	add r0, r8, #0x3a
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r8, #0x3e
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	ldr r1, [r10, #0xb0]
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r8, #0x42
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x42
	mov r2, r4
	b _02120AF8
_0212087C:
	add r0, r10, #0x2000
	ldrh r1, [r0, #0x80]
	str r5, [r0, #0xd4]
	cmp r8, #0
	orr r1, r1, #1
	strh r1, [r0, #0x80]
	mov r11, r5
	beq _0212091C
	mov r1, r5
	mov r2, r5
	mov r3, r6
	strb r6, [r8, #0xf]
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3a
	ldr r1, [r10, #0xac]
	mov r4, #7
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r8, #0x3e
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	ldr r1, [r10, #0xb0]
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r8, #0x42
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	mov r2, r4
	mov r3, r6
	add r0, r8, #0x42
	ldr r1, [r10, #0xb4]
	bl  FUN_ov16_0210e720
_0212091C:
	ldr r0, [r7]
	cmp r0, #4
	beq _02120930
	cmp r0, #5
	bne _02120B5C
_02120930:
	ldrh r0, [r10, #0x1c]
	mov r1, r6
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _02120B5C
	ldr r1, [r7]
	bl FUN_0206cdf8
	cmp r0, #0
	bne _02120B5C
	add r1, r10, #0x2000
	ldrh r2, [r1, #0x80]
	ldr r0, _02120C84 ; =0x0000FFFE
	str r6, [r1, #0xd4]
	and r0, r2, r0
	strh r0, [r1, #0x80]
	cmp r8, #0
	beq _02120B5C
	mov r1, r11
	mov r2, r11
	mov r3, r6
	strb r6, [r8, #0xf]
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r4, #9
	ldr r1, [r10, #0xac]
	mov r2, r4
	add r0, r8, #0x3a
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r8, #0x3e
	mov r1, r11
	mov r2, r11
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	ldr r1, [r10, #0xb0]
	add r0, r8, #0x3e
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r8, #0x42
	mov r1, r11
	mov r2, r11
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	ldr r1, [r10, #0xb4]
	add r0, r8, #0x42
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_0210e720
	ldr r0, _02120C88 ; =0x020A0640
	mov r4, #1
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	addne r0, r10, #0x2000
	ldrneh r1, [r0, #0x80]
	strne r11, [r0, #0xd4]
	orrne r1, r1, #1
	strneh r1, [r0, #0x80]
	ldr r0, _02120C8C ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	beq _02120B5C
	add r0, r10, #0x2000
	ldrh r1, [r0, #0x80]
	str r4, [r0, #0xd4]
	orr r1, r1, #1
	strh r1, [r0, #0x80]
	b _02120B5C
_02120A40:
	ldr r0, _02120C80 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	mov r4, r0
	ldr r1, [r7]
	mov r0, r10
	bl FUN_ov63_0211fe48
	cmp r0, #1
	bne _02120B08
	add r1, r10, #0x2000
	ldrh r2, [r1, #0x80]
	ldr r0, _02120C84 ; =0x0000FFFE
	str r6, [r1, #0xd4]
	and r0, r2, r0
	strh r0, [r1, #0x80]
	cmp r4, #0
	beq _02120B5C
_02120A88:
	mov r1, r5
	mov r2, r5
	mov r3, r6
	strb r6, [r4, #0xf]
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r1, [r10, #0xac]
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	ldr r1, [r10, #0xb0]
	add r0, r4, #0x3e
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r4, #0x42
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r2, r5
_02120AF8:
	ldr r1, [r10, #0xb4]
	mov r3, r6
	bl  FUN_ov16_0210e720
	b _02120B5C
_02120B08:
	add r0, r10, #0x2000
	ldrh r1, [r0, #0x80]
	str r5, [r0, #0xd4]
	cmp r4, #0
	orr r1, r1, #1
	strh r1, [r0, #0x80]
	beq _02120B5C
	b _02120A88
_02120B28:
	ldr r1, [r7]
	mov r0, r10
	bl FUN_ov63_0211ff0c
	cmp r0, #1
	bne _02120B5C
	add r1, r10, #0x2000
	ldrh r2, [r1, #0x80]
	ldr r0, _02120C84 ; =0x0000FFFE
	and r0, r2, r0
	strh r0, [r1, #0x80]
	b _02120B5C
_02120B54:
	add r0, r10, #0x2000
	str r6, [r0, #0xd4]
_02120B5C:
	mov r0, r10
	bl FUN_ov63_021201f4
	mov r0, r5, lsl r0
	tst r0, #0xf80
	beq _02120C18
	ldr r0, _02120C80 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _02120C18
	add r0, r10, #0x2000
	ldrh r2, [r0, #0x80]
	mov r1, r5
	mov r3, r6
	orr r2, r2, #0x400
	strh r2, [r0, #0x80]
	mov r2, r5
	strb r6, [r4, #0xf]
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r7, #7
	ldr r1, [r10, #0xac]
	mov r2, r7
	mov r3, r6
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	ldr r1, [r10, #0xb0]
	add r0, r4, #0x3e
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r4, #0x42
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	ldr r1, [r10, #0xb4]
	add r0, r4, #0x42
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_0210e720
_02120C18:
	add r0, r10, #0x2000
	ldrh r0, [r0, #0x80]
	mov r8, #0
	ldr r7, _02120C80 ; =0x02099EB4
	mvn r0, r0
	and r0, r9, r0
	mov r4, r0, lsl #0x10
	b _02120C74
_02120C38:
	mov r0, r5, lsl r8
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r7]
	mov r1, r9
	bl  FUN_ov16_0210ebd4
	movs r1, r0
	beq _02120C70
	tst r9, r4, lsr #16
	moveq r0, r5
	movne r0, r6
	strb r0, [r1, #0x10]
	ldr r0, [r7]
	bl  FUN_ov16_0210ee80
_02120C70:
	add r8, r8, #1
_02120C74:
	cmp r8, #0x10
	blt _02120C38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120C80: .word unk_02099EB4
_02120C84: .word 0x0000FFFE
_02120C88: .word unk_020A0640
_02120C8C: .word unk_0209BA20
	arm_func_end FUN_ov63_02120778

	arm_func_start FUN_ov63_02120c90
FUN_ov63_02120c90: ; 0x02120C90
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add r0, r0, #0x2000
	ldrb r2, [r0, #0xd8]
	cmp r2, #0
	moveq r1, #1
	streqb r1, [r0, #0xd8]
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldrh r0, [r0, #0x7e]
	ldr r4, _02120CF4 ; =0x02099EB4
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
_02120CF4: .word unk_02099EB4
	arm_func_end FUN_ov63_02120c90

	arm_func_start FUN_ov63_02120cf8
FUN_ov63_02120cf8: ; 0x02120CF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl FUN_ov63_0211b8bc
	mov r1, r0
	cmp r5, #3
	beq _02120D20
	cmp r5, #6
	beq _02120DA0
	b _02120DC4
_02120D20:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _02120D64
	ldr r0, _02120DD8 ; =0x02099EB4
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210ebd4
	movs r1, r0
	ldr r0, _02120DD8 ; =0x02099EB4
	strneb r5, [r1, #0x10]
	ldr r0, [r0]
	bl  FUN_ov16_0210ee80
	add r0, r4, #0x2000
	ldrh r1, [r0, #0x7e]
	bic r1, r1, #1
	b _02120D98
_02120D64:
	ldr r0, _02120DD8 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	bl  FUN_ov16_0210ebd4
	movs r1, r0
	movne r0, #0
	strneb r0, [r1, #0x10]
	ldr r0, _02120DD8 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210ee80
	add r0, r4, #0x2000
	ldrh r1, [r0, #0x7e]
	orr r1, r1, #1
_02120D98:
	strh r1, [r0, #0x7e]
	b _02120DC4
_02120DA0:
	mov r0, r4
	bl FUN_ov63_02122484
	cmp r0, #0
	add r0, r4, #0x2000
	ldrh r1, [r0, #0x7e]
	biceq r1, r1, #1
	streqh r1, [r0, #0x7e]
	orrne r1, r1, #1
	strneh r1, [r0, #0x7e]
_02120DC4:
	add r0, r4, #0x2000
	ldrh r1, [r0, #0x7e]
	mov r0, r4
	bl FUN_ov63_02120778
	ldmfd sp!, {r3, r4, r5, pc}
_02120DD8: .word unk_02099EB4
	arm_func_end FUN_ov63_02120cf8

	arm_func_start FUN_ov63_02120ddc
FUN_ov63_02120ddc: ; 0x02120DDC
	stmfd sp!, {r3, lr}
	ldr r3, [r1, #0x10]
	cmp r3, #0
	ldmltfd sp!, {r3, pc}
	ldr r0, [r1, #8]
	cmp r3, r0
	ldrlt r2, [r1]
	ldrlt r0, [r1, #4]
	cmplt r2, r0
	ldmgefd sp!, {r3, pc}
	ldr r0, _02120E20 ; =0x02099EB4
	add r1, r3, #9
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_02120E20: .word unk_02099EB4
	arm_func_end FUN_ov63_02120ddc

	arm_func_start FUN_ov63_02120e24
FUN_ov63_02120e24: ; 0x02120E24
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1bc]
	cmp r0, #0
	bne _02120E64
	ldr r4, _02120EA0 ; =0x02099F38
	mov r1, #3
	ldr r0, [r4]
	mov r2, #1
	bl FUN_02059630
	mov r1, r0
	str r1, [r5, #0x1bc]
	mov r2, #0
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
_02120E64:
	ldrh r0, [r5, #0x1c]
	mov r1, #0
	ldr r4, [r5, #0x1bc]
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	ldreq r0, _02120EA4 ; =0x02124B3C
	add r2, sp, #0
	streq r0, [sp]
	addne r0, r0, #0x1c
	strne r0, [sp]
	mov r0, r5
	mov r1, r4
	mov r3, #1
	bl FUN_ov63_02120ea8
	ldmfd sp!, {r3, r4, r5, pc}
_02120EA0: .word unk_02099F38
_02120EA4: .word ov63_02124B3C
	arm_func_end FUN_ov63_02120e24

	arm_func_start FUN_ov63_02120ea8
FUN_ov63_02120ea8: ; 0x02120EA8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _02120FA8 ; =0x02099F38
	mov r10, r2
	ldr r0, [r4]
	mov r9, r3
	mov r7, #0
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl  FUN_ov16_02111458
	ldr r4, _02120FAC ; =0x02099F50
	mov r8, r0
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_02043310
	mov r5, r7
	mov r11, #1
	b _02120F58
_02120F0C:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _02120F54
	mov r0, #0xd
	mul r0, r7, r0
	str r8, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r11, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r0, [r4]
	ldr r1, [r10, r7, lsl #2]
	mov r2, r6
	mov r3, #0x40
	bl FUN_020425fc
_02120F54:
	add r7, r7, #1
_02120F58:
	cmp r7, r9
	blt _02120F0C
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl DC_FlushRange
	ldr r0, _02120FAC ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, _02120FA8 ; =0x02099F38
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r6
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120FA8: .word unk_02099F38
_02120FAC: .word unk_02099F50
	arm_func_end FUN_ov63_02120ea8

	arm_func_start FUN_ov63_02120fb0
FUN_ov63_02120fb0: ; 0x02120FB0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x6f]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _02120FE4
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _02120FEC
_02120FE4:
	mov r0, #0
	str r0, [sp, #0x28]
_02120FEC:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x6e]
	ldr r0, _02121050 ; =0x02099ED4
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl  FUN_ov16_0210e29c
	ldrb r1, [r4, #0x6e]
	ldr r0, _02121054 ; =0x02099F38
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r3, #1
	bl  FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_02121050: .word unk_02099ED4
_02121054: .word unk_02099F38
	arm_func_end FUN_ov63_02120fb0

	arm_func_start FUN_ov63_02121058
FUN_ov63_02121058: ; 0x02121058
	stmfd sp!, {r3, lr}
	ldr r12, [r1, #0x10]
	cmp r12, #0
	blt _02121074
	ldr r3, [r1, #8]
	cmp r12, r3
	blt _021210A0
_02121074:
	ldrb r0, [r1, #0x6f]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r3, [r1, #0x6e]
	ldr r0, _021210BC ; =0x02099F38
	mov r2, #2
	add r1, r1, r3, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	bl  FUN_ov16_02114370
	ldmfd sp!, {r3, pc}
_021210A0:
	str r2, [sp]
	ldr r2, [r1, #0x10]
	add r3, r1, r2, lsl #2
	ldrsh r2, [r3, #0x82]
	ldrsh r3, [r3, #0x84]
	bl FUN_ov63_02120fb0
	ldmfd sp!, {r3, pc}
_021210BC: .word unk_02099F38
	arm_func_end FUN_ov63_02121058

	arm_func_start FUN_ov63_021210c0
FUN_ov63_021210c0: ; 0x021210C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r9, r1
	ldrb r0, [r9, #0x6d]
	mov r8, r2
	mov r7, r3
	cmp r0, #3
	addlo sp, sp, #0x1c
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r9, #0x7c]
	mov r6, #0
	mov r5, #0
	cmp r0, #0
	ldrne r1, [r9, #4]
	ldrne r0, [r9, #8]
	mov r4, #2
	cmpne r1, r0
	movgt r6, #1
	ldr r10, _021211A8 ; =0x02099F38
	b _02121134
_02121110:
	ldrb r1, [r9, #0x6c]
	ldr r0, [r10]
	mov r2, r4
	add r1, r1, r5
	add r1, r9, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r6
	bl  FUN_ov16_021142fc
	add r5, r5, #1
_02121134:
	ldrb r0, [r9, #0x6d]
	cmp r5, r0
	blt _02121110
	cmp r6, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r8}
	ldr r0, [sp, #0x40]
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r9, #0x6c]
	ldr r0, _021211AC ; =0x02099ED4
	mov r2, r1
	add r3, r9, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl  FUN_ov16_0210e29c
	ldr r0, _021211B0 ; =0x02099EB4
	mov r2, r8
	ldr r0, [r0]
	mov r3, r7
	mov r1, #0x16
	bl  FUN_ov16_0210fd0c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_021211A8: .word unk_02099F38
_021211AC: .word unk_02099ED4
_021211B0: .word unk_02099EB4
	arm_func_end FUN_ov63_021210c0

	arm_func_start FUN_ov63_021211b4
FUN_ov63_021211b4: ; 0x021211B4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrsh r3, [r4, #0xc8]
	ldr r1, [r4, #0xc]
	mov r5, r0
	mul r0, r3, r1
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	mov r6, r2
	sub r1, r3, r1
	bl _s32_div_f
	str r6, [sp]
	mov lr, r0
	ldrsh r1, [r4, #0x80]
	ldrsh r0, [r4, #0xc4]
	ldrsh r12, [r4, #0x7e]
	ldrsh r2, [r4, #0xc2]
	add r3, r1, r0
	mov r0, r5
	mov r1, r4
	add r2, r12, r2
	add r3, r3, lr
	bl FUN_ov63_021210c0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov63_021211b4

	arm_func_start FUN_ov63_0212121c
FUN_ov63_0212121c: ; 0x0212121C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r5, r0
	mov r7, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r4, #0x1c]
	cmp r3, #5
	bne _02121260
	ldr r3, [r4, #0x10]
	str r2, [r4]
	str r2, [r4, #0x10]
	mov r2, r7
	str r3, [r4, #0x18]
	mov r6, #1
	bl FUN_ov63_02121058
	b _021212FC
_02121260:
	cmp r3, #3
	mov r0, r4
	mov r1, r2
	bne _021212AC
	bl  FUN_ov16_020f52f4
	mov r6, r0
	tst r6, #1
	beq _02121290
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_ov63_02121058
_02121290:
	mov r0, r5
	mov r1, r4
	bl FUN_ov63_0211f5d8
	mov r0, r5
	mov r1, r4
	bl FUN_ov63_0211f66c
	b _021212FC
_021212AC:
	bl  FUN_ov16_020f52f4
	mov r6, r0
	tst r6, #1
	beq _021212CC
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_ov63_02121058
_021212CC:
	tst r6, #2
	beq _021212FC
	mov r0, r5
	mov r1, r4
	bl FUN_ov63_0211f5d8
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _021212FC
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_ov63_021211b4
_021212FC:
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	cmpne r0, #3
	cmpne r0, #4
	bne _02121328
	ldr r1, [r4]
	mov r0, r5
	mov r2, #1
	bl FUN_ov63_02121534
	add r1, r5, #0x2000
	strh r0, [r1, #0xf6]
_02121328:
	add r0, r5, #0x2000
	ldrh r1, [r0, #0x7e]
	mov r0, r5
	bl FUN_ov63_02120778
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov63_0212121c

	arm_func_start FUN_ov63_02121340
FUN_ov63_02121340: ; 0x02121340
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r1, [r5, #4]
	ldr r12, [r5]
	mov r6, r0
	add r0, r1, r12
	mov r4, r3
	add r0, r2, r0
	bl _s32_div_f
	mov r2, r1
	mov r12, #1
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov63_0212121c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov63_02121340

	arm_func_start FUN_ov63_0212138c
FUN_ov63_0212138c: ; 0x0212138C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	ldr r1, [r7]
	ldr r5, [r7, #4]
	adds r4, r1, r2
	mov r8, r0
	mov r6, r3
	submi r4, r5, #1
	bmi _021213B8
	cmp r5, r4
	movle r4, #0
_021213B8:
	mov r1, r5
	add r0, r5, r4
	bl _s32_div_f
	mov r0, r4, asr #2
	add r0, r4, r0, lsr #29
	mov r4, r0, asr #3
	mov r9, r1
	mov r1, r5
	add r0, r5, r4, lsl #3
	bl _s32_div_f
	mov r2, r9, lsr #0x1f
	rsb r0, r2, r9, lsl #29
	add r0, r2, r0, ror #29
	str r1, [r7, #0xc]
	mov r5, #0
	add r2, r0, r4, lsl #3
	mov r0, r8
	mov r1, r7
	mov r3, r6
	str r5, [sp]
	bl FUN_ov63_0212121c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov63_0212138c

	arm_func_start FUN_ov63_02121410
FUN_ov63_02121410: ; 0x02121410
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	ldr r5, [r8, #4]
	ldr r6, [r8]
	mov r9, r0
	mov r1, r5
	add r0, r5, r6
	mov r4, r2
	mov r7, r3
	bl _s32_div_f
	mov r0, r6, asr #2
	add r0, r6, r0, lsr #29
	adds r4, r4, r0, asr #3
	mov r0, r5, asr #2
	add r0, r5, r0, lsr #29
	movmi r0, r0, asr #3
	mov r6, r1
	submi r4, r0, #1
	bmi _02121464
	cmp r4, r0, asr #3
	movge r4, #0
_02121464:
	mov r1, r5
	add r0, r5, r4, lsl #3
	bl _s32_div_f
	mov r2, r6, lsr #0x1f
	rsb r0, r2, r6, lsl #29
	add r2, r2, r0, ror #29
	str r1, [r8, #0xc]
	mov r5, #0
	mov r0, r9
	mov r1, r8
	mov r3, r7
	add r2, r2, r4, lsl #3
	str r5, [sp]
	bl FUN_ov63_0212121c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov63_02121410

	arm_func_start FUN_ov63_021214a0
FUN_ov63_021214a0: ; 0x021214A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r2
	bl  FUN_ov16_020f53e8
	mov r4, r0
	tst r4, #1
	beq _021214E0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov63_02121058
_021214E0:
	tst r4, #2
	beq _02121510
	mov r0, r7
	mov r1, r6
	bl FUN_ov63_0211f5d8
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _02121510
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov63_021211b4
_02121510:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov63_021214a0

	arm_func_start FUN_ov63_02121518
FUN_ov63_02121518: ; 0x02121518
	stmfd sp!, {r3, lr}
	mov r12, #1
	str r12, [sp]
	ldr r12, [r1, #0xc]
	add r2, r12, r2
	bl FUN_ov63_021214a0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov63_02121518

	arm_func_start FUN_ov63_02121534
FUN_ov63_02121534: ; 0x02121534
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, #0
	bl FUN_ov63_021201f4
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02121628
_02121558: ; jump table
	b _02121628 ; case 0
	b _02121588 ; case 1
	b _02121628 ; case 2
	b _021215C8 ; case 3
	b _021215EC ; case 4
	b _02121628 ; case 5
	b _02121628 ; case 6
	b _02121620 ; case 7
	b _02121620 ; case 8
	b _02121620 ; case 9
	b _02121620 ; case 10
	b _02121620 ; case 11
_02121588:
	cmp r6, #6
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r7, #0x1c]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	bl FUN_0206cdf8
	mov r4, r0
	cmp r4, #0
	cmple r6, #4
	mvnlt r4, #0
	b _02121628
_021215C8:
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov63_0211d070
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r4, [r0]
	b _02121628
_021215EC:
	cmp r6, #2
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r7, #0x1c]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r6, #4
	bl FUN_0206cdf8
	mov r4, r0
	b _02121628
_02121620:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121628:
	cmp r5, #0
	cmpne r4, #0
	movlt r4, #0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov63_02121534

	arm_func_start FUN_ov63_0212163c
FUN_ov63_0212163c: ; 0x0212163C
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r1
	mov r5, r2
	bmi _02121654
	cmp r6, #6
	blt _0212165C
_02121654:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0212165C:
	ldrh r0, [r0, #0x1c]
	mov r4, #0
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r6
	bl FUN_0206cdf8
	cmp r0, #0
	cmple r6, #4
	sublt r0, r4, #1
	cmp r5, #0
	cmpne r0, #0
	movlt r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov63_0212163c

	arm_func_start FUN_ov63_0212169c
FUN_ov63_0212169c: ; 0x0212169C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r3, #1
	str r3, [sp]
	mov r2, #0xe
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r2, r1, lsl #0x10
	str r3, [sp, #0xc]
	add r3, r0, #0x84
	ldr r0, [r0, #0x84]
	ldr r1, _021216E4 ; =0x02124B48
	mov r2, r2, lsr #0x10
	add r3, r3, #0x2000
	bl  FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_021216E4: .word ov63_02124B48
	arm_func_end FUN_ov63_0212169c

	arm_func_start FUN_ov63_021216e8
FUN_ov63_021216e8: ; 0x021216E8
	stmfd sp!, {r3, lr}
	cmn r1, #1
	ldreq r0, [r0, #0x114]
	ldmeqfd sp!, {r3, pc}
	mov r1, r1, lsl #0x10
	add r2, r0, #0x84
	mov r0, r1, lsr #0x10
	add r1, r2, #0x2000
	bl  FUN_ov16_020f5738
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov63_021216e8

	arm_func_start FUN_ov63_02121710
FUN_ov63_02121710: ; 0x02121710
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x2000
	ldr r1, [r0, #0xd0]
	mvn r4, #0
	cmp r1, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0212174C ; =0x02099F38
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0xa8]
	ldr r0, [r0]
	bl FUN_020591e8
	add r0, r5, #0x2000
	str r4, [r0, #0xd0]
	ldmfd sp!, {r3, r4, r5, pc}
_0212174C: .word unk_02099F38
	arm_func_end FUN_ov63_02121710

	arm_func_start FUN_ov63_02121750
FUN_ov63_02121750: ; 0x02121750
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov63_02121710
	add r0, r5, #0x2000
	mov r2, #0
	ldr r3, _02121788 ; =0x02099F38
	str r4, [r0, #0xd0]
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xa8]
	ldr r0, [r3]
	mov r3, r2
	bl FUN_02059038
	ldmfd sp!, {r3, r4, r5, pc}
_02121788: .word unk_02099F38
	arm_func_end FUN_ov63_02121750

	arm_func_start FUN_ov63_0212178c
FUN_ov63_0212178c: ; 0x0212178C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl FUN_ov63_0211b8bc
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov63_021201f4
	cmp r0, #0
	beq _021217F0
	ldrh r0, [r5, #0x1c]
	mov r6, #0
	mov r1, r6
	bl  FUN_ov16_020efa9c
	mov r7, r0
_021217C4:
	cmp r7, #0
	beq _021217F0
	mov r0, r7
	mov r1, r6
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r5
	bl FUN_ov63_0212169c
	add r6, r6, #1
	cmp r6, #6
	blt _021217C4
_021217F0:
	mov r0, r5
	bl FUN_ov63_021201f4
	cmp r0, #3
	bne _02121848
	cmp r4, #0
	ldrne r0, [r4, #8]
	movne r7, #0
	cmpne r0, #0
	ble _02121848
	mov r6, #1
_02121818:
	ldr r1, [r4, #0xc]
	mov r0, r5
	mov r2, r6
	add r1, r1, r7
	bl FUN_ov63_02121534
	mov r1, r0
	mov r0, r5
	bl FUN_ov63_0212169c
	ldr r0, [r4, #8]
	add r7, r7, #1
	cmp r7, r0
	blt _02121818
_02121848:
	mov r0, r5
	bl FUN_ov63_021201f4
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0x2000
	ldr r1, [r0, #0x8c]
	mov r0, r5
	bl FUN_ov63_0212169c
	ldr r0, [r4, #8]
	mov r7, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #1
_02121884:
	ldr r1, [r4, #0xc]
	mov r0, r5
	mov r2, r6
	add r1, r1, r7
	bl FUN_ov63_02121534
	mov r1, r0
	mov r0, r5
	bl FUN_ov63_0212169c
	ldr r0, [r4, #8]
	add r7, r7, #1
	cmp r7, r0
	blt _02121884
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov63_0212178c

	arm_func_start FUN_ov63_021218b8
FUN_ov63_021218b8: ; 0x021218B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r0, r1
	mov r1, r5
	bl  FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
_021218D8:
	mov r0, r4
	mov r1, r5
	bl FUN_0206cdf8
	mov r1, r0
	cmp r1, #0
	ble _021218F8
	mov r0, r6
	bl FUN_ov63_0212169c
_021218F8:
	add r5, r5, #1
	cmp r5, #6
	blt _021218D8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov63_021218b8

	arm_func_start FUN_ov63_02121908
FUN_ov63_02121908: ; 0x02121908
	mov r2, #0
	add r0, r0, #0x2000
	sub r1, r2, #1
	str r2, [r0, #0x94]
	str r1, [r0, #0x98]
	str r1, [r0, #0x9c]
	bx lr
	arm_func_end FUN_ov63_02121908

	arm_func_start FUN_ov63_02121924
FUN_ov63_02121924: ; 0x02121924
	ldr r2, [r1, #0x1c]
	add r0, r0, #0x2000
	str r2, [r0, #0x94]
	ldr r2, [r1]
	str r2, [r0, #0x98]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x9c]
	bx lr
	arm_func_end FUN_ov63_02121924

	arm_func_start FUN_ov63_02121944
FUN_ov63_02121944: ; 0x02121944
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #0x2000
	ldr r2, [r4, #0x1c]
	ldr r1, [r0, #0x94]
	cmp r2, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x98]
	mov r0, r4
	bl  FUN_ov16_020f52f4
	add r0, r5, #0x2000
	ldr r1, [r0, #0x9c]
	mov r0, r4
	bl  FUN_ov16_020f53e8
	mov r0, r5
	bl FUN_ov63_02121908
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov63_02121944

	arm_func_start FUN_ov63_0212198c
FUN_ov63_0212198c: ; 0x0212198C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r1
	mov r8, r0
	mov r4, #1
	mov r5, #0
	cmp r6, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02121ED8 ; =0x02099EB4
	mov r1, r6, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r6, #9
	blt _02121AE0
	cmp r6, #0x11
	bgt _02121AE0
	mov r0, r8
	sub r6, r6, #9
	bl FUN_ov63_0211b8bc
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	strb r5, [r7, #0x70]
	ldr r1, [r7]
	ldr r0, [r7, #0xc]
	sub r0, r1, r0
	cmp r6, r0
	streqb r4, [r7, #0x70]
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #4]
	add r1, r6, r1
	cmp r1, r0
	bge _02121AD0
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [sp]
	ldr r2, [r7, #0xc]
	mov r0, r8
	mov r1, r7
	add r2, r6, r2
	mov r3, #4
	bl FUN_ov63_0212121c
	mov r0, r8
	bl FUN_ov63_021201f4
	cmp r0, #5
	beq _02121A54
	mov r0, r8
	bl FUN_ov63_021201f4
	cmp r0, #6
	bne _02121A88
_02121A54:
	add r0, r8, #0x2000
	mov r1, #0
	ldr r0, [r0, #0x78]
	mov r2, r1
	bl  FUN_ov16_02110a04
	mov r0, r8
	bl FUN_ov63_021201f4
	cmp r0, #6
	bne _02121AB0
	ldr r1, [r8, #0x10]
	mov r0, r8
	bl FUN_ov63_02120cf8
	b _02121AB0
_02121A88:
	mov r0, r8
	bl FUN_ov63_021201f4
	cmp r0, #2
	beq _02121AB0
	ldr r1, [r7]
	mov r0, r8
	mov r2, #1
	bl FUN_ov63_02121534
	add r1, r8, #0x2000
	strh r0, [r1, #0xf6]
_02121AB0:
	mov r0, r8
	bl FUN_ov63_021201f4
	cmp r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	mov r1, r7
	bl FUN_ov63_02122484
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121AD0:
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121AE0:
	cmp r6, #0x17
	bne _02121B0C
	add r0, r8, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121B0C:
	cmp r6, #0x18
	bne _02121B38
	add r0, r8, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121B38:
	cmp r6, #0x12
	bne _02121BAC
	mov r0, r8
	bl FUN_ov63_0211b8bc
	mov r9, r0
	ldr r7, [r9]
	ldr r6, [r9, #0xc]
	mov r0, r8
	mov r1, r9
	mov r3, r5
	mvn r2, #0
	sub r6, r7, r6
	bl FUN_ov63_02121518
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [r9, #0xc]
	mov r0, r8
	mov r1, r9
	mov r3, r5
	add r2, r2, r6
	str r4, [sp]
	bl FUN_ov63_0212121c
	mov r0, r8
	mov r1, r9
	bl FUN_ov63_02122484
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121BAC:
	cmp r6, #0x13
	bne _02121C20
	mov r0, r8
	bl FUN_ov63_0211b8bc
	mov r9, r0
	ldr r7, [r9]
	ldr r6, [r9, #0xc]
	mov r0, r8
	mov r1, r9
	mov r2, r4
	mov r3, r5
	sub r6, r7, r6
	bl FUN_ov63_02121518
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [r9, #0xc]
	mov r0, r8
	mov r1, r9
	mov r3, r5
	add r2, r2, r6
	str r4, [sp]
	bl FUN_ov63_0212121c
	mov r0, r8
	mov r1, r9
	bl FUN_ov63_02122484
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121C20:
	cmp r6, #0x14
	bne _02121C9C
	mov r0, r8
	bl FUN_ov63_0211b8bc
	mov r9, r0
	ldr r7, [r9]
	ldr r6, [r9, #0xc]
	mov r0, r8
	mov r1, r9
	mov r2, r5
	mov r3, r5
	str r4, [sp]
	sub r7, r7, r6
	bl FUN_ov63_0212121c
	str r4, [sp]
	ldr r0, [r9, #0xc]
	mov r3, r5
	add r2, r0, r7
	mov r0, r8
	mov r1, r9
	bl FUN_ov63_0212121c
	mov r0, r8
	mov r1, r9
	bl FUN_ov63_02122484
	ldr r0, [r9, #0xc]
	cmp r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121C9C:
	cmp r6, #0x15
	bne _02121D18
	mov r0, r8
	bl FUN_ov63_0211b8bc
	mov r9, r0
	ldr r7, [r9]
	ldr r6, [r9, #0xc]
	mov r0, r8
	str r4, [sp]
	ldr r2, [r9, #4]
	mov r1, r9
	mov r3, r5
	sub r7, r7, r6
	bl FUN_ov63_0212121c
	str r4, [sp]
	ldr r0, [r9, #0xc]
	mov r3, r5
	add r2, r0, r7
	mov r0, r8
	mov r1, r9
	bl FUN_ov63_0212121c
	mov r0, r8
	mov r1, r9
	bl FUN_ov63_02122484
	ldr r0, [r9, #0xc]
	cmp r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121D18:
	cmp r6, #0x19
	bne _02121D5C
	mov r0, r8
	bl FUN_ov63_0211b8bc
	movs r1, r0
	beq _02121D44
	str r5, [sp]
	ldr r2, [r1, #4]
	mov r0, r8
	mov r3, #4
	bl FUN_ov63_0212121c
_02121D44:
	add r0, r8, #0x2000
	ldr r0, [r0, #0x78]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121D5C:
	cmp r6, #0x1a
	bne _02121DA4
	mov r0, r8
	bl FUN_ov63_0211b8bc
	movs r1, r0
	beq _02121D8C
	str r5, [sp]
	ldr r2, [r1, #4]
	mov r0, r8
	add r2, r2, #1
	mov r3, #4
	bl FUN_ov63_0212121c
_02121D8C:
	add r0, r8, #0x2000
	ldr r0, [r0, #0x78]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121DA4:
	cmp r6, #1
	bne _02121EB0
	mov r0, r8
	bl FUN_ov63_0211b8bc
	mov r7, r0
	mov r0, r8
	bl FUN_ov63_021201f4
	cmp r0, #1
	bne _02121E48
	ldrh r1, [r8, #0x1c]
	ldr r2, [r7]
	mov r0, r8
	bl FUN_ov63_0211fe0c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7]
	cmp r0, #4
	beq _02121DF4
	cmp r0, #5
	bne _02121E38
_02121DF4:
	ldrh r0, [r8, #0x1c]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _02121E28
	ldr r1, [r7]
	bl FUN_0206cdf8
	cmp r0, #0
	bne _02121E28
	ldr r0, _02121EE0 ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121E28:
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121E38:
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121E48:
	mov r0, r8
	bl FUN_ov63_021201f4
	cmp r0, #6
	mov r0, r8
	bne _02121E7C
	mov r1, r7
	bl FUN_ov63_02122484
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121E7C:
	bl FUN_ov63_021201f4
	cmp r0, #2
	ldreq r0, [r7]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02121EE0 ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _02121EDC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121EB0:
	cmp r6, #0x16
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl FUN_ov63_0211b8bc
	ldr r2, [r0]
	ldr r1, [r0, #0xc]
	add r0, r8, #0x2000
	sub r1, r2, r1
	str r1, [r0, #0xf8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121ED8: .word unk_02099EB4
_02121EDC: .word unk_0209AC44
_02121EE0: .word unk_0209BA20
	arm_func_end FUN_ov63_0212198c

	arm_func_start FUN_ov63_02121ee4
FUN_ov63_02121ee4: ; 0x02121EE4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _0212211C ; =0x02099EB4
	mov r8, r1
	mov r6, r0
	mov r4, #1
	cmp r8, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r8, lsl #0x10
	ldr r0, [r7]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	mov r5, r0
	cmp r8, #1
	blt _02121FA4
	cmp r8, #8
	bgt _02121FA4
	cmp r5, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r5, #0xc]
	cmp r0, #4
	bne _02121F48
	mov r0, r6
	bl FUN_ov63_021201f4
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_02121F48:
	ldrh r2, [r5, #0xc]
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r7]
	mov r0, r6
	add r1, r1, #0xf00
	strh r2, [r1, #0x38]
	bl FUN_ov63_021201f4
	cmp r0, #1
	ldrh r0, [r5, #0xc]
	bne _02121F8C
	cmp r0, #0x200
	cmpne r0, #0x100
	addne r0, r6, #0x2000
	movne r1, #0
	strneb r1, [r0, #0xd8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02121F8C:
	cmp r0, #0x20
	cmpne r0, #0x10
	addne r0, r6, #0x2000
	movne r1, #0
	strneb r1, [r0, #0xd8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02121FA4:
	cmp r8, #9
	blt _021220A0
	cmp r8, #0x11
	bgt _021220A0
	mov r0, r6
	sub r8, r8, #9
	bl FUN_ov63_0211b8bc
	movs r5, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #4]
	add r1, r8, r1
	cmp r1, r2
	bge _02122064
	bl  FUN_ov16_020f52f4
	mov r0, r6
	mov r1, r5
	mov r2, #4
	bl FUN_ov63_02121058
	mov r0, r6
	bl FUN_ov63_021201f4
	cmp r0, #5
	beq _02122038
	mov r0, r6
	bl FUN_ov63_021201f4
	cmp r0, #6
	beq _02122038
	mov r0, r6
	bl FUN_ov63_021201f4
	cmp r0, #2
	beq _02122038
	ldr r1, [r5]
	mov r0, r6
	mov r2, #1
	bl FUN_ov63_02121534
	add r1, r6, #0x2000
	strh r0, [r1, #0xf6]
_02122038:
	add r0, r6, #0x2000
	ldr r0, [r0, #0xd4]
	cmp r0, #0
	beq _02122058
	ldr r0, _02122120 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02122058:
	ldr r0, [r7]
	add r0, r0, #0xf00
	strh r4, [r0, #0x38]
_02122064:
	mov r0, r6
	bl FUN_ov63_0211fed0
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_ov63_0211b8bc
	ldr r1, [r6, #0x10]
	cmp r1, #2
	ldreq r0, [r0]
	cmpeq r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02122120 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021220A0:
	cmp r8, #0x17
	ldreq r0, [r7]
	addeq r0, r0, #0xf00
	streqh r4, [r0, #0x38]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0x18
	ldreq r0, [r7]
	addeq r0, r0, #0xf00
	streqh r4, [r0, #0x38]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0x19
	ldreq r0, [r7]
	addeq r0, r0, #0xf00
	streqh r4, [r0, #0x38]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0x1a
	ldreq r0, [r7]
	moveq r1, #2
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0x1e
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_ov63_021201f4
	cmp r0, #2
	ldreq r0, [r7]
	moveq r1, #2
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212211C: .word unk_02099EB4
_02122120: .word unk_0209AC44
	arm_func_end FUN_ov63_02121ee4

	arm_func_start FUN_ov63_02122124
FUN_ov63_02122124: ; 0x02122124
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	ldr r4, _0212229C ; =0x02099EB4
	mov r9, r1
	mov r7, r0
	mov r1, r9, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	mov r6, r2
	bl  FUN_ov16_0210e7d0
	mov r8, r0
	mov r0, r7
	bl FUN_ov63_0211b8bc
	mov r5, r0
	ldr r0, [r4]
	add r1, sp, #4
	bl  FUN_ov16_0210f48c
	cmp r8, #0
	cmpne r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r9, #0x16
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrsh r1, [r5, #0x7e]
	ldrsh r0, [r5, #0xc2]
	ldrsh r3, [r5, #0x80]
	ldrsh r2, [r5, #0xc4]
	add r0, r1, r0
	ldrsh r1, [sp, #6]
	strh r0, [sp, #4]
	ldrsh r0, [r5, #0xcc]
	add r4, r3, r2
	sub r0, r1, r0, asr #1
	strh r0, [sp, #6]
	ldrsh r1, [sp, #6]
	cmp r1, r4
	strlth r4, [sp, #6]
	blt _021221D0
	ldrsh r0, [r5, #0xc8]
	add r0, r4, r0
	cmp r1, r0
	strgeh r0, [sp, #6]
_021221D0:
	cmp r6, #0
	bne _021221F4
	mov r0, #0
	str r0, [sp]
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r7
	mov r1, r5
	bl FUN_ov63_021210c0
_021221F4:
	ldrsh r2, [sp, #6]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	sub r2, r2, r4
	sub r0, r1, r0
	add r1, r0, #1
	mul r0, r1, r2
	ldrsh r1, [r5, #0xc8]
	bl _s32_div_f
	ldr r3, [r5, #4]
	ldr r1, [r5, #8]
	mov r2, r0
	cmp r3, r1
	movlt r2, #0
	blt _02122248
	cmp r2, #0
	movlt r2, #0
	blt _02122248
	sub r0, r3, r1
	cmp r2, r0
	movge r2, r0
_02122248:
	mov r4, #0
	mov r0, r7
	mov r1, r5
	mov r3, r4
	str r6, [sp]
	bl FUN_ov63_021214a0
	add r0, r7, #0x2000
	ldr r12, [r5, #0xc]
	ldr r2, [r0, #0xf8]
	mov r6, #1
	mov r0, r7
	mov r1, r5
	mov r3, r4
	add r2, r12, r2
	str r6, [sp]
	bl FUN_ov63_0212121c
	mov r0, r7
	mov r1, r5
	bl FUN_ov63_02122484
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212229C: .word unk_02099EB4
	arm_func_end FUN_ov63_02122124

	arm_func_start FUN_ov63_021222a0
FUN_ov63_021222a0: ; 0x021222A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	add r2, r5, #0x2000
	ldr r3, [r2, #0xdc]
	add r12, r3, #1
	cmp r12, #0xf
	str r12, [r2, #0xdc]
	addle sp, sp, #4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r4, _021223F4 ; =0x66666667
	mov r2, r12, lsr #0x1f
	smull r3, r7, r4, r12
	add r7, r2, r7, asr #1
	mov r6, #5
	smull r2, r3, r6, r7
	subs r7, r12, r2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r1, #0x12
	beq _02122304
	cmp r1, #0x13
	beq _0212237C
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02122304:
	bl FUN_ov63_0211b8bc
	mov r4, r0
	mov r7, #0
	ldr lr, [r4]
	ldr r12, [r4, #0xc]
	sub r2, r6, #6
	mov r0, r5
	mov r1, r4
	mov r3, r7
	sub r6, lr, r12
	bl FUN_ov63_02121518
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r4
	mov r3, r7
	add r2, r2, r6
	bl FUN_ov63_0212121c
	mov r0, r5
	mov r1, r4
	bl FUN_ov63_02122484
	ldr r0, _021223F8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212237C:
	bl FUN_ov63_0211b8bc
	mov r7, r0
	mov r6, #1
	mov r4, #0
	ldr lr, [r7]
	ldr r12, [r7, #0xc]
	mov r0, r5
	mov r1, r7
	mov r2, r6
	mov r3, r4
	sub r8, lr, r12
	bl FUN_ov63_02121518
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r6, [sp]
	ldr r2, [r7, #0xc]
	mov r0, r5
	mov r1, r7
	mov r3, r4
	add r2, r2, r8
	bl FUN_ov63_0212121c
	mov r0, r5
	mov r1, r7
	bl FUN_ov63_02122484
	ldr r0, _021223F8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021223F4: .word 0x66666667
_021223F8: .word unk_0209AC44
	arm_func_end FUN_ov63_021222a0

	arm_func_start FUN_ov63_021223fc
FUN_ov63_021223fc: ; 0x021223FC
	ldr r2, _0212240C ; =0x02124808
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0212240C: .word ov63_02124808
	arm_func_end FUN_ov63_021223fc

	arm_func_start FUN_ov63_02122410
FUN_ov63_02122410: ; 0x02122410
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov63_021201f4
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #0
	bne _02122444
	bl  FUN_ov16_020f066c
	cmp r0, #0
	bne _02122474
_02122444:
	ldr r1, [r4]
	cmp r1, #0
	bne _0212245C
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	beq _02122474
_0212245C:
	cmp r1, #3
	bne _0212247C
	mov r0, r5
	bl FUN_ov63_0211fed0
	cmp r0, #0
	beq _0212247C
_02122474:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0212247C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov63_02122410

	arm_func_start FUN_ov63_02122484
FUN_ov63_02122484: ; 0x02122484
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r8, _02122558 ; =0x02099EB4
	mov r7, r0
	ldr r0, [r8]
	mov r4, #1
	mov r9, r1
	mov r1, r4
	mov r5, #0
	bl  FUN_ov16_0210e7d0
	mov r6, r0
	ldr r1, [r9]
	mov r0, r7
	mov r2, r5
	bl FUN_ov63_0211d070
	cmp r0, #0
	ldrneb r0, [r0, #3]
	cmpne r0, #0
	bne _02122518
	ldr r0, _0212255C ; =0x02099F38
	add r1, r7, #0x2000
	ldr r0, [r0]
	ldr r1, [r1, #0xb0]
	ldr r2, _02122560 ; =0x00004631
	bl  FUN_ov16_02114204
	mov r0, r6
	mov r1, #0x1e
	bl  FUN_ov16_0210e694
	ldr r0, _02122558 ; =0x02099EB4
	mov r4, #0
	ldr r0, [r0]
	mov r1, r4
	bl  FUN_ov16_0210ee78
	add r1, r7, #0x2000
	mov r2, #1
	str r2, [r1, #0xd4]
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02122518:
	ldr r0, _0212255C ; =0x02099F38
	add r1, r7, #0x2000
	ldr r0, [r0]
	ldr r1, [r1, #0xb0]
	rsb r2, r4, #0x8000
	bl  FUN_ov16_02114204
	mov r0, r6
	mov r1, #0x1e
	bl  FUN_ov16_0210e694
	ldr r0, [r8]
	mov r1, r5
	bl  FUN_ov16_0210ee78
	add r1, r7, #0x2000
	mov r0, r4
	str r5, [r1, #0xd4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02122558: .word unk_02099EB4
_0212255C: .word unk_02099F38
_02122560: .word 0x00004631
	arm_func_end FUN_ov63_02122484

	arm_func_start FUN_ov63_02122564
FUN_ov63_02122564: ; 0x02122564
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r4, #0
	mov r11, #1
	bl FUN_ov63_0211b8bc
	ldr r1, [r9, #0xc]
	mov r5, r0
	cmp r1, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123434 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, #0x84
	add r0, r0, #0x2000
	bl  FUN_ov16_020f5868
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, #0x2000
	ldr r1, _02123438 ; =0x0209A0F4
	ldrh r2, [r0, #0x80]
	ldrh r3, [r1]
	ldrh r1, [r0, #0x7e]
	mvn r0, r2
	ldr r10, _0212343C ; =0x02099EB4
	orr r2, r3, r8
	and r0, r1, r0
	and r0, r2, r0
	mov r1, r0, lsl #0x10
	ldr r0, [r10]
	mov r6, r1, lsr #0x10
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0212263C
	ldr r0, [r10]
	mov r1, r4
	add r0, r0, #0xf00
	ldrh r2, [r0, #0x38]
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r3, r9, #0x2000
	ldrh r6, [r3, #0x80]
	ldrh r8, [r3, #0x7e]
	mvn r3, r6
	and r3, r8, r3
	mov r3, r3, lsl #0x10
	and r2, r2, r3, lsr #16
	mov r2, r2, lsl #0x10
	mov r8, r2, lsr #0x10
	mov r6, r8
	strh r1, [r0, #0x38]
_0212263C:
	tst r8, #1
	addne r0, r9, #0x2000
	ldrne r0, [r0, #0xd4]
	cmpne r0, #0
	beq _02122660
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122660:
	add r0, r9, #0x2000
	ldrh r2, [r0, #0x80]
	ldr r1, [r9, #0x10]
	mov r0, r9
	mvn r2, r2
	and r3, r8, r2
	and r6, r6, r2
	mov r2, r6, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r6, r2, lsr #0x10
	mov r8, r3, lsr #0x10
	bl FUN_ov63_02120cf8
	mov r0, r9
	mov r1, r5
	bl FUN_ov63_02122410
	cmp r0, #0
	bne _021226DC
	cmp r5, #0
	beq _021226DC
	ldrb r0, [r5, #0x70]
	cmp r0, #0
	bne _021226DC
	mov r0, r9
	bl FUN_ov63_021201f4
	cmp r0, #1
	bne _021226D0
	tst r6, #0x300
	bne _021226DC
_021226D0:
	mov r0, r9
	mov r1, r8
	bl FUN_ov63_02120c90
_021226DC:
	mov r0, r9
	mov r10, #4
	bl FUN_ov63_021201f4
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021226F4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 0
	b _02122728 ; case 1
	b _02122A18 ; case 2
	b _02122A30 ; case 3
	b _02122DD8 ; case 4
	b _021231D4 ; case 5
	b _0212341C ; case 6
	b _02123034 ; case 7
	b _02122EE4 ; case 8
	b _021231A4 ; case 9
	b _021231A4 ; case 10
	b _02123174 ; case 11
	b _02123174 ; case 12
_02122728:
	tst r8, #1
	mov r10, #3
	beq _02122840
	mov r0, r9
	mov r1, r5
	bl FUN_ov63_02120ddc
	cmp r5, #0
	beq _021227A0
	ldr r1, [r5]
	mov r0, r9
	mov r2, #0
	bl FUN_ov63_02121534
	mov r1, r0, lsl #0x10
	ldr r0, _02123444 ; =0x0209BA20
	mov r1, r1, lsr #0x10
	bl FUN_0204a2c4
	cmp r0, #0
	ldrneb r1, [r0, #0xa]
	cmpne r1, #0
	beq _021227A0
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _021227A0
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0xc
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021227A0:
	ldrh r1, [r9, #0x1c]
	ldr r2, [r5]
	mov r0, r9
	bl FUN_ov63_0211fe0c
	cmp r0, #0
	beq _021227EC
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r11
	bl FUN_0202cf6c
	ldrh r1, [r9, #0x1c]
	ldr r2, [r5]
	mov r0, r9
	bl FUN_ov63_0211ff2c
	mov r0, r9
	mov r1, #5
	bl FUN_ov63_021201c4
	add r0, r9, #0x2000
	str r11, [r0, #0xe4]
	b _021229F4
_021227EC:
	ldr r0, [r5]
	cmp r0, #4
	beq _02122800
	cmp r0, #5
	bne _021229F4
_02122800:
	ldr r0, _02123448 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0212281C
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #9
_02122818:
	b _021229F0
_0212281C:
	mov r0, r9
	mov r1, #3
	bl FUN_ov63_021201c4
	ldr r3, [r5]
	add r2, r9, #0x2000
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #1
	str r3, [r2, #0xe0]
	b _02122818
_02122840:
	tst r8, #2
	beq _02122880
	ldr r0, _0212344C ; =0x0209A454
	mov r1, #0
	ldrb r2, [r0, #0x33]
	cmp r2, #0
	movne r1, #0x5a
	bne _0212286C
	ldrb r0, [r0, #0x34]
	cmp r0, #0
	movne r1, #0x71
_0212286C:
	mov r0, r9
	bl FUN_ov63_021201fc
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #4
	b _02122818
_02122880:
	tst r8, #0x800
	beq _021228A4
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #2
	bl FUN_ov63_021201c4
	b _021229F4
_021228A4:
	tst r6, #0x200
	beq _0212290C
	add r0, r9, #0x2000
	ldrh r2, [r0, #0xa8]
	ldrh r1, [r0, #0xac]
	add r2, r2, #1
	strh r2, [r0, #0xa8]
	ldrh r0, [r0, #0xa8]
	cmp r0, r1
	blo _021229F4
	mov r0, r9
	mvn r1, #0
	bl FUN_ov63_02120174
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r9, #0x2000
	ldrh r1, [r0, #0xa8]
	add r2, r9, #0x2000
	cmp r1, #3
	moveq r1, #2
	streqh r1, [r0, #0xac]
	mov r0, r9
	mov r1, #0x200
	strh r4, [r2, #0xa8]
	b _02122970
_0212290C:
	tst r6, #0x100
	beq _02122978
	add r0, r9, #0x2000
	ldrh r2, [r0, #0xaa]
	ldrh r1, [r0, #0xae]
	add r2, r2, #1
	strh r2, [r0, #0xaa]
	ldrh r0, [r0, #0xaa]
	cmp r0, r1
	blo _021229F4
	mov r0, r9
	mov r1, #1
	bl FUN_ov63_02120174
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r9, #0x2000
	ldrh r1, [r0, #0xaa]
	add r2, r9, #0x2000
	cmp r1, #3
	moveq r1, #2
	streqh r1, [r0, #0xae]
	mov r0, r9
	mov r1, #0x100
	strh r4, [r2, #0xaa]
_02122970:
	bl FUN_ov63_02120c90
	b _021229F4
_02122978:
	tst r6, #0x40
	beq _021229AC
	mov r0, r9
	mov r1, r5
	mvn r2, #0
	mov r3, #4
	bl FUN_ov63_02121340
	cmp r0, #0
	beq _021229F4
	ldr r1, [r5]
	mov r0, r9
	mov r2, #1
	b _021229DC
_021229AC:
	tst r6, #0x80
	beq _021229F4
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, #4
	bl FUN_ov63_02121340
	cmp r0, #0
	beq _021229F4
	ldr r1, [r5]
	mov r0, r9
	mov r2, r11
_021229DC:
	bl FUN_ov63_02121534
	add r1, r9, #0x2000
	strh r0, [r1, #0xf6]
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
_021229F0:
	bl FUN_0202cf6c
_021229F4:
	tst r7, #0x200
	addeq r0, r9, #0x2000
	streqh r10, [r0, #0xa8]
	streqh r10, [r0, #0xac]
	tst r7, #0x100
	addeq r0, r9, #0x2000
	streqh r10, [r0, #0xaa]
	streqh r10, [r0, #0xae]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122A18:
	mov r0, r9
	mov r1, r8
	mov r2, r6
	mov r3, r5
	bl FUN_ov63_02123450
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122A30:
	tst r8, #1
	mov r7, #9
	mov r4, r10
	beq _02122C74
	mov r0, r9
	mov r1, r5
	bl FUN_ov63_02120ddc
	ldrh r0, [r9, #0x1c]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	mov r8, r0
	ldr r1, [r5]
	mov r0, r9
	mov r2, #1
	bl FUN_ov63_02121534
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r8, #0
	cmpne r6, #0
	bne _02122A90
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122A90:
	ldr r0, _02123444 ; =0x0209BA20
	add r2, r9, #0x2000
	mov r1, r6
	str r6, [r2, #0x8c]
	bl FUN_0204a2c4
	mov r10, r0
	ldrh r1, [r9, #0x1c]
	mov r0, r9
	mov r2, r6
	bl FUN_ov63_0211fa30
	cmp r0, #0
	beq _02122AE8
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r7
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, r7
	bl FUN_ov63_021201c4
	ldr r1, [r5]
	add r0, r9, #0x2000
	str r1, [r0, #0xbc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122AE8:
	cmp r6, #0x4e
	blo _02122B34
	cmp r6, #0x51
	bhi _02122B34
	mov r0, r8
	bl FUN_0206cd88
	add r0, r0, #0x4d
	cmp r0, r6
	bne _02122B78
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r7
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0xa
	bl FUN_ov63_021201c4
	ldr r1, [r5]
	add r0, r9, #0x2000
	str r1, [r0, #0xbc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122B34:
	ldr r0, _02123444 ; =0x0209BA20
	mov r1, r8
	mov r2, r10
	mov r3, #1
	bl FUN_02049fc8
	cmp r0, #0
	bne _02122B78
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0xa
	bl FUN_ov63_021201c4
	ldr r1, [r5]
	add r0, r9, #0x2000
	str r1, [r0, #0xbc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122B78:
	add r0, r9, #0x2000
	ldr r1, [r0, #0xe0]
	mov r0, r8
	cmp r1, #0
	beq _02122BC8
	bl FUN_0206cdf8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add r2, r9, #0x2000
	ldr r1, [r2, #0xe0]
	mov r0, r9
	str r1, [r2, #0x90]
	ldr r3, [r5]
	mov r1, #8
	str r3, [r2, #0xbc]
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122BC8:
	mov r1, r4
	bl FUN_0206cdf8
	cmp r0, #0
	bne _02122C04
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add r2, r9, #0x2000
	str r4, [r2, #0x90]
	ldr r3, [r5]
	mov r0, r9
	mov r1, #8
	str r3, [r2, #0xbc]
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122C04:
	mov r6, #5
	mov r0, r8
	mov r1, r6
	bl FUN_0206cdf8
	cmp r0, #0
	mov r1, #1
	bne _02122C48
	ldr r0, _02123440 ; =0x0209AC44
	bl FUN_0202cf6c
	add r2, r9, #0x2000
	str r6, [r2, #0x90]
	ldr r3, [r5]
	mov r0, r9
	mov r1, #8
	str r3, [r2, #0xbc]
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122C48:
	ldr r0, _02123440 ; =0x0209AC44
	bl FUN_0202cf6c
	mov r0, r9
	bl FUN_ov63_0211b8bc
	mov r1, r0
	mov r0, r9
	bl FUN_ov63_02121924
	mov r0, r9
	mov r1, r4
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122C74:
	tst r8, #2
	beq _02122C98
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #1
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122C98:
	tst r6, #0x40
	beq _02122CE4
	mov r0, r9
	mov r1, r5
	mvn r2, #0
	mov r3, r10
	bl FUN_ov63_0212138c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5]
	mov r0, r9
	mov r2, #1
	bl FUN_ov63_02121534
	add r1, r9, #0x2000
	strh r0, [r1, #0xf6]
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122CE4:
	tst r6, #0x80
	beq _02122D30
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, r10
	bl FUN_ov63_0212138c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5]
	mov r0, r9
	mov r2, r11
	bl FUN_ov63_02121534
	add r1, r9, #0x2000
	strh r0, [r1, #0xf6]
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122D30:
	tst r8, #0x200
	bne _02122D40
	tst r8, #0x20
	beq _02122D84
_02122D40:
	mov r0, r9
	mov r1, r5
	mvn r2, #0
	mov r3, #0
	bl FUN_ov63_02121410
	cmp r0, #0
	beq _02122D74
	ldr r1, [r5]
	mov r0, r9
	mov r2, #1
	bl FUN_ov63_02121534
	add r1, r9, #0x2000
	strh r0, [r1, #0xf6]
_02122D74:
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122D84:
	tst r8, #0x100
	bne _02122D94
	tst r8, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122D94:
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, #0
	bl FUN_ov63_02121410
	cmp r0, #0
	beq _02122DC8
	ldr r1, [r5]
	mov r0, r9
	mov r2, r11
	bl FUN_ov63_02121534
	add r1, r9, #0x2000
	strh r0, [r1, #0xf6]
_02122DC8:
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122DD8:
	tst r8, #2
	beq _02122DFC
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #3
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122DFC:
	tst r8, #1
	beq _02122E54
	mov r0, r9
	mov r1, r5
	bl FUN_ov63_02120ddc
	cmp r5, #0
	beq _02122E2C
	ldr r0, [r5]
	cmp r0, #0
	addeq r0, r9, #0x2000
	streq r10, [r0, #0x90]
	beq _02122E38
_02122E2C:
	add r0, r9, #0x2000
	mov r1, #5
	str r1, [r0, #0x90]
_02122E38:
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #7
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122E54:
	tst r6, #0x40
	beq _02122E9C
	mov r0, r9
	mov r1, r5
	mvn r2, #0
	mov r3, r10
	bl FUN_ov63_02121340
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5]
	mov r0, r9
	mov r2, #1
	bl FUN_ov63_02121534
	strh r0, [r9, #0x1e]
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122E9C:
	tst r6, #0x80
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, r10
	bl FUN_ov63_02121340
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5]
	mov r0, r9
	mov r2, r11
	bl FUN_ov63_02121534
	strh r0, [r9, #0x1e]
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122EE4:
	tst r8, #1
	beq _02122F88
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_02110b0c
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_02110b04
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #1
	beq _02122F20
	cmp r0, #2
	beq _02122F6C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122F20:
	mov r4, #0x17
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	add r0, r9, #0x2000
	ldr r2, [r0, #0x8c]
	ldr r3, [r0, #0x90]
	mov r2, r2, lsl #0x10
	ldrh r1, [r9, #0x1c]
	mov r0, r9
	mov r2, r2, lsr #0x10
	bl FUN_ov63_0211fa80
	sub r3, r4, #0x18
	add r2, r9, #0x2000
	mov r0, r9
	mov r1, #0xb
	str r3, [r2, #0xbc]
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122F6C:
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #3
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122F88:
	tst r8, #2
	beq _02122FCC
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_02110b0c
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #3
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122FCC:
	tst r8, #0x20
	beq _02123000
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123000:
	tst r8, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123034:
	tst r8, #1
	beq _021230C8
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_02110b0c
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_02110b04
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #1
	beq _02123070
	cmp r0, #2
	beq _021230AC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123070:
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #0x17
	bl FUN_0202cf6c
	add r0, r9, #0x2000
	ldr r2, [r0, #0x8c]
	ldr r3, [r0, #0x90]
	mov r2, r2, lsl #0x10
	ldrh r1, [r9, #0x1c]
	mov r0, r9
	mov r2, r2, lsr #0x10
	bl FUN_ov63_0211fa80
	mov r0, r9
	mov r1, #0xb
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021230AC:
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #3
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021230C8:
	tst r8, #2
	beq _0212310C
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_02110b0c
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #3
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212310C:
	tst r8, #0x20
	beq _02123140
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123140:
	tst r8, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123174:
	tst r8, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r11
	bl FUN_0202cf6c
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_02110b0c
	mov r0, r9
	mov r1, r11
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021231A4:
	tst r8, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add r0, r9, #0x2000
	ldr r0, [r0, #0x74]
	bl  FUN_ov16_02110b0c
	mov r0, r9
	mov r1, #3
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021231D4:
	tst r8, #1
	beq _021232A0
	ldr r1, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _02123230
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_02110b0c
	add r2, r9, #0xa0
	ldrh r1, [r9, #0x1c]
	mov r0, r9
	add r2, r2, #0x2000
	bl FUN_ov63_0211fb20
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #1
	bl FUN_ov63_021201c4
	add r0, r9, #0x2000
	str r4, [r0, #0xe4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123230:
	add r0, r0, #1
	cmp r1, r0
	bne _0212326C
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	bl  FUN_ov16_02110b0c
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #1
	bl FUN_ov63_021201c4
	add r0, r9, #0x2000
	str r4, [r0, #0xe4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212326C:
	mov r0, r9
	mov r1, r5
	bl FUN_ov63_02120ddc
	ldr r3, [r5]
	add r2, r9, #0x2000
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #1
	strb r3, [r2, #0xa1]
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #6
	bl FUN_ov63_021201c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021232A0:
	tst r8, #2
	beq _021232CC
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #1
	bl FUN_ov63_021201c4
	add r0, r9, #0x2000
	str r4, [r0, #0xe4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021232CC:
	tst r8, #0xf0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02123440 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	tst r8, #0x40
	beq _02123330
	ldmia r5, {r0, r6}
	cmp r0, r6
	blt _02123324
	str r4, [sp]
	ldr r2, [r5, #4]
	mov r0, r9
	mov r1, r5
	sub r2, r2, #1
	mov r3, r10
_0212330C:
	bl FUN_ov63_0212121c
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	mov r1, r4
	mov r2, r4
	b _021233B0
_02123324:
	cmp r0, #0
	subne r6, r0, #1
	b _02123368
_02123330:
	tst r8, #0x80
	beq _021233B4
	ldr r1, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _02123360
	mov r0, r9
	mov r1, r5
	mov r2, r4
	mov r3, r10
	str r4, [sp]
	b _0212330C
_02123360:
	movge r6, #0
	addlt r6, r1, #1
_02123368:
	mov r7, #0
	mov r0, r9
	mov r1, r5
	mov r2, r6
	str r7, [sp]
	mov r3, #4
	bl FUN_ov63_0212121c
	ldr r0, [r5, #4]
	mov r2, #1
	cmp r6, r0
	ldr r0, [r5, #4]
	moveq r7, #1
	add r0, r0, #1
	cmp r6, r0
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	movne r2, #0
	mov r1, r7
_021233B0:
	bl  FUN_ov16_02110a04
_021233B4:
	tst r8, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5]
	ldr r0, [r5, #4]
	mov r3, #4
	cmp r1, r0
	str r4, [sp]
	ldr r2, [r5, #4]
	mov r0, r9
	mov r1, r5
	bgt _02123400
	add r2, r2, #1
	bl FUN_ov63_0212121c
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	mov r1, r4
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123400:
	bl FUN_ov63_0212121c
	add r0, r9, #0x2000
	ldr r0, [r0, #0x78]
	mov r2, r4
	mov r1, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212341C:
	mov r0, r9
	mov r1, r8
	mov r2, r6
	mov r3, r5
	bl FUN_ov63_021235f4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02123434: .word unk_02099ED4
_02123438: .word unk_0209A0F4
_0212343C: .word unk_02099EB4
_02123440: .word unk_0209AC44
_02123444: .word unk_0209BA20
_02123448: .word unk_020A0640
_0212344C: .word unk_0209A454
	arm_func_end FUN_ov63_02122564

	arm_func_start FUN_ov63_02123450
FUN_ov63_02123450: ; 0x02123450
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r12, _021235E8 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r12]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl  FUN_ov16_0210f484
	mov r5, r0
	tst r8, #1
	beq _02123554
	ldr r0, [r6]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02123548
_0212348C: ; jump table
	b _0212349C ; case 0
	b _021234E4 ; case 1
	b _021234F0 ; case 2
	b _02123510 ; case 3
_0212349C:
	ldr r0, _021235EC ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	beq _021234BC
	ldr r0, _021235F0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021234BC:
	bl  FUN_ov16_020f0650
	cmp r0, #1
	bne _021234D8
	mov r0, r4
	mov r1, #3
	bl FUN_ov63_021201c4
	b _0212353C
_021234D8:
	ldr r0, _021235F0 ; =0x0209AC44
	mov r1, #9
	b _02123544
_021234E4:
	mov r0, r4
	mov r1, #0x5a
	b _02123538
_021234F0:
	add r0, r4, #0x2000
	ldr r0, [r0, #0xe8]
	cmp r0, #0
	bne _02123504
	b _021234D8
_02123504:
	mov r0, r4
	mov r1, #0x5d
	b _02123538
_02123510:
	mov r0, r4
	bl FUN_ov63_0211fed0
	cmp r0, #0
	bne _02123530
	ldr r0, _021235F0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02123530:
	mov r0, r4
	mov r1, #0x5b
_02123538:
	bl FUN_ov63_021201fc
_0212353C:
	ldr r0, _021235F0 ; =0x0209AC44
	mov r1, #1
_02123544:
	bl FUN_0202cf6c
_02123548:
	ldr r0, [r6]
	add r5, r0, #9
	b _021235D0
_02123554:
	tst r8, #2
	beq _02123578
	ldr r0, _021235F0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #1
	bl FUN_ov63_021201c4
	b _021235D0
_02123578:
	tst r7, #0x40
	beq _021235A0
	mov r0, r4
	mov r1, r6
	mvn r2, #0
	mov r3, #4
	bl FUN_ov63_02121340
	cmp r0, #0
	beq _021235D0
	b _021235C4
_021235A0:
	tst r7, #0x80
	beq _021235D0
	mov r0, r4
	mov r1, r6
	mov r2, #1
	mov r3, #4
	bl FUN_ov63_02121340
	cmp r0, #0
	beq _021235D0
_021235C4:
	ldr r0, _021235F0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_021235D0:
	ldr r0, _021235E8 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021235E8: .word unk_02099EB4
_021235EC: .word unk_0209BA20
_021235F0: .word unk_0209AC44
	arm_func_end FUN_ov63_02123450

	arm_func_start FUN_ov63_021235f4
FUN_ov63_021235f4: ; 0x021235F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	mov r5, r3
	tst r1, #1
	beq _021236A4
	mov r1, r5
	bl FUN_ov63_02122484
	cmp r0, #0
	bne _0212362C
	ldr r0, _02123760 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212362C:
	ldr r1, [r5]
	mov r0, r7
	mov r2, #0
	bl FUN_ov63_0211d070
	mov r4, r0
	cmp r5, #0
	beq _02123668
	ldrb r0, [r5, #0x70]
	cmp r0, #1
	bne _02123660
	mov r0, r7
	mov r1, r5
	bl FUN_ov63_02120ddc
_02123660:
	mov r0, #0
	strb r0, [r5, #0x70]
_02123668:
	add r0, r7, #0x2000
	ldrb r1, [r0, #0xa1]
	ldrh r3, [r4]
	ldr r0, _02123760 ; =0x0209AC44
	add r1, r7, r1, lsl #1
	add r2, r1, #0x2000
	mov r1, #1
	strh r3, [r2, #0xa4]
_02123688:
	bl FUN_0202cf6c
	mov r0, r7
	bl FUN_ov63_0211babc
	mov r0, r7
	mov r1, #5
	bl FUN_ov63_021201c4
	b _02123740
_021236A4:
	tst r1, #2
	beq _021236B8
	ldr r0, _02123760 ; =0x0209AC44
	mov r1, #4
	b _02123688
_021236B8:
	tst r6, #0x40
	beq _021236F4
	ldr r0, [r5]
	cmp r0, #0
	bgt _021236D4
	tst r1, #0x40
	beq _02123740
_021236D4:
	mov r0, r7
	mov r1, r5
	mvn r2, #0
	mov r3, #4
	bl FUN_ov63_02121340
	cmp r0, #0
	beq _02123740
	b _02123734
_021236F4:
	tst r6, #0x80
	beq _02123740
	ldr r0, [r5, #4]
	ldr r2, [r5]
	sub r0, r0, #1
	cmp r2, r0
	blt _02123718
	tst r1, #0x80
	beq _02123740
_02123718:
	mov r0, r7
	mov r1, r5
	mov r2, #1
	mov r3, #4
	bl FUN_ov63_02121340
	cmp r0, #0
	beq _02123740
_02123734:
	ldr r0, _02123760 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_02123740:
	tst r6, #0x40
	bne _02123750
	tst r6, #0x80
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02123750:
	mov r0, r7
	mov r1, r5
	bl FUN_ov63_02122484
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02123760: .word unk_0209AC44
	arm_func_end FUN_ov63_021235f4

	arm_func_start FUN_ov63_02123764
FUN_ov63_02123764: ; 0x02123764
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0212386C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r2]
	mov r7, r1
	mov r6, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r4, #0xc]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x84
	add r0, r0, #0x2000
	bl  FUN_ov16_020f5868
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _02123870 ; =0x02099EB4
	mov r1, r7
	ldr r0, [r5]
	mov r2, r6
	bl  FUN_ov16_0210f20c
	mov r7, r0
	cmp r7, #5
	addls pc, pc, r7, lsl #2
	b _02123858
_021237C8: ; jump table
	b _02123858 ; case 0
	b _021237E0 ; case 1
	b _021237F8 ; case 2
	b _02123810 ; case 3
	b _0212382C ; case 4
	b _02123844 ; case 5
_021237E0:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov63_0212198c
	b _02123858
_021237F8:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov63_02121ee4
	b _02123858
_02123810:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, r6
_02123824:
	bl FUN_ov63_02122124
	b _02123858
_0212382C:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, #1
	b _02123824
_02123844:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov63_021222a0
_02123858:
	cmp r7, #5
	addne r0, r4, #0x2000
	movne r1, #0
	strne r1, [r0, #0xdc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212386C: .word unk_02099ED4
_02123870: .word unk_02099EB4
	arm_func_end FUN_ov63_02123764

	arm_func_start FUN_ov63_02123874
FUN_ov63_02123874: ; 0x02123874
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02123B4C ; =0x02099EB4
	mov r6, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e980
	ldr r0, _02123B50 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r1, _02123B54 ; =0x0209A228
	mov r0, r6
	ldr r1, [r1]
	str r1, [r6, #0x14]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r4, #0
	mov r1, r4
	add r0, r6, #0x18
	mov r2, #0x60
	bl MI_CpuFill8
	add r0, r6, #0xec
	add r0, r0, #0x2000
	mov r1, r4
	mov r7, #8
	mov r2, r7
	bl MI_CpuFill8
	add r0, r6, #0x2000
	strh r4, [r0, #0xf4]
	ldr r5, _02123B58 ; =0x0209A454
	mov r0, r6
	ldrh r1, [r5, #0x2c]
	mov r2, r4
	bl FUN_ov63_0211ffb8
	strh r0, [r6, #0x1c]
	mov r0, #5
	str r0, [r6, #0x18]
	strh r4, [r5, #0x2c]
	str r4, [r6, #8]
	str r4, [r6, #0xc]
	str r4, [r6, #0x10]
	add r0, r6, #0xa8
	mov r1, r4
	mov r2, #0xd8
	bl MI_CpuFill8
	add r0, r6, #0x78
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r6, #0x180
	mov r1, r4
	mov r2, #0x3c
	bl MI_CpuFill8
	mov r2, r7
	add r0, r6, #0x1bc
	mov r1, r4
	bl MI_CpuFill8
	str r4, [r6, #0x1c8]
	str r4, [r6, #0x1c4]
	str r4, [r6, #0x1cc]
	add r0, r6, #0x1d0
	mov r1, r4
	mov r2, #0x6a0
	bl MI_CpuFill8
	add r0, r6, #0x2000
	str r4, [r0, #0x70]
	strh r4, [r0, #0x7e]
	strh r4, [r0, #0x80]
	strb r4, [r0, #0x7d]
	ldr r1, _02123B5C ; =0x02099F18
	ldr r2, [r1]
	ldrb r2, [r2, #0x45]
	strb r2, [r0, #0x7c]
	tst r2, #0xff
	bne _021239A8
	ldr r0, [r1]
	mov r1, #1
	bl FUN_0205131c
_021239A8:
	mov r4, #0
	add r3, r6, #0x2000
	ldr r7, _02123B60 ; =0x00002710
	sub r12, r4, #1
	mov lr, #3
	mov r5, #1
	mov r1, r4
	add r0, r6, #0x870
	mov r2, #0x1800
	strh r7, [r3, #0xa8]
	strh lr, [r3, #0xac]
	strh r7, [r3, #0xaa]
	strh lr, [r3, #0xae]
	str r4, [r3, #0xb4]
	strh r4, [r3, #0xb8]
	str r12, [r3, #0xbc]
	str r12, [r3, #0xd0]
	strb r5, [r3, #0xd8]
	str r4, [r3, #0xdc]
	bl MI_CpuFill8
	add r0, r6, #0x84
	mov r5, #8
	mov r1, r4
	mov r2, r5
	add r0, r0, #0x2000
	bl MI_CpuFill8
	add r0, r6, #0x84
	add r0, r0, #0x2000
	mov r1, #0x16
	bl  FUN_ov16_020f5278
	add r0, r6, #0xa0
	mov r1, r4
	mov r2, r5
	add r0, r0, #0x2000
	bl MI_CpuFill8
	mov r0, r6
	bl FUN_ov63_02121908
	mov r0, #0x74
	bl FUN_0201e014
	cmp r0, #0
	beq _02123A50
	bl  FUN_ov16_02110558
_02123A50:
	add r1, r6, #0x2000
	str r0, [r1, #0x74]
	mov r0, #0x74
	bl FUN_0201e014
	cmp r0, #0
	beq _02123A6C
	bl  FUN_ov16_02110558
_02123A6C:
	ldr r2, _02123B64 ; =0x02099F38
	add r1, r6, #0x2000
	str r0, [r1, #0x78]
	ldr r0, [r2]
	bl  FUN_ov16_021123b4
	mov r0, r6
	bl FUN_ov63_0211a1a4
	ldr r5, _02123B68 ; =0x02099EEC
	ldr r0, [r5]
	bl FUN_0205b2b8
	mov r4, #0
	ldr r0, [r5]
	mov r1, r4
	bl FUN_0205a5e8
	mov r0, r6
	bl FUN_ov63_02119f00
	ldr r0, _02123B6C ; =0x0209BA20
	bl FUN_0207181c
	ldr r0, _02123B70 ; =0x02124B68
	add r1, r6, #0x90
	bl  FUN_ov16_020f316c
	ldr r0, _02123B74 ; =0x02099F24
	mov r1, #4
	ldr r5, [r0]
	mov r0, r5
	bl  FUN_ov16_020f7be0
	mov r0, r5
	bl  FUN_ov16_020f7bf4
	add r1, r6, #0x2000
	str r0, [r1, #0xc0]
	ldr r2, [r0, #0x24]
	mov r3, #0x12c000
	str r2, [r1, #0xc4]
	ldr r12, [r0, #0x28]
	mov r2, #0x1f4000
	str r12, [r1, #0xc8]
	str r3, [r0, #0x24]
	ldr r1, [r1, #0xc0]
	mov r0, r5
	str r2, [r1, #0x28]
	mov r1, r4
	bl  FUN_ov16_020f7be0
	add r0, r6, #0x2000
	mov r1, #1
	str r1, [r0, #0xe8]
	ldr r1, _02123B78 ; =0x020A0640
	strh r4, [r0, #0xf6]
	str r4, [r0, #0xe0]
	str r4, [r0, #0xe4]
	ldrb r2, [r1, #0x1a]
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r1, #0x8e]
	cmp r1, #0
	streq r4, [r0, #0xe8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02123B4C: .word unk_02099EB4
_02123B50: .word unk_02099ED4
_02123B54: .word unk_0209A228
_02123B58: .word unk_0209A454
_02123B5C: .word unk_02099F18
_02123B60: .word 0x00002710
_02123B64: .word unk_02099F38
_02123B68: .word unk_02099EEC
_02123B6C: .word unk_0209BA20
_02123B70: .word ov63_02124B68
_02123B74: .word unk_02099F24
_02123B78: .word unk_020A0640
	arm_func_end FUN_ov63_02123874

	arm_func_start FUN_ov63_02123b7c
FUN_ov63_02123b7c: ; 0x02123B7C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldr r0, [r7, #0xc]
	mov r4, #0
	cmp r0, #7
	mov r6, #1
	addls pc, pc, r0, lsl #2
	b _02123E84
_02123BA0: ; jump table
	b _02123BC0 ; case 0
	b _02123BF0 ; case 1
	b _02123C18 ; case 2
	b _02123CD0 ; case 3
	b _02123CE4 ; case 4
	b _02123E84 ; case 5
	b _02123DCC ; case 6
	b _02123DF0 ; case 7
_02123BC0:
	ldr r0, _02123F6C ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205b340
	cmp r0, #1
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r7, #0x78
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _02123E84
	str r6, [r7, #0xc]
_02123BF0:
	mov r0, r7
	bl FUN_ov63_0211a438
	cmp r0, #0
	beq _02123E84
	mov r0, r7
	bl FUN_ov63_02119f2c
	mov r1, #2
	mov r0, r7
	str r1, [r7, #0xc]
	bl FUN_ov63_0211a20c
_02123C18:
	mov r0, r7
	bl FUN_ov63_02119f8c
	ldrh r1, [r7, #0x1c]
	mov r0, r7
	bl FUN_ov63_021218b8
	add r0, r7, #0x2000
	mov r1, #3
	ldr r0, [r0, #0x74]
	ldr r2, [r7, #0x170]
	str r1, [r7, #0xc]
	mov r1, #0
	bl  FUN_ov16_02110624
	add r0, r7, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #1
	ldr r2, [r7, #0x178]
	bl  FUN_ov16_02110624
	add r0, r7, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #5
	ldr r2, [r7, #0x154]
	bl  FUN_ov16_02110624
	add r0, r7, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #6
	ldr r2, [r7, #0x158]
	bl  FUN_ov16_02110624
	add r0, r7, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #7
	ldr r2, [r7, #0x15c]
	bl  FUN_ov16_02110624
	add r0, r7, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #0x140
	bl  FUN_ov16_02110864
	add r0, r7, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #2
	mov r2, #0x17
	mov r3, #0x18
	bl  FUN_ov16_02110830
	add r0, r7, #0x2000
	ldr r0, [r0, #0x74]
	mov r1, #0x1e
	bl  FUN_ov16_0211085c
_02123CD0:
	mov r0, r7
	bl FUN_ov63_02120e24
	mov r0, r7
	mov r1, #1
	bl FUN_ov63_021201c4
_02123CE4:
	ldr r0, _02123F70 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _02123E84
	ldr r8, _02123F74 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r8]
	bl  FUN_ov16_0210eb3c
	mov r0, r7
	bl FUN_ov63_02120e24
	mov r0, r7
	bl FUN_ov63_0211a4d0
	mov r0, r7
	bl FUN_ov63_0211b694
	mov r0, r7
	bl FUN_ov63_0211b54c
	mov r0, r7
	bl FUN_ov63_0211b1e4
	mov r0, r7
	bl FUN_ov63_0211af4c
	mov r0, r7
	bl FUN_ov63_0211aba8
	mov r0, r7
	bl FUN_ov63_02120228
	mov r0, r7
	bl FUN_ov63_0211b8dc
	mov r0, r7
	add r1, r7, #0x2000
	ldrh r1, [r1, #0x7e]
	bl FUN_ov63_02120778
	ldr r0, [r8]
	mov r5, #4
	mov r1, r5
	bl  FUN_ov16_0210eb3c
	mov r0, r7
	bl FUN_ov63_021201f4
	cmp r0, #2
	bne _02123DB0
	mov r3, #0
	str r3, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x28
	str r0, [sp, #0xc]
	ldr r0, [r8]
	mov r1, r5
	mov r2, #0x1e
	bl  FUN_ov16_0210fba4
_02123DB0:
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r7, #0xc]
	b _02123E84
_02123DCC:
	ldr r0, _02123F70 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _02123E84
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #7
	str r0, [r7, #0xc]
_02123DF0:
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _02123E84
	ldr r8, [r7, #8]
	mov r1, #0
	cmp r8, #0
	bne _02123E64
	ldr r0, _02123F78 ; =0x0209A454
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	bne _02123E44
	ldr r5, [r7, #4]
	mov r0, r5
	bl FUN_02041f2c
	mov r0, r5
	mov r1, #1
	bl FUN_02041f2c
	b _02123E84
_02123E44:
	ldr r8, [r7, #4]
	mov r5, #0x5a
	mov r0, r8
	mov r2, r5
	bl FUN_02041eac
	mov r0, r8
	mov r2, r5
	b _02123E7C
_02123E64:
	ldr r5, [r7, #4]
	mov r2, r8
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r8
_02123E7C:
	mov r1, #1
	bl FUN_02041eac
_02123E84:
	add r0, r7, #0x84
	add r0, r0, #0x2000
	bl  FUN_ov16_020f5868
	ldr r0, [r7, #0x1cc]
	ldr r5, _02123F6C ; =0x02099EEC
	add r1, r7, r0, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x1c4]
	bl FUN_0205ac70
	cmp r0, #0
	bne _02123F38
	add r0, r7, #0x2000
	ldrb r0, [r0, #0x7d]
	cmp r0, #0
	beq _02123F38
	ldr r0, [r7, #0x1cc]
	mov r2, r4
	add r1, r7, r0, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x1c4]
	mov r3, r6
	bl FUN_0205b174
	ldr r1, [r7, #0x1cc]
	ldr r0, [r5]
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0x1c4]
	mov r2, r6
	bl FUN_0205acb0
	ldr r0, [r7, #0x1cc]
	mov r2, r4
	eor r0, r0, #1
	str r0, [r7, #0x1cc]
	add r1, r7, r0, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x1c4]
	bl FUN_0205acb0
	ldr r1, [r7, #0x1cc]
	ldr r0, [r5]
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0x1c4]
	bl FUN_0205aa80
	add r0, r7, #0x2000
	mov r1, #4
	strb r4, [r0, #0x7d]
	str r1, [r7, #0xc]
_02123F38:
	mov r0, r7
	bl FUN_ov63_0211a488
	ldr r0, _02123F6C ; =0x02099EEC
	ldr r4, _02123F7C ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl FUN_0205a60c
	ldr r0, _02123F70 ; =0x02099ED4
	ldr r1, [r4]
	ldr r0, [r0]
	bl  FUN_ov16_0210e10c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02123F6C: .word unk_02099EEC
_02123F70: .word unk_02099ED4
_02123F74: .word unk_02099EB4
_02123F78: .word unk_0209A454
_02123F7C: .word unk_0209A110
	arm_func_end FUN_ov63_02123b7c

	arm_func_start FUN_ov63_02123f80
FUN_ov63_02123f80: ; 0x02123F80
	bx lr
	arm_func_end FUN_ov63_02123f80

	arm_func_start FUN_ov63_02123f84
FUN_ov63_02123f84: ; 0x02123F84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x2000
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _02123FA8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02123FA8:
	add r1, r5, #0x2000
	ldr r0, [r1, #0x78]
	mov r2, #0
	str r2, [r1, #0x74]
	cmp r0, #0
	beq _02123FCC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02123FCC:
	add r0, r5, #0x2000
	mov r2, #0
	ldr r1, _021240A4 ; =0x02099EB4
	str r2, [r0, #0x78]
	ldr r0, [r1]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _021240A8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r5
	bl FUN_ov63_02124184
	mov r0, r5
	bl FUN_ov63_0211a324
	ldr r0, _021240AC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r4, _021240B0 ; =0x02099EEC
	ldr r0, [r4]
	bl FUN_0205b398
	ldr r0, [r4]
	bl FUN_0205a5f4
	ldr r0, _021240B4 ; =0x0209BA20
	bl FUN_02071934
	add r0, r5, #0x2000
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	beq _02124040
	ldr r0, _021240B8 ; =0x0209A250
	bl FUN_0202e1c0
_02124040:
	add r0, r5, #0x84
	add r1, r5, #0x2000
	mov r4, #0
	add r0, r0, #0x2000
	str r4, [r1, #0xb4]
	bl  FUN_ov16_020f52c4
	ldrh r2, [r5, #0x1c]
	ldr r1, _021240BC ; =0x0209A454
	add r0, r5, #0x2000
	strh r2, [r1, #0x2c]
	ldrb r0, [r0, #0x7c]
	cmp r0, #0
	bne _02124084
	ldr r0, _021240C0 ; =0x02099F18
	mov r1, r4
	ldr r0, [r0]
	bl FUN_0205131c
_02124084:
	add r0, r5, #0x2000
	ldr r2, [r0, #0xc4]
	ldr r1, [r0, #0xc0]
	str r2, [r1, #0x24]
	ldr r1, [r0, #0xc8]
	ldr r0, [r0, #0xc0]
	str r1, [r0, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
_021240A4: .word unk_02099EB4
_021240A8: .word unk_02099ED4
_021240AC: .word unk_02099F38
_021240B0: .word unk_02099EEC
_021240B4: .word unk_0209BA20
_021240B8: .word unk_0209A250
_021240BC: .word unk_0209A454
_021240C0: .word unk_02099F18
	arm_func_end FUN_ov63_02123f84

	arm_func_start FUN_ov63_021240c4
FUN_ov63_021240c4: ; 0x021240C4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _021240E0
	blx r1
_021240E0:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r5, _02124180 ; =0x02099ED4
	ldrb r1, [r4, #0x11]
	ldrsh r3, [r4, #0x30]
	ldr r0, [r5]
	bl  FUN_ov16_0210e3f0
	ldrb r1, [r4, #0x11]
	ldr r0, [r5]
	mov r2, #4
	bl  FUN_ov16_0210e5f0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _02124138
	mov r0, r4
	blx r1
_02124138:
	mov r0, #2
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r5, _02124180 ; =0x02099ED4
	ldrb r1, [r4, #0x11]
	ldrsh r3, [r4, #0x30]
	ldr r0, [r5]
	bl  FUN_ov16_0210e3f0
	ldrb r1, [r4, #0x11]
	ldr r0, [r5]
	mov r2, #4
	bl  FUN_ov16_0210e5f0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02124180: .word unk_02099ED4
	arm_func_end FUN_ov63_021240c4

	arm_func_start FUN_ov63_02124184
FUN_ov63_02124184: ; 0x02124184
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1b8]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _021241B0 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0x1b8]
	ldmfd sp!, {r4, pc}
_021241B0: .word unk_02099F38
	arm_func_end FUN_ov63_02124184

	arm_func_start FUN_ov63_021241b4
FUN_ov63_021241b4: ; 0x021241B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov63_021241b4

	arm_func_start FUN_ov63_021241c8
FUN_ov63_021241c8: ; 0x021241C8
	bx lr
	arm_func_end FUN_ov63_021241c8
_021241CC:
	.byte 0xC0, 0x00, 0x18, 0x00
	.byte 0x90, 0x00, 0x7A, 0x00, 0x48, 0x00, 0x7A, 0x00, 0x20, 0x00, 0x10, 0x00, 0x90, 0x00, 0x88, 0x00
	.byte 0xC8, 0x00, 0x10, 0x00, 0x48, 0x00, 0x5A, 0x00, 0x58, 0x00, 0x28, 0x00, 0x80, 0x00, 0x08, 0x00
	.byte 0xAE, 0x00, 0x00, 0x00, 0x94, 0x00, 0x00, 0x00, 0x80, 0x00, 0x58, 0x00, 0x98, 0x00, 0xA8, 0x00
	.byte 0x88, 0x00, 0x5F, 0x00, 0x20, 0x00, 0x10, 0x00, 0x8C, 0x00, 0x08, 0x00, 0x8C, 0x00, 0x00, 0x00
	.byte 0x7A, 0x00, 0x00, 0x00, 0x40, 0x00, 0x20, 0x00, 0xB6, 0x00, 0x00, 0x00, 0x58, 0x00, 0x48, 0x00
	.byte 0x20, 0x00, 0x08, 0x00, 0x10, 0x00, 0x58, 0x00, 0x88, 0x00, 0x10, 0x00, 0x68, 0x00, 0xA8, 0x00
	.byte 0x68, 0x00, 0xA8, 0x00, 0x00, 0x00, 0xB0, 0x00, 0xD8, 0x00, 0x18, 0x00, 0x68, 0x00, 0x18, 0x00
	.byte 0x90, 0x00, 0x1A, 0x00, 0xC0, 0x00, 0x88, 0x00, 0xF9, 0xFF, 0x00, 0x00, 0x48, 0x00, 0x30, 0x00
	.byte 0xA0, 0x00, 0x00, 0x00, 0x82, 0x00, 0x08, 0x00, 0x00, 0x00, 0xA8, 0x00, 0xD0, 0x00, 0xA8, 0x00
	.byte 0x58, 0x00, 0x68, 0x00, 0x90, 0x00, 0x5A, 0x00, 0x64, 0x00, 0x10, 0x00, 0x6C, 0x00, 0x10, 0x00
	.byte 0x7C, 0x00, 0x10, 0x00, 0x84, 0x00, 0x10, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x47, 0x12, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0x47, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0xE0, 0x47, 0x12, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x80, 0x47, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0xD0, 0x44, 0x12, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0xE0, 0x44, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0xF0, 0x44, 0x12, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x10, 0x45, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x20, 0x45, 0x12, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0x50, 0x45, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x60, 0x45, 0x12, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0x80, 0x45, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x90, 0x45, 0x12, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0xB0, 0x45, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00, 0xC0, 0x45, 0x12, 0x02
	.byte 0x0F, 0x00, 0x00, 0x00, 0xE0, 0x45, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00, 0xF0, 0x45, 0x12, 0x02
	.byte 0x11, 0x00, 0x00, 0x00, 0x10, 0x46, 0x12, 0x02, 0x12, 0x00, 0x00, 0x00, 0x20, 0x46, 0x12, 0x02
	.byte 0x14, 0x00, 0x00, 0x00, 0x40, 0x46, 0x12, 0x02, 0x15, 0x00, 0x00, 0x00, 0x50, 0x46, 0x12, 0x02
	.byte 0x16, 0x00, 0x00, 0x00, 0x70, 0x46, 0x12, 0x02, 0x17, 0x00, 0x00, 0x00, 0x80, 0x46, 0x12, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0xA0, 0x46, 0x12, 0x02, 0x19, 0x00, 0x00, 0x00, 0xB0, 0x46, 0x12, 0x02
	.byte 0x1A, 0x00, 0x00, 0x00, 0xD0, 0x46, 0x12, 0x02, 0x32, 0x00, 0x00, 0x00, 0xE0, 0x46, 0x12, 0x02
	.byte 0x33, 0x00, 0x00, 0x00, 0x90, 0x47, 0x12, 0x02, 0x2B, 0x00, 0x00, 0x00, 0xA0, 0x47, 0x12, 0x02
	.byte 0x2C, 0x00, 0x00, 0x00, 0xB0, 0x47, 0x12, 0x02, 0x2D, 0x00, 0x00, 0x00, 0x10, 0x47, 0x12, 0x02
	.byte 0x34, 0x00, 0x00, 0x00, 0x30, 0x47, 0x12, 0x02, 0x35, 0x00, 0x00, 0x00, 0x40, 0x47, 0x12, 0x02
	.byte 0x1C, 0x00, 0x00, 0x00, 0x60, 0x47, 0x12, 0x02, 0x1D, 0x00, 0x00, 0x00, 0x70, 0x47, 0x12, 0x02
	.byte 0x1E, 0x00, 0x00, 0x00, 0x30, 0x45, 0x12, 0x02, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x45, 0x12, 0x02
	.byte 0x20, 0x00, 0x00, 0x00, 0x40, 0x45, 0x12, 0x02, 0x21, 0x00, 0x00, 0x00, 0x70, 0x45, 0x12, 0x02
	.byte 0x22, 0x00, 0x00, 0x00, 0xA0, 0x45, 0x12, 0x02, 0x23, 0x00, 0x00, 0x00, 0xD0, 0x45, 0x12, 0x02
	.byte 0x24, 0x00, 0x00, 0x00, 0x00, 0x46, 0x12, 0x02, 0x25, 0x00, 0x00, 0x00, 0x30, 0x46, 0x12, 0x02
	.byte 0x27, 0x00, 0x00, 0x00, 0x60, 0x46, 0x12, 0x02, 0x28, 0x00, 0x00, 0x00, 0x90, 0x46, 0x12, 0x02
	.byte 0x29, 0x00, 0x00, 0x00, 0xC0, 0x46, 0x12, 0x02, 0x2A, 0x00, 0x00, 0x00, 0xF0, 0x46, 0x12, 0x02
	.byte 0x2E, 0x00, 0x00, 0x00, 0x00, 0x47, 0x12, 0x02, 0x2F, 0x00, 0x00, 0x00, 0x20, 0x47, 0x12, 0x02
	.byte 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov63_0212441c
FUN_ov63_0212441c: ; 0x0212441C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02124464 ; =0x02124480
	str r0, [r4, #8]
	ldr r0, _02124468 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _0212446C ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02124464: .word ov63_02124480
_02124468: .word 0x00009CCD
_0212446C: .word 0x0000EA3C
	arm_func_end FUN_ov63_0212441c

	.section .sinit, 4
ov63_02124470:
	.word FUN_ov63_0212441c

	.data
	.global ov63_02124480
ov63_02124480:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov63_02124498
ov63_02124498:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov63_021244A0
ov63_021244A0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov63_021244A8
ov63_021244A8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x82, 0xBB, 0x82, 0xA4, 0x82, 0xD1, 0x00, 0x00, 0x83, 0x41, 0x83, 0x43, 0x83, 0x65, 0x83, 0x80
	.byte 0x00, 0x00, 0x00, 0x00, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB6, 0x82, 0xE3, 0x82, 0xC2, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x33, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x33, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x34, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x6E, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x34, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x34, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x6E, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x6E, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x68, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x63, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x34, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x32, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x34, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x6E, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x32, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x32, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x35, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x35, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x35, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x69, 0x30, 0x38, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x77, 0x35, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x33, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x61, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x33, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x34, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x5F, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x32, 0x30, 0x5F, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x32, 0x30, 0x5F, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x32, 0x30, 0x5F, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x82, 0xED, 0x82, 0xB4, 0x82, 0xF0, 0x82, 0xA8, 0x82, 0xDA, 0x82, 0xA6, 0x82, 0xE9, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x5F, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x68, 0x77, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x5F, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.global ov63_021247F0
ov63_021247F0:
	.byte 0xC0, 0x47, 0x12, 0x02, 0xC4, 0x44, 0x12, 0x02, 0xB0, 0x44, 0x12, 0x02, 0xB8, 0x44, 0x12, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov63_02124808
ov63_02124808:
	.byte 0xC8, 0x41, 0x12, 0x02, 0xB4, 0x41, 0x12, 0x02
	.byte 0x64, 0x25, 0x12, 0x02, 0x64, 0x37, 0x12, 0x02, 0x74, 0x38, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0x7C, 0x3B, 0x12, 0x02, 0x80, 0x3F, 0x12, 0x02, 0x84, 0x3F, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov63_02124874
ov63_02124874:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x73, 0x70, 0x65, 0x63, 0x69, 0x61, 0x6C, 0x5F
	.byte 0x63, 0x6F, 0x6D, 0x61, 0x6E, 0x64, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov63_0212489C
ov63_0212489C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D
	.byte 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov63_021248BC
ov63_021248BC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F
	.byte 0x73, 0x70, 0x65, 0x63, 0x69, 0x61, 0x6C, 0x5F, 0x63, 0x6F, 0x6D, 0x61, 0x6E, 0x64, 0x2E, 0x53
	.byte 0x50, 0x44, 0x00, 0x00
	.global ov63_021248E4
ov63_021248E4:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F
	.byte 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00, 0x00
	.global ov63_021248F8
ov63_021248F8:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F
	.byte 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00, 0x00
	.global ov63_0212490C
ov63_0212490C:
	.byte 0x45, 0x51, 0x55, 0x49
	.byte 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00, 0x00
	.global ov63_02124920
ov63_02124920:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F
	.byte 0x58, 0x00, 0x00, 0x00
	.global ov63_02124934
ov63_02124934:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F
	.byte 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00, 0x00
	.global ov63_02124948
ov63_02124948:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F
	.byte 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00, 0x00
	.global ov63_0212495C
ov63_0212495C:
	.byte 0x45, 0x51, 0x55, 0x49
	.byte 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x53, 0x43, 0x41, 0x4C, 0x45, 0x00, 0x00, 0x00
	.global ov63_02124970
ov63_02124970:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69
	.byte 0x74, 0x65, 0x6D, 0x73, 0x6F, 0x72, 0x74, 0x6C, 0x69, 0x73, 0x74, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov63_02124990
ov63_02124990:
	.byte 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xA9, 0x82, 0xB9, 0x00, 0x00, 0x00, 0x00
	.global ov63_0212499C
ov63_0212499C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov63_021249A0
ov63_021249A0:
	.byte 0x25, 0x73, 0x81, 0x40, 0x82, 0xF0, 0x5B, 0x8A, 0x6F, 0x2F, 0x82, 0xA8, 0x82, 0xDA, 0x5D, 0x82
	.byte 0xA6, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov63_021249BC
ov63_021249BC:
	.byte 0x5B, 0x90, 0x56, 0x2F
	.byte 0x82, 0xA0, 0x82, 0xE7, 0x5D, 0x82, 0xBD, 0x82, 0xC8, 0x5B, 0x8B, 0x5A, 0x2F, 0x82, 0xED, 0x82
	.byte 0xB4, 0x5D, 0x00, 0x00
	.global ov63_021249D4
ov63_021249D4:
	.byte 0x25, 0x73, 0x81, 0x40, 0x82, 0xF0, 0x5B, 0x8A, 0x6F, 0x2F, 0x82, 0xA8
	.byte 0x82, 0xDA, 0x5D, 0x82, 0xA6, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov63_021249F0
ov63_021249F0:
	.byte 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xE7, 0x5D, 0x82, 0xBD, 0x82, 0xC8, 0x5B, 0x8B, 0x5A
	.byte 0x2F, 0x82, 0xED, 0x82, 0xB4, 0x5D, 0x00, 0x00
	.global ov63_02124A08
ov63_02124A08:
	.byte 0x25, 0x73, 0x81, 0x40, 0x82, 0xF0, 0x5B, 0x8A
	.byte 0x6F, 0x2F, 0x82, 0xA8, 0x82, 0xDA, 0x5D, 0x82, 0xA6, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81
	.byte 0x48, 0x00, 0x00, 0x00
	.global ov63_02124A24
ov63_02124A24:
	.byte 0x5B, 0x8F, 0xE3, 0x8F, 0x91, 0x2F, 0x82, 0xA4, 0x82, 0xED, 0x82, 0xAA
	.byte 0x5D, 0x82, 0xAB, 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xBD, 0x5B, 0x8B, 0x5A, 0x2F, 0x82, 0xED, 0x82
	.byte 0xB4, 0x5D, 0x82, 0xCD, 0x5B, 0x8F, 0xC1, 0x2F, 0x82, 0xAB, 0x5D, 0x82, 0xA6, 0x82, 0xC4, 0x82
	.byte 0xB5, 0x82, 0xDC, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xAA, 0x0A, 0x82, 0xE6, 0x82, 0xEB
	.byte 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov63_02124A70
ov63_02124A70:
	.byte 0x82, 0xBB, 0x82, 0xCC, 0x5B, 0x8B, 0x5A, 0x2F, 0x82, 0xED, 0x82, 0xB4, 0x5D, 0x82, 0xCD, 0x82
	.byte 0xB7, 0x82, 0xC5, 0x82, 0xC9, 0x5B, 0x8A, 0x6F, 0x2F, 0x82, 0xA8, 0x82, 0xDA, 0x5D, 0x82, 0xA6
	.byte 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x00, 0x00, 0x00, 0x00
	.global ov63_02124A9C
ov63_02124A9C:
	.byte 0x25, 0x73, 0x81, 0x40
	.byte 0x82, 0xCD, 0x81, 0x40, 0x0A, 0x82, 0xBB, 0x82, 0xCC, 0x5B, 0x8B, 0x5A, 0x2F, 0x82, 0xED, 0x82
	.byte 0xB4, 0x5D, 0x82, 0xF0, 0x82, 0xA8, 0x82, 0xDA, 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xEA, 0x82, 0xC8
	.byte 0x82, 0xA2, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00
	.global ov63_02124AC8
ov63_02124AC8:
	.byte 0x25, 0x73, 0x81, 0x40, 0x82, 0xCD, 0x5B, 0x90
	.byte 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xE7, 0x5D, 0x82, 0xBD, 0x82, 0xC8, 0x5B, 0x8B, 0x5A, 0x2F, 0x82
	.byte 0xED, 0x82, 0xB4, 0x5D, 0x82, 0xF0, 0x5B, 0x8A, 0x6F, 0x2F, 0x82, 0xA8, 0x82, 0xDA, 0x5D, 0x82
	.byte 0xA6, 0x82, 0xBD, 0x81, 0x49, 0x00, 0x00, 0x00
	.global ov63_02124AF8
ov63_02124AF8:
	.byte 0x82, 0xBB, 0x82, 0xCC, 0x5B, 0x8B, 0x5A, 0x2F
	.byte 0x82, 0xED, 0x82, 0xB4, 0x5D, 0x82, 0xC9, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x67, 0x83, 0x69, 0x81
	.byte 0x5B, 0x82, 0xCC, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xCD, 0x0A, 0x5B, 0x95
	.byte 0x4B, 0x97, 0x76, 0x2F, 0x82, 0xD0, 0x82, 0xC2, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xA0, 0x82
	.byte 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov63_02124B3C
ov63_02124B3C:
	.byte 0x81, 0x40, 0x81, 0x40
	.byte 0x81, 0x40, 0x81, 0x40, 0x00, 0x00, 0x00, 0x00
	.global ov63_02124B48
ov63_02124B48:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D, 0x62, 0x64, 0x5F, 0x63
	.byte 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov63_02124B68
ov63_02124B68:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x2E, 0x53
	.byte 0x54, 0x52, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov63_02124BA0
ov63_02124BA0:
	.space 0x20


	.include "/macros/function.inc"
	.include "/include/overlay81.inc"

	.text
	arm_func_start FUN_ov81_02119f00
FUN_ov81_02119f00: ; 0x02119F00
	ldr r3, _02119F18 ; =0x0211D210
	mov r2, #0
	str r3, [r0]
	str r1, [r0, #4]
	strb r2, [r0, #0x36]
	bx lr
_02119F18: .word 0x0211D210
	arm_func_end FUN_ov81_02119f00

	arm_func_start FUN_ov81_02119f1c
FUN_ov81_02119f1c: ; 0x02119F1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, #0
	mov r1, #0x3e
	mov r0, #0xe
	str r1, [r6, #0x3c]
	str r5, [r6, #0x40]
	str r5, [r6, #0x44]
	str r5, [r6, #0x48]
	str r5, [r6, #0x4c]
	str r0, [r6, #0x50]
	mov r4, r5
	ldr r8, _0211A000 ; =0x0209AEC0
	mvn r7, #0
	b _02119F74
_02119F58:
	mov r0, r8
	bl FUN_02046730
	cmp r5, r0
	add r0, r6, r5, lsl #2
	streq r4, [r0, #0x54]
	strne r7, [r0, #0x54]
	add r5, r5, #1
_02119F74:
	cmp r5, #4
	blt _02119F58
	mov r8, #0
	ldr r7, _0211A000 ; =0x0209AEC0
	mvn r5, #0
	b _02119FA8
_02119F8C:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r6, r8, lsl #2
	streq r4, [r0, #0x64]
	strne r5, [r0, #0x64]
	add r8, r8, #1
_02119FA8:
	cmp r8, #4
	blt _02119F8C
	mov r1, #0
	b _02119FC4
_02119FB8:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0x74]
	add r1, r1, #1
_02119FC4:
	cmp r1, #4
	blt _02119FB8
	mov r1, r4
	add r0, r6, #0x88
	mov r2, #0x60
	bl MemWrite
	ldr r2, _0211A004 ; =0x0209A4E0
	strb r4, [r6, #0x3e8]
	mov r0, #0x3e
	strb r0, [r2, #2]
	ldr r0, _0211A000 ; =0x0209AEC0
	mov r1, #6
	strb r4, [r2, #3]
	bl FUN_02046cb4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A000: .word 0x0209AEC0
_0211A004: .word 0x0209A4E0
	arm_func_end FUN_ov81_02119f1c

	arm_func_start FUN_ov81_0211a008
FUN_ov81_0211a008: ; 0x0211A008
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0211A034 ; =0x0211D0B4
	add r0, r4, #0x3c
	bl  FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #6
	bl FUN_ov81_0211a720
	ldmfd sp!, {r4, pc}
_0211A034: .word 0x0211D0B4
	arm_func_end FUN_ov81_0211a008

	arm_func_start FUN_ov81_0211a038
FUN_ov81_0211a038: ; 0x0211A038
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0211A060 ; =0x0211D0C4
	add r0, r4, #0x3c
	bl  FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov81_0211aabc
	ldmfd sp!, {r4, pc}
_0211A060: .word 0x0211D0C4
	arm_func_end FUN_ov81_0211a038

	arm_func_start FUN_ov81_0211a064
FUN_ov81_0211a064: ; 0x0211A064
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r9, r0
	mov r0, #0
	mov r1, r0
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	str r0, [sp, #0xc]
	mov r0, #0
	mov r1, r0
	bl  FUN_ov16_020f0634
	ldr r4, _0211A56C ; =0x0209AEC0
	ldrb r0, [r0, #2]
	ldrb r1, [r4, #0x64]
	str r0, [sp, #8]
	mov r0, r4
	str r1, [sp, #0x10]
	bl FUN_02046744
	str r0, [sp, #4]
	mov r0, r4
	bl FUN_02046730
	ldr r1, [r9, #8]
	str r0, [sp]
	cmp r1, #7
	beq _0211A0D0
	cmp r1, #9
	bne _0211A37C
_0211A0D0:
	mov r4, #0
	b _0211A374
_0211A0D8:
	ldr r1, [sp, #4]
	mov r0, #1
	tst r1, r0, lsl r4
	ldrne r0, [sp]
	cmpne r0, r4
	beq _0211A370
	mov r0, r4
	mov r1, #0
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	ldr r1, [r9, #0x3c]
	cmp r1, r0
	bne _0211A370
	mov r0, r4
	mov r1, #0
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0211A13C
	mov r0, r4
	mov r1, #0
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #9
	bne _0211A370
_0211A13C:
	mov r8, #0
	mov r0, r4
	mov r1, r8
	bl  FUN_ov16_020f0634
	ldrsb r7, [r0, #0x28]
	add r5, r0, #0x28
	mov r0, r7
	bl  FUN_ov16_020efa80
	mov r6, r0
	mov r0, r4
	bl  FUN_ov16_020f085c
	cmp r7, #0
	mov r7, r0
	blt _0211A254
	cmp r6, #0
	beq _0211A254
	ldrb r1, [r5, #1]
	ldr r0, [r6, #0x88]
	mov r11, #0x3f000000
	strb r1, [r0, #0x85]
	mov r10, r11
	b _0211A248
_0211A194:
	add r0, r5, r8, lsl #2
	ldrsh r0, [r0, #2]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211A1BC
	bl FUN_0201f704
	mov r1, r0
	mov r0, r10
	bl FUN_02020274
	b _0211A1C8
_0211A1BC:
	bl FUN_0201f704
	mov r1, r11
	bl FUN_020204a4
_0211A1C8:
	bl FUN_0201fdac
	str r0, [sp, #0x20]
	add r0, r5, r8, lsl #2
	ldrsh r0, [r0, #4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211A1F8
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A204
_0211A1F8:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A204:
	bl FUN_0201fdac
	str r0, [sp, #0x1c]
	bl  FUN_ov16_020f081c
	cmp r7, r0
	beq _0211A224
	add r0, sp, #0x20
	add r1, sp, #0x1c
	bl  FUN_ov16_020f025c
_0211A224:
	ldr r1, [sp, #0x20]
	ldr r0, [r6, #0x88]
	add r0, r0, r8, lsl #3
	str r1, [r0, #0x34]
	ldr r1, [sp, #0x1c]
	ldr r0, [r6, #0x88]
	add r0, r0, r8, lsl #3
	str r1, [r0, #0x38]
	add r8, r8, #1
_0211A248:
	ldrb r0, [r5, #1]
	cmp r8, r0
	blt _0211A194
_0211A254:
	ldr r1, _0211A570 ; =0x0209A2C0
	mov r6, #0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _0211A278
	bl  FUN_ov16_020efa80
	cmp r0, #0
	beq _0211A29C
	b _0211A290
_0211A278:
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	blt _0211A29C
	bl  FUN_ov16_020efa80
	cmp r0, #0
	beq _0211A29C
_0211A290:
	bl FUN_0206d554
	cmp r4, r0
	moveq r6, #1
_0211A29C:
	cmp r6, #0
	beq _0211A370
	ldrsh r1, [r5, #0x2a]
	mov r0, #0x400
	rsb r0, r0, #0
	cmp r1, r0
	beq _0211A354
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _0211A2D8
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A2E4
_0211A2D8:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A2E4:
	bl FUN_0201fdac
	str r0, [sp, #0x18]
	ldrsh r0, [r5, #0x2c]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211A310
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A31C
_0211A310:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A31C:
	bl FUN_0201fdac
	str r0, [sp, #0x14]
	bl  FUN_ov16_020f081c
	cmp r7, r0
	beq _0211A33C
	add r0, sp, #0x18
	add r1, sp, #0x14
	bl  FUN_ov16_020f025c
_0211A33C:
	ldr r0, _0211A574 ; =0x020EAB04
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x14]
	str r2, [r0, r7, lsl #3]!
	str r1, [r0, #4]
	b _0211A370
_0211A354:
	ldr r0, _0211A574 ; =0x020EAB04
	ldr r0, [r0, r7, lsl #3]
	cmp r0, #0x80000000
	ble _0211A370
	mov r0, r9
	mov r1, r7
	bl FUN_ov81_0211ad24
_0211A370:
	add r4, r4, #1
_0211A374:
	cmp r4, #4
	blt _0211A0D8
_0211A37C:
	ldr r0, [r9, #8]
	mov r5, #1
	cmp r0, #0xa
	mov r4, #0
	addls pc, pc, r0, lsl #2
	b _0211A560
_0211A394: ; jump table
	b _0211A560 ; case 0
	b _0211A560 ; case 1
	b _0211A560 ; case 2
	b _0211A560 ; case 3
	b _0211A3C0 ; case 4
	b _0211A3F0 ; case 5
	b _0211A560 ; case 6
	b _0211A560 ; case 7
	b _0211A560 ; case 8
	b _0211A438 ; case 9
	b _0211A508 ; case 10
_0211A3C0:
	mov r4, #5
	mov r1, r4
	sub r2, r4, #6
	mov r0, #4
	mov r3, #0
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A560
_0211A3E0:
	mov r0, r9
	mov r1, r4
_0211A3E8:
	bl FUN_ov81_0211a720
	b _0211A560
_0211A3F0:
	ldr r0, [sp, #0xc]
	cmp r0, #6
	cmpne r0, #7
	cmpne r0, #9
	bne _0211A410
	mov r0, r9
	mov r1, #6
	b _0211A3E8
_0211A410:
	mov r0, #5
	sub r1, r0, #6
	mov r2, r1
	mov r3, r4
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A560
	mov r0, r9
	bl FUN_ov81_0211a008
	b _0211A560
_0211A438:
	mov r6, r4
	b _0211A4C8
_0211A440:
	ldr r0, [sp, #4]
	tst r0, r5, lsl r6
	ldrne r0, [sp]
	cmpne r0, r6
	beq _0211A4C4
	add r0, r9, r6
	ldrb r0, [r0, #0x3ec]
	cmp r0, #0
	bne _0211A47C
	mov r0, r6
	mov r1, r4
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #9
	beq _0211A4A4
_0211A47C:
	add r0, r9, r6
	ldrb r0, [r0, #0x3ec]
	cmp r0, #0
	beq _0211A4C4
	mov r0, r6
	mov r1, r4
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #7
	bne _0211A4C4
_0211A4A4:
	strb r5, [r9, #0x33]
	add r0, r9, r6
	ldrb r0, [r0, #0x3ec]
	mov r1, r5
	cmp r0, #0
	movne r1, r4
	add r0, r9, r6
	strb r1, [r0, #0x3ec]
_0211A4C4:
	add r6, r6, #1
_0211A4C8:
	cmp r6, #4
	blt _0211A440
	mov r4, #8
	mov r2, r4
	mov r0, #9
	mov r1, #0xa
	mov r3, #0
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A560
	ldr r0, [r9, #0x3f4]
	sub r0, r0, #1
	str r0, [r9, #0x3f4]
	cmp r0, #0
	bgt _0211A560
	b _0211A3E0
_0211A508:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0211A53C
	ldr r0, [sp, #0xc]
	cmp r0, #0xb
	beq _0211A530
	ldr r1, [r9, #0x3c]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _0211A53C
_0211A530:
	mov r0, r9
	bl FUN_ov81_0211aabc
	b _0211A560
_0211A53C:
	mov r0, #0xa
	sub r1, r0, #0xb
	mov r2, r1
	mov r3, #0
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A560
	mov r0, r9
	bl FUN_ov81_0211a038
_0211A560:
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A56C: .word 0x0209AEC0
_0211A570: .word 0x0209A2C0
_0211A574: .word 0x020EAB04
	arm_func_end FUN_ov81_0211a064

	arm_func_start FUN_ov81_0211a578
FUN_ov81_0211a578: ; 0x0211A578
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r3, [r4, #8]
	cmp r3, #0xa
	addls pc, pc, r3, lsl #2
	b _0211A6D0
_0211A594: ; jump table
	b _0211A6D0 ; case 0
	b _0211A6D0 ; case 1
	b _0211A6D0 ; case 2
	b _0211A6D0 ; case 3
	b _0211A6D0 ; case 4
	b _0211A5C0 ; case 5
	b _0211A6D0 ; case 6
	b _0211A5EC ; case 7
	b _0211A6D0 ; case 8
	b _0211A5EC ; case 9
	b _0211A5E0 ; case 10
_0211A5C0:
	ldr r0, _0211A6E8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _0211A6D0
	add r0, r4, #0x3c
	mov r1, #1
_0211A5D8:
	bl  FUN_ov1_020e6eac
	b _0211A6D0
_0211A5E0:
	add r0, r4, #0x3c
	mov r1, #8
	b _0211A5D8
_0211A5EC:
	ldr r0, [r4, #0x3c]
	ldr r2, _0211A6EC ; =0x0209A4E0
	ldr r6, _0211A6F0 ; =0x0209A508
	strb r0, [r2, #2]
	mov r8, #0
	mov r0, r6
	mov r1, r8
	strb r3, [r2, #3]
	mov r2, #4
	bl MemWrite
	ldr r0, [r4, #0x18]
	strb r0, [r6]
	cmp r0, #0
	blt _0211A684
	bl  FUN_ov16_020efa80
	movs r7, r0
	beq _0211A684
	ldr r0, [r7, #0x88]
	add r5, sp, #0xc
	ldrb r0, [r0, #0x85]
	add r4, sp, #8
	strb r0, [r6, #1]
	b _0211A678
_0211A648:
	ldr r0, [r7, #0x88]
	mov r1, r5
	add r0, r0, #0x34
	mov r2, r4
	add r0, r0, r8, lsl #3
	bl  FUN_ov16_020f02d0
	add r1, r6, r8, lsl #2
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #8]
	strh r2, [r1, #2]
	strh r0, [r1, #4]
	add r8, r8, #1
_0211A678:
	ldrb r0, [r6, #1]
	cmp r8, r0
	blt _0211A648
_0211A684:
	bl  FUN_ov16_020f081c
	ldr r3, _0211A6F4 ; =0x020EAB04
	ldr r1, [r3, r0, lsl #3]
	cmp r1, #0x80000000
	moveq r0, #0x400
	rsbeq r0, r0, #0
	streqh r0, [r6, #0x2a]
	beq _0211A6C0
	add r1, sp, #4
	add r2, sp, #0
	add r0, r3, r0, lsl #3
	bl  FUN_ov16_020f02d0
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strh r1, [r6, #0x2a]
_0211A6C0:
	add sp, sp, #0x10
	strh r0, [r6, #0x2c]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A6D0:
	ldr r1, [r4, #8]
	add r0, r4, #0x3c
	bl  FUN_ov1_020e5328
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A6E8: .word 0x0209AEC0
_0211A6EC: .word 0x0209A4E0
_0211A6F0: .word 0x0209A508
_0211A6F4: .word 0x020EAB04
	arm_func_end FUN_ov81_0211a578

	arm_func_start FUN_ov81_0211a6f8
FUN_ov81_0211a6f8: ; 0x0211A6F8
	ldr r0, [r0, #8]
	cmp r0, #2
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov81_0211a6f8

	arm_func_start FUN_ov81_0211a70c
FUN_ov81_0211a70c: ; 0x0211A70C
	ldr r0, [r0, #8]
	cmp r0, #2
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov81_0211a70c

	arm_func_start FUN_ov81_0211a720
FUN_ov81_0211a720: ; 0x0211A720
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r2, [r4, #8]
	ldr r7, _0211AA90 ; =0x0209AEC0
	mov r5, #1
	mov r6, #0
	cmp r2, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r1, [r4, #8]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A750: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 3
	b _0211A77C ; case 4
	b _0211AA50 ; case 5
	b _0211A864 ; case 6
	b _0211A918 ; case 7
	b _0211A920 ; case 8
	b _0211A930 ; case 9
	b _0211AA08 ; case 10
_0211A77C:
	mov r8, r6
	mov r1, #0x3e
	mov r0, #0xe
	str r1, [r4, #0x3c]
	str r8, [r4, #0x40]
	str r8, [r4, #0x44]
	str r8, [r4, #0x48]
	str r8, [r4, #0x4c]
	str r0, [r4, #0x50]
	mvn r9, #0
	b _0211A7C4
_0211A7A8:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r4, r8, lsl #2
	streq r6, [r0, #0x54]
	strne r9, [r0, #0x54]
	add r8, r8, #1
_0211A7C4:
	cmp r8, #4
	blt _0211A7A8
	mov r8, #0
	mvn r9, #0
	b _0211A7F4
_0211A7D8:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r4, r8, lsl #2
	streq r6, [r0, #0x64]
	strne r9, [r0, #0x64]
	add r8, r8, #1
_0211A7F4:
	cmp r8, #4
	blt _0211A7D8
	mov r1, #0
	b _0211A810
_0211A804:
	add r0, r4, r1, lsl #2
	str r6, [r0, #0x74]
	add r1, r1, #1
_0211A810:
	cmp r1, #4
	blt _0211A804
	mov r1, r6
	add r0, r4, #0x88
	mov r2, #0x60
	bl MemWrite
	ldr r0, _0211AA94 ; =0x02099F14
	strb r6, [r4, #0x3e8]
	ldr r0, [r0]
	mov r1, r6
	bl  FUN_ov1_020e4304
	ldr r0, _0211AA98 ; =0x0209A128
	mov r1, r6
	ldr r0, [r0]
	bl  FUN_ov1_020dc74c
	ldr r0, _0211AA9C ; =0x0209A114
	mov r1, r6
	ldr r0, [r0]
	bl  FUN_ov1_020de230
	strb r5, [r4, #0x33]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A864:
	mov r2, r6
	ldr r0, _0211AAA0 ; =0x020A0640
	strb r2, [r4, #0x36]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211A898
	ldrb r0, [r7, #0x64]
	cmp r0, #0
	bne _0211A898
	ldr r0, _0211AAA4 ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl  FUN_ov132_021435c0
_0211A898:
	ldr r7, _0211AA94 ; =0x02099F14
	ldr r1, _0211AAA8 ; =0x0000067F
	ldr r0, [r7]
	bl  FUN_ov1_020e4304
	ldr r0, _0211AA98 ; =0x0209A128
	mov r1, r5
	ldr r0, [r0]
	bl  FUN_ov1_020dc74c
	ldr r0, _0211AA9C ; =0x0209A114
	mov r1, r5
	ldr r0, [r0]
	bl  FUN_ov1_020de230
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov1_020e45b8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldr r7, _0211AAAC ; =0x0209F5C0
	mov r1, r6
	mov r0, r7
	bl  FUN_ov16_020f5af0
	mov r0, r7
	mov r1, r6
	bl  FUN_ov16_020f5a58
	strb r5, [r4, #0x33]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A918:
	strb r5, [r4, #0x33]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A920:
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A930:
	mov r8, r6
	mov r1, #0x3e
	mov r0, #0xe
	str r1, [r4, #0x3c]
	str r8, [r4, #0x40]
	str r8, [r4, #0x44]
	str r8, [r4, #0x48]
	str r8, [r4, #0x4c]
	str r0, [r4, #0x50]
	mvn r9, #0
	b _0211A978
_0211A95C:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r4, r8, lsl #2
	streq r6, [r0, #0x54]
	strne r9, [r0, #0x54]
	add r8, r8, #1
_0211A978:
	cmp r8, #4
	blt _0211A95C
	mov r8, #0
	mvn r9, #0
	b _0211A9A8
_0211A98C:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r4, r8, lsl #2
	streq r6, [r0, #0x64]
	strne r9, [r0, #0x64]
	add r8, r8, #1
_0211A9A8:
	cmp r8, #4
	blt _0211A98C
	mov r1, #0
	b _0211A9C4
_0211A9B8:
	add r0, r4, r1, lsl #2
	str r6, [r0, #0x74]
	add r1, r1, #1
_0211A9C4:
	cmp r1, #4
	blt _0211A9B8
	mov r1, r6
	add r0, r4, #0x88
	mov r2, #0x60
	bl MemWrite
	mov r1, #8
	str r1, [r4, #0x3f4]
	ldr r0, _0211AA9C ; =0x0209A114
	strb r6, [r4, #0x3e8]
	strb r6, [r4, #0x3f0]
	ldr r0, [r0]
	mov r1, r6
	bl  FUN_ov1_020de230
	strb r5, [r4, #0x33]
	strb r6, [r4, #0x35]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AA08:
	ldr r1, _0211AAB0 ; =0x0211D0C4
	mov r0, r6
	bl  FUN_ov1_020e5634
	mov r1, r0
	add r0, r4, #0x3c
	bl  FUN_ov1_020e5030
	ldr r0, _0211AAB4 ; =0x020E9482
	mov r1, r6
	strb r6, [r0]
	ldr r0, _0211AA94 ; =0x02099F14
	strb r5, [r4, #0x33]
	ldr r0, [r0]
	bl  FUN_ov1_020e4304
	ldr r0, _0211AA98 ; =0x0209A128
	mov r1, r6
	ldr r0, [r0]
	bl  FUN_ov1_020dc74c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AA50:
	ldr r1, _0211AAB8 ; =0x0211D0B4
	mov r0, r6
	bl  FUN_ov1_020e5634
	mov r1, r0
	add r0, r4, #0x3c
	bl  FUN_ov1_020e5030
	ldr r0, _0211AA94 ; =0x02099F14
	strb r5, [r4, #0x33]
	ldr r0, [r0]
	mov r1, r6
	bl  FUN_ov1_020e4304
	ldr r0, _0211AA98 ; =0x0209A128
	mov r1, r6
	ldr r0, [r0]
	bl  FUN_ov1_020dc74c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AA90: .word 0x0209AEC0
_0211AA94: .word 0x02099F14
_0211AA98: .word 0x0209A128
_0211AA9C: .word 0x0209A114
_0211AAA0: .word 0x020A0640
_0211AAA4: .word 0x02099EF0
_0211AAA8: .word 0x0000067F
_0211AAAC: .word 0x0209F5C0
_0211AAB0: .word 0x0211D0C4
_0211AAB4: .word 0x020E9482
_0211AAB8: .word 0x0211D0B4
	arm_func_end FUN_ov81_0211a720

	arm_func_start FUN_ov81_0211aabc
FUN_ov81_0211aabc: ; 0x0211AABC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0xb
	ldmeqfd sp!, {r4, pc}
	mov r1, #0xb
	bl FUN_ov81_0211a720
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x38
	bl FUN_02041eac
	ldr r0, _0211AB08 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_01ff9c08
	ldmfd sp!, {r4, pc}
_0211AB08: .word 0x02099EF0
	arm_func_end FUN_ov81_0211aabc

	arm_func_start FUN_ov81_0211ab0c
FUN_ov81_0211ab0c: ; 0x0211AB0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #8]
	cmp r1, #0xb
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0xb
	bl FUN_ov81_0211a720
	bl  FUN_ov16_020f081c
	ldr r4, _0211ABB4 ; =0x0209A454
	mov r5, #1
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	mov r6, #0
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r6, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	ldr r0, _0211ABB8 ; =0x0209BA20
	strb r5, [r4, #0x33]
	bl FUN_020731a4
	strb r0, [r4, #0x30]
	ldr r0, _0211ABBC ; =0x02099EF0
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x2f]
	ldr r0, [r0]
	bl  FUN_ov126_021355b4
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r7, [r7, #4]
	mov r1, r6
	mov r0, r7
	mov r4, #0x5a
	mov r2, r4
	bl FUN_02041ef0
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ABB4: .word 0x0209A454
_0211ABB8: .word 0x0209BA20
_0211ABBC: .word 0x02099EF0
	arm_func_end FUN_ov81_0211ab0c

	arm_func_start FUN_ov81_0211abc0
FUN_ov81_0211abc0: ; 0x0211ABC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r1, [r9, #8]
	cmp r1, #0xb
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0xb
	bl FUN_ov81_0211a720
	ldr r0, _0211AC80 ; =0x0209AC44
	ldr r1, _0211AC84 ; =0x000005DC
	bl FUN_0202c470
	ldr r5, _0211AC88 ; =0x020A0640
	mov r8, #1
	strb r8, [r5, #0x9d]
	bl  FUN_ov16_020f081c
	ldr r7, _0211AC8C ; =0x0209BA20
	mov r1, r0
	mov r0, r7
	bl FUN_020724c8
	mov r1, r0
	ldr r4, _0211AC90 ; =0x02099EF0
	mov r6, #0
	ldr r0, [r4]
	mov r2, r6
	bl  FUN_ov132_0214609c
	strh r0, [r5, #0x9e]
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r0, r7
	bl FUN_020724c8
	mov r1, r0
	ldr r0, [r4]
	mov r2, r6
	bl  FUN_ov132_02146014
	strh r0, [r5, #0xa0]
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r5, [r9, #4]
	mov r1, r6
	mov r0, r5
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r5
	mov r2, r6
	mov r1, r8
	bl FUN_02041eac
	ldr r0, [r4]
	strb r8, [r0, #0x366]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AC80: .word 0x0209AC44
_0211AC84: .word 0x000005DC
_0211AC88: .word 0x020A0640
_0211AC8C: .word 0x0209BA20
_0211AC90: .word 0x02099EF0
	arm_func_end FUN_ov81_0211abc0

	arm_func_start FUN_ov81_0211ac94
FUN_ov81_0211ac94: ; 0x0211AC94
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _0211ACDC ; =0x020EAB04
	mov r5, r2
	mov r4, r3
	mov r0, r1
	str r5, [r12, r1, lsl #3]
	add r1, r12, r1, lsl #3
	str r4, [r1, #4]
	bl  FUN_ov16_020f0a14
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211ACE0 ; =0x02099F14
	ldr r3, [sp, #0x10]
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	bl  FUN_ov1_020e3a24
	ldmfd sp!, {r3, r4, r5, pc}
_0211ACDC: .word 0x020EAB04
_0211ACE0: .word 0x02099F14
	arm_func_end FUN_ov81_0211ac94

	arm_func_start FUN_ov81_0211ace4
FUN_ov81_0211ace4: ; 0x0211ACE4
	stmfd sp!, {r3, lr}
	ldr r2, _0211AD1C ; =0x020EAB04
	mov r3, #0x80000000
	mov r0, r1
	str r3, [r2, r1, lsl #3]
	add r1, r2, r1, lsl #3
	str r3, [r1, #4]
	bl  FUN_ov16_020f0a14
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211AD20 ; =0x02099F14
	ldr r0, [r0]
	bl  FUN_ov1_020e3b14 ; may be ov15
	ldmfd sp!, {r3, pc}
_0211AD1C: .word 0x020EAB04
_0211AD20: .word 0x02099F14
	arm_func_end FUN_ov81_0211ace4

	arm_func_start FUN_ov81_0211ad24
FUN_ov81_0211ad24: ; 0x0211AD24
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov81_0211ace4
	mov r0, r4
	bl  FUN_ov16_020f0a14
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211AD50 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211AD50: .word 0x0209AC44
	arm_func_end FUN_ov81_0211ad24

	arm_func_start FUN_ov81_0211ad54
FUN_ov81_0211ad54: ; 0x0211AD54
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r12, #0
	mov r4, r1
	str r12, [sp]
	bl FUN_ov81_0211ac94
	mov r0, r4
	bl  FUN_ov16_020f0a14
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _0211AD94 ; =0x0209AC44
	mov r1, #3
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211AD94: .word 0x0209AC44
	arm_func_end FUN_ov81_0211ad54

	arm_func_start FUN_ov81_0211ad98
FUN_ov81_0211ad98: ; 0x0211AD98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r0, [r6, #0x34]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	beq _0211ADD8
	ldr r0, _0211AEA8 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	strb r0, [r6, #0x34]
_0211ADD8:
	ldr r0, [r6, #8]
	cmp r0, #7
	beq _0211ADEC
	cmp r0, #9
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADEC:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	tst r5, #8
	beq _0211AE44
	ldr r0, _0211AEAC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211AE44
	mov r7, #0
	ldr r0, _0211AEA8 ; =0x0209A3E0
	mov r1, r7
	bl  FUN_ov16_020fe47c
	cmp r0, #0
	beq _0211AE44
	mov r4, #1
	ldr r0, _0211AEB0 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	strb r4, [r6, #0x34]
	strb r7, [r6, #0xd]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AE44:
	tst r5, #4
	beq _0211AE5C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
_0211AE5C:
	ldr r0, _0211AEB4 ; =0x00000CF3
	tst r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0211AEB8 ; =0x0209A12C
	ldr r0, _0211AEBC ; =0x0209A140
	ldr r1, [r1]
	ldr r2, [r0]
	ldr r0, _0211AEC0 ; =0x02099EF0
	tst r4, #0x11
	addne r1, r1, #8
	tst r4, #0x820
	subne r1, r1, #8
	tst r4, #0x440
	subne r2, r2, #8
	tst r4, #0x82
	ldr r0, [r0]
	addne r2, r2, #8
	bl  FUN_ov132_02148d74
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AEA8: .word 0x0209A3E0
_0211AEAC: .word 0x020A0640
_0211AEB0: .word 0x0209AC44
_0211AEB4: .word 0x00000CF3
_0211AEB8: .word 0x0209A12C
_0211AEBC: .word 0x0209A140
_0211AEC0: .word 0x02099EF0
	arm_func_end FUN_ov81_0211ad98

	arm_func_start FUN_ov81_0211aec4
FUN_ov81_0211aec4: ; 0x0211AEC4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldr r0, _0211B0A8 ; =0x0209F5C0
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl  FUN_ov16_020f6b3c
	cmp r0, #1
	beq _0211AF08
	cmp r0, #2
	beq _0211AF44
	cmp r0, #3
	beq _0211AF90
	b _0211AFAC
_0211AF08:
	ldr r0, _0211B0AC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _0211B0B0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r6
	beq _0211AF38
	mov r1, #9
	bl FUN_ov81_0211a720
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211AF38:
	bl FUN_ov81_0211aabc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211AF44:
	ldr r0, _0211B0B0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211AF74
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _0211AF74
	ldr r0, _0211B0AC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211AF74:
	ldr r0, _0211B0AC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov81_0211ab0c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211AF90:
	ldr r0, _0211B0AC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov81_0211abc0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211AFAC:
	bl  FUN_ov16_020f0a4c
	bl  FUN_ov16_020f0a14
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B0B0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211B020
	ldr r0, _0211B0B4 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	blt _0211AFEC
	bl  FUN_ov16_020f077c
	cmp r0, #0
	bne _0211B020
_0211AFEC:
	ldr r0, _0211B0B4 ; =0x0209A2C0
	ldr r1, [r0, #0x48]
	cmp r1, #0
	addge sp, sp, #8
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, pc}
	bl  FUN_ov16_020f077c
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, pc}
_0211B020:
	add r2, sp, #4
	add r3, sp, #0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020efd94 ; may be ov17
	bl  FUN_ov16_020f081c
	ldr r2, _0211B0B8 ; =0x020EAB04
	mov r1, r0
	ldr r2, [r2, r1, lsl #3]
	cmp r2, #0x80000000
	ble _0211B090
	ldr r0, [sp, #4]
	subs r0, r2, r0
	rsbmi r0, r0, #0
	cmp r0, #0x8000
	bgt _0211B090
	ldr r2, _0211B0B8 ; =0x020EAB04
	ldr r0, [sp]
	add r2, r2, r1, lsl #3
	ldr r2, [r2, #4]
	subs r0, r2, r0
	rsbmi r0, r0, #0
	cmp r0, #0x8000
	bgt _0211B090
	mov r0, r6
	bl FUN_ov81_0211ad24
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B090:
	ldr r2, [sp, #4]
	ldr r3, [sp]
	mov r0, r6
	bl FUN_ov81_0211ad54
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B0A8: .word 0x0209F5C0
_0211B0AC: .word 0x0209AC44
_0211B0B0: .word 0x020A0640
_0211B0B4: .word 0x0209A2C0
_0211B0B8: .word 0x020EAB04
	arm_func_end FUN_ov81_0211aec4

	arm_func_start FUN_ov81_0211b0bc
FUN_ov81_0211b0bc: ; 0x0211B0BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, r2
	mov r12, r1
	cmp r0, #0
	ldmgefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r0, _0211B13C ; =0x0209F5C0
	mov r1, r4
	mov r2, r12
	bl  FUN_ov16_020f6b3c
	cmp r0, #0xd
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov81_0211c274
	cmp r0, #0
	beq _0211B12C
	ldr r0, _0211B140 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #7
	bl FUN_ov81_0211a720
	mov r0, r5
	bl FUN_ov81_0211bccc
	strb r4, [r5, #0x33]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B12C:
	ldr r0, _0211B140 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B13C: .word 0x0209F5C0
_0211B140: .word 0x0209AC44
	arm_func_end FUN_ov81_0211b0bc

	arm_func_start FUN_ov81_0211b144
FUN_ov81_0211b144: ; 0x0211B144
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r3, [r8, #0x14]
	mov r7, r1
	cmp r3, #0
	mov r6, r2
	addlt sp, sp, #0x10
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0x10]
	mov r4, #0
	cmp r0, #0
	strlt r3, [r8, #0x10]
	ldr r0, [r8, #0x10]
	strlt r3, [r8, #0x18]
	movlt r4, #1
	bl  FUN_ov16_020efa80
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8, #0x28]
	ldr r2, [r8, #0x24]
	sub r3, r1, r6
	mul r1, r3, r3
	sub r2, r2, r7
	mla r1, r2, r2, r1
	cmp r1, #0x40
	addlt sp, sp, #0x10
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0
	beq _0211B1C4
	bl FUN_0206da98
_0211B1C4:
	ldr r0, [r5, #0x88]
	ldrb r0, [r0, #0x85]
	cmp r0, #0xa
	addhs sp, sp, #0x10
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r9, sp, #0xc
	add r4, sp, #8
	mov r0, r7
	mov r1, r6
	mov r2, r9
	mov r3, r4
	str r7, [r8, #0x24]
	str r6, [r8, #0x28]
	bl  FUN_ov16_020efd94 ; may be ov17
	str r9, [sp]
	str r4, [sp, #4]
	ldr r0, _0211B280 ; =0x02099EF0
	ldr r2, [sp, #0xc]
	ldr r0, [r0]
	ldr r3, [sp, #8]
	mov r1, r5
	bl  FUN_ov132_021453cc
	ldr r6, [r5, #0x88]
	ldrb r4, [r6, #0x85]
	cmp r4, #0
	ble _0211B254
	sub r0, r4, #1
	add r2, r6, r0, lsl #3
	ldr r1, [sp, #0xc]
	ldr r0, [r2, #0x34]
	cmp r1, r0
	ldreq r1, [sp, #8]
	ldreq r0, [r2, #0x38]
	cmpeq r1, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B254:
	add r1, r6, #0x34
	ldr r3, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, r1, r4, lsl #3
	stmia r2, {r0, r3}
	ldr r1, [r5, #0x88]
	ldrb r0, [r1, #0x85]
	add r0, r0, #1
	strb r0, [r1, #0x85]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B280: .word 0x02099EF0
	arm_func_end FUN_ov81_0211b144

	arm_func_start FUN_ov81_0211b284
FUN_ov81_0211b284: ; 0x0211B284
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, r1
	mov r4, r2
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r3, [r6, #0xc]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	strlt r5, [r6, #0x24]
	strlt r4, [r6, #0x28]
	cmp r3, #0
	bne _0211B2DC
	ldr r0, [r6, #0x28]
	ldr r1, [r6, #0x24]
	sub r2, r0, r4
	mul r0, r2, r2
	sub r1, r1, r5
	mla r0, r1, r1, r0
	cmp r0, #0x100
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B2DC:
	cmp r3, #0
	bne _0211B384
	ldr r1, [r6, #0x24]
	mov r3, #0
	ldr r2, [r6, #0x28]
	mov r0, r6
	str r3, [r6, #0x2c]
	bl FUN_ov81_0211b7bc
	cmp r0, #0
	movne r0, #2
	strne r0, [r6, #0x2c]
	bne _0211B384
	ldr r1, [r6, #0x24]
	ldr r2, [r6, #0x28]
	mov r0, r6
	bl FUN_ov81_0211b80c
	cmp r0, #0
	movne r0, #3
	strne r0, [r6, #0x2c]
	bne _0211B384
	ldr r1, [r6, #0x24]
	ldr r2, [r6, #0x28]
	mov r0, r6
	bl FUN_ov81_0211b85c
	cmp r0, #0
	movne r0, #4
	strne r0, [r6, #0x2c]
	bne _0211B384
	ldr r1, [r6, #0x24]
	ldr r2, [r6, #0x28]
	mov r0, r6
	bl  FUN_ov1_020be6c8
	movs r7, r0
	bmi _0211B37C
	bl  FUN_ov16_020f077c
	cmp r0, #0
	movne r0, #1
	strne r7, [r6, #0x14]
	strne r0, [r6, #0x2c]
	bne _0211B384
_0211B37C:
	mvn r0, #0
	str r0, [r6, #0x14]
_0211B384:
	ldr r0, [r6, #0x2c]
	cmp r0, #2
	bne _0211B3A4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov81_0211b8ac
	b _0211B3F4
_0211B3A4:
	cmp r0, #3
	bne _0211B3C0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov81_0211ba0c
	b _0211B3F4
_0211B3C0:
	cmp r0, #4
	bne _0211B3DC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov81_0211bb6c
	b _0211B3F4
_0211B3DC:
	cmp r0, #1
	bne _0211B3F4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov81_0211b144
_0211B3F4:
	mov r0, #1
	strb r0, [r6, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov81_0211b284

	arm_func_start FUN_ov81_0211b400
FUN_ov81_0211b400: ; 0x0211B400
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x34]
	mov r4, r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B534 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #8]
	cmp r1, #7
	beq _0211B448
	cmp r1, #9
	ldmnefd sp!, {r3, r4, r5, pc}
_0211B448:
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0211B4B8
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0211B494
	mov r1, #0
	sub r0, r1, #1
	mov r2, #1
	strb r2, [r5, #0xd]
	strb r1, [r5, #0xc]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	str r0, [r5, #0x14]
	str r1, [r5, #0x2c]
	b _0211B4A4
_0211B494:
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	bl FUN_ov81_0211b284
_0211B4A4:
	ldrh r0, [r4]
	str r0, [r5, #0x1c]
	ldrh r0, [r4, #2]
	str r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4B8:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0211B4E0
	mov r1, #0
	sub r0, r1, #1
	strb r1, [r5, #0xc]
	str r1, [r5, #0x2c]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	b _0211B520
_0211B4E0:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0211B520
	cmp r1, #7
	bne _0211B508
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	mov r0, r5
	bl FUN_ov81_0211aec4
	b _0211B520
_0211B508:
	cmp r1, #9
	bne _0211B520
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	mov r0, r5
	bl FUN_ov81_0211b0bc
_0211B520:
	mov r1, #0
	sub r0, r1, #1
	strb r1, [r5, #0xd]
	str r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B534: .word 0x0209A3E0
	arm_func_end FUN_ov81_0211b400

	arm_func_start FUN_ov81_0211b538
FUN_ov81_0211b538: ; 0x0211B538
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	bl  FUN_ov1_020db338
	cmp r0, #0
	mov r1, #0x800
	beq _0211B568
	ldr r0, _0211B5F0 ; =0x02099F14
	ldr r0, [r0]
	bl  FUN_ov1_020e4354
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211B568:
	ldr r0, _0211B5F0 ; =0x02099F14
	ldr r0, [r0]
	bl  FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x30]
	ldr r0, _0211B5F4 ; =0x020EAAF0
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #4
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211B5F8 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0xe
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211B5F0: .word 0x02099F14
_0211B5F4: .word 0x020EAAF0
_0211B5F8: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211b538

	arm_func_start FUN_ov81_0211b5fc
FUN_ov81_0211b5fc: ; 0x0211B5FC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r1, _0211B6CC ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov132_02145ff0
	cmp r0, #0
	beq _0211B628
	bl  FUN_ov1_020db338
	cmp r0, #0
	beq _0211B640
_0211B628:
	ldr r0, _0211B6D0 ; =0x02099F14
	mov r1, #0x1000
	ldr r0, [r0]
	bl  FUN_ov1_020e4354
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211B640:
	ldr r0, _0211B6D0 ; =0x02099F14
	mov r1, #0x1000
	ldr r0, [r0]
	bl  FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x31]
	ldr r0, _0211B6D4 ; =0x020EAAEC
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #4
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211B6D8 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0xf
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211B6CC: .word 0x02099EF0
_0211B6D0: .word 0x02099F14
_0211B6D4: .word 0x020EAAEC
_0211B6D8: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211b5fc

	arm_func_start FUN_ov81_0211b6dc
FUN_ov81_0211b6dc: ; 0x0211B6DC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r1, _0211B7AC ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov132_02145ff0
	cmp r0, #0
	beq _0211B708
	bl  FUN_ov1_020db338
	cmp r0, #0
	beq _0211B720
_0211B708:
	ldr r0, _0211B7B0 ; =0x02099F14
	mov r1, #0x1000
	ldr r0, [r0]
	bl  FUN_ov1_020e4354
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211B720:
	ldr r0, _0211B7B0 ; =0x02099F14
	mov r1, #0x4000
	ldr r0, [r0]
	bl  FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x32]
	ldr r0, _0211B7B4 ; =0x020EAAE8
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #4
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211B7B8 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0x10
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211B7AC: .word 0x02099EF0
_0211B7B0: .word 0x02099F14
_0211B7B4: .word 0x020EAAE8
_0211B7B8: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211b6dc

	arm_func_start FUN_ov81_0211b7bc
FUN_ov81_0211b7bc: ; 0x0211B7BC
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	beq _0211B800
	ldr r0, _0211B808 ; =0x020EAAF0
	ldrsh r3, [r0]
	cmp r1, r3
	blt _0211B800
	add r3, r3, #0x18
	cmp r1, r3
	bge _0211B800
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _0211B800
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_0211B800:
	mov r0, #0
	bx lr
_0211B808: .word 0x020EAAF0
	arm_func_end FUN_ov81_0211b7bc

	arm_func_start FUN_ov81_0211b80c
FUN_ov81_0211b80c: ; 0x0211B80C
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	beq _0211B850
	ldr r0, _0211B858 ; =0x020EAAEC
	ldrsh r3, [r0]
	cmp r1, r3
	blt _0211B850
	add r3, r3, #0x18
	cmp r1, r3
	bge _0211B850
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _0211B850
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_0211B850:
	mov r0, #0
	bx lr
_0211B858: .word 0x020EAAEC
	arm_func_end FUN_ov81_0211b80c

	arm_func_start FUN_ov81_0211b85c
FUN_ov81_0211b85c: ; 0x0211B85C
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	beq _0211B8A0
	ldr r0, _0211B8A8 ; =0x020EAAE8
	ldrsh r3, [r0]
	cmp r1, r3
	blt _0211B8A0
	add r3, r3, #0x18
	cmp r1, r3
	bge _0211B8A0
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _0211B8A0
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_0211B8A0:
	mov r0, #0
	bx lr
_0211B8A8: .word 0x020EAAE8
	arm_func_end FUN_ov81_0211b85c

	arm_func_start FUN_ov81_0211b8ac
FUN_ov81_0211b8ac: ; 0x0211B8AC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x30]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x24]
	subs r5, r5, #0xc
	str r4, [r6, #0x28]
	movmi r5, #0
	cmp r5, #0xe8
	ldrb r0, [r6, #0x31]
	sub r4, r4, #0xc
	movgt r5, #0xe8
	cmp r4, #0
	movlt r4, #0
	cmp r4, #0xa8
	movgt r4, #0xa8
	cmp r0, #0
	beq _0211B9A8
	ldr r0, _0211B9FC ; =0x020EAAEC
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	sub r12, sp, #4
	ldr r0, _0211BA00 ; =0x020EAAE8
	strh r2, [r12]
	strh r1, [r12, #2]
	ldrh r3, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r12]
	add r1, sp, #0xc
	strh r3, [r12]
	strh r0, [r12, #2]
	ldr r3, [r12]
	mov r0, r6
	bl  FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _0211BA00 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _0211B9FC ; =0x020EAAEC
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl  FUN_ov1_020be8c4
	cmp r0, #0
	ldrne r5, [sp, #0xc]
	ldrne r4, [sp, #0x10]
_0211B9A8:
	ldr r1, _0211BA04 ; =0x020EAAF0
	mov r0, r5, lsl #0x10
	ldrsh r2, [r1]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211BA04 ; =0x020EAAF0
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _0211BA08 ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0xe
	str r6, [sp, #8]
	bl  FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B9FC: .word 0x020EAAEC
_0211BA00: .word 0x020EAAE8
_0211BA04: .word 0x020EAAF0
_0211BA08: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211b8ac

	arm_func_start FUN_ov81_0211ba0c
FUN_ov81_0211ba0c: ; 0x0211BA0C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x30]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x24]
	sub r5, r5, #0xc
	cmp r5, #0xe8
	str r4, [r6, #0x28]
	movgt r5, #0xe8
	bgt _0211BA50
	cmp r5, #0
	movlt r5, #0
_0211BA50:
	sub r4, r4, #0xc
	cmp r4, #0xa8
	movgt r4, #0xa8
	bgt _0211BA68
	cmp r4, #0
	movlt r4, #0
_0211BA68:
	ldr r0, _0211BB5C ; =0x020EAAF0
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	sub r12, sp, #4
	ldr r0, _0211BB60 ; =0x020EAAE8
	strh r2, [r12]
	strh r1, [r12, #2]
	ldrh r3, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r12]
	add r1, sp, #0xc
	strh r3, [r12]
	strh r0, [r12, #2]
	ldr r3, [r12]
	mov r0, r6
	bl  FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _0211BB60 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _0211BB5C ; =0x020EAAF0
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl  FUN_ov1_020be8c4
	cmp r0, #0
	ldr r1, _0211BB64 ; =0x020EAAEC
	ldrne r5, [sp, #0xc]
	ldrsh r2, [r1]
	mov r0, r5, lsl #0x10
	ldrne r4, [sp, #0x10]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211BB64 ; =0x020EAAEC
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _0211BB68 ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0xf
	str r6, [sp, #8]
	bl  FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BB5C: .word 0x020EAAF0
_0211BB60: .word 0x020EAAE8
_0211BB64: .word 0x020EAAEC
_0211BB68: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211ba0c

	arm_func_start FUN_ov81_0211bb6c
FUN_ov81_0211bb6c: ; 0x0211BB6C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x30]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x24]
	sub r5, r5, #0xc
	cmp r5, #0xe8
	str r4, [r6, #0x28]
	movgt r5, #0xe8
	bgt _0211BBB0
	cmp r5, #0
	movlt r5, #0
_0211BBB0:
	sub r4, r4, #0xc
	cmp r4, #0xa8
	movgt r4, #0xa8
	bgt _0211BBC8
	cmp r4, #0
	movlt r4, #0
_0211BBC8:
	ldr r0, _0211BCBC ; =0x020EAAF0
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	sub r12, sp, #4
	ldr r0, _0211BCC0 ; =0x020EAAEC
	strh r2, [r12]
	strh r1, [r12, #2]
	ldrh r3, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r12]
	add r1, sp, #0xc
	strh r3, [r12]
	strh r0, [r12, #2]
	ldr r3, [r12]
	mov r0, r6
	bl  FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _0211BCC0 ; =0x020EAAEC
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _0211BCBC ; =0x020EAAF0
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl  FUN_ov1_020be8c4
	cmp r0, #0
	ldr r1, _0211BCC4 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrsh r2, [r1]
	mov r0, r5, lsl #0x10
	ldrne r4, [sp, #0x10]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211BCC4 ; =0x020EAAE8
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _0211BCC8 ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0x10
	str r6, [sp, #8]
	bl  FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BCBC: .word 0x020EAAF0
_0211BCC0: .word 0x020EAAEC
_0211BCC4: .word 0x020EAAE8
_0211BCC8: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211bb6c

	arm_func_start FUN_ov81_0211bccc
FUN_ov81_0211bccc: ; 0x0211BCCC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r11, _0211BFC4 ; =0x0209F5C0
	mov r7, #0
	mov r10, r0
	mov r0, r11
	mov r1, r7
	add r4, sp, #0x14
	mov r5, #4
	mov r6, #1
	bl  FUN_ov16_020f5af0
	mov r0, r11
	mov r1, r7
	bl  FUN_ov16_020f5a58
	ldr r9, [r10, #0x404]
	cmp r9, #0
	beq _0211BE94
	bl  FUN_ov1_020db3cc
	movs r8, r0
	beq _0211BD84
	ldr r0, [r9, #0xc]
	mov r1, #0x14
	strh r1, [sp, #0x16]
	mov r1, #8
	add r0, r9, r0
	strh r1, [sp, #0x18]
	mov r1, #0x40
	add r0, r0, #0xc0
	strh r1, [sp, #0x20]
	mov r1, #0x20
	mov r2, #2
	strh r1, [sp, #0x22]
	str r0, [sp, #0x28]
	strh r5, [sp, #0x1a]
	strh r6, [sp, #0x14]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r2, [sp, #0x24]
	str r6, [sp]
	stmib sp, {r4, r7}
	str r7, [sp, #0xc]
	mov r0, r11
	mov r1, r7
	mov r3, #3
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211BD84:
	ldr r0, [r9, #0xc]
	mov r1, #0
	add r7, r9, r0
	cmp r8, #0
	movne r0, #0xc
	moveq r0, #5
	mov r2, #8
	add r3, r7, #0x40
	mov r11, #0x14
	strh r0, [sp, #0x14]
	mov r9, #0x40
	mov r0, #0x20
	strh r2, [sp, #0x18]
	mov r2, #2
	strh r0, [sp, #0x22]
	str r3, [sp, #0x28]
	strh r11, [sp, #0x16]
	strh r9, [sp, #0x20]
	strh r5, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strb r2, [sp, #0x24]
	mov r3, #1
	stmia sp, {r3, r4}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211BFC4 ; =0x0209F5C0
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211BFC8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211BE14
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	beq _0211BE84
_0211BE14:
	mov r0, #0x17
	cmp r8, #0
	mov r1, #0
	add r3, r7, #0x80
	moveq r0, #0x13
	mov r2, #2
	mov r11, #0x14
	mov r9, #8
	strh r0, [sp, #0x14]
	mov r7, #0x40
	mov r0, #0x20
	strh r0, [sp, #0x22]
	str r3, [sp, #0x28]
	strh r11, [sp, #0x16]
	strh r9, [sp, #0x18]
	strh r5, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r7, [sp, #0x20]
	strb r2, [sp, #0x24]
	str r6, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211BFC4 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211BE84:
	mov r0, #0
	mov r1, #2
	mov r2, #1
	bl  FUN_ov16_020f0e9c
_0211BE94:
	ldr r0, _0211BFC8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211BF34
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _0211BF34
	ldr r1, [r10, #0x458]
	cmp r1, #0
	beq _0211BF34
	ldr r0, [r1, #0xc]
	cmp r8, #0
	add r7, r1, r0
	mov r1, #0
	movne r0, #0x17
	moveq r0, #0x13
	mov r12, #0x14
	mov r11, #8
	mov r9, #0x40
	mov r8, #0x20
	mov r3, #7
	strh r0, [sp, #0x14]
	strh r12, [sp, #0x16]
	strh r11, [sp, #0x18]
	strh r5, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r9, [sp, #0x20]
	strh r8, [sp, #0x22]
	strb r3, [sp, #0x24]
	str r7, [sp, #0x28]
	str r6, [sp]
	str r4, [sp, #4]
	mov r2, #2
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211BFC4 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211BF34:
	ldr r2, [r10, #0x410]
	cmp r2, #0
	beq _0211BFA4
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r7, r2, r0
	mov r5, #5
	mov r2, #0x16
	mov r3, #4
	mov r0, #3
	strh r2, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r5, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r3, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	str r7, [sp, #0x28]
	str r6, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211BFC4 ; =0x0209F5C0
	mov r2, #2
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211BFA4:
	mov r0, r10
	bl FUN_ov81_0211b538
	mov r0, r10
	bl FUN_ov81_0211b5fc
	mov r0, r10
	bl FUN_ov81_0211b6dc
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BFC4: .word 0x0209F5C0
_0211BFC8: .word 0x020A0640
	arm_func_end FUN_ov81_0211bccc

	arm_func_start FUN_ov81_0211bfcc
FUN_ov81_0211bfcc: ; 0x0211BFCC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r5, _0211C18C ; =0x0209AEC0
	mov r6, r0
	mov r0, r5
	mov r4, #0
	bl FUN_02046744
	mov r11, r0
	mov r0, r5
	bl FUN_02046730
	ldr r5, [r6, #0x434]
	mov r7, r0
	cmp r5, #0
	ldrne r6, [r6, #0x440]
	cmpne r6, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, r4
	ldr r8, _0211C190 ; =0x0209F5C0
	b _0211C048
_0211C01C:
	mov r0, r8
	mov r1, r4
	mov r3, r4
	add r2, r9, #7
	bl  FUN_ov16_020f5eec
	mov r0, r8
	mov r1, r4
	mov r3, r4
	add r2, r9, #0xa
	bl  FUN_ov16_020f5eec
	add r9, r9, #1
_0211C048:
	cmp r9, #3
	blt _0211C01C
	mov r8, #0
	mov r9, r8
	b _0211C17C
_0211C05C:
	mov r0, #1
	tst r11, r0, lsl r9
	cmpne r7, r9
	beq _0211C178
	mov r0, r9
	mov r1, r4
	mov r10, r4
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	ldr r1, [r5, #0xc]
	mov r2, #2
	cmp r0, #9
	cmpne r0, #0xa
	moveq r10, #1
	add r1, r5, r1
	add r1, r1, r10, lsl #2
	str r1, [sp, #0x28]
	mov r1, #0x1c
	strh r1, [sp, #0x14]
	mov r1, #2
	strh r1, [sp, #0x18]
	mov r1, #1
	strh r1, [sp, #0x1a]
	mov r1, #6
	strb r1, [sp, #0x24]
	strh r8, [sp, #0x16]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	mov r1, #3
	str r1, [sp]
	add r1, sp, #0x14
	stmib sp, {r1, r4}
	str r4, [sp, #0xc]
	ldr r0, _0211C190 ; =0x0209F5C0
	mov r1, r4
	add r3, r8, #7
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r9
	bl  FUN_ov16_020f08a4
	ldr r2, [r6, #0xc]
	mov r1, r4
	add r2, r6, r2
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x28]
	mov r0, #0x1e
	strh r0, [sp, #0x14]
	mov r0, #2
	strh r0, [sp, #0x18]
	mov r0, #1
	strh r0, [sp, #0x1a]
	mov r0, #6
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x16]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	mov r0, #3
	str r0, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _0211C190 ; =0x0209F5C0
	mov r2, #2
	add r3, r8, #0xa
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r8, r8, #1
_0211C178:
	add r9, r9, #1
_0211C17C:
	cmp r9, #4
	blt _0211C05C
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C18C: .word 0x0209AEC0
_0211C190: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211bfcc

	arm_func_start FUN_ov81_0211c194
FUN_ov81_0211c194: ; 0x0211C194
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	bl FUN_ov81_0211c274
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r8, [r4, #0x35]
	cmp r8, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0x44c]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r12, #4
	add r7, r1, r0
	mov r6, #0xc
	mov r5, #0x13
	mov lr, #8
	mov r2, #0
	mov r3, #0x40
	mov r1, #0x18
	mov r0, #5
	strh r3, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r0, [sp, #0x24]
	strh r6, [sp, #0x14]
	strh r5, [sp, #0x16]
	strh lr, [sp, #0x18]
	strh r12, [sp, #0x1a]
	strh r2, [sp, #0x1c]
	cmp r8, #0
	strh r12, [sp, #0x1e]
	moveq r2, #1
	rsb r12, r2, #0
	str r7, [sp, #0x28]
	mov r1, #3
	str r1, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, _0211C270 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0xd
	str r12, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, #1
	strb r0, [r4, #0x35]
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C270: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211c194

	arm_func_start FUN_ov81_0211c274
FUN_ov81_0211c274: ; 0x0211C274
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _0211C30C ; =0x0209AEC0
	mov r0, r4
	bl FUN_02046744
	mov r6, r0
	mov r0, r4
	bl FUN_02046730
	mov r8, #0
	mov r7, r0
	mov r4, r8
	mov r9, r8
	mov r5, #1
	b _0211C2FC
_0211C2A8:
	cmp r8, r7
	beq _0211C2F8
	tst r6, r5, lsl r8
	beq _0211C2F8
	mov r0, r8
	mov r1, r4
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #8
	cmpne r0, #9
	cmpne r0, #0xa
	bne _0211C2F0
	mov r0, r8
	mov r1, r9
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	cmp r0, #0x3e
	beq _0211C2F8
_0211C2F0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C2F8:
	add r8, r8, #1
_0211C2FC:
	cmp r8, #4
	blt _0211C2A8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C30C: .word 0x0209AEC0
	arm_func_end FUN_ov81_0211c274

	arm_func_start FUN_ov81_0211c310
FUN_ov81_0211c310: ; 0x0211C310
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r7, r0
	ldr r0, [r7, #8]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _0211C50C
_0211C32C: ; jump table
	b _0211C50C ; case 0
	b _0211C50C ; case 1
	b _0211C50C ; case 2
	b _0211C50C ; case 3
	b _0211C454 ; case 4
	b _0211C454 ; case 5
	b _0211C50C ; case 6
	b _0211C50C ; case 7
	b _0211C50C ; case 8
	b _0211C358 ; case 9
	b _0211C454 ; case 10
_0211C358:
	ldrb r0, [r7, #0x3f0]
	cmp r0, #0
	bne _0211C43C
	ldr r6, _0211C514 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5af0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5a58
	ldr r1, [r7, #0x41c]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r1, #0xc]
	mov r4, #5
	add r0, r1, r0
	add r3, r0, #0x108
	mov r2, #0xf
	mov r1, #0x16
	mov r0, #3
	strh r2, [sp, #0x16]
	strh r1, [sp, #0x18]
	strh r0, [sp, #0x1a]
	str r3, [sp, #0x28]
	strh r4, [sp, #0x14]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	strb r4, [sp, #0x24]
	add r0, sp, #0x14
	str r5, [sp]
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #2
	str r5, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0x1e
	bl  FUN_ov16_020f637c
	mov r0, r5
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f0e9c
	mov r6, #1
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl  FUN_ov16_020f0e9c
	strb r6, [r7, #0x3f0]
_0211C43C:
	mov r0, r7
	bl FUN_ov81_0211c194
	mov r0, r7
	bl FUN_ov81_0211bfcc
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C454:
	ldr r5, _0211C514 ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f5af0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f5a58
	ldr r2, [r7, #0x428]
	cmp r2, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0x1d
	add r3, r2, r0
	mov r0, #3
	mov r2, #2
	mov r7, #5
	strh r1, [sp, #0x14]
	strh r0, [sp, #0x18]
	strh r4, [sp, #0x16]
	strh r2, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	strb r7, [sp, #0x24]
	str r3, [sp, #0x28]
	mov r6, #6
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r4
	mov r3, r6
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl  FUN_ov16_020f63b0
	mov r0, r4
	mov r1, r7
	mov r2, r4
	bl  FUN_ov16_020f0e9c
_0211C50C:
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C514: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211c310

	arm_func_start FUN_ov81_0211c518
FUN_ov81_0211c518: ; 0x0211C518
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0x33]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #8]
	mov r2, #0
	cmp r1, #7
	andne r1, r2, #0xff
	strneb r1, [r0, #0x31]
	strneb r1, [r0, #0x30]
	ldr r1, [r0, #8]
	strneb r2, [r0, #0x32]
	strb r2, [r0, #0x33]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _0211C594
_0211C558: ; jump table
	b _0211C594 ; case 0
	b _0211C594 ; case 1
	b _0211C594 ; case 2
	b _0211C594 ; case 3
	b _0211C58C ; case 4
	b _0211C58C ; case 5
	b _0211C584 ; case 6
	ldmfd sp!, {r3, r4, r5, pc} ; case 7
	b _0211C58C ; case 8
	b _0211C58C ; case 9
	b _0211C58C ; case 10
_0211C584:
	bl FUN_ov81_0211bccc
	ldmfd sp!, {r3, r4, r5, pc}
_0211C58C:
	bl FUN_ov81_0211c310
	ldmfd sp!, {r3, r4, r5, pc}
_0211C594:
	ldr r5, _0211C5B8 ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f5af0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f5a58
	ldmfd sp!, {r3, r4, r5, pc}
_0211C5B8: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211c518

	arm_func_start FUN_ov81_0211c5bc
FUN_ov81_0211c5bc: ; 0x0211C5BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r6, _0211C744 ; =0x020A6C40
	mov r5, #0x800
	mov r7, #0x20
	mov r8, #0
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, r5
	str r7, [sp, #4]
	bl FUN_0200787c
	mov r0, r6
	mov r1, r5
	bl FUN_020026d0
	mov r0, r6
	mov r1, r8
	mov r2, r5
	bl FUN_020054dc
	mov r0, r6
	mov r2, r5
	mov r1, r8
	bl FUN_020055bc
	bl FUN_02004f78
	mov r1, r0
	mov r0, r8
	mov r2, r7
	bl FUN_0200787c
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r8
	mov r2, r7
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r7
	bl FUN_020026d0
	bl FUN_02004fcc
	mov r1, r7
	bl FUN_020026d0
	mov r7, #2
	mov r1, r8
	add r8, sp, #4
	str r8, [sp]
	ldr r0, [r4, #0x404]
	mov r2, r7
	mov r3, r7
	bl  FUN_ov1_020dc020
	str r8, [sp]
	mov r1, r0
	ldr r0, [r4, #0x410]
	mov r2, #3
	mov r3, r7
	bl  FUN_ov1_020dc020
	mov r1, r0
	ldr r0, _0211C748 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211C738
	str r8, [sp]
	mov r6, #5
	ldr r0, [r4, #0x41c]
	mov r2, r6
	mov r3, r7
	bl  FUN_ov1_020dc020
	str r8, [sp]
	mov r1, r0
	ldr r0, [r4, #0x428]
	mov r2, r6
	mov r3, r7
	bl  FUN_ov1_020dc020
	mov r5, #6
	str r8, [sp]
	mov r1, r0
	ldr r0, [r4, #0x434]
	mov r2, r5
	mov r3, r7
	bl  FUN_ov1_020dc020
	mov r2, r5
	str r8, [sp]
	mov r1, r0
	ldr r0, [r4, #0x440]
	mov r3, r7
	bl  FUN_ov1_020dc020
	str r8, [sp]
	mov r1, r0
	ldr r0, [r4, #0x458]
	mov r2, #7
	mov r3, r7
	bl  FUN_ov1_020dc020
	str r8, [sp]
	mov r2, r6
	mov r3, r7
	mov r1, r0
	ldr r0, [r4, #0x44c]
	bl  FUN_ov1_020dc088
_0211C738:
	bl  FUN_ov16_020f10ac
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C744: .word 0x020A6C40
_0211C748: .word 0x020A0640
	arm_func_end FUN_ov81_0211c5bc

	arm_func_start FUN_ov81_0211c74c
FUN_ov81_0211c74c: ; 0x0211C74C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3f8
	mov r1, #0
	mov r2, #0x6c
	bl MemWrite
	ldr r0, _0211C780 ; =0x0211D28C
	add r1, r4, #0x3f8
	bl  FUN_ov1_020dbe00
	mov r0, r4
	mov r1, #1
	bl FUN_ov81_0211a720
	ldmfd sp!, {r4, pc}
_0211C780: .word 0x0211D28C
	arm_func_end FUN_ov81_0211c74c

	arm_func_start FUN_ov81_0211c784
FUN_ov81_0211c784: ; 0x0211C784
	mov r1, r0
	ldr r0, [r1, #0x3f8]
	ldr r2, _0211C79C ; =0x0211D0D8
	ldr r12, _0211C7A0 ; = FUN_ov1_020dbfdc
	add r1, r1, #0x3f8
	bx r12
_0211C79C: .word 0x0211D0D8
_0211C7A0: .word  FUN_ov1_020dbfdc
	arm_func_end FUN_ov81_0211c784

	arm_func_start FUN_ov81_0211c7a4
FUN_ov81_0211c7a4: ; 0x0211C7A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x3f8
	mov r4, #0xc
_0211C7B4:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #9
	blt _0211C7B4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov81_0211c7a4

	arm_func_start FUN_ov81_0211c7cc
FUN_ov81_0211c7cc: ; 0x0211C7CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xb0
	ldr r8, _0211C958 ; =0x0209A2C0
	mov r7, r1
	ldr r0, [r8, #0x48]
	cmp r0, #0
	blt _0211C80C
	bl  FUN_ov16_020f07f4
	mov r4, r0
	bl  FUN_ov16_020f081c
	cmp r4, r0
	bne _0211C80C
	ldr r0, [r8, #0x48]
	bl  FUN_ov16_020efa80
	mov r4, r0
	b _0211C818
_0211C80C:
	add sp, sp, #0xb0
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C818:
	bl  FUN_ov16_020f081c
	ldr r1, _0211C95C ; =0x020EAB04
	mov r12, r0
	ldr r0, [r1, r12, lsl #3]
	cmp r0, #0x80000000
	ble _0211C94C
	add r6, sp, #0x50
	mov r5, #6
_0211C838:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211C838
	mov r6, #0
	ldr r1, _0211C95C ; =0x020EAB04
	add r5, sp, #0x50
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r2, r1, r12, lsl #3
	ldr r8, _0211C960 ; =0x02099EF0
	mov r4, #2
	ldr r0, [r8]
	ldr r1, [r1, r12, lsl #3]
	ldr r2, [r2, #4]
	mov r3, r4
	bl  FUN_ov126_0212cbdc
	str r6, [sp]
	add r9, sp, #0x18
	ldr r0, [r8]
	mov r1, r9
	mov r3, r5
	mov r2, #6
	bl  FUN_ov126_0212aff8
	cmp r0, #0
	beq _0211C8E0
	stmia sp, {r6, r9}
	add r1, sp, #0x20
	str r1, [sp, #8]
	add r0, sp, #0x50
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	ldr r0, _0211C964 ; =0x0209A128
	str r6, [sp, #0x14]
	ldr r0, [r0]
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl  FUN_ov1_020dc44c
	add r7, r7, #1
_0211C8E0:
	mov r1, #1
	ldr r0, _0211C960 ; =0x02099EF0
	str r1, [sp]
	add r4, sp, #0x18
	ldr r0, [r0]
	add r3, sp, #0x50
	mov r1, r4
	mov r2, #6
	bl  FUN_ov126_0212aff8
	cmp r0, #0
	beq _0211C94C
	mov r2, #0
	stmia sp, {r2, r4}
	add r1, sp, #0x20
	str r1, [sp, #8]
	add r0, sp, #0x50
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r0, _0211C964 ; =0x0209A128
	ldr r2, _0211C968 ; =0x00007FE0
	ldr r0, [r0]
	mov r1, r7
	mov r3, #3
	bl  FUN_ov1_020dc44c
	add r7, r7, #1
_0211C94C:
	mov r0, r7
	add sp, sp, #0xb0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C958: .word 0x0209A2C0
_0211C95C: .word 0x020EAB04
_0211C960: .word 0x02099EF0
_0211C964: .word 0x0209A128
_0211C968: .word 0x00007FE0
	arm_func_end FUN_ov81_0211c7cc

	arm_func_start FUN_ov81_0211c96c
FUN_ov81_0211c96c: ; 0x0211C96C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r4, _0211CA90 ; =0x0209A128
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl  FUN_ov1_020dc708
	mov r7, #0
	mov r8, r7
	mov r5, #0xc
	mov r11, #0x1f
	b _0211CA74
_0211C998:
	mov r0, r8
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _0211CA70
	bl FUN_0206d660
	cmp r0, #0
	beq _0211CA70
	mov r0, r6
	bl FUN_0206d688
	cmp r0, #0
	beq _0211CA70
	mov r0, r6
	bl FUN_0206d6b0
	cmp r0, #0
	bne _0211C9FC
	ldr r0, _0211CA94 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0211CA70
	mov r0, r6
	bl FUN_0206d5f0
	mov r9, r0
	bl  FUN_ov16_020f081c
	cmp r9, r0
	bne _0211CA70
_0211C9FC:
	ldr r0, [r6, #0x88]
	ldrb r9, [r0, #0x85]
	ldrb r10, [r0, #0x84]
	cmp r10, r9
	bhs _0211CA70
	mov r0, r6
	bl FUN_0206d6b0
	str r5, [sp]
	cmp r0, #0
	ldr r0, [r6, #0x84]
	mov r2, #0x3e0
	str r0, [sp, #4]
	ldr r0, [r6, #0x88]
	ldreq r2, _0211CA98 ; =0x0000319F
	add r0, r0, #0x34
	add r0, r0, r10, lsl #3
	str r0, [sp, #8]
	ldr r0, [r6, #0x88]
	mov r1, r7
	add r0, r0, #0x34
	add r0, r0, r9, lsl #3
	str r0, [sp, #0xc]
	str r11, [sp, #0x10]
	mov r0, #0x19
	str r0, [sp, #0x14]
	ldr r0, [r4]
	mov r3, #6
	bl  FUN_ov1_020dc44c
	add r7, r7, #1
_0211CA70:
	add r8, r8, #1
_0211CA74:
	cmp r8, #0x64
	blt _0211C998
	ldr r0, [sp, #0x18]
	mov r1, r7
	bl FUN_ov81_0211c7cc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CA90: .word 0x0209A128
_0211CA94: .word 0x020A0640
_0211CA98: .word 0x0000319F
	arm_func_end FUN_ov81_0211c96c

	arm_func_start FUN_ov81_0211ca9c
FUN_ov81_0211ca9c: ; 0x0211CA9C
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _0211CAC8
	ldr r1, [r0, #0x10]
	cmp r1, #0
	blt _0211CAC8
	ldr r0, _0211CB28 ; =0x02099F14
	ldr r0, [r0]
	bl  FUN_ov1_020e3b40
	b _0211CAD4
_0211CAC8:
	ldr r0, _0211CB28 ; =0x02099F14
	ldr r0, [r0]
	bl  FUN_ov1_020e3b48
_0211CAD4:
	ldr r0, _0211CB2C ; =0x020EAAF0
	ldr r4, _0211CB28 ; =0x02099F14
	ldrsh r1, [r0]
	mov r5, #0
	ldrsh r2, [r0, #2]
	ldr r0, [r4]
	mov r3, r5
	bl  FUN_ov1_020e4384
	ldr r2, _0211CB30 ; =0x020EAAEC
	ldr r0, [r4]
	ldrsh r1, [r2]
	ldrsh r2, [r2, #2]
	mov r3, r5
	bl  FUN_ov1_020e43e0
	ldr r2, _0211CB34 ; =0x020EAAE8
	ldr r0, [r4]
	ldrsh r1, [r2]
	ldrsh r2, [r2, #2]
	mov r3, r5
	bl  FUN_ov1_020e443c
	ldmfd sp!, {r3, r4, r5, pc}
_0211CB28: .word 0x02099F14
_0211CB2C: .word 0x020EAAF0
_0211CB30: .word 0x020EAAEC
_0211CB34: .word 0x020EAAE8
	arm_func_end FUN_ov81_0211ca9c

	arm_func_start FUN_ov81_0211cb38
FUN_ov81_0211cb38: ; 0x0211CB38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0211CC08 ; =0x020A0640
	mov r4, r1
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211CB60
	ldr r0, _0211CC0C ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _0211CB7C
_0211CB60:
	ldr r5, _0211CC10 ; =0x02099F14
	ldr r0, [r5]
	bl  FUN_ov1_020e3df4
	mov r6, r0
	ldr r0, [r5]
	bl  FUN_ov1_020e3e9c
	b _0211CB94
_0211CB7C:
	ldr r5, _0211CC10 ; =0x02099F14
	ldr r0, [r5]
	bl  FUN_ov1_020e3dec
	mov r6, r0
	ldr r0, [r5]
	bl  FUN_ov1_020e3e94
_0211CB94:
	mov r7, r0
	ldr r5, _0211CC10 ; =0x02099F14
	mov r1, r6
	ldr r0, [r5]
	bl  FUN_ov1_020e3de4
	ldr r0, [r5]
	mov r1, r7
	bl  FUN_ov1_020e3e8c
	ldr r0, [r5]
	mov r1, r4
	mov r2, #0
	bl  FUN_ov1_020e03b0
	ldr r0, _0211CC14 ; =0x02099EE8
	ldr r1, _0211CC18 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0205ef30
	ldr r4, _0211CC1C ; =0x02099F24
	ldr r0, [r4]
	bl  FUN_ov16_020f7908
	ldr r0, _0211CC20 ; =0x0209A128
	ldr r0, [r0]
	bl  FUN_ov1_020dc344
	ldr r0, _0211CC24 ; =0x0209A114
	ldr r0, [r0]
	bl  FUN_ov1_020dd83c
	ldr r0, [r4]
	bl  FUN_ov16_020f792c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CC08: .word 0x020A0640
_0211CC0C: .word 0x0209AEC0
_0211CC10: .word 0x02099F14
_0211CC14: .word 0x02099EE8
_0211CC18: .word 0x0209A110
_0211CC1C: .word 0x02099F24
_0211CC20: .word 0x0209A128
_0211CC24: .word 0x0209A114
	arm_func_end FUN_ov81_0211cb38

	arm_func_start FUN_ov81_0211cc28
FUN_ov81_0211cc28: ; 0x0211CC28
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl  FUN_ov16_020f0a4c
	mov r4, r0
	bl  FUN_ov16_020f0a14
	cmp r0, #0
	ldrne r2, _0211CCA0 ; =0x020EAB04
	ldrne r1, [r2, r4, lsl #3]
	cmpne r1, #0x80000000
	ble _0211CC68
	ldr r0, _0211CCA4 ; =0x02099F14
	add r2, r2, r4, lsl #3
	ldr r0, [r0]
	ldr r2, [r2, #4]
	mov r3, #0
	bl  FUN_ov1_020e3a24
_0211CC68:
	mov r0, r5
	bl FUN_ov81_0211c518
	mov r4, #0
	ldr r0, _0211CCA8 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f672c
	mov r0, r5
	bl FUN_ov81_0211ca9c
	mov r0, r5
	bl FUN_ov81_0211c96c
	mov r0, r5
	mov r1, r4
	bl FUN_ov81_0211cb38
	ldmfd sp!, {r3, r4, r5, pc}
_0211CCA0: .word 0x020EAB04
_0211CCA4: .word 0x02099F14
_0211CCA8: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211cc28

	arm_func_start FUN_ov81_0211ccac
FUN_ov81_0211ccac: ; 0x0211CCAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0211CE1C
_0211CCC4: ; jump table
	b _0211CCEC ; case 0
	b _0211CCF0 ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _0211CD30 ; case 3
	b _0211CE1C ; case 4
	b _0211CE1C ; case 5
	b _0211CD88 ; case 6
	b _0211CE1C ; case 7
	b _0211CDB8 ; case 8
	b _0211CDE8 ; case 9
_0211CCEC:
	ldmfd sp!, {r3, r4, r5, pc}
_0211CCF0:
	ldr r0, _0211CE4C ; =0x02099F14
	ldr r0, [r0]
	bl  FUN_ov1_020e3d74
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r4, #0x3f8
	mov r1, #9
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov81_0211c784
	mov r0, r4
	mov r1, #2
	bl FUN_ov81_0211a720
	ldmfd sp!, {r3, r4, r5, pc}
_0211CD30:
	mov r5, #0
	ldr r0, _0211CE50 ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5a58
	ldr r0, _0211CE54 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211CD78
	ldrb r0, [r4, #0x36]
	cmp r0, #0
	bne _0211CD78
	mov r0, r4
	mov r1, #4
	bl FUN_ov81_0211a720
	mov r0, r4
	mov r1, r5
	bl FUN_ov81_0211cc28
	ldmfd sp!, {r3, r4, r5, pc}
_0211CD78:
	mov r0, r4
	mov r1, #6
	bl FUN_ov81_0211a720
	ldmfd sp!, {r3, r4, r5, pc}
_0211CD88:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211CDA8
	mov r0, r4
	mov r1, #7
	bl FUN_ov81_0211a720
_0211CDA8:
	mov r0, r4
	mov r1, #0
	bl FUN_ov81_0211cc28
	ldmfd sp!, {r3, r4, r5, pc}
_0211CDB8:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211CDD8
	mov r0, r4
	mov r1, #0xa
	bl FUN_ov81_0211a720
_0211CDD8:
	mov r0, r4
	mov r1, #0
	bl FUN_ov81_0211cc28
	ldmfd sp!, {r3, r4, r5, pc}
_0211CDE8:
	bl  FUN_ov1_020dbb44
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x33]
	bne _0211CE1C
	mov r0, r4
	bl FUN_ov81_0211c274
	cmp r0, #0
	beq _0211CE1C
	ldrb r0, [r4, #0x35]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #0x33]
_0211CE1C:
	ldr r0, [r4, #8]
	cmp r0, #7
	bne _0211CE3C
	ldr r0, _0211CE54 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211CE3C
	bl  FUN_ov1_020dbb44
_0211CE3C:
	mov r0, r4
	mov r1, #0
	bl FUN_ov81_0211cc28
	ldmfd sp!, {r3, r4, r5, pc}
_0211CE4C: .word 0x02099F14
_0211CE50: .word 0x0209F5C0
_0211CE54: .word 0x020A0640
	arm_func_end FUN_ov81_0211ccac

	arm_func_start FUN_ov81_0211ce58
FUN_ov81_0211ce58: ; 0x0211CE58
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _0211CEBC
_0211CE70: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211CE9C ; case 2
	b _0211CEBC ; case 3
	b _0211CEB0 ; case 4
	b _0211CEB0 ; case 5
	b _0211CEBC ; case 6
	b _0211CEBC ; case 7
	b _0211CEBC ; case 8
	b _0211CEBC ; case 9
	b _0211CEB0 ; case 10
_0211CE9C:
	bl FUN_ov81_0211c5bc
	mov r0, r4
	mov r1, #3
	bl FUN_ov81_0211a720
	ldmfd sp!, {r4, pc}
_0211CEB0:
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
_0211CEBC:
	ldr r0, _0211CECC ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211CECC: .word 0x0209F5C0
	arm_func_end FUN_ov81_0211ce58

	arm_func_start FUN_ov81_0211ced0
FUN_ov81_0211ced0: ; 0x0211CED0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	sub r2, r5, #1
	ldr r0, _0211CFD8 ; =0x0209F5C0
	mov r1, r5
	str r5, [r6, #8]
	strb r5, [r6, #0xc]
	strb r5, [r6, #0xd]
	str r2, [r6, #0x1c]
	str r2, [r6, #0x20]
	str r2, [r6, #0x24]
	str r2, [r6, #0x28]
	str r2, [r6, #0x10]
	str r5, [r6, #0x2c]
	str r2, [r6, #0x18]
	strb r5, [r6, #0x34]
	strb r5, [r6, #0x32]
	strb r5, [r6, #0x31]
	strb r5, [r6, #0x30]
	strb r5, [r6, #0x3ef]
	strb r5, [r6, #0x3ee]
	strb r5, [r6, #0x3ed]
	strb r5, [r6, #0x3ec]
	strb r5, [r6, #0x3f0]
	bl  FUN_ov16_020f5a58
	ldr r0, [r6, #4]
	bl FUN_0204204c
	mov r1, r0
	ldr r0, [r6, #4]
	bl FUN_02042110
	ldr r1, _0211CFDC ; =0x02099EF0
	strb r0, [r6, #0x36]
	ldr r0, [r1]
	bl  FUN_ov126_0213921c
	mov r0, r6
	bl FUN_ov81_0211c74c
	ldr r4, _0211CFE0 ; =0x0209A128
	ldr r0, [r4]
	bl  FUN_ov1_020dc268
	ldr r0, [r4]
	bl  FUN_ov1_020dc3e8
	ldr r0, [r4]
	bl  FUN_ov1_020dc3f0
	ldr r0, _0211CFE4 ; =0x0209A114
	ldr r0, [r0]
	bl  FUN_ov1_020dd834
	ldr r0, [r6, #4]
	mov r6, #1
	bl FUN_0204204c
	cmp r0, #0x38
	ldr r4, _0211CFE8 ; =0x02099F14
	moveq r6, r5
	ldr r1, _0211CFEC ; =0x00005E7F
	ldr r0, [r4]
	mov r2, r6
	bl  FUN_ov1_020df1dc
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov1_020e3de4
	ldr r0, _0211CFDC ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl  FUN_ov132_02148ba4
	ldmfd sp!, {r4, r5, r6, pc}
_0211CFD8: .word 0x0209F5C0
_0211CFDC: .word 0x02099EF0
_0211CFE0: .word 0x0209A128
_0211CFE4: .word 0x0209A114
_0211CFE8: .word 0x02099F14
_0211CFEC: .word 0x00005E7F
	arm_func_end FUN_ov81_0211ced0

	arm_func_start FUN_ov81_0211cff0
FUN_ov81_0211cff0: ; 0x0211CFF0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211D080 ; =0x0209A128
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov1_020dc2f0
	ldr r0, [r4, #4]
	mov r5, #1
	bl FUN_0204201c
	cmp r0, #0x38
	ldr r0, _0211D084 ; =0x020A0640
	moveq r5, #0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldr r0, _0211D088 ; =0x02099F14
	movne r5, #1
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov1_020df110
	mov r5, #0
	ldr r0, _0211D08C ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5af0
	ldr r0, _0211D090 ; =0x02099EF0
	ldr r0, [r0]
	bl  FUN_ov126_0213921c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	add r0, r4, #0x3f8
	mov r1, #9
	str r5, [r4, #8]
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov81_0211c7a4
	ldmfd sp!, {r3, r4, r5, pc}
_0211D080: .word 0x0209A128
_0211D084: .word 0x020A0640
_0211D088: .word 0x02099F14
_0211D08C: .word 0x0209F5C0
_0211D090: .word 0x02099EF0
	arm_func_end FUN_ov81_0211cff0

	arm_func_start FUN_ov81_0211d094
FUN_ov81_0211d094: ; 0x0211D094
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov81_0211d094

	arm_func_start FUN_ov81_0211d0a8
FUN_ov81_0211d0a8: ; 0x0211D0A8
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov81_0211d0a8

	arm_func_start FUN_ov81_0211d0b0
FUN_ov81_0211d0b0: ; 0x0211D0B0
	bx lr
	arm_func_end FUN_ov81_0211d0b0
_0211D0B4:
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0xD4, 0xD1, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xF4, 0xD1, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0xE4, 0xD1, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xBC, 0xD1, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0xC8, 0xD1, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x98, 0xD1, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0xA4, 0xD1, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0xB0, 0xD1, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov81_0211d120
FUN_ov81_0211d120: ; 0x0211D120
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211D168 ; =0x0211D180
	str r0, [r4, #4]
	ldr r0, _0211D16C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211D170 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D168: .word 0x0211D180
_0211D16C: .word 0x00009CCD
_0211D170: .word 0x0000EA3C
	arm_func_end FUN_ov81_0211d120
	; 0x0211D174


	.rodata
	.incbin "/incbin/overlay81_rodata.bin"

	.bss
	.space 0x0
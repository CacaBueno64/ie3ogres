
	.include "/macros/function.inc"
	.include "/include/overlay88.inc"

	.text
	arm_func_start FUN_ov88_02119f00
FUN_ov88_02119f00: ; 0x02119F00
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
	arm_func_end FUN_ov88_02119f00

	arm_func_start FUN_ov88_02119f38
FUN_ov88_02119f38: ; 0x02119F38
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, #1
	mov r2, #0x40
	str r3, [r4, #0x68]
	str r2, [r4, #0x64]
	str r1, [r4, #0x70]
	strb r3, [r4, #0x74]
	bl FUN_ov88_02119f00
	strb r0, [r4, #0x75]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov88_02119f38

	arm_func_start FUN_ov88_02119f64
FUN_ov88_02119f64: ; 0x02119F64
	stmfd sp!, {r3, lr}
	ldr r0, _02119F8C ; =0x0209AEC0
	mov r1, #4
	bl FUN_02046cb4
	ldr r0, _02119F90 ; =0x0209A4E0
	mov r1, #0x40
	strb r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #3]
	ldmfd sp!, {r3, pc}
_02119F8C: .word unk_0209AEC0
_02119F90: .word unk_0209A4E0
	arm_func_end FUN_ov88_02119f64

	arm_func_start FUN_ov88_02119f94
FUN_ov88_02119f94: ; 0x02119F94
	ldrh r1, [r0, #0x12]
	ldr r2, _02119FAC ; =0x0209A4E4
	strh r1, [r2]
	ldrh r0, [r0, #0x14]
	strh r0, [r2, #2]
	bx lr
_02119FAC: .word unk_0209A4E4
	arm_func_end FUN_ov88_02119f94

	arm_func_start FUN_ov88_02119fb0
FUN_ov88_02119fb0: ; 0x02119FB0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211A028 ; =0x0209AEC0
	mov r4, r0
	ldrb r0, [r1, #0x64]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl FUN_ov16_020f0634
	ldrh r1, [r4, #0x12]
	ldrh r0, [r0, #4]
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r5
	bl FUN_ov16_020f0634
	ldrh r2, [r0, #4]
	mov r0, r5
	mov r1, r5
	strh r2, [r4, #0x12]
	bl FUN_ov16_020f0634
	ldrh r1, [r0, #6]
	ldr r0, [r4, #8]
	strh r1, [r4, #0x14]
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov88_0211bd2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A028: .word unk_0209AEC0
	arm_func_end FUN_ov88_02119fb0

	arm_func_start FUN_ov88_0211a02c
FUN_ov88_0211a02c: ; 0x0211A02C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, r0
	mov r0, r6
	mov r1, r6
	bl FUN_ov16_020f0634
	ldr r1, _0211A134 ; =0x0209AEC0
	ldr r2, [r4, #8]
	ldrb r7, [r0, #3]
	ldrb r5, [r1, #0x64]
	cmp r2, #8
	addls pc, pc, r2, lsl #2
	b _0211A12C
_0211A060: ; jump table
	b _0211A12C ; case 0
	b _0211A12C ; case 1
	b _0211A12C ; case 2
	b _0211A12C ; case 3
	b _0211A12C ; case 4
	b _0211A084 ; case 5
	b _0211A0A8 ; case 6
	b _0211A0D4 ; case 7
	b _0211A124 ; case 8
_0211A084:
	mov r0, r4
	bl FUN_ov88_02119fb0
	cmp r5, #0
	cmpeq r7, #6
	bne _0211A12C
	mov r0, r4
	mov r1, #7
_0211A0A0:
	bl FUN_ov88_0211a1a4
	b _0211A12C
_0211A0A8:
	cmp r5, #0
	beq _0211A12C
	mov r5, #7
	sub r1, r5, #8
	mov r0, r5
	mov r2, r1
	mov r3, r6
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A12C
	b _0211A104
_0211A0D4:
	mov r0, r4
	bl FUN_ov88_02119fb0
	cmp r5, #0
	beq _0211A110
	mov r5, #8
	sub r1, r5, #9
	mov r0, r5
	mov r2, r1
	mov r3, r6
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A12C
_0211A104:
	mov r0, r4
	mov r1, r5
	b _0211A0A0
_0211A110:
	cmp r7, #7
	bne _0211A12C
	mov r0, r4
	mov r1, #8
	b _0211A0A0
_0211A124:
	mov r0, r4
	bl FUN_ov88_02119fb0
_0211A12C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A134: .word unk_0209AEC0
	arm_func_end FUN_ov88_0211a02c

	arm_func_start FUN_ov88_0211a138
FUN_ov88_0211a138: ; 0x0211A138
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #7
	bne _0211A15C
	mov r0, r4
	bl FUN_ov88_02119f94
_0211A15C:
	ldr r1, _0211A178 ; =0x0209A4E0
	mov r0, #0x40
	strb r0, [r1, #2]
	ldr r2, [r4, #8]
	mov r0, #1
	strb r2, [r1, #3]
	ldmfd sp!, {r4, pc}
_0211A178: .word unk_0209A4E0
	arm_func_end FUN_ov88_0211a138

	arm_func_start FUN_ov88_0211a17c
FUN_ov88_0211a17c: ; 0x0211A17C
	ldr r0, [r0, #8]
	cmp r0, #4
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov88_0211a17c

	arm_func_start FUN_ov88_0211a190
FUN_ov88_0211a190: ; 0x0211A190
	ldr r0, [r0, #8]
	cmp r0, #4
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov88_0211a190

	arm_func_start FUN_ov88_0211a1a4
FUN_ov88_0211a1a4: ; 0x0211A1A4
	stmfd sp!, {r4, lr}
	ldr r2, [r0, #8]
	cmp r2, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r0, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211A1C4: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _0211A1E8 ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _0211A1E8 ; case 6
	b _0211A1F4 ; case 7
	b _0211A218 ; case 8
_0211A1E8:
	mov r1, #1
	strb r1, [r0, #0x18]
	ldmfd sp!, {r4, pc}
_0211A1F4:
	ldr r1, _0211A248 ; =0x0209AEC0
	mov r2, #1
	strb r2, [r0, #0x18]
	ldrb r0, [r1, #0x64]
	cmp r0, #0
	ldrne r0, _0211A24C ; =0x020E9482
	movne r1, #0
	strneb r1, [r0]
	ldmfd sp!, {r4, pc}
_0211A218:
	ldr r4, [r0, #4]
	mov r1, #0
	mov r0, r4
	mov r2, #0x48
	bl FUN_02041eac
	mov r0, r4
	mov r1, #1
	mov r2, #0x4c
	bl FUN_02041eac
	mov r0, #6
	bl FUN_ov16_020f1514
	ldmfd sp!, {r4, pc}
_0211A248: .word unk_0209AEC0
_0211A24C: .word ov1_020E9482
	arm_func_end FUN_ov88_0211a1a4

	arm_func_start FUN_ov88_0211a250
FUN_ov88_0211a250: ; 0x0211A250
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	sub sp, sp, #0x400
	ldr r1, _0211A714 ; =0x020A0640
	mov r10, r0
	ldrb r0, [r1, #0x1a]
	mov r5, #0
	cmp r0, #0
	beq _0211A28C
	ldr r0, _0211A718 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	addeq sp, sp, #0x4c
	addeq sp, sp, #0x400
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A28C:
	mov r11, #0
	mov r4, #0x200
	add r0, sp, #0x24c
	mov r1, r11
	mov r2, r4
	str r11, [r10, #0x7c]
	bl MI_CpuFill8
	add r0, sp, #0x4c
	mov r1, r11
	mov r2, r4
	bl MI_CpuFill8
	b _0211A3EC
_0211A2BC:
	add r7, sp, #0
	mov r9, #1
	ldr r6, _0211A71C ; =0x020A12C0
	mov r4, #0x54
	ldr r1, _0211A720 ; =0x0211D1E4
	mov r0, r7
	mov r2, r11
	mov r3, r9
	mla r6, r11, r4, r6
	bl FUN_ov16_020f2cf8
	add r1, sp, #0x40
	mov r0, r7
	bl FUN_ov16_020f3054
	ldr r1, [sp, #0x40]
	add r0, r10, #0x5000
	add r7, r1, #0x4a
	ldr r8, [r0, #0x1d0]
	mov r4, r9
	b _0211A3D4
_0211A308:
	ldrsh r0, [r7, #0x3c]
	cmp r0, #0
	ble _0211A328
	ldrb r0, [r7, #0x46]
	cmp r0, #0
	ldrnesh r1, [r7, #0xa]
	cmpne r1, #0
	bgt _0211A330
_0211A328:
	add r7, r7, #0x4a
	b _0211A3D0
_0211A330:
	mov r0, r8
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq r7, r7, #0x4a
	addeq r9, r9, #1
	beq _0211A3D4
	ldrb r1, [r7, #0x46]
	ldrsh r0, [r7, #0x3c]
	mov r2, r4, lsl r9
	sub r1, r1, #1
	add r1, r10, r1, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x80]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x48]
	and r3, r0, r4, lsl r9
	and r0, r1, r2, asr #31
	cmp r0, #0
	ldrb r0, [r7, #0x46]
	cmpeq r3, #0
	subeq r0, r0, #1
	addeq r1, r10, r0, lsl #1
	ldreq r0, _0211A724 ; =0x0000FFFF
	streqh r0, [r1, #0x80]
	subne r0, r0, #1
	ldrnesh r1, [r7, #0xa]
	addne r0, r10, r0, lsl #1
	strneh r1, [r0, #0x80]
	ldrb r0, [r7, #0x46]
	cmp r0, #1
	ldreqsh r1, [r7, #0xa]
	subeq r0, r0, #1
	addeq r0, r10, r0, lsl #1
	streqh r1, [r0, #0x80]
	ldr r0, [r10, #0x7c]
	add r7, r7, #0x4a
	add r0, r0, #1
	str r0, [r10, #0x7c]
_0211A3D0:
	add r9, r9, #1
_0211A3D4:
	ldrsh r0, [r7, #0x3c]
	cmp r0, #0
	bge _0211A308
	add r0, sp, #0x40
	bl FUN_ov16_020f33fc
	add r11, r11, #1
_0211A3EC:
	cmp r11, #0xa
	blt _0211A2BC
	mov r3, #0
	b _0211A458
_0211A3FC:
	add r0, r10, r3, lsl #1
	ldrh r0, [r0, #0x80]
	cmp r0, #0
	bne _0211A454
	add r0, r3, #1
	b _0211A44C
_0211A414:
	add r2, r10, r0, lsl #1
	ldrh r1, [r2, #0x80]
	cmp r1, #0
	beq _0211A448
	add r0, r10, r3, lsl #1
	strh r1, [r0, #0x80]
	strh r5, [r2, #0x80]
	add r1, r2, #0x200
	ldrh r2, [r1, #0x80]
	add r0, r0, #0x200
	strh r2, [r0, #0x80]
	strh r5, [r1, #0x80]
	b _0211A454
_0211A448:
	add r0, r0, #1
_0211A44C:
	cmp r0, #0x40
	blt _0211A414
_0211A454:
	add r3, r3, #1
_0211A458:
	cmp r3, #0x3f
	blt _0211A3FC
	mov r0, #0
	ldr r4, _0211A724 ; =0x0000FFFF
	b _0211A4D4
_0211A46C:
	add r1, r10, r0, lsl #1
	ldrh r2, [r1, #0x80]
	ldr r1, _0211A724 ; =0x0000FFFF
	cmp r2, r1
	bne _0211A4D0
	add r6, r0, #1
	b _0211A4C4
_0211A488:
	add r3, r10, r6, lsl #1
	ldrh r2, [r3, #0x80]
	cmp r2, #0
	cmpne r2, r1
	beq _0211A4C0
	add r1, r10, r0, lsl #1
	strh r2, [r1, #0x80]
	strh r4, [r3, #0x80]
	add r2, r3, #0x200
	ldrh r3, [r2, #0x80]
	add r1, r1, #0x200
	strh r3, [r1, #0x80]
	strh r5, [r2, #0x80]
	b _0211A4D0
_0211A4C0:
	add r6, r6, #1
_0211A4C4:
	ldr r2, [r10, #0x7c]
	cmp r6, r2
	blt _0211A488
_0211A4D0:
	add r0, r0, #1
_0211A4D4:
	ldr r1, [r10, #0x7c]
	sub r1, r1, #1
	cmp r0, r1
	blt _0211A46C
	ldr r0, _0211A728 ; =0x020A1640
	mov r7, #0
	ldrh r1, [r0, #0x10]
	cmp r1, #0
	beq _0211A5E0
	mov r8, r7
	mov r9, r7
	add r11, r10, #0x5000
	mov r2, #1
	mov r1, #5
	add r4, sp, #0x24c
	add r3, sp, #0x4c
	b _0211A56C
_0211A518:
	add r12, r10, r9, lsl #1
	ldrh r5, [r12, #0x80]
	mov r6, r9, lsl #1
	add r12, r12, #0x200
	strh r5, [r4, r6]
	ldrh r12, [r12, #0x80]
	strh r12, [r3, r6]
	ldrh r6, [r0, #0x10]
	cmp r6, r5
	bne _0211A560
	mov r6, r7, lsr #0x1f
	rsb r5, r6, r7, lsl #31
	add r5, r6, r5, ror #31
	and r7, r5, #0xff
	cmp r7, #1
	mov r8, r9
	streqb r2, [r11, #0x63c]
	streq r1, [r10, #0x1c]
_0211A560:
	add r5, r7, #1
	and r7, r5, #0xff
	add r9, r9, #1
_0211A56C:
	ldr r5, [r10, #0x7c]
	cmp r9, r5
	blt _0211A518
	mov r0, #0
	add r2, r10, #0x5000
	add r6, sp, #0x24c
	add r4, sp, #0x4c
	b _0211A5D4
_0211A58C:
	ldr r1, [r10, #0x7c]
	add r3, r8, r0
	cmp r3, r1
	subge r3, r3, r1
	ldrb r1, [r2, #0x63c]
	cmp r1, #0
	beq _0211A5B4
	subs r3, r3, #1
	ldrmi r1, [r10, #0x7c]
	submi r3, r1, #1
_0211A5B4:
	mov r7, r3, lsl #1
	ldrh r5, [r6, r7]
	add r3, r10, r0, lsl #1
	add r1, r3, #0x200
	strh r5, [r3, #0x80]
	ldrh r3, [r4, r7]
	add r0, r0, #1
	strh r3, [r1, #0x80]
_0211A5D4:
	ldr r1, [r10, #0x7c]
	cmp r0, r1
	blt _0211A58C
_0211A5E0:
	mov r2, #0
	mov r4, r2
	ldr r0, _0211A724 ; =0x0000FFFF
	b _0211A604
_0211A5F0:
	add r3, r10, r4, lsl #1
	ldrh r1, [r3, #0x80]
	add r4, r4, #1
	cmp r1, r0
	streqh r2, [r3, #0x80]
_0211A604:
	ldr r1, [r10, #0x7c]
	cmp r4, r1
	blt _0211A5F0
	mov r0, #0
	b _0211A6CC
_0211A618:
	ldr r5, [r10, #0x7c]
	add r1, r0, #0xa
	cmp r1, r5
	bgt _0211A660
	mov r6, #0
	add r1, r0, r0, lsr #31
	b _0211A654
_0211A634:
	add r4, r0, r6, lsl #1
	add r2, r6, r1, asr #1
	add r5, r4, #1
	add r3, r10, r2
	strb r5, [r3, #0x480]
	add r2, r4, #2
	strb r2, [r3, #0x500]
	add r6, r6, #1
_0211A654:
	cmp r6, #5
	blt _0211A634
	b _0211A6C8
_0211A660:
	ldr r3, _0211A72C ; =0x66666667
	mov r1, r5, lsr #0x1f
	smull r2, r4, r3, r5
	add r4, r1, r4, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r4
	subs r4, r5, r1
	beq _0211A6C8
	add r1, r4, r4, lsr #31
	and r2, r4, #1
	add r6, r2, r1, asr #1
	mov r7, #0
	add r1, r0, r0, lsr #31
	b _0211A6C0
_0211A698:
	add r4, r0, r7, lsl #1
	add r2, r7, r1, asr #1
	add r5, r4, #1
	add r3, r10, r2
	strb r5, [r3, #0x480]
	ldr r2, [r10, #0x7c]
	add r7, r7, #1
	cmp r5, r2
	addlt r2, r4, #2
	strltb r2, [r3, #0x500]
_0211A6C0:
	cmp r7, r6
	blt _0211A698
_0211A6C8:
	add r0, r0, #0xa
_0211A6CC:
	ldr r1, [r10, #0x7c]
	cmp r0, r1
	blt _0211A618
	add r0, r1, r1, lsr #31
	and r1, r1, #1
	add r2, r1, r0, asr #1
	ldr r1, [r10, #0x1c]
	mov r0, r10
	str r2, [r10, #0x5c]
	bl FUN_ov88_0211bd88
	strh r0, [r10, #0x12]
	ldr r1, [r10, #0x1c]
	mov r0, r10
	bl FUN_ov88_0211bdf4
	strh r0, [r10, #0x14]
	add sp, sp, #0x4c
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A714: .word unk_020A0640
_0211A718: .word unk_0209AEC0
_0211A71C: .word unk_020A12C0
_0211A720: .word ov88_0211D1E4
_0211A724: .word 0x0000FFFF
_0211A728: .word unk_020A1640
_0211A72C: .word 0x66666667
	arm_func_end FUN_ov88_0211a250

	arm_func_start FUN_ov88_0211a730
FUN_ov88_0211a730: ; 0x0211A730
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x1c]
	bl FUN_ov88_0211bd88
	strh r0, [r5, #0x12]
	ldr r1, [r5, #0x1c]
	mov r0, r5
	bl FUN_ov88_0211bdf4
	ldrh r1, [r5, #0x12]
	strh r0, [r5, #0x14]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #6
	ldr r0, _0211A79C ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	ldr r0, _0211A7A0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r5
	beq _0211A790
	mov r1, r4
	bl FUN_ov88_0211a1a4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A790:
	mov r1, #8
	bl FUN_ov88_0211a1a4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A79C: .word gL5Sound
_0211A7A0: .word unk_020A0640
	arm_func_end FUN_ov88_0211a730

	arm_func_start FUN_ov88_0211a7a4
FUN_ov88_0211a7a4: ; 0x0211A7A4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r1, r5, #0x1a0
	ldr r0, _0211A8C8 ; =0x0211D1EC
	add r1, r1, #0x5000
	bl FUN_ov16_020f316c
	add r1, r5, #0x1d0
	ldr r0, _0211A8CC ; =0x0211D208
	add r1, r1, #0x5000
	bl FUN_ov1_020dbe00
	add r1, r5, #0x1dc
	ldr r0, _0211A8D0 ; =0x0211D218
	add r1, r1, #0x5000
	bl FUN_ov1_020dbe00
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _0211A7FC
	add r1, r5, #0x1e8
	ldr r0, _0211A8D4 ; =0x0211D228
	add r1, r1, #0x5000
	bl FUN_ov1_020dbec4
_0211A7FC:
	add r1, r5, #0x194
	ldr r0, _0211A8D8 ; =0x0211D234
	add r1, r1, #0x5000
	bl FUN_ov16_020f316c
	add r0, r5, #0x5000
	ldr r1, [r0, #0x180]
	add r0, r5, #0x1180
	add r4, r0, #0x4000
	cmp r1, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211A8A4
	mov r0, r4
	bl FUN_ov16_020f2f20
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
	ldr r0, _0211A8DC ; =0x0211D250
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4, #4]
	mov r2, r2, lsl #3
	mov r1, r1, lsl #3
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_0211A8A4:
	add r1, r5, #0x1f4
	ldr r0, _0211A8E0 ; =0x0209BA20
	add r1, r1, #0x5000
	bl FUN_ov16_020eed18 ; may be ov17
	mov r0, r5
	mov r1, #1
	bl FUN_ov88_0211a1a4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_0211A8C8: .word ov88_0211D1EC
_0211A8CC: .word ov88_0211D208
_0211A8D0: .word ov88_0211D218
_0211A8D4: .word ov88_0211D228
_0211A8D8: .word ov88_0211D234
_0211A8DC: .word ov88_0211D250
_0211A8E0: .word unk_0209BA20
	arm_func_end FUN_ov88_0211a7a4

	arm_func_start FUN_ov88_0211a8e4
FUN_ov88_0211a8e4: ; 0x0211A8E4
	add r1, r0, #0x5000
	add r3, r0, #0x194
	ldr r0, [r1, #0x194]
	ldr r2, _0211A900 ; =0x0211CF88
	ldr r12, _0211A904 ; = FUN_ov1_020dbfdc
	add r1, r3, #0x5000
	bx r12
_0211A900: .word ov88_0211CF88
_0211A904: .word FUN_ov1_020dbfdc
	arm_func_end FUN_ov88_0211a8e4

	arm_func_start FUN_ov88_0211a908
FUN_ov88_0211a908: ; 0x0211A908
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0x5000
	ldr r1, [r0, #0x1a0]
	beq _0211A93C
	ldr r0, _0211A964 ; =0x0211D29C
	ldr r2, _0211A968 ; =0x0211CFA8
	b _0211A944
_0211A93C:
	ldr r0, _0211A96C ; =0x0211D2B8
	ldr r2, _0211A970 ; =0x0211CFD8
_0211A944:
	add r3, r4, #0x5200
	bl FUN_ov16_020f5450
	add r0, r4, #0x194
	add r0, r0, #0x5000
	add r0, r0, #0xc
	bl FUN_ov16_020f33fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211A964: .word ov88_0211D29C
_0211A968: .word ov88_0211CFA8
_0211A96C: .word ov88_0211D2B8
_0211A970: .word ov88_0211CFD8
	arm_func_end FUN_ov88_0211a908

	arm_func_start FUN_ov88_0211a974
FUN_ov88_0211a974: ; 0x0211A974
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	add r0, r10, #0x1e8
	mov r9, #0
	add r8, r0, #0x5000
	mov r6, r9
	mov r5, #1
	add r7, sp, #0x18
	add r11, sp, #0x14
	ldr r4, _0211AA2C ; =0x02099F38
	b _0211AA08
_0211A9A4:
	add r0, r10, r9, lsl #1
	ldrh r1, [r0, #0x80]
	cmp r1, #0
	beq _0211AA04
	ldr r0, [r8]
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211AA04
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _0211AA30 ; =0x0211D2D4
	mov r3, r5
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x224]
_0211AA04:
	add r9, r9, #1
_0211AA08:
	ldr r0, [r10, #0x7c]
	cmp r9, r0
	blt _0211A9A4
	add r0, r10, #0x194
	add r0, r0, #0x5000
	add r0, r0, #0x54
	bl FUN_ov16_020f33fc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA2C: .word unk_02099F38
_0211AA30: .word ov88_0211D2D4
	arm_func_end FUN_ov88_0211a974

	arm_func_start FUN_ov88_0211aa34
FUN_ov88_0211aa34: ; 0x0211AA34
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r1, [r4, #0x12]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	add r0, r4, #0x5000
	ldr r0, [r0, #0x1d0]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211AAF8
	ldrb r0, [r4, #0x16]
	add r0, r0, #5
	add r0, r4, r0, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x200]
	cmp r1, #0
	beq _0211AAAC
	ldr r0, _0211ABB0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	ldrb r0, [r4, #0x16]
	mov r1, #0
	add r0, r0, #5
	add r0, r4, r0, lsl #2
	add r0, r0, #0x5000
	str r1, [r0, #0x200]
_0211AAAC:
	ldr r0, _0211ABB0 ; =0x02099F38
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211ABB4 ; =0x0211D2F4
	str r12, [sp, #0x10]
	mov r1, #5
	bl FUN_02058800
	ldrb r1, [r4, #0x16]
	add r1, r1, #5
	add r1, r4, r1, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x200]
_0211AAF8:
	add r0, r4, #0x5000
	ldrh r1, [r4, #0x12]
	ldr r0, [r0, #0x1dc]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldrb r0, [r4, #0x16]
	add r0, r0, #7
	add r0, r4, r0, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x200]
	cmp r1, #0
	beq _0211AB5C
	ldr r0, _0211ABB0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	ldrb r0, [r4, #0x16]
	mov r1, #0
	add r0, r0, #7
	add r0, r4, r0, lsl #2
	add r0, r0, #0x5000
	str r1, [r0, #0x200]
_0211AB5C:
	ldr r0, _0211ABB0 ; =0x02099F38
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211ABB8 ; =0x0211D314
	str r12, [sp, #0x10]
	mov r1, #5
	bl FUN_02058800
	ldrb r1, [r4, #0x16]
	add r1, r1, #7
	add r1, r4, r1, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x200]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211ABB0: .word unk_02099F38
_0211ABB4: .word ov88_0211D2F4
_0211ABB8: .word ov88_0211D314
	arm_func_end FUN_ov88_0211aa34

	arm_func_start FUN_ov88_0211abbc
FUN_ov88_0211abbc: ; 0x0211ABBC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r0, #0
	ldr r0, _0211AC48 ; =0x020A0640
	mov r6, #1
	ldrb r0, [r0, #0x1b]
	movne r6, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov16_020f0a30
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0211AC4C ; =0x0209BA20
	ldrh r2, [r4, #0x12]
	ldrh r3, [r4, #0x14]
	mov r0, r5
	mov r1, r6
	bl FUN_02070530
	mov r2, #1
	mov r0, r5
	mov r1, r6
	mov r3, r2
	bl FUN_0204d7fc
	mov r4, #4
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_0204baf0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_0204bb48
	ldmfd sp!, {r4, r5, r6, pc}
_0211AC48: .word unk_020A0640
_0211AC4C: .word unk_0209BA20
	arm_func_end FUN_ov88_0211abbc

	arm_func_start FUN_ov88_0211ac50
FUN_ov88_0211ac50: ; 0x0211AC50
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	ldr r6, _0211ACE4 ; =0x02099F38
	b _0211AC90
_0211AC64:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x200]
	cmp r1, #0
	beq _0211AC8C
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211AC8C:
	add r4, r4, #1
_0211AC90:
	cmp r4, #9
	blt _0211AC64
	mov r4, #0
	ldr r6, _0211ACE4 ; =0x02099F38
	b _0211ACD0
_0211ACA4:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x224]
	cmp r1, #0
	beq _0211ACCC
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211ACCC:
	add r4, r4, #1
_0211ACD0:
	ldr r0, [r5, #0x7c]
	cmp r4, r0
	blt _0211ACA4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211ACE4: .word unk_02099F38
	arm_func_end FUN_ov88_0211ac50

	arm_func_start FUN_ov88_0211ace8
FUN_ov88_0211ace8: ; 0x0211ACE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r9, r0
	mov r5, r8
	ldr r4, _0211ADD4 ; =0x02099F38
	b _0211AD44
_0211AD00:
	add r0, r9, r8, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x200]
	cmp r1, #0
	beq _0211AD40
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AD40
	add r0, r9, r8, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x200]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211AD40:
	add r8, r8, #1
_0211AD44:
	cmp r8, #5
	blt _0211AD00
	mov r8, #0
	mov r7, #4
	mov r6, #3
	mov r5, r8
	ldr r4, _0211ADD4 ; =0x02099F38
	b _0211ADC4
_0211AD64:
	add r0, r9, r8, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x224]
	cmp r1, #0
	beq _0211ADC0
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211ADC0
	add r0, r9, r8, lsl #2
	add r1, r0, #0x5000
	ldr r0, [r4]
	ldr r1, [r1, #0x224]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02114918
	add r0, r9, r8, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x224]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211ADC0:
	add r8, r8, #1
_0211ADC4:
	ldr r0, [r9, #0x7c]
	cmp r8, r0
	blt _0211AD64
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ADD4: .word unk_02099F38
	arm_func_end FUN_ov88_0211ace8

	arm_func_start FUN_ov88_0211add8
FUN_ov88_0211add8: ; 0x0211ADD8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x194
	mov r7, #0
	add r6, r0, #0x5000
	mov r5, #0xc
	b _0211AE00
_0211ADF4:
	mla r0, r7, r5, r6
	bl FUN_ov16_020f33fc
	add r7, r7, #1
_0211AE00:
	cmp r7, #9
	blt _0211ADF4
	mov r6, #0
	ldr r5, _0211AEA8 ; =0x02099F38
	b _0211AE34
_0211AE14:
	add r0, r4, r6, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x624]
	cmp r1, #0
	beq _0211AE30
	ldr r0, [r5]
	bl FUN_ov16_021128c4
_0211AE30:
	add r6, r6, #1
_0211AE34:
	cmp r6, #6
	blt _0211AE14
	mov r6, #0
	ldr r5, _0211AEA8 ; =0x02099F38
	b _0211AE68
_0211AE48:
	add r0, r4, r6, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x224]
	cmp r1, #0
	beq _0211AE64
	ldr r0, [r5]
	bl FUN_02058ee0
_0211AE64:
	add r6, r6, #1
_0211AE68:
	cmp r6, #0x100
	blt _0211AE48
	mov r6, #0
	ldr r5, _0211AEA8 ; =0x02099F38
	b _0211AE9C
_0211AE7C:
	add r0, r4, r6, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x200]
	cmp r1, #0
	beq _0211AE98
	ldr r0, [r5]
	bl FUN_02058ee0
_0211AE98:
	add r6, r6, #1
_0211AE9C:
	cmp r6, #9
	blt _0211AE7C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AEA8: .word unk_02099F38
	arm_func_end FUN_ov88_0211add8

	arm_func_start FUN_ov88_0211aeac
FUN_ov88_0211aeac: ; 0x0211AEAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, r1
	cmp r0, #5
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AFE4 ; =0x02099ED4
	mov r4, #0
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0x20]
	cmpeq r0, #0
	ldreq r0, [r6, #0x48]
	cmpeq r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211AFE8 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211AFDC
_0211AF18: ; jump table
	b _0211AFDC ; case 0
	b _0211AF30 ; case 1
	b _0211AF4C ; case 2
	b _0211AF84 ; case 3
	b _0211AFAC ; case 4
	b _0211AF68 ; case 5
_0211AF30:
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov88_0211b194
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF4C:
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov88_0211b200
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF68:
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov88_0211b298
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF84:
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	str r4, [sp]
	mov r1, r0
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	mov r0, r6
	bl FUN_ov88_0211b2f0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AFAC:
	ldr r0, [r7]
	add r1, sp, #4
	bl FUN_ov16_0210f48c
	ldr r0, [r7]
	bl FUN_ov16_0210f484
	mov r1, #1
	str r1, [sp]
	mov r1, r0
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r6
	bl FUN_ov88_0211b2f0
_0211AFDC:
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AFE4: .word unk_02099ED4
_0211AFE8: .word unk_02099EB4
	arm_func_end FUN_ov88_0211aeac

	arm_func_start FUN_ov88_0211afec
FUN_ov88_0211afec: ; 0x0211AFEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B184 ; =0x0209A0F4
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
	ldr r0, _0211B188 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0x20]
	cmpeq r0, #0
	ldreq r0, [r6, #0x48]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211B18C ; =0x02099EB4
	ldr r0, [r7]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B084
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r4, r5
	strh r1, [r0, #0x38]
_0211B084:
	mov r0, r6
	mov r1, r5
	bl FUN_ov88_0211c968
	tst r5, #1
	beq _0211B0C4
	mov r0, r6
	bl FUN_ov88_0211b694
	cmp r0, #0
	beq _0211B0B4
	mov r0, r6
	bl FUN_ov88_0211a730
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0B4:
	ldr r0, _0211B190 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0C4:
	tst r4, #0x40
	beq _0211B0EC
	ldr r1, [r6, #0x1c]
	cmp r1, #5
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	sub r1, r1, #5
	mov r2, #5
	bl FUN_ov88_0211c31c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0EC:
	tst r4, #0x80
	beq _0211B114
	ldr r1, [r6, #0x1c]
	cmp r1, #5
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	add r1, r1, #5
	mov r2, #5
	bl FUN_ov88_0211c31c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B114:
	tst r4, #0x20
	beq _0211B14C
	ldr r1, [r6, #0x1c]
	mov r0, r6
	cmp r1, #0
	cmpne r1, #5
	beq _0211B140
	sub r1, r1, #1
	mov r2, #5
	bl FUN_ov88_0211c31c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B140:
	mvn r1, #0
	bl FUN_ov88_0211c668
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B14C:
	tst r4, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x1c]
	mov r0, r6
	cmp r1, #4
	cmpne r1, #9
	beq _0211B178
	add r1, r1, #1
	mov r2, #5
	bl FUN_ov88_0211c31c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B178:
	mov r1, #1
	bl FUN_ov88_0211c668
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B184: .word unk_0209A0F4
_0211B188: .word unk_02099ED4
_0211B18C: .word unk_02099EB4
_0211B190: .word gL5Sound
	arm_func_end FUN_ov88_0211afec

	arm_func_start FUN_ov88_0211b194
FUN_ov88_0211b194: ; 0x0211B194
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	cmp r1, #4
	blt _0211B1D4
	cmp r1, #0xe
	bgt _0211B1D4
	ldr r2, [r4, #0x1c]
	sub r1, r1, #4
	str r2, [r4, #0x40]
	cmp r1, r2
	ldmeqfd sp!, {r4, pc}
	mov r2, #5
	bl FUN_ov88_0211c31c
	ldmfd sp!, {r4, pc}
_0211B1D4:
	sub r0, r1, #2
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	cmp r1, #2
	mvneq r1, #0
	movne r1, #1
	mov r0, r4
	bl FUN_ov88_0211c668
	mov r0, #0xf
	str r0, [r4, #0x60]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov88_0211b194

	arm_func_start FUN_ov88_0211b200
FUN_ov88_0211b200: ; 0x0211B200
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211B294 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #1
	blt _0211B250
	bgt _0211B250
	cmp r0, #0
	ldrneh r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r4]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B250:
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
	ldreq r0, _0211B294 ; =0x02099EB4
	moveq r1, #1
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B294: .word unk_02099EB4
	arm_func_end FUN_ov88_0211b200

	arm_func_start FUN_ov88_0211b298
FUN_ov88_0211b298: ; 0x0211B298
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
	bl FUN_ov88_0211c668
	mov r0, #4
	str r0, [r4, #0x60]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov88_0211b298

	arm_func_start FUN_ov88_0211b2f0
FUN_ov88_0211b2f0: ; 0x0211B2F0
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
	arm_func_end FUN_ov88_0211b2f0

	arm_func_start FUN_ov88_0211b318
FUN_ov88_0211b318: ; 0x0211B318
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, #0x20
	mov r7, r0
	str r8, [sp, #4]
	bl G2_GetBG1CharPtr
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r8
	bl DC_FlushRange
	mov r4, #1
	add r5, sp, #4
	add r0, r7, #0x5000
	str r5, [sp]
	ldr r0, [r0, #0x1ac]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl FUN_ov1_020dc020
	mov r1, r0
	str r5, [sp]
	add r0, r7, #0x5000
	ldr r0, [r0, #0x1b8]
	mov r2, #2
	mov r3, r4
	bl FUN_ov1_020dc020
	add r0, r7, #0x1180
	add r5, r0, #0x4000
	str r8, [sp, #4]
	add r0, r7, #0x5000
	ldr r0, [r0, #0x180]
	cmp r0, #0
	ldrne r1, [r5, #4]
	cmpne r1, #0
	movne r6, r4
	cmp r6, #0
	beq _0211B40C
	ldrh r4, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	mov r2, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	ldrh r3, [r5, #0xc]
	ldrh r2, [r5, #0xe]
	ldr r0, [r5, #4]
	ldr r1, [sp, #4]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GX_LoadBG3Char
	ldrh r1, [r5, #0xc]
	ldrh r0, [r5, #0xe]
	ldr r2, [sp, #4]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #4]
_0211B40C:
	bl FUN_ov16_020f10ac
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov88_0211b318

	arm_func_start FUN_ov88_0211b418
FUN_ov88_0211b418: ; 0x0211B418
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
	add r0, r0, #0x5000
	ldr r0, [r0, #0x624]
	cmp r0, #0
	bne _0211B490
	ldr r0, _0211B5D8 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	add r1, r7, r5, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x624]
_0211B490:
	add r0, r7, r5, lsl #2
	add r1, r7, r4, lsl #2
	add r0, r0, #0x5000
	add r1, r1, #0x5000
	ldr r2, [r1, #0x200]
	ldr r4, [r0, #0x624]
	ldr r7, _0211B5D8 ; =0x02099F38
	mov r1, r4
	ldr r0, [r7]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r5, #0
	ldr r0, [r7]
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_0211346c
	ldr r0, [r7]
	mov r1, r4
	mov r2, #0x118
	bl FUN_ov16_02112b98
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r7]
	mov r1, r4
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r3, r4
	mov r2, r2, lsl #0x10
	ldr r0, _0211B5DC ; =0x02099EB4
	str r1, [sp]
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fbe8
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
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r8, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x3e
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r5
	add r2, r6, #1
	mov r3, r5
	bl FUN_ov16_0210e720
	mov r2, r4
	add r0, r8, #0x42
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r8, #0x42
	add r2, r6, #2
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B5D8: .word unk_02099F38
_0211B5DC: .word unk_02099EB4
	arm_func_end FUN_ov88_0211b418

	arm_func_start FUN_ov88_0211b5e0
FUN_ov88_0211b5e0: ; 0x0211B5E0
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
	bl FUN_ov88_0211b418
	mov r0, r4
	bl FUN_ov88_0211b640
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov88_0211b5e0

	arm_func_start FUN_ov88_0211b640
FUN_ov88_0211b640: ; 0x0211B640
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B690 ; =0x02099EB4
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov88_0211b694
	cmp r0, #0
	movne r5, #0
	mov r0, r4
	strb r5, [r4, #0x10]
	bl FUN_ov16_0210e69c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B690: .word unk_02099EB4
	arm_func_end FUN_ov88_0211b640

	arm_func_start FUN_ov88_0211b694
FUN_ov88_0211b694: ; 0x0211B694
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x17]
	cmp r1, #0
	beq _0211B6BC
	ldr r1, [r0, #0x1c]
	bl FUN_ov88_0211bd88
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0211B6BC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov88_0211b694

	arm_func_start FUN_ov88_0211b6c4
FUN_ov88_0211b6c4: ; 0x0211B6C4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x5000
	ldr r12, [r0, #0x1ac]
	cmp r12, #0
	beq _0211B730
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
	ldr r0, _0211B7B4 ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211B730:
	add r0, r4, #0x5000
	ldr r12, [r0, #0x180]
	add r0, r4, #0x1180
	add lr, r0, #0x4000
	cmp r12, #0
	ldrne r0, [lr, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211B7A4
	mov r1, #0
	mov r0, #1
	stmia sp, {r0, r1}
	mov r0, #2
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r3, [lr, #0xc]
	ldr r0, _0211B7B4 ; =0x0209F5C0
	mov r2, r1
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh lr, [lr, #0xe]
	mov r3, r1
	and lr, lr, #0xff
	str lr, [sp, #0x14]
	str r1, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211B7A4:
	mov r0, r4
	bl FUN_ov88_0211b7b8
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_0211B7B4: .word unk_0209F5C0
	arm_func_end FUN_ov88_0211b6c4

	arm_func_start FUN_ov88_0211b7b8
FUN_ov88_0211b7b8: ; 0x0211B7B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r8, r0
	ldrb r0, [r8, #0x17]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0211B860 ; =0x0209F5C0
	mov r5, #0
	mov r4, #2
	mov r7, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	strb r7, [r8, #0x10]
	bl FUN_ov16_020f5eec
	add r0, r8, #0x5000
	ldr r2, [r0, #0x1b8]
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
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B860: .word unk_0209F5C0
	arm_func_end FUN_ov88_0211b7b8

	arm_func_start FUN_ov88_0211b864
FUN_ov88_0211b864: ; 0x0211B864
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	addne r1, r0, #0x5000
	ldrne r3, [r1, #0x1c4]
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
	bl FUN_ov16_020f1160
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov88_0211b864

	arm_func_start FUN_ov88_0211b8b0
FUN_ov88_0211b8b0: ; 0x0211B8B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	ldr r0, _0211B91C ; =0x0209F5C0
	mov r2, r1
	strb r1, [r4, #0x18]
	bl FUN_ov16_020f5ff4
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _0211B904
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _0211B90C
	cmp r0, #6
	beq _0211B900
	cmp r0, #7
	bne _0211B90C
_0211B900:
	b _0211B904
_0211B904:
	mov r0, r4
	bl FUN_ov88_0211b6c4
_0211B90C:
	ldr r0, _0211B91C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_0211B91C: .word unk_0209F5C0
	arm_func_end FUN_ov88_0211b8b0

	arm_func_start FUN_ov88_0211b920
FUN_ov88_0211b920: ; 0x0211B920
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x5000
	ldr r0, [r0, #0x624]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B9A4 ; =0x02099F38
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r6, r0
	add r0, r7, #0x5000
	str r6, [r0, #0x624]
	ldr r3, [r0, #0x200]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r6
	sub r3, r5, #1
	mov r2, #0x12c
	bl FUN_ov16_02112c90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B9A4: .word unk_02099F38
	arm_func_end FUN_ov88_0211b920

	arm_func_start FUN_ov88_0211b9a8
FUN_ov88_0211b9a8: ; 0x0211B9A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x5000
	ldr r0, [r0, #0x630]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _0211BB14 ; =0x02099F38
	ldr r1, [r10, #0x7c]
	ldr r0, [r5]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r7, r0
	add r0, r10, #0x5000
	ldr r2, [r0, #0x210]
	str r7, [r0, #0x630]
	ldr r0, [r5]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r4, #0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_0211346c
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0x104
	bl FUN_ov16_02112b98
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	bl FUN_ov16_02113390
	b _0211BA64
_0211BA30:
	add r0, r10, r4, lsl #1
	ldrh r0, [r0, #0x80]
	cmp r0, #0
	beq _0211BA60
	add r0, r10, r4, lsl #2
	add r0, r0, #0x5000
	ldr r3, [r0, #0x224]
	ldr r0, [r5]
	mov r1, r7
	add r2, r4, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
_0211BA60:
	add r4, r4, #1
_0211BA64:
	ldr r0, [r10, #0x7c]
	cmp r4, r0
	blt _0211BA30
	mov r9, #0
	mov r6, #1
	ldr r4, _0211BB18 ; =0x66666667
	ldr r5, _0211BB14 ; =0x02099F38
	mov r11, #0x28
	b _0211BB08
_0211BA88:
	smull r2, r1, r4, r9
	mov r0, r9, lsr #0x1f
	add r1, r0, r1, asr #1
	mov r2, #5
	smull r1, r3, r2, r1
	smull r3, r2, r4, r9
	add r2, r0, r2, asr #1
	sub r1, r9, r1
	add r0, r10, r2, lsl #7
	add r0, r0, r1
	ldrb r8, [r0, #0x480]
	mov r0, #0x28
	mul r0, r2, r0
	add r0, r0, #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mul r0, r1, r11
	add r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r5]
	mov r2, r8
	mov r1, r7
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r9, r9, #1
_0211BB08:
	cmp r9, #0xa
	blt _0211BA88
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BB14: .word unk_02099F38
_0211BB18: .word 0x66666667
	arm_func_end FUN_ov88_0211b9a8

	arm_func_start FUN_ov88_0211bb1c
FUN_ov88_0211bb1c: ; 0x0211BB1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrh r0, [r6, #0x12]
	mov r5, #1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x16]
	ldr r4, _0211BD28 ; =0x02099F38
	add r0, r0, #5
	add r0, r6, r0, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x200]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211BBA4
	ldrb r1, [r6, #0x16]
	ldr r0, [r4]
	mov r2, #0xe
	add r1, r1, #5
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r1, [r1, #0x200]
	mov r3, #3
	bl FUN_ov16_02114918
	ldrb r1, [r6, #0x16]
	mov r2, #0
	ldr r0, [r4]
	add r1, r1, #5
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r1, [r1, #0x200]
	mov r3, r2
	bl FUN_02059038
_0211BBA4:
	ldrb r0, [r6, #0x16]
	ldr r4, _0211BD28 ; =0x02099F38
	add r0, r0, #7
	add r0, r6, r0, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x200]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211BC14
	ldrb r1, [r6, #0x16]
	ldr r0, [r4]
	mov r2, #8
	add r1, r1, #7
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r1, [r1, #0x200]
	mov r3, #3
	bl FUN_ov16_02114918
	ldrb r1, [r6, #0x16]
	mov r2, #0
	ldr r0, [r4]
	add r1, r1, #7
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r1, [r1, #0x200]
	mov r3, r2
	bl FUN_02059038
_0211BC14:
	add r0, r6, #0x5000
	ldr r0, [r0, #0x638]
	cmp r0, #0
	bne _0211BC40
	ldr r0, _0211BD28 ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r6, #0x5000
	str r0, [r1, #0x638]
_0211BC40:
	ldrb r1, [r6, #0x16]
	add r0, r6, #0x5000
	ldr r7, _0211BD28 ; =0x02099F38
	add r1, r1, #5
	add r1, r6, r1, lsl #2
	add r1, r1, #0x5000
	ldr r4, [r0, #0x638]
	ldr r3, [r1, #0x200]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0x118
	bl FUN_ov16_021139bc
	mov r0, #0x78
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0x68
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r4
	add r2, r5, #1
	ldrb r3, [r6, #0x16]
	add r3, r3, #7
	add r3, r6, r3, lsl #2
	add r3, r3, #0x5000
	ldr r3, [r3, #0x200]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r7]
	mov r1, r4
	add r2, r5, #1
	mov r3, #0x104
	bl FUN_ov16_021139bc
	add r2, r5, #1
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r3, #0x20
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r4
	mov r2, #0
	mov r3, r2
	bl FUN_ov16_0211346c
	ldr r0, [r7]
	mov r1, r4
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD28: .word unk_02099F38
	arm_func_end FUN_ov88_0211bb1c

	arm_func_start FUN_ov88_0211bd2c
FUN_ov88_0211bd2c: ; 0x0211BD2C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x12]
	cmp r1, #0
	beq _0211BD60
	mov r1, #4
	bl FUN_ov88_0211a1a4
	ldrb r1, [r4, #0x16]
	mov r0, r4
	eor r1, r1, #1
	strb r1, [r4, #0x16]
	bl FUN_ov88_0211aa34
	ldmfd sp!, {r4, pc}
_0211BD60:
	add r0, r4, #0x5000
	ldr r1, [r0, #0x638]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211BD84 ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	bl FUN_ov16_02113390
	ldmfd sp!, {r4, pc}
_0211BD84: .word unk_02099F38
	arm_func_end FUN_ov88_0211bd2c

	arm_func_start FUN_ov88_0211bd88
FUN_ov88_0211bd88: ; 0x0211BD88
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211BDF0 ; =0x66666667
	mov r5, r1
	smull r2, r3, r4, r5
	mov r1, r5, lsr #0x1f
	add r3, r1, r3, asr #1
	mov r2, #5
	mov r6, r0
	smull r0, r1, r2, r3
	ldr r2, [r6, #0x44]
	sub r3, r5, r0
	ldr r1, [r6, #0x5c]
	add r0, r2, r3
	bl _s32_div_f
	mov r0, r5, lsr #0x1f
	smull r2, r3, r4, r5
	add r3, r0, r3, asr #1
	add r0, r6, r3, lsl #7
	add r0, r0, r1
	ldrb r0, [r0, #0x480]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	addne r0, r6, r0, lsl #1
	ldrneh r0, [r0, #0x80]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BDF0: .word 0x66666667
	arm_func_end FUN_ov88_0211bd88

	arm_func_start FUN_ov88_0211bdf4
FUN_ov88_0211bdf4: ; 0x0211BDF4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	ldr r4, _0211BE9C ; =0x66666667
	mov r5, r1
	smull r2, r3, r4, r5
	mov r1, r5, lsr #0x1f
	add r3, r1, r3, asr #1
	mov r2, #5
	mov r6, r0
	smull r0, r1, r2, r3
	ldr r2, [r6, #0x44]
	sub r3, r5, r0
	ldr r1, [r6, #0x5c]
	add r0, r2, r3
	bl _s32_div_f
	mov r0, r5, lsr #0x1f
	smull r2, r3, r4, r5
	add r3, r0, r3, asr #1
	add r0, r6, r3, lsl #7
	add r0, r0, r1
	ldrb r0, [r0, #0x480]
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	sub r0, r0, #1
	add r0, r6, r0, lsl #1
	add r0, r0, #0x200
	ldrh r1, [r0, #0x80]
	ldr r0, _0211BEA0 ; =0x0209BA20
	add r2, sp, #0
	bl FUN_0207273c
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [sp, #2]
	ldrsb r2, [sp, #3]
	mov r0, r6
	bl FUN_ov88_0211bea4
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, pc}
_0211BE9C: .word 0x66666667
_0211BEA0: .word unk_0209BA20
	arm_func_end FUN_ov88_0211bdf4

	arm_func_start FUN_ov88_0211bea4
FUN_ov88_0211bea4: ; 0x0211BEA4
	cmp r1, #0
	ldreq r0, _0211BECC ; =0x020E9490
	ldreq r0, [r0]
	addeq r2, r2, r0
	cmp r2, #0
	movle r2, #1
	cmp r2, #0x63
	movgt r2, #0x63
	mov r0, r2
	bx lr
_0211BECC: .word ov1_020E9490
	arm_func_end FUN_ov88_0211bea4

	arm_func_start FUN_ov88_0211bed0
FUN_ov88_0211bed0: ; 0x0211BED0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldrb r0, [r8, #0x17]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, #0
	mov r6, #0x20
	mov r5, #0xa
	mov r4, #2
	ldr r9, _0211BF5C ; =0x02099EB4
	b _0211BF4C
_0211BF04:
	mov r0, r8
	mov r1, r7
	bl FUN_ov88_0211c168
	mov r10, r0
	mov r0, r8
	mov r1, r7
	bl FUN_ov88_0211c198
	stmia sp, {r0, r6}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r7, #4
	mov r2, r2, lsl #0x10
	ldr r0, [r9]
	mov r3, r10
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fba4
	add r7, r7, #1
_0211BF4C:
	cmp r7, #0xa
	blt _0211BF04
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BF5C: .word unk_02099EB4
	arm_func_end FUN_ov88_0211bed0

	arm_func_start FUN_ov88_0211bf60
FUN_ov88_0211bf60: ; 0x0211BF60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0x17]
	mov r6, #1
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r4, #0x5000
	ldr r0, [r0, #0x62c]
	cmp r0, #0
	bne _0211BFAC
	ldr r0, _0211C160 ; =0x02099F38
	mov r2, r6
	ldr r0, [r0]
	mov r1, #2
	bl FUN_ov16_02112724
	add r1, r4, #0x5000
	str r0, [r1, #0x62c]
_0211BFAC:
	add r0, r4, #0x5000
	ldr r5, [r0, #0x62c]
	ldr r2, [r0, #0x204]
	ldr r7, _0211C160 ; =0x02099F38
	mov r1, r5
	ldr r0, [r7]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r7]
	mov r1, r5
	mov r2, #0xc8
	bl FUN_ov16_02112b98
	mov r4, #0
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r9, #0x18
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_02113b78
	str r4, [sp]
	mov r8, #2
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #1
	mov r3, r8
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r7]
	add r2, r6, #1
	mov r1, r5
	mov r3, #0xf0
	bl FUN_ov16_02113b78
	mov r7, #1
	str r7, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, _0211C164 ; =0x02099EB4
	mov r2, r8
	ldr r0, [r0]
	mov r1, #3
	mov r3, r5
	bl FUN_ov16_0210fc74
	movs r6, r0
	beq _0211C0C8
	mov r1, r4
	mov r2, r7
	mov r3, r4
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r7
	add r0, r6, #0x3e
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r7
	mov r1, r4
	mov r3, r4
	bl FUN_ov16_0210e720
_0211C0C8:
	mov r4, #2
	str r4, [sp]
	mov r1, #0xa
	mov r8, #3
	str r1, [sp, #4]
	ldr r0, _0211C164 ; =0x02099EB4
	mov r1, r8
	ldr r0, [r0]
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0210fc74
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r6, #0
	mov r5, #1
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r2, r8
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C160: .word unk_02099F38
_0211C164: .word unk_02099EB4
	arm_func_end FUN_ov88_0211bf60

	arm_func_start FUN_ov88_0211c168
FUN_ov88_0211c168: ; 0x0211C168
	ldr r3, _0211C194 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r2, r12, r3, r1
	add r12, r0, r12, asr #1
	mov r3, #5
	smull r0, r2, r3, r12
	sub r12, r1, r0
	mov r0, #0x28
	mul r0, r12, r0
	add r0, r0, #0x20
	bx lr
_0211C194: .word 0x66666667
	arm_func_end FUN_ov88_0211c168

	arm_func_start FUN_ov88_0211c198
FUN_ov88_0211c198: ; 0x0211C198
	ldr r2, _0211C1B8 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #1
	mov r0, #0x28
	mul r0, r3, r0
	add r0, r0, #0x10
	bx lr
_0211C1B8: .word 0x66666667
	arm_func_end FUN_ov88_0211c198

	arm_func_start FUN_ov88_0211c1bc
FUN_ov88_0211c1bc: ; 0x0211C1BC
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
	arm_func_end FUN_ov88_0211c1bc

	arm_func_start FUN_ov88_0211c1ec
FUN_ov88_0211c1ec: ; 0x0211C1EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r4, #0x5000
	ldr r0, [r0, #0x634]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _0211C2B0 ; =0x02099F38
	mov r8, #1
	ldr r0, [r5]
	mov r1, r8
	mov r2, r8
	bl FUN_ov16_02112724
	mov r7, r0
	add r0, r4, #0x5000
	ldr r2, [r0, #0x20c]
	str r7, [r0, #0x634]
	ldr r0, [r5]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r6, #0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_0211346c
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xfa
	bl FUN_ov16_02112b98
	ldr r0, [r5]
	mov r1, r7
	mov r3, r8
	mov r2, #2
	bl FUN_ov16_0211329c
	add r0, r4, #0x5000
	ldrb r0, [r0, #0x63c]
	cmp r0, #0
	mov r0, r4
	beq _0211C2A4
	mov r1, #5
	bl FUN_ov88_0211c2b4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C2A4:
	mov r1, r6
	bl FUN_ov88_0211c2b4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C2B0: .word unk_02099F38
	arm_func_end FUN_ov88_0211c1ec

	arm_func_start FUN_ov88_0211c2b4
FUN_ov88_0211c2b4: ; 0x0211C2B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r2, r7, #0x5000
	str r6, [r7, #0x1c]
	ldr r5, [r2, #0x634]
	mov r4, #1
	bl FUN_ov88_0211c168
	str r0, [r7, #0x24]
	mov r0, r7
	mov r1, r6
	bl FUN_ov88_0211c198
	mov r1, r0, lsl #0x10
	str r0, [r7, #0x28]
	mov r0, r1, asr #0x10
	str r0, [sp]
	ldr r1, [r7, #0x24]
	ldr r0, _0211C318 ; =0x02099F38
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C318: .word unk_02099F38
	arm_func_end FUN_ov88_0211c2b4

	arm_func_start FUN_ov88_0211c31c
FUN_ov88_0211c31c: ; 0x0211C31C
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
	bl FUN_ov88_0211c168
	str r0, [r6, #0x24]
	mov r0, r6
	mov r1, r7
	bl FUN_ov88_0211c198
	str r0, [r6, #0x28]
	mov r0, r6
	mov r1, r5
	bl FUN_ov88_0211c168
	str r0, [r6, #0x2c]
	mov r0, r6
	mov r1, r5
	bl FUN_ov88_0211c198
	ldr r2, [r6, #0x2c]
	ldr r1, [r6, #0x24]
	str r0, [r6, #0x30]
	sub r0, r2, r1
	mov r1, r4
	bl _s32_div_f
	str r0, [r6, #0x38]
	ldr r2, [r6, #0x30]
	ldr r0, [r6, #0x28]
	mov r1, r4
	sub r0, r2, r0
	bl _s32_div_f
	str r0, [r6, #0x3c]
	ldr r2, [r6, #0x2c]
	ldr r0, [r6, #0x24]
	cmp r0, r2
	ble _0211C3D0
	mov r1, r4
	sub r0, r0, r2
	bl _s32_div_f
	rsb r0, r0, #0
	str r0, [r6, #0x38]
_0211C3D0:
	ldr r2, [r6, #0x30]
	ldr r0, [r6, #0x28]
	cmp r0, r2
	ble _0211C3F4
	mov r1, r4
	sub r0, r0, r2
	bl _s32_div_f
	rsb r0, r0, #0
	str r0, [r6, #0x3c]
_0211C3F4:
	ldr r0, _0211C438 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, r5
	str r5, [r6, #0x1c]
	bl FUN_ov88_0211bd88
	strh r0, [r6, #0x12]
	ldr r1, [r6, #0x1c]
	mov r0, r6
	bl FUN_ov88_0211bdf4
	strh r0, [r6, #0x14]
	mov r0, r6
	bl FUN_ov88_0211bd2c
	mov r0, r6
	bl FUN_ov88_0211b640
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C438: .word gL5Sound
	arm_func_end FUN_ov88_0211c31c

	arm_func_start FUN_ov88_0211c43c
FUN_ov88_0211c43c: ; 0x0211C43C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, [r0, #0x34]
	ldr lr, [r0, #0x38]
	add r2, r1, #1
	ldr r3, [r0, #0x24]
	ldr r12, [r0, #0x28]
	ldr r4, [r0, #0x3c]
	add r1, r0, #0x5000
	mla r3, lr, r2, r3
	cmp lr, #0
	mla r12, r4, r2, r12
	str r2, [r0, #0x34]
	ldr r1, [r1, #0x634]
	mov r2, #1
	ldr lr, [r0, #0x2c]
	bge _0211C48C
	cmp r3, lr
	movlt r3, lr
	b _0211C494
_0211C48C:
	cmp r3, lr
	movgt r3, lr
_0211C494:
	cmp r4, #0
	ldr lr, [r0, #0x30]
	bge _0211C4AC
	cmp r12, lr
	movlt r12, lr
	b _0211C4B4
_0211C4AC:
	cmp r12, lr
	movgt r12, lr
_0211C4B4:
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
	ldr r0, _0211C4F8 ; =0x02099F38
	str r12, [sp]
	ldr r0, [r0]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211C4F8: .word unk_02099F38
	arm_func_end FUN_ov88_0211c43c

	arm_func_start FUN_ov88_0211c4fc
FUN_ov88_0211c4fc: ; 0x0211C4FC
	mov r1, #0
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x58]
	str r1, [r0, #0x50]
	str r1, [r0, #0x54]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x60]
	bx lr
	arm_func_end FUN_ov88_0211c4fc

	arm_func_start FUN_ov88_0211c520
FUN_ov88_0211c520: ; 0x0211C520
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r0
	add r0, r8, #0x5000
	ldr r4, [r0, #0x630]
	ldr r6, [r8, #0x44]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r9, _0211C664 ; =0x02099F38
	mov r7, #0
	ldr r0, [r9]
	mov r1, r4
	mov r2, r7
	mov r3, r7
	bl FUN_ov16_02114248
	ldr r0, [r9]
	mov r1, r4
	mov r2, #2
	bl FUN_ov16_02113390
	mov r11, #1
	b _0211C658
_0211C570:
	add r0, r8, r6
	ldrb r5, [r0, #0x480]
	cmp r5, #0
	beq _0211C5D8
	mov r0, r8
	mov r1, r7
	bl FUN_ov88_0211c168
	mov r10, r0
	mov r0, r8
	mov r1, r7
	bl FUN_ov88_0211c198
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r10, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r9]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r9]
	mov r2, r5
	mov r1, r4
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C5D8:
	add r0, r8, r6
	ldrb r5, [r0, #0x500]
	cmp r5, #0
	beq _0211C644
	mov r0, r8
	add r1, r7, #5
	bl FUN_ov88_0211c168
	mov r10, r0
	mov r0, r8
	add r1, r7, #5
	bl FUN_ov88_0211c198
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r10, lsl #0x10
	str r0, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r9]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r9]
	mov r2, r5
	mov r1, r4
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C644:
	ldr r0, [r8, #0x5c]
	add r6, r6, #1
	cmp r6, r0
	movge r6, #0
	add r7, r7, #1
_0211C658:
	cmp r7, #5
	blt _0211C570
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C664: .word unk_02099F38
	arm_func_end FUN_ov88_0211c520

	arm_func_start FUN_ov88_0211c668
FUN_ov88_0211c668: ; 0x0211C668
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x5000
	ldr r5, [r0, #0x630]
	ldr r2, [r10, #0x44]
	mov r9, r1
	add r4, r2, r9
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x5c]
	cmp r4, #0
	sublt r4, r0, #1
	blt _0211C6A4
	cmp r4, r0
	movge r4, #0
_0211C6A4:
	mov r6, #0
	mov r0, #1
	str r0, [r10, #0x48]
	str r6, [r10, #0x4c]
	cmp r9, #0
	bge _0211C74C
	mov r0, r10
	mov r1, r6
	bl FUN_ov88_0211c168
	sub r7, r0, #0x28
	mov r0, r10
	mov r1, r6
	bl FUN_ov88_0211c198
	add r1, r10, r4
	ldrb r6, [r1, #0x480]
	cmp r6, #0
	beq _0211C72C
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r8, _0211C8A0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C72C:
	mov r0, r10
	mov r1, #5
	bl FUN_ov88_0211c198
	add r1, r10, r4
	ldrb r6, [r1, #0x500]
	cmp r6, #0
	beq _0211C830
	b _0211C7EC
_0211C74C:
	ldr r1, [r10, #0x5c]
	add r0, r2, #5
	bl _s32_div_f
	mov r6, #4
	mov r8, r1
	mov r0, r10
	mov r1, r6
	bl FUN_ov88_0211c168
	add r7, r0, #0x28
	mov r0, r10
	mov r1, r6
	bl FUN_ov88_0211c198
	add r1, r10, r8
	ldrb r6, [r1, #0x480]
	cmp r6, #0
	beq _0211C7D0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r11, _0211C8A0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C7D0:
	mov r0, r10
	mov r1, #5
	bl FUN_ov88_0211c198
	add r1, r10, r8
	ldrb r6, [r1, #0x500]
	cmp r6, #0
	beq _0211C830
_0211C7EC:
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r8, _0211C8A0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C830:
	rsb r1, r9, #0
	mov r0, #0x28
	mul r5, r1, r0
	ldr r2, _0211C8A4 ; =0x66666667
	mov r3, #0
	mov r0, r5, lsr #0x1f
	smull r1, r6, r2, r5
	add r6, r0, r6, asr #1
	ldr r0, _0211C8A8 ; =gL5Sound
	mov r1, #8
	str r6, [r10, #0x58]
	str r3, [r10, #0x50]
	str r5, [r10, #0x54]
	bl FUN_0202cf6c
	ldr r1, [r10, #0x1c]
	mov r0, r10
	str r4, [r10, #0x44]
	bl FUN_ov88_0211bd88
	strh r0, [r10, #0x12]
	ldr r1, [r10, #0x1c]
	mov r0, r10
	bl FUN_ov88_0211bdf4
	strh r0, [r10, #0x14]
	mov r0, r10
	bl FUN_ov88_0211bd2c
	mov r0, r10
	bl FUN_ov88_0211b640
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C8A0: .word unk_02099F38
_0211C8A4: .word 0x66666667
_0211C8A8: .word gL5Sound
	arm_func_end FUN_ov88_0211c668

	arm_func_start FUN_ov88_0211c8ac
FUN_ov88_0211c8ac: ; 0x0211C8AC
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x4c]
	ldr r3, [r0, #0x58]
	add r2, r1, #1
	ldr r12, [r0, #0x50]
	add r1, r0, #0x5000
	mla r12, r3, r2, r12
	str r2, [r0, #0x4c]
	cmp r3, #0
	ldr r1, [r1, #0x630]
	ldr r2, [r0, #0x54]
	bge _0211C8E8
	cmp r12, r2
	movlt r12, r2
	b _0211C8F0
_0211C8E8:
	cmp r12, r2
	movgt r12, r2
_0211C8F0:
	ldr r2, [r0, #0x54]
	cmp r12, r2
	bne _0211C910
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	bl FUN_ov88_0211c520
	ldmfd sp!, {r3, pc}
_0211C910:
	ldr r0, _0211C92C ; =0x02099F38
	mov r2, r12, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, asr #0x10
	mov r3, #0
	bl FUN_ov16_02114248
	ldmfd sp!, {r3, pc}
_0211C92C: .word unk_02099F38
	arm_func_end FUN_ov88_0211c8ac

	arm_func_start FUN_ov88_0211c930
FUN_ov88_0211c930: ; 0x0211C930
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x17]
	cmp r1, #0
	beq _0211C950
	ldr r1, [r0, #8]
	sub r1, r1, #6
	cmp r1, #1
	bhi _0211C954
_0211C950:
	bl FUN_ov88_0211b7b8
_0211C954:
	ldr r0, _0211C964 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, pc}
_0211C964: .word unk_0209F5C0
	arm_func_end FUN_ov88_0211c930

	arm_func_start FUN_ov88_0211c968
FUN_ov88_0211c968: ; 0x0211C968
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r0, [r0, #0x78]
	ldr r4, _0211C9B0 ; =0x02099EB4
	add r2, sp, #0
	and r0, r1, r0
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211C9B0: .word unk_02099EB4
	arm_func_end FUN_ov88_0211c968

	arm_func_start FUN_ov88_0211c9b4
FUN_ov88_0211c9b4: ; 0x0211C9B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #1
	str r5, [r6, #8]
	strb r5, [r6, #0x1a]
	strb r5, [r6, #0x17]
	strb r5, [r6, #0x19]
	strb r5, [r6, #0x18]
	str r5, [r6, #0x7c]
	strb r5, [r6, #0x16]
	strh r4, [r6, #0x78]
	str r5, [r6, #0xc]
	strb r5, [r6, #0x10]
	strh r4, [r6, #0x14]
	bl FUN_ov88_0211c1bc
	mov r0, r6
	bl FUN_ov88_0211c4fc
	add r0, r6, #0x194
	mov r1, r5
	add r0, r0, #0x5000
	mov r2, #0x6c
	bl MI_CpuFill8
	mov r7, #0x200
	mov r1, r5
	add r0, r6, #0x80
	mov r2, r7
	bl MI_CpuFill8
	mov r2, r7
	add r0, r6, #0x280
	mov r1, r5
	bl MI_CpuFill8
	add r0, r6, #0x1180
	add r0, r0, #0x4000
	mov r1, r5
	mov r2, #0x14
	bl MI_CpuFill8
	add r0, r6, #0x5200
	mov r1, r5
	mov r2, #0x24
	bl MI_CpuFill8
	add r0, r6, #0x224
	add r0, r0, #0x5400
	mov r1, r5
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r6, #0x224
	add r0, r0, #0x5000
	mov r1, r5
	mov r2, #0x400
	bl MI_CpuFill8
	mov r7, #0x100
	add r0, r6, #0x480
	mov r1, r5
	mov r2, r7
	bl MI_CpuFill8
	ldr r0, _0211CB7C ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211CB80 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _0211CB84 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	rsb r0, r7, #0xff
	str r0, [r6, #0x6c]
	ldr r0, _0211CB88 ; =0x020A0640
	str r4, [r6, #0x68]
	str r5, [r6, #0x64]
	str r5, [r6, #0x70]
	strb r5, [r6, #0x74]
	strb r5, [r6, #0x75]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _0211CB8C ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	strneb r0, [r6, #0x17]
	ldr r0, _0211CB90 ; =0x0209BA20
	bl FUN_020728c4
	strh r0, [r6, #0x12]
	ldr r0, _0211CB94 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5a58
	ldr r0, _0211CB88 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211CB6C
	add r0, r6, #0x1180
	add r0, r0, #0x4000
	mov r1, #0x1c
	mov r2, #6
	bl FUN_ov16_020f2fa8
	mov r0, r6
	bl FUN_ov88_0211a7a4
	ldr r0, _0211CB98 ; =0x020A1640
	ldr r1, _0211CB9C ; =0x0211D334
	ldrh r0, [r0, #0x10]
	add r2, r6, #0x5000
	mov r3, #0
	cmp r0, #0
	strneh r0, [r6, #0x12]
	ldrb r0, [r6, #0x17]
	strb r3, [r2, #0x63c]
	cmp r0, #0
	moveq r0, #0
	streqh r0, [r6, #0x12]
	mov r0, r6
	bl FUN_ov88_02119f38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CB6C:
	mov r0, r6
	mov r1, #8
	bl FUN_ov88_0211a1a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CB7C: .word unk_02099EB4
_0211CB80: .word unk_02099ED4
_0211CB84: .word unk_02099F38
_0211CB88: .word unk_020A0640
_0211CB8C: .word unk_0209AEC0
_0211CB90: .word unk_0209BA20
_0211CB94: .word unk_0209F5C0
_0211CB98: .word unk_020A1640
_0211CB9C: .word ov88_0211D334
	arm_func_end FUN_ov88_0211c9b4

	arm_func_start FUN_ov88_0211cba0
FUN_ov88_0211cba0: ; 0x0211CBA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #5
	cmpne r0, #6
	beq _0211CBC0
	cmp r0, #7
	bne _0211CBFC
_0211CBC0:
	ldr r0, _0211CDD0 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0211CBFC
	ldr r5, _0211CDD4 ; =0x0209AEC0
	mov r0, r5
	bl FUN_020467c0
	cmp r0, #0
	ldrneb r0, [r5, #0x64]
	cmpne r0, #0
	beq _0211CBFC
	mov r0, r5
	bl FUN_020467ac
	mov r0, r5
	bl FUN_02046e28
_0211CBFC:
	ldr r0, [r4, #8]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0211CD34
_0211CC0C: ; jump table
	b _0211CD34 ; case 0
	b _0211CC30 ; case 1
	b _0211CD34 ; case 2
	b _0211CC7C ; case 3
	b _0211CCF4 ; case 4
	b _0211CD18 ; case 5
	b _0211CD10 ; case 6
	b _0211CD10 ; case 7
	b _0211CD2C ; case 8
_0211CC30:
	add r0, r4, #0x194
	add r0, r0, #0x5000
	mov r1, #9
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211CD34
	mov r0, r4
	bl FUN_ov88_0211a8e4
	mov r0, r4
	bl FUN_ov88_0211a908
	mov r0, r4
	bl FUN_ov88_0211a250
	mov r0, r4
	bl FUN_ov88_0211a974
	mov r0, r4
	bl FUN_ov88_0211aa34
	mov r0, r4
	mov r1, #2
	b _0211CCEC
_0211CC7C:
	mov r0, r4
	bl FUN_ov88_0211ac50
	cmp r0, #0
	beq _0211CD34
	mov r0, r4
	bl FUN_ov88_0211ace8
	mov r0, r4
	bl FUN_ov88_0211bed0
	mov r0, r4
	bl FUN_ov88_0211bf60
	mov r0, r4
	bl FUN_ov88_0211b920
	mov r0, r4
	bl FUN_ov88_0211b5e0
	mov r0, r4
	bl FUN_ov88_0211b8b0
	mov r0, r4
	bl FUN_ov88_0211b9a8
	mov r0, r4
	bl FUN_ov88_0211c1ec
	mov r0, r4
	bl FUN_ov88_0211bb1c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211CCE4:
	mov r0, r4
	mov r1, #5
_0211CCEC:
	bl FUN_ov88_0211a1a4
	b _0211CD34
_0211CCF4:
	mov r0, r4
	bl FUN_ov88_0211ac50
	cmp r0, #0
	beq _0211CD34
	mov r0, r4
	bl FUN_ov88_0211bb1c
	b _0211CCE4
_0211CD10:
	mov r0, r4
	bl FUN_ov88_0211b8b0
_0211CD18:
	ldr r0, [r4, #4]
	add r1, r4, #0x64
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
_0211CD2C:
	mov r0, r4
	bl FUN_ov88_0211c930
_0211CD34:
	ldr r0, _0211CDD8 ; =0x02099ED4
	ldr r5, _0211CDDC ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211CD6C
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211CD78
_0211CD6C:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211CD78:
	bl _ffix
	ldr r2, _0211CDE0 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0211CDA0
	mov r0, r4
	bl FUN_ov88_0211c43c
_0211CDA0:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0211CDB4
	mov r0, r4
	bl FUN_ov88_0211c8ac
_0211CDB4:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CDD0: .word unk_020A0640
_0211CDD4: .word unk_0209AEC0
_0211CDD8: .word unk_02099ED4
_0211CDDC: .word unk_0209A110
_0211CDE0: .word unk_02099F58
	arm_func_end FUN_ov88_0211cba0

	arm_func_start FUN_ov88_0211cde4
FUN_ov88_0211cde4: ; 0x0211CDE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211CDFC: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211CE1C ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	b _0211CE34 ; case 5
	b _0211CE38 ; case 6
	b _0211CE38 ; case 7
_0211CE1C:
	bl FUN_ov88_0211b318
	bl FUN_ov16_020f10ac
	mov r0, r4
	mov r1, #3
	bl FUN_ov88_0211a1a4
	ldmfd sp!, {r4, pc}
_0211CE34:
	bl FUN_ov16_020f10ac
_0211CE38:
	ldr r0, _0211CE50 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	mov r0, r4
	bl FUN_ov88_0211b864
	ldmfd sp!, {r4, pc}
_0211CE50: .word unk_0209F5C0
	arm_func_end FUN_ov88_0211cde4

	arm_func_start FUN_ov88_0211ce54
FUN_ov88_0211ce54: ; 0x0211CE54
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211CF58 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211CF5C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov88_0211abbc
	ldr r5, _0211CF60 ; =0x0209BA20
	mov r1, #0
	mov r0, r5
	bl FUN_0207249c
	mov r6, r0
	mov r0, r5
	mov r1, #1
	bl FUN_0207249c
	ldrh r2, [r6, #0x40]
	ldr r1, _0211CF64 ; =0x0209A454
	strh r2, [r6, #0x28]
	cmp r2, #0
	ldreqh r2, [r6, #0x26]
	strh r2, [r1, #0x3c]
	ldrh r3, [r0, #0x40]
	ldr r1, _0211CF64 ; =0x0209A454
	mov r2, #1
	strh r3, [r0, #0x28]
	cmp r3, #0
	ldreqh r3, [r0, #0x26]
	strh r3, [r1, #0x3e]
	strb r2, [r6, #0x2c]
	strb r2, [r0, #0x2c]
	ldrh r1, [r6, #0x28]
	ldrh r2, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r6, #0x26]
	cmp r2, #0
	ldreqh r2, [r0, #0x26]
	cmp r1, r2
	moveq r1, #0
	streqb r1, [r0, #0x2c]
	add r0, r4, #0x194
	add r0, r0, #0x5000
	mov r1, #9
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov88_0211add8
	ldr r0, _0211CF60 ; =0x0209BA20
	bl FUN_ov16_020eedb8
	ldr r0, _0211CF68 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	add r0, r4, #0x1180
	add r0, r0, #0x4000
	mov r1, #1
	bl FUN_ov16_020f2fe4
	ldr r0, _0211CF6C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_0211CF58: .word unk_02099EB4
_0211CF5C: .word unk_02099ED4
_0211CF60: .word unk_0209BA20
_0211CF64: .word unk_0209A454
_0211CF68: .word unk_02099F38
_0211CF6C: .word unk_0209F5C0
	arm_func_end FUN_ov88_0211ce54

	arm_func_start FUN_ov88_0211cf70
FUN_ov88_0211cf70: ; 0x0211CF70
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov88_0211cf70

	arm_func_start FUN_ov88_0211cf84
FUN_ov88_0211cf84: ; 0x0211CF84
	bx lr
	arm_func_end FUN_ov88_0211cf84

	.global ov88_0211CF88
ov88_0211CF88:
	.byte 0x98, 0xD0, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0xA4, 0xD0, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0xD1, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov88_0211CFA8
ov88_0211CFA8:
	.byte 0x50, 0xD1, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD0, 0xD0, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xE0, 0xD0, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0xF0, 0xD0, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x20, 0xD1, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov88_0211CFD8
ov88_0211CFD8:
	.byte 0x40, 0xD1, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xD0, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x10, 0xD1, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0x30, 0xD1, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xB0, 0xD0, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov88_0211d008
FUN_ov88_0211d008: ; 0x0211D008
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211D050 ; =0x0211D080
	str r0, [r4, #0x14]
	ldr r0, _0211D054 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211D058 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D050: .word ov88_0211D080
_0211D054: .word 0x00009CCD
_0211D058: .word 0x0000EA3C
	arm_func_end FUN_ov88_0211d008

	.section .sinit, 4
ov88_0211D05C:
	.word FUN_ov88_0211d008

	.data
	.global ov88_0211D080
ov88_0211D080:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x65, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x65, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x77, 0x67, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov88_0211D168
ov88_0211D168:
	.byte 0x84, 0xCF, 0x11, 0x02, 0x70, 0xCF, 0x11, 0x02
	.byte 0xEC, 0xAF, 0x11, 0x02, 0xAC, 0xAE, 0x11, 0x02, 0xB4, 0xC9, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0xA0, 0xCB, 0x11, 0x02, 0xE4, 0xCD, 0x11, 0x02, 0x54, 0xCE, 0x11, 0x02, 0x64, 0x9F, 0x11, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0x90, 0xA1, 0x11, 0x02, 0x2C, 0xA0, 0x11, 0x02, 0x7C, 0xA1, 0x11, 0x02
	.byte 0x38, 0xA1, 0x11, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02, 0x00, 0xE6, 0x0B, 0x02, 0x5C, 0xE5, 0x0B, 0x02, 0xBC, 0xE5, 0x0B, 0x02
	.byte 0xE0, 0xE5, 0x0B, 0x02
	.global ov88_0211D1E4
ov88_0211D1E4:
	.byte 0x47, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov88_0211D1EC
ov88_0211D1EC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x66, 0x69, 0x65, 0x6C, 0x64
	.byte 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov88_0211D208
ov88_0211D208:
	.byte 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x67, 0x6D, 0x64
	.byte 0x6E, 0x5F, 0x73, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov88_0211D218
ov88_0211D218:
	.byte 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x70, 0x6F, 0x5F
	.byte 0x65, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov88_0211D228
ov88_0211D228:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70
	.byte 0x6B, 0x68, 0x00, 0x00
	.global ov88_0211D234
ov88_0211D234:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x4D, 0x4D, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov88_0211D250
ov88_0211D250:
	.byte 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x2F, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xB7, 0x82, 0xE9, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x82, 0xA6, 0x82, 0xE7, 0x82
	.byte 0xF1, 0x82, 0xC5, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE
	.byte 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov88_0211D29C
ov88_0211D29C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x66, 0x69, 0x65, 0x6C, 0x64
	.byte 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov88_0211D2B8
ov88_0211D2B8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x66, 0x69, 0x65, 0x6C, 0x64, 0x2E, 0x53, 0x50, 0x44
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov88_0211D2D4
ov88_0211D2D4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70
	.byte 0x6B, 0x62, 0x00, 0x00
	.global ov88_0211D2F4
ov88_0211D2F4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x73, 0x2E, 0x70
	.byte 0x6B, 0x62, 0x00, 0x00
	.global ov88_0211D314
ov88_0211D314:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x62
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov88_0211D334
ov88_0211D334:
	.byte 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB7, 0x82, 0xE9
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xF1, 0x82
	.byte 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/overlay132.inc"

	.text
	arm_func_start FUN_ov132_0213acc0
FUN_ov132_0213acc0: ; 0x0213ACC0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r2, _0213ADE8 ; =0x021602E8
	ldr r0, _0213ADEC ; =0x02099F78
	ldr r1, _0213ADF0 ; =0x021602F0
	str r2, [r5]
	bl _ZN8L5Config8getParamEPc
	mov r1, #0x1e
	mov r3, #0
	mul r12, r0, r1
	ldr r1, _0213ADF4 ; =0x92492493
	ldr r4, _0213ADF8 ; =0x0209A250
	smull r0, r6, r1, r12
	add r2, r5, #0x300
	add r6, r12, r6
	mov r0, r12, lsr #0x1f
	add r6, r0, r6, asr #2
	mov r0, r4
	str r3, [r5, #0x1c8]
	mov r1, #0x400
	str r12, [r5, #4]
	str r6, [r5, #8]
	str r3, [r5, #0x194]
	str r3, [r5, #0x198]
	strb r3, [r5, #0x374]
	strb r3, [r5, #0x375]
	strh r3, [r2, #0x98]
	bl FUN_0202de44
	str r0, [r5, #0x1c8]
	mov r0, r4
	mov r1, #0x384
	bl FUN_0202de44
	ldr r6, _0213ADFC ; =0x00000F78
	str r0, [r5, #0x1f4]
	mov r0, r4
	mov r1, r6
	bl FUN_0202de44
	mov r1, r6, lsl #4
	str r0, [r5, #0x1f8]
	mov r0, r4
	bl FUN_0202de44
	str r0, [r5, #0x1fc]
	mov r0, r4
	mov r6, #0x180
	mov r1, r6
	bl FUN_0202de44
	mov r1, r6
	str r0, [r5, #0x200]
	mov r0, r4
	bl FUN_0202de44
	str r0, [r5, #0x204]
	mov r0, r4
	mov r1, #0x300
	bl FUN_0202de44
	str r0, [r5, #0x208]
	mov r0, r4
	mov r1, #4
	bl FUN_0202de44
	str r0, [r5, #0x210]
	mov r0, r4
	mov r1, #0x20
	bl FUN_0202de44
	str r0, [r5, #0x20c]
	mov r0, r5
	bl FUN_ov132_0214352c
	mov r0, #0xc
	bl operator_new
	cmp r0, #0
	beq _0213ADD8
	bl FUN_ov132_021589a4
_0213ADD8:
	ldr r1, _0213AE00 ; =0x0209A13C
	str r0, [r1]
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0213ADE8: .word ov132_021602E8
_0213ADEC: .word unk_02099F78
_0213ADF0: .word ov132_021602F0
_0213ADF4: .word 0x92492493
_0213ADF8: .word unk_0209A250
_0213ADFC: .word 0x00000F78
_0213AE00: .word unk_0209A13C
	arm_func_end FUN_ov132_0213acc0

	arm_func_start FUN_ov132_0213ae04
FUN_ov132_0213ae04: ; 0x0213AE04
	stmfd sp!, {r4, lr}
	ldr r1, _0213AE20 ; =0x021602E8
	mov r4, r0
	str r1, [r4]
	bl FUN_ov132_0213ae4c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0213AE20: .word ov132_021602E8
	arm_func_end FUN_ov132_0213ae04

	arm_func_start FUN_ov132_0213ae24
FUN_ov132_0213ae24: ; 0x0213AE24
	stmfd sp!, {r4, lr}
	ldr r1, _0213AE48 ; =0x021602E8
	mov r4, r0
	str r1, [r4]
	bl FUN_ov132_0213ae4c
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0213AE48: .word ov132_021602E8
	arm_func_end FUN_ov132_0213ae24

	arm_func_start FUN_ov132_0213ae4c
FUN_ov132_0213ae4c: ; 0x0213AE4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, _0213AEF4 ; =0x0209A250
	ldr r1, [r5, #0x1c8]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0x1f4]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0x1f8]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0x1fc]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0x200]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0x204]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0x208]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0x210]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0x20c]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r0, _0213AEF8 ; =0x0209A13C
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	beq _0213AEE4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213AEE4:
	ldr r0, _0213AEF8 ; =0x0209A13C
	mov r1, #0
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_0213AEF4: .word unk_0209A250
_0213AEF8: .word unk_0209A13C
	arm_func_end FUN_ov132_0213ae4c

	arm_func_start FUN_ov132_0213aefc
FUN_ov132_0213aefc: ; 0x0213AEFC
	ldr r0, [r0, #0x198]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov132_0213aefc

	arm_func_start FUN_ov132_0213af10
FUN_ov132_0213af10: ; 0x0213AF10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r11, r3
	mov r4, #2
	mov r6, #1
	mov r7, #0
	bl FUN_ov132_021434f8
	cmp r0, #1
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r8, #0x5c]
	cmp r0, #0
	beq _0213AF64
	cmp r0, #1
	beq _0213B248
	cmp r0, #2
	beq _0213B344
	b _0213B350
_0213AF64:
	mov r0, r10
	mov r1, r6
	mov r2, r7
	bl FUN_ov132_021435c0
	mov r0, r10
	bl FUN_ov126_02137544
	mov r5, r0
	mov r0, r9
	strb r7, [r5, #0xe]
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02144854
	ldrsh r2, [r9, #0x94]
	mov r4, r0
	mov r0, r10
	strb r2, [r5, #0xc]
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, r9
	mov r2, r7
	mov r3, #4
	str r7, [sp, #0xc]
	bl FUN_ov132_02141778
	mov r1, r0
	mov r0, r5
	bl FUN_ov126_02138694
	cmp r4, #0
	beq _0213B018
	ldrsh r2, [r4, #0x94]
	mov r0, r10
	mov r1, r4
	strb r2, [r5, #0xd]
	str r7, [sp]
	stmib sp, {r6, r9}
	mov r2, r7
	mov r3, #8
	str r7, [sp, #0xc]
	bl FUN_ov132_02141778
	mov r1, r0
	mov r0, r5
	bl FUN_ov126_021386cc
	mov r0, #0x1e
	strh r0, [r5, #0xa]
_0213B018:
	mov r0, r9
	mov r4, #1
	mov r6, #0
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02145190
	cmp r0, #0
	ldrneb r0, [r5, #0xf]
	mov r1, r9
	mov r2, #0
	orrne r0, r0, #8
	strneb r0, [r5, #0xf]
	mov r0, r10
	bl FUN_ov132_02147024
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02147e90
	cmp r0, #1
	ldreqb r0, [r5, #0xf]
	orreq r0, r0, #0x10
	streqb r0, [r5, #0xf]
	beq _0213B0A0
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02147e90
	cmp r0, #2
	ldreqb r0, [r5, #0xf]
	orreq r0, r0, #0x20
	streqb r0, [r5, #0xf]
_0213B0A0:
	cmp r11, #0
	mov r7, #2
	beq _0213B144
	mov r4, #1
	strb r4, [r8, #0x5c]
	mov r0, r5
	strb r6, [r10, #0x36d]
	bl FUN_020404cc
	ldrb r0, [r8, #0x5b]
	mov r1, #6
	tst r0, #0x80
	moveq r4, r6
	cmp r4, #0
	ldrneb r0, [r5, #0xf]
	orrne r0, r0, #1
	strneb r0, [r5, #0xf]
	ldrb r2, [r5, #0xf]
	mov r0, r10
	orr r2, r2, #0x40
	strb r2, [r5, #0xf]
	bl FUN_ov132_021447d0
	ldrb r1, [r8, #0x5e]
	mov r0, r10
	bl FUN_ov132_0214532c
	cmp r0, #0
	mov r0, r10
	bne _0213B114
	mov r1, #1
	b _0213B118
_0213B114:
	mov r1, #0xd
_0213B118:
	bl FUN_ov132_021447f4
	mov r1, #1
	mov r0, r10
	mov r2, r1
	bl FUN_ov132_02143598
	mov r0, r10
	bl FUN_ov126_02137644
	mov r0, r10
	bl FUN_ov126_02137644
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B144:
	mov r0, r10
	bl FUN_ov126_021375d4
	mov r5, r0
	mov r0, r10
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x29]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #2
	cmpne r1, #5
	ldreqsh r0, [r0, #0x22]
	streqh r0, [r5, #8]
	mov r0, r5
	bl FUN_ov126_02138638
	cmp r0, #0
	bne _0213B238
	ldr r1, [r8, #0x18]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r8, #0x1c]
	mov r1, r9
	str r2, [sp, #4]
	ldr r3, [r9, #0x84]
	ldmia r3, {r2, r3}
	bl FUN_ov132_021475e8
	cmp r0, #1
	bne _0213B1F8
	ldr r5, _0213B880 ; =0x0209A114
	ldr r6, _0213B884 ; =0x0000191F
	str r4, [sp]
	mov r11, #0x14
	ldr r0, [r5]
	mov r2, r6
	mov r3, r11
	mov r1, #0
	bl FUN_ov1_020de1ac
	str r4, [sp]
	ldr r0, [r5]
	mov r1, r4
	mov r2, r6
	mov r3, r11
	bl FUN_ov1_020de1ac
	ldr r0, [r5]
	strb r4, [r0, #0x3a5]
	b _0213B238
_0213B1F8:
	ldr r5, _0213B880 ; =0x0209A114
	ldr r11, _0213B888 ; =0x00005044
	str r4, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r11
	mov r3, #0x14
	bl FUN_ov1_020de1ac
	str r4, [sp]
	ldr r0, [r5]
	mov r1, r4
	mov r2, r11
	mov r3, #0x14
	bl FUN_ov1_020de1ac
	ldr r0, [r5]
	strb r6, [r0, #0x3a5]
_0213B238:
	mov r0, r10
	bl FUN_ov132_02147e9c
	strb r7, [r8, #0x5c]
	b _0213B350
_0213B248:
	mov r0, r10
	bl FUN_ov126_021375d4
	mov r5, r0
	mov r0, r10
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x29]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #2
	cmpne r1, #5
	ldreqsh r0, [r0, #0x22]
	streqh r0, [r5, #8]
	mov r0, r5
	bl FUN_ov126_02138638
	cmp r0, #0
	bne _0213B33C
	ldr r1, [r8, #0x18]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r8, #0x1c]
	mov r1, r9
	str r2, [sp, #4]
	ldr r3, [r9, #0x84]
	ldmia r3, {r2, r3}
	bl FUN_ov132_021475e8
	cmp r0, #1
	bne _0213B2FC
	ldr r5, _0213B880 ; =0x0209A114
	ldr r7, _0213B884 ; =0x0000191F
	str r6, [sp]
	mov r11, #0x14
	ldr r0, [r5]
	mov r2, r7
	mov r3, r11
	mov r1, #0
	bl FUN_ov1_020de1ac
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	mov r3, r11
	bl FUN_ov1_020de1ac
	ldr r0, [r5]
	strb r6, [r0, #0x3a5]
	b _0213B33C
_0213B2FC:
	ldr r5, _0213B880 ; =0x0209A114
	ldr r11, _0213B888 ; =0x00005044
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r11
	mov r3, #0x14
	bl FUN_ov1_020de1ac
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r11
	mov r3, #0x14
	bl FUN_ov1_020de1ac
	ldr r0, [r5]
	strb r7, [r0, #0x3a5]
_0213B33C:
	strb r4, [r8, #0x5c]
	b _0213B350
_0213B344:
	add sp, sp, #0x20
	strb r7, [r8, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B350:
	mov r0, r10
	mov r7, #1
	mov r6, #0
	bl FUN_ov126_021375d4
	mov r5, r0
	ldrsb r0, [r5, #0xd]
	bl FUN_ov16_020efa80
	movs r4, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0206d688
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r0, [r5, #0xc]
	bl FUN_ov16_020efa80
	str r0, [sp, #0x14]
	ldrb r1, [r8, #0x5e]
	mov r0, r10
	bl FUN_ov132_0214532c
	cmp r0, #0
	beq _0213B49C
	mov r0, r5
	bl FUN_ov126_02138654
	cmp r0, #0
	ldrneb r6, [r5, #0x13]
	ldrsb r0, [r5, #0xd]
	ldreqb r6, [r5, #0x12]
	bl FUN_ov16_020f07a8
	add r7, sp, #0x18
	mov r3, r0
	mov r0, r10
	mov r1, r4
	mov r2, r7
	str r6, [sp]
	bl FUN_ov126_02136a34
	cmp r6, #2
	bne _0213B414
	mov r3, #0
	str r3, [sp]
	mov r2, #0x1e
	mov r0, r10
	mov r1, r4
	str r3, [sp, #4]
	mov r4, #0xa
	sub r3, r2, #0x1f
	str r4, [sp, #8]
_0213B40C:
	bl FUN_ov132_0213dfd4
	b _0213B748
_0213B414:
	mov r2, #0x20
	str r7, [sp]
	mov r7, #0
	str r7, [sp, #4]
	mov r0, r10
	mov r1, r4
	sub r3, r2, #0x21
	str r7, [sp, #8]
	bl FUN_ov132_0213dfd4
	mov r0, r4
	bl FUN_ov16_020f07d0
	cmp r0, #0
	bne _0213B474
	mov r1, #1
	cmp r6, #3
	mov r0, #3
	ldreq r1, [r4, #0x84]
	moveq r0, #7
	mov r2, #2
	streqb r0, [r1, #0x1a]
	streqb r2, [r5, #0xe]
	ldrne r2, [r4, #0x84]
	strneb r1, [r2, #0x1a]
	b _0213B494
_0213B474:
	mov r0, #2
	cmp r6, #1
	ldr r1, [r4, #0x84]
	moveq r0, #5
	mov r2, #3
	streqb r0, [r1, #0x1a]
	streqb r2, [r5, #0xe]
	strneb r2, [r1, #0x1a]
_0213B494:
	strneb r0, [r5, #0xe]
	b _0213B724
_0213B49C:
	ldrb r1, [r8, #0x58]
	mov r0, r10
	bl FUN_ov126_0212d534
	cmp r0, #0
	beq _0213B4D4
	strb r7, [r5, #0xe]
	str r6, [sp]
	mov r2, #0x1f
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r4
	sub r3, r2, #0x20
	str r6, [sp, #8]
	b _0213B40C
_0213B4D4:
	mov r0, r4
	bl FUN_02040b4c
	cmp r0, #0
	bne _0213B748
	ldr r2, _0213B88C ; =0x0209A2C0
	add r3, sp, #0x18
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0214d0b8
	cmp r0, #0
	beq _0213B748
	ldr r1, [r4, #0x84]
	ldr r0, [sp, #0x18]
	ldr r1, [r1]
	subs r11, r1, r0
	ldr r1, [r4, #0x84]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #4]
	rsbmi r11, r11, #0
	subs r7, r1, r0
	ldrsh r1, [r5, #0xa]
	ldr r0, _0213B890 ; =0x0209BA20
	rsbmi r7, r7, #0
	bl FUN_0204a2c4
	ldrb r1, [r5, #0xf]
	mov r6, r0
	tst r1, #0x30
	beq _0213B5C4
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #0x84]
	ldr r1, [r1, #4]
	str r1, [sp, #0x10]
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r2, [sp, #0x10]
	mov r0, r10
	bl FUN_ov132_02147208
	cmp r0, #0
	bne _0213B5C4
	mov r6, #0
	str r6, [sp]
	mov r2, #0x31
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r4
	sub r3, r2, #0x32
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
	mov r0, r4
	bl FUN_ov16_020f07d0
	cmp r0, #0
	mov r0, r4
	bne _0213B5B4
	mov r1, r6
	mov r2, r6
	b _0213B5BC
_0213B5B4:
	mov r2, r6
	mov r1, #4
_0213B5BC:
	bl FUN_0206daf8
	b _0213B71C
_0213B5C4:
	cmp r6, #0
	beq _0213B618
	ldrb r0, [r6]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _0213B5FC
	ldrb r0, [r6]
	cmp r0, #7
	movne r2, #0
_0213B5FC:
	cmp r2, #0
	bne _0213B610
	ldrb r0, [r6]
	cmp r0, #8
	movne r1, #0
_0213B610:
	cmp r1, #0
	bne _0213B6CC
_0213B618:
	ldr r1, [r4, #0x84]
	add r2, sp, #0x18
	mov r0, r10
	bl FUN_01ffba50
	cmp r0, #0x10000
	ble _0213B6CC
	cmp r11, r7, lsl #1
	mov r6, #1
	mov r7, #0
	ble _0213B6CC
	str r7, [sp]
	mov r2, #0x1d
	str r7, [sp, #4]
	mov r0, r10
	mov r1, r4
	sub r3, r2, #0x1e
	str r7, [sp, #8]
	bl FUN_ov132_0213dfd4
	mov r0, r4
	bl FUN_ov16_020f07d0
	cmp r0, #0
	bne _0213B69C
	ldr r2, [r4, #0x84]
	ldr r0, [sp, #0x18]
	ldr r1, [r2]
	cmp r1, r0
	mov r0, #3
	movgt r0, #7
	strgtb r0, [r2, #0x1a]
	movgt r0, #2
	strgtb r0, [r5, #0xe]
	strleb r6, [r2, #0x1a]
	b _0213B6C4
_0213B69C:
	ldr r3, [r4, #0x84]
	ldr r1, [sp, #0x18]
	ldr r2, [r3]
	mov r0, #2
	cmp r2, r1
	movgt r0, #5
	mov r1, #3
	strgtb r0, [r3, #0x1a]
	strgtb r1, [r5, #0xe]
	strleb r1, [r3, #0x1a]
_0213B6C4:
	strleb r0, [r5, #0xe]
	b _0213B724
_0213B6CC:
	mov r6, #0
	str r6, [sp]
	mov r2, #0x1e
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r4
	sub r3, r2, #0x1f
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
	mov r0, r4
	bl FUN_ov16_020f07d0
	cmp r0, #0
	mov r0, r4
	bne _0213B710
	mov r1, r6
	mov r2, r6
	b _0213B718
_0213B710:
	mov r2, r6
	mov r1, #4
_0213B718:
	bl FUN_0206daf8
_0213B71C:
	mov r0, #1
	strb r0, [r5, #0xe]
_0213B724:
	ldr r0, [r4, #0x84]
	mov r6, #0
	ldrb r3, [r0, #0x1a]
	ldrb r2, [r0, #0x1d]
	ldr r0, _0213B894 ; =0x02099F14
	mov r1, r4
	str r6, [sp]
	ldr r0, [r0]
	bl FUN_ov1_020e3c14
_0213B748:
	mov r0, r9
	bl FUN_0206d5f0
	cmp r0, #0
	mov r1, #1
	movne r1, #0
	mov r0, r10
	bl FUN_ov132_02143cd0
	mov r4, r0
	mov r0, r9
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _0213B890 ; =0x0209BA20
	bl FUN_020724dc
	ldr r1, _0213B898 ; =0x020A0640
	mov r6, r0
	ldrb r0, [r1, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _0213B800
	cmp r0, #3
	blo _0213B7A8
	cmp r0, #5
	movls r0, #2
	bls _0213B800
_0213B7A8:
	ldr r0, _0213B898 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #6
	blo _0213B7C4
	cmp r0, #8
	movls r0, #3
	bls _0213B800
_0213B7C4:
	ldr r0, _0213B898 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #9
	blo _0213B7E0
	cmp r0, #0xb
	movls r0, #4
	bls _0213B800
_0213B7E0:
	ldr r0, _0213B898 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	blo _0213B7FC
	cmp r0, #0xe
	movls r0, #5
	bls _0213B800
_0213B7FC:
	mvn r0, #0
_0213B800:
	cmp r0, #5
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xf]
	tst r0, #0x10
	beq _0213B86C
	mov r5, #0xc8
	mov r0, r10
	mov r1, r4
	mov r3, r5
	add r2, r8, #0x18
	bl FUN_ov132_02140b20
	cmp r0, #0
	bne _0213B858
	mov r0, r10
	mov r1, r4
	mov r3, r5
	add r2, r8, #0x20
	bl FUN_ov132_02140b20
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B858:
	ldrb r0, [r6, #0xb]
	add sp, sp, #0x20
	add r0, r0, #1
	strb r0, [r6, #0xb]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B86C:
	ldrb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213B880: .word unk_0209A114
_0213B884: .word 0x0000191F
_0213B888: .word 0x00005044
_0213B88C: .word unk_0209A2C0
_0213B890: .word unk_0209BA20
_0213B894: .word unk_02099F14
_0213B898: .word unk_020A0640
	arm_func_end FUN_ov132_0213af10

	arm_func_start FUN_ov132_0213b89c
FUN_ov132_0213b89c: ; 0x0213B89C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r2
	ldr r2, [r8, #0x88]
	mov r9, r1
	ldrb r5, [r2, #0x84]
	ldrb r0, [r2, #0x85]
	add r1, r2, #0x34
	mov r7, r3
	cmp r5, r0
	add r6, r1, r5, lsl #3
	ldr r1, [r8, #0x84]
	bge _0213B934
	add r4, sp, #0
_0213B8D4:
	ldmia r1, {r3, r12}
	ldr r10, [r6, #4]
	ldr lr, [r6]
	mov r0, r9
	mov r1, r4
	mov r2, r7
	str r3, [sp]
	str r12, [sp, #4]
	str lr, [sp, #8]
	str r10, [sp, #0xc]
	bl FUN_0203fdf0
	cmp r0, #0
	ldrne r1, [sp, #0x30]
	addne sp, sp, #0x10
	movne r0, #1
	strne r5, [r1]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x88]
	mov r1, r6
	ldrb r0, [r0, #0x85]
	add r5, r5, #1
	add r6, r6, #8
	cmp r5, r0
	blt _0213B8D4
_0213B934:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov132_0213b89c

	arm_func_start FUN_ov132_0213b940
FUN_ov132_0213b940: ; 0x0213B940
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrh r0, [sp, #0x20]
	ldr r5, _0213B9E4 ; =FX_SinCosTable_
	ldr r4, [sp, #0x28]
	mov r0, r0, asr #4
	mov r6, r0, lsl #1
	add r0, r6, #1
	mov r6, r6, lsl #1
	mov r0, r0, lsl #1
	ldrsh r8, [r5, r6]
	ldrsh lr, [r5, r0]
	ldr r12, [sp, #0x24]
	smull r6, r5, r4, r8
	smull r0, r7, r12, lr
	adds r9, r0, #0x800
	smull r0, r8, r12, r8
	adc r7, r7, #0
	adds r0, r0, #0x800
	mov r9, r9, lsr #0xc
	orr r9, r9, r7, lsl #20
	add r12, r2, r9
	smull r7, lr, r4, lr
	adc r9, r8, #0
	adds r8, r7, #0x800
	adc r7, lr, #0
	adds r4, r6, #0x800
	mov r6, r0, lsr #0xc
	mov r0, r8, lsr #0xc
	orr r6, r6, r9, lsl #20
	orr r0, r0, r7, lsl #20
	add r7, r3, r6
	add r6, r2, r0
	adc r0, r5, #0
	mov r2, r4, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r3, r2
	str r12, [r1]
	str r7, [r1, #4]
	str r6, [r1, #8]
	str r0, [r1, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213B9E4: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0213b940

	arm_func_start FUN_ov132_0213b9e8
FUN_ov132_0213b9e8: ; 0x0213B9E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r2, _0213BAB4 ; =0x0209A2C0
	mov r6, r0
	ldrb r0, [r2, #0x5b]
	mov r4, #0
	mov r5, r1
	tst r0, #1
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0213BAB4 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0213BAB4 ; =0x0209A2C0
	mov r1, #0x400000
	ldrh r2, [r0, #0x52]
	add r7, sp, #0x10
	stmia sp, {r2, r4}
	str r1, [sp, #8]
	ldmia r0, {r2, r3}
	mov r0, r6
	mov r1, r7
	bl FUN_ov132_0213b940
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov132_0214eecc
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r12, sp, #0xc
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov132_0213b89c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213BAB4: .word unk_0209A2C0
	arm_func_end FUN_ov132_0213b9e8

	arm_func_start FUN_ov132_0213bab8
FUN_ov132_0213bab8: ; 0x0213BAB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	ldr r4, _0213BD6C ; =0x0209A2C0
	mvn r3, #0
	str r3, [sp, #0x14]
	ldrb r3, [r4, #0x5b]
	mov r9, r0
	ldr r0, [sp, #0x14]
	tst r3, #1
	sub r7, r0, #0x80000000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	str r1, [sp, #0xc]
	mov r8, r2
	addne sp, sp, #0x44
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0213BD70 ; =0x0209A2D8
	bl FUN_02040a80
	cmp r0, #0
	addne sp, sp, #0x44
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, sp, #0x24
	ldr r1, _0213BD6C ; =0x0209A2C0
	mov r0, r9
	mov r2, r4
	bl FUN_ov132_02140ec0
	ldr r1, _0213BD74 ; =0x0209A2E0
	mov r2, r4
	mov r0, r9
	bl FUN_01ffba50
	mov r11, r0
	ldr r0, _0213BD6C ; =0x0209A2C0
	mov r6, #0
	ldrh r1, [r0, #0x52]
	mov r0, #0x400000
	ldr r3, _0213BD6C ; =0x0209A2C0
	stmia sp, {r1, r6}
	str r0, [sp, #8]
	ldr r1, _0213BD6C ; =0x0209A2C0
	ldr r3, [r3, #4]
	ldr r2, [r1]
	mov r0, r9
	add r1, sp, #0x34
	bl FUN_ov132_0213b940
	add r4, sp, #0x1c
	b _0213BCA8
_0213BB7C:
	ldr r1, [sp, #0xc]
	mov r0, r9
	mov r2, r6
	bl FUN_ov126_0213938c
	movs r5, r0
	ldrnesh r1, [r5, #0x94]
	cmpne r8, r1
	beq _0213BCA4
	bl FUN_02040b4c
	cmp r0, #0
	beq _0213BCA4
	mov r0, r9
	mov r1, r5
	bl FUN_ov126_02139878
	cmp r0, #0
	bne _0213BCA4
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, r9
	add r1, sp, #0x34
	mov r2, r5
	mov r3, r4
	bl FUN_ov132_0213b89c
	cmp r0, #0
	beq _0213BCA4
	ldr r1, _0213BD74 ; =0x0209A2E0
	mov r0, r9
	mov r2, r4
	bl FUN_01ffba50
	cmp r0, r11
	blt _0213BCA4
	ldr r1, _0213BD6C ; =0x0209A2C0
	ldr r1, [r1, #0x38]
	bl FX_Div
	ldr r1, _0213BD6C ; =0x0209A2C0
	smull r12, r10, r0, r0
	ldr r3, [r1, #0x3c]
	smull r2, r1, r3, r0
	adds r3, r12, #0x800
	adc r0, r10, #0
	mov r10, r3, lsr #0xc
	orr r10, r10, r0, lsl #20
	ldr r0, _0213BD78 ; =0x00009CCD
	mov r3, r10, asr #0x1f
	umull lr, r12, r10, r0
	ldr r0, _0213BD78 ; =0x00009CCD
	mla r12, r3, r0, r12
	adds r3, lr, #0x800
	adc r0, r12, #0
	adds r2, r2, #0x800
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	add r0, r3, r3, lsr #31
	orr r2, r2, r1, lsl #20
	sub r0, r2, r0, asr #1
	cmp r0, #0x10000
	bgt _0213BCA4
	ldr r1, _0213BD70 ; =0x0209A2D8
	mov r0, r9
	mov r2, r4
	bl FUN_01ffba50
	cmp r0, r7
	bge _0213BCA4
	ldrsh r1, [r5, #0x94]
	mov r7, r0
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x2c]
	str r0, [sp, #0x10]
_0213BCA4:
	add r6, r6, #1
_0213BCA8:
	cmp r6, #0xb
	blt _0213BB7C
	ldr r0, [sp, #0x14]
	mov r5, #0
	cmp r0, #0
	addlt sp, sp, #0x44
	movlt r0, r5
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0213BD60
	mov r0, r9
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	bne _0213BD00
	mov r0, r9
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x44
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213BD00:
	add r0, sp, #0x2c
	stmia sp, {r0, r5}
	mov r2, #0x12
	mov r0, r9
	mov r1, r4
	str r5, [sp, #8]
	sub r3, r2, #0x13
	bl FUN_ov132_0213dfd4
	ldr r1, [r4, #0x88]
	ldr r0, [sp, #0x10]
	ldr r5, _0213BD6C ; =0x0209A2C0
	strh r0, [r1, #0x86]
	ldr r1, [sp, #0x30]
	mov r0, r9
	str r1, [sp]
	ldr r3, [sp, #0x2c]
	ldmia r5, {r1, r2}
	bl FUN_01ffba30
	mov r2, r0
	mov r0, r9
	mov r1, r5
	bl FUN_ov132_021441d4
	ldr r1, [r4, #0x88]
	strh r0, [r1, #0x28]
_0213BD60:
	mov r0, #1
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213BD6C: .word unk_0209A2C0
_0213BD70: .word unk_0209A2D8
_0213BD74: .word unk_0209A2E0
_0213BD78: .word 0x00009CCD
	arm_func_end FUN_ov132_0213bab8

	arm_func_start FUN_ov132_0213bd7c
FUN_ov132_0213bd7c: ; 0x0213BD7C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_02040aa8
	mov r12, #0
	cmp r0, #0
	str r12, [sp]
	beq _0213BDBC
	mov r2, #0x19
	str r12, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x1a
	b _0213BDD0
_0213BDBC:
	mov r2, #0xa
	str r12, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0xb
_0213BDD0:
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	ldr r0, [r4, #0x88]
	mvn r1, #0
	strh r1, [r0, #0x86]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov132_0213bd7c

	arm_func_start FUN_ov132_0213bdec
FUN_ov132_0213bdec: ; 0x0213BDEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mvn r4, #0
_0213BDF8:
	mov r0, r5
	bl FUN_ov16_020efa80
	cmp r0, #0
	ldrne r0, [r0, #0x88]
	add r5, r5, #1
	strneh r4, [r0, #0x86]
	cmp r5, #0x20
	blt _0213BDF8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_0213bdec

	arm_func_start FUN_ov132_0213be1c
FUN_ov132_0213be1c: ; 0x0213BE1C
	mov r3, #0
	mov r2, #0x80000000
_0213BE24:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x280]
	cmp r3, #2
	blt _0213BE24
	bx lr
	arm_func_end FUN_ov132_0213be1c

	arm_func_start FUN_ov132_0213be3c
FUN_ov132_0213be3c: ; 0x0213BE3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x3000
_0213BE48:
	mov r0, r5
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0213BE60
	mov r1, r4
	bl FUN_0206dadc
_0213BE60:
	add r5, r5, #1
	cmp r5, #0x20
	blt _0213BE48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_0213be3c

	arm_func_start FUN_ov132_0213be70
FUN_ov132_0213be70: ; 0x0213BE70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl FUN_ov132_02144f4c
	cmp r0, #0
	bne _0213BF28
	mov r8, #0
	mov r6, r8
	mov r5, #2
	mvn r4, #0
	mov r11, #1
	mov r7, #0x10
	b _0213BF20
_0213BEA4:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r9, r0
	beq _0213BF1C
	bl FUN_0206d688
	cmp r0, #0
	beq _0213BF1C
	mov r0, r9
	mov r1, r7
	bl FUN_0206d620
	mov r0, r9
	bl FUN_02040b4c
	cmp r0, #0
	bne _0213BF1C
	mov r0, r9
	bl FUN_0206da78
	cmp r0, #2
	beq _0213BF0C
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r9
	mov r2, r5
	mov r3, r4
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
_0213BF0C:
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_ov132_0215215c
_0213BF1C:
	add r8, r8, #1
_0213BF20:
	cmp r8, #0x20
	blt _0213BEA4
_0213BF28:
	ldr r4, _0213BFF8 ; =0x0209A2C0
	ldr r0, [r4, #0x4c]
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0213BF68
	mov r0, r4
	bl FUN_02040a80
	cmp r0, #0
	bne _0213BF68
	ldrb r2, [r4, #0x5e]
	mov r0, r10
	mov r1, r5
	str r2, [sp]
	ldrb r3, [r4, #0x58]
	mov r2, r4
	bl FUN_ov132_02150334
_0213BF68:
	mov r5, #0
	add r4, r10, #0xa4
	b _0213BF80
_0213BF74:
	add r0, r4, r5, lsl #3
	bl FUN_020404cc
	add r5, r5, #1
_0213BF80:
	cmp r5, #2
	blt _0213BF74
	mov r4, #0
	b _0213BFA4
_0213BF90:
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_02144808
	bl FUN_020404cc
	add r4, r4, #1
_0213BFA4:
	cmp r4, #5
	blt _0213BF90
	ldr r1, _0213BFF8 ; =0x0209A2C0
	mov r0, r10
	ldrb r1, [r1, #0x5e]
	bl FUN_ov132_0214532c
	cmp r0, #0
	bne _0213BFE8
	bl FUN_ov16_020f066c
	cmp r0, #0
	beq _0213BFE0
	ldr r0, _0213BFFC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _0213BFE8
_0213BFE0:
	mov r0, #1
	str r0, [r10, #0x1e8]
_0213BFE8:
	mov r0, r10
	bl FUN_ov132_02145354
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213BFF8: .word unk_0209A2C0
_0213BFFC: .word unk_0209AEC0
	arm_func_end FUN_ov132_0213be70

	arm_func_start FUN_ov132_0213c000
FUN_ov132_0213c000: ; 0x0213C000
	stmfd sp!, {r4, lr}
	ldrsh lr, [r1, #0x94]
	ldrsh r12, [r2, #0x94]
	mov r4, r3
	cmp lr, r12
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, [r2, #0x84]
	ldr r12, [r1, #0x84]
	ldr r2, [r3]
	ldr r1, [r12]
	ldr r3, [r3, #4]
	subs r1, r1, r2
	ldr r2, [r12, #4]
	rsbmi r1, r1, #0
	subs r2, r2, r3
	rsbmi r2, r2, #0
	cmp r1, #0xc000
	cmple r2, #0xc000
	movgt r0, #0
	ldmgtfd sp!, {r4, pc}
	bl FUN_01ffba80
	cmp r0, #0xc000
	movge r0, #0
	ldmgefd sp!, {r4, pc}
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_0213c000

	arm_func_start FUN_ov132_0213c074
FUN_ov132_0213c074: ; 0x0213C074
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r4, r5
_0213C090:
	mov r0, r7
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r2, r0
	beq _0213C0C0
	mov r0, r7
	mov r1, r6
	mov r3, r4
	bl FUN_ov132_0213c000
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0213C0C0:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0213C090
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0213c074

	arm_func_start FUN_ov132_0213c0d4
FUN_ov132_0213c0d4: ; 0x0213C0D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
_0213C0EC:
	mov r0, r8
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r7
	beq _0213C144
	ldr r2, [r0, #0x84]
	ldr r0, [r2]
	subs r1, r0, r6
	ldr r0, [r2, #4]
	rsbmi r1, r1, #0
	subs r2, r0, r5
	rsbmi r2, r2, #0
	cmp r1, #0xc000
	cmple r2, #0xc000
	bgt _0213C144
	mov r0, r8
	bl FUN_01ffba80
	cmp r0, #0xc000
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
_0213C144:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0213C0EC
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0213c0d4

	arm_func_start FUN_ov132_0213c158
FUN_ov132_0213c158: ; 0x0213C158
	sub r2, r1, #4
	cmp r2, #4
	mov r0, #0
	bxhi lr
	mov r1, #1
	mov r2, r1, lsl r2
	tst r2, #0x13
	movne r0, r1
	bx lr
	arm_func_end FUN_ov132_0213c158

	arm_func_start FUN_ov132_0213c17c
FUN_ov132_0213c17c: ; 0x0213C17C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r6, r7
	mov r5, r7
	ldr r4, _0213C1C8 ; =0x02099F14
	b _0213C1BC
_0213C194:
	mov r0, r6
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0213C1B8
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	bl FUN_ov1_020e3b54
	add r7, r7, #1
_0213C1B8:
	add r6, r6, #1
_0213C1BC:
	cmp r6, #0x16
	blt _0213C194
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213C1C8: .word unk_02099F14
	arm_func_end FUN_ov132_0213c17c

	arm_func_start FUN_ov132_0213c1cc
FUN_ov132_0213c1cc: ; 0x0213C1CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r4, r2
	bl FUN_ov126_02138cc8
	mov r5, r0
	mov r0, r6
	bl FUN_02040b4c
	cmp r0, #0
	beq _0213C21C
	ldr r1, [r6, #0x88]
	mov r0, #1
	ldrb r2, [r1, #0x84]
	add r3, r1, #0x34
	ldr r1, [r3, r2, lsl #3]
	add r2, r3, r2, lsl #3
	str r1, [r4]
	ldr r1, [r2, #4]
	str r1, [r4, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213C21C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov132_0214cbac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0213c1cc

	arm_func_start FUN_ov132_0213c234
FUN_ov132_0213c234: ; 0x0213C234
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r5, #0
	mov r8, r0
	mov r0, r1
	mov r1, r5
	mov r7, r2
	mov r6, r3
	bl FUN_ov16_020efa9c
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r12, #1
	str r12, [sp]
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	str r12, [sp, #4]
	bl FUN_ov132_0213c29c
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_01ff9384
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0213c234

	arm_func_start FUN_ov132_0213c29c
FUN_ov132_0213c29c: ; 0x0213C29C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r1
	mov r5, r2
	mov r4, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	beq _0213C3C0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0213C2F8
	ldr r0, [r6, #0x90]
	tst r0, #0x20
	beq _0213C2F8
	ldr r0, _0213C3F0 ; =0x0209BA20
	mov r1, #0x38
	bl FUN_0204a2c4
	mov r1, r0
	mov r0, #0x64
	mul r0, r5, r0
	ldrb r1, [r1, #6]
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_0213C2F8:
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _0213C384
	mov r0, r6
	bl FUN_02040aa8
	cmp r0, #0
	beq _0213C384
	ldr r8, _0213C3F4 ; =0x0209A2C0
	mvn r0, #0
	str r0, [r8, #0x48]
	ldrsh r2, [r6, #0x94]
	mov r1, #0x80000000
	mov r0, r8
	str r2, [r8, #0x4c]
	str r1, [r8, #0x18]
	str r1, [r8, #0x1c]
	ldr r2, [r8]
	mov r1, #1
	str r2, [r8, #0xc]
	ldr r2, [r8, #4]
	str r2, [r8, #0x10]
	ldr r2, [r8, #8]
	str r2, [r8, #0x14]
	bl FUN_ov126_0212fbe0
	mov r7, #0
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_0212fc1c
	str r7, [r8, #0x34]
	str r7, [r8, #0x38]
	str r7, [r8, #0x3c]
	str r7, [r8, #0x30]
	str r7, [r8, #0x40]
	strb r7, [r8, #0x5c]
	strh r7, [r8, #0x54]
_0213C384:
	ldr r1, [r6, #0x88]
	ldrh r0, [r1, #0x1e]
	cmp r5, r0
	strhih r5, [r1, #0x1e]
	ldr r1, [r6, #0x88]
	ldrsh r0, [r1, #0x26]
	cmp r5, r0
	strgth r5, [r1, #0x26]
	cmp r4, #0
	mov r0, r6
	mov r1, #0x100
	beq _0213C3BC
	bl FUN_0206dac4
	b _0213C3E0
_0213C3BC:
	b _0213C3DC
_0213C3C0:
	ldr r0, [r6, #0x88]
	mov r3, #0
	strh r3, [r0, #0x1e]
	ldr r2, [r6, #0x88]
	mov r0, r6
	mov r1, #0x100
	strh r3, [r2, #0x26]
_0213C3DC:
	bl FUN_0206dadc
_0213C3E0:
	ldr r1, [r6, #0x88]
	mov r0, #0
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0213C3F0: .word unk_0209BA20
_0213C3F4: .word unk_0209A2C0
	arm_func_end FUN_ov132_0213c29c

	arm_func_start FUN_ov132_0213c3f8
FUN_ov132_0213c3f8: ; 0x0213C3F8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, #0
	beq _0213C42C
	ldr r3, [r1, #0x88]
	ldrsh r0, [r3, #0x26]
	cmp r2, r0
	mov r0, r1
	strgth r2, [r3, #0x26]
	mov r1, #0x100
	bl FUN_0206dac4
	ldmfd sp!, {r3, pc}
_0213C42C:
	ldr r2, [r1, #0x88]
	mov r0, r1
	mov r3, #0
	mov r1, #0x100
	strh r3, [r2, #0x26]
	bl FUN_0206dadc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_0213c3f8

	arm_func_start FUN_ov132_0213c448
FUN_ov132_0213c448: ; 0x0213C448
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	beq _0213C478
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0213C478
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02138ec0
	cmp r0, #0
	bne _0213C480
_0213C478:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0213C480:
	ldrb r0, [r5, #0x367]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_02040b4c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_0213c448

	arm_func_start FUN_ov132_0213c4a8
FUN_ov132_0213c4a8: ; 0x0213C4A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r7, [sp, #0x38]
	movs r9, r1
	mov r10, r0
	mov r11, #0
	mov r8, r2
	mov r6, r3
	addeq sp, sp, #0x14
	moveq r0, r11
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r8, #0x48]
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138cc8
	mov r2, #1
	mov r0, r10
	mov r1, r8
	str r2, [sp, #0xc]
	bl FUN_ov126_0212f4f8
	mov r5, r0
	ldrb r1, [r8, #0x58]
	mov r0, r10
	str r11, [sp, #0x10]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	cmpne r5, #0
	addne sp, sp, #0x14
	movne r0, r11
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r10, #0x328]
	cmp r0, #0
	bne _0213C544
	mov r0, r10
	bl FUN_01ff9578
	cmp r0, #0
	beq _0213C550
_0213C544:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213C550:
	ldrsh r0, [r9, #0x94]
	ldr r1, [r8, #0x4c]
	cmp r1, r0
	bne _0213C594
	ldrb r0, [r8, #0x5e]
	cmp r0, #1
	beq _0213C588
	ldrb r1, [r8, #0x58]
	mov r0, r10
	bl FUN_ov126_0212d500
	cmp r0, #0
	bne _0213C594
	cmp r5, #0
	beq _0213C594
_0213C588:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213C594:
	mov r0, r9
	bl FUN_02040b4c
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #0
	beq _0213C5EC
	mov r0, r4
	mov r1, r9
	bl FUN_ov16_020f0728
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0213c448
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213C5EC:
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138e80
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r11, sp, #0x10
	mov r3, r6
	mov r0, r10
	mov r1, r8
	mov r2, r9
	str r11, [sp]
	mov r6, #1
	str r6, [sp, #4]
	bl FUN_ov132_0214c74c
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #0
	ldrne r0, [sp, #0x10]
	cmpne r0, #0x28000
	addlt sp, sp, #0x14
	movlt r0, r6
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206d5f0
	str r0, [sp, #8]
	mov r6, #0
	mvn r11, #0x80000000
_0213C668:
	ldr r1, [sp, #8]
	mov r0, r10
	mov r2, r6
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _0213C754
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov126_02139a30
	cmp r0, #0
	bne _0213C754
	mov r0, r4
	bl FUN_0206d9f8
	cmp r0, #0
	bne _0213C754
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138cc8
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_0214079c
	cmp r0, #0
	beq _0213C754
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0213C6FC
	cmp r5, #0
	ldr r1, [r4, #0x84]
	mov r0, r10
	beq _0213C6F4
	add r2, r8, #0x18
	b _0213C71C
_0213C6F4:
	mov r2, r8
	b _0213C71C
_0213C6FC:
	ldr r0, [r4, #0x88]
	bl FUN_02040a80
	cmp r0, #0
	movne r0, r11
	bne _0213C720
	ldr r1, [r4, #0x84]
	ldr r2, [r4, #0x88]
	mov r0, r10
_0213C71C:
	bl FUN_01ffba50
_0213C720:
	ldr r1, [sp, #0x10]
	cmp r0, r1
	movlt r0, #0
	strlt r0, [sp, #0xc]
	blt _0213C754
	cmp r0, #0x28000
	ble _0213C754
	cmp r7, #0
	beq _0213C754
	mov r0, r10
	mov r1, r4
	mov r2, #1
	bl FUN_ov132_0215215c
_0213C754:
	add r6, r6, #1
	cmp r6, #0xb
	blt _0213C668
	ldr r0, [sp, #0xc]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0213c4a8

	arm_func_start FUN_ov132_0213c76c
FUN_ov132_0213c76c: ; 0x0213C76C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r4, #1
	add r3, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r8, r2
	str r4, [sp]
	bl FUN_ov132_0213c4a8
	movs r4, r0
	mov r0, r7
	mov r1, r6
	beq _0213C830
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _0213C820
	mov r5, #0x11
	ldr r0, [r8, #0x4c]
	sub r1, r5, #0x12
	cmp r0, r1
	ble _0213C7D4
	ldrsh r1, [r6, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	movne r5, #0x10
	bne _0213C7F8
_0213C7D4:
	ldr r0, [r6, #0x88]
	ldrb r0, [r0, #0x89]
	cmp r0, #8
	bge _0213C7F4
	mov r0, r6
	bl FUN_0206da78
	cmp r0, #0x33
	bne _0213C7F8
_0213C7F4:
	mov r5, #0x33
_0213C7F8:
	mov r12, #0
	add r0, sp, #0xc
	stmia sp, {r0, r12}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	sub r3, r12, #1
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	b _0213C838
_0213C820:
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_0213df14
	b _0213C838
_0213C830:
	mov r2, #0
	bl FUN_ov132_0215215c
_0213C838:
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0213c76c

	arm_func_start FUN_ov132_0213c844
FUN_ov132_0213c844: ; 0x0213C844
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r8, r1
	mov r9, r0
	mov r0, r8
	bl FUN_0206db3c
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r8
	bl FUN_ov126_02138cc8
	mov r5, r0
	ldr r0, _0213CA54 ; =0x0209BA20
	mov r1, r8
	ldr r6, [r8, #0x88]
	bl FUN_0204fb20
	mov r4, #1
	mov r0, r8
	mov r1, r4
	mov r7, #0
	bl FUN_0206dac4
	mov r0, r8
	bl FUN_0206db6c
	cmp r0, #0
	beq _0213C910
	mov r0, r8
	bl FUN_0206d9f8
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl FUN_02040aa8
	cmp r0, #0
	mov r0, r9
	mov r1, r8
	bne _0213C8E0
	bl FUN_ov132_0213ca8c
	b _0213C8E4
_0213C8E0:
	bl FUN_ov132_0213cad8
_0213C8E4:
	ldr r0, [r8, #0x84]
	mov r4, #0
	ldrb r3, [r0, #0x1a]
	ldrb r2, [r0, #0x1d]
	ldr r0, _0213CA58 ; =0x02099F14
	mov r1, r8
	str r4, [sp]
	ldr r0, [r0]
	bl FUN_ov1_020e3c14
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213C910:
	ldrh r0, [r5, #0x12]
	tst r0, #8
	bne _0213C958
	ldr r1, [r8, #0x88]
	mov r0, r8
	strb r4, [r1, #0x2f]
	mov r1, #2
	bl FUN_0206dac4
	ldr r1, [r8, #0x84]
	ldr r0, _0213CA58 ; =0x02099F14
	ldrb r3, [r1, #0x1a]
	ldrb r2, [r1, #0x1d]
	mov r1, r8
	str r7, [sp]
	ldr r0, [r0]
	bl FUN_ov1_020e3c14
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213C958:
	ldrb r0, [r5, #0xd]
	cmp r0, #4
	beq _0213C970
	cmp r0, #5
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213C970:
	mov r0, r8
	bl FUN_02040aa8
	cmp r0, #0
	ldrne r0, [r6, #8]
	cmpne r0, #0x80000000
	ldrne r0, [r6, #0xc]
	cmpne r0, #0x80000000
	beq _0213CA18
	ldrh r0, [r5, #0x12]
	tst r0, #2
	beq _0213C9AC
	mov r0, r9
	bl FUN_ov132_02144780
	cmp r0, #0
	movne r7, #0x20
_0213C9AC:
	mov r0, r9
	bl FUN_ov132_02144780
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r4, #0
	ldr r1, [r6, #8]
	ldr r2, [r6, #0xc]
	mov r0, r9
	mov r3, r4
	bl FUN_ov126_0212c3bc
	add r0, r6, #8
	bl FUN_020404cc
	ldrh r0, [r5, #0x12]
	tst r0, #2
	beq _0213CA18
	mov r0, r9
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _0213CA18
	mov r0, r9
	mov r1, r4
	bl FUN_ov132_0214478c
	mov r0, r9
	bl FUN_ov132_0213be70
_0213CA18:
	mov r0, r8
	bl FUN_0206db54
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0x84]
	ldrb r0, [r0, #0x1d]
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	mov r1, #2
	bl FUN_0206dac4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213CA54: .word unk_0209BA20
_0213CA58: .word unk_02099F14
	arm_func_end FUN_ov132_0213c844

	arm_func_start FUN_ov132_0213ca5c
FUN_ov132_0213ca5c: ; 0x0213CA5C
	stmfd sp!, {r3, lr}
	ldr r0, _0213CA78 ; =0x0209A2C0
	ldmia r0, {r3, r12}
	sub r0, r12, r2
	sub r1, r3, r1
	bl FX_Atan2Idx
	ldmfd sp!, {r3, pc}
_0213CA78: .word unk_0209A2C0
	arm_func_end FUN_ov132_0213ca5c

	arm_func_start FUN_ov132_0213ca7c
FUN_ov132_0213ca7c: ; 0x0213CA7C
	stmfd sp!, {r3, lr}
	bl FUN_ov132_0213ca5c
	bl FUN_ov16_020efd3c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_0213ca7c

	arm_func_start FUN_ov132_0213ca8c
FUN_ov132_0213ca8c: ; 0x0213CA8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r2, [r5, #0x84]
	mov r6, r0
	ldmia r2, {r1, r2}
	bl FUN_ov132_0213ca5c
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_0213999c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #0x84]
	mov r0, r4
	strh r4, [r1, #0x18]
	bl FUN_ov16_020efd3c
	ldr r1, [r5, #0x84]
	strb r0, [r1, #0x1a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_0213ca8c

	arm_func_start FUN_ov132_0213cad8
FUN_ov132_0213cad8: ; 0x0213CAD8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #0x84]
	mov r6, r0
	mov r0, r5
	ldr r4, [r1]
	bl FUN_02040128
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov132_0213f59c
	ldr r1, [r5, #0x84]
	ldr r2, [r1, #4]
	ldr r1, [r1]
	sub r0, r0, r2
	sub r1, r4, r1
	bl FX_Atan2Idx
	ldr r1, [r5, #0x84]
	strh r0, [r1, #0x18]
	bl FUN_ov16_020efd3c
	ldr r1, [r5, #0x84]
	strb r0, [r1, #0x1a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_0213cad8

	arm_func_start FUN_ov132_0213cb34
FUN_ov132_0213cb34: ; 0x0213CB34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r7, [sp, #0x40]
	ldr r6, [sp, #0x38]
	mov r11, r0
	ldr r5, [sp, #0x3c]
	ldr r4, [sp, #0x34]
	mov r10, r1
	sub r0, r7, r6
	sub r1, r5, r4
	mov r9, r2
	mov r8, r3
	bl FX_Atan2Idx
	str r0, [sp, #4]
	mov r0, r11
	mov r1, r10
	bl FUN_ov126_02138cc8
	cmp r9, #0
	ldrne r1, [r10, #0x84]
	mov r4, r0
	ldrne r0, [r1]
	strne r0, [r9]
	ldrne r0, [r1, #4]
	mov r1, r10
	strne r0, [r9, #4]
	mov r0, r11
	bl FUN_ov132_021412ac
	ldr r1, [sp, #4]
	ldr r3, _0213CCC0 ; =FX_SinCosTable_
	mov r1, r1, asr #4
	mov r5, r1, lsl #1
	add r1, r5, #1
	mov r2, r1, lsl #1
	mov r1, r5, lsl #1
	mov r5, r0
	ldrsh r2, [r3, r2]
	ldrsh r0, [r3, r1]
	smull r1, r2, r5, r2
	adds r3, r1, #0x800
	smull r1, r0, r5, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r6, r3, lsr #0xc
	adc r0, r0, #0
	mov r7, r1, lsr #0xc
	cmp r8, #0
	orr r6, r6, r2, lsl #20
	orr r7, r7, r0, lsl #20
	beq _0213CC10
	ldrh r0, [r4, #0x12]
	tst r0, #0x80
	bne _0213CC10
	ldr r0, [sp, #4]
	bl FUN_ov16_020efd3c
	str r0, [r8]
_0213CC10:
	ldr r12, [sp, #0x40]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	mov r0, r11
	str r12, [sp]
	bl FUN_01ffba98
	cmp r5, r0
	blt _0213CC9C
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	str r1, [r9]
	str r0, [r9, #4]
	cmp r8, #0
	beq _0213CC84
	ldrh r0, [r4, #0x12]
	tst r0, #0x80
	bne _0213CC84
	mov r0, r10
	bl FUN_ov16_020f07d0
	cmp r0, #0
	ldr r1, [r10, #0x84]
	bne _0213CC74
	mov r0, #0xc000
	b _0213CC78
_0213CC74:
	mov r0, #0x4000
_0213CC78:
	strh r0, [r1, #0x18]
	bl FUN_ov16_020efd3c
	str r0, [r8]
_0213CC84:
	ldrh r0, [r4, #0x12]
	add sp, sp, #8
	tst r0, #0x10
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213CC9C:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r1, r1, r6
	add r0, r0, r7
	str r1, [r9]
	str r0, [r9, #4]
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213CCC0: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0213cb34

	arm_func_start FUN_ov132_0213ccc4
FUN_ov132_0213ccc4: ; 0x0213CCC4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r1
	ldr r4, [r10, #0x84]
	str r2, [sp, #8]
	ldr r2, [sp, #0x50]
	str r0, [sp, #4]
	str r3, [sp, #0xc]
	str r2, [sp, #0x50]
	ldmia r4, {r6, r7}
	bl FUN_ov126_02138cc8
	ldr r1, [r10, #0x88]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x50]
	ldrb r9, [r1, #0x84]
	cmp r0, #0
	strne r9, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	ldrne r2, [r10, #0x84]
	ldrne r1, [r2]
	strne r1, [r0]
	ldrne r1, [r2, #4]
	strne r1, [r0, #4]
	ldr r0, [r10, #0x88]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x1c]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #0x1c]
	mov r0, #0
	ldr r8, [sp, #0x1c]
	str r0, [sp, #0x14]
_0213CD48:
	ldr r1, [r10, #0x88]
	ldrsh r0, [r1, #0x86]
	cmp r9, r0
	addne r0, r1, r9, lsl #3
	ldmeqia r1, {r4, r5}
	ldrne r4, [r0, #0x34]
	ldrne r5, [r0, #0x38]
	cmp r4, r6
	cmpeq r5, r7
	ldreq r0, [r10, #0x84]
	ldreqh r0, [r0, #0x18]
	streq r0, [sp, #0x18]
	beq _0213CD8C
	sub r0, r5, r7
	sub r1, r4, r6
	bl FX_Atan2Idx
	str r0, [sp, #0x18]
_0213CD8C:
	ldr r0, [sp, #4]
	str r5, [sp]
	mov r1, r6
	mov r2, r7
	mov r3, r4
	bl FUN_01ffba98
	mov r11, r0
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x18]
	mov r1, r10
	mov r3, r8
	bl FUN_ov132_02141230
	cmp r0, #0
	ble _0213CDE8
	ldr r1, [sp, #0x20]
	sub r8, r8, r0
	ldrh r1, [r1, #0x12]
	tst r1, #0x200
	ldreq r1, [sp, #0x1c]
	subeq r0, r1, r0
	streq r0, [sp, #0x1c]
	moveq r0, #1
	streq r0, [sp, #0x14]
_0213CDE8:
	cmp r11, r8
	bgt _0213CE78
	ldr r1, [r10, #0x88]
	ldrsh r0, [r1, #0x86]
	cmp r9, r0
	bne _0213CE54
	ldr r0, [sp, #8]
	stmia r0, {r4, r5}
	ldr r0, [sp, #0x50]
	cmp r0, #0
	strne r9, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0213CE40
	ldr r0, [sp, #0x20]
	ldrh r0, [r0, #0x12]
	tst r0, #0x80
	bne _0213CE40
	ldr r0, [sp, #0x18]
	bl FUN_ov16_020efd3c
	ldr r1, [sp, #0xc]
	str r0, [r1]
_0213CE40:
	ldr r1, [r10, #0x88]
	mov r0, #0
	str r0, [r1, #0x14]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213CE54:
	cmp r8, r11
	ble _0213CE78
	ldrb r0, [r1, #0x85]
	add r9, r9, #1
	cmp r9, r0
	sublt r8, r8, r11
	movlt r6, r4
	movlt r7, r5
	blt _0213CD48
_0213CE78:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0213CE94
	ldr r0, [sp, #4]
	mov r1, r10
	bl FUN_ov132_02141468
	str r0, [sp, #0x1c]
_0213CE94:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	mov r1, r10
	bl FUN_ov132_0214126c
	ldr r0, [sp, #0x50]
	ldr r2, _0213D0EC ; =FX_SinCosTable_
	cmp r0, #0
	strne r9, [r0]
	ldr r0, [sp, #0x18]
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	mov r3, r1, lsl #1
	mov r1, r0, lsl #1
	ldrsh r3, [r2, r3]
	ldrsh r2, [r2, r1]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	smull r11, r3, r1, r3
	mov r12, r1
	smull r2, r1, r12, r2
	adds r12, r11, #0x800
	adc r11, r3, #0
	mov r3, r12, lsr #0xc
	adds r2, r2, #0x800
	orr r3, r3, r11, lsl #20
	ldrh r0, [r0, #0x12]
	adc r1, r1, #0
	mov r11, r2, lsr #0xc
	str r3, [sp, #0x10]
	tst r0, #0x80
	orr r11, r11, r1, lsl #20
	bne _0213CF50
	ldr r0, [sp, #0xc]
	ldr r1, [r10, #0x84]
	cmp r0, #0
	ldr r0, [sp, #0x18]
	strh r0, [r1, #0x18]
	beq _0213CF50
	ldr r0, [sp, #0x20]
	ldrh r0, [r0, #0x12]
	tst r0, #0x80
	bne _0213CF50
	ldr r0, [sp, #0x18]
	bl FUN_ov16_020efd3c
	ldr r1, [sp, #0xc]
	str r0, [r1]
_0213CF50:
	mov r0, r10
	bl FUN_02040148
	mov r1, r0
	ldr r0, [sp, #4]
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _0213D068
	ldr r0, [sp, #0x10]
	add r1, r7, r11
	add r0, r6, r0
	str r0, [sp, #0x24]
	mov r0, r10
	str r1, [sp, #0x28]
	bl FUN_02040128
	mov r1, r0
	ldr r0, [sp, #4]
	add r2, sp, #0x24
	bl FUN_ov132_02140b50
	cmp r0, #0
	beq _0213D068
	mov r0, r10
	bl FUN_02040128
	ldr r6, _0213D0F0 ; =0x0209A83C
	cmp r0, #0
	ldrne r6, _0213D0F4 ; =0x0209A82C
	ldr r5, [sp, #0x24]
	ldr r4, [r6]
	ldmib r6, {r1, r3}
	ldr r2, [sp, #0x28]
	ldr r0, [r6, #0xc]
	sub r7, r5, r4
	sub r3, r3, r5
	sub r1, r2, r1
	cmp r7, r3
	sub r0, r0, r2
	cmplt r7, r1
	cmplt r7, r0
	bge _0213CFFC
	sub r1, r4, #1
_0213CFEC:
	ldr r0, [sp, #8]
	str r1, [r0]
	ldr r1, [sp, #0x28]
	b _0213D058
_0213CFFC:
	cmp r3, r7
	cmplt r3, r1
	cmplt r3, r0
	bge _0213D018
	ldr r0, [r6, #8]
	add r1, r0, #1
	b _0213CFEC
_0213D018:
	cmp r1, r7
	cmplt r1, r3
	cmplt r1, r0
	bge _0213D040
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #8]
	str r1, [r0]
	ldr r0, [r6, #4]
	sub r1, r0, #1
	b _0213D054
_0213D040:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #8]
	str r1, [r0]
	ldr r0, [r6, #0xc]
	add r1, r0, #1
_0213D054:
	ldr r0, [sp, #8]
_0213D058:
	str r1, [r0, #4]
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D068:
	ldr r0, [sp, #4]
	mov r1, r6
	mov r2, r7
	mov r3, r4
	str r5, [sp]
	bl FUN_01ffba98
	cmp r8, r0
	blt _0213D0C8
	ldr r0, [sp, #8]
	mov r1, #0
	stmia r0, {r4, r5}
	ldr r0, [r10, #0x88]
	ldrb r0, [r0, #0x85]
	cmp r9, r0
	blt _0213D0B4
	ldr r0, [sp, #0x20]
	ldrh r0, [r0, #0x12]
	tst r0, #0x10
	moveq r1, #1
_0213D0B4:
	mov r0, #1
	cmp r1, #0
	add sp, sp, #0x2c
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D0C8:
	ldr r0, [sp, #0x10]
	add r1, r7, r11
	add r2, r6, r0
	ldr r0, [sp, #8]
	str r2, [r0]
	str r1, [r0, #4]
	mov r0, #0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D0EC: .word FX_SinCosTable_
_0213D0F0: .word unk_0209A83C
_0213D0F4: .word unk_0209A82C
	arm_func_end FUN_ov132_0213ccc4

	arm_func_start FUN_ov132_0213d0f8
FUN_ov132_0213d0f8: ; 0x0213D0F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r7, #0
	mov r5, r2
	mov r2, r7
	mov r8, r0
	mov r6, r1
	mov r4, r3
	bl FUN_ov132_02142870
	mov r11, r0
	mov r0, #0x7b
	umull r3, r2, r11, r0
	mov r1, r11, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r9, r3, lsr #0xc
	orr r9, r9, r1, lsl #20
	mov r0, r8
	mov r1, r6
	mov r10, #0x800
	bl FUN_ov126_02138cc8
	str r0, [sp, #4]
	ldr r2, [r6, #0x84]
	mov r0, r8
	ldr r1, [r6, #0x88]
	ldrh r8, [r2, #0x18]
	ldr r2, [r1, #0x10]
	mov r1, r6
	sub r2, r2, r9
	bl FUN_ov132_0214126c
	ldr r2, [r6, #0x88]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bgt _0213D1C0
	str r7, [r2, #0x10]
	ldr r0, [r6, #0x88]
	ldr r1, [sp, #0x30]
	str r7, [r0, #0x18]
	ldr r3, [r6, #0x84]
	add sp, sp, #8
	ldr r2, [r3]
	mov r0, #1
	str r2, [r5]
	ldr r2, [r3, #4]
	str r2, [r5, #4]
	ldr r2, [r6, #0x88]
	ldrb r2, [r2, #0x85]
	str r2, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D1C0:
	mov r0, r8, asr #4
	mov r1, r0, lsl #1
	rsb r0, r9, #0
	str r0, [r2, #0x18]
	add r2, r1, #1
	ldr r0, [r6, #0x88]
	ldr r3, _0213D2B8 ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	mov r1, r1, lsl #1
	ldrsh r2, [r3, r2]
	ldr r9, [r0, #0x10]
	ldrsh r0, [r3, r1]
	smull r1, r12, r9, r2
	adds r1, r1, r10
	smull r3, r2, r9, r0
	adc r0, r12, r7
	adds r3, r3, r10
	mov r10, r1, lsr #0xc
	adc r1, r2, r7
	mov r7, r3, lsr #0xc
	cmp r4, #0
	orr r10, r10, r0, lsl #20
	orr r7, r7, r1, lsl #20
	beq _0213D23C
	ldr r0, [sp, #4]
	ldrh r0, [r0, #0x12]
	tst r0, #0x80
	bne _0213D23C
	mov r0, r8
	bl FUN_ov16_020efd3c
	str r0, [r4]
_0213D23C:
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldr r2, [r1]
	mov r1, #4
	add r2, r10, r2
	str r2, [r5]
	ldr r2, [r6, #0x84]
	ldr r2, [r2, #4]
	add r2, r7, r2
	str r2, [r5, #4]
	bl FUN_0206dac4
	ldr r0, _0213D2BC ; =0x000004CD
	mov r1, r11, asr #0x1f
	umull r3, r2, r11, r0
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	cmp r9, r1
	mov r2, #0
	bge _0213D2AC
	ldr r0, _0213D2C0 ; =0x02099F14
	str r2, [sp]
	ldr r0, [r0]
	ldr r3, [r4]
	mov r1, r6
	bl FUN_ov1_020e3c14
_0213D2AC:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D2B8: .word FX_SinCosTable_
_0213D2BC: .word 0x000004CD
_0213D2C0: .word unk_02099F14
	arm_func_end FUN_ov132_0213d0f8

	arm_func_start FUN_ov132_0213d2c4
FUN_ov132_0213d2c4: ; 0x0213D2C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r9, r1
	ldr r5, [r9, #0x88]
	mov r4, #0
	str r4, [r5, #0x18]
	str r3, [sp, #0x14]
	mov r10, r0
	mov r8, r2
	ldr r7, [sp, #0x68]
	bl FUN_ov126_02138cc8
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	ldr r1, [r9, #0x84]
	cmp r0, #0
	ldr r0, [r1]
	str r0, [sp, #0x34]
	ldr r0, [r1, #4]
	ldrneb r1, [r1, #0x1a]
	str r0, [sp, #0x30]
	ldrne r0, [sp, #0x14]
	strne r1, [r0]
	ldr r0, [r9, #0x88]
	cmp r7, #0
	ldrb r0, [r0, #0x84]
	strne r0, [r7]
	cmp r8, #0
	ldrne r1, [r9, #0x84]
	str r0, [sp, #0x28]
	ldrne r0, [r1]
	strne r0, [r8]
	ldrne r0, [r1, #4]
	strne r0, [r8, #4]
	ldr r0, [r9, #0x84]
	ldrb r0, [r0, #0x1d]
	cmp r0, #8
	addeq sp, sp, #0x44
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206da78
	cmp r0, #0x2d
	addeq sp, sp, #0x44
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206da78
	cmp r0, #0x2b
	mov r0, r9
	bne _0213D3B4
	mov r1, #0x10
	bl FUN_0206dadc
	ldr r3, [sp, #0x14]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	str r7, [sp]
	bl FUN_ov132_0213d0f8
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D3B4:
	bl FUN_0206d728
	cmp r0, #0
	beq _0213D434
	ldr r1, [sp, #0x38]
	mov r0, r10
	bl FUN_ov132_0214079c
	cmp r0, #0
	bne _0213D3E4
	mov r0, r9
	bl FUN_0206d75c
	cmp r0, #0
	beq _0213D434
_0213D3E4:
	mov r0, r9
	bl FUN_0206da78
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02142dd0
	cmp r0, #0
	bne _0213D434
	mov r0, r9
	bl FUN_02040b4c
	cmp r0, #0
	bne _0213D434
	ldr r3, [sp, #0x14]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	str r7, [sp]
	bl FUN_ov132_0213d0f8
	add sp, sp, #0x44
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D434:
	ldr r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	tst r0, #1
	beq _0213D490
	mov r0, r9
	bl FUN_0206db24
	cmp r0, #0
	beq _0213D490
	ldr r1, [r9, #0x84]
	ldrb r0, [r1, #0x1d]
	cmp r0, #0
	bne _0213D490
	ldr r0, [r1]
	cmp r7, #0
	str r0, [r8]
	ldr r0, [r1, #4]
	add sp, sp, #0x44
	str r0, [r8, #4]
	ldrne r0, [r9, #0x88]
	ldrneb r0, [r0, #0x84]
	strne r0, [r7]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D490:
	ldr r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	tst r0, #4
	beq _0213D4E4
	ldr r2, [sp, #0x38]
	mov r0, r10
	mov r1, r9
	mov r3, r8
	bl FUN_ov132_0214cbac
	cmp r0, #0
	ldrne r1, [r9, #0x88]
	ldrne r0, [r8]
	strne r0, [r1]
	ldrne r0, [r8, #4]
	strne r0, [r1, #4]
	bne _0213D4D8
	mov r0, r8
	bl FUN_020404cc
_0213D4D8:
	ldr r11, [r8]
	ldr r4, [r8, #4]
	b _0213D528
_0213D4E4:
	mov r0, r9
	bl FUN_02040b4c
	cmp r0, #0
	beq _0213D51C
	ldr r2, [sp, #0x38]
	mov r0, r10
	mov r1, r9
	mov r3, r8
	bl FUN_ov132_0214cbac
	cmp r0, #0
	bne _0213D518
	mov r0, r8
	bl FUN_020404cc
_0213D518:
	b _0213D4D8
_0213D51C:
	ldr r0, [r9, #0x88]
	ldr r11, [r0]
	ldr r4, [r0, #4]
_0213D528:
	ldr r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	tst r0, #0x100
	beq _0213D5A4
	mov r0, r9
	bl FUN_0206db24
	cmp r0, #0
	bne _0213D5A4
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov132_02142c0c
	cmp r0, #0
	beq _0213D5A4
	ldr r1, [r9, #0x84]
	mov r0, r10
	ldr r2, [r1, #4]
	ldr r1, [r1]
	bl FUN_ov132_0213ca7c
	mov r4, #0
	mov r3, r0
	ldr r0, [sp, #0x38]
	str r4, [sp]
	ldr r1, _0213DCE8 ; =0x02099F14
	ldrb r2, [r0, #0xa]
	ldr r0, [r1]
	mov r1, r9
	bl FUN_ov1_020e3c14
	add sp, sp, #0x44
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D5A4:
	mov r0, r9
	mov r1, #4
	bl FUN_0206dac4
	cmp r11, #0x80000000
	beq _0213D5C0
	cmp r4, #0x80000000
	bne _0213D618
_0213D5C0:
	ldr r2, [r9, #0x84]
	mov r0, r9
	ldr r1, [r2]
	mov r4, #0
	str r1, [r8]
	ldr r1, [r2, #4]
	str r1, [r8, #4]
	bl FUN_02040b4c
	cmp r0, #0
	beq _0213D5F4
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02144720
_0213D5F4:
	cmp r7, #0
	ldrne r0, [r9, #0x88]
	add sp, sp, #0x44
	ldrneb r0, [r0, #0x84]
	strne r0, [r7]
	ldr r0, [r9, #0x88]
	str r4, [r0, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D618:
	mov r2, #0x28000
	mov r0, r11
	mov r1, r4
	mov r3, r2
	bl FUN_020407d0
	cmp r0, #0
	bne _0213D680
	mov r0, r9
	bl FUN_02040b4c
	cmp r0, #0
	bne _0213D680
	ldr r2, [r9, #0x84]
	cmp r7, #0
	ldr r1, [r2]
	mov r0, #0
	str r1, [r8]
	ldr r1, [r2, #4]
	add sp, sp, #0x44
	str r1, [r8, #4]
	ldrne r1, [r9, #0x88]
	ldrneb r1, [r1, #0x84]
	strne r1, [r7]
	ldr r1, [r9, #0x88]
	str r0, [r1, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D680:
	ldr r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	tst r0, #0x20
	beq _0213D730
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02139878
	cmp r0, #0
	bne _0213D730
	ldr r0, [r9, #0x88]
	ldrsh r0, [r0, #0x28]
	cmp r0, #0
	ble _0213D730
	ldr r0, [sp, #0x34]
	cmp r11, r0
	bne _0213D6CC
	ldr r0, [sp, #0x30]
	cmp r4, r0
	beq _0213D730
_0213D6CC:
	mov r0, r9
	bl FUN_0206db84
	cmp r0, #0
	bne _0213D730
	mov r0, r10
	mov r1, r9
	mov r2, #1
	bl FUN_ov132_02142870
	mov r6, r0
	ldr r2, [r9, #0x88]
	mov r0, r10
	ldrsh r5, [r2, #0x28]
	mov r1, r9
	bl FUN_ov132_021440ac
	mul r1, r6, r5
	cmp r1, r0
	blt _0213D71C
	mov r0, r9
	mov r1, #0x10
	bl FUN_0206dac4
_0213D71C:
	ldr r1, [r9, #0x88]
	ldrsh r0, [r1, #0x28]
	sub r0, r0, #1
	strh r0, [r1, #0x28]
	b _0213D76C
_0213D730:
	mov r0, r9
	bl FUN_0206db84
	cmp r0, #0
	beq _0213D76C
	ldr r0, [sp, #0x34]
	cmp r11, r0
	ldreq r0, [sp, #0x30]
	cmpeq r4, r0
	bne _0213D76C
	mov r0, r9
	mov r1, #0x10
	bl FUN_0206dadc
	ldr r1, [r9, #0x88]
	mov r0, #0
	str r0, [r1, #0x10]
_0213D76C:
	mov r0, r9
	bl FUN_02040b4c
	cmp r0, #0
	beq _0213D79C
	ldr r3, [sp, #0x14]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	str r7, [sp]
	bl FUN_ov132_0213ccc4
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D79C:
	ldr r0, [sp, #0x30]
	cmp r4, r0
	ldreq r0, [sp, #0x34]
	cmpeq r11, r0
	ldreq r1, [r9, #0x88]
	moveq r0, #0
	streq r0, [r1, #0x10]
	addeq sp, sp, #0x44
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r9, #0x84]
	ldrb r0, [r2, #0x1d]
	cmp r0, #9
	bne _0213D80C
	ldr r0, [sp, #0x34]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	str r4, [sp, #0x10]
	bl FUN_ov132_0213cb34
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213D80C:
	ldrh r2, [r2, #0x18]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	sub r0, r4, r0
	sub r1, r11, r1
	str r2, [sp, #0x20]
	mov r5, #0
	bl FX_Atan2Idx
	str r0, [sp, #0x1c]
	mov r2, r5
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02142870
	ldr r1, [r9, #0x88]
	str r0, [sp, #0x18]
	ldr r5, [r1, #0x10]
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02141468
	sub r6, r0, r5
	ldr r1, [sp, #0x18]
	mov r0, r10
	bl FUN_ov132_02141440
	cmp r6, r0
	bge _0213D880
	ldr r1, [sp, #0x18]
	mov r0, r10
	bl FUN_ov132_02141440
	mov r6, r0
_0213D880:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	cmp r6, r0
	movgt r6, r0
	ldr r0, [sp, #0x20]
	ldr r2, _0213DCEC ; =0x0000038E
	bl FUN_020405a4
	cmp r0, #0
	bne _0213D8B4
	ldr r0, [r9, #0x84]
	ldrb r0, [r0, #0x1d]
	cmp r0, #7
	bne _0213D8D8
_0213D8B4:
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [r9, #0x88]
	ldr r0, [r0, #0x10]
	add r5, r6, r0
	ldr r0, [sp, #0x18]
	cmp r5, r0
	movgt r5, r0
	b _0213D9F8
_0213D8D8:
	ldr r0, [r9, #0x88]
	ldr r12, _0213DCF0 ; =FX_SinCosTable_
	ldr r5, [r0, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r5, r6
	cmp r1, r0
	subgt r5, r0, r6
	ldr r0, [sp, #0x20]
	cmp r5, #0
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	mov r2, r1, lsl #1
	mov r1, r0, lsl #1
	movle r5, r6, asr #4
	ldrsh r2, [r12, r2]
	ldrsh r1, [r12, r1]
	suble r6, r6, r6, asr #4
	smull r3, r2, r5, r2
	ldr r0, [sp, #0x1c]
	cmp r6, #0
	movle r6, #0
	adds r3, r3, #0x800
	mov r0, r0, asr #4
	smull r1, lr, r5, r1
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	adds r1, r1, #0x800
	orr r3, r3, r2, lsl #20
	mov r0, r0, lsl #1
	adc r2, lr, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r2, lsl #20
	add r2, r0, #1
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	ldrsh r2, [r12, r2]
	ldrsh r0, [r12, r0]
	smull r12, r5, r6, r2
	smull r2, r0, r6, r0
	adds r6, r12, #0x800
	adc r5, r5, #0
	adds r2, r2, #0x800
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r5, r3, r6
	add r6, r1, r2
	mov r0, r6
	mov r1, r5
	bl FX_Atan2Idx
	cmp r5, #0
	rsblt r5, r5, #0
	cmp r6, #0
	rsblt r6, r6, #0
	smull r3, r2, r6, r6
	adds r3, r3, #0x800
	str r0, [sp, #0x24]
	smull r1, r0, r5, r5
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r3, asr #4
	add r0, r0, r1, asr #4
	bl FX_Sqrt
	mov r5, r0, lsl #2
_0213D9F8:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x34]
	cmp r5, r0
	movgt r5, r0
	ldr r2, [sp, #0x30]
	str r4, [sp]
	mov r0, r10
	mov r3, r11
	bl FUN_01ffba98
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	bl FUN_020403d4
	ldr r1, [r9, #0x84]
	ldrb r1, [r1, #0x1d]
	cmp r1, #7
	ldrne r1, [sp, #0x2c]
	cmpne r1, r5, lsl #2
	bge _0213DA94
	rsb r2, r0, #0
	cmp r0, #0
	ldr r1, _0213DCF4 ; =0x00000AAA
	movge r2, r0
	cmp r2, r1
	ble _0213DA94
	cmp r0, #0
	mov r0, r5, asr #2
	add r5, r0, r0, lsl #1
	ble _0213DA7C
	ldr r0, [sp, #0x24]
	add r0, r0, #0x31c
	add r0, r0, #0x400
	b _0213DA88
_0213DA7C:
	ldr r0, [sp, #0x24]
	add r0, r0, #0xe4
	add r0, r0, #0xf800
_0213DA88:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x24]
_0213DA94:
	mov r0, r10
	mov r1, r9
	mov r2, r5
	bl FUN_ov132_0214126c
	ldr r1, [r9, #0x84]
	ldr r0, [sp, #0x24]
	cmp r7, #0
	strh r0, [r1, #0x18]
	ldrne r0, [sp, #0x28]
	ldr r3, _0213DCF0 ; =FX_SinCosTable_
	strne r0, [r7]
	ldr r0, [sp, #0x24]
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	mov r2, r1, lsl #1
	mov r1, r0, lsl #1
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	mov r0, r9
	smull r3, r2, r5, r2
	adds r3, r3, #0x800
	adc r2, r2, #0
	mov r7, r3, lsr #0xc
	orr r7, r7, r2, lsl #20
	smull r2, r1, r5, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _0213DC1C
	ldr r0, [sp, #0x34]
	add r0, r0, r7
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	add r0, r0, r6
	str r0, [sp, #0x40]
	mov r0, r9
	bl FUN_02040128
	mov r1, r0
	mov r0, r10
	add r2, sp, #0x3c
	bl FUN_ov132_02140b50
	cmp r0, #0
	beq _0213DC1C
	mov r0, r9
	bl FUN_02040128
	ldr r6, _0213DCF8 ; =0x0209A83C
	cmp r0, #0
	ldrne r6, _0213DCFC ; =0x0209A82C
	ldr r5, [sp, #0x3c]
	ldr r4, [r6]
	ldmib r6, {r1, r3}
	ldr r2, [sp, #0x40]
	ldr r0, [r6, #0xc]
	sub r7, r5, r4
	sub r3, r3, r5
	sub r1, r2, r1
	cmp r7, r3
	sub r0, r0, r2
	cmplt r7, r1
	cmplt r7, r0
	sublt r0, r4, #1
	strlt r0, [r8]
	ldrlt r0, [sp, #0x40]
	strlt r0, [r8, #4]
	blt _0213DC10
	cmp r3, r7
	cmplt r3, r1
	cmplt r3, r0
	bge _0213DBD8
	ldr r0, [r6, #8]
	add r0, r0, #1
	str r0, [r8]
	ldr r0, [sp, #0x40]
	b _0213DC0C
_0213DBD8:
	cmp r1, r7
	cmplt r1, r3
	cmplt r1, r0
	ldrge r0, [sp, #0x3c]
	strge r0, [r8]
	ldrge r0, [r6, #0xc]
	addge r0, r0, #1
	strge r0, [r8, #4]
	bge _0213DC10
	ldr r0, [sp, #0x3c]
	str r0, [r8]
	ldr r0, [r6, #4]
	sub r0, r0, #1
_0213DC0C:
	str r0, [r8, #4]
_0213DC10:
	add sp, sp, #0x44
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213DC1C:
	ldr r0, [sp, #0x2c]
	cmp r5, r0
	blt _0213DC98
	ldr r0, [sp, #0x14]
	str r11, [r8]
	str r4, [r8, #4]
	cmp r0, #0
	beq _0213DC5C
	ldr r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	tst r0, #0x80
	bne _0213DC5C
	ldr r0, [sp, #0x1c]
	bl FUN_ov16_020efd3c
	ldr r1, [sp, #0x14]
	str r0, [r1]
_0213DC5C:
	ldr r0, [r9, #0x88]
	mov r2, #0
	ldrb r1, [r0, #0x85]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	blt _0213DC84
	ldr r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	tst r0, #0x10
	moveq r2, #1
_0213DC84:
	mov r0, #1
	cmp r2, #0
	add sp, sp, #0x44
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213DC98:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0213DCC4
	ldr r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	tst r0, #0x80
	bne _0213DCC4
	ldr r0, [sp, #0x24]
	bl FUN_ov16_020efd3c
	ldr r1, [sp, #0x14]
	str r0, [r1]
_0213DCC4:
	ldr r0, [sp, #0x34]
	add r1, r0, r7
	ldr r0, [sp, #0x30]
	str r1, [r8]
	add r0, r0, r6
	str r0, [r8, #4]
	mov r0, #0
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213DCE8: .word unk_02099F14
_0213DCEC: .word 0x0000038E
_0213DCF0: .word FX_SinCosTable_
_0213DCF4: .word 0x00000AAA
_0213DCF8: .word unk_0209A83C
_0213DCFC: .word unk_0209A82C
	arm_func_end FUN_ov132_0213d2c4

	arm_func_start FUN_ov132_0213dd00
FUN_ov132_0213dd00: ; 0x0213DD00
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r7, r1
	mov r8, r0
	mov r0, r7
	ldr r9, _0213DF10 ; =0x02099F14
	mov r4, #0
	bl FUN_0206db3c
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r6, sp, #0xc
	mov r0, r6
	bl FUN_020404cc
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138cc8
	mov r5, r0
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0214079c
	add r1, sp, #4
	str r1, [sp]
	mov r2, r6
	mov r0, r8
	mov r1, r7
	add r3, sp, #8
	bl FUN_ov132_0213d2c4
	cmp r0, #0
	mov r6, #1
	ldr r2, [r7, #0x84]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	moveq r6, r4
	stmia r2, {r0, r1}
	ldrh r0, [r5, #0x12]
	tst r0, #0x80
	ldrne r0, [r7, #0x84]
	ldrneb r0, [r0, #0x1a]
	strne r0, [sp, #8]
	bne _0213DDB8
	ldr r1, [sp, #8]
	mov r0, r7
	and r1, r1, #7
	mov r2, #0
	bl FUN_0206daf8
_0213DDB8:
	ldr r1, [sp, #4]
	ldr r0, [r7, #0x88]
	cmp r6, #0
	strb r1, [r0, #0x84]
	beq _0213DDEC
	mov r0, r7
	mov r1, #8
	bl FUN_0206dac4
	ldrsh r0, [r5]
	cmp r0, #0xa
	bne _0213DDEC
	mov r0, r7
	bl FUN_0206da98
_0213DDEC:
	cmp r6, #0
	beq _0213DE3C
	ldrh r0, [r5, #0x12]
	tst r0, #0x10
	bne _0213DE3C
	tst r0, #8
	beq _0213DE1C
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_0213c844
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0213DE1C:
	str r4, [sp]
	ldrb r2, [r5, #0xa]
	ldr r0, [r9]
	ldr r3, [sp, #8]
	mov r1, r7
	bl FUN_ov1_020e3c14
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0213DE3C:
	ldr r0, [r7, #0x84]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #8
	bne _0213DE78
	ldr r0, [r7, #0x84]
	mov r1, r7
	ldrb r2, [r0, #0x1d]
	str r4, [sp]
	ldr r0, [r9]
	ldr r3, [sp, #8]
	bl FUN_ov1_020e3c14
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0213DE78:
	mov r0, r7
	bl FUN_0206db24
	cmp r0, #0
	bne _0213DEA8
	str r4, [sp]
	ldrb r2, [r5, #0xa]
	ldr r0, [r9]
	ldr r3, [sp, #8]
	mov r1, r7
	bl FUN_ov1_020e3c14
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0213DEA8:
	ldrb r0, [r5, #0xb]
	cmp r0, #9
	bne _0213DECC
	mov r0, r7
	bl FUN_ov16_020f07d0
	cmp r0, #0
	streq r4, [sp, #8]
	movne r0, #4
	strne r0, [sp, #8]
_0213DECC:
	cmp r6, #0
	str r4, [sp]
	bne _0213DEF4
	ldrb r2, [r5, #0xb]
	ldr r0, [r9]
	ldr r3, [sp, #8]
	mov r1, r7
	bl FUN_ov1_020e3c14
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0213DEF4:
	ldrb r2, [r5, #0xa]
	ldr r0, [r9]
	ldr r3, [sp, #8]
	mov r1, r7
	bl FUN_ov1_020e3c14
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0213DF10: .word unk_02099F14
	arm_func_end FUN_ov132_0213dd00

	arm_func_start FUN_ov132_0213df14
FUN_ov132_0213df14: ; 0x0213DF14
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	mov r6, r0
	bl FUN_ov126_02138cc8
	mov r4, r0
	mov r0, r5
	bl FUN_0206d75c
	mov r0, r5
	bl FUN_02040b4c
	cmp r0, #0
	ldreqsh r0, [r4]
	cmpeq r0, #0xa
	bne _0213DF78
	mov r12, #0
	str r12, [sp]
	mov r2, #2
	str r12, [sp, #4]
	mov r0, r6
	mov r1, r5
	sub r3, r2, #3
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0213DF78:
	mov r0, r5
	bl FUN_02040b4c
	cmp r0, #0
	ldrnesh r0, [r4]
	cmpne r0, #0xa
	beq _0213DFA4
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_021525e4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0213DFA4:
	ldrb r1, [r4, #8]
	ldr r0, [r5, #0x88]
	mov r2, #1
	strh r1, [r0, #0x20]
	ldr r1, [r5, #0x88]
	ldrb r0, [r1, #0x89]
	cmp r0, #0x32
	movhs r2, #0
	add r0, r0, r2
	strb r0, [r1, #0x89]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov132_0213df14

	arm_func_start FUN_ov132_0213dfd4
FUN_ov132_0213dfd4: ; 0x0213DFD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	ldr r5, _0213E2B0 ; =0x0209BA20
	str r0, [sp, #0xc]
	mov r10, r1
	mov r0, r5
	mov r9, r2
	str r3, [sp, #0x10]
	ldr r8, [sp, #0x70]
	ldr r7, [sp, #0x74]
	bl FUN_0204fb20
	ldr r3, [r10, #0x84]
	str r0, [sp, #0x40]
	ldrh r1, [r3, #0x16]
	ldr r2, [r5, #0x7d0]
	mov r0, #0x18
	mla r5, r9, r0, r2
	and r0, r1, #0xff00
	mov r2, r0, lsl #0x10
	ldrh r1, [r3, #0x18]
	ldr r4, [r10, #0x88]
	mov r0, r10
	str r1, [sp, #0x30]
	mov r1, r2, lsr #0x10
	str r1, [sp, #0x3c]
	ldr r1, [r4, #0x10]
	str r1, [sp, #0x38]
	ldrh r1, [r4, #0x1e]
	str r1, [sp, #0x34]
	ldrsh r1, [r4, #0x24]
	str r1, [sp, #0x2c]
	ldrsh r1, [r4, #0x22]
	str r1, [sp, #0x28]
	ldrh r1, [r4, #0x2a]
	str r1, [sp, #0x24]
	ldrsh r1, [r4, #0x26]
	str r1, [sp, #0x20]
	ldrb r1, [r4, #0x2d]
	str r1, [sp, #0x1c]
	ldrh r1, [r4, #0x32]
	str r1, [sp, #0x18]
	ldrb r1, [r4, #0x88]
	str r1, [sp, #0x14]
	bl FUN_0206da78
	mov r6, #1
	cmp r9, r0
	moveq r6, #0
	cmp r6, #0
	ldrb r11, [r4, #0x8a]
	ldrne r0, [r10, #0x88]
	movne r1, #0
	strneb r1, [r0, #0x89]
	bne _0213E0C4
	ldr r1, [r10, #0x88]
	mov r2, #1
	ldrb r0, [r1, #0x89]
	cmp r0, #0x32
	movhs r2, #0
	add r0, r0, r2
	strb r0, [r1, #0x89]
_0213E0C4:
	mov r0, r10
	bl FUN_02040b4c
	cmp r0, #0
	cmpne r9, #0
	ldrnesh r0, [r5]
	cmpne r0, #0xa
	beq _0213E0FC
	ldrh r0, [r5, #0x12]
	tst r0, #0x400
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_0206da98
	b _0213E140
_0213E0FC:
	mov r0, r10
	bl FUN_02040b4c
	cmp r0, #0
	ldreqsh r0, [r5]
	cmpeq r0, #0xa
	bne _0213E140
	mov r4, #0
	str r4, [sp]
	mov r2, #2
	str r4, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, r10
	sub r3, r2, #3
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213E140:
	add r0, sp, #0x44
	bl FUN_020404cc
	cmp r8, #0
	ldrne r0, [r8]
	strne r0, [sp, #0x44]
	ldrne r0, [r8, #4]
	strne r0, [sp, #0x48]
	bne _0213E184
	cmp r6, #0
	beq _0213E170
	mov r0, r4
	bl FUN_020404cc
_0213E170:
	ldr r0, [sp, #0xc]
	mov r1, r10
	mov r2, r5
	add r3, sp, #0x44
	bl FUN_ov132_0214cbac
_0213E184:
	mov r8, #0
	ldr r0, [r10, #0x88]
	mov r1, r8
	bl FUN_02073d24
	mov r1, r9
	mov r0, r10
	bl FUN_0206da58
	ldr r0, [sp, #0x40]
	strh r8, [r0, #0x1c]
	ldrb r2, [r5, #8]
	ldr r1, [r10, #0x88]
	mvn r0, r11
	strh r2, [r1, #0x20]
	and r1, r0, #0xff
	ldr r3, [r10, #0x88]
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	strh r2, [r3, #0x24]
	ldr r2, [sp, #0x28]
	ldr r3, [r10, #0x88]
	cmp r0, r2
	ldr r2, [sp, #0x34]
	strh r2, [r3, #0x1e]
	ldr r3, [r10, #0x84]
	ldr r2, [sp, #0x30]
	strh r2, [r3, #0x18]
	ldr r3, [r10, #0x88]
	ldr r2, [sp, #0x20]
	strh r2, [r3, #0x26]
	ldr r3, [r10, #0x88]
	ldr r2, [sp, #0x24]
	strh r2, [r3, #0x2a]
	ldr r3, [r10, #0x88]
	ldr r2, [sp, #0x38]
	str r2, [r3, #0x10]
	ldr r3, [r10, #0x88]
	ldr r2, [sp, #0x18]
	strh r2, [r3, #0x32]
	ldr r3, [r10, #0x88]
	ldr r2, [sp, #0x14]
	strb r2, [r3, #0x88]
	ldrb r2, [r4, #0x8a]
	and r1, r2, r1
	orr r1, r1, r11
	strb r1, [r4, #0x8a]
	ldr r2, [r10, #0x84]
	ldr r1, [sp, #0x3c]
	strh r1, [r2, #0x16]
	ldrle r0, [sp, #0x28]
	cmp r6, #0
	strh r0, [r4, #0x22]
	ldreq r0, [sp, #0x1c]
	streqb r0, [r4, #0x2d]
	ldr r0, [sp, #0x44]
	cmp r7, #0
	str r0, [r4]
	ldr r0, [sp, #0x48]
	str r0, [r4, #4]
	ldrne r0, [r7]
	strne r0, [r4, #8]
	ldrne r0, [r7, #4]
	strne r0, [r4, #0xc]
	bne _0213E288
	add r0, r4, #8
	bl FUN_020404cc
_0213E288:
	ldr r0, [sp, #0x10]
	mvn r1, #0
	strb r0, [r4, #0x2e]
	ldr r0, [sp, #0x40]
	cmp r6, #0
	strb r1, [r0, #0x1e]
	ldrne r0, [r10, #0x88]
	strneh r1, [r0, #0x86]
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213E2B0: .word unk_0209BA20
	arm_func_end FUN_ov132_0213dfd4

	arm_func_start FUN_ov132_0213e2b4
FUN_ov132_0213e2b4: ; 0x0213E2B4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r1
	bl FUN_ov126_02138cc8
	mov r7, r0
	ldr r0, _0213E5DC ; =0x0209BA20
	mov r1, r5
	bl FUN_0204fb20
	mov r4, r0
	mov r0, r5
	bl FUN_0206da78
	mov r0, r5
	bl FUN_02040b4c
	cmp r0, #0
	bne _0213E344
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _0213E344
	mov r0, r6
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _0213E344
	add r0, r4, #8
	str r0, [sp]
	add r0, r4, #0x10
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrh r2, [r4, #0x1c]
	ldrsb r3, [r4, #0x1e]
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0213dfd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E344:
	ldrb r0, [r6, #0x328]
	cmp r0, #0
	beq _0213E35C
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0213e704
_0213E35C:
	mov r0, r6
	bl FUN_01ff9578
	cmp r0, #0
	mov r0, r6
	beq _0213E380
	mov r1, r5
	bl FUN_ov132_0213e710
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E380:
	bl FUN_ov132_02144780
	cmp r0, #0
	mov r0, r6
	beq _0213E3A0
	mov r1, r5
	bl FUN_ov132_0213ec18
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E3A0:
	bl FUN_ov132_02144f4c
	cmp r0, #0
	beq _0213E3C0
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0213e5e0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E3C0:
	mov r0, r5
	bl FUN_02040b4c
	cmp r0, #0
	beq _0213E3F4
	ldrsh r0, [r7]
	cmp r0, #0xa
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0213df14
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E3F4:
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_02138e80
	cmp r0, #0
	mov r0, r6
	mov r1, r5
	beq _0213E41C
	bl FUN_ov132_02156f64
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E41C:
	bl FUN_01ffba18
	cmp r0, #0
	beq _0213E4F0
	ldr r0, _0213E5DC ; =0x0209BA20
	mov r1, r5
	bl FUN_0204b754
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0213E4E8
_0213E440: ; jump table
	b _0213E4E8 ; case 0
	b _0213E48C ; case 1
	b _0213E464 ; case 2
	b _0213E478 ; case 3
	b _0213E48C ; case 4
	b _0213E4A0 ; case 5
	b _0213E4B4 ; case 6
	b _0213E4C8 ; case 7
	b _0213E4DC ; case 8
_0213E464:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02153264
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E478:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02153744
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E48C:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02153c10
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E4A0:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0215400c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E4B4:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02154494
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E4C8:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02154930
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E4DC:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02154dd4
_0213E4E8:
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E4F0:
	mov r0, r5
	bl FUN_02040aa8
	cmp r0, #0
	beq _0213E514
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_021529bc
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E514:
	ldr r0, _0213E5DC ; =0x0209BA20
	mov r1, r5
	bl FUN_0204b754
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0213E5D4
_0213E52C: ; jump table
	b _0213E5D4 ; case 0
	b _0213E578 ; case 1
	b _0213E550 ; case 2
	b _0213E564 ; case 3
	b _0213E578 ; case 4
	b _0213E58C ; case 5
	b _0213E5A0 ; case 6
	b _0213E5B4 ; case 7
	b _0213E5C8 ; case 8
_0213E550:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_021551c8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E564:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_021555d8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E578:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02155884
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E58C:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02155ae8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E5A0:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02155ef8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E5B4:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02156234
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E5C8:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_021564b4
_0213E5D4:
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E5DC: .word unk_0209BA20
	arm_func_end FUN_ov132_0213e2b4

	arm_func_start FUN_ov132_0213e5e0
FUN_ov132_0213e5e0: ; 0x0213E5E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r6, _0213E700 ; =0x0209A2C0
	mov r5, r0
	ldr r0, [r6, #0x48]
	mov r4, r1
	bl FUN_ov16_020efa80
	movs r7, r0
	bne _0213E610
	ldr r0, [r6, #0x4c]
	bl FUN_ov16_020efa80
	mov r7, r0
_0213E610:
	cmp r7, #0
	beq _0213E634
	mov r0, r7
	bl FUN_0206d5f0
	bl FUN_02040138
	mov r1, r0
	mov r0, r5
	bl FUN_ov132_02144854
	mov r8, r0
_0213E634:
	cmp r7, #0
	beq _0213E684
	mov r0, r7
	bl FUN_0206cbf8
	mov r6, r0
	mov r0, r4
	bl FUN_0206cbf8
	cmp r6, r0
	bne _0213E684
	mov r6, #0
	str r6, [sp]
	mov r2, #0x2d
	str r6, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x2e
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0213E684:
	cmp r8, #0
	beq _0213E6D4
	mov r0, r8
	bl FUN_0206cbf8
	mov r6, r0
	mov r0, r4
	bl FUN_0206cbf8
	cmp r6, r0
	bne _0213E6D4
	mov r6, #0
	str r6, [sp]
	mov r2, #0x2d
	str r6, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x2e
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0213E6D4:
	mov r6, #0
	str r6, [sp]
	mov r2, #0x2d
	str r6, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x2e
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0213E700: .word unk_0209A2C0
	arm_func_end FUN_ov132_0213e5e0

	arm_func_start FUN_ov132_0213e704
FUN_ov132_0213e704: ; 0x0213E704
	ldr r12, _0213E70C ; =FUN_ov132_0213e710
	bx r12
_0213E70C: .word FUN_ov132_0213e710
	arm_func_end FUN_ov132_0213e704

	arm_func_start FUN_ov132_0213e710
FUN_ov132_0213e710: ; 0x0213E710
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_02040b4c
	cmp r0, #0
	beq _0213E73C
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02144720
_0213E73C:
	ldr r0, [r4, #0x84]
	mov r12, #0
	ldrb r0, [r0, #0x1d]
	cmp r0, #1
	str r12, [sp]
	bne _0213E778
	mov r2, #0x2b
	str r12, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x2c
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0213E778:
	mov r2, #0x2d
	str r12, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x2e
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov132_0213e710

	arm_func_start FUN_ov132_0213e79c
FUN_ov132_0213e79c: ; 0x0213E79C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r7, _0213E900 ; =0x0209A2C0
	mov r6, r0
	ldr r0, [r7, #0x48]
	mov r5, r1
	cmp r0, #0
	blt _0213E89C
	add r0, r6, #0x300
	ldrsb r0, [r0, #0x34]
	bl FUN_ov16_020efa80
	movs r4, r0
	bne _0213E7F4
	mov r0, r6
	bl FUN_ov132_02144770
	mov r1, r0
	mov r0, r6
	ldmia r7, {r2, r3}
	bl FUN_ov126_021345b0
	mov r4, r0
	ldrsh r0, [r4, #0x94]
	strb r0, [r6, #0x334]
_0213E7F4:
	add r0, r6, #0x300
	ldrsh r1, [r5, #0x94]
	ldrsb r0, [r0, #0x34]
	cmp r1, r0
	bne _0213E870
	mov r0, r4
	bl FUN_02040148
	mov r1, r0
	mov r0, r6
	bl FUN_ov132_02143cd0
	ldr r1, _0213E904 ; =0x0209A87C
	ldr r1, [r1, r0, lsl #3]
	mov r0, r4
	str r1, [sp, #0xc]
	bl FUN_02040128
	mov r4, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov132_0213f5d4
	str r0, [sp, #0x10]
	str r4, [sp]
	add r3, sp, #0xc
	mov r2, #0x24
	stmib sp, {r3, r4}
	mov r1, r5
	mov r0, r6
	sub r3, r2, #0x25
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E870:
	mov r4, #0
	str r4, [sp]
	mov r2, #0x2d
	str r4, [sp, #4]
	mov r0, r6
	mov r1, r5
	sub r3, r2, #0x2e
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E89C:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	addge sp, sp, #0x14
	ldmgefd sp!, {r4, r5, r6, r7, pc}
	mov r7, #0
	mov r5, r7
	mvn r4, #0
	b _0213E8F0
_0213E8BC:
	mov r0, r6
	mov r1, r7
	bl FUN_ov126_0213922c
	movs r1, r0
	beq _0213E8EC
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r5, [sp, #8]
	bl FUN_ov132_0213dfd4
_0213E8EC:
	add r7, r7, #1
_0213E8F0:
	cmp r7, #0x16
	blt _0213E8BC
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0213E900: .word unk_0209A2C0
_0213E904: .word unk_0209A87C
	arm_func_end FUN_ov132_0213e79c

	arm_func_start FUN_ov132_0213e908
FUN_ov132_0213e908: ; 0x0213E908
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r5, r0
	add r0, r5, #0x300
	ldrsb r0, [r0, #0x34]
	mov r4, r1
	bl FUN_ov16_020efa80
	cmp r0, #0
	bne _0213E950
	mov r0, r5
	bl FUN_ov132_02144770
	ldr r3, _0213EABC ; =0x0209A2C0
	mov r1, r0
	mov r0, r5
	ldmia r3, {r2, r3}
	bl FUN_ov126_021345b0
	ldrsh r0, [r0, #0x94]
	strb r0, [r5, #0x334]
_0213E950:
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0x300
	ldrsh r1, [r4, #0x94]
	ldrsb r0, [r0, #0x34]
	cmp r1, r0
	bne _0213EA94
	add r6, sp, #0x10
	mov r7, #0
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_01ffb93c
	cmp r0, #0
	beq _0213E9C0
	mov r2, #0x23
	str r7, [sp]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x24
	stmib sp, {r6, r7}
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213E9C0:
	ldr r12, _0213EAC0 ; =0x0027148F
	add r3, sp, #0xc
	mov r0, r5
	mov r1, r4
	mov r2, r6
	str r12, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	beq _0213EA08
	str r7, [sp]
	stmib sp, {r6, r7}
	ldr r3, [sp, #0xc]
	mov r0, r5
	mov r1, r4
	mov r2, #0x22
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213EA08:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #0x820000
	bl FUN_ov132_02157c2c
	cmp r0, #0
	beq _0213EA48
	mov r2, #0x22
	str r7, [sp]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x23
	stmib sp, {r6, r7}
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213EA48:
	mov r12, #0x8c000
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #0xf
	str r12, [sp]
	bl FUN_ov132_0214067c
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r7, [sp]
	stmib sp, {r6, r7}
	ldr r3, [sp, #0xc]
	mov r0, r5
	mov r1, r4
	mov r2, #0x22
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213EA94:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #1
	str r2, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213EABC: .word unk_0209A2C0
_0213EAC0: .word 0x0027148F
	arm_func_end FUN_ov132_0213e908

	arm_func_start FUN_ov132_0213eac4
FUN_ov132_0213eac4: ; 0x0213EAC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r5, r1
	mov r6, r0
	mvn r7, #0
	mov r0, r5
	str r7, [sp, #0xc]
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0213EBE4
	mov r0, r5
	bl FUN_02040aa8
	cmp r0, #0
	beq _0213EBE4
	mov r0, r5
	bl FUN_0206da78
	cmp r0, #0x27
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, sp, #0x10
	ldr r12, _0213EC0C ; =0x0004041F
	add r3, sp, #0xc
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	bne _0213EB90
	ldr r3, _0213EC10 ; =0x00820080
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r7, [sp, #0xc]
	bl FUN_ov132_02157c2c
	cmp r0, #0
	bne _0213EB90
	ldr r1, _0213EC14 ; =0x0209A720
	mov r3, #0x78000
	ldr r2, [r1, #0xd4]
	mov r0, r6
	str r2, [sp, #0x10]
	ldr r12, [r1, #0xd8]
	str r12, [sp, #0x14]
	ldr r1, [r5, #0x84]
	ldr r2, [r1, #4]
	ldr r1, [r1]
	str r12, [sp]
	stmib sp, {r3, r4}
	ldr r3, [sp, #0x10]
	bl FUN_ov132_0213f65c
_0213EB90:
	mov r0, r6
	mov r1, #4
	bl FUN_ov132_02144a84
	movs r1, r0
	beq _0213EBB0
	add r0, sp, #0x10
	mov r2, #0
	bl FUN_02040c34
_0213EBB0:
	mov r1, #0
	str r1, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r0, #0x8000
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, r6
	mov r1, r5
	mov r2, #0x27
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213EBE4:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, r6
	mov r1, r5
	sub r3, r2, #1
	str r2, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213EC0C: .word 0x0004041F
_0213EC10: .word 0x00820080
_0213EC14: .word unk_0209A720
	arm_func_end FUN_ov132_0213eac4

	arm_func_start FUN_ov132_0213ec18
FUN_ov132_0213ec18: ; 0x0213EC18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r6, r1
	add r5, sp, #0x18
	mov r4, #0
	bl FUN_ov132_02144780
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0213EF80
_0213EC40: ; jump table
	b _0213EF80 ; case 0
	b _0213EC64 ; case 1
	b _0213ED20 ; case 2
	b _0213ED20 ; case 3
	b _0213ED34 ; case 4
	b _0213ED48 ; case 5
	b _0213ED5C ; case 6
	b _0213EE50 ; case 7
	b _0213ED34 ; case 8
_0213EC64:
	mov r0, r6
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0213ECF8
	mov r0, r6
	bl FUN_02040aa8
	cmp r0, #0
	beq _0213ECF8
	mov r0, r6
	bl FUN_0206da78
	cmp r0, #0x25
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r9, sp, #0x14
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r9
	bl FUN_ov132_021404c4
	cmp r0, #0
	bne _0213ECD4
	ldr r8, _0213EF88 ; =0x00010B0F
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r9
	str r8, [sp]
	bl FUN_ov132_0214044c
_0213ECD4:
	stmia sp, {r4, r5}
	str r4, [sp, #8]
	ldr r3, [sp, #0x14]
	mov r0, r7
	mov r1, r6
	mov r2, #0x25
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213ECF8:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, r7
	mov r1, r6
	sub r3, r2, #1
	str r2, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213ED20:
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_0213e908
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213ED34:
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_0213e79c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213ED48:
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_0213eac4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213ED5C:
	mov r0, r6
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0213EE28
	mov r0, r6
	bl FUN_02040aa8
	cmp r0, #0
	beq _0213EE28
	mov r0, r6
	bl FUN_0206da78
	cmp r0, #0x21
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r9, sp, #0x14
	ldr r8, _0213EF8C ; =0x0004080F
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r9
	str r8, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	bne _0213EE00
	add r8, r8, #0x300
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r9
	str r8, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	bne _0213EE00
	mvn r3, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	str r3, [sp, #0x14]
	mov r5, #0x8c000
	mov r3, #0xf
	str r5, [sp]
	bl FUN_ov132_0214067c
_0213EE00:
	add r0, sp, #0x18
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r3, [sp, #0x14]
	mov r0, r7
	mov r1, r6
	mov r2, #0x21
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213EE28:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, r7
	mov r1, r6
	sub r3, r2, #1
	str r2, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213EE50:
	mov r0, r6
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0213EF60
	mov r0, r6
	bl FUN_02040aa8
	cmp r0, #0
	beq _0213EF60
	mov r0, r6
	bl FUN_0206da78
	cmp r0, #0x26
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	bl FUN_ov16_020f0810
	add r0, r7, r0, lsl #2
	ldr r0, [r0, #0x28c]
	tst r0, #1
	beq _0213EEF4
	add r8, sp, #0x14
	add r3, sp, #0xc
	mov r0, r7
	mov r1, r6
	mov r2, r5
	str r8, [sp]
	bl FUN_ov132_0213fb08
	cmp r0, #0
	beq _0213EEF4
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0212d63c
	stmia sp, {r4, r5}
	str r4, [sp, #8]
	ldr r3, [sp, #0x14]
	mov r0, r7
	mov r1, r6
	mov r2, #0x26
	bl FUN_ov132_0213dfd4
	b _0213EF38
_0213EEF4:
	add r8, sp, #0x14
	ldr r9, _0213EF90 ; =0x0024000F
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r8
	str r9, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	bne _0213EF38
	add r12, r9, #0xb00
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r8
	str r12, [sp]
	bl FUN_ov132_0214044c
_0213EF38:
	add r0, sp, #0x18
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r3, [sp, #0x14]
	mov r0, r7
	mov r1, r6
	mov r2, #0x26
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213EF60:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, r7
	mov r1, r6
	sub r3, r2, #1
	str r2, [sp, #8]
	bl FUN_ov132_0213dfd4
_0213EF80:
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213EF88: .word 0x00010B0F
_0213EF8C: .word 0x0004080F
_0213EF90: .word 0x0024000F
	arm_func_end FUN_ov132_0213ec18

	arm_func_start FUN_ov132_0213ef94
FUN_ov132_0213ef94: ; 0x0213EF94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r8, r0
	mov r5, r7
	mvn r4, #0
_0213EFAC:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0213EFE8
	bl FUN_0206d64c
	cmp r0, #0
	beq _0213EFE8
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r5, [sp, #8]
	bl FUN_ov132_0213dfd4
_0213EFE8:
	add r7, r7, #1
	cmp r7, #0x20
	blt _0213EFAC
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0213ef94

	arm_func_start FUN_ov132_0213effc
FUN_ov132_0213effc: ; 0x0213EFFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r11, _0213F134 ; =0x0209A2C0
	movs r9, r1
	mov r10, r0
	mov r8, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_02040128
	mov r4, r0
	bl FUN_02040170
	mov r5, r0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	cmp r4, #1
	sub r0, r0, #0x2000
	add r4, r1, #0x2000
	bne _0213F05C
	ldr r3, [r5, #0xc]
	ldmia r11, {r1, r2}
	sub r1, r0, r1
	sub r0, r3, r2
	bl FX_Atan2Idx
	ldr r3, [r5, #0xc]
	b _0213F074
_0213F05C:
	ldr r3, [r5, #4]
	ldmia r11, {r1, r2}
	sub r1, r0, r1
	sub r0, r3, r2
	bl FX_Atan2Idx
	ldr r3, [r5, #4]
_0213F074:
	ldmia r11, {r1, r2}
	mov r6, r0
	sub r0, r3, r2
	sub r1, r4, r1
	bl FX_Atan2Idx
	mov r7, r0
	mov r4, #0
	b _0213F128
_0213F094:
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0213922c
	movs r5, r0
	beq _0213F124
	mov r1, r9
	bl FUN_ov16_020f0728
	cmp r0, #0
	beq _0213F0BC
	b _0213F108
_0213F0BC:
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0213F114
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	bne _0213F108
	mov r0, #1
	str r0, [sp]
	ldrh r0, [r11, #0x52]
	mov r1, r6
	mov r2, r7
	mov r3, #1
	bl FUN_020408d8
	cmp r0, #0
	beq _0213F114
_0213F108:
	mov r0, r5
	mov r1, #0
	b _0213F120
_0213F114:
	ldr r0, _0213F138 ; =0x0209C220
	ldrsh r1, [r0, #0x68]
	mov r0, r5
_0213F120:
	bl FUN_0206da84
_0213F124:
	add r4, r4, #1
_0213F128:
	cmp r4, #0x16
	blt _0213F094
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213F134: .word unk_0209A2C0
_0213F138: .word unk_0209C220
	arm_func_end FUN_ov132_0213effc

	arm_func_start FUN_ov132_0213f13c
FUN_ov132_0213f13c: ; 0x0213F13C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, #0
	mov r10, #1
_0213F158:
	mov r0, r9
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r4, r0
	beq _0213F1C0
	mov r1, r6
	bl FUN_ov16_020f0728
	cmp r0, #0
	beq _0213F1C0
	mov r0, r9
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov126_021393a8
	cmp r0, #0
	bne _0213F1C0
	mov r0, r9
	mov r1, r4
	bl FUN_ov126_02138cc8
	ldrh r0, [r0, #0x10]
	tst r0, r8
	beq _0213F1C0
	mov r0, r9
	mov r1, r4
	mov r2, r10
	bl FUN_ov132_0215215c
_0213F1C0:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0213F158
	mov r0, #0
	str r0, [r9, #0x1b0]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov132_0213f13c

	arm_func_start FUN_ov132_0213f1d8
FUN_ov132_0213f1d8: ; 0x0213F1D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r0, [sp, #0x3c]
	mov r7, r2
	str r0, [sp, #0x3c]
	mov r0, #0
	str r1, [sp, #4]
	mov r6, r3
	cmp r7, #0
	ldr r5, [sp, #0x38]
	str r0, [sp, #8]
	ble _0213F218
	cmp r6, #0
	cmpne r5, #0
	bne _0213F224
_0213F218:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213F224:
	mov r2, r0
	cmp r7, #0
	ble _0213F24C
	mvn r1, #0
	sub r0, r1, #0x80000000
_0213F238:
	str r1, [r6, r2, lsl #2]
	str r0, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r7
	blt _0213F238
_0213F24C:
	mov r4, #0
	ldr r2, [sp, #0x40]
	mov r0, r8
	mov r1, r4
	str r2, [sp, #0xc]
	bl FUN_ov132_02143114
	str r0, [sp, #0x10]
_0213F268:
	mov r0, r8
	mov r1, r4
	mov r2, #0
	bl FUN_ov132_02143088
	mov r11, r0
	mov r0, r8
	mov r1, r4
	bl FUN_ov126_0213922c
	mov r10, r0
	cmp r11, #0
	cmpne r10, #0
	ldrnesh r0, [r10, #0x94]
	mvnne r9, #0
	cmpne r0, r9
	beq _0213F330
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x3c]
	str r0, [sp]
	ldr r3, [sp, #0xc]
	mov r0, r8
	mov r1, r10
	bl FUN_ov126_021395f4
	cmp r0, #0
	bne _0213F330
	ldr r2, [sp, #4]
	mov r1, r11
	mov r0, r8
	ldrsh r10, [r10, #0x94]
	bl FUN_01ffba50
	cmp r7, #0
	mov r11, #0
	ble _0213F324
	sub r1, r9, #0x80000000
_0213F2EC:
	cmp r10, r9
	ble _0213F324
	cmp r0, r1
	beq _0213F324
	ldr r3, [r5, r11, lsl #2]
	cmp r3, r0
	ldrgt r2, [r6, r11, lsl #2]
	strgt r10, [r6, r11, lsl #2]
	strgt r0, [r5, r11, lsl #2]
	add r11, r11, #1
	movgt r10, r2
	movgt r0, r3
	cmp r11, r7
	blt _0213F2EC
_0213F324:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0213F330:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0213F268
	ldr r0, [sp, #8]
	cmp r0, r7
	strgt r7, [sp, #8]
	ldr r0, [sp, #8]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0213f1d8

	arm_func_start FUN_ov132_0213f354
FUN_ov132_0213f354: ; 0x0213F354
	sub r0, r1, #5
	cmp r0, #2
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov132_0213f354

	arm_func_start FUN_ov132_0213f368
FUN_ov132_0213f368: ; 0x0213F368
	stmfd sp!, {r3, lr}
	mov r12, #0
	str r12, [sp]
	bl FUN_ov132_0213f37c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_0213f368

	arm_func_start FUN_ov132_0213f37c
FUN_ov132_0213f37c: ; 0x0213F37C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r3
	mov r10, r0
	mov r9, r1
	mov r11, r2
	bl FUN_ov132_02143ca4
	mov r8, r0
	cmp r4, #0
	bne _0213F3D0
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x280]
	cmp r0, #0x80000000
	beq _0213F3D0
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_01ffb1b0
	add r1, r10, r9, lsl #2
	ldr r1, [r1, #0x280]
	add r0, r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213F3D0:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	bne _0213F430
	mov r0, r10
	bl FUN_ov132_02144780
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_0213f354
	cmp r0, #0
	beq _0213F430
	mov r0, r10
	mov r1, r9
	mov r2, #0
	bl FUN_ov132_0213f59c
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x280]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_01ffb1b0
	add r1, r10, r9, lsl #2
	ldr r1, [r1, #0x280]
	add r0, r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213F430:
	ldr r0, _0213F554 ; =0x0209A720
	cmp r9, #0
	ldr r5, [r0, #0xd8]
	bne _0213F454
	ldr r0, _0213F558 ; =0x0209A2C0
	ldr r0, [r0, #4]
	cmp r0, r5
	movgt r5, r0
	b _0213F464
_0213F454:
	ldr r0, _0213F558 ; =0x0209A2C0
	ldr r0, [r0, #4]
	cmp r0, r5
	movlt r5, r0
_0213F464:
	mov r6, #0x80000000
	mov r7, r6
	mov r4, #0
	b _0213F508
_0213F474:
	mov r0, r10
	mov r1, r8
	mov r2, r4
	bl FUN_ov126_0213938c
	cmp r0, #0
	ldrne r1, [r0, #0x84]
	cmpne r1, #0
	beq _0213F504
	cmp r9, #0
	bne _0213F4D4
	cmp r6, #0x80000000
	beq _0213F4B0
	ldr r1, [r1, #4]
	cmp r1, r6
	ble _0213F4C0
_0213F4B0:
	ldr r0, [r0, #0x84]
	mov r7, r6
	ldr r6, [r0, #4]
	b _0213F504
_0213F4C0:
	cmp r7, #0x80000000
	beq _0213F4D0
	cmp r1, r7
	ble _0213F504
_0213F4D0:
	b _0213F4FC
_0213F4D4:
	cmp r6, #0x80000000
	beq _0213F4E8
	ldr r1, [r1, #4]
	cmp r1, r6
	bge _0213F4EC
_0213F4E8:
	b _0213F4B0
_0213F4EC:
	cmp r7, #0x80000000
	beq _0213F4FC
	cmp r1, r7
	bge _0213F504
_0213F4FC:
	ldr r0, [r0, #0x84]
	ldr r7, [r0, #4]
_0213F504:
	add r4, r4, #1
_0213F508:
	cmp r4, #0xb
	blt _0213F474
	cmp r9, #0
	bne _0213F524
	cmp r7, r5
	movgt r5, r7
	b _0213F52C
_0213F524:
	cmp r7, r5
	movlt r5, r7
_0213F52C:
	add r3, r10, r9, lsl #2
	mov r0, r10
	mov r1, r9
	mov r2, r11
	str r5, [r3, #0x280]
	bl FUN_01ffb1b0
	add r1, r10, r9, lsl #2
	ldr r1, [r1, #0x280]
	add r0, r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213F554: .word unk_0209A720
_0213F558: .word unk_0209A2C0
	arm_func_end FUN_ov132_0213f37c

	arm_func_start FUN_ov132_0213f55c
FUN_ov132_0213f55c: ; 0x0213F55C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r0, r1
	mov r5, r2
	mov r4, r3
	bl FUN_02040128
	ldrb r12, [sp, #0x18]
	mov r1, r0
	mov r0, r6
	mov r3, r4
	rsb r2, r5, #0
	str r12, [sp]
	bl FUN_ov132_0213f37c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov132_0213f55c

	arm_func_start FUN_ov132_0213f59c
FUN_ov132_0213f59c: ; 0x0213F59C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	bne _0213F5BC
	bl FUN_01ffb1b0
	ldr r1, _0213F5D0 ; =0x0209A720
	ldr r1, [r1, #0xe8]
	sub r0, r1, r0
	ldmfd sp!, {r3, pc}
_0213F5BC:
	bl FUN_01ffb1b0
	ldr r1, _0213F5D0 ; =0x0209A720
	ldr r1, [r1, #0xe0]
	sub r0, r1, r0
	ldmfd sp!, {r3, pc}
_0213F5D0: .word unk_0209A720
	arm_func_end FUN_ov132_0213f59c

	arm_func_start FUN_ov132_0213f5d4
FUN_ov132_0213f5d4: ; 0x0213F5D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov132_021461f8
	cmp r0, #0
	bne _0213F604
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov132_0213f59c
	ldmfd sp!, {r4, r5, r6, pc}
_0213F604:
	cmp r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bne _0213F62C
	bl FUN_01ffb1b0
	ldr r1, _0213F640 ; =0x0209A720
	ldr r1, [r1, #0x100]
	sub r0, r1, r0
	ldmfd sp!, {r4, r5, r6, pc}
_0213F62C:
	bl FUN_01ffb1b0
	ldr r1, _0213F640 ; =0x0209A720
	ldr r1, [r1, #0xf8]
	sub r0, r1, r0
	ldmfd sp!, {r4, r5, r6, pc}
_0213F640: .word unk_0209A720
	arm_func_end FUN_ov132_0213f5d4

	arm_func_start FUN_ov132_0213f644
FUN_ov132_0213f644: ; 0x0213F644
	mov r0, r1
	ldr r1, _0213F654 ; =0x0209A7FC
	ldr r12, _0213F658 ; =FUN_02040c34
	bx r12
_0213F654: .word unk_0209A7FC
_0213F658: .word FUN_02040c34
	arm_func_end FUN_ov132_0213f644

	arm_func_start FUN_ov132_0213f65c
FUN_ov132_0213f65c: ; 0x0213F65C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, [sp, #0x28]
	mov r9, r2
	mov r10, r1
	mov r8, r3
	sub r5, r8, r10
	sub r4, r4, r9
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	ldr r7, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	bl FX_Atan2Idx
	cmp r4, #0
	rsblt r4, r4, #0
	cmp r5, #0
	rsblt r5, r5, #0
	cmp r5, r7
	mov r11, r0
	cmplt r4, r7
	bge _0213F6D8
	ldr r0, [sp]
	mov r1, r5
	mov r2, r4
	bl FUN_01ffba80
	cmp r0, r7
	ldrlt r0, [sp, #0x28]
	strlt r8, [r6]
	strlt r0, [r6, #4]
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213F6D8:
	mov r0, r11, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	ldr r1, _0213F738 ; =FX_SinCosTable_
	mov r2, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r2, [r1, r2]
	ldrsh r1, [r1, r0]
	mov r0, #1
	smull r2, r3, r7, r2
	adds r4, r2, #0x800
	smull r2, r1, r7, r1
	adc r3, r3, #0
	adds r2, r2, #0x800
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	add r3, r10, r4
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r3, [r6]
	add r1, r9, r2
	str r1, [r6, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213F738: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0213f65c

	arm_func_start FUN_ov132_0213f73c
FUN_ov132_0213f73c: ; 0x0213F73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldr r4, [r9, #0x84]
	mov r10, r0
	ldr r0, [sp, #0x28]
	ldr r1, [r4]
	mov r8, r2
	str r0, [sp, #0x28]
	subs r1, r1, r8
	ldr r0, [r4, #4]
	mov r11, r3
	rsbmi r1, r1, #0
	subs r2, r0, r11
	rsbmi r2, r2, #0
	mov r0, r10
	mov r7, #0
	bl FUN_01ffba80
	mov r6, r0
	mov r5, #0x1f
_0213F788:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0213F804
	bl FUN_0206d688
	cmp r0, #0
	ldrnesh r1, [r9, #0x94]
	ldrnesh r0, [r4, #0x94]
	cmpne r1, r0
	beq _0213F804
	ldr r2, [sp, #0x28]
	mov r0, r10
	mov r1, r4
	mov r3, r9
	bl FUN_ov126_021393a8
	cmp r0, #0
	bne _0213F804
	ldr r2, [r4, #0x84]
	ldr r0, [r2]
	subs r1, r0, r8
	ldr r0, [r2, #4]
	rsbmi r1, r1, #0
	subs r2, r0, r11
	rsbmi r2, r2, #0
	cmp r1, r6
	cmple r2, r6
	bgt _0213F804
	mov r0, r10
	bl FUN_01ffba80
	cmp r0, r6
	addlt r7, r7, #1
_0213F804:
	subs r5, r5, #1
	bpl _0213F788
	add r0, r7, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0213f73c

	arm_func_start FUN_ov132_0213f814
FUN_ov132_0213f814: ; 0x0213F814
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _0213FA00 ; =0x000186A0
	mov r8, r1
	mov r9, r0
	ldr r10, [sp, #0x20]
	mov r0, r8
	mov r7, r2
	mov r6, r3
	mov r5, r4
	bl FUN_02040118
	mov r1, r0
	mov r0, r9
	mov r2, r10
	bl FUN_ov132_02140b50
	cmp r0, #0
	beq _0213F894
	ldr r1, [r7, #4]
	ldr r2, [r10, #4]
	mov r0, r9
	mov r3, r8
	bl FUN_01ffb9b0
	cmp r0, #0
	subne r4, r4, #0x710
	ldr r1, [r6, #4]
	ldr r2, [r10, #4]
	mov r0, r9
	mov r3, r8
	subne r4, r4, #0x2000
	bl FUN_01ffb9b0
	cmp r0, #0
	subne r5, r5, #0x710
	subne r5, r5, #0x2000
_0213F894:
	ldrsh r2, [r7, #0x10]
	ldrsh r1, [r6, #0x10]
	mov r0, #0xa
	smulbb r3, r2, r0
	smulbb r2, r1, r0
	ldr r12, [r7, #0xc]
	ldr r10, [r6, #0xc]
	ldr r0, _0213FA04 ; =0x0209A720
	mov lr, r12, asr #0xb
	sub r5, r5, r2
	sub r3, r4, r3
	ldrsh r4, [r6, #0x12]
	mov r1, r10, asr #0xb
	add r12, r12, lr, lsr #20
	add lr, r10, r1, lsr #20
	ldrsh r1, [r7, #0x12]
	ldr r2, [r7]
	ldr r0, [r0, #0xd4]
	sub r1, r3, r1, lsl #1
	subs r2, r2, r0
	rsbmi r2, r2, #0
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	mov r10, r12, asr #0xc
	sub r5, r5, r4, lsl #1
	add r4, r1, r10, lsl #2
	mov r3, lr, asr #0xc
	add r5, r5, r3, lsl #2
	mov r3, r0, asr #0xc
	ldr r1, _0213FA04 ; =0x0209A720
	ldr r2, [r6]
	ldr r0, [r1, #0xd4]
	mov r10, #0
	subs r1, r2, r0
	rsbmi r1, r1, #0
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	sub r4, r4, r3, lsl #1
	mov r3, r0, asr #0xc
	mov r0, r9
	mov r1, r8
	mov r2, r10
	sub r5, r5, r3, lsl #1
	bl FUN_ov132_0213f5d4
	ldr r1, [r7, #4]
	mov r2, r10
	subs r0, r1, r0
	mov r0, r9
	mov r1, r8
	bpl _0213F970
	bl FUN_ov132_0213f5d4
	ldr r1, [r7, #4]
	sub r0, r1, r0
	rsb r1, r0, #0
	b _0213F97C
_0213F970:
	bl FUN_ov132_0213f5d4
	ldr r1, [r7, #4]
	sub r1, r1, r0
_0213F97C:
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r7, #0
	mov r10, r0, asr #0xc
	mov r3, #0xa
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mla r4, r10, r3, r4
	bl FUN_ov132_0213f5d4
	ldr r1, [r6, #4]
	mov r2, r7
	subs r0, r1, r0
	mov r0, r9
	mov r1, r8
	bpl _0213F9D0
	bl FUN_ov132_0213f5d4
	ldr r1, [r6, #4]
	sub r0, r1, r0
	rsb r1, r0, #0
	b _0213F9DC
_0213F9D0:
	bl FUN_ov132_0213f5d4
	ldr r1, [r6, #4]
	sub r1, r1, r0
_0213F9DC:
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r1, r0, asr #0xc
	mov r0, #0xa
	mla r0, r1, r0, r5
	cmp r4, r0
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0213FA00: .word 0x000186A0
_0213FA04: .word unk_0209A720
	arm_func_end FUN_ov132_0213f814

	arm_func_start FUN_ov132_0213fa08
FUN_ov132_0213fa08: ; 0x0213FA08
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r3
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0213FA78 ; =0x0209A2C0
	ldr r0, _0213FA7C ; =0x0209BA20
	ldr r2, [r1]
	str r2, [r4]
	ldr r1, [r1, #4]
	str r1, [r4, #4]
	bl FUN_020731a4
	cmp r0, #0
	cmpne r5, #0x30000
	mov r0, r6
	movgt r5, #0x30000
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r7
	bl FUN_ov132_02143cd0
	cmp r0, #1
	ldr r0, [r4, #4]
	addeq r0, r0, r5
	streq r0, [r4, #4]
	subne r0, r0, r5
	strne r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0213FA78: .word unk_0209A2C0
_0213FA7C: .word unk_0209BA20
	arm_func_end FUN_ov132_0213fa08

	arm_func_start FUN_ov132_0213fa80
FUN_ov132_0213fa80: ; 0x0213FA80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r0, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020f07d0
	cmp r0, #0
	moveq r7, #0xa000
	moveq r8, #0xc000
	movne r7, #0x2000
	mov r0, #0x4000
	movne r8, #0x4000
	bl FUN_ov16_020ef928
	add r0, r7, r0
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	mov r0, r7
	mov r1, r8
	mov r2, #0x2000
	bl FUN_020405a4
	cmp r0, #0
	addeq r0, r7, #0x8000
	moveq r0, r0, lsl #0x10
	moveq r7, r0, lsr #0x10
	ldr r1, _0213FB04 ; =0x0209A2C0
	mov r0, r6
	mov r2, r7
	mov r3, r5
	str r4, [sp]
	bl FUN_ov132_02140834
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0213FB04: .word unk_0209A2C0
	arm_func_end FUN_ov132_0213fa80

	arm_func_start FUN_ov132_0213fb08
FUN_ov132_0213fb08: ; 0x0213FB08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r4, #0
	ldr r5, [sp, #0x60]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r6, r1
	mov r2, r4
	mov r3, r4
	mov r7, r0
	str r4, [sp]
	str r5, [sp, #0x60]
	bl FUN_ov132_0213f55c
	ldr r2, [r6, #0x84]
	str r0, [sp, #0x24]
	ldr r1, [r2]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x20]
	ldr r1, [r2, #4]
	str r1, [sp, #0x1c]
	bl FUN_020404cc
	movs r0, r5
	subne r1, r4, #1
	strne r1, [r0]
	ldr r1, _0213FEE4 ; =0x0209A720
	mov r0, r7
	ldr r2, [r1, #0xd8]
	mov r1, r6
	bl FUN_01ffb9e4
	cmp r0, #0
	addne sp, sp, #0x38
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl FUN_ov16_020f0810
	str r0, [sp, #0x18]
	mov r4, #0
	b _0213FDB8
_0213FBA0:
	ldr r1, [sp, #0x18]
	mov r0, r7
	mov r2, r4
	bl FUN_ov126_0213938c
	movs r5, r0
	beq _0213FDB4
	bl FUN_0206d9f8
	cmp r0, #0
	bne _0213FDB4
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov126_02139a30
	cmp r0, #0
	bne _0213FDB4
	ldr r2, _0213FEE4 ; =0x0209A720
	mov r0, r7
	ldr r2, [r2, #0xd8]
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _0213FDB4
	mov r0, r7
	mov r1, r5
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	bne _0213FC34
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r5
	mov r2, #0
	mov r3, #1
	bl FUN_ov126_02130914
	cmp r0, #0
	beq _0213FDB4
_0213FC34:
	ldr r2, [sp, #0x24]
	mov r0, r7
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _0213FDB4
	ldr r1, [r5, #0x84]
	mov r0, r7
	ldrh r2, [r1, #0x18]
	ldr r12, [r1]
	ldr r1, [r1, #4]
	str r1, [sp, #0x28]
	mov r1, r2, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r3, r1, lsl #1
	ldr r1, _0213FEE8 ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	ldrsh r10, [r1, r3]
	ldrsh r3, [r1, r2]
	mov r2, #0x18000
	umull r9, r8, r10, r2
	mov lr, r10, asr #0x1f
	mov r2, #0x18000
	mla r8, lr, r2, r8
	adds r9, r9, #0x800
	adc r2, r8, #0
	mov r8, r9, lsr #0xc
	orr r8, r8, r2, lsl #20
	mov r2, #0x18000
	umull r10, r9, r3, r2
	mov r11, r3, asr #0x1f
	mov r2, #0x18000
	adds r3, r10, #0x800
	mla r9, r11, r2, r9
	adc r2, r9, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	ldr r2, [sp, #0x28]
	mov r1, r5
	add r9, r2, r3
	mov r2, r9
	add r8, r12, r8
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _0213FDB4
	mov r0, r8
	mov r1, r9
	bl FUN_02040644
	cmp r0, #0
	beq _0213FDB4
	ldr r0, [r6, #0x84]
	ldr r0, [r0, #4]
	subs r2, r9, r0
	ldr r0, [r6, #0x84]
	rsbmi r2, r2, #0
	ldr r0, [r0]
	subs r1, r8, r0
	rsbmi r1, r1, #0
	mov r0, r7
	bl FUN_01ffba80
	cmp r0, #0x20000
	blt _0213FDB4
	cmp r0, #0x78000
	bgt _0213FDB4
	str r8, [sp, #0x30]
	str r9, [sp, #0x34]
	mov r0, #0x20000
	str r0, [sp]
	mov r0, r7
	add r1, sp, #0x30
	mov r2, r6
	mov r3, #0x10000
	bl FUN_ov132_02152208
	cmp r0, #0
	bne _0213FDB4
	mov r0, #0xc00
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r1, r5
	str r0, [sp, #4]
	mov r0, r7
	mov r2, r8
	mov r3, r9
	bl FUN_01ffb56c
	cmp r0, #0
	beq _0213FDB4
	ldr r0, [sp, #0x10]
	stmia r0, {r8, r9}
	ldr r0, [sp, #0x60]
	add sp, sp, #0x38
	cmp r0, #0
	ldrnesh r1, [r5, #0x94]
	strne r1, [r0]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213FDB4:
	add r4, r4, #1
_0213FDB8:
	cmp r4, #0xb
	blt _0213FBA0
	mov r0, r6
	mov r11, #0
	bl FUN_02040148
	str r0, [sp, #0x18]
	mov r4, r11
	b _0213FED0
_0213FDD8:
	ldr r1, [sp, #0x18]
	mov r0, r7
	mov r2, r4
	bl FUN_ov126_0213938c
	movs r5, r0
	beq _0213FECC
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_01ffba68
	mov r10, r0
	cmp r10, #0x20000
	bgt _0213FECC
	ldr r0, [r5, #0x84]
	ldr r2, [r0]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x20]
	sub r0, r2, r0
	add r8, r2, r0
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	add r9, r1, r0
	mov r0, r8
	mov r1, r9
	bl FUN_02040644
	cmp r0, #0
	beq _0213FECC
	mov r0, r6
	bl FUN_ov16_020f0810
	ldrsh r3, [r6, #0x94]
	mov r1, r8
	mov r2, r9
	str r3, [sp]
	stmib sp, {r0, r11}
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	mov r0, r7
	mov r3, #3
	bl FUN_ov132_0214c60c
	mov r5, r0
	bl FUN_0206d9f8
	cmp r0, #0
	bne _0213FECC
	ldr r0, [sp, #0x2c]
	cmp r0, r10
	bgt _0213FECC
	mov r0, #0xc00
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r1, r5
	str r0, [sp, #4]
	mov r0, r7
	mov r2, r8
	mov r3, r9
	bl FUN_01ffb56c
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	addne sp, sp, #0x38
	stmneia r0, {r8, r9}
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213FECC:
	add r4, r4, #1
_0213FED0:
	cmp r4, #0xb
	blt _0213FDD8
	mov r0, #0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213FEE4: .word unk_0209A720
_0213FEE8: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0213fb08

	arm_func_start FUN_ov132_0213feec
FUN_ov132_0213feec: ; 0x0213FEEC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r6, r2
	mov r5, r3
	mov r7, r0
	mov r11, r1
	tst r6, #0x200000
	ldr r4, [sp, #0x38]
	ldr r9, [r5, #0x84]
	mvn r8, #0
	mov r10, #0
	beq _0213FF2C
	mov r1, r5
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	addne r10, r10, #1
_0213FF2C:
	mov r0, r5
	bl FUN_0206d5f0
	bl FUN_02040138
	str r8, [sp]
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	add r1, sp, #0x10
	str r1, [sp, #0xc]
	mov r0, r7
	ldmia r9, {r1, r2}
	bl FUN_ov132_0214c60c
	ldr r0, [sp, #0x10]
	cmp r0, #0x28000
	ble _0213FF7C
	add r10, r10, #1
	cmp r0, #0x50000
	addgt r10, r10, #1
	tst r6, #0x40000
	addne r10, r10, #1
_0213FF7C:
	mov r0, r11
	bl FUN_0206d5f0
	mov r8, r0
	ldr r2, [r9, #4]
	mov r0, r7
	mov r1, r11
	bl FUN_01ffb9e4
	cmp r0, #0
	mov r0, #0x200
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r5
	addeq r10, r10, #1
	ldmia r9, {r2, r3}
	bl FUN_01ffb56c
	cmp r0, #0
	mov r0, r11
	addne r10, r10, #1
	bl FUN_02040128
	bl FUN_02040188
	add r1, r7, r8, lsl #2
	ldr r1, [r1, #0x28c]
	tst r1, #0x10
	beq _0214001C
	ldr r1, [r0, #8]
	ldr r0, [r0]
	ldr r2, [r9]
	add r0, r0, r1
	cmp r2, r0, asr #1
	ble _02140008
	add r10, r10, #1
	cmp r2, r1
	addgt r10, r10, #1
_02140008:
	ldr r0, [r4]
	cmp r2, r0
	movgt r0, #1
	mvnle r0, #0
	b _02140058
_0214001C:
	tst r1, #0x20
	beq _0214005C
	ldr r1, [r0]
	ldr r0, [r0, #8]
	ldr r2, [r9]
	add r0, r1, r0
	cmp r2, r0, asr #1
	bge _02140048
	add r10, r10, #1
	cmp r2, r1
	addlt r10, r10, #1
_02140048:
	ldr r0, [r4]
	cmp r2, r0
	movlt r0, #1
	mvnge r0, #0
_02140058:
	add r10, r10, r0
_0214005C:
	tst r6, #0x10000
	beq _0214007C
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	cmp r1, r0
	movlt r0, #1
	mvnge r0, #0
	add r10, r10, r0
_0214007C:
	tst r6, #0x20000
	beq _0214009C
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	cmp r1, r0
	movgt r0, #1
	mvnle r0, #0
	add r10, r10, r0
_0214009C:
	mov r0, r7
	mov r1, r8
	bl FUN_ov132_02146348
	cmp r0, #0
	beq _021400D4
	cmp r0, #1
	beq _021400C4
	cmp r0, #2
	beq _021400CC
	b _021400D4
_021400C4:
	mov r8, #2
	b _021400D8
_021400CC:
	mov r8, #0
	b _021400D8
_021400D4:
	mov r8, #1
_021400D8:
	tst r6, #0x80000
	beq _02140108
	mov r0, r5
	bl FUN_ov16_020f07d0
	mov r3, r0
	ldr r1, [r4, #4]
	ldr r2, [r9, #4]
	mov r0, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	addeq r10, r10, r8
	subne r10, r10, r8
_02140108:
	mov r0, #3
	bl FUN_ov16_020ef928
	add r0, r10, r0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0213feec

	arm_func_start FUN_ov132_0214011c
FUN_ov132_0214011c: ; 0x0214011C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r9, r1
	mov r10, r0
	mov r0, r9
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r8, [sp, #0x70]
	mvn r6, #0
	bl FUN_ov16_020f0810
	mov r0, r9
	bl FUN_ov16_020f07d0
	ldr r1, _0214043C ; =0x0209A720
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xd4]
	mov r0, #0
	str r2, [sp, #0x38]
	ldr r1, [r1, #0xd8]
	str r0, [sp, #0x14]
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x14]
	mov r0, r9
	sub r11, r1, #0x80000001
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0214019C
	mov r0, r10
	bl FUN_ov132_021448f4
	cmp r0, #0
	ldreq r0, [sp, #0x14]
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214019C:
	and r0, r8, #0x10000
	str r0, [sp, #0x20]
	and r0, r8, #0x800000
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x68]
	mov r5, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x28]
	b _021402E4
_021401C4:
	ldr r0, [sp, #0x1c]
	mov r1, r5, lsl #1
	ldrh r0, [r0, r1]
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _021402E0
	bl FUN_0206d9f8
	cmp r0, #0
	bne _021402E0
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov126_02139a30
	cmp r0, #0
	bne _021402E0
	ldr r3, [r4, #0x84]
	ldr r1, _02140440 ; =0x0209A2C0
	ldr r2, [r3]
	mov r0, r10
	str r2, [sp, #0x30]
	ldr r3, [r3, #4]
	add r2, sp, #0x30
	str r3, [sp, #0x34]
	bl FUN_01ffba50
	mov r7, r0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02140240
	cmp r7, #0x20000
	blt _021402E0
_02140240:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	bl FUN_02040644
	cmp r0, #0
	beq _021402E0
	str r8, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r9
	mov r2, r4
	add r3, sp, #0x30
	bl FUN_01ffb43c
	cmp r0, #0
	beq _021402E0
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02140294
	mov r0, #0x64
	bl FUN_ov16_020ef928
	b _021402B0
_02140294:
	add r0, sp, #0x38
	stmia sp, {r0, r7, r11}
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r4
	bl FUN_ov132_0213feec
_021402B0:
	cmp r6, #0
	blt _021402C4
	ldr r1, [sp, #0x14]
	cmp r0, r1
	ble _021402E0
_021402C4:
	ldrsh r6, [r4, #0x94]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	mov r11, r7
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
_021402E0:
	add r5, r5, #1
_021402E4:
	ldr r0, [sp, #0x28]
	cmp r5, r0
	blt _021401C4
	mvn r1, #0
	cmp r6, r1
	mov r4, #0
	bgt _02140324
	ldr r0, [sp, #0x10]
	str r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x80000000
	str r1, [r0]
	str r1, [r0, #4]
	add sp, sp, #0x40
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02140324:
	mov r0, r6
	bl FUN_ov16_020efa80
	ldr r3, _02140444 ; =0x00000266
	mov r1, r0
	umull r2, r5, r11, r3
	adds r0, r2, #0x800
	mov r2, r0, lsr #0xc
	mla r5, r11, r4, r5
	mov r0, r11, asr #0x1f
	mla r5, r0, r3, r5
	adc r0, r5, r4
	orr r2, r2, r0, lsl #20
	tst r8, #0x4000
	mov r3, #0x800
	beq _0214037C
	mov r0, #0x10000
	stmia sp, {r0, r2}
	add r2, sp, #0x38
	mov r0, r10
	mov r3, r2
	bl FUN_ov132_0214d5f4
	b _02140414
_0214037C:
	tst r8, #0x2000
	beq _021403F4
	ldr r1, [r9, #0x84]
	ldr r0, _02140448 ; =FX_SinCosTable_
	ldrh r8, [r1, #0x18]
	ldr r7, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	mov r8, r8, asr #4
	mov r8, r8, lsl #1
	add r8, r8, #1
	mov r8, r8, lsl #1
	ldrsh r8, [r0, r8]
	smull r9, r8, r2, r8
	adds r9, r9, r3
	adc r8, r8, r4
	mov r9, r9, lsr #0xc
	orr r9, r9, r8, lsl #20
	add r7, r7, r9
	str r7, [sp, #0x38]
	ldrh r1, [r1, #0x18]
	mov r1, r1, asr #4
	mov r1, r1, lsl #2
	ldrsh r0, [r0, r1]
	smull r1, r0, r2, r0
	adds r1, r1, r3
	adc r0, r0, r4
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r5, r1
	b _02140410
_021403F4:
	tst r8, #0x1000
	beq _02140414
	ldr r1, [sp, #0x18]
	mov r0, r10
	bl FUN_01ffb1b0
	ldr r1, [sp, #0x3c]
	add r0, r1, r0
_02140410:
	str r0, [sp, #0x3c]
_02140414:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r6, [r0]
	ldr r2, [sp, #0x38]
	mov r0, #1
	str r2, [r1]
	ldr r2, [sp, #0x3c]
	str r2, [r1, #4]
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214043C: .word unk_0209A720
_02140440: .word unk_0209A2C0
_02140444: .word 0x00000266
_02140448: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0214011c

	arm_func_start FUN_ov132_0214044c
FUN_ov132_0214044c: ; 0x0214044C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020f0810
	ldr r0, _021404C0 ; =0x00060001
	add r4, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	mov r3, #0xb
	bl FUN_ov126_02138cec
	str r4, [sp]
	str r0, [sp, #4]
	ldr r12, [sp, #0x40]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r0, r8
	str r12, [sp, #8]
	bl FUN_ov132_0214011c
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021404C0: .word 0x00060001
	arm_func_end FUN_ov132_0214044c

	arm_func_start FUN_ov132_021404c4
FUN_ov132_021404c4: ; 0x021404C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	mov r8, r1
	mov r9, r0
	mov r0, r8
	mov r7, r2
	mov r6, r3
	bl FUN_ov16_020f0810
	ldr r0, _0214058C ; =0x00060010
	add r4, sp, #0xc
	str r0, [sp]
	mov r10, #0
	mov r0, r9
	mov r1, r8
	mov r2, r4
	mov r3, #0xb
	str r10, [sp, #4]
	bl FUN_ov126_02138cec
	movs r5, r0
	addeq sp, sp, #0x24
	moveq r0, r10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r10, _02140590 ; =0x0209BA20
	mov r12, #1
	mov r0, r10
	mov r1, r4
	mov r2, r5
	mov r3, #0xa1
	str r12, [sp]
	bl FUN_0204ee94
	mov r0, r10
	bl FUN_020731a4
	cmp r0, #0
	bne _02140558
	cmp r5, #3
	movgt r5, #3
	b _02140560
_02140558:
	cmp r5, #2
	movgt r5, #2
_02140560:
	add r0, sp, #0xc
	stmia sp, {r0, r5}
	ldr r4, _02140594 ; =0x0081080F
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	str r4, [sp, #8]
	bl FUN_ov132_0214011c
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0214058C: .word 0x00060010
_02140590: .word unk_0209BA20
_02140594: .word 0x0081080F
	arm_func_end FUN_ov132_021404c4

	arm_func_start FUN_ov132_02140598
FUN_ov132_02140598: ; 0x02140598
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r7, _02140670 ; =0x0209A2C0
	add r4, sp, #0xc
	mov r5, r1
	str r4, [sp]
	mov r1, r7
	mov r3, #0x32000
	mov r6, r0
	mov r8, r2
	ldr r4, _02140674 ; =0x000186A0
	bl FUN_ov132_02140d20
	add r12, sp, #4
	mov r0, r6
	mov r1, r7
	mov r2, r8
	mov r3, #0x96000
	str r12, [sp]
	bl FUN_ov132_02140d20
	ldr r1, _02140678 ; =0x00010011
	mov r0, r6
	str r1, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, r5
	bl FUN_01ffb1c0
	cmp r0, #0
	ldr r2, [sp, #8]
	mov r0, r6
	mov r1, r5
	movne r4, #1
	bl FUN_01ffb9e4
	cmp r0, #0
	ldr r1, [r5, #0x84]
	beq _0214063C
	ldr r0, [sp, #8]
	ldr r1, [r1, #4]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	add r4, r4, r0, asr #12
	b _02140650
_0214063C:
	ldr r0, [sp, #8]
	ldr r1, [r1, #4]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	sub r4, r4, r0, asr #12
_02140650:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl FUN_02040644
	cmp r0, #0
	addeq r4, r4, #0xa
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02140670: .word unk_0209A2C0
_02140674: .word 0x000186A0
_02140678: .word 0x00010011
	arm_func_end FUN_ov132_02140598

	arm_func_start FUN_ov132_0214067c
FUN_ov132_0214067c: ; 0x0214067C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r9, r1
	mov r10, r0
	mov r0, r9
	str r2, [sp, #4]
	bl FUN_0206d6c4
	cmp r0, #0
	beq _021406CC
	mov r0, r10
	bl FUN_ov132_021448f4
	cmp r0, #0
	bne _021406CC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021406C0
	bl FUN_020404cc
_021406C0:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021406CC:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	movle r0, #0x8c000
	strle r0, [sp, #0x38]
	mov r0, r9
	bl FUN_ov16_020f07d0
	cmp r0, #0
	mov r8, #0x4000
	mov r0, r9
	movne r8, #0xc000
	bl FUN_ov16_020f07d0
	mov r7, #0
	mov r11, #0xc000
	cmp r0, #0
	movne r11, #0x4000
	mov r5, r7
	b _02140750
_02140710:
	mov r0, r5, lsl #0x1c
	mov r6, r0, lsr #0x10
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FUN_ov132_02140598
	mov r4, r0
	ldr r2, _02140794 ; =0x00002AAA
	mov r0, r6
	mov r1, r8
	bl FUN_020405a4
	cmp r0, #0
	cmpne r4, r7
	movgt r11, r6
	movgt r7, r4
	add r5, r5, #1
_02140750:
	cmp r5, #0x10
	blt _02140710
	add r4, sp, #8
	ldr r3, [sp, #0x38]
	ldr r1, _02140798 ; =0x0209A2C0
	mov r0, r10
	mov r2, r11
	str r4, [sp]
	bl FUN_ov132_02140d20
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	mov r0, #1
	str r2, [r1]
	ldr r2, [sp, #0xc]
	str r2, [r1, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02140794: .word 0x00002AAA
_02140798: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214067c

	arm_func_start FUN_ov132_0214079c
FUN_ov132_0214079c: ; 0x0214079C
	ldrh r0, [r1]
	mov r3, #0
	add r0, r0, #0xfd
	add r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	cmp r2, #0xb
	bhi _021407CC
	mov r1, #1
	add r0, r1, #0x920
	tst r0, r1, lsl r2
	movne r3, r1
_021407CC:
	mov r0, #1
	cmp r3, #0
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov132_0214079c

	arm_func_start FUN_ov132_021407dc
FUN_ov132_021407dc: ; 0x021407DC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, [r3]
	ldr r5, [sp, #0x10]
	ldmia r2, {r0, r4}
	ldr r2, [r3, #4]
	sub r3, r12, r0
	mul r3, r5, r3
	sub r2, r2, r4
	mul lr, r5, r2
	ldr r12, _02140830 ; =0x51EB851F
	mov r2, r3, lsr #0x1f
	smull r3, r5, r12, r3
	add r5, r2, r5, asr #5
	add r3, r0, r5
	smull r0, r2, r12, lr
	mov r0, lr, lsr #0x1f
	add r2, r0, r2, asr #5
	add r0, r4, r2
	str r3, [r1]
	str r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02140830: .word 0x51EB851F
	arm_func_end FUN_ov132_021407dc

	arm_func_start FUN_ov132_02140834
FUN_ov132_02140834: ; 0x02140834
	stmfd sp!, {r4, lr}
	mov r0, r2, asr #4
	mov r4, r0, lsl #1
	add r0, r4, #1
	ldr r2, _021408A0 ; =FX_SinCosTable_
	mov r12, r0, lsl #1
	mov r0, r4, lsl #1
	ldrsh r12, [r2, r12]
	ldrsh r2, [r2, r0]
	ldr r0, [r1]
	smull r12, lr, r3, r12
	adds r4, r12, #0x800
	smull r12, r2, r3, r2
	adc lr, lr, #0
	adds r3, r12, #0x800
	mov r4, r4, lsr #0xc
	orr r4, r4, lr, lsl #20
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	ldr r12, [sp, #8]
	add r4, r0, r4
	ldr r0, [r1, #4]
	orr r3, r3, r2, lsl #20
	str r4, [r12]
	add r0, r0, r3
	str r0, [r12, #4]
	ldmfd sp!, {r4, pc}
_021408A0: .word FX_SinCosTable_
	arm_func_end FUN_ov132_02140834

	arm_func_start FUN_ov132_021408a4
FUN_ov132_021408a4: ; 0x021408A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	mov r4, #0
	bl FUN_02040128
	mov r1, r0
	mov r0, r8
	bl FUN_ov132_021461f8
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x1000
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl FUN_ov16_020f07d0
	mov r3, r0
	ldr r1, [sp, #0x4c]
	mov r0, r8
	mov r2, r5
	bl FUN_01ffb9b0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x50]
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _02140A40 ; =0x0209A720
	mov r0, r7
	ldr r2, [r1, #0xec]
	sub r2, r2, #0x4000
	str r2, [sp, #0x18]
	ldr r1, [r1, #0xf4]
	add r1, r1, #0x4000
	str r1, [sp, #0x20]
	bl FUN_02040128
	mov r1, r0
	mov r0, r8
	mov r2, r4
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x4c]
	str r0, [sp, #0x24]
	str r1, [sp, #0x14]
	mov r0, r8
	mov r1, r7
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	bl FUN_ov126_0212f36c
	add r9, sp, #8
	mov r1, r0, lsl #1
	mov r0, r9
	bl FUN_0203fb5c
	mov r0, r7
	bl FUN_02040128
	mov r3, r0
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	mov r0, r8
	bl FUN_ov132_0214ecd4
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, sp, #0x18
	add r2, sp, #0
	mov r0, r9
	bl FUN_0203fdf0
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02140A34
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_ov132_02140a44
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02140A34:
	mov r0, #1
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02140A40: .word unk_0209A720
	arm_func_end FUN_ov132_021408a4

	arm_func_start FUN_ov132_02140a44
FUN_ov132_02140a44: ; 0x02140A44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r8, _02140B04 ; =0x0209A720
	mov r6, r1
	ldr r4, [r8, #0xec]
	ldr r1, [r8, #0xf4]
	mov r7, r0
	sub r12, r4, #0x4000
	add r1, r1, #0x4000
	mov r0, r6
	mov r5, r2
	mov r4, r3
	str r12, [sp, #4]
	str r1, [sp, #0xc]
	bl FUN_02040128
	mov r1, r0
	mov r0, r7
	mov r2, #0
	bl FUN_ov132_0213f5d4
	ldr r1, [r8, #0xec]
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	cmp r5, r1
	bge _02140AC4
	str r0, [sp]
	ldr r3, [r8, #0xec]
_02140AAC:
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_01ffba30
	mov r4, r0
	b _02140AE4
_02140AC4:
	ldr r1, [r8, #0xf4]
	cmp r5, r1
	ble _02140ADC
	str r0, [sp]
	ldr r3, [r8, #0xf4]
	b _02140AAC
_02140ADC:
	subs r4, r0, r4
	rsbmi r4, r4, #0
_02140AE4:
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0212f36c
	cmp r4, r0
	movgt r0, #0
	movle r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02140B04: .word unk_0209A720
	arm_func_end FUN_ov132_02140a44

	arm_func_start FUN_ov132_02140b08
FUN_ov132_02140b08: ; 0x02140B08
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x198]
	ldr r3, [r0]
	ldr r3, [r3, #0x20]
	blx r3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02140b08

	arm_func_start FUN_ov132_02140b20
FUN_ov132_02140b20: ; 0x02140B20
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x198]
	ldr r12, [r0]
	ldr r12, [r12, #0x24]
	blx r12
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02140b20

	arm_func_start FUN_ov132_02140b38
FUN_ov132_02140b38: ; 0x02140B38
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x198]
	ldr r12, [r0]
	ldr r12, [r12, #0x28]
	blx r12
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02140b38

	arm_func_start FUN_ov132_02140b50
FUN_ov132_02140b50: ; 0x02140B50
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x198]
	ldr r3, [r0]
	ldr r3, [r3, #0x2c]
	blx r3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02140b50

	arm_func_start FUN_ov132_02140b68
FUN_ov132_02140b68: ; 0x02140B68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x84
	movs r8, r1
	mov r9, r0
	mov r10, #0
	mov r7, r2
	mov r6, r3
	addeq sp, sp, #0x84
	moveq r0, r10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, [r8, #0x84]
	cmp r5, #0
	addeq sp, sp, #0x84
	moveq r0, r10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_02040128
	mov r1, r0
	mov r0, r9
	bl FUN_ov132_021461f8
	cmp r0, #0
	addeq sp, sp, #0x84
	moveq r0, r10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #0x198]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0x84
	moveq r0, r10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_02040148
	mov r1, r0
	mov r0, r9
	bl FUN_ov132_021448c8
	cmp r0, #0
	beq _02140C24
	ldr r2, [r0, #4]
	mov r0, r9
	mov r1, r8
	bl FUN_01ffb9e4
	cmp r0, #0
	addne sp, sp, #0x84
	movne r0, r10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02140C24:
	add r4, sp, #0x24
	ldr r0, _02140D18 ; =0x0209A2C0
	mov r1, r4
	mov r2, #0x60
	bl MI_CpuCopy8
	mov r0, r9
	bl FUN_ov132_02144780
	stmia sp, {r0, r4, r10}
	mov r1, r7
	mov r2, r6
	mov r0, r9
	mov r3, #0x11
	bl FUN_ov126_0212cbdc
	cmp r0, #0
	addeq sp, sp, #0x84
	moveq r0, r10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_02040128
	add r6, sp, #0xc
	mov r2, r0
	mov r0, r9
	mov r1, r4
	mov r3, #0x1e
	str r6, [sp]
	bl FUN_ov126_0212c1cc
	mov r0, r8
	bl FUN_02040128
	cmp r0, #0
	bne _02140CD0
	ldr r0, _02140D1C ; =0x0209A720
	ldr r1, [r0, #0x13c]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0x140]
	str r1, [sp, #0x18]
	ldr r1, [r0, #0x144]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x148]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0xfc]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x104]
	b _02140D00
_02140CD0:
	ldr r0, _02140D1C ; =0x0209A720
	ldr r1, [r0, #0x12c]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0x130]
	str r1, [sp, #0x18]
	ldr r1, [r0, #0x134]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x138]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0xec]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0xf4]
_02140D00:
	str r0, [sp, #0x1c]
	add r0, sp, #0x14
	mov r1, r5
	bl FUN_02040764
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02140D18: .word unk_0209A2C0
_02140D1C: .word unk_0209A720
	arm_func_end FUN_ov132_02140b68

	arm_func_start FUN_ov132_02140d20
FUN_ov132_02140d20: ; 0x02140D20
	stmfd sp!, {r4, lr}
	mov r0, r2, asr #4
	mov r4, r0, lsl #1
	add r0, r4, #1
	ldr r2, _02140D94 ; =FX_SinCosTable_
	mov r12, r0, lsl #1
	mov r0, r4, lsl #1
	ldrsh r12, [r2, r12]
	ldrsh r2, [r2, r0]
	ldr r0, [r1]
	smull r12, lr, r3, r12
	adds r4, r12, #0x800
	smull r12, r2, r3, r2
	adc lr, lr, #0
	adds r3, r12, #0x800
	mov r4, r4, lsr #0xc
	orr r4, r4, lr, lsl #20
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	ldr r12, [sp, #8]
	sub r4, r0, r4
	ldr r0, [r1, #4]
	orr r3, r3, r2, lsl #20
	str r4, [r12]
	sub r1, r0, r3
	str r1, [r12, #4]
	ldr r0, [r12]
	bl FUN_02040644
	ldmfd sp!, {r4, pc}
_02140D94: .word FX_SinCosTable_
	arm_func_end FUN_ov132_02140d20

	arm_func_start FUN_ov132_02140d98
FUN_ov132_02140d98: ; 0x02140D98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r7, r2
	mov r8, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0
	blt _02140DBC
	cmp r3, #0x4000
	blo _02140DC4
_02140DBC:
	mov r0, #0x80000000
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02140DC4:
	ldrb r0, [sp, #0x28]
	ldr r5, [sp, #0x20]
	ldr r2, [sp, #0x24]
	cmp r0, #0
	sub r4, r5, r2
	beq _02140DE8
	cmp r5, r2
	movge r0, #0x80000000
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02140DE8:
	mov r0, r3, asr #4
	mov r3, r0, lsl #1
	ldr r2, _02140EB8 ; =FX_SinCosTable_
	mov r0, r3, lsl #1
	ldrsh r6, [r2, r0]
	cmp r6, #0
	addne r0, r3, #1
	movne r0, r0, lsl #1
	ldrnesh r5, [r2, r0]
	cmpne r5, #0
	moveq r0, #0x80000000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, [sp, #0x2c]
	cmp r9, #0
	bne _02140E34
	mov r0, r8
	mov r2, #2
	bl FUN_ov126_0212d584
	mov r9, r0
_02140E34:
	mov r0, r8
	mov r1, r9
	bl FUN_ov132_0214105c
	cmp r7, r0
	movgt r0, r9
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	smull r0, r2, r6, r7
	adds r3, r0, #0x800
	smull r1, r0, r4, r5
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r2, r1, r3, lsl #1
	smull r1, r0, r2, r5
	adds r2, r1, #0x800
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	bl FX_Sqrt
	ldr r2, _02140EBC ; =0x021602C0
	mov r1, r0
	ldr r0, [r2, #0x18]
	smull r3, r2, r0, r7
	adds r0, r3, #0x800
	adc r2, r2, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02140EB8: .word FX_SinCosTable_
_02140EBC: .word ov132_021602C0
	arm_func_end FUN_ov132_02140d98

	arm_func_start FUN_ov132_02140ec0
FUN_ov132_02140ec0: ; 0x02140EC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	ldr r0, [r5, #0x3c]
	ldr r1, _02140F14 ; =0x00009CCD
	mov r7, r2
	bl FX_Div
	mov r4, r0
	ldr r0, [r5, #0x38]
	ldrh r2, [r5, #0x52]
	smull r3, r1, r0, r4
	str r7, [sp]
	adds r0, r3, #0x800
	adc r12, r1, #0
	mov r3, r0, lsr #0xc
	mov r0, r6
	add r1, r5, #0x20
	orr r3, r3, r12, lsl #20
	bl FUN_ov132_02140834
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02140F14: .word 0x00009CCD
	arm_func_end FUN_ov132_02140ec0

	arm_func_start FUN_ov132_02140f18
FUN_ov132_02140f18: ; 0x02140F18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	smull r4, r0, r1, r1
	mov r2, r2, asr #4
	mov r6, r2, lsl #1
	adds r4, r4, #0x800
	add r5, r6, #1
	adc r0, r0, #0
	mov r2, r4, lsr #0xc
	mov r4, r5, lsl #1
	ldr r7, _02141054 ; =FX_SinCosTable_
	mov r6, r6, lsl #1
	ldrsh r6, [r7, r6]
	mov r5, #0
	cmp r1, #0
	orr r2, r2, r0, lsl #20
	ldrsh r12, [r7, r4]
	mov lr, #0x800
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	smull r1, r0, r6, r12
	adds r1, r1, lr
	adc r0, r0, r5
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	smull r1, r0, r2, r1
	adds r1, r1, lr
	adc r0, r0, r5
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r4, r1, lsl #1
	cmp r3, #0
	mov r1, r2, asr #0x1f
	mov r0, r12, asr #0x1f
	rsb r4, r4, #0
	beq _02140FF8
	mov r6, r3, asr #0x1f
	umull r8, r7, r2, r3
	mla r7, r2, r6, r7
	umull r6, r2, r12, r12
	mla r2, r12, r0, r2
	adds r8, r8, lr
	mla r7, r1, r3, r7
	adc r3, r7, r5
	adds r1, r6, lr
	mla r2, r0, r12, r2
	mov r6, r8, lsr #0xc
	adc r0, r2, r5
	mov r1, r1, lsr #0xc
	orr r6, r6, r3, lsl #20
	orr r1, r1, r0, lsl #20
	smull r1, r0, r6, r1
	adds r1, r1, lr
	adc r0, r0, r5
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	rsb r5, r1, #0
_02140FF8:
	ldr r6, _02141058 ; =0x00009CCD
	mov r1, r4
	mov r0, r6
	mov r2, r5
	mov r3, #1
	bl FUN_020401b8
	mov r7, r0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	mov r3, #0
	bl FUN_020401b8
	ldrb r1, [sp, #0x18]
	cmp r1, #0
	beq _02141044
	cmp r7, r0
	movle r7, r0
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02141044:
	cmp r7, r0
	movge r7, r0
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02141054: .word FX_SinCosTable_
_02141058: .word 0x00009CCD
	arm_func_end FUN_ov132_02140f18

	arm_func_start FUN_ov132_0214105c
FUN_ov132_0214105c: ; 0x0214105C
	ldr r0, _021410A8 ; =0x021602C0
	ldr r2, _021410AC ; =0x5397829D
	ldr r0, [r0, #0x14]
	mov r3, #0xa
	smull r12, r0, r1, r0
	adds r12, r12, #0x800
	adc r0, r0, #0
	mov r12, r12, lsr #0xc
	orr r12, r12, r0, lsl #20
	smull r12, r0, r1, r12
	adds r1, r12, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsr #0x1f
	smull r1, r12, r2, r1
	add r12, r0, r12, asr #4
	mul r0, r12, r3
	bx lr
_021410A8: .word ov132_021602C0
_021410AC: .word 0x5397829D
	arm_func_end FUN_ov132_0214105c

	arm_func_start FUN_ov132_021410b0
FUN_ov132_021410b0: ; 0x021410B0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	movs r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, r3
	addmi sp, sp, #0x10
	movmi r0, #0
	ldmmifd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _02141170 ; =0x66666667
	mov r3, r5, asr #0xc
	smull r1, r0, r2, r3
	mov r1, r3, lsr #0x1f
	adds r0, r1, r0, asr #2
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_020ef928
	ldr r2, [r6, #0x88]
	mov r1, r4
	ldrsh r2, [r2, #0x24]
	add r4, r0, r2, asr #1
	mov r0, r7
	bl FUN_ov126_0212d4b4
	mov r8, #0
	str r8, [sp]
	str r8, [sp, #4]
	cmp r0, #0
	mov r3, #0xe
	str r8, [sp, #8]
	moveq r3, #0xf
	mov r0, r7
	mov r1, r6
	mov r2, r8
	str r8, [sp, #0xc]
	bl FUN_ov132_02141778
	cmp r0, #0
	movge r1, #0x52
	mulge r1, r0, r1
	movge r8, r1, asr #0xc
	subs r4, r4, r8
	movmi r4, #0
	mov r1, r4, lsl #0xc
	mov r0, r5, asr #1
	cmp r1, r5, asr #1
	movle r0, r1
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02141170: .word 0x66666667
	arm_func_end FUN_ov132_021410b0

	arm_func_start FUN_ov132_02141174
FUN_ov132_02141174: ; 0x02141174
	stmfd sp!, {r4, lr}
	sub r12, r2, r1
	cmp r12, #0x8000
	ble _02141190
_02141184:
	sub r12, r12, #0x10000
	cmp r12, #0x8000
	bgt _02141184
_02141190:
	mov r0, #0x8000
	rsb r0, r0, #0
	cmp r12, r0
	bge _021411AC
_021411A0:
	add r12, r12, #0x10000
	cmp r12, r0
	blt _021411A0
_021411AC:
	rsb r4, r12, #0
	cmp r12, #0
	ldr r0, _02141228 ; =0x000018E3
	movge r4, r12
	cmp r4, r0
	blt _0214120C
	ldr r1, _0214122C ; =0x021602C0
	ldr lr, [r1, #4]
_021411CC:
	ldr r1, [r3]
	cmp r1, #0
	bge _021411F8
	sub r0, r2, r4
	cmp r12, #0
	addle r0, r2, r4
	mov r1, #0
	mov r0, r0, lsl #0x10
	str r1, [r3]
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_021411F8:
	sub r4, r4, r0
	sub r1, r1, lr
	str r1, [r3]
	cmp r4, r0
	bge _021411CC
_0214120C:
	ldr r0, [r3]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [r3]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_02141228: .word 0x000018E3
_0214122C: .word ov132_021602C0
	arm_func_end FUN_ov132_02141174

	arm_func_start FUN_ov132_02141230
FUN_ov132_02141230: ; 0x02141230
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r3
	mov r5, r1
	str r4, [sp]
	ldr r1, [r5, #0x84]
	mov r2, r2, lsl #0x10
	ldrh r1, [r1, #0x18]
	add r3, sp, #0
	mov r2, r2, lsr #0x10
	bl FUN_ov132_02141174
	ldr r1, [r5, #0x84]
	strh r0, [r1, #0x18]
	ldr r0, [sp]
	sub r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02141230

	arm_func_start FUN_ov132_0214126c
FUN_ov132_0214126c: ; 0x0214126C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r5, r2
	mov r2, r4
	mov r6, r1
	bl FUN_ov132_02142870
	cmp r5, r0
	movgt r5, r0
	bgt _02141298
	cmp r5, #0
	movlt r5, r4
_02141298:
	ldr r0, [r6, #0x88]
	str r5, [r0, #0x10]
	ldr r0, [r6, #0x88]
	str r5, [r0, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_0214126c

	arm_func_start FUN_ov132_021412ac
FUN_ov132_021412ac: ; 0x021412AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov126_02138cc8
	mov r4, r0
	mov r0, r6
	mov r2, r5
	mov r1, #8
	bl FUN_ov132_021484fc
	ldrb r2, [r4, #0xe]
	ldr r1, _021413B0 ; =0x0000019A
	ldr r3, [r5, #0x88]
	mul r2, r0, r2
	umull r12, r4, r2, r1
	mov r0, r2, asr #0x1f
	mla r4, r0, r1, r4
	adds r12, r12, #0x800
	adc r2, r4, #0
	ldrb r0, [r3, #0x2d]
	mov r4, r12, lsr #0xc
	mov r1, #0
	orr r4, r4, r2, lsl #20
	cmp r0, #7
	sub r2, r1, #1
	addls pc, pc, r0, lsl #2
	b _02141368
_02141314: ; jump table
	b _02141334 ; case 0
	b _0214133C ; case 1
	b _02141344 ; case 2
	b _02141348 ; case 3
	b _02141350 ; case 4
	b _02141354 ; case 5
	b _0214135C ; case 6
	b _02141364 ; case 7
_02141334:
	mov r2, #4
	b _02141368
_0214133C:
	mov r2, #6
	b _02141368
_02141344:
	b _0214133C
_02141348:
	mov r2, #5
	b _02141368
_02141350:
	b _02141334
_02141354:
	mov r2, #2
	b _02141368
_0214135C:
	mov r2, #1
	b _02141368
_02141364:
	mov r2, r1
_02141368:
	cmn r2, #1
	beq _0214138C
	mov r1, r2, lsl #0xc
	mov r1, r1, asr #2
	smull r2, r1, r4, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
_0214138C:
	add r0, r0, #1
	and r12, r0, #7
	mov r0, r6
	mov r1, r5
	mov r2, r4
	strb r12, [r3, #0x2d]
	bl FUN_ov132_0214126c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_021413B0: .word 0x0000019A
	arm_func_end FUN_ov132_021412ac

	arm_func_start FUN_ov132_021413b4
FUN_ov132_021413b4: ; 0x021413B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _02141438 ; =0x0209A2C0
	mov r6, r1
	mov r1, r4
	mov r7, r0
	mov r5, r2
	bl FUN_ov126_0212f4f8
	ldr r1, [r6, #0x84]
	cmp r0, #0
	ldrne r4, _0214143C ; =0x0209A2D8
	ldr r2, [r1, #4]
	ldr r0, [r4, #4]
	ldr r3, [r1]
	ldr r1, [r4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl FX_Atan2Idx
	ldr r2, [r6, #0x84]
	mov r1, r0
	ldrh r0, [r2, #0x18]
	mov r2, r5
	bl FUN_020405a4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x84]
	mov r0, r7
	mov r2, r4
	bl FUN_01ffba50
	cmp r0, #0x30000
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02141438: .word unk_0209A2C0
_0214143C: .word unk_0209A2D8
	arm_func_end FUN_ov132_021413b4

	arm_func_start FUN_ov132_02141440
FUN_ov132_02141440: ; 0x02141440
	ldr r0, _02141464 ; =0x00000266
	mov r2, r1, asr #0x1f
	umull r12, r3, r1, r0
	adds r12, r12, #0x800
	mla r3, r2, r0, r3
	adc r1, r3, #0
	mov r0, r12, lsr #0xc
	orr r0, r0, r1, lsl #20
	bx lr
_02141464: .word 0x00000266
	arm_func_end FUN_ov132_02141440

	arm_func_start FUN_ov132_02141468
FUN_ov132_02141468: ; 0x02141468
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	mov r8, r1
	bl FUN_ov126_02138cc8
	mov r6, #0
	mov r4, r0
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_ov132_02142870
	ldr r1, [r8, #0x88]
	mov r5, r0
	ldr r7, [r1, #0x10]
	cmp r7, r5
	bge _02141548
	mov r0, r9
	mov r1, r4
	bl FUN_ov132_0214079c
	cmp r0, #0
	bne _021414C8
	mov r0, r8
	bl FUN_0206d75c
	cmp r0, #0
	beq _0214151C
_021414C8:
	mov r0, r9
	mov r1, r8
	mov r2, #0x4000
	bl FUN_ov132_021413b4
	cmp r0, #0
	beq _0214151C
	ldr r10, _02141564 ; =0x0209A2C0
	ldr r0, [r10, #0x4c]
	cmp r0, #0
	blt _0214151C
	ldrsh r1, [r8, #0x94]
	cmp r0, r1
	beq _0214151C
	bl FUN_ov16_020f06d8
	cmp r0, #0
	ldrne r0, [r10, #0x48]
	cmpne r0, #0
	bge _0214151C
	cmp r7, r5
	movne r7, r5
	b _02141548
_0214151C:
	ldrh r0, [r4, #0x12]
	tst r0, #0x200
	movne r7, r5
	bne _02141548
	tst r0, #0x100
	movne r7, r5
	bne _02141548
	mov r0, r9
	mov r1, r5
	bl FUN_ov132_02141440
	add r7, r7, r0
_02141548:
	cmp r7, r5
	movgt r7, r5
	bgt _0214155C
	cmp r7, r6
	movlt r7, r6
_0214155C:
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02141564: .word unk_0209A2C0
	arm_func_end FUN_ov132_02141468

	arm_func_start FUN_ov132_02141568
FUN_ov132_02141568: ; 0x02141568
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _021415C8
_02141574: ; jump table
	b _021415C8 ; case 0
	b _02141588 ; case 1
	b _02141598 ; case 2
	b _021415A8 ; case 3
	b _021415B8 ; case 4
_02141588:
	mov r0, #1
	cmp r2, #4
	movne r0, #0
	bx lr
_02141598:
	mov r0, #1
	cmp r2, #1
	movne r0, #0
	bx lr
_021415A8:
	mov r0, #1
	cmp r2, #2
	movne r0, #0
	bx lr
_021415B8:
	mov r0, #1
	cmp r2, #3
	movne r0, #0
	bx lr
_021415C8:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov132_02141568

	arm_func_start FUN_ov132_021415d0
FUN_ov132_021415d0: ; 0x021415D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r9, r1
	str r2, [sp]
	bl FUN_ov126_0213246c
	mov r7, #0
	movs r4, r0
	mov r8, r7
	addeq sp, sp, #8
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02142000
	ldrsb r2, [r4, #4]
	ldrsh r1, [r9, #0x94]
	str r0, [sp, #4]
	cmp r2, r1
	ldreqb r0, [r4, #0x10]
	addeq r11, r4, #4
	addne r11, r4, #7
	ldrneb r0, [r4, #0x11]
	cmp r11, #0
	addeq sp, sp, #8
	sub r6, r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	ble _021416D4
_02141648:
	ldrsb r0, [r11, r6]
	bl FUN_ov16_020efa80
	movs r5, r0
	bne _0214166C
	mov r0, r9
	mov r1, r5
	bl FUN_ov16_020f0728
	cmp r0, #0
	bne _021416C8
_0214166C:
	ldr r2, [sp]
	mov r0, r10
	mov r1, r5
	bl FUN_ov132_02141de4
	mov r4, r0
	mov r0, r10
	mov r1, #1
	bl FUN_ov132_021448a8
	mul r2, r4, r0
	ldr r0, _02141774 ; =0x51EB851F
	smull r1, r3, r0, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #5
	ldr r0, [r5, #0x90]
	add r8, r8, r3
	tst r0, #0x8000
	bne _021416C8
	mov r0, r10
	mov r1, r5
	bl FUN_ov132_02142000
	ldr r1, [sp, #4]
	cmp r1, r0
	addeq r7, r7, #1
_021416C8:
	sub r6, r6, #1
	cmp r6, #0
	bgt _02141648
_021416D4:
	cmp r7, #1
	beq _021416E8
	cmp r7, #2
	beq _021416F4
	b _02141718
_021416E8:
	mov r0, r10
	mov r1, #2
	b _021416FC
_021416F4:
	mov r0, r10
	mov r1, #3
_021416FC:
	bl FUN_ov132_021448a8
	mul r1, r8, r0
	ldr r2, _02141774 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r8, r8, r3
_02141718:
	mov r0, #0xa
	mul r3, r8, r0
	ldr r2, _02141774 ; =0x51EB851F
	mov r0, r10
	smull r1, r4, r2, r3
	mov r2, r3, lsr #0x1f
	mov r1, r9
	add r4, r2, r4, asr #5
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02141768
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138ec0
	cmp r0, #0
	beq _02141768
	mov r0, r10
	mov r1, #0xe
	bl FUN_ov132_021448a8
	add r4, r4, r0
_02141768:
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02141774: .word 0x51EB851F
	arm_func_end FUN_ov132_021415d0

	arm_func_start FUN_ov132_02141778
FUN_ov132_02141778: ; 0x02141778
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, r1
	ldr r0, _021417D4 ; =0x0209BA20
	mov r1, r2
	mov r4, r3
	bl FUN_0204a2c4
	ldr r3, [sp, #0x20]
	mov r2, r0
	ldrb r1, [sp, #0x24]
	str r3, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	ldr r12, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp, #0xc]
	bl FUN_ov132_021417d8
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_021417D4: .word unk_0209BA20
	arm_func_end FUN_ov132_02141778

	arm_func_start FUN_ov132_021417d8
FUN_ov132_021417d8: ; 0x021417D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	ldr r0, [sp, #0x6c]
	movs r9, r1
	str r0, [sp, #0x6c]
	str r3, [sp, #0xc]
	mov r8, r2
	addeq sp, sp, #0x38
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _02141DD8 ; =0x0209BA20
	add r0, sp, #0x18
	ldr r3, [r1, #0x7e0]
	ldr r1, [sp, #0xc]
	mov r2, #0x20
	add r7, r3, r1, lsl #5
	mov r1, r7
	bl memcpy
	mov r1, #0
	ldr r0, _02141DD8 ; =0x0209BA20
	str r1, [sp, #0x10]
	bl FUN_020731b4
	mov r5, r0
	ldr r0, _02141DD8 ; =0x0209BA20
	bl FUN_020731d0
	mov r6, r0
	mov r0, r9
	bl FUN_0206d5f0
	mov r11, r0
	mov r4, #1
_02141854:
	ldr r0, _02141DD8 ; =0x0209BA20
	mov r1, r11
	mov r2, r4
	bl FUN_0204dea4
	mov r1, #0
	bl FUN_ov16_020efa9c
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _02141A3C
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	cmp r5, #0
	beq _02141890
	tst r0, #0x4000
	bne _021418B4
_02141890:
	cmp r5, #0
	cmpeq r6, #0
	bne _021418A4
	tst r0, #0x2000
	bne _021418B4
_021418A4:
	cmp r6, #0
	beq _02141A3C
	tst r0, #0x8000
	beq _02141A3C
_021418B4:
	ldr r0, [sp, #0x14]
	bl FUN_0204fb60
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02141A48
_021418C8: ; jump table
	b _02141A48 ; case 0
	b _021418EC ; case 1
	b _02141940 ; case 2
	b _02141994 ; case 3
	b _021419E8 ; case 4
	b _02141940 ; case 5
	b _02141994 ; case 6
	b _02141994 ; case 7
	b _021419E8 ; case 8
_021418EC:
	mov r4, #2
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_021484fc
	cmp r0, #0x78
	movgt r3, #0xd
	bgt _0214192C
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_021484fc
	ldr r2, _02141DDC ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r0, r3, r2, r0
	add r3, r1, r3, asr #2
_0214192C:
	ldrsh r1, [sp, #0x22]
	mov r0, r3, lsl #0x10
	add r0, r1, r0, asr #16
	strh r0, [sp, #0x22]
	b _02141A48
_02141940:
	mov r4, #3
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_021484fc
	cmp r0, #0x78
	movgt r3, #0xd
	bgt _02141980
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_021484fc
	ldr r2, _02141DDC ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r0, r3, r2, r0
	add r3, r1, r3, asr #2
_02141980:
	ldrsh r1, [sp, #0x26]
	mov r0, r3, lsl #0x10
	add r0, r1, r0, asr #16
	strh r0, [sp, #0x26]
	b _02141A48
_02141994:
	mov r4, #4
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_021484fc
	cmp r0, #0x78
	movgt r3, #0xd
	bgt _021419D4
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_021484fc
	ldr r2, _02141DDC ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r0, r3, r2, r0
	add r3, r1, r3, asr #2
_021419D4:
	ldrsh r1, [sp, #0x2a]
	mov r0, r3, lsl #0x10
	add r0, r1, r0, asr #16
	strh r0, [sp, #0x2a]
	b _02141A48
_021419E8:
	mov r4, #1
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_021484fc
	cmp r0, #0x78
	movgt r3, #0xd
	bgt _02141A28
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_021484fc
	ldr r2, _02141DDC ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r0, r3, r2, r0
	add r3, r1, r3, asr #2
_02141A28:
	ldrsh r1, [sp, #0x24]
	mov r0, r3, lsl #0x10
	add r0, r1, r0, asr #16
	strh r0, [sp, #0x24]
	b _02141A48
_02141A3C:
	add r4, r4, #1
	cmp r4, #0xb
	ble _02141854
_02141A48:
	cmp r8, #0
	beq _02141AE8
	ldrb r0, [r8]
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #3
	movls r0, #1
	movhi r0, #0
	cmp r0, #0
	ldrnesb r5, [r8, #6]
	cmpne r5, #0
	ldrnesh r0, [r7, #0xa]
	cmpne r0, #0
	beq _02141AE8
	ldr r6, _02141DD8 ; =0x0209BA20
	mov r4, #0
_02141A88:
	mov r0, r9
	mov r1, r4
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r6
	bl FUN_0204a2c4
	cmp r8, r0
	bne _02141ACC
	mov r0, r9
	bl FUN_0206dcd4
	add r1, r0, r4
	ldrb r2, [r1, #0x44]
	mov r0, r6
	mov r1, r8
	bl FUN_020722b4
	add r5, r5, r0
	b _02141AD8
_02141ACC:
	add r4, r4, #1
	cmp r4, #6
	blt _02141A88
_02141AD8:
	ldrsh r1, [sp, #0x22]
	ldr r0, [sp, #0x10]
	mla r0, r5, r1, r0
	str r0, [sp, #0x10]
_02141AE8:
	ldrsh r0, [r7, #0xa]
	cmp r0, #0
	ldrne r0, [sp, #0x6c]
	cmpne r0, #0
	ldrnesb r2, [r0, #3]
	cmpne r2, #0
	ldrnesh r1, [sp, #0x22]
	ldrne r0, [sp, #0x10]
	mlane r0, r2, r1, r0
	strne r0, [sp, #0x10]
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02141de4
	ldr r1, [sp, #0x10]
	add r1, r1, r0
	mov r0, #0x29
	mul r2, r1, r0
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	ldrsh r1, [r7, #2]
	mov r2, r0, asr #0xc
	add r0, r1, #0x64
	mul r3, r2, r0
	ldr r1, _02141DE0 ; =0x51EB851F
	ldrh r0, [r7, #4]
	smull r2, r4, r1, r3
	mov r1, r3, lsr #0x1f
	cmp r0, #0
	add r4, r1, r4, asr #5
	beq _02141BA8
	ldrb r1, [sp, #0x64]
	cmp r1, #0
	beq _02141B84
	cmp r1, #1
	beq _02141B8C
	cmp r1, #2
	beq _02141B94
	b _02141BA8
_02141B84:
	bl FUN_ov16_020ef928
	b _02141B98
_02141B8C:
	mov r0, r0, asr #1
	b _02141B98
_02141B94:
	bl FUN_ov16_020ef8d4
_02141B98:
	mul r1, r4, r0
	ldr r0, _02141DE0 ; =0x51EB851F
	umull r0, r2, r1, r0
	add r4, r4, r2, lsr #5
_02141BA8:
	mov r0, r9
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02145190
	cmp r0, #0
	ldrneh r0, [r7, #6]
	ldrne r1, _02141DE0 ; =0x51EB851F
	cmpne r0, #0
	mulne r2, r4, r0
	smullne r0, r3, r1, r2
	movne r0, r2, lsr #0x1f
	addne r3, r0, r3, asr #5
	ldrsh r1, [r7, #8]
	addne r4, r4, r3
	cmp r1, #0
	ldrne r0, [sp, #0x60]
	cmpne r0, #0
	beq _02141C10
	mul r0, r1, r0
	mul r1, r4, r0
	ldr r2, _02141DE0 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r4, r4, r3
_02141C10:
	ldrh r0, [r7, #0x1a]
	mov r5, r4
	tst r0, #1
	beq _02141C48
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_021415d0
	mul r1, r4, r0
	ldr r2, _02141DE0 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r4, r4, r3
_02141C48:
	ldr r2, [sp, #0x68]
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02141ef8
	mul r1, r4, r0
	ldr r6, _02141DE0 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r2, r6, r1
	add r2, r0, r2, asr #5
	cmp r8, #0
	ldrneb r0, [r8, #8]
	add r4, r4, r2
	cmpne r0, #0
	beq _02141CB4
	mov r0, r9
	bl FUN_0206cd88
	ldrb r1, [r8, #8]
	cmp r1, r0
	bne _02141CB4
	mov r0, r10
	mov r1, #6
	bl FUN_ov132_021448a8
	mul r1, r4, r0
	smull r0, r2, r6, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #5
	add r4, r4, r2
_02141CB4:
	bl FUN_ov16_020f066c
	cmp r0, #0
	beq _02141D00
	ldrh r0, [r7, #0x1a]
	tst r0, #4
	beq _02141D00
	ldr r0, _02141DD8 ; =0x0209BA20
	mov r1, r11
	bl FUN_0207249c
	cmp r0, #0
	beq _02141D00
	ldrb r0, [r0, #0x42]
	ldr r1, _02141DE0 ; =0x51EB851F
	cmp r0, #2
	addeq r2, r5, r5, lsl #2
	smulleq r0, r3, r1, r2
	moveq r0, r2, lsr #0x1f
	addeq r3, r0, r3, asr #5
	addeq r4, r4, r3
_02141D00:
	ldr r0, [sp, #0x6c]
	ldr r5, _02141DE0 ; =0x51EB851F
	cmp r0, #0
	bne _02141D48
	ldrb r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	mov r0, #0x64
	str r1, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	str r8, [sp, #8]
	bl FUN_ov132_0214212c
	mul r1, r4, r0
	smull r0, r4, r5, r1
	mov r0, r1, lsr #0x1f
	add r4, r0, r4, asr #5
_02141D48:
	mov r0, r9
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _02141DAC
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02139878
	cmp r0, #0
	movne r0, #0x5a
	mulne r1, r4, r0
	smullne r0, r4, r5, r1
	movne r0, r1, lsr #0x1f
	addne r4, r0, r4, asr #5
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_021398cc
	cmp r0, #0
	movne r0, #0x5a
	mulne r1, r4, r0
	smullne r0, r4, r5, r1
	movne r0, r1, lsr #0x1f
	addne r4, r0, r4, asr #5
_02141DAC:
	ldrsh r0, [r7]
	cmp r0, #0
	cmpgt r4, r0
	bgt _02141DC8
	cmp r0, #0
	cmplt r4, r0
	bge _02141DCC
_02141DC8:
	mov r4, r0
_02141DCC:
	mov r0, r4
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02141DD8: .word unk_0209BA20
_02141DDC: .word 0x66666667
_02141DE0: .word 0x51EB851F
	arm_func_end FUN_ov132_021417d8

	arm_func_start FUN_ov132_02141de4
FUN_ov132_02141de4: ; 0x02141DE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	ldrsh r2, [r5, #0xc]
	mov r7, r0
	mov r6, r1
	cmp r2, #0
	mov r4, #0
	beq _02141E18
	mov r2, r6
	mov r1, #1
	bl FUN_ov132_021484fc
	ldrsh r1, [r5, #0xc]
	mla r4, r1, r0, r4
_02141E18:
	ldrsh r0, [r5, #0xe]
	cmp r0, #0
	beq _02141E3C
	mov r0, r7
	mov r2, r6
	mov r1, #2
	bl FUN_ov132_021484fc
	ldrsh r1, [r5, #0xe]
	mla r4, r1, r0, r4
_02141E3C:
	ldrsh r0, [r5, #0x10]
	cmp r0, #0
	beq _02141E60
	mov r0, r7
	mov r2, r6
	mov r1, #3
	bl FUN_ov132_021484fc
	ldrsh r1, [r5, #0x10]
	mla r4, r1, r0, r4
_02141E60:
	ldrsh r0, [r5, #0x12]
	cmp r0, #0
	beq _02141E84
	mov r0, r7
	mov r2, r6
	mov r1, #4
	bl FUN_ov132_021484fc
	ldrsh r1, [r5, #0x12]
	mla r4, r1, r0, r4
_02141E84:
	ldrsh r0, [r5, #0x14]
	cmp r0, #0
	beq _02141EA8
	mov r0, r7
	mov r2, r6
	mov r1, #5
	bl FUN_ov132_021484fc
	ldrsh r1, [r5, #0x14]
	mla r4, r1, r0, r4
_02141EA8:
	ldrsh r0, [r5, #0x16]
	cmp r0, #0
	beq _02141ECC
	mov r0, r7
	mov r2, r6
	mov r1, #6
	bl FUN_ov132_021484fc
	ldrsh r1, [r5, #0x16]
	mla r4, r1, r0, r4
_02141ECC:
	ldrsh r0, [r5, #0x18]
	cmp r0, #0
	beq _02141EF0
	mov r0, r7
	mov r2, r6
	mov r1, #7
	bl FUN_ov132_021484fc
	ldrsh r1, [r5, #0x18]
	mla r4, r1, r0, r4
_02141EF0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_02141de4

	arm_func_start FUN_ov132_02141ef8
FUN_ov132_02141ef8: ; 0x02141EF8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	cmp r1, #0
	cmpne r2, #0
	mov r5, r0
	mov r4, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r1, [sp, #8]
	mov r3, r4
	str r2, [sp, #0xc]
	add r1, sp, #8
_02141F2C:
	ldr r0, [r1, r3, lsl #2]
	ldr r0, [r0, #0x90]
	tst r0, #0x8000
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r3, r3, #1
	cmp r3, #2
	blt _02141F2C
	mov r8, #0
	add r7, sp, #8
	add r6, sp, #0
_02141F5C:
	ldr r1, [r7, r8, lsl #2]
	mov r0, r5
	bl FUN_ov132_02142000
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, #2
	blt _02141F5C
	ldr r6, [sp, #4]
	ldr r1, [sp]
	mov r0, r5
	mov r2, r6
	bl FUN_ov132_02141568
	cmp r0, #0
	beq _02141FC8
	mov r0, r5
	mov r1, #5
	bl FUN_ov132_021448a8
	ldr r1, [sp, #8]
	mov r4, r0
	ldr r0, [r1, #0x90]
	tst r0, #0x800
	beq _02141FF0
	ldr r0, _02141FFC ; =0x0209BA20
	mov r1, #0x3e
	bl FUN_0204a2c4
	ldrb r4, [r0, #6]
	b _02141FF0
_02141FC8:
	ldr r1, [sp]
	mov r0, r5
	mov r2, r6
	bl FUN_ov132_02141568
	cmp r0, #0
	beq _02141FF0
	mov r0, r5
	mov r1, #5
	bl FUN_ov132_021448a8
	rsb r4, r0, #0
_02141FF0:
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02141FFC: .word unk_0209BA20
	arm_func_end FUN_ov132_02141ef8

	arm_func_start FUN_ov132_02142000
FUN_ov132_02142000: ; 0x02142000
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r1, #0x90]
	tst r0, #0x8000000
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	tst r0, #0x10000000
	movne r0, #2
	ldmnefd sp!, {r3, pc}
	tst r0, #0x20000000
	movne r0, #3
	ldmnefd sp!, {r3, pc}
	tst r0, #0x40000000
	movne r0, #4
	ldmnefd sp!, {r3, pc}
	mov r0, r1
	bl FUN_0206cd88
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02142000

	arm_func_start FUN_ov132_02142050
FUN_ov132_02142050: ; 0x02142050
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	beq _02142068
	ldr r0, [r4, #0x90]
	tst r0, #0x2000000
	bne _02142070
_02142068:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02142070:
	mov r5, #0
_02142074:
	mov r0, r4
	mov r1, r5
	bl FUN_0206cdf8
	cmp r0, #0
	ble _02142090
	cmp r0, #0x4c
	beq _0214209C
_02142090:
	add r5, r5, #1
	cmp r5, #6
	blt _02142074
_0214209C:
	cmp r5, #6
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x88]
	ldrb r0, [r0, #0x8a]
	tst r0, #1
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_0206cc94
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_0206cc84
	mov r6, r0
	mov r0, r4
	bl FUN_0206cc94
	mov r5, #0x64
	mov r1, r0
	smulbb r0, r6, r5
	bl _s32_div_f
	cmp r0, #0x14
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov16_020ef928
	mov r5, r0
	mov r0, r4
	bl FUN_0206cc34
	add r0, r0, #1
	add r0, r0, r0, lsr #31
	cmp r5, r0, asr #1
	movlo r0, #1
	movhs r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02142050

	arm_func_start FUN_ov132_0214212c
FUN_ov132_0214212c: ; 0x0214212C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	str r0, [sp]
	ldr r9, [sp, #0x30]
	ldr r8, [sp, #0x34]
	ldr r7, [sp, #0x38]
	movs r10, r1
	ldr r0, _021427E4 ; =0x0209BA20
	mov r5, r2
	mov r4, r3
	addeq sp, sp, #0xc
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	addeq sp, sp, #0xc
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r0, #0x7e0]
	mov r0, r10
	add r1, r1, r4, lsl #5
	str r1, [sp, #8]
	bl FUN_0206d5f0
	cmp r0, #0
	ldreq r1, _021427E8 ; =0x020A0640
	ldreqb r0, [r1, #0x98]
	streq r0, [sp, #4]
	ldreqb r11, [r1, #0x99]
	ldrne r1, _021427E8 ; =0x020A0640
	ldrneb r0, [r1, #0x99]
	strne r0, [sp, #4]
	ldrneb r11, [r1, #0x98]
	cmp r5, #0
	beq _02142228
	ldr r0, [r5, #0x90]
	tst r0, #0x80
	beq _021421EC
	ldrb r0, [r10, #0x5a]
	cmp r0, #1
	bne _021421EC
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x3a
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _021427EC ; =0x51EB851F
	mul r2, r8, r0
	smull r0, r8, r1, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #5
_021421EC:
	ldr r0, [r5, #0x90]
	tst r0, #0x100
	beq _02142228
	ldrb r0, [r10, #0x5a]
	cmp r0, #2
	bne _02142228
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x3b
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _021427EC ; =0x51EB851F
	mul r2, r8, r0
	smull r0, r8, r1, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #5
_02142228:
	ldr r0, [r10, #0x90]
	tst r0, #1
	beq _02142268
	cmp r4, #7
	cmpne r4, #8
	ldr r5, _021427EC ; =0x51EB851F
	cmpne r4, #0xa
	bne _02142268
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x33
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_02142268:
	ldr r0, [r10, #0x90]
	tst r0, #4
	beq _021422A0
	cmp r4, #9
	ldr r5, _021427EC ; =0x51EB851F
	bne _021422A0
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x35
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_021422A0:
	ldr r0, [r10, #0x90]
	tst r0, #8
	beq _021422E0
	cmp r4, #3
	cmpne r4, #0xc
	ldr r5, _021427EC ; =0x51EB851F
	cmpne r4, #0x1b
	bne _021422E0
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x36
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_021422E0:
	ldr r0, [r10, #0x90]
	tst r0, #0x10
	beq _02142328
	cmp r4, #1
	cmpne r4, #2
	cmpne r4, #0xb
	cmpne r4, #0x19
	ldr r5, _021427EC ; =0x51EB851F
	cmpne r4, #0x1a
	bne _02142328
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x37
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_02142328:
	ldr r0, [r10, #0x90]
	tst r0, #0x400
	beq _02142358
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x3d
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _021427EC ; =0x51EB851F
	mul r2, r8, r0
	smull r0, r8, r1, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #5
_02142358:
	cmp r9, #1
	beq _021424A0
	ldr r0, [r10, #0x90]
	tst r0, #0x4000
	beq _021423B0
	cmp r9, #0
	mov r0, #0x64
	bne _02142380
	bl FUN_ov16_020ef928
	b _02142384
_02142380:
	bl FUN_ov16_020ef8d4
_02142384:
	cmp r0, #0xa
	bge _021423B0
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x41
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _021427EC ; =0x51EB851F
	mul r2, r8, r0
	smull r0, r8, r1, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #5
_021423B0:
	ldr r0, [r10, #0x90]
	tst r0, #0x10000
	beq _02142400
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x43
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	subs r0, r0, #0x64
	rsbmi r0, r0, #0
	cmp r9, #0
	bne _021423E4
	bl FUN_ov16_020ef928
	b _021423E8
_021423E4:
	bl FUN_ov16_020ef8d4
_021423E8:
	add r0, r0, #0x64
	mul r1, r8, r0
	ldr r2, _021427EC ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r8, r2, r1
	add r8, r0, r8, asr #5
_02142400:
	ldr r0, [r10, #0x90]
	tst r0, #0x20000
	beq _021424A0
	cmp r9, #0
	mov r0, #0x64
	bne _02142420
	bl FUN_ov16_020ef928
	b _02142424
_02142420:
	bl FUN_ov16_020ef8d4
_02142424:
	cmp r0, #0xa
	bge _02142454
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x41
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _021427EC ; =0x51EB851F
	mul r2, r8, r0
	smull r0, r8, r1, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #5
	b _021424A0
_02142454:
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x44
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	subs r0, r0, #0x64
	rsbmi r0, r0, #0
	cmp r9, #0
	bne _0214247C
	bl FUN_ov16_020ef928
	b _02142480
_0214247C:
	bl FUN_ov16_020ef8d4
_02142480:
	rsb r0, r0, #0x64
	mul r1, r8, r0
	ldr r2, _021427EC ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r8, r2, r1
	add r8, r0, r8, asr #5
	cmp r8, #1
	movlt r8, #1
_021424A0:
	ldr r0, [r10, #0x90]
	tst r0, #0x80000
	beq _021424D8
	cmp r4, #9
	ldr r5, _021427EC ; =0x51EB851F
	bne _021424D8
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x46
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_021424D8:
	ldr r0, [r10, #0x90]
	tst r0, #0x100000
	beq _02142518
	cmp r4, #3
	cmpne r4, #0xc
	ldr r5, _021427EC ; =0x51EB851F
	cmpne r4, #0x1b
	bne _02142518
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x47
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_02142518:
	ldr r0, [r10, #0x90]
	tst r0, #0x200000
	beq _02142560
	cmp r4, #1
	cmpne r4, #2
	cmpne r4, #0xb
	cmpne r4, #0x19
	ldr r5, _021427EC ; =0x51EB851F
	cmpne r4, #0x1a
	bne _02142560
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x48
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_02142560:
	ldr r0, [r10, #0x90]
	ldr r4, _021427EC ; =0x51EB851F
	tst r0, #0x400000
	beq _0214259C
	ldr r0, [sp, #4]
	cmp r0, r11
	bhs _0214259C
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x49
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r4, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_0214259C:
	ldr r0, [r10, #0x90]
	tst r0, #0x800000
	beq _02142638
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x4a
	bl FUN_0204a2c4
	ldr r1, [sp, #4]
	mov r4, r0
	sub r5, r1, r11
	cmp r5, #0
	ble _02142600
	mov r6, #0
	ldr r1, _021427EC ; =0x51EB851F
	b _021425F4
_021425D4:
	ldrb r2, [r4, #6]
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mul r2, r8, r2
	mov r6, r0, asr #0x10
	smull r0, r8, r1, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #5
_021425F4:
	cmp r6, r5
	blt _021425D4
	b _02142638
_02142600:
	bge _02142638
	rsb r5, r5, #0
	mov r6, #0
	b _02142630
_02142610:
	mov r0, #0x64
	mul r0, r8, r0
	ldrb r1, [r4, #6]
	bl _s32_div_f
	add r1, r6, #1
	mov r8, r0
	mov r0, r1, lsl #0x10
	mov r6, r0, asr #0x10
_02142630:
	cmp r6, r5
	blt _02142610
_02142638:
	ldr r0, [r10, #0x90]
	tst r0, #0x1000000
	beq _021426D8
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x4b
	bl FUN_0204a2c4
	ldr r1, [sp, #4]
	mov r4, r0
	sub r5, r1, r11
	cmp r5, #0
	ble _0214269C
	ldr r1, _021427EC ; =0x51EB851F
	mov r6, #0
	b _02142690
_02142670:
	ldrb r3, [r4, #6]
	add r0, r6, #1
	mov r2, r0, lsl #0x10
	mul r3, r8, r3
	smull r0, r8, r1, r3
	mov r0, r3, lsr #0x1f
	add r8, r0, r8, asr #5
	mov r6, r2, asr #0x10
_02142690:
	cmp r6, r5
	blt _02142670
	b _021426D8
_0214269C:
	cmp r5, #0
	mov r11, #0x64
	bge _021426D8
	rsb r5, r5, #0
	mov r6, #0
	b _021426D0
_021426B4:
	mul r0, r8, r11
	ldrb r1, [r4, #6]
	bl _s32_div_f
	add r1, r6, #1
	mov r1, r1, lsl #0x10
	mov r8, r0
	mov r6, r1, asr #0x10
_021426D0:
	cmp r6, r5
	blt _021426B4
_021426D8:
	cmp r9, #1
	ldr r4, _021427EC ; =0x51EB851F
	bne _02142724
	ldr r0, [sp]
	mov r1, r10
	bl FUN_ov132_02142050
	cmp r0, #0
	beq _02142724
	mov r0, r10
	bl FUN_0206cc94
	mov r1, r0
	mov r0, r10
	bl FUN_0206cc44
	ldr r1, [r10, #0x88]
	ldrb r0, [r1, #0x8a]
	and r0, r0, #0xfe
	and r0, r0, #0xff
	orr r0, r0, #1
	strb r0, [r1, #0x8a]
_02142724:
	ldr r0, [sp, #8]
	ldrsh r0, [r0, #0xa]
	cmp r0, #0
	cmpne r7, #0
	ldrnesb r0, [r7, #6]
	cmpne r0, #0
	beq _021427D8
	ldrb r0, [r7]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _02142770
	ldrb r0, [r7]
	cmp r0, #7
	movne r2, #0
_02142770:
	cmp r2, #0
	bne _02142784
	ldrb r0, [r7]
	cmp r0, #8
	movne r1, #0
_02142784:
	cmp r1, #0
	beq _021427D8
	ldr r0, [r10, #0x90]
	tst r0, #0x4000000
	beq _021427D8
	mov r0, r10
	bl FUN_0206ccdc
	mov r5, r0
	ldr r0, [sp]
	mov r1, #0x18
	bl FUN_ov132_021448a8
	cmp r5, r0
	blt _021427D8
	ldr r0, _021427E4 ; =0x0209BA20
	mov r1, #0x4d
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r1, r8, r0
	smull r0, r8, r4, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #5
_021427D8:
	mov r0, r8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021427E4: .word unk_0209BA20
_021427E8: .word unk_020A0640
_021427EC: .word 0x51EB851F
	arm_func_end FUN_ov132_0214212c

	arm_func_start FUN_ov132_021427f0
FUN_ov132_021427f0: ; 0x021427F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	movs r2, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #5
	bl FUN_ov132_021484fc
	cmp r0, #0
	movlt r0, #0
	cmp r0, #0xff
	movgt r0, #0xff
	ldr r2, _02142868 ; =0x80808081
	mov r3, r0, lsl #0xe
	smull r1, r12, r2, r3
	add r12, r12, r0, lsl #14
	mov r0, r3, lsr #0x1f
	add r12, r0, r12, asr #7
	mov r1, r12, asr #4
	ldr r0, _0214286C ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrh r0, [r0, r1]
	ldr r1, [r4, #0x5bc]
	ldr r3, [r4, #0x5b4]
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	ldmfd sp!, {r4, pc}
_02142868: .word 0x80808081
_0214286C: .word FX_SinCosTable_
	arm_func_end FUN_ov132_021427f0

	arm_func_start FUN_ov132_02142870
FUN_ov132_02142870: ; 0x02142870
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r1
	mov r6, r2
	mov r5, r0
	mov r2, r4
	mov r1, #8
	bl FUN_ov132_021484fc
	mov r8, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02138cc8
	ldr r1, [r4, #0x90]
	mov r10, r0
	tst r1, #2
	beq _021428D0
	ldr r0, _02142B00 ; =0x0209BA20
	mov r1, #0x34
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _02142B04 ; =0x51EB851F
	mul r2, r8, r0
	smull r0, r8, r1, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #5
_021428D0:
	ldr r0, [r4, #0x90]
	tst r0, #0x40000
	beq _02142900
	ldr r0, _02142B00 ; =0x0209BA20
	mov r1, #0x45
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _02142B04 ; =0x51EB851F
	mul r2, r8, r0
	smull r0, r8, r1, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #5
_02142900:
	mov r9, r8
	cmp r6, #0
	bne _0214291C
	mov r0, r4
	bl FUN_0206db84
	cmp r0, #0
	beq _02142948
_0214291C:
	ldrb r1, [r10, #0xf]
	ldr r0, _02142B08 ; =0x0000019A
	mul r1, r9, r1
	umull r3, r2, r1, r0
	mov r1, r1, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r0, r3, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02142948:
	ldrb r2, [r10, #0xe]
	ldr r1, _02142B08 ; =0x0000019A
	mov r0, r5
	mul r2, r8, r2
	umull r6, r3, r2, r1
	mov r2, r2, asr #0x1f
	adds r6, r6, #0x800
	mla r3, r2, r1, r3
	mov r1, r4
	adc r2, r3, #0
	mov r9, r6, lsr #0xc
	orr r9, r9, r2, lsl #20
	mov r7, #0
	mov r6, #0x800
	bl FUN_ov126_021398cc
	cmp r0, #0
	beq _021429B0
	umull r2, r1, r9, r6
	mla r1, r9, r7, r1
	mov r0, r9, asr #0x1f
	mla r1, r0, r6, r1
	adds r2, r2, r6
	adc r1, r1, r7
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021429B0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02139878
	cmp r0, #0
	beq _021429EC
	ldr r0, _02142B0C ; =0x00000B33
	mov r1, r9, asr #0x1f
	umull r3, r2, r9, r0
	mla r2, r9, r7, r2
	mla r2, r1, r0, r2
	adds r3, r3, r6
	adc r1, r2, r7
	mov r0, r3, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021429EC:
	mov r0, r5
	mov r1, r10
	bl FUN_ov132_0214079c
	cmp r0, #0
	bne _02142A10
	mov r0, r4
	bl FUN_0206d75c
	cmp r0, #0
	beq _02142AAC
_02142A10:
	mov r6, #0x4000
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov132_021413b4
	cmp r0, #0
	beq _02142AAC
	ldr r7, _02142B10 ; =0x0209A2C0
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	blt _02142AAC
	ldrsh r1, [r4, #0x94]
	cmp r0, r1
	beq _02142AAC
	bl FUN_ov16_020f06d8
	cmp r0, #0
	ldrne r0, [r7, #0x48]
	cmpne r0, #0
	bge _02142AAC
	ldr r1, [r4, #0x84]
	mov r0, r5
	ldr r2, [r1, #4]
	ldr r1, [r1]
	bl FUN_ov132_0213ca5c
	ldr r2, [r4, #0x84]
	mov r1, r0
	ldrh r0, [r2, #0x18]
	mov r2, r6
	bl FUN_020405a4
	cmp r0, #0
	beq _02142AAC
	mov r0, #0x2000
	umull r3, r2, r8, r0
	mov r1, r8, asr #0x1f
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, #0
	mov r9, r3, lsr #0xc
	orr r9, r9, r0, lsl #20
_02142AAC:
	mov r0, r4
	bl FUN_0206ccdc
	mov r5, r0
	mov r0, r4
	bl FUN_0206ccec
	mov r1, #0x64
	mov r2, #0x28
	smulbb r1, r5, r1
	smulbb r0, r0, r2
	cmp r1, r0
	bge _02142AF8
	ldr r0, _02142B14 ; =0x00000CCD
	mov r1, r9, asr #0x1f
	umull r3, r2, r9, r0
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, #0
	mov r9, r3, lsr #0xc
	orr r9, r9, r0, lsl #20
_02142AF8:
	mov r0, r9
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02142B00: .word unk_0209BA20
_02142B04: .word 0x51EB851F
_02142B08: .word 0x0000019A
_02142B0C: .word 0x00000B33
_02142B10: .word unk_0209A2C0
_02142B14: .word 0x00000CCD
	arm_func_end FUN_ov132_02142870

	arm_func_start FUN_ov132_02142b18
FUN_ov132_02142b18: ; 0x02142B18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r6, r1
	mov r7, r0
	mov r0, r6
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02142B50
	mov r0, r7
	bl FUN_ov132_021448f4
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02142B50:
	mov r0, r6
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r0, r7
	bl FUN_ov132_021461f8
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldr r4, [r1, #4]
	ldr r5, [r1]
	bl FUN_02040148
	mov r3, r0
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov132_0214ec84
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldr r4, [r1, #4]
	ldr r5, [r1]
	bl FUN_ov16_020f0810
	bl FUN_02040138
	ldrsh r1, [r6, #0x94]
	mov r6, #1
	mov r8, #0
	str r1, [sp]
	stmib sp, {r0, r8}
	add r12, sp, #0x10
	mov r0, r7
	mov r1, r5
	mov r2, r4
	mov r3, r6
	str r12, [sp, #0xc]
	bl FUN_ov132_0214c60c
	ldr r0, [sp, #0x10]
	cmp r0, #0x20000
	movge r6, r8
	mov r0, r6
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_02142b18

	arm_func_start FUN_ov132_02142c0c
FUN_ov132_02142c0c: ; 0x02142C0C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _02142CC0 ; =0x0209A2C0
	mov r5, r0
	ldrb r0, [r3, #0x5b]
	mov r4, r1
	mov r8, r2
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _02142CC0 ; =0x0209A2C0
	mov r0, r5
	mov r1, r6
	mov r2, r8
	bl FUN_01ffba50
	ldr r1, [r6, #0x38]
	cmp r0, #0
	cmpgt r1, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	bl _s32_div_f
	sub r7, r0, #1
	cmp r7, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r8
	bl FUN_01ffba50
	mov r8, #0
	mov r6, r0
	mov r0, r5
	mov r1, r4
	mov r2, r8
	bl FUN_ov132_02142870
	cmp r0, #0
	movle r0, r8
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mul r1, r0, r7
	cmp r1, r6
	movgt r8, #1
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02142CC0: .word unk_0209A2C0
	arm_func_end FUN_ov132_02142c0c

	arm_func_start FUN_ov132_02142cc4
FUN_ov132_02142cc4: ; 0x02142CC4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov132_021447c8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_0206da78
	cmp r0, #0x12
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_0206db84
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_02142cc4

	arm_func_start FUN_ov132_02142cfc
FUN_ov132_02142cfc: ; 0x02142CFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, [sp, #0x2c]
	mov r6, #0
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	ldr r11, [sp, #0x28]
	str r4, [sp, #0x30]
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	mov r5, r6
_02142D2C:
	mov r0, r10
	mov r1, r11
	mov r2, r5
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02142D9C
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x2c]
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_021393a8
	cmp r0, #0
	bne _02142D9C
	ldr r1, [r4, #0x84]
	ldr r0, [r1, #4]
	subs r2, r0, r8
	rsbmi r2, r2, #0
	cmp r2, r7
	bgt _02142D9C
	ldr r0, [r1]
	subs r1, r0, r9
	rsbmi r1, r1, #0
	cmp r1, r7
	bgt _02142D9C
	mov r0, r10
	bl FUN_01ffba80
	cmp r0, r7
	addle r6, r6, #1
_02142D9C:
	add r5, r5, #1
	cmp r5, #0xb
	blt _02142D2C
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_02142cfc

	arm_func_start FUN_ov132_02142db0
FUN_ov132_02142db0: ; 0x02142DB0
	sub r2, r1, #1
	cmp r2, #8
	mov r0, #1
	bxhi lr
	add r1, r0, #0x1c0
	tst r1, r0, lsl r2
	movne r0, #0
	bx lr
	arm_func_end FUN_ov132_02142db0

	arm_func_start FUN_ov132_02142dd0
FUN_ov132_02142dd0: ; 0x02142DD0
	sub r3, r1, #0x1d
	cmp r3, #0x14
	mov r0, #0
	bxhi lr
	ldr r1, _02142DF4 ; =0x0010000F
	mov r2, #1
	tst r1, r2, lsl r3
	movne r0, r2
	bx lr
_02142DF4: .word 0x0010000F
	arm_func_end FUN_ov132_02142dd0

	arm_func_start FUN_ov132_02142df8
FUN_ov132_02142df8: ; 0x02142DF8
	ldr r2, [r0, #0x1e8]
	cmp r1, r2
	movge r0, #0
	bxge lr
	ldr r2, [r0, #0x1ec]
	subs r2, r2, r1
	ldr r1, [r0, #0x1f4]
	addmi r2, r2, #0x5a
	mov r0, #0xa
	mla r0, r2, r0, r1
	bx lr
	arm_func_end FUN_ov132_02142df8

	arm_func_start FUN_ov132_02142e24
FUN_ov132_02142e24: ; 0x02142E24
	mov r0, #1
	cmp r1, #0x14
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov132_02142e24

	arm_func_start FUN_ov132_02142e34
FUN_ov132_02142e34: ; 0x02142E34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _02142EC4 ; =0x020A0640
	mov r5, r0
	ldrb r0, [r2, #0x1a]
	mov r4, r1
	cmp r0, #0
	beq _02142E64
	ldr r0, _02142EC8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02142E64:
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldreqb r0, [r4]
	beq _02142E84
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021433f0
_02142E84:
	ldrb r1, [r4, #4]
	mov r6, #1
	tst r1, #3
	bne _02142EBC
	cmp r0, #6
	mov r7, #0
	bne _02142EB4
	ldrb r1, [r4, #1]
	mov r0, r5
	bl FUN_ov132_02142e24
	cmp r0, #0
	movne r7, r6
_02142EB4:
	cmp r7, #0
	moveq r6, #0
_02142EBC:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02142EC4: .word unk_020A0640
_02142EC8: .word unk_0209AEC0
	arm_func_end FUN_ov132_02142e34

	arm_func_start FUN_ov132_02142ecc
FUN_ov132_02142ecc: ; 0x02142ECC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _02142F70 ; =0x020A0640
	mov r5, r0
	ldrb r0, [r3, #0x1a]
	mov r4, r1
	cmp r0, #0
	beq _02142F08
	ldr r0, _02142F74 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _02142F08
	cmp r2, #0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02142F08:
	cmp r2, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02142df8
	movs r1, r0
	bne _02142F58
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02142F30:
	add r1, r4, #1
	cmp r1, #0x5a
	movge r0, r4
	ldmgefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r4, r1
	bl FUN_ov132_02142df8
	movs r1, r0
	subeq r0, r4, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
_02142F58:
	mov r0, r5
	bl FUN_ov132_02142e34
	cmp r0, #0
	bne _02142F30
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02142F70: .word unk_020A0640
_02142F74: .word unk_0209AEC0
	arm_func_end FUN_ov132_02142ecc

	arm_func_start FUN_ov132_02142f78
FUN_ov132_02142f78: ; 0x02142F78
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r3, [r4, #0x1e8]
	cmp r1, r3
	movge r0, #0
	ldmgefd sp!, {r4, pc}
	cmp r2, #0
	beq _02142FA0
	bl FUN_ov132_02142ecc
	mov r1, r0
_02142FA0:
	ldr r0, [r4, #0x1ec]
	subs r2, r0, r1
	ldr r1, [r4, #0x1f8]
	addmi r2, r2, #0x5a
	mov r0, #0x2c
	mla r0, r2, r0, r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_02142f78

	arm_func_start FUN_ov132_02142fbc
FUN_ov132_02142fbc: ; 0x02142FBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r12, [r5, #0x1e8]
	mov r4, r1
	cmp r2, r12
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, pc}
	cmp r4, #0x16
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, pc}
	cmp r3, #0
	beq _02142FFC
	mov r1, r2
	mov r2, r3
	bl FUN_ov132_02142ecc
	mov r2, r0
_02142FFC:
	ldr r0, [r5, #0x1ec]
	subs r2, r0, r2
	addmi r2, r2, #0x5a
	mov r0, #0x16
	mla r1, r2, r0, r4
	ldr r0, [r5, #0x1fc]
	add r0, r0, r1, lsl #5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02142fbc

	arm_func_start FUN_ov132_0214301c
FUN_ov132_0214301c: ; 0x0214301C
	ldr r1, _02143050 ; =0x020A0640
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	beq _02143040
	ldr r1, _02143054 ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
_02143040:
	ldr r0, [r0, #0x1f0]
	cmp r0, #0
	movlt r0, #0
	bx lr
_02143050: .word unk_020A0640
_02143054: .word unk_0209AEC0
	arm_func_end FUN_ov132_0214301c

	arm_func_start FUN_ov132_02143058
FUN_ov132_02143058: ; 0x02143058
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov132_021434f8
	cmp r0, #0
	addeq r0, r4, #0x19c
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov132_0214301c
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02142df8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_02143058

	arm_func_start FUN_ov132_02143088
FUN_ov132_02143088: ; 0x02143088
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov132_0214301c
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, r4
	bl FUN_ov132_02142fbc
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02143088

	arm_func_start FUN_ov132_021430b4
FUN_ov132_021430b4: ; 0x021430B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, #0
_021430C8:
	mov r0, r7
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _021430E8
	ldrsh r0, [r0, #0x94]
	cmp r0, r6
	beq _021430F4
_021430E8:
	add r4, r4, #1
	cmp r4, #0x16
	blt _021430C8
_021430F4:
	cmp r4, #0x16
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov132_02143088
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_021430b4

	arm_func_start FUN_ov132_02143114
FUN_ov132_02143114: ; 0x02143114
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov132_0214301c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov132_02142f78
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02143114

	arm_func_start FUN_ov132_02143138
FUN_ov132_02143138: ; 0x02143138
	ldr r12, _02143148 ; =FUN_ov132_02143438
	mov r1, #1
	strb r1, [r0, #0x32a]
	bx r12
_02143148: .word FUN_ov132_02143438
	arm_func_end FUN_ov132_02143138

	arm_func_start FUN_ov132_0214314c
FUN_ov132_0214314c: ; 0x0214314C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	mov r0, #0
	str r0, [sp, #0x14]
	mov r5, r2
	ldr r2, [sp, #0x14]
	mov r6, r1
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, _021433E0 ; =0x02099F78
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x14]
	ldr r1, _021433E4 ; =0x02160338
	str r2, [sp, #8]
	ldr r2, [sp, #0x14]
	mov r4, r3
	str r2, [sp, #4]
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r5, [r10, #0x1f0]
	mov r0, #1
	cmp r4, #0
	strneb r0, [r10, #0x329]
	mov r2, #0
	ldr r1, [r10, #0x1f0]
	ldr r0, [r10, #0x1e8]
	str r6, [r10, #0x1b8]
	cmp r1, r0
	subge r0, r0, #1
	strge r0, [r10, #0x1f0]
	ldr r0, _021433E8 ; =0x020A0640
	strb r2, [r10, #0x32a]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02143218
	ldr r0, _021433EC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _02143218
	mov r0, r10
	bl FUN_ov126_021378b8
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02143218:
	mov r4, #0
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_02142df8
	sub r1, r4, #1
	str r1, [sp]
	ldrsb r11, [r0, #2]
	ldrsb r6, [r0, #3]
	ldrsb r7, [r0, #7]
	ldrsb r9, [r0, #9]
	ldrb r8, [r0, #8]
	mov r5, #1
	b _02143390
_0214324C:
	mov r0, r10
	mov r1, r5
	bl FUN_ov132_02142df8
	mov r4, r0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ldrsb r0, [r4, #2]
	beq _02143280
	cmp r0, r11
	bne _0214328C
_02143274:
	sub r0, r5, #1
	str r0, [r10, #0x1f0]
	b _0214339C
_02143280:
	cmp r0, r11
	movne r0, #1
	strne r0, [sp, #0x14]
_0214328C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrsb r0, [r4, #3]
	beq _021432A8
	cmp r0, r6
	bne _021432B4
	b _02143274
_021432A8:
	cmp r0, r6
	movne r0, #1
	strne r0, [sp, #0x10]
_021432B4:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldrsb r0, [r4, #7]
	beq _021432D0
	cmp r0, r7
	bne _021432DC
	b _02143274
_021432D0:
	cmp r0, r7
	movne r0, #1
	strne r0, [sp, #0xc]
_021432DC:
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrsb r0, [r4, #9]
	beq _021432F8
	cmp r0, r9
	bne _02143304
	b _02143274
_021432F8:
	cmp r0, r9
	movne r0, #1
	strne r0, [sp, #4]
_02143304:
	ldrb r0, [r4, #1]
	cmp r0, #0x14
	bne _02143364
	ldrsb r1, [r4, #9]
	ldr r0, [sp]
	cmp r0, r1
	beq _02143364
	cmp r1, #0
	blt _02143364
	cmp r1, #4
	bge _02143364
	ldr r0, [r10, #0x20c]
	add r0, r0, r1, lsl #3
	bl FUN_ov132_0215a478
	cmp r0, #0
	beq _0214335C
	sub r0, r5, #1
	str r0, [r10, #0x1f0]
	cmp r0, #1
	mov r0, #1
	strlt r0, [r10, #0x1f0]
	b _0214339C
_0214335C:
	ldrsb r0, [r4, #9]
	str r0, [sp]
_02143364:
	ldr r0, [sp, #8]
	cmp r0, #0
	ldrb r0, [r4, #8]
	beq _02143380
	cmp r0, r8
	bne _0214338C
	b _02143274
_02143380:
	cmp r0, r8
	movne r0, #1
	strne r0, [sp, #8]
_0214338C:
	add r5, r5, #1
_02143390:
	ldr r0, [r10, #0x1f0]
	cmp r5, r0
	blt _0214324C
_0214339C:
	ldr r1, [r10, #0x1f0]
	mov r0, r10
	sub r1, r1, #1
	str r1, [r10, #0x1f0]
	bl FUN_ov132_02142df8
	movs r1, r0
	beq _021433C8
	mov r0, r10
	bl FUN_ov132_02142e34
	cmp r0, #0
	bne _0214339C
_021433C8:
	ldr r0, [r10, #0x1f0]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [r10, #0x1f0]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021433E0: .word unk_02099F78
_021433E4: .word ov132_02160338
_021433E8: .word unk_020A0640
_021433EC: .word unk_0209AEC0
	arm_func_end FUN_ov132_0214314c

	arm_func_start FUN_ov132_021433f0
FUN_ov132_021433f0: ; 0x021433F0
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r1, [r5]
	mov r4, #0
	cmp r1, #6
	ldreqb r2, [r5, #1]
	cmpeq r2, #6
	moveq r4, #1
	bl FUN_ov132_0214350c
	cmp r0, #0
	beq _02143430
	cmp r4, #0
	ldreqb r0, [r5]
	ldmeqfd sp!, {r3, r4, r5, pc}
_02143430:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_021433f0

	arm_func_start FUN_ov132_02143438
FUN_ov132_02143438: ; 0x02143438
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0x32a]
	cmp r0, #0
	mvnne r0, #0
	strne r0, [r4, #0x1f0]
	bne _0214348C
	ldr r0, [r4, #0x1f0]
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r0, _021434F0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02143480
	ldr r0, _021434F4 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _0214348C
_02143480:
	ldr r0, [r4, #0x1f0]
	sub r0, r0, #1
	str r0, [r4, #0x1f0]
_0214348C:
	ldr r0, [r4, #0x1f0]
	cmp r0, #0
	blt _021434CC
	mov r0, r4
	bl FUN_ov132_02143058
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl FUN_ov132_021433f0
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_021447d0
	ldrb r1, [r5, #1]
	mov r0, r4
	bl FUN_ov132_021447f4
	ldmfd sp!, {r3, r4, r5, pc}
_021434CC:
	ldr r1, [r4, #0x1b8]
	mov r0, r4
	bl FUN_ov132_021447d0
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl FUN_ov132_021447f4
	str r5, [r4, #0x1b8]
	ldmfd sp!, {r3, r4, r5, pc}
_021434F0: .word unk_020A0640
_021434F4: .word unk_0209AEC0
	arm_func_end FUN_ov132_02143438

	arm_func_start FUN_ov132_021434f8
FUN_ov132_021434f8: ; 0x021434F8
	ldr r0, [r0, #0x1f0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end FUN_ov132_021434f8

	arm_func_start FUN_ov132_0214350c
FUN_ov132_0214350c: ; 0x0214350C
	cmp r1, #6
	mov r0, #0
	bxhi lr
	mov r2, #1
	mov r1, r2, lsl r1
	tst r1, #0x61
	movne r0, r2
	bx lr
	arm_func_end FUN_ov132_0214350c

	arm_func_start FUN_ov132_0214352c
FUN_ov132_0214352c: ; 0x0214352C
	mov r2, #0
	ldr r1, _02143590 ; =0x020A0640
	str r2, [r0, #0x1ec]
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	beq _0214355C
	ldr r1, _02143594 ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	moveq r1, #2
	streq r1, [r0, #0x1e8]
	beq _02143564
_0214355C:
	mov r1, #0
	str r1, [r0, #0x1e8]
_02143564:
	mov r2, #0
	sub r1, r2, #1
	mov r3, #1
	strb r3, [r0, #0x329]
	strb r2, [r0, #0x19e]
	strb r2, [r0, #0x19f]
	strb r2, [r0, #0x1a5]
	strb r2, [r0, #0x1a4]
	strb r2, [r0, #0x1a0]
	str r1, [r0, #0x1f0]
	bx lr
_02143590: .word unk_020A0640
_02143594: .word unk_0209AEC0
	arm_func_end FUN_ov132_0214352c

	arm_func_start FUN_ov132_02143598
FUN_ov132_02143598: ; 0x02143598
	cmp r1, #0
	strb r1, [r0, #0x329]
	cmpne r2, #0
	ldrneb r1, [r0, #0x1a0]
	orrne r1, r1, #2
	strneb r1, [r0, #0x1a0]
	ldreqb r1, [r0, #0x1a0]
	andeq r1, r1, #0xfd
	streqb r1, [r0, #0x1a0]
	bx lr
	arm_func_end FUN_ov132_02143598

	arm_func_start FUN_ov132_021435c0
FUN_ov132_021435c0: ; 0x021435C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r3, _02143844 ; =0x020A0640
	mov r6, r0
	ldrb r0, [r3, #0x1a]
	mov r4, #0
	mov r5, r4
	cmp r0, #0
	beq _021435F0
	ldr r0, _02143848 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	moveq r5, #1
_021435F0:
	cmp r1, #0
	bne _02143604
	ldrb r0, [r6, #0x329]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02143604:
	ldrb r0, [r6, #0x1a0]
	cmp r2, #0
	strb r4, [r6, #0x329]
	orrne r0, r0, #1
	andeq r0, r0, #0xfe
	strb r0, [r6, #0x1a0]
	ldr r0, _0214384C ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0
	bne _02143660
	ldr r0, [r6, #0x1e8]
	add r0, r0, #1
	str r0, [r6, #0x1e8]
	cmp r0, #0x5a
	movge r0, #0x5a
	strge r0, [r6, #0x1e8]
	ldr r0, [r6, #0x1ec]
	add r0, r0, #1
	str r0, [r6, #0x1ec]
	cmp r0, #0x5a
	strge r4, [r6, #0x1ec]
_02143660:
	mov r0, r6
	mov r1, r4
	mov r2, r4
	bl FUN_ov132_02142f78
	ldr r7, _02143850 ; =0x0209A2C0
	cmp r5, #0
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7, #4]
	str r1, [r0, #4]
	ldr r1, [r7, #8]
	str r1, [r0, #8]
	ldr r1, [r7, #0x18]
	str r1, [r0, #0xc]
	ldr r1, [r7, #0x1c]
	str r1, [r0, #0x10]
	ldr r1, [r7, #0x30]
	str r1, [r0, #0x14]
	ldr r1, [r7, #0x38]
	str r1, [r0, #0x18]
	ldr r1, [r7, #0x48]
	strh r1, [r0, #0x1c]
	ldr r1, [r7, #0x4c]
	strh r1, [r0, #0x1e]
	ldrh r1, [r7, #0x52]
	strh r1, [r0, #0x20]
	ldrh r1, [r7, #0x56]
	strh r1, [r0, #0x22]
	ldrb r1, [r7, #0x5c]
	strb r1, [r0, #0x24]
	ldrb r1, [r7, #0x58]
	strb r1, [r0, #0x25]
	ldrb r1, [r7, #0x59]
	strb r1, [r0, #0x26]
	ldrb r1, [r7, #0x5d]
	strb r1, [r0, #0x27]
	ldrb r1, [r7, #0x5a]
	strb r1, [r0, #0x28]
	ldrb r1, [r7, #0x5b]
	strb r1, [r0, #0x29]
	beq _0214379C
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_ov132_02142f78
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7, #4]
	str r1, [r0, #4]
	ldr r1, [r7, #8]
	str r1, [r0, #8]
	ldr r1, [r7, #0x18]
	str r1, [r0, #0xc]
	ldr r1, [r7, #0x1c]
	str r1, [r0, #0x10]
	ldr r1, [r7, #0x30]
	str r1, [r0, #0x14]
	ldr r1, [r7, #0x38]
	str r1, [r0, #0x18]
	ldr r1, [r7, #0x48]
	strh r1, [r0, #0x1c]
	ldr r1, [r7, #0x4c]
	strh r1, [r0, #0x1e]
	ldrh r1, [r7, #0x52]
	strh r1, [r0, #0x20]
	ldrh r1, [r7, #0x56]
	strh r1, [r0, #0x22]
	ldrb r1, [r7, #0x5c]
	strb r1, [r0, #0x24]
	ldrb r1, [r7, #0x58]
	strb r1, [r0, #0x25]
	ldrb r1, [r7, #0x59]
	strb r1, [r0, #0x26]
	ldrb r1, [r7, #0x5d]
	strb r1, [r0, #0x27]
	ldrb r1, [r7, #0x5a]
	strb r1, [r0, #0x28]
	ldrb r1, [r7, #0x5b]
	strb r1, [r0, #0x29]
_0214379C:
	mov r9, #0
	mov r7, #1
	b _0214380C
_021437A8:
	mov r0, r6
	mov r1, r9
	bl FUN_ov126_0213922c
	mov r8, r0
	mov r0, r6
	mov r1, r9
	mov r2, r4
	mov r3, r4
	bl FUN_ov132_02142fbc
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl FUN_ov132_02143854
	cmp r5, #0
	beq _02143808
	mov r0, r6
	mov r1, r9
	mov r2, r7
	mov r3, r4
	bl FUN_ov132_02142fbc
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl FUN_ov132_02143854
_02143808:
	add r9, r9, #1
_0214380C:
	cmp r9, #0x16
	blt _021437A8
	mov r0, r6
	bl FUN_ov132_021447c8
	mov r5, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02142df8
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_ov132_02143a08
	strb r4, [r6, #0x1a0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02143844: .word unk_020A0640
_02143848: .word unk_0209AEC0
_0214384C: .word unk_0209BA20
_02143850: .word unk_0209A2C0
	arm_func_end FUN_ov132_021435c0

	arm_func_start FUN_ov132_02143854
FUN_ov132_02143854: ; 0x02143854
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	movs r5, r1
	cmpne r4, #0
	ldrne r1, [r4, #0x84]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	bl FUN_ov126_0213984c
	ldr r0, [r4, #0x84]
	mov r1, r5
	mov r2, #0x20
	bl MIi_CpuCopy32
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02143854

	arm_func_start FUN_ov132_0214388c
FUN_ov132_0214388c: ; 0x0214388C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _021439FC ; =0x020A0640
	mov r5, r0
	ldrb r0, [r1, #0x1a]
	mov r7, #0
	cmp r0, #0
	beq _021438B8
	ldr r0, _02143A00 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	moveq r7, #1
_021438B8:
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_ov132_02142f78
	ldr r6, _02143A04 ; =0x0209A2C0
	cmp r7, #0
	ldr r1, [r6]
	str r1, [r0]
	ldr r1, [r6, #4]
	str r1, [r0, #4]
	ldr r1, [r6, #8]
	str r1, [r0, #8]
	ldr r1, [r6, #0x18]
	str r1, [r0, #0xc]
	ldr r1, [r6, #0x1c]
	str r1, [r0, #0x10]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0x14]
	ldr r1, [r6, #0x38]
	str r1, [r0, #0x18]
	ldr r1, [r6, #0x48]
	strh r1, [r0, #0x1c]
	ldr r1, [r6, #0x4c]
	strh r1, [r0, #0x1e]
	ldrh r1, [r6, #0x52]
	strh r1, [r0, #0x20]
	ldrh r1, [r6, #0x56]
	strh r1, [r0, #0x22]
	ldrb r1, [r6, #0x5c]
	strb r1, [r0, #0x24]
	ldrb r1, [r6, #0x58]
	strb r1, [r0, #0x25]
	ldrb r1, [r6, #0x59]
	strb r1, [r0, #0x26]
	ldrb r1, [r6, #0x5d]
	strb r1, [r0, #0x27]
	ldrb r1, [r6, #0x5a]
	strb r1, [r0, #0x28]
	ldrb r1, [r6, #0x5b]
	strb r1, [r0, #0x29]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_ov132_02142f78
	ldr r1, [r6]
	str r1, [r0]
	ldr r1, [r6, #4]
	str r1, [r0, #4]
	ldr r1, [r6, #8]
	str r1, [r0, #8]
	ldr r1, [r6, #0x18]
	str r1, [r0, #0xc]
	ldr r1, [r6, #0x1c]
	str r1, [r0, #0x10]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0x14]
	ldr r1, [r6, #0x38]
	str r1, [r0, #0x18]
	ldr r1, [r6, #0x48]
	strh r1, [r0, #0x1c]
	ldr r1, [r6, #0x4c]
	strh r1, [r0, #0x1e]
	ldrh r1, [r6, #0x52]
	strh r1, [r0, #0x20]
	ldrh r1, [r6, #0x56]
	strh r1, [r0, #0x22]
	ldrb r1, [r6, #0x5c]
	strb r1, [r0, #0x24]
	ldrb r1, [r6, #0x58]
	strb r1, [r0, #0x25]
	ldrb r1, [r6, #0x59]
	strb r1, [r0, #0x26]
	ldrb r1, [r6, #0x5d]
	strb r1, [r0, #0x27]
	ldrb r1, [r6, #0x5a]
	strb r1, [r0, #0x28]
	ldrb r1, [r6, #0x5b]
	strb r1, [r0, #0x29]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021439FC: .word unk_020A0640
_02143A00: .word unk_0209AEC0
_02143A04: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214388c

	arm_func_start FUN_ov132_02143a08
FUN_ov132_02143a08: ; 0x02143A08
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	add r0, r0, #0x19c
	mov r2, #0xa
	mov r5, r1
	bl MI_CpuCopy8
	strb r4, [r5]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02143a08

	arm_func_start FUN_ov132_02143a28
FUN_ov132_02143a28: ; 0x02143A28
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x1d4]
	bx lr
	arm_func_end FUN_ov132_02143a28

	arm_func_start FUN_ov132_02143a34
FUN_ov132_02143a34: ; 0x02143A34
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x1dc]
	bx lr
	arm_func_end FUN_ov132_02143a34

	arm_func_start FUN_ov132_02143a40
FUN_ov132_02143a40: ; 0x02143A40
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r9, r1
	add r1, r10, r9, lsl #2
	ldr r0, [r1, #0x1dc]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, [r1, #0x1cc]
	add r0, r0, #0x20
	sub r0, r0, r8
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	adds r5, r1, r0, ror #27
	moveq r5, #0x20
	mov r6, #0
	mov r7, r6
	cmp r5, #0
	ble _02143AD0
	mov r4, r6
_02143A94:
	cmp r8, #0x20
	movge r8, r4
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov132_02143c08
	cmp r0, #0
	ldrneb r0, [r0, #8]
	add r7, r7, #1
	add r8, r8, #1
	cmpne r0, #0xd
	cmpne r0, #0xc
	addne r6, r6, #1
	cmp r7, r5
	blt _02143A94
_02143AD0:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov132_02143a40

	arm_func_start FUN_ov132_02143ad8
FUN_ov132_02143ad8: ; 0x02143AD8
	cmp r2, #0x40
	movhs r0, #0
	bxhs lr
	add r12, r0, r1, lsl #2
	str r2, [r12, #0x1d4]
	cmp r2, #0
	ldreq r3, [r12, #0x1cc]
	cmneq r3, #1
	moveq r0, #0
	streq r0, [r12, #0x1cc]
	beq _02143B24
	add r3, r0, r1, lsl #2
	ldr r0, [r3, #0x1cc]
	cmp r2, r0
	addeq r0, r2, #1
	moveq r1, r0, lsr #0x1f
	rsbeq r0, r1, r0, lsl #27
	addeq r0, r1, r0, ror #27
	streq r0, [r3, #0x1cc]
_02143B24:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov132_02143ad8

	arm_func_start FUN_ov132_02143b2c
FUN_ov132_02143b2c: ; 0x02143B2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r2, r5, r4, lsl #2
	ldr r2, [r2, #0x1d4]
	add r2, r2, #1
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #27
	add r2, r3, r2, ror #27
	bl FUN_ov132_02143ad8
	add r0, r5, r4, lsl #2
	ldr r2, [r0, #0x1d4]
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02143c08
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02143b2c

	arm_func_start FUN_ov132_02143b6c
FUN_ov132_02143b6c: ; 0x02143B6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	mov r1, r4
	bl FUN_ov132_02143bf4
	mov r5, r0
	mov r0, r6
	mov r1, #1
	bl FUN_ov132_02143bf4
	cmp r5, #0
	cmpeq r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	beq _02143BB4
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_02143BB4:
	cmp r5, #0
	bne _02143BC4
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_02143BC4:
	ldrb r2, [r0, #8]
	ldrb r1, [r5, #8]
	cmp r1, r2
	movhi r0, r5
	ldmhifd sp!, {r4, r5, r6, pc}
	ldmlofd sp!, {r4, r5, r6, pc}
	ldr r2, [r5]
	ldr r1, [r0]
	cmp r2, r1
	movls r5, r0
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02143b6c

	arm_func_start FUN_ov132_02143bf4
FUN_ov132_02143bf4: ; 0x02143BF4
	add r2, r0, r1, lsl #2
	ldr r2, [r2, #0x1d4]
	ldr r12, _02143C04 ; =FUN_ov132_02143c08
	bx r12
_02143C04: .word FUN_ov132_02143c08
	arm_func_end FUN_ov132_02143bf4

	arm_func_start FUN_ov132_02143c08
FUN_ov132_02143c08: ; 0x02143C08
	cmp r2, #0x20
	movhs r0, #0
	bxhs lr
	ldr r0, [r0, #0x1c8]
	cmp r1, #1
	addeq r2, r2, #0x20
	add r0, r0, r2, lsl #4
	bx lr
	arm_func_end FUN_ov132_02143c08

	arm_func_start FUN_ov132_02143c28
FUN_ov132_02143c28: ; 0x02143C28
	add r0, r0, r1
	ldrb r0, [r0, #0x320]
	bx lr
	arm_func_end FUN_ov132_02143c28

	arm_func_start FUN_ov132_02143c34
FUN_ov132_02143c34: ; 0x02143C34
	add r0, r0, r1
	ldrb r0, [r0, #0x322]
	bx lr
	arm_func_end FUN_ov132_02143c34

	arm_func_start FUN_ov132_02143c40
FUN_ov132_02143c40: ; 0x02143C40
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	bl FUN_020404bc
	strb r0, [r4, #0x320]
	mov r0, #1
	bl FUN_020404bc
	strb r0, [r4, #0x321]
	add r0, r4, #0x164
	add r1, r4, #0x17c
	mov r2, #0x18
	bl MI_CpuCopy8
	ldr r3, [r4, #0x164]
	ldr r2, [r4, #0x168]
	ldr r1, [r4, #0x1d4]
	ldr r0, [r4, #0x1d8]
	strb r3, [r4, #0x322]
	strb r2, [r4, #0x323]
	str r1, [r4, #0x1dc]
	str r0, [r4, #0x1e0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_02143c40

	arm_func_start FUN_ov132_02143c94
FUN_ov132_02143c94: ; 0x02143C94
	strb r1, [r0, #0x3b7]
	bx lr
	arm_func_end FUN_ov132_02143c94

	arm_func_start FUN_ov132_02143c9c
FUN_ov132_02143c9c: ; 0x02143C9C
	ldrb r0, [r0, #0x3b7]
	bx lr
	arm_func_end FUN_ov132_02143c9c

	arm_func_start FUN_ov132_02143ca4
FUN_ov132_02143ca4: ; 0x02143CA4
	cmp r1, #0
	ldreq r0, _02143CCC ; =0x020A0640
	ldreqb r0, [r0, #0x9a]
	bxeq lr
	ldr r0, _02143CCC ; =0x020A0640
	ldrb r0, [r0, #0x9a]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_02143CCC: .word unk_020A0640
	arm_func_end FUN_ov132_02143ca4

	arm_func_start FUN_ov132_02143cd0
FUN_ov132_02143cd0: ; 0x02143CD0
	ldr r12, _02143CDC ; = FUN_ov16_020f078c
	mov r0, r1
	bx r12
_02143CDC: .word FUN_ov16_020f078c
	arm_func_end FUN_ov132_02143cd0

	arm_func_start FUN_ov132_02143ce0
FUN_ov132_02143ce0: ; 0x02143CE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #0x1c0]
	str r1, [r4, #0x1bc]
	bl FUN_ov132_021447c8
	cmp r0, #0xd
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x1b4]
	mov r0, r4
	bl FUN_ov132_021447d0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_02143ce0

	arm_func_start FUN_ov132_02143d10
FUN_ov132_02143d10: ; 0x02143D10
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	mov r6, r2
	bl FUN_ov126_021375d4
	mov r5, r0
	mov r0, r4
	bl FUN_020404cc
	ldrb r0, [r5, #0x10]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r6, #1
	mov r0, r7
	bl FUN_ov132_021434f8
	cmp r0, #0
	cmpeq r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0x10]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02143DA0
	mov r0, r5
	bl FUN_02040a80
	cmp r0, #0
	bne _02143DA0
	ldr r1, [r5]
	mov r0, #1
	str r1, [r4]
	ldr r1, [r5, #4]
	str r1, [r4, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02143DA0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_02143d10

	arm_func_start FUN_ov132_02143da8
FUN_ov132_02143da8: ; 0x02143DA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov126_021375d4
	mov r4, r0
	mov r0, r6
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02143E34
	ldr r0, _02143E40 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02143DEC
	ldr r0, _02143E44 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _02143E34
_02143DEC:
	ldr r2, [r5]
	ldr r0, _02143E48 ; =0x0209A2C0
	ldr r1, [r5, #4]
	str r2, [r0]
	str r1, [r0, #4]
	ldrb r0, [r4, #0x10]
	orr r0, r0, #0x10
	strb r0, [r4, #0x10]
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020f07f4
	mov r1, r0
	mov r0, r6
	bl FUN_ov132_0214fb50
	mov r1, #1
	mov r0, r6
	mov r2, r1
	bl FUN_ov132_021435c0
	ldmfd sp!, {r4, r5, r6, pc}
_02143E34:
	mov r0, r6
	bl FUN_ov132_02143438
	ldmfd sp!, {r4, r5, r6, pc}
_02143E40: .word unk_020A0640
_02143E44: .word unk_0209AEC0
_02143E48: .word unk_0209A2C0
	arm_func_end FUN_ov132_02143da8

	arm_func_start FUN_ov132_02143e4c
FUN_ov132_02143e4c: ; 0x02143E4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	ldr r3, _021440A4 ; =0x0209A2C0
	mov r9, r0
	ldr r0, [r3, #0x48]
	mov r7, r1
	mov r8, r2
	bl FUN_ov16_020efa80
	mov r10, r0
	mov r5, #0
	mov r0, r9
	sub r6, r5, #0x80000001
	bl FUN_ov132_02144780
	cmp r0, #0
	addne sp, sp, #0x30
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	beq _02143EA0
	mov r0, r8
	bl FUN_020404cc
_02143EA0:
	cmp r7, #0
	cmpne r10, #0
	addeq sp, sp, #0x30
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r7, #0x84]
	cmp r4, #0
	addeq sp, sp, #0x30
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_0206d6b0
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _021440A8 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	mov r0, r7
	bne _02143F0C
	bl FUN_0206d6b0
	cmp r0, #0
	bne _02143F28
	add sp, sp, #0x30
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02143F0C:
	bl FUN_0206d5f0
	mov r7, r0
	bl FUN_ov16_020f081c
	cmp r7, r0
	addne sp, sp, #0x30
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02143F28:
	ldr r1, [r10, #0x84]
	ldr r2, [r10, #0x84]
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	subs r1, r0, r1
	ldr r0, [r4, #4]
	rsbmi r1, r1, #0
	subs r2, r0, r2
	rsbmi r2, r2, #0
	cmp r2, #0xc8000
	cmple r1, #0xc8000
	addgt sp, sp, #0x30
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_01ffba80
	cmp r0, #0xc8000
	addgt sp, sp, #0x30
	mov r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, sp, #0xc
	add r3, sp, #8
	mov r1, r0
	bl FUN_ov16_020efd94 ; may be ov17
	ldr r0, [r10, #0x84]
	ldr r1, [r4, #4]
	ldmia r0, {r2, r3}
	ldr r0, [r4]
	mov r7, #1
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r11, sp, #0x10
	add r10, sp, #0
	b _02144090
_02143FBC:
	cmp r7, #4
	addls pc, pc, r7, lsl #2
	b _0214403C
_02143FC8: ; jump table
	b _0214403C ; case 0
	b _02143FDC ; case 1
	b _0214400C ; case 2
	b _02143FF8 ; case 3
	b _0214401C ; case 4
_02143FDC:
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	add r1, r0, #0x100000
_02143FE8:
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	b _02144038
_02143FF8:
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	add r1, r0, #0x100000
	add r2, r2, #0xc0000
	b _02143FE8
_0214400C:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, r1, #0xc0000
	b _0214402C
_0214401C:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, r1, #0xc0000
	add r0, r0, #0x100000
_0214402C:
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
_02144038:
	str r2, [sp, #0x2c]
_0214403C:
	mov r0, r11
	add r1, sp, #0x20
	mov r2, r10
	bl FUN_0203fdf0
	cmp r0, #0
	beq _0214408C
	mov r0, r9
	mov r1, r4
	mov r2, r10
	bl FUN_01ffba50
	cmp r5, #0
	beq _02144074
	cmp r0, r6
	bge _0214408C
_02144074:
	ldr r1, [sp]
	mov r5, r7
	str r1, [r8]
	ldr r1, [sp, #4]
	mov r6, r0
	str r1, [r8, #4]
_0214408C:
	add r7, r7, #1
_02144090:
	cmp r7, #5
	blt _02143FBC
	mov r0, r5
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021440A4: .word unk_0209A2C0
_021440A8: .word unk_020A0640
	arm_func_end FUN_ov132_02143e4c

	arm_func_start FUN_ov132_021440ac
FUN_ov132_021440ac: ; 0x021440AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	movs r10, r1
	ldr r1, [r10, #0x88]
	str r0, [sp]
	ldrb r0, [r1, #0x84]
	str r2, [sp, #4]
	mov r4, #0
	add r5, r0, #1
	beq _021440DC
	movs r0, r2
	bne _021440E8
_021440DC:
	add sp, sp, #0x10
	mov r0, #0x80000000
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021440E8:
	ldrsh r0, [r1, #0x86]
	ldr r1, [r10, #0x84]
	cmp r5, r0
	ldrh r0, [r1, #0x18]
	str r0, [sp, #8]
	ldmia r1, {r0, r1}
	bgt _021441C8
	mvn r11, #0x80000000
_02144108:
	ldr r3, [r10, #0x88]
	ldrsh r2, [r3, #0x86]
	cmp r5, r2
	ldreq r2, [sp, #4]
	ldmeqia r2, {r6, r7}
	addne r2, r3, #0x34
	addne r3, r2, r5, lsl #3
	ldmneia r3, {r6, r7}
	sub r8, r6, r0
	sub r9, r7, r1
	mov r0, r9
	mov r1, r8
	str r11, [sp, #0xc]
	bl FX_Atan2Idx
	mov r2, r0
	ldr r0, [sp]
	ldr r1, [sp, #8]
	add r3, sp, #0xc
	bl FUN_ov132_02141174
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r8, #0
	sub r0, r11, r0
	rsblt r8, r8, #0
	add r4, r4, r0
	cmp r9, #0
	smull r1, r0, r8, r8
	rsblt r9, r9, #0
	adds r8, r1, #0x800
	adc r3, r0, #0
	smull r2, r1, r9, r9
	adds r2, r2, #0x800
	mov r0, r8, lsr #0xc
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	orr r0, r0, r3, lsl #20
	mov r1, r2, asr #4
	add r0, r1, r0, asr #4
	bl FX_Sqrt
	ldr r2, [r10, #0x88]
	add r4, r4, r0, lsl #2
	ldrsh r2, [r2, #0x86]
	add r5, r5, #1
	mov r0, r6
	mov r1, r7
	cmp r5, r2
	ble _02144108
_021441C8:
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_021440ac

	arm_func_start FUN_ov132_021441d4
FUN_ov132_021441d4: ; 0x021441D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x68
	add r7, sp, #8
	mov r5, r0
	mov r8, r1
	mov r4, r2
	mov r6, #6
_021441F0:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _021441F0
	cmp r4, #0
	mov r9, #0
	ble _02144284
	add r8, sp, #8
	mov r7, r9
	mov r6, #1
_02144218:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	addle sp, sp, #0x68
	mvnle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #0x194]
	mov r1, r8
	bl FUN_ov132_02159124
	sub r4, r4, r0
	mov r0, r5
	mov r1, r8
	bl FUN_ov126_0212eab0
	mov r0, r5
	mov r1, r8
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_ov126_0212ec50
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, r5
	mov r1, r8
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_ov126_0212eca8
	cmp r4, #0
	add r9, r9, #1
	bgt _02144218
_02144284:
	mov r0, r9
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov132_021441d4

	arm_func_start FUN_ov132_02144290
FUN_ov132_02144290: ; 0x02144290
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	str r1, [sp, #0x10]
	mov r0, r1
	ldr r1, [sp, #0x68]
	str r2, [sp, #0x14]
	ldr r11, [sp, #0x60]
	ldr r9, [sp, #0x64]
	str r1, [sp, #0x68]
	mov r6, #0
	bl FUN_0206dc98
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x30]
	ldr r2, [r1, #0x84]
	ldr r0, [r2]
	ldrh r1, [r2, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r2, #4]
	str r0, [sp, #0x1c]
	add r0, r1, #0x8000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r6, [r11]
	bl FUN_02040148
	str r0, [sp, #0x24]
	mov r0, #0x8000
	rsb r0, r0, #0
	mov r5, r6
	str r0, [sp, #0x34]
_02144310:
	ldr r1, [sp, #0x24]
	mov r0, r10
	mov r2, r5
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02144470
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02144470
	ldr r2, [r4, #0x84]
	ldr r0, [sp, #0x20]
	ldr r1, [r2]
	ldr r2, [r2, #4]
	subs r1, r1, r0
	rsbmi r7, r1, #0
	ldr r0, [sp, #0x1c]
	movpl r7, r1
	subs r0, r2, r0
	rsbmi r8, r0, #0
	movpl r8, r0
	cmp r7, #0x30000
	cmple r8, #0x30000
	bgt _02144470
	bl FX_Atan2Idx
	ldr r1, [sp, #0x18]
	mov r2, #0x6000
	str r0, [sp, #0x28]
	bl FUN_020405a4
	cmp r0, #0
	beq _02144470
	mov r1, r7
	mov r2, r8
	mov r0, r10
	bl FUN_01ffba80
	mov r7, r0
	cmp r7, #0x30000
	bgt _02144470
	mov r0, r4
	bl FUN_0206dc98
	ldr r1, [sp, #0x30]
	cmp r0, r1
	ldrgt r0, [sp, #0x68]
	mvngt r1, #0
	strgtb r1, [r0]
	bgt _0214447C
	bne _02144418
	ldr r0, [sp, #0x68]
	mov r1, #0
	strb r1, [r0]
	mov r0, r1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r2, #0
	str r0, [sp, #8]
	mov r0, r1
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r3, #0x1e
	bl FUN_ov132_021417d8
	ldr r1, [r11]
	cmp r0, r1
	strgt r0, [r11]
_02144418:
	mov r0, r4
	bl FUN_0206cbf8
	ldr r1, [sp, #0x2c]
	mov r2, r6, lsl #1
	cmp r1, r7
	ldr r1, [sp, #0x14]
	add r6, r6, #1
	strh r0, [r1, r2]
	ble _02144470
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x28]
	str r7, [sp, #0x2c]
	sub r1, r1, r0
	ldr r0, [sp, #0x34]
	str r1, [r9]
	cmp r1, r0
	addlt r0, r1, #0x10000
	strlt r0, [r9]
	blt _02144470
	cmp r1, #0x8000
	subgt r0, r1, #0x10000
	strgt r0, [r9]
_02144470:
	add r5, r5, #1
	cmp r5, #0xb
	blt _02144310
_0214447C:
	mov r0, r6
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_02144290

	arm_func_start FUN_ov132_02144488
FUN_ov132_02144488: ; 0x02144488
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	mov r0, r1
	bl FUN_ov16_020efa80
	mov r1, #1
	mov r7, r0
	strb r1, [sp, #0x14]
	ldr r0, [r7, #0x84]
	mov r4, #0
	ldrb r1, [r0, #0x1d]
	sub r0, r4, #0x80000001
	str r0, [sp, #0x10]
	cmp r1, #3
	cmpne r1, #2
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7, #0x88]
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	addne sp, sp, #0x38
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_02139878
	cmp r0, #0
	addne sp, sp, #0x38
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, sp, #0x20
	mov r1, r4
	mov r0, r5
	mov r2, #0x16
	bl MI_CpuFill8
	add r0, sp, #0x1c
	str r0, [sp]
	add r1, sp, #0x18
	str r1, [sp, #4]
	add r0, sp, #0x14
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r2, r5
	str r4, [sp, #0xc]
	mov r3, #0xb
	bl FUN_ov132_02144290
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r5, #0x1d
	mov r9, r0
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r4
	mov r3, r5
	bl FUN_ov132_021417d8
	mov r6, r0
	sub r0, r5, #0x1e
	ldrsb r1, [sp, #0x14]
	mov r5, #0
	cmp r1, r0
	moveq r6, r4
	cmp r9, #0
	addlt sp, sp, #0x38
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r0, [sp, #0x14]
	cmp r0, #0
	bne _021445F8
	mov r4, #7
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_021448a8
	ldr r8, [sp, #0x1c]
	sub r2, r9, #1
	add r1, r8, r6
	mul r1, r2, r1
	mul r3, r1, r0
	ldr r2, _021446E8 ; =0x51EB851F
	mov r0, r3, lsr #0x1f
	smull r1, r3, r2, r3
	add r3, r0, r3, asr #5
	rsb r6, r3, r6, lsl #1
	add r0, r3, r8, lsl #1
	str r0, [sp, #0x1c]
	cmp r6, #0
	ble _021445F8
	add r0, r6, r0
	bl FUN_ov16_020ef928
	cmp r0, r6
	movlo r0, #1
	subhs r0, r4, #8
	strb r0, [sp, #0x14]
_021445F8:
	ldrsb r0, [sp, #0x14]
	cmp r0, #1
	bne _021446B0
	mov r8, #0
	mov r4, #1
	mov r11, #0x1e
	add r6, sp, #0x20
	b _0214464C
_02144618:
	mov r0, r8, lsl #1
	ldrh r0, [r6, r0]
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r1, r0
	beq _02144648
	str r5, [sp]
	mov r0, r10
	mov r2, r11
	mov r3, r4
	str r4, [sp, #4]
	bl FUN_ov132_0213c29c
_02144648:
	add r8, r8, #1
_0214464C:
	cmp r8, r9
	blt _02144618
	ldr r0, [sp, #0x10]
	cmn r0, #0x80000001
	bge _021446A4
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldr r0, [r7, #0x84]
	ldrb r3, [r0, #0x1a]
	bge _0214468C
	ldr r0, _021446EC ; =0x02099F14
	str r5, [sp]
	mov r1, r7
	ldr r0, [r0]
	mov r2, #3
	b _021446A0
_0214468C:
	ldr r0, _021446EC ; =0x02099F14
	str r5, [sp]
	ldr r0, [r0]
	mov r1, r7
	mov r2, #2
_021446A0:
	bl FUN_ov1_020e3c14
_021446A4:
	mov r0, r7
	mov r1, #5
	b _021446B8
_021446B0:
	mov r0, r7
	mov r1, #6
_021446B8:
	mov r2, #0x1e
	bl FUN_0206dbb4
	mov r0, r10
	mov r2, r7
	mov r1, #0x19
	mov r3, #0
	bl FUN_ov126_0213a490
	ldr r1, [r7, #0x88]
	mov r0, #0x1e
	strb r0, [r1, #0x30]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021446E8: .word 0x51EB851F
_021446EC: .word unk_02099F14
	arm_func_end FUN_ov132_02144488

	arm_func_start FUN_ov132_021446f0
FUN_ov132_021446f0: ; 0x021446F0
	cmp r1, #0
	cmpne r2, #0
	bxeq lr
	ldr r12, [r1]
	ldr r0, [r2]
	ldr r3, [r1, #4]
	str r0, [r1]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	str r12, [r2]
	str r3, [r2, #4]
	bx lr
	arm_func_end FUN_ov132_021446f0

	arm_func_start FUN_ov132_02144720
FUN_ov132_02144720: ; 0x02144720
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206da98
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02138cc8
	ldrsh r0, [r0]
	cmp r0, #0xa
	ldreq r0, [r4, #0x88]
	moveq r1, #1
	streqb r1, [r0, #0x2f]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02144720

	arm_func_start FUN_ov132_02144764
FUN_ov132_02144764: ; 0x02144764
	mov r1, #1
	strb r1, [r0, #0x32a]
	bx lr
	arm_func_end FUN_ov132_02144764

	arm_func_start FUN_ov132_02144770
FUN_ov132_02144770: ; 0x02144770
	ldrb r0, [r0, #0x1a9]
	bx lr
	arm_func_end FUN_ov132_02144770

	arm_func_start FUN_ov132_02144778
FUN_ov132_02144778: ; 0x02144778
	strb r1, [r0, #0x1a9]
	bx lr
	arm_func_end FUN_ov132_02144778

	arm_func_start FUN_ov132_02144780
FUN_ov132_02144780: ; 0x02144780
	add r0, r0, #0x100
	ldrsb r0, [r0, #0xa8]
	bx lr
	arm_func_end FUN_ov132_02144780

	arm_func_start FUN_ov132_0214478c
FUN_ov132_0214478c: ; 0x0214478C
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldreq r0, _021447C4 ; =0x0209BA20
	moveq r1, #0
	streqb r1, [r0, #0x87f]
	cmp r4, #1
	bne _021447BC
	mov r0, r5
	bl FUN_ov132_02144f4c
	cmp r0, #0
	movne r4, #8
_021447BC:
	strb r4, [r5, #0x1a8]
	ldmfd sp!, {r3, r4, r5, pc}
_021447C4: .word unk_0209BA20
	arm_func_end FUN_ov132_0214478c

	arm_func_start FUN_ov132_021447c8
FUN_ov132_021447c8: ; 0x021447C8
	ldrb r0, [r0, #0x19c]
	bx lr
	arm_func_end FUN_ov132_021447c8

	arm_func_start FUN_ov132_021447d0
FUN_ov132_021447d0: ; 0x021447D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov132_021491c4
	cmp r0, #1
	strneb r4, [r5, #0x19c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_021447d0

	arm_func_start FUN_ov132_021447ec
FUN_ov132_021447ec: ; 0x021447EC
	ldrb r0, [r0, #0x19d]
	bx lr
	arm_func_end FUN_ov132_021447ec

	arm_func_start FUN_ov132_021447f4
FUN_ov132_021447f4: ; 0x021447F4
	strb r1, [r0, #0x19d]
	bx lr
	arm_func_end FUN_ov132_021447f4

	arm_func_start FUN_ov132_021447fc
FUN_ov132_021447fc: ; 0x021447FC
	add r0, r0, #0x7c
	add r0, r0, r1, lsl #3
	bx lr
	arm_func_end FUN_ov132_021447fc

	arm_func_start FUN_ov132_02144808
FUN_ov132_02144808: ; 0x02144808
	add r0, r0, #0x7c
	add r0, r0, r1, lsl #3
	bx lr
	arm_func_end FUN_ov132_02144808

	arm_func_start FUN_ov132_02144814
FUN_ov132_02144814: ; 0x02144814
	stmfd sp!, {r4, lr}
	ldr r2, _02144850 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	mov r0, r1
	bne _02144840
	bl FUN_0206d5f0
	add r1, r4, #0x7c
	add r0, r1, r0, lsl #3
	ldmfd sp!, {r4, pc}
_02144840:
	bl FUN_0206d554
	add r1, r4, #0x7c
	add r0, r1, r0, lsl #3
	ldmfd sp!, {r4, pc}
_02144850: .word unk_020A0640
	arm_func_end FUN_ov132_02144814

	arm_func_start FUN_ov132_02144854
FUN_ov132_02144854: ; 0x02144854
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
_02144864:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02144894
	mov r0, r7
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02144894:
	add r5, r5, #1
	cmp r5, #0xb
	blt _02144864
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_02144854

	arm_func_start FUN_ov132_021448a8
FUN_ov132_021448a8: ; 0x021448A8
	cmp r1, #0x20
	movhs r0, #0
	ldrlo r0, _021448C4 ; =0x0209BA20
	movlo r1, r1, lsl #1
	ldrlo r0, [r0, #0x7e4]
	ldrlosh r0, [r0, r1]
	bx lr
_021448C4: .word unk_0209BA20
	arm_func_end FUN_ov132_021448a8

	arm_func_start FUN_ov132_021448c8
FUN_ov132_021448c8: ; 0x021448C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov132_02144854
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrsh r1, [r0, #0x94]
	mov r0, r4
	mov r2, #0
	bl FUN_ov132_021430b4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_021448c8

	arm_func_start FUN_ov132_021448f4
FUN_ov132_021448f4: ; 0x021448F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov132_02144780
	cmp r0, #0
	ldreq r1, _02144964 ; =0x0209BA20
	ldreqb r0, [r1, #0x87f]
	cmpeq r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _02144968 ; =0x0209A2C0
	ldrb r4, [r1, #0x882]
	ldr r0, [r0, #0x48]
	bl FUN_ov16_020efa80
	mov r1, r0
	tst r4, #1
	mov r4, #1
	beq _0214495C
	cmp r1, #0
	mov r5, #0
	beq _02144954
	mov r0, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	movne r5, r4
_02144954:
	cmp r5, #0
	moveq r4, #0
_0214495C:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02144964: .word unk_0209BA20
_02144968: .word unk_0209A2C0
	arm_func_end FUN_ov132_021448f4

	arm_func_start FUN_ov132_0214496c
FUN_ov132_0214496c: ; 0x0214496C
	stmfd sp!, {r3, lr}
	bl FUN_ov132_02144780
	cmp r0, #0
	ldreq r0, _021449A0 ; =0x0209BA20
	ldreqb r1, [r0, #0x87f]
	cmpeq r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldrb r0, [r0, #0x882]
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_021449A0: .word unk_0209BA20
	arm_func_end FUN_ov132_0214496c

	arm_func_start FUN_ov132_021449a4
FUN_ov132_021449a4: ; 0x021449A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _02144A08 ; =0x020A0640
	mov r5, r0
	ldrb r0, [r2, #0x1a]
	mov r4, r1
	cmp r0, #0
	beq _021449D0
	ldr r0, _02144A0C ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_021449D0:
	mov r7, #0
	add r6, r5, #0x270
	b _021449FC
_021449DC:
	mov r0, r5
	mov r1, r7
	bl FUN_ov132_02144f78
	cmp r0, #0
	ldrne r0, [r6, r7, lsl #2]
	subne r0, r0, r4
	strne r0, [r6, r7, lsl #2]
	add r7, r7, #1
_021449FC:
	cmp r7, #2
	blt _021449DC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02144A08: .word unk_020A0640
_02144A0C: .word unk_0209AEC0
	arm_func_end FUN_ov132_021449a4

	arm_func_start FUN_ov132_02144a10
FUN_ov132_02144a10: ; 0x02144A10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	add r0, r5, #0xda
	mov r1, r4
	add r0, r0, #0x200
	mov r2, #2
	str r4, [r5, #0x26c]
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x270
	mov r2, #8
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x2dc
	mov r2, #4
	bl MI_CpuFill8
	mov r0, #1
	strb r0, [r5, #0x2e3]
	strb r0, [r5, #0x2e2]
	strb r0, [r5, #0x2e1]
	strb r0, [r5, #0x2e0]
	strb r4, [r5, #0x374]
	strb r4, [r5, #0x375]
	strb r4, [r5, #0x2d8]
	strb r4, [r5, #0x2d9]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02144a10

	arm_func_start FUN_ov132_02144a84
FUN_ov132_02144a84: ; 0x02144A84
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _02144AF4
_02144A90: ; jump table
	b _02144AF4 ; case 0
	b _02144AF4 ; case 1
	b _02144AF4 ; case 2
	b _02144ABC ; case 3
	b _02144AC4 ; case 4
	b _02144AD4 ; case 5
	b _02144ACC ; case 6
	b _02144AD4 ; case 7
	b _02144ADC ; case 8
	b _02144AE4 ; case 9
	b _02144AEC ; case 10
_02144ABC:
	add r0, r0, #0xc
	bx lr
_02144AC4:
	add r0, r0, #0x1c
	bx lr
_02144ACC:
	add r0, r0, #0x5c
	bx lr
_02144AD4:
	add r0, r0, #0x4c
	bx lr
_02144ADC:
	add r0, r0, #0x2c
	bx lr
_02144AE4:
	add r0, r0, #0x3c
	bx lr
_02144AEC:
	ldr r0, _02144AFC ; =0x0209A7FC
	bx lr
_02144AF4:
	mov r0, #0
	bx lr
_02144AFC: .word unk_0209A7FC
	arm_func_end FUN_ov132_02144a84

	arm_func_start FUN_ov132_02144b00
FUN_ov132_02144b00: ; 0x02144B00
	stmfd sp!, {r3, lr}
	cmp r1, #1
	beq _02144B18
	cmp r1, #2
	beq _02144B24
	b _02144B30
_02144B18:
	ldr r0, _02144B38 ; =0x0209A84C
	add r0, r0, r2, lsl #4
	ldmfd sp!, {r3, pc}
_02144B24:
	ldr r0, _02144B3C ; =0x0209A82C
	add r0, r0, r2, lsl #4
	ldmfd sp!, {r3, pc}
_02144B30:
	bl FUN_ov132_02144a84
	ldmfd sp!, {r3, pc}
_02144B38: .word unk_0209A84C
_02144B3C: .word unk_0209A82C
	arm_func_end FUN_ov132_02144b00

	arm_func_start FUN_ov132_02144b40
FUN_ov132_02144b40: ; 0x02144B40
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _02144C7C ; =0x0209A720
	movs r6, r2
	ldr r2, [r4, #0xdc]
	mov r7, r1
	str r2, [r7]
	ldr r1, [r4, #0xe0]
	add r2, r2, r6
	str r1, [r7, #4]
	ldr r1, [r4, #0xe4]
	mov r8, r0
	str r1, [r7, #8]
	ldr r12, [r4, #0xe8]
	sub r1, r1, r6
	mov r5, r3
	str r12, [r7, #0xc]
	str r2, [r7]
	str r1, [r7, #8]
	bmi _02144BA8
	ldrb r1, [sp, #0x18]
	cmp r1, #0
	beq _02144BA8
	mov r1, #1
	bl FUN_ov132_021461f8
	cmp r0, #0
	bne _02144BB4
_02144BA8:
	ldr r0, [r7, #4]
	add r0, r0, r6
	str r0, [r7, #4]
_02144BB4:
	cmp r6, #0
	blt _02144BDC
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _02144BDC
	mov r0, r8
	mov r1, #0
	bl FUN_ov132_021461f8
	cmp r0, #0
	bne _02144BE8
_02144BDC:
	ldr r0, [r7, #0xc]
	sub r0, r0, r6
	str r0, [r7, #0xc]
_02144BE8:
	mov r0, r4
	mov r1, #1
	bl FUN_ov126_0212afc8
	cmp r0, #0
	ldrne r1, [r4, #0x150]
	ldrne r0, [r7, #4]
	addne r1, r1, r5
	cmpne r1, r0
	strgt r1, [r7, #4]
	mov r0, r4
	mov r1, #3
	bl FUN_ov126_0212afc8
	cmp r0, #0
	ldrne r1, [r4, #0x158]
	ldrne r0, [r7, #0xc]
	subne r1, r1, r5
	cmpne r1, r0
	strlt r1, [r7, #0xc]
	mov r0, r4
	mov r1, #0
	bl FUN_ov126_0212afc8
	cmp r0, #0
	ldrne r1, [r4, #0x14c]
	ldrne r0, [r7]
	addne r1, r1, r5
	cmpne r1, r0
	strgt r1, [r7]
	mov r0, r4
	mov r1, #2
	bl FUN_ov126_0212afc8
	cmp r0, #0
	ldrne r1, [r4, #0x154]
	ldrne r0, [r7, #8]
	subne r1, r1, r5
	cmpne r1, r0
	strlt r1, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02144C7C: .word unk_0209A720
	arm_func_end FUN_ov132_02144b40

	arm_func_start FUN_ov132_02144c80
FUN_ov132_02144c80: ; 0x02144C80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r6, #0
	mov r5, #0x6000
	mov r7, #1
	mov r2, r6
	mov r3, r5
	add r1, r8, #0xc
	str r7, [sp]
	bl FUN_ov132_02144b40
	mov r0, r8
	mov r2, r5
	mov r3, r5
	add r1, r8, #0x1c
	str r7, [sp]
	bl FUN_ov132_02144b40
	sub r4, r5, #0x1a000
	mov r0, r8
	str r7, [sp]
	add r1, r8, #0x5c
	mov r2, r4
	mov r3, r5
	bl FUN_ov132_02144b40
	str r7, [sp]
	mov r0, r8
	add r1, r8, #0x4c
	mov r2, r7
	mov r3, r5
	bl FUN_ov132_02144b40
	str r7, [sp]
	mov r3, r7
	mov r0, r8
	add r1, r8, #0x2c
	sub r2, r5, #0x24000
	bl FUN_ov132_02144b40
	str r6, [sp]
	mov r2, r4
	mov r3, r5
	mov r0, r8
	add r1, r8, #0x3c
	bl FUN_ov132_02144b40
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_02144c80

	arm_func_start FUN_ov132_02144d30
FUN_ov132_02144d30: ; 0x02144D30
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r1
	mov r4, #0
	bl FUN_01ff9578
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov132_02144f4c
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r5, r6
	ldrb r0, [r0, #0x2da]
	cmp r0, #1
	movhs r0, r4
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x198]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r6
	bl FUN_ov132_021462c4
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r6
	bl FUN_ov132_02144f78
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov16_020f081c
	cmp r6, r0
	bne _02144DF8
	ldrb r0, [r5, #0x374]
	cmp r0, #0
	beq _02144DF0
	ldrb r0, [r5, #0x375]
	cmp r0, #0
	moveq r0, #1
	movne r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02144DF0:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02144DF8:
	ldr r0, _02144E9C ; =0x020A0640
	ldrb r1, [r0, #0x8f]
	ldr r2, [r0]
	cmp r1, #1
	bne _02144E1C
	ldr r0, _02144EA0 ; =0x00004650
	cmp r2, r0
	movlo r0, r4
	ldmlofd sp!, {r4, r5, r6, pc}
_02144E1C:
	cmp r1, #4
	bne _02144E34
	ldr r0, _02144EA4 ; =0x00008CA0
	cmp r2, r0
	movhi r0, #0
	ldmhifd sp!, {r4, r5, r6, pc}
_02144E34:
	ldr r1, [r5, #0x26c]
	ldr r0, _02144EA8 ; =0x51EB851F
	add r3, r1, #1
	umull r0, r1, r3, r0
	mov r1, r1, lsr #5
	mov r2, #0x64
	umull r0, r1, r2, r1
	subs r1, r3, r0
	str r3, [r5, #0x26c]
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _02144E9C ; =0x020A0640
	ldrb r1, [r0, #0x98]
	ldrb r0, [r0, #0x99]
	sub r0, r1, r0
	mov r0, r0, lsl #2
	adds r4, r0, #2
	movmi r4, #0
	cmp r4, #0xc
	mov r0, #0x64
	movgt r4, #0xc
	bl FUN_ov16_020ef928
	cmp r0, r4
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02144E9C: .word unk_020A0640
_02144EA0: .word 0x00004650
_02144EA4: .word 0x00008CA0
_02144EA8: .word 0x51EB851F
	arm_func_end FUN_ov132_02144d30

	arm_func_start FUN_ov132_02144eac
FUN_ov132_02144eac: ; 0x02144EAC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_01ff9578
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov132_02144f4c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, r4
	ldrb r1, [r0, #0x2dc]
	ldrb r0, [r0, #0x2e0]
	cmp r1, r0
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02144f78
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov16_020f081c
	cmp r5, r0
	bne _02144F44
	ldrb r0, [r6, #0x374]
	cmp r0, #0
	beq _02144F3C
	ldrb r0, [r6, #0x375]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02144F3C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02144F44:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02144eac

	arm_func_start FUN_ov132_02144f4c
FUN_ov132_02144f4c: ; 0x02144F4C
	ldr r0, _02144F74 ; =0x020A0640
	mov r1, #1
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xd
	cmpne r0, #0xc
	movne r1, #0
	mov r0, #1
	cmp r1, #0
	moveq r0, #0
	bx lr
_02144F74: .word unk_020A0640
	arm_func_end FUN_ov132_02144f4c

	arm_func_start FUN_ov132_02144f78
FUN_ov132_02144f78: ; 0x02144F78
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x270]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov132_02144f78

	arm_func_start FUN_ov132_02144f90
FUN_ov132_02144f90: ; 0x02144F90
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov132_02144f78
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x270]
	ldr r1, [r5, #8]
	add r0, r0, r1
	sub r0, r0, #1
	bl _s32_div_f
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r0, #7
	movgt r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02144f90

	arm_func_start FUN_ov132_02144fdc
FUN_ov132_02144fdc: ; 0x02144FDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov132_02144f78
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x270]
	ldr r1, [r5, #4]
	cmp r0, #0
	movlt r0, #0
	cmp r0, r1
	movgt r0, r1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02144fdc

	arm_func_start FUN_ov132_02145018
FUN_ov132_02145018: ; 0x02145018
	cmp r2, #0
	ldrgt r3, [r0, #8]
	addgt r0, r0, r1, lsl #2
	mulgt r1, r2, r3
	strgt r1, [r0, #0x270]
	bx lr
	arm_func_end FUN_ov132_02145018

	arm_func_start FUN_ov132_02145030
FUN_ov132_02145030: ; 0x02145030
	cmp r2, #0
	addgt r0, r0, r1, lsl #2
	strgt r2, [r0, #0x270]
	bx lr
	arm_func_end FUN_ov132_02145030

	arm_func_start FUN_ov132_02145040
FUN_ov132_02145040: ; 0x02145040
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xda
	mov r5, r1
	add r4, r0, #0x200
	ldrb r0, [r4, r5]
	cmp r0, #1
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	bl FUN_ov16_020f081c
	cmp r5, r0
	bne _02145080
	ldrb r0, [r6, #0x374]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x375]
_02145080:
	ldrb r2, [r4, r5]
	add r1, r6, r5, lsl #2
	mov r0, #1
	add r2, r2, #1
	strb r2, [r4, r5]
	ldr r2, [r6, #4]
	str r2, [r1, #0x270]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02145040

	arm_func_start FUN_ov132_021450a0
FUN_ov132_021450a0: ; 0x021450A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	add r0, r9, r2
	ldrb r2, [r0, #0x2dc]
	ldrb r0, [r0, #0x2e0]
	mov r8, r1
	cmp r2, r0
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_020f081c
	cmp r8, r0
	bne _021450E0
	ldrb r0, [r9, #0x374]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r9, #0x375]
_021450E0:
	ldr r0, _0214513C ; =0x0209AEC0
	bl FUN_02046744
	mov r6, r0
	mov r7, #0
	add r4, r9, #0x2dc
	mov r5, #1
	b _02145120
_021450FC:
	tst r6, r5, lsl r7
	beq _0214511C
	mov r0, r7
	bl FUN_ov16_020f085c
	cmp r8, r0
	ldreqb r0, [r4, r7]
	addeq r0, r0, #1
	streqb r0, [r4, r7]
_0214511C:
	add r7, r7, #1
_02145120:
	cmp r7, #4
	blt _021450FC
	ldr r1, [r9, #4]
	add r0, r9, r8, lsl #2
	str r1, [r0, #0x270]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214513C: .word unk_0209AEC0
	arm_func_end FUN_ov132_021450a0

	arm_func_start FUN_ov132_02145140
FUN_ov132_02145140: ; 0x02145140
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	bne _0214516C
	ldrb r0, [r5, #0x374]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r5, #0x374]
	strneb r0, [r5, #0x375]
_0214516C:
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x270]
	add r0, r5, r4
	strb r1, [r0, #0x2d8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02145140

	arm_func_start FUN_ov132_02145184
FUN_ov132_02145184: ; 0x02145184
	add r0, r0, r1
	strb r2, [r0, #0x2d8]
	bx lr
	arm_func_end FUN_ov132_02145184

	arm_func_start FUN_ov132_02145190
FUN_ov132_02145190: ; 0x02145190
	add r0, r0, r1
	ldrb r0, [r0, #0x2d8]
	bx lr
	arm_func_end FUN_ov132_02145190

	arm_func_start FUN_ov132_0214519c
FUN_ov132_0214519c: ; 0x0214519C
	strb r1, [r0, #0x3b4]
	bx lr
	arm_func_end FUN_ov132_0214519c

	arm_func_start FUN_ov132_021451a4
FUN_ov132_021451a4: ; 0x021451A4
	strb r1, [r0, #0x3b6]
	bx lr
	arm_func_end FUN_ov132_021451a4

	arm_func_start FUN_ov132_021451ac
FUN_ov132_021451ac: ; 0x021451AC
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4, #0x84]
	mov r0, r2
	strh r2, [r1, #0x18]
	bl FUN_ov16_020efd3c
	ldr r1, [r4, #0x84]
	strb r0, [r1, #0x1a]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_021451ac

	arm_func_start FUN_ov132_021451d0
FUN_ov132_021451d0: ; 0x021451D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r9, r0
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r8, #0
	mov r6, r8
	mvn r5, #0
	ldr r4, _0214527C ; =0x02099F14
	b _0214525C
_02145200:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _02145258
	bl FUN_0206d688
	cmp r0, #0
	beq _02145258
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, r9
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
	ldr r0, [r7, #0x84]
	mov r1, r7
	ldrb r3, [r0, #0x1a]
	mov r2, r6
	str r6, [sp]
	ldr r0, [r4]
	bl FUN_ov1_020e3c14
_02145258:
	add r8, r8, #1
_0214525C:
	cmp r8, #0x20
	blt _02145200
	mov r0, r9
	mov r1, #1
	mov r2, #0
	bl FUN_ov132_021435c0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0214527C: .word unk_02099F14
	arm_func_end FUN_ov132_021451d0

	arm_func_start FUN_ov132_02145280
FUN_ov132_02145280: ; 0x02145280
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #1
	str r2, [sp, #8]
	bl FUN_ov132_0213dfd4
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_01ff9384
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov132_02145280

	arm_func_start FUN_ov132_021452f8
FUN_ov132_021452f8: ; 0x021452F8
	mov r0, #0
	bx lr
	arm_func_end FUN_ov132_021452f8

	arm_func_start FUN_ov132_02145300
FUN_ov132_02145300: ; 0x02145300
	cmp r1, #0
	cmpne r1, #2
	cmpne r1, #0x2d
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov132_02145300

	arm_func_start FUN_ov132_02145318
FUN_ov132_02145318: ; 0x02145318
	cmp r1, #2
	cmpne r1, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov132_02145318

	arm_func_start FUN_ov132_0214532c
FUN_ov132_0214532c: ; 0x0214532C
	cmp r1, #4
	cmpne r1, #8
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov132_0214532c

	arm_func_start FUN_ov132_02145340
FUN_ov132_02145340: ; 0x02145340
	cmp r1, #1
	cmpne r1, #8
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov132_02145340

	arm_func_start FUN_ov132_02145354
FUN_ov132_02145354: ; 0x02145354
	mov r1, #0
	mvn r2, #0
	strb r2, [r0, #0x332]
	strb r2, [r0, #0x333]
	str r1, [r0, #0x33c]
	str r1, [r0, #0x340]
	str r1, [r0, #0x338]
	bx lr
	arm_func_end FUN_ov132_02145354

	arm_func_start FUN_ov132_02145374
FUN_ov132_02145374: ; 0x02145374
	ldr r0, [r0, #0x338]
	bx lr
	arm_func_end FUN_ov132_02145374

	arm_func_start FUN_ov132_0214537c
FUN_ov132_0214537c: ; 0x0214537C
	cmp r1, #5
	movhs r1, #0
	str r1, [r0, #0x338]
	bx lr
	arm_func_end FUN_ov132_0214537c

	arm_func_start FUN_ov132_0214538c
FUN_ov132_0214538c: ; 0x0214538C
	ldr r0, [r0, #0x33c]
	bx lr
	arm_func_end FUN_ov132_0214538c

	arm_func_start FUN_ov132_02145394
FUN_ov132_02145394: ; 0x02145394
	ldr r0, [r0, #0x340]
	bx lr
	arm_func_end FUN_ov132_02145394

	arm_func_start FUN_ov132_0214539c
FUN_ov132_0214539c: ; 0x0214539C
	cmp r1, #4
	movhs r1, #0
	str r1, [r0, #0x33c]
	bx lr
	arm_func_end FUN_ov132_0214539c

	arm_func_start FUN_ov132_021453ac
FUN_ov132_021453ac: ; 0x021453AC
	cmp r1, #4
	movhs r1, #0
	str r1, [r0, #0x340]
	bx lr
	arm_func_end FUN_ov132_021453ac

	arm_func_start FUN_ov132_021453bc
FUN_ov132_021453bc: ; 0x021453BC
	str r1, [r0, #0x1c0]
	bx lr
	arm_func_end FUN_ov132_021453bc

	arm_func_start FUN_ov132_021453c4
FUN_ov132_021453c4: ; 0x021453C4
	str r1, [r0, #0x1bc]
	bx lr
	arm_func_end FUN_ov132_021453c4

	arm_func_start FUN_ov132_021453cc
FUN_ov132_021453cc: ; 0x021453CC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r0, r1
	ldr r6, [sp, #0x30]
	ldr r5, [sp, #0x34]
	bl FUN_ov16_020f07d0
	mov r8, r0
	mov r0, r9
	mov r1, #9
	mov r4, #0
	bl FUN_ov132_02144a84
	movs r7, r0
	beq _02145430
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	bl FUN_0204071c
	cmp r0, #0
	bne _02145430
	mov r4, #1
	add r0, sp, #0x28
	add r1, sp, #0x2c
	mov r2, r7
	mov r3, r4
	bl FUN_02040bdc
_02145430:
	mov r0, r9
	mov r1, r8
	mov r2, #0
	bl FUN_ov132_0213f5d4
	mov r7, r0
	ldr r1, [sp, #0x2c]
	mov r0, r9
	mov r2, r7
	mov r3, r8
	bl FUN_01ffb9b0
	cmp r0, #0
	bne _02145490
	cmp r6, #0
	cmpne r5, #0
	ldrne r0, [sp, #0x28]
	strne r0, [r6]
	ldrne r0, [sp, #0x2c]
	strne r0, [r5]
	mov r0, #1
	cmp r4, #0
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
_02145490:
	cmp r6, #0
	cmpne r5, #0
	ldrne r0, [sp, #0x28]
	strne r0, [r6]
	strne r7, [r5]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov132_021453cc

	arm_func_start FUN_ov132_021454b4
FUN_ov132_021454b4: ; 0x021454B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r1, #0x48]
	mov r6, r2
	mov r7, r3
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r4
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #8
	addls pc, pc, r6, lsl #2
	b _021455AC
_02145508: ; jump table
	b _021455AC ; case 0
	b _021455AC ; case 1
	b _021455AC ; case 2
	b _021455AC ; case 3
	b _021455A0 ; case 4
	b _021455AC ; case 5
	b _0214552C ; case 6
	b _021455AC ; case 7
	b _021455A0 ; case 8
_0214552C:
	mov r0, r5
	bl FUN_ov16_020f0810
	mov r0, r5
	bl FUN_ov16_020f07d0
	mov r6, r0
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x20]
	mov r5, r0
	str r1, [sp, #4]
	add r2, sp, #0
	mov r0, r4
	mov r1, r6
	str r7, [sp]
	bl FUN_ov132_02140b08
	cmp r0, #0
	bne _02145594
	ldr r1, [sp, #0x20]
	mov r0, r4
	mov r2, r5
	mov r3, r6
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _021455AC
_02145594:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021455A0:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021455AC:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_021454b4

	arm_func_start FUN_ov132_021455b8
FUN_ov132_021455b8: ; 0x021455B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov126_0213246c
	movs r1, r0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov126_02131a14
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_021455b8

	arm_func_start FUN_ov132_021455e8
FUN_ov132_021455e8: ; 0x021455E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov126_021375d4
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r0, [r5, #0xc]
	bl FUN_ov16_020efa80
	ldrsh r1, [r5, #8]
	ldr r5, _021456CC ; =0x0209BA20
	mov r7, r0
	mov r0, r5
	bl FUN_0204a2c4
	mov r6, r0
	cmp r7, #0
	beq _0214564C
	mov r0, r7
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	bl FUN_020724dc
	mov r4, r0
_0214564C:
	cmp r7, #0
	cmpne r6, #0
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	cmpne r6, #0
	beq _021456A4
	mov r0, r7
	bl FUN_0206d744
	cmp r0, #0
	bne _021456A4
	mov r0, r7
	bl FUN_0206cc84
	mov r5, r0
	mov r0, r6
	mov r1, r7
	bl FUN_0204b114
	sub r0, r5, r0
	mov r1, r0, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	bl FUN_0206cc44
_021456A4:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6]
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	ldrneh r0, [r4, #4]
	addne r0, r0, #1
	strneh r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021456CC: .word unk_0209BA20
	arm_func_end FUN_ov132_021455e8

	arm_func_start FUN_ov132_021456d0
FUN_ov132_021456d0: ; 0x021456D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov126_021375d4
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r0, [r5, #0xd]
	bl FUN_ov16_020efa80
	ldrsh r1, [r5, #0xa]
	ldr r5, _021457B4 ; =0x0209BA20
	mov r7, r0
	mov r0, r5
	bl FUN_0204a2c4
	mov r6, r0
	cmp r7, #0
	beq _02145734
	mov r0, r7
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	bl FUN_020724dc
	mov r4, r0
_02145734:
	cmp r7, #0
	cmpne r6, #0
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	cmpne r6, #0
	beq _0214578C
	mov r0, r7
	bl FUN_0206d744
	cmp r0, #0
	bne _0214578C
	mov r0, r7
	bl FUN_0206cc84
	mov r5, r0
	mov r0, r6
	mov r1, r7
	bl FUN_0204b114
	sub r0, r5, r0
	mov r1, r0, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	bl FUN_0206cc44
_0214578C:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6]
	cmp r0, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	ldrneh r0, [r4, #6]
	addne r0, r0, #1
	strneh r0, [r4, #6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021457B4: .word unk_0209BA20
	arm_func_end FUN_ov132_021456d0

	arm_func_start FUN_ov132_021457b8
FUN_ov132_021457b8: ; 0x021457B8
	stmfd sp!, {r4, r5, r6, lr}
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _02145830 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159df0
	movs r5, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov132_0215a3ec
	ldr r6, _02145834 ; =0x0209BA20
	mov r1, r0
	mov r0, r6
	bl FUN_0207249c
	mov r4, r0
	mov r0, r5
	bl FUN_ov132_0215a440
	mov r5, r0
	mov r0, r6
	mov r1, r5
	bl FUN_0204b0ac
	cmp r0, #0
	cmpne r5, #0
	ldrneb r1, [r4, #0x43]
	ldrneh r0, [r0, #4]
	subne r0, r1, r0
	strneb r0, [r4, #0x43]
	moveq r0, #0
	streqb r0, [r4, #0x43]
	ldmfd sp!, {r4, r5, r6, pc}
_02145830: .word unk_02099EF0
_02145834: .word unk_0209BA20
	arm_func_end FUN_ov132_021457b8

	arm_func_start FUN_ov132_02145838
FUN_ov132_02145838: ; 0x02145838
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _021458E0 ; =0x020A0640
	mov r6, r0
	ldrb r5, [r1, #0x8f]
	mov r4, #0
	bl FUN_ov132_02144f4c
	cmp r0, #0
	mov r0, r6
	beq _02145894
	mov r1, r4
	mov r5, #1
	bl FUN_ov132_02145940
	cmp r0, #0
	bne _02145884
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02145940
	cmp r0, #0
	moveq r5, r4
_02145884:
	mov r0, #1
	cmp r5, #0
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02145894:
	mov r1, r5
	bl FUN_ov132_02145c40
	cmp r5, #0xf
	mov r4, r0
	mov r5, #1
	beq _021458D0
	mov r0, r6
	mov r6, #0
	bl FUN_01ff9578
	cmp r0, #0
	beq _021458C8
	cmp r4, #0xf
	moveq r6, r5
_021458C8:
	cmp r6, #0
	moveq r5, #0
_021458D0:
	mov r0, #1
	cmp r5, #0
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021458E0: .word unk_020A0640
	arm_func_end FUN_ov132_02145838

	arm_func_start FUN_ov132_021458e4
FUN_ov132_021458e4: ; 0x021458E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov132_02145838
	mov r4, r0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov132_02145a44
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_ov132_02145a44
	cmp r0, #0
	movne r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	movne r5, #3
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_021458e4

	arm_func_start FUN_ov132_02145940
FUN_ov132_02145940: ; 0x02145940
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl FUN_02040138
	mov r4, r0
	add r1, sp, #0
	mov r0, r6
	bl FUN_ov126_02136e08
	ldr r1, [sp, #8]
	cmp r1, #0
	addle sp, sp, #0x18
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	sub r0, r1, #1
	rsb r2, r0, #5
	add r0, sp, #0xc
	ldr r0, [r0, r4, lsl #2]
	cmp r1, #6
	movge r2, #1
	cmp r0, #0
	add r0, sp, #0
	ldr r1, [r0, r4, lsl #2]
	subne r2, r2, #1
	ldr r0, [r0, r5, lsl #2]
	add r1, r2, r1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02145940

	arm_func_start FUN_ov132_021459c0
FUN_ov132_021459c0: ; 0x021459C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, _02145A40 ; =0x0209BA20
	mov r7, r1
	bl FUN_0207318c
	mov r4, r0
	mov r0, r7
	bl FUN_02040138
	mov r6, r0
	mov r0, r4
	mov r1, r7
	bl FUN_02073eac
	mov r5, r0
	mov r0, r4
	mov r1, r7
	bl FUN_02073ea4
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_020404bc
	mov r4, r0
	mov r0, r6
	bl FUN_020404bc
	add r0, r5, r0
	cmp r4, r0
	movge r0, #1
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_02145940
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02145A40: .word unk_0209BA20
	arm_func_end FUN_ov132_021459c0

	arm_func_start FUN_ov132_02145a44
FUN_ov132_02145a44: ; 0x02145A44
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r1
	mov r9, r0
	mov r0, r8
	mov r7, r2
	mov r10, #1
	bl FUN_02040138
	mov r4, r0
	ldr r0, _02145C38 ; =0x0209BA20
	bl FUN_0207318c
	mov r1, r8
	mov r5, r0
	bl FUN_02073eac
	ldr r1, _02145C3C ; =0x020A0640
	mov r6, r0
	ldrb r0, [r1, #0x9d]
	cmp r0, #0
	beq _02145A98
	cmp r8, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145A98:
	mov r0, r9
	bl FUN_ov132_02144f4c
	cmp r0, #0
	beq _02145AB8
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_02145940
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145AB8:
	cmp r7, #0
	ldrneb r0, [r5, #0xf]
	cmpne r0, #0
	beq _02145B28
	cmp r0, #1
	beq _02145ADC
	cmp r0, #2
	beq _02145B04
	b _02145B28
_02145ADC:
	cmp r8, #0
	bne _02145B28
	mov r0, r9
	mov r1, r10
	mov r2, r7
	bl FUN_ov132_02145a44
	cmp r0, #0
	bne _02145B28
	mov r0, r10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145B04:
	cmp r8, #1
	bne _02145B28
	mov r0, r9
	mov r2, r7
	mov r1, #0
	bl FUN_ov132_02145a44
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145B28:
	mov r0, r5
	mov r1, r8
	bl FUN_02073ea4
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02145C30
_02145B40: ; jump table
	b _02145B64 ; case 0
	b _02145BB0 ; case 1
	b _02145C30 ; case 2
	b _02145C30 ; case 3
	b _02145C30 ; case 4
	b _02145C30 ; case 5
	b _02145BD8 ; case 6
	b _02145B6C ; case 7
	b _02145C18 ; case 8
_02145B64:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145B6C:
	cmp r7, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_02073ea4
	cmp r0, #7
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r4
	mov r2, r7
	bl FUN_ov132_02145a44
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145BB0:
	cmp r7, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_021459c0
	cmp r0, #0
	beq _02145C30
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145BD8:
	mov r0, r8
	bl FUN_020404bc
	mov r5, r0
	mov r0, r4
	bl FUN_020404bc
	add r0, r6, r0
	cmp r5, r0
	movge r0, #1
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_02145940
	cmp r0, #0
	beq _02145C30
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145C18:
	add r0, r9, r8, lsl #1
	add r0, r0, #0x200
	ldrh r0, [r0, #0xe8]
	cmp r0, r6
	movge r0, #1
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145C30:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02145C38: .word unk_0209BA20
_02145C3C: .word unk_020A0640
	arm_func_end FUN_ov132_02145a44

	arm_func_start FUN_ov132_02145c40
FUN_ov132_02145c40: ; 0x02145C40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	sub r2, r5, #2
	mov r6, r0
	cmp r2, #0xc
	mov r4, #0
	bhi _02145C6C
	ldr r0, _02145DD8 ; =0x00001249
	mov r1, #1
	tst r0, r1, lsl r2
	movne r4, r1
_02145C6C:
	mov r7, #0
	mov r0, r6
	mov r1, r7
	mov r2, r7
	bl FUN_ov132_02145a44
	cmp r0, #0
	bne _02145CA0
	mov r0, r6
	mov r2, r7
	mov r1, #1
	bl FUN_ov132_02145a44
	cmp r0, #0
	beq _02145CA8
_02145CA0:
	mov r0, #0xf
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145CA8:
	ldr r0, _02145DDC ; =0x0209BA20
	bl FUN_0207318c
	mov r7, r0
	cmp r5, #0xf
	addls pc, pc, r5, lsl #2
	b _02145DD0
_02145CC0: ; jump table
	b _02145D00 ; case 0
	b _02145D08 ; case 1
	b _02145D08 ; case 2
	b _02145D00 ; case 3
	b _02145D18 ; case 4
	b _02145D18 ; case 5
	b _02145D00 ; case 6
	b _02145D60 ; case 7
	b _02145D60 ; case 8
	b _02145D00 ; case 9
	b _02145D74 ; case 10
	b _02145D74 ; case 11
	b _02145D00 ; case 12
	b _02145DC0 ; case 13
	b _02145DC0 ; case 14
	b _02145DC8 ; case 15
_02145D00:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145D08:
	bl FUN_02073d9c
	cmp r0, #0
	movne r0, #3
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02145D18:
	mov r0, r6
	mov r1, #0
	bl FUN_ov132_021459c0
	cmp r0, #0
	bne _02145D40
	mov r0, r6
	mov r1, #1
	bl FUN_ov132_021459c0
	cmp r0, #0
	beq _02145D4C
_02145D40:
	cmp r4, #0
	movne r0, #0xf
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02145D4C:
	mov r0, r7
	bl FUN_02073db0
	cmp r0, #0
	movne r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02145D60:
	mov r0, r7
	bl FUN_02073dc4
	cmp r0, #0
	movne r0, #9
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02145D74:
	mov r0, r6
	mov r1, #0
	bl FUN_ov132_021459c0
	cmp r0, #0
	bne _02145D9C
	mov r0, r6
	mov r1, #1
	bl FUN_ov132_021459c0
	cmp r0, #0
	beq _02145DA8
_02145D9C:
	cmp r4, #0
	movne r0, #0xf
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02145DA8:
	mov r0, r7
	bl FUN_02073dd8
	cmp r0, #0
	movne r0, #0xc
	moveq r0, #0xf
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145DC0:
	mov r0, #0xf
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145DC8:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145DD0:
	add r0, r5, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02145DD8: .word 0x00001249
_02145DDC: .word unk_0209BA20
	arm_func_end FUN_ov132_02145c40

	arm_func_start FUN_ov132_02145de0
FUN_ov132_02145de0: ; 0x02145DE0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _02145FA8 ; =0x0209BA20
	mov r4, r0
	mov r0, r5
	bl FUN_02072900
	mov r6, r0
	mov r0, r5
	bl FUN_02073184
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bne _02145E18
	mov r0, r6
	bl FUN_02040138
	mov r6, r0
_02145E18:
	ldr r0, _02145FAC ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xa
	bgt _02145F20
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _02145F20
_02145E34: ; jump table
	b _02145F20 ; case 0
	b _02145E64 ; case 1
	b _02145F20 ; case 2
	b _02145F20 ; case 3
	b _02145E84 ; case 4
	b _02145F20 ; case 5
	b _02145F20 ; case 6
	b _02145ED0 ; case 7
	b _02145F20 ; case 8
	b _02145F20 ; case 9
	b _02145EDC ; case 10
	b _02145F20 ; case 11
_02145E64:
	mov r0, r4
	mov r1, #8
_02145E6C:
	bl FUN_ov132_021447d0
	mov r0, r6
	bl FUN_02040138
	mov r1, r0
	mov r0, r4
	b _02145F34
_02145E84:
	mov r0, r4
	mov r1, #0
	bl FUN_ov132_021459c0
	cmp r0, #0
	bne _02145EAC
	mov r0, r4
	mov r1, #1
	bl FUN_ov132_021459c0
	cmp r0, #0
	beq _02145EB8
_02145EAC:
	mov r0, r4
	mov r1, #0xc
	b _02145EC0
_02145EB8:
	mov r0, r4
	mov r1, #9
_02145EC0:
	bl FUN_ov132_021447d0
	mov r0, r4
	mov r1, r6
	b _02145F34
_02145ED0:
	mov r0, r4
	mov r1, #0xa
	b _02145E6C
_02145EDC:
	mov r0, r4
	mov r1, #0
	bl FUN_ov132_021459c0
	cmp r0, #0
	bne _02145F04
	mov r0, r4
	mov r1, #1
	bl FUN_ov132_021459c0
	cmp r0, #0
	beq _02145F10
_02145F04:
	mov r0, r4
	mov r1, #0xc
	b _02145F18
_02145F10:
	mov r0, r4
	mov r1, #0xb
_02145F18:
	bl FUN_ov132_021447d0
	b _02145F2C
_02145F20:
	mov r0, r4
	mov r1, #0xc
	bl FUN_ov132_021447d0
_02145F2C:
	mov r0, r4
	mov r1, #0
_02145F34:
	bl FUN_ov132_02144778
	ldr r1, _02145FAC ; =0x020A0640
	ldr r3, [r4, #0x1c4]
	ldr r2, [r1, #4]
	mov r0, r4
	add r2, r3, r2
	str r2, [r4, #0x1c4]
	ldrb r1, [r1, #0x8f]
	add r1, r1, #1
	bl FUN_ov132_02145c40
	mov r5, r0
	cmp r5, #0xc
	bne _02145F74
	mov r0, r4
	mov r1, #0
	bl FUN_ov132_02144778
_02145F74:
	cmp r5, #0xf
	bne _02145F88
	mov r0, r4
	mov r1, #0xc
	bl FUN_ov132_021447d0
_02145F88:
	mov r0, #0x38
	bl FUN_ov1_020db3e0
	mov r0, r4
	bl FUN_ov132_02152eb0
	mov r0, r4
	mov r1, #1
	bl FUN_ov132_0214478c
	ldmfd sp!, {r4, r5, r6, pc}
_02145FA8: .word unk_0209BA20
_02145FAC: .word unk_020A0640
	arm_func_end FUN_ov132_02145de0

	arm_func_start FUN_ov132_02145fb0
FUN_ov132_02145fb0: ; 0x02145FB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _02145FEC ; =0x0209BA20
	bl FUN_02073184
	mov r4, r0
	mov r0, r5
	bl FUN_ov132_02144f4c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0x10]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02145FEC: .word unk_0209BA20
	arm_func_end FUN_ov132_02145fb0

	arm_func_start FUN_ov132_02145ff0
FUN_ov132_02145ff0: ; 0x02145FF0
	stmfd sp!, {r3, lr}
	ldr r0, _02146010 ; =0x0209BA20
	bl FUN_02073184
	ldrh r0, [r0, #0x1e]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_02146010: .word unk_0209BA20
	arm_func_end FUN_ov132_02145ff0

	arm_func_start FUN_ov132_02146014
FUN_ov132_02146014: ; 0x02146014
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, r1, lsl #1
	mov r5, r2
	bl _fflt
	mov r4, r0
	mov r0, #0x29
	bl FUN_ov16_020ef928
	add r0, r0, #0x50
	bl _ffltu
	mov r1, r0
	ldr r0, _02146094 ; =0x3C23D70A
	bl _fmul
	mov r1, r0
	mov r0, r4
	bl _fmul
	bl _ffixu
	mov r0, r0, lsl #0x10
	cmp r5, #0
	mov r5, r0, lsr #0x10
	movne r0, r5, lsl #0xf
	ldr r4, _02146098 ; =0x0209BA20
	movne r5, r0, lsr #0x10
	mov r0, r4
	bl FUN_ov16_020edf7c
	cmp r5, r0
	bls _0214608C
	mov r0, r4
	bl FUN_ov16_020edf7c
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_0214608C:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02146094: .word 0x3C23D70A
_02146098: .word unk_0209BA20
	arm_func_end FUN_ov132_02146014

	arm_func_start FUN_ov132_0214609c
FUN_ov132_0214609c: ; 0x0214609C
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, r1
	mov r6, r2
	bl _fflt
	mov r4, #0x3f000000
	mov r1, r0
	mov r0, r4
	bl _fmul
	add r1, r4, #0x2f00000
	mov r5, r0
	bl _fgr
	mov r0, #0x29
	addhi r5, r4, #0x2f00000
	bl FUN_ov16_020ef928
	add r0, r0, #0x50
	bl _ffltu
	mov r1, r0
	ldr r0, _02146138 ; =0x3C23D70A
	bl _fmul
	mov r1, r0
	mov r0, r5
	bl _fmul
	bl _ffixu
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r6, #0
	movne r0, r5, lsl #0xf
	ldr r4, _0214613C ; =0x0209BA20
	movne r5, r0, lsr #0x10
	mov r0, r4
	bl FUN_ov16_020edfc0
	cmp r5, r0
	bls _02146130
	mov r0, r4
	bl FUN_ov16_020edfc0
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_02146130:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_02146138: .word 0x3C23D70A
_0214613C: .word unk_0209BA20
	arm_func_end FUN_ov132_0214609c

	arm_func_start FUN_ov132_02146140
FUN_ov132_02146140: ; 0x02146140
	stmfd sp!, {r3, lr}
	ldr r0, _02146154 ; =0x020A0C68
	bl FUN_020507d0
	mov r0, #1
	ldmfd sp!, {r3, pc}
_02146154: .word unk_020A0C68
	arm_func_end FUN_ov132_02146140

	arm_func_start FUN_ov132_02146158
FUN_ov132_02146158: ; 0x02146158
	stmfd sp!, {r3, lr}
	ldr r0, _0214617C ; =0x0209BA20
	bl FUN_0204bc4c
	movs r1, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02146180 ; =0x020A0DB0
	bl FUN_020508fc
	ldmfd sp!, {r3, pc}
_0214617C: .word unk_0209BA20
_02146180: .word unk_020A0DB0
	arm_func_end FUN_ov132_02146158

	arm_func_start FUN_ov132_02146184
FUN_ov132_02146184: ; 0x02146184
	add r12, r0, #0x2e4
	mov r3, r1, lsl #1
	ldrh r1, [r12, r3]
	mov r0, r2, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r12, r3]
	bx lr
	arm_func_end FUN_ov132_02146184

	arm_func_start FUN_ov132_021461a0
FUN_ov132_021461a0: ; 0x021461A0
	stmfd sp!, {r3, lr}
	ldr r3, _021461C8 ; =0x0000FFFF
	add lr, r0, #0x2e4
	mov r12, r1, lsl #1
	eor r0, r2, r3
	ldrh r1, [lr, r12]
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	strh r0, [lr, r12]
	ldmfd sp!, {r3, pc}
_021461C8: .word 0x0000FFFF
	arm_func_end FUN_ov132_021461a0

	arm_func_start FUN_ov132_021461cc
FUN_ov132_021461cc: ; 0x021461CC
	add r0, r0, r1, lsl #1
	add r0, r0, #0x200
	ldrh r0, [r0, #0xe4]
	tst r2, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov132_021461cc

	arm_func_start FUN_ov132_021461e8
FUN_ov132_021461e8: ; 0x021461E8
	ldr r12, _021461F4 ; =FUN_ov132_021461cc
	mov r2, #1
	bx r12
_021461F4: .word FUN_ov132_021461cc
	arm_func_end FUN_ov132_021461e8

	arm_func_start FUN_ov132_021461f8
FUN_ov132_021461f8: ; 0x021461F8
	stmfd sp!, {r4, lr}
	ldr r0, _02146214 ; =0x0209BA20
	mov r4, r1
	bl FUN_0207318c
	mov r1, r4
	bl FUN_02073e14
	ldmfd sp!, {r4, pc}
_02146214: .word unk_0209BA20
	arm_func_end FUN_ov132_021461f8

	arm_func_start FUN_ov132_02146218
FUN_ov132_02146218: ; 0x02146218
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r1, #1
	bl FUN_ov132_021461f8
	mov r4, r0
	mov r0, r6
	mov r1, #0
	bl FUN_ov132_021461f8
	mov r5, r0
	ldr r0, _0214629C ; =0x0209BA20
	bl FUN_0207318c
	cmp r4, #0
	cmpeq r5, #0
	bne _0214626C
	ldrb r1, [r0, #4]
	mov r0, r6
	bl FUN_ov132_02143cd0
	cmp r0, #1
	moveq r0, #0xa
	movne r0, #0xb
	ldmfd sp!, {r4, r5, r6, pc}
_0214626C:
	cmp r4, #0
	beq _02146280
	cmp r5, #0
	moveq r0, #0xa
	ldmeqfd sp!, {r4, r5, r6, pc}
_02146280:
	cmp r4, #0
	bne _02146294
	cmp r5, #0
	movne r0, #0xb
	ldmnefd sp!, {r4, r5, r6, pc}
_02146294:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0214629C: .word unk_0209BA20
	arm_func_end FUN_ov132_02146218

	arm_func_start FUN_ov132_021462a0
FUN_ov132_021462a0: ; 0x021462A0
	stmfd sp!, {r3, lr}
	ldr r0, _021462B4 ; =0x0209BA20
	bl FUN_0207318c
	bl FUN_02073e90
	ldmfd sp!, {r3, pc}
_021462B4: .word unk_0209BA20
	arm_func_end FUN_ov132_021462a0

	arm_func_start FUN_ov132_021462b8
FUN_ov132_021462b8: ; 0x021462B8
	add r0, r0, r1
	strb r2, [r0, #0x347]
	bx lr
	arm_func_end FUN_ov132_021462b8

	arm_func_start FUN_ov132_021462c4
FUN_ov132_021462c4: ; 0x021462C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x198]
	mov r4, r1
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	cmp r0, #0
	addne r0, r5, r4
	ldrneb r0, [r0, #0x347]
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_021462c4

	arm_func_start FUN_ov132_021462f4
FUN_ov132_021462f4: ; 0x021462F4
	str r1, [r0, #0x1e4]
	bx lr
	arm_func_end FUN_ov132_021462f4

	arm_func_start FUN_ov132_021462fc
FUN_ov132_021462fc: ; 0x021462FC
	stmfd sp!, {r4, lr}
	mov lr, #6
	cmp r3, #6
	mov r4, #1
	movlt lr, r3
	movlt r4, #0
	cmp lr, #0
	mov r12, #0
	ble _02146340
	mov r3, #6
	mla r3, r1, r3, r0
_02146328:
	add r0, r3, r12
	ldrb r0, [r0, #0x355]
	strb r0, [r2, r12]
	add r12, r12, #1
	cmp r12, lr
	blt _02146328
_02146340:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_021462fc

	arm_func_start FUN_ov132_02146348
FUN_ov132_02146348: ; 0x02146348
	ldr r0, _02146358 ; =0x020A0B8C
	and r1, r1, #0xff
	ldrb r0, [r0, r1]
	bx lr
_02146358: .word unk_020A0B8C
	arm_func_end FUN_ov132_02146348

	arm_func_start FUN_ov132_0214635c
FUN_ov132_0214635c: ; 0x0214635C
	ldr r0, _02146370 ; =0x020A0B00
	ldr r12, _02146374 ; =FUN_020747ec
	and r1, r1, #0xff
	and r2, r2, #0xff
	bx r12
_02146370: .word unk_020A0B00
_02146374: .word FUN_020747ec
	arm_func_end FUN_ov132_0214635c

	arm_func_start FUN_ov132_02146378
FUN_ov132_02146378: ; 0x02146378
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_ov126_0213246c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsb r0, [r4, #4]
	bl FUN_ov16_020efa80
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_0206d5f0
	cmp r5, r0
	mov r0, r4
	bne _021463BC
	bl FUN_ov126_02132718
	ldmfd sp!, {r3, r4, r5, pc}
_021463BC:
	bl FUN_ov126_02132730
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02146378

	arm_func_start FUN_ov132_021463c4
FUN_ov132_021463c4: ; 0x021463C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_ov126_021375d4
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_0206d5f0
	cmp r5, r0
	mov r0, r4
	bne _02146408
	bl FUN_ov126_02138668
	ldmfd sp!, {r3, r4, r5, pc}
_02146408:
	bl FUN_ov126_02138680
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_021463c4

	arm_func_start FUN_ov132_02146410
FUN_ov132_02146410: ; 0x02146410
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r1, _02146668 ; =0x0209BA20
	mov r5, #0
	ldr r7, [r1, #0x800]
	ldr r2, _0214666C ; =0x000004EC
	mov r6, r0
	mov r0, r7
	mov r1, r5
	bl MI_CpuFill8
	ldr r0, [r6, #0x1c8]
	cmp r0, #0
	beq _0214649C
	mov r1, r7
	mov r2, #0x400
	bl MI_CpuCopy8
	mov r4, r7
	ldr r8, _02146670 ; =0x00000FFF
	b _02146494
_02146458:
	ldr r0, [r4]
	cmp r0, #0
	beq _0214648C
	ldrsh r0, [r4, #4]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0214648C
	bl FUN_0206cbf8
	tst r0, #0x8000
	streqh r0, [r4, #4]
	andne r0, r0, r8
	orrne r0, r0, #0x4000
	strneh r0, [r4, #4]
_0214648C:
	add r5, r5, #1
	add r4, r4, #0x10
_02146494:
	cmp r5, #0x40
	blt _02146458
_0214649C:
	mov r8, #0
	ldr r0, _02146668 ; =0x0209BA20
	mov r1, r8
	bl FUN_020724dc
	add r1, r7, #0x400
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r4, #8
	mov r2, r4
	add r0, r6, #0x270
	add r1, r7, #0x420
	bl MI_CpuCopy8
	add r0, r7, #0x28
	add r1, r0, #0x400
	mov r2, r4
	add r0, r6, #0x1cc
	bl MI_CpuCopy8
	add r0, r6, #0x1d4
	add r1, r7, #0x430
	mov r2, r4
	bl MI_CpuCopy8
	add r1, r7, #0x38
	mov r2, r4
	add r0, r6, #0x1dc
	add r1, r1, #0x400
	bl MI_CpuCopy8
	add r0, r6, #0xda
	mov r4, #2
	add r0, r0, #0x200
	add r1, r7, #0x460
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r6, #0x47
	add r1, r7, #0x62
	add r0, r0, #0x300
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r6, #0x49
	add r1, r7, #0x48
	mov r5, #0xc
	add r0, r0, #0x300
	add r1, r1, #0x400
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r6, #0x55
	add r1, r7, #0x54
	mov r2, r5
	add r0, r0, #0x300
	add r1, r1, #0x400
	bl MI_CpuCopy8
	add r1, r7, #0x66
	mov r2, r4
	add r0, r6, #0x2d8
	add r1, r1, #0x400
	bl MI_CpuCopy8
	mov r10, #6
	ldr r1, [r6, #0x1c4]
	ldr r0, _02146674 ; =0x020A0640
	str r1, [r7, #0x440]
	ldr r1, [r6, #0x370]
	mov r9, r8
	str r1, [r7, #0x444]
	ldrb r1, [r0, #0x98]
	mov r4, r10
	mov r5, r10
	strb r1, [r7, #0x464]
	ldrb r0, [r0, #0x99]
	strb r0, [r7, #0x465]
	b _0214661C
_021465B4:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02146618
	bl FUN_0206d5f0
	cmp r0, #1
	bne _02146618
	mov r0, r6
	bl FUN_0206cbf8
	mla r1, r8, r10, r7
	add r1, r1, #0x400
	strh r0, [r1, #0x68]
	mov r0, r6
	bl FUN_0206ccdc
	mla r1, r8, r4, r7
	add r1, r1, #0x400
	strh r0, [r1, #0x6a]
	mov r0, r6
	bl FUN_0206cc84
	mla r1, r8, r5, r7
	add r1, r1, #0x400
	add r8, r8, #1
	strh r0, [r1, #0x6c]
	cmp r8, #0x10
	beq _02146624
_02146618:
	add r9, r9, #1
_0214661C:
	cmp r9, #0x64
	blt _021465B4
_02146624:
	ldr r5, _02146668 ; =0x0209BA20
	mov r4, #1
	ldrb r2, [r5, #0x849]
	mov r0, r5
	mov r1, r4
	strb r2, [r7, #0x4e8]
	bl FUN_0205107c
	add r1, r7, #0xc8
	add r1, r1, #0x400
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	ldrb r0, [r0, #0x43]
	strb r0, [r7, #0x4e9]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02146668: .word unk_0209BA20
_0214666C: .word 0x000004EC
_02146670: .word 0x00000FFF
_02146674: .word unk_020A0640
	arm_func_end FUN_ov132_02146410

	arm_func_start FUN_ov132_02146678
FUN_ov132_02146678: ; 0x02146678
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r0
	ldr r1, [r8, #0x1c8]
	ldr r0, _02146944 ; =0x0209BA20
	cmp r1, #0
	ldr r7, [r0, #0x800]
	mov r6, #0
	beq _021466FC
	mov r0, r7
	mov r2, #0x400
	bl MI_CpuCopy8
	ldr r4, [r8, #0x1c8]
	mov r5, r6
	ldr r9, _02146948 ; =0x00000FFF
	b _021466F4
_021466B4:
	ldr r0, [r4]
	cmp r0, #0
	beq _021466EC
	ldrsh r1, [r4, #4]
	and r0, r1, r9
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	tst r1, #0x4000
	orrne r0, r0, #0x8000
	mov r1, r6
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldrnesh r0, [r0, #0x94]
	strneh r0, [r4, #4]
_021466EC:
	add r5, r5, #1
	add r4, r4, #0x10
_021466F4:
	cmp r5, #0x40
	blt _021466B4
_021466FC:
	mov r9, #0
	ldr r0, _02146944 ; =0x0209BA20
	mov r1, r9
	bl FUN_020724dc
	mov r1, r0
	add r0, r7, #0x400
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r4, #8
	mov r2, r4
	add r0, r7, #0x420
	add r1, r8, #0x270
	bl MI_CpuCopy8
	add r0, r7, #0x28
	add r0, r0, #0x400
	add r1, r8, #0x1cc
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0x430
	add r1, r8, #0x1d4
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0x38
	mov r2, r4
	add r0, r0, #0x400
	add r1, r8, #0x1dc
	bl MI_CpuCopy8
	add r1, r8, #0xda
	mov r4, #2
	add r0, r7, #0x460
	add r1, r1, #0x200
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0x62
	add r1, r8, #0x47
	add r0, r0, #0x400
	add r1, r1, #0x300
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0x48
	add r1, r8, #0x49
	mov r5, #0xc
	add r0, r0, #0x400
	add r1, r1, #0x300
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r7, #0x54
	add r1, r8, #0x55
	mov r2, r5
	add r0, r0, #0x400
	add r1, r1, #0x300
	bl MI_CpuCopy8
	add r0, r7, #0x66
	mov r2, r4
	add r0, r0, #0x400
	add r1, r8, #0x2d8
	bl MI_CpuCopy8
	ldr r0, [r7, #0x440]
	ldr r1, _0214694C ; =0x020A0640
	str r0, [r8, #0x1c4]
	ldr r2, [r7, #0x444]
	mov r0, r8
	str r2, [r8, #0x370]
	ldrb r2, [r7, #0x464]
	strb r2, [r1, #0x98]
	ldrb r2, [r7, #0x465]
	strb r2, [r1, #0x99]
	bl FUN_ov132_02143c40
	mov r10, #6
	mov r4, r10
	mov r5, r10
	b _02146860
_0214681C:
	mla r0, r9, r5, r7
	add r0, r0, #0x400
	ldrh r0, [r0, #0x68]
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r8, r0
	beq _0214685C
	mla r1, r9, r10, r7
	add r1, r1, #0x400
	ldrsh r1, [r1, #0x6a]
	bl FUN_0206cc9c
	mla r0, r9, r4, r7
	add r0, r0, #0x400
	ldrsh r1, [r0, #0x6c]
	mov r0, r8
	bl FUN_0206cc44
_0214685C:
	add r9, r9, #1
_02146860:
	cmp r9, #0x10
	blt _0214681C
	ldr r0, _02146944 ; =0x0209BA20
	ldrb r3, [r7, #0x4e8]
	mov r2, r0
	mov r1, #1
	strb r3, [r2, #0x849]
	bl FUN_0205107c
	mov r8, r0
	add r11, r7, #0xc8
	mov r9, #0
	mov r4, #1
	add r5, sp, #0
	b _02146924
_02146898:
	mov r0, r8
	mov r1, r9
	bl FUN_0204fbe8
	strh r0, [sp]
	mov r1, r9
	add r0, r11, #0x400
	bl FUN_0204fbe8
	strh r0, [sp, #2]
	ldrh r0, [sp]
	ldrh r1, [sp, #2]
	cmp r0, r1
	cmpne r0, #0
	cmpne r1, #0
	beq _02146920
	mov r0, r8
	bl FUN_0204fd20
	mov r3, r0
	cmp r3, #0xc
	blt _02146920
	ldr r0, _02146944 ; =0x0209BA20
	mov r1, #1
	add r2, r9, #1
	bl FUN_ov126_0212ac54
	mov r10, r6
	b _02146918
_021468FC:
	mov r0, r10, lsl #1
	ldrh r0, [r5, r0]
	mov r1, r6
	bl FUN_ov16_020efa9c
	cmp r0, #0
	strneb r4, [r0, #0x83]
	add r10, r10, #1
_02146918:
	cmp r10, #2
	blt _021468FC
_02146920:
	add r9, r9, #1
_02146924:
	cmp r9, #0xb
	blt _02146898
	ldr r0, _02146944 ; =0x0209BA20
	mov r1, #1
	bl FUN_0207249c
	ldrb r1, [r7, #0x4e9]
	strb r1, [r0, #0x43]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02146944: .word unk_0209BA20
_02146948: .word 0x00000FFF
_0214694C: .word unk_020A0640
	arm_func_end FUN_ov132_02146678

	arm_func_start FUN_ov132_02146950
FUN_ov132_02146950: ; 0x02146950
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r4, [r0, #0x60]
	mov r0, r7
	bl FUN_ov16_020f0810
	ldr r6, _02146A2C ; =0x0209BA20
	mov r1, r0
	mov r0, r6
	bl FUN_0207249c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r5, [r0, #0x36]
	mov r0, r6
	mov r1, r7
	bl FUN_0204b754
	mov r6, r0
	mov r0, r7
	bl FUN_ov16_020f07d0
	mov r1, #0xb
	mul lr, r0, r1
	add r7, lr, #0xb
	cmp lr, r7
	mov r12, #0
	bge _021469F0
	ldr r2, _02146A30 ; =0x0209CC10
	mov r0, #0x88
_021469CC:
	mul r3, lr, r0
	ldrb r1, [r2, r3]
	cmp r6, r1
	ldreq r0, _02146A34 ; =0x0209CC11
	ldreqsb r12, [r0, r3]
	beq _021469F0
	add lr, lr, #1
	cmp lr, r7
	blt _021469CC
_021469F0:
	add r0, r4, r5
	add r0, r12, r0
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #0x64
	mov r0, #0x64
	movgt r4, #0x64
	bl FUN_ov16_020ef928
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, r4, lsl #0x18
	cmp r1, r0, asr #24
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146A2C: .word unk_0209BA20
_02146A30: .word unk_0209CC10
_02146A34: .word unk_0209CC11
	arm_func_end FUN_ov132_02146950

	arm_func_start FUN_ov132_02146a38
FUN_ov132_02146a38: ; 0x02146A38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r1
	mov r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02146A70
	mov r0, r4
	mov r1, r7
	bl FUN_ov126_02138ec0
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02146A70:
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r4, [r0, #0x61]
	mov r0, r7
	bl FUN_ov16_020f0810
	ldr r6, _02146B3C ; =0x0209BA20
	mov r1, r0
	mov r0, r6
	bl FUN_0207249c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r5, [r0, #0x37]
	mov r0, r6
	mov r1, r7
	bl FUN_0204b754
	mov r6, r0
	mov r0, r7
	bl FUN_ov16_020f07d0
	mov r1, #0xb
	mul lr, r0, r1
	add r7, lr, #0xb
	cmp lr, r7
	mov r12, #0
	bge _02146B00
	ldr r2, _02146B40 ; =0x0209CC10
	mov r0, #0x88
_02146ADC:
	mul r3, lr, r0
	ldrb r1, [r2, r3]
	cmp r6, r1
	ldreq r0, _02146B44 ; =0x0209CC12
	ldreqsb r12, [r0, r3]
	beq _02146B00
	add lr, lr, #1
	cmp lr, r7
	blt _02146ADC
_02146B00:
	add r0, r4, r5
	add r0, r12, r0
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #0x64
	mov r0, #0x64
	movgt r4, #0x64
	bl FUN_ov16_020ef928
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, r4, lsl #0x18
	cmp r1, r0, asr #24
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146B3C: .word unk_0209BA20
_02146B40: .word unk_0209CC10
_02146B44: .word unk_0209CC12
	arm_func_end FUN_ov132_02146a38

	arm_func_start FUN_ov132_02146b48
FUN_ov132_02146b48: ; 0x02146B48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r4, [r0, #0x62]
	mov r0, r7
	bl FUN_ov16_020f0810
	ldr r6, _02146C24 ; =0x0209BA20
	mov r1, r0
	mov r0, r6
	bl FUN_0207249c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r5, [r0, #0x38]
	mov r0, r6
	mov r1, r7
	bl FUN_0204b754
	mov r6, r0
	mov r0, r7
	bl FUN_ov16_020f07d0
	mov r1, #0xb
	mul lr, r0, r1
	add r7, lr, #0xb
	cmp lr, r7
	mov r12, #0
	bge _02146BE8
	ldr r2, _02146C28 ; =0x0209CC10
	mov r0, #0x88
_02146BC4:
	mul r3, lr, r0
	ldrb r1, [r2, r3]
	cmp r6, r1
	ldreq r0, _02146C2C ; =0x0209CC13
	ldreqsb r12, [r0, r3]
	beq _02146BE8
	add lr, lr, #1
	cmp lr, r7
	blt _02146BC4
_02146BE8:
	add r0, r4, r5
	add r0, r12, r0
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #0x64
	mov r0, #0x64
	movgt r4, #0x64
	bl FUN_ov16_020ef928
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, r4, lsl #0x18
	cmp r1, r0, asr #24
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146C24: .word unk_0209BA20
_02146C28: .word unk_0209CC10
_02146C2C: .word unk_0209CC13
	arm_func_end FUN_ov132_02146b48

	arm_func_start FUN_ov132_02146c30
FUN_ov132_02146c30: ; 0x02146C30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r4, [r0, #0x63]
	mov r0, r7
	bl FUN_ov16_020f0810
	ldr r6, _02146D0C ; =0x0209BA20
	mov r1, r0
	mov r0, r6
	bl FUN_0207249c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r5, [r0, #0x39]
	mov r0, r6
	mov r1, r7
	bl FUN_0204b754
	mov r6, r0
	mov r0, r7
	bl FUN_ov16_020f07d0
	mov r1, #0xb
	mul lr, r0, r1
	add r7, lr, #0xb
	cmp lr, r7
	mov r12, #0
	bge _02146CD0
	ldr r2, _02146D10 ; =0x0209CC10
	mov r0, #0x88
_02146CAC:
	mul r3, lr, r0
	ldrb r1, [r2, r3]
	cmp r6, r1
	ldreq r0, _02146D14 ; =0x0209CC14
	ldreqsb r12, [r0, r3]
	beq _02146CD0
	add lr, lr, #1
	cmp lr, r7
	blt _02146CAC
_02146CD0:
	add r0, r4, r5
	add r0, r12, r0
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #0x64
	mov r0, #0x64
	movgt r4, #0x64
	bl FUN_ov16_020ef928
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, r4, lsl #0x18
	cmp r1, r0, asr #24
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02146D0C: .word unk_0209BA20
_02146D10: .word unk_0209CC10
_02146D14: .word unk_0209CC14
	arm_func_end FUN_ov132_02146c30

	arm_func_start FUN_ov132_02146d18
FUN_ov132_02146d18: ; 0x02146D18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r8, r0
	mov r0, r1
	mov r1, r5
	mov r7, r2
	mov r6, r3
	bl FUN_ov16_020efa9c
	movs r4, r0
	subeq r0, r5, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_0206cc84
	mov r5, r0
	mov r0, r8
	bl FUN_ov132_021434f8
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	beq _02146D70
	cmp r6, #1
	beq _02146D78
_02146D70:
	mov r0, r5
	b _02146D80
_02146D78:
	mov r0, r4
	bl FUN_0206cc94
_02146D80:
	mul r1, r0, r7
	ldr r2, _02146DD0 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mov r0, r3, lsl #0x10
	add r0, r5, r0, asr #16
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r5, r1, asr #0x10
	bl FUN_0206cc94
	cmp r5, #0
	movlt r5, #0
	cmp r5, r0
	movgt r5, r0
	mov r0, r4
	mov r1, r5
	bl FUN_0206cc44
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02146DD0: .word 0x51EB851F
	arm_func_end FUN_ov132_02146d18

	arm_func_start FUN_ov132_02146dd4
FUN_ov132_02146dd4: ; 0x02146DD4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r8, r0
	mov r0, r1
	mov r1, r5
	mov r7, r2
	mov r6, r3
	bl FUN_ov16_020efa9c
	movs r4, r0
	subeq r0, r5, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_0206ccdc
	mov r5, r0
	mov r0, r8
	bl FUN_ov132_021434f8
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	beq _02146E2C
	cmp r6, #1
	beq _02146E34
_02146E2C:
	mov r0, r5
	b _02146E3C
_02146E34:
	mov r0, r4
	bl FUN_0206ccec
_02146E3C:
	mul r1, r0, r7
	ldr r2, _02146E8C ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mov r0, r3, lsl #0x10
	add r0, r5, r0, asr #16
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r5, r1, asr #0x10
	bl FUN_0206ccec
	cmp r5, #0
	movlt r5, #0
	cmp r5, r0
	movgt r5, r0
	mov r0, r4
	mov r1, r5
	bl FUN_0206cc9c
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02146E8C: .word 0x51EB851F
	arm_func_end FUN_ov132_02146dd4

	arm_func_start FUN_ov132_02146e90
FUN_ov132_02146e90: ; 0x02146E90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	cmp r2, #0
	bne _02146EAC
	mov r1, #6
	b _02146EB0
_02146EAC:
	mov r1, #1
_02146EB0:
	bl FUN_ov132_0214478c
	mov r0, r6
	mov r1, #0xf
	bl FUN_ov132_021447d0
	mov r4, #1
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_021491bc
	cmp r5, #1
	mov r0, r6
	bne _02146EE4
	mov r1, #0
	b _02146EE8
_02146EE4:
	mov r1, r4
_02146EE8:
	bl FUN_ov132_02144778
	mov r0, #1
	strb r0, [r6, #0x32b]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02146e90

	arm_func_start FUN_ov132_02146ef8
FUN_ov132_02146ef8: ; 0x02146EF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	mov r0, r1
	mov r1, #0
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	movs r9, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_0206d5f0
	mov r8, r0
	mov r0, r7
	mov r1, r8
	bl FUN_ov132_02143b2c
	mov r4, r0
	ldrsh r2, [r9, #0x94]
	mov r0, r7
	mov r1, r8
	strh r2, [r4, #4]
	strb r8, [r4, #6]
	bl FUN_ov132_02143cd0
	strb r0, [r4, #7]
	cmp r6, #0
	bne _02146F88
	ldr r2, _02146FF8 ; =0x020A0640
	ldr r1, _02146FFC ; =0x55555556
	ldrb r5, [r2, #0x8f]
	smull r0, r3, r1, r5
	strb r5, [r4, #8]
	add r3, r3, r5, lsr #31
	ldr r1, [r2]
	add r0, r3, r3, lsl #1
	str r1, [r4]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02146FDC
_02146F88:
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _02146FC8
_02146F94: ; jump table
	b _02146FC8 ; case 0
	b _02146FA8 ; case 1
	b _02146FB0 ; case 2
	b _02146FB8 ; case 3
	b _02146FC0 ; case 4
_02146FA8:
	mov r0, #1
	b _02146FC4
_02146FB0:
	mov r0, #4
	b _02146FC4
_02146FB8:
	mov r0, #7
	b _02146FC4
_02146FC0:
	mov r0, #0xa
_02146FC4:
	strb r0, [r4, #8]
_02146FC8:
	mov r0, #0x3c
	mul r1, r5, r0
	mov r0, #0x1e
	mul r0, r1, r0
	str r0, [r4]
_02146FDC:
	mov r0, #0
	bl FUN_020404bc
	strb r0, [r4, #9]
	mov r0, #1
	bl FUN_020404bc
	strb r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02146FF8: .word unk_020A0640
_02146FFC: .word 0x55555556
	arm_func_end FUN_ov132_02146ef8

	arm_func_start FUN_ov132_02147000
FUN_ov132_02147000: ; 0x02147000
	stmfd sp!, {r3, lr}
	ldr r0, _02147020 ; =0x0209BA20
	bl FUN_020724dc
	cmp r0, #0
	ldrneb r1, [r0, #0xb]
	addne r1, r1, #1
	strneb r1, [r0, #0xb]
	ldmfd sp!, {r3, pc}
_02147020: .word unk_0209BA20
	arm_func_end FUN_ov132_02147000

	arm_func_start FUN_ov132_02147024
FUN_ov132_02147024: ; 0x02147024
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r8, r1
	mov r5, r0
	mov r4, r2
	ldr r6, _021471EC ; =0x51EB851F
	bne _02147048
	mov r1, #0
	bl FUN_ov132_0214731c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02147048:
	mov r0, r8
	bl FUN_02040128
	mov r1, r0
	ldr r2, _021471F0 ; =0x0209A82C
	ldr r0, _021471F4 ; =0x0209A834
	ldr r3, [r2, r1, lsl #4]
	ldr r2, [r0, r1, lsl #4]
	mov r7, #0
	add r2, r3, r2
	add r3, r2, r2, lsr #31
	mov r0, r5
	mov r2, r7
	mov r9, r3, asr #1
	bl FUN_ov132_0213f5d4
	str r0, [sp]
	ldr r2, _021471F8 ; =0x0209A2C0
	mov r3, r9
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_01ffba30
	mov r2, r0, asr #0xb
	add r0, r0, r2, lsr #20
	mov r1, r8
	mov r8, r0, asr #0xc
	mov r0, r5
	bl FUN_ov126_0212f36c
	mov r1, r0, asr #0xb
	add r0, r0, r1, lsr #20
	mov r9, r0, asr #0xc
	mov r0, #0x64
	mul r0, r8, r0
	mov r1, r9
	bl _s32_div_f
	mov r1, r9
	mov r9, r0
	sub r0, r8, #1
	bl _s32_div_f
	cmp r0, #0
	movlt r0, r7
	cmp r4, #0
	mov r1, #0x14
	beq _02147114
	ldrb r2, [r4]
	mov r3, #0
	cmp r2, #7
	bne _0214710C
	ldrb r2, [r4, #0x13]
	tst r2, #1
	movne r3, #1
_0214710C:
	cmp r3, #0
	bne _02147188
_02147114:
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02147180
_02147120: ; jump table
	b _02147130 ; case 0
	b _02147148 ; case 1
	b _0214714C ; case 2
	b _02147164 ; case 3
_02147130:
	rsb r0, r9, #0x4b
	mul r2, r0, r1
	smull r1, r0, r6, r2
	mov r1, r2, lsr #0x1f
	add r0, r1, r0, asr #3
	b _021471D8
_02147148:
	b _0214714C
_0214714C:
	rsb r0, r9, #0
	mul r2, r0, r1
	smull r1, r0, r6, r2
	mov r1, r2, lsr #0x1f
	add r0, r1, r0, asr #5
	b _021471D8
_02147164:
	sub r0, r9, #0x12c
	mul r2, r0, r1
	smull r0, r3, r6, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #5
	sub r0, r1, #0x64
	b _021471C4
_02147180:
	mov r0, #0
	b _021471D8
_02147188:
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021471D4
_02147194: ; jump table
	b _021471A4 ; case 0
	b _021471A8 ; case 1
	b _021471CC ; case 2
	b _021471D0 ; case 3
_021471A4:
	b _02147130
_021471A8:
	mov r0, #0xa
	sub r1, r9, #0x64
	mul r2, r1, r0
	smull r1, r3, r6, r2
	mov r1, r2, lsr #0x1f
	add r3, r1, r3, asr #5
	sub r0, r0, #0x1e
_021471C4:
	sub r0, r0, r3
	b _021471D8
_021471CC:
	b _021471A8
_021471D0:
	b _021471A8
_021471D4:
	mvn r0, #0x31
_021471D8:
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r1, r1, asr #0x10
	bl FUN_ov132_0214731c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021471EC: .word 0x51EB851F
_021471F0: .word unk_0209A82C
_021471F4: .word unk_0209A834
_021471F8: .word unk_0209A2C0
	arm_func_end FUN_ov132_02147024

	arm_func_start FUN_ov132_021471fc
FUN_ov132_021471fc: ; 0x021471FC
	add r0, r0, #0x300
	ldrsh r0, [r0, #0x98]
	bx lr
	arm_func_end FUN_ov132_021471fc

	arm_func_start FUN_ov132_02147208
FUN_ov132_02147208: ; 0x02147208
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_ov132_02143cd0
	cmp r0, #0
	bne _02147240
	ldr r1, _0214726C ; =0x0209A820
	ldr r0, _02147270 ; =0x0209A720
	ldrsh r1, [r1, #0x72]
	ldr r0, [r0, #0xd8]
	add r0, r0, r1, lsl #12
	cmp r0, r4
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r4, pc}
_02147240:
	ldr r1, _0214726C ; =0x0209A820
	ldr r0, _02147270 ; =0x0209A720
	ldrsh r1, [r1, #0x72]
	ldr r0, [r0, #0xd8]
	mov r1, r1, lsl #0xc
	rsb r1, r1, #0
	add r0, r1, r0
	cmp r0, r4
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r4, pc}
_0214726C: .word unk_0209A820
_02147270: .word unk_0209A720
	arm_func_end FUN_ov132_02147208

	arm_func_start FUN_ov132_02147274
FUN_ov132_02147274: ; 0x02147274
	stmfd sp!, {r3, lr}
	bl FUN_ov132_02143cd0
	cmp r0, #0
	ldreq r0, _021472AC ; =0x0209A820
	ldreqsh r0, [r0, #0x70]
	moveq r1, r0, lsl #0xc
	ldrne r0, _021472AC ; =0x0209A820
	ldrnesh r0, [r0, #0x70]
	movne r0, r0, lsl #0xc
	rsbne r1, r0, #0
	ldr r0, _021472B0 ; =0x0209A720
	ldr r0, [r0, #0xd8]
	add r0, r1, r0
	ldmfd sp!, {r3, pc}
_021472AC: .word unk_0209A820
_021472B0: .word unk_0209A720
	arm_func_end FUN_ov132_02147274

	arm_func_start FUN_ov132_021472b4
FUN_ov132_021472b4: ; 0x021472B4
	stmfd sp!, {r3, lr}
	bl FUN_ov132_02143cd0
	cmp r0, #0
	ldreq r0, _021472EC ; =0x0209A820
	ldreqsh r0, [r0, #0x72]
	moveq r1, r0, lsl #0xc
	ldrne r0, _021472EC ; =0x0209A820
	ldrnesh r0, [r0, #0x72]
	movne r0, r0, lsl #0xc
	rsbne r1, r0, #0
	ldr r0, _021472F0 ; =0x0209A720
	ldr r0, [r0, #0xd8]
	add r0, r1, r0
	ldmfd sp!, {r3, pc}
_021472EC: .word unk_0209A820
_021472F0: .word unk_0209A720
	arm_func_end FUN_ov132_021472b4

	arm_func_start FUN_ov132_021472f4
FUN_ov132_021472f4: ; 0x021472F4
	add r2, r0, #0x300
	ldrsh r3, [r2, #0x98]
	mov r0, r1, lsl #0x10
	mvn r1, #0x59
	add r0, r3, r0, asr #16
	strh r0, [r2, #0x98]
	ldrsh r0, [r2, #0x98]
	cmp r0, r1
	strlth r1, [r2, #0x98]
	bx lr
	arm_func_end FUN_ov132_021472f4

	arm_func_start FUN_ov132_0214731c
FUN_ov132_0214731c: ; 0x0214731C
	add r0, r0, #0x300
	strh r1, [r0, #0x98]
	bx lr
	arm_func_end FUN_ov132_0214731c

	arm_func_start FUN_ov132_02147328
FUN_ov132_02147328: ; 0x02147328
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r8, r2
	str r0, [sp, #0xc]
	mov r9, r1
	mov r7, r3
	cmp r8, #0x80000000
	ldr r6, [sp, #0x70]
	bne _02147358
	cmp r7, #0x80000000
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02147358:
	ldr r0, [sp, #0x68]
	cmp r0, #0x80000000
	bne _02147374
	ldr r0, [sp, #0x6c]
	cmp r0, #0x80000000
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02147374:
	cmp r6, #0
	beq _02147388
	cmp r6, #1
	beq _021473C0
	b _021473EC
_02147388:
	ldr r5, _021475B0 ; =0x02099F78
	ldr r1, _021475B4 ; =0x02160344
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r11, r0
	ldr r1, _021475B8 ; =0x0216035C
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r4, r0
	ldr r1, _021475BC ; =0x02160374
_021473B0:
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r5, r0
	b _021473F8
_021473C0:
	ldr r5, _021475B0 ; =0x02099F78
	ldr r1, _021475C0 ; =0x0216038C
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r11, r0
	ldr r1, _021475C4 ; =0x021603A4
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r4, r0
	ldr r1, _021475C8 ; =0x021603BC
	b _021473B0
_021473EC:
	mov r11, #0x1e
	mov r4, #1
	mov r5, #0x32
_021473F8:
	mov r0, r9
	bl FUN_ov16_020f07d0
	ldr r2, _021475CC ; =0x0209A80C
	ldr r1, _021475D0 ; =0x0209A2C0
	add r2, r2, r0, lsl #4
	ldr r0, [r1, #4]
	add r10, sp, #0x30
	mov r12, r0, asr #0xc
	ldmia r2, {r0, r1, r2, r3}
	stmia r10, {r0, r1, r2, r3}
	ldr r0, [sp, #0x3c]
	rsbs r10, r12, r0, asr #12
	ldr r0, _021475D4 ; =0x0209A81C
	add r12, sp, #0x20
	ldmia r0, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	ldr r0, _021475CC ; =0x0209A80C
	add r12, sp, #0x10
	ldmia r0, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	ldr r0, [sp, #0x1c]
	ldr lr, [sp, #0x2c]
	mov r0, r0, asr #0xc
	rsbmi r10, r10, #0
	rsbs r1, r0, lr, asr #12
	rsbmi r1, r1, #0
	sub r2, r11, r4
	sub r0, r1, r10
	mul r0, r2, r0
	bl _s32_div_f
	ldr r1, [r9, #0x84]
	add r4, r4, r0
	ldmia r1, {r2, r3}
	ldr r0, [sp, #0xc]
	mov r1, r9
	bl FUN_ov132_02140a44
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _021474B4
	mul r1, r4, r5
	ldr r2, _021475D8 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r4, r4, r3
_021474B4:
	cmp r4, #1
	movlt r4, #1
	blt _021474C8
	cmp r4, #0x5a
	movgt r4, #0x5a
_021474C8:
	ldr r5, _021475DC ; =0x0209A114
	mov r1, #1
	ldr r0, [r5]
	bl FUN_ov1_020de230
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #0x6c]
	str r1, [sp]
	stmib sp, {r0, r4}
	ldr r0, [r5]
	mov r1, r6
	mov r2, r8
	mov r3, r7
	bl FUN_ov1_020dd918 ; may be ov15
	ldr r5, _021475E0 ; =0x0209BA20
	mov r4, #0
	mov r0, r5
	bl FUN_020731a4
	cmp r0, #0
	bne _02147570
	ldr r0, [sp, #0xc]
	bl FUN_ov126_021375d4
	ldrsh r1, [r0, #8]
	mov r0, r5
	bl FUN_0204a2c4
	cmp r0, #0
	beq _0214753C
	ldrb r0, [r0]
	cmp r0, #7
	beq _02147570
_0214753C:
	mov r0, r9
	bl FUN_ov16_020f07d0
	cmp r0, #0
	bne _02147560
	ldr r0, _021475E4 ; =0x0209A720
	ldr r0, [r0, #0xd8]
	cmp r7, r0
	movge r4, #1
	b _02147570
_02147560:
	ldr r0, _021475E4 ; =0x0209A720
	ldr r0, [r0, #0xd8]
	cmp r7, r0
	movle r4, #1
_02147570:
	mov r0, r9
	bl FUN_ov16_020f07d0
	cmp r0, #0
	bne _02147588
	cmp r6, #0
	b _02147590
_02147588:
	cmp r0, #1
	cmpeq r6, #1
_02147590:
	ldr r0, _021475DC ; =0x0209A114
	moveq r4, #1
	ldr r0, [r0]
	mov r1, r6
	mov r2, r4
	bl FUN_ov1_020dd8fc
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021475B0: .word unk_02099F78
_021475B4: .word ov132_02160344
_021475B8: .word ov132_0216035C
_021475BC: .word ov132_02160374
_021475C0: .word ov132_0216038C
_021475C4: .word ov132_021603A4
_021475C8: .word ov132_021603BC
_021475CC: .word unk_0209A80C
_021475D0: .word unk_0209A2C0
_021475D4: .word unk_0209A81C
_021475D8: .word 0x51EB851F
_021475DC: .word unk_0209A114
_021475E0: .word unk_0209BA20
_021475E4: .word unk_0209A720
	arm_func_end FUN_ov132_02147328

	arm_func_start FUN_ov132_021475e8
FUN_ov132_021475e8: ; 0x021475E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x88]
	mov r10, r0
	str r1, [sp, #0x88]
	ldr r1, [sp, #0x8c]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r1, [sp, #0x8c]
	bl FUN_ov132_021434f8
	cmp r0, #1
	addeq sp, sp, #0x60
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x14]
	cmp r0, #0
	addeq sp, sp, #0x60
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x54]
	mov r0, r10
	str r1, [sp, #0x50]
	bl FUN_ov126_0213777c
	ldrb r2, [r0, #0x29]
	ldr r1, [sp, #0x54]
	mov r0, r10
	mov r2, r2, lsl #0x18
	mov r4, r2, lsr #0x1c
	bl FUN_ov126_021377f8
	ldrb r0, [r0, #0x29]
	cmp r4, #5
	ldr r1, [sp, #0x14]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmpeq r0, #5
	moveq r0, #0
	streq r0, [sp, #0x54]
	ldr r0, [sp, #0x88]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x8c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mvn r0, #0
	str r0, [sp, #0x4c]
	ldr r4, [sp, #0x44]
	mov r0, r10
	str r4, [sp, #8]
	ldr r4, [sp, #0x4c]
	str r4, [sp, #0x48]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0x40]
	ldr r4, [sp, #0x44]
	sub r4, r4, #0x80000001
	str r4, [sp, #0x38]
	bl FUN_ov132_02147328
	ldr r0, [sp, #0x88]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x8c]
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	mov r0, r10
	bl FUN_ov132_02147328
	ldr r0, [sp, #0x44]
	b _02147B88
_02147710:
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	mov r0, r10
	bl FUN_ov126_0213922c
	movs r6, r0
	beq _02147B80
	ldr r0, [sp, #0x14]
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r6
	bl FUN_0206d5f0
	mov r5, r0
	cmp r4, r5
	bne _02147758
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _02147B80
_02147758:
	cmp r4, r5
	beq _0214776C
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _02147B80
_0214776C:
	mov r0, r6
	bl FUN_0206d6d8
	cmp r0, #1
	bne _02147790
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02138ec0
	cmp r0, #1
	beq _02147B80
_02147790:
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #1
	beq _02147B80
	mov r0, r6
	bl FUN_0206da14
	cmp r0, #0
	beq _02147B80
	mov r7, #0
	b _02147A78
_021477B8:
	mov r0, r6
	bl FUN_0206dcd4
	add r0, r0, r7, lsl #1
	ldrh r9, [r0, #0x38]
	cmp r9, #0
	beq _02147A74
	ldr r0, _02147C58 ; =0x0209BA20
	mov r1, r9
	bl FUN_0204a2c4
	movs r8, r0
	beq _02147A74
	mov r0, r9, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r2, [sp, #0x14]
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_02149bd4
	cmp r0, #0
	beq _02147A74
	ldrb r0, [r8, #0x13]
	tst r0, #6
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _02147824
	cmp r4, r5
	bne _02147840
_02147824:
	ldrb r0, [r8, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	cmpeq r4, r5
	bne _02147A74
_02147840:
	mov r0, r6
	bl FUN_0206cc84
	mov r9, r0
	mov r0, r8
	mov r1, r6
	bl FUN_0204b114
	cmp r9, r0
	blt _02147A74
	ldrb r0, [r8, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	cmpeq r4, r5
	bne _021478D4
	ldr r1, [r6, #0x84]
	mov r0, r10
	ldmia r1, {r2, r3}
	mov r1, r6
	bl FUN_ov132_02140a44
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _021478D4
	ldrb r0, [r8]
	mov r1, #0
	cmp r0, #7
	bne _021478C0
	ldrb r0, [r8, #0x13]
	tst r0, #1
	movne r1, #1
_021478C0:
	mov r0, #1
	cmp r1, #0
	moveq r0, #0
	cmp r0, #0
	beq _02147A74
_021478D4:
	ldrb r0, [r8, #0x13]
	tst r0, #6
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _021479A8
	cmp r4, r5
	beq _021479A8
	mov r0, r10
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xd]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _021479A8
	ldr r2, [r0, #0x84]
	ldr r0, [sp, #0x14]
	ldr r9, [r2]
	ldr r1, [r0, #0x84]
	ldr r0, [r2, #4]
	ldr r2, [r6, #0x84]
	str r0, [sp, #0x30]
	ldr r0, [r1]
	ldr r1, [r2]
	str r0, [sp, #0x2c]
	mov r0, r6
	str r1, [sp, #0x28]
	ldr r11, [r2, #4]
	bl FUN_ov16_020f07d0
	cmp r0, #1
	bne _0214795C
	ldr r0, [sp, #0x30]
	cmp r11, r0
	blt _02147A74
	b _02147970
_0214795C:
	cmp r0, #0
	bne _02147970
	ldr r0, [sp, #0x30]
	cmp r11, r0
	bgt _02147A74
_02147970:
	ldr r0, [sp, #0x2c]
	cmp r0, r9
	bge _0214798C
	ldr r0, [sp, #0x28]
	add r1, r9, #0x32000
	cmp r1, r0
	blt _02147A74
_0214798C:
	ldr r0, [sp, #0x2c]
	cmp r0, r9
	ble _021479A8
	ldr r0, [sp, #0x28]
	sub r1, r9, #0x32000
	cmp r1, r0
	bgt _02147A74
_021479A8:
	ldrb r0, [r8, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	cmpeq r4, r5
	bne _02147A68
	mov r0, r10
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xd]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _02147A68
	ldr r2, [r0, #0x84]
	ldr r0, [sp, #0x14]
	ldr r8, [r2]
	ldr r1, [r0, #0x84]
	ldr r0, [r2, #4]
	str r0, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [r6, #0x84]
	str r0, [sp, #0x20]
	mov r0, r6
	ldr r11, [r1]
	ldr r9, [r1, #4]
	bl FUN_ov16_020f07d0
	cmp r0, #1
	bne _02147A28
	ldr r0, [sp, #0x24]
	cmp r9, r0
	bgt _02147A74
	b _02147A3C
_02147A28:
	cmp r0, #0
	bne _02147A3C
	ldr r0, [sp, #0x24]
	cmp r9, r0
	blt _02147A74
_02147A3C:
	ldr r0, [sp, #0x20]
	cmp r0, r8
	bge _02147A54
	add r0, r8, #0x32000
	cmp r0, r11
	blt _02147A74
_02147A54:
	ldr r0, [sp, #0x20]
	cmp r0, r8
	subgt r0, r8, #0x32000
	cmpgt r0, r11
	bgt _02147A74
_02147A68:
	mov r0, #1
	str r0, [sp, #0x3c]
	b _02147A80
_02147A74:
	add r7, r7, #1
_02147A78:
	cmp r7, #6
	blt _021477B8
_02147A80:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02147B80
	ldr r0, [r6, #0x84]
	mov r8, #0
	ldmia r0, {r2, r3}
	ldr r7, _02147C5C ; =0x0209A114
	str r8, [sp]
	cmp r4, r5
	movne r1, r8
	ldr r0, [r7]
	moveq r1, #1
	bl FUN_ov1_020de240
	cmp r0, #0
	blt _02147B80
	ldr r1, [sp, #0x88]
	ldr r0, [sp, #0x18]
	add r9, sp, #0x5c
	sub r0, r1, r0
	add r2, r0, r0, lsr #31
	ldr r0, [sp, #0x18]
	sub r1, r0, r2, asr #1
	ldr r0, [sp, #0x88]
	add r3, r0, r2, asr #1
	ldr r2, [sp, #0x8c]
	ldr r0, [sp, #0x1c]
	sub r0, r2, r0
	add r8, r0, r0, lsr #31
	ldr r0, [sp, #0x1c]
	sub r2, r0, r8, asr #1
	ldr r0, [sp, #0x8c]
	add r0, r0, r8, asr #1
	ldr r8, [r6, #0x84]
	ldr r12, [r8]
	ldr r11, [r8, #4]
	add r8, sp, #0x58
	stmia sp, {r0, r12}
	str r11, [sp, #8]
	str r9, [sp, #0xc]
	str r8, [sp, #0x10]
	ldr r0, [r7]
	bl FUN_ov1_020de5dc
	ldr r1, [sp, #0x38]
	cmp r1, r0
	ble _02147B80
	ldr r1, [sp, #0x14]
	ldrsh r3, [r6, #0x94]
	ldrsh r2, [r1, #0x94]
	str r0, [sp, #0x38]
	mov r1, r3, lsl #0x18
	mov r0, r1, asr #0x18
	mov r2, r2, lsl #0x18
	str r0, [sp, #0x4c]
	mov r0, r2, asr #0x18
	cmp r4, r5
	str r0, [sp, #0x48]
	movne r0, #1
	strne r0, [sp, #0x44]
	movne r0, #0
	strne r0, [sp, #0x40]
	moveq r0, #0
	streq r0, [sp, #0x44]
	moveq r0, #1
	streq r0, [sp, #0x40]
_02147B80:
	ldr r0, [sp, #0x34]
	add r0, r0, #1
_02147B88:
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x34]
	cmp r0, #0x16
	blt _02147710
	ldr r0, [sp, #0x4c]
	mvn r4, #0
	cmp r0, r4
	beq _02147BE8
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _02147BE8
	ldr r5, _02147C60 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov126_021378fc
	ldr r0, [r5]
	ldr r0, [r0, #0x3b0]
	cmp r0, #2
	bne _02147BE8
	mov r0, #0
	str r0, [sp, #0x44]
	str r4, [sp, #0x4c]
	str r4, [sp, #0x48]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x40]
_02147BE8:
	mov r0, r10
	bl FUN_ov126_021375d4
	ldr r1, [sp, #0x18]
	ldrsh r4, [r0, #8]
	mov r7, r1, asr #0xc
	ldr r1, [sp, #0x1c]
	ldrsb r5, [r0, #0xd]
	mov r0, r10
	mov r6, r1, asr #0xc
	bl FUN_ov126_02137644
	ldr r1, [sp, #0x4c]
	strb r1, [r0, #0x20]
	ldr r1, [sp, #0x48]
	strb r1, [r0, #0x24]
	strb r5, [r0, #0x28]
	strh r4, [r0, #0x26]
	strh r7, [r0, #0x2a]
	strh r6, [r0, #0x2c]
	ldr r1, [sp, #0x44]
	strb r1, [r0, #0x2e]
	ldr r1, [sp, #0x40]
	strb r1, [r0, #0x2f]
	ldr r0, [sp, #0x4c]
	cmn r0, #1
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02147C58: .word unk_0209BA20
_02147C5C: .word unk_0209A114
_02147C60: .word unk_02099EF0
	arm_func_end FUN_ov132_021475e8

	arm_func_start FUN_ov132_02147c64
FUN_ov132_02147c64: ; 0x02147C64
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	bl FUN_ov126_0213777c
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02147CA0
	cmp r6, #0
	beq _02147CE4
_02147CA0:
	ldr r5, _02147CF4 ; =0x0209A114
	ldr r0, [r5]
	bl FUN_ov1_020de1e8
	ldr r0, [r5]
	mov r1, #0
	bl FUN_ov1_020de230
	cmp r6, #0
	beq _02147CE4
	ldrb r1, [r4, #0x29]
	mov r0, r1, lsl #0x1c
	mov r0, r0, lsr #0x1c
	orr r0, r0, #4
	and r0, r0, #0xff
	bic r1, r1, #0xf
	and r0, r0, #0xf
	orr r0, r1, r0
	strb r0, [r4, #0x29]
_02147CE4:
	ldr r0, _02147CF8 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4968
	ldmfd sp!, {r4, r5, r6, pc}
_02147CF4: .word unk_0209A114
_02147CF8: .word unk_02099F14
	arm_func_end FUN_ov132_02147c64

	arm_func_start FUN_ov132_02147cfc
FUN_ov132_02147cfc: ; 0x02147CFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	bl FUN_ov126_0213777c
	movs r5, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	mov r0, r6
	bne _02147D44
	bl FUN_ov126_021375d4
	mov r4, r0
	add r1, r5, #4
	mov r2, #0x18
	bl MI_CpuCopy8
	str r4, [r5, #0x1c]
	mov r0, #0
	strb r0, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_02147D44:
	bl FUN_ov126_0213246c
	add r1, r5, #4
	mov r2, #0x18
	mov r4, r0
	bl MI_CpuCopy8
	str r4, [r5, #0x1c]
	mov r0, #1
	strb r0, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02147cfc

	arm_func_start FUN_ov132_02147d68
FUN_ov132_02147d68: ; 0x02147D68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov126_0213777c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsb r0, [r4, #0x20]
	bl FUN_ov16_020efa80
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r1, [r4, #0x22]
	add r3, sp, #0
	mov r2, #1
	bl FUN_0206d1e4
	mov r0, r5
	mov r1, #0
	bl FUN_ov132_02147c64
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02147d68

	arm_func_start FUN_ov132_02147dac
FUN_ov132_02147dac: ; 0x02147DAC
	ldrb r3, [r0, #0x39b]
	tst r3, #3
	andeq r2, r1, #1
	cmpeq r2, #1
	addeq r1, r1, r1
	add r1, r1, r3
	cmp r1, #0x78
	movgt r1, #0x64
	andle r1, r1, #0xff
	strb r1, [r0, #0x39b]
	bx lr
	arm_func_end FUN_ov132_02147dac

	arm_func_start FUN_ov132_02147dd8
FUN_ov132_02147dd8: ; 0x02147DD8
	ldrb r0, [r0, #0x39b]
	cmp r0, #0x64
	movhs r0, #1
	movlo r0, #0
	bx lr
	arm_func_end FUN_ov132_02147dd8

	arm_func_start FUN_ov132_02147dec
FUN_ov132_02147dec: ; 0x02147DEC
	mov r1, #0
	strb r1, [r0, #0x39b]
	bx lr
	arm_func_end FUN_ov132_02147dec

	arm_func_start FUN_ov132_02147df8
FUN_ov132_02147df8: ; 0x02147DF8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x3b8]
	tst r1, #0xff
	ldmnefd sp!, {r3, pc}
	mov r1, #1
	mov r2, r1
	bl FUN_ov132_02143598
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02147df8

	arm_func_start FUN_ov132_02147e24
FUN_ov132_02147e24: ; 0x02147E24
	ldrb r0, [r0, #0x3b8]
	bx lr
	arm_func_end FUN_ov132_02147e24

	arm_func_start FUN_ov132_02147e2c
FUN_ov132_02147e2c: ; 0x02147E2C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	mov r0, r1
	bl FUN_ov16_020efa80
	cmp r4, #8
	movge r2, r4, lsr #0x1f
	mov r1, r0
	rsbge r0, r2, r4, lsl #29
	addge r4, r2, r0, ror #29
	mov r2, #1
	str r2, [sp]
	ldr r0, _02147E80 ; =0x02099F14
	cmp r4, #0
	movlt r4, #0
	ldr r0, [r0]
	mov r3, r4
	mov r2, #0
	bl FUN_ov1_020e3c14
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02147E80: .word unk_02099F14
	arm_func_end FUN_ov132_02147e2c

	arm_func_start FUN_ov132_02147e84
FUN_ov132_02147e84: ; 0x02147E84
	add r0, r0, r1, lsl #2
	str r2, [r0, #0x39c]
	bx lr
	arm_func_end FUN_ov132_02147e84

	arm_func_start FUN_ov132_02147e90
FUN_ov132_02147e90: ; 0x02147E90
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x39c]
	bx lr
	arm_func_end FUN_ov132_02147e90

	arm_func_start FUN_ov132_02147e9c
FUN_ov132_02147e9c: ; 0x02147E9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	mov r2, r4
	bl FUN_ov132_02147e84
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_ov132_02147e84
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02147e9c

	arm_func_start FUN_ov132_02147ec8
FUN_ov132_02147ec8: ; 0x02147EC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	str r0, [sp, #4]
	ldr r0, _02148374 ; =0x0209BA20
	mov r10, r1
	str r2, [sp, #8]
	mov r9, r3
	bl FUN_0204fb20
	ldr r1, [r10, #0x88]
	mov r4, #0
	str r4, [r1, #0x14]
	ldr r1, [r10, #0x84]
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r10, #0x84]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	mov r0, r10
	bl FUN_0206d9f8
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x88]
	ldr r2, [r10, #0x84]
	ldr r1, [r0]
	ldr r5, [r2]
	ldr r3, [r2, #4]
	ldr r2, [r0, #4]
	str r1, [sp, #0x14]
	mov r0, r10
	mov r1, #4
	str r5, [sp, #0x1c]
	str r3, [sp, #0x20]
	str r2, [sp, #0x18]
	bl FUN_0206dac4
	ldr r0, [sp, #0x14]
	cmp r0, #0x80000000
	bne _02147F6C
	ldr r0, [sp, #0x18]
	cmp r0, #0x80000000
	beq _02147FB8
_02147F6C:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bne _02147F8C
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	beq _02147FB8
_02147F8C:
	mov r2, #0x28000
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	mov r3, r2
	bl FUN_020407d0
	cmp r0, #0
	bne _02148000
	mov r0, r10
	bl FUN_02040b4c
	cmp r0, #0
	bne _02148000
_02147FB8:
	mov r0, r10
	bl FUN_02040b4c
	cmp r0, #0
	beq _02147FD4
	ldr r0, [sp, #4]
	mov r1, r10
	bl FUN_ov132_02144720
_02147FD4:
	ldr r0, [r10, #0x88]
	mov r1, #0x80000000
	str r1, [r0]
	ldr r0, [r10, #0x88]
	add sp, sp, #0x24
	str r1, [r0, #4]
	ldr r0, [r10, #0x88]
	str r4, [r0, #0x10]
	ldr r0, [r10, #0x88]
	str r4, [r0, #0x18]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02148000:
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x20]
	ldr r5, [r10, #0x84]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	sub r0, r3, r0
	sub r1, r2, r1
	ldrh r5, [r5, #0x18]
	bl FX_Atan2Idx
	ldr r1, _02148378 ; =0x00001333
	ldr r12, _0214837C ; =0x0000099A
	umull r3, r2, r9, r1
	umull r7, r11, r9, r12
	mov r6, r0
	adds r0, r3, #0x800
	mla r2, r9, r4, r2
	mov lr, r9, asr #0x1f
	mla r11, r9, r4, r11
	mla r2, lr, r1, r2
	mov r8, r0, lsr #0xc
	adc r0, r2, r4
	adds r7, r7, #0x800
	mla r11, lr, r12, r11
	rsb r3, r1, #0x2000
	orr r8, r8, r0, lsl #20
	mov r7, r7, lsr #0xc
	adc r11, r11, r4
	orr r7, r7, r11, lsl #20
	umull r11, r12, r9, r3
	mla r12, r9, r4, r12
	mla r12, lr, r3, r12
	adds r9, r11, #0x800
	adc r3, r12, r4
	mov r4, r9, lsr #0xc
	ldr r2, _02148380 ; =0x0000038E
	mov r0, r5
	mov r1, r6
	orr r4, r4, r3, lsl #20
	bl FUN_020405a4
	cmp r0, #0
	beq _021480B8
	add r7, r7, r4
	cmp r7, r8
	mov r5, r6
	movgt r7, r8
	b _021481D4
_021480B8:
	mov r1, r5, asr #4
	mov r3, r1, lsl #1
	add r5, r3, #1
	mov r1, r6, asr #4
	mov r1, r1, lsl #1
	add r2, r1, #1
	add r0, r7, r4
	cmp r0, r8
	subgt r7, r8, r4
	ldr r11, _02148384 ; =FX_SinCosTable_
	mov r5, r5, lsl #1
	mov r3, r3, lsl #1
	ldrsh r9, [r11, r5]
	ldrsh r5, [r11, r3]
	mov r2, r2, lsl #1
	cmp r4, #0
	mov r1, r1, lsl #1
	ldrsh r3, [r11, r2]
	ldrsh r2, [r11, r1]
	smull r1, r11, r7, r9
	movle r4, #0
	adds r1, r1, #0x800
	mov r0, #0
	smull r5, r9, r7, r5
	adc r11, r11, r0
	adds r7, r5, #0x800
	mov r12, r1, lsr #0xc
	smull r5, r1, r4, r3
	smull r3, r2, r4, r2
	adc r9, r9, r0
	adds r5, r5, #0x800
	adc r1, r1, r0
	adds r3, r3, #0x800
	mov r4, r7, lsr #0xc
	mov r5, r5, lsr #0xc
	adc r0, r2, r0
	mov r2, r3, lsr #0xc
	orr r12, r12, r11, lsl #20
	orr r5, r5, r1, lsl #20
	add r1, r12, r5
	orr r4, r4, r9, lsl #20
	orr r2, r2, r0, lsl #20
	add r0, r4, r2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	bl FX_Atan2Idx
	ldr r2, [sp, #0xc]
	mov r5, r0
	cmp r2, #0
	rsblt r2, r2, #0
	ldr r1, [sp, #0x10]
	str r2, [sp, #0xc]
	cmp r1, #0
	rsblt r1, r1, #0
	smull r2, r7, r1, r1
	ldr r4, [sp, #0xc]
	adds r9, r2, #0x800
	smull r3, r2, r4, r4
	mov r0, #0
	adc r4, r7, r0
	adds r3, r3, #0x800
	mov r7, r9, lsr #0xc
	adc r0, r2, r0
	mov r2, r3, lsr #0xc
	orr r7, r7, r4, lsl #20
	orr r2, r2, r0, lsl #20
	mov r0, r7, asr #4
	add r0, r0, r2, asr #4
	str r1, [sp, #0x10]
	bl FX_Sqrt
	mov r7, r0, lsl #2
_021481D4:
	ldr r4, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	cmp r7, r8
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #4]
	movgt r7, r8
	str r4, [sp]
	bl FUN_01ffba98
	mov r4, r0
	mov r0, r5
	mov r1, r6
	bl FUN_020403d4
	cmp r4, r7, lsl #2
	bge _02148244
	rsb r2, r0, #0
	cmp r0, #0
	ldr r1, _02148388 ; =0x00000AAA
	movge r2, r0
	cmp r2, r1
	ble _02148244
	cmp r0, #0
	ldrgt r0, _0214838C ; =0x0000071C
	ldrle r0, _02148390 ; =0x0000F8E4
	mov r0, r0, lsl #0x10
	add r0, r5, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_02148244:
	mov r3, r5, lsl #0x10
	ldr r0, [sp, #4]
	mov r1, r10
	mov r2, r7
	mov r5, r3, lsr #0x10
	bl FUN_ov132_0214126c
	mov r0, r5, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r2, _02148384 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r0, [r2, r0]
	smull r1, r2, r7, r1
	adds r3, r1, #0x800
	smull r1, r0, r7, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r8, r3, lsr #0xc
	adc r0, r0, #0
	mov r3, r1, lsr #0xc
	orr r8, r8, r2, lsl #20
	orr r3, r3, r0, lsl #20
	str r8, [sp, #0xc]
	str r3, [sp, #0x10]
	cmp r7, r4
	blt _021482BC
	mov r0, r6
	b _021482D8
_021482BC:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r2, r1, r8
	add r1, r0, r3
	mov r0, r5
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
_021482D8:
	bl FUN_ov16_020efd3c
	mov r4, r0
	ldrh r0, [sp, #0x48]
	mov r6, #0
	tst r0, #0x1800
	beq _02148304
	ldr r0, [r10, #0x84]
	ldrh r5, [r0, #0x18]
	mov r0, r5
	bl FUN_ov16_020efd3c
	mov r4, r0
_02148304:
	ldr r3, [r10, #0x84]
	mov r7, #0
	mov r0, r10
	mov r2, r7
	and r1, r4, #7
	strh r5, [r3, #0x18]
	bl FUN_0206daf8
	ldr r0, [sp, #8]
	cmp r0, #9
	bne _02148340
	mov r0, r10
	bl FUN_ov16_020f07d0
	cmp r0, #0
	movne r7, #4
	mov r4, r7
_02148340:
	ldr r2, [r10, #0x84]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	mov r3, r4
	stmia r2, {r0, r1}
	ldr r0, _02148394 ; =0x02099F14
	str r6, [sp]
	ldr r0, [r0]
	ldr r2, [sp, #8]
	mov r1, r10
	bl FUN_ov1_020e3c14
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02148374: .word unk_0209BA20
_02148378: .word 0x00001333
_0214837C: .word 0x0000099A
_02148380: .word 0x0000038E
_02148384: .word FX_SinCosTable_
_02148388: .word 0x00000AAA
_0214838C: .word 0x0000071C
_02148390: .word 0x0000F8E4
_02148394: .word unk_02099F14
	arm_func_end FUN_ov132_02147ec8

	arm_func_start FUN_ov132_02148398
FUN_ov132_02148398: ; 0x02148398
	stmfd sp!, {r3, lr}
	bl FUN_ov132_021447ec
	cmp r0, #0x14
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02148398

	arm_func_start FUN_ov132_021483b0
FUN_ov132_021483b0: ; 0x021483B0
	stmfd sp!, {r3, lr}
	ldr r3, _021483F4 ; =0x0209A7FC
	mov r0, #0
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, #0
	ldrne r0, [r3, #8]
	ldrne r3, [r3]
	ldreq r0, [r3, #0xc]
	ldreq r3, [r3, #4]
	sub r2, r0, r3
	sub r1, r1, r3
	mov r0, #0x64
	mul r0, r1, r0
	mov r1, r2
	bl _s32_div_f
	ldmfd sp!, {r3, pc}
_021483F4: .word unk_0209A7FC
	arm_func_end FUN_ov132_021483b0

	arm_func_start FUN_ov132_021483f8
FUN_ov132_021483f8: ; 0x021483F8
	cmp r1, #0
	ldr r3, _02148454 ; =0x0209A7FC
	mov r0, #0
	blt _02148410
	cmp r1, #0x64
	ble _02148418
_02148410:
	mov r0, #0
	bx lr
_02148418:
	cmp r3, #0
	bxeq lr
	cmp r2, #0
	ldrne r0, [r3, #8]
	ldrne r12, [r3]
	ldreq r0, [r3, #0xc]
	ldreq r12, [r3, #4]
	ldr r2, _02148458 ; =0x51EB851F
	sub r0, r0, r12
	mul r1, r0, r1
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r0, r12, r3
	bx lr
_02148454: .word unk_0209A7FC
_02148458: .word 0x51EB851F
	arm_func_end FUN_ov132_021483f8

	arm_func_start FUN_ov132_0214845c
FUN_ov132_0214845c: ; 0x0214845C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r8, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	movs r9, r3
	mov r10, r0
	mov r11, r2
	movmi r0, #0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	bl FUN_ov132_02143cd0
	str r0, [sp]
	mov r5, r6
_0214848C:
	mov r0, r10
	mov r1, r11
	mov r2, r5
	bl FUN_ov126_0213938c
	movs r4, r0
	ldrnesh r0, [r4, #0x94]
	cmpne r0, r7
	beq _021484E8
	ldr r1, [r4, #0x84]
	ldr r3, [sp]
	ldr r1, [r1, #4]
	mov r0, r10
	mov r2, r9
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _021484E8
	mov r0, r10
	mov r1, r4
	mov r2, r8
	mov r3, #0
	bl FUN_ov126_021393a8
	cmp r0, #0
	addeq r6, r6, #1
_021484E8:
	add r5, r5, #1
	cmp r5, #0xb
	blt _0214848C
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0214845c

	arm_func_start FUN_ov132_021484fc
FUN_ov132_021484fc: ; 0x021484FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02148608 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204fb20
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	ble _0214853C
	cmp r5, #9
	blt _02148544
_0214853C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148544:
	ldrb r1, [r0, #0x1f]
	mov r2, #0
	cmp r5, r1
	movne r0, #0x64
	ldreqb r0, [r0, #0x20]
	cmp r5, #8
	and r7, r0, #0xff
	addls pc, pc, r5, lsl #2
	b _021485F0
_02148568: ; jump table
	b _021485F0 ; case 0
	b _0214858C ; case 1
	b _02148598 ; case 2
	b _021485A4 ; case 3
	b _021485B0 ; case 4
	b _021485BC ; case 5
	b _021485C8 ; case 6
	b _021485D4 ; case 7
	b _021485E0 ; case 8
_0214858C:
	mov r0, r4
	bl FUN_0206cd50
	b _021485EC
_02148598:
	mov r0, r4
	bl FUN_0206cd10
	b _021485EC
_021485A4:
	mov r0, r4
	bl FUN_0206cd00
	b _021485EC
_021485B0:
	mov r0, r4
	bl FUN_0206cd40
	b _021485EC
_021485BC:
	mov r0, r4
	bl FUN_0206cd60
	b _021485EC
_021485C8:
	mov r0, r4
	bl FUN_0206cd20
	b _021485EC
_021485D4:
	mov r0, r4
	bl FUN_0206cd30
	b _021485EC
_021485E0:
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_021427f0
_021485EC:
	mov r2, r0
_021485F0:
	mul r0, r2, r7
	ldr r3, _0214860C ; =0x51EB851F
	mov r1, r0, lsr #0x1f
	smull r2, r0, r3, r0
	add r0, r1, r0, asr #5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148608: .word unk_0209BA20
_0214860C: .word 0x51EB851F
	arm_func_end FUN_ov132_021484fc

	arm_func_start FUN_ov132_02148610
FUN_ov132_02148610: ; 0x02148610
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _021487D0 ; =0x0209A7FC
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _021486F4
	cmp r1, #1
	beq _0214867C
	cmp r1, #2
	bne _021486F4
	mov r1, r6
	mov r2, #1
	bl FUN_ov132_021483f8
	str r0, [r7]
	mov r0, r8
	mov r1, r5
	mov r2, #0
	bl FUN_ov132_021483f8
	b _02148784
_0214867C:
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _0214869C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021486A8
_0214869C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021486A8:
	bl _ffix
	ldr r1, [r4]
	cmp r5, #0
	add r0, r1, r0
	str r0, [r7]
	mov r0, r5, lsl #0xc
	ble _021486D8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021486E4
_021486D8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021486E4:
	bl _ffix
	ldr r1, [r4, #4]
	add r0, r1, r0
	b _02148784
_021486F4:
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _02148714
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02148720
_02148714:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02148720:
	bl _ffix
	ldr r1, [r4]
	cmp r5, #0
	add r6, r1, r0
	mov r0, r5, lsl #0xc
	ble _0214874C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02148758
_0214874C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02148758:
	bl _ffix
	ldmia r4, {r1, r3}
	ldr r2, [r4, #8]
	add r3, r3, r0
	sub r0, r2, r1
	add r0, r6, r0, asr #1
	str r0, [r7]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	add r0, r3, r0, asr #1
_02148784:
	str r0, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r4]
	cmp r1, r0
	strlt r0, [r7]
	blt _021487A8
	ldr r0, [r4, #8]
	cmp r1, r0
	strgt r0, [r7]
_021487A8:
	ldr r1, [r7, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	strlt r0, [r7, #4]
	blt _021487C8
	ldr r0, [r4, #0xc]
	cmp r1, r0
	strgt r0, [r7, #4]
_021487C8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021487D0: .word unk_0209A7FC
	arm_func_end FUN_ov132_02148610

	arm_func_start FUN_ov132_021487d4
FUN_ov132_021487d4: ; 0x021487D4
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr lr, _0214889C ; =0x0209A7FC
	cmp lr, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02148850
	cmp r1, #1
	beq _0214883C
	cmp r1, #2
	bne _02148850
	mov r1, r2
	mov r2, #1
	bl FUN_ov132_021483b0
	str r0, [r5]
	mov r0, r6
	mov r1, r4
	mov r2, #0
	bl FUN_ov132_021483b0
	b _02148890
_0214883C:
	ldr r1, [lr]
	ldr r0, [lr, #4]
	sub r3, r2, r1
	sub r2, r4, r0
	b _02148874
_02148850:
	ldr r3, [lr]
	ldr r1, [lr, #0xc]
	ldmib lr, {r0, r12}
	sub r12, r12, r3
	sub r1, r1, r0
	sub r2, r2, r12, asr #1
	sub r1, r4, r1, asr #1
	sub r3, r2, r3
	sub r2, r1, r0
_02148874:
	mov r0, r3, asr #0xb
	mov r1, r2, asr #0xb
	add r0, r3, r0, lsr #20
	add r1, r2, r1, lsr #20
	mov r2, r0, asr #0xc
	mov r0, r1, asr #0xc
	str r2, [r5]
_02148890:
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0214889C: .word unk_0209A7FC
	arm_func_end FUN_ov132_021487d4

	arm_func_start FUN_ov132_021488a0
FUN_ov132_021488a0: ; 0x021488A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r3
	mov r5, r1
	mov r1, r4
	mov r2, r6
	bl FUN_01ffba50
	ldr r1, [sp, #0x10]
	cmp r0, r1
	ble _021488E0
	cmp r5, #0
	movne r0, #0x80000000
	strne r0, [r5]
	strne r0, [r5, #4]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021488E0:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	ldmia r6, {r2, r3}
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	cmp r5, #0
	beq _0214896C
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r2, _02148974 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldr r12, [sp, #0x10]
	ldrsh r0, [r2, r0]
	smull r1, r2, r12, r1
	adds r3, r1, #0x800
	smull r1, r0, r12, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	ldr r12, [r4, #4]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r2, [r4]
	add r3, r12, r3
	add r2, r2, r1
	mov r0, r5
	add r1, r5, #4
	stmia r5, {r2, r3}
	bl FUN_020406a4
_0214896C:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02148974: .word FX_SinCosTable_
	arm_func_end FUN_ov132_021488a0

	arm_func_start FUN_ov132_02148978
FUN_ov132_02148978: ; 0x02148978
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r2
	movs r5, r1
	cmpne r4, #0
	mov r7, r0
	mov r6, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov132_02148398
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov132_02159df0
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	beq _02148AB8
	cmp r6, #1
	beq _02148A0C
	cmp r6, #2
	bne _02148AB8
	ldr r0, [r5]
	add sp, sp, #8
	rsb r0, r0, #0x64
	str r0, [r5]
	ldr r0, [r4]
	rsb r0, r0, #0x64
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148A0C:
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02148A30
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02148A3C
_02148A30:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02148A3C:
	bl _ffix
	str r0, [sp, #4]
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02148A68
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02148A74
_02148A68:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02148A74:
	bl _ffix
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_ov16_020f025c
	ldr r1, [sp, #4]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	str r0, [r5]
	ldr r1, [sp]
	add sp, sp, #8
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02148AB8:
	ldr r0, [r5]
	rsb r0, r0, #0
	str r0, [r5]
	ldr r0, [r4]
	rsb r0, r0, #0
	str r0, [r4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_02148978

	arm_func_start FUN_ov132_02148ad8
FUN_ov132_02148ad8: ; 0x02148AD8
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, #0
	str r4, [r6, #0x37c]
	streq r4, [r6, #0x380]
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov16_020f0a94
	cmp r0, #0
	subeq r0, r4, #0x20
	streq r0, [r6, #0x380]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #1
	moveq r0, #0x20
	streq r0, [r6, #0x380]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #2
	streq r4, [r6, #0x380]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02148ad8

	arm_func_start FUN_ov132_02148b24
FUN_ov132_02148b24: ; 0x02148B24
	stmfd sp!, {r4, lr}
	ldr r1, _02148B98 ; =0x0209A2C0
	ldr r12, _02148B9C ; =0x0209A12C
	ldmia r1, {r4, lr}
	mov r1, r4, asr #0xb
	mov r2, lr, asr #0xb
	ldr r3, _02148BA0 ; =0x0209A140
	add r1, r4, r1, lsr #20
	ldr r12, [r12]
	add r2, lr, r2, lsr #20
	cmp r12, r1, asr #12
	mov r4, r1, asr #0xc
	addle r1, r12, #0x100
	mov lr, r2, asr #0xc
	ldr r3, [r3]
	cmple r4, r1
	ldmgefd sp!, {r4, pc}
	cmp lr, r3
	ldmltfd sp!, {r4, pc}
	add r1, r3, #0xc0
	cmp lr, r1
	ldmgefd sp!, {r4, pc}
	sub r2, r4, r12
	sub r1, lr, r3
	rsb r2, r2, #0x80
	rsb r1, r1, #0x60
	str r2, [r0, #0x37c]
	str r1, [r0, #0x380]
	ldmfd sp!, {r4, pc}
_02148B98: .word unk_0209A2C0
_02148B9C: .word unk_0209A12C
_02148BA0: .word unk_0209A140
	arm_func_end FUN_ov132_02148b24

	arm_func_start FUN_ov132_02148ba4
FUN_ov132_02148ba4: ; 0x02148BA4
	str r1, [r0, #0x378]
	bx lr
	arm_func_end FUN_ov132_02148ba4

	arm_func_start FUN_ov132_02148bac
FUN_ov132_02148bac: ; 0x02148BAC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _02148D4C ; =0x02099EF0
	mov r8, r0
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _02148C10
	ldr r0, [r4]
	mov r1, #1
	bl FUN_ov132_02143114
	cmp r0, #0
	beq _02148C10
	ldr r2, [r0, #4]
	ldr r3, [r0]
	mov r1, r2, asr #0xb
	mov r0, r3, asr #0xb
	add r0, r3, r0, lsr #20
	add r1, r2, r1, lsr #20
	mov r3, r0, asr #0xc
	mov r2, r1, asr #0xc
	mov r0, r8
	sub r1, r3, #0x80
	sub r2, r2, #0x60
	bl FUN_ov132_02148d74
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02148C10:
	ldr r0, [r8, #0x378]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _02148D50 ; =0x0209A12C
	ldr r0, _02148D54 ; =0x0209A140
	ldr r4, [r1]
	ldr r5, [r0]
	bl FUN_ov16_020f0a4c
	ldr r1, [r8, #0x384]
	cmp r1, r0
	beq _02148C50
	str r0, [r8, #0x384]
	mov r0, r8
	mov r1, #1
	bl FUN_ov132_02148ad8
_02148C50:
	ldr r1, [r8, #0x388]
	ldr r0, [r8, #0x37c]
	cmp r1, #1
	ldreq r6, [r8, #0x38c]
	ldreq r7, [r8, #0x390]
	ldrne r2, _02148D58 ; =0x0209A2C0
	ldr r1, [r8, #0x380]
	ldmneia r2, {r6, r7}
	mov r2, r6, asr #0xb
	add r2, r6, r2, lsr #20
	mov r3, r7, asr #0xb
	ldr r6, [r8, #0x378]
	add r3, r7, r3, lsr #20
	add r2, r0, r2, asr #12
	add r0, r1, r3, asr #12
	cmp r6, #2
	sub r6, r2, #0x80
	sub r7, r0, #0x60
	bne _02148D28
	ldr r1, [r8, #0x394]
	cmp r1, #0
	beq _02148D28
	cmp r6, r4
	bge _02148CC4
	sub r2, r1, #1
	sub r0, r4, r6
	add r0, r2, r0
	bl _s32_div_f
	sub r4, r4, r0
_02148CC4:
	cmp r6, r4
	ble _02148CE4
	ldr r1, [r8, #0x394]
	sub r0, r6, r4
	sub r2, r1, #1
	add r0, r2, r0
	bl _s32_div_f
	add r4, r4, r0
_02148CE4:
	cmp r7, r5
	bge _02148D04
	ldr r1, [r8, #0x394]
	sub r0, r5, r7
	sub r2, r1, #1
	add r0, r2, r0
	bl _s32_div_f
	sub r5, r5, r0
_02148D04:
	cmp r7, r5
	ble _02148D38
	ldr r1, [r8, #0x394]
	sub r0, r7, r5
	sub r2, r1, #1
	add r0, r2, r0
	bl _s32_div_f
	add r5, r5, r0
	b _02148D38
_02148D28:
	mov r0, #8
	mov r4, r6
	mov r5, r7
	str r0, [r8, #0x394]
_02148D38:
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_ov132_02148d74
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02148D4C: .word unk_02099EF0
_02148D50: .word unk_0209A12C
_02148D54: .word unk_0209A140
_02148D58: .word unk_0209A2C0
	arm_func_end FUN_ov132_02148bac

	arm_func_start FUN_ov132_02148d5c
FUN_ov132_02148d5c: ; 0x02148D5C
	ldr r12, [sp]
	str r1, [r0, #0x388]
	str r2, [r0, #0x394]
	str r3, [r0, #0x38c]
	str r12, [r0, #0x390]
	bx lr
	arm_func_end FUN_ov132_02148d5c

	arm_func_start FUN_ov132_02148d74
FUN_ov132_02148d74: ; 0x02148D74
	ldr r0, _02148E50 ; =0x0209A12C
	ldr r3, _02148E54 ; =0x0209A720
	ldr r0, [r0]
	cmp r1, r0
	beq _02148DC8
	ldrsh r12, [r3, #0xbc]
	ldrsh r0, [r3, #0xac]
	add r0, r12, r0
	sub r0, r0, #0xf0
	cmp r1, r0
	movgt r1, r0
	ldrsh r0, [r3, #0xa8]
	sub r0, r0, #0x100
	cmp r1, r0
	movgt r1, r0
	ldrsh r0, [r3, #0xbc]
	sub r0, r0, #0x10
	cmp r1, r0
	movlt r1, r0
	cmp r1, #0
	movlt r1, #0
_02148DC8:
	ldr r0, _02148E58 ; =0x0209A140
	ldr r0, [r0]
	cmp r2, r0
	beq _02148E18
	ldrsh r0, [r3, #0xbe]
	ldrsh r12, [r3, #0xbe]
	sub r0, r0, #0x1a
	cmp r2, r0
	movlt r2, r0
	ldrsh r0, [r3, #0xae]
	cmp r2, #0
	movlt r2, #0
	add r0, r12, r0
	sub r0, r0, #0xa6
	cmp r2, r0
	movgt r2, r0
	ldrsh r0, [r3, #0xaa]
	sub r0, r0, #0xc0
	cmp r2, r0
	movgt r2, r0
_02148E18:
	ldr r0, _02148E50 ; =0x0209A12C
	ldr r0, [r0]
	cmp r0, r1
	ldreq r0, _02148E58 ; =0x0209A140
	ldreq r0, [r0]
	cmpeq r0, r2
	moveq r0, #0
	bxeq lr
	ldr r3, _02148E50 ; =0x0209A12C
	ldr r0, _02148E58 ; =0x0209A140
	str r1, [r3]
	str r2, [r0]
	mov r0, #1
	bx lr
_02148E50: .word unk_0209A12C
_02148E54: .word unk_0209A720
_02148E58: .word unk_0209A140
	arm_func_end FUN_ov132_02148d74

	arm_func_start FUN_ov132_02148e5c
FUN_ov132_02148e5c: ; 0x02148E5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r8, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	movs r10, r1
	mov r5, r3
	cmpne r5, #0
	mov r9, r2
	mov r11, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10]
	ldr r0, [r10, #4]
	ldmia r5, {r2, r3}
	sub r2, r2, r1
	sub r0, r3, r0
	smull r1, r3, r2, r2
	adds r4, r1, #0x800
	smull r2, r1, r0, r0
	adc r3, r3, r11
	adds r2, r2, #0x800
	adc r0, r1, r11
	mov r1, r2, lsr #0xc
	mov r4, r4, lsr #0xc
	orr r1, r1, r0, lsl #20
	orr r4, r4, r3, lsl #20
	mov r0, r1, asr #4
	add r0, r0, r4, asr #4
	bl FX_Sqrt
	mov r4, r0, lsl #2
	ldmia r5, {r2, r6}
	ldmia r10, {r1, r3}
	sub r0, r6, r3
	sub r1, r2, r1
	bl FX_Atan2Idx
	smull r2, r1, r4, r4
	adds r2, r2, #0x800
	mov r6, r0
	adc r1, r1, r11
	mov r3, r2, lsr #0xc
	mov r0, r4, lsl #1
	orr r3, r3, r1, lsl #20
	smull r2, r1, r0, r9
	smull r0, r12, r9, r9
	adds r0, r0, #0x800
	adc r12, r12, r11
	mov r0, r0, lsr #0xc
	orr r0, r0, r12, lsl #20
	add r3, r3, r0
	smull r0, r12, r8, r8
	adds r0, r0, #0x800
	adc r12, r12, r11
	mov r0, r0, lsr #0xc
	orr r0, r0, r12, lsl #20
	sub r0, r3, r0
	adds r3, r2, #0x800
	adc r2, r1, r11
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	mov r5, r9, asr #0x1f
	bl FX_Div
	bl FX_AsinIdx
	add r1, r9, r8
	cmp r4, r1
	beq _02149040
	cmp r4, r1
	mov r1, r11
	bge _02148F9C
	subs r2, r9, r8
	rsbmi r2, r2, #0
	cmp r4, r2
	ble _02148F9C
	ldrb r1, [sp, #0x30]
	cmp r1, #0
	addeq r1, r6, #0xff
	addne r0, r6, r0
	addeq r1, r1, #0xff00
	subeq r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	b _02149040
_02148F9C:
	cmp r4, r8
	bge _02149038
	cmp r7, #0
	beq _02149030
	add r0, r6, #0x8000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	ldr r2, _021490CC ; =FX_SinCosTable_
	mov r0, r0, lsl #1
	ldrsh r6, [r2, r0]
	mov r0, r3, lsl #1
	ldrsh r2, [r2, r0]
	umull r3, r8, r9, r6
	mov r0, r6, asr #0x1f
	mla r8, r9, r0, r8
	adds r11, r3, #0x800
	mla r8, r5, r6, r8
	mov r0, r2, asr #0x1f
	umull r4, r3, r9, r2
	mla r3, r9, r0, r3
	mla r3, r5, r2, r3
	adc r0, r8, r1
	mov r6, r11, lsr #0xc
	ldr r2, [r10]
	orr r6, r6, r0, lsl #20
	add r5, r2, r6
	adds r4, r4, #0x800
	adc r0, r3, r1
	mov r1, r4, lsr #0xc
	ldr r2, [r10, #4]
	orr r1, r1, r0, lsl #20
	str r5, [r7]
	add r0, r2, r1
	str r0, [r7, #4]
_02149030:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02149038:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02149040:
	cmp r7, #0
	mov r0, #0
	beq _021490C4
	mov r1, r6, asr #4
	mov r3, r1, lsl #1
	add r1, r3, #1
	ldr r2, _021490CC ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r6, [r2, r1]
	mov r1, r3, lsl #1
	ldrsh r2, [r2, r1]
	umull r3, r8, r9, r6
	mov r1, r6, asr #0x1f
	mla r8, r9, r1, r8
	adds r11, r3, #0x800
	mla r8, r5, r6, r8
	adc r6, r8, r0
	mov r8, r11, lsr #0xc
	mov r1, r2, asr #0x1f
	umull r4, r3, r9, r2
	mla r3, r9, r1, r3
	mla r3, r5, r2, r3
	adds r1, r4, #0x800
	ldr r2, [r10]
	orr r8, r8, r6, lsl #20
	add r4, r2, r8
	adc r0, r3, r0
	mov r1, r1, lsr #0xc
	ldr r2, [r10, #4]
	orr r1, r1, r0, lsl #20
	str r4, [r7]
	add r0, r2, r1
	str r0, [r7, #4]
_021490C4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021490CC: .word FX_SinCosTable_
	arm_func_end FUN_ov132_02148e5c

	arm_func_start FUN_ov132_021490d0
FUN_ov132_021490d0: ; 0x021490D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [r1]
	ldr r3, [r1, #8]
	ldr r4, [r1, #4]
	ldmia r2, {r0, r2}
	sub r3, r5, r3
	sub r2, r2, r4
	smull r2, r12, r3, r2
	ldr r1, [r1, #0xc]
	adds lr, r2, #0x800
	sub r1, r4, r1
	sub r0, r5, r0
	smull r2, r0, r1, r0
	adc r3, r12, #0
	adds r1, r2, #0x800
	mov r2, lr, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r2, r2, r3, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_021490d0

	arm_func_start FUN_ov132_02149128
FUN_ov132_02149128: ; 0x02149128
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _021491A8 ; =0x0209BA20
	bl FUN_0207249c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r4, #0
	ldrneh r2, [r0, #0x44]
	ldr r1, _021491AC ; =0x0000FFFF
	ldreqh r2, [r0, #0x46]
	cmp r2, r1
	blo _02149194
	mov r1, #1
	cmp r4, #0
	movne r1, #0
	cmp r1, #0
	ldrneh r2, [r0, #0x44]
	ldreqh r2, [r0, #0x46]
	cmp r2, #1
	ldmlsfd sp!, {r4, pc}
	cmp r1, #0
	sub r1, r2, #1
	strneh r1, [r0, #0x44]
	streqh r1, [r0, #0x46]
	ldmfd sp!, {r4, pc}
_02149194:
	add r1, r2, #1
	cmp r4, #0
	strneh r1, [r0, #0x44]
	streqh r1, [r0, #0x46]
	ldmfd sp!, {r4, pc}
_021491A8: .word unk_0209BA20
_021491AC: .word 0x0000FFFF
	arm_func_end FUN_ov132_02149128

	arm_func_start FUN_ov132_021491b0
FUN_ov132_021491b0: ; 0x021491B0
	mov r1, #0
	strb r1, [r0, #0x4d4]
	bx lr
	arm_func_end FUN_ov132_021491b0

	arm_func_start FUN_ov132_021491bc
FUN_ov132_021491bc: ; 0x021491BC
	strb r1, [r0, #0x4d4]
	bx lr
	arm_func_end FUN_ov132_021491bc

	arm_func_start FUN_ov132_021491c4
FUN_ov132_021491c4: ; 0x021491C4
	ldrb r0, [r0, #0x4d4]
	bx lr
	arm_func_end FUN_ov132_021491c4

	arm_func_start FUN_ov132_021491cc
FUN_ov132_021491cc: ; 0x021491CC
	str r1, [r0, #0x4dc]
	bx lr
	arm_func_end FUN_ov132_021491cc

	arm_func_start FUN_ov132_021491d4
FUN_ov132_021491d4: ; 0x021491D4
	ldr r0, [r0, #0x4dc]
	bx lr
	arm_func_end FUN_ov132_021491d4

	arm_func_start FUN_ov132_021491dc
FUN_ov132_021491dc: ; 0x021491DC
	mov r2, #0x1e
	mul r2, r1, r2
	ldr r1, _021491F8 ; =0x0209C120
	ldrh r1, [r1, #0xc0]
	mul r1, r2, r1
	str r1, [r0, #0x4e0]
	bx lr
_021491F8: .word unk_0209C120
	arm_func_end FUN_ov132_021491dc

	arm_func_start FUN_ov132_021491fc
FUN_ov132_021491fc: ; 0x021491FC
	mvn r2, #0
	mov r1, #0x1000
	str r2, [r0, #0x4e0]
	str r1, [r0, #0x4dc]
	bx lr
	arm_func_end FUN_ov132_021491fc

	arm_func_start FUN_ov132_02149210
FUN_ov132_02149210: ; 0x02149210
	ldr r1, _02149234 ; =0x0209C120
	ldr r2, [r0, #0x4e0]
	ldrh r1, [r1, #0xc0]
	cmp r2, #0
	subge r1, r2, r1
	strge r1, [r0, #0x4e0]
	movge r0, #0
	movlt r0, #1
	bx lr
_02149234: .word unk_0209C120
	arm_func_end FUN_ov132_02149210

	arm_func_start FUN_ov132_02149238
FUN_ov132_02149238: ; 0x02149238
	stmfd sp!, {r4, lr}
	mov r4, r0
	mvn r1, #0
	bl FUN_ov132_02149258
	mov r0, r4
	mov r1, #0
	bl FUN_ov132_02149268
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_02149238

	arm_func_start FUN_ov132_02149258
FUN_ov132_02149258: ; 0x02149258
	str r1, [r0, #0x4e4]
	bx lr
	arm_func_end FUN_ov132_02149258

	arm_func_start FUN_ov132_02149260
FUN_ov132_02149260: ; 0x02149260
	ldr r0, [r0, #0x4e4]
	bx lr
	arm_func_end FUN_ov132_02149260

	arm_func_start FUN_ov132_02149268
FUN_ov132_02149268: ; 0x02149268
	str r1, [r0, #0x4e8]
	bx lr
	arm_func_end FUN_ov132_02149268

	arm_func_start FUN_ov132_02149270
FUN_ov132_02149270: ; 0x02149270
	ldr r0, [r0, #0x4e8]
	bx lr
	arm_func_end FUN_ov132_02149270

	arm_func_start FUN_ov132_02149278
FUN_ov132_02149278: ; 0x02149278
	mov r3, #0
	mvn r2, #0
_02149280:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x4ec]
	cmp r3, #0xa
	blt _02149280
	mov r1, #0
	str r1, [r0, #0x514]
	str r1, [r0, #0x518]
	bx lr
	arm_func_end FUN_ov132_02149278

	arm_func_start FUN_ov132_021492a4
FUN_ov132_021492a4: ; 0x021492A4
	add r0, r0, #0xec
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_ov132_021492a4

	arm_func_start FUN_ov132_021492b0
FUN_ov132_021492b0: ; 0x021492B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x88
	mov r1, #0
	mov r10, r0
	str r1, [sp, #0x28]
	bl FUN_ov132_02149278
	mov r0, r10
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	str r0, [sp, #0x24]
	bl FUN_ov16_020efa80
	ldr r1, [r0, #0x84]
	str r0, [sp, #0x20]
	ldr r0, _021496D8 ; =0x0209A2C0
	ldmia r1, {r2, r3}
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	mov r4, #1
	str r1, [sp]
	stmib sp, {r0, r4}
	ldr r1, [sp, #0x20]
	mov r0, r10
	bl FUN_ov132_02147328
	mov r0, #8
	mov r0, r0, lsl #5
	orr r0, r0, #0x1f
	mov r2, #6
	orr r0, r0, r2, lsl #10
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldr r0, _021496DC ; =0x0209A114
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r3, #0x14
	bl FUN_ov1_020de1ac
	ldr r0, _021496E0 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021492a4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	b _02149684
_02149358:
	ldr r1, [sp, #0x18]
	mov r2, #0
	mov r0, r10
	str r2, [sp, #0x14]
	bl FUN_ov126_0213922c
	movs r4, r0
	ldrnesh r0, [r4, #0x94]
	ldrne r1, [sp, #0x24]
	strne r0, [sp, #0x2c]
	cmpne r1, r0
	beq _0214967C
	ldr r0, [sp, #0x20]
	bl FUN_0206d5f0
	mov r5, r0
	mov r0, r4
	bl FUN_0206d5f0
	cmp r5, r0
	bne _0214967C
	mov r0, r4
	bl FUN_0206da14
	cmp r0, #0
	beq _0214967C
	ldr r5, [sp, #0x14]
	b _02149544
_021493B8:
	mov r0, r4
	bl FUN_0206dcd4
	add r0, r0, r5, lsl #1
	ldrh r6, [r0, #0x38]
	ldr r2, [sp, #0x20]
	mov r0, r10
	mov r3, r6, lsl #0x10
	mov r1, r4
	mov r3, r3, asr #0x10
	bl FUN_ov132_02149bd4
	cmp r0, #0
	beq _02149540
	ldr r0, _021496E4 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204a2c4
	mov r6, r0
	ldrb r0, [r6, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02149540
	mov r0, r4
	bl FUN_0206cc84
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_0204b114
	cmp r7, r0
	blt _02149540
	ldrb r0, [r6, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _021494A0
	ldr r1, [r4, #0x84]
	mov r0, r10
	ldmia r1, {r2, r3}
	mov r1, r4
	bl FUN_ov132_02140a44
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _021494A0
	ldrb r0, [r6]
	mov r1, #0
	cmp r0, #7
	bne _0214948C
	ldrb r0, [r6, #0x13]
	tst r0, #1
	movne r1, #1
_0214948C:
	mov r0, #1
	cmp r1, #0
	moveq r0, #0
	cmp r0, #0
	beq _02149540
_021494A0:
	ldrb r0, [r6, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _02149534
	mov r0, r10
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xd]
	bl FUN_ov16_020efa80
	ldr r1, [r0, #0x84]
	ldr r0, [sp, #0x20]
	ldmia r1, {r6, r11}
	ldr r0, [r0, #0x84]
	ldr r1, [r4, #0x84]
	ldr r7, [r0]
	mov r0, r4
	ldmia r1, {r8, r9}
	bl FUN_ov16_020f07d0
	cmp r0, #1
	bne _02149500
	cmp r9, r11
	bgt _02149540
	b _02149510
_02149500:
	cmp r0, #0
	bne _02149510
	cmp r9, r11
	blt _02149540
_02149510:
	cmp r7, r6
	bge _02149524
	add r0, r6, #0x32000
	cmp r0, r8
	blt _02149540
_02149524:
	cmp r7, r6
	subgt r0, r6, #0x32000
	cmpgt r0, r8
	bgt _02149540
_02149534:
	mov r0, #1
	str r0, [sp, #0x14]
	b _0214954C
_02149540:
	add r5, r5, #1
_02149544:
	cmp r5, #6
	blt _021493B8
_0214954C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0214967C
	ldr r0, [r4, #0x84]
	mov r1, #0xa
	ldmia r0, {r2, r3}
	str r1, [sp]
	ldr r5, _021496DC ; =0x0209A114
	mov r1, #1
	ldr r0, [r5]
	bl FUN_ov1_020de240
	cmp r0, #0
	blt _0214967C
	mov r0, r10
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	ldr r2, [r0, #0x84]
	ldr r0, _021496D8 ; =0x0209A2C0
	ldmia r2, {r1, r7}
	ldr r2, [r0, #0x18]
	ldr r6, [r0, #0x1c]
	sub r0, r2, r1
	add r0, r0, r0, lsr #31
	ldr r4, [r4, #0x84]
	sub r1, r1, r0, asr #1
	add r3, r2, r0, asr #1
	sub r0, r6, r7
	add r0, r0, r0, lsr #31
	sub r2, r7, r0, asr #1
	add r7, r6, r0, asr #1
	ldr r6, [r4]
	ldr r4, [r4, #4]
	add r0, sp, #0x34
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x30
	str r0, [sp, #0x10]
	ldr r0, [r5]
	bl FUN_ov1_020de5dc
	mov r1, #0
	mov r4, r1
	add r3, sp, #0x38
	b _0214961C
_02149604:
	add r2, r3, r4, lsl #3
	ldr r2, [r2, #4]
	cmp r2, r0
	bgt _02149628
	add r1, r1, #1
	add r4, r4, #1
_0214961C:
	ldr r2, [sp, #0x28]
	cmp r4, r2
	blt _02149604
_02149628:
	mov r5, #9
	add r4, sp, #0x38
	b _02149654
_02149634:
	sub r2, r5, #1
	ldr r3, [r4, r2, lsl #3]
	add r2, r4, r2, lsl #3
	str r3, [r4, r5, lsl #3]
	ldr r3, [r2, #4]
	add r2, r4, r5, lsl #3
	str r3, [r2, #4]
	sub r5, r5, #1
_02149654:
	cmp r5, r1
	bgt _02149634
	ldr r2, [sp, #0x28]
	add r3, sp, #0x38
	add r2, r2, #1
	str r2, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	str r2, [r3, r1, lsl #3]
	add r1, r3, r1, lsl #3
	str r0, [r1, #4]
_0214967C:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
_02149684:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x18]
	cmp r0, #0x16
	blt _02149358
	mov r3, #0
	add r2, sp, #0x38
	b _021496B0
_021496A0:
	ldr r1, [r2, r3, lsl #3]
	ldr r0, [sp, #0x1c]
	str r1, [r0, r3, lsl #2]
	add r3, r3, #1
_021496B0:
	ldr r0, [sp, #0x28]
	cmp r3, r0
	blt _021496A0
	mov r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [r0, #0x28]
	mov r1, #0
	str r1, [r0, #0x2c]
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021496D8: .word unk_0209A2C0
_021496DC: .word unk_0209A114
_021496E0: .word unk_02099EF0
_021496E4: .word unk_0209BA20
	arm_func_end FUN_ov132_021492b0

	arm_func_start FUN_ov132_021496e8
FUN_ov132_021496e8: ; 0x021496E8
	mov r3, #0
	mvn r2, #0
_021496F0:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x51c]
	cmp r3, #0xa
	blt _021496F0
	mov r1, #0
	str r1, [r0, #0x544]
	str r1, [r0, #0x548]
	bx lr
	arm_func_end FUN_ov132_021496e8

	arm_func_start FUN_ov132_02149714
FUN_ov132_02149714: ; 0x02149714
	add r0, r0, #0x11c
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_ov132_02149714

	arm_func_start FUN_ov132_02149720
FUN_ov132_02149720: ; 0x02149720
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	mov r1, #0
	mov r11, r0
	str r1, [sp, #0x24]
	bl FUN_ov132_021496e8
	mov r0, r11
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	ldr r1, [r0, #0x84]
	str r0, [sp, #0x20]
	ldr r0, _02149AFC ; =0x0209A2C0
	ldmia r1, {r2, r3}
	ldr r4, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	mov r0, r11
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x24]
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	bl FUN_ov132_02147328
	mov r0, #8
	mov r0, r0, lsl #5
	orr r0, r0, #0x1f
	mov r1, #6
	orr r0, r0, r1, lsl #10
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, #1
	str r0, [sp]
	ldr r0, _02149B00 ; =0x0209A114
	ldr r1, [sp, #0x24]
	ldr r0, [r0]
	mov r3, #0x14
	bl FUN_ov1_020de1ac
	ldr r0, _02149B04 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02149714
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	b _02149AA8
_021497CC:
	ldr r1, [sp, #0x18]
	mov r2, #0
	mov r0, r11
	str r2, [sp, #0x14]
	bl FUN_ov126_0213922c
	movs r4, r0
	beq _02149AA0
	ldrsh r1, [r4, #0x94]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x28]
	bl FUN_0206d5f0
	mov r5, r0
	mov r0, r4
	bl FUN_0206d5f0
	cmp r5, r0
	beq _02149AA0
	mov r0, r4
	bl FUN_0206da14
	cmp r0, #0
	beq _02149AA0
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #1
	bne _02149840
	mov r0, r11
	mov r1, r4
	bl FUN_ov126_02138ec0
	cmp r0, #1
	beq _02149AA0
_02149840:
	mov r5, #0
	b _02149964
_02149848:
	mov r0, r4
	bl FUN_0206dcd4
	add r0, r0, r5, lsl #1
	ldrh r6, [r0, #0x38]
	ldr r2, [sp, #0x20]
	mov r0, r11
	mov r3, r6, lsl #0x10
	mov r1, r4
	mov r3, r3, asr #0x10
	bl FUN_ov132_02149bd4
	cmp r0, #0
	beq _02149960
	ldr r0, _02149B08 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204a2c4
	mov r7, r0
	ldrb r0, [r7, #0x13]
	tst r0, #6
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02149960
	mov r0, r4
	bl FUN_0206cc84
	mov r6, r0
	mov r0, r7
	mov r1, r4
	bl FUN_0204b114
	cmp r6, r0
	blt _02149960
	ldrb r0, [r7, #0x13]
	tst r0, #6
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _02149954
	mov r0, r11
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xd]
	bl FUN_ov16_020efa80
	ldr r1, [r0, #0x84]
	ldr r0, [sp, #0x20]
	ldmia r1, {r6, r7}
	ldr r0, [r0, #0x84]
	ldr r1, [r4, #0x84]
	ldr r8, [r0]
	mov r0, r4
	ldmia r1, {r9, r10}
	bl FUN_ov16_020f07d0
	cmp r0, #1
	bne _02149920
	cmp r10, r7
	blt _02149960
	b _02149930
_02149920:
	cmp r0, #0
	bne _02149930
	cmp r10, r7
	bgt _02149960
_02149930:
	cmp r8, r6
	bge _02149944
	add r0, r6, #0x32000
	cmp r0, r9
	blt _02149960
_02149944:
	cmp r8, r6
	subgt r0, r6, #0x32000
	cmpgt r0, r9
	bgt _02149960
_02149954:
	mov r0, #1
	str r0, [sp, #0x14]
	b _0214996C
_02149960:
	add r5, r5, #1
_02149964:
	cmp r5, #6
	blt _02149848
_0214996C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02149AA0
	ldr r0, [r4, #0x84]
	mov r6, #0
	ldmia r0, {r2, r3}
	mov r0, #0xa
	ldr r5, _02149B00 ; =0x0209A114
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov1_020de240
	cmp r0, #0
	blt _02149AA0
	mov r0, r11
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	ldr r1, _02149AFC ; =0x0209A2C0
	ldr r0, [r0, #0x84]
	ldr r8, [r4, #0x84]
	ldr r4, [r0]
	ldr r3, [r1, #0x18]
	ldr r7, [r1, #0x1c]
	sub r1, r3, r4
	add r2, r1, r1, lsr #31
	ldr r0, [r0, #4]
	sub r1, r4, r2, asr #1
	add r3, r3, r2, asr #1
	sub r2, r7, r0
	add r4, r2, r2, lsr #31
	sub r2, r0, r4, asr #1
	add r9, r7, r4, asr #1
	ldr r7, [r8]
	ldr r4, [r8, #4]
	add r0, sp, #0x30
	str r9, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x2c
	str r0, [sp, #0x10]
	ldr r0, [r5]
	bl FUN_ov1_020de5dc
	mov r3, r6
	add r2, sp, #0x34
	b _02149A40
_02149A28:
	add r1, r2, r3, lsl #3
	ldr r1, [r1, #4]
	cmp r1, r0
	bgt _02149A4C
	add r6, r6, #1
	add r3, r3, #1
_02149A40:
	ldr r1, [sp, #0x24]
	cmp r3, r1
	blt _02149A28
_02149A4C:
	mov r4, #9
	add r3, sp, #0x34
	b _02149A78
_02149A58:
	sub r1, r4, #1
	ldr r2, [r3, r1, lsl #3]
	add r1, r3, r1, lsl #3
	str r2, [r3, r4, lsl #3]
	ldr r2, [r1, #4]
	add r1, r3, r4, lsl #3
	str r2, [r1, #4]
	sub r4, r4, #1
_02149A78:
	cmp r4, r6
	bgt _02149A58
	ldr r1, [sp, #0x24]
	add r2, sp, #0x34
	add r1, r1, #1
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r1, [r2, r6, lsl #3]
	add r1, r2, r6, lsl #3
	str r0, [r1, #4]
_02149AA0:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
_02149AA8:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x18]
	cmp r0, #0x16
	blt _021497CC
	mov r3, #0
	add r2, sp, #0x34
	b _02149AD4
_02149AC4:
	ldr r1, [r2, r3, lsl #3]
	ldr r0, [sp, #0x1c]
	str r1, [r0, r3, lsl #2]
	add r3, r3, #1
_02149AD4:
	ldr r0, [sp, #0x24]
	cmp r3, r0
	blt _02149AC4
	mov r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [r0, #0x28]
	mov r1, #0
	str r1, [r0, #0x2c]
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02149AFC: .word unk_0209A2C0
_02149B00: .word unk_0209A114
_02149B04: .word unk_02099EF0
_02149B08: .word unk_0209BA20
	arm_func_end FUN_ov132_02149720

	arm_func_start FUN_ov132_02149b0c
FUN_ov132_02149b0c: ; 0x02149B0C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	add r4, r6, #0xa4
_02149B1C:
	add r0, r4, r5, lsl #3
	bl FUN_020404cc
	add r5, r5, #1
	cmp r5, #2
	blt _02149B1C
	mov r4, #0
_02149B34:
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02144808
	cmp r0, #0
	beq _02149B4C
	bl FUN_020404cc
_02149B4C:
	add r4, r4, #1
	cmp r4, #5
	blt _02149B34
	mov r0, r6
	bl FUN_ov126_0212d6b0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02149b0c

	arm_func_start FUN_ov132_02149b64
FUN_ov132_02149b64: ; 0x02149B64
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_02040b4c
	cmp r0, #1
	bne _02149B90
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02144720
_02149B90:
	ldr r0, _02149BD0 ; =0x0209A2C0
	mov r2, #0xb
	ldmia r0, {r1, r3}
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	add r0, sp, #0xc
	str r0, [sp]
	mov r12, #0
	str r12, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0xc
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02149BD0: .word unk_0209A2C0
	arm_func_end FUN_ov132_02149b64

	arm_func_start FUN_ov132_02149bd4
FUN_ov132_02149bd4: ; 0x02149BD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r0, _02149C7C ; =0x02099EF0
	mov r4, r1
	ldr r0, [r0]
	mov r8, r2
	mov r7, r3
	bl FUN_ov126_021375d4
	mov r6, r0
	mov r0, r4
	bl FUN_0206d5f0
	mov r5, r0
	mov r0, r8
	bl FUN_0206d5f0
	cmp r5, r0
	ldreqsb r0, [r6, #0xd]
	ldrnesb r0, [r6, #0xc]
	bl FUN_ov16_020efa80
	mov r6, r0
	mov r0, r4
	bl FUN_0206d5f0
	ldr r5, _02149C7C ; =0x02099EF0
	mov r1, r0
	ldr r0, [r5]
	bl FUN_ov132_02145190
	mov r1, r4
	mov r4, #2
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r7
	bl FUN_ov126_021300d8
	cmp r0, #1
	moveq r4, #1
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02149C7C: .word unk_02099EF0
	arm_func_end FUN_ov132_02149bd4

	arm_func_start FUN_ov132_02149c80
FUN_ov132_02149c80: ; 0x02149C80
	strb r1, [r0, #0x5b1]
	bx lr
	arm_func_end FUN_ov132_02149c80

	arm_func_start FUN_ov132_02149c88
FUN_ov132_02149c88: ; 0x02149C88
	ldrb r0, [r0, #0x5b1]
	bx lr
	arm_func_end FUN_ov132_02149c88

	arm_func_start FUN_ov132_02149c90
FUN_ov132_02149c90: ; 0x02149C90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r0, [sp, #0x3c]
	mov r4, r3
	mov r9, r1
	mov r8, r2
	ldr r7, [sp, #0x38]
	bl FUN_ov16_020efa80
	mov r6, r0
	cmp r4, #0
	beq _02149CD0
	mov r0, r4
	bl FUN_0206d9f8
	cmp r0, #0
	beq _02149CF4
_02149CD0:
	cmp r7, #0
	beq _02149CE8
	mov r0, r7
	bl FUN_0206d9f8
	cmp r0, #0
	beq _02149CF4
_02149CE8:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02149CF4:
	cmp r4, #0
	beq _02149D0C
	mov r0, r4
	bl FUN_0206d9f8
	cmp r0, #0
	beq _02149D18
_02149D0C:
	str r7, [r9]
	str r4, [r8]
	b _02149EAC
_02149D18:
	cmp r7, #0
	beq _02149D30
	mov r0, r7
	bl FUN_0206d9f8
	cmp r0, #0
	beq _02149D3C
_02149D30:
	str r4, [r9]
	str r7, [r8]
	b _02149EAC
_02149D3C:
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _02149D74
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	strne r4, [r9]
	strne r7, [r8]
	bne _02149EAC
_02149D74:
	mov r0, r7
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _02149DAC
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	strne r7, [r9]
	strne r4, [r8]
	bne _02149EAC
_02149DAC:
	mov r0, r4
	bl FUN_0206dc98
	mov r5, r0
	mov r0, r7
	bl FUN_0206dc98
	cmp r5, r0
	strgt r4, [r9]
	strgt r7, [r8]
	bgt _02149EAC
	mov r0, r7
	bl FUN_0206dc98
	mov r5, r0
	mov r0, r4
	bl FUN_0206dc98
	cmp r5, r0
	strgt r7, [r9]
	strgt r4, [r8]
	bgt _02149EAC
	mov r0, r10
	bl FUN_ov126_021323b4
	mov r5, r0
	mov r0, r4
	mov r1, r6
	bl FUN_ov16_020f0728
	mov r11, #0
	cmp r0, #0
	str r11, [sp]
	movne r6, r4
	moveq r6, r7
	str r11, [sp, #4]
	str r11, [sp, #8]
	mov r0, r10
	mov r1, r6
	mov r2, r11
	str r11, [sp, #0xc]
	mov r3, #0xb
	moveq r7, r4
	bl FUN_ov132_02141778
	str r11, [sp]
	str r11, [sp, #4]
	mov r4, r0
	str r6, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r2, r11
	mov r3, #0xc
	str r11, [sp, #0xc]
	bl FUN_ov132_02141778
	mov r10, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02132748
	mov r0, r5
	mov r1, r10
	bl FUN_ov126_02132780
	cmp r4, r10
	strgt r6, [r9]
	strgt r7, [r8]
	movgt r0, #1
	strgtb r0, [r5, #0x15]
	strle r7, [r9]
	strle r6, [r8]
	movle r0, #2
	strleb r0, [r5, #0x15]
_02149EAC:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_02149c90

	arm_func_start FUN_ov132_02149eb8
FUN_ov132_02149eb8: ; 0x02149EB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	ldr r4, _0214A268 ; =0x0209A2C0
	movs r6, r3
	ldr r9, [r4, #0x4c]
	mov r5, #0
	mov r7, r0
	subne r0, r5, #1
	strne r0, [r6]
	str r2, [sp]
	mov r3, r1
	add r1, sp, #0x20
	add r2, sp, #0x1c
	mov r0, r7
	mov r11, #1
	str r9, [sp, #4]
	bl FUN_ov132_02149c90
	cmp r0, #0
	addeq sp, sp, #0x84
	moveq r0, #9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	ldrne r0, [sp, #0x20]
	ldr r1, _0214A268 ; =0x0209A2C0
	ldrnesh r0, [r0, #0x94]
	strne r0, [r6]
	ldr r1, [r1, #0x30]
	mov r0, r7
	bl FUN_ov126_0212d5f8
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, [sp, #0x1c]
	cmp r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r4, #0xa
	ldr r1, [sp, #0x20]
	mov r0, r7
	mov r3, #0xd
	moveq r4, #2
	bl FUN_ov132_02141778
	mov r10, r0
	mov r0, r7
	bl FUN_ov126_0213246c
	mov r1, #1
	mov r8, r0
	bl FUN_ov126_021327b8
	cmp r0, #0
	mov r0, r8
	beq _02149F8C
	bl FUN_ov126_02132718
	b _02149F90
_02149F8C:
	bl FUN_ov126_02132730
_02149F90:
	ldr r1, [sp, #0x20]
	mov r8, r0
	mov r0, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02149FF4
	cmp r10, r8
	ble _02149FF4
	mov r5, #1
	str r5, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r0, r7
	ldrsh r1, [r1, #0x94]
	mov r3, r5
	bl FUN_01ff8c44
	ldr r0, [sp, #0x20]
	bl FUN_0206d5f0
	add r2, r7, #0x2e8
	mov r1, r0, lsl #1
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _0214A1A4
_02149FF4:
	ldr r0, [sp, #0x20]
	mov r8, #0
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0214A030
	mov r0, r7
	bl FUN_ov132_021448f4
	cmp r0, #0
	bne _0214A030
	cmp r6, #0
	mvnne r0, #0
	strne r0, [r6]
	add sp, sp, #0x84
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214A030:
	str r11, [sp]
	str r11, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r2, r8
	ldrsh r1, [r0, #0x94]
	mov r0, r7
	mov r3, r11
	bl FUN_01ff8c44
	ldr r1, [sp, #0x20]
	mov r0, r7
	bl FUN_ov132_02144814
	ldr r1, [sp, #0x20]
	mov r6, r0
	ldrsh r0, [r1, #0x94]
	mov r1, r9
	bl FUN_ov16_020f06d8
	cmp r0, #0
	beq _0214A128
	mov r0, #0x64
	bl FUN_ov16_020ef928
	cmp r0, #0x32
	bhs _0214A128
	mov r0, r6
	bl FUN_02040a80
	cmp r0, #0
	bne _0214A128
	add r10, sp, #0x24
	ldr r0, _0214A268 ; =0x0209A2C0
	mov r1, r10
	mov r2, #0x60
	bl MI_CpuCopy8
	mov r0, r7
	bl FUN_ov132_02144780
	stmia sp, {r0, r10}
	ldr r1, [sp, #0x20]
	mov r0, r7
	str r1, [sp, #8]
	mov r3, r8
	ldmia r6, {r1, r2}
	bl FUN_ov126_0212cbdc
	ldrb r1, [sp, #0x7c]
	mov r0, r7
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0214A114
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0214A108
	stmia sp, {r8, r11}
	ldr r1, [sp, #0x1c]
	mov r0, r7
	mov r3, r11
	mov r2, #0x5a
	bl FUN_ov132_0213c29c
_0214A108:
	add sp, sp, #0x84
	mov r0, #5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214A114:
	add r1, sp, #0x14
	mov r0, r6
	mov r2, #8
	bl MIi_CpuCopy32
	b _0214A16C
_0214A128:
	ldr r0, _0214A26C ; =0x00000404
	add r6, sp, #0x14
	str r0, [sp]
	ldr r1, [sp, #0x20]
	add r3, sp, #0x10
	mov r0, r7
	mov r2, r6
	bl FUN_ov132_0214044c
	cmp r0, #0
	bne _0214A16C
	mov r0, #0x6e000
	str r0, [sp]
	ldr r1, [sp, #0x20]
	mov r0, r7
	mov r2, r6
	mov r3, #1
	bl FUN_ov132_0214067c
_0214A16C:
	mov r0, r7
	bl FUN_ov132_02144780
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r0, r7
	mov r3, r4
	bl FUN_ov126_0212c3bc
_0214A1A4:
	ldr r1, [sp, #0x1c]
	mov r0, #0
	cmp r1, #0
	beq _0214A1D0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r0, r7
	mov r2, #0x5a
	bl FUN_ov132_0213c29c
_0214A1D0:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0
	beq _0214A238
	ldrsh r2, [r0, #0x94]
	ldrsh r1, [r1, #0x94]
	mov r0, r7
	mov r3, #1
	bl FUN_ov126_0213257c
	mov r0, r7
	bl FUN_ov126_0213246c
	ldrb r1, [r0, #0x12]
	cmp r5, #0
	mov r4, #6
	orr r1, r1, #1
	strb r1, [r0, #0x12]
	ldrneb r1, [r0, #0x12]
	orrne r1, r1, #2
	strneb r1, [r0, #0x12]
	mov r0, r7
	mov r1, r4
	bl FUN_ov132_021447d0
	mov r0, r7
	mov r1, r4
	bl FUN_ov132_021447f4
_0214A238:
	cmp r5, #0
	bne _0214A25C
	mov r0, r9
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r2, [sp, #0x20]
	ldr r3, _0214A268 ; =0x0209A2C0
	mov r0, r7
	bl FUN_ov126_0212f790
_0214A25C:
	mov r0, #0xa
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214A268: .word unk_0209A2C0
_0214A26C: .word 0x00000404
	arm_func_end FUN_ov132_02149eb8

	arm_func_start FUN_ov132_0214a270
FUN_ov132_0214a270: ; 0x0214A270
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, #0
	mov r11, r1
	mov r1, r6
	mov r10, r0
	mov r9, r2
	mov r8, r3
	bl FUN_ov132_02143114
	ldrb r0, [sp, #0x2c]
	cmp r0, #0
	beq _0214A2E4
	mov r0, r10
	bl FUN_ov126_021375d4
	movs r4, r0
	beq _0214A2EC
	ldrsh r1, [r4, #8]
	ldr r0, _0214A43C ; =0x000001F6
	cmp r1, r0
	bne _0214A2EC
	mov r0, r10
	mov r6, #6
	mov r7, #0xe
	bl FUN_ov132_02144f4c
	cmp r0, #0
	beq _0214A2EC
	mov r0, r10
	mov r1, #2
	bl FUN_ov126_02136d84
	b _0214A2EC
_0214A2E4:
	mov r6, #6
	mov r7, #0xc
_0214A2EC:
	cmp r6, #0
	bne _0214A410
	ldrsh r1, [r4, #0xa]
	ldr r0, _0214A440 ; =0x0209BA20
	bl FUN_0204a2c4
	movs r5, r0
	beq _0214A350
	ldrb r0, [r5]
	cmp r0, #4
	cmpne r0, #8
	bne _0214A328
	mov r0, r10
	mov r2, r11
	mov r1, #5
	bl FUN_ov132_0214f3cc
_0214A328:
	ldrb r0, [r5]
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #3
	movls r0, #1
	movhi r0, #0
	cmp r0, #0
	cmpne r4, #0
	movne r6, #6
	movne r7, #2
_0214A350:
	cmp r6, #0
	bne _0214A410
	ldr r1, [r11, #0x84]
	ldrb r0, [r1, #0x1d]
	cmp r0, #7
	bne _0214A39C
	ldrb r0, [r1, #0x1a]
	cmp r0, #7
	cmpne r0, #3
	moveq r6, #6
	moveq r7, #3
	beq _0214A410
	cmp r0, #1
	beq _0214A390
	cmp r0, #5
	bne _0214A410
_0214A390:
	mov r6, #6
	mov r7, #4
	b _0214A410
_0214A39C:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	beq _0214A3E0
	cmp r9, #0x1d
	beq _0214A3B8
	cmp r9, #0x20
	bne _0214A3E0
_0214A3B8:
	cmp r8, #7
	cmpne r8, #3
	moveq r6, #6
	moveq r7, #3
	beq _0214A410
	cmp r8, #1
	beq _0214A3DC
	cmp r8, #5
	bne _0214A410
_0214A3DC:
	b _0214A390
_0214A3E0:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	bne _0214A408
	mov r0, r10
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _0214A408
	cmp r4, #0
	movne r0, #0x1e
	strneh r0, [r4, #0xa]
_0214A408:
	mov r6, #6
	mov r7, #2
_0214A410:
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_021447d0
	mov r0, r10
	mov r1, r7
	bl FUN_ov132_021447f4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214A43C: .word 0x000001F6
_0214A440: .word unk_0209BA20
	arm_func_end FUN_ov132_0214a270

	arm_func_start FUN_ov132_0214a444
FUN_ov132_0214a444: ; 0x0214A444
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r11, r3
	mov r4, #0
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206d5f0
	ldr r6, _0214A6EC ; =0x0209A2C0
	mov r7, r0
	mov r0, r10
	strb r8, [r6, #0x58]
	bl FUN_ov126_02137544
	mov r5, r0
	ldrsh r1, [r9, #0x94]
	strb r4, [r5, #0xf]
	mov r0, r10
	strb r1, [r5, #0xc]
	mov r1, r7
	bl FUN_ov132_02145190
	cmp r0, #0
	ldrneb r0, [r5, #0xf]
	orrne r0, r0, #8
	strneb r0, [r5, #0xf]
	mov r0, r9
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02144854
	cmp r0, #0
	ldrnesh r0, [r0, #0x94]
	strneb r0, [r5, #0xd]
	cmp r11, r7
	strh r4, [r5, #0xa]
	mov r11, #1
	bne _0214A504
	ldr r0, _0214A6F0 ; =0x0209BA20
	mov r1, r7
	bl FUN_020724dc
	ldrb r1, [r0, #0xb]
	add r1, r1, #1
	strb r1, [r0, #0xb]
_0214A504:
	cmp r8, #0x11
	bne _0214A580
	ldr r0, _0214A6F4 ; =0x0209A720
	ldr r1, [r6, #4]
	ldr r0, [r0, #0xd8]
	cmp r1, r0
	mov r0, r10
	ble _0214A52C
	mov r1, #1
	b _0214A530
_0214A52C:
	mov r1, #0
_0214A530:
	bl FUN_ov132_02143ca4
	mov r2, r0
	mov r0, r10
	mov r1, r9
	bl FUN_01ff8758
	mov r0, r10
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r10
	mov r1, #0xa
	bl FUN_ov132_021447f4
	mov r0, r6
	mov r1, #2
	bl FUN_ov126_0212fce8
	ldr r0, _0214A6F8 ; =0x000001F5
	str r4, [r6, #8]
	str r4, [r6, #0x30]
	str r4, [r6, #0x3c]
	strh r0, [r5, #8]
	b _0214A610
_0214A580:
	cmp r8, #0x12
	bne _0214A610
	mov r0, r10
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r10
	mov r1, #0xb
	bl FUN_ov132_021447f4
	mov r0, #2
	strb r0, [r6, #0x5c]
	mov r0, #0x14
	strh r0, [r5, #8]
	ldrb r0, [r6, #0x5b]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r1, [r5, #0xf]
	movne r0, #0x16
	orrne r1, r1, #1
	strneb r1, [r5, #0xf]
	strneh r0, [r5, #8]
	ldrb r0, [r5, #0xf]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0214A610
	mov r0, #0x64
	bl FUN_ov16_020ef928
	cmp r0, #0x32
	ldrlob r1, [r5, #0xf]
	movlo r0, #0x17
	orrlo r1, r1, #2
	strlob r1, [r5, #0xf]
	strloh r0, [r5, #8]
_0214A610:
	mov r0, r10
	bl FUN_ov126_021375d4
	bl FUN_ov126_02138638
	cmp r0, #0
	bne _0214A6E0
	ldr r5, _0214A6FC ; =0x0209A114
	mov r1, r11
	ldr r0, [r5]
	bl FUN_ov1_020de230
	ldr r0, [r6, #0x18]
	ldr r1, [r9, #0x84]
	str r0, [sp]
	ldr r2, [r6, #0x1c]
	mov r0, r10
	str r2, [sp, #4]
	ldmia r1, {r2, r3}
	mov r1, r9
	bl FUN_ov132_021475e8
	cmp r0, #0
	str r11, [sp]
	beq _0214A6A4
	ldr r6, _0214A700 ; =0x0000191F
	mov r4, #0x14
	ldr r0, [r5]
	mov r2, r6
	mov r3, r4
	mov r1, #0
	bl FUN_ov1_020de1ac
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r11
	mov r2, r6
	mov r3, r4
	bl FUN_ov1_020de1ac
	ldr r0, [r5]
	strb r11, [r0, #0x3a5]
	b _0214A6E0
_0214A6A4:
	ldr r7, _0214A704 ; =0x00005044
	mov r6, #0x14
	ldr r0, [r5]
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov1_020de1ac
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r11
	mov r2, r7
	mov r3, r6
	bl FUN_ov1_020de1ac
	ldr r0, [r5]
	strb r4, [r0, #0x3a5]
_0214A6E0:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214A6EC: .word unk_0209A2C0
_0214A6F0: .word unk_0209BA20
_0214A6F4: .word unk_0209A720
_0214A6F8: .word 0x000001F5
_0214A6FC: .word unk_0209A114
_0214A700: .word 0x0000191F
_0214A704: .word 0x00005044
	arm_func_end FUN_ov132_0214a444

	arm_func_start FUN_ov132_0214a708
FUN_ov132_0214a708: ; 0x0214A708
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r4
	mov r1, #8
	bl FUN_ov132_021447f4
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_0214a708

	arm_func_start FUN_ov132_0214a72c
FUN_ov132_0214a72c: ; 0x0214A72C
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r3, [r1, #0x84]
	ldr r2, [r1, #0x88]
	ldr r1, [r3]
	mov r0, #1
	str r1, [r2]
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	bx lr
	arm_func_end FUN_ov132_0214a72c

	arm_func_start FUN_ov132_0214a758
FUN_ov132_0214a758: ; 0x0214A758
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _0214A780
	mov r0, r6
	bl FUN_ov132_02143438
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214A780:
	ldrb r0, [r6, #0x328]
	cmp r0, #0
	bne _0214A808
	mov r0, r6
	bl FUN_ov132_02144780
	cmp r0, #0
	ldreq r0, [r6, #0x1e4]
	cmpeq r0, #0
	bne _0214A808
	ldr r0, _0214A97C ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	bne _0214A808
	cmp r5, #0
	beq _0214A808
	mov r0, r6
	mov r1, #0xd
	bl FUN_ov132_021447d0
	mov r2, #0xa
	sub r1, r2, #0xb
	mov r3, #5
	mov r0, r6
	str r3, [r6, #0x1c0]
	str r2, [r6, #0x1bc]
	str r1, [r6, #0x1e4]
	bl FUN_ov132_02145354
	ldr r0, _0214A980 ; =0x02099EF0
	mov r1, #2
	ldr r0, [r0]
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214A808:
	ldrb r0, [r6, #0x330]
	strb r4, [r6, #0x1a0]
	cmp r0, #0
	beq _0214A854
	ldr r0, _0214A984 ; =0x020A0640
	strb r4, [r6, #0x330]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0214A83C
	ldr r0, _0214A988 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _0214A844
_0214A83C:
	mov r0, #1
	str r0, [r6, #0x1e8]
_0214A844:
	mov r0, r6
	mov r1, #1
	mov r2, #0
	bl FUN_ov132_021435c0
_0214A854:
	mov r0, r6
	bl FUN_ov132_02152e1c
	mov r0, r6
	bl FUN_ov126_0213921c
	mov r0, r6
	bl FUN_01ff9524
	mov r0, r6
	bl FUN_01ffbbe8
	mov r0, r6
	bl FUN_01ff87f8
	mov r0, r6
	bl FUN_ov132_02151544
	mov r0, r6
	bl FUN_ov132_021515e4
	mov r0, r6
	bl FUN_ov126_0212d6d8
	mov r0, r6
	bl FUN_ov126_0212dd00
	mov r0, r6
	bl FUN_ov132_02151698
	mov r0, r6
	bl FUN_ov132_02151638
	mov r0, r6
	bl FUN_01ff9578
	cmp r0, #0
	bne _0214A8CC
	mov r0, r6
	bl FUN_ov132_021447c8
	cmp r0, #0
	bne _0214A970
_0214A8CC:
	add r5, r6, #0x100
	ldrsb r0, [r5, #0xa7]
	mvn r7, #0
	cmp r0, r7
	beq _0214A8FC
	bl FUN_ov16_020efa80
	mov r1, r0
	mov r0, r6
	bl FUN_01ffbc60
	strb r7, [r6, #0x1a7]
	str r4, [r6, #0x1ac]
	b _0214A970
_0214A8FC:
	mov r7, #0
	b _0214A934
_0214A904:
	ldrsb r0, [r5, #0xa6]
	bl FUN_ov16_020efa80
	mov r1, r0
	mov r0, r6
	bl FUN_01ffbc60
	mov r4, r0
	mov r0, r6
	bl FUN_01ffb154
	strb r0, [r6, #0x1a6]
	cmp r4, #0
	bne _0214A93C
	add r7, r7, #1
_0214A934:
	cmp r7, #0x16
	blt _0214A904
_0214A93C:
	ldr r0, [r6, #0x1ac]
	add r0, r0, #1
	cmp r0, #0xa
	str r0, [r6, #0x1ac]
	ldrgt r0, _0214A97C ; =0x0209A2C0
	mvngt r1, #0
	ldrgt r2, [r0, #0x48]
	cmpgt r2, r1
	ble _0214A970
	add r0, r6, #0x100
	ldrsb r0, [r0, #0xa7]
	cmp r0, r1
	streqb r2, [r6, #0x1a7]
_0214A970:
	mov r0, #1
	strb r0, [r6, #0x329]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214A97C: .word unk_0209A2C0
_0214A980: .word unk_02099EF0
_0214A984: .word unk_020A0640
_0214A988: .word unk_0209AEC0
	arm_func_end FUN_ov132_0214a758

	arm_func_start FUN_ov132_0214a98c
FUN_ov132_0214a98c: ; 0x0214A98C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
_0214A9A0:
	ldr r0, [sp, #8]
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0214AA9C
	bl FUN_0206d688
	cmp r0, #0
	ldrne r5, [r4, #0x84]
	cmpne r5, #0
	ldrne r0, [r4, #0x88]
	cmpne r0, #0
	beq _0214AA9C
	bl FUN_02040a80
	cmp r0, #0
	bne _0214AA9C
	ldr r0, [r4, #0x88]
	ldmia r5, {r6, r7}
	ldr r10, [r0, #0x14]
	ldmia r0, {r8, r9}
	cmp r10, #0
	beq _0214AA9C
	cmp r6, r8
	bne _0214AA00
	cmp r7, r9
	beq _0214AA9C
_0214AA00:
	sub r0, r9, r7
	sub r1, r8, r6
	bl FX_Atan2Idx
	mov r0, r0, asr #4
	mov r11, r0, lsl #1
	ldr r0, [sp, #4]
	mov r1, r6
	mov r2, r7
	mov r3, r8
	str r9, [sp]
	bl FUN_01ffba98
	ldr r2, _0214AAB8 ; =FX_SinCosTable_
	mov r1, r11, lsl #1
	add r2, r2, r11, lsl #1
	ldrsh r3, [r2, #2]
	ldr r2, _0214AAB8 ; =FX_SinCosTable_
	ldrsh r1, [r2, r1]
	smull r3, r2, r10, r3
	adds r3, r3, #0x800
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r2, r6, r3
	str r2, [r5]
	smull r2, r1, r10, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	cmp r10, r0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r0, r7, r0
	str r0, [r5, #4]
	stmgeia r5, {r8, r9}
	bge _0214AA9C
	ldr r1, [r4, #0x88]
	ldr r0, [r1, #0x18]
	add r0, r10, r0
	cmp r0, #0
	strgt r0, [r1, #0x14]
_0214AA9C:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0x20
	blt _0214A9A0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214AAB8: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0214a98c

	arm_func_start FUN_ov132_0214aabc
FUN_ov132_0214aabc: ; 0x0214AABC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0214AAFC
	ldr r12, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov132_0214ad30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214AAFC:
	mov r0, r7
	mov r1, r6
	bl FUN_01ffba18
	cmp r0, #0
	beq _0214AB30
	ldr r12, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov132_0214b004
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214AB30:
	ldr r12, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov132_0214b574
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0214aabc

	arm_func_start FUN_ov132_0214ab50
FUN_ov132_0214ab50: ; 0x0214AB50
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, r1
	mov r10, r0
	mov r8, r2
	mov r0, r9
	mov r7, r3
	ldr r6, [sp, #0x38]
	bl FUN_ov16_020f07d0
	mov r5, r0
	ldr r0, [r8, #0x48]
	cmp r0, #0
	blt _0214AB94
	ldrsh r1, [r9, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	beq _0214ABA0
_0214AB94:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214ABA0:
	ldr r0, [r8, #0x48]
	bl FUN_ov16_020efa80
	movs r4, r0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206d5f0
	mov r11, r0
	mov r0, r4
	bl FUN_0206d5f0
	str r0, [sp, #8]
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021472b4
	mov r1, r11
	mov r11, #0
	str r11, [sp]
	ldrsh r12, [r4, #0x94]
	mov r3, r0
	ldr r2, [sp, #8]
	mov r0, r10
	str r12, [sp, #4]
	bl FUN_ov132_0214845c
	cmp r0, #0
	ble _0214AC24
	add sp, sp, #0x14
	cmp r6, #0
	strneb r11, [r6]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214AC24:
	mov r0, r10
	mov r1, r5
	mov r2, r8
	bl FUN_ov132_02140b50
	cmp r0, #0
	beq _0214AC64
	ldr r1, [r8]
	ldr r0, [r8, #4]
	str r1, [r7]
	str r0, [r7, #4]
	cmp r6, #0
	movne r0, #1
	strneb r0, [r6]
	add sp, sp, #0x14
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214AC64:
	mov r0, r9
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021472b4
	mov r2, r0
	mov r0, r10
	ldr r1, [r4, #0x84]
	mov r3, r5
	ldr r1, [r1, #4]
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _0214AD24
	mov r0, r5
	bl FUN_02040170
	mov r8, r0
	mov r0, r5
	bl FUN_02040158
	mov r0, r5
	bl FUN_02040188
	mov r1, r5
	mov r5, r0
	ldr r3, [r8]
	ldr r2, [r8, #8]
	mov r0, r10
	sub r2, r2, r3
	add r2, r3, r2, asr #1
	str r2, [sp, #0xc]
	mov r2, #0x8000
	bl FUN_ov132_0213f5d4
	str r0, [sp, #0x10]
	mov r1, #0x19
	str r1, [sp]
	ldr r3, [r4, #0x84]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0xc
	bl FUN_ov132_021407dc
	mov r2, r5
	mov r0, r7
	add r1, r7, #4
	mov r3, #0x4000
	bl FUN_02040bdc
	cmp r6, #0
	add sp, sp, #0x14
	strneb r11, [r6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214AD24:
	mov r0, r11
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0214ab50

	arm_func_start FUN_ov132_0214ad30
FUN_ov132_0214ad30: ; 0x0214AD30
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r8, [sp, #0x18]
	mov r7, r0
	cmp r8, #0
	movne r0, #0
	strneb r0, [r8]
	mov r6, r1
	mov r5, r2
	mov r0, r6
	mov r4, r3
	ldr r8, _0214ADA8 ; =0x0209A2C0
	bl FUN_ov16_020f07d0
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r1, [r4]
	str r0, [r4, #4]
	ldmia r8, {r0, r1}
	bl FUN_02040644
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, r4
	bl FUN_ov132_02157928
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0214ADA8: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214ad30

	arm_func_start FUN_ov132_0214adac
FUN_ov132_0214adac: ; 0x0214ADAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0214AFFC ; =0x0209A2C0
	mov r9, r0
	ldr r0, [r4, #0x48]
	mov r10, r2
	mov r11, r3
	mov r8, r1
	bl FUN_ov16_020efa80
	mov r4, r0
	subs r5, r10, r11
	mov r0, r8
	rsbmi r5, r5, #0
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r9
	bl FUN_ov132_02146348
	mov r6, #1
	cmp r0, #2
	movne r6, #0
	cmp r0, #1
	mov r7, #1
	mov r0, r8
	movne r7, #0
	bl FUN_ov16_020f07d0
	mov r3, r0
	mov r0, r9
	mov r1, r10
	mov r2, r11
	bl FUN_01ffb9b0
	cmp r0, #0
	mov r0, r8
	beq _0214AEDC
	bl FUN_02040128
	mov r1, r0
	mov r0, r9
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _0214AFF4
	ldr r0, _0214B000 ; =0x0209BA20
	mov r1, r8
	bl FUN_0204b754
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0214AEAC
_0214AE5C: ; jump table
	b _0214AEAC ; case 0
	b _0214AEAC ; case 1
	b _0214AE90 ; case 2
	b _0214AE88 ; case 3
	b _0214AE80 ; case 4
	b _0214AE98 ; case 5
	b _0214AE9C ; case 6
	b _0214AEA4 ; case 7
	b _0214AEA8 ; case 8
_0214AE80:
	mov r5, r5, asr #1
	b _0214AEB0
_0214AE88:
	mov r5, r5, asr #2
	b _0214AEB0
_0214AE90:
	mov r5, r5, asr #4
	b _0214AEB0
_0214AE98:
	b _0214AE90
_0214AE9C:
	mov r5, r5, asr #3
	b _0214AEB0
_0214AEA4:
	b _0214AE88
_0214AEA8:
	b _0214AE80
_0214AEAC:
	mov r5, #0
_0214AEB0:
	cmp r6, #0
	movne r0, r5, asr #2
	addne r5, r0, r0, lsl #1
	mov r0, r8
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl FUN_01ffb1b0
	mov r5, r0
	b _0214AFF4
_0214AEDC:
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r0, r9
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _0214AFF4
	cmp r4, #0
	beq _0214AF24
	mov r0, r9
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0214AF24
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f0728
	cmp r0, #0
	movne r6, #1
_0214AF24:
	ldr r0, _0214B000 ; =0x0209BA20
	mov r1, r8
	bl FUN_0204b754
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0214AFD4
_0214AF3C: ; jump table
	b _0214AFD4 ; case 0
	b _0214AFD4 ; case 1
	b _0214AF84 ; case 2
	b _0214AF70 ; case 3
	b _0214AF60 ; case 4
	b _0214AF88 ; case 5
	b _0214AF9C ; case 6
	b _0214AFAC ; case 7
	b _0214AFB4 ; case 8
_0214AF60:
	cmp r7, #0
	movne r5, #0
	moveq r5, r5, asr #3
	b _0214AFD8
_0214AF70:
	cmp r6, #0
	movne r0, r5, asr #3
	addne r5, r0, r0, lsl #1
	moveq r5, r5, asr #2
	b _0214AFD8
_0214AF84:
	b _0214AF88
_0214AF88:
	mov r0, r5, asr #3
	cmp r6, #0
	addne r5, r0, r0, lsl #2
_0214AF94:
	addeq r5, r0, r0, lsl #1
	b _0214AFD8
_0214AF9C:
	mov r0, r5, asr #3
	cmp r6, #0
	movne r5, r0, lsl #2
	b _0214AF94
_0214AFAC:
	mov r5, r5, asr #3
	b _0214AFD8
_0214AFB4:
	cmp r7, #0
	movne r5, r5, asr #3
	bne _0214AFD8
	mov r0, r5, asr #3
	cmp r6, #0
	addne r5, r0, r0, lsl #1
	moveq r5, r0, lsl #1
	b _0214AFD8
_0214AFD4:
	mov r5, #0
_0214AFD8:
	mov r0, r8
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl FUN_01ffb1b0
	rsb r5, r0, #0
_0214AFF4:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214AFFC: .word unk_0209A2C0
_0214B000: .word unk_0209BA20
	arm_func_end FUN_ov132_0214adac

	arm_func_start FUN_ov132_0214b004
FUN_ov132_0214b004: ; 0x0214B004
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r5, [sp, #0x40]
	mov r10, r0
	mov r9, r1
	mov r7, r3
	mov r0, #0
	cmp r5, #0
	strneb r0, [r5]
	cmp r9, #0
	cmpne r7, #0
	ldr r4, _0214B39C ; =0x0209A2C0
	mov r8, r2
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	ldreq r8, [r9, #0x84]
	cmp r8, #0
	beq _0214B064
	mov r0, r8
	mov r1, r7
	mov r2, #8
	bl MI_CpuCopy8
_0214B064:
	mov r0, r9
	bl FUN_02040128
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461f8
	mov r6, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _0214B17C
	ldr r1, [r4, #0x48]
	cmn r1, #1
	ble _0214B17C
	ldrsh r0, [r9, #0x94]
	cmp r1, r0
	beq _0214B17C
	mov r0, r10
	mov r1, r4
	mov r2, r8
	bl FUN_01ffba50
	mov r5, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	beq _0214B0D8
	cmp r6, #0
	bne _0214B17C
_0214B0D8:
	cmp r5, #0x96000
	ble _0214B17C
	mov r0, r10
	mov r1, r4
	mov r2, r9
	mov r3, #0xe0000
	str r5, [sp]
	bl FUN_ov132_02152208
	cmp r0, #0
	bne _0214B17C
	mov r1, r4
	mov r0, r8
	mov r4, #0x20000
	bl FUN_020403a8
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r2, _0214B3A0 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r0, [r2, r0]
	add sp, sp, #0x18
	smull r1, r2, r4, r1
	adds r5, r1, #0x800
	smull r1, r0, r4, r0
	adc r3, r2, #0
	adds r2, r1, #0x800
	mov r4, r5, lsr #0xc
	ldr r1, [r8]
	orr r4, r4, r3, lsl #20
	add r1, r1, r4
	str r1, [r7]
	adc r1, r0, #0
	mov r2, r2, lsr #0xc
	ldr r0, [r8, #4]
	orr r2, r2, r1, lsl #20
	add r0, r0, r2
	str r0, [r7, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214B17C:
	mov r11, #0
	mov r0, r10
	mov r1, r9
	mov r3, r11
	sub r2, r11, #0x20000
	str r11, [sp]
	bl FUN_ov132_0213f55c
	mov r5, r0
	mov r0, r10
	bl FUN_ov132_021587bc
	cmp r0, #0
	moveq r11, #1
	add r2, sp, #0x10
	mov r0, r10
	mov r1, r9
	mov r3, r11
	bl FUN_ov126_02138b3c
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r0, r10
	mov r1, r4
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	ldrne r3, [r4, #0x1c]
	ldr r2, [sp, #0x14]
	ldreq r3, [r4, #4]
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0214adac
	ldr r2, [sp, #0x14]
	mov r1, r9
	add r2, r2, r0
	mov r0, r10
	str r2, [sp, #0x14]
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	beq _0214B2B4
	cmp r6, #0
	mov r1, #0
	beq _0214B2B4
	ldr r0, _0214B3A4 ; =0x0209A720
	ldr r2, [r4]
	ldr r0, [r0, #0xd4]
	sub r2, r2, r0
	mov r0, #0x800
	umull r4, r3, r2, r0
	mla r3, r2, r1, r3
	mov r2, r2, asr #0x1f
	mla r3, r2, r0, r3
	adds r4, r4, #0x800
	adc r1, r3, r1
	mov r2, r4, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r0, [sp, #0x10]
	ldr r1, _0214B3A8 ; =0x0209A7FC
	add r3, r0, r2
	add r0, sp, #0x10
	mov r2, #0x8000
	str r3, [sp, #0x10]
	bl FUN_02040c34
	mov r0, r9
	bl FUN_ov16_020f07d0
	mov r3, r0
	ldr r1, [sp, #0x14]
	mov r0, r10
	mov r2, r5
	bl FUN_01ffb9b0
	cmp r0, #0
	ldr r1, [sp, #0x10]
	streq r5, [sp, #0x14]
	str r1, [r7]
	ldr r1, [sp, #0x14]
	add sp, sp, #0x18
	mov r0, #1
	str r1, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214B2B4:
	add r5, sp, #0x10
	mov r0, r10
	mov r1, r5
	mov r2, r8
	mov r4, #0
	bl FUN_01ffba50
	cmp r0, #0x40000
	ble _0214B348
	mov r0, r8
	mov r1, r5
	bl FUN_020403a8
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r2, _0214B3A0 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	mov r3, #0x20000
	ldrsh r0, [r2, r0]
	smull r1, r2, r3, r1
	adds r5, r1, #0x800
	smull r1, r0, r3, r0
	adc r3, r2, r4
	adds r2, r1, #0x800
	mov r5, r5, lsr #0xc
	ldr r1, [sp, #0x10]
	orr r5, r5, r3, lsl #20
	add r1, r1, r5
	str r1, [r7]
	adc r1, r0, r4
	mov r2, r2, lsr #0xc
	ldr r0, [sp, #0x14]
	orr r2, r2, r1, lsl #20
	add r0, r0, r2
	str r0, [r7, #4]
	b _0214B380
_0214B348:
	ldr r4, _0214B3AC ; =0x000C0008
	mov r0, r10
	str r4, [sp]
	mov r4, #0x38000
	mov r1, r9
	mov r2, r7
	mov r3, r8
	str r4, [sp, #4]
	bl FUN_ov132_0214d5f4
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	streq r0, [r7]
	ldreq r0, [sp, #0x14]
	streq r0, [r7, #4]
_0214B380:
	mov r0, r7
	bl FUN_02040a80
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214B39C: .word unk_0209A2C0
_0214B3A0: .word FX_SinCosTable_
_0214B3A4: .word unk_0209A720
_0214B3A8: .word unk_0209A7FC
_0214B3AC: .word 0x000C0008
	arm_func_end FUN_ov132_0214b004

	arm_func_start FUN_ov132_0214b3b0
FUN_ov132_0214b3b0: ; 0x0214B3B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r1
	mov r9, r0
	mov r0, r4
	mov r8, r2
	mov r10, r3
	bl FUN_ov16_020f07d0
	mov r11, r0
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r9
	bl FUN_ov132_02146348
	mov r5, #1
	cmp r0, #1
	movne r5, #0
	cmp r0, #2
	mov r6, #1
	ldr r0, _0214B570 ; =0x0209BA20
	mov r1, r4
	movne r6, #0
	bl FUN_0204b754
	mov r4, r0
	subs r7, r10, r8
	mov r0, r9
	mov r1, r10
	mov r2, r8
	mov r3, r11
	rsbmi r7, r7, #0
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _0214B4E8
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _0214B4C8
_0214B43C: ; jump table
	b _0214B4C8 ; case 0
	b _0214B4C8 ; case 1
	b _0214B460 ; case 2
	b _0214B468 ; case 3
	b _0214B478 ; case 4
	b _0214B480 ; case 5
	b _0214B490 ; case 6
	b _0214B4A0 ; case 7
	b _0214B4B4 ; case 8
_0214B460:
	mov r2, r7, asr #1
	b _0214B4CC
_0214B468:
	cmp r6, #0
	movne r2, r7, asr #3
	moveq r2, r7, asr #4
	b _0214B4CC
_0214B478:
	mov r2, r7, asr #5
	b _0214B4CC
_0214B480:
	mov r1, r7, asr #3
	mov r0, #6
	mul r2, r1, r0
	b _0214B4CC
_0214B490:
	cmp r6, #0
	movne r2, r7, asr #2
	moveq r0, r7, asr #3
	b _0214B4C0
_0214B4A0:
	cmp r5, #0
	movne r2, r7, asr #3
	moveq r0, r7, asr #3
	moveq r2, r0, lsl #1
	b _0214B4CC
_0214B4B4:
	mov r0, r7, asr #3
	cmp r5, #0
	movne r2, r0, lsl #1
_0214B4C0:
	addeq r2, r0, r0, lsl #1
	b _0214B4CC
_0214B4C8:
	mov r2, #0
_0214B4CC:
	cmp r5, #0
	movne r2, r2, asr #1
	mov r0, r9
	mov r1, r11
	bl FUN_01ffb1b0
	rsb r0, r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214B4E8:
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _0214B554
_0214B4F4: ; jump table
	b _0214B554 ; case 0
	b _0214B554 ; case 1
	b _0214B518 ; case 2
	b _0214B520 ; case 3
	b _0214B524 ; case 4
	b _0214B52C ; case 5
	b _0214B530 ; case 6
	b _0214B534 ; case 7
	b _0214B544 ; case 8
_0214B518:
	mov r2, r7, asr #5
	b _0214B558
_0214B520:
	b _0214B534
_0214B524:
	mov r2, r7, asr #2
	b _0214B558
_0214B52C:
	b _0214B534
_0214B530:
	b _0214B534
_0214B534:
	cmp r5, #0
	movne r2, r7, asr #3
	moveq r2, r7, asr #4
	b _0214B558
_0214B544:
	cmp r5, #0
	movne r2, r7, asr #1
	moveq r2, r7, asr #2
	b _0214B558
_0214B554:
	mov r2, #0
_0214B558:
	cmp r6, #0
	movne r2, r2, asr #1
	mov r0, r9
	mov r1, r11
	bl FUN_01ffb1b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214B570: .word unk_0209BA20
	arm_func_end FUN_ov132_0214b3b0

	arm_func_start FUN_ov132_0214b574
FUN_ov132_0214b574: ; 0x0214B574
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r6, r3
	movs r8, r1
	ldr r5, [sp, #0x58]
	cmpne r6, #0
	mov r9, r0
	mov r7, r2
	addeq sp, sp, #0x30
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #0x23000
	mov r0, r8
	str r1, [sp, #0x14]
	mov r4, #0
	bl FUN_0206dcd4
	ldrb r3, [r0, #0x63]
	mov r0, #0xf000
	ldr r1, _0214B814 ; =0x51EB851F
	mul r2, r3, r0
	smull r0, r3, r1, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #5
	ldr r1, [sp, #0x14]
	mov r0, r9
	add r2, r1, r3
	mov r1, r8
	str r2, [sp, #0x14]
	bl FUN_ov126_0213a354
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	ldr r10, _0214B818 ; =0x0209A2C0
	movne r0, r0, lsl #1
	strne r0, [sp, #0x14]
	mov r0, r9
	mov r1, r10
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	ldrne r11, [r10, #0x1c]
	mov r0, r9
	ldreq r11, [r10, #4]
	bl FUN_ov132_021587bc
	add r10, sp, #0x28
	cmp r0, #0
	mov r3, #1
	movne r3, #0
	mov r0, r9
	mov r1, r8
	mov r2, r10
	bl FUN_ov126_02138b3c
	mov r0, r9
	mov r1, r7
	mov r2, r10
	bl FUN_01ffba50
	str r0, [sp, #0x10]
	ldr r0, _0214B818 ; =0x0209A2C0
	mvn r10, #0
	ldr r0, [r0, #0x48]
	cmp r0, r10
	bgt _0214B6E8
	mov r0, r8
	bl FUN_ov16_020f0810
	str r10, [sp]
	str r0, [sp, #4]
	mov r1, #0
	add r0, sp, #0x14
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0214B818 ; =0x0209A2C0
	mov r3, #0x10
	ldmia r0, {r1, r2}
	mov r0, r9
	bl FUN_ov132_0214c60c
	add r2, sp, #0x10
	mov r10, r0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, _0214B818 ; =0x0209A2C0
	mov r0, r9
	mov r2, r8
	add r3, sp, #0x20
	bl FUN_ov132_0214c74c
	ldr r0, [sp, #0x10]
	cmp r0, #0x28000
	blt _0214B6E4
	cmp r10, #0
	beq _0214B6E8
	ldrsh r1, [r10, #0x94]
	ldrsh r0, [r8, #0x94]
	cmp r1, r0
	bne _0214B6E8
_0214B6E4:
	mov r4, #1
_0214B6E8:
	cmp r4, #0
	mov r4, #1
	beq _0214B728
	ldr r10, _0214B818 ; =0x0209A2C0
	mov r0, r9
	mov r1, r10
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	ldrne r10, _0214B81C ; =0x0209A2D8
	cmp r5, #0
	ldr r1, [r10]
	ldr r0, [r10, #4]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	strneb r4, [r5]
	b _0214B7AC
_0214B728:
	ldr r2, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r0, r9
	mov r1, r8
	mov r3, r11
	str r2, [sp, #0x1c]
	str r4, [sp, #0x18]
	bl FUN_ov132_0214b3b0
	ldr r1, [sp, #0x1c]
	mov r4, #0x40000
	add r2, r1, r0
	add r10, sp, #0x18
	str r2, [sp, #0x1c]
	mov r2, #0xd000
	str r2, [sp]
	mov r0, r9
	mov r1, r10
	mov r2, r8
	mov r3, r4
	bl FUN_ov132_02152208
	cmp r0, #0
	beq _0214B7A0
	mov r0, r9
	mov r1, r8
	mov r2, r10
	mov r3, r10
	str r4, [sp]
	mov r4, #0x10000
	str r4, [sp, #4]
	bl FUN_ov132_0214d5f4
_0214B7A0:
	mov r0, #0
	cmp r5, #0
	strneb r0, [r5]
_0214B7AC:
	mov r0, r9
	mov r1, #5
	mov r4, #0
	bl FUN_ov132_02144a84
	add r5, sp, #0x18
	mov r2, r0
	mov r0, r5
	mov r1, r7
	bl FUN_02040c4c
	cmp r0, #0
	beq _0214B7F8
	mov r0, r8
	bl FUN_ov16_020f07d0
	mov r3, r0
	mov r0, r9
	mov r1, r5
	mov r2, r7
	str r4, [sp]
	bl FUN_ov132_0214f240
_0214B7F8:
	ldr r1, [sp, #0x18]
	mov r0, #1
	str r1, [r6]
	ldr r1, [sp, #0x1c]
	str r1, [r6, #4]
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214B814: .word 0x51EB851F
_0214B818: .word unk_0209A2C0
_0214B81C: .word unk_0209A2D8
	arm_func_end FUN_ov132_0214b574

	arm_func_start FUN_ov132_0214b820
FUN_ov132_0214b820: ; 0x0214B820
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r9, r1
	ldr r1, [r9, #0x84]
	mov r10, r0
	mov r0, r9
	mov r8, r2
	ldmia r1, {r4, r5}
	bl FUN_02040128
	mov r6, r0
	mov r2, #0x5000
	mov r0, r10
	mov r1, r6
	rsb r2, r2, #0
	bl FUN_ov132_0213f5d4
	str r0, [sp, #8]
	mov r0, r6
	bl FUN_02040170
	mov r7, r0
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_021461f8
	cmp r0, #0
	bne _0214B8AC
	mov r4, #0x10000
	str r4, [sp]
	mov r4, #0x1e000
	ldr r3, [r9, #0x84]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	str r4, [sp, #4]
	bl FUN_ov132_0214d5f4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214B8AC:
	ldr r0, [r7]
	add r0, r0, #0x2000
	cmp r4, r0
	blt _0214B920
	ldr r0, [r7, #8]
	sub r0, r0, #0x2000
	cmp r4, r0
	bgt _0214B920
	mov r0, r10
	mov r1, r6
	mov r2, #0
	bl FUN_ov132_0213f5d4
	mov r2, r0
	mov r0, r10
	mov r1, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _0214B920
	mov r0, r10
	mov r1, r6
	mov r2, #0x5000
	str r4, [r8]
	bl FUN_ov132_0213f5d4
	cmp r5, r0
	subgt r0, r5, #0xa000
	addle r0, r5, #0xa000
	add sp, sp, #0x1c
	str r0, [r8, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214B920:
	ldr r3, [r7]
	ldr r2, [r7, #8]
	mov r0, r10
	add r11, r3, r2
	mov r1, r6
	mov r2, #0x5000
	bl FUN_ov132_0213f5d4
	sub r0, r0, r5
	rsb r1, r4, r11, asr #1
	bl FX_Atan2Idx
	mov r11, r0
	ldr r0, [r7]
	ldr r1, [r7, #8]
	add r0, r0, #0x2000
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r1, r1, #0x2000
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
	str r0, [sp, #0x18]
	mov r0, r4
	mov r1, r5
	mov r2, r11
	add r3, sp, #0xc
	bl FUN_020404dc
	cmp r0, #0
	beq _0214BA34
	mov r0, r10
	mov r1, r6
	mov r2, #0
	bl FUN_ov132_0213f5d4
	mov r2, r0
	mov r0, r10
	mov r1, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _0214BA34
	mov r0, r11, asr #4
	mov r0, r0, lsl #1
	add r2, r0, #1
	ldr r1, _0214BAFC ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	ldrsh r12, [r1, r2]
	mov r0, r0, lsl #1
	ldrsh r2, [r1, r0]
	mov r0, #0xf000
	umull r3, r7, r12, r0
	umull lr, r1, r2, r0
	adds r0, r3, #0x800
	mov r11, r0, lsr #0xc
	mov r3, r12, asr #0x1f
	mov r0, #0xf000
	mla r7, r3, r0, r7
	mov r0, #0
	adc r0, r7, r0
	mov r7, r2, asr #0x1f
	mov r2, #0xf000
	orr r11, r11, r0, lsl #20
	add r0, r4, r11
	str r0, [r8]
	adds r0, lr, #0x800
	mla r1, r7, r2, r1
	mov r3, #0
	mov r2, r3
	mov r0, r0, lsr #0xc
	adc r1, r1, r2
	orr r0, r0, r1, lsl #20
	add r0, r5, r0
	str r0, [r8, #4]
_0214BA34:
	ldr r0, _0214BB00 ; =0x0209A720
	mov r2, #0xf000
	ldr r7, [r0, #0xd4]
	mov r0, r10
	mov r1, r6
	rsb r2, r2, #0
	bl FUN_ov132_0213f5d4
	sub r0, r0, r5
	sub r1, r7, r4
	bl FX_Atan2Idx
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	mov r3, r1, lsl #1
	mov r0, r0, lsl #1
	ldr r2, _0214BAFC ; =FX_SinCosTable_
	mov r1, #0xf000
	ldrsh r11, [r2, r3]
	ldrsh r6, [r2, r0]
	mov r0, r9
	mov r2, r11, asr #0x1f
	umull r7, r3, r11, r1
	mla r3, r2, r1, r3
	adds r7, r7, #0x800
	adc r2, r3, #0
	mov r3, r7, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r2, r4, r3
	str r2, [r8]
	mov r2, r6, asr #0x1f
	umull r4, r3, r6, r1
	mla r3, r2, r1, r3
	adds r2, r4, #0x800
	adc r1, r3, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r5, r2
	str r1, [r8, #4]
	bl FUN_ov16_020f07d0
	mov r4, r0
	mov r0, r9
	bl FUN_02040aa8
	mov r1, r8
	ldr r2, [r9, #0x84]
	mov r3, r4
	str r0, [sp]
	mov r0, r10
	bl FUN_ov132_0214f240
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214BAFC: .word FX_SinCosTable_
_0214BB00: .word unk_0209A720
	arm_func_end FUN_ov132_0214b820

	arm_func_start FUN_ov132_0214bb04
FUN_ov132_0214bb04: ; 0x0214BB04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	mov r9, r1
	mov r10, r0
	mov r0, r9
	str r2, [sp, #0x10]
	mov r4, r3
	mvn r11, #0
	bl FUN_02040128
	ldr r2, [r9, #0x84]
	str r0, [sp, #0x28]
	ldr r1, [r2]
	mov r0, r9
	str r1, [sp, #0x24]
	ldr r1, [r2, #4]
	str r1, [sp, #0x20]
	bl FUN_02040128
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461f8
	cmp r0, #0
	bne _0214BB8C
	mov r5, #0x10000
	str r5, [sp]
	mov r5, #0x1e000
	ldr r3, [r9, #0x84]
	ldr r2, [sp, #0x10]
	mov r0, r10
	mov r1, r9
	str r5, [sp, #4]
	bl FUN_ov132_0214d5f4
	cmp r0, #0
	addne sp, sp, #0x74
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214BB8C:
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _0214BBBC
	ldr r2, [r9, #0x84]
	ldr r0, [sp, #0x10]
	ldr r1, [r2]
	add sp, sp, #0x74
	str r1, [r0]
	ldr r1, [r2, #4]
	str r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214BBBC:
	mov r0, r10
	mov r1, #4
	bl FUN_ov132_02144a84
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	bl FUN_02040170
	add r1, sp, #0x34
	mov r2, #0x10
	bl MI_CpuCopy8
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	add r1, r1, #0xc000
	sub r0, r0, #0xc000
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl FUN_0204071c
	cmp r0, #0
	bne _0214BCD0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0]
	ldr r1, [r1, #8]
	bl FUN_0203fc70
	mov r4, r0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0, #4]
	ldr r1, [r1, #0xc]
	bl FUN_0203fc70
	ldr r1, [sp, #0x20]
	sub r0, r0, r1
	ldr r1, [sp, #0x24]
	sub r1, r4, r1
	bl FX_Atan2Idx
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	mov r2, r0, lsl #1
	ldr r1, _0214C030 ; =FX_SinCosTable_
	mov r0, r3, lsl #1
	ldrsh r3, [r1, r2]
	ldrsh r2, [r1, r0]
	mov r0, #0x800
	mov r1, r3, asr #0x1f
	mov r4, r1, lsl #0x11
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0x11
	adds r5, r0, r3, lsl #17
	orr r4, r4, r3, lsr #15
	adc r4, r4, #0
	adds r3, r0, r2, lsl #17
	orr r1, r1, r2, lsr #15
	mov r2, r5, lsr #0xc
	ldr r0, [sp, #0x24]
	orr r2, r2, r4, lsl #20
	add r2, r0, r2
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x10]
	add sp, sp, #0x74
	str r2, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214BCD0:
	mov r0, r9
	bl FUN_02040128
	mov r1, r0
	mov r0, r10
	mov r2, #0
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x20]
	subs r0, r0, r1
	rsbmi r0, r0, #0
	cmp r0, #0x3c000
	bge _0214BD14
	ldr r2, [sp, #0x10]
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0214b820
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214BD14:
	and r0, r4, #1
	str r0, [sp, #0x1c]
	and r0, r4, #2
	str r0, [sp, #0x18]
	and r0, r4, #4
	str r0, [sp, #0x14]
	mov r5, #0
	add r4, sp, #0x5c
_0214BD34:
	sub r0, r5, #1
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r2, r0, lsl #1
	ldr r0, _0214C030 ; =FX_SinCosTable_
	mov r1, r2, lsl #1
	add r0, r0, r2, lsl #1
	ldrsh r3, [r0, #2]
	ldr r0, _0214C030 ; =FX_SinCosTable_
	ldrsh r2, [r0, r1]
	mov r1, r3, asr #0x1f
	mov r1, r1, lsl #0x11
	orr r1, r1, r3, lsr #15
	mov r3, r3, lsl #0x11
	adds r3, r3, #0x800
	adc r1, r1, #0
	mov r8, r3, lsr #0xc
	orr r8, r8, r1, lsl #20
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0x11
	orr r1, r1, r2, lsr #15
	mov r2, r2, lsl #0x11
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	add r1, r1, r8
	str r1, [sp, #0x5c]
	ldr r1, [sp, #0x20]
	add r1, r1, r7
	str r1, [sp, #0x60]
	mov r1, r4
	bl FUN_02040764
	cmp r0, #0
	bne _0214BDF8
	ldr r1, [sp, #0x28]
	mov r0, r10
	mov r2, r4
	bl FUN_ov132_02140b50
	cmp r0, #0
	bne _0214BDF8
	add r0, sp, #0x34
	mov r1, r4
	bl FUN_02040764
	cmp r0, #0
	beq _0214BFBC
_0214BDF8:
	ldr r0, [sp, #0x1c]
	mov r6, #0
	cmp r0, #0
	beq _0214BE24
	ldr r2, [sp, #0x60]
	mov r0, r10
	mov r1, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	movne r6, #1
	bne _0214BE5C
_0214BE24:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	cmpne r7, #0x5000
	movlt r6, #1
	blt _0214BE5C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0214BE5C
	ldr r2, [sp, #0x60]
	mov r0, r10
	mov r1, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	moveq r6, #1
_0214BE5C:
	cmp r6, #0
	beq _0214BFBC
	cmp r7, #0
	rsblt r7, r7, #0
	cmp r8, #0
	rsblt r8, r8, #0
	mov r1, r8
	mov r2, r7
	mov r0, r10
	bl FUN_01ffba80
	str r0, [sp, #0x64]
	mov r0, r9
	bl FUN_ov16_020f0810
	bl FUN_02040138
	ldrsh r1, [r9, #0x94]
	mov r3, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x30
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	mov r0, r10
	bl FUN_ov132_0214c60c
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x64]
	mov r0, r9
	sub r1, r2, r1
	str r1, [sp, #0x68]
	bl FUN_02040148
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	mov r0, r10
	mov r3, #0x20000
	bl FUN_ov132_02142cfc
	strh r0, [sp, #0x6c]
	mov r0, r9
	bl FUN_ov16_020f0810
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	mov r0, r10
	mov r3, #0x20000
	bl FUN_ov132_02142cfc
	strh r0, [sp, #0x6e]
	cmp r11, #0
	blt _0214BF68
	mov r0, r9
	bl FUN_ov16_020f07d0
	ldr r2, [r9, #0x84]
	mov r1, r0
	str r2, [sp]
	mov r0, r10
	mov r2, r4
	add r3, sp, #0x44
	bl FUN_ov132_0213f814
	cmp r0, #0
	beq _0214BFBC
_0214BF68:
	mov r11, r5
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x44]
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x64]
	ldr r0, [sp, #0x68]
	str r1, [sp, #0x4c]
	str r0, [sp, #0x50]
	ldrsh r2, [sp, #0x6c]
	ldrsh r1, [sp, #0x6e]
	ldrsb r0, [sp, #0x70]
	strh r2, [sp, #0x54]
	strh r1, [sp, #0x56]
	strb r0, [sp, #0x58]
	ldrb r2, [sp, #0x71]
	ldrb r1, [sp, #0x72]
	ldrb r0, [sp, #0x73]
	strb r2, [sp, #0x59]
	strb r1, [sp, #0x5a]
	strb r0, [sp, #0x5b]
_0214BFBC:
	add r5, r5, #1
	cmp r5, #0x10
	blt _0214BD34
	cmp r11, #0
	blt _0214C018
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x10]
	mov r0, r9
	str r2, [r1]
	ldr r2, [sp, #0x48]
	str r2, [r1, #4]
	bl FUN_ov16_020f07d0
	mov r4, r0
	mov r0, r9
	bl FUN_02040aa8
	str r0, [sp]
	ldr r2, [r9, #0x84]
	ldr r1, [sp, #0x10]
	mov r0, r10
	mov r3, r4
	bl FUN_ov132_0214f240
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C018:
	ldr r2, [sp, #0x10]
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0214b820
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C030: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0214bb04

	arm_func_start FUN_ov132_0214c034
FUN_ov132_0214c034: ; 0x0214C034
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r8, r1
	mov r7, r2
	mov r9, r0
	ldr r4, _0214C418 ; =0x0209A7FC
	mov r0, r8
	mov r11, r3
	ldmia r7, {r5, r6}
	bl FUN_020404cc
	ldr r12, [r7, #0x10]
	ldr r10, [r7, #0xc]
	mov r3, r6
	mov r2, r5
	ldr r1, [r4]
	ldr r0, [r4, #8]
	str r2, [sp, #0x10]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	mov r1, r0, asr #1
	add r0, sp, #0x10
	str r3, [sp, #0x14]
	str r10, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl FUN_0203fbd4
	mov r0, #1
	bl FUN_02040170
	mov r10, r0
	ldr r0, [r10, #0xc]
	cmp r6, r0
	bgt _0214C144
	mov r0, r9
	mov r1, #1
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _0214C144
	ldr r12, [r10, #0xc]
	ldr r3, [r10, #8]
	ldr r1, [r10]
	add r0, sp, #0
	str r1, [sp]
	add r1, sp, #0x10
	mov r2, r8
	str r3, [sp, #8]
	str r12, [sp, #4]
	str r12, [sp, #0xc]
	bl FUN_01ff852c
	cmp r0, #0
	ldrne r1, [r10, #0xc]
	addne sp, sp, #0x20
	subne r1, r1, #1
	movne r0, #1
	strne r1, [r8, #4]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r11, #0
	beq _0214C144
	ldr r1, [r10]
	ldr r0, [r10, #8]
	add sp, sp, #0x20
	add r2, r1, r0
	cmp r5, r2, asr #1
	strlt r1, [r8]
	strge r0, [r8]
	ldr r0, [r10, #0xc]
	sub r0, r0, #1
	str r0, [r8, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C144:
	mov r0, #0
	bl FUN_02040170
	mov r10, r0
	ldr r0, [r10, #4]
	cmp r6, r0
	ble _0214C1E8
	mov r0, r9
	mov r1, #0
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _0214C1E8
	ldmia r10, {r3, r12, lr}
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, r8
	str r3, [sp]
	str r12, [sp, #4]
	str lr, [sp, #8]
	str r12, [sp, #0xc]
	bl FUN_01ff852c
	cmp r0, #0
	ldrne r1, [r10, #4]
	addne sp, sp, #0x20
	addne r1, r1, #1
	movne r0, #1
	strne r1, [r8, #4]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r11, #0
	beq _0214C1E8
	ldr r1, [r10]
	ldr r0, [r10, #8]
	add sp, sp, #0x20
	add r2, r1, r0
	cmp r5, r2, asr #1
	strlt r1, [r8]
	strge r0, [r8]
	ldr r0, [r10, #4]
	add r0, r0, #1
	str r0, [r8, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C1E8:
	ldr r0, _0214C41C ; =0x0209A720
	bl FUN_ov126_0212afb4
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7, #0x5b]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0214C228
	ldr r0, _0214C420 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bge _0214C23C
_0214C228:
	ldr r0, [r7, #0xc]
	cmp r5, r0
	ldreq r0, [r7, #0x10]
	cmpeq r6, r0
	bne _0214C250
_0214C23C:
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_0214c424
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C250:
	ldrb r1, [r7, #0x58]
	mov r0, r9
	bl FUN_ov126_0212d55c
	cmp r0, #0
	beq _0214C2B4
	ldr r1, [r4]
	cmp r5, r1
	ldrle r0, [r7, #0x18]
	cmple r0, r1
	ldrle r0, [r7, #0x10]
	addle sp, sp, #0x20
	strle r0, [r8, #4]
	strle r1, [r8]
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #8]
	cmp r5, r1
	ldrge r0, [r7, #0x18]
	cmpge r0, r1
	ldrge r0, [r7, #0x10]
	addge sp, sp, #0x20
	strge r0, [r8, #4]
	strge r1, [r8]
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C2B4:
	ldr r7, [r4]
	cmp r5, r7
	bge _0214C30C
	ldr r5, [r4, #0xc]
	ldr r3, [r4, #4]
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, r8
	str r7, [sp]
	str r3, [sp, #4]
	str r7, [sp, #8]
	str r5, [sp, #0xc]
	bl FUN_0203fdf0
	cmp r0, #0
	ldrne r1, [r4]
	addne sp, sp, #0x20
	subne r1, r1, #1
	movne r0, #1
	strne r1, [r8]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	sub r5, r0, #1
_0214C30C:
	ldr r7, [r4, #8]
	cmp r5, r7
	ble _0214C358
	ldr r5, [r4, #0xc]
	ldr r3, [r4, #4]
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, r8
	str r7, [sp]
	str r3, [sp, #4]
	str r7, [sp, #8]
	str r5, [sp, #0xc]
	bl FUN_0203fdf0
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #8]
	add r5, r0, #1
_0214C358:
	ldr r7, [r4, #4]
	cmp r6, r7
	bge _0214C3B0
	ldr r6, [r4, #8]
	ldr r3, [r4]
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, r8
	str r3, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	bl FUN_0203fdf0
	cmp r0, #0
	ldrne r1, [r4, #4]
	addne sp, sp, #0x20
	subne r1, r1, #1
	movne r0, #1
	strne r1, [r8, #4]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #4]
	sub r6, r0, #1
_0214C3B0:
	ldr r7, [r4, #0xc]
	cmp r6, r7
	ble _0214C408
	ldr r6, [r4, #8]
	ldr r3, [r4]
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, r8
	str r3, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	bl FUN_0203fdf0
	cmp r0, #0
	ldrne r1, [r4, #0xc]
	addne sp, sp, #0x20
	addne r1, r1, #1
	movne r0, #1
	strne r1, [r8, #4]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0xc]
	add r6, r0, #1
_0214C408:
	stmia r8, {r5, r6}
	mov r0, #1
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C418: .word unk_0209A7FC
_0214C41C: .word unk_0209A720
_0214C420: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214c034

	arm_func_start FUN_ov132_0214c424
FUN_ov132_0214c424: ; 0x0214C424
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _0214C4FC ; =0x0209A7FC
	ldr r3, _0214C500 ; =0x0209A2C0
	ldr r4, [r0]
	ldmia r3, {r2, r3}
	mov r12, r2
	cmp r2, r4
	sublt r12, r4, #1
	ldr r4, [r0, #8]
	mov lr, r3
	cmp r12, r4
	addgt r12, r4, #1
	ldr r4, [r0, #4]
	ldr r6, [r0]
	cmp lr, r4
	sublt lr, r4, #1
	ldr r4, [r0, #0xc]
	ldr r5, [r0, #8]
	cmp lr, r4
	addgt lr, r4, #1
	ldr r4, [r0]
	sub r6, r6, #1
	subs r4, r2, r4
	rsbmi r4, r4, #0
	subs r5, r2, r5
	rsbmi r5, r5, #0
	cmp r4, r5
	ble _0214C4A8
	ldr r4, [r0, #8]
	subs r4, r2, r4
	ldr r2, [r0, #8]
	rsbmi r4, r4, #0
	add r6, r2, #1
_0214C4A8:
	ldr r2, [r0, #4]
	subs r2, r3, r2
	rsbmi r2, r2, #0
	cmp r4, r2
	ble _0214C4D4
	ldr r2, [r0, #4]
	mov r6, r12
	subs r4, r3, r2
	ldr r2, [r0, #4]
	rsbmi r4, r4, #0
	sub lr, r2, #1
_0214C4D4:
	ldr r2, [r0, #0xc]
	subs r2, r3, r2
	rsbmi r2, r2, #0
	cmp r4, r2
	ldrgt r0, [r0, #0xc]
	movgt r6, r12
	addgt lr, r0, #1
	stmia r1, {r6, lr}
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0214C4FC: .word unk_0209A7FC
_0214C500: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214c424

	arm_func_start FUN_ov132_0214c504
FUN_ov132_0214c504: ; 0x0214C504
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r0, [sp, #0x20]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_020404cc
	ldr r12, [r6, #8]
	ldr r3, [r6]
	cmp r3, r12
	ldreq r1, [r6, #4]
	ldreq r0, [r6, #0xc]
	cmpeq r1, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0xc]
	ldr r0, [r6, #4]
	sub r1, r12, r3
	sub r0, r2, r0
	bl FX_Atan2Idx
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	mov r2, r0, lsl #1
	ldr r1, _0214C608 ; =FX_SinCosTable_
	mov r0, r3, lsl #1
	ldrsh r3, [r1, r2]
	ldrsh r2, [r1, r0]
	mov r0, #0x800
	mov r1, r3, asr #0x1f
	mov r12, r1, lsl #0x11
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0x11
	adds lr, r0, r3, lsl #17
	orr r12, r12, r3, lsr #15
	adc r12, r12, #0
	adds r3, r0, r2, lsl #17
	orr r1, r1, r2, lsr #15
	mov r2, lr, lsr #0xc
	orr r2, r2, r12, lsl #20
	sub r0, r5, r2
	add r5, r5, r2
	str r0, [sp]
	adc r1, r1, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	sub r12, r4, r2
	add r3, r4, r2
	ldr r2, [sp, #0x20]
	add r1, sp, #0
	mov r0, r6
	str r12, [sp, #4]
	str r5, [sp, #8]
	str r3, [sp, #0xc]
	mov r4, #0
	bl FUN_01ff852c
	cmp r0, #0
	moveq r0, r4
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0214C608: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0214c504

	arm_func_start FUN_ov132_0214c60c
FUN_ov132_0214c60c: ; 0x0214C60C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r6, #0
	mov r10, r0
	ldr r0, [sp, #0x38]
	ldr r5, [sp, #0x34]
	sub r4, r6, #1
	cmp r5, r4
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r9, [sp, #0x30]
	str r0, [sp, #0x38]
	mvn r4, #0x80000000
	beq _0214C674
	cmp r5, #0
	beq _0214C65C
	cmp r5, #1
	beq _0214C668
	b _0214C67C
_0214C65C:
	mov r8, r6
	mov r7, #0xb
	b _0214C688
_0214C668:
	mov r8, #0xb
_0214C66C:
	mov r7, #0x16
	b _0214C688
_0214C674:
	mov r8, r6
	b _0214C66C
_0214C67C:
	add sp, sp, #0xc
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214C688:
	cmp r8, r7
	bge _0214C734
	mvn r11, #0
_0214C694:
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_0213922c
	movs r5, r0
	beq _0214C728
	cmp r9, r11
	beq _0214C6BC
	ldrsh r0, [r5, #0x94]
	cmp r9, r0
	beq _0214C728
_0214C6BC:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x38]
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_021393a8
	cmp r0, #0
	bne _0214C728
	ldr r2, [r5, #0x84]
	ldr r0, [sp]
	ldr r1, [r2]
	ldr r2, [r2, #4]
	subs r1, r0, r1
	ldr r0, [sp, #4]
	rsbmi r1, r1, #0
	subs r2, r0, r2
	rsbmi r2, r2, #0
	cmp r1, r4
	cmple r2, r4
	bgt _0214C728
	mov r0, r10
	bl FUN_01ffba80
	cmp r6, #0
	beq _0214C720
	cmp r4, r0
	ble _0214C728
_0214C720:
	mov r4, r0
	mov r6, r5
_0214C728:
	add r8, r8, #1
	cmp r8, r7
	blt _0214C694
_0214C734:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	strne r4, [r0]
	mov r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0214c60c

	arm_func_start FUN_ov132_0214c74c
FUN_ov132_0214c74c: ; 0x0214C74C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	movs r8, r2
	mov r10, r0
	ldrne r0, [r8, #0x84]
	ldr r6, [sp, #0x38]
	cmpne r0, #0
	mov r9, r1
	mov r7, r3
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	mvnne r0, #0x80000000
	strne r0, [r6]
	ldr r1, [r8, #0x84]
	mov r0, r10
	mov r2, r9
	bl FUN_01ffba50
	mov r4, r0
	ldr r1, [r8, #0x84]
	mov r0, r9
	bl FUN_020403a8
	ldrb r1, [r9, #0x5b]
	str r0, [sp]
	tst r1, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrne r1, [r9]
	ldrne r0, [r9, #4]
	strne r1, [r7]
	strne r0, [r7, #4]
	bne _0214CAC8
	ldr r0, [r9, #0x48]
	cmp r0, #0
	blt _0214C880
	bl FUN_ov16_020efa80
	mov r5, r0
	ldr r0, [r5, #0x84]
	ldr r2, _0214CBA4 ; =0x00002AAA
	ldrh r0, [r0, #0x18]
	ldr r1, [sp]
	bl FUN_020405a4
	cmp r0, #0
	movne r0, r4, asr #3
	addne r3, r0, r0, lsl #1
	ldr r0, [r5, #0x84]
	moveq r3, r4, asr #2
	ldrh r4, [r0, #0x18]
	ldr r1, _0214CBA8 ; =FX_SinCosTable_
	ldr r2, [r9]
	mov r4, r4, asr #4
	mov r4, r4, lsl #1
	add r4, r4, #1
	mov r4, r4, lsl #1
	ldrsh r4, [r1, r4]
	ldr r0, [r9, #4]
	smull r11, r4, r3, r4
	adds r11, r11, #0x800
	adc r4, r4, #0
	mov r11, r11, lsr #0xc
	orr r11, r11, r4, lsl #20
	add r2, r2, r11
	str r2, [r7]
	ldr r2, [r5, #0x84]
	ldrh r2, [r2, #0x18]
	mov r2, r2, asr #4
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	smull r2, r1, r3, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r0, r0, r2
	b _0214CAC4
_0214C880:
	ldr r0, [r10, #0x194]
	mov r1, r9
	bl FUN_ov132_02159124
	str r0, [sp, #4]
	ldrh r11, [r9, #0x52]
	mov r0, r10
	mov r1, r8
	mov r2, #0
	bl FUN_ov132_02142870
	mov r5, r0
	ldr r1, [sp]
	ldr r2, _0214CBA4 ; =0x00002AAA
	mov r0, r11
	bl FUN_020405a4
	cmp r0, #0
	mov r0, r11
	mov r2, #1
	beq _0214C970
	ldr r1, [sp]
	bl FUN_0204047c
	ldr r0, [sp, #4]
	mov r1, r0
	add r1, r1, r5
	bl FX_Div
	smull r0, r1, r4, r0
	adds r2, r0, #0x800
	mov r0, #0
	adc r0, r1, r0
	mov r5, r2, lsr #0xc
	orr r5, r5, r0, lsl #20
	ldr r1, [sp, #4]
	mov r0, r4
	bl FX_Div
	cmp r0, #0x800
	ldrlt r0, [sp, #4]
	ldr r1, _0214CBA8 ; =FX_SinCosTable_
	addlt r5, r5, r0, asr #1
	mov r0, r11, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	mov r2, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r3, [r1, r2]
	ldrsh r2, [r1, r0]
	ldr r1, [r9]
	smull r0, r4, r5, r3
	adds r0, r0, #0x800
	smull r3, r2, r5, r2
	adc r4, r4, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r4, lsl #20
	add r4, r1, r0
	adds r3, r3, #0x800
	adc r0, r2, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r9, #4]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r4, [r7]
	b _0214CAC4
_0214C970:
	ldr r1, [sp]
	bl FUN_0204047c
	ldr r1, [sp, #4]
	mov r0, r4
	bl FX_Div
	cmp r0, #0x800
	bge _0214C9A8
	ldr r1, [sp]
	mov r0, r11
	mov r2, #0x4000
	bl FUN_020405a4
	cmp r0, #0
	ldrne r0, [sp, #4]
	addne r4, r4, r0, asr #1
_0214C9A8:
	mov r0, r11, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	mov r2, r0, lsl #1
	ldr r1, _0214CBA8 ; =FX_SinCosTable_
	mov r0, r3, lsl #1
	ldrsh r3, [r1, r2]
	ldrsh r2, [r1, r0]
	ldr r1, [r9]
	smull r0, r11, r4, r3
	adds r0, r0, #0x800
	smull r3, r2, r4, r2
	adc r11, r11, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r11, lsl #20
	adds r4, r3, #0x800
	add r3, r1, r0
	adc r0, r2, #0
	mov r1, r4, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r2, [r9, #4]
	mov r0, r10
	add r4, r2, r1
	ldr r2, [r8, #0x84]
	add r1, sp, #8
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	mov r11, #0
	bl FUN_01ffba50
	cmp r5, #0
	ble _0214CAB8
	mov r1, r5
	mov r4, r11
	bl _s32_div_f
	movs r5, r0
	ldrb r0, [r9, #0x5a]
	movmi r5, r11
	mov r1, r9
	cmp r0, #2
	ldr r0, [r10, #0x194]
	moveq r5, r5, asr #1
	bl FUN_ov132_02159124
	ldrh r2, [r9, #0x52]
	mul r1, r5, r0
	mov r0, r2, asr #4
	mov r0, r0, lsl #1
	add r3, r0, #1
	ldr r2, _0214CBA8 ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	mov r0, r0, lsl #1
	ldrsh r3, [r2, r3]
	ldrsh r2, [r2, r0]
	smull r0, r5, r1, r3
	adds r0, r0, #0x800
	smull r3, r2, r1, r2
	adc r5, r5, r4
	adds r1, r3, #0x800
	mov r3, r0, lsr #0xc
	adc r0, r2, r4
	mov r1, r1, lsr #0xc
	ldr r2, [r9]
	orr r3, r3, r5, lsl #20
	add r3, r2, r3
	ldr r2, [r9, #4]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r3, [r7]
	b _0214CAC4
_0214CAB8:
	ldr r0, [sp, #8]
	str r0, [r7]
	ldr r0, [sp, #0xc]
_0214CAC4:
	str r0, [r7, #4]
_0214CAC8:
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	beq _0214CB40
	mov r0, r10
	mov r1, r9
	mov r2, r7
	bl FUN_01ffba50
	mov r4, r0
	mov r0, r10
	mov r1, r9
	add r2, r9, #0x18
	bl FUN_01ffba50
	cmp r4, r0
	ldrlt r1, [r9, #0x1c]
	ldrlt r0, [r9, #0x18]
	stmltia r7, {r0, r1}
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0214CB40
	mov r0, r8
	bl FUN_ov16_020f07d0
	bl FUN_02040188
	mov r1, r0
	mov r0, r7
	mov r2, #0x8000
	bl FUN_02040c34
_0214CB40:
	ldr r2, [r8, #0x84]
	mov r0, r10
	mov r1, r7
	bl FUN_01ffba50
	mov r5, r0
	mov r0, r10
	mov r1, #5
	bl FUN_ov132_02144a84
	mov r1, r7
	mov r4, r0
	bl FUN_02040764
	cmp r0, #0
	bne _0214CB90
	ldrb r0, [sp, #0x3c]
	cmp r0, #0
	beq _0214CB90
	mov r0, r7
	mov r1, r4
	mov r2, #0
	bl FUN_02040c34
_0214CB90:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214CBA4: .word 0x00002AAA
_0214CBA8: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0214c74c

	arm_func_start FUN_ov132_0214cbac
FUN_ov132_0214cbac: ; 0x0214CBAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r10, #0
	mov r6, r3
	mov r9, r0
	mov r7, r2
	mov r0, r6
	mov r4, r10
	mov r8, r1
	mov r5, #1
	bl FUN_020404cc
	cmp r7, #0
	ldrnesh r4, [r7]
	mov r0, r8
	bl FUN_02040b4c
	cmp r0, #0
	cmpne r4, #0xa
	movne r4, #0xa
	cmp r4, #0x10
	addls pc, pc, r4, lsl #2
	b _0214D044
_0214CC00: ; jump table
	b _0214CC44 ; case 0
	b _0214CC64 ; case 1
	b _0214CC7C ; case 2
	b _0214CE54 ; case 3
	b _0214CC9C ; case 4
	b _0214CCF4 ; case 5
	b _0214CD24 ; case 6
	b _0214CD78 ; case 7
	b _0214CE54 ; case 8
	b _0214CDAC ; case 9
	b _0214CDB8 ; case 10
	b _0214CE54 ; case 11
	b _0214CE0C ; case 12
	b _0214CE78 ; case 13
	b _0214CEA4 ; case 14
	b _0214CEBC ; case 15
	b _0214CEF0 ; case 16
_0214CC44:
	ldr r2, [r8, #0x84]
	add sp, sp, #0x10
	ldr r1, [r2]
	mov r0, #0
	str r1, [r6]
	ldr r1, [r2, #4]
	str r1, [r6, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214CC64:
	ldr r1, [r8, #0x88]
_0214CC68:
	ldr r0, [r1]
_0214CC6C:
	str r0, [r6]
	ldr r0, [r1, #4]
_0214CC74:
	str r0, [r6, #4]
	b _0214D050
_0214CC7C:
	ldr r0, [r8, #0x88]
	ldrsb r0, [r0, #0x2e]
	bl FUN_ov16_020efa80
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	b _0214CD54
_0214CC9C:
	ldr r0, [r8, #0x88]
	bl FUN_02040a80
	cmp r0, #0
	bne _0214CCC4
	ldr r1, [r8, #0x84]
	ldr r2, [r8, #0x88]
	mov r0, r9
	bl FUN_01ffba50
	cmp r0, #0x4000
	bge _0214CCF0
_0214CCC4:
	mov r4, #0x10000
_0214CCC8:
	ldr r3, [r8, #0x84]
	str r4, [sp]
	mov r4, #0x1e000
	mov r0, r9
	mov r1, r8
	mov r2, r6
	str r4, [sp, #4]
	bl FUN_ov132_0214d5f4
_0214CCE8:
	mov r5, r0
	b _0214D050
_0214CCF0:
	b _0214CC64
_0214CCF4:
	ldr r3, [r8, #0x84]
	mov r2, #0
	ldr r1, [r3]
	mov r0, r9
	str r1, [r6]
	ldr r3, [r3, #4]
	mov r1, r8
	str r3, [r6, #4]
	mov r3, r2
	str r2, [sp]
	bl FUN_ov132_0213f55c
	b _0214D050
_0214CD24:
	ldr r0, [r8, #0x88]
	ldrsb r0, [r0, #0x2e]
	bl FUN_ov16_020efa80
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r3, _0214D0B0 ; =0x0209A2C0
	ldrsh r2, [r0, #0x94]
	ldr r1, [r3, #0x48]
	cmp r2, r1
	bne _0214CD5C
_0214CD54:
	ldr r1, [r0, #0x84]
	b _0214CC68
_0214CD5C:
	mov r1, #0xa000
	str r1, [sp]
	ldr r2, [r0, #0x84]
	mov r0, r9
	mov r1, r6
	bl FUN_ov132_021407dc
	b _0214D050
_0214CD78:
	ldr r0, [r8, #0x88]
	bl FUN_02040a80
	cmp r0, #0
	bne _0214CDA0
	ldr r1, [r8, #0x84]
	ldr r2, [r8, #0x88]
	mov r0, r9
	bl FUN_01ffba50
	cmp r0, #0x1000
	bge _0214CDA8
_0214CDA0:
	mov r4, #0x40000
	b _0214CCC8
_0214CDA8:
	b _0214CC64
_0214CDAC:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214CDB8:
	mov r0, r8
	bl FUN_02040b4c
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x88]
	ldrsh r1, [r0, #0x86]
	cmp r1, #0
	blt _0214CDF0
	bl FUN_02040a80
	cmp r0, #0
	bne _0214CDF0
	b _0214CC64
_0214CDF0:
	ldr r1, [r8, #0x88]
	ldrb r0, [r1, #0x85]
	add r2, r1, #0x34
	sub r1, r0, #1
	ldr r0, [r2, r1, lsl #3]
	add r1, r2, r1, lsl #3
	b _0214CC6C
_0214CE0C:
	ldr r0, [r8, #0x88]
	bl FUN_02040a80
	cmp r0, #0
	bne _0214CE34
	ldr r1, [r8, #0x84]
	ldr r2, [r8, #0x88]
	mov r0, r9
	bl FUN_01ffba50
	cmp r0, #0x1000
	bge _0214CE50
_0214CE34:
	ldr r2, [r8, #0x84]
	mov r0, r9
	mov r1, r8
	mov r3, r6
	str r10, [sp]
	bl FUN_ov132_0214aabc
	b _0214CCE8
_0214CE50:
	b _0214CC64
_0214CE54:
	ldr r1, _0214D0B0 ; =0x0209A2C0
	mov r0, r9
	mov r2, r8
	mov r3, r6
	str r10, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl FUN_ov132_0214c74c
	b _0214CCE8
_0214CE78:
	ldr r2, [r8, #0x84]
	mov r0, r9
	mov r1, r8
	mov r3, r6
	str r10, [sp]
	bl FUN_ov132_0214ad30
	cmp r0, #0
	bne _0214D050
	add sp, sp, #0x10
	mov r0, r10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214CEA4:
	ldr r2, _0214D0B0 ; =0x0209A2C0
	mov r0, r9
	mov r1, r8
	mov r3, r6
	bl FUN_ov132_0214d0b8
	b _0214CCE8
_0214CEBC:
	ldr r4, _0214D0B4 ; =0x0209A720
	mov r0, r8
	ldr r1, [r4, #0xdc]
	sub r1, r1, #0x1e000
	str r1, [r6]
	bl FUN_ov16_020f07d0
	cmp r0, #0
	ldr r0, [r4, #0xd8]
	addeq r0, r0, #0x1e000
	streq r0, [r6, #4]
	subne r0, r0, #0x1e000
	strne r0, [r6, #4]
	b _0214D050
_0214CEF0:
	ldr r0, [r8, #0x88]
	ldrsb r0, [r0, #0x2e]
	bl FUN_ov16_020efa80
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r4, #0x88]
	ldr r0, [r4, #0x84]
	ldr r3, [r1]
	ldr r2, [r0]
	ldr r1, [r1, #4]
	ldr r0, [r0, #4]
	subs r2, r3, r2
	sub r0, r1, r0
	str r2, [sp, #8]
	rsbmi r2, r2, #0
	str r0, [sp, #0xc]
	cmp r2, #0x10
	mov r10, #0
	bgt _0214CF58
	ldr r0, [sp, #0xc]
	cmp r0, #0
	rsblt r0, r0, #0
	cmp r0, #0x10
	ble _0214CFBC
_0214CF58:
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	smull r0, r12, r1, r1
	smull r2, r1, r3, r3
	adds r0, r0, #0x800
	adc r3, r12, r10
	mov r12, r0, lsr #0xc
	adds r2, r2, #0x800
	adc r0, r1, r10
	mov r1, r2, lsr #0xc
	orr r12, r12, r3, lsl #20
	orr r1, r1, r0, lsl #20
	mov r0, r12, asr #4
	add r0, r0, r1, asr #4
	bl FX_Sqrt
	mov r10, r0, lsl #2
	ldr r0, [sp, #8]
	mov r1, r10
	bl FX_Div
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, r10
	bl FX_Div
	str r0, [sp, #0xc]
	b _0214CFDC
_0214CFBC:
	mov r0, r4
	str r10, [sp, #8]
	bl FUN_ov16_020f07d0
	cmp r0, #0
	moveq r0, #0x1000
	streq r0, [sp, #0xc]
	subne r0, r10, #0x1000
	strne r0, [sp, #0xc]
_0214CFDC:
	ldr r10, [sp, #8]
	ldr lr, [sp, #0xc]
	mov r3, #0x10
	umull r2, r1, r10, r3
	ldr r0, [r4, #0x84]
	mov r4, r10, asr #0x1f
	adds r2, r2, #0x800
	mla r1, r4, r3, r1
	umull r12, r10, lr, r3
	mov r4, lr, asr #0x1f
	adc r1, r1, #0
	adds r12, r12, #0x800
	mla r10, r4, r3, r10
	mov lr, r2, lsr #0xc
	adc r2, r10, #0
	mov r3, r12, lsr #0xc
	ldr r4, [r0]
	orr lr, lr, r1, lsl #20
	add r1, r4, lr
	ldr r0, [r0, #4]
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [r6]
	b _0214CC74
_0214D044:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214D050:
	ldrh r0, [r7, #0x12]
	tst r0, #0x800
	beq _0214D0A4
	mov r0, r8
	bl FUN_02040128
	mov r1, r0
	mov r3, #0
	mov r0, r9
	mov r2, #0xc000
	str r3, [sp]
	bl FUN_ov132_0213f37c
	mov r4, r0
	mov r0, r8
	bl FUN_ov16_020f07d0
	mov r3, r0
	ldr r2, [r6, #4]
	mov r0, r9
	mov r1, r4
	bl FUN_01ffb9b0
	cmp r0, #0
	strne r4, [r6, #4]
_0214D0A4:
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214D0B0: .word unk_0209A2C0
_0214D0B4: .word unk_0209A720
	arm_func_end FUN_ov132_0214cbac

	arm_func_start FUN_ov132_0214d0b8
FUN_ov132_0214d0b8: ; 0x0214D0B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	mov r8, r2
	mov r10, r0
	mov r9, r1
	mov r7, r3
	bl FUN_ov126_021375d4
	ldrb r1, [r8, #0x58]
	mov r0, r10
	bl FUN_ov126_0212d4b4
	mov r0, r9
	bl FUN_ov16_020f07d0
	ldr r1, _0214D314 ; =0x0209A2C0
	mov r6, r0
	ldrb r0, [r1, #0x5c]
	ldmia r8, {r4, r5}
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0214D138
	ldrb r0, [r8, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0214D138
	mov r0, r4
	mov r1, r5
	bl FUN_02040644
	cmp r0, #0
	bne _0214D158
_0214D138:
	ldr r2, [r9, #0x84]
	add sp, sp, #0x24
	ldr r1, [r2]
	mov r0, #0
	str r1, [r7]
	ldr r1, [r2, #4]
	str r1, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0214D158:
	ldrh r1, [r8, #0x52]
	ldr r2, _0214D318 ; =FX_SinCosTable_
	mov r0, r10
	mov r1, r1, asr #4
	mov r3, r1, lsl #1
	add r1, r3, #1
	mov r3, r3, lsl #1
	mov r1, r1, lsl #1
	ldrsh r3, [r2, r3]
	ldrsh r2, [r2, r1]
	mov r1, r9
	add r3, r5, r3, lsl #6
	add r2, r4, r2, lsl #6
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _0214D20C
	ldr r1, [r9, #0x84]
	mov r0, r8
	bl FUN_020403a8
	mov r1, r0
	ldrh r0, [r8, #0x52]
	ldr r2, _0214D31C ; =0x00000AAA
	bl FUN_020405a4
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #0x84]
	add r1, sp, #0x14
	ldmia r0, {r2, r3}
	mov r0, r10
	str r7, [sp]
	bl FUN_ov132_0214c504
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldmia r7, {r0, r1}
	bl FUN_02040644
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0214D20C:
	ldr r0, [r9, #0x84]
	add r1, sp, #0x14
	ldmia r0, {r2, r3}
	mov r0, r10
	str r7, [sp]
	bl FUN_ov132_0214c504
	cmp r0, #0
	bne _0214D24C
	ldr r2, [r9, #0x84]
	add sp, sp, #0x24
	ldr r1, [r2]
	mov r0, #0
	str r1, [r7]
	ldr r1, [r2, #4]
	str r1, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0214D24C:
	mov r0, r10
	mov r1, #7
	bl FUN_ov132_02144a84
	mov r1, r7
	mov r4, r0
	bl FUN_02040764
	cmp r0, #0
	bne _0214D27C
	mov r0, r7
	mov r1, r4
	mov r2, #0x4000
	bl FUN_02040c34
_0214D27C:
	mov r0, r10
	mov r1, r6
	mov r2, r7
	bl FUN_ov132_02140b08
	cmp r0, #0
	bne _0214D308
	mov r0, r10
	mov r1, r6
	mov r2, #0x2000
	bl FUN_ov132_0213f5d4
	mov r4, r0
	mov r0, r6
	bl FUN_02040188
	ldr r1, [r0, #8]
	ldr r0, [r0]
	sub r5, r1, #0x1000
	add r3, r0, #0x1000
	add r0, sp, #0x14
	add r1, sp, #4
	mov r2, r7
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	bl FUN_01ff852c
	cmp r0, #0
	bne _0214D308
	ldr r2, [r9, #0x84]
	add sp, sp, #0x24
	ldr r1, [r2]
	mov r0, #0
	str r1, [r7]
	ldr r1, [r2, #4]
	str r1, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0214D308:
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0214D314: .word unk_0209A2C0
_0214D318: .word FX_SinCosTable_
_0214D31C: .word 0x00000AAA
	arm_func_end FUN_ov132_0214d0b8

	arm_func_start FUN_ov132_0214d320
FUN_ov132_0214d320: ; 0x0214D320
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r5, r2
	mov r6, r1
	mov r4, r3
	bl FUN_ov126_021375d4
	ldrh r1, [r5, #0x52]
	ldr r3, [r6, #0x84]
	ldr r2, _0214D3B0 ; =FX_SinCosTable_
	ldmia r3, {r0, lr}
	mov r1, r1, asr #4
	mov r3, r1, lsl #1
	add r1, r3, #1
	mov r6, r1, lsl #1
	mov r1, r3, lsl #1
	ldmia r5, {r3, r12}
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r6]
	sub r8, r0, #0x20000
	add r7, r0, #0x20000
	add r6, r3, r2, lsl #6
	add r5, r12, r1, lsl #6
	add r0, sp, #0x10
	add r1, sp, #0
	mov r2, r4
	str r8, [sp]
	str r7, [sp, #8]
	str lr, [sp, #4]
	str lr, [sp, #0xc]
	str r3, [sp, #0x10]
	str r12, [sp, #0x14]
	str r6, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl FUN_01ff852c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0214D3B0: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0214d320

	arm_func_start FUN_ov132_0214d3b4
FUN_ov132_0214d3b4: ; 0x0214D3B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	subs r4, r6, #1
	bmi _0214D408
	mov r9, r4
	mov r8, #0x10
_0214D3D4:
	add r0, r7, r4, lsl #4
	ldr r2, [r0, #8]
	ldr r1, [r5, #8]
	cmp r2, r1
	blt _0214D408
	cmp r4, r9
	bge _0214D400
	add r1, r4, #1
	mov r2, r8
	add r1, r7, r1, lsl #4
	bl MI_CpuCopy8
_0214D400:
	subs r4, r4, #1
	bpl _0214D3D4
_0214D408:
	add r4, r4, #1
	cmp r4, r6
	bge _0214D424
	mov r0, r5
	add r1, r7, r4, lsl #4
	mov r2, #0x10
	bl MI_CpuCopy8
_0214D424:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov132_0214d3b4

	arm_func_start FUN_ov132_0214d42c
FUN_ov132_0214d42c: ; 0x0214D42C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	ldr r9, [sp, #0x60]
	ldr r10, [sp, #0x5c]
	mov r11, r3
	cmp r9, #3
	mov r3, #0
	addlt sp, sp, #0x34
	movlt r0, r3
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	mov r7, r3
	ble _0214D488
	mov r6, #0x80000000
	mvn r4, #0x80000000
_0214D468:
	str r6, [r10, r7, lsl #4]
	add r5, r10, r7, lsl #4
	str r6, [r5, #4]
	str r4, [r5, #8]
	add r7, r7, #1
	str r3, [r5, #0xc]
	cmp r7, r9
	blt _0214D468
_0214D488:
	ldr r4, [sp, #0x58]
	add r3, sp, #0xc
	stmia sp, {r3, r4}
	str r1, [sp, #8]
	mov r1, r2
	ldmia r2, {r4, r5}
	add r3, sp, #0x18
	mov r2, #3
	bl FUN_ov132_0213f1d8
	mov r6, r0
	mov r7, #0
	mov r8, r7
	cmp r6, #0
	ble _0214D50C
_0214D4C0:
	add r0, sp, #0x18
	ldr r0, [r0, r8, lsl #2]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0214D500
	ldr r2, [r0, #0x84]
	add r1, r10, r7, lsl #4
	ldr r2, [r2]
	str r2, [r10, r7, lsl #4]
	ldr r0, [r0, #0x84]
	add r7, r7, #1
	ldr r0, [r0, #4]
	str r0, [r1, #4]
	add r0, sp, #0xc
	ldr r0, [r0, r8, lsl #2]
	str r0, [r1, #8]
_0214D500:
	add r8, r8, #1
	cmp r8, r6
	blt _0214D4C0
_0214D50C:
	ldr r3, [r11, #4]
	mov r2, #0x80000000
	cmp r5, r3
	sub r1, r2, #1
	mov r0, #0
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	suble r3, r5, #1
	str r3, [sp, #0x28]
	subs r3, r5, r3
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	rsbmi r3, r3, #0
	add r2, sp, #0x24
	mov r0, r10
	mov r1, r9
	str r4, [sp, #0x24]
	str r3, [sp, #0x2c]
	bl FUN_ov132_0214d3b4
	ldr r0, [r11]
	add r2, sp, #0x24
	cmp r4, r0
	suble r0, r4, #1
	subs r3, r4, r0
	str r0, [sp, #0x24]
	rsbmi r3, r3, #0
	mov r0, r10
	mov r1, r9
	str r5, [sp, #0x28]
	str r3, [sp, #0x2c]
	bl FUN_ov132_0214d3b4
	ldr r0, [r11, #0xc]
	add r2, sp, #0x24
	cmp r5, r0
	addge r0, r5, #1
	subs r3, r0, r5
	str r0, [sp, #0x28]
	rsbmi r3, r3, #0
	mov r0, r10
	mov r1, r9
	str r4, [sp, #0x24]
	str r3, [sp, #0x2c]
	bl FUN_ov132_0214d3b4
	ldr r0, [r11, #8]
	add r2, sp, #0x24
	cmp r4, r0
	addge r0, r4, #1
	subs r3, r0, r4
	str r0, [sp, #0x24]
	rsbmi r3, r3, #0
	mov r0, r10
	mov r1, r9
	str r5, [sp, #0x28]
	str r3, [sp, #0x2c]
	bl FUN_ov132_0214d3b4
	mov r0, #1
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0214d42c

	arm_func_start FUN_ov132_0214d5f4
FUN_ov132_0214d5f4: ; 0x0214D5F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x68
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x94]
	movs r10, r3
	str r0, [sp, #0x94]
	mvn r0, #0x80000000
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp, #0x24]
	beq _0214D630
	mov r0, r10
	bl FUN_02040a80
	cmp r0, #0
	beq _0214D638
_0214D630:
	ldr r0, [sp, #0x10]
	ldr r10, [r0, #0x84]
_0214D638:
	ldr r0, [sp, #0x10]
	bl FUN_02040aa8
	cmp r0, #0
	beq _0214D654
	ldr r0, [sp, #0xc]
	mov r1, #4
	b _0214D65C
_0214D654:
	ldr r0, [sp, #0xc]
	mov r1, #3
_0214D65C:
	bl FUN_ov132_02144a84
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x84]
	ldr r0, [sp, #0x18]
	bl FUN_02040764
	cmp r0, #0
	bne _0214D6BC
	ldr r0, [sp, #0x10]
	mov r4, #1
	ldr r3, [r0, #0x84]
	ldr r0, [sp, #0x14]
	ldr r2, [r3]
	mov r1, r0
	str r2, [r1]
	ldr r5, [r3, #4]
	mov r3, r0
	ldr r1, [sp, #0x18]
	mov r2, r4
	str r5, [r3, #4]
	bl FUN_02040c34
	add sp, sp, #0x68
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214D6BC:
	ldr r0, [sp, #0x90]
	add r5, sp, #0x38
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x18]
	mov r2, r10
	str r5, [sp, #4]
	mov r4, #3
	str r4, [sp, #8]
	bl FUN_ov132_0214d42c
	cmp r0, #0
	bne _0214D718
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [r0, #0x84]
	add sp, sp, #0x68
	ldr r2, [r3]
	mov r0, #0
	str r2, [r1]
	ldr r2, [r3, #4]
	str r2, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214D718:
	add r4, sp, #0x30
	add r2, sp, #0x48
	add r3, sp, #0x58
	mov r0, r4
	mov r1, r5
	bl FUN_0203fc98
	cmp r0, #0
	bne _0214D748
	mov r0, r5
_0214D73C:
	mov r1, r10
	bl FUN_020403a8
	b _0214D9D4
_0214D748:
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r2, r5
	bl FUN_01ffba50
	mov r6, r0
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r2, r10
	bl FUN_01ffba50
	cmp r6, r0
	bge _0214D77C
	mov r0, r4
	b _0214D73C
_0214D77C:
	mov r8, #0
	add r7, sp, #0x28
_0214D784:
	mov r0, r4
	add r1, r5, r8, lsl #4
	bl FUN_020403a8
	mov r1, r8, lsl #1
	strh r0, [r7, r1]
	add r8, r8, #1
	cmp r8, #3
	blt _0214D784
	mov r0, r4
	mov r1, r10
	bl FUN_020403a8
	add r8, sp, #0x48
	add r7, sp, #0x58
	mov r0, r10
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl FUN_020409d4
	cmp r0, #0
	bne _0214D8B8
	mov r9, #1
	mov r8, #0
	add r5, sp, #0x38
_0214D7E0:
	add r4, r8, #1
	add r7, r5, r8, lsl #4
	cmp r4, #3
	add r6, r8, #2
	subge r4, r4, #3
	cmp r6, #3
	mov r0, r7
	mov r1, r10
	subge r6, r6, #3
	bl FUN_020403a8
	add r1, r5, r4, lsl #4
	mov r4, r0
	mov r0, r7
	bl FUN_020403a8
	add r1, r5, r6, lsl #4
	mov r6, r0
	mov r0, r7
	bl FUN_020403a8
	mov r2, r0
	mov r1, r6
	mov r0, r4
	mov r3, r9
	str r9, [sp]
	bl FUN_020408d8
	cmp r0, #0
	bne _0214D854
	add r8, r8, #1
	cmp r8, #2
	blt _0214D7E0
_0214D854:
	add r0, r8, #1
	cmp r0, #3
	add r1, r8, #2
	subge r0, r0, #3
	cmp r1, #3
	subge r1, r1, #3
	mov r3, r1, lsl #1
	add r2, sp, #0x28
	mov r1, r0, lsl #1
	mov r0, r8, lsl #1
	ldrh r6, [r2, r1]
	mov r4, #1
	ldrh r5, [r2, r3]
	ldrh r0, [r2, r0]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r4, [sp]
	bl FUN_020408d8
	cmp r0, #0
	movne r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	b _0214D9D0
_0214D8B8:
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl FUN_020409d4
	cmp r0, #0
	bne _0214D8FC
_0214D8D4:
	mov r0, r10
	mov r1, r4
	bl FUN_020403a8
	mov r5, r0
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r2, r10
	bl FUN_01ffba50
	str r0, [sp, #0x24]
	b _0214D9D8
_0214D8FC:
	ldr r0, [sp, #0x40]
	sub r1, r6, r0
	ldr r0, [sp, #0x94]
	cmp r1, r0
	ble _0214D914
	b _0214D8D4
_0214D914:
	mov r5, #0
	str r5, [sp, #0x20]
	mov r8, r5
	add r4, sp, #0x28
	mov r11, #1
_0214D928:
	add r0, r8, #1
	cmp r0, #3
	subge r0, r0, #3
	add r1, r8, #2
	cmp r1, #3
	mov r0, r0, lsl #1
	subge r1, r1, #3
	ldrh r6, [r4, r0]
	mov r0, r1, lsl #1
	mov r1, r8, lsl #1
	ldrh r7, [r4, r1]
	ldrh r0, [r4, r0]
	mov r1, r6
	mov r3, r11
	mov r2, r7
	str r11, [sp]
	bl FUN_020408d8
	cmp r0, #0
	mov r9, r11
	movne r9, #0
	mov r0, r7
	mov r1, r6
	mov r2, r9
	bl FUN_0204047c
	cmp r0, r5
	strhi r8, [sp, #0x20]
	add r8, r8, #1
	movhi r5, r0
	strhi r9, [sp, #0x1c]
	cmp r8, #3
	blt _0214D928
	ldr r0, [sp, #0x20]
	add r2, sp, #0x28
	add r1, r0, #1
	ldr r0, [sp, #0x20]
	cmp r1, #3
	subge r1, r1, #3
	mov r0, r0, lsl #1
	mov r1, r1, lsl #1
	ldrh r0, [r2, r0]
	ldrh r1, [r2, r1]
	ldr r2, [sp, #0x1c]
_0214D9D0:
	bl FUN_020403f4
_0214D9D4:
	mov r5, r0
_0214D9D8:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x94]
	ldr r2, _0214DAA8 ; =FX_SinCosTable_
	cmp r1, r0
	ldrlt r0, [sp, #0x24]
	mov r1, #0
	strlt r0, [sp, #0x94]
	mov r0, r5, asr #4
	mov r4, r0, lsl #1
	add r0, r4, #1
	mov r0, r0, lsl #1
	ldrsh r3, [r2, r0]
	mov r0, r4, lsl #1
	ldrsh r2, [r2, r0]
	ldr r0, [sp, #0x94]
	smull r0, r4, r3, r0
	adds r5, r0, #0x800
	ldr r0, [sp, #0x94]
	adc r4, r4, r1
	smull r0, r3, r2, r0
	adds r2, r0, #0x800
	mov r0, r5, lsr #0xc
	ldr r5, [r10]
	orr r0, r0, r4, lsl #20
	add r4, r5, r0
	ldr r0, [sp, #0x14]
	str r4, [r0]
	adc r0, r3, r1
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r2, [r10, #4]
	ldr r0, [sp, #0x14]
	add r4, r2, r1
	mov r3, r0
	ldr r2, [sp, #0x18]
	mov r1, r10
	str r4, [r3, #4]
	bl FUN_02040c4c
	ldr r0, [sp, #0x10]
	bl FUN_ov16_020f07d0
	mov r4, r0
	ldr r0, [sp, #0x10]
	bl FUN_02040aa8
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	mov r2, r10
	mov r3, r4
	bl FUN_ov132_0214f240
	mov r0, #1
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DAA8: .word FX_SinCosTable_
	arm_func_end FUN_ov132_0214d5f4

	arm_func_start FUN_ov132_0214daac
FUN_ov132_0214daac: ; 0x0214DAAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	mov r9, r1
	mov r5, r2
	ldr r4, _0214DFD0 ; =0x0209A2C0
	bl FUN_ov132_021447c8
	cmp r0, #0
	bne _0214DB00
	cmp r9, #0
	beq _0214DB00
	ldrsh r0, [r9, #0x94]
	ldr r1, [r4, #0x4c]
	cmp r1, r0
	bne _0214DB0C
	ldrb r0, [r4, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0214DB0C
_0214DB00:
	add sp, sp, #0x18
	mov r0, #9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DB0C:
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _0214DB34
	ldr r0, [r4, #0x48]
	add sp, sp, #0x18
	cmp r0, #0
	movge r0, #9
	movlt r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DB34:
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0214DDC4
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138ec0
	cmp r0, #0
	beq _0214DDC4
	mov r0, r10
	mov r1, r9
	mov r2, r5
	bl FUN_ov132_0214e0c8
	mov r5, r0
	mov r6, #0
	mov r0, r10
	str r6, [sp, #4]
	bl FUN_ov126_021375d4
	mov r7, r0
	mov r0, r9
	bl FUN_0206d6c4
	cmp r0, #0
	bne _0214DC2C
	ldrb r0, [r4, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, r6
	cmp r0, #0
	cmpne r7, #0
	beq _0214DC2C
	ldrb r0, [r7, #0xf]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0214DC2C
	ldrb r0, [r7, #0xf]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0214DBF8
	ldrb r0, [r4, #0x5f]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0214DC2C
_0214DBF8:
	ldr r0, [r9, #0x84]
	ldr r1, [r0, #4]
	mov r0, r10
	str r1, [sp]
	ldr r3, [r9, #0x84]
	ldmia r4, {r1, r2}
	ldr r3, [r3]
	bl FUN_01ffba30
	mov r6, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_0212f36c
	str r0, [sp, #4]
_0214DC2C:
	mov r0, r10
	bl FUN_ov126_021375d4
	mov r8, r0
	ldrsh r1, [r8, #8]
	ldr r0, _0214DFD4 ; =0x0209BA20
	bl FUN_0204a2c4
	ldrb r1, [r4, #0x58]
	cmp r1, #4
	beq _0214DC58
	cmp r1, #5
	bne _0214DCF4
_0214DC58:
	ldrb r1, [r0, #0x13]
	tst r1, #6
	movne r1, #1
	moveq r1, #0
	cmp r1, #1
	beq _0214DC88
	ldrb r0, [r0, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _0214DCF4
_0214DC88:
	ldr r0, _0214DFD8 ; =0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_ov126_021377f8
	ldrb r0, [r0, #0x29]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #2
	cmpne r0, #5
	moveq r11, #1
	movne r11, #0
	mov r0, r9
	bl FUN_0206d6c4
	cmp r0, #0
	cmpeq r11, #1
	bne _0214DCF4
	ldrb r0, [r8, #0xf]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldreqb r1, [r8, #0xf]
	addeq sp, sp, #0x18
	moveq r0, #0xb
	orreq r1, r1, #0x40
	streqb r1, [r8, #0xf]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DCF4:
	cmp r6, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	beq _0214DD20
	cmp r6, r0
	ldrleb r1, [r7, #0xf]
	addle sp, sp, #0x18
	movle r0, #0xb
	orrle r1, r1, #0x40
	strleb r1, [r7, #0xf]
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DD20:
	mov r0, r10
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _0214DDA4
	ldr r2, [r4, #4]
	mov r0, r10
	mov r1, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _0214DDA4
	cmp r5, #0
	cmpne r5, #6
	bne _0214DDA4
	ldr r0, [r9, #0x84]
	ldr r2, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r1, [r4, #4]
	sub r0, r0, r2
	sub r1, r1, r2
	bl FX_Div
	ldr r1, [r9, #0x84]
	ldr r1, [r1, #4]
	str r1, [r4, #4]
	ldr r1, [r4]
	ldr r3, [r4, #0xc]
	sub r1, r1, r3
	smull r2, r1, r0, r1
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r0, [r4]
_0214DDA4:
	cmp r5, #0
	cmpne r5, #6
	bne _0214DDB8
	mov r0, r9
	bl FUN_0206da98
_0214DDB8:
	add sp, sp, #0x18
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DDC4:
	ldr r7, [r4, #0x10]
	ldr r6, [r4, #0xc]
	ldmia r4, {r8, r11}
	mov r5, #0
	add r1, sp, #8
	mov r0, r10
	mov r2, r9
	mov r3, r5
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	str r8, [sp, #0x10]
	str r11, [sp, #0x14]
	bl FUN_ov132_0214eecc
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #9
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0x30]
	cmp r0, #0x10000
	addgt sp, sp, #0x18
	movgt r0, #9
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0x5c]
	cmp r0, #0
	movne r5, #1
	cmp r5, #0
	beq _0214DE44
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0214eb58
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DE44:
	ldrsh r1, [r9, #0x94]
	ldr r0, [r4, #0x4c]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	ldreqb r0, [r4, #0x5a]
	cmpeq r0, #0
	bne _0214DEA0
	ldr r0, [r4, #0x3c]
	cmp r0, #0x800
	ble _0214DEA0
	ldr r0, [r10, #0x5b8]
	ldr r1, [r4, #0x44]
	rsb r0, r0, r0, lsl #4
	cmp r1, r0
	bge _0214DEA0
	ldrb r0, [r4, #0x5f]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DEA0:
	mov r0, #0x64
	bl FUN_ov16_020ef928
	ldrb r1, [r4, #0x5b]
	mov r5, r0
	mov r6, #0x28
	tst r1, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrb r0, [r4, #0x58]
	movne r6, #0
	cmp r0, #9
	ldrb r0, [r4, #0x5a]
	subeq r6, r6, #0x32
	cmp r0, #0
	ldr r0, [r4, #0x4c]
	subne r6, r6, #0xa
	cmp r0, #0
	bge _0214DF04
	mov r0, r10
	mov r2, r9
	mov r1, #2
	bl FUN_ov132_021484fc
	add r0, r0, #0x1e
	b _0214DF48
_0214DF04:
	ldrsh r1, [r9, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	mov r0, r10
	mov r1, #2
	mov r2, r9
	beq _0214DF2C
	bl FUN_ov132_021484fc
	add r0, r0, #0x19
	b _0214DF48
_0214DF2C:
	bl FUN_ov132_021484fc
	mov r4, r0
	mov r0, r10
	mov r2, r9
	mov r1, #3
	bl FUN_ov132_021484fc
	add r0, r4, r0
_0214DF48:
	add r5, r5, r0
	cmp r5, r6
	ble _0214DFC4
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02144814
	cmp r0, #0
	beq _0214DF7C
	bl FUN_02040a80
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DF7C:
	mov r0, r9
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0214DFB8
	mov r0, #0x64
	bl FUN_ov16_020ef928
	cmp r0, #0x28
	bhs _0214DFB8
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02142b18
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DFB8:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DFC4:
	mov r0, #2
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214DFD0: .word unk_0209A2C0
_0214DFD4: .word unk_0209BA20
_0214DFD8: .word unk_02099EF0
	arm_func_end FUN_ov132_0214daac

	arm_func_start FUN_ov132_0214dfdc
FUN_ov132_0214dfdc: ; 0x0214DFDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r3, [r6, #0x5b8]
	movs r5, r1
	mov r4, #9
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _0214E0C4 ; =0x0209A2C0
	ldrsh r0, [r5, #0x94]
	ldr r2, [r1, #0x4c]
	cmp r2, r0
	bne _0214E030
	mov r0, #0xa
	mul r0, r3, r0
	ldr r1, [r1, #0x44]
	cmp r1, r0
	addlt sp, sp, #0x10
	movlt r0, r4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214E030:
	ldr r7, _0214E0C4 ; =0x0209A2C0
	add r1, sp, #0
	ldr lr, [r7, #0x10]
	ldr r12, [r7, #0xc]
	ldmia r7, {r8, r9}
	mov r0, r6
	mov r2, r5
	mov r3, #0
	str r12, [sp]
	str lr, [sp, #4]
	str r8, [sp, #8]
	str r9, [sp, #0xc]
	bl FUN_ov132_0214eecc
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x30]
	cmp r0, #0x10000
	addgt sp, sp, #0x10
	movgt r0, r4
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r6
	bl FUN_ov132_021447fc
	cmp r0, #0
	bne _0214E0B4
	bl FUN_02040a80
	cmp r0, #0
	moveq r4, #5
	beq _0214E0B8
_0214E0B4:
	mov r4, #0
_0214E0B8:
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214E0C4: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214dfdc

	arm_func_start FUN_ov132_0214e0c8
FUN_ov132_0214e0c8: ; 0x0214E0C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r9, r1
	mov r4, #0
	mov r10, r0
	mov r0, r9
	mov r11, r2
	str r4, [sp, #8]
	mov r5, r4
	mov r6, r4
	str r4, [sp, #4]
	mov r7, r4
	mov r8, r4
	bl FUN_0206da78
	cmp r0, #0x1d
	beq _0214E118
	mov r0, r9
	bl FUN_0206da78
	cmp r0, #0x20
	bne _0214E120
_0214E118:
	mov r0, #1
	str r0, [sp, #4]
_0214E120:
	ldr r0, _0214E59C ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0214E230
	mov r0, r10
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsh r1, [r4, #8]
	ldr r0, _0214E5A0 ; =0x000001F6
	cmp r1, r0
	bne _0214E174
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r11
	bl FUN_ov132_0214eb04
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E174:
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	str r0, [sp, #8]
	ldrsh r1, [r4, #8]
	ldr r0, _0214E5A4 ; =0x0209BA20
	bl FUN_0204a2c4
	mov r5, r0
	ldrsh r1, [r4, #0xa]
	ldr r0, _0214E5A4 ; =0x0209BA20
	bl FUN_0204a2c4
	mov r6, r0
	ldr r0, [sp, #8]
	bl FUN_0206dc98
	mov r7, r0
	ldrsh r1, [r4, #8]
	ldr r0, _0214E5A4 ; =0x0209BA20
	bl FUN_0204af50
	add r7, r7, r0
	mov r0, r9
	bl FUN_0206dc98
	mov r8, r0
	ldrsh r1, [r4, #0xa]
	ldr r0, _0214E5A4 ; =0x0209BA20
	bl FUN_0204af50
	add r8, r8, r0
	cmp r6, #0
	beq _0214E230
	ldrb r0, [r6]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _0214E210
	ldrb r0, [r6]
	cmp r0, #7
	movne r2, #0
_0214E210:
	cmp r2, #0
	bne _0214E224
	ldrb r0, [r6]
	cmp r0, #8
	movne r1, #0
_0214E224:
	cmp r1, #0
	movne r0, #2
	strne r0, [sp, #4]
_0214E230:
	ldr r0, _0214E59C ; =0x0209A2C0
	add r1, sp, #0xc
	ldmia r0, {r2, r3}
	str r3, [sp, #0x18]
	ldr r3, [r0, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [r0, #0xc]
	str r3, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r3, [sp, #4]
	mov r0, r10
	mov r2, r9
	bl FUN_ov132_0214eecc
	cmp r0, #0
	bne _0214E37C
	ldr r0, _0214E59C ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0214E370
	add r1, sp, #0xc
	mov r0, r10
	mov r2, r9
	mov r3, #3
	bl FUN_ov132_0214eecc
	cmp r0, #0
	beq _0214E370
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	bne _0214E370
	cmp r5, #0
	beq _0214E334
	ldrb r0, [r5]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _0214E2F8
	ldrb r0, [r5]
	cmp r0, #7
	movne r2, #0
_0214E2F8:
	cmp r2, #0
	bne _0214E30C
	ldrb r0, [r5]
	cmp r0, #8
	movne r1, #0
_0214E30C:
	cmp r1, #0
	beq _0214E334
	mov r0, r9
	bl FUN_0206da78
	cmp r0, #0x1e
	beq _0214E37C
	mov r0, r9
	bl FUN_0206da78
	cmp r0, #0x31
	beq _0214E37C
_0214E334:
	cmp r7, r8
	beq _0214E37C
	cmp r5, #0
	beq _0214E364
	ldrb r0, [r5]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #7
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E364:
	add sp, sp, #0x1c
	mov r0, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E370:
	add sp, sp, #0x1c
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E37C:
	cmp r6, #0
	ldr r0, _0214E59C ; =0x0209A2C0
	beq _0214E3D0
	ldrsh r0, [r4, #0xa]
	cmp r0, #0x1e
	ldreqsh r0, [r4, #8]
	cmpeq r0, #0x15
	bne _0214E3B4
	ldr r0, _0214E59C ; =0x0209A2C0
	ldr r0, [r0, #0x30]
	cmp r0, #0x10000
	addgt sp, sp, #0x1c
	movgt r0, #9
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E3B4:
	ldr r0, _0214E59C ; =0x0209A2C0
	ldr r0, [r0, #0x30]
	cmp r0, #0x1e000
	ble _0214E3FC
	add sp, sp, #0x1c
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E3D0:
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrne r0, _0214E59C ; =0x0209A2C0
	ldrne r0, [r0, #0x30]
	cmpne r0, #0x10000
	addgt sp, sp, #0x1c
	movgt r0, #9
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E3FC:
	ldr r0, _0214E59C ; =0x0209A2C0
	ldrb r0, [r0, #0x58]
	cmp r0, #9
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	bne _0214E438
	cmp r8, r7
	ble _0214E470
_0214E438:
	cmp r6, #0
	beq _0214E464
	ldrb r0, [r6, #0x12]
	mov r1, #1
	cmp r0, #1
	cmpne r0, #2
	movne r1, #0
	cmp r1, #0
	addne sp, sp, #0x1c
	movne r0, #6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E464:
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E470:
	cmp r7, r8
	ble _0214E4C0
	cmp r5, #0
	beq _0214E498
	ldrb r0, [r5]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _0214E4A8
_0214E498:
	mov r0, r9
	bl FUN_0206da78
	cmp r0, #0x1d
	beq _0214E4B4
_0214E4A8:
	add sp, sp, #0x1c
	mov r0, #7
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E4B4:
	add sp, sp, #0x1c
	mov r0, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E4C0:
	ldr r0, _0214E59C ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0214E528
	ldr r2, [sp, #8]
	mov r0, r10
	mov r1, r9
	mov r3, r4
	str r11, [sp]
	bl FUN_ov132_0214e5a8
	mov r5, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	ldrsb r0, [r4, #0xd]
	bl FUN_ov16_020efa80
	cmp r5, #7
	cmpne r5, #8
	beq _0214E51C
	cmp r5, #6
	cmpne r5, #0
_0214E51C:
	add sp, sp, #0x1c
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E528:
	mov r0, #0x64
	bl FUN_ov16_020ef928
	mov r4, r0
	mov r0, r10
	mov r2, r9
	mov r1, #3
	bl FUN_ov132_021484fc
	add r0, r4, r0
	cmp r0, #0x19
	addgt sp, sp, #0x1c
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0xf
	addgt sp, sp, #0x1c
	movgt r0, #2
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	beq _0214E590
	ldrb r0, [r5]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #7
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E590:
	mov r0, #8
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E59C: .word unk_0209A2C0
_0214E5A0: .word 0x000001F6
_0214E5A4: .word unk_0209BA20
	arm_func_end FUN_ov132_0214e0c8

	arm_func_start FUN_ov132_0214e5a8
FUN_ov132_0214e5a8: ; 0x0214E5A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r6, r3
	mov r8, r1
	ldrsh r1, [r6, #8]
	ldr r10, _0214EAEC ; =0x0209BA20
	mov r9, r0
	mov r0, r10
	mov r11, #0
	bl FUN_0204a2c4
	mov r4, r0
	mov r0, r9
	mov r1, #1
	bl FUN_ov126_021377f8
	mov r5, r0
	ldrb r2, [r5, #0x29]
	mov r0, r9
	mov r1, #2
	mov r2, r2, lsl #0x18
	mov r7, r2, lsr #0x1c
	bl FUN_ov126_021377f8
	ldrb r1, [r0, #0x29]
	cmp r7, #5
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmpeq r1, #5
	bne _0214E674
	ldrsh r7, [r0, #0x22]
	ldrsh r1, [r0, #0x26]
	ldrsh r5, [r5, #0x22]
	mov r0, r10
	bl FUN_0204a2c4
	mov r4, r0
	mov r0, r10
	mov r1, r7
	bl FUN_0204a2c4
	mov r7, r0
	mov r0, r10
	mov r1, r5
	bl FUN_0204a2c4
	ldrsb r1, [r4, #6]
	ldrsb r2, [r7, #6]
	ldrsb r3, [r0, #6]
	cmp r1, r2
	ble _0214E664
	cmp r1, r3
	bgt _0214E6B0
_0214E664:
	cmp r2, r1
	cmpgt r2, r3
	movgt r4, r7
	b _0214E6AC
_0214E674:
	cmp r7, #5
	bne _0214E6B0
	ldr r10, _0214EAEC ; =0x0209BA20
	ldrsh r7, [r5, #0x22]
	ldrsh r1, [r5, #0x26]
	mov r0, r10
	bl FUN_0204a2c4
	mov r4, r0
	mov r0, r10
	mov r1, r7
	bl FUN_0204a2c4
	ldrsb r2, [r4, #6]
	ldrsb r1, [r0, #6]
	cmp r2, r1
_0214E6AC:
	movle r4, r0
_0214E6B0:
	ldrsh r1, [r6, #0xa]
	ldr r0, _0214EAEC ; =0x0209BA20
	bl FUN_0204a2c4
	mov r5, r0
	ldrsb r0, [r6, #0xc]
	bl FUN_ov16_020efa80
	mov r7, r0
	bl FUN_ov16_020f066c
	cmp r0, #0
	bne _0214E7AC
	mov r0, r8
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0214E7AC
	mov r0, r8
	bl FUN_0206cc34
	mov r10, r0
	mov r0, r7
	bl FUN_0206cc34
	sub r0, r10, r0
	mvn r10, #0
	cmp r0, #0x14
	movgt r10, #0x5a
	bgt _0214E760
	cmp r0, #0x12
	movgt r10, #0x32
	bgt _0214E760
	cmp r0, #0x10
	movgt r10, #0x28
	bgt _0214E760
	cmp r0, #0xe
	movgt r10, #0x1e
	bgt _0214E760
	cmp r0, #0xc
	movgt r10, #0x14
	bgt _0214E760
	cmp r0, #0xa
	movgt r10, #0xa
	bgt _0214E760
	cmp r0, #8
	movgt r10, #8
	bgt _0214E760
	cmp r0, #6
	movgt r10, #5
_0214E760:
	cmn r10, #1
	beq _0214E77C
	mov r0, #0x64
	bl FUN_ov16_020ef928
	mov r11, #1
	cmp r0, r10
	movhs r11, #0
_0214E77C:
	cmp r11, #0
	beq _0214E7AC
	ldrb r0, [r5, #0x12]
	mov r1, #1
	add sp, sp, #0x10
	cmp r0, #1
	cmpne r0, #2
	movne r1, #0
	mov r0, #6
	cmp r1, #0
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E7AC:
	bl FUN_ov16_020f066c
	cmp r0, #0
	bne _0214E87C
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0214E87C
	mov r0, r7
	bl FUN_0206cc34
	mov r10, r0
	mov r0, r8
	bl FUN_0206cc34
	sub r0, r10, r0
	mvn r10, #0
	cmp r0, #0x14
	movge r10, #0x5a
	bge _0214E840
	cmp r0, #0x12
	movge r10, #0x32
	bge _0214E840
	cmp r0, #0x10
	movge r10, #0x28
	bge _0214E840
	cmp r0, #0xe
	movge r10, #0x1e
	bge _0214E840
	cmp r0, #0xc
	movge r10, #0x14
	bge _0214E840
	cmp r0, #0xa
	movge r10, #0xa
	bge _0214E840
	cmp r0, #8
	movge r10, #8
	bge _0214E840
	cmp r0, #6
	movge r10, #5
_0214E840:
	cmn r10, #1
	beq _0214E85C
	mov r0, #0x64
	bl FUN_ov16_020ef928
	mov r11, #1
	cmp r0, r10
	movhs r11, #0
_0214E85C:
	cmp r11, #0
	beq _0214E87C
	ldrb r0, [r4]
	add sp, sp, #0x10
	cmp r0, #7
	moveq r0, #7
	movne r0, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214E87C:
	ldrb r0, [r6, #0x12]
	mov r1, #0
	mov r3, #4
	cmp r0, #0
	subne r1, r0, #1
	ldrb r0, [r4]
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #3
	movls r0, #1
	movhi r0, #0
	cmp r0, #0
	movne r3, #9
	bne _0214E8E4
	ldrb r0, [r6, #0xf]
	tst r0, #1
	movne r2, #1
	moveq r2, #0
	cmp r2, #0
	movne r3, #6
	bne _0214E8E4
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r3, #5
_0214E8E4:
	str r1, [sp]
	mov r0, #0
	stmib sp, {r0, r8}
	mov r6, #0
	mov r0, r9
	mov r1, r7
	mov r2, r4
	str r6, [sp, #0xc]
	bl FUN_ov132_021417d8
	mov r6, r0
	mov r0, r9
	bl FUN_ov132_021471fc
	mul r1, r6, r0
	ldr r11, _0214EAF0 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r10, r11, r1
	mov r1, #0
	add r10, r0, r10, asr #5
	mov r0, r9
	mov r2, r1
	bl FUN_ov132_02147024
	mov r0, r9
	mov r1, #1
	add r6, r6, r10
	bl FUN_ov126_021377f8
	ldrb r2, [r0, #0x29]
	mov r0, r9
	mov r1, #2
	mov r2, r2, lsl #0x18
	mov r10, r2, lsr #0x1c
	bl FUN_ov126_021377f8
	ldrb r0, [r0, #0x29]
	cmp r10, #5
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmpeq r0, #5
	bne _0214E9C0
	ldr r10, _0214EAF4 ; =0x02099F78
	ldr r1, _0214EAF8 ; =0x021603EC
	mov r0, r10
	bl _ZN8L5Config8getParamEPc
	mul r1, r6, r0
	mov r0, r1, lsr #0x1f
	smull r1, r2, r11, r1
	add r2, r0, r2, asr #5
	ldr r1, _0214EAFC ; =0x02160400
	mov r0, r10
	add r6, r6, r2
	bl _ZN8L5Config8getParamEPc
	mul r1, r6, r0
	smull r0, r2, r11, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #5
	add r6, r6, r2
	b _0214E9EC
_0214E9C0:
	cmp r10, #5
	bne _0214E9EC
	ldr r0, _0214EAF4 ; =0x02099F78
	ldr r1, _0214EB00 ; =0x02160414
	bl _ZN8L5Config8getParamEPc
	mul r1, r6, r0
	ldr r2, _0214EAF0 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r6, r6, r3
_0214E9EC:
	ldrb r0, [r5]
	mov r10, #0
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #3
	movls r0, #1
	movhi r0, r10
	cmp r0, #0
	beq _0214EA30
	str r10, [sp]
	str r10, [sp, #4]
	str r7, [sp, #8]
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, #0xa
	b _0214EA9C
_0214EA30:
	mov r0, r8
	bl FUN_0206da78
	cmp r0, #0x1e
	beq _0214EA50
	mov r0, r8
	bl FUN_0206da78
	cmp r0, #0x31
	bne _0214EA64
_0214EA50:
	str r10, [sp]
	str r10, [sp, #4]
	str r7, [sp, #8]
	mov r0, r9
	b _0214EA80
_0214EA64:
	ldr r0, [sp, #0x38]
	str r10, [sp]
	str r10, [sp, #4]
	cmp r0, #0x6000
	str r7, [sp, #8]
	mov r0, r9
	bge _0214EA90
_0214EA80:
	mov r1, r8
	mov r2, r5
	mov r3, #7
	b _0214EA9C
_0214EA90:
	mov r1, r8
	mov r2, r5
	mov r3, #8
_0214EA9C:
	str r10, [sp, #0xc]
	bl FUN_ov132_021417d8
	cmp r6, r0
	ble _0214EAC4
	ldrb r0, [r4]
	add sp, sp, #0x10
	cmp r0, #7
	moveq r0, #7
	movne r0, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214EAC4:
	ldrb r0, [r5, #0x12]
	mov r1, #1
	cmp r0, #1
	cmpne r0, #2
	movne r1, #0
	mov r0, #6
	cmp r1, #0
	moveq r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214EAEC: .word unk_0209BA20
_0214EAF0: .word 0x51EB851F
_0214EAF4: .word unk_02099F78
_0214EAF8: .word ov132_021603EC
_0214EAFC: .word ov132_02160400
_0214EB00: .word ov132_02160414
	arm_func_end FUN_ov132_0214e5a8

	arm_func_start FUN_ov132_0214eb04
FUN_ov132_0214eb04: ; 0x0214EB04
	stmfd sp!, {r3, lr}
	ldr r12, _0214EB54 ; =0x0209A2C0
	ldr r1, [r1, #0x84]
	ldr r3, [r12, #4]
	ldr r0, [r12, #0x10]
	ldr r1, [r1, #4]
	subs r3, r3, r0
	ldr r0, [r12, #4]
	rsbmi r3, r3, #0
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r3, r0
	movlt r0, #9
	ldmltfd sp!, {r3, pc}
	mov r0, r2
	bl FUN_ov126_02138654
	cmp r0, #1
	moveq r0, #8
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0214EB54: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214eb04

	arm_func_start FUN_ov132_0214eb58
FUN_ov132_0214eb58: ; 0x0214EB58
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	bl FUN_ov126_021375d4
	movs r4, r0
	moveq r0, #9
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsh r1, [r4, #8]
	ldr r0, _0214EC40 ; =0x0209BA20
	bl FUN_0204a2c4
	mov r5, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	ldr r1, _0214EC44 ; =0x0209A2C0
	ldrb r1, [r1, #0x5b]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r0, #0
	beq _0214EBD8
	mov r1, r6
	bl FUN_ov16_020f0728
	cmp r0, #0
	beq _0214EBD8
	ldr r0, _0214EC44 ; =0x0209A2C0
	ldrb r0, [r0, #0x5a]
	cmp r0, #0
	bne _0214EC28
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, pc}
_0214EBD8:
	ldrb r0, [r5]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _0214EC08
	ldrb r0, [r5]
	cmp r0, #7
	movne r2, #0
_0214EC08:
	cmp r2, #0
	bne _0214EC1C
	ldrb r0, [r5]
	cmp r0, #8
	movne r1, #0
_0214EC1C:
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
_0214EC28:
	ldr r0, _0214EC44 ; =0x0209A2C0
	ldrb r0, [r0, #0x5a]
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmfd sp!, {r4, r5, r6, pc}
_0214EC40: .word unk_0209BA20
_0214EC44: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214eb58

	arm_func_start FUN_ov132_0214ec48
FUN_ov132_0214ec48: ; 0x0214EC48
	stmfd sp!, {r3, lr}
	cmp r1, #4
	bne _0214EC64
	bl FUN_ov132_02144f4c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
_0214EC64:
	ldr r0, _0214EC80 ; =0x0209BA20
	bl FUN_02073184
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0214EC80: .word unk_0209BA20
	arm_func_end FUN_ov132_0214ec48

	arm_func_start FUN_ov132_0214ec84
FUN_ov132_0214ec84: ; 0x0214EC84
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0214ECD0 ; =0x020A0640
	mov r5, r0
	ldrb r0, [r1, #0x9a]
	mov r4, r2
	mov r1, #1
	cmp r3, r0
	movne r1, #0
	mov r0, r5
	mov r2, #0
	bl FUN_ov132_0213f5d4
	subs r4, r0, r4
	mov r0, r5
	rsbmi r4, r4, #0
	bl FUN_ov126_0212f398
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0214ECD0: .word unk_020A0640
	arm_func_end FUN_ov132_0214ec84

	arm_func_start FUN_ov132_0214ecd4
FUN_ov132_0214ecd4: ; 0x0214ECD4
	cmp r3, #0
	bne _0214ECF4
	ldr r3, _0214ED30 ; =0x0209A83C
	ldr r0, [r3, #4]
	cmp r2, r0
	bge _0214ED08
	mov r0, #0
	bx lr
_0214ECF4:
	ldr r3, _0214ED34 ; =0x0209A82C
	ldr r0, [r3, #0xc]
	cmp r2, r0
	movgt r0, #0
	bxgt lr
_0214ED08:
	ldr r0, [r3]
	cmp r1, r0
	blt _0214ED20
	ldr r0, [r3, #8]
	cmp r1, r0
	ble _0214ED28
_0214ED20:
	mov r0, #0
	bx lr
_0214ED28:
	mov r0, #1
	bx lr
_0214ED30: .word unk_0209A83C
_0214ED34: .word unk_0209A82C
	arm_func_end FUN_ov132_0214ecd4

	arm_func_start FUN_ov132_0214ed38
FUN_ov132_0214ed38: ; 0x0214ED38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r1
	mov r6, r2
	ldr r2, [r6]
	ldr r0, [r7]
	cmp r0, r2
	bge _0214ED64
	ldr r1, [r7, #8]
	cmp r1, r2
	blt _0214EDA8
_0214ED64:
	ldr r2, [r6, #8]
	cmp r0, r2
	ble _0214ED7C
	ldr r1, [r7, #8]
	cmp r1, r2
	bgt _0214EDA8
_0214ED7C:
	ldr r3, [r6, #4]
	ldr r1, [r7, #4]
	cmp r1, r3
	ldrlt r2, [r7, #0xc]
	cmplt r2, r3
	blt _0214EDA8
	ldr r3, [r6, #0xc]
	cmp r1, r3
	ldrgt r2, [r7, #0xc]
	cmpgt r2, r3
	ble _0214EDB4
_0214EDA8:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214EDB4:
	mov r2, r6
	bl FUN_02040ae4
	cmp r0, #0
	bne _0214EDDC
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	mov r2, r6
	bl FUN_02040ae4
	cmp r0, #0
	beq _0214EDE8
_0214EDDC:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0214EDE8:
	add r5, sp, #0
	ldr r12, [r6, #8]
	ldmia r6, {r3, lr}
	mov r4, #0
	mov r0, r7
	mov r1, r5
	mov r2, r4
	str r3, [sp]
	str lr, [sp, #4]
	str r12, [sp, #8]
	str lr, [sp, #0xc]
	bl FUN_0203fdf0
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr lr, [r6, #0xc]
	ldr r12, [r6, #8]
	ldr r3, [r6]
	mov r0, r7
	mov r1, r5
	mov r2, r4
	str r3, [sp]
	str lr, [sp, #4]
	str r12, [sp, #8]
	str lr, [sp, #0xc]
	bl FUN_0203fdf0
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r12, [r6]
	ldr lr, [r6, #0xc]
	ldr r3, [r6, #4]
	mov r0, r7
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	str r3, [sp, #4]
	str r12, [sp, #8]
	str lr, [sp, #0xc]
	bl FUN_0203fdf0
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldmib r6, {r3, r12, lr}
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	str r3, [sp, #4]
	str r12, [sp, #8]
	str lr, [sp, #0xc]
	bl FUN_0203fdf0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0214ed38

	arm_func_start FUN_ov132_0214eecc
FUN_ov132_0214eecc: ; 0x0214EECC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r6, r2
	mov r7, r1
	mov r4, #0x8000
	mov r1, r6
	mov r8, r0
	mov r9, r3
	mov r5, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	addne r4, r4, #0x4000
	movne r5, r4
	cmp r9, #2
	moveq r4, #0x40000
	beq _0214EFA0
	cmp r9, #1
	moveq r4, #0x10000
	beq _0214EFA0
	cmp r9, #3
	moveq r4, #0x20000
	moveq r5, #0x1000
	beq _0214EFA0
	ldr r0, _0214EFEC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _0214EFA0
	mov r0, r8
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0214EFA0
	ldr r9, _0214EFF0 ; =0x0209A2C0
	ldr r0, [r9, #0x48]
	cmn r0, #1
	bgt _0214EFA0
	ldrb r1, [r9, #0x58]
	mov r0, r8
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0214EF9C
	ldrb r1, [r9, #0x58]
	mov r0, r8
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0214EFA0
	mov r0, r8
	mov r1, r9
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	bne _0214EFA0
_0214EF9C:
	mov r4, #0x18000
_0214EFA0:
	ldr r3, [r6, #0x84]
	add r2, sp, #0
	ldr r1, [r3]
	mov r0, r8
	sub r1, r1, r4
	str r1, [sp]
	ldr r6, [r3, #4]
	mov r1, r7
	sub r6, r6, r5
	str r6, [sp, #4]
	ldr r6, [r3]
	add r4, r4, r6
	str r4, [sp, #8]
	ldr r3, [r3, #4]
	add r3, r5, r3
	str r3, [sp, #0xc]
	bl FUN_ov132_0214ed38
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214EFEC: .word unk_02099EF0
_0214EFF0: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214eecc

	arm_func_start FUN_ov132_0214eff4
FUN_ov132_0214eff4: ; 0x0214EFF4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, r1
	mov r6, r2
	mov r8, r0
	ldrsh r0, [r7, #0x94]
	ldrsh r1, [r6, #0x94]
	mov r5, r3
	bl FUN_ov16_020f06d8
	ldr r2, [r7, #0x84]
	ldr r1, [r6, #0x84]
	cmp r0, #0
	mov r4, #1
	ldrb r9, [r2, #0x1d]
	ldrb r10, [r1, #0x1d]
	moveq r4, #0
	mov r0, r7
	bl FUN_02040aa8
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r9, #7
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r10, #7
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	mov r1, r9
	bl FUN_ov132_0213c158
	cmp r0, #0
	beq _0214F088
	mov r0, r8
	mov r1, r10
	bl FUN_ov132_0213c158
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214F088:
	mov r0, r8
	mov r1, r10
	bl FUN_ov132_0213c158
	cmp r0, #0
	beq _0214F0B4
	mov r0, r8
	mov r1, r9
	bl FUN_ov132_0213c158
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214F0B4:
	mov r0, r7
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r8
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _0214F0E8
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214F0E8:
	mov r0, r6
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r8
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _0214F11C
	mov r0, r8
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214F11C:
	mov r0, r7
	bl FUN_0206dc98
	mov r9, r0
	mov r0, r6
	bl FUN_0206dc98
	cmp r9, r0
	movgt r0, #1
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	bl FUN_0206dc98
	mov r9, r0
	mov r0, r7
	bl FUN_0206dc98
	cmp r9, r0
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r4, #0
	beq _0214F17C
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214F17C:
	cmp r4, #0
	beq _0214F19C
	mov r0, r8
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0214F19C:
	mov r0, r7
	bl FUN_0206d9f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r7
	bl FUN_0206ccdc
	cmp r4, r0
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r7
	bl FUN_0206ccdc
	cmp r4, r0
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x64
	bl FUN_ov16_020ef928
	cmp r0, #0x32
	movlo r4, #0
	movhs r7, r6
	movhs r4, #1
	cmp r5, #0
	beq _0214F238
	mov r0, r8
	mov r2, r7
	mov r1, #0x1d
	mov r3, #0
	bl FUN_ov126_0213a490
_0214F238:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov132_0214eff4

	arm_func_start FUN_ov132_0214f240
FUN_ov132_0214f240: ; 0x0214F240
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r3
	mov r9, r0
	mov r0, r5
	mov r7, r1
	mov r6, r2
	bl FUN_02040170
	cmp r7, #0
	mov r8, r0
	cmpne r6, #0
	mov r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r5
	bl FUN_ov132_021461f8
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [sp, #0x20]
	ldr r1, [r8, #8]
	ldr r3, [r8, #0xc]
	cmp r0, #0
	movne r4, #0x6000
	ldmia r8, {r0, r2}
	ldr r8, [r7]
	sub r0, r0, r4
	cmp r8, r0
	add r1, r1, r4
	sub r2, r2, r4
	add r3, r3, r4
	blt _0214F2DC
	cmp r8, r1
	bgt _0214F2DC
	ldr r4, [r7, #4]
	cmp r4, r2
	blt _0214F2DC
	cmp r4, r3
	ble _0214F2E4
_0214F2DC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214F2E4:
	cmp r5, #0
	ldr r4, [r6, #4]
	bne _0214F350
	cmp r4, r3
	ble _0214F318
	sub r4, r3, #1
	add r2, r0, r1
	str r4, [r7, #4]
	ldr r3, [r6]
	add r2, r2, r2, lsr #31
	mov r4, #1
	cmp r3, r2, asr #1
	b _0214F374
_0214F318:
	cmp r4, r2
	ble _0214F340
	add r3, r0, r1
	ldr r4, [r6]
	add r3, r3, r3, lsr #31
	cmp r4, r3, asr #1
	movlt r4, #1
_0214F334:
	movge r4, #0
	sub r2, r2, #1
	b _0214F3B0
_0214F340:
	ldr r3, [r6]
	mov r4, #1
	cmp r8, r3
	b _0214F334
_0214F350:
	cmp r4, r2
	bge _0214F37C
	add r3, r0, r1
	add r5, r2, #1
	ldr r4, [r6]
	add r2, r3, r3, lsr #31
	cmp r4, r2, asr #1
	str r5, [r7, #4]
	movlt r4, #1
_0214F374:
	movge r4, #0
	b _0214F3B4
_0214F37C:
	cmp r4, r3
	bge _0214F39C
	add r2, r0, r1
	ldr r4, [r6]
	add r2, r2, r2, lsr #31
	cmp r4, r2, asr #1
	movlt r4, #1
	b _0214F3A8
_0214F39C:
	ldr r2, [r6]
	mov r4, #1
	cmp r8, r2
_0214F3A8:
	movge r4, #0
	add r2, r3, #1
_0214F3B0:
	str r2, [r7, #4]
_0214F3B4:
	sub r0, r0, #1
	cmp r4, #0
	addeq r0, r1, #1
	str r0, [r7]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov132_0214f240

	arm_func_start FUN_ov132_0214f3cc
FUN_ov132_0214f3cc: ; 0x0214F3CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r2
	mov r6, r0
	mov r7, #0
	mov r0, r4
	mov r5, r1
	mov r8, r7
	bl FUN_0206d5f0
	mov r9, r0
	bl FUN_ov16_020f066c
	cmp r0, #0
	movne r0, r8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0214ec48
	cmp r0, #0
	moveq r0, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0
	beq _0214F430
	mov r0, r4
	bl FUN_0206d5f0
	cmp r0, #0
	beq _0214F438
_0214F430:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214F438:
	mov r0, #6
	mla r1, r9, r0, r6
	mov r2, r8
	b _0214F458
_0214F448:
	add r0, r1, r2
	ldrb r0, [r0, #0x355]
	add r2, r2, #1
	add r8, r8, r0
_0214F458:
	cmp r2, #6
	blt _0214F448
	cmp r8, #0x63
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, #6
	mul r1, r9, r0
	add r0, r6, #0x49
	add r0, r0, #0x300
	add r2, r0, r1
	ldrb r0, [r2, r5]
	cmp r5, #5
	add r0, r0, #1
	strb r0, [r2, r5]
	addls pc, pc, r5, lsl #2
	b _0214F528
_0214F498: ; jump table
	b _0214F4C8 ; case 0
	b _0214F50C ; case 1
	b _0214F4B0 ; case 2
	b _0214F528 ; case 3
	b _0214F4B0 ; case 4
	b _0214F4B0 ; case 5
_0214F4B0:
	add r0, r6, r1
	add r0, r0, r5
	ldrb r0, [r0, #0x349]
	mov r8, #1
	cmp r0, #3
	b _0214F520
_0214F4C8:
	add r0, r6, r1
	add r1, r0, r5
	ldr r0, [r6, #0x370]
	ldrb r1, [r1, #0x349]
	add r0, r0, #3
	mov r8, #1
	cmp r1, r0
	movlt r8, #0
	cmp r8, #0
	beq _0214F52C
	ldr r0, [r6, #0x370]
	add r0, r0, #1
	str r0, [r6, #0x370]
	cmp r0, #0x3e8
	movge r0, #0x3e8
	strge r0, [r6, #0x370]
	b _0214F52C
_0214F50C:
	add r0, r6, r1
	add r0, r0, r5
	ldrb r0, [r0, #0x349]
	mov r8, #1
	cmp r0, #1
_0214F520:
	movlo r8, #0
	b _0214F52C
_0214F528:
	mov r8, #0
_0214F52C:
	cmp r8, #0
	beq _0214F5A0
	mov r0, #6
	mul r2, r9, r0
	add r1, r6, r2
	add r0, r6, #0x55
	add r1, r1, r5
	add r0, r0, #0x300
	strb r7, [r1, #0x349]
	add r7, r0, r2
	ldrb r2, [r7, r5]
	mov r6, #7
	mov r0, r4
	add r3, r2, #1
	mov r1, r6
	mov r2, #0x1e
	strb r3, [r7, r5]
	bl FUN_0206dbb4
	mov r0, r6
	bl FUN_ov16_020f05c8
	bl FUN_ov16_020f081c
	cmp r9, r0
	bne _0214F5A0
	ldr r0, _0214F5A8 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _0214F5A0
	ldr r0, _0214F5AC ; =0x020A0B00
	bl FUN_02074734
_0214F5A0:
	mov r0, r8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0214F5A8: .word unk_0209BA20
_0214F5AC: .word unk_020A0B00
	arm_func_end FUN_ov132_0214f3cc

	arm_func_start FUN_ov132_0214f5b0
FUN_ov132_0214f5b0: ; 0x0214F5B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, _0214F770 ; =0x0209BA20
	ldr r7, [sp, #0x2c]
	mov r9, r1
	mov r8, r2
	mov r11, r3
	bl FUN_0207318c
	mov r4, r0
	mov r0, r10
	bl FUN_ov132_021434f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_02073e40
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0214F774 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0214F620
	ldr r0, _0214F778 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214F620:
	add r0, r10, #0x300
	ldrsb r0, [r0, #0x32]
	cmp r0, #0
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r8
	bl FUN_ov16_020efa80
	mov r5, r0
	ldr r0, [r10, #0x198]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0
	beq _0214F6A8
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _0214F6A8
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	bl FUN_ov126_02139a54
	cmp r0, #7
	bgt _0214F6B0
_0214F6A8:
	mov r0, #1
	str r0, [sp, #0x28]
_0214F6B0:
	mov r0, r4
	bl FUN_ov16_020f07d0
	mov r6, r0
	cmp r5, #0
	ldrne r0, [r5, #0x84]
	mov r1, r6
	ldrne r0, [r0]
	add r2, r10, #0x74
	strne r0, [r10, #0x74]
	ldrne r0, [r5, #0x84]
	ldreq r0, [r4, #0x84]
	ldreq r0, [r0]
	streq r0, [r10, #0x74]
	ldreq r0, [r4, #0x84]
	ldr r0, [r0, #4]
	str r0, [r10, #0x78]
	mov r0, r10
	bl FUN_ov132_02140b08
	cmp r0, #0
	beq _0214F708
	cmp r7, #2
	moveq r7, #3
_0214F708:
	mov r0, r10
	mov r1, r6
	add r2, r10, #0x74
	bl FUN_ov132_02140b50
	cmp r0, #0
	beq _0214F744
	mov r0, r6
	bl FUN_02040158
	cmp r7, #1
	bne _0214F744
	cmp r6, #0
	ldreq r0, [r0, #4]
	streq r0, [r10, #0x78]
	ldrne r0, [r0, #0xc]
	strne r0, [r10, #0x78]
_0214F744:
	mov r0, r10
	mov r1, r11
	strb r9, [r10, #0x332]
	strb r8, [r10, #0x333]
	bl FUN_ov132_0214537c
	ldr r1, [sp, #0x28]
	mov r0, r10
	bl FUN_ov132_0214539c
	str r7, [r10, #0x340]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214F770: .word unk_0209BA20
_0214F774: .word unk_020A0640
_0214F778: .word unk_0209AEC0
	arm_func_end FUN_ov132_0214f5b0

	arm_func_start FUN_ov132_0214f77c
FUN_ov132_0214f77c: ; 0x0214F77C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r2, r4
	mov r3, #0x1f
	str r4, [sp, #0xc]
	mov r5, #0x1e
	bl FUN_ov132_021417d8
	rsb r0, r0, #0x64
	muls r1, r5, r0
	addmi sp, sp, #0x10
	movmi r0, r4
	ldmmifd sp!, {r3, r4, r5, pc}
	ldr r2, _0214F7E8 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	ldr r1, _0214F7EC ; =0x00007FFF
	add r3, r0, r3, asr #5
	cmp r3, r1
	movgt r3, r1
	mov r0, r3, lsl #0x10
	mov r0, r0, asr #0x10
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0214F7E8: .word 0x51EB851F
_0214F7EC: .word 0x00007FFF
	arm_func_end FUN_ov132_0214f77c

	arm_func_start FUN_ov132_0214f7f0
FUN_ov132_0214f7f0: ; 0x0214F7F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	mov r9, r1
	mov r7, r2
	str r3, [sp, #0xc]
	mov r4, #0
	bl FUN_ov132_02144f4c
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #1
	mov r0, r10
	mov r1, r9
	mov r3, r5
	strb r4, [r10, #0x345]
	strb r4, [r10, #0x346]
	sub r2, r4, #0x5000
	str r4, [sp]
	bl FUN_ov132_0213f55c
	mov r6, r0
	mov r0, r10
	bl FUN_ov132_0213bdec
	ldr r0, _0214FB44 ; =0x0209BA20
	ldrb r0, [r0, #0x887]
	cmp r0, #0
	ldrne r0, [r9, #0x84]
	cmpne r0, #0
	beq _0214F8B0
	ldrh r0, [r0, #0x16]
	tst r0, #0x1000
	moveq r5, r4
	cmp r5, #0
	beq _0214F8B0
	ldr r0, [r9, #0x84]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	bl FUN_02040644
	cmp r0, #0
	beq _0214F8B0
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldrsh r1, [r9, #0x94]
	mov r0, r10
	sub r2, r3, #2
	bl FUN_ov132_0214f5b0
	b _0214F8C0
_0214F8B0:
	cmp r7, #0
	beq _0214F8C0
	mov r0, r10
	bl FUN_ov132_0213be3c
_0214F8C0:
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0214f77c
	ldr r1, [r9, #0x88]
	mov r2, #0
	strh r0, [r1, #0x24]
	ldr r3, [r9, #0x88]
	mov r0, r9
	mov r1, #0x10
	strh r2, [r3, #0x2a]
	bl FUN_0206dadc
	mov r0, r10
	mov r1, #0
	bl FUN_ov132_021585c4
	mov r0, r10
	mov r1, #1
	bl FUN_ov132_021585c4
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _0214F954
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _0214F954
	ldr r0, [r9, #0x84]
	cmp r0, #0
	beq _0214F954
	ldrb r3, [r0, #0x1a]
	ldr r2, _0214FB48 ; =0x02099F14
	mov r0, #0
	str r0, [sp]
	ldr r0, [r2]
	mov r1, r9
	mov r2, #8
	bl FUN_ov1_020e3c14
_0214F954:
	mov r0, r10
	mov r3, r9
	mov r1, #4
	mov r2, #2
	bl FUN_ov132_0213f13c
	mov r0, r9
	bl FUN_0206d5f0
	mov r8, r0
	mov r7, #0
	add r11, sp, #0x10
	mvn r4, #0
	b _0214FA7C
_0214F984:
	mov r0, r10
	mov r1, r8
	mov r2, r7
	bl FUN_ov126_0213938c
	movs r5, r0
	ldrnesh r1, [r5, #0x94]
	ldrnesh r0, [r9, #0x94]
	cmpne r1, r0
	beq _0214FA78
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	beq _0214FA78
	mov r0, r5
	bl FUN_02040b4c
	cmp r0, #0
	bne _0214FA78
	mov r0, r10
	bl FUN_ov132_021587bc
	cmp r0, #0
	mov r3, #1
	movne r3, #0
	mov r0, r10
	mov r1, r5
	mov r2, r11
	bl FUN_ov126_02138b3c
	mov r0, r5
	bl FUN_ov16_020f07d0
	mov r3, r0
	ldr r2, [sp, #0x14]
	mov r0, r10
	mov r1, r6
	bl FUN_01ffb9b0
	cmp r0, #0
	strne r6, [sp, #0x14]
	ldr r2, [sp, #0x14]
	mov r0, r10
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _0214FA78
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02146c30
	cmp r0, #0
	bne _0214FA50
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213df14
	b _0214FA78
_0214FA50:
	str r11, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x32
	str r0, [sp, #8]
	mov r1, r5
	mov r0, r10
	mov r2, #0xe
	mov r3, r4
	bl FUN_ov132_0213dfd4
_0214FA78:
	add r7, r7, #1
_0214FA7C:
	cmp r7, #0xb
	blt _0214F984
	ldrsh r1, [r9, #0x94]
	mov r0, r9
	mov r4, #0
	strb r1, [r10, #0x1a7]
	bl FUN_02040b4c
	cmp r0, #0
	mov r0, r10
	mov r1, r9
	bne _0214FAB4
	mov r2, #1
	bl FUN_ov132_0215215c
	b _0214FB10
_0214FAB4:
	bl FUN_ov126_02138e80
	cmp r0, #0
	mov r0, r10
	mov r1, r9
	beq _0214FAD4
	mov r2, #1
	bl FUN_01ff9384
	b _0214FB10
_0214FAD4:
	bl FUN_ov132_02146c30
	cmp r0, #0
	bne _0214FAF0
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213df14
	b _0214FB10
_0214FAF0:
	str r4, [sp]
	mov r2, #0x19
	str r4, [sp, #4]
	mov r0, r10
	mov r1, r9
	sub r3, r2, #0x1a
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
_0214FB10:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_02040148
	mov r1, r0
	ldr r3, _0214FB4C ; =0x0209A2C0
	mov r0, r10
	mov r2, r9
	bl FUN_ov132_0214ff64
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214FB44: .word unk_0209BA20
_0214FB48: .word unk_02099F14
_0214FB4C: .word unk_0209A2C0
	arm_func_end FUN_ov132_0214f7f0

	arm_func_start FUN_ov132_0214fb50
FUN_ov132_0214fb50: ; 0x0214FB50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	mov r8, r1
	bl FUN_ov126_021375d4
	ldr r1, _0214FD48 ; =0x0209A2C0
	mov r6, r0
	ldr r4, [r1, #0x48]
	mov r0, r9
	cmp r4, #0
	ldrlt r4, [r1, #0x4c]
	ldr r1, _0214FD48 ; =0x0209A2C0
	ldrb r1, [r1, #0x58]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	cmpne r6, #0
	mov r0, r9
	ldrnesb r4, [r6, #0xc]
	bl FUN_ov132_02144f4c
	mov r10, #5
	mov r7, r0
	mov r0, r9
	mov r1, r10
	bl FUN_ov132_021447f4
	mov r0, r9
	mov r1, r10
	bl FUN_ov132_021447d0
	cmp r7, #0
	bne _0214FBD0
	mov r0, r9
	mov r1, #1
	bl FUN_ov132_0214478c
_0214FBD0:
	cmp r8, #0
	mov r0, r9
	bne _0214FBE4
	mov r1, #1
	b _0214FBE8
_0214FBE4:
	mov r1, #0
_0214FBE8:
	bl FUN_ov132_02144778
	mov r0, r8
	bl FUN_020404bc
	cmp r0, #0xfa
	bge _0214FC20
	cmp r7, #0
	ldreq r1, _0214FD4C ; =0x020A06D8
	ldreqb r0, [r1, r8]
	addeq r0, r0, #1
	streqb r0, [r1, r8]
	beq _0214FC20
	mov r0, r9
	mov r1, #1
	bl FUN_ov126_02136d84
_0214FC20:
	cmp r6, #0
	ldrne r0, _0214FD48 ; =0x0209A2C0
	ldrne r1, [r0]
	strne r1, [r6]
	ldrne r0, [r0, #4]
	mov r1, r8
	strne r0, [r6, #4]
	mov r0, r9
	bl FUN_ov132_02143b2c
	ldr r10, _0214FD50 ; =0x020A0640
	mov r1, r8
	str r0, [r10, #0xbc]
	strh r4, [r0, #4]
	ldr r2, [r10, #0xbc]
	mov r0, r9
	strb r8, [r2, #6]
	bl FUN_ov132_02143cd0
	ldr r1, [r10, #0xbc]
	strb r0, [r1, #7]
	ldrb r2, [r10, #0x8f]
	ldr r1, [r10, #0xbc]
	mov r0, #0
	strb r2, [r1, #8]
	bl FUN_020404bc
	ldr r1, [r10, #0xbc]
	strb r0, [r1, #9]
	mov r0, #1
	bl FUN_020404bc
	ldr r1, [r10, #0xbc]
	cmp r7, #0
	strb r0, [r1, #0xa]
	ldr r1, [r10]
	ldr r0, [r10, #0xbc]
	str r1, [r0]
	bne _0214FD0C
	mov r0, r4
	bl FUN_ov16_020efa80
	mov r5, r0
	ldr r0, _0214FD54 ; =0x0209BA20
	mov r1, r8
	bl FUN_020724dc
	mov r4, r0
	ldrb r1, [r4, #0xa]
	mov r0, r5
	add r1, r1, #1
	strb r1, [r4, #0xa]
	bl FUN_ov16_020f0810
	cmp r8, r0
	bne _0214FD0C
	mov r0, r5
	bl FUN_0206d804
	ldr r1, _0214FD48 ; =0x0209A2C0
	mov r0, r9
	ldrb r1, [r1, #0x58]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	ldreqb r0, [r4, #0xb]
	addeq r0, r0, #1
	streqb r0, [r4, #0xb]
_0214FD0C:
	mov r0, r9
	mov r1, #2
	bl FUN_ov132_0214fda0
	mov r0, r9
	bl FUN_ov132_02152eb0
	cmp r7, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsh r1, [r6, #8]
	add r3, sp, #0
	mov r0, r5
	mov r2, #1
	bl FUN_0206d1e4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0214FD48: .word unk_0209A2C0
_0214FD4C: .word unk_020A06D8
_0214FD50: .word unk_020A0640
_0214FD54: .word unk_0209BA20
	arm_func_end FUN_ov132_0214fb50

	arm_func_start FUN_ov132_0214fd58
FUN_ov132_0214fd58: ; 0x0214FD58
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	add r4, r6, #0xa4
_0214FD68:
	add r0, r4, r5, lsl #3
	bl FUN_020404cc
	add r5, r5, #1
	cmp r5, #2
	blt _0214FD68
	mov r4, #0
_0214FD80:
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02144808
	bl FUN_020404cc
	add r4, r4, #1
	cmp r4, #5
	blt _0214FD80
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_0214fd58

	arm_func_start FUN_ov132_0214fda0
FUN_ov132_0214fda0: ; 0x0214FDA0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrb r2, [r4, #0x328]
	and r0, r1, #0xff
	mov r5, #0
	orr r0, r2, r0
	strb r0, [r4, #0x328]
_0214FDBC:
	mov r0, r4
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r1, r0
	beq _0214FDD8
	mov r0, r4
	bl FUN_ov132_0213e704
_0214FDD8:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0214FDBC
	mov r6, #0
	add r5, r4, #0xa4
_0214FDEC:
	add r0, r5, r6, lsl #3
	bl FUN_020404cc
	add r6, r6, #1
	cmp r6, #2
	blt _0214FDEC
	mov r5, #0
_0214FE04:
	mov r0, r4
	mov r1, r5
	bl FUN_ov132_02144808
	bl FUN_020404cc
	add r5, r5, #1
	cmp r5, #5
	blt _0214FE04
	mov r0, r4
	bl FUN_ov132_0213bdec
	mov r0, r4
	bl FUN_ov132_0213be3c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_0214fda0

	arm_func_start FUN_ov132_0214fe34
FUN_ov132_0214fe34: ; 0x0214FE34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, _0214FF60 ; =0x0209BA20
	mov r9, r1
	mov r4, r2
	bl FUN_0207318c
	bl FUN_02073e00
	cmp r0, #0
	beq _0214FF54
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0213f354
	cmp r0, #0
	bne _0214FF54
	mov r0, r9
	bl FUN_02040128
	mov r7, #0
	mov r1, r0
	mov r0, r10
	sub r2, r7, #0xc000
	mov r3, #1
	str r7, [sp]
	bl FUN_ov132_0213f37c
	mov r6, r0
	cmp r9, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_ov16_020f0810
	mov r8, r0
	mov r11, #0x1000
	mov r4, #0x3000
_0214FEB0:
	mov r0, r10
	mov r1, r8
	mov r2, r7
	bl FUN_ov126_0213938c
	movs r5, r0
	beq _0214FF44
	ldrsh r2, [r9, #0x94]
	ldrsh r1, [r5, #0x94]
	cmp r2, r1
	bne _0214FEE0
	mov r1, r4
	b _0214FF40
_0214FEE0:
	mov r0, r10
	mov r1, r5
	mov r2, r6
	bl FUN_01ffb9e4
	cmp r0, #0
	mov r0, r5
	bne _0214FF3C
	mov r1, r11
	bl FUN_0206dac4
	mov r0, #0x64
	bl FUN_ov16_020ef8d4
	cmp r0, #0x32
	blo _0214FF2C
	ldr r0, [r5, #0x84]
	ldr r0, [r0, #4]
	subs r0, r0, r6
	rsbmi r0, r0, #0
	cmp r0, #0x20000
	ble _0214FF44
_0214FF2C:
	mov r0, r5
	mov r1, #0x2000
	bl FUN_0206dac4
	b _0214FF44
_0214FF3C:
	mov r1, #0x3000
_0214FF40:
	bl FUN_0206dadc
_0214FF44:
	add r7, r7, #1
	cmp r7, #0xb
	blt _0214FEB0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214FF54:
	mov r0, r10
	bl FUN_ov132_0213be3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0214FF60: .word unk_0209BA20
	arm_func_end FUN_ov132_0214fe34

	arm_func_start FUN_ov132_0214ff64
FUN_ov132_0214ff64: ; 0x0214FF64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r4, r2
	mov r10, r0
	mvn r5, #0x80000000
	mov r9, r1
	mov r0, r4
	mov r8, r3
	sub r6, r5, #0x80000000
	bl FUN_0206d5f0
	cmp r9, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0213c448
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	add r11, sp, #0xc
_0214FFB8:
	mov r0, r10
	mov r1, r9
	mov r2, r7
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02150038
	bl FUN_0206d9f8
	cmp r0, #0
	bne _02150038
	str r11, [sp]
	mov r12, #1
	mov r0, r10
	mov r1, r8
	mov r2, r4
	add r3, sp, #0x10
	str r12, [sp, #4]
	bl FUN_ov132_0214c74c
	cmp r0, #0
	beq _02150038
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02150028
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_02156f64
	b _02150038
_02150028:
	ldr r0, [sp, #0xc]
	cmp r0, r5
	ldrltsh r6, [r4, #0x94]
	movlt r5, r0
_02150038:
	add r7, r7, #1
	cmp r7, #0xb
	blt _0214FFB8
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r4, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	bne _02150080
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02150080:
	ldr r0, [r4, #0x88]
	ldrb r0, [r0, #0x89]
	cmp r0, #8
	bge _021500A0
	mov r0, r4
	bl FUN_0206da78
	cmp r0, #0x33
	bne _021500D0
_021500A0:
	add r0, sp, #0x10
	mov r2, #0x33
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	mov r0, r10
	mov r1, r4
	sub r3, r2, #0x34
	str r5, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021500D0:
	add r0, sp, #0x10
	mov r2, #0x11
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	mov r0, r10
	mov r1, r4
	sub r3, r2, #0x12
	str r5, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0214ff64

	arm_func_start FUN_ov132_02150100
FUN_ov132_02150100: ; 0x02150100
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r4, r2
	mov r2, #0
	mov r9, r1
	mov r1, r2
	mov r10, r0
	sub r5, r1, #0x80000001
	sub r1, r1, #1
	mov r0, r4
	str r2, [sp, #0x14]
	mov r11, r3
	str r1, [sp, #0x10]
	ldr r8, [sp, #0x48]
	bl FUN_0206cbf8
	mov r7, r0
	mov r0, r4
	bl FUN_0206d5f0
	cmp r9, r0
	moveq r0, #1
	streq r0, [sp, #0xc]
	ldrne r0, [sp, #0x14]
	mov r1, r8
	strne r0, [sp, #0xc]
	mov r0, r10
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0215019C
	ldrsh r2, [r4, #0x94]
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213bab8
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215019C:
	mov r6, #0
_021501A0:
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _0215024C
	bl FUN_0206d9f8
	cmp r0, #0
	bne _0215024C
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	strne r4, [sp, #0x14]
	bne _0215024C
	mov r0, r4
	bl FUN_0206cbf8
	cmp r7, r0
	bne _02150200
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_0212d500
	cmp r0, #0
	beq _0215024C
_02150200:
	mov r0, r4
	bl FUN_02040b4c
	cmp r0, #0
	bne _0215024C
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r11
	mov r2, r4
	add r3, sp, #0x1c
	bl FUN_ov132_0214c74c
	cmp r0, #0
	ldrne r1, [sp, #0x18]
	cmpne r1, r5
	ldrltsh r0, [r4, #0x94]
	movlt r5, r1
	strlt r0, [sp, #0x10]
_0215024C:
	add r6, r6, #1
	cmp r6, #0xb
	blt _021501A0
	ldr r0, [sp, #0x14]
	mov r4, #0
	cmp r0, #0
	beq _02150280
	bl FUN_0206d9f8
	cmp r0, #0
	bne _02150280
	ldr r1, [sp, #0x14]
	mov r0, r10
	bl FUN_ov132_02156f64
_02150280:
	ldr r0, [sp, #0x10]
	bl FUN_ov16_020efa80
	movs r5, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _021502C8
	add r0, sp, #0x1c
	stmia sp, {r0, r4}
	mov r2, #0x10
	mov r0, r10
	mov r1, r5
	sub r3, r2, #0x11
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021502C8:
	ldr r1, [r5, #0x88]
	ldrb r1, [r1, #0x89]
	cmp r1, #8
	bge _021502E4
	bl FUN_0206da78
	cmp r0, #0x33
	bne _0215030C
_021502E4:
	add r0, sp, #0x1c
	stmia sp, {r0, r4}
	mov r2, #0x33
	mov r0, r10
	mov r1, r5
	sub r3, r2, #0x34
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215030C:
	add r0, sp, #0x1c
	stmia sp, {r0, r4}
	mov r2, #0x11
	mov r0, r10
	mov r1, r5
	sub r3, r2, #0x12
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_02150100

	arm_func_start FUN_ov132_02150334
FUN_ov132_02150334: ; 0x02150334
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r7, #1
	mov r5, r1
	mov r4, r2
	mov r8, r3
	strb r7, [r6, #0x344]
	bl FUN_ov132_02144f4c
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _021505C0 ; =0x0209A2C0
	ldrb r0, [r0, #0x5f]
	tst r0, #0x40
	moveq r7, #0
	cmp r7, #0
	bne _02150398
	ldr r0, _021505C0 ; =0x0209A2C0
	ldrb r0, [r0, #0x58]
	cmp r0, #0x16
	bne _021503F0
_02150398:
	mov r0, r5
	bl FUN_02040128
	mov r9, r0
	ldr r7, _021505C0 ; =0x0209A2C0
	add r3, sp, #4
	str r3, [sp]
	mov r0, r6
	mov r1, r7
	mov r2, r9
	mov r3, #0x78
	bl FUN_ov126_0212c1cc
	cmp r0, #0
	beq _021503F0
	mov r0, r6
	mov r1, r9
	mov r2, #0x4000
	bl FUN_01ffb1b0
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	add r0, r2, r0
	str r1, [r7, #0x18]
	str r0, [r7, #0x1c]
_021503F0:
	ldr r2, [sp, #0x28]
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0214fe34
	mov r1, #2
	mov r0, r6
	mov r2, r1
	mov r3, r5
	bl FUN_ov132_0213f13c
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov132_0213effc
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02158664
	mov r0, r6
	mov r9, #0
	mov r1, r9
	bl FUN_ov132_021585c4
	mov r0, r6
	mov r7, #1
	mov r1, r7
	bl FUN_ov132_021585c4
	str r8, [sp]
	mov r0, r6
	mov r1, r9
	mov r2, r5
	mov r3, r4
	bl FUN_ov132_02150100
	str r8, [sp]
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov132_02150100
	sub r0, r7, #2
	strb r0, [r6, #0x1a7]
	ldr r0, _021505C4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02150514
	add r7, r6, #0xa4
	b _021504F4
_021504A0:
	mov r0, r6
	mov r1, r9
	bl FUN_ov132_021447fc
	mov r8, r0
	bl FUN_020404cc
	add r0, r7, r9, lsl #3
	bl FUN_02040a80
	cmp r0, #0
	beq _021504F0
	ldrb r1, [r4, #0x58]
	mov r0, r6
	bl FUN_ov126_0212d500
	cmp r0, #0
	addeq r1, r6, r9, lsl #3
	ldreq r0, [r1, #0xa4]
	streq r0, [r8]
	ldreq r0, [r1, #0xa8]
	streq r0, [r8, #4]
	add r0, r7, r9, lsl #3
	bl FUN_020404cc
_021504F0:
	add r9, r9, #1
_021504F4:
	cmp r9, #2
	blt _021504A0
	b _02150584
_02150500:
	mov r0, r6
	mov r1, r9
	bl FUN_ov132_02144808
	bl FUN_020404cc
	add r9, r9, #1
_02150514:
	cmp r9, #5
	blt _02150500
	mov r9, #0
	add r8, r6, #0xa4
	mov r7, #4
	b _0215057C
_0215052C:
	add r0, r8, r9, lsl #3
	bl FUN_02040a80
	cmp r0, #0
	bne _02150578
	ldrb r1, [r4, #0x58]
	mov r0, r6
	bl FUN_ov126_0212d500
	cmp r0, #0
	bne _02150570
	mov r0, r6
	mov r1, r7
	bl FUN_ov132_02144808
	add r2, r6, r9, lsl #3
	ldr r1, [r2, #0xa4]
	str r1, [r0]
	ldr r1, [r2, #0xa8]
	str r1, [r0, #4]
_02150570:
	add r0, r8, r9, lsl #3
	bl FUN_020404cc
_02150578:
	add r9, r9, #1
_0215057C:
	cmp r9, #2
	blt _0215052C
_02150584:
	ldrb r1, [r4, #0x58]
	mov r0, r6
	bl FUN_ov126_0212d500
	cmp r0, #0
	beq _021505A4
	ldr r0, _021505C8 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3b14 ; may be ov15
_021505A4:
	mov r2, #0
	mov r0, r6
	mov r1, r5
	strb r2, [r6, #0x367]
	bl FUN_ov132_021505cc
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021505C0: .word unk_0209A2C0
_021505C4: .word unk_020A0640
_021505C8: .word unk_02099F14
	arm_func_end FUN_ov132_02150334

	arm_func_start FUN_ov132_021505cc
FUN_ov132_021505cc: ; 0x021505CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x6c
	ldr r5, _021508F4 ; =0x0209A2C0
	mov r4, r0
	mov r11, r1
	mov r10, #0
	bl FUN_ov16_020f066c
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, r10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0x5f]
	tst r0, #2
	movne r0, #1
	moveq r0, r10
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0x5f]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r11
	bl FUN_0206d6c4
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov132_02144780
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r5, #0x58]
	mov r0, r4
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0x5f]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0x5f]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r5, #0x58]
	mov r0, r4
	bl FUN_ov126_0212d500
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, r11
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02150730
	mov r0, r4
	mov r1, r11
	bl FUN_ov126_02138ec0
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02150730:
	ldrh r0, [r5, #0x52]
	ldr r1, _021508F8 ; =FX_SinCosTable_
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r2, r0, #1
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	ldrsh r3, [r1, r2]
	ldrsh r0, [r1, r0]
	mov r2, #0x10000
	umull r1, r8, r3, r2
	mov r3, r3, asr #0x1f
	mla r8, r3, r2, r8
	umull r7, r6, r0, r2
	mov r3, r0, asr #0x1f
	mla r6, r3, r2, r6
	adds r1, r1, #0x800
	adc r0, r8, #0
	adds r7, r7, #0x800
	mov r8, r1, lsr #0xc
	orr r8, r8, r0, lsl #20
	ldr r3, [r5]
	adc r1, r6, #0
	add r3, r3, r8
	mov r2, r7, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r0, [r5, #4]
	str r3, [sp, #0xc]
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, _021508FC ; =0x00210001
	add r0, sp, #0x14
	stmia sp, {r0, r1}
	add r1, sp, #0xc
	mov r0, r4
	add r3, sp, #0x40
	mov r2, #0xb
	str r11, [sp, #8]
	mov r8, #0
	bl FUN_ov132_0213f1d8
	mov r9, r0
	mov r0, r11
	bl FUN_0206cc34
	add r6, r0, #0xc
	add r7, r0, #8
	b _02150850
_021507E8:
	add r0, sp, #0x14
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0x1c000
	bgt _0215084C
	add r0, sp, #0x40
	ldr r0, [r0, r8, lsl #2]
	bl FUN_ov16_020efa80
	movs r10, r0
	beq _0215084C
	bl FUN_0206cc34
	cmp r0, r7
	blt _0215084C
	mov r0, r10
	mov r5, #8
	bl FUN_0206cc34
	cmp r0, r6
	movge r5, #9
	mov r0, #0x64
	bl FUN_ov16_020ef8d4
	mov r1, r5
	mov r5, r0
	mov r0, r4
	bl FUN_ov132_021448a8
	cmp r5, r0
	blo _02150858
_0215084C:
	add r8, r8, #1
_02150850:
	cmp r8, r9
	blt _021507E8
_02150858:
	cmp r8, r9
	mov r5, #0
	mov r6, #1
	addeq sp, sp, #0x6c
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r10, #0x84]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r3, r6
	stmia r2, {r0, r1}
	str r6, [sp]
	str r5, [sp, #4]
	ldrsh r1, [r10, #0x94]
	mov r0, r4
	mov r2, r5
	bl FUN_01ff8c44
	mov r0, r10
	bl FUN_0206d5f0
	mov r2, r0, lsl #1
	add r3, r4, #0x2e8
	ldrh r1, [r3, r2]
	mov r0, r4
	add r1, r1, #1
	strh r1, [r3, r2]
	bl FUN_ov132_02152eb0
	ldrsh r1, [r11, #0x94]
	mov r0, r4
	mov r2, #6
	bl FUN_ov132_02152ec4
	mov r0, r4
	mov r1, r11
	mov r2, #0x3c
	mov r3, r6
	stmia sp, {r5, r6}
	bl FUN_ov132_0213c29c
	mov r0, r6
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021508F4: .word unk_0209A2C0
_021508F8: .word FX_SinCosTable_
_021508FC: .word 0x00210001
	arm_func_end FUN_ov132_021505cc

	arm_func_start FUN_ov132_02150900
FUN_ov132_02150900: ; 0x02150900
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
_0215090C:
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_0213922c
	movs r1, r0
	beq _02150928
	mov r0, r6
	bl FUN_ov132_0213e710
_02150928:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0215090C
	mov r5, #0
	add r4, r6, #0xa4
_0215093C:
	add r0, r4, r5, lsl #3
	bl FUN_020404cc
	add r5, r5, #1
	cmp r5, #2
	blt _0215093C
	mov r4, #0
_02150954:
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02144808
	bl FUN_020404cc
	add r4, r4, #1
	cmp r4, #5
	blt _02150954
	mov r0, r6
	bl FUN_ov126_0212d6b0
	mov r0, r6
	mov r1, #1
	bl FUN_ov132_02144a10
	mov r0, r6
	bl FUN_ov132_0213be3c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02150900

	arm_func_start FUN_ov132_02150990
FUN_ov132_02150990: ; 0x02150990
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r8, r1
	mov r9, r0
	mov r0, r8
	bl FUN_0206d6c4
	cmp r0, #0
	beq _021509D4
	mov r0, r9
	bl FUN_ov132_021448f4
	cmp r0, #0
	bne _021509D4
	ldrsh r1, [r8, #0x94]
	mov r0, r9
	bl FUN_ov132_02150fe4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021509D4:
	ldr r1, [r8, #0x84]
	mov r0, r8
	ldr r6, [r1, #4]
	ldr r7, [r1]
	bl FUN_ov16_020f0810
	bl FUN_02040138
	ldrsh r1, [r8, #0x94]
	mov r4, #1
	mov r5, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	mov r1, r7
	mov r2, r6
	mov r0, r9
	mov r3, r4
	bl FUN_ov132_0214c60c
	mov r6, r0
	mov r0, r8
	bl FUN_0206d6c4
	cmp r0, #0
	cmpne r6, #0
	ldrne r0, [sp, #0x10]
	cmpne r0, #0x20000
	bge _02150AD0
	str r5, [sp]
	str r4, [sp, #4]
	ldrsh r1, [r8, #0x94]
	mov r0, r9
	mov r2, r5
	mov r3, r4
	bl FUN_01ff8c44
	mov r5, #0x6e000
	add r2, sp, #0x14
	mov r0, r9
	mov r1, r8
	mov r3, r4
	str r5, [sp]
	bl FUN_ov132_0214067c
	ldr r1, _02150AF4 ; =0x0209A2C0
	mov r0, r9
	ldr r1, [r1, #0x30]
	mov r4, #2
	bl FUN_ov126_0212d5f8
	cmp r0, #0
	mov r0, r9
	movne r4, #0xa
	bl FUN_ov132_02144780
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r0, r9
	mov r3, r4
	bl FUN_ov126_0212c3bc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02150AD0:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldrsh r1, [r8, #0x94]
	mov r0, r9
	mov r3, #1
	bl FUN_01ff8c44
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02150AF4: .word unk_0209A2C0
	arm_func_end FUN_ov132_02150990

	arm_func_start FUN_ov132_02150af8
FUN_ov132_02150af8: ; 0x02150AF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov132_02144780
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02150B50 ; =0x0209A2C0
	ldrb r0, [r0, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, _02150B50 ; =0x0209A2C0
	mov r0, r4
	ldrb r1, [r1, #0x58]
	bl FUN_ov126_0212d500
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r4, pc}
_02150B50: .word unk_0209A2C0
	arm_func_end FUN_ov132_02150af8

	arm_func_start FUN_ov132_02150b54
FUN_ov132_02150b54: ; 0x02150B54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl FUN_0206da78
	ldr r2, [r5, #0x84]
	mov r8, #0
	str r0, [sp, #0x10]
	mov r0, r6
	mov r1, r8
	ldrb r11, [r2, #0x1a]
	bl FUN_ov132_02143114
	mov r7, r0
	mov r0, r6
	bl FUN_ov126_021375d4
	mov r9, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02144814
	mov r10, r0
	ldrb r1, [r7, #0x25]
	mov r0, r6
	bl FUN_ov126_0212d4b4
	mov r7, r0
	cmp r10, #0
	beq _02150BE8
	mov r0, r10
	bl FUN_02040a80
	cmp r0, #0
	bne _02150BE8
	cmp r4, #0xf
	cmpne r4, #9
	beq _02150BE8
	cmp r4, #0x14
	bne _02150CBC
_02150BE8:
	mov r10, #0
	cmp r4, #0xf
	moveq r10, #0x32
	beq _02150C00
	cmp r4, #9
	moveq r10, #0x14
_02150C00:
	cmp r10, #0
	blt _02150CA8
	cmp r9, #0
	beq _02150C20
	ldrsh r1, [r9, #0xa]
	ldr r0, _02150EA8 ; =0x0209BA20
	bl FUN_0204a2c4
	mov r8, r0
_02150C20:
	cmp r8, #0
	beq _02150C4C
	ldrb r0, [r8, #0x12]
	cmp r0, #2
	bne _02150C4C
	add r3, sp, #0x14
	mov r0, r6
	mov r1, r5
	mov r2, #0x78000
	bl FUN_ov132_0213fa08
	b _02150CA0
_02150C4C:
	mov r0, #0x64
	bl FUN_ov16_020ef928
	cmp r0, r10
	bhs _02150C80
	mov r8, #0xf
	add r2, sp, #0x14
	add r3, sp, #0x1c
	mov r0, r6
	mov r1, r5
	str r8, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	bne _02150CA0
_02150C80:
	mov r2, #0x3c000
	cmp r4, #0x14
	moveq r2, r2, asr #1
	add r3, sp, #0x14
	mov r0, r6
	mov r1, r5
	moveq r4, #9
	bl FUN_ov132_0213fa80
_02150CA0:
	add r10, sp, #0x14
	b _02150CBC
_02150CA8:
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_0212d278
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02150CBC:
	mov r8, #1
	str r8, [sp]
	str r8, [sp, #4]
	ldrsh r1, [r5, #0x94]
	mov r3, #0
	cmp r4, #9
	cmpne r4, #0xf
	movne r3, #1
	mov r0, r6
	mov r2, #0
	bl FUN_01ff8c44
	cmp r4, #0xf
	bne _02150D7C
	mov r0, r6
	bl FUN_ov132_02144780
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r3, r4
	ldmia r10, {r1, r2}
	mov r0, r6
	bl FUN_ov126_0212c3bc
	str r8, [sp]
	ldr r2, [sp, #0x10]
	mov r3, r11
	mov r0, r6
	mov r1, r5
	str r7, [sp, #4]
	bl FUN_ov132_0214a270
	cmp r7, #0
	cmpne r9, #0
	beq _02150D58
	mov r0, r6
	mov r1, r9
	mov r2, r8
	mov r3, #2
	bl FUN_ov126_021374a8
_02150D58:
	ldrsh r2, [r5, #0x94]
	ldr r0, _02150EAC ; =0x0209A2C0
	mov r1, #0x10
	str r2, [r0, #0x4c]
	ldrb r2, [r0, #0x58]
	add sp, sp, #0x20
	strb r2, [r0, #0x59]
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02150D7C:
	cmp r7, #0
	mov r7, #0
	cmpne r9, #0
	beq _02150E64
	cmp r4, #9
	bne _02150E64
	mov r0, r6
	bl FUN_ov132_02144780
	str r0, [sp]
	mov r0, r7
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r6
	mov r3, r4
	ldmia r10, {r1, r2}
	bl FUN_ov126_0212c3bc
	ldrsb r0, [r9, #0xc]
	bl FUN_ov16_020f07f4
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020f0810
	mov r7, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_021399d0
	mov r1, r9
	mov r0, r6
	mov r2, #0
	mov r3, #4
	bl FUN_ov126_021374a8
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r0, #0xf]
	tst r0, #0x10
	moveq r8, #0
	cmp r8, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, r7
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_02138e80
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, #0xd
	bl FUN_ov132_021447d0
	mov r1, #2
	mov r0, #7
	add sp, sp, #0x20
	str r1, [r6, #0x1c0]
	str r0, [r6, #0x1bc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02150E64:
	mov r0, r5
	mov r1, #4
	mov r2, #0x1e
	bl FUN_0206dbb4
	mov r0, r6
	bl FUN_ov132_02144780
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r6
	mov r3, r4
	ldmia r10, {r1, r2}
	bl FUN_ov126_0212c3bc
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02150EA8: .word unk_0209BA20
_02150EAC: .word unk_0209A2C0
	arm_func_end FUN_ov132_02150b54

	arm_func_start FUN_ov132_02150eb0
FUN_ov132_02150eb0: ; 0x02150EB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, r1
	bl FUN_ov126_021375d4
	mov r8, #0x1e
	mov r4, r0
	mov r0, r5
	mov r2, r8
	mov r1, #2
	bl FUN_0206dbb4
	mov r7, #0
	mov r2, r8
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, r6
	mov r1, r5
	mov r3, r7
	bl FUN_ov132_0213c29c
	mov r2, r7
	mov r0, r6
	mov r1, r5
	bl FUN_01ff9384
	ldr r0, _02150FD8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02150F34
	ldr r0, _02150FDC ; =0x02099EF0
	ldrh r2, [r4, #0xa]
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov126_02130a98
_02150F34:
	mov r0, r6
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r6
	mov r1, #7
	bl FUN_ov132_021447f4
	mov r0, r6
	mov r1, r4
	mov r2, #0
	mov r3, #1
	bl FUN_ov126_021374a8
	ldrsh r1, [r5, #0x94]
	ldr r5, _02150FE0 ; =0x0209A2C0
	mov r4, r0
	str r1, [r5, #0x4c]
	ldrb r1, [r5, #0x58]
	mov r0, #0x10
	strb r1, [r5, #0x59]
	strb r0, [r5, #0x58]
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	bl FUN_02040128
	mov r1, r5
	mov r2, r0
	add r5, sp, #8
	mov r0, r6
	mov r3, #0x32
	str r5, [sp]
	bl FUN_ov126_0212c1cc
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #8]
	str r0, [r4]
	ldr r0, [sp, #0xc]
	str r0, [r4, #4]
	ldrb r0, [r4, #0x10]
	orr r0, r0, #0x10
	strb r0, [r4, #0x10]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02150FD8: .word unk_020A0640
_02150FDC: .word unk_02099EF0
_02150FE0: .word unk_0209A2C0
	arm_func_end FUN_ov132_02150eb0

	arm_func_start FUN_ov132_02150fe4
FUN_ov132_02150fe4: ; 0x02150FE4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020efa80
	ldr r1, _02151090 ; =0x0209A2C0
	mov r6, r0
	ldr r1, [r1, #0x4c]
	cmp r1, #0
	blt _02151024
	mov r0, r4
	bl FUN_ov16_020f06d8
	cmp r0, #0
	bne _02151024
	b _02151040
_02151024:
	ldr r0, _02151090 ; =0x0209A2C0
	ldrb r0, [r0, #0x5f]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0215105C
_02151040:
	mov r0, r6
	bl FUN_0206d5f0
	add r2, r5, #0x2e8
	mov r1, r0, lsl #1
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
_0215105C:
	mov r6, #0
	ldr r0, _02151090 ; =0x0209A2C0
	mov r1, r6
	bl FUN_ov126_0212fc80
	mov r2, #1
	str r6, [sp]
	mov r0, r5
	mov r1, r4
	mov r3, r2
	str r6, [sp, #4]
	bl FUN_01ff8c44
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02151090: .word unk_0209A2C0
	arm_func_end FUN_ov132_02150fe4

	arm_func_start FUN_ov132_02151094
FUN_ov132_02151094: ; 0x02151094
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _02151208 ; =0x0209A2C0
	mov r7, r0
	mov r6, r1
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	blt _021510D4
	ldrsh r0, [r6, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	beq _021510EC
_021510D4:
	ldrb r0, [r4, #0x5f]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02151108
_021510EC:
	mov r0, r6
	bl FUN_0206d5f0
	add r2, r7, #0x2e8
	mov r1, r0, lsl #1
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
_02151108:
	mov r0, r4
	mov r1, #0
	bl FUN_ov126_0212fc80
	ldrsh r5, [r6, #0x94]
	mov r0, r4
	mov r1, r5
	bl FUN_ov126_0212fca8
	cmp r0, #0
	beq _02151138
	mov r0, r4
	mov r1, #1
	bl FUN_ov126_0212fc30
_02151138:
	mov r0, r5, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r5, #0
	str r0, [r4, #0x48]
	mvnge r0, #0
	strge r0, [r4, #0x4c]
	mov r0, #0x80000000
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	ldrb r1, [r4, #0x58]
	mov r5, #0
	mov r0, r4
	strb r1, [r4, #0x59]
	mov r1, r5
	strb r5, [r4, #0x58]
	bl FUN_ov126_0212fce8
	strb r5, [r4, #0x5c]
	strb r5, [r4, #0x5e]
	strb r5, [r4, #0x5f]
	ldr r0, _0215120C ; =0x020A0640
	strh r5, [r4, #0x54]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _021511F4
	mov r0, r6
	bl FUN_02040148
	mov r1, r0
	mov r0, r7
	bl FUN_ov132_021447fc
	cmp r0, #0
	beq _021511FC
	bl FUN_020404cc
	b _021511FC
_021511BC:
	mov r0, r6
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _021511F0
	mov r0, r7
	mov r1, r5
	bl FUN_ov132_02144808
	cmp r0, #0
	beq _021511F0
	bl FUN_020404cc
_021511F0:
	add r5, r5, #1
_021511F4:
	cmp r5, #5
	blt _021511BC
_021511FC:
	mov r0, #2
	bl FUN_ov16_020f05c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02151208: .word unk_0209A2C0
_0215120C: .word unk_020A0640
	arm_func_end FUN_ov132_02151094

	arm_func_start FUN_ov132_02151210
FUN_ov132_02151210: ; 0x02151210
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r1
	mov r5, #0x1e
	mov r7, r0
	mov r0, r6
	mov r2, r5
	mov r1, #2
	bl FUN_0206dbb4
	mov r4, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r4, [sp]
	mov r12, #1
	str r12, [sp, #4]
	bl FUN_ov132_0213c29c
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_01ff9384
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_02151210

	arm_func_start FUN_ov132_02151270
FUN_ov132_02151270: ; 0x02151270
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r7, #0x1e
	mov r6, r0
	mov r0, r5
	mov r2, r7
	mov r4, #0
	mov r1, #2
	bl FUN_0206dbb4
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, r4
	str r4, [sp]
	mov r12, #1
	str r12, [sp, #4]
	bl FUN_ov132_0213c29c
	ldr r1, _021513CC ; =0x0209A2C0
	mov r0, r6
	ldrb r1, [r1, #0x58]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _021512DC
	mov r0, r6
	bl FUN_ov126_021375d4
	mov r4, r0
_021512DC:
	cmp r4, #0
	beq _02151328
	ldrsh r1, [r4, #8]
	ldr r0, _021513D0 ; =0x000001F6
	cmp r1, r0
	bne _02151328
	mov r0, r6
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r6
	mov r1, #0xe
_02151308:
	bl FUN_ov132_021447f4
	mov r2, #0
	mov r0, r6
	mov r1, r4
	mov r3, r2
	bl FUN_ov126_021374a8
	mov r4, r0
	b _02151368
_02151328:
	cmp r4, #0
	beq _02151358
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	cmpne r0, #3
	bne _02151358
	mov r0, r6
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r6
	mov r1, #9
	b _02151308
_02151358:
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_01ff9384
_02151368:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	bl FUN_02040128
	add r5, sp, #8
	mov r2, r0
	ldr r1, _021513CC ; =0x0209A2C0
	mov r0, r6
	mov r3, #0x1e
	str r5, [sp]
	bl FUN_ov126_0212c1cc
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #8]
	str r0, [r4]
	ldr r0, [sp, #0xc]
	str r0, [r4, #4]
	ldrb r0, [r4, #0x10]
	orr r0, r0, #0x10
	strb r0, [r4, #0x10]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021513CC: .word unk_0209A2C0
_021513D0: .word 0x000001F6
	arm_func_end FUN_ov132_02151270

	arm_func_start FUN_ov132_021513d4
FUN_ov132_021513d4: ; 0x021513D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov126_02138a34
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_ov132_02151408
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_ov132_02151408
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_021513d4

	arm_func_start FUN_ov132_02151408
FUN_ov132_02151408: ; 0x02151408
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r10, r0
	mov r11, #0
	mov r0, r9
	mov r4, r2
	mov r6, r11
	bl FUN_ov16_020f0a30
	cmp r0, #0
	cmpne r9, r4
	beq _02151444
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x28c]
	tst r0, #4
	movne r6, #1
_02151444:
	cmp r6, #0
	beq _021514A0
	mov r5, #0
	mov r7, r5
_02151454:
	mov r0, r10
	mov r1, r4
	mov r2, r7
	bl FUN_ov126_0213938c
	movs r1, r0
	beq _0215147C
	mov r0, r10
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	addne r5, r5, #1
_0215147C:
	add r7, r7, #1
	cmp r7, #0xb
	blt _02151454
	cmp r5, #0
	mov r11, #0
	ble _021514A0
	mov r0, r5
	bl FUN_ov16_020ef8d4
	mov r11, r0
_021514A0:
	mov r7, #0
	mov r8, r7
_021514A8:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov126_0213938c
	movs r5, r0
	beq _02151534
	mov r0, r10
	mov r1, r5
	mov r2, #1
	bl FUN_ov132_0215215c
	cmp r6, #0
	beq _02151534
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	beq _02151534
	cmp r11, r7
	bne _02151530
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_02135124
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	mov r2, r4
	mov r0, r10
	bl FUN_ov126_02138abc
	mov r3, r0
	mov r1, r5
	mov r0, r10
	ldmia r3, {r2, r3}
	bl FUN_ov126_02138a88
_02151530:
	add r7, r7, #1
_02151534:
	add r8, r8, #1
	cmp r8, #0xb
	blt _021514A8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_02151408

	arm_func_start FUN_ov132_02151544
FUN_ov132_02151544: ; 0x02151544
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _021515E0 ; =0x0209BA20
	mov r5, #0
	ldr r6, [r1, #0x860]
	mov r7, r0
	mov r8, r5
_0215155C:
	mov r0, r7
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r4, r0
	beq _021515C0
	mov r0, r7
	mov r1, r4
	bl FUN_ov132_02151778
	mov r0, r7
	mov r1, r4
	bl FUN_ov126_02138cc8
	ldr r2, [r4, #0x88]
	ldrsh r1, [r2, #0x20]
	cmp r1, #0
	ldrgtsh r0, [r2, #0x20]
	subgt r0, r0, #1
	strgth r0, [r2, #0x20]
	bgt _021515C0
	ldrh r0, [r0, #0x10]
	tst r0, #8
	beq _021515C0
	mov r0, r7
	mov r1, r4
	mov r2, r8
	bl FUN_ov132_0215215c
_021515C0:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0215155C
	mov r0, r6
	bl FUN_02043c5c
	mov r0, r7
	bl FUN_ov132_0213be1c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021515E0: .word unk_0209BA20
	arm_func_end FUN_ov132_02151544

	arm_func_start FUN_ov132_021515e4
FUN_ov132_021515e4: ; 0x021515E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov132_02144780
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
_021515FC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0213922c
	movs r1, r0
	beq _02151618
	mov r0, r5
	bl FUN_ov132_02151a90
_02151618:
	add r4, r4, #1
	cmp r4, #0x16
	blt _021515FC
	ldr r0, _02151634 ; =0x0209BA20
	ldr r0, [r0, #0x860]
	bl FUN_02043c5c
	ldmfd sp!, {r3, r4, r5, pc}
_02151634: .word unk_0209BA20
	arm_func_end FUN_ov132_021515e4

	arm_func_start FUN_ov132_02151638
FUN_ov132_02151638: ; 0x02151638
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov132_021447c8
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov132_02144780
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02151690 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	bl FUN_ov16_020efa80
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _02151694 ; =0x0209BA20
	bl FUN_020724dc
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r4, pc}
_02151690: .word unk_0209A2C0
_02151694: .word unk_0209BA20
	arm_func_end FUN_ov132_02151638

	arm_func_start FUN_ov132_02151698
FUN_ov132_02151698: ; 0x02151698
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, #0
	mov r10, r0
	mov r4, r9
	mov r11, #0xa
	mvn r5, #0
	mov r7, r9
	mov r6, #0x19
_021516BC:
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_0213922c
	movs r8, r0
	beq _02151764
	bl FUN_0206da78
	cmp r0, #0x12
	bne _02151764
	mov r0, r10
	mov r1, r8
	bl FUN_ov132_0213b9e8
	cmp r0, #0
	bne _02151764
	mov r0, r10
	mov r1, r8
	bl FUN_ov132_02146c30
	cmp r0, #0
	bne _02151714
	mov r0, r10
	mov r1, r8
	bl FUN_ov132_0213df14
	b _02151764
_02151714:
	mov r0, r8
	bl FUN_02040aa8
	cmp r0, #0
	beq _02151744
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, r10
	mov r1, r8
	mov r2, r6
	mov r3, r5
	str r7, [sp, #8]
	b _02151760
_02151744:
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	mov r3, r5
	str r4, [sp, #8]
_02151760:
	bl FUN_ov132_0213dfd4
_02151764:
	add r9, r9, #1
	cmp r9, #0x16
	blt _021516BC
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_02151698

	arm_func_start FUN_ov132_02151778
FUN_ov132_02151778: ; 0x02151778
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r6, r1
	bl FUN_ov126_02138cc8
	ldr r8, _0215194C ; =0x0209A2C0
	mov r4, r0
	ldr r0, [r8, #0x48]
	bl FUN_ov16_020efa80
	ldr r0, _02151950 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204fb20
	ldr r1, [r6, #0x88]
	mov r5, #0
	str r5, [r1, #0x14]
	ldr r2, [r6, #0x84]
	add r1, r7, #0x300
	ldr r2, [r2]
	str r2, [r0]
	ldr r2, [r6, #0x84]
	ldr r2, [r2, #4]
	str r2, [r0, #4]
	ldrsb r1, [r1, #0x2c]
	ldrsh r0, [r6, #0x94]
	cmp r1, r0
	bne _02151854
	ldr r0, [r8, #0x48]
	cmp r1, r0
	bne _0215184C
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	bne _0215184C
	mov r0, r7
	bl FUN_ov132_02144780
	ldrb r1, [r7, #0x32e]
	cmp r1, #0
	ldrb r1, [r7, #0x32f]
	movne r5, #1
	cmp r1, #0
	movne r1, #1
	stmia sp, {r0, r5}
	moveq r1, #0
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0x300
	ldrsb r3, [r0, #0x2d]
	ldr r1, [r7, #0x278]
	ldr r2, [r7, #0x27c]
	mov r0, r7
	bl FUN_ov126_0212c3bc
	b _02151854
_0215184C:
	mov r0, r7
	bl FUN_ov126_0212d6b0
_02151854:
	ldrh r0, [r4, #0x12]
	tst r0, #2
	bne _02151890
	mov r0, r7
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _02151890
	mov r0, r7
	bl FUN_01ff9578
	cmp r0, #0
	bne _02151890
	ldrb r0, [r7, #0x328]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_02151890:
	mov r0, r7
	mov r1, r6
	bl FUN_01ffbaf4
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_0206da78
	cmp r0, #0
	bne _02151908
	mov r0, r6
	bl FUN_02040aa8
	cmp r0, #0
	mov r0, r7
	mov r1, r6
	bne _021518E0
	bl FUN_ov132_0213ca8c
	b _021518E4
_021518E0:
	bl FUN_ov132_0213cad8
_021518E4:
	ldr r0, [r6, #0x84]
	mov r4, #0
	ldrb r3, [r0, #0x1a]
	ldrb r2, [r0, #0x1d]
	ldr r0, _02151954 ; =0x02099F14
	mov r1, r6
	str r4, [sp]
	ldr r0, [r0]
	bl FUN_ov1_020e3c14
_02151908:
	mov r0, r6
	bl FUN_0206db3c
	cmp r0, #0
	mov r0, r7
	mov r1, r6
	beq _02151928
	bl FUN_ov132_0213c844
	b _0215192C
_02151928:
	bl FUN_ov132_0213dd00
_0215192C:
	mov r0, r6
	bl FUN_0206db6c
	cmp r0, #0
	ldrne r1, [r6, #0x88]
	movne r0, #1
	strneb r0, [r1, #0x2f]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215194C: .word unk_0209A2C0
_02151950: .word unk_0209BA20
_02151954: .word unk_02099F14
	arm_func_end FUN_ov132_02151778

	arm_func_start FUN_ov132_02151958
FUN_ov132_02151958: ; 0x02151958
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r5, #0
	mov r4, r3
	mov r3, r5
	ldr r6, [sp, #0x2c]
	mov r9, r0
	mov r8, r1
	mov r7, r2
	bl FUN_ov132_0213c000
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [sp, #0x28]
	cmp r4, r0
	mov r4, #1
	mov r0, r9
	blo _02151A18
	mov r1, r7
	mov r2, r8
	mov r3, r4
	bl FUN_ov132_02151b68
	mov r0, r8
	bl FUN_0206d5f0
	mov r8, r0
	mov r0, r7
	bl FUN_0206d5f0
	cmp r8, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r7
	bl FUN_0206d9f8
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r6, #0
	addle sp, sp, #8
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r2, r6, lsl #0x10
	str r5, [sp]
	mov r0, r9
	mov r1, r7
	mov r3, r4
	mov r2, r2, lsr #0x10
	str r5, [sp, #4]
	bl FUN_ov132_0213c29c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02151A18:
	mov r1, r8
	mov r2, r7
	mov r3, r4
	bl FUN_ov132_02151b68
	mov r0, r8
	bl FUN_0206d5f0
	mov r10, r0
	mov r0, r7
	bl FUN_0206d5f0
	cmp r10, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_0206d9f8
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r6, #0
	addle sp, sp, #8
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r2, r6, lsl #0x10
	str r5, [sp]
	mov r0, r9
	mov r1, r8
	mov r3, r4
	mov r2, r2, lsr #0x10
	str r5, [sp, #4]
	bl FUN_ov132_0213c29c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov132_02151958

	arm_func_start FUN_ov132_02151a90
FUN_ov132_02151a90: ; 0x02151A90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r1
	mov r10, r0
	mov r0, r9
	bl FUN_02040aa8
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r6, #0x15
	mov r4, #1
	add r5, sp, #0
_02151AC0:
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_0213922c
	movs r7, r0
	beq _02151B58
	mov r0, r10
	mov r1, r9
	mov r2, r7
	mov r3, r5
	bl FUN_ov132_0213c000
	cmp r0, #0
	beq _02151B58
	mov r0, r9
	mov r1, r7
	bl FUN_ov16_020f0728
	mov r8, r0
	mov r0, r9
	bl FUN_0206d9f8
	cmp r0, #0
	cmpeq r8, #0
	bne _02151B24
	mov r0, r7
	bl FUN_02040aa8
	cmp r0, #0
	bne _02151B58
_02151B24:
	mov r0, r10
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl FUN_ov132_0214eff4
	cmp r0, #0
	movne r2, r7
	movne r7, r9
	moveq r2, r9
	mov r0, r10
	mov r1, r7
	mov r3, r8
	bl FUN_ov132_02151b68
_02151B58:
	subs r6, r6, #1
	bpl _02151AC0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov132_02151a90

	arm_func_start FUN_ov132_02151b68
FUN_ov132_02151b68: ; 0x02151B68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r4, _02151F50 ; =0x0209BA20
	mov r10, r0
	mov r8, r2
	mov r0, r4
	mov r9, r1
	mov r7, r3
	bl FUN_0204fb20
	mov r5, r0
	mov r0, r4
	mov r1, r8
	bl FUN_0204fb20
	ldmia r5, {r2, r4}
	ldmia r0, {r1, r3}
	sub r1, r2, r1
	mov r2, #0
	sub r0, r4, r3
	str r2, [sp]
	bl FX_Atan2Idx
	ldr r1, [r8, #0x84]
	mov r6, r0
	ldrh r1, [r1, #0x18]
	mov r0, r10
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r1, r1, #1
	mov r2, r1, lsl #1
	ldr r1, _02151F54 ; =FX_SinCosTable_
	ldrsh r4, [r1, r2]
	mov r1, r8
	bl FUN_ov126_02139920
	smull r2, r1, r0, r4
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r5, r2, lsr #0xc
	ldr r1, [r8, #0x84]
	orr r5, r5, r0, lsl #20
	ldrh r2, [r1, #0x18]
	mov r0, r10
	mov r1, r8
	mov r2, r2, asr #4
	mov r3, r2, lsl #2
	ldr r2, _02151F54 ; =FX_SinCosTable_
	ldrsh r4, [r2, r3]
	bl FUN_ov126_02139920
	smull r2, r1, r0, r4
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r4, r2, lsr #0xc
	ldr r1, [r9, #0x84]
	orr r4, r4, r0, lsl #20
	ldrh r2, [r1, #0x18]
	mov r0, r10
	mov r1, r9
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r2, r2, #1
	mov r3, r2, lsl #1
	ldr r2, _02151F54 ; =FX_SinCosTable_
	ldrsh r11, [r2, r3]
	bl FUN_ov126_02139920
	smull r2, r1, r0, r11
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r5, r5, r1
	ldr r1, [r9, #0x84]
	mov r0, r10
	ldrh r2, [r1, #0x18]
	mov r1, r9
	mov r2, r2, asr #4
	mov r3, r2, lsl #2
	ldr r2, _02151F54 ; =FX_SinCosTable_
	ldrsh r11, [r2, r3]
	bl FUN_ov126_02139920
	smull r2, r1, r0, r11
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, r4, r1
	cmp r5, #0
	cmpne r0, #0
	moveq r4, r6
	beq _02151CD0
	mov r1, r5
	bl FX_Atan2Idx
	mov r4, r0
_02151CD0:
	mov r0, r6
	mov r1, r4
	mov r2, #0x5000
	mov r5, #0x1000
	bl FUN_020405a4
	cmp r0, #0
	moveq r5, #0x400
	cmp r7, #0
	moveq r5, #0x800
	mov r0, r10
	mov r1, r4
	mov r2, r6
	bl FUN_ov126_02139050
	cmp r0, #0
	addne r0, r6, r5
	subeq r0, r6, r5
	addeq r0, r0, #0x10000
	mov r0, r0, lsl #0x10
	add r11, sp, #0xc
	mov r5, r0, lsr #0x10
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_ov132_0213c1cc
	cmp r0, #0
	beq _02151EA0
	ldr r2, [r8, #0x84]
	mov r0, r10
	mov r1, r11
	bl FUN_01ffba50
	mov r11, r0
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_02138cc8
	mov r2, r0
	mov r0, r10
	mov r1, r8
	add r3, sp, #4
	bl FUN_ov132_0214cbac
	cmp r0, #0
	bne _02151D7C
	add r0, sp, #4
	bl FUN_020404cc
_02151D7C:
	cmp r11, #0xd000
	bge _02151EA0
	cmp r7, #0
	mov r0, r9
	beq _02151E3C
	bl FUN_02040b4c
	cmp r0, #0
	beq _02151DCC
	ldr r2, [r9, #0x88]
	mov r0, r9
	ldrb r1, [r2, #0x84]
	add r1, r1, #1
	strb r1, [r2, #0x84]
	bl FUN_02040b4c
	cmp r0, #0
	bne _02151EA0
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02144720
	b _02151EA0
_02151DCC:
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_02139920
	cmp r0, #0
	ble _02151DFC
	mov r0, r6
	mov r1, r4
	mov r2, #0x4000
	bl FUN_020405a4
	cmp r0, #0
	moveq r5, r6
	beq _02151EA0
_02151DFC:
	ldr r2, [r8, #0x84]
	ldr r1, [sp, #4]
	ldr r0, [r2]
	cmp r1, r0
	ldreq r1, [sp, #8]
	ldreq r0, [r2, #4]
	cmpeq r1, r0
	bne _02151EA0
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02139920
	cmp r0, #0
	movgt r0, #1
	movgt r5, r6
	strgt r0, [sp]
	b _02151EA0
_02151E3C:
	bl FUN_02040b4c
	cmp r0, #0
	ldrne r2, [r9, #0x88]
	ldrneb r1, [r2, #0x84]
	ldrneb r0, [r2, #0x85]
	addne r1, r1, #1
	cmpne r1, r0
	ldrltb r0, [r2, #0x84]
	addlt r0, r0, #1
	strltb r0, [r2, #0x84]
	blt _02151EA0
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_02139920
	cmp r0, #0
	movle r5, r6
	ble _02151EA0
	ldr r2, [r8, #0x84]
	ldr r1, [sp, #4]
	ldr r0, [r2]
	cmp r1, r0
	ldreq r1, [sp, #8]
	ldreq r0, [r2, #4]
	cmpeq r1, r0
	moveq r5, r6
_02151EA0:
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r3, _02151F54 ; =FX_SinCosTable_
	mov r0, r0, lsl #1
	ldrsh r4, [r3, r0]
	mov r2, #0xc800
	mov r1, r1, lsl #1
	umull r5, r0, r4, r2
	ldrsh r3, [r3, r1]
	mov r4, r4, asr #0x1f
	adds r7, r5, #0x800
	mla r0, r4, r2, r0
	umull r5, r4, r3, r2
	adc r6, r0, #0
	mov r3, r3, asr #0x1f
	mov r0, r7, lsr #0xc
	mla r4, r3, r2, r4
	adds r5, r5, #0x800
	ldr r1, [r8, #0x84]
	adc r2, r4, #0
	ldr r4, [r1]
	orr r0, r0, r6, lsl #20
	mov r3, r5, lsr #0xc
	ldr r1, [r9, #0x84]
	add r0, r4, r0
	str r0, [r1]
	ldr r0, [r8, #0x84]
	orr r3, r3, r2, lsl #20
	ldr r1, [r0, #4]
	ldr r0, [r9, #0x84]
	add r1, r1, r3
	str r1, [r0, #4]
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0214a72c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02151F50: .word unk_0209BA20
_02151F54: .word FX_SinCosTable_
	arm_func_end FUN_ov132_02151b68

	arm_func_start FUN_ov132_02151f58
FUN_ov132_02151f58: ; 0x02151F58
	mov r3, #6
	mla r0, r1, r3, r0
	add r0, r0, r2
	mov r1, #0
	strb r1, [r0, #0x349]
	bx lr
	arm_func_end FUN_ov132_02151f58

	arm_func_start FUN_ov132_02151f70
FUN_ov132_02151f70: ; 0x02151F70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, #0x14
	mov r4, r0
	mov r0, #0
	mov r8, r7
	str r0, [r4, #0x28c]
	str r0, [r4, #0x290]
	mov r5, #0x64
	bl FUN_ov16_020f066c
	cmp r0, #0
	beq _02151FAC
	ldr r0, _02152154 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02151FAC:
	bl FUN_ov16_020f066c
	cmp r0, #0
	beq _02151FC8
	ldr r0, _02152158 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02151FC8:
	ldr r0, _02152154 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _02151FF8
	mov r0, #0
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _02151FF8
	mov r0, #1
	bl FUN_ov16_020f0a30
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02151FF8:
	mov r0, r4
	bl FUN_ov132_02144780
	cmp r0, #7
	addeq r7, r7, #0x14
	bl FUN_ov16_020f081c
	movs r9, r0
	moveq r10, #1
	movne r10, #0
	mov r0, r10
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _021520A0
	mov r0, r10
	bl FUN_020404bc
	mov r6, r0
	mov r0, r9
	bl FUN_020404bc
	add r0, r0, #3
	cmp r6, r0
	blt _02152060
	mov r0, r4
	mov r1, r10
	mov r2, #2
	bl FUN_ov132_0214635c
	add r8, r8, #0x14
	b _021520A0
_02152060:
	mov r0, r10
	bl FUN_020404bc
	mov r6, r0
	mov r0, r9
	bl FUN_020404bc
	add r1, r6, #2
	cmp r1, r0
	mov r0, r4
	mov r1, r10
	blt _02152098
	mov r2, #1
	bl FUN_ov132_0214635c
	add r7, r7, #0x14
	b _021520A0
_02152098:
	mov r2, #0
	bl FUN_ov132_0214635c
_021520A0:
	mov r6, #0
	add r4, r4, #0x28c
	b _02152148
_021520AC:
	mov r0, r6
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _02152144
	mov r0, r5
	bl FUN_ov16_020ef928
	cmp r0, r7
	ldrlo r0, [r4, r6, lsl #2]
	orrlo r0, r0, #1
	strlo r0, [r4, r6, lsl #2]
	mov r0, r5
	bl FUN_ov16_020ef928
	cmp r0, #0x14
	ldrlo r0, [r4, r6, lsl #2]
	orrlo r0, r0, #2
	strlo r0, [r4, r6, lsl #2]
	mov r0, r5
	bl FUN_ov16_020ef928
	cmp r0, r8
	ldrlo r0, [r4, r6, lsl #2]
	orrlo r0, r0, #4
	strlo r0, [r4, r6, lsl #2]
	mov r0, r5
	bl FUN_ov16_020ef928
	cmp r0, #0xa
	ldrlo r0, [r4, r6, lsl #2]
	orrlo r0, r0, #8
	strlo r0, [r4, r6, lsl #2]
	mov r0, r5
	bl FUN_ov16_020ef928
	cmp r0, #0x14
	bhs _02152144
	tst r0, #1
	ldr r0, [r4, r6, lsl #2]
	orrne r0, r0, #0x10
	strne r0, [r4, r6, lsl #2]
	orreq r0, r0, #0x20
	streq r0, [r4, r6, lsl #2]
_02152144:
	add r6, r6, #1
_02152148:
	cmp r6, #2
	blt _021520AC
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02152154: .word unk_020A0640
_02152158: .word unk_0209AEC0
	arm_func_end FUN_ov132_02151f70

	arm_func_start FUN_ov132_0215215c
FUN_ov132_0215215c: ; 0x0215215C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov126_02138cc8
	ldr r1, _02152204 ; =0x0209A2C0
	mov r4, r0
	ldr r0, [r1, #0x48]
	bl FUN_ov16_020efa80
	cmp r5, #0
	beq _021521DC
	ldrh r0, [r4, #0x12]
	tst r0, #2
	bne _021521DC
	mov r0, r6
	bl FUN_02040b4c
	cmp r0, #0
	bne _021521DC
	mov r0, r6
	bl FUN_0206da78
	cmp r0, #2
	beq _021521DC
	mov r12, #0
	str r12, [sp]
	mov r2, #2
	str r12, [sp, #4]
	mov r0, r7
	mov r1, r6
	sub r3, r2, #3
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
_021521DC:
	cmp r6, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x88]
	ldrb r0, [r1, #0x2f]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r1, #0x2f]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02152204: .word unk_0209A2C0
	arm_func_end FUN_ov132_0215215c

	arm_func_start FUN_ov132_02152208
FUN_ov132_02152208: ; 0x02152208
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r8, [sp, #0x28]
	ldmia r1, {r5, r6}
	mov r10, r0
	mov r9, r2
	mov r11, r3
	mov r7, #0
_02152224:
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0213922c
	movs r4, r0
	beq _02152290
	mov r0, r10
	mov r1, r4
	mov r2, r11
	mov r3, r9
	bl FUN_ov126_021393a8
	cmp r0, #0
	bne _02152290
	ldr r2, [r4, #0x84]
	ldr r0, [r2]
	subs r1, r5, r0
	ldr r0, [r2, #4]
	rsbmi r1, r1, #0
	subs r2, r6, r0
	rsbmi r2, r2, #0
	cmp r1, r8
	cmple r2, r8
	bgt _02152290
	mov r0, r10
	bl FUN_01ffba80
	cmp r8, r0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02152290:
	add r7, r7, #1
	cmp r7, #0x16
	blt _02152224
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_02152208

	arm_func_start FUN_ov132_021522a4
FUN_ov132_021522a4: ; 0x021522A4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r6, #0
	bl FUN_ov16_020f07d0
	ldr r1, _021525E0 ; =0x0209A2C0
	mov r7, r0
	ldr r0, [r1, #0x48]
	bl FUN_ov16_020efa80
	movs r8, r0
	addeq sp, sp, #0x18
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f0728
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_0206cbf8
	mov r9, r0
	mov r0, r4
	bl FUN_0206cbf8
	cmp r9, r0
	addeq sp, sp, #0x18
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl FUN_02040128
	mov r2, #0x5000
	mov r1, r0
	mov r0, r5
	rsb r2, r2, #0
	bl FUN_ov132_0213f5d4
	str r6, [sp]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r6
	bl FUN_ov132_0213f55c
	mov r10, r0
	ldr r1, [r4, #0x84]
	ldr r2, [r8, #0x84]
	mov r0, r5
	bl FUN_01ffba50
	mov r9, r0
	cmp r9, #0x96000
	addgt sp, sp, #0x18
	movgt r0, r6
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r9, #0x30000
	addlt sp, sp, #0x18
	movlt r0, r6
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	mov r1, r4
	mov r2, r10
	bl FUN_01ffb9e4
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x28000
	str r0, [sp]
	mov r10, #0x10000
	ldr r1, [r4, #0x84]
	mov r0, r5
	mov r2, r4
	mov r3, r10
	bl FUN_ov132_02152208
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_0206d6c4
	cmp r0, #0
	bne _02152424
	ldrsh r1, [r4, #0x94]
	mov r0, r5
	mov r2, #3
	bl FUN_ov132_02152ec4
	add sp, sp, #0x18
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02152424:
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r5
	bl FUN_ov132_02146348
	cmp r0, #0
	beq _0215247C
	cmp r0, #1
	beq _02152454
	cmp r0, #2
	beq _0215246C
	b _0215247C
_02152454:
	mov r0, r5
	mov r1, r7
	mov r2, r10
_02152460:
	bl FUN_01ffb1b0
	mov r3, r0
	b _02152480
_0215246C:
	mov r0, r5
	mov r1, r7
	sub r2, r10, #0x30000
	b _02152460
_0215247C:
	mov r3, #0
_02152480:
	ldr r1, [r8, #0x84]
	mov r0, r5
	ldr r2, [r1, #4]
	mov r1, r4
	add r2, r3, r2
	bl FUN_01ffb9e4
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsh r1, [r4, #0x94]
	mov r0, r5
	mov r2, #3
	bl FUN_ov132_02152ec4
	mov r0, r5
	mov r1, #4
	bl FUN_ov132_02144a84
	ldr r2, [r4, #0x84]
	mov r6, r0
	ldr r1, [r2]
	mov r0, r5
	str r1, [sp, #8]
	ldr r2, [r2, #4]
	mov r1, r4
	str r2, [sp, #0xc]
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	beq _0215253C
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r7, [r1, #4]
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r0, r5
	mov r2, r9, asr #4
	bl FUN_01ffb1b0
	add r2, r7, r0
	add r1, sp, #8
	mov r0, r6
	str r2, [sp, #0xc]
	bl FUN_02040764
	cmp r0, #0
	ldreq r1, [r4, #0x84]
	ldreq r0, [r1]
	streq r0, [sp, #8]
	ldreq r0, [r1, #4]
	streq r0, [sp, #0xc]
_0215253C:
	ldr r6, [sp, #8]
	add r10, sp, #0x10
	ldr r7, [sp, #0xc]
	mov r12, #0x10000
	add r3, sp, #8
	mov r0, r5
	mov r1, r4
	mov r2, r10
	str r12, [sp]
	mov r9, r9, asr #3
	str r9, [sp, #4]
	bl FUN_ov132_0214d5f4
	cmp r0, #0
	beq _02152590
	ldr r2, [r8, #0x84]
	mov r0, r5
	mov r1, r10
	bl FUN_01ffba50
	cmp r0, #0x96000
	ldrlt r6, [sp, #0x10]
	ldrlt r7, [sp, #0x14]
_02152590:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	mov r3, r6
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp]
	bl FUN_ov132_02153058
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsh r3, [r4, #0x94]
	add r2, sp, #0x10
	mov r0, r5
	mov r1, r8
	bl FUN_ov132_02156b58
	mov r0, #1
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021525E0: .word unk_0209A2C0
	arm_func_end FUN_ov132_021522a4

	arm_func_start FUN_ov132_021525e4
FUN_ov132_021525e4: ; 0x021525E4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl FUN_02040b4c
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_02138cc8
	mov r4, r0
	mov r0, r5
	bl FUN_02040aa8
	cmp r0, #0
	beq _0215264C
	mov r12, #0
	str r12, [sp]
	mov r2, #0x19
	str r12, [sp, #4]
	mov r0, r6
	mov r1, r5
	sub r3, r2, #0x1a
	b _02152684
_0215264C:
	ldrsh r0, [r4]
	cmp r0, #0xa
	bne _02152668
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0213df14
	b _0215268C
_02152668:
	mov r12, #0
	str r12, [sp]
	mov r2, #0xa
	str r12, [sp, #4]
	mov r0, r6
	mov r1, r5
	sub r3, r2, #0xb
_02152684:
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
_0215268C:
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov132_021525e4

	arm_func_start FUN_ov132_02152698
FUN_ov132_02152698: ; 0x02152698
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r8, r0
	mov r7, r1
	mov r6, r2
	str r3, [sp, #0xc]
	bl FUN_ov132_021525e4
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r8
	mov r1, r7
	mov r2, #0
	mov r9, #9
	bl FUN_ov132_02142870
	mov r1, #0x1e
	mul r10, r0, r1
	str r0, [sp, #0x1c]
	mov r0, r7
	mov r4, #0xb
	bl FUN_ov16_020f07d0
	str r0, [sp, #0x10]
	bl FUN_02040188
	mov r5, r0
	mov r0, r8
	mov r1, r7
	sub r11, r4, #0xc
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0215271C
	cmp r10, #0x8000
	mov r9, #6
	movlt r10, #0x8000
_0215271C:
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x10]
	cmp r0, #0
	ldreq r2, [r5, #4]
	moveq r0, #0xc000
	streq r0, [sp, #0x14]
	ldrne r2, [r5, #0xc]
	movne r0, #0x4000
	strne r0, [sp, #0x14]
	ldr r0, _021529B8 ; =0x0209A2C0
	ldr r1, [r0, #4]
	mov r0, r8
	bl FUN_01ffb9b0
	cmp r0, #0
	mov r5, #1
	moveq r5, #0
	cmp r9, #0
	mov r0, r9, lsl #0xc
	ble _0215277C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02152788
_0215277C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02152788:
	bl _ffix
	str r0, [sp, #0x20]
	ldr r2, [r7, #0x84]
	mov r0, r8
	mov r1, r6
	bl FUN_01ffba50
	mov r9, r0
	ldr r0, [r7, #0x84]
	mov r1, r6
	bl FUN_020403a8
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x18]
	cmp r9, r1, asr #1
	bge _02152850
	cmp r5, #0
	beq _021527DC
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02152850
_021527DC:
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	bne _02152850
	ldr r0, [r7, #0x84]
	mov r5, #0
	ldrb r0, [r0, #0x1d]
	mov r4, #0x2b
	cmp r0, #1
	bne _02152814
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02152828
_02152814:
	mov r0, r8
	mov r1, r7
	mov r2, #1
	mov r4, #0x2d
	bl FUN_01ff9384
_02152828:
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	sub r3, r5, #1
	str r5, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02152850:
	cmp r9, r10
	bge _02152934
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	mov r2, #0x2000
	bl FUN_020405a4
	cmp r0, #0
	bne _0215289C
	ldr r2, [r7, #0x84]
	ldr r1, [sp, #0x10]
	mov r0, r8
	bl FUN_ov132_02140b08
	cmp r0, #0
	beq _02152908
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02152908
_0215289C:
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	beq _02152900
	ldr r1, _021529B8 ; =0x0209A2C0
	mov r0, r8
	mov r2, r6
	bl FUN_01ffba50
	mov r5, r0
	ldr r0, [r8, #0x194]
	ldr r1, _021529B8 ; =0x0209A2C0
	bl FUN_ov132_02159124
	smull r0, r2, r5, r0
	adds r3, r0, #0x800
	ldr r0, [sp, #0x1c]
	adc r2, r2, #0
	smull r1, r0, r9, r0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	cmp r1, r3, lsl #1
	movgt r4, #0x2f
	b _02152934
_02152900:
	mov r4, #9
	b _02152934
_02152908:
	ldr r0, _021529B8 ; =0x0209A2C0
	ldr r11, [r0, #0x48]
	mov r0, r11
	bl FUN_ov16_020efa80
	mov r1, r0
	mov r0, r8
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02152934
	cmn r11, #1
	movgt r4, #0x30
_02152934:
	mov r0, r8
	mov r1, r7
	mov r5, #0
	bl FUN_ov132_02146c30
	cmp r0, #0
	bne _02152970
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02152970
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_0213df14
	b _02152994
_02152970:
	str r6, [sp]
	mov r2, r4
	ldr r4, [sp, #0xc]
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r7
	mov r3, r11
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
_02152994:
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	mov r1, #0x20
	bl FUN_0206dac4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021529B8: .word unk_0209A2C0
	arm_func_end FUN_ov132_02152698

	arm_func_start FUN_ov132_021529bc
FUN_ov132_021529bc: ; 0x021529BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_02040b4c
	cmp r0, #0
	beq _02152A30
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	bne _02152A04
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02152A04:
	mov r6, #0
	str r6, [sp]
	mov r2, #0x19
	str r6, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x1a
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02152A30:
	ldr r0, _02152B54 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _02152B00
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02152B00
	ldr r0, [r4, #0x88]
	ldrh r0, [r0, #0x2a]
	cmp r0, #0x5a
	bls _02152B00
	add r7, sp, #0x10
	add r6, sp, #0xc
	mov r8, #0xf
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, r6
	str r8, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	beq _02152AB4
	mov r0, #0
	stmia sp, {r0, r7}
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02152AB4:
	add r12, r8, #0xa00
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, r6
	str r12, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	beq _02152B00
	mov r0, #0
	stmia sp, {r0, r7}
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02152B00:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	bne _02152B28
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02152B28:
	mov r12, #0
	str r12, [sp]
	mov r2, #0x2e
	str r12, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x2f
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02152B54: .word unk_0209BA20
	arm_func_end FUN_ov132_021529bc

	arm_func_start FUN_ov132_02152b58
FUN_ov132_02152b58: ; 0x02152B58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, _02152BF4 ; =0x0209BA20
	bl FUN_02073184
	mov r4, r0
	ldr r6, _02152BF8 ; =0x020A0B00
	bl FUN_ov16_020f081c
	ldrh r1, [r4, #0x1e]
	mov r5, r0
	tst r1, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7, #0x366]
	cmp r0, #0
	mov r0, r6
	beq _02152B9C
	bl FUN_02074720
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02152B9C:
	bl FUN_020746dc
	mov r4, #1
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov132_02145a44
	cmp r0, #0
	beq _02152BC8
	mov r0, r6
	bl FUN_020746f8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02152BC8:
	mov r0, r5
	bl FUN_02040138
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl FUN_ov132_02145a44
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_0207470c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02152BF4: .word unk_0209BA20
_02152BF8: .word unk_020A0B00
	arm_func_end FUN_ov132_02152b58

	arm_func_start FUN_ov132_02152bfc
FUN_ov132_02152bfc: ; 0x02152BFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, _02152CA4 ; =0x0209BA20
	mov r5, r1
	bl FUN_02073184
	mov r4, r0
	bl FUN_ov16_020f081c
	ldrh r1, [r4, #0x1e]
	mov r4, r0
	tst r1, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0x20]
	cmn r1, #0x80000001
	bhs _02152C40
	mov r0, r5
	add r1, r1, #1
	bl FUN_020747c8
_02152C40:
	mov r7, #1
	mov r0, r6
	mov r1, r4
	mov r2, r7
	bl FUN_ov132_02145a44
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0x24]
	rsb r0, r7, #0x3e8
	cmp r1, r0
	bhs _02152C78
	mov r0, r5
	add r1, r1, #1
	bl FUN_020747d0
_02152C78:
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x164]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0x28]
	cmn r1, #0x80000001
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	add r1, r1, #1
	bl FUN_020747d8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02152CA4: .word unk_0209BA20
	arm_func_end FUN_ov132_02152bfc

	arm_func_start FUN_ov132_02152ca8
FUN_ov132_02152ca8: ; 0x02152CA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r1
	mov r4, r0
	mov r0, r7
	bl FUN_0206d5f0
	bl FUN_02040138
	mov r6, r0
	add r0, r4, r6
	ldrb r0, [r0, #0x364]
	cmp r0, #3
	addlo sp, sp, #0x10
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #2
	mov r0, r5
	bl FUN_ov16_020ef928
	cmp r0, #0
	movne r2, #5
	bne _02152D24
	ldr r2, [r7, #0x84]
	sub r0, r5, #3
	stmia sp, {r0, r6}
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r4
	mov r3, #1
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	mov r7, r0
	mov r2, #4
_02152D24:
	cmp r7, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r1, [r7, #0x94]
	mov r0, r4
	bl FUN_ov132_02152ec4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_02152ca8

	arm_func_start FUN_ov132_02152d44
FUN_ov132_02152d44: ; 0x02152D44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldrb r0, [r4, #0x331]
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #0x1e
	strb r1, [r4, #0x331]
	movhi r0, #0
	strhib r0, [r4, #0x331]
	ldrb r0, [r4, #0x331]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _02152E18 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	bl FUN_ov16_020efa80
	movs r6, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r5, #0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl FUN_01ffb93c
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldr r7, [r1, #4]
	ldr r8, [r1]
	bl FUN_ov16_020f0810
	ldrsh r2, [r6, #0x94]
	add r12, sp, #0x10
	mov r1, r8
	str r2, [sp]
	stmib sp, {r0, r5}
	mov r0, r4
	mov r2, r7
	mov r3, #1
	str r12, [sp, #0xc]
	bl FUN_ov132_0214c60c
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrsh r1, [r0, #0x94]
	mov r0, r4
	mov r2, #2
	bl FUN_ov132_02152ec4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02152E18: .word unk_0209A2C0
	arm_func_end FUN_ov132_02152d44

	arm_func_start FUN_ov132_02152e1c
FUN_ov132_02152e1c: ; 0x02152E1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov132_02152f98
	cmp r0, #0
	bne _02152E4C
	mov r0, r4
	bl FUN_ov132_02152d44
	ldmfd sp!, {r4, pc}
_02152E4C:
	bl FUN_ov16_020f066c
	cmp r0, #0
	beq _02152E68
	ldr r0, _02152E98 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_02152E68:
	add r1, r4, #0x300
	ldrsh r0, [r1, #0x18]
	sub r0, r0, #1
	strh r0, [r1, #0x18]
	ldrsh r0, [r1, #0x18]
	cmp r0, #0
	ldmgtfd sp!, {r4, pc}
	mov r2, #0
	mov r0, r4
	strh r2, [r1, #0x18]
	bl FUN_ov132_02152eb0
	ldmfd sp!, {r4, pc}
_02152E98: .word unk_0209AEC0
	arm_func_end FUN_ov132_02152e1c

	arm_func_start FUN_ov132_02152e9c
FUN_ov132_02152e9c: ; 0x02152E9C
	ldrb r0, [r0, #0x1a1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov132_02152e9c

	arm_func_start FUN_ov132_02152eb0
FUN_ov132_02152eb0: ; 0x02152EB0
	mov r2, #0
	sub r1, r2, #1
	strb r2, [r0, #0x1a1]
	strb r1, [r0, #0x1a2]
	bx lr
	arm_func_end FUN_ov132_02152eb0

	arm_func_start FUN_ov132_02152ec4
FUN_ov132_02152ec4: ; 0x02152EC4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _02152EFC ; =0x0209BA20
	mov r6, r0
	ldr r3, [r3, #0x828]
	mov r0, #4
	add r4, r3, r2, lsl #3
	mov r5, r1
	bl FUN_ov16_020ef928
	ldrb r2, [r4, r0]
	mov r0, r6
	mov r1, r5
	mov r3, #0x5a
	bl FUN_ov132_02152f00
	ldmfd sp!, {r4, r5, r6, pc}
_02152EFC: .word unk_0209BA20
	arm_func_end FUN_ov132_02152ec4

	arm_func_start FUN_ov132_02152f00
FUN_ov132_02152f00: ; 0x02152F00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	movs r5, r2
	mov r4, r3
	cmnne r6, #1
	mov r7, r0
	cmpne r4, #0
	bne _02152F30
	mov r0, r7
	bl FUN_ov132_02152eb0
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02152F30:
	bl FUN_ov132_02152e9c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7, #0x328]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0x64
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x20
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02152F94 ; =0x00007FFF
	cmp r4, #0
	movlt r4, #0
	cmp r4, r0
	movgt r4, r0
	add r0, r7, #0x300
	strh r4, [r0, #0x18]
	strb r5, [r7, #0x1a1]
	strb r6, [r7, #0x1a2]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02152F94: .word 0x00007FFF
	arm_func_end FUN_ov132_02152f00

	arm_func_start FUN_ov132_02152f98
FUN_ov132_02152f98: ; 0x02152F98
	stmfd sp!, {r3, lr}
	bl FUN_ov132_02143058
	cmp r0, #0
	ldrneb r0, [r0, #5]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02152f98

	arm_func_start FUN_ov132_02152fb0
FUN_ov132_02152fb0: ; 0x02152FB0
	cmp r1, #0x20
	movhs r0, #0
	bxhs lr
	ldr r0, _02152FD8 ; =0x0209BA20
	cmp r2, #0
	ldr r0, [r0, #0x824]
	add r0, r0, r1, lsl #4
	ldrneh r1, [r0, #0xc]
	strneh r1, [r2]
	bx lr
_02152FD8: .word unk_0209BA20
	arm_func_end FUN_ov132_02152fb0

	arm_func_start FUN_ov132_02152fdc
FUN_ov132_02152fdc: ; 0x02152FDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov132_02143058
	movs r4, r0
	beq _02153000
	mov r0, r5
	bl FUN_ov132_02152e9c
	cmp r0, #0
	bne _02153008
_02153000:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02153008:
	ldrsb r0, [r4, #6]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_02152fdc

	arm_func_start FUN_ov132_02153010
FUN_ov132_02153010: ; 0x02153010
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r0, #0x1e
	bl FUN_ov16_020ef928
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0x28c]
	tst r0, #2
	ldr r0, [r5, #0x88]
	addne r4, r4, #0xf
	ldrsh r0, [r0, #0x24]
	cmp r4, r0
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02153010

	arm_func_start FUN_ov132_02153058
FUN_ov132_02153058: ; 0x02153058
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r7, r2
	mov r4, r3
	bl FUN_0206d9f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_0206d6c4
	cmp r0, #0
	beq _021530A0
	mov r0, r6
	bl FUN_ov132_021448f4
	cmp r0, #0
	bne _021530A8
_021530A0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021530A8:
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_020f0728
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02153010
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r5, #0x84]
	ldr r0, [sp, #0x18]
	ldr r1, [r3, #4]
	subs r2, r0, r1
	ldr r0, [r3]
	rsbmi r2, r2, #0
	subs r1, r4, r0
	rsbmi r1, r1, #0
	mov r0, r6
	bl FUN_01ffba80
	ldr r1, _02153170 ; =0x021603D4
	ldr r1, [r1, #0x14]
	cmp r0, r1
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [sp, #0x18]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov126_02139010
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, #0x6000
	bl FUN_020405a4
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x64
	bl FUN_ov16_020ef928
	mov r4, r0
	mov r0, r6
	mov r1, #0x14
	bl FUN_ov132_021448a8
	cmp r4, r0
	movls r5, #1
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02153170: .word ov132_021603D4
	arm_func_end FUN_ov132_02153058

	arm_func_start FUN_ov132_02153174
FUN_ov132_02153174: ; 0x02153174
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl FUN_0206cc34
	mov r0, r6
	mov r1, #0xa
	bl FUN_ov132_021448a8
	mov r0, r5
	bl FUN_0206d6c4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ble _021531D4
	ldr r1, [r5, #0x88]
	ldr r0, _021531F0 ; =0x000001FF
	ldrh r1, [r1, #0x32]
	cmp r1, r0
	moveq r0, #0x64
	ldmeqfd sp!, {r4, r5, r6, pc}
_021531D4:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02146b48
	cmp r0, #0
	movne r0, #0x64
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021531F0: .word 0x000001FF
	arm_func_end FUN_ov132_02153174

	arm_func_start FUN_ov132_021531f4
FUN_ov132_021531f4: ; 0x021531F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02153260 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_020731a4
	cmp r0, #0
	beq _02153258
	mov r0, r4
	bl FUN_020728e8
	sub r1, r0, #0x17
	cmp r1, #1
	movls r0, #1
	ldmlsfd sp!, {r4, r5, r6, pc}
	sub r0, r0, #0x15
	cmp r0, #1
	bhi _02153258
	mov r0, r5
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r0, r6
	bl FUN_ov132_021461f8
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
_02153258:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02153260: .word unk_0209BA20
	arm_func_end FUN_ov132_021531f4

	arm_func_start FUN_ov132_02153264
FUN_ov132_02153264: ; 0x02153264
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r2, _0215373C ; =0x0209A2C0
	mov r5, r0
	ldr r0, [r2, #0x48]
	mov r4, r1
	bl FUN_ov16_020efa80
	mov r6, #0
	mov r7, r0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	str r6, [sp, #0x20]
	strb r6, [sp, #0x14]
	str r6, [sp, #0x1c]
	str r6, [sp, #0x18]
	mov r3, r6
	str r6, [sp]
	bl FUN_ov132_0213f55c
	mov r8, r0
	mov r0, r4
	bl FUN_0206d5f0
	mov r9, r0
	mov r0, r4
	ldr r10, _02153740 ; =0x0006000F
	bl FUN_02040aa8
	cmp r0, #0
	beq _021535C4
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02153584
	mov r0, r4
	bl FUN_0206dcd4
	ldrb r9, [r0, #0x61]
	mov r11, #0x64
	mov r0, r11
	bl FUN_ov16_020ef928
	add r9, r0, r9
	mov r0, r5
	mov r1, r4
	add r2, sp, #0x24
	mov r3, r6
	str r9, [sp]
	bl FUN_ov132_02158334
	cmp r0, #0
	beq _0215334C
	mov r2, #0x1b
	str r6, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x1c
	str r6, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215334C:
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r6, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r6
	bl FUN_ov132_02147208
	cmp r0, #0
	bne _021533CC
	mov r6, #0x30000
	sub r11, r11, #0x65
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, r6
	str r11, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _021533B4
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov132_02156c10
	cmp r0, #0
	beq _021533CC
_021533B4:
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021533CC:
	mov r0, r5
	mov r6, #0
	bl FUN_ov132_021448f4
	cmp r0, #0
	beq _02153584
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146a38
	cmp r0, #0
	beq _02153584
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r2, #0x10000
	mov r1, r0
	str r2, [sp]
	mov r0, #0x50000
	str r0, [sp, #4]
	mov r0, #0x18000
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r2, #0xc0000
	str r2, [sp, #0x10]
	add r3, sp, #0x20
	mov r0, r5
	mov r2, r4
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02153454
	ldr r2, [sp, #0x20]
	mov r0, r5
	mov r1, r7
	bl FUN_01ffba68
	str r0, [sp, #0x1c]
	b _021534D4
_02153454:
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r7, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _021534D4
	sub r7, r6, #1
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	str r7, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _021534D4
	mov r0, r4
	bl FUN_ov16_020f0810
	ldrsh r2, [r4, #0x94]
	add r1, sp, #0x1c
	mov r3, #0x10
	str r2, [sp]
	stmib sp, {r0, r6}
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x84]
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x20]
_021534D4:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0x50000
	bge _02153528
	cmp r0, #0x10000
	ble _02153528
	mov r0, r5
	mov r2, r8
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02153528
	mov r2, #0x18000
	ldr r1, [sp, #0x20]
	mov r0, r5
	mov r3, r10
	rsb r2, r2, #0
	bl FUN_ov132_02156ca4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153528:
	mov r0, r5
	mov r1, r4
	mov r2, r9
	bl FUN_ov132_02156dbc
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r6, #0
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x20000
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	cmpne r9, #0x5f
	ble _02153584
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156eb4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153584:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _021535B0
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021535B0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021535C4:
	cmp r7, #0
	bne _0215362C
	ldr r2, _0215373C ; =0x0209A2C0
	mov r0, r5
	mov r1, r4
	mov r3, #0
	cmp r9, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	add r3, sp, #0x24
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02153718
	mov r0, r5
	mov r1, r4
	add r2, sp, #0x24
	mov r3, #1
	bl FUN_ov126_02138b3c
	b _02153718
_0215362C:
	sub r8, r6, #1
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x28000
	str r8, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02153678
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r8, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r8
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02153684
_02153678:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021522a4
_02153684:
	add r8, sp, #0x14
	mov r0, r5
	mov r1, r4
	add r2, sp, #0x24
	mov r3, r8
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	add r3, sp, #0x24
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02153718
	mov r0, r5
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02153718
	mov r0, r5
	mov r1, r4
	mov r2, #0x38000
	mov r3, #2
	str r6, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	beq _02153718
	mov r0, #0x32
	str r0, [sp]
	add r1, sp, #0x24
	ldr r3, [r7, #0x84]
	mov r0, r5
	mov r2, r1
	bl FUN_ov132_021407dc
_02153718:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021578ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215373C: .word unk_0209A2C0
_02153740: .word 0x0006000F
	arm_func_end FUN_ov132_02153264

	arm_func_start FUN_ov132_02153744
FUN_ov132_02153744: ; 0x02153744
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r6, _02153C04 ; =0x0209A2C0
	mov r5, r0
	ldr r0, [r6, #0x48]
	mov r4, r1
	add r10, sp, #0x24
	bl FUN_ov16_020efa80
	mov r7, #0
	mov r8, r0
	mov r0, r5
	mov r1, r4
	str r7, [sp, #0x20]
	strb r7, [sp, #0x14]
	str r7, [sp, #0x1c]
	str r7, [sp, #0x18]
	mov r2, r7
	mov r3, r7
	str r7, [sp]
	bl FUN_ov132_0213f55c
	mov r9, r0
	mov r0, r4
	ldr r11, _02153C08 ; =0x0005000F
	bl FUN_02040aa8
	cmp r0, #0
	beq _02153A30
	mov r0, r4
	mov r6, r10
	bl FUN_0206d6c4
	cmp r0, #0
	beq _021539F0
	mov r0, r4
	bl FUN_0206dcd4
	ldrb r10, [r0, #0x61]
	mov r0, #0x64
	bl FUN_ov16_020ef928
	add r10, r0, r10
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	str r10, [sp]
	bl FUN_ov132_02158334
	cmp r0, #0
	beq _0215381C
	mov r2, #0x1b
	str r7, [sp]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x1c
	stmib sp, {r6, r7}
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215381C:
	mov r0, r5
	bl FUN_ov132_021448f4
	cmp r0, #0
	beq _021539C0
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146a38
	cmp r0, #0
	beq _021539C0
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	str r7, [sp]
	mov r0, #0x40000
	str r0, [sp, #4]
	mov r0, #0x18000
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #0xc0000
	str r0, [sp, #0x10]
	mov r0, r5
	mov r2, r4
	add r3, sp, #0x20
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _0215389C
	ldr r2, [sp, #0x20]
	mov r0, r5
	mov r1, r8
	bl FUN_01ffba68
	str r0, [sp, #0x1c]
	b _02153920
_0215389C:
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r6, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r6
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02153920
	mov r0, #0x64
	sub r6, r0, #0x65
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x40000
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02153920
	mov r0, r4
	bl FUN_ov16_020f0810
	ldrsh r2, [r4, #0x94]
	add r1, sp, #0x1c
	mov r3, #0x10
	str r2, [sp]
	stmib sp, {r0, r7}
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x84]
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x20]
_02153920:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0x40000
	bge _02153974
	cmp r0, #0x10000
	ble _02153974
	mov r0, r5
	mov r2, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02153974
	mov r2, #0x12000
	ldr r1, [sp, #0x20]
	mov r0, r5
	mov r3, r11
	rsb r2, r2, #0
	bl FUN_ov132_02156ca4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153974:
	mov r0, r4
	bl FUN_0206cc34
	cmp r0, #0xf
	bge _021539C0
	mov r0, r5
	mov r1, r4
	mov r2, r10
	bl FUN_ov132_02156dbc
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, #0x60
	ble _021539C0
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156eb4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021539C0:
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	bl FUN_ov132_02156c10
	cmp r0, #0
	beq _021539F0
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021539F0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _02153A1C
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153A1C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153A30:
	cmp r8, #0
	bne _02153A94
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	mov r3, r10
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02153BE0
	mov r0, r5
	mov r1, r4
	mov r2, r10
	mov r3, #1
	bl FUN_ov126_02138b3c
	b _02153BE0
_02153A94:
	sub r6, r7, #1
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x18000
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02153AE0
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r6, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r6
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02153AEC
_02153AE0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021522a4
_02153AEC:
	add r6, sp, #0x14
	mov r0, r5
	mov r1, r4
	mov r2, r10
	mov r3, r6
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	mov r3, r10
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02153BE0
	mov r7, #1
	mov r0, r5
	mov r1, r4
	mov r2, r10
	mov r3, r7
	bl FUN_ov126_02138b3c
	mov r0, r5
	mov r1, r8
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02153BE0
	mov r6, #0x40000
	mov r9, #0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #2
	str r9, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	beq _02153BE0
	mov r0, r4
	bl FUN_02040148
	mov r1, r0
	str r9, [sp]
	mov r0, #0x80000000
	stmib sp, {r0, r6}
	ldr r6, _02153C0C ; =0x000C00D8
	str r7, [sp, #0xc]
	add r3, sp, #0x20
	mov r0, r5
	mov r2, r8
	str r6, [sp, #0x10]
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02153BE0
	mov r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r3, [r8, #0x84]
	ldr r2, [r0, #0x84]
	mov r0, r5
	mov r1, r10
	bl FUN_ov132_021407dc
_02153BE0:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021578ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153C04: .word unk_0209A2C0
_02153C08: .word 0x0005000F
_02153C0C: .word 0x000C00D8
	arm_func_end FUN_ov132_02153744

	arm_func_start FUN_ov132_02153c10
FUN_ov132_02153c10: ; 0x02153C10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r10, _02154004 ; =0x0209A2C0
	mov r8, r0
	ldr r0, [r10, #0x48]
	mov r7, r1
	add r9, sp, #0x24
	bl FUN_ov16_020efa80
	mov r4, #0
	mov r5, r0
	mov r0, r8
	mov r1, r7
	str r4, [sp, #0x20]
	strb r4, [sp, #0x14]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x18]
	mov r2, r4
	mov r3, r4
	str r4, [sp]
	bl FUN_ov132_0213f55c
	mov r6, r0
	mov r0, r7
	ldr r11, _02154008 ; =0x0005000F
	bl FUN_02040aa8
	cmp r0, #0
	beq _02153EA8
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02153E68
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r10, [r0, #0x61]
	mov r0, #0x64
	bl FUN_ov16_020ef928
	add r0, r0, r10
	str r0, [sp]
	mov r0, r8
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl FUN_ov132_02158334
	cmp r0, #0
	beq _02153CE4
	mov r2, #0x1b
	stmia sp, {r4, r9}
	mov r0, r8
	mov r1, r7
	sub r3, r2, #0x1c
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153CE4:
	mov r0, r8
	mov r1, r7
	mov r2, #0x20000
	bl FUN_ov132_02156c10
	cmp r0, #0
	mov r0, r8
	beq _02153D14
	mov r1, r7
	mov r2, r9
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153D14:
	bl FUN_ov132_021448f4
	cmp r0, #0
	beq _02153E68
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_02146a38
	cmp r0, #0
	beq _02153E68
	mov r0, r7
	bl FUN_ov16_020f0810
	mov r1, r0
	str r4, [sp]
	mov r0, #0x30000
	str r0, [sp, #4]
	mov r0, #0x18000
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r2, #0xc0000
	str r2, [sp, #0x10]
	add r3, sp, #0x20
	mov r0, r8
	mov r2, r7
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02153D90
	ldr r2, [sp, #0x20]
	mov r0, r8
	mov r1, r5
	bl FUN_01ffba68
	str r0, [sp, #0x1c]
	b _02153E14
_02153D90:
	ldr r1, [r7, #0x84]
	mov r0, r7
	ldr r5, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r8
	mov r2, r5
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02153E14
	mov r0, #0x64
	sub r5, r0, #0x65
	add r3, sp, #0x18
	mov r0, r8
	mov r1, r7
	mov r2, #0x36000
	str r5, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02153E14
	mov r0, r7
	bl FUN_ov16_020f0810
	ldrsh r2, [r7, #0x94]
	add r1, sp, #0x1c
	mov r3, #0x10
	str r2, [sp]
	stmib sp, {r0, r4}
	str r1, [sp, #0xc]
	ldr r2, [r7, #0x84]
	mov r0, r8
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x20]
_02153E14:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0x30000
	bge _02153E68
	cmp r0, #0x10000
	ble _02153E68
	mov r0, r8
	mov r2, r6
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02153E68
	mov r2, #0x10000
	ldr r1, [sp, #0x20]
	mov r0, r8
	mov r3, r11
	rsb r2, r2, #0
	bl FUN_ov132_02156ca4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153E68:
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _02153E94
	add r2, sp, #0x24
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153E94:
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_0213df14
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153EA8:
	cmp r5, #0
	bne _02153F00
	mov r0, r8
	mov r1, r7
	mov r2, r10
	mov r3, r4
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r7, #0x84]
	mov r0, r8
	mov r1, r7
	mov r3, r9
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02153FE0
	mov r0, r8
	mov r1, r7
	b _02153FD4
_02153F00:
	sub r4, r4, #1
	add r3, sp, #0x18
	mov r0, r8
	mov r1, r7
	mov r2, #0x20000
	str r4, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02153F4C
	ldr r1, [r7, #0x84]
	mov r0, r7
	ldr r4, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r8
	mov r2, r4
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02153F58
_02153F4C:
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021522a4
_02153F58:
	add r4, sp, #0x14
	mov r0, r8
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r4, [sp]
	ldr r2, [r7, #0x84]
	mov r0, r8
	mov r1, r7
	mov r3, r9
	bl FUN_ov132_0214b004
	cmp r0, #0
	mov r0, r8
	mov r1, r7
	beq _02153FD4
	bl FUN_ov132_0213cad8
	mov r2, #0x2f
	str r9, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, r8
	mov r1, r7
	sub r3, r2, #0x30
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02153FD4:
	mov r2, r9
	mov r3, #1
	bl FUN_ov126_02138b3c
_02153FE0:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x24
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021578ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154004: .word unk_0209A2C0
_02154008: .word 0x0005000F
	arm_func_end FUN_ov132_02153c10

	arm_func_start FUN_ov132_0215400c
FUN_ov132_0215400c: ; 0x0215400C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r10, _0215448C ; =0x0209A2C0
	mov r5, r0
	ldr r0, [r10, #0x48]
	mov r4, r1
	add r6, sp, #0x24
	bl FUN_ov16_020efa80
	mov r7, #0
	mov r8, r0
	mov r0, r5
	mov r1, r4
	str r7, [sp, #0x20]
	strb r7, [sp, #0x14]
	str r7, [sp, #0x1c]
	str r7, [sp, #0x18]
	mov r2, r7
	mov r3, r7
	str r7, [sp]
	bl FUN_ov132_0213f55c
	mov r9, r0
	mov r0, r4
	bl FUN_02040aa8
	cmp r0, #0
	beq _02154328
	mov r0, r4
	bl FUN_0206dcd4
	ldrb r10, [r0, #0x61]
	mov r11, #0x64
	mov r0, r11
	bl FUN_ov16_020ef928
	add r10, r0, r10
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	beq _021542E8
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	str r10, [sp]
	bl FUN_ov132_02158334
	cmp r0, #0
	beq _021540E0
	mov r2, #0x1b
	str r7, [sp]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x1c
	stmib sp, {r6, r7}
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021540E0:
	sub r6, r11, #0x65
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	add r3, sp, #0x18
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _0215411C
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	bl FUN_ov132_02156c10
	cmp r0, #0
	beq _02154134
_0215411C:
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154134:
	mov r0, r5
	bl FUN_ov132_021448f4
	cmp r0, #0
	beq _021542E8
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146a38
	cmp r0, #0
	beq _021542E8
	mov r0, r4
	ldr r11, _02154490 ; =0x00060002
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, #0x10000
	str r0, [sp]
	mov r0, #0x50000
	str r0, [sp, #4]
	mov r0, #0x18000
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #0xc0000
	str r0, [sp, #0x10]
	mov r0, r5
	mov r2, r4
	add r3, sp, #0x20
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _021541BC
	ldr r2, [sp, #0x20]
	mov r0, r5
	mov r1, r8
	bl FUN_01ffba68
	str r0, [sp, #0x1c]
	b _02154238
_021541BC:
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r8, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r2, r8
	mov r0, r5
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02154238
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	add r3, sp, #0x18
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02154238
	mov r0, r4
	bl FUN_ov16_020f0810
	ldrsh r2, [r4, #0x94]
	add r1, sp, #0x1c
	mov r3, #0x10
	str r2, [sp]
	stmib sp, {r0, r7}
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x84]
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x20]
_02154238:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0x50000
	bge _0215428C
	cmp r0, #0x10000
	ble _0215428C
	mov r0, r5
	mov r2, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _0215428C
	mov r2, #0x3a000
	ldr r1, [sp, #0x20]
	mov r0, r5
	mov r3, r11
	rsb r2, r2, #0
	bl FUN_ov132_02156ca4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215428C:
	mov r0, r5
	mov r1, r4
	mov r2, r10
	bl FUN_ov132_02156dbc
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r6, #0
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x20000
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	cmpne r10, #0x5f
	ble _021542E8
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156eb4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021542E8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _02154314
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154314:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154328:
	cmp r8, #0
	bne _0215438C
	mov r0, r5
	mov r1, r4
	mov r2, r10
	mov r3, r7
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	mov r3, r6
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02154468
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #1
	bl FUN_ov126_02138b3c
	b _02154468
_0215438C:
	sub r7, r7, #1
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x20000
	str r7, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _021543D8
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r7, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _021543E4
_021543D8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021522a4
_021543E4:
	add r7, sp, #0x14
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r7, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	mov r3, r6
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02154468
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #1
	bl FUN_ov126_02138b3c
	mov r6, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x50000
	mov r3, #2
	str r6, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	ldrne r0, [r8, #0x84]
	ldrne r0, [r0, #4]
	strne r0, [sp, #0x28]
_02154468:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021578ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215448C: .word unk_0209A2C0
_02154490: .word 0x00060002
	arm_func_end FUN_ov132_0215400c

	arm_func_start FUN_ov132_02154494
FUN_ov132_02154494: ; 0x02154494
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r10, _02154928 ; =0x0209A2C0
	mov r5, r0
	ldr r0, [r10, #0x48]
	mov r4, r1
	add r6, sp, #0x24
	bl FUN_ov16_020efa80
	mov r7, #0
	mov r8, r0
	mov r0, r5
	mov r1, r4
	str r7, [sp, #0x20]
	strb r7, [sp, #0x14]
	str r7, [sp, #0x1c]
	str r7, [sp, #0x18]
	mov r2, r7
	mov r3, r7
	str r7, [sp]
	bl FUN_ov132_0213f55c
	mov r9, r0
	mov r0, r4
	bl FUN_02040aa8
	cmp r0, #0
	beq _0215479C
	mov r0, r4
	bl FUN_0206dcd4
	ldrb r10, [r0, #0x61]
	mov r11, #0x64
	mov r0, r11
	bl FUN_ov16_020ef928
	add r10, r0, r10
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0215475C
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	str r10, [sp]
	bl FUN_ov132_02158334
	cmp r0, #0
	beq _02154568
	mov r2, #0x1b
	str r7, [sp]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x1c
	stmib sp, {r6, r7}
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154568:
	mov r0, r5
	bl FUN_ov132_021448f4
	cmp r0, #0
	beq _0215472C
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146a38
	cmp r0, #0
	beq _0215472C
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	str r7, [sp]
	mov r0, #0x40000
	str r0, [sp, #4]
	mov r0, #0x18000
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #0xc0000
	str r0, [sp, #0x10]
	mov r0, r5
	mov r2, r4
	add r3, sp, #0x20
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _021545E8
	ldr r2, [sp, #0x20]
	mov r0, r5
	mov r1, r8
	bl FUN_01ffba68
	str r0, [sp, #0x1c]
	b _02154668
_021545E8:
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r6, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r6
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02154668
	sub r6, r11, #0x65
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x40000
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02154668
	mov r0, r4
	bl FUN_ov16_020f0810
	ldrsh r2, [r4, #0x94]
	add r1, sp, #0x1c
	mov r3, #0x10
	str r2, [sp]
	stmib sp, {r0, r7}
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x84]
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x20]
_02154668:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0x40000
	bge _021546BC
	cmp r0, #0x10000
	ble _021546BC
	mov r0, r5
	mov r2, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _021546BC
	mov r2, #0x18000
	ldr r1, [sp, #0x20]
	ldr r3, _0215492C ; =0x0005000F
	mov r0, r5
	rsb r2, r2, #0
	bl FUN_ov132_02156ca4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021546BC:
	mov r0, r4
	bl FUN_0206cc34
	cmp r0, #0xf
	bge _0215472C
	mov r0, r5
	mov r1, r4
	mov r2, r10
	bl FUN_ov132_02156dbc
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r6, #0
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x20000
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _0215472C
	tst r10, #1
	beq _0215472C
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156eb4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215472C:
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	bl FUN_ov132_02156c10
	cmp r0, #0
	beq _0215475C
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215475C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _02154788
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154788:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215479C:
	cmp r8, #0
	bne _02154800
	mov r0, r5
	mov r1, r4
	mov r2, r10
	mov r3, r7
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	mov r3, r6
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02154904
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #1
	bl FUN_ov126_02138b3c
	b _02154904
_02154800:
	sub r7, r7, #1
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	str r7, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _0215484C
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r7, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02154858
_0215484C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021522a4
_02154858:
	add r7, sp, #0x14
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r7, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	mov r3, r6
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02154904
	mov r0, r5
	mov r1, r8
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02154904
	mov r7, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x40000
	mov r3, #2
	str r7, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	beq _02154904
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #1
	bl FUN_ov126_02138b3c
	mov r0, #0x23
	str r0, [sp]
	ldr r3, [r8, #0x84]
	mov r0, r5
	mov r1, r6
	mov r2, r6
	bl FUN_ov132_021407dc
_02154904:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021578ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154928: .word unk_0209A2C0
_0215492C: .word 0x0005000F
	arm_func_end FUN_ov132_02154494

	arm_func_start FUN_ov132_02154930
FUN_ov132_02154930: ; 0x02154930
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r10, _02154DCC ; =0x0209A2C0
	mov r5, r0
	ldr r0, [r10, #0x48]
	mov r4, r1
	add r6, sp, #0x24
	bl FUN_ov16_020efa80
	mov r7, #0
	mov r8, r0
	mov r0, r5
	mov r1, r4
	str r7, [sp, #0x20]
	strb r7, [sp, #0x14]
	str r7, [sp, #0x1c]
	str r7, [sp, #0x18]
	mov r2, r7
	mov r3, r7
	str r7, [sp]
	bl FUN_ov132_0213f55c
	mov r9, r0
	mov r0, r4
	bl FUN_02040aa8
	cmp r0, #0
	beq _02154CB0
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02154C70
	mov r0, r4
	bl FUN_0206dcd4
	ldrb r10, [r0, #0x61]
	mov r11, #0x64
	mov r0, r11
	bl FUN_ov16_020ef928
	add r10, r0, r10
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	str r10, [sp]
	bl FUN_ov132_02158334
	cmp r0, #0
	beq _02154A04
	mov r2, #0x1b
	str r7, [sp]
	mov r0, r5
	mov r1, r4
	sub r3, r2, #0x1c
	stmib sp, {r6, r7}
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154A04:
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	bl FUN_ov132_02156c10
	cmp r0, #0
	mov r0, r5
	beq _02154A34
	mov r1, r4
	mov r2, r6
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154A34:
	bl FUN_ov132_021448f4
	cmp r0, #0
	beq _02154C70
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146a38
	cmp r0, #0
	beq _02154C70
	mov r0, r4
	ldr r6, _02154DD0 ; =0x0005000F
	bl FUN_0206d5f0
	ldr r2, [r8, #0x84]
	mov r1, r0
	ldr r2, [r2, #4]
	mov r0, r5
	bl FUN_ov132_02147208
	cmp r0, #0
	mov r0, r4
	beq _02154B8C
	bl FUN_ov16_020f0810
	mov r2, #0x20000
	mov r1, r0
	str r2, [sp]
	mov r0, #0x50000
	str r0, [sp, #4]
	mov r0, #0x18000
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r2, #0xc0000
	str r2, [sp, #0x10]
	add r3, sp, #0x20
	mov r0, r5
	mov r2, r4
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02154ADC
	ldr r2, [sp, #0x20]
	mov r0, r5
	mov r1, r8
	bl FUN_01ffba68
	str r0, [sp, #0x1c]
	b _02154B34
_02154ADC:
	sub r8, r11, #0x65
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x38000
	str r8, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02154B34
	mov r0, r4
	bl FUN_ov16_020f0810
	ldrsh r2, [r4, #0x94]
	add r1, sp, #0x1c
	mov r3, #0x10
	str r2, [sp]
	stmib sp, {r0, r7}
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x84]
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x20]
_02154B34:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0x50000
	bge _02154C70
	cmp r0, #0x20000
	ble _02154C70
	mov r0, r5
	mov r2, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02154C70
	mov r2, #0xc000
	ldr r1, [sp, #0x20]
	mov r0, r5
	mov r3, r6
	rsb r2, r2, #0
	bl FUN_ov132_02156ca4
	cmp r0, #0
	beq _02154C70
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154B8C:
	bl FUN_ov16_020f0810
	mov r1, r0
	str r7, [sp]
	mov r0, #0x40000
	str r0, [sp, #4]
	mov r0, #0x18000
	str r0, [sp, #8]
	add r3, sp, #0x20
	mov r0, r5
	mov r2, r4
	str r7, [sp, #0xc]
	mov r9, #0xc0000
	str r9, [sp, #0x10]
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02154C70
	ldr r2, [sp, #0x20]
	mov r0, r5
	mov r1, r8
	bl FUN_01ffba68
	str r0, [sp, #0x1c]
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, r7
	str r7, [sp]
	bl FUN_ov132_0213f55c
	ldr r1, [sp, #0x1c]
	mov r2, r0
	cmp r1, #0x40000
	bge _02154C44
	cmp r1, #0x10000
	ble _02154C44
	ldr r1, [sp, #0x20]
	mov r0, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02154C44
	ldr r1, [sp, #0x20]
	mov r0, r5
	mov r3, r6
	sub r2, r9, #0xc8000
	bl FUN_ov132_02156ca4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154C44:
	mov r0, r4
	bl FUN_0206cc34
	cmp r0, #0xf
	bge _02154C70
	mov r0, r5
	mov r1, r4
	mov r2, r10
	bl FUN_ov132_02156dbc
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154C70:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _02154C9C
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154C9C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_0213df14
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154CB0:
	cmp r8, #0
	bne _02154D14
	mov r0, r5
	mov r1, r4
	mov r2, r10
	mov r3, r7
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	mov r3, r6
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _02154DA8
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #1
	bl FUN_ov126_02138b3c
	b _02154DA8
_02154D14:
	sub r7, r7, #1
	add r3, sp, #0x18
	mov r0, r5
	mov r1, r4
	mov r2, #0x30000
	str r7, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02154D60
	ldr r1, [r4, #0x84]
	mov r0, r4
	ldr r7, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02154D6C
_02154D60:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021522a4
_02154D6C:
	add r7, sp, #0x14
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r7, [sp]
	ldr r2, [r4, #0x84]
	mov r0, r5
	mov r1, r4
	mov r3, r6
	bl FUN_ov132_0214b004
_02154DA8:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x24
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021578ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154DCC: .word unk_0209A2C0
_02154DD0: .word 0x0005000F
	arm_func_end FUN_ov132_02154930

	arm_func_start FUN_ov132_02154dd4
FUN_ov132_02154dd4: ; 0x02154DD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r8, _021551C0 ; =0x0209A2C0
	mov r10, r0
	ldr r0, [r8, #0x48]
	mov r9, r1
	add r4, sp, #0x24
	bl FUN_ov16_020efa80
	mov r5, #0
	mov r6, r0
	mov r0, r10
	mov r1, r9
	str r5, [sp, #0x20]
	strb r5, [sp, #0x14]
	str r5, [sp, #0x1c]
	str r5, [sp, #0x18]
	mov r2, r5
	mov r3, r5
	str r5, [sp]
	bl FUN_ov132_0213f55c
	mov r7, r0
	mov r0, r9
	bl FUN_02040aa8
	cmp r0, #0
	beq _02155064
	mov r0, r9
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02155024
	mov r0, r9
	bl FUN_0206dcd4
	ldrb r8, [r0, #0x61]
	mov r11, #0x64
	mov r0, r11
	bl FUN_ov16_020ef928
	add r0, r0, r8
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r5
	bl FUN_ov132_02158334
	cmp r0, #0
	beq _02154EA8
	mov r2, #0x1b
	str r5, [sp]
	mov r0, r10
	mov r1, r9
	sub r3, r2, #0x1c
	stmib sp, {r4, r5}
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154EA8:
	mov r8, #0x20000
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov132_02156c10
	cmp r0, #0
	mov r0, r10
	beq _02154EDC
	mov r1, r9
	mov r2, r4
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02154EDC:
	bl FUN_ov132_021448f4
	cmp r0, #0
	beq _02155024
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02146a38
	cmp r0, #0
	beq _02155024
	mov r0, r9
	ldr r4, _021551C4 ; =0x0005000F
	bl FUN_ov16_020f0810
	mov r1, r0
	str r8, [sp]
	mov r0, #0x50000
	str r0, [sp, #4]
	mov r0, #0x18000
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r2, #0xc0000
	str r2, [sp, #0x10]
	add r3, sp, #0x20
	mov r0, r10
	mov r2, r9
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02154F5C
	ldr r2, [sp, #0x20]
	mov r0, r10
	mov r1, r6
	bl FUN_01ffba68
	str r0, [sp, #0x1c]
	b _02154FB4
_02154F5C:
	sub r6, r11, #0x65
	add r3, sp, #0x18
	mov r0, r10
	mov r1, r9
	mov r2, #0x40000
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02154FB4
	mov r0, r9
	bl FUN_ov16_020f0810
	ldrsh r2, [r9, #0x94]
	add r1, sp, #0x1c
	mov r3, #0x10
	str r2, [sp]
	stmib sp, {r0, r5}
	str r1, [sp, #0xc]
	ldr r2, [r9, #0x84]
	mov r0, r10
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x20]
_02154FB4:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0x50000
	bge _02155024
	cmp r0, #0x20000
	ble _02155024
	mov r0, r10
	mov r2, r7
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02155024
	ldr r0, _021551C0 ; =0x0209A2C0
	ldr r1, [sp, #0x20]
	ldr r2, [r0, #4]
	mov r0, r10
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _02155024
	mov r2, #0x8000
	ldr r1, [sp, #0x20]
	mov r0, r10
	mov r3, r4
	rsb r2, r2, #0
	bl FUN_ov132_02156ca4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155024:
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _02155050
	add r2, sp, #0x24
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02156ba0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155050:
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213df14
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155064:
	cmp r6, #0
	bne _021550BC
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r5
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r9, #0x84]
	mov r0, r10
	mov r1, r9
	mov r3, r4
	bl FUN_ov132_0214b004
	cmp r0, #0
	bne _0215519C
	mov r0, r10
	mov r1, r9
	b _02155190
_021550BC:
	sub r5, r5, #1
	add r3, sp, #0x18
	mov r0, r10
	mov r1, r9
	mov r2, #0x30000
	str r5, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	beq _02155108
	ldr r1, [r9, #0x84]
	mov r0, r9
	ldr r5, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	mov r2, r5
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02155114
_02155108:
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_021522a4
_02155114:
	add r5, sp, #0x14
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r5
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r5, [sp]
	ldr r2, [r9, #0x84]
	mov r0, r10
	mov r1, r9
	mov r3, r4
	bl FUN_ov132_0214b004
	cmp r0, #0
	mov r0, r10
	mov r1, r9
	beq _02155190
	bl FUN_ov132_0213cad8
	mov r2, #0x2f
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, r10
	mov r1, r9
	sub r3, r2, #0x30
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155190:
	mov r2, r4
	mov r3, #1
	bl FUN_ov126_02138b3c
_0215519C:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x24
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_021578ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021551C0: .word unk_0209A2C0
_021551C4: .word 0x0005000F
	arm_func_end FUN_ov132_02154dd4

	arm_func_start FUN_ov132_021551c8
FUN_ov132_021551c8: ; 0x021551C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r9, r1
	mov r10, r0
	mov r8, #0
	mov r0, r9
	str r8, [sp, #0x18]
	bl FUN_0206d5f0
	ldr r1, _021555C4 ; =0x0209A2C0
	mov r6, r0
	ldr r0, [r1, #0x48]
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_02144854
	movs r5, r0
	mov r0, r9
	moveq r5, r9
	str r8, [sp, #0x1c]
	strb r8, [sp, #0x14]
	bl FUN_ov16_020f07d0
	mov r11, r0
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x28
	add r3, sp, #0x14
	sub r7, r8, #1
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x30
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r9, #0x84]
	mov r0, r10
	mov r1, r9
	add r3, sp, #0x28
	bl FUN_ov132_0214b574
	cmp r4, #0
	beq _02155478
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02155478
	cmp r6, #0
	cmpne r6, #1
	addeq r0, r10, r6, lsl #2
	ldreq r7, [r0, #0x5a8]
	ldr r1, [r4, #0x84]
	ldr r0, _021555C8 ; =0x0209A720
	ldr r1, [r1, #4]
	ldr r2, [r0, #0xd8]
	mov r0, r10
	mov r3, r11
	bl FUN_01ffb9b0
	cmp r0, #0
	bne _021552C4
	ldr r0, _021555CC ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _021553F8
_021552C4:
	ldr r1, [r9, #0x84]
	ldr r2, [r4, #0x84]
	mov r0, r10
	mov r6, #0
	bl FUN_01ffba50
	ldrsh r0, [r9, #0x94]
	cmp r7, r0
	bne _0215533C
	mov r0, #0x1e
	str r0, [sp]
	add r6, sp, #0x28
	ldr r2, [r5, #0x84]
	ldr r3, [r4, #0x84]
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_021407dc
	mov r0, #0x20000
	str r0, [sp]
	ldr r0, _021555D0 ; =0x02099EF0
	ldr r2, [r5, #0x84]
	ldr r0, [r0]
	add r1, sp, #0x20
	mov r3, r6
	bl FUN_ov132_021488a0
	cmp r0, #0
	ldrne r1, [sp, #0x24]
	ldrne r0, [sp, #0x20]
	strne r1, [sp, #0x2c]
	strne r0, [sp, #0x28]
	b _021553F8
_0215533C:
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FUN_ov132_02158864
	cmp r0, #0
	beq _0215537C
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_021588d8
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	strb r0, [sp, #0x14]
	b _021553F8
_0215537C:
	mov r0, r9
	bl FUN_02040148
	mov r1, r0
	str r6, [sp]
	mov r0, #0x60000
	str r0, [sp, #4]
	mov r0, #0x40000
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r5, _021555D4 ; =0x000C0018
	add r3, sp, #0x1c
	mov r0, r10
	mov r2, r9
	str r5, [sp, #0x10]
	bl FUN_ov132_021583ac
	cmp r0, #0
	ldrne r0, [sp, #0x1c]
	ldrnesh r1, [r4, #0x94]
	ldrnesh r0, [r0, #0x94]
	cmpne r1, r0
	beq _021553F8
	mov r0, #0x3c
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r3, [r4, #0x84]
	ldr r2, [r0, #0x84]
	add r1, sp, #0x28
	mov r0, r10
	bl FUN_ov132_021407dc
	strb r6, [sp, #0x14]
_021553F8:
	ldrb r0, [sp, #0x14]
	mov r5, #0
	cmp r0, #0
	beq _021555A4
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _021555A4
	ldr r0, [sp, #0x18]
	cmp r0, #2
	blt _02155460
	ldr r0, _021555CC ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _02155460
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldrsh r3, [r4, #0x94]
	mov r0, r10
	mov r1, r9
	mov r2, #0xd
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155460:
	ldr r0, _021555C4 ; =0x0209A2C0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r1, [sp, #0x2c]
	str r0, [sp, #0x28]
	b _021555A4
_02155478:
	ldr r0, _021555CC ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	ldrnesh r0, [r9, #0x94]
	cmpne r7, r0
	beq _021554B4
	ldr r2, _021555C4 ; =0x0209A2C0
	mov r0, r10
	mov r1, r9
	mov r3, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	beq _021555A4
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021554B4:
	mov r0, r9
	bl FUN_ov16_020f07d0
	ldr r4, _021555C4 ; =0x0209A2C0
	mov r1, r0
	mov r0, r10
	mov r2, r4
	bl FUN_ov132_02140b08
	cmp r0, #0
	ldrne r1, [r4]
	ldrne r0, [r4, #4]
	strne r1, [sp, #0x28]
	strne r0, [sp, #0x2c]
	bne _021555A4
	ldr r0, _021555C8 ; =0x0209A720
	ldr r1, [r4, #4]
	ldr r2, [r0, #0xd8]
	mov r0, r10
	mov r3, r11
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _021555A4
	ldr r1, [r9, #0x84]
	mov r0, r10
	mov r2, r4
	mov r6, #0
	bl FUN_01ffba50
	ldrsh r0, [r9, #0x94]
	cmp r7, r0
	bne _02155584
	mov r0, #0x1e
	str r0, [sp]
	add r7, sp, #0x28
	ldr r2, [r5, #0x84]
	mov r0, r10
	mov r1, r7
	mov r3, r4
	bl FUN_ov132_021407dc
	mov r0, #0x20000
	str r0, [sp]
	ldr r0, _021555D0 ; =0x02099EF0
	ldr r2, [r5, #0x84]
	ldr r0, [r0]
	add r1, sp, #0x20
	mov r3, r7
	bl FUN_ov132_021488a0
	cmp r0, #0
	ldrne r1, [sp, #0x24]
	ldrne r0, [sp, #0x20]
	strne r1, [sp, #0x2c]
	strne r0, [sp, #0x28]
	strb r6, [sp, #0x14]
	b _021555A4
_02155584:
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r6
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x30
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021555A4:
	str r8, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x28
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_021578ec
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021555C4: .word unk_0209A2C0
_021555C8: .word unk_0209A720
_021555CC: .word unk_0209BA20
_021555D0: .word unk_02099EF0
_021555D4: .word 0x000C0018
	arm_func_end FUN_ov132_021551c8

	arm_func_start FUN_ov132_021555d8
FUN_ov132_021555d8: ; 0x021555D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	mov r7, #0
	ldr r2, _02155878 ; =0x0209A2C0
	str r7, [sp, #0x18]
	mov r9, r0
	ldr r0, [r2, #0x48]
	mov r8, r1
	bl FUN_ov16_020efa80
	add r5, sp, #0x20
	add r4, sp, #0x14
	mov r6, r0
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	str r7, [sp, #0x1c]
	strb r7, [sp, #0x14]
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_ov16_020f07d0
	str r4, [sp]
	ldr r2, [r8, #0x84]
	mov r0, r9
	mov r1, r8
	mov r3, r5
	bl FUN_ov132_0214b574
	strb r7, [sp, #0x14]
	cmp r6, #0
	beq _02155838
	mov r0, r9
	mov r1, r6
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02155838
	ldr r1, [r8, #0x84]
	ldr r2, [r6, #0x84]
	mov r0, r9
	bl FUN_01ffba50
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov132_02158864
	cmp r0, #0
	beq _021556BC
	add r2, sp, #0x18
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_021588d8
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #1
	b _021557B4
_021556BC:
	mov r0, r8
	bl FUN_02040148
	mov r1, r0
	str r7, [sp]
	mov r0, #0x50000
	str r0, [sp, #4]
	mov r0, #0x28000
	str r0, [sp, #8]
	mov r4, #1
	ldr r10, _0215587C ; =0x000C0018
	str r4, [sp, #0xc]
	add r3, sp, #0x1c
	mov r0, r9
	mov r2, r8
	str r10, [sp, #0x10]
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02155724
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x84]
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r0, [r1, #4]
	str r0, [sp, #0x24]
	strb r7, [sp, #0x14]
	b _021557B8
_02155724:
	mov r0, r8
	bl FUN_ov16_020f0810
	bl FUN_02040138
	sub r1, r4, #2
	str r1, [sp]
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	ldr r2, [r8, #0x84]
	sub r3, r10, #8
	ldmia r2, {r1, r2}
	mov r0, r9
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _021557B8
	ldr r1, [r0, #0x84]
	ldr r2, [r6, #0x84]
	mov r0, r9
	bl FUN_01ffba50
	mov r10, r0
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_ov126_02138b3c
	cmp r10, #0x14000
	bge _021557B0
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r3, [r6, #0x84]
	ldr r2, [r0, #0x84]
	mov r0, r9
	mov r1, r5
	bl FUN_ov132_021407dc
_021557B0:
	mov r0, #0
_021557B4:
	strb r0, [sp, #0x14]
_021557B8:
	ldrb r0, [sp, #0x14]
	cmp r0, #0
	beq _02155858
	mov r0, r9
	mov r1, r6
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02155858
	ldr r0, [sp, #0x18]
	cmp r0, #2
	bne _02155820
	ldr r0, _02155880 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _02155820
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrsh r3, [r6, #0x94]
	mov r0, r9
	mov r1, r8
	mov r2, #0xd
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02155820:
	ldr r0, _02155878 ; =0x0209A2C0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
	b _02155858
_02155838:
	ldr r2, _02155878 ; =0x0209A2C0
	mov r0, r9
	mov r1, r8
	mov r3, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02155858:
	str r7, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x20
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_021578ec
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02155878: .word unk_0209A2C0
_0215587C: .word 0x000C0018
_02155880: .word unk_0209BA20
	arm_func_end FUN_ov132_021555d8

	arm_func_start FUN_ov132_02155884
FUN_ov132_02155884: ; 0x02155884
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r6, #0
	ldr r2, _02155AD8 ; =0x0209A2C0
	str r6, [sp, #0x18]
	mov r8, r0
	ldr r0, [r2, #0x48]
	mov r7, r1
	bl FUN_ov16_020efa80
	add r9, sp, #0x20
	add r4, sp, #0x14
	mov r5, r0
	mov r0, r8
	mov r1, r7
	mov r2, r9
	mov r3, r4
	str r6, [sp, #0x1c]
	strb r6, [sp, #0x14]
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl FUN_ov16_020f07d0
	str r4, [sp]
	ldr r2, [r7, #0x84]
	mov r0, r8
	mov r1, r7
	mov r3, r9
	bl FUN_ov132_0214b574
	strb r6, [sp, #0x14]
	cmp r5, #0
	beq _02155A98
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02155A98
	ldr r1, _02155ADC ; =0x0209A720
	mov r0, r8
	ldr r2, [r1, #0xd8]
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _02155948
	ldr r0, _02155AE0 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _02155AB8
_02155948:
	mov r4, #0
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov132_02158864
	cmp r0, #0
	beq _0215598C
	add r2, sp, #0x18
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021588d8
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, #1
	strb r0, [sp, #0x14]
	b _02155A18
_0215598C:
	ldr r2, _02155AD8 ; =0x0209A2C0
	mov r0, r8
	mov r1, r7
	mov r3, r4
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl FUN_02040148
	mov r1, r0
	str r4, [sp]
	mov r0, #0x60000
	str r0, [sp, #4]
	mov r0, #0x30000
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r12, _02155AE4 ; =0x000C0018
	add r3, sp, #0x1c
	mov r0, r8
	mov r2, r7
	str r12, [sp, #0x10]
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02155A18
	mov r0, #0x32
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r3, [r5, #0x84]
	ldr r2, [r0, #0x84]
	add r1, sp, #0x20
	mov r0, r8
	bl FUN_ov132_021407dc
	strb r4, [sp, #0x14]
_02155A18:
	ldrb r0, [sp, #0x14]
	cmp r0, #0
	beq _02155AB8
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02155AB8
	ldr r0, [sp, #0x18]
	cmp r0, #2
	bne _02155A80
	ldr r0, _02155AE0 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _02155A80
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrsh r3, [r5, #0x94]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02155A80:
	ldr r0, _02155AD8 ; =0x0209A2C0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
	b _02155AB8
_02155A98:
	ldr r2, _02155AD8 ; =0x0209A2C0
	mov r0, r8
	mov r1, r7
	mov r3, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02155AB8:
	str r6, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x20
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021578ec
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02155AD8: .word unk_0209A2C0
_02155ADC: .word unk_0209A720
_02155AE0: .word unk_0209BA20
_02155AE4: .word 0x000C0018
	arm_func_end FUN_ov132_02155884

	arm_func_start FUN_ov132_02155ae8
FUN_ov132_02155ae8: ; 0x02155AE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r9, r1
	mov r10, r0
	mov r8, #0
	mov r0, r9
	str r8, [sp, #0x18]
	bl FUN_0206d5f0
	ldr r1, _02155EE4 ; =0x0209A2C0
	mov r6, r0
	ldr r0, [r1, #0x48]
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r9
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02144854
	movs r5, r0
	mov r0, r9
	moveq r5, r9
	str r8, [sp, #0x1c]
	strb r8, [sp, #0x14]
	bl FUN_ov16_020f07d0
	mov r11, r0
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x28
	add r3, sp, #0x14
	sub r7, r8, #1
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x30
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x14
	str r0, [sp]
	ldr r2, [r9, #0x84]
	mov r0, r10
	mov r1, r9
	add r3, sp, #0x28
	bl FUN_ov132_0214b574
	cmp r4, #0
	beq _02155D98
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02155D98
	cmp r6, #0
	cmpne r6, #1
	addeq r1, r10, r6, lsl #2
	ldreq r7, [r1, #0x5a8]
	mov r0, #0
	strb r0, [sp, #0x14]
	ldr r1, [r4, #0x84]
	ldr r0, _02155EE8 ; =0x0209A720
	ldr r1, [r1, #4]
	ldr r2, [r0, #0xd8]
	mov r0, r10
	mov r3, r11
	bl FUN_01ffb9b0
	cmp r0, #0
	bne _02155BF4
	ldr r0, _02155EEC ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _02155EC4
_02155BF4:
	ldrsh r0, [r9, #0x94]
	add r11, sp, #0x28
	mov r6, #0
	cmp r7, r0
	bne _02155C5C
	mov r0, #0x1e
	str r0, [sp]
	ldr r2, [r5, #0x84]
	ldr r3, [r4, #0x84]
	mov r0, r10
	mov r1, r11
	bl FUN_ov132_021407dc
	mov r0, #0x20000
	str r0, [sp]
	ldr r0, _02155EF0 ; =0x02099EF0
	ldr r2, [r5, #0x84]
	ldr r0, [r0]
	add r1, sp, #0x20
	mov r3, r11
	bl FUN_ov132_021488a0
	cmp r0, #0
	ldrne r1, [sp, #0x24]
	ldrne r0, [sp, #0x20]
	strne r1, [sp, #0x2c]
	strne r0, [sp, #0x28]
	b _02155D18
_02155C5C:
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FUN_ov132_02158864
	cmp r0, #0
	beq _02155C9C
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_021588d8
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	strb r0, [sp, #0x14]
	b _02155D18
_02155C9C:
	mov r0, r9
	bl FUN_02040148
	mov r1, r0
	str r6, [sp]
	mov r0, #0x60000
	str r0, [sp, #4]
	mov r0, #0x40000
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r5, _02155EF4 ; =0x000C0018
	add r3, sp, #0x1c
	mov r0, r10
	mov r2, r9
	str r5, [sp, #0x10]
	bl FUN_ov132_021583ac
	cmp r0, #0
	ldrne r0, [sp, #0x1c]
	ldrnesh r1, [r4, #0x94]
	ldrnesh r0, [r0, #0x94]
	cmpne r1, r0
	beq _02155D18
	mov r0, #0x3c
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r3, [r4, #0x84]
	ldr r2, [r0, #0x84]
	add r1, sp, #0x28
	mov r0, r10
	bl FUN_ov132_021407dc
	strb r6, [sp, #0x14]
_02155D18:
	ldrb r0, [sp, #0x14]
	mov r5, #0
	cmp r0, #0
	beq _02155EC4
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02155EC4
	ldr r0, [sp, #0x18]
	cmp r0, #2
	blt _02155D80
	ldr r0, _02155EEC ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _02155D80
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldrsh r3, [r4, #0x94]
	mov r0, r10
	mov r1, r9
	mov r2, #0xd
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155D80:
	ldr r0, _02155EE4 ; =0x0209A2C0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r1, [sp, #0x2c]
	str r0, [sp, #0x28]
	b _02155EC4
_02155D98:
	ldr r0, _02155EEC ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	ldrnesh r0, [r9, #0x94]
	cmpne r7, r0
	beq _02155DD4
	ldr r2, _02155EE4 ; =0x0209A2C0
	mov r0, r10
	mov r1, r9
	mov r3, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	beq _02155EC4
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155DD4:
	mov r0, r9
	bl FUN_ov16_020f07d0
	ldr r4, _02155EE4 ; =0x0209A2C0
	mov r1, r0
	mov r0, r10
	mov r2, r4
	bl FUN_ov132_02140b08
	cmp r0, #0
	ldrne r1, [r4]
	ldrne r0, [r4, #4]
	strne r1, [sp, #0x28]
	strne r0, [sp, #0x2c]
	bne _02155EC4
	ldr r0, _02155EE8 ; =0x0209A720
	ldr r1, [r4, #4]
	ldr r2, [r0, #0xd8]
	mov r0, r10
	mov r3, r11
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _02155EC4
	ldr r1, [r9, #0x84]
	mov r0, r10
	mov r2, r4
	mov r6, #0
	bl FUN_01ffba50
	ldrsh r0, [r9, #0x94]
	cmp r7, r0
	bne _02155EA4
	mov r0, #0x1e
	str r0, [sp]
	add r7, sp, #0x28
	ldr r2, [r5, #0x84]
	mov r0, r10
	mov r1, r7
	mov r3, r4
	bl FUN_ov132_021407dc
	mov r0, #0x20000
	str r0, [sp]
	ldr r0, _02155EF0 ; =0x02099EF0
	ldr r2, [r5, #0x84]
	ldr r0, [r0]
	add r1, sp, #0x20
	mov r3, r7
	bl FUN_ov132_021488a0
	cmp r0, #0
	ldrne r1, [sp, #0x24]
	ldrne r0, [sp, #0x20]
	strne r1, [sp, #0x2c]
	strne r0, [sp, #0x28]
	strb r6, [sp, #0x14]
	b _02155EC4
_02155EA4:
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r6
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x30
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155EC4:
	str r8, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x28
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_021578ec
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02155EE4: .word unk_0209A2C0
_02155EE8: .word unk_0209A720
_02155EEC: .word unk_0209BA20
_02155EF0: .word unk_02099EF0
_02155EF4: .word 0x000C0018
	arm_func_end FUN_ov132_02155ae8

	arm_func_start FUN_ov132_02155ef8
FUN_ov132_02155ef8: ; 0x02155EF8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r6, #0
	ldr r2, _02156224 ; =0x0209A2C0
	str r6, [sp, #0x18]
	mov r8, r0
	ldr r0, [r2, #0x48]
	mov r7, r1
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r7
	str r6, [sp, #0x20]
	strb r6, [sp, #0x14]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f07d0
	add r9, sp, #0x24
	add r4, sp, #0x14
	mov r0, r8
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	str r4, [sp]
	ldr r2, [r7, #0x84]
	mov r0, r8
	mov r1, r7
	mov r3, r9
	mov r4, r6
	bl FUN_ov132_0214b574
	strb r6, [sp, #0x14]
	cmp r5, #0
	beq _0215617C
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _0215617C
	ldr r1, _02156228 ; =0x0209A720
	mov r0, r8
	ldr r2, [r1, #0xd8]
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _02155FC4
	ldr r0, _0215622C ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _02156204
_02155FC4:
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov132_02158864
	cmp r0, #0
	beq _02156004
	add r2, sp, #0x18
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021588d8
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, #1
	strb r0, [sp, #0x14]
	b _02156100
_02156004:
	mov r0, r7
	bl FUN_02040148
	mov r1, r0
	str r4, [sp]
	mov r0, #0x60000
	str r0, [sp, #4]
	mov r0, #0x30000
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r12, _02156230 ; =0x000C0018
	add r3, sp, #0x20
	mov r0, r8
	mov r2, r7
	str r12, [sp, #0x10]
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02156100
	ldr r0, [sp, #0x20]
	ldrsh r1, [r5, #0x94]
	ldrsh r0, [r0, #0x94]
	cmp r1, r0
	beq _02156080
	mov r0, #0x46
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r3, [r5, #0x84]
	ldr r2, [r0, #0x84]
	add r1, sp, #0x24
	mov r0, r8
	b _021560FC
_02156080:
	mov r0, r7
	bl FUN_ov16_020f0810
	ldrsh r2, [r5, #0x94]
	add r1, sp, #0x1c
	mov r3, #0x10
	str r2, [sp]
	stmib sp, {r0, r4}
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x84]
	mov r0, r8
	ldmia r2, {r1, r2}
	bl FUN_ov132_0214c60c
	str r0, [sp, #0x20]
	cmp r0, #0
	ldreq r1, [r7, #0x84]
	ldreq r0, [r1]
	streq r0, [sp, #0x24]
	ldreq r0, [r1, #4]
	streq r0, [sp, #0x28]
	beq _021560E4
	ldr r1, [r0, #0x84]
	ldr r0, [r1]
	str r0, [sp, #0x24]
	ldr r0, [r1, #4]
	str r0, [sp, #0x28]
_021560E4:
	mov r0, #0x46
	str r0, [sp]
	add r1, sp, #0x24
	ldr r3, [r5, #0x84]
	mov r0, r8
	mov r2, r1
_021560FC:
	bl FUN_ov132_021407dc
_02156100:
	ldrb r0, [sp, #0x14]
	cmp r0, #0
	beq _02156204
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02156204
	ldr r0, [sp, #0x18]
	cmp r0, #2
	bne _02156164
	ldr r0, _0215622C ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _02156164
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldrsh r3, [r5, #0x94]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02156164:
	ldr r0, _02156224 ; =0x0209A2C0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
	b _02156204
_0215617C:
	ldr r0, _0215622C ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _021561B0
	ldr r2, _02156224 ; =0x0209A2C0
	mov r0, r8
	mov r1, r7
	mov r3, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	beq _02156204
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021561B0:
	mov r0, r7
	bl FUN_ov16_020f07d0
	ldr r4, _02156224 ; =0x0209A2C0
	mov r1, r0
	mov r0, r8
	mov r2, r4
	bl FUN_ov132_02140b08
	cmp r0, #0
	ldrne r1, [r4]
	ldrne r0, [r4, #4]
	strne r1, [sp, #0x24]
	strne r0, [sp, #0x28]
	bne _02156204
	mov r0, r8
	mov r1, r7
	mov r2, r4
	mov r3, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02156204:
	str r6, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x24
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021578ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02156224: .word unk_0209A2C0
_02156228: .word unk_0209A720
_0215622C: .word unk_0209BA20
_02156230: .word 0x000C0018
	arm_func_end FUN_ov132_02155ef8

	arm_func_start FUN_ov132_02156234
FUN_ov132_02156234: ; 0x02156234
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r6, #0
	ldr r2, _021564A4 ; =0x0209A2C0
	str r6, [sp, #0x18]
	mov r8, r0
	ldr r0, [r2, #0x48]
	mov r7, r1
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r7
	str r6, [sp, #0x1c]
	strb r6, [sp, #0x14]
	bl FUN_ov16_020f07d0
	add r9, sp, #0x20
	add r4, sp, #0x14
	mov r0, r8
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r4, [sp]
	ldr r2, [r7, #0x84]
	mov r0, r8
	mov r1, r7
	mov r3, r9
	bl FUN_ov132_0214b574
	strb r6, [sp, #0x14]
	cmp r5, #0
	beq _02156464
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02156464
	ldr r1, _021564A8 ; =0x0209A720
	mov r0, r8
	ldr r2, [r1, #0xd8]
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _021562F8
	ldr r0, _021564AC ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _02156484
_021562F8:
	mov r4, #0
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov132_02158864
	cmp r0, #0
	beq _0215633C
	add r2, sp, #0x18
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021588d8
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, #1
	strb r0, [sp, #0x14]
	b _021563E4
_0215633C:
	ldr r2, _021564A4 ; =0x0209A2C0
	mov r0, r8
	mov r1, r7
	mov r3, r4
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl FUN_02040148
	mov r1, r0
	str r4, [sp]
	mov r0, #0x40000
	str r0, [sp, #4]
	mov r0, #0x30000
	str r0, [sp, #8]
	mov r9, #1
	ldr r2, _021564B0 ; =0x000C0018
	str r9, [sp, #0xc]
	str r2, [sp, #0x10]
	add r3, sp, #0x1c
	mov r0, r8
	mov r2, r7
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _021563E0
	ldr r0, [sp, #0x1c]
	ldrsh r1, [r5, #0x94]
	ldrsh r0, [r0, #0x94]
	cmp r1, r0
	beq _021563E4
	mov r0, #0x3c
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r3, [r5, #0x84]
	ldr r2, [r0, #0x84]
	add r1, sp, #0x20
	mov r0, r8
	bl FUN_ov132_021407dc
	strb r4, [sp, #0x14]
	b _021563E4
_021563E0:
	strb r9, [sp, #0x14]
_021563E4:
	ldrb r0, [sp, #0x14]
	cmp r0, #0
	beq _02156484
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02156484
	ldr r0, [sp, #0x18]
	cmp r0, #2
	bne _0215644C
	ldr r0, _021564AC ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _0215644C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrsh r3, [r5, #0x94]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0215644C:
	ldr r0, _021564A4 ; =0x0209A2C0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
	b _02156484
_02156464:
	ldr r2, _021564A4 ; =0x0209A2C0
	mov r0, r8
	mov r1, r7
	mov r3, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02156484:
	str r6, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x20
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021578ec
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021564A4: .word unk_0209A2C0
_021564A8: .word unk_0209A720
_021564AC: .word unk_0209BA20
_021564B0: .word 0x000C0018
	arm_func_end FUN_ov132_02156234

	arm_func_start FUN_ov132_021564b4
FUN_ov132_021564b4: ; 0x021564B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r6, #0
	ldr r2, _02156778 ; =0x0209A2C0
	str r6, [sp, #0x18]
	mov r8, r0
	ldr r0, [r2, #0x48]
	mov r7, r1
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r7
	str r6, [sp, #0x1c]
	strb r6, [sp, #0x14]
	bl FUN_ov16_020f07d0
	add r9, sp, #0x20
	add r4, sp, #0x14
	mov r0, r8
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl FUN_ov132_02157f68
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r4, [sp]
	ldr r2, [r7, #0x84]
	mov r3, r9
	mov r0, r8
	mov r1, r7
	mov r9, r6
	bl FUN_ov132_0214b574
	strb r6, [sp, #0x14]
	cmp r5, #0
	beq _02156738
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02156738
	ldr r1, _0215677C ; =0x0209A720
	mov r0, r8
	ldr r2, [r1, #0xd8]
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _0215657C
	ldr r0, _02156780 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _02156758
_0215657C:
	mov r4, #0
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov132_02158864
	cmp r0, #0
	beq _021565BC
	add r2, sp, #0x18
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021588d8
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #1
	b _021566BC
_021565BC:
	ldr r2, _02156778 ; =0x0209A2C0
	mov r0, r8
	mov r1, r7
	mov r3, r4
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl FUN_02040148
	mov r1, r0
	str r4, [sp]
	mov r0, #0x40000
	str r0, [sp, #4]
	mov r0, #0x34000
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r2, _02156784 ; =0x000C0018
	add r3, sp, #0x1c
	str r2, [sp, #0x10]
	mov r0, r8
	mov r2, r7
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02156648
	mov r0, #0x50
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r3, [r5, #0x84]
	ldr r2, [r0, #0x84]
	add r1, sp, #0x20
	mov r0, r8
	bl FUN_ov132_021407dc
	b _021566BC
_02156648:
	mov r0, r5
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r0, r8
	bl FUN_ov132_02143ca4
	mov r1, r0
	mov r0, r8
	bl FUN_ov132_02144854
	str r0, [sp, #0x1c]
	cmp r0, #0
	ldreq r1, [r7, #0x84]
	ldreq r0, [r1]
	streq r0, [sp, #0x20]
	ldreq r0, [r1, #4]
	streq r0, [sp, #0x24]
	beq _0215669C
	ldr r1, [r0, #0x84]
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r0, [r1, #4]
	str r0, [sp, #0x24]
_0215669C:
	mov r0, #0x32
	str r0, [sp]
	add r1, sp, #0x20
	ldr r3, [r5, #0x84]
	mov r0, r8
	mov r2, r1
	bl FUN_ov132_021407dc
	mov r4, #0
_021566BC:
	strb r4, [sp, #0x14]
	tst r4, #0xff
	beq _02156758
	mov r0, r8
	mov r1, r5
	bl FUN_ov132_0213c448
	cmp r0, #0
	bne _02156758
	ldr r0, [sp, #0x18]
	cmp r0, #2
	bne _02156720
	ldr r0, _02156780 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _02156720
	str r9, [sp]
	str r9, [sp, #4]
	str r9, [sp, #8]
	ldrsh r3, [r5, #0x94]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02156720:
	ldr r0, _02156778 ; =0x0209A2C0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
	b _02156758
_02156738:
	ldr r2, _02156778 ; =0x0209A2C0
	mov r0, r8
	mov r1, r7
	mov r3, #0
	bl FUN_ov132_0213c76c
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02156758:
	str r6, [sp]
	ldrb r3, [sp, #0x14]
	add r2, sp, #0x20
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021578ec
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02156778: .word unk_0209A2C0
_0215677C: .word unk_0209A720
_02156780: .word unk_0209BA20
_02156784: .word 0x000C0018
	arm_func_end FUN_ov132_021564b4

	arm_func_start FUN_ov132_02156788
FUN_ov132_02156788: ; 0x02156788
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _021567DC ; =0x0209A2C0
	mov r6, r0
	ldr r0, [r3, #0x48]
	mov r5, r1
	mov r4, r2
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _021567D4
	cmp r4, #0x80000000
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0, #0x84]
	ldr r2, [r5, #0x84]
	mov r0, r6
	bl FUN_01ffba50
	cmp r0, r4
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, pc}
_021567D4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021567DC: .word unk_0209A2C0
	arm_func_end FUN_ov132_02156788

	arm_func_start FUN_ov132_021567e0
FUN_ov132_021567e0: ; 0x021567E0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldrb r12, [r5, #0x39a]
	mov r4, r1
	mov r8, r2
	mov r7, r3
	cmp r12, #0
	bne _02156814
	bl FUN_ov132_02147dd8
	cmp r0, #0
	beq _02156814
	mov r0, r5
	bl FUN_ov132_02147dec
_02156814:
	ands r6, r7, #2
	bne _02156834
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl FUN_ov132_02147e84
_02156834:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146950
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, r8
	bl FUN_01ffb93c
	cmp r0, #0
	beq _021568D0
	cmp r6, #0
	beq _021568B0
	ldrb r0, [r5, #0x39a]
	ldrb r1, [r5, #0x39a]
	mov r2, #1
	cmp r0, #0
	moveq r2, #0
	sub r1, r1, r2
	mov r0, r4
	strb r1, [r5, #0x39a]
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r5
	mov r2, #2
	bl FUN_ov132_02147e84
	mov r0, r5
	bl FUN_ov132_02147dec
	b _021568C8
_021568B0:
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl FUN_ov132_02147e84
_021568C8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021568D0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_021567e0

	arm_func_start FUN_ov132_021568d8
FUN_ov132_021568d8: ; 0x021568D8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0215697C ; =0x0209A2C0
	mov r6, r0
	ldr r0, [r2, #0x48]
	mov r5, r1
	bl FUN_ov16_020efa80
	cmp r5, r0
	bne _02156974
	ldr r4, _02156980 ; =0x0209BA20
	mov r0, r4
	bl FUN_020731a4
	cmp r0, #0
	bne _02156974
	mov r0, r6
	bl FUN_ov132_02145ff0
	cmp r0, #0
	ldrneb r0, [r6, #0x39a]
	cmpne r0, #0
	beq _02156974
	mov r0, r4
	mov r1, r5
	bl FUN_0204ac4c
	cmp r0, #0
	beq _02156974
	ldr r1, [r5, #0x84]
	mov r0, r5
	ldr r4, [r1, #4]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov132_02147208
	cmp r0, #0
	beq _02156974
	mov r0, r6
	bl FUN_ov132_02147dd8
	cmp r0, #0
	ldrne r0, _02156984 ; =0x00000A02
	ldmnefd sp!, {r4, r5, r6, pc}
_02156974:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0215697C: .word unk_0209A2C0
_02156980: .word unk_0209BA20
_02156984: .word 0x00000A02
	arm_func_end FUN_ov132_021568d8

	arm_func_start FUN_ov132_02156988
FUN_ov132_02156988: ; 0x02156988
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl FUN_02040148
	mov r1, r0
	mov r0, r6
	bl FUN_ov132_02144854
	mov r1, r0
	mov r0, r6
	bl FUN_01ffb960
	cmp r0, #0
	moveq r0, #0x200
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	cmpne r4, #0x5f
	movgt r0, #0x200
	movle r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02156988

	arm_func_start FUN_ov132_021569e4
FUN_ov132_021569e4: ; 0x021569E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl FUN_ov16_020f07d0
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r6
	bl FUN_ov132_02146348
	cmp r0, #0
	beq _02156A58
	cmp r0, #1
	beq _02156A2C
	cmp r0, #2
	beq _02156A40
	b _02156A58
_02156A2C:
	mov r0, r6
	mov r1, r4
	mov r2, #0x10000
	bl FUN_01ffb1b0
	ldmfd sp!, {r4, r5, r6, pc}
_02156A40:
	mov r2, #0x20000
	mov r0, r6
	mov r1, r4
	rsb r2, r2, #0
	bl FUN_01ffb1b0
	ldmfd sp!, {r4, r5, r6, pc}
_02156A58:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_021569e4

	arm_func_start FUN_ov132_02156a60
FUN_ov132_02156a60: ; 0x02156A60
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r12, [r1, #0x84]
	mov r6, r0
	mov r0, r1
	mov r5, r2
	mov r4, r3
	ldr r7, [r12, #4]
	ldr r8, [r12]
	bl FUN_ov16_020f0810
	bl FUN_02040138
	mov r1, r8
	mov r2, r7
	ldrsh lr, [sp, #0x28]
	mov r12, #0
	mov r3, #9
	str lr, [sp]
	str r0, [sp, #4]
	mov r0, r6
	str r12, [sp, #8]
	str r12, [sp, #0xc]
	bl FUN_ov132_0214c60c
	cmp r0, #0
	beq _02156AE0
	cmp r4, #0
	beq _02156AD4
	ldr r0, [r4]
	cmp r0, r5
	bge _02156AE0
_02156AD4:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02156AE0:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_02156a60

	arm_func_start FUN_ov132_02156aec
FUN_ov132_02156aec: ; 0x02156AEC
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	beq _02156B50
	tst r3, #0x800000
	bne _02156B50
	ldr r0, [r4, #0x88]
	bl FUN_02040a80
	cmp r0, #0
	bne _02156B28
	mov r0, #5
	bl FUN_ov16_020ef928
	cmp r0, #0
	bne _02156B34
_02156B28:
	ldrsh r3, [r4, #0x94]
	ldr r2, [r4, #0x84]
	b _02156B3C
_02156B34:
	ldrsh r3, [r4, #0x94]
	ldr r2, [r4, #0x88]
_02156B3C:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02156b58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02156B50:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02156aec

	arm_func_start FUN_ov132_02156b58
FUN_ov132_02156b58: ; 0x02156B58
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r12, #0
	str r12, [sp]
	str r2, [sp, #4]
	mov r2, #0x1a
	sub r3, r2, #0x1b
	mov r4, r0
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	mov r0, #5
	bl FUN_ov16_020ef928
	mov r1, r0
	mov r0, r4
	add r1, r1, #2
	bl FUN_ov132_02147dac
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov132_02156b58

	arm_func_start FUN_ov132_02156ba0
FUN_ov132_02156ba0: ; 0x02156BA0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r1
	mov r3, #3
	mov r4, r2
	bl FUN_ov132_0214bb04
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _02156BFC
	mov r2, #0x18
	str r4, [sp]
	mov r12, #0
	str r12, [sp, #4]
	mov r0, r6
	mov r1, r5
	sub r3, r2, #0x19
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02156BFC:
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0213df14
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov132_02156ba0

	arm_func_start FUN_ov132_02156c10
FUN_ov132_02156c10: ; 0x02156C10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r7, #0
	mov r5, r1
	mov r6, r0
	str r7, [sp, #0x10]
	mov r0, r5
	mov r4, r2
	ldr r8, [r5, #0x84]
	bl FUN_ov16_020f0810
	bl FUN_02040138
	ldrsh r2, [r5, #0x94]
	add r1, sp, #0x10
	mov r3, #1
	str r2, [sp]
	stmib sp, {r0, r7}
	str r1, [sp, #0xc]
	mov r0, r6
	ldmia r8, {r1, r2}
	bl FUN_ov132_0214c60c
	movs r7, r0
	ldrne r0, [sp, #0x10]
	cmpne r0, r4
	addge sp, sp, #0x14
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r5
	bl FUN_0206cd88
	mov r4, r0
	mov r0, r7
	bl FUN_0206cd88
	mov r2, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02141568
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_02156c10

	arm_func_start FUN_ov132_02156ca4
FUN_ov132_02156ca4: ; 0x02156CA4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _02156D44 ; =0x0209A2C0
	mov r8, r0
	ldr r0, [r4, #0x48]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa80
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r2, [r4, #0x84]
	mov r0, r8
	mov r1, r4
	ldr r10, [r2, #4]
	bl FUN_ov132_021569e4
	mov r9, r0
	mov r0, r4
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r2, r6
	mov r0, r8
	bl FUN_01ffb1b0
	add r1, r10, r9
	sub r2, r1, r0
	mov r0, r8
	mov r1, r7
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _02156D3C
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r5
	bl FUN_ov132_02156aec
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02156D3C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02156D44: .word unk_0209A2C0
	arm_func_end FUN_ov132_02156ca4

	arm_func_start FUN_ov132_02156d48
FUN_ov132_02156d48: ; 0x02156D48
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r3
	bl FUN_ov132_02156788
	cmp r0, #0
	beq _02156DA8
	ldr r1, _02156DB4 ; =0x00020011
	ldr r0, _02156DB8 ; =0x0209A2C0
	str r1, [sp]
	ldmia r0, {r2, r3}
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0213f73c
	ldr r1, [sp, #0x18]
	cmp r1, #0
	strne r0, [r1]
	cmp r0, #0
	ble _02156DA8
	cmp r0, r4
	addle sp, sp, #4
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, pc}
_02156DA8:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02156DB4: .word 0x00020011
_02156DB8: .word unk_0209A2C0
	arm_func_end FUN_ov132_02156d48

	arm_func_start FUN_ov132_02156dbc
FUN_ov132_02156dbc: ; 0x02156DBC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r4, r1
	mov r8, r2
	mov r7, #0
	bl FUN_ov132_021448f4
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r6, r7, #1
	add r3, sp, #0x14
	mov r0, r5
	mov r1, r4
	mov r2, #0x20000
	str r6, [sp]
	bl FUN_ov132_02156a60
	cmp r0, #0
	mov r0, r4
	movne r7, #1
	bl FUN_ov16_020f0810
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x28c]
	tst r0, #1
	cmpne r7, #0
	beq _02156EA8
	tst r8, #1
	beq _02156EA8
	add r6, sp, #0xc
	mov r7, #0
	add r3, sp, #4
	mov r0, r5
	mov r1, r4
	mov r2, r6
	str r7, [sp]
	bl FUN_ov132_0213fb08
	cmp r0, #0
	beq _02156EA8
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02146a38
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0212d63c
	mov r0, r5
	mov r1, r4
	mov r2, r6
	sub r3, r7, #1
	bl FUN_ov132_02156b58
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02156EA8:
	mov r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_02156dbc

	arm_func_start FUN_ov132_02156eb4
FUN_ov132_02156eb4: ; 0x02156EB4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02156EEC
	mov r0, r6
	bl FUN_ov132_021448f4
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
_02156EEC:
	ldr r1, _02156F5C ; =0x0209A720
	mov r0, r6
	ldr r2, [r1, #0xd8]
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02156F50
	add r4, sp, #4
	mov r12, #0x8c000
	ldr r3, _02156F60 ; =0x0010000F
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	bl FUN_ov132_0214067c
	cmp r0, #0
	beq _02156F50
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mvn r3, #0
	bl FUN_ov132_02156b58
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02156F50:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02156F5C: .word unk_0209A720
_02156F60: .word 0x0010000F
	arm_func_end FUN_ov132_02156eb4

	arm_func_start FUN_ov132_02156f64
FUN_ov132_02156f64: ; 0x02156F64
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02156FB4 ; =0x0209A2C0
	mov r6, r0
	ldr r0, [r2, #0x48]
	mov r5, r1
	cmp r0, #0
	mov r4, #0
	blt _02156F94
	ldrsh r1, [r5, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	movne r4, #1
_02156F94:
	cmp r4, #0
	mov r0, r6
	mov r1, r5
	beq _02156FAC
	bl FUN_ov132_02156fb8
	ldmfd sp!, {r4, r5, r6, pc}
_02156FAC:
	bl FUN_ov132_02157258
	ldmfd sp!, {r4, r5, r6, pc}
_02156FB4: .word unk_0209A2C0
	arm_func_end FUN_ov132_02156f64

	arm_func_start FUN_ov132_02156fb8
FUN_ov132_02156fb8: ; 0x02156FB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r4, #0
	sub r2, r4, #1
	mov r9, r1
	mov r10, r0
	mov r0, r9
	str r2, [sp, #0x14]
	add r11, sp, #0xc
	bl FUN_ov16_020f07d0
	mov r7, r0
	mov r0, r9
	bl FUN_ov16_020f07d0
	bl FUN_02040188
	mov r5, r0
	cmp r7, #0
	ldreq r8, [r5, #4]
	mov r0, r9
	ldrne r8, [r5, #0xc]
	mov r6, #0
	bl FUN_02040aa8
	cmp r0, #0
	beq _021571C0
	ldr r1, [r9, #0x84]
	mov r0, r10
	ldr r2, [r1, #4]
	mov r1, r7
	bl FUN_01ffb1b0
	mov r4, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213cad8
	mov r0, r9
	bl FUN_0206d6c4
	cmp r0, #0
	movne r6, #1
	bne _021570B4
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138ec0
	cmp r0, #0
	beq _02157074
	ldr r0, [r9, #0x88]
	ldrh r0, [r0, #0x2a]
	cmp r0, #0x5a
	movhi r6, #1
	b _021570B4
_02157074:
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _021570A0
	add r2, sp, #0xc
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02156ba0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021570A0:
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213df14
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021570B4:
	cmp r6, #0
	beq _02157180
	add r5, sp, #0x14
	ldr r6, _02157250 ; =0x00140B0F
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	str r6, [sp]
	bl FUN_ov132_0214044c
	cmp r0, #0
	bne _02157104
	orr r0, r6, #0x200
	bic r6, r0, #0x40000
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	str r6, [sp]
	bl FUN_ov132_0214044c
_02157104:
	cmp r0, #0
	beq _02157134
	ldr r0, [sp, #0x14]
	bl FUN_ov16_020efa80
	mov r1, r0
	mov r0, r10
	mov r3, r6
	add r2, r8, r4
	bl FUN_ov132_02156ca4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157134:
	mov r0, r9
	bl FUN_0206dcd4
	ldrb r4, [r0, #0x61]
	mov r0, #0x64
	bl FUN_ov16_020ef928
	mov r2, r0
	mov r0, r10
	mov r1, r9
	add r2, r2, r4
	bl FUN_ov132_02156dbc
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02156eb4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157180:
	ldr r1, [r9, #0x84]
	mov r2, #0x2d
	ldr r0, [r1]
	mov r4, #0
	str r0, [sp, #0xc]
	ldr r1, [r1, #4]
	mov r0, r10
	str r1, [sp, #0x10]
	str r4, [sp]
	str r4, [sp, #4]
	mov r1, r9
	sub r3, r2, #0x2e
	str r4, [sp, #8]
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021571C0:
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021472b4
	mov r2, r0
	mov r0, r10
	mov r1, r9
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02157208
	ldr r2, _02157254 ; =0x0209A2C0
	add r3, sp, #0xc
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02157928
	cmp r0, #0
	bne _0215721C
_02157208:
	add r2, sp, #0xc
	mov r0, r10
	mov r1, r9
	mov r3, #1
	bl FUN_ov126_02138b3c
_0215721C:
	mov r0, r11
	mov r1, r5
	mov r2, #0x4000
	bl FUN_02040c34
	mov r5, #0
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r4
	str r5, [sp]
	bl FUN_ov132_021578ec
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157250: .word 0x00140B0F
_02157254: .word unk_0209A2C0
	arm_func_end FUN_ov132_02156fb8

	arm_func_start FUN_ov132_02157258
FUN_ov132_02157258: ; 0x02157258
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	ldr r4, _021578E0 ; =0x0209A2C0
	mov r2, #0x80000000
	movs r9, r1
	mov r10, r0
	str r2, [sp, #0x34]
	str r2, [sp, #0x38]
	cmpne r4, #0
	mov r7, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_ov16_020f07d0
	mov r5, r0
	mov r0, r9
	bl FUN_ov16_020f0810
	mov r8, r0
	mov r0, r5
	mov r6, r7
	strb r7, [sp, #0x30]
	bl FUN_02040188
	mov r11, r0
	mov r0, r5
	bl FUN_02040158
	mov r2, #0x4000
	str r0, [sp, #0x20]
	cmp r5, #1
	ldreq r0, [r11, #0xc]
	mov r1, r5
	streq r0, [sp, #0xc]
	ldrne r0, [r11, #4]
	rsb r2, r2, #0
	strne r0, [sp, #0xc]
	mov r0, r10
	bl FUN_01ffb1b0
	mov r2, #0x4000
	rsb r2, r2, #0
	str r0, [sp, #0x28]
	mov r0, r10
	mov r1, r5
	add r2, r2, #0x1000
	bl FUN_ov132_0213f59c
	str r0, [sp, #0x1c]
	mov r1, r8
	mov r0, r10
	bl FUN_ov132_021472b4
	str r0, [sp, #0x18]
	ldrb r1, [r4, #0x58]
	mov r0, r10
	bl FUN_ov126_0212d4b4
	str r0, [sp, #0x14]
	mov r8, #1
	ldr r3, _021578E0 ; =0x0209A2C0
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	ldmia r3, {r2, r3}
	bl FUN_ov132_0213f73c
	cmp r0, #1
	ldr r1, [r9, #0x84]
	mov r0, r11
	movne r8, #0
	bl FUN_02040764
	str r0, [sp, #0x10]
	mvn r1, #0
	ldr r0, [r4, #0x48]
	str r1, [sp, #0x2c]
	cmp r0, r1
	ble _021574CC
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02157474
	ldr r0, _021578E4 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _02157474
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02157474
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02157474
	ldr r2, [r6, #0x84]
	mov r0, r10
	mov r1, r5
	bl FUN_ov132_02140b50
	cmp r0, #0
	beq _02157474
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138cc8
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_0214079c
	cmp r0, #0
	bne _02157474
	mov r0, r9
	bl FUN_0206d5f0
	mov r5, r0
	mov r0, r6
	bl FUN_0206d5f0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x28]
	add r3, r2, r1
	mov r2, r0
	mov r0, #0x80000
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r1, r5
	str r0, [sp, #4]
	mov r0, r10
	bl FUN_ov132_0214845c
	cmp r0, #0
	bne _02157474
	mov r0, r9
	mov r4, #0
	bl FUN_0206da78
	cmp r0, #0x32
	beq _02157460
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldrsh r3, [r6, #0x94]
	mov r0, r10
	mov r1, r9
	mov r2, #0x32
	bl FUN_ov132_0213dfd4
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157460:
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213df14
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157474:
	add r5, sp, #0x34
	add r6, sp, #0x30
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r5
	str r6, [sp]
	bl FUN_ov132_0214ab50
	cmp r0, #0
	bne _021574B0
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r5
	bl FUN_ov132_02157928
_021574B0:
	add r0, sp, #0x34
	mov r1, r11
	mov r2, #0x4000
	bl FUN_02040c34
	mov r6, #0
	mov r7, #1
	b _021577DC
_021574CC:
	ldr r0, [r4, #0x4c]
	bl FUN_ov16_020efa80
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x24]
	cmp r1, #0
	beq _02157560
	mov r0, r10
	bl FUN_ov126_021375d4
	cmp r0, #0
	beq _02157560
	ldrsh r1, [r0, #8]
	ldr r0, _021578E8 ; =0x000001F6
	cmp r1, r0
	bne _02157560
	mov r0, r10
	mov r1, r9
	mov r2, r4
	add r3, sp, #0x34
	bl FUN_ov132_0214d320
	cmp r0, #0
	beq _02157560
	add r0, sp, #0x34
	mov r1, r11
	mov r2, #0x4000
	bl FUN_02040c34
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x30]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x34
	bl FUN_ov132_021578ec
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213ca8c
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157560:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021577DC
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	beq _0215762C
	mov r0, r11
	add r1, r4, #0x18
	bl FUN_02040764
	cmp r0, #0
	beq _0215762C
	ldr r0, [sp, #0x20]
	add r1, r4, #0x18
	bl FUN_02040764
	cmp r0, #0
	beq _02157608
	ldrb r0, [r4, #0x5f]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _021575CC
	ldrb r0, [r4, #0x58]
	cmp r0, #0x16
	bne _02157608
_021575CC:
	ldr r1, [r4, #0x1c]
	ldr r2, [sp, #0x1c]
	mov r0, r10
	mov r3, r5
	bl FUN_01ffb9b0
	cmp r0, #0
	bne _0215762C
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r7, #1
	str r0, [sp, #0x34]
	str r1, [sp, #0x38]
	strb r7, [sp, #0x30]
	mov r6, #0x2f
	b _0215762C
_02157608:
	cmp r8, #0
	beq _0215762C
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r7, #1
	str r0, [sp, #0x34]
	str r1, [sp, #0x38]
	strb r7, [sp, #0x30]
	mov r6, #0x10
_0215762C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021576B4
	cmp r8, #0
	add r6, sp, #0x34
	mov r0, #1
	beq _02157660
	ldmia r4, {r1, r2}
	str r1, [sp, #0x34]
	str r2, [sp, #0x38]
	strb r0, [sp, #0x30]
	mov r6, #0x10
	b _021576A0
_02157660:
	add r7, sp, #0x30
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r6
	str r7, [sp]
	bl FUN_ov132_0214ab50
	cmp r0, #0
	bne _02157698
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r6
	bl FUN_ov132_02157928
_02157698:
	mov r6, #0
	strb r6, [sp, #0x30]
_021576A0:
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r7, #1
	bl FUN_020406a4
	b _02157710
_021576B4:
	ldr r1, [sp, #0x24]
	mov r0, r9
	bl FUN_ov16_020f0728
	cmp r0, #0
	beq _02157710
	ldr r2, [sp, #0x24]
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02139a30
	cmp r0, #0
	bne _02157710
	mov r0, r11
	mov r1, r4
	bl FUN_02040764
	cmp r0, #0
	cmpne r8, #0
	beq _02157710
	ldmia r4, {r0, r1}
	mov r7, #1
	str r0, [sp, #0x34]
	str r1, [sp, #0x38]
	strb r7, [sp, #0x30]
	mov r6, #0x10
_02157710:
	cmp r7, #0
	bne _021577DC
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x18]
	mov r0, r10
	mov r3, r5
	bl FUN_01ffb9b0
	cmp r0, #0
	bne _02157744
	ldr r0, _021578E4 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _021577DC
_02157744:
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	bne _0215777C
	cmp r8, #0
	mov r2, #1
	beq _0215777C
	ldmia r4, {r0, r1}
	strb r2, [sp, #0x30]
	str r0, [sp, #0x34]
	str r1, [sp, #0x38]
	mov r6, #0
	b _021577DC
_0215777C:
	ldrb r0, [sp, #0x30]
	cmp r0, #0
	bne _021577DC
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	beq _021577DC
	ldr r0, [r10, #0x59c]
	cmp r0, r5
	bne _021577DC
	add r0, r10, #0x5a0
	bl FUN_02040a80
	cmp r0, #0
	movne r7, #0
	strneb r7, [sp, #0x30]
	bne _021577DC
	ldr r0, [r10, #0x5a0]
	mov r7, #1
	str r0, [sp, #0x34]
	ldr r0, [r10, #0x5a4]
	mov r6, #0x11
	str r0, [sp, #0x38]
	strb r7, [sp, #0x30]
_021577DC:
	cmp r7, #0
	add r5, sp, #0x34
	mov r7, #0
	bne _02157808
	add r3, sp, #0x34
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov132_02157928
	strb r7, [sp, #0x30]
	mov r6, #0x2f
_02157808:
	mov r0, r5
	bl FUN_02040a80
	cmp r0, #0
	bne _02157858
	ldr r1, [r9, #0x84]
	mov r0, r10
	mov r2, r5
	bl FUN_01ffba50
	cmp r0, #0xc000
	bgt _02157858
	ldr r1, [r9, #0x84]
	ldr r0, [sp, #0x34]
	ldr r2, [r1]
	sub r1, r0, #0x2000
	cmp r2, r1
	mov r6, #9
	blt _02157858
	add r0, r0, #0x2000
	cmp r2, r0
	strle r2, [sp, #0x34]
_02157858:
	mov r0, r5
	mov r1, r11
	mov r2, #0x4000
	bl FUN_02040c34
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_0213ca8c
	cmp r6, #0
	cmpne r6, #9
	bne _021578A0
	str r7, [sp]
	ldrb r3, [sp, #0x30]
	add r2, sp, #0x34
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_021578ec
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021578A0:
	stmia sp, {r5, r7}
	mov r0, r10
	mov r1, r9
	mov r2, r6
	str r7, [sp, #8]
	sub r3, r7, #1
	bl FUN_ov132_0213dfd4
	ldrb r0, [sp, #0x30]
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, #0x20
	bl FUN_0206dac4
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021578E0: .word unk_0209A2C0
_021578E4: .word unk_0209BA20
_021578E8: .word 0x000001F6
	arm_func_end FUN_ov132_02157258

	arm_func_start FUN_ov132_021578ec
FUN_ov132_021578ec: ; 0x021578EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r0, r5
	add r1, r5, #4
	mov r4, r3
	bl FUN_020406a4
	ldr r3, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	str r4, [sp]
	bl FUN_ov132_02152698
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_021578ec

	arm_func_start FUN_ov132_02157928
FUN_ov132_02157928: ; 0x02157928
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r0, r1
	mov r5, r2
	mov r6, r3
	bl FUN_0206d5f0
	mov r11, r0
	mov r0, r7
	mov r1, r11
	bl FUN_ov132_02143cd0
	mov r9, r0
	mov r0, r7
	mov r1, r5
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	addne r5, r5, #0x18
	mov r0, r9
	ldmia r5, {r4, r5}
	bl FUN_02040170
	mov r2, #0x2000
	ldr r3, [r0]
	ldr r1, [r0, #8]
	mov r0, r7
	sub r10, r1, r3
	mov r1, r9
	rsb r2, r2, #0
	add r8, r3, r10, asr #1
	bl FUN_ov132_0213f5d4
	mov r1, r9
	mov r9, r0
	mov r0, r7
	mov r2, #0
	str r8, [r6]
	str r9, [r6, #4]
	bl FUN_ov132_0213f5d4
	sub r0, r5, r0
	sub r1, r4, r8
	bl FX_Atan2Idx
	add r1, r10, r10, lsl #1
	mov r5, r0
	mov r0, r11
	mov r4, r1, asr #2
	bl FUN_02040138
	mov r10, r0
	mov r0, r7
	mov r1, r11
	bl FUN_ov132_02147274
	mov r1, #0
	sub r12, r1, #1
	mov r3, r0
	mov r0, r7
	mov r7, #0x80000
	mov r1, r11
	mov r2, r10
	stmia sp, {r7, r12}
	bl FUN_ov132_0214845c
	cmp r0, #0
	addgt r0, r4, r4, lsl #2
	movgt r4, r0, asr #3
	mov r0, r5, asr #4
	mov r5, r0, lsl #1
	add r1, r5, #1
	ldr r0, _02157A9C ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	smull r1, r0, r4, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	cmp r4, #0x20000
	ldr r0, _02157AA0 ; =0x0209BA20
	movgt r4, #0x20000
	add r8, r8, r1
	bl FUN_020731a4
	cmp r0, #0
	addne r0, r4, r4, lsl #1
	movne r4, r0, asr #2
	ldr r0, _02157A9C ; =FX_SinCosTable_
	mov r1, r5, lsl #1
	ldrsh r1, [r0, r1]
	str r8, [r6]
	mov r0, #1
	smull r2, r1, r4, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r9, r2
	str r1, [r6, #4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157A9C: .word FX_SinCosTable_
_02157AA0: .word unk_0209BA20
	arm_func_end FUN_ov132_02157928

	arm_func_start FUN_ov132_02157aa4
FUN_ov132_02157aa4: ; 0x02157AA4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r9, _02157C28 ; =0x0209A2C0
	mov r7, r0
	ldr r0, [r9, #0x48]
	bl FUN_ov16_020efa80
	mov r4, r0
	ldr r0, [r9, #0x4c]
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r7
	bl FUN_ov132_02144780
	mov r1, r0
	mov r0, r7
	bl FUN_ov132_02145340
	cmp r0, #0
	bne _02157C1C
	mov r8, #1
	mov r6, #0
	add r10, sp, #4
	mov r0, r7
	mov r1, r9
	mov r2, r8
	mov r3, r6
	str r10, [sp]
	bl FUN_ov126_0212c040
	cmp r0, #0
	movne r9, r8
	bne _02157B4C
	mov r0, r7
	mov r1, r9
	mov r2, r6
	mov r3, r6
	str r10, [sp]
	bl FUN_ov126_0212c040
	cmp r0, #0
	movne r9, r6
	movne r6, r8
	bne _02157B4C
	add sp, sp, #8
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02157B4C:
	ldrb r0, [sp, #4]
	cmp r0, #0
	bne _02157C1C
	cmp r4, #0
	beq _02157B94
	mov r0, r4
	bl FUN_ov16_020f07d0
	cmp r9, r0
	beq _02157B94
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_02143ca4
	mov r3, r0
	mov r0, r7
	mov r1, r4
	mov r2, #0x11
	bl FUN_ov132_0214a444
	b _02157C10
_02157B94:
	cmp r5, #0
	beq _02157BC4
	mov r0, r5
	bl FUN_ov16_020f07d0
	cmp r9, r0
	beq _02157BC4
	mov r0, r5
	bl FUN_ov16_020f0810
_02157BB4:
	mov r1, r0
	mov r0, r7
	bl FUN_ov132_0214fb50
	b _02157C10
_02157BC4:
	cmp r4, #0
	beq _02157BDC
	mov r0, r4
	bl FUN_ov16_020f07d0
	cmp r9, r0
	beq _02157BF4
_02157BDC:
	cmp r5, #0
	beq _02157C04
	mov r0, r5
	bl FUN_ov16_020f07d0
	cmp r9, r0
	bne _02157C04
_02157BF4:
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_02143ca4
	b _02157BB4
_02157C04:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02157C10:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02157C1C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02157C28: .word unk_0209A2C0
	arm_func_end FUN_ov132_02157aa4

	arm_func_start FUN_ov132_02157c2c
FUN_ov132_02157c2c: ; 0x02157C2C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	movs r9, r1
	str r2, [sp, #0xc]
	mov r10, r0
	mov r4, #0
	mov r5, r3
	addeq sp, sp, #0x2c
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_ov16_020f07d0
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	tst r5, #0x800000
	ldrne r8, [sp, #0x20]
	moveq r8, r4
	tst r5, #0x80
	moveq r0, #1
	streq r0, [sp, #0x10]
	movne r0, #0
	strne r0, [sp, #0x10]
	cmp r8, #0
	beq _02157CAC
	ldr r1, [sp, #0x1c]
	mov r0, r10
	sub r2, r4, #0xc000
	mov r3, #1
	str r4, [sp]
	bl FUN_ov132_0213f37c
	str r0, [sp, #0x18]
_02157CAC:
	mov r0, r10
	mov r1, #0xa
	bl FUN_ov132_02144a84
	mov r4, #0x18
	mov r11, r0
	mov r0, r4
	bl FUN_ov16_020ef928
	adds r0, r0, #0x18
	mov r0, r4
	beq _02157CF4
	bl FUN_ov16_020ef928
	add r0, r0, #0x18
	mov r0, r0, lsl #0xc
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02157D0C
_02157CF4:
	bl FUN_ov16_020ef928
	add r0, r0, #0x18
	mov r0, r0, lsl #0xc
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_02157D0C:
	bl _ffix
	mov r4, r0
	ldr r2, [r11, #8]
	ldr r0, [r11]
	mov r1, r4
	sub r0, r2, r0
	bl _s32_div_f
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0x28]
	ldr r6, [r11, #0xc]
	ldr r0, [r11, #4]
	mov r1, r4
	sub r0, r6, r0
	bl _s32_div_f
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0x14]
	ldr r0, [r9, #0x84]
	mov r1, r4
	ldr r0, [r0, #4]
	sub r0, r6, r0
	bl _s32_div_f
	mov r0, r0, lsl #0x18
	mov r3, r0, asr #0x18
	ands r2, r5, #0x80000
	movne r0, r3
	moveq r0, #0
	ldr r1, [sp, #0x1c]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r1, #0
	bne _02157DA8
	cmp r2, #0
	ldreq r3, [sp, #0x14]
	mov r0, #0
	sub r1, r0, #1
	str r3, [sp, #0x14]
	str r1, [sp, #0x20]
_02157DA8:
	tst r5, #0x20000
	ldrne r1, [sp, #0x20]
	rsbne r1, r1, #0
	movne r1, r1, lsl #0x18
	movne r1, r1, asr #0x18
	strne r1, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, r0, r1
	mov r1, r0, lsl #0x18
	ldr r0, [sp, #0x14]
	cmp r0, r1, asr #24
	mov r0, r1, asr #0x18
	str r0, [sp, #0x24]
	ble _02157F58
_02157DE0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ldrgt r0, [sp, #0x24]
	ldrle r1, [sp, #0x14]
	ldrle r0, [sp, #0x24]
	suble r0, r1, r0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldr r0, [r11, #4]
	mla r6, r4, r1, r0
	beq _02157E64
	mov r0, r10
	bl FUN_ov132_02144780
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_0213f354
	cmp r0, #0
	bne _02157E64
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	mov r0, r10
	mov r1, r6
	bl FUN_01ffb9b0
	cmp r0, #0
	bne _02157E64
	cmp r8, #0
	beq _02157F38
	mov r0, #3
	bl FUN_ov16_020ef928
	cmp r0, #0
	bne _02157F38
_02157E64:
	ldr r0, [sp, #0x28]
	mov r5, #0
	cmp r0, #0
	ble _02157F38
_02157E74:
	ldr r1, [r11]
	mov r0, r9
	mla r7, r4, r5, r1
	bl FUN_02040148
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02157F64 ; =0x00080009
	mov r1, r7
	str r0, [sp, #8]
	mov r0, r10
	mov r2, r6
	mov r3, r4
	bl FUN_ov132_02142cfc
	cmp r0, #0
	bne _02157F20
	mov r0, r9
	bl FUN_ov16_020f0810
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02157F64 ; =0x00080009
	mov r1, r7
	str r0, [sp, #8]
	mov r0, r10
	mov r2, r6
	mov r3, r4
	bl FUN_ov132_02142cfc
	cmp r0, #0
	bne _02157F04
	cmp r8, #0
	beq _02157F20
	mov r0, #0x32
	bl FUN_ov16_020ef928
	cmp r0, #0
	bne _02157F20
_02157F04:
	ldr r0, [sp, #0xc]
	add sp, sp, #0x2c
	cmp r0, #0
	strne r7, [r0]
	strne r6, [r0, #4]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157F20:
	add r0, r5, #1
	mov r1, r0, lsl #0x18
	ldr r0, [sp, #0x28]
	mov r5, r1, asr #0x18
	cmp r0, r1, asr #24
	bgt _02157E74
_02157F38:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	mov r1, r0, lsl #0x18
	ldr r0, [sp, #0x14]
	cmp r0, r1, asr #24
	mov r0, r1, asr #0x18
	str r0, [sp, #0x24]
	bgt _02157DE0
_02157F58:
	mov r0, #0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157F64: .word 0x00080009
	arm_func_end FUN_ov132_02157c2c

	arm_func_start FUN_ov132_02157f68
FUN_ov132_02157f68: ; 0x02157F68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r9, #1
	mov r11, #0
	bl FUN_ov132_021531f4
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, r11
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02158328 ; =0x0209BA20
	bl FUN_020728e8
	mov r4, r0
	cmp r4, #0x15
	bne _02157FD4
	mov r4, #0x17
	bl FUN_ov16_020f0a4c
	mov r10, r0
	mov r0, r7
	bl FUN_ov16_020f0810
	cmp r10, r0
	addeq sp, sp, #0x1c
	moveq r0, r11
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02157FD4:
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02158018
	cmp r4, #0x16
	bne _0215800C
	bl FUN_ov16_020f0a4c
	mov r10, r0
	mov r0, r7
	bl FUN_ov16_020f0810
	cmp r10, r0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215800C:
	cmp r4, #0x17
	moveq r4, #0x18
	movne r4, #0x17
_02158018:
	cmp r6, #0
	ldrne r0, _0215832C ; =0x0209A2C0
	ldrne r1, [r0]
	strne r1, [r6]
	ldrne r0, [r0, #4]
	strne r0, [r6, #4]
	cmp r4, #0x17
	beq _021580EC
	cmp r4, #0x18
	bne _0215831C
	mov r0, r7
	cmp r5, #0
	strneb r9, [r5]
	bl FUN_0204053c
	cmp r0, #0
	beq _02158098
	ldr r1, _02158330 ; =0x00040008
	cmp r5, #0
	strneb r11, [r5]
	str r1, [sp]
	mov r0, #0x50000
	str r0, [sp, #4]
	ldr r3, [r7, #0x84]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_ov132_0214d5f4
	cmp r0, #0
	bne _021580C4
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02158098:
	add r4, sp, #0x14
	mov r0, r8
	mov r1, r7
	mov r2, #0x80000000
	mov r3, #2
	str r4, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021580C4:
	ldrb r4, [r5]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #0
	str r4, [sp]
	bl FUN_ov132_02152698
	add sp, sp, #0x1c
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021580EC:
	ldr r0, _0215832C ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	bl FUN_ov16_020efa80
	movs r1, r0
	mov r4, #0
	beq _02158114
	mov r0, r8
	bl FUN_ov132_0213c448
	cmp r0, #0
	movne r4, #1
_02158114:
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	cmp r6, #0
	ldrne r0, _0215832C ; =0x0209A2C0
	ldrne r1, [r0]
	strne r1, [r6]
	ldrne r0, [r0, #4]
	strne r0, [r6, #4]
	cmp r4, #0
	bne _02158168
	add r10, sp, #0x14
	mov r0, r8
	mov r1, r7
	mov r2, #0x80000000
	mov r3, #2
	str r10, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	beq _02158168
	b _021582EC
_02158168:
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_02146c30
	cmp r0, #0
	beq _021581EC
	cmp r4, #0
	mov r10, #0x80000000
	bne _021581EC
	mov r0, r7
	bl FUN_02040148
	str r11, [sp]
	str r10, [sp, #4]
	mov r1, #0x30000
	str r1, [sp, #8]
	mov r1, r0
	str r9, [sp, #0xc]
	mov r0, #0xc0000
	str r0, [sp, #0x10]
	add r3, sp, #0x18
	mov r0, r8
	mov r2, r7
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _021581EC
	cmp r6, #0
	beq _021582F4
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #0x84]
	ldr r0, [r1]
	str r0, [r6]
	ldr r0, [r1, #4]
	str r0, [r6, #4]
	b _021582F4
_021581EC:
	ldr r0, _0215832C ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmn r0, #1
	ble _021582A8
	cmp r4, #0
	bne _0215822C
	add r4, sp, #0x14
	mov r0, r8
	mov r1, r7
	mov r3, r9
	mov r2, #0x80000000
	str r4, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	beq _0215822C
	b _021582EC
_0215822C:
	cmp r5, #0
	strneb r11, [r5]
	mov r0, r7
	bl FUN_02040148
	mov r1, r0
	str r11, [sp]
	mov r0, #0x80000000
	str r0, [sp, #4]
	mov r0, #0x50000
	str r0, [sp, #8]
	add r3, sp, #0x18
	mov r0, r8
	mov r2, r7
	str r9, [sp, #0xc]
	mov r4, #0xc0000
	str r4, [sp, #0x10]
	bl FUN_ov132_021583ac
	cmp r0, #0
	beq _02158290
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x84]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	stmia r6, {r0, r1}
	b _021582F4
_02158290:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r11
	bl FUN_ov126_02138b3c
	b _021582F4
_021582A8:
	add r4, sp, #0x14
	mov r0, r8
	mov r1, r7
	mov r2, #0x80000000
	mov r3, #2
	str r4, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	bne _021582EC
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r11
	bl FUN_ov126_02138b3c
	cmp r5, #0
	strneb r11, [r5]
	b _021582F4
_021582EC:
	cmp r5, #0
	strneb r9, [r5]
_021582F4:
	ldrb r4, [r5]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #0
	str r4, [sp]
	bl FUN_ov132_02152698
	add sp, sp, #0x1c
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215831C:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02158328: .word unk_0209BA20
_0215832C: .word unk_0209A2C0
_02158330: .word 0x00040008
	arm_func_end FUN_ov132_02157f68

	arm_func_start FUN_ov132_02158334
FUN_ov132_02158334: ; 0x02158334
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r2
	ldr r2, [sp, #0x18]
	mov r8, r0
	mov r7, r1
	mov r5, r3
	bl FUN_ov132_02156988
	mov r4, r0
	mov r0, r8
	mov r1, r7
	bl FUN_ov132_021568d8
	orr r0, r4, r0
	orr r5, r5, r0
	mov r0, r8
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl FUN_01ffb93c
	cmp r0, #0
	beq _021583A4
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_ov132_021567e0
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_021583A4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_02158334

	arm_func_start FUN_ov132_021583ac
FUN_ov132_021583ac: ; 0x021583AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r0, [sp, #0x48]
	movs r9, r2
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r1, [sp, #4]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	str r3, [sp, #8]
	ldr r11, [sp, #0x40]
	ldr r8, [sp, #0x44]
	str r0, [sp, #0x50]
	beq _021583F8
	mov r0, r9
	bl FUN_0206d688
	cmp r0, #0
	bne _02158404
_021583F8:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02158404:
	ldr r0, _021585C0 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	mov r1, #4
	ldr r0, [sp, #0x4c]
	moveq r1, #0xb
	cmp r0, #0
	mvn r7, #0x80000000
	mvn r0, #0
	moveq r7, #0
	cmp r8, #0x80000000
	str r0, [sp, #0x10]
	movne r0, #1
	strne r0, [sp, #0xc]
	moveq r0, #0
	streq r0, [sp, #0xc]
	subs r5, r1, #1
	bmi _02158588
_0215844C:
	ldr r1, [sp, #4]
	mov r0, r10
	mov r2, r5
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02158580
	bl FUN_0206d688
	cmp r0, #0
	beq _02158580
	ldr r2, [sp, #0x50]
	mov r0, r10
	mov r1, r4
	mov r3, r9
	bl FUN_ov126_021393a8
	cmp r0, #0
	bne _02158580
	ldr r2, [r4, #0x84]
	ldr r3, [r9, #0x84]
	ldr r1, [r2]
	ldr r0, [r3]
	ldr r2, [r2, #4]
	subs r1, r0, r1
	ldr r0, [r3, #4]
	rsbmi r1, r1, #0
	subs r2, r0, r2
	ldr r0, [sp, #0xc]
	rsbmi r2, r2, #0
	cmp r0, #0
	beq _021584D8
	cmp r1, r8
	cmple r2, r8
	bgt _02158580
	cmp r1, r11
	cmpge r2, r11
	blt _02158580
_021584D8:
	mov r0, r10
	bl FUN_01ffba80
	mov r6, r0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0215852C
	cmp r6, r11
	blt _02158580
	cmp r6, r8
	bgt _02158580
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	mov r0, #1
	beq _0215851C
	cmp r7, r6
	movgt r0, #0
	b _02158524
_0215851C:
	cmp r7, r6
	movlt r0, #0
_02158524:
	cmp r0, #0
	bne _02158580
_0215852C:
	ldrsh r3, [r9, #0x94]
	ldr r2, [sp, #0x48]
	mov r1, r4
	str r3, [sp]
	mov r0, r10
	add r3, sp, #0x14
	bl FUN_ov132_02156a60
	cmp r0, #0
	bne _02158580
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	mov r0, #1
	beq _0215856C
	cmp r7, r6
	movle r0, #0
	b _02158574
_0215856C:
	cmp r7, r6
	movge r0, #0
_02158574:
	cmp r0, #0
	movne r7, r6
	strne r5, [sp, #0x10]
_02158580:
	subs r5, r5, #1
	bpl _0215844C
_02158588:
	ldr r0, [sp, #0x10]
	cmn r0, #1
	addle sp, sp, #0x18
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x10]
	mov r0, r10
	bl FUN_ov126_0213938c
	ldr r1, [sp, #8]
	str r0, [r1]
	mov r0, #1
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021585C0: .word unk_0209BA20
	arm_func_end FUN_ov132_021583ac

	arm_func_start FUN_ov132_021585c4
FUN_ov132_021585c4: ; 0x021585C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mvn r6, #0x80000000
	mov r10, r0
	mov r9, r1
	sub r8, r6, #0x80000000
	bl FUN_ov132_02144854
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, _02158660 ; =0x02099EF0
	mov r5, #0
_021585EC:
	mov r0, r10
	mov r1, r9
	mov r2, r5
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02158648
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02158648
	ldr r0, [r11]
	mov r1, r4
	bl FUN_ov126_0213a3ac
	cmp r0, #2
	bne _02158648
	ldr r1, [r4, #0x84]
	ldr r2, [r7, #0x84]
	mov r0, r10
	bl FUN_01ffba50
	cmp r0, r6
	ldrlesh r8, [r4, #0x94]
	movle r6, r0
_02158648:
	add r5, r5, #1
	cmp r5, #0xb
	blt _021585EC
	add r0, r10, r9, lsl #2
	str r8, [r0, #0x5a8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02158660: .word unk_02099EF0
	arm_func_end FUN_ov132_021585c4

	arm_func_start FUN_ov132_02158664
FUN_ov132_02158664: ; 0x02158664
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0x52]
	mov r7, #1
	cmp r0, #0x8000
	movls r7, #0
	mov r0, r5
	mov r1, r7
	bl FUN_ov132_021461f8
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0x58]
	cmp r0, #0x16
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_02040170
	mov r2, #0x4000
	mov r6, r0
	mov r0, r5
	mov r1, r7
	rsb r2, r2, #0
	bl FUN_ov132_0213f59c
	str r7, [r5, #0x59c]
	ldr r1, [r6, #8]
	ldr r3, [r6]
	add r1, r1, #0x4000
	sub r3, r3, #0x4000
	ldrh r2, [r4, #0x52]
	str r1, [sp, #0x20]
	str r3, [sp, #0x18]
	mov r1, r2, asr #4
	mov r3, r1, lsl #1
	add r1, r3, #1
	ldr r12, _021587A4 ; =FX_SinCosTable_
	mov lr, r1, lsl #1
	mov r3, r3, lsl #1
	ldrsh lr, [r12, lr]
	ldrsh r12, [r12, r3]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldmia r4, {r0, r1}
	add r4, sp, #0x18
	add lr, r0, lr
	add r12, r1, r12
	mov r3, r4
	str r1, [sp, #0xc]
	str r0, [sp, #8]
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	bl FUN_020404dc
	cmp r0, #0
	beq _0215878C
	add r1, sp, #8
	add r2, sp, #0
	mov r0, r4
	bl FUN_01ff852c
	cmp r0, #0
	beq _0215878C
	ldr r2, [sp, #4]
	ldr r1, [sp]
	add sp, sp, #0x28
	mov r0, #1
	str r1, [r5, #0x5a0]
	str r2, [r5, #0x5a4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215878C:
	mov r0, #0x80000000
	str r0, [r5, #0x5a0]
	str r0, [r5, #0x5a4]
	mov r0, #0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021587A4: .word FX_SinCosTable_
	arm_func_end FUN_ov132_02158664

	arm_func_start FUN_ov132_021587a8
FUN_ov132_021587a8: ; 0x021587A8
	cmp r1, #1
	moveq r1, #1
	movne r1, #0
	strb r1, [r0, #0x5b0]
	bx lr
	arm_func_end FUN_ov132_021587a8

	arm_func_start FUN_ov132_021587bc
FUN_ov132_021587bc: ; 0x021587BC
	ldrb r0, [r0, #0x5b0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov132_021587bc

	arm_func_start FUN_ov132_021587d0
FUN_ov132_021587d0: ; 0x021587D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02158860 ; =0x0209BA20
	mov r0, r5
	bl FUN_0204b754
	mov r4, r0
	mov r0, r5
	bl FUN_020731a4
	cmp r4, #8
	mov r1, #0
	addls pc, pc, r4, lsl #2
	b _02158858
_021587FC: ; jump table
	b _02158858 ; case 0
	b _02158820 ; case 1
	b _02158848 ; case 2
	b _0215882C ; case 3
	b _02158824 ; case 4
	b _0215884C ; case 5
	b _02158830 ; case 6
	b _02158840 ; case 7
	b _02158828 ; case 8
_02158820:
	b _02158858
_02158824:
	b _0215884C
_02158828:
	b _0215884C
_0215882C:
	b _02158830
_02158830:
	mov r1, #2
	cmp r0, #0
	moveq r1, #3
	b _02158858
_02158840:
	mov r1, #2
	b _02158858
_02158848:
	b _0215884C
_0215884C:
	mov r1, #1
	cmp r0, #0
	moveq r1, #2
_02158858:
	mov r0, r1
	ldmfd sp!, {r3, r4, r5, pc}
_02158860: .word unk_0209BA20
	arm_func_end FUN_ov132_021587d0

	arm_func_start FUN_ov132_02158864
FUN_ov132_02158864: ; 0x02158864
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r6, r0
	mov r4, r2
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x84]
	ldr r2, _021588D4 ; =0x0209A2C0
	bl FUN_01ffba50
	cmp r4, #0
	strne r0, [r4]
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_021587d0
	mov r3, r0
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, #0x80000000
	str r4, [sp]
	bl FUN_ov132_02156d48
	cmp r0, #0
	moveq r0, r4
	movne r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021588D4: .word unk_0209A2C0
	arm_func_end FUN_ov132_02158864

	arm_func_start FUN_ov132_021588d8
FUN_ov132_021588d8: ; 0x021588D8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	movs r6, r1
	mov r7, r0
	mov r5, r2
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_ov132_021587d0
	mov r4, r0
	mov r0, r6
	bl FUN_ov16_020f07d0
	ldr r2, [r6, #0x84]
	ldr r1, _021589A0 ; =0x0209A2C0
	mov r3, r0
	ldr r2, [r2, #4]
	ldr r1, [r1, #4]
	mov r0, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	mov r0, r7
	mov r2, #0x80000000
	mov r1, r6
	mov r3, r4
	str r5, [sp]
	beq _02158958
	bl FUN_ov132_02156d48
	cmp r0, #0
	beq _0215896C
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02158958:
	bl FUN_ov132_02156d48
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, pc}
_0215896C:
	mov r4, #0
	str r4, [sp]
	mov r2, #0x2b
	mov r0, r7
	mov r1, r6
	str r4, [sp, #4]
	mov r12, #5
	sub r3, r2, #0x2c
	str r12, [sp, #8]
	bl FUN_ov132_0213dfd4
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_021589A0: .word unk_0209A2C0
	arm_func_end FUN_ov132_021588d8

	arm_func_start FUN_ov132_021589a4
FUN_ov132_021589a4: ; 0x021589A4
	ldr r2, _021589B8 ; =0x02160448
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
_021589B8: .word ov132_02160448
	arm_func_end FUN_ov132_021589a4

	arm_func_start FUN_ov132_021589bc
FUN_ov132_021589bc: ; 0x021589BC
	bx lr
	arm_func_end FUN_ov132_021589bc

	arm_func_start FUN_ov132_021589c0
FUN_ov132_021589c0: ; 0x021589C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_021589c0

	arm_func_start FUN_ov132_021589d4
FUN_ov132_021589d4: ; 0x021589D4
	stmib r0, {r1, r2}
	bx lr
	arm_func_end FUN_ov132_021589d4

	arm_func_start FUN_ov132_021589dc
FUN_ov132_021589dc: ; 0x021589DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, _02158BA8 ; =0x0209A720
	mov r5, r1
	mov r10, r2
	mov r9, r3
	mov r11, #1
	bl FUN_ov126_0212afb4
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r4, #4]
	ldr r2, [r10]
	ldr r1, [r4, #0xe0]
	ldr r0, [r4, #0xe8]
	ldr r3, [r9]
	sub r0, r0, r1
	add r0, r1, r0, asr #1
	str r2, [sp]
	cmp r0, r3
	mov r7, #0x4000
	ldr r2, [r4, #0xdc]
	ldr r1, [r4, #0xe4]
	ldr r0, [sp]
	sub r1, r1, r2
	add r1, r2, r1, asr #1
	movlt r7, #0xc000
	cmp r1, r0
	mov r8, #0
	ldr r0, _02158BA8 ; =0x0209A720
	mov r1, #0
	str r3, [sp, #4]
	ldrh r5, [r5, #0x52]
	mov r6, #0
	movlt r8, #0x8000
	bl FUN_ov126_0212afc8
	cmp r0, #0
	beq _02158A9C
	ldr r0, [sp]
	ldr r1, [r4, #0xdc]
	cmp r0, r1
	bgt _02158A9C
	sub r0, r1, r0
	add r0, r1, r0
	add r2, r0, #0x800
	b _02158ACC
_02158A9C:
	ldr r0, _02158BA8 ; =0x0209A720
	mov r1, #2
	bl FUN_ov126_0212afc8
	cmp r0, #0
	beq _02158AE4
	ldr r0, [sp]
	ldr r1, [r4, #0xe4]
	cmp r0, r1
	blt _02158AE4
	sub r0, r0, r1
	add r0, r1, r0
	sub r2, r0, #0x800
_02158ACC:
	mov r0, r5
	mov r1, r7
	str r2, [sp]
	mov r6, #1
	bl FUN_02040430
	mov r5, r0
_02158AE4:
	ldr r0, _02158BA8 ; =0x0209A720
	mov r1, r11
	bl FUN_ov126_0212afc8
	cmp r0, #0
	beq _02158B28
	ldr r0, [sp, #4]
	ldr r1, [r4, #0xe0]
	cmp r0, r1
	bgt _02158B28
	sub r0, r1, r0
	add r0, r1, r0
	add r2, r0, #0x800
	mov r0, r5
	mov r1, r8
	mov r6, r11
	str r2, [sp, #4]
	b _02158B68
_02158B28:
	ldr r0, _02158BA8 ; =0x0209A720
	mov r1, #3
	bl FUN_ov126_0212afc8
	cmp r0, #0
	beq _02158B70
	ldr r0, [sp, #4]
	ldr r1, [r4, #0xe8]
	cmp r0, r1
	blt _02158B70
	sub r0, r0, r1
	add r0, r1, r0
	sub r2, r0, #0x800
	mov r0, r5
	mov r1, r8
	str r2, [sp, #4]
	mov r6, #1
_02158B68:
	bl FUN_02040430
	mov r5, r0
_02158B70:
	cmp r6, #1
	bne _02158B94
	ldr r0, [sp, #0x30]
	ldr r1, [sp]
	cmp r0, #0
	strneh r5, [r0]
	ldr r0, [sp, #4]
	str r1, [r10]
	str r0, [r9]
_02158B94:
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02158BA8: .word unk_0209A720
	arm_func_end FUN_ov132_021589dc

	arm_func_start FUN_ov132_02158bac
FUN_ov132_02158bac: ; 0x02158BAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r0, r2
	mov r9, r3
	ldr r5, [r0]
	ldr r0, [r9]
	ldr r8, [sp, #0x50]
	str r0, [sp, #0xc]
	mov r0, r1
	ldrh r0, [r0, #0x52]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x10]
	cmp r8, #0
	str r0, [sp, #8]
	ldrne r0, [sp, #8]
	ldr r7, [sp, #0x54]
	strneh r0, [r8]
	mov r0, r7
	ldr r11, [r1]
	str r2, [sp]
	mov r6, #0
	bl FUN_02040170
	movs r4, r0
	addeq sp, sp, #0x2c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #0
	add r0, sp, #0x14
	mov r2, #8
	bl MI_CpuFill8
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #31
	add r1, r1, r0, ror #31
	add r2, r7, #1
	mov r3, #0x4800
	add r0, sp, #0x14
	str r3, [r0, r1, lsl #2]
	mov r1, r2, lsr #0x1f
	rsb r0, r1, r2, lsl #31
	add r1, r1, r0, ror #31
	mov r2, #0x800
	add r0, sp, #0x14
	str r2, [r0, r1, lsl #2]
	ldr r0, [r4, #8]
	ldr r1, [r4]
	add r12, r0, #0x800
	cmp r7, #0
	sub r3, r1, #0x800
	ldreq r0, [sp, #0x14]
	sub lr, r3, #0x4000
	rsbeq r1, r0, #0
	ldrne r1, [sp, #0x14]
	ldr r0, [r4, #4]
	cmp r7, #0
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldreq r0, [sp, #0x18]
	ldr r1, [r4, #0xc]
	rsbeq r0, r0, #0
	streq r0, [sp, #4]
	ldrne r0, [sp, #0x18]
	add r10, r12, #0x4000
	strne r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r11, r3
	add r0, r1, r0
	mov r2, #0
	str r0, [sp, #0x18]
	blt _02158CEC
	cmp r5, r3
	bgt _02158CEC
	mov r1, r3, lsl #1
	ldr r2, [sp, #0x14]
	str r0, [sp, #0x28]
	add r0, r1, #0x800
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r3, [sp, #0x24]
_02158CE4:
	sub r5, r0, r5
	b _02158D94
_02158CEC:
	cmp r11, r10
	blt _02158D24
	cmp r5, r10
	bgt _02158D24
	mov r0, r10, lsl #1
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r1, [sp, #0x20]
	add r1, r0, #0x800
	mov r0, #0
	str r2, [sp, #0x28]
	str r10, [sp, #0x1c]
	str r10, [sp, #0x24]
	b _02158D8C
_02158D24:
	cmp r11, r12
	bgt _02158D58
	cmp r5, r12
	blt _02158D58
	mov r0, r12, lsl #1
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x20]
	sub r0, r0, #0x800
	str r12, [sp, #0x1c]
	str r12, [sp, #0x24]
	str r1, [sp, #0x28]
	b _02158CE4
_02158D58:
	cmp r11, lr
	bgt _02158D98
	cmp r5, lr
	blt _02158D98
	mov r0, lr, lsl #1
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r1, [sp, #0x20]
	sub r1, r0, #0x800
	mov r0, #0
	str r2, [sp, #0x28]
	str lr, [sp, #0x1c]
	str lr, [sp, #0x24]
_02158D8C:
	strb r0, [sp, #0x58]
	sub r5, r1, r5
_02158D94:
	mov r2, #1
_02158D98:
	cmp r2, #0
	beq _02158DEC
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldrh r2, [r0, #0x52]
	ldr r0, [r0]
	ldr r1, [r1, #4]
	add r3, sp, #0x1c
	bl FUN_020404dc
	cmp r0, #0
	beq _02158DEC
	ldr r0, [sp, #8]
	mov r1, #0x4000
	bl FUN_02040430
	cmp r8, #0
	strneh r0, [r8]
	ldr r0, [sp]
	orr r6, r6, #1
	str r5, [r0]
	ldr r0, [sp, #0xc]
	str r0, [r9]
_02158DEC:
	ldrb r0, [sp, #0x58]
	cmp r0, #0
	beq _02158E44
	cmp r7, #0
	beq _02158E28
	cmp r7, #1
	bne _02158E28
	ldr r1, [r4, #4]
	ldr r0, [r9]
	add r1, r1, #0x4000
	cmp r0, r1
	addlt r0, r1, #1
	strlt r0, [r9]
	orrlt r6, r6, #2
	b _02158E44
_02158E28:
	ldr r1, [r4, #0xc]
	ldr r0, [r9]
	sub r1, r1, #0x4000
	cmp r0, r1
	subgt r0, r1, #1
	strgt r0, [r9]
	orrgt r6, r6, #2
_02158E44:
	mov r0, r6
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_02158bac

	arm_func_start FUN_ov132_02158e50
FUN_ov132_02158e50: ; 0x02158E50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r8, r1
	ldrb r0, [r8, #0x5b]
	mov r7, r2
	mov r6, r3
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, [r8, #0x10]
	ldr lr, [r8, #0xc]
	ldmia r8, {r4, r12}
	ldr r3, [r8, #0x1c]
	ldr r2, [r8, #0x18]
	ldr r1, [r8, #0x48]
	mov r5, #0
	str r4, [sp, #8]
	mov r0, r5
	str lr, [sp, #0x10]
	str r9, [sp, #0x14]
	str r12, [sp, #0xc]
	str r2, [sp]
	str r3, [sp, #4]
	cmp r1, #0
	ldr r4, _021590C8 ; =0x0209A7FC
	bge _02158ED4
	ldrb r1, [r8, #0x5a]
	cmp r1, #0
	moveq r0, #1
_02158ED4:
	cmp r0, #0
	beq _02158EEC
	add r0, sp, #0
	bl FUN_02040a80
	cmp r0, #0
	moveq r5, #1
_02158EEC:
	ldr r0, [sp, #8]
	cmp r5, #0
	movne r5, #1
	ldr r1, [sp, #0xc]
	moveq r5, #0
	bl FUN_02040644
	cmp r0, #0
	bne _02159094
	ldrb r0, [r8, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02159058
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl FUN_02040644
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0
	bne _02159058
	ldr r0, [sp, #0x10]
	ldr r1, [r4]
	cmp r0, r1
	ldrlt r0, [sp, #8]
	cmplt r0, r1
	bge _02158F8C
	cmp r5, #0
	beq _02158F80
	ldr r0, [sp]
	cmp r0, r1
	bge _02158FD0
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02158F80:
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02158F8C:
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #8]
	cmp r0, r1
	ldrgt r0, [sp, #8]
	cmpgt r0, r1
	ble _02158FD0
	cmp r5, #0
	beq _02158FC4
	ldr r0, [sp]
	cmp r0, r1
	ble _02158FD0
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02158FC4:
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02158FD0:
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #4]
	cmp r0, r1
	ldrlt r0, [sp, #0xc]
	cmplt r0, r1
	bge _02159014
	cmp r5, #0
	beq _02159008
	ldr r0, [sp, #4]
	cmp r0, r1
	bge _02159058
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02159008:
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02159014:
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #0xc]
	cmp r0, r1
	ldrgt r0, [sp, #0xc]
	cmpgt r0, r1
	ble _02159058
	cmp r5, #0
	beq _0215904C
	ldr r0, [sp, #4]
	cmp r0, r1
	ble _02159058
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0215904C:
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02159058:
	ldrb r0, [r8, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02159088
	ldr r0, [r8, #0x48]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	beq _021590BC
_02159088:
	add sp, sp, #0x18
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02159094:
	cmp r6, #0
	beq _021590BC
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r8, #8]
	bl FUN_02040840
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021590BC:
	mov r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021590C8: .word unk_0209A7FC
	arm_func_end FUN_ov132_02158e50

	arm_func_start FUN_ov132_021590cc
FUN_ov132_021590cc: ; 0x021590CC
	ldr r3, [r0, #4]
	ldr r2, [r1]
	ldr r0, [r3, #0xdc]
	sub r0, r0, #0x20000
	cmp r2, r0
	strlt r0, [r1]
	blt _021590F8
	ldr r0, [r3, #0xe4]
	add r0, r0, #0x20000
	cmp r2, r0
	strgt r0, [r1]
_021590F8:
	ldr r0, [r3, #0xe0]
	ldr r2, [r1, #4]
	sub r0, r0, #0x3a000
	cmp r2, r0
	strlt r0, [r1, #4]
	bxlt lr
	ldr r0, [r3, #0xe8]
	add r0, r0, #0x3a000
	cmp r2, r0
	strgt r0, [r1, #4]
	bx lr
	arm_func_end FUN_ov132_021590cc

	arm_func_start FUN_ov132_02159124
FUN_ov132_02159124: ; 0x02159124
	ldr r2, [r0, #8]
	ldr r0, [r1, #0x38]
	smull r1, r0, r2, r0
	adds r2, r1, #0x800
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	bx lr
	arm_func_end FUN_ov132_02159124

	arm_func_start FUN_ov132_02159144
FUN_ov132_02159144: ; 0x02159144
	ldr r2, [r1, #0x44]
	ldr r0, [r0, #8]
	add r0, r2, r0
	str r0, [r1, #0x44]
	bx lr
	arm_func_end FUN_ov132_02159144

	arm_func_start FUN_ov132_02159158
FUN_ov132_02159158: ; 0x02159158
	ldr r2, [r1, #0x44]
	ldr r0, [r0, #8]
	sub r0, r2, r0
	str r0, [r1, #0x44]
	bx lr
	arm_func_end FUN_ov132_02159158

	arm_func_start FUN_ov132_0215916c
FUN_ov132_0215916c: ; 0x0215916C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r1
	ldr r6, [r8, #0x44]
	ldr r4, [r8, #0x3c]
	smull r5, r1, r6, r6
	smull r7, r6, r4, r6
	adds r7, r7, #0x800
	adc r4, r6, #0
	adds r5, r5, #0x800
	ldr r6, _0215925C ; =0x02099EF0
	mov r9, r0
	mov lr, r7, lsr #0xc
	ldr r0, [r6]
	mov r7, r2
	ldr r2, [r9, #4]
	mov r6, r3
	adc r3, r1, #0
	mov r1, r5, lsr #0xc
	orr r1, r1, r3, lsl #20
	ldr r11, _02159260 ; =0x00004E66
	ldr r5, [r0, #0x288]
	orr lr, lr, r4, lsl #20
	add r2, r2, #0xec
	ldr r4, [r8, #0x30]
	ldr r10, [r8, #0x40]
	mov r0, r1, asr #0x1f
	umull r12, r3, r1, r11
	mla r3, r0, r11, r3
	adds r1, r12, #0x800
	adc r0, r3, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, lr, r1
	add r0, r10, r0
	str r0, [r8, #0x30]
	mov r0, r7
	mov r1, r6
	bl FUN_02040ae4
	cmp r0, #0
	bne _02159228
	ldr r2, [r9, #4]
	mov r0, r7
	mov r1, r6
	add r2, r2, #0xfc
	bl FUN_02040ae4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02159228:
	cmp r4, r5
	bgt _02159240
	ldr r0, [r8, #0x30]
	cmp r0, r5
	subgt r0, r5, #1
	strgt r0, [r8, #0x30]
_02159240:
	cmp r4, r5
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r8, #0x30]
	cmp r0, r5
	addlt r0, r5, #1
	strlt r0, [r8, #0x30]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215925C: .word unk_02099EF0
_02159260: .word 0x00004E66
	arm_func_end FUN_ov132_0215916c

	arm_func_start FUN_ov132_02159264
FUN_ov132_02159264: ; 0x02159264
	ldrh r2, [r1, #0x56]
	ldr r0, [r1, #0x38]
	add r0, r2, r0, asr #5
	strh r0, [r1, #0x56]
	bx lr
	arm_func_end FUN_ov132_02159264

	arm_func_start FUN_ov132_02159278
FUN_ov132_02159278: ; 0x02159278
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	ldr r0, [r7, #0x30]
	mov r6, r2
	mov r5, r3
	mov r4, #0
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7, #0x5a]
	cmp r0, #0
	beq _021592B0
	ldr r0, [r7, #0x3c]
	cmp r0, #0x5000
	blt _021592D4
_021592B0:
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	ldrneb r0, [r7, #0x5a]
	cmpne r0, #2
	ldrne r0, [sp, #0x18]
	cmpne r0, #5
	beq _021592D4
	mov r0, #1
	bl FUN_ov16_020f05c8
_021592D4:
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	ldrneb r0, [r7, #0x5a]
	cmpne r0, #2
	beq _02159310
	ldr r0, _021594AC ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3cd0
	ldr r0, _021594B0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02159310
	mov r0, r7
	mov r1, #1
	bl FUN_ov126_0212fbcc
_02159310:
	ldrb r0, [r7, #0x5a]
	str r6, [r7, #0x20]
	str r5, [r7, #0x24]
	cmp r0, #2
	beq _021593CC
	ldr r1, [r7, #0x38]
	ldr r0, _021594B4 ; =0x00000CCD
	umull r3, r2, r1, r0
	mla r2, r1, r4, r2
	mov r1, r1, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	ldr r1, [r7, #0x40]
	adc r2, r2, r4
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	cmp r1, #0
	mov r1, #0x800
	str r3, [r7, #0x38]
	ldrle r1, [r7, #0x3c]
	ble _02159394
	ldr r2, [r7, #0x44]
	add r0, r0, #0x9000
	umull r5, r3, r2, r0
	mla r3, r2, r4, r3
	mov r2, r2, asr #0x1f
	mla r3, r2, r0, r3
	adds r5, r5, r1
	adc r1, r3, r4
	mov r2, r5, lsr #0xc
	ldr r0, [r7, #0x3c]
	orr r2, r2, r1, lsl #20
	sub r1, r2, r0
_02159394:
	ldr r0, _021594B8 ; =0x00000B33
	umull r3, r2, r1, r0
	mla r2, r1, r4, r2
	mov r1, r1, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	adc r1, r2, r4
	mov r0, r3, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr r1, [r7, #0x38]
	str r0, [r7, #0x3c]
	bl FX_Atan2Idx
	strh r0, [r7, #0x50]
	b _021593E4
_021593CC:
	ldr r0, [r7, #0x38]
	cmp r0, #0
	ble _021593E4
	subs r0, r0, #0x800
	str r0, [r7, #0x38]
	strmi r4, [r7, #0x38]
_021593E4:
	ldrb r0, [r7, #0x5a]
	cmp r0, #0
	ldrne r0, [r7, #0x3c]
	ldrne r5, _021594B4 ; =0x00000CCD
	cmpne r0, r5
	mov r0, r7
	bge _02159478
	mov r1, #2
	str r4, [r7, #0x3c]
	bl FUN_ov126_0212fce8
	ldr r0, [r7, #0x38]
	cmp r0, r5
	bge _02159480
	ldr r5, [r7]
	mov r6, #0x80000000
	ldr r3, [r7, #4]
	ldr r2, [r7, #8]
	mov r0, r7
	mov r1, #1
	str r6, [r7, #0x18]
	str r6, [r7, #0x1c]
	str r5, [r7, #0xc]
	str r3, [r7, #0x10]
	str r2, [r7, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r7
	mov r1, r4
	bl FUN_ov126_0212fc1c
	str r4, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x40]
	strb r4, [r7, #0x5c]
	strh r4, [r7, #0x54]
	strb r4, [r7, #0x58]
	b _02159480
_02159478:
	mov r1, #1
	bl FUN_ov126_0212fce8
_02159480:
	mov r0, r7
	mov r1, r4
	str r4, [r7, #0x44]
	str r4, [r7, #0x40]
	str r4, [r7, #0x30]
	strh r4, [r7, #0x54]
	bl FUN_ov126_0212fc94
	ldrb r0, [r7, #0x5c]
	cmp r0, #1
	strneb r4, [r7, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021594AC: .word unk_02099F14
_021594B0: .word unk_020A0640
_021594B4: .word 0x00000CCD
_021594B8: .word 0x00000B33
	arm_func_end FUN_ov132_02159278

	arm_func_start FUN_ov132_021594bc
FUN_ov132_021594bc: ; 0x021594BC
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r12, [r1, #0x52]
	ldmib r1, {r4, lr}
	ldr r5, [r1]
	mov r12, r12, asr #8
	str r5, [r1, #0xc]
	str r4, [r1, #0x10]
	str lr, [r1, #0x14]
	strb r12, [r1, #0x5d]
	ldr r0, [sp, #0x10]
	stmia r1, {r2, r3}
	str r0, [r1, #8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_021594bc

	arm_func_start FUN_ov132_021594f0
FUN_ov132_021594f0: ; 0x021594F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x100
	mov r5, r0
	mov r8, r1
	mov r7, r2
	mov r9, #0
	bl FUN_ov132_02159df0
	mov r4, r0
	mov r0, #0x64
	bl FUN_ov16_020ef928
	mov r6, r0
	mov r0, r5
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _02159544
	ldrsb r0, [r4, #2]
	cmp r0, #0
	moveq r0, #1
	movne r0, r9
	cmp r8, r0
	moveq r6, #0x64
_02159544:
	ldrsb r0, [r4, #2]
	add r2, sp, #0x80
	mov r1, r8
	cmp r8, r0
	mov r0, r5
	mov r3, #1
	moveq r6, #0
	bl FUN_ov132_0215a168
	mov r5, r0
	cmp r5, #0
	ble _0215960C
	cmp r6, #0x32
	bhs _0215960C
	mov r0, #0
	mov r6, r0
	cmp r5, #0
	ble _021595B0
	add r2, sp, #0
_0215958C:
	sub r3, r5, r6
	mov r1, r6, lsl #1
	add r3, r3, r3, lsl #2
	strh r3, [r2, r1]
	ldrh r1, [r2, r1]
	add r6, r6, #1
	cmp r6, r5
	add r0, r0, r1
	blt _0215958C
_021595B0:
	bl FUN_ov16_020ef928
	cmp r5, #0
	mov r6, #0
	ble _021595F0
	add r2, sp, #0
_021595C4:
	mov r3, r6, lsl #1
	ldrh r1, [r2, r3]
	sub r0, r0, r1
	cmp r0, #0
	addle r0, sp, #0x80
	ldrleh r0, [r0, r3]
	strle r0, [r7]
	ble _021595F0
	add r6, r6, #1
	cmp r6, r5
	blt _021595C4
_021595F0:
	mov r0, #1
	ldrb r1, [r4, #4]
	mvn r0, r0, lsl r8
	and r0, r1, r0
	add sp, sp, #0x100
	strb r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0215960C:
	ldrb r1, [r4, #4]
	mov r0, #1
	orr r0, r1, r0, lsl r8
	strb r0, [r4, #4]
	str r9, [r7]
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov132_021594f0

	arm_func_start FUN_ov132_02159628
FUN_ov132_02159628: ; 0x02159628
	ldrb r1, [r1]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_02159638: ; jump table
	bx lr ; case 0
	b _0215964C ; case 1
	b _02159654 ; case 2
	b _0215965C ; case 3
	b _02159664 ; case 4
_0215964C:
	mov r0, #0x19
	bx lr
_02159654:
	mov r0, #0x19
	bx lr
_0215965C:
	mov r0, #0x1b
	bx lr
_02159664:
	mov r0, #9
	bx lr
	arm_func_end FUN_ov132_02159628

	arm_func_start FUN_ov132_0215966c
FUN_ov132_0215966c: ; 0x0215966C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	str r1, [sp, #0x10]
	ldrsb r1, [r1]
	mov r6, #0
	add r2, sp, #0x1c
	ldr r5, _021597C8 ; =0x0209BA20
	mov r10, r0
	mov r0, r5
	str r6, [r2]
	str r6, [r2, #4]
	mov r4, r6
	bl FUN_0204b0ac
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldrsb r1, [r0, #1]
	mov r0, r5
	bl FUN_0204b0ac
	str r0, [sp, #0x14]
_021596B8:
	cmp r6, #0
	ldreq r0, [sp, #0x10]
	ldreqsb r8, [r0, #2]
	beq _021596DC
	ldr r0, [sp, #0x10]
	mov r8, #1
	ldrsb r0, [r0, #2]
	cmp r0, #0
	movne r8, #0
_021596DC:
	cmp r6, #0
	ldreq r9, [sp, #0x18]
	ldrne r9, [sp, #0x14]
	cmp r9, #0
	beq _02159774
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldrb r0, [r0, #4]
	tst r0, r1, lsl r8
	moveq r1, #0
	cmp r1, #0
	bne _02159774
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02159628
	mov r5, r0
	mov r7, #0
	add r11, sp, #0x1c
_02159724:
	mov r0, r10
	mov r1, r8
	mov r2, r7
	bl FUN_ov126_0213938c
	movs r1, r0
	beq _02159768
	str r4, [sp]
	mov r0, #2
	stmib sp, {r0, r4}
	mov r0, r10
	mov r2, r4
	mov r3, r5
	str r9, [sp, #0xc]
	bl FUN_ov132_021417d8
	ldr r1, [r11, r6, lsl #2]
	add r0, r1, r0
	str r0, [r11, r6, lsl #2]
_02159768:
	add r7, r7, #1
	cmp r7, #0xb
	blt _02159724
_02159774:
	add r6, r6, #1
	cmp r6, #2
	blt _021596B8
	ldr r5, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	ldr r4, [sp, #0x20]
	mov r1, r5
	bl FUN_ov132_0215a530
	ldr r0, [sp, #0x10]
	mov r1, r4
	bl FUN_ov132_0215a568
	cmp r5, r4
	ldrlt r0, [sp, #0x10]
	movlt r1, #2
	ldrge r0, [sp, #0x10]
	movge r1, #1
	strb r1, [r0, #3]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #3]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021597C8: .word unk_0209BA20
	arm_func_end FUN_ov132_0215966c

	arm_func_start FUN_ov132_021597cc
FUN_ov132_021597cc: ; 0x021597CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_ov132_02159df0
	mov r4, r0
	mov r0, r8
	ldrsb r5, [r4, #2]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _0215980C
	cmp r5, #0
	streqb r7, [r4]
	streqb r6, [r4, #1]
	strneb r6, [r4]
	strneb r7, [r4, #1]
_0215980C:
	mov r0, r8
	bl FUN_ov132_021434f8
	mov r0, r8
	mov r1, r4
	bl FUN_ov132_0215966c
	mov r4, r0
	sub r0, r4, #1
	cmp r0, #1
	bhi _02159838
	mov r0, r8
	bl FUN_ov132_021598d8
_02159838:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_021597cc

	arm_func_start FUN_ov132_02159840
FUN_ov132_02159840: ; 0x02159840
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	mov r1, r6
	bl FUN_ov132_021447d0
	ldr r4, _021598D0 ; =0x02099F14
	ldr r0, [r4]
	bl FUN_ov1_020e39b8
	ldr r0, [r4]
	bl FUN_ov1_020e4968
	ldr r4, _021598D4 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_02159df0
	mov r1, #3
	mov r5, r0
	bl FUN_ov132_0215a494
	cmp r0, #0
	beq _02159898
	ldrsb r1, [r5, #2]
	ldr r0, [r4]
	mov r2, #0xf
	bl FUN_ov132_02159a5c
	ldmfd sp!, {r4, r5, r6, pc}
_02159898:
	mov r0, r5
	mov r1, #4
	bl FUN_ov132_0215a494
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsb r0, [r5, #2]
	mov r2, #0xf
	cmp r0, #0
	ldr r0, _021598D4 ; =0x02099EF0
	moveq r6, #1
	ldr r0, [r0]
	mov r1, r6
	bl FUN_ov132_02159a5c
	ldmfd sp!, {r4, r5, r6, pc}
_021598D0: .word unk_02099F14
_021598D4: .word unk_02099EF0
	arm_func_end FUN_ov132_02159840

	arm_func_start FUN_ov132_021598d8
FUN_ov132_021598d8: ; 0x021598D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	add r8, r9, #0x214
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, #0
	mov r5, r7
	mov r6, #1
	mov r4, r7
	mov r10, #0x100
_02159904:
	mov r0, r9
	mov r1, r7
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0215994C
	ldr r1, [r0, #0x88]
	ldrh r1, [r1, #0x1e]
	strh r1, [r8, #2]
	ldr r1, [r0, #0x84]
	ldrh r1, [r1, #0x16]
	tst r1, #0x100
	movne r1, r6
	moveq r1, r5
	strb r1, [r8]
	ldr r2, [r0, #0x88]
	mov r1, r10
	strh r4, [r2, #0x1e]
	bl FUN_0206dadc
_0215994C:
	add r7, r7, #1
	cmp r7, #0x16
	add r8, r8, #4
	blt _02159904
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov132_021598d8

	arm_func_start FUN_ov132_02159960
FUN_ov132_02159960: ; 0x02159960
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	add r5, r6, #0x214
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	mov r8, #0x100
	ldr r7, _021599F4 ; =0x0209A2C0
	b _021599D8
_02159988:
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r2, [r0, #0x94]
	ldrne r1, [r7, #0x48]
	cmpne r2, r1
	beq _021599D0
	ldr r3, [r0, #0x88]
	ldrh r1, [r5, #2]
	ldrh r2, [r3, #0x1e]
	add r1, r1, r2
	strh r1, [r3, #0x1e]
	ldrb r1, [r5]
	cmp r1, #0
	beq _021599D0
	mov r1, r8
	bl FUN_0206dac4
_021599D0:
	add r4, r4, #1
	add r5, r5, #4
_021599D8:
	cmp r4, #0x16
	blt _02159988
	add r0, r6, #0x214
	mov r1, #0
	mov r2, #0x58
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021599F4: .word unk_0209A2C0
	arm_func_end FUN_ov132_02159960

	arm_func_start FUN_ov132_021599f8
FUN_ov132_021599f8: ; 0x021599F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	mov r5, r0
	mov r4, r1
	mov r6, r8
	mov r7, #1
_02159A10:
	mov r0, r5
	mov r1, r4
	mov r2, r8
	bl FUN_ov126_0213938c
	cmp r0, #0
	beq _02159A48
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x100
	movne r0, r7
	moveq r0, r6
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_02159A48:
	add r8, r8, #1
	cmp r8, #0xb
	blt _02159A10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_021599f8

	arm_func_start FUN_ov132_02159a5c
FUN_ov132_02159a5c: ; 0x02159A5C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, #0
_02159A70:
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov126_0213938c
	movs r1, r0
	beq _02159A94
	mov r0, r7
	mov r2, r5
	bl FUN_ov132_0213c3f8
_02159A94:
	add r4, r4, #1
	cmp r4, #0xb
	blt _02159A70
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_02159a5c

	arm_func_start FUN_ov132_02159aa4
FUN_ov132_02159aa4: ; 0x02159AA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r2
	mov r7, r1
	mov r4, #1
	beq _02159AF4
	mov r5, #0
	bl FUN_ov16_020f0a4c
	cmp r7, r0
	bne _02159AEC
	sub r0, r6, #2
	mov r1, r5
	cmp r0, #5
	bhi _02159AE4
	mov r0, r4, lsl r0
	tst r0, #0x23
	movne r1, r4
_02159AE4:
	cmp r1, #0
	movne r5, #1
_02159AEC:
	cmp r5, #0
	moveq r4, #0
_02159AF4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_02159aa4

	arm_func_start FUN_ov132_02159afc
FUN_ov132_02159afc: ; 0x02159AFC
	stmfd sp!, {r3, lr}
	bl FUN_ov132_02144780
	sub r2, r0, #2
	cmp r2, #5
	mov r0, #0
	ldmhifd sp!, {r3, pc}
	mov r1, #1
	mov r2, r1, lsl r2
	tst r2, #0x23
	movne r0, r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov132_02159afc

	arm_func_start FUN_ov132_02159b28
FUN_ov132_02159b28: ; 0x02159B28
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, #0
	bl FUN_01ff9578
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov132_02144f4c
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #1
	bl FUN_ov132_02159fd8
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _02159BFC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144780
	mov r2, r0
	mov r0, r4
	mov r1, r6
	bl FUN_ov132_02159aa4
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _02159C00 ; =0x020A0640
	ldrb r2, [r0, #0x8f]
	ldr r1, [r0]
	cmp r2, #1
	bne _02159BC4
	ldr r0, _02159C04 ; =0x00002328
	cmp r1, r0
	movlo r0, r5
	ldmlofd sp!, {r4, r5, r6, pc}
_02159BC4:
	ldr r1, [r4, #0x4c0]
	ldr r0, _02159C08 ; =0x51EB851F
	add r3, r1, #1
	umull r0, r1, r3, r0
	mov r1, r1, lsr #5
	mov r2, #0x64
	umull r0, r1, r2, r1
	subs r1, r3, r0
	str r3, [r4, #0x4c0]
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov132_02159c0c
	ldmfd sp!, {r4, r5, r6, pc}
_02159BFC: .word unk_02099EF0
_02159C00: .word unk_020A0640
_02159C04: .word 0x00002328
_02159C08: .word 0x51EB851F
	arm_func_end FUN_ov132_02159b28

	arm_func_start FUN_ov132_02159c0c
FUN_ov132_02159c0c: ; 0x02159C0C
	stmfd sp!, {r4, lr}
	bl FUN_ov16_020f081c
	mov r4, r0
	bl FUN_ov16_020f083c
	ldr r2, _02159C58 ; =0x020A06D8
	ldrb r1, [r2, r4]
	ldrb r0, [r2, r0]
	sub r0, r1, r0
	add r0, r0, r0, lsl #2
	adds r4, r0, #5
	movmi r4, #0
	cmp r4, #0x14
	mov r0, #0x64
	movgt r4, #0x14
	bl FUN_ov16_020ef928
	cmp r0, r4
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r4, pc}
_02159C58: .word unk_020A06D8
	arm_func_end FUN_ov132_02159c0c

	arm_func_start FUN_ov132_02159c5c
FUN_ov132_02159c5c: ; 0x02159C5C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	mov r6, r1
	mov r4, r2
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02159CA0
	mov r0, r5
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _02159CA0
	mov r0, r5
	mov r1, r6
	mov r2, #1
	bl FUN_ov132_02159fd8
	cmp r0, #0
	bne _02159CA8
_02159CA0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02159CA8:
	mov r0, r5
	bl FUN_ov132_02144780
	cmp r0, #7
	bne _02159CD0
	ldr r0, _02159D68 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	b _02159CD8
_02159CD0:
	add r0, r5, #0x300
	ldrsb r0, [r0, #0x34]
_02159CD8:
	bl FUN_ov16_020efa80
	mov r7, r0
	cmp r7, #0
	beq _02159CF8
	mov r0, r7
	bl FUN_0206d5f0
	cmp r6, r0
	beq _02159D00
_02159CF8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02159D00:
	mov r0, r5
	bl FUN_ov132_02159c0c
	cmp r0, #0
	beq _02159D60
	ldr r6, _02159D6C ; =0x0209A720
	mov r0, r7
	ldr r2, [r6, #0xec]
	ldr r1, [r6, #0xf4]
	add r1, r2, r1
	mov r8, r1, asr #1
	bl FUN_02040128
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl FUN_ov132_0213f5d4
	str r0, [r4, #4]
	str r8, [r4]
	ldr r2, [r6, #0xd8]
	mov r0, r5
	mov r1, r7
	bl FUN_01ffb9e4
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_02159D60:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02159D68: .word unk_0209A2C0
_02159D6C: .word unk_0209A720
	arm_func_end FUN_ov132_02159c5c

	arm_func_start FUN_ov132_02159d70
FUN_ov132_02159d70: ; 0x02159D70
	stmfd sp!, {r4, lr}
	ldr r1, _02159DE8 ; =0x020A0640
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	beq _02159DA0
	ldr r1, _02159DEC ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x1a5]
	ldreq r0, [r0, #0x20c]
	ldmeqfd sp!, {r4, pc}
_02159DA0:
	add r1, r0, #0x100
	ldrsb r2, [r1, #0xa5]
	add r2, r2, #1
	strb r2, [r0, #0x1a5]
	ldrsb r1, [r1, #0xa5]
	cmp r1, #4
	movge r1, #0
	strgeb r1, [r0, #0x1a5]
	add r1, r0, #0x100
	ldrsb r2, [r1, #0xa5]
	ldr r0, [r0, #0x20c]
	mov r1, #0
	add r4, r0, r2, lsl #3
	mov r0, r4
	mov r2, #8
	bl MI_CpuFill8
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02159DE8: .word unk_020A0640
_02159DEC: .word unk_0209AEC0
	arm_func_end FUN_ov132_02159d70

	arm_func_start FUN_ov132_02159df0
FUN_ov132_02159df0: ; 0x02159DF0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02159E58 ; =0x020A0640
	mov r5, r0
	ldrb r1, [r1, #0x1a]
	add r0, r5, #0x100
	ldrsb r4, [r0, #0xa5]
	cmp r1, #0
	beq _02159E24
	ldr r0, _02159E5C ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldreq r0, [r5, #0x20c]
	ldmeqfd sp!, {r3, r4, r5, pc}
_02159E24:
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _02159E44
	mov r0, r5
	bl FUN_ov132_02143058
	cmp r0, #0
	ldrnesb r4, [r0, #9]
_02159E44:
	cmp r4, #0
	movlt r0, #0
	ldrge r0, [r5, #0x20c]
	addge r0, r0, r4, lsl #3
	ldmfd sp!, {r3, r4, r5, pc}
_02159E58: .word unk_020A0640
_02159E5C: .word unk_0209AEC0
	arm_func_end FUN_ov132_02159df0

	arm_func_start FUN_ov132_02159e60
FUN_ov132_02159e60: ; 0x02159E60
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov132_02159afc
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r4, pc}
	ldr r0, _02159EA0 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, pc}
	bl FUN_ov16_020f07f4
	cmp r4, r0
	moveq r0, #2
	movne r0, #3
	ldmfd sp!, {r4, pc}
_02159EA0: .word unk_0209A2C0
	arm_func_end FUN_ov132_02159e60

	arm_func_start FUN_ov132_02159ea4
FUN_ov132_02159ea4: ; 0x02159EA4
	stmfd sp!, {r4, lr}
	mov r0, r1
	bl FUN_ov16_020f078c
	ldr r1, _02159F2C ; =0x0209A2C0
	mov r4, r0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _02159EE0
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _02159EE0
	bl FUN_0206d6d8
	cmp r0, #0
	movne r0, #0xa
	ldmnefd sp!, {r4, pc}
_02159EE0:
	cmp r4, #0
	bne _02159F08
	ldr r1, _02159F2C ; =0x0209A2C0
	ldr r0, _02159F30 ; =0x0209A720
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xd8]
	cmp r1, r0
	blt _02159F24
	mov r0, #2
	ldmfd sp!, {r4, pc}
_02159F08:
	ldr r1, _02159F2C ; =0x0209A2C0
	ldr r0, _02159F30 ; =0x0209A720
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xd8]
	cmp r1, r0
	movlt r0, #2
	ldmltfd sp!, {r4, pc}
_02159F24:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_02159F2C: .word unk_0209A2C0
_02159F30: .word unk_0209A720
	arm_func_end FUN_ov132_02159ea4

	arm_func_start FUN_ov132_02159f34
FUN_ov132_02159f34: ; 0x02159F34
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02159F88 ; =0x0209BA20
	mov r5, r2
	mov r4, r3
	bl FUN_0204b0ac
	ldrb r1, [r0]
	cmp r1, #1
	bne _02159F60
	cmp r5, #4
	cmpne r5, #0
	bne _02159F68
_02159F60:
	cmp r1, r5
	bne _02159F80
_02159F68:
	ldrb r0, [r0, #1]
	cmp r0, #1
	cmpne r1, #4
	cmpne r0, r4
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
_02159F80:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02159F88: .word unk_0209BA20
	arm_func_end FUN_ov132_02159f34

	arm_func_start FUN_ov132_02159f8c
FUN_ov132_02159f8c: ; 0x02159F8C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _02159FD4 ; =0x0209BA20
	mov r6, r2
	mov r0, r5
	bl FUN_0207249c
	mov r4, r0
	cmp r6, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r6
	bl FUN_0204b0ac
	ldrb r1, [r4, #0x43]
	ldrh r0, [r0, #4]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02159FD4: .word unk_0209BA20
	arm_func_end FUN_ov132_02159f8c

	arm_func_start FUN_ov132_02159fd8
FUN_ov132_02159fd8: ; 0x02159FD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	beq _0215A030
	ldr r0, _0215A090 ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x80
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021599f8
	cmp r0, #0
	addne sp, sp, #0x80
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0215A030:
	add r6, sp, #0
	mov r8, #0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r8
	bl FUN_ov132_0215a168
	mov r7, r0
	b _0215A07C
_0215A054:
	mov r0, r8, lsl #1
	ldrh r2, [r6, r0]
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02159f8c
	cmp r0, #0
	addne sp, sp, #0x80
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r8, r8, #1
_0215A07C:
	cmp r8, r7
	blt _0215A054
	mov r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215A090: .word unk_0209A2C0
	arm_func_end FUN_ov132_02159fd8

	arm_func_start FUN_ov132_0215a094
FUN_ov132_0215a094: ; 0x0215A094
	add r0, r0, #0xbe
	cmp r3, #0x40
	add r0, r0, #0x300
	add r0, r0, r1, lsl #7
	movgt r3, #0x40
	sub r1, r3, r2
	add r0, r0, r2, lsl #1
	mov r2, r1, lsl #1
	ldr r12, _0215A0C0 ; =MI_CpuFill8
	mov r1, #0
	bx r12
_0215A0C0: .word MI_CpuFill8
	arm_func_end FUN_ov132_0215a094

	arm_func_start FUN_ov132_0215a0c4
FUN_ov132_0215a0c4: ; 0x0215A0C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0xbe
	mov r4, r1
	add r1, r0, #0x300
	ldr r0, _0215A0F4 ; =0x0209BA20
	add r1, r1, r4, lsl #7
	mov r2, #1
	bl FUN_ov16_020ef430
	add r1, r5, r4
	strb r0, [r1, #0x3bb]
	ldmfd sp!, {r3, r4, r5, pc}
_0215A0F4: .word unk_0209BA20
	arm_func_end FUN_ov132_0215a0c4

	arm_func_start FUN_ov132_0215a0f8
FUN_ov132_0215a0f8: ; 0x0215A0F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0215A164 ; =0x0209BA20
	mov r4, r1
	bl FUN_020724ac
	mov r2, #0
	mov lr, r2
	add r3, r5, r4, lsl #7
_0215A118:
	ldrsh r12, [r0]
	add lr, lr, #1
	add r0, r0, #4
	cmp r12, #0
	addgt r1, r3, r2, lsl #1
	addgt r1, r1, #0x300
	strgth r12, [r1, #0xbe]
	addgt r2, r2, #1
	cmp lr, #0x40
	blt _0215A118
	add r0, r5, r4
	strb r2, [r0, #0x3bb]
	cmp r2, #0x40
	ldmgefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r3, #0x40
	bl FUN_ov132_0215a094
	ldmfd sp!, {r3, r4, r5, pc}
_0215A164: .word unk_0209BA20
	arm_func_end FUN_ov132_0215a0f8

	arm_func_start FUN_ov132_0215a168
FUN_ov132_0215a168: ; 0x0215A168
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, r1
	mov r8, r2
	str r3, [sp]
	bl FUN_ov132_02159e60
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02159ea4
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r10, #0xbe
	add r1, r1, #0x300
	add r2, r10, r9
	cmp r0, #4
	ldrb r0, [r2, #0x3bb]
	add r11, r1, r9, lsl #7
	mov r5, #0
	str r0, [sp, #4]
	bne _0215A1D4
	bl FUN_ov16_020f0a4c
	cmp r9, r0
	addne sp, sp, #0x10
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215A1D4:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	beq _0215A1F4
	ldr r0, [sp, #8]
	cmp r0, #0xa
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215A1F4:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #4]
	mov r7, #0
	cmp r0, #0
	cmpgt r0, #0
	ble _0215A2B4
	add r4, r10, r9, lsl #7
_0215A220:
	add r0, r4, r7, lsl #1
	add r0, r0, #0x300
	ldrh r6, [r0, #0xbe]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_02159f34
	cmp r0, #0
	beq _0215A2A0
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FUN_ov132_0215a3bc
	cmp r0, #0
	bne _0215A2A0
	ldr r0, [sp]
	cmp r0, #0
	beq _0215A284
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FUN_ov132_02159f8c
	cmp r0, #0
	beq _0215A2A0
_0215A284:
	cmp r8, #0
	addne r0, r4, r7, lsl #1
	addne r0, r0, #0x300
	ldrneh r1, [r0, #0xbe]
	movne r0, r5, lsl #1
	add r5, r5, #1
	strneh r1, [r8, r0]
_0215A2A0:
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	add r11, r11, #2
	blt _0215A220
_0215A2B4:
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov132_0215a168

	arm_func_start FUN_ov132_0215a2c0
FUN_ov132_0215a2c0: ; 0x0215A2C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	movs r5, r2
	mov r7, r0
	mov r6, r1
	bpl _0215A2EC
	bl FUN_ov132_0215a320
	movs r5, r0
	addmi sp, sp, #0x80
	movmi r0, #0
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
_0215A2EC:
	add r4, sp, #0
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl FUN_ov132_0215a168
	mov r0, r5, lsl #1
	ldrh r0, [r4, r0]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215a2c0

	arm_func_start FUN_ov132_0215a314
FUN_ov132_0215a314: ; 0x0215A314
	add r0, r0, r1
	strb r2, [r0, #0x3b9]
	bx lr
	arm_func_end FUN_ov132_0215a314

	arm_func_start FUN_ov132_0215a320
FUN_ov132_0215a320: ; 0x0215A320
	add r0, r0, r1
	add r0, r0, #0x300
	ldrsb r0, [r0, #0xb9]
	bx lr
	arm_func_end FUN_ov132_0215a320

	arm_func_start FUN_ov132_0215a330
FUN_ov132_0215a330: ; 0x0215A330
	stmfd sp!, {r3, r4, r5, lr}
	cmp r3, #0
	add r0, r0, #0xc4
	beq _0215A36C
	add r4, r0, #0x400
	ldr lr, [r4, r1, lsl #3]
	mov r0, #1
	add r5, r4, r1, lsl #3
	mov r3, r0, lsl r2
	ldr r12, [r5, #4]
	orr r0, lr, r0, lsl r2
	str r0, [r4, r1, lsl #3]
	orr r0, r12, r3, asr #31
	str r0, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0215A36C:
	add r12, r0, #0x400
	mov r0, #1
	add lr, r12, r1, lsl #3
	mvn r0, r0, lsl r2
	ldmia lr, {r2, r3}
	and r2, r2, r0
	str r2, [r12, r1, lsl #3]
	and r0, r3, r0, asr #31
	str r0, [lr, #4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov132_0215a330

	arm_func_start FUN_ov132_0215a394
FUN_ov132_0215a394: ; 0x0215A394
	cmp r2, #0
	add r0, r0, r1, lsl #3
	mvnne r2, #0
	strne r2, [r0, #0x4c4]
	movne r1, #0
	strne r1, [r0, #0x4c8]
	moveq r2, #0
	streq r2, [r0, #0x4c4]
	streq r2, [r0, #0x4c8]
	bx lr
	arm_func_end FUN_ov132_0215a394

	arm_func_start FUN_ov132_0215a3bc
FUN_ov132_0215a3bc: ; 0x0215A3BC
	add r1, r0, r1, lsl #3
	mov r0, #1
	ldr r12, [r1, #0x4c4]
	mov r3, r0, lsl r2
	ldr r1, [r1, #0x4c8]
	and r2, r12, r0, lsl r2
	and r1, r1, r3, asr #31
	cmp r1, #0
	mov r1, #0
	cmpeq r2, #0
	moveq r0, r1
	bx lr
	arm_func_end FUN_ov132_0215a3bc

	arm_func_start FUN_ov132_0215a3ec
FUN_ov132_0215a3ec: ; 0x0215A3EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #1
	mov r1, r5
	mov r6, r0
	bl FUN_ov132_0215a494
	cmp r0, #0
	ldrnesb r5, [r6, #2]
	bne _0215A438
	mov r4, #2
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_0215a494
	cmp r0, #0
	beq _0215A434
	ldrsb r0, [r6, #2]
	cmp r0, #0
	movne r5, #0
	b _0215A438
_0215A434:
	sub r5, r4, #3
_0215A438:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_0215a3ec

	arm_func_start FUN_ov132_0215a440
FUN_ov132_0215a440: ; 0x0215A440
	stmfd sp!, {r4, lr}
	mov r1, #1
	mov r4, r0
	bl FUN_ov132_0215a494
	cmp r0, #0
	ldrnesb r0, [r4]
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #2
	bl FUN_ov132_0215a494
	cmp r0, #0
	ldrnesb r0, [r4, #1]
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov132_0215a440

	arm_func_start FUN_ov132_0215a478
FUN_ov132_0215a478: ; 0x0215A478
	stmfd sp!, {r3, lr}
	bl FUN_ov132_0215a440
	mov r1, r0
	ldr r0, _0215A490 ; =0x0209BA20
	bl FUN_0204b0ac
	ldmfd sp!, {r3, pc}
_0215A490: .word unk_0209BA20
	arm_func_end FUN_ov132_0215a478

	arm_func_start FUN_ov132_0215a494
FUN_ov132_0215a494: ; 0x0215A494
	cmp r1, #4
	mov r2, #1
	addls pc, pc, r1, lsl #2
	b _0215A528
_0215A4A4: ; jump table
	b _0215A4E0 ; case 0
	b _0215A4B8 ; case 1
	b _0215A4CC ; case 2
	b _0215A500 ; case 3
	b _0215A514 ; case 4
_0215A4B8:
	ldrb r0, [r0, #3]
	cmp r0, #1
	moveq r0, r2
	movne r0, #0
	bx lr
_0215A4CC:
	ldrb r0, [r0, #3]
	cmp r0, #2
	moveq r0, r2
	movne r0, #0
	bx lr
_0215A4E0:
	ldrb r1, [r0, #3]
	mov r0, #0
	cmp r1, #4
	bxhi lr
	mov r1, r2, lsl r1
	tst r1, #0x19
	movne r0, r2
	bx lr
_0215A500:
	ldrb r0, [r0, #3]
	cmp r0, #3
	moveq r0, r2
	movne r0, #0
	bx lr
_0215A514:
	ldrb r0, [r0, #3]
	cmp r0, #4
	moveq r0, r2
	movne r0, #0
	bx lr
_0215A528:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov132_0215a494

	arm_func_start FUN_ov132_0215a530
FUN_ov132_0215a530: ; 0x0215A530
	ldr r2, _0215A564 ; =0x000003E7
	cmp r1, #1
	movlt r1, #1
	cmp r1, r2
	movgt r1, r2
	ldrb r2, [r0, #7]
	and r3, r1, #0x300
	mov r3, r3, asr #8
	and r2, r2, #0x3f
	orr r2, r2, r3, lsl #6
	strb r2, [r0, #7]
	strb r1, [r0, #5]
	bx lr
_0215A564: .word 0x000003E7
	arm_func_end FUN_ov132_0215a530

	arm_func_start FUN_ov132_0215a568
FUN_ov132_0215a568: ; 0x0215A568
	ldr r2, _0215A59C ; =0x000003E7
	cmp r1, #1
	movlt r1, #1
	cmp r1, r2
	movgt r1, r2
	ldrb r2, [r0, #7]
	and r3, r1, #0x300
	mov r3, r3, asr #8
	and r2, r2, #0xcf
	orr r2, r2, r3, lsl #4
	strb r2, [r0, #7]
	strb r1, [r0, #6]
	bx lr
_0215A59C: .word 0x000003E7
	arm_func_end FUN_ov132_0215a568

	arm_func_start FUN_ov132_0215a5a0
FUN_ov132_0215a5a0: ; 0x0215A5A0
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
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _0215A6A4 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	ldr r5, [sp]
	cmp r5, #1
	ldreq r3, [sp, #4]
	addeq r1, r0, r3
	ldreqsb r2, [r1, #4]
	ldrne r3, [sp, #4]
	addne r1, r0, r3
	ldrnesb r2, [r1, #7]
	ldrb r1, [r0, #0x11]
	ldrb r0, [r0, #0x10]
	cmp r0, r1
	bne _0215A630
	b _0215A654
_0215A630:
	bls _0215A648
	cmp r5, #2
	bne _0215A640
	b _0215A654
_0215A640:
	sub r0, r0, r1
	b _0215A664
_0215A648:
	bhs _0215A66C
	cmp r5, #1
	bne _0215A660
_0215A654:
	cmp r3, #0
	mvnne r2, #0
	b _0215A66C
_0215A660:
	sub r0, r1, r0
_0215A664:
	cmp r3, r0
	mvngt r2, #0
_0215A66C:
	cmp r2, #0
	movlt r0, #0
	blt _0215A690
	mov r0, r2
	bl FUN_ov16_020efa80
	cmp r0, #0
	moveq r0, #0
	beq _0215A690
	bl FUN_0206cbf8
_0215A690:
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215A6A4: .word unk_02099EF0
	arm_func_end FUN_ov132_0215a5a0

	arm_func_start FUN_ov132_0215a6a8
FUN_ov132_0215a6a8: ; 0x0215A6A8
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
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _0215A72C ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	cmp r4, #0
	beq _0215A720
	ldr r1, [sp]
	cmp r1, #1
	ldreqsh r0, [r0]
	ldrnesh r0, [r0, #2]
	str r0, [r4]
_0215A720:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215A72C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215a6a8

	arm_func_start FUN_ov132_0215a730
FUN_ov132_0215a730: ; 0x0215A730
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
	ldrsb r2, [r7, #0xb]
	mov r5, #1
	ldr r1, _0215A7D0 ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r7, #0xb]
	strb r5, [r7, #0xa]
	str r0, [r7, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	mov r1, r5
	mov r7, r0
	bl FUN_ov126_021327b8
	cmp r0, #0
	bne _0215A7BC
	mov r5, #2
	mov r0, r7
	mov r1, r5
	bl FUN_ov126_021327b8
	cmp r0, #0
	moveq r5, r4
_0215A7BC:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215A7D0: .word unk_02099EF0
	arm_func_end FUN_ov132_0215a730

	arm_func_start FUN_ov132_0215a7d4
FUN_ov132_0215a7d4: ; 0x0215A7D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r5, r0
	mov r7, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020febf8
	ldrsb r2, [r7, #0xb]
	mov r5, #1
	ldr r1, _0215A880 ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r7, #0xb]
	strb r5, [r7, #0xa]
	str r0, [r7, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	mov r1, r5
	mov r4, r0
	bl FUN_ov126_021327b8
	cmp r0, #0
	beq _0215A84C
	ldrsb r0, [r4, #4]
	b _0215A864
_0215A84C:
	mov r0, r4
	mov r1, #2
	bl FUN_ov126_021327b8
	cmp r0, #0
	beq _0215A86C
	ldrsb r0, [r4, #7]
_0215A864:
	bl FUN_ov16_020f07a8
	add r5, r0, #1
_0215A86C:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215A880: .word unk_02099EF0
	arm_func_end FUN_ov132_0215a7d4

	arm_func_start FUN_ov132_0215a884
FUN_ov132_0215a884: ; 0x0215A884
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
	ldr r1, _0215A944 ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r6, #0xb]
	strb r4, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	ldr r1, [sp]
	cmp r1, #1
	beq _0215A8F8
	cmp r1, #2
	beq _0215A904
	b _0215A91C
_0215A8F8:
	ldrb r1, [r0, #0x11]
	ldrb r0, [r0, #0x10]
	b _0215A90C
_0215A904:
	ldrb r1, [r0, #0x10]
	ldrb r0, [r0, #0x11]
_0215A90C:
	cmp r0, r1
	subhi r0, r0, r1
	addhi r4, r0, #1
	b _0215A930
_0215A91C:
	ldrb r1, [r0, #0x10]
	ldrb r0, [r0, #0x11]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	add r4, r0, #2
_0215A930:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215A944: .word unk_02099EF0
	arm_func_end FUN_ov132_0215a884

	arm_func_start FUN_ov132_0215a948
FUN_ov132_0215a948: ; 0x0215A948
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r7, r0
	mov r8, r2
	mov r4, #0
	mov r5, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r5, #0xb]
	strb r1, [r5, #0xa]
	ldr r6, _0215AAE8 ; =0x02099EF0
	add r1, r2, #1
	strb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r6]
	bl FUN_ov126_0213246c
	ldr r1, [sp]
	mov r5, r0
	cmp r1, #0
	bne _0215A9DC
	ldrsb r1, [r5, #4]
	ldr r0, [r6]
	mov r2, r4
	bl FUN_ov132_021430b4
	mov r6, r0
	ldrsb r0, [r5, #4]
	mov r1, r4
	bl FUN_ov16_020efa9c
	b _0215A9F0
_0215A9DC:
	mov r0, r7
	bl FUN_ov16_0210c7e0
	mov r6, r0
	ldr r0, [sp]
	bl FUN_ov16_020efa80
_0215A9F0:
	ldr r1, [sp, #4]
	mov r4, r0
	cmp r1, #0
	beq _0215AA0C
	mov r0, r7
	bl FUN_ov16_0210c7e0
	b _0215AA20
_0215AA0C:
	ldr r0, _0215AAE8 ; =0x02099EF0
	ldrsb r1, [r5, #7]
	ldr r0, [r0]
	mov r2, #0
	bl FUN_ov132_021430b4
_0215AA20:
	mov r7, r0
	cmp r4, #0
	ldrb r5, [r6, #0x1a]
	beq _0215AA74
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	beq _0215AA74
	ldrb r0, [r6, #0x1d]
	cmp r0, #7
	bne _0215AA74
	ldrb r0, [r6, #0x1a]
	cmp r0, #1
	cmpne r0, #7
	moveq r0, #0
	streqb r0, [r6, #0x1a]
	ldrb r0, [r6, #0x1a]
	cmp r0, #3
	cmpne r0, #5
	moveq r0, #4
	streqb r0, [r6, #0x1a]
_0215AA74:
	ldr r4, _0215AAE8 ; =0x02099EF0
	ldmia r7, {r2, r3}
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov126_02138f50
	strb r5, [r6, #0x1a]
	add r5, r0, #1
	ldr r0, [r4]
	cmp r0, #0
	beq _0215AAD4
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _0215AAD4
	ldr r0, [r4]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0215AAD4
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	addeq r0, r5, #4
	moveq r1, r0, lsr #0x1f
	rsbeq r0, r1, r0, lsl #29
	addeq r5, r1, r0, ror #29
_0215AAD4:
	cmp r8, #0
	strne r5, [r8]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215AAE8: .word unk_02099EF0
	arm_func_end FUN_ov132_0215a948

	arm_func_start FUN_ov132_0215aaec
FUN_ov132_0215aaec: ; 0x0215AAEC
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
	ldrsb r2, [r7, #0xb]
	mov r5, #1
	ldr r1, _0215AB6C ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r7, #0xb]
	strb r5, [r7, #0xa]
	str r0, [r7, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	ldrb r0, [r0, #0x12]
	tst r0, #8
	moveq r5, r4
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215AB6C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215aaec

	arm_func_start FUN_ov132_0215ab70
FUN_ov132_0215ab70: ; 0x0215AB70
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
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _0215AC90 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	ldrb r3, [r0, #0x11]
	ldrb r2, [r0, #0x10]
	cmp r2, r3
	ldreq r1, [sp, #4]
	addeq r1, r1, #1
	streq r1, [sp, #4]
	beq _0215AC30
	bls _0215AC0C
	ldr r1, [sp]
	cmp r1, #2
	ldreq r1, [sp, #4]
	addeq r1, r1, #1
	streq r1, [sp, #4]
	ldrne r1, [sp, #4]
	addne r1, r1, r3
	b _0215AC2C
_0215AC0C:
	bhs _0215AC30
	ldr r1, [sp]
	cmp r1, #1
	ldreq r1, [sp, #4]
	addeq r1, r1, #1
	streq r1, [sp, #4]
	ldrne r1, [sp, #4]
	addne r1, r1, r2
_0215AC2C:
	strne r1, [sp, #4]
_0215AC30:
	ldr r2, [sp, #4]
	cmp r2, #3
	bge _0215AC54
	ldr r1, [sp]
	add r0, r0, r2
	cmp r1, #1
	ldreqsb r5, [r0, #4]
	ldrnesb r5, [r0, #7]
	b _0215AC58
_0215AC54:
	mvn r5, #0
_0215AC58:
	cmp r5, #0
	movlt r5, #0
	blt _0215AC7C
	mov r0, r5
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0215AC7C
	bl FUN_0206cbf8
	mov r5, r0
_0215AC7C:
	cmp r4, #0
	strne r5, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215AC90: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ab70

	arm_func_start FUN_ov132_0215ac94
FUN_ov132_0215ac94: ; 0x0215AC94
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
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _0215AD5C ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	ldr r1, [sp]
	cmp r1, #1
	beq _0215AD08
	cmp r1, #2
	beq _0215AD14
	b _0215AD2C
_0215AD08:
	ldrb r1, [r0, #0x11]
	ldrb r0, [r0, #0x10]
	b _0215AD1C
_0215AD14:
	ldrb r1, [r0, #0x10]
	ldrb r0, [r0, #0x11]
_0215AD1C:
	cmp r0, r1
	subls r0, r0, #1
	subhi r0, r1, #1
	b _0215AD48
_0215AD2C:
	ldrb r1, [r0, #0x10]
	ldrb r0, [r0, #0x11]
	smulbb r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	mov r0, r0, lsl #1
_0215AD48:
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215AD5C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ac94

	arm_func_start FUN_ov132_0215ad60
FUN_ov132_0215ad60: ; 0x0215AD60
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r6, r2
	add r2, sp, #0
	mov r4, r1
	bl FUN_ov16_020febf8
	ldrsb r2, [r4, #0xb]
	mov r5, #1
	ldr r1, _0215ADDC ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r4, #0xb]
	strb r5, [r4, #0xa]
	str r0, [r4, #4]
	ldr r0, [r1]
	bl FUN_ov132_02159df0
	mov r1, r5
	mov r4, r0
	bl FUN_ov132_0215a494
	cmp r0, #0
	bne _0215ADC8
	mov r5, #2
	mov r0, r4
	mov r1, r5
	bl FUN_ov132_0215a494
	cmp r0, #0
	moveq r5, #0
_0215ADC8:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0215ADDC: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ad60

	arm_func_start FUN_ov132_0215ade0
FUN_ov132_0215ade0: ; 0x0215ADE0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r6, r2
	add r2, sp, #0
	mov r4, r1
	bl FUN_ov16_020febf8
	ldrsb r2, [r4, #0xb]
	mov r5, #1
	ldr r1, _0215AE5C ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r4, #0xb]
	strb r5, [r4, #0xa]
	str r0, [r4, #4]
	ldr r0, [r1]
	bl FUN_ov132_02159df0
	mov r1, #3
	mov r4, r0
	bl FUN_ov132_0215a494
	cmp r0, #0
	bne _0215AE48
	mov r0, r4
	mov r1, #4
	bl FUN_ov132_0215a494
	mov r5, #2
	cmp r0, #0
	moveq r5, #0
_0215AE48:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0215AE5C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ade0

	arm_func_start FUN_ov132_0215ae60
FUN_ov132_0215ae60: ; 0x0215AE60
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
	cmp r0, #0
	bne _0215AECC
	ldr r0, _0215AEF0 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02146410
	b _0215AED8
_0215AECC:
	ldr r0, _0215AEF0 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02146678
_0215AED8:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215AEF0: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ae60

	arm_func_start FUN_ov132_0215aef4
FUN_ov132_0215aef4: ; 0x0215AEF4
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
	mov r4, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r4, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _0215AF90
	ldr r0, _0215AFE4 ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov132_02143114
	ldr r1, _0215AFE8 ; =0x0209A720
	ldr r2, [r0, #4]
	ldr r0, [r1, #0xd8]
	cmp r2, r0
	strgt r5, [sp]
	ldr r0, _0215AFE4 ; =0x02099EF0
	strle r4, [sp]
	ldr r1, [sp]
	ldr r0, [r0]
	bl FUN_ov132_02143ca4
	b _0215AFA8
_0215AF90:
	cmp r0, #1
	bne _0215AFA0
	bl FUN_ov16_020f081c
	b _0215AFA8
_0215AFA0:
	bl FUN_ov16_020f081c
	eor r0, r0, #1
_0215AFA8:
	str r0, [sp]
	ldr r0, _0215AFE4 ; =0x02099EF0
	ldr r1, [sp]
	ldr r0, [r0]
	bl FUN_ov126_02139800
	cmp r0, #0
	mov r1, #0
	beq _0215AFD0
	bl FUN_0206cbf8
	mov r1, r0
_0215AFD0:
	cmp r6, #0
	strne r1, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215AFE4: .word unk_02099EF0
_0215AFE8: .word unk_0209A720
	arm_func_end FUN_ov132_0215aef4

	arm_func_start FUN_ov132_0215afec
FUN_ov132_0215afec: ; 0x0215AFEC
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
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0215B068 ; =0x02099EF0
	mov r2, r4
	ldr r0, [r0]
	bl FUN_ov132_02145a44
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215B068: .word unk_02099EF0
	arm_func_end FUN_ov132_0215afec

	arm_func_start FUN_ov132_0215b06c
FUN_ov132_0215b06c: ; 0x0215B06C
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
	bne _0215B0D4
	bl FUN_ov16_020f081c
	ldr r1, _0215B0F8 ; =0x020A06D8
	b _0215B0E0
_0215B0D4:
	bl FUN_ov16_020f081c
	ldr r1, _0215B0F8 ; =0x020A06D8
	eor r0, r0, #1
_0215B0E0:
	ldrb r0, [r1, r0]
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215B0F8: .word unk_020A06D8
	arm_func_end FUN_ov132_0215b06c

	arm_func_start FUN_ov132_0215b0fc
FUN_ov132_0215b0fc: ; 0x0215B0FC
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
	bne _0215B168
	bl FUN_ov16_020f081c
	ldr r2, [sp, #4]
	ldr r1, _0215B194 ; =0x020A06D8
	b _0215B178
_0215B168:
	bl FUN_ov16_020f081c
	ldr r2, [sp, #4]
	ldr r1, _0215B194 ; =0x020A06D8
	eor r0, r0, #1
_0215B178:
	strb r2, [r1, r0]
	mov r0, #1
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215B194: .word unk_020A06D8
	arm_func_end FUN_ov132_0215b0fc

	arm_func_start FUN_ov132_0215b198
FUN_ov132_0215b198: ; 0x0215B198
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
	arm_func_end FUN_ov132_0215b198

	arm_func_start FUN_ov132_0215b1fc
FUN_ov132_0215b1fc: ; 0x0215B1FC
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
	mov r5, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r5, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, _0215B28C ; =0x0209C120
	ldr r2, [sp]
	ldr r0, _0215B290 ; =0x00000708
	ldrh r1, [r1, #0xc0]
	mul r0, r2, r0
	bl _s32_div_f
	mov r1, r0
	ldr r0, _0215B294 ; =0x02099EF0
	str r1, [sp]
	ldr r0, [r0]
	bl FUN_ov132_021462f4
	cmp r4, #0
	strne r5, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215B28C: .word unk_0209C120
_0215B290: .word 0x00000708
_0215B294: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b1fc

	arm_func_start FUN_ov132_0215b298
FUN_ov132_0215b298: ; 0x0215B298
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
	ldr r1, _0215B378 ; =0x020A0640
	add r2, r2, #1
	strb r2, [r6, #0xb]
	strb r3, [r6, #0xa]
	str r0, [r6, #4]
	ldrb r0, [r1, #0x8f]
	cmp r0, #2
	bls _0215B364
	cmp r0, #3
	blo _0215B30C
	cmp r0, #5
	movls r3, #2
	bls _0215B364
_0215B30C:
	ldr r0, _0215B378 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #6
	blo _0215B328
	cmp r0, #8
	movls r3, #3
	bls _0215B364
_0215B328:
	ldr r0, _0215B378 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #9
	blo _0215B344
	cmp r0, #0xb
	movls r3, #4
	bls _0215B364
_0215B344:
	ldr r0, _0215B378 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	blo _0215B360
	cmp r0, #0xe
	movls r3, #5
	bls _0215B364
_0215B360:
	mvn r3, #0
_0215B364:
	cmp r4, #0
	strne r3, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215B378: .word unk_020A0640
	arm_func_end FUN_ov132_0215b298

	arm_func_start FUN_ov132_0215b37c
FUN_ov132_0215b37c: ; 0x0215B37C
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
	bne _0215B3E8
	bl FUN_ov16_020f081c
	ldr r2, _0215B410 ; =0x02099EF0
	mov r1, r0
	b _0215B3F4
_0215B3E8:
	bl FUN_ov16_020f081c
	ldr r2, _0215B410 ; =0x02099EF0
	eor r1, r0, #1
_0215B3F4:
	ldr r0, [r2]
	bl FUN_ov132_02144f78
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215B410: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b37c

	arm_func_start FUN_ov132_0215b414
FUN_ov132_0215b414: ; 0x0215B414
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
	cmp r0, #1
	bne _0215B498
	bl FUN_ov16_020f081c
	ldr r2, [sp]
	mov r1, r0
	ldr r0, _0215B4D8 ; =0x02099EF0
	cmp r2, #0
	moveq r5, r4
	mov r2, r5
	ldr r0, [r0]
	b _0215B4BC
_0215B498:
	bl FUN_ov16_020f081c
	ldr r1, [sp]
	mov r3, r0
	cmp r1, #0
	ldr r0, _0215B4D8 ; =0x02099EF0
	moveq r5, r4
	ldr r0, [r0]
	mov r2, r5
	eor r1, r3, #1
_0215B4BC:
	bl FUN_ov132_021462b8
	cmp r6, #0
	movne r0, #1
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215B4D8: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b414

	arm_func_start FUN_ov132_0215b4dc
FUN_ov132_0215b4dc: ; 0x0215B4DC
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
	ldr r1, _0215B570 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov132_02143b6c
	cmp r0, #0
	beq _0215B55C
	ldrsh r0, [r0, #4]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0215B55C
	bl FUN_0206cbf8
	mov r4, r0
_0215B55C:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215B570: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b4dc

	arm_func_start FUN_ov132_0215b574
FUN_ov132_0215b574: ; 0x0215B574
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
	ldrsb r2, [r6, #0xb]
	mov r7, #1
	ldr r1, _0215B604 ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r6, #0xb]
	strb r7, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov132_02143b6c
	cmp r0, #0
	beq _0215B5F0
	ldrb r0, [r0, #6]
	bl FUN_ov16_020f0a14
	mov r4, r7
	cmp r0, #0
	moveq r4, #2
_0215B5F0:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215B604: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b574

	arm_func_start FUN_ov132_0215b608
FUN_ov132_0215b608: ; 0x0215B608
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
	mov r2, #1
	ldrsb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	ldr r1, _0215B698 ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r6, #0xb]
	str r0, [r6, #4]
	ldr r0, [r1]
	mov r1, r4
	bl FUN_ov132_02143114
	ldrsh r0, [r0, #0x1c]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0215B684
	bl FUN_0206cbf8
	mov r4, r0
_0215B684:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215B698: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b608

	arm_func_start FUN_ov132_0215b69c
FUN_ov132_0215b69c: ; 0x0215B69C
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
	ldrsb r2, [r7, #0xb]
	mov r5, #1
	ldr r1, _0215B750 ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r7, #0xb]
	strb r5, [r7, #0xa]
	str r0, [r7, #4]
	ldr r0, [r1]
	bl FUN_ov126_021375d4
	cmp r0, #0
	beq _0215B714
	ldrb r0, [r0, #0xf]
	tst r0, #0x20
	moveq r5, r4
	mov r4, r5
_0215B714:
	ldr r0, _0215B750 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_02137884
	ldrb r1, [r0, #0x2e]
	cmp r1, #0
	movne r4, #2
	bne _0215B73C
	ldrb r0, [r0, #0x2f]
	cmp r0, #0
	movne r4, #3
_0215B73C:
	cmp r6, #0
	strne r4, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215B750: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b69c

	arm_func_start FUN_ov132_0215b754
FUN_ov132_0215b754: ; 0x0215B754
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
	ldr r1, _0215B7E8 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_021375d4
	cmp r0, #0
	beq _0215B7D4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0215B7D4
	bl FUN_0206cbf8
	mov r4, r0
_0215B7D4:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215B7E8: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b754

	arm_func_start FUN_ov132_0215b7ec
FUN_ov132_0215b7ec: ; 0x0215B7EC
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215B8A0 ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldrb r1, [r0, #0x25]
	ldr r5, _0215B8A0 ; =0x02099EF0
	mov r6, #0
	cmp r1, #0
	cmpne r1, #0xf
	ldreqb r1, [r0, #0x26]
	ldr r0, [r5]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0215B88C
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrneb r0, [r0, #0xe]
	subne r6, r0, #1
_0215B88C:
	cmp r4, #0
	strne r6, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215B8A0: .word unk_02099EF0
	arm_func_end FUN_ov132_0215b7ec

	arm_func_start FUN_ov132_0215b8a4
FUN_ov132_0215b8a4: ; 0x0215B8A4
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215B95C ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldrb r1, [r0, #0x25]
	ldr r5, _0215B95C ; =0x02099EF0
	mov r6, #0
	cmp r1, #0
	cmpne r1, #0xf
	ldreqb r1, [r0, #0x26]
	ldr r0, [r5]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0215B944
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrnesh r6, [r0, #8]
	b _0215B948
_0215B944:
	ldr r6, _0215B960 ; =0x000001F1
_0215B948:
	cmp r4, #0
	strne r6, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215B95C: .word unk_02099EF0
_0215B960: .word 0x000001F1
	arm_func_end FUN_ov132_0215b8a4

	arm_func_start FUN_ov132_0215b964
FUN_ov132_0215b964: ; 0x0215B964
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215BA24 ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldrb r1, [r0, #0x25]
	ldr r5, _0215BA24 ; =0x02099EF0
	mov r6, #0
	cmp r1, #0
	cmpne r1, #0xf
	ldreqb r1, [r0, #0x26]
	ldr r0, [r5]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0215BA10
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	cmp r0, #0
	beq _0215BA10
	ldrsh r1, [r0, #8]
	ldr r0, _0215BA28 ; =0x0209BA20
	bl FUN_0204a2c4
	ldrb r6, [r0, #8]
_0215BA10:
	cmp r4, #0
	strne r6, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215BA24: .word unk_02099EF0
_0215BA28: .word unk_0209BA20
	arm_func_end FUN_ov132_0215b964

	arm_func_start FUN_ov132_0215ba2c
FUN_ov132_0215ba2c: ; 0x0215BA2C
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215BADC ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldrb r1, [r0, #0x25]
	ldr r5, _0215BADC ; =0x02099EF0
	mov r6, #0
	cmp r1, #0
	cmpne r1, #0xf
	ldreqb r1, [r0, #0x26]
	ldr r0, [r5]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0215BAC8
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrneb r6, [r0, #0x12]
_0215BAC8:
	cmp r4, #0
	strne r6, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215BADC: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ba2c

	arm_func_start FUN_ov132_0215bae0
FUN_ov132_0215bae0: ; 0x0215BAE0
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215BB98 ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldrb r1, [r0, #0x25]
	ldr r5, _0215BB98 ; =0x02099EF0
	mov r6, #0
	cmp r1, #0
	cmpne r1, #0xf
	ldreqb r1, [r0, #0x26]
	ldr r0, [r5]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0215BB80
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrneb r6, [r0, #0x11]
	b _0215BB84
_0215BB80:
	mov r6, #2
_0215BB84:
	cmp r4, #0
	strne r6, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215BB98: .word unk_02099EF0
	arm_func_end FUN_ov132_0215bae0

	arm_func_start FUN_ov132_0215bb9c
FUN_ov132_0215bb9c: ; 0x0215BB9C
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
	ldr r1, _0215BC18 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrneb r4, [r0, #0x12]
	cmp r5, #0
	mov r0, #1
	strne r4, [r5]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215BC18: .word unk_02099EF0
	arm_func_end FUN_ov132_0215bb9c

	arm_func_start FUN_ov132_0215bc1c
FUN_ov132_0215bc1c: ; 0x0215BC1C
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
	ldr r1, _0215BC98 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrneb r4, [r0, #0x13]
	cmp r5, #0
	mov r0, #1
	strne r4, [r5]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215BC98: .word unk_02099EF0
	arm_func_end FUN_ov132_0215bc1c

	arm_func_start FUN_ov132_0215bc9c
FUN_ov132_0215bc9c: ; 0x0215BC9C
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215BD54 ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldrb r1, [r0, #0x25]
	ldr r5, _0215BD54 ; =0x02099EF0
	mov r6, #0
	cmp r1, #0
	cmpne r1, #0xf
	ldreqb r1, [r0, #0x26]
	ldr r0, [r5]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0215BD3C
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrnesh r6, [r0, #0xa]
	b _0215BD40
_0215BD3C:
	mov r6, #0x1e
_0215BD40:
	cmp r4, #0
	strne r6, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215BD54: .word unk_02099EF0
	arm_func_end FUN_ov132_0215bc9c

	arm_func_start FUN_ov132_0215bd58
FUN_ov132_0215bd58: ; 0x0215BD58
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
	cmp r0, #1
	bne _0215BDBC
	bl FUN_ov16_020f081c
	b _0215BDC4
_0215BDBC:
	bl FUN_ov16_020f081c
	eor r0, r0, #1
_0215BDC4:
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #0
	beq _0215BDEC
	ldr r0, _0215BE18 ; =0x02099EF0
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r2, [sp, #8]
	bl FUN_ov132_02146184
	b _0215BE00
_0215BDEC:
	ldr r0, _0215BE18 ; =0x02099EF0
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r2, [sp, #8]
	bl FUN_ov132_021461a0
_0215BE00:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215BE18: .word unk_02099EF0
	arm_func_end FUN_ov132_0215bd58

	arm_func_start FUN_ov132_0215be1c
FUN_ov132_0215be1c: ; 0x0215BE1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x13c
	add r4, sp, #0xbc
	mov r7, r0
	mov r9, r2
	mov r6, #0
	mov r5, r1
	mov r0, r4
	mov r1, r6
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	mov r4, #1
	strb r4, [r5, #0xa]
	add r1, r1, #1
	strb r1, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [sp, #0xbc]
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r5, r0
	beq _0215BF7C
	mov r7, r6
	bl FUN_ov16_020f0810
	mov r8, r0
	mov r0, r5
	bl FUN_ov16_020f0810
	bl FUN_ov16_020f0a14
	cmp r0, #0
	beq _0215BEC8
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	moveq r7, #0x20000
	beq _0215BEF0
	cmp r0, #2
	bne _0215BEF0
	cmp r8, #0
	mov r7, #0x10000
	b _0215BEE8
_0215BEC8:
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	moveq r7, #0x10000
	beq _0215BEF0
	cmp r0, #2
	bne _0215BEF0
	cmp r8, #0
	mov r7, #0x20000
_0215BEE8:
	movne r4, r6
	mov r8, r4
_0215BEF0:
	ldr r0, [sp, #0xc8]
	ldr r10, _0215BF90 ; =0x02099EF0
	cmp r0, #1
	mov r6, #0
	orr r7, r7, #0x40000
	ldrsh r1, [r5, #0x94]
	ldr r0, [r10]
	mov r2, r6
	orrne r7, r7, #0x10
	bl FUN_ov132_021430b4
	add r1, sp, #0xc
	stmia sp, {r1, r7}
	str r5, [sp, #8]
	ldr r2, [sp, #0xc0]
	add r4, sp, #0x64
	mov r1, r0
	ldr r0, [r10]
	mov r3, r4
	add r2, r2, #2
	bl FUN_ov132_0213f1d8
	ldr r0, [sp, #0xc0]
	ldr r0, [r4, r0, lsl #2]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0215BF58
	b _0215BF74
_0215BF58:
	tst r7, #0x10
	beq _0215BF7C
	ldr r0, [r10]
	mov r1, r8
	bl FUN_ov132_02144854
	cmp r0, #0
	beq _0215BF7C
_0215BF74:
	bl FUN_0206cbf8
	mov r6, r0
_0215BF7C:
	cmp r9, #0
	strne r6, [r9]
	mov r0, #1
	add sp, sp, #0x13c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0215BF90: .word unk_02099EF0
	arm_func_end FUN_ov132_0215be1c

	arm_func_start FUN_ov132_0215bf94
FUN_ov132_0215bf94: ; 0x0215BF94
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x13c
	add r5, sp, #0xbc
	mov r8, r0
	mov r7, r2
	mov r4, #0
	mov r6, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020febf8
	mov r5, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r5, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	cmp r4, #0
	bne _0215C01C
	ldr r9, _0215C108 ; =0x0209BA20
	mov r6, r4
_0215BFF8:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl FUN_0204ded8
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r4, r0
	add r5, r5, #1
	beq _0215BFF8
_0215C01C:
	mov r0, r8
	mov r1, r4
	mov r5, #0
	bl FUN_ov16_0210c748
	cmp r0, #0
	beq _0215C050
	ldr r0, [sp, #0xc0]
	cmp r0, #1
	moveq r5, #0x20000
	beq _0215C068
	cmp r0, #2
	moveq r5, #0x10000
	b _0215C068
_0215C050:
	ldr r0, [sp, #0xc0]
	cmp r0, #1
	moveq r5, #0x10000
	beq _0215C068
	cmp r0, #2
	moveq r5, #0x20000
_0215C068:
	ldr r0, [sp, #0xc4]
	ldr r8, _0215C10C ; =0x02099EF0
	cmp r0, #1
	mov r6, #0
	ldr r0, [r8]
	mov r1, r6
	orrne r5, r5, #0x10
	bl FUN_ov132_02143114
	add r1, sp, #0xc
	stmia sp, {r1, r5}
	str r4, [sp, #8]
	ldr r2, [sp, #0xbc]
	add r9, sp, #0x64
	mov r1, r0
	ldr r0, [r8]
	mov r3, r9
	add r2, r2, #1
	bl FUN_ov132_0213f1d8
	ldr r0, [sp, #0xbc]
	ldr r0, [r9, r0, lsl #2]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0215C0C8
	b _0215C0EC
_0215C0C8:
	tst r5, #0x10
	beq _0215C0F4
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	ldr r0, [r8]
	bl FUN_ov132_02144854
	cmp r0, #0
	beq _0215C0F4
_0215C0EC:
	bl FUN_0206cbf8
	mov r6, r0
_0215C0F4:
	cmp r7, #0
	strne r6, [r7]
	mov r0, #1
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0215C108: .word unk_0209BA20
_0215C10C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215bf94

	arm_func_start FUN_ov132_0215c110
FUN_ov132_0215c110: ; 0x0215C110
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	add r8, sp, #0
	mov r9, r0
	mov r7, r2
	mov r4, #0
	mov r5, r1
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	mov r0, r9
	add r1, r1, #1
	strb r1, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	ldr r1, [sp]
	bl FUN_ov16_0210c7e0
	ldr r1, _0215C260 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	bl FUN_ov132_02143114
	mov r1, r4
	mov r4, r0
	ldr r0, [sp]
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldrneb r6, [r5, #0x1a]
	cmp r0, #0
	beq _0215C1E4
	bl FUN_0206d6d8
	cmp r0, #0
	beq _0215C1E4
	ldrb r0, [r5, #0x1d]
	cmp r0, #7
	bne _0215C1E4
	ldrb r0, [r5, #0x1a]
	cmp r0, #1
	cmpne r0, #7
	moveq r0, #0
	streqb r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1a]
	cmp r0, #3
	cmpne r0, #5
	moveq r0, #4
	streqb r0, [r5, #0x1a]
_0215C1E4:
	ldr r0, _0215C260 ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	mov r2, r4
	bl FUN_ov126_02138fcc
	cmp r5, #0
	ldr r4, _0215C260 ; =0x02099EF0
	strneb r6, [r5, #0x1a]
	add r8, r0, #1
	ldr r0, [r4]
	cmp r0, #0
	beq _0215C24C
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _0215C24C
	ldr r0, [r4]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0215C24C
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	addeq r0, r8, #4
	moveq r1, r0, lsr #0x1f
	rsbeq r0, r1, r0, lsl #29
	addeq r8, r1, r0, ror #29
_0215C24C:
	cmp r7, #0
	strne r8, [r7]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0215C260: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c110

	arm_func_start FUN_ov132_0215c264
FUN_ov132_0215c264: ; 0x0215C264
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
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r1, #1
	str r0, [r6, #4]
	ldrsb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	mov r0, r7
	add r1, r2, #1
	strb r1, [r6, #0xb]
	ldr r1, [sp]
	bl FUN_ov16_0210c7e0
	cmp r0, #0
	ldrneb r0, [r0, #0x1a]
	ldr r6, _0215C32C ; =0x02099EF0
	addne r4, r0, #1
	ldr r0, [r6]
	cmp r0, #0
	beq _0215C318
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _0215C318
	ldr r0, [r6]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0215C318
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	addeq r0, r4, #4
	moveq r1, r0, lsr #0x1f
	rsbeq r0, r1, r0, lsl #29
	addeq r4, r1, r0, ror #29
_0215C318:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215C32C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c264

	arm_func_start FUN_ov132_0215c330
FUN_ov132_0215c330: ; 0x0215C330
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
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r1, #1
	str r0, [r6, #4]
	ldrsb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	mov r0, r7
	add r1, r2, #1
	strb r1, [r6, #0xb]
	ldr r1, [sp]
	bl FUN_ov16_0210c768
	mov r1, r4
	str r0, [sp]
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0215C3B0
	mov r1, r4
	bl FUN_0206d824
	mov r4, r0
_0215C3B0:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0215c330

	arm_func_start FUN_ov132_0215c3c4
FUN_ov132_0215c3c4: ; 0x0215C3C4
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
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r1, #1
	str r0, [r6, #4]
	ldrsb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	mov r0, r7
	add r1, r2, #1
	strb r1, [r6, #0xb]
	ldr r1, [sp]
	bl FUN_ov16_0210c768
	mov r1, r4
	str r0, [sp]
	bl FUN_ov16_020efa9c
	ldr r1, _0215C474 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0215C460
	mov r1, r6
	bl FUN_ov132_021531f4
	cmp r0, #0
	bne _0215C460
	mov r0, r6
	bl FUN_0206d6d8
	mov r4, r0
_0215C460:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215C474: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c3c4

	arm_func_start FUN_ov132_0215c478
FUN_ov132_0215c478: ; 0x0215C478
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r5, sp, #8
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
	ldr r1, [sp, #8]
	mov r0, r7
	bl FUN_ov16_0210c768
	mov r1, r0
	ldr r5, _0215C528 ; =0x02099EF0
	str r1, [sp, #8]
	ldr r0, [r5]
	bl FUN_ov126_02139d64
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #0x80000000
	str r1, [sp]
	cmp r0, #0
	beq _0215C510
	add r1, sp, #4
	add r2, sp, #0
	mov r3, #2
	bl FUN_ov132_02148978
_0215C510:
	cmp r4, #0
	ldrne r0, [sp, #4]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215C528: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c478

	arm_func_start FUN_ov132_0215c52c
FUN_ov132_0215c52c: ; 0x0215C52C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	add r5, sp, #8
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
	ldr r1, [sp, #8]
	mov r0, r7
	bl FUN_ov16_0210c768
	mov r1, r0
	ldr r5, _0215C5DC ; =0x02099EF0
	str r1, [sp, #8]
	ldr r0, [r5]
	bl FUN_ov126_02139dd8
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #0x80000000
	str r1, [sp]
	cmp r0, #0
	beq _0215C5C4
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #2
	bl FUN_ov132_02148978
_0215C5C4:
	cmp r4, #0
	ldrne r0, [sp, #4]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215C5DC: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c52c

	arm_func_start FUN_ov132_0215c5e0
FUN_ov132_0215c5e0: ; 0x0215C5E0
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
	mov r0, r7
	bl FUN_ov16_0210c768
	ldr r1, _0215C6A8 ; =0x02099EF0
	str r0, [sp]
	ldr r0, [r1]
	cmp r0, #0
	beq _0215C660
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #2
	bl FUN_ov132_02148978
_0215C660:
	ldr r0, _0215C6A8 ; =0x02099EF0
	ldr r1, [sp]
	ldr r0, [r0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_ov126_02139c8c
	ldr r0, [sp]
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0215C690
	bl FUN_0206da98
_0215C690:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215C6A8: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c5e0

	arm_func_start FUN_ov132_0215c6ac
FUN_ov132_0215c6ac: ; 0x0215C6AC
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
	mov r1, #1
	ldr r5, _0215C7C0 ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r6, #0xb]
	strb r1, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r5]
	cmp r0, #0
	beq _0215C750
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _0215C750
	ldr r0, [r5]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0215C750
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	bne _0215C750
	ldr r0, [sp, #4]
	add r0, r0, #4
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r0, r1, r0, ror #29
	str r0, [sp, #4]
_0215C750:
	mvn r5, #0
	mov r6, #0
_0215C758:
	mov r0, r6
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0215C77C
	bl FUN_0206cbf8
	ldr r1, [sp]
	cmp r1, r0
	moveq r5, r6
	beq _0215C788
_0215C77C:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0215C758
_0215C788:
	cmp r5, #0
	blt _0215C7A8
	ldr r0, _0215C7C0 ; =0x02099EF0
	ldr r2, [sp, #4]
	ldr r0, [r0]
	mov r1, r5
	sub r2, r2, #1
	bl FUN_ov132_02147e2c
_0215C7A8:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215C7C0: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c6ac

	arm_func_start FUN_ov132_0215c7c4
FUN_ov132_0215c7c4: ; 0x0215C7C4
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
	ldr r1, _0215C838 ; =0x02099EF0
	add r2, r2, #1
	str r0, [r6, #4]
	strb r2, [r6, #0xb]
	strb r4, [r6, #0xa]
	ldr r0, [r1]
	ldr r1, [sp]
	bl FUN_ov132_02147df8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215C838: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c7c4

	arm_func_start FUN_ov132_0215c83c
FUN_ov132_0215c83c: ; 0x0215C83C
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
	bne _0215C8A0
	bl FUN_ov16_020f081c
	b _0215C8A8
_0215C8A0:
	bl FUN_ov16_020f081c
	eor r0, r0, #1
_0215C8A8:
	str r0, [sp]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, _0215C8D0 ; =0x0209BA20
	bl FUN_0204ded8
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215C8D0: .word unk_0209BA20
	arm_func_end FUN_ov132_0215c83c

	arm_func_start FUN_ov132_0215c8d4
FUN_ov132_0215c8d4: ; 0x0215C8D4
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
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r5, #0xb]
	strb r1, [r5, #0xa]
	str r0, [r5, #4]
	add r1, r2, #1
	strb r1, [r5, #0xb]
	ldr r0, [sp]
	mov r1, r7
	bl FUN_ov16_020efa9c
	mov r7, r0
	ldr r1, [sp]
	mov r0, r6
	bl FUN_ov16_0210c7e0
	ldr r1, [sp, #4]
	mov r5, r0
	cmp r1, #1
	ldrsh r0, [r7, #0x94]
	bhi _0215C970
	bl FUN_ov16_020f07a8
	ldr r2, _0215C9A0 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, r5
	b _0215C988
_0215C970:
	bl FUN_ov16_020f07a8
	mov r1, r0
	ldr r0, _0215C9A0 ; =0x02099EF0
	mov r2, r5
	ldr r0, [r0]
	eor r1, r1, #1
_0215C988:
	bl FUN_ov132_02140b08
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215C9A0: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c8d4

	arm_func_start FUN_ov132_0215c9a4
FUN_ov132_0215c9a4: ; 0x0215C9A4
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
	mov r0, r7
	bl FUN_ov16_0210c768
	str r0, [sp]
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, _0215CA30 ; =0x02099EF0
	ldr r2, [sp, #4]
	ldr r0, [r0]
	bl FUN_ov126_0213a17c
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215CA30: .word unk_02099EF0
	arm_func_end FUN_ov132_0215c9a4

	arm_func_start FUN_ov132_0215ca34
FUN_ov132_0215ca34: ; 0x0215CA34
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xa8
	mov r5, #0
	mov r8, r1
	add r10, sp, #0x28
	mov r7, r0
	mov r4, #0x80
	mov r6, r2
	mov r0, r10
	mov r1, r5
	mov r2, r4
	mov r9, r5
	bl MI_CpuFill8
	mov r0, r7
	mov r2, r10
	mov r1, r8
	bl FUN_ov16_020febf8
	ldrsb r1, [r8, #0xb]
	mov r2, #1
	str r0, [r8, #4]
	add r1, r1, #1
	strb r2, [r8, #0xa]
	strb r1, [r8, #0xb]
	ldr r1, [sp, #0x28]
	sub r0, r2, #3
	cmp r1, r0
	beq _0215CB50
	sub r0, r2, #2
	cmp r1, r0
	mov r8, r2
	bne _0215CBF4
	bl FUN_ov16_020f081c
	str r5, [sp]
	add r10, sp, #8
	ldr r7, _0215CC74 ; =0x02099EF0
	str r4, [sp, #4]
	mov r1, r0
	ldr r0, [r7]
	mov r2, r10
	mov r3, #0x10
	bl FUN_ov126_02138d98
	mov r4, r0
	cmp r4, #0
	ble _0215CC5C
_0215CAE4:
	mov r0, r5, lsl #1
	ldrh r0, [r10, r0]
	mov r1, r9
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0215CB40
	ldr r1, [sp, #0x34]
	cmp r1, #1
	beq _0215CB14
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0215CB40
_0215CB14:
	ldr r0, [sp, #0x30]
	mov r1, r5, lsl #1
	cmp r0, #0
	ldr r0, [sp, #0x2c]
	mov r3, r8
	mov r2, r0, lsl #0xf
	ldrh r1, [r10, r1]
	ldr r0, [r7]
	moveq r3, r9
	mov r2, r2, lsr #0x10
	bl FUN_ov132_0213c234
_0215CB40:
	add r5, r5, #1
	cmp r5, r4
	blt _0215CAE4
	b _0215CC5C
_0215CB50:
	mov r8, r2
	bl FUN_ov16_020f083c
	str r5, [sp]
	add r10, sp, #8
	ldr r7, _0215CC74 ; =0x02099EF0
	str r4, [sp, #4]
	mov r1, r0
	ldr r0, [r7]
	mov r2, r10
	mov r3, #0x10
	bl FUN_ov126_02138d98
	mov r4, r0
	cmp r4, #0
	ble _0215CC5C
_0215CB88:
	mov r0, r5, lsl #1
	ldrh r0, [r10, r0]
	mov r1, r9
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0215CBE4
	ldr r1, [sp, #0x34]
	cmp r1, #1
	beq _0215CBB8
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0215CBE4
_0215CBB8:
	ldr r0, [sp, #0x30]
	mov r1, r5, lsl #1
	cmp r0, #0
	ldr r0, [sp, #0x2c]
	mov r3, r8
	mov r2, r0, lsl #0xf
	ldrh r1, [r10, r1]
	ldr r0, [r7]
	moveq r3, r9
	mov r2, r2, lsr #0x10
	bl FUN_ov132_0213c234
_0215CBE4:
	add r5, r5, #1
	cmp r5, r4
	blt _0215CB88
	b _0215CC5C
_0215CBF4:
	mov r0, r7
	bl FUN_ov16_0210c768
	mov r1, r5
	str r0, [sp, #0x28]
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0215CC5C
	ldr r1, [sp, #0x34]
	cmp r1, #1
	beq _0215CC28
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0215CC5C
_0215CC28:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	cmp r0, #0
	ldr r2, [sp, #0x2c]
	ldr r0, _0215CC74 ; =0x02099EF0
	mov r3, #1
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0xf
	ldr r0, [r0]
	moveq r3, #0
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl FUN_ov132_0213c234
_0215CC5C:
	mov r0, #1
	cmp r6, #0
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0xa8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0215CC74: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ca34

	arm_func_start FUN_ov132_0215cc78
FUN_ov132_0215cc78: ; 0x0215CC78
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r8, sp, #0
	mov r6, r0
	mov r5, r1
	mov r7, #0x80
	mov r4, r2
	mov r0, r8
	mov r2, r7
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _0215CCD0
	cmp r1, #1
	beq _0215CDC8
	b _0215CDEC
_0215CCD0:
	ldr r1, [sp, #4]
	cmp r1, #1
	subne r0, r7, #0x81
	cmpne r1, r0
	movne r0, #1
	strne r0, [sp, #4]
	ldr r0, [sp]
	mvn r1, #1
	cmp r0, r1
	beq _0215CD48
	add r1, r1, #1
	cmp r0, r1
	bne _0215CD8C
	ldr r7, _0215CE04 ; =0x02099EF0
	str r0, [r5, #0xc]
	mov r8, #0
_0215CD10:
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r7]
	mov r2, r8
	bl FUN_ov126_0213939c
	mov r1, r0
	ldr r0, [r6]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0203bbf0
	add r8, r8, #1
	cmp r8, #0xb
	blt _0215CD10
	b _0215CDB8
_0215CD48:
	ldr r7, _0215CE04 ; =0x02099EF0
	str r0, [r5, #0xc]
	mov r8, #0
_0215CD54:
	bl FUN_ov16_020f083c
	mov r1, r0
	ldr r0, [r7]
	mov r2, r8
	bl FUN_ov126_0213939c
	mov r1, r0
	ldr r0, [r6]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0203bbf0
	add r8, r8, #1
	cmp r8, #0xb
	blt _0215CD54
	b _0215CDB8
_0215CD8C:
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r1, r0
	ldr r0, [r6]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0203bbf0
	str r0, [r5, #0xc]
	cmp r0, #0x16
	moveq r0, #1
	streqb r0, [r5, #0xa]
_0215CDB8:
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _0215CDEC
_0215CDC8:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_0203bd48
	cmp r0, #0
	moveq r0, #1
	ldreqsb r1, [r5, #0xb]
	streqb r0, [r5, #0xa]
	addeq r0, r1, #1
	streqb r0, [r5, #0xb]
_0215CDEC:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215CE04: .word unk_02099EF0
	arm_func_end FUN_ov132_0215cc78

	arm_func_start FUN_ov132_0215ce08
FUN_ov132_0215ce08: ; 0x0215CE08
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	add r6, sp, #4
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
	beq _0215CE5C
	cmp r1, #1
	beq _0215CEB4
	b _0215CEEC
_0215CE5C:
	ldr r0, _0215CF04 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0215CE7C
	ldr r3, [sp, #0x10]
	add r1, sp, #8
	add r2, sp, #0xc
	bl FUN_ov132_02148978
_0215CE7C:
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_0203bdcc
	str r0, [r5, #0xc]
	cmn r0, #1
	movle r0, #1
	strleb r0, [r5, #0xa]
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	b _0215CEE8
_0215CEB4:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	bl FUN_0203bf34
	cmp r0, #0
	beq _0215CED8
	ldr r0, [r7]
	bl FUN_0203cb90
	cmp r0, #0
	beq _0215CEEC
_0215CED8:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r0, r1, #1
_0215CEE8:
	strb r0, [r5, #0xb]
_0215CEEC:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0215CF04: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ce08

	arm_func_start FUN_ov132_0215cf08
FUN_ov132_0215cf08: ; 0x0215CF08
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x8c
	add r6, sp, #0xc
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
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0203bf6c
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	cmp r4, #0
	strb r0, [r5, #0xb]
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215cf08

	arm_func_start FUN_ov132_0215cf9c
FUN_ov132_0215cf9c: ; 0x0215CF9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x84
	add r5, sp, #4
	mov r6, r0
	mov r8, r2
	mov r4, #0
	mov r9, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r9
	mov r2, r5
	bl FUN_ov16_020febf8
	ldr r1, _0215D0DC ; =0x02099EF0
	str r0, [r9, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _0215CFFC
	add r1, sp, #8
	add r2, sp, #0xc
	mov r3, r4
	bl FUN_ov132_02148978
_0215CFFC:
	ldr r0, [sp, #8]
	ldr r6, [sp, #0xc]
	cmp r0, #0
	ldr r7, [sp, #0x10]
	mov r0, r0, lsl #0xc
	ble _0215D028
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0215D034
_0215D028:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0215D034:
	bl _ffix
	ldr r1, _0215D0E0 ; =0x0209A720
	mov r5, r0
	cmp r6, #0
	ldr r4, [r1, #0xd4]
	mov r0, r6, lsl #0xc
	ble _0215D064
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0215D070
_0215D064:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0215D070:
	bl _ffix
	ldr r1, _0215D0E0 ; =0x0209A720
	ldr r10, _0215D0DC ; =0x02099EF0
	ldr r1, [r1, #0xd8]
	cmp r7, #0
	add r6, r1, r0
	ldr r0, [r10]
	mov r1, #2
	moveq r7, #8
	bl FUN_ov132_02148ba4
	str r6, [sp]
	ldr r0, [r10]
	ldr r1, [sp, #4]
	mov r2, r7
	add r3, r4, r5
	bl FUN_ov132_02148d5c
	ldrsb r0, [r9, #0xb]
	mov r1, #1
	strb r1, [r9, #0xa]
	add r0, r0, #1
	strb r0, [r9, #0xb]
	cmp r8, #0
	ldrnesb r0, [r9, #0xa]
	strne r0, [r8]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0215D0DC: .word unk_02099EF0
_0215D0E0: .word unk_0209A720
	arm_func_end FUN_ov132_0215cf9c

	arm_func_start FUN_ov132_0215d0e4
FUN_ov132_0215d0e4: ; 0x0215D0E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x108
	add r7, sp, #0x88
	movs r6, r2
	mov r9, r0
	mov r8, r1
	mov r5, #0
	mov r1, #0
	mov r0, r7
	mov r2, #0x80
	mov r4, #1
	strne r5, [r6]
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_020febf8
	strb r4, [r8, #0xa]
	ldrsb r1, [r8, #0xb]
	str r0, [r8, #4]
	cmp r6, #0
	add r0, r1, #1
	strb r0, [r8, #0xb]
	ldrnesb r0, [r8, #0xa]
	ldr r4, _0215D498 ; =0x02099EF0
	strne r0, [r6]
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x108
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x108
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	ldr r4, _0215D49C ; =0x0209A2C0
	bl FUN_ov126_02137544
	movs r8, r0
	addeq sp, sp, #0x108
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x88]
	ldr r0, _0215D4A0 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	beq _0215D1FC
	ldrb r1, [r0]
	mov r2, #1
	mov r7, r2
	cmp r1, #1
	cmpne r1, #5
	movne r7, #0
	mov r3, r2
	cmp r7, #0
	bne _0215D1D4
	ldrb r1, [r0]
	cmp r1, #2
	movne r3, #0
_0215D1D4:
	cmp r3, #0
	bne _0215D1E8
	ldrb r0, [r0]
	cmp r0, #6
	movne r2, #0
_0215D1E8:
	mov r0, #1
	cmp r2, #0
	movne r0, #0
	cmp r0, #0
	bne _0215D208
_0215D1FC:
	add sp, sp, #0x108
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215D208:
	ldr r0, [r4, #0x48]
	bl FUN_ov16_020efa80
	movs r9, r0
	addeq sp, sp, #0x108
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0206d5f0
	ldr r11, _0215D498 ; =0x02099EF0
	cmp r0, #0
	mov r10, #1
	movne r10, #0
	ldr r0, [r11]
	mov r1, r10
	bl FUN_ov132_02144854
	movs r7, r0
	addeq sp, sp, #0x108
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x88]
	add r2, sp, #0x14
	strh r0, [r8, #8]
	ldrsh r0, [r9, #0x94]
	mov r1, r10
	strb r0, [r8, #0xc]
	mov r0, #0
	strb r0, [r8, #0xf]
	ldrsh r0, [r7, #0x94]
	strb r0, [r8, #0xd]
	ldr r0, [r11]
	bl FUN_ov126_02136ee4
	ldr r0, [sp, #0x14]
	mov r10, #1
	strh r0, [r8, #0xa]
	mov r0, #0
	stmia sp, {r0, r10}
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r11]
	mov r1, r9
	mov r2, #0
	mov r3, #9
	bl FUN_ov132_02141778
	mov r1, r0
	mov r0, r8
	bl FUN_ov126_02138694
	mov r0, #0
	stmia sp, {r0, r10}
	str r9, [sp, #8]
	mov r1, r7
	str r0, [sp, #0xc]
	mov r7, #8
	ldr r0, [r11]
	mov r2, #0
	mov r3, r7
	bl FUN_ov132_02141778
	mov r1, r0
	mov r0, r8
	bl FUN_ov126_021386cc
	mov r0, r9
	bl FUN_0206d5f0
	ldr r1, _0215D4A4 ; =0x020EAB04
	adds r8, r1, r0, lsl #3
	addeq sp, sp, #0x108
	moveq r0, r10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r8
	mov r2, r7
	add r1, r4, #0x18
	bl MI_CpuCopy8
	ldr r0, [sp, #0x8c]
	strb r10, [r4, #0x5c]
	cmp r0, #1
	movne r10, #0
	mov r1, #1
	cmp r10, #0
	moveq r1, #0
	mov r0, r4
	bl FUN_ov126_0212fc94
	ldrb r0, [r4, #0x5f]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0215D460
	add r10, sp, #0x28
	mov r0, r4
	mov r1, r10
	mov r2, #0x60
	bl MI_CpuCopy8
	ldr r7, _0215D498 ; =0x02099EF0
	ldr r0, [r7]
	bl FUN_ov132_02144780
	stmia sp, {r0, r10}
	str r9, [sp, #8]
	ldr r0, [r7]
	mov r3, #0x16
	ldmia r8, {r1, r2}
	bl FUN_ov126_0212cbdc
	ldrh r3, [sp, #0x7a]
	ldr r0, [r7]
	ldr r1, [r9, #0x84]
	mov r3, r3, asr #4
	ldr lr, [r1, #4]
	ldr r1, [r1]
	ldr r7, _0215D4A8 ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	mov r2, r8
	mov r8, r3, lsl #1
	add r3, r3, #1
	mov r3, r3, lsl #1
	ldrsh r12, [r7, r3]
	ldrsh r10, [r7, r8]
	mov r3, #0x64000
	mov r11, r12, asr #0x1f
	umull r9, r8, r10, r3
	mov r7, r10, asr #0x1f
	mov r3, #0x64000
	mla r8, r7, r3, r8
	adds r7, r9, #0x800
	adc r3, r8, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, r3, lsl #20
	add r3, lr, r7
	str r3, [sp, #0x24]
	mov r3, #0x64000
	umull r8, r7, r12, r3
	mov r3, #0x64000
	mla r7, r11, r3, r7
	adds r8, r8, #0x800
	adc r3, r7, #0
	mov r7, r8, lsr #0xc
	str r1, [sp, #0x10]
	orr r7, r7, r3, lsl #20
	ldr r3, [sp, #0x10]
	str r1, [sp, #0x18]
	add r3, r3, r7
	add r1, sp, #0x18
	str lr, [sp, #0x1c]
	str r3, [sp, #0x20]
	bl FUN_ov132_021490d0
	cmp r0, #0
	movlt r5, #1
	blt _0215D448
	movgt r5, #2
_0215D448:
	ldrh r1, [sp, #0x7a]
	ldrsh r0, [sp, #0x7c]
	cmp r6, #0
	strh r1, [r4, #0x52]
	strh r0, [r4, #0x54]
	strne r5, [r6]
_0215D460:
	ldr r0, _0215D4AC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0215D48C
	ldr r0, _0215D4B0 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _0215D48C
	mov r0, r4
	mov r1, #0
	bl FUN_ov126_0212fc94
_0215D48C:
	mov r0, #1
	add sp, sp, #0x108
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215D498: .word unk_02099EF0
_0215D49C: .word unk_0209A2C0
_0215D4A0: .word unk_0209BA20
_0215D4A4: .word ov1_020EAB04
_0215D4A8: .word FX_SinCosTable_
_0215D4AC: .word unk_020A0640
_0215D4B0: .word unk_0209AEC0
	arm_func_end FUN_ov132_0215d0e4

	arm_func_start FUN_ov132_0215d4b4
FUN_ov132_0215d4b4: ; 0x0215D4B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r7, sp, #0
	mov r8, r0
	mov r5, r1
	mov r6, #0x80
	mov r4, r2
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _0215D50C
	cmp r1, #1
	beq _0215D540
	b _0215D578
_0215D50C:
	ldr r0, [r8]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0203c3fc
	sub r1, r6, #0x81
	str r0, [r5, #0xc]
	cmp r0, r1
	movle r0, #1
	strleb r0, [r5, #0xa]
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	b _0215D574
_0215D540:
	ldr r0, [r8]
	ldr r1, [r5, #0xc]
	bl FUN_0203c6c4
	cmp r0, #0
	beq _0215D564
	ldr r0, [r8]
	bl FUN_0203cb90
	cmp r0, #0
	beq _0215D578
_0215D564:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r0, r1, #1
_0215D574:
	strb r0, [r5, #0xb]
_0215D578:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0215d4b4

	arm_func_start FUN_ov132_0215d590
FUN_ov132_0215d590: ; 0x0215D590
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
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _0215D5E4
	cmp r1, #1
	beq _0215D644
	b _0215D67C
_0215D5E4:
	ldr r0, _0215D694 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0215D604
	ldr r3, [sp, #0x18]
	add r1, sp, #0xc
	add r2, sp, #0x10
	bl FUN_ov132_02148978
_0215D604:
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_0203c4e4
	str r0, [r5, #0xc]
	cmn r0, #1
	movle r0, #1
	strleb r0, [r5, #0xa]
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	b _0215D678
_0215D644:
	ldr r0, [r6]
	ldr r1, [r5, #0xc]
	bl FUN_0203c6c4
	cmp r0, #0
	beq _0215D668
	ldr r0, [r6]
	bl FUN_0203cb90
	cmp r0, #0
	beq _0215D67C
_0215D668:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r0, r1, #1
_0215D678:
	strb r0, [r5, #0xb]
_0215D67C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215D694: .word unk_02099EF0
	arm_func_end FUN_ov132_0215d590

	arm_func_start FUN_ov132_0215d698
FUN_ov132_0215d698: ; 0x0215D698
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
	ldr r1, [sp, #4]
	cmp r1, #0
	ble _0215D6EC
	ldr r0, _0215D730 ; =0x00002710
	cmp r1, r0
	ble _0215D6F4
_0215D6EC:
	mov r0, #0x64
	str r0, [sp, #4]
_0215D6F4:
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_0203c988
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215D730: .word 0x00002710
	arm_func_end FUN_ov132_0215d698

	arm_func_start FUN_ov132_0215d734
FUN_ov132_0215d734: ; 0x0215D734
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
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	rsblt r0, r0, #0
	strlt r0, [sp, #4]
	ldr r0, [r7]
	ldr r2, [sp, #4]
	and r1, r1, #0xff
	bl FUN_0203ca38
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215d734

	arm_func_start FUN_ov132_0215d7c0
FUN_ov132_0215d7c0: ; 0x0215D7C0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	add r4, sp, #4
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
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_0203d998
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	cmp r5, #0
	strb r0, [r6, #0xb]
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215d7c0

	arm_func_start FUN_ov132_0215d844
FUN_ov132_0215d844: ; 0x0215D844
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
	bl FUN_0203db34
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215d844

	arm_func_start FUN_ov132_0215d8bc
FUN_ov132_0215d8bc: ; 0x0215D8BC
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
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, [sp, #4]
	strlt r6, [sp]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #4]
	blt _0215D928
	cmp r0, #0x2000
	movgt r0, #0x2000
	strgt r0, [sp, #4]
_0215D928:
	ldr r6, _0215D970 ; =0x02099EF0
	ldr r1, [sp]
	ldr r0, [r6]
	bl FUN_ov132_021491dc
	ldr r0, [r6]
	ldr r1, [sp, #4]
	bl FUN_ov132_021491cc
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215D970: .word unk_02099EF0
	arm_func_end FUN_ov132_0215d8bc

	arm_func_start FUN_ov132_0215d974
FUN_ov132_0215d974: ; 0x0215D974
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x94
	add r7, sp, #0x14
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
	ldr r7, _0215DA44 ; =0x02099EF0
	str r0, [r6, #4]
	ldr r0, [r7]
	cmp r0, #0
	beq _0215DA1C
	mov r1, #1
	bl FUN_ov132_02143114
	movs r3, r0
	beq _0215DA1C
	ldr r0, [sp, #0x14]
	add r1, sp, #0xc
	str r0, [sp]
	ldr r0, [r7]
	ldmia r3, {r2, r3}
	bl FUN_ov132_021487d4
	cmp r0, #0
	beq _0215DA1C
	ldr r12, [sp, #0xc]
	ldr r4, [sp, #0x10]
	ldr r0, [r7]
	ldr r3, [sp, #0x14]
	add r1, sp, #8
	add r2, sp, #4
	str r12, [sp, #8]
	str r4, [sp, #4]
	bl FUN_ov132_02148978
	ldr r4, [sp, #8]
_0215DA1C:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x94
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0215DA44: .word unk_02099EF0
	arm_func_end FUN_ov132_0215d974

	arm_func_start FUN_ov132_0215da48
FUN_ov132_0215da48: ; 0x0215DA48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x94
	add r7, sp, #0x14
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
	ldr r7, _0215DB18 ; =0x02099EF0
	str r0, [r6, #4]
	ldr r0, [r7]
	cmp r0, #0
	beq _0215DAF0
	mov r1, #1
	bl FUN_ov132_02143114
	movs r3, r0
	beq _0215DAF0
	ldr r0, [sp, #0x14]
	add r1, sp, #0xc
	str r0, [sp]
	ldr r0, [r7]
	ldmia r3, {r2, r3}
	bl FUN_ov132_021487d4
	cmp r0, #0
	beq _0215DAF0
	ldr r12, [sp, #0xc]
	ldr r4, [sp, #0x10]
	ldr r0, [r7]
	ldr r3, [sp, #0x14]
	add r1, sp, #8
	add r2, sp, #4
	str r12, [sp, #8]
	str r4, [sp, #4]
	bl FUN_ov132_02148978
	ldr r4, [sp, #4]
_0215DAF0:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x94
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0215DB18: .word unk_02099EF0
	arm_func_end FUN_ov132_0215da48

	arm_func_start FUN_ov132_0215db1c
FUN_ov132_0215db1c: ; 0x0215DB1C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x8c
	add r4, sp, #0xc
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
	mov r2, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r2, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	addlt sp, sp, #0x8c
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _0215DD68 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0x8c
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	cmp r0, #0
	ldr r4, _0215DD6C ; =0x0209A2C0
	beq _0215DBC0
	ldr r3, [sp, #0x18]
	add r1, sp, #0xc
	add r2, sp, #0x10
	bl FUN_ov132_02148978
_0215DBC0:
	cmp r4, #0
	ldrne r5, _0215DD68 ; =0x02099EF0
	ldrne r0, [r5]
	cmpne r0, #0
	beq _0215DD5C
	ldr r6, [r4]
	mov r12, #0x80000000
	ldr r3, [r4, #4]
	ldr r2, [r4, #8]
	mov r0, r4
	mov r1, #1
	str r12, [r4, #0x18]
	str r12, [r4, #0x1c]
	str r6, [r4, #0xc]
	str r3, [r4, #0x10]
	str r2, [r4, #0x14]
	bl FUN_ov126_0212fbe0
	mov r6, #0
	mov r0, r4
	mov r1, r6
	bl FUN_ov126_0212fc1c
	ldr r0, [sp, #0x18]
	str r6, [r4, #0x34]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x30]
	str r6, [r4, #0x40]
	strb r6, [r4, #0x5c]
	strh r6, [r4, #0x54]
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r1, sp, #4
	bl FUN_ov132_02148610
	cmp r0, #0
	beq _0215DC7C
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	mov r3, r1
	mov r2, r0
	str r3, [r4]
	str r2, [r4, #4]
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r0, [r4, #0x24]
_0215DC7C:
	mov r1, #0
	ldr r3, [sp, #0x14]
	ldr r2, [r4, #0x48]
	mov r5, r3, lsl #0xc
	sub r0, r1, #1
	str r0, [r4, #0x48]
	str r1, [r4, #0x44]
	strb r1, [r4, #0x58]
	cmp r3, #0
	moveq r1, #1
	mov r0, r4
	str r5, [r4, #8]
	str r5, [r4, #0x30]
	str r5, [r4, #0x40]
	str r2, [r4, #0x4c]
	bl FUN_ov126_0212fbe0
	ldr r0, _0215DD68 ; =0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_ov132_02143114
	cmp r0, #0
	beq _0215DD5C
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #0x18]
	str r1, [r0, #0xc]
	ldr r1, [r4, #0x1c]
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x30]
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x38]
	str r1, [r0, #0x18]
	ldr r1, [r4, #0x48]
	strh r1, [r0, #0x1c]
	ldr r1, [r4, #0x4c]
	strh r1, [r0, #0x1e]
	ldrh r1, [r4, #0x52]
	strh r1, [r0, #0x20]
	ldrh r1, [r4, #0x56]
	strh r1, [r0, #0x22]
	ldrb r1, [r4, #0x5c]
	strb r1, [r0, #0x24]
	ldrb r1, [r4, #0x58]
	strb r1, [r0, #0x25]
	ldrb r1, [r4, #0x59]
	strb r1, [r0, #0x26]
	ldrb r1, [r4, #0x5d]
	strb r1, [r0, #0x27]
	ldrb r1, [r4, #0x5a]
	strb r1, [r0, #0x28]
	ldrb r1, [r4, #0x5b]
	strb r1, [r0, #0x29]
_0215DD5C:
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0215DD68: .word unk_02099EF0
_0215DD6C: .word unk_0209A2C0
	arm_func_end FUN_ov132_0215db1c

	arm_func_start FUN_ov132_0215dd70
FUN_ov132_0215dd70: ; 0x0215DD70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	add r8, sp, #4
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r0, r8
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r2, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	cmp r4, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r4]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0215DDE0
	cmp r0, #0xc8
	ble _0215DDE8
_0215DDE0:
	mov r0, #0x64
	str r0, [sp, #0xc]
_0215DDE8:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addlt sp, sp, #0x84
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0215DF44 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0x84
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #8]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0215DE88
_0215DE24: ; jump table
	b _0215DE88 ; case 0
	b _0215DE48 ; case 1
	b _0215DE50 ; case 2
	b _0215DE58 ; case 3
	b _0215DE60 ; case 4
	b _0215DE68 ; case 5
	b _0215DE70 ; case 6
	b _0215DE78 ; case 7
	b _0215DE80 ; case 8
_0215DE48:
	mov r4, #1
	b _0215DE94
_0215DE50:
	mov r4, #2
	b _0215DE94
_0215DE58:
	mov r4, #3
	b _0215DE94
_0215DE60:
	mov r4, #4
	b _0215DE94
_0215DE68:
	mov r4, #5
	b _0215DE94
_0215DE70:
	mov r4, #6
	b _0215DE94
_0215DE78:
	mov r4, #7
	b _0215DE94
_0215DE80:
	mov r4, #8
	b _0215DE94
_0215DE88:
	add sp, sp, #0x84
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0215DE94:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _0215DF10
	mvn r1, #0
	cmp r0, r1
	bne _0215DEB4
	bl FUN_ov16_020f081c
	b _0215DEC4
_0215DEB4:
	sub r1, r1, #1
	cmp r0, r1
	bne _0215DEC8
	bl FUN_ov16_020f083c
_0215DEC4:
	mov r5, r0
_0215DEC8:
	ldr r6, _0215DF44 ; =0x02099EF0
	mov r8, #0
_0215DED0:
	ldr r0, [r6]
	mov r1, r5
	mov r2, r8
	bl FUN_ov126_0213939c
	movs r1, r0
	beq _0215DF00
	ldr r0, [sp, #0x10]
	mov r2, r4
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #0xc]
	bl FUN_0203ca84
_0215DF00:
	add r8, r8, #1
	cmp r8, #0xb
	blt _0215DED0
	b _0215DF38
_0215DF10:
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r1, r0
	beq _0215DF38
	ldr r0, [sp, #0x10]
	mov r2, r4
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #0xc]
	bl FUN_0203ca84
_0215DF38:
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0215DF44: .word unk_02099EF0
	arm_func_end FUN_ov132_0215dd70

	arm_func_start FUN_ov132_0215df48
FUN_ov132_0215df48: ; 0x0215DF48
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
	mov r1, #1
	ldr r2, [sp]
	sub r0, r1, #2
	cmp r2, r0
	ldr r0, [r8]
	moveq r1, r6
	bl FUN_0203cab4
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0215df48

	arm_func_start FUN_ov132_0215dfd0
FUN_ov132_0215dfd0: ; 0x0215DFD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r8, sp, #0
	mov r6, r0
	mov r5, r1
	mov r7, #0x80
	mov r4, r2
	mov r0, r8
	mov r2, r7
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _0215E028
	cmp r1, #1
	beq _0215E05C
	b _0215E07C
_0215E028:
	ldr r1, [sp]
	sub r0, r7, #0x81
	cmp r1, r0
	movne r0, #1
	strne r0, [sp]
	ldr r0, [r6]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_0203cad0
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	b _0215E07C
_0215E05C:
	ldr r0, [r6]
	bl FUN_0203cb5c
	cmp r0, #0
	moveq r0, #1
	ldreqsb r1, [r5, #0xb]
	streqb r0, [r5, #0xa]
	addeq r0, r1, #1
	streqb r0, [r5, #0xb]
_0215E07C:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0215dfd0

	arm_func_start FUN_ov132_0215e094
FUN_ov132_0215e094: ; 0x0215E094
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
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	cmp r6, #0
	ldrnesb r0, [r7, #0xa]
	strne r0, [r6]
	ldr r0, [r4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl FUN_0203cba8
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215e094

	arm_func_start FUN_ov132_0215e10c
FUN_ov132_0215e10c: ; 0x0215E10C
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
	mov r2, #1
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	strb r2, [r7, #0xa]
	add r0, r1, #1
	strb r0, [r7, #0xb]
	cmp r6, #0
	ldrnesb r0, [r7, #0xa]
	strne r0, [r6]
	ldr r0, [r4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0203cc74
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215e10c

	arm_func_start FUN_ov132_0215e188
FUN_ov132_0215e188: ; 0x0215E188
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x90
	add r7, sp, #0x10
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
	ldr r1, _0215E244 ; =0x02099EF0
	str r0, [r5, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _0215E1E4
	ldr r3, [sp, #0x1c]
	add r1, sp, #0x14
	add r2, sp, #0x18
	bl FUN_ov132_02148978
_0215E1E4:
	ldr r0, [sp, #0x1c]
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
	bl FUN_0203c230
	ldrsb r0, [r5, #0xb]
	mov r1, #1
	strb r1, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xb]
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215E244: .word unk_02099EF0
	arm_func_end FUN_ov132_0215e188

	arm_func_start FUN_ov132_0215e248
FUN_ov132_0215e248: ; 0x0215E248
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x90
	add r6, sp, #0x10
	mov r5, r0
	mov r7, r1
	mov r4, r2
	mov r0, r6
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r7, #4]
	ldrsb r0, [r7, #0xb]
	mov r1, #1
	strb r1, [r7, #0xa]
	add r0, r0, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0203cdc4
	mov r1, #0x80000000
	str r1, [sp, #8]
	ldr r1, _0215E2FC ; =0x02099EF0
	str r0, [sp, #0xc]
	ldr r0, [r1]
	cmp r0, #0
	beq _0215E2E4
	ldr r3, [sp, #0x14]
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_ov132_02148978
_0215E2E4:
	cmp r4, #0
	ldrne r0, [sp, #0xc]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215E2FC: .word unk_02099EF0
	arm_func_end FUN_ov132_0215e248

	arm_func_start FUN_ov132_0215e300
FUN_ov132_0215e300: ; 0x0215E300
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
	str r0, [r5, #4]
	mov r0, #1
	strb r0, [r5, #0xa]
	ldrsb r0, [r5, #0xb]
	mov r1, r7
	add r0, r0, #1
	strb r0, [r5, #0xb]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0203cdc4
	mov r1, #0x80000000
	str r1, [sp, #8]
	ldr r1, _0215E3BC ; =0x02099EF0
	str r0, [sp, #0xc]
	ldr r0, [r1]
	cmp r0, #0
	beq _0215E3A4
	ldr r3, [sp, #0x14]
	add r1, sp, #8
	add r2, sp, #0xc
	bl FUN_ov132_02148978
_0215E3A4:
	cmp r4, #0
	ldrne r0, [sp, #0xc]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x90
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215E3BC: .word unk_02099EF0
	arm_func_end FUN_ov132_0215e300

	arm_func_start FUN_ov132_0215e3c0
FUN_ov132_0215e3c0: ; 0x0215E3C0
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
	ldrsb r2, [r5, #0xb]
	mov r3, #1
	ldr r1, _0215E464 ; =0x02099EF0
	add r2, r2, #1
	strb r3, [r5, #0xa]
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _0215E430
	ldr r3, [sp, #0x10]
	add r1, sp, #8
	add r2, sp, #0xc
	bl FUN_ov132_02148978
_0215E430:
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_0203cf34
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0215E464: .word unk_02099EF0
	arm_func_end FUN_ov132_0215e3c0

	arm_func_start FUN_ov132_0215e468
FUN_ov132_0215e468: ; 0x0215E468
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
	mov r0, #1
	strb r0, [r6, #0xa]
	ldrsb r0, [r6, #0xb]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0203cfc4
	cmp r5, #0
	ldrnesb r0, [r6, #0xa]
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215e468

	arm_func_start FUN_ov132_0215e4e4
FUN_ov132_0215e4e4: ; 0x0215E4E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x84
	add r9, sp, #4
	mov r8, r0
	mov r5, #0
	mov r7, r1
	mov r4, #0x80
	mov r6, r2
	mov r0, r9
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r9
	bl FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #4]
	cmp r1, #0
	beq _0215E540
	cmp r1, #1
	beq _0215E5D0
	b _0215E608
_0215E540:
	ldr r9, _0215E620 ; =0x02099EF0
	ldr r0, [r9]
	cmp r0, #0
	beq _0215E59C
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _0215E59C
	ldr r0, [r9]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0215E59C
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	bne _0215E59C
	ldr r0, [sp, #8]
	cmp r0, #0
	sublt r5, r4, #0x134
	blt _0215E590
	movgt r5, #0xb4
_0215E590:
	ldr r0, [sp, #8]
	add r0, r0, r5
	str r0, [sp, #8]
_0215E59C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [sp]
	ldr r0, [r8]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_0203d100
	ldrsb r1, [r7, #0xb]
	str r0, [r7, #0xc]
	b _0215E600
_0215E5D0:
	ldr r0, [r8]
	ldr r1, [r7, #0xc]
	bl FUN_0203d07c
	cmp r0, #0
	beq _0215E5F4
	ldr r0, [r8]
	bl FUN_0203cb90
	cmp r0, #0
	beq _0215E608
_0215E5F4:
	ldrsb r1, [r7, #0xb]
	mov r0, #1
	strb r0, [r7, #0xa]
_0215E600:
	add r0, r1, #1
	strb r0, [r7, #0xb]
_0215E608:
	cmp r6, #0
	ldrnesb r0, [r7, #0xa]
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0215E620: .word unk_02099EF0
	arm_func_end FUN_ov132_0215e4e4

	arm_func_start FUN_ov132_0215e624
FUN_ov132_0215e624: ; 0x0215E624
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
	beq _0215E678
	cmp r1, #1
	beq _0215E6AC
	b _0215E6E4
_0215E678:
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0203d360
	str r0, [r5, #0xc]
	ldr r0, [sp, #8]
	cmp r0, #0
	movlt r0, #1
	strltb r0, [r5, #0xa]
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	b _0215E6E0
_0215E6AC:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	bl FUN_0203d2dc
	cmp r0, #0
	beq _0215E6D0
	ldr r0, [r7]
	bl FUN_0203cb90
	cmp r0, #0
	beq _0215E6E4
_0215E6D0:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r0, r1, #1
_0215E6E0:
	strb r0, [r5, #0xb]
_0215E6E4:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215e624

	arm_func_start FUN_ov132_0215e6fc
FUN_ov132_0215e6fc: ; 0x0215E6FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xe4
	add r4, sp, #0x64
	mov r10, r0
	mov r5, r1
	str r2, [sp]
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r5, #0xb]
	str r0, [r5, #4]
	strb r1, [r5, #0xa]
	add r0, r2, #1
	strb r0, [r5, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	subne r1, r1, #2
	strne r1, [r0]
	ldr r0, _0215E960 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0xe4
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	moveq r4, #1
	ldr r0, [sp, #0x64]
	mov r1, #1
	cmp r4, #0
	movne r1, #0
	cmp r0, #1
	ldr r0, [sp, #0x68]
	mov r8, r4
	movne r8, r1
	str r0, [sp, #8]
	cmp r0, #0xb
	movhs r0, #0
	strhs r0, [sp, #8]
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	beq _0215E7D0
	cmp r0, #2
	movne r1, r8
	mov r4, r1
_0215E7D0:
	ldr r0, _0215E960 ; =0x02099EF0
	ldr r2, [sp, #0x70]
	ldr r0, [r0]
	mov r1, r8
	str r2, [sp, #4]
	bl FUN_ov132_02143cd0
	cmp r0, #0
	ldr r0, _0215E960 ; =0x02099EF0
	mov r9, #1
	ldr r0, [r0]
	mov r1, r4
	movne r9, #0
	bl FUN_ov132_02143cd0
	mov r1, r0
	ldr r0, _0215E960 ; =0x02099EF0
	mov r7, #0
	ldr r0, [r0]
	mov r2, r7
	bl FUN_ov132_0213f59c
	mvn r4, #0x80000000
	mov r11, r0
	sub r5, r4, #0x80000000
_0215E828:
	ldr r0, _0215E960 ; =0x02099EF0
	mov r1, r8
	ldr r0, [r0]
	mov r2, r7
	bl FUN_ov126_0213939c
	movs r6, r0
	addeq r0, sp, #0x38
	streq r5, [r0, r7, lsl #2]
	beq _0215E894
	bl FUN_0206cbf8
	add r1, sp, #0x38
	str r0, [r1, r7, lsl #2]
	ldr r0, [r10]
	ldr r2, [sp, #4]
	mov r1, r6
	mov r3, r9
	bl FUN_0203d4fc
	cmp r0, #0
	addne r0, sp, #0xc
	strne r4, [r0, r7, lsl #2]
	bne _0215E894
	ldr r0, [r6, #0x84]
	ldr r0, [r0, #4]
	subs r1, r0, r11
	rsbmi r1, r1, #0
	add r0, sp, #0xc
	str r1, [r0, r7, lsl #2]
_0215E894:
	add r7, r7, #1
	cmp r7, #0xb
	blt _0215E828
	mov r8, #0
	add r2, sp, #0x38
	add r5, sp, #0xc
_0215E8AC:
	add r7, r8, #1
	cmp r7, #0xb
	bge _0215E8EC
_0215E8B8:
	ldr r4, [r5, r7, lsl #2]
	ldr r3, [r5, r8, lsl #2]
	cmp r3, r4
	ble _0215E8E0
	ldr r1, [r2, r7, lsl #2]
	ldr r0, [r2, r8, lsl #2]
	str r3, [r5, r7, lsl #2]
	str r0, [r2, r7, lsl #2]
	str r4, [r5, r8, lsl #2]
	str r1, [r2, r8, lsl #2]
_0215E8E0:
	add r7, r7, #1
	cmp r7, #0xb
	blt _0215E8B8
_0215E8EC:
	add r8, r8, #1
	cmp r8, #0xa
	blt _0215E8AC
	ldr r0, [sp, #8]
	add r2, sp, #0x38
	ldr r0, [r2, r0, lsl #2]
	mvn r1, #0
	cmp r0, r1
	ldrne r0, [sp, #8]
	addne r2, sp, #0xc
	ldrne r0, [r2, r0, lsl #2]
	subne r1, r1, #0x80000000
	cmpne r0, r1
	moveq r0, #0
	streq r0, [sp, #8]
	cmp r6, #0
	addeq sp, sp, #0xe4
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [sp, #8]
	addne r1, sp, #0x38
	ldrne r1, [r1, r0, lsl #2]
	ldrne r0, [sp]
	strne r1, [r0]
	mov r0, #1
	add sp, sp, #0xe4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215E960: .word unk_02099EF0
	arm_func_end FUN_ov132_0215e6fc

	arm_func_start FUN_ov132_0215e964
FUN_ov132_0215e964: ; 0x0215E964
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	add r6, sp, #4
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
	beq _0215E9B8
	cmp r1, #1
	beq _0215E9E0
	b _0215EA18
_0215E9B8:
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_0203d734
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #0xc]
	b _0215EA10
_0215E9E0:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	bl FUN_0203d914
	cmp r0, #0
	beq _0215EA04
	ldr r0, [r7]
	bl FUN_0203cb90
	cmp r0, #0
	beq _0215EA18
_0215EA04:
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
_0215EA10:
	add r0, r1, #1
	strb r0, [r5, #0xb]
_0215EA18:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov132_0215e964

	arm_func_start FUN_ov132_0215ea30
FUN_ov132_0215ea30: ; 0x0215EA30
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
	ldr r1, _0215EAB4 ; =0x02099EF0
	str r0, [r6, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _0215EA8C
	bl FUN_ov126_0213246c
	cmp r0, #0
	ldrneb r4, [r0, #0x15]
_0215EA8C:
	ldrsb r0, [r6, #0xb]
	mov r1, #1
	strb r1, [r6, #0xa]
	add r0, r0, #1
	strb r0, [r6, #0xb]
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215EAB4: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ea30

	arm_func_start FUN_ov132_0215eab8
FUN_ov132_0215eab8: ; 0x0215EAB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	add r4, sp, #4
	mov r5, r0
	mov r9, r2
	mov r8, #0
	mov r10, r1
	mov r0, r4
	mov r1, r8
	mov r2, #0x80
	mov r7, #1
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r10
	mov r2, r4
	bl FUN_ov16_020febf8
	ldr r4, _0215EBDC ; =0x02099EF0
	str r0, [r10, #4]
	ldr r0, [r4]
	cmp r0, #0
	beq _0215EB18
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _0215EB40
_0215EB18:
	ldrsb r0, [r10, #0xb]
	strb r7, [r10, #0xa]
	cmp r9, #0
	add r0, r0, #1
	strb r0, [r10, #0xb]
	ldrnesb r0, [r10, #0xa]
	add sp, sp, #0x84
	strne r0, [r9]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215EB40:
	ldr r11, _0215EBE0 ; =0x02099F14
	b _0215EBAC
_0215EB48:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov126_0213922c
	movs r6, r0
	beq _0215EBA8
	ldr r0, _0215EBE4 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204fb20
	movs r5, r0
	beq _0215EBA8
	mov r0, r6
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, [r4]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl FUN_ov126_02139c58
	ldrb r3, [r5, #0x24]
	ldr r0, [r6, #0x84]
	mov r1, r6
	ldrb r2, [r0, #0x1d]
	str r7, [sp]
	ldr r0, [r11]
	bl FUN_ov1_020e3c14
_0215EBA8:
	add r8, r8, #1
_0215EBAC:
	cmp r8, #0x16
	blt _0215EB48
	ldrsb r0, [r10, #0xb]
	strb r7, [r10, #0xa]
	cmp r9, #0
	add r0, r0, #1
	strb r0, [r10, #0xb]
	ldrnesb r0, [r10, #0xa]
	strne r0, [r9]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0215EBDC: .word unk_02099EF0
_0215EBE0: .word unk_02099F14
_0215EBE4: .word unk_0209BA20
	arm_func_end FUN_ov132_0215eab8

	arm_func_start FUN_ov132_0215ebe8
FUN_ov132_0215ebe8: ; 0x0215EBE8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r4, r2
	mov r7, #0
	mov r5, r1
	mov r0, r6
	mov r1, r7
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	str r0, [r5, #4]
	ldr r0, [sp]
	mov r2, #1
	cmp r0, #1
	moveq r7, #1
	ldr r0, [sp, #4]
	mov r1, r7
	cmp r0, #1
	ldr r0, [r8]
	movne r2, #0
	bl FUN_0203ba04
	mov r0, #1
	ldrsb r1, [r5, #0xb]
	strb r0, [r5, #0xa]
	cmp r4, #0
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0215ebe8

	arm_func_start FUN_ov132_0215ec7c
FUN_ov132_0215ec7c: ; 0x0215EC7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xa8
	add r7, sp, #0x28
	mov r6, r0
	mov r8, #0
	mov r5, r1
	mov r4, #0x80
	mov r9, r2
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020febf8
	mov r1, #1
	str r0, [r5, #4]
	ldrsb r2, [r5, #0xb]
	strb r1, [r5, #0xa]
	sub r0, r1, #3
	add r1, r2, #1
	strb r1, [r5, #0xb]
	ldr r1, [sp, #0x2c]
	cmp r1, r0
	bne _0215ED58
	bl FUN_ov16_020f083c
	str r8, [sp]
	ldr r2, _0215EDA0 ; =0x02099EF0
	str r4, [sp, #4]
	mov r1, r0
	add r6, sp, #8
	ldr r0, [r2]
	mov r2, r6
	mov r3, #0x10
	bl FUN_ov126_02138d98
	mov r7, r0
	cmp r7, #0
	ble _0215ED88
	ldr r4, _0215EDA4 ; =0x0209BA20
	mov r5, r8
_0215ED20:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	mov r0, r8, lsl #1
	ldrne r2, [sp, #0x30]
	ldrh r1, [r6, r0]
	moveq r2, r5
	mov r0, r4
	bl FUN_0204af94
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	cmp r7, r0, asr #16
	mov r8, r0, asr #0x10
	bgt _0215ED20
	b _0215ED88
_0215ED58:
	mov r0, r6
	bl FUN_ov16_0210c768
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r1, #0
	ldr r1, [sp, #0x2c]
	ldrne r8, [sp, #0x30]
	mov r1, r1, lsl #0x10
	ldr r0, _0215EDA4 ; =0x0209BA20
	mov r2, r8
	mov r1, r1, lsr #0x10
	bl FUN_0204af94
_0215ED88:
	cmp r9, #0
	movne r0, #1
	strne r0, [r9]
	mov r0, #1
	add sp, sp, #0xa8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0215EDA0: .word unk_02099EF0
_0215EDA4: .word unk_0209BA20
	arm_func_end FUN_ov132_0215ec7c

	arm_func_start FUN_ov132_0215eda8
FUN_ov132_0215eda8: ; 0x0215EDA8
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
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020febf8
	mov r1, #1
	str r0, [r5, #4]
	ldrsb r2, [r5, #0xb]
	strb r1, [r5, #0xa]
	mov r0, r6
	add r1, r2, #1
	strb r1, [r5, #0xb]
	ldr r1, [sp, #4]
	bl FUN_ov16_0210c768
	mov r1, r7
	str r0, [sp, #4]
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0215EE38
	ldr r1, [sp]
	cmp r1, #0
	mov r1, #0x4000
	beq _0215EE34
	bl FUN_0206dac4
	b _0215EE38
_0215EE34:
	bl FUN_0206dadc
_0215EE38:
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov132_0215eda8

	arm_func_start FUN_ov132_0215ee50
FUN_ov132_0215ee50: ; 0x0215EE50
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
	ldr r2, [sp, #4]
	ldr r0, _0215EEC4 ; =0x0209BA20
	bl FUN_0204af64
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215EEC4: .word unk_0209BA20
	arm_func_end FUN_ov132_0215ee50

	arm_func_start FUN_ov132_0215eec8
FUN_ov132_0215eec8: ; 0x0215EEC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x84
	add r9, sp, #4
	mov r8, r0
	mov r7, r2
	mov r5, #0
	mov r4, r1
	mov r0, r9
	mov r1, r5
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r4
	mov r2, r9
	bl FUN_ov16_020febf8
	str r0, [r4, #4]
	mov r0, #1
	ldrsb r1, [r4, #0xb]
	strb r0, [r4, #0xa]
	add r0, r1, #1
	strb r0, [r4, #0xb]
	ldr r1, [sp, #4]
	ldr r0, _0215F018 ; =0x0209BA20
	bl FUN_0204a2c4
	movs r4, r0
	beq _0215F004
	ldrb r0, [r4, #0x13]
	tst r0, #6
	bne _0215EF44
	tst r0, #8
	beq _0215EFA8
_0215EF44:
	ldr r5, _0215F01C ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _0215EF60
	ldr r0, [r5]
	b _0215EF80
_0215EF60:
	ldrb r0, [r4, #0x13]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _0215EF88
	ldr r0, _0215F01C ; =0x02099EF0
	ldr r0, [r0]
_0215EF80:
	bl FUN_ov126_0213777c
	b _0215EF98
_0215EF88:
	ldr r0, _0215F01C ; =0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_ov126_021377f8
_0215EF98:
	mov r6, r0
	ldrb r5, [r6, #0x2e]
	ldrb r0, [r6, #0x2f]
	b _0215EFAC
_0215EFA8:
	mov r0, r5
_0215EFAC:
	cmp r5, #1
	ldreq r5, [r4, #0x20]
	beq _0215F004
	cmp r0, #1
	ldrne r5, [r4, #0x1c]
	bne _0215F004
	ldrsb r0, [r6, #0x24]
	bl FUN_ov16_020efa80
	bl FUN_0206cc00
	mov r4, r0
	ldrsb r0, [r6, #0x20]
	ldrsh r5, [r6, #0x26]
	bl FUN_ov16_020efa80
	bl FUN_0206cc00
	ldrsh r3, [r6, #0x22]
	mov r1, r4
	mov r2, r5
	str r3, [sp]
	mov r3, r0
	mov r0, r8
	bl FUN_ov132_0215f020
	mov r5, r0
_0215F004:
	cmp r7, #0
	strne r5, [r7]
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0215F018: .word unk_0209BA20
_0215F01C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215eec8

	arm_func_start FUN_ov132_0215f020
FUN_ov132_0215f020: ; 0x0215F020
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _0215F0A8 ; =0x0209BA20
	mov r10, r1
	mov r0, r4
	mov r9, r2
	mov r8, r3
	ldr r7, [sp, #0x20]
	bl FUN_02071c18
	mov r6, r0
	cmp r6, #0
	mov r5, #0
	ble _0215F094
_0215F050:
	mov r0, r4
	and r1, r5, #0xff
	bl FUN_02071bd8
	ldrsh r1, [r0]
	ldrsh r3, [r0, #2]
	ldrsh r2, [r0, #4]
	cmp r10, r1
	ldrsh r1, [r0, #6]
	cmpeq r9, r3
	ldr r0, [r0, #8]
	cmpeq r8, r2
	bne _0215F088
	cmp r7, r1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0215F088:
	add r5, r5, #1
	cmp r5, r6
	blt _0215F050
_0215F094:
	ldr r0, _0215F0A8 ; =0x0209BA20
	mov r1, r7
	bl FUN_0204a2c4
	ldr r0, [r0, #0x20]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0215F0A8: .word unk_0209BA20
	arm_func_end FUN_ov132_0215f020

	arm_func_start FUN_ov132_0215f0ac
FUN_ov132_0215f0ac: ; 0x0215F0AC
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215F12C ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldr r0, [r0, #8]
	cmp r4, #0
	mov r0, r0, asr #0xc
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F12C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f0ac

	arm_func_start FUN_ov132_0215f130
FUN_ov132_0215f130: ; 0x0215F130
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215F1B0 ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldr r0, [r0, #0x18]
	cmp r4, #0
	mov r0, r0, asr #0xc
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F1B0: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f130

	arm_func_start FUN_ov132_0215f1b4
FUN_ov132_0215f1b4: ; 0x0215F1B4
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
	mov r2, #1
	ldrsb r3, [r5, #0xb]
	strb r2, [r5, #0xa]
	ldr r1, _0215F248 ; =0x02099EF0
	add r2, r3, #1
	strb r2, [r5, #0xb]
	str r0, [r5, #4]
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov132_02143114
	ldrb r0, [r0, #0x27]
	mov r0, r0, lsl #8
	orr r0, r0, #0x7f
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov16_020efd3c
	add r0, r0, #1
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F248: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f1b4

	arm_func_start FUN_ov132_0215f24c
FUN_ov132_0215f24c: ; 0x0215F24C
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
	mov r5, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r5, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r1, [sp]
	ldr r0, _0215F2C8 ; =0x02099EF0
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov126_02139af0
	cmp r4, #0
	strne r5, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215F2C8: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f24c

	arm_func_start FUN_ov132_0215f2cc
FUN_ov132_0215f2cc: ; 0x0215F2CC
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
	ldr r1, _0215F33C ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov132_02145374
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215F33C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f2cc

	arm_func_start FUN_ov132_0215f340
FUN_ov132_0215f340: ; 0x0215F340
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
	ldr r1, _0215F3B0 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov132_02145394
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215F3B0: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f340

	arm_func_start FUN_ov132_0215f3b4
FUN_ov132_0215f3b4: ; 0x0215F3B4
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
	ldr r1, _0215F424 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov132_0214538c
	cmp r5, #0
	strne r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215F424: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f3b4

	arm_func_start FUN_ov132_0215f428
FUN_ov132_0215f428: ; 0x0215F428
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
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _0215F498 ; =0x02099F14
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	cmp r4, #0
	ldr r0, [r0, #0x20]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215F498: .word unk_02099F14
	arm_func_end FUN_ov132_0215f428

	arm_func_start FUN_ov132_0215f49c
FUN_ov132_0215f49c: ; 0x0215F49C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r7, r0
	mov r4, r2
	mov r8, #0
	mov r5, r1
	mov r0, r6
	mov r1, r8
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	mov r7, #1
	ldr r6, _0215F530 ; =0x020A9C40
	add r1, r1, #1
	strb r1, [r5, #0xb]
	str r0, [r5, #4]
	mov r0, r6
	mov r1, r8
	strb r7, [r5, #0xa]
	bl FUN_020463c4
	ldr r0, _0215F534 ; =0x02099F14
	ldr r1, [sp]
	ldr r0, [r0]
	bl FUN_ov1_020e4304
	mov r0, r6
	mov r1, r7
	bl FUN_020463c4
	cmp r4, #0
	strne r7, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F530: .word unk_020A9C40
_0215F534: .word unk_02099F14
	arm_func_end FUN_ov132_0215f49c

	arm_func_start FUN_ov132_0215f538
FUN_ov132_0215f538: ; 0x0215F538
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
	mov r1, #1
	ldrsb r2, [r7, #0xb]
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, _0215F5B8 ; =0x020A9C40
	moveq r1, r4
	bl FUN_020463c4
	cmp r6, #0
	movne r0, #1
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F5B8: .word unk_020A9C40
	arm_func_end FUN_ov132_0215f538

	arm_func_start FUN_ov132_0215f5bc
FUN_ov132_0215f5bc: ; 0x0215F5BC
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
	ldr r0, _0215F62C ; =0x0209BA20
	bl FUN_020726c8
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215F62C: .word unk_0209BA20
	arm_func_end FUN_ov132_0215f5bc

	arm_func_start FUN_ov132_0215f630
FUN_ov132_0215f630: ; 0x0215F630
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
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, _0215F6B4 ; =0x02099EF0
	moveq r1, r5
	ldr r0, [r0]
	bl FUN_ov132_0214519c
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F6B4: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f630

	arm_func_start FUN_ov132_0215f6b8
FUN_ov132_0215f6b8: ; 0x0215F6B8
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
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, _0215F73C ; =0x02099EF0
	moveq r1, r5
	ldr r0, [r0]
	bl FUN_ov132_021451a4
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F73C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f6b8

	arm_func_start FUN_ov132_0215f740
FUN_ov132_0215f740: ; 0x0215F740
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, r2
	add r2, sp, #0
	mov r6, r1
	mov r4, #0
	bl FUN_ov16_020febf8
	ldrsb r3, [r6, #0xb]
	mov r2, #1
	ldr r1, _0215F7B4 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0215F7A0
	ldr r1, [sp]
	cmp r1, #1
	ldreqsb r4, [r0]
	beq _0215F7A0
	cmp r1, #2
	ldreqsb r4, [r0, #1]
_0215F7A0:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0215F7B4: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f740

	arm_func_start FUN_ov132_0215f7b8
FUN_ov132_0215f7b8: ; 0x0215F7B8
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
	str r0, [r7, #4]
	strb r1, [r7, #0xa]
	add r0, r2, #1
	strb r0, [r7, #0xb]
	ldr r1, [sp]
	ldr r0, _0215F838 ; =0x0209BA20
	bl FUN_0204b0ac
	cmp r6, #0
	beq _0215F82C
	cmp r0, #0
	ldrne r5, [r0, #0x10]
	str r5, [r6]
_0215F82C:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F838: .word unk_0209BA20
	arm_func_end FUN_ov132_0215f7b8

	arm_func_start FUN_ov132_0215f83c
FUN_ov132_0215f83c: ; 0x0215F83C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	mov r5, #1
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020febf8
	ldrsb r2, [r7, #0xb]
	ldr r1, _0215F8C4 ; =0x02099EF0
	strb r5, [r7, #0xa]
	add r2, r2, #1
	strb r2, [r7, #0xb]
	str r0, [r7, #4]
	ldr r0, [r1]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0215F8B0
	bl FUN_ov132_0215a3ec
	bl FUN_ov16_020f0a14
	cmp r0, #0
	moveq r5, #2
_0215F8B0:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F8C4: .word unk_02099EF0
	arm_func_end FUN_ov132_0215f83c

	arm_func_start FUN_ov132_0215f8c8
FUN_ov132_0215f8c8: ; 0x0215F8C8
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
	ldr r1, [sp]
	ldr r0, _0215F95C ; =0x0209BA20
	bl FUN_0204b0ac
	cmp r6, #0
	beq _0215F950
	cmp r0, #0
	beq _0215F948
	ldrb r0, [r0, #2]
	cmp r0, #2
	movne r5, r4
	b _0215F94C
_0215F948:
	mov r5, r4
_0215F94C:
	str r5, [r6]
_0215F950:
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215F95C: .word unk_0209BA20
	arm_func_end FUN_ov132_0215f8c8

	arm_func_start FUN_ov132_0215f960
FUN_ov132_0215f960: ; 0x0215F960
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020febf8
	str r0, [r7, #4]
	ldr r0, [sp]
	cmp r0, #1
	bne _0215F9B0
	bl FUN_ov16_020f081c
	b _0215F9B4
_0215F9B0:
	bl FUN_ov16_020f083c
_0215F9B4:
	mov r4, r0
	ldr r0, _0215FA88 ; =0x02099EF0
	ldr r5, [sp, #4]
	ldr r0, [r0]
	bl FUN_ov132_02159d70
	strb r4, [r0, #2]
	strb r5, [r0]
	cmp r4, #0
	mov r2, #0
	ldrb r1, [r0, #4]
	mov r4, #1
	moveq r2, #1
	orr r1, r1, r4, lsl r2
	and r1, r1, #0xff
	ldr r9, _0215FA88 ; =0x02099EF0
	strb r4, [r0, #3]
	orr r1, r1, #0x40
	strb r1, [r0, #4]
	ldr r0, [r9]
	mov r1, #0x14
	bl FUN_ov132_021447f4
	ldr r0, [r9]
	mov r1, #6
	bl FUN_ov132_021447d0
	ldr r0, _0215FA8C ; =0x0209BA20
	mov r1, r5
	bl FUN_0204b0ac
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0215FA5C
	ldr r0, [r9]
	mov r1, r4
	bl FUN_ov132_02148ad8
	ldr r0, [r9]
	mov r1, #2
	bl FUN_ov132_02148ba4
	ldr r0, [r9]
	mov r1, r4
	bl FUN_ov132_02147df8
	ldr r0, [r8]
	mov r1, #0
	bl FUN_0203cb74
_0215FA5C:
	ldrsb r0, [r7, #0xb]
	mov r1, #1
	strb r1, [r7, #0xa]
	add r0, r0, #1
	strb r0, [r7, #0xb]
	cmp r6, #0
	ldrnesb r0, [r7, #0xa]
	strne r0, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0215FA88: .word unk_02099EF0
_0215FA8C: .word unk_0209BA20
	arm_func_end FUN_ov132_0215f960

	arm_func_start FUN_ov132_0215fa90
FUN_ov132_0215fa90: ; 0x0215FA90
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	add r6, sp, #0
	mov r8, r0
	mov r4, r2
	mov r7, #0
	mov r5, r1
	mov r0, r6
	mov r1, r7
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020febf8
	ldr r6, _0215FB2C ; =0x02099EF0
	str r0, [r5, #4]
	ldr r0, [r6]
	mov r1, r7
	bl FUN_ov132_02147df8
	ldr r0, [r6]
	bl FUN_ov132_02159840
	ldr r0, [r8]
	mov r1, r7
	bl FUN_0203cb74
	ldr r0, [r6]
	mov r1, r7
	bl FUN_ov132_021447f4
	mov r0, #1
	strb r0, [r5, #0xa]
	ldrsb r0, [r5, #0xb]
	cmp r4, #0
	add r0, r0, #1
	strb r0, [r5, #0xb]
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215FB2C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215fa90

	arm_func_start FUN_ov132_0215fb30
FUN_ov132_0215fb30: ; 0x0215FB30
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r4, r2
	add r2, sp, #0
	mov r5, r1
	mov r6, r0
	bl FUN_ov16_020febf8
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	cmp r1, #0
	beq _0215FB68
	cmp r1, #1
	beq _0215FB7C
	b _0215FBA8
_0215FB68:
	ldr r0, [r6]
	bl FUN_0203dc00
	ldrsb r0, [r5, #0xb]
	add r0, r0, #1
	b _0215FBA4
_0215FB7C:
	ldr r0, [r6]
	bl FUN_0203de48
	cmp r0, #0
	beq _0215FBA8
	ldr r0, [r6]
	bl FUN_0203ddd4
	ldrsb r1, [r5, #0xb]
	mov r0, #1
	strb r0, [r5, #0xa]
	add r0, r1, #1
_0215FBA4:
	strb r0, [r5, #0xb]
_0215FBA8:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_0215fb30

	arm_func_start FUN_ov132_0215fbc0
FUN_ov132_0215fbc0: ; 0x0215FBC0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r4, r2
	add r2, sp, #0
	mov r5, r1
	bl FUN_ov16_020febf8
	mov r2, #1
	ldrsb r1, [r5, #0xb]
	str r0, [r5, #4]
	strb r2, [r5, #0xa]
	add r0, r1, #1
	strb r0, [r5, #0xb]
	ldr r1, [sp]
	sub r0, r2, #2
	cmp r1, r0
	ldr r0, _0215FC24 ; =0x02099EF0
	moveq r2, #0
	ldr r0, [r0]
	cmp r4, #0
	strb r2, [r0, #0x376]
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_0215FC24: .word unk_02099EF0
	arm_func_end FUN_ov132_0215fbc0

	arm_func_start FUN_ov132_0215fc28
FUN_ov132_0215fc28: ; 0x0215FC28
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
	ldrsb r2, [r7, #0xb]
	mov r5, #1
	ldr r1, _0215FCC4 ; =0x02099EF0
	add r2, r2, #1
	strb r2, [r7, #0xb]
	strb r5, [r7, #0xa]
	str r0, [r7, #4]
	ldr r0, [r1]
	bl FUN_ov126_0213246c
	ldrb r0, [r0, #0x12]
	tst r0, #1
	moveq r5, r4
	cmp r5, #0
	beq _0215FCB0
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r4, #1
_0215FCB0:
	cmp r6, #0
	strne r4, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215FCC4: .word unk_02099EF0
	arm_func_end FUN_ov132_0215fc28

	arm_func_start FUN_ov132_0215fcc8
FUN_ov132_0215fcc8: ; 0x0215FCC8
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
	ldr r1, _0215FD44 ; =0x0209A2C0
	add r2, r2, #1
	strb r2, [r6, #0xb]
	strb r4, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1, #0x4c]
	bl FUN_ov16_020f07f4
	ldr r2, _0215FD48 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov126_02136ec0
	str r0, [r5]
	mov r0, r4
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215FD44: .word unk_0209A2C0
_0215FD48: .word unk_02099EF0
	arm_func_end FUN_ov132_0215fcc8

	arm_func_start FUN_ov132_0215fd4c
FUN_ov132_0215fd4c: ; 0x0215FD4C
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
	ldr r1, _0215FDE0 ; =0x02099EF0
	add r3, r3, #1
	strb r3, [r6, #0xb]
	strb r2, [r6, #0xa]
	str r0, [r6, #4]
	ldr r0, [r1]
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xd]
	cmp r0, #0
	blt _0215FDC0
	bl FUN_ov16_020f07f4
	mov r4, r0
_0215FDC0:
	ldr r0, _0215FDE0 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov126_02136ec0
	str r0, [r5]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215FDE0: .word unk_02099EF0
	arm_func_end FUN_ov132_0215fd4c

	arm_func_start FUN_ov132_0215fde4
FUN_ov132_0215fde4: ; 0x0215FDE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	add r5, sp, #0
	mov r6, r0
	mov r7, r1
	mov r4, r2
	mov r0, r5
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_020febf8
	ldrsb r1, [r7, #0xb]
	mov r6, #1
	ldr r5, _0215FEC4 ; =0x02099EF0
	add r1, r1, #1
	strb r1, [r7, #0xb]
	strb r6, [r7, #0xa]
	str r0, [r7, #4]
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldr r0, [r5]
	mov r1, r6
	beq _0215FE54
	b _0215FE54
_0215FE54:
	bl FUN_ov126_021377f8
	ldr r1, _0215FEC8 ; =0x020A0640
	ldrb r2, [r0, #0x29]
	ldrb r0, [r1, #0x1a]
	mov r1, r2, lsl #0x18
	cmp r0, #0
	mov r6, r1, lsr #0x1c
	beq _0215FEA4
	ldr r0, _0215FECC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _0215FEA4
	ldr r5, _0215FEC4 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _0215FEA4
	ldr r0, [r5]
	bl FUN_ov126_021378f4
	and r6, r0, #0xff
_0215FEA4:
	mov r0, #1
	cmp r6, #5
	movne r0, #0
	cmp r4, #0
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0215FEC4: .word unk_02099EF0
_0215FEC8: .word unk_020A0640
_0215FECC: .word unk_0209AEC0
	arm_func_end FUN_ov132_0215fde4

	arm_func_start FUN_ov132_0215fed0
FUN_ov132_0215fed0: ; 0x0215FED0
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
	ldr r8, _0215FF70 ; =0x02099EF0
	add r1, r1, #1
	strb r1, [r7, #0xb]
	strb r4, [r7, #0xa]
	str r0, [r7, #4]
	ldr r0, [r8]
	bl FUN_ov132_021434f8
	ldr r0, [r8]
	bl FUN_ov126_0213777c
	ldrb r0, [r0, #0x29]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1c
	beq _0215FF5C
	cmp r0, #3
	moveq r5, r4
	beq _0215FF5C
	cmp r0, #4
	moveq r5, #2
_0215FF5C:
	cmp r6, #0
	strne r5, [r6]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0215FF70: .word unk_02099EF0
	arm_func_end FUN_ov132_0215fed0

	arm_func_start FUN_ov132_0215ff74
FUN_ov132_0215ff74: ; 0x0215FF74
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r4, r2
	add r2, sp, #0
	mov r6, r1
	bl FUN_ov16_020febf8
	mov r5, #1
	ldrsb r1, [r6, #0xb]
	str r0, [r6, #4]
	strb r5, [r6, #0xa]
	add r0, r1, #1
	strb r0, [r6, #0xb]
	ldr r0, [sp]
	cmp r0, #1
	bne _0215FFB8
	bl FUN_ov16_020f081c
	b _0215FFBC
_0215FFB8:
	bl FUN_ov16_020f083c
_0215FFBC:
	ldr r2, [sp, #4]
	mov r1, r0
	cmp r2, #0
	bge _0215FFEC
	ldr r0, [sp, #8]
	mov r2, #1
	cmp r0, #1
	ldr r0, _0216001C ; =0x02099EF0
	movne r2, #0
	ldr r0, [r0]
	bl FUN_ov132_0215a394
	b _02160008
_0215FFEC:
	ldr r0, [sp, #8]
	mov r3, #1
	cmp r0, #1
	ldr r0, _0216001C ; =0x02099EF0
	movne r3, #0
	ldr r0, [r0]
	bl FUN_ov132_0215a330
_02160008:
	cmp r4, #0
	strne r5, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0216001C: .word unk_02099EF0
	arm_func_end FUN_ov132_0215ff74

	arm_func_start FUN_ov132_02160020
FUN_ov132_02160020: ; 0x02160020
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r4, r2
	add r2, sp, #0
	mov r5, r1
	mov r6, r0
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r5, #0xb]
	str r0, [r5, #4]
	strb r1, [r5, #0xa]
	add r0, r2, #1
	strb r0, [r5, #0xb]
	ldr r0, [sp]
	cmp r0, #1
	ldr r0, [r6]
	movne r1, #0
	bl FUN_0203cb74
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov132_02160020

	arm_func_start FUN_ov132_02160080
FUN_ov132_02160080: ; 0x02160080
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r4, r2
	add r2, sp, #0
	mov r5, r1
	bl FUN_ov16_020febf8
	mov r1, #1
	ldrsb r2, [r5, #0xb]
	str r0, [r5, #4]
	strb r1, [r5, #0xa]
	add r0, r2, #1
	strb r0, [r5, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, _021600E0 ; =0x02099EF0
	moveq r1, #0
	ldr r0, [r0]
	bl FUN_ov132_02149c80
	cmp r4, #0
	movne r0, #1
	strne r0, [r4]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_021600E0: .word unk_02099EF0
	arm_func_end FUN_ov132_02160080

	arm_func_start FUN_ov132_021600e4
FUN_ov132_021600e4: ; 0x021600E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0216013C ; =0x021602C0
	str r0, [r4, #0x1c]
	ldr r0, _02160140 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x18]
	ldr r0, _02160144 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	mov r0, #0x1a
	str r0, [r4, #4]
	mov r0, #0x500
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0216013C: .word ov132_021602C0
_02160140: .word 0x00009CCD
_02160144: .word 0x0000EA3C
	arm_func_end FUN_ov132_021600e4

	arm_func_start FUN_ov132_02160148
FUN_ov132_02160148: ; 0x02160148
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0216018C ; =0x021603D4
	str r0, [r4, #0x10]
	ldr r0, _02160190 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02160194 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0216018C: .word ov132_021603D4
_02160190: .word 0x00009CCD
_02160194: .word 0x0000EA3C
	arm_func_end FUN_ov132_02160148

	arm_func_start FUN_ov132_02160198
FUN_ov132_02160198: ; 0x02160198
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021601E0 ; =0x02160428
	str r0, [r4, #0x14]
	ldr r0, _021601E4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _021601E8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_021601E0: .word ov132_02160428
_021601E4: .word 0x00009CCD
_021601E8: .word 0x0000EA3C
	arm_func_end FUN_ov132_02160198

	arm_func_start FUN_ov132_021601ec
FUN_ov132_021601ec: ; 0x021601EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02160230 ; =0x02160478
	str r0, [r4, #0x10]
	ldr r0, _02160234 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02160238 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02160230: .word ov132_02160478
_02160234: .word 0x00009CCD
_02160238: .word 0x0000EA3C
	arm_func_end FUN_ov132_021601ec

	arm_func_start FUN_ov132_0216023c
FUN_ov132_0216023c: ; 0x0216023C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02160280 ; =0x02160490
	str r0, [r4, #0x10]
	ldr r0, _02160284 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02160288 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02160280: .word ov132_02160490
_02160284: .word 0x00009CCD
_02160288: .word 0x0000EA3C
	arm_func_end FUN_ov132_0216023c

	.section .sinit, 4
ov132_0216028C:
	.word FUN_ov132_021600e4
	.word FUN_ov132_02160148
	.word FUN_ov132_02160198
	.word FUN_ov132_021601ec
	.word FUN_ov132_0216023c

	.data
	.global ov132_021602C0
ov132_021602C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov132_021602E8
ov132_021602E8:
	.byte 0x04, 0xAE, 0x13, 0x02, 0x24, 0xAE, 0x13, 0x02
	.global ov132_021602F0
ov132_021602F0:
	.byte 0x48, 0x45, 0x41, 0x54, 0x55, 0x50, 0x5F, 0x52, 0x45, 0x4D, 0x41, 0x49, 0x4E, 0x5F, 0x4D, 0x41
	.byte 0x58, 0x00, 0x00, 0x00
	.global ov132_02160304
ov132_02160304:
	.byte 0x4C, 0x4F, 0x47, 0x49, 0x43, 0x5F, 0x4D, 0x4F, 0x56, 0x45, 0x5F, 0x53
	.byte 0x54, 0x45, 0x50, 0x00
	.global ov132_02160314
ov132_02160314:
	.byte 0x4C, 0x4F, 0x47, 0x49, 0x43, 0x5F, 0x42, 0x41, 0x4C, 0x4C, 0x5F, 0x53
	.byte 0x54, 0x45, 0x50, 0x00
	.global ov132_02160324
ov132_02160324:
	.byte 0x4C, 0x4F, 0x47, 0x49, 0x43, 0x5F, 0x4D, 0x4F, 0x56, 0x45, 0x5F, 0x41
	.byte 0x44, 0x44, 0x5F, 0x53, 0x54, 0x45, 0x50, 0x00
	.global ov132_02160338
ov132_02160338:
	.byte 0x45, 0x58, 0x45, 0x43, 0x5F, 0x52, 0x45, 0x50
	.byte 0x4C, 0x41, 0x59, 0x00
	.global ov132_02160344
ov132_02160344:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x53, 0x42, 0x5F, 0x41, 0x52, 0x45
	.byte 0x41, 0x5F, 0x41, 0x4E, 0x47, 0x4C, 0x45, 0x5F, 0x4D, 0x41, 0x58, 0x00
	.global ov132_0216035C
ov132_0216035C:
	.byte 0x4D, 0x41, 0x54, 0x43
	.byte 0x48, 0x5F, 0x53, 0x42, 0x5F, 0x41, 0x52, 0x45, 0x41, 0x5F, 0x41, 0x4E, 0x47, 0x4C, 0x45, 0x5F
	.byte 0x4D, 0x49, 0x4E, 0x00
	.global ov132_02160374
ov132_02160374:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x53, 0x42, 0x5F, 0x41, 0x52, 0x45
	.byte 0x41, 0x5F, 0x48, 0x4F, 0x53, 0x45, 0x49, 0x5F, 0x50, 0x45, 0x52, 0x00
	.global ov132_0216038C
ov132_0216038C:
	.byte 0x4D, 0x41, 0x54, 0x43
	.byte 0x48, 0x5F, 0x53, 0x43, 0x5F, 0x41, 0x52, 0x45, 0x41, 0x5F, 0x41, 0x4E, 0x47, 0x4C, 0x45, 0x5F
	.byte 0x4D, 0x41, 0x58, 0x00
	.global ov132_021603A4
ov132_021603A4:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x53, 0x43, 0x5F, 0x41, 0x52, 0x45
	.byte 0x41, 0x5F, 0x41, 0x4E, 0x47, 0x4C, 0x45, 0x5F, 0x4D, 0x49, 0x4E, 0x00
	.global ov132_021603BC
ov132_021603BC:
	.byte 0x4D, 0x41, 0x54, 0x43
	.byte 0x48, 0x5F, 0x53, 0x43, 0x5F, 0x41, 0x52, 0x45, 0x41, 0x5F, 0x48, 0x4F, 0x53, 0x45, 0x49, 0x5F
	.byte 0x50, 0x45, 0x52, 0x00
	.global ov132_021603D4
ov132_021603D4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov132_021603EC
ov132_021603EC:
	.byte 0x4D, 0x41, 0x54, 0x43
	.byte 0x48, 0x5F, 0x53, 0x43, 0x5F, 0x48, 0x4F, 0x53, 0x45, 0x49, 0x5F, 0x50, 0x45, 0x52, 0x00, 0x00
	.global ov132_02160400
ov132_02160400:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x53, 0x43, 0x5F, 0x48, 0x4F, 0x53, 0x45, 0x49, 0x5F, 0x50
	.byte 0x45, 0x52, 0x00, 0x00
	.global ov132_02160414
ov132_02160414:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x53, 0x43, 0x5F, 0x48, 0x4F, 0x53
	.byte 0x45, 0x49, 0x5F, 0x50, 0x45, 0x52, 0x00, 0x00
	.global ov132_02160428
ov132_02160428:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov132_02160448
ov132_02160448:
	.byte 0xBC, 0x89, 0x15, 0x02, 0xC0, 0x89, 0x15, 0x02
	.byte 0xDC, 0x89, 0x15, 0x02, 0xAC, 0x8B, 0x15, 0x02, 0x50, 0x8E, 0x15, 0x02, 0xCC, 0x90, 0x15, 0x02
	.byte 0x78, 0x92, 0x15, 0x02, 0x6C, 0x91, 0x15, 0x02, 0x64, 0x92, 0x15, 0x02, 0x44, 0x91, 0x15, 0x02
	.byte 0x58, 0x91, 0x15, 0x02, 0xBC, 0x94, 0x15, 0x02
	.global ov132_02160478
ov132_02160478:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov132_02160490
ov132_02160490:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

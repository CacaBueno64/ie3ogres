
	.include "/macros/function.inc"
	.include "/include/overlay86.inc"

	.text
	arm_func_start FUN_ov86_02119f00
FUN_ov86_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r5, #0x1e
	ldr r0, [r4, #0x944]
	mov r1, r5
	bl  FUN_ov16_02110864
	ldr r0, [r4, #0x944]
	mov r1, #4
	mov r2, #0x10
	mov r3, #0x11
	bl  FUN_ov16_02110830
	ldr r0, [r4, #0x944]
	mov r1, r5
	bl  FUN_ov16_0211085c
	mov r8, #0
	ldr r0, [r4, #0x944]
	ldr r2, [r4, #0x50c]
	mov r1, r8
	bl  FUN_ov16_02110624
	mov r7, #1
	str r7, [sp]
	sub r6, r7, #2
	str r6, [sp, #4]
	ldr r0, [r4, #0x944]
	ldr r3, [r4, #0x50c]
	mov r1, r7
	mov r2, r8
	bl  FUN_ov16_021107a0
	str r8, [sp]
	str r6, [sp, #4]
	ldr r0, [r4, #0x944]
	ldr r3, [r4, #0x510]
	mov r1, r7
	mov r2, r7
	bl  FUN_ov16_021107a0
	str r7, [sp]
	str r6, [sp, #4]
	mov r5, #2
	ldr r0, [r4, #0x944]
	ldr r3, [r4, #0x510]
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_021107a0
	stmia sp, {r5, r6}
	ldr r0, [r4, #0x944]
	ldr r3, [r4, #0x50c]
	mov r2, r8
	mov r1, r5
	bl  FUN_ov16_021107a0
	stmia sp, {r5, r6}
	ldr r0, [r4, #0x944]
	ldr r3, [r4, #0x510]
	mov r2, r7
	mov r1, r5
	bl  FUN_ov16_021107a0
	mov r0, #3
	stmia sp, {r0, r6}
	ldr r0, [r4, #0x944]
	ldr r3, [r4, #0x510]
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_021107a0
	ldr r0, [r4, #0x944]
	mov r1, #0x20
	mov r2, #0x60
	bl  FUN_ov16_021108b4
	mov r5, #0x88
	ldr r0, [r4, #0x944]
	mov r2, r5
	mov r1, #0x38
	bl  FUN_ov16_021108c0
	ldr r0, [r4, #0x944]
	mov r2, r5
	mov r1, #0x98
	bl  FUN_ov16_021108cc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov86_02119f00

	arm_func_start FUN_ov86_0211a038
FUN_ov86_0211a038: ; 0x0211A038
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov86_0211a038

	arm_func_start FUN_ov86_0211a040
FUN_ov86_0211a040: ; 0x0211A040
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov86_0211a040

	arm_func_start FUN_ov86_0211a048
FUN_ov86_0211a048: ; 0x0211A048
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x944]
	bl  FUN_ov16_021109a0
	mov r0, r5
	bl FUN_ov86_0211a040
	cmp r0, #1
	beq _0211A074
	cmp r0, #2
	beq _0211A088
	ldmfd sp!, {r3, r4, r5, pc}
_0211A074:
	ldr r0, _0211A0D0 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl  FUN_ov16_0210ee78
	ldmfd sp!, {r3, r4, r5, pc}
_0211A088:
	ldr r0, _0211A0D0 ; =0x02099EB4
	mov r1, #0x1e
	ldr r0, [r0]
	bl  FUN_ov16_0210ee78
	mov r0, r5
	bl FUN_ov86_02119f00
	mov r4, #1
	str r4, [sp]
	ldr r0, [r5, #0x944]
	ldr r2, _0211A0D4 ; =0x0211CE2C
	mov r3, r4
	mov r1, #2
	bl  FUN_ov16_02110938
	ldr r0, [r5, #0x944]
	mov r1, r4
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, pc}
_0211A0D0: .word 0x02099EB4
_0211A0D4: .word 0x0211CE2C
	arm_func_end FUN_ov86_0211a048

	arm_func_start FUN_ov86_0211a0d8
FUN_ov86_0211a0d8: ; 0x0211A0D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, #1
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	str r1, [r5, #8]
	cmp r1, #3
	beq _0211A110
	cmp r1, #8
	beq _0211A118
	cmp r1, #9
	beq _0211A214
	ldmfd sp!, {r3, r4, r5, pc}
_0211A110:
	strb r4, [r5, #0x15]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A118:
	ldrb r0, [r5, #0x940]
	cmp r0, #0
	beq _0211A164
	ldrh r12, [r5, #0x10]
	ldr r1, _0211A23C ; =0x020A1640
	add r0, r5, #0x900
	strh r12, [r1, #0xe]
	ldr r3, [r5, #4]
	ldrh r2, [r3, #0x8e]
	strh r2, [r1, #0x10]
	ldrh r0, [r0, #0x42]
	cmp r0, r12
	strneb r4, [r3, #0x8b]
	ldr r0, [r5, #4]
	bl FUN_02041d9c
	ldr r0, [r5, #4]
	mov r1, #0
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A164:
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r0, _0211A23C ; =0x020A1640
	ldr r2, _0211A23C ; =0x020A1640
	ldrb r0, [r0, #0x247]
	mov r1, #0
	cmp r0, #1
	ldreq r0, _0211A240 ; =0x02099E98
	streqb r4, [r0]
	ldr r0, _0211A244 ; =0x020A0640
	strb r4, [r2, #0x245]
	strb r1, [r0, #0x1a]
	strb r1, [r0, #0x1b]
	strb r1, [r0, #0x87]
	strb r1, [r0, #0x88]
	strb r1, [r0, #0x89]
	strb r1, [r0, #0x8b]
	strb r4, [r0, #0x19]
	strb r1, [r0, #0x18]
	ldr r3, [r2, #0x230]
	ldrb r2, [r2, #0x246]
	ldr r0, _0211A248 ; =0x00000808
	add r3, r3, #8
	mla r0, r2, r0, r3
	add r2, r0, #0x394
	ldr r0, _0211A24C ; =0x0209BA20
	add r5, r2, #0x400
	bl FUN_0207249c
	ldrh r1, [r0, #0x40]
	strh r1, [r0, #0x28]
	ldrh r1, [r5, #0x40]
	strh r1, [r5, #0x28]
	ldrh r1, [r0, #0x40]
	ldrh r0, [r5, #0x40]
	cmp r1, r0
	ldr r0, _0211A24C ; =0x0209BA20
	ldr r1, _0211A250 ; =0x000001FD
	streqb r4, [r5, #0x2c]
	bl FUN_020727a8
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #2
	bl FUN_02029d44
	ldmfd sp!, {r3, r4, r5, pc}
_0211A214:
	ldrb r0, [r5, #0x940]
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x8c]
	ldr r0, [r5, #4]
	bl FUN_02041d9c
	ldr r0, [r5, #4]
	mov r1, #0
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A23C: .word 0x020A1640
_0211A240: .word 0x02099E98
_0211A244: .word 0x020A0640
_0211A248: .word 0x00000808
_0211A24C: .word 0x0209BA20
_0211A250: .word 0x000001FD
	arm_func_end FUN_ov86_0211a0d8

	arm_func_start FUN_ov86_0211a254
FUN_ov86_0211a254: ; 0x0211A254
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30c
	mov r4, #0
	mov r10, r0
	add r0, sp, #0x10c
	mov r1, r4
	mov r2, #0x200
	bl MI_CpuFill8
	mov r5, #0x100
	add r0, sp, #0xc
	mov r1, r4
	mov r2, r5
	bl MI_CpuFill8
	ldr r0, [r10, #0x4e0]
	ldr r11, [r10, #0x494]
	mov r8, r0, lsr #2
	mov r0, #0
	str r0, [sp]
	cmp r8, #0x100
	movgt r8, r5
	str r0, [sp, #8]
	str r0, [sp, #4]
	mov r9, r0
	str r0, [r10, #0x78]
	ldr r5, [r10, #0x4dc]
	b _0211A390
_0211A2BC:
	mov r0, r5
	bl  FUN_ov126_0212afec
	mov r6, r0
	mov r0, r5
	bl  FUN_ov126_0212afdc
	mov r7, r0
	cmp r6, #0
	cmpne r7, #0
	beq _0211A388
	cmp r7, #1
	streq r9, [sp, #8]
	streq r6, [sp, #4]
	cmp r9, #0
	blt _0211A2FC
	cmp r9, #0x100
	blo _0211A304
_0211A2FC:
	mov r0, r4
	b _0211A31C
_0211A304:
	ldr r0, _0211A6C4 ; =0x020A0B6C
	and r2, r9, #7
	ldrb r1, [r0, r9, asr #3]
	mov r0, #1
	tst r1, r0, lsl r2
	moveq r0, r4
_0211A31C:
	cmp r0, #0
	bne _0211A344
	sub r0, r7, #1
	add r1, r10, r0, lsl #1
	ldr r0, [r10, #0x78]
	add r0, r0, #1
	str r0, [r10, #0x78]
	ldr r0, _0211A6C8 ; =0x0000FFFF
	strh r0, [r1, #0x7c]
	b _0211A388
_0211A344:
	mov r0, r11
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A388
	sub r1, r7, #1
	add r0, r10, r1, lsl #1
	strh r9, [r0, #0x7c]
	add r0, r10, r1
	strb r6, [r0, #0x27c]
	ldr r1, [r10, #0x78]
	mov r0, #1
	str r0, [sp]
	add r0, r1, #1
	str r0, [r10, #0x78]
_0211A388:
	add r9, r9, #1
	add r5, r5, #4
_0211A390:
	cmp r9, r8
	blt _0211A2BC
	ldr r0, [sp]
	cmp r0, #0
	mov r0, #0
	bne _0211A3BC
	ldr r1, [sp, #8]
	cmp r1, #0
	strneh r1, [r10, #0x7c]
	ldrne r1, [sp, #4]
	strneb r1, [r10, #0x27c]
_0211A3BC:
	mov r5, #0
	sub r1, r8, #1
	b _0211A424
_0211A3C8:
	add r2, r10, r5, lsl #1
	ldrh r2, [r2, #0x7c]
	cmp r2, #0
	bne _0211A420
	add r6, r5, #1
	b _0211A418
_0211A3E0:
	add r4, r10, r6, lsl #1
	ldrh r3, [r4, #0x7c]
	cmp r3, #0
	beq _0211A414
	add r2, r10, r5, lsl #1
	strh r3, [r2, #0x7c]
	strh r0, [r4, #0x7c]
	add r4, r10, r6
	ldrb r3, [r4, #0x27c]
	add r2, r10, r5
	strb r3, [r2, #0x27c]
	strb r0, [r4, #0x27c]
	b _0211A420
_0211A414:
	add r6, r6, #1
_0211A418:
	cmp r6, r8
	blt _0211A3E0
_0211A420:
	add r5, r5, #1
_0211A424:
	cmp r5, r1
	blt _0211A3C8
	mov r1, #0
	sub r2, r8, #1
	ldr r6, _0211A6C8 ; =0x0000FFFF
	b _0211A49C
_0211A43C:
	add r3, r10, r1, lsl #1
	ldrh r3, [r3, #0x7c]
	cmp r3, r6
	bne _0211A498
	add r7, r1, #1
	b _0211A490
_0211A454:
	add r5, r10, r7, lsl #1
	ldrh r4, [r5, #0x7c]
	cmp r4, #0
	cmpne r4, r6
	beq _0211A48C
	add r3, r10, r1, lsl #1
	strh r4, [r3, #0x7c]
	strh r6, [r5, #0x7c]
	add r5, r10, r7
	ldrb r4, [r5, #0x27c]
	add r3, r10, r1
	strb r4, [r3, #0x27c]
	strb r0, [r5, #0x27c]
	b _0211A498
_0211A48C:
	add r7, r7, #1
_0211A490:
	cmp r7, r8
	blt _0211A454
_0211A498:
	add r1, r1, #1
_0211A49C:
	cmp r1, r2
	blt _0211A43C
	ldr r5, _0211A6CC ; =0x020A1640
	mov r2, #0
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq _0211A598
	mov r3, r2
	mov r4, r2
	mov r8, #1
	mov r7, #3
	add r1, sp, #0x10c
	add r0, sp, #0xc
	b _0211A528
_0211A4D4:
	add r6, r10, r4, lsl #1
	ldrh r9, [r6, #0x7c]
	mov r11, r4, lsl #1
	add r6, r10, r4
	strh r9, [r1, r11]
	ldrb r6, [r6, #0x27c]
	strb r6, [r0, r4]
	ldrh r6, [r5, #0xe]
	cmp r6, r9
	bne _0211A51C
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #31
	add r2, r3, r2, ror #31
	and r2, r2, #0xff
	cmp r2, #1
	mov r3, r4
	streqb r8, [r10, #0x941]
	streq r7, [r10, #0x18]
_0211A51C:
	add r2, r2, #1
	and r2, r2, #0xff
	add r4, r4, #1
_0211A528:
	ldr r6, [r10, #0x78]
	cmp r4, r6
	blt _0211A4D4
	mov r0, #0
	add r6, sp, #0x10c
	add r4, sp, #0xc
	b _0211A58C
_0211A544:
	ldr r1, [r10, #0x78]
	add r7, r3, r0
	cmp r7, r1
	subge r7, r7, r1
	ldrb r1, [r10, #0x941]
	cmp r1, #0
	beq _0211A56C
	subs r7, r7, #1
	ldrmi r1, [r10, #0x78]
	submi r7, r1, #1
_0211A56C:
	mov r1, r7, lsl #1
	ldrh r5, [r6, r1]
	add r2, r10, r0, lsl #1
	add r1, r10, r0
	strh r5, [r2, #0x7c]
	ldrb r2, [r4, r7]
	add r0, r0, #1
	strb r2, [r1, #0x27c]
_0211A58C:
	ldr r1, [r10, #0x78]
	cmp r0, r1
	blt _0211A544
_0211A598:
	mov r2, #0
	mov r4, r2
	ldr r0, _0211A6C8 ; =0x0000FFFF
	b _0211A5BC
_0211A5A8:
	add r3, r10, r4, lsl #1
	ldrh r1, [r3, #0x7c]
	add r4, r4, #1
	cmp r1, r0
	streqh r2, [r3, #0x7c]
_0211A5BC:
	ldr r1, [r10, #0x78]
	cmp r4, r1
	blt _0211A5A8
	mov r0, #0
	b _0211A680
_0211A5D0:
	ldr r5, [r10, #0x78]
	add r1, r0, #6
	cmp r1, r5
	bgt _0211A618
	mov r6, #0
	add r1, r0, r0, lsr #31
	b _0211A60C
_0211A5EC:
	add r4, r0, r6, lsl #1
	add r2, r6, r1, asr #1
	add r5, r4, #1
	add r3, r10, r2
	strb r5, [r3, #0x37c]
	add r2, r4, #2
	strb r2, [r3, #0x3fc]
	add r6, r6, #1
_0211A60C:
	cmp r6, #3
	blt _0211A5EC
	b _0211A67C
_0211A618:
	ldr r2, _0211A6D0 ; =0x2AAAAAAB
	mov r3, #6
	smull r1, r4, r2, r5
	add r4, r4, r5, lsr #31
	smull r1, r2, r3, r4
	subs r4, r5, r1
	beq _0211A67C
	add r1, r4, r4, lsr #31
	and r2, r4, #1
	add r6, r2, r1, asr #1
	mov r7, #0
	add r1, r0, r0, lsr #31
	b _0211A674
_0211A64C:
	add r4, r0, r7, lsl #1
	add r2, r7, r1, asr #1
	add r5, r4, #1
	add r3, r10, r2
	strb r5, [r3, #0x37c]
	ldr r2, [r10, #0x78]
	add r7, r7, #1
	cmp r5, r2
	addlt r2, r4, #2
	strltb r2, [r3, #0x3fc]
_0211A674:
	cmp r7, r6
	blt _0211A64C
_0211A67C:
	add r0, r0, #6
_0211A680:
	ldr r1, [r10, #0x78]
	cmp r0, r1
	blt _0211A5D0
	add r0, r1, r1, lsr #31
	and r1, r1, #1
	add r2, r1, r0, asr #1
	ldr r1, [r10, #0x18]
	mov r0, r10
	str r2, [r10, #0x58]
	bl FUN_ov86_0211bb88
	strh r0, [r10, #0x10]
	ldr r1, [r10, #0x18]
	mov r0, r10
	bl FUN_ov86_0211bbec
	strh r0, [r10, #0x12]
	add sp, sp, #0x30c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A6C4: .word 0x020A0B6C
_0211A6C8: .word 0x0000FFFF
_0211A6CC: .word 0x020A1640
_0211A6D0: .word 0x2AAAAAAB
	arm_func_end FUN_ov86_0211a254

	arm_func_start FUN_ov86_0211a6d4
FUN_ov86_0211a6d4: ; 0x0211A6D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x18]
	bl FUN_ov86_0211bb88
	strh r0, [r5, #0x10]
	ldr r1, [r5, #0x18]
	mov r0, r5
	bl FUN_ov86_0211bbec
	ldrh r1, [r5, #0x10]
	strh r0, [r5, #0x12]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #6
	ldr r0, _0211A724 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, r4
	bl FUN_ov86_0211a0d8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A724: .word 0x0209AC44
	arm_func_end FUN_ov86_0211a6d4

	arm_func_start FUN_ov86_0211a728
FUN_ov86_0211a728: ; 0x0211A728
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x50
	add r4, sp, #0
	mov r3, r1
	mov r5, r2
	ldr r1, _0211A760 ; =0x0211CE54
	mov r0, r4
	mov r2, r3
	bl FUN_02023c40
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, pc}
_0211A760: .word 0x0211CE54
	arm_func_end FUN_ov86_0211a728

	arm_func_start FUN_ov86_0211a764
FUN_ov86_0211a764: ; 0x0211A764
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x88
	ldr r0, _0211A7D0 ; =0x0211CE68
	add r1, r1, #0x400
	bl  FUN_ov16_020f316c
	add r2, r4, #0x94
	ldr r1, _0211A7D4 ; =0x0211CE88
	mov r0, r4
	add r2, r2, #0x400
	bl FUN_ov86_0211a728
	ldr r1, _0211A7D8 ; =0x0211CE98
	mov r0, r4
	add r2, r4, #0x4a0
	bl FUN_ov86_0211a728
	add r1, r4, #0xdc
	ldr r0, _0211A7DC ; =0x0211CEAC
	add r1, r1, #0x400
	bl  FUN_ov16_020f316c
	add r1, r4, #0xe8
	ldr r0, _0211A7E0 ; =0x0209BA20
	add r1, r1, #0x400
	bl  FUN_ov16_020eed18 ; may be ov17
	mov r0, r4
	mov r1, #1
	bl FUN_ov86_0211a0d8
	ldmfd sp!, {r4, pc}
_0211A7D0: .word 0x0211CE68
_0211A7D4: .word 0x0211CE88
_0211A7D8: .word 0x0211CE98
_0211A7DC: .word 0x0211CEAC
_0211A7E0: .word 0x0209BA20
	arm_func_end FUN_ov86_0211a764

	arm_func_start FUN_ov86_0211a7e4
FUN_ov86_0211a7e4: ; 0x0211A7E4
	bx lr
	arm_func_end FUN_ov86_0211a7e4

	arm_func_start FUN_ov86_0211a7e8
FUN_ov86_0211a7e8: ; 0x0211A7E8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r1, #0
	mov r4, r0
	str r1, [sp]
	add r3, r4, #0xf4
	ldr r1, [r4, #0x488]
	ldr r0, _0211A82C ; =0x0211CEC8
	ldr r2, _0211A830 ; =0x0211CC78
	add r3, r3, #0x400
	bl  FUN_ov16_020f5450
	add r0, r4, #0x7c
	add r0, r0, #0x400
	add r0, r0, #0xc
	bl  FUN_ov16_020f33fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211A82C: .word 0x0211CEC8
_0211A830: .word 0x0211CC78
	arm_func_end FUN_ov86_0211a7e8

	arm_func_start FUN_ov86_0211a834
FUN_ov86_0211a834: ; 0x0211A834
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r9, #0
	mov r10, r0
	ldr r6, _0211A8D8 ; =0x0211CEE8
	mov r5, r9
	mov r11, #5
	add r8, sp, #0x18
	add r7, sp, #0x14
	ldr r4, _0211A8DC ; =0x02099F38
	b _0211A8C4
_0211A860:
	add r0, r10, r9
	ldrb r1, [r0, #0x27c]
	cmp r1, #0
	beq _0211A8C0
	ldr r0, [r10, #0x4a0]
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A8C0
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, r11
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, r6
	mov r3, #1
	str r12, [sp, #0x10]
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x524]
_0211A8C0:
	add r9, r9, #1
_0211A8C4:
	ldr r0, [r10, #0x78]
	cmp r9, r0
	blt _0211A860
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A8D8: .word 0x0211CEE8
_0211A8DC: .word 0x02099F38
	arm_func_end FUN_ov86_0211a834

	arm_func_start FUN_ov86_0211a8e0
FUN_ov86_0211a8e0: ; 0x0211A8E0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	ldrneh r1, [r4, #0x12]
	cmpne r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4, #0x494]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A99C
	ldrb r0, [r4, #0x14]
	add r0, r0, #8
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x4f4]
	cmp r1, #0
	beq _0211A954
	ldr r0, _0211AA44 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	ldrb r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #8
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x4f4]
_0211A954:
	ldr r0, _0211AA44 ; =0x02099F38
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211AA48 ; =0x0211CF08
	str r3, [sp, #0x10]
	mov r1, #5
	mov r3, #1
	bl FUN_02058800
	ldrb r1, [r4, #0x14]
	add r1, r1, #8
	add r1, r4, r1, lsl #2
	str r0, [r1, #0x4f4]
_0211A99C:
	ldrh r1, [r4, #0x12]
	ldr r0, [r4, #0x4a0]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldrb r0, [r4, #0x14]
	add r0, r0, #0xa
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x4f4]
	cmp r1, #0
	beq _0211A9F4
	ldr r0, _0211AA44 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	ldrb r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0xa
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x4f4]
_0211A9F4:
	ldr r0, _0211AA44 ; =0x02099F38
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211AA4C ; =0x0211CF28
	str r3, [sp, #0x10]
	mov r1, #5
	mov r3, #1
	bl FUN_02058800
	ldrb r1, [r4, #0x14]
	add r1, r1, #0xa
	add r1, r4, r1, lsl #2
	str r0, [r1, #0x4f4]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211AA44: .word 0x02099F38
_0211AA48: .word 0x0211CF08
_0211AA4C: .word 0x0211CF28
	arm_func_end FUN_ov86_0211a8e0

	arm_func_start FUN_ov86_0211aa50
FUN_ov86_0211aa50: ; 0x0211AA50
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211AADC ; =0x02099F38
	b _0211AA8C
_0211AA64:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x4f4]
	cmp r1, #0
	beq _0211AA88
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211AA88:
	add r5, r5, #1
_0211AA8C:
	cmp r5, #0xc
	blt _0211AA64
	mov r5, #0
	ldr r4, _0211AADC ; =0x02099F38
	b _0211AAC8
_0211AAA0:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x524]
	cmp r1, #0
	beq _0211AAC4
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211AAC4:
	add r5, r5, #1
_0211AAC8:
	ldr r0, [r6, #0x78]
	cmp r5, r0
	blt _0211AAA0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211AADC: .word 0x02099F38
	arm_func_end FUN_ov86_0211aa50

	arm_func_start FUN_ov86_0211aae0
FUN_ov86_0211aae0: ; 0x0211AAE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211ABB8 ; =0x02099F38
	b _0211AB34
_0211AAF8:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x4f4]
	cmp r1, #0
	beq _0211AB30
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AB30
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x4f4]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211AB30:
	add r6, r6, #1
_0211AB34:
	cmp r6, #8
	blt _0211AAF8
	mov r6, #0
	mov r5, #8
	mov r4, #3
	mov r9, r6
	ldr r8, _0211ABB8 ; =0x02099F38
	b _0211ABA8
_0211AB54:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x524]
	cmp r1, #0
	beq _0211ABA4
	ldr r0, [r8]
	bl FUN_02059004
	cmp r0, #0
	bne _0211ABA4
	add r1, r7, r6, lsl #2
	ldr r0, [r8]
	ldr r1, [r1, #0x524]
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_02114918
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x524]
	ldr r0, [r8]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
_0211ABA4:
	add r6, r6, #1
_0211ABA8:
	ldr r0, [r7, #0x78]
	cmp r6, r0
	blt _0211AB54
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ABB8: .word 0x02099F38
	arm_func_end FUN_ov86_0211aae0

	arm_func_start FUN_ov86_0211abbc
FUN_ov86_0211abbc: ; 0x0211ABBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x7c
	mov r7, #0
	add r6, r0, #0x400
	mov r5, #0xc
	b _0211ABE4
_0211ABD8:
	mla r0, r7, r5, r6
	bl  FUN_ov16_020f33fc
	add r7, r7, #1
_0211ABE4:
	cmp r7, #0xa
	blt _0211ABD8
	mov r6, #0
	ldr r5, _0211AC80 ; =0x02099F38
	b _0211AC14
_0211ABF8:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x924]
	cmp r1, #0
	beq _0211AC10
	ldr r0, [r5]
	bl  FUN_ov16_021128c4
_0211AC10:
	add r6, r6, #1
_0211AC14:
	cmp r6, #7
	blt _0211ABF8
	mov r6, #0
	ldr r5, _0211AC80 ; =0x02099F38
	b _0211AC44
_0211AC28:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x524]
	cmp r1, #0
	beq _0211AC40
	ldr r0, [r5]
	bl FUN_02058ee0
_0211AC40:
	add r6, r6, #1
_0211AC44:
	cmp r6, #0x100
	blt _0211AC28
	mov r6, #0
	ldr r5, _0211AC80 ; =0x02099F38
	b _0211AC74
_0211AC58:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x4f4]
	cmp r1, #0
	beq _0211AC70
	ldr r0, [r5]
	bl FUN_02058ee0
_0211AC70:
	add r6, r6, #1
_0211AC74:
	cmp r6, #0xc
	blt _0211AC58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC80: .word 0x02099F38
	arm_func_end FUN_ov86_0211abbc

	arm_func_start FUN_ov86_0211ac84
FUN_ov86_0211ac84: ; 0x0211AC84
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, r1
	cmp r0, #5
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211ADBC ; =0x02099ED4
	mov r4, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0x1c]
	cmpeq r0, #0
	ldreq r0, [r6, #0x44]
	cmpeq r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211ADC0 ; =0x02099EB4
	mov r1, r5
	ldr r0, [r7]
	mov r2, r4
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211ADB4
_0211ACF0: ; jump table
	b _0211ADB4 ; case 0
	b _0211AD08 ; case 1
	b _0211AD24 ; case 2
	b _0211AD5C ; case 3
	b _0211AD84 ; case 4
	b _0211AD40 ; case 5
_0211AD08:
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov86_0211b154
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD24:
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov86_0211b1f8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD40:
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov86_0211b2e4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD5C:
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	str r4, [sp]
	mov r1, r0
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	mov r0, r6
	bl FUN_ov86_0211b33c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD84:
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
	bl FUN_ov86_0211b33c
_0211ADB4:
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADBC: .word 0x02099ED4
_0211ADC0: .word 0x02099EB4
	arm_func_end FUN_ov86_0211ac84

	arm_func_start FUN_ov86_0211adc4
FUN_ov86_0211adc4: ; 0x0211ADC4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _0211B144 ; =0x0209A0F4
	mov r6, r0
	ldrh r0, [r2]
	mov r5, r1
	ldr r1, [r6, #8]
	orr r0, r0, r5
	mov r0, r0, lsl #0x10
	cmp r1, #5
	mov r4, r0, lsr #0x10
	ldreqb r0, [r6, #0x17]
	mov r8, #1
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B148 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r6, #0x1c]
	cmpeq r0, #0
	ldreq r0, [r6, #0x44]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, _0211B14C ; =0x02099EB4
	ldr r0, [r7]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211AE54
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	mov r4, r5
	strh r1, [r0, #0x38]
_0211AE54:
	mov r0, r6
	mov r1, r5
	bl FUN_ov86_0211c68c
	tst r5, #1
	beq _0211AF5C
	mov r0, r6
	bl FUN_ov86_0211b638
	cmp r0, #0
	beq _0211AF4C
	ldrb r0, [r6, #0x940]
	cmp r0, #0
	mov r0, r6
	beq _0211AF44
	bl FUN_ov86_0211a040
	cmp r0, #2
	beq _0211AEE4
	ldr r0, [r6, #4]
	ldrb r0, [r0, #0x8b]
	cmp r0, #0
	addeq r0, r6, #0x900
	ldreqh r1, [r0, #0x42]
	ldreqh r0, [r6, #0x10]
	cmpeq r1, r0
	mov r0, r6
	bne _0211AEC0
	bl FUN_ov86_0211a6d4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AEC0:
	mov r1, #2
	bl FUN_ov86_0211a038
	mov r0, r6
	mov r1, #7
	bl FUN_ov86_0211a0d8
	ldr r0, _0211B150 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AEE4:
	ldr r0, [r6, #0x944]
	bl  FUN_ov16_02110b04
	cmp r0, #1
	beq _0211AF00
	cmp r0, #2
	beq _0211AF14
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF00:
	mov r0, r6
	bl FUN_ov86_0211a6d4
	ldr r0, [r6, #0x944]
	bl  FUN_ov16_02110b0c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF14:
	mov r0, r6
	mov r1, #1
	bl FUN_ov86_0211a038
	mov r0, r6
	mov r1, #7
	bl FUN_ov86_0211a0d8
	ldr r0, _0211B150 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r6, #0x944]
	bl  FUN_ov16_02110b0c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF44:
	bl FUN_ov86_0211a6d4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF4C:
	ldr r0, _0211B150 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF5C:
	tst r5, #2
	beq _0211AFF8
	ldrb r0, [r6, #0x940]
	cmp r0, #0
	beq _0211AFDC
	mov r0, r6
	bl FUN_ov86_0211a040
	cmp r0, #2
	beq _0211AF9C
	ldr r0, _0211B150 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #9
	bl FUN_ov86_0211a0d8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF9C:
	ldr r0, [r6, #0x944]
	mov r2, r8
	mov r1, #0
	bl  FUN_ov16_02110a04
	mov r0, r6
	mov r1, r8
	bl FUN_ov86_0211a038
	mov r0, r6
	mov r1, #7
	bl FUN_ov86_0211a0d8
	ldr r0, _0211B150 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r6, #0x944]
	bl  FUN_ov16_02110b0c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AFDC:
	ldr r0, _0211B150 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #9
	bl FUN_ov86_0211a0d8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AFF8:
	tst r4, #0x40
	beq _0211B030
	mov r0, r6
	bl FUN_ov86_0211a040
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r6, #0x18]
	cmp r1, #3
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	sub r1, r1, #3
	mov r2, #5
	bl FUN_ov86_0211c04c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B030:
	tst r4, #0x80
	beq _0211B064
	mov r0, r6
	bl FUN_ov86_0211a040
	cmp r0, #2
	ldrne r1, [r6, #0x18]
	cmpne r1, #3
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	add r1, r1, #3
	mov r2, #5
	bl FUN_ov86_0211c04c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B064:
	tst r4, #0x20
	beq _0211B0D4
	mov r0, r6
	bl FUN_ov86_0211a040
	cmp r0, #2
	beq _0211B0AC
	ldr r1, [r6, #0x18]
	mov r0, r6
	cmp r1, #0
	cmpne r1, #3
	beq _0211B0A0
	sub r1, r1, #1
	mov r2, #5
	bl FUN_ov86_0211c04c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B0A0:
	mvn r1, #0
	bl FUN_ov86_0211c3a0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B0AC:
	ldr r0, [r6, #0x944]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B150 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B0D4:
	tst r4, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_ov86_0211a040
	cmp r0, #2
	beq _0211B11C
	ldr r1, [r6, #0x18]
	mov r0, r6
	cmp r1, #2
	cmpne r1, #5
	beq _0211B110
	add r1, r1, #1
	mov r2, #5
	bl FUN_ov86_0211c04c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B110:
	mov r1, #1
	bl FUN_ov86_0211c3a0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B11C:
	ldr r0, [r6, #0x944]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B150 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B144: .word 0x0209A0F4
_0211B148: .word 0x02099ED4
_0211B14C: .word 0x02099EB4
_0211B150: .word 0x0209AC44
	arm_func_end FUN_ov86_0211adc4

	arm_func_start FUN_ov86_0211b154
FUN_ov86_0211b154: ; 0x0211B154
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	cmp r1, #5
	blt _0211B194
	cmp r1, #0xf
	bgt _0211B194
	ldr r2, [r4, #0x18]
	sub r1, r1, #5
	str r2, [r4, #0x3c]
	cmp r1, r2
	ldmeqfd sp!, {r4, pc}
	mov r2, #5
	bl FUN_ov86_0211c04c
	ldmfd sp!, {r4, pc}
_0211B194:
	sub r0, r1, #3
	cmp r0, #1
	bhi _0211B1C0
	cmp r1, #3
	mvneq r1, #0
	movne r1, #1
	mov r0, r4
	bl FUN_ov86_0211c3a0
	mov r0, #0xf
	str r0, [r4, #0x5c]
	ldmfd sp!, {r4, pc}
_0211B1C0:
	cmp r1, #0x10
	bne _0211B1DC
	ldr r0, [r4, #0x944]
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r4, pc}
_0211B1DC:
	cmp r1, #0x11
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x944]
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov86_0211b154

	arm_func_start FUN_ov86_0211b1f8
FUN_ov86_0211b1f8: ; 0x0211B1F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B2E0 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	mov r4, r0
	cmp r5, #1
	blt _0211B274
	cmp r5, #2
	bgt _0211B274
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov86_0211a040
	cmp r0, #2
	bne _0211B258
	cmp r5, #1
	cmpne r5, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
_0211B258:
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	ldrne r0, _0211B2E0 ; =0x02099EB4
	ldrne r0, [r0]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B274:
	cmp r5, #3
	cmpne r5, #4
	moveq r0, #0
	streq r0, [r6, #0x5c]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #5
	blt _0211B2C0
	cmp r5, #0xf
	bgt _0211B2C0
	ldr r0, [r6, #0x3c]
	sub r1, r5, #5
	cmp r0, r1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B2E0 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B2C0:
	cmp r5, #0x10
	cmpne r5, #0x11
	ldreq r0, _0211B2E0 ; =0x02099EB4
	moveq r1, #1
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B2E0: .word 0x02099EB4
	arm_func_end FUN_ov86_0211b1f8

	arm_func_start FUN_ov86_0211b2e4
FUN_ov86_0211b2e4: ; 0x0211B2E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	sub r0, r1, #3
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	sub r0, r0, #1
	str r0, [r4, #0x5c]
	cmp r0, #0
	ldmgtfd sp!, {r4, pc}
	cmp r1, #3
	mvneq r1, #0
	movne r1, #1
	mov r0, r4
	bl FUN_ov86_0211c3a0
	mov r0, #4
	str r0, [r4, #0x5c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov86_0211b2e4

	arm_func_start FUN_ov86_0211b33c
FUN_ov86_0211b33c: ; 0x0211B33C
	cmp r1, #0
	bxle lr
	sub r1, r1, #3
	cmp r1, #1
	bxhi lr
	ldrb r1, [sp]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x5c]
	bx lr
	arm_func_end FUN_ov86_0211b33c

	arm_func_start FUN_ov86_0211b364
FUN_ov86_0211b364: ; 0x0211B364
	stmfd sp!, {r4, lr}
	bl FUN_02004f78
	mov r4, #0x20
	mov r1, r0
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r4
	bl DC_FlushRange
	bl  FUN_ov16_020f10ac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov86_0211b364

	arm_func_start FUN_ov86_0211b394
FUN_ov86_0211b394: ; 0x0211B394
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r7, r0
	mov r4, r2
	mov r6, r3
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r5, #7
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0xc
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, r5, lsl #2
	ldr r0, [r0, #0x924]
	cmp r0, #0
	bne _0211B404
	ldr r0, _0211B544 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	add r1, r7, r5, lsl #2
	str r0, [r1, #0x924]
_0211B404:
	add r0, r7, r4, lsl #2
	add r1, r7, r5, lsl #2
	ldr r4, [r1, #0x924]
	ldr r2, [r0, #0x4f4]
	ldr r7, _0211B544 ; =0x02099F38
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
	ldr r0, _0211B548 ; =0x02099EB4
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
	strb r5, [r8, #0xf]
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
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B544: .word 0x02099F38
_0211B548: .word 0x02099EB4
	arm_func_end FUN_ov86_0211b394

	arm_func_start FUN_ov86_0211b54c
FUN_ov86_0211b54c: ; 0x0211B54C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r1, #0xa0
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0x1e
	str r2, [sp, #0xc]
	mov r4, r0
	str r1, [sp, #0x10]
	mov r3, #0
	mov r2, #2
	str r3, [sp, #0x14]
	bl FUN_ov86_0211b394
	mov r0, r4
	bl FUN_ov86_0211b59c
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov86_0211b54c

	arm_func_start FUN_ov86_0211b59c
FUN_ov86_0211b59c: ; 0x0211B59C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211B628 ; =0x02099EB4
	mov r4, r0
	mov r6, #1
	ldr r0, [r1]
	mov r1, r6
	bl  FUN_ov16_0210e7d0
	movs r5, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov86_0211b638
	cmp r0, #0
	movne r6, #0
	mov r0, r4
	strb r6, [r5, #0x10]
	bl FUN_ov86_0211a040
	cmp r0, #2
	moveq r0, #1
	streqb r0, [r5, #0x10]
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _0211B608
	ldr r0, _0211B62C ; =0x02099F38
	ldr r1, [r4, #0x928]
	ldr r0, [r0]
	ldr r2, _0211B630 ; =0x00004210
	b _0211B618
_0211B608:
	ldr r0, _0211B62C ; =0x02099F38
	ldr r1, [r4, #0x928]
	ldr r0, [r0]
	ldr r2, _0211B634 ; =0x00007FFF
_0211B618:
	bl  FUN_ov16_02114204
	mov r0, r5
	bl  FUN_ov16_0210e69c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B628: .word 0x02099EB4
_0211B62C: .word 0x02099F38
_0211B630: .word 0x00004210
_0211B634: .word 0x00007FFF
	arm_func_end FUN_ov86_0211b59c

	arm_func_start FUN_ov86_0211b638
FUN_ov86_0211b638: ; 0x0211B638
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x18]
	bl FUN_ov86_0211bb88
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov86_0211b638

	arm_func_start FUN_ov86_0211b654
FUN_ov86_0211b654: ; 0x0211B654
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r2, #0x1e
	str r2, [sp, #0xc]
	mov r4, r0
	str r1, [sp, #0x10]
	mov r3, #0
	mov r2, #3
	str r3, [sp, #0x14]
	bl FUN_ov86_0211b394
	mov r0, r4
	bl FUN_ov86_0211b6a4
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov86_0211b654

	arm_func_start FUN_ov86_0211b6a4
FUN_ov86_0211b6a4: ; 0x0211B6A4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211B718 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r1]
	mov r1, #2
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0x10]
	bl FUN_ov86_0211a040
	cmp r0, #2
	bne _0211B6F8
	mov r0, #1
	strb r0, [r4, #0x10]
	ldr r0, _0211B71C ; =0x02099F38
	ldr r1, [r5, #0x92c]
	ldr r0, [r0]
	ldr r2, _0211B720 ; =0x00004210
	b _0211B708
_0211B6F8:
	ldr r0, _0211B71C ; =0x02099F38
	ldr r1, [r5, #0x92c]
	ldr r0, [r0]
	ldr r2, _0211B724 ; =0x00007FFF
_0211B708:
	bl  FUN_ov16_02114204
	mov r0, r4
	bl  FUN_ov16_0210e69c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B718: .word 0x02099EB4
_0211B71C: .word 0x02099F38
_0211B720: .word 0x00004210
_0211B724: .word 0x00007FFF
	arm_func_end FUN_ov86_0211b6a4

	arm_func_start FUN_ov86_0211b728
FUN_ov86_0211b728: ; 0x0211B728
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0x15]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0211B764 ; =0x0209F5C0
	mov r5, #0
	strb r5, [r0, #0x15]
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_020f5ff4
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B764: .word 0x0209F5C0
	arm_func_end FUN_ov86_0211b728

	arm_func_start FUN_ov86_0211b768
FUN_ov86_0211b768: ; 0x0211B768
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x924]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B7E4 ; =0x02099F38
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_02112724
	mov r6, r0
	str r6, [r7, #0x924]
	ldr r3, [r7, #0x4f4]
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
_0211B7E4: .word 0x02099F38
	arm_func_end FUN_ov86_0211b768

	arm_func_start FUN_ov86_0211b7e8
FUN_ov86_0211b7e8: ; 0x0211B7E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x934]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r6, _0211B93C ; =0x02099F38
	ldr r1, [r5, #0x78]
	ldr r0, [r6]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r9, r0
	str r9, [r5, #0x934]
	ldr r2, [r5, #0x508]
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
	b _0211B8A0
_0211B870:
	add r0, r5, r4
	ldrb r0, [r0, #0x27c]
	cmp r0, #0
	beq _0211B89C
	add r0, r5, r4, lsl #2
	ldr r3, [r0, #0x524]
	ldr r0, [r6]
	mov r1, r9
	add r2, r4, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
_0211B89C:
	add r4, r4, #1
_0211B8A0:
	ldr r0, [r5, #0x78]
	cmp r4, r0
	blt _0211B870
	mov r10, #0
	mov r8, #1
	mov r7, #2
	mov r4, #0x38
	ldr r6, _0211B93C ; =0x02099F38
	mov r5, #0x48
	b _0211B92C
_0211B8C8:
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
_0211B92C:
	cmp r10, #6
	blt _0211B8C8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B93C: .word 0x02099F38
	arm_func_end FUN_ov86_0211b7e8

	arm_func_start FUN_ov86_0211b940
FUN_ov86_0211b940: ; 0x0211B940
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrh r0, [r6, #0x10]
	mov r5, #1
	cmp r0, #0
	ldrneh r0, [r6, #0x12]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x14]
	ldr r4, _0211BB28 ; =0x02099F38
	add r0, r0, #8
	add r0, r6, r0, lsl #2
	ldr r1, [r0, #0x4f4]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B9C4
	ldrb r1, [r6, #0x14]
	ldr r0, [r4]
	mov r2, #0x1a
	add r1, r1, #8
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x4f4]
	mov r3, #3
	bl  FUN_ov16_02114918
	ldrb r1, [r6, #0x14]
	mov r2, #0
	ldr r0, [r4]
	add r1, r1, #8
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x4f4]
	mov r3, r2
	bl FUN_02059038
_0211B9C4:
	ldrb r0, [r6, #0x14]
	ldr r4, _0211BB28 ; =0x02099F38
	add r0, r0, #0xa
	add r0, r6, r0, lsl #2
	ldr r1, [r0, #0x4f4]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211BA28
	ldrb r1, [r6, #0x14]
	ldr r0, [r4]
	mov r2, #8
	add r1, r1, #0xa
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x4f4]
	mov r3, #3
	bl  FUN_ov16_02114918
	ldrb r1, [r6, #0x14]
	mov r2, #0
	ldr r0, [r4]
	add r1, r1, #0xa
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x4f4]
	mov r3, r2
	bl FUN_02059038
_0211BA28:
	ldr r0, [r6, #0x93c]
	cmp r0, #0
	bne _0211BA4C
	ldr r0, _0211BB28 ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r6, #0x93c]
_0211BA4C:
	ldrb r0, [r6, #0x14]
	ldr r7, _0211BB28 ; =0x02099F38
	ldr r4, [r6, #0x93c]
	add r0, r0, #8
	add r0, r6, r0, lsl #2
	ldr r3, [r0, #0x4f4]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, [r7]
	ldr r3, _0211BB2C ; =0x00000122
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
	ldrb r3, [r6, #0x14]
	add r3, r3, #0xa
	add r3, r6, r3, lsl #2
	ldr r3, [r3, #0x4f4]
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
_0211BB28: .word 0x02099F38
_0211BB2C: .word 0x00000122
	arm_func_end FUN_ov86_0211b940

	arm_func_start FUN_ov86_0211bb30
FUN_ov86_0211bb30: ; 0x0211BB30
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _0211BB64
	mov r1, #4
	bl FUN_ov86_0211a0d8
	ldrb r1, [r4, #0x14]
	mov r0, r4
	eor r1, r1, #1
	strb r1, [r4, #0x14]
	bl FUN_ov86_0211a8e0
	ldmfd sp!, {r4, pc}
_0211BB64:
	ldr r1, [r4, #0x93c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211BB84 ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	bl  FUN_ov16_02113390
	ldmfd sp!, {r4, pc}
_0211BB84: .word 0x02099F38
	arm_func_end FUN_ov86_0211bb30

	arm_func_start FUN_ov86_0211bb88
FUN_ov86_0211bb88: ; 0x0211BB88
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211BBE8 ; =0x55555556
	mov r5, r1
	smull r1, r3, r4, r5
	add r3, r3, r5, lsr #31
	mov r2, #3
	mov r6, r0
	smull r0, r1, r2, r3
	ldr r2, [r6, #0x40]
	sub r3, r5, r0
	ldr r1, [r6, #0x58]
	add r0, r2, r3
	bl FUN_0201f9bc
	smull r0, r2, r4, r5
	add r2, r2, r5, lsr #31
	add r0, r6, r2, lsl #7
	add r0, r0, r1
	ldrb r0, [r0, #0x37c]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	addne r0, r6, r0, lsl #1
	ldrneh r0, [r0, #0x7c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BBE8: .word 0x55555556
	arm_func_end FUN_ov86_0211bb88

	arm_func_start FUN_ov86_0211bbec
FUN_ov86_0211bbec: ; 0x0211BBEC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211BC4C ; =0x55555556
	mov r5, r1
	smull r1, r3, r4, r5
	add r3, r3, r5, lsr #31
	mov r2, #3
	mov r6, r0
	smull r0, r1, r2, r3
	ldr r2, [r6, #0x40]
	sub r3, r5, r0
	ldr r1, [r6, #0x58]
	add r0, r2, r3
	bl FUN_0201f9bc
	smull r0, r2, r4, r5
	add r2, r2, r5, lsr #31
	add r0, r6, r2, lsl #7
	add r0, r0, r1
	ldrb r0, [r0, #0x37c]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	addne r0, r6, r0
	ldrneb r0, [r0, #0x27c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BC4C: .word 0x55555556
	arm_func_end FUN_ov86_0211bbec

	arm_func_start FUN_ov86_0211bc50
FUN_ov86_0211bc50: ; 0x0211BC50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, #0
	mov r7, #0x40
	mov r6, #0x30
	mov r5, #0xa
	mov r11, #2
	ldr r4, _0211BCD4 ; =0x02099EB4
	b _0211BCC4
_0211BC78:
	mov r0, r10
	mov r1, r9
	bl FUN_ov86_0211bec0
	mov r8, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov86_0211beec
	add r0, r0, #8
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r9, #5
	mov r2, r2, lsl #0x10
	ldr r0, [r4]
	add r3, r8, #8
	mov r1, r11
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fba4
	add r9, r9, #1
_0211BCC4:
	cmp r9, #6
	blt _0211BC78
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BCD4: .word 0x02099EB4
	arm_func_end FUN_ov86_0211bc50

	arm_func_start FUN_ov86_0211bcd8
FUN_ov86_0211bcd8: ; 0x0211BCD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x930]
	mov r6, #1
	cmp r0, #0
	bne _0211BD0C
	ldr r0, _0211BEB8 ; =0x02099F38
	mov r2, r6
	ldr r0, [r0]
	mov r1, #2
	bl  FUN_ov16_02112724
	str r0, [r4, #0x930]
_0211BD0C:
	ldr r7, _0211BEB8 ; =0x02099F38
	ldr r5, [r4, #0x930]
	ldr r2, [r4, #0x4f8]
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
	mov r8, #0x18
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #1
	mov r3, #2
	bl  FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r7]
	add r2, r6, #1
	mov r1, r5
	mov r3, #0xf0
	bl  FUN_ov16_02113b78
	mov r7, #1
	mov r1, #3
	str r7, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, _0211BEBC ; =0x02099EB4
	mov r2, r1
	ldr r0, [r0]
	mov r3, r5
	bl  FUN_ov16_0210fc74
	movs r6, r0
	beq _0211BE20
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
_0211BE20:
	mov r4, #2
	str r4, [sp]
	mov r1, #0xa
	ldr r0, _0211BEBC ; =0x02099EB4
	str r1, [sp, #4]
	mov r8, #3
	ldr r0, [r0]
	mov r1, r8
	mov r3, r5
	mov r2, #4
	bl  FUN_ov16_0210fc74
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
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
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BEB8: .word 0x02099F38
_0211BEBC: .word 0x02099EB4
	arm_func_end FUN_ov86_0211bcd8

	arm_func_start FUN_ov86_0211bec0
FUN_ov86_0211bec0: ; 0x0211BEC0
	ldr r2, _0211BEE8 ; =0x55555556
	mov r3, #3
	smull r0, r12, r2, r1
	add r12, r12, r1, lsr #31
	smull r0, r2, r3, r12
	sub r12, r1, r0
	mov r0, #0x48
	mul r0, r12, r0
	add r0, r0, #0x10
	bx lr
_0211BEE8: .word 0x55555556
	arm_func_end FUN_ov86_0211bec0

	arm_func_start FUN_ov86_0211beec
FUN_ov86_0211beec: ; 0x0211BEEC
	ldr r2, _0211BF04 ; =0x55555556
	mov r3, #0x38
	smull r0, r12, r2, r1
	add r12, r12, r1, lsr #31
	mul r0, r12, r3
	bx lr
_0211BF04: .word 0x55555556
	arm_func_end FUN_ov86_0211beec

	arm_func_start FUN_ov86_0211bf08
FUN_ov86_0211bf08: ; 0x0211BF08
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r1, [r0, #0x30]
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end FUN_ov86_0211bf08

	arm_func_start FUN_ov86_0211bf38
FUN_ov86_0211bf38: ; 0x0211BF38
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, [r4, #0x938]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _0211BFE4 ; =0x02099F38
	mov r8, #1
	ldr r0, [r5]
	mov r1, r8
	mov r2, r8
	bl  FUN_ov16_02112724
	mov r7, r0
	str r7, [r4, #0x938]
	ldr r2, [r4, #0x504]
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
	ldrb r0, [r4, #0x941]
	cmp r0, #0
	mov r0, r4
	beq _0211BFD8
	mov r1, #3
	bl FUN_ov86_0211bfe8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BFD8:
	mov r1, r6
	bl FUN_ov86_0211bfe8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BFE4: .word 0x02099F38
	arm_func_end FUN_ov86_0211bf38

	arm_func_start FUN_ov86_0211bfe8
FUN_ov86_0211bfe8: ; 0x0211BFE8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	str r6, [r7, #0x18]
	ldr r5, [r7, #0x938]
	mov r4, #1
	bl FUN_ov86_0211bec0
	str r0, [r7, #0x20]
	mov r0, r7
	mov r1, r6
	bl FUN_ov86_0211beec
	mov r1, r0, lsl #0x10
	str r0, [r7, #0x24]
	mov r0, r1, asr #0x10
	str r0, [sp]
	ldr r1, [r7, #0x20]
	ldr r0, _0211C048 ; =0x02099F38
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C048: .word 0x02099F38
	arm_func_end FUN_ov86_0211bfe8

	arm_func_start FUN_ov86_0211c04c
FUN_ov86_0211c04c: ; 0x0211C04C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r7, [r6, #0x18]
	mov r5, r1
	mov r12, #1
	mov r3, #0
	mov r1, r7
	mov r4, r2
	str r12, [r6, #0x1c]
	str r3, [r6, #0x30]
	bl FUN_ov86_0211bec0
	str r0, [r6, #0x20]
	mov r0, r6
	mov r1, r7
	bl FUN_ov86_0211beec
	str r0, [r6, #0x24]
	mov r0, r6
	mov r1, r5
	bl FUN_ov86_0211bec0
	str r0, [r6, #0x28]
	mov r0, r6
	mov r1, r5
	bl FUN_ov86_0211beec
	ldr r2, [r6, #0x28]
	ldr r1, [r6, #0x20]
	str r0, [r6, #0x2c]
	sub r0, r2, r1
	mov r1, r4
	bl FUN_0201f9bc
	str r0, [r6, #0x34]
	ldr r2, [r6, #0x2c]
	ldr r0, [r6, #0x24]
	mov r1, r4
	sub r0, r2, r0
	bl FUN_0201f9bc
	str r0, [r6, #0x38]
	ldr r2, [r6, #0x28]
	ldr r0, [r6, #0x20]
	cmp r0, r2
	ble _0211C100
	mov r1, r4
	sub r0, r0, r2
	bl FUN_0201f9bc
	rsb r0, r0, #0
	str r0, [r6, #0x34]
_0211C100:
	ldr r2, [r6, #0x2c]
	ldr r0, [r6, #0x24]
	cmp r0, r2
	ble _0211C124
	mov r1, r4
	sub r0, r0, r2
	bl FUN_0201f9bc
	rsb r0, r0, #0
	str r0, [r6, #0x38]
_0211C124:
	ldr r0, _0211C170 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, r5
	str r5, [r6, #0x18]
	bl FUN_ov86_0211bb88
	strh r0, [r6, #0x10]
	ldr r1, [r6, #0x18]
	mov r0, r6
	bl FUN_ov86_0211bbec
	strh r0, [r6, #0x12]
	mov r0, r6
	bl FUN_ov86_0211bb30
	mov r0, r6
	bl FUN_ov86_0211b59c
	mov r0, r6
	bl FUN_ov86_0211b6a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C170: .word 0x0209AC44
	arm_func_end FUN_ov86_0211c04c

	arm_func_start FUN_ov86_0211c174
FUN_ov86_0211c174: ; 0x0211C174
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, [r0, #0x30]
	ldr r2, [r0, #0x34]
	add r1, r1, #1
	ldr r3, [r0, #0x20]
	ldr r12, [r0, #0x24]
	ldr r4, [r0, #0x38]
	mla r3, r2, r1, r3
	cmp r2, #0
	mla r12, r4, r1, r12
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x938]
	mov r2, #1
	ldr lr, [r0, #0x28]
	bge _0211C1C0
	cmp r3, lr
	movlt r3, lr
	b _0211C1C8
_0211C1C0:
	cmp r3, lr
	movgt r3, lr
_0211C1C8:
	cmp r4, #0
	ldr lr, [r0, #0x2c]
	bge _0211C1E0
	cmp r12, lr
	movlt r12, lr
	b _0211C1E8
_0211C1E0:
	cmp r12, lr
	movgt r12, lr
_0211C1E8:
	ldr lr, [r0, #0x28]
	cmp r3, lr
	ldreq lr, [r0, #0x2c]
	mov r3, r3, lsl #0x10
	cmpeq r12, lr
	moveq lr, #0
	streq lr, [r0, #0x1c]
	streq lr, [r0, #0x30]
	mov r0, r12, lsl #0x10
	mov r12, r0, asr #0x10
	ldr r0, _0211C22C ; =0x02099F38
	str r12, [sp]
	ldr r0, [r0]
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211C22C: .word 0x02099F38
	arm_func_end FUN_ov86_0211c174

	arm_func_start FUN_ov86_0211c230
FUN_ov86_0211c230: ; 0x0211C230
	mov r1, #0
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	str r1, [r0, #0x54]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	str r1, [r0, #0x48]
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end FUN_ov86_0211c230

	arm_func_start FUN_ov86_0211c254
FUN_ov86_0211c254: ; 0x0211C254
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r5, [r10, #0x934]
	ldr r7, [r10, #0x40]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211C39C ; =0x02099F38
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
	b _0211C390
_0211C2A0:
	add r0, r10, r7
	ldrb r6, [r0, #0x37c]
	cmp r6, #0
	beq _0211C30C
	mov r0, r10
	mov r1, r9
	bl FUN_ov86_0211bec0
	add r8, r0, #8
	mov r0, r10
	mov r1, r9
	bl FUN_ov86_0211beec
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
_0211C30C:
	add r0, r10, r7
	ldrb r6, [r0, #0x3fc]
	cmp r6, #0
	beq _0211C37C
	mov r0, r10
	add r1, r9, #3
	bl FUN_ov86_0211bec0
	add r8, r0, #8
	mov r0, r10
	add r1, r9, #3
	bl FUN_ov86_0211beec
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
_0211C37C:
	ldr r0, [r10, #0x58]
	add r7, r7, #1
	cmp r7, r0
	movge r7, #0
	add r9, r9, #1
_0211C390:
	cmp r9, #3
	blt _0211C2A0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C39C: .word 0x02099F38
	arm_func_end FUN_ov86_0211c254

	arm_func_start FUN_ov86_0211c3a0
FUN_ov86_0211c3a0: ; 0x0211C3A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r2, [r10, #0x40]
	ldr r5, [r10, #0x934]
	mov r9, r1
	add r4, r2, r9
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x58]
	cmp r4, #0
	sublt r4, r0, #1
	blt _0211C3D8
	cmp r4, r0
	movge r4, #0
_0211C3D8:
	mov r6, #0
	mov r0, #1
	str r0, [r10, #0x44]
	str r6, [r10, #0x48]
	cmp r9, #0
	bge _0211C488
	mov r0, r10
	mov r1, r6
	bl FUN_ov86_0211bec0
	sub r7, r0, #0x40
	mov r0, r10
	mov r1, r6
	bl FUN_ov86_0211beec
	add r1, r10, r4
	ldrb r6, [r1, #0x37c]
	add r0, r0, #8
	cmp r6, #0
	beq _0211C464
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r8, _0211C5E8 ; =0x02099F38
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
_0211C464:
	mov r0, r10
	mov r1, #3
	bl FUN_ov86_0211beec
	add r1, r10, r4
	ldrb r6, [r1, #0x3fc]
	add r0, r0, #8
	cmp r6, #0
	beq _0211C570
	b _0211C52C
_0211C488:
	ldr r1, [r10, #0x58]
	add r0, r2, #3
	bl FUN_0201f9bc
	mov r8, r1
	mov r0, r10
	mov r1, #2
	bl FUN_ov86_0211bec0
	add r7, r0, #0x50
	mov r0, r10
	mov r1, #2
	bl FUN_ov86_0211beec
	add r1, r10, r8
	ldrb r6, [r1, #0x37c]
	add r0, r0, #8
	cmp r6, #0
	beq _0211C50C
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r11, _0211C5E8 ; =0x02099F38
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
_0211C50C:
	mov r0, r10
	mov r1, #3
	bl FUN_ov86_0211beec
	add r1, r10, r8
	ldrb r6, [r1, #0x3fc]
	add r0, r0, #8
	cmp r6, #0
	beq _0211C570
_0211C52C:
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r8, _0211C5E8 ; =0x02099F38
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
_0211C570:
	rsb r1, r9, #0
	mov r0, #0x48
	mul r5, r1, r0
	ldr r2, _0211C5EC ; =0x66666667
	mov r3, #0
	mov r0, r5, lsr #0x1f
	smull r1, r6, r2, r5
	add r6, r0, r6, asr #1
	ldr r0, _0211C5F0 ; =0x0209AC44
	mov r1, #8
	str r6, [r10, #0x54]
	str r3, [r10, #0x4c]
	str r5, [r10, #0x50]
	bl FUN_0202cf6c
	ldr r1, [r10, #0x18]
	mov r0, r10
	str r4, [r10, #0x40]
	bl FUN_ov86_0211bb88
	strh r0, [r10, #0x10]
	ldr r1, [r10, #0x18]
	mov r0, r10
	bl FUN_ov86_0211bbec
	strh r0, [r10, #0x12]
	mov r0, r10
	bl FUN_ov86_0211bb30
	mov r0, r10
	bl FUN_ov86_0211b59c
	mov r0, r10
	bl FUN_ov86_0211b6a4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C5E8: .word 0x02099F38
_0211C5EC: .word 0x66666667
_0211C5F0: .word 0x0209AC44
	arm_func_end FUN_ov86_0211c3a0

	arm_func_start FUN_ov86_0211c5f4
FUN_ov86_0211c5f4: ; 0x0211C5F4
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x48]
	ldr r2, [r0, #0x54]
	add r1, r1, #1
	ldr r3, [r0, #0x4c]
	str r1, [r0, #0x48]
	mla r3, r2, r1, r3
	cmp r2, #0
	ldr r1, [r0, #0x934]
	ldr r2, [r0, #0x50]
	bge _0211C62C
	cmp r3, r2
	movlt r3, r2
	b _0211C634
_0211C62C:
	cmp r3, r2
	movgt r3, r2
_0211C634:
	ldr r2, [r0, #0x50]
	cmp r3, r2
	bne _0211C654
	mov r1, #0
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	bl FUN_ov86_0211c254
	ldmfd sp!, {r3, pc}
_0211C654:
	ldr r0, _0211C670 ; =0x02099F38
	mov r2, r3, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, asr #0x10
	mov r3, #0
	bl  FUN_ov16_02114248
	ldmfd sp!, {r3, pc}
_0211C670: .word 0x02099F38
	arm_func_end FUN_ov86_0211c5f4

	arm_func_start FUN_ov86_0211c674
FUN_ov86_0211c674: ; 0x0211C674
	ldr r0, _0211C684 ; =0x0209F5C0
	ldr r12, _0211C688 ; = FUN_ov16_020f672c
	mov r1, #0
	bx r12
_0211C684: .word 0x0209F5C0
_0211C688: .word  FUN_ov16_020f672c
	arm_func_end FUN_ov86_0211c674

	arm_func_start FUN_ov86_0211c68c
FUN_ov86_0211c68c: ; 0x0211C68C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r0, [r0, #0x74]
	ldr r4, _0211C6D4 ; =0x02099EB4
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
_0211C6D4: .word 0x02099EB4
	arm_func_end FUN_ov86_0211c68c

	arm_func_start FUN_ov86_0211c6d8
FUN_ov86_0211c6d8: ; 0x0211C6D8
	stmfd sp!, {r4, r5, r6, lr}
	bl FUN_02004f78
	mov r4, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r4
	bl DC_FlushRange
	bl FUN_02004fcc
	mov r1, r4
	bl DC_FlushRange
	bl FUN_0200505c
	mov r1, r4
	bl DC_FlushRange
	mov r0, r6
	ldr r5, _0211C79C ; =0x020A6C40
	mov r4, #0x800
	mov r1, r5
	mov r2, r4
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_020054dc
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_020055bc
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_0200569c
	ldmfd sp!, {r4, r5, r6, pc}
_0211C79C: .word 0x020A6C40
	arm_func_end FUN_ov86_0211c6d8

	arm_func_start FUN_ov86_0211c7a0
FUN_ov86_0211c7a0: ; 0x0211C7A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x1d
	bne _0211C7C4
	bl  FUN_ov16_020f47fc
	mov r0, #4
	bl  FUN_ov16_020f3f60
_0211C7C4:
	mov r4, #0
	mov r1, #3
	mov r0, r5
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	strb r4, [r5, #0x17]
	strb r4, [r5, #0x16]
	strb r4, [r5, #0x15]
	str r4, [r5, #0x78]
	strb r4, [r5, #0x14]
	strh r1, [r5, #0x74]
	bl FUN_ov86_0211bf08
	mov r0, r5
	bl FUN_ov86_0211c230
	add r0, r5, #0x7c
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x78
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x7c
	mov r2, #0x200
	bl MI_CpuFill8
	mov r6, #0x100
	add r0, r5, #0x27c
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	add r0, r5, #0xf4
	add r0, r0, #0x400
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r5, #0x124
	add r0, r0, #0x800
	mov r1, r4
	mov r2, #0x1c
	bl MI_CpuFill8
	add r0, r5, #0x124
	add r0, r0, #0x400
	mov r1, r4
	mov r2, #0x400
	bl MI_CpuFill8
	mov r2, r6
	add r0, r5, #0x37c
	mov r1, r4
	bl MI_CpuFill8
	ldr r0, _0211C944 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211C948 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r0, _0211C94C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldr r0, [r5, #4]
	strb r4, [r5, #0x940]
	bl FUN_0204204c
	mov r4, #0
	mov r2, #1
	cmp r0, #0xf
	moveq r0, #1
	streqb r0, [r5, #0x940]
	sub r1, r2, #2
	ldr r0, _0211C950 ; =0x0209BA20
	str r4, [r5, #0x60]
	str r2, [r5, #0x64]
	str r1, [r5, #0x68]
	str r4, [r5, #0x6c]
	strb r4, [r5, #0x70]
	strb r4, [r5, #0x71]
	bl FUN_020728c4
	strh r0, [r5, #0x10]
	ldr r0, _0211C954 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5a58
	ldr r0, _0211C958 ; =0x020A1640
	strh r4, [r5, #0x10]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	strneh r0, [r5, #0x10]
	ldrneh r1, [r5, #0x10]
	addne r0, r5, #0x900
	strneh r1, [r0, #0x42]
	mov r1, #0
	mov r0, #0x74
	strb r1, [r5, #0x941]
	bl FUN_0201e014
	cmp r0, #0
	beq _0211C934
	bl  FUN_ov16_02110558
_0211C934:
	str r0, [r5, #0x944]
	mov r0, r5
	bl FUN_ov86_0211a764
	ldmfd sp!, {r4, r5, r6, pc}
_0211C944: .word 0x02099EB4
_0211C948: .word 0x02099ED4
_0211C94C: .word 0x02099F38
_0211C950: .word 0x0209BA20
_0211C954: .word 0x0209F5C0
_0211C958: .word 0x020A1640
	arm_func_end FUN_ov86_0211c7a0

	arm_func_start FUN_ov86_0211c95c
FUN_ov86_0211c95c: ; 0x0211C95C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0211CAE4
_0211C974: ; jump table
	b _0211CAE4 ; case 0
	b _0211C99C ; case 1
	b _0211CAE4 ; case 2
	b _0211C9E8 ; case 3
	b _0211CA58 ; case 4
	b _0211CAE4 ; case 5
	b _0211CA78 ; case 6
	b _0211CA80 ; case 7
	b _0211CAE0 ; case 8
	b _0211CAE0 ; case 9
_0211C99C:
	add r0, r4, #0x7c
	add r0, r0, #0x400
	mov r1, #0xa
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211CAE4
	mov r0, r4
	bl FUN_ov86_0211a7e4
	mov r0, r4
	bl FUN_ov86_0211a7e8
	mov r0, r4
	bl FUN_ov86_0211a254
	mov r0, r4
	bl FUN_ov86_0211a834
	mov r0, r4
	bl FUN_ov86_0211a8e0
	mov r0, r4
	mov r1, #2
_0211C9E4:
	b _0211CAC4
_0211C9E8:
	bl FUN_ov86_0211aa50
	cmp r0, #0
	beq _0211CAE4
	mov r0, r4
	bl FUN_ov86_0211aae0
	mov r0, r4
	bl FUN_ov86_0211bc50
	mov r0, r4
	bl FUN_ov86_0211bcd8
	mov r0, r4
	bl FUN_ov86_0211b768
	mov r0, r4
	bl FUN_ov86_0211b54c
	mov r0, r4
	bl FUN_ov86_0211b654
	mov r0, r4
	bl FUN_ov86_0211b728
	mov r0, r4
	bl FUN_ov86_0211b7e8
	mov r0, r4
	bl FUN_ov86_0211bf38
	mov r0, r4
	bl FUN_ov86_0211b940
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	b _0211CA6C
_0211CA58:
	bl FUN_ov86_0211aa50
	cmp r0, #0
	beq _0211CAE4
	mov r0, r4
	bl FUN_ov86_0211b940
_0211CA6C:
	mov r0, r4
	mov r1, #5
	b _0211C9E4
_0211CA78:
	mov r1, #8
	b _0211C9E4
_0211CA80:
	ldr r0, _0211CB68 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211CAE4
	mov r0, r4
	bl FUN_ov86_0211a040
	cmp r0, #2
	mov r0, r4
	bne _0211CACC
_0211CAA8:
	bl FUN_ov86_0211a048
	mov r0, r4
	bl FUN_ov86_0211b54c
	mov r0, r4
	bl FUN_ov86_0211b654
	mov r0, r4
	mov r1, #5
_0211CAC4:
	bl FUN_ov86_0211a0d8
	b _0211CAE4
_0211CACC:
	bl FUN_ov86_0211a040
	cmp r0, #1
	bne _0211CAE4
	mov r0, r4
	b _0211CAA8
_0211CAE0:
	bl FUN_ov86_0211c674
_0211CAE4:
	ldr r0, _0211CB68 ; =0x02099ED4
	ldr r5, _0211CB6C ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl  FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211CB1C
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211CB28
_0211CB1C:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211CB28:
	bl FUN_0201fdac
	ldr r2, _0211CB70 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211CB50
	mov r0, r4
	bl FUN_ov86_0211c174
_0211CB50:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov86_0211c5f4
	ldmfd sp!, {r3, r4, r5, pc}
_0211CB68: .word 0x02099ED4
_0211CB6C: .word 0x0209A110
_0211CB70: .word 0x02099F58
	arm_func_end FUN_ov86_0211c95c

	arm_func_start FUN_ov86_0211cb74
FUN_ov86_0211cb74: ; 0x0211CB74
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0211CB94
	cmp r1, #5
	beq _0211CBAC
	ldmfd sp!, {r4, pc}
_0211CB94:
	bl FUN_ov86_0211b364
	bl  FUN_ov16_020f10ac
	mov r0, r4
	mov r1, #3
	bl FUN_ov86_0211a0d8
	ldmfd sp!, {r4, pc}
_0211CBAC:
	bl  FUN_ov16_020f10ac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov86_0211cb74

	arm_func_start FUN_ov86_0211cbb4
FUN_ov86_0211cbb4: ; 0x0211CBB4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211CC4C ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211CC50 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r0, [r4, #0x944]
	cmp r0, #0
	beq _0211CBF8
	beq _0211CBF0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CBF0:
	mov r0, #0
	str r0, [r4, #0x944]
_0211CBF8:
	ldr r5, _0211CC54 ; =0x0209BA20
	ldrh r1, [r4, #0x10]
	mov r0, r5
	bl FUN_020728a8
	add r0, r4, #0x7c
	add r0, r0, #0x400
	mov r1, #0xa
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov86_0211abbc
	mov r0, r5
	bl  FUN_ov16_020eedb8
	ldr r0, _0211CC58 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r0, _0211CC5C ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f5af0
	mov r0, r4
	bl FUN_ov86_0211c6d8
	ldmfd sp!, {r3, r4, r5, pc}
_0211CC4C: .word 0x02099EB4
_0211CC50: .word 0x02099ED4
_0211CC54: .word 0x0209BA20
_0211CC58: .word 0x02099F38
_0211CC5C: .word 0x0209F5C0
	arm_func_end FUN_ov86_0211cbb4

	arm_func_start FUN_ov86_0211cc60
FUN_ov86_0211cc60: ; 0x0211CC60
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov86_0211cc60

	arm_func_start FUN_ov86_0211cc74
FUN_ov86_0211cc74: ; 0x0211CC74
	bx lr
	arm_func_end FUN_ov86_0211cc74
_0211CC78:
	.byte 0x98, 0xCD, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0xCD, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x78, 0xCD, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x38, 0xCD, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x48, 0xCD, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x58, 0xCD, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0xA8, 0xCD, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x88, 0xCD, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov86_0211ccc0
FUN_ov86_0211ccc0: ; 0x0211CCC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211CD08 ; =0x0211CD20
	str r0, [r4, #4]
	ldr r0, _0211CD0C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _0211CD10 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CD08: .word 0x0211CD20
_0211CD0C: .word 0x00009CCD
_0211CD10: .word 0x0000EA3C
	arm_func_end FUN_ov86_0211ccc0
	; 0x0211CD14


	.rodata
	.incbin "/incbin/overlay86_rodata.bin"

	.bss
	.space 0x0
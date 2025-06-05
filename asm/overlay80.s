
	.include "/macros/function.inc"
	.include "/global.inc"

	.text
	.org 0x02119f00

	arm_func_start FUN_ov80_02119f00
FUN_ov80_02119f00: ; 0x02119F00
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_02119f00

	arm_func_start FUN_ov80_02119f20
FUN_ov80_02119f20: ; 0x02119F20
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x30]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_02119f20

	arm_func_start FUN_ov80_02119f44
FUN_ov80_02119f44: ; 0x02119F44
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_02119f44

	arm_func_start FUN_ov80_02119f68
FUN_ov80_02119f68: ; 0x02119F68
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_02119f68

	arm_func_start FUN_ov80_02119f8c
FUN_ov80_02119f8c: ; 0x02119F8C
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_02119f8c

	arm_func_start FUN_ov80_02119fb0
FUN_ov80_02119fb0: ; 0x02119FB0
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0]
	ldr r2, [r2, #0x64]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_02119fb0

	arm_func_start FUN_ov80_02119fd4
FUN_ov80_02119fd4: ; 0x02119FD4
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x68]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_02119fd4

	arm_func_start FUN_ov80_02119ff8
FUN_ov80_02119ff8: ; 0x02119FF8
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r0]
	ldr r3, [r3, #8]
	blx r3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_02119ff8

	arm_func_start FUN_ov80_0211a018
FUN_ov80_0211a018: ; 0x0211A018
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_0211a018

	arm_func_start FUN_ov80_0211a038
FUN_ov80_0211a038: ; 0x0211A038
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	mov r7, #0
	ldr r0, _0211A184 ; =0x02099E99
	str r7, [r8, #8]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0211A05C
	b _0211A138
_0211A05C:
	ldr r5, _0211A188 ; =0x0209A0AC
	ldr r9, _0211A18C ; =0x0209A11C
_0211A064:
	ldr r0, [r9]
	mov r1, r7
	bl FUN_0206c6fc
	movs r6, r0
	beq _0211A0E0
	bl FUN_0206dcdc
	cmp r0, #0
	bne _0211A0E0
	mov r0, r6
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r5
	bl FUN_0206c718
	movs r4, r0
	beq _0211A0E0
	mov r0, r6
	bl FUN_0206dcdc
	cmp r0, #0
	bne _0211A0E0
	mov r0, r4
	bl FUN_0206dcd4
	mov r10, r0
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r10
	bl FUN_0206ed40
	ldr r0, [r6, #0x90]
	str r0, [r4, #0x90]
	ldrh r0, [r6, #0x8e]
	strh r0, [r4, #0x8e]
_0211A0E0:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211A064
	ldr r1, _0211A18C ; =0x0209A11C
	ldr r0, _0211A188 ; =0x0209A0AC
	ldr r1, [r1]
	str r1, [r8, #0xc]
	bl  FUN_ov16_020efa04
	ldr r0, _0211A190 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov126_02139144
	bl  FUN_ov1_020db2f0
	cmp r0, #0
	beq _0211A138
	mov r0, #0x3e4
	bl FUN_0201e014
	cmp r0, #0
	ldrne r2, [r8, #4]
	ldrne r1, _0211A194 ; =0x02122824
	b _0211A14C
_0211A138:
	ldr r0, _0211A198 ; =0x00000A88
	bl FUN_0201e014
	cmp r0, #0
	ldrne r2, [r8, #4]
	ldrne r1, _0211A19C ; =0x02122AE0
_0211A14C:
	stmneia r0, {r1, r2}
	str r0, [r8, #8]
	ldr r0, [r8, #8]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r4, _0211A1A0 ; =0x0209BA20
	mov r0, r4
	bl FUN_02073674
	mov r0, r4
	bl FUN_020732e0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A184: .word 0x02099E99
_0211A188: .word 0x0209A0AC
_0211A18C: .word 0x0209A11C
_0211A190: .word 0x02099EF0
_0211A194: .word 0x02122824
_0211A198: .word 0x00000A88
_0211A19C: .word 0x02122AE0
_0211A1A0: .word 0x0209BA20
	arm_func_end FUN_ov80_0211a038

	arm_func_start FUN_ov80_0211a1a4
FUN_ov80_0211a1a4: ; 0x0211A1A4
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_0211a1a4

	arm_func_start FUN_ov80_0211a1c4
FUN_ov80_0211a1c4: ; 0x0211A1C4
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_0211a1c4

	arm_func_start FUN_ov80_0211a1e4
FUN_ov80_0211a1e4: ; 0x0211A1E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0211A21C
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0211A21C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211A21C:
	mov r4, #0
	ldr r0, _0211A2E8 ; =0x02099E99
	str r4, [r5, #8]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0211A2D0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0211A2D0
	ldr r6, _0211A2EC ; =0x0209A11C
_0211A244:
	ldr r0, [r5, #0xc]
	mov r1, r4
	bl FUN_0206c6fc
	movs r7, r0
	beq _0211A2BC
	bl FUN_0206dcdc
	cmp r0, #0
	bne _0211A2BC
	mov r0, r7
	bl FUN_0206d6b0
	cmp r0, #0
	beq _0211A2BC
	mov r0, r7
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, [r6]
	bl FUN_0206c718
	movs r8, r0
	beq _0211A2BC
	bl FUN_0206dcdc
	cmp r0, #0
	bne _0211A2BC
	mov r0, r7
	bl FUN_0206dcd4
	mov r7, r0
	mov r0, r8
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r7
	bl FUN_0206ed40
_0211A2BC:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0211A244
	ldr r0, [r5, #0xc]
	bl  FUN_ov16_020efa04
_0211A2D0:
	ldr r4, _0211A2F0 ; =0x0209BA20
	mov r0, r4
	bl FUN_020736e8
	mov r0, r4
	bl FUN_02073358
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A2E8: .word 0x02099E99
_0211A2EC: .word 0x0209A11C
_0211A2F0: .word 0x0209BA20
	arm_func_end FUN_ov80_0211a1e4

	arm_func_start FUN_ov80_0211a2f4
FUN_ov80_0211a2f4: ; 0x0211A2F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov80_0211a2f4

	arm_func_start FUN_ov80_0211a308
FUN_ov80_0211a308: ; 0x0211A308
	bx lr
	arm_func_end FUN_ov80_0211a308

	arm_func_start FUN_ov80_0211a30c
FUN_ov80_0211a30c: ; 0x0211A30C
	mov r1, r0
	ldr r0, [r1, #0x1dc]
	ldr r2, _0211A324 ; =0x021224B4
	ldr r12, _0211A328 ; = FUN_ov1_020dbfdc
	add r1, r1, #0x1dc
	bx r12
_0211A324: .word 0x021224B4
_0211A328: .word  FUN_ov1_020dbfdc
	arm_func_end FUN_ov80_0211a30c

	arm_func_start FUN_ov80_0211a32c
FUN_ov80_0211a32c: ; 0x0211A32C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r4, r0
	str r1, [r4, #0x10]
	cmp r1, #5
	mov r11, #0
	addls pc, pc, r1, lsl #2
	b _0211A608
_0211A34C: ; jump table
	b _0211A608 ; case 0
	b _0211A364 ; case 1
	b _0211A408 ; case 2
	b _0211A410 ; case 3
	b _0211A410 ; case 4
	b _0211A588 ; case 5
_0211A364:
	ldr r0, _0211A61C ; =0x021228A0
	add r1, r4, #0x1dc
	bl  FUN_ov1_020dbe00
	ldr r0, _0211A620 ; =0x0209BA20
	bl FUN_020732d8
	cmp r0, #0
	bne _0211A3A8
	mov r0, r4
	bl FUN_ov80_0211d554
	cmp r0, #0
	beq _0211A3A8
	mov r3, #0x18
	mul r2, r0, r3
	ldr r0, _0211A624 ; =0x021228B0
	add r1, r4, #0x35c
	str r11, [sp]
	bl  FUN_ov16_020f31fc
_0211A3A8:
	ldr r0, _0211A620 ; =0x0209BA20
	bl FUN_020729fc
	mov r3, #0x18
	mul r2, r0, r3
	ldr r0, _0211A628 ; =0x021228CC
	add r1, r4, #0x344
	str r11, [sp]
	bl  FUN_ov16_020f31fc
	ldr r0, _0211A62C ; =0x021228E8
	add r1, r4, #0x350
	bl  FUN_ov16_020f316c
	ldr r0, _0211A630 ; =0x02122904
	add r1, r4, #0x320
	bl  FUN_ov1_020dbf50
	ldr r0, _0211A634 ; =0x0212290C
	add r1, r4, #0x32c
	bl  FUN_ov1_020dbf50
	ldr r0, _0211A638 ; =0x02122914
	add r1, r4, #0x338
	bl  FUN_ov1_020dbf50
	ldr r0, _0211A63C ; =0x0212291C
	add r1, r4, #0x38c
	bl  FUN_ov16_020f316c
	b _0211A608
_0211A408:
	bl FUN_ov80_0211a30c
	b _0211A608
_0211A410:
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A620 ; =0x0209BA20
	bl FUN_0207249c
	mov r8, r0
	mov r9, r11
	add r5, r4, #0x1dc
_0211A42C:
	mov r0, #0x30
	mla r0, r9, r0, r4
	ldrh r0, [r0, #0x8c]
	cmp r0, #0
	beq _0211A578
	mov r1, r11
	bl  FUN_ov16_020efa9c
	movs r7, r0
	beq _0211A578
	ldr r0, [r4, #0x10]
	cmp r0, #3
	bne _0211A4AC
	ldr r0, [r4, #0x320]
	cmp r0, #0
	beq _0211A578
	add r2, sp, #0x18
	str r2, [sp]
	mov r1, r7
	mov r2, r11
	add r3, sp, #0x1c
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _0211A578
	add r2, r9, #0x13
	mov r1, #0xc
	mov r0, #1
	str r0, [sp]
	mla r1, r2, r1, r5
	ldr r0, _0211A640 ; =0x02122934
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	b _0211A574
_0211A4AC:
	mov r0, r8
	mov r1, r7
	bl  FUN_ov16_020f0bcc
	ldrh r1, [r8, #0x28]
	mov r6, r0
	mov r0, r7
	cmp r1, #0
	ldreqh r1, [r8, #0x26]
	bl  FUN_ov16_020f0b3c
	mov r10, r0
	ldr r0, [r4, #0x32c]
	cmp r0, #0
	beq _0211A52C
	add r2, sp, #0x14
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r1, r7
	mov r2, r10
	mov r3, r6
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _0211A52C
	add r2, r9, #0xf
	mov r1, #0xc
	mla r1, r2, r1, r5
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211A644 ; =0x0212293C
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	bl  FUN_ov1_020dbf88
_0211A52C:
	ldr r0, [r4, #0x338]
	cmp r0, #0
	beq _0211A578
	add r3, sp, #0x10
	str r3, [sp]
	mov r1, r10
	mov r2, r6
	add r3, sp, #0x14
	bl  FUN_ov16_020f3744
	cmp r0, #0
	beq _0211A578
	add r2, r9, #0x17
	mov r1, #0xc
	mla r1, r2, r1, r5
	str r11, [sp]
	ldr r0, _0211A648 ; =0x02122944
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
_0211A574:
	bl  FUN_ov1_020dbf88
_0211A578:
	add r9, r9, #1
	cmp r9, #4
	blt _0211A42C
	b _0211A608
_0211A588:
	ldr r9, _0211A620 ; =0x0209BA20
	mov r10, r11
	add r6, r4, #0x1dc
	mov r7, #1
	add r8, sp, #0xc
	add r11, sp, #8
	mov r5, #0xc
_0211A5A4:
	add r0, r4, r10, lsl #1
	ldrh r1, [r0, #0x82]
	cmp r1, #0
	beq _0211A608
	mov r0, r9
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _0211A5FC
	ldrh r1, [r0, #0x22]
	ldr r0, [r4, #0x38c]
	mov r2, r8
	mov r3, r11
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A5FC
	add r0, r10, #0x21
	mla r1, r0, r5, r6
	str r7, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _0211A64C ; =0x0212294C
	bl  FUN_ov16_020f31fc
_0211A5FC:
	add r10, r10, #1
	cmp r10, #3
	blt _0211A5A4
_0211A608:
	mov r0, r4
	mov r1, #1
	bl FUN_ov80_0211b4cc
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A61C: .word 0x021228A0
_0211A620: .word 0x0209BA20
_0211A624: .word 0x021228B0
_0211A628: .word 0x021228CC
_0211A62C: .word 0x021228E8
_0211A630: .word 0x02122904
_0211A634: .word 0x0212290C
_0211A638: .word 0x02122914
_0211A63C: .word 0x0212291C
_0211A640: .word 0x02122934
_0211A644: .word 0x0212293C
_0211A648: .word 0x02122944
_0211A64C: .word 0x0212294C
	arm_func_end FUN_ov80_0211a32c

	arm_func_start FUN_ov80_0211a650
FUN_ov80_0211a650: ; 0x0211A650
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211A668: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0211A680 ; case 1
	b _0211A68C ; case 2
	b _0211A6B4 ; case 3
	b _0211A6D4 ; case 4
	b _0211A6E0 ; case 5
_0211A680:
	mov r1, #2
	bl FUN_ov80_0211a32c
	ldmfd sp!, {r4, pc}
_0211A68C:
	bl FUN_ov80_0211a87c
	mov r0, r4
	mov r1, #3
	bl FUN_ov80_0211a32c
	ldr r0, [r4, #4]
	add r1, r4, #0x40
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, pc}
_0211A6B4:
	mov r1, #4
	bl FUN_ov80_0211a32c
	ldr r0, [r4, #4]
	add r1, r4, #0x40
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, pc}
_0211A6D4:
	mov r1, #5
	bl FUN_ov80_0211a32c
	ldmfd sp!, {r4, pc}
_0211A6E0:
	bl FUN_ov80_0211a760
	add r0, r4, #0x320
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x32c
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x338
	bl  FUN_ov16_020f33fc
	bl  FUN_ov1_020db2ac
	cmp r0, #0
	mov r0, r4
	beq _0211A72C
	mov r1, #2
	bl FUN_ov80_0211b4cc
	ldr r0, [r4, #4]
	add r1, r4, #0x40
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, pc}
_0211A72C:
	mov r1, #7
	bl FUN_ov80_0211b4cc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov80_0211a650

	arm_func_start FUN_ov80_0211a738
FUN_ov80_0211a738: ; 0x0211A738
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x1dc
	mov r4, #0xc
_0211A748:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x25
	blt _0211A748
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov80_0211a738

	arm_func_start FUN_ov80_0211a760
FUN_ov80_0211a760: ; 0x0211A760
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	ldr r8, _0211A7C0 ; =0x02099F04
	mov r5, r0
	mov r9, r4
	mov r6, #0xc
	mov r7, #0x30
_0211A77C:
	mla r0, r4, r7, r5
	ldrh r0, [r0, #0x8c]
	cmp r0, #0
	beq _0211A7B0
	mov r1, r9
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	mlane r1, r4, r6, r5
	ldrne r1, [r1, #0x2f0]
	cmpne r1, #0
	beq _0211A7B0
	ldr r2, [r8]
	bl  FUN_ov16_020f0c30 ; may be ov17
_0211A7B0:
	add r4, r4, #1
	cmp r4, #4
	blt _0211A77C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A7C0: .word 0x02099F04
	arm_func_end FUN_ov80_0211a760

	arm_func_start FUN_ov80_0211a7c4
FUN_ov80_0211a7c4: ; 0x0211A7C4
	stmfd sp!, {r4, lr}
	movs r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4, lsl #1
	bl  FUN_ov16_020ef8d4
	add r2, r4, r4, lsl #3
	ldr r1, _0211A7F4 ; =0xCCCCCCCD
	add r2, r2, r0
	umull r1, r0, r2, r1
	mov r0, r0, lsr #3
	ldmfd sp!, {r4, pc}
_0211A7F4: .word 0xCCCCCCCD
	arm_func_end FUN_ov80_0211a7c4

	arm_func_start FUN_ov80_0211a7f8
FUN_ov80_0211a7f8: ; 0x0211A7F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldr r0, [r6, #0x90]
	mov r5, r2
	mov r4, r3
	tst r0, #0x1000
	beq _0211A838
	ldr r0, _0211A874 ; =0x0209BA20
	mov r1, #0x3f
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _0211A878 ; =0x51EB851F
	mul r2, r5, r0
	smull r0, r5, r1, r2
	mov r0, r2, lsr #0x1f
	add r5, r0, r5, asr #5
_0211A838:
	ldr r0, [r6, #0x90]
	add r5, r5, r4
	tst r0, #0x2000
	beq _0211A86C
	ldr r0, _0211A874 ; =0x0209BA20
	mov r1, #0x40
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _0211A878 ; =0x51EB851F
	mul r2, r5, r0
	smull r0, r5, r1, r2
	mov r0, r2, lsr #0x1f
	add r5, r0, r5, asr #5
_0211A86C:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0211A874: .word 0x0209BA20
_0211A878: .word 0x51EB851F
	arm_func_end FUN_ov80_0211a7f8

	arm_func_start FUN_ov80_0211a87c
FUN_ov80_0211a87c: ; 0x0211A87C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r7, #0
	mov r4, r0
	mov r1, r7
	add r0, r4, #0x40
	mov r2, #0x48
	mov r5, r7
	bl MemWrite
	mov r1, r7
	add r0, r4, #0x8c
	mov r2, #0xc0
	bl MemWrite
	ldr r9, [r4, #0x35c]
	mov r0, #0x45
	str r0, [r4, #0x40]
	cmp r9, #0
	ldr r8, [r4, #0x344]
	beq _0211A9A4
	mov r0, #0x64
	bl  FUN_ov16_020ef928
	mov r6, r0
	ldrb r10, [r9, #0x16]
	ldr r0, _0211ADD4 ; =0x020A9C40
	bl FUN_020463e8
	mul r1, r10, r0
	ldr r2, _0211ADD8 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mov r0, r3, lsl #0x10
	cmp r6, r0, lsr #16
	bhs _0211A9A4
	ldr r0, [r9]
	mov r7, r9
	cmp r0, #0
	ldreq r0, [r8]
	streq r0, [r9]
	ldr r0, [r9, #4]
	cmp r0, #0
	ldreq r0, [r8, #4]
	streq r0, [r9, #4]
	ldrh r0, [r9, #8]
	cmp r0, #0
	ldreqh r0, [r8, #8]
	streqh r0, [r9, #8]
	mov r0, #0
_0211A938:
	add r1, r9, r0, lsl #1
	ldrh r1, [r1, #0xa]
	cmp r1, #0
	bne _0211A9A4
	cmp r0, #2
	bne _0211A990
	mov r1, r5
_0211A954:
	add r2, r8, r1, lsl #1
	ldrh r6, [r2, #0xa]
	add r3, r9, r1, lsl #1
	add r2, r1, #1
	strh r6, [r3, #0xa]
	add r10, r8, r1
	ldrb r3, [r10, #0x10]
	add r6, r9, r1
	mov r1, r2, lsl #0x10
	strb r3, [r6, #0x10]
	ldrb r2, [r10, #0x13]
	mov r1, r1, asr #0x10
	cmp r1, #3
	strb r2, [r6, #0x13]
	blt _0211A954
_0211A990:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	cmp r0, #3
	blt _0211A938
_0211A9A4:
	cmp r7, #0
	moveq r7, r8
	mov r5, #0
	cmp r7, #0
	beq _0211AC5C
	ldrh r1, [r7, #8]
	mov r0, r4
	bl FUN_ov80_0211a7c4
	str r0, [r4, #0x68]
	ldr r0, _0211ADDC ; =0x0209BA20
	bl FUN_02073184
	cmp r0, #0
	ldrneb r0, [r0, #0x1c]
	mov r11, #0
	mov r8, #6
	add r6, sp, #0x18
	strne r0, [r4, #0x4c]
	mov r0, r6
	mov r1, r11
	mov r2, r8
	bl MemWrite
	ldr r0, _0211ADE0 ; =0x02099EF0
	mov r1, r11
	ldr r0, [r0]
	mov r2, r6
	mov r3, r8
	bl  FUN_ov132_021462fc
	mov r1, r11
_0211AA14:
	ldrb r0, [r6, r1]
	add r1, r1, #1
	cmp r1, #6
	add r11, r11, r0
	blt _0211AA14
	ldr r1, [r4, #0x4c]
	mov r8, #0
	mul r0, r1, r11
	str r0, [sp, #0xc]
	mov r6, r8
	str r11, [r4, #0x6c]
_0211AA40:
	mov r0, r6
	bl  FUN_ov16_020efa80
	movs r9, r0
	beq _0211AA78
	bl FUN_0206d6b0
	cmp r0, #0
	beq _0211AA78
	mov r0, r9
	bl FUN_0206d688
	cmp r0, #0
	beq _0211AA78
	ldr r0, [r9, #0x90]
	tst r0, #0x2000
	addeq r8, r8, #1
_0211AA78:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0211AA40
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x68]
	ldr r9, [sp, #8]
	str r0, [sp, #4]
	mov r10, r9
_0211AA9C:
	mov r0, r10
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _0211AB48
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211AB48
	mov r0, r6
	bl FUN_0206d6b0
	cmp r0, #0
	beq _0211AB48
	mov r0, r6
	bl FUN_0206d688
	cmp r0, #0
	beq _0211AB48
	ldr r0, [r6, #0x90]
	tst r0, #0x2000
	beq _0211AB48
	ldr r0, _0211ADDC ; =0x0209BA20
	mov r1, #0x40
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r2, [sp, #4]
	mov r1, r8
	rsb r6, r0, #0x64
	mul r0, r2, r6
	bl FUN_0201f9bc
	ldr r2, _0211ADD8 ; =0x51EB851F
	smull r3, r1, r2, r0
	mov r0, r0, lsr #0x1f
	add r1, r0, r1, asr #5
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	mul r0, r1, r6
	mov r1, r8
	bl FUN_0201f9bc
	ldr r1, _0211ADD8 ; =0x51EB851F
	smull r2, r3, r1, r0
	mov r0, r0, lsr #0x1f
	add r3, r0, r3, asr #5
	add r9, r9, r3
_0211AB48:
	add r10, r10, #1
	cmp r10, #0x64
	blt _0211AA9C
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, r0, r9
	ldr r0, [sp, #4]
	mov r8, #0
	add r1, r1, r0
	str r0, [r4, #0x68]
	ldr r0, [sp, #0xc]
	str r2, [r4, #0x3c]
	str r0, [r4, #0x70]
	str r1, [r4, #0x74]
	ldr r6, [r7]
	mov r9, r8
	strh r8, [r4, #0x80]
_0211AB8C:
	add r0, r7, r9, lsl #1
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _0211AC1C
	mov r0, #0x64
	add r10, r7, r9
	bl  FUN_ov16_020ef8d4
	ldrb r1, [r10, #0x10]
	cmp r1, r0
	bls _0211AC1C
	add r0, r7, r9, lsl #1
	ldrh r1, [r0, #0xa]
	ldr r0, _0211ADDC ; =0x0209BA20
	mov r2, #1
	bl  FUN_ov16_020ee4b4
	cmp r0, #0
	add r0, r7, r9, lsl #1
	beq _0211ABEC
	ldrh r2, [r0, #0xa]
	add r1, r4, r8, lsl #1
	add r0, r8, #1
	strh r2, [r1, #0x82]
	and r8, r0, #0xff
	b _0211AC1C
_0211ABEC:
	ldrh r1, [r0, #0xa]
	ldr r0, _0211ADDC ; =0x0209BA20
	bl  FUN_ov16_020ee034
	ldrh r1, [r0, #0x20]
	ldrb r0, [r10, #0x13]
	mul r0, r1, r0
	add r2, r0, #0x32
	ldr r0, _0211ADD8 ; =0x51EB851F
	smull r1, r3, r0, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #5
	add r6, r6, r3
_0211AC1C:
	add r9, r9, #1
	cmp r9, #3
	blt _0211AB8C
	mov r0, r4
	mov r1, r6
	bl FUN_ov80_0211a7c4
	str r0, [r4, #0x78]
	ldr r1, [r7, #4]
	mov r0, r4
	bl FUN_ov80_0211a7c4
	str r0, [r4, #0x7c]
	cmp r11, #0
	movgt r0, #0x5a
	strgt r0, [r4, #0x34]
	movle r0, #0x20
	strle r0, [r4, #0x34]
_0211AC5C:
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r7, #0
	ldr r0, _0211ADDC ; =0x0209BA20
	add r2, sp, #0x10
	mov r3, #4
	str r7, [sp]
	bl FUN_0204b2f4
	str r7, [r4, #0x88]
_0211AC80:
	add r0, sp, #0x10
	mov r1, r7, lsl #1
	ldrh r0, [r0, r1]
	cmp r0, #0
	addne r1, r4, r7, lsl #2
	ldrne r1, [r1, #0x150]
	cmpne r1, #0
	ldrne r1, [r4, #0x160]
	cmpne r1, #0
	beq _0211ADB4
	mov r1, r5
	bl  FUN_ov16_020efa9c
	movs r8, r0
	mov r2, #0x98
	bne _0211ACD0
	add r0, r4, r7, lsl #2
	ldr r0, [r0, #0x150]
	mov r1, r5
	bl MemWrite
	b _0211ADB4
_0211ACD0:
	add r1, r4, r7, lsl #2
	ldr r1, [r1, #0x150]
	bl _memcpy
	mov r0, #0x6c
	mul r6, r7, r0
	add r1, r4, r7, lsl #2
	ldr r0, [r1, #0x150]
	bl FUN_0206dcd4
	ldr r2, [r4, #0x160]
	mov r1, r0
	add r0, r2, r6
	bl FUN_0206ed40
	add r0, r4, r7, lsl #2
	ldr r1, [r4, #0x160]
	ldr r0, [r0, #0x150]
	add r1, r1, r6
	str r1, [r0, #0x68]
	mov r0, r8
	ldr r6, [r4, #0x74]
	bl FUN_0206d688
	cmp r0, #0
	beq _0211AD40
	ldr r3, [r4, #0x3c]
	mov r0, r4
	mov r1, r8
	mov r2, r6
	bl FUN_ov80_0211a7f8
	mov r6, r0
_0211AD40:
	mov r0, r8
	bl FUN_0206dcd4
	mov r1, #0x30
	mla r3, r7, r1, r4
	add r1, sp, #0x10
	mov r2, r7, lsl #1
	ldrh r1, [r1, r2]
	ldr r0, [r0]
	mov r2, #0
	strh r1, [r3, #0x8c]
	strb r2, [r3, #0x8e]
	strb r2, [r3, #0x8f]
	str r0, [r3, #0x90]
	str r2, [r3, #0xa4]
	str r2, [r3, #0xa8]
_0211AD7C:
	add r0, r3, r2, lsl #2
	add r2, r2, #1
	str r5, [r0, #0x94]
	cmp r2, #4
	blt _0211AD7C
	mov r0, #0x30
	mla r0, r7, r0, r4
	str r6, [r0, #0xac]
	str r5, [r0, #0xb0]
	str r5, [r0, #0xb4]
	str r5, [r0, #0xb8]
	ldr r0, [r4, #0x88]
	add r0, r0, #1
	str r0, [r4, #0x88]
_0211ADB4:
	add r7, r7, #1
	cmp r7, #4
	blt _0211AC80
	mov r0, r4
	mov r1, #0
	bl FUN_ov80_0211ade4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADD4: .word 0x020A9C40
_0211ADD8: .word 0x51EB851F
_0211ADDC: .word 0x0209BA20
_0211ADE0: .word 0x02099EF0
	arm_func_end FUN_ov80_0211a87c

	arm_func_start FUN_ov80_0211ade4
FUN_ov80_0211ade4: ; 0x0211ADE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	str r1, [r4, #0x44]
	str r5, [r4, #0x48]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE04: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0211AE28 ; case 1
	b _0211AE28 ; case 2
	b _0211AE28 ; case 3
	b _0211AE28 ; case 4
	b _0211AE28 ; case 5
	b _0211AE28 ; case 6
	b _0211AE60 ; case 7
	b _0211AE74 ; case 8
_0211AE28:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	sub r0, r1, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x68]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211AEB4 ; =0x0209AC44
	mov r1, #0x28
	bl FUN_0202cf6c
	mov r0, #1
	strb r0, [r4, #0x19]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE60:
	ldr r0, _0211AEB4 ; =0x0209AC44
	mov r1, #0x28
	mov r2, #0x64
	bl FUN_0202cfd8
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE74:
	ldr r0, _0211AEB4 ; =0x0209AC44
	mov r1, #0x28
	mov r2, #0x64
	bl FUN_0202cfd8
_0211AE84:
	add r1, r4, r5, lsl #2
	ldr r0, [r1, #0x68]
	add r5, r5, #1
	str r0, [r1, #0x50]
	cmp r5, #6
	blt _0211AE84
	mov r2, #3
	mov r0, r4
	mov r1, #1
	strh r2, [r4, #0x80]
	bl FUN_ov80_0211b778
	ldmfd sp!, {r3, r4, r5, pc}
_0211AEB4: .word 0x0209AC44
	arm_func_end FUN_ov80_0211ade4

	arm_func_start FUN_ov80_0211aeb8
FUN_ov80_0211aeb8: ; 0x0211AEB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r9, r0
	mov r6, r4
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211B0D8 ; =0x0209BA20
	add r2, sp, #4
	mov r3, #4
	str r6, [sp]
	bl FUN_0204b2f4
	mov r8, r6
_0211AEEC:
	add r5, sp, #4
	mov r0, r8, lsl #1
	ldrh r0, [r5, r0]
	cmp r0, #0
	addne r0, r9, r8, lsl #2
	ldrne r0, [r0, #0x150]
	cmpne r0, #0
	beq _0211B0BC
	bl FUN_0206dcdc
	cmp r0, #0
	bne _0211B0BC
	mov r0, r8, lsl #1
	ldrh r0, [r5, r0]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211B0BC
	add r0, r9, r8, lsl #2
	ldr r0, [r0, #0x150]
	bl FUN_0206cc34
	add r2, r9, #0x8c
	mov r1, #0x30
	mla r7, r8, r1, r2
	ldr r1, [r7, #0x20]
	mov r5, r0
	cmp r1, #0
	ble _0211B0BC
	add r0, r9, r8, lsl #2
	ldr r0, [r0, #0x150]
	bl FUN_0206cc34
	cmp r0, #0x63
	beq _0211B0BC
	ldr r0, [r9, #0x48]
	cmp r0, #1
	bne _0211AFC0
	add r0, r9, r8, lsl #2
	ldr r10, _0211B0D8 ; =0x0209BA20
	ldr r1, [r0, #0x150]
	mov r0, r10
	bl FUN_0204df64
	ldr r1, [r7, #0x20]
	cmp r1, r0
	strlo r4, [r7, #0x2c]
	ldrlo r0, [r7, #0x20]
	blo _0211AFB8
	mov r0, #1
	str r0, [r7, #0x2c]
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x150]
	mov r0, r10
	bl FUN_0204df64
_0211AFB8:
	str r0, [r7, #0x24]
	str r4, [r7, #0x28]
_0211AFC0:
	ldr r2, [r9, #0x48]
	cmp r2, #0x1e
	bne _0211AFF8
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	ldreq r2, [r7, #0x20]
	beq _0211B024
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x150]
	ldr r0, _0211B0D8 ; =0x0209BA20
	bl FUN_0204df64
	mov r2, r0
	mov r6, #1
	b _0211B024
_0211AFF8:
	ldr r0, [r7, #0x24]
	ldr r1, _0211B0DC ; =0x88888889
	mul r2, r0, r2
	smull r0, r3, r1, r2
	add r3, r2, r3
	mov r0, r2, lsr #0x1f
	ldr r1, [r7, #0x28]
	add r3, r0, r3, asr #4
	sub r2, r3, r1
	add r0, r1, r2
	str r0, [r7, #0x28]
_0211B024:
	ldr r0, [r7, #0x20]
	add r10, sp, #0xc
	sub r0, r0, r2
	str r0, [r7, #0x20]
	mov r0, #1
	str r0, [sp]
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x150]
	ldr r0, _0211B0D8 ; =0x0209BA20
	mov r3, r10
	bl FUN_0204dfb8
	cmp r0, #0
	beq _0211B0BC
	add r0, r9, r8, lsl #2
	ldr r0, [r0, #0x150]
	bl FUN_0206cc34
	sub r0, r0, r5
	and r1, r0, #0xff
	ldrb r2, [r7, #2]
	mov r0, #0
	add r1, r2, r1
	strb r1, [r7, #2]
_0211B07C:
	ldr r2, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r2, #0
	ldrne r1, [r7, #0x18]
	cmpne r1, #4
	addlt r1, r7, r1, lsl #2
	strlt r2, [r1, #8]
	ldrlt r1, [r7, #0x18]
	addlt r1, r1, #1
	strlt r1, [r7, #0x18]
	cmp r0, #4
	blt _0211B07C
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x150]
	mov r0, r9
	bl FUN_ov80_0211d6c4
_0211B0BC:
	add r8, r8, #1
	cmp r8, #4
	blt _0211AEEC
	cmp r6, #0
	strne r4, [r9, #0x48]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B0D8: .word 0x0209BA20
_0211B0DC: .word 0x88888889
	arm_func_end FUN_ov80_0211aeb8

	arm_func_start FUN_ov80_0211b0e0
FUN_ov80_0211b0e0: ; 0x0211B0E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	str r0, [sp, #4]
	mov r11, #0
	str r1, [sp, #8]
	ldr r0, _0211B238 ; =0x0209BA20
	mov r1, r11
	bl FUN_0205107c
	mov r8, r0
	ldr r0, _0211B238 ; =0x0209BA20
	mov r1, r11
	bl FUN_0205106c
	mov r9, r0
_0211B114:
	mov r0, r11
	ldr r7, [sp, #8]
	mov r4, #0
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _0211B224
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211B224
	mov r0, r6
	bl FUN_0206d6b0
	cmp r0, #0
	beq _0211B224
	mov r10, r4
_0211B14C:
	mov r0, r6
	bl FUN_0206cbf8
	mov r5, r0
	mov r0, r9
	mov r1, r10
	bl FUN_02050244
	cmp r5, r0
	bne _0211B18C
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [r0, #0x3c]
	mov r1, r6
	mov r4, #1
	bl FUN_ov80_0211a7f8
	mov r7, r0
	b _0211B198
_0211B18C:
	add r10, r10, #1
	cmp r10, #4
	blt _0211B14C
_0211B198:
	cmp r4, #0
	bne _0211B1F4
	mov r10, #0
_0211B1A4:
	mov r0, r6
	bl FUN_0206cbf8
	mov r5, r0
	mov r0, r8
	mov r1, r10
	bl FUN_0204fbe8
	cmp r5, r0
	moveq r4, #2
	beq _0211B1D4
	add r10, r10, #1
	cmp r10, #0x10
	blt _0211B1A4
_0211B1D4:
	cmp r4, #0
	bne _0211B1F4
	mov r0, #0x32
	mul r1, r7, r0
	ldr r2, _0211B23C ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r7, r2, r1
	add r7, r0, r7, asr #5
_0211B1F4:
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211B238 ; =0x0209BA20
	mov r2, r7
	mov r1, r6
	mov r3, #0
	bl FUN_0204dfb8
	cmp r0, #0
	beq _0211B224
	ldr r0, [sp, #4]
	mov r1, r6
	bl FUN_ov80_0211d6c4
_0211B224:
	add r11, r11, #1
	cmp r11, #0x64
	blt _0211B114
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B238: .word 0x0209BA20
_0211B23C: .word 0x51EB851F
	arm_func_end FUN_ov80_0211b0e0

	arm_func_start FUN_ov80_0211b240
FUN_ov80_0211b240: ; 0x0211B240
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #0x48]
	ldr r1, [r4, #0x44]
	add r3, r2, #1
	str r3, [r4, #0x48]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211B264: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0211B284 ; case 1
	b _0211B284 ; case 2
	b _0211B284 ; case 3
	b _0211B2FC ; case 4
	b _0211B33C ; case 5
	b _0211B34C ; case 6
	b _0211B360 ; case 7
_0211B284:
	ldr r2, [r4, #0x38]
	sub r0, r1, #1
	add r2, r2, #1
	str r2, [r4, #0x38]
	add r0, r4, r0, lsl #2
	ldr r5, [r0, #0x68]
	cmp r5, #0
	ble _0211B2D4
	mul r0, r5, r3
	add r12, r0, #0xf
	ldr r3, _0211B370 ; =0x88888889
	mov r0, r12, lsr #0x1f
	smull r2, lr, r3, r12
	add lr, r12, lr
	add lr, r0, lr, asr #4
	sub r0, r1, #1
	cmp lr, r5
	movgt lr, r5
	add r0, r4, r0, lsl #2
	str lr, [r0, #0x50]
_0211B2D4:
	ldr r0, [r4, #0x48]
	cmp r0, #0x1e
	bge _0211B2E8
	cmp r5, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_0211B2E8:
	ldr r1, [r4, #0x44]
	mov r0, r4
	add r1, r1, #1
	bl FUN_ov80_0211ade4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B2FC:
	sub r1, r1, #1
	add r1, r4, r1, lsl #2
	ldr r5, [r1, #0x68]
	cmp r5, #0
	ble _0211B314
	bl FUN_ov80_0211aeb8
_0211B314:
	ldr r0, [r4, #0x48]
	cmp r0, #0x1e
	bge _0211B328
	cmp r5, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_0211B328:
	ldr r1, [r4, #0x44]
	mov r0, r4
	add r1, r1, #1
	bl FUN_ov80_0211ade4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B33C:
	ldr r2, [r4, #0x78]
	mov r1, #6
	str r2, [r4, #0x60]
	bl FUN_ov80_0211ade4
_0211B34C:
	ldr r2, [r4, #0x7c]
	mov r0, r4
	mov r1, #6
	str r2, [r4, #0x64]
	bl FUN_ov80_0211ade4
_0211B360:
	mov r0, r4
	mov r1, #8
	bl FUN_ov80_0211ade4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B370: .word 0x88888889
	arm_func_end FUN_ov80_0211b240

	arm_func_start FUN_ov80_0211b374
FUN_ov80_0211b374: ; 0x0211B374
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov80_0211b390
	mov r0, r4
	mov r1, #8
	bl FUN_ov80_0211ade4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov80_0211b374

	arm_func_start FUN_ov80_0211b390
FUN_ov80_0211b390: ; 0x0211B390
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r9, #0
	ldr r0, _0211B4C8 ; =0x0209BA20
	add r2, sp, #4
	mov r3, #4
	str r9, [sp]
	bl FUN_0204b2f4
_0211B3BC:
	add r4, sp, #4
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	cmp r0, #0
	addne r0, r10, r9, lsl #2
	ldrne r0, [r0, #0x150]
	cmpne r0, #0
	beq _0211B4B4
	bl FUN_0206dcdc
	cmp r0, #0
	bne _0211B4B4
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	mov r8, #0
	mov r1, r8
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211B4B4
	add r1, r10, #0x8c
	mov r0, #0x30
	mla r7, r9, r0, r1
	ldr r6, [r7, #0x20]
	add r0, r10, r9, lsl #2
	str r8, [r7, #0x20]
	ldr r0, [r0, #0x150]
	bl FUN_0206cc34
	mov r1, #1
	mov r5, r0
	add r4, sp, #0xc
	add r0, r10, r9, lsl #2
	str r1, [sp]
	ldr r1, [r0, #0x150]
	ldr r0, _0211B4C8 ; =0x0209BA20
	mov r2, r6
	mov r3, r4
	bl FUN_0204dfb8
	cmp r0, #0
	beq _0211B4B4
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x150]
	bl FUN_0206cc34
	sub r0, r0, r5
	ldrb r1, [r7, #2]
	and r0, r0, #0xff
	add r0, r1, r0
	strb r0, [r7, #2]
_0211B474:
	ldr r1, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r1, #0
	ldrne r0, [r7, #0x18]
	cmpne r0, #4
	addlt r0, r7, r0, lsl #2
	strlt r1, [r0, #8]
	ldrlt r0, [r7, #0x18]
	addlt r0, r0, #1
	strlt r0, [r7, #0x18]
	cmp r8, #4
	blt _0211B474
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x150]
	mov r0, r10
	bl FUN_ov80_0211d6c4
_0211B4B4:
	add r9, r9, #1
	cmp r9, #4
	blt _0211B3BC
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B4C8: .word 0x0209BA20
	arm_func_end FUN_ov80_0211b390

	arm_func_start FUN_ov80_0211b4cc
FUN_ov80_0211b4cc: ; 0x0211B4CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #8]
	mov r4, #0
	cmp r2, r1
	mov r8, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r1, [r5, #8]
	cmp r1, #4
	beq _0211B514
	cmp r1, #6
	beq _0211B534
	cmp r1, #7
	beq _0211B554
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B514:
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r5
	mov r1, r8
	bl FUN_ov80_0211ade4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B534:
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, r5
	mov r1, #7
	bl FUN_ov80_0211b4cc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B554:
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r0, _0211B764 ; =0x020A0640
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	beq _0211B6A4
	ldr r1, [r5, #0x74]
	mov r0, r5
	bl FUN_ov80_0211b0e0
	mov r7, r4
	ldr r6, _0211B768 ; =0x0209BA20
	b _0211B5A4
_0211B584:
	add r0, r5, r7, lsl #1
	ldrh r1, [r0, #0x82]
	cmp r1, #0
	beq _0211B5AC
	mov r0, r6
	mov r2, r8
	bl  FUN_ov16_020ede60 ; may be ov17
	add r7, r7, #1
_0211B5A4:
	cmp r7, #3
	blt _0211B584
_0211B5AC:
	ldr r6, _0211B764 ; =0x020A0640
	ldr r7, _0211B76C ; =0x020A0B00
	ldr r2, [r5, #0x78]
	ldr r1, [r6, #0x4d4]
	mov r0, r7
	add r1, r1, r2
	bl FUN_02074538
	ldr r2, [r5, #0x7c]
	ldr r1, [r6, #0x4d8]
	mov r0, r7
	add r1, r1, r2
	bl FUN_020744f0
	bl  FUN_ov1_020db304
	cmp r0, #0
	beq _0211B60C
	ldr r7, _0211B770 ; =0x0209AC44
	mov r6, #0xfa
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl FUN_0202d774
	mov r0, r7
	mov r1, r6
	bl FUN_0202c470
_0211B60C:
	ldrb r0, [r5, #0x3a0]
	cmp r0, #0
	bne _0211B644
	ldr r5, [r5, #4]
	mov r1, r4
	mov r0, r5
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B644:
	ldr r7, _0211B770 ; =0x0209AC44
	mov r6, #0x3e8
	mov r0, r7
	mov r1, r6
	bl FUN_0202c470
	mov r0, r7
	mov r1, r4
	bl FUN_0202cff8
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl FUN_0202d774
	ldr r6, [r5, #4]
	mov r5, #0x4f
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02041eac
	mov r0, r6
	mov r2, r5
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B6A4:
	ldr r6, _0211B774 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r6]
	bl  FUN_ov132_02145190
	cmp r0, #0
	bne _0211B704
	ldr r0, [r6]
	mov r1, r8
	bl  FUN_ov132_02145190
	cmp r0, #0
	bne _0211B704
	ldr r7, _0211B770 ; =0x0209AC44
	mov r6, #0x7d0
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r4
	bl FUN_0202c314
	mov r0, r7
	mov r1, r8
	mov r2, r6
	mov r3, r4
	bl FUN_0202c314
	b _0211B738
_0211B704:
	ldr r7, _0211B770 ; =0x0209AC44
	mov r6, #0x7d0
	mov r0, r7
	mov r1, r4
	mov r3, r6
	mov r2, #9
	str r4, [sp]
	bl FUN_0202c184
	mov r0, r7
	mov r2, r6
	mov r3, r4
	mov r1, #1
	bl FUN_0202c314
_0211B738:
	ldr r4, [r5, #4]
	mov r1, #0
	mov r0, r4
	mov r2, #0x37
	bl FUN_02041eac
	mov r0, r4
	mov r1, #1
	mov r2, #0x41
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B764: .word 0x020A0640
_0211B768: .word 0x0209BA20
_0211B76C: .word 0x020A0B00
_0211B770: .word 0x0209AC44
_0211B774: .word 0x02099EF0
	arm_func_end FUN_ov80_0211b4cc

	arm_func_start FUN_ov80_0211b778
FUN_ov80_0211b778: ; 0x0211B778
	cmp r1, #1
	cmpne r1, #2
	bne _0211B7B0
	mov r12, #0
	mov r2, #0x30
_0211B78C:
	mla r3, r12, r2, r0
	ldr r3, [r3, #0xa4]
	cmp r3, #0
	bne _0211B7A8
	add r12, r12, #1
	cmp r12, #4
	blt _0211B78C
_0211B7A8:
	cmp r12, #4
	moveq r1, #3
_0211B7B0:
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov80_0211b778

	arm_func_start FUN_ov80_0211b7b8
FUN_ov80_0211b7b8: ; 0x0211B7B8
	str r1, [r0, #0x14]
	mov r0, #0
	bx lr
	arm_func_end FUN_ov80_0211b7b8

	arm_func_start FUN_ov80_0211b7c4
FUN_ov80_0211b7c4: ; 0x0211B7C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #4
	beq _0211B7E0
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
_0211B7E0:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	ldr r0, _0211B8C4 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r1, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0x1b]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0211B8B8
_0211B81C: ; jump table
	b _0211B82C ; case 0
	b _0211B840 ; case 1
	b _0211B850 ; case 2
	b _0211B8A4 ; case 3
_0211B82C:
	mov r0, r4
	bl FUN_ov80_0211b374
	mov r0, r4
	mov r1, r5
	b _0211B848
_0211B840:
	mov r0, r4
	mov r1, #2
_0211B848:
	bl FUN_ov80_0211b778
	b _0211B8B8
_0211B850:
	add r12, r4, #0x8c
	mov r3, r0
	mov r1, #0x30
_0211B85C:
	mla lr, r0, r1, r12
	ldr r2, [lr, #0x18]
	cmp r2, #0
	beq _0211B894
	ldr r2, [lr, #0xc]
	str r2, [lr, #8]
	ldr r2, [lr, #0x10]
	str r2, [lr, #0xc]
	ldr r2, [lr, #0x14]
	str r2, [lr, #0x10]
	str r3, [lr, #0x14]
	ldr r2, [lr, #0x18]
	sub r2, r2, #1
	str r2, [lr, #0x18]
_0211B894:
	add r0, r0, #1
	cmp r0, #4
	blt _0211B85C
	b _0211B840
_0211B8A4:
	mov r0, r4
	bl FUN_ov80_0211d160
	mov r0, r4
	mov r1, #6
	bl FUN_ov80_0211b4cc
_0211B8B8:
	mov r0, r4
	bl FUN_ov80_0211c2bc
	ldmfd sp!, {r3, r4, r5, pc}
_0211B8C4: .word 0x0209AC44
	arm_func_end FUN_ov80_0211b7c4

	arm_func_start FUN_ov80_0211b8c8
FUN_ov80_0211b8c8: ; 0x0211B8C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #4
	beq _0211B8E4
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
_0211B8E4:
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _0211B920
	ldrh r0, [r1, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #0x1b]
	ldrh r0, [r1]
	str r0, [r4, #0x1c]
	ldrh r0, [r1, #2]
	str r0, [r4, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B920:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0211B9F4
	mov r5, #1
	ldr r0, _0211BA00 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r0, [r4, #0xc]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211B9EC
_0211B94C: ; jump table
	b _0211B95C ; case 0
	b _0211B970 ; case 1
	b _0211B980 ; case 2
	b _0211B9D8 ; case 3
_0211B95C:
	mov r0, r4
	bl FUN_ov80_0211b374
	mov r0, r4
	mov r1, r5
	b _0211B978
_0211B970:
	mov r0, r4
	mov r1, #2
_0211B978:
	bl FUN_ov80_0211b778
	b _0211B9EC
_0211B980:
	mov r5, #0
	add r3, r4, #0x8c
	mov r2, r5
	mov r0, #0x30
_0211B990:
	mla r12, r5, r0, r3
	ldr r1, [r12, #0x18]
	cmp r1, #0
	beq _0211B9C8
	ldr r1, [r12, #0xc]
	str r1, [r12, #8]
	ldr r1, [r12, #0x10]
	str r1, [r12, #0xc]
	ldr r1, [r12, #0x14]
	str r1, [r12, #0x10]
	str r2, [r12, #0x14]
	ldr r1, [r12, #0x18]
	sub r1, r1, #1
	str r1, [r12, #0x18]
_0211B9C8:
	add r5, r5, #1
	cmp r5, #4
	blt _0211B990
	b _0211B970
_0211B9D8:
	mov r0, r4
	bl FUN_ov80_0211d160
	mov r0, r4
	mov r1, #6
	bl FUN_ov80_0211b4cc
_0211B9EC:
	mov r0, r4
	bl FUN_ov80_0211c2bc
_0211B9F4:
	mov r0, #0
	strb r0, [r4, #0x1b]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BA00: .word 0x0209AC44
	arm_func_end FUN_ov80_0211b8c8

	arm_func_start FUN_ov80_0211ba04
FUN_ov80_0211ba04: ; 0x0211BA04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	mov r11, #0xc
	bl FUN_02004f78
	mov r5, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r5
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r5
	bl FUN_020026d0
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r4
	mov r2, r5
	bl FUN_0200787c
	bl FUN_02004fcc
	mov r1, r5
	bl FUN_020026d0
	bl FUN_0200505c
	mov r1, r0
	mov r0, r4
	mov r2, r5
	bl FUN_0200787c
	bl FUN_0200505c
	mov r1, r5
	bl FUN_020026d0
	mov r7, #0xf
	mov r8, #0x17
	mov r9, r4
	b _0211BB18
_0211BA8C:
	mla r0, r7, r11, r10
	ldr r0, [r0, #0x1dc]
	cmp r0, #0
	beq _0211BB0C
	mov r0, #0x30
	mla r0, r9, r0, r10
	ldrh r0, [r0, #0x8c]
	mov r1, #0
	mov r6, #8
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211BAC8
	bl FUN_0206d8a8
	cmp r0, #1
	moveq r6, #7
_0211BAC8:
	mla r0, r7, r11, r10
	ldr r0, [r0, #0x1dc]
	add r1, r4, #1
	mov r2, r6
	bl  FUN_ov16_020f18e8
	mla r1, r7, r11, r10
	mov r4, r0
	ldr r1, [r1, #0x1dc]
	mov r0, #1
	mov r2, r5
	bl  FUN_ov16_020f19d4
	mov r5, r0
	mla r0, r8, r11, r10
	ldr r0, [r0, #0x1dc]
	mov r2, r6
	mov r1, #0
	bl  FUN_ov16_020f1160
_0211BB0C:
	add r9, r9, #1
	add r7, r7, #1
	add r8, r8, #1
_0211BB18:
	cmp r9, #4
	blt _0211BA8C
	ldr r0, [r10, #0x14c]
	mov r11, #2
	cmp r0, #0
	mov r7, #0
	beq _0211BB6C
	mov r2, r7
	b _0211BB4C
_0211BB3C:
	ldr r1, [r10, #0x14c]
	mov r0, r2, lsl #1
	strh r2, [r1, r0]
	add r2, r2, #1
_0211BB4C:
	cmp r2, #0x30
	blt _0211BB3C
	ldr r0, [r10, #0x14c]
	add r2, r4, #1
	mov r1, #0x60
	mov r3, #0
	bl  FUN_ov16_020f1868
	mov r4, r0
_0211BB6C:
	bl FUN_02004f78
	add r8, r5, r0
	mov r9, #0
	mov r0, r8
	mov r1, r9
	mov r2, #0x600
	bl MemWrite
	mov r6, #3
	b _0211BBF4
_0211BB90:
	mov r0, #0x30
	mla r0, r9, r0, r10
	ldrh r0, [r0, #0x8c]
	mov r1, r7
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211BBF0
	stmia sp, {r6, r11}
	add r3, r0, #0x1c
	str r8, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	mov r0, #0x10
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r0, _0211C234 ; =0x02099ED0
	str r7, [sp, #0x18]
	ldr r0, [r0]
	mov r1, r7
	ldr r12, [r0]
	mov r2, #6
	ldr r12, [r12, #8]
	blx r12
	add r8, r8, #0x180
_0211BBF0:
	add r9, r9, #1
_0211BBF4:
	cmp r9, #4
	blt _0211BB90
	mov r8, #4
	ldr r0, [r10, #0x200]
	mov r2, r8
	add r1, r4, #1
	mov r7, #2
	bl  FUN_ov16_020f18e8
	ldr r1, [r10, #0x200]
	mov r6, #1
	mov r4, r0
	mov r0, r6
	add r2, r5, #0x600
	bl  FUN_ov16_020f19d4
	mov r5, r0
	ldr r0, [r10, #0x200]
	mov r2, r8
	mov r1, #0
	bl  FUN_ov16_020f1138
	add r1, r4, #1
	mov r4, #3
	ldr r0, [r10, #0x20c]
	mov r2, r4
	bl  FUN_ov16_020f18e8
	ldr r1, [r10, #0x20c]
	mov r2, r5
	mov r0, r6
	bl  FUN_ov16_020f19d4
	ldr r0, [r10, #0x20c]
	mov r2, r4
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r8, [r10, #0x1e8]
	mov r4, #0
	mov r5, #0x20
	cmp r8, #0
	beq _0211BCD8
	mov r1, r4
	mov r0, r8
	mov r2, r6
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	mov r4, r0
	ldr r1, [r10, #0x1e8]
	mov r2, r5
	mov r0, r7
	bl  FUN_ov16_020f19d4
	mov r5, r0
	ldr r0, [r10, #0x1e8]
	mov r2, r6
	mov r1, #0
	bl  FUN_ov16_020f1138
	ldr r0, [r8, #0xc]
	ldr r1, _0211C238 ; =0x020A7C40
	add r0, r8, r0
	mov r2, #0x800
	bl FUN_020078c8
_0211BCD8:
	ldr r0, [r10, #0x1f4]
	mov r6, #3
	cmp r0, #0
	mov r8, #1
	beq _0211BD20
	mov r2, r8
	add r1, r4, #1
	bl  FUN_ov16_020f18e8
	mov r4, r0
	ldr r1, [r10, #0x1f4]
	mov r2, r5
	mov r0, #2
	bl  FUN_ov16_020f19d4
	mov r5, r0
	ldr r0, [r10, #0x1f4]
	mov r2, r8
	mov r1, #0
	bl  FUN_ov16_020f1138
_0211BD20:
	ldr r0, [r10, #0x278]
	cmp r0, #0
	beq _0211BD64
	mov r9, #5
	mov r2, r9
	add r1, r4, #1
	bl  FUN_ov16_020f18e8
	mov r4, r0
	ldr r1, [r10, #0x278]
	mov r2, r5
	mov r0, #2
	bl  FUN_ov16_020f19d4
	mov r2, r9
	mov r5, r0
	ldr r0, [r10, #0x278]
	mov r1, #0
	bl  FUN_ov16_020f1138
_0211BD64:
	ldr r0, [r10, #0x284]
	cmp r0, #0
	beq _0211BDA0
	mov r9, #6
	mov r2, r9
	add r1, r4, #1
	bl  FUN_ov16_020f18e8
	ldr r1, [r10, #0x284]
	mov r2, r5
	mov r0, #2
	bl  FUN_ov16_020f19d4
	ldr r0, [r10, #0x284]
	mov r2, r9
	mov r1, #0
	bl  FUN_ov16_020f1138
_0211BDA0:
	mov r9, #0
	ldr r0, [r10, #0x230]
	mov r2, r7
	add r1, r9, #1
	mov r4, #0x20
	bl  FUN_ov16_020f18e8
	mov r5, r0
	ldr r1, [r10, #0x230]
	mov r0, r6
	mov r2, r4
	bl  FUN_ov16_020f19d4
	mov r4, r0
	ldr r0, [r10, #0x230]
	mov r1, r9
	mov r2, r7
	bl  FUN_ov16_020f1138
	ldr r0, [r10, #0x23c]
	add r1, r5, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r4
	mov r4, r0
	ldr r1, [r10, #0x23c]
	mov r0, r6
	bl  FUN_ov16_020f19d4
	add r1, r4, #1
	mov r4, r0
	ldr r0, [r10, #0x248]
	mov r2, r8
	bl  FUN_ov16_020f18e8
	mov r5, r0
	ldr r1, [r10, #0x248]
	mov r2, r4
	mov r0, r6
	bl  FUN_ov16_020f19d4
	mov r4, r0
	ldr r0, [r10, #0x248]
	mov r2, r8
	mov r1, r9
	bl  FUN_ov16_020f1138
	mov r7, #5
	ldr r0, [r10, #0x254]
	add r1, r5, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r5, r0
	ldr r1, [r10, #0x254]
	mov r2, r4
	mov r0, r6
	bl  FUN_ov16_020f19d4
	mov r4, r0
	ldr r0, [r10, #0x254]
	mov r1, r9
	mov r2, r7
	bl  FUN_ov16_020f1138
	ldr r0, [r10, #0x260]
	add r1, r5, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r4
	mov r4, r0
	ldr r1, [r10, #0x260]
	mov r0, r6
	bl  FUN_ov16_020f19d4
	mov r5, r0
	ldr r0, [r10, #0x260]
	mov r2, r7
	mov r1, r9
	bl  FUN_ov16_020f1138
	mov r11, #0xc
	mov r6, #9
	mov r7, #0x13
	mov r8, r11
	b _0211BF24
_0211BEC8:
	mla r0, r7, r8, r10
	ldr r0, [r0, #0x1dc]
	cmp r0, #0
	beq _0211BF18
	mov r2, r6
	add r1, r4, #1
	bl  FUN_ov16_020f18e8
	mov r1, #0xc
	mla r1, r7, r1, r10
	mov r4, r0
	ldr r1, [r1, #0x1dc]
	mov r0, #3
	mov r2, r5
	bl  FUN_ov16_020f19d4
	mov r5, r0
	mla r0, r7, r11, r10
	ldr r0, [r0, #0x1dc]
	mov r1, #0
	mov r2, r6
	bl  FUN_ov16_020f1138
_0211BF18:
	add r9, r9, #1
	add r6, r6, #1
	add r7, r7, #1
_0211BF24:
	cmp r9, #4
	blt _0211BEC8
	mov r6, #3
	ldr r0, [r10, #0x218]
	mov r2, r6
	add r1, r4, #1
	mov r11, #0
	bl  FUN_ov16_020f18e8
	mov r4, r0
	ldr r1, [r10, #0x218]
	mov r0, r6
	mov r2, r5
	bl  FUN_ov16_020f19d4
	add r1, r4, #1
	mov r4, r0
	ldr r0, [r10, #0x224]
	mov r2, r6
	bl  FUN_ov16_020f18e8
	mov r2, r4
	mov r4, r0
	ldr r1, [r10, #0x224]
	mov r0, r6
	bl  FUN_ov16_020f19d4
	mov r5, r0
	mov r8, r11
	ldr r0, [r10, #0x224]
	mov r2, r6
	mov r1, r8
	bl  FUN_ov16_020f1138
	add r6, r10, #0x164
	mov r9, #0x14
	b _0211C008
_0211BFA4:
	mul r1, r8, r9
	ldr r0, [r6, r1]
	add r7, r6, r1
	cmp r0, #0
	ldrne r0, [r7, #4]
	mov r2, #0
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	beq _0211C004
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	ldr r0, [r7]
	mov r3, r11
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r4, #1
	bl  FUN_ov16_020f1868
	str r5, [r7, #8]
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	mov r4, r0
	mul r0, r2, r1
	add r5, r5, r0, lsl #5
_0211C004:
	add r8, r8, #1
_0211C008:
	cmp r8, #4
	blt _0211BFA4
	ldr r0, [r10, #0x1b4]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x1b8]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211C114
	ldr r7, [r10, #0x1b4]
	mov r6, #0xd
	mov r8, #0
	mov r9, #8
	b _0211C078
_0211C044:
	mov r1, #2
	mov r0, r7
	mov r2, r1
	bl  FUN_ov16_020f2ea8
	mov r0, r7
	mov r1, r9
	add r2, r4, #1
	mov r3, r6
	bl  FUN_ov16_020f1868
	mov r4, r0
	add r7, r7, #8
	add r8, r8, #1
	add r6, r6, #1
_0211C078:
	cmp r8, #3
	blt _0211C044
	ldr r8, [r10, #0x1b8]
	mov r6, #0xd
	mov r9, #0
	b _0211C0F8
_0211C090:
	add r0, r10, r9, lsl #1
	ldrh r0, [r0, #0x82]
	cmp r0, #0
	beq _0211C100
	add r1, r9, #0x21
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r7, [r0, #0x1dc]
	cmp r7, #0
	beq _0211C0F0
	cmp r8, #0
	beq _0211C0DC
	ldr r0, [r7, #4]
	mov r1, #2
	add r0, r7, r0
	mov r2, r1
	mov r3, r8
	bl  FUN_ov16_020f1ee4
	add r8, r8, #0x80
_0211C0DC:
	ldr r0, [r7, #0xc]
	mov r1, r11
	add r0, r7, r0
	mov r2, r6
	bl  FUN_ov16_020f1160
_0211C0F0:
	add r9, r9, #1
	add r6, r6, #1
_0211C0F8:
	cmp r9, #3
	blt _0211C090
_0211C100:
	ldr r0, [r10, #0x1b8]
	mov r1, r5
	mov r2, #0x180
	bl FUN_02005a1c
	add r5, r5, #0x180
_0211C114:
	ldr r0, [r10, #0x1c8]
	add r7, r10, #0x1c8
	cmp r0, #0
	ldrne r0, [r7, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211C224
	ldrh r1, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldr r0, [r7]
	bl  FUN_ov16_020f2ea8
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	mov r6, #0
	ldr r0, [r7]
	mul r1, r2, r1
	mov r3, r6
	mov r1, r1, lsl #1
	add r2, r4, #1
	bl  FUN_ov16_020f1868
	mov r0, r7
	bl  FUN_ov16_020f2f20
	mov r9, #4
	ldr r8, _0211C23C ; =0x0209BA20
	ldr r4, _0211C240 ; =0x02099F50
	b _0211C1F4
_0211C184:
	add r0, r10, r6, lsl #1
	ldrh r1, [r0, #0x82]
	cmp r1, #0
	beq _0211C1FC
	mov r0, r8
	bl  FUN_ov16_020ee034
	movs r3, r0
	beq _0211C1F0
	mov r0, #3
	stmia sp, {r0, r11}
	ldr r1, [r7, #4]
	mov r0, r6, lsl #4
	str r1, [sp, #8]
	ldrh r12, [r7, #0xc]
	add r2, r0, #2
	mov r1, r9
	mov r0, r12, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r7, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r11, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, [r4]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
_0211C1F0:
	add r6, r6, #1
_0211C1F4:
	cmp r6, #3
	blt _0211C184
_0211C1FC:
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	ldr r0, [r7, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl FUN_020026d0
	ldr r0, [r7, #4]
	mov r1, r5
	mov r2, #0xfc0
	bl FUN_02005a1c
_0211C224:
	bl  FUN_ov16_020f10ac
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C234: .word 0x02099ED0
_0211C238: .word 0x020A7C40
_0211C23C: .word 0x0209BA20
_0211C240: .word 0x02099F50
	arm_func_end FUN_ov80_0211ba04

	arm_func_start FUN_ov80_0211c244
FUN_ov80_0211c244: ; 0x0211C244
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	add r7, r0, #0x164
	mov r5, r8
	mov r6, #1
	mov r4, r8
	mov r9, #0x14
_0211C260:
	mul r1, r8, r9
	ldr r0, [r7, r1]
	add r1, r7, r1
	cmp r0, #0
	ldrne r0, [r1, #4]
	cmpne r0, #0
	movne r0, r6
	moveq r0, r5
	cmp r0, #0
	ldrneb r0, [r1, #0x10]
	cmpne r0, #0
	beq _0211C2AC
	strb r4, [r1, #0x10]
	ldrh r3, [r1, #0xc]
	ldrh r2, [r1, #0xe]
	ldmib r1, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_02005a1c
_0211C2AC:
	add r8, r8, #1
	cmp r8, #4
	blt _0211C260
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov80_0211c244

	arm_func_start FUN_ov80_0211c2bc
FUN_ov80_0211c2bc: ; 0x0211C2BC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	mov r9, #0
	ldr r4, _0211C3BC ; =0x02099ED0
	add r8, r10, #0x164
	mov r7, #3
	mov r6, r9
	mov r5, #1
	mov r11, #0x30
_0211C2E4:
	ldr r0, [r8]
	cmp r0, #0
	ldrne r0, [r8, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211C3A4
	mov r0, r8
	bl  FUN_ov16_020f2f20
	mla r1, r9, r11, r10
	ldr r0, [r1, #0xa4]
	cmp r0, #0
	beq _0211C3A4
	ldr r1, [r1, #0x94]
	ldr r0, _0211C3C0 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	ldrne r3, [r10, #0x350]
	cmpne r3, #0
	beq _0211C3A4
	str r7, [sp]
	str r6, [sp, #4]
	ldr r2, [r8, #4]
	mov r1, #0x24
	str r2, [sp, #8]
	ldrh r12, [r8, #0xc]
	mov r2, #2
	mov r12, r12, lsl #3
	str r12, [sp, #0xc]
	ldrh r12, [r8, #0xe]
	mov r12, r12, lsl #3
	str r12, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r12, [r0, #0x18]
	ldr r0, [r4]
	add r3, r3, r12, lsl #5
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldrh r2, [r8, #0xc]
	ldrh r1, [r8, #0xe]
	ldr r0, [r8, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl FUN_020026d0
	strb r5, [r8, #0x10]
_0211C3A4:
	add r9, r9, #1
	cmp r9, #4
	add r8, r8, #0x14
	blt _0211C2E4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C3BC: .word 0x02099ED0
_0211C3C0: .word 0x0209BA20
	arm_func_end FUN_ov80_0211c2bc

	arm_func_start FUN_ov80_0211c3c4
FUN_ov80_0211c3c4: ; 0x0211C3C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, [r0, #0x23c]
	mov r10, r1
	cmp r4, #0
	mov r9, r2
	mov r8, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0xc]
	ldr r6, _0211C464 ; =0x020A6C40
	cmp r8, #0x63
	add r7, r4, r0
	ldr r5, _0211C468 ; =0x66666667
	movhi r8, #0x63
	add r10, r10, #2
	mov r11, #2
	mov r4, #0xa
_0211C40C:
	mov r0, r8, lsr #0x1f
	smull r1, r2, r5, r8
	add r2, r0, r2, asr #2
	smull r0, r1, r4, r2
	sub r2, r8, r0
	add r0, r7, r2, lsl #3
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r11
	str r6, [sp, #4]
	bl  FUN_ov16_020f191c
	smull r0, r1, r5, r8
	mov r0, r8, lsr #0x1f
	add r1, r0, r1, asr #2
	mov r0, r1, lsl #0x10
	sub r10, r10, #2
	movs r8, r0, lsr #0x10
	bne _0211C40C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C464: .word 0x020A6C40
_0211C468: .word 0x66666667
	arm_func_end FUN_ov80_0211c3c4

	arm_func_start FUN_ov80_0211c46c
FUN_ov80_0211c46c: ; 0x0211C46C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r12, [r0, #0x20c]
	cmp r12, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r12, #0xc]
	mov r0, r1
	add r3, r12, r3
	mov r1, r2
	ldr r12, _0211C4B4 ; =0x020A7440
	str r3, [sp]
	mov r2, #7
	mov r3, #2
	str r12, [sp, #4]
	bl  FUN_ov16_020f191c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0211C4B4: .word 0x020A7440
	arm_func_end FUN_ov80_0211c46c

	arm_func_start FUN_ov80_0211c4b8
FUN_ov80_0211c4b8: ; 0x0211C4B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r1
	mov r9, r2
	ldr r4, [sp, #0x30]
	ldr r5, _0211C5A4 ; =0x000003E7
	ldr r1, [sp, #0x34]
	cmp r4, r5
	ldr r2, _0211C5A4 ; =0x000003E7
	movgt r4, r5
	cmp r1, r2
	movgt r1, r2
	mov r2, #0xc
	mla r0, r3, r2, r0
	cmp r4, r1
	ldr r3, [r0, #0x1dc]
	movgt r4, r1
	ldr r8, [sp, #0x38]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r3, #0xc]
	mov r0, r4, lsl #5
	add r5, r3, r2
	bl FUN_0201f9bc
	movs r6, r0
	bne _0211C52C
	cmp r4, #0
	movgt r6, #1
_0211C52C:
	mov r7, #0
	mov r0, r10
	mov r1, r9
	mov r2, #4
	mov r3, #1
	stmia sp, {r7, r8}
	bl  FUN_ov16_020f197c
	add r4, r5, #0x10
	mov r5, #8
	mov r11, #1
_0211C554:
	mov r0, r6
	cmp r6, #0
	ble _0211C588
	cmp r6, #8
	movgt r0, r5
	sub r0, r4, r0, lsl #1
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r11
	str r8, [sp, #4]
	bl  FUN_ov16_020f191c
_0211C588:
	add r7, r7, #1
	cmp r7, #4
	sub r6, r6, #8
	add r10, r10, #1
	blt _0211C554
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C5A4: .word 0x000003E7
	arm_func_end FUN_ov80_0211c4b8

	arm_func_start FUN_ov80_0211c5a8
FUN_ov80_0211c5a8: ; 0x0211C5A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x30]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x1dc]
	mov r10, r1
	cmp r4, #0
	mov r9, r2
	mov r8, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211C684 ; =0x000F423F
	ldr r1, [r4, #0xc]
	cmp r8, r0
	movhi r8, r0
	ldr r0, _0211C688 ; =0x020A6C40
	mov r7, #0
	add r6, r4, r1
	add r10, r10, #4
	add r5, r0, r9, lsl #6
	mov r4, r7
	ldr r11, _0211C68C ; =0xCCCCCCCD
	b _0211C674
_0211C608:
	cmp r8, #0
	bne _0211C628
	cmp r7, #0
	movgt r0, r10, lsl #1
	strgth r4, [r5, r0]
	addgt r0, r5, r10, lsl #1
	strgth r4, [r0, #0x40]
	bgt _0211C66C
_0211C628:
	umull r0, r1, r8, r11
	mov r1, r1, lsr #3
	mov r0, #0xa
	umull r1, r2, r0, r1
	sub r1, r8, r1
	add r0, r6, r1, lsl #2
	str r0, [sp]
	ldr r0, _0211C688 ; =0x020A6C40
	mov r1, r9
	str r0, [sp, #4]
	mov r0, r10
	mov r2, #1
	mov r3, #2
	bl  FUN_ov16_020f191c
	mov r1, r8
	umull r0, r8, r1, r11
	mov r8, r8, lsr #3
_0211C66C:
	sub r10, r10, #1
	add r7, r7, #1
_0211C674:
	cmp r7, #6
	blt _0211C608
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C684: .word 0x000F423F
_0211C688: .word 0x020A6C40
_0211C68C: .word 0xCCCCCCCD
	arm_func_end FUN_ov80_0211c5a8

	arm_func_start FUN_ov80_0211c690
FUN_ov80_0211c690: ; 0x0211C690
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r5, [r10, #0x1f4]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	cmp r5, #0
	beq _0211C6DC
	ldr r0, [r5, #0xc]
	ldr r4, _0211C9A4 ; =0x020A7C40
	add r0, r5, r0
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	mov r2, #0x10
	mov r3, #8
	str r4, [sp, #4]
	bl  FUN_ov16_020f191c
_0211C6DC:
	add r1, r7, #0xf
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r1, [r0, #0x1dc]
	cmp r1, #0
	beq _0211C71C
	ldr r0, [r1, #0xc]
	mov r2, #8
	add r0, r1, r0
	ldr r4, _0211C9A8 ; =0x020A7440
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	mov r3, r2
	str r4, [sp, #4]
	bl  FUN_ov16_020f191c
_0211C71C:
	add r1, r7, #0x13
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r1, [r0, #0x1dc]
	cmp r1, #0
	beq _0211C75C
	ldr r0, [r1, #0xc]
	mov r2, #8
	add r0, r1, r0
	ldr r4, _0211C9AC ; =0x020A6C40
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	mov r3, r2
	str r4, [sp, #4]
	bl  FUN_ov16_020f191c
_0211C75C:
	ldr r1, [r10, #0x14c]
	cmp r1, #0
	beq _0211C790
	mov r2, #6
	mul r0, r7, r2
	add r0, r1, r0, lsl #2
	ldr r4, _0211C9A8 ; =0x020A7440
	str r0, [sp]
	mov r1, r8
	add r0, r9, #9
	mov r3, #2
	str r4, [sp, #4]
	bl  FUN_ov16_020f191c
_0211C790:
	add r1, r10, #0x8c
	mov r0, #0x30
	mla r6, r7, r0, r1
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _0211C7D4
	ldrb r0, [r6, #3]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r6, #3]
	bne _0211C7D4
	mov r1, #1
	strb r1, [r6, #3]
	ldrb r0, [r6, #2]
	sub r0, r0, #1
	strb r0, [r6, #2]
	strb r1, [r10, #0x1a]
_0211C7D4:
	ldrb r0, [r6, #3]
	cmp r0, #0
	ldrne r1, [r10, #0x230]
	cmpne r1, #0
	beq _0211C810
	ldr r0, [r1, #0xc]
	ldr r4, _0211C9AC ; =0x020A6C40
	add r0, r1, r0
	str r0, [sp]
	mov r1, r8
	add r0, r9, #8
	mov r2, #8
	mov r3, #2
	str r4, [sp, #4]
	bl  FUN_ov16_020f191c
_0211C810:
	ldrh r0, [r6]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	movs r5, r0
	addne r0, r10, r7, lsl #2
	ldrne r0, [r0, #0x150]
	cmpne r0, #0
	beq _0211C8F0
	bl FUN_0206cc34
	mov r3, r0, lsl #0x10
	mov r0, r10
	add r1, r9, #0xb
	add r2, r8, #2
	mov r3, r3, lsr #0x10
	bl FUN_ov80_0211c3c4
	mov r0, r10
	add r1, r9, #9
	add r2, r8, #4
	bl FUN_ov80_0211c46c
	mov r0, r5
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r5
	bl FUN_0206ccec
	str r4, [sp]
	str r0, [sp, #4]
	ldr r11, _0211C9AC ; =0x020A6C40
	mov r0, r10
	add r1, r9, #0xb
	add r2, r8, #4
	mov r3, #5
	str r11, [sp, #8]
	bl FUN_ov80_0211c4b8
	mov r0, r5
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc94
	str r4, [sp]
	stmib sp, {r0, r11}
	mov r0, r10
	add r1, r9, #0xb
	add r2, r8, #5
	mov r3, #6
	bl FUN_ov80_0211c4b8
	add r1, r10, r7, lsl #2
	ldr r0, _0211C9B0 ; =0x0209BA20
	ldr r1, [r1, #0x150]
	bl FUN_0204df64
	mov r3, r0
	mov r0, #9
	str r0, [sp]
	mov r0, r10
	add r1, r9, #0xa
	add r2, r8, #6
	bl FUN_ov80_0211c5a8
_0211C8F0:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xc]
	cmp r0, #2
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x200]
	cmp r1, #0
	beq _0211C944
	ldr r0, [r1, #0xc]
	ldr r4, _0211C9A8 ; =0x020A7440
	add r0, r1, r0
	str r0, [sp]
	mov r0, r9
	add r1, r8, #6
	mov r2, #0x10
	mov r3, #2
	str r4, [sp, #4]
	bl  FUN_ov16_020f191c
_0211C944:
	mov r0, #0x14
	mul r1, r7, r0
	add r2, r10, #0x164
	ldr r0, [r2, r1]
	add r3, r2, r1
	cmp r0, #0
	ldrne r0, [r3, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r3]
	ldr r0, _0211C9AC ; =0x020A6C40
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r2, [r3, #0xc]
	ldrh r3, [r3, #0xe]
	mov r0, r9
	add r1, r8, #6
	bl  FUN_ov16_020f191c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C9A4: .word 0x020A7C40
_0211C9A8: .word 0x020A7440
_0211C9AC: .word 0x020A6C40
_0211C9B0: .word 0x0209BA20
	arm_func_end FUN_ov80_0211c690

	arm_func_start FUN_ov80_0211c9b4
FUN_ov80_0211c9b4: ; 0x0211C9B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r8, r0
	ldr r1, [r8, #0x278]
	cmp r1, #0
	beq _0211C9F4
	ldr r0, [r1, #0xc]
	ldr r4, _0211CB60 ; =0x020A7C40
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0
	mov r1, #0x10
	mov r2, #0xc
	mov r3, #8
	str r4, [sp, #4]
	bl  FUN_ov16_020f191c
_0211C9F4:
	ldr r1, [r8, #0x284]
	cmp r1, #0
	beq _0211CA28
	ldr r0, [r1, #0xc]
	ldr r4, _0211CB60 ; =0x020A7C40
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0xc
	mov r1, #0x10
	mov r2, #0x14
	mov r3, #8
	str r4, [sp, #4]
	bl  FUN_ov16_020f191c
_0211CA28:
	ldr r0, [r8, #0x44]
	mov r4, #0xa
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	cmpne r0, #4
	cmpne r0, #5
	bne _0211CA60
	ldr r0, [r8, #0x74]
	ldr r2, [r8, #0x38]
	ldr r1, [r8, #0x34]
	mul r0, r2, r0
	bl FUN_0201f9bc
	b _0211CA64
_0211CA60:
	ldr r0, [r8, #0x5c]
_0211CA64:
	mov r1, r0, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r0, r8
	mov r1, #6
	mov r2, #0x12
	str r4, [sp]
	bl FUN_ov80_0211c5a8
	ldr r7, _0211CB64 ; =0x0209BA20
	mov r5, #0
	mov r0, r7
	mov r4, r5
	bl  FUN_ov16_020edf7c
	mov r6, r0
	mov r0, r7
	bl  FUN_ov16_020edfc0
	ldr r1, [r8, #0x44]
	mov r7, r0
	cmp r1, #1
	cmpne r1, #2
	cmpne r1, #3
	cmpne r1, #4
	bne _0211CAF0
	ldr r0, [r8, #0x78]
	ldr r2, [r8, #0x38]
	ldr r1, [r8, #0x34]
	mul r0, r2, r0
	bl FUN_0201f9bc
	ldr r2, [r8, #0x7c]
	ldr r1, [r8, #0x38]
	add r4, r4, r0
	mul r0, r1, r2
	ldr r1, [r8, #0x34]
	bl FUN_0201f9bc
	add r5, r5, r0
	b _0211CB18
_0211CAF0:
	cmp r1, #5
	blt _0211CB18
	ldr r2, [r8, #0x78]
	ldr r0, [r8, #8]
	ldr r1, [r8, #0x7c]
	add r4, r5, r2
	cmp r0, #7
	add r5, r5, r1
	addne r6, r6, r4
	addne r7, r7, r5
_0211CB18:
	mov r9, #6
	mov r0, r8
	mov r1, r9
	mov r3, r4
	str r6, [r8, #0x60]
	str r7, [r8, #0x64]
	mov r4, #0xb
	mov r2, #0x14
	str r4, [sp]
	bl FUN_ov80_0211c5a8
	mov r0, r8
	mov r1, r9
	mov r3, r5
	mov r2, #0x16
	str r4, [sp]
	bl FUN_ov80_0211c5a8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CB60: .word 0x020A7C40
_0211CB64: .word 0x0209BA20
	arm_func_end FUN_ov80_0211c9b4

	arm_func_start FUN_ov80_0211cb68
FUN_ov80_0211cb68: ; 0x0211CB68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r9, #0
	ldr r7, [r10, #0x1b4]
	ldr r8, [r10, #0x1c8]
	mov r6, #0x12
	mov r11, r9
	ldr r5, _0211CC58 ; =0x020A6C40
	mov r4, #0xc
	b _0211CC44
_0211CB94:
	add r0, r10, r9, lsl #1
	ldrh r0, [r0, #0x82]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x1b4]
	mov r1, r11
	cmp r0, #0
	ldrne r0, [r10, #0x1b8]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211CBFC
	add r1, r9, #0x21
	mla r0, r1, r4, r10
	ldr r0, [r0, #0x1dc]
	cmp r0, #0
	beq _0211CBF8
	mov r2, #2
	str r7, [sp]
	mov r0, #0xd
	mov r1, r6
	mov r3, r2
	str r5, [sp, #4]
	bl  FUN_ov16_020f191c
_0211CBF8:
	add r7, r7, #8
_0211CBFC:
	ldr r0, [r10, #0x1c8]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x1cc]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211CC3C
	str r8, [sp]
	mov r0, #0x10
	mov r1, r6
	mov r2, #0x15
	mov r3, #2
	str r5, [sp, #4]
	bl  FUN_ov16_020f191c
	add r8, r8, #0x54
_0211CC3C:
	add r6, r6, #2
	add r9, r9, #1
_0211CC44:
	ldrh r0, [r10, #0x80]
	cmp r9, r0
	blt _0211CB94
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CC58: .word 0x020A6C40
	arm_func_end FUN_ov80_0211cb68

	arm_func_start FUN_ov80_0211cc5c
FUN_ov80_0211cc5c: ; 0x0211CC5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, #0x800
	mov r6, #0
	mov r10, r0
	ldr r1, _0211CD64 ; =0x020A6C40
	mov r0, r6
	mov r2, r4
	bl FUN_0200787c
	ldr r1, _0211CD68 ; =0x020A7440
	mov r0, r6
	mov r2, r4
	bl FUN_0200787c
	mov r4, #0x30
	mov r7, r6
	mov r8, r6
	mov r9, r6
	mov r11, r4
	mov r5, r4
	b _0211CD20
_0211CCA8:
	mla r0, r9, r5, r10
	ldrh r0, [r0, #0x8c]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211CD1C
	mov r1, r8, lsr #0x1f
	rsb r0, r1, r8, lsl #31
	add r2, r8, r8, lsr #31
	add r1, r1, r0, ror #31
	mov r2, r2, asr #1
	mov r0, r10
	mov r1, r1, lsl #4
	mov r2, r2, lsl #3
	add r8, r8, #1
	mov r3, r9
	bl FUN_ov80_0211c690
	cmp r6, #0
	bne _0211CD04
	mla r0, r9, r4, r10
	ldrb r0, [r0, #0x8e]
	cmp r0, #0
	movne r6, #1
_0211CD04:
	cmp r7, #0
	bne _0211CD1C
	mla r0, r9, r11, r10
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	movne r7, #1
_0211CD1C:
	add r9, r9, #1
_0211CD20:
	cmp r9, #4
	blt _0211CCA8
	mov r0, r10
	bl FUN_ov80_0211c9b4
	mov r0, r10
	bl FUN_ov80_0211cb68
	mov r4, #0x800
	ldr r0, _0211CD6C ; =0x020A7C40
	mov r1, r4
	bl FUN_020026d0
	ldr r0, _0211CD68 ; =0x020A7440
	mov r1, r4
	bl FUN_020026d0
	ldr r0, _0211CD64 ; =0x020A6C40
	mov r1, r4
	bl FUN_020026d0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CD64: .word 0x020A6C40
_0211CD68: .word 0x020A7440
_0211CD6C: .word 0x020A7C40
	arm_func_end FUN_ov80_0211cc5c

	arm_func_start FUN_ov80_0211cd70
FUN_ov80_0211cd70: ; 0x0211CD70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	mov r4, #0
	mov r3, #1
	mov r1, r4
	add r0, r5, #0x150
	mov r2, #0x10
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	strb r4, [r5, #0x1b]
	strb r3, [r5, #0x2c]
	str r4, [r5, #0x28]
	str r4, [r5, #0x24]
	str r4, [r5, #0x14]
	strb r4, [r5, #0x19]
	strb r4, [r5, #0x1a]
	str r4, [r5, #0x34]
	str r4, [r5, #0x38]
	str r4, [r5, #0x14c]
	bl MemWrite
	mov r1, r4
	add r0, r5, #0x1dc
	mov r2, #0x1bc
	bl MemWrite
	mov r6, #0x800
	ldr r1, _0211CF0C ; =0x020A7C40
	mov r0, r4
	mov r2, r6
	bl FUN_0200787c
	ldr r1, _0211CF10 ; =0x020A7440
	mov r0, r4
	mov r2, r6
	bl FUN_0200787c
	ldr r1, _0211CF14 ; =0x020A6C40
	mov r2, r6
	mov r0, r4
	bl FUN_0200787c
	add r0, r5, #0x164
	mov r1, #6
	bl  FUN_ov16_020f2f7c
	ldr r0, _0211CF18 ; =0x0209BA20
	bl FUN_02071fac
	add r9, r5, #0x164
	mov r8, #0xf
	mov r7, #2
	mov r6, #0x14
	b _0211CE40
_0211CE2C:
	mla r0, r4, r6, r9
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_020f2fa8
	add r4, r4, #1
_0211CE40:
	cmp r4, #4
	blt _0211CE2C
	bl  FUN_ov1_020db2ac
	cmp r0, #0
	beq _0211CE78
	mov r4, #6
	mov r2, r4
	add r0, r5, #0x1b4
	mov r1, #2
	bl  FUN_ov16_020f2fa8
	mov r2, r4
	add r0, r5, #0x1c8
	mov r1, #0x15
	bl  FUN_ov16_020f2fa8
_0211CE78:
	ldr r8, _0211CF1C ; =0x0209A250
	mov r9, #0
	mov r0, r8
	mov r2, r9
	mov r1, #0x60
	mov r3, #1
	bl FUN_0202de58
	str r0, [r5, #0x14c]
	mov r7, #0x98
	mov r6, r9
	mov r4, #1
	b _0211CEC8
_0211CEA8:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl FUN_0202de58
	add r1, r5, r9, lsl #2
	str r0, [r1, #0x150]
	add r9, r9, #1
_0211CEC8:
	cmp r9, #4
	blt _0211CEA8
	ldr r0, _0211CF1C ; =0x0209A250
	mov r1, #0x1b0
	bl FUN_0202de44
	str r0, [r5, #0x160]
	mov r0, r5
	mov r1, #1
	bl FUN_ov80_0211a32c
	mov r0, #0
	add r1, r5, #0x3a4
	mov r2, #0x40
	str r0, [r5, #0x39c]
	str r0, [r5, #0x398]
	strb r0, [r5, #0x3a0]
	bl FUN_02007804
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CF0C: .word 0x020A7C40
_0211CF10: .word 0x020A7440
_0211CF14: .word 0x020A6C40
_0211CF18: .word 0x0209BA20
_0211CF1C: .word 0x0209A250
	arm_func_end FUN_ov80_0211cd70

	arm_func_start FUN_ov80_0211cf20
FUN_ov80_0211cf20: ; 0x0211CF20
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0211CF38: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0211CF58 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _0211CF78 ; case 3
	b _0211CFB0 ; case 4
	b _0211CFB0 ; case 5
	ldmfd sp!, {r4, pc} ; case 6
	b _0211CFB0 ; case 7
_0211CF58:
	add r0, r4, #0x1dc
	mov r1, #0x25
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov80_0211a650
	ldmfd sp!, {r4, pc}
_0211CF78:
	ldr r0, [r4, #4]
	add r1, r4, #0x40
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov80_0211cc5c
	ldr r0, [r4, #0x14]
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #4
	bl FUN_ov80_0211b4cc
	ldmfd sp!, {r4, pc}
_0211CFB0:
	bl  FUN_ov1_020db2ac
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov80_0211b240
	mov r0, r4
	bl FUN_ov80_0211cc5c
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211CFF0 ; =0x0209AC44
	mov r1, #0x29
	bl FUN_0202cf6c
	mov r0, #0
	strb r0, [r4, #0x1a]
	ldmfd sp!, {r4, pc}
_0211CFF0: .word 0x0209AC44
	arm_func_end FUN_ov80_0211cf20

	arm_func_start FUN_ov80_0211cff4
FUN_ov80_0211cff4: ; 0x0211CFF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211D00C: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	b _0211D02C ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _0211D040 ; case 4
	b _0211D040 ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _0211D040 ; case 7
_0211D02C:
	bl FUN_ov80_0211ba04
	mov r0, r4
	mov r1, #3
	bl FUN_ov80_0211b4cc
	ldmfd sp!, {r3, r4, r5, pc}
_0211D040:
	bl  FUN_ov1_020db2ac
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov80_0211c244
	mov r5, #0
	mov r4, #0x800
	ldr r0, _0211D090 ; =0x020A7C40
	mov r1, r5
	mov r2, r4
	bl FUN_020055bc
	ldr r0, _0211D094 ; =0x020A7440
	mov r1, r5
	mov r2, r4
	bl FUN_020054dc
	ldr r0, _0211D098 ; =0x020A6C40
	mov r1, r5
	mov r2, r4
	bl FUN_0200569c
	ldmfd sp!, {r3, r4, r5, pc}
_0211D090: .word 0x020A7C40
_0211D094: .word 0x020A7440
_0211D098: .word 0x020A6C40
	arm_func_end FUN_ov80_0211cff4

	arm_func_start FUN_ov80_0211d09c
FUN_ov80_0211d09c: ; 0x0211D09C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x1dc
	mov r1, #0x25
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov80_0211a738
	mov r7, #0
	ldr r6, _0211D158 ; =0x0209A250
	mov r5, r7
_0211D0C4:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x150]
	cmp r1, #0
	beq _0211D0E4
	mov r0, r6
	bl FUN_0202e1c0
	add r0, r4, r7, lsl #2
	str r5, [r0, #0x150]
_0211D0E4:
	add r7, r7, #1
	cmp r7, #4
	blt _0211D0C4
	ldr r1, [r4, #0x160]
	cmp r1, #0
	beq _0211D10C
	ldr r0, _0211D158 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x160]
_0211D10C:
	ldr r1, [r4, #0x14c]
	cmp r1, #0
	beq _0211D128
	ldr r0, _0211D158 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x14c]
_0211D128:
	add r0, r4, #0x164
	mov r1, #6
	bl  FUN_ov16_020f2fe4
	ldr r0, _0211D15C ; =0x0209BA20
	bl FUN_02072020
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	mov r0, r4
	bl  FUN_ov1_020be6f8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D158: .word 0x0209A250
_0211D15C: .word 0x0209BA20
	arm_func_end FUN_ov80_0211d09c

	arm_func_start FUN_ov80_0211d160
FUN_ov80_0211d160: ; 0x0211D160
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211D1EC ; =0x0209BA20
	bl FUN_020732d8
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211D1F0 ; =0x020AF81C
	mov r1, #0x24
	bl FUN_02044644
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov80_0211d4f8
	mov r0, r4
	bl FUN_ov80_0211d1f4
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov80_0211d468
	mov r0, r4
	bl FUN_ov80_0211d244
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov80_0211d2e8
	mov r1, r0
	mov r0, r4
	bl FUN_ov80_0211d2f8
	mov r0, r4
	bl FUN_ov80_0211d320
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov80_0211d434
	ldmfd sp!, {r4, pc}
_0211D1EC: .word 0x0209BA20
_0211D1F0: .word 0x020AF81C
	arm_func_end FUN_ov80_0211d160

	arm_func_start FUN_ov80_0211d1f4
FUN_ov80_0211d1f4: ; 0x0211D1F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, _0211D240 ; =0x0209BA20
	mov r1, r4
	bl FUN_020724c8
	mov r2, r4
_0211D210:
	add r1, r5, r2, lsl #4
	ldr r1, [r1, #0x3a8]
	add r2, r2, #1
	cmp r2, #4
	add r4, r4, r1
	blt _0211D210
	mov r1, r4, asr #1
	add r1, r4, r1, lsr #30
	cmp r0, r1, asr #2
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0211D240: .word 0x0209BA20
	arm_func_end FUN_ov80_0211d1f4

	arm_func_start FUN_ov80_0211d244
FUN_ov80_0211d244: ; 0x0211D244
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #0
	mov r9, r0
	ldr r6, _0211D2E4 ; =0x0209A0AC
	mov r8, r7
	str r7, [r9, #0x398]
	mvn r4, #0
	mov r5, r7
_0211D264:
	add r0, r9, r8, lsl #4
	add r0, r0, #0x300
	ldrh r1, [r0, #0xa4]
	mov r0, r6
	mov r2, r5
	bl FUN_0206c7dc
	cmp r0, #0
	addne r0, r9, r8, lsl #4
	strne r4, [r0, #0x3b0]
	bne _0211D2C4
	add r1, r9, r8, lsl #4
	ldrb r0, [r1, #0x3ac]
	cmp r0, #0xbf
	blo _0211D2BC
	cmp r0, #0xc8
	bhi _0211D2BC
	str r7, [r1, #0x3b0]
	ldr r0, [r9, #0x398]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [r9, #0x398]
	b _0211D2C4
_0211D2BC:
	add r0, r9, r8, lsl #4
	str r4, [r0, #0x3b0]
_0211D2C4:
	add r8, r8, #1
	cmp r8, #4
	blt _0211D264
	ldr r0, [r9, #0x398]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D2E4: .word 0x0209A0AC
	arm_func_end FUN_ov80_0211d244

	arm_func_start FUN_ov80_0211d2e8
FUN_ov80_0211d2e8: ; 0x0211D2E8
	ldr r0, [r0, #0x398]
	ldr r12, _0211D2F4 ; = FUN_ov16_020ef8d4
	bx r12
_0211D2F4: .word  FUN_ov16_020ef8d4
	arm_func_end FUN_ov80_0211d2e8

	arm_func_start FUN_ov80_0211d2f8
FUN_ov80_0211d2f8: ; 0x0211D2F8
	mov r3, #0
_0211D2FC:
	add r2, r0, r3, lsl #4
	ldr r2, [r2, #0x3b0]
	cmp r1, r2
	streq r3, [r0, #0x39c]
	bxeq lr
	add r3, r3, #1
	cmp r3, #4
	blt _0211D2FC
	bx lr
	arm_func_end FUN_ov80_0211d2f8

	arm_func_start FUN_ov80_0211d320
FUN_ov80_0211d320: ; 0x0211D320
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x39c]
	add r0, r0, r1, lsl #4
	ldrb r0, [r0, #0x3ac]
	sub r0, r0, #0xbf
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211D3EC
_0211D340: ; jump table
	b _0211D368 ; case 0
	b _0211D380 ; case 1
	b _0211D38C ; case 2
	b _0211D398 ; case 3
	b _0211D3A4 ; case 4
	b _0211D3B0 ; case 5
	b _0211D3BC ; case 6
	b _0211D3C8 ; case 7
	b _0211D3D4 ; case 8
	b _0211D3E0 ; case 9
_0211D368:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D40C ; =0x02122964
_0211D370:
	bl FUN_020418b0
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	b _0211D3F0
_0211D380:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D410 ; =0x02122974
	b _0211D370
_0211D38C:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D414 ; =0x02122984
	b _0211D370
_0211D398:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D418 ; =0x02122994
	b _0211D370
_0211D3A4:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D41C ; =0x021229A4
	b _0211D370
_0211D3B0:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D420 ; =0x021229B4
	b _0211D370
_0211D3BC:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D424 ; =0x021229C4
	b _0211D370
_0211D3C8:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D428 ; =0x021229D4
	b _0211D370
_0211D3D4:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D42C ; =0x021229E4
	b _0211D370
_0211D3E0:
	ldr r0, _0211D408 ; =0x02099F78
	ldr r1, _0211D430 ; =0x021229F4
	b _0211D370
_0211D3EC:
	mov r4, #0
_0211D3F0:
	mov r0, #0x64
	bl  FUN_ov16_020ef8d4
	cmp r0, r4
	movls r0, #1
	movhi r0, #0
	ldmfd sp!, {r4, pc}
_0211D408: .word 0x02099F78
_0211D40C: .word 0x02122964
_0211D410: .word 0x02122974
_0211D414: .word 0x02122984
_0211D418: .word 0x02122994
_0211D41C: .word 0x021229A4
_0211D420: .word 0x021229B4
_0211D424: .word 0x021229C4
_0211D428: .word 0x021229D4
_0211D42C: .word 0x021229E4
_0211D430: .word 0x021229F4
	arm_func_end FUN_ov80_0211d320

	arm_func_start FUN_ov80_0211d434
FUN_ov80_0211d434: ; 0x0211D434
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x39c]
	ldr r0, _0211D464 ; =0x020A9C40
	add r1, r4, r1, lsl #4
	add r1, r1, #0x300
	ldrh r1, [r1, #0xa4]
	mov r2, #5
	bl FUN_02045b40
	mov r0, #1
	strb r0, [r4, #0x3a0]
	ldmfd sp!, {r4, pc}
_0211D464: .word 0x020A9C40
	arm_func_end FUN_ov80_0211d434

	arm_func_start FUN_ov80_0211d468
FUN_ov80_0211d468: ; 0x0211D468
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0211D4F0 ; =0x0209BA20
	mov r4, r0
	ldr r3, [r5, #0x7ec]
	cmp r3, #0
	bne _0211D48C
	mov r0, r5
	bl FUN_0204eba0
	ldr r3, [r5, #0x7ec]
_0211D48C:
	ldr r0, _0211D4F4 ; =0x0209C220
	mov r12, #0
	ldrh r5, [r0, #0x6a]
	cmp r5, #0
	ble _0211D4E4
	mov r2, r12
_0211D4A4:
	ldrh r6, [r3, #0x24]
	mov lr, r2
_0211D4AC:
	add r1, r4, lr, lsl #4
	add r0, r1, #0x300
	ldrh r0, [r0, #0xa4]
	cmp r6, r0
	ldreqb r0, [r3, #0x26]
	streqb r0, [r1, #0x3ac]
	beq _0211D4D4
	add lr, lr, #1
	cmp lr, #4
	blt _0211D4AC
_0211D4D4:
	add r12, r12, #1
	cmp r12, r5
	add r3, r3, #0x2c
	blt _0211D4A4
_0211D4E4:
	ldr r0, _0211D4F0 ; =0x0209BA20
	bl FUN_0204ec3c
	ldmfd sp!, {r4, r5, r6, pc}
_0211D4F0: .word 0x0209BA20
_0211D4F4: .word 0x0209C220
	arm_func_end FUN_ov80_0211d468

	arm_func_start FUN_ov80_0211d4f8
FUN_ov80_0211d4f8: ; 0x0211D4F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _0211D550 ; =0x02099EF0
	mov r5, r0
	mov r4, #0
_0211D508:
	ldr r0, [r6]
	add r1, r4, #0x10
	ldr r0, [r0, #0x4d8]
	bl FUN_0206c6fc
	movs r7, r0
	beq _0211D540
	bl FUN_0206cc00
	add r1, r5, r4, lsl #4
	add r1, r1, #0x300
	strh r0, [r1, #0xa4]
	mov r0, r7
	bl FUN_0206cc34
	add r1, r5, r4, lsl #4
	str r0, [r1, #0x3a8]
_0211D540:
	add r4, r4, #1
	cmp r4, #4
	blt _0211D508
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D550: .word 0x02099EF0
	arm_func_end FUN_ov80_0211d4f8

	arm_func_start FUN_ov80_0211d554
FUN_ov80_0211d554: ; 0x0211D554
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	add r7, sp, #8
	mov r2, #0
	add r1, sp, #0x10
	mov r0, r7
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	bl FUN_ov80_0211d79c
	ldr r9, _0211D6C0 ; =0x02099EF0
	mov r8, #0x10
	mov r6, #0
	sub r4, sp, #4
	add r5, sp, #4
_0211D59C:
	ldr r0, [r9]
	mov r1, r8
	ldr r0, [r0, #0x4d8]
	bl FUN_0206c6fc
	str r0, [sp, #4]
	cmp r0, #0
	beq _0211D630
	bl FUN_0206d6b0
	cmp r0, #0
	beq _0211D5E4
	ldr r0, [sp, #4]
	bl FUN_0206d6c4
	cmp r0, #0
	bne _0211D5E4
	ldr r0, [sp, #4]
	bl  FUN_ov16_020f0810
	cmp r0, #1
	bne _0211D630
_0211D5E4:
	ldr r0, [sp, #4]
	mov r1, r6
	bl FUN_0206d824
	cmp r0, #0
	beq _0211D630
	ldr r0, [sp, #4]
	mov r1, r6
	bl FUN_0206d824
	cmp r0, #4
	bgt _0211D630
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x63]
	cmp r0, #0
	beq _0211D630
	strb r6, [r4]
	ldr r2, [r4]
	mov r0, r7
	mov r1, r5
	bl FUN_ov80_0211d724
_0211D630:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #0x20
	blt _0211D59C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0211D6AC
	bl  FUN_ov16_020ef928
	add r4, sp, #0x10
	ldr r1, [sp, #8]
	ldr r2, [r4, #4]
	add r5, r0, r1
	ldr r1, [r4, #0xc]
	add r0, r2, r5, lsr #8
	bl FUN_0201fbc8
	ldr r0, [r4]
	add r4, sp, #8
	ldr r1, [r0, r1, lsl #2]
	and r0, r5, #0xff
	ldr r1, [r1, r0, lsl #2]
	mov r0, r4
	str r1, [sp, #4]
	bl FUN_ov80_0211d79c
	ldr r1, [sp, #4]
	mov r0, r4
	ldrb r4, [r1, #0x63]
	bl FUN_ov80_0211dd1c
	add sp, sp, #0x20
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D6AC:
	add r0, sp, #8
	bl FUN_ov80_0211dd1c
	mov r0, #0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D6C0: .word 0x02099EF0
	arm_func_end FUN_ov80_0211d554

	arm_func_start FUN_ov80_0211d6c4
FUN_ov80_0211d6c4: ; 0x0211D6C4
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211D700 ; =0x0209BA20
	mov r5, #0
_0211D6D8:
	mov r0, r6
	mov r1, r5
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_02074a2c
	add r5, r5, #1
	cmp r5, #6
	blt _0211D6D8
	ldmfd sp!, {r4, r5, r6, pc}
_0211D700: .word 0x0209BA20
	arm_func_end FUN_ov80_0211d6c4

	arm_func_start FUN_ov80_0211d704
FUN_ov80_0211d704: ; 0x0211D704
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov80_0211d704

	arm_func_start FUN_ov80_0211d718
FUN_ov80_0211d718: ; 0x0211D718
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov80_0211d718

	arm_func_start FUN_ov80_0211d720
FUN_ov80_0211d720: ; 0x0211D720
	bx lr
	arm_func_end FUN_ov80_0211d720

	arm_func_start FUN_ov80_0211d724
FUN_ov80_0211d724: ; 0x0211D724
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	cmp r0, #0
	moveq r2, #0
	subne r0, r0, #1
	movne r2, r0, lsl #8
	ldr r1, [r5]
	ldr r0, [r5, #4]
	add r0, r1, r0
	subs r0, r2, r0
	bne _0211D768
	mov r0, r5
	mov r1, #1
	bl FUN_ov80_0211d80c
_0211D768:
	ldr r2, [r5, #4]
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov80_0211ecf0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov80_0211d724

	arm_func_start FUN_ov80_0211d79c
FUN_ov80_0211d79c: ; 0x0211D79C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r4, #4]
	cmp r0, #2
	bls _0211D7F8
	mov r5, r1
_0211D7BC:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl FUN_0201e078
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r1, #1
	cmp r1, r0
	ldr r0, [r4, #0x10]
	str r1, [r4, #0xc]
	sub r0, r0, #1
	streq r5, [r4, #0xc]
	str r0, [r4, #0x10]
	cmp r0, #2
	bhi _0211D7BC
_0211D7F8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0x80
	strne r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov80_0211d79c

	arm_func_start FUN_ov80_0211d80c
FUN_ov80_0211d80c: ; 0x0211D80C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x13c
	mov r10, r0
	tst r1, #0xff
	mov r6, #0
	movne r0, #1
	moveq r0, r6
	add r7, r0, r1, lsr #8
	add r4, sp, #0x28
	b _0211D8A0
_0211D834:
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r1
	ldr r5, [r2, r1, lsl #2]
	add r1, r0, #1
	ldr r0, [r10, #0x14]
	str r1, [r10, #0xc]
	cmp r1, r0
	streq r6, [r10, #0xc]
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #0xc]
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r10, #0x14]
	sub r0, r0, #1
	str r2, [r10, #0x10]
	bl FUN_0201fbc8
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r5, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x28]
	bl FUN_ov80_0211df24
	ldr r0, [r10]
	sub r7, r7, #1
	sub r0, r0, #0x100
	str r0, [r10]
_0211D8A0:
	cmp r7, #0
	beq _0211D8B4
	ldr r0, [r10]
	cmp r0, #0x100
	bhs _0211D834
_0211D8B4:
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _0211DD0C ; =0x02122C24
	ldr r0, [r1]
	tst r0, #1
	bne _0211D8E8
	mov r3, #0x200
	orr r2, r0, #1
	ldr r0, _0211DD10 ; =0x02122718
	rsb r3, r3, #0
	str r3, [r0]
	str r2, [r1]
_0211D8E8:
	ldr r2, _0211DD10 ; =0x02122718
	mov r0, r7, lsl #8
	ldr r1, [r2]
	cmp r1, r7, lsl #8
	blo _0211D944
	ldr r1, _0211DD0C ; =0x02122C24
	ldr r3, [r1]
	tst r3, #1
	moveq r4, #0x200
	orreq r3, r3, #1
	rsbeq r4, r4, #0
	streq r3, [r1]
	streq r4, [r2]
	ldr r2, [r10, #0x10]
	ldr r1, _0211DD10 ; =0x02122718
	cmp r2, #0
	ldr r3, [r1]
	moveq r1, #0
	subne r1, r2, #1
	movne r1, r1, lsl #8
	sub r0, r3, r0
	cmp r1, r0
	bls _0211D94C
_0211D944:
	ldr r0, _0211DD14 ; =0x02122A04
	bl FUN_ov80_0211ddec
_0211D94C:
	ldr r0, [r10, #0x14]
	mov r1, #0
	cmp r0, #0
	subne r1, r0, #1
	ldr r0, [r10, #0x10]
	add r0, r7, r0
	cmp r0, r1
	bhi _0211D9E0
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211DD18 ; =0x02122800
	add r9, sp, #0x24
	mov r5, #0x400
_0211D984:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0211D9A0
	mov r0, r4
	bl FUN_02023ab4
	bl FUN_02021040
_0211D9A0:
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	ldr r1, [r10, #0x14]
	add r0, r2, r0
	sub r0, r0, #1
	bl FUN_0201fbc8
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r8, [r2, r1, lsl #2]
	mov r1, r9
	str r6, [sp, #0x24]
	bl FUN_ov80_0211df24
	subs r7, r7, #1
	bne _0211D984
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D9E0:
	movs r1, #0
	add r4, sp, #0x12c
	str r1, [sp, #0x124]
	str r1, [sp, #0x128]
	str r1, [sp, #0xb4]
	str r1, [sp, #0xb8]
	str r1, [sp, #0xbc]
	str r1, [sp, #0xc0]
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	add r8, sp, #0xb4
	beq _0211DA20
	add r0, r1, r1
	bl FUN_0201fbc8
_0211DA20:
	ldr r5, [r8]
	ldr r2, [r8, #4]
	ldr r0, [r8, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	add r8, r5, r1, lsl #2
	ldrb r1, [sp, #0x10]
	add r0, sp, #0xc4
	str r8, [sp, #0xc4]
	str r5, [sp, #0xc8]
	str r5, [sp, #0xd8]
	str r3, [sp, #0xcc]
	str r2, [sp, #0xd0]
	str r0, [sp, #4]
	add r0, sp, #0xd4
	strb r1, [sp, #8]
	sub r5, sp, #0xc
	str r3, [sp, #0xd4]
	str r3, [sp, #0xdc]
	str r2, [sp, #0xe0]
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	ldmia r5, {r1, r2, r3}
	bl FUN_ov80_0211f154
	add r0, sp, #0xb4
	bl FUN_ov80_0211f068
	ldr r0, [r10, #0x10]
	mov r2, #0
	add r0, r7, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r10, #0x14]
	add r9, sp, #0x12c
	cmp r1, #0
	subne r2, r1, #1
	cmp r0, r2, lsl #1
	addhi r0, sp, #0x1c
	mov r1, r2, lsl #1
	addls r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r1, [r0]
	mov r0, r9
	bl FUN_ov80_0211ddfc
	add r1, sp, #0x18
	mov r0, r9
	str r6, [sp, #0x18]
	bl FUN_ov80_0211df24
	cmp r7, #0
	beq _0211DB48
	ldr r11, _0211DD18 ; =0x02122800
	add r4, sp, #0x14
	mov r5, #0x400
_0211DAF4:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0211DB10
	mov r0, r11
	bl FUN_02023ab4
	bl FUN_02021040
_0211DB10:
	ldr r2, [r9, #4]
	ldr r0, [r9, #8]
	ldr r1, [r9, #0xc]
	add r0, r2, r0
	sub r0, r0, #1
	bl FUN_0201fbc8
	ldr r2, [r9]
	mov r0, r9
	str r8, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x14]
	bl FUN_ov80_0211df24
	subs r7, r7, #1
	bne _0211DAF4
_0211DB48:
	ldr r0, [r10, #0x10]
	mov r5, #0
	cmp r0, #0
	beq _0211DCB0
	ldr r1, [r10, #0x14]
	cmp r1, #0
	moveq r1, r5
	beq _0211DB78
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
_0211DB78:
	ldr r6, [r10, #8]
	ldr r3, [r10, #0xc]
	add r2, r6, r1, lsl #2
	ldr r0, [r10, #0x14]
	add r4, r6, r3, lsl #2
	add r3, r6, r0, lsl #2
	add r0, sp, #0xa4
	str r2, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r4, [sp, #0xac]
	str r3, [sp, #0xb0]
	mvn r1, #0
	str r2, [sp, #0xe4]
	str r6, [sp, #0xe8]
	str r4, [sp, #0xec]
	str r3, [sp, #0xf0]
	bl FUN_ov80_0211f09c
	ldr r1, [r10, #8]
	ldr r7, [sp, #0xa8]
	ldr r6, [sp, #0xac]
	ldr r8, [sp, #0xa4]
	ldr r3, [sp, #0xb0]
	ldr r0, [r10, #0xc]
	ldr r2, [r9]
	add r4, r1, r0, lsl #2
	ldr r0, [r10, #0x14]
	str r7, [sp, #0xf8]
	str r7, [sp, #0x40]
	str r7, [sp, #0x88]
	str r7, [sp, #0x74]
	add r7, r1, r0, lsl #2
	ldr r0, [r9, #4]
	str r6, [sp, #0xfc]
	str r6, [sp, #0x44]
	str r6, [sp, #0x8c]
	str r6, [sp, #0x78]
	add r6, r2, r0, lsl #2
	ldr r0, [r9, #0xc]
	and r5, r5, #0xff
	add r0, r2, r0, lsl #2
	str r3, [sp, #0x100]
	str r1, [sp, #0x108]
	str r3, [sp, #0x48]
	str r1, [sp, #0x30]
	str r3, [sp, #0x90]
	str r3, [sp, #0x7c]
	str r1, [sp, #0x98]
	str r1, [sp, #0x60]
	str r8, [sp, #0x70]
	add r1, sp, #0x4c
	str r2, [sp, #0x118]
	str r2, [sp, #0x50]
	add r2, sp, #0x5c
	str r0, [sp, #0x120]
	str r0, [sp, #0x58]
	add r3, sp, #0x70
	str r7, [sp, #0x68]
	mov r0, r9
	str r4, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x54]
	str r8, [sp, #0xf4]
	str r4, [sp, #0x104]
	str r4, [sp, #0x10c]
	str r8, [sp, #0x3c]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x34]
	str r8, [sp, #0x84]
	str r4, [sp, #0x94]
	str r4, [sp, #0x9c]
	str r7, [sp, #0x110]
	str r6, [sp, #0x114]
	str r6, [sp, #0x11c]
	str r7, [sp, #0x38]
	str r7, [sp, #0xa0]
	strb r5, [sp]
	bl FUN_ov80_0211e1cc
_0211DCB0:
	ldr r2, [r10, #8]
	ldr r1, [r9]
	add r0, sp, #0x124
	str r1, [r10, #8]
	str r2, [r9]
	ldr r2, [r10, #0xc]
	ldr r1, [r9, #4]
	str r1, [r10, #0xc]
	str r2, [r9, #4]
	ldr r2, [r10, #0x10]
	ldr r1, [r9, #8]
	str r1, [r10, #0x10]
	str r2, [r9, #8]
	ldr r2, [r10, #0x14]
	ldr r1, [r9, #0xc]
	str r1, [r10, #0x14]
	ldr r1, [r9, #8]
	str r2, [r9, #0xc]
	sub r1, r1, r1
	str r1, [r9, #8]
	bl FUN_ov80_0211ec20
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DD0C: .word 0x02122C24
_0211DD10: .word 0x02122718
_0211DD14: .word 0x02122A04
_0211DD18: .word 0x02122800
	arm_func_end FUN_ov80_0211d80c

	arm_func_start FUN_ov80_0211dd1c
FUN_ov80_0211dd1c: ; 0x0211DD1C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _0211DDD8
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0211DD5C
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r3, r1
_0211DD5C:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _0211DDD8
_0211DD9C:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0211DDB0
	bl FUN_0201e078
_0211DDB0:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _0211DD9C
_0211DDD8:
	add r0, r5, #8
	bl FUN_ov80_0211f068
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov80_0211dd1c

	arm_func_start FUN_ov80_0211ddec
FUN_ov80_0211ddec: ; 0x0211DDEC
	stmfd sp!, {r3, lr}
	bl FUN_02023ab4
	bl FUN_02021040
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_0211ddec

	arm_func_start FUN_ov80_0211ddfc
FUN_ov80_0211ddfc: ; 0x0211DDFC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r1, r0
	addls sp, sp, #0x38
	ldmlsfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	add r0, r6, #0xc
	str r0, [sp, #0x34]
	str r4, [sp, #0x24]
	str r4, [sp, #0x28]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x30]
	sub r0, sp, #4
	strb r4, [r0]
	ldr r2, [r0]
	add r0, sp, #0x24
	bl FUN_ov80_0211ede4
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _0211DE74
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r4, r1
_0211DE74:
	ldr r2, [r6]
	mov r5, #0
	add r0, r2, r4, lsl #2
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r4, sp, #0x24
	add r1, r2, r0, lsl #2
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	add r0, r2, r0, lsl #2
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r0, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	add r1, sp, #0x14
	add r2, sp, #4
	mov r0, r4
	bl FUN_ov80_0211ef68
	str r5, [r6, #8]
	ldr r1, [r6]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r6]
	str r1, [sp, #0x24]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x28]
	mov r0, r4
	str r1, [r6, #4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [r6, #8]
	str r5, [sp, #0x2c]
	ldr r2, [r6, #0xc]
	ldr r1, [r3]
	str r1, [r6, #0xc]
	str r2, [r3]
	bl FUN_ov80_0211edb0
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov80_0211ddfc

	arm_func_start FUN_ov80_0211df24
FUN_ov80_0211df24: ; 0x0211DF24
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r3, [r6, #8]
	mov r4, r1
	ldr r1, [r6, #0xc]
	add r2, r3, #1
	cmp r2, r1
	bhs _0211DF78
	ldr r0, [r6, #4]
	add r0, r0, r3
	bl FUN_0201fbc8
	ldr r0, [r6]
	add sp, sp, #0x38
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [r6, #8]
	add r0, r0, #1
	str r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211DF78:
	mov r5, #0
	add r2, r6, #0xc
	mov r1, #1
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	str r5, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r2, [sp, #0x34]
	bl FUN_ov80_0211e0a8
	mov r1, r0
	sub r0, sp, #4
	strb r5, [r0]
	ldr r2, [r0]
	add r0, sp, #0x24
	bl FUN_ov80_0211ede4
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [r6, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _0211DFF8
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	add r0, r2, r0
	bl FUN_0201fbc8
_0211DFF8:
	ldr r2, [r6]
	mov r5, #0
	add r0, r2, r1, lsl #2
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r4, sp, #0x24
	add r1, r2, r0, lsl #2
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	add r0, r2, r0, lsl #2
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r0, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	add r1, sp, #0x14
	add r2, sp, #4
	mov r0, r4
	bl FUN_ov80_0211ee60
	str r5, [r6, #8]
	ldr r1, [r6]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r6]
	str r1, [sp, #0x24]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x28]
	mov r0, r4
	str r1, [r6, #4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [r6, #8]
	str r5, [sp, #0x2c]
	ldr r2, [r6, #0xc]
	ldr r1, [r3]
	str r1, [r6, #0xc]
	str r2, [r3]
	bl FUN_ov80_0211edb0
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov80_0211df24

	arm_func_start FUN_ov80_0211e0a8
FUN_ov80_0211e0a8: ; 0x0211E0A8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _0211E1A4 ; =0x02122C28
	mov r5, #0
	ldr r3, [r2]
	tst r3, #1
	orreq r3, r3, #1
	ldreq r1, _0211E1A8 ; =0x021226FC
	mvneq r4, #0xc0000001
	streq r3, [r2]
	streq r4, [r1]
	ldr r1, [r0, #0xc]
	ldr r0, _0211E1A8 ; =0x021226FC
	cmp r1, #0
	subne r5, r1, #1
	ldr r4, [r0]
	ldr r1, [sp, #0x1c]
	sub r0, r4, r5
	cmp r1, r0
	bls _0211E100
	bl FUN_ov80_0211e1b4
_0211E100:
	ldr r0, _0211E1AC ; =0xAAAAAAAB
	umull r0, r1, r4, r0
	mov r1, r1, lsr #1
	cmp r5, r1
	bhs _0211E154
	add r1, r5, #1
	ldr r0, _0211E1B0 ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x1c]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x1c
	addls r0, sp, #4
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r5, r0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0211E154:
	cmp r5, r1, lsl #1
	bhs _0211E190
	ldr r0, [sp, #0x1c]
	add r1, r5, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x1c
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r5, r0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0211E190:
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0211E1A4: .word 0x02122C28
_0211E1A8: .word 0x021226FC
_0211E1AC: .word 0xAAAAAAAB
_0211E1B0: .word 0xCCCCCCCD
	arm_func_end FUN_ov80_0211e0a8

	arm_func_start FUN_ov80_0211e1b4
FUN_ov80_0211e1b4: ; 0x0211E1B4
	stmfd sp!, {r3, lr}
	ldr r0, _0211E1C8 ; =0x02122A1C
	bl FUN_02023ab4
	bl FUN_02021040
	ldmfd sp!, {r3, pc}
_0211E1C8: .word 0x02122A1C
	arm_func_end FUN_ov80_0211e1b4

	arm_func_start FUN_ov80_0211e1cc
FUN_ov80_0211e1cc: ; 0x0211E1CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b4
	mov r9, r2
	mov r8, r3
	ldrb r2, [r9, #0x10]
	ldrb r7, [r8, #0x10]
	mov r10, r0
	str r1, [sp]
	ldr r0, [r8, #8]
	ldr r1, [r8, #0xc]
	ldr r6, [r9]
	ldr r5, [r9, #4]
	ldr r4, [r9, #8]
	ldr r3, [r9, #0xc]
	ldr r12, [r8]
	ldr r11, [r8, #4]
	str r0, [sp, #0x170]
	str r0, [sp, #0x74]
	str r1, [sp, #0x174]
	str r1, [sp, #0x78]
	add r0, sp, #0x6c
	add r1, sp, #0x58
	str r12, [sp, #0x168]
	str r11, [sp, #0x16c]
	strb r7, [sp, #0x178]
	str r6, [sp, #0x17c]
	str r5, [sp, #0x180]
	strb r2, [sp, #0x18c]
	str r4, [sp, #0x184]
	str r12, [sp, #0x6c]
	str r11, [sp, #0x70]
	strb r7, [sp, #0x7c]
	str r3, [sp, #0x188]
	str r6, [sp, #0x58]
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	strb r2, [sp, #0x68]
	bl FUN_ov80_0211f0e0
	movs r4, r0
	addeq sp, sp, #0x1b4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	ldr r3, [r10]
	ldr r1, [r10, #4]
	ldr r2, [r0]
	add r7, r3, r1, lsl #2
	sub r1, r2, r7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r2, r7
	mov r5, r0, asr #2
	ldrlo r0, [r10, #0xc]
	mov r6, #0
	addlo r5, r5, r0
	ldr r0, [r10, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r4, r0
	ldrls r2, [r10, #8]
	subls r0, r0, r4
	cmpls r2, r0
	bhi _0211E5A8
	str r7, [sp, #0x1a4]
	ldr r6, [r10]
	sub r0, r2, r5
	str r0, [sp, #8]
	str r6, [sp, #0x1a8]
	ldr r1, [sp, #8]
	ldr r0, [r10, #4]
	cmp r5, r1
	add r1, r6, r0, lsl #2
	str r1, [sp, #4]
	str r1, [sp, #0x1ac]
	ldr r1, [r10, #0xc]
	add r11, r6, r1, lsl #2
	str r11, [sp, #0x1b0]
	bhs _0211E3EC
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov80_0211f09c
	ldr r0, [r10, #8]
	ldr r3, [sp, #0x1a4]
	ldr r2, [r10]
	add r1, r0, r4
	sub r2, r3, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	stmib r10, {r0, r1}
	cmp r5, #0
	beq _0211E51C
	ldr r2, [sp, #0x1b0]
	ldr r10, [sp, #0x1a4]
	ldr r4, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	str r2, [sp, #0x134]
	ldr r2, [sp, #4]
	add r0, sp, #0x48
	mov r1, r5
	str r10, [sp, #0x128]
	str r4, [sp, #0x12c]
	str r3, [sp, #0x130]
	str r7, [sp, #0x48]
	str r6, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r11, [sp, #0x54]
	bl FUN_ov80_0211f09c
	ldr r2, [r0]
	add r1, sp, #0x148
	str r2, [sp, #0x138]
	ldr r3, [r0, #4]
	add r2, sp, #0x138
	str r3, [sp, #0x13c]
	ldr r4, [r0, #8]
	add r3, sp, #0x128
	str r4, [sp, #0x140]
	ldr r4, [r0, #0xc]
	add r0, sp, #0x158
	str r4, [sp, #0x144]
	ldr r4, [sp, #4]
	str r7, [sp, #0x148]
	str r6, [sp, #0x14c]
	str r4, [sp, #0x150]
	str r11, [sp, #0x154]
	bl FUN_ov80_0211eab8
	ldr r3, [sp, #0x158]
	ldr r2, [sp, #0x15c]
	ldr r1, [sp, #0x160]
	ldr r0, [sp, #0x164]
	str r3, [sp, #0x1a4]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
	b _0211E51C
_0211E3EC:
	add r2, r2, r4
	cmp r1, #0
	str r2, [r10, #8]
	moveq r1, #0
	beq _0211E408
	add r0, r0, r2
	bl FUN_0201fbc8
_0211E408:
	ldr r5, [r10]
	ldr r2, [r10, #4]
	ldr r0, [r10, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	ldr r0, [sp, #8]
	add r1, r5, r1, lsl #2
	str r1, [sp, #0x1a4]
	str r5, [sp, #0x1a8]
	str r3, [sp, #0x1ac]
	str r2, [sp, #0x1b0]
	cmp r0, #0
	beq _0211E510
	add r0, sp, #0x28
	str r1, [sp, #0xe8]
	str r1, [sp, #0x28]
	str r5, [sp, #0xec]
	str r3, [sp, #0xf0]
	str r2, [sp, #0xf4]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	rsb r1, r4, #0
	bl FUN_ov80_0211f09c
	ldr r2, [r0]
	ldr r1, [sp, #8]
	str r2, [sp, #0xf8]
	ldr r2, [r0, #4]
	add r1, r4, r1
	str r2, [sp, #0xfc]
	ldr r2, [r0, #8]
	ldr r6, [sp, #0x1a4]
	str r2, [sp, #0x100]
	ldr r7, [r0, #0xc]
	ldr r5, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	ldr r2, [sp, #0x1b0]
	add r0, sp, #0x38
	str r7, [sp, #0x104]
	str r6, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	rsb r1, r1, #0
	bl FUN_ov80_0211f09c
	ldr r2, [r0]
	add r1, sp, #0x108
	str r2, [sp, #0x108]
	ldr r3, [r0, #4]
	add r2, sp, #0xf8
	str r3, [sp, #0x10c]
	ldr r5, [r0, #8]
	add r3, sp, #0xe8
	str r5, [sp, #0x110]
	ldr r5, [r0, #0xc]
	add r0, sp, #0x118
	str r5, [sp, #0x114]
	bl FUN_ov80_0211e930
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	ldr r1, [sp, #0x120]
	str r0, [sp, #0x1a4]
	ldr r0, [sp, #0x124]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
_0211E510:
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov80_0211f09c
_0211E51C:
	ldrb r0, [r8, #0x10]
	ldr r10, [sp, #0x1a4]
	ldr r7, [sp, #0x1a8]
	ldr r6, [sp, #0x1ac]
	ldr r5, [sp, #0x1b0]
	ldr r4, [r8]
	ldr r3, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0xc]
	strb r0, [sp, #0xc0]
	str r10, [sp, #0xa0]
	str r7, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r5, [sp, #0xac]
	str r4, [sp, #0xb0]
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r1, [sp, #0xbc]
	ldr r1, [r9]
	add r0, sp, #0xd8
	str r1, [sp, #0xc4]
	ldr r2, [r9, #4]
	add r1, sp, #0xc4
	str r2, [sp, #0xc8]
	ldr r3, [r9, #8]
	add r2, sp, #0xb0
	str r3, [sp, #0xcc]
	ldr r4, [r9, #0xc]
	add r3, sp, #0xa0
	str r4, [sp, #0xd0]
	ldrb r4, [r9, #0x10]
	strb r4, [sp, #0xd4]
	bl FUN_ov80_0211e764
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E5A8:
	add r2, r10, #0xc
	mov r0, r10
	mov r1, r4
	str r6, [sp, #0x190]
	str r6, [sp, #0x194]
	str r6, [sp, #0x198]
	str r6, [sp, #0x19c]
	str r2, [sp, #0x1a0]
	bl FUN_ov80_0211e0a8
	mov r1, r0
	and r2, r6, #0xff
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0]
	add r0, sp, #0x190
	bl FUN_ov80_0211ede4
	ldr r0, [sp, #0x190]
	str r5, [sp, #0x194]
	cmp r4, #0
	add r0, r0, r5, lsl #2
	beq _0211E660
_0211E5FC:
	ldr r5, [r9]
	ldr r1, [r9, #0xc]
	ldr r3, [r9, #4]
	ldr r2, [r9, #8]
	str r1, [sp, #0x24]
	ldr r1, [r5]
	cmp r0, #0
	strne r1, [r0]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x20]
	add r1, r1, #1
	str r1, [sp, #0x198]
	ldr r2, [r9]
	ldr r1, [r9, #0xc]
	add r2, r2, #4
	cmp r2, r1
	ldreq r1, [r9, #4]
	str r2, [r9]
	sub r4, r4, #1
	streq r1, [r9]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, r0, #4
	cmp r4, #0
	bne _0211E5FC
_0211E660:
	ldr r1, [r10, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _0211E680
	ldr r2, [r10, #4]
	ldr r0, [r10, #8]
	add r0, r2, r0
	bl FUN_0201fbc8
_0211E680:
	ldr r2, [r10]
	add r4, sp, #0x190
	add r0, r2, r1, lsl #2
	str r2, [sp, #0x94]
	str r0, [sp, #0x90]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x98]
	ldr r0, [r10, #0xc]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x9c]
	and r0, r6, #0xff
	strb r0, [r1]
	ldr r3, [r1]
	ldr r1, [sp]
	add r2, sp, #0x90
	mov r0, r4
	bl FUN_ov80_0211ef68
	ldr r3, [r10]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r3, r0, lsl #2
	str r0, [sp, #0x80]
	str r0, [sp, #0x88]
	str r3, [sp, #0x84]
	ldr r2, [r10, #0xc]
	and r0, r6, #0xff
	add r2, r3, r2, lsl #2
	str r2, [sp, #0x8c]
	strb r0, [r1]
	ldr r3, [r1]
	ldr r2, [sp]
	add r1, sp, #0x80
	mov r0, r4
	bl FUN_ov80_0211ee60
	str r6, [r10, #8]
	ldr r1, [r10]
	ldr r0, [sp, #0x190]
	add r3, sp, #0x19c
	str r0, [r10]
	str r1, [sp, #0x190]
	ldr r2, [r10, #4]
	ldr r1, [sp, #0x194]
	mov r0, r4
	str r1, [r10, #4]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x194]
	str r1, [r10, #8]
	str r6, [sp, #0x198]
	ldr r2, [r10, #0xc]
	ldr r1, [r3]
	str r1, [r10, #0xc]
	str r2, [r3]
	bl FUN_ov80_0211edb0
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov80_0211e1cc

	arm_func_start FUN_ov80_0211e764
FUN_ov80_0211e764: ; 0x0211E764
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r6, r1
	ldr r7, [r6]
	ldr r4, [r2]
	mov r11, r0
	mov r5, r3
	cmp r7, r4
	beq _0211E908
	mov r0, r2
	bl FUN_ov80_0211f0e0
	str r0, [sp, #0xc]
_0211E794:
	ldr r2, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	addle r0, sp, #0xc
	str r2, [sp, #8]
	addgt r0, sp, #8
	ldr r4, [r0]
	ldr r1, [r6]
	add r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r2, [r6, #4]
	mov r1, r4
	str r2, [sp, #0x24]
	ldr r2, [r6, #8]
	str r2, [sp, #0x28]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x2c]
	ldrb r2, [r6, #0x10]
	strb r2, [sp, #0x30]
	bl FUN_ov80_0211f09c
	ldrb r12, [sp, #0x30]
	ldr r9, [sp, #0x20]
	ldr r8, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr lr, [sp, #0x2c]
	ldr r10, [r6]
	ldrb r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r2, [r6, #8]
	ldr r1, [r6, #0xc]
	str r3, [sp, #0x4c]
	strb r12, [sp, #0x6c]
	str r9, [sp, #0x5c]
	str r8, [sp, #0x60]
	str r7, [sp, #0x64]
	str r7, [sp, #0x3c]
	str lr, [sp, #0x68]
	str r9, [sp, #0x34]
	str r8, [sp, #0x38]
	str lr, [sp, #0x40]
	strb r12, [sp, #0x44]
	str r10, [sp, #0x48]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	strb r0, [sp, #0x58]
	cmp r10, r9
	ldr r7, [r5]
	add r3, sp, #0x48
	beq _0211E8B4
_0211E86C:
	ldr r8, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	add r8, r8, #4
	str r8, [r3]
	cmp r8, r0
	ldr r1, [r3, #8]
	ldr r12, [r10]
	streq r2, [r3]
	str r10, [sp, #0x10]
	ldr r10, [r3]
	str r12, [r7]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r7, r7, #4
	cmp r10, r9
	bne _0211E86C
_0211E8B4:
	ldr r0, [sp, #0xc]
	sub r1, r4, #1
	sub r0, r0, r4
	str r0, [sp, #0xc]
	ldr r2, [r5]
	ldr r0, [r5, #0xc]
	add r1, r2, r1, lsl #2
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [r5, #4]
	str r1, [r5]
	streq r0, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0211E908
	add r0, sp, #0x5c
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldrb r4, [sp, #0x6c]
	strb r4, [r6, #0x10]
	b _0211E794
_0211E908:
	ldr r0, [r5]
	str r0, [r11]
	ldr r0, [r5, #4]
	str r0, [r11, #4]
	ldr r0, [r5, #8]
	str r0, [r11, #8]
	ldr r0, [r5, #0xc]
	str r0, [r11, #0xc]
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov80_0211e764

	arm_func_start FUN_ov80_0211e930
FUN_ov80_0211e930: ; 0x0211E930
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r8, r2
	ldr r2, [r8]
	ldr r1, [r9]
	mov r10, r0
	mov r7, r3
	cmp r1, r2
	beq _0211EA90
	add r4, sp, #8
	mov r11, #0
	mov r5, #1
_0211E964:
	ldr r0, [r8, #4]
	mov r6, r5
	cmp r2, r0
	ldreq r0, [r8, #0xc]
	mov r12, #1
	streq r0, [r8]
	ldr r0, [r8]
	sub r0, r0, #4
	str r0, [r8]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	cmp r1, r0
	ldreq r0, [r7, #0xc]
	ldr r1, [r7, #8]
	streq r0, [r7]
	ldr r0, [r7]
	sub r0, r0, #4
	cmp r0, r1
	ldrlo r1, [r7, #4]
	str r0, [r7]
	sub r1, r0, r1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r3, [r9]
	ldr r2, [r9, #8]
	ldr r1, [r8, #8]
	cmp r3, r2
	ldr r2, [r8]
	movlo r6, r11
	cmp r2, r1
	movlo r12, #0
	cmp r6, r12
	bne _0211EA14
	sub r2, r2, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _0211EA3C
_0211EA14:
	cmp r2, r1
	ldrlo r1, [r8, #4]
	sub r2, r2, r1
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_0211EA3C:
	ldr r6, [r0]
	ldr r1, [r8]
	add r0, r6, #1
	sub r1, r1, r6, lsl #2
	mov r2, r0, lsl #2
	str r1, [r8]
	ldr r3, [r7]
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	add r3, r3, #4
	mov r2, r0, asr #2
	sub r0, r3, r2, lsl #2
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r0, [r7]
	sub r0, r0, r6, lsl #2
	str r0, [r7]
	ldr r2, [r8]
	ldr r0, [r9]
	cmp r0, r2
	bne _0211E964
_0211EA90:
	ldr r0, [r7]
	str r0, [r10]
	ldr r0, [r7, #4]
	str r0, [r10, #4]
	ldr r0, [r7, #8]
	str r0, [r10, #8]
	ldr r0, [r7, #0xc]
	str r0, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov80_0211e930

	arm_func_start FUN_ov80_0211eab8
FUN_ov80_0211eab8: ; 0x0211EAB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r8, r2
	ldr r2, [r9]
	ldr r1, [r8]
	mov r10, r0
	mov r7, r3
	cmp r2, r1
	beq _0211EBF8
	add r4, sp, #8
	mov r11, #0
	mov r5, #1
_0211EAEC:
	ldr r1, [r7, #0xc]
	ldr r0, [r7]
	mov r6, r5
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r2, [r9]
	ldr r1, [r9, #8]
	ldr r3, [r8]
	cmp r2, r1
	ldr r1, [r8, #8]
	movlo r6, r11
	cmp r3, r1
	movhs r1, #1
	movlo r1, #0
	cmp r6, r1
	bne _0211EB5C
	sub r2, r3, r2
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _0211EB80
_0211EB5C:
	ldr r1, [r9, #0xc]
	sub r2, r1, r2
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_0211EB80:
	ldr r6, [r0]
	mov r1, r6, lsl #2
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	ldr r1, [r9]
	ldr r0, [r7]
	bl FUN_020218f4
	ldr r1, [r9]
	sub r0, r6, #1
	add r1, r1, r0, lsl #2
	add r2, r1, #4
	ldr r1, [r9, #0xc]
	str r2, [r9]
	cmp r2, r1
	ldreq r1, [r9, #4]
	streq r1, [r9]
	ldr r2, [r7]
	ldr r1, [r7, #0xc]
	add r0, r2, r0, lsl #2
	add r0, r0, #4
	str r0, [r7]
	cmp r0, r1
	ldreq r0, [r7, #4]
	streq r0, [r7]
	ldr r1, [r9]
	ldr r0, [r8]
	cmp r1, r0
	bne _0211EAEC
_0211EBF8:
	ldr r0, [r7]
	str r0, [r10]
	ldr r0, [r7, #4]
	str r0, [r10, #4]
	ldr r0, [r7, #8]
	str r0, [r10, #8]
	ldr r0, [r7, #0xc]
	str r0, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov80_0211eab8

	arm_func_start FUN_ov80_0211ec20
FUN_ov80_0211ec20: ; 0x0211EC20
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _0211ECDC
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0211EC60
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r3, r1
_0211EC60:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _0211ECDC
_0211ECA0:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0211ECB4
	bl FUN_0201e078
_0211ECB4:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _0211ECA0
_0211ECDC:
	add r0, r5, #8
	bl FUN_ov80_0211f068
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov80_0211ec20

	arm_func_start FUN_ov80_0211ecf0
FUN_ov80_0211ecf0: ; 0x0211ECF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r5, r1
	ldr lr, [r5, #8]
	ldr r3, [r5, #0xc]
	ldr r1, [r5, #0x14]
	add r12, lr, r3, lsl #2
	ldr r7, [r5]
	add r3, lr, r1, lsl #2
	mov r4, r2
	add r4, r4, r7
	mov r6, r0
	add r0, sp, #0
	str r12, [sp]
	str lr, [sp, #4]
	str r12, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, r4, lsr #8
	str r12, [sp, #0x10]
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl FUN_ov80_0211f09c
	ldr r0, [r5, #0x10]
	ldr r12, [sp]
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	cmp r0, #0
	mov r5, #0
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r12, [sp, #0x20]
	mov r0, r4, lsl #0x18
	ldrne r5, [r12]
	ldr r4, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r5, r0, lsr #22
	str r4, [r6]
	str r3, [r6, #4]
	str r2, [r6, #8]
	str r1, [r6, #0xc]
	str r0, [r6, #0x10]
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov80_0211ecf0

	arm_func_start FUN_ov80_0211edb0
FUN_ov80_0211edb0: ; 0x0211EDB0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0211EDD8
	ldr r1, [r4, #8]
	sub r1, r1, r1
	str r1, [r4, #8]
	bl FUN_0201e078
_0211EDD8:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov80_0211edb0

	arm_func_start FUN_ov80_0211ede4
FUN_ov80_0211ede4: ; 0x0211EDE4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0211EE54 ; =0x02122C20
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	tst r3, #1
	orreq r1, r3, #1
	ldreq r0, _0211EE58 ; =0x0212271C
	mvneq r3, #0xc0000001
	streq r3, [r0]
	ldr r0, _0211EE58 ; =0x0212271C
	streq r1, [r2]
	ldr r0, [r0]
	cmp r4, r0
	bls _0211EE24
	bl FUN_ov80_0211e1b4
_0211EE24:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl FUN_0201e014
	movs r6, r0
	bne _0211EE44
	ldr r0, _0211EE5C ; =0x02122800
	bl FUN_02023ab4
	bl FUN_02021040
_0211EE44:
	add r0, r4, #1
	str r6, [r5]
	str r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_0211EE54: .word 0x02122C20
_0211EE58: .word 0x0212271C
_0211EE5C: .word 0x02122800
	arm_func_end FUN_ov80_0211ede4

	arm_func_start FUN_ov80_0211ee60
FUN_ov80_0211ee60: ; 0x0211EE60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r3, [r7]
	ldr r0, [r7, #4]
	ldr r2, [r5]
	ldr r1, [r6]
	add r0, r3, r0, lsl #2
	cmp r1, r2
	bhi _0211EED4
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r3, r2, asr #2
	mov r2, r3, lsl #2
	sub r0, r0, r3, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r6]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	sub r0, r1, r0, asr #2
	stmib r7, {r0, r2}
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EED4:
	ldr r1, [r5, #4]
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	sub r4, r0, r2, lsl #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r6]
	ldr r0, [r6, #0xc]
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	sub r0, r4, r0, lsl #2
	bl FUN_020218f4
	ldr r1, [r6, #0xc]
	ldr r0, [r6]
	ldr r4, [r5]
	ldr r3, [r5, #4]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	mov r0, r3, asr #1
	add r1, r2, r1, lsr #30
	add r0, r3, r0, lsr #30
	mov r2, r1, asr #2
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	ldr r0, [r7, #8]
	sub r1, r1, r2
	add r0, r0, r2
	str r1, [r7, #4]
	str r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov80_0211ee60

	arm_func_start FUN_ov80_0211ef68
FUN_ov80_0211ef68: ; 0x0211EF68
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r3, [r7, #4]
	ldr r0, [r7, #8]
	mov r6, r1
	ldr r1, [r7, #0xc]
	add r0, r3, r0
	mov r5, r2
	bl FUN_0201fbc8
	ldr r2, [r7]
	ldr r0, [r5]
	add r4, r2, r1, lsl #2
	ldr r1, [r6]
	cmp r1, r0
	bhi _0211EFE4
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r6]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r0, r2, r0, asr #2
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EFE4:
	ldr r2, [r6, #0xc]
	mov r0, r4
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r8, r2, asr #2
	mov r2, r8, lsl #2
	bl FUN_020218f4
	ldr r1, [r5, #4]
	ldr r2, [r5]
	add r0, r4, r8, lsl #2
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr r4, [r6, #0xc]
	ldr r3, [r6]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r1, r1, asr #2
	ldr r2, [r7, #8]
	add r0, r1, r0, asr #2
	add r0, r2, r0
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov80_0211ef68

	arm_func_start FUN_ov80_0211f068
FUN_ov80_0211f068: ; 0x0211F068
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0211F090
	ldr r1, [r4, #8]
	sub r1, r1, r1
	str r1, [r4, #8]
	bl FUN_0201e078
_0211F090:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov80_0211f068

	arm_func_start FUN_ov80_0211f09c
FUN_ov80_0211f09c: ; 0x0211F09C
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub r12, r2, r4
	sub lr, r3, r4
	mov r3, r12, asr #1
	mov r2, lr, asr #1
	add r3, r12, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _0211F0D4
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_0211F0D4:
	add r1, r4, r1, lsl #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov80_0211f09c

	arm_func_start FUN_ov80_0211f0e0
FUN_ov80_0211f0e0: ; 0x0211F0E0
	stmfd sp!, {r3, lr}
	ldr r12, [r1]
	ldr r3, [r0]
	ldr lr, [r0, #8]
	sub r2, r3, r12
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _0211F12C
	cmp r12, lr
	bhs _0211F14C
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _0211F14C
_0211F12C:
	cmp r12, lr
	blo _0211F14C
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_0211F14C:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_0211f0e0

	arm_func_start FUN_ov80_0211f154
FUN_ov80_0211f154: ; 0x0211F154
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	ldr r1, [sp, #0x4c]
	mov r4, r0
	ldmia r1, {r0, r1, r2, r3}
	add r12, sp, #0x14
	stmia r12, {r0, r1, r2, r3}
	add r6, sp, #0x3c
	add r5, sp, #4
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r12
	mov r1, r5
	bl FUN_ov80_0211f4f0
	movs r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r5, #0
	sub r0, sp, #4
	strb r5, [r0]
	ldr r2, [r0]
	mov r0, r4
	bl FUN_ov80_0211f430
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	ldr r2, [sp, #0x4c]
	mov r0, r4
	mov r1, r6
	bl FUN_ov80_0211f1e8
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov80_0211f154

	arm_func_start FUN_ov80_0211f1e8
FUN_ov80_0211f1e8: ; 0x0211F1E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x5c
	mov r7, r0
	ldr r4, [r7]
	mov r6, r1
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r7, #4]
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	add r0, r2, r0
	bl FUN_0201fbc8
	add r4, r4, r1, lsl #2
	mov r0, r5
	mov r1, r6
	bl FUN_ov80_0211f4f0
	str r0, [sp, #0x18]
	ldr r2, [r7]
	ldr r1, [r7, #0xc]
	ldr r12, [r6]
	add r1, r2, r1, lsl #2
	sub r2, r1, r4
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	addlt r1, sp, #0x18
	str r2, [sp, #0x14]
	addge r1, sp, #0x14
	ldr r1, [r1]
	ldr r3, [r6, #8]
	str r1, [sp, #0x14]
	ldr r1, [r7, #8]
	ldr r2, [r6, #0xc]
	add r0, r1, r0
	str r0, [r7, #8]
	ldr r8, [r6, #4]
	ldr r1, [sp, #0x14]
	add r0, sp, #0x2c
	str r12, [sp, #0x2c]
	str r3, [sp, #0x34]
	str r2, [sp, #0x38]
	str r8, [sp, #0x30]
	bl FUN_ov80_0211f4ac
	ldr r8, [r0]
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r8, [sp, #0x4c]
	add r0, sp, #0x4c
	mov r8, sp
	str r3, [sp, #0x50]
	str r2, [sp, #0x54]
	str r1, [sp, #0x58]
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	ldmia r6, {r0, r1, r2, r3}
	bl FUN_ov80_0211f360
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, [r6]
	ldr r4, [r6, #4]
	ldr r3, [r6, #8]
	ldr r2, [r6, #0xc]
	add r0, sp, #0x1c
	str r8, [sp, #0x1c]
	str r4, [sp, #0x20]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	bl FUN_ov80_0211f4ac
	ldmia r0, {r8, lr}
	ldr r12, [r0, #8]
	ldr r6, [r0, #0xc]
	mov r4, sp
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r4, [r7]
	str r8, [sp, #0x3c]
	add r0, sp, #0x3c
	str lr, [sp, #0x40]
	str r12, [sp, #0x44]
	str r6, [sp, #0x48]
	ldmia r0, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	bl FUN_ov80_0211f360
	add sp, sp, #0x5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov80_0211f1e8

	arm_func_start FUN_ov80_0211f360
FUN_ov80_0211f360: ; 0x0211F360
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r0, [sp, #0x28]
	ldr r7, [sp, #0x38]
	ldr r10, [sp, #0x48]
	cmp r0, r7
	ldr r8, [sp, #0x40]
	beq _0211F420
	ldr r6, [sp, #0x38]
	mov r11, #1
	add r4, sp, #0x28
_0211F38C:
	ldr r1, [sp, #0x30]
	mov r2, #1
	cmp r0, r1
	movhs r1, r11
	movlo r1, #0
	cmp r7, r8
	movlo r2, #0
	cmp r1, r2
	ldrne r1, [sp, #0x34]
	subeq r2, r6, r0
	subne r2, r1, r0
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r9, r1, asr #2
	ldr r1, [sp, #0x28]
	add r0, r0, r9, lsl #2
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r5, r0, asr #2
	mov r2, r5, lsl #2
	mov r0, r10
	bl FUN_020218f4
	ldr r1, [r4]
	sub r0, r9, #1
	add r2, r1, r0, lsl #2
	ldr r0, [sp, #0x34]
	add r1, r2, #4
	str r2, [r4]
	cmp r1, r0
	ldreq r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	streq r0, [sp, #0x28]
	ldr r0, [sp, #0x28]
	add r10, r10, r5, lsl #2
	cmp r0, r7
	bne _0211F38C
_0211F420:
	mov r0, r10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov80_0211f360

	arm_func_start FUN_ov80_0211f430
FUN_ov80_0211f430: ; 0x0211F430
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0211F4A0 ; =0x02122C28
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	tst r3, #1
	orreq r1, r3, #1
	ldreq r0, _0211F4A4 ; =0x021226FC
	mvneq r3, #0xc0000001
	streq r3, [r0]
	ldr r0, _0211F4A4 ; =0x021226FC
	streq r1, [r2]
	ldr r0, [r0]
	cmp r4, r0
	bls _0211F470
	bl FUN_ov80_0211e1b4
_0211F470:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl FUN_0201e014
	movs r6, r0
	bne _0211F490
	ldr r0, _0211F4A8 ; =0x02122800
	bl FUN_02023ab4
	bl FUN_02021040
_0211F490:
	add r0, r4, #1
	str r6, [r5]
	str r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_0211F4A0: .word 0x02122C28
_0211F4A4: .word 0x021226FC
_0211F4A8: .word 0x02122800
	arm_func_end FUN_ov80_0211f430

	arm_func_start FUN_ov80_0211f4ac
FUN_ov80_0211f4ac: ; 0x0211F4AC
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub r12, r2, r4
	sub lr, r3, r4
	mov r3, r12, asr #1
	mov r2, lr, asr #1
	add r3, r12, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _0211F4E4
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_0211F4E4:
	add r1, r4, r1, lsl #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov80_0211f4ac

	arm_func_start FUN_ov80_0211f4f0
FUN_ov80_0211f4f0: ; 0x0211F4F0
	stmfd sp!, {r3, lr}
	ldr r12, [r1]
	ldr r3, [r0]
	ldr lr, [r0, #8]
	sub r2, r3, r12
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _0211F53C
	cmp r12, lr
	bhs _0211F55C
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _0211F55C
_0211F53C:
	cmp r12, lr
	blo _0211F55C
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_0211F55C:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov80_0211f4f0

	arm_func_start FUN_ov80_0211f564
FUN_ov80_0211f564: ; 0x0211F564
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r9, _0211F638 ; =0x020A6C40
	mov r8, #0x800
	mov r4, #0
	mov r5, r0
	mov r0, r4
	mov r1, r9
	mov r2, r8
	bl FUN_0200787c
	ldr r7, _0211F63C ; =0x020A7440
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl FUN_0200787c
	mov r0, r4
	ldr r6, _0211F640 ; =0x020A7C40
	mov r2, r8
	mov r1, r6
	bl FUN_0200787c
	mov r0, r9
	mov r1, r8
	bl FUN_020026d0
	mov r0, r7
	mov r1, r8
	bl FUN_020026d0
	mov r0, r6
	mov r1, r8
	bl FUN_020026d0
	ldr r0, _0211F644 ; =0x02122B5C
	add r1, r5, #0x36c
	add r1, r1, #0x400
	bl  FUN_ov16_020f316c
	ldr r0, _0211F648 ; =0x02122B78
	add r1, r5, #0x378
	add r1, r1, #0x400
	bl  FUN_ov16_020f316c
	ldr r0, _0211F64C ; =0x0209BA20
	bl FUN_020729fc
	str r4, [sp]
	mov r4, r0
	ldr r0, _0211F650 ; =0x02122B90
	add r1, r5, #0x384
	add r1, r1, #0x400
	mov r3, #0x18
	mul r2, r4, r3
	bl  FUN_ov16_020f31fc
	ldr r0, _0211F654 ; =0x02122BAC
	add r1, r5, #0x790
	bl  FUN_ov16_020f316c
	mov r0, r5
	mov r1, #1
	bl FUN_ov80_0211f9c0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F638: .word 0x020A6C40
_0211F63C: .word 0x020A7440
_0211F640: .word 0x020A7C40
_0211F644: .word 0x02122B5C
_0211F648: .word 0x02122B78
_0211F64C: .word 0x0209BA20
_0211F650: .word 0x02122B90
_0211F654: .word 0x02122BAC
	arm_func_end FUN_ov80_0211f564

	arm_func_start FUN_ov80_0211f658
FUN_ov80_0211f658: ; 0x0211F658
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	ldr r5, _0211F718 ; =0x02122AB4
	mov r10, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0x2c
	mov r8, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5]
	mov r9, #0
	str r0, [r4]
	mov r6, r9
	mov r5, #1
	add r7, sp, #0x1c
	ldr r11, _0211F71C ; =0x02122BC8
	ldr r4, _0211F720 ; =0x02099F38
	b _0211F708
_0211F6A4:
	ldr r2, [r8, r9, lsl #2]
	mov r0, r7
	mov r1, r11
	bl FUN_02023c40
	ldr r1, [r10, #0x76c]
	mov r0, r7
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f3d08
	cmp r0, #0
	beq _0211F704
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _0211F724 ; =0x02122BD0
	mov r3, r5
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x90c]
_0211F704:
	add r9, r9, #1
_0211F708:
	cmp r9, #9
	blt _0211F6A4
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F718: .word 0x02122AB4
_0211F71C: .word 0x02122BC8
_0211F720: .word 0x02099F38
_0211F724: .word 0x02122BD0
	arm_func_end FUN_ov80_0211f658

	arm_func_start FUN_ov80_0211f728
FUN_ov80_0211f728: ; 0x0211F728
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, r1, lsl #0x10
	add r3, r0, #0x134
	ldr r0, [r0, #0x778]
	ldr r1, _0211F76C ; =0x02122BEC
	mov r2, r2, lsr #0x10
	add r3, r3, #0x800
	bl  FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211F76C: .word 0x02122BEC
	arm_func_end FUN_ov80_0211f728

	arm_func_start FUN_ov80_0211f770
FUN_ov80_0211f770: ; 0x0211F770
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211F784
	cmp r4, #4
	blt _0211F7DC
_0211F784:
	mov r4, #0
	add r0, r0, #0x36c
	add r9, r0, #0x400
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211F79C:
	mul r8, r4, r5
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl  FUN_ov16_020f338c
	mov r0, r10
	bl  FUN_ov16_020f33fc
	str r6, [r9, r8]
	str r6, [r10, #4]
	strb r6, [r10, #8]
	strb r6, [r10, #9]
	add r4, r4, #1
	strb r6, [r10, #0xa]
	cmp r4, #4
	blt _0211F79C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F7DC:
	mov r1, #0xc
	mul r5, r4, r1
	add r0, r0, #0x36c
	add r4, r0, #0x400
	add r6, r4, r5
	mov r0, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	mov r0, r6
	bl  FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r4, r5]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov80_0211f770

	arm_func_start FUN_ov80_0211f820
FUN_ov80_0211f820: ; 0x0211F820
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mvn r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_ov80_0211f770
	add r0, r5, #0x134
	mov r1, r4
	add r0, r0, #0x800
	bl  FUN_ov16_020f57b0
	add r1, r5, #8
	mov r0, r5
	add r1, r1, #0x800
	bl FUN_ov80_0211fca4
	mov r4, #0
	ldr r6, _0211F8EC ; =0x02099F38
	b _0211F87C
_0211F860:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x908]
	cmp r1, #0
	beq _0211F878
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211F878:
	add r4, r4, #1
_0211F87C:
	cmp r4, #1
	blt _0211F860
	mov r4, #0
	mov r7, r4
	ldr r6, _0211F8EC ; =0x02099F38
	b _0211F8B8
_0211F894:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x90c]
	cmp r1, #0
	beq _0211F8B4
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x90c]
_0211F8B4:
	add r4, r4, #1
_0211F8B8:
	cmp r4, #9
	blt _0211F894
	add r0, r5, #0x39c
	mov r4, #0
	add r6, r0, #0x400
	mov r5, #0xc
	b _0211F8E0
_0211F8D4:
	mla r0, r4, r5, r6
	bl  FUN_ov16_020f33fc
	add r4, r4, #1
_0211F8E0:
	cmp r4, #9
	blt _0211F8D4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F8EC: .word 0x02099F38
	arm_func_end FUN_ov80_0211f820

	arm_func_start FUN_ov80_0211f8f0
FUN_ov80_0211f8f0: ; 0x0211F8F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x36c
	add r0, r0, #0x400
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211F958 ; =0x02099F38
	b _0211F948
_0211F920:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x90c]
	cmp r1, #0
	beq _0211F944
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211F944:
	add r5, r5, #1
_0211F948:
	cmp r5, #9
	blt _0211F920
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211F958: .word 0x02099F38
	arm_func_end FUN_ov80_0211f8f0

	arm_func_start FUN_ov80_0211f95c
FUN_ov80_0211f95c: ; 0x0211F95C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211F9BC ; =0x02099F38
	b _0211F9B0
_0211F974:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x90c]
	cmp r1, #0
	beq _0211F9AC
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211F9AC
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x90c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211F9AC:
	add r6, r6, #1
_0211F9B0:
	cmp r6, #9
	blt _0211F974
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F9BC: .word 0x02099F38
	arm_func_end FUN_ov80_0211f95c

	arm_func_start FUN_ov80_0211f9c0
FUN_ov80_0211f9c0: ; 0x0211F9C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, #1
	cmp r0, r1
	mov r4, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r1, #7
	addne sp, sp, #4
	str r1, [r6, #8]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r0, _0211FC18 ; =0x02099E99
	ldrb r0, [r0]
	cmp r0, #0
	beq _0211FA30
	ldr r1, _0211FC1C ; =0x02099EA0
	mov r0, r6
	ldrh r1, [r1]
	bl FUN_ov80_02121840
	ldr r0, [r6, #4]
	mov r1, r4
	bl FUN_02041f2c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211FA30:
	ldr r0, _0211FC20 ; =0x020A0640
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	beq _0211FB58
	ldr r1, [r6, #0x60]
	mov r0, r6
	bl FUN_ov80_02121840
	mov r8, r4
	ldr r7, _0211FC24 ; =0x0209BA20
	b _0211FA78
_0211FA58:
	add r0, r6, r8, lsl #1
	ldrh r1, [r0, #0x6e]
	cmp r1, #0
	beq _0211FA80
	mov r0, r7
	mov r2, r5
	bl  FUN_ov16_020ede60 ; may be ov17
	add r8, r8, #1
_0211FA78:
	cmp r8, #3
	blt _0211FA58
_0211FA80:
	ldr r5, _0211FC20 ; =0x020A0640
	ldr r7, _0211FC28 ; =0x020A0B00
	ldr r2, [r6, #0x4c]
	ldr r1, [r5, #0x4d4]
	mov r0, r7
	add r1, r1, r2
	bl FUN_02074538
	ldr r2, [r6, #0x50]
	ldr r1, [r5, #0x4d8]
	mov r0, r7
	add r1, r1, r2
	bl FUN_020744f0
	bl  FUN_ov1_020db304
	cmp r0, #0
	beq _0211FAE0
	ldr r7, _0211FC2C ; =0x0209AC44
	mov r5, #0x1f4
	mov r0, r7
	mov r2, r5
	mov r1, #0
	bl FUN_0202d774
	mov r0, r7
	mov r1, r5
	bl FUN_0202c470
_0211FAE0:
	ldr r0, _0211FC20 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211FAFC
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211FB2C
_0211FAFC:
	ldr r5, [r6, #4]
	mov r4, #0x4b
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211FB2C:
	ldr r5, [r6, #4]
	mov r1, r4
	mov r0, r5
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211FB58:
	ldr r7, _0211FC30 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r7]
	bl  FUN_ov132_02145190
	cmp r0, #0
	bne _0211FBB8
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov132_02145190
	cmp r0, #0
	bne _0211FBB8
	ldr r8, _0211FC2C ; =0x0209AC44
	mov r7, #0x7d0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r4
	bl FUN_0202c314
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, r4
	bl FUN_0202c314
	b _0211FBEC
_0211FBB8:
	ldr r7, _0211FC2C ; =0x0209AC44
	mov r5, #0x7d0
	mov r0, r7
	mov r1, r4
	mov r3, r5
	mov r2, #9
	str r4, [sp]
	bl FUN_0202c184
	mov r0, r7
	mov r2, r5
	mov r3, r4
	mov r1, #1
	bl FUN_0202c314
_0211FBEC:
	ldr r4, [r6, #4]
	mov r1, #0
	mov r0, r4
	mov r2, #0x37
	bl FUN_02041eac
	mov r0, r4
	mov r1, #1
	mov r2, #0x38
	bl FUN_02041eac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211FC18: .word 0x02099E99
_0211FC1C: .word 0x02099EA0
_0211FC20: .word 0x020A0640
_0211FC24: .word 0x0209BA20
_0211FC28: .word 0x020A0B00
_0211FC2C: .word 0x0209AC44
_0211FC30: .word 0x02099EF0
	arm_func_end FUN_ov80_0211f9c0

	arm_func_start FUN_ov80_0211fc34
FUN_ov80_0211fc34: ; 0x0211FC34
	cmp r1, #1
	cmpne r1, #2
	bne _0211FC6C
	mov r12, #0
	mov r2, #0x30
_0211FC48:
	mla r3, r12, r2, r0
	ldr r3, [r3, #0x90]
	cmp r3, #0
	bne _0211FC64
	add r12, r12, #1
	cmp r12, #0x10
	blt _0211FC48
_0211FC64:
	cmp r12, #0x10
	moveq r1, #3
_0211FC6C:
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov80_0211fc34

	arm_func_start FUN_ov80_0211fc74
FUN_ov80_0211fc74: ; 0x0211FC74
	stmfd sp!, {r4, lr}
	ldr r1, _0211FCA0 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	mov r1, #3
	bl  FUN_ov16_0210eb3c
	add r1, r4, #8
	mov r0, r4
	add r1, r1, #0x800
	bl FUN_ov80_0211fe50
	ldmfd sp!, {r4, pc}
_0211FCA0: .word 0x02099EB4
	arm_func_end FUN_ov80_0211fc74

	arm_func_start FUN_ov80_0211fca4
FUN_ov80_0211fca4: ; 0x0211FCA4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211FD08 ; =0x02099F38
	b _0211FCD4
_0211FCB8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211FCD0
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211FCD0:
	add r5, r5, #1
_0211FCD4:
	cmp r5, #0x10
	blt _0211FCB8
	ldr r1, [r6, #0x5c]
	cmp r1, #0
	ble _0211FCF4
	ldr r0, _0211FD08 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211FCF4:
	mov r0, r6
	mov r1, #0
	mov r2, #0x100
	bl MemWrite
	ldmfd sp!, {r4, r5, r6, pc}
_0211FD08: .word 0x02099F38
	arm_func_end FUN_ov80_0211fca4

	arm_func_start FUN_ov80_0211fd0c
FUN_ov80_0211fd0c: ; 0x0211FD0C
	stmfd sp!, {r4, r5, r6, lr}
	bl FUN_0200505c
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_0200787c
	bl FUN_0200505c
	mov r1, r5
	bl FUN_020026d0
	mov r4, #0x800
	ldr r0, _0211FDB0 ; =0x020A6C40
	mov r1, r6
	mov r2, r4
	bl FUN_0200569c
	bl FUN_02004f78
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r5
	bl FUN_020026d0
	ldr r0, _0211FDB4 ; =0x020A7440
	mov r1, r6
	mov r2, r4
	bl FUN_020054dc
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_0200787c
	bl FUN_02004fcc
	mov r1, r5
	bl FUN_020026d0
	mov r1, r6
	mov r2, r4
	ldr r0, _0211FDB8 ; =0x020A7C40
	bl FUN_020055bc
	ldmfd sp!, {r4, r5, r6, pc}
_0211FDB0: .word 0x020A6C40
_0211FDB4: .word 0x020A7440
_0211FDB8: .word 0x020A7C40
	arm_func_end FUN_ov80_0211fd0c

	arm_func_start FUN_ov80_0211fdbc
FUN_ov80_0211fdbc: ; 0x0211FDBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x908]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211FE4C ; =0x02099F38
	mov r6, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r6
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r7, #0x908]
	ldr r3, [r7, #0x90c]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #0x258
	bl  FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	mov r2, #2
	bl  FUN_ov16_021142fc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211FE4C: .word 0x02099F38
	arm_func_end FUN_ov80_0211fdbc

	arm_func_start FUN_ov80_0211fe50
FUN_ov80_0211fe50: ; 0x0211FE50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_ov80_0211fca4
	ldr r3, [r5, #0x74]
	mov r2, #0x10
	mov r0, #0
	mov r1, #0x28
	str r3, [r4, #4]
	str r2, [r4, #8]
	str r0, [r4, #0xe8]
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	cmp r2, #0
	ble _0211FEE0
	mov r6, #0x18
	mov r7, #0x80
	mov r3, r6
_0211FE9C:
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #29
	add r1, r2, r1, ror #29
	mul r2, r1, r3
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r12, r1, asr #3
	add r1, r4, r0, lsl #3
	mov r12, r12, lsl #7
	strh r12, [r1, #0x68]
	strh r2, [r1, #0x6a]
	strh r7, [r1, #0x6c]
	strh r6, [r1, #0x6e]
	ldr r1, [r4, #8]
	add r0, r0, #1
	cmp r0, r1
	blt _0211FE9C
_0211FEE0:
	mov r0, r5
	mov r1, r4
	mov r2, #4
	mov r3, #5
	bl FUN_ov80_021203bc
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #8]
	cmp r1, #0
	ble _0211FF48
	add r6, sp, #0
	mov r7, r0
_0211FF10:
	mov r8, r7
	cmp r1, #0
	ble _0211FF3C
_0211FF1C:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov80_0211ff70
	ldr r1, [r4, #8]
	add r8, r8, #1
	cmp r8, r1
	blt _0211FF1C
_0211FF3C:
	add r0, r8, #1
	cmp r0, r1
	blt _0211FF10
_0211FF48:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0xc]
	bl  FUN_ov16_020f52f4
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov80_02120cec
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov80_0211fe50

	arm_func_start FUN_ov80_0211ff70
FUN_ov80_0211ff70: ; 0x0211FF70
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0x10
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211FFD4 ; =0x02099F38
	mov r1, #0xc
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x1c]
	ldrb r0, [r5, #0x63]
	cmp r0, #0
	ldreq r0, [r4]
	streqb r0, [r5, #0x62]
	ldrb r0, [r5, #0x63]
	add r0, r0, #1
	strb r0, [r5, #0x63]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FFD4: .word 0x02099F38
	arm_func_end FUN_ov80_0211ff70

	arm_func_start FUN_ov80_0211ffd8
FUN_ov80_0211ffd8: ; 0x0211FFD8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r1
	ldr r1, [sp, #0x20]
	mov r7, r2
	mov r6, r3
	mov r5, #0
	mov r10, #2
	add r4, r0, r1, lsl #2
	ldr r9, _0212003C ; =0x02099F38
	b _02120030
_02120000:
	ldr r3, [r4, #0x90c]
	ldr r0, [r9]
	mov r1, r8
	add r2, r7, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, [r9]
	mov r1, r8
	mov r3, r10
	add r2, r7, r5
	bl  FUN_ov16_02113f7c
	add r5, r5, #1
_02120030:
	cmp r5, r6
	blt _02120000
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212003C: .word 0x02099F38
	arm_func_end FUN_ov80_0211ffd8

	arm_func_start FUN_ov80_02120040
FUN_ov80_02120040: ; 0x02120040
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	add r0, r0, r3, lsl #2
	ldr r3, [r0, #0x90c]
	ldr r6, _021200CC ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	mov r4, r2
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r3, [sp, #0x20]
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021200CC: .word 0x02099F38
	arm_func_end FUN_ov80_02120040

	arm_func_start FUN_ov80_021200d0
FUN_ov80_021200d0: ; 0x021200D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	ldrb r1, [r9, #0x63]
	mov r10, r0
	mov r8, r2
	cmp r1, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, r8
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x62]
	ldr r0, [r9, #0xf0]
	ldr r5, _021203B4 ; =0x02099F38
	add r1, r1, r8
	add r1, r9, r1, lsl #2
	sub r0, r0, #4
	mov r2, r0, lsl #0x10
	ldr r7, [r1, #0x1c]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r2, lsr #0x10
	mvn r3, #0
	bl  FUN_ov16_02112c90
	add r0, r9, r8, lsl #3
	ldrsh r2, [r0, #0x68]
	ldrsh r3, [r0, #0x6a]
	ldr r0, [r5]
	mov r1, r7
	bl  FUN_ov16_02114248
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	mov r2, #1
	str r6, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r3, r2
	bl FUN_ov80_02120040
	ldr r3, [r9, #0x5c]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r4, _021203B8 ; =0x0212252C
	mov r1, r7
	ldrsh r0, [r4, #6]
	mov r2, #2
	mov r3, r6
	mul r11, r0, r8
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	bl  FUN_ov16_02113d88
	ldrsh r0, [r4, #6]
	mov r1, r7
	mov r2, #2
	str r0, [sp]
	ldrsh r3, [r4, #4]
	ldr r0, [r5]
	bl  FUN_ov16_02113d08
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	mov r3, #0x1a
	bl  FUN_ov16_02113b78
	mov r2, #2
	ldr r0, [r5]
	mov r1, r7
	mov r3, r2
	bl  FUN_ov16_02113f7c
	mov r0, #0x1a
	sub r0, r0, #0x1e
	mov r2, #3
	str r0, [sp]
	mov r3, r2
	ldr r0, [r5]
	mov r1, r7
	sub r3, r3, #6
	bl  FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r7
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113f7c
	mov r0, #0x1a
	str r0, [sp]
	mov r11, #0xd
	mov r2, #4
	str r11, [sp, #4]
	mov r0, r10
	mov r1, r7
	mov r3, r2
	str r6, [sp, #8]
	bl FUN_ov80_02120040
	mov r0, #0x1a
	stmia sp, {r0, r11}
	mov r0, r10
	mov r1, r7
	mov r2, #5
	mov r3, #2
	str r6, [sp, #8]
	bl FUN_ov80_02120040
	mov r0, #0x41
	stmia sp, {r0, r11}
	mov r3, #5
	mov r0, r10
	mov r1, r7
	mov r2, #6
	str r6, [sp, #8]
	bl FUN_ov80_02120040
	mov r0, #0x41
	stmia sp, {r0, r11}
	mov r3, #6
	mov r0, r10
	mov r1, r7
	mov r2, #7
	str r6, [sp, #8]
	bl FUN_ov80_02120040
	mov r0, #0x40
	stmia sp, {r0, r6}
	mov r3, #7
	mov r0, r10
	mov r1, r7
	mov r2, #8
	str r6, [sp, #8]
	bl FUN_ov80_02120040
	mov r0, #0x10
	stmia sp, {r0, r11}
	mov r3, #8
	str r6, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r2, #9
	bl FUN_ov80_02120040
	ldr r1, [r9, #0x5c]
	mov r6, #0xa
	and r3, r1, #0xff
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_021137dc
	ldrsh r0, [r4, #6]
	mov r1, r7
	mov r2, r6
	mul r3, r0, r8
	mov r0, r3, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r3, [r4, #4]
	ldr r0, [r5]
	bl  FUN_ov16_02113d88
	ldrsh r0, [r4, #2]
	mov r1, r7
	mov r2, r6
	str r0, [sp]
	ldrsh r3, [r4]
	ldr r0, [r5]
	bl  FUN_ov16_02113d08
	mov r0, #0xf
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, #0x30
	bl  FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113f7c
	mov r4, #3
	mov r0, r10
	mov r1, r7
	mov r3, #2
	mov r2, #0xb
	str r4, [sp]
	bl FUN_ov80_0211ffd8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021203B4: .word 0x02099F38
_021203B8: .word 0x0212252C
	arm_func_end FUN_ov80_021200d0

	arm_func_start FUN_ov80_021203bc
FUN_ov80_021203bc: ; 0x021203BC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r6, r1
	str r5, [sp, #0x10]
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0212044C ; =0x02099F38
	mov r1, r2
	ldr r0, [r4]
	mov r2, r3
	bl FUN_02059630
	mov r1, r0
	str r1, [r6, #0x5c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	str r5, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl FUN_0205935c
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0212044C: .word 0x02099F38
	arm_func_end FUN_ov80_021203bc

	arm_func_start FUN_ov80_02120450
FUN_ov80_02120450: ; 0x02120450
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r6, #0
	mov r10, r1
	mov r9, r2
	mov r8, r3
	mov r7, #1
	ldr r4, [sp, #0x30]
	ldrb r5, [sp, #0x3c]
	mov r11, r6
	b _021204CC
_0212047C:
	mov r0, r11
	cmp r5, #0
	beq _021204A0
	mov r1, #1
	cmp r6, #0
	cmpne r4, r7
	movlt r1, r11
	cmp r1, #0
	movne r0, #1
_021204A0:
	str r0, [sp]
	ldr r0, _021205A4 ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	add r2, r9, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0xa
	mul r0, r7, r0
	mov r7, r0
	add r6, r6, #1
_021204CC:
	cmp r6, r8
	blt _0212047C
	ldrb r0, [sp, #0x3c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r0, [sp, #0x34]
	mov r6, #0
	mov r7, #1
	ldr r5, [sp, #0x30]
	ldrsh r4, [sp, #0x38]
	str r0, [sp, #4]
	b _02120594
_02120500:
	cmp r6, #0
	cmpne r5, r7
	blt _02120584
	mov r0, r5
	mov r1, r7
	bl FUN_0201f9bc
	mov r12, r0
	ldr r3, _021205A8 ; =0x66666667
	mov r1, #0
	smull lr, r11, r3, r12
	mov r3, r12, lsr #0x1f
	add r11, r3, r11, asr #2
	mov r3, #0xa
	smull r11, lr, r3, r11
	str r1, [sp]
	ldr r0, _021205A4 ; =0x02099F38
	sub r11, r12, r11
	mov r3, r11, lsl #0x10
	ldr r0, [r0]
	mov r1, r10
	add r2, r9, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_0211401c
	ldr r3, [sp, #4]
	ldr r0, _021205A4 ; =0x02099F38
	str r4, [sp]
	sub r3, r3, r6, lsl #3
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r1, r10
	add r2, r9, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
_02120584:
	mov r0, #0xa
	mul r0, r7, r0
	mov r7, r0
	add r6, r6, #1
_02120594:
	cmp r6, r8
	blt _02120500
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021205A4: .word 0x02099F38
_021205A8: .word 0x66666667
	arm_func_end FUN_ov80_02120450

	arm_func_start FUN_ov80_021205ac
FUN_ov80_021205ac: ; 0x021205AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xa8
	add r6, sp, #0x68
	add r5, sp, #0x28
	mov r7, #0
	mov r9, r0
	mov r10, r1
	mov r3, r6
	mov r0, r7
	mov r1, r7
	mov r2, r5
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r11, #0x30
	stmia r3, {r0, r1}
	stmia r2, {r0, r1}
	mov r4, r11
	b _02120690
_02120624:
	ldr r0, [r10, #0xc]
	adds r8, r0, r7
	bmi _0212068C
	ldr r0, [r10, #4]
	cmp r8, r0
	bge _0212068C
	mla r0, r8, r4, r9
	ldrh r0, [r0, #0x78]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	mlane r1, r8, r11, r9
	addne r0, r0, #0x1c
	strne r0, [r6, r7, lsl #2]
	ldrne r0, [r1, #0x90]
	cmpne r0, #0
	beq _0212068C
	ldr r1, [r1, #0x80]
	ldr r0, _021207D0 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	ldrne r1, [r9, #0x790]
	cmpne r1, #0
	ldrneh r0, [r0, #0x18]
	addne r0, r1, r0, lsl #5
	strne r0, [r5, r7, lsl #2]
_0212068C:
	add r7, r7, #1
_02120690:
	ldr r0, [r10, #8]
	cmp r7, r0
	blt _02120624
	ldr r4, _021207D4 ; =0x02099F38
	ldr r1, [r10, #0x5c]
	mov r7, #0
	ldr r0, [r4]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r7, [sp, #0x20]
	mov r6, r7
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r10, #0x5c]
	ldr r8, [sp, #0x20]
	bl  FUN_ov16_02111458
	mov r9, r0
	ldr r0, _021207D8 ; =0x0212252C
	add r11, sp, #0x68
	ldrsh r4, [r0, #4]
	ldrsh r5, [r0, #6]
	b _0212078C
_021206E8:
	ldr r0, [r11, r7, lsl #2]
	cmp r0, #0
	beq _02120788
	mul r0, r5, r7
	str r9, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r0, _021207DC ; =0x02099ED0
	ldr r1, [r11, r7, lsl #2]
	ldr r0, [r0]
	mov r2, r8
	mov r3, #0x80
	bl FUN_020425fc
	add r0, sp, #0x28
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	beq _02120788
	mul r0, r5, r7
	str r9, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _021207DC ; =0x02099ED0
	str r6, [sp, #0x1c]
	add r1, sp, #0x28
	ldr r0, [r0]
	ldr r1, [r1, r7, lsl #2]
	mov r2, r8
	mov r3, #0x80
	bl FUN_020425fc
_02120788:
	add r7, r7, #1
_0212078C:
	cmp r7, #0x10
	blt _021206E8
	ldr r1, [sp, #0x24]
	mov r0, r8
	bl FUN_020026d0
	ldr r0, _021207D4 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r10, #0x5c]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r8
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0xa8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021207D0: .word 0x0209BA20
_021207D4: .word 0x02099F38
_021207D8: .word 0x0212252C
_021207DC: .word 0x02099ED0
	arm_func_end FUN_ov80_021205ac

	arm_func_start FUN_ov80_021207e0
FUN_ov80_021207e0: ; 0x021207E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r3, [r1, #0xc]
	mov r10, r0
	cmp r2, #0
	add r11, r3, r2
	addlt sp, sp, #0x14
	ldr r0, _02120CE0 ; =0x02099F38
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r1, #8]
	cmp r2, r3
	addge sp, sp, #0x14
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r11, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r4, [r1, #0x62]
	ldr r3, [r1, #4]
	ldr r0, [r0]
	add r2, r4, r2
	add r1, r1, r2, lsl #2
	cmp r11, r3
	ldr r4, [r1, #0x1c]
	mov r2, #2
	blt _02120854
	mov r1, r4
	bl  FUN_ov16_02114370
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120854:
	mov r1, #0
	str r1, [sp, #0x10]
	ldr r7, [sp, #0x10]
	mov r1, r4
	mov r3, #1
	mov r9, r7
	mov r8, r7
	bl  FUN_ov16_021142fc
	add r0, r10, r11, lsl #2
	ldr r5, [r0, #0x378]
	add r1, r10, #0x78
	mov r0, #0x30
	mla r6, r11, r0, r1
	cmp r5, #0
	beq _0212098C
	mov r0, r5
	bl FUN_0206cc00
	str r0, [sp, #0x10]
	mov r0, r5
	bl FUN_0206cc34
	ldr r8, _02120CE4 ; =0x0209BA20
	mov r2, r0
	mov r0, r8
	mov r1, r5
	bl FUN_0204e000
	mov r9, r0
	mov r0, r5
	bl FUN_0206cc34
	cmp r0, #0x63
	bge _021208EC
	mov r0, r5
	bl FUN_0206cc34
	mov r2, r0
	mov r0, r8
	mov r1, r5
	add r2, r2, #1
	bl FUN_0204e000
	mov r7, r0
_021208EC:
	mov r11, #0x64
	cmp r7, #0
	moveq r8, r11
	moveq r9, #0
	beq _0212098C
	ldr r0, [r6, #4]
	cmp r9, r0
	movhi r8, #0
	bhi _02120924
	sub r1, r0, r9
	mul r0, r1, r11
	sub r1, r7, r9
	bl FUN_0201fbc8
	mov r8, r0
_02120924:
	ldr r0, [r6, #4]
	cmp r8, #0x64
	movgt r8, #0x64
	cmp r8, #0
	movlt r8, #0
	cmp r9, r0
	mov r0, r5
	bls _0212095C
	bl FUN_0206dcd4
	ldr r1, [r0]
	mov r0, #0x64
	sub r1, r1, r9
	mul r0, r1, r0
	b _02120970
_0212095C:
	bl FUN_0206dcd4
	ldr r1, [r0]
	ldr r0, [r6, #4]
	sub r1, r1, r0
	mul r0, r1, r11
_02120970:
	sub r1, r7, r9
	bl FUN_0201fbc8
	mov r9, r0
	cmp r9, #0x64
	movgt r9, #0x64
	cmp r9, #0
	movlt r9, #0
_0212098C:
	mov r11, #1
	ldr r0, _02120CE0 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r11
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r2, #2
	ldr r0, _02120CE0 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r3, r2
	bl  FUN_ov16_02113ec0
	ldr r1, [sp, #0x10]
	mov r0, r10
	bl FUN_ov80_0211f728
	and r3, r0, #0xff
	ldr r0, _02120CE0 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, #3
	bl  FUN_ov16_021137dc
	ldr r0, _02120CE0 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, #3
	mov r3, #0
	bl  FUN_ov16_0211401c
	mov r0, #0
	sub r0, r0, #4
	str r0, [sp]
	ldr r0, _02120CE0 ; =0x02099F38
	mov r3, #0
	ldr r0, [r0]
	mov r2, #3
	mov r1, r4
	sub r3, r3, #3
	bl  FUN_ov16_02113b78
	ldr r0, [sp, #0x10]
	mov r1, r4
	cmp r0, #0
	moveq r11, #0
	ldr r0, _02120CE0 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _02120A8C
	ldrb r2, [r6, #3]
	mov r0, #0
	mov r1, #1
	cmp r2, #0
	strneb r0, [r6, #3]
	streqb r1, [r6, #3]
	ldreqb r0, [r6, #2]
	subeq r0, r0, #1
	streqb r0, [r6, #2]
	streqb r1, [r10, #0x20]
_02120A8C:
	ldrb r1, [r6, #3]
	ldr r0, _02120CE0 ; =0x02099F38
	mov r11, #0
	cmp r1, #0
	beq _02120AEC
	ldr r1, [r10, #0xc]
	cmp r1, #2
	beq _02120AE0
	cmp r1, #1
	bne _02120AD8
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq _02120AD8
	ldr r2, [r6, #0x1c]
	add r1, r2, #1
	tst r2, #6
	str r1, [r6, #0x1c]
	movne r11, #1
	b _02120AEC
_02120AD8:
	mov r11, #1
	b _02120AEC
_02120AE0:
	ldr r1, [r6, #0x18]
	cmp r1, #0
	moveq r11, #1
_02120AEC:
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, #5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	cmp r7, #0
	beq _02120B1C
	mov r0, #1
	cmp r11, #0
	movne r0, #0
	b _02120B20
_02120B1C:
	mov r0, #0
_02120B20:
	ldr r7, _02120CE0 ; =0x02099F38
	and r0, r0, #0xff
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, #4
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0x64
	str r0, [sp]
	mov r2, r8, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r0, [r7]
	mov r1, r4
	mov r2, #6
	bl  FUN_ov16_02113c60
	mov r0, #1
	cmp r8, #0
	moveq r0, #0
	ldr r7, _02120CE0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, #6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0x38
	mul r1, r8, r0
	mov r0, #0xd
	str r0, [sp]
	ldr r2, _02120CE8 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r0, r3, #0x41
	mov r1, r0, lsl #0x10
	mov r8, #7
	mov r3, r1, asr #0x10
	ldr r0, [r7]
	mov r1, r4
	mov r2, r8
	bl  FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	mov r3, r9, lsl #0x10
	ldr r0, [r7]
	mov r2, r8
	mov r1, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113c60
	mov r8, #2
	mov r0, #1
	cmp r9, #0
	moveq r0, #0
	ldr r7, _02120CE0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r3, r8
	mov r2, #7
	bl  FUN_ov16_02113ec0
	ldrb r0, [r10, #0x21]
	mov r1, r4
	mov r3, r8
	str r0, [sp]
	ldr r0, [r7]
	mov r2, #8
	bl  FUN_ov16_02113ec0
	ldr r0, [r10, #0xc]
	mov r1, #0
	cmp r0, #2
	bne _02120C4C
	ldr r0, [r6, #0x18]
	cmp r0, #0
	movne r1, #1
_02120C4C:
	ldr r0, _02120CE0 ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, #9
	mov r3, #2
	mov r7, #1
	mov r8, #0
	bl  FUN_ov16_02113ec0
	ldr r0, [r10, #0xc]
	mov r1, r8
	cmp r0, #2
	bne _02120C8C
	ldr r0, [r6, #0x18]
	cmp r0, #0
	movne r1, r7
_02120C8C:
	ldr r0, _02120CE0 ; =0x02099F38
	str r1, [sp]
	mov r6, #2
	ldr r0, [r0]
	mov r1, r4
	mov r3, r6
	mov r2, #0xa
	bl  FUN_ov16_02113ec0
	mov r0, r5
	bl FUN_0206cc34
	str r0, [sp]
	mov r0, #0x72
	stmib sp, {r0, r8}
	mov r0, r10
	mov r1, r4
	mov r3, r6
	mov r2, #0xb
	str r7, [sp, #0xc]
	bl FUN_ov80_02120450
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120CE0: .word 0x02099F38
_02120CE4: .word 0x0209BA20
_02120CE8: .word 0x51EB851F
	arm_func_end FUN_ov80_021207e0

	arm_func_start FUN_ov80_02120cec
FUN_ov80_02120cec: ; 0x02120CEC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	cmp r2, #0
	mov r5, r0
	ldrne r0, [r4, #8]
	movne r6, #0
	cmpne r0, #0
	ble _02120D2C
_02120D0C:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov80_021200d0
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _02120D0C
_02120D2C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov80_021205ac
	ldr r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_02120D48:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov80_021207e0
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _02120D48
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov80_02120cec

	arm_func_start FUN_ov80_02120d6c
FUN_ov80_02120d6c: ; 0x02120D6C
	stmfd sp!, {r4, lr}
	movs r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4, lsl #1
	bl  FUN_ov16_020ef8d4
	add r2, r4, r4, lsl #3
	ldr r1, _02120D9C ; =0xCCCCCCCD
	add r2, r2, r0
	umull r1, r0, r2, r1
	mov r0, r0, lsr #3
	ldmfd sp!, {r4, pc}
_02120D9C: .word 0xCCCCCCCD
	arm_func_end FUN_ov80_02120d6c

	arm_func_start FUN_ov80_02120da0
FUN_ov80_02120da0: ; 0x02120DA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r10, r0
	mov r5, #0
	mov r1, r5
	add r0, r10, #0x2c
	mov r2, #0x48
	bl MemWrite
	mov r1, #0x45
	ldr r0, _021213CC ; =0x02099E99
	str r1, [r10, #0x2c]
	ldrb r0, [r0]
	ldr r6, [r10, #0x784]
	cmp r0, #0
	beq _02120E18
	mov r0, r6
	mov r1, r5
	mov r2, #0x18
	bl MemWrite
	ldr r0, _021213D0 ; =0x02099EA0
	str r5, [r10, #0x54]
	str r5, [r10, #0x38]
	str r5, [r10, #0x58]
	str r5, [r10, #0x5c]
	strh r5, [r10, #0x6c]
	str r5, [r10, #0x64]
	str r5, [r10, #0x68]
	ldrh r0, [r0]
	mov r6, r5
	str r0, [r10, #0x60]
_02120E18:
	cmp r6, #0
	beq _021211D4
	ldrh r1, [r6, #8]
	mov r0, r10
	bl FUN_ov80_02120d6c
	str r0, [r10, #0x54]
	ldr r0, _021213D4 ; =0x0209BA20
	bl FUN_02073184
	cmp r0, #0
	ldrneb r0, [r0, #0x1c]
	mov r8, #0
	mov r7, #6
	add r4, sp, #0x10
	strne r0, [r10, #0x38]
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl MemWrite
	ldr r0, _021213D8 ; =0x02099EF0
	mov r1, r8
	ldr r0, [r0]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov132_021462fc
	mov r1, r8
	b _02120E8C
_02120E80:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	add r8, r8, r0
_02120E8C:
	cmp r1, #6
	blt _02120E80
	ldr r1, [r10, #0x38]
	mov r7, #0
	mul r0, r1, r8
	str r0, [sp, #0xc]
	mov r4, r7
	str r8, [r10, #0x58]
	b _02120EFC
_02120EB0:
	mov r0, r4
	bl  FUN_ov16_020efa80
	movs r8, r0
	beq _02120EF8
	bl FUN_0206d64c
	cmp r0, #0
	beq _02120EF8
	mov r0, r8
	bl FUN_0206d6b0
	cmp r0, #0
	beq _02120EF8
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	beq _02120EF8
	ldr r0, [r8, #0x90]
	tst r0, #0x2000
	addeq r7, r7, #1
_02120EF8:
	add r4, r4, #1
_02120EFC:
	cmp r4, #0x64
	blt _02120EB0
	ldr r0, [r10, #0x54]
	mov r11, #0
	mov r8, r11
	mov r9, r11
	str r0, [sp, #8]
	b _02120FD0
_02120F1C:
	mov r0, r9
	bl  FUN_ov16_020efa80
	movs r4, r0
	beq _02120FCC
	bl FUN_0206d64c
	cmp r0, #0
	beq _02120FCC
	mov r0, r4
	bl FUN_0206d6b0
	cmp r0, #0
	beq _02120FCC
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	beq _02120FCC
	ldr r0, [r4, #0x90]
	tst r0, #0x2000
	beq _02120FCC
	ldr r0, _021213D4 ; =0x0209BA20
	mov r1, #0x40
	bl FUN_0204a2c4
	mov r4, r0
	ldrb r0, [r4, #6]
	ldr r2, [sp, #8]
	mov r1, r7
	rsb r0, r0, #0x64
	mul r0, r2, r0
	bl FUN_0201f9bc
	ldr r2, _021213DC ; =0x51EB851F
	ldrb r4, [r4, #6]
	smull r3, r1, r2, r0
	mov r0, r0, lsr #0x1f
	add r1, r0, r1, asr #5
	add r11, r11, r1
	ldr r1, [sp, #0xc]
	rsb r2, r4, #0x64
	mul r0, r1, r2
	mov r1, r7
	bl FUN_0201f9bc
	ldr r1, _021213DC ; =0x51EB851F
	smull r2, r3, r1, r0
	mov r0, r0, lsr #0x1f
	add r3, r0, r3, asr #5
	add r8, r8, r3
_02120FCC:
	add r9, r9, #1
_02120FD0:
	cmp r9, #0x64
	blt _02120F1C
	add r0, r11, r8
	str r0, [r10, #0x28]
	ldr r4, _021213D4 ; =0x0209BA20
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _02121008
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [r10, #0x28]
	str r0, [r10, #0x38]
	str r0, [r10, #0x58]
_02121008:
	ldr r0, [sp, #8]
	ldrb r1, [r10, #0x21]
	str r0, [r10, #0x54]
	ldr r0, [sp, #0xc]
	cmp r1, #0
	str r0, [r10, #0x5c]
	mov r1, r0
	ldr r0, [sp, #8]
	add r0, r1, r0
	movne r0, r0, lsl #1
	str r0, [r10, #0x60]
	ldr r7, [r6]
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	mov r8, #0
	beq _02121108
	ldr r0, _021213E0 ; =0x020A1640
	strh r8, [r10, #0x6c]
	ldr r3, [r0, #0x230]
	ldrb r2, [r0, #0x246]
	ldr r0, _021213E4 ; =0x00000808
	add r3, r3, #8
	mla r11, r2, r0, r3
	ldr r1, _021213E8 ; =0x02122534
	add r4, sp, #0x38
	ldmia r1, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldrh r0, [r11, #0xcc]
	mov r9, r8
	strh r0, [sp, #0x38]
	ldrh r0, [r11, #0xce]
	ldr r11, _021213EC ; =0x02099EE0
	strh r0, [sp, #0x40]
	b _021210FC
_02121090:
	mov r0, r9, lsl #3
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021210F8
	mov r0, #0x3e8
	bl  FUN_ov16_020ef8d4
	add r1, r4, r9, lsl #3
	ldr r1, [r1, #4]
	mov r2, r9, lsl #3
	cmp r1, r0
	bls _021210F8
	ldrh r1, [r4, r2]
	ldr r0, _021213D4 ; =0x0209BA20
	mov r2, #1
	bl  FUN_ov16_020ee4b4
	cmp r0, #0
	beq _021210F8
	mov r3, r9, lsl #3
	ldrh r1, [r4, r3]
	add r0, r10, r8, lsl #1
	mov r2, r8, lsl #1
	strh r1, [r0, #0x6e]
	ldrh r1, [r4, r3]
	add r0, r8, #1
	and r8, r0, #0xff
	strh r1, [r11, r2]
_021210F8:
	add r9, r9, #1
_021210FC:
	cmp r9, #2
	blt _02121090
	b _021211B4
_02121108:
	mov r9, r8
	strh r8, [r10, #0x6c]
	ldr r11, _021213DC ; =0x51EB851F
	b _021211AC
_02121118:
	add r0, r6, r9, lsl #1
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _021211A8
	mov r0, #0x64
	bl  FUN_ov16_020ef8d4
	add r1, r6, r9
	ldrb r1, [r1, #0x10]
	cmp r1, r0
	bls _021211A8
	add r0, r6, r9, lsl #1
	ldrh r1, [r0, #0xa]
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020ee4b4
	cmp r0, #0
	add r0, r6, r9, lsl #1
	beq _02121178
	ldrh r2, [r0, #0xa]
	add r1, r10, r8, lsl #1
	add r0, r8, #1
	strh r2, [r1, #0x6e]
	and r8, r0, #0xff
	b _021211A8
_02121178:
	ldrh r1, [r0, #0xa]
	mov r0, r4
	bl  FUN_ov16_020ee034
	add r1, r6, r9
	ldrh r2, [r0, #0x20]
	ldrb r0, [r1, #0x13]
	mul r0, r2, r0
	add r1, r0, #0x32
	smull r0, r2, r11, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #5
	add r7, r7, r2
_021211A8:
	add r9, r9, #1
_021211AC:
	cmp r9, #3
	blt _02121118
_021211B4:
	mov r0, r10
	mov r1, r7
	bl FUN_ov80_02120d6c
	str r0, [r10, #0x64]
	ldr r1, [r6, #4]
	mov r0, r10
	bl FUN_ov80_02120d6c
	str r0, [r10, #0x68]
_021211D4:
	mov r6, #0
	mov r1, r6
	add r0, r10, #0x78
	mov r2, #0x300
	bl MemWrite
	bl  FUN_ov16_020f081c
	mov r2, #1
	mov r1, r0
	str r2, [sp]
	mov r2, #0x80
	str r2, [sp, #4]
	ldr r0, _021213D4 ; =0x0209BA20
	add r2, sp, #0x16
	mov r3, #0x10
	bl FUN_0204b540
	str r6, [r10, #0x74]
	b _021213BC
_02121218:
	add r0, sp, #0x16
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	cmp r0, #0
	addne r1, r10, r6, lsl #2
	ldrne r1, [r1, #0x378]
	cmpne r1, #0
	beq _021213B8
	mov r7, #0x6c
	mul r1, r6, r7
	ldr r2, [r10, #0x3b8]
	adds r1, r2, r1
	beq _021213B8
	mov r1, r5
	bl  FUN_ov16_020efa9c
	movs r4, r0
	beq _021213B8
	add r1, r10, r6, lsl #2
	ldr r1, [r1, #0x378]
	mov r2, #0x98
	bl _memcpy
	add r0, r10, r6, lsl #2
	ldr r0, [r0, #0x378]
	bl FUN_0206dcd4
	ldr r2, [r10, #0x3b8]
	mov r1, r0
	mla r0, r6, r7, r2
	bl FUN_0206ed40
	ldr r1, [r10, #0x3b8]
	add r0, r10, r6, lsl #2
	mla r2, r6, r7, r1
	ldr r1, [r0, #0x378]
	ldr r0, _021213CC ; =0x02099E99
	str r2, [r1, #0x68]
	ldrb r0, [r0]
	ldr r7, [r10, #0x60]
	cmp r0, #0
	bne _02121340
	mov r0, r4
	mov r1, r5
	bl FUN_0206d824
	cmp r0, #0xc
	bge _02121340
	mov r0, r4
	mov r1, r5
	bl FUN_0206d824
	cmp r0, #0
	ble _02121340
	ldr r0, [r4, #0x90]
	tst r0, #0x1000
	beq _02121308
	ldr r0, _021213D4 ; =0x0209BA20
	mov r1, #0x3f
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _021213DC ; =0x51EB851F
	mul r2, r7, r0
	smull r0, r7, r1, r2
	mov r0, r2, lsr #0x1f
	add r7, r0, r7, asr #5
_02121308:
	ldr r1, [r10, #0x28]
	ldr r0, [r4, #0x90]
	add r7, r7, r1
	tst r0, #0x2000
	beq _02121340
	ldr r0, _021213D4 ; =0x0209BA20
	mov r1, #0x40
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	ldr r1, _021213DC ; =0x51EB851F
	mul r2, r7, r0
	smull r0, r7, r1, r2
	mov r0, r2, lsr #0x1f
	add r7, r0, r7, asr #5
_02121340:
	mov r0, r4
	bl FUN_0206dcd4
	mov r1, #0x30
	mla r1, r6, r1, r10
	add r2, sp, #0x16
	mov r3, r6, lsl #1
	ldrh r2, [r2, r3]
	ldr r0, [r0]
	mov r3, #0
	strh r2, [r1, #0x78]
	strb r3, [r1, #0x7a]
	strb r3, [r1, #0x7b]
	str r0, [r1, #0x7c]
	str r3, [r1, #0x90]
	str r3, [r1, #0x94]
	b _0212138C
_02121380:
	add r0, r1, r3, lsl #2
	str r5, [r0, #0x80]
	add r3, r3, #1
_0212138C:
	cmp r3, #4
	blt _02121380
	mov r0, #0x30
	mla r0, r6, r0, r10
	str r7, [r0, #0x98]
	str r5, [r0, #0x9c]
	str r5, [r0, #0xa0]
	str r5, [r0, #0xa4]
	ldr r0, [r10, #0x74]
	add r0, r0, #1
	str r0, [r10, #0x74]
_021213B8:
	add r6, r6, #1
_021213BC:
	cmp r6, #0x10
	blt _02121218
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021213CC: .word 0x02099E99
_021213D0: .word 0x02099EA0
_021213D4: .word 0x0209BA20
_021213D8: .word 0x02099EF0
_021213DC: .word 0x51EB851F
_021213E0: .word 0x020A1640
_021213E4: .word 0x00000808
_021213E8: .word 0x02122534
_021213EC: .word 0x02099EE0
	arm_func_end FUN_ov80_02120da0

	arm_func_start FUN_ov80_021213f0
FUN_ov80_021213f0: ; 0x021213F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	str r1, [r4, #0x30]
	str r5, [r4, #0x34]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02121410: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _02121434 ; case 1
	b _02121434 ; case 2
	b _02121434 ; case 3
	b _02121434 ; case 4
	b _02121434 ; case 5
	b _02121434 ; case 6
	b _0212146C ; case 7
	b _02121480 ; case 8
_02121434:
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	sub r0, r1, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x54]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _021214C0 ; =0x0209AC44
	mov r1, #0x28
	bl FUN_0202cf6c
	mov r0, #1
	strb r0, [r4, #0x1f]
	ldmfd sp!, {r3, r4, r5, pc}
_0212146C:
	ldr r0, _021214C0 ; =0x0209AC44
	mov r1, #0x28
	mov r2, #0x64
	bl FUN_0202cfd8
	ldmfd sp!, {r3, r4, r5, pc}
_02121480:
	ldr r0, _021214C0 ; =0x0209AC44
	mov r1, #0x28
	mov r2, #0x64
	bl FUN_0202cfd8
_02121490:
	add r1, r4, r5, lsl #2
	ldr r0, [r1, #0x54]
	add r5, r5, #1
	str r0, [r1, #0x3c]
	cmp r5, #6
	blt _02121490
	mov r2, #3
	mov r0, r4
	mov r1, #1
	strh r2, [r4, #0x6c]
	bl FUN_ov80_0211fc34
	ldmfd sp!, {r3, r4, r5, pc}
_021214C0: .word 0x0209AC44
	arm_func_end FUN_ov80_021213f0

	arm_func_start FUN_ov80_021214c4
FUN_ov80_021214c4: ; 0x021214C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r4, #0
	mov r9, r0
	mov r6, r4
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r3, #1
	str r3, [sp]
	mov r5, #0x80
	ldr r0, _021216F0 ; =0x0209BA20
	add r2, sp, #0x18
	mov r3, #0x10
	str r5, [sp, #4]
	bl FUN_0204b540
	mov r8, r6
_02121504:
	add r5, sp, #0x18
	mov r0, r8, lsl #1
	ldrh r0, [r5, r0]
	cmp r0, #0
	addne r0, r9, r8, lsl #2
	ldrne r0, [r0, #0x378]
	cmpne r0, #0
	beq _021216D4
	bl FUN_0206dcdc
	cmp r0, #0
	bne _021216D4
	mov r0, r8, lsl #1
	ldrh r0, [r5, r0]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _021216D4
	add r0, r9, r8, lsl #2
	ldr r0, [r0, #0x378]
	bl FUN_0206cc34
	add r2, r9, #0x78
	mov r1, #0x30
	mla r7, r8, r1, r2
	ldr r1, [r7, #0x20]
	mov r5, r0
	cmp r1, #0
	blt _021216D4
	add r0, r9, r8, lsl #2
	ldr r0, [r0, #0x378]
	bl FUN_0206cc34
	cmp r0, #0x63
	beq _021216D4
	ldr r0, [r9, #0x34]
	cmp r0, #1
	bne _021215D8
	add r0, r9, r8, lsl #2
	ldr r10, _021216F0 ; =0x0209BA20
	ldr r1, [r0, #0x378]
	mov r0, r10
	bl FUN_0204df64
	ldr r1, [r7, #0x20]
	cmp r1, r0
	strlo r4, [r7, #0x2c]
	ldrlo r0, [r7, #0x20]
	blo _021215D0
	mov r0, #1
	str r0, [r7, #0x2c]
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x378]
	mov r0, r10
	bl FUN_0204df64
_021215D0:
	str r0, [r7, #0x24]
	str r4, [r7, #0x28]
_021215D8:
	ldr r2, [r9, #0x34]
	cmp r2, #0x1e
	bne _02121610
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	ldreq r2, [r7, #0x20]
	beq _0212163C
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x378]
	ldr r0, _021216F0 ; =0x0209BA20
	bl FUN_0204df64
	mov r2, r0
	mov r6, #1
	b _0212163C
_02121610:
	ldr r0, [r7, #0x24]
	ldr r1, _021216F4 ; =0x88888889
	mul r2, r0, r2
	smull r0, r3, r1, r2
	add r3, r2, r3
	mov r0, r2, lsr #0x1f
	ldr r1, [r7, #0x28]
	add r3, r0, r3, asr #4
	sub r2, r3, r1
	add r0, r1, r2
	str r0, [r7, #0x28]
_0212163C:
	ldr r0, [r7, #0x20]
	add r10, sp, #8
	sub r0, r0, r2
	str r0, [r7, #0x20]
	mov r0, #1
	str r0, [sp]
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x378]
	ldr r0, _021216F0 ; =0x0209BA20
	mov r3, r10
	bl FUN_0204dfb8
	cmp r0, #0
	beq _021216D4
	add r0, r9, r8, lsl #2
	ldr r0, [r0, #0x378]
	bl FUN_0206cc34
	sub r0, r0, r5
	and r1, r0, #0xff
	ldrb r2, [r7, #2]
	mov r0, #0
	add r1, r2, r1
	strb r1, [r7, #2]
_02121694:
	ldr r2, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r2, #0
	ldrne r1, [r7, #0x18]
	cmpne r1, #4
	addlt r1, r7, r1, lsl #2
	strlt r2, [r1, #8]
	ldrlt r1, [r7, #0x18]
	addlt r1, r1, #1
	strlt r1, [r7, #0x18]
	cmp r0, #4
	blt _02121694
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x378]
	mov r0, r9
	bl FUN_ov80_02121b48
_021216D4:
	add r8, r8, #1
	cmp r8, #0x10
	blt _02121504
	cmp r6, #0
	strne r4, [r9, #0x34]
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021216F0: .word 0x0209BA20
_021216F4: .word 0x88888889
	arm_func_end FUN_ov80_021214c4

	arm_func_start FUN_ov80_021216f8
FUN_ov80_021216f8: ; 0x021216F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r10, r0
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r3, #1
	str r3, [sp]
	mov r4, #0x80
	ldr r0, _0212183C ; =0x0209BA20
	add r2, sp, #0x18
	mov r3, #0x10
	str r4, [sp, #4]
	bl FUN_0204b540
	mov r9, #0
_02121730:
	add r4, sp, #0x18
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	cmp r0, #0
	addne r0, r10, r9, lsl #2
	ldrne r0, [r0, #0x378]
	cmpne r0, #0
	beq _02121828
	bl FUN_0206dcdc
	cmp r0, #0
	bne _02121828
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	mov r8, #0
	mov r1, r8
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _02121828
	add r1, r10, #0x78
	mov r0, #0x30
	mla r7, r9, r0, r1
	ldr r6, [r7, #0x20]
	add r0, r10, r9, lsl #2
	str r8, [r7, #0x20]
	ldr r0, [r0, #0x378]
	bl FUN_0206cc34
	mov r1, #1
	mov r5, r0
	add r4, sp, #8
	add r0, r10, r9, lsl #2
	str r1, [sp]
	ldr r1, [r0, #0x378]
	ldr r0, _0212183C ; =0x0209BA20
	mov r2, r6
	mov r3, r4
	bl FUN_0204dfb8
	cmp r0, #0
	beq _02121828
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x378]
	bl FUN_0206cc34
	sub r0, r0, r5
	ldrb r1, [r7, #2]
	and r0, r0, #0xff
	add r0, r1, r0
	strb r0, [r7, #2]
_021217E8:
	ldr r1, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r1, #0
	ldrne r0, [r7, #0x18]
	cmpne r0, #4
	addlt r0, r7, r0, lsl #2
	strlt r1, [r0, #8]
	ldrlt r0, [r7, #0x18]
	addlt r0, r0, #1
	strlt r0, [r7, #0x18]
	cmp r8, #4
	blt _021217E8
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x378]
	mov r0, r10
	bl FUN_ov80_02121b48
_02121828:
	add r9, r9, #1
	cmp r9, #0x10
	blt _02121730
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212183C: .word 0x0209BA20
	arm_func_end FUN_ov80_021216f8

	arm_func_start FUN_ov80_02121840
FUN_ov80_02121840: ; 0x02121840
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _021219A4 ; =0x0209BA20
	mov r8, #0
	mov r10, r0
	mov r9, r1
	mov r0, r4
	mov r1, r8
	bl FUN_0205107c
	mov r1, #0x32
	mul r3, r9, r1
	ldr r1, _021219A8 ; =0x51EB851F
	mov r2, r3, lsr #0x1f
	smull r3, r11, r1, r3
	mov r6, r0
	add r11, r2, r11, asr #5
_0212187C:
	mov r0, r8
	bl  FUN_ov16_020efa80
	movs r5, r0
	beq _02121994
	bl FUN_0206d64c
	cmp r0, #0
	beq _02121994
	mov r0, r5
	bl FUN_0206d6b0
	cmp r0, #0
	beq _02121994
	mov r0, r5
	mov r7, r9
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r6
	bl FUN_0204fca0
	cmp r0, #0
	beq _02121960
	mov r0, r5
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r6
	bl FUN_0204fd68
	cmp r0, #0xc
	bge _02121964
	ldr r0, _021219AC ; =0x02099E99
	ldrb r0, [r0]
	cmp r0, #0
	bne _02121964
	ldr r0, [r5, #0x90]
	tst r0, #0x1000
	beq _02121924
	mov r0, r4
	mov r1, #0x3f
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r2, r9, r0
	ldr r0, _021219A8 ; =0x51EB851F
	smull r1, r7, r0, r2
	mov r0, r2, lsr #0x1f
	add r7, r0, r7, asr #5
_02121924:
	ldr r1, [r10, #0x28]
	ldr r0, [r5, #0x90]
	add r7, r7, r1
	tst r0, #0x2000
	beq _02121964
	mov r0, r4
	mov r1, #0x40
	bl FUN_0204a2c4
	ldrb r0, [r0, #6]
	mul r2, r7, r0
	ldr r0, _021219A8 ; =0x51EB851F
	smull r1, r7, r0, r2
	mov r0, r2, lsr #0x1f
	add r7, r0, r7, asr #5
	b _02121964
_02121960:
	mov r7, r11
_02121964:
	mov r1, #0
	str r1, [sp]
	mov r0, r4
	mov r2, r7
	mov r1, r5
	mov r3, #0
	bl FUN_0204dfb8
	cmp r0, #0
	beq _02121994
	mov r0, r10
	mov r1, r5
	bl FUN_ov80_02121b48
_02121994:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0212187C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021219A4: .word 0x0209BA20
_021219A8: .word 0x51EB851F
_021219AC: .word 0x02099E99
	arm_func_end FUN_ov80_02121840

	arm_func_start FUN_ov80_021219b0
FUN_ov80_021219b0: ; 0x021219B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #0x34]
	ldr r1, [r4, #0x30]
	add r2, r2, #1
	str r2, [r4, #0x34]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_021219D4: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _021219F8 ; case 1
	b _021219F8 ; case 2
	b _021219F8 ; case 3
	b _02121A78 ; case 4
	b _02121ACC ; case 5
	b _02121ADC ; case 6
	b _02121AF0 ; case 7
	b _02121B14 ; case 8
_021219F8:
	sub r0, r1, #1
	add r0, r4, r0, lsl #2
	ldr r5, [r0, #0x54]
	cmp r5, #0
	ble _02121A3C
	mul r0, r5, r2
	add r12, r0, #0xf
	ldr r3, _02121B28 ; =0x88888889
	mov r0, r12, lsr #0x1f
	smull r2, lr, r3, r12
	add lr, r12, lr
	add lr, r0, lr, asr #4
	sub r0, r1, #1
	cmp lr, r5
	movgt lr, r5
	add r0, r4, r0, lsl #2
	str lr, [r0, #0x3c]
_02121A3C:
	ldr r0, [r4, #0x34]
	cmp r0, #0x1e
	bge _02121A50
	cmp r5, #0
	bne _02121A60
_02121A50:
	ldr r1, [r4, #0x30]
	mov r0, r4
	add r1, r1, #1
	bl FUN_ov80_021213f0
_02121A60:
	add r1, r4, #8
	mov r0, r4
	add r1, r1, #0x800
	mov r2, #0
	bl FUN_ov80_02120cec
	ldmfd sp!, {r3, r4, r5, pc}
_02121A78:
	sub r1, r1, #1
	add r1, r4, r1, lsl #2
	ldr r5, [r1, #0x54]
	cmp r5, #0
	ble _02121A90
	bl FUN_ov80_021214c4
_02121A90:
	ldr r0, [r4, #0x34]
	cmp r0, #0x1e
	bge _02121AA4
	cmp r5, #0
	bne _02121AB4
_02121AA4:
	ldr r1, [r4, #0x30]
	mov r0, r4
	add r1, r1, #1
	bl FUN_ov80_021213f0
_02121AB4:
	add r1, r4, #8
	mov r0, r4
	add r1, r1, #0x800
	mov r2, #0
	bl FUN_ov80_02120cec
	ldmfd sp!, {r3, r4, r5, pc}
_02121ACC:
	ldr r2, [r4, #0x64]
	mov r1, #6
	str r2, [r4, #0x4c]
	bl FUN_ov80_021213f0
_02121ADC:
	ldr r2, [r4, #0x68]
	mov r0, r4
	mov r1, #6
	str r2, [r4, #0x50]
	bl FUN_ov80_021213f0
_02121AF0:
	mov r0, r4
	mov r1, #8
	bl FUN_ov80_021213f0
	add r1, r4, #8
	mov r0, r4
	add r1, r1, #0x800
	mov r2, #0
	bl FUN_ov80_02120cec
	ldmfd sp!, {r3, r4, r5, pc}
_02121B14:
	add r1, r4, #8
	add r1, r1, #0x800
	mov r2, #0
	bl FUN_ov80_02120cec
	ldmfd sp!, {r3, r4, r5, pc}
_02121B28: .word 0x88888889
	arm_func_end FUN_ov80_021219b0

	arm_func_start FUN_ov80_02121b2c
FUN_ov80_02121b2c: ; 0x02121B2C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov80_021216f8
	mov r0, r4
	mov r1, #8
	bl FUN_ov80_021213f0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov80_02121b2c

	arm_func_start FUN_ov80_02121b48
FUN_ov80_02121b48: ; 0x02121B48
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _02121B84 ; =0x0209BA20
	mov r5, #0
_02121B5C:
	mov r0, r6
	mov r1, r5
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_02074a2c
	add r5, r5, #1
	cmp r5, #6
	blt _02121B5C
	ldmfd sp!, {r4, r5, r6, pc}
_02121B84: .word 0x0209BA20
	arm_func_end FUN_ov80_02121b48

	arm_func_start FUN_ov80_02121b88
FUN_ov80_02121b88: ; 0x02121B88
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0x1d]
	mov r2, #0
	cmp r0, #0
	beq _02121BC0
	ldr r0, _02121CB0 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, r2
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	strb r2, [r4, #0x1d]
_02121BC0:
	ldr r0, [r4, #8]
	cmp r0, #5
	ldreqb r0, [r4, #0x1e]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	ldr r0, _02121CB4 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r1, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0x1e]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02121C98
_02121C04: ; jump table
	b _02121C14 ; case 0
	b _02121C28 ; case 1
	b _02121C38 ; case 2
	b _02121C8C ; case 3
_02121C14:
	mov r0, r4
	bl FUN_ov80_02121b2c
	mov r0, r4
	mov r1, r5
	b _02121C30
_02121C28:
	mov r0, r4
	mov r1, #2
_02121C30:
	bl FUN_ov80_0211fc34
	b _02121C98
_02121C38:
	add r12, r4, #0x78
	mov r3, r0
	mov r1, #0x30
_02121C44:
	mla lr, r0, r1, r12
	ldr r2, [lr, #0x18]
	cmp r2, #0
	beq _02121C7C
	ldr r2, [lr, #0xc]
	str r2, [lr, #8]
	ldr r2, [lr, #0x10]
	str r2, [lr, #0xc]
	ldr r2, [lr, #0x14]
	str r2, [lr, #0x10]
	str r3, [lr, #0x14]
	ldr r2, [lr, #0x18]
	sub r2, r2, #1
	str r2, [lr, #0x18]
_02121C7C:
	add r0, r0, #1
	cmp r0, #0x10
	blt _02121C44
	b _02121C28
_02121C8C:
	mov r0, r4
	mov r1, #6
	bl FUN_ov80_0211f9c0
_02121C98:
	add r1, r4, #8
	mov r0, r4
	add r1, r1, #0x800
	mov r2, #0
	bl FUN_ov80_02120cec
	ldmfd sp!, {r3, r4, r5, pc}
_02121CB0: .word 0x0209A3E0
_02121CB4: .word 0x0209AC44
	arm_func_end FUN_ov80_02121b88

	arm_func_start FUN_ov80_02121cb8
FUN_ov80_02121cb8: ; 0x02121CB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02121DFC ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldreq r0, [r4, #8]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _02121D2C
	ldrh r0, [r1, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #0x1e]
	ldrh r0, [r1]
	str r0, [r4, #0x14]
	ldrh r0, [r1, #2]
	str r0, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_02121D2C:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _02121DF0
	mov r5, #1
	ldr r0, _02121E00 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r0, [r4, #0xc]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02121DF0
_02121D58: ; jump table
	b _02121D68 ; case 0
	b _02121D7C ; case 1
	b _02121D8C ; case 2
	b _02121DE4 ; case 3
_02121D68:
	mov r0, r4
	bl FUN_ov80_02121b2c
	mov r0, r4
	mov r1, r5
	b _02121D84
_02121D7C:
	mov r0, r4
	mov r1, #2
_02121D84:
	bl FUN_ov80_0211fc34
	b _02121DF0
_02121D8C:
	mov r5, #0
	add r3, r4, #0x78
	mov r2, r5
	mov r0, #0x30
_02121D9C:
	mla r12, r5, r0, r3
	ldr r1, [r12, #0x18]
	cmp r1, #0
	beq _02121DD4
	ldr r1, [r12, #0xc]
	str r1, [r12, #8]
	ldr r1, [r12, #0x10]
	str r1, [r12, #0xc]
	ldr r1, [r12, #0x14]
	str r1, [r12, #0x10]
	str r2, [r12, #0x14]
	ldr r1, [r12, #0x18]
	sub r1, r1, #1
	str r1, [r12, #0x18]
_02121DD4:
	add r5, r5, #1
	cmp r5, #0x10
	blt _02121D9C
	b _02121D7C
_02121DE4:
	mov r0, r4
	mov r1, #6
	bl FUN_ov80_0211f9c0
_02121DF0:
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldmfd sp!, {r3, r4, r5, pc}
_02121DFC: .word 0x0209A3E0
_02121E00: .word 0x0209AC44
	arm_func_end FUN_ov80_02121cb8

	arm_func_start FUN_ov80_02121e04
FUN_ov80_02121e04: ; 0x02121E04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x16c
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r6, r0
	and r0, r1, #0x1f00
	mov r4, #0
	mov r1, r0, lsr #8
	ldr r0, _02122048 ; =0x020A0640
	str r1, [r6, #0x930]
	str r4, [r6, #8]
	str r4, [r6, #0xc]
	str r4, [r6, #0x10]
	strb r4, [r6, #0x1e]
	strb r4, [r6, #0x1f]
	strb r4, [r6, #0x20]
	strb r4, [r6, #0x21]
	ldrb r0, [r0, #0x8d]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x21]
	ldr r0, _0212204C ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _02122050 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	add r0, r6, #0x36c
	mov r5, #0
	mov r1, r5
	add r0, r0, #0x400
	mov r2, #0x30
	bl MemWrite
	add r0, r6, #0x39c
	mov r1, r5
	add r0, r0, #0x400
	mov r2, #0x6c
	bl MemWrite
	add r0, r6, #8
	add r0, r0, #0x800
	mov r1, r5
	mov r2, #0x100
	bl MemWrite
	add r0, r6, #0x10c
	add r0, r0, #0x800
	mov r1, r5
	mov r2, #0x24
	bl MemWrite
	add r0, r6, #0x108
	add r0, r0, #0x800
	mov r1, r5
	mov r2, #4
	bl MemWrite
	add r0, r6, #0x2c
	mov r1, r5
	mov r2, #0x48
	bl MemWrite
	add r0, r6, #0x78
	mov r1, r5
	mov r2, #0x300
	bl MemWrite
	add r0, r6, #0x378
	mov r1, r5
	mov r2, #0x40
	bl MemWrite
	ldr r0, _02122054 ; =0x0209BA20
	bl FUN_02071fac
	add r0, r6, #0x134
	add r0, r0, #0x800
	mov r1, #0x10
	bl  FUN_ov16_020f5278
	ldr r0, _02122058 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldr r9, _0212205C ; =0x0209A250
	mov r8, #0x98
	mov r7, #1
	b _02121F5C
_02121F3C:
	mov r0, r9
	mov r1, r8
	mov r2, r4
	mov r3, r7
	bl FUN_0202de58
	add r1, r6, r5, lsl #2
	str r0, [r1, #0x378]
	add r5, r5, #1
_02121F5C:
	cmp r5, #0x10
	blt _02121F3C
	ldr r0, _0212205C ; =0x0209A250
	mov r1, #0x6c0
	bl FUN_0202de44
	str r0, [r6, #0x3b8]
	mov r0, r6
	bl FUN_ov80_0211f564
	ldr r0, _02122060 ; =0x02099E99
	ldrb r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0x16c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r0, r6, #0x13c
	mov r1, r4
	add r0, r0, #0x800
	mov r2, #0x14c
	bl MemWrite
	mov r3, #3
	mov r2, #1
	ldr r0, _02122054 ; =0x0209BA20
	mov r1, r4
	strb r3, [r6, #0x950]
	str r2, [r6, #0x93c]
	str r4, [r6, #0x940]
	bl FUN_0207249c
	ldrh r3, [r0, #0x2a]
	ldr r7, _02122054 ; =0x0209BA20
	add r2, r6, #0x900
	cmp r3, #0
	ldreqh r3, [r0, #0x20]
	mov r0, r7
	mov r1, r4
	strh r3, [r2, #0x54]
	bl FUN_020724c8
	add r5, sp, #0
	strb r0, [r6, #0x964]
	mov r0, r5
	mov r1, r4
	mov r2, #0x16c
	bl MemWrite
	mov r0, r7
	mov r2, r5
	mov r1, #1
	bl FUN_0207039c
	add r1, r6, #0x16c
	mov r0, r5
	add r1, r1, #0x800
	mov r2, #0x20
	bl _memcpy
	ldr r0, _02122064 ; =0x020A1640
	ldr r1, _02122068 ; =0x0000270F
	ldrh r2, [r0, #0x14]
	add r0, r6, #0x900
	strh r2, [r0, #0x52]
	cmp r2, r1
	strhih r1, [r0, #0x52]
	add sp, sp, #0x16c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02122048: .word 0x020A0640
_0212204C: .word 0x02099EB4
_02122050: .word 0x02099ED4
_02122054: .word 0x0209BA20
_02122058: .word 0x02099F38
_0212205C: .word 0x0209A250
_02122060: .word 0x02099E99
_02122064: .word 0x020A1640
_02122068: .word 0x0000270F
	arm_func_end FUN_ov80_02121e04

	arm_func_start FUN_ov80_0212206c
FUN_ov80_0212206c: ; 0x0212206C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x134
	add r0, r0, #0x800
	bl  FUN_ov16_020f5868
	ldr r5, _02122284 ; =0x02099ED4
	ldr r1, _02122288 ; =0x0209A110
	ldr r0, [r5]
	ldr r1, [r1]
	bl  FUN_ov16_0210e10c
	ldr r0, [r5]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0212228C ; =0x02099E99
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #4]
	beq _021220C8
	add r1, r4, #0x13c
	ldr r2, [r0]
	add r1, r1, #0x800
	b _021220D0
_021220C8:
	ldr r2, [r0]
	add r1, r4, #0x2c
_021220D0:
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, [r4, #8]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_021220E8: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _02122108 ; case 1
	b _02122144 ; case 2
	b _0212216C ; case 3
	b _02122184 ; case 4
	b _02122224 ; case 5
	b _02122250 ; case 6
	ldmfd sp!, {r3, r4, r5, pc} ; case 7
_02122108:
	mov r0, r4
	bl FUN_ov80_0211f8f0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov80_02120da0
	mov r0, r4
	mov r1, #0
	bl FUN_ov80_021213f0
	mov r0, r4
	bl FUN_ov80_0211f658
	mov r0, r4
	mov r1, #2
	bl FUN_ov80_0211f9c0
	ldmfd sp!, {r3, r4, r5, pc}
_02122144:
	mov r0, r4
	bl FUN_ov80_0211f8f0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov80_0211f95c
	mov r0, r4
	mov r1, #3
	bl FUN_ov80_0211f9c0
	ldmfd sp!, {r3, r4, r5, pc}
_0212216C:
	mov r0, r4
	bl FUN_ov80_0211fd0c
	mov r0, r4
	mov r1, #4
	bl FUN_ov80_0211f9c0
	ldmfd sp!, {r3, r4, r5, pc}
_02122184:
	ldr r0, _0212228C ; =0x02099E99
	ldrb r0, [r0]
	cmp r0, #0
	beq _021221D0
	mov r0, r4
	bl FUN_ov80_0211fdbc
	mov r0, r4
	bl FUN_ov80_0211fc74
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	mov r1, #1
	bl FUN_ov80_021213f0
	mov r0, r4
	mov r1, #5
	bl FUN_ov80_0211f9c0
	ldmfd sp!, {r3, r4, r5, pc}
_021221D0:
	bl  FUN_ov1_020db2ac
	cmp r0, #0
	mov r0, r4
	beq _02122218
	bl FUN_ov80_0211fdbc
	mov r0, r4
	bl FUN_ov80_0211fc74
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	mov r1, #1
	bl FUN_ov80_021213f0
	mov r0, r4
	mov r1, #5
	bl FUN_ov80_0211f9c0
	ldmfd sp!, {r3, r4, r5, pc}
_02122218:
	mov r1, #7
	bl FUN_ov80_0211f9c0
	ldmfd sp!, {r3, r4, r5, pc}
_02122224:
	mov r0, r4
	bl FUN_ov80_021219b0
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02122290 ; =0x0209AC44
	mov r1, #0x29
	bl FUN_0202cf6c
	mov r0, #0
	strb r0, [r4, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_02122250:
	ldr r0, _02122284 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, r4
	mov r1, #7
	bl FUN_ov80_0211f9c0
	ldmfd sp!, {r3, r4, r5, pc}
_02122284: .word 0x02099ED4
_02122288: .word 0x0209A110
_0212228C: .word 0x02099E99
_02122290: .word 0x0209AC44
	arm_func_end FUN_ov80_0212206c

	arm_func_start FUN_ov80_02122294
FUN_ov80_02122294: ; 0x02122294
	bx lr
	arm_func_end FUN_ov80_02122294

	arm_func_start FUN_ov80_02122298
FUN_ov80_02122298: ; 0x02122298
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0212246C ; =0x020A0640
	mov r4, #0
	strb r4, [r1, #0x8d]
	mov r5, r0
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r2, [r5, #0x930]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _02122470 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _02122474 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	add r0, r5, #0x39c
	add r0, r0, #0x400
	mov r1, #9
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov80_0211f820
	ldr r7, _02122478 ; =0x0209A250
	mov r6, r4
	b _02122324
_02122300:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x378]
	cmp r1, #0
	beq _02122320
	mov r0, r7
	bl FUN_0202e1c0
	add r0, r5, r4, lsl #2
	str r6, [r0, #0x378]
_02122320:
	add r4, r4, #1
_02122324:
	cmp r4, #0x10
	blt _02122300
	ldr r1, [r5, #0x3b8]
	cmp r1, #0
	beq _02122348
	ldr r0, _02122478 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r5, #0x3b8]
_02122348:
	ldr r0, _0212247C ; =0x0209BA20
	bl FUN_02072020
	add r0, r5, #0x134
	add r0, r0, #0x800
	bl  FUN_ov16_020f52c4
	ldr r0, _02122480 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r0, _02122484 ; =0x02099E99
	ldrb r0, [r0]
	cmp r0, #0
	beq _02122450
	bl FUN_02004f78
	mov r6, #0x20
	mov r7, #0
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl FUN_0200787c
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl FUN_0200787c
	bl FUN_0200505c
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r6
	bl FUN_020026d0
	bl FUN_02004fcc
	mov r1, r6
	bl FUN_020026d0
	bl FUN_0200505c
	mov r1, r6
	bl FUN_020026d0
	ldr r5, _02122488 ; =0x020A6C40
	mov r4, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_0200787c
	mov r0, r5
	mov r1, r4
	bl FUN_020026d0
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_020054dc
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_020055bc
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_0200569c
	ldr r0, _0212248C ; =0x020EAAA4
	sub r2, r6, #0x21
	str r2, [r0]
	ldr r0, _02122490 ; =0x020EAA9D
	mov r1, #1
	strb r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02122450:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	mov r0, r5
	bl  FUN_ov1_020be6f8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212246C: .word 0x020A0640
_02122470: .word 0x02099EB4
_02122474: .word 0x02099ED4
_02122478: .word 0x0209A250
_0212247C: .word 0x0209BA20
_02122480: .word 0x02099F38
_02122484: .word 0x02099E99
_02122488: .word 0x020A6C40
_0212248C: .word 0x020EAAA4
_02122490: .word 0x020EAA9D
	arm_func_end FUN_ov80_02122298

	arm_func_start FUN_ov80_02122494
FUN_ov80_02122494: ; 0x02122494
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov80_02122494

	arm_func_start FUN_ov80_021224a8
FUN_ov80_021224a8: ; 0x021224A8
	ldr r0, [r0, #8]
	arm_func_end FUN_ov80_021224a8

	arm_func_start FUN_ov80_021224ac
FUN_ov80_021224ac: ; 0x021224AC
	bx lr
	arm_func_end FUN_ov80_021224ac

	arm_func_start FUN_ov80_021224b0
FUN_ov80_021224b0: ; 0x021224B0
	bx lr
	arm_func_end FUN_ov80_021224b0
_021224B4:
	.byte 0xB0, 0x27, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0xE0, 0x27, 0x12, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xF0, 0x27, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x80, 0x27, 0x12, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x90, 0x27, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0xA0, 0x27, 0x12, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0xC0, 0x27, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00, 0xD0, 0x27, 0x12, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x20, 0x27, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x30, 0x27, 0x12, 0x02
	.byte 0x0A, 0x00, 0x00, 0x00, 0x40, 0x27, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x50, 0x27, 0x12, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x60, 0x27, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x70, 0x27, 0x12, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x09, 0x00
	.byte 0x30, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x50, 0x00, 0x00, 0x00

	arm_func_start FUN_ov80_02122544
FUN_ov80_02122544: ; 0x02122544
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0212258C ; =0x02122660
	str r0, [r4]
	ldr r0, _02122590 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02122594 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0212258C: .word 0x02122660
_02122590: .word 0x00009CCD
_02122594: .word 0x0000EA3C
	arm_func_end FUN_ov80_02122544

	arm_func_start FUN_ov80_02122598
FUN_ov80_02122598: ; 0x02122598
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _021225E0 ; =0x02122700
	str r0, [r4, #8]
	ldr r0, _021225E4 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _021225E8 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_021225E0: .word 0x02122700
_021225E4: .word 0x00009CCD
_021225E8: .word 0x0000EA3C
	arm_func_end FUN_ov80_02122598

	arm_func_start FUN_ov80_021225ec
FUN_ov80_021225ec: ; 0x021225EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02122634 ; =0x02122A30
	str r0, [r4]
	ldr r0, _02122638 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0212263C ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02122634: .word 0x02122A30
_02122638: .word 0x00009CCD
_0212263C: .word 0x0000EA3C
	arm_func_end FUN_ov80_021225ec
	; 0x02122640

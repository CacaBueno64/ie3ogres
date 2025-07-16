
	.include "/macros/function.inc"
	.include "/include/overlay30.inc"

	.text
	arm_func_start FUN_ov30_02119f00
FUN_ov30_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, #0
	mov r6, #1
	ldr r4, _02119FA8 ; =0x02099F14
	str r5, [r7, #0x6c]
	str r5, [r7, #0x68]
	str r5, [r7, #0x70]
	str r5, [r7, #0x74]
	ldr r0, [r4]
	mov r2, r6
	rsb r1, r6, #0x480
	bl  FUN_ov1_020df1dc
	mov r0, r7
	bl FUN_ov30_0211a174
	mov r0, r7
	bl FUN_ov30_0211a1e4
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov1_020e4304
	ldr r0, [r4]
	mov r1, #0x41
	bl  FUN_ov1_020e4328
	add r0, r7, #8
	mov r1, r5
	mov r2, #0x60
	bl MI_CpuFill8
	str r6, [r7, #8]
	ldr r0, _02119FAC ; =0x02099EF0
	ldr r0, [r0]
	bl  FUN_ov126_0213a418
	ldr r4, _02119FB0 ; =0x0209AC44
	mov r1, r5
	mov r0, r4
	ldr r2, _02119FB4 ; =0x0211A7AC
	mov r3, r5
	bl FUN_0202d4c4
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl FUN_0202d594
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02119FA8: .word unk_02099F14
_02119FAC: .word unk_02099EF0
_02119FB0: .word unk_0209AC44
_02119FB4: .word ov30_0211A7AC
	arm_func_end FUN_ov30_02119f00

	arm_func_start FUN_ov30_02119fb8
FUN_ov30_02119fb8: ; 0x02119FB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0x68]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0211A00C
_02119FD0: ; jump table
	b _0211A00C ; case 0
	b _02119FE8 ; case 1
	b _02119FF0 ; case 2
	b _02119FF8 ; case 3
	b _0211A000 ; case 4
	b _0211A008 ; case 5
_02119FE8:
	bl FUN_ov30_0211a124
	b _0211A00C
_02119FF0:
	bl FUN_ov30_0211a548
	b _0211A00C
_02119FF8:
	bl FUN_ov30_0211a14c
	b _0211A00C
_0211A000:
	bl FUN_ov30_0211a11c
	b _0211A00C
_0211A008:
	bl FUN_ov30_0211a120
_0211A00C:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _0211A030
	ldr r0, _0211A09C ; =0x02099F14
	ldr r0, [r0]
	bl  FUN_ov1_020e3d74
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x68]
_0211A030:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A0A0 ; =0x02099EF0
	mov r5, #0
	ldr r0, [r4]
	mov r1, r5
	mov r6, #1
	bl  FUN_01ff95b0
	ldr r0, _0211A09C ; =0x02099F14
	mov r1, r6
	ldr r0, [r0]
	mov r2, r5
	bl  FUN_ov1_020e03b0
	ldr r0, _0211A0A4 ; =0x02099EE8
	ldr r1, _0211A0A8 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0205ef30
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov132_021435c0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A09C: .word unk_02099F14
_0211A0A0: .word unk_02099EF0
_0211A0A4: .word unk_02099EE8
_0211A0A8: .word unk_0209A110
	arm_func_end FUN_ov30_02119fb8

	arm_func_start FUN_ov30_0211a0ac
FUN_ov30_0211a0ac: ; 0x0211A0AC
	bx lr
	arm_func_end FUN_ov30_0211a0ac

	arm_func_start FUN_ov30_0211a0b0
FUN_ov30_0211a0b0: ; 0x0211A0B0
	stmfd sp!, {r3, lr}
	ldr r0, _0211A0D4 ; =0x02099F14
	mov r1, #1
	ldr r0, [r0]
	bl  FUN_ov1_020df110
	ldr r0, _0211A0D8 ; =0x02099EF0
	ldr r0, [r0]
	bl  FUN_01ffac60
	ldmfd sp!, {r3, pc}
_0211A0D4: .word unk_02099F14
_0211A0D8: .word unk_02099EF0
	arm_func_end FUN_ov30_0211a0b0

	arm_func_start FUN_ov30_0211a0dc
FUN_ov30_0211a0dc: ; 0x0211A0DC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, [r0, #0x68]
	mov r5, r1
	cmp r0, #3
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r4, _0211A114 ; =0x02099EB4
	ldr r0, [r4]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_0210f400
	ldmfd sp!, {r3, r4, r5, pc}
_0211A114: .word unk_02099EB4
	arm_func_end FUN_ov30_0211a0dc

	arm_func_start FUN_ov30_0211a118
FUN_ov30_0211a118: ; 0x0211A118
	bx lr
	arm_func_end FUN_ov30_0211a118

	arm_func_start FUN_ov30_0211a11c
FUN_ov30_0211a11c: ; 0x0211A11C
	bx lr
	arm_func_end FUN_ov30_0211a11c

	arm_func_start FUN_ov30_0211a120
FUN_ov30_0211a120: ; 0x0211A120
	bx lr
	arm_func_end FUN_ov30_0211a120

	arm_func_start FUN_ov30_0211a124
FUN_ov30_0211a124: ; 0x0211A124
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov30_0211a448
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #2
	str r0, [r4, #0x68]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov30_0211a124

	arm_func_start FUN_ov30_0211a14c
FUN_ov30_0211a14c: ; 0x0211A14C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211A170 ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov30_0211a3d8
	ldmfd sp!, {r4, pc}
_0211A170: .word unk_020AF81C
	arm_func_end FUN_ov30_0211a14c

	arm_func_start FUN_ov30_0211a174
FUN_ov30_0211a174: ; 0x0211A174
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211A1DC ; =0x0209A7FC
	mov r4, #0x2000
	ldr r3, [r1, #0xc]
	ldmia r1, {r0, r2, r5}
	mov r1, r4
	sub r0, r5, r0
	sub r6, r3, r2
	bl FX_Div
	mov r5, r0
	mov r0, r6
	mov r1, r4
	bl FX_Div
	mov r1, r5, asr #0xb
	mov r2, r0, asr #0xb
	add r1, r5, r1, lsr #20
	add r2, r0, r2, lsr #20
	ldr r4, _0211A1E0 ; =0x02099EF0
	mov r1, r1, asr #0xc
	ldr r0, [r4]
	mov r2, r2, asr #0xc
	bl  FUN_ov132_02148d74
	ldr r0, [r4]
	mov r1, #1
	bl  FUN_ov132_02148ba4
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1DC: .word unk_0209A7FC
_0211A1E0: .word unk_02099EF0
	arm_func_end FUN_ov30_0211a174

	arm_func_start FUN_ov30_0211a1e4
FUN_ov30_0211a1e4: ; 0x0211A1E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, #0
	mov r5, #6
	mov r10, r0
	ldr r7, _0211A3C0 ; =0x0211A6A4
	mov r11, #2
	mov r6, r5
	mov r4, r9
	b _0211A2BC
_0211A20C:
	mov r0, r9
	bl  FUN_ov16_020efa80
	movs r8, r0
	beq _0211A2C4
	add r1, r7, r9, lsl #3
	add r2, sp, #0x10
	add r3, sp, #0xc
	ldmia r1, {r0, r1}
	bl  FUN_ov16_020efd94 ; may be ov17
	cmp r9, #0
	ldreq r0, [r8, #0x84]
	streqb r6, [r0, #0x1a]
	beq _0211A270
	cmp r9, #1
	ldreq r0, [r8, #0x84]
	streqb r5, [r0, #0x1a]
	beq _0211A270
	cmp r9, #2
	ldreq r0, [r8, #0x84]
	streqb r11, [r0, #0x1a]
	beq _0211A270
	cmp r9, #3
	ldreq r1, [r8, #0x84]
	moveq r0, #2
	streqb r0, [r1, #0x1a]
_0211A270:
	ldr r2, [sp, #0x10]
	ldr r0, [r8, #0x84]
	mov r1, r8
	str r2, [r0]
	ldr r3, [sp, #0xc]
	ldr r0, [r8, #0x84]
	mov r2, r4
	str r3, [r0, #4]
	ldr r0, [r8, #0x84]
	strb r4, [r0, #0x1c]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	ldr r0, [r8, #0x84]
	ldrb r3, [r0, #0x1a]
	ldr r0, _0211A3C4 ; =0x02099F14
	str r4, [sp]
	ldr r0, [r0]
	bl  FUN_ov1_020e3c14
	add r9, r9, #1
_0211A2BC:
	cmp r9, #4
	blt _0211A20C
_0211A2C4:
	ldr r0, _0211A3C8 ; =0x020A9C40
	add r1, sp, #8
	add r2, sp, #4
	bl FUN_02045b50
	ldr r0, _0211A3CC ; =0x0211A674
	mov r9, #0
	ldr r6, [r0, #8]
	ldr r5, [r0, #0xc]
	mov r7, r9
	mov r4, #4
	ldr r11, _0211A3D0 ; =0x02099EF0
	b _0211A3B0
_0211A2F4:
	ldr r0, [r11]
	mov r1, #1
	mov r2, r9
	bl  FUN_ov126_0213939c
	movs r8, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0206cc00
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _0211A334
	ldr r0, _0211A3D4 ; =0x0209A11C
	ldrsh r1, [r8, #0x94]
	ldr r0, [r0]
	bl FUN_0206c5d8
	b _0211A3AC
_0211A334:
	mov r0, r6
	str r7, [sp, #0x10]
	str r7, [sp, #0xc]
	mov r1, r5
	add r2, sp, #0x10
	add r3, sp, #0xc
	str r9, [r10, #0x6c]
	bl  FUN_ov16_020efd94 ; may be ov17
	str r6, [r10, #0x70]
	str r5, [r10, #0x74]
	ldr r2, [sp, #0x10]
	ldr r0, [r8, #0x84]
	mov r1, r8
	str r2, [r0]
	ldr r3, [sp, #0xc]
	ldr r0, [r8, #0x84]
	mov r2, r7
	str r3, [r0, #4]
	ldr r0, [r8, #0x84]
	strb r4, [r0, #0x1a]
	ldr r0, [r8, #0x84]
	strb r7, [r0, #0x1c]
	strh r7, [r0, #0x12]
	strh r7, [r0, #0x14]
	ldr r0, [r8, #0x84]
	ldrb r3, [r0, #0x1a]
	ldr r0, _0211A3C4 ; =0x02099F14
	str r7, [sp]
	ldr r0, [r0]
	bl  FUN_ov1_020e3c14
_0211A3AC:
	add r9, r9, #1
_0211A3B0:
	cmp r9, #4
	blt _0211A2F4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A3C0: .word 0x0211A6A4
_0211A3C4: .word unk_02099F14
_0211A3C8: .word unk_020A9C40
_0211A3CC: .word 0x0211A674
_0211A3D0: .word unk_02099EF0
_0211A3D4: .word unk_0209A11C
	arm_func_end FUN_ov30_0211a1e4

	arm_func_start FUN_ov30_0211a3d8
FUN_ov30_0211a3d8: ; 0x0211A3D8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl  FUN_ov16_020f081c
	mov r2, #0
	ldr r1, _0211A43C ; =0x0209A454
	mov r3, #1
	strb r3, [r1, #0x2e]
	strb r3, [r1, #0x2f]
	strb r2, [r1, #0x30]
	strb r2, [r1, #0x31]
	strb r2, [r1, #0x32]
	strb r2, [r1, #0x33]
	strb r0, [r1, #0x28]
	strb r2, [r1, #0x29]
	strb r2, [r1, #0x2a]
	strb r2, [r1, #0x2b]
	ldr r12, [r4, #4]
	ldr r0, _0211A440 ; =0x020AF81C
	ldr r1, _0211A444 ; =0x0001000C
	mov r3, r2
	str r12, [sp]
	bl FUN_02044798
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211A43C: .word unk_0209A454
_0211A440: .word unk_020AF81C
_0211A444: .word 0x0001000C
	arm_func_end FUN_ov30_0211a3d8

	arm_func_start FUN_ov30_0211a448
FUN_ov30_0211a448: ; 0x0211A448
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r1, _0211A538 ; =0x02099EF0
	mov r6, r0
	mov r4, #1
	ldr r0, [r1]
	ldr r2, [r6, #0x6c]
	mov r1, r4
	bl  FUN_ov126_0213939c
	mov r5, r0
	ldr r0, _0211A53C ; =0x020A9C40
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl FUN_02045b50
	mov r0, #2
	str r0, [r6, #8]
	ldr r2, [sp, #0x10]
	rsb r0, r4, #0x1000
	and r0, r2, r0
	strh r0, [r6, #0xc]
	mov r1, #0
	str r1, [sp]
	ldr r2, [sp, #0xc]
	ldr r0, _0211A540 ; =0x0209BA20
	stmib sp, {r2, r4}
	ldr r3, [sp, #0x10]
	rsb r2, r4, #0x1000
	and r2, r3, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, r1
	bl FUN_0204c778
	ldr r0, _0211A544 ; =0x0209A11C
	ldr r2, [sp, #0x10]
	rsb r1, r4, #0x1000
	and r1, r2, r1
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_0206c718
	str r0, [r6, #0x18]
	mov r0, r5
	bl FUN_0206d6d8
	cmp r0, #0
	beq _0211A508
	ldr r0, [r6, #0x18]
	mov r1, #0x80
	bl FUN_0206d620
_0211A508:
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	ldr r0, [r6, #0x18]
	bl FUN_0206d600
	ldr r0, [r6, #4]
	add r1, r6, #8
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A538: .word unk_02099EF0
_0211A53C: .word unk_020A9C40
_0211A540: .word unk_0209BA20
_0211A544: .word unk_0209A11C
	arm_func_end FUN_ov30_0211a448

	arm_func_start FUN_ov30_0211a548
FUN_ov30_0211a548: ; 0x0211A548
	stmfd sp!, {r4, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov30_0211a570
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov30_0211a548

	arm_func_start FUN_ov30_0211a570
FUN_ov30_0211a570: ; 0x0211A570
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r1, _0211A640 ; =0x02099EF0
	mov r6, r0
	mov r7, #1
	ldr r0, [r1]
	ldr r2, [r6, #0x6c]
	mov r1, r7
	bl  FUN_ov126_0213939c
	mov r4, #0
	str r4, [sp, #8]
	str r4, [sp, #4]
	mov r5, r0
	ldr r0, [r6, #0x74]
	add r2, sp, #8
	add r1, r0, #1
	add r3, sp, #4
	str r1, [r6, #0x74]
	mov r0, #0x80
	bl  FUN_ov16_020efd94 ; may be ov17
	mov r2, r7
	ldr r1, [sp, #8]
	ldr r0, [r5, #0x84]
	ldr r7, _0211A644 ; =0x02099F14
	str r1, [r0]
	ldr r3, [sp, #4]
	ldr r0, [r5, #0x84]
	mov r1, r5
	str r3, [r0, #4]
	ldr r0, [r5, #0x84]
	ldrb r3, [r0, #0x1a]
	str r4, [sp]
	ldr r0, [r7]
	bl  FUN_ov1_020e3c14
	ldr r1, [r6, #0x70]
	ldr r2, [r6, #0x74]
	mov r0, r6
	bl FUN_ov30_0211a648
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r0, #3
	str r0, [r6, #0x68]
	ldr r0, [r5, #0x84]
	mov r1, r5
	ldrb r3, [r0, #0x1a]
	mov r2, r4
	str r4, [sp]
	ldr r0, [r7]
	bl  FUN_ov1_020e3c14
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A640: .word unk_02099EF0
_0211A644: .word unk_02099F14
	arm_func_end FUN_ov30_0211a570

	arm_func_start FUN_ov30_0211a648
FUN_ov30_0211a648: ; 0x0211A648
	cmp r1, #0x80
	cmpeq r2, #0x58
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov30_0211a648

	arm_func_start FUN_ov30_0211a65c
FUN_ov30_0211a65c: ; 0x0211A65C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov30_0211a65c

	arm_func_start FUN_ov30_0211a670
FUN_ov30_0211a670: ; 0x0211A670
	bx lr
	arm_func_end FUN_ov30_0211a670
_0211A674:
	.byte 0x80, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x50, 0x00, 0x00, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x50, 0x00, 0x00, 0x00

	arm_func_start FUN_ov30_0211a6c4
FUN_ov30_0211a6c4: ; 0x0211A6C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211A70C ; =0x0211A720
	str r0, [r4, #8]
	ldr r0, _0211A710 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0211A714 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A70C: .word ov30_0211A720
_0211A710: .word 0x00009CCD
_0211A714: .word 0x0000EA3C
	arm_func_end FUN_ov30_0211a6c4

	.section .sinit, 4
ov30_0211A718:
	.word FUN_ov30_0211a6c4

	.data
	.global ov30_0211A720
ov30_0211A720:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0xA6, 0x11, 0x02, 0x5C, 0xA6, 0x11, 0x02, 0xDC, 0xA0, 0x11, 0x02, 0x18, 0xA1, 0x11, 0x02
	.byte 0x00, 0x9F, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xB8, 0x9F, 0x11, 0x02, 0xAC, 0xA0, 0x11, 0x02
	.byte 0xB0, 0xA0, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov30_0211A7AC
ov30_0211A7AC:
	.byte 0x4A, 0x32, 0x31, 0x2E
	.byte 0x53, 0x41, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

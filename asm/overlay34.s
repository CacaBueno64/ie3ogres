
	.include "/macros/function.inc"
	.include "/include/overlay34.inc"

	.text
	arm_func_start FUN_ov34_02119f00
FUN_ov34_02119f00: ; 0x02119F00
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
	arm_func_end FUN_ov34_02119f00

	arm_func_start FUN_ov34_02119f38
FUN_ov34_02119f38: ; 0x02119F38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	str r1, [r5, #0x50]
	mov r3, #0xe
	mov r4, #1
	mov r1, r2
	str r3, [r5, #0x4c]
	str r2, [r5, #0x58]
	strb r4, [r5, #0x5c]
	bl FUN_ov34_02119f00
	sub r1, r4, #2
	strb r0, [r5, #0x5d]
	str r1, [r5, #0x54]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov34_02119f38

	arm_func_start FUN_ov34_02119f70
FUN_ov34_02119f70: ; 0x02119F70
	stmfd sp!, {r4, lr}
	mov r4, #0
	ldr r0, _02119F98 ; =0x0209BA20
	mov r1, r4
	bl FUN_0205107c
	bl FUN_0204fe48
	cmp r0, #0xb
	movhs r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02119F98: .word unk_0209BA20
	arm_func_end FUN_ov34_02119f70

	arm_func_start FUN_ov34_02119f9c
FUN_ov34_02119f9c: ; 0x02119F9C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl FUN_ov34_02119f70
	cmp r0, #0
	bne _0211A030
	ldr r6, _0211A068 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f64cc
	mov r0, r6
	mov r1, r5
	mov r2, #0x32
	bl  FUN_ov16_020f60f8
	str r5, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r2, #0x18
	mov r0, r6
	mov r1, r5
	mov r3, r5
	str r2, [sp, #8]
	mov r2, #0x33
	bl  FUN_ov16_020f6470
	ldrb r0, [r4, #0x48]
	cmp r0, #0
	bne _0211A01C
	mov r1, #6
	ldr r0, _0211A06C ; =0x04000050
	sub r2, r1, #0xe
	bl FUN_0200462c
_0211A01C:
	mov r0, r4
	mov r1, #2
	bl FUN_ov34_0211ab34
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A030:
	mov r1, #5
	mov r0, r4
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x90]
	ldr r0, [r4, #4]
	mov r2, #0xf
	bl FUN_02041eac
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A068: .word unk_0209F5C0
_0211A06C: .word 0x04000050
	arm_func_end FUN_ov34_02119f9c

	arm_func_start FUN_ov34_0211a070
FUN_ov34_0211a070: ; 0x0211A070
	stmfd sp!, {r4, lr}
	mov r4, #0
	ldr r0, _0211A098 ; =0x0209BA20
	mov r1, r4
	bl FUN_0205107c
	bl FUN_0204fe48
	cmp r0, #0xc
	movhs r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0211A098: .word unk_0209BA20
	arm_func_end FUN_ov34_0211a070

	arm_func_start FUN_ov34_0211a09c
FUN_ov34_0211a09c: ; 0x0211A09C
	ldr r0, _0211A0B4 ; =0x020A0640
	ldrb r0, [r0, #0x50a]
	cmp r0, #2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0211A0B4: .word unk_020A0640
	arm_func_end FUN_ov34_0211a09c

	arm_func_start FUN_ov34_0211a0b8
FUN_ov34_0211a0b8: ; 0x0211A0B8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	bl FUN_ov34_02119f70
	cmp r0, #0
	bne _0211A14C
	ldr r5, _0211A1BC ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f64cc
	mov r0, r5
	mov r1, r4
	mov r2, #0x3b
	bl  FUN_ov16_020f60f8
	str r4, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r2, #0x18
	mov r0, r5
	mov r1, r4
	mov r3, r4
	str r2, [sp, #8]
	mov r2, #0x3c
	bl  FUN_ov16_020f6470
	ldrb r0, [r6, #0x48]
	cmp r0, #0
	bne _0211A138
	mov r1, #6
	ldr r0, _0211A1C0 ; =0x04000050
	sub r2, r1, #0xe
	bl FUN_0200462c
_0211A138:
	mov r0, r6
	mov r1, #5
	bl FUN_ov34_0211ab34
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A14C:
	mov r1, #5
	mov r0, r6
	str r1, [r6, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r5, #0
	mov r4, #0x1b
	ldr r0, [r6, #4]
	mov r1, #1
	str r1, [r0, #0x90]
	ldr r0, [r6, #4]
	mov r1, r5
	mov r2, r4
	bl FUN_02041eac
	ldr r6, _0211A1C4 ; =0x0209A0E0
	ldr r3, _0211A1C8 ; =0x0209A134
	ldr r2, _0211A1CC ; =0x0209A104
	ldr r1, _0211A1D0 ; =0x0209A0FC
	ldr r0, _0211A1D4 ; =0x0209A0D8
	sub r4, r4, #0x1c
	strb r5, [r6]
	str r5, [r3]
	str r5, [r2]
	str r5, [r1]
	strb r4, [r0]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A1BC: .word unk_0209F5C0
_0211A1C0: .word 0x04000050
_0211A1C4: .word unk_0209A0E0
_0211A1C8: .word unk_0209A134
_0211A1CC: .word unk_0209A104
_0211A1D0: .word unk_0209A0FC
_0211A1D4: .word unk_0209A0D8
	arm_func_end FUN_ov34_0211a0b8

	arm_func_start FUN_ov34_0211a1d8
FUN_ov34_0211a1d8: ; 0x0211A1D8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl FUN_ov34_0211a070
	cmp r0, #0
	bne _0211A26C
	ldr r6, _0211A2A8 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f64cc
	mov r0, r6
	mov r1, r5
	mov r2, #0x35
	bl  FUN_ov16_020f60f8
	str r5, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r2, #0x18
	mov r0, r6
	mov r1, r5
	mov r3, r5
	str r2, [sp, #8]
	mov r2, #0x36
	bl  FUN_ov16_020f6470
	ldrb r0, [r4, #0x48]
	cmp r0, #0
	bne _0211A258
	mov r1, #6
	ldr r0, _0211A2AC ; =0x04000050
	sub r2, r1, #0xe
	bl FUN_0200462c
_0211A258:
	mov r0, r4
	mov r1, #3
	bl FUN_ov34_0211ab34
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A26C:
	mov r1, #5
	mov r0, r4
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #2
	str r1, [r0, #0x90]
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xf
	bl FUN_02041eac
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A2A8: .word unk_0209F5C0
_0211A2AC: .word 0x04000050
	arm_func_end FUN_ov34_0211a1d8

	arm_func_start FUN_ov34_0211a2b0
FUN_ov34_0211a2b0: ; 0x0211A2B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #6
	mov r1, #0
	str r2, [r4, #8]
	str r2, [r4, #0x10]
	str r1, [r4, #0x40]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #3
	str r1, [r0, #0x90]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov34_0211a2b0

	arm_func_start FUN_ov34_0211a2e8
FUN_ov34_0211a2e8: ; 0x0211A2E8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl FUN_ov34_0211a09c
	cmp r0, #0
	bne _0211A37C
	ldr r6, _0211A3B0 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f64cc
	mov r0, r6
	mov r1, r5
	mov r2, #0x38
	bl  FUN_ov16_020f60f8
	str r5, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r2, #0x18
	mov r0, r6
	mov r1, r5
	mov r3, r5
	str r2, [sp, #8]
	mov r2, #0x39
	bl  FUN_ov16_020f6470
	ldrb r0, [r4, #0x48]
	cmp r0, #0
	bne _0211A368
	mov r1, #6
	ldr r0, _0211A3B4 ; =0x04000050
	sub r2, r1, #0xe
	bl FUN_0200462c
_0211A368:
	mov r0, r4
	mov r1, #4
	bl FUN_ov34_0211ab34
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A37C:
	mov r2, #6
	mov r1, #7
	mov r0, r4
	str r2, [r4, #8]
	str r1, [r4, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #3
	str r1, [r0, #0x90]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A3B0: .word unk_0209F5C0
_0211A3B4: .word 0x04000050
	arm_func_end FUN_ov34_0211a2e8

	arm_func_start FUN_ov34_0211a3b8
FUN_ov34_0211a3b8: ; 0x0211A3B8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl FUN_ov34_0211a09c
	cmp r0, #0
	bne _0211A44C
	ldr r6, _0211A480 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f64cc
	mov r0, r6
	mov r1, r5
	mov r2, #0x38
	bl  FUN_ov16_020f60f8
	str r5, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r2, #0x18
	mov r0, r6
	mov r1, r5
	mov r3, r5
	str r2, [sp, #8]
	mov r2, #0x39
	bl  FUN_ov16_020f6470
	ldrb r0, [r4, #0x48]
	cmp r0, #0
	bne _0211A438
	mov r1, #6
	ldr r0, _0211A484 ; =0x04000050
	sub r2, r1, #0xe
	bl FUN_0200462c
_0211A438:
	mov r0, r4
	mov r1, #4
	bl FUN_ov34_0211ab34
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A44C:
	mov r2, #6
	mov r1, #8
	mov r0, r4
	str r2, [r4, #8]
	str r1, [r4, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #3
	str r1, [r0, #0x90]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A480: .word unk_0209F5C0
_0211A484: .word 0x04000050
	arm_func_end FUN_ov34_0211a3b8

	arm_func_start FUN_ov34_0211a488
FUN_ov34_0211a488: ; 0x0211A488
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	mov r0, #8
	str r1, [r4, #8]
	bl  FUN_ov16_020f15dc
	mov r0, #7
	bl FUN_02029d44
	ldr r0, [r4, #4]
	mov r1, #4
	str r1, [r0, #0x90]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov34_0211a488

	arm_func_start FUN_ov34_0211a4b8
FUN_ov34_0211a4b8: ; 0x0211A4B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #5
	str r4, [r5, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r5, #4]
	mov r1, #0
	str r4, [r0, #0x90]
	ldr r0, [r5, #4]
	mov r2, #0x1a
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov34_0211a4b8

	arm_func_start FUN_ov34_0211a4f0
FUN_ov34_0211a4f0: ; 0x0211A4F0
	stmfd sp!, {r3, lr}
	mov r1, #5
	str r1, [r0, #8]
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #8
	bl FUN_02029d44
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov34_0211a4f0

	arm_func_start FUN_ov34_0211a510
FUN_ov34_0211a510: ; 0x0211A510
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r1, #5
	mov r0, #6
	str r1, [r4, #8]
	bl  FUN_ov16_020f153c
	ldr r5, [r4, #4]
	mov r4, #0x11
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov34_0211a510

	arm_func_start FUN_ov34_0211a554
FUN_ov34_0211a554: ; 0x0211A554
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x1b
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov34_0211a554

	arm_func_start FUN_ov34_0211a584
FUN_ov34_0211a584: ; 0x0211A584
	stmfd sp!, {r4, lr}
	ldr r1, _0211A5C0 ; =0x020A0640
	mov r2, #1
	mov r4, r0
	strb r2, [r1, #0x87]
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x21
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
_0211A5C0: .word unk_020A0640
	arm_func_end FUN_ov34_0211a584

	arm_func_start FUN_ov34_0211a5c4
FUN_ov34_0211a5c4: ; 0x0211A5C4
	stmfd sp!, {r4, lr}
	ldr r1, _0211A600 ; =0x020A0640
	mov r2, #1
	mov r4, r0
	strb r2, [r1, #0x88]
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x21
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
_0211A600: .word unk_020A0640
	arm_func_end FUN_ov34_0211a5c4

	arm_func_start FUN_ov34_0211a604
FUN_ov34_0211a604: ; 0x0211A604
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211A61C: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211A640 ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	ldmfd sp!, {r4, r5, r6, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, pc} ; case 5
	b _0211A688 ; case 6
	b _0211A6A8 ; case 7
	b _0211A6C4 ; case 8
_0211A640:
	ldr r0, [r4, #4]
	mov r5, #0
	str r5, [r0, #0x90]
	mov r1, #5
	mov r0, #6
	str r1, [r4, #8]
	bl  FUN_ov16_020f153c
	ldr r6, [r4, #4]
	mov r4, #0xa
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02041eac
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_0211A688:
	mov r2, #6
	mov r1, #1
	str r2, [r4, #8]
	str r1, [r4, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A6A8:
	mov r1, #6
	str r1, [r4, #8]
	str r1, [r4, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A6C4:
	mov r1, #6
	str r1, [r4, #8]
	str r1, [r4, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov34_0211a604

	arm_func_start FUN_ov34_0211a6e0
FUN_ov34_0211a6e0: ; 0x0211A6E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r3, [r4, #0x2c]
	ldr r1, _0211A8E8 ; =0x020A0640
	cmp r3, #0x23
	mov r2, #0
	bgt _0211A798
	cmp r3, #0x23
	bge _0211A854
	cmp r3, #0x14
	bgt _0211A764
	bge _0211A82C
	cmp r3, #0xe
	bgt _0211A758
	bge _0211A818
	cmp r3, #0xb
	addls pc, pc, r3, lsl #2
	ldmfd sp!, {r4, pc}
_0211A728: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211A894 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	b _0211A7FC ; case 5
	ldmfd sp!, {r4, pc} ; case 6
	ldmfd sp!, {r4, pc} ; case 7
	b _0211A808 ; case 8
	ldmfd sp!, {r4, pc} ; case 9
	ldmfd sp!, {r4, pc} ; case 10
	b _0211A810 ; case 11
_0211A758:
	cmp r3, #0x11
	beq _0211A820
	ldmfd sp!, {r4, pc}
_0211A764:
	cmp r3, #0x1a
	bgt _0211A77C
	bge _0211A83C
	cmp r3, #0x17
	beq _0211A834
	ldmfd sp!, {r4, pc}
_0211A77C:
	cmp r3, #0x1d
	bgt _0211A78C
	beq _0211A844
	ldmfd sp!, {r4, pc}
_0211A78C:
	cmp r3, #0x20
	beq _0211A84C
	ldmfd sp!, {r4, pc}
_0211A798:
	cmp r3, #0x2f
	bgt _0211A7C8
	bge _0211A884
	cmp r3, #0x29
	bgt _0211A7BC
	bge _0211A868
	cmp r3, #0x26
	beq _0211A85C
	ldmfd sp!, {r4, pc}
_0211A7BC:
	cmp r3, #0x2c
	beq _0211A874
	ldmfd sp!, {r4, pc}
_0211A7C8:
	cmp r3, #0x36
	bgt _0211A7E0
	bge _0211A89C
	cmp r3, #0x33
	beq _0211A89C
	ldmfd sp!, {r4, pc}
_0211A7E0:
	cmp r3, #0x39
	bgt _0211A7F0
	beq _0211A8C4
	ldmfd sp!, {r4, pc}
_0211A7F0:
	cmp r3, #0x3c
	beq _0211A89C
	ldmfd sp!, {r4, pc}
_0211A7FC:
	strb r2, [r1, #0x89]
	bl FUN_ov34_02119f9c
	ldmfd sp!, {r4, pc}
_0211A808:
	bl FUN_ov34_0211a0b8
	ldmfd sp!, {r4, pc}
_0211A810:
	bl FUN_ov34_0211a1d8
	ldmfd sp!, {r4, pc}
_0211A818:
	bl FUN_ov34_0211a2b0
	ldmfd sp!, {r4, pc}
_0211A820:
	mov r0, r4
	bl FUN_ov34_0211a488
	ldmfd sp!, {r4, pc}
_0211A82C:
	bl FUN_ov34_0211a4b8
	ldmfd sp!, {r4, pc}
_0211A834:
	bl FUN_ov34_0211a4f0
	ldmfd sp!, {r4, pc}
_0211A83C:
	bl FUN_ov34_0211a510
	ldmfd sp!, {r4, pc}
_0211A844:
	bl FUN_ov34_0211a554
	ldmfd sp!, {r4, pc}
_0211A84C:
	bl FUN_ov34_0211a2e8
	ldmfd sp!, {r4, pc}
_0211A854:
	bl FUN_ov34_0211a3b8
	ldmfd sp!, {r4, pc}
_0211A85C:
	strb r2, [r1, #0x89]
	bl FUN_ov34_0211a584
	ldmfd sp!, {r4, pc}
_0211A868:
	strb r2, [r1, #0x89]
	bl FUN_ov34_0211a5c4
	ldmfd sp!, {r4, pc}
_0211A874:
	mov r2, #1
	strb r2, [r1, #0x89]
	bl FUN_ov34_0211a584
	ldmfd sp!, {r4, pc}
_0211A884:
	mov r2, #1
	strb r2, [r1, #0x89]
	bl FUN_ov34_0211a5c4
	ldmfd sp!, {r4, pc}
_0211A894:
	bl FUN_ov34_0211a604
	ldmfd sp!, {r4, pc}
_0211A89C:
	ldr r0, _0211A8EC ; =0x04000050
	mov r1, #0xf
	mov r2, #0
	bl FUN_0200462c
	mov r0, r4
	mov r1, #1
	bl FUN_ov34_0211ab34
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211A8C4:
	ldr r0, _0211A8EC ; =0x04000050
	mov r1, #0xf
	bl FUN_0200462c
	mov r0, r4
	mov r1, #6
	bl FUN_ov34_0211ab34
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211A8E8: .word unk_020A0640
_0211A8EC: .word 0x04000050
	arm_func_end FUN_ov34_0211a6e0

	arm_func_start FUN_ov34_0211a8f0
FUN_ov34_0211a8f0: ; 0x0211A8F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r3, [r5, #0x38]
	mov r6, r2
	add r0, r1, r3
	mov r1, r3
	bl FUN_0201f9bc
	mov r4, r1
	cmp r6, #0
	bne _0211A938
	ldr r0, [r5, #0x34]
	cmp r0, r4
	beq _0211A938
	ldr r0, _0211AA14 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #0
	b _0211A93C
_0211A938:
	mov r0, #1
_0211A93C:
	strb r0, [r5, #0x16]
	ldr r0, [r5, #0xc]
	str r4, [r5, #0x34]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211A954: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211A978 ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	ldmfd sp!, {r4, r5, r6, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, pc} ; case 5
	b _0211A99C ; case 6
	b _0211A9C4 ; case 7
	b _0211A9EC ; case 8
_0211A978:
	ldr r1, _0211AA18 ; =0x0211D524
	ldr r0, _0211AA1C ; =0x0211D528
	ldr r1, [r1, r4, lsl #3]
	ldr r2, [r0, r4, lsl #3]
	mov r0, r5
	bl FUN_ov34_02119f38
	ldr r0, [r5, #0x34]
	str r0, [r5, #0x3c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A99C:
	ldr r1, _0211AA18 ; =0x0211D524
	add r2, r4, #6
	ldr r0, _0211AA1C ; =0x0211D528
	ldr r1, [r1, r2, lsl #3]
	ldr r2, [r0, r2, lsl #3]
	mov r0, r5
	bl FUN_ov34_02119f38
	ldr r0, [r5, #0x34]
	str r0, [r5, #0x40]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A9C4:
	ldr r1, _0211AA18 ; =0x0211D524
	add r2, r4, #0xb
	ldr r0, _0211AA1C ; =0x0211D528
	ldr r1, [r1, r2, lsl #3]
	ldr r2, [r0, r2, lsl #3]
	mov r0, r5
	bl FUN_ov34_02119f38
	mov r0, #0
	str r0, [r5, #0x44]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A9EC:
	ldr r1, _0211AA18 ; =0x0211D524
	add r2, r4, #0xd
	ldr r0, _0211AA1C ; =0x0211D528
	ldr r1, [r1, r2, lsl #3]
	ldr r2, [r0, r2, lsl #3]
	mov r0, r5
	bl FUN_ov34_02119f38
	mov r0, #0
	str r0, [r5, #0x44]
	ldmfd sp!, {r4, r5, r6, pc}
_0211AA14: .word unk_0209AC44
_0211AA18: .word ov34_0211D524
_0211AA1C: .word ov34_0211D528
	arm_func_end FUN_ov34_0211a8f0

	arm_func_start FUN_ov34_0211aa20
FUN_ov34_0211aa20: ; 0x0211AA20
	cmp r1, #0x1d
	bgt _0211AAB0
	bge _0211AB0C
	cmp r1, #0x14
	bgt _0211AA94
	bge _0211AB24
	cmp r1, #0xe
	bgt _0211AA88
	cmp r1, #0
	addge pc, pc, r1, lsl #2
	b _0211AB2C
_0211AA4C: ; jump table
	b _0211AB2C ; case 0
	b _0211AB2C ; case 1
	b _0211AB2C ; case 2
	b _0211AB2C ; case 3
	b _0211AB2C ; case 4
	b _0211AAFC ; case 5
	b _0211AB2C ; case 6
	b _0211AB2C ; case 7
	b _0211AB04 ; case 8
	b _0211AB2C ; case 9
	b _0211AB2C ; case 10
	b _0211AB0C ; case 11
	b _0211AB2C ; case 12
	b _0211AB2C ; case 13
	b _0211AB14 ; case 14
_0211AA88:
	cmp r1, #0x11
	beq _0211AB1C
	b _0211AB2C
_0211AA94:
	cmp r1, #0x17
	bgt _0211AAA4
	beq _0211AAFC
	b _0211AB2C
_0211AAA4:
	cmp r1, #0x1a
	beq _0211AB04
	b _0211AB2C
_0211AAB0:
	cmp r1, #0x26
	bgt _0211AAD8
	bge _0211AAFC
	cmp r1, #0x20
	bgt _0211AACC
	beq _0211AB14
	b _0211AB2C
_0211AACC:
	cmp r1, #0x23
	beq _0211AB1C
	b _0211AB2C
_0211AAD8:
	cmp r1, #0x2c
	bgt _0211AAF0
	bge _0211AAFC
	cmp r1, #0x29
	beq _0211AB04
	b _0211AB2C
_0211AAF0:
	cmp r1, #0x2f
	beq _0211AB04
	b _0211AB2C
_0211AAFC:
	mov r0, #0
	bx lr
_0211AB04:
	mov r0, #1
	bx lr
_0211AB0C:
	mov r0, #2
	bx lr
_0211AB14:
	mov r0, #3
	bx lr
_0211AB1C:
	mov r0, #4
	bx lr
_0211AB24:
	mov r0, #5
	bx lr
_0211AB2C:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov34_0211aa20

	arm_func_start FUN_ov34_0211ab34
FUN_ov34_0211ab34: ; 0x0211AB34
	str r1, [r0, #0xc]
	cmp r1, #8
	mov r3, #0
	addls pc, pc, r1, lsl #2
	b _0211ABE0
_0211AB48: ; jump table
	b _0211ABE0 ; case 0
	b _0211AB6C ; case 1
	b _0211ABAC ; case 2
	b _0211ABAC ; case 3
	b _0211ABAC ; case 4
	b _0211ABAC ; case 5
	b _0211ABB4 ; case 6
	b _0211ABD0 ; case 7
	b _0211ABD4 ; case 8
_0211AB6C:
	ldr r1, [r0, #0x2c]
	cmp r1, #0x3c
	moveq r1, #2
	streq r1, [r0, #0x34]
	beq _0211AB90
	cmp r1, #0x36
	moveq r1, #1
	streq r1, [r0, #0x34]
	strne r3, [r0, #0x34]
_0211AB90:
	ldrb r1, [r0, #0x48]
	mov r2, #5
	str r2, [r0, #0x38]
	cmp r1, #0
	movne r1, #6
	strne r1, [r0, #0x38]
	b _0211ABE0
_0211ABAC:
	str r3, [r0, #0x38]
	b _0211ABE0
_0211ABB4:
	ldr r1, [r0, #0x2c]
	cmp r1, #0x39
	moveq r1, #3
	streq r1, [r0, #0x34]
	strne r3, [r0, #0x34]
	mov r1, #5
	b _0211ABDC
_0211ABD0:
	b _0211ABD4
_0211ABD4:
	mov r1, #2
	str r3, [r0, #0x34]
_0211ABDC:
	str r1, [r0, #0x38]
_0211ABE0:
	str r3, [r0, #0x2c]
	bx lr
	arm_func_end FUN_ov34_0211ab34

	arm_func_start FUN_ov34_0211abe8
FUN_ov34_0211abe8: ; 0x0211ABE8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r7, r1
	cmp r0, #4
	ldreqb r0, [r5, #0x15]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211AE88 ; =0x0209F5C0
	mov r4, #0
	mov r0, r6
	mov r1, r4
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	tst r7, #1
	beq _0211ADA8
	ldr r0, [r5, #0xc]
	sub r6, r4, #1
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0211AD74
_0211AC40: ; jump table
	b _0211AD74 ; case 0
	b _0211AC64 ; case 1
	b _0211AD48 ; case 2
	b _0211AD54 ; case 3
	b _0211AD60 ; case 4
	b _0211AD6C ; case 5
	b _0211ACBC ; case 6
	b _0211AD08 ; case 7
	b _0211AD28 ; case 8
_0211AC64:
	ldr r6, [r5, #0x34]
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _0211AD74
_0211AC74: ; jump table
	b _0211AC8C ; case 0
	b _0211AC94 ; case 1
	b _0211AC9C ; case 2
	b _0211ACA4 ; case 3
	b _0211ACAC ; case 4
	b _0211ACB4 ; case 5
_0211AC8C:
	mov r4, #5
	b _0211AD74
_0211AC94:
	mov r4, #8
	b _0211AD74
_0211AC9C:
	mov r4, #0xb
	b _0211AD74
_0211ACA4:
	mov r4, #0xe
	b _0211AD74
_0211ACAC:
	mov r4, #0x11
	b _0211AD74
_0211ACB4:
	mov r4, #0x14
	b _0211AD74
_0211ACBC:
	ldr r6, [r5, #0x34]
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _0211AD74
_0211ACCC: ; jump table
	b _0211ACE0 ; case 0
	b _0211ACE8 ; case 1
	b _0211ACF0 ; case 2
	b _0211ACF8 ; case 3
	b _0211AD00 ; case 4
_0211ACE0:
	mov r4, #0x17
	b _0211AD74
_0211ACE8:
	mov r4, #0x1a
	b _0211AD74
_0211ACF0:
	mov r4, #0x1d
	b _0211AD74
_0211ACF8:
	mov r4, #0x20
	b _0211AD74
_0211AD00:
	mov r4, #0x23
	b _0211AD74
_0211AD08:
	ldr r6, [r5, #0x34]
	cmp r6, #0
	beq _0211AD20
	cmp r6, #1
	moveq r4, #0x29
	b _0211AD74
_0211AD20:
	mov r4, #0x26
	b _0211AD74
_0211AD28:
	ldr r6, [r5, #0x34]
	cmp r6, #0
	beq _0211AD40
	cmp r6, #1
	moveq r4, #0x2f
	b _0211AD74
_0211AD40:
	mov r4, #0x2c
	b _0211AD74
_0211AD48:
	mov r6, #6
	mov r4, #0x33
	b _0211AD74
_0211AD54:
	mov r6, #7
	mov r4, #0x36
	b _0211AD74
_0211AD60:
	mov r6, #8
	mov r4, #0x39
	b _0211AD74
_0211AD6C:
	mov r6, #9
	mov r4, #0x3c
_0211AD74:
	cmp r6, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AE8C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add r0, r5, r6
	ldrb r1, [r0, #0x60]
	ldr r0, _0211AE88 ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	str r4, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADA8:
	tst r7, #2
	beq _0211ADEC
	ldr r0, [r5, #0xc]
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #4
	cmpne r0, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AE8C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x6a]
	mov r0, r6
	bl  FUN_ov16_020f6530
	mov r0, #2
	str r0, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADEC:
	tst r7, #0x40
	beq _0211AE3C
	ldr r0, [r5, #0xc]
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #4
	cmpne r0, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0x34]
	mov r0, r5
	mov r2, r4
	sub r1, r1, #1
	bl FUN_ov34_0211a8f0
	ldr r1, [r5, #0x34]
	ldr r0, _0211AE90 ; =0x0209A070
	add r1, r5, r1
	ldrb r1, [r1, #0x60]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AE3C:
	tst r7, #0x80
	ldrne r0, [r5, #0xc]
	cmpne r0, #2
	cmpne r0, #3
	cmpne r0, #4
	cmpne r0, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0x34]
	mov r0, r5
	mov r2, r4
	add r1, r1, #1
	bl FUN_ov34_0211a8f0
	ldr r1, [r5, #0x34]
	ldr r0, _0211AE90 ; =0x0209A070
	add r1, r5, r1
	ldrb r1, [r1, #0x60]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AE88: .word unk_0209F5C0
_0211AE8C: .word unk_0209AC44
_0211AE90: .word unk_0209A070
	arm_func_end FUN_ov34_0211abe8

	arm_func_start FUN_ov34_0211ae94
FUN_ov34_0211ae94: ; 0x0211AE94
	ldr r0, _0211AEAC ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211AEB0 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211AEAC: .word unk_0209F5C0
_0211AEB0: .word  FUN_ov16_020f6b3c
	arm_func_end FUN_ov34_0211ae94

	arm_func_start FUN_ov34_0211aeb4
FUN_ov34_0211aeb4: ; 0x0211AEB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x20]
	bl FUN_ov34_0211aa20
	movs r1, r0
	bmi _0211AEE4
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _0211AEE4
	mov r0, r4
	mov r2, #0
	bl FUN_ov34_0211a8f0
_0211AEE4:
	ldr r1, [r4, #0x20]
	ldr r0, _0211AEF4 ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211AEF4: .word unk_0209A070
	arm_func_end FUN_ov34_0211aeb4

	arm_func_start FUN_ov34_0211aef8
FUN_ov34_0211aef8: ; 0x0211AEF8
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	cmp r0, r1
	bne _0211AF18
	ldr r0, _0211AF3C ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211AF18:
	ldr r4, _0211AF3C ; =0x0209A070
	mov r0, r4
	bl  FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211AF3C: .word unk_0209A070
	arm_func_end FUN_ov34_0211aef8

	arm_func_start FUN_ov34_0211af40
FUN_ov34_0211af40: ; 0x0211AF40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x24]
	mov r4, #1
	cmp r0, #0x23
	bgt _0211AFF0
	bge _0211B060
	cmp r0, #0x14
	bgt _0211AFBC
	bge _0211B060
	cmp r0, #0xe
	bgt _0211AFB0
	bge _0211B060
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _0211B08C
_0211AF80: ; jump table
	b _0211B08C ; case 0
	b _0211B08C ; case 1
	b _0211B054 ; case 2
	b _0211B08C ; case 3
	b _0211B08C ; case 4
	b _0211B060 ; case 5
	b _0211B08C ; case 6
	b _0211B08C ; case 7
	b _0211B060 ; case 8
	b _0211B08C ; case 9
	b _0211B08C ; case 10
	b _0211B060 ; case 11
_0211AFB0:
	cmp r0, #0x11
	beq _0211B060
	b _0211B08C
_0211AFBC:
	cmp r0, #0x1a
	bgt _0211AFD4
	bge _0211B060
	cmp r0, #0x17
	beq _0211B060
	b _0211B08C
_0211AFD4:
	cmp r0, #0x1d
	bgt _0211AFE4
	beq _0211B060
	b _0211B08C
_0211AFE4:
	cmp r0, #0x20
	beq _0211B060
	b _0211B08C
_0211AFF0:
	cmp r0, #0x2f
	bgt _0211B020
	bge _0211B060
	cmp r0, #0x29
	bgt _0211B014
	bge _0211B060
	cmp r0, #0x26
	beq _0211B060
	b _0211B08C
_0211B014:
	cmp r0, #0x2c
	beq _0211B060
	b _0211B08C
_0211B020:
	cmp r0, #0x36
	bgt _0211B038
	bge _0211B080
	cmp r0, #0x33
	beq _0211B080
	b _0211B08C
_0211B038:
	cmp r0, #0x39
	bgt _0211B048
	beq _0211B080
	b _0211B08C
_0211B048:
	cmp r0, #0x3c
	beq _0211B080
	b _0211B08C
_0211B054:
	ldr r0, _0211B0E0 ; =0x0209AC44
	mov r1, #4
	b _0211B088
_0211B060:
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	moveq r4, #0
	beq _0211B08C
	ldr r0, _0211B0E0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	b _0211B08C
_0211B080:
	ldr r0, _0211B0E0 ; =0x0209AC44
	mov r1, #1
_0211B088:
	bl FUN_0202cf6c
_0211B08C:
	ldr r7, _0211B0E4 ; =0x0209A070
	ldr r1, [r5, #0x20]
	mov r0, r7
	bl  FUN_ov16_020f6d3c
	movs r6, r0
	bmi _0211B0C8
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	cmp r4, #0
	beq _0211B0C8
	ldr r0, _0211B0E8 ; =0x0209F5C0
	mov r1, r6
	bl  FUN_ov16_020f6530
_0211B0C8:
	ldr r0, [r5, #0x20]
	cmp r4, #0
	str r0, [r5, #0x2c]
	moveq r0, #0
	streq r0, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0E0: .word unk_0209AC44
_0211B0E4: .word unk_0209A070
_0211B0E8: .word unk_0209F5C0
	arm_func_end FUN_ov34_0211af40

	arm_func_start FUN_ov34_0211b0ec
FUN_ov34_0211b0ec: ; 0x0211B0EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B1D8 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211B19C
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0211B168
	mov r0, #1
	strb r0, [r4, #0x15]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov34_0211ae94
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0211B168
	mov r0, r4
	bl FUN_ov34_0211aeb4
_0211B168:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x18]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x1c]
	bl FUN_ov34_0211ae94
	ldr r1, [r4, #0x20]
	str r0, [r4, #0x24]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov34_0211aef8
	ldmfd sp!, {r3, r4, r5, pc}
_0211B19C:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	ldrne r1, [r4, #0x20]
	cmpne r1, #0
	beq _0211B1C4
	ldr r0, [r4, #0x24]
	cmp r0, r1
	bne _0211B1C4
	mov r0, r4
	bl FUN_ov34_0211af40
_0211B1C4:
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	strb r0, [r4, #0x15]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B1D8: .word unk_0209F5C0
	arm_func_end FUN_ov34_0211b0ec

	arm_func_start FUN_ov34_0211b1dc
FUN_ov34_0211b1dc: ; 0x0211B1DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x6c
	mov r1, #0
	mov r2, #0xc0
	bl MI_CpuFill8
	ldr r0, _0211B20C ; =0x0211D59C
	add r1, r4, #0x6c
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211B20C: .word ov34_0211D59C
	arm_func_end FUN_ov34_0211b1dc

	arm_func_start FUN_ov34_0211b210
FUN_ov34_0211b210: ; 0x0211B210
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x6c]
	cmp r6, #0
	ldrne r7, _0211B258 ; =0x0211CDD8
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x6c
	mov r4, #0xc
_0211B234:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211B234
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B258: .word 0x0211CDD8
	arm_func_end FUN_ov34_0211b210

	arm_func_start FUN_ov34_0211b25c
FUN_ov34_0211b25c: ; 0x0211B25C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x6c
	mov r4, #0xc
_0211B26C:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x10
	blt _0211B26C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov34_0211b25c

	arm_func_start FUN_ov34_0211b284
FUN_ov34_0211b284: ; 0x0211B284
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
	bl  FUN_ov16_020f18e8
	mov r7, r0
	cmp r5, #0
	beq _0211B2DC
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl  FUN_ov16_020f19d4
	str r0, [r5]
_0211B2DC:
	cmp r6, #0
	blt _0211B2F4
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl  FUN_ov16_020f1138
_0211B2F4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov34_0211b284

	arm_func_start FUN_ov34_0211b2fc
FUN_ov34_0211b2fc: ; 0x0211B2FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl FUN_0200505c
	mov r8, #0x20
	mov r9, #0
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r8
	bl DC_FlushRange
	mov r5, #6
	str r8, [sp, #8]
	mov r7, #3
	str r7, [sp]
	add r6, sp, #8
	mov r0, r10
	str r6, [sp, #4]
	mov r1, #8
	mov r2, r9
	mov r3, r5
	bl FUN_ov34_0211b284
	str r7, [sp]
	mov r4, #9
	mov r11, #7
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r4
	mov r3, r11
	bl FUN_ov34_0211b284
	str r7, [sp]
	mov r2, r0
	mov r3, #8
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0xa
	bl FUN_ov34_0211b284
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #5
	mov r3, r7
	bl FUN_ov34_0211b284
	str r7, [sp]
	mov r2, r0
	mov r1, r11
	mov r3, #0xa
	str r6, [sp, #4]
	mov r0, r10
	bl FUN_ov34_0211b284
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0xb
	mov r3, #5
	bl FUN_ov34_0211b284
	str r7, [sp]
	mov r2, r0
	mov r3, r4
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0xc
	bl FUN_ov34_0211b284
	str r7, [sp]
	mov r2, r0
	mov r3, #5
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0xd
	bl FUN_ov34_0211b284
	str r7, [sp]
	mov r2, r0
	mov r0, r10
	mov r1, #0xe
	mov r3, r7
	str r6, [sp, #4]
	bl FUN_ov34_0211b284
	bl FUN_02004f78
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r8
	bl DC_FlushRange
	mov r11, #2
	str r8, [sp, #8]
	mov r4, #1
	stmia sp, {r4, r6}
	mov r0, r10
	mov r1, r11
	mov r2, r9
	mov r3, r11
	bl FUN_ov34_0211b284
	mov r2, r0
	stmia sp, {r4, r6}
	mov r0, r10
	mov r1, r7
	mov r3, r7
	bl FUN_ov34_0211b284
	mov r1, #4
	mov r2, r0
	stmia sp, {r4, r6}
	mov r0, r10
	mov r3, r1
	bl FUN_ov34_0211b284
	mov r2, r0
	mov r1, r5
	stmia sp, {r4, r6}
	mov r0, r10
	mov r3, r7
	bl FUN_ov34_0211b284
	mov r2, r0
	mov r3, r7
	mov r0, r10
	mov r1, #0xf
	stmia sp, {r4, r6}
	bl FUN_ov34_0211b284
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r8
	bl DC_FlushRange
	str r8, [sp, #8]
	str r11, [sp]
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r4
	mov r3, r4
	mov r2, r9
	bl FUN_ov34_0211b284
	ldr r3, [r10, #0x78]
	cmp r3, #0
	beq _0211B548
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r9
	add r0, r3, r0
	bl FUN_020055bc
_0211B548:
	bl  FUN_ov16_020f10ac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov34_0211b2fc

	arm_func_start FUN_ov34_0211b554
FUN_ov34_0211b554: ; 0x0211B554
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r1, [r10, #0x84]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	mov r4, #0
	add r9, r1, r0
	mov r0, #0x18
	mov r8, #0x1a
	mov r7, #0x15
	mov r6, #6
	mov r5, #3
	mov r11, #0x30
	strh r0, [sp, #0x22]
	mov r0, #2
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r5, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r11, [sp, #0x20]
	str r9, [sp, #0x28]
	str r4, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _0211B67C ; =0x0209F5C0
	mov r1, r4
	mov r2, #1
	mov r3, #2
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, #0x18
	add r1, r9, #0x24
	strh r0, [sp, #0x22]
	mov r0, #2
	strb r0, [sp, #0x24]
	str r1, [sp, #0x28]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r11, [sp, #0x20]
	strh r5, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	str r4, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _0211B67C ; =0x0209F5C0
	mov r1, r4
	mov r2, #1
	mov r3, r5
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211B67C ; =0x0209F5C0
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
	mov r0, #2
	str r0, [sp]
	mov r1, r0
	ldr r0, _0211B680 ; =0x0209A070
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x6a]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B67C: .word unk_0209F5C0
_0211B680: .word unk_0209A070
	arm_func_end FUN_ov34_0211b554

	arm_func_start FUN_ov34_0211b684
FUN_ov34_0211b684: ; 0x0211B684
	ldr r3, [r0, #0xc]
	cmp r3, #8
	addls pc, pc, r3, lsl #2
	b _0211B77C
_0211B694: ; jump table
	b _0211B77C ; case 0
	b _0211B6B8 ; case 1
	b _0211B6E4 ; case 2
	b _0211B6E4 ; case 3
	b _0211B6E4 ; case 4
	b _0211B6E4 ; case 5
	b _0211B6F8 ; case 6
	b _0211B724 ; case 7
	b _0211B750 ; case 8
_0211B6B8:
	mov r3, #3
	str r3, [r1]
	ldr r1, [r0, #0x34]
	mov r0, #0x28
	mul r0, r1, r0
	add r1, r0, #0x10
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [r2]
	bx lr
_0211B6E4:
	mov r0, #0
	str r0, [r1]
	mov r0, #0x18
	str r0, [r2]
	bx lr
_0211B6F8:
	mov r3, #2
	str r3, [r1]
	ldr r1, [r0, #0x34]
	mov r0, #0x38
	mul r0, r1, r0
	add r1, r0, #0x30
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [r2]
	bx lr
_0211B724:
	mov r3, #2
	str r3, [r1]
	ldr r1, [r0, #0x34]
	mov r0, #0x28
	mul r0, r1, r0
	add r1, r0, #0x60
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [r2]
	bx lr
_0211B750:
	mov r3, #2
	str r3, [r1]
	ldr r1, [r0, #0x34]
	mov r0, #0x28
	mul r0, r1, r0
	add r1, r0, #0x60
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [r2]
	bx lr
_0211B77C:
	mov r0, #0
	str r0, [r1]
	str r0, [r2]
	bx lr
	arm_func_end FUN_ov34_0211b684

	arm_func_start FUN_ov34_0211b78c
FUN_ov34_0211b78c: ; 0x0211B78C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r2, [r6, #0xcc]
	cmp r2, #0
	beq _0211B810
	mov r5, #0x32
	mov r4, #0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldr r7, _0211B8C8 ; =0x0209F5C0
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r7
	add r12, r2, r1
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
_0211B810:
	ldr r1, [r6, #0xe4]
	cmp r1, #0
	beq _0211B8A0
	ldr r0, [r1, #0xc]
	mov r7, #0
	add r12, r1, r0
	mov r3, #0xd
	mov r2, #6
	mov r1, #3
	mov r0, #8
	strh r2, [sp, #0x24]
	strh r1, [sp, #0x26]
	strb r0, [sp, #0x30]
	strh r3, [sp, #0x20]
	strh r3, [sp, #0x22]
	mov r4, #0x33
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	strh r7, [sp, #0x2c]
	strh r7, [sp, #0x2e]
	str r12, [sp, #0x34]
	add r0, sp, #0x20
	str r7, [sp]
	stmib sp, {r0, r7}
	ldr r5, _0211B8C8 ; =0x0209F5C0
	str r7, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl  FUN_ov16_020f6084
_0211B8A0:
	ldr r0, _0211B8CC ; =0x0209A070
	mov r4, #3
	mov r1, #0x34
	mov r2, #0x33
	mov r3, #0
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r6, #0x66]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B8C8: .word unk_0209F5C0
_0211B8CC: .word unk_0209A070
	arm_func_end FUN_ov34_0211b78c

	arm_func_start FUN_ov34_0211b8d0
FUN_ov34_0211b8d0: ; 0x0211B8D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r2, [r6, #0xd8]
	cmp r2, #0
	beq _0211B950
	mov r5, #0x35
	mov r4, #0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #7
	str r1, [sp, #0xc]
	mov r0, #0x1e
	ldr r7, _0211BA08 ; =0x0209F5C0
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r7
	add r12, r2, r1
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
_0211B950:
	ldr r1, [r6, #0xe4]
	cmp r1, #0
	beq _0211B9E0
	ldr r0, [r1, #0xc]
	mov r7, #0
	add r12, r1, r0
	mov r3, #0xd
	mov r2, #6
	mov r1, #3
	mov r0, #8
	strh r2, [sp, #0x24]
	strh r1, [sp, #0x26]
	strb r0, [sp, #0x30]
	strh r3, [sp, #0x20]
	strh r3, [sp, #0x22]
	mov r4, #0x36
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	strh r7, [sp, #0x2c]
	strh r7, [sp, #0x2e]
	str r12, [sp, #0x34]
	add r0, sp, #0x20
	str r7, [sp]
	stmib sp, {r0, r7}
	ldr r5, _0211BA08 ; =0x0209F5C0
	str r7, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl  FUN_ov16_020f6084
_0211B9E0:
	ldr r0, _0211BA0C ; =0x0209A070
	mov r4, #3
	mov r1, #0x37
	mov r2, #0x36
	mov r3, #0
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r6, #0x67]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BA08: .word unk_0209F5C0
_0211BA0C: .word unk_0209A070
	arm_func_end FUN_ov34_0211b8d0

	arm_func_start FUN_ov34_0211ba10
FUN_ov34_0211ba10: ; 0x0211BA10
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r2, [r6, #0xf0]
	cmp r2, #0
	beq _0211BA94
	mov r5, #0x38
	mov r4, #0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldr r7, _0211BB4C ; =0x0209F5C0
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r7
	add r12, r2, r1
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
_0211BA94:
	ldr r1, [r6, #0xfc]
	cmp r1, #0
	beq _0211BB24
	ldr r0, [r1, #0xc]
	mov r7, #0
	add r12, r1, r0
	mov r3, #0xd
	mov r2, #6
	mov r1, #3
	mov r0, #9
	strh r2, [sp, #0x24]
	strh r1, [sp, #0x26]
	strb r0, [sp, #0x30]
	strh r3, [sp, #0x20]
	strh r3, [sp, #0x22]
	mov r4, #0x39
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	strh r7, [sp, #0x2c]
	strh r7, [sp, #0x2e]
	str r12, [sp, #0x34]
	add r0, sp, #0x20
	str r7, [sp]
	stmib sp, {r0, r7}
	ldr r5, _0211BB4C ; =0x0209F5C0
	str r7, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl  FUN_ov16_020f6084
_0211BB24:
	ldr r0, _0211BB50 ; =0x0209A070
	mov r4, #3
	mov r1, #0x3a
	mov r2, #0x39
	mov r3, #0
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r6, #0x68]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BB4C: .word unk_0209F5C0
_0211BB50: .word unk_0209A070
	arm_func_end FUN_ov34_0211ba10

	arm_func_start FUN_ov34_0211bb54
FUN_ov34_0211bb54: ; 0x0211BB54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r2, [r6, #0x108]
	cmp r2, #0
	beq _0211BBD8
	mov r5, #0x3b
	mov r4, #0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldr r7, _0211BC90 ; =0x0209F5C0
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r7
	add r12, r2, r1
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
_0211BBD8:
	ldr r1, [r6, #0xfc]
	cmp r1, #0
	beq _0211BC68
	ldr r0, [r1, #0xc]
	mov r7, #0
	add r12, r1, r0
	mov r3, #0xd
	mov r2, #6
	mov r1, #3
	mov r0, #9
	strh r2, [sp, #0x24]
	strh r1, [sp, #0x26]
	strb r0, [sp, #0x30]
	strh r3, [sp, #0x20]
	strh r3, [sp, #0x22]
	mov r4, #0x3c
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	strh r7, [sp, #0x2c]
	strh r7, [sp, #0x2e]
	str r12, [sp, #0x34]
	add r0, sp, #0x20
	str r7, [sp]
	stmib sp, {r0, r7}
	ldr r5, _0211BC90 ; =0x0209F5C0
	str r7, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl  FUN_ov16_020f6084
_0211BC68:
	ldr r0, _0211BC94 ; =0x0209A070
	mov r4, #3
	mov r1, #0x3d
	mov r2, #0x3c
	mov r3, #0
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r6, #0x69]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC90: .word unk_0209F5C0
_0211BC94: .word unk_0209A070
	arm_func_end FUN_ov34_0211bb54

	arm_func_start FUN_ov34_0211bc98
FUN_ov34_0211bc98: ; 0x0211BC98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r7, #0
	mov r4, r0
	ldr r0, _0211C458 ; =0x0209F5C0
	mov r1, r7
	mov r2, r7
	ldr r6, _0211C458 ; =0x0209F5C0
	mov r5, #1
	bl  FUN_ov16_020f5ff4
	ldr r0, _0211C45C ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	ldr r1, [r4, #0x140]
	cmp r1, #0
	beq _0211BCE4
	ldr r0, _0211C460 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r7, [r4, #0x140]
_0211BCE4:
	ldr r0, [r4, #0xc]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0211C448
_0211BCF4: ; jump table
	b _0211C448 ; case 0
	b _0211BD18 ; case 1
	b _0211C448 ; case 2
	b _0211C448 ; case 3
	b _0211C448 ; case 4
	b _0211C448 ; case 5
	b _0211BFC8 ; case 6
	b _0211C12C ; case 7
	b _0211C2B0 ; case 8
_0211BD18:
	mov r0, r4
	bl FUN_ov34_0211b78c
	mov r0, r4
	bl FUN_ov34_0211b8d0
	mov r0, r4
	bl FUN_ov34_0211bb54
	ldr r1, [r4, #0x90]
	cmp r1, #0
	beq _0211C448
	ldr r0, [r1, #0xc]
	mov r9, #5
	add r10, r1, r0
	mov r8, #1
	mov r11, #0
	b _0211BE94
_0211BD54:
	mov r0, #4
	strh r0, [sp, #0x20]
	mov r0, #0x18
	strh r0, [sp, #0x24]
	mov r0, #4
	strh r0, [sp, #0x26]
	mov r0, #0xc0
	strh r0, [sp, #0x2c]
	mov r0, #0x20
	strh r0, [sp, #0x2e]
	mov r0, #3
	strb r0, [sp, #0x30]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	strh r0, [sp, #0x22]
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	str r10, [sp, #0x34]
	str r7, [sp]
	add r0, sp, #0x20
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r9
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r0, r9, #1
	stmia sp, {r0, r7}
	mov r0, #4
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	add r10, r10, #0xc0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r7
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r9, #2
	stmia sp, {r0, r7}
	mov r0, #4
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	add r10, r10, #0xc0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r7
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r0, _0211C45C ; =0x0209A070
	mov r1, r9
	add r2, r9, #2
	add r3, r9, #1
	str r5, [sp]
	add r10, r10, #0xc0
	bl  FUN_ov16_020f6c8c
	add r1, r4, r11
	strb r0, [r1, #0x60]
	add r9, r9, #3
	add r8, r8, #4
	add r11, r11, #1
_0211BE94:
	cmp r11, #5
	blt _0211BD54
	ldrb r0, [r4, #0x48]
	mov r2, #0x20
	mov r6, #4
	cmp r0, #0
	add r1, sp, #0x20
	mov r11, #1
	beq _0211BFC4
	ldr r3, [r4, #0xa8]
	cmp r3, #0
	beq _0211C448
	ldr r0, [r3, #0xc]
	mov r9, #0x14
	add r10, r3, r0
	mov r0, #0
	mov r8, #8
	mov r7, #0x10
	mov r3, #0x80
	mov r5, #3
	strh r3, [sp, #0x2c]
	strh r9, [sp, #0x22]
	strh r8, [sp, #0x20]
	strh r7, [sp, #0x24]
	strh r6, [sp, #0x26]
	strh r0, [sp, #0x28]
	strh r0, [sp, #0x2a]
	strh r2, [sp, #0x2e]
	strb r5, [sp, #0x30]
	str r10, [sp, #0x34]
	stmia sp, {r0, r1}
	mov r1, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r12, r1
	ldr r0, _0211C458 ; =0x0209F5C0
	mov r2, r1
	mov r3, r9
	str r12, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r1, #0
	add r0, r9, #1
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r8}
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r0, _0211C458 ; =0x0209F5C0
	add r10, r10, #0x80
	str r5, [sp, #0x18]
	mov r2, r1
	mov r3, r1
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r1, r9, #2
	str r1, [sp]
	mov r1, #0
	stmib sp, {r1, r8}
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	add r2, r10, #0x80
	str r5, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, _0211C458 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	bl  FUN_ov16_020f5da0
	ldr r0, _0211C45C ; =0x0209A070
	mov r1, r9
	add r2, r9, #2
	add r3, r9, #1
	str r11, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0x65]
_0211BFC4:
	b _0211C430
_0211BFC8:
	mov r0, r4
	bl FUN_ov34_0211ba10
	ldr r1, [r4, #0x9c]
	cmp r1, #0
	beq _0211C448
	ldr r0, [r1, #0xc]
	mov r9, #0x17
	add r10, r1, r0
	mov r8, #1
	mov r11, #0
	b _0211C120
_0211BFF4:
	mov r0, #0x1e
	strh r0, [sp, #0x24]
	mov r0, #4
	strh r0, [sp, #0x26]
	mov r0, #0xf0
	strh r0, [sp, #0x2c]
	mov r0, #0x20
	strh r0, [sp, #0x2e]
	mov r0, #4
	strb r0, [sp, #0x30]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	strh r0, [sp, #0x22]
	strh r5, [sp, #0x20]
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	str r10, [sp, #0x34]
	str r7, [sp]
	add r0, sp, #0x20
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r9
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r0, r9, #1
	stmia sp, {r0, r7}
	mov r0, r8, lsl #0x18
	str r5, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r10, r10, #0xf0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r7
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r9, #2
	stmia sp, {r0, r7}
	mov r0, r8, lsl #0x18
	str r5, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r10, r10, #0xf0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r7
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r0, _0211C45C ; =0x0209A070
	mov r1, r9
	add r2, r9, #2
	add r3, r9, #1
	str r5, [sp]
	add r10, r10, #0xf0
	bl  FUN_ov16_020f6c8c
	add r1, r4, r11
	strb r0, [r1, #0x60]
	add r9, r9, #3
	add r8, r8, #4
	add r11, r11, #1
_0211C120:
	cmp r11, #5
	blt _0211BFF4
	b _0211C430
_0211C12C:
	mov r11, #0
	mov r0, r4
	mov r2, r11
	mov r3, r11
	mov r1, #0x48
	bl FUN_ov34_0211cc58
	ldr r1, [r4, #0xb4]
	cmp r1, #0
	beq _0211C448
	ldr r0, [r1, #0xc]
	mov r9, #0x26
	add r10, r1, r0
	mov r8, #0xc
	b _0211C2A4
_0211C164:
	mov r0, #2
	strh r0, [sp, #0x20]
	mov r0, #0x1c
	strh r0, [sp, #0x24]
	mov r0, #4
	strh r0, [sp, #0x26]
	mov r0, #0xe0
	strh r0, [sp, #0x2c]
	mov r0, #0x20
	strh r0, [sp, #0x2e]
	mov r0, #3
	strb r0, [sp, #0x30]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	strh r0, [sp, #0x22]
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	str r10, [sp, #0x34]
	str r7, [sp]
	add r0, sp, #0x20
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r9
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r0, r9, #1
	stmia sp, {r0, r7}
	mov r0, #2
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	add r10, r10, #0xe0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r7
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r9, #2
	stmia sp, {r0, r7}
	mov r0, #2
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	add r10, r10, #0xe0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r7
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r0, _0211C45C ; =0x0209A070
	mov r1, r9
	add r2, r9, #2
	add r3, r9, #1
	str r5, [sp]
	add r10, r10, #0xe0
	bl  FUN_ov16_020f6c8c
	add r1, r4, r11
	strb r0, [r1, #0x60]
	add r9, r9, #3
	add r8, r8, #5
	add r11, r11, #1
_0211C2A4:
	cmp r11, #2
	blt _0211C164
	b _0211C430
_0211C2B0:
	mov r11, #0
	mov r0, r4
	mov r2, r11
	mov r3, r11
	mov r1, #0x48
	bl FUN_ov34_0211cd00
	ldr r1, [r4, #0x114]
	cmp r1, #0
	beq _0211C448
	ldr r0, [r1, #0xc]
	mov r9, #0x2c
	add r10, r1, r0
	mov r8, #0xc
	b _0211C428
_0211C2E8:
	mov r0, #2
	strh r0, [sp, #0x20]
	mov r0, #0x1c
	strh r0, [sp, #0x24]
	mov r0, #4
	strh r0, [sp, #0x26]
	mov r0, #0xe0
	strh r0, [sp, #0x2c]
	mov r0, #0x20
	strh r0, [sp, #0x2e]
	mov r0, #3
	strb r0, [sp, #0x30]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	strh r0, [sp, #0x22]
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	str r10, [sp, #0x34]
	str r7, [sp]
	add r0, sp, #0x20
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	mov r0, r6
	mov r1, r7
	mov r2, r7
	mov r3, r9
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r0, r9, #1
	stmia sp, {r0, r7}
	mov r0, #2
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	add r10, r10, #0xe0
	mov r0, r6
	mov r1, r7
	mov r2, r7
	mov r3, r7
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r9, #2
	stmia sp, {r0, r7}
	mov r0, #2
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	add r10, r10, #0xe0
	mov r0, r6
	mov r1, r7
	mov r2, r7
	mov r3, r7
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r0, _0211C45C ; =0x0209A070
	mov r1, r9
	add r2, r9, #2
	add r3, r9, #1
	str r5, [sp]
	add r10, r10, #0xe0
	bl  FUN_ov16_020f6c8c
	add r1, r4, r11
	strb r0, [r1, #0x60]
	add r9, r9, #3
	add r8, r8, #5
	add r11, r11, #1
_0211C428:
	cmp r11, #2
	blt _0211C2E8
_0211C430:
	ldr r1, [r4, #0x34]
	ldr r0, _0211C45C ; =0x0209A070
	add r1, r4, r1
	ldrb r1, [r1, #0x60]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
_0211C448:
	mov r0, r4
	bl FUN_ov34_0211b554
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C458: .word unk_0209F5C0
_0211C45C: .word unk_0209A070
_0211C460: .word unk_02099F38
	arm_func_end FUN_ov34_0211bc98

	arm_func_start FUN_ov34_0211c464
FUN_ov34_0211c464: ; 0x0211C464
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	add r1, sp, #8
	add r2, sp, #4
	bl FUN_ov34_0211b684
	ldr r0, [sp, #4]
	ldr r4, _0211C4A8 ; =0x0209F5C0
	str r0, [sp]
	ldr r3, [sp, #8]
	mov r0, r4
	mov r1, #0
	mov r2, #4
	bl  FUN_ov16_020f63f0
	mov r0, r4
	bl  FUN_ov16_020f6274
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211C4A8: .word unk_0209F5C0
	arm_func_end FUN_ov34_0211c464

	arm_func_start FUN_ov34_0211c4ac
FUN_ov34_0211c4ac: ; 0x0211C4AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r6, #0
	mov r8, r0
	ldr r4, _0211C7C0 ; =0x04000008
	str r6, [r8, #0x10]
	str r6, [r8, #8]
	ldrh r0, [r4]
	mov r7, #1
	mov r2, r7
	strh r0, [sp, #0xa]
	ldrh r0, [sp, #0xa]
	mov r5, r7
	strh r0, [sp, #8]
	ldrh r1, [sp, #8]
	mov r0, r7
	strh r1, [sp, #0x12]
	ldrh r3, [sp, #0x12]
	mov r1, r6
	mov r3, r3, lsl #0x1e
	mov r3, r3, lsr #0x1e
	strb r3, [r8, #0x144]
	ldrh r3, [r4, #2]
	strh r3, [sp, #6]
	ldrh r3, [sp, #6]
	strh r3, [sp, #0x10]
	ldrh r3, [sp, #0x10]
	mov r3, r3, lsl #0x1e
	mov r3, r3, lsr #0x1e
	strb r3, [r8, #0x145]
	ldrh r3, [r4, #4]
	strh r3, [sp, #4]
	ldrh r3, [sp, #4]
	strh r3, [sp, #2]
	ldrh r3, [sp, #2]
	strh r3, [sp, #0xe]
	ldrh r3, [sp, #0xe]
	mov r3, r3, lsl #0x1e
	mov r3, r3, lsr #0x1e
	strb r3, [r8, #0x146]
	ldrh r3, [r4, #6]
	strh r3, [sp]
	ldrh r3, [sp]
	strh r3, [sp, #0xc]
	ldrh r3, [sp, #0xc]
	mov r3, r3, lsl #0x1e
	mov r3, r3, lsr #0x1e
	strb r3, [r8, #0x147]
	bl FUN_020044e0
	ldrh r0, [r4]
	bic r0, r0, #3
	strh r0, [r4]
	ldrh r0, [r4, #6]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r4, #6]
	ldrh r0, [r4, #2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r4, #4]
	ldr r0, _0211C7C4 ; =0x0209A454
	ldr r4, _0211C7C8 ; =0x020A9C40
	strb r6, [r0, #0x81]
	sub r1, r6, #1
	mov r0, r4
	strb r6, [r8, #0x14]
	strb r6, [r8, #0x15]
	strb r6, [r8, #0x16]
	str r1, [r8, #0x18]
	str r1, [r8, #0x1c]
	str r6, [r8, #0x20]
	str r6, [r8, #0x24]
	str r6, [r8, #0x28]
	str r6, [r8, #0x2c]
	strb r6, [r8, #0x48]
	bl FUN_02046378
	cmp r0, #1
	beq _0211C604
	mov r0, r4
	bl FUN_02046378
	cmp r0, #2
	bne _0211C608
_0211C604:
	strb r5, [r8, #0x48]
_0211C608:
	mov r4, #0
	mov r6, #0xb
	mov r1, r4
	mov r2, r6
	add r0, r8, #0x60
	bl MI_CpuFill8
	ldr r0, _0211C7CC ; =0x0209A070
	mov r1, r6
	bl  FUN_ov16_020f6c20
	ldr r0, [r8, #4]
	str r4, [r8, #0x3c]
	str r4, [r8, #0x40]
	str r4, [r8, #0x44]
	bl FUN_0204204c
	ldr r1, _0211C7C4 ; =0x0209A454
	ldrb r2, [r1, #0x83]
	mov r2, r2, lsl #0x19
	mov r2, r2, lsr #0x1f
	cmp r2, #1
	bne _0211C67C
	mov r2, #3
	str r2, [r8, #0x3c]
	ldrb r0, [r1, #0x83]
	mov r7, #6
	bic r0, r0, #0x40
	strb r0, [r1, #0x83]
	ldr r0, [r8, #4]
	str r2, [r0, #0x90]
	b _0211C764
_0211C67C:
	ldr r1, [r8, #4]
	ldr r1, [r1, #0x90]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0211C764
_0211C690: ; jump table
	b _0211C6A8 ; case 0
	b _0211C6B0 ; case 1
	b _0211C6B8 ; case 2
	b _0211C6C0 ; case 3
	b _0211C754 ; case 4
	b _0211C75C ; case 5
_0211C6A8:
	str r4, [r8, #0x3c]
	b _0211C764
_0211C6B0:
	str r5, [r8, #0x3c]
	b _0211C764
_0211C6B8:
	mov r0, #2
	b _0211C760
_0211C6C0:
	mov r1, #3
	str r1, [r8, #0x3c]
	cmp r0, #0x1b
	mov r7, #6
	bgt _0211C6FC
	cmp r0, #0x1b
	bge _0211C708
	cmp r0, #0x11
	bgt _0211C764
	cmp r0, #0xf
	blt _0211C764
	beq _0211C714
	cmp r0, #0x11
	streq r5, [r8, #0x40]
	b _0211C764
_0211C6FC:
	cmp r0, #0x21
	beq _0211C714
	b _0211C764
_0211C708:
	mov r0, #2
	str r0, [r8, #0x40]
	b _0211C764
_0211C714:
	ldr r0, _0211C7D0 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	movne r0, #4
	strne r0, [r8, #0x40]
	moveq r0, #3
	streq r0, [r8, #0x40]
	ldr r0, _0211C7D0 ; =0x020A0640
	movne r7, #8
	ldrb r0, [r0, #0x87]
	moveq r7, #7
	cmp r0, #0
	movne r0, #0
	strne r0, [r8, #0x44]
	streq r5, [r8, #0x44]
	b _0211C764
_0211C754:
	mov r0, #4
	b _0211C760
_0211C75C:
	mov r0, #5
_0211C760:
	str r0, [r8, #0x3c]
_0211C764:
	ldr r0, _0211C7D4 ; =0x020AF81C
	bl FUN_02044788
	ldr r0, _0211C7D0 ; =0x020A0640
	mov r4, #0
	strb r4, [r0, #0x87]
	strb r4, [r0, #0x88]
	strb r4, [r0, #0x89]
	strb r4, [r0, #0x8b]
	mov r0, r8
	mov r1, r7
	str r4, [r8, #0x140]
	bl FUN_ov34_0211ab34
	sub r1, r4, #1
	mov r0, r8
	str r4, [r8, #0x4c]
	str r4, [r8, #0x50]
	str r1, [r8, #0x54]
	str r4, [r8, #0x58]
	strb r4, [r8, #0x5c]
	strb r4, [r8, #0x5d]
	bl FUN_ov34_0211b1dc
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C7C0: .word 0x04000008
_0211C7C4: .word unk_0209A454
_0211C7C8: .word unk_020A9C40
_0211C7CC: .word unk_0209A070
_0211C7D0: .word unk_020A0640
_0211C7D4: .word unk_020AF81C
	arm_func_end FUN_ov34_0211c4ac

	arm_func_start FUN_ov34_0211c7d8
FUN_ov34_0211c7d8: ; 0x0211C7D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211C7F0: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211C80C ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	b _0211C844 ; case 3
	b _0211C914 ; case 4
	b _0211C914 ; case 5
	b _0211C96C ; case 6
_0211C80C:
	add r0, r4, #0x6c
	mov r1, #0x10
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov34_0211b210
	mov r0, r4
	bl FUN_ov34_0211cab8
	mov r0, r4
	bl FUN_ov34_0211cbf4
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211C844:
	ldr r1, [r4, #0xc]
	cmp r1, #1
	bne _0211C858
	ldr r1, [r4, #0x3c]
	b _0211C874
_0211C858:
	cmp r1, #6
	bne _0211C868
	ldr r1, [r4, #0x40]
	b _0211C874
_0211C868:
	cmp r1, #7
	bne _0211C87C
	ldr r1, [r4, #0x44]
_0211C874:
	mov r2, #1
	bl FUN_ov34_0211a8f0
_0211C87C:
	ldr r0, [r4, #0xc]
	cmp r0, #8
	bne _0211C898
	ldr r1, [r4, #0x44]
	mov r0, r4
	mov r2, #1
	bl FUN_ov34_0211a8f0
_0211C898:
	mov r0, r4
	bl FUN_ov34_0211bc98
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r1, #4
	mov r0, r4
	str r1, [r4, #8]
	bl FUN_ov34_0211c464
	ldr r0, [r4, #4]
	add r1, r4, #0x4c
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r6, _0211C9B0 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f672c
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov34_0211a6e0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C914:
	bl FUN_ov34_0211c464
	ldr r0, [r4, #4]
	add r1, r4, #0x4c
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r6, _0211C9B0 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f672c
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov34_0211a6e0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C96C:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x10]
	mov r0, r4
	bl FUN_ov34_0211ab34
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211C9B0: .word unk_0209F5C0
	arm_func_end FUN_ov34_0211c7d8

	arm_func_start FUN_ov34_0211c9b4
FUN_ov34_0211c9b4: ; 0x0211C9B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0211C9D4
	cmp r1, #4
	beq _0211C9E4
	ldmfd sp!, {r4, pc}
_0211C9D4:
	bl FUN_ov34_0211b2fc
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211C9E4:
	ldr r0, _0211C9F4 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211C9F4: .word unk_0209F5C0
	arm_func_end FUN_ov34_0211c9b4

	arm_func_start FUN_ov34_0211c9f8
FUN_ov34_0211c9f8: ; 0x0211C9F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _0211CAA8 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f5af0
	ldr r0, _0211CAAC ; =0x0209A070
	bl  FUN_ov16_020f6c58
	mov r5, #0x10
	mov r1, r5
	mov r0, #2
	bl  FUN_ov16_020f1aec
	mov r1, r5
	add r0, r4, #0x6c
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov34_0211b25c
	ldr r1, _0211CAB0 ; =0x0209A454
	mov r5, #6
	mov r0, r4
	strb r5, [r1, #0x82]
	bl FUN_ov34_0211cb2c
	add r3, r5, #0x4000002
	ldrh r1, [r3]
	ldrb r0, [r4, #0x144]
	ldr r2, _0211CAB4 ; =0x0400000A
	bic r1, r1, #3
	orr r0, r1, r0
	strh r0, [r3]
	ldrh r1, [r2]
	ldrb r0, [r4, #0x145]
	bic r1, r1, #3
	orr r0, r1, r0
	strh r0, [r2]
	ldrh r1, [r2, #2]
	ldrb r0, [r4, #0x146]
	bic r1, r1, #3
	orr r0, r1, r0
	strh r0, [r2, #2]
	ldrh r1, [r2, #4]
	ldrb r0, [r4, #0x147]
	bic r1, r1, #3
	orr r0, r1, r0
	strh r0, [r2, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CAA8: .word unk_0209F5C0
_0211CAAC: .word unk_0209A070
_0211CAB0: .word unk_0209A454
_0211CAB4: .word 0x0400000A
	arm_func_end FUN_ov34_0211c9f8

	arm_func_start FUN_ov34_0211cab8
FUN_ov34_0211cab8: ; 0x0211CAB8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	mov r5, #0
	mov r1, r5
	add r0, r6, #0x138
	mov r2, #8
	bl MI_CpuFill8
	ldr r0, _0211CB20 ; =0x0211D5B8
	add r1, r6, #0x12c
	bl  FUN_ov16_020f3054
	ldr r4, _0211CB24 ; =0x0211CDC0
	add lr, sp, #4
	ldmia r4!, {r0, r1, r2, r3}
	mov r12, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	str r5, [sp]
	ldr r0, _0211CB28 ; =0x0211D5D4
	ldr r1, [r6, #0x12c]
	mov r2, r12
	add r3, r6, #0x138
	bl  FUN_ov16_020f5450
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211CB20: .word ov34_0211D5B8
_0211CB24: .word 0x0211CDC0
_0211CB28: .word ov34_0211D5D4
	arm_func_end FUN_ov34_0211cab8

	arm_func_start FUN_ov34_0211cb2c
FUN_ov34_0211cb2c: ; 0x0211CB2C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r0
	ldr r1, [r6, #0x140]
	mov r4, #0
	cmp r1, #0
	beq _0211CB54
	ldr r0, _0211CBF0 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r4, [r6, #0x140]
_0211CB54:
	mov r5, #0
	ldr r7, _0211CBF0 ; =0x02099F38
	b _0211CB94
_0211CB60:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x138]
	cmp r1, #0
	beq _0211CB90
	ldr r0, [r7]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x138]
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x138]
_0211CB90:
	add r5, r5, #1
_0211CB94:
	cmp r5, #2
	blt _0211CB60
	add r9, r6, #0x12c
	mov r5, #0
	mov r7, #1
	mov r6, #0xc
	b _0211CBE4
_0211CBB0:
	mul r8, r5, r6
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl  FUN_ov16_020f338c
	mov r0, r10
	bl  FUN_ov16_020f33fc
	str r4, [r9, r8]
	str r4, [r10, #4]
	strb r4, [r10, #8]
	strb r4, [r10, #9]
	strb r4, [r10, #0xa]
	add r5, r5, #1
_0211CBE4:
	cmp r5, #1
	blt _0211CBB0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211CBF0: .word unk_02099F38
	arm_func_end FUN_ov34_0211cb2c

	arm_func_start FUN_ov34_0211cbf4
FUN_ov34_0211cbf4: ; 0x0211CBF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211CC54 ; =0x02099F38
	b _0211CC48
_0211CC0C:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x138]
	cmp r1, #0
	beq _0211CC44
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211CC44
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x138]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211CC44:
	add r6, r6, #1
_0211CC48:
	cmp r6, #2
	blt _0211CC0C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CC54: .word unk_02099F38
	arm_func_end FUN_ov34_0211cbf4

	arm_func_start FUN_ov34_0211cc58
FUN_ov34_0211cc58: ; 0x0211CC58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #0x140]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	mov r4, #1
	bne _0211CC94
	ldr r0, _0211CCFC ; =0x02099F38
	mov r2, r4
	ldr r0, [r0]
	mov r1, #3
	bl  FUN_ov16_02112724
	str r0, [r8, #0x140]
_0211CC94:
	ldr r9, _0211CCFC ; =0x02099F38
	ldr r3, [r8, #0x138]
	ldr r0, [r9]
	ldr r1, [r8, #0x140]
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0x140]
	mov r2, r4
	bl  FUN_ov16_0211401c
	mov r0, r5, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r0, [r9]
	ldr r1, [r8, #0x140]
	mov r2, r4
	bl  FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0x140]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CCFC: .word unk_02099F38
	arm_func_end FUN_ov34_0211cc58

	arm_func_start FUN_ov34_0211cd00
FUN_ov34_0211cd00: ; 0x0211CD00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #0x140]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	mov r4, #2
	bne _0211CD3C
	ldr r0, _0211CDA4 ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r8, #0x140]
_0211CD3C:
	ldr r9, _0211CDA4 ; =0x02099F38
	ldr r3, [r8, #0x13c]
	ldr r0, [r9]
	ldr r1, [r8, #0x140]
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0x140]
	mov r2, r4
	bl  FUN_ov16_0211401c
	mov r0, r5, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r0, [r9]
	ldr r1, [r8, #0x140]
	mov r2, r4
	bl  FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0x140]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CDA4: .word unk_02099F38
	arm_func_end FUN_ov34_0211cd00

	arm_func_start FUN_ov34_0211cda8
FUN_ov34_0211cda8: ; 0x0211CDA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov34_0211cda8

	arm_func_start FUN_ov34_0211cdbc
FUN_ov34_0211cdbc: ; 0x0211CDBC
	bx lr
	arm_func_end FUN_ov34_0211cdbc
_0211CDC0:
	.byte 0xB0, 0xCF, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x90, 0xCF, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xCF, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xD8, 0xCE, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0xE4, 0xCE, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x70, 0xCF, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0xF0, 0xCE, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x50, 0xCF, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0x00, 0xCF, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x30, 0xCF, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x40, 0xCF, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x80, 0xCF, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x60, 0xCF, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0x20, 0xCF, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x10, 0xCF, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov34_0211ce48
FUN_ov34_0211ce48: ; 0x0211CE48
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211CE90 ; =0x0211CEC0
	str r0, [r4, #0x10]
	ldr r0, _0211CE94 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0211CE98 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CE90: .word ov34_0211CEC0
_0211CE94: .word 0x00009CCD
_0211CE98: .word 0x0000EA3C
	arm_func_end FUN_ov34_0211ce48

	.section .sinit, 4
ov34_0211CE9C:
	.word FUN_ov34_0211ce48

	.data
	.global ov34_0211CEC0
ov34_0211CEC0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x5F, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6C, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x6C, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6C, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6C, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x6C, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x6C, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.byte 0x73, 0x6C, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xC5, 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xE7, 0x5D, 0x82, 0xBD, 0x82, 0xC8, 0x83, 0x66
	.byte 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xF0, 0x0A, 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81
	.byte 0x5B, 0x83, 0x68, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xC5, 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xE7, 0x5D, 0x82, 0xBD, 0x82, 0xC8, 0x83, 0x60
	.byte 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81
	.byte 0x5B, 0x83, 0x68, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.byte 0x83, 0x6A, 0x83, 0x93, 0x83, 0x65, 0x83, 0x93, 0x83, 0x68, 0x81, 0x5B, 0x82, 0x76, 0x82, 0x89
	.byte 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87
	.byte 0x83, 0x93, 0x0A, 0x82, 0xCC, 0x5B, 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82
	.byte 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xF0, 0x8D, 0x73, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00, 0x82, 0xB7, 0x82, 0xEA, 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2, 0x5B, 0x92
	.byte 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A
	.byte 0x5B, 0x89, 0xCA, 0x2F, 0x82, 0xCD, 0x5D, 0x82, 0xBD, 0x82, 0xB5, 0x5B, 0x8F, 0xF3, 0x2F, 0x82
	.byte 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xF0, 0x5B, 0x91, 0x97, 0x2F, 0x82, 0xA8, 0x82, 0xAD
	.byte 0x5D, 0x82, 0xE8, 0x82, 0xC2, 0x82, 0xAF, 0x82, 0xE6, 0x82, 0xA4, 0x81, 0x42, 0x00, 0x00, 0x00
	.byte 0x83, 0x43, 0x83, 0x69, 0x83, 0x59, 0x83, 0x7D, 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75, 0x83, 0x93
	.byte 0x82, 0x51, 0x82, 0xC6, 0x82, 0xCC, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x8A, 0x79, 0x2F, 0x82, 0xBD, 0x82, 0xCC
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xDD, 0x82, 0xAA, 0x5B, 0x8D, 0x4C, 0x2F, 0x82, 0xD0, 0x82, 0xEB, 0x5D
	.byte 0x82, 0xAA, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x49, 0x00, 0x00, 0x83, 0x58, 0x83, 0x70
	.byte 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC6
	.byte 0x82, 0xCC, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x8A, 0x79, 0x2F, 0x82, 0xBD, 0x82, 0xCC, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDD, 0x82, 0xAA, 0x5B, 0x8D, 0x4C, 0x2F, 0x82, 0xD0, 0x82, 0xEB, 0x5D, 0x82, 0xAA, 0x82, 0xE8
	.byte 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x49, 0x00, 0x00, 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43
	.byte 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x97, 0x46, 0x92, 0x42, 0x2F, 0x82, 0xC6
	.byte 0x82, 0xE0, 0x82, 0xBE, 0x82, 0xBF, 0x5D, 0x82, 0xC6, 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x2F, 0x82
	.byte 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82, 0xAA, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43
	.byte 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x94, 0xE9, 0x96, 0xA7, 0x2F, 0x82, 0xD0
	.byte 0x82, 0xDD, 0x82, 0xC2, 0x5D, 0x82, 0xCC, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xF0, 0x5B
	.byte 0x8E, 0xE8, 0x2F, 0x82, 0xC4, 0x5D, 0x82, 0xC9, 0x5B, 0x93, 0xFC, 0x2F, 0x82, 0xA2, 0x5D, 0x82
	.byte 0xEA, 0x82, 0xE6, 0x82, 0xA4, 0x81, 0x42, 0x00, 0x83, 0x43, 0x83, 0x69, 0x83, 0x59, 0x83, 0x7D
	.byte 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xC6, 0x5B, 0x92, 0xCA, 0x90
	.byte 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x0A
	.byte 0x5B, 0x93, 0xC1, 0x95, 0xCA, 0x2F, 0x82, 0xC6, 0x82, 0xAD, 0x82, 0xD7, 0x82, 0xC2, 0x5D, 0x82
	.byte 0xC8, 0x83, 0x41, 0x83, 0x43, 0x83, 0x65, 0x83, 0x80, 0x82, 0xF0, 0x82, 0xE0, 0x82, 0xE7, 0x82
	.byte 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x83, 0x58, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x4E
	.byte 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC6, 0x5B, 0x92, 0xCA, 0x90
	.byte 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x0A
	.byte 0x5B, 0x93, 0xC1, 0x95, 0xCA, 0x2F, 0x82, 0xC6, 0x82, 0xAD, 0x82, 0xD7, 0x82, 0xC2, 0x5D, 0x82
	.byte 0xC8, 0x83, 0x41, 0x83, 0x43, 0x83, 0x65, 0x83, 0x80, 0x82, 0xF0, 0x82, 0xE0, 0x82, 0xE7, 0x82
	.byte 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43
	.byte 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82
	.byte 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x0A, 0x5B, 0x90, 0x56, 0x2F, 0x82
	.byte 0xA0, 0x82, 0xBD, 0x82, 0xE7, 0x5D, 0x82, 0xB5, 0x82, 0xA2, 0x5B, 0x8F, 0xEE, 0x95, 0xF1, 0x2F
	.byte 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xD9, 0x82, 0xA4, 0x5D, 0x82, 0xF0, 0x82, 0xE0, 0x82
	.byte 0xE7, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x83, 0x6A, 0x83, 0x93
	.byte 0x83, 0x65, 0x83, 0x93, 0x83, 0x68, 0x81, 0x5B, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x0A, 0x82
	.byte 0xC9, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D
	.byte 0x82, 0xB5, 0x82, 0xC4, 0x0A, 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xBD, 0x82, 0xE7, 0x5D
	.byte 0x82, 0xB5, 0x82, 0xA2, 0x5B, 0x8F, 0xEE, 0x95, 0xF1, 0x2F, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4
	.byte 0x82, 0xD9, 0x82, 0xA4, 0x5D, 0x82, 0xF0, 0x82, 0xE0, 0x82, 0xE7, 0x82, 0xA2, 0x82, 0xDC, 0x82
	.byte 0xB7, 0x81, 0x42, 0x00, 0x83, 0x43, 0x83, 0x69, 0x83, 0x59, 0x83, 0x7D, 0x83, 0x43, 0x83, 0x8C
	.byte 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xCC, 0x0A, 0x5B, 0x93, 0xC1, 0x95, 0xCA, 0x2F, 0x82
	.byte 0xC6, 0x82, 0xAD, 0x82, 0xD7, 0x82, 0xC2, 0x5D, 0x82, 0xC8, 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F
	.byte 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x82, 0xF0, 0x82, 0x63, 0x82, 0x72, 0x83
	.byte 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82
	.byte 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x83, 0x58, 0x83, 0x4A, 0x83
	.byte 0x45, 0x83, 0x67, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x83, 0x58, 0x83, 0x70
	.byte 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xCC
	.byte 0x0A, 0x5B, 0x93, 0xC1, 0x95, 0xCA, 0x2F, 0x82, 0xC6, 0x82, 0xAD, 0x82, 0xD7, 0x82, 0xC2, 0x5D
	.byte 0x82, 0xC8, 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3
	.byte 0x5D, 0x82, 0xF0, 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83
	.byte 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D
	.byte 0x82, 0xC5, 0x0A, 0x83, 0x58, 0x83, 0x4A, 0x83, 0x45, 0x83, 0x67, 0x82, 0xB5, 0x82, 0xDC, 0x82
	.byte 0xB7, 0x81, 0x42, 0x00, 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x0A, 0x83, 0x58, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A, 0x81, 0x5B, 0x83, 0x60
	.byte 0x81, 0x5B, 0x83, 0x80, 0x82, 0xCC, 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1
	.byte 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x5B, 0x93, 0xAF, 0x8E, 0x6D, 0x2F, 0x82, 0xC7, 0x82, 0xA4, 0x82
	.byte 0xB5, 0x5D, 0x82, 0xF0, 0x0A, 0x5B, 0x8C, 0xF0, 0x8A, 0xB7, 0x2F, 0x82, 0xB1, 0x82, 0xA4, 0x82
	.byte 0xA9, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBC, 0xCD, 0x11, 0x02, 0xA8, 0xCD, 0x11, 0x02
	.byte 0xE8, 0xAB, 0x11, 0x02, 0xEC, 0xB0, 0x11, 0x02, 0xAC, 0xC4, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xC7, 0x11, 0x02, 0xB4, 0xC9, 0x11, 0x02, 0xF8, 0xC9, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov34_0211D524
ov34_0211D524:
	.byte 0x01, 0x00, 0x00, 0x00
	.global ov34_0211D528
ov34_0211D528:
	.byte 0x68, 0xD1, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x84, 0xD0, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x44, 0xD4, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0xC0, 0xCF, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0x40, 0xD0, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0xB8, 0xD1, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0x0C, 0xD3, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0xA8, 0xD2, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0xD0, 0xD0, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00, 0x1C, 0xD1, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x74, 0xD3, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x08, 0xD2, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00
	.byte 0xDC, 0xD3, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00, 0x58, 0xD2, 0x11, 0x02
	.global ov34_0211D59C
ov34_0211D59C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D, 0x54, 0x53, 0x57, 0x69
	.byte 0x4D, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov34_0211D5B8
ov34_0211D5B8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x64, 0x6C, 0x2E, 0x53, 0x50, 0x4C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov34_0211D5D4
ov34_0211D5D4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x64, 0x6C, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

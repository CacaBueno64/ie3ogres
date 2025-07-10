
	.include "/macros/function.inc"
	.include "/include/overlay72.inc"

	.text
	arm_func_start FUN_ov72_02119f00
FUN_ov72_02119f00: ; 0x02119F00
	ldr r1, _02119F4C ; =0x0400000E
	ldrh r0, [r1]
	sub r3, r1, #4
	sub r2, r1, #2
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r3]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1, #-6]!
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	bx lr
_02119F4C: .word 0x0400000E
	arm_func_end FUN_ov72_02119f00

	arm_func_start FUN_ov72_02119f50
FUN_ov72_02119f50: ; 0x02119F50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	cmp r0, #0xa
	addhs sp, sp, #0x20
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, _0211A09C ; =0x020A1640
	ldr r1, _0211A0A0 ; =0x00000808
	ldr r3, [r2, #0x230]
	add r2, sp, #0
	add r3, r3, #8
	mla r6, r0, r1, r3
	mov r7, #0
	mov r8, #1
	mov r0, #4
_02119F8C:
	strh r7, [r2]
	strh r7, [r2, #2]
	strh r7, [r2, #4]
	strh r7, [r2, #6]
	add r2, r2, #8
	subs r0, r0, #1
	bne _02119F8C
	mov r10, #0
	add r5, sp, #0
	ldr r11, _0211A0A4 ; =0x0209BA20
	mov r4, #0x6c
	b _0211A008
_02119FBC:
	mla r0, r10, r4, r6
	ldrh r9, [r0, #0xd8]
	cmp r9, #0
	beq _02119FE4
	mov r1, r9
	add r0, r6, #0x7e0
	bl FUN_0204fca0
	cmp r0, #0
	moveq r8, #0
	beq _0211A010
_02119FE4:
	mov r0, r11
	mov r1, r9
	bl FUN_0204bc4c
	cmp r0, #0
	movgt r1, r10, lsl #1
	addgt r0, r7, #1
	strgth r9, [r5, r1]
	andgt r7, r0, #0xff
	add r10, r10, #1
_0211A008:
	cmp r10, #0x10
	blt _02119FBC
_0211A010:
	mov r1, #0
	cmp r7, #0xb
	movlo r8, r1
	cmp r8, #0
	beq _0211A084
	mov r5, #0
	sub r0, r7, #1
	add r4, sp, #0
	b _0211A07C
_0211A034:
	mov r2, r5, lsl #1
	ldrh r3, [r4, r2]
	cmp r3, #0
	beq _0211A078
	add r9, r5, #1
	b _0211A068
_0211A04C:
	mov r2, r9, lsl #1
	ldrh r2, [r4, r2]
	cmp r2, #0
	beq _0211A064
	cmp r3, r2
	moveq r8, r1
_0211A064:
	add r9, r9, #1
_0211A068:
	cmp r9, r7
	blt _0211A04C
	cmp r8, #0
	beq _0211A084
_0211A078:
	add r5, r5, #1
_0211A07C:
	cmp r5, r0
	blt _0211A034
_0211A084:
	ldrb r0, [r6]
	cmp r0, #0
	moveq r8, #0
	mov r0, r8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A09C: .word unk_020A1640
_0211A0A0: .word 0x00000808
_0211A0A4: .word unk_0209BA20
	arm_func_end FUN_ov72_02119f50

	arm_func_start FUN_ov72_0211a0a8
FUN_ov72_0211a0a8: ; 0x0211A0A8
	cmp r0, #0xa
	movhs r0, #0
	bxhs lr
	ldr r1, _0211A0DC ; =0x00000808
	ldr r2, _0211A0E0 ; =0x020A1640
	mul r1, r0, r1
	ldr r2, [r2, #0x230]
	mov r0, #1
	add r2, r2, #8
	ldrb r1, [r2, r1]
	cmp r1, #0
	moveq r0, #0
	bx lr
_0211A0DC: .word 0x00000808
_0211A0E0: .word unk_020A1640
	arm_func_end FUN_ov72_0211a0a8

	arm_func_start FUN_ov72_0211a0e4
FUN_ov72_0211a0e4: ; 0x0211A0E4
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_0211A0F4:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _0211A10C
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_0211A10C:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _0211A0F4
	bx lr
	arm_func_end FUN_ov72_0211a0e4

	arm_func_start FUN_ov72_0211a11c
FUN_ov72_0211a11c: ; 0x0211A11C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r1, #6
	ldr r3, _0211A178 ; =0x0209A454
	str r1, [r4, #8]
	mov r5, #1
	ldr r2, _0211A17C ; =0x021230CC
	strb r5, [r3, #0x81]
	bl FUN_ov72_0211a464
	ldr r6, [r4, #4]
	mov r4, #0
	mov r0, r6
	mov r1, r4
	mov r2, #0xe
	bl FUN_02041eac
	mov r0, r6
	mov r1, r5
	mov r2, #0xf
	bl FUN_02041eac
	ldr r0, _0211A180 ; =0x0209A0E0
	strb r4, [r0]
	bl FUN_ov72_02119f00
	ldmfd sp!, {r4, r5, r6, pc}
_0211A178: .word unk_0209A454
_0211A17C: .word ov72_021230CC
_0211A180: .word unk_0209A0E0
	arm_func_end FUN_ov72_0211a11c

	arm_func_start FUN_ov72_0211a184
FUN_ov72_0211a184: ; 0x0211A184
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r2, #6
	mov r1, #1
	str r2, [r5, #8]
	strb r1, [r5, #0xc15]
	bl FUN_02041d9c
	mov r4, #0
	ldr r0, _0211A1D0 ; =0x0209A454
	mov r1, r4
	str r4, [r0, #0x24]
	ldr r0, [r5, #4]
	mov r2, #0x19
	bl FUN_02041ef0
	ldr r0, _0211A1D4 ; =0x0209A0E0
	strb r4, [r0]
	bl FUN_ov72_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211A1D0: .word unk_0209A454
_0211A1D4: .word unk_0209A0E0
	arm_func_end FUN_ov72_0211a184

	arm_func_start FUN_ov72_0211a1d8
FUN_ov72_0211a1d8: ; 0x0211A1D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r1, #6
	str r1, [r5, #8]
	bl FUN_02041d9c
	mov r4, #0
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x1d
	bl FUN_02041eac
	bl FUN_ov72_02119f00
	ldr r0, [r5, #4]
	ldr r1, _0211A220 ; =0x0209A0E0
	add r0, r0, #0x1000
	strb r4, [r0, #0x958]
	strb r4, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A220: .word unk_0209A0E0
	arm_func_end FUN_ov72_0211a1d8

	arm_func_start FUN_ov72_0211a224
FUN_ov72_0211a224: ; 0x0211A224
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r1, #6
	str r1, [r5, #8]
	bl FUN_02041d9c
	mov r4, #0
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x1e
	bl FUN_02041eac
	bl FUN_ov72_02119f00
	ldr r0, [r5, #4]
	ldr r1, _0211A26C ; =0x0209A0E0
	add r0, r0, #0x1000
	strb r4, [r0, #0x958]
	strb r4, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A26C: .word unk_0209A0E0
	arm_func_end FUN_ov72_0211a224

	arm_func_start FUN_ov72_0211a270
FUN_ov72_0211a270: ; 0x0211A270
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #4]
	mov r2, #6
	mov r4, r1
	str r2, [r7, #8]
	bl FUN_02041d9c
	ldr r6, [r7, #4]
	mov r5, #0x78
	mov r0, r6
	mov r2, r5
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r6
	mov r2, r5
	mov r1, #1
	bl FUN_02041ef0
	ldr r0, [r7, #4]
	ldr r2, [r7, #0x68]
	add r0, r0, #0x1000
	ldr r1, _0211A2D0 ; =0x0209A0E0
	strb r2, [r0, #0x958]
	strb r4, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2D0: .word unk_0209A0E0
	arm_func_end FUN_ov72_0211a270

	arm_func_start FUN_ov72_0211a2d4
FUN_ov72_0211a2d4: ; 0x0211A2D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r0, [r9, #4]
	mov r3, #6
	mov r7, #1
	ldr r2, [r9, #0x68]
	str r3, [r9, #8]
	strb r7, [r9, #0xc15]
	add r0, r0, #0x1000
	strb r2, [r0, #0x958]
	ldr r0, [r9, #4]
	ldr r4, _0211A3CC ; =0x020A1640
	add r0, r0, #0x15c
	ldr r2, [r4, #0x230]
	mov r8, r1
	add r0, r0, #0x1800
	mov r1, #0x10
	add r6, r2, #8
	ldrb r5, [r9, #0xbe3]
	ldr r10, _0211A3D0 ; =0x00000808
	bl FUN_0206c158
	ldr r0, [r9, #4]
	add r0, r0, #0x15c
	add r0, r0, #0x1800
	bl  FUN_ov16_020efa04
	mla r2, r5, r10, r6
	ldr r0, _0211A3D4 ; =0x0209BA20
	mov r1, r7
	bl FUN_02050dac
	mov r0, #0x63
	strb r0, [r4, #0x22]
	strb r7, [r4, #0x245]
	mov r4, #0
	ldr r1, _0211A3D8 ; =0x020A0640
	ldr r0, _0211A3DC ; =0x0209A454
	strb r4, [r1, #0x1a]
	strb r4, [r1, #0x1b]
	strb r7, [r0, #0x2e]
	strb r7, [r0, #0x2f]
	strb r4, [r0, #0x30]
	strb r4, [r0, #0x32]
	strb r7, [r0, #0x28]
	strb r7, [r0, #0x29]
	strb r4, [r0, #0x2a]
	strb r4, [r0, #0x2b]
	strb r4, [r0, #0x31]
	strb r4, [r0, #0x33]
	ldr r0, [r9, #4]
	bl FUN_02041d9c
	ldr r5, [r9, #4]
	mov r1, r4
	mov r0, r5
	mov r4, #0x5a
	mov r2, r4
	bl FUN_02041ef0
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_02041ef0
	ldr r0, _0211A3E0 ; =0x0209A0E0
	strb r8, [r0]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A3CC: .word unk_020A1640
_0211A3D0: .word 0x00000808
_0211A3D4: .word unk_0209BA20
_0211A3D8: .word unk_020A0640
_0211A3DC: .word unk_0209A454
_0211A3E0: .word unk_0209A0E0
	arm_func_end FUN_ov72_0211a2d4

	arm_func_start FUN_ov72_0211a3e4
FUN_ov72_0211a3e4: ; 0x0211A3E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #6
	mov r6, r1
	str r4, [r5, #8]
	bl FUN_02041d9c
	ldr r0, [r5, #4]
	bl FUN_02042054
	cmp r0, #0x79
	bne _0211A428
	mov r0, r4
	bl  FUN_ov16_020f1528
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x79
	b _0211A44C
_0211A428:
	ldr r5, [r5, #4]
	mov r4, #0x79
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, #1
_0211A44C:
	bl FUN_02041ef0
	bl FUN_ov72_02119f00
	ldr r0, _0211A460 ; =0x0209A0E0
	strb r6, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A460: .word unk_0209A0E0
	arm_func_end FUN_ov72_0211a3e4

	arm_func_start FUN_ov72_0211a464
FUN_ov72_0211a464: ; 0x0211A464
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x70]
	ldrb r3, [r4, #0xc16]
	mov lr, #0x1c
	cmp r0, #0
	moveq lr, #0xe
	str r1, [r4, #0x78]
	mov r12, #1
	mov r0, r4
	mov r1, r2
	str lr, [r4, #0x74]
	str r2, [r4, #0x80]
	strb r12, [r4, #0x84]
	strb r3, [r4, #0x86]
	bl FUN_ov72_0211a0e4
	ldr r1, [r4, #0xc]
	strb r0, [r4, #0x85]
	cmp r1, #0
	cmpne r1, #1
	cmpne r1, #0xe
	cmpne r1, #3
	cmpne r1, #4
	mvneq r0, #0
	streq r0, [r4, #0x7c]
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211A4DC ; =0x0209AEC0
	bl FUN_020466c0
	str r0, [r4, #0x7c]
	ldmfd sp!, {r4, pc}
_0211A4DC: .word unk_0209AEC0
	arm_func_end FUN_ov72_0211a464

	arm_func_start FUN_ov72_0211a4e0
FUN_ov72_0211a4e0: ; 0x0211A4E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r5, _0211A514 ; =0x0209F5C0
	mov r4, r6
_0211A4F0:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl  FUN_ov16_020f6084
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x6a
	blo _0211A4F0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A514: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211a4e0

	arm_func_start FUN_ov72_0211a518
FUN_ov72_0211a518: ; 0x0211A518
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x68]
	mov r6, r1
	cmp r0, r6
	moveq r0, #1
	mov r4, #0
	streqb r0, [r5, #0x12]
	beq _0211A54C
	ldr r0, _0211A628 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	strb r4, [r5, #0x12]
_0211A54C:
	ldr r0, [r5, #0xc]
	str r6, [r5, #0x68]
	cmp r0, #6
	bne _0211A5C0
	ldr r0, [r5, #0x1c]
	cmp r0, #0x36
	cmpne r0, #0x37
	beq _0211A5C0
	ldr r0, _0211A62C ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f5ff4
	ldr r0, _0211A630 ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	ldr r1, [r5, #0xc44]
	cmp r1, #0
	beq _0211A5A0
	ldr r0, _0211A634 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r4, [r5, #0xc44]
_0211A5A0:
	mov r0, r5
	bl FUN_ov72_0211c660
	mov r0, r5
	bl FUN_ov72_02121984
	mov r0, r5
	mov r1, #0
	bl FUN_ov72_0211d7c0
	b _0211A61C
_0211A5C0:
	ldr r0, [r5, #0xc]
	cmp r0, #0xf
	bne _0211A61C
	ldr r0, _0211A62C ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f5ff4
	ldr r0, _0211A630 ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	ldr r1, [r5, #0xc44]
	cmp r1, #0
	beq _0211A600
	ldr r0, _0211A634 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r4, [r5, #0xc44]
_0211A600:
	mov r0, r5
	bl FUN_ov72_0211c660
	mov r0, r5
	bl FUN_ov72_02121984
	mov r0, r5
	mov r1, #0
	bl FUN_ov72_0211ebc0
_0211A61C:
	mov r0, r5
	bl FUN_ov72_0211e97c
	ldmfd sp!, {r4, r5, r6, pc}
_0211A628: .word unk_0209AC44
_0211A62C: .word unk_0209F5C0
_0211A630: .word unk_0209A070
_0211A634: .word unk_02099F38
	arm_func_end FUN_ov72_0211a518

	arm_func_start FUN_ov72_0211a638
FUN_ov72_0211a638: ; 0x0211A638
	cmp r1, #0x69
	addls pc, pc, r1, lsl #2
	b _0211A83C
_0211A644: ; jump table
	b _0211A83C ; case 0
	b _0211A83C ; case 1
	b _0211A83C ; case 2
	b _0211A83C ; case 3
	b _0211A83C ; case 4
	b _0211A7EC ; case 5
	b _0211A7EC ; case 6
	b _0211A7EC ; case 7
	b _0211A7F4 ; case 8
	b _0211A7F4 ; case 9
	b _0211A7F4 ; case 10
	b _0211A7FC ; case 11
	b _0211A7FC ; case 12
	b _0211A7FC ; case 13
	b _0211A83C ; case 14
	b _0211A7EC ; case 15
	b _0211A83C ; case 16
	b _0211A83C ; case 17
	b _0211A83C ; case 18
	b _0211A83C ; case 19
	b _0211A83C ; case 20
	b _0211A83C ; case 21
	b _0211A83C ; case 22
	b _0211A83C ; case 23
	b _0211A83C ; case 24
	b _0211A7EC ; case 25
	b _0211A7EC ; case 26
	b _0211A7F4 ; case 27
	b _0211A7F4 ; case 28
	b _0211A83C ; case 29
	b _0211A83C ; case 30
	b _0211A7EC ; case 31
	b _0211A83C ; case 32
	b _0211A7EC ; case 33
	b _0211A7EC ; case 34
	b _0211A7EC ; case 35
	b _0211A7F4 ; case 36
	b _0211A7F4 ; case 37
	b _0211A7F4 ; case 38
	b _0211A7FC ; case 39
	b _0211A7FC ; case 40
	b _0211A7FC ; case 41
	b _0211A804 ; case 42
	b _0211A804 ; case 43
	b _0211A804 ; case 44
	b _0211A80C ; case 45
	b _0211A80C ; case 46
	b _0211A80C ; case 47
	b _0211A83C ; case 48
	b _0211A83C ; case 49
	b _0211A83C ; case 50
	b _0211A83C ; case 51
	b _0211A83C ; case 52
	b _0211A83C ; case 53
	b _0211A7EC ; case 54
	b _0211A7EC ; case 55
	b _0211A83C ; case 56
	b _0211A83C ; case 57
	b _0211A83C ; case 58
	b _0211A83C ; case 59
	b _0211A83C ; case 60
	b _0211A83C ; case 61
	b _0211A83C ; case 62
	b _0211A83C ; case 63
	b _0211A83C ; case 64
	b _0211A83C ; case 65
	b _0211A83C ; case 66
	b _0211A83C ; case 67
	b _0211A83C ; case 68
	b _0211A83C ; case 69
	b _0211A83C ; case 70
	b _0211A7EC ; case 71
	b _0211A7F4 ; case 72
	b _0211A7FC ; case 73
	b _0211A804 ; case 74
	b _0211A80C ; case 75
	b _0211A814 ; case 76
	b _0211A81C ; case 77
	b _0211A824 ; case 78
	b _0211A82C ; case 79
	b _0211A834 ; case 80
	b _0211A7EC ; case 81
	b _0211A7EC ; case 82
	b _0211A7EC ; case 83
	b _0211A804 ; case 84
	b _0211A804 ; case 85
	b _0211A804 ; case 86
	b _0211A83C ; case 87
	b _0211A83C ; case 88
	b _0211A83C ; case 89
	b _0211A83C ; case 90
	b _0211A83C ; case 91
	b _0211A83C ; case 92
	b _0211A83C ; case 93
	b _0211A83C ; case 94
	b _0211A83C ; case 95
	b _0211A83C ; case 96
	b _0211A83C ; case 97
	b _0211A83C ; case 98
	b _0211A83C ; case 99
	b _0211A7F4 ; case 100
	b _0211A7F4 ; case 101
	b _0211A7F4 ; case 102
	b _0211A7FC ; case 103
	b _0211A7FC ; case 104
	b _0211A7FC ; case 105
_0211A7EC:
	mov r0, #0
	bx lr
_0211A7F4:
	mov r0, #1
	bx lr
_0211A7FC:
	mov r0, #2
	bx lr
_0211A804:
	mov r0, #3
	bx lr
_0211A80C:
	mov r0, #4
	bx lr
_0211A814:
	mov r0, #5
	bx lr
_0211A81C:
	mov r0, #6
	bx lr
_0211A824:
	mov r0, #7
	bx lr
_0211A82C:
	mov r0, #8
	bx lr
_0211A834:
	mov r0, #9
	bx lr
_0211A83C:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov72_0211a638

	arm_func_start FUN_ov72_0211a844
FUN_ov72_0211a844: ; 0x0211A844
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #8]
	mov r7, r1
	cmp r0, #5
	ldreqb r0, [r8, #0x11]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _0211AF1C ; =0x0209F5C0
	mov r6, #0
	mov r0, r4
	mov r1, r6
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #0x400
	strh r7, [r0, #0x48]
	tst r7, #1
	beq _0211ABA8
	ldr r0, [r8, #0xc]
	sub r5, r6, #1
	cmp r0, #0x18
	addls pc, pc, r0, lsl #2
	b _0211AA64
_0211A8A4: ; jump table
	b _0211A908 ; case 0
	b _0211A944 ; case 1
	b _0211AA64 ; case 2
	b _0211A978 ; case 3
	b _0211A978 ; case 4
	b _0211A944 ; case 5
	b _0211A95C ; case 6
	b _0211A95C ; case 7
	b _0211A944 ; case 8
	b _0211A944 ; case 9
	b _0211A944 ; case 10
	b _0211AA64 ; case 11
	b _0211AA64 ; case 12
	b _0211A978 ; case 13
	b _0211A988 ; case 14
	b _0211A9D8 ; case 15
	b _0211AA2C ; case 16
	b _0211AA54 ; case 17
	b _0211A944 ; case 18
	b _0211A944 ; case 19
	b _0211A944 ; case 20
	b _0211A944 ; case 21
	b _0211A944 ; case 22
	b _0211A944 ; case 23
	b _0211A944 ; case 24
_0211A908:
	ldr r0, [r8, #0x68]
	cmp r0, #0
	beq _0211A92C
	cmp r0, #1
	beq _0211A938
	cmp r0, #2
	moveq r6, #0xd
	moveq r5, #3
	b _0211AA64
_0211A92C:
	mov r6, #7
	mov r5, #1
	b _0211AA64
_0211A938:
	mov r6, #0xa
	mov r5, #2
	b _0211AA64
_0211A944:
	ldr r0, [r8, #0x68]
	cmp r0, #0
	beq _0211A954
	b _0211AA38
_0211A954:
	str r6, [r8, #0x68]
	b _0211AA48
_0211A95C:
	ldrb r1, [r8, #0x1fd]
	mov r6, #0x37
	mov r0, r4
	str r6, [r8, #0x28]
	mov r5, #0xd
	bl  FUN_ov16_020f6530
	b _0211AA64
_0211A978:
	mov r6, #0x1f
	str r6, [r8, #0x28]
	mov r5, #0x19
	b _0211AA64
_0211A988:
	ldr r0, [r8, #0x68]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211AA64
_0211A998: ; jump table
	b _0211A9A8 ; case 0
	b _0211A9B4 ; case 1
	b _0211A9C0 ; case 2
	b _0211A9CC ; case 3
_0211A9A8:
	mov r6, #0x53
	mov r5, #0x1a
	b _0211AA64
_0211A9B4:
	mov r6, #0x66
	mov r5, #0x1b
	b _0211AA64
_0211A9C0:
	mov r6, #0x69
	mov r5, #0x1c
	b _0211AA64
_0211A9CC:
	mov r6, #0x56
	mov r5, #0x1d
	b _0211AA64
_0211A9D8:
	ldr r0, [r8, #0x68]
	bl FUN_ov72_02119f50
	cmp r0, #0
	beq _0211AA04
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r6, #0x58
	mov r1, #1
	str r6, [r8, #0x28]
	mov r5, #0x1e
_0211A9FC:
	bl FUN_0202cf6c
	b _0211AA64
_0211AA04:
	ldr r0, [r8, #0x68]
	bl FUN_ov72_0211a0a8
	cmp r0, #0
	beq _0211AA64
	mov r0, r8
	mov r1, #0x11
	bl FUN_ov72_0212006c
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #1
	b _0211A9FC
_0211AA2C:
	ldr r0, [r8, #0x68]
	cmp r0, #0
	beq _0211AA48
_0211AA38:
	cmp r0, #1
	moveq r6, #0x1c
	moveq r5, #6
	b _0211AA64
_0211AA48:
	mov r6, #0x1a
	mov r5, #5
	b _0211AA64
_0211AA54:
	ldr r0, [r8, #0x68]
	cmp r0, #0
	moveq r6, #0x1a
	moveq r5, #5
_0211AA64:
	cmp r6, #0
	beq _0211AEF0
	cmp r6, #0x29
	bgt _0211AB08
	bge _0211AB68
	cmp r6, #0x1c
	bgt _0211AAE4
	bge _0211AB7C
	cmp r6, #0xf
	bgt _0211AAD8
	cmp r6, #0
	addge pc, pc, r6, lsl #2
	b _0211AB88
_0211AA98: ; jump table
	b _0211AB88 ; case 0
	b _0211AB88 ; case 1
	b _0211AB88 ; case 2
	b _0211AB88 ; case 3
	b _0211AB88 ; case 4
	b _0211AB88 ; case 5
	b _0211AB5C ; case 6
	b _0211AB68 ; case 7
	b _0211AB88 ; case 8
	b _0211AB5C ; case 9
	b _0211AB68 ; case 10
	b _0211AB88 ; case 11
	b _0211AB5C ; case 12
	b _0211AB68 ; case 13
	b _0211AB88 ; case 14
	b _0211AB7C ; case 15
_0211AAD8:
	cmp r6, #0x1a
	beq _0211AB68
	b _0211AB88
_0211AAE4:
	cmp r6, #0x23
	bgt _0211AAFC
	bge _0211AB68
	cmp r6, #0x1f
	beq _0211AB68
	b _0211AB88
_0211AAFC:
	cmp r6, #0x26
	beq _0211AB68
	b _0211AB88
_0211AB08:
	cmp r6, #0x53
	bgt _0211AB38
	bge _0211AB68
	cmp r6, #0x2f
	bgt _0211AB2C
	bge _0211AB68
	cmp r6, #0x2c
	beq _0211AB68
	b _0211AB88
_0211AB2C:
	cmp r6, #0x37
	beq _0211AB68
	b _0211AB88
_0211AB38:
	cmp r6, #0x66
	bgt _0211AB50
	bge _0211AB68
	cmp r6, #0x56
	beq _0211AB68
	b _0211AB88
_0211AB50:
	cmp r6, #0x69
	beq _0211AB68
	b _0211AB88
_0211AB5C:
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #8
	b _0211AB84
_0211AB68:
	ldr r1, [r8, #0xbec]
	cmp r1, #0
	blt _0211AB88
	ldr r0, _0211AF20 ; =0x0209AC44
	b _0211AB84
_0211AB7C:
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #4
_0211AB84:
	bl FUN_0202cf6c
_0211AB88:
	cmp r5, #0
	blt _0211AEF0
	add r0, r8, r5
	ldrb r1, [r0, #0x1f0]
	ldr r0, _0211AF1C ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	str r6, [r8, #0x28]
	b _0211AEF0
_0211ABA8:
	tst r7, #2
	beq _0211ACE4
	ldr r0, [r8, #0xc]
	cmp r0, #0x18
	addls pc, pc, r0, lsl #2
	b _0211AEF0
_0211ABC0: ; jump table
	b _0211AC24 ; case 0
	b _0211ACBC ; case 1
	b _0211AC48 ; case 2
	b _0211AEF0 ; case 3
	b _0211AEF0 ; case 4
	b _0211ACBC ; case 5
	b _0211AC68 ; case 6
	b _0211AC68 ; case 7
	b _0211ACBC ; case 8
	b _0211ACBC ; case 9
	b _0211ACBC ; case 10
	b _0211AEF0 ; case 11
	b _0211AEF0 ; case 12
	b _0211AEF0 ; case 13
	b _0211AC8C ; case 14
	b _0211ACA4 ; case 15
	b _0211ACBC ; case 16
	b _0211AEF0 ; case 17
	b _0211ACBC ; case 18
	b _0211ACBC ; case 19
	b _0211ACBC ; case 20
	b _0211ACBC ; case 21
	b _0211ACBC ; case 22
	b _0211ACBC ; case 23
	b _0211ACBC ; case 24
_0211AC24:
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r1, [r8, #0x1f7]
	mov r0, r4
	bl  FUN_ov16_020f6530
	mov r0, #0x1d
_0211AC40:
	str r0, [r8, #0x28]
	b _0211AEF0
_0211AC48:
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r1, [r8, #0x1f4]
	mov r0, r4
	bl  FUN_ov16_020f6530
	mov r0, #0xf
	b _0211AC40
_0211AC68:
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r2, #0x39
	ldrb r1, [r8, #0x1fe]
_0211AC7C:
	mov r0, r4
	str r2, [r8, #0x28]
	bl  FUN_ov16_020f6530
	b _0211AEF0
_0211AC8C:
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r2, #0x1d
	ldrb r1, [r8, #0x1f7]
	b _0211AC7C
_0211ACA4:
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r2, #0x5a
	ldrb r1, [r8, #0x20f]
	b _0211AC7C
_0211ACBC:
	ldrb r1, [r8, #0x1f6]
	ldr r0, _0211AF24 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r2, #0x1c
	ldrb r1, [r8, #0x1f6]
	b _0211AC7C
_0211ACE4:
	tst r7, #0x400
	beq _0211ADB4
	ldr r0, [r8, #0xc]
	cmp r0, #6
	beq _0211AD04
	cmp r0, #0xf
	beq _0211AD7C
	b _0211AEF0
_0211AD04:
	ldr r0, _0211AF28 ; =0x0209A134
	ldrb r2, [r8, #0xbe5]
	ldr r1, [r0]
	mov r3, r1
	b _0211AD38
_0211AD18:
	ldrb r0, [r3, #0x6f]
	cmp r0, #0
	bne _0211AD30
	cmp r2, #0
	beq _0211AD48
	sub r2, r2, #1
_0211AD30:
	add r6, r6, #1
	add r3, r3, #0xbc
_0211AD38:
	ldrb r0, [r1, #0x3ad]
	cmp r6, r0
	blt _0211AD18
	mov r3, #0
_0211AD48:
	ldrb r0, [r3, #0x74]
	cmp r0, #0
	beq _0211AD6C
	ldrb r1, [r8, #0x210]
	ldr r0, _0211AF1C ; =0x0209F5C0
_0211AD5C:
	mov r4, #0x3b
_0211AD60:
	bl  FUN_ov16_020f6530
	str r4, [r8, #0x28]
	b _0211AEF0
_0211AD6C:
	ldr r0, _0211AF20 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	b _0211AEF0
_0211AD7C:
	ldr r0, _0211AF2C ; =0x020A1640
	ldr r2, [r0, #0x230]
	cmp r2, #0
	beq _0211AEF0
	ldrb r1, [r8, #0xbe3]
	ldr r0, _0211AF30 ; =0x00000808
	mla r0, r1, r0, r2
	ldrb r0, [r0, #0xd9]
	tst r0, #1
	beq _0211ADB0
	ldrb r1, [r8, #0x210]
	mov r0, r4
	b _0211AD5C
_0211ADB0:
	b _0211AD6C
_0211ADB4:
	tst r7, #0x800
	beq _0211AE04
	ldr r0, [r8, #0xc]
	cmp r0, #0xf
	bne _0211AEF0
	ldr r0, _0211AF2C ; =0x020A1640
	ldr r2, [r0, #0x230]
	cmp r2, #0
	beq _0211AEF0
	ldrb r1, [r8, #0xbe3]
	ldr r0, _0211AF30 ; =0x00000808
	mla r0, r1, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0211AE00
	ldrb r1, [r8, #0x212]
	mov r0, r4
	mov r4, #0x43
	b _0211AD60
_0211AE00:
	b _0211AD6C
_0211AE04:
	tst r7, #0x40
	beq _0211AE38
	ldrb r0, [r8, #0xbe0]
	cmp r0, #1
	bls _0211AEF0
	ldrb r2, [r8, #0xbe1]
	cmp r2, #0
	beq _0211AEF0
	mul r1, r0, r2
	ldr r0, [r8, #0x68]
	add r0, r0, r1
	sub r0, r0, r2
	b _0211AEC4
_0211AE38:
	tst r7, #0x80
	beq _0211AE68
	ldrb r0, [r8, #0xbe0]
	cmp r0, #1
	bls _0211AEF0
	ldrb r2, [r8, #0xbe1]
	cmp r2, #0
	beq _0211AEF0
	mul r1, r0, r2
	ldr r0, [r8, #0x68]
	add r0, r0, r2
	b _0211AEC4
_0211AE68:
	tst r7, #0x20
	beq _0211AE9C
	ldrb r2, [r8, #0xbe0]
	cmp r2, #0
	beq _0211AEF0
	ldrb r0, [r8, #0xbe1]
	cmp r0, #1
	bls _0211AEF0
	mul r1, r2, r0
	ldr r0, [r8, #0x68]
	add r0, r0, r1
	sub r0, r0, #1
	b _0211AEC4
_0211AE9C:
	tst r7, #0x10
	ldrneb r2, [r8, #0xbe0]
	cmpne r2, #0
	beq _0211AEF0
	ldrb r0, [r8, #0xbe1]
	cmp r0, #1
	bls _0211AEF0
	mul r1, r2, r0
	ldr r0, [r8, #0x68]
	add r0, r0, #1
_0211AEC4:
	bl _s32_div_f
	mov r0, r8
	bl FUN_ov72_0211a518
	ldrb r2, [r8, #0xbe2]
	ldr r1, [r8, #0x68]
	ldr r0, _0211AF24 ; =0x0209A070
	add r1, r2, r1
	add r1, r8, r1
	ldrb r1, [r1, #0x1f0]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
_0211AEF0:
	ldr r0, [r8, #0xc]
	cmp r0, #7
	beq _0211AF04
	cmp r0, #0xf
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF04:
	tst r7, #0xf0
	ldrne r0, [r8, #0x68]
	andne r0, r0, #0xff
	strneb r0, [r8, #0xbe3]
	strneb r0, [r8, #0xbe4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF1C: .word unk_0209F5C0
_0211AF20: .word unk_0209AC44
_0211AF24: .word unk_0209A070
_0211AF28: .word unk_0209A134
_0211AF2C: .word unk_020A1640
_0211AF30: .word 0x00000808
	arm_func_end FUN_ov72_0211a844

	arm_func_start FUN_ov72_0211af34
FUN_ov72_0211af34: ; 0x0211AF34
	ldr r0, _0211AF4C ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211AF50 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211AF4C: .word unk_0209F5C0
_0211AF50: .word  FUN_ov16_020f6b3c
	arm_func_end FUN_ov72_0211af34

	arm_func_start FUN_ov72_0211af54
FUN_ov72_0211af54: ; 0x0211AF54
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x1c]
	ldr r5, [r6, #0x68]
	bl FUN_ov72_0211a638
	movs r4, r0
	bmi _0211AF88
	ldr r0, [r6, #0x6c]
	cmp r4, r0
	bge _0211AF88
	mov r0, r6
	mov r1, r4
	bl FUN_ov72_0211a518
_0211AF88:
	ldr r0, [r6, #0xc]
	cmp r0, #7
	bne _0211AF9C
	cmp r5, r4
	ldmnefd sp!, {r4, r5, r6, pc}
_0211AF9C:
	cmp r0, #0xf
	bne _0211B01C
	ldr r0, [r6, #0x68]
	bl FUN_ov72_02119f50
	cmp r0, #0
	bne _0211AFD8
	ldr r0, [r6, #0x1c]
	cmp r0, #0x57
	blt _0211AFD8
	cmp r0, #0x58
	bgt _0211AFD8
	ldr r0, _0211B06C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211AFD8:
	ldr r1, [r6, #0x1c]
	cmp r1, #0x3c
	blt _0211AFFC
	cmp r1, #0x3d
	bgt _0211AFFC
	ldr r0, _0211B06C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211AFFC:
	cmp r1, #0x44
	blt _0211B060
	cmp r1, #0x45
	bgt _0211B060
	ldr r0, _0211B06C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B01C:
	ldr r1, [r6, #0x1c]
	cmp r1, #0x3c
	blt _0211B040
	cmp r1, #0x3d
	bgt _0211B040
	ldr r0, _0211B06C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B040:
	cmp r1, #0x44
	blt _0211B060
	cmp r1, #0x45
	bgt _0211B060
	ldr r0, _0211B06C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B060:
	ldr r0, _0211B070 ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B06C: .word unk_0209AC44
_0211B070: .word unk_0209A070
	arm_func_end FUN_ov72_0211af54

	arm_func_start FUN_ov72_0211b074
FUN_ov72_0211b074: ; 0x0211B074
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0xf
	bne _0211B0AC
	ldr r0, [r4, #0x68]
	bl FUN_ov72_02119f50
	cmp r0, #0
	bne _0211B0AC
	ldr r0, [r4, #0x1c]
	cmp r0, #0x57
	blt _0211B0AC
	cmp r0, #0x58
	ldmlefd sp!, {r4, pc}
_0211B0AC:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _0211B0C8
	ldr r0, _0211B0EC ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211B0C8:
	ldr r4, _0211B0EC ; =0x0209A070
	mov r0, r4
	bl  FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211B0EC: .word unk_0209A070
	arm_func_end FUN_ov72_0211b074

	arm_func_start FUN_ov72_0211b0f0
FUN_ov72_0211b0f0: ; 0x0211B0F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, #1
	cmp r0, #0x69
	addls pc, pc, r0, lsl #2
	b _0211B370
_0211B10C: ; jump table
	b _0211B370 ; case 0
	b _0211B370 ; case 1
	b _0211B370 ; case 2
	b _0211B370 ; case 3
	b _0211B370 ; case 4
	b _0211B2B4 ; case 5
	b _0211B2B4 ; case 6
	b _0211B2B4 ; case 7
	b _0211B2B4 ; case 8
	b _0211B2B4 ; case 9
	b _0211B2B4 ; case 10
	b _0211B2B4 ; case 11
	b _0211B2B4 ; case 12
	b _0211B2B4 ; case 13
	b _0211B370 ; case 14
	b _0211B364 ; case 15
	b _0211B370 ; case 16
	b _0211B370 ; case 17
	b _0211B370 ; case 18
	b _0211B370 ; case 19
	b _0211B370 ; case 20
	b _0211B370 ; case 21
	b _0211B370 ; case 22
	b _0211B370 ; case 23
	b _0211B370 ; case 24
	b _0211B370 ; case 25
	b _0211B314 ; case 26
	b _0211B370 ; case 27
	b _0211B364 ; case 28
	b _0211B364 ; case 29
	b _0211B364 ; case 30
	b _0211B314 ; case 31
	b _0211B370 ; case 32
	b _0211B2F4 ; case 33
	b _0211B370 ; case 34
	b _0211B370 ; case 35
	b _0211B2F4 ; case 36
	b _0211B370 ; case 37
	b _0211B370 ; case 38
	b _0211B2F4 ; case 39
	b _0211B370 ; case 40
	b _0211B370 ; case 41
	b _0211B2F4 ; case 42
	b _0211B370 ; case 43
	b _0211B370 ; case 44
	b _0211B2F4 ; case 45
	b _0211B370 ; case 46
	b _0211B370 ; case 47
	b _0211B370 ; case 48
	b _0211B370 ; case 49
	b _0211B370 ; case 50
	b _0211B370 ; case 51
	b _0211B370 ; case 52
	b _0211B370 ; case 53
	b _0211B314 ; case 54
	b _0211B314 ; case 55
	b _0211B364 ; case 56
	b _0211B364 ; case 57
	b _0211B370 ; case 58
	b _0211B370 ; case 59
	b _0211B370 ; case 60
	b _0211B370 ; case 61
	b _0211B370 ; case 62
	b _0211B370 ; case 63
	b _0211B370 ; case 64
	b _0211B370 ; case 65
	b _0211B370 ; case 66
	b _0211B370 ; case 67
	b _0211B370 ; case 68
	b _0211B370 ; case 69
	b _0211B370 ; case 70
	b _0211B2D8 ; case 71
	b _0211B2D8 ; case 72
	b _0211B2D8 ; case 73
	b _0211B2D8 ; case 74
	b _0211B2D8 ; case 75
	b _0211B2D8 ; case 76
	b _0211B2D8 ; case 77
	b _0211B2D8 ; case 78
	b _0211B2D8 ; case 79
	b _0211B2D8 ; case 80
	b _0211B314 ; case 81
	b _0211B370 ; case 82
	b _0211B314 ; case 83
	b _0211B314 ; case 84
	b _0211B370 ; case 85
	b _0211B314 ; case 86
	b _0211B324 ; case 87
	b _0211B324 ; case 88
	b _0211B364 ; case 89
	b _0211B364 ; case 90
	b _0211B370 ; case 91
	b _0211B370 ; case 92
	b _0211B370 ; case 93
	b _0211B370 ; case 94
	b _0211B370 ; case 95
	b _0211B370 ; case 96
	b _0211B370 ; case 97
	b _0211B370 ; case 98
	b _0211B370 ; case 99
	b _0211B314 ; case 100
	b _0211B370 ; case 101
	b _0211B314 ; case 102
	b _0211B314 ; case 103
	b _0211B370 ; case 104
	b _0211B314 ; case 105
_0211B2B4:
	ldr r1, [r5, #0xbec]
	cmp r1, #0
	blt _0211B2D0
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _0211B2D0
	b _0211B35C
_0211B2D0:
	mov r4, #0
	b _0211B370
_0211B2D8:
	ldr r2, [r5, #0x68]
	ldrb r0, [r5, #0xbe4]
	and r1, r2, #0xff
	strb r2, [r5, #0xbe3]
	cmp r0, r1
	strneb r1, [r5, #0xbe4]
	b _0211B30C
_0211B2F4:
	ldr r2, [r5, #0x68]
	ldrb r0, [r5, #0xbe6]
	and r1, r2, #0xff
	strb r2, [r5, #0xbe5]
	cmp r0, r1
	strneb r1, [r5, #0xbe6]
_0211B30C:
	movne r4, #0
	b _0211B370
_0211B314:
	ldr r1, [r5, #0xbec]
	cmp r1, #0
	blt _0211B370
	b _0211B35C
_0211B324:
	ldr r0, [r5, #0xc]
	cmp r0, #0xf
	bne _0211B350
	ldr r0, [r5, #0x68]
	bl FUN_ov72_02119f50
	cmp r0, #0
	beq _0211B370
	ldr r1, [r5, #0xbec]
	cmp r1, #0
	blt _0211B370
	b _0211B35C
_0211B350:
	ldr r1, [r5, #0xbec]
	cmp r1, #0
	blt _0211B370
_0211B35C:
	ldr r0, _0211B3C4 ; =0x0209AC44
	b _0211B36C
_0211B364:
	ldr r0, _0211B3C4 ; =0x0209AC44
	mov r1, #4
_0211B36C:
	bl FUN_0202cf6c
_0211B370:
	ldr r7, _0211B3C8 ; =0x0209A070
	ldr r1, [r5, #0x1c]
	mov r0, r7
	bl  FUN_ov16_020f6d3c
	movs r6, r0
	bmi _0211B3AC
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	cmp r4, #0
	beq _0211B3AC
	ldr r0, _0211B3CC ; =0x0209F5C0
	mov r1, r6
	bl  FUN_ov16_020f6530
_0211B3AC:
	ldr r0, [r5, #0x1c]
	cmp r4, #0
	str r0, [r5, #0x28]
	moveq r0, #0
	streq r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B3C4: .word unk_0209AC44
_0211B3C8: .word unk_0209A070
_0211B3CC: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211b0f0

	arm_func_start FUN_ov72_0211b3d0
FUN_ov72_0211b3d0: ; 0x0211B3D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B4BC ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211B480
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0211B44C
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov72_0211af34
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211B44C
	mov r0, r4
	bl FUN_ov72_0211af54
_0211B44C:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x14]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x18]
	bl FUN_ov72_0211af34
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov72_0211b074
	ldmfd sp!, {r3, r4, r5, pc}
_0211B480:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ldrne r1, [r4, #0x1c]
	cmpne r1, #0
	beq _0211B4A8
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _0211B4A8
	mov r0, r4
	bl FUN_ov72_0211b0f0
_0211B4A8:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4BC: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211b3d0

	arm_func_start FUN_ov72_0211b4c0
FUN_ov72_0211b4c0: ; 0x0211B4C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x2a0
	mov r1, #0
	mov r2, #0x1a4
	bl MI_CpuFill8
	ldr r0, _0211B4FC ; =0x021230D0
	add r1, r4, #0x2a0
	bl  FUN_ov16_020f316c
	ldr r0, _0211B500 ; =0x021230EC
	add r1, r4, #0x3f0
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211B4FC: .word ov72_021230D0
_0211B500: .word ov72_021230EC
	arm_func_end FUN_ov72_0211b4c0

	arm_func_start FUN_ov72_0211b504
FUN_ov72_0211b504: ; 0x0211B504
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r4, [r5, #0x2a0]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _0211B590 ; =0x02122C94
	ldr r0, [r8]
	cmp r0, #0
	beq _0211B54C
	add r7, r5, #0x2a0
	mov r6, #0xc
_0211B530:
	ldr r3, [r8, #4]
	mov r2, r4
	mla r1, r3, r6, r7
	bl  FUN_ov16_020f32b4
	ldr r0, [r8, #8]!
	cmp r0, #0
	bne _0211B530
_0211B54C:
	ldrb r0, [r5, #0xc16]
	ldr r7, _0211B594 ; =0x021228B0
	cmp r0, #0
	ldrne r7, _0211B598 ; =0x02122984
	ldr r0, [r7]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r6, r5, #0x2a0
	mov r5, #0xc
_0211B570:
	ldr r3, [r7, #4]
	mov r2, r4
	mla r1, r3, r5, r6
	bl  FUN_ov16_020f32b4
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _0211B570
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B590: .word 0x02122C94
_0211B594: .word 0x021228B0
_0211B598: .word 0x02122984
	arm_func_end FUN_ov72_0211b504

	arm_func_start FUN_ov72_0211b59c
FUN_ov72_0211b59c: ; 0x0211B59C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	add r0, r4, #0x24
	add r0, r0, #0xc00
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	add r1, r4, #0x18
	ldr r0, _0211B618 ; =0x0212310C
	add r1, r1, #0xc00
	bl  FUN_ov16_020f3054
	ldr r5, _0211B61C ; =0x02122ABC
	add lr, sp, #4
	mov r12, #4
_0211B5D8:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211B5D8
	ldmia r5, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, #0
	str r0, [sp]
	add r3, r4, #0x24
	ldr r1, [r4, #0xc18]
	ldr r0, _0211B620 ; =0x02123128
	add r2, sp, #4
	add r3, r3, #0xc00
	bl  FUN_ov16_020f5450
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, pc}
_0211B618: .word ov72_0212310C
_0211B61C: .word 0x02122ABC
_0211B620: .word ov72_02123128
	arm_func_end FUN_ov72_0211b59c

	arm_func_start FUN_ov72_0211b624
FUN_ov72_0211b624: ; 0x0211B624
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211B684 ; =0x02099F38
	b _0211B678
_0211B63C:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xc24]
	cmp r1, #0
	beq _0211B674
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B674
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xc24]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211B674:
	add r6, r6, #1
_0211B678:
	cmp r6, #8
	blt _0211B63C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B684: .word unk_02099F38
	arm_func_end FUN_ov72_0211b624

	arm_func_start FUN_ov72_0211b688
FUN_ov72_0211b688: ; 0x0211B688
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r6, r0
	cmp r1, #0
	mov r9, #0
	mov r7, #0xc
	beq _0211B77C
	ldr r4, _0211B850 ; =0x021229A4
	ldr r11, _0211B854 ; =0x0209F5C0
	mov r5, r9
	add r8, sp, #0x2c
_0211B6B4:
	ldr r1, [r4, #4]
	mla r0, r1, r7, r6
	ldr r3, [r0, #0x2a0]
	cmp r3, #0
	beq _0211B748
	ldrb r10, [r4, #0xf]
	ldrb lr, [r4, #0xe]
	ldr r2, [r3, #0xc]
	ldr r1, [r4, #0x10]
	smulbb r0, lr, r10
	add r2, r3, r2
	mov r0, r0, lsl #1
	mla r12, r1, r0, r2
	ldrsb r2, [r4, #0xd]
	ldrsb r1, [r4, #0xc]
	ldr r3, [r4, #8]
	mov r0, lr, lsl #3
	strh r1, [sp, #0x2c]
	mov r1, r10, lsl #3
	strh r2, [sp, #0x2e]
	strh r0, [sp, #0x38]
	strh r1, [sp, #0x3a]
	strh lr, [sp, #0x30]
	strh r10, [sp, #0x32]
	strh r9, [sp, #0x34]
	strh r9, [sp, #0x36]
	strb r3, [sp, #0x3c]
	str r12, [sp, #0x40]
	str r9, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	str r9, [sp, #0x10]
	ldr r3, [r4]
	mov r0, r11
	mov r1, r9
	mov r2, #1
	bl  FUN_ov16_020f5c34
_0211B748:
	add r5, r5, #1
	cmp r5, #2
	add r4, r4, #0x14
	blo _0211B6B4
	ldr r0, _0211B858 ; =0x0209A070
	mov r3, #0
	mov r1, #0x3a
	mov r2, #0x3b
	str r3, [sp]
	bl  FUN_ov16_020f6c8c
	add sp, sp, #0x44
	strb r0, [r6, #0x210]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B77C:
	ldr r4, _0211B85C ; =0x021229CC
	mov r5, r9
	add r8, sp, #0x14
_0211B788:
	ldr r1, [r4, #4]
	mla r0, r1, r7, r6
	ldr r11, [r0, #0x2a0]
	cmp r11, #0
	beq _0211B81C
	ldrb r3, [r4, #0xf]
	ldrb r2, [r4, #0xe]
	ldr r1, [r11, #0xc]
	ldr r10, [r4, #0x10]
	smulbb r0, r2, r3
	add r1, r11, r1
	mov r0, r0, lsl #1
	mla r1, r10, r0, r1
	ldrsb r12, [r4, #0xd]
	ldrsb r10, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r11, r2, lsl #3
	strh r10, [sp, #0x14]
	mov r10, r3, lsl #3
	strh r2, [sp, #0x18]
	strb r0, [sp, #0x24]
	str r1, [sp, #0x28]
	strh r12, [sp, #0x16]
	strh r3, [sp, #0x1a]
	strh r9, [sp, #0x1c]
	strh r9, [sp, #0x1e]
	strh r11, [sp, #0x20]
	strh r10, [sp, #0x22]
	str r9, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	str r9, [sp, #0x10]
	ldr r3, [r4]
	ldr r0, _0211B854 ; =0x0209F5C0
	mov r1, r9
	mov r2, #1
	bl  FUN_ov16_020f5c34
_0211B81C:
	add r5, r5, #1
	cmp r5, #2
	add r4, r4, #0x14
	blo _0211B788
	ldr r0, _0211B858 ; =0x0209A070
	mov r3, #0
	mov r1, #0x3c
	mov r2, #0x3d
	str r3, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r6, #0x210]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B850: .word 0x021229A4
_0211B854: .word unk_0209F5C0
_0211B858: .word unk_0209A070
_0211B85C: .word 0x021229CC
	arm_func_end FUN_ov72_0211b688

	arm_func_start FUN_ov72_0211b860
FUN_ov72_0211b860: ; 0x0211B860
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r6, r0
	cmp r1, #0
	mov r9, #0
	mov r7, #0xc
	beq _0211B954
	ldr r4, _0211BA28 ; =0x021229F4
	ldr r11, _0211BA2C ; =0x0209F5C0
	mov r5, r9
	add r8, sp, #0x2c
_0211B88C:
	ldr r1, [r4, #4]
	mla r0, r1, r7, r6
	ldr r3, [r0, #0x2a0]
	cmp r3, #0
	beq _0211B920
	ldrb r10, [r4, #0xf]
	ldrb lr, [r4, #0xe]
	ldr r2, [r3, #0xc]
	ldr r1, [r4, #0x10]
	smulbb r0, lr, r10
	add r2, r3, r2
	mov r0, r0, lsl #1
	mla r12, r1, r0, r2
	ldrsb r2, [r4, #0xd]
	ldrsb r1, [r4, #0xc]
	ldr r3, [r4, #8]
	mov r0, lr, lsl #3
	strh r1, [sp, #0x2c]
	mov r1, r10, lsl #3
	strh r2, [sp, #0x2e]
	strh r0, [sp, #0x38]
	strh r1, [sp, #0x3a]
	strh lr, [sp, #0x30]
	strh r10, [sp, #0x32]
	strh r9, [sp, #0x34]
	strh r9, [sp, #0x36]
	strb r3, [sp, #0x3c]
	str r12, [sp, #0x40]
	str r9, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	str r9, [sp, #0x10]
	ldr r3, [r4]
	mov r0, r11
	mov r1, r9
	mov r2, #1
	bl  FUN_ov16_020f5c34
_0211B920:
	add r5, r5, #1
	cmp r5, #2
	add r4, r4, #0x14
	blo _0211B88C
	ldr r0, _0211BA30 ; =0x0209A070
	mov r3, #0
	mov r1, #0x42
	mov r2, #0x43
	str r3, [sp]
	bl  FUN_ov16_020f6c8c
	add sp, sp, #0x44
	strb r0, [r6, #0x212]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B954:
	ldr r4, _0211BA34 ; =0x02122A1C
	mov r5, r9
	add r8, sp, #0x14
_0211B960:
	ldr r1, [r4, #4]
	mla r0, r1, r7, r6
	ldr r11, [r0, #0x2a0]
	cmp r11, #0
	beq _0211B9F4
	ldrb r3, [r4, #0xf]
	ldrb r2, [r4, #0xe]
	ldr r1, [r11, #0xc]
	ldr r10, [r4, #0x10]
	smulbb r0, r2, r3
	add r1, r11, r1
	mov r0, r0, lsl #1
	mla r1, r10, r0, r1
	ldrsb r12, [r4, #0xd]
	ldrsb r10, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r11, r2, lsl #3
	strh r10, [sp, #0x14]
	mov r10, r3, lsl #3
	strh r2, [sp, #0x18]
	strb r0, [sp, #0x24]
	str r1, [sp, #0x28]
	strh r12, [sp, #0x16]
	strh r3, [sp, #0x1a]
	strh r9, [sp, #0x1c]
	strh r9, [sp, #0x1e]
	strh r11, [sp, #0x20]
	strh r10, [sp, #0x22]
	str r9, [sp]
	stmib sp, {r8, r9}
	str r9, [sp, #0xc]
	str r9, [sp, #0x10]
	ldr r3, [r4]
	ldr r0, _0211BA2C ; =0x0209F5C0
	mov r1, r9
	mov r2, #1
	bl  FUN_ov16_020f5c34
_0211B9F4:
	add r5, r5, #1
	cmp r5, #2
	add r4, r4, #0x14
	blo _0211B960
	ldr r0, _0211BA30 ; =0x0209A070
	mov r3, #0
	mov r1, #0x44
	mov r2, #0x45
	str r3, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r6, #0x212]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BA28: .word 0x021229F4
_0211BA2C: .word unk_0209F5C0
_0211BA30: .word unk_0209A070
_0211BA34: .word 0x02122A1C
	arm_func_end FUN_ov72_0211b860

	arm_func_start FUN_ov72_0211ba38
FUN_ov72_0211ba38: ; 0x0211BA38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0xc44]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	bne _0211BA70
	ldr r0, _0211BAE4 ; =0x02099F38
	mov r1, #0x1c
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r7, #0xc44]
_0211BA70:
	ldr r8, _0211BAE4 ; =0x02099F38
	ldr r3, [r7, #0xc38]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #0x10
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r9, #0
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	mov r3, r9
	add r2, r6, #0x10
	bl  FUN_ov16_0211401c
	mov r3, r9
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #0x10
	bl  FUN_ov16_021139bc
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #0x10
	mov r3, r5, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BAE4: .word unk_02099F38
	arm_func_end FUN_ov72_0211ba38

	arm_func_start FUN_ov72_0211bae8
FUN_ov72_0211bae8: ; 0x0211BAE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #0xc44]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	mov r4, #1
	bne _0211BB24
	ldr r0, _0211BBA8 ; =0x02099F38
	mov r2, r4
	ldr r0, [r0]
	mov r1, #0x1c
	bl  FUN_ov16_02112724
	str r0, [r8, #0xc44]
_0211BB24:
	ldrb r0, [r8, #0xc16]
	cmp r0, #0
	bne _0211BB3C
	ldr r0, _0211BBA8 ; =0x02099F38
	ldr r3, [r8, #0xc28]
	b _0211BB44
_0211BB3C:
	ldr r0, _0211BBA8 ; =0x02099F38
	ldr r3, [r8, #0xc40]
_0211BB44:
	ldr r0, [r0]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r9, _0211BBA8 ; =0x02099F38
	ldr r1, [r8, #0xc44]
	ldr r0, [r9]
	mov r2, r4
	bl  FUN_ov16_0211401c
	mov r3, r5, lsl #0x10
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BBA8: .word unk_02099F38
	arm_func_end FUN_ov72_0211bae8

	arm_func_start FUN_ov72_0211bbac
FUN_ov72_0211bbac: ; 0x0211BBAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #0xc44]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	mov r4, #2
	bne _0211BBE8
	ldr r0, _0211BC50 ; =0x02099F38
	mov r1, #0x1c
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r8, #0xc44]
_0211BBE8:
	ldr r9, _0211BC50 ; =0x02099F38
	ldr r3, [r8, #0xc24]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	bl  FUN_ov16_0211401c
	mov r0, r5, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	bl  FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BC50: .word unk_02099F38
	arm_func_end FUN_ov72_0211bbac

	arm_func_start FUN_ov72_0211bc54
FUN_ov72_0211bc54: ; 0x0211BC54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0xc44]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	bne _0211BC90
	ldr r0, _0211BCF8 ; =0x02099F38
	mov r1, #0x1c
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r7, #0xc44]
_0211BC90:
	ldr r8, _0211BCF8 ; =0x02099F38
	ldr r3, [r7, #0xc2c]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #3
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #3
	bl  FUN_ov16_0211401c
	ldrh r3, [sp, #0x20]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #3
	bl  FUN_ov16_021139bc
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #3
	mov r3, r5
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BCF8: .word unk_02099F38
	arm_func_end FUN_ov72_0211bc54

	arm_func_start FUN_ov72_0211bcfc
FUN_ov72_0211bcfc: ; 0x0211BCFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0xc44]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	bne _0211BD38
	ldr r0, _0211BDA0 ; =0x02099F38
	mov r1, #0x1c
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r7, #0xc44]
_0211BD38:
	ldr r8, _0211BDA0 ; =0x02099F38
	ldr r3, [r7, #0xc30]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #9
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #9
	bl  FUN_ov16_0211401c
	ldrh r3, [sp, #0x20]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #9
	bl  FUN_ov16_021139bc
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc44]
	add r2, r6, #9
	mov r3, r5
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BDA0: .word unk_02099F38
	arm_func_end FUN_ov72_0211bcfc

	arm_func_start FUN_ov72_0211bda4
FUN_ov72_0211bda4: ; 0x0211BDA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #0xc44]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	mov r4, #0xf
	bne _0211BDE0
	ldr r0, _0211BE48 ; =0x02099F38
	mov r1, #0x1c
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r8, #0xc44]
_0211BDE0:
	ldr r9, _0211BE48 ; =0x02099F38
	ldr r3, [r8, #0xc34]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_0211401c
	ldrh r3, [sp, #0x20]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	bl  FUN_ov16_021139bc
	str r5, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BE48: .word unk_02099F38
	arm_func_end FUN_ov72_0211bda4

	arm_func_start FUN_ov72_0211be4c
FUN_ov72_0211be4c: ; 0x0211BE4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #0xc44]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	mov r4, #0x1b
	bne _0211BE88
	ldr r0, _0211BEF0 ; =0x02099F38
	mov r1, #0x1c
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r8, #0xc44]
_0211BE88:
	ldr r9, _0211BEF0 ; =0x02099F38
	ldr r3, [r8, #0xc3c]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	bl  FUN_ov16_0211401c
	mov r0, r5, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	bl  FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0xc44]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BEF0: .word unk_02099F38
	arm_func_end FUN_ov72_0211be4c

	arm_func_start FUN_ov72_0211bef4
FUN_ov72_0211bef4: ; 0x0211BEF4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r0
	ldr r1, [r6, #0xc44]
	mov r4, #0
	cmp r1, #0
	beq _0211BF1C
	ldr r0, _0211BFBC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r4, [r6, #0xc44]
_0211BF1C:
	mov r5, #0
	ldr r7, _0211BFBC ; =0x02099F38
	b _0211BF5C
_0211BF28:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xc24]
	cmp r1, #0
	beq _0211BF58
	ldr r0, [r7]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xc24]
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0xc24]
_0211BF58:
	add r5, r5, #1
_0211BF5C:
	cmp r5, #8
	blt _0211BF28
	add r0, r6, #0x18
	mov r5, #0
	add r9, r0, #0xc00
	mov r7, #1
	mov r6, #0xc
	b _0211BFB0
_0211BF7C:
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
_0211BFB0:
	cmp r5, #1
	blt _0211BF7C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BFBC: .word unk_02099F38
	arm_func_end FUN_ov72_0211bef4

	arm_func_start FUN_ov72_0211bfc0
FUN_ov72_0211bfc0: ; 0x0211BFC0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211C00C ; =0x02099F38
	b _0211BFFC
_0211BFD4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211BFF8
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211BFF8:
	add r5, r5, #1
_0211BFFC:
	cmp r5, #0xf
	blt _0211BFD4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211C00C: .word unk_02099F38
	arm_func_end FUN_ov72_0211bfc0

	arm_func_start FUN_ov72_0211c010
FUN_ov72_0211c010: ; 0x0211C010
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r5, r0
	mov r9, #4
	mov r8, #3
	mov r7, r4
	ldr r6, _0211C090 ; =0x02099F38
	b _0211C084
_0211C030:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211C080
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211C080
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x2c]
	mov r2, r9
	mov r3, r8
	bl  FUN_ov16_02114918
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x2c]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211C080:
	add r4, r4, #1
_0211C084:
	cmp r4, #0xf
	blt _0211C030
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C090: .word unk_02099F38
	arm_func_end FUN_ov72_0211c010

	arm_func_start FUN_ov72_0211c094
FUN_ov72_0211c094: ; 0x0211C094
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, #0
	add r6, r4, #0x2a0
	mov r5, #0xc
	b _0211C0B8
_0211C0AC:
	mla r0, r7, r5, r6
	bl  FUN_ov16_020f33fc
	add r7, r7, #1
_0211C0B8:
	cmp r7, #0x23
	blt _0211C0AC
	mov r7, #0
	mov r6, r7
	ldr r5, _0211C108 ; =0x02099F38
	b _0211C0F4
_0211C0D0:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211C0F0
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x2c]
_0211C0F0:
	add r7, r7, #1
_0211C0F4:
	cmp r7, #0xf
	blt _0211C0D0
	mov r0, r4
	bl FUN_ov72_02121984
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C108: .word unk_02099F38
	arm_func_end FUN_ov72_0211c094

	arm_func_start FUN_ov72_0211c10c
FUN_ov72_0211c10c: ; 0x0211C10C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x2a0]
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
	beq _0211C164
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl  FUN_ov16_020f19d4
	str r0, [r5]
_0211C164:
	cmp r6, #0
	blt _0211C17C
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl  FUN_ov16_020f1138
_0211C17C:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov72_0211c10c

	arm_func_start FUN_ov72_0211c184
FUN_ov72_0211c184: ; 0x0211C184
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	bl  FUN_ov16_020f3f48
	add r1, sp, #0xc
	mov r9, #0
	mov r8, r0
	str r9, [r1]
	str r9, [r1, #4]
	str r9, [r1, #8]
	str r9, [r1, #0xc]
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r0, r9
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r5, #4
	str r4, [sp, #8]
	mov r7, #3
	str r7, [sp]
	add r6, sp, #8
	mov r0, r10
	str r6, [sp, #4]
	mov r1, #0xa
	mov r2, r9
	mov r3, r5
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r7
	mov r3, r5
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r4, #6
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0x19
	mov r3, r4
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0x1a
	mov r3, r4
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r11, #9
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0x13
	mov r3, r11
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #8
	mov r3, r7
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	mov r1, r11
	str r6, [sp, #4]
	mov r0, r10
	mov r3, r7
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0xb
	mov r3, r5
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	mov r1, r4
	mov r3, r5
	str r6, [sp, #4]
	mov r0, r10
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0x1d
	mov r3, #0xf
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	mov r3, #8
	mov r0, r10
	mov r1, #0x17
	str r6, [sp, #4]
	bl FUN_ov72_0211c10c
	mov r2, r0
	ldr r0, [sp, #8]
	add r7, r10, #0x214
	mov r5, r9
	mov r6, #1
	mov r4, r9
_0211C338:
	ldr r1, [r7]
	cmp r1, #0
	ldrne r1, [r7, #4]
	cmpne r1, #0
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	beq _0211C398
	str r0, [r7, #8]
	ldrh r11, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	ldr r0, [r7]
	mov r3, r4
	mul r1, r11, r1
	mov r1, r1, lsl #1
	add r2, r2, #1
	bl  FUN_ov16_020f1868
	ldrh r3, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	ldr r11, [sp, #8]
	mov r2, r0
	mul r0, r3, r1
	add r0, r11, r0, lsl #5
	str r0, [sp, #8]
_0211C398:
	add r9, r9, #1
	cmp r9, #7
	add r7, r7, #0x14
	mov r11, #0
	blt _0211C338
	ldr r1, [r8, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	bl G2_GetBG1CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r0, r11
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	mov r5, #1
	mov r6, #2
	str r5, [sp]
	add r4, sp, #8
	mov r2, r11
	mov r0, r10
	str r4, [sp, #4]
	mov r1, #0xf
	mov r3, r6
	bl FUN_ov72_0211c10c
	str r5, [sp]
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r10
	mov r1, #0x12
	mov r3, r6
	bl FUN_ov72_0211c10c
	str r5, [sp]
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r10
	mov r1, #0xc
	mov r3, #6
	bl FUN_ov72_0211c10c
	str r5, [sp]
	mov r7, #5
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r10
	mov r1, #0xd
	mov r3, r7
	bl FUN_ov72_0211c10c
	str r5, [sp]
	mov r2, r0
	mov r1, r6
	str r4, [sp, #4]
	mov r0, r10
	mov r3, #3
	bl FUN_ov72_0211c10c
	str r5, [sp]
	mov r6, #4
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r10
	mov r1, r6
	mov r3, #7
	bl FUN_ov72_0211c10c
	str r5, [sp]
	mov r2, r0
	mov r1, r7
	mov r3, r6
	str r4, [sp, #4]
	mov r0, r10
	bl FUN_ov72_0211c10c
	mov r2, r0
	ldrb r0, [r10, #0xc16]
	cmp r0, #0
	beq _0211C4E8
	str r5, [sp]
	mov r0, r10
	mov r1, #0x1e
	mov r3, #0xe
	str r4, [sp, #4]
	bl FUN_ov72_0211c10c
	mov r2, r0
_0211C4E8:
	mov r7, #1
	add r6, sp, #8
	str r7, [sp]
	mov r0, r10
	str r6, [sp, #4]
	mov r1, #0xe
	mov r3, #6
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	mov r0, r10
	str r6, [sp, #4]
	mov r1, #0x1b
	mov r3, #0xd
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r5, #2
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0x21
	mov r3, r5
	bl FUN_ov72_0211c10c
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, #0x11
	mov r3, r5
	bl FUN_ov72_0211c10c
	ldr r1, [r8, #4]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	bl G2_GetBG2CharPtr
	mov r9, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r9
	bl DC_FlushRange
	str r9, [sp, #8]
	stmia sp, {r5, r6}
	mov r0, r10
	mov r1, r7
	mov r3, r7
	mov r2, r4
	bl FUN_ov72_0211c10c
	ldr r3, [r10, #0x2ac]
	cmp r3, #0
	beq _0211C5D4
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r4
	add r0, r3, r0
	bl GX_LoadBG2Scr
_0211C5D4:
	bl  FUN_ov16_020f10ac
	ldr r1, [r8, #8]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov72_0211c184

	arm_func_start FUN_ov72_0211c5f0
FUN_ov72_0211c5f0: ; 0x0211C5F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	add r7, r0, #0x214
	mov r5, r8
	mov r6, #1
	mov r4, r8
_0211C608:
	ldr r0, [r7]
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, r6
	moveq r0, r5
	cmp r0, #0
	ldrneb r0, [r7, #0x10]
	cmpne r0, #0
	beq _0211C64C
	strb r4, [r7, #0x10]
	ldrh r3, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldmib r7, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GX_LoadBG3Char
_0211C64C:
	add r8, r8, #1
	cmp r8, #7
	add r7, r7, #0x14
	blt _0211C608
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov72_0211c5f0

	arm_func_start FUN_ov72_0211c660
FUN_ov72_0211c660: ; 0x0211C660
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x214]
	mov r1, #0
	cmp r12, #0
	ldrne r0, [r0, #0x218]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #3
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
	ldr r0, _0211C6E0 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211C6E0: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211c660

	arm_func_start FUN_ov72_0211c6e4
FUN_ov72_0211c6e4: ; 0x0211C6E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	add r5, r8, #0x214
	mov r0, r5
	mov r7, r1
	mov r6, r2
	bl  FUN_ov16_020f2f20
	ldr r9, _0211C784 ; =0x02099F50
	mov r4, #1
	ldr r0, [r9]
	mov r1, r4
	mov r2, #4
	bl FUN_02043310
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r4}
	mov r0, #0
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r2, [r5, #0xc]
	ldrh r3, [r5, #0xe]
	ldr r0, [r8, #0x1e8]
	ldr r1, [r5, #4]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldr r0, [r9]
	bl FUN_0204331c
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	strb r4, [r5, #0x10]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C784: .word unk_02099F50
	arm_func_end FUN_ov72_0211c6e4

	arm_func_start FUN_ov72_0211c788
FUN_ov72_0211c788: ; 0x0211C788
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r4, #0x14
	mul r4, r1, r4
	add r0, r0, #0x214
	ldr r12, [r0, r4]
	add r5, r0, r4
	cmp r12, #0
	ldrne r0, [r5, #4]
	mov r6, r2
	mov r2, #0
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r1, #0x2f
	and r0, r0, #0xff
	str r0, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldrsb r1, [sp, #0x38]
	str r3, [sp, #8]
	ldrb r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	mov r8, #0
	str r0, [sp, #0x10]
	ldrb r1, [sp, #0x40]
	ldr r0, _0211C8A0 ; =0x0209F5C0
	mov r2, r8
	str r1, [sp, #0x14]
	str r8, [sp, #0x18]
	mov r1, r8
	mov r3, r8
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r5
	bl  FUN_ov16_020f2f20
	ldr r7, _0211C8A4 ; =0x02099F50
	mov r1, r4
	ldr r0, [r7]
	mov r2, #4
	bl FUN_02043310
	mov r1, #3
	str r1, [sp]
	stmib sp, {r1, r4}
	ldr r2, [sp, #0x44]
	str r8, [sp, #0xc]
	ldr r1, [sp, #0x48]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r2, [r5, #0xc]
	ldrh r3, [r5, #0xe]
	ldr r1, [r5, #4]
	mov r0, r6
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldr r0, [r7]
	bl FUN_0204331c
	strb r4, [r5, #0x10]
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C8A0: .word unk_0209F5C0
_0211C8A4: .word unk_02099F50
	arm_func_end FUN_ov72_0211c788

	arm_func_start FUN_ov72_0211c8a8
FUN_ov72_0211c8a8: ; 0x0211C8A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	cmp r1, #0x64
	mov r10, r2
	mov r9, r3
	addge sp, sp, #0x28
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r3, sp, #0x20
	mov r6, #0
	str r6, [r3]
	str r6, [r3, #4]
	cmp r1, #0
	beq _0211C914
	ldr r2, _0211C9BC ; =0x66666667
	mov r7, #0xa
_0211C8E4:
	mov r4, r1, lsr #0x1f
	smull r5, r8, r2, r1
	add r8, r4, r8, asr #2
	smull r4, r5, r7, r8
	mov r5, r1
	sub r8, r1, r4
	str r8, [r3, r6, lsl #2]
	smull r4, r1, r2, r5
	mov r4, r5, lsr #0x1f
	add r6, r6, #1
	adds r1, r4, r1, asr #2
	bne _0211C8E4
_0211C914:
	ldr r8, [r0, #0x3cc]
	cmp r6, #0
	moveq r6, #1
	cmp r8, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	mov r7, #0
	addle sp, sp, #0x28
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, sp, #0x20
	mov r11, #0x46
	mov r4, #1
_0211C948:
	ldr r0, [r8, #0xc]
	add r1, r10, r7
	mov r1, r1, lsl #0x18
	str r11, [sp]
	mov r1, r1, asr #0x18
	str r4, [sp, #4]
	str r1, [sp, #8]
	sub r1, r6, r7
	add r1, r5, r1, lsl #2
	str r9, [sp, #0xc]
	ldr r1, [r1, #-4]
	add r0, r8, r0
	add r1, r0, r1, lsl #2
	str r4, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r1, #0
	ldr r0, _0211C9C0 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	bl  FUN_ov16_020f5da0
	add r7, r7, #1
	cmp r7, r6
	blt _0211C948
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C9BC: .word 0x66666667
_0211C9C0: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211c8a8

	arm_func_start FUN_ov72_0211c9c4
FUN_ov72_0211c9c4: ; 0x0211C9C4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	cmp r1, #0x3c
	bge _0211C9E0
	bl FUN_ov72_0211c8a8
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211C9E0:
	ldr r12, [r0, #0x3d8]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #0x46
	str r0, [sp]
	mov r0, #1
	stmib sp, {r0, r2}
	str r3, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	ldr r2, [r12, #0xc]
	mov r1, #0
	add r12, r12, r2
	ldr r0, _0211CA44 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211CA44: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211c9c4

	arm_func_start FUN_ov72_0211ca48
FUN_ov72_0211ca48: ; 0x0211CA48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r2, r1
	ldrb r3, [r2, #2]
	mov r1, #0xc
	mla r0, r3, r1, r0
	ldr r7, [r0, #0x2a0]
	cmp r7, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r2, #7]
	ldrb r4, [r2, #6]
	ldrb r0, [r2, #1]
	ldr r6, [r7, #0xc]
	smulbb r12, r4, r5
	ldrb lr, [r2, #8]
	ldrsb r3, [r2, #4]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0
	add r6, r7, r6
	mov r12, r12, lsl #1
	ldrsb r0, [r2, #5]
	str r3, [sp, #8]
	mla r12, lr, r12, r6
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrb r0, [r2, #3]
	str r5, [sp, #0x14]
	ldrb r2, [r2]
	str r0, [sp, #0x18]
	ldr r0, _0211CAE0 ; =0x0209F5C0
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CAE0: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211ca48

	arm_func_start FUN_ov72_0211cae4
FUN_ov72_0211cae4: ; 0x0211CAE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	cmp r5, #0
	mov r7, r0
	mov r6, r1
	mov r4, #0
	cmpgt r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0211CB04:
	mov r0, r7
	mov r1, r6
	bl FUN_ov72_0211ca48
	add r4, r4, #1
	cmp r4, r5
	add r6, r6, #9
	blt _0211CB04
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov72_0211cae4

	arm_func_start FUN_ov72_0211cb24
FUN_ov72_0211cb24: ; 0x0211CB24
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r3, r1
	ldrb r2, [r3, #2]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r4, [r0, #0x2a0]
	cmp r4, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrb r7, [r3, #7]
	ldrb r6, [r3, #6]
	ldr r2, [r4, #0xc]
	ldrb r1, [r3, #8]
	smulbb r0, r6, r7
	add r2, r4, r2
	mov r0, r0, lsl #1
	mla r5, r1, r0, r2
	mov r1, #0
	ldrb r4, [r3, #3]
	ldrsb lr, [r3, #5]
	ldrsb r12, [r3, #4]
	mov r2, r6, lsl #3
	mov r0, r7, lsl #3
	strh r2, [sp, #0x20]
	strh r0, [sp, #0x22]
	ldrb r2, [r3]
	strh r12, [sp, #0x14]
	strh lr, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strb r4, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x14
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldrb r3, [r3, #1]
	ldr r0, _0211CBD8 ; =0x0209F5C0
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211CBD8: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211cb24

	arm_func_start FUN_ov72_0211cbdc
FUN_ov72_0211cbdc: ; 0x0211CBDC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	cmp r5, #0
	mov r7, r0
	mov r6, r1
	mov r4, #0
	cmpgt r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0211CBFC:
	mov r0, r7
	mov r1, r6
	bl FUN_ov72_0211cb24
	add r4, r4, #1
	cmp r4, r5
	add r6, r6, #9
	blt _0211CBFC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov72_0211cbdc

	arm_func_start FUN_ov72_0211cc1c
FUN_ov72_0211cc1c: ; 0x0211CC1C
	bx lr
	arm_func_end FUN_ov72_0211cc1c

	arm_func_start FUN_ov72_0211cc20
FUN_ov72_0211cc20: ; 0x0211CC20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	ldr r2, [r0, #0x330]
	str r0, [sp, #0x14]
	cmp r2, #0
	beq _0211CD20
	ldr r0, _0211CDF0 ; =0x0212284A
	ldr r1, [r2, #0xc]
	str r0, [sp, #0x20]
	ldr r0, _0211CDF4 ; =0x02122850
	ldr r9, _0211CDF8 ; =0x02122942
	str r0, [sp, #0x1c]
	mov r0, #0
	add r8, r2, r1
	str r0, [sp, #0x18]
	mov r5, #0x18
	mov r4, #4
	mov r11, #0xc0
_0211CC68:
	ldr r0, [sp, #0x1c]
	mov r10, #0
	ldrsh r7, [r0]
	ldr r0, [sp, #0x20]
	ldrsh r6, [r0]
_0211CC7C:
	mov r0, #0
	strh r0, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	mov r0, #0x20
	strh r0, [sp, #0x32]
	mov r0, #6
	strb r0, [sp, #0x34]
	strh r6, [sp, #0x24]
	strh r7, [sp, #0x26]
	strh r5, [sp, #0x28]
	strh r4, [sp, #0x2a]
	strh r11, [sp, #0x30]
	str r8, [sp, #0x38]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrsh r3, [r9], #2
	ldr r0, _0211CDFC ; =0x0209F5C0
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_020f5c34
	add r10, r10, #1
	add r8, r8, #0xc0
	cmp r10, #3
	blt _0211CC7C
	ldr r0, [sp, #0x20]
	add r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0211CC68
_0211CD20:
	ldr r5, _0211CE00 ; =0x0209A070
	mov r4, #1
	mov r0, r5
	mov r1, #5
	mov r2, #7
	mov r3, #6
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x14]
	mov r2, #0xa
	strb r0, [r1, #0x1f1]
	mov r0, r5
	mov r1, #8
	mov r3, #9
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x14]
	mov r2, #0xd
	strb r0, [r1, #0x1f2]
	mov r0, r5
	mov r1, #0xb
	mov r3, #0xc
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x14]
	strb r0, [r1, #0x1f3]
	ldr r2, [r1, #0xc]
	mov r0, r1
	add r0, r0, r2
	ldrb r3, [r0, #0xbfc]
	mov r2, #3
	mov r0, r1
	str r3, [r1, #0x68]
	strb r2, [r1, #0xbe0]
	strb r4, [r1, #0xbe1]
	strb r4, [r1, #0xbe2]
	bl FUN_ov72_0211ce08
	mov r6, #0xf
	mov r5, #0
	ldr r0, _0211CE04 ; =0x04000050
	mov r1, r6
	mov r2, r5
	bl G2x_SetBlendBrightness_
	ldr r0, [sp, #0x14]
	mov r1, r4
	ldr r0, [r0, #4]
	mov r2, r6
	bl FUN_02041eac
	ldr r0, [sp, #0x14]
	strb r5, [r0, #0x70]
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CDF0: .word 0x0212284A
_0211CDF4: .word 0x02122850
_0211CDF8: .word 0x02122942
_0211CDFC: .word unk_0209F5C0
_0211CE00: .word unk_0209A070
_0211CE04: .word 0x04000050
	arm_func_end FUN_ov72_0211cc20

	arm_func_start FUN_ov72_0211ce08
FUN_ov72_0211ce08: ; 0x0211CE08
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r1, [r10, #0x354]
	cmp r1, #0
	beq _0211CF08
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
	ldr r0, _0211CF30 ; =0x0209F5C0
	mov r1, r4
	mov r2, #1
	mov r3, #0x1d
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, #0x18
	add r1, r9, #0x24
	strh r0, [sp, #0x22]
	mov r0, #2
	strh r5, [sp, #0x1a]
	strb r0, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r5, #0x1e
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r11, [sp, #0x20]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	str r4, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _0211CF30 ; =0x0209F5C0
	mov r1, r4
	mov r2, #1
	mov r3, r5
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	ldr r0, _0211CF30 ; =0x0209F5C0
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
_0211CF08:
	ldr r0, _0211CF34 ; =0x0209A070
	mov r4, #2
	mov r1, #0x1d
	mov r2, #0x1e
	mov r3, #0
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x1f7]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CF30: .word unk_0209F5C0
_0211CF34: .word unk_0209A070
	arm_func_end FUN_ov72_0211ce08

	arm_func_start FUN_ov72_0211cf38
FUN_ov72_0211cf38: ; 0x0211CF38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	bl FUN_ov72_0211cc1c
	ldrb r0, [r10, #0xc16]
	ldr r3, [r10, #0x2b8]
	mov r4, #0
	cmp r0, #0
	movne r4, #4
	cmp r3, #0
	beq _0211CFEC
	ldr r0, _0211D1A8 ; =0x021228C0
	mov r5, r4, lsl #1
	add r1, r4, #1
	mov r2, r1, lsl #1
	ldrsh r5, [r0, r5]
	add r1, r4, #2
	ldrsh r8, [r0, r2]
	mov r6, r1, lsl #1
	add r1, r4, #3
	mov r2, #0xe
	mov r5, r5, lsl #0x18
	mov r1, r1, lsl #1
	ldrsh r7, [r0, r6]
	mov r6, r8, lsl #0x18
	ldrsh r0, [r0, r1]
	mov r1, #0
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r5, r5, asr #0x18
	str r5, [sp, #8]
	mov r5, r6, asr #0x18
	str r5, [sp, #0xc]
	and r5, r7, #0xff
	str r5, [sp, #0x10]
	and r0, r0, #0xff
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r5, [r3, #0xc]
	ldr r0, _0211D1AC ; =0x0209F5C0
	add r5, r3, r5
	mov r3, r1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211CFEC:
	ldrb r2, [r10, #0xc16]
	mov r1, #0xa
	mov r0, #0xc
	cmp r2, #0
	movne r1, #0x1d
	mla r0, r1, r0, r10
	ldr r1, [r0, #0x2a0]
	cmp r1, #0
	beq _0211D0C0
	ldr r0, [r1, #0xc]
	cmp r2, #0
	add r2, r1, r0
	add r1, r4, #1
	add r3, r4, #3
	mov r6, r1, lsl #1
	add r5, r4, #2
	mov r8, r4, lsl #1
	mov r1, #0
	addeq r2, r2, #0x24
	str r2, [sp, #0x34]
	ldr r0, _0211D1B0 ; =0x021228D0
	mov r4, r5, lsl #1
	mov r3, r3, lsl #1
	ldrsh r7, [r0, r4]
	ldrsh r5, [r0, r3]
	ldrsh r3, [r0, r6]
	ldrsh r4, [r0, r8]
	and r6, r7, #0xff
	mov r3, r3, lsl #0x18
	mov r0, r4, lsl #0x18
	mov r9, r0, asr #0x18
	mov r8, r3, asr #0x18
	and r4, r5, #0xff
	mov r3, r7, lsl #3
	mov r0, r5, lsl #3
	strh r3, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r9, [sp, #0x20]
	strh r8, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r4, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211D1AC ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xf
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211D0C0:
	ldr r1, [r10, #0x3b4]
	cmp r1, #0
	beq _0211D138
	ldr r0, [r1, #0xc]
	ldr r11, _0211D1AC ; =0x0209F5C0
	add r9, r1, r0
	mov r8, #0
	mov r7, #0xa
	mov r6, #0xb
	mov r5, #0xc
	mov r4, #3
_0211D0EC:
	add r0, r8, #0x10
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r7}
	str r6, [sp, #0xc]
	mov r1, #0
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, r11
	mov r2, r1
	mov r3, r1
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #8
	add r9, r9, #0x48
	blo _0211D0EC
_0211D138:
	mov r5, #0
	ldr r0, _0211D1B4 ; =0x04000050
	mov r2, r5
	mov r1, #0xf
	bl G2x_SetBlendBrightness_
	mov r4, #1
	ldr r0, [r10, #4]
	mov r1, r4
	mov r2, #0x1c
	bl FUN_02041eac
	mov r1, #8
	mov r0, r10
	mov r2, r1
	mov r3, r5
	strb r4, [r10, #0x8d]
	strb r4, [r10, #0x70]
	bl FUN_ov72_0211bae8
	ldrb r0, [r10, #0xc16]
	cmp r0, #0
	addne sp, sp, #0x38
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r3, r5
	mov r2, #0x98
	bl FUN_ov72_0211bbac
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D1A8: .word 0x021228C0
_0211D1AC: .word unk_0209F5C0
_0211D1B0: .word 0x021228D0
_0211D1B4: .word 0x04000050
	arm_func_end FUN_ov72_0211cf38

	arm_func_start FUN_ov72_0211d1b8
FUN_ov72_0211d1b8: ; 0x0211D1B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r3, [r4, #0x2c4]
	cmp r3, #0
	beq _0211D220
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #0xb
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _0211D2E0 ; =0x0209F5C0
	add r5, r3, r2
	mov r2, r1
	mov r3, r1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211D220:
	ldr r1, [r4, #0x318]
	cmp r1, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	ldr r7, _0211D2E4 ; =0x021228E0
	add r0, r1, r0
	ldr r8, _0211D2E8 ; =0x0212287E
	ldr r9, _0211D2EC ; =0x021228F0
	mov r10, #0
	add r6, r0, #0xd8
	mov r5, #6
	mov r4, #3
	mov r11, #0x30
_0211D258:
	ldrsh r0, [r7, #2]
	ldr r1, [r9], #4
	strh r5, [sp, #0x24]
	strh r0, [sp, #0x22]
	ldrsh r0, [r7], #4
	add r1, r6, r1
	str r1, [sp, #0x34]
	strh r0, [sp, #0x20]
	mov r0, #0
	strh r0, [sp, #0x28]
	strh r0, [sp, #0x2a]
	mov r0, #0x18
	strh r0, [sp, #0x2e]
	mov r0, #0
	mov r1, #0
	strh r4, [sp, #0x26]
	strh r11, [sp, #0x2c]
	strb r0, [sp, #0x30]
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrsh r3, [r8], #2
	ldr r0, _0211D2E0 ; =0x0209F5C0
	mov r2, r1
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r10, r10, #1
	cmp r10, #4
	blt _0211D258
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D2E0: .word unk_0209F5C0
_0211D2E4: .word 0x021228E0
_0211D2E8: .word 0x0212287E
_0211D2EC: .word 0x021228F0
	arm_func_end FUN_ov72_0211d1b8

	arm_func_start FUN_ov72_0211d2f0
FUN_ov72_0211d2f0: ; 0x0211D2F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r1, [r10, #0x318]
	cmp r1, #0
	beq _0211D3A4
	ldr r0, [r1, #0xc]
	mov r9, #0
	add r0, r1, r0
	ldr r6, _0211D424 ; =0x02122900
	ldr r7, _0211D428 ; =0x02122886
	ldr r8, _0211D42C ; =0x02122910
	add r5, r0, #0xd8
	mov r11, #6
	mov r4, r9
_0211D32C:
	ldrsh r1, [r6, #2]
	mov r0, #3
	strh r0, [sp, #0x1a]
	ldr r0, [r8], #4
	strh r1, [sp, #0x16]
	add r0, r5, r0
	ldrsh r1, [r6], #4
	str r0, [sp, #0x28]
	mov r0, #0x30
	strh r0, [sp, #0x20]
	mov r0, #0x18
	strh r1, [sp, #0x14]
	strh r0, [sp, #0x22]
	strh r11, [sp, #0x18]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strb r4, [sp, #0x24]
	str r4, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldrsh r3, [r7], #2
	ldr r0, _0211D430 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r9, r9, #1
	cmp r9, #4
	blt _0211D32C
_0211D3A4:
	mov r4, #0x10
	mov r0, r10
	mov r1, r4
	mov r2, #0x30
	mov r3, #0
	bl FUN_ov72_0211be4c
	sub r1, r4, #0xfc000002
	ldrh r0, [r1]
	ldr r5, _0211D434 ; =0x0400000A
	mov r2, #1
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r5]
	sub r4, r5, #2
	mov r1, #2
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r5]
	ldrh r3, [r4]
	mov r0, #5
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [r4]
	ldrh r3, [r5, #2]
	bic r3, r3, #3
	orr r3, r3, #3
	strh r3, [r5, #2]
	strb r2, [r10, #0xbe0]
	strb r1, [r10, #0xbe1]
	strb r0, [r10, #0xbe2]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D424: .word 0x02122900
_0211D428: .word 0x02122886
_0211D42C: .word 0x02122910
_0211D430: .word unk_0209F5C0
_0211D434: .word 0x0400000A
	arm_func_end FUN_ov72_0211d2f0

	arm_func_start FUN_ov72_0211d438
FUN_ov72_0211d438: ; 0x0211D438
	stmfd sp!, {r4, lr}
	mov r1, #0x18
	mov r4, r0
	bl FUN_ov72_0211d1b8
	ldr r0, _0211D4A8 ; =0x04000008
	mov r3, #1
	ldrh r12, [r0]
	mov r2, #2
	mov r1, #5
	bic r12, r12, #3
	strh r12, [r0]
	ldrh r12, [r0, #6]
	bic r12, r12, #3
	orr r12, r12, #1
	strh r12, [r0, #6]
	ldrh r12, [r0, #2]
	bic r12, r12, #3
	orr r12, r12, #2
	strh r12, [r0, #2]
	ldrh r12, [r0, #4]
	bic r12, r12, #3
	orr r12, r12, #3
	strh r12, [r0, #4]
	strb r3, [r4, #0xbe0]
	strb r2, [r4, #0xbe1]
	strb r1, [r4, #0xbe2]
	str r3, [r4, #0x68]
	ldmfd sp!, {r4, pc}
_0211D4A8: .word 0x04000008
	arm_func_end FUN_ov72_0211d438

	arm_func_start FUN_ov72_0211d4ac
FUN_ov72_0211d4ac: ; 0x0211D4AC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	bl FUN_ov72_0211cc1c
	ldrb r0, [r5, #0xc16]
	ldr r3, [r5, #0x2b8]
	mov lr, #0
	cmp r0, #0
	movne lr, #4
	cmp r3, #0
	beq _0211D560
	ldr r0, _0211D5F0 ; =0x02122920
	mov r4, lr, lsl #1
	add r1, lr, #1
	mov r2, r1, lsl #1
	ldrsh r4, [r0, r4]
	add r1, lr, #2
	ldrsh r12, [r0, r2]
	mov r6, r1, lsl #1
	add r1, lr, #3
	mov r2, #0xe
	mov r4, r4, lsl #0x18
	mov r1, r1, lsl #1
	ldrsh r6, [r0, r6]
	mov r12, r12, lsl #0x18
	ldrsh r0, [r0, r1]
	mov r1, #0
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r4, r4, asr #0x18
	str r4, [sp, #8]
	mov r4, r12, asr #0x18
	str r4, [sp, #0xc]
	and r4, r6, #0xff
	str r4, [sp, #0x10]
	and r0, r0, #0xff
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r4, [r3, #0xc]
	ldr r0, _0211D5F4 ; =0x0209F5C0
	add r4, r3, r4
	mov r3, r1
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211D560:
	mov r0, r5
	mov r1, #0x18
	bl FUN_ov72_0211d1b8
	mov r6, #6
	ldr r4, _0211D5F8 ; =0x04000050
	mov lr, #1
	mov r12, #2
	mov r3, #5
	mov r0, r4
	mov r1, r6
	sub r2, r6, #0xe
	strb lr, [r5, #0xbe0]
	strb r12, [r5, #0xbe1]
	strb r3, [r5, #0xbe2]
	bl G2x_SetBlendBrightness_
	add r1, r6, #0x4000002
	ldrh r0, [r1]
	sub r3, r4, #0x42
	sub r2, r4, #0x46
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r3]
	sub r1, r4, #0x44
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_0211D5F0: .word 0x02122920
_0211D5F4: .word unk_0209F5C0
_0211D5F8: .word 0x04000050
	arm_func_end FUN_ov72_0211d4ac

	arm_func_start FUN_ov72_0211d5fc
FUN_ov72_0211d5fc: ; 0x0211D5FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x18
	mov r5, r0
	bl FUN_ov72_0211d1b8
	ldr r6, _0211D68C ; =0x04000050
	mov r4, #9
	mov r0, r6
	mov r1, r4
	mov r2, #0
	bl G2x_SetBlendBrightness_
	sub r2, r4, #0xfc000001
	ldrh r0, [r2]
	sub r1, r6, #0x42
	add r12, r4, #0x4000001
	bic r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	add r4, r4, #0x4000003
	mov r2, #1
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r1]
	ldrh r3, [r12]
	mov r1, #2
	mov r0, #5
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [r12]
	ldrh r3, [r4]
	bic r3, r3, #3
	orr r3, r3, #3
	strh r3, [r4]
	strb r2, [r5, #0xbe0]
	strb r1, [r5, #0xbe1]
	strb r0, [r5, #0xbe2]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D68C: .word 0x04000050
	arm_func_end FUN_ov72_0211d5fc

	arm_func_start FUN_ov72_0211d690
FUN_ov72_0211d690: ; 0x0211D690
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0x408]
	cmp r5, #0
	beq _0211D6F4
	mov r2, #1
	str r2, [sp]
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
	ldr r0, _0211D7B8 ; =0x0209F5C0
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211D6F4:
	ldr r1, [r4, #0x324]
	cmp r1, #0
	beq _0211D798
	ldr r0, [r1, #0xc]
	mov r6, #0
	add r7, r1, r0
	mov lr, #0xd
	mov r12, #0xe
	mov r3, #6
	mov r2, #3
	mov r1, #0x30
	mov r0, #0x18
	strh r2, [sp, #0x26]
	strh r1, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh lr, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r3, [sp, #0x24]
	mov r5, #0x1f
	strh r6, [sp, #0x28]
	strh r6, [sp, #0x2a]
	strb r6, [sp, #0x30]
	str r7, [sp, #0x34]
	add r0, sp, #0x20
	str r6, [sp]
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _0211D7B8 ; =0x0209F5C0
	mov r1, r6
	mov r2, r6
	mov r3, r5
	str r6, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r12, #2
	ldr r0, _0211D7BC ; =0x0209A070
	mov r1, r6
	mov r2, r5
	mov r3, r6
	str r12, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0x209]
_0211D798:
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #0xf
	bl FUN_02041eac
	mov r0, #0
	strb r0, [r4, #0x70]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D7B8: .word unk_0209F5C0
_0211D7BC: .word unk_0209A070
	arm_func_end FUN_ov72_0211d690

	arm_func_start FUN_ov72_0211d7c0
FUN_ov72_0211d7c0: ; 0x0211D7C0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	mov r11, r0
	ldr r9, [r11, #0x348]
	str r1, [sp, #0x14]
	cmp r9, #0
	beq _0211D9F0
	ldr r0, _0211DBF4 ; =0x0209A134
	mov r5, #0
	ldr r0, [r0]
	mov r6, r5
	ldrb r2, [r0, #0x3ac]
	cmp r2, #0
	ble _0211D9D4
_0211D7F8:
	ldr r0, _0211DBF4 ; =0x0209A134
	mov r1, r6
	ldr r8, [r0]
	mov r2, #0
	ldrb r3, [r8, #0x3ad]
	cmp r3, #0
	ble _0211D83C
_0211D814:
	ldrb r0, [r8, #0x6f]
	cmp r0, #0
	bne _0211D82C
	cmp r1, #0
	beq _0211D840
	sub r1, r1, #1
_0211D82C:
	add r2, r2, #1
	cmp r2, r3
	add r8, r8, #0xbc
	blt _0211D814
_0211D83C:
	mov r8, #0
_0211D840:
	cmp r8, #0
	mov r4, #0
	beq _0211D9BC
	mov r0, r6, lsl #2
	str r0, [sp, #0x18]
	add r0, r0, #1
	mov r0, r0, lsl #0x18
	mov r10, r0, asr #0x18
	mov r7, r4
_0211D864:
	ldr r1, [r9, #0xc]
	ldr r0, _0211DBF8 ; =0x0209F5C0
	add r1, r9, r1
	add r1, r1, r7, lsl #8
	str r1, [sp, #0x48]
	mov r1, #0x20
	strh r1, [sp, #0x38]
	mov r1, #4
	strh r1, [sp, #0x3a]
	mov r1, #0x100
	strh r1, [sp, #0x40]
	mov r1, #0x20
	strh r1, [sp, #0x42]
	mov r1, #6
	strb r1, [sp, #0x44]
	strh r4, [sp, #0x34]
	strh r10, [sp, #0x36]
	strh r4, [sp, #0x3c]
	strh r4, [sp, #0x3e]
	str r4, [sp]
	add r1, sp, #0x34
	stmib sp, {r1, r4}
	str r4, [sp, #0xc]
	mov r1, r4
	mov r2, #1
	add r3, r5, #0x21
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r7, r7, #1
	add r5, r5, #1
	cmp r7, #3
	blt _0211D864
	add r3, r6, r6, lsl #1
	mov r2, #2
	str r2, [sp]
	ldr r0, _0211DBFC ; =0x0209A070
	add r1, r3, #0x21
	add r2, r3, #0x23
	add r3, r3, #0x22
	bl  FUN_ov16_020f6c8c
	add r1, r11, r6
	strb r0, [r1, #0x1f8]
	str r10, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r11
	add r1, r6, #2
	mov r2, r8
	mov r3, #5
	str r4, [sp, #0x10]
	bl FUN_ov72_0211c788
	ldr r0, [sp, #0x18]
	ldrb r1, [r8, #0x48]
	add r0, r0, #2
	mov r0, r0, lsl #0x18
	mov r3, r0, asr #0x18
	mov r0, r11
	mov r2, #0x1b
	bl FUN_ov72_0211c9c4
	ldrb r0, [r8, #0x74]
	cmp r0, #0
	beq _0211D98C
	mov r0, r10, lsl #3
	sub r0, r0, #2
	mov r3, r0, lsl #0x10
	mov r0, r11
	mov r1, r6
	mov r2, r4
	mov r3, r3, asr #0x10
	str r4, [sp]
	bl FUN_ov72_0211bc54
_0211D98C:
	ldrb r0, [r8, #0x75]
	cmp r0, #0
	beq _0211D9BC
	mov r0, r10, lsl #3
	add r0, r0, #0xe
	mov r3, r0, lsl #0x10
	mov r2, #0
	mov r0, r11
	mov r1, r6
	mov r3, r3, asr #0x10
	str r2, [sp]
	bl FUN_ov72_0211bcfc
_0211D9BC:
	ldr r0, _0211DBF4 ; =0x0209A134
	add r6, r6, #1
	ldr r0, [r0]
	ldrb r2, [r0, #0x3ac]
	cmp r6, r2
	blt _0211D7F8
_0211D9D4:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	movne r1, #1
	movne r0, #8
	strneb r2, [r11, #0xbe0]
	strneb r1, [r11, #0xbe1]
	strneb r0, [r11, #0xbe2]
_0211D9F0:
	ldr r8, _0211DC00 ; =0x02122C44
	ldr r6, _0211DBF8 ; =0x0209F5C0
	mov r9, #0
	add r7, sp, #0x1c
	mov r5, #1
	mov r4, #0xc
_0211DA08:
	ldr r1, [r8, #4]
	mla r0, r1, r4, r11
	ldr r2, [r0, #0x2a0]
	cmp r2, #0
	beq _0211DAA8
	ldrb r10, [r8, #0xf]
	ldr r0, [r2, #0xc]
	ldrb r3, [r8, #0xe]
	ldrsb r1, [r8, #0xd]
	add r0, r2, r0
	smulbb r2, r3, r10
	strh r1, [sp, #0x1e]
	mov r1, r2, lsl #1
	ldr r12, [r8, #0x10]
	ldr r2, [r8, #8]
	mla r1, r12, r1, r0
	ldrsb r0, [r8, #0xc]
	str r1, [sp, #0x30]
	mov r1, r3, lsl #3
	strh r0, [sp, #0x1c]
	mov r0, r10, lsl #3
	strh r3, [sp, #0x20]
	mov r3, #0
	strh r1, [sp, #0x28]
	strh r0, [sp, #0x2a]
	strb r2, [sp, #0x2c]
	strh r10, [sp, #0x22]
	mov r1, #0
	strh r3, [sp, #0x24]
	strh r3, [sp, #0x26]
	mov r0, r3
	stmia sp, {r0, r7}
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r10, r1
	ldr r3, [r8]
	mov r0, r6
	mov r2, r5
	str r10, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211DAA8:
	add r9, r9, #1
	cmp r9, #4
	add r8, r8, #0x14
	mov r10, #0
	blo _0211DA08
	ldr r0, _0211DBF4 ; =0x0209A134
	ldr r1, [r11, #0x68]
	ldr r3, [r0]
	mov r2, r10
	ldrb r4, [r3, #0x3ad]
	cmp r4, #0
	ble _0211DB00
_0211DAD8:
	ldrb r0, [r3, #0x6f]
	cmp r0, #0
	bne _0211DAF0
	cmp r1, #0
	beq _0211DB04
	sub r1, r1, #1
_0211DAF0:
	add r2, r2, #1
	cmp r2, r4
	add r3, r3, #0xbc
	blt _0211DAD8
_0211DB00:
	mov r3, #0
_0211DB04:
	cmp r3, #0
	beq _0211DB18
	ldrb r1, [r3, #0x74]
	mov r0, r11
	bl FUN_ov72_0211b688
_0211DB18:
	ldr r4, _0211DBFC ; =0x0209A070
	mov r3, r10
	mov r0, r4
	str r10, [sp]
	mov r1, #0x36
	mov r2, #0x37
	bl  FUN_ov16_020f6c8c
	strb r0, [r11, #0x1fd]
	mov r0, r4
	mov r3, r10
	str r10, [sp]
	mov r1, #0x38
	mov r2, #0x39
	bl  FUN_ov16_020f6c8c
	ldr r1, [r11, #0x68]
	strb r0, [r11, #0x1fe]
	add r0, r1, #8
	add r0, r11, r0
	ldrb r1, [r0, #0x1f0]
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	mov r0, #2
	mov r4, #0xf
	ldr r6, _0211DC04 ; =0x04000050
	strb r0, [r11, #0x8d]
	mov r0, r6
	mov r1, r4
	mov r2, r10
	bl G2x_SetBlendBrightness_
	ldr r0, [sp, #0x14]
	sub r5, r6, #0x48
	cmp r0, #0
	ldrh r0, [r5]
	sub r3, r4, #0xfc000001
	sub r2, r6, #0x46
	bic r0, r0, #3
	strh r0, [r5]
	ldrh r0, [r3]
	sub r1, r4, #0xfc000003
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	strneb r10, [r11, #0xbe5]
	strneb r10, [r11, #0xbe6]
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DBF4: .word unk_0209A134
_0211DBF8: .word unk_0209F5C0
_0211DBFC: .word unk_0209A070
_0211DC00: .word 0x02122C44
_0211DC04: .word 0x04000050
	arm_func_end FUN_ov72_0211d7c0

	arm_func_start FUN_ov72_0211dc08
FUN_ov72_0211dc08: ; 0x0211DC08
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r10, r0
	ldr r9, [r10, #0x384]
	mov r11, r1
	str r2, [sp, #0x20]
	str r3, [sp, #0x24]
	cmp r9, #0
	beq _0211DE00
	ldr r4, _0211DE2C ; =0x02122A94
	mov r5, #0
_0211DC34:
	ldrsh r0, [r4]
	ldrsh r1, [r4, #2]
	cmp r11, #0
	add r0, r0, #3
	mov r0, r0, lsl #0x18
	mov r6, r0, asr #0x18
	ldr r0, [sp, #0x24]
	add r1, r1, #2
	add r0, r0, r1
	mov r0, r0, lsl #0x18
	mov r7, r0, asr #0x18
	beq _0211DD18
	ldr r1, [r9, #0xc]
	mov r0, r10
	add r8, r9, r1
	mov r1, r5
	add r2, sp, #0x29
	bl FUN_ov72_02121b68
	ldrb r0, [sp, #0x29]
	mov r1, #0
	strh r6, [sp, #0x2c]
	cmp r0, #0
	mov r0, #6
	addne r8, r8, #0x48
	strh r0, [sp, #0x30]
	strh r0, [sp, #0x32]
	mov r0, #0
	strh r0, [sp, #0x34]
	strh r0, [sp, #0x36]
	mov r0, #0x30
	strh r0, [sp, #0x38]
	strh r0, [sp, #0x3a]
	mov r0, #9
	strb r0, [sp, #0x3c]
	str r8, [sp, #0x40]
	strh r7, [sp, #0x2e]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0211DE30 ; =0x0209F5C0
	mov r2, r1
	add r3, r5, #0x47
	bl  FUN_ov16_020f5c34
	mov r0, #2
	str r0, [sp]
	add r2, r5, #0x47
	ldr r0, _0211DE34 ; =0x0209A070
	mov r1, #0
	mov r3, r2
	bl  FUN_ov16_020f6c8c
	add r1, r10, r5
	strb r0, [r1, #0x1ff]
_0211DD18:
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x28
	bl FUN_ov72_02121b68
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _0211DDA8
	cmp r0, #0
	bne _0211DDA8
	ldr r1, [r10, #0x3e4]
	cmp r1, #0
	beq _0211DDA8
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	add r0, r7, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _0211DE30 ; =0x0209F5C0
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, #0
	mov r2, #1
	mov r3, r1
	bl  FUN_ov16_020f5da0
_0211DDA8:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	beq _0211DDD0
	add r0, r6, #1
	mov r2, r0, lsl #3
	add r0, r7, #3
	mov r3, r0, lsl #3
	mov r0, r10
	mov r1, r5
	bl FUN_ov72_0211ba38
_0211DDD0:
	add r5, r5, #1
	cmp r5, #0xa
	add r4, r4, #4
	blt _0211DC34
	cmp r11, #0
	beq _0211DE00
	mov r2, #2
	mov r1, #5
	mov r0, #0xf
	strb r2, [r10, #0xbe0]
	strb r1, [r10, #0xbe1]
	strb r0, [r10, #0xbe2]
_0211DE00:
	ldrb r0, [sp, #0x68]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r10, #0xbe3]
	strneb r0, [r10, #0xbe4]
	ldr r1, [sp, #0x24]
	mov r0, r10
	mov r1, r1, lsl #3
	bl FUN_ov72_021221dc
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DE2C: .word 0x02122A94
_0211DE30: .word unk_0209F5C0
_0211DE34: .word unk_0209A070
	arm_func_end FUN_ov72_0211dc08

	arm_func_start FUN_ov72_0211de38
FUN_ov72_0211de38: ; 0x0211DE38
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r7, r0
	ldr r1, [r7, #0xc]
	mov r4, #1
	cmp r1, #0xb
	mov r10, #0
	beq _0211DE70
	mov r2, r10
	mov r1, r4
	mov r3, r2
	str r1, [sp]
	bl FUN_ov72_0211dc08
	b _0211DE98
_0211DE70:
	mov r1, r10
	mov r2, r1
	mov r3, r1
	str r4, [sp]
	bl FUN_ov72_0211dc08
	mov r1, #2
	mov r0, #5
	strb r4, [r7, #0xbe0]
	strb r1, [r7, #0xbe1]
	strb r0, [r7, #0xbe2]
_0211DE98:
	ldr r8, [r7, #0x2d0]
	cmp r8, #0
	beq _0211DEEC
	ldr r6, [r8, #0xc]
	mov r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0x1e
	mov r1, #0
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	mov r5, #7
	ldr r0, _0211E0A8 ; =0x0209F5C0
	mov r3, r1
	str r5, [sp, #0x18]
	add r5, r8, r6
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211DEEC:
	mov r6, #0
	mov r0, r7
	mov r2, r6
	str r6, [sp]
	mov r1, #1
	mov r3, #0x88
	bl FUN_ov72_0211bda4
	ldr r0, [r7, #0xc]
	cmp r0, #0xb
	beq _0211E008
	ldr r5, _0211E0AC ; =0x02122B04
	add r9, sp, #0x24
	ldr r11, _0211E0A8 ; =0x0209F5C0
	mov r8, #0xc
	b _0211DFC4
_0211DF28:
	ldr r1, [r5, #4]
	mla r0, r1, r8, r7
	ldr lr, [r0, #0x2a0]
	cmp lr, #0
	beq _0211DFBC
	ldrb r2, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	ldr r12, [lr, #0xc]
	ldrsb r0, [r5, #0xd]
	add lr, lr, r12
	smulbb r3, r2, r1
	strh r0, [sp, #0x26]
	ldr r12, [r5, #0x10]
	mov r0, r3, lsl #1
	mla r3, r12, r0, lr
	ldrsb r12, [r5, #0xc]
	ldr lr, [r5, #8]
	mov r0, r1, lsl #3
	strh r12, [sp, #0x24]
	mov r12, r2, lsl #3
	strh r2, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r0, [sp, #0x32]
	str r3, [sp, #0x38]
	strh r10, [sp, #0x2c]
	strh r10, [sp, #0x2e]
	strh r12, [sp, #0x30]
	strb lr, [sp, #0x34]
	str r10, [sp]
	stmib sp, {r9, r10}
	str r10, [sp, #0xc]
	ldr r3, [r5]
	mov r0, r11
	mov r1, r10
	mov r2, r4
	str r10, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211DFBC:
	add r6, r6, #1
	add r5, r5, #0x14
_0211DFC4:
	cmp r6, #4
	blt _0211DF28
	ldr r4, _0211E0B0 ; =0x0209A070
	mov r3, r10
	mov r0, r4
	str r10, [sp]
	mov r1, #0x36
	mov r2, #0x37
	bl  FUN_ov16_020f6c8c
	strb r0, [r7, #0x1fd]
	mov r0, r4
	mov r3, r10
	mov r1, #0x38
	mov r2, #0x39
	str r10, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r7, #0x1fe]
_0211E008:
	mov r4, #0
	mov r3, #3
	ldr r0, _0211E0B4 ; =0x04000050
	mov r2, r4
	mov r1, #0xf
	strb r3, [r7, #0x8d]
	bl G2x_SetBlendBrightness_
	ldr r1, _0211E0B8 ; =0x020A1640
	add r0, r7, #0x88
	ldr r1, [r1, #0x230]
	mov r5, r4
	add r8, r1, #8
	add r9, r0, #0x400
	add r6, sp, #0x20
	b _0211E070
_0211E044:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov72_02121b68
	cmp r0, #0
	moveq r4, r5
	beq _0211E078
	add r0, r8, #8
	add r5, r5, #1
	add r8, r0, #0x800
	add r9, r9, #0xbc
_0211E070:
	cmp r5, #0xa
	blt _0211E044
_0211E078:
	and r1, r4, #0xff
	add r0, r4, #0xf
	str r4, [r7, #0x68]
	strb r1, [r7, #0xbe3]
	strb r1, [r7, #0xbe4]
	add r0, r7, r0
	ldrb r1, [r0, #0x1f0]
	ldr r0, _0211E0B0 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E0A8: .word unk_0209F5C0
_0211E0AC: .word 0x02122B04
_0211E0B0: .word unk_0209A070
_0211E0B4: .word 0x04000050
_0211E0B8: .word unk_020A1640
	arm_func_end FUN_ov72_0211de38

	arm_func_start FUN_ov72_0211e0bc
FUN_ov72_0211e0bc: ; 0x0211E0BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r4, #0
	mov r5, #1
	mov r10, r0
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r5, [sp]
	bl FUN_ov72_0211dc08
	ldr r2, [r10, #0x2d0]
	cmp r2, #0
	beq _0211E138
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	ldr r0, _0211E320 ; =0x0209F5C0
	add r7, r2, r1
	mov r1, r4
	mov r2, r5
	mov r3, r4
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211E138:
	ldr r2, [r10, #0x2dc]
	cmp r2, #0
	beq _0211E214
	ldr r1, [r2, #0xc]
	ldr r0, [r10, #0xc]
	add r4, r2, r1
	cmp r0, #0xa
	mov r5, #0x10
	mov r3, #8
	bne _0211E178
	sub r0, r5, #2
	mov r0, r0, lsl #0x18
	add r1, r3, #2
	add r4, r4, #0x1c0
	mov r5, r0, asr #0x18
	and r3, r1, #0xff
_0211E178:
	mov r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r1, #0
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211E320 ; =0x0209F5C0
	mov r3, r1
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r0, [r10, #0xc]
	cmp r0, #8
	beq _0211E1D0
	cmp r0, #9
	beq _0211E1D8
	cmp r0, #0xa
	ldreq r6, _0211E324 ; =0x02123180
	b _0211E1DC
_0211E1D0:
	ldr r6, _0211E328 ; =0x02123144
	b _0211E1DC
_0211E1D8:
	ldr r6, _0211E32C ; =0x02123158
_0211E1DC:
	str r5, [sp]
	mov r0, #0x1c
	mov r1, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r4, #8
	mov r0, r10
	mov r2, r6
	mov r3, r1
	str r4, [sp, #0xc]
	mov r4, #4
	str r4, [sp, #0x10]
	bl FUN_ov72_0211c788
_0211E214:
	ldr r1, [r10, #0x318]
	cmp r1, #0
	beq _0211E2F4
	ldr r0, [r1, #0xc]
	mov r9, #0
	ldr r6, _0211E330 ; =0x0212288E
	ldr r7, _0211E334 ; =0x02122856
	ldr r8, _0211E338 ; =0x021228A0
	add r5, r1, r0
	mov r11, #6
	mov r4, r9
_0211E240:
	ldrsh r1, [r6, #2]
	mov r0, #3
	strh r0, [sp, #0x26]
	ldr r0, [r8], #4
	strh r1, [sp, #0x22]
	add r0, r5, r0
	ldrsh r1, [r6], #4
	str r0, [sp, #0x34]
	mov r0, #0x30
	strh r0, [sp, #0x2c]
	mov r0, #0x18
	strh r1, [sp, #0x20]
	strh r0, [sp, #0x2e]
	strh r11, [sp, #0x24]
	strh r4, [sp, #0x28]
	strh r4, [sp, #0x2a]
	strb r4, [sp, #0x30]
	str r4, [sp]
	add r0, sp, #0x20
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldrsh r3, [r7], #2
	ldr r0, _0211E320 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r9, r9, #1
	cmp r9, #4
	blt _0211E240
	ldr r5, _0211E33C ; =0x0209A070
	mov r1, r4
	mov r0, r5
	str r4, [sp]
	mov r2, #0x1a
	mov r3, #0x19
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x1f5]
	mov r0, r5
	mov r1, r4
	mov r2, #0x1c
	mov r3, #0x1b
	str r4, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x1f6]
_0211E2F4:
	ldrb r1, [r10, #0x1f5]
	ldr r0, _0211E33C ; =0x0209A070
	mov r2, #1
	mov r4, #2
	mov r3, #5
	strb r2, [r10, #0xbe0]
	strb r4, [r10, #0xbe1]
	strb r3, [r10, #0xbe2]
	bl  FUN_ov16_020f6e8c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E320: .word unk_0209F5C0
_0211E324: .word ov72_02123180
_0211E328: .word ov72_02123144
_0211E32C: .word ov72_02123158
_0211E330: .word 0x0212288E
_0211E334: .word 0x02122856
_0211E338: .word 0x021228A0
_0211E33C: .word unk_0209A070
	arm_func_end FUN_ov72_0211e0bc

	arm_func_start FUN_ov72_0211e340
FUN_ov72_0211e340: ; 0x0211E340
	stmfd sp!, {r4, lr}
	mov r1, #0x18
	mov r4, r0
	bl FUN_ov72_0211d1b8
	ldr r0, _0211E3B0 ; =0x04000008
	mov r3, #1
	ldrh r12, [r0]
	mov r2, #2
	mov r1, #5
	bic r12, r12, #3
	strh r12, [r0]
	ldrh r12, [r0, #6]
	bic r12, r12, #3
	orr r12, r12, #1
	strh r12, [r0, #6]
	ldrh r12, [r0, #2]
	bic r12, r12, #3
	orr r12, r12, #2
	strh r12, [r0, #2]
	ldrh r12, [r0, #4]
	bic r12, r12, #3
	orr r12, r12, #3
	strh r12, [r0, #4]
	strb r3, [r4, #0xbe0]
	strb r2, [r4, #0xbe1]
	strb r1, [r4, #0xbe2]
	str r3, [r4, #0x68]
	ldmfd sp!, {r4, pc}
_0211E3B0: .word 0x04000008
	arm_func_end FUN_ov72_0211e340

	arm_func_start FUN_ov72_0211e3b4
FUN_ov72_0211e3b4: ; 0x0211E3B4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x54
	str r0, [sp, #0x20]
	ldr r0, [r0, #0xbf8]
	ldr r6, _0211E948 ; =0x0209F5C0
	cmp r0, #0xe
	mov r11, #1
	mov r7, #0
	bne _0211E56C
	ldr r0, [sp, #0x20]
	ldr r2, [r0, #0x33c]
	cmp r2, #0
	beq _0211E4C0
	ldr r0, _0211E94C ; =0x0212285E
	ldr r1, [r2, #0xc]
	str r0, [sp, #0x38]
	ldr r0, _0211E950 ; =0x02122876
	ldr r9, _0211E954 ; =0x02122954
	str r0, [sp, #0x34]
	mov r0, r7
	add r8, r2, r1
	str r0, [sp, #0x30]
_0211E40C:
	ldr r0, [sp, #0x34]
	mov r10, r7
	ldrsh r5, [r0]
	ldr r0, [sp, #0x38]
	ldrsh r4, [r0]
_0211E420:
	mov r0, #0x1e
	strh r0, [sp, #0x40]
	mov r0, #4
	strh r0, [sp, #0x42]
	mov r0, #0xf0
	strh r0, [sp, #0x48]
	mov r0, #0x20
	strh r0, [sp, #0x4a]
	mov r0, #5
	strb r0, [sp, #0x4c]
	strh r4, [sp, #0x3c]
	strh r5, [sp, #0x3e]
	strh r7, [sp, #0x44]
	strh r7, [sp, #0x46]
	str r8, [sp, #0x50]
	str r7, [sp]
	add r0, sp, #0x3c
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	ldrsh r3, [r9], #2
	mov r0, r6
	mov r1, r7
	mov r2, r11
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r10, r10, #1
	add r8, r8, #0xf0
	cmp r10, #3
	blt _0211E420
	ldr r0, [sp, #0x38]
	add r0, r0, #2
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #4
	blt _0211E40C
_0211E4C0:
	ldr r4, _0211E958 ; =0x0209A070
	mov r5, #1
	mov r0, r4
	mov r1, #0x51
	mov r2, #0x53
	mov r3, #0x52
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, #0x66
	strb r0, [r1, #0x20a]
	mov r0, r4
	mov r1, #0x64
	mov r3, #0x65
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, #0x69
	strb r0, [r1, #0x20b]
	mov r0, r4
	mov r1, #0x67
	mov r3, #0x68
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, #0x56
	strb r0, [r1, #0x20c]
	mov r0, r4
	mov r1, #0x54
	mov r3, #0x55
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, r5
	strb r0, [r1, #0x20d]
	ldr r3, [r1, #0xbf8]
	mov r0, r4
	add r4, r1, r3
	ldrb r3, [r4, #0xbfc]
	str r3, [r1, #0x68]
	ldrb r4, [r4, #0xbfc]
	add r3, r3, #0x1a
	b _0211E6E4
_0211E56C:
	cmp r0, #0
	bne _0211E6F4
	ldr r0, [sp, #0x20]
	ldr r2, [r0, #0x330]
	cmp r2, #0
	beq _0211E65C
	ldr r0, _0211E95C ; =0x0212283E
	ldr r1, [r2, #0xc]
	str r0, [sp, #0x2c]
	ldr r0, _0211E960 ; =0x02122844
	ldr r8, _0211E964 ; =0x02122930
	str r0, [sp, #0x28]
	mov r0, r7
	add r10, r2, r1
	str r0, [sp, #0x24]
_0211E5A8:
	ldr r0, [sp, #0x28]
	mov r9, r7
	ldrsh r5, [r0]
	ldr r0, [sp, #0x2c]
	ldrsh r4, [r0]
_0211E5BC:
	mov r0, #0x18
	strh r0, [sp, #0x40]
	mov r0, #4
	strh r0, [sp, #0x42]
	mov r0, #0xc0
	strh r0, [sp, #0x48]
	mov r0, #0x20
	strh r0, [sp, #0x4a]
	mov r0, #6
	strb r0, [sp, #0x4c]
	strh r4, [sp, #0x3c]
	strh r5, [sp, #0x3e]
	strh r7, [sp, #0x44]
	strh r7, [sp, #0x46]
	str r10, [sp, #0x50]
	str r7, [sp]
	add r0, sp, #0x3c
	stmib sp, {r0, r7}
	str r7, [sp, #0xc]
	ldrsh r3, [r8], #2
	mov r0, r6
	mov r1, r7
	mov r2, r11
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r9, r9, #1
	add r10, r10, #0xc0
	cmp r9, #3
	blt _0211E5BC
	ldr r0, [sp, #0x2c]
	add r0, r0, #2
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #3
	blt _0211E5A8
_0211E65C:
	ldr r4, _0211E958 ; =0x0209A070
	mov r5, #1
	mov r0, r4
	mov r1, #5
	mov r2, #7
	mov r3, #6
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, #0xa
	strb r0, [r1, #0x1f1]
	mov r0, r4
	mov r1, #8
	mov r3, #9
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, #0xd
	strb r0, [r1, #0x1f2]
	mov r0, r4
	mov r1, #0xb
	mov r3, #0xc
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, r5
	strb r0, [r1, #0x1f3]
	ldr r3, [r1, #0xbf8]
	mov r0, r4
	add r4, r1, r3
	ldrb r3, [r4, #0xbfc]
	str r3, [r1, #0x68]
	ldrb r4, [r4, #0xbfc]
	add r3, r3, #1
_0211E6E4:
	add r3, r1, r3
	strb r4, [r1, #0xc09]
	ldrb r1, [r3, #0x1f0]
	bl  FUN_ov16_020f6e8c
_0211E6F4:
	ldr r7, _0211E948 ; =0x0209F5C0
	mov r6, #0
	mov r0, r7
	mov r1, r6
	mov r5, #6
	mov r4, #1
	bl  FUN_ov16_020f64cc
	ldr r0, [sp, #0x20]
	ldr r3, [r0, #0x354]
	cmp r3, #0
	beq _0211E76C
	mov r2, r4
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	ldr r1, [r3, #0xc]
	mov r0, r7
	add r7, r3, r1
	mov r1, r6
	mov r3, r6
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211E76C:
	ldr r0, [sp, #0x20]
	ldr r3, [r0, #0x300]
	cmp r3, #0
	beq _0211E7C8
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	mov r1, #0
	add r7, r3, r2
	ldr r0, _0211E948 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211E7C8:
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #0x324]
	cmp r1, #0
	beq _0211E868
	ldr r0, [r1, #0xc]
	mov r3, #0xd
	add r7, r1, r0
	mov r2, #3
	mov r1, #0x30
	mov r0, #0x18
	strh r2, [sp, #0x42]
	strh r1, [sp, #0x48]
	strh r0, [sp, #0x4a]
	strh r3, [sp, #0x3c]
	strh r3, [sp, #0x3e]
	mov r8, #0x1f
	strh r5, [sp, #0x40]
	strh r6, [sp, #0x44]
	strh r6, [sp, #0x46]
	strb r6, [sp, #0x4c]
	str r7, [sp, #0x50]
	add r0, sp, #0x3c
	str r6, [sp]
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _0211E948 ; =0x0209F5C0
	mov r1, r6
	mov r2, r6
	mov r3, r8
	str r6, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r7, #2
	ldr r0, _0211E958 ; =0x0209A070
	mov r1, r6
	mov r2, r8
	mov r3, r6
	str r7, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	strb r0, [r1, #0x209]
_0211E868:
	ldr r0, [sp, #0x20]
	mov r2, #0x19
	ldr r1, [r0, #0xbf4]
	strb r4, [r0, #0xbe0]
	strb r4, [r0, #0xbe1]
	strb r2, [r0, #0xbe2]
	tst r1, #2
	beq _0211E898
	ldr r1, _0211E968 ; =0x021231B0
_0211E88C:
	mov r2, #0
	mov r3, #0x40
	b _0211E8DC
_0211E898:
	tst r1, #1
	beq _0211E8A8
	ldr r1, _0211E96C ; =0x021231FC
	b _0211E88C
_0211E8A8:
	tst r1, #4
	beq _0211E8E0
	ldr r0, [r0, #0xbf8]
	cmp r0, #0xe
	bne _0211E8C4
	ldr r1, _0211E970 ; =0x0212324C
	b _0211E8D0
_0211E8C4:
	cmp r0, #0
	bne _0211E8E0
	ldr r1, _0211E974 ; =0x0212326C
_0211E8D0:
	ldr r0, [sp, #0x20]
	mov r2, #0
	mov r3, #0x48
_0211E8DC:
	bl FUN_ov72_02121844
_0211E8E0:
	ldr r4, _0211E978 ; =0x04000050
	mov r1, r5
	mov r0, r4
	sub r2, r5, #0xe
	bl G2x_SetBlendBrightness_
	add r1, r5, #0x4000002
	ldrh r0, [r1]
	sub r3, r4, #0x42
	sub r2, r4, #0x46
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r3]
	sub r1, r4, #0x44
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E948: .word unk_0209F5C0
_0211E94C: .word 0x0212285E
_0211E950: .word 0x02122876
_0211E954: .word 0x02122954
_0211E958: .word unk_0209A070
_0211E95C: .word 0x0212283E
_0211E960: .word 0x02122844
_0211E964: .word 0x02122930
_0211E968: .word ov72_021231B0
_0211E96C: .word ov72_021231FC
_0211E970: .word ov72_0212324C
_0211E974: .word ov72_0212326C
_0211E978: .word 0x04000050
	arm_func_end FUN_ov72_0211e3b4

	arm_func_start FUN_ov72_0211e97c
FUN_ov72_0211e97c: ; 0x0211E97C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211E9B0
	ldr r3, [r4, #0x68]
	ldr r2, _0211E9CC ; =0x02122DCC
	mov r1, #2
	ldr r2, [r2, r3, lsl #2]
	bl FUN_ov72_0211a464
	ldr r0, [r4, #0x68]
	strb r0, [r4, #0x454]
	ldmfd sp!, {r4, pc}
_0211E9B0:
	cmp r1, #0xe
	ldmnefd sp!, {r4, pc}
	ldr r2, _0211E9D0 ; =0x02122DA0
	mov r1, #0x64
	ldr r2, [r2, #0x2c]
	bl FUN_ov72_0211a464
	ldmfd sp!, {r4, pc}
_0211E9CC: .word ov72_02122DCC
_0211E9D0: .word ov72_02122DA0
	arm_func_end FUN_ov72_0211e97c

	arm_func_start FUN_ov72_0211e9d4
FUN_ov72_0211e9d4: ; 0x0211E9D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	ldr r2, [r0, #0x33c]
	str r0, [sp, #0x14]
	cmp r2, #0
	beq _0211EAD4
	ldr r0, _0211EBAC ; =0x02122866
	ldr r1, [r2, #0xc]
	str r0, [sp, #0x20]
	ldr r0, _0211EBB0 ; =0x0212286E
	ldr r9, _0211EBB4 ; =0x0212296C
	str r0, [sp, #0x1c]
	mov r0, #0
	add r8, r2, r1
	str r0, [sp, #0x18]
	mov r5, #0x1e
	mov r4, #4
	mov r11, #0xf0
_0211EA1C:
	ldr r0, [sp, #0x1c]
	mov r10, #0
	ldrsh r7, [r0]
	ldr r0, [sp, #0x20]
	ldrsh r6, [r0]
_0211EA30:
	mov r0, #0
	strh r0, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	mov r0, #0x20
	strh r0, [sp, #0x32]
	mov r0, #5
	strb r0, [sp, #0x34]
	strh r6, [sp, #0x24]
	strh r7, [sp, #0x26]
	strh r5, [sp, #0x28]
	strh r4, [sp, #0x2a]
	strh r11, [sp, #0x30]
	str r8, [sp, #0x38]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrsh r3, [r9], #2
	ldr r0, _0211EBB8 ; =0x0209F5C0
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_020f5c34
	add r10, r10, #1
	add r8, r8, #0xf0
	cmp r10, #3
	blt _0211EA30
	ldr r0, [sp, #0x20]
	add r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0211EA1C
_0211EAD4:
	ldr r4, _0211EBBC ; =0x0209A070
	mov r5, #1
	mov r0, r4
	mov r1, #0x51
	mov r2, #0x53
	mov r3, #0x52
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x14]
	mov r2, #0x66
	strb r0, [r1, #0x20a]
	mov r0, r4
	mov r1, #0x64
	mov r3, #0x65
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x14]
	mov r2, #0x69
	strb r0, [r1, #0x20b]
	mov r0, r4
	mov r1, #0x67
	mov r3, #0x68
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x14]
	mov r2, #0x56
	strb r0, [r1, #0x20c]
	mov r0, r4
	mov r1, #0x54
	mov r3, #0x55
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x14]
	mov r3, #4
	strb r3, [r1, #0xbe0]
	mov r3, #0x1a
	strb r3, [r1, #0xbe2]
	strb r0, [r1, #0x20d]
	ldr r3, [r1, #0xc]
	strb r5, [r1, #0xbe1]
	add r1, r1, r3
	ldrb r3, [r1, #0xbfc]
	ldr r1, [sp, #0x14]
	mov r0, r4
	str r3, [r1, #0x68]
	add r3, r3, #0x1a
	add r1, r1, r3
	ldrb r1, [r1, #0x1f0]
	mov r2, r5
	bl  FUN_ov16_020f6e8c
	ldr r0, [sp, #0x14]
	bl FUN_ov72_0211ce08
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EBAC: .word 0x02122866
_0211EBB0: .word 0x0212286E
_0211EBB4: .word 0x0212296C
_0211EBB8: .word unk_0209F5C0
_0211EBBC: .word unk_0209A070
	arm_func_end FUN_ov72_0211e9d4

	arm_func_start FUN_ov72_0211ebc0
FUN_ov72_0211ebc0: ; 0x0211EBC0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r10, r0
	str r1, [sp, #0x20]
	bl FUN_ov72_02121d54
	mov r0, r10
	bl FUN_ov72_02122034
	mov r7, #0
	mov r4, #1
	mov r0, r10
	str r7, [sp]
	mov r1, r4
	mov r2, r7
	mov r3, r7
	bl FUN_ov72_0211dc08
	ldr r2, [r10, #0x2d0]
	cmp r2, #0
	beq _0211EC50
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	ldr r0, _0211EE70 ; =0x0209F5C0
	add r5, r2, r1
	mov r1, r7
	mov r2, r4
	mov r3, r7
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211EC50:
	mov r9, #0
	mov r0, r10
	mov r2, r9
	mov r1, #2
	mov r3, #0x88
	str r9, [sp]
	bl FUN_ov72_0211bda4
	ldr r8, _0211EE74 ; =0x02122B54
	ldr r5, _0211EE70 ; =0x0209F5C0
	add r6, sp, #0x24
	mov r11, #1
	mov r4, #0xc
_0211EC80:
	ldr r1, [r8, #4]
	mla r0, r1, r4, r10
	ldr r2, [r0, #0x2a0]
	cmp r2, #0
	beq _0211ED14
	ldrb r12, [r8, #0xf]
	ldr r0, [r2, #0xc]
	ldrb r3, [r8, #0xe]
	ldrsb r1, [r8, #0xd]
	add r2, r2, r0
	smulbb r0, r3, r12
	strh r1, [sp, #0x26]
	ldr r1, [r8, #0x10]
	mov r0, r0, lsl #1
	mla r2, r1, r0, r2
	ldrsb r0, [r8, #0xc]
	ldr r1, [r8, #8]
	str r2, [sp, #0x38]
	mov r2, r3, lsl #3
	strh r0, [sp, #0x24]
	mov r0, r12, lsl #3
	strh r3, [sp, #0x28]
	strh r2, [sp, #0x30]
	strh r0, [sp, #0x32]
	strb r1, [sp, #0x34]
	strh r12, [sp, #0x2a]
	strh r7, [sp, #0x2c]
	strh r7, [sp, #0x2e]
	str r7, [sp]
	stmib sp, {r6, r7}
	str r7, [sp, #0xc]
	ldr r3, [r8]
	mov r0, r5
	mov r1, r7
	mov r2, r11
	str r7, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211ED14:
	add r9, r9, #1
	cmp r9, #4
	add r8, r8, #0x14
	blt _0211EC80
	ldr r4, _0211EE78 ; =0x0209A070
	mov r3, #0
	mov r1, r3
	str r1, [sp]
	mov r0, r4
	mov r1, #0x57
	mov r2, #0x58
	bl  FUN_ov16_020f6c8c
	mov r3, #0
	strb r0, [r10, #0x20e]
	mov r1, r3
	str r1, [sp]
	mov r0, r4
	mov r1, #0x59
	mov r2, #0x5a
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x20f]
	ldr r0, _0211EE7C ; =0x04000050
	mov r2, #0
	mov r1, #0xf
	bl G2x_SetBlendBrightness_
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0211EDD8
	ldr r2, [r10, #0xbf0]
	mov r3, #3
	and r1, r2, #0xff
	add r0, r2, #0xf
	strb r3, [r10, #0x8d]
	mov r5, #1
	str r2, [r10, #0x68]
	strb r1, [r10, #0xbe3]
	strb r1, [r10, #0xbe4]
	add r0, r10, r0
	ldrb r1, [r0, #0x1f0]
	mov r0, r4
	mov r2, r5
	bl  FUN_ov16_020f6e8c
	ldr r0, [r10, #4]
	mov r1, r5
	mov r2, #0x1c
	bl FUN_02041eac
	mov r0, #5
	strb r0, [r10, #0x8d]
	strb r5, [r10, #0x70]
_0211EDD8:
	ldr r1, [r10, #0x68]
	mov r0, r10
	mov r2, #0
	bl FUN_ov72_02121b68
	cmp r0, #0
	beq _0211EE08
	ldrb r1, [r0, #0x74]
	mov r0, r10
	bl FUN_ov72_0211b688
	mov r0, r10
	mov r1, #1
	b _0211EE1C
_0211EE08:
	mov r0, r10
	mov r1, #0
	bl FUN_ov72_0211b688
	mov r0, r10
	mov r1, #0
_0211EE1C:
	bl FUN_ov72_0211b860
	ldr r1, _0211EE80 ; =0x0400000E
	ldrh r0, [r1]
	sub r3, r1, #6
	sub r2, r1, #4
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r3]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1, #-2]!
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EE70: .word unk_0209F5C0
_0211EE74: .word 0x02122B54
_0211EE78: .word unk_0209A070
_0211EE7C: .word 0x04000050
_0211EE80: .word 0x0400000E
	arm_func_end FUN_ov72_0211ebc0

	arm_func_start FUN_ov72_0211ee84
FUN_ov72_0211ee84: ; 0x0211EE84
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r4, #0
	mov r1, r4
	mov r5, r0
	bl FUN_ov72_021221dc
	ldr r1, _0211F038 ; =0x02123640
	ldr r3, [r1]
	tst r3, #1
	bne _0211EEF8
	ldr r0, _0211F03C ; =0x02122DA0
	mov r2, #2
	strb r4, [r0, #0x18]
	strb r2, [r0, #0x19]
	mov r2, #9
	strb r2, [r0, #0x1a]
	mov r2, #3
	strb r2, [r0, #0x1b]
	mov r2, #1
	strb r2, [r0, #0x1c]
	mov r2, #7
	strb r2, [r0, #0x1d]
	mov r2, #0x1e
	strb r2, [r0, #0x1e]
	mov r2, #0xa
	strb r2, [r0, #0x1f]
	strb r4, [r0, #0x20]
	orr r0, r3, #1
	str r0, [r1]
_0211EEF8:
	mov r4, #1
	ldr r1, _0211F040 ; =0x02122DB8
	mov r0, r5
	mov r2, r4
	bl FUN_ov72_0211cae4
	ldr r2, [r5, #0x2d0]
	cmp r2, #0
	beq _0211EF60
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r12, r2, r0
	ldr r0, _0211F044 ; =0x0209F5C0
	mov r2, r4
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211EF60:
	ldr r1, _0211F038 ; =0x02123640
	ldr r4, [r1, #4]
	tst r4, #1
	bne _0211EFBC
	ldr r0, _0211F03C ; =0x02122DA0
	mov r3, #0
	strb r3, [r0, #0x21]
	mov r2, #0x1a
	strb r2, [r0, #0x22]
	mov r2, #0xb
	strb r2, [r0, #0x23]
	mov r2, #4
	strb r2, [r0, #0x24]
	mov r2, #0xd
	strb r2, [r0, #0x25]
	strb r2, [r0, #0x26]
	mov r2, #6
	strb r2, [r0, #0x27]
	mov r2, #3
	strb r2, [r0, #0x28]
	strb r3, [r0, #0x29]
	orr r0, r4, #1
	str r0, [r1, #4]
_0211EFBC:
	ldr r1, _0211F048 ; =0x02122DC1
	mov r0, r5
	mov r2, #1
	bl FUN_ov72_0211cbdc
	mov r1, #0
	ldr r0, _0211F04C ; =0x0209A070
	mov r3, r1
	mov r2, #0x1a
	str r1, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, _0211F050 ; =0x0400000E
	strb r0, [r5, #0x1f5]
	ldrh r0, [r1]
	sub r3, r1, #6
	sub r2, r1, #4
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r3]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1, #-2]!
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0211F038: .word ov72_02123640
_0211F03C: .word ov72_02122DA0
_0211F040: .word ov72_02122DB8
_0211F044: .word unk_0209F5C0
_0211F048: .word ov72_02122DC1
_0211F04C: .word unk_0209A070
_0211F050: .word 0x0400000E
	arm_func_end FUN_ov72_0211ee84

	arm_func_start FUN_ov72_0211f054
FUN_ov72_0211f054: ; 0x0211F054
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r4, #0
	mov r7, r0
	mov r1, r4
	bl FUN_ov72_021221dc
	ldr r2, [r7, #0x2e8]
	cmp r2, #0
	beq _0211F0C8
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	ldr r0, _0211F358 ; =0x0209F5C0
	add r5, r2, r1
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211F0C8:
	ldr r3, [r7, #0x2d0]
	cmp r3, #0
	beq _0211F11C
	mov r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r3, #0xc]
	mov r1, #0
	add r5, r3, r0
	ldr r0, _0211F358 ; =0x0209F5C0
	mov r3, r1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211F11C:
	mov r6, #0
	mov r0, r7
	mov r2, r6
	mov r1, #2
	mov r3, #0x88
	str r6, [sp]
	bl FUN_ov72_0211bda4
	ldr r5, _0211F35C ; =0x02122BA4
	ldr r9, _0211F358 ; =0x0209F5C0
	mov r10, #1
	mov r8, #0xc
_0211F148:
	ldr r1, [r5, #4]
	mla r0, r1, r8, r7
	ldr r3, [r0, #0x2a0]
	cmp r3, #0
	beq _0211F1C0
	ldrb r2, [r5, #0xf]
	ldrb r1, [r5, #0xe]
	ldr r0, [r3, #0xc]
	ldr lr, [r5, #8]
	smulbb r12, r1, r2
	add r3, r3, r0
	str r10, [sp]
	ldr r0, [r5, #0x10]
	mov r12, r12, lsl #1
	mla r12, r0, r12, r3
	ldrsb r0, [r5, #0xc]
	str r10, [sp, #4]
	ldrsb r3, [r5, #0xd]
	str r0, [sp, #8]
	and r0, lr, #0xff
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, r9
	mov r1, r4
	mov r2, r10
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211F1C0:
	add r6, r6, #1
	cmp r6, #4
	add r5, r5, #0x14
	blt _0211F148
	ldr r6, _0211F360 ; =0x02122BF4
	ldr r9, _0211F358 ; =0x0209F5C0
	mov r5, #0
	add r10, sp, #0x20
	mov r8, #0xc
_0211F1E4:
	ldr r1, [r6, #4]
	mla r0, r1, r8, r7
	ldr r1, [r0, #0x2a0]
	cmp r1, #0
	beq _0211F278
	ldrb r3, [r6, #0xf]
	ldrb r2, [r6, #0xe]
	ldr r0, [r1, #0xc]
	ldrsb r12, [r6, #0xd]
	add r1, r1, r0
	smulbb lr, r2, r3
	strh r12, [sp, #0x22]
	mov r12, lr, lsl #1
	ldr r0, [r6, #0x10]
	mov lr, r2, lsl #3
	mla r1, r0, r12, r1
	ldrsb r12, [r6, #0xc]
	ldr r0, [r6, #8]
	strh r2, [sp, #0x24]
	strh r12, [sp, #0x20]
	mov r12, r3, lsl #3
	strh r3, [sp, #0x26]
	strb r0, [sp, #0x30]
	str r1, [sp, #0x34]
	strh r4, [sp, #0x28]
	strh r4, [sp, #0x2a]
	strh lr, [sp, #0x2c]
	strh r12, [sp, #0x2e]
	stmia sp, {r4, r10}
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	ldr r3, [r6]
	mov r0, r9
	mov r1, r4
	mov r2, r4
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211F278:
	add r5, r5, #1
	cmp r5, #4
	add r6, r6, #0x14
	blt _0211F1E4
	ldr r5, _0211F364 ; =0x0209A070
	mov r1, r4
	mov r0, r5
	str r4, [sp]
	mov r2, #0x1a
	mov r3, #0x19
	bl  FUN_ov16_020f6c8c
	strb r0, [r7, #0x1f5]
	mov r0, r5
	mov r1, r4
	str r4, [sp]
	mov r2, #0x1c
	mov r3, #0x1b
	bl  FUN_ov16_020f6c8c
	mov r6, #1
	strb r0, [r7, #0x1f6]
	ldrb r1, [r7, #0x1f5]
	mov r0, r5
	mov r2, r6
	bl  FUN_ov16_020f6e8c
	mov r4, #7
	mov r0, #2
	strb r0, [r7, #0xbe1]
	mov r0, #5
	ldr r5, _0211F368 ; =0x04000050
	strb r0, [r7, #0xbe2]
	mov r0, r5
	mov r1, r4
	sub r2, r4, #0xf
	strb r6, [r7, #0xbe0]
	bl G2x_SetBlendBrightness_
	sub r2, r5, #0x42
	ldrh r0, [r2]
	add r3, r4, #0x4000001
	sub r1, r5, #0x44
	bic r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r3]
	add r2, r4, #0x4000003
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F358: .word unk_0209F5C0
_0211F35C: .word 0x02122BA4
_0211F360: .word 0x02122BF4
_0211F364: .word unk_0209A070
_0211F368: .word 0x04000050
	arm_func_end FUN_ov72_0211f054

	arm_func_start FUN_ov72_0211f36c
FUN_ov72_0211f36c: ; 0x0211F36C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r1, r7
	mov r4, r0
	bl FUN_ov72_0211d1b8
	mov r6, #0
	ldr r5, _0211F434 ; =0x0209A070
	mov r1, r6
	mov r0, r5
	str r6, [sp]
	mov r2, #0x1a
	mov r3, #0x19
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0x1f5]
	mov r0, r5
	mov r1, r6
	str r6, [sp]
	mov r2, #0x1c
	mov r3, #0x1b
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0x1f6]
	mov r0, r5
	ldrb r1, [r4, #0x1f5]
	mov r2, r7
	bl  FUN_ov16_020f6e8c
	mov r0, #5
	strb r7, [r4, #0xbe0]
	ldr r3, _0211F438 ; =0x0400000E
	strb r0, [r4, #0xbe2]
	add r12, r0, #0x4000003
	mov r0, #2
	strb r0, [r4, #0xbe1]
	ldrh r0, [r12]
	sub r2, r3, #4
	sub r1, r3, #2
	bic r0, r0, #3
	strh r0, [r12]
	ldrh r0, [r3]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F434: .word unk_0209A070
_0211F438: .word 0x0400000E
	arm_func_end FUN_ov72_0211f36c

	arm_func_start FUN_ov72_0211f43c
FUN_ov72_0211f43c: ; 0x0211F43C
	ldr r0, _0211F448 ; =0x0209F5C0
	ldr r12, _0211F44C ; = FUN_ov16_020f6274
	bx r12
_0211F448: .word unk_0209F5C0
_0211F44C: .word  FUN_ov16_020f6274
	arm_func_end FUN_ov72_0211f43c

	arm_func_start FUN_ov72_0211f450
FUN_ov72_0211f450: ; 0x0211F450
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	mov r6, r0
	ldr r0, _0211F784 ; =0x020AF81C
	mov r2, r5
	mov r1, #2
	mov r4, r5
	bl FUN_02044754
	ldr r0, _0211F788 ; =0x020A1640
	mov r7, #0x23
	strb r5, [r0, #0x245]
	sub r8, r5, #1
	mov r1, r5
	mov r2, r7
	add r0, r6, #0x1f0
	str r5, [r6, #8]
	str r5, [r6, #0x1e8]
	strb r5, [r6, #0x10]
	strb r5, [r6, #0x11]
	strb r5, [r6, #0x12]
	str r8, [r6, #0x14]
	str r8, [r6, #0x18]
	str r5, [r6, #0x1c]
	str r5, [r6, #0x20]
	str r5, [r6, #0x24]
	str r5, [r6, #0x28]
	str r5, [r6, #0xc]
	str r5, [r6, #0xbf8]
	bl MI_CpuFill8
	ldr r0, _0211F78C ; =0x0209A070
	mov r1, r7
	bl  FUN_ov16_020f6c20
	add r0, r6, #0x3fc
	mov r7, #1
	add r0, r0, #0x800
	mov r1, r5
	mov r2, #0x19
	str r5, [r6, #0x74]
	str r5, [r6, #0x78]
	str r8, [r6, #0x7c]
	strb r8, [r6, #0x454]
	str r5, [r6, #0x80]
	strb r5, [r6, #0x84]
	strb r5, [r6, #0x85]
	strb r5, [r6, #0x86]
	str r5, [r6, #0x88]
	strb r5, [r6, #0x8c]
	strb r5, [r6, #0x8d]
	strb r5, [r6, #0x87]
	str r5, [r6, #0x90]
	str r5, [r6, #0x94]
	strb r5, [r6, #0x98]
	strb r5, [r6, #0x99]
	strb r5, [r6, #0x44a]
	strb r5, [r6, #0x44b]
	strb r5, [r6, #0x44c]
	strb r5, [r6, #0x44d]
	strb r5, [r6, #0x44e]
	str r5, [r6, #0x450]
	str r5, [r6, #0x68]
	str r5, [r6, #0xbe8]
	str r5, [r6, #0xbf4]
	strb r5, [r6, #0xc15]
	str r7, [r6, #0xbec]
	bl MI_CpuFill8
	mov r9, #7
	add r0, r6, #0x214
	mov r1, r9
	bl  FUN_ov16_020f2f7c
	bl  FUN_ov16_020f47fc
	mov r0, r7
	bl  FUN_ov16_020f3f60
	mov r0, r7
	mov r2, r7
	mov r1, r5
	bl GX_SetGraphicsMode
	mov r8, #0xc
	add r0, r6, #0x214
	mov r1, #0x16
	mov r2, r8
	bl  FUN_ov16_020f2fa8
	mov r7, #3
	add r0, r6, #0x23c
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_020f2fa8
	add r0, r6, #0x250
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_020f2fa8
	add r0, r6, #0x264
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_020f2fa8
	add r0, r6, #0x278
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_020f2fa8
	mov r1, r8
	mov r2, r7
	add r0, r6, #0x28c
	bl  FUN_ov16_020f2fa8
	mov r2, r9
	add r0, r6, #0x228
	mov r1, #0x1c
	bl  FUN_ov16_020f2fa8
	b _0211F608
_0211F5FC:
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x2c]
	add r5, r5, #1
_0211F608:
	cmp r5, #0xf
	blt _0211F5FC
	add r0, r6, #0x5c
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x2c
	bl MI_CpuFill8
	ldr r0, _0211F790 ; =0x02099F38
	str r4, [r6, #0x458]
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	mov r0, r6
	bl FUN_ov72_0211b4c0
	ldr r2, _0211F794 ; =0x0400000E
	ldr r0, _0211F798 ; =0x0209A134
	ldrh r1, [r2]
	sub r5, r2, #6
	sub r3, r2, #4
	bic r1, r1, #3
	strh r1, [r2]
	ldrh r1, [r5]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r5]
	ldrh r1, [r3]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r3]
	ldrh r1, [r2, #-2]!
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r2]
	strb r4, [r6, #0x70]
	strb r4, [r6, #0xbe3]
	strb r4, [r6, #0xbe5]
	strb r4, [r6, #0xbe4]
	strb r4, [r6, #0xbe6]
	str r4, [r6, #0xbf0]
	ldr r0, [r0]
	cmp r0, #0
	bne _0211F70C
	mov r5, #0x70
	mov r0, r5
	bl FUN_0201e014
	mov r1, r0
	ldr r2, _0211F79C ; =0x0209A0FC
	ldr r0, _0211F788 ; =0x020A1640
	str r1, [r2]
	ldr r0, [r0, #0x230]
	mov r2, r5
	add r0, r0, #0x1e8
	add r0, r0, #0x5000
	bl MI_CpuCopy8
	ldr r0, _0211F7A0 ; =0x000032FC
	bl FUN_0201e014
	ldr r2, _0211F7A4 ; =0x0209A104
	mov r1, #0
	str r0, [r2]
	bl  FUN_ov131_021426e8
	mov r0, #0x3b4
	bl FUN_0201e014
	ldr r1, _0211F798 ; =0x0209A134
	str r0, [r1]
	mov r0, r6
	bl FUN_ov72_02121a88
_0211F70C:
	ldr r0, [r6, #4]
	ldr r1, [r0, #0x90]
	cmp r1, #3
	bne _0211F744
	mov r1, #1
	str r1, [r6, #0xc]
	str r1, [r6, #0xbf8]
	strb r1, [r6, #0xc16]
	bl FUN_0204204c
	cmp r0, #0x19
	bne _0211F77C
	mov r0, r6
	bl FUN_ov72_0211a11c
	b _0211F77C
_0211F744:
	strb r4, [r6, #0xc16]
	bl FUN_0204204c
	cmp r0, #0x1d
	beq _0211F764
	cmp r0, #0x1e
	moveq r0, #2
	streq r0, [r6, #0x68]
	b _0211F76C
_0211F764:
	mov r0, #1
	str r0, [r6, #0x68]
_0211F76C:
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x68]
	add r0, r6, r0
	strb r1, [r0, #0xbfc]
_0211F77C:
	str r4, [r6, #0xc44]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F784: .word unk_020AF81C
_0211F788: .word unk_020A1640
_0211F78C: .word unk_0209A070
_0211F790: .word unk_02099F38
_0211F794: .word 0x0400000E
_0211F798: .word unk_0209A134
_0211F79C: .word unk_0209A0FC
_0211F7A0: .word 0x000032FC
_0211F7A4: .word unk_0209A104
	arm_func_end FUN_ov72_0211f450

	arm_func_start FUN_ov72_0211f7a8
FUN_ov72_0211f7a8: ; 0x0211F7A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r1, [r6, #8]
	mov r5, #2
	cmp r1, #5
	mov r4, #0
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F7C8: ; jump table
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 0
	b _0211F7E0 ; case 1
	b _0211F80C ; case 2
	b _0211F820 ; case 3
	b _0211F84C ; case 4
	b _0211FA58 ; case 5
_0211F7E0:
	add r0, r6, #0x2a0
	mov r1, #0x23
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_ov72_0211b504
	mov r0, r6
	bl FUN_ov72_0211b59c
	str r5, [r6, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F80C:
	bl FUN_ov72_0211bfc0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #3
	str r0, [r6, #8]
_0211F820:
	mov r0, r6
	bl FUN_ov72_0211c184
	mov r0, r6
	bl FUN_ov72_0211b624
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #4
	str r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F84C:
	ldr r1, _0211FADC ; =0x0209A0E0
	ldrb r1, [r1]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211FA50
_0211F860: ; jump table
	b _0211F87C ; case 0
	b _0211F894 ; case 1
	b _0211F898 ; case 2
	b _0211F8C8 ; case 3
	b _0211F9F4 ; case 4
	b _0211FA24 ; case 5
	b _0211FA0C ; case 6
_0211F87C:
	ldrb r1, [r6, #0xc16]
	cmp r1, #0
	bne _0211F88C
	b _0211F8D8
_0211F88C:
	mov r1, #1
	b _0211FA4C
_0211F894:
	b _0211F9F4
_0211F898:
	bl FUN_ov72_02121d54
	mov r0, r6
	bl FUN_ov72_02122034
	ldr r0, _0211FAE0 ; =0x0209A134
	ldr r0, [r0]
	ldrb r0, [r0, #0x3ac]
	cmp r0, #0
	mov r0, r6
	beq _0211F8C0
	b _0211FA04
_0211F8C0:
	mov r1, #0x15
	b _0211FA4C
_0211F8C8:
	ldr r1, _0211FAE4 ; =0x02099E93
	ldrb r1, [r1]
	cmp r1, #0xfe
	bne _0211F8E0
_0211F8D8:
	mov r1, r4
	b _0211FA4C
_0211F8E0:
	cmp r1, #0xff
	bne _0211F964
	ldr r8, _0211FAE8 ; =0x020A1640
	ldr r0, _0211FAEC ; =0x0209A0FC
	ldr r2, [r8, #0x230]
	ldr r1, [r0]
	add r0, r2, #0x1e8
	add r0, r0, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	ldr r7, _0211FAF0 ; =0x0209A104
	mov r1, r4
	ldr r0, [r7]
	bl  FUN_ov131_021426e8
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov131_02143f84
	ldr r0, _0211FAF4 ; =0x0209A0D8
	sub r1, r5, #3
	ldrsb r0, [r0]
	cmp r0, r1
	beq _0211F960
	ldr r3, [r8, #0x230]
	ldr r1, _0211FAF8 ; =0x00000808
	add r2, r3, #0x58
	add r5, r3, #8
	add r3, r2, #0x5000
	mov r2, #0x28
	mla r1, r0, r1, r5
	mla r2, r0, r2, r3
	ldr r0, [r7]
	bl  FUN_ov131_02142a50
_0211F960:
	b _0211F9DC
_0211F964:
	ldr r8, _0211FAE8 ; =0x020A1640
	ldr r0, _0211FAEC ; =0x0209A0FC
	ldr r2, [r8, #0x230]
	ldr r1, [r0]
	add r0, r2, #0x1e8
	add r0, r0, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	ldr r7, _0211FAF0 ; =0x0209A104
	mov r1, r4
	ldr r0, [r7]
	bl  FUN_ov131_021426e8
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov131_02143f70
	ldr r0, _0211FAF4 ; =0x0209A0D8
	sub r1, r5, #3
	ldrsb r0, [r0]
	cmp r0, r1
	beq _0211F9DC
	ldr r3, [r8, #0x230]
	ldr r1, _0211FAF8 ; =0x00000808
	add r2, r3, #0x58
	add r5, r3, #8
	add r3, r2, #0x5000
	mov r2, #0x28
	mla r1, r0, r1, r5
	mla r2, r0, r2, r3
	ldr r0, [r7]
	bl  FUN_ov131_02142a50
_0211F9DC:
	ldr r2, _0211FAFC ; =0x020A0640
	mov r3, #1
	mov r0, r6
	mov r1, #2
	strb r3, [r2, #0xae]
	b _0211FA4C
_0211F9F4:
	bl FUN_ov72_02121d54
	mov r0, r6
	bl FUN_ov72_02122034
	mov r0, r6
_0211FA04:
	mov r1, #6
	b _0211FA4C
_0211FA0C:
	ldr r0, [r6, #4]
	add r0, r0, #0x15c
	add r0, r0, #0x1800
	bl FUN_0206c270
	ldr r0, _0211FB00 ; =0x0209A0AC
	bl  FUN_ov16_020efa04
_0211FA24:
	ldr r1, [r6, #4]
	mov r0, r6
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x958]
	str r1, [r6, #0xbf0]
	bl FUN_ov72_02121d54
	mov r0, r6
	bl FUN_ov72_02122034
	mov r0, r6
	mov r1, #0xf
_0211FA4C:
	bl FUN_ov72_0212006c
_0211FA50:
	mov r0, #5
	str r0, [r6, #8]
_0211FA58:
	mov r0, r6
	bl FUN_ov72_0211f43c
	ldr r0, [r6, #0xc]
	cmp r0, #0x13
	cmpne r0, #0x14
	ldr r0, [r6, #4]
	bne _0211FA7C
	add r1, r6, #0x9c
	b _0211FA80
_0211FA7C:
	add r1, r6, #0x74
_0211FA80:
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r6
	bl FUN_ov72_02120998
	ldr r5, _0211FB04 ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	bl  FUN_ov16_020f672c
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0x28]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_ov72_02120d00
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FADC: .word unk_0209A0E0
_0211FAE0: .word unk_0209A134
_0211FAE4: .word unk_02099E93
_0211FAE8: .word unk_020A1640
_0211FAEC: .word unk_0209A0FC
_0211FAF0: .word unk_0209A104
_0211FAF4: .word unk_0209A0D8
_0211FAF8: .word 0x00000808
_0211FAFC: .word unk_020A0640
_0211FB00: .word unk_0209A0AC
_0211FB04: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211f7a8

	arm_func_start FUN_ov72_0211fb08
FUN_ov72_0211fb08: ; 0x0211FB08
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #5
	cmpne r1, #6
	cmpne r1, #7
	ldmnefd sp!, {r3, pc}
	bl FUN_ov72_0211c5f0
	ldr r0, _0211FB34 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r3, pc}
_0211FB34: .word unk_0209F5C0
	arm_func_end FUN_ov72_0211fb08

	arm_func_start FUN_ov72_0211fb38
FUN_ov72_0211fb38: ; 0x0211FB38
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211FC28 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f5af0
	ldr r0, _0211FC2C ; =0x0209A070
	bl  FUN_ov16_020f6c58
	add r0, r4, #0x2a0
	mov r1, #0x23
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov72_0211c094
	ldr r0, _0211FC30 ; =0x0209AEC0
	bl FUN_020465fc
	add r0, r4, #0x214
	mov r1, #7
	bl  FUN_ov16_020f2fe4
	ldr r0, _0211FC34 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	bl FUN_ov72_02119f00
	mov r0, r4
	bl FUN_ov72_0211bef4
	ldrb r0, [r4, #0xc15]
	cmp r0, #0
	beq _0211FBAC
	bl  FUN_ov16_020f47fc
	mov r0, #4
	bl  FUN_ov16_020f3f60
_0211FBAC:
	ldr r0, _0211FC38 ; =0x0209A0E0
	ldrb r0, [r0]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _0211FC3C ; =0x0209A134
	ldr r0, [r4]
	cmp r0, #0
	beq _0211FBD8
	bl FUN_0201e078
	mov r0, #0
	str r0, [r4]
_0211FBD8:
	ldr r4, _0211FC40 ; =0x0209A104
	ldr r0, [r4]
	cmp r0, #0
	beq _0211FC08
	bl  FUN_ov131_02142804
	ldr r0, [r4]
	cmp r0, #0
	beq _0211FBFC
	bl FUN_0201e078
_0211FBFC:
	ldr r0, _0211FC40 ; =0x0209A104
	mov r1, #0
	str r1, [r0]
_0211FC08:
	ldr r4, _0211FC44 ; =0x0209A0FC
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0201e078
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_0211FC28: .word unk_0209F5C0
_0211FC2C: .word unk_0209A070
_0211FC30: .word unk_0209AEC0
_0211FC34: .word unk_02099F38
_0211FC38: .word unk_0209A0E0
_0211FC3C: .word unk_0209A134
_0211FC40: .word unk_0209A104
_0211FC44: .word unk_0209A0FC
	arm_func_end FUN_ov72_0211fb38

	arm_func_start FUN_ov72_0211fc48
FUN_ov72_0211fc48: ; 0x0211FC48
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #6
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r0, _0212000C ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f5ff4
	ldr r0, _02120010 ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	ldr r1, [r5, #0xc44]
	cmp r1, #0
	beq _0211FC94
	ldr r0, _02120014 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r4, [r5, #0xc44]
_0211FC94:
	mov r0, r5
	bl FUN_ov72_0211c660
	mov r0, r5
	bl FUN_ov72_02121984
	mov r4, #0
	ldr r0, [r5, #0xc]
	strb r4, [r5, #0xbe0]
	strb r4, [r5, #0xbe1]
	strb r4, [r5, #0xbe2]
	cmp r0, #0x18
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211FCC4: ; jump table
	b _0211FD28 ; case 0
	b _0211FD68 ; case 1
	b _0211FD88 ; case 2
	b _0211FDB8 ; case 3
	b _0211FDB8 ; case 4
	b _0211FDF0 ; case 5
	b _0211FE28 ; case 6
	b _0211FE4C ; case 7
	b _0211FE64 ; case 8
	b _0211FE64 ; case 9
	b _0211FE64 ; case 10
	b _0211FE58 ; case 11
	ldmfd sp!, {r3, r4, r5, pc} ; case 12
	b _0211FE70 ; case 13
	b _0211FE7C ; case 14
	b _0211FE88 ; case 15
	b _0211FE98 ; case 16
	b _0211FEA4 ; case 17
	b _0211FEB0 ; case 18
	b _0211FEE8 ; case 19
	b _0211FF20 ; case 20
	b _0211FF64 ; case 21
	b _0211FF9C ; case 22
	b _0211FFD4 ; case 23
	b _0211FF58 ; case 24
_0211FD28:
	mov r0, r5
	bl FUN_ov72_0211cc20
	ldr r3, _02120018 ; =0x02123290
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r4, _0212001C ; =0x0209A104
	mov r1, #2
	ldr r0, [r4]
	bl  FUN_ov131_02143f84
	ldr r0, [r4]
	mov r1, #1
	bl  FUN_ov131_02143f84
	ldmfd sp!, {r3, r4, r5, pc}
_0211FD68:
	mov r0, r5
	bl FUN_ov72_0211f36c
	ldr r1, _02120020 ; =0x02123294
	mov r0, r5
	mov r2, r4
	mov r3, #0x40
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0211FD88:
	mov r0, r5
	bl FUN_ov72_0211cf38
	ldrb r0, [r5, #0xc16]
	ldr r3, _02120024 ; =0x021232B8
	mov r1, #0
	cmp r0, #0
	ldrne r3, _02120028 ; =0x021232DC
	mov r0, r5
	mov r2, #8
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldmfd sp!, {r3, r4, r5, pc}
_0211FDB8:
	mov r0, r5
	bl FUN_ov72_0211d690
	ldr r3, _0212002C ; =0x021232F8
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r1, _02120030 ; =0x021232FC
	mov r0, r5
	mov r2, r4
	mov r3, #0x40
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0211FDF0:
	mov r0, r5
	bl FUN_ov72_0211d4ac
	ldr r3, _02120034 ; =0x02123318
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r1, _02120038 ; =0x0212331C
	mov r0, r5
	mov r2, r4
	mov r3, #0x38
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE28:
	mov r0, r5
	mov r1, #1
	bl FUN_ov72_0211d7c0
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r4, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE4C:
	mov r0, r5
	bl FUN_ov72_0211de38
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE58:
	mov r0, r5
	bl FUN_ov72_0211de38
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE64:
	mov r0, r5
	bl FUN_ov72_0211e0bc
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE70:
	mov r0, r5
	bl FUN_ov72_0211e3b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE7C:
	mov r0, r5
	bl FUN_ov72_0211e9d4
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE88:
	mov r0, r5
	mov r1, #1
	bl FUN_ov72_0211ebc0
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE98:
	mov r0, r5
	bl FUN_ov72_0211f054
	ldmfd sp!, {r3, r4, r5, pc}
_0211FEA4:
	mov r0, r5
	bl FUN_ov72_0211ee84
	ldmfd sp!, {r3, r4, r5, pc}
_0211FEB0:
	mov r0, r5
	bl FUN_ov72_0211d5fc
	ldr r3, _0212003C ; =0x02123340
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r1, _02120040 ; =0x02123344
	mov r0, r5
	mov r2, r4
	mov r3, #0x40
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0211FEE8:
	mov r0, r5
	bl FUN_ov72_0211d5fc
	ldr r3, _02120044 ; =0x0212336C
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r1, _02120048 ; =0x02123370
	mov r0, r5
	mov r2, r4
	mov r3, #0x40
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0211FF20:
	mov r0, r5
	bl FUN_ov72_0211d5fc
	ldr r3, _0212004C ; =0x02123390
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r1, _02120050 ; =0x02123394
	mov r0, r5
	mov r2, r4
	mov r3, #0x38
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0211FF58:
	mov r0, r5
	bl FUN_ov72_0211d2f0
	ldmfd sp!, {r3, r4, r5, pc}
_0211FF64:
	mov r0, r5
	bl FUN_ov72_0211e340
	ldr r3, _02120054 ; =0x021233E0
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r1, _02120058 ; =0x021233E4
	mov r0, r5
	mov r2, r4
	mov r3, #0x40
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0211FF9C:
	mov r0, r5
	bl FUN_ov72_0211d438
	ldr r3, _0212005C ; =0x0212340C
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r1, _02120060 ; =0x02123410
	mov r0, r5
	mov r2, r4
	mov r3, #0x40
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0211FFD4:
	mov r0, r5
	bl FUN_ov72_0211d438
	ldr r3, _02120064 ; =0x0212343C
	mov r0, r5
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0x1e8]
	bl FUN_ov72_0211c6e4
	ldr r1, _02120068 ; =0x02123440
	mov r0, r5
	mov r2, r4
	mov r3, #0x40
	bl FUN_ov72_02121844
	ldmfd sp!, {r3, r4, r5, pc}
_0212000C: .word unk_0209F5C0
_02120010: .word unk_0209A070
_02120014: .word unk_02099F38
_02120018: .word ov72_02123290
_0212001C: .word unk_0209A104
_02120020: .word ov72_02123294
_02120024: .word ov72_021232B8
_02120028: .word ov72_021232DC
_0212002C: .word ov72_021232F8
_02120030: .word ov72_021232FC
_02120034: .word ov72_02123318
_02120038: .word ov72_0212331C
_0212003C: .word ov72_02123340
_02120040: .word ov72_02123344
_02120044: .word ov72_0212336C
_02120048: .word ov72_02123370
_0212004C: .word ov72_02123390
_02120050: .word ov72_02123394
_02120054: .word ov72_021233E0
_02120058: .word ov72_021233E4
_0212005C: .word ov72_0212340C
_02120060: .word ov72_02123410
_02120064: .word ov72_0212343C
_02120068: .word ov72_02123440
	arm_func_end FUN_ov72_0211fc48

	arm_func_start FUN_ov72_0212006c
FUN_ov72_0212006c: ; 0x0212006C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldr r7, [r9, #0x68]
	mov r0, #0
	cmp r1, #0
	mov r6, #1
	strne r0, [r9, #0x68]
	mov r0, r9
	mov r5, #6
	ldr r11, _02120974 ; =0x0209A070
	ldr r10, _02120978 ; =0x0209F5C0
	str r6, [r9, #0x6c]
	str r1, [r9, #0xc]
	bl FUN_ov72_0211fc48
	mov r8, #0
	mov r0, r9
	mov r1, r8
	bl FUN_ov72_0211a4e0
	ldr r0, [r9, #0xc]
	str r6, [r9, #0xbec]
	cmp r0, #0x18
	bhi _02120950
	mov r4, #0x1c
	add pc, pc, r0, lsl #2
	mov r0, r0
	b _02120134
_021200D4:
	b _02120208
	b _02120238
	b _02120680
	b _02120680
	b _02120290
	b _02120334
	b _02120454
	b _021204F4
	b _021204F4
	b _021204F4
	b _021204C0
	b _02120950
	b _02120534
	b _021206D4
	b _0212078C
	b _02120800
	b _02120818
	b _02120830
	b _02120834
	b _02120838
	b _0212089C
	b _02120948
	b _0212094C
	b _0212083C
_02120134:
	mov r4, #3
	mov r0, r10
	mov r1, r8
	mov r2, #5
	str r4, [r9, #0x6c]
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #8
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0xb
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x1d
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #4
	bl  FUN_ov16_020f60f8
	mov r2, r4
	mov r0, r10
	mov r1, r8
	bl  FUN_ov16_020f60f8
	ldr r0, [r9, #0x68]
	cmp r0, #0
	beq _021201BC
	cmp r0, #1
	beq _021201CC
	cmp r0, #2
	beq _021201DC
	b _021201EC
_021201BC:
	mov r0, r10
	mov r1, r8
	mov r2, #6
	b _021201E8
_021201CC:
	mov r0, r10
	mov r1, r8
	mov r2, #9
	b _021201E8
_021201DC:
	mov r0, r10
	mov r1, r8
	mov r2, #0xc
_021201E8:
	bl  FUN_ov16_020f60f8
_021201EC:
	ldr r1, [r9, #0x68]
	ldr r0, _02120974 ; =0x0209A070
	add r1, r1, #1
	add r1, r9, r1
	ldrb r1, [r1, #0x1f0]
	mov r2, #1
_02120204:
	b _0212032C
_02120208:
	ldr r0, _02120978 ; =0x0209F5C0
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_020f60f8
	mov r3, #2
	ldr r2, _0212097C ; =0x0212346C
	mov r0, r9
	mov r1, #0xa
	str r3, [r9, #0x6c]
	str r5, [r9, #0xbec]
	bl FUN_ov72_0211a464
	b _02120958
_02120238:
	mov r0, r10
	mov r1, r8
	mov r2, #0xe
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x20
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #3
	bl  FUN_ov16_020f60f8
	ldr r0, _02120974 ; =0x0209A070
	str r6, [sp]
	mov r1, r8
	mov r2, #0xf
	mov r3, r8
	bl  FUN_ov16_020f6c8c
	strb r0, [r9, #0x1f4]
	str r8, [r9, #0x444]
	str r8, [r9, #0x450]
	b _02120958
_02120290:
	mov r0, r10
	mov r1, r8
	mov r2, #0xe
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x20
	bl  FUN_ov16_020f60f8
_021202B0:
	mov r0, r10
	mov r1, r8
	mov r2, #0x18
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #3
	bl  FUN_ov16_020f60f8
	mov r4, #2
	str r4, [sp]
	mov r0, r11
	mov r1, r8
	mov r2, #0x1a
	mov r3, #0x19
	bl  FUN_ov16_020f6c8c
	strb r0, [r9, #0x1f5]
	mov r1, r8
	str r4, [sp]
	mov r0, r11
	mov r2, #0x1c
	mov r3, #0x1b
	bl  FUN_ov16_020f6c8c
	ldr r1, [r9, #0x68]
	strb r0, [r9, #0x1f6]
	add r1, r1, #5
	str r4, [r9, #0x6c]
	str r5, [r9, #0xbec]
	add r1, r9, r1
	ldrb r1, [r1, #0x1f0]
	mov r2, r6
	mov r0, r11
_0212032C:
	bl  FUN_ov16_020f6e8c
	b _02120958
_02120334:
	mov r0, r10
	mov r1, r8
	mov r2, #0x37
	bl  FUN_ov16_020f6084
	mov r0, r10
	mov r1, r8
	mov r2, #0x39
	bl  FUN_ov16_020f6084
	mov r0, r10
	mov r1, r8
	mov r2, #0x36
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x38
	bl  FUN_ov16_020f60f8
	mov r2, r6
	mov r0, r10
	mov r1, r8
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x30
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x31
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x32
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x33
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x34
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x35
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x46
	bl  FUN_ov16_020f60f8
	ldr r0, _02120980 ; =0x0209A134
	mov r1, r4
	ldr r2, [r0]
	ldrb r3, [r9, #0xbe5]
	ldrb r2, [r2, #0x3ac]
	str r2, [r9, #0x6c]
	str r1, [r9, #0x74]
	ldr r1, [r0]
	mov r2, r1
	b _0212043C
_0212041C:
	ldrb r0, [r2, #0x6f]
	cmp r0, #0
	bne _02120434
	cmp r3, #0
	beq _0212044C
	sub r3, r3, #1
_02120434:
	add r8, r8, #1
	add r2, r2, #0xbc
_0212043C:
	ldrb r0, [r1, #0x3ad]
	cmp r8, r0
	blt _0212041C
	mov r2, #0
_0212044C:
	str r2, [r9, #0x90]
	b _02120958
_02120454:
	mov r0, r10
	mov r1, r8
	mov r2, #0x37
	bl  FUN_ov16_020f6084
	mov r0, r10
	mov r1, r8
	mov r2, #0x39
	bl  FUN_ov16_020f6084
	mov r0, r10
	mov r1, r8
	mov r2, #0x36
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x38
	bl  FUN_ov16_020f60f8
	mov r2, r6
	mov r0, r10
	mov r1, r8
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x30
	bl  FUN_ov16_020f60f8
	str r5, [r9, #0xbec]
	mov r0, #0xa
	b _02120954
_021204C0:
	mov r0, r10
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x30
	bl  FUN_ov16_020f60f8
	mov r1, #0xa
	sub r0, r1, #0xb
	str r1, [r9, #0x6c]
	str r0, [r9, #0xbec]
	b _02120958
_021204F4:
	mov r0, r10
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x30
	bl  FUN_ov16_020f60f8
	ldrb r0, [r9, #0xc16]
	mov r1, #2
	str r1, [r9, #0x6c]
	cmp r0, #0
	movne r1, #0xa
	ldr r2, _02120984 ; =0x021234A4
	mov r0, r9
	b _02120934
_02120534:
	ldr r0, [r9, #0xbf8]
	cmp r0, #0
	bne _021205C4
	mov r0, r10
	mov r1, r8
	mov r2, #5
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #8
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0xb
	bl  FUN_ov16_020f60f8
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _021205BC
_0212057C: ; jump table
	b _0212058C ; case 0
	b _0212059C ; case 1
	b _021205AC ; case 2
	b _021205BC ; case 3
_0212058C:
	mov r0, r10
	mov r1, r8
	mov r2, #6
	b _021205B8
_0212059C:
	mov r0, r10
	mov r1, r8
	mov r2, #9
	b _021205B8
_021205AC:
	mov r0, r10
	mov r1, r8
	mov r2, #0xc
_021205B8:
	bl  FUN_ov16_020f60f8
_021205BC:
	add r0, r7, #1
	b _0212066C
_021205C4:
	cmp r0, #0xe
	bne _02120680
	mov r0, r10
	mov r1, r8
	mov r2, #0x51
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x64
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x67
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x54
	bl  FUN_ov16_020f60f8
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _02120668
_02120618: ; jump table
	b _02120628 ; case 0
	b _02120638 ; case 1
	b _02120648 ; case 2
	b _02120658 ; case 3
_02120628:
	mov r0, r10
	mov r1, r8
	mov r2, #0x52
	b _02120664
_02120638:
	mov r0, r10
	mov r1, r8
	mov r2, #0x65
	b _02120664
_02120648:
	mov r0, r10
	mov r1, r8
	mov r2, #0x68
	b _02120664
_02120658:
	mov r0, r10
	mov r1, r8
	mov r2, #0x55
_02120664:
	bl  FUN_ov16_020f60f8
_02120668:
	add r0, r7, #0x1a
_0212066C:
	add r0, r9, r0
	ldrb r1, [r0, #0x1f0]
	ldr r0, _02120974 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
_02120680:
	ldr r0, _02120988 ; =0x020A0640
	mov r1, #0
	strb r1, [r0, #0xae]
	ldr r0, [r9, #0xc]
	cmp r0, #3
	bne _021206A8
	ldr r2, _0212098C ; =0x021234A8
	mov r0, r9
	mov r1, #8
	b _021206BC
_021206A8:
	cmp r0, #4
	bne _021206C0
	ldr r2, _02120990 ; =0x021234DC
	mov r0, r9
	mov r1, #0xa
_021206BC:
	bl FUN_ov72_0211a464
_021206C0:
	ldr r0, _02120978 ; =0x0209F5C0
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_020f60f8
	b _02120958
_021206D4:
	mov r0, r10
	mov r1, r8
	mov r2, #0x51
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x64
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x67
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x54
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x1d
	bl  FUN_ov16_020f60f8
	ldr r0, [r9, #0x68]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02120784
_02120734: ; jump table
	b _02120744 ; case 0
	b _02120754 ; case 1
	b _02120764 ; case 2
	b _02120774 ; case 3
_02120744:
	mov r0, r10
	mov r1, r8
	mov r2, #0x52
	b _02120780
_02120754:
	mov r0, r10
	mov r1, r8
	mov r2, #0x65
	b _02120780
_02120764:
	mov r0, r10
	mov r1, r8
	mov r2, #0x68
	b _02120780
_02120774:
	mov r0, r10
	mov r1, r8
	mov r2, #0x55
_02120780:
	bl  FUN_ov16_020f60f8
_02120784:
	mov r0, #4
	b _02120954
_0212078C:
	mov r0, r10
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x30
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x31
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x32
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x33
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #0x46
	bl  FUN_ov16_020f60f8
	mov r0, #0xa
	str r0, [r9, #0x6c]
	mov r0, r4
	str r0, [r9, #0x74]
	b _02120958
_02120800:
	ldr r0, _02120978 ; =0x0209F5C0
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_020f60f8
	mov r0, #2
	b _02120954
_02120818:
	ldr r0, _02120978 ; =0x0209F5C0
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_020f60f8
	str r6, [r9, #0x6c]
	b _02120958
_02120830:
	b _021202B0
_02120834:
	b _021202B0
_02120838:
	b _021202B0
_0212083C:
	mov r4, #2
	mov r0, r11
	mov r1, r8
	str r4, [sp]
	mov r2, #0x1a
	mov r3, #0x19
	bl  FUN_ov16_020f6c8c
	strb r0, [r9, #0x1f5]
	mov r0, r11
	mov r1, r8
	str r4, [sp]
	mov r2, #0x1c
	mov r3, #0x1b
	bl  FUN_ov16_020f6c8c
	ldr r1, [r9, #0x68]
	strb r0, [r9, #0x1f6]
	add r1, r1, #5
	str r4, [r9, #0x6c]
	str r5, [r9, #0xbec]
	add r0, r9, r1
	ldrb r1, [r0, #0x1f0]
	mov r0, r11
	mov r2, r6
	b _02120204
_0212089C:
	mov r0, r10
	mov r1, r8
	mov r2, #0x18
	bl  FUN_ov16_020f60f8
	mov r0, r10
	mov r1, r8
	mov r2, #3
	bl  FUN_ov16_020f60f8
	mov r7, #2
	str r7, [sp]
	mov r0, r11
	mov r1, r8
	mov r2, #0x1a
	mov r3, #0x19
	bl  FUN_ov16_020f6c8c
	strb r0, [r9, #0x1f5]
	mov r1, r8
	str r7, [sp]
	mov r0, r11
	mov r2, r4
	mov r3, #0x1b
	bl  FUN_ov16_020f6c8c
	ldr r1, [r9, #0x68]
	strb r0, [r9, #0x1f6]
	add r1, r1, #5
	str r5, [r9, #0xbec]
	str r7, [r9, #0x6c]
	add r1, r9, r1
	ldrb r1, [r1, #0x1f0]
	mov r2, r6
	mov r0, r11
	bl  FUN_ov16_020f6e8c
	ldrb r0, [r9, #0xc16]
	ldr r2, _02120994 ; =0x02123518
	cmp r0, #0
	movne r7, #0xa
	mov r0, r9
	mov r1, r7
_02120934:
	bl FUN_ov72_0211a464
	mov r0, #4
	str r4, [r9, #0x74]
	strb r0, [r9, #0x8d]
	b _02120958
_02120948:
	b _021202B0
_0212094C:
	b _021202B0
_02120950:
	mov r0, #1
_02120954:
	str r0, [r9, #0x6c]
_02120958:
	mov r4, #0
	ldr r0, _02120978 ; =0x0209F5C0
	mov r1, r4
	mov r2, #2
	bl  FUN_ov16_020f60f8
	str r4, [r9, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120974: .word unk_0209A070
_02120978: .word unk_0209F5C0
_0212097C: .word ov72_0212346C
_02120980: .word unk_0209A134
_02120984: .word ov72_021234A4
_02120988: .word unk_020A0640
_0212098C: .word ov72_021234A8
_02120990: .word ov72_021234DC
_02120994: .word ov72_02123518
	arm_func_end FUN_ov72_0212006c

	arm_func_start FUN_ov72_02120998
FUN_ov72_02120998: ; 0x02120998
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0xc]
	mov r4, #0
	cmp r1, #0x13
	addls pc, pc, r1, lsl #2
	b _02120CD4
_021209B4: ; jump table
	b _02120A04 ; case 0
	b _02120CD4 ; case 1
	b _02120A0C ; case 2
	b _02120CD4 ; case 3
	b _02120CD4 ; case 4
	b _02120A3C ; case 5
	b _02120B80 ; case 6
	b _02120BE4 ; case 7
	b _02120CD4 ; case 8
	b _02120CD4 ; case 9
	b _02120CD4 ; case 10
	b _02120C10 ; case 11
	b _02120CD4 ; case 12
	b _02120CD4 ; case 13
	b _02120CA0 ; case 14
	b _02120CA4 ; case 15
	b _02120CD4 ; case 16
	b _02120CD4 ; case 17
	b _02120CD4 ; case 18
	b _02120CD4 ; case 19
_02120A04:
	bl FUN_ov72_0211e97c
	b _02120CD4
_02120A0C:
	ldrb r0, [r7, #0xc16]
	cmp r0, #0
	ldrne r0, [r7, #0x444]
	cmpne r0, #0x258
	ble _02120A3C
	ldr r0, _02120CE8 ; =0x0209A104
	ldr r0, [r0]
_02120A28:
	bl  FUN_ov131_02142804
	mov r0, r7
	mov r1, #4
_02120A34:
	bl FUN_ov72_0212006c
	b _02120CD4
_02120A3C:
	mov r6, #0
	ldr r2, _02120CEC ; =0x0212351C
	mov r0, r7
	mov r1, r6
	bl FUN_ov72_0211a464
	ldr r5, _02120CF0 ; =0x0209F5C0
	b _02120A98
_02120A58:
	ldr r1, [r7, #0x444]
	add r2, r6, #0x10
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r0, r1, r0, ror #29
	cmp r6, r0
	mov r0, r5
	mov r1, r4
	bne _02120A90
	bl  FUN_ov16_020f60f8
	b _02120A94
_02120A90:
	bl  FUN_ov16_020f6084
_02120A94:
	add r6, r6, #1
_02120A98:
	cmp r6, #8
	blt _02120A58
	ldr r0, [r7, #0x444]
	mov r4, #0
	add r0, r0, #1
	ldr r5, _02120CE8 ; =0x0209A104
	strb r4, [r7, #0x8c]
	str r4, [r7, #0x88]
	strb r4, [r7, #0x98]
	strb r4, [r7, #0x99]
	str r0, [r7, #0x444]
	ldr r0, [r5]
	add r1, sp, #0
	bl  FUN_ov131_02142844
	cmp r0, #1
	bne _02120B34
	ldr r0, [sp]
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x8c]
	ldr r0, [sp]
	add r0, r0, #0x1c
	str r0, [r7, #0x88]
	ldr r0, [sp]
	ldrb r0, [r0, #0xd1]
	tst r0, #1
	movne r4, #1
	strb r4, [r7, #0x98]
	ldr r0, [sp]
	ldrb r0, [r0, #0xd1]
	tst r0, #2
	movne r1, #1
	moveq r1, #0
	ldrb r0, [r7, #0xc16]
	strb r1, [r7, #0x99]
	cmp r0, #0
	beq _02120CD4
	mov r0, r7
	bl FUN_ov72_021219f0
	b _02120CD4
_02120B34:
	sub r1, r4, #1
	cmp r0, r1
	bne _02120B54
	ldr r0, [r5]
	bl  FUN_ov131_02142804
	mov r0, r7
	mov r1, #3
	b _02120A34
_02120B54:
	ldrb r0, [r7, #0xc16]
	cmp r0, #0
	ldrne r0, [r7, #0x444]
	cmpne r0, #0
	beq _02120CD4
	ldr r0, _02120CF4 ; =0x0209AEC0
	bl FUN_02046698
	cmp r0, #0
	bne _02120CD4
	ldr r0, [r5]
	b _02120A28
_02120B80:
	ldr r0, _02120CF8 ; =0x0209A070
	mov r1, #2
	bl  FUN_ov16_020f6f38
	cmp r0, #0
	strgeb r0, [r7, #0xbe5]
	ldr r0, _02120CFC ; =0x0209A134
	ldrb r2, [r7, #0xbe5]
	ldr r1, [r0]
	mov r3, #0
	mov r4, r1
	b _02120BCC
_02120BAC:
	ldrb r0, [r4, #0x6f]
	cmp r0, #0
	bne _02120BC4
	cmp r2, #0
	beq _02120BDC
	sub r2, r2, #1
_02120BC4:
	add r3, r3, #1
	add r4, r4, #0xbc
_02120BCC:
	ldrb r0, [r1, #0x3ad]
	cmp r3, r0
	blt _02120BAC
	mov r4, #0
_02120BDC:
	str r4, [r7, #0x90]
	b _02120CD4
_02120BE4:
	ldr r0, _02120CF8 ; =0x0209A070
	mov r1, #2
	bl  FUN_ov16_020f6f38
	cmp r0, #0
	strgeb r0, [r7, #0xbe3]
	ldrb r1, [r7, #0xbe3]
	mov r0, r7
	mov r2, #0
	bl FUN_ov72_02121b68
	str r0, [r7, #0x90]
	b _02120CD4
_02120C10:
	ldr r2, [r7, #0xbe8]
	add r1, r2, #1
	str r1, [r7, #0xbe8]
	cmp r2, #0xa
	ble _02120CD4
	ldr r1, _02120CFC ; =0x0209A134
	str r4, [r7, #0xbe8]
	ldr r3, [r1]
	ldr r2, [r3, #0x3b0]
	ldrb r1, [r2, #0x75]
	cmp r1, #0
	beq _02120C84
	cmp r2, #0
	beq _02120C50
	add r1, r2, #0x9e
	bl FUN_ov72_021223a8
_02120C50:
	ldr r0, [r7, #4]
	bl FUN_02042054
	cmp r0, #0x79
	beq _02120C78
	mov r0, #6
	bl  FUN_ov16_020f1528
	ldr r0, [r7, #4]
	mov r1, #1
	mov r2, #0x79
	bl FUN_02041ef0
_02120C78:
	mov r0, r7
	mov r1, #0x13
	b _02120A34
_02120C84:
	ldrb r1, [r3, #0x3ac]
	cmp r1, #0
	beq _02120C98
	mov r1, #6
	b _02120A34
_02120C98:
	mov r1, #0x15
	b _02120A34
_02120CA0:
	b _02120A04
_02120CA4:
	ldr r0, _02120CF8 ; =0x0209A070
	mov r1, #2
	bl  FUN_ov16_020f6f38
	cmp r0, #0
	strgeb r0, [r7, #0xbe3]
	ldrb r1, [r7, #0xbe3]
	mov r0, r7
	mov r2, #0
	bl FUN_ov72_02121b68
	ldr r1, [r7, #0x68]
	str r0, [r7, #0x90]
	str r1, [r7, #0xbf0]
_02120CD4:
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x68]
	add r0, r7, r0
	strb r1, [r0, #0xbfc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120CE8: .word unk_0209A104
_02120CEC: .word ov72_0212351C
_02120CF0: .word unk_0209F5C0
_02120CF4: .word unk_0209AEC0
_02120CF8: .word unk_0209A070
_02120CFC: .word unk_0209A134
	arm_func_end FUN_ov72_02120998

	arm_func_start FUN_ov72_02120d00
FUN_ov72_02120d00: ; 0x02120D00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	ldr r1, [r9, #0x28]
	ldr r5, _02121818 ; =0x0209A104
	ldr r6, _0212181C ; =0x020A1640
	ldr r4, _02121820 ; =0x0209A134
	mov r10, #2
	cmp r1, #0x69
	mov r7, #1
	mov r8, #0
	addls pc, pc, r1, lsl #2
	b _0212180C
_02120D34: ; jump table
	b _0212180C ; case 0
	b _0212180C ; case 1
	b _0212180C ; case 2
	b _0212180C ; case 3
	b _0212180C ; case 4
	b _02120EDC ; case 5
	b _02120EDC ; case 6
	b _02120EDC ; case 7
	b _02120EE4 ; case 8
	b _02120EE4 ; case 9
	b _02120EE4 ; case 10
	b _02120F0C ; case 11
	b _02120F0C ; case 12
	b _02120F0C ; case 13
	b _0212180C ; case 14
	b _02121020 ; case 15
	b _0212180C ; case 16
	b _0212180C ; case 17
	b _0212180C ; case 18
	b _0212180C ; case 19
	b _0212180C ; case 20
	b _0212180C ; case 21
	b _0212180C ; case 22
	b _0212180C ; case 23
	b _0212180C ; case 24
	b _0212180C ; case 25
	b _02121054 ; case 26
	b _0212180C ; case 27
	b _02121260 ; case 28
	b _02121610 ; case 29
	b _02121610 ; case 30
	b _02121688 ; case 31
	b _0212180C ; case 32
	b _021213E4 ; case 33
	b _0212180C ; case 34
	b _0212180C ; case 35
	b _021213E4 ; case 36
	b _0212180C ; case 37
	b _0212180C ; case 38
	b _021213E4 ; case 39
	b _0212180C ; case 40
	b _0212180C ; case 41
	b _021213E4 ; case 42
	b _0212180C ; case 43
	b _0212180C ; case 44
	b _021213E4 ; case 45
	b _0212180C ; case 46
	b _0212180C ; case 47
	b _0212180C ; case 48
	b _0212180C ; case 49
	b _0212180C ; case 50
	b _0212180C ; case 51
	b _0212180C ; case 52
	b _0212180C ; case 53
	b _02121484 ; case 54
	b _02121484 ; case 55
	b _021213A4 ; case 56
	b _021213A4 ; case 57
	b _021216CC ; case 58
	b _021216CC ; case 59
	b _0212180C ; case 60
	b _0212180C ; case 61
	b _021217B4 ; case 62
	b _021217B4 ; case 63
	b _0212180C ; case 64
	b _0212180C ; case 65
	b _0212178C ; case 66
	b _0212178C ; case 67
	b _0212180C ; case 68
	b _0212180C ; case 69
	b _0212180C ; case 70
	b _021213E4 ; case 71
	b _021213E4 ; case 72
	b _021213E4 ; case 73
	b _021213E4 ; case 74
	b _021213E4 ; case 75
	b _021213E4 ; case 76
	b _021213E4 ; case 77
	b _021213E4 ; case 78
	b _021213E4 ; case 79
	b _021213E4 ; case 80
	b _02120F14 ; case 81
	b _0212180C ; case 82
	b _02120F14 ; case 83
	b _02120FF0 ; case 84
	b _0212180C ; case 85
	b _02120FF0 ; case 86
	b _02121484 ; case 87
	b _02121484 ; case 88
	b _02121610 ; case 89
	b _02121610 ; case 90
	b _0212180C ; case 91
	b _0212180C ; case 92
	b _0212180C ; case 93
	b _0212180C ; case 94
	b _0212180C ; case 95
	b _0212180C ; case 96
	b _0212180C ; case 97
	b _0212180C ; case 98
	b _0212180C ; case 99
	b _02120F14 ; case 100
	b _0212180C ; case 101
	b _02120F14 ; case 102
	b _02120F14 ; case 103
	b _0212180C ; case 104
	b _02120F14 ; case 105
_02120EDC:
	mov r1, #0xe
	b _02120FA4
_02120EE4:
	bl FUN_ov72_02122310
	bics r0, r0, #3
	str r0, [r9, #0xbf4]
	mov r0, r9
	beq _02120F04
	mov r1, #0xd
	str r8, [r9, #0xbf8]
	b _02120FA4
_02120F04:
	bl FUN_ov72_0211a1d8
	b _0212180C
_02120F0C:
	bl FUN_ov72_0211a224
	b _0212180C
_02120F14:
	cmp r1, #0x64
	ldr r4, _02121824 ; =0x0209A0FC
	mov r0, r10
	bgt _02120F48
	cmp r1, #0x64
	bge _02120F6C
	cmp r1, #0x53
	bgt _02120F70
	cmp r1, #0x51
	blt _02120F70
	cmpne r1, #0x53
	streqb r8, [r6, #0x22]
	b _02120F70
_02120F48:
	cmp r1, #0x69
	bgt _02120F70
	cmp r1, #0x66
	blt _02120F70
	beq _02120F6C
	cmp r1, #0x67
	cmpne r1, #0x69
	streqb r0, [r6, #0x22]
	b _02120F70
_02120F6C:
	strb r7, [r6, #0x22]
_02120F70:
	ldr r0, _02121828 ; =0x02099F44
	ldrb r1, [r6, #0x22]
	ldr r0, [r0]
	bl  FUN_ov131_021421f4
	mov r0, r9
	bl FUN_ov72_02122310
	bics r0, r0, #4
	str r0, [r9, #0xbf4]
	beq _02120FAC
_02120F94:
	mov r2, #0xe
	mov r0, r9
	mov r1, #0xd
	str r2, [r9, #0xbf8]
_02120FA4:
	bl FUN_ov72_0212006c
	b _0212180C
_02120FAC:
	ldr r0, [r6, #0x230]
	ldr r1, [r4]
	add r0, r0, #0x1e8
	add r0, r0, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	strb r7, [r9, #0xc48]
	ldr r0, [r5]
	mov r1, #0
	bl  FUN_ov131_021426e8
	ldr r0, [r5]
	mov r1, r7
	bl  FUN_ov131_02143f70
	mov r0, r9
	mov r1, #0x12
	bl FUN_ov72_0212006c
	b _0212180C
_02120FF0:
	ldr r0, [r5]
	mov r1, r7
	bl  FUN_ov131_02143f84
	mov r0, r9
	strb r8, [r9, #0xc48]
	bl FUN_ov72_02122310
	bics r0, r0, #3
	str r0, [r9, #0xbf4]
	beq _02121018
	b _02120F94
_02121018:
	mov r0, r9
	b _021212D4
_02121020:
	ldrb r1, [r9, #0xc16]
	sub r2, r8, #1
	str r8, [r9, #0x28]
	str r2, [r9, #0x68]
	cmp r1, #0
	bne _02121040
	mov r1, #5
	b _02120FA4
_02121040:
	ldr r0, [r5]
	bl  FUN_ov131_02142804
	mov r0, r9
	mov r1, #4
	b _02120FA4
_02121054:
	ldr r2, [r9, #0xc]
	ldr r1, _02121824 ; =0x0209A0FC
	cmp r2, #5
	bne _0212106C
	bl FUN_ov72_021219f0
	b _0212180C
_0212106C:
	cmp r2, #8
	bne _0212107C
	mov r1, #9
	b _02120FA4
_0212107C:
	cmp r2, #9
	bne _021210A4
_02121084:
	bl FUN_ov72_02121f34
	mov r0, r9
	bl FUN_ov72_0211a184
	mov r0, r9
	mov r1, #0xc
	bl FUN_ov72_0212006c
	strb r8, [r9, #0x8d]
	b _0212180C
_021210A4:
	cmp r2, #0xa
	bne _021210B4
_021210AC:
	bl FUN_ov72_0211a11c
	b _0212180C
_021210B4:
	cmp r2, #0x10
	bne _021210D0
	ldr r0, [r6, #0x230]
	ldr r1, _02121824 ; =0x0209A0FC
	add r0, r0, #0x1e8
	ldr r1, [r1]
	b _021215AC
_021210D0:
	cmp r2, #1
	bne _02121110
	ldr r0, _0212182C ; =0x020A0640
	ldr r1, _02121824 ; =0x0209A0FC
	strb r7, [r0, #0xae]
	ldr r0, [r6, #0x230]
	ldr r1, [r1]
	add r0, r0, #0x1e8
	add r0, r0, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	ldr r0, [r5]
	mov r1, r10
	bl  FUN_ov131_021426e8
	mov r0, r9
	b _0212126C
_02121110:
	cmp r2, #0x11
	bne _0212111C
	b _021212D4
_0212111C:
	cmp r2, #0x12
	bne _02121158
	ldrb r0, [r9, #0xc48]
	cmp r0, #0
	ldrne r0, _02121830 ; =0x0209A0D8
	mvnne r1, #0
	ldreqb r1, [r9, #0xbe3]
	ldreq r0, _02121830 ; =0x0209A0D8
	strb r1, [r0]
	mov r0, r9
	mov r1, #3
	bl FUN_ov72_0211a3e4
	ldr r0, _02121834 ; =0x02099E91
	strb r8, [r0]
	b _0212180C
_02121158:
	cmp r2, #0x13
	bne _02121168
	mov r1, r10
	b _02121808
_02121168:
	cmp r2, #0x14
	bne _02121198
	ldr r0, [r9, #4]
	mov r1, r7
	bl FUN_02041f2c
	ldr r0, [r4]
	ldrb r0, [r0, #0x3ac]
	cmp r0, #0
	mov r0, r9
	beq _02121194
	b _021213DC
_02121194:
	b _021213C4
_02121198:
	cmp r2, #0x18
	bne _021211B0
	ldr r2, _0212182C ; =0x020A0640
	mov r1, r10
	strb r7, [r2, #0xae]
	b _02120FA4
_021211B0:
	cmp r2, #0x15
	bne _021211BC
	b _02121084
_021211BC:
	cmp r2, #0x16
	bne _02121200
	ldrb r1, [r9, #0xc16]
	cmp r1, #0
	bne _021211FC
	ldr r3, [r4]
	mov r2, r8
	mov r0, #0xbc
	b _021211F0
_021211E0:
	mla r1, r2, r0, r3
	strb r8, [r1, #0x6e]
	strb r8, [r1, #0x6f]
	add r2, r2, #1
_021211F0:
	cmp r2, #5
	blt _021211E0
	b _02121644
_021211FC:
	b _021210AC
_02121200:
	cmp r2, #0x17
	bne _0212180C
	ldr r0, [r6, #0x230]
	ldr r1, [r1]
	add r0, r0, #0x1e8
	add r0, r0, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	ldr r2, [r4]
	mov r3, r8
	mov r0, #0xbc
	b _02121240
_02121230:
	mla r1, r3, r0, r2
	strb r8, [r1, #0x6e]
	strb r8, [r1, #0x6f]
	add r3, r3, #1
_02121240:
	cmp r3, #5
	blt _02121230
	ldrb r1, [r2, #0x3ad]
	mov r0, r9
	strb r1, [r2, #0x3ac]
	mov r1, #6
	str r8, [r2, #0x3b0]
	b _02120FA4
_02121260:
	ldr r1, [r9, #0xc]
	cmp r1, #5
	bne _02121274
_0212126C:
	mov r1, r10
	b _02120FA4
_02121274:
	cmp r1, #8
	bne _02121280
	b _021212AC
_02121280:
	cmp r1, #0xa
	bne _021212A4
	ldr r1, [r4]
	ldrb r2, [r1, #0x3ac]
	ldrb r1, [r1, #0x3ad]
	cmp r2, r1
	beq _021212A0
	b _02121378
_021212A0:
	b _021213DC
_021212A4:
	cmp r1, #9
	bne _021212B4
_021212AC:
	mov r1, #0xa
	b _02120FA4
_021212B4:
	cmp r1, #0x10
	bne _021212C0
	b _021212D4
_021212C0:
	cmp r1, #1
	bne _021212CC
	b _021210AC
_021212CC:
	cmp r1, #0x11
	bne _021212DC
_021212D4:
	mov r1, #0xf
	b _02120FA4
_021212DC:
	cmp r1, #0x12
	bne _021212FC
	ldr r0, [r5]
	mov r1, r10
	bl  FUN_ov131_02143f84
	mov r0, r9
	mov r1, #0x18
	b _02120FA4
_021212FC:
	cmp r1, #0x13
	bne _0212130C
	mov r1, #0x14
	b _02120FA4
_0212130C:
	cmp r1, #0x14
	bne _0212131C
	mov r1, #0x13
	b _02120FA4
_0212131C:
	cmp r1, #0x18
	bne _02121350
	ldr r3, [r4]
	mov r2, r8
	mov r0, #0xbc
	b _02121344
_02121334:
	mla r1, r2, r0, r3
	strb r8, [r1, #0x6e]
	strb r8, [r1, #0x6f]
	add r2, r2, #1
_02121344:
	cmp r2, #5
	blt _02121334
	b _02121644
_02121350:
	cmp r1, #0x15
	bne _0212135C
	b _021213CC
_0212135C:
	cmp r1, #0x16
	bne _02121384
	ldr r1, [r4]
	ldrb r2, [r1, #0x3ac]
	ldrb r1, [r1, #0x3ad]
	cmp r2, r1
	beq _02121380
_02121378:
	mov r1, #0x17
	b _02120FA4
_02121380:
	b _021213DC
_02121384:
	cmp r1, #0x17
	bne _0212180C
	ldr r1, [r4]
	ldrb r1, [r1, #0x3ac]
	cmp r1, #0
	bne _021213A0
	b _021213C4
_021213A0:
	b _021213DC
_021213A4:
	ldr r1, [r9, #0xc]
	cmp r1, #6
	bne _021213D4
	ldr r1, [r4]
	ldrb r2, [r1, #0x3ac]
	ldrb r1, [r1, #0x3ad]
	cmp r2, r1
	beq _021213CC
_021213C4:
	mov r1, #0x15
	b _02120FA4
_021213CC:
	mov r1, #0x16
	b _02120FA4
_021213D4:
	cmp r1, #7
	bne _0212180C
_021213DC:
	mov r1, #6
	b _02120FA4
_021213E4:
	cmp r1, #0x21
	blt _02121404
	cmp r1, #0x2f
	bgt _02121404
	ldrb r1, [r9, #0xbe6]
	ldrb r0, [r9, #0xbe5]
	cmp r1, r0
	bne _0212180C
_02121404:
	ldr r0, [r9, #0x28]
	cmp r0, #0x47
	blt _02121470
	cmp r0, #0x50
	bgt _02121470
	ldrb r1, [r9, #0xbe4]
	ldrb r0, [r9, #0xbe3]
	cmp r1, r0
	bne _0212180C
	ldr r0, [r9, #0xc]
	cmp r0, #0xf
	bne _02121470
	ldr r0, [r9, #0x68]
	bl FUN_ov72_02119f50
	cmp r0, #0
	bne _02121470
	ldr r0, [r9, #0x68]
	bl FUN_ov72_0211a0a8
	cmp r0, #0
	beq _0212180C
_02121454:
	mov r0, r9
	mov r1, #0x11
	bl FUN_ov72_0212006c
	ldr r0, _02121838 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	b _0212180C
_02121470:
	ldr r1, [r9, #0xbec]
	cmp r1, #0
	blt _02121484
	ldr r0, _02121838 ; =0x0209AC44
	bl FUN_0202cf6c
_02121484:
	ldr r0, [r9, #0xc]
	ldr r10, _02121824 ; =0x0209A0FC
	cmp r0, #6
	bne _021214F4
	mov r0, r9
	mov r1, #7
	bl FUN_ov72_0212006c
	ldr r1, [r4]
	ldrb r2, [r9, #0xbe5]
	mov r5, r1
	mov r3, #0
	b _021214D4
_021214B4:
	ldrb r0, [r5, #0x6f]
	cmp r0, #0
	bne _021214CC
	cmp r2, #0
	beq _021214E4
	sub r2, r2, #1
_021214CC:
	add r3, r3, #1
	add r5, r5, #0xbc
_021214D4:
	ldrb r0, [r1, #0x3ad]
	cmp r3, r0
	blt _021214B4
	mov r5, #0
_021214E4:
	str r5, [r9, #0x94]
	ldr r0, [r4]
	str r5, [r0, #0x3b0]
	b _0212180C
_021214F4:
	cmp r0, #7
	bne _02121570
	ldr r0, [r4]
	ldr r5, [r0, #0x3b0]
	cmp r5, #0
	beq _02121560
	ldrb r1, [r9, #0xbe3]
	add r2, sp, #0
	mov r0, r9
	bl FUN_ov72_02121b68
	cmp r0, #0
	ldrneb r1, [sp]
	cmpne r1, #0
	beq _02121544
	strb r8, [r0, #0x6e]
	strb r8, [r0, #0x6f]
	ldr r1, [r4]
	ldrb r0, [r1, #0x3ac]
	add r0, r0, #1
	strb r0, [r1, #0x3ac]
_02121544:
	ldrb r0, [r9, #0xbe3]
	strb r0, [r5, #0x6e]
	strb r7, [r5, #0x6f]
	ldr r1, [r4]
	ldrb r0, [r1, #0x3ac]
	sub r0, r0, #1
	strb r0, [r1, #0x3ac]
_02121560:
	mov r0, r9
	mov r1, #0xb
	str r8, [r9, #0xbe8]
	b _02120FA4
_02121570:
	cmp r0, #0xf
	bne _0212180C
	ldr r0, [r9, #0x68]
	bl FUN_ov72_02119f50
	cmp r0, #0
	beq _021215FC
	ldrb r1, [r9, #0xbe3]
	mov r0, r9
	mov r2, r8
	bl FUN_ov72_02121b68
	cmp r0, #0
	beq _0212180C
	ldr r0, [r6, #0x230]
	ldr r1, [r10]
	add r0, r0, #0x1e8
_021215AC:
	add r0, r0, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	ldr r0, [r5]
	mov r1, r8
	bl  FUN_ov131_021426e8
	ldr r2, [r6, #0x230]
	ldrb r4, [r9, #0xbe3]
	add r1, r2, #0x58
	add r6, r2, #8
	ldr r0, _0212183C ; =0x00000808
	add r3, r1, #0x5000
	mov r2, #0x28
	mla r1, r4, r0, r6
	mla r2, r4, r2, r3
	ldr r0, [r5]
	bl  FUN_ov131_02142a50
	mov r0, r9
	mov r1, #0x12
	b _02120FA4
_021215FC:
	ldr r0, [r9, #0x68]
	bl FUN_ov72_0211a0a8
	cmp r0, #0
	beq _0212180C
	b _02121454
_02121610:
	ldr r1, [r9, #0xc]
	cmp r1, #0xe
	bne _0212165C
	ldr r3, [r4]
	mov r2, r8
	mov r0, #0xbc
	b _0212163C
_0212162C:
	mla r1, r2, r0, r3
	strb r8, [r1, #0x6e]
	strb r8, [r1, #0x6f]
	add r2, r2, #1
_0212163C:
	cmp r2, #5
	blt _0212162C
_02121644:
	ldrb r2, [r3, #0x3ad]
	mov r1, #0
	mov r0, r9
	strb r2, [r3, #0x3ac]
	str r1, [r3, #0x3b0]
	b _02120FA4
_0212165C:
	cmp r1, #0xf
	bne _02121684
	mov r1, #0xe
	bl FUN_ov72_0212006c
	ldr r0, [r9, #4]
	mov r1, r7
	mov r2, #0xf
	bl FUN_02041eac
	strb r8, [r9, #0x70]
	b _0212180C
_02121684:
	b _021210AC
_02121688:
	ldr r0, [r9, #0xc]
	cmp r0, #0xd
	bne _021216B0
	ldr r0, _02121840 ; =0x04000050
	mov r1, #0xf
	mov r2, r8
	bl G2x_SetBlendBrightness_
	ldr r1, [r9, #0xbf8]
	mov r0, r9
	b _02120FA4
_021216B0:
	cmp r0, #3
	beq _021216C0
	cmp r0, #4
	bne _0212180C
_021216C0:
	mov r0, r9
	mov r1, #1
	b _02120FA4
_021216CC:
	ldr r0, _02121838 ; =0x0209AC44
	mov r1, r7
	bl FUN_0202cf6c
	ldr r0, [r9, #0xc]
	cmp r0, #6
	bne _02121740
	ldr r1, [r4]
	ldrb r2, [r9, #0xbe5]
	mov r5, r1
	mov r3, r8
	b _02121718
_021216F8:
	ldrb r0, [r5, #0x6f]
	cmp r0, #0
	bne _02121710
	cmp r2, #0
	beq _02121728
	sub r2, r2, #1
_02121710:
	add r3, r3, #1
	add r5, r5, #0xbc
_02121718:
	ldrb r0, [r1, #0x3ad]
	cmp r3, r0
	blt _021216F8
	mov r5, #0
_02121728:
	ldr r2, [r4]
	mov r0, r9
	mov r1, #4
	str r5, [r2, #0x3b0]
_02121738:
	bl FUN_ov72_0211a270
	b _0212180C
_02121740:
	cmp r0, #0xf
	bne _0212180C
	ldr r0, [r6, #0x230]
	cmp r0, #0
	beq _0212180C
	ldr r1, [r4]
	add r0, r0, #0x58
	str r1, [r1, #0x3b0]
	ldrb r3, [r9, #0xbe3]
	ldr r1, [r4]
	add r0, r0, #0x5000
	mov r2, #0x28
	mla r0, r3, r2, r0
	ldr r1, [r1, #0x3b0]
	add r1, r1, #0x76
	bl MI_CpuCopy8
	mov r0, r9
	mov r1, #5
	b _02121738
_0212178C:
	ldr r0, _02121838 ; =0x0209AC44
	mov r1, r7
	bl FUN_0202cf6c
	ldr r0, [r9, #0xc]
	cmp r0, #0xf
	bne _0212180C
	mov r0, r9
	mov r1, #6
	bl FUN_ov72_0211a2d4
	b _0212180C
_021217B4:
	ldr r1, [r4]
	ldrb r2, [r9, #0xbe5]
	mov r5, r1
	mov r3, r8
	b _021217E8
_021217C8:
	ldrb r0, [r5, #0x6f]
	cmp r0, #0
	bne _021217E0
	cmp r2, #0
	beq _021217F8
	sub r2, r2, #1
_021217E0:
	add r3, r3, #1
	add r5, r5, #0xbc
_021217E8:
	ldrb r0, [r1, #0x3ad]
	cmp r3, r0
	blt _021217C8
	mov r5, #0
_021217F8:
	ldr r2, [r4]
	mov r0, r9
	mov r1, #1
	str r5, [r2, #0x3b0]
_02121808:
	bl FUN_ov72_0211a3e4
_0212180C:
	str r8, [r9, #0x28]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02121818: .word unk_0209A104
_0212181C: .word unk_020A1640
_02121820: .word unk_0209A134
_02121824: .word unk_0209A0FC
_02121828: .word unk_02099F44
_0212182C: .word unk_020A0640
_02121830: .word unk_0209A0D8
_02121834: .word unk_02099E91
_02121838: .word unk_0209AC44
_0212183C: .word 0x00000808
_02121840: .word 0x04000050
	arm_func_end FUN_ov72_02120d00

	arm_func_start FUN_ov72_02121844
FUN_ov72_02121844: ; 0x02121844
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r0, [r10, #0x45c]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	cmp r0, #0
	mov r6, #1
	bne _02121884
	ldr r0, _02121980 ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	mov r2, r6
	bl  FUN_ov16_02112724
	str r0, [r10, #0x45c]
_02121884:
	ldr r0, [r10, #0x458]
	ldr r5, [r10, #0x45c]
	cmp r0, #0
	bne _021218F0
	ldr r4, _02121980 ; =0x02099F38
	mov r1, #5
	ldr r0, [r4]
	mov r2, r1
	bl FUN_02059630
	mov r11, #0
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r10, #0x458]
	ldr r0, [r4]
	mov r2, r11
	mov r3, r11
	bl FUN_02059038
	mov r0, r9
	str r11, [sp]
	str r11, [sp, #4]
	str r11, [sp, #8]
	str r11, [sp, #0xc]
	mov r2, #1
	str r2, [sp, #0x10]
	ldr r1, [r10, #0x458]
	mov r3, r2
	bl  FUN_ov16_020f2304
_021218F0:
	mov r0, r7, lsl #0x18
	mov r0, r0, asr #0x18
	ldr r4, _02121980 ; =0x02099F38
	str r0, [sp]
	mov r3, r8, lsl #0x18
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x18
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0x458]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #0x100
	bl  FUN_ov16_02113d08
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_02113d88
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #0xd2
	bl  FUN_ov16_021139bc
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121980: .word unk_02099F38
	arm_func_end FUN_ov72_02121844

	arm_func_start FUN_ov72_02121984
FUN_ov72_02121984: ; 0x02121984
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _021219EC ; =0x02099F38
	b _021219C0
_0212199C:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x45c]
	cmp r1, #0
	beq _021219BC
	ldr r0, [r5]
	bl  FUN_ov16_021128c4
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x45c]
_021219BC:
	add r7, r7, #1
_021219C0:
	cmp r7, #0xb
	blt _0212199C
	ldr r1, [r4, #0x458]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021219EC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x458]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021219EC: .word unk_02099F38
	arm_func_end FUN_ov72_02121984

	arm_func_start FUN_ov72_021219f0
FUN_ov72_021219f0: ; 0x021219F0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02121A7C ; =0x0209A104
	mov r5, r0
	ldr r0, [r4]
	bl  FUN_ov131_02142804
	mov r0, r5
	bl FUN_ov72_02121bf8
	mov r0, r5
	bl FUN_ov72_02121d54
	mov r0, r5
	bl FUN_ov72_02122034
	ldr r0, [r4]
	ldr r1, _02121A80 ; =0x020A0640
	mov r4, #0
	strb r4, [r1, #0xae]
	bl  FUN_ov131_021429a8
	cmp r0, #0
	beq _02121A48
	mov r0, r5
	mov r1, #6
	bl FUN_ov72_0212006c
	ldmfd sp!, {r3, r4, r5, pc}
_02121A48:
	ldrb r0, [r5, #0xc16]
	cmp r0, #0
	mov r0, r5
	bne _02121A64
	mov r1, r4
	bl FUN_ov72_0212006c
	b _02121A68
_02121A64:
	bl FUN_ov72_0211a11c
_02121A68:
	ldr r0, _02121A84 ; =0x04000050
	mov r1, #0xf
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldmfd sp!, {r3, r4, r5, pc}
_02121A7C: .word unk_0209A104
_02121A80: .word unk_020A0640
_02121A84: .word 0x04000050
	arm_func_end FUN_ov72_021219f0

	arm_func_start FUN_ov72_02121a88
FUN_ov72_02121a88: ; 0x02121A88
	stmfd sp!, {r4, lr}
	ldr r1, _02121B64 ; =0x0209A134
	mov lr, #0
	ldr r12, [r1]
	mov r4, lr
	mvn r2, #0
	mov r1, #0xbc
_02121AA4:
	mul r3, lr, r1
	strb r4, [r12, r3]
	add r3, r12, r3
	strb r4, [r3, #0x18]
	strb r4, [r3, #0x48]
	strh r4, [r3, #0x4a]
	strb r4, [r3, #0x49]
	strh r4, [r3, #0x4c]
	strh r4, [r3, #0x4e]
	strh r2, [r3, #0x50]
	str r4, [r3, #0x70]
	strh r4, [r3, #0x52]
	strh r4, [r3, #0x54]
	strb r4, [r3, #0x56]
	strb r4, [r3, #0x74]
	strb r4, [r3, #0x75]
	strb r4, [r3, #0x6e]
	add lr, lr, #1
	strb r4, [r3, #0x6f]
	cmp lr, #5
	blt _02121AA4
	strb r4, [r12, #0x3ac]
	strb r4, [r12, #0x3ad]
	mov r12, #0
	mvn r3, #0
	mov r1, #0xbc
_02121B0C:
	mla lr, r4, r1, r0
	strb r12, [lr, #0x488]
	strb r12, [lr, #0x4a0]
	strb r12, [lr, #0x4d0]
	add r2, lr, #0x400
	strh r12, [r2, #0xd2]
	strb r12, [lr, #0x4d1]
	strh r12, [r2, #0xd4]
	strh r12, [r2, #0xd6]
	strh r3, [r2, #0xd8]
	str r12, [lr, #0x4f8]
	strh r12, [r2, #0xda]
	strh r12, [r2, #0xdc]
	strb r12, [lr, #0x4de]
	strb r12, [lr, #0x4fc]
	strb r12, [lr, #0x4fd]
	strb r12, [lr, #0x4f6]
	add r4, r4, #1
	strb r12, [lr, #0x4f7]
	cmp r4, #0xa
	blt _02121B0C
	ldmfd sp!, {r4, pc}
_02121B64: .word unk_0209A134
	arm_func_end FUN_ov72_02121a88

	arm_func_start FUN_ov72_02121b68
FUN_ov72_02121b68: ; 0x02121B68
	stmfd sp!, {r4, lr}
	cmp r2, #0
	movne r3, #0
	strneb r3, [r2]
	ldr r3, _02121BF4 ; =0x0209A134
	mov lr, #0
	ldr r4, [r3]
	ldrb r3, [r4, #0x3ad]
	mov r12, r4
	cmp r3, #0
	ble _02121BD4
_02121B94:
	ldrb r3, [r12, #0x6f]
	cmp r3, #0
	beq _02121BC0
	ldrb r3, [r12, #0x6e]
	cmp r3, r1
	bne _02121BC0
	cmp r2, #0
	movne r0, #1
	strneb r0, [r2]
	mov r0, r12
	ldmfd sp!, {r4, pc}
_02121BC0:
	ldrb r3, [r4, #0x3ad]
	add lr, lr, #1
	add r12, r12, #0xbc
	cmp lr, r3
	blt _02121B94
_02121BD4:
	add r0, r0, #0x88
	add r2, r0, #0x400
	mov r0, #0xbc
	mla r0, r1, r0, r2
	ldrb r1, [r0, #0x6f]
	cmp r1, #0
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_02121BF4: .word unk_0209A134
	arm_func_end FUN_ov72_02121b68

	arm_func_start FUN_ov72_02121bf8
FUN_ov72_02121bf8: ; 0x02121BF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r1, _02121D4C ; =0x0209A134
	mov r4, #0
	ldr r3, [r1]
	mov r10, r0
	mov r9, r4
	mvn r1, #0
	mov r0, #0xbc
_02121C18:
	mul r2, r4, r0
	strb r9, [r3, r2]
	add r2, r3, r2
	strb r9, [r2, #0x18]
	strb r9, [r2, #0x48]
	strh r9, [r2, #0x4a]
	strb r9, [r2, #0x49]
	strh r9, [r2, #0x4c]
	strh r9, [r2, #0x4e]
	strh r1, [r2, #0x50]
	str r9, [r2, #0x70]
	strh r9, [r2, #0x52]
	strh r9, [r2, #0x54]
	strb r9, [r2, #0x56]
	strb r9, [r2, #0x74]
	strb r9, [r2, #0x75]
	strb r9, [r2, #0x6e]
	add r4, r4, #1
	strb r9, [r2, #0x6f]
	cmp r4, #5
	blt _02121C18
	strb r9, [r3, #0x3ac]
	ldr r7, _02121D50 ; =0x0209A104
	strb r9, [r3, #0x3ad]
	ldr r0, [r7]
	bl  FUN_ov131_021429a8
	ldr r6, _02121D4C ; =0x0209A134
	ldr r1, [r6]
	strb r0, [r1, #0x3ad]
	ldr r0, [r7]
	bl  FUN_ov131_021429a8
	ldr r1, [r6]
	strb r0, [r1, #0x3ac]
	ldr r0, [r6]
	ldrb r0, [r0, #0x3ad]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0xbc
	mvn r8, #0
	mov r4, r5
	mov r11, r5
_02121CBC:
	ldr r0, [r7]
	mov r1, r9
	bl  FUN_ov131_021429b4
	movs r3, r0
	beq _02121CE4
	ldr r1, [r6]
	mov r0, r10
	mla r2, r9, r5, r1
	mov r1, r8
	bl FUN_ov72_02121e28
_02121CE4:
	ldr r0, [r7]
	mov r1, r9
	bl  FUN_ov131_021429e4
	cmp r0, #0
	beq _02121D0C
	ldr r1, [r6]
	mov r2, #0x28
	mla r1, r9, r4, r1
	add r1, r1, #0x76
	bl MI_CpuCopy8
_02121D0C:
	ldr r0, [r7]
	mov r1, r9
	bl  FUN_ov131_02142a1c
	cmp r0, #0
	beq _02121D34
	ldr r1, [r6]
	mov r2, #0x1c
	mla r1, r9, r11, r1
	add r1, r1, #0x9e
	bl MI_CpuCopy8
_02121D34:
	ldr r0, [r6]
	add r9, r9, #1
	ldrb r0, [r0, #0x3ad]
	cmp r9, r0
	blt _02121CBC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121D4C: .word unk_0209A134
_02121D50: .word unk_0209A104
	arm_func_end FUN_ov72_02121bf8

	arm_func_start FUN_ov72_02121d54
FUN_ov72_02121d54: ; 0x02121D54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r4, r0
	mov r12, r5
	mvn r2, #0
	mov r0, #0xbc
	b _02121DBC
_02121D70:
	mla r3, r5, r0, r4
	strb r12, [r3, #0x488]
	strb r12, [r3, #0x4a0]
	strb r12, [r3, #0x4d0]
	add r1, r3, #0x400
	strh r12, [r1, #0xd2]
	strb r12, [r3, #0x4d1]
	strh r12, [r1, #0xd4]
	strh r12, [r1, #0xd6]
	strh r2, [r1, #0xd8]
	str r12, [r3, #0x4f8]
	strh r12, [r1, #0xda]
	strh r12, [r1, #0xdc]
	strb r12, [r3, #0x4de]
	strb r12, [r3, #0x4fc]
	strb r12, [r3, #0x4fd]
	strb r12, [r3, #0x4f6]
	strb r12, [r3, #0x4f7]
	add r5, r5, #1
_02121DBC:
	cmp r5, #0xa
	blt _02121D70
	ldr r0, _02121E24 ; =0x020A1640
	ldr r1, [r0, #0x230]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x88
	add r5, r1, #8
	add r6, r0, #0x400
	mov r7, #0
	b _02121E18
_02121DE8:
	ldrb r0, [r5]
	cmp r0, #0
	beq _02121E08
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_ov72_02121e28
_02121E08:
	add r0, r5, #8
	add r7, r7, #1
	add r5, r0, #0x800
	add r6, r6, #0xbc
_02121E18:
	cmp r7, #0xa
	blt _02121DE8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121E24: .word unk_020A1640
	arm_func_end FUN_ov72_02121d54

	arm_func_start FUN_ov72_02121e28
FUN_ov72_02121e28: ; 0x02121E28
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r3
	ldrb r3, [r4, #2]
	mov r5, r2
	ldr r0, _02121F24 ; =0x36B06E71
	strb r3, [r5, #0x48]
	ldr r3, [r4, #4]
	ldr r2, _02121F28 ; =0x91A2B3C5
	umull r0, r12, r3, r0
	sub r0, r3, r12
	add r12, r12, r0, lsr #1
	mov r12, r12, lsr #0x11
	strh r12, [r5, #0x4a]
	ldr r12, [r4, #4]
	ldr r3, _02121F2C ; =0x88888889
	umull r0, lr, r12, r2
	mov lr, lr, lsr #0xb
	umull r0, r2, lr, r3
	mov r2, r2, lsr #5
	mov r3, #0x3c
	umull r0, r2, r3, r2
	rsb r2, r0, lr
	strb r2, [r5, #0x49]
	ldrh r0, [r4, #0xc]
	cmp r1, #0
	add r2, r4, #0x4c
	strh r0, [r5, #0x4c]
	movge r0, #1
	strgeb r1, [r5, #0x6e]
	strgeb r0, [r5, #0x6f]
	ldrb r3, [r4, #0x7c1]
	mov r0, r5
	add r1, r4, #0x1c
	strh r3, [r5, #0x4e]
	str r2, [r5, #0x70]
	bl FUN_02023e98
	add r1, r4, #0x394
	add r0, r5, #0x18
	add r1, r1, #0x400
	bl FUN_02023e98
	add r0, r5, #0x56
	add r1, r4, #0x34
	bl FUN_02023e98
	ldrh r1, [r4, #0x12]
	ldr r0, _02121F30 ; =0x0209BA20
	add r2, r5, #0x30
	strh r1, [r5, #0x54]
	ldrh r1, [r4, #0x10]
	mov r3, #0x18
	strh r1, [r5, #0x52]
	ldrsb r1, [r4, #3]
	bl FUN_020735a0
	ldrb r0, [r4, #0xd1]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0x74]
	ldrb r0, [r4, #0xd1]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0x75]
	ldmfd sp!, {r3, r4, r5, pc}
_02121F24: .word 0x36B06E71
_02121F28: .word 0x91A2B3C5
_02121F2C: .word 0x88888889
_02121F30: .word unk_0209BA20
	arm_func_end FUN_ov72_02121e28

	arm_func_start FUN_ov72_02121f34
FUN_ov72_02121f34: ; 0x02121F34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r0, _02122020 ; =0x020A1640
	ldr r0, [r0, #0x230]
	str r0, [sp]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02122024 ; =0x0209A134
	mov r9, #0
	ldr r8, [r0]
	ldr r0, [sp]
	ldr r6, _02122028 ; =0x00000808
	add r1, r0, #0x58
	add r7, r0, #8
	add r5, r1, #0x5000
	mov r11, #1
	ldr r4, _0212202C ; =0x0209A104
	b _02121FF0
_02121F78:
	ldrb r0, [r8, #0x6f]
	cmp r0, #0
	beq _02121FE8
	ldr r0, [r4]
	mov r1, r9
	bl  FUN_ov131_021429b4
	ldrb r1, [r8, #0x6e]
	cmp r0, #0
	mla r10, r1, r6, r7
	beq _02121FBC
	mov r1, r10
	mov r2, r6
	bl MI_CpuCopy8
	ldrb r0, [r10, #0xd1]
	and r0, r0, #0xfd
	strb r0, [r10, #0xd1]
	strb r11, [r10]
_02121FBC:
	ldr r0, [r4]
	mov r1, r9
	bl  FUN_ov131_021429e4
	ldrb r2, [r8, #0x6e]
	mov r1, #0x28
	cmp r0, #0
	smulbb r1, r2, r1
	beq _02121FE8
	mov r2, #0x28
	add r1, r5, r1
	bl MI_CpuCopy8
_02121FE8:
	add r9, r9, #1
	add r8, r8, #0xbc
_02121FF0:
	cmp r9, #0xa
	blt _02121F78
	ldr r0, [sp]
	ldr r2, _02122030 ; =0x0209A0FC
	add r1, r0, #0x1e8
	ldr r0, [r2]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r1, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122020: .word unk_020A1640
_02122024: .word unk_0209A134
_02122028: .word 0x00000808
_0212202C: .word unk_0209A104
_02122030: .word unk_0209A0FC
	arm_func_end FUN_ov72_02121f34

	arm_func_start FUN_ov72_02122034
FUN_ov72_02122034: ; 0x02122034
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r7, #0
	mov r10, r0
	mov r5, r7
	ldr r4, _021221CC ; =0x02099F38
	b _02122074
_02122050:
	add r0, r10, r5, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _02122070
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r10, r5, lsl #2
	str r7, [r0, #0x2c]
_02122070:
	add r5, r5, #1
_02122074:
	cmp r5, #0xf
	blt _02122050
	add r0, r10, #0x88
	add r8, r0, #0x400
	mov r9, #0
	mov r5, #1
	add r6, sp, #0x18
	add r11, sp, #0x14
	ldr r4, _021221CC ; =0x02099F38
	b _02122104
_0212209C:
	ldrb r0, [r8, #0x6f]
	cmp r0, #0
	beq _021220FC
	ldrh r1, [r8, #0x4e]
	ldr r0, [r10, #0x3f0]
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _021220FC
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r7, [sp]
	stmib sp, {r5, r7}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _021221D0 ; =0x02123568
	mov r3, r7
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x2c]
	strh r9, [r8, #0x50]
_021220FC:
	add r9, r9, #1
	add r8, r8, #0xbc
_02122104:
	cmp r9, #0xa
	blt _0212209C
	ldr r5, _021221D4 ; =0x0209A134
	mov r7, #0
	ldr r8, [r5]
	mov r9, r7
	mov r6, #1
	add r11, sp, #0x18
	ldr r4, _021221CC ; =0x02099F38
	b _0212218C
_0212212C:
	ldrh r1, [r8, #0x4e]
	ldr r0, [r10, #0x3f0]
	mov r2, r11
	add r3, sp, #0x14
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _02122184
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r7, [sp]
	stmib sp, {r6, r7}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _021221D8 ; =0x02123588
	mov r3, r7
	bl FUN_02058800
	add r2, r9, #0xa
	add r1, r10, r2, lsl #2
	str r0, [r1, #0x2c]
	strh r2, [r8, #0x50]
_02122184:
	add r9, r9, #1
	add r8, r8, #0xbc
_0212218C:
	ldr r0, [r5]
	ldrb r0, [r0, #0x3ad]
	cmp r9, r0
	blt _0212212C
	mov r4, #1
	b _021221AC
_021221A4:
	mov r0, r4
	bl OS_Sleep
_021221AC:
	mov r0, r10
	bl FUN_ov72_0211bfc0
	cmp r0, #0
	beq _021221A4
	mov r0, r10
	bl FUN_ov72_0211c010
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021221CC: .word unk_02099F38
_021221D0: .word ov72_02123568
_021221D4: .word unk_0209A134
_021221D8: .word ov72_02123588
	arm_func_end FUN_ov72_02122034

	arm_func_start FUN_ov72_021221dc
FUN_ov72_021221dc: ; 0x021221DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	add r6, r10, #0x460
	mov r7, #0
	mov r5, #1
	ldr r4, _02122308 ; =0x02099F38
	ldr r11, _0212230C ; =0x66666667
	b _021222FC
_02122200:
	mov r0, r10
	mov r1, r7
	mov r2, #0
	bl FUN_ov72_02121b68
	movs r8, r0
	beq _021222F4
	ldrsh r0, [r8, #0x50]
	cmp r0, #0
	blt _021222F4
	ldr r0, [r6]
	cmp r0, #0
	bne _02122244
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl  FUN_ov16_02112724
	str r0, [r6]
_02122244:
	smull r0, r2, r11, r7
	mov r0, r7, lsr #0x1f
	add r2, r0, r2, asr #1
	mov r1, #5
	smull r2, r3, r1, r2
	sub r2, r7, r2
	mov r1, #0x28
	mul r1, r2, r1
	add r1, r1, #0x20
	mov r1, r1, lsl #0x10
	mov r3, r1, asr #0x10
	smull r1, r2, r11, r7
	add r2, r0, r2, asr #1
	mov r0, #0x38
	mul r0, r2, r0
	add r0, r0, #0x18
	add r0, r9, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6]
	mov r2, r5
	bl  FUN_ov16_02113b78
	ldrsh r2, [r8, #0x50]
	ldr r0, [r4]
	ldr r1, [r6]
	add r2, r10, r2, lsl #2
	ldr r3, [r2, #0x2c]
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6]
	mov r2, r5
	mov r3, #0
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	ldr r1, [r6]
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_021139bc
_021222F4:
	add r7, r7, #1
	add r6, r6, #4
_021222FC:
	cmp r7, #0xa
	blt _02122200
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122308: .word unk_02099F38
_0212230C: .word 0x66666667
	arm_func_end FUN_ov72_021221dc

	arm_func_start FUN_ov72_02122310
FUN_ov72_02122310: ; 0x02122310
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _021223A0 ; =0x0209BA20
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	mov r6, r0
	mov r0, r5
	mov r1, #2
	bl FUN_0204c50c
	cmp r0, #0xb
	mov r0, r6
	orrlt r4, r4, #2
	bl _strlen
	cmp r0, #0
	ldrb r0, [r6, #0x2d]
	orreq r4, r4, #1
	mov r2, #0
	cmp r0, #0
	ldr r0, _021223A4 ; =0x020A1640
	orreq r4, r4, #1
	ldr r0, [r0, #0x230]
	orr r4, r4, #4
	add r1, r0, #8
	b _02122390
_02122374:
	ldrb r0, [r1]
	cmp r0, #0
	bicne r4, r4, #4
	bne _02122398
	add r0, r1, #8
	add r2, r2, #1
	add r1, r0, #0x800
_02122390:
	cmp r2, #0xa
	blt _02122374
_02122398:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_021223A0: .word unk_0209BA20
_021223A4: .word unk_020A1640
	arm_func_end FUN_ov72_02122310

	arm_func_start FUN_ov72_021223a8
FUN_ov72_021223a8: ; 0x021223A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x570
	mov r10, r0
	mov r9, r1
	add r0, sp, #0x3e4
	mov r1, #0
	mov r2, #4
	mov r4, #1
	bl MI_CpuFill8
	add r0, sp, #0x364
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	ldrb r0, [r9]
	add r5, sp, #0xec
	mov r2, #0x40
	mov r0, r0, asr #3
	str r0, [sp, #0x3e4]
	cmp r0, #1
	strlt r4, [sp, #0x3e4]
	ldr r0, [sp, #0x3e4]
	cmp r0, #0x10
	movgt r0, #0x10
	strgt r0, [sp, #0x3e4]
	ldrb r0, [r9]
	mov r1, r0, asr #1
	and r4, r1, #3
	and r3, r0, #1
	mov r0, r5
	mov r1, #0
	str r4, [sp, #0x3e8]
	str r3, [sp, #0x3ec]
	bl MI_CpuFill8
	ldr r3, [sp, #0x3e4]
	ldr r1, _021227DC ; =0x021235A8
	ldr r2, _021227E0 ; =0x021235B4
	mov r0, r5
	bl FUN_02023c40
	add r4, sp, #0x12c
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f3054
	ldr r0, [sp, #0x12c]
	add r1, sp, #0x364
	mov r2, #0x80
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, #1
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl  FUN_ov16_020f33fc
	mov r0, #0
	str r0, [sp, #0x12c]
	str r0, [sp, #0x130]
	strb r0, [sp, #0x134]
	strb r0, [sp, #0x135]
	strb r0, [sp, #0x136]
	ldr r0, _021227E4 ; =0x0209BA20
	mov r1, #0
	bl FUN_0207249c
	ldrh r3, [r0, #0x2a]
	mov r6, #0
	mov r1, r6
	cmp r3, #0
	ldreqh r3, [r0, #0x20]
	add r2, sp, #0x400
	ldr r0, _021227E4 ; =0x0209BA20
	strh r3, [r2]
	bl FUN_020724c8
	strb r0, [sp, #0x410]
	add r5, sp, #0x364
	add r4, sp, #0x3e4
	add r11, sp, #0xbc
_021224CC:
	mov r0, r11
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r9, r6
	ldrb r7, [r0, #1]
	ldr r0, _021227E4 ; =0x0209BA20
	mov r2, r11
	mov r1, r7, lsl #3
	ldrh r1, [r5, r1]
	add r8, r6, #1
	bl FUN_0207273c
	mov r0, r7, lsl #3
	ldrh r0, [r5, r0]
	add r2, r4, r8, lsl #1
	ldrh r1, [sp, #0xbc]
	strh r0, [r2, #0xc]
	ldrsb r3, [sp, #0xbf]
	strh r1, [r2, #0x1c]
	add r2, r5, r7, lsl #3
	ldrb r1, [r2, #4]
	add r0, r4, r8
	strb r3, [r0, #0x2c]
	cmp r1, #0
	ldrneb r1, [r2, #5]
	add r6, r6, #1
	strneb r1, [r0, #0x2c]
	add r1, r5, r7, lsl #3
	ldrb r2, [r1, #3]
	ldrh r1, [r1, #6]
	cmp r6, #7
	strb r2, [r0, #0x34]
	add r0, r4, r8, lsl #1
	strh r1, [r0, #0x3c]
	blt _021224CC
	add r7, sp, #0x1f8
	mov r8, #0
	mov r0, r7
	mov r1, r8
	mov r2, #0x16c
	mov r6, #1
	bl MI_CpuFill8
	ldr r11, _021227E4 ; =0x0209BA20
	add r5, sp, #0x3e4
	add r4, sp, #0x430
_02122580:
	cmp r8, #0
	moveq r1, r6
	addne r0, r5, r8, lsl #1
	ldrneh r1, [r0, #0x1c]
	mov r0, r11
	mov r2, r7
	bl FUN_0207039c
	mov r0, r7
	mov r2, #0x20
	add r1, r4, r8, lsl #5
	bl MI_CpuCopy8
	add r8, r8, #1
	cmp r8, #8
	blt _02122580
	add r4, sp, #0x138
	mov r5, #0
	mov r7, #0xc0
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl MI_CpuFill8
	add r6, sp, #0x7c
	mov r1, r5
	mov r0, r6
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r1, _021227E8 ; =0x021235D4
	ldr r2, _021227EC ; =0x021235E0
	ldr r3, [sp, #0x3e4]
	mov r0, r6
	bl FUN_02023c40
	mov r0, r6
	add r6, sp, #0x12c
	mov r1, r6
	bl  FUN_ov16_020f3054
	ldr r0, [sp, #0x12c]
	mov r2, r7
	mov r1, r4
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	mov r0, r6
	bl  FUN_ov16_020f33fc
	mov r3, #0xc
	str r5, [sp, #0x12c]
	str r5, [sp, #0x130]
	strb r5, [sp, #0x134]
	strb r5, [sp, #0x135]
	strb r5, [sp, #0x136]
	add r0, sp, #0x3e4
	mov r6, r3
_02122650:
	add r1, r9, r5
	ldrb r2, [r1, #8]
	mla r1, r5, r6, r0
	mul r7, r2, r3
	add r2, r4, r7
	ldrh r8, [r4, r7]
	add r7, r1, #0x100
	ldrh r11, [r2, #2]
	strh r8, [r7, #0x4c]
	ldrh r8, [r2, #4]
	strh r11, [r7, #0x4e]
	add r5, r5, #1
	ldrb r11, [r2, #6]
	strh r8, [r7, #0x50]
	ldrb r8, [r2, #7]
	strb r11, [r1, #0x152]
	ldrb r7, [r2, #8]
	strb r8, [r1, #0x153]
	ldrb r8, [r2, #9]
	strb r7, [r1, #0x154]
	ldrb r7, [r2, #0xa]
	strb r8, [r1, #0x155]
	ldrb r2, [r2, #0xb]
	strb r7, [r1, #0x156]
	cmp r5, #3
	strb r2, [r1, #0x157]
	blt _02122650
	add r7, sp, #0x40
	mov r6, #0
	mov r4, #0x3c
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl MI_CpuFill8
	ldrb r0, [r9]
	add r5, sp, #0
	mov r1, r6
	mov r3, r0, asr #1
	mov r0, r5
	mov r2, #0x40
	and r8, r3, #3
	bl MI_CpuFill8
	ldr r1, _021227F0 ; =0x02123600
	ldr r2, _021227F4 ; =0x0212360C
	ldr r3, [sp, #0x3e4]
	mov r0, r5
	bl FUN_02023c40
	add r9, sp, #0x12c
	mov r0, r5
	mov r1, r9
	bl  FUN_ov16_020f3054
	ldr r0, [sp, #0x12c]
	mov r2, r4
	mov r1, r7
	bl MI_CpuCopy8
	mov r5, #1
	mov r0, r9
	mov r1, r5
	bl  FUN_ov16_020f338c
	mov r0, r9
	bl  FUN_ov16_020f33fc
	mov r2, #0x14
	add r4, sp, #0x500
	add r4, r4, #0x54
	mla r2, r8, r2, r7
	ldr r1, _021227F8 ; =0x0212362C
	ldr r3, _021227FC ; =0x02123634
	str r6, [sp, #0x12c]
	str r6, [sp, #0x130]
	strb r6, [sp, #0x134]
	strb r6, [sp, #0x135]
	strb r6, [sp, #0x136]
	mov r0, r4
	bl FUN_02023c40
	str r5, [r10, #0xac]
	str r5, [r10, #0xa0]
	ldr r1, [sp, #0x3ec]
	mov r0, #2
	str r1, [r10, #0xa4]
	strb r0, [r10, #0xb0]
	add r0, sp, #0x400
	add r1, r10, #0xb4
	mov r2, #0x10
	str r5, [r10, #0xa8]
	bl MI_CpuCopy
	add r0, sp, #0x410
	add r1, r10, #0xc4
	mov r2, #8
	bl MI_CpuCopy
	add r0, sp, #0x430
	add r1, r10, #0xcc
	mov r2, #0x100
	bl MI_CpuCopy
	mov r0, r4
	add r1, r10, #0x1cc
	mov r2, #0x19
	bl MI_CpuCopy
	add sp, sp, #0x570
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021227DC: .word ov72_021235A8
_021227E0: .word ov72_021235B4
_021227E4: .word unk_0209BA20
_021227E8: .word ov72_021235D4
_021227EC: .word ov72_021235E0
_021227F0: .word ov72_02123600
_021227F4: .word ov72_0212360C
_021227F8: .word ov72_0212362C
_021227FC: .word ov72_02123634
	arm_func_end FUN_ov72_021223a8

	arm_func_start FUN_ov72_02122800
FUN_ov72_02122800: ; 0x02122800
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov72_02122800

	arm_func_start FUN_ov72_02122814
FUN_ov72_02122814: ; 0x02122814
	bx lr
	arm_func_end FUN_ov72_02122814
_02122818:
	.byte 0x0C, 0x01, 0x03, 0x04, 0x1E, 0x04, 0x1E, 0x20
	.byte 0x04, 0x06, 0x00, 0x01, 0x06, 0x0F, 0x0F, 0x02, 0x1E, 0x0F, 0x1E, 0x1E, 0x1E, 0x01, 0x01, 0x01
	.byte 0x01, 0x08, 0x01, 0x1E, 0x01, 0x0F, 0x00, 0x0F, 0x01, 0x01, 0x1E, 0x01, 0x01, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x09, 0x00, 0x0E, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x09, 0x00, 0x0E, 0x00, 0x1A, 0x00, 0x19, 0x00, 0x1C, 0x00, 0x1B, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x06, 0x00, 0x0B, 0x00, 0x10, 0x00, 0x01, 0x00, 0x06, 0x00, 0x0B, 0x00, 0x10, 0x00, 0x1A, 0x00
	.byte 0x19, 0x00, 0x1C, 0x00, 0x1B, 0x00, 0x1A, 0x00, 0x19, 0x00, 0x1C, 0x00, 0x1B, 0x00, 0x07, 0x00
	.byte 0x14, 0x00, 0x07, 0x00, 0x14, 0x00, 0x13, 0x00, 0x14, 0x00, 0x13, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0xFC, 0x00, 0x00, 0x00, 0xD8, 0x00, 0x00, 0x00, 0x44, 0x01, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00
	.byte 0x80, 0x2E, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x05, 0x00, 0x1A, 0x00, 0x0D, 0x00, 0x04, 0x00, 0x06, 0x00, 0x18, 0x00, 0x0C, 0x00
	.byte 0x0D, 0x00, 0x0E, 0x00, 0x06, 0x00, 0x03, 0x00, 0x0C, 0x00, 0x0E, 0x00, 0x08, 0x00, 0x03, 0x00
	.byte 0x07, 0x00, 0x0D, 0x00, 0x07, 0x00, 0x0D, 0x00, 0x13, 0x00, 0x0D, 0x00, 0x13, 0x00, 0x0D, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x0D, 0x00, 0x07, 0x00, 0x0D, 0x00, 0x13, 0x00, 0x0D, 0x00, 0x13, 0x00, 0x0D, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x05, 0x00, 0x1A, 0x00, 0x0D, 0x00, 0x04, 0x00, 0x06, 0x00, 0x18, 0x00, 0x0C, 0x00
	.byte 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00
	.byte 0x0D, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00
	.byte 0x0C, 0x00, 0x0D, 0x00, 0x51, 0x00, 0x52, 0x00, 0x53, 0x00, 0x64, 0x00, 0x65, 0x00, 0x66, 0x00
	.byte 0x67, 0x00, 0x68, 0x00, 0x69, 0x00, 0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x51, 0x00, 0x52, 0x00
	.byte 0x53, 0x00, 0x64, 0x00, 0x65, 0x00, 0x66, 0x00, 0x67, 0x00, 0x68, 0x00, 0x69, 0x00, 0x54, 0x00
	.byte 0x55, 0x00, 0x56, 0x00, 0xC8, 0x2E, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0xD8, 0x2E, 0x12, 0x02
	.byte 0x1E, 0x00, 0x00, 0x00, 0xE8, 0x2E, 0x12, 0x02, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x15, 0x09, 0x03, 0x00, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x15, 0x09, 0x03, 0x01, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x15, 0x09, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x3D, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x15, 0x09, 0x03
	.byte 0x02, 0x00, 0x00, 0x00, 0x42, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0A, 0x15, 0x08, 0x03, 0x00, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x0A, 0x15, 0x08, 0x03, 0x01, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x15, 0x08, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x45, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x15, 0x08, 0x03
	.byte 0x02, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0B, 0x15, 0x09, 0x03, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x0B, 0x15, 0x09, 0x03, 0x01, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x15, 0x09, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x41, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x15, 0x09, 0x03
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x05, 0x00, 0x07, 0x00
	.byte 0x0A, 0x00, 0x07, 0x00, 0x0F, 0x00, 0x07, 0x00, 0x14, 0x00, 0x07, 0x00, 0xF8, 0x2E, 0x12, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0x2F, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x08, 0x2F, 0x12, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x18, 0x2F, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x28, 0x2F, 0x12, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x38, 0x2F, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0x48, 0x2F, 0x12, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x68, 0x2F, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x14, 0x15, 0x06, 0x03, 0x00, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x14, 0x15, 0x06, 0x03, 0x01, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x15, 0x06, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x39, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x15, 0x06, 0x03
	.byte 0x01, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x14, 0x15, 0x06, 0x03, 0x00, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x14, 0x15, 0x06, 0x03, 0x01, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x15, 0x06, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x15, 0x06, 0x03
	.byte 0x01, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x14, 0x15, 0x06, 0x03, 0x00, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x14, 0x15, 0x06, 0x03, 0x01, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x15, 0x06, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x15, 0x06, 0x03
	.byte 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x07, 0x10, 0x06, 0x03, 0x07, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x07, 0x10, 0x06, 0x03, 0x06, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x10, 0x06, 0x03, 0x09, 0x00, 0x00, 0x00
	.byte 0x1B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x10, 0x06, 0x03
	.byte 0x08, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x14, 0x15, 0x06, 0x03, 0x00, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x14, 0x15, 0x06, 0x03, 0x01, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x15, 0x06, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x39, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x15, 0x06, 0x03
	.byte 0x03, 0x00, 0x00, 0x00, 0x78, 0x2F, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x98, 0x2E, 0x12, 0x02
	.byte 0x0F, 0x00, 0x00, 0x00, 0xD8, 0x2D, 0x12, 0x02, 0x11, 0x00, 0x00, 0x00, 0xE4, 0x2D, 0x12, 0x02
	.byte 0x0A, 0x00, 0x00, 0x00, 0xF0, 0x2D, 0x12, 0x02, 0x12, 0x00, 0x00, 0x00, 0xA4, 0x2E, 0x12, 0x02
	.byte 0x21, 0x00, 0x00, 0x00, 0xFC, 0x2D, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x08, 0x2E, 0x12, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0x14, 0x2E, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00, 0x8C, 0x2E, 0x12, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0x20, 0x2E, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x2C, 0x2E, 0x12, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x38, 0x2E, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0x74, 0x2E, 0x12, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x44, 0x2E, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x50, 0x2E, 0x12, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0x5C, 0x2E, 0x12, 0x02, 0x13, 0x00, 0x00, 0x00, 0xBC, 0x2E, 0x12, 0x02
	.byte 0x17, 0x00, 0x00, 0x00, 0x68, 0x2E, 0x12, 0x02, 0x19, 0x00, 0x00, 0x00, 0xB0, 0x2E, 0x12, 0x02
	.byte 0x1A, 0x00, 0x00, 0x00, 0x88, 0x2F, 0x12, 0x02, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov72_02122d44
FUN_ov72_02122d44: ; 0x02122D44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02122D8C ; =0x02122DA0
	str r0, [r4, #8]
	ldr r0, _02122D90 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _02122D94 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02122D8C: .word ov72_02122DA0
_02122D90: .word 0x00009CCD
_02122D94: .word 0x0000EA3C
	arm_func_end FUN_ov72_02122d44

	.section .sinit, 4
ov72_02122D98:
	.word FUN_ov72_02122d44

	.data
	.global ov72_02122DA0
ov72_02122DA0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov72_02122DB8
ov72_02122DB8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00
	.global ov72_02122DC1
ov72_02122DC1:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov72_02122DCC
ov72_02122DCC:
	.byte 0x0C, 0x30, 0x12, 0x02
	.byte 0x98, 0x2F, 0x12, 0x02, 0xC4, 0x2F, 0x12, 0x02, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F
	.byte 0x62, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x32, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x33, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x77, 0x32, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F
	.byte 0x77, 0x32, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x77, 0x33, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x77, 0x37, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x77, 0x37, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F
	.byte 0x63, 0x34, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x6E, 0x33, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x77, 0x33, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x77, 0x32, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F
	.byte 0x62, 0x37, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x6E, 0x33, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x6F, 0x32, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x69, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x69, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x6F, 0x36, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x69, 0x34, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x77, 0x33, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x74, 0x32, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x74, 0x32, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x74, 0x75, 0x30, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x5B, 0x8E, 0xE8, 0x2F, 0x82, 0xC4, 0x5D, 0x82
	.byte 0xC9, 0x82, 0xA2, 0x82, 0xEA, 0x82, 0xBD, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x0A
	.byte 0x82, 0xB5, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xAA, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB7
	.byte 0x81, 0x42, 0x00, 0x00, 0x82, 0xB7, 0x82, 0xEA, 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2, 0x5B, 0x92
	.byte 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC9, 0x0A
	.byte 0x82, 0xD0, 0x82, 0xC2, 0x82, 0xE6, 0x82, 0xA4, 0x82, 0xC8, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4
	.byte 0x82, 0xD9, 0x82, 0xA4, 0x82, 0xF0, 0x0A, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x82, 0xB7, 0x82, 0xEA
	.byte 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x89, 0xCA, 0x2F, 0x82, 0xCD, 0x5D, 0x82
	.byte 0xBD, 0x82, 0xB5, 0x5B, 0x8F, 0xF3, 0x2F, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xF0
	.byte 0x5B, 0x91, 0x97, 0x2F, 0x82, 0xA8, 0x82, 0xAD, 0x5D, 0x82, 0xE8, 0x82, 0xC2, 0x82, 0xAF, 0x82
	.byte 0xE6, 0x82, 0xA4, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x28, 0x12, 0x02, 0x00, 0x28, 0x12, 0x02, 0x44, 0xA8, 0x11, 0x02, 0xD0, 0xB3, 0x11, 0x02
	.byte 0x50, 0xF4, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xA8, 0xF7, 0x11, 0x02, 0x08, 0xFB, 0x11, 0x02
	.byte 0x38, 0xFB, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov72_021230CC
ov72_021230CC:
	.byte 0x20, 0x00, 0x00, 0x00
	.global ov72_021230D0
ov72_021230D0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D
	.byte 0x54, 0x53, 0x53, 0x72, 0x64, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov72_021230EC
ov72_021230EC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00
	.global ov72_0212310C
ov72_0212310C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x70, 0x61
	.byte 0x73, 0x73, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov72_02123128
ov72_02123128:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x70, 0x61, 0x73, 0x73, 0x2E, 0x53
	.byte 0x50, 0x44, 0x00, 0x00
	.global ov72_02123144
ov72_02123144:
	.byte 0x82, 0xB1, 0x82, 0xEA, 0x82, 0xC5, 0x82, 0xA2, 0x82, 0xA2, 0x82, 0xC5
	.byte 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov72_02123158
ov72_02123158:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5
	.byte 0x82, 0xC4, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8
	.byte 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov72_02123180
ov72_02123180:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xF0, 0x82, 0xB9, 0x82, 0xB8, 0x82, 0xC9, 0x0A, 0x5B
	.byte 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov72_021231B0
ov72_021231B0:
	.byte 0x83, 0x74, 0x83, 0x42, 0x81, 0x5B, 0x83, 0x8B, 0x83, 0x68, 0x82, 0xC9, 0x82, 0x50, 0x82, 0x50
	.byte 0x5B, 0x90, 0x6C, 0x2F, 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xCC, 0x83, 0x81, 0x83, 0x93, 0x83
	.byte 0x6F, 0x81, 0x5B, 0x82, 0xAA, 0x0A, 0x82, 0xA2, 0x82, 0xC8, 0x82, 0xA2, 0x82, 0xC6, 0x5B, 0x92
	.byte 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82
	.byte 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov72_021231FC
ov72_021231FC:
	.byte 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x5B, 0x96, 0xBC, 0x2F, 0x82, 0xDF, 0x82, 0xA2, 0x5D, 0x82, 0xC6, 0x83, 0x47, 0x83
	.byte 0x93, 0x83, 0x75, 0x83, 0x8C, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xC8, 0x82, 0xA2, 0x82, 0xC6, 0x5B, 0x92
	.byte 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82
	.byte 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov72_0212324C
ov72_0212324C:
	.byte 0x82, 0xE0, 0x82, 0xE7
	.byte 0x82, 0xC1, 0x82, 0xBD, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8
	.byte 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov72_0212326C
ov72_0212326C:
	.byte 0x82, 0xBD, 0x82, 0xA2
	.byte 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xE9, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80
	.byte 0x82, 0xAA, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov72_02123290
ov72_02123290:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_02123294
ov72_02123294:
	.byte 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xF0, 0x5B, 0x8D, 0x58, 0x90
	.byte 0x56, 0x2F, 0x82, 0xB1, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82
	.byte 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov72_021232B8
ov72_021232B8:
	.byte 0x82, 0xB7, 0x82, 0xEA, 0x82, 0xBF, 0x82, 0xAA
	.byte 0x82, 0xA2, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x92, 0x86, 0x2F, 0x82, 0xBF
	.byte 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00
	.global ov72_021232DC
ov72_021232DC:
	.byte 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x92, 0x86, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x81
	.byte 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00
	.global ov72_021232F8
ov72_021232F8:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_021232FC
ov72_021232FC:
	.byte 0x5B, 0x90, 0xD8, 0x92
	.byte 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82
	.byte 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov72_02123318
ov72_02123318:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_0212331C
ov72_0212331C:
	.byte 0x82, 0xB7, 0x82, 0xEA
	.byte 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x82, 0xF0
	.byte 0x0A, 0x82, 0xA8, 0x82, 0xED, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov72_02123340
ov72_02123340:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_02123344
ov72_02123344:
	.byte 0x83, 0x67, 0x81, 0x5B, 0x83, 0x69, 0x83, 0x81, 0x83, 0x93, 0x83, 0x67
	.byte 0x82, 0xF0, 0x5B, 0x8E, 0x9D, 0x2F, 0x82, 0xE0, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82
	.byte 0xAB, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov72_0212336C
ov72_0212336C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_02123370
ov72_02123370:
	.byte 0x83, 0x67, 0x81, 0x5B, 0x83, 0x69, 0x83, 0x81, 0x83, 0x93, 0x83, 0x67, 0x82, 0xF0, 0x83, 0x5A
	.byte 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov72_02123390
ov72_02123390:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_02123394
ov72_02123394:
	.byte 0x83, 0x67, 0x81, 0x5B, 0x83, 0x69, 0x83, 0x81, 0x83, 0x93, 0x83, 0x67
	.byte 0x82, 0xF0, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB9, 0x82, 0xB8, 0x82, 0xC9, 0x0A, 0x5B
	.byte 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xAA, 0x81, 0x40, 0x82, 0xE6, 0x82, 0xEB
	.byte 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov72_021233E0
ov72_021233E0:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_021233E4
ov72_021233E4:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC4, 0x5B, 0x8F
	.byte 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov72_0212340C
ov72_0212340C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_02123410
ov72_02123410:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB9, 0x82, 0xB8, 0x82, 0xC9, 0x81, 0x40, 0x5B, 0x8F
	.byte 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov72_0212343C
ov72_0212343C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_02123440
ov72_02123440:
	.byte 0x5B, 0x8D, 0xC5, 0x8F, 0x89, 0x2F, 0x82, 0xB3, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xE5, 0x5D, 0x82
	.byte 0xA9, 0x82, 0xE7, 0x81, 0x40, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC8, 0x82
	.byte 0xA8, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov72_0212346C
ov72_0212346C:
	.byte 0x82, 0x63, 0x82, 0x72
	.byte 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC9, 0x5B, 0x90, 0xDA, 0x91, 0xB1
	.byte 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov72_021234A4
ov72_021234A4:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_021234A8
ov72_021234A8:
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F
	.byte 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x82, 0xB3, 0x82, 0xAB, 0x5D, 0x82, 0xAA, 0x5B
	.byte 0x8C, 0xA9, 0x2F, 0x82, 0xDD, 0x5D, 0x82, 0xC2, 0x82, 0xA9, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9
	.byte 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00
	.global ov72_021234DC
ov72_021234DC:
	.byte 0x82, 0x63, 0x82, 0x72
	.byte 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xA9, 0x82, 0xE7, 0x0A, 0x5B, 0x90
	.byte 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00
	.global ov72_02123518
ov72_02123518:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_0212351C
ov72_0212351C:
	.byte 0x82, 0xB7, 0x82, 0xEA
	.byte 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x89, 0xCA, 0x2F, 0x82, 0xCD, 0x5D, 0x82
	.byte 0xBD, 0x82, 0xB5, 0x5B, 0x8F, 0xF3, 0x2F, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xF0
	.byte 0x5B, 0x91, 0x97, 0x2F, 0x82, 0xA8, 0x82, 0xAD, 0x5D, 0x82, 0xE8, 0x82, 0xC2, 0x82, 0xAF, 0x82
	.byte 0xE6, 0x82, 0xA4, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov72_02123568
ov72_02123568:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F
	.byte 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.global ov72_02123588
ov72_02123588:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F
	.byte 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.global ov72_021235A8
ov72_021235A8:
	.byte 0x25, 0x73, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x64
	.byte 0x61, 0x74, 0x00, 0x00
	.global ov72_021235B4
ov72_021235B4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x54, 0x6F, 0x75, 0x72, 0x6E, 0x61, 0x6D, 0x65, 0x6E, 0x74, 0x54, 0x65, 0x61
	.byte 0x6D, 0x00, 0x00, 0x00
	.global ov72_021235D4
ov72_021235D4:
	.byte 0x25, 0x73, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00
	.global ov72_021235E0
ov72_021235E0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x54
	.byte 0x6F, 0x75, 0x72, 0x6E, 0x61, 0x6D, 0x65, 0x6E, 0x74, 0x49, 0x74, 0x65, 0x6D, 0x00, 0x00, 0x00
	.global ov72_02123600
ov72_02123600:
	.byte 0x25, 0x73, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00
	.global ov72_0212360C
ov72_0212360C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x54, 0x6F, 0x75, 0x72, 0x6E
	.byte 0x61, 0x6D, 0x65, 0x6E, 0x74, 0x4E, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00
	.global ov72_0212362C
ov72_0212362C:
	.byte 0x25, 0x73, 0x25, 0x73
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov72_02123634
ov72_02123634:
	.byte 0x83, 0x4A, 0x83, 0x62, 0x83, 0x76, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov72_02123640
ov72_02123640:
	.space 0x20

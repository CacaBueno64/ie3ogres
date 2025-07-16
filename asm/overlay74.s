
	.include "/macros/function.inc"
	.include "/include/overlay74.inc"

	.text
	arm_func_start FUN_ov74_02119f00
FUN_ov74_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r5, _02119F34 ; =0x0209F5C0
	mov r4, r6
_02119F10:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f6084
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x26
	blo _02119F10
	ldmfd sp!, {r4, r5, r6, pc}
_02119F34: .word unk_0209F5C0
	arm_func_end FUN_ov74_02119f00

	arm_func_start FUN_ov74_02119f38
FUN_ov74_02119f38: ; 0x02119F38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x54]
	mov r4, r1
	cmp r0, r4
	beq _02119F5C
	ldr r0, _02119F64 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_02119F5C:
	str r4, [r5, #0x54]
	ldmfd sp!, {r3, r4, r5, pc}
_02119F64: .word unk_0209AC44
	arm_func_end FUN_ov74_02119f38

	arm_func_start FUN_ov74_02119f68
FUN_ov74_02119f68: ; 0x02119F68
	cmp r1, #0x25
	addls pc, pc, r1, lsl #2
	b _0211A09C
_02119F74: ; jump table
	b _0211A09C ; case 0
	b _0211A09C ; case 1
	b _0211A09C ; case 2
	b _0211A09C ; case 3
	b _0211A00C ; case 4
	b _0211A014 ; case 5
	b _0211A01C ; case 6
	b _0211A024 ; case 7
	b _0211A02C ; case 8
	b _0211A034 ; case 9
	b _0211A03C ; case 10
	b _0211A044 ; case 11
	b _0211A04C ; case 12
	b _0211A054 ; case 13
	b _0211A05C ; case 14
	b _0211A05C ; case 15
	b _0211A05C ; case 16
	b _0211A064 ; case 17
	b _0211A064 ; case 18
	b _0211A064 ; case 19
	b _0211A06C ; case 20
	b _0211A06C ; case 21
	b _0211A06C ; case 22
	b _0211A074 ; case 23
	b _0211A074 ; case 24
	b _0211A074 ; case 25
	b _0211A07C ; case 26
	b _0211A07C ; case 27
	b _0211A07C ; case 28
	b _0211A084 ; case 29
	b _0211A084 ; case 30
	b _0211A084 ; case 31
	b _0211A08C ; case 32
	b _0211A08C ; case 33
	b _0211A08C ; case 34
	b _0211A094 ; case 35
	b _0211A094 ; case 36
	b _0211A094 ; case 37
_0211A00C:
	mov r0, #0
	bx lr
_0211A014:
	mov r0, #1
	bx lr
_0211A01C:
	mov r0, #2
	bx lr
_0211A024:
	mov r0, #3
	bx lr
_0211A02C:
	mov r0, #4
	bx lr
_0211A034:
	mov r0, #5
	bx lr
_0211A03C:
	mov r0, #6
	bx lr
_0211A044:
	mov r0, #7
	bx lr
_0211A04C:
	mov r0, #8
	bx lr
_0211A054:
	mov r0, #9
	bx lr
_0211A05C:
	mov r0, #0
	bx lr
_0211A064:
	mov r0, #1
	bx lr
_0211A06C:
	mov r0, #2
	bx lr
_0211A074:
	mov r0, #3
	bx lr
_0211A07C:
	mov r0, #4
	bx lr
_0211A084:
	mov r0, #0
	bx lr
_0211A08C:
	mov r0, #1
	bx lr
_0211A094:
	mov r0, #2
	bx lr
_0211A09C:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov74_02119f68

	arm_func_start FUN_ov74_0211a0a4
FUN_ov74_0211a0a4: ; 0x0211A0A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #5
	ldreqb r0, [r5, #0x11]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A2C0 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	strh r4, [r5, #0xf8]
	tst r4, #0x40
	beq _0211A10C
	ldrb r3, [r5, #0x884]
	cmp r3, #0
	ldrneb r2, [r5, #0x885]
	cmpne r2, #0
	beq _0211A1C0
	ldr r0, [r5, #0x54]
	sub r1, r3, #1
	mla r0, r2, r1, r0
	mul r1, r3, r2
	b _0211A194
_0211A10C:
	tst r4, #0x80
	beq _0211A138
	ldrb r0, [r5, #0x884]
	cmp r0, #0
	ldrneb r2, [r5, #0x885]
	cmpne r2, #0
	beq _0211A1C0
	mul r1, r0, r2
	ldr r0, [r5, #0x54]
	add r0, r0, r2
	b _0211A194
_0211A138:
	tst r4, #0x20
	beq _0211A16C
	ldrb r2, [r5, #0x884]
	cmp r2, #0
	beq _0211A1C0
	ldrb r0, [r5, #0x885]
	cmp r0, #1
	bls _0211A1C0
	mul r1, r2, r0
	ldr r0, [r5, #0x54]
	add r0, r0, r1
	sub r0, r0, #1
	b _0211A194
_0211A16C:
	tst r4, #0x10
	ldrneb r2, [r5, #0x884]
	cmpne r2, #0
	beq _0211A1C0
	ldrb r0, [r5, #0x885]
	cmp r0, #1
	bls _0211A1C0
	mul r1, r2, r0
	ldr r0, [r5, #0x54]
	add r0, r0, #1
_0211A194:
	bl _s32_div_f
	mov r0, r5
	bl FUN_ov74_02119f38
	ldrb r2, [r5, #0x886]
	ldr r1, [r5, #0x54]
	ldr r0, _0211A2C4 ; =0x0209A070
	add r1, r2, r1
	add r1, r5, r1
	ldrb r1, [r1, #0x84]
	mov r2, #1
	bl FUN_ov16_020f6e8c
_0211A1C0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0211A23C
	tst r4, #1
	beq _0211A214
	ldr r0, _0211A2C8 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r2, [r5, #0x54]
	cmp r2, #0
	blt _0211A23C
	cmp r2, #4
	bge _0211A23C
	add r0, r2, r2, lsl #1
	add r1, r0, #0xf
	add r0, r2, #0x1f
	str r1, [r5, #0x28]
	add r0, r5, r0
	ldrb r1, [r0, #0x84]
	ldr r0, _0211A2C0 ; =0x0209F5C0
	b _0211A238
_0211A214:
	tst r4, #2
	beq _0211A23C
	ldr r0, _0211A2C8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r2, #0x1b
	ldrb r1, [r5, #0xa7]
	ldr r0, _0211A2C0 ; =0x0209F5C0
	str r2, [r5, #0x28]
_0211A238:
	bl FUN_ov16_020f6530
_0211A23C:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r4, #1
	beq _0211A294
	ldr r0, _0211A2C8 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r2, [r5, #0x54]
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r2, #3
	ldmgefd sp!, {r3, r4, r5, pc}
	mov r0, r2, lsl #1
	add r1, r0, #0x1f
	add r0, r2, #0x1f
	add r0, r5, r0
	str r1, [r5, #0x28]
	ldrb r1, [r0, #0x84]
	ldr r0, _0211A2C0 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, pc}
_0211A294:
	tst r4, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A2C8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r2, #0x1b
	ldrb r1, [r5, #0xa6]
	ldr r0, _0211A2C0 ; =0x0209F5C0
	str r2, [r5, #0x28]
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, pc}
_0211A2C0: .word unk_0209F5C0
_0211A2C4: .word unk_0209A070
_0211A2C8: .word unk_0209AC44
	arm_func_end FUN_ov74_0211a0a4

	arm_func_start FUN_ov74_0211a2cc
FUN_ov74_0211a2cc: ; 0x0211A2CC
	ldr r0, _0211A2E4 ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211A2E8 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211A2E4: .word unk_0209F5C0
_0211A2E8: .word  FUN_ov16_020f6b3c
	arm_func_end FUN_ov74_0211a2cc

	arm_func_start FUN_ov74_0211a2ec
FUN_ov74_0211a2ec: ; 0x0211A2EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	bl FUN_ov74_02119f68
	movs r1, r0
	bmi _0211A318
	ldr r0, [r4, #0x58]
	cmp r1, r0
	bge _0211A318
	mov r0, r4
	bl FUN_ov74_02119f38
_0211A318:
	ldr r1, [r4, #0x1c]
	ldr r0, _0211A328 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211A328: .word unk_0209A070
	arm_func_end FUN_ov74_0211a2ec

	arm_func_start FUN_ov74_0211a32c
FUN_ov74_0211a32c: ; 0x0211A32C
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, r1
	bne _0211A34C
	ldr r0, _0211A370 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211A34C:
	ldr r4, _0211A370 ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211A370: .word unk_0209A070
	arm_func_end FUN_ov74_0211a32c

	arm_func_start FUN_ov74_0211a374
FUN_ov74_0211a374: ; 0x0211A374
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0211A3E8
	ldr r0, [r4, #0x20]
	sub r0, r0, #0xe
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _0211A444
_0211A39C: ; jump table
	b _0211A3D8 ; case 0
	b _0211A3D8 ; case 1
	b _0211A3D8 ; case 2
	b _0211A3D8 ; case 3
	b _0211A3D8 ; case 4
	b _0211A3D8 ; case 5
	b _0211A3D8 ; case 6
	b _0211A3D8 ; case 7
	b _0211A3D8 ; case 8
	b _0211A3D8 ; case 9
	b _0211A3D8 ; case 10
	b _0211A3D8 ; case 11
	b _0211A3E4 ; case 12
	b _0211A3E4 ; case 13
	b _0211A3E4 ; case 14
_0211A3D8:
	ldr r0, _0211A484 ; =0x0209AC44
	mov r1, #1
	b _0211A440
_0211A3E4:
	b _0211A438
_0211A3E8:
	cmp r0, #1
	bne _0211A444
	ldr r0, [r4, #0x20]
	sub r0, r0, #0x1a
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _0211A444
_0211A404: ; jump table
	b _0211A438 ; case 0
	b _0211A438 ; case 1
	b _0211A438 ; case 2
	b _0211A434 ; case 3
	b _0211A434 ; case 4
	b _0211A434 ; case 5
	b _0211A434 ; case 6
	b _0211A434 ; case 7
	b _0211A434 ; case 8
	b _0211A434 ; case 9
	b _0211A434 ; case 10
	b _0211A434 ; case 11
_0211A434:
	b _0211A3D8
_0211A438:
	ldr r0, _0211A484 ; =0x0209AC44
	mov r1, #4
_0211A440:
	bl FUN_0202cf6c
_0211A444:
	ldr r6, _0211A488 ; =0x0209A070
	ldr r1, [r4, #0x1c]
	mov r0, r6
	bl FUN_ov16_020f6d3c
	movs r5, r0
	bmi _0211A478
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldr r0, _0211A48C ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f6530
_0211A478:
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A484: .word unk_0209AC44
_0211A488: .word unk_0209A070
_0211A48C: .word unk_0209F5C0
	arm_func_end FUN_ov74_0211a374

	arm_func_start FUN_ov74_0211a490
FUN_ov74_0211a490: ; 0x0211A490
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A57C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211A540
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0211A50C
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov74_0211a2cc
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211A50C
	mov r0, r4
	bl FUN_ov74_0211a2ec
_0211A50C:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x14]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x18]
	bl FUN_ov74_0211a2cc
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov74_0211a32c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A540:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ldrne r1, [r4, #0x1c]
	cmpne r1, #0
	beq _0211A568
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _0211A568
	mov r0, r4
	bl FUN_ov74_0211a374
_0211A568:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A57C: .word unk_0209F5C0
	arm_func_end FUN_ov74_0211a490

	arm_func_start FUN_ov74_0211a580
FUN_ov74_0211a580: ; 0x0211A580
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xbc
	mov r1, #0
	mov r2, #0x3c
	bl MI_CpuFill8
	ldr r0, _0211A5B0 ; =0x0211C1A4
	add r1, r4, #0xbc
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211A5B0: .word ov74_0211C1A4
	arm_func_end FUN_ov74_0211a580

	arm_func_start FUN_ov74_0211a5b4
FUN_ov74_0211a5b4: ; 0x0211A5B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0xbc]
	cmp r6, #0
	ldrne r1, _0211A600 ; =0x0211BF64
	ldrne r7, _0211A604 ; =0x0211BF64
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0xbc
	mov r4, #0xc
_0211A5DC:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211A5DC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A600: .word 0x0211BF64
_0211A604: .word 0x0211BF64
	arm_func_end FUN_ov74_0211a5b4

	arm_func_start FUN_ov74_0211a608
FUN_ov74_0211a608: ; 0x0211A608
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A654 ; =0x02099F38
	b _0211A644
_0211A61C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211A640
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A640:
	add r5, r5, #1
_0211A644:
	cmp r5, #0xa
	blt _0211A61C
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A654: .word unk_02099F38
	arm_func_end FUN_ov74_0211a608

	arm_func_start FUN_ov74_0211a658
FUN_ov74_0211a658: ; 0x0211A658
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, #0
	add r6, r4, #0xbc
	mov r5, #0xc
	b _0211A67C
_0211A670:
	mla r0, r7, r5, r6
	bl FUN_ov16_020f33fc
	add r7, r7, #1
_0211A67C:
	cmp r7, #5
	blt _0211A670
	mov r7, #0
	mov r6, r7
	ldr r5, _0211A6CC ; =0x02099F38
	b _0211A6B8
_0211A694:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211A6B4
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x2c]
_0211A6B4:
	add r7, r7, #1
_0211A6B8:
	cmp r7, #0xa
	blt _0211A694
	mov r0, r4
	bl FUN_ov74_0211b97c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A6CC: .word unk_02099F38
	arm_func_end FUN_ov74_0211a658

	arm_func_start FUN_ov74_0211a6d0
FUN_ov74_0211a6d0: ; 0x0211A6D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0xbc]
	ldr r5, [sp, #0x1c]
	mov r7, r2
	cmp r4, #0
	mov r6, r3
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r2, r6
	add r1, r7, #1
	bl FUN_ov16_020f18e8
	mov r7, r0
	cmp r5, #0
	beq _0211A728
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl FUN_ov16_020f19d4
	str r0, [r5]
_0211A728:
	cmp r6, #0
	blt _0211A740
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl FUN_ov16_020f1138
_0211A740:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov74_0211a6d0

	arm_func_start FUN_ov74_0211a748
FUN_ov74_0211a748: ; 0x0211A748
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	ldr r0, [r5, #0xa8]
	cmp r0, #0
	ldrne r0, [r5, #0xac]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211A7DC
	ldrh r2, [r5, #0xb4]
	ldrh r1, [r5, #0xb6]
	mov r4, #0x20
	ldr r0, [r5, #0xa8]
	mul r1, r2, r1
	mov r1, r1, lsl #1
	mov r2, #1
	mov r3, #0
	str r4, [r5, #0xb0]
	bl FUN_ov16_020f1868
	ldrh r1, [r5, #0xb4]
	ldrh r0, [r5, #0xb6]
	ldr r2, [sp, #8]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #8]
_0211A7DC:
	bl G2_GetBG1CharPtr
	mov r9, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r9
	bl DC_FlushRange
	mov r6, #2
	str r9, [sp, #8]
	mov r8, #1
	str r8, [sp]
	add r7, sp, #8
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, r6
	str r7, [sp, #4]
	bl FUN_ov74_0211a6d0
	mov r1, #3
	str r8, [sp]
	mov r2, r0
	mov r0, r5
	mov r3, r1
	str r7, [sp, #4]
	bl FUN_ov74_0211a6d0
	mov r1, #4
	str r8, [sp]
	mov r2, r0
	mov r0, r5
	mov r3, r1
	str r7, [sp, #4]
	bl FUN_ov74_0211a6d0
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r9
	bl DC_FlushRange
	str r9, [sp, #8]
	stmia sp, {r6, r7}
	mov r0, r5
	mov r1, r8
	mov r3, r8
	mov r2, r4
	bl FUN_ov74_0211a6d0
	ldr r3, [r5, #0xc8]
	cmp r3, #0
	beq _0211A8C4
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r4
	add r0, r3, r0
	bl GX_LoadBG2Scr
_0211A8C4:
	bl FUN_ov16_020f10ac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov74_0211a748

	arm_func_start FUN_ov74_0211a8d0
FUN_ov74_0211a8d0: ; 0x0211A8D0
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0xa8]
	cmp r0, #0
	ldrne r0, [lr, #0xac]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0xb8]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0xb4]
	ldrh r1, [lr, #0xb6]
	mov r12, #0
	ldr r0, [lr, #0xac]
	mul r3, r2, r1
	ldr r1, [lr, #0xb0]
	mov r2, r3, lsl #5
	strb r12, [lr, #0xb8]
	bl GX_LoadBG3Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov74_0211a8d0

	arm_func_start FUN_ov74_0211a928
FUN_ov74_0211a928: ; 0x0211A928
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r1, _0211ADF4 ; =0x0211C1C0
	mov r4, r0
	ldr r2, [r1]
	tst r2, #1
	bne _0211ABF0
	ldr r3, _0211ADF8 ; =0x0211C124
	mov r9, #1
	strb r9, [r3]
	mov r0, #0xe
	strb r0, [r3, #1]
	mov r8, #3
	strb r8, [r3, #2]
	strb r8, [r3, #3]
	mov r7, #4
	strb r7, [r3, #4]
	orr r2, r2, #1
	str r2, [r1]
	strb r8, [r3, #5]
	mov r6, #0x18
	strb r6, [r3, #6]
	strb r7, [r3, #7]
	mov r0, #0
	strb r0, [r3, #8]
	ldr r10, _0211ADFC ; =0x0211C12D
	ldr r5, _0211AE00 ; =0x0211C136
	ldr r0, _0211AE04 ; =0x0211C187
	ldr lr, _0211AE08 ; =0x0211C13F
	ldr r12, _0211AE0C ; =0x0211C148
	ldr r3, _0211AE10 ; =0x0211C151
	ldr r2, _0211AE14 ; =0x0211C163
	ldr r11, _0211AE18 ; =0x0211C15A
	mov r1, #0x10
	strb r1, [r10, #1]
	ldr r1, _0211AE1C ; =0x0211C16C
	strb r9, [r10]
	strb r8, [r10, #2]
	strb r8, [r10, #3]
	strb r7, [r10, #4]
	strb r8, [r10, #5]
	strb r6, [r10, #6]
	strb r7, [r10, #7]
	strb r9, [r10, #8]
	mov r10, #0xf
	strb r10, [r5, #1]
	strb r10, [r0, #5]
	mov r10, #2
	strb r10, [r5, #8]
	ldr r10, _0211AE20 ; =0x0211C175
	strb r9, [r5]
	strb r8, [r5, #2]
	strb r8, [r5, #3]
	strb r7, [r5, #4]
	strb r8, [r5, #5]
	strb r6, [r5, #6]
	strb r7, [r5, #7]
	mov r5, #0x11
	strb r5, [lr, #1]
	mov r5, #7
	strb r5, [lr, #5]
	strb r5, [r12, #5]
	strb r5, [r3, #5]
	strb r5, [r2, #8]
	mov r5, #0x13
	strb r5, [r12, #1]
	mov r5, #0x12
	strb r5, [r3, #1]
	mov r5, #0xf
	strb r5, [r10, #5]
	mov r5, #5
	strb r5, [r3, #8]
	ldr r5, _0211AE24 ; =0x0211C17E
	strb r9, [r3]
	strb r8, [r3, #2]
	strb r8, [r3, #3]
	strb r7, [r3, #4]
	strb r6, [r3, #6]
	strb r7, [r3, #7]
	mov r3, #0x14
	strb r3, [r11, #1]
	mov r3, #0xf
	strb r3, [r5, #5]
	ldr r3, _0211AE28 ; =0x0211C190
	strb r6, [lr, #6]
	strb r6, [r12, #6]
	strb r6, [r11, #6]
	strb r6, [r2, #6]
	strb r6, [r0, #1]
	strb r6, [r0, #6]
	strb r6, [r1, #6]
	strb r6, [r10, #6]
	strb r6, [r5, #6]
	mov r6, #0
	strb r6, [r3, #8]
	mov r6, #0xb
	strb r7, [lr, #4]
	strb r7, [lr, #7]
	strb r7, [r12, #4]
	strb r7, [r12, #7]
	strb r7, [r12, #8]
	strb r7, [r11, #4]
	strb r7, [r11, #7]
	strb r7, [r2, #4]
	strb r7, [r2, #7]
	strb r9, [r0]
	strb r8, [r0, #2]
	strb r8, [r0, #3]
	strb r7, [r0, #4]
	strb r7, [r0, #7]
	strb r6, [r0, #8]
	mov r0, #6
	strb r7, [r1, #4]
	strb r7, [r1, #7]
	strb r7, [r10, #4]
	strb r7, [r10, #7]
	strb r7, [r5, #4]
	strb r7, [r5, #7]
	mov r7, #0x16
	strb r7, [r2, #1]
	mov r7, #8
	strb r7, [r1, #8]
	mov r7, #9
	strb r7, [r10, #8]
	strb r9, [r11]
	strb r8, [r11, #2]
	strb r8, [r11, #3]
	strb r6, [r11, #5]
	strb r0, [r11, #8]
	mov r11, #0x15
	strb r9, [r12]
	strb r8, [r12, #2]
	strb r8, [r12, #3]
	ldr r12, _0211AE2C ; =0x0211C199
	mov r7, #0x1b
	strb r9, [r2]
	strb r8, [r2, #2]
	strb r8, [r2, #3]
	strb r6, [r2, #5]
	strb r6, [r1, #5]
	mov r6, #0x1a
	mov r2, #0x17
	strb r2, [r10, #1]
	mov r2, #0xa
	strb r9, [r1]
	strb r8, [r1, #2]
	strb r8, [r1, #3]
	strb r11, [r1, #1]
	mov r1, #0x19
	strb r1, [r5, #1]
	mov r1, #2
	strb r9, [lr]
	strb r8, [lr, #2]
	strb r8, [lr, #3]
	strb r8, [lr, #8]
	strb r9, [r10]
	strb r8, [r10, #2]
	strb r8, [r10, #3]
	strb r9, [r5]
	strb r8, [r5, #2]
	strb r8, [r5, #3]
	strb r2, [r5, #8]
	strb r9, [r3]
	strb r6, [r3, #1]
	strb r1, [r3, #2]
	strb r1, [r3, #3]
	strb r6, [r3, #4]
	strb r11, [r3, #5]
	strb r0, [r3, #6]
	strb r8, [r3, #7]
	strb r9, [r12]
	strb r7, [r12, #1]
	strb r1, [r12, #2]
	strb r1, [r12, #3]
	strb r6, [r12, #4]
	strb r11, [r12, #5]
	strb r0, [r12, #6]
	strb r8, [r12, #7]
	strb r9, [r12, #8]
_0211ABF0:
	mov r6, #0xe
	ldr r1, _0211ADF8 ; =0x0211C124
	mov r0, r4
	mov r2, r6
	bl FUN_ov74_0211baa0
	ldr r5, _0211AE30 ; =0x0209A070
	mov r8, #2
	mov r0, r5
	mov r1, r6
	str r8, [sp]
	mov r2, #0xf
	mov r3, #0x10
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0xa3]
	mov r0, r5
	str r8, [sp]
	mov r1, #0x11
	mov r2, #0x12
	mov r3, #0x13
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0xa4]
	str r8, [sp]
	mov r0, r5
	mov r1, #0x14
	mov r2, #0x15
	mov r3, #0x16
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0xa5]
	str r8, [sp]
	mov r0, r5
	mov r1, #0x17
	mov r7, #0x18
	mov r2, r7
	mov r3, #0x19
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0xa6]
	mov r6, #0
	str r6, [sp]
	mov r0, r5
	mov r1, #0x1a
	mov r2, #0x1b
	mov r3, r6
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0xa7]
	mov r0, r5
	mov r1, #4
	strb r1, [r4, #0x884]
	str r1, [r4, #0x58]
	mov r5, #1
	strb r5, [r4, #0x885]
	mov r1, #0x1f
	strb r1, [r4, #0x886]
	ldr r1, [r4, #0x54]
	mov r2, r5
	add r1, r1, #0x1f
	add r1, r4, r1
	ldrb r1, [r1, #0x84]
	bl FUN_ov16_020f6e8c
	mov r1, r5
	ldr r0, [r4, #4]
	mov r5, #0x1c
	mov r2, r5
	bl FUN_02041eac
	str r5, [r4, #0x5c]
	mov r1, r6
	mov r0, #5
	strb r0, [r4, #0x75]
	ldr r11, _0211AE34 ; =0x0209BA20
	mov r0, r11
	bl FUN_0207249c
	mov r6, r0
	ldr r0, _0211AE38 ; =0x020A0700
	ldr r5, _0211AE3C ; =0x020A1640
	add r9, r0, #0x400
	ldr r10, [r5, #0x230]
	ldrb r2, [r6, #0x2d]
	add r1, r4, #0x800
	add r0, r4, #0x890
	strh r2, [r1, #0xde]
	mov r1, r9
	bl strcpy
	mov r0, r11
	mov r1, r8
	bl FUN_020724c8
	mov r1, r6
	strb r0, [r4, #0x8d8]
	ldr r3, [r5, #0x248]
	ldr r0, _0211AE40 ; =0x36B06E71
	add r2, r4, #0x800
	umull r0, r6, r3, r0
	sub r0, r3, r6
	add r6, r6, r0, lsr #1
	mov r6, r6, lsr #0x11
	strh r6, [r2, #0xda]
	ldr r5, [r5, #0x248]
	ldr r0, _0211AE44 ; =0x91A2B3C5
	ldr r3, _0211AE48 ; =0x88888889
	umull r2, r0, r5, r0
	mov r0, r0, lsr #0xb
	umull r2, r3, r0, r3
	mov r3, r3, lsr #5
	mov r5, #0x3c
	umull r2, r3, r5, r3
	rsb r3, r2, r0
	strb r3, [r4, #0x8d9]
	add r0, r4, #0xa8
	add r0, r0, #0x800
	bl strcpy
	mov r3, r7
	ldr r1, [r9, #0x24]
	add r0, r4, #0x800
	strh r1, [r0, #0xdc]
	ldrsb r1, [r9, #0x2c]
	mov r0, r11
	add r2, r4, #0x8c0
	bl FUN_020735a0
	ldrh r3, [r10, #4]
	mov r0, r11
	mov r1, r8
	add r2, r4, #0x800
	strh r3, [r2, #0xe2]
	bl FUN_0207371c
	add r1, r9, #0xb4
	str r1, [r4, #0x900]
	add r1, r4, #0x800
	strh r0, [r1, #0xe4]
	add r0, r4, #0x890
	str r0, [r4, #0x78]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADF4: .word ov74_0211C1C0
_0211ADF8: .word ov74_0211C124
_0211ADFC: .word ov74_0211C12D
_0211AE00: .word ov74_0211C136
_0211AE04: .word ov74_0211C187
_0211AE08: .word ov74_0211C13F
_0211AE0C: .word ov74_0211C148
_0211AE10: .word ov74_0211C151
_0211AE14: .word ov74_0211C163
_0211AE18: .word ov74_0211C15A
_0211AE1C: .word ov74_0211C16C
_0211AE20: .word ov74_0211C175
_0211AE24: .word ov74_0211C17E
_0211AE28: .word ov74_0211C190
_0211AE2C: .word ov74_0211C199
_0211AE30: .word unk_0209A070
_0211AE34: .word unk_0209BA20
_0211AE38: .word unk_020A0700
_0211AE3C: .word unk_020A1640
_0211AE40: .word 0x36B06E71
_0211AE44: .word 0x91A2B3C5
_0211AE48: .word 0x88888889
	arm_func_end FUN_ov74_0211a928

	arm_func_start FUN_ov74_0211ae4c
FUN_ov74_0211ae4c: ; 0x0211AE4C
	ldr r0, _0211AE58 ; =0x0209F5C0
	ldr r12, _0211AE5C ; = FUN_ov16_020f6274
	bx r12
_0211AE58: .word unk_0209F5C0
_0211AE5C: .word  FUN_ov16_020f6274
	arm_func_end FUN_ov74_0211ae4c

	arm_func_start FUN_ov74_0211ae60
FUN_ov74_0211ae60: ; 0x0211AE60
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	ldr r0, _0211AEC8 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5ff4
	ldr r0, _0211AECC ; =0x0209A070
	bl FUN_ov16_020f6c4c
	mov r0, r5
	bl FUN_ov74_0211b97c
	ldr r0, [r5, #0xc]
	strb r4, [r5, #0x884]
	strb r4, [r5, #0x885]
	strb r4, [r5, #0x886]
	cmp r0, #0
	beq _0211AEB0
	cmp r0, #1
	beq _0211AEBC
	ldmfd sp!, {r3, r4, r5, pc}
_0211AEB0:
	mov r0, r5
	bl FUN_ov74_0211a928
	ldmfd sp!, {r3, r4, r5, pc}
_0211AEBC:
	mov r0, r5
	bl FUN_ov74_0211bae0
	ldmfd sp!, {r3, r4, r5, pc}
_0211AEC8: .word unk_0209F5C0
_0211AECC: .word unk_0209A070
	arm_func_end FUN_ov74_0211ae60

	arm_func_start FUN_ov74_0211aed0
FUN_ov74_0211aed0: ; 0x0211AED0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	mov r6, r0
	sub r7, r8, #1
	mov r5, #0x24
	mov r1, r8
	mov r2, r5
	add r0, r6, #0x84
	str r8, [r6, #8]
	strb r8, [r6, #0x10]
	strb r8, [r6, #0x11]
	str r7, [r6, #0x14]
	str r7, [r6, #0x18]
	str r8, [r6, #0x1c]
	str r8, [r6, #0x20]
	str r8, [r6, #0x24]
	str r8, [r6, #0x28]
	str r8, [r6, #0xc]
	mov r4, r8
	bl MI_CpuFill8
	ldr r0, _0211B0F4 ; =0x0209A070
	mov r1, r5
	bl FUN_ov16_020f6c20
	mov r1, #1
	add r0, r6, #0xa8
	str r8, [r6, #0x5c]
	str r8, [r6, #0x60]
	str r7, [r6, #0x64]
	str r8, [r6, #0x68]
	strb r8, [r6, #0x6c]
	strb r8, [r6, #0x6d]
	strb r8, [r6, #0x6e]
	str r8, [r6, #0x70]
	strb r8, [r6, #0x74]
	strb r8, [r6, #0x75]
	strb r8, [r6, #0x6f]
	str r8, [r6, #0x78]
	str r8, [r6, #0x7c]
	strb r8, [r6, #0x80]
	strb r8, [r6, #0x81]
	str r1, [r6, #0x88c]
	bl FUN_ov16_020f2f7c
	b _0211AF88
_0211AF7C:
	add r0, r6, r8, lsl #2
	str r4, [r0, #0x2c]
	add r8, r8, #1
_0211AF88:
	cmp r8, #0xa
	blt _0211AF7C
	mov r5, #0
	mov r1, r5
	add r0, r6, #0x100
	mov r2, #0x2c
	bl MI_CpuFill8
	ldr r0, _0211B0F8 ; =0x02099F38
	str r5, [r6, #0xfc]
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	mvn r2, #0
	mov r0, #0xbc
	b _0211B00C
_0211AFC0:
	mla r3, r5, r0, r6
	strb r4, [r3, #0x12c]
	strb r4, [r3, #0x144]
	strb r4, [r3, #0x174]
	add r1, r3, #0x100
	strh r4, [r1, #0x76]
	strb r4, [r3, #0x175]
	strh r4, [r1, #0x78]
	strh r4, [r1, #0x7a]
	strh r2, [r1, #0x7c]
	str r4, [r3, #0x19c]
	strh r4, [r1, #0x7e]
	strh r4, [r1, #0x80]
	strb r4, [r3, #0x182]
	strb r4, [r3, #0x1a0]
	strb r4, [r3, #0x1a1]
	strb r4, [r3, #0x19a]
	strb r4, [r3, #0x19b]
	add r5, r5, #1
_0211B00C:
	cmp r5, #0xa
	blt _0211AFC0
	ldr r1, [r6, #4]
	add r0, r6, #0x800
	sub r2, r4, #1
	strb r4, [r6, #0x887]
	strb r4, [r6, #0x889]
	strb r4, [r6, #0x888]
	strb r4, [r6, #0x88a]
	strb r4, [r6, #0x890]
	strb r4, [r6, #0x8a8]
	strb r4, [r6, #0x8d8]
	strh r4, [r0, #0xda]
	strb r4, [r6, #0x8d9]
	strh r4, [r0, #0xdc]
	strh r4, [r0, #0xde]
	strh r2, [r0, #0xe0]
	str r4, [r6, #0x900]
	strh r4, [r0, #0xe2]
	strh r4, [r0, #0xe4]
	strb r4, [r6, #0x8e6]
	strb r4, [r6, #0x904]
	strb r4, [r6, #0x905]
	strb r4, [r6, #0x8fe]
	strb r4, [r6, #0x8ff]
	strb r4, [r6, #0x94c]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x958]
	str r0, [r6, #0x54]
	bl FUN_ov16_020f47fc
	mov r5, #1
	mov r0, r5
	bl FUN_ov16_020f3f60
	mov r0, r6
	bl FUN_ov74_0211a580
	mov r0, r5
	mov r1, r4
	mov r2, r5
	bl GX_SetGraphicsMode
	ldr r1, _0211B0FC ; =0x0400000E
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
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B0F4: .word unk_0209A070
_0211B0F8: .word unk_02099F38
_0211B0FC: .word 0x0400000E
	arm_func_end FUN_ov74_0211aed0

	arm_func_start FUN_ov74_0211b100
FUN_ov74_0211b100: ; 0x0211B100
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r1, [r5, #8]
	mov r4, #0
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0211B350
_0211B120: ; jump table
	b _0211B350 ; case 0
	b _0211B138 ; case 1
	b _0211B290 ; case 2
	b _0211B2A8 ; case 3
	b _0211B2D0 ; case 4
	b _0211B2E0 ; case 5
_0211B138:
	add r0, r5, #0xbc
	mov r1, #5
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x5a
	bne _0211B194
	ldr r0, _0211B358 ; =0x0209A454
	strb r4, [r0, #0x31]
	ldr r0, [r5, #4]
	bl FUN_ov4_020bf6dc
	cmp r0, #0
	beq _0211B278
	mov r0, r5
	bl FUN_ov74_0211b58c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211B194:
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x5f
	bne _0211B1D8
	movs r0, #0
	beq _0211B1B8
	ldr r1, _0211B35C ; =0x0209A460
	mov r2, #0x11
	bl STD_CopyLString
_0211B1B8:
	ldr r0, _0211B35C ; =0x0209A460
	bl STD_GetStringLength
	cmp r0, #0
	ble _0211B1D8
	mov r0, r5
	bl FUN_ov74_0211b694
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211B1D8:
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x64
	bne _0211B224
	ldr r0, _0211B360 ; =0x020A9C40
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_020460c0
	ldr r0, [sp, #8]
	cmp r0, #1
	mov r0, r5
	bne _0211B214
	bl FUN_ov74_0211b6c8
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211B214:
	mov r1, #0
	bl FUN_ov74_0211b5cc
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211B224:
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x65
	bne _0211B278
	ldr r0, _0211B360 ; =0x020A9C40
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020460c0
	ldr r0, [sp]
	cmp r0, #1
	bne _0211B260
	mov r0, r5
	bl FUN_ov74_0211b58c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211B260:
	cmp r0, #0
	bne _0211B278
	mov r0, r5
	bl FUN_ov74_0211b694
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211B278:
	mov r0, r5
	bl FUN_ov74_0211a5b4
	mov r0, #2
	add sp, sp, #0x10
	str r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B290:
	bl FUN_ov74_0211a608
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #3
	str r0, [r5, #8]
_0211B2A8:
	mov r0, r5
	bl FUN_ov74_0211a748
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #4
	add sp, sp, #0x10
	str r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B2D0:
	mov r1, r4
	bl FUN_ov74_0211b414
	mov r0, #5
	str r0, [r5, #8]
_0211B2E0:
	mov r0, r5
	bl FUN_ov74_0211ae4c
	ldr r0, [r5, #4]
	add r1, r5, #0x5c
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r5
	bl FUN_ov74_0211b488
	ldr r6, _0211B364 ; =0x0209F5C0
	mov r1, r4
	mov r0, r6
	bl FUN_ov16_020f672c
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020f6584
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x28]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov74_0211b800
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020f672c
_0211B350:
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211B358: .word unk_0209A454
_0211B35C: .word unk_0209A460
_0211B360: .word unk_020A9C40
_0211B364: .word unk_0209F5C0
	arm_func_end FUN_ov74_0211b100

	arm_func_start FUN_ov74_0211b368
FUN_ov74_0211b368: ; 0x0211B368
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #5
	cmpne r1, #6
	cmpne r1, #7
	ldmnefd sp!, {r3, pc}
	bl FUN_ov74_0211a8d0
	ldr r0, _0211B394 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, pc}
_0211B394: .word unk_0209F5C0
	arm_func_end FUN_ov74_0211b368

	arm_func_start FUN_ov74_0211b398
FUN_ov74_0211b398: ; 0x0211B398
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211B404 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	ldr r0, _0211B408 ; =0x0209A070
	bl FUN_ov16_020f6c58
	add r0, r4, #0xbc
	mov r1, #5
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov74_0211a658
	ldr r0, _0211B40C ; =0x0209AEC0
	bl FUN_020465fc
	add r0, r4, #0xa8
	mov r1, #1
	bl FUN_ov16_020f2fe4
	ldr r0, _0211B410 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldrb r0, [r4, #0x94c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020f47fc
	mov r0, #4
	bl FUN_ov16_020f3f60
	ldmfd sp!, {r4, pc}
_0211B404: .word unk_0209F5C0
_0211B408: .word unk_0209A070
_0211B40C: .word unk_0209AEC0
_0211B410: .word unk_02099F38
	arm_func_end FUN_ov74_0211b398

	arm_func_start FUN_ov74_0211b414
FUN_ov74_0211b414: ; 0x0211B414
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r1, #0
	ldreq r0, [r4, #4]
	mov r5, #1
	addeq r0, r0, #0x1000
	ldreqb r0, [r0, #0x958]
	movne r0, #0
	str r0, [r4, #0x54]
	mov r0, r4
	str r5, [r4, #0x58]
	str r5, [r4, #0x88c]
	str r1, [r4, #0xc]
	bl FUN_ov74_0211ae60
	mov r0, r4
	mov r1, #0
	bl FUN_ov74_02119f00
	ldr r0, [r4, #0xc]
	mov r2, #2
	cmp r0, #0
	cmpne r0, #1
	strne r5, [r4, #0x58]
	mov r5, #0
	ldr r0, _0211B484 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f60f8
	str r5, [r4, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B484: .word unk_0209F5C0
	arm_func_end FUN_ov74_0211b414

	arm_func_start FUN_ov74_0211b488
FUN_ov74_0211b488: ; 0x0211B488
	bx lr
	arm_func_end FUN_ov74_0211b488

	arm_func_start FUN_ov74_0211b48c
FUN_ov74_0211b48c: ; 0x0211B48C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r1, #6
	str r1, [r5, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r5, #4]
	mov r4, #1
	str r4, [r0, #0x90]
	ldr r5, [r5, #4]
	mov r1, #0
	mov r0, r5
	mov r2, #0x1b
	bl FUN_02041eac
	mov r0, r5
	mov r1, r4
	mov r2, #0xf
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov74_0211b48c

	arm_func_start FUN_ov74_0211b4dc
FUN_ov74_0211b4dc: ; 0x0211B4DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r2, #6
	mov r5, #1
	ldr r1, _0211B584 ; =0x020A0640
	str r2, [r6, #8]
	strb r5, [r6, #0x94c]
	mov r4, #0
	strb r4, [r1, #0x1b]
	strb r4, [r1, #0x1a]
	ldr r1, [r6, #4]
	ldr r7, _0211B588 ; =0x0209A454
	add r1, r1, #0x1000
	strb r5, [r1, #0x958]
	str r4, [r7, #0x84]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	strb r5, [r7, #0x2e]
	strb r5, [r7, #0x2f]
	strb r4, [r7, #0x30]
	strb r4, [r7, #0x32]
	strb r4, [r7, #0x28]
	strb r4, [r7, #0x29]
	strb r4, [r7, #0x2a]
	strb r4, [r7, #0x2b]
	strb r5, [r7, #0x31]
	strb r5, [r7, #0x33]
	ldr r0, [r6, #4]
	bl FUN_ov4_020bf4ac
	strb r4, [r7, #0x88]
	ldr r7, [r6, #4]
	mov r6, #0x73
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl FUN_02041ef0
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B584: .word unk_020A0640
_0211B588: .word unk_0209A454
	arm_func_end FUN_ov74_0211b4dc

	arm_func_start FUN_ov74_0211b58c
FUN_ov74_0211b58c: ; 0x0211B58C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r2, #6
	mov r1, #1
	str r2, [r4, #8]
	strb r1, [r4, #0x94c]
	bl FUN_02041d9c
	ldr r0, _0211B5C8 ; =0x0209A454
	mov r1, #0
	str r1, [r0, #0x24]
	ldr r0, [r4, #4]
	mov r2, #0x19
	bl FUN_02041ef0
	ldmfd sp!, {r4, pc}
_0211B5C8: .word unk_0209A454
	arm_func_end FUN_ov74_0211b58c

	arm_func_start FUN_ov74_0211b5cc
FUN_ov74_0211b5cc: ; 0x0211B5CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r2, #6
	ldr r0, _0211B688 ; =0x020A0640
	str r2, [r7, #8]
	mov r6, #0
	strb r6, [r0, #0x1a]
	ldr r0, [r7, #4]
	mov r8, r1
	bl FUN_02041d9c
	ldr r0, [r7, #4]
	mov r1, r6
	mov r2, #0x5f
	bl FUN_02041ef0
	ldr r0, [r7, #4]
	mov r5, #2
	add r0, r0, #0x1000
	strb r5, [r0, #0x958]
	mov r4, #1
	strb r4, [r7, #0x94c]
	cmp r8, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B68C ; =0x0209BA20
	mov r1, r6
	bl FUN_0207249c
	ldrb r0, [r0, #0x2d]
	cmp r0, #0
	beq _0211B664
	ldr r0, _0211B690 ; =0x0209A454
	mov r1, #3
	str r6, [r0, #8]
	strb r6, [r0, #0xc]
	str r1, [r0, #4]
	strb r6, [r0, #0x1e]
	strb r4, [r0, #0x1f]
	strb r6, [r0, #0x20]
	strb r6, [r0, #0x1d]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B664:
	ldr r0, _0211B690 ; =0x0209A454
	str r6, [r0, #8]
	strb r6, [r0, #0xc]
	str r5, [r0, #4]
	strb r6, [r0, #0x1e]
	strb r4, [r0, #0x1f]
	strb r6, [r0, #0x20]
	strb r6, [r0, #0x1d]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B688: .word unk_020A0640
_0211B68C: .word unk_0209BA20
_0211B690: .word unk_0209A454
	arm_func_end FUN_ov74_0211b5cc

	arm_func_start FUN_ov74_0211b694
FUN_ov74_0211b694: ; 0x0211B694
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r2, #6
	mov r1, #1
	str r2, [r4, #8]
	strb r1, [r4, #0x94c]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x64
	bl FUN_02041ef0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov74_0211b694

	arm_func_start FUN_ov74_0211b6c8
FUN_ov74_0211b6c8: ; 0x0211B6C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r2, #6
	mov r1, #1
	str r2, [r4, #8]
	strb r1, [r4, #0x94c]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x65
	bl FUN_02041ef0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov74_0211b6c8

	arm_func_start FUN_ov74_0211b6fc
FUN_ov74_0211b6fc: ; 0x0211B6FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	mov r2, #6
	str r2, [r4, #8]
	add r1, r1, #0x1000
	mov r6, #0
	strb r6, [r1, #0x958]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r5, #1
	str r5, [r0, #0x90]
	ldr r4, [r4, #4]
	mov r1, r6
	mov r0, r4
	mov r2, #0x1f
	bl FUN_02041eac
	mov r0, r4
	mov r1, r5
	mov r2, #0x20
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov74_0211b6fc

	arm_func_start FUN_ov74_0211b75c
FUN_ov74_0211b75c: ; 0x0211B75C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r6, #1
	mov r1, #6
	strb r6, [r4, #0x94c]
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r2, _0211B7F8 ; =0x0209A454
	mov r1, #0
	str r1, [r2, #0x84]
	strb r6, [r2, #0x2e]
	strb r6, [r2, #0x2f]
	strb r1, [r2, #0x30]
	strb r1, [r2, #0x31]
	strb r1, [r2, #0x32]
	strb r1, [r2, #0x33]
	strb r1, [r2, #0x28]
	strb r1, [r2, #0x29]
	strb r1, [r2, #0x2a]
	mov r5, #0x62
	ldr r0, _0211B7FC ; =0x020A0640
	strb r1, [r2, #0x2b]
	strb r1, [r0, #0x1b]
	strb r1, [r0, #0x1a]
	ldr r7, [r4, #4]
	mov r2, r5
	mov r0, r7
	bl FUN_02041ef0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_02041ef0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	strb r1, [r0, #0x958]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B7F8: .word unk_0209A454
_0211B7FC: .word unk_020A0640
	arm_func_end FUN_ov74_0211b75c

	arm_func_start FUN_ov74_0211b800
FUN_ov74_0211b800: ; 0x0211B800
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211B8C8
	ldr r1, [r4, #0x28]
	cmp r1, #0xe
	blt _0211B830
	cmp r1, #0x10
	bgt _0211B830
	bl FUN_ov74_0211b6fc
	b _0211B8A8
_0211B830:
	ldr r0, [r4, #0x28]
	cmp r0, #0x11
	blt _0211B860
	cmp r0, #0x13
	bgt _0211B860
	ldr r1, [r4, #4]
	mov r0, r4
	add r2, r1, #0x1000
	mov r1, #1
	strb r1, [r2, #0x958]
	bl FUN_ov74_0211b414
	b _0211B8A8
_0211B860:
	ldr r0, [r4, #0x28]
	cmp r0, #0x14
	blt _0211B88C
	cmp r0, #0x16
	bgt _0211B88C
	mov r0, r4
	mov r1, #1
	bl FUN_ov74_0211b5cc
	mov r0, #6
	strb r0, [r4, #0x75]
	b _0211B8A8
_0211B88C:
	ldr r0, [r4, #0x28]
	cmp r0, #0x17
	blt _0211B8A8
	cmp r0, #0x19
	bgt _0211B8A8
	mov r0, r4
	bl FUN_ov74_0211b75c
_0211B8A8:
	ldr r0, [r4, #0x28]
	cmp r0, #0x1a
	blt _0211B968
	cmp r0, #0x1c
	bgt _0211B968
	mov r0, r4
	bl FUN_ov74_0211b48c
	b _0211B968
_0211B8C8:
	cmp r1, #1
	bne _0211B968
	ldr r0, [r4, #0x28]
	cmp r0, #0x1d
	blt _0211B908
	cmp r0, #0x1f
	bgt _0211B908
	ldr r2, _0211B974 ; =0x020A1640
	mov r1, #0
_0211B8EC:
	ldr r0, _0211B978 ; =0x02099F44
	strb r1, [r2, #0x22]
	ldr r0, [r0]
	bl FUN_ov131_021421f4
	mov r0, r4
	bl FUN_ov74_0211b4dc
	b _0211B968
_0211B908:
	ldr r0, [r4, #0x28]
	cmp r0, #0x20
	blt _0211B928
	cmp r0, #0x22
	bgt _0211B928
	ldr r2, _0211B974 ; =0x020A1640
	mov r1, #1
	b _0211B8EC
_0211B928:
	ldr r0, [r4, #0x28]
	cmp r0, #0x23
	blt _0211B948
	cmp r0, #0x25
	bgt _0211B948
	ldr r2, _0211B974 ; =0x020A1640
	mov r1, #2
	b _0211B8EC
_0211B948:
	ldr r0, [r4, #0x28]
	cmp r0, #0x1a
	blt _0211B968
	cmp r0, #0x1c
	bgt _0211B968
	mov r0, r4
	mov r1, #0
	bl FUN_ov74_0211b414
_0211B968:
	mov r0, #0
	str r0, [r4, #0x28]
	ldmfd sp!, {r4, pc}
_0211B974: .word unk_020A1640
_0211B978: .word unk_02099F44
	arm_func_end FUN_ov74_0211b800

	arm_func_start FUN_ov74_0211b97c
FUN_ov74_0211b97c: ; 0x0211B97C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211B9E4 ; =0x02099F38
	b _0211B9B8
_0211B994:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x100]
	cmp r1, #0
	beq _0211B9B4
	ldr r0, [r5]
	bl FUN_ov16_021128c4
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x100]
_0211B9B4:
	add r7, r7, #1
_0211B9B8:
	cmp r7, #0xb
	blt _0211B994
	ldr r1, [r4, #0xfc]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B9E4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0xfc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B9E4: .word unk_02099F38
	arm_func_end FUN_ov74_0211b97c

	arm_func_start FUN_ov74_0211b9e8
FUN_ov74_0211b9e8: ; 0x0211B9E8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r3, r1
	ldrb r2, [r3, #2]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r4, [r0, #0xbc]
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
	ldr r0, _0211BA9C ; =0x0209F5C0
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211BA9C: .word unk_0209F5C0
	arm_func_end FUN_ov74_0211b9e8

	arm_func_start FUN_ov74_0211baa0
FUN_ov74_0211baa0: ; 0x0211BAA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	cmp r5, #0
	mov r7, r0
	mov r6, r1
	mov r4, #0
	cmpgt r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0211BAC0:
	mov r0, r7
	mov r1, r6
	bl FUN_ov74_0211b9e8
	add r4, r4, #1
	cmp r4, r5
	add r6, r6, #9
	blt _0211BAC0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov74_0211baa0

	arm_func_start FUN_ov74_0211bae0
FUN_ov74_0211bae0: ; 0x0211BAE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r2, _0211BF00 ; =0x0211C1C0
	mov r4, r0
	ldr r3, [r2, #4]
	tst r3, #1
	bne _0211BD20
	ldr r6, _0211BF04 ; =0x0211C04C
	mov r10, #1
	strb r10, [r6]
	mov r0, #0x1d
	strb r0, [r6, #1]
	mov r9, #4
	strb r9, [r6, #2]
	strb r9, [r6, #3]
	mov r1, #5
	strb r1, [r6, #4]
	orr r3, r3, #1
	str r3, [r2, #4]
	strb r9, [r6, #5]
	mov r0, #0x16
	strb r0, [r6, #6]
	strb r9, [r6, #7]
	mov r5, #0
	strb r5, [r6, #8]
	ldr r11, _0211BF08 ; =0x0211C055
	ldr r8, _0211BF0C ; =0x0211C05E
	ldr r5, _0211BF10 ; =0x0211C070
	ldr lr, _0211BF14 ; =0x0211C079
	ldr r6, _0211BF18 ; =0x0211C067
	ldr r12, _0211BF1C ; =0x0211C082
	ldr r3, _0211BF20 ; =0x0211C08B
	ldr r2, _0211BF24 ; =0x0211C094
	mov r7, #2
	strb r1, [r11, #4]
	strb r1, [r8, #4]
	strb r1, [r6, #4]
	strb r1, [r5, #4]
	strb r1, [lr, #4]
	strb r1, [lr, #8]
	strb r1, [r12, #4]
	strb r1, [r3, #4]
	strb r1, [r2, #4]
	mov r1, #9
	strb r1, [r6, #5]
	strb r1, [r5, #5]
	strb r1, [lr, #5]
	mov r1, #0xe
	strb r1, [r12, #5]
	strb r1, [r3, #5]
	strb r1, [r2, #5]
	ldr r1, _0211BF28 ; =0x0211C09D
	strb r0, [r11, #6]
	strb r0, [r8, #6]
	strb r0, [r6, #6]
	strb r0, [r5, #6]
	strb r0, [lr, #6]
	strb r0, [r12, #6]
	strb r0, [r3, #6]
	strb r0, [r2, #6]
	mov r0, #0
	strb r0, [r1, #8]
	ldr r0, _0211BF2C ; =0x0211C0A6
	strb r9, [r11, #2]
	strb r9, [r11, #3]
	strb r9, [r11, #5]
	strb r9, [r11, #7]
	strb r9, [r8, #2]
	strb r9, [r8, #3]
	strb r9, [r8, #5]
	strb r9, [r8, #7]
	strb r9, [r6, #2]
	strb r9, [r6, #3]
	strb r9, [r6, #7]
	strb r9, [r5, #2]
	strb r9, [r5, #3]
	strb r9, [r5, #7]
	strb r9, [r5, #8]
	strb r9, [lr, #2]
	strb r9, [lr, #3]
	strb r9, [lr, #7]
	strb r9, [r12, #2]
	strb r9, [r12, #3]
	strb r9, [r12, #7]
	strb r9, [r3, #2]
	strb r9, [r3, #3]
	strb r9, [r3, #7]
	strb r9, [r2, #2]
	strb r9, [r2, #3]
	strb r9, [r2, #7]
	mov r9, #3
	strb r9, [r6, #8]
	strb r9, [r1, #7]
	strb r9, [r0, #7]
	mov r9, #6
	strb r9, [r12, #8]
	strb r9, [r1, #6]
	strb r9, [r0, #6]
	mov r9, #0x1a
	strb r9, [r1, #1]
	strb r9, [r1, #4]
	strb r9, [r0, #4]
	mov r9, #0x15
	strb r9, [r1, #5]
	mov r9, #0x1f
	strb r9, [r8, #1]
	mov r9, #0x21
	strb r9, [r5, #1]
	strb r10, [r5]
	mov r9, #7
	mov r5, #0x25
	strb r10, [r1]
	strb r7, [r1, #2]
	strb r7, [r1, #3]
	mov r1, #0x1e
	strb r1, [r11, #1]
	mov r1, #0x20
	strb r1, [r6, #1]
	mov r1, #0x24
	strb r10, [r6]
	mov r6, #0x23
	strb r1, [r3, #1]
	mov r1, #0x15
	strb r10, [r8]
	strb r7, [r8, #8]
	mov r8, #0x22
	strb r8, [lr, #1]
	mov r8, #0x1b
	strb r10, [r11]
	strb r10, [r11, #8]
	mov r11, #8
	strb r10, [lr]
	strb r10, [r12]
	strb r10, [r3]
	strb r10, [r2]
	strb r6, [r12, #1]
	strb r9, [r3, #8]
	strb r5, [r2, #1]
	strb r11, [r2, #8]
	strb r10, [r0]
	strb r8, [r0, #1]
	strb r7, [r0, #2]
	strb r7, [r0, #3]
	strb r1, [r0, #5]
	strb r10, [r0, #8]
_0211BD20:
	ldr r1, _0211BF04 ; =0x0211C04C
	mov r0, r4
	mov r2, #0xb
	bl FUN_ov74_0211baa0
	ldr r8, _0211BF30 ; =0x0209A070
	mov r6, #2
	mov r7, #0x1f
	mov r0, r8
	mov r2, r7
	str r6, [sp]
	mov r1, #0x1d
	mov r3, #0x1e
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0xa3]
	mov r0, r8
	str r6, [sp]
	mov r1, #0x20
	mov r2, #0x22
	mov r3, #0x21
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0xa4]
	str r6, [sp]
	mov r0, r8
	mov r1, #0x23
	mov r2, #0x25
	mov r3, #0x24
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0xa5]
	mov r5, #0
	str r5, [sp]
	mov r0, r8
	mov r1, #0x1a
	mov r2, #0x1b
	mov r3, r5
	bl FUN_ov16_020f6c8c
	strb r7, [r4, #0x886]
	strb r0, [r4, #0xa6]
	mov r0, r8
	mov r1, #3
	strb r1, [r4, #0x884]
	str r1, [r4, #0x58]
	mov r7, #1
	strb r7, [r4, #0x885]
	ldr r1, [r4, #0x54]
	mov r2, r7
	add r1, r1, #0x1f
	add r1, r4, r1
	ldrb r1, [r1, #0x84]
	bl FUN_ov16_020f6e8c
	mov r1, r7
	ldr r0, [r4, #4]
	mov r7, #0x1c
	mov r2, r7
	bl FUN_02041eac
	str r7, [r4, #0x5c]
	mov r1, r5
	mov r0, #5
	strb r0, [r4, #0x75]
	ldr r5, _0211BF34 ; =0x0209BA20
	mov r0, r5
	bl FUN_0207249c
	mov r10, r0
	ldr r0, _0211BF38 ; =0x020A0700
	ldr r9, _0211BF3C ; =0x020A1640
	add r7, r0, #0x400
	ldr r8, [r9, #0x230]
	ldrb r2, [r10, #0x2d]
	add r1, r4, #0x800
	add r0, r4, #0x890
	strh r2, [r1, #0xde]
	mov r1, r7
	bl strcpy
	mov r0, r5
	mov r1, r6
	bl FUN_020724c8
	mov r1, r10
	strb r0, [r4, #0x8d8]
	ldr r3, [r9, #0x248]
	ldr r0, _0211BF40 ; =0x36B06E71
	add r2, r4, #0x800
	umull r0, r10, r3, r0
	sub r0, r3, r10
	add r10, r10, r0, lsr #1
	mov r10, r10, lsr #0x11
	strh r10, [r2, #0xda]
	ldr r9, [r9, #0x248]
	ldr r0, _0211BF44 ; =0x91A2B3C5
	ldr r3, _0211BF48 ; =0x88888889
	umull r2, r0, r9, r0
	mov r0, r0, lsr #0xb
	umull r2, r3, r0, r3
	mov r3, r3, lsr #5
	mov r9, #0x3c
	umull r2, r3, r9, r3
	rsb r3, r2, r0
	strb r3, [r4, #0x8d9]
	add r0, r4, #0xa8
	add r0, r0, #0x800
	bl strcpy
	ldr r1, [r7, #0x24]
	add r0, r4, #0x800
	strh r1, [r0, #0xdc]
	ldrsb r1, [r7, #0x2c]
	mov r0, r5
	add r2, r4, #0x8c0
	mov r3, #0x18
	bl FUN_020735a0
	ldrh r3, [r8, #4]
	mov r0, r5
	mov r1, r6
	add r2, r4, #0x800
	strh r3, [r2, #0xe2]
	bl FUN_0207371c
	add r1, r7, #0xb4
	str r1, [r4, #0x900]
	add r1, r4, #0x800
	strh r0, [r1, #0xe4]
	add r0, r4, #0x890
	str r0, [r4, #0x78]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF00: .word ov74_0211C1C0
_0211BF04: .word ov74_0211C04C
_0211BF08: .word ov74_0211C055
_0211BF0C: .word ov74_0211C05E
_0211BF10: .word ov74_0211C070
_0211BF14: .word ov74_0211C079
_0211BF18: .word ov74_0211C067
_0211BF1C: .word ov74_0211C082
_0211BF20: .word ov74_0211C08B
_0211BF24: .word ov74_0211C094
_0211BF28: .word ov74_0211C09D
_0211BF2C: .word ov74_0211C0A6
_0211BF30: .word unk_0209A070
_0211BF34: .word unk_0209BA20
_0211BF38: .word unk_020A0700
_0211BF3C: .word unk_020A1640
_0211BF40: .word 0x36B06E71
_0211BF44: .word 0x91A2B3C5
_0211BF48: .word 0x88888889
	arm_func_end FUN_ov74_0211bae0

	arm_func_start FUN_ov74_0211bf4c
FUN_ov74_0211bf4c: ; 0x0211BF4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov74_0211bf4c

	arm_func_start FUN_ov74_0211bf60
FUN_ov74_0211bf60: ; 0x0211BF60
	bx lr
	arm_func_end FUN_ov74_0211bf60
_0211BF64:
	.byte 0x3C, 0xC0, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x24, 0xC0, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x30, 0xC0, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x18, 0xC0, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov74_0211bf8c
FUN_ov74_0211bf8c: ; 0x0211BF8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211BFD4 ; =0x0211C000
	str r0, [r4, #0x10]
	ldr r0, _0211BFD8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211BFDC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BFD4: .word ov74_0211C000
_0211BFD8: .word 0x00009CCD
_0211BFDC: .word 0x0000EA3C
	arm_func_end FUN_ov74_0211bf8c

	.section .sinit, 4
ov74_0211BFE0:
	.word FUN_ov74_0211bf8c

	.data
	.global ov74_0211C000
ov74_0211C000:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x31, 0x38, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x62, 0x36, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.global ov74_0211C04C
ov74_0211C04C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C055
ov74_0211C055:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C05E
ov74_0211C05E:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C067
ov74_0211C067:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C070
ov74_0211C070:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C079
ov74_0211C079:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00
	.global ov74_0211C082
ov74_0211C082:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C08B
ov74_0211C08B:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C094
ov74_0211C094:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C09D
ov74_0211C09D:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C0A6
ov74_0211C0A6:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0xBF, 0x11, 0x02, 0x4C, 0xBF, 0x11, 0x02
	.byte 0xA4, 0xA0, 0x11, 0x02, 0x90, 0xA4, 0x11, 0x02, 0xD0, 0xAE, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB1, 0x11, 0x02, 0x68, 0xB3, 0x11, 0x02, 0x98, 0xB3, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov74_0211C124
ov74_0211C124:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C12D
ov74_0211C12D:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C136
ov74_0211C136:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C13F
ov74_0211C13F:
	.byte 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C148
ov74_0211C148:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00
	.global ov74_0211C151
ov74_0211C151:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C15A
ov74_0211C15A:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00
	.global ov74_0211C163
ov74_0211C163:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C16C
ov74_0211C16C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C175
ov74_0211C175:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C17E
ov74_0211C17E:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C187
ov74_0211C187:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C190
ov74_0211C190:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C199
ov74_0211C199:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov74_0211C1A4
ov74_0211C1A4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x4D, 0x54, 0x53, 0x53, 0x72, 0x64, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00

	.bss
	.global ov74_0211C1C0
ov74_0211C1C0:
	.space 0x20


	.include "/macros/function.inc"
	.include "/include/overlay73.inc"

	.text
	arm_func_start FUN_ov73_02119f00
FUN_ov73_02119f00: ; 0x02119F00
	cmp r0, #0
	blt _02119F34
	cmp r0, #0xa
	bge _02119F34
	ldr r1, _02119F3C ; =0x00000808
	ldr r2, _02119F40 ; =0x020A1640
	mul r1, r0, r1
	ldr r0, [r2, #0x230]
	add r0, r0, #8
	ldrb r0, [r0, r1]
	cmp r0, #0
	movne r0, #1
	bxne lr
_02119F34:
	mov r0, #0
	bx lr
_02119F3C: .word 0x00000808
_02119F40: .word 0x020A1640
	arm_func_end FUN_ov73_02119f00

	arm_func_start FUN_ov73_02119f44
FUN_ov73_02119f44: ; 0x02119F44
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r5, _02119F78 ; =0x0209F5C0
	mov r4, r6
_02119F54:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl  FUN_ov16_020f6084
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x20
	blo _02119F54
	ldmfd sp!, {r4, r5, r6, pc}
_02119F78: .word 0x0209F5C0
	arm_func_end FUN_ov73_02119f44

	arm_func_start FUN_ov73_02119f7c
FUN_ov73_02119f7c: ; 0x02119F7C
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end FUN_ov73_02119f7c

	arm_func_start FUN_ov73_02119f84
FUN_ov73_02119f84: ; 0x02119F84
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0211A094
	cmp r1, #0x1f
	addls pc, pc, r1, lsl #2
	b _0211A08C
_02119F9C: ; jump table
	b _0211A08C ; case 0
	b _0211A08C ; case 1
	b _0211A08C ; case 2
	b _0211A08C ; case 3
	b _0211A01C ; case 4
	b _0211A024 ; case 5
	b _0211A02C ; case 6
	b _0211A034 ; case 7
	b _0211A03C ; case 8
	b _0211A044 ; case 9
	b _0211A04C ; case 10
	b _0211A054 ; case 11
	b _0211A05C ; case 12
	b _0211A064 ; case 13
	b _0211A06C ; case 14
	b _0211A06C ; case 15
	b _0211A06C ; case 16
	b _0211A074 ; case 17
	b _0211A074 ; case 18
	b _0211A074 ; case 19
	b _0211A08C ; case 20
	b _0211A08C ; case 21
	b _0211A08C ; case 22
	b _0211A08C ; case 23
	b _0211A08C ; case 24
	b _0211A08C ; case 25
	b _0211A07C ; case 26
	b _0211A07C ; case 27
	b _0211A07C ; case 28
	b _0211A084 ; case 29
	b _0211A084 ; case 30
	b _0211A084 ; case 31
_0211A01C:
	mov r0, #0
	bx lr
_0211A024:
	mov r0, #1
	bx lr
_0211A02C:
	mov r0, #2
	bx lr
_0211A034:
	mov r0, #3
	bx lr
_0211A03C:
	mov r0, #4
	bx lr
_0211A044:
	mov r0, #5
	bx lr
_0211A04C:
	mov r0, #6
	bx lr
_0211A054:
	mov r0, #7
	bx lr
_0211A05C:
	mov r0, #8
	bx lr
_0211A064:
	mov r0, #9
	bx lr
_0211A06C:
	mov r0, #0xa
	bx lr
_0211A074:
	mov r0, #0xb
	bx lr
_0211A07C:
	mov r0, #0xc
	bx lr
_0211A084:
	mov r0, #0xd
	bx lr
_0211A08C:
	mvn r0, #0
	bx lr
_0211A094:
	sub r0, r1, #0xe
	cmp r0, #0x11
	addls pc, pc, r0, lsl #2
	b _0211A10C
_0211A0A4: ; jump table
	b _0211A0EC ; case 0
	b _0211A0EC ; case 1
	b _0211A0EC ; case 2
	b _0211A0F4 ; case 3
	b _0211A0F4 ; case 4
	b _0211A0F4 ; case 5
	b _0211A10C ; case 6
	b _0211A10C ; case 7
	b _0211A10C ; case 8
	b _0211A10C ; case 9
	b _0211A10C ; case 10
	b _0211A10C ; case 11
	b _0211A0FC ; case 12
	b _0211A0FC ; case 13
	b _0211A0FC ; case 14
	b _0211A104 ; case 15
	b _0211A104 ; case 16
	b _0211A104 ; case 17
_0211A0EC:
	mov r0, #0
	bx lr
_0211A0F4:
	mov r0, #1
	bx lr
_0211A0FC:
	mov r0, #2
	bx lr
_0211A104:
	mov r0, #3
	bx lr
_0211A10C:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov73_02119f84

	arm_func_start FUN_ov73_0211a114
FUN_ov73_0211a114: ; 0x0211A114
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #5
	ldreqb r0, [r5, #0x11]
	cmpeq r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	ldr r0, _0211A4F8 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	add r0, r5, #0x100
	strh r4, [r0, #0x7c]
	tst r4, #0x40
	beq _0211A1A0
	ldrb r0, [r5, #0x90c]
	cmp r0, #0
	ldrneb r0, [r5, #0x90d]
	cmpne r0, #0
	beq _0211A290
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x90c]
	ldrb r0, [r5, #0x90d]
	ldr r2, [r5, #0x5c]
	smulbb r1, r1, r0
	add r2, r2, r1
	sub r0, r2, r0
	b _0211A264
_0211A1A0:
	tst r4, #0x80
	beq _0211A1E0
	ldrb r0, [r5, #0x90c]
	cmp r0, #0
	ldrneb r0, [r5, #0x90d]
	cmpne r0, #0
	beq _0211A290
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldrb r2, [r5, #0x90d]
	ldrb r0, [r5, #0x90c]
	ldr r3, [r5, #0x5c]
	smulbb r1, r0, r2
	add r0, r3, r2
	b _0211A264
_0211A1E0:
	tst r4, #0x20
	beq _0211A228
	ldrb r0, [r5, #0x90c]
	cmp r0, #0
	beq _0211A290
	ldrb r0, [r5, #0x90d]
	cmp r0, #1
	bls _0211A290
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x90c]
	ldrb r0, [r5, #0x90d]
	ldr r2, [r5, #0x5c]
	smulbb r1, r1, r0
	add r0, r2, r1
	sub r0, r0, #1
	b _0211A264
_0211A228:
	tst r4, #0x10
	ldrneb r0, [r5, #0x90c]
	cmpne r0, #0
	beq _0211A290
	ldrb r0, [r5, #0x90d]
	cmp r0, #1
	bls _0211A290
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r5, #0x5c]
	ldrb r2, [r5, #0x90c]
	ldrb r1, [r5, #0x90d]
	add r0, r0, #1
	smulbb r1, r2, r1
_0211A264:
	bl FUN_0201f9bc
	mov r0, r5
	bl FUN_ov73_02119f7c
	ldrb r2, [r5, #0x90e]
	ldr r1, [r5, #0x5c]
	ldr r0, _0211A500 ; =0x0209A070
	add r1, r2, r1
	add r1, r5, r1
	ldrb r1, [r1, #0x90]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
_0211A290:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0211A3A0
	tst r4, #1
	beq _0211A2DC
	ldr r0, [r5, #0x5c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211A2D8
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r2, #0xf
	ldrb r1, [r5, #0xac]
_0211A2C8:
	ldr r0, _0211A4F8 ; =0x0209F5C0
	str r2, [r5, #0x28]
	bl  FUN_ov16_020f6530
	b _0211A38C
_0211A2D8:
	b _0211A380
_0211A2DC:
	tst r4, #0x800
	beq _0211A310
	ldr r0, [r5, #0x5c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211A30C
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r2, #0x12
	ldrb r1, [r5, #0xad]
	b _0211A2C8
_0211A30C:
	b _0211A380
_0211A310:
	tst r4, #2
	beq _0211A330
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r2, #0x1b
	ldrb r1, [r5, #0xb0]
	b _0211A2C8
_0211A330:
	tst r4, #0x400
	beq _0211A38C
	ldr r0, [r5, #0x5c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211A380
	ldr r1, [r5, #0x5c]
	mov r0, r5
	bl FUN_ov73_0211c980
	cmp r0, #0
	ldrneb r0, [r0, #0x74]
	cmpne r0, #0
	beq _0211A37C
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r2, #0x1e
	ldrb r1, [r5, #0xb1]
	b _0211A2C8
_0211A37C:
	b _0211A380
_0211A380:
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
_0211A38C:
	tst r4, #0xf0
	ldrne r0, [r5, #0x5c]
	andne r0, r0, #0xff
	strneb r0, [r5, #0x90f]
	strneb r0, [r5, #0x910]
_0211A3A0:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0211A424
	tst r4, #1
	beq _0211A3FC
	ldr r0, [r5, #0x5c]
	cmp r0, #4
	bne _0211A3CC
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #4
	b _0211A3D4
_0211A3CC:
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #1
_0211A3D4:
	bl FUN_0202cf6c
	ldr r1, [r5, #0x5c]
	ldr r0, _0211A4F8 ; =0x0209F5C0
	add r2, r1, r1, lsl #1
	add r2, r2, #0xf
	add r1, r1, #0x1c
	str r2, [r5, #0x28]
	add r1, r5, r1
	ldrb r1, [r1, #0x90]
	b _0211A420
_0211A3FC:
	tst r4, #2
	beq _0211A424
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r2, #0x1b
	ldrb r1, [r5, #0xb0]
	ldr r0, _0211A4F8 ; =0x0209F5C0
	str r2, [r5, #0x28]
_0211A420:
	bl  FUN_ov16_020f6530
_0211A424:
	ldr r0, [r5, #0xc]
	cmp r0, #2
	bne _0211A458
	tst r4, #3
	beq _0211A458
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r2, #0xf
	ldrb r1, [r5, #0xac]
	ldr r0, _0211A4F8 ; =0x0209F5C0
	str r2, [r5, #0x28]
	bl  FUN_ov16_020f6530
_0211A458:
	ldr r0, [r5, #0xc]
	cmp r0, #3
	bne _0211A48C
	tst r4, #3
	beq _0211A48C
	ldr r0, _0211A4FC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r2, #0xf
	ldrb r1, [r5, #0xac]
	ldr r0, _0211A4F8 ; =0x0209F5C0
	str r2, [r5, #0x28]
	bl  FUN_ov16_020f6530
_0211A48C:
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x5c]
	add r3, sp, #8
	mov r0, r5
	mov r2, #0x10
	bl FUN_ov73_0211d3c0
	ldr r0, [r5, #0x1b0]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	ldr r0, [sp, #4]
	ldr r1, _0211A504 ; =0x02099F38
	sub r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r0, [r1]
	sub r1, r2, #8
	mov r2, r1, lsl #0x10
	ldr r1, [r5, #0x1b0]
	mov r3, r2, asr #0x10
	mov r2, #1
	bl  FUN_ov16_02113b78
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211A4F8: .word 0x0209F5C0
_0211A4FC: .word 0x0209AC44
_0211A500: .word 0x0209A070
_0211A504: .word 0x02099F38
	arm_func_end FUN_ov73_0211a114

	arm_func_start FUN_ov73_0211a508
FUN_ov73_0211a508: ; 0x0211A508
	ldr r0, _0211A520 ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211A524 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211A520: .word 0x0209F5C0
_0211A524: .word  FUN_ov16_020f6b3c
	arm_func_end FUN_ov73_0211a508

	arm_func_start FUN_ov73_0211a528
FUN_ov73_0211a528: ; 0x0211A528
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x1c]
	bl FUN_ov73_02119f84
	movs r1, r0
	bmi _0211A5F8
	ldr r0, [r4, #0x60]
	cmp r1, r0
	bge _0211A5F8
	cmp r1, #0xa
	bge _0211A560
	mov r0, r4
	bl FUN_ov73_02119f7c
_0211A560:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0211A5F8
	ldr r0, [r4, #0x1c]
	cmp r0, #4
	blt _0211A5F8
	cmp r0, #0xd
	bgt _0211A5F8
	ldr r0, _0211A6D8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r1, [r4, #0x1c]
	add r0, sp, #4
	sub r1, r1, #4
	strb r1, [r4, #0x90f]
	str r0, [sp]
	ldr r1, [r4, #0x5c]
	add r3, sp, #8
	mov r0, r4
	mov r2, #0x10
	bl FUN_ov73_0211d3c0
	ldr r0, [r4, #0x1b0]
	cmp r0, #0
	beq _0211A5F8
	ldr r0, [sp, #4]
	ldr r1, _0211A6DC ; =0x02099F38
	sub r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r0, [r1]
	sub r1, r2, #8
	mov r2, r1, lsl #0x10
	ldr r1, [r4, #0x1b0]
	mov r3, r2, asr #0x10
	mov r2, #1
	bl  FUN_ov16_02113b78
_0211A5F8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, pc}
	ldr r0, [r4, #0x91c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	bne _0211A670
	ldr r0, [r4, #0x1c]
	cmp r0, #0xe
	blt _0211A640
	cmp r0, #0x13
	bgt _0211A640
	ldr r0, _0211A6D8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211A640:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1d
	addlt sp, sp, #0xc
	ldmltfd sp!, {r3, r4, pc}
	cmp r0, #0x1f
	addgt sp, sp, #0xc
	ldmgtfd sp!, {r3, r4, pc}
	ldr r0, _0211A6D8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211A670:
	ldr r1, [r4, #0x91c]
	mov r0, r4
	bl FUN_ov73_0211c980
	cmp r0, #0
	bne _0211A698
	ldr r0, _0211A6D8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211A698:
	ldrb r0, [r0, #0x74]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, pc}
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1d
	addlt sp, sp, #0xc
	ldmltfd sp!, {r3, r4, pc}
	cmp r0, #0x1f
	addgt sp, sp, #0xc
	ldmgtfd sp!, {r3, r4, pc}
	ldr r0, _0211A6D8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211A6D8: .word 0x0209AC44
_0211A6DC: .word 0x02099F38
	arm_func_end FUN_ov73_0211a528

	arm_func_start FUN_ov73_0211a6e0
FUN_ov73_0211a6e0: ; 0x0211A6E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0211A760
	ldr r0, [r4, #0x91c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	bne _0211A72C
	ldr r0, [r4, #0x1c]
	cmp r0, #0xe
	blt _0211A718
	cmp r0, #0x13
	ldmlefd sp!, {r4, pc}
_0211A718:
	cmp r0, #0x1d
	blt _0211A760
	cmp r0, #0x1f
	bgt _0211A760
	ldmfd sp!, {r4, pc}
_0211A72C:
	ldr r1, [r4, #0x91c]
	mov r0, r4
	bl FUN_ov73_0211c980
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r0, #0x74]
	cmp r0, #0
	bne _0211A760
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1d
	blt _0211A760
	cmp r0, #0x1f
	ldmlefd sp!, {r4, pc}
_0211A760:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _0211A77C
	ldr r0, _0211A7A0 ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211A77C:
	ldr r4, _0211A7A0 ; =0x0209A070
	mov r0, r4
	bl  FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211A7A0: .word 0x0209A070
	arm_func_end FUN_ov73_0211a6e0

	arm_func_start FUN_ov73_0211a7a4
FUN_ov73_0211a7a4: ; 0x0211A7A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0211A824
	ldr r0, [r4, #0x91c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	bne _0211A7F0
	ldr r0, [r4, #0x1c]
	cmp r0, #0xe
	blt _0211A7DC
	cmp r0, #0x13
	ldmlefd sp!, {r4, r5, r6, pc}
_0211A7DC:
	cmp r0, #0x1d
	blt _0211A824
	cmp r0, #0x1f
	bgt _0211A824
	ldmfd sp!, {r4, r5, r6, pc}
_0211A7F0:
	ldr r1, [r4, #0x91c]
	mov r0, r4
	bl FUN_ov73_0211c980
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r0, #0x74]
	cmp r0, #0
	bne _0211A824
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1d
	blt _0211A824
	cmp r0, #0x1f
	ldmlefd sp!, {r4, r5, r6, pc}
_0211A824:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bhi _0211A8D8
	ldr r0, [r4, #0x20]
	sub r0, r0, #0xe
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _0211A924
_0211A844: ; jump table
	b _0211A888 ; case 0
	b _0211A888 ; case 1
	b _0211A888 ; case 2
	b _0211A888 ; case 3
	b _0211A888 ; case 4
	b _0211A888 ; case 5
	b _0211A888 ; case 6
	b _0211A888 ; case 7
	b _0211A888 ; case 8
	b _0211A888 ; case 9
	b _0211A888 ; case 10
	b _0211A888 ; case 11
	b _0211A8CC ; case 12
	b _0211A8CC ; case 13
	b _0211A8CC ; case 14
	b _0211A89C ; case 15
	b _0211A89C ; case 16
_0211A888:
	ldr r0, [r4, #0x91c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211A924
	b _0211A918
_0211A89C:
	ldr r0, [r4, #0x91c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211A924
	ldr r1, [r4, #0x91c]
	mov r0, r4
	bl FUN_ov73_0211c980
	cmp r0, #0
	ldrneb r0, [r0, #0x74]
	cmpne r0, #0
	beq _0211A924
	b _0211A918
_0211A8CC:
	ldr r0, _0211A964 ; =0x0209AC44
	mov r1, #4
	b _0211A920
_0211A8D8:
	cmp r0, #2
	bne _0211A8FC
	ldr r0, [r4, #0x20]
	cmp r0, #0xe
	cmpne r0, #0xf
	beq _0211A8F8
	cmp r0, #0x10
	bne _0211A924
_0211A8F8:
	b _0211A918
_0211A8FC:
	cmp r0, #3
	bne _0211A924
	ldr r0, [r4, #0x20]
	cmp r0, #0xe
	cmpne r0, #0xf
	cmpne r0, #0x10
	bne _0211A924
_0211A918:
	ldr r0, _0211A964 ; =0x0209AC44
	mov r1, #1
_0211A920:
	bl FUN_0202cf6c
_0211A924:
	ldr r6, _0211A968 ; =0x0209A070
	ldr r1, [r4, #0x1c]
	mov r0, r6
	bl  FUN_ov16_020f6d3c
	movs r5, r0
	bmi _0211A958
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldr r0, _0211A96C ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f6530
_0211A958:
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A964: .word 0x0209AC44
_0211A968: .word 0x0209A070
_0211A96C: .word 0x0209F5C0
	arm_func_end FUN_ov73_0211a7a4

	arm_func_start FUN_ov73_0211a970
FUN_ov73_0211a970: ; 0x0211A970
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211AA70 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211AA20
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0211A9EC
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov73_0211a508
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211A9EC
	mov r0, r4
	bl FUN_ov73_0211a528
_0211A9EC:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x14]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x18]
	bl FUN_ov73_0211a508
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov73_0211a6e0
	ldmfd sp!, {r3, r4, r5, pc}
_0211AA20:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ldrne r1, [r4, #0x1c]
	cmpne r1, #0
	beq _0211AA48
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _0211AA48
	mov r0, r4
	bl FUN_ov73_0211a7a4
_0211AA48:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	ble _0211AA5C
	ldr r0, _0211AA74 ; =0x0209A070
	bl  FUN_ov16_020f6d3c
_0211AA5C:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AA70: .word 0x0209F5C0
_0211AA74: .word 0x0209A070
	arm_func_end FUN_ov73_0211a970

	arm_func_start FUN_ov73_0211aa78
FUN_ov73_0211aa78: ; 0x0211AA78
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc8
	mov r1, #0
	mov r2, #0xb4
	bl MI_CpuFill8
	ldr r0, _0211AAC0 ; =0x0211D798
	add r1, r4, #0xc8
	bl  FUN_ov16_020f316c
	ldr r0, _0211AAC4 ; =0x0211D7B4
	add r1, r4, #0x164
	bl  FUN_ov16_020f316c
	ldr r0, _0211AAC8 ; =0x0211D7D4
	add r1, r4, #0x170
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211AAC0: .word 0x0211D798
_0211AAC4: .word 0x0211D7B4
_0211AAC8: .word 0x0211D7D4
	arm_func_end FUN_ov73_0211aa78

	arm_func_start FUN_ov73_0211aacc
FUN_ov73_0211aacc: ; 0x0211AACC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0xc8]
	cmp r6, #0
	ldrne r7, _0211AB14 ; =0x0211D488
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0xc8
	mov r4, #0xc
_0211AAF0:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211AAF0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB14: .word 0x0211D488
	arm_func_end FUN_ov73_0211aacc

	arm_func_start FUN_ov73_0211ab18
FUN_ov73_0211ab18: ; 0x0211AB18
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211AB64 ; =0x02099F38
	b _0211AB54
_0211AB2C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211AB50
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211AB50:
	add r5, r5, #1
_0211AB54:
	cmp r5, #0xc
	blt _0211AB2C
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211AB64: .word 0x02099F38
	arm_func_end FUN_ov73_0211ab18

	arm_func_start FUN_ov73_0211ab68
FUN_ov73_0211ab68: ; 0x0211AB68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r5, r0
	mov r9, #4
	mov r8, #3
	mov r7, r4
	ldr r6, _0211ABF8 ; =0x02099F38
	b _0211ABEC
_0211AB88:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211ABE8
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211ABE8
	cmp r4, #0
	blt _0211ABD0
	cmp r4, #9
	bgt _0211ABD0
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x2c]
	mov r2, r9
	mov r3, r8
	bl  FUN_ov16_02114918
_0211ABD0:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x2c]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211ABE8:
	add r4, r4, #1
_0211ABEC:
	cmp r4, #0xc
	blt _0211AB88
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ABF8: .word 0x02099F38
	arm_func_end FUN_ov73_0211ab68

	arm_func_start FUN_ov73_0211abfc
FUN_ov73_0211abfc: ; 0x0211ABFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, #0
	add r6, r4, #0xc8
	mov r5, #0xc
	b _0211AC20
_0211AC14:
	mla r0, r7, r5, r6
	bl  FUN_ov16_020f33fc
	add r7, r7, #1
_0211AC20:
	cmp r7, #0xf
	blt _0211AC14
	mov r7, #0
	mov r6, r7
	ldr r5, _0211AC70 ; =0x02099F38
	b _0211AC5C
_0211AC38:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211AC58
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x2c]
_0211AC58:
	add r7, r7, #1
_0211AC5C:
	cmp r7, #0xc
	blt _0211AC38
	mov r0, r4
	bl FUN_ov73_0211c914
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC70: .word 0x02099F38
	arm_func_end FUN_ov73_0211abfc

	arm_func_start FUN_ov73_0211ac74
FUN_ov73_0211ac74: ; 0x0211AC74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0xc8]
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
	beq _0211ACCC
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl  FUN_ov16_020f19d4
	str r0, [r5]
_0211ACCC:
	cmp r6, #0
	blt _0211ACE4
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl  FUN_ov16_020f1138
_0211ACE4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov73_0211ac74

	arm_func_start FUN_ov73_0211acec
FUN_ov73_0211acec: ; 0x0211ACEC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl FUN_0200505c
	mov r4, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	mov r2, r6
	mov r6, #3
	mov r1, #5
	str r6, [sp]
	add r4, sp, #8
	mov r0, r5
	str r4, [sp, #4]
	mov r3, r1
	bl FUN_ov73_0211ac74
	str r6, [sp]
	mov r1, #6
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r5
	mov r3, r1
	bl FUN_ov73_0211ac74
	str r6, [sp]
	mov r1, #7
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r5
	mov r3, r1
	bl FUN_ov73_0211ac74
	str r6, [sp]
	mov r1, #9
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r5
	mov r3, r1
	bl FUN_ov73_0211ac74
	str r6, [sp]
	mov r1, #0xa
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r5
	mov r3, r1
	bl FUN_ov73_0211ac74
	str r6, [sp]
	mov r1, #0xb
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r5
	mov r3, r1
	bl FUN_ov73_0211ac74
	mov r3, r0
	ldr r0, [r5, #0xb4]
	cmp r0, #0
	ldrne r0, [r5, #0xb8]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211AE38
	ldrh r2, [r5, #0xc0]
	ldrh r1, [r5, #0xc2]
	ldr r4, [sp, #8]
	ldr r0, [r5, #0xb4]
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r3, #1
	mov r3, #0
	str r4, [r5, #0xbc]
	bl  FUN_ov16_020f1868
	ldrh r1, [r5, #0xc0]
	ldrh r0, [r5, #0xc2]
	ldr r2, [sp, #8]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #8]
_0211AE38:
	bl FUN_02004f78
	mov r9, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl FUN_02004f78
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
	bl FUN_ov73_0211ac74
	mov r1, #8
	str r8, [sp]
	mov r2, r0
	mov r0, r5
	mov r3, r1
	str r7, [sp, #4]
	bl FUN_ov73_0211ac74
	mov r1, #3
	str r8, [sp]
	mov r2, r0
	mov r0, r5
	mov r3, r1
	str r7, [sp, #4]
	bl FUN_ov73_0211ac74
	mov r1, #4
	str r8, [sp]
	mov r2, r0
	mov r0, r5
	mov r3, r1
	str r7, [sp, #4]
	bl FUN_ov73_0211ac74
	mov r1, #0xc
	str r8, [sp]
	mov r2, r0
	mov r0, r5
	mov r3, r1
	str r7, [sp, #4]
	bl FUN_ov73_0211ac74
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r9
	bl DC_FlushRange
	str r9, [sp, #8]
	stmia sp, {r6, r7}
	mov r0, r5
	mov r1, r8
	mov r3, r8
	mov r2, r4
	bl FUN_ov73_0211ac74
	ldr r3, [r5, #0xd4]
	cmp r3, #0
	beq _0211AF58
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r4
	add r0, r3, r0
	bl FUN_020055bc
_0211AF58:
	bl  FUN_ov16_020f10ac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov73_0211acec

	arm_func_start FUN_ov73_0211af64
FUN_ov73_0211af64: ; 0x0211AF64
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0xb4]
	cmp r0, #0
	ldrne r0, [lr, #0xb8]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0xc4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0xc0]
	ldrh r1, [lr, #0xc2]
	mov r12, #0
	ldr r0, [lr, #0xb8]
	mul r3, r2, r1
	ldr r1, [lr, #0xbc]
	mov r2, r3, lsl #5
	strb r12, [lr, #0xc4]
	bl FUN_02005a1c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov73_0211af64

	arm_func_start FUN_ov73_0211afbc
FUN_ov73_0211afbc: ; 0x0211AFBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	bl FUN_ov73_0211cca4
	mov r0, r4
	mov r1, #0x10
	bl FUN_ov73_0211d01c
	ldr r0, [r4, #0x5c]
	mov r5, #1
	add r0, r0, #0xd
	add r0, r4, r0
	ldr r6, _0211B38C ; =0x0209A070
	ldrb r1, [r0, #0x90]
	mov r0, r6
	mov r2, r5
	bl  FUN_ov16_020f6e8c
	ldr r1, [r4, #0x5c]
	mov r0, r4
	and r1, r1, #0xff
	strb r1, [r4, #0x90f]
	strb r1, [r4, #0x910]
	mov r1, #0x10
	bl FUN_ov73_0211ce58
	ldr r1, [r4, #0x91c]
	mov r0, r6
	and r3, r1, #0xff
	str r1, [r4, #0x5c]
	add r1, r1, #0xd
	add r1, r4, r1
	strb r3, [r4, #0x90f]
	strb r3, [r4, #0x910]
	ldrb r1, [r1, #0x90]
	mov r2, r5
	bl  FUN_ov16_020f6e8c
	ldr r1, _0211B390 ; =0x0211D840
	ldr r2, [r1, #0xc]
	tst r2, #1
	bne _0211B130
	ldr r0, _0211B394 ; =0x0211D560
	orr r12, r2, #1
	strb r5, [r0, #0x56]
	mov r11, #2
	strb r11, [r0, #0x57]
	mov r10, #8
	strb r10, [r0, #0x58]
	strb r10, [r0, #0x59]
	strb r5, [r0, #0x5a]
	strb r11, [r0, #0x5b]
	str r12, [r1, #0xc]
	mov r2, #0x1e
	strb r2, [r0, #0x5c]
	mov r2, #0x11
	strb r2, [r0, #0x5d]
	mov r9, #0
	strb r9, [r0, #0x5e]
	ldr r2, _0211B398 ; =0x0211D5C8
	ldr r0, _0211B39C ; =0x0211D5D1
	ldr r8, _0211B3A0 ; =0x0211D5BF
	mov r7, #3
	mov r6, #9
	mov r3, #0x15
	mov r1, #4
	mov lr, #0xc
	mov r12, #0x10
	strb r12, [r8, #1]
	mov r12, #0x13
	strb r12, [r2, #1]
	mov r12, #0x12
	strb r12, [r2, #4]
	mov r12, #0x1f
	strb r10, [r2, #6]
	strb r5, [r8]
	strb r7, [r8, #2]
	strb r7, [r8, #3]
	strb r6, [r8, #4]
	strb r3, [r8, #5]
	strb r6, [r8, #6]
	strb r7, [r8, #7]
	strb r11, [r8, #8]
	strb r5, [r2]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r3, [r2, #5]
	strb r7, [r2, #7]
	strb r11, [r2, #8]
	strb r5, [r0]
	strb r12, [r0, #1]
	strb lr, [r0, #2]
	strb lr, [r0, #3]
	strb r9, [r0, #4]
	strb r3, [r0, #5]
	strb r6, [r0, #6]
	strb r7, [r0, #7]
	strb r11, [r0, #8]
_0211B130:
	mov r8, #4
	ldr r1, _0211B3A4 ; =0x0211D5B6
	mov r0, r4
	mov r2, r8
	bl FUN_ov73_0211d288
	ldr r10, _0211B390 ; =0x0211D840
	ldr r2, [r10]
	tst r2, #1
	bne _0211B2E0
	ldr r1, _0211B3A8 ; =0x0211D680
	mov r6, #1
	strb r6, [r1]
	mov r0, #0xe
	strb r0, [r1, #1]
	mov r5, #3
	strb r5, [r1, #2]
	strb r5, [r1, #3]
	mov lr, #9
	strb lr, [r1, #4]
	mov r12, #0x15
	strb r12, [r1, #5]
	strb lr, [r1, #6]
	orr r0, r2, #1
	strb r5, [r1, #7]
	mov r3, #0
	ldr r11, _0211B3AC ; =0x0211D689
	strb r3, [r1, #8]
	ldr r2, _0211B3B0 ; =0x0211D692
	ldr r1, _0211B3B4 ; =0x0211D69B
	ldr r9, _0211B3B8 ; =0x0211D6B6
	ldr r7, _0211B3BC ; =0x0211D6BF
	str r0, [r10]
	ldr r0, _0211B3C0 ; =0x0211D6A4
	ldr r10, _0211B3C4 ; =0x0211D6AD
	strb r6, [r11]
	strb r5, [r11, #2]
	strb r5, [r11, #3]
	strb lr, [r11, #4]
	strb r12, [r11, #5]
	strb lr, [r11, #6]
	strb r5, [r11, #7]
	strb r6, [r11, #8]
	strb r6, [r2]
	strb r8, [r2, #2]
	strb r8, [r2, #3]
	strb r12, [r2, #5]
	strb r5, [r2, #7]
	strb r3, [r2, #8]
	strb r6, [r1]
	strb r8, [r1, #2]
	strb r8, [r1, #3]
	mov r8, #2
	strb r12, [r1, #5]
	strb r5, [r1, #7]
	strb r6, [r1, #8]
	strb r6, [r0]
	strb r8, [r0, #2]
	strb r8, [r0, #3]
	strb r12, [r0, #5]
	strb r5, [r0, #7]
	strb r3, [r0, #8]
	strb r6, [r10]
	strb r8, [r10, #2]
	strb r8, [r10, #3]
	mov r8, #0xc
	strb r12, [r10, #5]
	strb r5, [r10, #7]
	strb r6, [r10, #8]
	strb r6, [r9]
	strb r8, [r9, #2]
	strb r8, [r9, #3]
	strb r3, [r9, #4]
	strb r12, [r9, #5]
	strb r12, [r7, #5]
	mov r12, #0x12
	strb r12, [r2, #4]
	strb r12, [r1, #1]
	strb r12, [r1, #4]
	mov r12, #0x1a
	strb r12, [r0, #1]
	strb r12, [r0, #4]
	strb r12, [r10, #4]
	mov r12, #8
	strb r12, [r1, #6]
	mov r1, #6
	strb r12, [r2, #6]
	mov r12, #0xf
	strb r12, [r11, #1]
	mov r11, #0x11
	mov r12, #0x1b
	strb r11, [r2, #1]
	mov r2, #0x1d
	mov r11, #0x1e
	strb r1, [r0, #6]
	strb r12, [r10, #1]
	strb r1, [r10, #6]
	strb r2, [r9, #1]
	strb lr, [r9, #6]
	strb r5, [r9, #7]
	strb r3, [r9, #8]
	strb r6, [r7]
	strb r11, [r7, #1]
	strb r8, [r7, #2]
	strb r8, [r7, #3]
	strb r3, [r7, #4]
	strb lr, [r7, #6]
	strb r5, [r7, #7]
	strb r6, [r7, #8]
_0211B2E0:
	ldr r1, _0211B3A8 ; =0x0211D680
	mov r0, r4
	mov r2, #8
	bl FUN_ov73_0211d380
	mov r6, #0
	ldr r5, _0211B38C ; =0x0209A070
	mov r3, r6
	mov r0, r5
	str r6, [sp]
	mov r1, #0xe
	mov r2, #0xf
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xac]
	mov r0, r5
	mov r3, r6
	str r6, [sp]
	mov r1, #0x11
	mov r2, #0x12
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xad]
	str r6, [sp]
	mov r0, r5
	mov r1, #0x1a
	mov r2, #0x1b
	mov r3, r6
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xb0]
	mov r0, r5
	str r6, [sp]
	mov r3, r6
	mov r1, #0x1d
	mov r2, #0x1e
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xb1]
	ldr r0, [r4, #4]
	mov r1, #1
	mov r5, #0x1c
	mov r2, r5
	bl FUN_02041eac
	str r5, [r4, #0x68]
	mov r0, #5
	strb r0, [r4, #0x81]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B38C: .word 0x0209A070
_0211B390: .word 0x0211D840
_0211B394: .word 0x0211D560
_0211B398: .word 0x0211D5C8
_0211B39C: .word 0x0211D5D1
_0211B3A0: .word 0x0211D5BF
_0211B3A4: .word 0x0211D5B6
_0211B3A8: .word 0x0211D680
_0211B3AC: .word 0x0211D689
_0211B3B0: .word 0x0211D692
_0211B3B4: .word 0x0211D69B
_0211B3B8: .word 0x0211D6B6
_0211B3BC: .word 0x0211D6BF
_0211B3C0: .word 0x0211D6A4
_0211B3C4: .word 0x0211D6AD
	arm_func_end FUN_ov73_0211afbc

	arm_func_start FUN_ov73_0211b3c8
FUN_ov73_0211b3c8: ; 0x0211B3C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	bl FUN_ov73_0211ba00
	ldr r1, _0211B72C ; =0x0211D840
	ldr r6, [r1, #4]
	tst r6, #1
	bne _0211B42C
	ldr r0, _0211B730 ; =0x0211D560
	mov r5, #0
	strb r5, [r0, #0x29]
	mov r3, #2
	strb r3, [r0, #0x2a]
	mov r2, #9
	strb r2, [r0, #0x2b]
	strb r2, [r0, #0x2c]
	strb r3, [r0, #0x2d]
	mov r2, #1
	strb r2, [r0, #0x2e]
	mov r2, #0x1c
	strb r2, [r0, #0x2f]
	mov r2, #0x14
	strb r2, [r0, #0x30]
	strb r5, [r0, #0x31]
	orr r0, r6, #1
	str r0, [r1, #4]
_0211B42C:
	mov r5, #1
	ldr r1, _0211B734 ; =0x0211D589
	mov r0, r4
	mov r2, r5
	bl FUN_ov73_0211d288
	ldr r2, _0211B72C ; =0x0211D840
	ldr r3, [r2, #0x20]
	tst r3, #1
	bne _0211B648
	ldr r1, _0211B738 ; =0x0211D6C8
	mov r9, #0
	strb r9, [r1]
	mov r0, #0xf
	strb r0, [r1, #1]
	mov r8, #6
	strb r8, [r1, #2]
	strb r8, [r1, #3]
	mov r7, #3
	strb r7, [r1, #4]
	mov r6, #5
	orr r0, r3, #1
	strb r6, [r1, #5]
	mov r10, #0x1a
	strb r10, [r1, #6]
	strb r7, [r1, #7]
	ldr r11, _0211B73C ; =0x0211D6D1
	strb r5, [r1, #8]
	ldr r5, _0211B740 ; =0x0211D6DA
	ldr r12, _0211B744 ; =0x0211D6EC
	ldr r1, _0211B748 ; =0x0211D707
	ldr lr, _0211B74C ; =0x0211D6E3
	ldr r3, _0211B750 ; =0x0211D6F5
	str r0, [r2, #0x20]
	ldr r2, _0211B754 ; =0x0211D6FE
	ldr r0, _0211B758 ; =0x0211D710
	strb r9, [r11]
	strb r8, [r11, #2]
	strb r8, [r11, #3]
	strb r7, [r11, #4]
	strb r6, [r11, #5]
	strb r10, [r11, #6]
	strb r7, [r11, #7]
	strb r9, [r11, #8]
	strb r9, [r5]
	strb r8, [r5, #2]
	strb r8, [r5, #3]
	strb r7, [r5, #4]
	strb r10, [r5, #6]
	strb r7, [r5, #7]
	strb r7, [r5, #8]
	strb r9, [lr]
	strb r8, [lr, #2]
	strb r8, [lr, #3]
	strb r7, [lr, #4]
	strb r10, [lr, #6]
	strb r7, [lr, #7]
	strb r9, [r12]
	strb r8, [r12, #2]
	strb r8, [r12, #3]
	strb r7, [r12, #4]
	strb r10, [r12, #6]
	strb r7, [r12, #7]
	strb r6, [r12, #8]
	strb r9, [r3]
	strb r8, [r3, #2]
	strb r8, [r3, #3]
	strb r7, [r3, #4]
	strb r10, [r3, #6]
	strb r7, [r3, #7]
	strb r9, [r2]
	strb r8, [r2, #2]
	strb r8, [r2, #3]
	strb r7, [r2, #4]
	strb r10, [r2, #6]
	strb r10, [r1, #6]
	ldr r10, _0211B75C ; =0x0211D719
	strb r7, [r2, #7]
	strb r9, [r1]
	strb r8, [r1, #2]
	strb r8, [r1, #3]
	strb r7, [r1, #4]
	strb r7, [r1, #7]
	strb r8, [r1, #8]
	strb r9, [r0]
	strb r9, [r10]
	mov r9, #8
	strb r9, [r5, #5]
	strb r9, [lr, #5]
	strb r9, [r10, #8]
	mov r9, #0xb
	strb r9, [r12, #5]
	strb r9, [r3, #5]
	mov r9, #0xe
	strb r9, [r2, #5]
	strb r9, [r1, #5]
	mov r9, #0xd
	strb r6, [r0, #2]
	strb r6, [r0, #3]
	strb r9, [r0, #4]
	strb r9, [r10, #4]
	mov r9, #0x11
	strb r9, [r0, #5]
	strb r9, [r10, #5]
	mov r9, #0x10
	strb r9, [r11, #1]
	mov r9, #0x12
	mov r11, #0x13
	strb r9, [r5, #1]
	mov r9, #2
	mov r5, #0x15
	strb r5, [r12, #1]
	mov r5, #0x16
	mov r12, #4
	strb r11, [lr, #1]
	mov r11, #0x18
	strb r9, [lr, #8]
	mov lr, #7
	mov r9, #0x19
	strb r9, [r1, #1]
	mov r1, #0x1b
	mov r9, #9
	strb r5, [r3, #1]
	mov r5, #0x1c
	strb r12, [r3, #8]
	strb r11, [r2, #1]
	strb lr, [r2, #8]
	strb r1, [r0, #1]
	strb r8, [r0, #6]
	strb r7, [r0, #7]
	strb r9, [r0, #8]
	strb r5, [r10, #1]
	strb r6, [r10, #2]
	strb r6, [r10, #3]
	strb r8, [r10, #6]
	strb r7, [r10, #7]
_0211B648:
	ldr r1, _0211B738 ; =0x0211D6C8
	mov r0, r4
	mov r2, #0xa
	bl FUN_ov73_0211d380
	mov r6, #0
	ldr r5, _0211B760 ; =0x0209A070
	mov r1, r6
	mov r0, r5
	str r6, [sp]
	mov r2, #0xf
	mov r3, #0x10
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xac]
	mov r0, r5
	mov r1, r6
	str r6, [sp]
	mov r2, #0x12
	mov r3, #0x13
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xad]
	str r6, [sp]
	mov r0, r5
	mov r1, r6
	mov r2, #0x15
	mov r3, #0x16
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xae]
	str r6, [sp]
	mov r0, r5
	mov r1, r6
	mov r2, #0x18
	mov r3, #0x19
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xaf]
	str r6, [sp]
	mov r1, r6
	mov r0, r5
	mov r2, #0x1b
	mov r6, #0x1c
	mov r3, r6
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xb0]
	mov r0, r5
	ldrb r1, [r4, #0xac]
	mov r5, #1
	mov r2, r5
	bl  FUN_ov16_020f6e8c
	strb r5, [r4, #0x90d]
	strb r6, [r4, #0x90e]
	mov r0, #5
	strb r0, [r4, #0x90c]
	str r0, [r4, #0x60]
	ldr r0, _0211B764 ; =0x04000050
	mov r1, #7
	sub r2, r1, #0xf
	bl FUN_0200462c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B72C: .word 0x0211D840
_0211B730: .word 0x0211D560
_0211B734: .word 0x0211D589
_0211B738: .word 0x0211D6C8
_0211B73C: .word 0x0211D6D1
_0211B740: .word 0x0211D6DA
_0211B744: .word 0x0211D6EC
_0211B748: .word 0x0211D707
_0211B74C: .word 0x0211D6E3
_0211B750: .word 0x0211D6F5
_0211B754: .word 0x0211D6FE
_0211B758: .word 0x0211D710
_0211B75C: .word 0x0211D719
_0211B760: .word 0x0209A070
_0211B764: .word 0x04000050
	arm_func_end FUN_ov73_0211b3c8

	arm_func_start FUN_ov73_0211b768
FUN_ov73_0211b768: ; 0x0211B768
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #1
	bl FUN_ov73_0211ba00
	ldr r0, [r5, #0x924]
	cmp r0, #1
	bne _0211B7E0
	ldr r1, _0211B8CC ; =0x0211D840
	ldr r12, [r1, #0x18]
	tst r12, #1
	bne _0211B7D8
	ldr r0, _0211B8D0 ; =0x0211D560
	mov r2, #0
	strb r2, [r0, #0x3b]
	mov r2, #2
	strb r2, [r0, #0x3c]
	mov r3, #0xa
	strb r3, [r0, #0x3d]
	strb r3, [r0, #0x3e]
	strb r4, [r0, #0x3f]
	mov r2, #7
	strb r2, [r0, #0x40]
	mov r2, #0x1e
	strb r2, [r0, #0x41]
	strb r3, [r0, #0x42]
	strb r4, [r0, #0x43]
	orr r0, r12, #1
	str r0, [r1, #0x18]
_0211B7D8:
	ldr r1, _0211B8D4 ; =0x0211D59B
	b _0211B838
_0211B7E0:
	ldr r1, _0211B8CC ; =0x0211D840
	ldr lr, [r1, #0x14]
	tst lr, #1
	bne _0211B834
	ldr r0, _0211B8D0 ; =0x0211D560
	mov r12, #0
	strb r12, [r0, #0x44]
	mov r2, #2
	strb r2, [r0, #0x45]
	mov r3, #0xa
	strb r3, [r0, #0x46]
	strb r3, [r0, #0x47]
	strb r4, [r0, #0x48]
	mov r2, #7
	strb r2, [r0, #0x49]
	mov r2, #0x1e
	strb r2, [r0, #0x4a]
	strb r3, [r0, #0x4b]
	strb r12, [r0, #0x4c]
	orr r0, lr, #1
	str r0, [r1, #0x14]
_0211B834:
	ldr r1, _0211B8D8 ; =0x0211D5A4
_0211B838:
	mov r0, r5
	mov r2, #1
	bl FUN_ov73_0211d288
	ldr r1, _0211B8CC ; =0x0211D840
	ldr r4, [r1, #0x1c]
	tst r4, #1
	bne _0211B89C
	ldr r0, _0211B8D0 ; =0x0211D560
	mov r3, #0
	strb r3, [r0, #0x4d]
	mov r2, #0xf
	strb r2, [r0, #0x4e]
	mov r2, #7
	strb r2, [r0, #0x4f]
	strb r2, [r0, #0x50]
	mov r2, #0xd
	strb r2, [r0, #0x51]
	strb r2, [r0, #0x52]
	mov r2, #6
	strb r2, [r0, #0x53]
	mov r2, #3
	strb r2, [r0, #0x54]
	strb r3, [r0, #0x55]
	orr r0, r4, #1
	str r0, [r1, #0x1c]
_0211B89C:
	ldr r1, _0211B8DC ; =0x0211D5AD
	mov r0, r5
	mov r2, #1
	bl FUN_ov73_0211d380
	mov r1, #0
	ldr r0, _0211B8E0 ; =0x0209A070
	mov r3, r1
	mov r2, #0xf
	str r1, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r5, #0xac]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B8CC: .word 0x0211D840
_0211B8D0: .word 0x0211D560
_0211B8D4: .word 0x0211D59B
_0211B8D8: .word 0x0211D5A4
_0211B8DC: .word 0x0211D5AD
_0211B8E0: .word 0x0209A070
	arm_func_end FUN_ov73_0211b768

	arm_func_start FUN_ov73_0211b8e4
FUN_ov73_0211b8e4: ; 0x0211B8E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_ov73_0211ba00
	ldr r1, _0211B9EC ; =0x0211D840
	ldr r12, [r1, #0x10]
	tst r12, #1
	bne _0211B950
	ldr r0, _0211B9F0 ; =0x0211D560
	mov r3, #0
	strb r3, [r0, #0x20]
	mov r2, #2
	strb r2, [r0, #0x21]
	mov r2, #0xb
	strb r2, [r0, #0x22]
	strb r2, [r0, #0x23]
	mov r2, #1
	strb r2, [r0, #0x24]
	mov r2, #7
	strb r2, [r0, #0x25]
	mov r2, #0x1e
	strb r2, [r0, #0x26]
	mov r2, #0xa
	strb r2, [r0, #0x27]
	strb r3, [r0, #0x28]
	orr r0, r12, #1
	str r0, [r1, #0x10]
_0211B950:
	ldr r1, _0211B9F4 ; =0x0211D580
	mov r0, r4
	mov r2, #1
	bl FUN_ov73_0211d288
	ldr r1, _0211B9EC ; =0x0211D840
	ldr r12, [r1, #8]
	tst r12, #1
	bne _0211B9B8
	ldr r0, _0211B9F0 ; =0x0211D560
	mov r3, #0
	strb r3, [r0, #0x32]
	mov r2, #0xf
	strb r2, [r0, #0x33]
	mov r2, #7
	strb r2, [r0, #0x34]
	strb r2, [r0, #0x35]
	mov r2, #0xd
	strb r2, [r0, #0x36]
	strb r2, [r0, #0x37]
	mov r2, #6
	strb r2, [r0, #0x38]
	mov r2, #3
	strb r2, [r0, #0x39]
	strb r3, [r0, #0x3a]
	orr r0, r12, #1
	str r0, [r1, #8]
_0211B9B8:
	ldr r1, _0211B9F8 ; =0x0211D592
	mov r0, r4
	mov r2, #1
	bl FUN_ov73_0211d380
	mov r1, #0
	ldr r0, _0211B9FC ; =0x0209A070
	mov r3, r1
	mov r2, #0xf
	str r1, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r4, #0xac]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211B9EC: .word 0x0211D840
_0211B9F0: .word 0x0211D560
_0211B9F4: .word 0x0211D580
_0211B9F8: .word 0x0211D592
_0211B9FC: .word 0x0209A070
	arm_func_end FUN_ov73_0211b8e4

	arm_func_start FUN_ov73_0211ba00
FUN_ov73_0211ba00: ; 0x0211BA00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r5, r0
	mov r1, #0x10
	bl FUN_ov73_0211ce58
	ldr r1, [r5, #0x91c]
	mov r0, r5
	mov r4, #2
	bl FUN_ov73_0211c980
	cmp r0, #0
	ldrneb r0, [r0, #0x74]
	mov r1, #8
	mov r10, #1
	add lr, sp, #0x12
	mov r9, #2
	add r12, sp, #0x1b
	mov r8, #0
	add r3, sp, #0x24
	add r11, sp, #9
	mov r7, #3
	mov r6, #0x15
	mov r2, #9
	cmpne r0, #0
	movne r4, #0
	strb r4, [r3, #8]
	mov r4, #0xc
	mov r0, r5
	mov r5, #4
	strb r1, [sp, #2]
	strb r1, [sp, #3]
	strb r1, [lr, #6]
	mov r1, #0x1e
	strb r1, [sp, #6]
	mov r1, #0x11
	strb r1, [sp, #7]
	mov r1, #0x12
	strb r1, [lr, #4]
	mov r1, #0x1a
	strb r1, [r12, #4]
	mov r1, #6
	strb r1, [r12, #6]
	add r1, sp, #0
	strb r2, [r11, #4]
	strb r2, [r11, #6]
	strb r2, [r3, #6]
	mov r2, #5
	strb r10, [sp]
	strb r9, [sp, #1]
	strb r10, [sp, #4]
	strb r9, [sp, #5]
	strb r8, [sp, #8]
	strb r10, [r11]
	strb r9, [r11, #1]
	strb r7, [r11, #2]
	strb r7, [r11, #3]
	strb r6, [r11, #5]
	strb r7, [r11, #7]
	strb r8, [r11, #8]
	strb r10, [lr]
	strb r9, [lr, #1]
	strb r5, [lr, #2]
	strb r5, [lr, #3]
	strb r6, [lr, #5]
	strb r7, [lr, #7]
	strb r8, [lr, #8]
	strb r10, [r12]
	strb r9, [r12, #1]
	strb r9, [r12, #2]
	strb r9, [r12, #3]
	strb r6, [r12, #5]
	strb r7, [r12, #7]
	strb r8, [r12, #8]
	strb r10, [r3]
	strb r9, [r3, #1]
	strb r4, [r3, #2]
	strb r4, [r3, #3]
	strb r8, [r3, #4]
	strb r6, [r3, #5]
	strb r7, [r3, #7]
	bl FUN_ov73_0211d288
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov73_0211ba00

	arm_func_start FUN_ov73_0211bb48
FUN_ov73_0211bb48: ; 0x0211BB48
	ldr r0, _0211BB54 ; =0x0209F5C0
	ldr r12, _0211BB58 ; = FUN_ov16_020f6274
	bx r12
_0211BB54: .word 0x0209F5C0
_0211BB58: .word  FUN_ov16_020f6274
	arm_func_end FUN_ov73_0211bb48

	arm_func_start FUN_ov73_0211bb5c
FUN_ov73_0211bb5c: ; 0x0211BB5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	ldr r0, _0211BBE4 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f5ff4
	ldr r0, _0211BBE8 ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	mov r0, r5
	bl FUN_ov73_0211c914
	ldr r0, [r5, #0xc]
	strb r4, [r5, #0x90c]
	strb r4, [r5, #0x90d]
	strb r4, [r5, #0x90e]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211BBA4: ; jump table
	b _0211BBB4 ; case 0
	b _0211BBC0 ; case 1
	b _0211BBCC ; case 2
	b _0211BBD8 ; case 3
_0211BBB4:
	mov r0, r5
	bl FUN_ov73_0211afbc
	ldmfd sp!, {r3, r4, r5, pc}
_0211BBC0:
	mov r0, r5
	bl FUN_ov73_0211b3c8
	ldmfd sp!, {r3, r4, r5, pc}
_0211BBCC:
	mov r0, r5
	bl FUN_ov73_0211b768
	ldmfd sp!, {r3, r4, r5, pc}
_0211BBD8:
	mov r0, r5
	bl FUN_ov73_0211b8e4
	ldmfd sp!, {r3, r4, r5, pc}
_0211BBE4: .word 0x0209F5C0
_0211BBE8: .word 0x0209A070
	arm_func_end FUN_ov73_0211bb5c

	arm_func_start FUN_ov73_0211bbec
FUN_ov73_0211bbec: ; 0x0211BBEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r6, r0
	sub r3, r7, #1
	mov r5, #0x22
	mov r1, r7
	mov r2, r5
	add r0, r6, #0x90
	str r7, [r6, #8]
	strb r7, [r6, #0x10]
	strb r7, [r6, #0x11]
	str r3, [r6, #0x14]
	str r3, [r6, #0x18]
	str r7, [r6, #0x1c]
	str r7, [r6, #0x20]
	str r7, [r6, #0x24]
	str r7, [r6, #0x28]
	str r7, [r6, #0xc]
	mov r4, r7
	bl MI_CpuFill8
	ldr r0, _0211BEA4 ; =0x0209A070
	mov r1, r5
	bl  FUN_ov16_020f6c20
	mov r1, #1
	add r0, r6, #0xb4
	str r1, [r6, #0x914]
	bl  FUN_ov16_020f2f7c
	add r0, r6, #0xb4
	mov r1, #0x1e
	mov r2, #0xa
	bl  FUN_ov16_020f2fa8
	add r0, r6, #0xb4
	bl  FUN_ov16_020f2f20
	b _0211BC80
_0211BC74:
	add r0, r6, r7, lsl #2
	str r4, [r0, #0x2c]
	add r7, r7, #1
_0211BC80:
	cmp r7, #0xc
	blt _0211BC74
	mov r5, #0
	mov r1, r5
	add r0, r6, #0x184
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _0211BEA8 ; =0x02099F38
	str r5, [r6, #0x180]
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	strb r5, [r6, #0x920]
	bl  FUN_ov16_020f47fc
	mov r0, #1
	bl  FUN_ov16_020f3f60
	mov r0, r6
	bl FUN_ov73_0211aa78
	ldr r1, _0211BEAC ; =0x0400000E
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
	mvn r2, #0
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	mov r0, #0xbc
	b _0211BD68
_0211BD18:
	mla r3, r5, r0, r6
	strb r4, [r3, #0x1b4]
	strb r4, [r3, #0x1cc]
	strb r4, [r3, #0x1fc]
	add r1, r3, #0x100
	strh r4, [r1, #0xfe]
	strb r4, [r3, #0x1fd]
	add r1, r3, #0x200
	strh r4, [r1]
	strh r4, [r1, #2]
	strh r2, [r1, #4]
	str r4, [r3, #0x224]
	strh r4, [r1, #6]
	strh r4, [r1, #8]
	strb r4, [r3, #0x20a]
	strb r4, [r3, #0x228]
	strb r4, [r3, #0x229]
	strb r4, [r3, #0x222]
	strb r4, [r3, #0x223]
	add r5, r5, #1
_0211BD68:
	cmp r5, #0xa
	blt _0211BD18
	mov r5, #1
	mov r0, r5
	mov r1, r4
	mov r2, r5
	strb r4, [r6, #0x90f]
	strb r4, [r6, #0x910]
	str r4, [r6, #0x918]
	str r4, [r6, #0x64]
	str r4, [r6, #0x924]
	bl FUN_020044e0
	ldr r0, _0211BEB0 ; =0x020A1540
	str r4, [r6, #0x91c]
	ldrh r2, [r0, #0xd0]
	ldr r1, _0211BEB4 ; =0x020A0640
	ldr r0, _0211BEB8 ; =0x020A1640
	strh r2, [r1, #0x7c]
	strb r4, [r0, #0x245]
	sub r1, r5, #2
	mov r0, r6
	str r4, [r6, #0x68]
	str r4, [r6, #0x6c]
	str r1, [r6, #0x70]
	str r4, [r6, #0x74]
	strb r4, [r6, #0x78]
	strb r4, [r6, #0x79]
	strb r4, [r6, #0x7a]
	str r4, [r6, #0x7c]
	strb r4, [r6, #0x80]
	strb r4, [r6, #0x81]
	strb r4, [r6, #0x7b]
	str r4, [r6, #0x84]
	str r4, [r6, #0x88]
	strb r4, [r6, #0x8c]
	strb r4, [r6, #0x8d]
	bl FUN_ov73_0211cad8
	ldr r0, [r6, #4]
	bl FUN_0204204c
	cmp r0, #0x5a
	beq _0211BE38
	cmp r0, #0x75
	beq _0211BE6C
	cmp r0, #0x78
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x958]
	str r0, [r6, #0x91c]
	str r0, [r6, #0x64]
	str r0, [r6, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BE38:
	ldr r0, [r6, #4]
	add r0, r0, #0x15c
	add r0, r0, #0x1800
	bl FUN_0206c270
	ldr r0, _0211BEBC ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	ldr r0, [r6, #4]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x958]
	str r0, [r6, #0x91c]
	str r0, [r6, #0x64]
	str r0, [r6, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BE6C:
	ldr r1, [r6, #4]
	mov r0, r6
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x958]
	str r1, [r6, #0x91c]
	str r1, [r6, #0x64]
	str r1, [r6, #0x5c]
	bl FUN_ov73_0211c980
	mov r2, #0x1c
	mov r1, #5
	str r0, [r6, #0x84]
	str r2, [r6, #0x68]
	strb r1, [r6, #0x81]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BEA4: .word 0x0209A070
_0211BEA8: .word 0x02099F38
_0211BEAC: .word 0x0400000E
_0211BEB0: .word 0x020A1540
_0211BEB4: .word 0x020A0640
_0211BEB8: .word 0x020A1640
_0211BEBC: .word 0x0209A0AC
	arm_func_end FUN_ov73_0211bbec

	arm_func_start FUN_ov73_0211bec0
FUN_ov73_0211bec0: ; 0x0211BEC0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211BED8: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211BEF0 ; case 1
	b _0211BF18 ; case 2
	b _0211BF2C ; case 3
	b _0211BF50 ; case 4
	b _0211BF60 ; case 5
_0211BEF0:
	add r0, r4, #0xc8
	mov r1, #0xf
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov73_0211aacc
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BF18:
	bl FUN_ov73_0211ab18
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #3
	str r0, [r4, #8]
_0211BF2C:
	mov r0, r4
	bl FUN_ov73_0211acec
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BF50:
	mov r1, #0
	bl FUN_ov73_0211c080
	mov r0, #5
	str r0, [r4, #8]
_0211BF60:
	mov r0, r4
	bl FUN_ov73_0211bb48
	ldr r0, [r4, #4]
	add r1, r4, #0x68
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov73_0211c10c
	ldr r6, _0211BFD0 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f672c
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov73_0211c3f8
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_0211BFD0: .word 0x0209F5C0
	arm_func_end FUN_ov73_0211bec0

	arm_func_start FUN_ov73_0211bfd4
FUN_ov73_0211bfd4: ; 0x0211BFD4
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #5
	cmpne r1, #6
	cmpne r1, #7
	ldmnefd sp!, {r3, pc}
	bl FUN_ov73_0211af64
	ldr r0, _0211C000 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r3, pc}
_0211C000: .word 0x0209F5C0
	arm_func_end FUN_ov73_0211bfd4

	arm_func_start FUN_ov73_0211c004
FUN_ov73_0211c004: ; 0x0211C004
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211C070 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f5af0
	ldr r0, _0211C074 ; =0x0209A070
	bl  FUN_ov16_020f6c58
	add r0, r4, #0xc8
	mov r1, #0xf
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov73_0211abfc
	ldr r0, _0211C078 ; =0x0209AEC0
	bl FUN_020465fc
	add r0, r4, #0xb4
	mov r1, #1
	bl  FUN_ov16_020f2fe4
	ldr r0, _0211C07C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldrb r0, [r4, #0x920]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl  FUN_ov16_020f47fc
	mov r0, #4
	bl  FUN_ov16_020f3f60
	ldmfd sp!, {r4, pc}
_0211C070: .word 0x0209F5C0
_0211C074: .word 0x0209A070
_0211C078: .word 0x0209AEC0
_0211C07C: .word 0x02099F38
	arm_func_end FUN_ov73_0211c004

	arm_func_start FUN_ov73_0211c080
FUN_ov73_0211c080: ; 0x0211C080
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r2, #0
	str r2, [r5, #0x5c]
	str r0, [r5, #0x60]
	str r0, [r5, #0x914]
	str r1, [r5, #0xc]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0211C0C8
_0211C0AC: ; jump table
	b _0211C0BC ; case 0
	b _0211C0D0 ; case 1
	b _0211C0D0 ; case 2
	b _0211C0D0 ; case 3
_0211C0BC:
	ldr r0, [r5, #0x64]
	str r0, [r5, #0x5c]
	b _0211C0D0
_0211C0C8:
	mov r0, #1
	str r0, [r5, #0x60]
_0211C0D0:
	mov r0, r5
	bl FUN_ov73_0211bb5c
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_ov73_02119f44
	ldr r0, _0211C108 ; =0x0209F5C0
	mov r1, r4
	mov r2, #2
	bl  FUN_ov16_020f60f8
	mov r0, r5
	bl FUN_ov73_0211c10c
	str r4, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C108: .word 0x0209F5C0
	arm_func_end FUN_ov73_0211c080

	arm_func_start FUN_ov73_0211c10c
FUN_ov73_0211c10c: ; 0x0211C10C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211C2C0 ; =0x0209A070
	mov r1, #2
	bl  FUN_ov16_020f6f38
	cmp r0, #0
	strgeb r0, [r6, #0x90f]
	ldrb r1, [r6, #0x90f]
	mov r0, r6
	bl FUN_ov73_0211c980
	ldr r1, [r6, #0x5c]
	str r0, [r6, #0x84]
	cmp r1, #0xa
	bge _0211C15C
	ldr r0, [r6, #0x91c]
	cmp r0, r1
	strne r1, [r6, #0x91c]
_0211C15C:
	ldr r0, [r6, #0x91c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	mov r4, #0
	mov r2, #0xe
	beq _0211C23C
	ldr r5, _0211C2C4 ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x11
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x10
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #0x13
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #0x1c
	bl  FUN_ov16_020f6084
	ldr r1, [r6, #0x91c]
	mov r0, r6
	bl FUN_ov73_0211c980
	cmp r0, #0
	ldrneb r0, [r0, #0x74]
	mov r2, #0x1d
	cmpne r0, #0
	beq _0211C214
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x1f
	bl  FUN_ov16_020f6084
	ldmfd sp!, {r4, r5, r6, pc}
_0211C214:
	ldr r5, _0211C2C4 ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #0x1f
	bl  FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C23C:
	ldr r5, _0211C2C4 ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #0x11
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #0x1d
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #0x10
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x13
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x1f
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x1c
	bl  FUN_ov16_020f6084
	ldmfd sp!, {r4, r5, r6, pc}
_0211C2C0: .word 0x0209A070
_0211C2C4: .word 0x0209F5C0
	arm_func_end FUN_ov73_0211c10c

	arm_func_start FUN_ov73_0211c2c8
FUN_ov73_0211c2c8: ; 0x0211C2C8
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
	arm_func_end FUN_ov73_0211c2c8

	arm_func_start FUN_ov73_0211c318
FUN_ov73_0211c318: ; 0x0211C318
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r1, #6
	mov r5, #1
	ldr r0, _0211C3A4 ; =0x0209A454
	str r1, [r7, #8]
	strb r5, [r7, #0x920]
	strb r5, [r0, #0x2e]
	strb r5, [r0, #0x2f]
	mov r1, #0
	strb r1, [r0, #0x30]
	strb r1, [r0, #0x32]
	strb r5, [r0, #0x28]
	strb r5, [r0, #0x29]
	strb r1, [r0, #0x2a]
	ldr r2, _0211C3A8 ; =0x020A0640
	strb r1, [r0, #0x2b]
	strb r1, [r2, #0x1a]
	strb r1, [r0, #0x31]
	mov r4, #0x5a
	strb r1, [r2, #0x1b]
	strb r1, [r0, #0x33]
	ldr r6, [r7, #4]
	mov r2, r4
	mov r0, r6
	bl FUN_02041ef0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02041ef0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C3A4: .word 0x0209A454
_0211C3A8: .word 0x020A0640
	arm_func_end FUN_ov73_0211c318

	arm_func_start FUN_ov73_0211c3ac
FUN_ov73_0211c3ac: ; 0x0211C3AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r5, [r6, #4]
	mov r4, #0x78
	mov r3, #6
	mov r0, r5
	mov r2, r4
	mov r1, #0
	str r3, [r6, #8]
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041ef0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov73_0211c3ac

	arm_func_start FUN_ov73_0211c3f8
FUN_ov73_0211c3f8: ; 0x0211C3F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	ldr r7, _0211C900 ; =0x0209BA20
	cmp r1, #0
	mov r6, #2
	mov r8, #0
	mov r5, #1
	bne _0211C6AC
	ldr r1, [r4, #0x28]
	cmp r1, #0x1a
	blt _0211C434
	cmp r1, #0x1c
	bgt _0211C434
	bl FUN_ov73_0211c2c8
_0211C434:
	ldr r0, [r4, #0x28]
	cmp r0, #0x11
	blt _0211C504
	cmp r0, #0x13
	bgt _0211C504
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	blt _0211C504
	cmp r1, #0xa
	bge _0211C504
	mov r0, r4
	bl FUN_ov73_0211c99c
	cmp r0, #0
	beq _0211C4E8
	ldr r2, [r4, #0x5c]
	ldr r0, _0211C904 ; =0x00000808
	ldr r5, _0211C908 ; =0x020A1640
	mul r6, r2, r0
	ldr r0, [r5, #0x230]
	add r7, r0, #8
	ldrb r0, [r7, r6]
	cmp r0, #0
	beq _0211C504
	ldr r0, [r4, #4]
	mov r1, #0x10
	add r0, r0, #0x1000
	strb r2, [r0, #0x958]
	ldr r0, [r4, #4]
	add r0, r0, #0x15c
	add r0, r0, #0x1800
	bl FUN_0206c158
	ldr r0, [r4, #4]
	add r0, r0, #0x15c
	add r0, r0, #0x1800
	bl  FUN_ov16_020efa04
	mov r1, #0x63
	ldr r0, _0211C900 ; =0x0209BA20
	strb r1, [r5, #0x22]
	mov r1, #1
	add r2, r7, r6
	strb r1, [r5, #0x245]
	bl FUN_02050dac
	mov r0, r4
	bl FUN_ov73_0211c318
	b _0211C504
_0211C4E8:
	ldr r0, [r4, #0x5c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211C504
	mov r0, r4
	mov r1, #3
	bl FUN_ov73_0211c080
_0211C504:
	ldr r0, [r4, #0x28]
	mov r5, #0
	cmp r0, #4
	blt _0211C58C
	cmp r0, #0xd
	bgt _0211C58C
	ldr r1, [r4, #0x5c]
	mov r0, r4
	bl FUN_ov73_0211c99c
	cmp r0, #0
	beq _0211C568
	ldrb r1, [r4, #0x910]
	ldrb r0, [r4, #0x90f]
	cmp r1, r0
	strneb r0, [r4, #0x910]
	bne _0211C58C
	ldr r0, [r4, #0x5c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211C58C
	ldr r1, [r4, #0x914]
	ldr r0, _0211C90C ; =0x0209AC44
	mov r5, #1
	bl FUN_0202cf6c
	b _0211C58C
_0211C568:
	ldrb r1, [r4, #0x90f]
	ldr r0, [r4, #0x5c]
	strb r1, [r4, #0x910]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211C58C
	mov r0, r4
	mov r1, #3
	bl FUN_ov73_0211c080
_0211C58C:
	ldr r0, [r4, #0x28]
	cmp r0, #0xe
	blt _0211C5D4
	cmp r0, #0x10
	bgt _0211C5D4
	ldr r1, [r4, #0x5c]
	mov r0, r4
	bl FUN_ov73_0211c99c
	cmp r0, #0
	movne r5, #1
	bne _0211C5D4
	ldr r0, [r4, #0x5c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211C5D4
	mov r0, r4
	mov r1, #3
	bl FUN_ov73_0211c080
_0211C5D4:
	ldr r0, [r4, #0x28]
	cmp r0, #0x1d
	blt _0211C674
	cmp r0, #0x1f
	bgt _0211C674
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	blt _0211C674
	cmp r1, #0xa
	bge _0211C674
	mov r0, r4
	bl FUN_ov73_0211c99c
	cmp r0, #0
	beq _0211C658
	ldr r2, [r4, #0x5c]
	ldr r0, _0211C904 ; =0x00000808
	ldr r1, _0211C908 ; =0x020A1640
	mul r3, r2, r0
	ldr r0, [r1, #0x230]
	add r1, r0, #8
	ldrb r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _0211C674
	ldrb r0, [r1, #0xd1]
	tst r0, #1
	beq _0211C674
	ldr r1, [r4, #4]
	mov r0, r4
	add r1, r1, #0x1000
	strb r2, [r1, #0x958]
	bl FUN_ov73_0211c3ac
	b _0211C674
_0211C658:
	ldr r0, [r4, #0x5c]
	bl FUN_ov73_02119f00
	cmp r0, #0
	beq _0211C674
	mov r0, r4
	mov r1, #3
	bl FUN_ov73_0211c080
_0211C674:
	cmp r5, #0
	beq _0211C8F8
	ldrb r1, [r4, #0x90f]
	mov r0, r4
	bl FUN_ov73_0211c980
	cmp r0, #0
	beq _0211C8F8
	mov r0, r4
	mov r1, #1
	bl FUN_ov73_0211c080
	ldrb r0, [r4, #0x90f]
	str r0, [r4, #0x64]
	str r0, [r4, #0x918]
	b _0211C8F8
_0211C6AC:
	cmp r1, #1
	bne _0211C8B0
	ldr r1, [r4, #0x28]
	cmp r1, #0x1a
	blt _0211C6E4
	cmp r1, #0x1c
	bgt _0211C6E4
	mov r1, r8
	bl FUN_ov73_0211c080
	ldr r0, _0211C910 ; =0x04000050
	mov r2, r8
	mov r1, #0xf
	bl FUN_0200462c
	b _0211C8F8
_0211C6E4:
	mov r9, #0
	mov r0, r7
	mov r1, r9
	bl FUN_0207249c
	ldr r1, [r4, #0x28]
	mov r10, r0
	cmp r1, #0xe
	blt _0211C744
	cmp r1, #0x10
	bgt _0211C744
	ldr r2, _0211C908 ; =0x020A1640
	mov r3, #0x64
	mov r0, r7
	mov r1, r9
	strb r3, [r2, #0x22]
	bl FUN_0204c50c
	cmp r0, #0xb
	bge _0211C73C
	mov r1, #2
	mov r0, r4
	str r1, [r4, #0x924]
	bl FUN_ov73_0211c080
_0211C73C:
	mov r9, #0
	b _0211C81C
_0211C744:
	ldr r0, [r4, #0x28]
	cmp r0, #0x11
	blt _0211C78C
	cmp r0, #0x13
	bgt _0211C78C
	mov r0, r4
	mov r1, #0
	bl FUN_ov73_0211d418
	ldr r0, _0211C900 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204c50c
	cmp r0, #0xb
	bge _0211C788
	mov r0, r4
	mov r1, r6
	str r6, [r4, #0x924]
	bl FUN_ov73_0211c080
_0211C788:
	b _0211C818
_0211C78C:
	ldr r0, [r4, #0x28]
	cmp r0, #0x14
	blt _0211C7D4
	cmp r0, #0x16
	bgt _0211C7D4
	mov r0, r4
	mov r1, #1
	bl FUN_ov73_0211d418
	ldr r0, _0211C900 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204c50c
	cmp r0, #0xb
	bge _0211C7D0
	mov r0, r4
	mov r1, r6
	str r6, [r4, #0x924]
	bl FUN_ov73_0211c080
_0211C7D0:
	b _0211C818
_0211C7D4:
	ldr r0, [r4, #0x28]
	cmp r0, #0x17
	blt _0211C81C
	cmp r0, #0x19
	bgt _0211C81C
	mov r0, r4
	mov r1, r6
	bl FUN_ov73_0211d418
	ldr r0, _0211C900 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204c50c
	cmp r0, #0xb
	bge _0211C818
	mov r0, r4
	mov r1, r6
	str r6, [r4, #0x924]
	bl FUN_ov73_0211c080
_0211C818:
	mov r9, #1
_0211C81C:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0211C850
	mov r0, r10
	bl _strlen
	cmp r0, #0
	ldrneb r0, [r10, #0x2d]
	cmpne r0, #0
	bne _0211C850
	mov r0, r4
	mov r1, #2
	str r5, [r4, #0x924]
	bl FUN_ov73_0211c080
_0211C850:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0211C8F8
	ldr r0, _0211C910 ; =0x04000050
	mov r2, r8
	mov r1, #0xf
	bl FUN_0200462c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r1, [r4, #0x918]
	ldr r0, _0211C908 ; =0x020A1640
	and r2, r1, #0xff
	strb r2, [r0, #0x246]
	strb r9, [r0, #0x247]
	ldr r0, [r4, #4]
	mov r1, r8
	add r0, r0, #0x1000
	strb r2, [r0, #0x958]
	ldr r0, [r4, #4]
	mov r2, #0x75
	bl FUN_02041ef0
	b _0211C8F8
_0211C8B0:
	cmp r1, #2
	bne _0211C8D4
	ldr r1, [r4, #0x28]
	cmp r1, #0xe
	blt _0211C8F8
	cmp r1, #0x10
	bgt _0211C8F8
	mov r1, r5
	b _0211C8F4
_0211C8D4:
	cmp r1, #3
	bne _0211C8F8
	ldr r1, [r4, #0x28]
	cmp r1, #0xe
	blt _0211C8F8
	cmp r1, #0x10
	bgt _0211C8F8
	mov r1, r8
_0211C8F4:
	bl FUN_ov73_0211c080
_0211C8F8:
	str r8, [r4, #0x28]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C900: .word 0x0209BA20
_0211C904: .word 0x00000808
_0211C908: .word 0x020A1640
_0211C90C: .word 0x0209AC44
_0211C910: .word 0x04000050
	arm_func_end FUN_ov73_0211c3f8

	arm_func_start FUN_ov73_0211c914
FUN_ov73_0211c914: ; 0x0211C914
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211C97C ; =0x02099F38
	b _0211C950
_0211C92C:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x184]
	cmp r1, #0
	beq _0211C94C
	ldr r0, [r5]
	bl  FUN_ov16_021128c4
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x184]
_0211C94C:
	add r7, r7, #1
_0211C950:
	cmp r7, #0xc
	blt _0211C92C
	ldr r1, [r4, #0x180]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211C97C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x180]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C97C: .word 0x02099F38
	arm_func_end FUN_ov73_0211c914

	arm_func_start FUN_ov73_0211c980
FUN_ov73_0211c980: ; 0x0211C980
	add r2, r0, #0x1b4
	mov r0, #0xbc
	mla r0, r1, r0, r2
	ldrb r1, [r0, #0x6f]
	cmp r1, #0
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov73_0211c980

	arm_func_start FUN_ov73_0211c99c
FUN_ov73_0211c99c: ; 0x0211C99C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r2, _0211CACC ; =0x020A1640
	ldr r0, _0211CAD0 ; =0x00000808
	ldr r3, [r2, #0x230]
	add r2, sp, #0
	add r3, r3, #8
	mla r6, r1, r0, r3
	mov r7, #0
	mov r8, #1
	mov r0, #4
_0211C9C8:
	strh r7, [r2]
	strh r7, [r2, #2]
	strh r7, [r2, #4]
	strh r7, [r2, #6]
	add r2, r2, #8
	subs r0, r0, #1
	bne _0211C9C8
	mov r10, #0
	add r5, sp, #0
	ldr r11, _0211CAD4 ; =0x0209BA20
	mov r4, #0x6c
	b _0211CA44
_0211C9F8:
	mla r0, r10, r4, r6
	ldrh r9, [r0, #0xd8]
	cmp r9, #0
	beq _0211CA20
	mov r1, r9
	add r0, r6, #0x7e0
	bl FUN_0204fca0
	cmp r0, #0
	moveq r8, #0
	beq _0211CA4C
_0211CA20:
	mov r0, r11
	mov r1, r9
	bl FUN_0204bc4c
	cmp r0, #0
	movgt r1, r10, lsl #1
	addgt r0, r7, #1
	strgth r9, [r5, r1]
	andgt r7, r0, #0xff
	add r10, r10, #1
_0211CA44:
	cmp r10, #0x10
	blt _0211C9F8
_0211CA4C:
	mov r1, #0
	cmp r7, #0xb
	movlo r8, r1
	cmp r8, #0
	beq _0211CAC0
	mov r5, #0
	sub r0, r7, #1
	add r4, sp, #0
	b _0211CAB8
_0211CA70:
	mov r2, r5, lsl #1
	ldrh r3, [r4, r2]
	cmp r3, #0
	beq _0211CAB4
	add r6, r5, #1
	b _0211CAA4
_0211CA88:
	mov r2, r6, lsl #1
	ldrh r2, [r4, r2]
	cmp r2, #0
	beq _0211CAA0
	cmp r3, r2
	moveq r8, r1
_0211CAA0:
	add r6, r6, #1
_0211CAA4:
	cmp r6, r7
	blt _0211CA88
	cmp r8, #0
	beq _0211CAC0
_0211CAB4:
	add r5, r5, #1
_0211CAB8:
	cmp r5, r0
	blt _0211CA70
_0211CAC0:
	mov r0, r8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CACC: .word 0x020A1640
_0211CAD0: .word 0x00000808
_0211CAD4: .word 0x0209BA20
	arm_func_end FUN_ov73_0211c99c

	arm_func_start FUN_ov73_0211cad8
FUN_ov73_0211cad8: ; 0x0211CAD8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r4, r0
	mov r12, r5
	mvn r2, #0
	mov r0, #0xbc
	b _0211CB44
_0211CAF4:
	mla r3, r5, r0, r4
	strb r12, [r3, #0x1b4]
	strb r12, [r3, #0x1cc]
	strb r12, [r3, #0x1fc]
	add r1, r3, #0x100
	strh r12, [r1, #0xfe]
	strb r12, [r3, #0x1fd]
	add r1, r3, #0x200
	strh r12, [r1]
	strh r12, [r1, #2]
	strh r2, [r1, #4]
	str r12, [r3, #0x224]
	strh r12, [r1, #6]
	strh r12, [r1, #8]
	strb r12, [r3, #0x20a]
	strb r12, [r3, #0x228]
	strb r12, [r3, #0x229]
	strb r12, [r3, #0x222]
	strb r12, [r3, #0x223]
	add r5, r5, #1
_0211CB44:
	cmp r5, #0xa
	blt _0211CAF4
	ldr r0, _0211CBA8 ; =0x020A1640
	ldr r0, [r0, #0x230]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #8
	add r6, r4, #0x1b4
	mov r7, #0
	b _0211CB9C
_0211CB6C:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0211CB8C
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_ov73_0211cbac
_0211CB8C:
	add r0, r5, #8
	add r7, r7, #1
	add r5, r0, #0x800
	add r6, r6, #0xbc
_0211CB9C:
	cmp r7, #0xa
	blt _0211CB6C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CBA8: .word 0x020A1640
	arm_func_end FUN_ov73_0211cad8

	arm_func_start FUN_ov73_0211cbac
FUN_ov73_0211cbac: ; 0x0211CBAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r3
	ldrb r3, [r4, #2]
	mov r5, r2
	ldr r0, _0211CC94 ; =0x36B06E71
	strb r3, [r5, #0x48]
	ldr r3, [r4, #4]
	ldr r2, _0211CC98 ; =0x91A2B3C5
	umull r0, r12, r3, r0
	sub r0, r3, r12
	add r12, r12, r0, lsr #1
	mov r12, r12, lsr #0x11
	strh r12, [r5, #0x4a]
	ldr r12, [r4, #4]
	ldr r3, _0211CC9C ; =0x88888889
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
	ldrh r0, [r4, #0x12]
	add r2, r5, #0x30
	mov r3, #0x18
	strh r0, [r5, #0x54]
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #0x52]
	ldrb r0, [r4, #0xd1]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0x74]
	ldrsb r1, [r4, #3]
	ldr r0, _0211CCA0 ; =0x0209BA20
	bl FUN_020735a0
	ldmfd sp!, {r3, r4, r5, pc}
_0211CC94: .word 0x36B06E71
_0211CC98: .word 0x91A2B3C5
_0211CC9C: .word 0x88888889
_0211CCA0: .word 0x0209BA20
	arm_func_end FUN_ov73_0211cbac

	arm_func_start FUN_ov73_0211cca4
FUN_ov73_0211cca4: ; 0x0211CCA4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	mov r7, #0
	mov r10, r0
	mov r5, r7
	ldr r4, _0211CE44 ; =0x02099F38
	b _0211CCE4
_0211CCC0:
	add r0, r10, r5, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211CCE0
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r10, r5, lsl #2
	str r7, [r0, #0x2c]
_0211CCE0:
	add r5, r5, #1
_0211CCE4:
	cmp r5, #0xc
	blt _0211CCC0
	add r8, r10, #0x1b4
	mov r9, #0
	mov r5, #1
	add r6, sp, #0x18
	add r11, sp, #0x14
	ldr r4, _0211CE44 ; =0x02099F38
	b _0211CD70
_0211CD08:
	ldrb r0, [r8, #0x6f]
	cmp r0, #0
	beq _0211CD68
	ldrh r1, [r8, #0x4e]
	ldr r0, [r10, #0x164]
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211CD68
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r7, [sp]
	stmib sp, {r5, r7}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _0211CE48 ; =0x0211D7F4
	mov r3, r7
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x2c]
	strh r9, [r8, #0x50]
_0211CD68:
	add r9, r9, #1
	add r8, r8, #0xbc
_0211CD70:
	cmp r9, #0xa
	blt _0211CD08
	ldr r1, _0211CE4C ; =0x0211D814
	add r0, sp, #0x1c
	mov r6, #0
	bl FUN_02023c40
	mov r9, #0xa
	mov r5, #1
	add r8, sp, #0x11c
	ldr r11, _0211CE50 ; =0x0211D834
	ldr r7, _0211CE54 ; =0x0211D578
	ldr r4, _0211CE44 ; =0x02099F38
	b _0211CE0C
_0211CDA4:
	sub r0, r9, #0xa
	ldr r2, [r7, r0, lsl #2]
	mov r0, r8
	mov r1, r11
	bl FUN_02023c40
	ldr r1, [r10, #0x170]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f3d08
	cmp r0, #0
	beq _0211CE08
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r2, sp, #0x1c
	mov r3, r6
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x2c]
_0211CE08:
	add r9, r9, #1
_0211CE0C:
	cmp r9, #0xc
	blt _0211CDA4
	mov r4, #1
	b _0211CE24
_0211CE1C:
	mov r0, r4
	bl FUN_02001eb0
_0211CE24:
	mov r0, r10
	bl FUN_ov73_0211ab18
	cmp r0, #0
	beq _0211CE1C
	mov r0, r10
	bl FUN_ov73_0211ab68
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CE44: .word 0x02099F38
_0211CE48: .word 0x0211D7F4
_0211CE4C: .word 0x0211D814
_0211CE50: .word 0x0211D834
_0211CE54: .word 0x0211D578
	arm_func_end FUN_ov73_0211cca4

	arm_func_start FUN_ov73_0211ce58
FUN_ov73_0211ce58: ; 0x0211CE58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r11, r1
	add r8, r4, #0x188
	mov r9, #0
	mov r7, #1
	mov r6, #2
	ldr r5, _0211D010 ; =0x02099F38
	b _0211D000
_0211CE80:
	mov r0, r4
	mov r1, r9
	bl FUN_ov73_0211c980
	movs r10, r0
	beq _0211CFF8
	ldrsh r0, [r10, #0x50]
	cmp r0, #0
	blt _0211CFF8
	ldr r0, [r8]
	cmp r0, #0
	bne _0211CEC0
	ldr r0, [r5]
	mov r1, #2
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r8]
_0211CEC0:
	add r0, sp, #4
	str r0, [sp]
	mov r0, r4
	mov r1, r9
	mov r2, r11
	add r3, sp, #8
	bl FUN_ov73_0211d3c0
	ldr r0, [sp, #4]
	mov r2, r7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [sp, #8]
	ldr r0, [r5]
	mov r3, r3, lsl #0x10
	ldr r1, [r8]
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldrsh r2, [r10, #0x50]
	ldr r0, [r5]
	ldr r1, [r8]
	add r2, r4, r2, lsl #2
	ldr r3, [r2, #0x2c]
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r8]
	mov r2, r7
	mov r3, #0
	bl  FUN_ov16_0211401c
	ldr r0, [r5]
	ldr r1, [r8]
	mov r2, r7
	mov r3, #3
	bl  FUN_ov16_021139bc
	ldr r0, _0211D014 ; =0x020A1640
	mov r2, r6
	ldr r0, [r0, #0x230]
	add r1, r0, #8
	ldr r0, _0211D018 ; =0x00000808
	mla r0, r9, r0, r1
	ldrh r0, [r0, #0xe]
	and r10, r0, #0xff
	ldr r0, [sp, #4]
	cmp r10, #3
	sub r0, r0, #6
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [sp, #8]
	ldr r0, [r5]
	sub r3, r3, #6
	mov r3, r3, lsl #0x10
	ldr r1, [r8]
	mov r3, r3, asr #0x10
	movhi r10, #0
	bl  FUN_ov16_02113b78
	ldr r3, [r4, #0x54]
	ldr r0, [r5]
	ldr r1, [r8]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r8]
	mov r3, r10
	mov r2, r6
	bl  FUN_ov16_0211401c
	ldr r0, [r5]
	ldr r1, [r8]
	mov r2, r6
	mov r3, #1
	bl  FUN_ov16_021139bc
_0211CFF8:
	add r9, r9, #1
	add r8, r8, #4
_0211D000:
	cmp r9, #0xa
	blt _0211CE80
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D010: .word 0x02099F38
_0211D014: .word 0x020A1640
_0211D018: .word 0x00000808
	arm_func_end FUN_ov73_0211ce58

	arm_func_start FUN_ov73_0211d01c
FUN_ov73_0211d01c: ; 0x0211D01C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	mov r9, #0
	mov r0, r1
	str r1, [sp, #0x14]
	mov r1, r0, asr #2
	ldr r8, _0211D1DC ; =0x0211D45E
	add r4, r0, r1, lsr #29
	mov r7, #6
	mov r6, r9
	mov r5, #0x30
	add r11, sp, #0x20
	b _0211D0F0
_0211D054:
	ldrsh r0, [r8, #2]
	ldrsh r2, [r8], #4
	add r3, r9, #4
	add r1, r0, #2
	add r0, r2, #3
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	strh r0, [sp, #0x20]
	add r0, r1, r4, asr #3
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	strh r0, [sp, #0x22]
	strh r7, [sp, #0x24]
	strh r7, [sp, #0x26]
	strh r6, [sp, #0x28]
	strh r6, [sp, #0x2a]
	strh r5, [sp, #0x2c]
	strh r5, [sp, #0x2e]
	strb r6, [sp, #0x30]
	str r6, [sp, #0x34]
	stmia sp, {r6, r11}
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _0211D1E0 ; =0x0209F5C0
	mov r1, r6
	mov r2, r6
	str r6, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, #2
	str r0, [sp]
	add r2, r9, #4
	ldr r0, _0211D1E4 ; =0x0209A070
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_020f6c8c
	add r1, r9, #0xd
	add r1, r10, r1
	strb r0, [r1, #0x90]
	add r9, r9, #1
_0211D0F0:
	cmp r9, #0xa
	blt _0211D054
	ldr r0, [r10, #0x1b0]
	mov r1, #0xd
	mov r3, #2
	mov r2, #5
	strb r3, [r10, #0x90c]
	strb r2, [r10, #0x90d]
	strb r1, [r10, #0x90e]
	str r1, [r10, #0x60]
	cmp r0, #0
	bne _0211D138
	ldr r0, _0211D1E8 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	str r0, [r10, #0x1b0]
_0211D138:
	add r0, sp, #0x18
	str r0, [sp]
	ldr r1, [r10, #0x5c]
	ldr r2, [sp, #0x14]
	add r3, sp, #0x1c
	mov r0, r10
	bl FUN_ov73_0211d3c0
	ldr r0, [sp, #0x18]
	ldr r5, _0211D1E8 ; =0x02099F38
	sub r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r4, #1
	sub r0, r0, #8
	mov r3, r0, lsl #0x10
	ldr r0, [r5]
	ldr r1, [r10, #0x1b0]
	mov r2, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r2, [r10, #0x58]
	ldr r0, [r5]
	and r3, r2, #0xff
	ldr r1, [r10, #0x1b0]
	mov r2, r4
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, [r10, #0x1b0]
	mov r2, r4
	bl  FUN_ov16_0211401c
	ldr r0, [r5]
	ldr r1, [r10, #0x1b0]
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_021139bc
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D1DC: .word 0x0211D45E
_0211D1E0: .word 0x0209F5C0
_0211D1E4: .word 0x0209A070
_0211D1E8: .word 0x02099F38
	arm_func_end FUN_ov73_0211d01c

	arm_func_start FUN_ov73_0211d1ec
FUN_ov73_0211d1ec: ; 0x0211D1EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r2, r1
	ldrb r3, [r2, #2]
	mov r1, #0xc
	mla r0, r3, r1, r0
	ldr r7, [r0, #0xc8]
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
	ldr r0, _0211D284 ; =0x0209F5C0
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D284: .word 0x0209F5C0
	arm_func_end FUN_ov73_0211d1ec

	arm_func_start FUN_ov73_0211d288
FUN_ov73_0211d288: ; 0x0211D288
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	cmp r5, #0
	mov r7, r0
	mov r6, r1
	mov r4, #0
	cmpgt r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0211D2A8:
	mov r0, r7
	mov r1, r6
	bl FUN_ov73_0211d1ec
	add r4, r4, #1
	cmp r4, r5
	add r6, r6, #9
	blt _0211D2A8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov73_0211d288

	arm_func_start FUN_ov73_0211d2c8
FUN_ov73_0211d2c8: ; 0x0211D2C8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r3, r1
	ldrb r2, [r3, #2]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r4, [r0, #0xc8]
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
	ldr r0, _0211D37C ; =0x0209F5C0
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211D37C: .word 0x0209F5C0
	arm_func_end FUN_ov73_0211d2c8

	arm_func_start FUN_ov73_0211d380
FUN_ov73_0211d380: ; 0x0211D380
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	cmp r5, #0
	mov r7, r0
	mov r6, r1
	mov r4, #0
	cmpgt r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0211D3A0:
	mov r0, r7
	mov r1, r6
	bl FUN_ov73_0211d2c8
	add r4, r4, #1
	cmp r4, r5
	add r6, r6, #9
	blt _0211D3A0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov73_0211d380

	arm_func_start FUN_ov73_0211d3c0
FUN_ov73_0211d3c0: ; 0x0211D3C0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0211D414 ; =0x66666667
	mov r4, r1, lsr #0x1f
	smull r0, r12, r5, r1
	add r12, r4, r12, asr #1
	mov lr, #5
	smull r0, r12, lr, r12
	smull r12, lr, r5, r1
	sub r12, r1, r0
	mov r0, #0x28
	mul r0, r12, r0
	add r5, r0, #0x20
	add lr, r4, lr, asr #1
	mov r0, #0x38
	mul r0, lr, r0
	add r1, r0, #0x18
	ldr r0, [sp, #0x10]
	str r5, [r3]
	add r1, r2, r1
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D414: .word 0x66666667
	arm_func_end FUN_ov73_0211d3c0

	arm_func_start FUN_ov73_0211d418
FUN_ov73_0211d418: ; 0x0211D418
	ldr r2, _0211D434 ; =0x020A1640
	ldr r0, _0211D438 ; =0x02099F44
	strb r1, [r2, #0x22]
	ldr r0, [r0]
	ldr r12, _0211D43C ; = FUN_ov131_021421f4
	and r1, r1, #0xff
	bx r12
_0211D434: .word 0x020A1640
_0211D438: .word 0x02099F44
_0211D43C: .word  FUN_ov131_021421f4
	arm_func_end FUN_ov73_0211d418

	arm_func_start FUN_ov73_0211d440
FUN_ov73_0211d440: ; 0x0211D440
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov73_0211d440

	arm_func_start FUN_ov73_0211d454
FUN_ov73_0211d454: ; 0x0211D454
	bx lr
	arm_func_end FUN_ov73_0211d454
_0211D458:
	.byte 0x02, 0x06, 0x00, 0x03, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x14, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x05, 0x00, 0x07, 0x00, 0x0A, 0x00, 0x07, 0x00, 0x0F, 0x00
	.byte 0x07, 0x00, 0x14, 0x00, 0x07, 0x00, 0x00, 0x00, 0x70, 0xD6, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xF8, 0xD5, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0x04, 0xD6, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x40, 0xD6, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x10, 0xD6, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x1C, 0xD6, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x28, 0xD6, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x34, 0xD6, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0x4C, 0xD6, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x58, 0xD6, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x64, 0xD6, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0xEC, 0xD5, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov73_0211d4f0
FUN_ov73_0211d4f0: ; 0x0211D4F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211D538 ; =0x0211D560
	str r0, [r4]
	ldr r0, _0211D53C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211D540 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D538: .word 0x0211D560
_0211D53C: .word 0x00009CCD
_0211D540: .word 0x0000EA3C
	arm_func_end FUN_ov73_0211d4f0
	; 0x0211D544


	.rodata
	.incbin "/incbin/overlay73_rodata.bin"

	.bss
	.space 0x0

	.include "/macros/function.inc"
	.include "/include/overlay36.inc"

	.text
	arm_func_start FUN_ov36_02119f00
FUN_ov36_02119f00: ; 0x02119F00
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
	arm_func_end FUN_ov36_02119f00

	arm_func_start FUN_ov36_02119f38
FUN_ov36_02119f38: ; 0x02119F38
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r4, #8]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xe
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov36_02119f38

	arm_func_start FUN_ov36_02119f64
FUN_ov36_02119f64: ; 0x02119F64
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r4, #8]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xf
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov36_02119f64

	arm_func_start FUN_ov36_02119f90
FUN_ov36_02119f90: ; 0x02119F90
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	str r1, [r5, #0x3c]
	mov r3, #0xe
	mov r4, #1
	mov r1, r2
	str r3, [r5, #0x38]
	str r2, [r5, #0x44]
	strb r4, [r5, #0x48]
	bl FUN_ov36_02119f00
	sub r1, r4, #2
	strb r0, [r5, #0x49]
	str r1, [r5, #0x40]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov36_02119f90

	arm_func_start FUN_ov36_02119fc8
FUN_ov36_02119fc8: ; 0x02119FC8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #4
	ldreqb r0, [r4, #0x11]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r6, #0
	ldr r0, _0211A0CC ; =0x0209F5C0
	mov r1, r6
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	strh r5, [r4, #0xb0]
	tst r5, #1
	beq _0211A06C
	ldr r0, [r4, #0xc]
	sub r5, r6, #1
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211A038
_0211A020: ; jump table
	b _0211A030 ; case 0
	b _0211A030 ; case 1
	b _0211A030 ; case 2
	b _0211A030 ; case 3
_0211A030:
	mov r6, #3
	mov r5, #1
_0211A038:
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, #3
	mov r1, #1
	ldr r0, _0211A0D0 ; =0x0209AC44
	moveq r1, #6
	bl FUN_0202cf6c
	add r0, r4, r5
	ldrb r1, [r0, #0x4c]
	ldr r0, _0211A0CC ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	str r6, [r4, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A06C:
	tst r5, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	sub r5, r6, #1
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211A0A0
_0211A088: ; jump table
	b _0211A098 ; case 0
	b _0211A098 ; case 1
	b _0211A098 ; case 2
	b _0211A098 ; case 3
_0211A098:
	mov r6, #5
	mov r5, #2
_0211A0A0:
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211A0D0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	add r0, r4, r5
	ldrb r1, [r0, #0x4c]
	ldr r0, _0211A0CC ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	str r6, [r4, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A0CC: .word 0x0209F5C0
_0211A0D0: .word 0x0209AC44
	arm_func_end FUN_ov36_02119fc8

	arm_func_start FUN_ov36_0211a0d4
FUN_ov36_0211a0d4: ; 0x0211A0D4
	ldr r0, _0211A0EC ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211A0F0 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211A0EC: .word 0x0209F5C0
_0211A0F0: .word  FUN_ov16_020f6b3c
	arm_func_end FUN_ov36_0211a0d4

	arm_func_start FUN_ov36_0211a0f4
FUN_ov36_0211a0f4: ; 0x0211A0F4
	ldr r1, [r0, #0x1c]
	ldr r0, _0211A104 ; =0x0209A070
	ldr r12, _0211A108 ; = FUN_ov16_020f6e2c
	bx r12
_0211A104: .word 0x0209A070
_0211A108: .word  FUN_ov16_020f6e2c
	arm_func_end FUN_ov36_0211a0f4

	arm_func_start FUN_ov36_0211a10c
FUN_ov36_0211a10c: ; 0x0211A10C
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, r1
	bne _0211A12C
	ldr r0, _0211A150 ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211A12C:
	ldr r4, _0211A150 ; =0x0209A070
	mov r0, r4
	bl  FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211A150: .word 0x0209A070
	arm_func_end FUN_ov36_0211a10c

	arm_func_start FUN_ov36_0211a154
FUN_ov36_0211a154: ; 0x0211A154
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x20]
	cmp r0, #3
	beq _0211A178
	cmp r0, #4
	cmpne r0, #5
	beq _0211A190
	b _0211A19C
_0211A178:
	ldr r0, [r6, #0xc]
	mov r1, #1
	cmp r0, #3
	moveq r1, #6
	ldr r0, _0211A1DC ; =0x0209AC44
	b _0211A198
_0211A190:
	ldr r0, _0211A1DC ; =0x0209AC44
	mov r1, #4
_0211A198:
	bl FUN_0202cf6c
_0211A19C:
	ldr r5, _0211A1E0 ; =0x0209A070
	ldr r1, [r6, #0x1c]
	mov r0, r5
	bl  FUN_ov16_020f6d3c
	movs r4, r0
	bmi _0211A1D0
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldr r0, _0211A1E4 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f6530
_0211A1D0:
	ldr r0, [r6, #0x1c]
	str r0, [r6, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1DC: .word 0x0209AC44
_0211A1E0: .word 0x0209A070
_0211A1E4: .word 0x0209F5C0
	arm_func_end FUN_ov36_0211a154

	arm_func_start FUN_ov36_0211a1e8
FUN_ov36_0211a1e8: ; 0x0211A1E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A2D4 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211A298
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0211A264
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov36_0211a0d4
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211A264
	mov r0, r4
	bl FUN_ov36_0211a0f4
_0211A264:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x14]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x18]
	bl FUN_ov36_0211a0d4
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov36_0211a10c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A298:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ldrne r1, [r4, #0x1c]
	cmpne r1, #0
	beq _0211A2C0
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _0211A2C0
	mov r0, r4
	bl FUN_ov36_0211a154
_0211A2C0:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A2D4: .word 0x0209F5C0
	arm_func_end FUN_ov36_0211a1e8

	arm_func_start FUN_ov36_0211a2d8
FUN_ov36_0211a2d8: ; 0x0211A2D8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x50
	mov r1, #0
	mov r2, #0x60
	bl MemWrite
	ldr r0, _0211A308 ; =0x0211AD74
	add r1, r4, #0x50
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211A308: .word 0x0211AD74
	arm_func_end FUN_ov36_0211a2d8

	arm_func_start FUN_ov36_0211a30c
FUN_ov36_0211a30c: ; 0x0211A30C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211A39C ; =0x020A0640
	ldr r6, [r0, #0x50]
	ldrb r1, [r1, #0x89]
	cmp r1, #0
	bne _0211A360
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211A3A0 ; =0x0211AB64
	add r5, r0, #0x50
	mov r4, #0xc
	b _0211A350
_0211A33C:
	ldmia r7, {r0, r2}
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	add r7, r7, #8
_0211A350:
	ldr r0, [r7]
	cmp r0, #0
	bne _0211A33C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A360:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211A3A4 ; =0x0211ABA4
	add r5, r0, #0x50
	mov r4, #0xc
	b _0211A38C
_0211A378:
	ldmia r7, {r0, r2}
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	add r7, r7, #8
_0211A38C:
	ldr r0, [r7]
	cmp r0, #0
	bne _0211A378
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A39C: .word 0x020A0640
_0211A3A0: .word 0x0211AB64
_0211A3A4: .word 0x0211ABA4
	arm_func_end FUN_ov36_0211a30c

	arm_func_start FUN_ov36_0211a3a8
FUN_ov36_0211a3a8: ; 0x0211A3A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x50
	mov r4, #0xc
_0211A3B8:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #8
	blt _0211A3B8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov36_0211a3a8

	arm_func_start FUN_ov36_0211a3d0
FUN_ov36_0211a3d0: ; 0x0211A3D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x50]
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
	beq _0211A428
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl  FUN_ov16_020f19d4
	str r0, [r5]
_0211A428:
	cmp r6, #0
	blt _0211A440
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl  FUN_ov16_020f1138
_0211A440:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov36_0211a3d0

	arm_func_start FUN_ov36_0211a448
FUN_ov36_0211a448: ; 0x0211A448
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r9, r0
	bl  FUN_ov16_020f3f48
	add r0, sp, #0xc
	mov r8, #0
	str r8, [r0]
	str r8, [r0, #4]
	str r8, [r0, #8]
	str r8, [r0, #0xc]
	bl FUN_0200505c
	mov r7, #0x20
	mov r1, r0
	mov r0, r8
	mov r2, r7
	bl FUN_0200787c
	bl FUN_0200505c
	mov r1, r7
	bl FUN_020026d0
	mov r1, #1
	str r7, [sp, #8]
	mov r6, #3
	str r6, [sp]
	add r5, sp, #8
	mov r0, r9
	str r5, [sp, #4]
	mov r2, r8
	mov r3, r1
	bl FUN_ov36_0211a3d0
	mov r4, #2
	str r6, [sp]
	mov r2, r0
	str r5, [sp, #4]
	mov r0, r9
	mov r1, r4
	mov r3, r4
	bl FUN_ov36_0211a3d0
	str r6, [sp]
	mov r2, r0
	mov r3, r4
	mov r1, r6
	mov r0, r9
	str r5, [sp, #4]
	bl FUN_ov36_0211a3d0
	bl FUN_02004f78
	mov r1, r0
	mov r0, r8
	mov r2, r7
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r7
	bl FUN_020026d0
	str r7, [sp, #8]
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r8
	mov r2, r7
	bl FUN_0200787c
	bl FUN_02004fcc
	mov r1, r7
	bl FUN_020026d0
	mov r0, r9
	bl FUN_ov36_0211a550
	bl  FUN_ov16_020f10ac
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov36_0211a448

	arm_func_start FUN_ov36_0211a550
FUN_ov36_0211a550: ; 0x0211A550
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0xc]
	mov r1, #0xc
	add r2, r2, #4
	mla r0, r2, r1, r0
	ldr r5, [r0, #0x50]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	mov r4, #0
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl FUN_020053fc
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl FUN_0200577c
	bl FUN_02005afc
	ldmib r5, {r0, r2}
	mov r1, r4
	add r0, r5, r0
	bl FUN_02005b88
	bl FUN_02005bfc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov36_0211a550

	arm_func_start FUN_ov36_0211a5b8
FUN_ov36_0211a5b8: ; 0x0211A5B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r0, [r10, #0xc]
	mov r1, #2
	cmp r0, #3
	moveq r1, #3
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r1, [r0, #0x50]
	cmp r1, #0
	beq _0211A674
	ldr r0, [r1, #0xc]
	mov r4, #0
	add r9, r1, r0
	mov r5, #3
	mov r8, #0xb
	mov r7, #0x14
	mov r3, #0xa
	mov r2, #0x50
	mov r1, #0x18
	mov r0, #2
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r5, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	str r9, [sp, #0x28]
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r6, _0211A77C ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r6
	mov r1, r4
	mov r2, r4
	mov r3, r5
	str r4, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f6084
_0211A674:
	ldr r2, [r10, #0x5c]
	cmp r2, #0
	beq _0211A734
	ldr r1, [r2, #0xc]
	ldr r0, [r10, #0xc]
	add r9, r2, r1
	cmp r0, #3
	addeq r9, r9, #0x48
	mov r8, #0
	mov r7, #0x1a
	mov r6, #0x15
	mov r5, #6
	mov r4, #3
	mov r11, #0x30
_0211A6AC:
	mov r0, #0
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #0x18
	strh r0, [sp, #0x22]
	mov r0, #1
	strb r0, [sp, #0x24]
	mov r1, #0
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r5, [sp, #0x18]
	strh r4, [sp, #0x1a]
	strh r11, [sp, #0x20]
	str r9, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0211A77C ; =0x0209F5C0
	mov r2, r1
	add r3, r8, #4
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r8, r8, #1
	cmp r8, #2
	add r9, r9, #0x24
	blt _0211A6AC
	ldr r0, _0211A77C ; =0x0209F5C0
	mov r1, #0
	mov r2, #5
	bl  FUN_ov16_020f6084
_0211A734:
	ldr r4, _0211A780 ; =0x0209A070
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r3, r5
	str r5, [sp]
	mov r2, #3
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x4d]
	mov r0, r4
	mov r3, r5
	mov r1, #4
	mov r2, #5
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x4e]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A77C: .word 0x0209F5C0
_0211A780: .word 0x0209A070
	arm_func_end FUN_ov36_0211a5b8

	arm_func_start FUN_ov36_0211a784
FUN_ov36_0211a784: ; 0x0211A784
	ldr r0, _0211A790 ; =0x0209F5C0
	ldr r12, _0211A794 ; = FUN_ov16_020f6274
	bx r12
_0211A790: .word 0x0209F5C0
_0211A794: .word  FUN_ov16_020f6274
	arm_func_end FUN_ov36_0211a784

	arm_func_start FUN_ov36_0211a798
FUN_ov36_0211a798: ; 0x0211A798
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	sub r5, r6, #1
	mov r1, r6
	mov r2, r6
	mov r0, #1
	str r6, [r7, #8]
	strb r6, [r7, #0x10]
	strb r6, [r7, #0x11]
	str r5, [r7, #0x14]
	str r5, [r7, #0x18]
	str r6, [r7, #0x1c]
	str r6, [r7, #0x20]
	str r6, [r7, #0x24]
	str r6, [r7, #0x28]
	str r6, [r7, #0xc]
	bl FUN_020044e0
	mov r4, #3
	mov r1, r6
	mov r2, r4
	add r0, r7, #0x4c
	bl MemWrite
	ldr r0, _0211A824 ; =0x0209A070
	mov r1, r4
	bl  FUN_ov16_020f6c20
	mov r0, r7
	str r6, [r7, #0x38]
	str r6, [r7, #0x3c]
	str r5, [r7, #0x40]
	str r6, [r7, #0x44]
	strb r6, [r7, #0x48]
	strb r6, [r7, #0x49]
	bl FUN_ov36_0211a2d8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A824: .word 0x0209A070
	arm_func_end FUN_ov36_0211a798

	arm_func_start FUN_ov36_0211a828
FUN_ov36_0211a828: ; 0x0211A828
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211A840: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211A858 ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	b _0211A880 ; case 3
	b _0211A89C ; case 4
	b _0211A89C ; case 5
_0211A858:
	add r0, r4, #0x50
	mov r1, #8
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov36_0211a30c
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A880:
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	mov r1, #0
	bl FUN_ov36_0211aa90
	ldmfd sp!, {r4, r5, r6, pc}
_0211A89C:
	bl FUN_ov36_0211a784
	ldr r0, [r4, #4]
	add r1, r4, #0x38
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov36_0211ab00
	ldr r6, _0211A908 ; =0x0209F5C0
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
	bl FUN_ov36_0211ab04
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_0211A908: .word 0x0209F5C0
	arm_func_end FUN_ov36_0211a828

	arm_func_start FUN_ov36_0211a90c
FUN_ov36_0211a90c: ; 0x0211A90C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211A924: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211A944 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _0211A960 ; case 4
	b _0211A960 ; case 5
	b _0211A954 ; case 6
	b _0211A960 ; case 7
_0211A944:
	bl FUN_ov36_0211a448
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211A954:
	bl FUN_ov36_0211a550
	mov r0, #4
	str r0, [r4, #8]
_0211A960:
	ldr r0, _0211A970 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211A970: .word 0x0209F5C0
	arm_func_end FUN_ov36_0211a90c

	arm_func_start FUN_ov36_0211a974
FUN_ov36_0211a974: ; 0x0211A974
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, _0211A9B8 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5af0
	mov r0, r4
	mov r1, #0x100
	bl  FUN_ov16_020f1aec
	ldr r0, _0211A9BC ; =0x0209A070
	bl  FUN_ov16_020f6c58
	add r0, r5, #0x50
	mov r1, #8
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov36_0211a3a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A9B8: .word 0x0209F5C0
_0211A9BC: .word 0x0209A070
	arm_func_end FUN_ov36_0211a974

	arm_func_start FUN_ov36_0211a9c0
FUN_ov36_0211a9c0: ; 0x0211A9C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	ldr r0, _0211AA74 ; =0x0209F5C0
	mov r2, r1
	bl  FUN_ov16_020f5ff4
	ldr r0, _0211AA78 ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	ldr r0, [r4, #0xc]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0211A9F0: ; jump table
	b _0211AA00 ; case 0
	b _0211AA00 ; case 1
	b _0211AA00 ; case 2
	b _0211AA00 ; case 3
_0211AA00:
	mov r0, r4
	bl FUN_ov36_0211a5b8
	ldr r0, _0211AA7C ; =0x020A0640
	ldrb r1, [r0, #0x89]
	ldrb r0, [r0, #0x87]
	cmp r1, #0
	beq _0211AA48
	cmp r0, #0
	ldr r0, _0211AA7C ; =0x020A0640
	ldr r2, _0211AA80 ; =0x0211AD90
	ldrb r0, [r0, #0x87]
	ldreq r2, _0211AA84 ; =0x0211ADF8
	mov r1, #0xf
	cmp r0, #0
	moveq r1, #0x10
	mov r0, r4
	bl FUN_ov36_02119f90
	ldmfd sp!, {r4, pc}
_0211AA48:
	cmp r0, #0
	ldr r0, _0211AA7C ; =0x020A0640
	ldr r2, _0211AA88 ; =0x0211AE48
	ldrb r0, [r0, #0x87]
	ldreq r2, _0211AA8C ; =0x0211AEB0
	mov r1, #0xc
	cmp r0, #0
	moveq r1, #0xd
	mov r0, r4
	bl FUN_ov36_02119f90
	ldmfd sp!, {r4, pc}
_0211AA74: .word 0x0209F5C0
_0211AA78: .word 0x0209A070
_0211AA7C: .word 0x020A0640
_0211AA80: .word 0x0211AD90
_0211AA84: .word 0x0211ADF8
_0211AA88: .word 0x0211AE48
_0211AA8C: .word 0x0211AEB0
	arm_func_end FUN_ov36_0211a9c0

	arm_func_start FUN_ov36_0211aa90
FUN_ov36_0211aa90: ; 0x0211AA90
	stmfd sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	bl FUN_ov36_0211a9c0
	mov r2, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r2, [r4, #0x30]
	str r1, [r4, #0x34]
	str r2, [r4, #0x2c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211AAEC
_0211AAC4: ; jump table
	b _0211AAD4 ; case 0
	b _0211AAD4 ; case 1
	b _0211AAD4 ; case 2
	b _0211AAD4 ; case 3
_0211AAD4:
	mov r1, #2
	mov r0, #6
	str r2, [r4, #0x30]
	str r1, [r4, #0x34]
	str r0, [r4, #8]
	b _0211AAF4
_0211AAEC:
	mov r0, #1
	str r0, [r4, #0x34]
_0211AAF4:
	mov r0, #0
	str r0, [r4, #0x28]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov36_0211aa90

	arm_func_start FUN_ov36_0211ab00
FUN_ov36_0211ab00: ; 0x0211AB00
	bx lr
	arm_func_end FUN_ov36_0211ab00

	arm_func_start FUN_ov36_0211ab04
FUN_ov36_0211ab04: ; 0x0211AB04
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x28]
	cmp r1, #3
	beq _0211AB24
	cmp r1, #4
	cmpne r1, #5
	beq _0211AB44
	ldmfd sp!, {r3, pc}
_0211AB24:
	ldr r1, [r0, #0xc]
	cmp r1, #3
	beq _0211AB3C
	add r1, r1, #1
	bl FUN_ov36_0211aa90
	ldmfd sp!, {r3, pc}
_0211AB3C:
	bl FUN_ov36_02119f64
	ldmfd sp!, {r3, pc}
_0211AB44:
	bl FUN_ov36_02119f38
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov36_0211ab04

	arm_func_start FUN_ov36_0211ab4c
FUN_ov36_0211ab4c: ; 0x0211AB4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov36_0211ab4c

	arm_func_start FUN_ov36_0211ab60
FUN_ov36_0211ab60: ; 0x0211AB60
	bx lr
	arm_func_end FUN_ov36_0211ab60
_0211AB64:
	.byte 0xD0, 0xAC, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0xDC, 0xAC, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xAC, 0xAC, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0xA0, 0xAC, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x94, 0xAC, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0x88, 0xAC, 0x11, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x7C, 0xAC, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC4, 0xAC, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0xE8, 0xAC, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x58, 0xAC, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x64, 0xAC, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0xB8, 0xAC, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0xF4, 0xAC, 0x11, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x70, 0xAC, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov36_0211abe4
FUN_ov36_0211abe4: ; 0x0211ABE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211AC2C ; =0x0211AC40
	str r0, [r4, #0x10]
	ldr r0, _0211AC30 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _0211AC34 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AC2C: .word 0x0211AC40
_0211AC30: .word 0x00009CCD
_0211AC34: .word 0x0000EA3C
	arm_func_end FUN_ov36_0211abe4
	; 0x0211AC38


	.rodata
	.incbin "/incbin/overlay36_rodata.bin"

	.bss
	.space 0x0
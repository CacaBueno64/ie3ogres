
	.include "/macros/function.inc"
	.include "/include/overlay56.inc"

	.text
	arm_func_start FUN_ov56_02119f00
FUN_ov56_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x1000
	mov r4, #0
	str r4, [r0, #0x614]
	mov r0, #0x4000000
	ldr r1, [r0]
	ldr r0, _0211A044 ; =0x02099EB4
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r5, #8]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A048 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r1, r4
	add r0, r5, #0x18
	mov r2, #0x60
	bl MI_CpuFill8
	str r4, [r5, #0x78]
	str r4, [r5, #0x7c]
	str r4, [r5, #0x80]
	mov r6, #1
	str r6, [r5, #0x18]
	mov r0, r5
	bl FUN_ov56_0211b5d8
	mov r0, r5
	bl FUN_ov56_0211b6a8
	mov r0, r5
	bl FUN_ov56_0211b7c0
	mov r0, r5
	bl FUN_ov56_0211a2e4
	mov r0, r5
	bl FUN_ov56_0211ac5c
	str r4, [r5, #0x84]
	ldr r0, _0211A04C ; =0x02099F18
	ldr r1, [r0]
	ldrb r1, [r1, #0x45]
	str r1, [r5, #0x84]
	cmp r1, #0
	bne _02119FC4
	ldr r0, [r0]
	mov r1, r6
	bl FUN_0205131c
_02119FC4:
	mov r0, r5
	bl FUN_ov56_0211a64c
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x14c0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x1480
	mov r2, #0x40
	bl MI_CpuFill8
	mov r0, r5
	bl FUN_ov56_0211c0b4
	mov r0, r5
	bl FUN_ov56_0211acac
	b _0211A014
_0211A004:
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_0211e674
	add r4, r4, #1
_0211A014:
	cmp r4, #6
	blt _0211A004
	mov r1, #0
	add r0, r5, #0x1000
	mov r2, #1
	str r2, [r0, #0x600]
	str r2, [r0, #0x604]
	str r2, [r0, #0x608]
	str r2, [r0, #0x308]
	str r1, [r5, #0xc]
	str r1, [r5, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A044: .word 0x02099EB4
_0211A048: .word 0x02099ED4
_0211A04C: .word 0x02099F18
	arm_func_end FUN_ov56_02119f00

	arm_func_start FUN_ov56_0211a050
FUN_ov56_0211a050: ; 0x0211A050
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #8]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A170 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A174 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r5, #0
	ldrh r3, [r4, #0x1c]
	ldr r2, _0211A178 ; =0x0209A454
	mov r0, r4
	mov r1, r5
	strh r3, [r2, #0x2c]
	bl FUN_ov56_0211e0bc
	mov r0, r4
	mov r1, #1
	bl FUN_ov56_0211e0bc
	mov r0, r4
	mov r1, #2
	bl FUN_ov56_0211e0bc
	mov r0, r4
	bl FUN_ov56_0211c81c
	mov r0, r4
	bl FUN_ov56_0211c658
	mov r0, r4
	bl FUN_ov56_0211dbd8
	mov r0, r4
	bl FUN_ov56_0211d5a8
	mov r0, r4
	bl FUN_ov56_0211e5d8
	mov r0, r4
	bl FUN_ov56_0211ad14
	mov r0, r4
	bl FUN_ov56_0211d264
	mov r0, r4
	bl FUN_ov56_0211c53c
	mov r0, r4
	bl FUN_ov56_0211c100
	mov r0, r4
	bl FUN_ov56_0211a6dc
	ldr r0, [r4, #0x84]
	cmp r0, #0
	bne _0211A128
	ldr r0, _0211A17C ; =0x02099F18
	mov r1, r5
	ldr r0, [r0]
	bl FUN_0205131c
_0211A128:
	mov r0, r4
	bl FUN_ov56_0211b808
	mov r0, r4
	bl FUN_ov56_0211b6d8
	mov r0, r4
	mov r1, #2
	bl FUN_ov56_0211b5f4
	add r0, r4, #0x1000
	ldr r1, [r0, #0x614]
	cmp r1, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A180 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x614]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A170: .word 0x02099EB4
_0211A174: .word 0x02099ED4
_0211A178: .word 0x0209A454
_0211A17C: .word 0x02099F18
_0211A180: .word 0x02099F38
	arm_func_end FUN_ov56_0211a050

	arm_func_start FUN_ov56_0211a184
FUN_ov56_0211a184: ; 0x0211A184
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0xc]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211A1FC
_0211A19C: ; jump table
	b _0211A1C0 ; case 0
	b _0211A1C8 ; case 1
	b _0211A1D0 ; case 2
	b _0211A1D8 ; case 3
	b _0211A1E0 ; case 4
	b _0211A1E8 ; case 5
	b _0211A1FC ; case 6
	b _0211A1F0 ; case 7
	b _0211A1F8 ; case 8
_0211A1C0:
	bl FUN_ov56_0211ad34
	b _0211A1FC
_0211A1C8:
	bl FUN_ov56_0211ad88
	b _0211A1FC
_0211A1D0:
	bl FUN_ov56_0211ae3c
	b _0211A1FC
_0211A1D8:
	bl FUN_ov56_0211aec4
	b _0211A1FC
_0211A1E0:
	bl FUN_ov56_0211af60
	b _0211A1FC
_0211A1E8:
	bl FUN_ov56_0211b020
	b _0211A1FC
_0211A1F0:
	bl FUN_ov56_0211b2b4
	b _0211A1FC
_0211A1F8:
	bl FUN_ov56_0211b2e8
_0211A1FC:
	mov r0, r5
	bl FUN_ov56_0211c3ac
	ldr r0, _0211A2D0 ; =0x02099EEC
	ldr r4, _0211A2D4 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl FUN_0205a60c
	ldr r0, _0211A2D8 ; =0x02099ED4
	ldr r1, [r4]
	ldr r0, [r0]
	bl  FUN_ov16_0210e10c
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A24C
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A258
_0211A24C:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A258:
	bl FUN_0201fdac
	ldr r2, _0211A2DC ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	mov r4, #0
	mov r6, #0x24
	b _0211A2BC
_0211A278:
	mla r0, r4, r6, r5
	add r0, r0, #0x1000
	ldr r0, [r0, #0x514]
	cmp r0, #0
	beq _0211A298
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_0211e8ac
_0211A298:
	add r0, r5, r4, lsl #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x5d0]
	cmp r0, #0
	beq _0211A2B8
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_0211eb8c
_0211A2B8:
	add r4, r4, #1
_0211A2BC:
	cmp r4, #6
	blt _0211A278
	mov r0, r5
	bl FUN_ov56_0211b3c8
	ldmfd sp!, {r4, r5, r6, pc}
_0211A2D0: .word 0x02099EEC
_0211A2D4: .word 0x0209A110
_0211A2D8: .word 0x02099ED4
_0211A2DC: .word 0x02099F58
	arm_func_end FUN_ov56_0211a184

	arm_func_start FUN_ov56_0211a2e0
FUN_ov56_0211a2e0: ; 0x0211A2E0
	bx lr
	arm_func_end FUN_ov56_0211a2e0

	arm_func_start FUN_ov56_0211a2e4
FUN_ov56_0211a2e4: ; 0x0211A2E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r5, #0
	ldr r8, _0211A4A8 ; =0x0209A454
	mov r1, r5
	add r0, r4, #0x88
	mov r2, #0x20
	ldrb r6, [r8, #0x28]
	mov r7, #1
	bl MI_CpuFill8
	mov r1, r5
	add r0, r4, #0xa8
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _0211A4AC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211A33C
	ldrb r0, [r8, #0x31]
	cmp r0, #0
	movne r7, r5
	movne r6, #2
_0211A33C:
	ldr r0, _0211A4B0 ; =0x0209BA20
	mov r1, r6
	bl FUN_0205107c
	mov r9, #0
	add r1, r4, #0x1000
	strb r9, [r1, #0x612]
	ldr r2, _0211A4A8 ; =0x0209A454
	mov r8, r0
	ldrh r6, [r2, #0x2c]
	mov r1, r9
	mov r0, r6
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211A3C0
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211A3C0
	add r0, r4, #0x1000
	mov r1, #1
	strb r1, [r0, #0x612]
	b _0211A3B8
_0211A390:
	mov r0, r8
	mov r1, r9
	bl FUN_0204fbe8
	cmp r6, r0
	bne _0211A3B4
	cmp r6, #0
	addne r0, r4, #0x1000
	strneb r5, [r0, #0x612]
	bne _0211A3C0
_0211A3B4:
	add r9, r9, #1
_0211A3B8:
	cmp r9, #0x10
	blt _0211A390
_0211A3C0:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x612]
	cmp r0, #0
	beq _0211A418
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020efa9c
	movs r6, r0
	beq _0211A474
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211A474
	mov r0, r6
	bl FUN_0206cbf8
	ldr r1, [r4, #0xac]
	mov r7, r5
	add r1, r4, r1, lsl #1
	strh r0, [r1, #0x88]
	ldr r0, [r4, #0xac]
	add r0, r0, #1
	str r0, [r4, #0xac]
	b _0211A474
_0211A418:
	mov r6, #0
	b _0211A46C
_0211A420:
	mov r0, r8
	mov r1, r6
	bl FUN_0204fbe8
	mov r1, r5
	bl  FUN_ov16_020efa9c
	movs r9, r0
	beq _0211A468
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211A468
	mov r0, r9
	bl FUN_0206cbf8
	ldr r1, [r4, #0xac]
	add r1, r4, r1, lsl #1
	strh r0, [r1, #0x88]
	ldr r0, [r4, #0xac]
	add r0, r0, #1
	str r0, [r4, #0xac]
_0211A468:
	add r6, r6, #1
_0211A46C:
	cmp r6, #0x10
	blt _0211A420
_0211A474:
	ldr r0, _0211A4AC ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	ldreq r0, _0211A4B4 ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	movne r7, #0
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	add r1, r4, #0x88
	bl FUN_ov56_0211a4b8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A4A8: .word 0x0209A454
_0211A4AC: .word 0x020A0640
_0211A4B0: .word 0x0209BA20
_0211A4B4: .word 0x02099E98
	arm_func_end FUN_ov56_0211a2e4

	arm_func_start FUN_ov56_0211a4b8
FUN_ov56_0211a4b8: ; 0x0211A4B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x50
	add r8, sp, #0x30
	ldr r3, _0211A644 ; =0x0209A454
	mov r7, #0x20
	mov r9, #0
	mov r4, r1
	mov r0, r8
	mov r1, r9
	mov r2, r7
	ldrb r10, [r3, #0x28]
	bl MI_CpuFill8
	add r6, sp, #8
	mov r1, r9
	mov r0, r6
	mov r2, #8
	bl MI_CpuFill8
	add r5, sp, #0x10
	mov r1, r9
	mov r0, r5
	mov r2, r7
	bl MI_CpuFill8
	mov r1, r8
	mov r2, r7
	mov r0, r4
	bl MI_CpuCopy8
	ldr r8, _0211A648 ; =0x0209BA20
	str r9, [sp]
	mov r1, r10
	mov r0, r8
	mov r2, r6
	mov r3, #4
	bl FUN_0204b2f4
	str r9, [sp]
	mov r7, r0
	mov r1, r10
	mov r0, r8
	mov r2, r5
	mov r3, #0x10
	str r9, [sp, #4]
	bl FUN_0204b540
	cmp r7, #0
	mov r3, r9
	ble _0211A5AC
	mov r2, r9
_0211A56C:
	mov r8, r2
	cmp r0, #0
	ble _0211A5A0
	mov r1, r3, lsl #1
	ldrh r10, [r6, r1]
_0211A580:
	mov r1, r8, lsl #1
	ldrh r1, [r5, r1]
	cmp r10, r1
	addeq r9, r9, #1
	beq _0211A5A0
	add r8, r8, #1
	cmp r8, r0
	blt _0211A580
_0211A5A0:
	add r3, r3, #1
	cmp r3, r7
	blt _0211A56C
_0211A5AC:
	cmp r9, r7
	addne sp, sp, #0x50
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r3, #0
	mov r2, r7
	add r9, sp, #8
	add r0, sp, #0x30
	mov r8, #1
	mov r1, r3
_0211A5D0:
	mov r10, r1
	mov r5, r1
	cmp r7, #0
	ble _0211A608
	mov r6, r3, lsl #1
	ldrh r12, [r0, r6]
_0211A5E8:
	mov r6, r5, lsl #1
	ldrh r6, [r9, r6]
	cmp r12, r6
	moveq r10, r8
	beq _0211A608
	add r5, r5, #1
	cmp r5, r7
	blt _0211A5E8
_0211A608:
	cmp r10, #0
	moveq r5, r3, lsl #1
	ldreqh r6, [r0, r5]
	moveq r5, r2, lsl #1
	add r3, r3, #1
	addeq r2, r2, #1
	streqh r6, [r4, r5]
	cmp r3, #0x10
	blt _0211A5D0
	add r0, sp, #8
	mov r1, r4
	mov r2, r7, lsl #1
	bl MI_CpuCopy8
	add sp, sp, #0x50
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A644: .word 0x0209A454
_0211A648: .word 0x0209BA20
	arm_func_end FUN_ov56_0211a4b8

	arm_func_start FUN_ov56_0211a64c
FUN_ov56_0211a64c: ; 0x0211A64C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r2, #0
	ldr r3, _0211A6CC ; =0x0209A250
	str r2, [r5, #0xc0]
	strh r2, [r5, #0xc4]
	ldr r0, [r3]
	ldr r1, _0211A6D0 ; =0x0212139C
	cmp r0, #0
	beq _0211A698
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r4, #1
	add r2, r5, #0xc0
	str r4, [sp, #0xc]
	bl FUN_0202eff0
	mov r2, r0
_0211A698:
	ldr r4, _0211A6D4 ; =0x0209BA20
	mov r1, r2, lsr #1
	mov r0, r4
	strh r1, [r5, #0xc4]
	bl  FUN_ov16_020eeca0
	ldr r0, _0211A6D8 ; =0x0209A454
	mov r2, #0
	ldrb r1, [r0, #0x28]
	mov r0, r4
	mov r3, r2
	bl FUN_0204d7fc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0211A6CC: .word 0x0209A250
_0211A6D0: .word 0x0212139C
_0211A6D4: .word 0x0209BA20
_0211A6D8: .word 0x0209A454
	arm_func_end FUN_ov56_0211a64c

	arm_func_start FUN_ov56_0211a6dc
FUN_ov56_0211a6dc: ; 0x0211A6DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc0]
	cmp r1, #0
	beq _0211A700
	ldr r0, _0211A70C ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0xc0]
_0211A700:
	ldr r0, _0211A710 ; =0x0209BA20
	bl  FUN_ov16_020eedb8
	ldmfd sp!, {r4, pc}
_0211A70C: .word 0x0209A250
_0211A710: .word 0x0209BA20
	arm_func_end FUN_ov56_0211a6dc

	arm_func_start FUN_ov56_0211a714
FUN_ov56_0211a714: ; 0x0211A714
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	sub sp, sp, #0x800
	ldr r4, _0211AC54 ; =0x0209A454
	mov r9, r1
	ldrb r1, [r4, #0x28]
	mov r10, r0
	ldr r0, _0211AC58 ; =0x0209BA20
	mov r8, r2
	mov r5, r3
	bl FUN_0207249c
	mov r1, #0
	mov r2, r1
	mov r7, r0
	str r1, [sp, #0x10]
	add r0, sp, #0x18
	str r2, [sp, #0xc]
	str r2, [sp, #8]
	mov r2, #0x800
	bl MI_CpuFill8
	mov r6, #0x200
	ldr r1, [sp, #0x10]
	add r0, r10, #0xc8
	mov r2, r6
	bl MI_CpuFill8
	ldr r1, [sp, #0x10]
	add r0, r10, #0x2c8
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0x2c8
	ldr r1, [sp, #0x10]
	add r0, r0, #0x400
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0xc8
	ldr r1, [sp, #0x10]
	add r0, r0, #0x800
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0xc8
	ldr r1, [sp, #0x10]
	add r0, r0, #0xc00
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0x2c8
	ldr r1, [sp, #0x10]
	add r0, r0, #0xc00
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0xec
	mov r4, #0xc
	ldr r1, [sp, #0x10]
	add r0, r0, #0x1400
	mov r2, r4
	bl MI_CpuFill8
	ldr r1, [sp, #0x10]
	add r0, r10, #0x1480
	mov r2, #0x40
	bl MI_CpuFill8
	add r0, r10, #0xc8
	ldr r1, [sp, #0x10]
	add r0, r0, #0x400
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0x2c8
	ldr r1, [sp, #0x10]
	add r0, r0, #0x800
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0xc8
	ldr r1, [sp, #0x10]
	mov r2, r6
	add r0, r0, #0x1000
	bl MI_CpuFill8
	cmp r9, #0
	mov r6, #1
	beq _0211A85C
	add r0, r10, #0x4e0
	ldr r1, [sp, #0x10]
	mov r2, r4
	add r0, r0, #0x1000
	bl MI_CpuFill8
_0211A85C:
	cmp r8, #0
	ldr r8, _0211AC58 ; =0x0209BA20
	mov r4, #0
	beq _0211A898
	add r0, r10, #0x2c8
	mov r9, #0x20
	mov r1, r4
	mov r2, r9
	add r0, r0, #0x1000
	bl MI_CpuFill8
	add r0, r10, #0x2e8
	mov r1, r4
	mov r2, r9
	add r0, r0, #0x1000
	bl MI_CpuFill8
_0211A898:
	cmp r5, #0
	beq _0211A964
	ldrh r0, [r10, #0x1c]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	mov r5, #8
	add r1, r10, #0x470
	mov r9, r0
	add r0, r1, #0x1000
	mov r1, r4
	mov r2, r5
	bl MI_CpuFill8
	add r0, r10, #0x78
	mov r1, r4
	mov r2, r5
	add r0, r0, #0x1400
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r9
	mov r2, r6
	bl  FUN_ov16_020eee4c
	movs r1, r0
	beq _0211A91C
	mov r0, r8
	bl  FUN_ov16_020ee034
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x18
	addeq r0, r10, #0x1000
	streq r6, [r0, #0x470]
	beq _0211A91C
	cmp r0, #0x19
	addeq r0, r10, #0x1000
	streq r6, [r0, #0x478]
_0211A91C:
	ldr r5, _0211AC58 ; =0x0209BA20
	mov r1, r9
	mov r0, r5
	mov r2, #2
	mov r4, #1
	bl  FUN_ov16_020eee4c
	movs r1, r0
	beq _0211A964
	mov r0, r5
	bl  FUN_ov16_020ee034
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x18
	addeq r0, r10, #0x1000
	streq r4, [r0, #0x474]
	beq _0211A964
	cmp r0, #0x19
	addeq r0, r10, #0x1000
	streq r4, [r0, #0x47c]
_0211A964:
	ldr r0, _0211AC58 ; =0x0209BA20
	add r1, sp, #0x18
	mov r2, #0x400
	mov r3, #1
	bl  FUN_ov16_020ee084
	ldrh r1, [r10, #0xc4]
	mov r8, r0
	mov r0, #0
	str r0, [sp, #0x14]
	cmp r1, #0
	ble _0211AB94
_0211A990:
	cmp r8, #0
	mov r9, #0
	ble _0211AB7C
	ldr r0, [sp, #0x14]
	ldr r5, _0211AC58 ; =0x0209BA20
	mov r11, r0, lsl #1
	add r4, r10, #0x1000
	add r6, sp, #0x18
_0211A9B0:
	ldr r0, [r10, #0xc0]
	mov r1, r9, lsl #1
	ldrh r1, [r6, r1]
	ldrh r0, [r11, r0]
	cmp r0, r1
	bne _0211AB70
	mov r0, r5
	bl  FUN_ov16_020edec4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #4]
	mov r1, r9, lsl #1
	ldrh r1, [r6, r1]
	mov r0, r5
	bl  FUN_ov16_020edeb4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp]
	mov r1, r9, lsl #1
	ldrh r1, [r6, r1]
	mov r0, r5
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _0211AB7C
	ldrb r1, [r0, #0x1d]
	cmp r1, #0x16
	bne _0211AA64
	mov r0, r9, lsl #1
	ldrh r1, [r6, r0]
	ldrh r0, [r7, #0x30]
	cmp r0, r1
	beq _0211AB70
	ldr r0, [sp, #0x10]
	add r2, r10, r0, lsl #1
	strh r1, [r2, #0xc8]
	ldr r0, [sp]
	add r1, r2, #0x400
	strh r0, [r1, #0xc8]
	ldr r0, [sp, #4]
	add r1, r2, #0x200
	strh r0, [r1, #0xc8]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	b _0211AB7C
_0211AA64:
	add r0, r1, #0xe8
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0211AB1C
	ldr r0, [r10, #0x10]
	cmp r0, #3
	beq _0211AA8C
	cmp r0, #4
	beq _0211AAB4
	b _0211AAD8
_0211AA8C:
	cmp r1, #0x18
	bne _0211AAA4
	ldr r0, [r4, #0x474]
	cmp r0, #0
	bne _0211AB70
	b _0211AAD8
_0211AAA4:
	ldr r0, [r4, #0x47c]
	cmp r0, #0
	bne _0211AB70
	b _0211AAD8
_0211AAB4:
	cmp r1, #0x18
	bne _0211AACC
	ldr r0, [r4, #0x470]
	cmp r0, #0
	bne _0211AB70
	b _0211AAD8
_0211AACC:
	ldr r0, [r4, #0x478]
	cmp r0, #0
	bne _0211AB70
_0211AAD8:
	add r0, sp, #0x18
	mov r1, r9, lsl #1
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0xc]
	add r2, r10, r0, lsl #1
	add r0, r2, #0x600
	strh r1, [r0, #0xc8]
	ldr r0, [sp]
	add r1, r2, #0xa00
	strh r0, [r1, #0xc8]
	ldr r0, [sp, #4]
	add r1, r2, #0x800
	strh r0, [r1, #0xc8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _0211AB7C
_0211AB1C:
	cmp r1, #0x17
	bne _0211AB70
	mov r0, r9, lsl #1
	ldrh r1, [r6, r0]
	ldrh r0, [r7, #0x34]
	cmp r0, r1
	beq _0211AB70
	ldr r0, [sp, #8]
	add r2, r10, r0, lsl #1
	add r0, r2, #0xc00
	strh r1, [r0, #0xc8]
	ldr r0, [sp]
	add r1, r2, #0x1000
	strh r0, [r1, #0xc8]
	ldr r0, [sp, #4]
	add r1, r2, #0xe00
	strh r0, [r1, #0xc8]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	b _0211AB7C
_0211AB70:
	add r9, r9, #1
	cmp r9, r8
	blt _0211A9B0
_0211AB7C:
	ldr r0, [sp, #0x14]
	ldrh r1, [r10, #0xc4]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0211A990
_0211AB94:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	moveq r1, #1
	beq _0211ABC8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	adds r0, r1, r0, ror #29
	ldr r0, [sp, #0x10]
	movne r2, #1
	mov r1, r0, asr #2
	moveq r2, #0
	add r0, r0, r1, lsr #29
	add r1, r2, r0, asr #3
_0211ABC8:
	add r0, r10, #0x1000
	str r1, [r0, #0x4ec]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq r1, #1
	beq _0211AC04
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	adds r0, r1, r0, ror #29
	ldr r0, [sp, #0xc]
	movne r2, #1
	mov r1, r0, asr #2
	moveq r2, #0
	add r0, r0, r1, lsr #29
	add r1, r2, r0, asr #3
_0211AC04:
	add r0, r10, #0x1000
	str r1, [r0, #0x4f0]
	ldr r0, [sp, #8]
	cmp r0, #0
	moveq r1, #1
	beq _0211AC40
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	adds r0, r1, r0, ror #29
	ldr r0, [sp, #8]
	movne r2, #1
	mov r1, r0, asr #2
	moveq r2, #0
	add r0, r0, r1, lsr #29
	add r1, r2, r0, asr #3
_0211AC40:
	add r0, r10, #0x1000
	str r1, [r0, #0x4f4]
	add sp, sp, #0x18
	add sp, sp, #0x800
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AC54: .word 0x0209A454
_0211AC58: .word 0x0209BA20
	arm_func_end FUN_ov56_0211a714

	arm_func_start FUN_ov56_0211ac5c
FUN_ov56_0211ac5c: ; 0x0211AC5C
	ldr r1, _0211ACA8 ; =0x0209A454
	ldrh r3, [r1, #0x2c]
	cmp r3, #0
	ldrne r12, [r0, #0xac]
	movne r2, #0
	cmpne r12, #0
	ble _0211AC98
_0211AC78:
	add r1, r0, r2, lsl #1
	ldrh r1, [r1, #0x88]
	cmp r3, r1
	streq r2, [r0, #0xa8]
	beq _0211AC98
	add r2, r2, #1
	cmp r2, r12
	blt _0211AC78
_0211AC98:
	ldr r0, _0211ACA8 ; =0x0209A454
	mov r1, #0
	strh r1, [r0, #0x2c]
	bx lr
_0211ACA8: .word 0x0209A454
	arm_func_end FUN_ov56_0211ac5c

	arm_func_start FUN_ov56_0211acac
FUN_ov56_0211acac: ; 0x0211ACAC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211AD10 ; =0x02099F24
	mov r6, r0
	ldr r4, [r1]
	mov r1, #4
	mov r0, r4
	mov r5, #0
	bl  FUN_ov16_020f7be0
	mov r0, r4
	bl  FUN_ov16_020f7bf4
	add r2, r6, #0x1000
	str r0, [r2, #0x30c]
	ldr r1, [r0, #0x24]
	mov r3, #0x12c000
	str r1, [r2, #0x310]
	ldr r12, [r0, #0x28]
	mov r1, r5
	str r12, [r2, #0x314]
	str r3, [r0, #0x24]
	ldr r2, [r2, #0x30c]
	mov r3, #0x1f4000
	mov r0, r4
	str r3, [r2, #0x28]
	bl  FUN_ov16_020f7be0
	ldmfd sp!, {r4, r5, r6, pc}
_0211AD10: .word 0x02099F24
	arm_func_end FUN_ov56_0211acac

	arm_func_start FUN_ov56_0211ad14
FUN_ov56_0211ad14: ; 0x0211AD14
	add r0, r0, #0x1000
	ldr r2, [r0, #0x310]
	ldr r1, [r0, #0x30c]
	str r2, [r1, #0x24]
	ldr r1, [r0, #0x314]
	ldr r0, [r0, #0x30c]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end FUN_ov56_0211ad14

	arm_func_start FUN_ov56_0211ad34
FUN_ov56_0211ad34: ; 0x0211AD34
	stmfd sp!, {r4, lr}
	ldr r1, _0211AD7C ; =0x02099EEC
	mov r4, r0
	ldr r0, [r1]
	bl FUN_0205b340
	cmp r0, #1
	ldmeqfd sp!, {r4, pc}
	add r1, r4, #0x318
	ldr r0, _0211AD80 ; =0x021213BC
	add r1, r1, #0x1000
	bl  FUN_ov16_020f3054
	add r1, r4, #0x324
	ldr r0, _0211AD84 ; =0x021213DC
	add r1, r1, #0x1000
	bl  FUN_ov16_020f3054
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211AD7C: .word 0x02099EEC
_0211AD80: .word 0x021213BC
_0211AD84: .word 0x021213DC
	arm_func_end FUN_ov56_0211ad34

	arm_func_start FUN_ov56_0211ad88
FUN_ov56_0211ad88: ; 0x0211AD88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r11, r0
	add r0, r11, #0x318
	add r0, r0, #0x1000
	mov r1, #2
	bl  FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x40
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _0211AE34 ; =0x02120F98
	add r4, sp, #0x10
	ldmia r5!, {r0, r1, r2, r3}
	mov r9, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	mov r10, #0
	ldr r6, _0211AE38 ; =0x021213F4
	add r5, r11, #0x330
	add r4, r11, #0x1000
	mov r8, r10
	mov r7, #1
_0211ADEC:
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r4, #0x324]
	ldr r2, [r9, r10, lsl #2]
	mov r1, r6
	add r3, r5, #0x1000
	bl  FUN_ov16_020f55b4
	add r10, r10, #1
	cmp r10, #0xc
	blt _0211ADEC
	mov r0, r11
	bl FUN_ov56_0211c15c
	mov r0, #2
	str r0, [r11, #0xc]
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE34: .word 0x02120F98
_0211AE38: .word 0x021213F4
	arm_func_end FUN_ov56_0211ad88

	arm_func_start FUN_ov56_0211ae3c
FUN_ov56_0211ae3c: ; 0x0211AE3C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xd4
	mov r4, r0
	add r0, r4, #0x330
	add r0, r0, #0x1000
	bl  FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0xd4
	ldmnefd sp!, {r4, r5, pc}
	ldr lr, _0211AEBC ; =0x02121038
	add r12, sp, #4
	mov r5, #0xd
_0211AE6C:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211AE6C
	mov r5, #0
	str r5, [sp]
	add r0, r4, #0x1000
	add r3, r4, #0x338
	ldr r1, [r0, #0x318]
	ldr r0, _0211AEC0 ; =0x0212140C
	add r2, sp, #4
	add r3, r3, #0x1000
	bl  FUN_ov16_020f5450
	mov r0, r4
	mov r1, r5
	bl FUN_ov56_0211b5f4
	mov r0, #3
	str r0, [r4, #0xc]
	add sp, sp, #0xd4
	ldmfd sp!, {r4, r5, pc}
_0211AEBC: .word 0x02121038
_0211AEC0: .word 0x0212140C
	arm_func_end FUN_ov56_0211ae3c

	arm_func_start FUN_ov56_0211aec4
FUN_ov56_0211aec4: ; 0x0211AEC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211AF5C ; =0x02099F38
	b _0211AF3C
_0211AEDC:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x338]
	cmp r1, #0
	beq _0211AF38
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x338]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AF38
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x338]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211AF38:
	add r4, r4, #1
_0211AF3C:
	cmp r4, #0x19
	blt _0211AEDC
	mov r0, r5
	bl FUN_ov56_0211c3ac
	cmp r0, #0
	movne r0, #4
	strne r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF5C: .word 0x02099F38
	arm_func_end FUN_ov56_0211aec4

	arm_func_start FUN_ov56_0211af60
FUN_ov56_0211af60: ; 0x0211AF60
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #0xa8]
	mov r4, #0
	add r0, r5, r0, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	ldr r1, _0211B01C ; =0x02120EAC
	cmp r0, #0
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r2, [sp]
	str r1, [sp, #4]
	beq _0211AFA8
	bl FUN_0206d6d8
	mov r4, r0
_0211AFA8:
	mov r0, r5
	bl FUN_ov56_0211bde4
	mov r0, r5
	bl FUN_ov56_0211be60
	mov r0, r5
	bl FUN_ov56_0211c470
	mov r1, #1
	mov r6, #0
	mov r0, r5
	mov r2, r1
	mov r3, r6
	bl FUN_ov56_0211a714
	mov r1, r6
	mov r0, r5
	bl FUN_ov56_0211e674
	add r2, sp, #0
	mov r0, #0x60
	add r1, r5, #0x1000
	ldr r2, [r2, r4, lsl #2]
	str r0, [r1, #0x4fc]
	str r0, [r1, #0x504]
	mov r0, r5
	str r2, [r1, #0x500]
	str r2, [r1, #0x508]
	bl FUN_ov56_0211c958
	mov r0, #5
	str r0, [r5, #0xc]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B01C: .word 0x02120EAC
	arm_func_end FUN_ov56_0211af60

	arm_func_start FUN_ov56_0211b020
FUN_ov56_0211b020: ; 0x0211B020
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r1, _0211B2B0 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211B288
_0211B054: ; jump table
	b _0211B070 ; case 0
	b _0211B170 ; case 1
	b _0211B1C4 ; case 2
	b _0211B1C4 ; case 3
	b _0211B1C4 ; case 4
	b _0211B1D0 ; case 5
	b _0211B278 ; case 6
_0211B070:
	mov r0, r4
	bl FUN_ov56_02120e4c
	mov r0, r4
	bl FUN_ov56_0211e5d8
	mov r0, r4
	bl FUN_ov56_0211dbd8
	mov r0, r4
	bl FUN_ov56_0211d5a8
	mov r0, r4
	bl FUN_ov56_0211c81c
	mov r0, r4
	bl FUN_ov56_0211c658
	mov r0, r4
	mov r8, #0
	mov r1, r8
	bl FUN_ov56_0211e0bc
	mov r0, r4
	mov r7, #1
	mov r1, r7
	bl FUN_ov56_0211e0bc
	mov r0, r4
	mov r6, #2
	mov r1, r6
	bl FUN_ov56_0211e0bc
	add r0, r4, #0x1000
	str r8, [r0, #0x4e8]
	str r8, [r0, #0x4e4]
	str r8, [r0, #0x4e0]
	mov r5, #3
	str r5, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl FUN_ov56_02120274
	mov r1, #5
	str r1, [sp]
	mov r0, r4
	mov r2, #6
	mov r3, #7
	bl FUN_ov56_02120274
	mov r3, r7
	mov r1, #4
	str r1, [sp]
	mov r0, r4
	mov r2, r8
	bl FUN_ov56_02120274
	mov r1, r8
	ldr r0, [r4, #0xa8]
	add r0, r4, r0, lsl #1
	ldrh r0, [r0, #0x88]
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	bne _0211B160
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r6
	str r5, [sp]
	bl FUN_ov56_02120274
_0211B160:
	mov r0, r4
	mov r1, #0
	bl FUN_ov56_02120390
	b _0211B288
_0211B170:
	mov r0, r4
	bl FUN_ov56_02120e4c
	mov r0, r4
	bl FUN_ov56_0211e128
	mov r1, #3
	mov r0, r4
	mov r2, r1
	mov r3, #4
	str r1, [sp]
	bl FUN_ov56_02120274
	mov r1, #5
	str r1, [sp]
	mov r0, r4
	mov r2, #8
	mov r3, #9
	bl FUN_ov56_02120274
	mov r0, r4
	add r1, r4, #0x1000
	ldr r1, [r1, #0x46c]
	eor r1, r1, #1
	b _0211B270
_0211B1C4:
	mov r0, r4
	mov r1, #1
	bl FUN_ov56_02120390
_0211B1D0:
	mov r0, r4
	mov r6, #0
	bl FUN_ov56_02120e4c
	mov r0, r4
	bl FUN_ov56_0211c81c
	mov r0, r4
	bl FUN_ov56_0211c6a8
	mov r0, r4
	bl FUN_ov56_0211c658
	mov r0, r4
	bl FUN_ov56_0211c58c
	mov r0, r4
	bl FUN_ov56_0211d348
	mov r1, #3
	mov r5, #4
	mov r0, r4
	mov r2, r1
	mov r3, r5
	str r1, [sp]
	bl FUN_ov56_02120274
	mov r1, #5
	mov r0, r4
	mov r2, #8
	mov r3, #9
	str r1, [sp]
	bl FUN_ov56_02120274
	mov r2, #2
	str r5, [sp]
	mov r1, r5
	mov r0, r4
	mov r3, r2
	bl FUN_ov56_02120274
	ldr r1, [r4, #0x10]
	mov r0, r4
	mov r2, r6
	bl FUN_ov56_0211f140
	cmp r0, #0
	movne r6, #1
	mov r0, r4
	mov r1, r6
_0211B270:
	bl FUN_ov56_02120330
	b _0211B288
_0211B278:
	mov r0, r4
	bl FUN_ov56_021209a0
	mov r0, r4
	bl FUN_ov56_02120c9c
_0211B288:
	mov r0, r4
	bl FUN_ov56_0211bb74
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	str r0, [r4, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B2B0: .word 0x02099ED4
	arm_func_end FUN_ov56_0211b020

	arm_func_start FUN_ov56_0211b2b4
FUN_ov56_0211b2b4: ; 0x0211B2B4
	stmfd sp!, {r4, lr}
	ldr r1, _0211B2E4 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #8
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211B2E4: .word 0x02099ED4
	arm_func_end FUN_ov56_0211b2b4

	arm_func_start FUN_ov56_0211b2e8
FUN_ov56_0211b2e8: ; 0x0211B2E8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x7c]
	ldr r4, [r5, #0x80]
	mov r1, #0
	cmp r2, r4
	cmpeq r2, #0
	bne _0211B370
	ldr r0, _0211B390 ; =0x0209A454
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	bne _0211B348
	ldr r4, [r5, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B348:
	ldr r5, [r5, #4]
	mov r4, #0x5a
	mov r0, r5
	mov r2, r4
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_0211B370:
	ldr r5, [r5, #4]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_0211B390: .word 0x0209A454
	arm_func_end FUN_ov56_0211b2e8

	arm_func_start FUN_ov56_0211b394
FUN_ov56_0211b394: ; 0x0211B394
	ldr r3, _0211B3C4 ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211B3B0
	cmp r1, #0
	cmpeq r2, #0
	bxne lr
_0211B3B0:
	mov r3, #7
	str r1, [r0, #0x7c]
	str r2, [r0, #0x80]
	str r3, [r0, #0xc]
	bx lr
_0211B3C4: .word 0x0209A454
	arm_func_end FUN_ov56_0211b394

	arm_func_start FUN_ov56_0211b3c8
FUN_ov56_0211b3c8: ; 0x0211B3C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	mov r4, #0
	cmp r0, #7
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #6
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xa8]
	mov r5, r4
	add r0, r6, r0, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r5
	bl  FUN_ov16_020efa9c
	movs r1, r0
	mov r2, r5
	strb r5, [r6, #0x76]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #0
	cmpne r0, #6
	streq r4, [r6, #0x78]
	ldr r0, [r6, #0x78]
	cmp r0, #0
	beq _0211B490
	ldr r1, [r6, #0x10]
	mov r3, #0xf
	mov r0, r6
	mov r2, #0
	str r3, [r6, #0x18]
	bl FUN_ov56_0211f140
	mov r4, #0x20
	add r1, r6, #0x2c8
	strh r0, [r6, #0x20]
	add r0, r1, #0x1000
	mov r2, r4
	add r1, r6, #0x36
	bl MIi_CpuCopy16
	add r0, r6, #0x2e8
	mov r2, r4
	add r0, r0, #0x1000
	add r1, r6, #0x56
	bl MIi_CpuCopy16
	ldr r0, [r6, #4]
	add r1, r6, #0x18
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, r5, r6, pc}
_0211B490:
	ldr r0, [r6, #0xa8]
	mov r3, #7
	str r3, [r6, #0x18]
	add r0, r6, r0, lsl #1
	ldrh r0, [r0, #0x88]
	ldr r3, [r6, #0x10]
	cmp r0, #0
	strh r0, [r6, #0x1c]
	moveq r0, #1
	streq r4, [r6, #0x18]
	streqb r0, [r6, #0x25]
	cmp r3, #6
	addls pc, pc, r3, lsl #2
	b _0211B5A0
_0211B4C8: ; jump table
	b _0211B4E4 ; case 0
	b _0211B4F0 ; case 1
	b _0211B570 ; case 2
	b _0211B570 ; case 3
	b _0211B570 ; case 4
	b _0211B570 ; case 5
	b _0211B4E4 ; case 6
_0211B4E4:
	mov r0, #1
	strb r0, [r6, #0x76]
	strb r0, [r6, #0x27]
_0211B4F0:
	add r0, r6, #0x1000
	ldr r0, [r0, #0x4f8]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211B5A0
_0211B504: ; jump table
	b _0211B51C ; case 0
	b _0211B5A0 ; case 1
	b _0211B530 ; case 2
	b _0211B544 ; case 3
	b _0211B5A0 ; case 4
	b _0211B558 ; case 5
_0211B51C:
	mov r0, r1
	bl FUN_0206dcd4
	ldrh r5, [r0, #0x10]
	mov r2, #0
	b _0211B5A0
_0211B530:
	mov r0, r1
	bl FUN_0206dcd4
	ldrh r5, [r0, #0x12]
	mov r2, #1
	b _0211B5A0
_0211B544:
	mov r0, r1
	bl FUN_0206dcd4
	ldrh r5, [r0, #0x14]
	mov r2, #2
	b _0211B5A0
_0211B558:
	ldr r0, _0211B5C4 ; =0x0209BA20
	bl  FUN_ov16_020ee430
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r2, #4
	b _0211B5A0
_0211B570:
	mov r0, r6
	mov r1, r3
	mov r2, r4
	bl FUN_ov56_0211f140
	ldr r1, [r6, #0x10]
	mov r2, #1
	sub r1, r1, #2
	mov r1, r1, lsl #0x10
	strb r2, [r6, #0x27]
	mov r5, r0
	strb r4, [r6, #0x76]
	mov r2, r1, asr #0x10
_0211B5A0:
	ldr r0, [r6, #4]
	strh r5, [r6, #0x20]
	strh r2, [r6, #0x22]
	ldr r2, [r0]
	add r1, r6, #0x18
	ldr r2, [r2, #0x3c]
	blx r2
	strb r4, [r6, #0x27]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B5C4: .word 0x0209BA20
	arm_func_end FUN_ov56_0211b3c8

	arm_func_start FUN_ov56_0211b5c8
FUN_ov56_0211b5c8: ; 0x0211B5C8
	mov r2, #5
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov56_0211b5c8

	arm_func_start FUN_ov56_0211b5d8
FUN_ov56_0211b5d8: ; 0x0211B5D8
	add r0, r0, #0x318
	ldr r12, _0211B5F0 ; =MI_CpuFill8
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x18
	bx r12
_0211B5F0: .word MI_CpuFill8
	arm_func_end FUN_ov56_0211b5d8

	arm_func_start FUN_ov56_0211b5f4
FUN_ov56_0211b5f4: ; 0x0211B5F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	cmp r1, #2
	blo _0211B660
	mov r7, #0
	add r0, r9, #0x318
	add r6, r0, #0x1000
	mov r5, #1
	mov r4, r7
	mov r10, #0xc
_0211B61C:
	mul r8, r7, r10
	mov r1, r5
	add r0, r6, r8
	bl  FUN_ov16_020f338c
	add r0, r6, r8
	bl  FUN_ov16_020f33fc
	add r0, r9, r8
	add r7, r7, #1
	str r4, [r6, r8]
	add r0, r0, #0x1000
	str r4, [r0, #0x31c]
	strb r4, [r0, #0x320]
	strb r4, [r0, #0x321]
	strb r4, [r0, #0x322]
	cmp r7, #2
	blt _0211B61C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B660:
	mov r0, #0xc
	mul r5, r1, r0
	add r0, r9, #0x318
	add r4, r0, #0x1000
	add r0, r4, r5
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r5
	bl  FUN_ov16_020f33fc
	add r0, r9, r5
	mov r1, #0
	str r1, [r4, r5]
	add r0, r0, #0x1000
	str r1, [r0, #0x31c]
	strb r1, [r0, #0x320]
	strb r1, [r0, #0x321]
	strb r1, [r0, #0x322]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov56_0211b5f4

	arm_func_start FUN_ov56_0211b6a8
FUN_ov56_0211b6a8: ; 0x0211B6A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x330
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x330
	add r0, r0, #0x1000
	mov r1, #0xc
	bl  FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov56_0211b6a8

	arm_func_start FUN_ov56_0211b6d8
FUN_ov56_0211b6d8: ; 0x0211B6D8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x330
	add r0, r0, #0x1000
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r4, #0x330
	add r0, r0, #0x1000
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov56_0211b6d8

	arm_func_start FUN_ov56_0211b700
FUN_ov56_0211b700: ; 0x0211B700
	stmfd sp!, {r3, lr}
	add r2, r0, #0x330
	mov r0, r1
	add r1, r2, #0x1000
	bl  FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov56_0211b700

	arm_func_start FUN_ov56_0211b71c
FUN_ov56_0211b71c: ; 0x0211B71C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r3
	ldr r3, [r4]
	mov r5, r2
	add r2, r3, #1
	str r2, [r4]
	bl FUN_ov56_0211b700
	ldr r6, _0211B7BC ; =0x02099F38
	mov r3, r0
	ldr r0, [r6]
	ldr r2, [r4]
	mov r1, r5
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r6]
	mov r1, r5
	ldr r2, [r4]
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x1c]
	mov r1, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r5
	ldr r2, [r4]
	ldr r3, [sp, #0x20]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B7BC: .word 0x02099F38
	arm_func_end FUN_ov56_0211b71c

	arm_func_start FUN_ov56_0211b7c0
FUN_ov56_0211b7c0: ; 0x0211B7C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x338
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x1000
	mov r2, #0x64
	bl MI_CpuFill8
	add r0, r5, #0x39c
	mov r1, r4
	add r0, r0, #0x1000
	mov r2, #0x50
	bl MI_CpuFill8
	ldr r0, _0211B804 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B804: .word 0x02099F38
	arm_func_end FUN_ov56_0211b7c0

	arm_func_start FUN_ov56_0211b808
FUN_ov56_0211b808: ; 0x0211B808
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211B8A8 ; =0x02099F38
	b _0211B84C
_0211B820:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x39c]
	cmp r1, #0
	beq _0211B848
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	str r7, [r0, #0x39c]
_0211B848:
	add r4, r4, #1
_0211B84C:
	cmp r4, #0x14
	blt _0211B820
	mov r4, #0
	mov r7, r4
	ldr r6, _0211B8A8 ; =0x02099F38
	b _0211B890
_0211B864:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x338]
	cmp r1, #0
	beq _0211B88C
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	str r7, [r0, #0x338]
_0211B88C:
	add r4, r4, #1
_0211B890:
	cmp r4, #0x19
	blt _0211B864
	ldr r0, _0211B8A8 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B8A8: .word 0x02099F38
	arm_func_end FUN_ov56_0211b808

	arm_func_start FUN_ov56_0211b8ac
FUN_ov56_0211b8ac: ; 0x0211B8AC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	add r0, r0, #0x1000
	ldr r3, [r0, #0x338]
	ldr r6, _0211B96C ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl  FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B96C: .word 0x02099F38
	arm_func_end FUN_ov56_0211b8ac

	arm_func_start FUN_ov56_0211b970
FUN_ov56_0211b970: ; 0x0211B970
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	add r4, sp, #0x34
	mov r6, #0
	str r1, [sp, #0x20]
	mov r11, #4
	mov r10, r2
	mov r0, r4
	mov r1, r6
	mov r2, r11
	mov r9, r3
	str r6, [sp, #0x2c]
	ldr r8, [sp, #0x60]
	ldr r7, [sp, #0x70]
	mov r5, #0x100
	bl MI_CpuFill8
	mov r2, r11
	add r11, sp, #0x30
	mov r1, r6
	mov r0, r11
	bl MI_CpuFill8
	mov r0, r5
	mov r2, r4
	mov r3, r11
	mov r1, #0x10
	str r6, [r8]
	bl FUN_02054070
	ldr r4, _0211BB6C ; =0x02099F38
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r0, [r4]
	bl FUN_02059630
	str r0, [r8]
	mov r1, r0
	ldr r0, [r4]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	ldr r1, [r8]
	ldr r0, [r4]
	str r6, [sp, #0x28]
	add r2, sp, #0x28
	add r3, sp, #0x2c
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r8]
	ldr r11, [sp, #0x28]
	bl  FUN_ov16_02111438
	str r0, [sp, #0x24]
	ldr r0, [r4]
	ldr r1, [r8]
	bl  FUN_ov16_02111458
	mov r5, r0
	ldr r0, _0211BB70 ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, #5
	bl FUN_02043310
	stmia sp, {r5, r6}
	ldr r0, [sp, #0x74]
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _0211BB70 ; =0x02099F50
	str r7, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	mov r2, r11
	bl FUN_020425fc
	ldr r0, _0211BB70 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r3, [sp, #0x2c]
	ldr r1, [r8]
	ldr r0, [r4]
	mov r2, r11
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	ldr r0, [r9]
	mov r1, r10
	add r2, r0, #1
	str r2, [r9]
	ldr r3, [r8]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	mov r3, r6
	mov r1, r10
	bl  FUN_ov16_02113d88
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [r9]
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	mov r1, r10
	bl  FUN_ov16_02113d08
	ldr r0, [sp, #0x68]
	ldr r3, [sp, #0x64]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x6c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BB6C: .word 0x02099F38
_0211BB70: .word 0x02099F50
	arm_func_end FUN_ov56_0211b970

	arm_func_start FUN_ov56_0211bb74
FUN_ov56_0211bb74: ; 0x0211BB74
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	b _0211BB9C
_0211BB84:
	add r0, r5, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0x480]
	mov r0, r5
	bl FUN_ov56_0211bda4
	add r4, r4, #1
_0211BB9C:
	cmp r4, #8
	blt _0211BB84
	mov r4, #0
	b _0211BBC4
_0211BBAC:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x39c]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	add r4, r4, #1
_0211BBC4:
	cmp r4, #0x14
	blt _0211BBAC
	ldr r1, [r5, #0xb0]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	ldr r1, [r5, #0xb8]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	ldr r4, _0211BD98 ; =0x02099EEC
	add r1, r5, #0x1000
	ldr r6, _0211BD9C ; =0x00004210
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	mov r2, r6
	bl FUN_0205ae4c
	add r1, r5, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3f0]
	mov r2, r6
	bl FUN_0205ae4c
	ldr r0, [r5, #0x10]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211BC24: ; jump table
	b _0211BC40 ; case 0
	b _0211BD00 ; case 1
	b _0211BC40 ; case 2
	b _0211BC40 ; case 3
	b _0211BC40 ; case 4
	b _0211BC40 ; case 5
	b _0211BD34 ; case 6
_0211BC40:
	mov r4, #0
	b _0211BC60
_0211BC48:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x39c]
	mov r0, r5
	bl FUN_ov56_0211bda4
	add r4, r4, #1
_0211BC60:
	cmp r4, #0x14
	blt _0211BC48
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x612]
	cmp r1, #0
	beq _0211BCB4
	ldr r1, [r0, #0x3a0]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3a4]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3dc]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3e0]
	mov r0, r5
	bl FUN_ov56_0211bdc4
_0211BCB4:
	ldr r1, [r5, #0xb0]
	mov r0, r5
	bl FUN_ov56_0211bda4
	ldr r1, [r5, #0xb8]
	mov r0, r5
	bl FUN_ov56_0211bda4
	ldr r4, _0211BD98 ; =0x02099EEC
	add r1, r5, #0x1000
	ldr r6, _0211BDA0 ; =0x00007FFF
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	mov r2, r6
	bl FUN_0205ae4c
	add r1, r5, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3f0]
	mov r2, r6
	bl FUN_0205ae4c
	ldmfd sp!, {r4, r5, r6, pc}
_0211BD00:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3bc]
	mov r0, r5
	bl FUN_ov56_0211bda4
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3a8]
	mov r0, r5
	bl FUN_ov56_0211bda4
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3b0]
	mov r0, r5
	bl FUN_ov56_0211bda4
	ldmfd sp!, {r4, r5, r6, pc}
_0211BD34:
	mov r4, #0
	b _0211BD54
_0211BD3C:
	add r0, r5, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0x480]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	add r4, r4, #1
_0211BD54:
	cmp r4, #8
	blt _0211BD3C
	mov r4, #0
	b _0211BD7C
_0211BD64:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x39c]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	add r4, r4, #1
_0211BD7C:
	cmp r4, #0x14
	blt _0211BD64
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3e8]
	mov r0, r5
	bl FUN_ov56_0211bda4
	ldmfd sp!, {r4, r5, r6, pc}
_0211BD98: .word 0x02099EEC
_0211BD9C: .word 0x00004210
_0211BDA0: .word 0x00007FFF
	arm_func_end FUN_ov56_0211bb74

	arm_func_start FUN_ov56_0211bda4
FUN_ov56_0211bda4: ; 0x0211BDA4
	ldr r0, _0211BDB8 ; =0x02099F38
	ldr r2, _0211BDBC ; =0x00007FFF
	ldr r0, [r0]
	ldr r12, _0211BDC0 ; = FUN_ov16_02114204
	bx r12
_0211BDB8: .word 0x02099F38
_0211BDBC: .word 0x00007FFF
_0211BDC0: .word  FUN_ov16_02114204
	arm_func_end FUN_ov56_0211bda4

	arm_func_start FUN_ov56_0211bdc4
FUN_ov56_0211bdc4: ; 0x0211BDC4
	ldr r0, _0211BDD8 ; =0x02099F38
	ldr r2, _0211BDDC ; =0x00004210
	ldr r0, [r0]
	ldr r12, _0211BDE0 ; = FUN_ov16_02114204
	bx r12
_0211BDD8: .word 0x02099F38
_0211BDDC: .word 0x00004210
_0211BDE0: .word  FUN_ov16_02114204
	arm_func_end FUN_ov56_0211bdc4

	arm_func_start FUN_ov56_0211bde4
FUN_ov56_0211bde4: ; 0x0211BDE4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x39c]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211BE5C ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_02112724
	mov r3, #0
	mov r1, r0
	str r3, [sp, #0x14]
	add r0, r5, #0x1000
	str r1, [r0, #0x39c]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x1f4
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	str r4, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211BE5C: .word 0x02099F38
	arm_func_end FUN_ov56_0211bde4

	arm_func_start FUN_ov56_0211be60
FUN_ov56_0211be60: ; 0x0211BE60
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	add r1, r10, #0x1000
	ldr r3, [r1, #0x3a0]
	ldr r2, [r1, #0x3a4]
	ldr r4, [r1, #0x3a8]
	add r2, r3, r2
	add r2, r4, r2
	ldr r3, [r1, #0x3ac]
	ldr r4, [r1, #0x3b0]
	add r2, r3, r2
	add r2, r4, r2
	ldr r3, [r1, #0x3b4]
	ldr r4, [r1, #0x3e4]
	add r1, r3, r2
	adds r1, r4, r1
	ldr r9, _0211C0AC ; =0x000001F3
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0x68
	str r8, [sp]
	mov r7, #0x18
	mov r6, #1
	str r7, [sp, #4]
	str r6, [sp, #8]
	mov r5, #5
	mov r4, #0
	str r9, [sp, #0xc]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov56_021200c4
	mov r11, #2
	mov r0, #0xd8
	stmia sp, {r0, r7, r11}
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r11
	mov r2, r5
	str r6, [sp, #0x10]
	mov r3, r11
	bl FUN_ov56_021200c4
	str r8, [sp]
	mov r7, #0xa8
	str r7, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r10
	mov r2, r6
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov56_021200c4
	mov r0, #0x98
	stmia sp, {r0, r7}
	mov r8, #4
	str r8, [sp, #8]
	str r9, [sp, #0xc]
	mov r2, r11
	mov r0, r10
	mov r1, r8
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov56_021200c4
	mov r0, #0xd0
	stmia sp, {r0, r7}
	str r5, [sp, #8]
	mov r7, #6
	str r9, [sp, #0xc]
	mov r1, r5
	mov r0, r10
	mov r2, r6
	mov r3, r7
	str r6, [sp, #0x10]
	bl FUN_ov56_021200c4
	mov r0, #0x88
	str r0, [sp]
	mov r5, #0x10
	stmib sp, {r5, r7}
	str r9, [sp, #0xc]
	mov r1, r7
	mov r0, r10
	mov r2, #0xb
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov56_021200c4
	add r0, r10, #0x1000
	ldrb r0, [r0, #0x612]
	cmp r0, #0
	bne _0211BFFC
	stmia sp, {r4, r5}
	mov r0, #0x22
	str r0, [sp, #8]
	add r0, r0, #0x13c
	str r0, [sp, #0xc]
	mov r0, r10
	mov r2, r8
	mov r3, r4
	mov r1, #0x12
	str r6, [sp, #0x10]
	bl FUN_ov56_021200c4
_0211BFFC:
	add r0, r10, #0x1000
	ldrb r0, [r0, #0x612]
	cmp r0, #0
	beq _0211C06C
	ldr r0, _0211C0B0 ; =0x02099EB4
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	beq _0211C03C
	strb r4, [r0, #0x10]
	add r0, r10, #0x1000
	ldr r1, [r0, #0x3a0]
	mov r0, r10
	bl FUN_ov56_0211bdc4
_0211C03C:
	ldr r0, _0211C0B0 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	beq _0211C06C
	mov r1, #1
	strb r1, [r0, #0x10]
	add r0, r10, #0x1000
	ldr r1, [r0, #0x3a4]
	mov r0, r10
	bl FUN_ov56_0211bdc4
_0211C06C:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r1, #0x7d
	ldr r0, _0211C0B0 ; =0x02099EB4
	str r1, [sp, #0xc]
	ldr r0, [r0]
	mov r1, #0
	mov r2, #7
	mov r3, #0x88
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C0AC: .word 0x000001F3
_0211C0B0: .word 0x02099EB4
	arm_func_end FUN_ov56_0211be60

	arm_func_start FUN_ov56_0211c0b4
FUN_ov56_0211c0b4: ; 0x0211C0B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x3ec
	mov r5, #0
	mov r1, r5
	add r0, r0, #0x1000
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x1000
	ldr r4, _0211C0FC ; =0x02099EEC
	str r5, [r0, #0x3f4]
	str r5, [r0, #0x3f8]
	ldr r0, [r4]
	bl FUN_0205b2b8
	ldr r0, [r4]
	mov r1, r5
	bl FUN_0205a5e8
	ldmfd sp!, {r3, r4, r5, pc}
_0211C0FC: .word 0x02099EEC
	arm_func_end FUN_ov56_0211c0b4

	arm_func_start FUN_ov56_0211c100
FUN_ov56_0211c100: ; 0x0211C100
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3ec]
	cmp r1, #0
	ble _0211C124
	ldr r0, _0211C158 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
_0211C124:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	ble _0211C140
	ldr r0, _0211C158 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
_0211C140:
	ldr r4, _0211C158 ; =0x02099EEC
	ldr r0, [r4]
	bl FUN_0205b398
	ldr r0, [r4]
	bl FUN_0205a5f4
	ldmfd sp!, {r4, pc}
_0211C158: .word 0x02099EEC
	arm_func_end FUN_ov56_0211c100

	arm_func_start FUN_ov56_0211c15c
FUN_ov56_0211c15c: ; 0x0211C15C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x3f4]
	add r0, r6, r0, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3ec]
	cmp r1, #0
	ble _0211C190
	ldr r0, _0211C380 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
_0211C190:
	mov r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r5, _0211C380 ; =0x02099EEC
	add r2, r6, #0x1000
	ldrh r1, [r6, #0x1c]
	ldr r0, [r5]
	ldr r2, [r2, #0x3f4]
	mov r3, r4
	bl FUN_0205a828
	add r3, r6, #0x1000
	ldr r1, [r3, #0x3f4]
	ldr r2, _0211C384 ; =0x000F423F
	add r1, r6, r1, lsl #2
	add r1, r1, #0x1000
	str r0, [r1, #0x3ec]
	ldr r1, [r3, #0x3f4]
	ldr r0, [r5]
	add r1, r6, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3ec]
	mov r3, #0
	bl FUN_0205ab68
	ldr r5, _0211C388 ; =0x02099F78
	add r2, r6, #0x1000
	ldr r1, _0211C38C ; =0x0212142C
	mov r0, r5
	str r4, [r2, #0x3f8]
	bl FUN_020418b0
	rsb r0, r0, #0
	cmp r0, #0
	ble _0211C23C
	ldr r1, _0211C390 ; =0x02121440
	mov r0, r5
	bl FUN_020418b0
	rsb r0, r0, #0
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211C25C
_0211C23C:
	ldr r1, _0211C394 ; =0x02121454
	mov r0, r5
	bl FUN_020418b0
	rsb r0, r0, #0
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211C25C:
	bl FUN_0201fdac
	ldr r4, _0211C388 ; =0x02099F78
	mov r5, r0
	ldr r1, _0211C398 ; =0x02121468
	mov r0, r4
	bl FUN_020418b0
	cmp r0, #0
	ble _0211C2A0
	ldr r1, _0211C39C ; =0x0212147C
	mov r0, r4
	bl FUN_020418b0
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211C2BC
_0211C2A0:
	ldr r1, _0211C3A0 ; =0x02121490
	mov r0, r4
	bl FUN_020418b0
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211C2BC:
	bl FUN_0201fdac
	ldr r2, _0211C3A4 ; =0xFFE2A000
	str r0, [sp, #0xc]
	ldr r0, _0211C388 ; =0x02099F78
	ldr r1, _0211C3A8 ; =0x021214A4
	str r2, [sp, #0x14]
	str r5, [sp, #0x10]
	bl FUN_020418b0
	ldr r2, [sp, #0x14]
	add r1, r6, #0x1000
	str r2, [sp]
	ldr r1, [r1, #0x3f4]
	ldr r4, _0211C380 ; =0x02099EEC
	add r1, r6, r1, lsl #2
	add r1, r1, #0x1000
	mov r5, r0
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_0205aea0
	str r5, [sp]
	ldr r0, [r4]
	add r1, r6, #0x1000
	ldr r1, [r1, #0x3f4]
	mov r2, r5
	add r1, r6, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3ec]
	mov r3, r5
	bl FUN_0205af58
	ldr r0, [r4]
	add r1, r6, #0x1000
	ldr r1, [r1, #0x3f4]
	mov r2, #0
	add r1, r6, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3ec]
	bl FUN_0205acb0
	ldr r0, [r4]
	add r1, r6, #0x1000
	ldr r1, [r1, #0x3f4]
	mov r2, #1
	add r1, r6, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3ec]
	bl FUN_0205b3cc
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_0211C380: .word 0x02099EEC
_0211C384: .word 0x000F423F
_0211C388: .word 0x02099F78
_0211C38C: .word 0x0212142C
_0211C390: .word 0x02121440
_0211C394: .word 0x02121454
_0211C398: .word 0x02121468
_0211C39C: .word 0x0212147C
_0211C3A0: .word 0x02121490
_0211C3A4: .word 0xFFE2A000
_0211C3A8: .word 0x021214A4
	arm_func_end FUN_ov56_0211c15c

	arm_func_start FUN_ov56_0211c3ac
FUN_ov56_0211c3ac: ; 0x0211C3AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x1000
	ldr r0, [r0, #0x3f4]
	ldr r4, _0211C46C ; =0x02099EEC
	add r0, r7, r0, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	bl FUN_0205ac70
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #0x1000
	ldr r1, [r0, #0x3f8]
	cmp r1, #0
	beq _0211C464
	ldr r0, [r0, #0x3f4]
	mov r6, #0
	add r0, r7, r0, lsl #2
	add r1, r0, #0x1000
	mov r5, #1
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	mov r2, r6
	mov r3, r5
	bl FUN_0205b174
	add r0, r7, #0x1000
	ldr r1, [r0, #0x3f4]
	ldr r0, [r4]
	add r1, r7, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3ec]
	mov r2, r5
	bl FUN_0205acb0
	add r0, r7, #0x1000
	ldr r1, [r0, #0x3f4]
	str r6, [r0, #0x3f8]
	eor r2, r1, #1
	add r1, r7, r2, lsl #2
	str r2, [r0, #0x3f4]
	add r1, r1, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	mov r2, r6
	bl FUN_0205acb0
_0211C464:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C46C: .word 0x02099EEC
	arm_func_end FUN_ov56_0211c3ac

	arm_func_start FUN_ov56_0211c470
FUN_ov56_0211c470: ; 0x0211C470
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r10, r0
	ldr r0, [r10, #0xa8]
	mov r9, #0
	add r0, r10, r0, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r9
	bl  FUN_ov16_020efa9c
	movs r8, r0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xb0]
	cmp r0, #0
	addne sp, sp, #0x3c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211C538 ; =0x02099F38
	mov r7, #1
	ldr r0, [r0]
	mov r1, r7
	mov r2, r7
	bl  FUN_ov16_02112724
	mov r6, r0
	add r11, sp, #0x1c
	str r6, [r10, #0xb0]
	mov r0, r11
	mov r1, r9
	mov r2, #0x20
	str r9, [sp, #0x18]
	mov r5, #0x92
	mov r4, #0x1b
	bl MI_CpuFill8
	add r0, r8, #0x1c
	mov r1, r11
	mov r2, #0x10
	bl MI_CpuCopy8
	add r0, r10, #0xb4
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	add r3, r4, #0x1d4
	str r3, [sp, #0xc]
	str r9, [sp, #0x10]
	mov r1, r11
	mov r2, r6
	mov r0, r10
	add r3, sp, #0x18
	str r7, [sp, #0x14]
	bl FUN_ov56_0211b970
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C538: .word 0x02099F38
	arm_func_end FUN_ov56_0211c470

	arm_func_start FUN_ov56_0211c53c
FUN_ov56_0211c53c: ; 0x0211C53C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xb0]
	cmp r1, #0
	beq _0211C564
	ldr r0, _0211C588 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xb0]
_0211C564:
	ldr r1, [r4, #0xb4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211C588 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0xb4]
	ldmfd sp!, {r4, pc}
_0211C588: .word 0x02099F38
	arm_func_end FUN_ov56_0211c53c

	arm_func_start FUN_ov56_0211c58c
FUN_ov56_0211c58c: ; 0x0211C58C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r10, r0
	ldr r0, [r10, #0xa8]
	mov r9, #0
	add r0, r10, r0, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r9
	bl  FUN_ov16_020efa9c
	movs r8, r0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xb8]
	cmp r0, #0
	addne sp, sp, #0x3c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211C654 ; =0x02099F38
	mov r7, #1
	ldr r0, [r0]
	mov r1, r7
	mov r2, r7
	bl  FUN_ov16_02112724
	mov r6, r0
	add r11, sp, #0x1c
	str r6, [r10, #0xb8]
	mov r0, r11
	mov r1, r9
	mov r2, #0x20
	str r9, [sp, #0x18]
	mov r5, #0xa2
	mov r4, #2
	bl MI_CpuFill8
	add r0, r8, #0x1c
	mov r1, r11
	mov r2, #0x10
	bl MI_CpuCopy8
	add r0, r10, #0xbc
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	rsb r3, r7, #0x1f0
	str r3, [sp, #0xc]
	str r9, [sp, #0x10]
	mov r1, r11
	mov r2, r6
	mov r0, r10
	add r3, sp, #0x18
	str r7, [sp, #0x14]
	bl FUN_ov56_0211b970
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C654: .word 0x02099F38
	arm_func_end FUN_ov56_0211c58c

	arm_func_start FUN_ov56_0211c658
FUN_ov56_0211c658: ; 0x0211C658
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xb8]
	cmp r1, #0
	beq _0211C680
	ldr r0, _0211C6A4 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xb8]
_0211C680:
	ldr r1, [r4, #0xbc]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211C6A4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0xbc]
	ldmfd sp!, {r4, pc}
_0211C6A4: .word 0x02099F38
	arm_func_end FUN_ov56_0211c658

	arm_func_start FUN_ov56_0211c6a8
FUN_ov56_0211c6a8: ; 0x0211C6A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r1, r5, #0x1000
	ldr r2, [r1, #0x3d8]
	cmp r2, #0
	ldreq r2, [r1, #0x3dc]
	cmpeq r2, #0
	ldreq r1, [r1, #0x3e0]
	cmpeq r1, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, #0x98
	mov r4, #0
	str r7, [sp]
	mov r2, #0xd
	str r4, [sp, #4]
	mov r1, #0x1e
	str r1, [sp, #8]
	rsb r10, r2, #0x200
	str r10, [sp, #0xc]
	mov r9, #1
	mov r3, r4
	str r9, [sp, #0x10]
	mov r1, #0xf
	bl FUN_ov56_021200c4
	str r4, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r8, #0x10
	ldr r6, _0211C818 ; =0x02099EB4
	str r8, [sp, #8]
	mov r0, #0x7d
	str r0, [sp, #0xc]
	ldr r0, [r6]
	mov r2, #0x1f
	mov r1, r4
	mov r3, r7
	bl  FUN_ov16_0210fba4
	mov r0, #0x80
	stmia sp, {r0, r4}
	mov r7, #0x20
	mov r1, r8
	mov r8, #6
	str r7, [sp, #8]
	str r10, [sp, #0xc]
	mov r0, r5
	mov r2, r8
	mov r3, r4
	str r9, [sp, #0x10]
	bl FUN_ov56_021200c4
	mov r0, #0xe8
	stmia sp, {r0, r4}
	mov r0, #0x21
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	mov r2, r8
	mov r0, r5
	mov r1, #0x11
	mov r3, #2
	str r9, [sp, #0x10]
	bl FUN_ov56_021200c4
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x612]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r6]
	mov r1, r7
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	beq _0211C7DC
	strb r9, [r0, #0x10]
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3dc]
	mov r0, r5
	bl FUN_ov56_0211bdc4
_0211C7DC:
	ldr r0, _0211C818 ; =0x02099EB4
	mov r1, #0x21
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #1
	strb r1, [r0, #0x10]
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3e0]
	mov r0, r5
	bl FUN_ov56_0211bdc4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C818: .word 0x02099EB4
	arm_func_end FUN_ov56_0211c6a8

	arm_func_start FUN_ov56_0211c81c
FUN_ov56_0211c81c: ; 0x0211C81C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3d8]
	cmp r1, #0
	beq _0211C84C
	ldr r0, _0211C8D4 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x3d8]
_0211C84C:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3dc]
	cmp r1, #0
	beq _0211C874
	ldr r0, _0211C8D4 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x3dc]
_0211C874:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3e0]
	cmp r1, #0
	beq _0211C89C
	ldr r0, _0211C8D4 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x3e0]
_0211C89C:
	ldr r4, _0211C8D8 ; =0x02099EB4
	mov r1, #0x1e
	ldr r0, [r4]
	bl  FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #0x1f
	bl  FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #0x20
	bl  FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #0x21
	bl  FUN_ov16_0210eab4
	ldmfd sp!, {r4, pc}
_0211C8D4: .word 0x02099F38
_0211C8D8: .word 0x02099EB4
	arm_func_end FUN_ov56_0211c81c

	arm_func_start FUN_ov56_0211c8dc
FUN_ov56_0211c8dc: ; 0x0211C8DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #0
	ldr r3, [r5, #0xa8]
	ldr r2, [r5, #0xac]
	beq _0211C904
	cmp r1, #1
	beq _0211C914
	b _0211C924
_0211C904:
	sub r0, r2, #1
	mov r1, r2
	add r0, r3, r0
	b _0211C91C
_0211C914:
	mov r1, r2
	add r0, r3, #1
_0211C91C:
	bl FUN_0201f9bc
	mov r3, r1
_0211C924:
	str r3, [r5, #0xa8]
	add r0, r5, r3, lsl #1
	ldrh r0, [r0, #0x88]
	cmp r4, #0
	strh r0, [r5, #0x1c]
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov56_0211c15c
	mov r0, r5
	bl FUN_ov56_0211c53c
	mov r0, r5
	bl FUN_ov56_0211c470
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov56_0211c8dc

	arm_func_start FUN_ov56_0211c958
FUN_ov56_0211c958: ; 0x0211C958
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3b8]
	cmp r0, #0
	addne sp, sp, #0x30
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xa8]
	mov r9, #0
	add r0, r10, r0, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r9
	bl  FUN_ov16_020efa9c
	ldr r1, _0211CD08 ; =0x02099F38
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0xb
	mov r2, #1
	bl  FUN_ov16_02112724
	ldr r3, _0211CD0C ; =0x02120EBC
	str r9, [sp, #0x2c]
	ldr r5, _0211CD10 ; =0x02120EC4
	ldr r7, [r3]
	ldmia r5, {r1, r8}
	ldr r6, [r3, #4]
	ldr r2, _0211CD14 ; =0x02120EDC
	mov r5, r0
	ldr r3, [r2]
	ldr r2, [r2, #4]
	str r1, [sp, #0x24]
	str r8, [sp, #0x28]
	str r7, [sp, #0x1c]
	str r6, [sp, #0x20]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r4, #0
	ldr r11, _0211CD18 ; =0x000001C2
	beq _0211CA00
	mov r0, r4
	bl FUN_0206d6d8
	mov r9, r0
_0211CA00:
	add r0, r10, #0x3fc
	add r3, r10, #0x1000
	mov r8, #0
	mov r1, r8
	add r0, r0, #0x1000
	mov r2, #0x70
	ldr r6, [r3, #0x504]
	ldr r7, [r3, #0x508]
	bl MI_CpuFill8
	add r0, r10, #0x1000
	str r8, [r0, #0x474]
	str r8, [r0, #0x470]
	str r8, [r0, #0x47c]
	str r8, [r0, #0x478]
	str r5, [r0, #0x3b8]
	add r0, sp, #0x1c
	ldr r1, [r0, r9, lsl #2]
	add r0, sp, #0x14
	str r8, [sp]
	str r1, [sp, #4]
	ldr r0, [r0, r9, lsl #2]
	mov r1, r5
	str r0, [sp, #8]
	add r0, sp, #0x24
	str r11, [sp, #0xc]
	mov r11, #1
	ldr r3, [r0, r9, lsl #2]
	str r11, [sp, #0x10]
	mov r0, r10
	add r2, sp, #0x2c
	bl FUN_ov56_0211b8ac
	str r8, [sp]
	stmib sp, {r6, r7}
	rsb r0, r11, #0x1c0
	str r0, [sp, #0xc]
	str r11, [sp, #0x10]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x2c
	mov r3, #8
	bl FUN_ov56_0211b8ac
	str r11, [sp]
	stmib sp, {r6, r7}
	add r0, r11, #0x1c0
	str r0, [sp, #0xc]
	add r2, sp, #0x2c
	mov r3, #8
	mov r0, r10
	mov r1, r5
	str r8, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	cmp r4, #0
	beq _0211CC1C
	add r0, sp, #0x1c
	ldr r6, [r0, r9, lsl #2]
	add r0, sp, #0x14
	ldr r3, [r0, r9, lsl #2]
	mov r7, r8
	mov r2, #0x1c0
	mov r0, #0x1c
	b _0211CB24
_0211CAF4:
	mla r1, r8, r0, r10
	add r1, r1, #0x1000
	str r4, [r1, #0x3fc]
	str r5, [r1, #0x400]
	ldr r11, [sp, #0x2c]
	add r11, r11, r8, lsl #1
	str r11, [r1, #0x404]
	str r7, [r1, #0x408]
	str r6, [r1, #0x40c]
	str r3, [r1, #0x410]
	str r2, [r1, #0x414]
	add r8, r8, #1
_0211CB24:
	cmp r8, #4
	blt _0211CAF4
	add r1, r10, #0x3fc
	mov r0, r10
	add r1, r1, #0x1000
	bl FUN_ov56_0211cd24
	add r1, r10, #0x18
	mov r0, r10
	add r1, r1, #0x1400
	bl FUN_ov56_0211ce80
	add r1, r10, #0x34
	mov r0, r10
	add r1, r1, #0x1400
	bl FUN_ov56_0211cfc0
	mov r0, r10
	add r1, r10, #0x450
	add r1, r1, #0x1000
	bl FUN_ov56_0211d104
	mov r0, #3
	str r0, [sp]
	mov r7, #0
	str r7, [sp, #4]
	ldr r6, _0211CD1C ; =0x0209BA20
	mov r1, r4
	mov r0, r6
	mov r5, #1
	mov r2, r5
	mov r3, r7
	bl FUN_0204e79c
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0211CC1C
	mov r0, r4
	bl FUN_0206d8a8
	cmp r0, #1
	bne _0211CC1C
	add r0, r10, #0x1000
	ldr r1, [r0, #0x308]
	cmp r1, #0
	beq _0211CC1C
	ldr r1, [r10, #0xa8]
	str r7, [r0, #0x308]
	add r0, r10, r1, lsl #1
	ldrh r8, [r0, #0x88]
	mov r0, r6
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_020eee4c
	mov r2, r0, lsl #0x10
	str r7, [sp]
	mov r0, r10
	mov r1, r8
	mov r3, r7
	mov r2, r2, lsr #0x10
	str r5, [sp, #4]
	bl FUN_ov56_0211dc58
	mov r0, r10
	bl FUN_ov56_0211c15c
	mov r0, r10
	mov r1, r7
	bl FUN_ov56_0211b5c8
_0211CC1C:
	add r0, sp, #0x14
	ldr r0, [r0, r9, lsl #2]
	add r1, sp, #0x1c
	add r10, r0, #0x10
	str r10, [sp]
	mov r6, #0xa0
	str r6, [sp, #4]
	ldr r8, [r1, r9, lsl #2]
	mov r5, #0x10
	mov r7, #0xa
	str r5, [sp, #8]
	mov r4, #0x78
	ldr r11, _0211CD20 ; =0x02099EB4
	str r4, [sp, #0xc]
	ldr r0, [r11]
	mov r1, #6
	mov r2, r7
	mov r3, r8
	bl  FUN_ov16_0210fba4
	add r10, r10, #0x20
	str r10, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r7, r7, #2
	str r4, [sp, #0xc]
	mov r2, r7, lsl #0x10
	ldr r0, [r11]
	mov r1, #6
	mov r2, r2, lsr #0x10
	mov r3, r8
	bl  FUN_ov16_0210fba4
	add r10, r10, #0x10
	str r10, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r7, r7, #1
	str r4, [sp, #0xc]
	mov r2, r7, lsl #0x10
	ldr r0, [r11]
	mov r1, #6
	mov r2, r2, lsr #0x10
	mov r3, r8
	bl  FUN_ov16_0210fba4
	cmp r9, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x20
	stmia sp, {r0, r6}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	add r2, r7, #2
	ldr r0, [r11]
	mov r2, r2, lsl #0x10
	mov r3, r8
	mov r1, r0
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CD08: .word 0x02099F38
_0211CD0C: .word 0x02120EBC
_0211CD10: .word 0x02120EC4
_0211CD14: .word 0x02120EDC
_0211CD18: .word 0x000001C2
_0211CD1C: .word 0x0209BA20
_0211CD20: .word 0x02099EB4
	arm_func_end FUN_ov56_0211c958

	arm_func_start FUN_ov56_0211cd24
FUN_ov56_0211cd24: ; 0x0211CD24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x38
	mov r7, r0
	add r3, sp, #0x18
	mov r6, r1
	mov r0, #7
	mov r2, #0
_0211CD40:
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	add r3, r3, #4
	subs r0, r0, #1
	bne _0211CD40
	ldr r0, _0211CE78 ; =0x0209A454
	ldr r8, _0211CE7C ; =0x0209BA20
	ldrb r1, [r0, #0x28]
	mov r0, r8
	strb r2, [r3]
	bl FUN_0207249c
	mov r4, #0
	mov r5, r0
	ldr r1, [r6]
	mov r0, r8
	mov r2, r4
	bl  FUN_ov16_020eee4c
	mov r8, r0
	cmp r8, #0
	bgt _0211CDB0
	ldrh r8, [r5, #0x30]
	ldr r0, [r6]
	bl FUN_0206dcd4
	mov r1, r4
	mov r2, r8
	bl FUN_0206def8
_0211CDB0:
	ldr r0, _0211CE7C ; =0x0209BA20
	mov r1, r8
	bl  FUN_ov16_020ee034
	movs r5, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r6, #0x10]
	mov r0, r7
	add r1, r1, #9
	str r1, [sp]
	ldr r1, [r6, #0x14]
	add r3, r6, #8
	add r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [r6, #0x18]
	str r1, [sp, #8]
	ldrh r1, [r5, #0x22]
	ldr r2, [r6, #4]
	bl FUN_ov56_0211b71c
	add r9, sp, #0x18
	mov r4, #0
	mov r8, #0x1d
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl MI_CpuFill8
	mov r0, r5
	mov r2, r8
	mov r1, r9
	bl MI_CpuCopy8
	add r2, r6, #0xc
	str r2, [sp]
	ldr r3, [r6, #0x10]
	mov r2, #1
	add r3, r3, #0x1e
	str r3, [sp, #4]
	ldr r5, [r6, #0x14]
	mov r0, r7
	add r5, r5, #0x13
	str r5, [sp, #8]
	ldr r5, [r6, #0x18]
	mov r1, r9
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [r6, #4]
	add r3, r6, #8
	bl FUN_ov56_0211b970
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CE78: .word 0x0209A454
_0211CE7C: .word 0x0209BA20
	arm_func_end FUN_ov56_0211cd24

	arm_func_start FUN_ov56_0211ce80
FUN_ov56_0211ce80: ; 0x0211CE80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x38
	mov r7, r0
	mov r6, r1
	add r2, sp, #0x18
	mov r1, #7
	mov r0, #0
_0211CE9C:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _0211CE9C
	strb r0, [r2]
	ldr r5, _0211CFBC ; =0x0209BA20
	mov r4, #1
	ldr r1, [r6]
	mov r0, r5
	mov r2, r4
	bl  FUN_ov16_020eee4c
	mov r1, r0
	mov r0, r5
	bl  FUN_ov16_020ee034
	movs r5, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r5, #0x1d]
	cmp r0, #0x18
	addeq r0, r7, #0x1000
	streq r4, [r0, #0x470]
	beq _0211CF0C
	cmp r0, #0x19
	addeq r0, r7, #0x1000
	streq r4, [r0, #0x478]
_0211CF0C:
	ldr r1, [r6, #0x10]
	mov r0, r7
	add r1, r1, #9
	str r1, [sp]
	ldr r1, [r6, #0x14]
	add r3, r6, #8
	add r1, r1, #0x30
	str r1, [sp, #4]
	ldr r1, [r6, #0x18]
	str r1, [sp, #8]
	ldrh r1, [r5, #0x22]
	ldr r2, [r6, #4]
	bl FUN_ov56_0211b71c
	add r9, sp, #0x18
	mov r4, #0
	mov r8, #0x1d
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl MI_CpuFill8
	mov r0, r5
	mov r2, r8
	mov r1, r9
	bl MI_CpuCopy8
	add r2, r6, #0xc
	str r2, [sp]
	ldr r3, [r6, #0x10]
	mov r2, #1
	add r3, r3, #0x1e
	str r3, [sp, #4]
	ldr r5, [r6, #0x14]
	mov r0, r7
	add r5, r5, #0x33
	str r5, [sp, #8]
	ldr r5, [r6, #0x18]
	mov r1, r9
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [r6, #4]
	add r3, r6, #8
	bl FUN_ov56_0211b970
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CFBC: .word 0x0209BA20
	arm_func_end FUN_ov56_0211ce80

	arm_func_start FUN_ov56_0211cfc0
FUN_ov56_0211cfc0: ; 0x0211CFC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x38
	mov r7, r0
	mov r6, r1
	add r2, sp, #0x18
	mov r1, #7
	mov r0, #0
_0211CFDC:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _0211CFDC
	strb r0, [r2]
	ldr r4, _0211D100 ; =0x0209BA20
	ldr r1, [r6]
	mov r0, r4
	mov r2, #2
	bl  FUN_ov16_020eee4c
	mov r1, r0
	mov r0, r4
	bl  FUN_ov16_020ee034
	movs r5, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r5, #0x1d]
	cmp r0, #0x18
	addeq r0, r7, #0x1000
	moveq r1, #1
	streq r1, [r0, #0x474]
	beq _0211D050
	cmp r0, #0x19
	addeq r0, r7, #0x1000
	moveq r1, #1
	streq r1, [r0, #0x47c]
_0211D050:
	ldr r1, [r6, #0x10]
	mov r0, r7
	add r1, r1, #9
	str r1, [sp]
	ldr r1, [r6, #0x14]
	add r3, r6, #8
	add r1, r1, #0x40
	str r1, [sp, #4]
	ldr r1, [r6, #0x18]
	str r1, [sp, #8]
	ldrh r1, [r5, #0x22]
	ldr r2, [r6, #4]
	bl FUN_ov56_0211b71c
	add r9, sp, #0x18
	mov r4, #0
	mov r8, #0x1d
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl MI_CpuFill8
	mov r0, r5
	mov r2, r8
	mov r1, r9
	bl MI_CpuCopy8
	add r2, r6, #0xc
	str r2, [sp]
	ldr r3, [r6, #0x10]
	mov r2, #1
	add r3, r3, #0x1e
	str r3, [sp, #4]
	ldr r5, [r6, #0x14]
	mov r0, r7
	add r5, r5, #0x43
	str r5, [sp, #8]
	ldr r5, [r6, #0x18]
	mov r1, r9
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [r6, #4]
	add r3, r6, #8
	bl FUN_ov56_0211b970
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D100: .word 0x0209BA20
	arm_func_end FUN_ov56_0211cfc0

	arm_func_start FUN_ov56_0211d104
FUN_ov56_0211d104: ; 0x0211D104
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x38
	mov r6, r1
	mov r7, r0
	ldr r0, [r6]
	bl FUN_0206d6d8
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r3, sp, #0x18
	mov r0, #7
	mov r2, #0
_0211D134:
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	add r3, r3, #4
	subs r0, r0, #1
	bne _0211D134
	ldr r4, _0211D25C ; =0x0209A454
	ldr r8, _0211D260 ; =0x0209BA20
	ldrb r1, [r4, #0x28]
	mov r0, r8
	strb r2, [r3]
	bl FUN_0207249c
	mov r5, r0
	ldr r1, [r6]
	mov r0, r8
	bl  FUN_ov16_020ee430
	mov r1, r0
	cmp r1, #0
	bgt _0211D198
	ldrb r1, [r4, #0x28]
	ldrh r2, [r5, #0x34]
	mov r0, r8
	bl  FUN_ov16_020ee278
	ldrh r1, [r5, #0x34]
_0211D198:
	ldr r0, _0211D260 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	movs r5, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r6, #0x10]
	mov r0, r7
	add r1, r1, #9
	str r1, [sp]
	ldr r1, [r6, #0x14]
	add r3, r6, #8
	add r1, r1, #0x60
	str r1, [sp, #4]
	ldr r1, [r6, #0x18]
	str r1, [sp, #8]
	ldrh r1, [r5, #0x22]
	ldr r2, [r6, #4]
	bl FUN_ov56_0211b71c
	add r9, sp, #0x18
	mov r4, #0
	mov r8, #0x1d
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl MI_CpuFill8
	mov r0, r5
	mov r2, r8
	mov r1, r9
	bl MI_CpuCopy8
	add r2, r6, #0xc
	str r2, [sp]
	ldr r3, [r6, #0x10]
	mov r2, #1
	add r3, r3, #0x1e
	str r3, [sp, #4]
	ldr r5, [r6, #0x14]
	mov r0, r7
	add r5, r5, #0x63
	str r5, [sp, #8]
	ldr r5, [r6, #0x18]
	mov r1, r9
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [r6, #4]
	add r3, r6, #8
	bl FUN_ov56_0211b970
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D25C: .word 0x0209A454
_0211D260: .word 0x0209BA20
	arm_func_end FUN_ov56_0211d104

	arm_func_start FUN_ov56_0211d264
FUN_ov56_0211d264: ; 0x0211D264
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x1000
	ldr r1, [r0, #0x3b8]
	mov r4, #0
	cmp r1, #0
	beq _0211D294
	ldr r0, _0211D340 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r10, #0x1000
	str r4, [r0, #0x3b8]
_0211D294:
	mov r9, #0
	mov r4, #0x1c
	mov r8, r9
	mov r7, r9
	ldr r6, _0211D340 ; =0x02099F38
	mov r5, r4
	mov r11, r4
	b _0211D30C
_0211D2B4:
	mla r0, r9, r5, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x400]
	cmp r1, #0
	beq _0211D2DC
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
	mla r0, r9, r4, r10
	add r0, r0, #0x1000
	str r8, [r0, #0x400]
_0211D2DC:
	mla r0, r9, r11, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x408]
	cmp r1, #0
	beq _0211D308
	ldr r0, [r6]
	bl FUN_02058ee0
	mov r0, #0x1c
	mla r0, r9, r0, r10
	add r0, r0, #0x1000
	str r7, [r0, #0x408]
_0211D308:
	add r9, r9, #1
_0211D30C:
	cmp r9, #4
	blt _0211D2B4
	mov r9, #0xa
	ldr r4, _0211D344 ; =0x02099EB4
	b _0211D334
_0211D320:
	mov r1, r9, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210eab4
	add r9, r9, #1
_0211D334:
	cmp r9, #0xf
	ble _0211D320
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D340: .word 0x02099F38
_0211D344: .word 0x02099EB4
	arm_func_end FUN_ov56_0211d264

	arm_func_start FUN_ov56_0211d348
FUN_ov56_0211d348: ; 0x0211D348
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r7, r0
	add r0, r7, #0x1000
	ldr r0, [r0, #0x3c0]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D59C ; =0x02099F38
	mov r6, #1
	ldr r0, [r0]
	mov r2, r6
	mov r1, #4
	bl  FUN_ov16_02112724
	mov r5, #0
	mov r8, r0
	add r10, sp, #0x14
	str r5, [sp, #0x14]
	add r0, r7, #0x1000
	str r8, [r0, #0x3c0]
	str r5, [sp]
	mov r9, #0x50
	str r9, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	ldr r1, _0211D5A0 ; =0x0000015E
	mov r0, r7
	str r1, [sp, #0xc]
	mov r1, r8
	mov r2, r10
	str r6, [sp, #0x10]
	mov r3, #0x14
	bl FUN_ov56_0211b8ac
	ldr r1, [r7, #0x10]
	mov r0, r7
	bl FUN_ov56_0211e674
	ldr r2, [r7, #0x10]
	mov r1, #0x24
	mla r0, r2, r1, r7
	add r0, r0, #0x1000
	str r9, [r0, #0x504]
	ldr r3, [r7, #0x10]
	mov r4, #0x20
	mla r0, r3, r1, r7
	add r0, r0, #0x1000
	str r4, [r0, #0x508]
	stmia sp, {r5, r9}
	mov r11, #9
	add r2, r9, #0xff
	str r4, [sp, #8]
	str r2, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, r7
	mov r1, r8
	mov r2, r10
	mov r3, r11
	bl FUN_ov56_0211b8ac
	stmia sp, {r6, r9}
	str r4, [sp, #8]
	add r4, r11, #0x154
	str r4, [sp, #0xc]
	mov r2, r10
	mov r3, r11
	str r5, [sp, #0x10]
	mov r0, r7
	mov r1, r8
	bl FUN_ov56_0211b8ac
	ldr r0, [r7, #0x10]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211D48C
_0211D464: ; jump table
	b _0211D48C ; case 0
	b _0211D48C ; case 1
	b _0211D47C ; case 2
	b _0211D480 ; case 3
	b _0211D480 ; case 4
	b _0211D488 ; case 5
_0211D47C:
	b _0211D48C
_0211D480:
	mov r5, r6
	b _0211D48C
_0211D488:
	mov r5, #2
_0211D48C:
	str r5, [sp]
	mov r0, #0x72
	str r0, [sp, #4]
	mov r6, #0x10
	str r6, [sp, #8]
	mov r1, r8
	add r2, sp, #0x14
	mov r0, r7
	str r4, [sp, #0xc]
	mov r8, #1
	mov r3, #0x15
	str r8, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	mov r0, #0x55
	stmia sp, {r0, r6}
	mov r0, #8
	mov r9, #7
	mov r10, #0
	str r0, [sp, #8]
	sub r4, r4, #1
	str r4, [sp, #0xc]
	mov r0, r7
	mov r2, r9
	mov r1, #0xa
	mov r3, r10
	str r8, [sp, #0x10]
	bl FUN_ov56_021200c4
	mov r0, #0xe8
	stmia sp, {r0, r6}
	mov r0, #9
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r2, r9
	mov r0, r7
	mov r1, #0xb
	mov r3, #2
	str r8, [sp, #0x10]
	bl FUN_ov56_021200c4
	mov r0, r7
	mov r1, r5
	bl FUN_ov56_0211df04
	mov r0, r7
	mov r1, r5
	mov r2, r10
	bl FUN_ov56_0211d664
	mov r0, #0xc
	mov r7, #0x20
	mov r8, #0xb0
	mov r9, r6
	mov r4, r0
	mov r5, #0x82
	ldr r11, _0211D5A4 ; =0x02099EB4
	b _0211D58C
_0211D560:
	stmia sp, {r7, r8, r9}
	str r5, [sp, #0xc]
	mov r2, r6, lsl #0x10
	ldr r0, [r11]
	mov r1, r4
	mov r3, #0x50
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fba4
	add r6, r6, #1
	add r7, r7, #0x10
	add r10, r10, #1
_0211D58C:
	cmp r10, #8
	blt _0211D560
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D59C: .word 0x02099F38
_0211D5A0: .word 0x0000015E
_0211D5A4: .word 0x02099EB4
	arm_func_end FUN_ov56_0211d348

	arm_func_start FUN_ov56_0211d5a8
FUN_ov56_0211d5a8: ; 0x0211D5A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3c0]
	cmp r1, #0
	beq _0211D5D8
	ldr r0, _0211D65C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x3c0]
_0211D5D8:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3c4]
	cmp r1, #0
	beq _0211D610
	ldr r0, _0211D65C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x1000
	mov r2, #0
	ldr r1, _0211D660 ; =0x02099EB4
	str r2, [r0, #0x3c4]
	ldr r0, [r1]
	mov r1, #8
	bl  FUN_ov16_0210eab4
_0211D610:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3c8]
	cmp r1, #0
	beq _0211D648
	ldr r0, _0211D65C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x1000
	mov r2, #0
	ldr r1, _0211D660 ; =0x02099EB4
	str r2, [r0, #0x3c8]
	ldr r0, [r1]
	mov r1, #9
	bl  FUN_ov16_0210eab4
_0211D648:
	ldr r0, _0211D660 ; =0x02099EB4
	mov r1, #0xc
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211D65C: .word 0x02099F38
_0211D660: .word 0x02099EB4
	arm_func_end FUN_ov56_0211d5a8

	arm_func_start FUN_ov56_0211d664
FUN_ov56_0211d664: ; 0x0211D664
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	ldr r2, _0211DBC8 ; =0x0209A454
	str r1, [sp, #0x18]
	ldrb r1, [r2, #0x28]
	mov r10, r0
	mov r2, #0
	ldr r0, _0211DBCC ; =0x0209BA20
	str r2, [sp, #0x28]
	bl FUN_0207249c
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x34]
	str r1, [sp, #0x5c]
	ldr r1, [sp, #0x18]
	ldr r2, [r10, #0xa8]
	add r1, r10, r1, lsl #2
	add r1, r1, #0x1000
	ldr r3, [r1, #0x4e0]
	add r1, r10, r2, lsl #1
	ldrh r0, [r1, #0x88]
	ldr r1, [sp, #0x28]
	mov r8, r3, lsl #3
	mov r2, r1
	str r2, [sp, #0x24]
	add r2, r8, #8
	mov r11, r1
	mov r7, #0x154
	str r2, [sp, #0x2c]
	bl  FUN_ov16_020efa9c
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	add r0, sp, #0x60
	mov r2, #0x1d
	bl MI_CpuFill8
	ldr r1, [sp, #0x28]
	add r0, r10, #0x1480
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0211D71C
	cmp r0, #1
	beq _0211D738
	cmp r0, #2
	beq _0211D758
	b _0211D774
_0211D71C:
	add r0, r10, #0xc8
	str r0, [sp, #0x28]
	add r0, r10, #0x2c8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	add r11, r0, #0x400
	b _0211D774
_0211D738:
	add r2, r10, #0x2c8
	add r0, r2, #0x400
	add r1, r10, #0xc8
	str r0, [sp, #0x28]
	add r0, r1, #0x800
	str r0, [sp, #0x24]
	add r11, r2, #0x800
	b _0211D774
_0211D758:
	add r2, r10, #0xc8
	add r0, r2, #0xc00
	add r1, r10, #0x2c8
	str r0, [sp, #0x28]
	add r0, r1, #0xc00
	str r0, [sp, #0x24]
	add r11, r2, #0x1000
_0211D774:
	add r0, r10, #0x84
	add r0, r0, #0x1400
	str r0, [sp, #0x3c]
	sub r0, r7, #1
	mov r9, #0
	str r0, [sp, #0x40]
	add r4, sp, #0x5c
	b _0211DAD8
_0211D794:
	ldr r0, [sp, #0x28]
	mov r1, r8, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _0211DAD0
	ldr r0, _0211DBCC ; =0x0209BA20
	bl  FUN_ov16_020ee034
	str r0, [sp, #0x38]
	cmp r0, #0
	movne r0, r8, lsl #1
	ldrneh r0, [r11, r0]
	cmpne r0, #0
	beq _0211DAD0
	mov r0, #0
	str r0, [sp, #0x5c]
	ldr r0, _0211DBD0 ; =0x02099F38
	mov r1, #8
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r5, r0
	add r0, r10, r9, lsl #3
	add r0, r0, #0x1000
	str r5, [r0, #0x480]
	mov r0, #0x59
	mov r6, r9, lsl #4
	str r0, [sp]
	add r0, r6, #0x20
	stmib sp, {r0, r7}
	ldr r1, [sp, #0x38]
	mov r0, r10
	ldrh r1, [r1, #0x22]
	mov r2, r5
	mov r3, r4
	bl FUN_ov56_0211b71c
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	mov r1, r8, lsl #1
	ldrh r0, [r0, r1]
	cmp r0, #0
	moveq r0, #9
	streq r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0211D860
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #2
	movne r0, #9
	strne r0, [sp, #0x1c]
_0211D860:
	add r1, r6, #0x23
	str r1, [sp, #0x30]
	ldr r0, [sp, #0x38]
	add r1, sp, #0x60
	mov r2, #0x1d
	bl MI_CpuCopy8
	ldr r0, [sp, #0x3c]
	add r1, sp, #0x60
	add r0, r0, r9, lsl #3
	str r0, [sp]
	mov r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r2, r5
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	mov r3, r4
	str r0, [sp, #0x14]
	mov r0, r10
	bl FUN_ov56_0211b970
	add r0, r6, #0x20
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x24]
	mov r1, r8, lsl #1
	ldrh r12, [r0, r1]
	ldr r3, _0211DBD4 ; =0x66666667
	mov r0, r10
	smull r2, lr, r3, r12
	str r2, [sp, #0x44]
	mov r2, r12, lsr #0x1f
	add lr, r2, lr, asr #2
	mov r2, #0xa
	smull lr, r3, r2, lr
	sub lr, r12, lr
	str r3, [sp, #0x48]
	str lr, [sp]
	mov r2, #0xf7
	str r2, [sp, #4]
	ldr r2, [sp, #0x54]
	mov r1, r5
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	mov r2, #1
	str r2, [sp, #0x10]
	mov r2, r4
	mov r3, #0xf
	bl FUN_ov56_0211b8ac
	ldr r0, [sp, #0x24]
	mov r1, r8, lsl #1
	ldrh r12, [r0, r1]
	cmp r12, #0xa
	blo _0211D980
	ldr r1, _0211DBD4 ; =0x66666667
	add r0, r6, #0x20
	smull r2, r3, r1, r12
	mov r1, r12, lsr #0x1f
	add r3, r1, r3, asr #2
	str r3, [sp]
	mov r1, #0xf0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r5
	mov r2, r4
	mov r3, #0xf
	bl FUN_ov56_0211b8ac
_0211D980:
	add r0, r6, #0x28
	str r0, [sp, #0x58]
	mov r0, r8, lsl #1
	ldrh r12, [r11, r0]
	ldr r3, _0211DBD4 ; =0x66666667
	mov r0, r10
	smull r2, lr, r3, r12
	str r2, [sp, #0x4c]
	mov r2, r12, lsr #0x1f
	add lr, r2, lr, asr #2
	mov r2, #0xa
	smull lr, r3, r2, lr
	sub lr, r12, lr
	str lr, [sp]
	mov r2, #0xf7
	str r2, [sp, #4]
	ldr r2, [sp, #0x58]
	str r3, [sp, #0x50]
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	mov r2, #1
	str r2, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	mov r3, #0x10
	bl FUN_ov56_0211b8ac
	mov r0, r8, lsl #1
	ldrh r12, [r11, r0]
	cmp r12, #0xa
	blo _0211DA3C
	ldr r1, _0211DBD4 ; =0x66666667
	add r0, r6, #0x28
	smull r2, r3, r1, r12
	mov r1, r12, lsr #0x1f
	add r3, r1, r3, asr #2
	str r3, [sp]
	mov r1, #0xf0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r5
	mov r2, r4
	mov r3, #0x10
	bl FUN_ov56_0211b8ac
_0211DA3C:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	add r0, r6, #0x20
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r5
	mov r2, r4
	mov r3, #0x11
	bl FUN_ov56_0211b8ac
	ldr r0, [r10, #0xa8]
	mov r1, r8, lsl #1
	add r0, r10, r0, lsl #1
	add r0, r0, #0x1200
	ldrh r2, [r0, #0xc8]
	ldr r0, [sp, #0x28]
	ldrh r0, [r0, r1]
	cmp r2, r0
	bne _0211DAD0
	mov r0, #0
	str r0, [sp]
	add r2, r6, #0x20
	mov r0, #0x58
	stmib sp, {r0, r2}
	ldr r0, [sp, #0x40]
	mov r1, r5
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r2, r4
	mov r3, #0xc
	bl FUN_ov56_0211b8ac
_0211DAD0:
	add r8, r8, #1
	add r9, r9, #1
_0211DAD8:
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blt _0211D794
	ldr r1, [r10, #0x10]
	mov r2, #0
	mov r0, r10
	mov r4, r2
	mov r5, r2
	bl FUN_ov56_0211f140
	mov r6, r0
	ldr r1, [r10, #0x10]
	mov r0, r10
	mov r2, #1
	bl FUN_ov56_0211f140
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0211DB30
	cmp r1, #1
	beq _0211DB54
	cmp r1, #2
	beq _0211DB80
	b _0211DBB8
_0211DB30:
	cmp r6, #0
	ldreq r0, [sp, #0x34]
	ldreqh r6, [r0, #0x30]
	beq _0211DB54
	cmp r0, #0
	ldreq r0, [r10, #0xa8]
	addeq r0, r10, r0, lsl #1
	addeq r0, r0, #0x1200
	ldreqh r6, [r0, #0xc8]
_0211DB54:
	ldr r0, [r10, #0xa8]
	ldr r3, [r10, #0x10]
	add r0, r10, r0, lsl #1
	ldrh r1, [r0, #0x88]
	mov r0, r10
	mov r2, r6
	str r5, [sp]
	sub r3, r3, #2
	str r5, [sp, #4]
	bl FUN_ov56_0211dc58
	b _0211DBB8
_0211DB80:
	cmp r6, #0
	ldreq r0, [sp, #0x34]
	ldreqh r6, [r0, #0x34]
	beq _0211DBA4
	cmp r0, #0
	ldreq r0, [r10, #0xa8]
	addeq r0, r10, r0, lsl #1
	addeq r0, r0, #0x1200
	ldreqh r6, [r0, #0xc8]
_0211DBA4:
	mov r0, r10
	mov r1, r6
	mov r2, r4
	bl FUN_ov56_0211dd10
	strb r4, [r10, #0x27]
_0211DBB8:
	mov r0, r10
	bl FUN_ov56_0211c15c
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DBC8: .word 0x0209A454
_0211DBCC: .word 0x0209BA20
_0211DBD0: .word 0x02099F38
_0211DBD4: .word 0x66666667
	arm_func_end FUN_ov56_0211d664

	arm_func_start FUN_ov56_0211dbd8
FUN_ov56_0211dbd8: ; 0x0211DBD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r8, r0
	mov r6, r7
	mov r5, r7
	ldr r4, _0211DC54 ; =0x02099F38
	b _0211DC48
_0211DBF4:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0x480]
	cmp r1, #0
	beq _0211DC1C
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x1000
	str r6, [r0, #0x480]
_0211DC1C:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0x484]
	cmp r1, #0
	beq _0211DC44
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x1000
	str r5, [r0, #0x484]
_0211DC44:
	add r7, r7, #1
_0211DC48:
	cmp r7, #8
	blt _0211DBF4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211DC54: .word 0x02099F38
	arm_func_end FUN_ov56_0211dbd8

	arm_func_start FUN_ov56_0211dc58
FUN_ov56_0211dc58: ; 0x0211DC58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r1, #0
	mov r5, r2
	mov r4, r3
	bl  FUN_ov16_020efa9c
	movs r8, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r3, [sp, #0x20]
	ldr r0, _0211DD08 ; =0x0209BA20
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_020eebb0
	ldr r0, _0211DD0C ; =0x020A0640
	ldrb r1, [r0, #0x1a]
	cmp r1, #0
	cmpne r8, #0
	beq _0211DCD0
	ldrsh r3, [r8, #0x94]
	cmp r3, #0
	blt _0211DCD0
	cmp r3, #0x20
	ldrlt r2, [r0, #0x78]
	movlt r1, #1
	orrlt r1, r2, r1, lsl r3
	strlt r1, [r0, #0x78]
_0211DCD0:
	cmp r5, #0
	movle r0, #1
	addle sp, sp, #4
	strleb r0, [r7, #0x27]
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r7, [sp, #0x24]
	ldr r0, _0211DD08 ; =0x0209BA20
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r7, [sp]
	bl  FUN_ov16_020eeb24
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DD08: .word 0x0209BA20
_0211DD0C: .word 0x020A0640
	arm_func_end FUN_ov56_0211dc58

	arm_func_start FUN_ov56_0211dd10
FUN_ov56_0211dd10: ; 0x0211DD10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r4, [r0, #0xa8]
	ldr r3, _0211DDF4 ; =0x0209A454
	add r0, r0, r4, lsl #1
	ldrh r0, [r0, #0x88]
	mov r10, r1
	ldrb r8, [r3, #0x28]
	mov r1, #0
	mov r9, r2
	bl  FUN_ov16_020efa9c
	ldr r4, _0211DDF8 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r1, r8
	bl FUN_0207249c
	mov r7, r0
	mov r0, r4
	mov r1, r10
	bl  FUN_ov16_020ee034
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x17
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl  FUN_ov16_020f0a14
	cmp r0, #0
	beq _0211DDA4
	mov r0, r4
	mov r1, r10
	bl  FUN_ov16_020edec4
	cmp r0, #0
	addle sp, sp, #8
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DDA4:
	ldr r5, _0211DDF8 ; =0x0209BA20
	mov r4, #0
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl  FUN_ov16_020ee364
	cmp r9, #1
	addne sp, sp, #8
	strh r10, [r7, #0x4a]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #3
	str r0, [sp]
	mov r0, r5
	mov r1, r6
	mov r3, r4
	mov r2, #1
	str r4, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DDF4: .word 0x0209A454
_0211DDF8: .word 0x0209BA20
	arm_func_end FUN_ov56_0211dd10

	arm_func_start FUN_ov56_0211ddfc
FUN_ov56_0211ddfc: ; 0x0211DDFC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r6, _0211DEF8 ; =0x0209A454
	ldr r4, _0211DEFC ; =0x0209BA20
	ldrb r1, [r6, #0x28]
	mov r5, r0
	mov r0, r4
	bl FUN_0207249c
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4f8]
	ldr r3, [r5, #0xa8]
	cmp r2, #5
	add r1, r5, r3, lsl #1
	ldrh r1, [r1, #0x88]
	addls pc, pc, r2, lsl #2
	b _0211DEA8
_0211DE3C: ; jump table
	b _0211DE54 ; case 0
	b _0211DEA8 ; case 1
	b _0211DE74 ; case 2
	b _0211DE74 ; case 3
	b _0211DEA8 ; case 4
	b _0211DE90 ; case 5
_0211DE54:
	mov r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	ldrh r2, [r0, #0x30]
	mov r0, r5
	mov r3, #0
_0211DE6C:
	bl FUN_ov56_0211dc58
	b _0211DEA8
_0211DE74:
	mov r4, #1
	str r4, [sp]
	mov r0, r5
	sub r3, r2, #1
	mov r2, #0
	str r4, [sp, #4]
	b _0211DE6C
_0211DE90:
	ldrb r1, [r6, #0x28]
	ldrh r2, [r0, #0x34]
	mov r0, r4
	bl  FUN_ov16_020ee278
	mov r0, #1
	strb r0, [r5, #0x27]
_0211DEA8:
	mov r0, r5
	bl FUN_ov56_0211d264
	mov r0, r5
	bl FUN_ov56_0211c958
	mov r1, #1
	mov r4, #0
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov56_0211a714
	mov r0, r5
	bl FUN_ov56_0211c15c
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_0211b5c8
	ldr r0, _0211DF00 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211DEF8: .word 0x0209A454
_0211DEFC: .word 0x0209BA20
_0211DF00: .word 0x0209AC44
	arm_func_end FUN_ov56_0211ddfc

	arm_func_start FUN_ov56_0211df04
FUN_ov56_0211df04: ; 0x0211DF04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r2, _0211E0B0 ; =0x02120EEC
	add r6, sp, #0x18
	mov r7, r1
	mov r10, r0
	ldmia r2, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r0, [r6, r7, lsl #2]
	add r0, r10, r0, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x39c]
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211E0B4 ; =0x02099F38
	mov r5, #1
	ldr r0, [r0]
	mov r2, r5
	mov r1, #4
	bl  FUN_ov16_02112724
	mov r2, #0
	add r1, r10, r7, lsl #2
	str r2, [sp, #0x14]
	ldr r2, [r6, r7, lsl #2]
	add r1, r1, #0x1000
	ldr r7, [r1, #0x4e0]
	ldr r9, [r1, #0x4ec]
	mov r6, r0
	add r0, r10, r2, lsl #2
	add r0, r0, #0x1000
	ldr r4, _0211E0B8 ; =0x66666667
	str r6, [r0, #0x39c]
	smull r0, r3, r4, r9
	mov r1, r9, lsr #0x1f
	add r8, r7, #1
	add r3, r1, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r9, r0
	str r3, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	mov r11, #0x10
	mov r7, #0x154
	str r11, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #0xe
	str r5, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	cmp r9, #0xa
	blt _0211E014
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [sp]
	mov r0, #0xb8
	stmib sp, {r0, r11}
	str r7, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #0xe
	str r5, [sp, #0x10]
	bl FUN_ov56_0211b8ac
_0211E014:
	ldr r4, _0211E0B8 ; =0x66666667
	mov r0, r8, lsr #0x1f
	smull r1, r3, r4, r8
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r8, r0
	str r3, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r9, #0x10
	add r11, sp, #0x14
	str r9, [sp, #8]
	mov r0, r10
	mov r1, r6
	mov r2, r11
	mov r3, #0xe
	str r7, [sp, #0xc]
	mov r5, #1
	str r5, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	cmp r8, #0xa
	addlt sp, sp, #0x24
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	smull r1, r2, r4, r8
	mov r0, r8, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [sp]
	mov r0, #0xa0
	stmib sp, {r0, r9}
	str r7, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	mov r2, r11
	mov r3, #0xe
	str r5, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E0B0: .word 0x02120EEC
_0211E0B4: .word 0x02099F38
_0211E0B8: .word 0x66666667
	arm_func_end FUN_ov56_0211df04

	arm_func_start FUN_ov56_0211e0bc
FUN_ov56_0211e0bc: ; 0x0211E0BC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r2, _0211E120 ; =0x02120F04
	add r6, sp, #0
	mov r4, r1
	mov r5, r0
	ldmia r2, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r0, [r6, r4, lsl #2]
	add r0, r5, r0, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x39c]
	cmp r1, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211E124 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	ldr r0, [r6, r4, lsl #2]
	mov r1, #0
	add r0, r5, r0, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x39c]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211E120: .word 0x02120F04
_0211E124: .word 0x02099F38
	arm_func_end FUN_ov56_0211e0bc

	arm_func_start FUN_ov56_0211e128
FUN_ov56_0211e128: ; 0x0211E128
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x5c
	ldr r1, _0211E5B0 ; =0x0209A454
	mov r4, r0
	ldrb r1, [r1, #0x28]
	ldr r0, _0211E5B4 ; =0x0209BA20
	bl FUN_0207249c
	add r1, r4, #0x1000
	ldr r1, [r1, #0x3bc]
	mov r8, r0
	cmp r1, #0
	addne sp, sp, #0x5c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211E5B8 ; =0x02099F38
	mov r1, #0xf
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r5, #0
	str r5, [sp, #0x18]
	ldr r1, [r4, #0xa8]
	mov r7, r0
	add r0, r4, r1, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r5
	ldr r6, _0211E5BC ; =0x000001AE
	bl  FUN_ov16_020efa9c
	ldr r10, _0211E5C0 ; =0x02120FF8
	add r3, sp, #0x1c
	mov r9, r0
	mov r2, #0x20
_0211E1A4:
	ldrb r0, [r10, #1]
	ldrb r1, [r10], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211E1A4
	mov r11, #0
	mov r1, r11
	add r0, r4, #0x14c0
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r4, #0x1000
	str r7, [r0, #0x3bc]
	str r11, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x58
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r6, #1
	mov r0, r4
	mov r1, r7
	add r2, sp, #0x18
	mov r3, #0x16
	str r6, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	mov r0, r4
	mov r1, r6
	bl FUN_ov56_0211e674
	mov r10, #0x88
	add r0, r4, #0x1000
	mov r1, #0x60
	str r10, [r0, #0x528]
	str r1, [r0, #0x52c]
	str r11, [sp]
	str r10, [sp, #4]
	str r1, [sp, #8]
	add r0, r6, #0x1a8
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, r4
	mov r1, r7
	add r2, sp, #0x18
	mov r3, #0xa
	bl FUN_ov56_0211b8ac
	stmia sp, {r6, r10}
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0x1ac
	str r0, [sp, #0xc]
	add r2, sp, #0x18
	mov r3, #0xa
	mov r0, r4
	mov r1, r7
	str r11, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	cmp r9, #0
	beq _0211E2FC
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4f8]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211E2FC
_0211E2A0: ; jump table
	b _0211E2B8 ; case 0
	b _0211E2FC ; case 1
	b _0211E2C8 ; case 2
	b _0211E2D8 ; case 3
	b _0211E2FC ; case 4
	b _0211E2E8 ; case 5
_0211E2B8:
	mov r0, r9
	bl FUN_0206dcd4
	ldrh r5, [r0, #0x10]
	b _0211E2FC
_0211E2C8:
	mov r0, r9
	bl FUN_0206dcd4
	ldrh r5, [r0, #0x12]
	b _0211E2FC
_0211E2D8:
	mov r0, r9
	bl FUN_0206dcd4
	ldrh r5, [r0, #0x14]
	b _0211E2FC
_0211E2E8:
	ldr r0, _0211E5B4 ; =0x0209BA20
	mov r1, r9
	bl  FUN_ov16_020ee430
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_0211E2FC:
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x46c]
	cmp r5, #0
	ldrneh r0, [r8, #0x30]
	mov r1, #0x88
	mov r6, #1
	cmpne r5, r0
	ldrneh r0, [r8, #0x34]
	cmpne r5, r0
	bne _0211E360
	add r0, r4, #0x1000
	str r6, [r0, #0x46c]
	mov r0, #2
	stmia sp, {r0, r1}
	mov r0, #0x60
	str r0, [sp, #8]
	rsb r0, r6, #0x1ac
	str r0, [sp, #0xc]
	add r2, sp, #0x18
	mov r0, r4
	mov r1, r7
	mov r3, #0xa
	str r6, [sp, #0x10]
	bl FUN_ov56_0211b8ac
_0211E360:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x612]
	str r6, [r0, #0x608]
	cmp r1, #0
	beq _0211E3CC
	mov r10, #0
	str r10, [r0, #0x600]
	str r10, [r0, #0x604]
	str r10, [r0, #0x608]
	mov r8, #0x88
	mov r9, #0x70
	ldr r5, _0211E5C4 ; =0x000001AB
	mov r11, #2
	b _0211E3C4
_0211E398:
	str r11, [sp]
	stmib sp, {r8, r9}
	str r5, [sp, #0xc]
	mov r0, r4
	mov r1, r7
	add r2, sp, #0x18
	mov r3, #0xa
	str r6, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	add r9, r9, #0x10
	add r10, r10, #1
_0211E3C4:
	cmp r10, #3
	blt _0211E398
_0211E3CC:
	ldr r0, _0211E5C8 ; =0x020A0640
	mov r1, #0x88
	ldrb r0, [r0, #0x1a]
	mov r5, #1
	mov r2, #0
	cmp r0, #0
	bne _0211E430
	ldr r0, _0211E5B0 ; =0x0209A454
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	beq _0211E430
	add r0, r4, #0x1000
	str r2, [r0, #0x608]
	mov r0, #2
	stmia sp, {r0, r1}
	mov r1, #0x90
	str r1, [sp, #8]
	ldr r0, _0211E5C4 ; =0x000001AB
	add r2, sp, #0x18
	str r0, [sp, #0xc]
	mov r0, r4
	mov r1, r7
	mov r3, #0xa
	str r5, [sp, #0x10]
	bl FUN_ov56_0211b8ac
_0211E430:
	mov r8, #0x88
	mov r9, #0x70
	ldr r6, _0211E5CC ; =0x000001AD
	mov r10, #0
	mov r11, #3
	b _0211E474
_0211E448:
	str r11, [sp]
	stmib sp, {r8, r9}
	str r6, [sp, #0xc]
	mov r0, r4
	mov r1, r7
	add r2, sp, #0x18
	mov r3, #0xa
	str r5, [sp, #0x10]
	bl FUN_ov56_0211b8ac
	add r9, r9, #0x10
	add r10, r10, #1
_0211E474:
	cmp r10, #3
	blt _0211E448
	mov r9, #0x62
	mov r11, #0
	add r0, r4, #0xc4
	add r6, r9, #0x148
	mov r8, #0x8a
	mov r10, r11
	add r5, r0, #0x1400
	b _0211E4D4
_0211E49C:
	add r0, r5, r10, lsl #3
	stmia sp, {r0, r8, r9}
	str r6, [sp, #0xc]
	str r11, [sp, #0x10]
	mov r1, #1
	str r1, [sp, #0x14]
	add r1, sp, #0x1c
	mov r0, r4
	mov r2, r7
	add r3, sp, #0x18
	add r1, r1, r10, lsl #4
	bl FUN_ov56_0211b970
	add r9, r9, #0x10
	add r10, r10, #1
_0211E4D4:
	cmp r10, #4
	blt _0211E49C
	mov r0, #0x15
	mov r5, #0x18
	mov r8, #0x88
	mov r9, #0x60
	mov r6, #0x58
	mov r7, #0x10
	mov r10, #0
	mov r4, r0
	ldr r11, _0211E5D0 ; =0x00000262
	b _0211E538
_0211E504:
	str r9, [sp]
	stmib sp, {r6, r7}
	ldr r0, _0211E5D4 ; =0x02099EB4
	str r11, [sp, #0xc]
	mov r2, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r4
	mov r3, r8
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fba4
	add r5, r5, #1
	add r9, r9, #0x10
	add r10, r10, #1
_0211E538:
	cmp r10, #4
	blt _0211E504
	mov r0, #0
	str r0, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r6, #0xa8
	mov r7, #0x1b
	str r6, [sp, #8]
	mov r5, #0x258
	ldr r4, _0211E5D4 ; =0x02099EB4
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #0x1c
	mov r1, r7
	mov r3, #0
	bl  FUN_ov16_0210fba4
	str r6, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #0x1d
	mov r1, r7
	mov r3, #0
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E5B0: .word 0x0209A454
_0211E5B4: .word 0x0209BA20
_0211E5B8: .word 0x02099F38
_0211E5BC: .word 0x000001AE
_0211E5C0: .word 0x02120FF8
_0211E5C4: .word 0x000001AB
_0211E5C8: .word 0x020A0640
_0211E5CC: .word 0x000001AD
_0211E5D0: .word 0x00000262
_0211E5D4: .word 0x02099EB4
	arm_func_end FUN_ov56_0211e128

	arm_func_start FUN_ov56_0211e5d8
FUN_ov56_0211e5d8: ; 0x0211E5D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3bc]
	mov r4, #0
	cmp r1, #0
	beq _0211E608
	ldr r0, _0211E66C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r5, #0x1000
	str r4, [r0, #0x3bc]
_0211E608:
	mov r4, #0
	mov r7, r4
	ldr r6, _0211E66C ; =0x02099F38
	b _0211E644
_0211E618:
	add r0, r5, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4c4]
	cmp r1, #0
	beq _0211E640
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #3
	add r0, r0, #0x1000
	str r7, [r0, #0x4c4]
_0211E640:
	add r4, r4, #1
_0211E644:
	cmp r4, #4
	blt _0211E618
	ldr r4, _0211E670 ; =0x02099EB4
	mov r1, #0x15
	ldr r0, [r4]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0x1b
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E66C: .word 0x02099F38
_0211E670: .word 0x02099EB4
	arm_func_end FUN_ov56_0211e5d8

	arm_func_start FUN_ov56_0211e674
FUN_ov56_0211e674: ; 0x0211E674
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xf8
	mov r5, r1
	add r0, r0, #0x1400
	mov r2, #0x24
	mla r0, r5, r2, r0
	mov r4, #0
	mov r1, r4
	bl MI_CpuFill8
	add r0, r6, #0x5d0
	add r0, r0, #0x1000
	mov r1, r4
	add r0, r0, r5, lsl #3
	mov r2, #8
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov56_0211e674

	arm_func_start FUN_ov56_0211e6b8
FUN_ov56_0211e6b8: ; 0x0211E6B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	mov r10, r0
	mov r9, r1
	mov r11, r2
	bl FUN_ov56_0211f10c
	ldr r3, _0211E894 ; =0x02120ED4
	ldr r2, _0211E898 ; =0x02120E9C
	ldr r1, [r3, #4]
	ldr r4, [r2, #4]
	str r1, [sp, #0x10]
	mov r1, #0x24
	str r4, [sp, #8]
	ldr r4, [r2]
	ldr r3, [r3]
	mul r5, r9, r1
	add r6, sp, #0x5c
	add r2, r10, #0xf8
	str r4, [sp, #4]
	add r4, r2, #0x1400
	add r1, sp, #4
	ldr r12, _0211E89C ; =0x02120F20
	str r3, [sp, #0xc]
	add r2, sp, #0xc
	ldr r8, [r2, r0, lsl #2]
	ldr r7, [r1, r0, lsl #2]
	str r6, [sp]
	ldmia r12!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1}
	stmia r6, {r0, r1}
	ldr r6, [r4, r5]
	mov r1, r7
	mov r0, r6
	bl FUN_0201f9bc
	add r0, r8, r1, lsl #4
	str r11, [r4, r5]
	mov r1, r6, lsr #0x1f
	str r0, [sp, #0x44]
	rsb r0, r1, r6, lsl #30
	add r0, r1, r0, ror #30
	mov r0, r0, lsl #4
	add r0, r0, #0x60
	str r0, [sp, #0x48]
	rsb r0, r1, r6, lsl #29
	add r0, r1, r0, ror #29
	mov r0, r0, lsl #4
	add r0, r0, #0x20
	add r11, sp, #0x2c
	ldr r12, _0211E8A0 ; =0x02120F38
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	ldmia r12!, {r0, r1, r2, r3}
	mov r6, r11
	stmia r11!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1}
	stmia r11, {r0, r1}
	ldr r4, [r4, r5]
	mov r1, r7
	mov r0, r4
	bl FUN_0201f9bc
	add r0, r8, r1, lsl #4
	mov r1, r4, lsr #0x1f
	str r0, [sp, #0x14]
	rsb r0, r1, r4, lsl #30
	add r0, r1, r0, ror #30
	mov r0, r0, lsl #4
	add r0, r0, #0x60
	str r0, [sp, #0x18]
	rsb r0, r1, r4, lsl #29
	add r0, r1, r0, ror #29
	mov r0, r0, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r10, r5
	add r2, r0, #0x1000
	mov r1, #1
	ldr r0, [sp]
	str r1, [r2, #0x514]
	ldr r1, [r0, r9, lsl #2]
	add r0, r10, #0xfc
	add r7, r0, #0x1400
	str r1, [r7, r5]
	add r1, sp, #0x44
	ldr r3, [r1, r9, lsl #2]
	add r4, r10, #0x1500
	add r0, r10, #0x104
	str r3, [r4, r5]
	add r1, r0, #0x1400
	ldr r3, [r6, r9, lsl #2]
	add r0, r10, #0x108
	str r3, [r1, r5]
	add r3, r0, #0x1400
	add r0, sp, #0x14
	ldr r6, [r0, r9, lsl #2]
	ldr r8, _0211E8A4 ; =0x55555556
	str r6, [r3, r5]
	ldr r9, [r1, r5]
	ldr r6, [r7, r5]
	ldr r0, _0211E8A8 ; =0x0209AC44
	sub r7, r9, r6
	smull r6, r9, r8, r7
	add r9, r9, r7, lsr #31
	str r9, [r2, #0x50c]
	ldr r6, [r3, r5]
	ldr r3, [r4, r5]
	mov r1, #8
	sub r4, r6, r3
	smull r3, r5, r8, r4
	add r5, r5, r4, lsr #31
	str r5, [r2, #0x510]
	bl FUN_0202cf6c
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E894: .word 0x02120ED4
_0211E898: .word 0x02120E9C
_0211E89C: .word 0x02120F20
_0211E8A0: .word 0x02120F38
_0211E8A4: .word 0x55555556
_0211E8A8: .word 0x0209AC44
	arm_func_end FUN_ov56_0211e6b8

	arm_func_start FUN_ov56_0211e8ac
FUN_ov56_0211e8ac: ; 0x0211E8AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	ldr r2, _0211EB80 ; =0x0209A454
	mov r4, r1
	ldrb r1, [r2, #0x28]
	mov r5, r0
	ldr r0, _0211EB84 ; =0x0209BA20
	bl FUN_0207249c
	mov r1, #0x24
	mul r9, r4, r1
	add r2, r5, #0x1000
	ldr r1, [r2, #0x3c0]
	ldr r11, [r2, #0x3b8]
	add r6, r5, #0x118
	add r3, r5, r9
	add r3, r3, #0x1000
	add r7, r6, #0x1400
	ldr r6, [r7, r9]
	ldr r2, [r2, #0x3bc]
	ldr r10, [r3, #0x4fc]
	ldr r8, [r3, #0x500]
	add r6, r6, #1
	str r6, [r7, r9]
	str r11, [sp, #0x1c]
	ldr r9, [r3, #0x50c]
	ldr r11, [r3, #0x518]
	ldr r6, [r3, #0x510]
	mla r7, r9, r11, r10
	mla r8, r6, r11, r8
	mov r6, r0
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	cmp r9, #0
	ldr r0, [r3, #0x504]
	bge _0211E950
	cmp r7, r0
	movlt r7, r0
	b _0211E958
_0211E950:
	cmp r7, r0
	movgt r7, r0
_0211E958:
	mov r0, #0x24
	mla r0, r4, r0, r5
	add r0, r0, #0x1000
	ldr r1, [r0, #0x510]
	ldr r0, [r0, #0x508]
	cmp r1, #0
	bge _0211E980
	cmp r8, r0
	movlt r8, r0
	b _0211E988
_0211E980:
	cmp r8, r0
	movgt r8, r0
_0211E988:
	mov r0, #0x24
	mla r0, r4, r0, r5
	add r1, r0, #0x1000
	ldr r0, [r1, #0x504]
	cmp r7, r0
	ldreq r0, [r1, #0x508]
	cmpeq r8, r0
	bne _0211EB4C
	mov r0, #0
	str r0, [r1, #0x514]
	str r0, [r1, #0x518]
	ldr r0, [r5, #0xa8]
	ldr r1, [r5, #0x10]
	add r0, r5, r0, lsl #1
	ldrh r11, [r0, #0x88]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0211EB4C
_0211E9D0: ; jump table
	b _0211EB4C ; case 0
	b _0211EB10 ; case 1
	b _0211E9E8 ; case 2
	b _0211E9E8 ; case 3
	b _0211E9E8 ; case 4
	b _0211EA88 ; case 5
_0211E9E8:
	mov r0, #1
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	mov r0, r5
	bl FUN_ov56_0211f140
	mov r10, r0
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, #0
	bl FUN_ov56_0211f140
	movs r9, r0
	moveq r0, #0
	streq r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, r5
	bl FUN_ov56_02120330
	ldr r0, [r5, #0x10]
	cmp r0, #2
	cmpeq r9, #0
	ldreqh r9, [r6, #0x30]
	beq _0211EA58
	ldr r0, [r5, #0x10]
	cmp r0, #2
	cmpeq r10, #0
	ldreq r0, [r5, #0xa8]
	addeq r0, r5, r0, lsl #1
	addeq r0, r0, #0x1200
	ldreqh r9, [r0, #0xc8]
_0211EA58:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r3, [r5, #0x10]
	mov r0, r5
	mov r1, r11
	mov r2, r9
	sub r3, r3, #2
	bl FUN_ov56_0211dc58
	mov r0, r5
_0211EA80:
	bl FUN_ov56_0211c15c
	b _0211EB4C
_0211EA88:
	mov r9, #5
	mov r11, #1
	mov r0, r5
	mov r1, r9
	mov r2, r11
	bl FUN_ov56_0211f140
	mov r10, r0
	mov r0, r5
	mov r1, r9
	mov r2, #0
	bl FUN_ov56_0211f140
	movs r9, r0
	moveq r11, #0
	mov r0, r5
	mov r1, r11
	bl FUN_ov56_02120330
	cmp r9, #0
	ldreqh r9, [r6, #0x34]
	beq _0211EAE8
	cmp r10, #0
	ldreq r0, [r5, #0xa8]
	addeq r0, r5, r0, lsl #1
	addeq r0, r0, #0x1200
	ldreqh r9, [r0, #0xc8]
_0211EAE8:
	mov r0, r5
	bl FUN_ov56_0211b3c8
	mov r6, #0
	mov r0, r5
	mov r1, r9
	mov r2, r6
	bl FUN_ov56_0211dd10
	mov r0, r5
	strb r6, [r5, #0x27]
	b _0211EA80
_0211EB10:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x46c]
	ldr r6, [r0, #0x600]
	eor r9, r1, #1
	ldr r3, [r0, #0x604]
	ldr r2, [r0, #0x608]
	ldr r1, [r0, #0x51c]
	add r0, sp, #0xc
	str r9, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r1, [r0, r1, lsl #2]
	mov r0, r5
	bl FUN_ov56_02120330
_0211EB4C:
	mov r0, r8, lsl #0x10
	mov r2, r0, asr #0x10
	add r1, sp, #0x1c
	str r2, [sp]
	ldr r0, _0211EB88 ; =0x02099F38
	mov r3, r7, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r1, r4, lsl #2]
	mov r2, #2
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EB80: .word 0x0209A454
_0211EB84: .word 0x0209BA20
_0211EB88: .word 0x02099F38
	arm_func_end FUN_ov56_0211e8ac

	arm_func_start FUN_ov56_0211eb8c
FUN_ov56_0211eb8c: ; 0x0211EB8C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x6c
	mov r7, r0
	mov r9, r1
	mov r0, #0x24
	mla r0, r9, r0, r7
	add r3, r0, #0x1000
	add r2, r7, #0x1000
	ldr r1, [r2, #0x3c0]
	ldr r4, [r2, #0x3b8]
	add r0, r7, #0x1d4
	add r0, r0, #0x1400
	ldr r6, [r3, #0x508]
	ldr r5, [r0, r9, lsl #3]
	ldr r2, [r2, #0x3bc]
	ldr r3, [r3, #0x504]
	add r8, r5, #1
	mov r5, r6, lsl #0x10
	str r8, [r0, r9, lsl #3]
	mov r0, r5, asr #0x10
	mov r3, r3, lsl #0x10
	ldr r10, _0211F0F8 ; =0x02099F38
	str r0, [sp]
	add r6, sp, #0x54
	str r4, [sp, #0x54]
	str r2, [sp, #0x58]
	mov r11, #3
	str r1, [sp, #0x5c]
	str r1, [sp, #0x60]
	str r1, [sp, #0x64]
	str r1, [sp, #0x68]
	ldr r0, [r10]
	ldr r1, [r6, r9, lsl #2]
	mov r2, r11
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	cmp r8, #3
	bge _0211EC40
	ldr r0, [r10]
	ldr r1, [r6, r9, lsl #2]
	mov r2, r11
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC40:
	cmp r8, #6
	mov r5, #1
	mov r4, #0
	bge _0211EC70
	str r5, [sp]
	ldr r0, [r10]
	ldr r1, [r6, r9, lsl #2]
	mov r2, r11
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC70:
	cmp r8, #9
	bge _0211EC94
	ldr r0, [r10]
	ldr r1, [r6, r9, lsl #2]
	mov r2, r11
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC94:
	addne sp, sp, #0x6c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r7, r9, lsl #3
	add r0, r0, #0x1000
	mov r6, r4
	str r6, [r0, #0x5d0]
	str r6, [r0, #0x5d4]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0211EF44
	mov r8, #0x20
	add r3, r7, #0x1000
	add r0, sp, #0x34
	mov r1, r6
	mov r2, r8
	ldr r5, [r3, #0x4f8]
	bl MI_CpuFill8
	mov r1, r6
	add r0, sp, #0x14
	mov r2, r8
	bl MI_CpuFill8
	cmp r5, #5
	addls pc, pc, r5, lsl #2
	b _0211F0F0
_0211ECF4: ; jump table
	b _0211ED0C ; case 0
	b _0211F0F0 ; case 1
	b _0211ED80 ; case 2
	b _0211ED80 ; case 3
	b _0211F0F0 ; case 4
	b _0211EECC ; case 5
_0211ED0C:
	b _0211ED50
_0211ED10:
	add r0, r7, r6, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	movs r5, r0
	beq _0211ED4C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211ED4C
	mov r0, r5
	bl FUN_0206dcd4
	add r1, r7, r6, lsl #1
	ldrh r2, [r0, #0x10]
	add r0, r1, #0x1200
	strh r2, [r0, #0xc8]
_0211ED4C:
	add r6, r6, #1
_0211ED50:
	ldr r0, [r7, #0xac]
	cmp r6, r0
	blt _0211ED10
	mov r4, #2
	mov r0, r7
	mov r1, r4
	bl FUN_ov56_0211e674
	mov r0, r7
	mov r1, r4
	bl FUN_ov56_0211b5c8
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ED80:
	sub r9, r5, #1
	sub r11, r5, #2
	add r8, r5, #0
	b _0211EE28
_0211ED90:
	add r0, r7, r6, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	movs r10, r0
	beq _0211EE24
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211EE24
	mov r0, r10
	bl FUN_0206dcd4
	add r1, r0, r9, lsl #1
	add r0, r7, r6, lsl #1
	ldrh r1, [r1, #0x10]
	add r0, r0, #0x1200
	cmp r5, #2
	strh r1, [r0, #0xc8]
	mov r0, r10
	bne _0211EDE8
	bl FUN_0206dcd4
	add r1, r0, r8, lsl #1
	b _0211EDF0
_0211EDE8:
	bl FUN_0206dcd4
	add r1, r0, r11, lsl #1
_0211EDF0:
	ldrh r1, [r1, #0x10]
	add r0, r7, r6, lsl #1
	add r0, r0, #0x1200
	strh r1, [r0, #0xe8]
	add r0, r7, r6, lsl #1
	add r1, r0, #0x1200
	ldrh r2, [r1, #0xc8]
	mov r3, r6, lsl #1
	add r0, sp, #0x34
	strh r2, [r0, r3]
	ldrh r1, [r1, #0xe8]
	add r0, sp, #0x14
	strh r1, [r0, r3]
_0211EE24:
	add r6, r6, #1
_0211EE28:
	ldr r0, [r7, #0xac]
	cmp r6, r0
	blt _0211ED90
	mov r0, r7
	add r1, r5, #1
	mov r8, #0
	bl FUN_ov56_0211e674
	mov r0, r7
	add r1, r5, #1
	bl FUN_ov56_0211b5c8
	mov r1, #1
	mov r6, r8
	mov r0, r7
	mov r2, r1
	mov r3, r6
	bl FUN_ov56_0211a714
	add r5, sp, #0x34
	add r4, sp, #0x14
	b _0211EEB8
_0211EE74:
	add r0, r7, r6, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r8
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211EEB4
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211EEB4
	mov r2, r6, lsl #1
	ldrh r1, [r5, r2]
	add r0, r7, r6, lsl #1
	add r0, r0, #0x1200
	strh r1, [r0, #0xc8]
	ldrh r1, [r4, r2]
	strh r1, [r0, #0xe8]
_0211EEB4:
	add r6, r6, #1
_0211EEB8:
	ldr r0, [r7, #0xac]
	cmp r6, r0
	blt _0211EE74
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EECC:
	ldr r5, _0211F0FC ; =0x0209BA20
	b _0211EF14
_0211EED4:
	add r0, r7, r6, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	movs r8, r0
	beq _0211EF10
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211EF10
	mov r0, r5
	mov r1, r8
	bl  FUN_ov16_020ee430
	add r1, r7, r6, lsl #1
	add r1, r1, #0x1200
	strh r0, [r1, #0xc8]
_0211EF10:
	add r6, r6, #1
_0211EF14:
	ldr r0, [r7, #0xac]
	cmp r6, r0
	blt _0211EED4
	mov r4, #5
	mov r0, r7
	mov r1, r4
	bl FUN_ov56_0211e674
	mov r0, r7
	mov r1, r4
	bl FUN_ov56_0211b5c8
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EF44:
	cmp r0, #1
	bne _0211EF98
	ldr r0, _0211F100 ; =0x02120EF8
	add r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, r7, #0x1000
	ldr r0, [r0, #0x51c]
	cmp r0, #0
	sub r0, r0, #1
	bne _0211EF80
	mov r0, r7
	bl FUN_ov56_0211ddfc
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EF80:
	ldr r1, [r3, r0, lsl #2]
	mov r0, r7
	mov r2, r1
	bl FUN_ov56_0211b394
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EF98:
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #4
	beq _0211EFB4
	cmp r0, #5
	addne sp, sp, #0x6c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EFB4:
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0xa8]
	cmp r1, #5
	bne _0211F00C
	ldr r4, _0211F104 ; =0x0209A454
	add r0, r7, r0, lsl #1
	add r0, r0, #0x1200
	ldr r5, _0211F0FC ; =0x0209BA20
	ldrh r2, [r0, #0xc8]
	ldrb r1, [r4, #0x28]
	mov r0, r5
	bl  FUN_ov16_020ee278
	ldrb r4, [r4, #0x28]
	mov r0, r7
	mov r1, #5
	mov r2, #0
	bl FUN_ov56_0211f140
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020ee278
	b _0211F07C
_0211F00C:
	mov r10, #0
	add r3, r7, r0, lsl #1
	mov r0, r7
	mov r2, r10
	ldrh r6, [r3, #0x88]
	bl FUN_ov56_0211f140
	ldr r1, [r7, #0x10]
	mov r8, r0
	sub r9, r1, #2
	b _0211F058
_0211F034:
	add r1, r7, r10, lsl #1
	stmia sp, {r4, r5}
	add r0, r1, #0x1200
	ldrh r2, [r0, #0xc8]
	ldrh r1, [r1, #0x88]
	mov r0, r7
	mov r3, r9
	bl FUN_ov56_0211dc58
	add r10, r10, #1
_0211F058:
	ldr r0, [r7, #0xac]
	cmp r10, r0
	blt _0211F034
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, r9
	stmia sp, {r4, r5}
	bl FUN_ov56_0211dc58
_0211F07C:
	mov r5, #1
	mov r0, r7
	strb r5, [r7, #0x27]
	bl FUN_ov56_0211dbd8
	mov r0, r7
	bl FUN_ov56_0211d264
	mov r0, r7
	bl FUN_ov56_0211c958
	mov r0, r7
	mov r4, #0
	mov r1, r4
	add r2, r7, #0x1000
	ldr r2, [r2, #0x4f8]
	bl FUN_ov56_0211e6b8
	mov r0, r7
	bl FUN_ov56_0211c53c
	mov r0, r7
	bl FUN_ov56_0211c470
	mov r0, r7
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov56_0211a714
	mov r0, r7
	mov r1, r4
	bl FUN_ov56_0211b5c8
	ldr r0, _0211F108 ; =0x0209AC44
	mov r1, #0x19
	bl FUN_0202cf6c
_0211F0F0:
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F0F8: .word 0x02099F38
_0211F0FC: .word 0x0209BA20
_0211F100: .word 0x02120EF8
_0211F104: .word 0x0209A454
_0211F108: .word 0x0209AC44
	arm_func_end FUN_ov56_0211eb8c

	arm_func_start FUN_ov56_0211f10c
FUN_ov56_0211f10c: ; 0x0211F10C
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0xa8]
	mov r4, #0
	add r0, r0, r1, lsl #1
	ldrh r0, [r0, #0x88]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211F138
	bl FUN_0206d6d8
	mov r4, r0
_0211F138:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov56_0211f10c

	arm_func_start FUN_ov56_0211f140
FUN_ov56_0211f140: ; 0x0211F140
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov lr, r0
	mov r4, #0x24
	ldr r3, _0211F1F8 ; =0x02120F10
	mov r12, r2
	mla r4, r6, r4, lr
	add r5, sp, #0
	ldmia r3, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	sub r0, r6, #2
	ldr r3, [r5, r0, lsl #2]
	add r0, r4, #0x1000
	add r1, lr, r3, lsl #2
	add r1, r1, #0x1000
	ldr r2, [r0, #0x4f8]
	ldr r1, [r1, #0x4e0]
	mov r4, #0
	mov r0, r4
	cmp r3, #0
	add r1, r2, r1, lsl #3
	beq _0211F1C0
	cmp r3, #1
	beq _0211F1D4
	cmp r3, #2
	addeq r1, lr, r1, lsl #1
	addeq r0, r1, #0xc00
	addeq r1, r1, #0xe00
	ldreqh r4, [r0, #0xc8]
	ldreqh r0, [r1, #0xc8]
	b _0211F1E8
_0211F1C0:
	add r1, lr, r1, lsl #1
	add r0, r1, #0x200
	ldrh r4, [r1, #0xc8]
	ldrh r0, [r0, #0xc8]
	b _0211F1E8
_0211F1D4:
	add r1, lr, r1, lsl #1
	add r0, r1, #0x600
	add r1, r1, #0x800
	ldrh r4, [r0, #0xc8]
	ldrh r0, [r1, #0xc8]
_0211F1E8:
	cmp r12, #0
	moveq r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211F1F8: .word 0x02120F10
	arm_func_end FUN_ov56_0211f140

	arm_func_start FUN_ov56_0211f1fc
FUN_ov56_0211f1fc: ; 0x0211F1FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211F364 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0x24
	b _0211F25C
_0211F234:
	mla r0, r4, r1, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0x514]
	cmp r0, #0
	addeq r0, r6, r4, lsl #3
	addeq r0, r0, #0x1000
	ldreq r0, [r0, #0x5d0]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211F25C:
	cmp r4, #6
	blt _0211F234
	ldr r0, _0211F368 ; =0x0209A0F4
	ldr r4, _0211F36C ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl  FUN_ov16_0210f468
	cmp r0, #1
	bne _0211F2AC
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r5
	strh r1, [r0, #0x38]
_0211F2AC:
	tst r5, #1
	beq _0211F2C0
	mov r0, r6
	bl FUN_ov56_0211f370
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F2C0:
	tst r5, #2
	beq _0211F2D4
	mov r0, r6
	bl FUN_ov56_0211f61c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F2D4:
	tst r5, #0x400
	beq _0211F2E8
	mov r0, r6
	bl FUN_ov56_0211f7d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F2E8:
	tst r5, #0x800
	beq _0211F2FC
	mov r0, r6
	bl FUN_ov56_0211f820
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F2FC:
	tst r5, #0x200
	beq _0211F310
	mov r0, r6
	bl FUN_ov56_0211faac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F310:
	tst r5, #0x100
	beq _0211F324
	mov r0, r6
	bl FUN_ov56_0211fcd8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F324:
	tst r7, #0x20
	beq _0211F338
	mov r0, r6
	bl FUN_ov56_0211f878
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F338:
	tst r7, #0x10
	beq _0211F34C
	mov r0, r6
	bl FUN_ov56_0211f994
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F34C:
	tst r7, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	bl FUN_ov56_0211ff00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F364: .word 0x02099ED4
_0211F368: .word 0x0209A0F4
_0211F36C: .word 0x02099EB4
	arm_func_end FUN_ov56_0211f1fc

	arm_func_start FUN_ov56_0211f370
FUN_ov56_0211f370: ; 0x0211F370
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xa8]
	mov r1, #0
	add r0, r5, r0, lsl #1
	ldrh r0, [r0, #0x88]
	bl  FUN_ov16_020efa9c
	ldr r1, [r5, #0x10]
	mov r4, r0
	cmp r1, #1
	beq _0211F3B4
	cmp r4, #0
	bne _0211F3B4
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F3B4:
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211F5E8
_0211F3C0: ; jump table
	b _0211F3DC ; case 0
	b _0211F4C4 ; case 1
	b _0211F430 ; case 2
	b _0211F430 ; case 3
	b _0211F430 ; case 4
	b _0211F430 ; case 5
	b _0211F5C0 ; case 6
_0211F3DC:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4f8]
	cmp r0, #1
	cmpne r0, #4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	beq _0211F5E8
	mov r0, r4
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #2
	beq _0211F5E8
	ldr r2, [r5, #0x10]
	mov r0, r5
	mov r1, #6
	str r2, [r5, #0x14]
	bl FUN_ov56_0211b5c8
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F430:
	cmp r4, #0
	beq _0211F470
	mov r0, r4
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #2
	beq _0211F470
	ldr r2, [r5, #0x10]
	mov r0, r5
	mov r1, #6
	str r2, [r5, #0x14]
	bl FUN_ov56_0211b5c8
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F470:
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, #0
	bl FUN_ov56_0211f140
	mov r4, r0
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, #1
	bl FUN_ov56_0211f140
	cmp r4, #0
	bne _0211F4AC
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F4AC:
	cmp r0, #0
	bne _0211F5E8
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F4C4:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x51c]
	cmp r1, #0
	bne _0211F53C
	cmp r4, #0
	beq _0211F514
	mov r0, r4
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #2
	beq _0211F514
	ldr r2, [r5, #0x10]
	mov r0, r5
	mov r1, #6
	str r2, [r5, #0x14]
	bl FUN_ov56_0211b5c8
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F514:
	cmp r4, #0
	beq _0211F52C
	add r0, r5, #0x1000
	ldr r0, [r0, #0x46c]
	cmp r0, #0
	beq _0211F5E8
_0211F52C:
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F53C:
	cmp r1, #1
	bne _0211F568
	cmp r4, #0
	beq _0211F558
	ldr r0, [r0, #0x600]
	cmp r0, #0
	bne _0211F5E8
_0211F558:
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F568:
	cmp r1, #2
	bne _0211F594
	cmp r4, #0
	beq _0211F584
	ldr r0, [r0, #0x604]
	cmp r0, #0
	bne _0211F5E8
_0211F584:
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F594:
	cmp r1, #3
	bne _0211F5E8
	cmp r4, #0
	beq _0211F5B0
	ldr r0, [r0, #0x608]
	cmp r0, #0
	bne _0211F5E8
_0211F5B0:
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F5C0:
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0x23
	bl FUN_ov56_0212025c
	ldr r1, [r5, #0x14]
	mov r0, r5
	bl FUN_ov56_0211b5c8
	ldmfd sp!, {r3, r4, r5, pc}
_0211F5E8:
	ldr r1, [r5, #0x10]
	mov r0, r5
	add r1, r5, r1, lsl #3
	add r2, r1, #0x1000
	mov r4, #1
	mov r1, #3
	str r4, [r2, #0x5d0]
	bl FUN_ov56_0212025c
	ldr r0, _0211F618 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F618: .word 0x0209AC44
	arm_func_end FUN_ov56_0211f370

	arm_func_start FUN_ov56_0211f61c
FUN_ov56_0211f61c: ; 0x0211F61C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r1, [r7, #0x10]
	mov r4, #0
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211F7A4
_0211F63C: ; jump table
	b _0211F658 ; case 0
	b _0211F68C ; case 1
	b _0211F6A4 ; case 2
	b _0211F6A4 ; case 3
	b _0211F6A4 ; case 4
	b _0211F6A4 ; case 5
	b _0211F778 ; case 6
_0211F658:
	ldr r0, _0211F7C4 ; =0x0209A454
	mov r1, r4
	ldrb r2, [r0, #0x33]
	cmp r2, #0
	movne r1, #0x5a
	bne _0211F67C
	ldrb r0, [r0, #0x34]
	cmp r0, #0
	movne r1, #0x71
_0211F67C:
	mov r0, r7
	mov r2, r1
	bl FUN_ov56_0211b394
	b _0211F7A4
_0211F68C:
	mov r1, #1
	bl FUN_ov56_0211e674
	mov r0, r7
	mov r1, r4
_0211F69C:
	bl FUN_ov56_0211b5c8
	b _0211F7A4
_0211F6A4:
	bl FUN_ov56_0211e674
	ldr r1, [r7, #0x10]
	cmp r1, #5
	bne _0211F6E0
	ldr r0, [r7, #0xa8]
	ldr r1, _0211F7C4 ; =0x0209A454
	add r0, r7, r0, lsl #1
	add r0, r0, #0x1200
	ldrb r1, [r1, #0x28]
	ldrh r2, [r0, #0xc8]
	ldr r0, _0211F7C8 ; =0x0209BA20
	bl  FUN_ov16_020ee278
	mov r0, #1
	strb r0, [r7, #0x27]
	b _0211F730
_0211F6E0:
	ldr r0, [r7, #0xac]
	sub r5, r1, #2
	cmp r0, #0
	mov r6, r4
	ble _0211F730
	mov r8, #1
_0211F6F8:
	add r0, r7, r6, lsl #1
	ldrh r1, [r0, #0x88]
	cmp r1, #0
	beq _0211F720
	stmia sp, {r4, r8}
	add r0, r0, #0x1200
	ldrh r2, [r0, #0xc8]
	mov r0, r7
	mov r3, r5
	bl FUN_ov56_0211dc58
_0211F720:
	ldr r0, [r7, #0xac]
	add r6, r6, #1
	cmp r6, r0
	blt _0211F6F8
_0211F730:
	mov r0, r7
	bl FUN_ov56_0211c15c
	mov r0, r7
	bl FUN_ov56_0211d264
	mov r0, r7
	bl FUN_ov56_0211c958
	add r0, r7, #0x1000
	ldr r2, [r0, #0x4f8]
	mov r0, r7
	mov r1, r4
	bl FUN_ov56_0211e6b8
	mov r0, r7
	bl FUN_ov56_0211c53c
	mov r0, r7
	bl FUN_ov56_0211c470
	mov r1, r4
	mov r0, r7
	b _0211F69C
_0211F778:
	ldr r0, _0211F7CC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r7
	mov r1, #0x23
	bl FUN_ov56_0212025c
	ldr r1, [r7, #0x14]
	mov r0, r7
	bl FUN_ov56_0211b5c8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F7A4:
	mov r0, r7
	mov r1, #5
	bl FUN_ov56_0212025c
	ldr r0, _0211F7CC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F7C4: .word 0x0209A454
_0211F7C8: .word 0x0209BA20
_0211F7CC: .word 0x0209AC44
	arm_func_end FUN_ov56_0211f61c

	arm_func_start FUN_ov56_0211f7d0
FUN_ov56_0211f7d0: ; 0x0211F7D0
	stmfd sp!, {r4, lr}
	add r1, r0, #0x1000
	ldrb r1, [r1, #0x612]
	cmp r1, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r0, #0x10]
	mov r4, #1
	mov r1, r4, lsl r1
	tst r1, #0x1c
	ldmeqfd sp!, {r4, pc}
	ldr r2, [r0, #0x78]
	mov r1, #0x22
	eor r2, r2, #1
	str r2, [r0, #0x78]
	bl FUN_ov56_0212025c
	ldr r0, _0211F81C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211F81C: .word 0x0209AC44
	arm_func_end FUN_ov56_0211f7d0

	arm_func_start FUN_ov56_0211f820
FUN_ov56_0211f820: ; 0x0211F820
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x10]
	cmp r1, #0
	bne _0211F85C
	mov r4, #1
	mov r1, r4
	bl FUN_ov56_0211b5c8
	mov r0, r5
	mov r1, #4
	bl FUN_ov56_0212025c
	ldr r0, _0211F874 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F85C:
	cmp r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211F874 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F874: .word 0x0209AC44
	arm_func_end FUN_ov56_0211f820

	arm_func_start FUN_ov56_0211f878
FUN_ov56_0211f878: ; 0x0211F878
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, #0
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211F8BC
_0211F894: ; jump table
	b _0211F8BC ; case 0
	b _0211F8BC ; case 1
	b _0211F8AC ; case 2
	b _0211F8B0 ; case 3
	b _0211F8B0 ; case 4
	b _0211F8B8 ; case 5
_0211F8AC:
	b _0211F8BC
_0211F8B0:
	mov r4, #1
	b _0211F8BC
_0211F8B8:
	mov r4, #2
_0211F8BC:
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211F8C8: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	b _0211F8E0 ; case 2
	b _0211F8E0 ; case 3
	b _0211F8E0 ; case 4
	b _0211F8E0 ; case 5
_0211F8E0:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4ec]
	ldr r2, [r0, #0x4e0]
	sub r0, r1, #1
	add r0, r2, r0
	bl FUN_0201f9bc
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x4e0]
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_0211e0bc
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_0211df04
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4ec]
	cmp r0, #1
	ble _0211F94C
	mov r0, r5
	bl FUN_ov56_0211dbd8
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl FUN_ov56_0211d664
_0211F94C:
	mov r4, #0
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, r4
	bl FUN_ov56_0211f140
	cmp r0, #0
	movne r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_02120330
	mov r0, r5
	mov r1, #8
	bl FUN_ov56_0212025c
	ldr r0, _0211F990 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F990: .word 0x0209AC44
	arm_func_end FUN_ov56_0211f878

	arm_func_start FUN_ov56_0211f994
FUN_ov56_0211f994: ; 0x0211F994
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, #0
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211F9D8
_0211F9B0: ; jump table
	b _0211F9D8 ; case 0
	b _0211F9D8 ; case 1
	b _0211F9C8 ; case 2
	b _0211F9CC ; case 3
	b _0211F9CC ; case 4
	b _0211F9D4 ; case 5
_0211F9C8:
	b _0211F9D8
_0211F9CC:
	mov r4, #1
	b _0211F9D8
_0211F9D4:
	mov r4, #2
_0211F9D8:
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211F9E4: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	b _0211F9FC ; case 2
	b _0211F9FC ; case 3
	b _0211F9FC ; case 4
	b _0211F9FC ; case 5
_0211F9FC:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r2, [r0, #0x4e0]
	ldr r1, [r0, #0x4ec]
	add r0, r2, #1
	bl FUN_0201f9bc
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x4e0]
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_0211e0bc
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_0211df04
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4ec]
	cmp r0, #1
	ble _0211FA64
	mov r0, r5
	bl FUN_ov56_0211dbd8
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl FUN_ov56_0211d664
_0211FA64:
	mov r4, #0
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, r4
	bl FUN_ov56_0211f140
	cmp r0, #0
	movne r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov56_02120330
	mov r0, r5
	mov r1, #9
	bl FUN_ov56_0212025c
	ldr r0, _0211FAA8 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211FAA8: .word 0x0209AC44
	arm_func_end FUN_ov56_0211f994

	arm_func_start FUN_ov56_0211faac
FUN_ov56_0211faac: ; 0x0211FAAC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	ldr r3, [r8, #0x10]
	mov r4, #0
	cmp r3, #6
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r8, #0x1000
	ldrb r1, [r1, #0x612]
	cmp r1, #0
	beq _0211FAF0
	ldr r0, _0211FCD4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FAF0:
	cmp r3, #0
	bne _0211FB6C
	mov r4, #1
	mov r1, r4
	bl FUN_ov56_0212025c
	mov r0, r8
	mov r1, #6
	bl FUN_ov56_0212025c
	mov r0, r8
	mov r2, r4
	mov r1, #0
	bl FUN_ov56_0211c8dc
	mov r0, r8
	bl FUN_ov56_0211d264
	mov r0, r8
	bl FUN_ov56_0211c958
	mov r0, r8
	bl FUN_ov56_0211f10c
	cmp r0, #0
	addeq r0, r8, #0x1000
	ldreq r1, [r0, #0x4f8]
	cmpeq r1, #5
	moveq r1, #3
	streq r1, [r0, #0x4f8]
	add r0, r8, #0x1000
	ldr r2, [r0, #0x4f8]
	mov r0, r8
	mov r1, #0
	bl FUN_ov56_0211e6b8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FB6C:
	mov r1, #1
	mov r2, r1, lsl r3
	tst r2, #0x1c
	beq _0211FCAC
	cmp r3, #5
	sub r5, r3, #2
	mov r6, r4
	addls pc, pc, r3, lsl #2
	b _0211FBB8
_0211FB90: ; jump table
	b _0211FBB8 ; case 0
	b _0211FBB8 ; case 1
	b _0211FBA8 ; case 2
	b _0211FBAC ; case 3
	b _0211FBAC ; case 4
	b _0211FBB4 ; case 5
_0211FBA8:
	b _0211FBB8
_0211FBAC:
	mov r6, r1
	b _0211FBB8
_0211FBB4:
	mov r6, #2
_0211FBB8:
	mov r0, r8
	mov r1, #0x20
	bl FUN_ov56_0212025c
	mov r0, r8
	mov r1, #0x1e
	bl FUN_ov56_0212025c
	mov r7, #0
	mov r0, r8
	mov r1, r7
	mov r2, r7
	bl FUN_ov56_0211c8dc
	mov r0, r8
	bl FUN_ov56_0211c658
	mov r0, r8
	bl FUN_ov56_0211c58c
	mov r0, r8
	bl FUN_ov56_0211dbd8
	ldr r0, [r8, #0xac]
	cmp r0, #0
	ble _0211FC3C
_0211FC08:
	str r4, [sp]
	add r1, r8, r7, lsl #1
	str r4, [sp, #4]
	add r0, r1, #0x1200
	ldrh r1, [r1, #0x88]
	ldrh r2, [r0, #0xc8]
	mov r0, r8
	mov r3, r5
	bl FUN_ov56_0211dc58
	ldr r0, [r8, #0xac]
	add r7, r7, #1
	cmp r7, r0
	blt _0211FC08
_0211FC3C:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r3, #1
	bl FUN_ov56_0211a714
	add r0, r8, r6, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4e0]
	ldr r2, [r0, #0x4ec]
	add r1, r1, #1
	cmp r1, r2
	subgt r1, r2, #1
	strgt r1, [r0, #0x4e0]
	mov r0, r8
	mov r1, r6
	bl FUN_ov56_0211e0bc
	mov r0, r8
	mov r1, r6
	bl FUN_ov56_0211df04
	mov r0, r8
	mov r1, r6
	mov r2, #2
	bl FUN_ov56_0211d664
	ldr r0, _0211FCD4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FCAC:
	cmp r3, #5
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0x20
	bl FUN_ov56_0212025c
	ldr r0, _0211FCD4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FCD4: .word 0x0209AC44
	arm_func_end FUN_ov56_0211faac

	arm_func_start FUN_ov56_0211fcd8
FUN_ov56_0211fcd8: ; 0x0211FCD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	ldr r3, [r8, #0x10]
	mov r4, #0
	cmp r3, #6
	addeq sp, sp, #8
	mov r2, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r8, #0x1000
	ldrb r1, [r1, #0x612]
	cmp r1, #0
	beq _0211FD20
	ldr r0, _0211FEFC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FD20:
	cmp r3, #0
	bne _0211FD98
	mov r1, #2
	bl FUN_ov56_0212025c
	mov r0, r8
	mov r1, #6
	bl FUN_ov56_0212025c
	mov r1, #1
	mov r0, r8
	mov r2, r1
	bl FUN_ov56_0211c8dc
	mov r0, r8
	bl FUN_ov56_0211d264
	mov r0, r8
	bl FUN_ov56_0211c958
	mov r0, r8
	bl FUN_ov56_0211f10c
	cmp r0, #0
	addeq r0, r8, #0x1000
	ldreq r1, [r0, #0x4f8]
	cmpeq r1, #5
	moveq r1, #3
	streq r1, [r0, #0x4f8]
	add r0, r8, #0x1000
	ldr r2, [r0, #0x4f8]
	mov r0, r8
	mov r1, #0
	bl FUN_ov56_0211e6b8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FD98:
	mov r1, r2, lsl r3
	tst r1, #0x1c
	beq _0211FED4
	cmp r3, #5
	sub r5, r3, #2
	mov r6, r4
	addls pc, pc, r3, lsl #2
	b _0211FDE0
_0211FDB8: ; jump table
	b _0211FDE0 ; case 0
	b _0211FDE0 ; case 1
	b _0211FDD0 ; case 2
	b _0211FDD4 ; case 3
	b _0211FDD4 ; case 4
	b _0211FDDC ; case 5
_0211FDD0:
	b _0211FDE0
_0211FDD4:
	mov r6, r2
	b _0211FDE0
_0211FDDC:
	mov r6, #2
_0211FDE0:
	mov r0, r8
	mov r1, #0x21
	bl FUN_ov56_0212025c
	mov r0, r8
	mov r1, #0x1e
	bl FUN_ov56_0212025c
	mov r7, #0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov56_0211c8dc
	mov r0, r8
	bl FUN_ov56_0211c658
	mov r0, r8
	bl FUN_ov56_0211c58c
	mov r0, r8
	bl FUN_ov56_0211dbd8
	ldr r0, [r8, #0xac]
	cmp r0, #0
	ble _0211FE64
_0211FE30:
	str r4, [sp]
	add r1, r8, r7, lsl #1
	str r4, [sp, #4]
	add r0, r1, #0x1200
	ldrh r1, [r1, #0x88]
	ldrh r2, [r0, #0xc8]
	mov r0, r8
	mov r3, r5
	bl FUN_ov56_0211dc58
	ldr r0, [r8, #0xac]
	add r7, r7, #1
	cmp r7, r0
	blt _0211FE30
_0211FE64:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r3, #1
	bl FUN_ov56_0211a714
	add r0, r8, r6, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4e0]
	ldr r2, [r0, #0x4ec]
	add r1, r1, #1
	cmp r1, r2
	subgt r1, r2, #1
	strgt r1, [r0, #0x4e0]
	mov r0, r8
	mov r1, r6
	bl FUN_ov56_0211e0bc
	mov r0, r8
	mov r1, r6
	bl FUN_ov56_0211df04
	mov r0, r8
	mov r1, r6
	mov r2, #1
	bl FUN_ov56_0211d664
	ldr r0, _0211FEFC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FED4:
	cmp r3, #5
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0x21
	bl FUN_ov56_0212025c
	ldr r0, _0211FEFC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FEFC: .word 0x0209AC44
	arm_func_end FUN_ov56_0211fcd8

	arm_func_start FUN_ov56_0211ff00
FUN_ov56_0211ff00: ; 0x0211FF00
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x58
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #6
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mvn r8, #0
	tst r1, #0x40
	movne r8, #0
	bne _0211FF34
	tst r1, #0x80
	movne r8, #1
_0211FF34:
	cmp r8, #0
	addlt sp, sp, #0x58
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, _021200B4 ; =0x02120EB4
	ldr r9, _021200B8 ; =0x02120FC8
	ldr r10, [r5, #4]
	add r6, sp, #0x28
	ldmia r9!, {r0, r1, r2, r3}
	mov r7, r6
	stmia r6!, {r0, r1, r2, r3}
	ldmia r9!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r9, {r0, r1, r2, r3}
	ldr r5, [r5]
	stmia r6, {r0, r1, r2, r3}
	str r5, [sp, #8]
	str r10, [sp, #0xc]
	add r5, sp, #8
	mov r0, r4
	mov r9, #0
	bl FUN_ov56_0211f10c
	ldr r0, [r5, r0, lsl #2]
	add r10, sp, #0x10
	str r0, [sp, #0x28]
	ldr r0, _021200BC ; =0x02120EA4
	ldr r12, _021200C0 ; =0x02120F50
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp]
	str r0, [sp, #4]
	ldmia r12!, {r0, r1, r2, r3}
	mov r5, r10
	stmia r10!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1}
	stmia r10, {r0, r1}
	add r6, sp, #0
	mov r0, r4
	bl FUN_ov56_0211f10c
	ldr r1, [r6, r0, lsl #2]
	mov r0, #0x24
	str r1, [sp, #0x10]
	ldr r6, [r4, #0x10]
	add r1, r4, #0xf8
	mul r2, r6, r0
	add r0, r1, #0x1400
	ldr r10, [r0, r2]
	add r0, r7, r6, lsl #3
	ldr r5, [r5, r6, lsl #2]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r5
	add r0, r10, r0
	bl FUN_0201f9bc
	mov r2, r1
	cmp r6, #0
	bne _02120048
	cmp r8, #0
	bne _02120030
	cmp r2, #1
	beq _02120028
	cmp r2, #4
	bne _02120074
_02120028:
	sub r2, r2, #1
	b _02120074
_02120030:
	cmp r2, #1
	beq _02120040
	cmp r2, #4
	bne _02120074
_02120040:
	add r2, r2, #1
	b _02120074
_02120048:
	sub r0, r6, #2
	cmp r0, #3
	bhi _02120074
	cmp r8, #0
	cmpeq r10, #0
	moveq r9, #1
	beq _02120074
	cmp r8, #1
	subeq r0, r5, #1
	cmpeq r10, r0
	moveq r9, #2
_02120074:
	mov r0, r4
	mov r1, r6
	bl FUN_ov56_0211e6b8
	cmp r9, #1
	bne _02120098
	mov r0, r4
	bl FUN_ov56_0211f878
	add sp, sp, #0x58
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02120098:
	cmp r9, #2
	addne sp, sp, #0x58
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl FUN_ov56_0211f994
	add sp, sp, #0x58
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021200B4: .word 0x02120EB4
_021200B8: .word 0x02120FC8
_021200BC: .word 0x02120EA4
_021200C0: .word 0x02120F50
	arm_func_end FUN_ov56_0211ff00

	arm_func_start FUN_ov56_021200c4
FUN_ov56_021200c4: ; 0x021200C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _02120254 ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r11, #2
	mov r9, r1
	mov r5, #1
	mov r8, r2
	mov r1, r11
	mov r2, r5
	mov r7, r3
	mov r6, #0x78
	bl  FUN_ov16_02112724
	add r1, r10, r9, lsl #2
	add r2, r10, r8, lsl #2
	add r1, r1, #0x1000
	str r0, [r1, #0x39c]
	add r1, r2, #0x1000
	ldr r1, [r1, #0x338]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r7
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, r5
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r8
	mov r2, r5
	bl  FUN_ov16_02113ec0
	ldr r2, [sp, #0x38]
	stmia sp, {r5, r6}
	ldr r0, _02120258 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r8
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fc74
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0
	ldrb r1, [sp, #0x40]
	strb r0, [r4, #0x10]
	strb r0, [r4, #0xf]
	strh r0, [r4, #0xc]
	cmp r1, #1
	addne sp, sp, #8
	strb r0, [r4, #0x11]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r0
	mov r3, r0
	mov r2, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, r7
	mov r3, r1
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, #0
	mov r2, r5
	mov r3, r1
	add r0, r4, #0x3e
	bl  FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r4, #0x3e
	add r2, r7, #1
	mov r3, r1
	bl  FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120254: .word 0x02099F38
_02120258: .word 0x02099EB4
	arm_func_end FUN_ov56_021200c4

	arm_func_start FUN_ov56_0212025c
FUN_ov56_0212025c: ; 0x0212025C
	ldr r0, _0212026C ; =0x02099EB4
	ldr r12, _02120270 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0212026C: .word 0x02099EB4
_02120270: .word  FUN_ov16_0210efac
	arm_func_end FUN_ov56_0212025c

	arm_func_start FUN_ov56_02120274
FUN_ov56_02120274: ; 0x02120274
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _02120328 ; =0x02099EB4
	mov r9, r0
	ldr r0, [r5]
	mov r4, r4, lsl #0x10
	mov r8, r1
	mov r1, r4, lsr #0x10
	mov r7, r2
	mov r6, r3
	mov r5, #0
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r9, r8, lsl #2
	ldr r0, _0212032C ; =0x02099F38
	str r5, [sp]
	add r1, r1, #0x1000
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x39c]
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0211401c
	mov r1, r5
	mov r2, r8
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	add r0, r4, #0x3a
	mov r3, r5
	bl  FUN_ov16_0210e720
	mov r2, r8
	add r0, r4, #0x3e
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02120328: .word 0x02099EB4
_0212032C: .word 0x02099F38
	arm_func_end FUN_ov56_02120274

	arm_func_start FUN_ov56_02120330
FUN_ov56_02120330: ; 0x02120330
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r3, _02120388 ; =0x02120EE4
	ldr r2, _0212038C ; =0x02120ECC
	ldr r5, [r3]
	ldr r4, [r3, #4]
	ldr r12, [r2]
	ldr r2, [r2, #4]
	mov r6, r1
	mov r1, #3
	add lr, sp, #0xc
	add r3, sp, #4
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r2, [sp, #8]
	str r12, [sp, #4]
	ldr r2, [lr, r6, lsl #2]
	ldr r3, [r3, r6, lsl #2]
	str r1, [sp]
	bl FUN_ov56_02120274
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02120388: .word 0x02120EE4
_0212038C: .word 0x02120ECC
	arm_func_end FUN_ov56_02120330

	arm_func_start FUN_ov56_02120390
FUN_ov56_02120390: ; 0x02120390
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	mov r1, #0xb4
	mul r3, r10, r1
	add r2, r0, #0x1000
	ldr r0, _0212042C ; =0x02099EB4
	mov r1, #0x22
	ldr r0, [r0]
	ldr r8, [r2, #0x3e4]
	rsb r9, r3, #0xc4
	mov r11, #1
	mov r7, #0
	mov r6, #0x10
	bl  FUN_ov16_0210e7d0
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r7, lsl #0x10
	ldr r4, _02120430 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, r5
	mov r1, r7
	mov r2, r9
	mov r3, #0x32
	str r6, [sp]
	bl  FUN_ov16_0210e674
	str r10, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212042C: .word 0x02099EB4
_02120430: .word 0x02099F38
	arm_func_end FUN_ov56_02120390

	arm_func_start FUN_ov56_02120434
FUN_ov56_02120434: ; 0x02120434
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0212056C ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0x24
	b _02120494
_0212046C:
	mla r0, r4, r1, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0x514]
	cmp r0, #0
	addeq r0, r6, r4, lsl #3
	addeq r0, r0, #0x1000
	ldreq r0, [r0, #0x5d0]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_02120494:
	cmp r4, #6
	blt _0212046C
	ldr r4, _02120570 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02120558
_021204C0: ; jump table
	b _02120558 ; case 0
	b _021204D8 ; case 1
	b _02120508 ; case 2
	b _02120520 ; case 3
	b _0212053C ; case 4
	b _021204F0 ; case 5
_021204D8:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov56_02120574
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021204F0:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov56_0212067c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120508:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov56_02120680
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120520:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov56_02120774
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212053C:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_ov56_02120774
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120558:
	ldr r1, [r6, #0x10]
	mov r0, r6
	mov r2, #0
	bl FUN_ov56_02120810
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212056C: .word 0x02099ED4
_02120570: .word 0x02099EB4
	arm_func_end FUN_ov56_02120434

	arm_func_start FUN_ov56_02120574
FUN_ov56_02120574: ; 0x02120574
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #0x10]
	mov r2, #0x24
	mla r2, r3, r2, r4
	add r2, r2, #0x1000
	ldr r12, [r2, #0x4f8]
	add r3, r4, #0x1000
	str r1, [r3, #0x60c]
	cmp r1, #0xa
	sub r2, r1, #0xa
	sub r5, r1, #0x10
	sub lr, r1, #0x18
	ldr r3, [r3, #0x4f8]
	blt _021205E8
	cmp r1, #0xf
	bgt _021205E8
	cmp r2, r3
	bne _021205C8
	bl FUN_ov56_0211f370
	ldmfd sp!, {r3, r4, r5, pc}
_021205C8:
	mov r5, #0
	mov r1, r5
	bl FUN_ov56_0211e6b8
	mov r0, r4
	mov r1, r5
	mov r2, #1
	bl FUN_ov56_02120810
	ldmfd sp!, {r3, r4, r5, pc}
_021205E8:
	cmp r1, #0x10
	blt _02120630
	cmp r1, #0x17
	bgt _02120630
	cmp r5, r12
	bne _0212060C
	mov r0, r4
	bl FUN_ov56_0211f370
	ldmfd sp!, {r3, r4, r5, pc}
_0212060C:
	ldr r1, [r4, #0x10]
	mov r0, r4
	mov r2, r5
	bl FUN_ov56_0211e6b8
	ldr r1, [r4, #0x10]
	mov r0, r4
	mov r2, #1
	bl FUN_ov56_02120810
	ldmfd sp!, {r3, r4, r5, pc}
_02120630:
	cmp r1, #0x18
	blt _02120668
	cmp r1, #0x1b
	bgt _02120668
	mov r5, #1
	mov r0, r4
	mov r1, r5
	mov r2, lr
	bl FUN_ov56_0211e6b8
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl FUN_ov56_02120810
	ldmfd sp!, {r3, r4, r5, pc}
_02120668:
	cmp r1, #0x23
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov56_0211f370
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov56_02120574

	arm_func_start FUN_ov56_0212067c
FUN_ov56_0212067c: ; 0x0212067C
	bx lr
	arm_func_end FUN_ov56_0212067c

	arm_func_start FUN_ov56_02120680
FUN_ov56_02120680: ; 0x02120680
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x20
	bgt _021206E4
	bge _02120738
	cmp r4, #0x1c
	bgt _021206D8
	bge _02120750
	cmp r4, #9
	addls pc, pc, r4, lsl #2
	b _02120758
_021206B0: ; jump table
	b _02120758 ; case 0
	b _02120738 ; case 1
	b _02120744 ; case 2
	b _02120708 ; case 3
	b _02120720 ; case 4
	b _02120714 ; case 5
	b _02120758 ; case 6
	b _02120758 ; case 7
	b _02120728 ; case 8
	b _02120730 ; case 9
_021206D8:
	cmp r4, #0x1d
	beq _02120750
	b _02120758
_021206E4:
	cmp r4, #0x22
	bgt _021206FC
	bge _02120718
	cmp r4, #0x21
	beq _02120744
	b _02120758
_021206FC:
	cmp r4, #0x23
	beq _02120710
	b _02120758
_02120708:
	bl FUN_ov56_0211f370
	b _02120758
_02120710:
	b _02120708
_02120714:
	b _02120754
_02120718:
	bl FUN_ov56_0211f7d0
	b _02120758
_02120720:
	bl FUN_ov56_0211f820
	b _02120758
_02120728:
	bl FUN_ov56_0211f878
	b _02120758
_02120730:
	bl FUN_ov56_0211f994
	b _02120758
_02120738:
	mov r0, r5
	bl FUN_ov56_0211faac
	b _02120758
_02120744:
	mov r0, r5
	bl FUN_ov56_0211fcd8
	b _02120758
_02120750:
	mov r0, r5
_02120754:
	bl FUN_ov56_0211f61c
_02120758:
	cmp r4, #0x18
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r4, #0x1b
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov56_0211f370
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov56_02120680

	arm_func_start FUN_ov56_02120774
FUN_ov56_02120774: ; 0x02120774
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r4, _0212080C ; =0x02099EB4
	mov r9, r0
	ldr r0, [r4]
	mov r8, r1
	mov r6, #0
	add r1, sp, #4
	mov r7, r2
	str r6, [sp, #8]
	bl  FUN_ov16_0210f48c
	mov r5, #1
	str r5, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r4]
	add r3, sp, #8
	bl  FUN_ov16_0210ecb8
	cmp r7, #0
	bne _021207FC
	cmp r8, #0x1c
	cmpne r8, #0x1d
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #8]
	ldr r1, [r9, #0x10]
	cmp r0, #0
	movne r6, r5
	ldr r3, [sp, #8]
	mov r0, r9
	mov r2, r6
	bl FUN_ov56_021208c4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021207FC:
	add r0, r9, #0x1000
	str r6, [r0, #0x60c]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0212080C: .word 0x02099EB4
	arm_func_end FUN_ov56_02120774

	arm_func_start FUN_ov56_02120810
FUN_ov56_02120810: ; 0x02120810
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	mov r1, #0x24
	mla r1, r4, r1, r0
	add r3, r1, #0x1000
	add r1, r0, #0x1000
	ldr lr, [r1, #0x3c0]
	ldr r12, [r3, #0x508]
	ldr r0, [r1, #0x3b8]
	ldr r5, [r1, #0x3bc]
	ldr r1, [r3, #0x504]
	mov r12, r12, lsl #0x10
	mov r3, r1, lsl #0x10
	mov r12, r12, asr #0x10
	str r12, [sp]
	str r5, [sp, #8]
	ldr r1, _021208C0 ; =0x02099F38
	str r0, [sp, #4]
	add r12, sp, #4
	str lr, [sp, #0xc]
	str lr, [sp, #0x10]
	str lr, [sp, #0x14]
	str lr, [sp, #0x18]
	ldr r0, [r1]
	ldr r1, [r12, r4, lsl #2]
	mov r5, #3
	mov r6, r2
	mov r2, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add r1, sp, #4
	mov r2, #1
	cmp r6, #0
	moveq r2, #0
	str r2, [sp]
	ldr r0, _021208C0 ; =0x02099F38
	ldr r1, [r1, r4, lsl #2]
	ldr r0, [r0]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021208C0: .word 0x02099F38
	arm_func_end FUN_ov56_02120810

	arm_func_start FUN_ov56_021208c4
FUN_ov56_021208c4: ; 0x021208C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x4c
	add r8, r0, #0x1000
	ldr r0, [r8, #0x3bc]
	ldr r10, _02120994 ; =0x02120F68
	ldr r12, [r8, #0x3c0]
	ldr lr, [r8, #0x3b8]
	movs r4, r2
	mov r7, r1
	mov r6, r3
	str r0, [sp, #0x38]
	ldmia r10!, {r0, r1, r2, r3}
	add r5, sp, #0x1c
	str lr, [sp, #0x34]
	mov lr, r5
	stmia r5!, {r0, r1, r2, r3}
	ldmia r10, {r0, r1}
	stmia r5, {r0, r1}
	ldr r10, _02120998 ; =0x02120F80
	add r9, sp, #4
	str r12, [sp, #0x3c]
	str r12, [sp, #0x40]
	str r12, [sp, #0x44]
	str r12, [sp, #0x48]
	mov r12, r9
	ldmia r10!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	ldmia r10, {r0, r1}
	mov r4, #3
	mov r5, #0
	stmia r9, {r0, r1}
	beq _0212096C
	ldrh r0, [r6, #8]
	ldr r1, [r8, #0x60c]
	cmp r1, r0
	bne _0212096C
	ldr r0, [lr, r7, lsl #2]
	cmp r1, r0
	blt _0212096C
	ldr r0, [r12, r7, lsl #2]
	cmp r1, r0
	movle r5, #1
_0212096C:
	ldr r0, _0212099C ; =0x02099F38
	add r1, sp, #0x34
	str r5, [sp]
	ldr r0, [r0]
	ldr r1, [r1, r7, lsl #2]
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02120994: .word 0x02120F68
_02120998: .word 0x02120F80
_0212099C: .word 0x02099F38
	arm_func_end FUN_ov56_021208c4

	arm_func_start FUN_ov56_021209a0
FUN_ov56_021209a0: ; 0x021209A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x3e8]
	cmp r0, #0
	bne _021209D8
	ldr r0, _02120BCC ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r1, r5, #0x1000
	str r0, [r1, #0x3e8]
_021209D8:
	add r0, r5, #0x1000
	ldr r6, _02120BCC ; =0x02099F38
	ldr r4, [r0, #0x3e8]
	mov r10, #1
	mov r9, #2
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	mov r3, r9
	bl  FUN_ov16_02113f7c
	add r0, r5, #0x1000
	ldr r3, [r0, #0x394]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r8, #0
	str r8, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	mov r3, r8
	bl  FUN_ov16_0211401c
	mov r0, #0x38
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	mov r3, #8
	bl  FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r4
	mov r2, r10
	mov r7, #0x140
	mov r3, r7
	bl  FUN_ov16_021139bc
	mov r2, r10
	ldr r0, [r6]
	mov r1, r4
	mov r3, r9
	bl  FUN_ov16_02113f7c
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	add r3, r5, #0x1000
	ldr r3, [r3, #0x398]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	mov r3, r8
	bl  FUN_ov16_0211401c
	sub r3, r7, #0xa
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	bl  FUN_ov16_021139bc
	mov r3, #0x68
	str r3, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	bl  FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	mov r3, r9
	bl  FUN_ov16_02113f7c
	add r0, r5, #0x1000
	ldr r0, [r0, #0x614]
	cmp r0, #0
	bne _02120B34
	ldr r0, [r6]
	mov r1, #5
	mov r2, #4
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, r5, #0x1000
	str r1, [r0, #0x614]
	ldr r0, [r6]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
_02120B34:
	mov r0, #0x46
	ldr r8, _02120BCC ; =0x02099F38
	str r0, [sp]
	mov r7, #3
	mov r6, #0
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_02113b78
	add r0, r5, #0x1000
	ldr r3, [r0, #0x614]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x32
	str r0, [sp]
	mov r5, #0x100
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	mov r3, r5
	bl  FUN_ov16_02113d08
	str r6, [sp]
	mov r3, r6
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_02113d88
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	add r3, r5, #0x36
	bl  FUN_ov16_021139bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02120BCC: .word 0x02099F38
	arm_func_end FUN_ov56_021209a0

	arm_func_start FUN_ov56_02120bd0
FUN_ov56_02120bd0: ; 0x02120BD0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r8, #2
	mov r7, #0
	str r8, [sp]
	str r7, [sp, #4]
	mov r6, #1
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	mov r9, r0
	str r7, [sp, #0x10]
	ldr r4, _02120C6C ; =0x02099ED4
	ldrb r1, [r9, #0x11]
	ldrh r3, [r9, #0x34]
	ldr r0, [r4]
	mov r2, r7
	bl  FUN_ov16_0210e4f0
	mov r5, #4
	ldrb r1, [r9, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210e5f0
	str r8, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r2, r7
	ldr r0, [r4]
	ldrb r1, [r9, #0x11]
	ldrh r3, [r9, #0x34]
	bl  FUN_ov16_0210e4f0
	ldr r0, [r4]
	mov r2, r5
	ldrb r1, [r9, #0x11]
	bl  FUN_ov16_0210e5f0
	strb r6, [r9, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02120C6C: .word 0x02099ED4
	arm_func_end FUN_ov56_02120bd0

	arm_func_start FUN_ov56_02120c70
FUN_ov56_02120c70: ; 0x02120C70
	mov r1, #0
	strb r1, [r0, #0xe]
	ldr r3, _02120C94 ; =0x02099F38
	ldrh r1, [r0, #0x34]
	mov r2, #2
	ldr r0, [r3]
	ldr r12, _02120C98 ; = FUN_ov16_02113f7c
	mov r3, r2
	bx r12
_02120C94: .word 0x02099F38
_02120C98: .word  FUN_ov16_02113f7c
	arm_func_end FUN_ov56_02120c70

	arm_func_start FUN_ov56_02120c9c
FUN_ov56_02120c9c: ; 0x02120C9C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x9c
	mov r9, #0
	str r9, [sp, #0x18]
	str r9, [sp]
	mov r1, #0x100
	str r1, [sp, #4]
	mov r1, #0xc0
	mov r8, #0x1e
	str r1, [sp, #8]
	mov r1, #0x258
	ldr r5, _02120E34 ; =0x02099EB4
	str r1, [sp, #0xc]
	mov r4, r0
	ldr r0, [r5]
	mov r1, r8
	mov r3, r9
	mov r2, #0x24
	bl  FUN_ov16_0210fba4
	mov r7, #1
	mov r6, #2
	ldr r0, _02120E38 ; =0x02099F38
	str r7, [sp]
	add r1, r4, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x3e8]
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_02113ec0
	str r6, [sp]
	mov r1, r8
	mov r0, #0x26c
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r2, #0x23
	add r3, r4, #0x1000
	ldr r3, [r3, #0x3e8]
	bl  FUN_ov16_0210fc74
	mov r5, r0
	mov r1, #0x18
	str r1, [sp]
	mov r1, #0x68
	mov r2, r1
	mov r3, #0x30
	bl  FUN_ov16_0210e674
	cmp r5, #0
	beq _02120D74
	strb r7, [r5, #0x11]
	str r9, [r5, #0x1c]
	ldr r1, _02120E3C ; =FUN_ov56_02120bd0
	str r9, [r5, #0x24]
	ldr r0, _02120E40 ; =FUN_ov56_02120c70
	str r1, [r5, #0x28]
	str r0, [r5, #0x20]
_02120D74:
	add r7, sp, #0x1c
	ldr r1, _02120E44 ; =0x021214B8
	mov r0, r7
	mov r8, #0
	bl FUN_02023c40
	mov r6, #1
	ldr r5, _02120E38 ; =0x02099F38
	str r6, [sp]
	add r1, r4, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x3e8]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, _02120E48 ; =0x02099F50
	mov r1, r6
	ldr r0, [r0]
	mov r2, #4
	bl FUN_02043310
	add r0, r4, #0x1000
	ldr r1, [r0, #0x614]
	ldr r0, [r5]
	add r2, sp, #0x14
	add r3, sp, #0x18
	str r8, [sp, #0x14]
	bl FUN_0205935c
	add r1, r4, #0x1000
	ldr r0, [r5]
	ldr r5, [sp, #0x14]
	ldr r1, [r1, #0x614]
	bl  FUN_ov16_02111458
	cmp r5, #0
	beq _02120E20
	stmia sp, {r6, r8}
	str r8, [sp, #8]
	str r8, [sp, #0xc]
	str r6, [sp, #0x10]
	add r0, r4, #0x1000
	ldr r1, [r0, #0x614]
	mov r0, r7
	mov r2, r6
	mov r3, #9
	bl  FUN_ov16_020f2304
_02120E20:
	ldr r0, _02120E48 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02120E34: .word 0x02099EB4
_02120E38: .word 0x02099F38
_02120E3C: .word FUN_ov56_02120bd0
_02120E40: .word FUN_ov56_02120c70
_02120E44: .word 0x021214B8
_02120E48: .word 0x02099F50
	arm_func_end FUN_ov56_02120c9c

	arm_func_start FUN_ov56_02120e4c
FUN_ov56_02120e4c: ; 0x02120E4C
	stmfd sp!, {r3, lr}
	ldr r2, _02120E7C ; =0x02099F38
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x3e8]
	mov r2, #2
	bl  FUN_ov16_02113390
	ldr r0, _02120E80 ; =0x02099EB4
	mov r1, #0x1e
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r3, pc}
_02120E7C: .word 0x02099F38
_02120E80: .word 0x02099EB4
	arm_func_end FUN_ov56_02120e4c

	arm_func_start FUN_ov56_02120e84
FUN_ov56_02120e84: ; 0x02120E84
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov56_02120e84

	arm_func_start FUN_ov56_02120e98
FUN_ov56_02120e98: ; 0x02120E98
	bx lr
	arm_func_end FUN_ov56_02120e98
_02120E9C:
	.byte 0x04, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00
	.byte 0x5B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
	.byte 0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x99, 0x08, 0x00, 0x00, 0x9A, 0x08, 0x00, 0x00
	.byte 0xFD, 0x08, 0x00, 0x00, 0x60, 0x09, 0x00, 0x00, 0x61, 0x09, 0x00, 0x00, 0x62, 0x09, 0x00, 0x00
	.byte 0x63, 0x09, 0x00, 0x00, 0x64, 0x09, 0x00, 0x00, 0x65, 0x09, 0x00, 0x00, 0x66, 0x09, 0x00, 0x00
	.byte 0x67, 0x09, 0x00, 0x00, 0xC5, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x82, 0xBB, 0x82, 0xA4, 0x82, 0xD1, 0x82, 0xF0
	.byte 0x82, 0xCD, 0x82, 0xB8, 0x82, 0xB7, 0x00, 0x00, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB6, 0x82, 0xE3
	.byte 0x82, 0xC2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0xD0, 0x82, 0xC1, 0x82, 0xB3, 0x82, 0xC2
	.byte 0x82, 0xED, 0x82, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x83, 0x41, 0x83, 0x43, 0x83, 0x65, 0x83, 0x80
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x12, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x12, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x28, 0x12, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x48, 0x12, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x58, 0x12, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0xF8, 0x12, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0x68, 0x12, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x78, 0x12, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00, 0x88, 0x12, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x98, 0x12, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0xA8, 0x12, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0xB8, 0x12, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0xC8, 0x12, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0xD8, 0x12, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00, 0xE8, 0x12, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x08, 0x13, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x18, 0x13, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x38, 0x12, 0x12, 0x02, 0x11, 0x00, 0x00, 0x00, 0x98, 0x11, 0x12, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0xA8, 0x11, 0x12, 0x02, 0x13, 0x00, 0x00, 0x00, 0xB8, 0x11, 0x12, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0xF8, 0x11, 0x12, 0x02, 0x15, 0x00, 0x00, 0x00, 0xC8, 0x11, 0x12, 0x02, 0x16, 0x00, 0x00, 0x00
	.byte 0xD8, 0x11, 0x12, 0x02, 0x18, 0x00, 0x00, 0x00, 0xE8, 0x11, 0x12, 0x02, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov56_02121108
FUN_ov56_02121108: ; 0x02121108
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02121150 ; =0x02121180
	str r0, [r4, #0x14]
	ldr r0, _02121154 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _02121158 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02121150: .word 0x02121180
_02121154: .word 0x00009CCD
_02121158: .word 0x0000EA3C
	arm_func_end FUN_ov56_02121108

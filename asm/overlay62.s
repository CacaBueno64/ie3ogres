
	arm_func_start FUN_ov62_02119f00
FUN_ov62_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F30 ; =0x02120F54
	add r1, r4, #0x50
	bl FUN_020F3054
	ldr r0, _02119F34 ; =0x02120F6C
	add r1, r4, #0x44
	bl FUN_020F3054
	ldr r0, _02119F38 ; =0x02120F84
	add r1, r4, #0x38
	bl FUN_020F3054
	ldmfd sp!, {r4, pc}
_02119F30: .word 0x02120F54
_02119F34: .word 0x02120F6C
_02119F38: .word 0x02120F84
	arm_func_end FUN_ov62_02119f00

	arm_func_start FUN_ov62_02119f3c
FUN_ov62_02119f3c: ; 0x02119F3C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x114
	mov r4, r0
	add r2, sp, #0x44
	mov r1, #8
	mov r0, #0
_02119F54:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _02119F54
	add r2, sp, #0x24
	mov r1, #8
	mov r0, #0
_02119F7C:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _02119F7C
	add r2, sp, #4
	mov r1, #8
	mov r0, #0
_02119FA4:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _02119FA4
	ldr r5, _0211A060 ; =0x020A1640
	ldr r1, _0211A064 ; =0x02120F9C
	ldrb r2, [r5, #0x1ad]
	add r0, sp, #0x44
	add r2, r2, #1
	bl FUN_02023c40
	ldrb r2, [r5, #0x1ad]
	ldr r1, _0211A068 ; =0x02120FB0
	add r0, sp, #0x24
	add r2, r2, #1
	bl FUN_02023c40
	ldrb r2, [r5, #0x1ad]
	ldr r1, _0211A06C ; =0x02120FC4
	add r0, sp, #4
	bl FUN_02023c40
	ldr lr, _0211A070 ; =0x02120C50
	add r12, sp, #0x64
	mov r5, #0xb
_0211A008:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211A008
	add r2, sp, #0x44
	add r1, sp, #0x24
	add r0, sp, #4
	str r2, [sp, #0x64]
	str r0, [sp, #0xdc]
	str r1, [sp, #0x6c]
	mov r5, #0
	str r5, [sp]
	ldr r1, [r4, #0x38]
	ldr r0, _0211A074 ; =0x02120FD4
	add r2, sp, #0x64
	add r3, r4, #0x5c
	bl FUN_020F5450
	mov r0, r4
	mov r1, r5
	bl FUN_ov62_0211a0dc
	add sp, sp, #0x114
	ldmfd sp!, {r4, r5, pc}
_0211A060: .word 0x020A1640
_0211A064: .word 0x02120F9C
_0211A068: .word 0x02120FB0
_0211A06C: .word 0x02120FC4
_0211A070: .word 0x02120C50
_0211A074: .word 0x02120FD4
	arm_func_end FUN_ov62_02119f3c

	arm_func_start FUN_ov62_0211a078
FUN_ov62_0211a078: ; 0x0211A078
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A0D8 ; =0x02099F38
	b _0211A0CC
_0211A090:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x5c]
	cmp r1, #0
	beq _0211A0C8
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A0C8
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x5c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A0C8:
	add r6, r6, #1
_0211A0CC:
	cmp r6, #0x1a
	blt _0211A090
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A0D8: .word 0x02099F38
	arm_func_end FUN_ov62_0211a078

	arm_func_start FUN_ov62_0211a0dc
FUN_ov62_0211a0dc: ; 0x0211A0DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211A0F0
	cmp r4, #3
	blt _0211A144
_0211A0F0:
	mov r4, #0
	add r9, r0, #0x38
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211A104:
	mul r8, r4, r5
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl FUN_020F338C
	mov r0, r10
	bl FUN_020F33FC
	str r6, [r9, r8]
	str r6, [r10, #4]
	strb r6, [r10, #8]
	strb r6, [r10, #9]
	add r4, r4, #1
	strb r6, [r10, #0xa]
	cmp r4, #3
	blt _0211A104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A144:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0x38
	add r6, r4, r5
	mov r0, r6
	mov r1, #1
	bl FUN_020F338C
	mov r0, r6
	bl FUN_020F33FC
	mov r0, #0
	str r0, [r4, r5]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov62_0211a0dc

	arm_func_start FUN_ov62_0211a184
FUN_ov62_0211a184: ; 0x0211A184
	stmfd sp!, {r4, r5, r6, lr}
	mvn r5, #0
	mov r4, r0
	mov r1, r5
	bl FUN_ov62_0211a0dc
	add r0, r4, #0x108
	mov r1, r5
	add r0, r0, #0x400
	bl FUN_020F57B0
	ldr r1, [r4, #0xec]
	cmp r1, #0
	beq _0211A1C0
	ldr r0, _0211A224 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211A1C0:
	mov r6, #0
	ldr r5, _0211A224 ; =0x02099F38
	b _0211A1E8
_0211A1CC:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	beq _0211A1E4
	ldr r0, [r5]
	bl FUN_021128C4
_0211A1E4:
	add r6, r6, #1
_0211A1E8:
	cmp r6, #0xa
	blt _0211A1CC
	mov r6, #0
	ldr r5, _0211A224 ; =0x02099F38
	b _0211A218
_0211A1FC:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x5c]
	cmp r1, #0
	beq _0211A214
	ldr r0, [r5]
	bl FUN_02058ee0
_0211A214:
	add r6, r6, #1
_0211A218:
	cmp r6, #0x1a
	blt _0211A1FC
	ldmfd sp!, {r4, r5, r6, pc}
_0211A224: .word 0x02099F38
	arm_func_end FUN_ov62_0211a184

	arm_func_start FUN_ov62_0211a228
FUN_ov62_0211a228: ; 0x0211A228
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r8, r0
	add r0, r8, #0x38
	mov r1, #3
	mov r6, #0
	bl FUN_020F330C
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r7, r6
	ldr r4, _0211A2EC ; =0x02099F38
	b _0211A28C
_0211A260:
	add r0, r8, r7, lsl #2
	ldr r1, [r0, #0x5c]
	cmp r1, #0
	beq _0211A288
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A288:
	add r7, r7, #1
_0211A28C:
	cmp r7, #0x1a
	blt _0211A260
	mov r7, #0
	mov r5, #1
	ldr r4, _0211A2F0 ; =0x02120FEC
	mov r9, #0x2c
	b _0211A2D8
_0211A2A8:
	mla r0, r7, r9, r8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	add r0, r0, #0x500
	ldrh r2, [r0, #0x72]
	ldr r0, [r8, #0x44]
	mov r1, r4
	add r3, r8, #0x810
	bl FUN_020F55B4
	add r7, r7, #1
_0211A2D8:
	cmp r7, #0x10
	blt _0211A2A8
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A2EC: .word 0x02099F38
_0211A2F0: .word 0x02120FEC
	arm_func_end FUN_ov62_0211a228

	arm_func_start FUN_ov62_0211a2f4
FUN_ov62_0211a2f4: ; 0x0211A2F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov62_0211c844
	ldr r1, [r4, #0x14]
	cmp r1, #0
	movne r2, #1
	movne r1, #2
	strne r1, [r4, #0x20]
	strneh r2, [r4, #0x24]
	cmp r0, #0
	ldrneh r0, [r0]
	mov r1, #0
	moveq r0, #0
	strh r0, [r4, #0x28]
	mov r0, r4
	str r1, [r4, #0x2c]
	str r1, [r4, #0x30]
	bl FUN_ov62_0211cc44
	cmp r0, #5
	bne _0211A35C
	ldr r2, [r4, #0x8d8]
	ldr r1, [r4, #0x8fc]
	mov r0, #1
	add r1, r2, r1
	str r1, [r4, #0x2c]
	str r0, [r4, #0x30]
_0211A35C:
	ldr r0, [r4, #4]
	add r1, r4, #0x20
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, #0
	str r0, [r4, #0x34]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov62_0211a2f4

	arm_func_start FUN_ov62_0211a37c
FUN_ov62_0211a37c: ; 0x0211A37C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _0211A3DC ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r4]
	mov r6, r1
	mov r5, r2
	bl FUN_021137DC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r6
	mov r2, r5
	bl FUN_0211401C
	ldr r1, [sp, #0x1c]
	ldr r0, [r4]
	mov r3, r1, lsl #0x10
	mov r1, r6
	mov r2, r5
	mov r3, r3, lsr #0x10
	bl FUN_021139BC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A3DC: .word 0x02099F38
	arm_func_end FUN_ov62_0211a37c

	arm_func_start FUN_ov62_0211a3e0
FUN_ov62_0211a3e0: ; 0x0211A3E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, [r7, #0xc4]
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211A45C ; =0x02099F38
	mov r6, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r6
	bl FUN_02112724
	mov r5, r0
	str r5, [r7, #0xc4]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x12c
	str r0, [sp, #4]
	ldr r3, [r7, #0x5c]
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov62_0211a37c
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	mov r2, #2
	bl FUN_021142FC
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A45C: .word 0x02099F38
	arm_func_end FUN_ov62_0211a3e0

	arm_func_start FUN_ov62_0211a460
FUN_ov62_0211a460: ; 0x0211A460
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0xc8]
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _0211A51C ; =0x02099F38
	mov r8, #1
	ldr r0, [r5]
	mov r2, r8
	mov r1, #0xa
	bl FUN_02112724
	mov r7, r0
	str r7, [r4, #0xc8]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x96
	str r0, [sp, #4]
	ldr r3, [r4, #0x7c]
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl FUN_ov62_0211a37c
	mov r6, #2
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl FUN_ov62_0211b02c
	mov r0, r4
	mov r1, r7
	mov r2, #4
	mov r3, #7
	bl FUN_ov62_0211b02c
	mov r2, r6
	ldr r0, [r5]
	mov r1, r7
	mov r3, r8
	bl FUN_021142FC
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, #0x98
	bl FUN_02114248
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A51C: .word 0x02099F38
	arm_func_end FUN_ov62_0211a460

	arm_func_start FUN_ov62_0211a520
FUN_ov62_0211a520: ; 0x0211A520
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x138
	mov r10, r0
	ldr r0, [r10, #0xcc]
	mov r7, #1
	cmp r0, #0
	bne _0211A580
	ldr r4, _0211A92C ; =0x02099F38
	mov r5, #4
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl FUN_02112724
	str r0, [r10, #0xcc]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	bl FUN_02059630
	mov r1, r0
	str r1, [r10, #0xec]
	mov r2, #0
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
_0211A580:
	ldr r8, [r10, #0xcc]
	cmp r8, #0
	addeq sp, sp, #0x138
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211A92C ; =0x02099F38
	ldr r3, [r10, #0x64]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_021137DC
	mov r9, #0
	str r9, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, r9
	bl FUN_0211401C
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, #0x96
	bl FUN_021139BC
	mov r0, #0x98
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, r7
	bl FUN_02113B78
	ldr r3, [r10, #0xec]
	ldr r0, [r4]
	mov r1, r8
	mov r2, #2
	and r3, r3, #0xff
	bl FUN_021137DC
	str r9, [sp]
	mov r6, #0x18
	ldr r0, [r4]
	mov r1, r8
	mov r2, #2
	mov r3, r6
	bl FUN_02113D88
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, #2
	mov r3, #0x68
	bl FUN_02113D08
	ldr r0, [r4]
	mov r1, r8
	mov r2, #2
	mov r3, #0x8c
	bl FUN_021139BC
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, #2
	mov r3, r6
	bl FUN_02113B78
	str r7, [sp]
	mov r2, #2
	ldr r0, [r4]
	mov r1, r8
	mov r3, r2
	bl FUN_02113EC0
	ldr r3, [r10, #0xec]
	mov r11, #3
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	and r3, r3, #0xff
	bl FUN_021137DC
	mov r5, #8
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	mov r3, r9
	bl FUN_02113D88
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r6
	mov r1, r8
	mov r2, r11
	bl FUN_02113D08
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	mov r3, #0xdc
	bl FUN_02113B78
	str r7, [sp]
	ldr r0, [r4]
	mov r2, r11
	mov r3, #2
	mov r1, r8
	bl FUN_02113EC0
	ldr r3, [r10, #0xac]
	mov r5, #4
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_021137DC
	str r9, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r9
	bl FUN_0211401C
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, #0x95
	bl FUN_021139BC
	str r9, [sp]
	ldr r0, [r4]
	mov r2, r5
	mov r1, r8
	mov r3, r9
	bl FUN_02113B78
	add r1, sp, #0x2c
	add r5, sp, #0x2c
	add r2, sp, #0x20
	mov r0, r9
	b _0211A78C
_0211A784:
	str r0, [r1, r9, lsl #2]
	add r9, r9, #1
_0211A78C:
	cmp r9, #3
	blo _0211A784
	mov r1, #0
	b _0211A7A4
_0211A79C:
	str r0, [r2, r1, lsl #2]
	add r1, r1, #1
_0211A7A4:
	cmp r1, #3
	blo _0211A79C
	ldr r0, _0211A930 ; =0x02121004
	add r1, sp, #0x14
	mov r6, #0
	bl FUN_020F3054
	ldr r1, [sp, #0x14]
	mov r0, r5
	bl FUN_ov62_02120ae8
	mov r7, r6
	mov r4, #0xd
	mvn r9, #0
	b _0211A7F8
_0211A7D8:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov62_02120bec
	cmp r0, r9
	beq _0211A804
	add r6, r0, #2
	add r7, r7, #1
_0211A7F8:
	ldr r0, [r10, #0x18]
	cmp r7, r0
	blt _0211A7D8
_0211A804:
	add r0, sp, #0x2c
	mov r2, r6
	mov r1, #0xd
	add r5, sp, #0x20
	mov r4, #0
	bl FUN_ov62_02120bec
	ldr r1, [r10, #0xec]
	mov r7, r0
	cmp r1, #0
	beq _0211A8E0
	ldrb r0, [r10, #0x1c]
	ldr r1, _0211A934 ; =0x02121020
	cmp r0, #0
	ldrne r1, _0211A938 ; =0x02121028
	mov r0, r5
	bl FUN_ov62_02120ae8
	add r1, sp, #0x2c
	mov r0, r5
	mov r2, r6
	sub r3, r7, r6
	bl FUN_ov62_02120aa8
	add r1, sp, #0x38
	mov r0, #0x40
_0211A860:
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	strb r4, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211A860
	ldr r0, [r5]
	mov r3, r4
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldreqb r0, [r5]
	moveq r0, r0, lsl #0x18
	moveq r2, r0, lsr #0x19
	ldrne r2, [r5, #4]
	add r5, sp, #0x38
	add r0, sp, #0x20
	mov r1, r5
	bl FUN_ov62_02120b64
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r2, #1
	ldr r1, [r10, #0xec]
	mov r0, r5
	mov r3, r2
	bl FUN_020F2304
_0211A8E0:
	ldr r4, _0211A92C ; =0x02099F38
	mov r1, r8
	ldr r0, [r4]
	mov r2, #2
	mov r3, #1
	bl FUN_021142FC
	mov r2, #0
	ldr r0, [r4]
	mov r1, r8
	mov r3, r2
	bl FUN_02114248
	add r0, sp, #0x14
	bl FUN_020F33FC
	add r0, sp, #0x20
	bl FUN_0202895c
	add r0, sp, #0x2c
	bl FUN_0202895c
	add sp, sp, #0x138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A92C: .word 0x02099F38
_0211A930: .word 0x02121004
_0211A934: .word 0x02121020
_0211A938: .word 0x02121028
	arm_func_end FUN_ov62_0211a520

	arm_func_start FUN_ov62_0211a93c
FUN_ov62_0211a93c: ; 0x0211A93C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r7, r0
	mov r4, r2
	mov r6, r3
	bmi _0211A960
	cmp r5, #0xa
	blt _0211A96C
_0211A960:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A96C:
	cmp r4, #0x1a
	addhs sp, sp, #4
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, r5, lsl #2
	ldr r0, [r0, #0xc4]
	cmp r0, #0
	bne _0211A9A8
	ldr r0, _0211AB08 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02112724
	add r1, r7, r5, lsl #2
	str r0, [r1, #0xc4]
_0211A9A8:
	add r1, r7, r5, lsl #2
	add r0, r7, r4, lsl #2
	ldr r4, _0211AB08 ; =0x02099F38
	ldr r5, [r1, #0xc4]
	ldr r2, [r0, #0x5c]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl FUN_02112950
	ldrb r0, [sp, #0x34]
	cmp r0, #0
	beq _0211A9E8
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	bl FUN_02112AF0
_0211A9E8:
	ldr r7, _0211AB08 ; =0x02099F38
	mov r4, #0
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_0211346C
	ldr r0, [r7]
	mov r1, r5
	mov r2, #0x64
	bl FUN_02112B98
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r1, r1, lsl #0x10
	mov r2, r1, asr #0x10
	mov r1, r3, lsl #0x10
	mov r3, r1, asr #0x10
	ldr r0, [r7]
	mov r1, r5
	bl FUN_02114248
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	ldr r0, _0211AB0C ; =0x02099EB4
	str r1, [sp]
	mov r7, #1
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r5
	mov r1, r7
	mov r2, r2, lsr #0x10
	bl FUN_0210FBE8
	movs r8, r0
	beq _0211AAFC
	ldrb r0, [sp, #0x34]
	strb r7, [r8, #0x11]
	ldrh r5, [sp, #0x30]
	strb r0, [r8, #0x10]
	strb r7, [r8, #0xf]
	mov r1, r4
	mov r2, r7
	mov r3, r4
	add r0, r8, #0x3a
	strh r5, [r8, #0xc]
	bl FUN_0210E6FC
	mov r1, r4
	mov r2, r6
	mov r3, r4
	add r0, r8, #0x3a
	bl FUN_0210E720
	mov r1, r4
	mov r2, r7
	add r0, r8, #0x3e
	mov r3, r4
	bl FUN_0210E6FC
	add r0, r8, #0x3e
	mov r1, r4
	add r2, r6, #1
	mov r3, r4
	bl FUN_0210E720
	mov r2, r7
	add r0, r8, #0x42
	mov r1, r4
	mov r3, r4
	bl FUN_0210E6FC
	mov r2, r6
	add r0, r8, #0x42
	mov r1, r4
	mov r3, r4
	bl FUN_0210E720
_0211AAFC:
	mov r0, r8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AB08: .word 0x02099F38
_0211AB0C: .word 0x02099EB4
	arm_func_end FUN_ov62_0211a93c

	arm_func_start FUN_ov62_0211ab10
FUN_ov62_0211ab10: ; 0x0211AB10
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	mov r1, #0x98
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r3, #1
	mov r1, #4
	str r3, [sp, #8]
	mov r2, #0x1e
	str r2, [sp, #0xc]
	mov r2, r1
	str r3, [sp, #0x10]
	mov r3, #0
	str r3, [sp, #0x14]
	bl FUN_ov62_0211a93c
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov62_0211ab10

	arm_func_start FUN_ov62_0211ab58
FUN_ov62_0211ab58: ; 0x0211AB58
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r3, #2
	mov r1, #5
	str r3, [sp, #8]
	mov r2, #0x1e
	str r2, [sp, #0xc]
	mov r2, r1
	str r3, [sp, #0x10]
	mov r3, #0
	str r3, [sp, #0x14]
	bl FUN_ov62_0211a93c
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov62_0211ab58

	arm_func_start FUN_ov62_0211aba0
FUN_ov62_0211aba0: ; 0x0211ABA0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r9, #1
	mov r8, #0
	mov r1, r9
	mov r2, r8
	mov r10, r0
	bl FUN_ov62_0211c800
	movs r7, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r7]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	addge r0, r0, #6
	cmpge r0, r1
	ldrge r0, [r10, #0x500]
	cmpge r0, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x90
	str r0, [sp]
	ldr r0, [r7, #0x10]
	mov r5, #0xc
	add r0, r7, r0, lsl #2
	ldrsh r1, [r0, #0x7e]
	mov r0, #3
	mov r6, #0x1e
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, r10
	mov r2, r5
	mov r3, r8
	mov r1, #8
	str r8, [sp, #0x14]
	bl FUN_ov62_0211a93c
	mov r0, #0xb0
	str r0, [sp]
	ldr r0, [r7, #0x10]
	mov r4, #2
	add r0, r7, r0, lsl #2
	ldrsh r2, [r0, #0x7e]
	mov r1, #4
	mov r0, #0x10
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, r10
	mov r2, r5
	mov r3, r4
	mov r1, #9
	str r8, [sp, #0x14]
	bl FUN_ov62_0211a93c
	ldr r5, _0211ACB8 ; =0x02099F38
	ldr r1, [r10, #0xe4]
	ldr r0, [r5]
	mov r2, r4
	mov r3, r9
	bl FUN_021142FC
	ldr r0, [r5]
	ldr r1, [r10, #0xe8]
	mov r2, r4
	mov r3, r9
	bl FUN_021142FC
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211ACB8: .word 0x02099F38
	arm_func_end FUN_ov62_0211aba0

	arm_func_start FUN_ov62_0211acbc
FUN_ov62_0211acbc: ; 0x0211ACBC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211AD0C ; =0x02099EB4
	mov r6, r0
	ldr r0, [r4]
	mov r1, #3
	bl FUN_0210EAB4
	ldr r0, [r4]
	mov r1, #4
	bl FUN_0210EAB4
	ldr r4, _0211AD10 ; =0x02099F38
	mov r5, #2
	ldr r0, [r4]
	ldr r1, [r6, #0xe4]
	mov r2, r5
	bl FUN_02114370
	ldr r0, [r4]
	ldr r1, [r6, #0xe8]
	mov r2, r5
	bl FUN_02114370
	ldmfd sp!, {r4, r5, r6, pc}
_0211AD0C: .word 0x02099EB4
_0211AD10: .word 0x02099F38
	arm_func_end FUN_ov62_0211acbc

	arm_func_start FUN_ov62_0211ad14
FUN_ov62_0211ad14: ; 0x0211AD14
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0x10
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211AD78 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r0, [r5, #0x65]
	cmp r0, #0
	ldreq r0, [r4]
	streqb r0, [r5, #0x64]
	ldrb r0, [r5, #0x65]
	add r0, r0, #1
	strb r0, [r5, #0x65]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AD78: .word 0x02099F38
	arm_func_end FUN_ov62_0211ad14

	arm_func_start FUN_ov62_0211ad7c
FUN_ov62_0211ad7c: ; 0x0211AD7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0x10
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211ADE0 ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #1
	bl FUN_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r0, [r5, #0x6b]
	cmp r0, #0
	ldreq r0, [r4]
	streqb r0, [r5, #0x6a]
	ldrb r0, [r5, #0x6b]
	add r0, r0, #1
	strb r0, [r5, #0x6b]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211ADE0: .word 0x02099F38
	arm_func_end FUN_ov62_0211ad7c

	arm_func_start FUN_ov62_0211ade4
FUN_ov62_0211ade4: ; 0x0211ADE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0x10
	ldmgefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x76]
	mov r1, #5
	mov r2, #1
	cmp r0, #0
	ldr r0, _0211AE54 ; =0x02099F38
	addne r1, r1, #9
	ldr r0, [r0]
	bl FUN_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r0, [r5, #0x67]
	cmp r0, #0
	ldreq r0, [r4]
	streqb r0, [r5, #0x66]
	ldrb r0, [r5, #0x67]
	add r0, r0, #1
	strb r0, [r5, #0x67]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE54: .word 0x02099F38
	arm_func_end FUN_ov62_0211ade4

	arm_func_start FUN_ov62_0211ae58
FUN_ov62_0211ae58: ; 0x0211AE58
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r6, r2
	mov r5, #0
	mov r4, #1
	ldr r8, _0211AED4 ; =0x02099F38
	b _0211AEC8
_0211AE74:
	ldr r0, [r6]
	cmp r0, #0x10
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8]
	mov r1, r4
	mov r2, r4
	bl FUN_02112724
	ldr r1, [r6]
	add r5, r5, #1
	add r1, r7, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r0, [r7, #0x69]
	cmp r0, #0
	ldreq r0, [r6]
	streqb r0, [r7, #0x68]
	ldrb r0, [r7, #0x69]
	add r0, r0, #1
	strb r0, [r7, #0x69]
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
_0211AEC8:
	cmp r5, #5
	blt _0211AE74
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AED4: .word 0x02099F38
	arm_func_end FUN_ov62_0211ae58

	arm_func_start FUN_ov62_0211aed8
FUN_ov62_0211aed8: ; 0x0211AED8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r4, #0x64]
	ldr r0, [r4, #0x9c]
	ldr r5, _0211AF54 ; =0x02099F38
	add r1, r4, r1, lsl #2
	ldr r6, [r1, #0x20]
	mov r2, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldrsh r2, [r4, #0x78]
	ldrsh r3, [r4, #0x7a]
	ldr r0, [r5]
	mov r1, r6
	bl FUN_02114248
	ldr r2, [r4, #0x6c]
	ldr r0, [r5]
	mov r1, r6
	and r2, r2, #0xff
	bl FUN_02112950
	ldr r0, [r5]
	mov r1, r6
	mov r2, #0
	mov r3, r2
	bl FUN_0211346C
	ldmfd sp!, {r4, r5, r6, pc}
_0211AF54: .word 0x02099F38
	arm_func_end FUN_ov62_0211aed8

	arm_func_start FUN_ov62_0211af58
FUN_ov62_0211af58: ; 0x0211AF58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r1
	ldrb r1, [r6, #0x6b]
	mov r7, r0
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [r6, #0x6a]
	mov r4, #2
	ldr r8, _0211B028 ; =0x02099F38
	add r0, r6, r0, lsl #2
	ldr r5, [r0, #0x20]
	ldrb r3, [r6, #0x74]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r4
	bl FUN_021142FC
	ldrb r0, [r6, #0x74]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r6, #0x9c]
	ldr r0, [r8]
	sub r1, r1, #0x1e
	mov r2, r1, lsl #0x10
	mov r1, r5
	mov r2, r2, lsr #0x10
	sub r3, r4, #3
	bl FUN_02112C90
	ldr r3, [r7, #0x80]
	mov r7, #1
	ldr r0, [r8]
	mov r1, r5
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_021137DC
	mov r4, #0
	str r4, [sp]
	ldr r0, [r8]
	ldr r3, [r6, #0x70]
	mov r1, r5
	mov r2, r7
	bl FUN_0211401C
	sub r3, r4, #8
	mov r1, r5
	mov r2, r7
	str r3, [sp]
	ldr r0, [r8]
	bl FUN_02113B78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B028: .word 0x02099F38
	arm_func_end FUN_ov62_0211af58

	arm_func_start FUN_ov62_0211b02c
FUN_ov62_0211b02c: ; 0x0211B02C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
	mov r10, #2
	ldr r9, _0211B08C ; =0x02099F38
	b _0211B080
_0211B050:
	ldr r3, [r8, #0x74]
	ldr r0, [r9]
	mov r1, r7
	add r2, r6, r4
	and r3, r3, #0xff
	bl FUN_021137DC
	ldr r0, [r9]
	mov r1, r7
	mov r3, r10
	add r2, r6, r4
	bl FUN_02113F7C
	add r4, r4, #1
_0211B080:
	cmp r4, r5
	blt _0211B050
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B08C: .word 0x02099F38
	arm_func_end FUN_ov62_0211b02c

	arm_func_start FUN_ov62_0211b090
FUN_ov62_0211b090: ; 0x0211B090
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r9, r1
	ldrb r1, [r9, #0x67]
	mov r10, r0
	mov r8, r2
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, r8
	addlt sp, sp, #0x10
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x66]
	ldr r0, [r9, #0x9c]
	ldr r4, _0211B3B4 ; =0x02099F38
	add r1, r1, r8
	add r1, r9, r1, lsl #2
	sub r0, r0, #0xa
	ldr r7, [r1, #0x20]
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, r2, lsr #0x10
	mvn r3, #0
	bl FUN_02112C90
	add r0, r9, r8, lsl #2
	ldrsh r2, [r0, #0x7c]
	ldrsh r3, [r0, #0x7e]
	ldr r0, [r4]
	mov r1, r7
	bl FUN_02114248
	ldr r1, [r10, #0x84]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r7
	mov r5, #1
	mov r2, r5
	bl FUN_021137DC
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	ldr r3, [r9, #0x70]
	bl FUN_0211401C
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	sub r3, r6, #8
	bl FUN_02113B78
	mov r2, r5
	ldr r0, [r4]
	mov r1, r7
	mov r11, #2
	mov r3, r11
	bl FUN_02113F7C
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	ldr r3, [r9, #0x60]
	and r3, r3, #0xff
	bl FUN_021137DC
	mov r5, #0xd
	mul r0, r8, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	mov r3, r6
	bl FUN_02113D88
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	mov r3, #0x80
	bl FUN_02113D08
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	mov r3, #0xb
	bl FUN_02113B78
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	mov r3, r11
	bl FUN_02113F7C
	str r6, [sp]
	mov r5, #3
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, #8
	bl FUN_02113B78
	ldr r0, [r4]
	mov r2, r5
	mov r1, r7
	mov r3, r11
	bl FUN_02113F7C
	ldrb r0, [r9, #0x76]
	cmp r0, #0
	beq _0211B25C
	mov r0, r10
	mov r1, r7
	mov r3, r11
	mov r2, #5
	bl FUN_ov62_0211b02c
	mov r0, r10
	mov r1, r7
	mov r2, #7
	mov r3, #6
	bl FUN_ov62_0211b02c
_0211B25C:
	ldr r4, _0211B3B4 ; =0x02099F38
	ldr r3, [r10, #0x90]
	mov r5, #0xd
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_021137DC
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl FUN_0211401C
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, #0x88
	bl FUN_02113B78
	mov r2, r5
	ldr r0, [r4]
	mov r1, r7
	mov r5, #2
	mov r3, r5
	bl FUN_02113F7C
	ldr r0, [r4]
	mov r1, r7
	mov r11, #0xe
	mov r2, r11
	ldr r3, [r10, #0xc0]
	and r3, r3, #0xff
	bl FUN_021137DC
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	mov r3, r6
	bl FUN_0211401C
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	mov r3, #8
	bl FUN_02113B78
	ldr r0, [r4]
	mov r2, r11
	mov r3, r5
	mov r1, r7
	bl FUN_02113F7C
	add r3, r9, r8, lsl #2
	add r0, r8, #5
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldrsh r1, [r3, #0x7e]
	mov r4, #0x14
	ldr r0, _0211B3B8 ; =0x02099EB4
	str r1, [sp]
	ldrsh r5, [r9, #0x98]
	mov r1, #3
	str r5, [sp, #4]
	ldrsh r5, [r9, #0x9a]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r0]
	ldrsh r3, [r3, #0x7c]
	bl FUN_0210FBA4
	strh r7, [r0, #0x34]
	strb r6, [r0, #0x38]
	ldr r2, _0211B3BC ; =0x0210F940
	ldr r1, _0211B3C0 ; =FUN_0210FA20
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r2, _0211B3C4 ; =0x0210FB10
	ldr r1, _0211B3C8 ; =0x0210FB1C
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	ldr r1, [r10, #0x520]
	add r1, r10, r1, lsl #2
	str r0, [r1, #0x524]
	ldr r0, [r10, #0x520]
	add r0, r0, #1
	str r0, [r10, #0x520]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B3B4: .word 0x02099F38
_0211B3B8: .word 0x02099EB4
_0211B3BC: .word 0x0210F940
_0211B3C0: .word FUN_0210FA20
_0211B3C4: .word 0x0210FB10
_0211B3C8: .word 0x0210FB1C
	arm_func_end FUN_ov62_0211b090

	arm_func_start FUN_ov62_0211b3cc
FUN_ov62_0211b3cc: ; 0x0211B3CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0
	mov r6, #2
	ldr r5, _0211B930 ; =0x02099F38
	b _0211B40C
_0211B3E8:
	ldrb r1, [r7, #0x68]
	ldrb r3, [r7, #0x75]
	ldr r0, [r5]
	add r1, r1, r4
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r2, r6
	bl FUN_021142FC
	add r4, r4, #1
_0211B40C:
	ldrb r0, [r7, #0x69]
	cmp r4, r0
	blt _0211B3E8
	cmp r0, #5
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7, #0x68]
	ldr r2, [r8, #0x78]
	ldr r10, _0211B930 ; =0x02099F38
	add r0, r7, r0, lsl #2
	ldr r6, [r0, #0x20]
	ldr r0, [r10]
	mov r1, r6
	and r2, r2, #0xff
	bl FUN_02112950
	ldr r0, [r10]
	mov r1, r6
	mov r2, #4
	mov r3, #0
	bl FUN_0211346C
	ldr r2, [r7, #0x9c]
	ldr r0, [r10]
	sub r2, r2, #0xa
	mov r2, r2, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldrsh r5, [r7, #0x78]
	ldrsh r2, [r7, #0xa0]
	ldrsh r4, [r7, #0x7a]
	ldrsh r3, [r7, #0xa2]
	add r2, r5, r2
	mov r2, r2, lsl #0x10
	add r3, r4, r3
	mov r3, r3, lsl #0x10
	ldr r0, [r10]
	mov r1, r6
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_02114248
	mov r5, #0x14
	mov r11, #3
	ldr r9, _0211B934 ; =0x02099EB4
	str r5, [sp]
	ldr r0, [r9]
	mov r1, r11
	mov r2, #0x11
	mov r3, r6
	bl FUN_0210FBE8
	mov r6, r0
	mov r1, #0
	mov r4, #1
	add r0, r6, #0x3a
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	mov r2, #4
	add r0, r6, #0x3a
	mov r3, r1
	bl FUN_0210E720
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, #5
	mov r3, r1
	bl FUN_0210E720
	strb r4, [r6, #0x12]
	ldrb r2, [r7, #0x68]
	ldr r1, [r8, #0x78]
	ldr r0, [r10]
	add r2, r2, #1
	add r2, r7, r2, lsl #2
	ldr r6, [r2, #0x20]
	and r2, r1, #0xff
	mov r1, r6
	bl FUN_02112950
	mov r2, #0
	ldr r0, [r10]
	mov r1, r6
	mov r3, r2
	bl FUN_0211346C
	ldr r1, [r7, #0x9c]
	ldr r0, [r10]
	sub r1, r1, #0xa
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, r6
	bl FUN_02112B98
	ldrsh r3, [r7, #0x7a]
	ldrsh r2, [r7, #0xa2]
	ldrsh lr, [r7, #0x78]
	ldrsh r12, [r7, #0xa0]
	add r3, r3, r2
	sub r3, r3, #0x10
	add r12, lr, r12
	mov r12, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r10]
	mov r1, r6
	mov r2, r12, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_02114248
	str r5, [sp]
	ldr r0, [r9]
	mov r1, r11
	mov r2, #0xd
	mov r3, r6
	bl FUN_0210FBE8
	mov r6, r0
	mov r1, #0
	add r0, r6, #0x3a
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	add r0, r6, #0x3a
	mov r2, r1
	mov r3, r1
	bl FUN_0210E720
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, r4
	mov r3, r1
	bl FUN_0210E720
	strb r4, [r6, #0x12]
	ldrb r2, [r7, #0x68]
	ldr r1, [r8, #0x78]
	ldr r0, [r10]
	add r2, r2, #2
	add r2, r7, r2, lsl #2
	ldr r6, [r2, #0x20]
	and r2, r1, #0xff
	mov r1, r6
	bl FUN_02112950
	ldr r0, [r10]
	mov r1, r6
	mov r2, #2
	mov r3, #0
	bl FUN_0211346C
	ldr r1, [r7, #0x9c]
	ldr r0, [r10]
	sub r1, r1, #0xa
	mov r2, r1, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldrsh r3, [r7, #0x78]
	ldrsh r2, [r7, #0xa0]
	ldrsh r12, [r7, #0x7a]
	ldrsh lr, [r7, #0xa6]
	add r2, r3, r2
	ldrsh r3, [r7, #0xa2]
	mov r2, r2, lsl #0x10
	ldr r0, [r10]
	add r3, r12, r3
	add r3, lr, r3
	add r3, r3, #0x20
	mov r3, r3, lsl #0x10
	mov r1, r6
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_02114248
	str r5, [sp]
	ldr r0, [r9]
	mov r1, r11
	mov r2, #0xe
	mov r3, r6
	bl FUN_0210FBE8
	mov r6, r0
	mov r1, #0
	add r0, r6, #0x3a
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	mov r2, #2
	add r0, r6, #0x3a
	mov r3, r1
	bl FUN_0210E720
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, r11
	mov r3, r1
	bl FUN_0210E720
	strb r4, [r6, #0x12]
	ldrb r2, [r7, #0x68]
	ldr r1, [r8, #0x78]
	ldr r0, [r10]
	add r2, r2, #3
	add r2, r7, r2, lsl #2
	ldr r6, [r2, #0x20]
	and r2, r1, #0xff
	mov r1, r6
	bl FUN_02112950
	ldr r0, [r10]
	mov r1, r6
	mov r2, #6
	mov r3, #0
	bl FUN_0211346C
	ldr r2, [r7, #0x9c]
	ldr r0, [r10]
	sub r2, r2, #0xa
	mov r2, r2, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldrsh r3, [r7, #0x7a]
	ldrsh r2, [r7, #0xa2]
	ldrsh r1, [r7, #0x78]
	ldrsh r0, [r7, #0xa0]
	add r2, r3, r2
	sub r3, r2, #0x20
	add r0, r1, r0
	mov r2, r0, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r10]
	mov r1, r6
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_02114248
	str r5, [sp]
	ldr r0, [r9]
	mov r1, r11
	mov r2, #0xf
	mov r3, r6
	bl FUN_0210FBE8
	mov r6, r0
	mov r1, #0
	add r0, r6, #0x3a
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	mov r2, #6
	add r0, r6, #0x3a
	mov r3, r1
	bl FUN_0210E720
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, #7
	mov r3, r1
	bl FUN_0210E720
	strb r4, [r6, #0x12]
	ldrb r1, [r7, #0x68]
	ldr r0, [r8, #0x78]
	add r1, r1, #4
	add r1, r7, r1, lsl #2
	ldr r6, [r1, #0x20]
	and r2, r0, #0xff
	ldr r0, [r10]
	mov r1, r6
	bl FUN_02112950
	mov r8, #8
	ldr r0, [r10]
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl FUN_0211346C
	ldr r2, [r7, #0x9c]
	ldr r0, [r10]
	sub r2, r2, #0xa
	mov r2, r2, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldr r0, [r10]
	ldrsh r12, [r7, #0x78]
	ldrsh r2, [r7, #0xa0]
	ldrsh r10, [r7, #0xa6]
	ldrsh r3, [r7, #0x7a]
	ldrsh r7, [r7, #0xa2]
	add r2, r12, r2
	mov r2, r2, lsl #0x10
	add r3, r3, r7
	add r3, r10, r3
	add r3, r3, #0x30
	mov r3, r3, lsl #0x10
	mov r1, r6
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_02114248
	str r5, [sp]
	ldr r0, [r9]
	mov r1, r11
	mov r3, r6
	mov r2, #0x10
	bl FUN_0210FBE8
	mov r5, r0
	mov r1, #0
	mov r2, r4
	mov r3, r1
	add r0, r5, #0x3a
	bl FUN_0210E6FC
	mov r1, #0
	mov r2, r8
	mov r3, r1
	add r0, r5, #0x3a
	bl FUN_0210E720
	mov r1, #0
	add r0, r5, #0x3e
	mov r2, r4
	mov r3, r1
	bl FUN_0210E6FC
	mov r1, #0
	add r0, r5, #0x3e
	mov r3, r1
	mov r2, #9
	bl FUN_0210E720
	strb r4, [r5, #0x12]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B930: .word 0x02099F38
_0211B934: .word 0x02099EB4
	arm_func_end FUN_ov62_0211b3cc

	arm_func_start FUN_ov62_0211b938
FUN_ov62_0211b938: ; 0x0211B938
	stmfd sp!, {r4, lr}
	ldr r3, [r1, #0x10]
	cmp r3, #0
	ldmltfd sp!, {r4, pc}
	ldr r0, [r1, #8]
	cmp r3, r0
	ldrlt r2, [r1]
	ldrlt r0, [r1, #4]
	cmplt r2, r0
	ldmgefd sp!, {r4, pc}
	ldr r4, _0211B998 ; =0x02099EB4
	add r0, r3, #5
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_0210E7D0
	movs r1, r0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4]
	bl FUN_0210EF88
	ldmfd sp!, {r4, pc}
_0211B998: .word 0x02099EB4
	arm_func_end FUN_ov62_0211b938

	arm_func_start FUN_ov62_0211b99c
FUN_ov62_0211b99c: ; 0x0211B99C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r6, #0
	mov r10, r1
	mov r9, r2
	mov r8, r3
	mov r7, #1
	ldr r4, [sp, #0x30]
	ldrb r5, [sp, #0x3c]
	mov r11, r6
	b _0211BA18
_0211B9C8:
	mov r0, r11
	cmp r5, #0
	beq _0211B9EC
	mov r1, #1
	cmp r6, #0
	cmpne r4, r7
	movlt r1, r11
	cmp r1, #0
	movne r0, #1
_0211B9EC:
	str r0, [sp]
	ldr r0, _0211BB08 ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	add r2, r9, r6
	mov r3, #2
	bl FUN_02113EC0
	mov r0, #0xa
	mul r0, r7, r0
	mov r7, r0
	add r6, r6, #1
_0211BA18:
	cmp r6, r8
	blt _0211B9C8
	ldrb r0, [sp, #0x3c]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r0, [sp, #0x38]
	mov r6, #0
	mov r7, #1
	str r0, [sp, #8]
	ldrsh r0, [sp, #0x34]
	ldr r5, [sp, #0x30]
	ldr r4, _0211BB08 ; =0x02099F38
	str r0, [sp, #4]
	b _0211BAF8
_0211BA54:
	cmp r6, #0
	cmpne r5, r7
	blt _0211BAE8
	mov r0, r5
	mov r1, r7
	bl FUN_0201f9bc
	ldr r3, _0211BB0C ; =0x66666667
	mov r12, r0
	smull lr, r11, r3, r12
	mov r3, r12, lsr #0x1f
	add r11, r3, r11, asr #2
	mov r3, #0xa
	smull r11, lr, r3, r11
	mov r1, #0
	str r1, [sp]
	sub r11, r12, r11
	mov r3, r11, lsl #0x10
	ldr r0, [r4]
	mov r1, r10
	add r2, r9, r6
	mov r3, r3, asr #0x10
	bl FUN_0211401C
	ldr r0, [r4]
	mov r1, r10
	add r2, r9, r6
	mov r3, #0x8c
	bl FUN_021139BC
	ldr r3, [sp, #4]
	ldr r0, [sp, #8]
	sub r3, r3, r6, lsl #3
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r10
	add r2, r9, r6
	mov r3, r3, asr #0x10
	bl FUN_02113B78
_0211BAE8:
	mov r0, #0xa
	mul r0, r7, r0
	add r6, r6, #1
	mov r7, r0
_0211BAF8:
	cmp r6, r8
	blt _0211BA54
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BB08: .word 0x02099F38
_0211BB0C: .word 0x66666667
	arm_func_end FUN_ov62_0211b99c

	arm_func_start FUN_ov62_0211bb10
FUN_ov62_0211bb10: ; 0x0211BB10
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r4, #0
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldrnesh r4, [r0, #4]
	ldr r7, [r8, #0xc8]
	cmp r7, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [sp]
	mov r6, #0x78
	mov r2, #2
	str r6, [sp, #4]
	mov r5, #7
	mov r0, r8
	mov r1, r7
	mov r3, r2
	str r5, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl FUN_ov62_0211b99c
	ldr r0, _0211BBA0 ; =0x0209BA20
	bl FUN_020EDF7C
	stmia sp, {r0, r6}
	mov r0, #0x16
	str r0, [sp, #8]
	mov r0, r8
	mov r1, r7
	mov r3, r5
	mov r2, #4
	str r4, [sp, #0xc]
	bl FUN_ov62_0211b99c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BBA0: .word 0x0209BA20
	arm_func_end FUN_ov62_0211bb10

	arm_func_start FUN_ov62_0211bba4
FUN_ov62_0211bba4: ; 0x0211BBA4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	cmp r1, #0
	mov r3, #0
	ldrneb r0, [r1, #0x67]
	mov r6, r3
	mov r4, r3
	cmpne r0, #0
	cmpne r2, r0
	mov r7, #1
	addge sp, sp, #0x10
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r1, #0x76]
	cmp r0, #0
	ldr r0, [r1, #0x1c]
	moveq r7, r3
	cmp r0, #1
	bne _0211BC4C
	ldr r0, [r1, #0xc]
	adds r5, r0, r2
	bmi _0211BC0C
	ldr r0, [r1, #4]
	cmp r5, r0
	blt _0211BC14
_0211BC0C:
	mov r5, #0
	mov r7, r5
_0211BC14:
	ldr r3, [r8, #0x4fc]
	mov r0, #0xc
	mla r12, r5, r0, r3
	ldrsb r3, [r12, #8]
	ldrh r6, [r12, #6]
	cmp r3, #0
	mulne r0, r6, r3
	movne r6, r0
	ldrb r0, [r8, #0x1c]
	cmp r0, #0
	beq _0211BC4C
	ldrb r0, [r12, #0xa]
	cmp r0, #0
	moveq r7, #0
_0211BC4C:
	ldrb r0, [r1, #0x66]
	mov r12, #0xa0
	add r0, r0, r2
	add r0, r1, r0, lsl #2
	ldr r5, [r0, #0x20]
	mov r0, r8
	stmia sp, {r3, r12}
	str r4, [sp, #8]
	mov r1, r5
	str r7, [sp, #0xc]
	mov r2, #5
	mov r3, #2
	bl FUN_ov62_0211b99c
	str r6, [sp]
	mov r0, #0xde
	stmib sp, {r0, r4}
	mov r0, r8
	mov r1, r5
	str r7, [sp, #0xc]
	mov r2, #7
	mov r3, #6
	bl FUN_ov62_0211b99c
	ldrb r0, [r8, #0x1c]
	cmp r0, #0
	bne _0211BD08
	cmp r7, #0
	mov r8, #0x1f
	beq _0211BCCC
	ldr r0, _0211BD14 ; =0x0209BA20
	bl FUN_020EDF7C
	cmp r6, r0
	movhi r8, #0x10
_0211BCCC:
	orr r0, r8, r8, lsl #5
	orr r0, r0, r8, lsl #10
	mov r0, r0, lsl #0x10
	mov r4, #7
	mov r8, r0, lsr #0x10
	ldr r6, _0211BD18 ; =0x02099F38
	b _0211BD00
_0211BCE8:
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl FUN_02113B00
	add r4, r4, #1
_0211BD00:
	cmp r4, #0xd
	blt _0211BCE8
_0211BD08:
	mov r0, r7
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BD14: .word 0x0209BA20
_0211BD18: .word 0x02099F38
	arm_func_end FUN_ov62_0211bba4

	arm_func_start FUN_ov62_0211bd1c
FUN_ov62_0211bd1c: ; 0x0211BD1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r9, r1
	ldr r4, _0211BE80 ; =0x02099F38
	mov r10, r0
	ldr r1, [r9, #0x60]
	mov r6, #0
	add r11, sp, #0x28
	ldr r0, [r4]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r6, [sp, #0x20]
	str r6, [r11]
	str r6, [r11, #4]
	str r6, [r11, #8]
	str r6, [r11, #0xc]
	str r6, [r11, #0x10]
	str r6, [r11, #0x14]
	str r6, [r11, #0x18]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r9, #0x60]
	ldr r7, [sp, #0x20]
	bl FUN_02111458
	ldr r4, _0211BE84 ; =0x02099F50
	mov r8, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, #1
	bl rwriteat14n18
	ldr r0, [r9, #0x1c]
	cmp r0, #1
	bne _0211BE38
	mov r5, r6
	b _0211BE2C
_0211BDA8:
	ldr r0, [r9, #0xc]
	adds r2, r0, r6
	bmi _0211BE28
	ldr r0, [r9, #4]
	cmp r2, r0
	bge _0211BE28
	mov r0, #0xc
	mul r1, r2, r0
	ldr r2, [r10, #0x4fc]
	ldr r0, _0211BE88 ; =0x0209BA20
	ldrh r1, [r2, r1]
	bl FUN_020EE034
	cmp r0, #0
	beq _0211BE28
	str r0, [r11, r6, lsl #2]
	movs r1, r0
	beq _0211BE28
	mov r0, #0xd
	mul r0, r6, r0
	str r8, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r0, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r0, [r4]
	mov r2, r7
	mov r3, #0x80
	bl FUN_020425fc
_0211BE28:
	add r6, r6, #1
_0211BE2C:
	ldr r0, [r9, #8]
	cmp r6, r0
	blt _0211BDA8
_0211BE38:
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl FUN_020026d0
	ldr r0, _0211BE84 ; =0x02099F50
	ldr r0, [r0]
	bl wraper_rwiteat14n18
	ldr r0, _0211BE80 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r9, #0x60]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r7
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE80: .word 0x02099F38
_0211BE84: .word 0x02099F50
_0211BE88: .word 0x0209BA20
	arm_func_end FUN_ov62_0211bd1c

	arm_func_start FUN_ov62_0211be8c
FUN_ov62_0211be8c: ; 0x0211BE8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	ldr r1, [r10, #0xc]
	movs r9, r2
	mov r4, r0
	add r6, r1, r9
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #8]
	cmp r9, r0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r10, #0x66]
	ldr r0, [r10, #4]
	add r1, r1, r9
	add r1, r10, r1, lsl #2
	cmp r6, r0
	ldr r8, [r1, #0x20]
	blt _0211BEF0
	ldr r0, _0211C07C ; =0x02099F38
	mov r1, r8
	ldr r0, [r0]
	mov r2, #2
	bl FUN_02114370
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BEF0:
	ldr r5, _0211C07C ; =0x02099F38
	mov r11, #2
	mov r7, #1
	ldr r0, [r5]
	mov r1, r8
	mov r2, r11
	mov r3, r7
	bl FUN_021142FC
	mov r0, r4
	mov r1, r10
	mov r2, r9
	bl FUN_ov62_0211bba4
	ldr r0, [r10, #0x1c]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0x4fc]
	mov r0, #0xc
	mla r9, r6, r0, r1
	str r7, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r11
	mov r3, r11
	bl FUN_02113EC0
	ldrh r1, [r9, #2]
	mov r0, r4
	bl FUN_ov62_0211e320
	and r3, r0, #0xff
	mov r6, #3
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	bl FUN_021137DC
	str r7, [sp]
	mov r10, #0
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	mov r3, r10
	bl FUN_0211401C
	str r10, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	sub r3, r10, #8
	bl FUN_02113B78
	str r7, [sp]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r11
	mov r1, r8
	bl FUN_02113EC0
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211BFD8
	ldrb r0, [r9, #0xa]
	cmp r0, #0
	moveq r10, r7
_0211BFD8:
	ldr r0, _0211C07C ; =0x02099F38
	str r10, [sp]
	ldr r0, [r0]
	mov r1, r8
	mov r2, #0xd
	mov r3, #2
	bl FUN_02113EC0
	ldrh r1, [r9]
	ldr r0, _0211C080 ; =0x0209BA20
	bl FUN_020EE034
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r0, #0x1d]
	mov r6, #0
	cmp r1, #0xf
	beq _0211C020
	cmp r1, #0x10
	bne _0211C03C
_0211C020:
	bl FUN_020EEF40
	mov r1, r0
	mov r0, r4
	bl FUN_ov62_02120a48
	mov r6, #1
	cmp r0, #0
	movne r6, #0
_0211C03C:
	mov r0, #0
	ldr r4, _0211C07C ; =0x02099F38
	mov r5, #0xe
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	sub r3, r5, #0x16
	bl FUN_02113B78
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, #2
	bl FUN_02113EC0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C07C: .word 0x02099F38
_0211C080: .word 0x0209BA20
	arm_func_end FUN_ov62_0211be8c

	arm_func_start FUN_ov62_0211c084
FUN_ov62_0211c084: ; 0x0211C084
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	beq _0211C100
	bl FUN_ov62_0211aed8
	mov r1, #0
	str r1, [r5, #0x520]
	mov r6, r1
_0211C0A8:
	add r0, r5, r1, lsl #2
	add r1, r1, #1
	str r6, [r0, #0x524]
	cmp r1, #7
	blt _0211C0A8
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _0211C0E8
_0211C0C8:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov62_0211b090
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0211C0C8
_0211C0E8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov62_0211af58
	mov r0, r5
	mov r1, r4
	bl FUN_ov62_0211b3cc
_0211C100:
	mov r6, #0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov62_0211ca34
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov62_0211cb90
	mov r0, r5
	mov r1, r4
	bl FUN_ov62_0211bd1c
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov62_0211bb10
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0211C14C:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov62_0211be8c
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0211C14C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov62_0211c084

	arm_func_start FUN_ov62_0211c170
FUN_ov62_0211c170: ; 0x0211C170
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r4, r3
	bl FUN_020F52F4
	mov r8, r0
	tst r8, #1
	beq _0211C1AC
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov62_0211ca34
_0211C1AC:
	tst r8, #2
	beq _0211C20C
	mov r0, r7
	mov r1, r6
	bl FUN_ov62_0211bd1c
	ldr r0, [r6, #8]
	mov r8, #0
	cmp r0, #0
	ble _0211C1F0
_0211C1D0:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_ov62_0211be8c
	ldr r0, [r6, #8]
	add r8, r8, #1
	cmp r8, r0
	blt _0211C1D0
_0211C1F0:
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _0211C20C
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov62_0211cb90
_0211C20C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov62_0211bb10
	mov r0, r7
	bl FUN_ov62_0211c898
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov62_0211c170

	arm_func_start FUN_ov62_0211c228
FUN_ov62_0211c228: ; 0x0211C228
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r1, [r5, #4]
	ldr r12, [r5]
	mov r6, r0
	add r0, r1, r12
	mov r4, r3
	add r0, r2, r0
	bl FUN_0201f9bc
	mov r2, r1
	mov r12, #1
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov62_0211c170
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov62_0211c228

	arm_func_start FUN_ov62_0211c274
FUN_ov62_0211c274: ; 0x0211C274
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r1, r2
	mov r4, r3
	bl FUN_020F53E8
	mov r7, r0
	tst r7, #1
	beq _0211C2AC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov62_0211ca34
_0211C2AC:
	tst r7, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov62_0211bd1c
	ldr r0, [r5, #8]
	mov r7, #0
	cmp r0, #0
	ble _0211C2F0
_0211C2D0:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov62_0211be8c
	ldr r0, [r5, #8]
	add r7, r7, #1
	cmp r7, r0
	blt _0211C2D0
_0211C2F0:
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov62_0211cb90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov62_0211c274

	arm_func_start FUN_ov62_0211c310
FUN_ov62_0211c310: ; 0x0211C310
	stmfd sp!, {r3, lr}
	mov r12, #1
	str r12, [sp]
	ldr r12, [r1, #0xc]
	add r2, r12, r2
	bl FUN_ov62_0211c274
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov62_0211c310

	arm_func_start FUN_ov62_0211c32c
FUN_ov62_0211c32c: ; 0x0211C32C
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211C3AC ; =0x02099F38
	b _0211C360
_0211C344:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _0211C35C
	ldr r0, [r4]
	bl FUN_021128C4
_0211C35C:
	add r5, r5, #1
_0211C360:
	cmp r5, #0x10
	blt _0211C344
	mov r5, #0
	ldr r4, _0211C3AC ; =0x02099F38
	b _0211C390
_0211C374:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x60]
	cmp r1, #0
	beq _0211C38C
	ldr r0, [r4]
	bl FUN_02058ee0
_0211C38C:
	add r5, r5, #1
_0211C390:
	cmp r5, #1
	blt _0211C374
	mov r0, r6
	mov r1, #0
	mov r2, #0xac
	bl MemWrite
	ldmfd sp!, {r4, r5, r6, pc}
_0211C3AC: .word 0x02099F38
	arm_func_end FUN_ov62_0211c32c

	arm_func_start FUN_ov62_0211c3b0
FUN_ov62_0211c3b0: ; 0x0211C3B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	add r5, r7, #0xf4
	mov r4, #0xac
_0211C3C4:
	mla r1, r6, r4, r5
	mov r0, r7
	bl FUN_ov62_0211c32c
	add r6, r6, #1
	cmp r6, #6
	blt _0211C3C4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov62_0211c3b0

	arm_func_start FUN_ov62_0211c3e0
FUN_ov62_0211c3e0: ; 0x0211C3E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, r1
	ldr r1, [r4, #0x1c]
	mov r9, #1
	mov r6, #0
	cmp r1, #1
	movne r9, r6
	cmp r9, #0
	mov r5, r0
	ldrne r7, [r4]
	ldrne r8, [r4, #0xc]
	bne _0211C428
	mov r8, #0
	mov r0, r5
	mov r1, r4
	mov r7, r8
	bl FUN_ov62_0211c32c
_0211C428:
	mov r0, r5
	bl FUN_ov62_0211de64
	cmp r9, #0
	bne _0211C464
	ldr r10, _0211C5D0 ; =0x02099F38
	mov r1, #4
	ldr r0, [r10]
	mov r2, r1
	bl FUN_02059630
	mov r1, r0
	str r1, [r4, #0x60]
	mov r2, #0
	ldr r0, [r10]
	mov r3, r2
	bl FUN_02059038
_0211C464:
	mov r0, #1
	str r0, [r4, #0x1c]
	ldr r2, [r5, #0x500]
	mov r1, #7
	str r2, [r4, #4]
	str r6, [r4]
	str r6, [r4, #0xc]
	str r1, [r4, #8]
	ldr r1, [r5, #0x68]
	cmp r2, #7
	str r1, [r4, #0x6c]
	strb r0, [r4, #0x74]
	movle r0, r6
	str r6, [r4, #0x70]
	mov r6, #0
	mov r3, #1
	mov r2, #0xf0
	mov r1, #0x10
	strb r0, [r4, #0x75]
	strb r3, [r4, #0x76]
	strh r6, [r4, #0x78]
	strh r6, [r4, #0x7a]
	strh r2, [r4, #0x98]
	strh r1, [r4, #0x9a]
	b _0211C4F0
_0211C4C8:
	ldrsh r0, [r4, #0x78]
	add r2, r4, r6, lsl #2
	add r0, r0, #8
	strh r0, [r2, #0x7c]
	ldrsh r1, [r4, #0x7a]
	ldrsh r0, [r4, #0x9a]
	add r1, r1, #0x28
	mla r0, r6, r0, r1
	strh r0, [r2, #0x7e]
	add r6, r6, #1
_0211C4F0:
	ldr r0, [r4, #8]
	cmp r6, r0
	blt _0211C4C8
	mov r1, #0x10
	mov r10, #0x96
	mov r3, #0xf0
	mov r2, #0x48
	mov r6, #0
	mov r0, #0x38
	str r10, [r4, #0x9c]
	strh r3, [r4, #0xa0]
	strh r2, [r4, #0xa2]
	strh r6, [r4, #0xa4]
	strh r1, [r4, #0xa6]
	strh r1, [r4, #0xa8]
	strh r0, [r4, #0xaa]
	cmp r9, #0
	bne _0211C598
	add r9, sp, #0
	mov r0, r5
	mov r1, r4
	mov r2, r9
	str r6, [sp]
	bl FUN_ov62_0211ad14
	b _0211C568
_0211C554:
	mov r0, r5
	mov r1, r4
	mov r2, r9
	bl FUN_ov62_0211ade4
	add r6, r6, #1
_0211C568:
	ldr r0, [r4, #8]
	cmp r6, r0
	blt _0211C554
	add r6, sp, #0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov62_0211ad7c
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov62_0211ae58
_0211C598:
	mov r0, r4
	mov r1, r7
	bl FUN_020F52F4
	mov r0, r4
	mov r1, r8
	bl FUN_020F53E8
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov62_0211c084
	mov r0, r5
	bl FUN_ov62_0211aba0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C5D0: .word 0x02099F38
	arm_func_end FUN_ov62_0211c3e0

	arm_func_start FUN_ov62_0211c5d4
FUN_ov62_0211c5d4: ; 0x0211C5D4
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211C62C
_0211C5E0: ; jump table
	b _0211C62C ; case 0
	b _0211C5FC ; case 1
	b _0211C604 ; case 2
	b _0211C60C ; case 3
	b _0211C614 ; case 4
	b _0211C61C ; case 5
	b _0211C624 ; case 6
_0211C5FC:
	mov r0, #0
	bx lr
_0211C604:
	mov r0, #1
	bx lr
_0211C60C:
	mov r0, #1
	bx lr
_0211C614:
	mov r0, #1
	bx lr
_0211C61C:
	mov r0, #1
	bx lr
_0211C624:
	mov r0, #1
	bx lr
_0211C62C:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov62_0211c5d4

	arm_func_start FUN_ov62_0211c634
FUN_ov62_0211c634: ; 0x0211C634
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, r0
	ldr r5, _0211C7D0 ; =0x02099F38
	bl FUN_ov62_0211cc44
	mov r1, r0
	mov r0, r6
	bl FUN_ov62_0211c5d4
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r6, #0xf4
	mov r0, #0xac
	mla r10, r4, r0, r1
	mov r8, #0
	ldr r7, _0211C7D4 ; =0x00007FFF
	b _0211C690
_0211C670:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211C68C
	ldr r0, [r5]
	mov r2, r7
	bl FUN_02114204
_0211C68C:
	add r8, r8, #1
_0211C690:
	cmp r8, #0x10
	blt _0211C670
	cmp r4, #0
	bne _0211C6A8
	ldr r7, _0211C7D4 ; =0x00007FFF
	b _0211C6AC
_0211C6A8:
	ldr r7, _0211C7D8 ; =0x00004210
_0211C6AC:
	ldr r0, [r5]
	ldr r1, [r6, #0xc8]
	mov r2, r7
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r6, #0xcc]
	mov r2, r7
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r6, #0xd4]
	mov r2, r7
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r6, #0xd8]
	mov r2, r7
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r6, #0xdc]
	mov r2, r7
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r6, #0xe0]
	mov r2, r7
	bl FUN_02114204
	mov r0, r6
	bl FUN_ov62_0211cc44
	cmp r0, #5
	bne _0211C774
	ldr r0, _0211C7DC ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	bl FUN_0210EAB4
	ldr r1, [r6, #0xd4]
	cmp r1, #0
	beq _0211C748
	ldr r0, [r5]
	bl FUN_021128C4
	mov r0, #0
	str r0, [r6, #0xd4]
_0211C748:
	ldr r0, _0211C7DC ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl FUN_0210EAB4
	ldr r1, [r6, #0xd8]
	cmp r1, #0
	beq _0211C774
	ldr r0, [r5]
	bl FUN_021128C4
	mov r0, #0
	str r0, [r6, #0xd8]
_0211C774:
	sub r9, r4, #1
	add r7, r6, #0xf4
	ldr r6, _0211C7D8 ; =0x00004210
	mov r11, #0
	mov r4, #0xac
	b _0211C7C4
_0211C78C:
	mla r10, r9, r4, r7
	mov r8, r11
	b _0211C7B8
_0211C798:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211C7B4
	ldr r0, [r5]
	mov r2, r6
	bl FUN_02114204
_0211C7B4:
	add r8, r8, #1
_0211C7B8:
	cmp r8, #0x10
	blt _0211C798
	sub r9, r9, #1
_0211C7C4:
	cmp r9, #0
	bge _0211C78C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C7D0: .word 0x02099F38
_0211C7D4: .word 0x00007FFF
_0211C7D8: .word 0x00004210
_0211C7DC: .word 0x02099EB4
	arm_func_end FUN_ov62_0211c634

	arm_func_start FUN_ov62_0211c7e0
FUN_ov62_0211c7e0: ; 0x0211C7E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov62_0211cc44
	mov r1, r0
	mov r0, r4
	mov r2, #0
	bl FUN_ov62_0211c800
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov62_0211c7e0

	arm_func_start FUN_ov62_0211c800
FUN_ov62_0211c800: ; 0x0211C800
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov62_0211c5d4
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	add r2, r6, #0xf4
	mov r1, #0xac
	mla r0, r1, r0, r2
	ldr r1, [r0, #0x1c]
	cmp r1, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov62_0211c800

	arm_func_start FUN_ov62_0211c844
FUN_ov62_0211c844: ; 0x0211C844
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r2, r4
	mov r1, #1
	mov r5, r0
	bl FUN_ov62_0211c800
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0]
	cmp r2, #0
	blt _0211C880
	ldr r0, [r0, #4]
	cmp r2, r0
	blt _0211C888
_0211C880:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0211C888:
	ldr r1, [r5, #0x4fc]
	mov r0, #0xc
	mla r0, r2, r0, r1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov62_0211c844

	arm_func_start FUN_ov62_0211c898
FUN_ov62_0211c898: ; 0x0211C898
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov62_0211cc44
	cmp r0, #1
	mov r0, r4
	bne _0211C8F4
	bl FUN_ov62_0211c844
	cmp r0, #0
	addne r0, r4, #0x500
	ldrneh r1, [r0, #0x10]
	orrne r1, r1, #1
	strneh r1, [r0, #0x10]
	bne _0211C8E0
	add r1, r4, #0x500
	ldrh r2, [r1, #0x10]
	ldr r0, _0211C920 ; =0x0000FFFE
	and r0, r2, r0
	strh r0, [r1, #0x10]
_0211C8E0:
	add r0, r4, #0x500
	ldrh r1, [r0, #0x10]
	orr r1, r1, #0x30
	strh r1, [r0, #0x10]
	b _0211C90C
_0211C8F4:
	bl FUN_ov62_0211cc44
	cmp r0, #5
	addeq r0, r4, #0x500
	ldreqh r1, [r0, #0x10]
	orreq r1, r1, #3
	streqh r1, [r0, #0x10]
_0211C90C:
	add r0, r4, #0x500
	ldrh r1, [r0, #0x10]
	mov r0, r4
	bl FUN_ov62_0211c924
	ldmfd sp!, {r4, pc}
_0211C920: .word 0x0000FFFE
	arm_func_end FUN_ov62_0211c898

	arm_func_start FUN_ov62_0211c924
FUN_ov62_0211c924: ; 0x0211C924
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r4, r1
	mov r6, r8
	mov r7, #1
	ldr r5, _0211C988 ; =0x02099EB4
	b _0211C97C
_0211C940:
	mov r0, r7, lsl r8
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r5]
	mov r1, r9
	bl FUN_0210EBD4
	movs r1, r0
	beq _0211C978
	tst r9, r4
	moveq r0, r7
	movne r0, r6
	strb r0, [r1, #0x10]
	ldr r0, [r5]
	bl FUN_0210EE80
_0211C978:
	add r8, r8, #1
_0211C97C:
	cmp r8, #0x10
	blt _0211C940
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C988: .word 0x02099EB4
	arm_func_end FUN_ov62_0211c924

	arm_func_start FUN_ov62_0211c98c
FUN_ov62_0211c98c: ; 0x0211C98C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x6b]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _0211C9C0
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _0211C9C8
_0211C9C0:
	mov r0, #0
	str r0, [sp, #0x28]
_0211C9C8:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x6a]
	ldr r0, _0211CA2C ; =0x02099ED4
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl FUN_0210E29C
	ldrb r1, [r4, #0x6a]
	ldr r0, _0211CA30 ; =0x02099F38
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r3, #1
	bl FUN_021142FC
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211CA2C: .word 0x02099ED4
_0211CA30: .word 0x02099F38
	arm_func_end FUN_ov62_0211c98c

	arm_func_start FUN_ov62_0211ca34
FUN_ov62_0211ca34: ; 0x0211CA34
	stmfd sp!, {r3, lr}
	ldrb r3, [r1, #0x6b]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r12, [r1, #0x10]
	cmp r12, #0
	blt _0211CA5C
	ldr r3, [r1, #8]
	cmp r12, r3
	blt _0211CA7C
_0211CA5C:
	ldrb r3, [r1, #0x6a]
	ldr r0, _0211CA98 ; =0x02099F38
	mov r2, #2
	add r1, r1, r3, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	bl FUN_02114370
	ldmfd sp!, {r3, pc}
_0211CA7C:
	str r2, [sp]
	ldr r2, [r1, #0x10]
	add r3, r1, r2, lsl #2
	ldrsh r2, [r3, #0x7c]
	ldrsh r3, [r3, #0x7e]
	bl FUN_ov62_0211c98c
	ldmfd sp!, {r3, pc}
_0211CA98: .word 0x02099F38
	arm_func_end FUN_ov62_0211ca34

	arm_func_start FUN_ov62_0211ca9c
FUN_ov62_0211ca9c: ; 0x0211CA9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r9, r1
	ldrb r0, [r9, #0x69]
	mov r8, r2
	mov r7, r3
	cmp r0, #3
	addlo sp, sp, #0x1c
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r9, #0x75]
	mov r6, #0
	mov r5, #0
	cmp r0, #0
	ldrne r1, [r9, #4]
	ldrne r0, [r9, #8]
	mov r4, #2
	cmpne r1, r0
	movgt r6, #1
	ldr r10, _0211CB84 ; =0x02099F38
	b _0211CB10
_0211CAEC:
	ldrb r1, [r9, #0x68]
	ldr r0, [r10]
	mov r2, r4
	add r1, r1, r5
	add r1, r9, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r6
	bl FUN_021142FC
	add r5, r5, #1
_0211CB10:
	ldrb r0, [r9, #0x69]
	cmp r5, r0
	blt _0211CAEC
	cmp r6, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r8}
	ldr r0, [sp, #0x40]
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r9, #0x68]
	ldr r0, _0211CB88 ; =0x02099ED4
	mov r2, r1
	add r3, r9, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl FUN_0210E29C
	ldr r0, _0211CB8C ; =0x02099EB4
	mov r2, r8
	ldr r0, [r0]
	mov r3, r7
	mov r1, #0x11
	bl FUN_0210FD0C
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CB84: .word 0x02099F38
_0211CB88: .word 0x02099ED4
_0211CB8C: .word 0x02099EB4
	arm_func_end FUN_ov62_0211ca9c

	arm_func_start FUN_ov62_0211cb90
FUN_ov62_0211cb90: ; 0x0211CB90
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrsh r3, [r4, #0xa6]
	ldr r1, [r4, #0xc]
	mov r5, r0
	mul r0, r3, r1
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	mov r6, r2
	sub r1, r3, r1
	bl FUN_0201f9bc
	str r6, [sp]
	mov lr, r0
	ldrsh r1, [r4, #0x7a]
	ldrsh r0, [r4, #0xa2]
	ldrsh r12, [r4, #0x78]
	ldrsh r2, [r4, #0xa0]
	add r3, r1, r0
	mov r0, r5
	mov r1, r4
	add r2, r12, r2
	add r3, r3, lr
	bl FUN_ov62_0211ca9c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov62_0211cb90

	arm_func_start FUN_ov62_0211cbf8
FUN_ov62_0211cbf8: ; 0x0211CBF8
	ldr r3, _0211CC30 ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211CC18
	cmp r1, #0
	cmpeq r2, #0
	movne r0, #0
	bxne lr
_0211CC18:
	mov r3, #5
	str r3, [r0, #0x10]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	mov r0, #1
	bx lr
_0211CC30: .word 0x0209A454
	arm_func_end FUN_ov62_0211cbf8

	arm_func_start FUN_ov62_0211cc34
FUN_ov62_0211cc34: ; 0x0211CC34
	mov r2, #3
	str r1, [r0, #0x14]
	str r2, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov62_0211cc34

	arm_func_start FUN_ov62_0211cc44
FUN_ov62_0211cc44: ; 0x0211CC44
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov62_0211cc44

	arm_func_start FUN_ov62_0211cc4c
FUN_ov62_0211cc4c: ; 0x0211CC4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10c
	mov r8, r0
	ldr r0, [r8, #0x514]
	mov r6, #0x28
	mov r5, #2
	mov r4, #1
	ldr r9, _0211D398 ; =0x02099EB4
	bl FUN_021109A0
	mov r7, #0
	mov r0, r8
	strb r7, [sp, #0x8c]
	bl FUN_ov62_0211cc44
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211D390
_0211CC8C: ; jump table
	b _0211D390 ; case 0
	b _0211CCA8 ; case 1
	b _0211CD64 ; case 2
	b _0211CEF8 ; case 3
	b _0211D00C ; case 4
	b _0211D1B0 ; case 5
	b _0211D20C ; case 6
_0211CCA8:
	ldr r0, [r9]
	mov r1, #0xa
	bl FUN_0210EE78
	mov r0, r8
	mov r2, r7
	add r3, r8, #0x500
	mov r4, #0xc3
	mov r1, r5
	strh r4, [r3, #0x10]
	bl FUN_ov62_0211c800
	mov r1, r0
	mov r0, r8
	bl FUN_ov62_0211c32c
	mov r0, r8
	mov r2, r7
	mov r1, #3
	bl FUN_ov62_0211c800
	mov r1, r0
	mov r0, r8
	bl FUN_ov62_0211c32c
	mov r0, r8
	mov r1, #4
	mov r2, r7
	bl FUN_ov62_0211c800
	mov r1, r0
	mov r0, r8
	bl FUN_ov62_0211c32c
	mov r0, r8
	bl FUN_ov62_0211fd4c
	mov r0, r8
	bl FUN_ov62_0211fa00
	mov r2, r7
	mov r0, r8
	mov r1, #6
	bl FUN_ov62_0211c800
	mov r1, r0
	mov r0, r8
	bl FUN_ov62_0211c32c
	mov r1, #1
	mov r0, r8
	mov r2, r1
	bl FUN_ov62_0211c800
	mov r1, r0
	mov r0, r8
	bl FUN_ov62_0211c3e0
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CD64:
	mov r0, r8
	mov r1, r7
	mov r2, r7
	bl FUN_ov62_0211bb10
	mov r0, r8
	bl FUN_ov62_0211c844
	movs r4, r0
	ldrnesb r0, [r4, #8]
	cmpne r0, #0
	ble _0211CDD0
	ldrh r1, [r4]
	ldr r0, _0211D39C ; =0x0209BA20
	bl FUN_020EE034
	movs r2, r0
	beq _0211CDD0
	ldrsb r3, [r4, #8]
	ldrh r0, [r4, #6]
	add r10, sp, #0xc
	ldr r1, _0211D3A0 ; =0x02121030
	mul r0, r3, r0
	str r0, [sp]
	ldrsb r3, [r4, #8]
	mov r0, r10
	bl FUN_02023c40
	add r1, sp, #0x8c
	mov r0, r10
	bl FUN_020F1F5C
_0211CDD0:
	ldr r0, [r9]
	mov r1, r6
	bl FUN_0210EE78
	ldr r0, [r8, #0x514]
	add r1, r8, #0x500
	mov r2, #0x33
	strh r2, [r1, #0x10]
	bl FUN_021105C0
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0x98]
	mov r1, r7
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	mov r1, r5
	mov r2, r7
	bl FUN_02110624
	mov r9, #5
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0x9c]
	mov r1, r9
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xa0]
	mov r1, #6
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xa4]
	mov r1, #7
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	mov r1, #0x32
	bl FUN_02110864
	ldr r0, [r8, #0x514]
	mov r1, r5
	mov r2, #0x12
	mov r3, #0x13
	bl FUN_02110830
	ldr r0, [r8, #0x514]
	mov r1, r6
	bl FUN_0211085C
	mov r4, #0x38
	ldr r0, [r8, #0x514]
	mov r1, #0x18
	mov r2, r4
	bl FUN_021108B4
	mov r1, r4
	mov r4, #0x68
	ldr r0, [r8, #0x514]
	mov r2, r4
	bl FUN_021108C0
	ldr r0, [r8, #0x514]
	mov r2, r4
	mov r1, #0x98
	bl FUN_021108CC
	ldr r0, [r8, #0x514]
	mov r1, #0xf
	mov r2, #8
	bl FUN_021108E4
	ldr r0, [r8, #0x514]
	mov r1, r9
	mov r2, #3
	bl FUN_021108F0
	str r7, [sp]
	ldr r0, [r8, #0x514]
	mov r1, r5
	add r2, sp, #0x8c
	mov r3, r7
	bl FUN_02110938
	ldr r0, [r8, #0x514]
	mov r2, r7
	mov r1, #1
	bl FUN_02110A04
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CEF8:
	ldr r0, [r8, #0x504]
	mov r1, r7
	cmp r0, #0
	ldreq r0, _0211D3A4 ; =0x02121064
	mov r2, r7
	streq r0, [r8, #0x504]
	mov r0, r8
	bl FUN_ov62_0211bb10
	ldr r0, [r9]
	mov r1, r6
	bl FUN_0210EE78
	ldr r0, [r8, #0x514]
	bl FUN_021105C0
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0x94]
	mov r1, r4
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	mov r1, r5
	mov r2, r7
	bl FUN_02110624
	mov r9, #5
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0x9c]
	mov r1, r9
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xa0]
	mov r1, #6
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xa4]
	mov r1, #7
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	mov r1, #0x32
	bl FUN_02110864
	ldr r0, [r8, #0x514]
	mov r1, r5
	mov r2, #0x12
	mov r3, #0x13
	bl FUN_02110830
	ldr r0, [r8, #0x514]
	mov r1, r6
	bl FUN_0211085C
	ldr r0, [r8, #0x514]
	mov r1, #0x10
	mov r2, #0x40
	bl FUN_021108B4
	mov r1, #0x68
	ldr r0, [r8, #0x514]
	mov r2, r1
	bl FUN_021108D8
	ldr r0, [r8, #0x514]
	mov r1, r9
	mov r2, r5
	bl FUN_021108F0
	str r4, [sp]
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0x504]
	mov r1, #3
	mov r3, r4
	bl FUN_02110938
	ldr r0, [r8, #0x514]
	mov r1, r4
	mov r2, r7
	bl FUN_02110A04
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D00C:
	mov r0, r8
	mov r1, r7
	mov r2, r7
	bl FUN_ov62_0211bb10
	mov r0, r8
	add r1, r8, #0x500
	mov r2, #0x33
	strh r2, [r1, #0x10]
	bl FUN_ov62_0211c844
	cmp r0, #0
	beq _0211D08C
	ldrh r1, [r0]
	ldr r0, _0211D39C ; =0x0209BA20
	bl FUN_020EE034
	movs r3, r0
	beq _0211D08C
	ldr r1, _0211D3A8 ; =0x02120D7C
	add r2, sp, #4
	ldmia r1, {r0, r12}
	ldr r1, [r8, #0x540]
	str r0, [sp, #4]
	str r1, [sp]
	add r10, sp, #0xc
	ldr r1, [r8, #0x54c]
	str r12, [sp, #8]
	ldr r2, [r2, r1, lsl #2]
	ldr r1, _0211D3AC ; =0x02121080
	mov r0, r10
	bl FUN_02023c40
	add r1, sp, #0x8c
	mov r0, r10
	bl FUN_020F1F5C
_0211D08C:
	ldr r0, [r9]
	mov r1, r6
	bl FUN_0210EE78
	ldr r0, [r8, #0x514]
	bl FUN_021109A0
	ldr r0, [r8, #0x514]
	bl FUN_021105C0
	ldr r0, [r8, #0x514]
	mov r1, r5
	mov r2, r7
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xb4]
	mov r1, r7
	bl FUN_02110624
	mov r10, #5
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0x9c]
	mov r1, r10
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xa0]
	mov r1, #6
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xa4]
	mov r1, #7
	bl FUN_02110624
	mov r9, #0x32
	ldr r0, [r8, #0x514]
	mov r1, r9
	bl FUN_02110864
	ldr r0, [r8, #0x514]
	mov r1, r5
	mov r2, #0x12
	mov r3, #0x13
	bl FUN_02110830
	ldr r0, [r8, #0x514]
	mov r1, r6
	bl FUN_0211085C
	mov r6, #0x38
	ldr r0, [r8, #0x514]
	mov r1, #8
	mov r2, r6
	bl FUN_021108B4
	mov r1, r6
	mov r6, #0x69
	ldr r0, [r8, #0x514]
	mov r2, r6
	bl FUN_021108C0
	ldr r0, [r8, #0x514]
	mov r2, r6
	mov r1, #0x98
	bl FUN_021108CC
	ldr r0, [r8, #0x514]
	mov r1, r10
	mov r2, #3
	bl FUN_021108F0
	ldr r0, [r8, #0x514]
	mov r1, r9
	bl FUN_02110930
	str r7, [sp]
	ldr r0, [r8, #0x514]
	mov r1, r5
	add r2, sp, #0x8c
	mov r3, r4
	bl FUN_02110938
	ldr r0, [r8, #0x514]
	mov r1, r4
	mov r2, r7
	bl FUN_02110A04
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D1B0:
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl FUN_ov62_0211c800
	mov r1, r0
	mov r0, r8
	bl FUN_ov62_0211c32c
	mov r0, r8
	mov r1, r7
	mov r2, r7
	bl FUN_ov62_0211bb10
	ldr r0, [r9]
	mov r1, r6
	bl FUN_0210EE78
	mov r0, r8
	add r1, r8, #0x500
	mov r2, #0xc3
	strh r2, [r1, #0x10]
	bl FUN_ov62_0211f79c
	mov r0, r8
	bl FUN_ov62_0211fac8
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D20C:
	mov r0, r8
	bl FUN_ov62_0211fd4c
	mov r0, r8
	bl FUN_ov62_0211fa00
	mov r0, r8
	mov r1, r7
	mov r2, r7
	bl FUN_ov62_0211bb10
	add r0, r8, #0x500
	strh r4, [r0, #0x10]
	mov r0, r8
	bl FUN_ov62_0211c844
	cmp r0, #0
	beq _0211D294
	ldrh r1, [r0]
	ldr r0, _0211D39C ; =0x0209BA20
	bl FUN_020EE034
	movs r10, r0
	beq _0211D294
	ldr r2, [r8, #0x8d8]
	ldr r1, [r8, #0x8fc]
	mov r0, #0x2c
	add r1, r2, r1
	mla r0, r1, r0, r8
	add r0, r0, #0x500
	ldrh r0, [r0, #0x70]
	mov r1, r7
	bl FUN_020EFA9C
	mov r2, r0
	ldr r1, _0211D3B0 ; =0x02121094
	add r0, sp, #0x8c
	add r2, r2, #0x1c
	mov r3, r10
	bl FUN_02023c40
_0211D294:
	ldr r0, [r9]
	mov r1, r6
	bl FUN_0210EE78
	ldr r0, [r8, #0x514]
	bl FUN_021105C0
	ldr r0, [r8, #0x514]
	mov r1, r5
	mov r2, r7
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xb8]
	mov r1, r7
	bl FUN_02110624
	mov r10, #5
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0x9c]
	mov r1, r10
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xa0]
	mov r1, #6
	bl FUN_02110624
	ldr r0, [r8, #0x514]
	ldr r2, [r8, #0xa4]
	mov r1, #7
	bl FUN_02110624
	mov r9, #0x32
	ldr r0, [r8, #0x514]
	mov r1, r9
	bl FUN_02110864
	ldr r0, [r8, #0x514]
	mov r1, r5
	mov r2, #0x12
	mov r3, #0x13
	bl FUN_02110830
	ldr r0, [r8, #0x514]
	mov r1, r6
	bl FUN_0211085C
	ldr r0, [r8, #0x514]
	mov r1, #0x10
	mov r2, #0x39
	bl FUN_021108B4
	ldr r0, [r8, #0x514]
	mov r1, #0x68
	mov r2, #0x69
	bl FUN_021108D8
	ldr r0, [r8, #0x514]
	mov r1, r10
	mov r2, #3
	bl FUN_021108F0
	ldr r0, [r8, #0x514]
	mov r1, r9
	bl FUN_02110930
	str r7, [sp]
	ldr r0, [r8, #0x514]
	mov r1, r4
	add r2, sp, #0x8c
	mov r3, r4
	bl FUN_02110938
	ldr r0, [r8, #0x514]
	mov r1, r4
	mov r2, r7
	bl FUN_02110A04
_0211D390:
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D398: .word 0x02099EB4
_0211D39C: .word 0x0209BA20
_0211D3A0: .word 0x02121030
_0211D3A4: .word 0x02121064
_0211D3A8: .word 0x02120D7C
_0211D3AC: .word 0x02121080
_0211D3B0: .word 0x02121094
	arm_func_end FUN_ov62_0211cc4c

	arm_func_start FUN_ov62_0211d3b4
FUN_ov62_0211d3b4: ; 0x0211D3B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	ldr r2, _0211D5F4 ; =0x02099EB4
	mov r5, r1
	mov r7, r0
	mov r1, r5, lsl #0x10
	ldr r0, [r2]
	mov r1, r1, lsr #0x10
	mov r4, #1
	mov r8, #0
	bl FUN_0210E7D0
	mov r9, r0
	mov r0, r7
	bl FUN_ov62_0211c7e0
	cmp r9, #0
	mov r6, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #5
	blt _0211D4F8
	cmp r5, #0xc
	bgt _0211D4F8
	cmp r6, #0
	ldrne r1, [r6]
	ldrne r0, [r6, #0xc]
	subne r5, r5, #5
	subne r0, r1, r0
	cmpne r5, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	b _0211D44C
_0211D430:
	cmp r8, r5
	addne r0, r7, r8, lsl #2
	ldrne r0, [r0, #0x524]
	cmpne r0, #0
	beq _0211D448
	bl FUN_0210FA20
_0211D448:
	add r8, r8, #1
_0211D44C:
	cmp r8, #7
	blt _0211D430
	mov r0, r7
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldrnesb r1, [r0, #8]
	cmpne r1, #0
	ble _0211D480
	strb r4, [r0, #8]
	mov r0, r7
	mov r1, r6
	mov r2, #0
	bl FUN_ov62_0211c084
_0211D480:
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #4]
	add r1, r5, r1
	cmp r1, r0
	blt _0211D4A0
	ldr r0, _0211D5F8 ; =0x0209AC44
	mov r1, #9
	b _0211D4A8
_0211D4A0:
	ldr r0, _0211D5F8 ; =0x0209AC44
	mov r1, #8
_0211D4A8:
	bl FUN_0202cf6c
	mov r0, r7
	bl FUN_ov62_0211acbc
	str r4, [sp]
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r6
	add r2, r5, r2
	mov r3, #4
	bl FUN_ov62_0211c170
	ldr r0, _0211D5F4 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_0210EE78
	mov r0, r7
	bl FUN_ov62_0211c898
	mov r0, r7
	bl FUN_ov62_0211aba0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D4F8:
	cmp r5, #0x12
	bne _0211D518
	ldr r0, [r7, #0x514]
	mov r1, #1
	mov r2, #0
	bl FUN_02110A04
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D518:
	cmp r5, #0x13
	bne _0211D538
	ldr r0, [r7, #0x514]
	mov r1, #0
	mov r2, #1
	bl FUN_02110A04
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D538:
	cmp r5, #0x18
	bne _0211D560
	ldr r0, _0211D5F4 ; =0x02099EB4
	add r1, sp, #4
	ldr r0, [r0]
	bl FUN_0210F48C
	ldrsh r0, [sp, #6]
	add sp, sp, #8
	str r0, [r7, #0x904]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D560:
	cmp r5, #0x14
	cmpne r5, #0x16
	bne _0211D584
	mov r0, r7
	mov r1, r5
	str r8, [r7, #0x908]
	bl FUN_ov62_0211ffb0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D584:
	cmp r5, #0x15
	cmpne r5, #0x17
	bne _0211D5A8
	mov r0, r7
	mov r1, r5
	str r8, [r7, #0x908]
	bl FUN_ov62_0212003c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D5A8:
	cmp r5, #0x1b
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0x23
	addgt sp, sp, #8
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x8d8]
	sub r1, r5, #0x1b
	cmp r1, r0
	ldreq r0, _0211D5F4 ; =0x02099EB4
	addeq sp, sp, #8
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r4, [r0, #0x38]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl FUN_ov62_0211fe2c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D5F4: .word 0x02099EB4
_0211D5F8: .word 0x0209AC44
	arm_func_end FUN_ov62_0211d3b4

	arm_func_start FUN_ov62_0211d5fc
FUN_ov62_0211d5fc: ; 0x0211D5FC
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r5, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r5, #0x54b]
	ldrb r0, [r5, #0x54a]
	add r3, r5, #0x4b
	add r1, r1, #1
	strb r1, [r5, #0x54b]
	cmp r0, #0
	bne _0211D65C
	ldr r2, _0211D83C ; =0x66666667
	and r4, r1, #0xff
	smull r1, r6, r2, r4
	mov r0, r4, lsr #0x1f
	add r6, r0, r6, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r6
	sub r6, r4, r0
	tst r6, #0xff
	moveq r0, #1
	strb r6, [r3, #0x500]
	streqb r0, [r5, #0x54a]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D65C:
	cmp r4, #0xd
	bgt _0211D684
	bge _0211D6B4
	cmp r4, #4
	bgt _0211D6C4
	cmp r4, #3
	blt _0211D6C4
	cmpne r4, #4
	beq _0211D690
	b _0211D6C4
_0211D684:
	cmp r4, #0xe
	beq _0211D6B4
	b _0211D6C4
_0211D690:
	ldrb r3, [r5, #0x54b]
	ldr r1, _0211D840 ; =0x2AAAAAAB
	mov r2, #6
_0211D69C:
	smull r0, r6, r1, r3
	add r6, r6, r3, lsr #31
	smull r0, r1, r2, r6
	sub r6, r3, r0
	strb r6, [r5, #0x54b]
	b _0211D6E8
_0211D6B4:
	ldrb r3, [r5, #0x54b]
	ldr r1, _0211D844 ; =0x55555556
	mov r2, #3
	b _0211D69C
_0211D6C4:
	ldrb r6, [r5, #0x54b]
	ldr r3, _0211D83C ; =0x66666667
	mov r2, #5
	mov r0, r6, lsr #0x1f
	smull r1, r12, r3, r6
	add r12, r0, r12, asr #1
	smull r0, r1, r2, r12
	sub r12, r6, r0
	strb r12, [r5, #0x54b]
_0211D6E8:
	ldrb r0, [r5, #0x54b]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r1, #2
	mov r0, r5
	strb r1, [r5, #0x54a]
	bl FUN_ov62_0211c7e0
	mov r6, r0
	cmp r4, #0xd
	bgt _0211D734
	bge _0211D81C
	cmp r4, #4
	ldmgtfd sp!, {r4, r5, r6, pc}
	cmp r4, #3
	ldmltfd sp!, {r4, r5, r6, pc}
	beq _0211D750
	cmp r4, #4
	beq _0211D7B0
	ldmfd sp!, {r4, r5, r6, pc}
_0211D734:
	cmp r4, #0xe
	bgt _0211D744
	beq _0211D82C
	ldmfd sp!, {r4, r5, r6, pc}
_0211D744:
	cmp r4, #0x18
	beq _0211D810
	ldmfd sp!, {r4, r5, r6, pc}
_0211D750:
	mov r0, r5
	mov r1, #0x20
	bl FUN_ov62_0211e368
	cmp r0, #0
	beq _0211D784
	ldr r0, _0211D848 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, r6
	mov r2, #1
	bl FUN_ov62_0211c084
	ldmfd sp!, {r4, r5, r6, pc}
_0211D784:
	mov r0, r5
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D848 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211D7B0:
	mov r0, r5
	mov r1, #0x10
	bl FUN_ov62_0211e368
	cmp r0, #0
	beq _0211D7E4
	ldr r0, _0211D848 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, r6
	mov r2, #1
	bl FUN_ov62_0211c084
	ldmfd sp!, {r4, r5, r6, pc}
_0211D7E4:
	mov r0, r5
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D848 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211D810:
	mov r0, r5
	bl FUN_ov62_021201b8
	ldmfd sp!, {r4, r5, r6, pc}
_0211D81C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov62_021200d0
	ldmfd sp!, {r4, r5, r6, pc}
_0211D82C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov62_021200d0
	ldmfd sp!, {r4, r5, r6, pc}
_0211D83C: .word 0x66666667
_0211D840: .word 0x2AAAAAAB
_0211D844: .word 0x55555556
_0211D848: .word 0x0209AC44
	arm_func_end FUN_ov62_0211d5fc

	arm_func_start FUN_ov62_0211d84c
FUN_ov62_0211d84c: ; 0x0211D84C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r4, _0211DC2C ; =0x02099EB4
	mov r6, r1
	mov r8, r0
	mov r1, r6, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	mov r5, #1
	bl FUN_0210E7D0
	mov r7, r0
	mov r0, r8
	bl FUN_ov62_0211c7e0
	cmp r7, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r2, [r7, #0xc]
	cmp r2, #0
	beq _0211D8B8
	add r1, r8, #0x500
	ldrh r1, [r1, #0x10]
	tst r2, r1
	ldrne r0, [r4]
	addne sp, sp, #4
	addne r0, r0, #0xf00
	strneh r2, [r0, #0x38]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211D8B8:
	cmp r6, #5
	blt _0211D8CC
	cmp r6, #0xc
	addle sp, sp, #4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211D8CC:
	cmp r6, #0xd
	bne _0211D988
	mov r0, r8
	bl FUN_ov62_0211c7e0
	mov r6, r0
	ldrb r0, [r6, #0x75]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211DC30 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r8
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldrnesb r1, [r0, #8]
	cmpne r1, #0
	ble _0211D928
	strb r5, [r0, #8]
	mov r0, r8
	mov r1, r6
	mov r2, #0
	bl FUN_ov62_0211c084
_0211D928:
	mov r0, r8
	bl FUN_ov62_0211acbc
	mov r0, r8
	bl FUN_ov62_0211c7e0
	mvn r5, #0
	mov r1, r0
	mov r0, r8
	mov r2, r5
	mov r3, #0
	bl FUN_ov62_0211c310
	mov r1, r6
	mov r2, r5
	mov r0, r8
	mov r3, #1
	bl FUN_ov62_0211c228
	ldr r0, [r4]
	mov r1, #0xa
	bl FUN_0210EE78
	mov r0, r8
	bl FUN_ov62_0211c898
	mov r0, r8
	bl FUN_ov62_0211aba0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211D988:
	cmp r6, #0xe
	bne _0211DA40
	mov r0, r8
	bl FUN_ov62_0211c7e0
	mov r6, r0
	ldrb r0, [r6, #0x75]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211DC30 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r8
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldrnesb r1, [r0, #8]
	cmpne r1, #0
	ble _0211D9E4
	strb r5, [r0, #8]
	mov r0, r8
	mov r1, r6
	mov r2, #0
	bl FUN_ov62_0211c084
_0211D9E4:
	mov r0, r8
	bl FUN_ov62_0211acbc
	mov r0, r8
	bl FUN_ov62_0211c7e0
	mov r1, r0
	mov r0, r8
	mov r2, r5
	mov r3, #0
	bl FUN_ov62_0211c310
	mov r1, r6
	mov r0, r8
	mov r2, r5
	mov r3, r5
	bl FUN_ov62_0211c228
	ldr r0, [r4]
	mov r1, #0xa
	bl FUN_0210EE78
	mov r0, r8
	bl FUN_ov62_0211c898
	mov r0, r8
	bl FUN_ov62_0211aba0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DA40:
	cmp r6, #0xf
	bne _0211DB04
	mov r0, r8
	bl FUN_ov62_0211c7e0
	mov r6, r0
	ldrb r0, [r6, #0x75]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211DC30 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r8
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldrnesb r1, [r0, #8]
	cmpne r1, #0
	ble _0211DA9C
	strb r5, [r0, #8]
	mov r0, r8
	mov r1, r6
	mov r2, #0
	bl FUN_ov62_0211c084
_0211DA9C:
	mov r0, r8
	bl FUN_ov62_0211acbc
	mov r2, #0
	ldr r7, [r6, #0x10]
	mov r0, r8
	mov r1, r6
	mov r3, r2
	str r5, [sp]
	bl FUN_ov62_0211c274
	mov r0, r6
	mov r1, r7
	bl FUN_020F52F4
	str r7, [r6, #0x10]
	mov r1, r6
	mov r2, r5
	mov r0, r8
	bl FUN_ov62_0211ca34
	ldr r0, [r4]
	mov r1, #0xa
	bl FUN_0210EE78
	mov r0, r8
	bl FUN_ov62_0211c898
	mov r0, r8
	bl FUN_ov62_0211aba0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DB04:
	cmp r6, #0x10
	bne _0211DBDC
	mov r0, r8
	bl FUN_ov62_0211c7e0
	mov r6, r0
	ldrb r0, [r6, #0x75]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211DC30 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r8
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldrnesb r1, [r0, #8]
	cmpne r1, #0
	ble _0211DB60
	strb r5, [r0, #8]
	mov r0, r8
	mov r1, r6
	mov r2, #0
	bl FUN_ov62_0211c084
_0211DB60:
	mov r0, r8
	bl FUN_ov62_0211acbc
	ldr r0, [r6, #4]
	ldr r7, [r6, #0x10]
	sub r2, r0, #7
	cmp r0, #7
	movlt r2, #0
	mov r0, r8
	mov r1, r6
	str r5, [sp]
	mov r3, #0
	bl FUN_ov62_0211c274
	ldr r2, [r6, #4]
	rsb r1, r7, #7
	mov r0, r6
	sub r1, r2, r1
	bl FUN_020F52F4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	str r7, [r6, #0x10]
	bl FUN_ov62_0211ca34
	ldr r0, [r4]
	mov r1, #0xa
	bl FUN_0210EE78
	mov r0, r8
	bl FUN_ov62_0211c898
	mov r0, r8
	bl FUN_ov62_0211aba0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DBDC:
	cmp r6, #0x12
	cmpne r6, #0x13
	ldreq r0, [r4]
	addeq sp, sp, #4
	addeq r0, r0, #0xf00
	streqh r5, [r0, #0x38]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0x19
	ldreq r0, [r4]
	addeq sp, sp, #4
	addeq r0, r0, #0xf00
	streqh r5, [r0, #0x38]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0x1a
	ldreq r0, [r4]
	moveq r1, #2
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DC2C: .word 0x02099EB4
_0211DC30: .word 0x0209AC44
	arm_func_end FUN_ov62_0211d84c

	arm_func_start FUN_ov62_0211dc34
FUN_ov62_0211dc34: ; 0x0211DC34
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	movs r7, r2
	mov r8, r0
	mov r6, r1
	mov r4, #0
	bne _0211DC68
	bl FUN_ov62_0211cc44
	cmp r0, #5
	cmpeq r6, #0x18
	bne _0211DC68
	mov r0, r8
	bl FUN_ov62_021201b8
_0211DC68:
	ldr r9, _0211DE10 ; =0x02099EB4
	mov r1, r6, lsl #0x10
	ldr r0, [r9]
	mov r1, r1, lsr #0x10
	bl FUN_0210E7D0
	mov r10, r0
	mov r0, r8
	bl FUN_ov62_0211c7e0
	mov r5, r0
	ldr r0, [r9]
	add r1, sp, #4
	bl FUN_0210F48C
	cmp r10, #0
	cmpne r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r6, #0x11
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsh r1, [r5, #0x78]
	ldrsh r0, [r5, #0xa0]
	ldrsh r3, [r5, #0x7a]
	ldrsh r2, [r5, #0xa2]
	add r0, r1, r0
	ldrsh r1, [sp, #6]
	strh r0, [sp, #4]
	ldrsh r0, [r5, #0xaa]
	add r6, r3, r2
	sub r0, r1, r0, asr #1
	strh r0, [sp, #6]
	ldrsh r1, [sp, #6]
	cmp r1, r6
	strlth r6, [sp, #6]
	blt _0211DD00
	ldrsh r0, [r5, #0xa6]
	add r0, r6, r0
	cmp r1, r0
	strgeh r0, [sp, #6]
_0211DD00:
	cmp r7, #0
	bne _0211DD20
	str r4, [sp]
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r8
	mov r1, r5
	bl FUN_ov62_0211ca9c
_0211DD20:
	ldrsh r2, [sp, #6]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	sub r2, r2, r6
	sub r0, r1, r0
	add r1, r0, #1
	mul r0, r1, r2
	ldrsh r1, [r5, #0xa6]
	bl FUN_0201f9bc
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	mov r4, r0
	cmp r2, r1
	movlt r4, #0
	blt _0211DD74
	cmp r4, #0
	movlt r4, #0
	blt _0211DD74
	sub r0, r2, r1
	cmp r4, r0
	movge r4, r0
_0211DD74:
	mov r0, r8
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldrnesb r1, [r0, #8]
	cmpne r1, #0
	ble _0211DDA4
	mov r1, #1
	strb r1, [r0, #8]
	mov r0, r8
	mov r1, r5
	mov r2, #0
	bl FUN_ov62_0211c084
_0211DDA4:
	mov r0, r8
	bl FUN_ov62_0211acbc
	ldr r6, [r5, #0x10]
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, #0
	str r7, [sp]
	bl FUN_ov62_0211c274
	mov r0, r5
	add r1, r4, r6
	bl FUN_020F52F4
	mov r0, r8
	str r6, [r5, #0x10]
	mov r1, r5
	mov r2, #1
	bl FUN_ov62_0211ca34
	ldr r0, _0211DE10 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_0210EE78
	mov r0, r8
	bl FUN_ov62_0211c898
	mov r0, r8
	bl FUN_ov62_0211aba0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DE10: .word 0x02099EB4
	arm_func_end FUN_ov62_0211dc34

	arm_func_start FUN_ov62_0211de14
FUN_ov62_0211de14: ; 0x0211DE14
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add r0, r0, #0x500
	ldrh r0, [r0, #0x10]
	ldr r4, _0211DE60 ; =0x02099EB4
	add r2, sp, #0
	and r0, r1, r0
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_0210EC34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_0210EF88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211DE60: .word 0x02099EB4
	arm_func_end FUN_ov62_0211de14

	arm_func_start FUN_ov62_0211de64
FUN_ov62_0211de64: ; 0x0211DE64
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x8c
	sub sp, sp, #0x1000
	mov r10, r0
	ldrb r0, [r10, #0x1c]
	ldr r6, _0211E318 ; =0x0209BA20
	cmp r0, #0
	bne _0211E0F4
	add r2, sp, #0x4c
	mov r1, #8
_0211DE8C:
	mov r0, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	add r2, r2, #8
	subs r1, r1, #1
	bne _0211DE8C
	add r2, sp, #0xc
	mov r1, #8
_0211DEB4:
	mov r0, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	add r2, r2, #8
	subs r1, r1, #1
	bne _0211DEB4
	ldr r0, _0211E31C ; =0x02099F44
	add r5, sp, #0x4c
	mov r9, #0
	ldr r0, [r0]
	mov r1, r5
	mov r3, r9
	mov r2, #0x20
	bl FUN_0213AE70
	add r1, r10, #0x500
	ldrh r1, [r1, #0x48]
	str r0, [sp, #8]
	mov r7, r9
	mov r11, r9
	cmp r1, #0
	ble _0211DFA0
_0211DF10:
	ldr r0, [r10, #0x544]
	mov r4, r11, lsl #1
	ldrh r0, [r0, r4]
	cmp r0, #0
	beq _0211DF8C
	mov r8, #0
_0211DF28:
	mov r0, r8, lsl #1
	ldrh r1, [r5, r0]
	cmp r1, #0
	beq _0211DF74
	ldr r0, [r10, #0x544]
	ldrh r0, [r4, r0]
	cmp r0, r1
	bne _0211DF74
	mov r0, r6
	bl FUN_020EE034
	cmp r0, #0
	beq _0211DF74
	mov r0, r8, lsl #1
	ldrh r2, [r5, r0]
	mov r1, r9, lsl #1
	add r0, sp, #0xc
	add r9, r9, #1
	strh r2, [r0, r1]
	b _0211DF80
_0211DF74:
	add r8, r8, #1
	cmp r8, #0x20
	blt _0211DF28
_0211DF80:
	ldr r0, [sp, #8]
	cmp r0, r9
	beq _0211DFA0
_0211DF8C:
	add r0, r10, #0x500
	ldrh r0, [r0, #0x48]
	add r11, r11, #1
	cmp r11, r0
	blt _0211DF10
_0211DFA0:
	ldr r0, [sp, #8]
	ldr r5, _0211E318 ; =0x0209BA20
	cmp r0, #0
	mov r8, #0
	ble _0211E074
	ldr r11, _0211E31C ; =0x02099F44
	add r4, sp, #0xc
_0211DFBC:
	mov r0, r8, lsl #1
	ldrh r1, [r4, r0]
	mov r0, r5
	bl FUN_020EE034
	movs r9, r0
	beq _0211E064
	mov r0, #0xc
	mul r2, r7, r0
	mov r0, r8, lsl #1
	ldrh r1, [r4, r0]
	ldr r3, [r10, #0x4fc]
	mov r0, r5
	strh r1, [r3, r2]
	add r6, r3, r2
	ldrh r2, [r9, #0x22]
	strh r2, [r6, #2]
	bl FUN_020EDEC4
	strh r0, [r6, #4]
	ldrh r1, [r9, #0x20]
	mov r0, r8, lsl #1
	ldrh r0, [r4, r0]
	strh r1, [r6, #6]
	ldr r1, [r10, #0x51c]
	cmp r1, r0
	ldreq r0, [r10, #0x518]
	movne r0, #1
	strb r0, [r6, #8]
	ldrb r2, [r9, #0x25]
	mov r0, r8, lsl #1
	ldrh r1, [r4, r0]
	strb r2, [r6, #9]
	ldr r0, [r11]
	mov r2, #1
	bl FUN_0213B0B0
	mov r1, r8, lsl #1
	strb r0, [r6, #0xa]
	ldrh r1, [r4, r1]
	mov r0, r5
	mov r2, #0
	bl FUN_020EE58C
	strb r0, [r6, #0xb]
	add r7, r7, #1
_0211E064:
	ldr r0, [sp, #8]
	add r8, r8, #1
	cmp r8, r0
	blt _0211DFBC
_0211E074:
	mov r6, #0
	ldr r4, _0211E318 ; =0x0209BA20
	mov r5, r6
_0211E080:
	mov r0, r4
	mov r1, r5
	bl FUN_020EDEC4
	cmp r0, #0
	beq _0211E0CC
	mov r0, r4
	mov r1, r5
	bl FUN_020EE034
	cmp r0, #0
	beq _0211E0CC
	ldrb r1, [r0, #0x1d]
	add r1, r1, #0xf1
	and r1, r1, #0xff
	cmp r1, #1
	bhi _0211E0CC
	bl FUN_020EEF40
	mov r1, r0
	mov r0, r4
	bl FUN_02074a2c
_0211E0CC:
	add r5, r5, #1
	cmp r5, #0x400
	blt _0211E080
	add sp, sp, #0x8c
	mov r0, #1
	add sp, sp, #0x1000
	str r0, [r10, #0x518]
	str r6, [r10, #0x51c]
	str r7, [r10, #0x500]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E0F4:
	mov r0, #0
	str r0, [sp, #4]
	bl FUN_020F081C
	mov r1, r0
	ldr r0, _0211E318 ; =0x0209BA20
	bl FUN_0207249c
	mov r4, r0
	ldr r0, [sp, #4]
	add r1, sp, #0x8c
	mov r2, #0x800
	mov r7, r0
	bl FUN_02007804
	cmp r4, #0
	ldrneh r0, [r4, #0x30]
	add r5, sp, #0x800
	add r5, r5, #0x8c
	strne r0, [sp, #4]
	ldr r0, _0211E31C ; =0x02099F44
	mov r1, r5
	ldr r0, [r0]
	mov r2, #0x400
	bl FUN_0213ADE0
	add r1, r10, #0x500
	ldrh r1, [r1, #0x48]
	mov r8, r0
	mov r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _0211E20C
	add r11, sp, #0x8c
_0211E16C:
	ldr r0, [sp]
	ldr r1, [r10, #0x544]
	mov r4, r0, lsl #1
	ldrh r0, [r1, r4]
	cmp r0, #0
	movne r9, #0
	cmpne r8, #0
	ble _0211E1F0
_0211E18C:
	mov r0, r9, lsl #1
	ldrh r1, [r5, r0]
	cmp r1, #0
	beq _0211E1E4
	ldr r0, [r10, #0x544]
	ldrh r0, [r4, r0]
	cmp r0, r1
	bne _0211E1E4
	mov r0, r6
	bl FUN_020EE034
	cmp r0, #0
	beq _0211E1E4
	mov r0, r9, lsl #1
	ldrh r1, [r5, r0]
	mov r0, r6
	bl FUN_020EDEC4
	cmp r0, #0
	movgt r0, r9, lsl #1
	ldrgth r1, [r5, r0]
	movgt r0, r7, lsl #1
	addgt r7, r7, #1
	strgth r1, [r11, r0]
_0211E1E4:
	add r9, r9, #1
	cmp r9, r8
	blt _0211E18C
_0211E1F0:
	add r0, r10, #0x500
	ldrh r1, [r0, #0x48]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r1
	blt _0211E16C
_0211E20C:
	mov r6, #0
	mov r7, r6
	cmp r8, #0
	ldr r11, _0211E318 ; =0x0209BA20
	ble _0211E308
	add r5, sp, #0x8c
_0211E224:
	mov r0, r7, lsl #1
	ldrh r1, [r5, r0]
	cmp r1, #0
	beq _0211E2FC
	mov r0, r11
	bl FUN_020EE034
	movs r4, r0
	movne r1, r7, lsl #1
	ldrneh r3, [r5, r1]
	ldrne r0, [sp, #4]
	cmpne r0, r3
	beq _0211E2FC
	mov r0, #0xc
	mul r0, r6, r0
	ldr r2, [r10, #0x4fc]
	strh r3, [r2, r0]
	add r9, r2, r0
	ldrh r2, [r4, #0x22]
	mov r0, r11
	strh r2, [r9, #2]
	ldrh r1, [r5, r1]
	bl FUN_020EDEC4
	strh r0, [r9, #4]
	ldrh r0, [r4, #0x20]
	mov r2, #1
	mov r1, r7, lsl #1
	mov r0, r0, asr #1
	strh r0, [r9, #6]
	mov r0, r2
	strb r0, [r9, #8]
	ldrb r0, [r4, #0x25]
	strb r0, [r9, #9]
	ldr r0, _0211E31C ; =0x02099F44
	ldrh r1, [r5, r1]
	ldr r0, [r0]
	bl FUN_0213B0B0
	strb r0, [r9, #0xa]
	mov r1, r7, lsl #1
	ldrh r1, [r5, r1]
	mov r0, r11
	mov r2, #0
	bl FUN_020EE58C
	strb r0, [r9, #0xb]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #0xf1
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0211E2F8
	mov r0, r4
	bl FUN_020EEF40
	mov r1, r0
	mov r0, r11
	bl FUN_02074a2c
_0211E2F8:
	add r6, r6, #1
_0211E2FC:
	add r7, r7, #1
	cmp r7, r8
	blt _0211E224
_0211E308:
	str r6, [r10, #0x500]
	add sp, sp, #0x8c
	add sp, sp, #0x1000
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E318: .word 0x0209BA20
_0211E31C: .word 0x02099F44
	arm_func_end FUN_ov62_0211de64

	arm_func_start FUN_ov62_0211e320
FUN_ov62_0211e320: ; 0x0211E320
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, r1, lsl #0x10
	add r3, r0, #0x108
	ldr r0, [r0, #0x50]
	ldr r1, _0211E364 ; =0x021210AC
	mov r2, r2, lsr #0x10
	add r3, r3, #0x400
	bl FUN_020F55B4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211E364: .word 0x021210AC
	arm_func_end FUN_ov62_0211e320

	arm_func_start FUN_ov62_0211e368
FUN_ov62_0211e368: ; 0x0211E368
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r1
	mov r4, #1
	bl FUN_ov62_0211c844
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r9, #0x1c]
	cmp r0, #0
	beq _0211E454
	cmp r8, #1
	beq _0211E440
	cmp r8, #0x10
	beq _0211E408
	cmp r8, #0x20
	bne _0211E52C
	ldrsb r0, [r5, #8]
	cmp r0, #1
	subgt r0, r0, #1
	strgtb r0, [r5, #8]
	bgt _0211E400
	ldrsh r1, [r5, #4]
	ldr r0, _0211E534 ; =0x000F423F
	strb r1, [r5, #8]
	ldrsb r2, [r5, #8]
	ldrh r1, [r5, #6]
	mul r1, r2, r1
	cmp r1, r0
	ble _0211E400
_0211E3E0:
	ldrsb r1, [r5, #8]
	sub r1, r1, #1
	strb r1, [r5, #8]
	ldrsb r2, [r5, #8]
	ldrh r1, [r5, #6]
	mul r1, r2, r1
	cmp r1, r0
	bgt _0211E3E0
_0211E400:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E408:
	ldrsb r1, [r5, #8]
	ldrsh r0, [r5, #4]
	cmp r1, r0
	addlt r0, r1, #1
	strltb r0, [r5, #8]
	strgeb r4, [r5, #8]
	ldrsb r2, [r5, #8]
	ldrh r1, [r5, #6]
	ldr r0, _0211E534 ; =0x000F423F
	mul r1, r2, r1
	cmp r1, r0
	strgtb r4, [r5, #8]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E440:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0211E52C
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E454:
	ldr r6, _0211E538 ; =0x0209BA20
	mov r0, r6
	bl FUN_020EDF7C
	mov r7, r0
	ldrh r1, [r5]
	mov r0, r6
	bl FUN_020EDEB4
	rsb r6, r0, #0x63
	ldrh r1, [r5, #6]
	mov r0, r7
	bl FUN_0201f9bc
	cmp r8, #1
	beq _0211E4F0
	cmp r8, #0x10
	beq _0211E4C4
	cmp r8, #0x20
	bne _0211E52C
	cmp r0, r6
	movlt r6, r0
	cmp r6, #0
	beq _0211E52C
	ldrsb r0, [r5, #8]
	cmp r0, #1
	subgt r0, r0, #1
	strgtb r0, [r5, #8]
	strleb r6, [r5, #8]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E4C4:
	cmp r0, r6
	movlt r6, r0
	cmp r6, #0
	beq _0211E52C
	ldrsb r0, [r5, #8]
	cmp r0, r6
	addlt r0, r0, #1
	strltb r0, [r5, #8]
	strgeb r4, [r5, #8]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E4F0:
	cmp r6, #0
	ldreq r0, _0211E53C ; =0x021210C4
	streq r0, [r9, #0x504]
	beq _0211E52C
	cmp r0, r6
	movlt r6, r0
	cmp r6, #0
	ldreq r0, _0211E540 ; =0x021210F4
	streq r0, [r9, #0x504]
	ldrsb r1, [r5, #8]
	ldrh r0, [r5, #6]
	mul r0, r1, r0
	cmp r7, r0
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E52C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E534: .word 0x000F423F
_0211E538: .word 0x0209BA20
_0211E53C: .word 0x021210C4
_0211E540: .word 0x021210F4
	arm_func_end FUN_ov62_0211e368

	arm_func_start FUN_ov62_0211e544
FUN_ov62_0211e544: ; 0x0211E544
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r8, r1
	ldr r4, _0211EF08 ; =0x02099EB4
	mov r5, #1
	mov r10, #0
	bl FUN_ov62_0211c7e0
	ldr r2, _0211EF0C ; =0x0209A0F4
	add r1, r9, #0x500
	ldrh r2, [r2]
	ldrh r7, [r1, #0x10]
	mov r6, r0
	orr r1, r2, r8
	and r0, r8, r7
	and r1, r7, r1
	mov r2, r0, lsl #0x10
	ldr r3, _0211EF10 ; =0x02099ED4
	mov r1, r1, lsl #0x10
	ldr r0, [r3]
	mov r7, r1, lsr #0x10
	mov r8, r2, lsr #0x10
	bl FUN_0210E15C
	cmp r0, #0
	ldreq r0, [r9, #0x8f4]
	cmpeq r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4]
	bl FUN_0210F468
	cmp r0, #0
	beq _0211E5E4
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, r8
	strh r10, [r0, #0x38]
_0211E5E4:
	ldr r0, [r9, #0x10]
	ldr r4, _0211EF08 ; =0x02099EB4
	cmp r0, #4
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	and r0, r7, #0xf0
	orr r0, r0, r8
	mov r1, r0, lsl #0x10
	mov r0, r9
	mov r1, r1, lsr #0x10
	bl FUN_ov62_0211de14
	mov r0, r9
	bl FUN_ov62_0211cc44
	cmp r0, #6
	addhi sp, sp, #8
	ldmhifd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #8
	add pc, pc, r0, lsl #2
	mov r0, r0
	b _0211EF00
_0211E634:
	.byte 0x04, 0x00, 0x00, 0xEA, 0xD4, 0x00, 0x00, 0xEA, 0x41, 0x01, 0x00, 0xEA
	.byte 0x4F, 0x01, 0x00, 0xEA, 0x8F, 0x01, 0x00, 0xEA, 0x16, 0x02, 0x00, 0xEA, 0x00, 0x00, 0x58, 0xE3
	.byte 0x09, 0x00, 0x00, 0x0A, 0x00, 0xA0, 0xA0, 0xE3, 0x05, 0x00, 0x00, 0xEA, 0x0A, 0x01, 0x89, 0xE0
	.byte 0x24, 0x05, 0x90, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x00, 0x00, 0x00, 0x0A, 0xEB, 0xC4, 0xFF, 0xEB
	.byte 0x01, 0xA0, 0x8A, 0xE2, 0x07, 0x00, 0x5A, 0xE3, 0xF7, 0xFF, 0xFF, 0xBA, 0x01, 0x00, 0x18, 0xE3
	.byte 0x38, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x56, 0xE3, 0x08, 0xD0, 0x8D, 0x02, 0xF0, 0x87, 0xBD, 0x08
	.byte 0x10, 0x10, 0x96, 0xE5, 0x00, 0x00, 0x51, 0xE3, 0x08, 0xD0, 0x8D, 0xB2, 0xF0, 0x87, 0xBD, 0xB8
	.byte 0x08, 0x00, 0x96, 0xE5, 0x00, 0x00, 0x51, 0xE1, 0x08, 0xD0, 0x8D, 0xA2, 0xF0, 0x87, 0xBD, 0xA8
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x62, 0xF8, 0xFF, 0xEB, 0x00, 0x40, 0xB0, 0xE1, 0x08, 0xD0, 0x8D, 0x02
	.byte 0xF0, 0x87, 0xBD, 0x08, 0x09, 0x00, 0xA0, 0xE1, 0x05, 0x10, 0xA0, 0xE1, 0x25, 0xFF, 0xFF, 0xEB
	.byte 0x00, 0x00, 0x50, 0xE3, 0x09, 0x00, 0x00, 0x1A, 0x34, 0x08, 0x9F, 0xE5, 0x09, 0x10, 0xA0, 0xE3
	.byte 0x21, 0x3A, 0xFC, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x73, 0xF1, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0x03, 0x10, 0xA0, 0xE3, 0x4E, 0xF9, 0xFF, 0xEB, 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1, 0x8A, 0xF4, 0xFF, 0xEB, 0x00, 0x00, 0x54, 0xE3
	.byte 0xD8, 0x00, 0xD4, 0x11, 0x00, 0x00, 0x50, 0x13, 0x0E, 0x00, 0x00, 0x0A, 0xB0, 0x20, 0xD4, 0xE1
	.byte 0xEC, 0x07, 0x9F, 0xE5, 0x05, 0x10, 0xA0, 0xE1, 0x1C, 0x25, 0x89, 0xE5, 0xD8, 0x20, 0xD4, 0xE1
	.byte 0x18, 0x25, 0x89, 0xE5, 0x0C, 0x3A, 0xFC, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1
	.byte 0x7C, 0xF4, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x5B, 0xF1, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0x02, 0x10, 0xA0, 0xE3, 0x36, 0xF9, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x4D, 0xF8, 0xFF, 0xEB
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x02, 0x00, 0x18, 0xE3, 0x0A, 0x00, 0x00, 0x0A
	.byte 0x9C, 0x07, 0x9F, 0xE5, 0x04, 0x10, 0xA0, 0xE3, 0xFB, 0x39, 0xFC, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0x4D, 0xF1, 0xFF, 0xEB, 0x00, 0x10, 0xA0, 0xE3, 0x09, 0x00, 0xA0, 0xE1, 0x01, 0x20, 0xA0, 0xE1
	.byte 0x18, 0xF9, 0xFF, 0xEB, 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x40, 0x00, 0x17, 0xE3
	.byte 0x1D, 0x00, 0x00, 0x0A, 0x09, 0x00, 0xA0, 0xE1, 0x25, 0xF8, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0xD8, 0x10, 0xD0, 0x11, 0x00, 0x00, 0x51, 0x13, 0x04, 0x00, 0x00, 0xDA, 0x08, 0x50, 0xC0, 0xE5
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1, 0x00, 0x20, 0xA0, 0xE3, 0x2C, 0xF6, 0xFF, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x38, 0xF1, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1
	.byte 0x00, 0x20, 0xE0, 0xE3, 0x04, 0x30, 0xA0, 0xE3, 0x8E, 0xF6, 0xFF, 0xEB, 0x00, 0x00, 0x94, 0xE5
	.byte 0x0A, 0x10, 0xA0, 0xE3, 0x9F, 0xC1, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x25, 0xF8, 0xFF, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0xE5, 0xF0, 0xFF, 0xEB, 0x04, 0x07, 0x9F, 0xE5, 0x08, 0x10, 0xA0, 0xE3
	.byte 0xD5, 0x39, 0xFC, 0xEB, 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x80, 0x00, 0x17, 0xE3
	.byte 0x1D, 0x00, 0x00, 0x0A, 0x09, 0x00, 0xA0, 0xE1, 0x05, 0xF8, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0xD8, 0x10, 0xD0, 0x11, 0x00, 0x00, 0x51, 0x13, 0x04, 0x00, 0x00, 0xDA, 0x08, 0x50, 0xC0, 0xE5
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1, 0x00, 0x20, 0xA0, 0xE3, 0x0C, 0xF6, 0xFF, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x18, 0xF1, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1
	.byte 0x01, 0x20, 0xA0, 0xE3, 0x04, 0x30, 0xA0, 0xE3, 0x6E, 0xF6, 0xFF, 0xEB, 0x00, 0x00, 0x94, 0xE5
	.byte 0x0A, 0x10, 0xA0, 0xE3, 0x7F, 0xC1, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x05, 0xF8, 0xFF, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0xC5, 0xF0, 0xFF, 0xEB, 0x84, 0x06, 0x9F, 0xE5, 0x08, 0x10, 0xA0, 0xE3
	.byte 0xB5, 0x39, 0xFC, 0xEB, 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x20, 0x00, 0x17, 0xE3
	.byte 0x1B, 0x00, 0x00, 0x0A, 0x09, 0x00, 0xA0, 0xE1, 0x20, 0x10, 0xA0, 0xE3, 0xAD, 0xFE, 0xFF, 0xEB
	.byte 0x00, 0x00, 0x50, 0xE3, 0x08, 0x00, 0x00, 0x0A, 0x54, 0x06, 0x9F, 0xE5, 0x08, 0x10, 0xA0, 0xE3
	.byte 0xA9, 0x39, 0xFC, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1, 0x00, 0x20, 0xA0, 0xE3
	.byte 0xEB, 0xF5, 0xFF, 0xEB, 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x09, 0x00, 0xA0, 0xE1
	.byte 0xD7, 0xF7, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x08, 0xD0, 0x8D, 0x02, 0xF0, 0x87, 0xBD, 0x08
	.byte 0x1C, 0x00, 0xD9, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x08, 0xD0, 0x8D, 0x12, 0xF0, 0x87, 0xBD, 0x18
	.byte 0x0C, 0x06, 0x9F, 0xE5, 0x09, 0x10, 0xA0, 0xE3, 0x97, 0x39, 0xFC, 0xEB, 0x08, 0xD0, 0x8D, 0xE2
	.byte 0xF0, 0x87, 0xBD, 0xE8, 0x10, 0x00, 0x17, 0xE3, 0x08, 0xD0, 0x8D, 0x02, 0xF0, 0x87, 0xBD, 0x08
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x10, 0x10, 0xA0, 0xE3, 0x8E, 0xFE, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x08, 0x00, 0x00, 0x0A, 0xD8, 0x05, 0x9F, 0xE5, 0x08, 0x10, 0xA0, 0xE3, 0x8A, 0x39, 0xFC, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1, 0x00, 0x20, 0xA0, 0xE3, 0xCC, 0xF5, 0xFF, 0xEB
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x09, 0x00, 0xA0, 0xE1, 0xB8, 0xF7, 0xFF, 0xEB
	.byte 0x00, 0x00, 0x50, 0xE3, 0x08, 0xD0, 0x8D, 0x02, 0xF0, 0x87, 0xBD, 0x08, 0x1C, 0x00, 0xD9, 0xE5
	.byte 0x00, 0x00, 0x50, 0xE3, 0x08, 0xD0, 0x8D, 0x12, 0xF0, 0x87, 0xBD, 0x18, 0x90, 0x05, 0x9F, 0xE5
	.byte 0x09, 0x10, 0xA0, 0xE3, 0x78, 0x39, 0xFC, 0xEB, 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8
	.byte 0x01, 0x00, 0x18, 0xE3, 0x45, 0x00, 0x00, 0x0A, 0x14, 0x05, 0x99, 0xE5, 0x01, 0x60, 0xA0, 0xE3
	.byte 0x59, 0xC8, 0xFF, 0xEB, 0x14, 0x05, 0x99, 0xE5, 0x55, 0xC8, 0xFF, 0xEB, 0x01, 0x00, 0x50, 0xE3
	.byte 0x34, 0x00, 0x00, 0x1A, 0x58, 0x05, 0x9F, 0xE5, 0x58, 0x15, 0x9F, 0xE5, 0x6A, 0x39, 0xFC, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x9E, 0xF7, 0xFF, 0xEB, 0x1C, 0x10, 0xD9, 0xE5, 0x00, 0x40, 0xA0, 0xE1
	.byte 0x00, 0x00, 0x51, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x3C, 0x75, 0x9F, 0xE5, 0xB0, 0x10, 0xD4, 0xE1
	.byte 0xD8, 0x20, 0xD4, 0xE1, 0x00, 0x00, 0x97, 0xE5, 0xB0, 0x71, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x1F, 0x00, 0x00, 0x0A, 0xB0, 0x10, 0xD4, 0xE1, 0xD8, 0x20, 0xD4, 0xE1, 0x00, 0x00, 0x97, 0xE5
	.byte 0x64, 0x71, 0x00, 0xEB, 0x1A, 0x00, 0x00, 0xEA, 0x0C, 0x75, 0x9F, 0xE5, 0xB0, 0x10, 0xD4, 0xE1
	.byte 0xD8, 0x20, 0xD4, 0xE1, 0x00, 0x00, 0x97, 0xE5, 0x8B, 0x71, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x13, 0x00, 0x00, 0x0A, 0xB0, 0x10, 0xD4, 0xE1, 0xD8, 0x20, 0xD4, 0xE1, 0x00, 0x00, 0x97, 0xE5
	.byte 0xBA, 0x70, 0x00, 0xEB, 0xB0, 0x10, 0xD4, 0xE1, 0xE0, 0x04, 0x9F, 0xE5, 0x7C, 0x3D, 0xFF, 0xEB
	.byte 0x1D, 0x10, 0xD0, 0xE5, 0x16, 0x00, 0x51, 0xE3, 0x09, 0x00, 0x00, 0x3A, 0x1E, 0x00, 0x51, 0xE3
	.byte 0x07, 0x00, 0x00, 0x8A, 0xD8, 0x10, 0xD4, 0xE1, 0x04, 0x60, 0xA0, 0xE3, 0x4C, 0xA5, 0x89, 0xE5
	.byte 0x40, 0x15, 0x89, 0xE5, 0xB0, 0x10, 0xD4, 0xE1, 0x10, 0x19, 0x89, 0xE5, 0x1D, 0x00, 0xD0, 0xE5
	.byte 0x14, 0x09, 0x89, 0xE5, 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1, 0x18, 0x55, 0x89, 0xE5
	.byte 0x1C, 0xA5, 0x89, 0xE5, 0x04, 0x00, 0x00, 0xEA, 0x84, 0x04, 0x9F, 0xE5, 0x04, 0x10, 0xA0, 0xE3
	.byte 0x35, 0x39, 0xFC, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE1, 0x64, 0xF8, 0xFF, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x7B, 0xF7, 0xFF, 0xEB, 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8
	.byte 0x02, 0x00, 0x18, 0xE3, 0x0F, 0x00, 0x00, 0x0A, 0x14, 0x05, 0x99, 0xE5, 0x05, 0x20, 0xA0, 0xE1
	.byte 0x00, 0x10, 0xA0, 0xE3, 0xCE, 0xC7, 0xFF, 0xEB, 0x14, 0x05, 0x99, 0xE5, 0x0E, 0xC8, 0xFF, 0xEB
	.byte 0x3C, 0x04, 0x9F, 0xE5, 0x04, 0x10, 0xA0, 0xE3, 0x23, 0x39, 0xFC, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0x05, 0x10, 0xA0, 0xE1, 0x52, 0xF8, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x69, 0xF7, 0xFF, 0xEB
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x30, 0x00, 0x17, 0xE3, 0x08, 0xD0, 0x8D, 0x02
	.byte 0xF0, 0x87, 0xBD, 0x08, 0x08, 0x04, 0x9F, 0xE5, 0x17, 0x39, 0xFC, 0xEB, 0x14, 0x05, 0x99, 0xE5
	.byte 0xFB, 0xC7, 0xFF, 0xEB, 0x01, 0x00, 0x50, 0xE3, 0x14, 0x05, 0x99, 0xE5, 0x02, 0x00, 0x00, 0x1A
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x01, 0x20, 0xA0, 0xE3, 0x01, 0x00, 0x00, 0xEA, 0x01, 0x10, 0xA0, 0xE3
	.byte 0x00, 0x20, 0xA0, 0xE3, 0xB2, 0xC7, 0xFF, 0xEB, 0x14, 0x05, 0x99, 0xE5, 0xF2, 0xC7, 0xFF, 0xEB
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x01, 0x00, 0x18, 0xE3, 0x08, 0xD0, 0x8D, 0x02
	.byte 0xF0, 0x87, 0xBD, 0x08, 0xB8, 0x03, 0x9F, 0xE5, 0x05, 0x10, 0xA0, 0xE1, 0x02, 0x39, 0xFC, 0xEB
	.byte 0x14, 0x05, 0x99, 0xE5, 0xE8, 0xC7, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x05, 0x10, 0xA0, 0xE1
	.byte 0x2F, 0xF8, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x46, 0xF7, 0xFF, 0xEB, 0x08, 0xD0, 0x8D, 0xE2
	.byte 0xF0, 0x87, 0xBD, 0xE8, 0x01, 0x00, 0x18, 0xE3, 0x17, 0x00, 0x00, 0x0A, 0x14, 0x05, 0x99, 0xE5
	.byte 0xDD, 0xC7, 0xFF, 0xEB, 0x14, 0x05, 0x99, 0xE5, 0xD9, 0xC7, 0xFF, 0xEB, 0x01, 0x00, 0x50, 0xE3
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x07, 0x00, 0x00, 0x1A, 0x05, 0x10, 0xA0, 0xE3, 0xD8, 0xA8, 0x89, 0xE5
	.byte 0xFC, 0xA8, 0x89, 0xE5, 0x34, 0x50, 0x89, 0xE5, 0x1D, 0xF8, 0xFF, 0xEB, 0x50, 0x03, 0x9F, 0xE5
	.byte 0x05, 0x10, 0xA0, 0xE1, 0x03, 0x00, 0x00, 0xEA, 0x01, 0x10, 0xA0, 0xE3, 0x18, 0xF8, 0xFF, 0xEB
	.byte 0x3C, 0x03, 0x9F, 0xE5, 0x04, 0x10, 0xA0, 0xE3, 0xE3, 0x38, 0xFC, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0x2C, 0xF7, 0xFF, 0xEB, 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x02, 0x00, 0x18, 0xE3
	.byte 0x0F, 0x00, 0x00, 0x0A, 0x14, 0x05, 0x99, 0xE5, 0x05, 0x20, 0xA0, 0xE1, 0x00, 0x10, 0xA0, 0xE3
	.byte 0x7F, 0xC7, 0xFF, 0xEB, 0x14, 0x05, 0x99, 0xE5, 0xBF, 0xC7, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0x05, 0x10, 0xA0, 0xE1, 0x06, 0xF8, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x1D, 0xF7, 0xFF, 0xEB
	.byte 0xEC, 0x02, 0x9F, 0xE5, 0x04, 0x10, 0xA0, 0xE3, 0xCF, 0x38, 0xFC, 0xEB, 0x08, 0xD0, 0x8D, 0xE2
	.byte 0xF0, 0x87, 0xBD, 0xE8, 0x30, 0x00, 0x17, 0xE3, 0x08, 0xD0, 0x8D, 0x02, 0xF0, 0x87, 0xBD, 0x08
	.byte 0x14, 0x05, 0x99, 0xE5, 0xAE, 0xC7, 0xFF, 0xEB, 0x01, 0x00, 0x50, 0xE3, 0x14, 0x05, 0x99, 0xE5
	.byte 0x02, 0x00, 0x00, 0x1A, 0x00, 0x10, 0xA0, 0xE3, 0x01, 0x20, 0xA0, 0xE3, 0x01, 0x00, 0x00, 0xEA
	.byte 0x01, 0x10, 0xA0, 0xE3, 0x00, 0x20, 0xA0, 0xE3, 0x65, 0xC7, 0xFF, 0xEB, 0x14, 0x05, 0x99, 0xE5
	.byte 0xA5, 0xC7, 0xFF, 0xEB, 0x98, 0x02, 0x9F, 0xE5, 0x08, 0x10, 0xA0, 0xE3, 0xBA, 0x38, 0xFC, 0xEB
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x01, 0x00, 0x18, 0xE3, 0x26, 0x00, 0x00, 0x0A
	.byte 0xD8, 0x28, 0x99, 0xE5, 0xFC, 0x18, 0x99, 0xE5, 0x2C, 0x00, 0xA0, 0xE3, 0x01, 0x10, 0x82, 0xE0
	.byte 0x91, 0x90, 0x20, 0xE0, 0x74, 0x05, 0x90, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x04, 0x00, 0x00, 0x1A
	.byte 0x5C, 0x02, 0x9F, 0xE5, 0x09, 0x10, 0xA0, 0xE3, 0xAB, 0x38, 0xFC, 0xEB, 0x08, 0xD0, 0x8D, 0xE2
	.byte 0xF0, 0x87, 0xBD, 0xE8, 0x19, 0x60, 0xA0, 0xE3, 0x00, 0x00, 0x94, 0xE5, 0x06, 0x10, 0xA0, 0xE1
	.byte 0x1B, 0x70, 0x82, 0xE2, 0xB4, 0xC0, 0xFF, 0xEB, 0x07, 0x18, 0xA0, 0xE1, 0x00, 0x00, 0x94, 0xE5
	.byte 0x21, 0x18, 0xA0, 0xE1, 0xB0, 0xC0, 0xFF, 0xEB, 0x07, 0x18, 0xA0, 0xE1, 0x00, 0x00, 0x94, 0xE5
	.byte 0x21, 0x18, 0xA0, 0xE1, 0xAC, 0xC0, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0xDE, 0x06, 0x00, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x06, 0x10, 0xA0, 0xE3, 0xC9, 0xF7, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0xE0, 0xF6, 0xFF, 0xEB, 0xF8, 0x01, 0x9F, 0xE5, 0x06, 0x10, 0xA0, 0xE1, 0x92, 0x38, 0xFC, 0xEB
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0x34, 0x50, 0x89, 0xE5, 0xF0, 0x87, 0xBD, 0xE8, 0x02, 0x00, 0x18, 0xE3
	.byte 0x0C, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x94, 0xE5, 0x1A, 0x10, 0xA0, 0xE3, 0x9A, 0xC0, 0xFF, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x01, 0x10, 0xA0, 0xE3, 0xB9, 0xF7, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0xD0, 0xF6, 0xFF, 0xEB, 0xB8, 0x01, 0x9F, 0xE5, 0x04, 0x10, 0xA0, 0xE3, 0x82, 0x38, 0xFC, 0xEB
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0xC0, 0x00, 0x17, 0xE3, 0x08, 0xD0, 0x8D, 0x02
	.byte 0xF0, 0x87, 0xBD, 0x08, 0xA8, 0x21, 0x9F, 0xE5, 0x47, 0x03, 0xA0, 0xE1, 0x00, 0x50, 0x92, 0xE5
	.byte 0x04, 0x20, 0x92, 0xE5, 0xA0, 0x0C, 0x87, 0xE0, 0x04, 0x20, 0x8D, 0xE5, 0x00, 0x30, 0x8D, 0xE2
	.byte 0x00, 0x50, 0x8D, 0xE5, 0xC0, 0x03, 0xB0, 0xE1, 0xD8, 0x28, 0x99, 0xE5, 0x00, 0x01, 0x93, 0xE7
	.byte 0x00, 0x50, 0x82, 0xE0, 0x1C, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x55, 0xE3, 0x38, 0x00, 0x00, 0xAA
	.byte 0xFC, 0x08, 0x99, 0xE5, 0x0A, 0x50, 0xA0, 0xE1, 0x00, 0x00, 0x50, 0xE3, 0x0A, 0x00, 0x00, 0xDA
	.byte 0x01, 0x10, 0x40, 0xE2, 0x09, 0x00, 0xA0, 0xE1, 0xFC, 0x18, 0x89, 0xE5, 0xDE, 0x03, 0x00, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x3B, 0x03, 0x00, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x57, 0x04, 0x00, 0xEB
	.byte 0x00, 0x00, 0x94, 0xE5, 0x16, 0x10, 0xA0, 0xE3, 0x28, 0x00, 0x00, 0xEA, 0x28, 0x00, 0x00, 0xCA
	.byte 0x09, 0x00, 0xA0, 0xE1, 0xFC, 0x18, 0x89, 0xE5, 0x07, 0x50, 0xA0, 0xE3, 0xD2, 0x03, 0x00, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x2F, 0x03, 0x00, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x4B, 0x04, 0x00, 0xEB
	.byte 0x00, 0x00, 0x94, 0xE5, 0x15, 0x10, 0xA0, 0xE3, 0x1C, 0x00, 0x00, 0xEA, 0x07, 0x00, 0x55, 0xE3
	.byte 0x1B, 0x00, 0x00, 0xDA, 0xFC, 0x08, 0x99, 0xE5, 0x07, 0x50, 0xA0, 0xE3, 0x08, 0x00, 0x50, 0xE3
	.byte 0x0A, 0x00, 0x00, 0xAA, 0x01, 0x10, 0x80, 0xE2, 0x09, 0x00, 0xA0, 0xE1, 0xFC, 0x18, 0x89, 0xE5
	.byte 0xC1, 0x03, 0x00, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x1E, 0x03, 0x00, 0xEB, 0x09, 0x00, 0xA0, 0xE1
	.byte 0x3A, 0x04, 0x00, 0xEB, 0x00, 0x00, 0x94, 0xE5, 0x17, 0x10, 0xA0, 0xE3, 0x0B, 0x00, 0x00, 0xEA
	.byte 0x08, 0x00, 0x50, 0xE3, 0x0A, 0x00, 0x00, 0xBA, 0x09, 0x00, 0xA0, 0xE1, 0x0A, 0x50, 0xA0, 0xE1
	.byte 0xFC, 0xA8, 0x89, 0xE5, 0xB4, 0x03, 0x00, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x11, 0x03, 0x00, 0xEB
	.byte 0x09, 0x00, 0xA0, 0xE1, 0x2D, 0x04, 0x00, 0xEB, 0x00, 0x00, 0x94, 0xE5, 0x14, 0x10, 0xA0, 0xE3
	.byte 0x45, 0xC0, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x05, 0x10, 0xA0, 0xE1, 0xE2, 0x03, 0x00, 0xEB
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0xF0, 0x87, 0xBD, 0xE8, 0x01, 0x00, 0x18, 0xE3, 0x08, 0xD0, 0x8D, 0x02
	.byte 0xF0, 0x87, 0xBD, 0x08, 0x14, 0x05, 0x99, 0xE5, 0x13, 0xC7, 0xFF, 0xEB, 0x50, 0x00, 0x9F, 0xE5
	.byte 0x05, 0x10, 0xA0, 0xE1, 0x28, 0x38, 0xFC, 0xEB, 0x40, 0x05, 0x99, 0xE5, 0x01, 0x00, 0x40, 0xE2
	.byte 0x40, 0x05, 0x89, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x09, 0x00, 0xA0, 0xE1, 0x03, 0x00, 0x00, 0xDA
	.byte 0x04, 0x10, 0xA0, 0xE3, 0x52, 0xF7, 0xFF, 0xEB, 0x4C, 0x55, 0x89, 0xE5, 0x01, 0x00, 0x00, 0xEA
	.byte 0x05, 0x10, 0xA0, 0xE1, 0x4E, 0xF7, 0xFF, 0xEB, 0x09, 0x00, 0xA0, 0xE1, 0x65, 0xF6, 0xFF, 0xEB
_0211EF00:
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211EF08: .word 0x02099EB4
_0211EF0C: .word 0x0209A0F4
_0211EF10: .word 0x02099ED4
	arm_func_end FUN_ov62_0211e544
_0211EF14:
	.byte 0x44, 0xAC, 0x09, 0x02, 0xA6, 0x40, 0x00, 0x00, 0x44, 0x9F, 0x09, 0x02
	.byte 0x20, 0xBA, 0x09, 0x02, 0x48, 0x0C, 0x12, 0x02

	arm_func_start FUN_ov62_0211ef28
FUN_ov62_0211ef28: ; 0x0211EF28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211F03C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r2]
	mov r7, r1
	bl FUN_0210E15C
	cmp r0, #0
	ldreq r0, [r4, #0x8f4]
	cmpeq r0, #0
	ldreq r0, [r4, #0x10]
	cmpeq r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0211F040 ; =0x02099EB4
	mov r6, #0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl FUN_0210F20C
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EF7C: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211EF94 ; case 1
	b _0211EFCC ; case 2
	b _0211EFFC ; case 3
	b _0211F018 ; case 4
	b _0211EFB4 ; case 5
_0211EF94:
	strb r6, [r4, #0x54b]
	strb r6, [r4, #0x54a]
	ldr r0, [r5]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r4
	bl FUN_ov62_0211d3b4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EFB4:
	ldr r0, [r5]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r4
	bl FUN_ov62_0211d5fc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EFCC:
	ldrb r0, [r4, #0x54a]
	cmp r0, #2
	bhs _0211EFEC
	ldr r0, [r5]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r4
	bl FUN_ov62_0211d84c
_0211EFEC:
	mov r0, #0
	strb r0, [r4, #0x54b]
	strb r0, [r4, #0x54a]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EFFC:
	ldr r0, [r5]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl FUN_ov62_0211dc34
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F018:
	strb r6, [r4, #0x54b]
	strb r6, [r4, #0x54a]
	ldr r0, [r5]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl FUN_ov62_0211dc34
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F03C: .word 0x02099ED4
_0211F040: .word 0x02099EB4
	arm_func_end FUN_ov62_0211ef28

	arm_func_start FUN_ov62_0211f044
FUN_ov62_0211f044: ; 0x0211F044
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, _0211F254 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204da5c
	mov r0, #0x4000000
	ldr r1, [r0]
	ldr r0, _0211F258 ; =0x02099EB4
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r5, #0xf0]
	ldr r0, [r0]
	bl FUN_0210E980
	ldr r0, _0211F25C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_0210E0A0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211F260 ; =0x0209AC44
	mov r1, #6
	mov r2, r4
	mov r3, r4
	bl FUN_0202b838
	add r0, r5, #0x20
	mov r1, r4
	mov r2, #0x18
	bl MemWrite
	mov r7, #0x24
	add r0, r5, #0x38
	mov r1, r4
	mov r2, r7
	str r4, [r5, #0x20]
	str r4, [r5, #0xc]
	str r4, [r5, #8]
	str r4, [r5, #0x10]
	str r4, [r5, #0x14]
	str r4, [r5, #0xec]
	str r4, [r5, #0x504]
	bl MemWrite
	add r0, r5, #0x5c
	mov r1, r4
	mov r2, #0x68
	bl MemWrite
	mov r6, #0x28
	add r0, r5, #0xc4
	mov r1, r4
	mov r2, r6
	bl MemWrite
	add r2, r6, #0x3e0
	add r0, r5, #0xf4
	mov r1, r4
	bl MemWrite
	add r0, r5, #0xd8
	mov r2, r7
	add r0, r0, #0x800
	mov r1, r4
	bl MemWrite
	mov r0, #1
	strb r4, [r5, #0x54a]
	strb r4, [r5, #0x54b]
	str r4, [r5, #0x520]
	str r0, [r5, #0x518]
	mov r1, r4
	b _0211F15C
_0211F150:
	add r0, r5, r4, lsl #2
	str r1, [r0, #0x524]
	add r4, r4, #1
_0211F15C:
	cmp r4, #7
	blt _0211F150
	mov r4, #0x3000
	ldr r0, _0211F264 ; =0x0209A250
	mov r1, r4
	bl FUN_0202de44
	mov r1, r0
	mov r6, #0
	mov r0, r6
	mov r2, r4
	str r1, [r5, #0x4fc]
	bl FUN_0200787c
	ldr r4, _0211F268 ; =0x020A9C40
	str r6, [r5, #0x500]
	mov r0, r4
	bl FUN_020460fc
	and r1, r0, #0xff
	mov r0, r4
	str r1, [r5, #0x18]
	bl FUN_020460fc
	cmp r0, #0
	add r0, r5, #0x108
	movlt r6, #1
	add r0, r0, #0x400
	mov r1, #0x18
	strb r6, [r5, #0x1c]
	bl FUN_020F5278
	mov r0, #0x74
	bl FUN_0201e014
	cmp r0, #0
	beq _0211F1DC
	bl FUN_02110558
_0211F1DC:
	ldr r1, _0211F26C ; =0x02099F38
	str r0, [r5, #0x514]
	ldr r0, [r1]
	bl FUN_021123B4
	ldr r0, _0211F254 ; =0x0209BA20
	bl FUN_020EECA0
	mov r4, #0
	add r0, r5, #0x18
	mov r1, r4
	add r0, r0, #0x800
	mov r2, #0xc0
	str r4, [r5, #0x540]
	str r4, [r5, #0x54c]
	bl MemWrite
	mov r0, r5
	bl FUN_ov62_0211f528
	add r0, r5, #0x810
	mov r1, r4
	mov r2, #4
	bl MemWrite
	add r0, r5, #0x810
	mov r1, #0x10
	bl FUN_020F5278
	mov r1, r4
	add r0, r5, #0x910
	mov r2, #0xc
	bl MemWrite
	mov r0, r5
	bl FUN_ov62_021209ac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F254: .word 0x0209BA20
_0211F258: .word 0x02099EB4
_0211F25C: .word 0x02099ED4
_0211F260: .word 0x0209AC44
_0211F264: .word 0x0209A250
_0211F268: .word 0x020A9C40
_0211F26C: .word 0x02099F38
	arm_func_end FUN_ov62_0211f044

	arm_func_start FUN_ov62_0211f270
FUN_ov62_0211f270: ; 0x0211F270
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211F448 ; =0x0209A110
	ldr r5, _0211F44C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r5]
	ldr r1, [r1]
	bl FUN_0210E10C
	add r0, r4, #0x108
	add r0, r0, #0x400
	bl FUN_020F5868
	ldr r0, [r5]
	bl FUN_0210E15C
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov62_0211a2f4
	ldr r0, [r4, #0x10]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211F2C0: ; jump table
	b _0211F2DC ; case 0
	b _0211F2EC ; case 1
	b _0211F31C ; case 2
	b _0211F340 ; case 3
	b _0211F39C ; case 4
	b _0211F3B4 ; case 5
	b _0211F3D4 ; case 6
_0211F2DC:
	mov r0, r4
	bl FUN_ov62_02119f00
	mov r0, #1
	str r0, [r4, #0x10]
_0211F2EC:
	mov r0, r4
	bl FUN_ov62_0211a228
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r4, #0x810
	bl FUN_020F5868
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov62_02119f3c
	mov r0, #2
	str r0, [r4, #0x10]
_0211F31C:
	mov r0, r4
	bl FUN_ov62_0211a228
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov62_0211a078
	mov r0, r4
	mov r1, #1
	bl FUN_ov62_0211cc34
_0211F340:
	mov r0, r4
	bl FUN_ov62_0211a3e0
	mov r0, r4
	bl FUN_ov62_0211a460
	mov r0, r4
	bl FUN_ov62_0211a520
	mov r0, r4
	bl FUN_ov62_0211ab58
	mov r0, r4
	bl FUN_ov62_0211ab10
	mov r0, r4
	bl FUN_ov62_0211cc4c
	mov r0, r4
	bl FUN_ov62_0211c898
	mov r0, r4
	bl FUN_ov62_0211c634
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #4
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_0211F39C:
	ldr r0, [r4, #0x8f4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov62_0211feac
	ldmfd sp!, {r4, r5, r6, pc}
_0211F3B4:
	ldr r0, [r5]
	bl FUN_0210E15C
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #6
	mov r0, r5
	bl FUN_020F153C
	str r5, [r4, #0x10]
_0211F3D4:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	cmpeq r1, #0
	mov r1, #0
	bne _0211F420
	ldr r4, [r4, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r4, r5, r6, pc}
_0211F420:
	ldr r5, [r4, #4]
	ldr r6, [r4, #0xc]
	ldr r2, [r4, #8]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r6
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_0211F448: .word 0x0209A110
_0211F44C: .word 0x02099ED4
	arm_func_end FUN_ov62_0211f270

	arm_func_start FUN_ov62_0211f450
FUN_ov62_0211f450: ; 0x0211F450
	bx lr
	arm_func_end FUN_ov62_0211f450

	arm_func_start FUN_ov62_0211f454
FUN_ov62_0211f454: ; 0x0211F454
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x4000000
	mov r4, r0
	ldr r0, [r2]
	ldr r1, [r4, #0xf0]
	bic r0, r0, #0x1f00
	orr r3, r0, r1, lsl #8
	add r0, r4, #0x810
	sub r1, r2, #0x4000001
	str r3, [r2]
	bl FUN_020F57B0
	add r0, r4, #0x810
	bl FUN_020F52C4
	ldr r0, [r4, #0x514]
	cmp r0, #0
	beq _0211F4A0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211F4A0:
	mov r5, #0
	ldr r0, _0211F514 ; =0x02099EB4
	str r5, [r4, #0x514]
	ldr r0, [r0]
	bl FUN_0210E9D8
	ldr r0, _0211F518 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_0210E0D8
	mov r0, r4
	bl FUN_ov62_0211c3b0
	mov r0, r4
	bl FUN_ov62_0211a184
	add r0, r4, #0x108
	add r0, r0, #0x400
	bl FUN_020F52C4
	ldr r1, [r4, #0x4fc]
	cmp r1, #0
	beq _0211F4F4
	ldr r0, _0211F51C ; =0x0209A250
	bl FUN_0202e1c0
	str r5, [r4, #0x4fc]
_0211F4F4:
	ldr r0, _0211F520 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021123C4
	ldr r0, _0211F524 ; =0x0209BA20
	bl FUN_020EEDB8
	mov r0, r4
	bl FUN_ov62_02120a1c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F514: .word 0x02099EB4
_0211F518: .word 0x02099ED4
_0211F51C: .word 0x0209A250
_0211F520: .word 0x02099F38
_0211F524: .word 0x0209BA20
	arm_func_end FUN_ov62_0211f454

	arm_func_start FUN_ov62_0211f528
FUN_ov62_0211f528: ; 0x0211F528
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r9, #0
	ldr r0, _0211F678 ; =0x0209BA20
	mov r1, r9
	bl FUN_0205107c
	add r5, sp, #0
	mov r6, r0
	mov r0, r5
	mov r1, r9
	mov r2, #0x20
	bl MemWrite
	mov r1, r9
	add r0, r4, #0x550
	mov r2, #0x2c0
	bl MemWrite
	mov r8, r9
_0211F570:
	mov r0, r8
	bl FUN_020EFA80
	movs r7, r0
	beq _0211F5BC
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211F5BC
	mov r0, r7
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r6
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211F5BC
	mov r0, r7
	bl FUN_0206cc00
	mov r1, r9, lsl #1
	strh r0, [r5, r1]
	add r9, r9, #1
_0211F5BC:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #0x64
	blt _0211F570
	add r7, sp, #0
	mov r0, r4
	mov r1, r7
	bl FUN_ov62_0211f67c
	cmp r9, #0
	mov r8, #0
	addle sp, sp, #0x20
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, r4, #0x550
	mov r11, r8
_0211F5F8:
	mov r0, r8, lsl #1
	ldrh r0, [r7, r0]
	mov r1, r11
	bl FUN_020EFA9C
	movs r6, r0
	beq _0211F664
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211F664
	mov r0, #0x2c
	mul r10, r8, r0
	mov r2, #0x20
	add r0, r6, #0x1c
	add r1, r5, r10
	bl _memcpy
	mov r0, r8, lsl #1
	ldrh r2, [r7, r0]
	add r10, r4, r10
	add r1, r10, #0x500
	mov r0, r6
	strh r2, [r1, #0x70]
	bl FUN_0206cc00
	add r1, r10, #0x500
	strh r0, [r1, #0x72]
	str r11, [r10, #0x574]
	mov r0, #1
	str r0, [r10, #0x578]
_0211F664:
	add r8, r8, #1
	cmp r8, r9
	blt _0211F5F8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F678: .word 0x0209BA20
	arm_func_end FUN_ov62_0211f528

	arm_func_start FUN_ov62_0211f67c
FUN_ov62_0211f67c: ; 0x0211F67C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x50
	add r5, sp, #0x30
	mov r9, #0x20
	mov r7, #0
	mov r8, r1
	mov r0, r5
	mov r1, r7
	mov r2, r9
	bl MemWrite
	add r4, sp, #8
	mov r1, r7
	mov r0, r4
	mov r2, #8
	bl MemWrite
	add r6, sp, #0x10
	mov r1, r7
	mov r0, r6
	mov r2, r9
	bl MemWrite
	mov r2, r9
	mov r0, r8
	mov r1, r5
	bl _memcpy
	ldr r9, _0211F798 ; =0x0209BA20
	str r7, [sp]
	mov r1, r7
	mov r0, r9
	mov r2, r4
	mov r3, #4
	bl FUN_0204b2f4
	mov r2, r6
	str r7, [sp]
	mov r6, r0
	mov r0, r9
	mov r1, r7
	mov r3, #0x10
	str r7, [sp, #4]
	bl FUN_0204b540
	mov r1, r6
	mov r12, #1
	mov r0, r7
_0211F724:
	mov r3, r0
	mov r9, r0
	cmp r6, #0
	ble _0211F75C
	mov r2, r7, lsl #1
	ldrh lr, [r5, r2]
_0211F73C:
	mov r2, r9, lsl #1
	ldrh r2, [r4, r2]
	cmp lr, r2
	moveq r3, r12
	beq _0211F75C
	add r9, r9, #1
	cmp r9, r6
	blt _0211F73C
_0211F75C:
	cmp r3, #0
	moveq r2, r7, lsl #1
	ldreqh r3, [r5, r2]
	moveq r2, r1, lsl #1
	add r7, r7, #1
	addeq r1, r1, #1
	streqh r3, [r8, r2]
	cmp r7, #0x10
	blt _0211F724
	add r0, sp, #8
	mov r1, r8
	mov r2, r6, lsl #1
	bl _memcpy
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F798: .word 0x0209BA20
	arm_func_end FUN_ov62_0211f67c

	arm_func_start FUN_ov62_0211f79c
FUN_ov62_0211f79c: ; 0x0211F79C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r8, r0
	ldr r0, [r8, #0x818]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211F9FC ; =0x02099F38
	mov r7, #3
	mov r6, #1
	ldr r0, [r0]
	mov r1, r7
	mov r2, r6
	bl FUN_02112724
	mov r5, #0
	add r2, r8, #0xd8
	mov r9, r0
	add r0, r2, #0x800
	mov r1, r5
	mov r2, #0x24
	str r5, [sp, #0x14]
	bl MemWrite
	add r0, r8, #0xfc
	mov r4, #8
	mov r10, #0x20
	add r0, r0, #0x800
	mov r1, r5
	mov r2, #0x14
	str r4, [r8, #0x8dc]
	str r10, [r8, #0x8e0]
	bl MemWrite
	str r9, [r8, #0x818]
	str r5, [sp]
	mov r11, #0x18
	str r5, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x46
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, r8
	mov r1, r9
	add r2, sp, #0x14
	mov r3, r11
	bl FUN_ov62_021202a8
	str r5, [sp]
	stmib sp, {r4, r10}
	mov r0, #0x42
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, r8
	mov r1, r9
	add r2, sp, #0x14
	mov r3, #0x15
	bl FUN_ov62_021202a8
	str r6, [sp]
	stmib sp, {r4, r10}
	mov r0, #0x45
	str r0, [sp, #0xc]
	mov r1, r9
	add r2, sp, #0x14
	mov r0, r8
	mov r3, #0x15
	str r5, [sp, #0x10]
	bl FUN_ov62_021202a8
	mov r9, #0x68
	stmia sp, {r9, r10}
	mov r0, #0x14
	str r0, [sp, #8]
	mov r10, #0x44
	str r10, [sp, #0xc]
	mov r0, r8
	mov r1, r5
	mov r2, #7
	str r6, [sp, #0x10]
	mov r3, #6
	bl FUN_ov62_02120564
	str r9, [sp]
	mov r0, #0x90
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	mov r3, r4
	str r6, [sp, #0x10]
	mov r0, r8
	mov r1, r6
	mov r2, #7
	bl FUN_ov62_02120564
	mov r4, #2
	str r9, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, r8
	mov r1, r4
	mov r2, #7
	mov r3, r5
	bl FUN_ov62_02120564
	str r9, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x17
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	mov r1, r7
	mov r3, r4
	str r6, [sp, #0x10]
	mov r0, r8
	mov r2, #7
	bl FUN_ov62_02120564
	mov r4, #4
	str r9, [sp]
	mov r0, #0x40
	stmib sp, {r0, r11}
	str r10, [sp, #0xc]
	mov r2, #7
	mov r0, r8
	mov r1, r4
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov62_02120564
	mov r0, #0x98
	str r0, [sp]
	mov r9, #0xa8
	mov r7, #5
	str r9, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov62_02120564
	mov r0, #0xd0
	stmia sp, {r0, r9}
	mov r0, #0x1a
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	mov r0, r8
	mov r1, #6
	mov r2, r7
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov62_02120564
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F9FC: .word 0x02099F38
	arm_func_end FUN_ov62_0211f79c

	arm_func_start FUN_ov62_0211fa00
FUN_ov62_0211fa00: ; 0x0211FA00
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x818]
	cmp r1, #0
	beq _0211FA20
	ldr r0, _0211FAC0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021128C4
_0211FA20:
	mov r5, #0
	ldr r4, _0211FAC0 ; =0x02099F38
	b _0211FA48
_0211FA2C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x81c]
	cmp r1, #0
	beq _0211FA44
	ldr r0, [r4]
	bl FUN_021128C4
_0211FA44:
	add r5, r5, #1
_0211FA48:
	cmp r5, #7
	blt _0211FA2C
	ldr r4, _0211FAC4 ; =0x02099EB4
	mov r1, #0x14
	ldr r0, [r4]
	bl FUN_0210EAB4
	ldr r0, [r4]
	mov r1, #0x15
	bl FUN_0210EAB4
	ldr r0, [r4]
	mov r1, #0x16
	bl FUN_0210EAB4
	ldr r0, [r4]
	mov r1, #0x17
	bl FUN_0210EAB4
	ldr r0, [r4]
	mov r1, #0x18
	bl FUN_0210EAB4
	ldr r0, [r4]
	mov r1, #0x19
	bl FUN_0210EAB4
	ldr r0, [r4]
	mov r1, #0x1a
	bl FUN_0210EAB4
	add r0, r6, #0x18
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #0xc0
	bl MemWrite
	ldmfd sp!, {r4, r5, r6, pc}
_0211FAC0: .word 0x02099F38
_0211FAC4: .word 0x02099EB4
	arm_func_end FUN_ov62_0211fa00

	arm_func_start FUN_ov62_0211fac8
FUN_ov62_0211fac8: ; 0x0211FAC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	mov r4, #0
	ldr r0, _0211FD44 ; =0x0209BA20
	mov r1, r4
	bl FUN_0205107c
	str r4, [sp, #0x28]
	ldr r8, [r10, #0x8fc]
	str r0, [sp, #0x18]
	add r0, r8, #8
	str r0, [sp, #0x14]
	mov r0, #0x43
	add r5, r0, #1
	mov r0, r0
	add r2, r10, #0x78
	str r0, [sp, #0x1c]
	add r0, r2, #0x800
	str r0, [sp, #0x20]
	add r0, r10, #0x550
	mov r9, r8
	str r0, [sp, #0x24]
	mov r6, #1
	ldr r4, _0211FD48 ; =0x02099F38
	b _0211FD30
_0211FB2C:
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [r4]
	mov r1, #3
	mov r2, r6
	bl FUN_02112724
	mov r7, r0
	add r0, r10, r9, lsl #2
	str r7, [r0, #0x838]
	mov r0, #0x2c
	mla r1, r9, r0, r10
	ldr r0, [r1, #0x578]
	cmp r0, #0
	beq _0211FCB4
	str r6, [r1, #0x574]
	ldr r0, [r10, #0x914]
	cmp r0, #0x17
	bne _0211FBD8
	add r0, r1, #0x500
	ldrh r1, [r0, #0x70]
	ldr r0, [sp, #0x18]
	bl FUN_0204fd68
	cmp r0, #1
	beq _0211FBD8
	mov r0, #0x2c
	mla r1, r9, r0, r10
	mov r0, #0
	str r0, [r1, #0x574]
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	sub r0, r9, r8
	mov r0, r0, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x28
	mov r3, #0x15
	str r6, [sp, #0x10]
	bl FUN_ov62_021202a8
_0211FBD8:
	ldr r1, [sp, #0x28]
	mov r0, r10
	add r1, r1, #1
	str r1, [sp, #0x28]
	mov r1, #0x2c
	mla r1, r9, r1, r10
	add r1, r1, #0x500
	ldrh r1, [r1, #0x72]
	bl FUN_ov62_0211fe10
	mov r3, r0
	sub r0, r9, r8
	mov r0, r0, lsl #4
	add r11, r0, #0x18
	ldr r0, [r4]
	ldr r2, [sp, #0x28]
	mov r1, r7
	bl FUN_021137DC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [sp, #0x28]
	mov r1, r7
	mov r3, #0
	bl FUN_0211401C
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [sp, #0x28]
	mov r1, r7
	mov r3, #8
	bl FUN_02113B78
	ldr r0, [r4]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	mov r1, r7
	bl FUN_021139BC
	sub r0, r9, r8
	mov r0, r0, lsl #4
	add r1, r0, #0x23
	ldr r0, [sp, #0x20]
	mov r3, #0x2c
	add r0, r0, r9, lsl #2
	str r0, [sp]
	mov r0, #0x29
	stmib sp, {r0, r1}
	ldr r1, [sp, #0x24]
	mov r0, #0x43
	mla r1, r9, r3, r1
	str r0, [sp, #0xc]
	mov r2, r7
	mov r0, r10
	add r3, sp, #0x28
	bl FUN_ov62_02120368
	b _0211FCF8
_0211FCB4:
	mov r0, #0
	str r0, [r1, #0x574]
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	sub r0, r9, r8
	mov r0, r0, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r1, r7
	mov r0, r10
	add r2, sp, #0x28
	mov r3, #0x15
	str r6, [sp, #0x10]
	bl FUN_ov62_021202a8
_0211FCF8:
	mov r0, #8
	sub r1, r9, r8
	str r0, [sp]
	mov r0, r1, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #4]
	add r0, r1, #0x1b
	str r0, [sp, #8]
	mov r0, r10
	mov r2, #0x18
	mov r3, #1
	str r5, [sp, #0xc]
	bl FUN_ov62_021206f4
	add r9, r9, #1
_0211FD30:
	ldr r0, [sp, #0x14]
	cmp r9, r0
	blt _0211FB2C
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FD44: .word 0x0209BA20
_0211FD48: .word 0x02099F38
	arm_func_end FUN_ov62_0211fac8

	arm_func_start FUN_ov62_0211fd4c
FUN_ov62_0211fd4c: ; 0x0211FD4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r7, r0
	mov r4, r5
	mov r6, r5
	ldr r8, _0211FE08 ; =0x02099F38
	b _0211FDAC
_0211FD68:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x838]
	cmp r1, #0
	beq _0211FD88
	ldr r0, [r8]
	bl FUN_021128C4
	add r0, r7, r6, lsl #2
	str r5, [r0, #0x838]
_0211FD88:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x878]
	cmp r1, #0
	beq _0211FDA8
	ldr r0, [r8]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #2
	str r4, [r0, #0x878]
_0211FDA8:
	add r6, r6, #1
_0211FDAC:
	cmp r6, #0x10
	blt _0211FD68
	mov r6, #0
	ldr r8, _0211FE08 ; =0x02099F38
	ldr r5, _0211FE0C ; =0x02099EB4
	b _0211FDFC
_0211FDC4:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x8b8]
	cmp r1, #0
	beq _0211FDE4
	ldr r0, [r8]
	bl FUN_021128C4
	add r0, r7, r6, lsl #2
	str r4, [r0, #0x8b8]
_0211FDE4:
	add r0, r6, #0x1b
	mov r1, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl FUN_0210EAB4
	add r6, r6, #1
_0211FDFC:
	cmp r6, #8
	blt _0211FDC4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FE08: .word 0x02099F38
_0211FE0C: .word 0x02099EB4
	arm_func_end FUN_ov62_0211fd4c

	arm_func_start FUN_ov62_0211fe10
FUN_ov62_0211fe10: ; 0x0211FE10
	stmfd sp!, {r3, lr}
	mov r2, r0
	mov r0, r1
	add r1, r2, #0x810
	bl FUN_020F5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov62_0211fe10

	arm_func_start FUN_ov62_0211fe2c
FUN_ov62_0211fe2c: ; 0x0211FE2C
	stmfd sp!, {r4, lr}
	ldr r2, [r0, #0x8d8]
	mov lr, r1, lsr #0x1f
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #29
	rsb r12, lr, r1, lsl #29
	add r3, r3, r2, ror #29
	add r2, lr, r12, ror #29
	mov r3, r3, lsl #4
	mov r2, r2, lsl #4
	str r1, [r0, #0x8d8]
	mov r1, #8
	add r4, r3, #0x20
	add lr, r2, #0x20
	sub r2, r1, #8
	sub r3, lr, r4
	add r2, r2, r2, lsr #31
	add r3, r3, r3, lsr #31
	mov r12, r2, asr #1
	mov r2, r3, asr #1
	mov r3, #1
	str r3, [r0, #0x8f4]
	str r1, [r0, #0x8dc]
	str r4, [r0, #0x8e0]
	str r1, [r0, #0x8e4]
	str lr, [r0, #0x8e8]
	str r12, [r0, #0x8ec]
	str r2, [r0, #0x8f0]
	ldr r0, _0211FEA8 ; =0x0209AC44
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211FEA8: .word 0x0209AC44
	arm_func_end FUN_ov62_0211fe2c

	arm_func_start FUN_ov62_0211feac
FUN_ov62_0211feac: ; 0x0211FEAC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, [r0, #0x8f8]
	ldr r1, [r0, #0x8f0]
	add r12, r2, #1
	ldr r3, [r0, #0x8e0]
	ldr lr, [r0, #0x8dc]
	ldr r2, [r0, #0x8ec]
	mla r4, r1, r12, r3
	mla r3, r2, r12, lr
	str r12, [r0, #0x8f8]
	cmp r1, #0
	ldr r1, [r0, #0x818]
	mov r2, #2
	ldr r12, [r0, #0x8e8]
	bge _0211FEF8
	cmp r4, r12
	movlt r4, r12
	b _0211FF00
_0211FEF8:
	cmp r4, r12
	movgt r4, r12
_0211FF00:
	ldr r12, [r0, #0x8e8]
	mov r3, r3, lsl #0x10
	cmp r4, r12
	moveq r12, #0
	streq r12, [r0, #0x8f4]
	streq r12, [r0, #0x8f8]
	mov r0, r4, lsl #0x10
	mov r12, r0, asr #0x10
	ldr r0, _0211FF3C ; =0x02099F38
	str r12, [sp]
	ldr r0, [r0]
	mov r3, r3, asr #0x10
	bl FUN_02113B78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211FF3C: .word 0x02099F38
	arm_func_end FUN_ov62_0211feac

	arm_func_start FUN_ov62_0211ff40
FUN_ov62_0211ff40: ; 0x0211FF40
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x20
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	ldr r2, [r0, #0x8fc]
	mov r1, r1, asr #3
	mul r2, r1, r2
	add r5, r2, #0x40
	mov r2, r5, lsl #0x10
	ldr r1, [r0, #0x82c]
	mov r4, #0x68
	str r5, [r0, #0x900]
	mov r2, r2, asr #0x10
	ldr r0, _0211FFA8 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r3, r4
	mov r2, #1
	bl FUN_02113B78
	ldr r0, _0211FFAC ; =0x02099EB4
	mov r2, r4
	ldr r0, [r0]
	mov r3, r5
	mov r1, #0x18
	bl FUN_0210FD0C
	ldmfd sp!, {r3, r4, r5, pc}
_0211FFA8: .word 0x02099F38
_0211FFAC: .word 0x02099EB4
	arm_func_end FUN_ov62_0211ff40

	arm_func_start FUN_ov62_0211ffb0
FUN_ov62_0211ffb0: ; 0x0211FFB0
	stmfd sp!, {r4, lr}
	ldr r3, _02120034 ; =0x2E8BA2E9
	mov r4, r0
	smull r2, r12, r3, r1
	cmp r1, #0x14
	ldreq r0, [r4, #0x8fc]
	ldr r2, [r4, #0x8fc]
	cmpeq r0, #0
	mov r0, r1, lsr #0x1f
	add r12, r0, r12, asr #2
	rsb r0, r12, r12, lsl #3
	mov lr, #1
	rsb r0, r0, #8
	moveq lr, #0
	subs r0, r2, r0
	str r0, [r4, #0x8fc]
	bpl _02120004
	mov r0, #0
	cmp r1, #0x16
	str r0, [r4, #0x8fc]
	moveq lr, r0
_02120004:
	cmp lr, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov62_0211fd4c
	mov r0, r4
	bl FUN_ov62_0211fac8
	mov r0, r4
	bl FUN_ov62_0211ff40
	ldr r0, _02120038 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_02120034: .word 0x2E8BA2E9
_02120038: .word 0x0209AC44
	arm_func_end FUN_ov62_0211ffb0

	arm_func_start FUN_ov62_0212003c
FUN_ov62_0212003c: ; 0x0212003C
	stmfd sp!, {r4, lr}
	ldr r3, _021200C8 ; =0xB21642C9
	mov r4, r0
	smull r2, r12, r3, r1
	cmp r1, #0x15
	ldreq r0, [r4, #0x8fc]
	add r12, r1, r12
	cmpeq r0, #8
	mov r0, r1, lsr #0x1f
	add r12, r0, r12, asr #4
	rsb r0, r12, r12, lsl #3
	mov lr, #1
	ldr r2, [r4, #0x8fc]
	rsb r0, r0, #8
	add r0, r2, r0
	moveq lr, #0
	str r0, [r4, #0x8fc]
	cmp r0, #8
	ble _02120098
	mov r0, #8
	cmp r1, #0x17
	str r0, [r4, #0x8fc]
	moveq lr, #0
_02120098:
	cmp lr, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov62_0211fd4c
	mov r0, r4
	bl FUN_ov62_0211fac8
	mov r0, r4
	bl FUN_ov62_0211ff40
	ldr r0, _021200CC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_021200C8: .word 0xB21642C9
_021200CC: .word 0x0209AC44
	arm_func_end FUN_ov62_0212003c

	arm_func_start FUN_ov62_021200d0
FUN_ov62_021200d0: ; 0x021200D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #0xd
	mov r4, #0
	beq _021200EC
	cmp r1, #0xe
	ldmnefd sp!, {r4, r5, r6, pc}
_021200EC:
	cmp r1, #0xd
	mvneq r4, #0
	beq _02120100
	cmp r1, #0xe
	moveq r4, #1
_02120100:
	mov r0, r6
	bl FUN_ov62_0211c7e0
	mov r5, r0
	ldrb r0, [r5, #0x75]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _021201B0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov62_0211c844
	cmp r0, #0
	ldrnesb r1, [r0, #8]
	cmpne r1, #0
	ble _02120154
	mov r1, #1
	strb r1, [r0, #8]
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_ov62_0211c084
_02120154:
	mov r0, r6
	bl FUN_ov62_0211acbc
	mov r0, r6
	bl FUN_ov62_0211c7e0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	mov r3, #0
	bl FUN_ov62_0211c310
	mov r1, r5
	mov r2, r4
	mov r0, r6
	mov r3, #1
	bl FUN_ov62_0211c228
	ldr r0, _021201B4 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_0210EE78
	mov r0, r6
	bl FUN_ov62_0211c898
	mov r0, r6
	bl FUN_ov62_0211aba0
	ldmfd sp!, {r4, r5, r6, pc}
_021201B0: .word 0x0209AC44
_021201B4: .word 0x02099EB4
	arm_func_end FUN_ov62_021200d0

	arm_func_start FUN_ov62_021201b8
FUN_ov62_021201b8: ; 0x021201B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r1, _021202A0 ; =0x02099EB4
	mov r10, r0
	ldr r0, [r1]
	add r1, sp, #4
	ldr r5, [r10, #0x82c]
	mov r6, #1
	mov r7, #0x68
	mov r4, #0x40
	mov r9, #0x60
	bl FUN_0210F48C
	ldrsh r0, [sp, #4]
	cmp r0, #0x68
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #0x78
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsh r2, [sp, #6]
	ldr r1, [r10, #0x904]
	ldr r0, [r10, #0x900]
	sub r1, r2, r1
	add r8, r0, r1
	cmp r8, r4
	movlt r8, r4
	cmp r8, r9
	movgt r8, r9
	ldrsh r2, [sp, #6]
	sub r1, r8, #0x40
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r1, r0, asr #2
	mov r0, r10
	str r2, [r10, #0x904]
	str r8, [r10, #0x900]
	str r1, [r10, #0x8fc]
	bl FUN_ov62_0211fd4c
	mov r0, r10
	bl FUN_ov62_0211fac8
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _021202A4 ; =0x02099F38
	mov r3, r7, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_02113B78
	ldr r0, _021202A0 ; =0x02099EB4
	mov r2, r7
	ldr r0, [r0]
	mov r3, r8
	mov r1, #0x18
	bl FUN_0210FD0C
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021202A0: .word 0x02099EB4
_021202A4: .word 0x02099F38
	arm_func_end FUN_ov62_021201b8

	arm_func_start FUN_ov62_021202a8
FUN_ov62_021202a8: ; 0x021202A8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x5c]
	ldr r6, _02120364 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl FUN_021137DC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl FUN_0211401C
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
	bl FUN_02113B78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl FUN_021139BC
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl FUN_02113EC0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02120364: .word 0x02099F38
	arm_func_end FUN_ov62_021202a8

	arm_func_start FUN_ov62_02120368
FUN_ov62_02120368: ; 0x02120368
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	add r4, sp, #0x30
	mov r6, #0
	str r1, [sp, #0x20]
	mov r7, #4
	mov r10, r2
	mov r0, r4
	mov r1, r6
	mov r2, r7
	mov r9, r3
	str r6, [sp, #0x28]
	ldr r8, [sp, #0x58]
	mov r5, #0x80
	bl MemWrite
	mov r2, r7
	add r7, sp, #0x2c
	mov r1, r6
	mov r0, r7
	bl MemWrite
	mov r0, r5
	mov r2, r4
	mov r3, r7
	mov r1, #0x20
	str r6, [r8]
	bl FUN_02054070
	ldr r4, _0212055C ; =0x02099F38
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
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
	str r6, [sp, #0x24]
	add r2, sp, #0x24
	add r3, sp, #0x28
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r8]
	ldr r7, [sp, #0x24]
	bl FUN_02111438
	mov r11, r0
	ldr r0, [r4]
	ldr r1, [r8]
	bl FUN_02111458
	mov r5, r0
	ldr r0, _02120560 ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, #5
	bl rwriteat14n18
	stmia sp, {r5, r6}
	str r6, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _02120560 ; =0x02099F50
	str r6, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r7
	mov r3, r11
	bl FUN_020425fc
	ldr r0, _02120560 ; =0x02099F50
	ldr r0, [r0]
	bl wraper_rwiteat14n18
	ldr r3, [sp, #0x28]
	ldr r1, [r8]
	ldr r0, [r4]
	mov r2, r7
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
	bl FUN_021137DC
	str r6, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	mov r3, r6
	mov r1, r10
	bl FUN_02113D88
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r11, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	bl FUN_02113D08
	ldr r0, [sp, #0x60]
	ldr r3, [sp, #0x5c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, asr #0x10
	bl FUN_02113B78
	ldr r3, [sp, #0x64]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, lsr #0x10
	bl FUN_021139BC
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212055C: .word 0x02099F38
_02120560: .word 0x02099F50
	arm_func_end FUN_ov62_02120368

	arm_func_start FUN_ov62_02120564
FUN_ov62_02120564: ; 0x02120564
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r4, _021206EC ; =0x02099F38
	mov r5, r0
	ldr r0, [r4]
	mov r9, #2
	mov r7, r1
	mov r8, #1
	mov r6, r2
	mov r1, r9
	mov r2, r8
	mov r10, r3
	bl FUN_02112724
	add r2, r5, r7, lsl #2
	add r1, r5, r6, lsl #2
	mov r7, r0
	str r7, [r2, #0x81c]
	ldr r0, [r1, #0x5c]
	mov r6, #0
	and r3, r0, #0xff
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r5, #0x64
	bl FUN_021137DC
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r10
	bl FUN_0211401C
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r3, asr #0x10
	bl FUN_02113B78
	ldr r3, [sp, #0x34]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r7
	mov r2, r8
	mov r3, r3, lsr #0x10
	bl FUN_021139BC
	str r8, [sp]
	ldr r0, [r4]
	mov r3, r9
	mov r1, r7
	mov r2, r8
	bl FUN_02113EC0
	str r8, [sp]
	ldr r2, [sp, #0x30]
	ldr r0, _021206F0 ; =0x02099EB4
	str r5, [sp, #4]
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r7
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl FUN_0210FC74
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [sp, #0x38]
	strb r6, [r4, #0x10]
	strb r6, [r4, #0xf]
	strh r6, [r4, #0xc]
	cmp r0, #1
	addne sp, sp, #8
	strb r6, [r4, #0x11]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r6
	mov r2, r8
	mov r3, r6
	add r0, r4, #0x3a
	bl FUN_0210E6FC
	mov r1, r6
	mov r2, r10
	mov r3, r6
	add r0, r4, #0x3a
	bl FUN_0210E720
	mov r1, r6
	mov r2, r8
	mov r3, r6
	add r0, r4, #0x3e
	bl FUN_0210E6FC
	add r0, r4, #0x3e
	add r2, r10, #1
	mov r1, r6
	mov r3, r6
	bl FUN_0210E720
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021206EC: .word 0x02099F38
_021206F0: .word 0x02099EB4
	arm_func_end FUN_ov62_02120564

	arm_func_start FUN_ov62_021206f4
FUN_ov62_021206f4: ; 0x021206F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _02120874 ; =0x02099F38
	mov r9, r0
	ldr r0, [r4]
	mov r5, r2
	mov r11, #2
	mov r6, r1
	mov r1, r11
	mov r2, #1
	mov r10, r3
	bl FUN_02112724
	add r3, r9, r6, lsl #2
	add r2, r9, r5, lsl #2
	ldr r8, [r9, #0xbc]
	mov r7, r0
	ldr r9, [r9, #0xb0]
	mov r6, #0
	str r7, [r3, #0x8b8]
	ldr r2, [r2, #0x5c]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r1, r7
	mov r2, #1
	mov r5, #0x64
	bl FUN_021137DC
	str r6, [sp]
	ldr r0, [r4]
	mov r3, r10
	mov r1, r7
	mov r2, #1
	bl FUN_0211401C
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	mov r3, r3, asr #0x10
	bl FUN_02113B78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r7
	mov r2, #1
	mov r3, r3, lsr #0x10
	bl FUN_021139BC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r7
	mov r2, #1
	bl FUN_02113EC0
	mov r0, #1
	stmia sp, {r0, r5}
	ldr r0, _02120878 ; =0x02099EB4
	ldr r2, [sp, #0x38]
	ldr r0, [r0]
	mov r2, r2, lsl #0x10
	mov r3, r7
	mov r1, #1
	mov r2, r2, lsr #0x10
	bl FUN_0210FC74
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	strb r6, [r4, #0x10]
	strb r6, [r4, #0xf]
	mov r1, #1
	strh r6, [r4, #0xc]
	mov r2, r1
	mov r3, r6
	add r0, r4, #0x3a
	strb r6, [r4, #0x11]
	bl FUN_0210E6FC
	mov r1, r8
	mov r2, #1
	mov r3, r6
	add r0, r4, #0x3a
	bl FUN_0210E720
	mov r1, #1
	mov r2, r1
	add r0, r4, #0x3e
	mov r3, r6
	bl FUN_0210E6FC
	add r0, r4, #0x3e
	mov r1, r9
	mov r2, #1
	mov r3, r6
	bl FUN_0210E720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120874: .word 0x02099F38
_02120878: .word 0x02099EB4
	arm_func_end FUN_ov62_021206f4

	arm_func_start FUN_ov62_0212087c
FUN_ov62_0212087c: ; 0x0212087C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r3, [r0, #0x8d8]
	ldr r1, [r0, #0x8fc]
	mov r2, #0x2c
	add r3, r3, r1
	mla r1, r3, r2, r0
	add r1, r1, #0x500
	ldrh r5, [r1, #0x70]
	mov r7, #0
	ldr r8, [r0, #0x914]
	ldr r4, [r0, #0x910]
	mov r0, r5
	mov r1, r7
	sub r6, r2, #0x2d
	bl FUN_020EFA9C
	sub r2, r8, #0x16
	mov r1, r0
	cmp r2, #3
	addls pc, pc, r2, lsl #2
	b _0212094C
_021208CC: ; jump table
	b _021208DC ; case 0
	b _02120948 ; case 1
	b _021208E4 ; case 2
	b _02120914 ; case 3
_021208DC:
	mov r6, r7
	b _0212094C
_021208E4:
	ldr r9, _021209A4 ; =0x0209BA20
	mov r8, #2
	mov r0, r9
	mov r2, r8
	mov r6, #1
	bl FUN_020EEE4C
	mov r1, r0
	mov r0, r9
	bl FUN_020EE034
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x18
	b _02120940
_02120914:
	ldr r9, _021209A4 ; =0x0209BA20
	mov r8, #2
	mov r0, r9
	mov r2, r8
	mov r6, #1
	bl FUN_020EEE4C
	mov r1, r0
	mov r0, r9
	bl FUN_020EE034
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x19
_02120940:
	moveq r6, r8
	b _0212094C
_02120948:
	mov r7, #1
_0212094C:
	cmp r7, #0
	beq _0212096C
	ldr r1, _021209A8 ; =0x0209A454
	ldr r0, _021209A4 ; =0x0209BA20
	ldrb r1, [r1, #0x28]
	mov r2, r4
	bl FUN_020EE278
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212096C:
	ldr r8, _021209A4 ; =0x0209BA20
	mov r1, r5
	mov r0, r8
	mov r2, r6
	mov r3, #0
	bl FUN_020EEBB0
	mov r7, #1
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	str r7, [sp]
	bl FUN_020EEB24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021209A4: .word 0x0209BA20
_021209A8: .word 0x0209A454
	arm_func_end FUN_ov62_0212087c

	arm_func_start FUN_ov62_021209ac
FUN_ov62_021209ac: ; 0x021209AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r12, #0
	add r0, r4, #0x500
	ldr r3, _02120A14 ; =0x0209A250
	str r12, [r4, #0x544]
	strh r12, [r0, #0x48]
	ldr r0, [r3]
	ldr r1, _02120A18 ; =0x02121110
	cmp r0, #0
	beq _02120A00
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r4, #0x144
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	mov r12, r0
_02120A00:
	mov r1, r12, lsr #1
	add r0, r4, #0x500
	strh r1, [r0, #0x48]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_02120A14: .word 0x0209A250
_02120A18: .word 0x02121110
	arm_func_end FUN_ov62_021209ac

	arm_func_start FUN_ov62_02120a1c
FUN_ov62_02120a1c: ; 0x02120A1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x544]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02120A44 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x544]
	ldmfd sp!, {r4, pc}
_02120A44: .word 0x0209A250
	arm_func_end FUN_ov62_02120a1c

	arm_func_start FUN_ov62_02120a48
FUN_ov62_02120a48: ; 0x02120A48
	cmp r1, #0x1e0
	movgt r0, #0
	bxgt lr
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #29
	ldr r3, _02120A8C ; =0x020A1612
	add r2, r2, r0, ror #29
	mov r0, #1
	mov r2, r0, lsl r2
	ldrb r1, [r3, r1, asr #3]
	and r2, r2, #0xff
	tst r2, r1
	moveq r0, #0
	bx lr
_02120A8C: .word 0x020A1612
	arm_func_end FUN_ov62_02120a48

	arm_func_start FUN_ov62_02120a90
FUN_ov62_02120a90: ; 0x02120A90
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov62_02120a90

	arm_func_start FUN_ov62_02120aa4
FUN_ov62_02120aa4: ; 0x02120AA4
	bx lr
	arm_func_end FUN_ov62_02120aa4

	arm_func_start FUN_ov62_02120aa8
FUN_ov62_02120aa8: ; 0x02120AA8
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r12, [r0]
	mov lr, r1
	mov r1, r12, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldreqb r1, [r0]
	moveq r1, r1, lsl #0x18
	moveq r1, r1, lsr #0x19
	ldrne r1, [r0, #4]
	stmia sp, {r2, r3}
	mov r3, lr
	mov r2, #0
	bl FUN_02028984
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov62_02120aa8

	arm_func_start FUN_ov62_02120ae8
FUN_ov62_02120ae8: ; 0x02120AE8
	ldr r2, [r0]
	mov r3, r1
	mov r1, r2, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldreqb r1, [r0]
	ldr r12, _02120B14 ; =FUN_02120B18
	moveq r1, r1, lsl #0x18
	moveq r2, r1, lsr #0x19
	ldrne r2, [r0, #4]
	mov r1, #0
	bx r12
_02120B14: .word FUN_02120B18
	arm_func_end FUN_ov62_02120ae8

	arm_func_start FUN_02120B18
FUN_02120B18: ; 0x02120B18
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r3
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl _strlen
	add r0, r4, r0
	ldrb r12, [sp, #8]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	strb r12, [sp, #4]
	bl FUN_02028a98
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_02120B18

	arm_func_start FUN_ov62_02120b64
FUN_ov62_02120b64: ; 0x02120B64
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0]
	mov r5, r1
	mov r1, r2, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldreqb r1, [r0]
	addeq r6, r0, #1
	mov r4, r3
	moveq r0, r1, lsl #0x18
	moveq r7, r0, lsr #0x19
	ldrne r7, [r0, #4]
	ldrne r6, [r0, #8]
	cmp r4, r7
	bls _02120BAC
	ldr r0, _02120BE8 ; =0x02121130
	bl FUN_02023ab4
	bl FUN_02021040
_02120BAC:
	ldr r0, [sp, #0x20]
	sub r1, r7, r4
	cmp r1, r0
	addlo r0, sp, #0
	str r1, [sp]
	addhs r0, sp, #0x20
	ldr r7, [r0]
	mov r0, r5
	mov r2, r7
	add r1, r6, r4
	bl FUN_020218d4
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_02120BE8: .word 0x02121130
	arm_func_end FUN_ov62_02120b64

	arm_func_start FUN_ov62_02120bec
FUN_ov62_02120bec: ; 0x02120BEC
	ldr r3, [r0]
	mov r3, r3, lsl #0x1f
	movs r3, r3, lsr #0x1f
	ldreqb r3, [r0]
	addeq r12, r0, #1
	moveq r0, r3, lsl #0x18
	moveq r0, r0, lsr #0x19
	ldrne r12, [r0, #8]
	ldrne r0, [r0, #4]
	cmp r2, r0
	addlo r3, r12, r0
	addlo r2, r12, r2
	cmplo r2, r3
	bhs _02120C40
_02120C24:
	ldrsb r0, [r2]
	cmp r1, r0
	subeq r0, r2, r12
	bxeq lr
	add r2, r2, #1
	cmp r2, r3
	blo _02120C24
_02120C40:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov62_02120bec
_02120C48:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x74, 0x0E, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x64, 0x0E, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0xA4, 0x0D, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xC4, 0x0D, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x34, 0x0E, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x24, 0x0E, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0xF4, 0x0D, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x04, 0x0E, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0x44, 0x0E, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00, 0x54, 0x0E, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00
	.byte 0x84, 0x0E, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00, 0x94, 0x0E, 0x12, 0x02, 0x11, 0x00, 0x00, 0x00
	.byte 0xB4, 0x0D, 0x12, 0x02, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x84, 0x0D, 0x12, 0x02, 0x15, 0x00, 0x00, 0x00, 0x94, 0x0D, 0x12, 0x02, 0x16, 0x00, 0x00, 0x00
	.byte 0xD4, 0x0D, 0x12, 0x02, 0x17, 0x00, 0x00, 0x00, 0xE4, 0x0D, 0x12, 0x02, 0x18, 0x00, 0x00, 0x00
	.byte 0x14, 0x0E, 0x12, 0x02, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov62_02120d00
FUN_ov62_02120d00: ; 0x02120D00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02120D48 ; =0x02120D60
	str r0, [r4, #0x10]
	ldr r0, _02120D4C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02120D50 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x18]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02120D48: .word 0x02120D60
_02120D4C: .word 0x00009CCD
_02120D50: .word 0x0000EA3C
	arm_func_end FUN_ov62_02120d00
	; 0x02120D54
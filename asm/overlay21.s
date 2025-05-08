
	arm_func_start FUN_ov21_02119f00
FUN_ov21_02119f00: ; 0x02119F00
	strh r1, [r0]
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	bx lr
	arm_func_end FUN_ov21_02119f00

	arm_func_start FUN_ov21_02119f10
FUN_ov21_02119f10: ; 0x02119F10
	add r1, r0, #0x3dc
	ldr r0, _02119F24 ; =0x0211D4F0
	ldr r12, _02119F28 ; =FUN_020F316C
	add r1, r1, #0x400
	bx r12
_02119F24: .word 0x0211D4F0
_02119F28: .word FUN_020F316C
	arm_func_end FUN_ov21_02119f10

	arm_func_start FUN_ov21_02119f2c
FUN_ov21_02119f2c: ; 0x02119F2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r1, r4, #0x2ec
	ldr r0, _02119FC0 ; =0x0211D50C
	add r1, r1, #0x800
	bl FUN_020F316C
	add r1, r4, #0x2f8
	ldr r0, _02119FC4 ; =0x0211D528
	add r1, r1, #0x800
	bl FUN_020F316C
	ldr r7, _02119FC8 ; =0x020A6C40
	mov r4, #0
	mov r6, #0x800
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_0200787c
	ldr r5, _02119FCC ; =0x020A7440
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_0200787c
	mov r0, r4
	ldr r4, _02119FD0 ; =0x020A7C40
	mov r2, r6
	mov r1, r4
	bl FUN_0200787c
	mov r0, r7
	mov r1, r6
	bl FUN_020026d0
	mov r0, r5
	mov r1, r6
	bl FUN_020026d0
	mov r0, r4
	mov r1, r6
	bl FUN_020026d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02119FC0: .word 0x0211D50C
_02119FC4: .word 0x0211D528
_02119FC8: .word 0x020A6C40
_02119FCC: .word 0x020A7440
_02119FD0: .word 0x020A7C40
	arm_func_end FUN_ov21_02119f2c

	arm_func_start FUN_ov21_02119fd4
FUN_ov21_02119fd4: ; 0x02119FD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	add r11, sp, #0x1c
	mov r10, r0
	ldr r1, _0211A088 ; =0x0211D548
	mov r0, r11
	bl FUN_02023c40
	mov r9, #0
	mov r6, r9
	mov r5, #1
	add r8, sp, #0x11c
	ldr r7, _0211A08C ; =0x0211D3A4
	ldr r4, _0211A090 ; =0x02099F38
	b _0211A070
_0211A00C:
	ldr r2, [r7, r9, lsl #2]
	ldr r1, _0211A094 ; =0x0211D564
	mov r0, r8
	bl FUN_02023c40
	ldr r1, [r10, #0x7dc]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_020F3D08
	cmp r0, #0
	beq _0211A06C
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r11
	mov r3, r5
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x7e8]
_0211A06C:
	add r9, r9, #1
_0211A070:
	cmp r9, #0xb
	blt _0211A00C
	mov r0, r10
	bl FUN_ov21_0211a098
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A088: .word 0x0211D548
_0211A08C: .word 0x0211D3A4
_0211A090: .word 0x02099F38
_0211A094: .word 0x0211D564
	arm_func_end FUN_ov21_02119fd4

	arm_func_start FUN_ov21_0211a098
FUN_ov21_0211a098: ; 0x0211A098
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r4, r5, #0x3dc
	add r0, r4, #0x400
	mov r1, #1
	bl FUN_020F338C
	add r0, r4, #0x400
	bl FUN_020F33FC
	mov r0, #0
	str r0, [r5, #0x7dc]
	str r0, [r4, #0x404]
	strb r0, [r4, #0x408]
	strb r0, [r4, #0x409]
	strb r0, [r4, #0x40a]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov21_0211a098

	arm_func_start FUN_ov21_0211a0d4
FUN_ov21_0211a0d4: ; 0x0211A0D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r4, #0
	bl FUN_ov21_0211a098
	add r0, r6, #0x2ec
	mov r5, r4
	add r8, r0, #0x800
	mov r7, #0xc
	b _0211A104
_0211A0F8:
	mla r0, r5, r7, r8
	bl FUN_020F33FC
	add r5, r5, #1
_0211A104:
	cmp r5, #2
	blt _0211A0F8
	add r0, r6, #0x13c
	mov r5, #0
	add r8, r0, #0x800
	mov r7, #0xb0
	b _0211A130
_0211A120:
	mla r1, r5, r7, r8
	mov r0, r6
	bl FUN_ov21_0211a314
	add r5, r5, #1
_0211A130:
	cmp r5, #2
	blt _0211A120
	mov r5, #0
	ldr r7, _0211A1DC ; =0x02099F38
	b _0211A160
_0211A144:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x818]
	cmp r1, #0
	beq _0211A15C
	ldr r0, [r7]
	bl FUN_021128C4
_0211A15C:
	add r5, r5, #1
_0211A160:
	cmp r5, #5
	blt _0211A144
	mov r5, #0
	ldr r7, _0211A1DC ; =0x02099F38
	b _0211A198
_0211A174:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x7e8]
	cmp r1, #0
	beq _0211A194
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x7e8]
_0211A194:
	add r5, r5, #1
_0211A198:
	cmp r5, #0xb
	blt _0211A174
	mov r5, #0
	ldr r7, _0211A1DC ; =0x02099F38
	b _0211A1D0
_0211A1AC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x814]
	cmp r1, #0
	beq _0211A1CC
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x814]
_0211A1CC:
	add r5, r5, #1
_0211A1D0:
	cmp r5, #1
	blt _0211A1AC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A1DC: .word 0x02099F38
	arm_func_end FUN_ov21_0211a0d4

	arm_func_start FUN_ov21_0211a1e0
FUN_ov21_0211a1e0: ; 0x0211A1E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A22C ; =0x02099F38
	b _0211A21C
_0211A1F4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x7e8]
	cmp r1, #0
	beq _0211A218
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A218:
	add r5, r5, #1
_0211A21C:
	cmp r5, #0xb
	blt _0211A1F4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A22C: .word 0x02099F38
	arm_func_end FUN_ov21_0211a1e0

	arm_func_start FUN_ov21_0211a230
FUN_ov21_0211a230: ; 0x0211A230
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A290 ; =0x02099F38
	b _0211A284
_0211A248:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x7e8]
	cmp r1, #0
	beq _0211A280
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A280
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x7e8]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A280:
	add r6, r6, #1
_0211A284:
	cmp r6, #0xb
	blt _0211A248
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A290: .word 0x02099F38
	arm_func_end FUN_ov21_0211a230

	arm_func_start FUN_ov21_0211a294
FUN_ov21_0211a294: ; 0x0211A294
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _0211A30C ; =0x02099EB4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	mov r1, #3
	bl FUN_0210EB3C
	cmp r4, #0
	beq _0211A2C4
	cmp r4, #3
	beq _0211A2F8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A2C4:
	add r1, r5, #0x1ec
	mov r0, r5
	add r1, r1, #0x800
	bl FUN_ov21_0211a314
	add r1, r5, #0x13c
	mov r0, r5
	add r1, r1, #0x800
	bl FUN_ov21_0211a564
	ldr r0, _0211A310 ; =0x020A9C40
	mov r1, #0x97
	mov r2, #0
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A2F8:
	add r1, r5, #0x1ec
	mov r0, r5
	add r1, r1, #0x800
	bl FUN_ov21_0211b55c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A30C: .word 0x02099EB4
_0211A310: .word 0x020A9C40
	arm_func_end FUN_ov21_0211a294

	arm_func_start FUN_ov21_0211a314
FUN_ov21_0211a314: ; 0x0211A314
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211A378 ; =0x02099F38
	b _0211A344
_0211A328:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211A340
	ldr r0, [r4]
	bl FUN_021128C4
_0211A340:
	add r5, r5, #1
_0211A344:
	cmp r5, #0x10
	blt _0211A328
	ldr r1, [r6, #0x5c]
	cmp r1, #0
	ble _0211A364
	ldr r0, _0211A378 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211A364:
	mov r0, r6
	mov r1, #0
	mov r2, #0xb0
	bl MemWrite
	ldmfd sp!, {r4, r5, r6, pc}
_0211A378: .word 0x02099F38
	arm_func_end FUN_ov21_0211a314

	arm_func_start FUN_ov21_0211a37c
FUN_ov21_0211a37c: ; 0x0211A37C
	cmp r1, #0
	beq _0211A390
	cmp r1, #3
	beq _0211A398
	b _0211A3A0
_0211A390:
	mov r0, #0
	bx lr
_0211A398:
	mov r0, #1
	bx lr
_0211A3A0:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov21_0211a37c

	arm_func_start FUN_ov21_0211a3a8
FUN_ov21_0211a3a8: ; 0x0211A3A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r1, [r10, #0x7d8]
	bl FUN_ov21_0211a37c
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x13c
	add r1, r0, #0x800
	mov r0, #0xb0
	mla r9, r4, r0, r1
	ldr r8, _0211A558 ; =0x00007FFF
	mov r6, #0
	ldr r5, _0211A55C ; =0x02099F38
	b _0211A400
_0211A3E0:
	add r0, r9, r6, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211A3FC
	ldr r0, [r5]
	mov r2, r8
	bl FUN_02114204
_0211A3FC:
	add r6, r6, #1
_0211A400:
	cmp r6, #0x10
	blt _0211A3E0
	add r0, r10, #0x13c
	sub r7, r4, #1
	ldr r8, _0211A560 ; =0x00004210
	add r5, r0, #0x800
	ldr r4, _0211A55C ; =0x02099F38
	mov r11, #0xb0
	b _0211A45C
_0211A424:
	mla r9, r7, r11, r5
	mov r6, #0
	b _0211A450
_0211A430:
	add r0, r9, r6, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211A44C
	ldr r0, [r4]
	mov r2, r8
	bl FUN_02114204
_0211A44C:
	add r6, r6, #1
_0211A450:
	cmp r6, #0x10
	blt _0211A430
	sub r7, r7, #1
_0211A45C:
	cmp r7, #0
	bge _0211A424
	ldr r0, [r10, #0x7d8]
	cmp r0, #0
	beq _0211A47C
	cmp r0, #3
	beq _0211A488
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A47C:
	ldr r8, _0211A558 ; =0x00007FFF
	mov r4, #1
	b _0211A490
_0211A488:
	ldr r8, _0211A560 ; =0x00004210
	mov r4, #0
_0211A490:
	ldr r5, _0211A55C ; =0x02099F38
	ldr r1, [r10, #0x7c4]
	ldr r0, [r5]
	mov r2, r8
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r10, #0x14]
	mov r2, r8
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r10, #0x18]
	mov r2, r8
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r10, #0xc]
	mov r2, r8
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r10, #0x10]
	mov r2, r8
	bl FUN_02114204
	ldr r0, [r5]
	ldr r1, [r10, #0x798]
	mov r2, r8
	bl FUN_02114204
	mov r6, #0
	b _0211A514
_0211A4FC:
	add r1, r10, r6, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x768]
	mov r2, r8
	bl FUN_02114204
	add r6, r6, #1
_0211A514:
	cmp r6, #6
	blt _0211A4FC
	mov r0, #0xd
	str r0, [sp]
	ldr r1, [r10, #0x14]
	mov r0, r10
	mov r3, r4
	mov r2, #0
	bl FUN_ov21_0211b4ac
	mov r0, #0xe
	str r0, [sp]
	ldr r1, [r10, #0x18]
	mov r0, r10
	add r3, r4, #2
	mov r2, #2
	bl FUN_ov21_0211b4ac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A558: .word 0x00007FFF
_0211A55C: .word 0x02099F38
_0211A560: .word 0x00004210
	arm_func_end FUN_ov21_0211a3a8

	arm_func_start FUN_ov21_0211a564
FUN_ov21_0211a564: ; 0x0211A564
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r9, r1
	mov r10, r0
	ldr r7, [r9]
	ldr r8, [r9, #0xc]
	mov r4, #0
	bl FUN_ov21_0211a314
	mov r0, r10
	bl FUN_ov21_0211cd6c
	ldr r2, [r10, #0x938]
	mov r6, r4
	mov r1, #6
	mov r0, #0x28
	str r2, [r9, #4]
	str r1, [r9, #8]
	str r6, [r9, #0x98]
	str r6, [r9, #0x9c]
	str r0, [r9, #0xa0]
	mov r2, #0x78
	mov r1, #0x10
	b _0211A5DC
_0211A5BC:
	add r3, r9, r6, lsl #3
	mov r0, r6, lsl #4
	strh r4, [r3, #0x68]
	add r0, r0, #0x18
	strh r0, [r3, #0x6a]
	strh r2, [r3, #0x6c]
	strh r1, [r3, #0x6e]
	add r6, r6, #1
_0211A5DC:
	ldr r0, [r9, #8]
	cmp r6, r0
	blt _0211A5BC
	mov r2, #4
	mov r0, r10
	mov r1, r9
	mov r3, r2
	bl FUN_ov21_0211bc78
	mov r6, #0
	add r5, sp, #0x14
	str r6, [sp, #0x14]
	mov r3, #2
	str r3, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r5
	mov r3, r6
	bl FUN_ov21_0211b8fc
	ldr r2, [r9, #0xa0]
	mov r4, r0
	ldr r11, _0211A754 ; =0x02099F38
	mov r2, r2, lsl #0x10
	ldr r0, [r11]
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldr r0, [r11]
	mov r1, r4
	mov r2, r6
	mov r3, r6
	bl FUN_02114248
	mov r11, r6
	mov r4, #0xa
	b _0211A680
_0211A664:
	mov r0, r10
	mov r1, r9
	mov r2, r5
	mov r3, r6
	str r4, [sp]
	bl FUN_ov21_0211b980
	add r6, r6, #1
_0211A680:
	ldr r0, [r9, #8]
	cmp r6, r0
	blt _0211A664
	ldr r0, [r10, #0x14]
	cmp r0, #0
	bne _0211A72C
	mov r0, r10
	bl FUN_ov21_0211a758
	str r11, [sp]
	mov r6, #8
	str r6, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r5, #0x20
	mov r0, r10
	mov r1, r11
	mov r2, r11
	str r5, [sp, #0xc]
	mov r4, #1
	mov r3, r11
	str r4, [sp, #0x10]
	bl FUN_ov21_0211b31c
	mov r0, #0x58
	stmia sp, {r0, r6}
	mov r0, #0xe
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	mov r3, #2
	str r4, [sp, #0x10]
	bl FUN_ov21_0211b31c
	mov r0, r10
	bl FUN_ov21_0211aa8c
	mov r0, r10
	bl FUN_ov21_0211add8
	mov r1, r11
	mov r0, r10
	bl FUN_ov21_0211a990
	mov r1, r4
	mov r0, r10
	bl FUN_ov21_0211a990
_0211A72C:
	mov r0, r9
	mov r1, r7
	str r8, [r9, #0xc]
	bl FUN_020F52F4
	mov r0, r10
	mov r1, r9
	mov r2, #0
	bl FUN_ov21_0211b8f8
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A754: .word 0x02099F38
	arm_func_end FUN_ov21_0211a564

	arm_func_start FUN_ov21_0211a758
FUN_ov21_0211a758: ; 0x0211A758
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r1, _0211A7C0 ; =0x02099F38
	mov r4, #1
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, r4
	bl FUN_02112724
	mov r2, #0
	mov r1, r0
	str r2, [sp, #0x14]
	str r1, [r5, #0x7c4]
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	mov r3, #4
	str r4, [sp, #0x10]
	bl FUN_ov21_0211b060
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211A7C0: .word 0x02099F38
	arm_func_end FUN_ov21_0211a758

	arm_func_start FUN_ov21_0211a7c4
FUN_ov21_0211a7c4: ; 0x0211A7C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r3, #0x24
	mul lr, r1, r3
	add r12, r0, #0x7a0
	ldr r3, [r12, lr]
	ldr r7, _0211A898 ; =0x2AAAAAAB
	mov r6, #6
	smull r1, r5, r7, r3
	add r5, r5, r3, lsr #31
	smull r4, r1, r6, r5
	smull r5, r1, r7, r2
	add r1, r1, r2, lsr #31
	smull r1, r5, r6, r1
	sub r5, r3, r4
	add r4, r0, #0x3a4
	mov r3, r5, lsl #4
	add r5, r0, #0x3a8
	sub r1, r2, r1
	add r6, r0, #0x3ac
	str r2, [r12, lr]
	mov r12, r1, lsl #4
	add r2, r0, lr
	mov r1, #1
	str r1, [r2, #0x7bc]
	add r7, r0, #0x7b0
	add r8, r3, #0x18
	add r3, r12, #0x18
	add r1, r4, #0x400
	add r5, r5, #0x400
	add r0, r6, #0x400
	mov r4, #0
	str r4, [r1, lr]
	str r8, [r5, lr]
	str r4, [r0, lr]
	str r3, [r7, lr]
	ldr r3, [r0, lr]
	ldr r1, [r1, lr]
	ldr r0, _0211A89C ; =0x0209AC44
	sub r1, r3, r1
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	str r1, [r2, #0x7b4]
	ldr r4, [r7, lr]
	ldr r3, [r5, lr]
	mov r1, #8
	sub r3, r4, r3
	add r3, r3, r3, lsr #31
	mov r3, r3, asr #1
	str r3, [r2, #0x7b8]
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A898: .word 0x2AAAAAAB
_0211A89C: .word 0x0209AC44
	arm_func_end FUN_ov21_0211a7c4

	arm_func_start FUN_ov21_0211a8a0
FUN_ov21_0211a8a0: ; 0x0211A8A0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r2, #0x24
	mul r6, r1, r2
	add r3, r0, r6
	add r5, r0, #0x7c0
	ldr r2, [r5, r6]
	ldr r4, [r0, #0x7c4]
	ldr r12, [r3, #0x7a4]
	ldr r7, [r3, #0x7a8]
	add r2, r2, #1
	str r2, [r5, r6]
	ldr r6, [r3, #0x7b4]
	ldr lr, [r3, #0x7c0]
	ldr r5, [r3, #0x7b8]
	mla r12, r6, lr, r12
	ldr r2, _0211A988 ; =0x0211D318
	mla lr, r5, lr, r7
	cmp r6, #0
	ldr r2, [r2]
	ldr r3, [r3, #0x7ac]
	bge _0211A904
	cmp r12, r3
	movlt r12, r3
	b _0211A90C
_0211A904:
	cmp r12, r3
	movgt r12, r3
_0211A90C:
	mov r3, #0x24
	mla r5, r1, r3, r0
	ldr r3, [r5, #0x7b8]
	cmp r3, #0
	ldr r3, [r5, #0x7b0]
	bge _0211A930
	cmp lr, r3
	movlt lr, r3
	b _0211A938
_0211A930:
	cmp lr, r3
	movgt lr, r3
_0211A938:
	mov r3, #0x24
	mla r3, r1, r3, r0
	ldr r0, [r3, #0x7ac]
	cmp r12, r0
	ldreq r0, [r3, #0x7b0]
	cmpeq lr, r0
	moveq r0, #0
	streq r0, [r3, #0x7bc]
	streq r0, [r3, #0x7c0]
	mov r0, lr, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [sp]
	ldr r0, _0211A98C ; =0x02099F38
	mov r3, r12, lsl #0x10
	ldr r0, [r0]
	mov r1, r4
	mov r3, r3, asr #0x10
	bl FUN_02113B78
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A988: .word 0x0211D318
_0211A98C: .word 0x02099F38
	arm_func_end FUN_ov21_0211a8a0

	arm_func_start FUN_ov21_0211a990
FUN_ov21_0211a990: ; 0x0211A990
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AA48 ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r4
	bl FUN_02112724
	mov r1, #0
	str r1, [sp, #0x24]
	ldmib r6, {r2, r12}
	ldr r1, _0211AA4C ; =0x0211D31C
	add r7, r2, #1
	ldr lr, [r1]
	ldr r2, [r1, #4]
	mov r1, r0
	str r12, [sp, #0x20]
	add r3, r6, r5, lsl #2
	str r1, [r3, #0xc]
	add r0, sp, #0x1c
	str r7, [sp, #0x1c]
	str r2, [sp, #0x18]
	ldr r2, [r0, r5, lsl #2]
	add r12, sp, #0x14
	str lr, [sp, #0x14]
	str r2, [sp]
	ldr r0, [r12, r5, lsl #2]
	add r2, sp, #0x24
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	mov r0, r6
	mov r3, r4
	str r4, [sp, #0x10]
	bl FUN_ov21_0211b060
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA48: .word 0x02099F38
_0211AA4C: .word 0x0211D31C
	arm_func_end FUN_ov21_0211a990

	arm_func_start FUN_ov21_0211aa50
FUN_ov21_0211aa50: ; 0x0211AA50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211AA88 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021128C4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AA88: .word 0x02099F38
	arm_func_end FUN_ov21_0211aa50

	arm_func_start FUN_ov21_0211aa8c
FUN_ov21_0211aa8c: ; 0x0211AA8C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	sub sp, sp, #0x800
	mov r7, #0
	mov r10, r0
	add r0, sp, #0x1c
	mov r1, r7
	mov r2, #0x700
	mov r4, r7
	bl MemWrite
	ldr r0, _0211ADCC ; =0x02099F78
	ldr r1, _0211ADD0 ; =0x0211D56C
	bl FUN_020418b0
	ldr r9, [r10, #0xaf8]
	str r7, [r10, #0x79c]
	cmp r9, #0
	ldrne r1, [r10, #0xafc]
	movne r6, r7
	movne r8, r1, lsr #2
	cmpne r8, #0
	ble _0211AB14
	add r2, sp, #0x700
	add r2, r2, #0x1c
_0211AAE8:
	ldrb r5, [r0, r9]
	add r6, r6, #1
	add r9, r9, #4
	cmp r5, #0
	ldrne r1, [r10, #0x79c]
	movne r3, r1
	addne r1, r1, #1
	strne r5, [r2, r3, lsl #2]
	strne r1, [r10, #0x79c]
	cmp r6, r8
	blt _0211AAE8
_0211AB14:
	mov r11, #0x1c
	mov r9, #0
	add r5, r10, #0x68
_0211AB20:
	mov r1, r9, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	bl FUN_ov21_0211ce50
	movs r6, r0
	beq _0211AB64
	mul r8, r9, r11
	mov r2, #0x13
	add r1, r5, r8
	bl _memcpy
	add r1, r10, r8
	str r9, [r1, #0x7c]
	ldrb r0, [r6, #0x13]
	strb r0, [r1, #0x80]
	ldrb r0, [r6, #0x14]
	strb r0, [r1, #0x81]
	strb r4, [r1, #0x82]
_0211AB64:
	add r9, r9, #1
	cmp r9, #0x40
	mov r6, #0x1c
	blt _0211AB20
	ldr r0, [r10, #0x79c]
	mov r9, #0
	cmp r0, #0
	ble _0211ABE0
	add r8, sp, #0x700
	add r5, r10, #0x68
	add r8, r8, #0x1c
_0211AB90:
	ldr r2, [r8, r9, lsl #2]
	mov r1, r4
_0211AB98:
	mul r3, r1, r6
	add r0, r10, r3
	ldr r0, [r0, #0x7c]
	cmp r2, r0
	bne _0211ABC4
	add r0, sp, #0x1c
	mla r1, r9, r6, r0
	mov r2, r6
	add r0, r5, r3
	bl _memcpy
	b _0211ABD0
_0211ABC4:
	add r1, r1, #1
	cmp r1, #0x40
	blt _0211AB98
_0211ABD0:
	ldr r0, [r10, #0x79c]
	add r9, r9, #1
	cmp r9, r0
	blt _0211AB90
_0211ABE0:
	ldr r0, [r10, #0x24]
	mov r5, #0
	cmp r0, #0
	add r3, sp, #0x1c
	mov r0, #0x1c
	mov r9, r5
	ble _0211AC4C
	mov r2, #1
_0211AC00:
	ldr r8, [r10, #0x79c]
	mov r11, r5
	cmp r8, #0
	ble _0211AC3C
	add r1, r10, r9
	ldrb r6, [r1, #0x28]
_0211AC18:
	mla r4, r11, r0, r3
	ldr r1, [r4, #0x14]
	cmp r6, r1
	streqb r2, [r4, #0x1a]
	addeq r7, r7, #1
	beq _0211AC3C
	add r11, r11, #1
	cmp r11, r8
	blt _0211AC18
_0211AC3C:
	ldr r1, [r10, #0x24]
	add r9, r9, #1
	cmp r9, r1
	blt _0211AC00
_0211AC4C:
	ldr r1, _0211ADD4 ; =0x2AAAAAAB
	add r4, sp, #0x1c
	smull r0, r2, r1, r7
	add r2, r2, r7, lsr #31
	cmp r2, #1
	str r2, [r10, #8]
	movlt r0, #1
	strlt r0, [r10, #8]
	mov r8, #0x1c
	cmp r7, #6
	blt _0211AC9C
	ldr r1, _0211ADD4 ; =0x2AAAAAAB
	mov r2, #6
	smull r0, r3, r1, r7
	add r3, r3, r7, lsr #31
	smull r0, r1, r2, r3
	subs r3, r7, r0
	ldrne r0, [r10, #8]
	addne r0, r0, #1
	strne r0, [r10, #8]
_0211AC9C:
	mov r5, #0
_0211ACA0:
	mla r6, r5, r8, r4
	ldrb r0, [r6, #0x1a]
	cmp r0, #1
	beq _0211AD90
	add r1, r5, #1
	cmp r1, #0x40
	bhs _0211AD90
_0211ACBC:
	mla r7, r1, r8, r4
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _0211AD84
	mov r11, r6
	add r9, sp, #0
	ldmia r11!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	ldmia r11, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	mov r3, r7
	mov r11, r6
	mov r2, #9
_0211ACF0:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [r11, #1]
	strb r1, [r11], #2
	bne _0211ACF0
	ldrb r0, [r3]
	add r9, sp, #0
	mov r3, r7
	strb r0, [r11]
	ldr r0, [r7, #0x14]
	mov r2, #9
	str r0, [r6, #0x14]
	ldrb r0, [r7, #0x18]
	strb r0, [r6, #0x18]
	ldrb r0, [r7, #0x19]
	strb r0, [r6, #0x19]
	ldrb r0, [r7, #0x1a]
	strb r0, [r6, #0x1a]
_0211AD40:
	ldrb r0, [r9, #1]
	ldrb r1, [r9], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211AD40
	ldrb r2, [r9]
	ldr r1, [sp, #0x14]
	ldrb r0, [sp, #0x18]
	strb r2, [r3]
	str r1, [r7, #0x14]
	ldrb r1, [sp, #0x19]
	strb r0, [r7, #0x18]
	ldrb r0, [sp, #0x1a]
	strb r1, [r7, #0x19]
	strb r0, [r7, #0x1a]
	b _0211AD90
_0211AD84:
	add r1, r1, #1
	cmp r1, #0x40
	blo _0211ACBC
_0211AD90:
	add r5, r5, #1
	cmp r5, #0x40
	blo _0211ACA0
	mov r4, #0x700
	mov r2, r4
	add r0, r10, #0x68
	mov r1, #0
	bl MemWrite
	add r0, sp, #0x1c
	mov r2, r4
	add r1, r10, #0x68
	bl _memcpy
	add sp, sp, #0x1c
	add sp, sp, #0x800
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADCC: .word 0x02099F78
_0211ADD0: .word 0x0211D56C
_0211ADD4: .word 0x2AAAAAAB
	arm_func_end FUN_ov21_0211aa8c

	arm_func_start FUN_ov21_0211add8
FUN_ov21_0211add8: ; 0x0211ADD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r1, [r10, #4]
	mov r9, #6
	mul r0, r1, r9
	str r0, [sp, #0x14]
	ldr r1, [r10, #0x79c]
	add r0, r0, #6
	cmp r0, r1
	ldrgt r0, [sp, #0x14]
	subgt r9, r1, r0
	ldr r0, [r10, #0x798]
	cmp r0, #0
	ldr r0, [sp, #0x14]
	add r5, r0, r9
	bne _0211AF34
	ldr r0, _0211AFD0 ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	mov r2, r4
	add r1, r9, #3
	bl FUN_02112724
	mov r7, r0
	mov r6, #0
	str r6, [sp, #0x18]
	str r7, [r10, #0x798]
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, r10
	str r4, [sp, #0x10]
	mov r1, r7
	add r2, sp, #0x18
	mov r3, #0xa
	bl FUN_ov21_0211b060
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x28
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x18
	mov r3, #2
	str r4, [sp, #0x10]
	bl FUN_ov21_0211b060
	add r8, r6, #1
	mov r4, r6
	mov r11, #0x28
	b _0211AEEC
_0211AEB4:
	str r8, [sp]
	mov r0, r6, lsl #4
	add r0, r0, #0x18
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x18
	mov r3, #2
	bl FUN_ov21_0211b060
	add r6, r6, #1
_0211AEEC:
	cmp r6, r9
	blt _0211AEB4
	add r0, r8, #1
	str r0, [sp]
	mov r0, #0
	mov r1, r9, lsl #4
	str r0, [sp, #4]
	add r0, r1, #0x18
	str r0, [sp, #8]
	mov r3, #0x28
	str r3, [sp, #0xc]
	mov r4, #1
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r7
	mov r3, #2
	str r4, [sp, #0x10]
	bl FUN_ov21_0211b060
_0211AF34:
	ldr r6, [sp, #0x14]
	mov r9, #0
	add r7, r10, #0x780
	add r4, r10, #0x68
	mov r8, #5
	mov r11, #0x20
	b _0211AFC0
_0211AF50:
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x1c
	mla r0, r6, r0, r10
	ldrb r0, [r0, #0x82]
	cmp r0, #1
	bne _0211AFB8
	ldr r0, _0211AFD0 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02112724
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x768]
	mov r2, r0
	mov r0, r9, lsl #4
	add r1, r0, #0x1b
	add r0, r7, r9, lsl #2
	stmia sp, {r0, r8}
	str r1, [sp, #8]
	mov r1, #0x1c
	mla r1, r6, r1, r4
	mov r0, r10
	add r3, sp, #0x1c
	str r11, [sp, #0xc]
	bl FUN_ov21_0211b120
_0211AFB8:
	add r6, r6, #1
	add r9, r9, #1
_0211AFC0:
	cmp r6, r5
	blt _0211AF50
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AFD0: .word 0x02099F38
	arm_func_end FUN_ov21_0211add8

	arm_func_start FUN_ov21_0211afd4
FUN_ov21_0211afd4: ; 0x0211AFD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
	mov r9, r5
	mov r8, r5
	ldr r7, _0211B05C ; =0x02099F38
	b _0211B050
_0211AFF4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x768]
	cmp r1, #0
	beq _0211B014
	ldr r0, [r7]
	bl FUN_021128C4
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x768]
_0211B014:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x780]
	cmp r1, #0
	beq _0211B034
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r9, [r0, #0x780]
_0211B034:
	ldr r1, [r6, #0x798]
	cmp r1, #0
	beq _0211B04C
	ldr r0, [r7]
	bl FUN_021128C4
	str r8, [r6, #0x798]
_0211B04C:
	add r5, r5, #1
_0211B050:
	cmp r5, #6
	blt _0211AFF4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B05C: .word 0x02099F38
	arm_func_end FUN_ov21_0211afd4

	arm_func_start FUN_ov21_0211b060
FUN_ov21_0211b060: ; 0x0211B060
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x7e8]
	ldr r6, _0211B11C ; =0x02099F38
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
_0211B11C: .word 0x02099F38
	arm_func_end FUN_ov21_0211b060

	arm_func_start FUN_ov21_0211b120
FUN_ov21_0211b120: ; 0x0211B120
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
	ldr r4, _0211B314 ; =0x02099F38
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
	ldr r0, _0211B318 ; =0x02099F50
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
	ldr r0, _0211B318 ; =0x02099F50
	str r6, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r7
	mov r3, r11
	bl FUN_020425fc
	ldr r0, _0211B318 ; =0x02099F50
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
_0211B314: .word 0x02099F38
_0211B318: .word 0x02099F50
	arm_func_end FUN_ov21_0211b120

	arm_func_start FUN_ov21_0211b31c
FUN_ov21_0211b31c: ; 0x0211B31C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211B4A4 ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r6, #2
	mov r9, r1
	mov r5, #1
	mov r8, r2
	mov r1, r6
	mov r2, r5
	mov r7, r3
	mov r11, #0
	bl FUN_02112724
	add r2, r10, r9, lsl #2
	add r1, r10, r8, lsl #2
	str r0, [r2, #0x14]
	ldr r1, [r1, #0x7e8]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl FUN_021137DC
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r7
	bl FUN_0211401C
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
	bl FUN_02113B78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, r5
	mov r3, r3, lsr #0x10
	bl FUN_021139BC
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r6
	mov r1, r8
	mov r2, r5
	bl FUN_02113EC0
	ldr r2, [sp, #0x38]
	str r5, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0211B4A8 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r8
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_0210FC74
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [sp, #0x40]
	strb r11, [r4, #0x10]
	strb r11, [r4, #0xf]
	strh r11, [r4, #0xc]
	cmp r0, #1
	addne sp, sp, #8
	strb r11, [r4, #0x11]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r4, #0x3a
	bl FUN_0210E6FC
	mov r1, r11
	mov r2, r7
	mov r3, r11
	add r0, r4, #0x3a
	bl FUN_0210E720
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r4, #0x3e
	bl FUN_0210E6FC
	add r0, r4, #0x3e
	add r2, r7, #1
	mov r1, r11
	mov r3, r11
	bl FUN_0210E720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B4A4: .word 0x02099F38
_0211B4A8: .word 0x02099EB4
	arm_func_end FUN_ov21_0211b31c

	arm_func_start FUN_ov21_0211b4ac
FUN_ov21_0211b4ac: ; 0x0211B4AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r0, _0211B554 ; =0x02099EB4
	mov r12, r4, lsl #0x10
	mov r4, r1
	ldr r0, [r0]
	mov r1, r12, lsr #0x10
	mov r9, r2
	mov r8, r3
	mov r7, #0
	bl FUN_0210E7D0
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211B558 ; =0x02099F38
	str r7, [sp]
	mov r5, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r5
	mov r3, r9
	bl FUN_0211401C
	mov r1, r7
	mov r2, r5
	mov r3, r7
	add r0, r6, #0x3a
	bl FUN_0210E6FC
	mov r1, r7
	mov r2, r9
	add r0, r6, #0x3a
	mov r3, r7
	bl FUN_0210E720
	mov r2, r5
	add r0, r6, #0x3e
	mov r1, r7
	mov r3, r7
	bl FUN_0210E6FC
	add r0, r6, #0x3e
	mov r2, r8
	mov r1, r7
	mov r3, r7
	bl FUN_0210E720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B554: .word 0x02099EB4
_0211B558: .word 0x02099F38
	arm_func_end FUN_ov21_0211b4ac

	arm_func_start FUN_ov21_0211b55c
FUN_ov21_0211b55c: ; 0x0211B55C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r10, r0
	ldr r8, [r9]
	bl FUN_ov21_0211a314
	mov r11, #0
	mov r4, #1
	mov r0, #0x14
	str r0, [r9, #0xa0]
	str r4, [r9, #4]
	str r4, [r9, #8]
	str r11, [r9, #0x98]
	str r11, [r9, #0x9c]
	str r11, [sp, #4]
	add r2, sp, #4
	mov r0, r10
	mov r1, r9
	mov r3, r11
	str r4, [sp]
	bl FUN_ov21_0211b8fc
	movs r6, r0
	beq _0211B610
	ldr r0, [r9, #0xa0]
	ldr r5, _0211B8F0 ; =0x02099F38
	mov r2, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldr r0, [r5]
	mov r1, r6
	mov r2, #0x20
	mov r3, #0x40
	bl FUN_02114248
	ldr r0, [r5]
	mov r1, r6
	ldr r2, [r10, #0x804]
	and r2, r2, #0xff
	bl FUN_02112950
	ldr r0, [r5]
	mov r1, r6
	mov r2, r11
	mov r3, r11
	bl FUN_0211346C
_0211B610:
	add r2, sp, #4
	mov r0, r10
	mov r1, r9
	mov r3, r11
	str r4, [sp]
	bl FUN_ov21_0211b8fc
	movs r6, r0
	beq _0211B6B4
	ldr r0, [r9, #0xa0]
	ldr r5, _0211B8F0 ; =0x02099F38
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldr r2, [r10, #0x800]
	ldr r0, [r5]
	mov r1, r6
	and r3, r2, #0xff
	mov r2, r4
	bl FUN_021137DC
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, #0x38
	bl FUN_02113B78
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, r11
	bl FUN_0211401C
	ldr r0, [r5]
	mov r3, r4
	mov r1, r6
	mov r2, #2
	bl FUN_021142FC
	str r6, [r10, #0x830]
_0211B6B4:
	mov r7, #1
	add r2, sp, #4
	mov r0, r10
	mov r1, r9
	mov r3, r11
	str r7, [sp]
	bl FUN_ov21_0211b8fc
	movs r6, r0
	beq _0211B760
	ldr r0, [r9, #0xa0]
	ldr r4, _0211B8F0 ; =0x02099F38
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02112B98
	ldr r2, [r10, #0x800]
	ldr r0, [r4]
	mov r1, r6
	and r3, r2, #0xff
	mov r2, r7
	bl FUN_021137DC
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #0x98
	bl FUN_02113B78
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r5, #2
	mov r3, r5
	bl FUN_0211401C
	ldr r0, [r4]
	mov r2, r5
	mov r3, r7
	mov r1, r6
	bl FUN_021142FC
	str r6, [r10, #0x834]
_0211B760:
	mov r5, #1
	mov r0, r10
	mov r1, r5
	mov r2, r11
	bl FUN_ov21_0211c24c
	ldr r0, [r9, #8]
	mov r1, #0xc0
	sub r0, r0, #1
	add r0, r9, r0, lsl #3
	strh r11, [r0, #0x68]
	ldr r0, [r9, #8]
	add r2, sp, #4
	sub r0, r0, #1
	add r0, r9, r0, lsl #3
	strh r1, [r0, #0x6a]
	ldr r1, [r9, #8]
	mov r0, r10
	sub r1, r1, #1
	add r1, r9, r1, lsl #3
	strh r11, [r1, #0x6c]
	ldr r3, [r9, #8]
	mov r1, r9
	sub r3, r3, #1
	add r4, r9, r3, lsl #3
	strh r11, [r4, #0x6e]
	mov r4, #0xa
	mov r3, r11
	str r4, [sp]
	bl FUN_ov21_0211b980
	str r4, [sp]
	ldr r0, _0211B8F4 ; =0x02099EB4
	mov r4, #3
	ldr r0, [r0]
	ldr r3, [r10, #0x834]
	mov r1, r4
	mov r2, #0xc
	bl FUN_0210FBE8
	movs r6, r0
	beq _0211B84C
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r6, #0x3a
	bl FUN_0210E6FC
	mov r1, r11
	mov r3, r11
	add r0, r6, #0x3a
	mov r2, #2
	bl FUN_0210E720
	mov r2, r5
	add r0, r6, #0x3e
	mov r1, r11
	mov r3, r11
	bl FUN_0210E6FC
	add r0, r6, #0x3e
	mov r2, r4
	mov r1, r11
	mov r3, r11
	bl FUN_0210E720
_0211B84C:
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0211B8F4 ; =0x02099EB4
	ldr r3, [r10, #0x830]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0xb
	mov r4, #1
	mov r5, #0
	bl FUN_0210FBE8
	movs r6, r0
	beq _0211B8CC
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_0210E6FC
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_0210E720
	add r0, r6, #0x3e
	mov r1, r5
	mov r2, r4
	mov r3, r5
	bl FUN_0210E6FC
	add r0, r6, #0x3e
	mov r2, r4
	mov r1, r5
	mov r3, r5
	bl FUN_0210E720
_0211B8CC:
	mov r0, r9
	mov r1, r8
	bl FUN_020F52F4
	mov r0, r10
	mov r1, r9
	mov r2, #0
	bl FUN_ov21_0211b8f8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B8F0: .word 0x02099F38
_0211B8F4: .word 0x02099EB4
	arm_func_end FUN_ov21_0211b55c

	arm_func_start FUN_ov21_0211b8f8
FUN_ov21_0211b8f8: ; 0x0211B8F8
	bx lr
	arm_func_end FUN_ov21_0211b8f8

	arm_func_start FUN_ov21_0211b8fc
FUN_ov21_0211b8fc: ; 0x0211B8FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x10
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #4
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B97C ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x61]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x60]
	ldr r1, [r5]
	add r2, r6, #0x61
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x1c]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B97C: .word 0x02099F38
	arm_func_end FUN_ov21_0211b8fc

	arm_func_start FUN_ov21_0211b980
FUN_ov21_0211b980: ; 0x0211B980
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r7, #4
	mov r6, #1
	mov r8, r3
	mov r9, r1
	mov r3, r6
	str r7, [sp]
	mov r10, r0
	bl FUN_ov21_0211b8fc
	ldr r1, [r9, #0xa0]
	mov r5, r0
	sub r0, r1, #4
	mov r1, r0, lsl #0x10
	ldr r4, _0211BBF0 ; =0x02099F38
	mov r2, r1, lsr #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	bl FUN_02112C90
	add r3, r9, r8, lsl #3
	ldrsh r2, [r3, #0x68]
	ldrsh r3, [r3, #0x6a]
	ldr r0, [r4]
	mov r1, r5
	bl FUN_02114248
	ldr r3, [r10, #0x7fc]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_021137DC
	mov r11, #0
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r11
	bl FUN_02113B78
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r11
	bl FUN_0211401C
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_02113F7C
	ldr r3, [r9, #0x5c]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	and r3, r3, #0xff
	bl FUN_021137DC
	mov r0, #0xd
	mul r0, r8, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, r11
	bl FUN_02113D88
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, #0x80
	bl FUN_02113D08
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, #5
	bl FUN_02113B78
	ldr r0, [r4]
	rsb r2, r6, #0x8000
	mov r1, r5
	bl FUN_02112E5C
	ldr r3, [r10, #0x808]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	and r3, r3, #0xff
	bl FUN_021137DC
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	mov r3, r11
	bl FUN_02113B78
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	mov r3, #2
	bl FUN_0211401C
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	mov r3, #2
	bl FUN_02113F7C
	ldr r1, [r10, #0x80c]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r7
	bl FUN_021137DC
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	mov r3, r11
	bl FUN_02113B78
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	mov r3, r11
	bl FUN_0211401C
	ldr r0, [r4]
	mov r2, r7
	mov r3, #2
	mov r1, r5
	bl FUN_02113F7C
	add r3, r9, r8, lsl #3
	ldrsh r6, [r3, #0x6a]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	str r6, [sp]
	ldrsh r6, [r3, #0x6c]
	mov r2, r0, lsr #0x10
	ldr r4, [sp, #0x38]
	str r6, [sp, #4]
	ldrsh r6, [r3, #0x6e]
	ldr r0, _0211BBF4 ; =0x02099EB4
	mov r1, #3
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	ldrsh r3, [r3, #0x68]
	ldr r0, [r0]
	bl FUN_0210FBA4
	strh r5, [r0, #0x34]
	strb r11, [r0, #0x38]
	str r11, [r0, #0x1c]
	str r11, [r0, #0x20]
	ldr r1, _0211BBF8 ; =0x0210FB1C
	str r11, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BBF0: .word 0x02099F38
_0211BBF4: .word 0x02099EB4
_0211BBF8: .word 0x0210FB1C
	arm_func_end FUN_ov21_0211b980

	arm_func_start FUN_ov21_0211bbfc
FUN_ov21_0211bbfc: ; 0x0211BBFC
	ldr r1, [r0, #0x7a0]
	ldr r0, _0211BC1C ; =0x02099EB4
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	ldr r12, _0211BC20 ; =FUN_0210EFAC
	mov r1, r1, lsr #0x10
	bx r12
_0211BC1C: .word 0x02099EB4
_0211BC20: .word FUN_0210EFAC
	arm_func_end FUN_ov21_0211bbfc

	arm_func_start FUN_ov21_0211bc24
FUN_ov21_0211bc24: ; 0x0211BC24
	mov r2, #6
	str r2, [r0, #0x7d4]
	str r1, [r0, #0x7cc]
	bx lr
	arm_func_end FUN_ov21_0211bc24

	arm_func_start FUN_ov21_0211bc34
FUN_ov21_0211bc34: ; 0x0211BC34
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	beq _0211BC50
	cmp r4, #3
	beq _0211BC54
	b _0211BC64
_0211BC50:
	b _0211BC54
_0211BC54:
	ldr r0, _0211BC74 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_0210EE78
_0211BC64:
	mov r0, #4
	str r4, [r5, #0x7d8]
	str r0, [r5, #0x7d4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BC74: .word 0x02099EB4
	arm_func_end FUN_ov21_0211bc34

	arm_func_start FUN_ov21_0211bc78
FUN_ov21_0211bc78: ; 0x0211BC78
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r6, r1
	str r5, [sp, #0x10]
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0211BD08 ; =0x02099F38
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
_0211BD08: .word 0x02099F38
	arm_func_end FUN_ov21_0211bc78

	arm_func_start FUN_ov21_0211bd0c
FUN_ov21_0211bd0c: ; 0x0211BD0C
	bx lr
	arm_func_end FUN_ov21_0211bd0c

	arm_func_start FUN_ov21_0211bd10
FUN_ov21_0211bd10: ; 0x0211BD10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	add r3, sp, #4
	mov r2, #0
	mov r10, r0
	str r2, [r3]
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #0xc]
	str r2, [r3, #0x10]
	str r2, [r3, #0x14]
	ldr r2, [r10, #0x7d8]
	mov r9, r1
	cmp r2, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, #4
	mov r3, #5
	bl FUN_ov21_0211bc78
	mov r0, r10
	bl FUN_ov21_0211bd0c
	add r0, r10, #0x38
	mov r3, #0x18
	ldr r1, [r9, #0xc]
	add r2, r0, #0x800
	ldr r6, [r9, #8]
	str r3, [r9, #4]
	add r0, r1, r6
	cmp r0, #0x18
	add r7, r2, r1, lsl #2
	subgt r6, r3, r1
	mov r8, #0
	add r5, sp, #4
	ldr r4, _0211BECC ; =0x0211D380
	b _0211BDE0
_0211BD9C:
	ldrh r0, [r7]
	cmp r0, #0
	ldreq r0, [r4, #0x20]
	streq r0, [r5, r8, lsl #2]
	beq _0211BDD8
	mov r1, r0, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	bl FUN_ov21_0211ce50
	ldrb r1, [r7, #3]
	cmp r1, #0
	cmpne r0, #0
	strne r0, [r5, r8, lsl #2]
	ldreq r0, [r4, #0x1c]
	streq r0, [r5, r8, lsl #2]
_0211BDD8:
	add r8, r8, #1
	add r7, r7, #4
_0211BDE0:
	cmp r8, r6
	blt _0211BD9C
	add r0, r10, #0x38
	mov r8, #0
	add r11, r0, #0x800
	mov r5, #2
	ldr r4, _0211BED0 ; =0x02099F38
	b _0211BEA4
_0211BE00:
	ldrb r2, [r9, #0x62]
	ldr r1, [r9, #0xc]
	ldr r0, [r9, #4]
	add r2, r2, r8
	add r2, r9, r2, lsl #2
	ldr r7, [r2, #0x1c]
	add r6, r1, r8
	sub r0, r0, #1
	cmp r6, r0
	ldr r0, [r4]
	mov r1, r7
	bge _0211BE78
	mov r2, #3
	mov r3, r5
	bl FUN_02113F7C
	add r0, r11, r6, lsl #2
	ldrb r0, [r0, #2]
	mov r1, r7
	mov r2, #4
	cmp r0, #0
	beq _0211BE64
	ldr r0, [r4]
	mov r3, r5
	bl FUN_02113F7C
	b _0211BEA0
_0211BE64:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r5
	b _0211BE9C
_0211BE78:
	mov r2, #4
	mov r3, #2
	bl FUN_02113F7C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #3
	mov r3, #2
_0211BE9C:
	bl FUN_02113EC0
_0211BEA0:
	add r8, r8, #1
_0211BEA4:
	ldr r0, [r9, #8]
	cmp r8, r0
	blt _0211BE00
	ldr r1, [r9, #0x5c]
	add r2, sp, #4
	mov r0, r10
	mov r3, #6
	bl FUN_ov21_0211bed4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BECC: .word 0x0211D380
_0211BED0: .word 0x02099F38
	arm_func_end FUN_ov21_0211bd10

	arm_func_start FUN_ov21_0211bed4
FUN_ov21_0211bed4: ; 0x0211BED4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211BFB8 ; =0x02099F38
	mov r10, r2
	ldr r0, [r4]
	mov r9, r3
	mov r7, #0
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl FUN_02111458
	mov r8, r0
	mov r5, r7
	mov r4, #1
	ldr r11, _0211BFBC ; =0x02099F50
	b _0211BF74
_0211BF28:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _0211BF70
	mov r0, #0xd
	mul r0, r7, r0
	str r8, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r0, [r11]
	ldr r1, [r10, r7, lsl #2]
	mov r2, r6
	mov r3, #0x80
	bl FUN_020425fc
_0211BF70:
	add r7, r7, #1
_0211BF74:
	cmp r7, r9
	blt _0211BF28
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl FUN_020026d0
	ldr r0, _0211BFB8 ; =0x02099F38
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r6
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BFB8: .word 0x02099F38
_0211BFBC: .word 0x02099F50
	arm_func_end FUN_ov21_0211bed4

	arm_func_start FUN_ov21_0211bfc0
FUN_ov21_0211bfc0: ; 0x0211BFC0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x67]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _0211BFF4
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _0211BFFC
_0211BFF4:
	mov r0, #0
	str r0, [sp, #0x28]
_0211BFFC:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x66]
	ldr r0, _0211C060 ; =0x02099ED4
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x1c]
	bl FUN_0210E29C
	ldrb r1, [r4, #0x66]
	ldr r0, _0211C064 ; =0x02099F38
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	mov r3, #1
	bl FUN_021142FC
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211C060: .word 0x02099ED4
_0211C064: .word 0x02099F38
	arm_func_end FUN_ov21_0211bfc0

	arm_func_start FUN_ov21_0211c068
FUN_ov21_0211c068: ; 0x0211C068
	stmfd sp!, {r3, lr}
	ldr r3, [r1, #0x10]
	str r2, [sp]
	add r3, r1, r3, lsl #3
	ldrsh r2, [r3, #0x68]
	ldrsh r3, [r3, #0x6a]
	bl FUN_ov21_0211bfc0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov21_0211c068

	arm_func_start FUN_ov21_0211c088
FUN_ov21_0211c088: ; 0x0211C088
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r8, r1
	ldrb r0, [r8, #0x65]
	mov r7, r2
	mov r6, r3
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8, #4]
	ldr r0, [r8, #8]
	mov r5, #2
	cmp r1, r0
	mov r4, #1
	bgt _0211C12C
	ldrb r0, [r8, #0x64]
	ldr r6, _0211C1E8 ; =0x02099F38
	mov r2, r5
	add r1, r8, r0, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_021142FC
	ldrb r1, [r8, #0x64]
	ldr r0, [r6]
	mov r2, r5
	add r1, r1, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_021142FC
	ldrb r1, [r8, #0x64]
	ldr r0, [r6]
	mov r2, r5
	add r1, r1, #2
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_021142FC
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C12C:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r7}
	ldr r0, [sp, #0x38]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r8, #0x64]
	ldr r0, _0211C1EC ; =0x02099ED4
	mov r2, r1
	add r3, r8, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x1c]
	bl FUN_0210E29C
	ldrb r0, [r8, #0x64]
	ldr r9, _0211C1E8 ; =0x02099F38
	mov r2, r5
	add r1, r8, r0, lsl #2
	ldr r0, [r9]
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_021142FC
	ldrb r1, [r8, #0x64]
	ldr r0, [r9]
	mov r2, r5
	add r1, r1, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_021142FC
	ldrb r1, [r8, #0x64]
	ldr r0, [r9]
	mov r2, r5
	add r1, r1, #2
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_021142FC
	ldr r0, _0211C1F0 ; =0x02099EB4
	mov r2, r7
	ldr r0, [r0]
	mov r3, r6
	mov r1, #0xa
	bl FUN_0210FD0C
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C1E8: .word 0x02099F38
_0211C1EC: .word 0x02099ED4
_0211C1F0: .word 0x02099EB4
	arm_func_end FUN_ov21_0211c088

	arm_func_start FUN_ov21_0211c1f4
FUN_ov21_0211c1f4: ; 0x0211C1F4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrsh r3, [r4, #0xaa]
	ldr r1, [r4, #0xc]
	mov r5, r0
	mul r0, r3, r1
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	mov r6, r2
	sub r1, r3, r1
	bl FUN_0201f9bc
	str r6, [sp]
	mov r12, r0
	ldrsh r3, [r4, #0xa6]
	ldrsh r2, [r4, #0xa4]
	mov r0, r5
	mov r1, r4
	add r3, r3, r12
	bl FUN_ov21_0211c088
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov21_0211c1f4

	arm_func_start FUN_ov21_0211c24c
FUN_ov21_0211c24c: ; 0x0211C24C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211C29C ; =0x02099F38
	mov r7, r0
	mov r3, r1
	ldr r0, [r4]
	ldr r1, [r7, #0x830]
	mov r5, #2
	mov r6, r2
	mov r2, r5
	bl FUN_021142FC
	ldr r0, [r4]
	ldr r1, [r7, #0x834]
	mov r2, r5
	mov r3, r6
	bl FUN_021142FC
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	str r0, [r7, #0xa9c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C29C: .word 0x02099F38
	arm_func_end FUN_ov21_0211c24c

	arm_func_start FUN_ov21_0211c2a0
FUN_ov21_0211c2a0: ; 0x0211C2A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	cmp r1, #1
	blt _0211C34C
	cmp r1, #7
	bgt _0211C34C
	ldr r0, [r4, #0x7d8]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	sub r0, r0, #1
	cmp r2, r0
	mov r3, #0
	bne _0211C314
	ldr r5, [r4, #0x79c]
	ldr r2, _0211C3CC ; =0x2AAAAAAB
	mov r12, #6
	smull r0, lr, r2, r5
	add lr, lr, r5, lsr #31
	smull r0, r2, r12, lr
	sub lr, r5, r0
	cmp lr, #0
	ble _0211C314
	add r0, lr, #1
	cmp r1, r0
	ldmgefd sp!, {r3, r4, r5, pc}
_0211C314:
	ldr r0, [r4, #0x7a0]
	sub r2, r1, #1
	cmp r2, r0
	bne _0211C33C
	ldr r0, _0211C3D0 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C33C:
	mov r0, r4
	mov r1, r3
	bl FUN_ov21_0211a7c4
	ldmfd sp!, {r3, r4, r5, pc}
_0211C34C:
	cmp r1, #0xb
	bne _0211C38C
	ldr r0, _0211C3D4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r1, r4, #0x1ec
	mov r5, #0
	mov r0, r4
	mov r2, r5
	add r1, r1, #0x800
	bl FUN_ov21_0211b8f8
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl FUN_ov21_0211c24c
	ldmfd sp!, {r3, r4, r5, pc}
_0211C38C:
	cmp r1, #0xc
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211C3D4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r1, r4, #0x1ec
	mov r5, #0
	mov r0, r4
	mov r2, r5
	add r1, r1, #0x800
	bl FUN_ov21_0211b8f8
	mov r0, r4
	mov r1, r5
	mov r2, #1
	bl FUN_ov21_0211c24c
	ldmfd sp!, {r3, r4, r5, pc}
_0211C3CC: .word 0x2AAAAAAB
_0211C3D0: .word 0x02099EB4
_0211C3D4: .word 0x0209AC44
	arm_func_end FUN_ov21_0211c2a0

	arm_func_start FUN_ov21_0211c3d8
FUN_ov21_0211c3d8: ; 0x0211C3D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211C504 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_0210E7D0
	ldr r1, [r6, #0x7d8]
	mov r0, r6
	bl FUN_ov21_0211a37c
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #1
	blt _0211C424
	cmp r5, #7
	ble _0211C4D0
_0211C424:
	cmp r5, #0xb
	bne _0211C444
	ldr r0, _0211C504 ; =0x02099EB4
	mov r1, #1
_0211C434:
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	b _0211C4D0
_0211C444:
	cmp r5, #0xc
	bne _0211C458
	ldr r0, _0211C504 ; =0x02099EB4
	mov r1, #2
	b _0211C434
_0211C458:
	cmp r5, #8
	bne _0211C484
	add r0, r6, #0x13c
	mov r7, #0xb0
	add r0, r0, #0x800
	mla r0, r4, r7, r0
	sub r1, r7, #0xb1
	bl FUN_020F543C
	cmp r0, #0
	beq _0211C4D0
	b _0211C4AC
_0211C484:
	cmp r5, #9
	bne _0211C4D0
	add r0, r6, #0x13c
	add r0, r0, #0x800
	mov r7, #0xb0
	mla r0, r4, r7, r0
	mov r1, #1
	bl FUN_020F543C
	cmp r0, #0
	beq _0211C4D0
_0211C4AC:
	ldr r0, _0211C508 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r6, #0x13c
	add r0, r0, #0x800
	mla r1, r4, r7, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov21_0211b8f8
_0211C4D0:
	ldr r0, [r6, #0x7d8]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0xd
	bne _0211C4F0
	mov r0, r6
	bl FUN_ov21_0211cb14
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C4F0:
	cmp r5, #0xe
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov21_0211cbdc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C504: .word 0x02099EB4
_0211C508: .word 0x0209AC44
	arm_func_end FUN_ov21_0211c3d8

	arm_func_start FUN_ov21_0211c50c
FUN_ov21_0211c50c: ; 0x0211C50C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	cmp r1, #0xa
	mov r6, r0
	mov r5, r2
	mov r7, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x7d8]
	bl FUN_ov21_0211a37c
	cmp r0, #0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r6, #0x13c
	add r2, r1, #0x800
	mov r1, #0xb0
	mla r4, r0, r1, r2
	ldr r0, _0211C670 ; =0x02099EB4
	add r1, sp, #4
	ldr r0, [r0]
	bl FUN_0210F48C
	ldrsh r0, [r4, #0xa4]
	ldrsh r1, [sp, #6]
	strh r0, [sp, #4]
	ldrsh r0, [r4, #0xae]
	sub r0, r1, r0, asr #1
	strh r0, [sp, #6]
	ldrsh r2, [sp, #6]
	ldrsh r1, [r4, #0xa6]
	cmp r2, r1
	strlth r1, [sp, #6]
	blt _0211C59C
	ldrsh r0, [r4, #0xaa]
	add r0, r1, r0
	cmp r2, r0
	strgeh r0, [sp, #6]
_0211C59C:
	cmp r5, #0
	bne _0211C5BC
	str r7, [sp]
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r6
	mov r1, r4
	bl FUN_ov21_0211c088
_0211C5BC:
	ldrsh r3, [sp, #6]
	ldrsh r2, [r4, #0xa6]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	sub r2, r3, r2
	sub r0, r1, r0
	add r1, r0, #1
	mul r0, r1, r2
	ldrsh r1, [r4, #0xaa]
	bl FUN_0201f9bc
	ldr r3, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, r0
	cmp r3, r2
	movlt r1, #0
	blt _0211C614
	cmp r1, #0
	movlt r1, #0
	blt _0211C614
	sub r0, r3, r2
	cmp r1, r0
	movge r1, r0
_0211C614:
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _0211C644
	cmp r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	mov r2, #0
	bl FUN_ov21_0211c1f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C644:
	mov r0, r4
	bl FUN_020F53E8
	mov r0, r6
	mov r1, r4
	mov r2, #0
	bl FUN_ov21_0211c068
	mov r0, r6
	mov r1, r4
	bl FUN_ov21_0211bd10
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C670: .word 0x02099EB4
	arm_func_end FUN_ov21_0211c50c

	arm_func_start FUN_ov21_0211c674
FUN_ov21_0211c674: ; 0x0211C674
	ldr r2, _0211C684 ; =0x0211D484
	str r1, [r0, #0x7c8]
	str r2, [r0]
	bx lr
_0211C684: .word 0x0211D484
	arm_func_end FUN_ov21_0211c674

	arm_func_start FUN_ov21_0211c688
FUN_ov21_0211c688: ; 0x0211C688
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r2, _0211CAE8 ; =0x0209A0F4
	mov r8, r0
	ldrh r0, [r2]
	mov r7, r1
	ldr r1, [r8, #0x7bc]
	orr r0, r0, r7
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r5, #1
	mov r6, #0
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211CAEC ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_0210E15C
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, _0211CAF0 ; =0x02099EB4
	ldr r0, [r9]
	bl FUN_0210F468
	cmp r0, #0
	beq _0211C700
	ldr r0, [r9]
	add r0, r0, #0xf00
	ldrh r7, [r0, #0x38]
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, r7
	strh r6, [r0, #0x38]
_0211C700:
	ldr r0, [r8, #0x7d4]
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0x7d8]
	cmp r0, #0
	beq _0211C724
	cmp r0, #3
	beq _0211C980
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C724:
	tst r7, #1
	beq _0211C844
	add r1, r8, #0x13c
	mov r0, r8
	add r1, r1, #0x800
	bl FUN_ov21_0211bbfc
	ldr r2, [r8, #0x7a0]
	ldr r1, [r8, #4]
	mov r0, #6
	mla r4, r1, r0, r2
	mov r7, #0x1c
	mla r0, r4, r7, r8
	ldrb r0, [r0, #0x82]
	cmp r0, #1
	bne _0211C834
	ldr r0, [r8, #0x940]
	sub r0, r0, #1
	cmp r4, r0
	bge _0211C79C
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mla r0, r4, r7, r8
	ldr r3, [r0, #0x7c]
	ldr r0, _0211CAF8 ; =0x0209BA20
	mov r1, r6
	and r2, r3, #0xff
	strb r3, [r8, #0xae8]
	bl FUN_0204c470
	b _0211C7C4
_0211C79C:
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, _0211CAFC ; =0x020A9C40
	mov r2, r6
	mov r1, #0x98
	bl FUN_020460a8
	mov r0, r8
	mov r1, r6
	bl FUN_ov21_0211bc24
_0211C7C4:
	add r1, r8, #0x13c
	mov r0, r8
	add r1, r1, #0x800
	bl FUN_ov21_0211bbfc
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, #0x1c
	mla r0, r4, r0, r8
	cmp r5, #1
	ldr r2, [r0, #0x7c]
	bne _0211C824
	ldr r0, _0211CAFC ; =0x020A9C40
	mov r1, #0x9a
	bl FUN_020460a8
	mov r0, r8
	mov r1, #3
	bl FUN_ov21_0211bc34
	ldr r0, _0211CB00 ; =0x02099F38
	ldr r1, [r8, #0x798]
	ldr r0, [r0]
	ldr r2, _0211CB04 ; =0x00004210
	bl FUN_02114204
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C824:
	ldr r0, _0211CAFC ; =0x020A9C40
	mov r1, #0x9c
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C834:
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C844:
	tst r7, #2
	beq _0211C878
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, _0211CAFC ; =0x020A9C40
	mov r2, r6
	mov r1, #0x98
	bl FUN_020460a8
	mov r0, r8
	mov r1, r6
	bl FUN_ov21_0211bc24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C878:
	tst r4, #0x40
	beq _0211C8E4
	ldr r0, [r8, #8]
	ldr r1, [r8, #4]
	sub r0, r0, #1
	cmp r1, r0
	mov r5, #5
	mov r1, #6
	bne _0211C8C4
	ldr r3, [r8, #0x79c]
	ldr r2, _0211CB08 ; =0x2AAAAAAB
	smull r0, r4, r2, r3
	add r4, r4, r3, lsr #31
	smull r0, r2, r1, r4
	sub r4, r3, r0
	cmp r4, #0
	rsbgt r0, r4, #6
	subgt r5, r5, r0
	subgt r1, r1, r0
_0211C8C4:
	ldr r0, [r8, #0x7a0]
	add r0, r0, r5
	bl FUN_0201f9bc
	mov r2, r1
	mov r0, r8
	mov r1, r6
	bl FUN_ov21_0211a7c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C8E4:
	tst r4, #0x80
	beq _0211C948
	ldr r0, [r8, #8]
	ldr r1, [r8, #4]
	sub r0, r0, #1
	cmp r1, r0
	mov r1, #6
	bne _0211C928
	ldr r3, [r8, #0x79c]
	ldr r2, _0211CB08 ; =0x2AAAAAAB
	smull r0, r4, r2, r3
	add r4, r4, r3, lsr #31
	smull r0, r2, r1, r4
	sub r4, r3, r0
	cmp r4, #0
	rsbgt r0, r4, #6
	subgt r1, r1, r0
_0211C928:
	ldr r0, [r8, #0x7a0]
	add r0, r0, #1
	bl FUN_0201f9bc
	mov r2, r1
	mov r0, r8
	mov r1, r6
	bl FUN_ov21_0211a7c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C948:
	tst r7, #0x200
	bne _0211C958
	tst r7, #0x20
	beq _0211C964
_0211C958:
	mov r0, r8
	bl FUN_ov21_0211cb14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C964:
	tst r7, #0x100
	bne _0211C974
	tst r7, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C974:
	mov r0, r8
	bl FUN_ov21_0211cbdc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C980:
	tst r7, #1
	beq _0211CA4C
	add r1, r8, #0x1ec
	mov r0, r8
	add r1, r1, #0x800
	bl FUN_ov21_0211bbfc
	ldr r0, [r8, #0xa9c]
	cmp r0, #0
	bne _0211CA20
	mov r5, #6
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r0, _0211CAFC ; =0x020A9C40
	mov r2, r6
	mov r1, #0x9b
	bl FUN_020460a8
	ldr r0, _0211CAF0 ; =0x02099EB4
	mov r1, #0xb
	ldr r0, [r0]
	bl FUN_0210EFAC
	ldr r2, [r8, #0x7a0]
	ldr r1, [r8, #4]
	ldr r4, _0211CB0C ; =0x02099F44
	mla r2, r1, r5, r2
	mov r1, #0x1c
	mla r1, r2, r1, r8
	ldr r0, [r4]
	ldr r1, [r1, #0x7c]
	bl FUN_0213C288
	mov r0, r8
	mov r1, r6
	bl FUN_ov21_0211bc24
	ldr r0, _0211CB10 ; =0x020AF81C
	mov r1, #9
	mov r2, #1
	bl FUN_02044754
	ldr r0, [r4]
	bl FUN_0213C5FC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CA20:
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, _0211CAF0 ; =0x02099EB4
	mov r1, #0xc
	ldr r0, [r0]
	bl FUN_0210EFAC
	mov r0, r8
	mov r1, #0
	bl FUN_ov21_0211bc34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CA4C:
	tst r7, #2
	beq _0211CA94
	mov r2, #1
	mov r0, r8
	mov r1, r6
	str r2, [r8, #0xa9c]
	bl FUN_ov21_0211c24c
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, _0211CAF0 ; =0x02099EB4
	mov r1, #0xc
	ldr r0, [r0]
	bl FUN_0210EFAC
	mov r0, r8
	mov r1, r6
	bl FUN_ov21_0211bc34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CA94:
	tst r4, #0x20
	bne _0211CAA4
	tst r4, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CAA4:
	ldr r0, _0211CAF4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r8, #0xa9c]
	add r0, r0, #1
	ands r0, r0, #1
	str r0, [r8, #0xa9c]
	mov r0, r8
	bne _0211CAD8
	mov r1, #1
	mov r2, #0
	bl FUN_ov21_0211c24c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CAD8:
	mov r1, #0
	mov r2, #1
	bl FUN_ov21_0211c24c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CAE8: .word 0x0209A0F4
_0211CAEC: .word 0x02099ED4
_0211CAF0: .word 0x02099EB4
_0211CAF4: .word 0x0209AC44
_0211CAF8: .word 0x0209BA20
_0211CAFC: .word 0x020A9C40
_0211CB00: .word 0x02099F38
_0211CB04: .word 0x00004210
_0211CB08: .word 0x2AAAAAAB
_0211CB0C: .word 0x02099F44
_0211CB10: .word 0x020AF81C
	arm_func_end FUN_ov21_0211c688

	arm_func_start FUN_ov21_0211cb14
FUN_ov21_0211cb14: ; 0x0211CB14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	sub r0, r1, #1
	add r0, r2, r0
	bl FUN_0201f9bc
	mov r4, #0
	str r1, [r5, #4]
	mov r0, r5
	mov r1, r4
	bl FUN_ov21_0211aa50
	mov r0, r5
	mov r1, r4
	bl FUN_ov21_0211a990
	mov r0, r5
	bl FUN_ov21_0211afd4
	mov r0, r5
	bl FUN_ov21_0211add8
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	sub r0, r0, #1
	cmp r1, r0
	bne _0211CBB0
	ldr r3, [r5, #0x79c]
	ldr r1, _0211CBD0 ; =0x2AAAAAAB
	mov r2, #6
	smull r0, r12, r1, r3
	add r12, r12, r3, lsr #31
	smull r0, r1, r2, r12
	sub r12, r3, r0
	subs r2, r12, #1
	bmi _0211CBB0
	ldr r0, [r5, #0x7a0]
	cmp r0, r2
	blt _0211CBB0
	mov r0, r5
	mov r1, r4
	bl FUN_ov21_0211a7c4
_0211CBB0:
	ldr r0, _0211CBD4 ; =0x02099EB4
	mov r1, #0xd
	ldr r0, [r0]
	bl FUN_0210EFAC
	ldr r0, _0211CBD8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211CBD0: .word 0x2AAAAAAB
_0211CBD4: .word 0x02099EB4
_0211CBD8: .word 0x0209AC44
	arm_func_end FUN_ov21_0211cb14

	arm_func_start FUN_ov21_0211cbdc
FUN_ov21_0211cbdc: ; 0x0211CBDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldmib r5, {r0, r1}
	add r0, r0, #1
	bl FUN_0201f9bc
	mov r4, #0
	str r1, [r5, #4]
	mov r0, r5
	mov r1, r4
	bl FUN_ov21_0211aa50
	mov r0, r5
	mov r1, r4
	bl FUN_ov21_0211a990
	mov r0, r5
	bl FUN_ov21_0211afd4
	mov r0, r5
	bl FUN_ov21_0211add8
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	sub r0, r0, #1
	cmp r1, r0
	bne _0211CC70
	ldr r3, [r5, #0x79c]
	ldr r1, _0211CC90 ; =0x2AAAAAAB
	mov r2, #6
	smull r0, r12, r1, r3
	add r12, r12, r3, lsr #31
	smull r0, r1, r2, r12
	sub r12, r3, r0
	subs r2, r12, #1
	bmi _0211CC70
	ldr r0, [r5, #0x7a0]
	cmp r0, r2
	blt _0211CC70
	mov r0, r5
	mov r1, r4
	bl FUN_ov21_0211a7c4
_0211CC70:
	ldr r0, _0211CC94 ; =0x02099EB4
	mov r1, #0xe
	ldr r0, [r0]
	bl FUN_0210EFAC
	ldr r0, _0211CC98 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211CC90: .word 0x2AAAAAAB
_0211CC94: .word 0x02099EB4
_0211CC98: .word 0x0209AC44
	arm_func_end FUN_ov21_0211cbdc

	arm_func_start FUN_ov21_0211cc9c
FUN_ov21_0211cc9c: ; 0x0211CC9C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211CD64 ; =0x02099ED4
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_0210E15C
	cmp r0, #0
	ldreq r0, [r7, #0x7d4]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211CD68 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl FUN_0210F20C
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CCE8: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211CCFC ; case 1
	b _0211CD14 ; case 2
	b _0211CD2C ; case 3
	b _0211CD48 ; case 4
_0211CCFC:
	ldr r0, [r4]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r7
	bl FUN_ov21_0211c2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CD14:
	ldr r0, [r4]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r7
	bl FUN_ov21_0211c3d8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CD2C:
	ldr r0, [r4]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl FUN_ov21_0211c50c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CD48:
	ldr r0, [r4]
	bl FUN_0210F484
	mov r1, r0
	mov r0, r7
	mov r2, #1
	bl FUN_ov21_0211c50c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CD64: .word 0x02099ED4
_0211CD68: .word 0x02099EB4
	arm_func_end FUN_ov21_0211cc9c

	arm_func_start FUN_ov21_0211cd6c
FUN_ov21_0211cd6c: ; 0x0211CD6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r7, [r10, #0xaec]
	mov r9, #0
	cmp r7, #0
	beq _0211CE28
	ldr r0, [r10, #0xaf0]
	mov r8, #0
	mov r6, r0, lsr #5
	cmp r6, #0x40
	movgt r6, #0x40
	cmp r6, #0
	cmpgt r6, #0
	ble _0211CE28
	add r0, r10, #0x38
	add r4, r0, #0x800
	mov r5, #1
	mov r11, r8
_0211CDB4:
	ldrb r0, [r7, #0x13]
	cmp r0, #0
	ldrneb r0, [r7, #0x14]
	cmpne r0, #0
	beq _0211CE18
	ldr r1, [r10, #0xaa4]
	mov r2, r11
	mov r3, r11
	mov r0, r11
	cmp r1, #0
	ble _0211CE04
_0211CDE0:
	add r12, r10, r0
	ldrb r12, [r12, #0xaa8]
	cmp r8, r12
	moveq r3, r5
	moveq r2, r5
	beq _0211CE04
	add r0, r0, #1
	cmp r0, r1
	blt _0211CDE0
_0211CE04:
	mov r1, r8, lsl #0x10
	add r0, r4, r9, lsl #2
	mov r1, r1, lsr #0x10
	add r9, r9, #1
	bl FUN_ov21_02119f00
_0211CE18:
	add r8, r8, #1
	cmp r8, r6
	add r7, r7, #0x20
	blt _0211CDB4
_0211CE28:
	add r0, r10, #0x38
	add r0, r0, #0x800
	mov r2, #1
	mov r3, r2
	add r0, r0, r9, lsl #2
	mov r1, #0
	bl FUN_ov21_02119f00
	add r0, r9, #1
	str r0, [r10, #0x938]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov21_0211cd6c

	arm_func_start FUN_ov21_0211ce50
FUN_ov21_0211ce50: ; 0x0211CE50
	ldr r0, [r0, #0xaec]
	cmp r0, #0
	moveq r0, #0
	addne r0, r0, r1, lsl #5
	bx lr
	arm_func_end FUN_ov21_0211ce50

	arm_func_start FUN_ov21_0211ce64
FUN_ov21_0211ce64: ; 0x0211CE64
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r7, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211D04C ; =0x02099EB4
	str r1, [r7, #0xaa0]
	ldr r0, [r0]
	bl FUN_0210E980
	ldr r0, _0211D050 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_0210E0A0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, [r7, #0x7c8]
	bl FUN_0204204c
	str r0, [r7, #0x7cc]
	mov r6, #0
	str r6, [r7, #0x7d0]
	str r6, [r7, #0xaa4]
	add r0, r7, #0x2a8
	add r0, r0, #0x800
	mov r1, r6
	mov r5, #0x40
	mov r2, r5
	bl MemWrite
	ldr r4, _0211D054 ; =0x02099F44
	add r0, r7, #0x2a8
	add r1, r0, #0x800
	ldr r0, [r4]
	mov r2, r5
	bl FUN_0213B638
	str r0, [r7, #0xaa4]
	strb r6, [r7, #0xae8]
	str r6, [r7, #0x7d4]
	str r6, [r7, #0x7d8]
	add r0, r7, #0x2ec
	add r0, r0, #0x800
	mov r1, r6
	mov r2, #0x18
	bl MemWrite
	add r0, r7, #0x3dc
	add r0, r0, #0x400
	mov r1, r6
	mov r2, #0xc
	bl MemWrite
	add r0, r7, #0x3e8
	add r0, r0, #0x400
	mov r1, r6
	mov r2, #0x2c
	bl MemWrite
	add r0, r7, #0x14
	add r0, r0, #0x800
	mov r1, r6
	mov r2, #4
	bl MemWrite
	add r0, r7, #0x18
	add r0, r0, #0x800
	mov r1, r6
	mov r2, #0x14
	bl MemWrite
	add r0, r7, #0x830
	mov r1, r6
	mov r2, #8
	bl MemWrite
	str r6, [r7, #0x82c]
	add r0, r7, #0x38
	add r0, r0, #0x800
	mov r1, r6
	mov r2, #0x100
	bl MemWrite
	add r0, r7, #0x13c
	mov r1, r6
	add r0, r0, #0x800
	mov r2, #0x160
	str r6, [r7, #0x938]
	bl MemWrite
	mov r3, #1
	mov r1, r6
	add r0, r7, #0x7a0
	mov r2, #0x24
	str r6, [r7, #0xa9c]
	str r6, [r7, #0x1c]
	str r3, [r7, #0x20]
	str r6, [r7, #0x14]
	str r6, [r7, #0x18]
	str r6, [r7, #4]
	str r6, [r7, #8]
	str r6, [r7, #0xc]
	str r6, [r7, #0x10]
	bl MemWrite
	add r0, r7, #0x368
	mov r1, r6
	add r0, r0, #0x400
	mov r2, #0x34
	str r6, [r7, #0x7c4]
	bl MemWrite
	mov r1, r6
	str r6, [r7, #0x24]
	add r0, r7, #0x28
	mov r2, r5
	bl MemWrite
	ldr r0, [r4]
	mov r2, r5
	add r1, r7, #0x28
	bl FUN_0213B638
	str r0, [r7, #0x24]
	add r0, r7, #0x68
	mov r1, r6
	mov r2, #0x700
	bl MemWrite
	ldr r0, _0211D058 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021123B4
	mov r2, r6
	ldr r0, _0211D05C ; =0x020A9C40
	mov r1, #0x96
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D04C: .word 0x02099EB4
_0211D050: .word 0x02099ED4
_0211D054: .word 0x02099F44
_0211D058: .word 0x02099F38
_0211D05C: .word 0x020A9C40
	arm_func_end FUN_ov21_0211ce64

	arm_func_start FUN_ov21_0211d060
FUN_ov21_0211d060: ; 0x0211D060
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x7d4]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211D1C4
_0211D078: ; jump table
	b _0211D098 ; case 0
	b _0211D0AC ; case 1
	b _0211D0EC ; case 2
	b _0211D10C ; case 3
	b _0211D118 ; case 4
	b _0211D1C4 ; case 5
	b _0211D15C ; case 6
	b _0211D1A0 ; case 7
_0211D098:
	bl FUN_ov21_02119f10
	mov r0, r4
	bl FUN_ov21_02119f2c
	mov r0, #1
	str r0, [r4, #0x7d4]
_0211D0AC:
	add r0, r4, #0x3dc
	add r0, r0, #0x400
	mov r1, #1
	bl FUN_020F330C
	cmp r0, #0
	beq _0211D1C4
	add r0, r4, #0x2ec
	mov r5, #2
	mov r1, r5
	add r0, r0, #0x800
	bl FUN_020F330C
	cmp r0, #0
	beq _0211D1C4
	mov r0, r4
	bl FUN_ov21_02119fd4
	str r5, [r4, #0x7d4]
_0211D0EC:
	mov r0, r4
	bl FUN_ov21_0211a1e0
	cmp r0, #0
	beq _0211D1C4
	mov r0, r4
	bl FUN_ov21_0211a230
	mov r0, #3
	str r0, [r4, #0x7d4]
_0211D10C:
	mov r0, r4
	mov r1, #0
	bl FUN_ov21_0211bc34
_0211D118:
	ldr r0, _0211D1F8 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_0210E15C
	cmp r0, #0
	bne _0211D1C4
	ldr r1, [r4, #0x7d8]
	mov r0, r4
	bl FUN_ov21_0211a294
	mov r0, r4
	bl FUN_ov21_0211a3a8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r4, #0x7d4]
	b _0211D1C4
_0211D15C:
	ldr r0, _0211D1F8 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_0210E15C
	cmp r0, #0
	bne _0211D1C4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211D1C4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #7
	str r0, [r4, #0x7d4]
_0211D1A0:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211D1C4
	ldr r0, [r4, #0x7c8]
	mov r1, #0
	bl FUN_02041f2c
_0211D1C4:
	ldr r0, _0211D1FC ; =0x0209A110
	ldr r1, _0211D1F8 ; =0x02099ED4
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #1
	bl FUN_0210E10C
	ldr r0, [r4, #0x7bc]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0
	bl FUN_ov21_0211a8a0
	ldmfd sp!, {r3, r4, r5, pc}
_0211D1F8: .word 0x02099ED4
_0211D1FC: .word 0x0209A110
	arm_func_end FUN_ov21_0211d060

	arm_func_start FUN_ov21_0211d200
FUN_ov21_0211d200: ; 0x0211D200
	bx lr
	arm_func_end FUN_ov21_0211d200

	arm_func_start FUN_ov21_0211d204
FUN_ov21_0211d204: ; 0x0211D204
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x4000000
	mov r4, r0
	ldr r0, [r2]
	ldr r1, [r4, #0xaa0]
	bic r0, r0, #0x1f00
	orr r3, r0, r1, lsl #8
	mov r0, #2
	mov r1, #0x10
	str r3, [r2]
	bl FUN_020F1AEC
	mov r5, #0
	ldr r0, _0211D2F0 ; =0x020A9C40
	mov r2, r5
	mov r1, #0x99
	bl FUN_020460a8
	ldr r0, _0211D2F4 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_0210E9D8
	ldr r0, _0211D2F8 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_0210E0D8
	mov r0, r4
	bl FUN_ov21_0211a0d4
	ldr r1, [r4, #0x7c4]
	cmp r1, #0
	beq _0211D280
	ldr r0, _0211D2FC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021128C4
	str r5, [r4, #0x7c4]
_0211D280:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0211D2A0
	ldr r0, _0211D2FC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021128C4
	mov r0, #0
	str r0, [r4, #0x14]
_0211D2A0:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0211D2C0
	ldr r0, _0211D2FC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021128C4
	mov r0, #0
	str r0, [r4, #0x18]
_0211D2C0:
	mov r0, r4
	mov r1, #0
	bl FUN_ov21_0211aa50
	mov r0, r4
	mov r1, #1
	bl FUN_ov21_0211aa50
	mov r0, r4
	bl FUN_ov21_0211afd4
	ldr r0, _0211D2FC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021123C4
	ldmfd sp!, {r3, r4, r5, pc}
_0211D2F0: .word 0x020A9C40
_0211D2F4: .word 0x02099EB4
_0211D2F8: .word 0x02099ED4
_0211D2FC: .word 0x02099F38
	arm_func_end FUN_ov21_0211d204

	arm_func_start FUN_ov21_0211d300
FUN_ov21_0211d300: ; 0x0211D300
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov21_0211d300

	arm_func_start FUN_ov21_0211d314
FUN_ov21_0211d314: ; 0x0211D314
	bx lr
	arm_func_end FUN_ov21_0211d314
_0211D318:
	.byte 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00

	arm_func_start FUN_ov21_0211d324
FUN_ov21_0211d324: ; 0x0211D324
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211D36C ; =0x0211D380
	str r0, [r4, #0x14]
	ldr r0, _0211D370 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211D374 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x18]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D36C: .word 0x0211D380
_0211D370: .word 0x00009CCD
_0211D374: .word 0x0000EA3C
	arm_func_end FUN_ov21_0211d324
	; 0x0211D378
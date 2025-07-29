
	.include "/macros/function.inc"
	.include "/include/overlay48.inc"

	.text
	arm_func_start FUN_ov48_02119f00
FUN_ov48_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	add r1, r4, #0x1ec
	ldr r0, _02119FA8 ; =0x0211B32C
	add r1, r1, #0x5400
	bl FUN_ov16_020f3054
	mov r10, #0
	add r5, r4, #8
	ldr r8, _02119FAC ; =0x0211B350
	ldr r11, _02119FB0 ; =0x0000098A
	add r9, sp, #0xc
	mov r7, #1
	add r6, sp, #0
	mov r4, r10
_02119F3C:
	mov r0, r9
	mov r1, r8
	mov r2, r10
	mov r3, r7
	bl FUN_ov16_020f2cf8
	mov r0, r9
	mov r1, r6
	bl FUN_ov16_020f3054
	ldr r0, [sp]
	mla r1, r10, r11, r5
	mov r2, r11
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, r7
	bl FUN_ov16_020f338c
	mov r0, r6
	bl FUN_ov16_020f33fc
	str r4, [sp]
	str r4, [sp, #4]
	strb r4, [sp, #8]
	strb r4, [sp, #9]
	strb r4, [sp, #0xa]
	add r10, r10, #1
	cmp r10, #9
	blt _02119F3C
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02119FA8: .word ov48_0211B32C
_02119FAC: .word ov48_0211B350
_02119FB0: .word 0x0000098A
	arm_func_end FUN_ov48_02119f00

	arm_func_start FUN_ov48_02119fb4
FUN_ov48_02119fb4: ; 0x02119FB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	ldr r1, _0211A064 ; =0x0211B358
	mov r10, r0
	add r0, sp, #0x1c
	bl sprintf
	mov r9, #0
	add r4, r10, #0x5000
	mov r6, r9
	mov r5, #1
	add r8, sp, #0x11c
	ldr r7, _0211A068 ; =0x0211B218
	ldr r11, _0211A06C ; =0x02099F38
	b _0211A054
_02119FEC:
	ldr r2, [r7, r9, lsl #2]
	ldr r1, _0211A070 ; =0x0211B37C
	mov r0, r8
	bl sprintf
	ldr r1, [r4, #0x5ec]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f3d08
	cmp r0, #0
	beq _0211A050
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r11]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r2, sp, #0x1c
	mov r3, r6
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	add r1, r1, #0x5000
	str r0, [r1, #0x5f8]
_0211A050:
	add r9, r9, #1
_0211A054:
	cmp r9, #0xa
	blt _02119FEC
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A064: .word ov48_0211B358
_0211A068: .word ov48_0211B218
_0211A06C: .word unk_02099F38
_0211A070: .word ov48_0211B37C
	arm_func_end FUN_ov48_02119fb4

	arm_func_start FUN_ov48_0211a074
FUN_ov48_0211a074: ; 0x0211A074
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	cmp r1, #1
	blo _0211A0C0
	add r0, r5, #0x1ec
	add r4, r0, #0x5400
	mov r0, r4
	mov r1, #1
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov16_020f33fc
	mov r1, #0
	add r0, r5, #0x5000
	str r1, [r0, #0x5ec]
	str r1, [r4, #4]
	strb r1, [r4, #8]
	strb r1, [r4, #9]
	strb r1, [r4, #0xa]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A0C0:
	mov r0, #0xc
	mul r4, r1, r0
	add r0, r5, #0x1ec
	add r5, r0, #0x5400
	add r6, r5, r4
	mov r0, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	mov r0, r6
	bl FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov48_0211a074

	arm_func_start FUN_ov48_0211a104
FUN_ov48_0211a104: ; 0x0211A104
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mvn r1, #0
	mov r5, r0
	bl FUN_ov48_0211a074
	add r0, r5, #0x238
	mov r4, #0
	add r7, r0, #0x5400
	mov r6, #0xa8
	b _0211A138
_0211A128:
	mla r1, r4, r6, r7
	mov r0, r5
	bl FUN_ov48_0211a288
	add r4, r4, #1
_0211A138:
	cmp r4, #1
	blt _0211A128
	mov r4, #0
	mov r7, r4
	ldr r6, _0211A188 ; =0x02099F38
	b _0211A17C
_0211A150:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x5f8]
	cmp r1, #0
	beq _0211A178
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x5000
	str r7, [r0, #0x5f8]
_0211A178:
	add r4, r4, #1
_0211A17C:
	cmp r4, #0xa
	blt _0211A150
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A188: .word unk_02099F38
	arm_func_end FUN_ov48_0211a104

	arm_func_start FUN_ov48_0211a18c
FUN_ov48_0211a18c: ; 0x0211A18C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A1DC ; =0x02099F38
	b _0211A1CC
_0211A1A0:
	add r0, r6, r5, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x5f8]
	cmp r1, #0
	beq _0211A1C8
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A1C8:
	add r5, r5, #1
_0211A1CC:
	cmp r5, #0xa
	blo _0211A1A0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1DC: .word unk_02099F38
	arm_func_end FUN_ov48_0211a18c

	arm_func_start FUN_ov48_0211a1e0
FUN_ov48_0211a1e0: ; 0x0211A1E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211A248 ; =0x02099F38
	b _0211A23C
_0211A1F8:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x5f8]
	cmp r1, #0
	beq _0211A238
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A238
	add r0, r5, r4, lsl #2
	add r0, r0, #0x5000
	ldr r1, [r0, #0x5f8]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211A238:
	add r4, r4, #1
_0211A23C:
	cmp r4, #0xa
	blo _0211A1F8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A248: .word unk_02099F38
	arm_func_end FUN_ov48_0211a1e0

	arm_func_start FUN_ov48_0211a24c
FUN_ov48_0211a24c: ; 0x0211A24C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _0211A284 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	mov r1, #1
	bl FUN_ov16_0210eb3c
	cmp r4, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r1, r5, #0x238
	mov r0, r5
	add r1, r1, #0x5400
	bl FUN_ov48_0211a3c4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A284: .word unk_02099EB4
	arm_func_end FUN_ov48_0211a24c

	arm_func_start FUN_ov48_0211a288
FUN_ov48_0211a288: ; 0x0211A288
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211A2D4 ; =0x02099F38
	b _0211A2B8
_0211A29C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211A2B4
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211A2B4:
	add r5, r5, #1
_0211A2B8:
	cmp r5, #0x20
	blt _0211A29C
	mov r0, r6
	mov r1, #0
	mov r2, #0xa8
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211A2D4: .word unk_02099F38
	arm_func_end FUN_ov48_0211a288

	arm_func_start FUN_ov48_0211a2d8
FUN_ov48_0211a2d8: ; 0x0211A2D8
	cmp r1, #0
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov48_0211a2d8

	arm_func_start FUN_ov48_0211a2e4
FUN_ov48_0211a2e4: ; 0x0211A2E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	add r1, r5, #0x5000
	ldr r1, [r1, #0x5e8]
	bl FUN_ov48_0211a2d8
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r5, #0x238
	add r1, r0, #0x5400
	mov r0, #0xa8
	mla r10, r4, r0, r1
	mov r8, #0
	ldr r7, _0211A3B8 ; =0x00007FFF
	ldr r6, _0211A3BC ; =0x02099F38
	b _0211A340
_0211A320:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211A33C
	ldr r0, [r6]
	mov r2, r7
	bl FUN_ov16_02114204
_0211A33C:
	add r8, r8, #1
_0211A340:
	cmp r8, #0x20
	blt _0211A320
	add r0, r5, #0x238
	sub r9, r4, #1
	add r4, r5, #0x5000
	add r7, r0, #0x5400
	ldr r6, _0211A3C0 ; =0x00004210
	ldr r5, _0211A3BC ; =0x02099F38
	mov r11, #0xa8
	b _0211A3AC
_0211A368:
	mla r10, r9, r11, r7
	mov r8, #0
	b _0211A3A0
_0211A374:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211A39C
	ldr r0, [r4, #0x634]
	cmp r0, r1
	beq _0211A39C
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114204
_0211A39C:
	add r8, r8, #1
_0211A3A0:
	cmp r8, #0x20
	blt _0211A374
	sub r9, r9, #1
_0211A3AC:
	cmp r9, #0
	bge _0211A368
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A3B8: .word 0x00007FFF
_0211A3BC: .word unk_02099F38
_0211A3C0: .word 0x00004210
	arm_func_end FUN_ov48_0211a2e4

	arm_func_start FUN_ov48_0211a3c4
FUN_ov48_0211a3c4: ; 0x0211A3C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x5c
	mov r4, #0
	mov r6, r0
	mov r5, r1
	str r4, [sp, #4]
	bl FUN_ov48_0211a288
	add r0, r6, #0x5000
	ldr r8, [r0, #0x5e8]
	add r9, sp, #4
	mov r7, #0x3e8
	str r8, [r5, #0x1c]
	mov r0, r6
	mov r1, r5
	mov r2, r9
	mov r3, r4
	str r7, [r5, #0xa4]
	mov r8, #1
	str r8, [sp]
	bl FUN_ov48_0211aba0
	mov r3, r7
	mov r1, r0
	add r0, r6, #0x5000
	ldr r7, _0211A628 ; =0x02099F38
	str r1, [r0, #0x624]
	ldr r0, [r7]
	mov r2, r8
	bl FUN_ov16_021139bc
	add r2, r6, #0x5000
	ldr r3, [r2, #0x5f8]
	ldr r1, [r2, #0x624]
	ldr r0, [r7]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	add r1, r6, #0x5000
	ldr r0, [r7]
	ldr r1, [r1, #0x624]
	mov r2, r8
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r8, #9
	mov r0, r6
	mov r1, r5
	mov r2, r9
	mov r3, r4
	str r8, [sp]
	bl FUN_ov48_0211aba0
	mov r1, r0
	add r0, r6, #0x5000
	str r1, [r0, #0x628]
	ldr r0, [r7]
	mov r2, #0xa
	bl FUN_ov16_02112b98
	mov r0, #0x24
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	mov r2, r9
	mov r3, r4
	bl FUN_ov48_0211aba0
	mov r1, r0
	add r0, r6, #0x5000
	str r1, [r0, #0x62c]
	mov r10, #0x32
	ldr r0, [r7]
	mov r2, r10
	bl FUN_ov16_02112b98
	mov r2, r9
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r8, [sp]
	bl FUN_ov48_0211aba0
	mov r1, r0
	add r0, r6, #0x5000
	str r1, [r0, #0x630]
	ldr r0, [r7]
	mov r2, r10
	bl FUN_ov16_02112b98
	b _0211A608
_0211A50C:
	ldr r1, _0211A62C ; =0x020A12C0
	mov r0, #0x54
	mla r9, r4, r0, r1
	add r8, sp, #8
	mov r7, #5
_0211A520:
	ldmia r9!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _0211A520
	ldr r0, [r9]
	mov r7, #0
	str r0, [r8]
	ldr r0, _0211A630 ; =0x0000098A
	mov r1, r7
	mla r0, r4, r0, r6
	add r9, sp, #8
	mov r8, #0x4a
	ldr r2, _0211A634 ; =0x0000FFE0
	b _0211A590
_0211A558:
	mla r3, r1, r8, r0
	ldrb r3, [r3, #8]
	cmp r3, #1
	beq _0211A570
	cmp r3, #3
	bne _0211A58C
_0211A570:
	mov r3, r1, lsl #1
	ldrh r3, [r9, r3]
	and r3, r3, r2
	mov r3, r3, asr #5
	mov r3, r3, lsl #0x10
	movs r3, r3, lsr #0x10
	addne r7, r7, #1
_0211A58C:
	add r1, r1, #1
_0211A590:
	cmp r1, #0x21
	blt _0211A558
	ldrb r0, [sp, #0x4a]
	mov r3, r4
	cmp r0, #0
	add r0, r6, #0x5000
	ldr r1, [r0, #0x628]
	mov r0, r6
	beq _0211A5FC
	add r2, r4, #1
	bl FUN_ov48_0211a818
	mov r2, r4, lsl #2
	str r7, [sp]
	add r0, r6, #0x5000
	ldr r1, [r0, #0x62c]
	mov r0, r6
	mov r3, r4
	add r2, r2, #1
	bl FUN_ov48_0211a934
	str r7, [sp]
	add r0, r6, #0x5000
	ldr r1, [r0, #0x630]
	mov r0, r6
	mov r3, r4
	add r2, r4, #1
	bl FUN_ov48_0211a9d4
	b _0211A604
_0211A5FC:
	add r2, r4, #1
	bl FUN_ov48_0211a8a0
_0211A604:
	add r4, r4, #1
_0211A608:
	cmp r4, #0x10
	blt _0211A50C
	add r2, sp, #4
	mov r0, r6
	mov r1, r5
	bl FUN_ov48_0211a774
	add sp, sp, #0x5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211A628: .word unk_02099F38
_0211A62C: .word unk_020A12C0
_0211A630: .word 0x0000098A
_0211A634: .word 0x0000FFE0
	arm_func_end FUN_ov48_0211a3c4

	arm_func_start FUN_ov48_0211a638
FUN_ov48_0211a638: ; 0x0211A638
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r8, _0211A76C ; =0x02099F38
	mov r5, r3
	mov r4, r0
	ldrh r3, [sp, #0x40]
	ldr r0, [r8]
	mov r7, r1
	mov r6, r2
	bl FUN_ov16_021139bc
	ldr r1, [sp, #0x3c]
	ldr r0, [r8]
	add r1, r4, r1, lsl #2
	add r1, r1, #0x5000
	ldr r3, [r1, #0x5f8]
	mov r1, r7
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r4, #0
	str r4, [sp]
	ldr r0, [r8]
	ldr r3, [sp, #0x34]
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_0211401c
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211A770 ; =0x02099EB4
	ldrh r2, [sp, #0x20]
	ldr r0, [r0]
	mov r1, r5
	mov r3, r7
	bl FUN_ov16_0210fbe8
	movs r8, r0
	beq _0211A734
	ldr r5, [sp, #0x30]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	str r5, [sp]
	bl FUN_ov16_0210e674
	mov r5, #1
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r8, #0x3a
	bl FUN_ov16_0210e6fc
	ldr r2, [sp, #0x34]
	add r0, r8, #0x3a
	mov r1, r4
	mov r3, r4
	bl FUN_ov16_0210e720
	mov r2, r5
	add r0, r8, #0x3e
	mov r1, r4
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r4
	mov r3, r4
	ldr r2, [sp, #0x38]
	bl FUN_ov16_0210e720
_0211A734:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	ldr r0, _0211A76C ; =0x02099F38
	str r2, [sp]
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r7
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A76C: .word unk_02099F38
_0211A770: .word unk_02099EB4
	arm_func_end FUN_ov48_0211a638

	arm_func_start FUN_ov48_0211a774
FUN_ov48_0211a774: ; 0x0211A774
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	ldr r3, _0211A814 ; =0x02099EB4
	mov r8, r0
	ldr r0, [r3]
	mov r4, #1
	mov r7, r1
	mov r1, r4
	mov r6, r2
	bl FUN_ov16_0210eb3c
	mov r5, #0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	bl FUN_ov48_0211aba0
	add r1, r8, #0x5000
	str r0, [r1, #0x634]
	mov r0, r8
	str r4, [sp]
	mov r2, #0xd0
	str r2, [sp, #4]
	mov r2, #0xa8
	str r2, [sp, #8]
	mov r2, #0x30
	str r2, [sp, #0xc]
	mov r2, #0x18
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	mov r2, #0x32
	str r2, [sp, #0x20]
	ldr r1, [r1, #0x634]
	mov r2, r4
	mov r3, r4
	bl FUN_ov48_0211a638
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A814: .word unk_02099EB4
	arm_func_end FUN_ov48_0211a774

	arm_func_start FUN_ov48_0211a818
FUN_ov48_0211a818: ; 0x0211A818
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r3
	mov r6, r1
	mov r5, r2
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #9
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	add r3, r4, #3
	add r0, r0, r3, lsl #2
	add r0, r0, #0x5000
	ldr r7, _0211A89C ; =0x02099F38
	ldr r3, [r0, #0x5f8]
	ldr r0, [r7]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_0211401c
	mov r0, #0x18
	mul r0, r4, r0
	add r0, r0, #0x28
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	mov r3, #8
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A89C: .word unk_02099F38
	arm_func_end FUN_ov48_0211a818

	arm_func_start FUN_ov48_0211a8a0
FUN_ov48_0211a8a0: ; 0x0211A8A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r6, r3
	mov r8, r1
	mov r7, r2
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #9
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r0, #0x5000
	ldr r4, _0211A930 ; =0x02099F38
	ldr r3, [r0, #0x61c]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r0, #0x18
	mul r0, r6, r0
	add r0, r0, #0x28
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A930: .word unk_02099F38
	arm_func_end FUN_ov48_0211a8a0

	arm_func_start FUN_ov48_0211a934
FUN_ov48_0211a934: ; 0x0211A934
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	cmp r3, #0
	mov r8, r0
	mov r7, r1
	mov r6, r2
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r3, #9
	addge sp, sp, #8
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211A9D0 ; =0x0211B110
	ldr r12, [sp, #0x20]
	ldr r4, [r0, r3, lsl #2]
	mov r0, #0x18
	mul r0, r3, r0
	add r5, r0, #0x30
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	cmp r4, r12
	str r0, [sp]
	movlt r12, r4
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #0xa0
	str r12, [sp, #4]
	bl FUN_ov48_0211aabc
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r8
	mov r1, r7
	add r2, r6, #2
	mov r3, #0xb8
	str r4, [sp, #4]
	bl FUN_ov48_0211aabc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A9D0: .word ov48_0211B110
	arm_func_end FUN_ov48_0211a934

	arm_func_start FUN_ov48_0211a9d4
FUN_ov48_0211a9d4: ; 0x0211A9D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r3
	mov r6, r1
	mov r5, r2
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #9
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, #0x5000
	ldr r7, _0211AAB4 ; =0x02099F38
	ldr r3, [r0, #0x600]
	ldr r0, [r7]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, _0211AAB8 ; =0x0211B110
	ldr r1, [sp, #0x18]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, r1
	bgt _0211AA38
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
_0211AA30:
	bl FUN_ov16_0211401c
	b _0211AA80
_0211AA38:
	add r0, r0, r0, lsr #31
	cmp r1, r0, asr #1
	blt _0211AA60
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	mov r3, #1
	b _0211AA30
_0211AA60:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	mov r3, #0x100
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA80:
	mov r0, #0x18
	mul r0, r4, r0
	add r0, r0, #0x28
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r0, _0211AAB4 ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r2, r5
	mov r3, #0xc8
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AAB4: .word unk_02099F38
_0211AAB8: .word ov48_0211B110
	arm_func_end FUN_ov48_0211a9d4

	arm_func_start FUN_ov48_0211aabc
FUN_ov48_0211aabc: ; 0x0211AABC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	add r0, r0, #0x5000
	mov r10, r1
	mov r9, r2
	mov r8, r3
	ldr r5, [sp, #0x34]
	ldrsh r11, [sp, #0x30]
	mov r6, #0xa
	str r0, [sp, #4]
	ldr r4, _0211AB98 ; =0x02099F38
	b _0211AB88
_0211AAEC:
	mov r0, r5
	mov r1, r6
	bl _s32_div_f
	mov r7, r0
	mul r0, r6, r7
	cmp r7, #0
	sub r5, r5, r0
	bgt _0211AB14
	cmp r6, #1
	bne _0211AB64
_0211AB14:
	ldr r0, [sp, #4]
	mov r1, r10
	ldr r2, [r0, #0x618]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r2, r9
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r7
	mov r1, r10
	mov r2, r9
	bl FUN_ov16_0211401c
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113b78
_0211AB64:
	ldr r0, _0211AB9C ; =0x66666667
	mov r2, r6
	smull r1, r6, r0, r2
	add r0, r8, #8
	mov r0, r0, lsl #0x10
	mov r1, r2, lsr #0x1f
	mov r8, r0, asr #0x10
	add r9, r9, #1
	add r6, r1, r6, asr #2
_0211AB88:
	cmp r6, #0
	bgt _0211AAEC
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB98: .word unk_02099F38
_0211AB9C: .word 0x66666667
	arm_func_end FUN_ov48_0211aabc

	arm_func_start FUN_ov48_0211aba0
FUN_ov48_0211aba0: ; 0x0211ABA0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x20
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #1
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211AC20 ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0xa1]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0xa0]
	ldr r1, [r5]
	add r2, r6, #0xa1
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211AC20: .word unk_02099F38
	arm_func_end FUN_ov48_0211aba0

	arm_func_start FUN_ov48_0211ac24
FUN_ov48_0211ac24: ; 0x0211AC24
	add r1, r0, #0x5000
	mov r2, #6
	ldr r0, [r0, #4]
	ldr r12, _0211AC3C ; =FUN_02041d9c
	str r2, [r1, #0x5e4]
	bx r12
_0211AC3C: .word FUN_02041d9c
	arm_func_end FUN_ov48_0211ac24

	arm_func_start FUN_ov48_0211ac40
FUN_ov48_0211ac40: ; 0x0211AC40
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bne _0211AC60
	ldr r0, _0211AC74 ; =0x02099EB4
	mov r1, #0x64
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
_0211AC60:
	add r0, r5, #0x5000
	mov r1, #4
	str r4, [r0, #0x5e8]
	str r1, [r0, #0x5e4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AC74: .word unk_02099EB4
	arm_func_end FUN_ov48_0211ac40

	arm_func_start FUN_ov48_0211ac78
FUN_ov48_0211ac78: ; 0x0211AC78
	stmfd sp!, {r4, lr}
	mov r4, r1
	cmp r4, #0
	ldmlefd sp!, {r4, pc}
	ldr r0, _0211ACA0 ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldmfd sp!, {r4, pc}
_0211ACA0: .word unk_02099EB4
	arm_func_end FUN_ov48_0211ac78

	arm_func_start FUN_ov48_0211aca4
FUN_ov48_0211aca4: ; 0x0211ACA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r4, _0211ACE0 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #1
	ldreq r0, [r4]
	moveq r1, #2
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_0211ACE0: .word unk_02099EB4
	arm_func_end FUN_ov48_0211aca4

	arm_func_start FUN_ov48_0211ace4
FUN_ov48_0211ace4: ; 0x0211ACE4
	ldr r2, _0211AD14 ; =0x0211B2C0
	mov r3, #0
	str r2, [r0]
	str r1, [r0, #4]
	mov r2, r3
_0211ACF8:
	add r1, r0, r3, lsl #2
	add r1, r1, #0x5000
	add r3, r3, #1
	str r2, [r1, #0x5f8]
	cmp r3, #0xa
	blo _0211ACF8
	bx lr
_0211AD14: .word ov48_0211B2C0
	arm_func_end FUN_ov48_0211ace4

	arm_func_start FUN_ov48_0211ad18
FUN_ov48_0211ad18: ; 0x0211AD18
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0211ADB0 ; =0x02099ED4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r6, _0211ADB4 ; =0x02099EB4
	ldr r0, [r6]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211AD68
	ldr r0, [r6]
	add r0, r0, #0xf00
	ldrh r4, [r0, #0x38]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211AD68:
	add r0, r5, #0x5000
	ldr r1, [r0, #0x5e4]
	cmp r1, #5
	ldreq r0, [r0, #0x5e8]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	tst r4, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211ADB8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, _0211ADB4 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	mov r0, r5
	bl FUN_ov48_0211ac24
	ldmfd sp!, {r4, r5, r6, pc}
_0211ADB0: .word unk_02099ED4
_0211ADB4: .word unk_02099EB4
_0211ADB8: .word unk_0209AC44
	arm_func_end FUN_ov48_0211ad18

	arm_func_start FUN_ov48_0211adbc
FUN_ov48_0211adbc: ; 0x0211ADBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211AE44 ; =0x02099ED4
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addeq r0, r7, #0x5000
	ldreq r0, [r0, #0x5e4]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211AE48 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210f20c
	cmp r0, #1
	beq _0211AE14
	cmp r0, #2
	beq _0211AE2C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AE14:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov48_0211ac78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AE2C:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov48_0211aca4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AE44: .word unk_02099ED4
_0211AE48: .word unk_02099EB4
	arm_func_end FUN_ov48_0211adbc

	arm_func_start FUN_ov48_0211ae4c
FUN_ov48_0211ae4c: ; 0x0211AE4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r2, r0, lsr #8
	add r0, r4, #0x5000
	ldr r1, _0211AEEC ; =0x02099EB4
	str r2, [r0, #0x6e0]
	ldr r0, [r1]
	bl FUN_ov16_0210e980
	ldr r0, _0211AEF0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r4, #0x1ec
	mov r5, #0
	add r0, r0, #0x5400
	add r1, r4, #0x5000
	str r5, [r1, #0x5e4]
	mov r1, r5
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r4, #0x1f8
	add r0, r0, #0x5400
	mov r1, r5
	mov r2, #0x28
	bl MI_CpuFill8
	add r0, r4, #0x238
	add r0, r0, #0x5400
	mov r1, r5
	mov r2, #0xa8
	bl MI_CpuFill8
	ldr r0, _0211AEF4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211AEEC: .word unk_02099EB4
_0211AEF0: .word unk_02099ED4
_0211AEF4: .word unk_02099F38
	arm_func_end FUN_ov48_0211ae4c

	arm_func_start FUN_ov48_0211aef8
FUN_ov48_0211aef8: ; 0x0211AEF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x5000
	ldr r0, [r0, #0x5e4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211B074
_0211AF14: ; jump table
	b _0211AF34 ; case 0
	b _0211AF60 ; case 1
	b _0211AF8C ; case 2
	b _0211AFB0 ; case 3
	b _0211AFBC ; case 4
	b _0211B074 ; case 5
	b _0211B008 ; case 6
	b _0211B050 ; case 7
_0211AF34:
	add r0, r4, #0x1ec
	mov r5, #1
	mov r1, r5
	add r0, r0, #0x5400
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211B074
	mov r0, r4
	bl FUN_ov48_02119f00
	add r0, r4, #0x5000
	str r5, [r0, #0x5e4]
_0211AF60:
	add r0, r4, #0x1ec
	add r0, r0, #0x5400
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211B074
	mov r0, r4
	bl FUN_ov48_02119fb4
	add r0, r4, #0x5000
	mov r1, #2
	str r1, [r0, #0x5e4]
_0211AF8C:
	mov r0, r4
	bl FUN_ov48_0211a18c
	cmp r0, #0
	beq _0211B074
	mov r0, r4
	bl FUN_ov48_0211a1e0
	add r0, r4, #0x5000
	mov r1, #3
	str r1, [r0, #0x5e4]
_0211AFB0:
	mov r0, r4
	mov r1, #0
	bl FUN_ov48_0211ac40
_0211AFBC:
	ldr r0, _0211B08C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211B074
	add r0, r4, #0x5000
	ldr r1, [r0, #0x5e8]
	mov r0, r4
	bl FUN_ov48_0211a24c
	mov r0, r4
	bl FUN_ov48_0211a2e4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	add r0, r4, #0x5000
	mov r1, #5
	str r1, [r0, #0x5e4]
	b _0211B074
_0211B008:
	ldr r0, _0211B08C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211B074
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211B074
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	add r0, r4, #0x5000
	mov r1, #7
	str r1, [r0, #0x5e4]
_0211B050:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211B074
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02041f2c
_0211B074:
	ldr r0, _0211B08C ; =0x02099ED4
	ldr r1, _0211B090 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_ov16_0210e10c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B08C: .word unk_02099ED4
_0211B090: .word unk_0209A110
	arm_func_end FUN_ov48_0211aef8

	arm_func_start FUN_ov48_0211b094
FUN_ov48_0211b094: ; 0x0211B094
	bx lr
	arm_func_end FUN_ov48_0211b094

	arm_func_start FUN_ov48_0211b098
FUN_ov48_0211b098: ; 0x0211B098
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0x4000000
	add r0, r4, #0x5000
	ldr r1, [r2]
	ldr r3, [r0, #0x6e0]
	bic r0, r1, #0x1f00
	orr r1, r0, r3, lsl #8
	ldr r0, _0211B0EC ; =0x02099EB4
	str r1, [r2]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211B0F0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov48_0211a104
	ldr r0, _0211B0F4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r4, pc}
_0211B0EC: .word unk_02099EB4
_0211B0F0: .word unk_02099ED4
_0211B0F4: .word unk_02099F38
	arm_func_end FUN_ov48_0211b098

	arm_func_start FUN_ov48_0211b0f8
FUN_ov48_0211b0f8: ; 0x0211B0F8
	bx lr
	arm_func_end FUN_ov48_0211b0f8

	arm_func_start FUN_ov48_0211b0fc
FUN_ov48_0211b0fc: ; 0x0211B0FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov48_0211b0fc

	.global ov48_0211B110
ov48_0211B110:
	.byte 0x0E, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov48_0211b194
FUN_ov48_0211b194:
	stmdb sp!,{r3,r4,r5,lr}
	mov r5,#0x2000
	mov r0,r5
	bl FX_Sqrt
	ldr r4,_0211B1DC
	str r0,[r4,#4 ]
	ldr r0,_0211B1E0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1,#0x800
	str r0,[r4,#0x0 ]
	ldr r0,_0211B1E4 ; =0x0000EA3C
	str r1,[r4,#0x10 ]
	str r0,[r4,#0x14 ]
	add r0,r5,#0x4e0000
	str r0,[r4,#0xc ]
	add r0,r1,#0x840000
	str r0,[r4,#0x8 ]
	ldmia sp!,{r3,r4,r5,pc}
_0211B1DC: .word ov48_0211B200
_0211B1E0: .word 0x00009CCD
_0211B1E4: .word 0x0000EA3C
	arm_func_end FUN_ov48_0211b194

	.section .sinit, 4
ov48_0211B1E8:
	.word FUN_ov48_0211b194

	.data
	.global ov48_0211B200
ov48_0211B200:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov48_0211B218
ov48_0211B218:
	.byte 0xAC, 0xB2, 0x11, 0x02, 0x7C, 0xB2, 0x11, 0x02
	.byte 0x4C, 0xB2, 0x11, 0x02, 0x64, 0xB2, 0x11, 0x02, 0x70, 0xB2, 0x11, 0x02, 0x94, 0xB2, 0x11, 0x02
	.byte 0xA0, 0xB2, 0x11, 0x02, 0x40, 0xB2, 0x11, 0x02, 0x58, 0xB2, 0x11, 0x02, 0x88, 0xB2, 0x11, 0x02
	.byte 0x6A, 0x6B, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x6B, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x6B, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x6A, 0x6B, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.byte 0x6A, 0x6B, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x6B, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x6B, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x6A, 0x6B, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00
	.byte 0x6A, 0x6B, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x6B, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov48_0211B2C0
ov48_0211B2C0:
	.byte 0xF8, 0xB0, 0x11, 0x02, 0xFC, 0xB0, 0x11, 0x02, 0x18, 0xAD, 0x11, 0x02, 0xBC, 0xAD, 0x11, 0x02
	.byte 0x4C, 0xAE, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xF8, 0xAE, 0x11, 0x02, 0x94, 0xB0, 0x11, 0x02
	.byte 0x98, 0xB0, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov48_0211B32C
ov48_0211B32C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x72, 0x61, 0x63, 0x74
	.byte 0x69, 0x63, 0x65, 0x5F, 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov48_0211B350
ov48_0211B350:
	.byte 0x47, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov48_0211B358
ov48_0211B358:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x72, 0x61, 0x63, 0x74, 0x69, 0x63, 0x65, 0x5F
	.byte 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00
	.global ov48_0211B37C
ov48_0211B37C:
	.byte 0x25, 0x73, 0x2E, 0x70
	.byte 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/overlay68.inc"

	.text
	arm_func_start FUN_ov68_02119f00
FUN_ov68_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F24 ; =0x0211FD80
	add r1, r4, #0x18
	bl FUN_ov16_020f3054
	ldr r0, _02119F28 ; =0x0211FD9C
	add r1, r4, #0x24
	bl FUN_ov16_020f3054
	ldmfd sp!, {r4, pc}
_02119F24: .word ov68_0211FD80
_02119F28: .word ov68_0211FD9C
	arm_func_end FUN_ov68_02119f00

	arm_func_start FUN_ov68_02119f2c
FUN_ov68_02119f2c: ; 0x02119F2C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F5C ; =0x0211FDBC
	add r1, r4, #0x30
	bl FUN_ov16_020f3054
	ldr r0, _02119F60 ; =0x0211FDD4
	add r1, r4, #0x3c
	bl FUN_ov16_020f3054
	ldr r0, _02119F64 ; =0x0211FDEC
	add r1, r4, #0x48
	bl FUN_ov16_020f3054
	ldmfd sp!, {r4, pc}
_02119F5C: .word ov68_0211FDBC
_02119F60: .word ov68_0211FDD4
_02119F64: .word ov68_0211FDEC
	arm_func_end FUN_ov68_02119f2c

	arm_func_start FUN_ov68_02119f68
FUN_ov68_02119f68: ; 0x02119F68
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x94
	ldr lr, _02119FC0 ; =0x0211FA08
	add r12, sp, #4
	mov r5, r0
	mov r4, #9
_02119F80:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02119F80
	mov r4, #0
	str r4, [sp]
	ldr r1, [r5, #0x18]
	ldr r0, _02119FC4 ; =0x0211FE04
	add r2, sp, #4
	add r3, r5, #0x54
	bl FUN_ov16_020f5450
	mov r0, r5
	mov r1, r4
	bl FUN_ov68_02119fc8
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, pc}
_02119FC0: .word 0x0211FA08
_02119FC4: .word ov68_0211FE04
	arm_func_end FUN_ov68_02119f68

	arm_func_start FUN_ov68_02119fc8
FUN_ov68_02119fc8: ; 0x02119FC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _02119FDC
	cmp r4, #2
	blt _0211A030
_02119FDC:
	mov r4, #0
	add r9, r0, #0x18
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_02119FF0:
	mul r8, r4, r5
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020f338c
	mov r0, r10
	bl FUN_ov16_020f33fc
	str r6, [r9, r8]
	str r6, [r10, #4]
	strb r6, [r10, #8]
	strb r6, [r10, #9]
	add r4, r4, #1
	strb r6, [r10, #0xa]
	cmp r4, #2
	blt _02119FF0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A030:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0x18
	add r6, r4, r5
	mov r0, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	mov r0, r6
	bl FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r4, r5]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov68_02119fc8

	arm_func_start FUN_ov68_0211a070
FUN_ov68_0211a070: ; 0x0211A070
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A0BC ; =0x02099F38
	b _0211A0AC
_0211A084:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _0211A0A8
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A0A8:
	add r5, r5, #1
_0211A0AC:
	cmp r5, #0x11
	blt _0211A084
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A0BC: .word unk_02099F38
	arm_func_end FUN_ov68_0211a070

	arm_func_start FUN_ov68_0211a0c0
FUN_ov68_0211a0c0: ; 0x0211A0C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A120 ; =0x02099F38
	b _0211A114
_0211A0D8:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _0211A110
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A110
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x54]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A110:
	add r6, r6, #1
_0211A114:
	cmp r6, #0x11
	blt _0211A0D8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A120: .word unk_02099F38
	arm_func_end FUN_ov68_0211a0c0

	arm_func_start FUN_ov68_0211a124
FUN_ov68_0211a124: ; 0x0211A124
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	ldr r0, [r8, #0x30]
	mov r7, r1
	cmp r0, #0
	ldrne r0, [r8, #0x3c]
	cmpne r0, #0
	ldrne r0, [r8, #0x48]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r8, r7, lsl #2
	mov r4, #0
	ldr r0, [r0, #0x1fc]
	mov r1, r4
	bl FUN_ov16_020efa9c
	add r1, sp, #0x14
	str r1, [sp]
	mov r5, r0
	ldr r0, [r8, #0x30]
	add r3, sp, #0x18
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f366c
	cmp r0, #0
	beq _0211A1CC
	ldr r0, _0211A2D0 ; =0x02099F38
	ldr r6, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	mov r3, #1
	str r4, [sp]
	stmib sp, {r3, r4}
	str r1, [sp, #0xc]
	ldr r2, _0211A2D4 ; =0x0211FE20
	mov r1, #5
	str r6, [sp, #0x10]
	bl FUN_02058800
	mov r1, #0xc
	mla r1, r7, r1, r8
	str r0, [r1, #0xc4]
_0211A1CC:
	ldr r0, _0211A2D8 ; =0x0209BA20
	mov r1, #1
	bl FUN_0207249c
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r0, #0x26]
	mov r0, r5
	bl FUN_ov16_020f0b3c
	mov r6, r0
	add r1, sp, #0x18
	str r1, [sp]
	add r0, sp, #0x14
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, [r8, #0x3c]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _0211A25C
	ldr r0, _0211A2D0 ; =0x02099F38
	ldr r5, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	mov r3, #1
	str r4, [sp]
	stmib sp, {r3, r4}
	str r1, [sp, #0xc]
	ldr r2, _0211A2DC ; =0x0211FE38
	mov r1, #5
	str r5, [sp, #0x10]
	bl FUN_02058800
	mov r1, #0xc
	mla r1, r7, r1, r8
	str r0, [r1, #0xc8]
_0211A25C:
	add r0, sp, #0x14
	mov r5, #0
	str r0, [sp]
	ldr r0, [r8, #0x48]
	add r3, sp, #0x18
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211A2D0 ; =0x02099F38
	ldr r4, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _0211A2E0 ; =0x0211FE50
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #3
	mov r3, #1
	str r4, [sp, #0x10]
	bl FUN_02058800
	mov r1, #0xc
	mla r1, r7, r1, r8
	str r0, [r1, #0xcc]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A2D0: .word unk_02099F38
_0211A2D4: .word ov68_0211FE20
_0211A2D8: .word unk_0209BA20
_0211A2DC: .word ov68_0211FE38
_0211A2E0: .word ov68_0211FE50
	arm_func_end FUN_ov68_0211a124

	arm_func_start FUN_ov68_0211a2e4
FUN_ov68_0211a2e4: ; 0x0211A2E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r0, #0xc
	mov r9, r1
	mov r11, #0
	mla r6, r9, r0, r10
	mov r8, r11
	add r7, r10, #0xc4
	ldr r5, _0211A468 ; =0x02099F38
	mov r4, r0
	b _0211A33C
_0211A310:
	mul r0, r8, r4
	adds r0, r7, r0
	beq _0211A338
	add r0, r6, r8, lsl #2
	ldr r1, [r0, #0xc4]
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A338:
	add r8, r8, #1
_0211A33C:
	cmp r8, #3
	blt _0211A310
	mov r0, #0xc
	mla r0, r9, r0, r10
	ldr r7, [r0, #0xc4]
	cmp r7, #0
	beq _0211A390
	ldr r4, _0211A468 ; =0x02099F38
	mov r1, r7
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A390
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov16_021146a4
	mov r2, #0
	ldr r0, [r4]
	mov r1, r7
	mov r3, r2
	bl FUN_02059038
_0211A390:
	mov r5, #0xc
	mla r0, r9, r5, r10
	ldr r7, [r0, #0xc8]
	cmp r7, #0
	beq _0211A460
	ldr r4, _0211A468 ; =0x02099F38
	mov r1, r7
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A460
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov16_021146a4
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x1fc]
	mov r1, r11
	bl FUN_ov16_020efa9c
	movs r6, r0
	beq _0211A448
	adds r0, r10, #0xdc
	beq _0211A448
	mla r0, r9, r5, r10
	ldr r1, [r0, #0xcc]
	ldr r0, [r4]
	bl FUN_0205998c
	movs r5, r0
	beq _0211A448
	ldr r0, _0211A46C ; =0x02099F04
	ldr r1, [r5, #4]
	ldr r2, [r0]
	mov r0, r6
	bl FUN_ov16_020f0c30 ; may be ov17
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	bl FUN_02059a78
	mov r6, r0
	mov r4, #0x20
	ldr r0, [r5, #4]
	mov r1, r6
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, r4
	bl DC_FlushRange
_0211A448:
	ldr r0, _0211A468 ; =0x02099F38
	mov r2, #0
	ldr r0, [r0]
	mov r1, r7
	mov r3, r2
	bl FUN_02059038
_0211A460:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A468: .word unk_02099F38
_0211A46C: .word unk_02099F04
	arm_func_end FUN_ov68_0211a2e4

	arm_func_start FUN_ov68_0211a470
FUN_ov68_0211a470: ; 0x0211A470
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #0
	mov r10, r0
	mov r6, r8
	mov r11, r8
	mov r4, #0xc
	ldr r5, _0211A4D8 ; =0x02099F38
	b _0211A4CC
_0211A490:
	mla r7, r8, r4, r10
	mov r9, r11
	b _0211A4C0
_0211A49C:
	add r0, r7, r9, lsl #2
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	beq _0211A4BC
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r7, r9, lsl #2
	str r6, [r0, #0xc4]
_0211A4BC:
	add r9, r9, #1
_0211A4C0:
	cmp r9, #3
	blt _0211A49C
	add r8, r8, #1
_0211A4CC:
	cmp r8, #2
	blt _0211A490
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A4D8: .word unk_02099F38
	arm_func_end FUN_ov68_0211a470

	arm_func_start FUN_ov68_0211a4dc
FUN_ov68_0211a4dc: ; 0x0211A4DC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r3, #1
	str r3, [sp]
	mov r2, #0xe
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r2, r1, lsl #0x10
	mov r12, r0
	str r3, [sp, #0xc]
	ldr r0, [r12, #0x24]
	ldr r1, _0211A524 ; =0x0211FE68
	mov r2, r2, lsr #0x10
	add r3, r12, #0x1f4
	bl FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211A524: .word ov68_0211FE68
	arm_func_end FUN_ov68_0211a4dc

	arm_func_start FUN_ov68_0211a528
FUN_ov68_0211a528: ; 0x0211A528
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r0
	mov r5, r6
_0211A538:
	mov r7, r5
	add r4, r8, r6, lsl #3
_0211A540:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x204]
	mov r0, r8
	bl FUN_ov68_0211a4dc
	add r7, r7, #1
	cmp r7, #2
	blt _0211A540
	add r6, r6, #1
	cmp r6, #2
	blt _0211A538
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov68_0211a528

	arm_func_start FUN_ov68_0211a56c
FUN_ov68_0211a56c: ; 0x0211A56C
	mov r2, r0
	mov r0, r1, lsl #0x10
	ldr r12, _0211A584 ; = FUN_ov16_020f5738
	mov r0, r0, lsr #0x10
	add r1, r2, #0x1f4
	bx r12
_0211A584: .word  FUN_ov16_020f5738
	arm_func_end FUN_ov68_0211a56c

	arm_func_start FUN_ov68_0211a588
FUN_ov68_0211a588: ; 0x0211A588
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x98]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r4, _0211A64C ; =0x02099F38
	mov r8, #2
	mov r7, #1
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_02112724
	movs r6, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r6, [r5, #0x98]
	ldr r3, [r5, #0x64]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r5
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #0xc8
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_021142fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A64C: .word unk_02099F38
	arm_func_end FUN_ov68_0211a588

	arm_func_start FUN_ov68_0211a650
FUN_ov68_0211a650: ; 0x0211A650
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r5, _0211A724 ; =0x02099F38
	mov r8, #1
	ldr r0, [r5]
	mov r2, r8
	mov r1, #0xa
	bl FUN_ov16_02112724
	movs r7, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r7, [r4, #0xa8]
	ldr r3, [r4, #0x78]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_0211401c
	mov r0, #0xa8
	str r0, [sp]
	ldr r0, [r5]
	mov r3, r6
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, #0x64
	bl FUN_ov16_021139bc
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl FUN_ov68_0211a728
	ldr r0, [r5]
	mov r1, r7
	mov r3, r8
	mov r2, #2
	bl FUN_ov16_021142fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A724: .word unk_02099F38
	arm_func_end FUN_ov68_0211a650

	arm_func_start FUN_ov68_0211a728
FUN_ov68_0211a728: ; 0x0211A728
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, _0211A7FC ; =0x0209BA20
	mov r9, r1
	mov r8, r2
	bl FUN_ov16_020edf7c
	mov r6, r0
	mov r7, #0x80
	mov r5, #0
	ldr r4, _0211A800 ; =0x02099F38
	ldr r11, _0211A804 ; =0xCCCCCCCD
	b _0211A7F0
_0211A758:
	ldr r0, [r10, #0x70]
	add r8, r8, #1
	and r3, r0, #0xff
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	umull r0, r3, r6, r11
	mov r3, r3, lsr #3
	mov r0, #0xa
	umull r1, r2, r0, r3
	sub r0, r7, #8
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	sub r3, r6, r1
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_0211401c
	mov r0, #0xa9
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	mov r3, #0x5a
	bl FUN_ov16_021139bc
	mov r1, r6
	umull r0, r6, r1, r11
	movs r6, r6, lsr #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, r5, #1
_0211A7F0:
	cmp r5, #8
	blt _0211A758
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A7FC: .word unk_0209BA20
_0211A800: .word unk_02099F38
_0211A804: .word 0xCCCCCCCD
	arm_func_end FUN_ov68_0211a728

	arm_func_start FUN_ov68_0211a808
FUN_ov68_0211a808: ; 0x0211A808
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #0x9c]
	ldr r4, _0211AE78 ; =0x02099F38
	mov r8, #0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #1
	ldr r0, [r4]
	mov r2, r9
	mov r1, #0x10
	bl FUN_ov16_02112724
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r7, [r10, #0x9c]
	ldr r3, [r10, #0x74]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r9
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r9
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r7
	mov r2, r9
	mov r3, #0x96
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0xc8]
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r6, #0x1a
	str r6, [sp]
	mov r5, #0x28
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #1
	mov r3, r5
	bl FUN_ov16_02113b78
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #1
	mov r3, r8
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #1
	mov r3, #0x8c
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0xc4]
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r3, r5
	mov r1, r7
	add r2, r9, #2
	bl FUN_ov16_02113b78
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #2
	mov r3, r8
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #2
	mov r3, #0x82
	bl FUN_ov16_021139bc
	ldr r0, [r10, #0x204]
	mov r11, #0x82
	cmp r0, #0
	mov r6, r8
	mov r5, r4
	ble _0211A9E4
	ldr r3, [r10, #0x60]
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #3
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #3
	mov r3, #0x38
	bl FUN_ov16_02113b78
	ldr r1, [r10, #0x204]
	mov r0, r10
	bl FUN_ov68_0211b628
	str r8, [sp]
	mov r3, r0
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #3
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r3, r11
	mov r1, r7
	add r2, r9, #3
	bl FUN_ov16_021139bc
_0211A9E4:
	ldr r0, [r10, #0x208]
	cmp r0, #0
	ble _0211AA5C
	ldr r3, [r10, #0x60]
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #4
	mov r3, #0x38
	bl FUN_ov16_02113b78
	ldr r1, [r10, #0x208]
	mov r0, r10
	bl FUN_ov68_0211b628
	str r6, [sp]
	mov r3, r0
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #4
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #4
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211AA5C:
	ldr r1, [r10, #0x204]
	cmp r1, #0
	ble _0211AAD0
	mov r0, r10
	bl FUN_ov68_0211a56c
	mov r2, r0
	and r3, r2, #0xff
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #5
	bl FUN_ov16_021137dc
	mov r0, #0x70
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #5
	mov r3, #0x20
	bl FUN_ov16_02113b78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #5
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #5
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211AAD0:
	ldr r1, [r10, #0x208]
	cmp r1, #0
	ble _0211AB44
	mov r0, r10
	bl FUN_ov68_0211a56c
	mov r2, r0
	and r3, r2, #0xff
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #6
	bl FUN_ov16_021137dc
	mov r0, #0x90
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #6
	mov r3, #0x20
	bl FUN_ov16_02113b78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #6
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	mov r1, r7
	add r2, r9, #6
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211AB44:
	ldr r1, [r10, #0x204]
	add r8, r9, #7
	cmp r1, #0
	ble _0211ACD8
	ldr r0, _0211AE7C ; =0x0209BA20
	bl FUN_0204a2c4
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #9
	beq _0211ACD8
	ldr r3, [r10, #0x90]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_0211401c
	mov r0, #0x68
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, #0x60
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_021139bc
	mov r0, r4
	mov r1, r6
	mov r2, #0x64
	bl FUN_0204b0c4
	mov r9, r0
	cmp r9, #0xa
	blt _0211AC54
	ldr r2, [r10, #0x94]
	ldr r0, [r5]
	and r3, r2, #0xff
	mov r1, r7
	add r2, r8, #1
	bl FUN_ov16_021137dc
	ldr lr, _0211AE80 ; =0x66666667
	str r6, [sp]
	smull r12, r3, lr, r9
	mov r4, r9, lsr #0x1f
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #1
	add r3, r4, r3, asr #2
	bl FUN_ov16_0211401c
	mov r0, #0x68
	str r0, [sp]
	mov r3, r0
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #1
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	mov r3, r11
	mov r1, r7
	add r2, r8, #1
	bl FUN_ov16_021139bc
_0211AC54:
	ldr r4, _0211AE78 ; =0x02099F38
	ldr r3, [r10, #0x94]
	add r8, r8, #2
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r1, _0211AE80 ; =0x66666667
	mov r0, #0
	str r0, [sp]
	smull r0, r3, r1, r9
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r12, r9, lsr #0x1f
	add r3, r12, r3, asr #2
	mov r12, #0xa
	smull r3, lr, r12, r3
	sub r3, r9, r3
	bl FUN_ov16_0211401c
	mov r0, #0x68
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, #0x6e
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211ACD8:
	ldr r1, [r10, #0x208]
	cmp r1, #0
	ble _0211AE60
	ldr r0, _0211AE7C ; =0x0209BA20
	bl FUN_0204a2c4
	mov r9, r0
	ldrb r0, [r9]
	cmp r0, #9
	beq _0211AE60
	ldr r3, [r10, #0x90]
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #1
	mov r3, r6
	bl FUN_ov16_0211401c
	mov r4, #0x88
	str r4, [sp]
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #1
	mov r3, #0x60
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #1
	mov r3, r11
	bl FUN_ov16_021139bc
	mov r0, r9
	mov r1, r6
	mov r2, #0x64
	bl FUN_0204b0c4
	mov r9, r0
	cmp r9, #0xa
	blt _0211ADE0
	ldr r3, [r10, #0x94]
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r2, _0211AE80 ; =0x66666667
	mov r0, r9, lsr #0x1f
	smull r1, r3, r2, r9
	add r3, r0, r3, asr #2
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #2
	bl FUN_ov16_0211401c
	str r4, [sp]
	ldr r0, [r5]
	mov r1, r7
	add r2, r8, #2
	mov r3, #0x68
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	mov r3, r11
	mov r1, r7
	add r2, r8, #2
	bl FUN_ov16_021139bc
_0211ADE0:
	ldr r4, _0211AE78 ; =0x02099F38
	ldr r3, [r10, #0x94]
	ldr r0, [r4]
	mov r1, r7
	add r2, r8, #3
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r2, _0211AE80 ; =0x66666667
	mov r0, r9, lsr #0x1f
	smull r1, r3, r2, r9
	mov r1, #0
	str r1, [sp]
	add r3, r0, r3, asr #2
	mov r1, #0xa
	smull r2, r0, r1, r3
	ldr r0, [r4]
	mov r1, r7
	sub r3, r9, r2
	add r2, r8, #3
	bl FUN_ov16_0211401c
	mov r0, #0x88
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r8, #3
	mov r3, #0x6e
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	add r2, r8, #3
	mov r1, r7
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211AE60:
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE78: .word unk_02099F38
_0211AE7C: .word unk_0209BA20
_0211AE80: .word 0x66666667
	arm_func_end FUN_ov68_0211a808

	arm_func_start FUN_ov68_0211ae84
FUN_ov68_0211ae84: ; 0x0211AE84
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldr r0, [r9, #0xa0]
	ldr r7, _0211B4EC ; =0x02099F38
	mov r8, #0
	mov r11, #0x82
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r10, #1
	ldr r0, [r7]
	mov r2, r10
	mov r1, #0x10
	bl FUN_ov16_02112724
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [r9, #0xa0]
	ldr r3, [r9, #0x88]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r10
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r10
	mov r3, r8
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r10
	mov r3, #0x80
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r6
	mov r2, r10
	mov r3, #0x96
	bl FUN_ov16_021139bc
	ldr r3, [r9, #0xd4]
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r4, #0x1a
	str r4, [sp]
	mov r5, #0x98
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #1
	mov r3, r5
	bl FUN_ov16_02113b78
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #1
	mov r3, r8
	bl FUN_ov16_0211401c
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #1
	mov r3, #0x8c
	bl FUN_ov16_021139bc
	ldr r3, [r9, #0xd0]
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r7]
	mov r3, r5
	mov r1, r6
	add r2, r10, #2
	bl FUN_ov16_02113b78
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #2
	mov r3, r8
	bl FUN_ov16_0211401c
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #2
	mov r3, r11
	bl FUN_ov16_021139bc
	ldr r0, [r9, #0x20c]
	mov r5, r8
	cmp r0, #0
	mov r4, r7
	ble _0211B060
	ldr r3, [r9, #0x60]
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #3
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #3
	mov r3, #0xb0
	bl FUN_ov16_02113b78
	mov r0, r9
	ldr r1, [r9, #0x20c]
	bl FUN_ov68_0211b628
	str r8, [sp]
	mov r3, r0
	ldr r0, [r7]
	mov r1, r6
	add r2, r10, #3
	bl FUN_ov16_0211401c
	ldr r0, [r7]
	mov r3, r11
	mov r1, r6
	add r2, r10, #3
	bl FUN_ov16_021139bc
_0211B060:
	ldr r0, [r9, #0x210]
	cmp r0, #0
	ble _0211B0D8
	ldr r3, [r9, #0x60]
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #4
	mov r3, #0xb0
	bl FUN_ov16_02113b78
	ldr r1, [r9, #0x210]
	mov r0, r9
	bl FUN_ov68_0211b628
	str r5, [sp]
	mov r3, r0
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #4
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #4
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211B0D8:
	ldr r1, [r9, #0x20c]
	cmp r1, #0
	ble _0211B14C
	mov r0, r9
	bl FUN_ov68_0211a56c
	mov r2, r0
	and r3, r2, #0xff
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #5
	bl FUN_ov16_021137dc
	mov r0, #0x70
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #5
	mov r3, #0x90
	bl FUN_ov16_02113b78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #5
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #5
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211B14C:
	ldr r1, [r9, #0x210]
	cmp r1, #0
	ble _0211B1BC
	mov r0, r9
	bl FUN_ov68_0211a56c
	mov r2, r0
	and r3, r2, #0xff
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #6
	bl FUN_ov16_021137dc
	mov r3, #0x90
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #6
	bl FUN_ov16_02113b78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #6
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r6
	add r2, r10, #6
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211B1BC:
	ldr r1, [r9, #0x20c]
	add r7, r10, #7
	cmp r1, #0
	ble _0211B34C
	ldr r0, _0211B4F0 ; =0x0209BA20
	bl FUN_0204a2c4
	mov r8, r0
	ldrb r0, [r8]
	cmp r0, #9
	beq _0211B34C
	ldr r3, [r9, #0x90]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r11, #0x68
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #0xd8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #0x82
	bl FUN_ov16_021139bc
	mov r0, r8
	mov r1, r5
	mov r2, #0x64
	bl FUN_0204b0c4
	mov r8, r0
	cmp r8, #0xa
	blt _0211B2C8
	ldr r2, [r9, #0x94]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r1, r6
	add r2, r7, #1
	bl FUN_ov16_021137dc
	ldr r10, _0211B4F4 ; =0x66666667
	str r5, [sp]
	smull lr, r3, r10, r8
	mov r12, r8, lsr #0x1f
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	add r3, r12, r3, asr #2
	bl FUN_ov16_0211401c
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, #0xe0
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r3, #0x82
	mov r1, r6
	add r2, r7, #1
	bl FUN_ov16_021139bc
_0211B2C8:
	ldr r10, _0211B4EC ; =0x02099F38
	ldr r3, [r9, #0x94]
	add r7, r7, #2
	ldr r0, [r10]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r1, _0211B4F4 ; =0x66666667
	mov r0, #0
	str r0, [sp]
	smull r0, r3, r1, r8
	ldr r0, [r10]
	mov r1, r6
	mov r2, r7
	mov r11, r8, lsr #0x1f
	add r3, r11, r3, asr #2
	mov r11, #0xa
	smull r3, r12, r11, r3
	sub r3, r8, r3
	bl FUN_ov16_0211401c
	mov r0, #0x68
	str r0, [sp]
	ldr r0, [r10]
	mov r1, r6
	mov r2, r7
	mov r3, #0xe6
	bl FUN_ov16_02113b78
	ldr r0, [r10]
	mov r1, r6
	mov r2, r7
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211B34C:
	ldr r1, [r9, #0x210]
	cmp r1, #0
	ble _0211B4D4
	ldr r0, _0211B4F0 ; =0x0209BA20
	bl FUN_0204a2c4
	mov r8, r0
	ldrb r0, [r8]
	cmp r0, #9
	beq _0211B4D4
	ldr r3, [r9, #0x90]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r10, #0x88
	str r10, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, #0xd8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, #0x82
	bl FUN_ov16_021139bc
	mov r0, r8
	mov r1, r5
	mov r2, #0x64
	bl FUN_0204b0c4
	mov r8, r0
	cmp r8, #0xa
	blt _0211B454
	ldr r3, [r9, #0x94]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r2, _0211B4F4 ; =0x66666667
	str r5, [sp]
	smull r1, r3, r2, r8
	mov r0, r8, lsr #0x1f
	add r3, r0, r3, asr #2
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	bl FUN_ov16_0211401c
	str r10, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, #0xe0
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r3, #0x82
	mov r1, r6
	add r2, r7, #2
	bl FUN_ov16_021139bc
_0211B454:
	ldr r5, _0211B4EC ; =0x02099F38
	ldr r3, [r9, #0x94]
	ldr r0, [r5]
	mov r1, r6
	add r2, r7, #3
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r2, _0211B4F4 ; =0x66666667
	mov r0, r8, lsr #0x1f
	smull r1, r3, r2, r8
	mov r1, #0
	str r1, [sp]
	add r3, r0, r3, asr #2
	mov r1, #0xa
	smull r2, r0, r1, r3
	ldr r0, [r5]
	mov r1, r6
	sub r3, r8, r2
	add r2, r7, #3
	bl FUN_ov16_0211401c
	mov r0, #0x88
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r6
	add r2, r7, #3
	mov r3, #0xe6
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	add r2, r7, #3
	mov r1, r6
	mov r3, #0x82
	bl FUN_ov16_021139bc
_0211B4D4:
	ldr r0, [r4]
	mov r1, r6
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B4EC: .word unk_02099F38
_0211B4F0: .word unk_0209BA20
_0211B4F4: .word 0x66666667
	arm_func_end FUN_ov68_0211ae84

	arm_func_start FUN_ov68_0211b4f8
FUN_ov68_0211b4f8: ; 0x0211B4F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #0xa4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211B624 ; =0x02099F38
	mov r9, #2
	mov r8, #1
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_02112724
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r7, [r10, #0xa4]
	ldr r3, [r10, #0x68]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_0211401c
	mov r5, #0x68
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r11, #0x50
	mov r3, r11
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0x68]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r7
	add r2, r8, #1
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r8, #1
	mov r3, r8
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r8, #1
	mov r3, #0x80
	bl FUN_ov16_02113b78
	mov r3, r11
	ldr r0, [r4]
	mov r1, r7
	add r2, r8, #1
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r7
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_021142fc
	ldr r0, [r4]
	mov r1, r7
	add r2, r8, #1
	mov r3, r9
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B624: .word unk_02099F38
	arm_func_end FUN_ov68_0211b4f8

	arm_func_start FUN_ov68_0211b628
FUN_ov68_0211b628: ; 0x0211B628
	stmfd sp!, {r3, lr}
	ldr r0, _0211B69C ; =0x0209BA20
	bl FUN_0204a2c4
	ldrb r0, [r0]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211B694
_0211B644: ; jump table
	b _0211B694 ; case 0
	b _0211B694 ; case 1
	b _0211B694 ; case 2
	b _0211B694 ; case 3
	b _0211B694 ; case 4
	b _0211B66C ; case 5
	b _0211B674 ; case 6
	b _0211B67C ; case 7
	b _0211B684 ; case 8
	b _0211B68C ; case 9
_0211B66C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0211B674:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0211B67C:
	mov r0, #2
	ldmfd sp!, {r3, pc}
_0211B684:
	mov r0, #3
	ldmfd sp!, {r3, pc}
_0211B68C:
	mov r0, #4
	ldmfd sp!, {r3, pc}
_0211B694:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0211B69C: .word unk_0209BA20
	arm_func_end FUN_ov68_0211b628

	arm_func_start FUN_ov68_0211b6a0
FUN_ov68_0211b6a0: ; 0x0211B6A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0xb4]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, _0211B7EC ; =0x02099F38
	mov r6, #1
	ldr r0, [r8]
	mov r2, r6
	mov r1, #5
	bl FUN_ov16_02112724
	movs r5, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r5, [r7, #0xb4]
	ldr r3, [r7, #0x84]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r4, #0
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r0, #0x38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #0x32
	bl FUN_ov16_021139bc
	mov r0, r7
	mov r1, r5
	add r2, r6, #1
	bl FUN_ov68_0211b7f0
	ldr r1, [r7, #0x5c]
	ldr r0, [r8]
	and r3, r1, #0xff
	mov r1, r5
	mov r7, #4
	mov r2, r7
	bl FUN_ov16_021137dc
	str r4, [sp]
	mov r3, r4
	ldr r0, [r8]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_0211401c
	mov r3, #0x68
	str r3, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_02113b78
	ldr r0, [r8]
	mov r1, r5
	mov r2, r7
	mov r3, #0x1e
	bl FUN_ov16_021139bc
	mov r3, r6
	ldr r0, [r8]
	mov r1, r5
	mov r4, #2
	mov r2, r4
	bl FUN_ov16_021142fc
	ldr r0, [r8]
	mov r1, r5
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B7EC: .word unk_02099F38
	arm_func_end FUN_ov68_0211b6a0

	arm_func_start FUN_ov68_0211b7f0
FUN_ov68_0211b7f0: ; 0x0211B7F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0x214]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	bne _0211B840
	ldr r7, _0211B8CC ; =0x02099F38
	mov r1, #5
	ldr r0, [r7]
	mov r2, r1
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r6, #0x214]
	mov r2, #0
	ldr r0, [r7]
	mov r3, r2
	bl FUN_02059038
_0211B840:
	mov r0, #0x3c
	ldr r7, _0211B8CC ; =0x02099F38
	str r0, [sp]
	mov r8, #0
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r3, [r6, #0x214]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r8, [sp]
	mov r3, r8
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_02113d88
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, #0x1e
	bl FUN_ov16_021139bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B8CC: .word unk_02099F38
	arm_func_end FUN_ov68_0211b7f0

	arm_func_start FUN_ov68_0211b8d0
FUN_ov68_0211b8d0: ; 0x0211B8D0
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	mov r2, #1
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r0, #0x214]
	ldr r0, _0211B910 ; =0x0211FE88
	mov r3, #9
	bl FUN_ov16_020f2304
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0211B910: .word ov68_0211FE88
	arm_func_end FUN_ov68_0211b8d0

	arm_func_start FUN_ov68_0211b914
FUN_ov68_0211b914: ; 0x0211B914
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #0xb8]
	ldr r7, _0211BD40 ; =0x02099F38
	mov r4, #0
	mov r5, #0x28
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #1
	ldr r0, [r7]
	mov r2, r6
	mov r1, #0x1e
	bl FUN_ov16_02112724
	movs r9, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r9, [r10, #0xb8]
	ldr r3, [r10, #0x7c]
	ldr r0, [r7]
	mov r1, r9
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r9
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	mov r2, r6
	mov r3, #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r9
	mov r2, r6
	mov r3, #0x32
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0x204]
	cmp r1, #0
	ble _0211BA28
	mov r0, r10
	bl FUN_ov68_0211a56c
	mov r3, r0
	ldr r0, [r7]
	mov r1, r9
	add r2, r6, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r6, #1
	mov r3, #0x18
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r7]
	mov r3, r4
	mov r1, r9
	add r2, r6, #1
	bl FUN_ov16_0211401c
	ldr r0, [r7]
	mov r1, r9
	add r2, r6, #1
	mov r3, r5
	bl FUN_ov16_021139bc
_0211BA28:
	ldr r1, [r10, #0x208]
	mov r7, #0
	cmp r1, #0
	ldr r4, _0211BD40 ; =0x02099F38
	ble _0211BAA4
	mov r0, r10
	bl FUN_ov68_0211a56c
	mov r2, r0
	and r3, r2, #0xff
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #2
	bl FUN_ov16_021137dc
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #2
	mov r3, #0x18
	bl FUN_ov16_02113b78
	mov r3, r7
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #2
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #2
	mov r3, #0x28
	bl FUN_ov16_021139bc
_0211BAA4:
	ldr r1, [r10, #0x20c]
	cmp r1, #0
	ble _0211BB18
	mov r0, r10
	bl FUN_ov68_0211a56c
	mov r2, r0
	and r3, r2, #0xff
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #3
	bl FUN_ov16_021137dc
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #3
	mov r3, #0x90
	bl FUN_ov16_02113b78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #3
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #3
	mov r3, #0x28
	bl FUN_ov16_021139bc
_0211BB18:
	ldr r1, [r10, #0x210]
	cmp r1, #0
	ble _0211BB8C
	mov r0, r10
	bl FUN_ov68_0211a56c
	mov r2, r0
	and r3, r2, #0xff
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #4
	bl FUN_ov16_021137dc
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #4
	mov r3, #0x90
	bl FUN_ov16_02113b78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, #4
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	add r2, r6, #4
	mov r1, r9
	mov r3, #0x28
	bl FUN_ov16_021139bc
_0211BB8C:
	ldr r3, [r10, #0x58]
	mov r8, #6
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r6, #0x91
	str r6, [sp]
	mov r11, #0x38
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x58]
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #1
	mov r3, #1
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r9
	add r2, r8, #1
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #1
	mov r3, r5
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x58]
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	mov r11, #2
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #2
	mov r3, r11
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #2
	mov r3, #0x98
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #2
	mov r3, r5
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x58]
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #3
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r8, #3
	mov r3, #3
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r4]
	mov r3, #0x98
	mov r1, r9
	add r2, r8, #3
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r3, r5
	mov r1, r9
	add r2, r8, #3
	bl FUN_ov16_021139bc
	mov r0, r10
	mov r1, r9
	add r2, r8, #4
	bl FUN_ov68_0211becc
	mov r0, r10
	add r2, r8, #4
	mov r1, r9
	bl FUN_ov68_0211bd44
	ldr r0, [r4]
	mov r1, r9
	mov r2, r11
	bl FUN_ov16_02114370
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BD40: .word unk_02099F38
	arm_func_end FUN_ov68_0211b914

	arm_func_start FUN_ov68_0211bd44
FUN_ov68_0211bd44: ; 0x0211BD44
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, r0
	ldr r3, [r11, #0x238]
	ldr r0, [r11, #0x23c]
	mov r10, r1
	mov r9, r2
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r7, #0
	b _0211BEA8
_0211BD70:
	add r9, r9, #1
	add r0, r11, r7, lsl #2
	str r9, [r0, #0x240]
	ldr r4, _0211BEC0 ; =0x02099F38
	ldr r3, [r11, #0x70]
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	and r3, r3, #0xff
	mov r8, #0x98
	bl FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	mov r3, #0xa
	bl FUN_ov16_0211401c
	mov r0, #0x56
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	mov r3, #0x28
	bl FUN_ov16_021139bc
	add r5, sp, #4
	b _0211BE9C
_0211BDF0:
	ldr r3, [r11, #0x70]
	add r9, r9, #1
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	sub r1, r8, #8
	mov r0, #0
	mov r1, r1, lsl #0x10
	str r0, [sp]
	mov r8, r1, asr #0x10
	ldr r0, [r5, r7, lsl #2]
	ldr r1, _0211BEC4 ; =0xCCCCCCCD
	umull r1, r3, r0, r1
	mov r3, r3, lsr #3
	mov r1, #0xa
	umull r2, r3, r1, r3
	sub r3, r0, r2
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	bl FUN_ov16_0211401c
	mov r0, #0x56
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r10
	mov r2, r9
	mov r3, #0x28
	bl FUN_ov16_021139bc
	ldr r2, [r5, r7, lsl #2]
	ldr r0, _0211BEC8 ; =0x66666667
	smull r1, r3, r0, r2
	mov r0, r2, lsr #0x1f
	adds r3, r0, r3, asr #2
	str r3, [r5, r7, lsl #2]
	beq _0211BEA4
	add r6, r6, #1
_0211BE9C:
	cmp r6, #8
	blt _0211BDF0
_0211BEA4:
	add r7, r7, #1
_0211BEA8:
	cmp r7, #2
	blt _0211BD70
	add r0, r9, #1
	str r0, [r11, #0x248]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BEC0: .word unk_02099F38
_0211BEC4: .word 0xCCCCCCCD
_0211BEC8: .word 0x66666667
	arm_func_end FUN_ov68_0211bd44

	arm_func_start FUN_ov68_0211becc
FUN_ov68_0211becc: ; 0x0211BECC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x218]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	bne _0211BF18
	ldr r6, _0211BFA0 ; =0x02099F38
	mov r1, #5
	ldr r0, [r6]
	mov r2, r1
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r7, #0x218]
	mov r2, #0
	ldr r0, [r6]
	mov r3, r2
	bl FUN_02059038
_0211BF18:
	ldr r6, _0211BFA0 ; =0x02099F38
	ldr r3, [r7, #0x218]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x66
	str r0, [sp]
	mov r7, #0
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_02113b78
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r7, [sp]
	mov r3, r7
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_02113d88
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, #0x28
	bl FUN_ov16_021139bc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BFA0: .word unk_02099F38
	arm_func_end FUN_ov68_0211becc

	arm_func_start FUN_ov68_0211bfa4
FUN_ov68_0211bfa4: ; 0x0211BFA4
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	mov r2, #1
	str r2, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r3, r0
	str r2, [sp, #0x10]
	mov r0, r1
	ldr r1, [r3, #0x218]
	mov r3, #9
	bl FUN_ov16_020f2304
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov68_0211bfa4

	arm_func_start FUN_ov68_0211bfe4
FUN_ov68_0211bfe4: ; 0x0211BFE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0xbc]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r6, _0211C114 ; =0x02099F38
	mov r8, #1
	ldr r0, [r6]
	mov r2, r8
	mov r1, #5
	bl FUN_ov16_02112724
	movs r4, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r4, [r5, #0xbc]
	ldr r3, [r5, #0x80]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r7, #0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r0, #0x38
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, #0x32
	bl FUN_ov16_021139bc
	add r2, r8, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov68_0211c118
	ldr r1, [r5, #0x5c]
	ldr r0, [r6]
	and r3, r1, #0xff
	mov r1, r4
	mov r5, #4
	mov r2, r5
	bl FUN_ov16_021137dc
	str r7, [sp]
	mov r3, r7
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_0211401c
	mov r3, #0x68
	str r3, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_02113b78
	mov r2, r5
	ldr r0, [r6]
	mov r1, r4
	mov r3, #0x1e
	bl FUN_ov16_021139bc
	ldr r0, [r6]
	mov r1, r4
	mov r2, #2
	bl FUN_ov16_02114370
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C114: .word unk_02099F38
	arm_func_end FUN_ov68_0211bfe4

	arm_func_start FUN_ov68_0211c118
FUN_ov68_0211c118: ; 0x0211C118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0x21c]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	bne _0211C168
	ldr r7, _0211C1F4 ; =0x02099F38
	mov r1, #5
	ldr r0, [r7]
	mov r2, r1
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r6, #0x21c]
	mov r2, #0
	ldr r0, [r7]
	mov r3, r2
	bl FUN_02059038
_0211C168:
	mov r0, #0x3c
	ldr r7, _0211C1F4 ; =0x02099F38
	str r0, [sp]
	mov r8, #0
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r3, [r6, #0x21c]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r8, [sp]
	mov r3, r8
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_02113d88
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, #0x1e
	bl FUN_ov16_021139bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C1F4: .word unk_02099F38
	arm_func_end FUN_ov68_0211c118

	arm_func_start FUN_ov68_0211c1f8
FUN_ov68_0211c1f8: ; 0x0211C1F8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	ldr r1, _0211C260 ; =0x0211FC28
	add r4, sp, #0x24
	mov r5, r0
	ldmia r1, {r0, r1, r2, r3}
	ldr lr, _0211C264 ; =0x0211F9F8
	stmia r4, {r0, r1, r2, r3}
	add r12, sp, #0x14
	ldmia lr, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	ldr r1, [r5, #0x24c]
	mov r2, #1
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r12, r1, lsl #2]
	mov r3, #9
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, r1, lsl #2]
	ldr r1, [r5, #0x21c]
	bl FUN_ov16_020f2304
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, pc}
_0211C260: .word ov68_0211FC28
_0211C264: .word 0x0211F9F8
	arm_func_end FUN_ov68_0211c1f8

	arm_func_start FUN_ov68_0211c268
FUN_ov68_0211c268: ; 0x0211C268
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #0xc0]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211C4A8 ; =0x02099F38
	mov r9, #1
	ldr r0, [r4]
	mov r2, r9
	mov r1, #0xa
	bl FUN_ov16_02112724
	movs r8, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [r10, #0xc0]
	ldr r3, [r10, #0x8c]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r9
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r7, #0
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r9
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r11, #0x38
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r9
	mov r3, #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r8
	mov r2, r9
	mov r3, #0x32
	bl FUN_ov16_021139bc
	mov r0, r10
	mov r1, r8
	add r2, r9, #1
	bl FUN_ov68_0211c4ac
	ldr r3, [r10, #0x58]
	mov r6, #6
	ldr r0, [r4]
	mov r1, r8
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r5, #0x68
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r6
	mov r3, r11
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r8
	mov r2, r6
	mov r3, #0x28
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x58]
	ldr r0, [r4]
	mov r1, r8
	add r2, r6, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r3, r9
	mov r1, r8
	add r2, r6, #1
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r8
	add r2, r6, #1
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r8
	mov r3, #0x28
	add r2, r6, #1
	bl FUN_ov16_021139bc
	ldr r2, [r10, #0x58]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r1, r8
	add r2, r6, #2
	bl FUN_ov16_021137dc
	str r7, [sp]
	mov r9, #2
	ldr r0, [r4]
	mov r1, r8
	add r2, r6, #2
	mov r3, r9
	bl FUN_ov16_0211401c
	str r5, [sp]
	mov r11, #0x98
	ldr r0, [r4]
	mov r1, r8
	add r2, r6, #2
	mov r3, r11
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r8
	add r2, r6, #2
	mov r3, #0x28
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0x58]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r8
	add r2, r6, #3
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r8
	add r2, r6, #3
	mov r3, #3
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r8
	add r2, r6, #3
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	add r2, r6, #3
	mov r3, #0x28
	mov r1, r8
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r8
	mov r2, r9
	bl FUN_ov16_02114370
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C4A8: .word unk_02099F38
	arm_func_end FUN_ov68_0211c268

	arm_func_start FUN_ov68_0211c4ac
FUN_ov68_0211c4ac: ; 0x0211C4AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0x220]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	bne _0211C4FC
	ldr r7, _0211C588 ; =0x02099F38
	mov r1, #5
	ldr r0, [r7]
	mov r2, r1
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r6, #0x220]
	mov r2, #0
	ldr r0, [r7]
	mov r3, r2
	bl FUN_02059038
_0211C4FC:
	mov r0, #0x3c
	ldr r7, _0211C588 ; =0x02099F38
	str r0, [sp]
	mov r8, #0
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r3, [r6, #0x220]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r8, [sp]
	mov r3, r8
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_02113d88
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, #0x1e
	bl FUN_ov16_021139bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C588: .word unk_02099F38
	arm_func_end FUN_ov68_0211c4ac

	arm_func_start FUN_ov68_0211c58c
FUN_ov68_0211c58c: ; 0x0211C58C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mvn r1, #0
	mov r6, r0
	mov r4, #0
	bl FUN_ov68_02119fc8
	mov r5, r4
	add r8, r6, #0x30
	mov r7, #0xc
	b _0211C5BC
_0211C5B0:
	mla r0, r5, r7, r8
	bl FUN_ov16_020f33fc
	add r5, r5, #1
_0211C5BC:
	cmp r5, #3
	blt _0211C5B0
	mov r5, #0
	ldr r7, _0211C698 ; =0x02099F38
	b _0211C5EC
_0211C5D0:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x98]
	cmp r1, #0
	beq _0211C5E8
	ldr r0, [r7]
	bl FUN_ov16_021128c4
_0211C5E8:
	add r5, r5, #1
_0211C5EC:
	cmp r5, #0xb
	blt _0211C5D0
	mov r5, #0
	ldr r7, _0211C698 ; =0x02099F38
	b _0211C624
_0211C600:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _0211C620
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x54]
_0211C620:
	add r5, r5, #1
_0211C624:
	cmp r5, #0x11
	blt _0211C600
	add r0, r6, #0x1f4
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r6, #0x1f4
	bl FUN_ov16_020f52c4
	mov r0, r6
	bl FUN_ov68_0211a470
	ldr r5, _0211C698 ; =0x02099F38
	ldr r0, [r5]
	bl FUN_ov16_021123c4
	ldr r1, [r6, #0x214]
	ldr r0, [r5]
	bl FUN_02058ee0
	str r4, [r6, #0x214]
	ldr r1, [r6, #0x218]
	ldr r0, [r5]
	bl FUN_02058ee0
	str r4, [r6, #0x218]
	ldr r1, [r6, #0x21c]
	ldr r0, [r5]
	bl FUN_02058ee0
	str r4, [r6, #0x21c]
	ldr r0, [r5]
	ldr r1, [r6, #0x220]
	bl FUN_02058ee0
	str r4, [r6, #0x220]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C698: .word unk_02099F38
	arm_func_end FUN_ov68_0211c58c

	arm_func_start FUN_ov68_0211c69c
FUN_ov68_0211c69c: ; 0x0211C69C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r2, [r0, #0x230]
	mov r4, #0xc
	cmp r2, #0
	movne r4, #2
	cmp r1, #0
	beq _0211C6F8
	mov r1, #0xa0
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r5, #1
	str r5, [sp, #8]
	mov r1, #0x64
	str r1, [sp, #0xc]
	mov r1, #0xa
	str r1, [sp, #0x10]
	mov r3, r4
	mov r1, #5
	mov r2, #0
	str r5, [sp, #0x14]
	bl FUN_ov68_0211cbe0
_0211C6F8:
	ldr r0, _0211C79C ; =0x02099EB4
	mov r7, #1
	ldr r0, [r0]
	mov r1, r7
	bl FUN_ov16_0210e7d0
	movs r6, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r7
	add r0, r6, #0x3e
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r1, r5
	add r2, r4, #1
	mov r3, r5
	bl FUN_ov16_0210e720
	mov r2, r7
	add r0, r6, #0x42
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x42
	mov r2, r4
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C79C: .word unk_02099EB4
	arm_func_end FUN_ov68_0211c69c

	arm_func_start FUN_ov68_0211c7a0
FUN_ov68_0211c7a0: ; 0x0211C7A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r2, [r0, #0x230]
	mov r4, #0xa
	cmp r2, #0
	movne r4, #8
	cmp r1, #0
	beq _0211C7FC
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r5, #2
	str r5, [sp, #8]
	mov r1, #0x64
	str r1, [sp, #0xc]
	mov r1, #0xa
	str r1, [sp, #0x10]
	mov r3, r4
	mov r1, #6
	mov r2, #0
	str r5, [sp, #0x14]
	bl FUN_ov68_0211cbe0
_0211C7FC:
	ldr r0, _0211C8A0 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl FUN_ov16_0210e7d0
	movs r7, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0
	mov r5, #1
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	add r0, r7, #0x3e
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r6
	add r2, r4, #1
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r5
	add r0, r7, #0x42
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x42
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C8A0: .word unk_02099EB4
	arm_func_end FUN_ov68_0211c7a0

	arm_func_start FUN_ov68_0211c8a4
FUN_ov68_0211c8a4: ; 0x0211C8A4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r3, #0x68
	str r3, [sp]
	mov r1, #0x30
	str r1, [sp, #4]
	mov r1, #0x18
	mov r4, #1
	str r1, [sp, #8]
	mov r2, #0x1e
	ldr r1, _0211C914 ; =0x02099EB4
	str r2, [sp, #0xc]
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, #3
	bl FUN_ov16_0210fba4
	mov r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r0, #0xf]
	strh r4, [r0, #0xc]
	strb r1, [r0, #0x11]
	ldr r2, [r5, #0xb4]
	ldr r1, _0211C918 ; =FUN_ov68_0211f9ac
	strh r2, [r0, #0x34]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0211C914: .word unk_02099EB4
_0211C918: .word FUN_ov68_0211f9ac
	arm_func_end FUN_ov68_0211c8a4

	arm_func_start FUN_ov68_0211c91c
FUN_ov68_0211c91c: ; 0x0211C91C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, #0x70
	str r10, [sp]
	mov r9, #0x60
	str r9, [sp, #4]
	mov r8, #0x10
	mov r11, #0x18
	str r8, [sp, #8]
	mov r7, #0xa
	ldr r4, _0211CA1C ; =0x02099EB4
	str r7, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #1
	mov r3, r11
	mov r2, #4
	bl FUN_ov16_0210fba4
	mov r6, #0x40
	mov r3, r11
	strh r6, [r0, #0xc]
	mov r1, #0
	strb r1, [r0, #0x38]
	ldr r1, _0211CA20 ; = FUN_ov16_0210fa20
	ldr r2, _0211CA24 ; =0x0210FB10
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r1, _0211CA28 ; =FUN_ov68_0211f7e4
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	mov r11, #0x90
	str r11, [sp]
	str r9, [sp, #4]
	str r8, [sp, #8]
	str r7, [sp, #0xc]
	mov r5, #5
	ldr r0, [r4]
	mov r1, #1
	mov r2, r5
	bl FUN_ov16_0210fba4
	mov r7, #0x80
	strh r7, [r0, #0xc]
	str r10, [sp]
	str r9, [sp, #4]
	str r8, [sp, #8]
	str r5, [sp, #0xc]
	mov r10, #0x88
	ldr r0, [r4]
	mov r1, #1
	mov r2, #6
	mov r3, r10
	bl FUN_ov16_0210fba4
	strh r6, [r0, #0xc]
	str r11, [sp]
	str r9, [sp, #4]
	str r8, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #1
	mov r3, r10
	mov r2, #7
	bl FUN_ov16_0210fba4
	strh r7, [r0, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CA1C: .word unk_02099EB4
_0211CA20: .word  FUN_ov16_0210fa20
_0211CA24: .word 0x0210FB10
_0211CA28: .word FUN_ov68_0211f7e4
	arm_func_end FUN_ov68_0211c91c

	arm_func_start FUN_ov68_0211ca2c
FUN_ov68_0211ca2c: ; 0x0211CA2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r4, _0211CBD4 ; =0x02099EB4
	mov r10, r0
	mov r9, #8
	ldr r0, [r4]
	mov r1, r9
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	bne _0211CAB0
	mov r8, #0x90
	str r8, [sp]
	mov r7, #0x30
	str r7, [sp, #4]
	mov r6, #0x18
	mov r11, #1
	str r6, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r11
	mov r2, r9
	mov r3, #0x38
	bl FUN_ov16_0210fba4
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r11
	mov r2, #9
	mov r3, #0x98
	bl FUN_ov16_0210fba4
_0211CAB0:
	ldr r0, [r10, #0x14]
	mov r1, #8
	cmp r0, #5
	mov r5, #0x30
	mov r7, #0x18
	mov r4, #0
	bne _0211CB48
	ldr r9, _0211CBD4 ; =0x02099EB4
	ldr r0, [r9]
	bl FUN_ov16_0210e7d0
	mov r6, #0x68
	mov r2, r6
	mov r3, r5
	mov r1, #0x38
	mov r8, r0
	str r7, [sp]
	bl FUN_ov16_0210e674
	strb r4, [r8, #0x11]
	ldr r1, [r10, #0xc0]
	ldr r0, _0211CBD8 ; =FUN_ov68_0211f870
	strh r1, [r8, #0x34]
	str r0, [r8, #0x28]
	ldr r0, [r9]
	mov r1, #9
	bl FUN_ov16_0210e7d0
	mov r3, r5
	str r7, [sp]
	mov r2, r6
	mov r5, r0
	mov r1, #0x98
	bl FUN_ov16_0210e674
	strb r4, [r5, #0x11]
	ldr r1, [r10, #0xc0]
	ldr r0, _0211CBDC ; =FUN_ov68_0211f90c
	strh r1, [r5, #0x34]
	add sp, sp, #0x10
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CB48:
	ldr r9, _0211CBD4 ; =0x02099EB4
	ldr r0, [r9]
	bl FUN_ov16_0210e7d0
	mov r6, #0x90
	mov r2, r6
	mov r3, r5
	mov r1, #0x38
	mov r8, r0
	str r7, [sp]
	bl FUN_ov16_0210e674
	strb r4, [r8, #0x10]
	strb r4, [r8, #0xf]
	strb r4, [r8, #0x11]
	ldr r1, [r10, #0xb8]
	ldr r0, _0211CBD8 ; =FUN_ov68_0211f870
	strh r1, [r8, #0x34]
	str r0, [r8, #0x28]
	ldr r0, [r9]
	mov r1, #9
	bl FUN_ov16_0210e7d0
	mov r3, r5
	str r7, [sp]
	mov r2, r6
	mov r5, r0
	mov r1, #0x98
	bl FUN_ov16_0210e674
	strb r4, [r5, #0x10]
	strb r4, [r5, #0xf]
	strb r4, [r5, #0x11]
	ldr r1, [r10, #0xb8]
	ldr r0, _0211CBDC ; =FUN_ov68_0211f90c
	strh r1, [r5, #0x34]
	str r0, [r5, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CBD4: .word unk_02099EB4
_0211CBD8: .word FUN_ov68_0211f870
_0211CBDC: .word FUN_ov68_0211f90c
	arm_func_end FUN_ov68_0211ca2c

	arm_func_start FUN_ov68_0211cbe0
FUN_ov68_0211cbe0: ; 0x0211CBE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r4, r1
	mov r8, r0
	mov r7, r2
	mov r6, r3
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0xb
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0x11
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r8, r4, lsl #2
	ldr r0, [r0, #0x98]
	cmp r0, #0
	bne _0211CC3C
	ldr r0, _0211CD2C ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	add r1, r8, r4, lsl #2
	str r0, [r1, #0x98]
_0211CC3C:
	add r0, r8, r4, lsl #2
	ldr r5, [r0, #0x98]
	mov r4, #1
	ldr r9, _0211CD2C ; =0x02099F38
	str r4, [sp]
	ldr r0, [r9]
	mov r1, r5
	mov r2, r4
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r0, r8, r7, lsl #2
	ldr r3, [r0, #0x54]
	ldr r0, [r9]
	mov r1, r5
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r5
	mov r3, r6
	mov r2, r4
	bl FUN_ov16_0211401c
	ldr r0, [r9]
	mov r1, r5
	mov r2, r4
	ldr r3, [sp, #0x2c]
	and r3, r3, #0xff
	bl FUN_ov16_021139bc
	mov r2, r4
	ldr r0, [sp, #0x24]
	mov r1, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r9]
	ldr r3, [sp, #0x20]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [sp, #0x28]
	cmp r0, #1
	beq _0211CCF4
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CCF4:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x28]
	ldr r0, _0211CD30 ; =0x02099EB4
	str r2, [sp]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r0, [r0]
	mov r3, r5
	mov r1, #1
	bl FUN_ov16_0210fbe8
	cmp r0, #0
	ldrneh r1, [sp, #0x34]
	strneh r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CD2C: .word unk_02099F38
_0211CD30: .word unk_02099EB4
	arm_func_end FUN_ov68_0211cbe0

	arm_func_start FUN_ov68_0211cd34
FUN_ov68_0211cd34: ; 0x0211CD34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov68_0211b8d0
	mov r6, #0
	ldr r5, _0211CDB0 ; =0x00003DEF
	ldr r4, _0211CDB4 ; =0x02099F38
	b _0211CD70
_0211CD50:
	cmp r6, #7
	beq _0211CD6C
	add r1, r7, r6, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x98]
	mov r2, r5
	bl FUN_ov16_02114204
_0211CD6C:
	add r6, r6, #1
_0211CD70:
	cmp r6, #0xb
	blt _0211CD50
	ldr r0, _0211CDB8 ; =0x02099EB4
	mov r1, #0xf
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldr r0, [r7, #4]
	add r1, r7, #0xdc
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CDB0: .word 0x00003DEF
_0211CDB4: .word unk_02099F38
_0211CDB8: .word unk_02099EB4
	arm_func_end FUN_ov68_0211cd34

	arm_func_start FUN_ov68_0211cdbc
FUN_ov68_0211cdbc: ; 0x0211CDBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r2, _0211D000 ; =0x02099ED4
	mov r9, r0
	ldr r0, [r2]
	ldr r4, _0211D004 ; =0x02099F38
	mov r8, r1
	mov r6, #1
	mov r10, #2
	mov r7, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r7
	bl FUN_ov68_0211c69c
	mov r0, r9
	mov r1, r7
	bl FUN_ov68_0211c7a0
	mov r0, r9
	bl FUN_ov68_0211e0c4
	ldr r0, [r9, #0x10]
	cmp r0, #5
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, _0211D008 ; =0x02099EB4
	mov r1, r8
	ldr r0, [r5]
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211CED4
_0211CE44: ; jump table
	b _0211CED4 ; case 0
	b _0211CE5C ; case 1
	b _0211CE78 ; case 2
	b _0211CE94 ; case 3
	b _0211CEB4 ; case 4
	b _0211CFF8 ; case 5
_0211CE5C:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r9
	bl FUN_ov68_0211d00c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CE78:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r9
	bl FUN_ov68_0211d478
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CE94:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r9
	mov r2, r7
	bl FUN_ov68_0211d6e0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CEB4:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r9
	mov r2, r6
	bl FUN_ov68_0211d6e0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CED4:
	ldr r0, [r9, #0x14]
	cmp r0, #1
	bne _0211CEF4
	ldr r0, [r4]
	ldr r1, [r9, #0xb4]
_0211CEE8:
	mov r2, #4
	mov r3, #2
	b _0211CFEC
_0211CEF4:
	cmp r0, #7
	bne _0211CF08
	ldr r0, [r4]
	ldr r1, [r9, #0xbc]
	b _0211CEE8
_0211CF08:
	cmp r0, #4
	bne _0211CF78
	ldr r0, [r9, #0x254]
	cmp r0, #8
	bne _0211CF48
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r3, r10
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r3, r10
	mov r2, #7
	bl FUN_ov16_02113f7c
_0211CF48:
	ldr r0, [r9, #0x254]
	cmp r0, #9
	bne _0211CFF0
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r3, r10
	mov r2, #8
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	b _0211CFE4
_0211CF78:
	cmp r0, #5
	bne _0211CFF0
	ldr r0, [r9, #0x254]
	cmp r0, #8
	bne _0211CFB8
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r3, r10
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r3, r10
	mov r2, #7
	bl FUN_ov16_02113f7c
_0211CFB8:
	ldr r0, [r9, #0x254]
	cmp r0, #9
	bne _0211CFF0
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r3, r10
	mov r2, #8
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
_0211CFE4:
	mov r3, r10
	mov r2, #9
_0211CFEC:
	bl FUN_ov16_02113f7c
_0211CFF0:
	mov r0, #0
	str r0, [r9, #0x254]
_0211CFF8:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D000: .word unk_02099ED4
_0211D004: .word unk_02099F38
_0211D008: .word unk_02099EB4
	arm_func_end FUN_ov68_0211cdbc

	arm_func_start FUN_ov68_0211d00c
FUN_ov68_0211d00c: ; 0x0211D00C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r9, _0211D46C ; =0x02099EB4
	mov r6, r1
	ldr r8, _0211D470 ; =0x02099F38
	mov r7, r0
	mov r4, #8
	mov r5, #1
	cmp r6, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, r6, lsl #0x10
	ldr r0, [r9]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldr r0, [r7, #0x14]
	cmp r0, #1
	beq _0211D054
	cmp r0, #7
	bne _0211D098
_0211D054:
	cmp r6, #3
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x14]
	mov r1, #3
	str r1, [r7, #0x254]
	str r5, [sp]
	cmp r0, #1
	mov r2, #4
	ldr r0, [r8]
	mov r3, #2
	bne _0211D08C
	ldr r1, [r7, #0xb4]
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D08C:
	ldr r1, [r7, #0xbc]
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D098:
	cmp r0, #4
	bne _0211D224
	mov r9, #0
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r3, r9
	mov r2, #6
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r2, #7
	mov r3, r5
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r2, r4
	mov r3, #2
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r2, #9
	mov r3, #3
	bl FUN_ov16_0211401c
	cmp r6, #8
	bne _0211D198
	ldr r0, [r7, #0x234]
	mov r5, r8
	mov r9, r4
	cmp r0, #0
	mov r8, #2
	mov r6, #1
	beq _0211D134
	ldr r0, _0211D474 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
_0211D134:
	mov r0, #0
	str r9, [r7, #0x254]
	str r0, [r7, #0x234]
	ldr r0, [r5]
	ldr r1, [r7, #0xb8]
	mov r3, r8
	mov r2, #6
	bl FUN_ov16_02113f7c
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r7, #0xb8]
	mov r3, r8
	mov r2, #7
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r7, #0xb8]
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r7, #0xb8]
	mov r3, r8
	mov r2, #9
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D198:
	cmp r6, #9
	mov r6, r8
	mov r9, #9
	mov r8, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x234]
	cmp r0, #1
	beq _0211D1C4
	ldr r0, _0211D474 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
_0211D1C4:
	str r5, [r7, #0x234]
	str r9, [r7, #0x254]
	ldr r0, [r6]
	ldr r1, [r7, #0xb8]
	mov r3, r8
	mov r2, #6
	bl FUN_ov16_02113f7c
	ldr r0, [r6]
	ldr r1, [r7, #0xb8]
	mov r3, r8
	mov r2, #7
	bl FUN_ov16_02113f7c
	ldr r0, [r6]
	ldr r1, [r7, #0xb8]
	mov r2, #8
	mov r3, r8
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r6]
	ldr r1, [r7, #0xb8]
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D224:
	cmp r0, #5
	bne _0211D3B0
	mov r9, #0
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r3, r9
	mov r2, #6
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r2, #7
	mov r3, r5
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r2, r4
	mov r3, #2
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r2, #9
	mov r3, #3
	bl FUN_ov16_0211401c
	cmp r6, #8
	bne _0211D324
	ldr r0, [r7, #0x234]
	mov r5, r8
	mov r9, r4
	cmp r0, #0
	mov r8, #2
	mov r6, #1
	beq _0211D2C0
	ldr r0, _0211D474 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
_0211D2C0:
	mov r0, #0
	str r9, [r7, #0x254]
	str r0, [r7, #0x234]
	ldr r0, [r5]
	ldr r1, [r7, #0xc0]
	mov r3, r8
	mov r2, #6
	bl FUN_ov16_02113f7c
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r7, #0xc0]
	mov r3, r8
	mov r2, #7
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r7, #0xc0]
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r7, #0xc0]
	mov r3, r8
	mov r2, #9
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D324:
	cmp r6, #9
	mov r6, r8
	mov r9, #9
	mov r8, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x234]
	cmp r0, #1
	beq _0211D350
	ldr r0, _0211D474 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
_0211D350:
	str r5, [r7, #0x234]
	str r9, [r7, #0x254]
	ldr r0, [r6]
	ldr r1, [r7, #0xc0]
	mov r3, r8
	mov r2, #6
	bl FUN_ov16_02113f7c
	ldr r0, [r6]
	ldr r1, [r7, #0xc0]
	mov r3, r8
	mov r2, #7
	bl FUN_ov16_02113f7c
	ldr r0, [r6]
	ldr r1, [r7, #0xc0]
	mov r2, #8
	mov r3, r8
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r6]
	ldr r1, [r7, #0xc0]
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D3B0:
	cmp r6, #4
	beq _0211D3C0
	cmp r6, #6
	bne _0211D408
_0211D3C0:
	ldr r0, [r7, #0x230]
	cmp r0, #1
	cmpeq r6, #4
	bne _0211D3DC
	mov r0, r7
	bl FUN_ov68_0211ed80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D3DC:
	ldr r0, [r7, #0x230]
	add r0, r7, r0, lsl #2
	ldr r0, [r0, #0x228]
	cmp r0, #0
	ldr r0, [r9]
	movne r1, #0x40
	addeq r0, r0, #0xf00
	streqh r5, [r0, #0x38]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D408:
	cmp r6, #5
	beq _0211D418
	cmp r6, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D418:
	ldr r0, [r7, #0x230]
	cmp r0, #1
	cmpeq r6, #5
	bne _0211D440
	ldr r0, [r7, #0x208]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl FUN_ov68_0211ed80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D440:
	ldr r0, [r7, #0x230]
	add r0, r7, r0, lsl #2
	ldr r0, [r0, #0x228]
	cmp r0, #1
	ldr r0, [r9]
	movne r1, #0x80
	addeq r0, r0, #0xf00
	streqh r5, [r0, #0x38]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D46C: .word unk_02099EB4
_0211D470: .word unk_02099F38
_0211D474: .word unk_0209AC44
	arm_func_end FUN_ov68_0211d00c

	arm_func_start FUN_ov68_0211d478
FUN_ov68_0211d478: ; 0x0211D478
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r1
	cmp r6, #0
	ldr r8, _0211D6D8 ; =0x02099F38
	mov r7, r0
	mov r5, #1
	mov r4, #2
	addle sp, sp, #4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211D6DC ; =0x02099EB4
	mov r1, r6, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldr r0, [r7, #0x14]
	cmp r0, #1
	beq _0211D4C8
	cmp r0, #7
	bne _0211D510
_0211D4C8:
	cmp r6, #3
	bne _0211D684
	ldr r0, [r7, #0x14]
	mov r2, #4
	cmp r0, #1
	ldr r0, [r8]
	mov r3, #2
	bne _0211D4FC
	ldr r1, [r7, #0xb4]
	bl FUN_ov16_02113f7c
	mov r0, r7
	bl FUN_ov68_0211ee44
	b _0211D684
_0211D4FC:
	ldr r1, [r7, #0xbc]
	bl FUN_ov16_02113f7c
	mov r0, r7
	bl FUN_ov68_0211f2bc
	b _0211D684
_0211D510:
	cmp r0, #4
	bne _0211D5CC
	cmp r6, #8
	bne _0211D580
	str r5, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r3, r4
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r2, #8
	mov r3, r4
	bl FUN_ov16_02113f7c
_0211D560:
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113f7c
	mov r0, r7
	bl FUN_ov68_0211ef08
	b _0211D684
_0211D580:
	cmp r6, #9
	bne _0211D684
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r3, r4
	mov r2, #6
	bl FUN_ov16_02113f7c
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xb8]
	mov r2, #8
	mov r3, r4
	bl FUN_ov16_02113ec0
	b _0211D560
_0211D5CC:
	cmp r0, #5
	bne _0211D684
	cmp r6, #8
	bne _0211D620
	str r5, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r3, r4
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r2, #8
	mov r3, r4
	bl FUN_ov16_02113f7c
	b _0211D668
_0211D620:
	cmp r6, #9
	bne _0211D684
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r3, r4
	mov r2, #6
	bl FUN_ov16_02113f7c
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r2, #8
	mov r3, r4
	bl FUN_ov16_02113ec0
_0211D668:
	ldr r0, [r8]
	ldr r1, [r7, #0xc0]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113f7c
	mov r0, r7
	bl FUN_ov68_0211f378
_0211D684:
	cmp r6, #1
	bne _0211D6AC
	ldr r0, _0211D6DC ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	add sp, sp, #4
	add r0, r0, #0xf00
	strh r5, [r0, #0x38]
	str r1, [r7, #0x25c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211D6AC:
	cmp r6, #2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211D6DC ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r4, [r0, #0x38]
	str r1, [r7, #0x25c]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211D6D8: .word unk_02099F38
_0211D6DC: .word unk_02099EB4
	arm_func_end FUN_ov68_0211d478

	arm_func_start FUN_ov68_0211d6e0
FUN_ov68_0211d6e0: ; 0x0211D6E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r7, _0211DC50 ; =0x02099F38
	cmp r1, #0
	mov r6, r0
	mov r9, r2
	mov r5, #1
	mov r4, #2
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r8, _0211DC54 ; =0x02099EB4
	add r1, sp, #8
	ldr r0, [r8]
	bl FUN_ov16_0210f48c
	mov r0, #0
	str r0, [sp]
	ldrsh r1, [sp, #8]
	ldrsh r2, [sp, #0xa]
	ldr r0, [r8]
	add r3, sp, #4
	bl FUN_ov16_0210ecb8
	cmp r9, #0
	ldr r0, [r6, #0x14]
	bne _0211DAFC
	cmp r0, #1
	bne _0211D79C
	ldr r0, [r6, #0x254]
	cmp r0, #3
	bne _0211D780
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0211D780
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb4]
	mov r2, #4
	mov r3, r4
	bl FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D780:
	ldr r0, [r7]
	ldr r1, [r6, #0xb4]
	mov r2, #4
	mov r3, #2
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D79C:
	cmp r0, #7
	bne _0211D7F8
	ldr r0, [r6, #0x254]
	cmp r0, #3
	bne _0211D7DC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0211D7DC
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xbc]
	mov r2, #4
	mov r3, r4
	bl FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D7DC:
	ldr r0, [r7]
	ldr r1, [r6, #0xbc]
	mov r2, #4
	mov r3, #2
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D7F8:
	cmp r0, #4
	bne _0211D978
	ldr r1, [sp, #4]
	ldr r0, [r6, #0x254]
	cmp r1, #0
	bne _0211D888
	cmp r0, #8
	bne _0211D844
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
_0211D844:
	ldr r0, [r6, #0x254]
	cmp r0, #9
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #8
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D888:
	cmp r0, #8
	bne _0211D8F4
	ldrh r0, [r1, #8]
	mov r2, #6
	cmp r0, #8
	bne _0211D8CC
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113ec0
	b _0211D8F4
_0211D8CC:
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
_0211D8F4:
	ldr r0, [r6, #0x254]
	cmp r0, #9
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #4]
	mov r2, #8
	ldrh r0, [r0, #8]
	cmp r0, #9
	bne _0211D948
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D948:
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D978:
	cmp r0, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [sp, #4]
	ldr r0, [r6, #0x254]
	cmp r1, #0
	bne _0211DA0C
	cmp r0, #8
	bne _0211D9C8
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
_0211D9C8:
	ldr r0, [r6, #0x254]
	cmp r0, #9
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #8
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211DA0C:
	cmp r0, #8
	bne _0211DA78
	ldrh r0, [r1, #8]
	mov r2, #6
	cmp r0, #8
	bne _0211DA50
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113ec0
	b _0211DA78
_0211DA50:
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
_0211DA78:
	ldr r0, [r6, #0x254]
	cmp r0, #9
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #4]
	mov r2, #8
	ldrh r0, [r0, #8]
	cmp r0, #9
	bne _0211DACC
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211DACC:
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211DAFC:
	cmp r0, #1
	bne _0211DB20
	ldr r0, [r7]
	ldr r1, [r6, #0xbc]
	mov r2, #4
	mov r3, r4
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211DB20:
	cmp r0, #7
	bne _0211DB44
	ldr r0, [r7]
	ldr r1, [r6, #0xb4]
	mov r2, #4
	mov r3, r4
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211DB44:
	cmp r0, #4
	bne _0211DBC8
	ldr r0, [r6, #0x254]
	cmp r0, #8
	bne _0211DB84
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
_0211DB84:
	ldr r0, [r6, #0x254]
	cmp r0, #9
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #8
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xb8]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211DBC8:
	cmp r0, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6, #0x254]
	cmp r0, #8
	bne _0211DC0C
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_02113f7c
_0211DC0C:
	ldr r0, [r6, #0x254]
	cmp r0, #9
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #8
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0xc0]
	mov r3, r4
	mov r2, #9
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211DC50: .word unk_02099F38
_0211DC54: .word unk_02099EB4
	arm_func_end FUN_ov68_0211d6e0

	arm_func_start FUN_ov68_0211dc58
FUN_ov68_0211dc58: ; 0x0211DC58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	ldr r0, [r9, #0x10]
	ldr r4, _0211E06C ; =0x02099F38
	cmp r0, #5
	mov r8, r1
	mov r7, #1
	mov r10, #8
	mov r6, #2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211E070 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #0x258]
	cmp r0, #0
	addgt sp, sp, #4
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, _0211E074 ; =0x02099EB4
	ldr r0, [r5]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211DCE4
	ldr r0, [r5]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211DCE4:
	mov r0, r9
	mov r1, r8
	bl FUN_ov68_0211e07c
	ldr r0, [r9, #0x14]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211E064
_0211DD00: ; jump table
	b _0211E064 ; case 0
	b _0211DD20 ; case 1
	b _0211E064 ; case 2
	b _0211DD60 ; case 3
	b _0211DDC4 ; case 4
	b _0211DF38 ; case 5
	b _0211E064 ; case 6
	b _0211DEF8 ; case 7
_0211DD20:
	tst r8, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, #3
	bl FUN_ov68_0211f858
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xb4]
	mov r2, #4
	mov r3, #2
	bl FUN_ov16_02113ec0
	mov r0, r9
	bl FUN_ov68_0211ee44
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DD60:
	tst r8, #1
	beq _0211DD78
	mov r0, r9
	bl FUN_ov68_0211e928
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DD78:
	tst r8, #2
	beq _0211DD90
	mov r0, r9
	bl FUN_ov68_0211ed80
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DD90:
	tst r8, #0x40
	beq _0211DDA8
	mov r0, r9
	bl FUN_ov68_0211e6fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DDA8:
	tst r8, #0x80
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	bl FUN_ov68_0211e808
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DDC4:
	tst r8, #1
	beq _0211DE04
	mov r0, r9
	bl FUN_ov68_0211ef08
	ldr r0, [r9, #0x234]
	cmp r0, #0
	mov r0, r9
	bne _0211DDF4
	mov r1, #8
	bl FUN_ov68_0211f858
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DDF4:
	mov r1, #9
	bl FUN_ov68_0211f858
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DE04:
	tst r8, #2
	beq _0211DE58
	str r7, [r9, #0x234]
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r3, r6
	mov r2, #6
	bl FUN_ov16_02113f7c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r3, r6
	mov r2, #8
	bl FUN_ov16_02113ec0
	mov r0, r9
	bl FUN_ov68_0211ef08
	mov r0, r9
	mov r1, #9
	bl FUN_ov68_0211f858
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DE58:
	tst r8, #0x20
	beq _0211DEA8
	mov r0, #0
	str r0, [r9, #0x234]
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r3, r6
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r2, r10
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, _0211E078 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DEA8:
	tst r8, #0x10
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r7, [r9, #0x234]
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r3, r6
	mov r2, #6
	bl FUN_ov16_02113f7c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xb8]
	mov r2, r10
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, _0211E078 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DEF8:
	tst r8, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, #3
	bl FUN_ov68_0211f858
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xbc]
	mov r2, #4
	mov r3, #2
	bl FUN_ov16_02113ec0
	mov r0, r9
	bl FUN_ov68_0211f2bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DF38:
	tst r8, #1
	beq _0211DF78
	mov r0, r9
	bl FUN_ov68_0211f378
	ldr r0, [r9, #0x234]
	cmp r0, #0
	mov r0, r9
	bne _0211DF68
	mov r1, #8
	bl FUN_ov68_0211f858
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DF68:
	mov r1, #9
	bl FUN_ov68_0211f858
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DF78:
	tst r8, #2
	beq _0211DFCC
	str r7, [r9, #0x234]
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r3, r6
	mov r2, #6
	bl FUN_ov16_02113f7c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r3, r6
	mov r2, #8
	bl FUN_ov16_02113ec0
	mov r0, r9
	bl FUN_ov68_0211f378
	mov r0, r9
	mov r1, #9
	bl FUN_ov68_0211f858
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DFCC:
	tst r8, #0x20
	beq _0211E01C
	mov r0, #0
	str r0, [r9, #0x234]
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r3, r6
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r2, r10
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, _0211E078 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E01C:
	tst r8, #0x10
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r7, [r9, #0x234]
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r3, r6
	mov r2, #6
	bl FUN_ov16_02113f7c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xc0]
	mov r2, r10
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, _0211E078 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
_0211E064:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E06C: .word unk_02099F38
_0211E070: .word unk_02099ED4
_0211E074: .word unk_02099EB4
_0211E078: .word unk_0209AC44
	arm_func_end FUN_ov68_0211dc58

	arm_func_start FUN_ov68_0211e07c
FUN_ov68_0211e07c: ; 0x0211E07C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211E0C0 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r4]
	add r2, sp, #0
	bl FUN_ov16_0210ec34
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x25c]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r5, #0x25c]
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_ov16_0210ef88
	ldmfd sp!, {r3, r4, r5, pc}
_0211E0C0: .word unk_02099EB4
	arm_func_end FUN_ov68_0211e07c

	arm_func_start FUN_ov68_0211e0c4
FUN_ov68_0211e0c4: ; 0x0211E0C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	ldr r4, _0211E104 ; =0x02099EB4
	b _0211E0F8
_0211E0D4:
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_0210e7d0
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov16_0210ee80
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_0211E0F8:
	cmp r5, #3
	blo _0211E0D4
	ldmfd sp!, {r3, r4, r5, pc}
_0211E104: .word unk_02099EB4
	arm_func_end FUN_ov68_0211e0c4

	arm_func_start FUN_ov68_0211e108
FUN_ov68_0211e108: ; 0x0211E108
	ldr r3, _0211E140 ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211E128
	cmp r1, #0
	cmpeq r2, #0
	movne r0, #0
	bxne lr
_0211E128:
	mov r3, #6
	str r3, [r0, #0x10]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	mov r0, #1
	bx lr
_0211E140: .word unk_0209A454
	arm_func_end FUN_ov68_0211e108

	arm_func_start FUN_ov68_0211e144
FUN_ov68_0211e144: ; 0x0211E144
	ldr r2, _0211E154 ; =0x0211FD14
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211E154: .word ov68_0211FD14
	arm_func_end FUN_ov68_0211e144

	arm_func_start FUN_ov68_0211e158
FUN_ov68_0211e158: ; 0x0211E158
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _0211E2F0 ; =0x02099EB4
	mov r9, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e980
	ldr r0, _0211E2F4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r8, #0
	mov r1, r8
	add r0, r9, #0x30
	mov r2, #0x24
	str r8, [r9, #0x214]
	str r8, [r9, #0x218]
	str r8, [r9, #0x21c]
	str r8, [r9, #0x220]
	str r8, [r9, #0x10]
	str r8, [r9, #0x14]
	bl MI_CpuFill8
	mov r4, #0x18
	mov r1, r8
	add r0, r9, #0x18
	mov r2, r4
	bl MI_CpuFill8
	add r0, r9, #0x54
	mov r1, r8
	mov r2, #0x44
	bl MI_CpuFill8
	add r0, r9, #0x98
	mov r1, r8
	mov r2, #0x2c
	bl MI_CpuFill8
	mov r2, r4
	add r0, r9, #0xc4
	mov r1, r8
	bl MI_CpuFill8
	add r0, r9, #0x1f4
	mov r1, r8
	mov r2, #8
	bl MI_CpuFill8
	add r0, r9, #0x1f4
	mov r7, #4
	mov r1, r7
	bl FUN_ov16_020f5278
	add r0, r9, #0xdc
	mov r1, r8
	mov r2, #0x118
	bl MI_CpuFill8
	ldr r0, _0211E2F8 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r6, _0211E2FC ; =0x0209BA20
	mov r1, r8
	mov r0, r6
	bl FUN_020739f4
	str r0, [r9, #0x1fc]
	mov r0, r6
	mov r5, #1
	mov r1, r5
	bl FUN_020739f4
	str r0, [r9, #0x200]
	ldr r0, [r9, #0x1fc]
	mov r1, r8
	bl FUN_ov16_020efa9c
	mov r4, r0
	mov r1, r7
	bl FUN_0206cdf8
	str r0, [r9, #0x204]
	mov r0, r4
	mov r4, #5
	mov r1, r4
	bl FUN_0206cdf8
	str r0, [r9, #0x208]
	ldr r0, [r9, #0x200]
	mov r1, r8
	bl FUN_ov16_020efa9c
	mov r1, r7
	mov r7, r0
	bl FUN_0206cdf8
	str r0, [r9, #0x20c]
	mov r0, r7
	mov r1, r4
	bl FUN_0206cdf8
	str r0, [r9, #0x210]
	str r8, [r9, #0x228]
	str r8, [r9, #0x22c]
	str r8, [r9, #0x230]
	str r8, [r9, #0x234]
	str r8, [r9, #0x254]
	mov r0, r9
	bl FUN_ov68_0211f578
	str r8, [r9, #0x250]
	mov r0, r6
	ldr r2, [r9, #0x238]
	ldr r1, [r9, #0x204]
	str r2, [r9, #0x1e4]
	str r1, [r9, #0x1e8]
	bl FUN_0207181c
	str r5, [r9, #0x25c]
	sub r0, r4, #6
	str r0, [r9, #0x258]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E2F0: .word unk_02099EB4
_0211E2F4: .word unk_02099ED4
_0211E2F8: .word unk_02099F38
_0211E2FC: .word unk_0209BA20
	arm_func_end FUN_ov68_0211e158

	arm_func_start FUN_ov68_0211e300
FUN_ov68_0211e300: ; 0x0211E300
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	mov r6, #1
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211E520
_0211E31C: ; jump table
	b _0211E33C ; case 0
	b _0211E34C ; case 1
	b _0211E3A4 ; case 2
	b _0211E444 ; case 3
	b _0211E474 ; case 4
	b _0211E488 ; case 5
	b _0211E490 ; case 6
	b _0211E4B4 ; case 7
_0211E33C:
	bl FUN_ov68_02119f00
	mov r0, r4
	bl FUN_ov68_02119f2c
	str r6, [r4, #0x10]
_0211E34C:
	mov r5, #2
	mov r1, r5
	add r0, r4, #0x18
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211E520
	add r0, r4, #0x30
	mov r1, #3
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211E520
	mov r0, r4
	bl FUN_ov68_02119f68
	mov r0, r4
	mov r1, #0
	bl FUN_ov68_0211a124
	mov r0, r4
	mov r1, #1
	bl FUN_ov68_0211a124
	mov r0, r4
	bl FUN_ov68_0211a528
	str r5, [r4, #0x10]
_0211E3A4:
	mov r0, r4
	mov r1, #0
	bl FUN_ov68_0211a2e4
	cmp r0, #0
	beq _0211E520
	mov r0, r4
	mov r1, #1
	bl FUN_ov68_0211a2e4
	cmp r0, #0
	beq _0211E520
	mov r0, r4
	bl FUN_ov68_0211a070
	cmp r0, #0
	beq _0211E520
	add r0, r4, #0x1f4
	bl FUN_ov16_020f5868
	cmp r0, #0
	bne _0211E520
	mov r0, r4
	bl FUN_ov68_0211a0c0
	mov r0, r4
	bl FUN_ov68_0211a588
	mov r0, r4
	bl FUN_ov68_0211a650
	mov r0, r4
	bl FUN_ov68_0211a808
	mov r0, r4
	bl FUN_ov68_0211ae84
	mov r0, r4
	bl FUN_ov68_0211b4f8
	mov r0, r4
	bl FUN_ov68_0211b6a0
	mov r0, r4
	bl FUN_ov68_0211bfe4
	mov r0, r4
	bl FUN_ov68_0211c268
	mov r0, r4
	bl FUN_ov68_0211b914
	mov r0, #3
	str r0, [r4, #0x10]
_0211E444:
	mov r0, r4
	mov r1, r6
	bl FUN_ov68_0211c69c
	mov r0, r4
	mov r1, r6
	bl FUN_ov68_0211c7a0
	mov r0, r4
	bl FUN_ov68_0211c8a4
	mov r0, r4
	bl FUN_ov68_0211c91c
	mov r0, #4
	str r0, [r4, #0x10]
_0211E474:
	ldr r0, [r4, #0x250]
	cmp r0, #0
	movne r0, #5
	strne r0, [r4, #0x10]
	b _0211E520
_0211E488:
	bl FUN_ov68_0211e5bc
	b _0211E520
_0211E490:
	ldr r0, _0211E5B0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211E520
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #7
	str r0, [r4, #0x10]
_0211E4B4:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211E520
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r5, [r4, #4]
	cmp r1, r0
	cmpeq r1, #0
	mov r1, #0
	bne _0211E500
	mov r0, r5
	bl FUN_02041f2c
	mov r0, r5
	mov r1, #1
	bl FUN_02041f2c
	b _0211E520
_0211E500:
	ldr r6, [r4, #0xc]
	ldr r2, [r4, #8]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r6
	mov r1, #1
	bl FUN_02041eac
_0211E520:
	ldr r0, _0211E5B0 ; =0x02099ED4
	ldr r5, _0211E5B4 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211E558
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211E564
_0211E558:
	bl _ffltu
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211E564:
	bl FUN_0201fdac
	ldr r2, _0211E5B8 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r0, [r4, #0x258]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r4, #0x258]
	ldmgtfd sp!, {r4, r5, r6, pc}
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #4]
	add r1, r4, #0xdc
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mvn r0, #0
	str r0, [r4, #0x258]
	ldmfd sp!, {r4, r5, r6, pc}
_0211E5B0: .word unk_02099ED4
_0211E5B4: .word unk_0209A110
_0211E5B8: .word unk_02099F58
	arm_func_end FUN_ov68_0211e300

	arm_func_start FUN_ov68_0211e5bc
FUN_ov68_0211e5bc: ; 0x0211E5BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x14]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211E5D4: ; jump table
	b _0211E5FC ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211E60C ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _0211E62C ; case 6
	ldmfd sp!, {r4, pc} ; case 7
	b _0211E660 ; case 8
	b _0211E680 ; case 9
_0211E5FC:
	bl FUN_ov68_0211cd34
	mov r0, #1
	str r0, [r4, #0x14]
	ldmfd sp!, {r4, pc}
_0211E60C:
	ldr r0, _0211E6B4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov68_0211ee64
	ldmfd sp!, {r4, pc}
_0211E62C:
	ldr r0, _0211E6B4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x234]
	cmp r0, #0
	mov r0, r4
	bne _0211E658
	bl FUN_ov68_0211ef44
	ldmfd sp!, {r4, pc}
_0211E658:
	bl FUN_ov68_0211eff4
	ldmfd sp!, {r4, pc}
_0211E660:
	ldr r0, _0211E6B4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov68_0211f2dc
	ldmfd sp!, {r4, pc}
_0211E680:
	ldr r0, _0211E6B4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x234]
	cmp r0, #0
	mov r0, r4
	bne _0211E6AC
	bl FUN_ov68_0211f3b4
	ldmfd sp!, {r4, pc}
_0211E6AC:
	bl FUN_ov68_0211f4c8
	ldmfd sp!, {r4, pc}
_0211E6B4: .word unk_02099ED4
	arm_func_end FUN_ov68_0211e5bc

	arm_func_start FUN_ov68_0211e6b8
FUN_ov68_0211e6b8: ; 0x0211E6B8
	bx lr
	arm_func_end FUN_ov68_0211e6b8

	arm_func_start FUN_ov68_0211e6bc
FUN_ov68_0211e6bc: ; 0x0211E6BC
	stmfd sp!, {r4, lr}
	ldr r1, _0211E6F0 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211E6F4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov68_0211c58c
	ldr r0, _0211E6F8 ; =0x0209BA20
	bl FUN_02071934
	ldmfd sp!, {r4, pc}
_0211E6F0: .word unk_02099EB4
_0211E6F4: .word unk_02099ED4
_0211E6F8: .word unk_0209BA20
	arm_func_end FUN_ov68_0211e6bc

	arm_func_start FUN_ov68_0211e6fc
FUN_ov68_0211e6fc: ; 0x0211E6FC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r1, [r4, #0x230]
	add r0, r4, r1, lsl #2
	ldr r0, [r0, #0x228]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	cmp r1, #0
	mov r2, #2
	bne _0211E77C
	mov r5, #0
	mov r0, #1
	stmia sp, {r0, r5}
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x68
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, _0211E800 ; =0x02099ED4
	ldr r3, [r4, #0xa4]
	ldr r0, [r0]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_0210e29c
	ldr r0, [r4, #0x238]
	str r5, [r4, #0x1f0]
	str r0, [r4, #0x1e4]
	b _0211E7B8
_0211E77C:
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	mov r0, #0x68
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211E800 ; =0x02099ED4
	ldr r3, [r4, #0xa4]
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_0210e29c
_0211E7B8:
	ldr r1, [r4, #0x230]
	ldr r0, [r4, #4]
	add r1, r4, r1, lsl #3
	ldr r2, [r1, #0x204]
	add r1, r4, #0xdc
	str r2, [r4, #0x1e8]
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, _0211E804 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r4, #0x230]
	mov r1, #0
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x228]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_0211E800: .word unk_02099ED4
_0211E804: .word unk_0209AC44
	arm_func_end FUN_ov68_0211e6fc

	arm_func_start FUN_ov68_0211e808
FUN_ov68_0211e808: ; 0x0211E808
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r1, [r4, #0x230]
	add r0, r4, r1, lsl #2
	ldr r0, [r0, #0x228]
	cmp r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	cmp r1, #0
	mov r2, #2
	bne _0211E89C
	add r0, r4, r1, lsl #3
	ldr r0, [r0, #0x208]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r5, #1
	mov r1, #0
	str r5, [sp]
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x88
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211E920 ; =0x02099ED4
	ldr r3, [r4, #0xa4]
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_0210e29c
	ldr r0, [r4, #0x23c]
	str r5, [r4, #0x1f0]
	str r0, [r4, #0x1e4]
	b _0211E8D8
_0211E89C:
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	mov r0, #0x88
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211E920 ; =0x02099ED4
	ldr r3, [r4, #0xa4]
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_0210e29c
_0211E8D8:
	ldr r1, [r4, #0x230]
	ldr r0, [r4, #4]
	add r1, r4, r1, lsl #3
	ldr r2, [r1, #0x208]
	add r1, r4, #0xdc
	str r2, [r4, #0x1e8]
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, _0211E924 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r4, #0x230]
	mov r1, #1
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x228]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_0211E920: .word unk_02099ED4
_0211E924: .word unk_0209AC44
	arm_func_end FUN_ov68_0211e808

	arm_func_start FUN_ov68_0211e928
FUN_ov68_0211e928: ; 0x0211E928
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r1, [r8, #0x230]
	ldr r4, _0211ED68 ; =0x02099F38
	cmp r1, #0
	mov r5, #1
	mov r6, #2
	bne _0211EAA8
	ldr r0, [r8, #0x1fc]
	mov r1, #0
	bl FUN_ov16_020efa9c
	ldr r7, [r8, #0x228]
	mov r1, #4
	bl FUN_0206cdf8
	cmp r7, #0
	cmpeq r0, #0
	bne _0211E984
	ldr r0, _0211ED6C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E984:
	mov r0, r8
	bl FUN_ov68_0211f108
	cmp r0, #0
	beq _0211E9AC
	mov r1, #0
	mov r0, r8
	str r1, [r8, #0x24c]
	bl FUN_ov68_0211f1f8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E9AC:
	mov r0, r8
	bl FUN_ov68_0211f1b0
	cmp r0, #0
	mov r0, r8
	bne _0211E9D0
	str r6, [r8, #0x24c]
	bl FUN_ov68_0211f1f8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E9D0:
	bl FUN_ov68_0211f164
	cmp r0, #0
	bne _0211E9F4
	mov r1, #3
	mov r0, r8
	str r1, [r8, #0x24c]
	bl FUN_ov68_0211f1f8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E9F4:
	mov r0, r8
	bl FUN_ov68_0211f0d8
	cmp r0, #0
	bne _0211EA18
	mov r0, r8
	str r5, [r8, #0x24c]
	bl FUN_ov68_0211f1f8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211EA18:
	str r5, [r8, #0x230]
	ldr r0, [r4]
	ldr r1, [r8, #0xa0]
	rsb r2, r5, #0x8000
	bl FUN_ov16_02114204
	ldr r0, _0211ED70 ; =0x02099EB4
	mov r1, #3
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
	str r5, [sp]
	mov r2, #2
	ldr r0, [r4]
	ldr r1, [r8, #0xa4]
	mov r3, r2
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r8, #0xa4]
	mov r2, r5
	mov r3, #0xf
	bl FUN_ov16_02113a80
	ldr r1, [r8, #0x230]
	ldr r0, [r8, #0x22c]
	add r1, r8, r1, lsl #3
	add r0, r1, r0, lsl #2
	ldr r1, [r0, #0x204]
	ldr r0, [r8, #4]
	str r1, [r8, #0x1e8]
	ldr r2, [r0]
	add r1, r8, #0xdc
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, _0211ED6C ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211EAA8:
	mov r1, #4
	str r1, [r8, #0x14]
	bl FUN_ov68_0211ca2c
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_021142fc
	ldr r0, [r8, #0x22c]
	add r0, r8, r0, lsl #2
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	bne _0211EAE4
	ldr r1, _0211ED74 ; =0x0211FED0
	b _0211EAE8
_0211EAE4:
	ldr r1, _0211ED78 ; =0x0211FEE8
_0211EAE8:
	mov r0, r8
	bl FUN_ov68_0211bfa4
	mov r9, #0
	ldr r7, _0211ED7C ; =0x00003DEF
	b _0211EB1C
_0211EAFC:
	cmp r9, #8
	beq _0211EB18
	add r1, r8, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x98]
	mov r2, r7
	bl FUN_ov16_02114204
_0211EB18:
	add r9, r9, #1
_0211EB1C:
	cmp r9, #0xb
	blt _0211EAFC
	ldr r0, _0211ED70 ; =0x02099EB4
	mov r1, #0xf
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
	ldr r0, [r8, #0x228]
	cmp r0, #0
	bne _0211EB70
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_02113f7c
	b _0211EB9C
_0211EB70:
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_02113ec0
_0211EB9C:
	ldr r0, [r8, #0x22c]
	mov r2, #4
	cmp r0, #0
	bne _0211EBD8
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r3, r6
	mov r2, #5
	bl FUN_ov16_02113f7c
	b _0211EC00
_0211EBD8:
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r3, r6
	bl FUN_ov16_02113f7c
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r3, r6
	mov r2, #5
	bl FUN_ov16_02113ec0
_0211EC00:
	mov r0, #0
	str r0, [r8, #0x234]
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r3, r6
	mov r2, #6
	bl FUN_ov16_02113ec0
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r3, r6
	mov r2, #7
	bl FUN_ov16_02113f7c
	mov r7, #8
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	mov r9, #9
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r2, r9
	mov r3, r6
	bl FUN_ov16_02113f7c
	mov r1, r7
	ldr r7, _0211ED70 ; =0x02099EB4
	ldr r0, [r7]
	bl FUN_ov16_0210e7d0
	mov r1, r9
	mov r9, #0x14
	strh r9, [r0, #0x32]
	ldr r0, [r7]
	bl FUN_ov16_0210e7d0
	strh r9, [r0, #0x32]
	ldr r0, [r8, #0x228]
	ldr r10, [r8, #0x240]
	cmp r0, #0
	bne _0211ECFC
	ldr r7, _0211ED68 ; =0x02099F38
	mov r9, #1
	b _0211ECC4
_0211ECA8:
	str r9, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r2, r10
	mov r3, r6
	bl FUN_ov16_02113ec0
	add r10, r10, #1
_0211ECC4:
	ldr r5, [r8, #0x244]
	cmp r10, r5
	blt _0211ECA8
	b _0211ECEC
_0211ECD4:
	ldr r0, [r7]
	ldr r1, [r8, #0xb8]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_02113f7c
	add r5, r5, #1
_0211ECEC:
	ldr r0, [r8, #0x248]
	cmp r5, r0
	blt _0211ECD4
	b _0211ED54
_0211ECFC:
	ldr r9, _0211ED68 ; =0x02099F38
	b _0211ED1C
_0211ED04:
	ldr r0, [r4]
	ldr r1, [r8, #0xb8]
	mov r2, r10
	mov r3, r6
	bl FUN_ov16_02113f7c
	add r10, r10, #1
_0211ED1C:
	ldr r7, [r8, #0x244]
	cmp r10, r7
	blt _0211ED04
	b _0211ED48
_0211ED2C:
	str r5, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0xb8]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	add r7, r7, #1
_0211ED48:
	ldr r0, [r8, #0x248]
	cmp r7, r0
	blt _0211ED2C
_0211ED54:
	ldr r0, _0211ED6C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211ED68: .word unk_02099F38
_0211ED6C: .word unk_0209AC44
_0211ED70: .word unk_02099EB4
_0211ED74: .word ov68_0211FED0
_0211ED78: .word ov68_0211FEE8
_0211ED7C: .word 0x00003DEF
	arm_func_end FUN_ov68_0211e928

	arm_func_start FUN_ov68_0211ed80
FUN_ov68_0211ed80: ; 0x0211ED80
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x230]
	cmp r1, #0
	bne _0211EDA4
	mov r1, #0x6e
	mov r2, #0x5d
	bl FUN_ov68_0211e108
	b _0211EE24
_0211EDA4:
	mov r0, #0
	ldr r5, _0211EE34 ; =0x02099F38
	str r0, [r4, #0x230]
	ldr r0, [r5]
	ldr r1, [r4, #0xa0]
	ldr r2, _0211EE38 ; =0x00003DEF
	bl FUN_ov16_02114204
	ldr r0, _0211EE3C ; =0x02099EB4
	mov r1, #8
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
	mov r2, #2
	ldr r0, [r5]
	ldr r1, [r4, #0xa4]
	mov r3, r2
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r4, #0xa4]
	mov r2, #1
	mov r3, #0x1f
	bl FUN_ov16_02113a80
	ldr r1, [r4, #0x230]
	ldr r0, [r4, #0x228]
	add r1, r4, r1, lsl #3
	add r0, r1, r0, lsl #2
	ldr r1, [r0, #0x204]
	ldr r0, [r4, #4]
	str r1, [r4, #0x1e8]
	add r1, r4, #0xdc
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
_0211EE24:
	ldr r0, _0211EE40 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211EE34: .word unk_02099F38
_0211EE38: .word 0x00003DEF
_0211EE3C: .word unk_02099EB4
_0211EE40: .word unk_0209AC44
	arm_func_end FUN_ov68_0211ed80

	arm_func_start FUN_ov68_0211ee44
FUN_ov68_0211ee44: ; 0x0211EE44
	mov r1, #2
	str r1, [r0, #0x14]
	ldr r0, _0211EE5C ; =0x0209AC44
	ldr r12, _0211EE60 ; =FUN_0202cf6c
	mov r1, #1
	bx r12
_0211EE5C: .word unk_0209AC44
_0211EE60: .word FUN_0202cf6c
	arm_func_end FUN_ov68_0211ee44

	arm_func_start FUN_ov68_0211ee64
FUN_ov68_0211ee64: ; 0x0211EE64
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #3
	str r0, [r7, #0x14]
	mov r6, #0
	ldr r5, _0211EEF8 ; =0x00007FFF
	ldr r4, _0211EEFC ; =0x02099F38
	b _0211EEA4
_0211EE84:
	cmp r6, #7
	beq _0211EEA0
	add r1, r7, r6, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x98]
	mov r2, r5
	bl FUN_ov16_02114204
_0211EEA0:
	add r6, r6, #1
_0211EEA4:
	cmp r6, #0xb
	blt _0211EE84
	ldr r4, _0211EEFC ; =0x02099F38
	ldr r1, [r7, #0xa0]
	ldr r0, [r4]
	ldr r2, _0211EF00 ; =0x00003DEF
	bl FUN_ov16_02114204
	ldr r0, [r4]
	ldr r1, [r7, #0xb4]
	mov r2, #2
	bl FUN_ov16_02114370
	ldr r4, _0211EF04 ; =0x02099EB4
	mov r1, #8
	ldr r0, [r4]
	bl FUN_ov16_0210ee78
	ldr r0, [r4]
	mov r1, #3
	bl FUN_ov16_0210e7d0
	mov r1, #0
	strh r1, [r0, #0x32]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EEF8: .word 0x00007FFF
_0211EEFC: .word unk_02099F38
_0211EF00: .word 0x00003DEF
_0211EF04: .word unk_02099EB4
	arm_func_end FUN_ov68_0211ee64

	arm_func_start FUN_ov68_0211ef08
FUN_ov68_0211ef08: ; 0x0211EF08
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x234]
	mov r2, #6
	str r2, [r0, #0x14]
	cmp r1, #0
	bne _0211EF30
	ldr r0, _0211EF40 ; =0x0209AC44
	mov r1, #0x17
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211EF30:
	ldr r0, _0211EF40 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211EF40: .word unk_0209AC44
	arm_func_end FUN_ov68_0211ef08

	arm_func_start FUN_ov68_0211ef44
FUN_ov68_0211ef44: ; 0x0211EF44
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0x228]
	ldr r0, _0211EFEC ; =0x0209BA20
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0x238]
	rsb r1, r1, #0
	bl FUN_ov16_020edf8c
	mov r6, #0
	ldr r0, [r7, #0x200]
	mov r1, r6
	bl FUN_ov16_020efa9c
	ldr r1, [r7, #0x22c]
	mov r5, r0
	cmp r1, #0
	ldr r1, [r7, #0x228]
	mov r3, #1
	bne _0211EF94
	mov r4, #4
	b _0211EF98
_0211EF94:
	mov r4, #5
_0211EF98:
	add r1, r7, r1, lsl #2
	ldr r2, [r1, #0x204]
	mov r1, r4
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_0206ceac
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r6
	bl FUN_0206d150
	mov r4, #0
	mov r0, r7
	mov r1, r4
	mov r2, r4
	bl FUN_ov68_0211e108
	ldr r0, _0211EFF0 ; =0x020A9C40
	mov r2, r4
	mov r1, #0x1c4
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EFEC: .word unk_0209BA20
_0211EFF0: .word unk_020A9C40
	arm_func_end FUN_ov68_0211ef44

	arm_func_start FUN_ov68_0211eff4
FUN_ov68_0211eff4: ; 0x0211EFF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r5, _0211F0CC ; =0x02099F38
	mov r4, r0
	mov r0, #3
	str r0, [r4, #0x14]
	ldr r0, [r5]
	ldr r1, [r4, #0xb8]
	mov r2, #2
	bl FUN_ov16_02114370
	mov r7, #0
	ldr r6, _0211F0D0 ; =0x00007FFF
	b _0211F03C
_0211F024:
	add r1, r4, r7, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x98]
	mov r2, r6
	bl FUN_ov16_02114204
	add r7, r7, #1
_0211F03C:
	cmp r7, #0xb
	blt _0211F024
	ldr r6, _0211F0D4 ; =0x02099EB4
	mov r1, #3
	ldr r0, [r6]
	bl FUN_ov16_0210ee78
	mov r9, #0
	mov r8, #2
	ldr r5, _0211F0CC ; =0x02099F38
	str r9, [r4, #0x234]
	ldr r0, [r5]
	ldr r1, [r4, #0xb8]
	mov r3, r8
	mov r2, #7
	bl FUN_ov16_02113f7c
	mov r7, #8
	ldr r0, [r5]
	ldr r1, [r4, #0xb8]
	mov r2, r7
	mov r3, r8
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r4, #0xb8]
	mov r3, r8
	mov r4, #9
	mov r2, r4
	bl FUN_ov16_02113f7c
	mov r1, r7
	ldr r0, [r6]
	bl FUN_ov16_0210e7d0
	mov r1, r4
	strh r9, [r0, #0x32]
	ldr r0, [r6]
	bl FUN_ov16_0210e7d0
	strh r9, [r0, #0x32]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F0CC: .word unk_02099F38
_0211F0D0: .word 0x00007FFF
_0211F0D4: .word unk_02099EB4
	arm_func_end FUN_ov68_0211eff4

	arm_func_start FUN_ov68_0211f0d8
FUN_ov68_0211f0d8: ; 0x0211F0D8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211F104 ; =0x0209BA20
	bl FUN_ov16_020edf7c
	ldr r1, [r4, #0x228]
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x238]
	cmp r0, r1
	movhs r0, #1
	movlo r0, #0
	ldmfd sp!, {r4, pc}
_0211F104: .word unk_0209BA20
	arm_func_end FUN_ov68_0211f0d8

	arm_func_start FUN_ov68_0211f108
FUN_ov68_0211f108: ; 0x0211F108
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, #0
	ldr r0, [r4, #0x200]
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r5, r0
	ldr r0, [r4, #0x228]
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, r0, lsl #2
_0211F134:
	mov r0, r5
	mov r1, r6
	bl FUN_0206cdf8
	ldr r1, [r4, #0x204]
	cmp r0, r1
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #6
	blt _0211F134
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov68_0211f108

	arm_func_start FUN_ov68_0211f164
FUN_ov68_0211f164: ; 0x0211F164
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x200]
	mov r1, #0
	bl FUN_ov16_020efa9c
	ldr r1, [r5, #0x228]
	ldr r4, _0211F1AC ; =0x0209BA20
	add r1, r5, r1, lsl #2
	mov r5, r0
	ldr r1, [r1, #0x204]
	mov r0, r4
	bl FUN_0204a2c4
	mov r2, r0
	mov r0, r4
	mov r1, r5
	mov r3, #1
	bl FUN_02049fc8
	ldmfd sp!, {r3, r4, r5, pc}
_0211F1AC: .word unk_0209BA20
	arm_func_end FUN_ov68_0211f164

	arm_func_start FUN_ov68_0211f1b0
FUN_ov68_0211f1b0: ; 0x0211F1B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, [r5, #0x1fc]
	mov r1, r4
	bl FUN_ov16_020efa9c
	ldr r1, [r5, #0x228]
	add r1, r1, #4
	bl FUN_0206cdf8
	mov r1, r0
	ldr r0, _0211F1F4 ; =0x0209BA20
	bl FUN_0204a2c4
	ldrb r0, [r0]
	cmp r0, #9
	movne r4, #1
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0211F1F4: .word unk_0209BA20
	arm_func_end FUN_ov68_0211f1b0

	arm_func_start FUN_ov68_0211f1f8
FUN_ov68_0211f1f8: ; 0x0211F1F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r0, #7
	str r0, [r4, #0x14]
	mov r7, #0
	ldr r6, _0211F2AC ; =0x00003DEF
	ldr r5, _0211F2B0 ; =0x02099F38
	b _0211F238
_0211F218:
	cmp r7, #9
	beq _0211F234
	add r1, r4, r7, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x98]
	mov r2, r6
	bl FUN_ov16_02114204
_0211F234:
	add r7, r7, #1
_0211F238:
	cmp r7, #0xb
	blt _0211F218
	ldr r5, _0211F2B0 ; =0x02099F38
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0xbc]
	mov r2, r6
	mov r3, #1
	bl FUN_ov16_021142fc
	ldr r0, [r5]
	ldr r1, [r4, #0xbc]
	mov r3, r6
	mov r2, #4
	bl FUN_ov16_02113f7c
	mov r0, r4
	bl FUN_ov68_0211c1f8
	ldr r4, _0211F2B4 ; =0x02099EB4
	mov r1, #0xf
	ldr r0, [r4]
	bl FUN_ov16_0210ee78
	ldr r0, [r4]
	mov r1, #3
	bl FUN_ov16_0210e7d0
	mov r1, #0x14
	strh r1, [r0, #0x32]
	ldr r0, _0211F2B8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F2AC: .word 0x00003DEF
_0211F2B0: .word unk_02099F38
_0211F2B4: .word unk_02099EB4
_0211F2B8: .word unk_0209AC44
	arm_func_end FUN_ov68_0211f1f8

	arm_func_start FUN_ov68_0211f2bc
FUN_ov68_0211f2bc: ; 0x0211F2BC
	mov r1, #8
	str r1, [r0, #0x14]
	ldr r0, _0211F2D4 ; =0x0209AC44
	ldr r12, _0211F2D8 ; =FUN_0202cf6c
	mov r1, #1
	bx r12
_0211F2D4: .word unk_0209AC44
_0211F2D8: .word FUN_0202cf6c
	arm_func_end FUN_ov68_0211f2bc

	arm_func_start FUN_ov68_0211f2dc
FUN_ov68_0211f2dc: ; 0x0211F2DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #3
	str r0, [r7, #0x14]
	mov r6, #0
	ldr r5, _0211F368 ; =0x00007FFF
	ldr r4, _0211F36C ; =0x02099F38
	b _0211F314
_0211F2FC:
	add r1, r7, r6, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x98]
	mov r2, r5
	bl FUN_ov16_02114204
	add r6, r6, #1
_0211F314:
	cmp r6, #0xb
	blt _0211F2FC
	ldr r4, _0211F36C ; =0x02099F38
	ldr r1, [r7, #0xa0]
	ldr r0, [r4]
	ldr r2, _0211F370 ; =0x00003DEF
	bl FUN_ov16_02114204
	ldr r0, [r4]
	ldr r1, [r7, #0xbc]
	mov r2, #2
	bl FUN_ov16_02114370
	ldr r4, _0211F374 ; =0x02099EB4
	mov r1, #8
	ldr r0, [r4]
	bl FUN_ov16_0210ee78
	ldr r0, [r4]
	mov r1, #3
	bl FUN_ov16_0210e7d0
	mov r1, #0
	strh r1, [r0, #0x32]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F368: .word 0x00007FFF
_0211F36C: .word unk_02099F38
_0211F370: .word 0x00003DEF
_0211F374: .word unk_02099EB4
	arm_func_end FUN_ov68_0211f2dc

	arm_func_start FUN_ov68_0211f378
FUN_ov68_0211f378: ; 0x0211F378
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x234]
	mov r2, #9
	str r2, [r0, #0x14]
	cmp r1, #0
	bne _0211F3A0
	ldr r0, _0211F3B0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211F3A0:
	ldr r0, _0211F3B0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211F3B0: .word unk_0209AC44
	arm_func_end FUN_ov68_0211f378

	arm_func_start FUN_ov68_0211f3b4
FUN_ov68_0211f3b4: ; 0x0211F3B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #3
	str r0, [r4, #0x14]
	mov r7, #0
	ldr r6, _0211F4BC ; =0x00007FFF
	ldr r5, _0211F4C0 ; =0x02099F38
	b _0211F3F0
_0211F3D8:
	add r1, r4, r7, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x98]
	mov r2, r6
	bl FUN_ov16_02114204
	add r7, r7, #1
_0211F3F0:
	cmp r7, #0xb
	blt _0211F3D8
	ldr r6, _0211F4C0 ; =0x02099F38
	mov r8, #2
	ldr r0, [r6]
	ldr r1, [r4, #0xc0]
	mov r2, r8
	bl FUN_ov16_02114370
	ldr r5, _0211F4C4 ; =0x02099EB4
	mov r1, #8
	ldr r0, [r5]
	bl FUN_ov16_0210e7d0
	mov r7, #0
	strh r7, [r0, #0x32]
	ldr r0, [r5]
	mov r1, #9
	bl FUN_ov16_0210e7d0
	strh r7, [r0, #0x32]
	mov r7, #1
	str r7, [r4, #0x230]
	ldr r0, [r6]
	ldr r1, [r4, #0xa0]
	rsb r2, r7, #0x8000
	bl FUN_ov16_02114204
	ldr r0, [r5]
	mov r1, #3
	bl FUN_ov16_0210ee78
	str r7, [sp]
	ldr r0, [r6]
	ldr r1, [r4, #0xa4]
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_02113ec0
	ldr r0, [r6]
	mov r2, r7
	ldr r1, [r4, #0xa4]
	mov r3, #0xf
	bl FUN_ov16_02113a80
	ldr r1, [r4, #0x230]
	ldr r0, [r4, #0x22c]
	add r1, r4, r1, lsl #3
	add r0, r1, r0, lsl #2
	ldr r1, [r0, #0x204]
	ldr r0, [r4, #4]
	str r1, [r4, #0x1e8]
	add r1, r4, #0xdc
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211F4BC: .word 0x00007FFF
_0211F4C0: .word unk_02099F38
_0211F4C4: .word unk_02099EB4
	arm_func_end FUN_ov68_0211f3b4

	arm_func_start FUN_ov68_0211f4c8
FUN_ov68_0211f4c8: ; 0x0211F4C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #3
	str r0, [r7, #0x14]
	mov r6, #0
	ldr r5, _0211F568 ; =0x00007FFF
	ldr r4, _0211F56C ; =0x02099F38
	b _0211F500
_0211F4E8:
	add r1, r7, r6, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x98]
	mov r2, r5
	bl FUN_ov16_02114204
	add r6, r6, #1
_0211F500:
	cmp r6, #0xb
	blt _0211F4E8
	ldr r4, _0211F56C ; =0x02099F38
	ldr r1, [r7, #0xa0]
	ldr r0, [r4]
	ldr r2, _0211F570 ; =0x00003DEF
	bl FUN_ov16_02114204
	ldr r0, [r4]
	ldr r1, [r7, #0xc0]
	mov r2, #2
	bl FUN_ov16_02114370
	ldr r4, _0211F574 ; =0x02099EB4
	mov r5, #8
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_0210ee78
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_0210e7d0
	mov r5, #0
	strh r5, [r0, #0x32]
	ldr r0, [r4]
	mov r1, #9
	bl FUN_ov16_0210e7d0
	strh r5, [r0, #0x32]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F568: .word 0x00007FFF
_0211F56C: .word unk_02099F38
_0211F570: .word 0x00003DEF
_0211F574: .word unk_02099EB4
	arm_func_end FUN_ov68_0211f4c8

	arm_func_start FUN_ov68_0211f578
FUN_ov68_0211f578: ; 0x0211F578
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r4, r0
	mov r1, r5
_0211F58C:
	add r0, r4, r1, lsl #2
	add r1, r1, #1
	str r5, [r0, #0x238]
	cmp r1, #2
	blt _0211F58C
	mov r0, #1
	str r0, [sp]
_0211F5A8:
	ldr r1, [sp]
	ldr r0, _0211F7D4 ; =0x0209BA20
	bl FUN_ov16_020ee034
	mov r6, r0
	ldrb r0, [r6, #0x1d]
	cmp r0, #0xf
	bne _0211F698
	ldr r9, _0211F7D8 ; =0x66666667
	ldr r8, _0211F7DC ; =0x51EB851F
	mov r7, #0
_0211F5D0:
	mov r0, r6
	bl FUN_ov16_020eef40
	add r10, r4, r7, lsl #2
	ldr r1, [r10, #0x204]
	cmp r1, r0
	bne _0211F68C
	ldrh r3, [r6, #0x20]
	cmp r3, #0
	moveq r0, #0x7d0
	streq r0, [r10, #0x238]
	beq _0211F648
	smull r0, r1, r9, r3
	mov r0, r3, lsr #0x1f
	add r1, r0, r1, asr #2
	smull r11, r2, r9, r1
	mov r11, r1, lsr #0x1f
	add r2, r11, r2, asr #2
	mov r11, #0xa
	smull r2, r12, r11, r2
	sub r2, r1, r2
	cmp r2, #4
	smull r1, r2, r8, r3
	add r2, r0, r2, asr #5
	mov r0, #0x64
	mullt r0, r2, r0
	str r3, [r10, #0x238]
	addge r1, r2, #1
	strlt r0, [r10, #0x238]
	mulge r0, r1, r0
	strge r0, [r10, #0x238]
_0211F648:
	add r1, r4, r7, lsl #2
	ldr r0, [r1, #0x204]
	cmp r0, #0
	streq r5, [r1, #0x238]
	ldr r0, [r4, #0x1fc]
	mov r1, r5
	bl FUN_ov16_020efa9c
	add r1, r7, #4
	bl FUN_0206cdf8
	mov r1, r0
	ldr r0, _0211F7D4 ; =0x0209BA20
	bl FUN_0204a2c4
	ldrb r0, [r0]
	cmp r0, #9
	addeq r1, r4, r7
	moveq r0, #1
	streqb r0, [r1, #0x1ec]
_0211F68C:
	add r7, r7, #1
	cmp r7, #2
	blt _0211F5D0
_0211F698:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x400
	blt _0211F5A8
	mov r1, #0
	str r1, [sp, #4]
	ldr r2, [sp, #4]
	ldr r0, _0211F7E0 ; =0x0211FF38
	add r1, sp, #8
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	strb r2, [sp, #0x10]
	strb r2, [sp, #0x11]
	strb r2, [sp, #0x12]
	bl FUN_ov16_020f3054
_0211F6D8:
	ldr r0, [sp, #4]
	add lr, r4, r0, lsl #2
	ldr r0, [lr, #0x238]
	cmp r0, #0
	bne _0211F788
	ldr r0, [sp, #0xc]
	ldr r5, [sp, #8]
	movs r0, r0, lsr #3
	mov r6, #0
	beq _0211F788
	mov r11, #0x64
	ldr r1, _0211F7D8 ; =0x66666667
	ldr r7, _0211F7DC ; =0x51EB851F
	mov r0, #0xa
	mov r8, r11
_0211F714:
	ldrb r2, [r5]
	cmp r2, #0xf
	ldreqsh r3, [r5, #4]
	ldreq r2, [lr, #0x204]
	cmpeq r3, r2
	bne _0211F774
	ldrsh r12, [r5, #6]
	smull r3, r2, r1, r12
	mov r9, r12, lsr #0x1f
	add r2, r9, r2, asr #2
	smull r10, r3, r1, r2
	mov r10, r2, lsr #0x1f
	add r3, r10, r3, asr #2
	smull r3, r10, r0, r3
	sub r3, r2, r3
	cmp r3, #4
	smull r2, r3, r7, r12
	add r3, r9, r3, asr #5
	mullt r2, r3, r8
	str r12, [lr, #0x238]
	strlt r2, [lr, #0x238]
	addge r2, r3, #1
	mulge r3, r2, r11
	strge r3, [lr, #0x238]
_0211F774:
	ldr r2, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r2, lsr #3
	add r5, r5, #8
	blo _0211F714
_0211F788:
	ldr r0, [sp, #4]
	mov r5, #0
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _0211F6D8
	add r4, sp, #8
	mov r1, #1
	mov r0, r4
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov16_020f33fc
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	strb r5, [sp, #0x10]
	strb r5, [sp, #0x11]
	strb r5, [sp, #0x12]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F7D4: .word unk_0209BA20
_0211F7D8: .word 0x66666667
_0211F7DC: .word 0x51EB851F
_0211F7E0: .word ov68_0211FF38
	arm_func_end FUN_ov68_0211f578

	arm_func_start FUN_ov68_0211f7e4
FUN_ov68_0211f7e4: ; 0x0211F7E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210f940
	ldr r4, _0211F854 ; =0x02099ED4
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210fa20
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210f940
	ldr r0, [r4]
	ldrb r1, [r6, #0x11]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210fa20
	ldr r0, [r4]
	ldrb r1, [r6, #0x11]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_0211F854: .word unk_02099ED4
	arm_func_end FUN_ov68_0211f7e4

	arm_func_start FUN_ov68_0211f858
FUN_ov68_0211f858: ; 0x0211F858
	ldr r0, _0211F868 ; =0x02099EB4
	ldr r12, _0211F86C ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211F868: .word unk_02099EB4
_0211F86C: .word  FUN_ov16_0210efac
	arm_func_end FUN_ov68_0211f858

	arm_func_start FUN_ov68_0211f870
FUN_ov68_0211f870: ; 0x0211F870
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r7, #6
	mov r6, #0
	str r7, [sp]
	str r6, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r5, #4
	str r5, [sp, #0xc]
	mov r8, r0
	str r6, [sp, #0x10]
	ldr r4, _0211F908 ; =0x02099ED4
	ldrb r1, [r8, #0x11]
	ldrh r3, [r8, #0x34]
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov16_0210e3f0
	ldrb r1, [r8, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	str r7, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	ldrb r1, [r8, #0x11]
	mov r2, r6
	ldr r0, [r4]
	ldrh r3, [r8, #0x34]
	bl FUN_ov16_0210e3f0
	ldr r0, [r4]
	ldrb r1, [r8, #0x11]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211F908: .word unk_02099ED4
	arm_func_end FUN_ov68_0211f870

	arm_func_start FUN_ov68_0211f90c
FUN_ov68_0211f90c: ; 0x0211F90C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r7, #8
	mov r6, #0
	str r7, [sp]
	str r6, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	mov r5, #4
	str r5, [sp, #0xc]
	mov r8, r0
	str r6, [sp, #0x10]
	ldr r4, _0211F9A8 ; =0x02099ED4
	ldrb r1, [r8, #0x11]
	ldrh r3, [r8, #0x34]
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov16_0210e3f0
	ldrb r1, [r8, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	ldrb r1, [r8, #0x11]
	mov r2, r6
	ldr r0, [r4]
	ldrh r3, [r8, #0x34]
	bl FUN_ov16_0210e3f0
	ldr r0, [r4]
	ldrb r1, [r8, #0x11]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211F9A8: .word unk_02099ED4
	arm_func_end FUN_ov68_0211f90c

	arm_func_start FUN_ov68_0211f9ac
FUN_ov68_0211f9ac: ; 0x0211F9AC
	ldr r2, _0211F9C4 ; =0x02099ED4
	ldrb r1, [r0, #0x11]
	ldr r0, [r2]
	ldr r12, _0211F9C8 ; = FUN_ov16_0210e5f0
	mov r2, #4
	bx r12
_0211F9C4: .word unk_02099ED4
_0211F9C8: .word  FUN_ov16_0210e5f0
	arm_func_end FUN_ov68_0211f9ac

	arm_func_start FUN_ov68_0211f9cc
FUN_ov68_0211f9cc: ; 0x0211F9CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov68_0211f9cc

	arm_func_start FUN_ov68_0211f9e0
FUN_ov68_0211f9e0: ; 0x0211F9E0
	cmp r1, #1
	moveq r1, #1
	streq r1, [r0, #0x250]
	mov r0, #1
	bx lr
	arm_func_end FUN_ov68_0211f9e0

	arm_func_start FUN_ov68_0211f9f4
FUN_ov68_0211f9f4: ; 0x0211F9F4
	bx lr
	arm_func_end FUN_ov68_0211f9f4
_0211F9F8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0xFB, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0xFB, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x58, 0xFB, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x28, 0xFB, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x18, 0xFC, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0xF8, 0xFB, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0x78, 0xFB, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x98, 0xFB, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0xA8, 0xFB, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0xB8, 0xFB, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0xC8, 0xFB, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0xD8, 0xFB, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x88, 0xFB, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x18, 0xFB, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x68, 0xFB, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x38, 0xFB, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x08, 0xFC, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov68_0211fa98
FUN_ov68_0211fa98: ; 0x0211FA98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211FAE0 ; =0x0211FB00
	str r0, [r4, #0x14]
	ldr r0, _0211FAE4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _0211FAE8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FAE0: .word ov68_0211FB00
_0211FAE4: .word 0x00009CCD
_0211FAE8: .word 0x0000EA3C
	arm_func_end FUN_ov68_0211fa98

	.section .sinit, 4
ov68_0211FAEC:
	.word FUN_ov68_0211fa98

	.data
	.global ov68_0211FB00
ov68_0211FB00:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x7A, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x6D, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x6D, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x6D, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x7A, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.global ov68_0211FC28
ov68_0211FC28:
	.byte 0x60, 0xFC, 0x11, 0x02, 0x38, 0xFC, 0x11, 0x02
	.byte 0xCC, 0xFC, 0x11, 0x02, 0x8C, 0xFC, 0x11, 0x02, 0x82, 0xCB, 0x82, 0xC1, 0x82, 0xAF, 0x82, 0xC2
	.byte 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67, 0x82, 0xAA, 0x0A, 0x5B, 0x91, 0xAB, 0x2F, 0x82
	.byte 0xBD, 0x5D, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.byte 0x82, 0xBB, 0x82, 0xCC, 0x5B, 0x8B, 0x5A, 0x2F, 0x82, 0xED, 0x82, 0xB4, 0x5D, 0x82, 0xCD, 0x0A
	.byte 0x82, 0xB7, 0x82, 0xC5, 0x82, 0xC9, 0x5B, 0x8A, 0x6F, 0x2F, 0x82, 0xA8, 0x82, 0xDA, 0x5D, 0x82
	.byte 0xA6, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x82, 0xBB, 0x82, 0xCC
	.byte 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x82
	.byte 0xCD, 0x0A, 0x82, 0xB1, 0x82, 0xCC, 0x5B, 0x8B, 0x5A, 0x2F, 0x82, 0xED, 0x82, 0xB4, 0x5D, 0x82
	.byte 0xF0, 0x5B, 0x8A, 0x6F, 0x2F, 0x82, 0xA8, 0x82, 0xDA, 0x5D, 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xEA
	.byte 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x83, 0x58, 0x83, 0x4C
	.byte 0x83, 0x8B, 0x5B, 0x91, 0xAE, 0x90, 0xAB, 0x2F, 0x82, 0xBC, 0x82, 0xAD, 0x82, 0xB9, 0x82, 0xA2
	.byte 0x5D, 0x82, 0xCC, 0x5B, 0x8B, 0x5A, 0x2F, 0x82, 0xED, 0x82, 0xB4, 0x5D, 0x82, 0xCD, 0x5B, 0x93
	.byte 0x60, 0x8E, 0xF6, 0x2F, 0x82, 0xC5, 0x82, 0xF1, 0x82, 0xB6, 0x82, 0xE3, 0x5D, 0x82, 0xC5, 0x82
	.byte 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov68_0211FD14
ov68_0211FD14:
	.byte 0xF4, 0xF9, 0x11, 0x02, 0xCC, 0xF9, 0x11, 0x02, 0x58, 0xDC, 0x11, 0x02
	.byte 0xBC, 0xCD, 0x11, 0x02, 0x58, 0xE1, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x00, 0xE3, 0x11, 0x02
	.byte 0xB8, 0xE6, 0x11, 0x02, 0xBC, 0xE6, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xE0, 0xF9, 0x11, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov68_0211FD80
ov68_0211FD80:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77
	.byte 0x61, 0x7A, 0x61, 0x5F, 0x64, 0x65, 0x6E, 0x2E, 0x53, 0x50, 0x4C, 0x00
	.global ov68_0211FD9C
ov68_0211FD9C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D
	.byte 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov68_0211FDBC
ov68_0211FDBC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov68_0211FDD4
ov68_0211FDD4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov68_0211FDEC
ov68_0211FDEC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov68_0211FE04
ov68_0211FE04:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x77, 0x61, 0x7A, 0x61, 0x5F, 0x64, 0x65, 0x6E, 0x2E, 0x53, 0x50, 0x44, 0x00
	.global ov68_0211FE20
ov68_0211FE20:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov68_0211FE38
ov68_0211FE38:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov68_0211FE50
ov68_0211FE50:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov68_0211FE68
ov68_0211FE68:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D, 0x62, 0x64, 0x5F, 0x63
	.byte 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov68_0211FE88
ov68_0211FE88:
	.byte 0x82, 0xED, 0x82, 0xBD, 0x82, 0xB7, 0x5B, 0x93
	.byte 0x60, 0x8E, 0xF6, 0x8B, 0x5A, 0x2F, 0x82, 0xC5, 0x82, 0xF1, 0x82, 0xB6, 0x82, 0xE3, 0x82, 0xED
	.byte 0x82, 0xB4, 0x5D, 0x82, 0xC6, 0x0A, 0x82, 0xA4, 0x82, 0xAF, 0x82, 0xC6, 0x82, 0xE9, 0x83, 0x58
	.byte 0x83, 0x8D, 0x83, 0x62, 0x83, 0x67, 0x82, 0xF0, 0x5B, 0x8C, 0x88, 0x2F, 0x82, 0xAB, 0x5D, 0x82
	.byte 0xDF, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov68_0211FED0
ov68_0211FED0:
	.byte 0x82, 0xB1, 0x82, 0xEA, 0x82, 0xC5, 0x82, 0xE6, 0x82, 0xEB, 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5
	.byte 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov68_0211FEE8
ov68_0211FEE8:
	.byte 0x82, 0xA4, 0x82, 0xAF, 0x82, 0xC6, 0x82, 0xE9
	.byte 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x82
	.byte 0xCC, 0x5B, 0x8B, 0x5A, 0x2F, 0x82, 0xED, 0x82, 0xB4, 0x5D, 0x82, 0xAA, 0x0A, 0x5B, 0x8F, 0xE3
	.byte 0x8F, 0x91, 0x2F, 0x82, 0xA4, 0x82, 0xED, 0x82, 0xAA, 0x5D, 0x82, 0xAB, 0x82, 0xB3, 0x82, 0xEA
	.byte 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xAA, 0x81, 0x40, 0x82, 0xE6, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7
	.byte 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov68_0211FF38
ov68_0211FF38:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x5F, 0x70
	.byte 0x72, 0x69, 0x63, 0x65, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

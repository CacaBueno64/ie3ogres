
	.include "/macros/function.inc"
	.include "/include/overlay67.inc"

	.text
	arm_func_start FUN_ov67_02119f00
FUN_ov67_02119f00: ; 0x02119F00
	mov r1, r0
	ldr r0, _02119F14 ; =0x021222EC
	ldr r12, _02119F18 ; = FUN_ov16_020f3054
	add r1, r1, #0x14
	bx r12
_02119F14: .word ov67_021222EC
_02119F18: .word FUN_ov16_020f3054
	arm_func_end FUN_ov67_02119f00

	arm_func_start FUN_ov67_02119f1c
FUN_ov67_02119f1c: ; 0x02119F1C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x7c
	ldr lr, _02119F7C ; =0x02121FB8
	add r12, sp, #4
	mov r5, r0
	mov r4, #7
_02119F34:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02119F34
	ldmia lr, {r0, r1}
	stmia r12, {r0, r1}
	mov r4, #0
	str r4, [sp]
	ldr r1, [r5, #0x14]
	ldr r0, _02119F80 ; =0x02122308
	add r2, sp, #4
	add r3, r5, #0x20
	bl FUN_ov16_020f5450
	mov r0, r5
	mov r1, r4
	bl FUN_ov67_0211a3e4
	add sp, sp, #0x7c
	ldmfd sp!, {r4, r5, pc}
_02119F7C: .word ov67_02121FB8
_02119F80: .word ov67_02122308
	arm_func_end FUN_ov67_02119f1c

	arm_func_start FUN_ov67_02119f84
FUN_ov67_02119f84: ; 0x02119F84
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A218 ; =0x0209BA20
	bl FUN_0207249c
	mov r4, #0
	mov r5, r0
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _02119FD0
	bl FUN_0206d6d8
	cmp r0, #0
	movne r4, #1
_02119FD0:
	add r0, r8, #0x100
	ldrh r1, [r0, #0x40]
	cmp r7, r1
	ldreqh r0, [r0, #0x54]
	cmpeq r6, r0
	bne _0211A000
	ldr r0, [r8, #0x138]
	add r0, r8, r0, lsl #2
	ldr r0, [r0, #0x130]
	cmp r0, #0
	addgt sp, sp, #0x18
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A000:
	cmp r4, #0
	addeq r0, r8, #0x100
	streqh r7, [r0, #0x42]
	ldr r0, [r8, #0x138]
	add r0, r8, r0, lsl #2
	ldr r1, [r0, #0x130]
	cmp r1, #0
	ble _0211A02C
	ldr r0, _0211A21C ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
_0211A02C:
	add r0, r8, #0x100
	strh r6, [r0, #0x54]
	ldrh r1, [r0, #0x54]
	strh r7, [r0, #0x40]
	mov r4, #1
	strh r1, [r5, #0x28]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r5, _0211A21C ; =0x02099EEC
	ldrh r1, [r0, #0x40]
	ldr r0, [r5]
	ldr r2, [r8, #0x138]
	mov r3, r4
	bl FUN_0205a828
	ldr r1, [r8, #0x138]
	ldr r2, _0211A220 ; =0x000F423F
	add r1, r8, r1, lsl #2
	str r0, [r1, #0x130]
	ldr r1, [r8, #0x138]
	ldr r0, [r5]
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x130]
	mov r3, #0
	bl FUN_0205ab68
	ldr r5, _0211A224 ; =gL5Config
	ldr r1, _0211A228 ; =0x02122324
	mov r0, r5
	strb r4, [r8, #0x13c]
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	add r0, r0, #5
	cmp r0, #0
	ble _0211A0E0
	ldr r1, _0211A22C ; =0x02122338
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	add r0, r0, #5
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211A104
_0211A0E0:
	ldr r1, _0211A230 ; =0x0212234C
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	add r0, r0, #5
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211A104:
	bl _ffix
	ldr r4, _0211A224 ; =gL5Config
	mov r5, r0
	ldr r1, _0211A234 ; =0x02122360
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	add r0, r0, #5
	cmp r0, #0
	ble _0211A150
	ldr r1, _0211A238 ; =0x02122374
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	add r0, r0, #5
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211A170
_0211A150:
	ldr r1, _0211A23C ; =0x02122388
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	add r0, r0, #5
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211A170:
	bl _ffix
	mov r2, #0x1a4000
	str r0, [sp, #0xc]
	rsb r2, r2, #0
	ldr r0, _0211A224 ; =gL5Config
	ldr r1, _0211A240 ; =0x0212239C
	str r2, [sp, #0x14]
	str r5, [sp, #0x10]
	bl _ZN8L5Config8getParamEPc
	ldr r1, [sp, #0x14]
	ldr r4, _0211A21C ; =0x02099EEC
	str r1, [sp]
	ldr r1, [r8, #0x138]
	mov r5, r0
	add r1, r8, r1, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x130]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_0205aea0
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0x138]
	mov r2, r5
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x130]
	mov r3, r5
	bl FUN_0205af58
	ldr r0, [r4]
	ldr r1, [r8, #0x138]
	mov r2, #0
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x130]
	bl FUN_0205acb0
	ldr r0, [r4]
	ldr r1, [r8, #0x138]
	mov r2, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x130]
	bl FUN_0205b3cc
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A218: .word unk_0209BA20
_0211A21C: .word unk_02099EEC
_0211A220: .word 0x000F423F
_0211A224: .word gL5Config
_0211A228: .word ov67_02122324
_0211A22C: .word ov67_02122338
_0211A230: .word ov67_0212234C
_0211A234: .word ov67_02122360
_0211A238: .word ov67_02122374
_0211A23C: .word ov67_02122388
_0211A240: .word ov67_0212239C
	arm_func_end FUN_ov67_02119f84

	arm_func_start FUN_ov67_0211a244
FUN_ov67_0211a244: ; 0x0211A244
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r2, #0
	ldr r3, _0211A2A4 ; =0x0209A250
	str r2, [r4, #0x160]
	ldr r0, [r3]
	ldr r1, _0211A2A8 ; =0x021223B0
	cmp r0, #0
	beq _0211A28C
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x160
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	mov r2, r0
_0211A28C:
	cmp r2, #0
	movne r1, r2, lsr #1
	addne r0, r4, #0x100
	strneh r1, [r0, #0x64]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0211A2A4: .word unk_0209A250
_0211A2A8: .word ov67_021223B0
	arm_func_end FUN_ov67_0211a244

	arm_func_start FUN_ov67_0211a2ac
FUN_ov67_0211a2ac: ; 0x0211A2AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A33C ; =0x02099F38
	b _0211A31C
_0211A2C4:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _0211A318
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A318
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A318:
	add r6, r6, #1
_0211A31C:
	cmp r6, #0xe
	blt _0211A2C4
	mov r0, r7
	bl FUN_ov67_0211a340
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A33C: .word unk_02099F38
	arm_func_end FUN_ov67_0211a2ac

	arm_func_start FUN_ov67_0211a340
FUN_ov67_0211a340: ; 0x0211A340
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x138]
	ldr r6, _0211A3E0 ; =0x02099EEC
	add r1, r5, r0, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x130]
	bl FUN_0205ac70
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0x13c]
	cmp r0, #0
	beq _0211A3D8
	ldr r0, [r5, #0x138]
	mov r4, #0
	add r1, r5, r0, lsl #2
	mov r7, #1
	ldr r0, [r6]
	ldr r1, [r1, #0x130]
	mov r2, r4
	mov r3, r7
	bl FUN_0205b174
	ldr r1, [r5, #0x138]
	ldr r0, [r6]
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x130]
	mov r2, r7
	bl FUN_0205acb0
	ldr r0, [r5, #0x138]
	strb r4, [r5, #0x13c]
	eor r0, r0, #1
	str r0, [r5, #0x138]
	add r1, r5, r0, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x130]
	mov r2, r4
	bl FUN_0205acb0
_0211A3D8:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3E0: .word unk_02099EEC
	arm_func_end FUN_ov67_0211a340

	arm_func_start FUN_ov67_0211a3e4
FUN_ov67_0211a3e4: ; 0x0211A3E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #1
	blo _0211A424
	add r0, r6, #0x14
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r6, #0x14
	bl FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r6, #0x14]
	str r0, [r6, #0x18]
	strb r0, [r6, #0x1c]
	strb r0, [r6, #0x1d]
	strb r0, [r6, #0x1e]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A424:
	mov r0, #0xc
	mul r5, r1, r0
	add r4, r6, #0x14
	add r0, r4, r5
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r5
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r5]
	add r0, r6, r5
	str r1, [r0, #0x18]
	strb r1, [r0, #0x1c]
	strb r1, [r0, #0x1d]
	strb r1, [r0, #0x1e]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov67_0211a3e4

	arm_func_start FUN_ov67_0211a464
FUN_ov67_0211a464: ; 0x0211A464
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mvn r1, #0
	mov r5, r0
	bl FUN_ov67_0211a3e4
	mov r4, #0
	add r7, r5, #0x8c
	mov r6, #0xa4
	b _0211A494
_0211A484:
	mla r1, r4, r6, r7
	mov r0, r5
	bl FUN_ov67_0211b814
	add r4, r4, #1
_0211A494:
	cmp r4, #1
	blt _0211A484
	mov r4, #0
	ldr r6, _0211A560 ; =0x02099F38
	b _0211A4C4
_0211A4A8:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x5c]
	cmp r1, #0
	beq _0211A4C0
	ldr r0, [r6]
	bl FUN_ov16_021128c4
_0211A4C0:
	add r4, r4, #1
_0211A4C4:
	cmp r4, #0xc
	blt _0211A4A8
	mov r4, #0
	ldr r6, _0211A560 ; =0x02099F38
	b _0211A4F4
_0211A4D8:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _0211A4F0
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A4F0:
	add r4, r4, #1
_0211A4F4:
	cmp r4, #0xe
	blt _0211A4D8
	mov r4, #0
	ldr r6, _0211A560 ; =0x02099F38
	b _0211A524
_0211A508:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x58]
	cmp r1, #0
	beq _0211A520
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A520:
	add r4, r4, #1
_0211A524:
	cmp r4, #1
	blt _0211A508
	ldr r1, [r5, #0x130]
	cmp r1, #0
	ble _0211A544
	ldr r0, _0211A564 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
_0211A544:
	ldr r1, [r5, #0x134]
	cmp r1, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A564 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A560: .word unk_02099F38
_0211A564: .word unk_02099EEC
	arm_func_end FUN_ov67_0211a464

	arm_func_start FUN_ov67_0211a568
FUN_ov67_0211a568: ; 0x0211A568
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r3, #0xc]
	cmp r0, #5
	ldmnefd sp!, {r3, pc}
	ldr r0, [r3, #0x8c]
	mov r2, #8
	ldr r1, [r3, #0x144]
	str r2, [r3, #0x168]
	mov r0, r0, lsl #2
	ldrh r2, [r1, r0]
	add r1, r3, #0x100
	ldr r0, [r3, #4]
	strh r2, [r1, #0x70]
	ldr r2, [r0]
	add r1, r3, #0x168
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov67_0211a568

	arm_func_start FUN_ov67_0211a5b4
FUN_ov67_0211a5b4: ; 0x0211A5B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_020f066c
	mov r4, #1
	ldr r7, _0211A6F4 ; =0x02099F38
	cmp r0, #0
	mov r1, #2
	ldr r0, [r7]
	moveq r1, #3
	mov r2, r4
	bl FUN_ov16_02112724
	mov r5, r0
	str r5, [r6, #0x5c]
	ldr r3, [r6, #0x20]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r8, #0
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl FUN_ov16_0211401c
	ldr r3, [r6, #0x54]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #1
	mov r3, r8
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #1
	mov r3, r8
	bl FUN_ov16_02113b78
	mov r0, r6
	sub r1, r8, #1
	bl FUN_ov67_0211a728
	bl FUN_ov16_020f066c
	cmp r0, #0
	bne _0211A6C0
	ldr r3, [r6, #0x40]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r3, r8
	add r2, r4, #2
	bl FUN_ov16_0211401c
_0211A6C0:
	ldr r4, _0211A6F4 ; =0x02099F38
	ldr r2, _0211A6F8 ; =0x000001EA
	ldr r0, [r4]
	mov r1, r5
	mvn r3, #0
	bl FUN_ov16_02112c90
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A6F4: .word unk_02099F38
_0211A6F8: .word 0x000001EA
	arm_func_end FUN_ov67_0211a5b4

	arm_func_start FUN_ov67_0211a6fc
FUN_ov67_0211a6fc: ; 0x0211A6FC
	stmfd sp!, {r3, lr}
	ldr r0, _0211A720 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211A724 ; =0x0209AEC0
	bl FUN_020466c0
	ldmfd sp!, {r3, pc}
_0211A720: .word unk_020A0640
_0211A724: .word unk_0209AEC0
	arm_func_end FUN_ov67_0211a6fc

	arm_func_start FUN_ov67_0211a728
FUN_ov67_0211a728: ; 0x0211A728
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x5c]
	mov r7, r1
	mov r6, #2
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #1
	cmp r7, #0
	movlt r0, #0
	ldr r4, _0211A790 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
	cmp r7, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A790: .word unk_02099F38
	arm_func_end FUN_ov67_0211a728

	arm_func_start FUN_ov67_0211a794
FUN_ov67_0211a794: ; 0x0211A794
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	add r6, sp, #0
	mov r8, #0
	mov r10, r0
	mov r9, r1
	mov r3, r6
	mov r0, r8
	mov r1, r8
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r2, _0211A860 ; =0x02099F50
	stmia r3, {r0, r1}
	ldr r0, [r2]
	mov r2, #1
	bl FUN_02043310
	ldr r0, [r9, #8]
	ldr r7, [r9, #0xc]
	cmp r0, #0
	ble _0211A844
	ldr r5, _0211A864 ; =0x0209BA20
	mov r4, r8
_0211A800:
	mov r0, r10
	mov r1, r7
	bl FUN_ov67_0211a998
	cmp r0, #0
	beq _0211A830
	ldrh r1, [r0]
	mov r0, r5
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0211A830
	strne r0, [r6, r8, lsl #2]
	streq r4, [r6, r8, lsl #2]
_0211A830:
	ldr r0, [r9, #8]
	add r8, r8, #1
	cmp r8, r0
	add r7, r7, #1
	blt _0211A800
_0211A844:
	ldr r1, [r9, #0x60]
	ldr r3, [r9, #0xc]
	add r2, sp, #0
	mov r0, r10
	bl FUN_ov67_0211a868
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A860: .word unk_02099F50
_0211A864: .word unk_0209BA20
	arm_func_end FUN_ov67_0211a794

	arm_func_start FUN_ov67_0211a868
FUN_ov67_0211a868: ; 0x0211A868
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211A98C ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	str r1, [sp, #0x20]
	mov r9, r3
	bl FUN_ov16_02111438
	mov r7, r0
	mov r6, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r6, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl FUN_ov16_02111458
	mov r8, r0
	ldr r0, _0211A990 ; =0x02099F50
	mov r1, r6
	ldr r0, [r0]
	mov r2, #1
	bl FUN_02043310
	mov r4, r6
	mov r11, #1
	b _0211A948
_0211A8DC:
	ldr r0, [r10, #0x148]
	cmp r9, r0
	bge _0211A950
	ldr r1, [r10, #0x144]
	mov r0, r9, lsl #2
	ldrh r1, [r1, r0]
	ldr r0, _0211A994 ; =0x0209BA20
	bl FUN_ov16_020ee034
	movs r1, r0
	beq _0211A940
	mov r0, #0xc
	mul r0, r6, r0
	str r8, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _0211A990 ; =0x02099F50
	str r4, [sp, #0x1c]
	ldr r0, [r0]
	mov r2, r5
	mov r3, r7
	bl FUN_020425fc
_0211A940:
	add r6, r6, #1
	add r9, r9, #1
_0211A948:
	cmp r6, #8
	blt _0211A8DC
_0211A950:
	ldr r0, _0211A990 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, _0211A98C ; =0x02099F38
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A98C: .word unk_02099F38
_0211A990: .word unk_02099F50
_0211A994: .word unk_0209BA20
	arm_func_end FUN_ov67_0211a868

	arm_func_start FUN_ov67_0211a998
FUN_ov67_0211a998: ; 0x0211A998
	ldr r2, [r0, #0x144]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0
	blt _0211A9BC
	ldr r0, [r0, #0x148]
	cmp r1, r0
	blt _0211A9C4
_0211A9BC:
	mov r0, #0
	bx lr
_0211A9C4:
	add r0, r2, r1, lsl #2
	bx lr
	arm_func_end FUN_ov67_0211a998

	arm_func_start FUN_ov67_0211a9cc
FUN_ov67_0211a9cc: ; 0x0211A9CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1000
	add r8, sp, #0x800
	mov r5, r0
	ldr r0, _0211AB44 ; =0x0209BA20
	mov r2, r8
	mov r1, #0x15
	mov r3, #0x400
	mov r6, #0
	bl FUN_ov16_020ee0f8
	add r7, sp, #0
	mov r9, r6
	mov r4, r0
	mov r0, r9
	mov r1, r7
	mov r2, #0x800
	bl MIi_CpuClear16
	cmp r4, #0
	ble _0211AA68
	add r1, r5, #0x100
_0211AA1C:
	ldrh r0, [r1, #0x64]
	mov r3, r6
	cmp r0, #0
	ble _0211AA5C
	mov r2, r9, lsl #1
	ldrh r12, [r8, r2]
	ldr r10, [r5, #0x160]
_0211AA38:
	mov r2, r3, lsl #1
	ldrh r2, [r10, r2]
	cmp r12, r2
	moveq r0, r9, lsl #1
	streqh r3, [r7, r0]
	beq _0211AA5C
	add r3, r3, #1
	cmp r3, r0
	blt _0211AA38
_0211AA5C:
	add r9, r9, #1
	cmp r9, r4
	blt _0211AA1C
_0211AA68:
	sub r10, r4, #1
	cmp r10, #0
	mov r12, #0
	ble _0211AAD4
	add r2, sp, #0x800
	add r8, sp, #0
_0211AA80:
	add lr, r12, #1
	cmp lr, r4
	bge _0211AAC8
	mov r6, r12, lsl #1
_0211AA90:
	mov r9, lr, lsl #1
	ldrh r7, [r8, r9]
	ldrh r3, [r8, r6]
	cmp r3, r7
	bls _0211AABC
	ldrh r1, [r2, r9]
	ldrh r0, [r2, r6]
	strh r3, [r8, r9]
	strh r7, [r8, r6]
	strh r0, [r2, r9]
	strh r1, [r2, r6]
_0211AABC:
	add lr, lr, #1
	cmp lr, r4
	blt _0211AA90
_0211AAC8:
	add r12, r12, #1
	cmp r12, r10
	blt _0211AA80
_0211AAD4:
	mov r9, #0
	mov r10, r9
	cmp r4, #0
	mov r6, r9
	ble _0211AB38
	ldr r8, _0211AB44 ; =0x0209BA20
	add r7, sp, #0x800
_0211AAF0:
	mov r0, r10, lsl #1
	ldrh r1, [r7, r0]
	mov r0, r8
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0211AB2C
	mov r0, r10, lsl #1
	ldrh r2, [r7, r0]
	ldr r1, [r5, #0x144]
	mov r0, r9, lsl #2
	strh r2, [r1, r0]
	ldr r0, [r5, #0x144]
	add r0, r0, r9, lsl #2
	strb r6, [r0, #2]
	add r9, r9, #1
_0211AB2C:
	add r10, r10, #1
	cmp r10, r4
	blt _0211AAF0
_0211AB38:
	str r9, [r5, #0x148]
	add sp, sp, #0x1000
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AB44: .word unk_0209BA20
	arm_func_end FUN_ov67_0211a9cc

	arm_func_start FUN_ov67_0211ab48
FUN_ov67_0211ab48: ; 0x0211AB48
	stmfd sp!, {r3, lr}
	ldr r0, _0211AB64 ; =0x0209BA20
	bl FUN_ov16_020ee034
	cmp r0, #0
	ldrneh r0, [r0, #0x26]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0211AB64: .word unk_0209BA20
	arm_func_end FUN_ov67_0211ab48

	arm_func_start FUN_ov67_0211ab68
FUN_ov67_0211ab68: ; 0x0211AB68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #0x148]
	mov r8, r1
	mov r7, r2
	cmp r0, #0
	ldr r6, [r9, #0x144]
	mov r5, #0
	ble _0211ABDC
	ldr r4, _0211ABE4 ; =0x0209BA20
_0211AB90:
	ldrh r1, [r6]
	cmp r1, #0
	beq _0211ABC8
	mov r0, r4
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0211ABC8
	ldrh r0, [r0, #0x26]
	cmp r8, r0
	bne _0211ABC8
	cmp r7, #0
	strne r5, [r7]
	ldrh r0, [r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ABC8:
	ldr r0, [r9, #0x148]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #4
	blt _0211AB90
_0211ABDC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ABE4: .word unk_0209BA20
	arm_func_end FUN_ov67_0211ab68

	arm_func_start FUN_ov67_0211abe8
FUN_ov67_0211abe8: ; 0x0211ABE8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	mov r6, r1
	add r3, sp, #8
	mov r5, r2
	mov r1, #4
	mov r0, #0
_0211AC04:
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	add r3, r3, #8
	subs r1, r1, #1
	bne _0211AC04
	ldr r0, _0211ACF4 ; =0x0209A454
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	movne r1, #2
	bne _0211AC3C
	bl FUN_ov16_020f081c
	mov r1, r0
_0211AC3C:
	add r8, sp, #8
	mov r4, #0
	ldr r0, _0211ACF8 ; =0x0209BA20
	mov r2, r8
	str r4, [sp]
	mov r7, #0x82
	mov r3, #0x10
	str r7, [sp, #4]
	bl FUN_0204b540
	mov r9, r0
	cmp r9, #0
	addle sp, sp, #0x28
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ble _0211ACE0
	mov r7, r4
_0211AC7C:
	mov r0, r4, lsl #1
	ldrh r0, [r8, r0]
	mov r1, r7
	bl FUN_ov16_020efa9c
	movs r10, r0
	beq _0211ACD4
	cmp r6, #0
	beq _0211ACA8
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0211ACC0
_0211ACA8:
	cmp r6, #0
	bne _0211ACD4
	mov r0, r10
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0211ACD4
_0211ACC0:
	add r0, sp, #8
	mov r1, r4, lsl #1
	add sp, sp, #0x28
	ldrh r0, [r0, r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211ACD4:
	add r4, r4, #1
	cmp r4, r9
	blt _0211AC7C
_0211ACE0:
	mov r0, #0
	cmp r5, #0
	ldreqh r0, [sp, #8]
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211ACF4: .word unk_0209A454
_0211ACF8: .word unk_0209BA20
	arm_func_end FUN_ov67_0211abe8

	arm_func_start FUN_ov67_0211acfc
FUN_ov67_0211acfc: ; 0x0211ACFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r4, r1
	add r3, sp, #8
	mov r9, r2
	mov r1, #4
	mov r0, #0
_0211AD18:
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	add r3, r3, #8
	subs r1, r1, #1
	bne _0211AD18
	ldr r0, _0211AE18 ; =0x0209A454
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	movne r1, #2
	bne _0211AD50
	bl FUN_ov16_020f081c
	mov r1, r0
_0211AD50:
	add r5, sp, #8
	mov r6, #0
	ldr r0, _0211AE1C ; =0x0209BA20
	mov r2, r5
	str r6, [sp]
	mov r7, #0x82
	mov r3, #0x10
	str r7, [sp, #4]
	bl FUN_0204b540
	mov r7, r0
	cmp r7, #0
	ble _0211ADA0
_0211AD80:
	mov r0, r6, lsl #1
	ldrh r0, [r5, r0]
	cmp r4, r0
	moveq r8, r6
	beq _0211ADA0
	add r6, r6, #1
	cmp r6, r7
	blt _0211AD80
_0211ADA0:
	cmp r6, r7
	movge r8, #0
	cmp r9, #0
	addeq r0, sp, #8
	moveq r1, r8, lsl #1
	addeq sp, sp, #0x28
	ldreqh r0, [r0, r1]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mvnlt r6, #0
	movge r6, #1
	cmp r7, #0
	mov r5, #0
	ble _0211AE0C
	add r9, sp, #8
_0211ADD8:
	add r0, r8, r7
	mov r1, r7
	add r0, r6, r0
	bl _s32_div_f
	mov r8, r1
	mov r0, r8, lsl #1
	ldrh r0, [r9, r0]
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, r5, #1
	cmp r5, r7
	blt _0211ADD8
_0211AE0C:
	mov r0, r4
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AE18: .word unk_0209A454
_0211AE1C: .word unk_0209BA20
	arm_func_end FUN_ov67_0211acfc

	arm_func_start FUN_ov67_0211ae20
FUN_ov67_0211ae20: ; 0x0211AE20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r3, r5, #0x100
	mov r2, r1
	ldrh r1, [r3, #0x40]
	bl FUN_ov67_0211acfc
	add r1, r5, #0x100
	mov r4, r0
	ldrh r0, [r1, #0x40]
	cmp r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #0
	mov r1, r7
	bl FUN_ov16_020efa9c
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020efa9c
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_0206d6d8
	mov r6, r0
	mov r0, r7
	bl FUN_0206d6d8
	cmp r6, r0
	beq _0211AEA4
	ldrb r1, [r5, #0x159]
	mov r0, r5
	eor r1, r1, #1
	strb r1, [r5, #0x159]
	bl FUN_ov67_0211b564
_0211AEA4:
	add r0, r5, #0x100
	ldrh r2, [r0, #0x54]
	mov r0, r5
	mov r1, r4
	bl FUN_ov67_02119f84
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_0211ae20

	arm_func_start FUN_ov67_0211aebc
FUN_ov67_0211aebc: ; 0x0211AEBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	mov r8, r0
	ldrb r2, [r8, #0x159]
	mov r5, #0
	eor r1, r2, #1
	cmp r2, #0
	addne r0, r8, #0x100
	strb r1, [r8, #0x159]
	ldrneh r5, [r0, #0x42]
	bne _0211AF98
	ldr r1, _0211AFC4 ; =0x0209A454
	ldrb r1, [r1, #0x31]
	cmp r1, #0
	bne _0211AF0C
	mov r1, #1
	mov r2, r1
	bl FUN_ov67_0211abe8
	mov r5, r0
	b _0211AF98
_0211AF0C:
	add r4, sp, #8
	mov r1, r5
	mov r0, r4
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r0, _0211AFC8 ; =0x0209BA20
	mov r2, r4
	str r5, [sp]
	mov r6, #0x82
	mov r1, #2
	mov r3, #0x10
	str r6, [sp, #4]
	bl FUN_0204b540
	mov r6, r0
	mov r7, r5
	cmp r6, #0
	ble _0211AF98
	mov r10, r5
_0211AF54:
	mov r0, r7, lsl #1
	ldrh r0, [r4, r0]
	mov r1, r10
	bl FUN_ov16_020efa9c
	movs r9, r0
	beq _0211AF8C
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211AF8C
	mov r0, r9
	bl FUN_0206d8c8
	cmp r0, #1
	ldreqh r5, [r9, #0x4e]
	beq _0211AF98
_0211AF8C:
	add r7, r7, #1
	cmp r7, r6
	blt _0211AF54
_0211AF98:
	cmp r5, #0
	beq _0211AFB4
	add r0, r8, #0x100
	ldrh r2, [r0, #0x54]
	mov r0, r8
	mov r1, r5
	bl FUN_ov67_02119f84
_0211AFB4:
	mov r0, r8
	bl FUN_ov67_0211b564
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AFC4: .word unk_0209A454
_0211AFC8: .word unk_0209BA20
	arm_func_end FUN_ov67_0211aebc

	arm_func_start FUN_ov67_0211afcc
FUN_ov67_0211afcc: ; 0x0211AFCC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211B058 ; =0x0209BA20
	bl FUN_0207249c
	mov r4, r0
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x1e
	bne _0211B010
	mov r0, r5
	bl FUN_ov67_0211b090
	cmp r0, #0
	movne r0, #1
	strneb r0, [r5, #0x1d4]
	bne _0211B038
_0211B010:
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0xf
	bne _0211B038
	mov r0, r5
	bl FUN_ov67_0211b090
	cmp r0, #0
	ldrne r0, [r5, #4]
	movne r1, #1
	strneb r1, [r0, #0x8a]
_0211B038:
	add r0, r5, #0x100
	ldrh r1, [r0, #0x54]
	strh r1, [r4, #0x40]
	ldrh r0, [r0, #0x56]
	strh r0, [r4, #0x28]
	ldrb r0, [r5, #0x158]
	strb r0, [r4, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B058: .word unk_0209BA20
	arm_func_end FUN_ov67_0211afcc

	arm_func_start FUN_ov67_0211b05c
FUN_ov67_0211b05c: ; 0x0211B05C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211B08C ; =0x0209BA20
	bl FUN_0207249c
	add r1, r4, #0x100
	ldrh r1, [r1, #0x56]
	strh r1, [r0, #0x28]
	ldrb r1, [r4, #0x158]
	strb r1, [r0, #0x2c]
	ldmfd sp!, {r4, pc}
_0211B08C: .word unk_0209BA20
	arm_func_end FUN_ov67_0211b05c

	arm_func_start FUN_ov67_0211b090
FUN_ov67_0211b090: ; 0x0211B090
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211B0C4 ; =0x0209BA20
	bl FUN_0207249c
	add r1, r4, #0x100
	ldrh r2, [r0, #0x40]
	ldrh r0, [r1, #0x54]
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0211B0C4: .word unk_0209BA20
	arm_func_end FUN_ov67_0211b090

	arm_func_start FUN_ov67_0211b0c8
FUN_ov67_0211b0c8: ; 0x0211B0C8
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov67_0211b0e4
	tst r4, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_0211b0c8

	arm_func_start FUN_ov67_0211b0e4
FUN_ov67_0211b0e4: ; 0x0211B0E4
	add r0, r0, #0x100
	ldrh r1, [r0, #0x52]
	ldrh r2, [r0, #0x50]
	mvn r0, r1
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov67_0211b0e4

	arm_func_start FUN_ov67_0211b104
FUN_ov67_0211b104: ; 0x0211B104
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r2, r4
	mov r5, r0
	bl FUN_ov67_0211b6a4
	cmp r0, #0
	beq _0211B130
	ldr r1, [r0]
	mov r0, r5
	bl FUN_ov67_0211b138
	mov r4, r0
_0211B130:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov67_0211b104

	arm_func_start FUN_ov67_0211b138
FUN_ov67_0211b138: ; 0x0211B138
	stmfd sp!, {r3, lr}
	bl FUN_ov67_0211a998
	cmp r0, #0
	ldrneh r0, [r0]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov67_0211b138

	arm_func_start FUN_ov67_0211b150
FUN_ov67_0211b150: ; 0x0211B150
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov67_0211b6e8
	add r1, r4, #0x100
	mov r2, #0
	strh r2, [r1, #0x52]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0]
	mov r0, r4
	bl FUN_ov67_0211a998
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r0, #2]
	cmp r0, #2
	addeq r0, r4, #0x100
	ldreqh r1, [r0, #0x52]
	orreq r1, r1, #1
	streqh r1, [r0, #0x52]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_0211b150

	arm_func_start FUN_ov67_0211b1a0
FUN_ov67_0211b1a0: ; 0x0211B1A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bmi _0211B1C4
	cmp r6, #0xc
	blt _0211B1D0
_0211B1C4:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B1D0:
	cmp r5, #0xe
	addhs sp, sp, #0x14
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, r6, lsl #2
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	bne _0211B20C
	ldr r0, _0211B29C ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	add r1, r7, r6, lsl #2
	str r0, [r1, #0x5c]
_0211B20C:
	add r0, r7, r6, lsl #2
	ldr r6, _0211B29C ; =0x02099F38
	ldr r8, [r0, #0x5c]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
	add r0, r7, r5, lsl #2
	ldr r2, [r0, #0x20]
	ldr r0, [r6]
	mov r1, r8
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211346c
	mov r0, r7
	mov r1, r8
	ldr r3, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r3, [sp]
	str r2, [sp, #4]
	ldrh r4, [sp, #0x40]
	ldrb r3, [sp, #0x44]
	ldrb r2, [sp, #0x48]
	str r4, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl FUN_ov67_0211b2a0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B29C: .word unk_02099F38
	arm_func_end FUN_ov67_0211b1a0

	arm_func_start FUN_ov67_0211b2a0
FUN_ov67_0211b2a0: ; 0x0211B2A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r4, _0211B350 ; =0x02099F38
	mov r7, r2
	ldr r0, [r4]
	mov r5, #1
	mov r6, r3
	mov r3, r5
	mov r2, #2
	mov r8, r1
	bl FUN_ov16_021142fc
	ldr r0, [r4]
	mov r1, r8
	sub r3, r5, #2
	mov r2, #0x168
	bl FUN_ov16_02112c90
	mov r1, r7, lsl #0x10
	mov r2, r1, asr #0x10
	mov r1, r6, lsl #0x10
	mov r3, r1, asr #0x10
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov16_02114248
	ldr r2, [sp, #0x24]
	ldr r0, _0211B354 ; =0x02099EB4
	str r2, [sp]
	ldr r2, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r2, lsl #0x10
	mov r1, r5
	mov r3, r8
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fbe8
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r3, [sp, #0x2c]
	ldrb r2, [sp, #0x30]
	ldrh r1, [sp, #0x28]
	strb r3, [r0, #0x10]
	strb r2, [r0, #0xf]
	strh r1, [r0, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B350: .word unk_02099F38
_0211B354: .word unk_02099EB4
	arm_func_end FUN_ov67_0211b2a0

	arm_func_start FUN_ov67_0211b358
FUN_ov67_0211b358: ; 0x0211B358
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r1, #0x90
	str r1, [sp]
	mov r6, #1
	mov r1, #0xa8
	stmib sp, {r1, r6}
	mov r1, #0xa
	str r1, [sp, #0xc]
	mov r4, #0
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r1, r6
	mov r2, r6
	mov r3, r4
	mov r7, r0
	str r4, [sp, #0x18]
	bl FUN_ov67_0211b1a0
	movs r5, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r4
	mov r2, r6
	mov r3, r4
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r6
	add r0, r5, #0x3e
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r4
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_0210e720
	mov r0, r7
	bl FUN_ov67_0211c530
	cmp r0, #1
	moveq r6, r4
	strb r6, [r5, #0x10]
	tst r6, #0xff
	beq _0211B434
	ldr r0, _0211B450 ; =0x02099F38
	ldr r1, [r7, #0x60]
	ldr r0, [r0]
	ldr r2, _0211B454 ; =0x00004210
	bl FUN_ov16_02114204
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B434:
	ldr r0, _0211B450 ; =0x02099F38
	ldr r1, [r7, #0x60]
	ldr r0, [r0]
	ldr r2, _0211B458 ; =0x00007FFF
	bl FUN_ov16_02114204
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B450: .word unk_02099F38
_0211B454: .word 0x00004210
_0211B458: .word 0x00007FFF
	arm_func_end FUN_ov67_0211b358

	arm_func_start FUN_ov67_0211b45c
FUN_ov67_0211b45c: ; 0x0211B45C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r1, #0xd0
	str r1, [sp]
	mov r2, #0xa8
	str r2, [sp, #4]
	mov r1, #2
	mov r4, #0
	str r1, [sp, #8]
	mov r2, #0xa
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r2, r1
	mov r3, r4
	mov r7, r0
	str r4, [sp, #0x18]
	bl FUN_ov67_0211b1a0
	movs r5, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r6, #1
	mov r1, r4
	mov r2, r6
	mov r3, r4
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r6
	add r0, r5, #0x3e
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r4
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_0210e720
	mov r0, r7
	bl FUN_ov67_0211c530
	cmp r0, #1
	moveq r6, r4
	strb r6, [r5, #0x10]
	tst r6, #0xff
	beq _0211B53C
	ldr r0, _0211B558 ; =0x02099F38
	ldr r1, [r7, #0x64]
	ldr r0, [r0]
	ldr r2, _0211B55C ; =0x00004210
	bl FUN_ov16_02114204
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B53C:
	ldr r0, _0211B558 ; =0x02099F38
	ldr r1, [r7, #0x64]
	ldr r0, [r0]
	ldr r2, _0211B560 ; =0x00007FFF
	bl FUN_ov16_02114204
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B558: .word unk_02099F38
_0211B55C: .word 0x00004210
_0211B560: .word 0x00007FFF
	arm_func_end FUN_ov67_0211b45c

	arm_func_start FUN_ov67_0211b564
FUN_ov67_0211b564: ; 0x0211B564
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr r6, [r7, #0x68]
	cmp r6, #0
	bne _0211B5D0
	ldr r4, _0211B688 ; =0x02099F38
	mov r8, #2
	mov r5, #1
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02112724
	mov r6, r0
	str r6, [r7, #0x68]
	ldr r3, [r7, #0x3c]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r3, [r7, #0x34]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
_0211B5D0:
	ldrb r0, [r7, #0x159]
	mov r1, #0
	mov r4, #1
	cmp r0, #0
	str r1, [sp]
	ldr r0, _0211B688 ; =0x02099F38
	mov r3, #2
	ldr r0, [r0]
	moveq r3, #1
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_0211401c
	ldrb r0, [r7, #0x159]
	mov r5, #0
	mov r9, #2
	cmp r0, #0
	movne r4, #2
	ldr r8, _0211B688 ; =0x02099F38
	str r5, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r9
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r4, #0xa8
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_02113b78
	mov r0, #3
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x400
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r5, [sp, #0x10]
	bl FUN_ov67_0211b2a0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211B688: .word unk_02099F38
	arm_func_end FUN_ov67_0211b564

	arm_func_start FUN_ov67_0211b68c
FUN_ov67_0211b68c: ; 0x0211B68C
	cmp r1, #1
	cmpne r1, #2
	cmpne r1, #3
	moveq r0, #0
	mvnne r0, #0
	bx lr
	arm_func_end FUN_ov67_0211b68c

	arm_func_start FUN_ov67_0211b6a4
FUN_ov67_0211b6a4: ; 0x0211B6A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov67_0211b68c
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	add r2, r6, #0x8c
	mov r1, #0xa4
	mla r0, r1, r0, r2
	ldr r1, [r0, #0x1c]
	cmp r1, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov67_0211b6a4

	arm_func_start FUN_ov67_0211b6e8
FUN_ov67_0211b6e8: ; 0x0211B6E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov67_0211c530
	mov r1, r0
	mov r0, r4
	mov r2, #0
	bl FUN_ov67_0211b6a4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_0211b6e8

	arm_func_start FUN_ov67_0211b708
FUN_ov67_0211b708: ; 0x0211B708
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	bl FUN_ov67_0211c530
	mov r1, r0
	mov r0, r5
	bl FUN_ov67_0211b68c
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r5, #0x8c
	mov r0, #0xa4
	mla r10, r4, r0, r1
	mov r8, #0
	ldr r7, _0211B7CC ; =0x00007FFF
	ldr r6, _0211B7D0 ; =0x02099F38
	b _0211B764
_0211B744:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B760
	ldr r0, [r6]
	mov r2, r7
	bl FUN_ov16_02114204
_0211B760:
	add r8, r8, #1
_0211B764:
	cmp r8, #0x10
	blt _0211B744
	sub r9, r4, #1
	add r7, r5, #0x8c
	ldr r6, _0211B7D4 ; =0x00004210
	mov r11, #0
	ldr r5, _0211B7D0 ; =0x02099F38
	mov r4, #0xa4
	b _0211B7C0
_0211B788:
	mla r10, r9, r4, r7
	mov r8, r11
	b _0211B7B4
_0211B794:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B7B0
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114204
_0211B7B0:
	add r8, r8, #1
_0211B7B4:
	cmp r8, #0x10
	blt _0211B794
	sub r9, r9, #1
_0211B7C0:
	cmp r9, #0
	bge _0211B788
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B7CC: .word 0x00007FFF
_0211B7D0: .word unk_02099F38
_0211B7D4: .word 0x00004210
	arm_func_end FUN_ov67_0211b708

	arm_func_start FUN_ov67_0211b7d8
FUN_ov67_0211b7d8: ; 0x0211B7D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov67_0211b68c
	add r6, r0, #1
	cmp r6, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r7, #0x8c
	mov r4, #0xa4
_0211B7F8:
	mla r1, r6, r4, r5
	mov r0, r7
	bl FUN_ov67_0211b814
	add r6, r6, #1
	cmp r6, #1
	blt _0211B7F8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_0211b7d8

	arm_func_start FUN_ov67_0211b814
FUN_ov67_0211b814: ; 0x0211B814
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211B888 ; =0x02099F38
	b _0211B844
_0211B828:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B840
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211B840:
	add r5, r5, #1
_0211B844:
	cmp r5, #0x10
	blt _0211B828
	ldr r1, [r6, #0x60]
	cmp r1, #0
	ble _0211B864
	ldr r0, _0211B888 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211B864:
	mov r4, #0xa4
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_0211B888: .word unk_02099F38
	arm_func_end FUN_ov67_0211b814

	arm_func_start FUN_ov67_0211b88c
FUN_ov67_0211b88c: ; 0x0211B88C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r7, r1
	ldr r1, [r7, #0x1c]
	mov r8, r0
	cmp r1, #1
	ldreq r0, [r7]
	mov r5, #0
	streq r0, [sp, #8]
	mov r0, r8
	mov r1, r7
	strne r5, [sp, #8]
	bl FUN_ov67_0211b814
	mov r0, #1
	str r0, [r7, #0x1c]
	ldr r10, [r8, #0x148]
	mov r6, #0x10
	mov r0, #8
	mov r9, #0x70
	smulbb r2, r6, r0
	ldr r1, [r7, #0x60]
	sub r2, r2, #0x40
	mov r4, #0x20
	mov lr, #0x154
	mov r12, #0x80
	mov r3, #0x30
	sub r2, r2, #0x20
	str r10, [r7, #4]
	str lr, [r7, #0xa0]
	str r0, [r7, #8]
	strh r12, [r7, #0x6e]
	strh r0, [r7, #0x70]
	strh r9, [r7, #0x8e]
	strh r6, [r7, #0x90]
	strh r6, [r7, #0x9a]
	strh r4, [r7, #0x9c]
	strh r9, [r7, #0x92]
	strh r3, [r7, #0x94]
	strh r5, [r7, #0x96]
	strh r2, [r7, #0x98]
	cmp r1, #0
	bne _0211B960
	ldr r4, _0211BA4C ; =0x02099F38
	mov r1, #5
	ldr r0, [r4]
	mov r2, #4
	bl FUN_02059630
	mov r1, r0
	str r1, [r7, #0x60]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211B960:
	add r4, sp, #4
	mov r6, #0
	mov r0, r8
	mov r1, r7
	mov r2, r4
	str r6, [sp, #4]
	bl FUN_ov67_0211bad4
	mov r9, #0x14
	b _0211B9C0
_0211B984:
	ldrsh r1, [r7, #0x6e]
	add r12, r7, r6, lsl #2
	mov r0, r8
	strh r1, [r12, #0x72]
	ldrsh r3, [r7, #0x70]
	ldrsh r2, [r7, #0x90]
	mov r1, r7
	add r3, r3, #0x10
	mla r2, r6, r2, r3
	strh r2, [r12, #0x74]
	mov r2, r4
	mov r3, r6
	str r9, [sp]
	bl FUN_ov67_0211bb68
	add r6, r6, #1
_0211B9C0:
	ldr r0, [r7, #8]
	cmp r6, r0
	blt _0211B984
	add r4, sp, #4
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov67_0211bd3c
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov67_0211bde0
	add r0, r8, #0x100
	ldrh r1, [r0, #0x54]
	add r2, sp, #8
	mov r0, r8
	bl FUN_ov67_0211ab68
	cmp r0, #0
	streq r5, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, r7
	bl FUN_ov16_020f52f4
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov67_0211c810
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov67_0211c964
	mov r0, r8
	mov r1, r7
	bl FUN_ov67_0211c4dc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211BA4C: .word unk_02099F38
	arm_func_end FUN_ov67_0211b88c

	arm_func_start FUN_ov67_0211ba50
FUN_ov67_0211ba50: ; 0x0211BA50
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
	ldr r0, _0211BAD0 ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x65]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x64]
	ldr r1, [r5]
	add r2, r6, #0x65
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BAD0: .word unk_02099F38
	arm_func_end FUN_ov67_0211ba50

	arm_func_start FUN_ov67_0211bad4
FUN_ov67_0211bad4: ; 0x0211BAD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, #0
	mov r4, #1
	mov r3, r5
	mov r7, r0
	mov r6, r1
	str r4, [sp]
	bl FUN_ov67_0211ba50
	movs r4, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0xa0]
	ldr r8, _0211BB64 ; =0x02099F38
	mov r2, r0, lsl #0x10
	ldr r0, [r8]
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r2, [r6, #0x6e]
	ldrsh r3, [r6, #0x70]
	ldr r0, [r8]
	mov r1, r4
	bl FUN_ov16_02114248
	ldr r2, [r7, #0x38]
	ldr r0, [r8]
	mov r1, r4
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0211346c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BB64: .word unk_02099F38
	arm_func_end FUN_ov67_0211bad4

	arm_func_start FUN_ov67_0211bb68
FUN_ov67_0211bb68: ; 0x0211BB68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r9, r3
	mov r11, #2
	mov r3, #1
	mov r5, r0
	mov r10, r1
	str r11, [sp]
	mov r7, #0
	bl FUN_ov67_0211ba50
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, r9, lsl #2
	ldr r4, _0211BD24 ; =0x02099F38
	ldr r8, [r10, #0xa0]
	ldrsh r2, [r0, #0x72]
	ldrsh r3, [r0, #0x74]
	ldr r0, [r4]
	mov r1, r6
	sub r8, r8, #5
	bl FUN_ov16_02114248
	ldr r1, [r5, #0x44]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r6
	mov r2, #1
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, #1
	mov r3, r7
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r6
	mov r2, #1
	mov r3, r11
	bl FUN_ov16_02113f7c
	add r3, r8, #1
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r2, #1
	mov r1, r6
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r11
	mov r3, #6
	bl FUN_ov16_02113b78
	ldr r3, [r10, #0x60]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r11
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0xc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r11
	mov r3, #0x80
	bl FUN_ov16_02113d08
	mul r0, r9, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r11
	mov r3, r7
	bl FUN_ov16_02113d88
	mov r1, r8, lsl #0x10
	mov r3, r1, lsr #0x10
	ldr r0, [r4]
	mov r2, r11
	mov r1, r6
	bl FUN_ov16_021139bc
	add r3, r10, r9, lsl #2
	ldrsh r5, [r3, #0x74]
	add r0, r9, #6
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r4, #0x65
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	ldr r4, [sp, #0x38]
	ldr r0, _0211BD28 ; =0x02099EB4
	str r4, [sp, #0xc]
	ldrsh r3, [r3, #0x72]
	ldr r0, [r0]
	mov r1, #3
	add r3, r3, #0xa
	bl FUN_ov16_0210fba4
	strh r6, [r0, #0x34]
	ldr r2, _0211BD2C ; =FUN_ov16_0210f940
	strb r7, [r0, #0x38]
	str r2, [r0, #0x1c]
	ldr r1, _0211BD30 ; =FUN_ov16_0210fa20
	ldr r2, _0211BD34 ; =FUN_ov16_0210fb10
	str r1, [r0, #0x20]
	ldr r1, _0211BD38 ; =FUN_ov16_0210fb1c
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BD24: .word unk_02099F38
_0211BD28: .word unk_02099EB4
_0211BD2C: .word FUN_ov16_0210f940
_0211BD30: .word FUN_ov16_0210fa20
_0211BD34: .word FUN_ov16_0210fb10
_0211BD38: .word FUN_ov16_0210fb1c
	arm_func_end FUN_ov67_0211bb68

	arm_func_start FUN_ov67_0211bd3c
FUN_ov67_0211bd3c: ; 0x0211BD3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #3
	mov r4, #2
	mov r3, r7
	mov r5, r0
	mov r6, r1
	str r4, [sp]
	bl FUN_ov67_0211ba50
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xa0]
	ldr r6, _0211BDDC ; =0x02099F38
	sub r0, r0, #0xa
	mov r2, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r4
	mov r2, r2, lsr #0x10
	sub r3, r7, #4
	bl FUN_ov16_02112c90
	ldr r3, [r5, #0x48]
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r1, r4
	mov r2, r7
	str r5, [sp]
	ldr r0, [r6]
	mov r3, r5
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BDDC: .word unk_02099F38
	arm_func_end FUN_ov67_0211bd3c

	arm_func_start FUN_ov67_0211bde0
FUN_ov67_0211bde0: ; 0x0211BDE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #1
	mov r3, #2
	mov r8, r0
	mov r7, r1
	mov r6, r2
	str r5, [sp]
	bl FUN_ov67_0211ba50
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r9, _0211C334 ; =0x02099F38
	ldr r2, [r8, #0x30]
	ldr r0, [r9]
	mov r1, r4
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r9]
	mov r1, r4
	mov r3, r2
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa0]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r11, [r7, #0x6e]
	ldrsh r2, [r7, #0x92]
	ldrsh r10, [r7, #0x70]
	ldrsh r3, [r7, #0x94]
	add r2, r11, r2
	mov r2, r2, lsl #0x10
	add r3, r10, r3
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r4
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	mov r3, r4
	mov r4, #0x14
	ldr r11, _0211C338 ; =0x02099EB4
	str r4, [sp]
	ldr r0, [r11]
	mov r1, #3
	mov r2, #0x12
	bl FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e720
	strb r5, [r10, #0x12]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #2
	str r5, [sp]
	bl FUN_ov67_0211ba50
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x2c]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r9]
	mov r1, r10
	mov r3, r2
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa0]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r3, [r7, #0x70]
	ldrsh r2, [r7, #0x94]
	ldrsh lr, [r7, #0x6e]
	ldrsh r12, [r7, #0x92]
	add r3, r3, r2
	sub r3, r3, #0x20
	add r12, lr, r12
	mov r12, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r10
	mov r2, r12, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	str r4, [sp]
	ldr r0, [r11]
	mov r3, r10
	mov r1, #3
	mov r2, #0xe
	bl FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #2
	str r5, [sp]
	bl FUN_ov67_0211ba50
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x2c]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r10
	mov r2, #2
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa0]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r3, [r7, #0x70]
	ldrsh r2, [r7, #0x94]
	ldrsh lr, [r7, #0x6e]
	ldrsh r12, [r7, #0x92]
	add r3, r3, r2
	sub r3, r3, #0x10
	add r12, lr, r12
	mov r12, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r10
	mov r2, r12, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	str r4, [sp]
	ldr r0, [r11]
	mov r3, r10
	mov r1, #3
	mov r2, #0xf
	bl FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, #2
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, #3
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #2
	str r5, [sp]
	bl FUN_ov67_0211ba50
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x2c]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r10
	mov r2, #4
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa0]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r3, [r7, #0x6e]
	ldrsh r2, [r7, #0x92]
	ldrsh r12, [r7, #0x70]
	ldrsh lr, [r7, #0x98]
	add r2, r3, r2
	ldrsh r3, [r7, #0x94]
	mov r2, r2, lsl #0x10
	ldr r0, [r9]
	add r3, r12, r3
	add r3, lr, r3
	add r3, r3, #0x20
	mov r3, r3, lsl #0x10
	mov r1, r10
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	str r4, [sp]
	ldr r0, [r11]
	mov r3, r10
	mov r1, #3
	mov r2, #0x10
	bl FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, #4
	add r0, r10, #0x3a
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, #5
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r2, r6
	mov r3, #2
	mov r0, r8
	mov r1, r7
	str r5, [sp]
	bl FUN_ov67_0211ba50
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x2c]
	ldr r0, [r9]
	mov r1, r6
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r8, #6
	ldr r0, [r9]
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa0]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r0, [r9]
	ldrsh r10, [r7, #0x6e]
	ldrsh r2, [r7, #0x92]
	ldrsh r3, [r7, #0x98]
	ldrsh r9, [r7, #0x70]
	ldrsh r7, [r7, #0x94]
	add r2, r10, r2
	mov r2, r2, lsl #0x10
	add r7, r9, r7
	add r3, r3, r7
	add r3, r3, #0x30
	mov r3, r3, lsl #0x10
	mov r1, r6
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	str r4, [sp]
	ldr r0, [r11]
	mov r1, #3
	mov r3, r6
	mov r2, #0x11
	bl FUN_ov16_0210fbe8
	mov r4, r0
	mov r1, #0
	add r0, r4, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, r8
	add r0, r4, #0x3a
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	mov r2, r5
	add r0, r4, #0x3e
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r4, #0x3e
	mov r3, r1
	mov r2, #7
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C334: .word unk_02099F38
_0211C338: .word unk_02099EB4
	arm_func_end FUN_ov67_0211bde0

	arm_func_start FUN_ov67_0211c33c
FUN_ov67_0211c33c: ; 0x0211C33C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	ldr r0, [r8, #0x1d8]
	ldr r1, _0211C478 ; =0x00000136
	bl FUN_ov16_02110864
	mov r7, #2
	ldr r0, [r8, #0x1d8]
	mov r1, r7
	mov r2, #0x13
	mov r3, #0x14
	bl FUN_ov16_02110830
	ldr r0, [r8, #0x1d8]
	mov r1, #0x1e
	bl FUN_ov16_0211085c
	mov r6, #0
	ldr r0, [r8, #0x1d8]
	ldr r2, [r8, #0x4c]
	mov r1, r6
	bl FUN_ov16_02110624
	mov r5, #1
	str r5, [sp]
	sub r4, r5, #2
	str r4, [sp, #4]
	ldr r0, [r8, #0x1d8]
	ldr r3, [r8, #0x4c]
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_021107a0
	str r6, [sp]
	str r4, [sp, #4]
	ldr r0, [r8, #0x1d8]
	ldr r3, [r8, #0x50]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_021107a0
	str r5, [sp]
	str r4, [sp, #4]
	ldr r0, [r8, #0x1d8]
	ldr r3, [r8, #0x50]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_021107a0
	str r7, [sp]
	str r4, [sp, #4]
	ldr r0, [r8, #0x1d8]
	ldr r3, [r8, #0x4c]
	mov r2, r6
	mov r1, r7
	bl FUN_ov16_021107a0
	str r7, [sp]
	str r4, [sp, #4]
	ldr r0, [r8, #0x1d8]
	ldr r3, [r8, #0x50]
	mov r2, r5
	mov r1, r7
	bl FUN_ov16_021107a0
	mov r0, #3
	stmia sp, {r0, r4}
	ldr r0, [r8, #0x1d8]
	ldr r3, [r8, #0x50]
	mov r1, r7
	mov r2, r7
	bl FUN_ov16_021107a0
	ldr r0, [r8, #0x1d8]
	mov r1, #0x20
	mov r2, #0x60
	bl FUN_ov16_021108b4
	mov r4, #0x88
	ldr r0, [r8, #0x1d8]
	mov r2, r4
	mov r1, #0x38
	bl FUN_ov16_021108c0
	ldr r0, [r8, #0x1d8]
	mov r2, r4
	mov r1, #0x98
	bl FUN_ov16_021108cc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C478: .word 0x00000136
	arm_func_end FUN_ov67_0211c33c

	arm_func_start FUN_ov67_0211c47c
FUN_ov67_0211c47c: ; 0x0211C47C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrb r3, [r1, #0x66]
	ldr r12, [r1, #0xc]
	add r3, r3, r2
	add r3, r1, r3, lsl #2
	add r1, r12, r2
	ldr r4, [r3, #0x20]
	bl FUN_ov67_0211a998
	cmp r0, #0
	ldrneh r0, [r0]
	mov r2, #2
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	str r1, [sp]
	ldr r0, _0211C4D8 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r3, r2
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211C4D8: .word unk_02099F38
	arm_func_end FUN_ov67_0211c47c

	arm_func_start FUN_ov67_0211c4dc
FUN_ov67_0211c4dc: ; 0x0211C4DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	bl FUN_ov67_0211a794
	ldr r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0211C4FC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov67_0211c47c
	ldr r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _0211C4FC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov67_0211c4dc

	arm_func_start FUN_ov67_0211c520
FUN_ov67_0211c520: ; 0x0211C520
	mov r2, #4
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov67_0211c520

	arm_func_start FUN_ov67_0211c530
FUN_ov67_0211c530: ; 0x0211C530
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov67_0211c530

	arm_func_start FUN_ov67_0211c538
FUN_ov67_0211c538: ; 0x0211C538
	ldr r2, _0211C560 ; =0x0209A454
	ldrb r2, [r2, #0x29]
	cmp r2, #0
	cmpne r1, #0
	movne r0, #0
	moveq r2, #6
	streq r2, [r0, #0xc]
	streq r1, [r0, #8]
	moveq r0, #1
	bx lr
_0211C560: .word unk_0209A454
	arm_func_end FUN_ov67_0211c538

	arm_func_start FUN_ov67_0211c564
FUN_ov67_0211c564: ; 0x0211C564
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x1d8]
	bl FUN_ov16_021109a0
	ldr r5, _0211C68C ; =0x02099EB4
	mov r6, #3
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov16_0210eb3c
	mov r0, r4
	bl FUN_ov67_0211c530
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211b7d8
	mov r0, r4
	bl FUN_ov67_0211c530
	cmp r0, #1
	beq _0211C5C0
	cmp r0, #2
	cmpne r0, #3
	beq _0211C5DC
	b _0211C63C
_0211C5C0:
	ldr r0, [r5]
	mov r1, #0xa
	bl FUN_ov16_0210ee78
	add r1, r6, #0x430
	add r0, r4, #0x100
	strh r1, [r0, #0x50]
	b _0211C63C
_0211C5DC:
	ldr r0, _0211C68C ; =0x02099EB4
	mov r1, #0x1e
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
	mov r0, r4
	add r1, r4, #0x100
	mov r2, #0x33
	strh r2, [r1, #0x50]
	bl FUN_ov67_0211c33c
	mov r0, r4
	bl FUN_ov67_0211c530
	mov r5, #1
	ldr r2, _0211C690 ; =0x021223D0
	cmp r0, #2
	str r5, [sp]
	ldrne r2, _0211C694 ; =0x021223F8
	ldr r0, [r4, #0x1d8]
	mov r3, r5
	mov r1, #2
	bl FUN_ov16_02110938
	ldr r0, [r4, #0x1d8]
	mov r1, r5
	mov r2, #0
	bl FUN_ov16_02110a04
_0211C63C:
	mov r0, r4
	bl FUN_ov67_0211c530
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl FUN_ov67_0211b6a4
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211b88c
	mov r0, r4
	bl FUN_ov67_0211b708
	mov r0, r4
	bl FUN_ov67_0211b150
	mov r0, r4
	bl FUN_ov67_0211b0e4
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211c698
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C68C: .word unk_02099EB4
_0211C690: .word ov67_021223D0
_0211C694: .word ov67_021223F8
	arm_func_end FUN_ov67_0211c564

	arm_func_start FUN_ov67_0211c698
FUN_ov67_0211c698: ; 0x0211C698
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r4, r1
	mov r6, r8
	mov r7, #1
	ldr r5, _0211C6FC ; =0x02099EB4
	b _0211C6F0
_0211C6B4:
	mov r0, r7, lsl r8
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r5]
	mov r1, r9
	bl FUN_ov16_0210ebd4
	movs r1, r0
	beq _0211C6EC
	tst r9, r4
	moveq r0, r7
	movne r0, r6
	strb r0, [r1, #0x10]
	ldr r0, [r5]
	bl FUN_ov16_0210ee80
_0211C6EC:
	add r8, r8, #1
_0211C6F0:
	cmp r8, #0x10
	blt _0211C6B4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C6FC: .word unk_02099EB4
	arm_func_end FUN_ov67_0211c698

	arm_func_start FUN_ov67_0211c700
FUN_ov67_0211c700: ; 0x0211C700
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrb r2, [r0, #0x1d5]
	mov r4, r1
	cmp r2, #0
	moveq r1, #1
	streqb r1, [r0, #0x1d5]
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	bl FUN_ov67_0211b0e4
	and r0, r4, r0
	mov r1, r0, lsl #0x10
	ldr r4, _0211C764 ; =0x02099EB4
	add r2, sp, #0
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211C764: .word unk_02099EB4
	arm_func_end FUN_ov67_0211c700

	arm_func_start FUN_ov67_0211c768
FUN_ov67_0211c768: ; 0x0211C768
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x6b]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _0211C79C
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _0211C7A4
_0211C79C:
	mov r0, #0
	str r0, [sp, #0x28]
_0211C7A4:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x6a]
	ldr r0, _0211C808 ; =0x02099ED4
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl FUN_ov16_0210e29c
	ldrb r1, [r4, #0x6a]
	ldr r0, _0211C80C ; =0x02099F38
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r3, #1
	bl FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211C808: .word unk_02099ED4
_0211C80C: .word unk_02099F38
	arm_func_end FUN_ov67_0211c768

	arm_func_start FUN_ov67_0211c810
FUN_ov67_0211c810: ; 0x0211C810
	stmfd sp!, {r3, lr}
	ldr r12, [r1, #0x10]
	cmp r12, #0
	blt _0211C82C
	ldr r3, [r1, #8]
	cmp r12, r3
	blt _0211C858
_0211C82C:
	ldrb r0, [r1, #0x6b]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r3, [r1, #0x6a]
	ldr r0, _0211C874 ; =0x02099F38
	mov r2, #2
	add r1, r1, r3, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	bl FUN_ov16_02114370
	ldmfd sp!, {r3, pc}
_0211C858:
	str r2, [sp]
	ldr r2, [r1, #0x10]
	add r3, r1, r2, lsl #2
	ldrsh r2, [r3, #0x72]
	ldrsh r3, [r3, #0x74]
	bl FUN_ov67_0211c768
	ldmfd sp!, {r3, pc}
_0211C874: .word unk_02099F38
	arm_func_end FUN_ov67_0211c810

	arm_func_start FUN_ov67_0211c878
FUN_ov67_0211c878: ; 0x0211C878
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r9, r1
	ldrb r0, [r9, #0x69]
	mov r8, r2
	mov r7, r3
	cmp r0, #3
	addlo sp, sp, #0x1c
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r9, #4]
	ldr r0, [r9, #8]
	mov r6, #1
	cmp r1, r0
	movle r6, #0
	mov r5, #0
	mov r4, #2
	ldr r10, _0211C958 ; =0x02099F38
	b _0211C8E4
_0211C8C0:
	ldrb r1, [r9, #0x68]
	ldr r0, [r10]
	mov r2, r4
	add r1, r1, r5
	add r1, r9, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r6
	bl FUN_ov16_021142fc
	add r5, r5, #1
_0211C8E4:
	ldrb r0, [r9, #0x69]
	cmp r5, r0
	blt _0211C8C0
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
	ldr r0, _0211C95C ; =0x02099ED4
	mov r2, r1
	add r3, r9, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl FUN_ov16_0210e29c
	ldr r0, _0211C960 ; =0x02099EB4
	mov r2, r8
	ldr r0, [r0]
	mov r3, r7
	mov r1, #0x12
	bl FUN_ov16_0210fd0c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C958: .word unk_02099F38
_0211C95C: .word unk_02099ED4
_0211C960: .word unk_02099EB4
	arm_func_end FUN_ov67_0211c878

	arm_func_start FUN_ov67_0211c964
FUN_ov67_0211c964: ; 0x0211C964
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrsh r3, [r4, #0x98]
	ldr r1, [r4, #0xc]
	mov r5, r0
	mul r0, r3, r1
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	mov r6, r2
	sub r1, r3, r1
	bl _s32_div_f
	str r6, [sp]
	mov lr, r0
	ldrsh r1, [r4, #0x70]
	ldrsh r0, [r4, #0x94]
	ldrsh r12, [r4, #0x6e]
	ldrsh r2, [r4, #0x92]
	add r3, r1, r0
	mov r0, r5
	mov r1, r4
	add r2, r12, r2
	add r3, r3, lr
	bl FUN_ov67_0211c878
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov67_0211c964

	arm_func_start FUN_ov67_0211c9cc
FUN_ov67_0211c9cc: ; 0x0211C9CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r2
	bl FUN_ov16_020f52f4
	mov r4, r0
	tst r4, #1
	beq _0211CA0C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov67_0211c810
_0211CA0C:
	tst r4, #2
	beq _0211CA3C
	mov r0, r7
	mov r1, r6
	bl FUN_ov67_0211c4dc
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _0211CA3C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov67_0211c964
_0211CA3C:
	mov r0, r7
	bl FUN_ov67_0211b150
	mov r0, r7
	bl FUN_ov67_0211b0e4
	mov r1, r0
	mov r0, r7
	bl FUN_ov67_0211c698
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_0211c9cc

	arm_func_start FUN_ov67_0211ca60
FUN_ov67_0211ca60: ; 0x0211CA60
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r1, [r5, #4]
	ldr r12, [r5]
	mov r6, r0
	add r0, r1, r12
	mov r4, r3
	add r0, r2, r0
	bl _s32_div_f
	mov r2, r1
	mov r12, #1
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov67_0211c9cc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov67_0211ca60

	arm_func_start FUN_ov67_0211caac
FUN_ov67_0211caac: ; 0x0211CAAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r2
	bl FUN_ov16_020f53e8
	mov r4, r0
	tst r4, #1
	beq _0211CAEC
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov67_0211c810
_0211CAEC:
	tst r4, #2
	beq _0211CB1C
	mov r0, r7
	mov r1, r6
	bl FUN_ov67_0211c4dc
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _0211CB1C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov67_0211c964
_0211CB1C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_0211caac

	arm_func_start FUN_ov67_0211cb24
FUN_ov67_0211cb24: ; 0x0211CB24
	stmfd sp!, {r3, lr}
	mov r12, #1
	str r12, [sp]
	ldr r12, [r1, #0xc]
	add r2, r12, r2
	bl FUN_ov67_0211caac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov67_0211cb24

	arm_func_start FUN_ov67_0211cb40
FUN_ov67_0211cb40: ; 0x0211CB40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r1
	mov r4, r0
	mov r6, #1
	mov r7, #0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211CE64 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #6
	blt _0211CC14
	cmp r5, #0xd
	bgt _0211CC14
	mov r0, r4
	sub r5, r5, #6
	bl FUN_ov67_0211b6e8
	movs r8, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	strb r7, [r8, #0x6c]
	ldr r1, [r8]
	ldr r0, [r8, #0xc]
	sub r0, r1, r0
	cmp r5, r0
	streqb r6, [r8, #0x6c]
	ldr r1, [r8, #0xc]
	ldr r0, [r8, #4]
	add r1, r5, r1
	cmp r1, r0
	bge _0211CC04
	mov r0, r8
	bl FUN_ov16_020f52f4
	mov r0, r4
	mov r1, r8
	mov r2, #8
	bl FUN_ov67_0211c810
	ldr r1, [r4, #0x10]
	mov r0, r4
	bl FUN_ov67_0211b104
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211ab48
	add r1, r4, #0x100
	ldrh r1, [r1, #0x40]
	mov r2, r0
	mov r0, r4
	bl FUN_ov67_02119f84
_0211CC04:
	ldr r0, _0211CE68 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CC14:
	cmp r5, #0xf
	bne _0211CC90
	ldr r0, [r4, #0x148]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov67_0211b6e8
	mov r8, r0
	ldr r9, [r8, #0xc]
	ldr r5, [r8]
	mov r0, r4
	mov r1, r8
	mov r3, r7
	mvn r2, #0
	sub r5, r5, r9
	bl FUN_ov67_0211cb24
	ldr r2, [r8, #0xc]
	cmp r9, r2
	beq _0211CC84
	mov r0, r4
	mov r1, r8
	mov r3, r7
	add r2, r2, r5
	str r6, [sp]
	bl FUN_ov67_0211c9cc
	ldr r0, _0211CE68 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
_0211CC84:
	mov r0, #0xf
	str r0, [r4, #0x15c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CC90:
	cmp r5, #0x10
	bne _0211CD0C
	ldr r0, [r4, #0x148]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov67_0211b6e8
	mov r8, r0
	ldr r9, [r8, #0xc]
	ldr r5, [r8]
	mov r0, r4
	mov r1, r8
	mov r2, r6
	mov r3, r7
	sub r5, r5, r9
	bl FUN_ov67_0211cb24
	ldr r2, [r8, #0xc]
	cmp r9, r2
	beq _0211CD00
	mov r0, r4
	mov r1, r8
	mov r3, r7
	add r2, r2, r5
	str r6, [sp]
	bl FUN_ov67_0211c9cc
	ldr r0, _0211CE68 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
_0211CD00:
	mov r0, #0xf
	str r0, [r4, #0x15c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CD0C:
	cmp r5, #0xe
	bne _0211CD88
	ldr r0, [r4, #0x148]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov67_0211b6e8
	mov r9, r0
	ldr r8, [r9]
	ldr r5, [r9, #0xc]
	mov r0, r4
	mov r1, r9
	mov r2, r7
	mov r3, r7
	str r6, [sp]
	sub r8, r8, r5
	bl FUN_ov67_0211caac
	str r6, [sp]
	ldr r1, [r9, #0xc]
	mov r0, r4
	add r2, r1, r8
	mov r1, r9
	mov r3, r7
	bl FUN_ov67_0211c9cc
	ldr r0, [r9, #0xc]
	cmp r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211CE68 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CD88:
	cmp r5, #0x11
	bne _0211CE08
	ldr r0, [r4, #0x148]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov67_0211b6e8
	mov r5, r0
	ldr r8, [r5]
	ldr r9, [r5, #0xc]
	mov r0, r4
	str r6, [sp]
	ldr r2, [r5, #4]
	mov r1, r5
	mov r3, r7
	sub r2, r2, #8
	sub r8, r8, r9
	bl FUN_ov67_0211caac
	str r6, [sp]
	ldr r1, [r5, #0xc]
	mov r0, r4
	add r2, r1, r8
	mov r1, r5
	mov r3, r7
	bl FUN_ov67_0211c9cc
	ldr r0, [r5, #0xc]
	cmp r9, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211CE68 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CE08:
	cmp r5, #0x13
	bne _0211CE24
	ldr r0, [r4, #0x1d8]
	mov r1, #1
	mov r2, #0
	bl FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CE24:
	cmp r5, #0x14
	bne _0211CE40
	ldr r0, [r4, #0x1d8]
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CE40:
	cmp r5, #0x12
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov67_0211b6e8
	ldr r1, [r0]
	ldr r0, [r0, #0xc]
	sub r0, r1, r0
	str r0, [r4, #0x1e0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CE64: .word unk_02099EB4
_0211CE68: .word gL5Sound
	arm_func_end FUN_ov67_0211cb40

	arm_func_start FUN_ov67_0211ce6c
FUN_ov67_0211ce6c: ; 0x0211CE6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	cmp r6, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r5, _0211CF68 ; =0x02099EB4
	mov r1, r6, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r6, #1
	blt _0211CECC
	cmp r6, #5
	bgt _0211CECC
	cmp r0, #0
	ldrneh r2, [r0, #0xc]
	cmpne r2, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	mov r1, #0
	add r0, r0, #0xf00
	strh r2, [r0, #0x38]
	strb r1, [r4, #0x1d5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211CECC:
	cmp r6, #6
	blt _0211CF34
	cmp r6, #0xd
	bgt _0211CF34
	mov r0, r4
	sub r4, r6, #6
	bl FUN_ov67_0211b6e8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0]
	ldr r2, [r0, #0xc]
	sub r1, r1, r2
	cmp r4, r1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r1, [r0, #0x6c]
	cmp r1, #0
	ldrne r0, [r0, #4]
	addne r1, r4, r2
	cmpne r1, r0
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211CF68 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211CF34:
	cmp r6, #0xf
	cmpne r6, #0x10
	moveq r0, #0
	streq r0, [r4, #0x15c]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r6, #0x13
	cmpne r6, #0x14
	ldreq r0, _0211CF68 ; =0x02099EB4
	moveq r1, #1
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211CF68: .word unk_02099EB4
	arm_func_end FUN_ov67_0211ce6c

	arm_func_start FUN_ov67_0211cf6c
FUN_ov67_0211cf6c: ; 0x0211CF6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r1
	mov r4, r0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211D0B8 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldr r0, [r4, #0x15c]
	cmp r0, #0
	beq _0211CFB0
	sub r0, r0, #1
	str r0, [r4, #0x15c]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CFB0:
	cmp r5, #0xf
	bne _0211D034
	ldr r0, [r4, #0x148]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov67_0211b6e8
	mov r7, r0
	mov r6, #0
	ldr r8, [r7, #0xc]
	ldr r5, [r7]
	mov r0, r4
	mov r1, r7
	mov r3, r6
	mvn r2, #0
	sub r9, r5, r8
	bl FUN_ov67_0211cb24
	ldr r2, [r7, #0xc]
	cmp r8, r2
	beq _0211D028
	mov r5, #1
	mov r0, r4
	mov r1, r7
	mov r3, r6
	add r2, r2, r9
	str r5, [sp]
	bl FUN_ov67_0211c9cc
	ldr r0, _0211D0BC ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
_0211D028:
	mov r0, #4
	str r0, [r4, #0x15c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D034:
	cmp r5, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4, #0x148]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov67_0211b6e8
	mov r7, r0
	mov r6, #1
	mov r5, #0
	ldr r8, [r7, #0xc]
	ldr r12, [r7]
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	sub r9, r12, r8
	bl FUN_ov67_0211cb24
	ldr r2, [r7, #0xc]
	cmp r8, r2
	beq _0211D0AC
	mov r0, r4
	mov r1, r7
	mov r3, r5
	add r2, r2, r9
	str r6, [sp]
	bl FUN_ov67_0211c9cc
	ldr r0, _0211D0BC ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
_0211D0AC:
	mov r0, #4
	str r0, [r4, #0x15c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D0B8: .word unk_02099EB4
_0211D0BC: .word gL5Sound
	arm_func_end FUN_ov67_0211cf6c

	arm_func_start FUN_ov67_0211d0c0
FUN_ov67_0211d0c0: ; 0x0211D0C0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r9, _0211D244 ; =0x02099EB4
	mov r6, r1
	mov r8, r0
	mov r1, r6, lsl #0x10
	ldr r0, [r9]
	mov r1, r1, lsr #0x10
	mov r7, r2
	mov r4, #0
	bl FUN_ov16_0210e7d0
	mov r10, r0
	mov r0, r8
	bl FUN_ov67_0211b6e8
	mov r5, r0
	ldr r0, [r9]
	add r1, sp, #4
	bl FUN_ov16_0210f48c
	cmp r10, #0
	cmpne r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r6, #0x12
	bne _0211D220
	ldrsh r1, [r5, #0x6e]
	ldrsh r0, [r5, #0x92]
	ldrsh r3, [r5, #0x70]
	ldrsh r2, [r5, #0x94]
	add r0, r1, r0
	ldrsh r1, [sp, #6]
	strh r0, [sp, #4]
	ldrsh r0, [r5, #0x9c]
	add r6, r3, r2
	sub r0, r1, r0, asr #1
	strh r0, [sp, #6]
	ldrsh r1, [sp, #6]
	cmp r1, r6
	strlth r6, [sp, #6]
	blt _0211D16C
	ldrsh r0, [r5, #0x98]
	add r0, r6, r0
	cmp r1, r0
	strgeh r0, [sp, #6]
_0211D16C:
	cmp r7, #0
	bne _0211D18C
	str r4, [sp]
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r8
	mov r1, r5
	bl FUN_ov67_0211c878
_0211D18C:
	ldrsh r2, [sp, #6]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	sub r2, r2, r6
	sub r0, r1, r0
	add r1, r0, #1
	mul r0, r1, r2
	ldrsh r1, [r5, #0x98]
	bl _s32_div_f
	ldr r3, [r5, #4]
	ldr r1, [r5, #8]
	mov r2, r0
	cmp r3, r1
	movlt r2, #0
	blt _0211D1E0
	cmp r2, #0
	movlt r2, #0
	blt _0211D1E0
	sub r0, r3, r1
	cmp r2, r0
	movge r2, r0
_0211D1E0:
	mov r0, r8
	mov r1, r5
	mov r3, r4
	str r7, [sp]
	bl FUN_ov67_0211caac
	ldr r7, [r5, #0xc]
	ldr r2, [r8, #0x1e0]
	mov r6, #1
	mov r0, r8
	mov r1, r5
	mov r3, r4
	add r2, r7, r2
	str r6, [sp]
	bl FUN_ov67_0211c9cc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D220:
	cmp r6, #0xf
	beq _0211D234
	cmp r6, #0x10
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D234:
	cmp r7, #0
	strne r4, [r8, #0x15c]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D244: .word unk_02099EB4
	arm_func_end FUN_ov67_0211d0c0

	arm_func_start FUN_ov67_0211d248
FUN_ov67_0211d248: ; 0x0211D248
	ldr r2, _0211D258 ; =0x02122280
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211D258: .word ov67_02122280
	arm_func_end FUN_ov67_0211d248

	arm_func_start FUN_ov67_0211d25c
FUN_ov67_0211d25c: ; 0x0211D25C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r5, #8
	mov r6, #0
	mov r11, #1
	bl FUN_ov67_0211b6e8
	ldr r1, [r10, #0xc]
	mov r7, r0
	cmp r1, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D648 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D64C ; =0x0209A0F4
	ldr r4, _0211D650 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r9
	mov r1, r1, lsl #0x10
	mov r8, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211D2E0
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r9, [r0, #0x38]
	cmp r9, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, r9
	strh r6, [r0, #0x38]
_0211D2E0:
	mov r0, r10
	mov r1, r9
	bl FUN_ov67_0211c700
	mov r0, r10
	bl FUN_ov67_0211c530
	cmp r0, #1
	beq _0211D30C
	cmp r0, #2
	cmpne r0, #3
	beq _0211D4F4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D30C:
	tst r9, #1
	beq _0211D38C
	mov r0, r10
	mov r1, #1
	bl FUN_ov67_0211b0c8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r10, #4]
	bl FUN_0204204c
	cmp r0, #0x1e
	beq _0211D354
	ldr r0, [r10, #4]
	bl FUN_0204204c
	cmp r0, #0xf
	bne _0211D374
_0211D354:
	mov r0, r10
	bl FUN_ov67_0211b090
	cmp r0, #0
	beq _0211D374
	mov r0, r10
	mov r1, #2
	bl FUN_ov67_0211c520
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D374:
	mov r0, r10
	bl FUN_ov67_0211afcc
	mov r0, r10
	mov r1, #0
	bl FUN_ov67_0211c538
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D38C:
	tst r9, #2
	beq _0211D3CC
	mov r0, r10
	mov r1, #2
	bl FUN_ov67_0211b0c8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r10
	bl FUN_ov67_0211b05c
	mov r0, r10
	mov r1, #0
	bl FUN_ov67_0211c538
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D3CC:
	tst r9, #0x400
	beq _0211D3EC
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r10
	bl FUN_ov67_0211aebc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D3EC:
	tst r8, #0x20
	beq _0211D410
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, r5
	bl FUN_0202cf6c
	mov r0, r10
	sub r1, r5, #9
	bl FUN_ov67_0211ae20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D410:
	tst r8, #0x10
	beq _0211D434
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r10
	mov r1, #1
	bl FUN_ov67_0211ae20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D434:
	tst r8, #0x40
	beq _0211D494
	mov r0, r10
	mov r1, r7
	mvn r2, #0
	mov r3, #4
	bl FUN_ov67_0211ca60
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldr r1, [r10, #0x10]
	mov r0, r10
	bl FUN_ov67_0211b104
	mov r1, r0
	mov r0, r10
	bl FUN_ov67_0211ab48
	add r1, r10, #0x100
	mov r2, r0
	ldrh r1, [r1, #0x40]
	mov r0, r10
	bl FUN_ov67_02119f84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D494:
	tst r8, #0x80
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r7
	mov r2, #1
	mov r3, #4
	bl FUN_ov67_0211ca60
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldr r1, [r10, #0x10]
	mov r0, r10
	bl FUN_ov67_0211b104
	mov r1, r0
	mov r0, r10
	bl FUN_ov67_0211ab48
	add r1, r10, #0x100
	mov r2, r0
	ldrh r1, [r1, #0x40]
	mov r0, r10
	bl FUN_ov67_02119f84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D4F4:
	tst r9, #1
	beq _0211D594
	ldr r0, [r10, #0x1d8]
	bl FUN_ov16_02110b04
	cmp r0, #1
	beq _0211D518
	cmp r0, #2
	beq _0211D558
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D518:
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r10, #0x1d8]
	bl FUN_ov16_02110b0c
	ldr r0, [r10, #0x10]
	cmp r0, #2
	mov r0, r10
	bne _0211D544
	bl FUN_ov67_0211afcc
	b _0211D548
_0211D544:
	bl FUN_ov67_0211b05c
_0211D548:
	mov r0, r10
	mov r1, #0
	bl FUN_ov67_0211c538
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D558:
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r10, #0x1d8]
	bl FUN_ov16_02110b0c
	ldr r0, [r10, #0x10]
	cmp r0, #2
	mov r0, r10
	bne _0211D588
	mov r1, #3
	bl FUN_ov67_0211c520
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D588:
	mov r1, #1
	bl FUN_ov67_0211c520
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D594:
	tst r9, #2
	beq _0211D5E8
	ldr r0, [r10, #0x1d8]
	mov r2, r11
	mov r1, #0
	bl FUN_ov16_02110a04
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r10, #0x1d8]
	bl FUN_ov16_02110b0c
	ldr r0, [r10, #0x10]
	cmp r0, #2
	mov r0, r10
	bne _0211D5DC
	mov r1, #3
	bl FUN_ov67_0211c520
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D5DC:
	mov r1, r11
	bl FUN_ov67_0211c520
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D5E8:
	tst r9, #0x20
	beq _0211D618
	ldr r0, [r10, #0x1d8]
	mov r1, #1
	mov r2, #0
	bl FUN_ov16_02110a04
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D618:
	tst r9, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x1d8]
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D654 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D648: .word unk_02099ED4
_0211D64C: .word unk_0209A0F4
_0211D650: .word unk_02099EB4
_0211D654: .word gL5Sound
	arm_func_end FUN_ov67_0211d25c

	arm_func_start FUN_ov67_0211d658
FUN_ov67_0211d658: ; 0x0211D658
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _0211D740 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r2]
	mov r8, r1
	mov r7, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r4, #0xc]
	cmpeq r0, #5
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _0211D744 ; =0x02099EB4
	mov r6, #1
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D6A8: ; jump table
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 0
	b _0211D6C0 ; case 1
	b _0211D6D8 ; case 2
	b _0211D708 ; case 3
	b _0211D724 ; case 4
	b _0211D6F0 ; case 5
_0211D6C0:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211cb40
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D6D8:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211ce6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D6F0:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D708:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, r7
	bl FUN_ov67_0211d0c0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D724:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl FUN_ov67_0211d0c0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D740: .word unk_02099ED4
_0211D744: .word unk_02099EB4
	arm_func_end FUN_ov67_0211d658

	arm_func_start FUN_ov67_0211d748
FUN_ov67_0211d748: ; 0x0211D748
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r9, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211DA08 ; =0x02099EB4
	str r1, [r9, #0x14c]
	ldr r0, [r0]
	mov r4, #1
	bl FUN_ov16_0210e980
	ldr r0, _0211DA0C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r5, #0
	add r0, r9, #0x168
	mov r1, r5
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _0211DA10 ; =0x0209A454
	str r5, [r9, #0x168]
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	movne r1, #2
	bne _0211D7C4
	bl FUN_ov16_020f081c
	mov r1, r0
_0211D7C4:
	ldr r0, _0211DA14 ; =0x0209BA20
	mov r2, r4
	mov r3, r5
	bl FUN_0204d7fc
	mov r6, #0x1000
	ldr r0, _0211DA18 ; =0x0209A250
	mov r1, r6
	bl FUN_0202de44
	mov r1, r0
	mov r0, r5
	mov r2, r6
	str r1, [r9, #0x144]
	bl MIi_CpuClearFast
	mov r0, r9
	str r5, [r9, #0x148]
	bl FUN_ov67_0211a244
	mov r0, r9
	bl FUN_ov67_0211a9cc
	add r0, r9, #0x14
	mov r1, r5
	mov r2, #0xc
	str r5, [r9, #8]
	str r5, [r9, #0xc]
	str r5, [r9, #0x10]
	bl MI_CpuFill8
	add r0, r9, #0x5c
	mov r1, r5
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r9, #0x58
	mov r1, r5
	mov r2, #4
	bl MI_CpuFill8
	add r0, r9, #0x8c
	mov r1, r5
	mov r2, #0xa4
	bl MI_CpuFill8
	add r0, r9, #0x20
	mov r1, r5
	mov r2, #0x38
	bl MI_CpuFill8
	add r0, r9, #0x100
	strh r5, [r0, #0x50]
	strh r5, [r0, #0x52]
	ldr r0, _0211DA1C ; =0x02099F18
	str r5, [r9, #0x134]
	str r5, [r9, #0x130]
	str r5, [r9, #0x138]
	strb r5, [r9, #0x13c]
	ldr r1, [r0]
	ldrb r1, [r1, #0x45]
	strb r1, [r9, #0x13d]
	tst r1, #0xff
	bne _0211D8A8
	ldr r0, [r0]
	mov r1, r4
	bl FUN_0205131c
_0211D8A8:
	add r0, r9, #0x100
	strb r5, [r9, #0x159]
	strh r5, [r0, #0x40]
	strh r5, [r0, #0x42]
	strb r5, [r9, #0x1d4]
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211DA14 ; =0x0209BA20
	bl FUN_0207249c
	mov r6, r0
	ldrh r1, [r6, #0x28]
	add r0, r9, #0x100
	strh r1, [r0, #0x56]
	ldrh r1, [r6, #0x40]
	strh r1, [r0, #0x54]
	ldrb r0, [r6, #0x2c]
	cmp r1, #0
	strb r0, [r9, #0x158]
	bne _0211D908
	ldrh r1, [r6, #0x28]
	add r0, r9, #0x100
	cmp r1, #0
	ldreqh r1, [r6, #0x26]
	strh r1, [r0, #0x54]
_0211D908:
	mov r7, #0
	mov r8, r7
	add r10, r9, #0x100
	b _0211D940
_0211D918:
	ldr r1, [r9, #0x144]
	mov r0, r8, lsl #2
	ldrh r1, [r1, r0]
	mov r0, r9
	bl FUN_ov67_0211ab48
	ldrh r1, [r10, #0x54]
	cmp r1, r0
	moveq r7, #1
	beq _0211D94C
	add r8, r8, #1
_0211D940:
	ldr r0, [r9, #0x148]
	cmp r8, r0
	blt _0211D918
_0211D94C:
	cmp r7, #0
	addeq r0, r9, #0x100
	streqh r4, [r0, #0x54]
	add r0, r9, #0x100
	ldrh r0, [r0, #0x54]
	strh r0, [r6, #0x28]
	strb r4, [r6, #0x2c]
	mov r0, #0x74
	str r5, [r9, #0x15c]
	bl operator_new
	cmp r0, #0
	beq _0211D980
	bl FUN_ov16_02110558
_0211D980:
	ldr r1, _0211DA20 ; =0x02099F38
	str r0, [r9, #0x1d8]
	ldr r0, [r1]
	bl FUN_ov16_021123b4
	ldr r6, _0211DA24 ; =0x02099EEC
	ldr r0, [r6]
	bl FUN_0205b2b8
	ldr r0, [r6]
	mov r1, r5
	bl FUN_0205a5e8
	ldr r0, _0211DA14 ; =0x0209BA20
	bl FUN_ov16_020eeca0
	ldr r0, _0211DA28 ; =0x02099F24
	mov r1, #4
	ldr r6, [r0]
	mov r0, r6
	bl FUN_ov16_020f7be0
	mov r0, r6
	bl FUN_ov16_020f7bf4
	str r0, [r9, #0x1c8]
	ldr r3, [r0, #0x24]
	mov r1, r5
	str r3, [r9, #0x1cc]
	ldr r5, [r0, #0x28]
	mov r2, #0x12c000
	str r5, [r9, #0x1d0]
	str r2, [r0, #0x24]
	ldr r2, [r9, #0x1c8]
	mov r3, #0x1f4000
	mov r0, r6
	str r3, [r2, #0x28]
	bl FUN_ov16_020f7be0
	strb r4, [r9, #0x1d5]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA08: .word unk_02099EB4
_0211DA0C: .word unk_02099ED4
_0211DA10: .word unk_0209A454
_0211DA14: .word unk_0209BA20
_0211DA18: .word unk_0209A250
_0211DA1C: .word unk_02099F18
_0211DA20: .word unk_02099F38
_0211DA24: .word unk_02099EEC
_0211DA28: .word unk_02099F24
	arm_func_end FUN_ov67_0211d748

	arm_func_start FUN_ov67_0211da2c
FUN_ov67_0211da2c: ; 0x0211DA2C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	mov r5, #1
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211DC04
_0211DA48: ; jump table
	b _0211DA68 ; case 0
	b _0211DA88 ; case 1
	b _0211DAD0 ; case 2
	b _0211DAE8 ; case 3
	b _0211DAFC ; case 4
	b _0211DB4C ; case 5
	b _0211DB60 ; case 6
	b _0211DB84 ; case 7
_0211DA68:
	ldr r0, _0211DC3C ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205b340
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov67_02119f00
	str r5, [r4, #0xc]
_0211DA88:
	add r0, r4, #0x14
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211DC04
	mov r0, r4
	bl FUN_ov67_02119f1c
	ldrb r1, [r4, #0x159]
	mov r0, r4
	mov r2, #0
	bl FUN_ov67_0211abe8
	add r2, r4, #0x100
	mov r1, r0
	ldrh r2, [r2, #0x54]
	mov r0, r4
	bl FUN_ov67_02119f84
	mov r0, #2
	str r0, [r4, #0xc]
_0211DAD0:
	mov r0, r4
	bl FUN_ov67_0211a2ac
	cmp r0, #0
	beq _0211DC04
	mov r0, #3
	str r0, [r4, #0xc]
_0211DAE8:
	mov r0, r4
	bl FUN_ov67_0211a5b4
	mov r0, r4
	mov r1, #1
	bl FUN_ov67_0211c520
_0211DAFC:
	ldr r0, _0211DC40 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211DC04
	mov r0, r4
	bl FUN_ov67_0211b564
	mov r0, r4
	bl FUN_ov67_0211b45c
	mov r0, r4
	bl FUN_ov67_0211b358
	mov r0, r4
	bl FUN_ov67_0211c564
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r4, #0xc]
	b _0211DC04
_0211DB4C:
	bl FUN_ov67_0211a6fc
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211a728
	b _0211DC04
_0211DB60:
	ldr r0, _0211DC40 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211DC04
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #7
	str r0, [r4, #0xc]
_0211DB84:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211DC04
	ldrb r0, [r4, #0x1d4]
	mov r1, #0
	cmp r0, #0
	beq _0211DBC0
	ldr r0, _0211DC44 ; =0x0209A454
	mov r2, #0x19
	str r1, [r0, #0x24]
	ldr r0, [r4, #4]
	b _0211DC00
_0211DBC0:
	ldr r6, [r4, #8]
	ldr r5, [r4, #4]
	cmp r6, #0
	bne _0211DBE8
	mov r0, r5
	bl FUN_02041f2c
	mov r0, r5
	mov r1, #1
	bl FUN_02041f2c
	b _0211DC04
_0211DBE8:
	mov r2, r6
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r6
	mov r1, #1
_0211DC00:
	bl FUN_02041eac
_0211DC04:
	mov r0, r4
	bl FUN_ov67_0211a340
	mov r0, r4
	bl FUN_ov67_0211a568
	ldr r0, _0211DC3C ; =0x02099EEC
	ldr r4, _0211DC48 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl FUN_0205a60c
	ldr r0, _0211DC40 ; =0x02099ED4
	ldr r1, [r4]
	ldr r0, [r0]
	bl FUN_ov16_0210e10c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DC3C: .word unk_02099EEC
_0211DC40: .word unk_02099ED4
_0211DC44: .word unk_0209A454
_0211DC48: .word unk_0209A110
	arm_func_end FUN_ov67_0211da2c

	arm_func_start FUN_ov67_0211dc4c
FUN_ov67_0211dc4c: ; 0x0211DC4C
	bx lr
	arm_func_end FUN_ov67_0211dc4c

	arm_func_start FUN_ov67_0211dc50
FUN_ov67_0211dc50: ; 0x0211DC50
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211DD34 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211DD38 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r1, [r4, #0x144]
	cmp r1, #0
	beq _0211DC84
	ldr r0, _0211DD3C ; =0x0209A250
	bl FUN_0202e1c0
_0211DC84:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x144]
	bl FUN_ov67_0211a464
	ldr r0, _0211DD40 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r1, [r4, #0x160]
	cmp r1, #0
	beq _0211DCB4
	ldr r0, _0211DD3C ; =0x0209A250
	bl FUN_0202e1c0
_0211DCB4:
	mov r6, #0
	ldr r5, _0211DD44 ; =0x02099EEC
	str r6, [r4, #0x160]
	ldr r0, [r5]
	bl FUN_0205b398
	ldr r0, [r5]
	bl FUN_0205a5f4
	ldr r0, _0211DD48 ; =0x0209BA20
	bl FUN_ov16_020eedb8
	ldrb r0, [r4, #0x13d]
	cmp r0, #0
	bne _0211DCF4
	ldr r0, _0211DD4C ; =0x02099F18
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0205131c
_0211DCF4:
	ldr r0, [r4, #0x1d8]
	cmp r0, #0
	beq _0211DD18
	beq _0211DD10
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211DD10:
	mov r0, #0
	str r0, [r4, #0x1d8]
_0211DD18:
	ldr r1, [r4, #0x1cc]
	ldr r0, [r4, #0x1c8]
	str r1, [r0, #0x24]
	ldr r1, [r4, #0x1d0]
	ldr r0, [r4, #0x1c8]
	str r1, [r0, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_0211DD34: .word unk_02099EB4
_0211DD38: .word unk_02099ED4
_0211DD3C: .word unk_0209A250
_0211DD40: .word unk_02099F38
_0211DD44: .word unk_02099EEC
_0211DD48: .word unk_0209BA20
_0211DD4C: .word unk_02099F18
	arm_func_end FUN_ov67_0211dc50

	arm_func_start FUN_ov67_0211dd50
FUN_ov67_0211dd50: ; 0x0211DD50
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_0211dd50

	arm_func_start FUN_ov67_0211dd64
FUN_ov67_0211dd64: ; 0x0211DD64
	bx lr
	arm_func_end FUN_ov67_0211dd64

	arm_func_start FUN_ov67_0211dd68
FUN_ov67_0211dd68: ; 0x0211DD68
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_0211DD78:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _0211DD90
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_0211DD90:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _0211DD78
	bx lr
	arm_func_end FUN_ov67_0211dd68

	arm_func_start FUN_ov67_0211dda0
FUN_ov67_0211dda0: ; 0x0211DDA0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, #1
	mov r2, #0x48
	str r3, [r4, #0x1d4]
	str r2, [r4, #0x1d0]
	str r1, [r4, #0x1dc]
	strb r3, [r4, #0x1e0]
	bl FUN_ov67_0211dd68
	strb r0, [r4, #0x1e1]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_0211dda0

	arm_func_start FUN_ov67_0211ddcc
FUN_ov67_0211ddcc: ; 0x0211DDCC
	stmfd sp!, {r3, lr}
	ldr r0, _0211DDF4 ; =0x0209AEC0
	mov r1, #3
	bl FUN_02046cb4
	ldr r0, _0211DDF8 ; =0x0209A4E0
	mov r1, #0x48
	strb r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #3]
	ldmfd sp!, {r3, pc}
_0211DDF4: .word unk_0209AEC0
_0211DDF8: .word unk_0209A4E0
	arm_func_end FUN_ov67_0211ddcc

	arm_func_start FUN_ov67_0211ddfc
FUN_ov67_0211ddfc: ; 0x0211DDFC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, _0211DE4C ; =0x0209A4E4
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211DE50 ; =0x0209BA20
	bl FUN_0207249c
	ldrh r2, [r0, #0x28]
	ldr r1, _0211DE54 ; =0x0209A4E0
	cmp r2, #0
	ldreqh r2, [r0, #0x26]
	mov r0, #0x48
	strh r2, [r4]
	strb r0, [r1, #2]
	ldr r2, [r5, #0xc]
	mov r0, #1
	strb r2, [r1, #3]
	ldr r2, [r5, #8]
	strb r2, [r1, #6]
	ldmfd sp!, {r3, r4, r5, pc}
_0211DE4C: .word unk_0209A4E4
_0211DE50: .word unk_0209BA20
_0211DE54: .word unk_0209A4E0
	arm_func_end FUN_ov67_0211ddfc

	arm_func_start FUN_ov67_0211de58
FUN_ov67_0211de58: ; 0x0211DE58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r6, _0211DFE4 ; =0x0209AEC0
	mov r10, r0
	mov r0, r6
	mov r4, #0
	bl FUN_02046730
	mov r5, r0
	mov r0, r6
	bl FUN_02046744
	mov r6, r0
	bl FUN_ov16_020f081c
	ldr r1, [r10, #0xc]
	mov r7, r0
	cmp r1, #5
	cmpne r1, #6
	beq _0211DEA0
	cmp r1, #7
	bne _0211DF50
_0211DEA0:
	mov r9, #0
	ldr r11, _0211DFE8 ; =0x020A0670
	b _0211DF48
_0211DEAC:
	mov r0, r9
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211DF44
	ldrb r8, [r11, r9]
	cmp r8, r5
	beq _0211DF44
	mov r0, #1
	tst r6, r0, lsl r8
	beq _0211DF44
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	cmp r0, #0x48
	bne _0211DF44
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f0634
	ldrh r2, [r0, #4]
	ldr r0, _0211DFEC ; =0x0209A490
	mov r1, r9, lsl #1
	cmp r9, r7
	strh r2, [r0, r1]
	bne _0211DF44
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #6
	bne _0211DF44
	mov r0, #6
	str r0, [r10, #0xc]
	ldr r0, _0211DFE4 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldrne r0, _0211DFF0 ; =0x020E9482
	strneb r4, [r0]
_0211DF44:
	add r9, r9, #1
_0211DF48:
	cmp r9, #2
	blt _0211DEAC
_0211DF50:
	ldr r0, [r10, #0xc]
	cmp r0, #7
	bne _0211DF80
	mov r4, #5
	mov r1, r4
	mov r0, #7
	mov r2, #6
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	strne r4, [r10, #0xc]
	b _0211DFDC
_0211DF80:
	cmp r0, #6
	bne _0211DFDC
	ldr r0, _0211DFE4 ; =0x0209AEC0
	mov r3, #0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _0211DFB8
	mov r0, #6
	mov r1, #8
	mov r2, #9
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211DFDC
	b _0211DFD0
_0211DFB8:
	mov r1, #9
	sub r2, r1, #0xa
	mov r0, #8
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211DFDC
_0211DFD0:
	mov r0, r10
	mov r1, #0x77
	bl FUN_ov67_02120e18
_0211DFDC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DFE4: .word unk_0209AEC0
_0211DFE8: .word unk_020A0670
_0211DFEC: .word unk_0209A490
_0211DFF0: .word ov1_020E9482
	arm_func_end FUN_ov67_0211de58

	arm_func_start FUN_ov67_0211dff4
FUN_ov67_0211dff4: ; 0x0211DFF4
	ldr r0, [r0, #0xc]
	sub r0, r0, #5
	cmp r0, #4
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov67_0211dff4

	arm_func_start FUN_ov67_0211e00c
FUN_ov67_0211e00c: ; 0x0211E00C
	ldr r0, [r0, #0xc]
	sub r0, r0, #5
	cmp r0, #4
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov67_0211e00c

	arm_func_start FUN_ov67_0211e024
FUN_ov67_0211e024: ; 0x0211E024
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, _0211E134 ; =0x02122574
	add r1, r4, #0x14
	bl FUN_ov16_020f316c
	ldr r0, _0211E138 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0211E078
	mov r0, #0
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211E06C
	mov r0, #1
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _0211E078
_0211E06C:
	ldr r0, _0211E13C ; =0x02122594
	add r1, r4, #0x20
	bl FUN_ov1_020dbe00
_0211E078:
	ldr r0, _0211E140 ; =0x021225A4
	add r1, r4, #0x2c
	bl FUN_ov16_020f316c
	ldr r0, [r4, #0x1ec]
	add r4, r4, #0x1ec
	cmp r0, #0
	ldrne r0, [r4, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	mov r0, r4
	bl FUN_ov16_020f2f20
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldrh r2, [r4, #0xc]
	ldr r0, _0211E144 ; =0x02099F50
	ldr r3, _0211E148 ; =0x021225C0
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r12, [r4, #0xe]
	mov r2, #6
	mov r12, r12, lsl #3
	str r12, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4, #4]
	mov r2, r2, lsl #3
	mov r1, r1, lsl #3
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211E134: .word ov67_02122574
_0211E138: .word unk_020A0640
_0211E13C: .word ov67_02122594
_0211E140: .word ov67_021225A4
_0211E144: .word unk_02099F50
_0211E148: .word ov67_021225C0
	arm_func_end FUN_ov67_0211e024

	arm_func_start FUN_ov67_0211e14c
FUN_ov67_0211e14c: ; 0x0211E14C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r8, #0
	mov r10, r0
	str r8, [sp]
	ldr r1, [r10, #0x14]
	ldr r0, _0211E244 ; =0x021225E0
	ldr r2, _0211E248 ; =0x02122050
	add r3, r10, #0x5c
	bl FUN_ov16_020f5450
	mov r0, r10
	mov r1, r8
	bl FUN_ov67_0211e9f0
	mov r11, #1
	mov r7, r8
	mov r6, r8
	mov r5, r11
	ldr r4, _0211E24C ; =0x02099F38
	b _0211E234
_0211E198:
	mov r9, r7
	cmp r8, #0
	movne r9, r11
	mov r0, r9
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211E1C8
	ldr r0, [r4]
	mov r1, #5
	mov r2, #1
	bl FUN_02059630
	b _0211E224
_0211E1C8:
	ldr r0, _0211E250 ; =0x0209BA20
	mov r1, r9
	bl FUN_0207249c
	ldrh r1, [r0, #0x2a]
	add r2, sp, #0x18
	add r3, sp, #0x14
	cmp r1, #0
	ldreqh r1, [r0, #0x20]
	ldr r0, [r10, #0x20]
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211E230
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _0211E254 ; =0x02122600
	mov r3, r5
	bl FUN_02058800
_0211E224:
	add r1, r8, #0xb
	add r1, r10, r1, lsl #2
	str r0, [r1, #0x5c]
_0211E230:
	add r8, r8, #1
_0211E234:
	cmp r8, #2
	blt _0211E198
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E244: .word ov67_021225E0
_0211E248: .word ov67_02122050
_0211E24C: .word unk_02099F38
_0211E250: .word unk_0209BA20
_0211E254: .word ov67_02122600
	arm_func_end FUN_ov67_0211e14c

	arm_func_start FUN_ov67_0211e258
FUN_ov67_0211e258: ; 0x0211E258
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x2c]
	cmp r6, #0
	ldrne r1, _0211E2A4 ; =0x02122030
	ldrne r7, _0211E2A8 ; =0x02122030
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x14
	mov r4, #0xc
_0211E280:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211E280
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E2A4: .word ov67_02122030
_0211E2A8: .word ov67_02122030
	arm_func_end FUN_ov67_0211e258

	arm_func_start FUN_ov67_0211e2ac
FUN_ov67_0211e2ac: ; 0x0211E2AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, _0211E53C ; =0x0209BA20
	mov r9, r2
	mov r4, r1
	mov r7, r3
	bl FUN_0207249c
	mov r6, r0
	mov r0, r9
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	cmpne r6, #0
	cmpne r7, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #0
	beq _0211E2FC
	bl FUN_0206d6d8
_0211E2FC:
	add r0, r5, r4
	ldrb r0, [r0, #0xe6]
	ldr r10, _0211E540 ; =0x02099EEC
	add r0, r0, r4, lsl #1
	add r0, r5, r0, lsl #2
	ldr r8, [r0, #0xd4]
	ldr r0, [r10]
	mov r1, r8
	bl FUN_0205ac70
	cmp r0, #1
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r8, #0
	ble _0211E340
	ldr r0, [r10]
	mov r1, r8
	bl FUN_0205aa80
_0211E340:
	add r0, r5, r4, lsl #1
	strh r9, [r0, #0xc8]
	strh r7, [r0, #0xcc]
	ldrh r0, [r0, #0xcc]
	cmp r4, #1
	strh r0, [r6, #0x28]
	bne _0211E374
	ldrh r1, [r5, #0xcc]
	ldrh r0, [r5, #0xce]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	b _0211E378
_0211E374:
	mov r0, #1
_0211E378:
	strb r0, [r6, #0x2c]
	mov r7, #1
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	add r1, r5, r4, lsl #1
	add r0, r5, r4
	ldr r9, _0211E540 ; =0x02099EEC
	ldrb r2, [r0, #0xe6]
	ldrh r1, [r1, #0xc8]
	ldr r0, [r9]
	mov r3, r7
	bl FUN_0205a828
	mov r8, r0
	mov r6, #0
	ldr r0, [r9]
	ldr r2, _0211E544 ; =0x000F423F
	mov r1, r8
	mov r3, r6
	bl FUN_0205ab68
	add r2, r5, r4
	ldrb r0, [r2, #0xe6]
	ldr r9, _0211E548 ; =gL5Config
	ldr r1, _0211E54C ; =0x02122620
	add r0, r0, r4, lsl #1
	add r0, r5, r0, lsl #2
	str r8, [r0, #0xd4]
	strb r7, [r2, #0xe4]
	mov r0, r9
	strb r6, [r2, #0xe8]
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	cmp r0, #0
	ble _0211E428
	ldr r1, _0211E550 ; =0x02122634
	mov r0, r9
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211E448
_0211E428:
	ldr r1, _0211E554 ; =0x02122648
	mov r0, r9
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211E448:
	bl _ffix
	ldr r5, _0211E548 ; =gL5Config
	mov r6, r0
	ldr r1, _0211E558 ; =0x0212265C
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	ble _0211E48C
	ldr r1, _0211E55C ; =0x02122670
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211E4A8
_0211E48C:
	ldr r1, _0211E560 ; =0x02122684
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211E4A8:
	bl _ffix
	mov r1, #0x1f4000
	rsb r1, r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0xc]
	cmp r4, #1
	rsbeq r0, r0, #0x100000
	streq r0, [sp, #0xc]
	ldr r0, _0211E548 ; =gL5Config
	ldr r1, _0211E564 ; =0x02122698
	str r6, [sp, #0x10]
	bl _ZN8L5Config8getParamEPc
	ldr r1, [sp, #0x14]
	ldr r4, _0211E540 ; =0x02099EEC
	str r1, [sp]
	mov r5, r0
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, r8
	bl FUN_0205aea0
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r5
	bl FUN_0205af58
	ldr r0, [r4]
	mov r1, r8
	mov r2, #0
	bl FUN_0205acb0
	ldr r0, [r4]
	mov r1, r8
	mov r2, #1
	bl FUN_0205b3cc
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E53C: .word unk_0209BA20
_0211E540: .word unk_02099EEC
_0211E544: .word 0x000F423F
_0211E548: .word gL5Config
_0211E54C: .word ov67_02122620
_0211E550: .word ov67_02122634
_0211E554: .word ov67_02122648
_0211E558: .word ov67_0212265C
_0211E55C: .word ov67_02122670
_0211E560: .word ov67_02122684
_0211E564: .word ov67_02122698
	arm_func_end FUN_ov67_0211e2ac

	arm_func_start FUN_ov67_0211e568
FUN_ov67_0211e568: ; 0x0211E568
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r2, #0
	ldr r3, _0211E5C8 ; =0x0209A250
	str r2, [r4, #0x120]
	ldr r0, [r3]
	ldr r1, _0211E5CC ; =0x021226AC
	cmp r0, #0
	beq _0211E5B0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x120
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	mov r2, r0
_0211E5B0:
	cmp r2, #0
	movne r1, r2, lsr #1
	addne r0, r4, #0x100
	strneh r1, [r0, #0x24]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0211E5C8: .word unk_0209A250
_0211E5CC: .word ov67_021226AC
	arm_func_end FUN_ov67_0211e568

	arm_func_start FUN_ov67_0211e5d0
FUN_ov67_0211e5d0: ; 0x0211E5D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r5, r2
	add r3, sp, #8
	mov r2, #4
	mov r0, #0
_0211E5E8:
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	add r3, r3, #8
	subs r2, r2, #1
	bne _0211E5E8
	add r7, sp, #8
	mov r4, #0
	ldr r0, _0211E6B4 ; =0x0209BA20
	mov r2, r7
	str r4, [sp]
	mov r6, #0x82
	mov r3, #0x10
	str r6, [sp, #4]
	bl FUN_0204b540
	mov r8, r0
	cmp r8, #0
	addle sp, sp, #0x28
	movle r0, r4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ble _0211E6A8
	mov r6, r4
_0211E644:
	mov r0, r4, lsl #1
	ldrh r0, [r7, r0]
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r9, r0
	beq _0211E69C
	cmp r5, #0
	beq _0211E670
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0211E688
_0211E670:
	cmp r5, #0
	bne _0211E69C
	mov r0, r9
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0211E69C
_0211E688:
	add r0, sp, #8
	mov r1, r4, lsl #1
	add sp, sp, #0x28
	ldrh r0, [r0, r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E69C:
	add r4, r4, #1
	cmp r4, r8
	blt _0211E644
_0211E6A8:
	ldrh r0, [sp, #8]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E6B4: .word unk_0209BA20
	arm_func_end FUN_ov67_0211e5d0

	arm_func_start FUN_ov67_0211e6b8
FUN_ov67_0211e6b8: ; 0x0211E6B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r4, r0
	mov r7, r1
	mov r0, r2
	mov r1, r5
	mov r6, r3
	bl FUN_ov16_020efa9c
	cmp r0, #0
	cmpne r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7
	ldrb r1, [r0, #0xe6]
	ldr r0, _0211E718 ; =0x02099EEC
	add r1, r1, r7, lsl #1
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0xd4]
	ldr r0, [r0]
	bl FUN_0205ac70
	cmp r0, #1
	moveq r0, r5
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E718: .word unk_02099EEC
	arm_func_end FUN_ov67_0211e6b8

	arm_func_start FUN_ov67_0211e71c
FUN_ov67_0211e71c: ; 0x0211E71C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r5, r7
	mov r6, #1
_0211E730:
	ldrb r0, [r4, #0xf4]
	mov r2, r6
	mov r1, r7
	cmp r0, #0
	movne r2, r5
	mov r0, r4
	bl FUN_ov67_0211e5d0
	movs r2, r0
	beq _0211E770
	add r0, r4, r7, lsl #1
	ldrh r3, [r0, #0xcc]
	mov r0, r4
	mov r1, r7
	bl FUN_ov67_0211e6b8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E770:
	add r7, r7, #1
	cmp r7, #2
	blt _0211E730
	ldrb r0, [r4, #0xf4]
	mov r5, #0
	eor r0, r0, #1
	strb r0, [r4, #0xf4]
_0211E78C:
	ldrb r2, [r4, #0xf4]
	mov r0, r4
	mov r1, r5
	bl FUN_ov67_0211e5d0
	movs r2, r0
	beq _0211E7B8
	add r0, r4, r5, lsl #1
	ldrh r3, [r0, #0xcc]
	mov r0, r4
	mov r1, r5
	bl FUN_ov67_0211e2ac
_0211E7B8:
	add r5, r5, #1
	cmp r5, #2
	blt _0211E78C
	mov r0, r4
	bl FUN_ov67_0211f654
	ldr r0, _0211E7DC ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E7DC: .word gL5Sound
	arm_func_end FUN_ov67_0211e71c

	arm_func_start FUN_ov67_0211e7e0
FUN_ov67_0211e7e0: ; 0x0211E7E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r5, r0
	mov r9, #0xf
	mov r8, #3
	mov r7, r4
	ldr r6, _0211E89C ; =0x02099F38
	b _0211E87C
_0211E800:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x5c]
	cmp r1, #0
	beq _0211E878
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x5c]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211E878
	cmp r4, #0xb
	cmpne r4, #0xc
	bne _0211E860
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x5c]
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02114918
_0211E860:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x5c]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211E878:
	add r4, r4, #1
_0211E87C:
	cmp r4, #0xd
	blt _0211E800
	mov r0, r5
	bl FUN_ov67_0211e8a0
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E89C: .word unk_02099F38
	arm_func_end FUN_ov67_0211e7e0

	arm_func_start FUN_ov67_0211e8a0
FUN_ov67_0211e8a0: ; 0x0211E8A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r8, #0
	add r5, r10, #0xe6
	mov r11, #2
	mov r7, r8
	mov r6, #1
	ldr r4, _0211E9E4 ; =0x02099EEC
	b _0211E9D4
_0211E8C4:
	add r0, r10, r8
	ldrb r1, [r0, #0xe6]
	ldr r0, [r4]
	add r1, r1, r8, lsl #1
	add r1, r10, r1, lsl #2
	ldr r9, [r1, #0xd4]
	mov r1, r9
	bl FUN_0205ac70
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, r8
	ldrb r0, [r0, #0xe8]
	cmp r0, #0
	bne _0211E970
	ldr r0, [r4]
	mov r1, r9
	bl FUN_0205b264
	cmp r0, #0
	addne r0, r10, r8
	ldrneb r0, [r0, #0xe4]
	cmpne r0, #0
	beq _0211E9D0
	ldr r0, [r4]
	mov r1, r9
	mov r2, r7
	mov r3, r6
	bl FUN_0205b174
	ldr r0, [r4]
	mov r1, r9
	mov r2, r6
	bl FUN_0205acb0
	mov r0, #0xa
	str r0, [sp]
	mov r2, #0xa
	ldr r0, [r4]
	mov r1, r9
	mov r3, r2
	bl FUN_0205af58
	add r0, r10, r8
	strb r7, [r0, #0xe4]
	strb r6, [r0, #0xe8]
	b _0211E9D0
_0211E970:
	cmp r0, #1
	bne _0211E9D0
	ldr r0, _0211E9E8 ; =gL5Config
	ldr r1, _0211E9EC ; =0x021226CC
	bl _ZN8L5Config8getParamEPc
	mov r2, r0
	str r2, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r2
	bl FUN_0205af58
	ldrb r1, [r5, r8]
	add r0, r10, r8
	mov r2, #0
	eor r1, r1, #1
	strb r1, [r5, r8]
	ldrb r1, [r0, #0xe6]
	ldr r0, [r4]
	add r1, r1, r8, lsl #1
	add r1, r10, r1, lsl #2
	ldr r1, [r1, #0xd4]
	bl FUN_0205acb0
	add r0, r10, r8
	strb r11, [r0, #0xe8]
_0211E9D0:
	add r8, r8, #1
_0211E9D4:
	cmp r8, #2
	blt _0211E8C4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E9E4: .word unk_02099EEC
_0211E9E8: .word gL5Config
_0211E9EC: .word ov67_021226CC
	arm_func_end FUN_ov67_0211e8a0

	arm_func_start FUN_ov67_0211e9f0
FUN_ov67_0211e9f0: ; 0x0211E9F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	bmi _0211EA08
	cmp r4, #6
	blt _0211EA5C
_0211EA08:
	mov r4, #0
	add r9, r5, #0x14
	mov r8, #1
	mov r7, r4
	mov r6, #0xc
_0211EA1C:
	mul r10, r4, r6
	mov r1, r8
	add r0, r9, r10
	bl FUN_ov16_020f338c
	add r0, r9, r10
	bl FUN_ov16_020f33fc
	add r0, r5, r10
	str r7, [r0, #0x14]
	str r7, [r0, #0x18]
	strb r7, [r0, #0x1c]
	strb r7, [r0, #0x1d]
	add r4, r4, #1
	strb r7, [r0, #0x1e]
	cmp r4, #6
	blt _0211EA1C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211EA5C:
	mov r0, #0xc
	mul r6, r4, r0
	add r4, r5, #0x14
	add r0, r4, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r6
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r6]
	add r0, r5, r6
	str r1, [r0, #0x18]
	strb r1, [r0, #0x1c]
	strb r1, [r0, #0x1d]
	strb r1, [r0, #0x1e]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov67_0211e9f0

	arm_func_start FUN_ov67_0211ea9c
FUN_ov67_0211ea9c: ; 0x0211EA9C
	stmfd sp!, {r4, r5, r6, lr}
	mvn r1, #0
	mov r6, r0
	bl FUN_ov67_0211e9f0
	mov r5, #0
	ldr r4, _0211EB40 ; =0x02099F38
	b _0211EAD4
_0211EAB8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x90]
	cmp r1, #0
	beq _0211EAD0
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211EAD0:
	add r5, r5, #1
_0211EAD4:
	cmp r5, #0xe
	blt _0211EAB8
	mov r5, #0
	ldr r4, _0211EB40 ; =0x02099F38
	b _0211EB04
_0211EAE8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x5c]
	cmp r1, #0
	beq _0211EB00
	ldr r0, [r4]
	bl FUN_02058ee0
_0211EB00:
	add r5, r5, #1
_0211EB04:
	cmp r5, #0xd
	blt _0211EAE8
	ldr r1, [r6, #0xd4]
	cmp r1, #0
	ble _0211EB24
	ldr r0, _0211EB44 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
_0211EB24:
	ldr r1, [r6, #0xd8]
	cmp r1, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211EB44 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
	ldmfd sp!, {r4, r5, r6, pc}
_0211EB40: .word unk_02099F38
_0211EB44: .word unk_02099EEC
	arm_func_end FUN_ov67_0211ea9c

	arm_func_start FUN_ov67_0211eb48
FUN_ov67_0211eb48: ; 0x0211EB48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	add r4, sp, #0
	mov r5, #0
	mov r7, r0
	ldr r3, _0211EC5C ; =0x0209A454
	mov r6, r1
	strb r5, [r4]
	strb r5, [r4, #1]
	mov r0, #1
_0211EB70:
	add r2, r3, r5, lsl #1
	add r1, r7, r5, lsl #1
	ldrh r2, [r2, #0x3c]
	ldrh r1, [r1, #0xcc]
	cmp r2, r1
	strneb r0, [r4, r5]
	add r5, r5, #1
	cmp r5, #2
	blt _0211EB70
	ldr r0, _0211EC5C ; =0x0209A454
	ldrh r1, [r0, #0x3c]
	ldrh r0, [r0, #0x3e]
	cmp r1, r0
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	beq _0211EBC0
	ldrb r0, [r7, #0xf5]
	cmp r0, #0
	beq _0211EBD4
_0211EBC0:
	cmp r1, #0
	bne _0211EBDC
	ldrb r0, [r7, #0xf5]
	cmp r0, #0
	beq _0211EBDC
_0211EBD4:
	mov r0, #1
	strb r0, [sp, #1]
_0211EBDC:
	ldr r8, _0211EC5C ; =0x0209A454
	mov r5, #0
	add r4, sp, #0
_0211EBE8:
	ldrb r0, [r4, r5]
	cmp r0, #0
	cmpeq r6, #0
	beq _0211EC14
	add r1, r7, r5, lsl #1
	add r0, r8, r5, lsl #1
	ldrh r2, [r1, #0xc8]
	ldrh r3, [r0, #0x3c]
	mov r0, r7
	mov r1, r5
	bl FUN_ov67_0211e2ac
_0211EC14:
	add r5, r5, #1
	cmp r5, #2
	blt _0211EBE8
	mov r4, #1
	ldr r0, _0211EC60 ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [r0, #0x2c]
	cmp r0, #0
	movne r4, #0
	mov r0, r7
	mov r1, r4
	bl FUN_ov67_0211f310
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EC5C: .word unk_0209A454
_0211EC60: .word unk_0209BA20
	arm_func_end FUN_ov67_0211eb48

	arm_func_start FUN_ov67_0211ec64
FUN_ov67_0211ec64: ; 0x0211EC64
	ldrb r0, [r0, #0xf4]
	bx lr
	arm_func_end FUN_ov67_0211ec64

	arm_func_start FUN_ov67_0211ec6c
FUN_ov67_0211ec6c: ; 0x0211EC6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	bl FUN_ov16_020f081c
	cmp r0, #0
	mov r6, #0
	ldr r0, [r10, #0x90]
	movne r6, #1
	cmp r0, #0
	bne _0211EF54
	ldr r4, _0211F03C ; =0x02099F38
	mov r5, #1
	ldr r0, [r4]
	mov r2, r5
	mov r1, #6
	bl FUN_ov16_02112724
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r7, [r10, #0x90]
	ldr r3, [r10, #0x5c]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r9, #0
	str r9, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, r9
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r8, #0x258
	mov r3, r8
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #1
	ldr r3, [r10, #0x60]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #1
	mov r3, r9
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #1
	mov r3, r9
	bl FUN_ov16_02113b78
	sub r8, r8, #0xa
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #1
	mov r3, r8
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #2
	ldr r3, [r10, #0x60]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #2
	mov r3, r5
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #2
	mov r3, #0x80
	bl FUN_ov16_02113b78
	mov r3, r8
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #2
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #3
	ldr r3, [r10, #0x84]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r3, r9
	add r2, r5, #3
	bl FUN_ov16_0211401c
	mov r8, #3
	str r8, [sp]
	mov r2, r6, lsl #0x17
	mov r3, r2, asr #0x10
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #3
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r7
	add r2, r5, #3
	mov r3, #0xc8
	bl FUN_ov16_021139bc
	mov r0, r6, lsl #0x17
	mov r0, r0, asr #0x10
	str r8, [r10, #0x104]
	str r0, [r10, #0x100]
	strb r5, [r10, #0x114]
	add r8, r5, #4
	mov r6, r9
	mov r11, #0x78
	mov r5, #0xa
	b _0211EF34
_0211EE50:
	mov r0, r9
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211EE78
	add r0, r9, #0xb
	add r0, r10, r0, lsl #2
	ldr r1, [r0, #0x5c]
	mov r0, r10
	mov r2, r9
	bl FUN_ov67_0211f040
_0211EE78:
	add r0, r9, #0xb
	add r0, r10, r0, lsl #2
	ldr r3, [r0, #0x5c]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02113d88
	add r1, r9, #0xb
	add r1, r10, r1, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x5c]
	bl FUN_ov16_02111458
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_02113d08
	mov r0, r9
	bl FUN_ov16_020f0a30
	cmp r0, #0
	mov r0, r9, lsl #7
	addeq r0, r0, #0x10
	addne r0, r0, #4
	mov r3, r0, lsl #0x10
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, #0x1f4
	bl FUN_ov16_021139bc
	add r8, r8, #1
	add r9, r9, #1
_0211EF34:
	cmp r9, #2
	blt _0211EE50
	ldr r0, _0211F03C ; =0x02099F38
	mov r1, r7
	ldr r0, [r0]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
_0211EF54:
	mov r4, #0x20
	mov r5, #0
	str r4, [sp, #4]
	bl G2_GetBG1CharPtr
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r6, #1
	add r4, sp, #4
	str r4, [sp]
	ldr r0, [r10, #0x38]
	mov r1, r5
	mov r2, r6
	mov r3, r6
	bl FUN_ov1_020dc020
	str r4, [sp]
	mov r1, r0
	ldr r0, [r10, #0x44]
	mov r2, #2
	mov r3, r6
	bl FUN_ov1_020dc020
	mov r2, r0
	ldr r0, [r10, #0x1ec]
	add r4, r10, #0x1ec
	cmp r0, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	movne r5, r6
	cmp r5, #0
	beq _0211F030
	ldrh r3, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4]
	add r2, r2, #1
	mul r1, r3, r1
	mov r1, r1, lsl #1
	mov r3, #0
	bl FUN_ov16_020f1868
	ldrh r3, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	ldr r0, [r4, #4]
	ldr r1, [sp, #4]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GX_LoadBG3Char
	ldrh r1, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	ldr r2, [sp, #4]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #4]
_0211F030:
	bl FUN_ov16_020f10ac
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F03C: .word unk_02099F38
	arm_func_end FUN_ov67_0211ec6c

	arm_func_start FUN_ov67_0211f040
FUN_ov67_0211f040: ; 0x0211F040
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	ldr r0, _0211F130 ; =0x0209BA20
	mov r5, r1
	mov r1, r2
	bl FUN_0207249c
	mov r9, #0
	ldr r7, _0211F134 ; =0x02099F38
	mov r10, r0
	ldr r0, [r7]
	add r2, sp, #0x20
	add r3, sp, #0x24
	mov r1, r5
	str r9, [sp, #0x20]
	bl FUN_0205935c
	ldr r4, [sp, #0x20]
	cmp r4, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r6, _0211F138 ; =0x02099EDC
	mov r1, r9
	ldr r0, [r6]
	mov r2, r9
	bl FUN_02043310
	mov r1, #2
	ldr r0, [r6]
	mov r2, r1
	bl FUN_02043780
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov16_02111438
	mov r8, r0
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov16_02111458
	stmia sp, {r0, r9}
	str r9, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r9, [sp, #0x10]
	str r9, [sp, #0x14]
	str r0, [sp, #0x18]
	str r9, [sp, #0x1c]
	ldr r0, [r6]
	mov r1, r10
	mov r3, r8
	mov r2, r4
	bl FUN_020425fc
	ldr r0, [r6]
	bl FUN_0204331c
	ldr r0, [r7]
	ldr r3, [sp, #0x24]
	mov r1, r5
	str r9, [sp]
	str r9, [sp, #4]
	mov r2, r4
	str r9, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F130: .word unk_0209BA20
_0211F134: .word unk_02099F38
_0211F138: .word unk_02099EDC
	arm_func_end FUN_ov67_0211f040

	arm_func_start FUN_ov67_0211f13c
FUN_ov67_0211f13c: ; 0x0211F13C
	ldr r12, _0211F148 ; =FUN_ov67_0211f310
	mov r1, #0
	bx r12
_0211F148: .word FUN_ov67_0211f310
	arm_func_end FUN_ov67_0211f13c

	arm_func_start FUN_ov67_0211f14c
FUN_ov67_0211f14c: ; 0x0211F14C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r12, [r4, #0x38]
	cmp r12, #0
	beq _0211F1AC
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r2}
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0211F22C ; =0x0209F5C0
	add r3, r12, r3
	add r12, r3, #0x1e0
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211F1AC:
	ldr r12, [r4, #0x1ec]
	add lr, r4, #0x1ec
	cmp r12, #0
	ldrne r0, [lr, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211F21C
	mov r1, #0
	mov r0, #1
	stmia sp, {r0, r1}
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrh r3, [lr, #0xc]
	ldr r0, _0211F22C ; =0x0209F5C0
	mov r2, r1
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh lr, [lr, #0xe]
	mov r3, r1
	and lr, lr, #0xff
	str lr, [sp, #0x14]
	str r1, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211F21C:
	mov r0, r4
	bl FUN_ov67_0211f230
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_0211F22C: .word unk_0209F5C0
	arm_func_end FUN_ov67_0211f14c

	arm_func_start FUN_ov67_0211f230
FUN_ov67_0211f230: ; 0x0211F230
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _0211F2C4 ; =0x0209F5C0
	mov r5, #0
	mov r4, #2
	mov r8, r0
	mov r7, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	strb r7, [r8, #0x1e8]
	bl FUN_ov16_020f5eec
	ldr r2, [r8, #0x44]
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	stmia sp, {r4, r5}
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r4, r2, r1
	mov r1, r5
	mov r2, r7
	mov r3, r5
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F2C4: .word unk_0209F5C0
	arm_func_end FUN_ov67_0211f230

	arm_func_start FUN_ov67_0211f2c8
FUN_ov67_0211f2c8: ; 0x0211F2C8
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x1e8]
	cmp r1, #0
	ldrne r3, [r0, #0x50]
	cmpne r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x1e4]
	ldr r2, [r3, #4]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r1, r3, r2
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #5
	mov r1, #0
	mov r2, #2
	bl FUN_ov16_020f1160
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov67_0211f2c8

	arm_func_start FUN_ov67_0211f310
FUN_ov67_0211f310: ; 0x0211F310
	strb r1, [r0, #0xf5]
	bx lr
	arm_func_end FUN_ov67_0211f310

	arm_func_start FUN_ov67_0211f318
FUN_ov67_0211f318: ; 0x0211F318
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bmi _0211F33C
	cmp r6, #0xe
	blt _0211F348
_0211F33C:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211F348:
	cmp r5, #0xd
	addhs sp, sp, #0x14
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, r6, lsl #2
	ldr r0, [r0, #0x90]
	cmp r0, #0
	bne _0211F384
	ldr r0, _0211F414 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	add r1, r7, r6, lsl #2
	str r0, [r1, #0x90]
_0211F384:
	add r0, r7, r6, lsl #2
	ldr r6, _0211F414 ; =0x02099F38
	ldr r8, [r0, #0x90]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
	add r0, r7, r5, lsl #2
	ldr r2, [r0, #0x5c]
	ldr r0, [r6]
	mov r1, r8
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211346c
	mov r0, r7
	mov r1, r8
	ldr r3, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r3, [sp]
	str r2, [sp, #4]
	ldrh r4, [sp, #0x40]
	ldrb r3, [sp, #0x44]
	ldrb r2, [sp, #0x48]
	str r4, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl FUN_ov67_0211f418
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211F414: .word unk_02099F38
	arm_func_end FUN_ov67_0211f318

	arm_func_start FUN_ov67_0211f418
FUN_ov67_0211f418: ; 0x0211F418
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r4, _0211F4C8 ; =0x02099F38
	mov r7, r2
	ldr r0, [r4]
	mov r5, #1
	mov r6, r3
	mov r3, r5
	mov r2, #2
	mov r8, r1
	bl FUN_ov16_021142fc
	ldr r0, [r4]
	mov r1, r8
	sub r3, r5, #2
	mov r2, #0x190
	bl FUN_ov16_02112c90
	mov r1, r7, lsl #0x10
	mov r2, r1, asr #0x10
	mov r1, r6, lsl #0x10
	mov r3, r1, asr #0x10
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov16_02114248
	ldr r2, [sp, #0x24]
	ldr r0, _0211F4CC ; =0x02099EB4
	str r2, [sp]
	ldr r2, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r2, lsl #0x10
	mov r1, r5
	mov r3, r8
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fbe8
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r3, [sp, #0x2c]
	ldrb r2, [sp, #0x30]
	ldrh r1, [sp, #0x28]
	strb r3, [r0, #0x10]
	strb r2, [r0, #0xf]
	strh r1, [r0, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211F4C8: .word unk_02099F38
_0211F4CC: .word unk_02099EB4
	arm_func_end FUN_ov67_0211f418

	arm_func_start FUN_ov67_0211f4d0
FUN_ov67_0211f4d0: ; 0x0211F4D0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	bl FUN_ov67_02120e10
	cmp r0, #2
	mov r0, #0x88
	str r0, [sp]
	mov r6, #1
	mov r0, #0xa8
	stmib sp, {r0, r6}
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r7, #0
	moveq r7, #2
	str r6, [sp, #0x10]
	mov r5, #0
	str r5, [sp, #0x14]
	mov r0, r4
	mov r1, r6
	mov r3, r7
	mov r2, #5
	str r5, [sp, #0x18]
	bl FUN_ov67_0211f318
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	add r2, r7, #1
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_0211f4d0

	arm_func_start FUN_ov67_0211f590
FUN_ov67_0211f590: ; 0x0211F590
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	bl FUN_ov67_02120e10
	cmp r0, #2
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r1, #2
	mov r7, #0
	moveq r7, #2
	str r1, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r6, #0
	str r6, [sp, #0x14]
	mov r0, r4
	mov r3, r7
	mov r2, #4
	str r6, [sp, #0x18]
	bl FUN_ov67_0211f318
	movs r5, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r7
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	add r2, r7, #1
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_0211f590

	arm_func_start FUN_ov67_0211f654
FUN_ov67_0211f654: ; 0x0211F654
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r6, [r7, #0x9c]
	cmp r6, #0
	bne _0211F6A4
	ldr r4, _0211F770 ; =0x02099F38
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r6, r0
	str r6, [r7, #0x9c]
	ldr r3, [r7, #0x74]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
_0211F6A4:
	mov r0, r7
	bl FUN_ov67_0211ec64
	mov r7, #0
	mov r4, #1
	ldr r5, _0211F770 ; =0x02099F38
	str r7, [sp]
	cmp r0, #0
	mov r3, #2
	ldr r0, [r5]
	moveq r3, #1
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_0211401c
	mov r0, #0xa8
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_02113b78
	ldr r7, _0211F774 ; =0x02099EB4
	mov r8, #3
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov16_0210e7d0
	movs r5, r0
	bne _0211F730
	mov r0, #0xa
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_0210fbe8
	mov r5, r0
_0211F730:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0x11
	mov r0, r5
	mov r1, #0
	mov r2, #0xaf
	mov r3, #0x5e
	str r4, [sp]
	bl FUN_ov16_0210e674
	mov r0, #1
	strb r0, [r5, #0x11]
	mov r0, #0x400
	strh r0, [r5, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211F770: .word unk_02099F38
_0211F774: .word unk_02099EB4
	arm_func_end FUN_ov67_0211f654

	arm_func_start FUN_ov67_0211f778
FUN_ov67_0211f778: ; 0x0211F778
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	add r6, sp, #0
	mov r8, #0
	mov r10, r0
	mov r9, r1
	mov r3, r6
	mov r0, r8
	mov r1, r8
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r2, _0211F844 ; =0x02099F50
	stmia r3, {r0, r1}
	ldr r0, [r2]
	mov r2, #1
	bl FUN_02043310
	ldr r0, [r9, #8]
	ldr r7, [r9, #0xc]
	cmp r0, #0
	ble _0211F828
	ldr r5, _0211F848 ; =0x0209BA20
	mov r4, r8
_0211F7E4:
	mov r0, r10
	mov r1, r7
	bl FUN_ov67_0211f97c
	cmp r0, #0
	beq _0211F814
	ldrh r1, [r0]
	mov r0, r5
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0211F814
	strne r0, [r6, r8, lsl #2]
	streq r4, [r6, r8, lsl #2]
_0211F814:
	ldr r0, [r9, #8]
	add r8, r8, #1
	cmp r8, r0
	add r7, r7, #1
	blt _0211F7E4
_0211F828:
	ldr r1, [r9, #0x60]
	ldr r3, [r9, #0xc]
	add r2, sp, #0
	mov r0, r10
	bl FUN_ov67_0211f84c
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F844: .word unk_02099F50
_0211F848: .word unk_0209BA20
	arm_func_end FUN_ov67_0211f778

	arm_func_start FUN_ov67_0211f84c
FUN_ov67_0211f84c: ; 0x0211F84C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211F970 ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	str r1, [sp, #0x20]
	mov r9, r3
	bl FUN_ov16_02111438
	mov r7, r0
	mov r6, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r6, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl FUN_ov16_02111458
	mov r8, r0
	ldr r0, _0211F974 ; =0x02099F50
	mov r1, r6
	ldr r0, [r0]
	mov r2, #1
	bl FUN_02043310
	mov r4, r6
	mov r11, #1
	b _0211F92C
_0211F8C0:
	ldr r0, [r10, #0x11c]
	cmp r9, r0
	bge _0211F934
	ldr r1, [r10, #0x118]
	mov r0, r9, lsl #2
	ldrh r1, [r1, r0]
	ldr r0, _0211F978 ; =0x0209BA20
	bl FUN_ov16_020ee034
	movs r1, r0
	beq _0211F924
	mov r0, #0xc
	mul r0, r6, r0
	str r8, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _0211F974 ; =0x02099F50
	str r4, [sp, #0x1c]
	ldr r0, [r0]
	mov r2, r5
	mov r3, r7
	bl FUN_020425fc
_0211F924:
	add r6, r6, #1
	add r9, r9, #1
_0211F92C:
	cmp r6, #8
	blt _0211F8C0
_0211F934:
	ldr r0, _0211F974 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, _0211F970 ; =0x02099F38
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F970: .word unk_02099F38
_0211F974: .word unk_02099F50
_0211F978: .word unk_0209BA20
	arm_func_end FUN_ov67_0211f84c

	arm_func_start FUN_ov67_0211f97c
FUN_ov67_0211f97c: ; 0x0211F97C
	ldr r2, [r0, #0x118]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0
	blt _0211F9A0
	ldr r0, [r0, #0x11c]
	cmp r1, r0
	blt _0211F9A8
_0211F9A0:
	mov r0, #0
	bx lr
_0211F9A8:
	add r0, r2, r1, lsl #2
	bx lr
	arm_func_end FUN_ov67_0211f97c

	arm_func_start FUN_ov67_0211f9b0
FUN_ov67_0211f9b0: ; 0x0211F9B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1000
	add r8, sp, #0x800
	mov r5, r0
	ldr r0, _0211FB28 ; =0x0209BA20
	mov r2, r8
	mov r1, #0x15
	mov r3, #0x400
	mov r6, #0
	bl FUN_ov16_020ee0f8
	add r7, sp, #0
	mov r9, r6
	mov r4, r0
	mov r0, r9
	mov r1, r7
	mov r2, #0x800
	bl MIi_CpuClear16
	cmp r4, #0
	ble _0211FA4C
	add r1, r5, #0x100
_0211FA00:
	ldrh r0, [r1, #0x24]
	mov r3, r6
	cmp r0, #0
	ble _0211FA40
	mov r2, r9, lsl #1
	ldrh r12, [r8, r2]
	ldr r10, [r5, #0x120]
_0211FA1C:
	mov r2, r3, lsl #1
	ldrh r2, [r10, r2]
	cmp r12, r2
	moveq r0, r9, lsl #1
	streqh r3, [r7, r0]
	beq _0211FA40
	add r3, r3, #1
	cmp r3, r0
	blt _0211FA1C
_0211FA40:
	add r9, r9, #1
	cmp r9, r4
	blt _0211FA00
_0211FA4C:
	sub r10, r4, #1
	cmp r10, #0
	mov r12, #0
	ble _0211FAB8
	add r2, sp, #0x800
	add r8, sp, #0
_0211FA64:
	add lr, r12, #1
	cmp lr, r4
	bge _0211FAAC
	mov r6, r12, lsl #1
_0211FA74:
	mov r9, lr, lsl #1
	ldrh r7, [r8, r9]
	ldrh r3, [r8, r6]
	cmp r3, r7
	bls _0211FAA0
	ldrh r1, [r2, r9]
	ldrh r0, [r2, r6]
	strh r3, [r8, r9]
	strh r7, [r8, r6]
	strh r0, [r2, r9]
	strh r1, [r2, r6]
_0211FAA0:
	add lr, lr, #1
	cmp lr, r4
	blt _0211FA74
_0211FAAC:
	add r12, r12, #1
	cmp r12, r10
	blt _0211FA64
_0211FAB8:
	mov r9, #0
	mov r10, r9
	cmp r4, #0
	mov r6, r9
	ble _0211FB1C
	ldr r8, _0211FB28 ; =0x0209BA20
	add r7, sp, #0x800
_0211FAD4:
	mov r0, r10, lsl #1
	ldrh r1, [r7, r0]
	mov r0, r8
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0211FB10
	mov r0, r10, lsl #1
	ldrh r2, [r7, r0]
	ldr r1, [r5, #0x118]
	mov r0, r9, lsl #2
	strh r2, [r1, r0]
	ldr r0, [r5, #0x118]
	add r0, r0, r9, lsl #2
	strb r6, [r0, #2]
	add r9, r9, #1
_0211FB10:
	add r10, r10, #1
	cmp r10, r4
	blt _0211FAD4
_0211FB1C:
	str r9, [r5, #0x11c]
	add sp, sp, #0x1000
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211FB28: .word unk_0209BA20
	arm_func_end FUN_ov67_0211f9b0

	arm_func_start FUN_ov67_0211fb2c
FUN_ov67_0211fb2c: ; 0x0211FB2C
	stmfd sp!, {r3, lr}
	ldr r0, _0211FB48 ; =0x0209BA20
	bl FUN_ov16_020ee034
	cmp r0, #0
	ldrneh r0, [r0, #0x26]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0211FB48: .word unk_0209BA20
	arm_func_end FUN_ov67_0211fb2c

	arm_func_start FUN_ov67_0211fb4c
FUN_ov67_0211fb4c: ; 0x0211FB4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #0x11c]
	mov r8, r1
	mov r7, r2
	cmp r0, #0
	ldr r6, [r9, #0x118]
	mov r5, #0
	ble _0211FBC0
	ldr r4, _0211FBC8 ; =0x0209BA20
_0211FB74:
	ldrh r1, [r6]
	cmp r1, #0
	beq _0211FBAC
	mov r0, r4
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0211FBAC
	ldrh r0, [r0, #0x26]
	cmp r8, r0
	bne _0211FBAC
	cmp r7, #0
	strne r5, [r7]
	ldrh r0, [r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211FBAC:
	ldr r0, [r9, #0x11c]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #4
	blt _0211FB74
_0211FBC0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211FBC8: .word unk_0209BA20
	arm_func_end FUN_ov67_0211fb4c

	arm_func_start FUN_ov67_0211fbcc
FUN_ov67_0211fbcc: ; 0x0211FBCC
	mov r0, #0
	cmp r1, #2
	mvnne r0, #0
	bx lr
	arm_func_end FUN_ov67_0211fbcc

	arm_func_start FUN_ov67_0211fbdc
FUN_ov67_0211fbdc: ; 0x0211FBDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov67_0211fbcc
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	add r2, r6, #0x128
	mov r1, #0xa8
	mla r0, r1, r0, r2
	ldr r1, [r0, #0x1c]
	cmp r1, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov67_0211fbdc

	arm_func_start FUN_ov67_0211fc20
FUN_ov67_0211fc20: ; 0x0211FC20
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov67_02120e10
	mov r1, r0
	mov r0, r4
	mov r2, #0
	bl FUN_ov67_0211fbdc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_0211fc20

	arm_func_start FUN_ov67_0211fc40
FUN_ov67_0211fc40: ; 0x0211FC40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov67_0211fbcc
	add r6, r0, #1
	cmp r6, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r7, #0x128
	mov r4, #0xa8
_0211FC60:
	mla r1, r6, r4, r5
	mov r0, r7
	bl FUN_ov67_0211fc7c
	add r6, r6, #1
	cmp r6, #1
	blt _0211FC60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_0211fc40

	arm_func_start FUN_ov67_0211fc7c
FUN_ov67_0211fc7c: ; 0x0211FC7C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211FCF0 ; =0x02099F38
	b _0211FCAC
_0211FC90:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211FCA8
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211FCA8:
	add r5, r5, #1
_0211FCAC:
	cmp r5, #0x10
	blt _0211FC90
	ldr r1, [r6, #0x60]
	cmp r1, #0
	ble _0211FCCC
	ldr r0, _0211FCF0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211FCCC:
	mov r4, #0xa8
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_0211FCF0: .word unk_02099F38
	arm_func_end FUN_ov67_0211fc7c

	arm_func_start FUN_ov67_0211fcf4
FUN_ov67_0211fcf4: ; 0x0211FCF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r7, r1
	ldr r1, [r7, #0x1c]
	mov r8, r0
	cmp r1, #2
	ldreq r0, [r7]
	mov r5, #0
	streq r0, [sp, #0x14]
	mov r0, r8
	mov r1, r7
	strne r5, [sp, #0x14]
	bl FUN_ov67_0211fc7c
	mov r0, #2
	str r0, [r7, #0x1c]
	ldr r12, [r8, #0x11c]
	mov r9, #8
	mov r6, #0x10
	smulbb r1, r6, r9
	mov r2, #0x154
	str r2, [r7, #0xa4]
	ldr r0, [r7, #0x60]
	sub r1, r1, #0x40
	str r12, [r7, #4]
	str r9, [r7, #8]
	ldr r9, [r8, #0xf8]
	mov r4, #0x70
	mov r3, #0x20
	mov r2, #0x30
	sub r1, r1, #0x20
	strh r9, [r7, #0x6e]
	strh r6, [r7, #0x70]
	strh r4, [r7, #0x92]
	strh r6, [r7, #0x94]
	strh r6, [r7, #0x9e]
	strh r3, [r7, #0xa0]
	strh r4, [r7, #0x96]
	strh r2, [r7, #0x98]
	strh r5, [r7, #0x9a]
	strh r1, [r7, #0x9c]
	cmp r0, #0
	bne _0211FDC8
	ldr r4, _0211FEF4 ; =0x02099F38
	mov r1, #5
	ldr r0, [r4]
	mov r2, #4
	bl FUN_02059630
	mov r1, r0
	str r1, [r7, #0x60]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211FDC8:
	add r4, sp, #0x10
	mov r6, #0
	mov r0, r8
	mov r1, r7
	mov r2, r4
	str r6, [sp, #0x10]
	bl FUN_ov67_0211ff80
	mov r9, #0x14
	b _0211FE28
_0211FDEC:
	ldrsh r1, [r7, #0x6e]
	add r12, r7, r6, lsl #2
	mov r0, r8
	strh r1, [r12, #0x72]
	ldrsh r3, [r7, #0x70]
	ldrsh r2, [r7, #0x94]
	mov r1, r7
	add r3, r3, #0x10
	mla r2, r6, r2, r3
	strh r2, [r12, #0x74]
	mov r2, r4
	mov r3, r6
	str r9, [sp]
	bl FUN_ov67_02120014
	add r6, r6, #1
_0211FE28:
	ldr r0, [r7, #8]
	cmp r6, r0
	blt _0211FDEC
	add r4, sp, #0x10
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov67_021201c8
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov67_02120274
	bl FUN_ov16_020f081c
	add r0, r8, r0, lsl #1
	ldrh r1, [r0, #0xcc]
	add r2, sp, #0x14
	mov r0, r8
	bl FUN_ov67_0211fb4c
	cmp r0, #0
	streq r5, [sp, #0x14]
	ldr r1, [sp, #0x14]
	mov r0, r7
	bl FUN_ov16_020f52f4
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov67_0212091c
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov67_02120a70
	mov r0, r8
	mov r1, r7
	bl FUN_ov67_02120830
	ldrsh r2, [r7, #0x70]
	mov r1, #0x80
	mov r0, #0x90
	add r2, r2, #4
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, _0211FEF8 ; =0x02099EB4
	ldrsh r3, [r7, #0x6e]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #5
	bl FUN_ov16_0210fba4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211FEF4: .word unk_02099F38
_0211FEF8: .word unk_02099EB4
	arm_func_end FUN_ov67_0211fcf4

	arm_func_start FUN_ov67_0211fefc
FUN_ov67_0211fefc: ; 0x0211FEFC
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
	ldr r0, _0211FF7C ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x65]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x64]
	ldr r1, [r5]
	add r2, r6, #0x65
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211FF7C: .word unk_02099F38
	arm_func_end FUN_ov67_0211fefc

	arm_func_start FUN_ov67_0211ff80
FUN_ov67_0211ff80: ; 0x0211FF80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, #0
	mov r4, #1
	mov r3, r5
	mov r7, r0
	mov r6, r1
	str r4, [sp]
	bl FUN_ov67_0211fefc
	movs r4, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0xa4]
	ldr r8, _02120010 ; =0x02099F38
	mov r2, r0, lsl #0x10
	ldr r0, [r8]
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r2, [r6, #0x6e]
	ldrsh r3, [r6, #0x70]
	ldr r0, [r8]
	mov r1, r4
	bl FUN_ov16_02114248
	ldr r2, [r7, #0x64]
	ldr r0, [r8]
	mov r1, r4
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0211346c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120010: .word unk_02099F38
	arm_func_end FUN_ov67_0211ff80

	arm_func_start FUN_ov67_02120014
FUN_ov67_02120014: ; 0x02120014
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r9, #1
	mov r4, r3
	mov r10, #2
	mov r3, r9
	mov r7, r0
	mov r5, r1
	str r10, [sp]
	bl FUN_ov67_0211fefc
	movs r8, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r5, #0xa4]
	ldr r6, _021201B0 ; =0x02099F38
	sub r0, r0, #5
	mov r2, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r8
	mov r3, r9
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112c90
	add r0, r5, r4, lsl #2
	ldrsh r2, [r0, #0x72]
	ldrsh r3, [r0, #0x74]
	ldr r0, [r6]
	mov r1, r8
	bl FUN_ov16_02114248
	ldr r1, [r7, #0x68]
	ldr r0, [r6]
	and r3, r1, #0xff
	mov r1, r8
	mov r2, r9
	bl FUN_ov16_021137dc
	mov r7, #0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r9
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r2, r9
	ldr r0, [r6]
	mov r1, r8
	mov r3, r10
	bl FUN_ov16_02113f7c
	str r10, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r10
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r8
	mov r2, r10
	ldr r3, [r5, #0x60]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r9, #0xc
	str r9, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r10
	mov r3, #0x80
	bl FUN_ov16_02113d08
	mul r0, r4, r9
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r6]
	mov r2, r10
	mov r1, r8
	mov r3, r7
	bl FUN_ov16_02113d88
	add r3, r5, r4, lsl #2
	add r0, r4, #6
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldrsh r1, [r3, #0x74]
	ldr r4, [sp, #0x30]
	ldr r0, _021201B4 ; =0x02099EB4
	str r1, [sp]
	ldrsh r6, [r5, #0x92]
	mov r1, #3
	str r6, [sp, #4]
	ldrsh r5, [r5, #0x94]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r0]
	ldrsh r3, [r3, #0x72]
	bl FUN_ov16_0210fba4
	strh r8, [r0, #0x34]
	strb r7, [r0, #0x38]
	ldr r2, _021201B8 ; =FUN_ov16_0210f940
	ldr r1, _021201BC ; =FUN_ov16_0210fa20
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r2, _021201C0 ; =FUN_ov16_0210fb10
	ldr r1, _021201C4 ; =FUN_ov16_0210fb1c
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021201B0: .word unk_02099F38
_021201B4: .word unk_02099EB4
_021201B8: .word FUN_ov16_0210f940
_021201BC: .word FUN_ov16_0210fa20
_021201C0: .word FUN_ov16_0210fb10
_021201C4: .word FUN_ov16_0210fb1c
	arm_func_end FUN_ov67_02120014

	arm_func_start FUN_ov67_021201c8
FUN_ov67_021201c8: ; 0x021201C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, #3
	mov r6, #1
	mov r3, r5
	mov r7, r0
	mov r8, r1
	str r6, [sp]
	bl FUN_ov67_0211fefc
	movs r4, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0xa4]
	ldr r8, _02120270 ; =0x02099F38
	sub r0, r0, #0xa
	mov r2, r0, lsl #0x10
	ldr r0, [r8]
	mov r1, r4
	mov r2, r2, lsr #0x10
	sub r3, r5, #4
	bl FUN_ov16_02112c90
	ldr r3, [r7, #0x80]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r1, r4
	mov r2, r6
	str r5, [sp]
	ldr r0, [r8]
	mov r3, r5
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120270: .word unk_02099F38
	arm_func_end FUN_ov67_021201c8

	arm_func_start FUN_ov67_02120274
FUN_ov67_02120274: ; 0x02120274
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #1
	mov r3, #2
	mov r8, r0
	mov r7, r1
	mov r6, r2
	str r5, [sp]
	bl FUN_ov67_0211fefc
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r9, _021207C8 ; =0x02099F38
	ldr r2, [r8, #0x7c]
	ldr r0, [r9]
	mov r1, r4
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r9]
	mov r1, r4
	mov r3, r2
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa4]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r11, [r7, #0x6e]
	ldrsh r2, [r7, #0x96]
	ldrsh r10, [r7, #0x70]
	ldrsh r3, [r7, #0x98]
	add r2, r11, r2
	mov r2, r2, lsl #0x10
	add r3, r10, r3
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r4
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	mov r3, r4
	mov r4, #0x14
	ldr r11, _021207CC ; =0x02099EB4
	str r4, [sp]
	ldr r0, [r11]
	mov r1, #3
	mov r2, #0x13
	bl FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e720
	strb r5, [r10, #0x12]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #2
	str r5, [sp]
	bl FUN_ov67_0211fefc
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x78]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r9]
	mov r1, r10
	mov r3, r2
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa4]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r3, [r7, #0x70]
	ldrsh r2, [r7, #0x98]
	ldrsh lr, [r7, #0x6e]
	ldrsh r12, [r7, #0x96]
	add r3, r3, r2
	sub r3, r3, #0x20
	add r12, lr, r12
	mov r12, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r10
	mov r2, r12, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	str r4, [sp]
	ldr r0, [r11]
	mov r3, r10
	mov r1, #3
	mov r2, #0x10
	bl FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #2
	str r5, [sp]
	bl FUN_ov67_0211fefc
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x78]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r10
	mov r2, #2
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa4]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r3, [r7, #0x70]
	ldrsh r2, [r7, #0x98]
	ldrsh lr, [r7, #0x6e]
	ldrsh r12, [r7, #0x96]
	add r3, r3, r2
	sub r3, r3, #0x10
	add r12, lr, r12
	mov r12, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r10
	mov r2, r12, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	str r4, [sp]
	ldr r0, [r11]
	mov r3, r10
	mov r1, #3
	mov r2, #0xf
	bl FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, #2
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, #3
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #2
	str r5, [sp]
	bl FUN_ov67_0211fefc
	movs r10, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x78]
	ldr r0, [r9]
	mov r1, r10
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r10
	mov r2, #4
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa4]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldrsh r3, [r7, #0x6e]
	ldrsh r2, [r7, #0x96]
	ldrsh r12, [r7, #0x70]
	ldrsh lr, [r7, #0x9c]
	add r2, r3, r2
	ldrsh r3, [r7, #0x98]
	mov r2, r2, lsl #0x10
	ldr r0, [r9]
	add r3, r12, r3
	add r3, lr, r3
	add r3, r3, #0x20
	mov r3, r3, lsl #0x10
	mov r1, r10
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	str r4, [sp]
	ldr r0, [r11]
	mov r3, r10
	mov r1, #3
	mov r2, #0x11
	bl FUN_ov16_0210fbe8
	mov r10, r0
	mov r1, #0
	add r0, r10, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, #4
	add r0, r10, #0x3a
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r10, #0x3e
	mov r2, #5
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r2, r6
	mov r3, #2
	mov r0, r8
	mov r1, r7
	str r5, [sp]
	bl FUN_ov67_0211fefc
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x78]
	ldr r0, [r9]
	mov r1, r6
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r8, #6
	ldr r0, [r9]
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r2, [r7, #0xa4]
	ldr r0, [r9]
	sub r2, r2, #5
	mov r2, r2, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r0, [r9]
	ldrsh r10, [r7, #0x6e]
	ldrsh r2, [r7, #0x96]
	ldrsh r3, [r7, #0x9c]
	ldrsh r9, [r7, #0x70]
	ldrsh r7, [r7, #0x98]
	add r2, r10, r2
	mov r2, r2, lsl #0x10
	add r7, r9, r7
	add r3, r3, r7
	add r3, r3, #0x30
	mov r3, r3, lsl #0x10
	mov r1, r6
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	str r4, [sp]
	ldr r0, [r11]
	mov r1, #3
	mov r3, r6
	mov r2, #0x12
	bl FUN_ov16_0210fbe8
	mov r4, r0
	mov r1, #0
	add r0, r4, #0x3a
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, r8
	add r0, r4, #0x3a
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	mov r2, r5
	add r0, r4, #0x3e
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r4, #0x3e
	mov r3, r1
	mov r2, #7
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021207C8: .word unk_02099F38
_021207CC: .word unk_02099EB4
	arm_func_end FUN_ov67_02120274

	arm_func_start FUN_ov67_021207d0
FUN_ov67_021207d0: ; 0x021207D0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrb r3, [r1, #0x66]
	ldr r12, [r1, #0xc]
	add r3, r3, r2
	add r3, r1, r3, lsl #2
	add r1, r12, r2
	ldr r4, [r3, #0x20]
	bl FUN_ov67_0211f97c
	cmp r0, #0
	ldrneh r0, [r0]
	mov r2, #2
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	str r1, [sp]
	ldr r0, _0212082C ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r3, r2
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0212082C: .word unk_02099F38
	arm_func_end FUN_ov67_021207d0

	arm_func_start FUN_ov67_02120830
FUN_ov67_02120830: ; 0x02120830
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	bl FUN_ov67_0211f778
	ldr r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_02120850:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov67_021207d0
	ldr r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _02120850
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov67_02120830

	arm_func_start FUN_ov67_02120874
FUN_ov67_02120874: ; 0x02120874
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x6b]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _021208A8
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _021208B0
_021208A8:
	mov r0, #0
	str r0, [sp, #0x28]
_021208B0:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x6a]
	ldr r0, _02120914 ; =0x02099ED4
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl FUN_ov16_0210e29c
	ldrb r1, [r4, #0x6a]
	ldr r0, _02120918 ; =0x02099F38
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r3, #1
	bl FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_02120914: .word unk_02099ED4
_02120918: .word unk_02099F38
	arm_func_end FUN_ov67_02120874

	arm_func_start FUN_ov67_0212091c
FUN_ov67_0212091c: ; 0x0212091C
	stmfd sp!, {r3, lr}
	ldr r12, [r1, #0x10]
	cmp r12, #0
	blt _02120938
	ldr r3, [r1, #8]
	cmp r12, r3
	blt _02120964
_02120938:
	ldrb r0, [r1, #0x6b]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r3, [r1, #0x6a]
	ldr r0, _02120980 ; =0x02099F38
	mov r2, #2
	add r1, r1, r3, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	bl FUN_ov16_02114370
	ldmfd sp!, {r3, pc}
_02120964:
	str r2, [sp]
	ldr r2, [r1, #0x10]
	add r3, r1, r2, lsl #2
	ldrsh r2, [r3, #0x72]
	ldrsh r3, [r3, #0x74]
	bl FUN_ov67_02120874
	ldmfd sp!, {r3, pc}
_02120980: .word unk_02099F38
	arm_func_end FUN_ov67_0212091c

	arm_func_start FUN_ov67_02120984
FUN_ov67_02120984: ; 0x02120984
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r9, r1
	ldrb r0, [r9, #0x69]
	mov r8, r2
	mov r7, r3
	cmp r0, #3
	addlo sp, sp, #0x1c
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r9, #4]
	ldr r0, [r9, #8]
	mov r6, #1
	cmp r1, r0
	movle r6, #0
	mov r5, #0
	mov r4, #2
	ldr r10, _02120A64 ; =0x02099F38
	b _021209F0
_021209CC:
	ldrb r1, [r9, #0x68]
	ldr r0, [r10]
	mov r2, r4
	add r1, r1, r5
	add r1, r9, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r6
	bl FUN_ov16_021142fc
	add r5, r5, #1
_021209F0:
	ldrb r0, [r9, #0x69]
	cmp r5, r0
	blt _021209CC
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
	ldr r0, _02120A68 ; =0x02099ED4
	mov r2, r1
	add r3, r9, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl FUN_ov16_0210e29c
	ldr r0, _02120A6C ; =0x02099EB4
	mov r2, r8
	ldr r0, [r0]
	mov r3, r7
	mov r1, #0x13
	bl FUN_ov16_0210fd0c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02120A64: .word unk_02099F38
_02120A68: .word unk_02099ED4
_02120A6C: .word unk_02099EB4
	arm_func_end FUN_ov67_02120984

	arm_func_start FUN_ov67_02120a70
FUN_ov67_02120a70: ; 0x02120A70
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrsh r3, [r4, #0x9c]
	ldr r1, [r4, #0xc]
	mov r5, r0
	mul r0, r3, r1
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	mov r6, r2
	sub r1, r3, r1
	bl _s32_div_f
	str r6, [sp]
	mov lr, r0
	ldrsh r1, [r4, #0x70]
	ldrsh r0, [r4, #0x98]
	ldrsh r12, [r4, #0x6e]
	ldrsh r2, [r4, #0x96]
	add r3, r1, r0
	mov r0, r5
	mov r1, r4
	add r2, r12, r2
	add r3, r3, lr
	bl FUN_ov67_02120984
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov67_02120a70

	arm_func_start FUN_ov67_02120ad8
FUN_ov67_02120ad8: ; 0x02120AD8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r2
	bl FUN_ov16_020f52f4
	mov r4, r0
	tst r4, #1
	beq _02120B18
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov67_0212091c
_02120B18:
	tst r4, #2
	beq _02120B48
	mov r0, r7
	mov r1, r6
	bl FUN_ov67_02120830
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _02120B48
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov67_02120a70
_02120B48:
	mov r0, r7
	bl FUN_ov67_02120cd0
	mov r0, r7
	bl FUN_ov67_02120c68
	mov r1, r0
	mov r0, r7
	bl FUN_ov67_02120f1c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_02120ad8

	arm_func_start FUN_ov67_02120b6c
FUN_ov67_02120b6c: ; 0x02120B6C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r1, [r5, #4]
	ldr r12, [r5]
	mov r6, r0
	add r0, r1, r12
	mov r4, r3
	add r0, r2, r0
	bl _s32_div_f
	mov r2, r1
	mov r12, #1
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov67_02120ad8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov67_02120b6c

	arm_func_start FUN_ov67_02120bb8
FUN_ov67_02120bb8: ; 0x02120BB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r2
	bl FUN_ov16_020f53e8
	mov r4, r0
	tst r4, #1
	beq _02120BF8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov67_0212091c
_02120BF8:
	tst r4, #2
	beq _02120C28
	mov r0, r7
	mov r1, r6
	bl FUN_ov67_02120830
	ldrb r0, [sp, #0x18]
	cmp r0, #0
	beq _02120C28
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov67_02120a70
_02120C28:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov67_02120bb8

	arm_func_start FUN_ov67_02120c30
FUN_ov67_02120c30: ; 0x02120C30
	stmfd sp!, {r3, lr}
	mov r12, #1
	str r12, [sp]
	ldr r12, [r1, #0xc]
	add r2, r12, r2
	bl FUN_ov67_02120bb8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov67_02120c30

	arm_func_start FUN_ov67_02120c4c
FUN_ov67_02120c4c: ; 0x02120C4C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov67_02120c68
	tst r4, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_02120c4c

	arm_func_start FUN_ov67_02120c68
FUN_ov67_02120c68: ; 0x02120C68
	ldrh r1, [r0, #0xee]
	ldrh r2, [r0, #0xec]
	mvn r0, r1
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov67_02120c68

	arm_func_start FUN_ov67_02120c84
FUN_ov67_02120c84: ; 0x02120C84
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r2, r4
	mov r5, r0
	bl FUN_ov67_0211fbdc
	cmp r0, #0
	beq _02120CB0
	ldr r1, [r0]
	mov r0, r5
	bl FUN_ov67_02120cb8
	mov r4, r0
_02120CB0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov67_02120c84

	arm_func_start FUN_ov67_02120cb8
FUN_ov67_02120cb8: ; 0x02120CB8
	stmfd sp!, {r3, lr}
	bl FUN_ov67_0211f97c
	cmp r0, #0
	ldrneh r0, [r0]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov67_02120cb8

	arm_func_start FUN_ov67_02120cd0
FUN_ov67_02120cd0: ; 0x02120CD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov67_0211fc20
	mov r1, #0
	strh r1, [r4, #0xee]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0]
	mov r0, r4
	bl FUN_ov67_0211f97c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r0, #2]
	cmp r0, #2
	ldreqh r0, [r4, #0xee]
	orreq r0, r0, #1
	streqh r0, [r4, #0xee]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_02120cd0

	arm_func_start FUN_ov67_02120d18
FUN_ov67_02120d18: ; 0x02120D18
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x110]
	mov r12, r1
	add r1, r2, r3
	mov r2, r1, lsl #0x10
	ldr r1, [r0, #0x90]
	mov r3, r2, asr #0x10
	mov r2, r12, lsl #0x10
	ldr r0, _02120D54 ; =0x02099F38
	str r3, [sp]
	ldr r0, [r0]
	mov r3, r2, asr #0x10
	mov r2, #4
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, pc}
_02120D54: .word unk_02099F38
	arm_func_end FUN_ov67_02120d18

	arm_func_start FUN_ov67_02120d58
FUN_ov67_02120d58: ; 0x02120D58
	mov r1, #0
	str r1, [r0, #0x10c]
	str r1, [r0, #0x110]
	str r1, [r0, #0x108]
	strb r1, [r0, #0x114]
	bx lr
	arm_func_end FUN_ov67_02120d58

	arm_func_start FUN_ov67_02120d70
FUN_ov67_02120d70: ; 0x02120D70
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x114]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x108]
	sub r1, r1, #1
	str r1, [r0, #0x108]
	cmp r1, #0
	ldmgtfd sp!, {r3, pc}
	ldr r1, [r0, #0x10c]
	mov r3, #2
	str r3, [r0, #0x108]
	cmp r1, #0
	bne _02120DD0
	ldr r2, [r0, #0x110]
	sub r1, r3, #5
	sub r2, r2, #1
	str r2, [r0, #0x110]
	cmp r2, r1
	movle r2, r1
	movle r1, #1
	strle r2, [r0, #0x110]
	strle r1, [r0, #0x10c]
	b _02120DF0
_02120DD0:
	ldr r1, [r0, #0x110]
	add r1, r1, #1
	cmp r1, #3
	str r1, [r0, #0x110]
	movge r2, #3
	movge r1, #0
	strge r2, [r0, #0x110]
	strge r1, [r0, #0x10c]
_02120DF0:
	ldr r1, [r0, #0x100]
	ldr r2, [r0, #0x104]
	bl FUN_ov67_02120d18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov67_02120d70

	arm_func_start FUN_ov67_02120e00
FUN_ov67_02120e00: ; 0x02120E00
	mov r2, #4
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov67_02120e00

	arm_func_start FUN_ov67_02120e10
FUN_ov67_02120e10: ; 0x02120E10
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov67_02120e10

	arm_func_start FUN_ov67_02120e18
FUN_ov67_02120e18: ; 0x02120E18
	mov r2, #8
	str r2, [r0, #0xc]
	str r1, [r0, #8]
	mov r0, #1
	bx lr
	arm_func_end FUN_ov67_02120e18

	arm_func_start FUN_ov67_02120e2c
FUN_ov67_02120e2c: ; 0x02120E2C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r5, _02120F14 ; =0x02099EB4
	mov r4, r0
	mov r6, #3
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov16_0210eb3c
	mov r0, r4
	bl FUN_ov67_02120e10
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211fc40
	mov r0, r4
	bl FUN_ov67_02120e10
	cmp r0, #1
	beq _02120E7C
	cmp r0, #2
	beq _02120E88
	b _02120EF8
_02120E7C:
	add r0, r6, #0x400
	strh r0, [r4, #0xec]
	b _02120EF8
_02120E88:
	add r0, r6, #0x400
	strh r0, [r4, #0xec]
	bl FUN_ov16_020f081c
	mov r2, r0, lsl #1
	ldr r1, _02120F18 ; =0x0209A490
	mov r0, r4
	ldrh r1, [r1, r2]
	strh r1, [r4, #0xd0]
	bl FUN_ov67_02120e10
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl FUN_ov67_0211fbdc
	mov r1, r0
	mov r0, r4
	bl FUN_ov67_0211fcf4
	mov r1, r6
	mov r3, #0
	str r3, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r2, #4
	bl FUN_ov16_0210fba4
_02120EF8:
	mov r0, r4
	bl FUN_ov67_02120cd0
	ldrh r1, [r4, #0xec]
	mov r0, r4
	bl FUN_ov67_02120f1c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_02120F14: .word unk_02099EB4
_02120F18: .word unk_0209A490
	arm_func_end FUN_ov67_02120e2c

	arm_func_start FUN_ov67_02120f1c
FUN_ov67_02120f1c: ; 0x02120F1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r4, r1
	mov r6, r8
	mov r7, #1
	ldr r5, _02120F80 ; =0x02099EB4
	b _02120F74
_02120F38:
	mov r0, r7, lsl r8
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r5]
	mov r1, r9
	bl FUN_ov16_0210ebd4
	movs r1, r0
	beq _02120F70
	tst r9, r4
	moveq r0, r7
	movne r0, r6
	strb r0, [r1, #0x10]
	ldr r0, [r5]
	bl FUN_ov16_0210ee80
_02120F70:
	add r8, r8, #1
_02120F74:
	cmp r8, #0x10
	blt _02120F38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02120F80: .word unk_02099EB4
	arm_func_end FUN_ov67_02120f1c

	arm_func_start FUN_ov67_02120f84
FUN_ov67_02120f84: ; 0x02120F84
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r0, [r0, #0xec]
	ldr r4, _02120FCC ; =0x02099EB4
	add r2, sp, #0
	and r0, r1, r0
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02120FCC: .word unk_02099EB4
	arm_func_end FUN_ov67_02120f84

	arm_func_start FUN_ov67_02120fd0
FUN_ov67_02120fd0: ; 0x02120FD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	mov r7, #0
	mov r4, #8
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021211EC ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #6
	blt _021210A8
	cmp r5, #0xe
	bgt _021210A8
	mov r0, r6
	sub r4, r5, #6
	bl FUN_ov67_0211fc20
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strb r7, [r5, #0x6c]
	ldr r1, [r5]
	ldr r0, [r5, #0xc]
	sub r0, r1, r0
	cmp r4, r0
	moveq r0, #1
	streqb r0, [r5, #0x6c]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #4]
	add r1, r4, r1
	cmp r1, r0
	bge _02121098
	mov r0, r5
	bl FUN_ov16_020f52f4
	mov r0, r6
	mov r1, r5
	mov r2, #8
	bl FUN_ov67_0212091c
	ldr r1, [r6, #0x10]
	mov r0, r6
	bl FUN_ov67_02120c84
	mov r1, r0
	mov r0, r6
	bl FUN_ov67_0211fb2c
	mov r4, r0
	bl FUN_ov16_020f081c
	ldr r1, _021211F0 ; =0x0209A490
	mov r0, r0, lsl #1
	strh r4, [r1, r0]
_02121098:
	ldr r0, _021211F4 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021210A8:
	cmp r5, #0xf
	bne _021210F0
	ldr r0, [r6, #0x11c]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021211F4 ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov67_0211fc20
	mov r1, r0
	mov r0, r6
	sub r2, r4, #9
	mov r3, #0
	bl FUN_ov67_02120c30
	mov r0, #0xf
	str r0, [r6, #0xfc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021210F0:
	cmp r5, #0x11
	bne _02121138
	ldr r0, [r6, #0x11c]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021211F4 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov67_0211fc20
	mov r1, r0
	mov r0, r6
	mov r2, #1
	mov r3, #0
	bl FUN_ov67_02120c30
	mov r0, #0xf
	str r0, [r6, #0xfc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121138:
	cmp r5, #0x10
	bne _02121180
	ldr r0, [r6, #0x11c]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021211F4 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov67_0211fc20
	mov r2, #0
	mov r1, r0
	mov r4, #1
	mov r0, r6
	mov r3, r2
	str r4, [sp]
	bl FUN_ov67_02120bb8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121180:
	cmp r5, #0x12
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x11c]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021211F4 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov67_0211fc20
	mov r5, r0
	mov r0, r6
	bl FUN_ov67_0211fc20
	mov r4, r0
	mov r0, r6
	bl FUN_ov67_0211fc20
	mov r1, r5
	mov r3, r0
	mov r0, r6
	mov r2, #1
	str r2, [sp]
	ldr r4, [r4, #4]
	ldr r2, [r3, #8]
	mov r3, #0
	sub r2, r4, r2
	bl FUN_ov67_02120bb8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021211EC: .word unk_02099EB4
_021211F0: .word unk_0209A490
_021211F4: .word gL5Sound
	arm_func_end FUN_ov67_02120fd0

	arm_func_start FUN_ov67_021211f8
FUN_ov67_021211f8: ; 0x021211F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r4, _021212E4 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #1
	blt _0212124C
	cmp r5, #3
	bgt _0212124C
	cmp r0, #0
	ldrneh r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r4]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0212124C:
	cmp r5, #6
	blt _021212B4
	cmp r5, #0xe
	bgt _021212B4
	mov r0, r6
	sub r4, r5, #6
	bl FUN_ov67_0211fc20
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0]
	ldr r2, [r0, #0xc]
	sub r1, r1, r2
	cmp r4, r1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r1, [r0, #0x6c]
	cmp r1, #0
	ldrne r0, [r0, #4]
	addne r1, r4, r2
	cmpne r1, r0
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, _021212E4 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_021212B4:
	cmp r5, #0xf
	cmpne r5, #0x11
	moveq r0, #0
	streq r0, [r6, #0xfc]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #4
	ldreq r0, _021212E4 ; =0x02099EB4
	moveq r1, #2
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_021212E4: .word unk_02099EB4
	arm_func_end FUN_ov67_021211f8

	arm_func_start FUN_ov67_021212e8
FUN_ov67_021212e8: ; 0x021212E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _021213C0 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldr r0, [r4, #0xfc]
	cmp r0, #0
	beq _0212132C
	sub r0, r0, #1
	str r0, [r4, #0xfc]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
_0212132C:
	cmp r5, #0xf
	bne _02121378
	ldr r0, [r4, #0x11c]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r5, #8
	ldr r0, _021213C4 ; =gL5Sound
	mov r1, r5
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov67_0211fc20
	mov r1, r0
	mov r0, r4
	sub r2, r5, #9
	mov r3, #0
	bl FUN_ov67_02120c30
	mov r0, #4
	str r0, [r4, #0xfc]
	ldmfd sp!, {r3, r4, r5, pc}
_02121378:
	cmp r5, #0x11
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x11c]
	cmp r0, #9
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r0, _021213C4 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov67_0211fc20
	mov r1, r0
	mov r0, r4
	mov r2, #1
	mov r3, #0
	bl FUN_ov67_02120c30
	mov r0, #4
	str r0, [r4, #0xfc]
	ldmfd sp!, {r3, r4, r5, pc}
_021213C0: .word unk_02099EB4
_021213C4: .word gL5Sound
	arm_func_end FUN_ov67_021212e8

	arm_func_start FUN_ov67_021213c8
FUN_ov67_021213c8: ; 0x021213C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r8, _02121528 ; =0x02099EB4
	mov r5, r1
	mov r7, r0
	mov r1, r5, lsl #0x10
	ldr r0, [r8]
	mov r1, r1, lsr #0x10
	mov r6, r2
	mov r9, #0
	bl FUN_ov16_0210e7d0
	mov r10, r0
	mov r0, r7
	bl FUN_ov67_0211fc20
	mov r4, r0
	ldr r0, [r8]
	add r1, sp, #4
	bl FUN_ov16_0210f48c
	cmp r10, #0
	cmpne r4, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0x13
	bne _02121504
	ldrsh r1, [r4, #0x6e]
	ldrsh r0, [r4, #0x96]
	ldrsh r3, [r4, #0x70]
	ldrsh r2, [r4, #0x98]
	add r0, r1, r0
	ldrsh r1, [sp, #6]
	strh r0, [sp, #4]
	ldrsh r0, [r4, #0xa0]
	add r5, r3, r2
	sub r0, r1, r0, asr #1
	strh r0, [sp, #6]
	ldrsh r1, [sp, #6]
	cmp r1, r5
	strlth r5, [sp, #6]
	blt _02121474
	ldrsh r0, [r4, #0x9c]
	add r0, r5, r0
	cmp r1, r0
	strgeh r0, [sp, #6]
_02121474:
	cmp r6, #0
	bne _02121494
	str r9, [sp]
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r7
	mov r1, r4
	bl FUN_ov67_02120984
_02121494:
	ldrsh r2, [sp, #6]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	sub r2, r2, r5
	sub r0, r1, r0
	add r1, r0, #1
	mul r0, r1, r2
	ldrsh r1, [r4, #0x9c]
	bl _s32_div_f
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, r0
	cmp r3, r1
	movlt r2, #0
	blt _021214E8
	cmp r2, #0
	movlt r2, #0
	blt _021214E8
	sub r0, r3, r1
	cmp r2, r0
	movge r2, r0
_021214E8:
	mov r0, r7
	mov r1, r4
	mov r3, #0
	str r6, [sp]
	bl FUN_ov67_02120bb8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121504:
	cmp r5, #0xf
	beq _02121518
	cmp r5, #0x11
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121518:
	cmp r6, #0
	strne r9, [r7, #0xfc]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121528: .word unk_02099EB4
	arm_func_end FUN_ov67_021213c8

	arm_func_start FUN_ov67_0212152c
FUN_ov67_0212152c: ; 0x0212152C
	ldr r2, _0212153C ; =0x02122508
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0212153C: .word ov67_02122508
	arm_func_end FUN_ov67_0212152c

	arm_func_start FUN_ov67_02121540
FUN_ov67_02121540: ; 0x02121540
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov67_0211fc20
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r1, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021217FC ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02121800 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _02121590
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02121590:
	ldr r7, _02121804 ; =0x02099EB4
	ldr r0, [r7]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _021215C0
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_021215C0:
	mov r0, r6
	mov r1, r5
	bl FUN_ov67_02120f84
	mov r0, r6
	bl FUN_ov67_02120e10
	cmp r0, #1
	beq _021215E8
	cmp r0, #2
	beq _021216A0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021215E8:
	tst r5, #2
	beq _0212166C
	mov r4, #6
	ldr r0, _02121808 ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	ldr r0, _02121800 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _02121620
	mov r0, r6
	mov r1, #0x77
	bl FUN_ov67_02120e18
	b _0212168C
_02121620:
	ldr r0, _0212180C ; =0x0209AEC0
	str r4, [r6, #0xc]
	ldrb r0, [r0, #0x64]
	mov r4, #0
	ldr r5, _02121810 ; =0x0209F5C0
	cmp r0, #0
	ldrne r0, _02121814 ; =0x020E9482
	movne r1, #0
	strneb r1, [r0]
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5ff4
	mov r0, r6
	bl FUN_ov67_0211f14c
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212166C:
	tst r5, #1
	beq _0212168C
	ldr r0, _02121808 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #2
	bl FUN_ov67_02120e00
_0212168C:
	tst r5, #0x400
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov67_0211e71c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021216A0:
	tst r5, #1
	beq _021216DC
	mov r4, #1
	mov r0, r6
	mov r1, r4
	bl FUN_ov67_02120c4c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02121808 ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, r4
	bl FUN_ov67_02120e00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021216DC:
	tst r5, #2
	beq _02121728
	mov r0, r6
	mov r1, #2
	bl FUN_ov67_02120c4c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02121808 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	bl FUN_ov16_020f081c
	mov r3, r0, lsl #1
	ldrh r4, [r6, #0xd0]
	ldr r2, _02121818 ; =0x0209A490
	mov r0, r6
	mov r1, #1
	strh r4, [r2, r3]
	bl FUN_ov67_02120e00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121728:
	tst r5, #0x40
	beq _02121788
	mov r0, r6
	mov r1, r4
	mvn r2, #0
	mov r3, #4
	bl FUN_ov67_02120b6c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02121808 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldr r1, [r6, #0x10]
	mov r0, r6
	bl FUN_ov67_02120c84
	mov r1, r0
	mov r0, r6
	bl FUN_ov67_0211fb2c
	mov r4, r0
	bl FUN_ov16_020f081c
	ldr r1, _02121818 ; =0x0209A490
	mov r0, r0, lsl #1
	strh r4, [r1, r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121788:
	tst r5, #0x80
	beq _021217E8
	mov r0, r6
	mov r1, r4
	mov r2, #1
	mov r3, #4
	bl FUN_ov67_02120b6c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02121808 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldr r1, [r6, #0x10]
	mov r0, r6
	bl FUN_ov67_02120c84
	mov r1, r0
	mov r0, r6
	bl FUN_ov67_0211fb2c
	mov r4, r0
	bl FUN_ov16_020f081c
	ldr r1, _02121818 ; =0x0209A490
	mov r0, r0, lsl #1
	strh r4, [r1, r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021217E8:
	tst r5, #0x400
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov67_0211e71c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021217FC: .word unk_02099ED4
_02121800: .word unk_020A0640
_02121804: .word unk_02099EB4
_02121808: .word gL5Sound
_0212180C: .word unk_0209AEC0
_02121810: .word unk_0209F5C0
_02121814: .word ov1_020E9482
_02121818: .word unk_0209A490
	arm_func_end FUN_ov67_02121540

	arm_func_start FUN_ov67_0212181c
FUN_ov67_0212181c: ; 0x0212181C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0212191C ; =0x02099ED4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r5, #0xc]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02121920 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _02121860
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02121860:
	ldr r6, _02121924 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121884: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0212189C ; case 1
	b _021218B4 ; case 2
	b _021218E4 ; case 3
	b _02121900 ; case 4
	b _021218CC ; case 5
_0212189C:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov67_02120fd0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021218B4:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov67_021211f8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021218CC:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov67_021212e8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021218E4:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl FUN_ov67_021213c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121900:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov67_021213c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212191C: .word unk_02099ED4
_02121920: .word unk_020A0640
_02121924: .word unk_02099EB4
	arm_func_end FUN_ov67_0212181c

	arm_func_start FUN_ov67_02121928
FUN_ov67_02121928: ; 0x02121928
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r6, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _02121BC4 ; =0x02099EB4
	str r1, [r6, #0xf0]
	ldr r0, [r0]
	mov r4, #1
	bl FUN_ov16_0210e980
	ldr r0, _02121BC8 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r5, #0
	str r5, [r6, #8]
	str r5, [r6, #0xc]
	str r5, [r6, #0x10]
	add r0, r6, #0x14
	mov r1, r5
	mov r2, #0x48
	bl MI_CpuFill8
	add r0, r6, #0x90
	mov r1, r5
	mov r2, #0x38
	bl MI_CpuFill8
	strh r5, [r6, #0xec]
	strh r5, [r6, #0xee]
	ldr r0, _02121BCC ; =0x02099F18
	ldr r1, [r0]
	ldrb r1, [r1, #0x45]
	strb r1, [r6, #0xea]
	tst r1, #0xff
	bne _021219CC
	ldr r0, [r0]
	mov r1, r4
	bl FUN_0205131c
_021219CC:
	mov r8, #0
	mov r0, r6
	mov r1, r8
	mov r2, r8
	strb r8, [r6, #0xf4]
	bl FUN_ov67_0211e5d0
	strh r0, [r6, #0xc8]
	ldrb r2, [r6, #0xf4]
	mov r0, r6
	mov r1, #1
	bl FUN_ov67_0211e5d0
	strh r0, [r6, #0xca]
	mov r1, r8
	add r0, r6, #0xcc
	mov r2, #4
	bl MI_CpuFill8
	mov r1, r8
	add r0, r6, #0xd4
	mov r2, #0x10
	bl MI_CpuFill8
	mov r7, #2
	add r0, r6, #0xe4
	mov r1, r8
	mov r2, r7
	bl MI_CpuFill8
	mov r2, r7
	add r0, r6, #0xe6
	mov r1, r8
	bl MI_CpuFill8
	add r0, r6, #0x5c
	mov r1, r8
	mov r2, #0x34
	bl MI_CpuFill8
	add r0, r6, #0x128
	mov r1, r8
	mov r2, #0xa8
	bl MI_CpuFill8
	mov r0, r6
	bl FUN_ov67_02120d58
	ldr r0, _02121BD0 ; =0x0209F5C0
	mov r1, r8
	bl FUN_ov16_020f5a58
	add r0, r6, #0x1ec
	mov r1, r8
	mov r2, #0x14
	bl MI_CpuFill8
	mov r7, #0x1000
	ldr r0, _02121BD4 ; =0x0209A250
	mov r1, r7
	str r8, [r6, #0x1e4]
	strb r8, [r6, #0x1e8]
	bl FUN_0202de44
	mov r1, r0
	mov r2, r7
	mov r0, r8
	str r1, [r6, #0x118]
	bl MIi_CpuClearFast
	mov r0, r6
	str r8, [r6, #0x11c]
	bl FUN_ov67_0211e568
	mov r0, r6
	bl FUN_ov67_0211f9b0
	ldr r0, _02121BD8 ; =0x0209BA20
	bl FUN_ov16_020eeca0
	bl FUN_ov16_020f081c
	cmp r0, #0
	moveq r8, #0x80
	ldr r0, _02121BDC ; =0x02099F38
	str r8, [r6, #0xf8]
	str r5, [r6, #0xfc]
	strb r5, [r6, #0xe9]
	strb r5, [r6, #0xe8]
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r7, _02121BE0 ; =0x02099EEC
	ldr r0, [r7]
	bl FUN_0205b2b8
	ldr r0, [r7]
	mov r1, r5
	bl FUN_0205a5e8
	ldr r0, _02121BD8 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	ldrh r1, [r0, #0x40]
	cmp r1, #0
	bne _02121B34
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r0, #0x26]
	strh r1, [r0, #0x40]
_02121B34:
	ldrh r2, [r0, #0x40]
	mov r1, #1
	strh r2, [r0, #0x28]
	strb r1, [r0, #0x2c]
	ldrh r7, [r0, #0x40]
	ldr r0, _02121BD8 ; =0x0209BA20
	bl FUN_0207249c
	ldrh r1, [r0, #0x40]
	cmp r1, #0
	bne _02121B6C
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r0, #0x26]
	strh r1, [r0, #0x40]
_02121B6C:
	ldrh r1, [r0, #0x40]
	mov r2, #3
	strh r1, [r0, #0x28]
	ldrh r1, [r0, #0x40]
	cmp r7, r1
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x2c]
	add r0, r6, #0x1ec
	mov r1, #0x18
	bl FUN_ov16_020f2fa8
	sub r2, r4, #2
	ldr r1, _02121BE4 ; =0x021226E0
	mov r0, r6
	str r5, [r6, #0x1d0]
	str r4, [r6, #0x1d4]
	str r2, [r6, #0x1d8]
	str r5, [r6, #0x1dc]
	strb r5, [r6, #0x1e0]
	strb r5, [r6, #0x1e1]
	bl FUN_ov67_0211dda0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02121BC4: .word unk_02099EB4
_02121BC8: .word unk_02099ED4
_02121BCC: .word unk_02099F18
_02121BD0: .word unk_0209F5C0
_02121BD4: .word unk_0209A250
_02121BD8: .word unk_0209BA20
_02121BDC: .word unk_02099F38
_02121BE0: .word unk_02099EEC
_02121BE4: .word ov67_021226E0
	arm_func_end FUN_ov67_02121928

	arm_func_start FUN_ov67_02121be8
FUN_ov67_02121be8: ; 0x02121BE8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #5
	cmpne r0, #6
	beq _02121C08
	cmp r0, #7
	bne _02121C44
_02121C08:
	ldr r0, _02121E70 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _02121C44
	ldr r5, _02121E74 ; =0x0209AEC0
	mov r0, r5
	bl FUN_020467c0
	cmp r0, #0
	ldrneb r0, [r5, #0x64]
	cmpne r0, #0
	beq _02121C44
	mov r0, r5
	bl FUN_020467ac
	mov r0, r5
	bl FUN_02046e28
_02121C44:
	ldr r0, [r4, #0xc]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02121E28
_02121C54: ; jump table
	b _02121C7C ; case 0
	b _02121CA0 ; case 1
	b _02121CD8 ; case 2
	b _02121CF0 ; case 3
	b _02121D0C ; case 4
	b _02121D94 ; case 5
	b _02121D94 ; case 6
	b _02121D94 ; case 7
	b _02121DC0 ; case 8
	b _02121DEC ; case 9
_02121C7C:
	ldr r0, _02121E78 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205b340
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov67_0211e024
	mov r0, #1
	str r0, [r4, #0xc]
_02121CA0:
	add r0, r4, #0x14
	mov r1, #6
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _02121E28
	mov r0, r4
	bl FUN_ov67_0211e14c
	mov r0, r4
	bl FUN_ov67_0211e258
	mov r0, r4
	mov r1, #1
	bl FUN_ov67_0211eb48
	mov r0, #2
	str r0, [r4, #0xc]
_02121CD8:
	mov r0, r4
	bl FUN_ov67_0211e7e0
	cmp r0, #0
	beq _02121E28
	mov r0, #3
	str r0, [r4, #0xc]
_02121CF0:
	mov r0, r4
	bl FUN_ov67_0211ec6c
	mov r0, r4
	bl FUN_ov67_0211f13c
	mov r0, r4
	mov r1, #1
	bl FUN_ov67_02120e00
_02121D0C:
	ldr r0, _02121E7C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _02121E28
	mov r0, r4
	bl FUN_ov67_0211f4d0
	mov r0, r4
	bl FUN_ov67_0211f590
	mov r0, r4
	bl FUN_ov67_0211f654
	mov r0, r4
	bl FUN_ov67_02120e2c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #7
	str r0, [r4, #0xc]
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _02121E28
	ldr r6, _02121E80 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_020f5ff4
	mov r0, r4
	bl FUN_ov67_0211f14c
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	b _02121E28
_02121D94:
	mov r0, r4
	mov r1, #0
	bl FUN_ov67_0211eb48
	ldr r0, [r4, #4]
	add r1, r4, #0x1d0
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov67_02120d70
	b _02121E28
_02121DC0:
	ldr r0, _02121E7C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _02121E28
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #9
	str r0, [r4, #0xc]
_02121DEC:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _02121E28
	ldr r5, [r4, #4]
	mov r1, #0
	mov r0, r5
	mov r2, #0x77
	bl FUN_02041eac
	mov r0, r5
	mov r1, #1
	mov r2, #0x4c
	bl FUN_02041eac
_02121E28:
	ldr r1, [r4, #0x1e4]
	mov r0, r4
	add r1, r1, #1
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #27
	add r1, r2, r1, ror #27
	str r1, [r4, #0x1e4]
	bl FUN_ov67_0211e8a0
	ldr r0, _02121E78 ; =0x02099EEC
	ldr r4, _02121E84 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl FUN_0205a60c
	ldr r0, _02121E7C ; =0x02099ED4
	ldr r1, [r4]
	ldr r0, [r0]
	bl FUN_ov16_0210e10c
	ldmfd sp!, {r4, r5, r6, pc}
_02121E70: .word unk_020A0640
_02121E74: .word unk_0209AEC0
_02121E78: .word unk_02099EEC
_02121E7C: .word unk_02099ED4
_02121E80: .word unk_0209F5C0
_02121E84: .word unk_0209A110
	arm_func_end FUN_ov67_02121be8

	arm_func_start FUN_ov67_02121e88
FUN_ov67_02121e88: ; 0x02121E88
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #7
	ldmnefd sp!, {r4, pc}
	ldr r0, _02121EBC ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	mov r0, r4
	bl FUN_ov67_0211f2c8
	ldmfd sp!, {r4, pc}
_02121EBC: .word unk_0209F5C0
	arm_func_end FUN_ov67_02121e88

	arm_func_start FUN_ov67_02121ec0
FUN_ov67_02121ec0: ; 0x02121EC0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _02121F80 ; =0x02099EB4
	mov r6, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _02121F84 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r1, [r6, #0x118]
	cmp r1, #0
	beq _02121EF4
	ldr r0, _02121F88 ; =0x0209A250
	bl FUN_0202e1c0
_02121EF4:
	ldr r1, [r6, #0x120]
	mov r0, #0
	str r0, [r6, #0x118]
	cmp r1, #0
	beq _02121F10
	ldr r0, _02121F88 ; =0x0209A250
	bl FUN_0202e1c0
_02121F10:
	ldr r0, _02121F8C ; =0x0209BA20
	mov r5, #0
	str r5, [r6, #0x120]
	bl FUN_ov16_020eedb8
	add r0, r6, #0x1ec
	mov r1, #1
	bl FUN_ov16_020f2fe4
	ldr r0, _02121F90 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f5af0
	mov r0, r6
	bl FUN_ov67_0211ea9c
	ldr r0, _02121F94 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r4, _02121F98 ; =0x02099EEC
	ldr r0, [r4]
	bl FUN_0205b398
	ldr r0, [r4]
	bl FUN_0205a5f4
	ldrb r0, [r6, #0xea]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _02121F9C ; =0x02099F18
	mov r1, r5
	ldr r0, [r0]
	bl FUN_0205131c
	ldmfd sp!, {r4, r5, r6, pc}
_02121F80: .word unk_02099EB4
_02121F84: .word unk_02099ED4
_02121F88: .word unk_0209A250
_02121F8C: .word unk_0209BA20
_02121F90: .word unk_0209F5C0
_02121F94: .word unk_02099F38
_02121F98: .word unk_02099EEC
_02121F9C: .word unk_02099F18
	arm_func_end FUN_ov67_02121ec0

	arm_func_start FUN_ov67_02121fa0
FUN_ov67_02121fa0: ; 0x02121FA0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov67_02121fa0

	arm_func_start FUN_ov67_02121fb4
FUN_ov67_02121fb4: ; 0x02121FB4
	bx lr
	arm_func_end FUN_ov67_02121fb4

	.global ov67_02121FB8
ov67_02121FB8:
	.byte 0x68, 0x22, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x38, 0x22, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x48, 0x22, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x08, 0x22, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xF8, 0x21, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xE8, 0x21, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0xA8, 0x21, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xC8, 0x21, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0xD8, 0x21, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x28, 0x22, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0x58, 0x22, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x98, 0x21, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0xB8, 0x21, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x18, 0x22, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov67_02122030
ov67_02122030:
	.byte 0x34, 0x24, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x28, 0x24, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xA0, 0x24, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov67_02122050
ov67_02122050:
	.byte 0xF0, 0x24, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xC0, 0x24, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0xD0, 0x24, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xE0, 0x24, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x90, 0x24, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x40, 0x24, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0x50, 0x24, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x60, 0x24, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00, 0x70, 0x24, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x80, 0x24, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0xB0, 0x24, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov67_021220b0
FUN_ov67_021220b0: ; 0x021220B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021220F8 ; =0x02122180
	str r0, [r4, #8]
	ldr r0, _021220FC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02122100 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021220F8: .word ov67_02122180
_021220FC: .word 0x00009CCD
_02122100: .word 0x0000EA3C
	arm_func_end FUN_ov67_021220b0

	arm_func_start FUN_ov67_02122104
FUN_ov67_02122104: ; 0x02122104
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0212214C ; =0x02122410
	str r0, [r4, #0x14]
	ldr r0, _02122150 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _02122154 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0212214C: .word ov67_02122410
_02122150: .word 0x00009CCD
_02122154: .word 0x0000EA3C
	arm_func_end FUN_ov67_02122104

	.section .sinit, 4
ov67_02122158:
	.word FUN_ov67_021220b0
	.word FUN_ov67_02122104

	.data
	.global ov67_02122180
ov67_02122180:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x75, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x77, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov67_02122280
ov67_02122280:
	.byte 0x64, 0xDD, 0x11, 0x02, 0x50, 0xDD, 0x11, 0x02, 0x5C, 0xD2, 0x11, 0x02, 0x58, 0xD6, 0x11, 0x02
	.byte 0x48, 0xD7, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x2C, 0xDA, 0x11, 0x02, 0x4C, 0xDC, 0x11, 0x02
	.byte 0x50, 0xDC, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov67_021222EC
ov67_021222EC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x75, 0x6E, 0x69, 0x66, 0x6F
	.byte 0x72, 0x6D, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov67_02122308
ov67_02122308:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x75, 0x6E, 0x69, 0x66, 0x6F, 0x72, 0x6D, 0x2E, 0x53
	.byte 0x50, 0x44, 0x00, 0x00
	.global ov67_02122324
ov67_02122324:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F
	.byte 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00, 0x00
	.global ov67_02122338
ov67_02122338:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F
	.byte 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00, 0x00
	.global ov67_0212234C
ov67_0212234C:
	.byte 0x45, 0x51, 0x55, 0x49
	.byte 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00, 0x00
	.global ov67_02122360
ov67_02122360:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F
	.byte 0x58, 0x00, 0x00, 0x00
	.global ov67_02122374
ov67_02122374:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F
	.byte 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00, 0x00
	.global ov67_02122388
ov67_02122388:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F
	.byte 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00, 0x00
	.global ov67_0212239C
ov67_0212239C:
	.byte 0x45, 0x51, 0x55, 0x49
	.byte 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x53, 0x43, 0x41, 0x4C, 0x45, 0x00, 0x00, 0x00
	.global ov67_021223B0
ov67_021223B0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69
	.byte 0x74, 0x65, 0x6D, 0x73, 0x6F, 0x72, 0x74, 0x6C, 0x69, 0x73, 0x74, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov67_021223D0
ov67_021223D0:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC4, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov67_021223F8
ov67_021223F8:
	.byte 0x82, 0xD6, 0x82, 0xF1, 0x82, 0xB1, 0x82, 0xA4
	.byte 0x82, 0xF0, 0x82, 0xE2, 0x82, 0xDF, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov67_02122410
ov67_02122410:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x75, 0x64, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov67_02122508
ov67_02122508:
	.byte 0xB4, 0x1F, 0x12, 0x02, 0xA0, 0x1F, 0x12, 0x02
	.byte 0x40, 0x15, 0x12, 0x02, 0x1C, 0x18, 0x12, 0x02, 0x28, 0x19, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0xE8, 0x1B, 0x12, 0x02, 0x88, 0x1E, 0x12, 0x02, 0xC0, 0x1E, 0x12, 0x02, 0xCC, 0xDD, 0x11, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0x0C, 0xE0, 0x11, 0x02, 0x58, 0xDE, 0x11, 0x02, 0xF4, 0xDF, 0x11, 0x02
	.byte 0xFC, 0xDD, 0x11, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov67_02122574
ov67_02122574:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x75, 0x6E, 0x69, 0x66, 0x6F, 0x72, 0x6D, 0x2E, 0x53, 0x50
	.byte 0x4C, 0x00, 0x00, 0x00
	.global ov67_02122594
ov67_02122594:
	.byte 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x64, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov67_021225A4
ov67_021225A4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x4D, 0x4D, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov67_021225C0
ov67_021225C0:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD
	.byte 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov67_021225E0
ov67_021225E0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77
	.byte 0x63, 0x5F, 0x75, 0x6E, 0x69, 0x66, 0x6F, 0x72, 0x6D, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00
	.global ov67_02122600
ov67_02122600:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74
	.byte 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x64, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.global ov67_02122620
ov67_02122620:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F
	.byte 0x59, 0x00, 0x00, 0x00
	.global ov67_02122634
ov67_02122634:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F
	.byte 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00, 0x00
	.global ov67_02122648
ov67_02122648:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F
	.byte 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00, 0x00
	.global ov67_0212265C
ov67_0212265C:
	.byte 0x45, 0x51, 0x55, 0x49
	.byte 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00, 0x00
	.global ov67_02122670
ov67_02122670:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F
	.byte 0x58, 0x00, 0x00, 0x00
	.global ov67_02122684
ov67_02122684:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F
	.byte 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00, 0x00
	.global ov67_02122698
ov67_02122698:
	.byte 0x45, 0x51, 0x55, 0x49, 0x50, 0x5F, 0x4D, 0x4F
	.byte 0x44, 0x45, 0x4C, 0x5F, 0x53, 0x43, 0x41, 0x4C, 0x45, 0x00, 0x00, 0x00
	.global ov67_021226AC
ov67_021226AC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69, 0x74, 0x65, 0x6D, 0x73
	.byte 0x6F, 0x72, 0x74, 0x6C, 0x69, 0x73, 0x74, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov67_021226CC
ov67_021226CC:
	.byte 0x45, 0x51, 0x55, 0x49
	.byte 0x50, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x53, 0x43, 0x41, 0x4C, 0x45, 0x00, 0x00, 0x00
	.global ov67_021226E0
ov67_021226E0:
	.byte 0x82, 0xB5, 0x82, 0xE6, 0x82, 0xA4, 0x82, 0xB7, 0x82, 0xE9, 0x83, 0x86, 0x83, 0x6A, 0x83, 0x74
	.byte 0x83, 0x48, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xF1, 0x82
	.byte 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

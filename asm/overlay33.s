
	.include "/macros/function.inc"
	.include "/include/overlay33.inc"

	.text
	arm_func_start FUN_ov33_02119f00
FUN_ov33_02119f00: ; 0x02119F00
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
	arm_func_end FUN_ov33_02119f00

	arm_func_start FUN_ov33_02119f38
FUN_ov33_02119f38: ; 0x02119F38
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	ldr r0, _02119F70 ; =0x0209A454
	str r1, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x81]
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager12FUN_02041d9cEv
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xe
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r4, pc}
_02119F70: .word unk_0209A454
	arm_func_end FUN_ov33_02119f38

	arm_func_start FUN_ov33_02119f74
FUN_ov33_02119f74: ; 0x02119F74
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #5
	ldr r0, _02119FC4 ; =0x020A9C40
	mov r1, #2
	str r2, [r4, #8]
	bl FUN_02046370
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager12FUN_02041d9cEv
	ldr r0, _02119FC8 ; =0x0209A454
	mov r1, #4
	str r1, [r0, #0x24]
	ldr r0, [r4, #4]
	mov r1, #1
	str r1, [r0, #0x94]
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x12
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r4, pc}
_02119FC4: .word unk_020A9C40
_02119FC8: .word unk_0209A454
	arm_func_end FUN_ov33_02119f74

	arm_func_start FUN_ov33_02119fcc
FUN_ov33_02119fcc: ; 0x02119FCC
	stmfd sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x4c]
	mov r12, #0x1a
	mov r3, #1
	mov r1, r2
	str r12, [r4, #0x48]
	str r2, [r4, #0x54]
	strb r3, [r4, #0x58]
	bl FUN_ov33_02119f00
	strb r0, [r4, #0x59]
	ldr r0, _0211A008 ; =0x0209AEC0
	bl FUN_020466c0
	str r0, [r4, #0x50]
	ldmfd sp!, {r4, pc}
_0211A008: .word unk_0209AEC0
	arm_func_end FUN_ov33_02119fcc

	arm_func_start FUN_ov33_0211a00c
FUN_ov33_0211a00c: ; 0x0211A00C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r0, r7
	mov r1, r7
	bl FUN_ov16_020f0634
	mov r5, r0
	ldr r0, _0211A0A0 ; =0x0209AEC0
	bl FUN_02046730
	cmp r0, #0
	moveq r7, #1
	mov r0, #0xf0
	mla r6, r7, r0, r5
	ldr r0, _0211A0A0 ; =0x0209AEC0
	mov r1, r5
	add r2, r5, #0xf0
	mov r3, #0x78
	bl FUN_02046880
	cmp r0, #0
	beq _0211A098
	ldr r0, [r4, #0xc]
	cmp r0, #1
	ldreqb r0, [r6, #2]
	cmpeq r0, #0x1a
	bne _0211A098
	ldrb r0, [r4, #0x31]
	add r1, r0, #1
	strb r1, [r4, #0x31]
	ldrb r0, [r6, #0x57]
	cmp r0, #0x10
	andhs r0, r1, #0xff
	cmphs r0, #8
	blo _0211A098
	mov r0, r4
	bl FUN_ov33_0211bdd4
_0211A098:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A0A0: .word unk_0209AEC0
	arm_func_end FUN_ov33_0211a00c

	arm_func_start FUN_ov33_0211a0a4
FUN_ov33_0211a0a4: ; 0x0211A0A4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211A0D8 ; =0x0209A4E0
	mov r5, r0
	mov r1, r4
	mov r0, #0
	mov r2, #0xf0
	bl MIi_CpuClearFast
	mov r0, #0x1a
	strb r0, [r4, #2]
	ldrb r1, [r5, #0x31]
	mov r0, #1
	strb r1, [r4, #0x57]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A0D8: .word unk_0209A4E0
	arm_func_end FUN_ov33_0211a0a4

	arm_func_start FUN_ov33_0211a0dc
FUN_ov33_0211a0dc: ; 0x0211A0DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r5, _0211A110 ; =0x0209F5C0
	mov r4, r6
_0211A0EC:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f6084
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x10
	blo _0211A0EC
	ldmfd sp!, {r4, r5, r6, pc}
_0211A110: .word gBgMenuManager
	arm_func_end FUN_ov33_0211a0dc

	arm_func_start FUN_ov33_0211a114
FUN_ov33_0211a114: ; 0x0211A114
	str r1, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov33_0211a114

	arm_func_start FUN_ov33_0211a11c
FUN_ov33_0211a11c: ; 0x0211A11C
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _0211A164
_0211A128: ; jump table
	b _0211A164 ; case 0
	b _0211A164 ; case 1
	b _0211A164 ; case 2
	b _0211A164 ; case 3
	b _0211A154 ; case 4
	b _0211A154 ; case 5
	b _0211A15C ; case 6
	b _0211A15C ; case 7
	b _0211A164 ; case 8
	b _0211A164 ; case 9
	b _0211A154 ; case 10
_0211A154:
	mov r0, #0
	bx lr
_0211A15C:
	mov r0, #1
	bx lr
_0211A164:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov33_0211a11c

	arm_func_start FUN_ov33_0211a16c
FUN_ov33_0211a16c: ; 0x0211A16C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	cmp r0, #4
	ldreqb r0, [r7, #0x15]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211A450 ; =0x0209F5C0
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #0x100
	strh r6, [r0, #0x20]
	tst r6, #1
	beq _0211A2CC
	ldr r0, [r7, #0xc]
	sub r4, r5, #1
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211A230
_0211A1CC: ; jump table
	b _0211A1EC ; case 0
	b _0211A230 ; case 1
	b _0211A214 ; case 2
	b _0211A230 ; case 3
	b _0211A220 ; case 4
	b _0211A220 ; case 5
	b _0211A1EC ; case 6
	b _0211A1EC ; case 7
_0211A1EC:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	beq _0211A208
	cmp r0, #1
	moveq r5, #7
	moveq r4, #2
	b _0211A230
_0211A208:
	mov r5, #5
	mov r4, #1
	b _0211A230
_0211A214:
	mov r4, #4
	mov r5, #0xd
	b _0211A230
_0211A220:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	movge r4, #4
	movge r5, #0xf
_0211A230:
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0xf
	addls pc, pc, r5, lsl #2
	b _0211A2B4
_0211A244: ; jump table
	b _0211A2B4 ; case 0
	b _0211A2B4 ; case 1
	b _0211A2B4 ; case 2
	b _0211A2B4 ; case 3
	b _0211A284 ; case 4
	b _0211A290 ; case 5
	b _0211A284 ; case 6
	b _0211A29C ; case 7
	b _0211A2B4 ; case 8
	b _0211A2B4 ; case 9
	b _0211A29C ; case 10
	b _0211A2B4 ; case 11
	b _0211A2B4 ; case 12
	b _0211A290 ; case 13
	b _0211A2B4 ; case 14
	b _0211A2A8 ; case 15
_0211A284:
	ldr r0, _0211A454 ; =gL5Sound
	mov r1, #8
	b _0211A2B0
_0211A290:
	ldr r0, _0211A454 ; =gL5Sound
	mov r1, #6
	b _0211A2B0
_0211A29C:
	ldr r0, _0211A454 ; =gL5Sound
	mov r1, #4
	b _0211A2B0
_0211A2A8:
	ldr r0, _0211A454 ; =gL5Sound
	mov r1, #1
_0211A2B0:
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211A2B4:
	add r0, r7, r4
	ldrb r1, [r0, #0x64]
	ldr r0, _0211A450 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	str r5, [r7, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2CC:
	tst r6, #2
	beq _0211A358
	ldr r0, [r7, #0xc]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2E4: ; jump table
	b _0211A334 ; case 0
	b _0211A304 ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 5
	b _0211A334 ; case 6
	b _0211A334 ; case 7
_0211A304:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A454 ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldrb r1, [r7, #0x67]
	mov r0, r4
	bl FUN_ov16_020f6530
	mov r0, #0xa
	str r0, [r7, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A334:
	ldr r0, _0211A454 ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldrb r1, [r7, #0x66]
	mov r0, r4
	bl FUN_ov16_020f6530
	mov r0, #7
	str r0, [r7, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A358:
	tst r6, #0x20
	beq _0211A3D4
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _0211A378
	sub r0, r0, #6
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
_0211A378:
	ldr r0, _0211A454 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldr r0, [r7, #0x40]
	cmp r0, #0
	bge _0211A39C
	mov r0, r7
	mov r1, #0
	b _0211A3B0
_0211A39C:
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #31
	mov r0, r7
	add r1, r2, r1, ror #31
_0211A3B0:
	bl FUN_ov33_0211a114
	ldr r1, [r7, #0x40]
	ldr r0, _0211A458 ; =0x0209A070
	add r1, r1, #1
	add r1, r7, r1
	ldrb r1, [r1, #0x64]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3D4:
	tst r6, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _0211A3F4
	sub r0, r0, #6
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3F4:
	ldr r0, _0211A454 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldr r0, [r7, #0x40]
	cmp r0, #0
	bge _0211A418
	mov r0, r7
	mov r1, #1
	b _0211A42C
_0211A418:
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #31
	mov r0, r7
	add r1, r2, r1, ror #31
_0211A42C:
	bl FUN_ov33_0211a114
	ldr r1, [r7, #0x40]
	ldr r0, _0211A458 ; =0x0209A070
	add r1, r1, #1
	add r1, r7, r1
	ldrb r1, [r1, #0x64]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A450: .word gBgMenuManager
_0211A454: .word gL5Sound
_0211A458: .word unk_0209A070
	arm_func_end FUN_ov33_0211a16c

	arm_func_start FUN_ov33_0211a45c
FUN_ov33_0211a45c: ; 0x0211A45C
	ldr r0, _0211A474 ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211A478 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211A474: .word gBgMenuManager
_0211A478: .word FUN_ov16_020f6b3c
	arm_func_end FUN_ov33_0211a45c

	arm_func_start FUN_ov33_0211a47c
FUN_ov33_0211a47c: ; 0x0211A47C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x20]
	bl FUN_ov33_0211a11c
	movs r4, r0
	bmi _0211A4B8
	ldr r0, [r5, #0x44]
	cmp r4, r0
	bge _0211A4B8
	ldr r0, _0211A4C8 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r5
	mov r1, r4
	bl FUN_ov33_0211a114
_0211A4B8:
	ldr r1, [r5, #0x20]
	ldr r0, _0211A4CC ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4C8: .word gL5Sound
_0211A4CC: .word unk_0209A070
	arm_func_end FUN_ov33_0211a47c

	arm_func_start FUN_ov33_0211a4d0
FUN_ov33_0211a4d0: ; 0x0211A4D0
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	cmp r0, r1
	bne _0211A4F0
	ldr r0, _0211A514 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211A4F0:
	ldr r4, _0211A514 ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211A514: .word unk_0209A070
	arm_func_end FUN_ov33_0211a4d0

	arm_func_start FUN_ov33_0211a518
FUN_ov33_0211a518: ; 0x0211A518
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x24]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0211A5A0
_0211A530: ; jump table
	b _0211A5A0 ; case 0
	b _0211A5A0 ; case 1
	b _0211A5A0 ; case 2
	b _0211A5A0 ; case 3
	b _0211A570 ; case 4
	b _0211A57C ; case 5
	b _0211A570 ; case 6
	b _0211A588 ; case 7
	b _0211A5A0 ; case 8
	b _0211A5A0 ; case 9
	b _0211A588 ; case 10
	b _0211A5A0 ; case 11
	b _0211A5A0 ; case 12
	b _0211A57C ; case 13
	b _0211A5A0 ; case 14
	b _0211A594 ; case 15
_0211A570:
	ldr r0, _0211A5E0 ; =gL5Sound
	mov r1, #8
	b _0211A59C
_0211A57C:
	ldr r0, _0211A5E0 ; =gL5Sound
	mov r1, #6
	b _0211A59C
_0211A588:
	ldr r0, _0211A5E0 ; =gL5Sound
	mov r1, #4
	b _0211A59C
_0211A594:
	ldr r0, _0211A5E0 ; =gL5Sound
	mov r1, #1
_0211A59C:
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211A5A0:
	ldr r5, _0211A5E4 ; =0x0209A070
	ldr r1, [r6, #0x20]
	mov r0, r5
	bl FUN_ov16_020f6d3c
	movs r4, r0
	bmi _0211A5D4
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldr r0, _0211A5E8 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f6530
_0211A5D4:
	ldr r0, [r6, #0x20]
	str r0, [r6, #0x2c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A5E0: .word gL5Sound
_0211A5E4: .word unk_0209A070
_0211A5E8: .word gBgMenuManager
	arm_func_end FUN_ov33_0211a518

	arm_func_start FUN_ov33_0211a5ec
FUN_ov33_0211a5ec: ; 0x0211A5EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A6D8 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211A69C
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0211A668
	mov r0, #1
	strb r0, [r4, #0x15]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov33_0211a45c
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0211A668
	mov r0, r4
	bl FUN_ov33_0211a47c
_0211A668:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x18]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x1c]
	bl FUN_ov33_0211a45c
	ldr r1, [r4, #0x20]
	str r0, [r4, #0x24]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov33_0211a4d0
	ldmfd sp!, {r3, r4, r5, pc}
_0211A69C:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	ldrne r1, [r4, #0x20]
	cmpne r1, #0
	beq _0211A6C4
	ldr r0, [r4, #0x24]
	cmp r0, r1
	bne _0211A6C4
	mov r0, r4
	bl FUN_ov33_0211a518
_0211A6C4:
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	strb r0, [r4, #0x15]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A6D8: .word gBgMenuManager
	arm_func_end FUN_ov33_0211a5ec

	arm_func_start FUN_ov33_0211a6dc
FUN_ov33_0211a6dc: ; 0x0211A6DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x80
	mov r1, #0
	mov r2, #0x9c
	bl MI_CpuFill8
	ldr r0, _0211A70C ; =0x0211C02C
	add r1, r4, #0x80
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211A70C: .word ov33_0211C02C
	arm_func_end FUN_ov33_0211a6dc

	arm_func_start FUN_ov33_0211a710
FUN_ov33_0211a710: ; 0x0211A710
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x80]
	cmp r6, #0
	ldrne r7, _0211A758 ; =0x0211BE20
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x80
	mov r4, #0xc
_0211A734:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211A734
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A758: .word ov33_0211BE20
	arm_func_end FUN_ov33_0211a710

	arm_func_start FUN_ov33_0211a75c
FUN_ov33_0211a75c: ; 0x0211A75C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x80
	mov r4, #0xc
_0211A76C:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0xd
	blt _0211A76C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov33_0211a75c

	arm_func_start FUN_ov33_0211a784
FUN_ov33_0211a784: ; 0x0211A784
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x80]
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
	beq _0211A7DC
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl FUN_ov16_020f19d4
	str r0, [r5]
_0211A7DC:
	cmp r6, #0
	blt _0211A7F4
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl FUN_ov16_020f1138
_0211A7F4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov33_0211a784

	arm_func_start FUN_ov33_0211a7fc
FUN_ov33_0211a7fc: ; 0x0211A7FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, r0
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	mov r6, #3
	mov r2, r5
	mov r4, #5
	str r6, [sp]
	add r5, sp, #8
	mov r0, r8
	str r5, [sp, #4]
	mov r1, #2
	mov r3, r4
	bl FUN_ov33_0211a784
	str r6, [sp]
	mov r2, r0
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r6
	mov r3, r4
	bl FUN_ov33_0211a784
	str r6, [sp]
	mov r2, r0
	str r5, [sp, #4]
	mov r3, r4
	mov r0, r8
	mov r1, #4
	bl FUN_ov33_0211a784
	mov r3, r0
	ldr r0, [r8, #0x6c]
	cmp r0, #0
	ldrne r0, [r8, #0x70]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211A8F8
	ldrh r2, [r8, #0x78]
	ldrh r1, [r8, #0x7a]
	ldr r4, [sp, #8]
	ldr r0, [r8, #0x6c]
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r3, #1
	mov r3, #0
	str r4, [r8, #0x74]
	bl FUN_ov16_020f1868
	ldrh r1, [r8, #0x78]
	ldrh r0, [r8, #0x7a]
	ldr r2, [sp, #8]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #8]
_0211A8F8:
	bl G2_GetBG1CharPtr
	mov r6, #0x20
	mov r7, #0
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r6
	bl DC_FlushRange
	str r6, [sp, #8]
	mov r5, #1
	str r5, [sp]
	add r4, sp, #8
	mov r0, r8
	str r4, [sp, #4]
	mov r1, #0xb
	mov r2, r7
	mov r3, #3
	bl FUN_ov33_0211a784
	str r5, [sp]
	mov r9, #7
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r8
	mov r1, #5
	mov r3, r9
	bl FUN_ov33_0211a784
	str r5, [sp]
	mov r10, #6
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r8
	mov r1, r10
	mov r3, #4
	bl FUN_ov33_0211a784
	str r5, [sp]
	mov r2, r0
	mov r1, r9
	str r4, [sp, #4]
	mov r0, r8
	mov r3, r10
	bl FUN_ov33_0211a784
	str r5, [sp]
	mov r9, #2
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r8
	mov r1, #8
	mov r3, r9
	bl FUN_ov33_0211a784
	str r5, [sp]
	mov r2, r0
	str r4, [sp, #4]
	mov r0, r8
	mov r1, #9
	mov r3, r9
	bl FUN_ov33_0211a784
	str r5, [sp]
	mov r2, r0
	mov r3, r10
	mov r0, r8
	mov r1, #0xa
	str r4, [sp, #4]
	bl FUN_ov33_0211a784
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r6
	bl DC_FlushRange
	str r6, [sp, #8]
	str r9, [sp]
	str r4, [sp, #4]
	mov r0, r8
	mov r1, r5
	mov r3, r5
	mov r2, r7
	bl FUN_ov33_0211a784
	ldr r3, [r8, #0x8c]
	cmp r3, #0
	beq _0211AA5C
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r7
	add r0, r3, r0
	bl GX_LoadBG2Scr
_0211AA5C:
	bl FUN_ov16_020f10ac
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov33_0211a7fc

	arm_func_start FUN_ov33_0211aa68
FUN_ov33_0211aa68: ; 0x0211AA68
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x6c]
	cmp r0, #0
	ldrne r0, [lr, #0x70]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x7c]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x78]
	ldrh r1, [lr, #0x7a]
	mov r12, #0
	ldr r0, [lr, #0x70]
	mul r3, r2, r1
	ldr r1, [lr, #0x74]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x7c]
	bl GX_LoadBG3Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov33_0211aa68

	arm_func_start FUN_ov33_0211aac0
FUN_ov33_0211aac0: ; 0x0211AAC0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x6c]
	mov r1, #0
	cmp r12, #0
	ldrne r0, [r0, #0x70]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #2
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
	ldr r0, _0211AB40 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211AB40: .word gBgMenuManager
	arm_func_end FUN_ov33_0211aac0

	arm_func_start FUN_ov33_0211ab44
FUN_ov33_0211ab44: ; 0x0211AB44
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r0, r4, #0x6c
	mov r9, r1
	mov r8, r2
	bl FUN_ov16_020f2f20
	ldr r5, _0211ABE0 ; =gFont12
	mov r7, #1
	mov r6, #4
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl FUN_02043310
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r7}
	str r6, [sp, #0xc]
	str r9, [sp, #0x10]
	str r8, [sp, #0x14]
	str r7, [sp, #0x18]
	ldrh r2, [r4, #0x78]
	ldrh r3, [r4, #0x7a]
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x70]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldr r0, [r5]
	bl FUN_0204331c
	ldrh r2, [r4, #0x78]
	ldrh r1, [r4, #0x7a]
	ldr r0, [r4, #0x70]
	strb r7, [r4, #0x7c]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211ABE0: .word gFont12
	arm_func_end FUN_ov33_0211ab44

	arm_func_start FUN_ov33_0211abe4
FUN_ov33_0211abe4: ; 0x0211ABE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	movs r4, r1
	mov r10, r0
	bne _0211AC20
	ldrb r0, [r10, #0x30]
	mov r3, #0
	mov r8, r3
	cmp r0, #0
	ldrne r6, [r10, #0xe0]
	mov r0, #0x20
	ldreq r6, [r10, #0xec]
	mov r1, #0x18
	mov r7, #8
	b _0211AC38
_0211AC20:
	ldr r6, [r10, #0xf8]
	mov r3, #4
	mov r8, #8
	mov r0, #0x18
	mov r1, #9
	mov r7, #0xa
_0211AC38:
	cmp r6, #0
	beq _0211ACAC
	mov r2, #3
	mov r5, #0
	str r2, [sp]
	mov r2, r3, lsl #0x18
	mov r3, r8, lsl #0x18
	str r5, [sp, #4]
	mov r2, r2, asr #0x18
	str r2, [sp, #8]
	mov r2, r3, asr #0x18
	str r2, [sp, #0xc]
	and r0, r0, #0xff
	str r0, [sp, #0x10]
	and r0, r1, #0xff
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r1, [r6, #0xc]
	ldr r0, _0211AE78 ; =0x0209F5C0
	add r8, r6, r1
	mov r1, r5
	mov r3, r5
	mov r2, #1
	str r8, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020f1138
_0211ACAC:
	ldr r5, [r10, #0x98]
	cmp r5, #0
	beq _0211AE30
	cmp r4, #0
	mov r9, #0x12
	movne r9, #0xd
	ldr r4, [r5, #0xc]
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	mov r1, r9, lsl #0x18
	str r0, [sp, #4]
	mov r11, #7
	mov r0, r1, asr #0x18
	mov r1, #0
	str r11, [sp, #8]
	str r0, [sp, #0xc]
	mov r7, #6
	str r7, [sp, #0x10]
	mov r6, #3
	str r6, [sp, #0x14]
	mov r8, r1
	str r8, [sp, #0x18]
	add r8, r5, r4
	ldr r0, _0211AE78 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r8, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add r0, r8, #0x24
	mov r5, #0x30
	str r0, [sp, #0x34]
	mov r0, #0
	mov r4, #0x18
	strh r11, [sp, #0x20]
	strh r9, [sp, #0x22]
	strh r7, [sp, #0x24]
	strh r6, [sp, #0x26]
	strh r0, [sp, #0x28]
	strh r0, [sp, #0x2a]
	strh r5, [sp, #0x2c]
	strh r4, [sp, #0x2e]
	strb r0, [sp, #0x30]
	str r0, [sp]
	add r1, sp, #0x20
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211AE78 ; =0x0209F5C0
	str r1, [sp, #0x10]
	mov r2, r1
	mov r3, #5
	bl FUN_ov16_020f5c34
	mov r1, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, r9, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r8, #0x48
	str r0, [sp, #0x1c]
	ldr r0, _0211AE78 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020f5da0
	mov r1, #0
	mov r0, #0x13
	strh r0, [sp, #0x20]
	add r0, r8, #0x6c
	str r0, [sp, #0x34]
	strh r9, [sp, #0x22]
	strh r7, [sp, #0x24]
	strh r6, [sp, #0x26]
	strh r5, [sp, #0x2c]
	strh r4, [sp, #0x2e]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r1, [sp]
	add r1, sp, #0x20
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211AE78 ; =0x0209F5C0
	mov r3, r11
	mov r2, r1
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211AE30:
	ldr r4, _0211AE7C ; =0x0209A070
	mov r5, #0
	mov r0, r4
	mov r1, r5
	str r5, [sp]
	mov r2, #5
	mov r3, #4
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x65]
	mov r0, r4
	mov r1, r5
	mov r2, #7
	mov r3, #6
	str r5, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x66]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE78: .word gBgMenuManager
_0211AE7C: .word unk_0209A070
	arm_func_end FUN_ov33_0211abe4

	arm_func_start FUN_ov33_0211ae80
FUN_ov33_0211ae80: ; 0x0211AE80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	ldr r4, [r10, #0xbc]
	cmp r4, #0
	beq _0211AEE4
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	mov r1, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0xe
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r4, #0xc]
	ldr r0, _0211B01C ; =0x0209F5C0
	add r4, r4, r3
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211AEE4:
	ldr r12, [r10, #0xb0]
	cmp r12, #0
	beq _0211AFB4
	ldr r9, [r12, #0xc]
	mov r8, #0
	mov r0, #9
	stmia sp, {r0, r8}
	mov r7, #0x1a
	ldr r11, _0211B01C ; =0x0209F5C0
	str r7, [sp, #8]
	mov r6, #0x15
	str r6, [sp, #0xc]
	mov r5, #6
	str r5, [sp, #0x10]
	mov r4, #3
	str r4, [sp, #0x14]
	mov r0, r11
	mov r1, r8
	mov r2, r8
	mov r3, r8
	str r8, [sp, #0x18]
	add r9, r12, r9
	str r9, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add r0, r9, #0x24
	mov r2, #0x30
	mov r1, #0x18
	strh r7, [sp, #0x20]
	strh r2, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	str r0, [sp, #0x34]
	mov r7, #0xa
	strh r6, [sp, #0x22]
	strh r5, [sp, #0x24]
	strh r4, [sp, #0x26]
	strh r8, [sp, #0x28]
	strh r8, [sp, #0x2a]
	strb r8, [sp, #0x30]
	add r0, sp, #0x20
	str r8, [sp]
	stmib sp, {r0, r8}
	str r8, [sp, #0xc]
	mov r0, r11
	mov r1, r8
	mov r2, r8
	mov r3, r7
	str r8, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r11
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_020f6084
_0211AFB4:
	ldr r4, [r10, #0x104]
	mov r2, #1
	cmp r4, #0
	addeq sp, sp, #0x38
	strb r2, [r10, #0x3c]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0xb
	mov r1, #0
	stmia sp, {r0, r1}
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r3, [r4, #0xc]
	ldr r0, _0211B01C ; =0x0209F5C0
	add r4, r4, r3
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B01C: .word gBgMenuManager
	arm_func_end FUN_ov33_0211ae80

	arm_func_start FUN_ov33_0211b020
FUN_ov33_0211b020: ; 0x0211B020
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x3c]
	cmp r1, #0
	ldrne r3, [r0, #0x110]
	cmpne r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x38]
	ldr r2, [r3, #4]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r1, r3, r2
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #5
	mov r1, #0
	mov r2, #3
	bl FUN_ov16_020f1160
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov33_0211b020

	arm_func_start FUN_ov33_0211b068
FUN_ov33_0211b068: ; 0x0211B068
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0xc8]
	cmp r5, #0
	beq _0211B0CC
	mov r0, #0xc
	str r0, [sp]
	mov r2, #1
	mov r1, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _0211B150 ; =0x0209F5C0
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211B0CC:
	ldr r2, [r4, #0xa4]
	cmp r2, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov r3, #0xd
	mov lr, #0xe
	mov r12, #6
	mov r4, #3
	mov r2, #0x30
	mov r0, #0x18
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r3, [sp, #0x20]
	strh lr, [sp, #0x22]
	strh r12, [sp, #0x24]
	strh r4, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r5, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211B150 ; =0x0209F5C0
	mov r2, r1
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, pc}
_0211B150: .word gBgMenuManager
	arm_func_end FUN_ov33_0211b068

	arm_func_start FUN_ov33_0211b154
FUN_ov33_0211b154: ; 0x0211B154
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0xd4]
	cmp r5, #0
	beq _0211B1BC
	mov r0, #0xe
	str r0, [sp]
	mov r2, #1
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
	ldr r0, _0211B244 ; =0x0209F5C0
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211B1BC:
	ldr r2, [r4, #0xa4]
	cmp r2, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov lr, #0xd
	mov r12, #0xe
	mov r4, #6
	mov r3, #3
	mov r2, #0x30
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh lr, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r5, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211B244 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xf
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, pc}
_0211B244: .word gBgMenuManager
	arm_func_end FUN_ov33_0211b154

	arm_func_start FUN_ov33_0211b248
FUN_ov33_0211b248: ; 0x0211B248
	ldr r0, _0211B254 ; =0x0209F5C0
	ldr r12, _0211B258 ; = FUN_ov16_020f6274
	bx r12
_0211B254: .word gBgMenuManager
_0211B258: .word FUN_ov16_020f6274
	arm_func_end FUN_ov33_0211b248

	arm_func_start FUN_ov33_0211b25c
FUN_ov33_0211b25c: ; 0x0211B25C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	sub r5, r6, #1
	mov r4, #5
	mov r1, r6
	mov r2, r4
	add r0, r7, #0x64
	str r6, [r7, #8]
	str r6, [r7, #0x5c]
	strb r6, [r7, #0x14]
	strb r6, [r7, #0x15]
	str r5, [r7, #0x18]
	str r5, [r7, #0x1c]
	str r6, [r7, #0x20]
	str r6, [r7, #0x24]
	str r6, [r7, #0x28]
	str r6, [r7, #0x2c]
	str r6, [r7, #0xc]
	strb r6, [r7, #0x31]
	str r6, [r7, #0x124]
	str r6, [r7, #0x38]
	strb r6, [r7, #0x3c]
	bl MI_CpuFill8
	ldr r0, _0211B330 ; =0x0209A070
	mov r1, r4
	bl FUN_ov16_020f6c20
	ldr r0, _0211B334 ; =gL5Config
	ldr r1, _0211B338 ; =0x0211C048
	str r6, [r7, #0x48]
	str r6, [r7, #0x4c]
	str r5, [r7, #0x50]
	str r6, [r7, #0x54]
	strb r6, [r7, #0x58]
	strb r6, [r7, #0x59]
	strb r6, [r7, #0x122]
	strb r6, [r7, #0x123]
	str r6, [r7, #0x124]
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r7, #0x30]
	add r0, r7, #0x6c
	mov r1, #1
	strneb r6, [r7, #0x30]
	bl FUN_ov16_020f2f7c
	add r0, r7, #0x6c
	mov r1, #0x16
	mov r2, #0xc
	bl FUN_ov16_020f2fa8
	mov r0, r7
	bl FUN_ov33_0211a6dc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B330: .word unk_0209A070
_0211B334: .word gL5Config
_0211B338: .word ov33_0211C048
	arm_func_end FUN_ov33_0211b25c

	arm_func_start FUN_ov33_0211b33c
FUN_ov33_0211b33c: ; 0x0211B33C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211B354: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211B36C ; case 1
	b _0211B394 ; case 2
	b _0211B3B4 ; case 3
	b _0211B3C4 ; case 4
	b _0211B3C4 ; case 5
_0211B36C:
	add r0, r4, #0x80
	mov r1, #0xd
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov33_0211a710
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B394:
	bl FUN_ov33_0211a7fc
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B3B4:
	mov r1, #0
	bl FUN_ov33_0211b674
	mov r0, #4
	str r0, [r4, #8]
_0211B3C4:
	mov r0, r4
	bl FUN_ov33_0211b248
	ldr r0, _0211B464 ; =0x0209AEC0
	bl FUN_020466c0
	str r0, [r4, #0x50]
	ldr r0, [r4, #4]
	add r1, r4, #0x48
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov33_0211b848
	ldr r0, _0211B468 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	ldrb r0, [r4, #0x3c]
	cmp r0, #0
	beq _0211B424
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	str r0, [r4, #0x38]
_0211B424:
	ldr r6, _0211B468 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov33_0211bab0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B464: .word unk_0209AEC0
_0211B468: .word gBgMenuManager
	arm_func_end FUN_ov33_0211b33c

	arm_func_start FUN_ov33_0211b46c
FUN_ov33_0211b46c: ; 0x0211B46C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #4
	cmpne r0, #5
	cmpne r0, #6
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov33_0211aa68
	ldr r0, _0211B4A8 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	mov r0, r4
	bl FUN_ov33_0211b020
	ldmfd sp!, {r4, pc}
_0211B4A8: .word gBgMenuManager
	arm_func_end FUN_ov33_0211b46c

	arm_func_start FUN_ov33_0211b4ac
FUN_ov33_0211b4ac: ; 0x0211B4AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, _0211B500 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f5af0
	ldr r0, _0211B504 ; =0x0209A070
	bl FUN_ov16_020f6c58
	add r0, r5, #0x80
	mov r1, #0xd
	bl FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov33_0211a75c
	ldr r0, _0211B508 ; =0x0209AEC0
	bl FUN_020465fc
	ldr r1, _0211B50C ; =0x020A0640
	add r0, r5, #0x6c
	strb r4, [r1, #0x1a]
	mov r1, #1
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B500: .word gBgMenuManager
_0211B504: .word unk_0209A070
_0211B508: .word unk_0209AEC0
_0211B50C: .word unk_020A0640
	arm_func_end FUN_ov33_0211b4ac

	arm_func_start FUN_ov33_0211b510
FUN_ov33_0211b510: ; 0x0211B510
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	ldr r0, _0211B658 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5ff4
	ldr r0, _0211B65C ; =0x0209A070
	bl FUN_ov16_020f6c4c
	ldr r0, [r5, #0xc]
	strb r4, [r5, #0x3c]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211B548: ; jump table
	b _0211B568 ; case 0
	b _0211B588 ; case 1
	b _0211B594 ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _0211B5A0 ; case 4
	b _0211B5CC ; case 5
	b _0211B5F8 ; case 6
	b _0211B628 ; case 7
_0211B568:
	mov r0, r5
	mov r1, r4
	bl FUN_ov33_0211abe4
	ldr r2, _0211B660 ; =0x0211C050
	mov r0, r5
	mov r1, #9
	bl FUN_ov33_02119fcc
	ldmfd sp!, {r3, r4, r5, pc}
_0211B588:
	mov r0, r5
	bl FUN_ov33_0211ae80
	ldmfd sp!, {r3, r4, r5, pc}
_0211B594:
	mov r0, r5
	bl FUN_ov33_0211b068
	ldmfd sp!, {r3, r4, r5, pc}
_0211B5A0:
	mov r0, r5
	bl FUN_ov33_0211b154
	mov r0, r5
	bl FUN_ov33_0211aac0
	ldr r3, _0211B664 ; =0x0211C0A0
	mov r0, r5
	mov r1, r4
	mov r2, #0x10
	str r3, [r5, #0x5c]
	bl FUN_ov33_0211ab44
	ldmfd sp!, {r3, r4, r5, pc}
_0211B5CC:
	mov r0, r5
	bl FUN_ov33_0211b154
	mov r0, r5
	bl FUN_ov33_0211aac0
	ldr r3, _0211B668 ; =0x0211C0C4
	mov r0, r5
	mov r1, r4
	mov r2, #0x10
	str r3, [r5, #0x5c]
	bl FUN_ov33_0211ab44
	ldmfd sp!, {r3, r4, r5, pc}
_0211B5F8:
	mov r0, r5
	bl FUN_ov33_0211aac0
	ldr r3, _0211B66C ; =0x0211C0E0
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x5c]
	bl FUN_ov33_0211ab44
	mov r0, r5
	mov r1, #1
	bl FUN_ov33_0211abe4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B628:
	mov r0, r5
	bl FUN_ov33_0211aac0
	ldr r3, _0211B670 ; =0x0211C108
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x5c]
	bl FUN_ov33_0211ab44
	mov r0, r5
	mov r1, #1
	bl FUN_ov33_0211abe4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B658: .word gBgMenuManager
_0211B65C: .word unk_0209A070
_0211B660: .word ov33_0211C050
_0211B664: .word ov33_0211C0A0
_0211B668: .word ov33_0211C0C4
_0211B66C: .word ov33_0211C0E0
_0211B670: .word ov33_0211C108
	arm_func_end FUN_ov33_0211b510

	arm_func_start FUN_ov33_0211b674
FUN_ov33_0211b674: ; 0x0211B674
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	str r1, [r7, #0xc]
	ldr r4, _0211B83C ; =0x0209F5C0
	bl FUN_ov33_0211b510
	mov r6, #0
	mov r0, r7
	mov r1, r6
	bl FUN_ov33_0211a0dc
	ldr r1, [r7, #0xc]
	mov r5, #1
	str r6, [r7, #0x40]
	str r5, [r7, #0x44]
	str r6, [r7, #0x34]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211B824
_0211B6BC: ; jump table
	b _0211B6DC ; case 0
	b _0211B73C ; case 1
	b _0211B7A0 ; case 2
	b _0211B824 ; case 3
	b _0211B7DC ; case 4
	b _0211B820 ; case 5
	b _0211B6DC ; case 6
	b _0211B6DC ; case 7
_0211B6DC:
	ldr r0, _0211B840 ; =0x020A0640
	cmp r1, #7
	strb r6, [r0, #0x1a]
	moveq r6, r5
	mov r5, #0
	mov r8, #2
	mov r0, r4
	mov r1, r5
	mov r2, #3
	str r6, [r7, #0x40]
	str r8, [r7, #0x44]
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f60f8
	ldr r1, [r7, #0x40]
	ldr r0, _0211B844 ; =0x0209A070
	add r1, r1, #1
	add r1, r7, r1
	ldrb r1, [r1, #0x64]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	b _0211B82C
_0211B73C:
	mov r0, r4
	mov r1, r6
	mov r2, #8
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r6
	mov r2, #0xb
	bl FUN_ov16_020f60f8
	ldr r0, _0211B844 ; =0x0209A070
	mov r3, r6
	mov r1, #9
	mov r2, #0xa
	str r5, [sp]
	bl FUN_ov16_020f6c8c
	ldr r1, _0211B840 ; =0x020A0640
	strb r0, [r7, #0x67]
	strb r5, [r1, #0x1a]
	ldrb r0, [r7, #0x30]
	strb r6, [r7, #0x31]
	str r6, [r7, #0x11c]
	cmp r0, #0
	strne r5, [r7, #0x124]
	moveq r0, #4
	streq r0, [r7, #0x124]
	b _0211B82C
_0211B7A0:
	mov r0, r4
	mov r1, r6
	mov r2, #0xc
	bl FUN_ov16_020f60f8
	mov r5, #2
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f60f8
	ldr r0, _0211B844 ; =0x0209A070
	mov r1, r6
	mov r3, r6
	str r5, [sp]
	mov r2, #0xd
	b _0211B814
_0211B7DC:
	mov r0, r4
	mov r1, r6
	mov r2, #0xe
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r6
	mov r2, #2
	bl FUN_ov16_020f60f8
	mov r2, #3
	str r2, [sp]
	ldr r0, _0211B844 ; =0x0209A070
	mov r1, r6
	mov r3, r6
	mov r2, #0xf
_0211B814:
	bl FUN_ov16_020f6c8c
	strb r0, [r7, #0x68]
	b _0211B82C
_0211B820:
	b _0211B7DC
_0211B824:
	mov r0, #1
	str r0, [r7, #0x44]
_0211B82C:
	mov r0, #0
	str r0, [r7, #0x2c]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B83C: .word gBgMenuManager
_0211B840: .word unk_020A0640
_0211B844: .word unk_0209A070
	arm_func_end FUN_ov33_0211b674

	arm_func_start FUN_ov33_0211b848
FUN_ov33_0211b848: ; 0x0211B848
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xc]
	ldr r4, _0211BA9C ; =0x0209AEC0
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211B864: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0211B884 ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _0211BA4C ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	ldmfd sp!, {r3, r4, r5, pc} ; case 7
_0211B884:
	ldr r2, [r5, #0x11c]
	ldr r1, _0211BAA0 ; =0x00000708
	cmp r2, r1
	ble _0211B8C8
	ldrb r1, [r5, #0x31]
	cmp r1, #0
	beq _0211B8A8
	bl FUN_ov33_0211bdd4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B8A8:
	ldr r0, _0211BA9C ; =0x0209AEC0
	bl FUN_020465fc
	ldr r2, _0211BAA4 ; =0x0211C134
	mov r0, r5
	mov r1, #4
	str r2, [r5, #0x60]
	bl FUN_ov33_0211b674
	ldmfd sp!, {r3, r4, r5, pc}
_0211B8C8:
	mov r0, r4
	bl FUN_02046698
	cmp r0, #0
	bne _0211B910
	mov r0, r4
	bl FUN_020465fc
	ldrb r0, [r5, #0x31]
	cmp r0, #0
	beq _0211B8F8
	mov r0, r5
	bl FUN_ov33_0211bdd4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B8F8:
	ldr r2, _0211BAA8 ; =0x0211C168
	mov r0, r5
	mov r1, #5
	str r2, [r5, #0x60]
	bl FUN_ov33_0211b674
	ldmfd sp!, {r3, r4, r5, pc}
_0211B910:
	ldr r0, [r5, #0x124]
	cmp r0, #3
	beq _0211B924
	cmp r0, #7
	bne _0211B94C
_0211B924:
	ldr r0, _0211BA9C ; =0x0209AEC0
	bl FUN_020466e4
	cmp r0, #0
	bne _0211B94C
	ldrb r0, [r5, #0x31]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov33_0211bdd4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B94C:
	ldr r1, [r5, #0x11c]
	ldrb r0, [r5, #0x30]
	add r1, r1, #1
	str r1, [r5, #0x11c]
	cmp r0, #0
	ldr r0, [r5, #0x124]
	beq _0211B9AC
	cmp r0, #1
	beq _0211B97C
	cmp r0, #2
	beq _0211B994
	ldmfd sp!, {r3, r4, r5, pc}
_0211B97C:
	ldr r0, _0211BA9C ; =0x0209AEC0
	bl FUN_02046ed4
	cmp r0, #1
	moveq r0, #2
	streq r0, [r5, #0x124]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B994:
	ldr r0, _0211BA9C ; =0x0209AEC0
	bl FUN_02046fa4
	cmp r0, #1
	moveq r0, #3
	streq r0, [r5, #0x124]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B9AC:
	cmp r0, #4
	beq _0211B9C8
	cmp r0, #5
	beq _0211B9E0
	cmp r0, #6
	beq _0211B9F4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B9C8:
	ldr r0, _0211BA9C ; =0x0209AEC0
	bl FUN_02046fac
	cmp r0, #1
	moveq r0, #5
	streq r0, [r5, #0x124]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B9E0:
	ldr r0, _0211BA9C ; =0x0209AEC0
	bl FUN_0204700c
	mov r0, r5
	bl FUN_ov33_0211bce8
	ldmfd sp!, {r3, r4, r5, pc}
_0211B9F4:
	mov r0, r4
	bl FUN_0204700c
	cmp r0, #1
	moveq r0, #7
	streq r0, [r5, #0x124]
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmn r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0204671c
	cmp r0, #1
	mov r0, r4
	bne _0211BA38
	bl FUN_02046dfc
	mov r0, #4
	str r0, [r5, #0x124]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BA38:
	bl FUN_020465fc
	mov r0, r5
	mov r1, #4
	bl FUN_ov33_0211b674
	ldmfd sp!, {r3, r4, r5, pc}
_0211BA4C:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	moveq r0, #1
	streq r0, [r5, #0x34]
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r1, #1
	bne _0211BA88
	ldr r0, _0211BA9C ; =0x0209AEC0
	bl FUN_020465fc
	ldr r0, _0211BAAC ; =0x020A0640
	mov r1, #0
	strb r1, [r0, #0x1a]
	mov r0, #2
	str r0, [r5, #0x34]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BA88:
	cmp r1, #2
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r1, #2
	bl FUN_ov33_0211b674
	ldmfd sp!, {r3, r4, r5, pc}
_0211BA9C: .word unk_0209AEC0
_0211BAA0: .word 0x00000708
_0211BAA4: .word ov33_0211C134
_0211BAA8: .word ov33_0211C168
_0211BAAC: .word unk_020A0640
	arm_func_end FUN_ov33_0211b848

	arm_func_start FUN_ov33_0211bab0
FUN_ov33_0211bab0: ; 0x0211BAB0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x2c]
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0211BCC4
_0211BACC: ; jump table
	b _0211BCC4 ; case 0
	b _0211BCC4 ; case 1
	b _0211BCC4 ; case 2
	b _0211BCC4 ; case 3
	b _0211BB0C ; case 4
	b _0211BB0C ; case 5
	b _0211BBE8 ; case 6
	b _0211BBE8 ; case 7
	b _0211BCC4 ; case 8
	b _0211BCC4 ; case 9
	b _0211BC34 ; case 10
	b _0211BCC4 ; case 11
	b _0211BCC4 ; case 12
	b _0211BCA4 ; case 13
	b _0211BCC4 ; case 14
	b _0211BC74 ; case 15
_0211BB0C:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211BBBC
	ldrb r0, [r4, #0x30]
	mov r1, #1
	ldr r12, _0211BCCC ; =0x00001423
	cmp r0, #0
	mov r0, #0x78
	mov r3, #2
	beq _0211BB78
	ldr r5, _0211BCD0 ; =0x0209AEC0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, _0211BCD4 ; =0x0211C1A4
	mov r0, r5
	str r12, [sp, #8]
	bl FUN_02046508
	mov r0, r5
	bl FUN_02046da4
	ldr r2, [r5, #0x5c]
	ldr r0, _0211BCD8 ; =0x020A0640
	mov r1, #5
	strb r2, [r0, #0x1c]
	strb r1, [r5, #0x302]
	mov r0, #0x80
	strb r0, [r5, #0x303]
	b _0211BBA8
_0211BB78:
	ldr r5, _0211BCD0 ; =0x0209AEC0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, _0211BCDC ; =0x0211C1B8
	mov r0, r5
	str r12, [sp, #8]
	bl FUN_02046508
	mov r0, r5
	bl FUN_02046dd0
	ldr r1, [r5, #0x5c]
	ldr r0, _0211BCD8 ; =0x020A0640
	strb r1, [r0, #0x1c]
_0211BBA8:
	mov r0, r4
	mov r1, #1
	bl FUN_ov33_0211b674
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BBBC:
	cmp r1, #6
	bne _0211BBD0
	bl FUN_ov33_02119f74
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BBD0:
	cmp r1, #7
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	bl FUN_ov33_02119f38
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BBE8:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211BC00
	bl FUN_ov33_02119f38
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BC00:
	cmp r1, #6
	bne _0211BC18
	mov r1, #7
	bl FUN_ov33_0211b674
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BC18:
	cmp r1, #7
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	mov r1, #6
	bl FUN_ov33_0211b674
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BC34:
	mov r5, #0
	ldr r0, _0211BCE0 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f64cc
	sub r1, r5, #1
	ldr r0, _0211BCD0 ; =0x0209AEC0
	str r5, [r4, #0x2c]
	str r1, [r4, #0x40]
	bl FUN_020465fc
	ldr r2, _0211BCE4 ; =0x0211C1CC
	mov r0, r4
	mov r1, #5
	str r2, [r4, #0x60]
	bl FUN_ov33_0211b674
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BC74:
	mov r5, #0
	ldr r0, _0211BCE0 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f64cc
	sub r2, r5, #1
	mov r0, r4
	mov r1, r5
	str r5, [r4, #0x2c]
	str r2, [r4, #0x40]
	bl FUN_ov33_0211b674
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BCA4:
	ldrb r1, [r4, #0x122]
	cmp r1, #0
	beq _0211BCC0
	mov r1, #6
	bl FUN_ov33_0211b674
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BCC0:
	bl FUN_ov33_02119f38
_0211BCC4:
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211BCCC: .word 0x00001423
_0211BCD0: .word unk_0209AEC0
_0211BCD4: .word ov33_0211C1A4
_0211BCD8: .word unk_020A0640
_0211BCDC: .word ov33_0211C1B8
_0211BCE0: .word gBgMenuManager
_0211BCE4: .word ov33_0211C1CC
	arm_func_end FUN_ov33_0211bab0

	arm_func_start FUN_ov33_0211bce8
FUN_ov33_0211bce8: ; 0x0211BCE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	mov r11, r0
	ldr r10, _0211BDC8 ; =0x0209B13C
	mov r1, #0
	b _0211BDB8
_0211BD00:
	ldr r9, [r10, r1, lsl #2]
	cmp r9, #0
	beq _0211BDB4
	ldrh r8, [r9, #0x40]
	ldrb r7, [r9, #0x42]
	ldrb r6, [r9, #0x43]
	ldrh r4, [r9, #0x48]
	ldrb lr, [r9, #0x4a]
	ldrb r12, [r9, #0x4b]
	ldrh r3, [r9, #0x4c]
	ldrh r2, [r9, #0x4e]
	ldr r5, [r9, #0x44]
	strh r4, [sp, #8]
	str r5, [sp, #4]
	add r0, sp, #0x10
	strh r8, [sp]
	strb r7, [sp, #2]
	strb r6, [sp, #3]
	strb lr, [sp, #0xa]
	strb r12, [sp, #0xb]
	strh r3, [sp, #0xc]
	strh r2, [sp, #0xe]
	add r5, r9, #0x50
	mov r4, #0x1c
_0211BD60:
	ldrh r2, [r5, #2]
	ldrh r3, [r5], #4
	subs r4, r4, #1
	strh r2, [r0, #2]
	strh r3, [r0], #4
	bne _0211BD60
	ldr r2, [sp, #4]
	ldr r0, _0211BDCC ; =0x00001423
	cmp r2, r0
	addeq r2, sp, #0x10
	ldreqb r0, [r2, #0x22]
	cmpeq r0, #5
	bne _0211BDB4
	ldrb r2, [r2, #0x23]
	ldr r0, _0211BDD0 ; =0x0209AEC0
	strb r2, [r11, #0x123]
	bl FUN_02046ea8
	mov r0, #6
	add sp, sp, #0x80
	str r0, [r11, #0x124]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BDB4:
	add r1, r1, #1
_0211BDB8:
	cmp r1, #0x10
	blt _0211BD00
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BDC8: .word unk_0209B13C
_0211BDCC: .word 0x00001423
_0211BDD0: .word unk_0209AEC0
	arm_func_end FUN_ov33_0211bce8

	arm_func_start FUN_ov33_0211bdd4
FUN_ov33_0211bdd4: ; 0x0211BDD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211BE04 ; =0x020A9C40
	bl FUN_02046378
	cmp r0, #2
	moveq r0, #0
	movne r0, #1
	strb r0, [r4, #0x122]
	mov r0, r4
	mov r1, #3
	bl FUN_ov33_0211b674
	ldmfd sp!, {r4, pc}
_0211BE04: .word unk_020A9C40
	arm_func_end FUN_ov33_0211bdd4

	arm_func_start FUN_ov33_0211be08
FUN_ov33_0211be08: ; 0x0211BE08
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov33_0211be08

	arm_func_start FUN_ov33_0211be1c
FUN_ov33_0211be1c: ; 0x0211BE1C
	bx lr
	arm_func_end FUN_ov33_0211be1c

	.rodata
	.global ov33_0211BE20
ov33_0211BE20:
	.word ov33_0211BFA8
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov33_0211BF54
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov33_0211BF24
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov33_0211BF3C
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov33_0211BF48
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov33_0211BF88
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov33_0211BF6C
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov33_0211BF18
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov33_0211BF30
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov33_0211BF60
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov33_0211BF98
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov33_0211BF78
	.byte 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov33_0211be88
FUN_ov33_0211be88: ; 0x0211BE88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211BED0 ; =0x0211BF00
	str r0, [r4, #0x14]
	ldr r0, _0211BED4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _0211BED8 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BED0: .word ov33_0211BF00
_0211BED4: .word 0x00009CCD
_0211BED8: .word 0x0000EA3C
	arm_func_end FUN_ov33_0211be88

	.section .sinit, 4
ov33_0211BEDC:
	.word FUN_ov33_0211be88

	.data
	.global ov33_0211BF00
ov33_0211BF00:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov33_0211BF18
ov33_0211BF18:
	.byte 0x77, 0x73, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov33_0211BF24
ov33_0211BF24:
	.byte 0x77, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov33_0211BF30
ov33_0211BF30:
	.byte 0x77, 0x73, 0x64, 0x5F, 0x77, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov33_0211BF3C
ov33_0211BF3C:
	.byte 0x77, 0x73, 0x64, 0x5F
	.byte 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov33_0211BF48
ov33_0211BF48:
	.byte 0x77, 0x73, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov33_0211BF54
ov33_0211BF54:
	.byte 0x77, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov33_0211BF60
ov33_0211BF60:
	.byte 0x77, 0x73, 0x64, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov33_0211BF6C
ov33_0211BF6C:
	.byte 0x77, 0x73, 0x64, 0x5F
	.byte 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov33_0211BF78
ov33_0211BF78:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov33_0211BF88
ov33_0211BF88:
	.byte 0x77, 0x73, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov33_0211BF98
ov33_0211BF98:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov33_0211BFA8
ov33_0211BFA8:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov33_0211BFC0
ov33_0211BFC0:
	.word FUN_ov33_0211be1c
	.word FUN_ov33_0211be08
	.word FUN_ov33_0211a16c
	.word FUN_ov33_0211a5ec
	.word FUN_ov33_0211b25c
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov33_0211b33c
	.word FUN_ov33_0211b46c
	.word FUN_ov33_0211b4ac
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word FUN_ov33_0211a00c
	.word _ZN12CommonScreen7vFUN_34Ev
	.word FUN_ov33_0211a0a4
	.word _ZN16CommonMainScreen9fadeResetEv
	.word _ZN16CommonMainScreen10fadeUpdateEv
	.word _ZN16CommonMainScreen8blackOutEv
	.word _ZN16CommonMainScreen8whiteOutEv
	.word _ZN16CommonMainScreen6fadeInEv
	.word _ZN16CommonMainScreen9fadeBlackEv
	.word _ZN16CommonMainScreen9fadeWhiteEv
	.word _ZN16CommonMainScreen8isFadingEv
	.word _ZN16CommonMainScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen7vFUN_60Ei
	.word _ZN12CommonScreen7vFUN_64Ei
	.word _ZN12CommonScreen7vFUN_68Ev
	.global ov33_0211C02C
ov33_0211C02C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D, 0x54, 0x53, 0x57, 0x69
	.byte 0x73, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov33_0211C048
ov33_0211C048:
	.byte 0x49, 0x5A, 0x5F, 0x54, 0x59, 0x50, 0x45, 0x00
	.global ov33_0211C050
ov33_0211C050:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92
	.byte 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A
	.byte 0x5B, 0x94, 0xE9, 0x96, 0xA7, 0x2F, 0x82, 0xD0, 0x82, 0xDD, 0x82, 0xC2, 0x5D, 0x82, 0xCC, 0x83
	.byte 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xF0, 0x5B, 0x8E, 0xE8, 0x2F, 0x82, 0xC4, 0x5D, 0x82, 0xC9
	.byte 0x5B, 0x93, 0xFC, 0x2F, 0x82, 0xA2, 0x5D, 0x82, 0xEA, 0x82, 0xE6, 0x82, 0xA4, 0x81, 0x42, 0x00
	.global ov33_0211C0A0
ov33_0211C0A0:
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov33_0211C0C4
ov33_0211C0C4:
	.byte 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov33_0211C0E0
ov33_0211C0E0:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC4, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov33_0211C108
ov33_0211C108:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB9
	.byte 0x82, 0xB8, 0x82, 0xC9, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4
	.byte 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81
	.byte 0x48, 0x00, 0x00, 0x00
	.global ov33_0211C134
ov33_0211C134:
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F, 0x82, 0xB9, 0x82, 0xC2
	.byte 0x82, 0xBC, 0x82, 0xAD, 0x82, 0xB3, 0x82, 0xAB, 0x5D, 0x82, 0xAA, 0x5B, 0x8C, 0xA9, 0x2F, 0x82
	.byte 0xDD, 0x5D, 0x82, 0xC2, 0x82, 0xA9, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5
	.byte 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00
	.global ov33_0211C168
ov33_0211C168:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43
	.byte 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xA9, 0x82, 0xE7, 0x0A, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F
	.byte 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82
	.byte 0xBD, 0x81, 0x42, 0x00
	.global ov33_0211C1A4
ov33_0211C1A4:
	.byte 0x83, 0x56, 0x81, 0x5B, 0x83, 0x4E, 0x83, 0x8C, 0x83, 0x62, 0x83, 0x67
	.byte 0x83, 0x82, 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00
	.global ov33_0211C1B8
ov33_0211C1B8:
	.byte 0x83, 0x56, 0x81, 0x5B, 0x83, 0x4E, 0x83, 0x8C
	.byte 0x83, 0x62, 0x83, 0x67, 0x83, 0x82, 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00
	.global ov33_0211C1CC
ov33_0211C1CC:
	.byte 0x82, 0x63, 0x82, 0x72
	.byte 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xA9, 0x82, 0xE7, 0x0A, 0x5B, 0x90
	.byte 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

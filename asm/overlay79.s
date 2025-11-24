
	.include "/macros/function.inc"
	.include "/include/overlay79.inc"

	.text
	arm_func_start FUN_ov79_02119f00
FUN_ov79_02119f00: ; 0x02119F00
	ldr r2, [r0, #8]
	cmp r2, r1
	bxeq lr
	cmp r1, #4
	str r1, [r0, #8]
	moveq r2, #0x96
	moveq r1, #0
	streq r2, [r0, #0xc]
	streqb r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov79_02119f00

	arm_func_start FUN_ov79_02119f28
FUN_ov79_02119f28: ; 0x02119F28
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x40
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _02119F5C ; =0x0211AAC4
	add r1, r4, #0x40
	bl FUN_ov1_020dbe00
	mov r0, r4
	mov r1, #1
	bl FUN_ov79_02119f00
	ldmfd sp!, {r4, pc}
_02119F5C: .word ov79_0211AAC4
	arm_func_end FUN_ov79_02119f28

	arm_func_start FUN_ov79_02119f60
FUN_ov79_02119f60: ; 0x02119F60
	mov r1, r0
	ldr r0, [r1, #0x40]
	ldr r2, _02119F78 ; =0x0211A984
	ldr r12, _02119F7C ; = FUN_ov1_020dbfdc
	add r1, r1, #0x40
	bx r12
_02119F78: .word ov79_0211A984
_02119F7C: .word FUN_ov1_020dbfdc
	arm_func_end FUN_ov79_02119f60

	arm_func_start FUN_ov79_02119f80
FUN_ov79_02119f80: ; 0x02119F80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r6, r0
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
	mov r7, #1
	str r9, [sp, #4]
	add r8, sp, #4
	str r8, [sp]
	ldr r0, [r6, #0x64]
	mov r1, r4
	mov r2, #3
	mov r3, r7
	bl FUN_ov1_020dc020
	mov r5, #2
	str r8, [sp]
	mov r1, r0
	ldr r0, [r6, #0x58]
	mov r2, r5
	mov r3, r7
	bl FUN_ov1_020dc020
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r9
	bl DC_FlushRange
	str r9, [sp, #4]
	str r8, [sp]
	ldr r0, [r6, #0x4c]
	mov r2, r7
	mov r3, r5
	mov r1, r4
	bl FUN_ov1_020dc020
	ldr r3, [r6, #0x4c]
	mov r5, r0
	cmp r3, #0
	beq _0211A054
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r4
	add r0, r3, r0
	bl GX_LoadBG2Scr
_0211A054:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	ldrne r0, [r6, #0x30]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211A0B4
	ldrh r2, [r6, #0x38]
	ldrh r1, [r6, #0x3a]
	ldr r4, [sp, #4]
	ldr r0, [r6, #0x2c]
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r5, #1
	mov r3, #0
	str r4, [r6, #0x34]
	bl FUN_ov16_020f1868
	ldrh r1, [r6, #0x38]
	ldrh r0, [r6, #0x3a]
	ldr r2, [sp, #4]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #4]
_0211A0B4:
	bl FUN_ov16_020f10ac
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov79_02119f80

	arm_func_start FUN_ov79_0211a0c0
FUN_ov79_0211a0c0: ; 0x0211A0C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x40
	mov r4, #0xc
_0211A0D0:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #4
	blt _0211A0D0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov79_0211a0c0

	arm_func_start FUN_ov79_0211a0e8
FUN_ov79_0211a0e8: ; 0x0211A0E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x38
	ldr r5, _0211A2F0 ; =0x0209F5C0
	mov r4, #0
	mov r7, r0
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5ff4
	ldr r0, _0211A2F4 ; =0x0209A070
	bl FUN_ov16_020f6c4c
	ldr r2, [r7, #0x64]
	cmp r2, #0
	beq _0211A16C
	mov r0, #2
	stmia sp, {r0, r4}
	mov r1, #3
	str r1, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x1a
	str r0, [sp, #0x10]
	mov r0, #0xd
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r5
	add r5, r2, r1
	mov r1, r4
	mov r3, r4
	mov r2, #1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211A16C:
	ldr r1, [r7, #0x58]
	cmp r1, #0
	beq _0211A228
	ldr r0, [r1, #0xc]
	mov r4, #0
	add r9, r1, r0
	mov lr, #0xd
	mov r12, #0xe
	mov r8, #6
	mov r3, #3
	mov r2, #0x30
	mov r1, #0x18
	mov r0, #2
	strh r1, [sp, #0x2e]
	strb r0, [sp, #0x30]
	strh lr, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r8, [sp, #0x24]
	strh r3, [sp, #0x26]
	mov r5, #1
	strh r2, [sp, #0x2c]
	strh r4, [sp, #0x28]
	strh r4, [sp, #0x2a]
	str r9, [sp, #0x34]
	add r0, sp, #0x20
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r6, _0211A2F0 ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r6
	mov r1, r4
	mov r2, r5
	mov r3, r5
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f6084
	mov r2, #0xa
	str r2, [sp]
	ldr r0, _0211A2F4 ; =0x0209A070
	mov r1, r4
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f6c8c
	strb r0, [r7, #0x29]
_0211A228:
	ldr r0, [r7, #0x2c]
	add r6, r7, #0x2c
	cmp r0, #0
	ldrne r0, [r6, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r8, _0211A2F8 ; =gFont12
	mov r5, #4
	ldr r0, [r8]
	mov r2, r5
	mov r1, #1
	bl FUN_02043310
	str r6, [sp]
	ldrh r0, [r6, #0xe]
	mov r4, #0
	ldr r3, _0211A2FC ; =0x0211AAD0
	mov r0, r0, lsl #3
	sub r0, r0, #0x14
	add r0, r0, r0, lsr #31
	mov r2, r0, asr #1
	mov r0, r7
	mov r1, r4
	add r2, r2, #6
	bl FUN_ov79_0211a300
	ldr r0, [r8]
	bl FUN_0204331c
	mov r0, #2
	stmia sp, {r0, r4, r5}
	mov r0, #5
	str r0, [sp, #0xc]
	ldrh r2, [r6, #0xc]
	ldr r0, _0211A2F0 ; =0x0209F5C0
	mov r1, r4
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r5, [r6, #0xe]
	mov r2, r4
	mov r3, r4
	and r5, r5, #0xff
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r4, [r6]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A2F0: .word gBgMenuManager
_0211A2F4: .word unk_0209A070
_0211A2F8: .word gFont12
_0211A2FC: .word ov79_0211AAD0
	arm_func_end FUN_ov79_0211a0e8

	arm_func_start FUN_ov79_0211a300
FUN_ov79_0211a300: ; 0x0211A300
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x6c
	ldr r5, [sp, #0x88]
	mov r7, r1
	mov r0, r5
	mov r6, r2
	mov r8, r3
	bl FUN_ov16_020f2f20
	add r4, sp, #0x1c
	mov r0, r8
	mov r1, r4
	mov r2, #0x50
	bl MI_CpuCopy8
	mov r1, #3
	str r1, [sp]
	mov r0, r4
	str r1, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r2, [r5, #0xc]
	ldrh r3, [r5, #0xe]
	ldr r1, [r5, #4]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	strb r4, [r5, #0x10]
	add sp, sp, #0x6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov79_0211a300

	arm_func_start FUN_ov79_0211a39c
FUN_ov79_0211a39c: ; 0x0211A39C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #4
	ldreqb r0, [r5, #0x12]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A42C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldreqb r0, [r5, #0x10]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r4, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A430 ; =gL5Sound
	mov r1, #6
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldr r0, [r5, #0xc]
	mov r2, #1
	cmp r0, #7
	movgt r0, #7
	strgt r0, [r5, #0xc]
	ldrb r1, [r5, #0x29]
	ldr r0, _0211A434 ; =0x0209A070
	strb r2, [r5, #0x10]
	strb r2, [r5, #0x28]
	bl FUN_ov16_020f6e8c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0x29]
	ldr r0, _0211A42C ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, pc}
_0211A42C: .word gBgMenuManager
_0211A430: .word gL5Sound
_0211A434: .word unk_0209A070
	arm_func_end FUN_ov79_0211a39c

	arm_func_start FUN_ov79_0211a438
FUN_ov79_0211a438: ; 0x0211A438
	ldr r0, _0211A450 ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211A454 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211A450: .word gBgMenuManager
_0211A454: .word FUN_ov16_020f6b3c
	arm_func_end FUN_ov79_0211a438

	arm_func_start FUN_ov79_0211a458
FUN_ov79_0211a458: ; 0x0211A458
	bx lr
	arm_func_end FUN_ov79_0211a458

	arm_func_start FUN_ov79_0211a45c
FUN_ov79_0211a45c: ; 0x0211A45C
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, r1
	bne _0211A47C
	ldr r0, _0211A4A0 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211A47C:
	ldr r4, _0211A4A0 ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211A4A0: .word unk_0209A070
	arm_func_end FUN_ov79_0211a45c

	arm_func_start FUN_ov79_0211a4a4
FUN_ov79_0211a4a4: ; 0x0211A4A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211A508 ; =gL5Sound
	mov r1, #6
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r1, #1
	ldr r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x28]
	cmp r0, #7
	movgt r0, #7
	strgt r0, [r4, #0xc]
	ldrb r1, [r4, #0x29]
	ldr r0, _0211A50C ; =0x0209A070
	mov r2, #1
	bl FUN_ov16_020f6e8c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r1, [r4, #0x29]
	ldr r0, _0211A510 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r4, pc}
_0211A508: .word gL5Sound
_0211A50C: .word unk_0209A070
_0211A510: .word gBgMenuManager
	arm_func_end FUN_ov79_0211a4a4

	arm_func_start FUN_ov79_0211a514
FUN_ov79_0211a514: ; 0x0211A514
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211A62C ; =0x0209F5C0
	mov r6, #0
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldreqb r0, [r5, #0x10]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldreqb r0, [r5, #0x10]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0211A5F0
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _0211A5BC
	mov r0, #1
	strb r0, [r5, #0x12]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	bl FUN_ov79_0211a438
	str r0, [r5, #0x1c]
	cmp r0, #0
	beq _0211A5BC
	mov r0, r5
	bl FUN_ov79_0211a458
_0211A5BC:
	ldrh r1, [r4]
	mov r0, r5
	str r1, [r5, #0x14]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x18]
	bl FUN_ov79_0211a438
	ldr r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov79_0211a45c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A5F0:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	ldrne r1, [r5, #0x1c]
	cmpne r1, #0
	beq _0211A618
	ldr r0, [r5, #0x20]
	cmp r0, r1
	bne _0211A618
	mov r0, r5
	bl FUN_ov79_0211a4a4
_0211A618:
	mov r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x1c]
	strb r0, [r5, #0x12]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A62C: .word gBgMenuManager
	arm_func_end FUN_ov79_0211a514

	arm_func_start FUN_ov79_0211a630
FUN_ov79_0211a630: ; 0x0211A630
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211A648: ; jump table
	b _0211A65C ; case 0
	b _0211A660 ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _0211A68C ; case 3
	b _0211A6FC ; case 4
_0211A65C:
	ldmfd sp!, {r3, r4, r5, pc}
_0211A660:
	add r0, r4, #0x40
	mov r1, #4
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov79_02119f60
	mov r0, r4
	mov r1, #2
	bl FUN_ov79_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211A68C:
	ldr r0, _0211A770 ; =0x02099F58
	ldr r0, [r0]
	bl FUN_ov16_021165b4
	ldr r0, _0211A774 ; =0x02099EB0
	ldr r0, [r0]
	bl FUN_0205d28c
	ldr r0, _0211A778 ; =0x02099EE8
	ldr r0, [r0]
	bl FUN_0205ee28
	ldr r0, _0211A77C ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205a504
	ldr r0, _0211A780 ; =0x02099F10
	ldr r0, [r0]
	bl FUN_0205be20
	ldr r0, _0211A784 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_0211234c
	mov r0, r4
	bl FUN_ov79_0211a0e8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	mov r1, #4
	bl FUN_ov79_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211A6FC:
	ldrb r1, [r4, #0x28]
	cmp r1, #0
	beq _0211A714
	mov r1, #0
	strb r1, [r4, #0x28]
	bl FUN_ov79_0211a0e8
_0211A714:
	mov r5, #0
	ldr r0, _0211A788 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f672c
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	sub r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r4, [r4, #4]
	mov r1, r5
	mov r0, r4
	mov r2, #0x3d
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r3, r4, r5, pc}
_0211A770: .word unk_02099F58
_0211A774: .word unk_02099EB0
_0211A778: .word unk_02099EE8
_0211A77C: .word unk_02099EEC
_0211A780: .word unk_02099F10
_0211A784: .word unk_02099F38
_0211A788: .word gBgMenuManager
	arm_func_end FUN_ov79_0211a630

	arm_func_start FUN_ov79_0211a78c
FUN_ov79_0211a78c: ; 0x0211A78C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	cmpne r1, #1
	ldmeqfd sp!, {r4, pc}
	cmp r1, #2
	bne _0211A7C0
	bl FUN_ov79_02119f80
	mov r0, r4
	mov r1, #3
	bl FUN_ov79_02119f00
	ldmfd sp!, {r4, pc}
_0211A7C0:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldrne r0, [r4, #0x30]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [r4, #0x3c]
	cmpne r0, #0
	beq _0211A80C
	ldrh r2, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	mov r12, #0
	ldr r0, [r4, #0x30]
	mul r3, r2, r1
	ldr r1, [r4, #0x34]
	mov r2, r3, lsl #5
	strb r12, [r4, #0x3c]
	bl GX_LoadBG3Char
_0211A80C:
	ldr r0, _0211A81C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211A81C: .word gBgMenuManager
	arm_func_end FUN_ov79_0211a78c

	arm_func_start FUN_ov79_0211a820
FUN_ov79_0211a820: ; 0x0211A820
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	mov r5, r0
	sub r3, r6, #1
	ldr r2, _0211A8F8 ; =0x020E9483
	ldr r0, _0211A8FC ; =0x0209F5C0
	mov r1, r6
	str r6, [r5, #8]
	strb r6, [r5, #0x11]
	strb r6, [r5, #0x12]
	str r3, [r5, #0x14]
	str r3, [r5, #0x18]
	str r6, [r5, #0x1c]
	str r6, [r5, #0x20]
	str r6, [r5, #0x24]
	strb r6, [r5, #0x28]
	strb r6, [r2]
	bl FUN_ov16_020f5a58
	mov r1, r6
	add r0, r5, #0x2c
	mov r2, #0x14
	bl MI_CpuFill8
	mov r4, #1
	mov r1, r4
	add r0, r5, #0x2c
	bl FUN_ov16_020f2f7c
	add r0, r5, #0x2c
	mov r1, #0x18
	mov r2, #6
	bl FUN_ov16_020f2fa8
	add r0, r5, #0x29
	mov r1, r6
	mov r2, r4
	bl MI_CpuFill8
	mov r1, r4
	ldr r0, _0211A900 ; =0x0209A070
	bl FUN_ov16_020f6c20
	mov r0, r5
	bl FUN_ov79_02119f28
	ldr r5, _0211A904 ; =gL5Sound
	mov r4, #0x64
	mov r0, r5
	mov r1, r4
	bl FUN_0202c470
	mov r0, r5
	mov r1, r6
	bl FUN_0202cff8
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN7L5Sound12FUN_0202d774Emm
	ldr r0, _0211A908 ; =0x020AF81C
	bl FUN_020443e8
	ldmfd sp!, {r4, r5, r6, pc}
_0211A8F8: .word ov1_020E9483
_0211A8FC: .word gBgMenuManager
_0211A900: .word unk_0209A070
_0211A904: .word gL5Sound
_0211A908: .word unk_020AF81C
	arm_func_end FUN_ov79_0211a820

	arm_func_start FUN_ov79_0211a90c
FUN_ov79_0211a90c: ; 0x0211A90C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x40
	mov r1, #4
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov79_0211a0c0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldr r0, _0211A95C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	ldr r0, _0211A960 ; =0x0209A070
	bl FUN_ov16_020f6c58
	add r0, r4, #0x2c
	mov r1, #1
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r4, pc}
_0211A95C: .word gBgMenuManager
_0211A960: .word unk_0209A070
	arm_func_end FUN_ov79_0211a90c

	arm_func_start FUN_ov79_0211a964
FUN_ov79_0211a964: ; 0x0211A964
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov79_0211a964

	arm_func_start FUN_ov79_0211a978
FUN_ov79_0211a978: ; 0x0211A978
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov79_0211a978

	arm_func_start FUN_ov79_0211a980
FUN_ov79_0211a980: ; 0x0211A980
	bx lr
	arm_func_end FUN_ov79_0211a980

	.rodata
	.global ov79_0211A984
ov79_0211A984:
	.word ov79_0211AA30
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov79_0211AA24
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov79_0211AA18
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov79_0211a9a4
FUN_ov79_0211a9a4: ; 0x0211A9A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211A9EC ; =0x0211AA00
	str r0, [r4, #0xc]
	ldr r0, _0211A9F0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211A9F4 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A9EC: .word ov79_0211AA00
_0211A9F0: .word 0x00009CCD
_0211A9F4: .word 0x0000EA3C
	arm_func_end FUN_ov79_0211a9a4

	.section .sinit, 4
ov79_0211A9F8:
	.word FUN_ov79_0211a9a4

	.data
	.global ov79_0211AA00
ov79_0211AA00:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov79_0211AA18
ov79_0211AA18:
	.byte 0x77, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov79_0211AA24
ov79_0211AA24:
	.byte 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov79_0211AA30
ov79_0211AA30:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov79_0211AA48
ov79_0211AA48:
	.word FUN_ov79_0211a980
	.word FUN_ov79_0211a964
	.word FUN_ov79_0211a39c
	.word FUN_ov79_0211a514
	.word FUN_ov79_0211a820
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov79_0211a630
	.word FUN_ov79_0211a78c
	.word FUN_ov79_0211a90c
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
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
	.word FUN_ov79_0211a978
	.word FUN_ov1_020be600
	.word FUN_ov1_020be55c
	.word FUN_ov1_020be5bc
	.word FUN_ov1_020be5e0
	.global ov79_0211AAC4
ov79_0211AAC4:
	.byte 0x4D, 0x50, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov79_0211AAD0
ov79_0211AAD0:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xAA, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D
	.byte 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00

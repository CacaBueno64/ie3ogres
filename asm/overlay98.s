
	.include "/macros/function.inc"
	.include "/include/overlay98.inc"

	.text
	arm_func_start FUN_ov98_02124d00
FUN_ov98_02124d00: ; 0x02124D00
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, #1
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl  FUN_ov16_020f4894
	mov r4, #0
	mov r1, r4
	add r0, r6, #0xc
	mov r2, #0x14c
	bl MI_CpuFill8
	str r5, [r6, #0xc]
	add r0, r6, #0x158
	mov r1, r4
	mov r2, #0xf0
	bl MI_CpuFill8
	mov r1, r4
	add r0, r6, #0x248
	mov r2, #0x84
	bl MI_CpuFill8
	mov r1, r5
	ldr r0, _02124D78 ; =0x0209F5C0
	bl  FUN_ov16_020f5a58
	mov r0, #4
	str r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_02124D78: .word unk_0209F5C0
	arm_func_end FUN_ov98_02124d00

	arm_func_start FUN_ov98_02124d7c
FUN_ov98_02124d7c: ; 0x02124D7C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	bl FUN_ov98_0212536c
	mov r9, #0
	ldr r8, _02124E08 ; =0x0209A250
	mov r7, r9
	mov r6, r9
	mov r5, #0xc
_02124D9C:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x248]
	cmp r1, #0
	beq _02124DB8
	mov r0, r8
	bl FUN_0202e1c0
	str r7, [r10, #0x248]
_02124DB8:
	ldr r1, [r10, #0x24c]
	cmp r1, #0
	beq _02124DD0
	mov r0, r8
	bl FUN_0202e1c0
	str r6, [r10, #0x24c]
_02124DD0:
	add r9, r9, #1
	cmp r9, #0xb
	blt _02124D9C
	mov r5, #1
	ldr r0, _02124E0C ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5af0
	bl  FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02124E08: .word unk_0209A250
_02124E0C: .word unk_0209F5C0
	arm_func_end FUN_ov98_02124d7c

	arm_func_start FUN_ov98_02124e10
FUN_ov98_02124e10: ; 0x02124E10
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02124E28: ; jump table
	b _02124E40 ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _02124ED4 ; case 2
	b _02124EE8 ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	b _02124EF8 ; case 5
_02124E40:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldrb r0, [r4, #0x20]
	cmp r0, #1
	beq _02124E74
	cmp r0, #2
	beq _02124E80
	cmp r0, #3
	beq _02124E94
	b _02124E9C
_02124E74:
	mov r0, r4
	bl FUN_ov98_02125b7c
	b _02124E9C
_02124E80:
	mov r0, r4
	bl FUN_ov98_02125c48
	mov r0, r4
	bl FUN_ov98_02125cf8
	b _02124E9C
_02124E94:
	mov r0, r4
	bl FUN_ov98_02125dd0
_02124E9C:
	add r0, r4, #0x158
	mov r1, #0x14
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov98_021252f4
	mov r0, r4
	bl FUN_ov98_021253a4
	mov r0, r4
	bl FUN_ov98_02125478
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124ED4:
	bl FUN_ov98_02125938
	mov r0, #4
	bl  FUN_ov16_020f147c
	mov r0, #3
	str r0, [r4, #8]
_02124EE8:
	ldr r0, _02124F20 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_02124EF8:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov98_0212536c
	mov r0, r4
	bl FUN_ov98_02125230
	ldmfd sp!, {r4, pc}
_02124F20: .word unk_0209F5C0
	arm_func_end FUN_ov98_02124e10

	arm_func_start FUN_ov98_02124f24
FUN_ov98_02124f24: ; 0x02124F24
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _02124F60
	add r0, r4, #0x158
	mov r1, #0x14
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov98_021254fc
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124F60:
	cmp r0, #3
	ldmnefd sp!, {r4, pc}
	ldr r0, _02124F80 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124F80: .word unk_0209F5C0
	arm_func_end FUN_ov98_02124f24

	arm_func_start FUN_ov98_02124f84
FUN_ov98_02124f84: ; 0x02124F84
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #8]
	mov r2, #1
	mov r0, r2, lsl r0
	tst r0, #7
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0x20]
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _021250DC
	mov r0, r2, lsl r1
	tst r0, #0xe
	beq _021250DC
	ldr r0, [r4]
	add r12, r4, #0x18
	str r0, [r5, #0xc]
	ldr r0, [r4, #4]
	add r3, r5, #0x24
	str r0, [r5, #0x10]
	ldr r0, [r4, #8]
	mov r2, #4
	str r0, [r5, #0x14]
	ldr r0, [r4, #0xc]
	str r0, [r5, #0x18]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x1c]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0x20]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x21]
	ldrh r0, [r4, #0x16]
	strh r0, [r5, #0x22]
_02125018:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02125018
	add r12, r4, #0x28
	add r3, r5, #0x34
	mov r2, #4
_02125040:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125040
	add r12, r4, #0x30
	add r3, r5, #0x3c
	mov r2, #0x80
_02125068:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125068
	add r4, r4, #0x130
	add r3, r5, #0x13c
	mov r2, #0xc
_02125090:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125090
	ldrb r2, [r4]
	mov r1, #5
	ldr r0, _0212522C ; =0x02099E99
	strb r2, [r3]
	str r1, [r5, #8]
	ldrb r0, [r0]
	cmp r0, #0
	bne _021250D4
	mov r0, #4
	bl  FUN_ov16_020f1528
_021250D4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_021250DC:
	ldr r1, [r5, #0xc]
	ldr r0, [r4]
	cmp r1, r0
	ldreqb r1, [r5, #0x21]
	ldreqb r0, [r4, #0x15]
	cmpeq r1, r0
	bne _02125104
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02125224
_02125104:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02125118
	mov r0, #4
	bl  FUN_ov16_020f1528
_02125118:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4]
	str r0, [r4, #0x10]
	str r0, [r5, #0xc]
	ldr r0, [r4, #4]
	add r12, r4, #0x18
	str r0, [r5, #0x10]
	ldr r0, [r4, #8]
	add r3, r5, #0x24
	str r0, [r5, #0x14]
	ldr r0, [r4, #0xc]
	mov r2, #4
	str r0, [r5, #0x18]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x1c]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0x20]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x21]
	ldrh r0, [r4, #0x16]
	strh r0, [r5, #0x22]
_02125170:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02125170
	add r12, r4, #0x28
	add r3, r5, #0x34
	mov r2, #4
_02125198:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02125198
	add r12, r4, #0x30
	add r3, r5, #0x3c
	mov r2, #0x80
_021251C0:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _021251C0
	add r4, r4, #0x130
	add r3, r5, #0x13c
	mov r2, #0xc
_021251E8:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _021251E8
	ldrb r1, [r4]
	mov r0, r5
	strb r1, [r3]
	bl FUN_ov98_0212536c
	mov r0, r5
	bl FUN_ov98_02125230
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02125224:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0212522C: .word unk_02099E99
	arm_func_end FUN_ov98_02124f84

	arm_func_start FUN_ov98_02125230
FUN_ov98_02125230: ; 0x02125230
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r1, r6
	add r0, r7, #0x158
	mov r2, #0xf0
	bl MI_CpuFill8
	ldr r4, _021252DC ; =0x020A9440
	mov r5, #0x800
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r4, _021252E0 ; =0x020A8C40
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	ldr r4, _021252E4 ; =0x020A8440
	mov r2, r5
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r0, _021252E8 ; =0x0212649C
	add r1, r7, #0x158
	bl  FUN_ov16_020f316c
	ldr r0, _021252EC ; =0x021264C4
	add r1, r7, #0x164
	bl  FUN_ov16_020f316c
	ldr r0, _021252F0 ; =0x021264E4
	add r1, r7, #0x170
	bl  FUN_ov16_020f316c
	str r6, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021252DC: .word unk_020A9440
_021252E0: .word unk_020A8C40
_021252E4: .word unk_020A8440
_021252E8: .word ov98_0212649C
_021252EC: .word ov98_021264C4
_021252F0: .word ov98_021264E4
	arm_func_end FUN_ov98_02125230

	arm_func_start FUN_ov98_021252f4
FUN_ov98_021252f4: ; 0x021252F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x48
	ldr r12, _02125368 ; =0x02126258
	add r5, sp, #0
	mov lr, r0
	mov r4, #4
_0212530C:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0212530C
	ldmia r12, {r0, r1}
	stmia r5, {r0, r1}
	ldr r0, [sp]
	ldr r6, [lr, #0x158]
	cmp r0, #0
	add r7, sp, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, lr, #0x158
	mov r4, #0xc
_02125344:
	ldr r3, [r7, #4]
	mov r2, r6
	mla r1, r3, r4, r5
	bl  FUN_ov16_020f32b4
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _02125344
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125368: .word 0x02126258
	arm_func_end FUN_ov98_021252f4

	arm_func_start FUN_ov98_0212536c
FUN_ov98_0212536c: ; 0x0212536C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x158
	mov r1, #0x14
	bl  FUN_ov16_020f338c
	add r5, r4, #0x158
	mov r6, #0
	mov r4, #0xc
_0212538C:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x14
	blt _0212538C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov98_0212536c

	arm_func_start FUN_ov98_021253a4
FUN_ov98_021253a4: ; 0x021253A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x178
	mov r4, r0
	ldrb r0, [r4, #0x20]
	cmp r0, #2
	addne sp, sp, #0x178
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r10, #0
	add r0, sp, #0xc
	mov r1, r10
	mov r2, #0x16c
	bl MI_CpuFill8
	ldr r7, [r4, #0x164]
	ldr r6, _02125470 ; =0x0209BA20
	add r8, r4, #0x1dc
	add r9, r4, #0x24
	str r10, [sp, #8]
	str r10, [sp, #4]
	mov r4, #1
	add r5, sp, #8
	add r11, sp, #4
_021253F8:
	cmp r10, #0
	ldrh r1, [r9]
	beq _02125424
	mov r0, r6
	add r2, sp, #0xc
	bl FUN_0207039c
	cmp r0, #0
	beq _0212545C
	ldrh r1, [sp, #0x36]
	cmp r1, #0
	ldreqh r1, [r9]
_02125424:
	mov r0, r7
	mov r2, r5
	mov r3, r11
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _02125454
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02125474 ; =0x02126504
	mov r1, r8
	bl  FUN_ov16_020f3218
_02125454:
	add r9, r9, #2
	add r8, r8, #0xc
_0212545C:
	add r10, r10, #1
	cmp r10, #8
	blt _021253F8
	add sp, sp, #0x178
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125470: .word unk_0209BA20
_02125474: .word ov98_02126504
	arm_func_end FUN_ov98_021253a4

	arm_func_start FUN_ov98_02125478
FUN_ov98_02125478: ; 0x02125478
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x4c
	mov r6, r0
	ldrb r0, [r6, #0x20]
	cmp r0, #3
	addne sp, sp, #0x4c
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	add r4, sp, #0xc
	ldr r1, _021254F8 ; =0x02126524
	mov r0, r4
	ldr r5, [r6, #0x170]
	bl sprintf
	ldrh r1, [r6, #0x24]
	mov r12, #0
	add r2, sp, #8
	add r3, sp, #4
	mov r0, r5
	str r12, [sp, #8]
	str r12, [sp, #4]
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	mov r0, r4
	add r1, r6, #0x23c
	bl  FUN_ov16_020f3218
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021254F8: .word ov98_02126524
	arm_func_end FUN_ov98_02125478

	arm_func_start FUN_ov98_021254fc
FUN_ov98_021254fc: ; 0x021254FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r6, r0
	mov r5, #1
	bl G2S_GetBG0CharPtr
	mov r7, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2S_GetBG0CharPtr
	mov r1, r7
	bl DC_FlushRange
	str r4, [sp, #0x1c]
	str r7, [sp, #0x10]
	bl G2S_GetBG1CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r7
	bl DC_FlushRange
	str r4, [sp, #0x18]
	str r7, [sp, #0xc]
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r7
	bl DC_FlushRange
	str r7, [sp, #8]
	str r4, [sp, #0x14]
	ldrb r0, [r6, #0x20]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02125804
_0212559C: ; jump table
	b _021255AC ; case 0
	b _021255E4 ; case 1
	b _02125638 ; case 2
	b _02125748 ; case 3
_021255AC:
	mov r5, #0x800
	ldr r0, _02125810 ; =0x020A9440
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG0Scr
	ldr r0, _02125814 ; =0x020A8C40
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG1Scr
	ldr r0, _02125818 ; =0x020A8440
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG2Scr
	b _02125804
_021255E4:
	add r0, sp, #0x1c
	str r0, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	mov r2, #3
	bl FUN_ov98_0212581c
	ldr r2, [sp, #0x18]
	mov r0, r6
	mov r1, r4
	bl FUN_ov98_02125884
	str r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl FUN_ov98_021258cc
	str r0, [sp, #0xc]
	b _02125804
_02125638:
	ldr r0, [r6, #0x18]
	mov r8, #0
	cmp r0, #0
	mov r2, #6
	add r0, sp, #0x1c
	str r0, [sp]
	add r4, sp, #0x10
	moveq r2, #4
	mov r0, r6
	mov r1, r8
	mov r3, #1
	str r4, [sp, #4]
	bl FUN_ov98_0212581c
	add r7, sp, #0x18
	add r4, sp, #0xc
	b _021256C4
_02125678:
	ldr r2, [sp, #0x18]
	mov r0, r6
	add r1, r8, #1
	bl FUN_ov98_02125884
	str r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r3, r5
	add r1, r8, #1
	bl FUN_ov98_021258cc
	str r0, [sp, #0xc]
	str r7, [sp]
	mov r0, r6
	str r4, [sp, #4]
	mov r1, r5
	add r2, r8, #0xb
	add r3, r8, #2
	bl FUN_ov98_0212581c
	add r8, r8, #1
_021256C4:
	cmp r8, #8
	blt _02125678
	mov r4, #9
	ldr r2, [sp, #0x18]
	mov r0, r6
	mov r1, r4
	bl FUN_ov98_02125884
	str r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl FUN_ov98_021258cc
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	str r0, [sp]
	add r4, sp, #0xc
	mov r0, r6
	mov r1, r5
	mov r2, #7
	mov r3, #0xb
	str r4, [sp, #4]
	bl FUN_ov98_0212581c
	add r1, sp, #0x14
	str r1, [sp]
	add r2, sp, #8
	str r2, [sp, #4]
	mov r0, r6
	mov r1, #2
	mov r2, #8
	mov r3, #0xa
	bl FUN_ov98_0212581c
	b _02125804
_02125748:
	add r0, sp, #0x1c
	str r0, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	mov r2, #5
	bl FUN_ov98_0212581c
	mov r4, #0xa
	ldr r2, [sp, #0x18]
	mov r0, r6
	mov r1, r4
	bl FUN_ov98_02125884
	str r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl FUN_ov98_021258cc
	str r0, [sp, #0xc]
	add r2, sp, #0x18
	str r2, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r1, r5
	mov r0, r6
	mov r2, #0x13
	mov r3, #0xc
	bl FUN_ov98_0212581c
	add r8, sp, #0x14
	mov r5, #2
	add r7, sp, #8
	str r8, [sp]
	str r7, [sp, #4]
	mov r0, r6
	mov r1, r5
	mov r2, #9
	mov r3, r4
	bl FUN_ov98_0212581c
	str r8, [sp]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r4
	str r7, [sp, #4]
	bl FUN_ov98_0212581c
_02125804:
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125810: .word unk_020A9440
_02125814: .word unk_020A8C40
_02125818: .word unk_020A8440
	arm_func_end FUN_ov98_021254fc

	arm_func_start FUN_ov98_0212581c
FUN_ov98_0212581c: ; 0x0212581C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r12, #0xc
	mla r0, r2, r12, r0
	ldr r4, [r0, #0x158]
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	mov r8, r1
	mov r7, r3
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r6]
	mov r0, r4
	mov r2, r7
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [r6]
	ldr r2, [r5]
	mov r0, r8
	mov r1, r4
	bl  FUN_ov16_020f1a60
	str r0, [r5]
	mov r0, r4
	mov r2, r7
	mov r1, #1
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov98_0212581c

	arm_func_start FUN_ov98_02125884
FUN_ov98_02125884: ; 0x02125884
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r12, r1, r3
	add r0, r0, #0x248
	add r1, r0, r12
	ldrh r3, [r1, #8]
	ldrh r1, [r1, #0xa]
	ldr r0, [r0, r12]
	mul r1, r3, r1
	cmp r0, #0
	mov r1, r1, lsl #1
	beq _021258C4
	add r2, r2, #1
	mov r3, #0
	bl  FUN_ov16_020f1868
	mov r2, r0
_021258C4:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov98_02125884

	arm_func_start FUN_ov98_021258cc
FUN_ov98_021258cc: ; 0x021258CC
	stmfd sp!, {r3, r4, r5, lr}
	add r12, r0, #0x248
	mov r0, #0xc
	mla r0, r1, r0, r12
	ldrh r12, [r0, #8]
	ldrh r1, [r0, #0xa]
	ldr r0, [r0, #4]
	mov r5, r2
	mul r1, r12, r1
	cmp r0, #0
	mov r4, r1, lsl #5
	beq _02125930
	cmp r3, #1
	beq _02125910
	cmp r3, #2
	beq _02125920
	b _0212592C
_02125910:
	mov r1, r5
	mov r2, r4
	bl GXS_LoadBG1Char
	b _0212592C
_02125920:
	mov r1, r5
	mov r2, r4
	bl GXS_LoadBG2Char
_0212592C:
	add r5, r5, r4
_02125930:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov98_021258cc

	arm_func_start FUN_ov98_02125938
FUN_ov98_02125938: ; 0x02125938
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r1, #1
	mov r5, #0
	ldr r0, _02125A4C ; =0x0209F5C0
	mov r2, r1
	mov r3, r5
	bl  FUN_ov16_020f5f64
	ldrb r0, [r4, #0x20]
	cmp r0, #1
	beq _02125980
	cmp r0, #2
	beq _021259A8
	cmp r0, #3
	beq _02125A30
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_02125980:
	mov r0, r4
	mov r1, #3
	bl FUN_ov98_02125a50
	mov r0, r4
	mov r1, r5
	mov r2, #8
	mov r3, #0x80
	bl FUN_ov98_02125e94
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_021259A8:
	ldr r0, [r4, #0x18]
	mov r1, #6
	cmp r0, #0
	moveq r1, #4
	mov r0, r4
	bl FUN_ov98_02125a50
	mov r0, r4
	bl FUN_ov98_021260f8
	mov r5, #0
	mov r0, r4
	mov r2, r5
	mov r1, #9
	mov r3, #8
	bl FUN_ov98_02125e94
	ldr r0, [r4, #0x14]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	ldrb r0, [r4, #0x34]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	str r5, [sp]
	mov r1, #0x18
	mov r0, r4
	str r1, [sp, #4]
	mov r4, #0x20
	mov r1, #7
	mov r2, #0xb
	mov r3, #0xe0
	str r4, [sp, #8]
	bl FUN_ov98_02126040
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_02125A30:
	mov r0, r4
	mov r1, #5
	bl FUN_ov98_02125a50
	mov r0, r4
	bl FUN_ov98_021261b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_02125A4C: .word unk_0209F5C0
	arm_func_end FUN_ov98_02125938

	arm_func_start FUN_ov98_02125a50
FUN_ov98_02125a50: ; 0x02125A50
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	mov r2, #0xc
	mla r0, r1, r2, r0
	ldr r12, [r0, #0x158]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0x18
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _02125ABC ; =0x0209F5C0
	add r12, r12, r2
	mov r2, #2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02125ABC: .word unk_0209F5C0
	arm_func_end FUN_ov98_02125a50

	arm_func_start FUN_ov98_02125ac0
FUN_ov98_02125ac0: ; 0x02125AC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, r2, asr #2
	mov r4, r3, asr #2
	add r0, r2, r0, lsr #29
	add r2, r3, r4, lsr #29
	mov r4, r1
	mov r1, r0, asr #3
	mov r0, r2, asr #3
	strh r1, [r4, #8]
	strh r0, [r4, #0xa]
	ldr r0, [r4]
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	cmp r0, #0
	mul r5, r2, r1
	bne _02125B10
	ldr r0, _02125B78 ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_02125B10:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02125B2C
	ldr r0, _02125B78 ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_02125B2C:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02125B64
_02125B4C:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02125B4C
_02125B64:
	ldr r1, [r4, #4]
	mov r2, r5, lsl #5
	mov r0, #0
	bl MIi_CpuClear32
	ldmfd sp!, {r3, r4, r5, pc}
_02125B78: .word unk_0209A250
	arm_func_end FUN_ov98_02125ac0

	arm_func_start FUN_ov98_02125b7c
FUN_ov98_02125b7c: ; 0x02125B7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa4
	mov r6, r0
	add r5, r6, #0x248
	mov r1, r5
	mov r2, #0xf0
	mov r3, #0x30
	bl FUN_ov98_02125ac0
	ldr r0, _02125C44 ; =0x02126318
	mov r4, #0
	ldr r8, [r0]
	ldr r3, [r0, #4]
	add r7, sp, #0x24
	str r8, [sp, #0x1c]
	mov r0, r7
	mov r1, r4
	mov r2, #0x80
	str r3, [sp, #0x20]
	add r8, sp, #0x1c
	bl MI_CpuFill8
	ldrb r1, [r6, #0x21]
	mov r0, r7
	ldr r1, [r8, r1, lsl #2]
	bl sprintf
	mov r1, #3
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #8
	str r1, [sp, #0x10]
	mov r1, #2
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r2, [r5, #8]
	ldrh r3, [r5, #0xa]
	ldr r1, [r5, #4]
	mov r0, r7
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #0xa]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0xa4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02125C44: .word ov98_02126318
	arm_func_end FUN_ov98_02125b7c

	arm_func_start FUN_ov98_02125c48
FUN_ov98_02125c48: ; 0x02125C48
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	add r4, r7, #0x2b4
	mov r1, r4
	mov r2, #0x100
	mov r3, #0x10
	bl FUN_ov98_02125ac0
	mov r6, #1
	ldr r5, _02125CF4 ; =0x02099F50
	mov r1, r6
	ldr r0, [r5]
	mov r2, r6
	bl FUN_02043310
	mov r0, #3
	stmia sp, {r0, r6}
	ldr r0, [r4, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldrh r0, [r4, #8]
	mov r2, r1
	add r3, r7, #0x13c
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	ldr r0, [r5]
	bl FUN_0204331c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02125CF4: .word unk_02099F50
	arm_func_end FUN_ov98_02125c48

	arm_func_start FUN_ov98_02125cf8
FUN_ov98_02125cf8: ; 0x02125CF8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r4, _02125DCC ; =0x02099ED0
	mov r10, r0
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	add r8, r10, #0x254
	bl FUN_02043310
	mov r9, #0
	add r5, r10, #0x3c
	mov r11, #0x60
	mov r7, #3
	mov r6, r9
_02125D30:
	mov r0, r10
	mov r1, r8
	mov r2, r11
	mov r3, #0x10
	bl FUN_ov98_02125ac0
	str r7, [sp]
	str r6, [sp, #4]
	ldr r0, [r8, #4]
	mov r1, #4
	str r0, [sp, #8]
	ldrh r0, [r8, #8]
	mov r2, #5
	add r3, r5, r9, lsl #5
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r8, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [r4]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldrh r2, [r8, #8]
	ldrh r1, [r8, #0xa]
	ldr r0, [r8, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add r9, r9, #1
	add r8, r8, #0xc
	cmp r9, #8
	blt _02125D30
	ldr r0, _02125DCC ; =0x02099ED0
	ldr r0, [r0]
	bl FUN_0204331c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125DCC: .word unk_02099ED0
	arm_func_end FUN_ov98_02125cf8

	arm_func_start FUN_ov98_02125dd0
FUN_ov98_02125dd0: ; 0x02125DD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	add r5, r8, #0x2c0
	mov r1, r5
	mov r2, #0x100
	mov r3, #0x10
	bl FUN_ov98_02125ac0
	mov r4, #0
	ldr r6, _02125E90 ; =0x02099EDC
	mov r1, r4
	ldr r0, [r6]
	mov r2, r4
	bl FUN_02043310
	mov r7, #1
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	bl FUN_02043780
	mov r0, #3
	stmia sp, {r0, r7}
	ldr r0, [r5, #4]
	mov r1, r4
	str r0, [sp, #8]
	ldrh r0, [r5, #8]
	mov r2, r4
	add r3, r8, #0x3c
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r6]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #0xa]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	ldr r0, [r6]
	bl FUN_0204331c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02125E90: .word unk_02099EDC
	arm_func_end FUN_ov98_02125dd0

	arm_func_start FUN_ov98_02125e94
FUN_ov98_02125e94: ; 0x02125E94
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	mov r12, #0xc
	mul lr, r1, r12
	add r0, r0, #0x248
	ldr r12, [r0, lr]
	add lr, r0, lr
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r1, #1
	mov r2, r3, asr #2
	add r2, r3, r2, lsr #29
	str r1, [sp]
	mov r0, r0, lsl #0x15
	mov r2, r2, lsl #0x15
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	ldrh r2, [lr, #8]
	mov r3, #0
	ldr r0, _02125F28 ; =0x0209F5C0
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh lr, [lr, #0xa]
	mov r2, r1
	and lr, lr, #0xff
	str lr, [sp, #0x14]
	str r3, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02125F28: .word unk_0209F5C0
	arm_func_end FUN_ov98_02125e94

	arm_func_start FUN_ov98_02125f2c
FUN_ov98_02125f2c: ; 0x02125F2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r4, #0xc
	mla r0, r1, r4, r0
	ldr r4, [r0, #0x158]
	mov r10, r2
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02126034 ; =0x0000270F
	mov r5, #8
	cmp r1, #0xa
	movne r0, #0x63
	cmp r1, #8
	ldr r2, [sp, #0x48]
	movne r5, #0x10
	cmp r10, r0
	movgt r10, r0
	mov r0, r5, asr #2
	mov r1, r2, asr #2
	ldr r3, [r4, #0xc]
	add r0, r5, r0, lsr #29
	add r1, r2, r1, lsr #29
	mov r7, r0, asr #3
	mov r0, r1, lsl #0x15
	add r8, r4, r3
	ldr r11, _02126038 ; =0x66666667
	mov r5, r0, asr #0x18
	and r4, r7, #0xff
	mov r6, #1
_02125FA8:
	smull r1, r2, r11, r10
	mov r0, r10, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r10, r1
	mul r0, r2, r7
	mov r2, r10
	smull r1, r10, r11, r2
	mov r1, r2, lsr #0x1f
	add r10, r1, r10, asr #2
	mov r1, r9, asr #2
	add r1, r9, r1, lsr #29
	str r6, [sp]
	mov r1, r1, lsl #0x15
	mov r2, #0
	str r6, [sp, #4]
	mov r1, r1, asr #0x18
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r1, #0xa
	str r1, [sp, #0x18]
	add r0, r8, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _0212603C ; =0x0209F5C0
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_020f5da0
	cmp r10, #0
	sub r9, r9, #8
	bgt _02125FA8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126034: .word 0x0000270F
_02126038: .word 0x66666667
_0212603C: .word unk_0209F5C0
	arm_func_end FUN_ov98_02125f2c

	arm_func_start FUN_ov98_02126040
FUN_ov98_02126040: ; 0x02126040
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r4, #0xc
	mla r0, r1, r4, r0
	ldr r12, [r0, #0x158]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, [sp, #0x30]
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	ldr r4, [sp, #0x34]
	mov r3, r6, asr #2
	ldr r5, [sp, #0x38]
	mov r1, #1
	str r1, [sp]
	mov r0, r0, lsl #0x15
	add r3, r6, r3, lsr #29
	mov lr, r4, asr #2
	mov r3, r3, lsl #0x15
	add lr, r4, lr, lsr #29
	mov r4, r5, asr #2
	mov r6, lr, asr #3
	add lr, r5, r4, lsr #29
	mov r4, lr, asr #3
	and r2, r2, #0xff
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r3, asr #0x18
	str r0, [sp, #0xc]
	and r0, r6, #0xff
	str r0, [sp, #0x10]
	and r0, r4, #0xff
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _021260F4 ; =0x0209F5C0
	add r4, r12, r2
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_021260F4: .word unk_0209F5C0
	arm_func_end FUN_ov98_02126040

	arm_func_start FUN_ov98_021260f8
FUN_ov98_021260f8: ; 0x021260F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r9, #0
	mov r6, #0x20
	mov r5, #8
	mov r4, #0x28
_02126114:
	ldr r0, [r10, #0x18]
	cmp r0, #0
	beq _02126128
	cmp r9, #0
	beq _0212619C
_02126128:
	mov r1, r9, lsr #0x1f
	rsb r0, r1, r9, lsl #30
	add r0, r1, r0, ror #30
	mul r8, r0, r4
	mov r0, r9, asr #1
	add r0, r9, r0, lsr #30
	mov r1, r0, asr #2
	mov r7, r1, lsl #7
	add r0, r8, #0x20
	stmia sp, {r0, r6}
	mov r0, r10
	add r1, r9, #0xb
	add r2, r9, #2
	add r3, r7, #8
	str r6, [sp, #8]
	bl FUN_ov98_02126040
	add r0, r8, #0x28
	str r0, [sp]
	add r0, r10, r9
	ldrb r2, [r0, #0x34]
	mov r0, r10
	mov r1, r5
	add r3, r7, #0x60
	bl FUN_ov98_02125f2c
	add r2, r7, #0x28
	add r3, r8, #0x30
	mov r0, r10
	add r1, r9, #1
	bl FUN_ov98_02125e94
_0212619C:
	add r9, r9, #1
	cmp r9, #8
	blt _02126114
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov98_021260f8

	arm_func_start FUN_ov98_021261b0
FUN_ov98_021261b0: ; 0x021261B0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r1, #0x18
	mov r4, #0x60
	str r1, [sp]
	mov r5, #0x40
	str r5, [sp, #4]
	mov r3, r4
	mov r1, #0x13
	mov r2, #0xc
	mov r6, r0
	str r5, [sp, #8]
	bl FUN_ov98_02126040
	mov r5, #0xa
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #0
	bl FUN_ov98_02125e94
	mov r0, #0x78
	str r0, [sp]
	mov r4, #0xc0
	ldrb r2, [r6, #0x34]
	mov r0, r6
	mov r3, r4
	mov r1, #9
	bl FUN_ov98_02125f2c
	mov r1, r5
	mov r3, r4
	mov r0, #0x90
	str r0, [sp]
	mov r0, r6
	ldrh r2, [r6, #0x22]
	bl FUN_ov98_02125f2c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov98_021261b0

	arm_func_start FUN_ov98_02126240
FUN_ov98_02126240: ; 0x02126240
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov98_02126240

	arm_func_start FUN_ov98_02126254
FUN_ov98_02126254: ; 0x02126254
	bx lr
	arm_func_end FUN_ov98_02126254
_02126258:
	.byte 0x50, 0x63, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x60, 0x63, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x70, 0x63, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x80, 0x63, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0x38, 0x63, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x44, 0x63, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x20, 0x63, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x2C, 0x63, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov98_021262a0
FUN_ov98_021262a0: ; 0x021262A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021262E8 ; =0x02126300
	str r0, [r4, #0x14]
	ldr r0, _021262EC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _021262F0 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_021262E8: .word ov98_02126300
_021262EC: .word 0x00009CCD
_021262F0: .word 0x0000EA3C
	arm_func_end FUN_ov98_021262a0

	.section .sinit, 4
ov98_021262F4:
	.word FUN_ov98_021262a0

	.data
	.global ov98_02126300
ov98_02126300:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov98_02126318
ov98_02126318:
	.byte 0xDC, 0x63, 0x12, 0x02, 0x90, 0x63, 0x12, 0x02
	.byte 0x74, 0x6D, 0x75, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x74, 0x6D, 0x75, 0x5F
	.byte 0x6E, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x74, 0x6D, 0x75, 0x5F, 0x69, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x74, 0x6D, 0x75, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x74, 0x6D, 0x75, 0x5F, 0x62, 0x73, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0x6D, 0x75, 0x5F, 0x62, 0x73, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0x6D, 0x75, 0x5F, 0x62, 0x73, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0x6D, 0x75, 0x5F, 0x62, 0x73, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x5B, 0x8D, 0xA1, 0x2F, 0x82, 0xA2, 0x82, 0xDC, 0x5D, 0x82, 0xA0, 0x82, 0xE9, 0x5B, 0x91, 0x67
	.byte 0x2F, 0x82, 0xAD, 0x5D, 0x82, 0xDD, 0x5B, 0x8D, 0x87, 0x2F, 0x82, 0xA0, 0x5D, 0x82, 0xED, 0x82
	.byte 0xB9, 0x82, 0xCC, 0x0A, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x69, 0x83, 0x81, 0x83, 0x93, 0x83, 0x67
	.byte 0x82, 0xC5, 0x5B, 0x8E, 0x8E, 0x8D, 0x87, 0x2F, 0x82, 0xB5, 0x82, 0xA0, 0x82, 0xA2, 0x5D, 0x82
	.byte 0xF0, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x5B, 0x90, 0x56, 0x2F
	.byte 0x82, 0xA0, 0x82, 0xBD, 0x82, 0xE7, 0x5D, 0x82, 0xB5, 0x82, 0xA2, 0x5B, 0x91, 0x67, 0x2F, 0x82
	.byte 0xAD, 0x5D, 0x82, 0xDD, 0x5B, 0x8D, 0x87, 0x2F, 0x82, 0xA0, 0x5D, 0x82, 0xED, 0x82, 0xB9, 0x82
	.byte 0xCC, 0x0A, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x69, 0x83, 0x81, 0x83, 0x93, 0x83, 0x67, 0x82, 0xC5
	.byte 0x5B, 0x8E, 0x8E, 0x8D, 0x87, 0x2F, 0x82, 0xB5, 0x82, 0xA0, 0x82, 0xA2, 0x5D, 0x82, 0xF0, 0x82
	.byte 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x54, 0x62, 0x12, 0x02, 0x40, 0x62, 0x12, 0x02, 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02
	.byte 0x00, 0x4D, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x10, 0x4E, 0x12, 0x02, 0x24, 0x4F, 0x12, 0x02
	.byte 0x7C, 0x4D, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02
	.byte 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02
	.byte 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02
	.byte 0x84, 0x4F, 0x12, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov98_0212649C
ov98_0212649C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x54, 0x6F, 0x75, 0x72, 0x6E, 0x61, 0x6D, 0x65, 0x6E, 0x74, 0x2E, 0x53, 0x50, 0x46
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov98_021264C4
ov98_021264C4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70
	.byte 0x6B, 0x68, 0x00, 0x00
	.global ov98_021264E4
ov98_021264E4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x68
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov98_02126504
ov98_02126504:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70
	.byte 0x6B, 0x62, 0x00, 0x00
	.global ov98_02126524
ov98_02126524:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x62
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

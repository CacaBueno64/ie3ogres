
	arm_func_start FUN_ov115_02124d00
FUN_ov115_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r1, r6
	add r0, r7, #0x54
	mov r2, #0x6c
	bl MemWrite
	ldr r0, _02124D78 ; =0x0212647C
	add r1, r7, #0x54
	bl FUN_020DBE00
	ldr r4, _02124D7C ; =0x020A8C40
	mov r5, #0x800
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0200787c
	mov r0, r4
	mov r1, r5
	bl FUN_020026d0
	mov r0, r6
	ldr r4, _02124D80 ; =0x020A8440
	mov r2, r5
	mov r1, r4
	bl FUN_0200787c
	mov r0, r4
	mov r1, r5
	bl FUN_020026d0
	mov r0, #1
	str r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124D78: .word 0x0212647C
_02124D7C: .word 0x020A8C40
_02124D80: .word 0x020A8440
	arm_func_end FUN_ov115_02124d00

	arm_func_start FUN_ov115_02124d84
FUN_ov115_02124d84: ; 0x02124D84
	mov r1, r0
	ldr r0, [r1, #0x54]
	ldr r2, _02124D9C ; =0x021262E0
	ldr r12, _02124DA0 ; =FUN_020DBFDC
	add r1, r1, #0x54
	bx r12
_02124D9C: .word 0x021262E0
_02124DA0: .word FUN_020DBFDC
	arm_func_end FUN_ov115_02124d84

	arm_func_start FUN_ov115_02124da4
FUN_ov115_02124da4: ; 0x02124DA4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x54
	mov r4, #0xc
_02124DB4:
	mla r0, r6, r4, r5
	bl FUN_020F33FC
	add r6, r6, #1
	cmp r6, #9
	blt _02124DB4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov115_02124da4

	arm_func_start FUN_ov115_02124dcc
FUN_ov115_02124dcc: ; 0x02124DCC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	bl FUN_02041fec
	cmp r0, #0x37
	cmpeq r4, #1
	ldreq r0, [r5, #0x14]
	cmpeq r0, #3
	moveq r0, #4
	streq r0, [r5, #0x14]
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov115_02124dcc

	arm_func_start FUN_ov115_02124e04
FUN_ov115_02124e04: ; 0x02124E04
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x12]
	cmp r0, #0
	bne _02124E60
	ldr r0, _02124E74 ; =0x0209BA20
	bl FUN_0207318c
	movs r5, r0
	beq _02124E60
	mov r1, #0
	bl FUN_02073ea4
	mov r4, r0
	mov r0, r5
	mov r1, #1
	bl FUN_02073ea4
	cmp r4, #1
	cmpne r4, #6
	cmpne r0, #1
	cmpne r0, #6
	moveq r0, #1
	streqb r0, [r6, #0x12]
	movne r0, #2
	strneb r0, [r6, #0x12]
_02124E60:
	ldrb r0, [r6, #0x12]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02124E74: .word 0x0209BA20
	arm_func_end FUN_ov115_02124e04

	arm_func_start FUN_ov115_02124e78
FUN_ov115_02124e78: ; 0x02124E78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r0, [r10, #0xc]
	mov r6, #0
	mov r11, #2
	cmp r0, #0
	mov r5, #0x18
	mov r7, #0x20
	mov r8, #1
	mov r4, r6
	mov r9, r6
	beq _02124EC0
	cmp r0, #1
	beq _02124FA0
	cmp r0, #2
	beq _02125098
	b _021254A0
_02124EC0:
	ldr r0, [r10, #0x60]
	sub r1, r9, #1
	mov r2, r8
	bl FUN_020DC13C
	ldr r0, [r10, #0x6c]
	mov r1, r9
	mov r2, r11
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r10, #0x84]
	mov r2, #3
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r10, #0x90]
	mov r2, r11
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r10, #0xa8]
	mov r2, r11
	bl FUN_020DC13C
	ldr r1, _021254B8 ; =0x0209A144
	ldr r0, [r10, #0x78]
	ldr r1, [r1]
	mov r2, r11
	ldr r1, [r1, #0x18]
	mov r1, r1, lsr #5
	sub r1, r1, #1
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r10, #0x9c]
	mov r2, r11
	bl FUN_020DC13C
	mov r11, r0
	add r5, r10, #0x18
_02124F48:
	ldr r0, [r5]
	mov r2, r4
	cmp r0, #0
	ldrne r1, [r5, #4]
	cmpne r1, #0
	movne r2, r8
	cmp r2, #0
	beq _02124F88
	ldrh r7, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	mov r3, r4
	add r2, r11, #1
	mul r1, r7, r1
	mov r1, r1, lsl #1
	bl FUN_020F1868
	mov r11, r0
_02124F88:
	add r6, r6, #1
	cmp r6, #3
	add r5, r5, #0x14
	blt _02124F48
	bl FUN_020F10C8
	b _021254A0
_02124FA0:
	ldr r1, [r10, #0x60]
	mov r0, r9
	mov r2, r9
	bl FUN_020F1A60
	bl FUN_02004fac
	mov r1, r0
	mov r0, r9
	mov r2, r7
	bl FUN_0200787c
	bl FUN_02004fac
	mov r1, r7
	bl FUN_020026d0
	ldr r1, [r10, #0x6c]
	mov r2, r7
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r10, #0x84]
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r10, #0x90]
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r10, #0xa8]
	mov r0, r8
	bl FUN_020F1A60
	ldr r0, _021254B8 ; =0x0209A144
	mov r1, r9
	ldr r4, [r0]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	bl FUN_020059ac
	ldr r2, [r4, #0x18]
	ldr r1, [r10, #0x78]
	mov r0, r11
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r10, #0x9c]
	mov r0, r11
	bl FUN_020F1A60
	add r3, r10, #0x18
	mov r4, r9
_02125054:
	ldr r1, [r3]
	add r4, r4, #1
	cmp r1, #0
	ldrne r1, [r3, #4]
	cmpne r1, #0
	movne r1, r8
	moveq r1, r6
	cmp r1, #0
	strne r0, [r3, #8]
	ldrneh r2, [r3, #0xc]
	ldrneh r1, [r3, #0xe]
	add r3, r3, #0x14
	mulne r1, r2, r1
	addne r0, r0, r1, lsl #5
	cmp r4, #3
	blt _02125054
	b _021254A0
_02125098:
	ldr r3, [r10, #0x60]
	cmp r3, #0
	beq _021250B8
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r9
	add r0, r3, r0
	bl FUN_0200546c
_021250B8:
	ldr r0, _021254BC ; =0x0209F5C0
	mov r1, r8
	bl FUN_020F5AF0
	ldr r0, _021254BC ; =0x0209F5C0
	mov r1, r8
	bl FUN_020F5A58
	ldr r1, [r10, #0x84]
	cmp r1, #0
	beq _02125140
	ldr r0, [r1, #0xc]
	mov r2, #0x18
	add r3, r1, r0
	mov r1, #0xb
	mov r0, #3
	strh r2, [sp, #0x16]
	strh r1, [sp, #0x1a]
	strb r0, [sp, #0x24]
	str r3, [sp, #0x28]
	strh r7, [sp, #0x14]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	add r0, sp, #0x14
	str r6, [sp]
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _021254BC ; =0x0209F5C0
	mov r1, r8
	mov r2, r8
	mov r3, r8
	str r6, [sp, #0x10]
	bl FUN_020F5C34
_02125140:
	ldr r3, [r10, #0x18]
	mov r1, #0
	cmp r3, #0
	ldrne r0, [r10, #0x1c]
	add r11, sp, #0x14
	cmpne r0, #0
	movne r1, #1
	mov r9, #2
	cmp r1, #0
	beq _021251C0
	ldrh r1, [r10, #0x26]
	ldrh r0, [r10, #0x24]
	mov r2, #0
	strh r0, [sp, #0x18]
	strh r1, [sp, #0x1a]
	str r3, [sp, #0x28]
	strh r7, [sp, #0x14]
	strh r5, [sp, #0x16]
	strh r2, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r2, [sp, #0x24]
	add r0, sp, #0x14
	str r2, [sp]
	stmib sp, {r0, r2}
	str r2, [sp, #0xc]
	ldr r0, _021254BC ; =0x0209F5C0
	mov r1, #1
	mov r3, #2
	str r2, [sp, #0x10]
	bl FUN_020F5C34
_021251C0:
	ldr r1, [r10, #0xa8]
	cmp r1, #0
	beq _02125280
	ldr r0, [r1, #0xc]
	mov r2, r8
	add r4, r1, r0
	mov r0, #0xf
	strh r0, [sp, #0x18]
	mov r0, #3
	strh r0, [sp, #0x1a]
	strh r7, [sp, #0x14]
	strh r5, [sp, #0x16]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r9, [sp, #0x24]
	str r4, [sp, #0x28]
	stmia sp, {r6, r11}
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _021254BC ; =0x0209F5C0
	mov r1, r8
	mov r3, #0xf
	str r6, [sp, #0x10]
	bl FUN_020F5C34
	mov r0, #0xf
	strh r0, [sp, #0x18]
	mov r0, #3
	strh r0, [sp, #0x1a]
	add r0, r4, #0x5a
	str r0, [sp, #0x28]
	strh r7, [sp, #0x14]
	strh r5, [sp, #0x16]
	strb r9, [sp, #0x24]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	stmia sp, {r6, r11}
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _021254BC ; =0x0209F5C0
	mov r1, r8
	mov r2, r8
	mov r3, #0x10
	str r6, [sp, #0x10]
	bl FUN_020F5C34
_02125280:
	mov r9, #0
	add r4, r10, #0x18
_02125288:
	add r1, r9, #1
	mov r0, #0x14
	mul r0, r1, r0
	ldr r2, [r4, r0]
	add r3, r4, r0
	cmp r2, #0
	ldrne r0, [r3, #4]
	mov r1, r6
	cmpne r0, #0
	movne r1, r8
	cmp r1, #0
	beq _0212530C
	ldrh r12, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	ldr r0, _021254BC ; =0x0209F5C0
	mov r1, r8
	strh r3, [sp, #0x18]
	str r2, [sp, #0x28]
	strh r12, [sp, #0x1a]
	strh r7, [sp, #0x14]
	strh r5, [sp, #0x16]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r6, [sp, #0x24]
	stmia sp, {r6, r11}
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	mov r2, r6
	add r3, r9, #0x11
	str r6, [sp, #0x10]
	bl FUN_020F5C34
_0212530C:
	add r9, r9, #1
	cmp r9, #2
	blt _02125288
	ldr r3, [r10, #0x6c]
	add r0, sp, #0x14
	cmp r3, #0
	mov r2, #2
	mov r7, #0x18
	mov r8, #0x20
	mov r6, #0
	beq _02125394
	ldr r1, [r3, #0xc]
	mov r4, #0xe
	add r5, r3, r1
	mov r3, #8
	strh r3, [sp, #0x1a]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r4, [sp, #0x18]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r2, [sp, #0x24]
	str r5, [sp, #0x28]
	str r6, [sp]
	stmib sp, {r0, r6}
	mov r1, #1
	str r6, [sp, #0xc]
	ldr r0, _021254BC ; =0x0209F5C0
	mov r2, r1
	mov r3, #3
	str r6, [sp, #0x10]
	bl FUN_020F5C34
_02125394:
	mov r0, r10
	mov r1, r8
	mov r2, r7
	mov r3, #1
	bl FUN_ov115_02125528
	mov r0, r10
	bl FUN_ov115_02124e04
	cmp r0, #0
	beq _0212549C
	ldr r1, [r10, #0x90]
	add r4, sp, #0x14
	cmp r1, #0
	mov r5, #2
	beq _0212547C
	ldr r0, [r1, #0xc]
	mov r11, #8
	add r9, r1, r0
	mov r0, #6
	strh r0, [sp, #0x1a]
	strh r8, [sp, #0x14]
	mov r1, #1
	strh r7, [sp, #0x16]
	strh r11, [sp, #0x18]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r5, [sp, #0x24]
	str r9, [sp, #0x28]
	str r6, [sp]
	stmib sp, {r4, r6}
	str r6, [sp, #0xc]
	ldr r0, _021254BC ; =0x0209F5C0
	mov r2, r1
	mov r3, #9
	str r6, [sp, #0x10]
	bl FUN_020F5C34
	add r1, r9, #0x60
	mov r0, #6
	strh r0, [sp, #0x1a]
	str r1, [sp, #0x28]
	mov r1, #1
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r11, [sp, #0x18]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r5, [sp, #0x24]
	str r6, [sp]
	stmib sp, {r4, r6}
	str r6, [sp, #0xc]
	ldr r0, _021254BC ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xa
	str r6, [sp, #0x10]
	bl FUN_020F5C34
_0212547C:
	mov r0, r10
	mov r2, #1
	mov r1, #0
	bl FUN_ov115_021256cc
	mov r1, #1
	mov r0, r10
	mov r2, r1
	bl FUN_ov115_021256cc
_0212549C:
	mov r9, #1
_021254A0:
	ldr r1, [r10, #0xc]
	mov r0, r9
	add r1, r1, #1
	str r1, [r10, #0xc]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021254B8: .word 0x0209A144
_021254BC: .word 0x0209F5C0
	arm_func_end FUN_ov115_02124e78

	arm_func_start FUN_ov115_021254c0
FUN_ov115_021254c0: ; 0x021254C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	add r7, r0, #0x18
	mov r5, r8
	mov r6, #1
	mov r4, r8
_021254D8:
	ldr r0, [r7]
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, r6
	moveq r0, r5
	cmp r0, #0
	beq _02125514
	strb r4, [r7, #0x10]
	ldrh r3, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldmib r7, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_020059ac
_02125514:
	add r8, r8, #1
	cmp r8, #3
	add r7, r7, #0x14
	blt _021254D8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov115_021254c0

	arm_func_start FUN_ov115_02125528
FUN_ov115_02125528: ; 0x02125528
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	ldr r4, [r0, #0x78]
	mov r10, r1
	cmp r4, #0
	mov r9, r2
	mov r8, r3
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _021256B4 ; =0x020A0640
	ldr r2, [r4, #0xc]
	ldr r1, [r0, #8]
	ldr r0, [r0]
	add r5, r4, r2
	subs r0, r1, r0
	movmi r0, #0
	ldr r2, _021256B8 ; =0x88888889
	mov r3, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	ldr r2, _021256BC ; =0x0000176F
	add r0, r1, r0, asr #4
	cmp r0, r2
	ldr r4, _021256B8 ; =0x88888889
	movgt r0, r2
	smull r1, r3, r4, r0
	smull r1, r2, r4, r0
	mov r4, r0, lsr #0x1f
	add r3, r0, r3
	add r2, r0, r2
	add r3, r4, r3, asr #5
	mov r7, #0x3c
	smull r3, r1, r7, r3
	add r6, sp, #0x14
	sub r3, r0, r3
	ldr r1, _021256C0 ; =0x0212648C
	mov r0, r6
	add r2, r4, r2, asr #5
	bl FUN_02023c40
	mov r0, r9, lsl #0x10
	mov r7, #0
	mov r4, r0, asr #0x10
	mov r11, #2
	b _021256A0
_021255DC:
	ldrsb r0, [r6]
	cmp r0, #0x30
	blt _021255F8
	cmp r0, #0x39
	suble r0, r0, #0x30
	addle r0, r5, r0, lsl #4
	ble _02125608
_021255F8:
	ldrsb r0, [r6]
	cmp r0, #0x3a
	addeq r0, r5, #0xa0
	movne r0, r5
_02125608:
	cmp r8, #0
	beq _02125674
	str r0, [sp, #0x30]
	mov r0, #4
	strh r0, [sp, #0x22]
	mov r0, #0
	strh r10, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r11, [sp, #0x20]
	strh r0, [sp, #0x24]
	strh r0, [sp, #0x26]
	strh r0, [sp, #0x28]
	strh r0, [sp, #0x2a]
	strb r11, [sp, #0x2c]
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021256C4 ; =0x0209F5C0
	mov r1, #1
	mov r2, #0
	add r3, r7, #4
	bl FUN_020F5C34
	b _02125698
_02125674:
	str r0, [sp]
	ldr r0, _021256C8 ; =0x020A8440
	mov r1, r9
	str r0, [sp, #4]
	mov r0, r10
	mov r2, #2
	mov r3, #4
	bl FUN_020F191C
	add r10, r10, #2
_02125698:
	add r7, r7, #1
	add r6, r6, #1
_021256A0:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _021255DC
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021256B4: .word 0x020A0640
_021256B8: .word 0x88888889
_021256BC: .word 0x0000176F
_021256C0: .word 0x0212648C
_021256C4: .word 0x0209F5C0
_021256C8: .word 0x020A8440
	arm_func_end FUN_ov115_02125528

	arm_func_start FUN_ov115_021256cc
FUN_ov115_021256cc: ; 0x021256CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	mov r4, r1
	mov r10, r2
	bl FUN_ov115_02124e04
	cmp r0, #0
	ldrne r3, [r5, #0x9c]
	cmpne r3, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02125824 ; =0x02099EF0
	ldr r2, [r3, #0xc]
	ldr r0, [r0]
	mov r1, r4
	add r9, r3, r2
	bl FUN_02143C28
	mov r8, r0
	cmp r8, #0x63
	movgt r8, #0x63
	mov r7, #5
	cmp r4, #0
	movne r7, #0x1b
	cmp r4, #0
	mov r6, #0xb
	ldr r4, _02125828 ; =0x66666667
	movne r6, #0xd
	mov r5, #0x20
	mov r11, #0x18
_02125740:
	smull r0, r1, r4, r8
	mov r0, r8, lsr #0x1f
	add r1, r0, r1, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r1
	sub r1, r8, r1
	mov r0, #0xc
	mul r0, r1, r0
	cmp r10, #0
	add r0, r9, r0, lsl #1
	beq _021257E0
	str r0, [sp, #0x28]
	mov r0, #3
	strh r0, [sp, #0x18]
	mov r0, #4
	strh r0, [sp, #0x1a]
	mov r0, #0
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	mov r0, #2
	strb r0, [sp, #0x24]
	strh r5, [sp, #0x14]
	strh r11, [sp, #0x16]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0212582C ; =0x0209F5C0
	mov r1, #1
	mov r2, #0
	mov r3, r6
	bl FUN_020F5C34
	add r6, r6, #1
	b _02125804
_021257E0:
	str r0, [sp]
	ldr r0, _02125830 ; =0x020A8440
	mov r1, #0x11
	str r0, [sp, #4]
	mov r0, r7
	mov r2, #3
	mov r3, #4
	bl FUN_020F191C
	sub r7, r7, #3
_02125804:
	mov r1, r8
	smull r0, r8, r4, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #2
	cmp r8, #0
	bgt _02125740
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125824: .word 0x02099EF0
_02125828: .word 0x66666667
_0212582C: .word 0x0209F5C0
_02125830: .word 0x020A8440
	arm_func_end FUN_ov115_021256cc

	arm_func_start FUN_ov115_02125834
FUN_ov115_02125834: ; 0x02125834
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x188
	mov r10, r0
	ldr r0, [r10, #0x14]
	mov r11, #1
	cmp r0, #0
	mov r7, #0
	beq _02125864
	cmp r0, #2
	beq _021259FC
	add sp, sp, #0x188
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125864:
	ldr r0, [r10, #0x18]
	cmp r0, #0
	ldrne r0, [r10, #0x1c]
	cmpne r0, #0
	movne r0, r11
	moveq r0, #0
	cmp r0, #0
	beq _021258D0
	ldr r0, _02125AF0 ; =0x0209BA20
	bl FUN_0207318c
	mov r4, r0
	add r0, r10, #0x18
	bl FUN_020F2F20
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r11}
	str r11, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldrh r1, [r10, #0x26]
	ldrh r2, [r10, #0x24]
	add r0, r4, #0x20
	mov r3, r1, lsl #3
	ldr r1, [r10, #0x1c]
	mov r2, r2, lsl #3
	bl FUN_020F2184
_021258D0:
	ldr r5, _02125AF0 ; =0x0209BA20
	mov r8, #0
	add r6, r10, #0x18
_021258DC:
	add r1, r8, #1
	mov r0, #0x14
	mul r0, r1, r0
	add r9, r6, r0
	ldr r0, [r6, r0]
	cmp r0, #0
	ldrne r0, [r9, #4]
	cmpne r0, #0
	movne r0, r11
	moveq r0, r7
	cmp r0, #0
	beq _021259E0
	mov r0, r9
	bl FUN_020F2F20
	mov r0, r5
	mov r1, r8
	bl FUN_0207249c
	movs r4, r0
	beq _021259C8
	mov r0, r5
	mov r1, r8
	bl FUN_0207249c
	cmp r0, #0
	beq _021259C8
	ldrh r1, [r0, #0x20]
	mov r0, r5
	add r2, sp, #0x1c
	bl FUN_0207039c
	cmp r0, #0
	beq _021259C8
	bl FUN_020F081C
	cmp r8, r0
	mov r0, #3
	mov r1, #4
	mov r2, #6
	bne _02125984
	stmia sp, {r0, r7}
	ldr r0, [r9, #4]
	add r3, sp, #0x1c
	str r0, [sp, #8]
	ldrh r0, [r9, #0xc]
	b _02125998
_02125984:
	stmia sp, {r0, r7}
	ldr r0, [r9, #4]
	mov r3, r4
	str r0, [sp, #8]
	ldrh r0, [r9, #0xc]
_02125998:
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r0, _02125AF4 ; =0x02099F50
	str r7, [sp, #0x18]
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
_021259C8:
	ldr r0, [r9, #4]
	ldrh r2, [r9, #0xc]
	ldrh r1, [r9, #0xe]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl FUN_020026d0
_021259E0:
	add r8, r8, #1
	cmp r8, #2
	blt _021258DC
	mov r0, #1
	add sp, sp, #0x188
	str r0, [r10, #0x14]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021259FC:
	ldrb r4, [r10, #0x10]
	mov r8, r7
	ldr r6, _02125AF8 ; =0x020A3D14
	sub r5, r8, #0xc
_02125A0C:
	mov r0, r6
	mov r1, r4
	mov r2, r7
	mov r3, r5
	str r11, [sp]
	bl FUN_020F5964
	add r0, r5, #2
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	cmp r5, #2
	add r8, r8, #1
	ble _02125A0C
	mov r0, r6
	mov r1, r4
	mov r2, r7
	mov r3, r11
	str r11, [sp]
	mov r5, #1
	mov r4, #0
	bl FUN_020F5964
	ldrb r9, [r10, #0x11]
	add r0, r8, #1
	mov r8, #0x19
	and r11, r0, #0xff
	mov r0, r6
	mov r1, r9
	mov r2, r7
	mov r3, r8
	str r11, [sp]
	bl FUN_020F5964
	ldr r6, _02125AF8 ; =0x020A3D14
_02125A88:
	mov r0, r6
	mov r1, r9
	mov r2, r4
	mov r3, r8
	str r5, [sp]
	bl FUN_020F5964
	sub r0, r8, #2
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #0xb
	bge _02125A88
	mov r0, r6
	mov r1, r9
	mov r2, r4
	mov r3, #0xc
	str r5, [sp]
	bl FUN_020F5964
	mov r1, #3
	ldr r0, _02125AFC ; =0x020E9480
	str r1, [r10, #0x14]
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, #5
	strne r0, [r10, #0x14]
	add sp, sp, #0x188
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125AF0: .word 0x0209BA20
_02125AF4: .word 0x02099F50
_02125AF8: .word 0x020A3D14
_02125AFC: .word 0x020E9480
	arm_func_end FUN_ov115_02125834

	arm_func_start FUN_ov115_02125b00
FUN_ov115_02125b00: ; 0x02125B00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldr r1, [r10, #0x84]
	ldr r8, _02125D70 ; =0x020A8C40
	cmp r1, #0
	mov r4, #1
	mov r11, #0
	beq _02125B48
	ldr r0, [r1, #0xc]
	mov r2, #0x20
	add r0, r1, r0
	str r0, [sp]
	mov r0, r11
	mov r1, r4
	mov r3, #0xb
	str r8, [sp, #4]
	bl FUN_020F191C
_02125B48:
	ldr r0, [r10, #0x18]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x1c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125B8C
	ldr r1, [r10, #0x18]
	ldr r0, _02125D74 ; =0x020A8440
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r2, [r10, #0x24]
	ldrh r3, [r10, #0x26]
	mov r0, #1
	mov r1, #4
	bl FUN_020F191C
_02125B8C:
	ldr r1, [r10, #0xa8]
	cmp r1, #0
	beq _02125BE8
	ldr r0, [r1, #0xc]
	mov r6, #0xf
	add r9, r1, r0
	mov r7, #0xc
	mov r5, #3
	str r9, [sp]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r0, #0
	str r8, [sp, #4]
	bl FUN_020F191C
	add r0, r9, #0x5a
	str r0, [sp]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r0, #0x11
	str r8, [sp, #4]
	bl FUN_020F191C
_02125BE8:
	ldr r0, [r10, #0x2c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x30]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125C2C
	ldr r1, [r10, #0x2c]
	ldr r0, _02125D74 ; =0x020A8440
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r2, [r10, #0x38]
	ldrh r3, [r10, #0x3a]
	mov r0, #0
	mov r1, #0xc
	bl FUN_020F191C
_02125C2C:
	ldr r0, [r10, #0x40]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x44]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125C70
	ldr r1, [r10, #0x40]
	ldr r0, _02125D74 ; =0x020A8440
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r2, [r10, #0x4c]
	ldrh r3, [r10, #0x4e]
	mov r0, #0x12
	mov r1, #0xc
	bl FUN_020F191C
_02125C70:
	ldr r1, [r10, #0x6c]
	cmp r1, #0
	beq _02125CA0
	ldr r0, [r1, #0xc]
	mov r2, #0xe
	add r0, r1, r0
	str r0, [sp]
	mov r0, #9
	mov r1, #0xf
	mov r3, #8
	str r8, [sp, #4]
	bl FUN_020F191C
_02125CA0:
	mov r0, r10
	mov r1, #0xb
	mov r2, #0x12
	mov r3, #0
	bl FUN_ov115_02125528
	mov r0, r10
	bl FUN_ov115_02124e04
	cmp r0, #0
	beq _02125D40
	ldr r1, [r10, #0x90]
	cmp r1, #0
	beq _02125D20
	ldr r0, [r1, #0xc]
	mov r5, #8
	add r9, r1, r0
	mov r6, #0x10
	mov r7, #6
	str r9, [sp]
	mov r1, r6
	mov r2, r5
	mov r3, r7
	mov r0, #1
	str r8, [sp, #4]
	bl FUN_020F191C
	add r0, r9, #0x60
	str r0, [sp]
	mov r1, r6
	mov r2, r5
	mov r3, r7
	mov r0, #0x17
	str r8, [sp, #4]
	bl FUN_020F191C
_02125D20:
	mov r0, r10
	mov r1, r11
	mov r2, r11
	bl FUN_ov115_021256cc
	mov r0, r10
	mov r2, r11
	mov r1, #1
	bl FUN_ov115_021256cc
_02125D40:
	mov r5, #0x800
	mov r0, r8
	mov r1, r5
	bl FUN_020026d0
	mov r0, r8
	mov r2, r5
	mov r1, #0
	bl FUN_0200554c
	ldr r0, _02125D78 ; =0x020E9480
	strb r4, [r0]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125D70: .word 0x020A8C40
_02125D74: .word 0x020A8440
_02125D78: .word 0x020E9480
	arm_func_end FUN_ov115_02125b00

	arm_func_start FUN_ov115_02125d7c
FUN_ov115_02125d7c: ; 0x02125D7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldr r1, [r10, #0x14]
	mov r6, #0
	cmp r1, #4
	ldr r5, _021260C0 ; =0x0209F5C0
	mov r4, #1
	beq _02125DB8
	cmp r1, #5
	beq _0212605C
	cmp r1, #6
	beq _02126088
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125DB8:
	ldrb r1, [r10, #0x10]
	ldr r0, _021260C4 ; =0x020A3D14
	mov r7, r4
	bl FUN_020F5A04
	movs r6, r0
	beq _02125E14
	ldrsh r1, [r6, #2]
	mov r0, r5
	mov r2, r7
	str r1, [sp]
	ldrsh r3, [r6]
	mov r1, r7
	bl FUN_020F63F0
	ldrsh r2, [r6, #2]
	mov r0, r5
	mov r1, r7
	add r2, r2, #3
	str r2, [sp]
	ldrsh r3, [r6]
	mov r2, #2
	add r3, r3, #1
	bl FUN_020F63F0
	mov r7, #0
_02125E14:
	ldrb r1, [r10, #0x11]
	ldr r0, _021260C4 ; =0x020A3D14
	bl FUN_020F5A04
	cmp r0, #0
	beq _02126034
	ldrsh r7, [r0]
	ldrsh r6, [r0, #2]
	mov r0, r5
	mov r1, r4
	mov r3, r7
	mov r2, #0xf
	str r6, [sp]
	bl FUN_020F63F0
	mov r0, r7, lsl #0x10
	mov r8, r0, asr #0x10
	add r0, r8, #0x11
	mov r2, r0, lsl #0x10
	mov r3, r2, asr #0x10
	mov r0, r5
	mov r1, r4
	mov r2, #0x10
	str r6, [sp]
	bl FUN_020F63F0
	sub r0, r6, #0xc
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	mov r0, r8, lsl #0x10
	mov r3, r0, asr #0x10
	add r0, r9, #0xc
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	mov r0, r5
	mov r1, r4
	mov r2, #0x11
	str r6, [sp]
	bl FUN_020F63F0
	add r0, r8, #0x12
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, r5
	mov r1, r4
	mov r2, #0x12
	str r6, [sp]
	bl FUN_020F63F0
	add r0, r8, #9
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	add r0, r9, #0xf
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r1, r4
	mov r0, r5
	mov r2, #3
	bl FUN_020F63F0
	add r0, r9, #0x12
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	add r0, r8, #0xb
	mov r6, #4
	mov r4, r0, lsl #0x10
	mov r11, #1
_02125F0C:
	sub r0, r6, #4
	mov r3, r0, lsl #1
	mov r0, r5
	mov r1, r11
	mov r2, r6
	add r3, r3, r4, asr #16
	str r7, [sp]
	bl FUN_020F63F0
	add r6, r6, #1
	cmp r6, #8
	ble _02125F0C
	mov r0, r10
	ldr r6, _021260C0 ; =0x0209F5C0
	mov r4, #1
	bl FUN_ov115_02124e04
	cmp r0, #0
	beq _02126030
	add r1, r8, #1
	mov r2, r1, lsl #0x10
	add r0, r9, #0x10
	str r0, [sp, #4]
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	mov r3, r2, asr #0x10
	mov r0, r5
	mov r1, r11
	mov r2, #9
	str r7, [sp]
	bl FUN_020F63F0
	add r0, r9, #0x11
	mov r0, r0, lsl #0x10
	add r1, r8, #2
	mov r5, r0, asr #0x10
	mov r9, r1, lsl #0x10
	mov r7, #0
_02125F98:
	rsb r0, r7, #1
	add r3, r0, r0, lsl #1
	mov r0, r6
	mov r1, r4
	add r2, r7, #0xb
	add r3, r3, r9, asr #16
	str r5, [sp]
	bl FUN_020F63F0
	add r7, r7, #1
	cmp r7, #2
	blt _02125F98
	add r0, r8, #0x17
	mov r2, r0, lsl #0x10
	ldr r0, [sp, #4]
	mov r1, r4
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	mov r0, r6
	mov r3, r2, asr #0x10
	mov r2, #0xa
	str r7, [sp]
	ldr r6, _021260C0 ; =0x0209F5C0
	mov r4, #1
	bl FUN_020F63F0
	add r0, r8, #0x18
	mov r8, r0, lsl #0x10
	mov r7, #0
_02126004:
	rsb r0, r7, #1
	add r3, r0, r0, lsl #1
	mov r0, r6
	mov r1, r4
	add r2, r7, #0xd
	add r3, r3, r8, asr #16
	str r5, [sp]
	bl FUN_020F63F0
	add r7, r7, #1
	cmp r7, #2
	blt _02126004
_02126030:
	mov r7, #0
_02126034:
	cmp r7, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #5
	ldr r0, [r10, #4]
	str r1, [r10, #0x14]
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0x40]
	blx r2
_0212605C:
	ldr r0, _021260C0 ; =0x0209F5C0
	mov r1, #1
	bl FUN_020F5A58
	mov r0, r10
	bl FUN_ov115_02125b00
	mov r1, #6
	mov r0, #4
	add sp, sp, #8
	str r1, [r10, #0x14]
	str r0, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126088:
	mov r3, r6
	mov r1, #0xb
	mov r2, #0x12
	bl FUN_ov115_02125528
	mov r0, r10
	mov r1, r6
	mov r2, r6
	bl FUN_ov115_021256cc
	mov r0, r10
	mov r2, r6
	mov r1, r4
	bl FUN_ov115_021256cc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021260C0: .word 0x0209F5C0
_021260C4: .word 0x020A3D14
	arm_func_end FUN_ov115_02125d7c

	arm_func_start FUN_ov115_021260c8
FUN_ov115_021260c8: ; 0x021260C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _0212615C ; =0x0209F5C0
	mov r1, #1
	bl FUN_020F5A58
	mov r5, #0
	ldr r4, _02126160 ; =0x020A3D14
	str r5, [r6, #8]
	mov r0, r4
	str r5, [r6, #0x14]
	strb r5, [r6, #0x12]
	bl FUN_020F591C
	strb r0, [r6, #0x10]
	mov r0, r4
	bl FUN_020F591C
	strb r0, [r6, #0x11]
	mov r1, r5
	add r0, r6, #0x18
	mov r2, #0x3c
	bl MemWrite
	add r0, r6, #0x18
	mov r1, #0x1e
	mov r2, #8
	bl FUN_020F2FA8
	add r0, r6, #0x2c
	mov r5, #0xe
	mov r1, r5
	mov r4, #3
	mov r2, r4
	bl FUN_020F2FA8
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x40
	bl FUN_020F2FA8
	mov r0, r6
	bl FUN_ov115_02124d00
	ldmfd sp!, {r4, r5, r6, pc}
_0212615C: .word 0x0209F5C0
_02126160: .word 0x020A3D14
	arm_func_end FUN_ov115_021260c8

	arm_func_start FUN_ov115_02126164
FUN_ov115_02126164: ; 0x02126164
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _0212618C
	cmp r1, #3
	beq _021261BC
	cmp r1, #4
	beq _021261D8
	ldmfd sp!, {r4, pc}
_0212618C:
	add r0, r4, #0x54
	mov r1, #9
	bl FUN_020F330C
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov115_02124d84
	mov r1, #2
	mov r0, #0
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_021261BC:
	bl FUN_ov115_02125834
	mov r0, r4
	bl FUN_ov115_02125d7c
	ldr r0, _021261E0 ; =0x0209F5C0
	mov r1, #1
	bl FUN_020F672C
	ldmfd sp!, {r4, pc}
_021261D8:
	bl FUN_ov115_02125d7c
	ldmfd sp!, {r4, pc}
_021261E0: .word 0x0209F5C0
	arm_func_end FUN_ov115_02126164

	arm_func_start FUN_ov115_021261e4
FUN_ov115_021261e4: ; 0x021261E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0212620C
	cmp r1, #3
	beq _02126234
	cmp r1, #4
	beq _0212625C
	ldmfd sp!, {r3, r4, r5, pc}
_0212620C:
	bl FUN_ov115_02124e78
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02126234:
	ldr r1, [r4, #0x14]
	cmp r1, #1
	bne _0212624C
	bl FUN_ov115_021254c0
	mov r0, #2
	str r0, [r4, #0x14]
_0212624C:
	ldr r0, _02126284 ; =0x0209F5C0
	mov r1, #1
	bl FUN_020F6A9C
	ldmfd sp!, {r3, r4, r5, pc}
_0212625C:
	ldr r5, _02126288 ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl FUN_020026d0
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_0200562c
	ldmfd sp!, {r3, r4, r5, pc}
_02126284: .word 0x0209F5C0
_02126288: .word 0x020A8440
	arm_func_end FUN_ov115_021261e4

	arm_func_start FUN_ov115_0212628c
FUN_ov115_0212628c: ; 0x0212628C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x54
	mov r1, #9
	bl FUN_020F338C
	mov r0, r4
	bl FUN_ov115_02124da4
	add r0, r4, #0x18
	mov r1, #3
	bl FUN_020F2FE4
	ldr r0, _021262C4 ; =0x0209F5C0
	mov r1, #1
	bl FUN_020F5AF0
	ldmfd sp!, {r4, pc}
_021262C4: .word 0x0209F5C0
	arm_func_end FUN_ov115_0212628c

	arm_func_start FUN_ov115_021262c8
FUN_ov115_021262c8: ; 0x021262C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov115_021262c8

	arm_func_start FUN_ov115_021262dc
FUN_ov115_021262dc: ; 0x021262DC
	bx lr
	arm_func_end FUN_ov115_021262dc
_021262E0:
	.byte 0xF8, 0x63, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0xE8, 0x63, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x98, 0x63, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xA8, 0x63, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0xC8, 0x63, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0xD8, 0x63, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xB8, 0x63, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov115_02126320
FUN_ov115_02126320: ; 0x02126320
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02126368 ; =0x02126380
	str r0, [r4, #4]
	ldr r0, _0212636C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02126370 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02126368: .word 0x02126380
_0212636C: .word 0x00009CCD
_02126370: .word 0x0000EA3C
	arm_func_end FUN_ov115_02126320
	; 0x02126374
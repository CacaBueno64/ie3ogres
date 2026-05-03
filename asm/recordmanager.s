
	.include "/macros/function.inc"
	.include "/include/recordmanager.inc"

    .text
	arm_func_start FUN_0205ff80
FUN_0205ff80: ; 0x0205FF80
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl _ZN14CardControllerC1Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205ff80

	arm_func_start FUN_0205ff98
FUN_0205ff98: ; 0x0205FF98
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl _ZN14CardControllerD1Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205ff98

	arm_func_start FUN_0205ffb0 ; https://decomp.me/scratch/FlRgZ
FUN_0205ffb0: ; 0x0205FFB0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20c
	mov r5, r1
	cmp r0, #0
	sub r4, r2, #0xc
	ldr r6, _020603B8 ; =0x5D588B65
	ldr r7, _020603BC ; =0x00269EC3
	bne _020601A8
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x14
	mov r1, r0, lsl #0x10
	ldr r8, _020603C0 ; =0xB5BDCF5A
	movs r2, r1, lsr #0x10
	movne r1, r8, lsr #0x10
	mulne r1, r2, r1
	movne r1, r1, lsr #0x10
	moveq r12, r8, lsr #0x10
	movne r1, r1, lsl #0x10
	movne r12, r1, lsr #0x10
	add r9, r5, #0x20
	mov r1, r0, lsl #0x10
	add r0, r9, r12
	mov r9, r1, lsr #0x10
	add r3, r5, r4
	add r2, sp, #0
	mov r1, #0
_02060018:
	mla r8, r6, r8, r7
	mov r12, r8, lsr #0x10
	cmp r9, #0
	mulne lr, r12, r9
	movne r12, lr, lsr #0x10
	mov r12, r12, lsl #0x10
	mov r12, r12, lsr #0x10
	add r12, r12, #2
	ldrb lr, [r0, r12]!
	ldrb r12, [r3], #1
	add r1, r1, #1
	cmp r1, #0xc
	strb r12, [r0]
	strb lr, [r2], #1
	blo _02060018
	ldr r8, [sp]
	ldr r0, _020603B8 ; =0x5D588B65
	ldr r1, _020603BC ; =0x00269EC3
	mov r7, #0
	add r2, sp, #0xc
_02060068:
	mla r8, r0, r8, r1
	mov r3, r7, lsl #1
	mov r6, r8, lsr #0x10
	add r7, r7, #1
	strh r6, [r2, r3]
	cmp r7, #0x100
	ldr r9, _020603BC ; =0x00269EC3
	blt _02060068
	cmp r4, #0
	ldr r8, _020603B8 ; =0x5D588B65
	mov r7, #0
	bls _020600FC
	add r6, sp, #0xc
_0206009C:
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #24
	add r0, r1, r0, ror #24
	mov r0, r0, lsl #1
	ldrh r0, [r6, r0]
	mov r1, r4
	mul r0, r4, r0
	add r0, r7, r0, lsr #16
	bl _u32_div_f
	cmp r7, #4
	blt _020600D0
	cmp r7, #0x13
	ble _020600F0
_020600D0:
	cmp r1, #4
	blo _020600E0
	cmp r1, #0x13
	bls _020600F0
_020600E0:
	ldrb r2, [r5, r7]
	ldrb r0, [r5, r1]
	strb r0, [r5, r7]
	strb r2, [r5, r1]
_020600F0:
	add r7, r7, #1
	cmp r7, r4
	blo _0206009C
_020600FC:
	cmp r4, #0
	ldr r3, [sp, #4]
	mov r2, #0
	bls _02060148
_0206010C:
	mla r3, r8, r3, r9
	mov r0, r3, lsr #0x10
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r2, #4
	mov r0, r0, lsl #0x10
	blt _02060130
	cmp r2, #0x13
	ble _0206013C
_02060130:
	ldrb r1, [r5, r2]
	eor r0, r1, r0, lsr #16
	strb r0, [r5, r2]
_0206013C:
	add r2, r2, #1
	cmp r2, r4
	blo _0206010C
_02060148:
	cmp r4, #0
	ldr r3, [sp, #8]
	addls sp, sp, #0x20c
	mov r1, #0
	ldmlsfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0206015C:
	mla r3, r8, r3, r9
	mov r0, r3, lsr #0x10
	mov r0, r0, lsl #3
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	cmp r1, #4
	mov r2, r0, lsr #0x10
	blt _02060184
	cmp r1, #0x13
	ble _02060194
_02060184:
	ldrb r0, [r5, r1]
	orr r0, r0, r0, lsl #8
	mov r0, r0, asr r2
	strb r0, [r5, r1]
_02060194:
	add r1, r1, #1
	cmp r1, r4
	blo _0206015C
	add sp, sp, #0x20c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020601A8:
	bl OS_GetTickLo
	mov r1, #0
	add r8, sp, #0
_020601B4:
	mla r2, r0, r6, r7
	mla r0, r2, r6, r7
	mov r2, r2, lsr #0x10
	mov r3, r0, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r9, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r9, lsl #16
	str r2, [r8, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	ldr r3, _020603BC ; =0x00269EC3
	blt _020601B4
	cmp r4, #0
	ldr r1, [sp, #8]
	ldr r2, _020603B8 ; =0x5D588B65
	mov r0, #0
	bls _02060248
_02060200:
	mla r1, r2, r1, r3
	mov r6, r1, lsr #0x10
	mov r6, r6, lsl #3
	mov r6, r6, lsr #0x10
	mov r6, r6, lsl #0x10
	cmp r0, #4
	mov r6, r6, lsr #0x10
	blt _02060228
	cmp r0, #0x13
	ble _0206023C
_02060228:
	ldrb r7, [r5, r0]
	rsb r6, r6, #8
	orr r7, r7, r7, lsl #8
	mov r6, r7, asr r6
	strb r6, [r5, r0]
_0206023C:
	add r0, r0, #1
	cmp r0, r4
	blo _02060200
_02060248:
	cmp r4, #0
	ldr r7, [sp, #4]
	mov r6, #0
	bls _02060294
_02060258:
	mla r7, r2, r7, r3
	mov r0, r7, lsr #0x10
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r6, #4
	mov r0, r0, lsl #0x10
	blt _0206027C
	cmp r6, #0x13
	ble _02060288
_0206027C:
	ldrb r1, [r5, r6]
	eor r0, r1, r0, lsr #16
	strb r0, [r5, r6]
_02060288:
	add r6, r6, #1
	cmp r6, r4
	blo _02060258
_02060294:
	ldr r9, [sp]
	mov r8, #0
	add r0, sp, #0xc
_020602A0:
	mla r9, r2, r9, r3
	mov r1, r8, lsl #1
	mov r6, r9, lsr #0x10
	add r8, r8, #1
	strh r6, [r0, r1]
	cmp r8, #0x100
	ldr r7, _020603BC ; =0x00269EC3
	blt _020602A0
	subs r9, r4, #1
	ldr r6, _020603B8 ; =0x5D588B65
	bmi _0206032C
	add r8, sp, #0xc
_020602D0:
	mov r1, r9, lsr #0x1f
	rsb r0, r1, r9, lsl #24
	add r0, r1, r0, ror #24
	mov r0, r0, lsl #1
	ldrh r0, [r8, r0]
	mov r1, r4
	mul r0, r4, r0
	add r0, r9, r0, lsr #16
	bl _u32_div_f
	cmp r9, #4
	blt _02060304
	cmp r9, #0x13
	ble _02060324
_02060304:
	cmp r1, #4
	blo _02060314
	cmp r1, #0x13
	bls _02060324
_02060314:
	ldrb r2, [r5, r9]
	ldrb r0, [r5, r1]
	strb r0, [r5, r9]
	strb r2, [r5, r1]
_02060324:
	subs r9, r9, #1
	bpl _020602D0
_0206032C:
	mov r0, r4, lsl #0x10
	mov r3, r0, lsr #0x14
	mov r0, r3, lsl #0x10
	ldr r8, _020603C0 ; =0xB5BDCF5A
	movs r1, r0, lsr #0x10
	movne r0, r8, lsr #0x10
	mulne r0, r1, r0
	movne r0, r0, lsr #0x10
	add r2, r5, r4
	mov r1, r3, lsl #0x10
	moveq r4, r8, lsr #0x10
	movne r0, r0, lsl #0x10
	movne r4, r0, lsr #0x10
	add r0, r5, #0x20
	add r0, r0, r4
	mov r4, r1, lsr #0x10
	add r3, sp, #0
	mov r1, #0
_02060374:
	mla r8, r6, r8, r7
	mov r5, r8, lsr #0x10
	cmp r4, #0
	mulne r9, r5, r4
	movne r5, r9, lsr #0x10
	mov r5, r5, lsl #0x10
	mov r5, r5, lsr #0x10
	add r5, r5, #2
	ldrb r9, [r0, r5]!
	ldrb r5, [r3], #1
	add r1, r1, #1
	strb r9, [r2], #1
	strb r5, [r0]
	cmp r1, #0xc
	blo _02060374
	add sp, sp, #0x20c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020603B8: .word 0x5D588B65
_020603BC: .word 0x00269EC3
_020603C0: .word 0xB5BDCF5A
	arm_func_end FUN_0205ffb0

	arm_func_start FUN_020603c4 ; https://decomp.me/scratch/OH2uE
FUN_020603c4: ; 0x020603C4
	mov r12, #0
	mov r2, #1
_020603CC:
	mov r3, r2, lsl r12
	cmp r1, r3, lsl #3
	bgt _020603FC
	cmp r12, #2
	movgt r12, #2
	mov r1, #1
	mov r1, r1, lsl r12
	sub r2, r1, #1
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	bx lr
_020603FC:
	add r12, r12, #1
	cmp r12, #0x10
	blt _020603CC
	bx lr
	arm_func_end FUN_020603c4

	arm_func_start FUN_0206040c
FUN_0206040c: ; 0x0206040C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	ldrsb r1, [r8]
	mov r9, r0
	cmp r1, #0x2a
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r7, [r9, #0x18]
	ldr r4, [r9, #0x14]
	cmp r7, #0
	mov r5, #0
	ble _02060494
_0206043C:
	ldrb r0, [r4, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	bne _02060484
	ldrh r0, [r4]
	ldr r1, [r9, #0x1c]
	ldr r2, [r9, #0x20]
	mov r0, r0, lsl #0x13
	mov r6, r0, lsr #0x13
	mov r0, r6, lsl #1
	ldrh r0, [r1, r0]
	mov r1, r8
	add r0, r2, r0
	bl strcmp
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02060484:
	add r5, r5, #1
	cmp r5, r7
	add r4, r4, #8
	blt _0206043C
_02060494:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0206040c

	arm_func_start FUN_0206049c
FUN_0206049c: ; 0x0206049C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x170
	mov r10, r0
	mov r0, r2
	cmp r0, #3
	ldr r0, [sp, #0x198]
	str r2, [sp, #8]
	str r0, [sp, #0x198]
	ldr r0, [sp, #0x19c]
	mov r9, r1
	str r3, [sp, #0xc]
	str r0, [sp, #0x19c]
	bne _020604E4
	cmp r0, #0
	ldrne r0, [r0]
	addne r2, r0, #8
	strne r2, [sp, #0x14]
	bne _02060558
_020604E4:
	ldr r2, [r9, #0x14]
	mov r3, #0
	str r2, [sp, #0x14]
	ldr r0, [r9, #0x18]
	mov r4, r3
	cmp r0, #0
	ble _02060540
_02060500:
	ldrb r0, [r2, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	ldreqh r0, [r2]
	moveq r1, r0, lsl #0x13
	ldreq r0, [sp, #8]
	cmpeq r0, r1, lsr #19
	moveq r3, #1
	beq _02060540
	add r2, r2, #8
	str r2, [sp, #0x14]
	ldr r0, [r9, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _02060500
_02060540:
	cmp r3, #0
	addeq sp, sp, #0x170
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r2, #8
	str r2, [sp, #0x14]
_02060558:
	add r0, r9, #0x3c
	bl strlen
	mov r2, r0
	mov r0, r10
	add r1, r9, #0x3c
	bl strncmp
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x10]
	movne r0, #0
	strne r0, [sp, #0x10]
_02060584:
	ldr r8, [sp, #0x14]
	ldrh r3, [r8]
	mov r0, r3, lsl #0x13
	movs r4, r0, lsr #0x13
	ldrneb r0, [r8, #6]
	movne r0, r0, lsl #0x19
	movne r0, r0, lsr #0x19
	cmpne r0, #0x7f
	beq _02060884
	ldrh r2, [r8, #2]
	ldr r1, [r9, #0x1c]
	cmp r4, #2
	mov r2, r2, lsl #1
	ldr r5, [r9, #0x20]
	ldrh r4, [r1, r2]
	bne _020606C0
	mov r1, r3, lsl #0x11
	movs r1, r1, lsr #0x1f
	beq _02060638
	ldr r1, [sp, #0xc]
	ldr r3, [r1, #0xc]
	cmp r3, #0
	beq _020605E8
	cmp r3, r0
	beq _02060604
_020605E8:
	ldr r1, [sp, #0xc]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x14]
	ldrb r1, [r0, #7]
	ldr r0, [sp, #0xc]
	str r1, [r0, #0x10]
	b _02060638
_02060604:
	ldrb r2, [r8, #7]
	ldr r1, [r1, #0x10]
	add r2, r1, r2
	ldr r1, [sp, #0xc]
	cmp r2, r3
	str r2, [r1, #0x10]
	subgt r1, r2, r0
	ldrgt r0, [sp, #0xc]
	strgt r1, [r0, #0x10]
	bgt _02060638
	ldreq r0, [sp, #0xc]
	moveq r1, #0
	streq r1, [r0, #0xc]
_02060638:
	ldr r7, [sp, #0x14]
	ldrh r0, [r7]
	ldrh r6, [r7, #4]
	mov r0, r0, lsl #0x12
	movs r0, r0, lsr #0x1f
	bne _02060874
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _020606AC
	add r0, r9, #0x3c
	bl strlen
	ldrsb r1, [r10, r0]
	add r0, r10, r0
	cmp r1, #0x2e
	bne _020606AC
	add r0, r0, #1
	add r1, r5, r4
	bl strcmp
	cmp r0, #0
	bne _020606AC
	ldr r1, _020608C8 ; =0x020B5BFC
	add sp, sp, #0x170
	str r7, [r1, #8]
	ldr r2, [r9, #0x2c]
	mov r0, #1
	str r2, [r1, #4]
	ldr r2, [r9, #0x38]
	str r2, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020606AC:
	ldrb r0, [r7, #7]
	ldr r1, [r9, #0x38]
	mla r1, r0, r6, r1
_020606B8:
	str r1, [r9, #0x38]
	b _02060874
_020606C0:
	add r2, sp, #0x58
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	str r0, [r2, #0x10]
	str r0, [r2, #0x14]
	ldrh r2, [r8, #2]
	ldr r4, [r9, #0x14]
	add r0, sp, #0x18
	mov r2, r2, lsl #1
	ldrh r3, [r1, r2]
	sub r2, r8, r4
	mov r1, r2, asr #2
	add r2, r2, r1, lsr #29
	add r1, r5, r3
	mov r7, r2, asr #3
	bl strcpy
	ldr r0, [sp, #0x14]
	ldr r5, [r9, #0x1c]
	ldrh r2, [r0, #2]
	add r4, sp, #0x70
	ldr r6, [r9, #0x20]
	mov r3, r2, lsl #1
	ldrh r3, [r5, r3]
	ldr r1, _020608CC ; =0x02090F54
	mov r0, r4
	add r2, r9, #0x3c
	add r3, r6, r3
	bl sprintf
	ldr r0, _020608D0 ; =0x020B5DD8
	ldr r5, [r0, r7, lsl #2]
	cmp r5, #0
	beq _02060780
	mov r0, r4
	bl strlen
	mov r1, r4
	mov r2, r0
	mov r0, r10
	bl strncmp
	cmp r0, #0
	beq _02060780
	ldr r0, [sp, #0x14]
	ldr r1, [r9, #0x38]
	ldrh r0, [r0, #4]
	mla r1, r0, r5, r1
	b _020606B8
_02060780:
	add r1, r9, #0x3c
	add r0, sp, #0xf0
	bl strcpy
	ldr r0, [sp, #0x14]
	mov r5, #0
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _02060868
	ldr r0, [sp, #0x198]
	mov r6, r7, lsl #3
	add r11, r0, #1
_020607AC:
	str r8, [sp, #0x14]
	ldrh r0, [r8, #4]
	add r2, sp, #0xf0
	add r3, sp, #0x18
	cmp r0, #1
	bls _020607D4
	str r5, [sp]
	add r0, r9, #0x3c
	ldr r1, _020608D4 ; =0x02090F5C
	b _020607DC
_020607D4:
	ldr r1, _020608D8 ; =0x02090F68
	add r0, r9, #0x3c
_020607DC:
	bl sprintf
	ldr r4, [r9, #0x38]
	add r1, sp, #0x14
	str r11, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	mov r0, r10
	ldrh r2, [r2]
	mov r1, r9
	add r3, sp, #0x58
	mov r2, r2, lsl #0x13
	mov r2, r2, lsr #0x13
	bl FUN_0206049c
	cmp r0, #0
	addne sp, sp, #0x170
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020608D0 ; =0x020B5DD8
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bne _02060854
	ldr r0, [r9, #0x14]
	ldrh r0, [r0, r6]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x13
	cmp r0, #3
	ldrne r0, [r9, #0x38]
	subne r1, r0, r4
	ldrne r0, _020608D0 ; =0x020B5DD8
	strne r1, [r0, r7, lsl #2]
_02060854:
	add r5, r5, #1
	ldr r0, [sp, #0x14]
	ldrh r0, [r0, #4]
	cmp r5, r0
	blt _020607AC
_02060868:
	add r1, sp, #0xf0
	add r0, r9, #0x3c
	bl strcpy
_02060874:
	ldr r0, [sp, #0x14]
	add r2, r0, #8
	str r2, [sp, #0x14]
	b _02060584
_02060884:
	ldr r0, [sp, #8]
	mov r2, #0
	cmp r0, #3
	bne _020608A0
	ldr r0, [sp, #0x19c]
	cmp r0, #0
	strne r8, [r0]
_020608A0:
	ldr r0, [sp, #0x198]
	cmp r0, #0
	ldreq r0, _020608C8 ; =0x020B5BFC
	streq r2, [r0, #8]
	ldreq r1, [r0, #0x14]
	streq r1, [r0, #4]
	streq r2, [r0]
	mov r0, #0
	add sp, sp, #0x170
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020608C8: .word unk_020B5BFC
_020608CC: .word unk_02090F54
_020608D0: .word unk_020B5DD8
_020608D4: .word unk_02090F5C
_020608D8: .word unk_02090F68
	arm_func_end FUN_0206049c

	arm_func_start FUN_020608dc
FUN_020608dc: ; 0x020608DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _02060950 ; =0x020B5D1C
	mov r5, #0
	add r4, sp, #8
	mov r8, r0
	ldr r7, [r6, #0x38]
	ldr r1, _02060954 ; =0x020B5C20
	mov r0, r6
	str r5, [r6, #0x30]
	str r5, [r6, #0x34]
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r5, [r4, #0x14]
	strb r5, [r6, #0x3c]
	bl FUN_0206040c
	mov r2, r0
	str r5, [sp]
	mov r0, r8
	mov r1, r6
	mov r3, r4
	str r5, [sp, #4]
	bl FUN_0206049c
	str r7, [r6, #0x38]
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02060950: .word unk_020B5D1C
_02060954: .word unk_020B5C20
	arm_func_end FUN_020608dc

	arm_func_start FUN_02060958
FUN_02060958: ; 0x02060958
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [r0, #8]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	bx lr
	arm_func_end FUN_02060958

	arm_func_start FUN_02060974
FUN_02060974: ; 0x02060974
	stmfd sp!, {r3, lr}
	mov r3, #1
	mov r3, r3, lsl r2
	sub r12, r3, #1
	ldr r3, [r0, #0x34]
	ldr lr, [r0, #0x30]
	add r2, r3, r2
	and r1, r1, r12
	orr r1, lr, r1, lsl r3
	str r1, [r0, #0x30]
	str r2, [r0, #0x34]
	cmp r2, #8
	ldmlofd sp!, {r3, pc}
_020609A8:
	ldr r1, [r0, #8]
	add r2, r1, #1
	mov r3, r1
	ldr r1, [r0, #0x30]
	str r2, [r0, #8]
	strb r1, [r3]
	ldr r2, [r0, #0x30]
	ldr r1, [r0, #0x34]
	mov r2, r2, lsr #8
	sub r1, r1, #8
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	cmp r1, #8
	bhs _020609A8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02060974

	arm_func_start FUN_020609e4
FUN_020609e4: ; 0x020609E4
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x34]
	cmp r2, r1
	bhs _02060A2C
_020609F4:
	ldr r2, [r0, #8]
	ldr lr, [r0, #0x30]
	mov r3, r2
	add r2, r2, #1
	str r2, [r0, #8]
	ldrb r12, [r3]
	ldr r3, [r0, #0x34]
	mov r2, r3
	add r2, r2, #8
	orr r3, lr, r12, lsl r3
	str r3, [r0, #0x30]
	str r2, [r0, #0x34]
	cmp r2, r1
	blo _020609F4
_02060A2C:
	mov r2, #1
	mov r3, r2, lsl r1
	ldr lr, [r0, #0x30]
	ldr r2, [r0, #0x34]
	sub r12, r3, #1
	mov r3, lr, lsr r1
	sub r1, r2, r1
	and r2, lr, r12
	str r3, [r0, #0x30]
	str r1, [r0, #0x34]
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020609e4

	arm_func_start FUN_02060a5c
FUN_02060a5c: ; 0x02060A5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r2
	cmp r1, #3
	mov r4, #0
	bne _02060A80
	cmp r9, #0
	addne r9, r9, #8
	bne _02060B04
_02060A80:
	ldr r8, [r10, #0x18]
	ldr r6, [r10, #0x1c]
	mov r0, r1, lsl #1
	cmp r8, #0
	ldr r7, [r10, #0x20]
	ldrh r11, [r6, r0]
	ldr r9, [r10, #0x14]
	mov r5, #0
	ble _02060B00
_02060AA4:
	ldrh r0, [r9]
	mov r0, r0, lsl #0x13
	movs r1, r0, lsr #0x13
	ldreqh r0, [r9, #2]
	cmpeq r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	bne _02060AF0
	mov r0, r1, lsl #1
	ldrh r0, [r6, r0]
	add r1, r7, r11
	add r0, r7, r0
	bl strcmp
	cmp r0, #0
	beq _02060B00
_02060AF0:
	add r5, r5, #1
	cmp r5, r8
	add r9, r9, #8
	blt _02060AA4
_02060B00:
	add r9, r9, #8
_02060B04:
	mov r5, #1
_02060B08:
	ldrh r0, [r9]
	mov r0, r0, lsl #0x13
	movs r1, r0, lsr #0x13
	beq _02060B2C
	ldrb r0, [r9, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	bne _02060B38
_02060B2C:
	subs r5, r5, #1
	beq _02060B68
	b _02060B60
_02060B38:
	cmp r1, #3
	addeq r5, r5, #1
	cmp r1, #2
	moveq r0, r0, lsr #3
	beq _02060B58
	mov r0, r10
	mov r2, r9
	bl FUN_02060a5c
_02060B58:
	cmp r0, r4
	movgt r4, r0
_02060B60:
	add r9, r9, #8
	b _02060B08
_02060B68:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02060a5c

	arm_func_start FUN_02060b70
FUN_02060b70: ; 0x02060B70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x210
	mov r10, r0
	movs r0, r3
	ldr r0, [sp, #0x238]
	str r3, [sp, #0xc]
	str r0, [sp, #0x238]
	ldreq r0, [r10]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmpeq r0, #3
	bne _02060BA8
	ldr r0, _02061514 ; =0x020B5C20
	bl strcpy
_02060BA8:
	ldr r0, [sp, #4]
	ldrsb r1, [r0]
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	cmp r1, #0x2a
	str r0, [sp, #0x30]
	ldr r0, [sp, #8]
	ldr r0, [r0, #4]
	str r0, [sp, #0x28]
	bne _02060BE8
	ldr r0, [sp, #0x238]
	cmp r0, #0
	ldrne r0, [r0]
	addne r2, r0, #8
	strne r2, [sp, #0x34]
	bne _02060C80
_02060BE8:
	ldr r1, [r10, #0x14]
	mov r4, #0
	str r1, [sp, #0x34]
	ldr r0, [r10, #0x18]
	cmp r0, #0
	ble _02060C74
_02060C00:
	ldrh r0, [r1]
	mov r0, r0, lsl #0x13
	movs r2, r0, lsr #0x13
	bne _02060C20
	ldrh r0, [r1, #2]
	cmp r0, #0
	addeq sp, sp, #0x210
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02060C20:
	ldrb r0, [r1, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	bne _02060C58
	ldr r1, [r10, #0x1c]
	mov r0, r2, lsl #1
	ldrh r0, [r1, r0]
	ldr r2, [r10, #0x20]
	ldr r1, [sp, #4]
	add r0, r2, r0
	bl strcmp
	cmp r0, #0
	beq _02060C74
_02060C58:
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r1, r0, #8
	str r1, [sp, #0x34]
	ldr r0, [r10, #0x18]
	cmp r4, r0
	blt _02060C00
_02060C74:
	ldr r0, [sp, #0x34]
	add r2, r0, #8
_02060C7C:
	str r2, [sp, #0x34]
_02060C80:
	ldrh r0, [r2]
	mov r0, r0, lsl #0x13
	movs r1, r0, lsr #0x13
	ldrneh r3, [r2, #2]
	cmpne r3, #0
	ldrneb r0, [r2, #6]
	movne r0, r0, lsl #0x19
	movne r9, r0, lsr #0x19
	cmpne r9, #0x7f
	beq _020614C8
	mov r0, r3, lsl #1
	cmp r1, #2
	ldr r8, [r10, #0x20]
	ldr r3, [r10, #0x1c]
	ldrh r4, [r3, r0]
	bne _020612D8
	ldrb r0, [r2, #7]
	str r0, [sp, #0x10]
	mov r0, r9, lsr #3
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	mov r1, r1, lsl #3
	bl FUN_020603c4
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x30]
	ldrh r0, [r1]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	beq _02060DAC
	ldrb r1, [r1, #6]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	mov r1, r1, lsl #0x19
	mov r1, r1, lsr #0x19
	cmp r0, #0
	beq _02060D1C
	cmp r0, r1
	beq _02060D60
_02060D1C:
	ldr r0, [sp, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x10]
	ldr r1, [r10, #0x28]
	ldr r0, [sp, #0x30]
	add r9, r1, r0
	ldrb r1, [r1, r0]
	ldrb r0, [r9, #1]
	ldrb r2, [r9, #2]
	ldrb r3, [r9, #3]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r2, lsl #16
	orr r1, r0, r3, lsl #24
	ldr r0, [sp, #8]
	str r1, [r0, #0x14]
	b _02060DA0
_02060D60:
	ldr r2, [sp, #8]
	ldr r3, [r2, #0x10]
	ldr r2, [sp, #0x10]
	add r3, r3, r2
	ldr r2, [sp, #8]
	cmp r3, r0
	str r3, [r2, #0x10]
	subgt r1, r3, r1
	movgt r0, r2
	strgt r1, [r0, #0x10]
	bgt _02060DA0
	moveq r1, #0
	moveq r0, r2
	streq r1, [r0, #0xc]
	mov r0, #0
	str r0, [sp, #0x2c]
_02060DA0:
	ldr r0, [sp, #8]
	add r0, r0, #0x14
	b _02060DB8
_02060DAC:
	ldr r1, [r10, #0x28]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
_02060DB8:
	str r0, [sp, #0x20]
	ldr r2, [sp, #0x34]
	ldr r1, [r10]
	ldrh r0, [r2, #4]
	cmp r1, #3
	str r0, [sp, #0x24]
	ldrh r0, [r2]
	mov r0, r0, lsl #0x12
	mov r0, r0, lsr #0x1f
	str r0, [sp, #0x1c]
	cmpeq r0, #0
	bne _02060E2C
	add r3, r8, r4
	add r4, sp, #0x90
	ldr r1, _02061518 ; =0x02090F70
	mov r0, r4
	add r2, r10, #0x3c
	bl sprintf
	mov r0, r4
	bl FUN_020608dc
	ldr r0, _0206151C ; =0x020B5BFC
	ldr r3, [r0]
	ldr r0, [r0, #4]
	and r1, r3, #7
	add r2, r0, r3, lsr #3
	ldrb r0, [r0, r3, lsr #3]
	add r7, r2, #1
	rsb r6, r1, #8
	mov r5, r0, asr r1
_02060E2C:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	ble _020612A8
_02060E40:
	ldr r0, _02061520 ; =0x020B5C18
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	ldrb r8, [r3, #7]
	mla r9, r2, r1, r0
	ldr r0, [r10]
	cmp r0, #1
	ldrb r0, [r3, #6]
	mov r0, r0, lsl #0x18
	mov r4, r0, lsr #0x1f
	bne _02060F70
	cmp r8, #0
	cmpne r4, #0
	moveq r1, #0
	beq _02060EC8
	sub r2, r8, #1
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	and r0, r2, #7
	ldrb r2, [r9, r1, asr #3]
	mov r1, #1
	and r0, r2, r1, lsl r0
	and r1, r0, #0xff
_02060EC8:
	ldrb r0, [r3, #6]
	mov r2, #0
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0
	ble _02060F70
_02060EE0:
	ldrh r0, [r3]
	mov r0, r0, lsl #0x12
	movs r0, r0, lsr #0x1f
	movne r0, #0xff
	bne _02060F20
	ldrb r0, [r3, #7]
	cmp r2, r0
	bgt _02060F1C
	sub r3, r0, r2
	cmp r3, #8
	movge r0, #0
	movlt r0, #0xff
	movlt r0, r0, lsl r3
	andlt r0, r0, #0xff
	b _02060F20
_02060F1C:
	mov r0, #0xff
_02060F20:
	cmp r1, #0
	movne r3, r2, asr #2
	addne r3, r2, r3, lsr #29
	ldrneb r11, [r9, r3, asr #3]
	orrne r0, r11, r0
	strneb r0, [r9, r3, asr #3]
	bne _02060F58
	mvn r0, r0
	and r3, r0, #0xff
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	ldrb r11, [r9, r0, asr #3]
	and r3, r11, r3
	strb r3, [r9, r0, asr #3]
_02060F58:
	add r2, r2, #8
	ldr r3, [sp, #0x34]
	ldrb r0, [r3, #6]
	mov r0, r0, lsl #0x19
	cmp r2, r0, lsr #25
	blt _02060EE0
_02060F70:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _020611B8
	ldr r0, [r10]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020611B8
_02060F8C: ; jump table
	b _02060F9C ; case 0
	b _020611B8 ; case 1
	b _02060FCC ; case 2
	b _020610B0 ; case 3
_02060F9C:
	cmp r8, #0
	ble _020611B8
_02060FA4:
	ldrb r1, [r9], #1
	mov r2, #8
	cmp r8, #8
	movle r2, r8
	mov r0, r10
	bl FUN_02060974
	sub r8, r8, #8
	cmp r8, #0
	bgt _02060FA4
	b _020611B8
_02060FCC:
	ldrh r0, [r3]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	beq _0206100C
	cmp r8, #0
	ble _020611B8
_02060FE4:
	mov r1, #8
	cmp r8, #8
	movle r1, r8
	mov r0, r10
	bl FUN_020609e4
	sub r8, r8, #8
	strb r0, [r9], #1
	cmp r8, #0
	bgt _02060FE4
	b _020611B8
_0206100C:
	ldr r0, [sp, #0x2c]
	cmp r8, #0
	moveq r4, #0
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	ble _020611B8
_02061028:
	mov r11, #8
	cmp r8, #8
	movle r11, r8
	cmp r8, #0
	ble _02061084
	mov r0, r10
	mov r1, r11
	bl FUN_020609e4
	and r0, r0, #0xff
	cmp r4, #0
	beq _0206107C
	cmp r8, #8
	bgt _0206107C
	sub r2, r11, #1
	mov r1, #1
	tst r0, r1, lsl r2
	movne r1, #0xff
	movne r1, r1, lsl r11
	andne r1, r1, #0xff
	orrne r0, r0, r1
	moveq r4, #0
_0206107C:
	sub r8, r8, #8
	b _02061090
_02061084:
	mov r0, #0xff
	cmp r4, #0
	moveq r0, #0
_02061090:
	strb r0, [r9], #1
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _02061028
	b _020611B8
_020610B0:
	ldr r0, _0206151C ; =0x020B5BFC
	ldr r8, _02061520 ; =0x020B5C18
	ldr r0, [r0, #8]
	mov r12, #0
	cmp r0, #0
	ldreq r0, _0206151C ; =0x020B5BFC
	streq r3, [r0, #8]
	moveq r0, r3
	ldrb r11, [r0, #7]
	ldr r0, [sp, #0x2c]
	cmp r11, #0
	moveq r4, #0
	cmp r0, #0
	ble _0206118C
_020610E8:
	cmp r11, #0
	ble _0206116C
	mov r3, #8
	cmp r11, #8
	movle r3, r11
	cmp r6, r3
	bhs _02061118
_02061104:
	ldrb r0, [r7], #1
	orr r5, r5, r0, lsl r6
	add r6, r6, #8
	cmp r6, r3
	blo _02061104
_02061118:
	mov r0, #1
	mov r0, r0, lsl r3
	sub r0, r0, #1
	and r0, r5, r0
	cmp r4, #0
	and r2, r0, #0xff
	beq _0206115C
	cmp r11, #8
	bgt _0206115C
	sub r1, r3, #1
	mov r0, #1
	tst r2, r0, lsl r1
	movne r0, #0xff
	movne r0, r0, lsl r3
	andne r0, r0, #0xff
	orrne r2, r2, r0
	moveq r4, #0
_0206115C:
	mov r5, r5, lsr r3
	sub r6, r6, r3
	sub r11, r11, #8
	b _02061178
_0206116C:
	mov r2, #0xff
	cmp r4, #0
	moveq r2, #0
_02061178:
	ldr r0, [sp, #0x2c]
	add r12, r12, #1
	strb r2, [r8], #1
	cmp r12, r0
	blt _020610E8
_0206118C:
	ldr r0, [sp, #0x2c]
	mov r2, #0
	cmp r0, #0
	ble _020611B8
_0206119C:
	ldr r0, _02061520 ; =0x020B5C18
	ldrb r1, [r0, r2]
	ldr r0, [sp, #0x2c]
	add r2, r2, #1
	cmp r2, r0
	strb r1, [r9], #1
	blt _0206119C
_020611B8:
	ldr r0, [r10]
	cmp r0, #3
	bne _02061260
	ldr r0, _0206151C ; =0x020B5BFC
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #0x2c]
	add r1, r1, r0
	ldr r0, _0206151C ; =0x020B5BFC
	add r2, r1, r1, lsl #5
	str r1, [r0, #0xc]
	ldr r0, _02061524 ; =0x82529317
	umull r1, r0, r2, r0
	sub r1, r2, r0
	add r0, r0, r1, lsr #1
	ldr r1, _0206151C ; =0x020B5BFC
	mov r0, r0, lsr #0xf
	ldr r1, [r1, #0x10]
	cmp r1, r0
	bge _02061238
	ldr r1, _0206151C ; =0x020B5BFC
	cmp r0, #0
	str r0, [r1, #0x10]
	mov r3, #0
	ble _02061238
_02061218:
	mov r1, r3, lsl #1
	add r1, r1, #0x6000000
	add r2, r1, #0x500
	mov r1, #1
	add r3, r3, #1
	strh r1, [r2, #0xc0]
	cmp r3, r0
	blt _02061218
_02061238:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02061260
	ldr r0, _0206151C ; =0x020B5BFC
	ldr r1, [r0]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #7]
	add r1, r1, r0
	ldr r0, _0206151C ; =0x020B5BFC
	str r1, [r0]
_02061260:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldreq r1, [sp, #0x28]
	ldreq r0, [sp, #0x10]
	addeq r0, r1, r0
	streq r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldreq r1, [r10, #0x38]
	ldreq r0, [sp, #0x10]
	addeq r0, r1, r0
	streq r0, [r10, #0x38]
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _02060E40
_020612A8:
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	beq _020614A8
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0x10]
	mov r1, r1, lsr r0
	ldr r0, [sp, #8]
	str r1, [r0, #0x14]
	b _020614A8
_020612D8:
	mov r0, r10
	bl FUN_02060a5c
	mov r8, r0, lsl #3
	ldr r0, [sp, #0x30]
	mov r1, r8
	bl FUN_020603c4
	str r0, [sp, #0x30]
	add r1, sp, #0x78
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x34]
	str r0, [sp, #0x80]
	ldrh r2, [r4, #2]
	add r11, sp, #0x38
	ldr r3, [r10, #0x1c]
	mov r2, r2, lsl #1
	ldrh r2, [r3, r2]
	ldr r1, [r10, #0x20]
	mov r0, r11
	add r1, r1, r2
	bl strcpy
	ldr r0, [sp, #0x34]
	add r9, sp, #0x190
	ldrh r0, [r0, #4]
	add r1, r10, #0x3c
	str r0, [sp, #0x24]
	mov r0, r9
	bl strcpy
	ldr r0, [sp, #0x24]
	mov r2, r9
	cmp r0, #1
	mov r3, r11
	add r0, r10, #0x3c
	ble _02061380
	ldr r1, _02061528 ; =0x02090F78
	b _02061384
_02061380:
	ldr r1, _0206152C ; =0x02090F84
_02061384:
	bl sprintf
	add r1, sp, #0x34
	str r1, [sp]
	ldr r1, [sp, #0x34]
	ldr r3, [sp, #0xc]
	ldrh r1, [r1]
	ldr r9, [r10, #0x1c]
	ldr r11, [r10, #0x20]
	mov r1, r1, lsl #0x13
	mov r1, r1, lsr #0x12
	ldrh r1, [r9, r1]
	mov r0, r10
	add r2, sp, #0x78
	add r3, r3, #1
	add r1, r11, r1
	bl FUN_02060b70
	mov r1, r8
	ldr r8, [sp, #0x7c]
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x78]
	mla r2, r8, r3, r2
	str r2, [sp, #0x28]
	bl FUN_020603c4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	cmp r0, #1
	ble _0206149C
	mov r8, #0
	ldr r0, [sp, #0x34]
	ldrh r0, [r0, #4]
	sub r0, r0, #1
	cmp r0, #0
	ble _02061494
_0206140C:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	str r4, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x30]
	str r0, [sp, #0x80]
	add r0, r8, #1
	str r0, [sp]
	ldr r1, _02061530 ; =0x02090F8C
	add r0, r10, #0x3c
	add r2, sp, #0x190
	add r3, sp, #0x38
	bl sprintf
	add r0, sp, #0x34
	str r0, [sp]
	ldr r1, [sp, #0x34]
	ldr r3, [sp, #0xc]
	ldrh r1, [r1]
	ldr r9, [r10, #0x1c]
	ldr r11, [r10, #0x20]
	mov r1, r1, lsl #0x13
	mov r1, r1, lsr #0x12
	ldrh r1, [r9, r1]
	mov r0, r10
	add r2, sp, #0x78
	add r3, r3, #1
	add r1, r11, r1
	bl FUN_02060b70
	ldr r0, [sp, #0x34]
	add r8, r8, #1
	ldrh r0, [r0, #4]
	sub r0, r0, #1
	cmp r8, r0
	blt _0206140C
_02061494:
	mov r0, #1
	str r0, [sp, #0x24]
_0206149C:
	add r1, sp, #0x190
	add r0, r10, #0x3c
	bl strcpy
_020614A8:
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	mla r0, r2, r1, r0
	str r0, [sp, #0x30]
	add r2, r3, #8
	b _02060C7C
_020614C8:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [r0, #8]
	str r1, [r0, #4]
	ldr r0, [sp, #0x30]
	sub r1, r0, r2
	ldr r0, [sp, #8]
	str r1, [r0]
	ldr r0, [sp, #4]
	ldrsb r0, [r0]
	cmp r0, #0x2a
	addne sp, sp, #0x210
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x238]
	cmp r0, #0
	ldrne r1, [sp, #0x34]
	strne r1, [r0]
	add sp, sp, #0x210
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02061514: .word unk_020B5C20
_02061518: .word unk_02090F70
_0206151C: .word unk_020B5BFC
_02061520: .word unk_020B5C18
_02061524: .word 0x82529317
_02061528: .word unk_02090F78
_0206152C: .word unk_02090F84
_02061530: .word unk_02090F8C
	arm_func_end FUN_02060b70

	arm_func_start FUN_02061534
FUN_02061534: ; 0x02061534
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x90
	mov r4, r0
	ldr r0, [r4, #0xc]
	mov r2, r1
	cmp r0, #0
	addne sp, sp, #0x90
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	cmn r2, #1
	bne _02061590
	ldr r3, _0206161C ; =0x02090F98
	add r5, sp, #0x10
	mov r2, #0xc
_0206156C:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _0206156C
	ldrb r0, [r3]
	strb r0, [r5]
	b _0206159C
_02061590:
	ldr r1, _02061620 ; =0x02090FB4
	add r0, sp, #0x10
	bl sprintf
_0206159C:
	mov r5, #1
	ldr r0, _02061624 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator12setNextArenaEi
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, _02061628 ; =gFileIO
	add r1, sp, #0x10
	str r5, [sp, #0xc]
	add r2, r4, #0xc
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020615E0
	bl OS_Terminate
_020615E0:
	ldr r2, [r4, #0xc]
	mov r0, #1
	str r2, [r4, #0x10]
	ldrh r1, [r2, #8]
	add r3, r2, #0x10
	str r1, [r4, #0x18]
	ldrh r12, [r2, #0xa]
	add r2, r3, r1, lsl #3
	add r1, r2, r12, lsl #1
	str r12, [r4, #0x24]
	str r3, [r4, #0x14]
	str r2, [r4, #0x1c]
	str r1, [r4, #0x20]
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, pc}
_0206161C: .word unk_02090F98
_02061620: .word unk_02090FB4
_02061624: .word gAllocator
_02061628: .word gFileIO
	arm_func_end FUN_02061534

	arm_func_start FUN_0206162c
FUN_0206162c: ; 0x0206162C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	ldr r5, _020616A0 ; =0x020B5C60
	mov r4, r0
	mov r6, r1
	mov r0, r5
	mvn r1, #0
	bl FUN_02061534
	mov r0, #1
	str r0, [r5]
	str r4, [r5, #0x28]
	mov r4, #0
	mov r0, r5
	str r4, [r5, #0x2c]
	bl FUN_02060958
	add r2, sp, #4
	mov r0, r5
	mov r1, r6
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	mov r3, r4
	str r4, [sp]
	bl FUN_02060b70
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020616A0: .word unk_020B5C60
	arm_func_end FUN_0206162c

	arm_func_start FUN_020616a4
FUN_020616a4: ; 0x020616A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	ldr r5, [sp, #0x38]
	mov r7, r1
	cmp r5, #0
	ldreq r5, _02061748 ; =0x020B5C60
	mov r8, r0
	mov r0, r5
	mov r1, r3
	mov r6, r2
	bl FUN_02061534
	mov r4, #0
	str r4, [r5]
	str r8, [r5, #0x28]
	mov r0, r5
	str r7, [r5, #0x2c]
	bl FUN_02060958
	add r2, sp, #4
	mov r0, r5
	mov r1, r6
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	mov r3, r4
	str r4, [sp]
	bl FUN_02060b70
	mov r0, r5
	mov r1, r4
	mov r2, #7
	bl FUN_02060974
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r1, _0206174C ; =0x020B5BFC
	add r0, r0, #7
	mov r0, r0, lsr #3
	str r2, [r1, #0x18]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02061748: .word unk_020B5C60
_0206174C: .word unk_020B5BFC
	arm_func_end FUN_020616a4

	arm_func_start FUN_02061750
FUN_02061750: ; 0x02061750
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	ldr r4, _020617D4 ; =0x020B5C60
	mov r7, r0
	mov r6, r1
	mov r0, r4
	mvn r1, #0
	mov r5, r2
	bl FUN_02061534
	mov r0, #2
	str r0, [r4]
	str r7, [r4, #0x2c]
	mov r0, r4
	str r6, [r4, #0x28]
	bl FUN_02060958
	mov r3, #0
	add r2, sp, #4
	strb r3, [r4, #0x3c]
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
	str r3, [r2, #0x14]
	mov r1, r5
	mov r0, r4
	str r3, [sp]
	bl FUN_02060b70
	ldr r0, [sp, #8]
	add r0, r0, #7
	mov r0, r0, lsr #3
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020617D4: .word unk_020B5C60
	arm_func_end FUN_02061750

	arm_func_start _ZN14CRecordManager10verifySaveEv
_ZN14CRecordManager10verifySaveEv: ; 0x020617D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl FUN_ov16_020f2dac
	mov r5, #0
	mov r1, r5
	add r0, r10, #0x4c
	str r5, [r10, #0x44]
	str r5, [r10, #0x128]
	str r5, [r10, #0x12c]
	bl _ZN14CardController4initE14CARDBackupType
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r5, #0x7e
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x4c
	bl _ZN14CardController4testEv
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r5, #0x7d
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02061B20 ; =0x00005258
	mov r1, r5
	mov r0, r4
	bl _ZN10FileSystem8AllocateEii
	ldr r1, _02061B24 ; =0x020A1640
	cmp r0, #0
	str r0, [r1, #0x230]
	beq _02061858
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
_02061858:
	bl CARD_GetRomHeader
	mov r0, #0
	str r0, [sp]
	ldr r4, _02061B28 ; =0x020B5C60
	ldr r1, [sp]
	mov r0, r4
	mov r2, #0x178
	bl MI_CpuFill8
	ldr r1, [sp]
	mov r0, r4
	sub r1, r1, #1
	bl FUN_02061534
	ldr r0, [r4, #0x10]
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	str r0, [r10, #0x40]
	mov r0, #0x8000
	bl _ZN10FileSystem8AllocateEii
	mov r1, r4
	mov r4, r0
	mov r0, #0x10000
	bl _ZN10FileSystem8AllocateEii
	ldr r11, [sp]
	mov r5, r0
	mov r0, r10
	mov r1, r11
	mov r2, #0x40
	mov r6, r11
	bl MI_CpuFill8
	ldr r7, [sp]
	b _02061A9C
_020618D8:
	add r9, sp, #8
	mov r3, r4
	mov r12, r7, lsl #1
	mov r8, #0
	add r0, r10, #0x4c
	mov r1, r7, lsl #0xf
	mov r2, #0x8000
	strh r8, [r9, r12]
	bl _ZN14CardController4readEmmPv
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r8, #0x7c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _02061B2C ; =0x02090FD0
	add r0, r4, #4
	bl STD_CompareString
	cmp r0, #0
	bne _02061A98
	mov r0, #1
	mov r1, r8
	mov r9, r8
	str r0, [sp]
	b _02061944
_02061934:
	add r0, r1, #0x80
	ldrb r0, [r4, r0]
	add r1, r1, #1
	orr r8, r8, r0
_02061944:
	cmp r1, #0x80
	blt _02061934
	cmp r8, #0
	bne _02061978
	mov r0, r9
	mov r1, r4
	mov r2, #0x80
	bl FUN_0205ffb0
	mov r0, r9
	add r1, r4, #0x100
	mov r2, #0x7f00
	bl MIi_CpuClearFast
	b _02061988
_02061978:
	ldr r2, _02061B30 ; =0x00007F80
	mov r1, r4
	mov r0, #0
	bl FUN_0205ffb0
_02061988:
	mov r9, #0
	mov r0, r9
	mov r1, r5
	mov r2, #0x10000
	bl MIi_CpuClearFast
	ldr r2, _02061B34 ; =0x02090DB4
	mov r0, r4
	ldr r2, [r2, #0x20]
	mov r1, r5
	bl FUN_02061750
	ldr r2, _02061B34 ; =0x02090DB4
	add r0, r4, r0
	ldr r2, [r2, #0x1c]
	str r0, [sp, #4]
	add r1, r5, #0x40
	bl FUN_02061750
	ldr r1, [sp, #4]
	add r0, r1, r0
	ldr r1, _02061B34 ; =0x02090DB4
	ldr r2, [r1, #0x18]
	add r1, r5, #0x1cc
	add r1, r1, #0x5800
	bl FUN_02061750
	ldr r1, [r5, #0x18]
	ldr r0, [r10, #0x40]
	cmp r1, r0
	bne _02061A28
	cmp r8, #0
	bne _02061A10
	mov r0, r10
	mov r1, r5
	mov r2, r9
	mov r3, r9
	b _02061A20
_02061A10:
	ldrb r3, [r5, #0x25]
	mov r0, r10
	mov r1, r5
	add r2, r5, #0x40
_02061A20:
	bl FUN_02061d24
	mov r9, r0
_02061A28:
	cmp r9, #0
	beq _02061A94
	ldr r2, [r5, #0x14]
	cmp r8, #0
	add r0, sp, #8
	addne r11, r11, #1
	orr r3, r2, #0x8000
	mov r1, r7, lsl #1
	strh r3, [r0, r1]
	cmp r7, #0
	bne _02061A78
_02061A54:
	mov r0, r5
	mov r1, r10
	mov r2, #0x40
	bl MI_CpuCopy8
	ldr r1, _02061B38 ; =0x020A17F0
	add r0, r5, #0x40
	mov r2, #0x80
	bl MI_CpuCopy8
	b _02061A98
_02061A78:
	ldrh r0, [sp, #8]
	cmp r0, #0
	beq _02061A90
	sub r0, r0, r2
	tst r0, #0x80
	beq _02061A98
_02061A90:
	b _02061A54
_02061A94:
	add r6, r6, #1
_02061A98:
	add r7, r7, #1
_02061A9C:
	cmp r7, #2
	blt _020618D8
	mov r0, r10
	mov r1, r5
	bl FUN_02062fc8
	mov r0, r10
	mov r1, r4
	bl FUN_02062fc8
	ldr r0, [r10, #0x18]
	cmp r0, #0
	bne _02061AF8
	mov r4, #0x40
	mov r0, r10
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	sub r1, r4, #0x41
	ldr r0, _02061B3C ; =0x020A11DC
	str r1, [r10, #0x14]
	bl FUN_ov131_021423a8
	ldr r0, _02061B40 ; =0x020A0640
	ldr r0, [r0, #0xba4]
	str r0, [r10, #0x20]
_02061AF8:
	ldr r0, [sp]
	cmp r0, #0
	cmpne r6, #0
	movgt r0, #2
	strgtb r0, [r10, #0x24]
	mov r0, r10
	bl FUN_02061b44
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02061B20: .word 0x00005258
_02061B24: .word unk_020A1640
_02061B28: .word unk_020B5C60
_02061B2C: .word unk_02090FD0
_02061B30: .word 0x00007F80
_02061B34: .word unk_02090DB4
_02061B38: .word unk_020A17F0
_02061B3C: .word unk_020A11DC
_02061B40: .word unk_020A0640
	arm_func_end _ZN14CRecordManager10verifySaveEv

	arm_func_start FUN_02061b44
FUN_02061b44: ; 0x02061B44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #0
	ldr r6, _02061B88 ; =0x020B5C60
	mov r9, r0
	mov r5, r7
	mov r4, #0xbc
_02061B5C:
	mla r8, r7, r4, r6
	ldr r1, [r8, #0xc]
	cmp r1, #0
	beq _02061B78
	mov r0, r9
	bl FUN_02062fc8
	str r5, [r8, #0xc]
_02061B78:
	add r7, r7, #1
	cmp r7, #2
	blt _02061B5C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02061B88: .word unk_020B5C60
	arm_func_end FUN_02061b44

	arm_func_start FUN_02061b8c
FUN_02061b8c: ; 0x02061B8C
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0x14]
	add r0, r0, #0x4c
	tst r12, #1
	addne r1, r1, #0x8000
	bl _ZN14CardController4readEmmPv
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02061b8c

	arm_func_start FUN_02061ba8
FUN_02061ba8: ; 0x02061BA8
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0x14]
	add r0, r0, #0x4c
	tst r12, #1
	addne r1, r1, #0x8000
	bl _ZN14CardController5writeEmmPv
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02061ba8

	arm_func_start FUN_02061bc4
FUN_02061bc4: ; 0x02061BC4
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x12c]
	cmp r1, #1
	ldreqb r1, [r0, #0x131]
	cmpeq r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	add r0, r0, #0x4c
	bl _ZN14CardController5readyEv
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02061bc4

	arm_func_start FUN_02061bec
FUN_02061bec: ; 0x02061BEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	add r5, sp, #0
	mov r7, r0
	mov r0, r5
	mov r1, #0xfe
	mov r2, #0x10
	bl MI_CpuFill8
	mov r6, #0
	mov r4, #0x10
_02061C14:
	mov r1, r6, lsl #0xf
	mov r2, r4
	mov r3, r5
	add r0, r7, #0x4c
	add r1, r1, #4
	bl _ZN14CardController5writeEmmPv
	add r6, r6, #1
	cmp r6, #2
	blt _02061C14
	mov r0, #0
	strb r0, [r7, #0x24]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02061bec

	arm_func_start FUN_02061c48
FUN_02061c48: ; 0x02061C48
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl _ZN14CardController4testEv
	cmp r0, #0
	ldrneb r0, [r4, #0x24]
	mvneq r0, #0x7c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02061c48

	arm_func_start FUN_02061c68
FUN_02061c68: ; 0x02061C68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r5, r0
	mov r4, r2
	beq _02061CA4
	ldr r1, _02061D14 ; =0x02090FE0
	add r0, r6, #4
	bl STD_CopyString
	mov r3, #0x40
	mov r0, r5
	add r1, r6, #4
	mov r2, #0x3c
	str r3, [r6, #0x1c]
	bl FUN_02063018
	str r0, [r6]
_02061CA4:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr lr, _02061D18 ; =0x0000598C
	ldr r7, _02061D1C ; =0x19150A04
	ldr r6, _02061D20 ; =0x00004FD8
	mov r0, r5
	add r3, r4, #0x5000
	mov r12, #2
	add r1, r4, #0x80
	sub r2, lr, #0x80
	str r7, [r4, #8]
	str lr, [r4, #0xc]
	str r6, [r4, #0x50]
	str r12, [r3, #0x98c]
	bl FUN_02063018
	add r1, r4, #0x18c
	str r0, [r4, #4]
	mov r0, r5
	mov r2, r6
	add r1, r1, #0x5800
	bl FUN_02063018
	str r0, [r4, #0x4c]
	mov r0, r5
	add r1, r4, #4
	mov r2, #0x7c
	bl FUN_02063018
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02061D14: .word unk_02090FE0
_02061D18: .word 0x0000598C
_02061D1C: .word 0x19150A04
_02061D20: .word 0x00004FD8
	arm_func_end FUN_02061c68

	arm_func_start FUN_02061d24
FUN_02061d24: ; 0x02061D24
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r1
	mov r7, r0
	mov r6, r2
	mov r5, r3
	mov r4, #1
	beq _02061D7C
	ldr r1, _02061E1C ; =0x02090FF0
	add r0, r8, #4
	bl STD_CompareString
	cmp r0, #0
	ldr r0, [r8, #0x1c]
	movne r4, #0
	cmp r0, #0x40
	mov r0, r7
	add r1, r8, #4
	mov r2, #0x3c
	movne r4, #0
	bl FUN_02063018
	ldr r1, [r8]
	cmp r0, r1
	movne r4, #0
_02061D7C:
	cmp r6, #0
	beq _02061E14
	ldr r1, [r6, #8]
	ldr r0, _02061E20 ; =0x19150A04
	mov r2, #0x7c
	cmp r1, r0
	ldr r1, [r6, #0xc]
	ldr r0, _02061E24 ; =0x0000598C
	movne r4, #0
	cmp r1, r0
	ldr r1, [r6, #0x50]
	ldr r0, _02061E28 ; =0x00004FD8
	movne r4, #0
	cmp r1, r0
	mov r0, r7
	add r1, r6, #4
	movne r4, #0
	bl FUN_02063018
	ldr r1, [r6]
	ldr r2, _02061E2C ; =0x0000590C
	cmp r0, r1
	mov r0, r7
	add r1, r6, #0x80
	movne r4, #0
	bl FUN_02063018
	ldr r1, [r6, #4]
	cmp r0, r1
	movne r4, #0
	cmp r5, #0
	beq _02061E14
	add r1, r6, #0x18c
	ldr r2, _02061E28 ; =0x00004FD8
	mov r0, r7
	add r1, r1, #0x5800
	bl FUN_02063018
	ldr r1, [r6, #0x4c]
	cmp r0, r1
	movne r4, #0
_02061E14:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02061E1C: .word unk_02090FF0
_02061E20: .word 0x19150A04
_02061E24: .word 0x0000598C
_02061E28: .word 0x00004FD8
_02061E2C: .word 0x0000590C
	arm_func_end FUN_02061d24

	arm_func_start FUN_02061e30
FUN_02061e30: ; 0x02061E30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldrb r0, [r10, #0x25]
	mov r9, r1
	cmp r0, #0
	bne _02061E5C
	add r0, r9, #0x18c
	ldr r2, _02061FA0 ; =0x00004FD8
	add r0, r0, #0x5800
	mov r1, #0
	bl MI_CpuFill8
_02061E5C:
	ldr r1, [r10, #0x14]
	mov r6, #1
	ldr r0, [r10, #0x40]
	add r1, r1, #1
	str r0, [r10, #0x18]
	ldr r4, _02061FA4 ; =0x02090DB4
	strb r6, [r10, #0x25]
	strb r6, [r10, #0x24]
	str r1, [r10, #0x14]
	ldr r1, [r4, #0x20]
	mov r0, r10
	bl FUN_0206162c
	ldr r1, [r4, #0x1c]
	mov r0, r9
	bl FUN_0206162c
	add r0, r9, #0x18c
	ldr r1, [r4, #0x18]
	add r0, r0, #0x5800
	bl FUN_0206162c
	mov r0, r10
	mov r1, r10
	mov r2, r9
	bl FUN_02061c68
	ldr r1, _02061FA8 ; =0x00007F80
	mov r0, r10
	bl FUN_02062f94
	mov r8, r0
	sub r5, r6, #2
	ldr r2, _02061FA8 ; =0x00007F80
	mov r0, r5
	mov r1, r8
	bl MIi_CpuClearFast
	mov r7, #0
	str r7, [sp]
	ldr r2, [r4, #0x20]
	mov r0, r10
	mov r1, r8
	mov r3, r5
	bl FUN_020616a4
	mov r11, r0
	str r7, [sp]
	ldr r2, [r4, #0x1c]
	mov r0, r9
	add r1, r8, r11
	mov r3, r5
	bl FUN_020616a4
	add r0, r11, r0
	str r7, [sp]
	add r1, r8, r0
	add r0, r9, #0x18c
	ldr r2, [r4, #0x18]
	mov r3, r5
	add r0, r0, #0x5800
	bl FUN_020616a4
	ldr r2, _02061FA8 ; =0x00007F80
	mov r0, r6
	mov r1, r8
	bl FUN_0205ffb0
	ldr r2, _02061FA8 ; =0x00007F80
	mov r0, r10
	mov r1, r7
	mov r3, r8
	bl FUN_02061ba8
	cmp r0, #0
	beq _02061F74
	ldr r1, _02061FAC ; =0x020A17F0
	mov r0, r9
	mov r2, #0x80
	bl MI_CpuCopy8
	b _02061F8C
_02061F74:
	mov r4, #0x80
	ldr r0, _02061FAC ; =0x020A17F0
	mov r1, r7
	mov r2, r4
	bl MI_CpuFill8
	sub r7, r4, #0xfc
_02061F8C:
	mov r0, r10
	mov r1, r8
	bl FUN_02062fc8
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02061FA0: .word 0x00004FD8
_02061FA4: .word unk_02090DB4
_02061FA8: .word 0x00007F80
_02061FAC: .word unk_020A17F0
	arm_func_end FUN_02061e30

	arm_func_start FUN_02061fb0
FUN_02061fb0: ; 0x02061FB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	ldr r7, _02062080 ; =0x00007F80
	mov r8, r1
	mov r1, r7
	mov r4, r0
	bl FUN_02062f94
	mov r6, r0
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl FUN_02061b8c
	cmp r0, #0
	bne _02062008
	mov r0, r4
	mov r1, r6
	bl FUN_02062fc8
	add sp, sp, #0x40
	sub r0, r5, #0x7c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02062008:
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl FUN_0205ffb0
	ldr r2, _02062084 ; =0x0000FFC0
	mov r0, r8
	mov r1, r5
	bl MI_CpuFill8
	ldr r5, _02062088 ; =0x02090DB4
	add r1, sp, #0
	ldr r2, [r5, #0x20]
	mov r0, r6
	bl FUN_02061750
	add r7, r6, r0
	ldr r2, [r5, #0x1c]
	mov r0, r7
	mov r1, r8
	bl FUN_02061750
	add r1, r8, #0x18c
	ldr r2, [r5, #0x18]
	add r0, r7, r0
	add r1, r1, #0x5800
	bl FUN_02061750
	mov r1, r6
	mov r0, r4
	bl FUN_02062fc8
	mov r0, r4
	bl FUN_0206296c
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02062080: .word 0x00007F80
_02062084: .word 0x0000FFC0
_02062088: .word unk_02090DB4
	arm_func_end FUN_02061fb0

	arm_func_start FUN_0206208c
FUN_0206208c: ; 0x0206208C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, #0x4000
	mov r6, r0
	mov r5, #0
	mov r2, #1
	mov r1, r4
	strb r5, [r6, #0x131]
	strb r5, [r6, #0x130]
	str r2, [r6, #0x12c]
	bl FUN_02062f94
	str r0, [r6, #0x128]
	str r4, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	ldr r3, [r6, #0x128]
	ldr r1, _020620F4 ; =FUN_020630d4
	mov r2, r6
	add r0, r6, #0x68
	add r3, r3, #0x4000
	bl OS_CreateThread
	add r0, r6, #0x68
	bl OS_WakeupThreadDirect
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020620F4: .word FUN_020630d4
	arm_func_end FUN_0206208c

	arm_func_start FUN_020620f8
FUN_020620f8: ; 0x020620F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, [r5, #0x12c]
	mov r4, r1
	cmp r0, #1
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, #0x4c
	bl _ZN14CardController4testEv
	cmp r0, #0
	addeq sp, sp, #0x18
	mvneq r0, #0x7c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, _02062688 ; =0x0000FFC0
	mov r0, r4
	mov r1, #0
	str r4, [r5, #0x44]
	bl MI_CpuFill8
	add r7, r4, #0x80
	ldr r8, _0206268C ; =0x020A0700
	mov r3, r7
	add r6, r4, #0x18c
	mov r2, #0x200
_0206215C:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0206215C
	ldr r12, _02062690 ; =0x020A0B00
	add r9, r7, #0x400
	mov r8, #0x13
_02062184:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r8, r8, #1
	bne _02062184
	ldmia r12, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	add r3, r7, #0x13c
	ldr r8, _02062694 ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_020621AC:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020621AC
	ldr r1, _02062698 ; =0x020A0640
	add r0, r7, #0x168
	ldrb r9, [r1, #0x624]
	ldrb r2, [r1, #0x625]
	add r3, r0, #0x400
	ldr r8, _0206269C ; =0x020A0C68
	strb r2, [r7, #0x565]
	strb r9, [r7, #0x564]
	ldrb r9, [r1, #0x626]
	ldrb r0, [r1, #0x627]
	mov r2, #0xa4
	strb r9, [r7, #0x566]
	strb r0, [r7, #0x567]
_020621FC:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020621FC
	ldr r8, _020626A0 ; =0x020A0DB0
	add r3, r7, #0x6b0
	mov r2, #0xa4
_02062224:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062224
	add r0, r7, #0x3f8
	ldr r8, _020626A4 ; =0x020A0EF8
	add r3, r0, #0x400
	mov r2, #0xc9
_02062250:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062250
	add r0, r7, #0x8a
	ldr r8, _020626A8 ; =0x020A108A
	add r3, r0, #0x900
	mov r2, #0xa4
_0206227C:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0206227C
	ldr r2, _020626AC ; =0x020A1140
	add r1, r7, #0x2dc
	ldrh r8, [r2, #0x92]
	ldrh r3, [r2, #0x94]
	add r0, r7, #0xa00
	ldr r12, _020626B0 ; =0x020A11DC
	strh r8, [r0, #0xd2]
	strh r3, [r0, #0xd4]
	ldrh r3, [r2, #0x96]
	ldrh r2, [r2, #0x98]
	add r9, r1, #0x800
	mov r8, #9
	strh r3, [r0, #0xd6]
	strh r2, [r0, #0xd8]
_020622D0:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r8, r8, #1
	bne _020622D0
	ldmia r12, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	add r3, r7, #0x378
	ldr r8, _020626B4 ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_020622F8:
	ldrh r1, [r8]
	ldrh r0, [r8, #2]
	add r8, r8, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020622F8
	ldrh r2, [r8]
	ldr r1, _020626B8 ; =0x020A1240
	add r0, r7, #0xb00
	strh r2, [r3]
	ldrh r3, [r1, #0x72]
	ldrh r2, [r1, #0x74]
	ldr r12, _020626BC ; =0x020A12C0
	add r9, r7, #0xbc0
	strh r3, [r0, #0xb2]
	strh r2, [r0, #0xb4]
	ldrh r3, [r1, #0x76]
	ldrh r2, [r1, #0x78]
	mov r8, #0x34
	strh r3, [r0, #0xb6]
	strh r2, [r0, #0xb8]
	ldrh r2, [r1, #0x7a]
	ldrh r1, [r1, #0x7c]
	strh r2, [r0, #0xba]
	strh r1, [r0, #0xbc]
_02062360:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r8, r8, #1
	bne _02062360
	ldmia r12, {r0, r1}
	stmia r9, {r0, r1}
	ldr r3, _02062698 ; =0x020A0640
	add r1, r7, #0x12
	ldrb r9, [r3, #0xfc8]
	ldrb r8, [r3, #0xfc9]
	ldr r2, _020626C0 ; =0x020A1540
	add r0, r7, #0xf00
	strb r9, [r7, #0xf08]
	strb r8, [r7, #0xf09]
	ldrb lr, [r3, #0xfca]
	ldrb r8, [r3, #0xfcb]
	add r9, r1, #0xf00
	ldr r12, _020626C4 ; =0x020A1612
	strb r8, [r7, #0xf0b]
	strb lr, [r7, #0xf0a]
	ldrb lr, [r3, #0xfcc]
	ldrb r1, [r3, #0xfcd]
	mov r8, #0x1e
	strb lr, [r7, #0xf0c]
	strb r1, [r7, #0xf0d]
	ldrb lr, [r3, #0xfce]
	ldrb r1, [r3, #0xfcf]
	strb lr, [r7, #0xf0e]
	strb r1, [r7, #0xf0f]
	ldrh r1, [r2, #0xd0]
	strh r1, [r0, #0x10]
_020623DC:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r8, r8, #1
	strb r0, [r9, #1]
	strb r1, [r9], #2
	bne _020623DC
	ldr r2, _020626C8 ; =0x020A1640
	add r1, r7, #0x364
	ldrh r3, [r2, #0xe]
	add r0, r7, #0xf00
	add r12, r1, #0xc00
	strh r3, [r0, #0x4e]
	ldrh r3, [r2, #0x10]
	ldr lr, _020626CC ; =0x020A1664
	mov r8, #0x14
	strh r3, [r0, #0x50]
	ldrb r1, [r2, #0x12]
	strb r1, [r7, #0xf52]
	ldrb r1, [r2, #0x13]
	strb r1, [r7, #0xf53]
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0x54]
	ldrh r3, [r2, #0x16]
	ldrh r1, [r2, #0x18]
	strh r3, [r0, #0x56]
	strh r1, [r0, #0x58]
	ldrh r1, [r2, #0x1a]
	strh r1, [r0, #0x5a]
	ldrh r3, [r2, #0x1c]
	ldrh r1, [r2, #0x1e]
	strh r3, [r0, #0x5c]
	strh r1, [r0, #0x5e]
	ldrh r1, [r2, #0x20]
	strh r1, [r0, #0x60]
	ldrb r0, [r2, #0x22]
	strb r0, [r7, #0xf62]
	ldrb r0, [r2, #0x23]
	strb r0, [r7, #0xf63]
_02062478:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r8, r8, #1
	bne _02062478
	ldr r1, [lr]
	add r0, r7, #0xa8
	ldr r9, _020626D0 ; =0x020A17A8
	str r1, [r12]
	add r8, r0, #0x1000
	ldmia r9!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	add r1, r7, #8
	ldr r2, [r9]
	ldr r0, _020626D4 ; =0x020A9C40
	add r1, r1, #0x4800
	str r2, [r8]
	bl FUN_020455b8
	add r1, r7, #0xc4
	ldr r0, _020626D8 ; =0x020AF81C
	add r1, r1, #0x5000
	bl FUN_020444a0
	add r1, r7, #0x8d0
	ldr r0, _020626DC ; =gAudioPlayer
	add r1, r1, #0x5000
	bl _ZN11AudioPlayer18getSoundRecordDataEP16SSoundRecordData
	ldr r0, _020626E0 ; =gLogicThink
	mov r1, r7
	bl FUN_02072b54
	ldr r0, _020626E4 ; =g2DAdventureLogic
	add r1, r7, #0x3e8
	ldr r0, [r0]
	add r1, r1, #0x3800
	bl FUN_020560b4
	ldr r0, _020626E8 ; =g3DGameMapObject
	add r1, r7, #0x208
	ldr r0, [r0]
	add r1, r1, #0x4000
	bl FUN_0205feb8
	ldr r0, _02062698 ; =0x020A0640
	add r1, r6, #0x5800
	bl FUN_02063248
	ldr r2, _020626EC ; =0x020A1740
	add r0, r7, #0x5800
	ldrsh r6, [r2, #0x7c]
	ldr r3, _020626C8 ; =0x020A1640
	add r1, r7, #0x5000
	strh r6, [r0, #0xdc]
	ldrsh r8, [r2, #0x7e]
	ldr r6, _020626F0 ; =0x020A17C1
	add r2, r7, #0xe1
	strh r8, [r0, #0xde]
	ldrb r0, [r3, #0x180]
	add r3, r2, #0x5800
	mov r2, #0x15
	strb r0, [r1, #0x8e0]
_02062554:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062554
	ldrb r2, [r6]
	ldr r1, _02062688 ; =0x0000FFC0
	mov r0, r7
	strb r2, [r3]
	bl DC_FlushRange
	ldr r6, _02062698 ; =0x020A0640
	ldr r9, _020626E0 ; =gLogicThink
	ldr r0, [r6, #0x4dc]
	mov r8, #0
	str r0, [r4, #0x10]
	ldrb r2, [r6, #0x50a]
	mov r0, r9
	mov r1, r8
	strb r2, [r4, #0x14]
	bl FUN_020724c8
	strb r0, [r4, #0x15]
	mov r0, r9
	mov r1, r8
	bl FUN_0204c4cc
	strb r0, [r4, #0x16]
	mov r0, r9
	mov r1, r8
	bl FUN_0204c420
	strb r0, [r4, #0x17]
	mov r0, r9
	bl FUN_ov16_020edf7c
	str r0, [r4, #0x18]
	ldr r1, [r6, #0x4e4]
	add r0, r6, #0x400
	str r1, [r4, #0x48]
	ldrsb r2, [r0, #0xec]
	ldr r1, _02062690 ; =0x020A0B00
	add r0, r4, #0x1c
	strb r2, [r4, #0x45]
	str r8, [r4, #0x54]
	bl STD_CopyString
	add r1, r7, #0x2ec
	add r0, r4, #0x34
	add r1, r1, #0x3800
	bl STD_CopyString
	mov r0, r8
	add r1, r4, #0x58
	mov r2, #8
	bl MIi_CpuClear16
	add r0, r7, #0x1e8
	add r12, r0, #0x4000
	add r7, sp, #0
	ldmia r12!, {r0, r1, r2, r3}
	mov r6, r7
	stmia r7!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1}
	stmia r7, {r0, r1}
	ldr r7, _020626E4 ; =g2DAdventureLogic
	b _02062664
_02062648:
	ldr r1, [r6, r8, lsl #2]
	ldr r0, [r7]
	bl FUN_020552cc
	add r1, r4, r8, lsl #1
	ldrh r0, [r0, #0x20]
	add r8, r8, #1
	strh r0, [r1, #0x58]
_02062664:
	ldrsb r0, [sp, #0x14]
	cmp r8, r0
	blt _02062648
	mov r1, #0
	mov r0, r5
	str r1, [r5, #0x48]
	bl FUN_0206208c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02062688: .word 0x0000FFC0
_0206268C: .word unk_020A0700
_02062690: .word unk_020A0B00
_02062694: .word unk_020A0C3C
_02062698: .word unk_020A0640
_0206269C: .word unk_020A0C68
_020626A0: .word unk_020A0DB0
_020626A4: .word unk_020A0EF8
_020626A8: .word unk_020A108A
_020626AC: .word unk_020A1140
_020626B0: .word unk_020A11DC
_020626B4: .word unk_020A1278
_020626B8: .word unk_020A1240
_020626BC: .word unk_020A12C0
_020626C0: .word unk_020A1540
_020626C4: .word unk_020A1612
_020626C8: .word unk_020A1640
_020626CC: .word unk_020A1664
_020626D0: .word unk_020A17A8
_020626D4: .word unk_020A9C40
_020626D8: .word unk_020AF81C
_020626DC: .word gAudioPlayer
_020626E0: .word gLogicThink
_020626E4: .word g2DAdventureLogic
_020626E8: .word g3DGameMapObject
_020626EC: .word unk_020A1740
_020626F0: .word unk_020A17C1
	arm_func_end FUN_020620f8

	arm_func_start FUN_020626f4
FUN_020626f4: ; 0x020626F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x12c]
	mov r4, r2
	cmp r0, #1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x4c
	bl _ZN14CardController4testEv
	cmp r0, #0
	mvneq r0, #0x7c
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _02062798 ; =0x0000FFC0
	add r0, r4, #0x80
	str r4, [r5, #0x44]
	bl DC_FlushRange
	ldr r1, _0206279C ; =0x020A1640
	ldr r0, _020627A0 ; =0x020A0640
	ldr r3, [r1, #0x248]
	ldrb r2, [r4, #0x4ca]
	ldr r1, [r4, #0x494]
	str r3, [r4, #0x10]
	strb r2, [r4, #0x14]
	str r1, [r4, #0x18]
	ldr r1, [r0, #0x4e4]
	add r0, r0, #0x400
	str r1, [r4, #0x48]
	ldrsb r2, [r0, #0xec]
	add r0, r4, #0x1c
	add r1, r4, #0x480
	strb r2, [r4, #0x45]
	bl STD_CopyString
	add r1, r4, #0x36c
	add r0, r4, #0x34
	add r1, r1, #0x3800
	bl STD_CopyString
	mov r1, #1
	mov r0, r5
	str r1, [r5, #0x48]
	bl FUN_0206208c
	ldmfd sp!, {r3, r4, r5, pc}
_02062798: .word 0x0000FFC0
_0206279C: .word unk_020A1640
_020627A0: .word unk_020A0640
	arm_func_end FUN_020626f4

	arm_func_start FUN_020627a4
FUN_020627a4: ; 0x020627A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x128]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x68
	bl OS_IsThreadTerminated
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x128]
	mov r0, r4
	bl FUN_02062fc8
	ldr r0, [r4, #0x12c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x14]
	str r1, [r4, #0x128]
	subne r0, r0, #1
	strne r0, [r4, #0x14]
	ldr r0, [r4, #0x12c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020627a4

	arm_func_start FUN_02062800
FUN_02062800: ; 0x02062800
	stmfd sp!, {r3, lr}
	ldr r0, _02062818 ; =0x020A17F0
	mov r2, #0x80
	bl MI_CpuCopy8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02062818: .word unk_020A17F0
	arm_func_end FUN_02062800

	arm_func_start FUN_0206281c
FUN_0206281c: ; 0x0206281C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, #0x4000
	mov r6, r0
	mov r2, #1
	mov r5, #0
	mov r1, r4
	strb r2, [r6, #0x131]
	strb r5, [r6, #0x130]
	str r2, [r6, #0x12c]
	bl FUN_02062f94
	str r0, [r6, #0x128]
	str r4, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	ldr r3, [r6, #0x128]
	ldr r1, _02062884 ; =FUN_020630d4
	mov r2, r6
	add r0, r6, #0x68
	add r3, r3, #0x4000
	bl OS_CreateThread
	add r0, r6, #0x68
	bl OS_WakeupThreadDirect
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02062884: .word FUN_020630d4
	arm_func_end FUN_0206281c

	arm_func_start FUN_02062888
FUN_02062888: ; 0x02062888
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x12c]
	mov r4, r1
	cmp r0, #1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x4c
	bl _ZN14CardController4testEv
	cmp r0, #0
	mvneq r0, #0x7c
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	str r4, [r5, #0x44]
	mvneq r0, #0x78
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	mov r0, r5
	str r1, [r5, #0x48]
	bl FUN_0206281c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02062888

	arm_func_start FUN_020628dc
FUN_020628dc: ; 0x020628DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x12c]
	mov r4, r2
	cmp r0, #1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x4c
	bl _ZN14CardController4testEv
	cmp r0, #0
	mvneq r0, #0x7c
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	str r4, [r5, #0x44]
	str r1, [r5, #0x48]
	bl FUN_0206281c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020628dc

	arm_func_start FUN_02062924
FUN_02062924: ; 0x02062924
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x128]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x68
	bl OS_IsThreadTerminated
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x128]
	mov r0, r4
	bl FUN_02062fc8
	mov r1, #0
	ldr r0, [r4, #0x12c]
	str r1, [r4, #0x128]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02062924

	arm_func_start FUN_0206296c
FUN_0206296c: ; 0x0206296C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r4, #0x4c
	bl _ZN14CardController5readyEv
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r8, [r4, #0x44]
	ldr r1, _02062F18 ; =0x0000FFC0
	mov r0, r8
	add r7, r8, #0x80
	add r5, r8, #0x18c
	bl DC_FlushRange
	mov r6, #0
	ldrb r3, [r4, #0x25]
	mov r0, r4
	mov r1, r6
	mov r2, r8
	bl FUN_02061d24
	cmp r0, #0
	streq r6, [r4, #0x44]
	streqb r6, [r4, #0x24]
	streqb r6, [r4, #0x25]
	subeq r0, r6, #0x7a
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r7, #0x5000
	ldr r1, [r0, #0x444]
	add r0, r7, #0x44
	cmp r1, #0
	add r1, r0, #0x5400
	ldreq r0, [r1, #4]
	add r2, r7, #0xd4
	cmpeq r0, #0
	moveq r0, #2
	stmeqia r1, {r0, r6}
	add r0, r7, #0xd30
	ldr r1, _02062F1C ; =0x02091000
	add r0, r0, #0x4000
	add r6, r2, #0x5400
	bl strcmp
	cmp r0, #0
	beq _02062A38
	ldr r0, [r6]
	cmp r0, #0
	ldreq r0, [r6, #4]
	cmpeq r0, #0
	bne _02062A48
_02062A38:
	mov r1, #1
	ldr r0, _02062F20 ; =0x01F76394
	str r1, [r6]
	str r0, [r6, #4]
_02062A48:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _02062EF8
	ldr r3, _02062F24 ; =0x020A0700
	mov r6, r7
	mov r2, #0x200
_02062A60:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062A60
	ldr r9, _02062F28 ; =0x020A0B00
	add r12, r7, #0x400
	mov r6, #0x13
_02062A88:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02062A88
	ldmia r12, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	add r3, r7, #0x13c
	ldr r6, _02062F2C ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_02062AB0:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [r6, #1]
	strb r1, [r6], #2
	bne _02062AB0
	ldrb r3, [r7, #0x564]
	ldrb r2, [r7, #0x565]
	ldr r1, _02062F30 ; =0x020A0640
	add r0, r7, #0x168
	strb r3, [r1, #0x624]
	strb r2, [r1, #0x625]
	ldrb r9, [r7, #0x566]
	ldrb r2, [r7, #0x567]
	ldr r3, _02062F34 ; =0x020A0C68
	add r6, r0, #0x400
	strb r9, [r1, #0x626]
	strb r2, [r1, #0x627]
	mov r2, #0xa4
_02062B00:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062B00
	ldr r3, _02062F38 ; =0x020A0DB0
	add r6, r7, #0x6b0
	mov r2, #0xa4
_02062B28:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062B28
	add r0, r7, #0x3f8
	ldr r3, _02062F3C ; =0x020A0EF8
	add r6, r0, #0x400
	mov r2, #0xc9
_02062B54:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062B54
	add r0, r7, #0x8a
	ldr r3, _02062F40 ; =0x020A108A
	add r6, r0, #0x900
	mov r2, #0xa4
_02062B80:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062B80
	add r0, r7, #0xa00
	ldrh r6, [r0, #0xd2]
	ldrh r3, [r0, #0xd4]
	ldr r2, _02062F44 ; =0x020A1140
	add r1, r7, #0x2dc
	strh r6, [r2, #0x92]
	strh r3, [r2, #0x94]
	ldrh r3, [r0, #0xd6]
	ldrh r0, [r0, #0xd8]
	ldr r9, _02062F48 ; =0x020A11DC
	add r12, r1, #0x800
	strh r3, [r2, #0x96]
	strh r0, [r2, #0x98]
	mov r6, #9
_02062BD4:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02062BD4
	ldmia r12, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	add r3, r7, #0x378
	ldr r6, _02062F4C ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_02062BFC:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	strh r0, [r6, #2]
	strh r1, [r6], #4
	bne _02062BFC
	ldrh r2, [r3]
	add r0, r7, #0xb00
	ldr r1, _02062F50 ; =0x020A1240
	strh r2, [r6]
	ldrh r3, [r0, #0xb2]
	ldrh r2, [r0, #0xb4]
	ldr r9, _02062F54 ; =0x020A12C0
	add r12, r7, #0xbc0
	strh r3, [r1, #0x72]
	strh r2, [r1, #0x74]
	ldrh r3, [r0, #0xb6]
	ldrh r2, [r0, #0xb8]
	mov r6, #0x34
	strh r3, [r1, #0x76]
	strh r2, [r1, #0x78]
	ldrh r2, [r0, #0xba]
	ldrh r0, [r0, #0xbc]
	strh r2, [r1, #0x7a]
	strh r0, [r1, #0x7c]
_02062C64:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02062C64
	ldmia r12, {r0, r1}
	stmia r9, {r0, r1}
	ldrb r2, [r7, #0xf08]
	ldrb r0, [r7, #0xf09]
	ldr r3, _02062F30 ; =0x020A0640
	add r1, r7, #0x12
	strb r2, [r3, #0xfc8]
	strb r0, [r3, #0xfc9]
	ldrb r9, [r7, #0xf0a]
	ldrb r6, [r7, #0xf0b]
	add lr, r1, #0xf00
	add r0, r7, #0xf00
	strb r9, [r3, #0xfca]
	strb r6, [r3, #0xfcb]
	ldrb r9, [r7, #0xf0c]
	ldrb r6, [r7, #0xf0d]
	ldr r2, _02062F58 ; =0x020A1540
	ldr r12, _02062F5C ; =0x020A1612
	strb r9, [r3, #0xfcc]
	strb r6, [r3, #0xfcd]
	ldrb r9, [r7, #0xf0e]
	ldrb r1, [r7, #0xf0f]
	mov r6, #0x1e
	strb r9, [r3, #0xfce]
	strb r1, [r3, #0xfcf]
	ldrh r0, [r0, #0x10]
	strh r0, [r2, #0xd0]
_02062CE0:
	ldrb r1, [lr]
	ldrb r0, [lr, #1]
	add lr, lr, #2
	subs r6, r6, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _02062CE0
	add r0, r7, #0xf00
	ldrh r3, [r0, #0x4e]
	ldr r2, _02062F60 ; =0x020A1640
	add r1, r7, #0x364
	strh r3, [r2, #0xe]
	ldrh r3, [r0, #0x50]
	add lr, r1, #0xc00
	ldr r12, _02062F64 ; =0x020A1664
	strh r3, [r2, #0x10]
	ldrb r1, [r7, #0xf52]
	mov r6, #0x14
	strb r1, [r2, #0x12]
	ldrb r1, [r7, #0xf53]
	strb r1, [r2, #0x13]
	ldrh r1, [r0, #0x54]
	strh r1, [r2, #0x14]
	ldrh r3, [r0, #0x56]
	ldrh r1, [r0, #0x58]
	strh r3, [r2, #0x16]
	strh r1, [r2, #0x18]
	ldrh r1, [r0, #0x5a]
	strh r1, [r2, #0x1a]
	ldrh r3, [r0, #0x5c]
	ldrh r1, [r0, #0x5e]
	strh r3, [r2, #0x1c]
	strh r1, [r2, #0x1e]
	ldrh r0, [r0, #0x60]
	strh r0, [r2, #0x20]
	ldrb r0, [r7, #0xf62]
	strb r0, [r2, #0x22]
	ldrb r0, [r7, #0xf63]
	strb r0, [r2, #0x23]
_02062D7C:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02062D7C
	ldr r1, [lr]
	add r0, r7, #0xa8
	add r6, r0, #0x1000
	str r1, [r12]
	ldr lr, _02062F68 ; =0x020A17A8
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r0, [r6]
	ldr r6, _02062F60 ; =0x020A1640
	str r0, [lr]
	ldr r1, [r7, #0x41c]
	add r0, r7, #0x5800
	str r1, [r6, #0x248]
	ldrsh r1, [r0, #0xdc]
	ldr r3, _02062F6C ; =0x020A1740
	add r2, r7, #0x5000
	strh r1, [r3, #0x7c]
	ldrsh r12, [r0, #0xde]
	add r0, r7, #0xe1
	ldr r1, _02062F70 ; =0x020A17C1
	strh r12, [r3, #0x7e]
	ldrb r2, [r2, #0x8e0]
	add r12, r0, #0x5800
	mov r3, #0x15
	strb r2, [r6, #0x180]
_02062DF0:
	ldrb r2, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r3, r3, #1
	strb r0, [r1, #1]
	strb r2, [r1], #2
	bne _02062DF0
	ldrb r6, [r12]
	add r2, r7, #8
	ldr r3, _02062F60 ; =0x020A1640
	ldr r0, _02062F74 ; =0x020A9C40
	strb r6, [r1]
	mov r6, #0
	add r1, r2, #0x4800
	strb r6, [r3, #0x245]
	bl FUN_0204576c
	add r1, r7, #0xc4
	ldr r0, _02062F78 ; =0x020AF81C
	add r1, r1, #0x5000
	bl FUN_020444dc
	ldr r0, _02062F30 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02062E60
	add r1, r7, #0x8d0
	ldr r0, _02062F7C ; =gAudioPlayer
	add r1, r1, #0x5000
	bl _ZN11AudioPlayer19loadSoundRecordDataEP16SSoundRecordData
_02062E60:
	ldr r0, _02062F80 ; =gLogicThink
	mov r1, r7
	bl FUN_02072dcc
	ldr r0, _02062F84 ; =g2DAdventureLogic
	add r1, r7, #0x3e8
	ldr r0, [r0]
	add r1, r1, #0x3800
	bl FUN_02055d68
	ldr r0, _02062F88 ; =g3DGameMapObject
	add r1, r7, #0x208
	ldr r0, [r0]
	add r1, r1, #0x4000
	bl FUN_0205fee0
	ldr r6, _02062F30 ; =0x020A0640
	add r1, r5, #0x5800
	mov r0, r6
	bl FUN_020630e8
	ldr r1, _02062F60 ; =0x020A1640
	ldr r0, _02062F8C ; =0x02099E8E
	ldrb r1, [r1, #0x180]
	strb r1, [r0]
	ldrb r0, [r6, #0xb92]
	cmp r0, #0
	bne _02062EC8
	mov r0, #2
	b _02062ED4
_02062EC8:
	cmp r0, #1
	bne _02062ED8
	mov r0, #7
_02062ED4:
	bl DSE_SsdSetOutputMode
_02062ED8:
	ldr r5, _02062F44 ; =0x020A1140
	ldr r6, _02062F7C ; =gAudioPlayer
	ldrh r1, [r5, #0x94]
	mov r0, r6
	bl _ZN11AudioPlayer12setBgmVolumeEt
	ldrh r1, [r5, #0x96]
	mov r0, r6
	bl _ZN11AudioPlayer15setEffectVolumeEt
_02062EF8:
	ldr r1, _02062F90 ; =0x020A17F0
	mov r5, #0
	mov r0, r8
	mov r2, #0x80
	str r5, [r4, #0x44]
	bl MI_CpuCopy8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02062F18: .word 0x0000FFC0
_02062F1C: .word unk_02091000
_02062F20: .word 0x01F76394
_02062F24: .word unk_020A0700
_02062F28: .word unk_020A0B00
_02062F2C: .word unk_020A0C3C
_02062F30: .word unk_020A0640
_02062F34: .word unk_020A0C68
_02062F38: .word unk_020A0DB0
_02062F3C: .word unk_020A0EF8
_02062F40: .word unk_020A108A
_02062F44: .word unk_020A1140
_02062F48: .word unk_020A11DC
_02062F4C: .word unk_020A1278
_02062F50: .word unk_020A1240
_02062F54: .word unk_020A12C0
_02062F58: .word unk_020A1540
_02062F5C: .word unk_020A1612
_02062F60: .word unk_020A1640
_02062F64: .word unk_020A1664
_02062F68: .word unk_020A17A8
_02062F6C: .word unk_020A1740
_02062F70: .word unk_020A17C1
_02062F74: .word unk_020A9C40
_02062F78: .word unk_020AF81C
_02062F7C: .word gAudioPlayer
_02062F80: .word gLogicThink
_02062F84: .word g2DAdventureLogic
_02062F88: .word g3DGameMapObject
_02062F8C: .word unk_02099E8E
_02062F90: .word unk_020A17F0
	arm_func_end FUN_0206296c

	arm_func_start FUN_02062f94
FUN_02062f94: ; 0x02062F94
	stmfd sp!, {r4, lr}
	ldr r0, _02062FC4 ; =gAllocator
	mov r4, r1
	mov r2, #0x10
	mov r3, #1
	bl _ZN10CAllocator8allocateEmii
	mov r2, r4
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02062FC4: .word gAllocator
	arm_func_end FUN_02062f94

	arm_func_start FUN_02062fc8
FUN_02062fc8: ; 0x02062FC8
	ldr r0, _02062FD4 ; =gAllocator
	ldr r12, _02062FD8 ; =_ZN10CAllocator10deallocateEPv
	bx r12
_02062FD4: .word gAllocator
_02062FD8: .word _ZN10CAllocator10deallocateEPv
	arm_func_end FUN_02062fc8

	arm_func_start FUN_02062fdc
FUN_02062fdc: ; 0x02062FDC
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	cmp r1, #0
	ble _02063010
	sub r2, r1, #1
	mov r12, #1
_02062FF8:
	tst r0, r12, lsl r4
	subne r3, r2, r4
	add r4, r4, #1
	orrne lr, lr, r12, lsl r3
	cmp r4, r1
	blt _02062FF8
_02063010:
	mov r0, lr
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02062fdc

	arm_func_start FUN_02063018
FUN_02063018: ; 0x02063018
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r2
	cmp r4, #0
	mov r5, r1
	mvn r9, #0
	mov r10, #0
	cmpgt r4, #0
	ble _02063080
	ldr r6, _0206309C ; =0x04C11DB7
	mov r8, #8
	mov r7, r10
_02063044:
	ldrb r0, [r5]
	mov r1, r8
	bl FUN_02062fdc
	mov r1, r7
	eor r9, r9, r0, lsl #24
_02063058:
	tst r9, #0x80000000
	eorne r9, r6, r9, lsl #1
	add r1, r1, #1
	moveq r9, r9, lsl #1
	cmp r1, #8
	blt _02063058
	add r10, r10, #1
	cmp r10, r4
	add r5, r5, #1
	blt _02063044
_02063080:
	mov r4, #0x20
	mov r0, r9
	mov r1, r4
	bl FUN_02062fdc
	sub r1, r4, #0x21
	eor r0, r0, r1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206309C: .word 0x04C11DB7
	arm_func_end FUN_02063018

	arm_func_start FUN_020630a0
FUN_020630a0: ; 0x020630A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x131]
	cmp r1, #0
	ldr r1, [r4, #0x44]
	bne _020630C0
	bl FUN_02061e30
	b _020630C4
_020630C0:
	bl FUN_02061fb0
_020630C4:
	str r0, [r4, #0x12c]
	mov r0, #0
	str r0, [r4, #0x44]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020630a0

	arm_func_start FUN_020630d4
FUN_020630d4: ; 0x020630D4
	ldr r12, _020630DC ; =FUN_020630a0
	bx r12
_020630DC: .word FUN_020630a0
	arm_func_end FUN_020630d4

	arm_func_start FUN_020630e0
FUN_020630e0: ; 0x020630E0
	ldr r0, [r0, #0x20]
	bx lr
	arm_func_end FUN_020630e0

	arm_func_start FUN_020630e8
FUN_020630e8: ; 0x020630E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r5, r1
	mov r11, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r5]
	cmp r2, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r11, #0x1000
	ldr r1, [r0, #0x230]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r2, [r1]
	ldrh r2, [r5, #4]
	ldr r1, [r0, #0x230]
	add r8, r5, #8
	strh r2, [r1, #4]
	ldr r0, [r0, #0x230]
	mov r4, #0
	add r7, r0, #8
_02063134:
	mov r0, r8
	mov r1, r7
	mov r2, #0x4c
	bl MI_CpuCopy8
	ldr r6, _02063240 ; =0x02090DB4
	ldr r0, [r6, #0x24]
	bl STD_GetStringLength
	add r3, r8, #0x4c
	add r9, r7, #0x4c
	mov lr, #0
	mov r1, #3
	mov r2, #0x20
_02063164:
	ldrb r10, [r3, lr]
	cmp r10, #0
	bne _02063188
	mov r1, lr, lsl #1
	mov r0, r9
	rsb r2, r1, #0x80
	mov r1, #0
	bl MI_CpuFill8
	b _020631D0
_02063188:
	cmp r10, #1
	streqb r2, [r9], #1
	beq _020631C4
	mov r10, r10, lsl #0x11
	cmp r0, r10, lsr #16
	mov r12, r10, lsr #0x10
	ldr r10, [r6, #0x24]
	movle r12, r1
	ldrsb r10, [r10, r12]
	strb r10, [r9]
	ldr r10, [r6, #0x24]
	add r10, r10, r12
	ldrsb r10, [r10, #1]
	strb r10, [r9, #1]
	add r9, r9, #2
_020631C4:
	add lr, lr, #1
	cmp lr, #0x40
	blo _02063164
_020631D0:
	ldr r2, _02063244 ; =0x0000073C
	add r0, r8, #0x8c
	add r1, r7, #0xcc
	bl MI_CpuCopy8
	add r0, r7, #8
	add r1, r8, #0x3c8
	add r4, r4, #1
	cmp r4, #0xa
	add r7, r0, #0x800
	add r8, r1, #0x400
	blt _02063134
	add r0, r11, #0x1000
	ldr r1, [r0, #0x230]
	add r0, r5, #0x1d8
	add r1, r1, #0x58
	add r0, r0, #0x4c00
	add r1, r1, #0x5000
	mov r2, #0x190
	bl MI_CpuCopy8
	add r0, r11, #0x1000
	ldr r1, [r0, #0x230]
	add r0, r5, #0x368
	add r1, r1, #0x1e8
	add r0, r0, #0x4c00
	add r1, r1, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02063240: .word unk_02090DB4
_02063244: .word 0x0000073C
	arm_func_end FUN_020630e8

	arm_func_start FUN_02063248
FUN_02063248: ; 0x02063248
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	str r0, [sp]
	movs r0, r1
	ldrne r0, [sp]
	str r1, [sp, #4]
	addne r1, r0, #0x1000
	ldrne r0, [r1, #0x230]
	cmpne r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r0]
	ldr r0, [sp, #4]
	str r2, [r0]
	ldr r2, [r1, #0x230]
	add r4, r0, #8
	mov r0, #0
	str r0, [sp, #8]
	ldrh r2, [r2, #4]
	ldr r0, [sp, #4]
	strh r2, [r0, #4]
	ldr r0, [r1, #0x230]
	add r11, r0, #8
_020632A4:
	mov r0, r11
	mov r1, r4
	mov r2, #0x4c
	bl MI_CpuCopy8
	ldr r0, _020633F8 ; =0x02090DB4
	ldr r0, [r0, #0x24]
	bl STD_GetStringLength
	add r0, r0, r0, lsr #31
	mov r12, r0, asr #1
	add r3, r11, #0x4c
	add r0, r4, #0x4c
	mov r5, #0
	mov r1, #3
	mov r2, #1
_020632DC:
	ldrsb r8, [r3]
	cmp r8, #0
	bne _020632F8
	rsb r2, r5, #0x40
	mov r1, #0
	bl MI_CpuFill8
	b _02063360
_020632F8:
	cmp r8, #0x20
	moveq lr, r2
	addeq r3, r3, #1
	beq _02063350
	cmp r12, #0
	mov lr, r1
	mov r6, #0
	ble _0206334C
	ldr r7, _020633F8 ; =0x02090DB4
	ldr r7, [r7, #0x24]
_02063320:
	mov r9, r6, lsl #1
	ldrsb r9, [r7, r9]
	add r10, r7, r6, lsl #1
	cmp r8, r9
	ldreqsb r9, [r10, #1]
	ldreqsb r10, [r3, #1]
	cmpeq r10, r9
	andeq lr, r6, #0xff
	add r6, r6, #1
	cmp r6, r12
	blt _02063320
_0206334C:
	add r3, r3, #2
_02063350:
	strb lr, [r0], #1
	add r5, r5, #1
	cmp r5, #0x40
	blo _020632DC
_02063360:
	ldr r2, _020633FC ; =0x0000073C
	add r0, r11, #0xcc
	add r1, r4, #0x8c
	bl MI_CpuCopy8
	ldr r0, [sp, #8]
	add r1, r11, #8
	add r0, r0, #1
	add r2, r4, #0x3c8
	str r0, [sp, #8]
	cmp r0, #0xa
	add r11, r1, #0x800
	add r4, r2, #0x400
	blt _020632A4
	ldr r0, [sp]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x230]
	ldr r0, [sp, #4]
	add r1, r0, #0x1d8
	add r0, r2, #0x58
	add r0, r0, #0x5000
	add r1, r1, #0x4c00
	mov r2, #0x190
	bl MI_CpuCopy8
	ldr r0, [sp]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x230]
	ldr r0, [sp, #4]
	add r1, r0, #0x368
	add r0, r2, #0x1e8
	add r0, r0, #0x5000
	add r1, r1, #0x4c00
	mov r2, #0x70
	bl MI_CpuCopy8
	ldr r0, [sp, #4]
	mov r1, #2
	str r1, [r0]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020633F8: .word unk_02090DB4
_020633FC: .word 0x0000073C
	arm_func_end FUN_02063248

	.data
	.global unk_02090DB4
unk_02090DB4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word unk_02090DF0
	.word unk_02090DDC
	.word unk_02090DE4
	.word unk_02090DFC 
	.global unk_02090DDC
unk_02090DDC:
	.asciz "st_data"
	.balign 4, 0
	.global unk_02090DE4
unk_02090DE4:
	.asciz "SRecordInfo"
	.balign 4, 0
	.global unk_02090DF0
unk_02090DF0:
	.asciz "SRecordPass"
	.balign 4, 0
	.global unk_02090DFC
unk_02090DFC: ; shift-jis string
	.byte 0x81, 0xA6, 0x81, 0x40
	.byte 0x81, 0x44, 0x81, 0x48, 0x81, 0x49, 0x81, 0x5B, 0x81, 0x63, 0x82, 0x9F, 0x82, 0xA0, 0x82, 0xA1
	.byte 0x82, 0xA2, 0x82, 0xA3, 0x82, 0xA4, 0x82, 0xA5, 0x82, 0xA6, 0x82, 0xA7, 0x82, 0xA8, 0x82, 0xA9
	.byte 0x82, 0xAA, 0x82, 0xAB, 0x82, 0xAC, 0x82, 0xAD, 0x82, 0xAE, 0x82, 0xAF, 0x82, 0xB0, 0x82, 0xB1
	.byte 0x82, 0xB2, 0x82, 0xB3, 0x82, 0xB4, 0x82, 0xB5, 0x82, 0xB6, 0x82, 0xB7, 0x82, 0xB8, 0x82, 0xB9
	.byte 0x82, 0xBA, 0x82, 0xBB, 0x82, 0xBC, 0x82, 0xBD, 0x82, 0xBE, 0x82, 0xBF, 0x82, 0xC0, 0x82, 0xC1
	.byte 0x82, 0xC2, 0x82, 0xC3, 0x82, 0xC4, 0x82, 0xC5, 0x82, 0xC6, 0x82, 0xC7, 0x82, 0xC8, 0x82, 0xC9
	.byte 0x82, 0xCA, 0x82, 0xCB, 0x82, 0xCC, 0x82, 0xCD, 0x82, 0xCE, 0x82, 0xCF, 0x82, 0xD0, 0x82, 0xD1
	.byte 0x82, 0xD2, 0x82, 0xD3, 0x82, 0xD4, 0x82, 0xD5, 0x82, 0xD6, 0x82, 0xD7, 0x82, 0xD8, 0x82, 0xD9
	.byte 0x82, 0xDA, 0x82, 0xDB, 0x82, 0xDC, 0x82, 0xDD, 0x82, 0xDE, 0x82, 0xDF, 0x82, 0xE0, 0x82, 0xE1
	.byte 0x82, 0xE2, 0x82, 0xE3, 0x82, 0xE4, 0x82, 0xE5, 0x82, 0xE6, 0x82, 0xE7, 0x82, 0xE8, 0x82, 0xE9
	.byte 0x82, 0xEA, 0x82, 0xEB, 0x82, 0xEC, 0x82, 0xED, 0x82, 0xF0, 0x82, 0xF1, 0x83, 0x40, 0x83, 0x41
	.byte 0x83, 0x42, 0x83, 0x43, 0x83, 0x44, 0x83, 0x45, 0x83, 0x46, 0x83, 0x47, 0x83, 0x48, 0x83, 0x49
	.byte 0x83, 0x4A, 0x83, 0x4B, 0x83, 0x4C, 0x83, 0x4D, 0x83, 0x4E, 0x83, 0x4F, 0x83, 0x50, 0x83, 0x51
	.byte 0x83, 0x52, 0x83, 0x53, 0x83, 0x54, 0x83, 0x55, 0x83, 0x56, 0x83, 0x57, 0x83, 0x58, 0x83, 0x59
	.byte 0x83, 0x5A, 0x83, 0x5B, 0x83, 0x5C, 0x83, 0x5D, 0x83, 0x5E, 0x83, 0x5F, 0x83, 0x60, 0x83, 0x61
	.byte 0x83, 0x62, 0x83, 0x63, 0x83, 0x64, 0x83, 0x65, 0x83, 0x66, 0x83, 0x67, 0x83, 0x68, 0x83, 0x69
	.byte 0x83, 0x6A, 0x83, 0x6B, 0x83, 0x6C, 0x83, 0x6D, 0x83, 0x6E, 0x83, 0x6F, 0x83, 0x70, 0x83, 0x71
	.byte 0x83, 0x72, 0x83, 0x73, 0x83, 0x74, 0x83, 0x75, 0x83, 0x76, 0x83, 0x77, 0x83, 0x78, 0x83, 0x79
	.byte 0x83, 0x7A, 0x83, 0x7B, 0x83, 0x7C, 0x83, 0x7D, 0x83, 0x7E, 0x83, 0x80, 0x83, 0x81, 0x83, 0x82
	.byte 0x83, 0x83, 0x83, 0x84, 0x83, 0x85, 0x83, 0x86, 0x83, 0x87, 0x83, 0x88, 0x83, 0x89, 0x83, 0x8A
	.byte 0x83, 0x8B, 0x83, 0x8C, 0x83, 0x8D, 0x83, 0x8E, 0x83, 0x8F, 0x83, 0x92, 0x83, 0x93, 0x83, 0x94
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_02090F54
unk_02090F54:
	.asciz "%s.%s"
	.balign 4, 0
	.global unk_02090F5C
unk_02090F5C:
	.asciz "%s.%s[%d]"
	.balign 4, 0
	.global unk_02090F68
unk_02090F68:
	.asciz "%s.%s"
	.balign 4, 0
	.global unk_02090F70
unk_02090F70:
	.asciz "%s.%s"
	.balign 4, 0
	.global unk_02090F78
unk_02090F78:
	.asciz "%s.%s[0]"
	.balign 4, 0
	.global unk_02090F84
unk_02090F84:
	.asciz "%s.%s"
	.balign 4, 0
	.global unk_02090F8C
unk_02090F8C:
	.asciz "%s.%s[%d]"
	.balign 4, 0
	.global unk_02090F98
unk_02090F98:
	.asciz "/data_iz/bfmt/cnvdat.bin"
	.balign 4, 0
	.global unk_02090FB4
unk_02090FB4:
	.asciz "/data_iz/bfmt/ver%04d.bin"
	.balign 4, 0
	.global unk_02090FD0
unk_02090FD0:
	.asciz "INAZUMA_ELEVEN3"
	.balign 4, 0
	.global unk_02090FE0
unk_02090FE0:
	.asciz "INAZUMA_ELEVEN3"
	.balign 4, 0
	.global unk_02090FF0
unk_02090FF0:
	.asciz "INAZUMA_ELEVEN3"
	.balign 4, 0
	.global unk_02091000
unk_02091000:
	.asciz "globalmap"
	.balign 4, 0

	.bss
	.global unk_020B5BFC
unk_020B5BFC:
	.space 0x1C
	.global unk_020B5C18
unk_020B5C18:
	.space 0x08
	.global unk_020B5C20
unk_020B5C20:
	.space 0x40
	.global unk_020B5C60
unk_020B5C60:
	.space 0xBC
	.global unk_020B5D1C
unk_020B5D1C:
	.space 0xBC
	.global unk_020B5DD8
unk_020B5DD8:
	.space 0x1000


	.include "/macros/function.inc"
	.include "/global.inc"

	.text
	.org 0x02124d00

	arm_func_start FUN_ov103_02124d00
FUN_ov103_02124d00: ; 0x02124D00
	bx lr
	arm_func_end FUN_ov103_02124d00

	arm_func_start FUN_ov103_02124d04
FUN_ov103_02124d04: ; 0x02124D04
	bx lr
	arm_func_end FUN_ov103_02124d04

	arm_func_start FUN_ov103_02124d08
FUN_ov103_02124d08: ; 0x02124D08
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	bl FUN_02041fec
	cmp r0, #0x1f
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #5
	strne r0, [r5, #8]
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	str r0, [r5, #0xc]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02124D68
	add r0, r5, #0x60
	mov r2, #0x6d
	bl StrncpyWithNullPad
_02124D68:
	mov r0, #0
	strb r0, [r5, #0xe0]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov103_02124d08

	arm_func_start FUN_ov103_02124d78
FUN_ov103_02124d78: ; 0x02124D78
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x24
	mov r1, #0
	mov r2, #0x3c
	bl MemWrite
	ldr r0, _02124DA0 ; =0x02125740
	add r1, r4, #0x24
	bl  FUN_ov16_020f316c
	ldmfd sp!, {r4, pc}
_02124DA0: .word 0x02125740
	arm_func_end FUN_ov103_02124d78

	arm_func_start FUN_ov103_02124da4
FUN_ov103_02124da4: ; 0x02124DA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02124DEC ; =0x021255E0
	ldr r6, [r0, #0x24]
	ldr r1, [r1]
	ldr r7, _02124DF0 ; =0x021255E0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x24
	mov r4, #0xc
_02124DC8:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _02124DC8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124DEC: .word 0x021255E0
_02124DF0: .word 0x021255E0
	arm_func_end FUN_ov103_02124da4

	arm_func_start FUN_ov103_02124df4
FUN_ov103_02124df4: ; 0x02124DF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x24
	mov r4, #0xc
_02124E04:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #5
	blt _02124E04
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov103_02124df4

	arm_func_start FUN_ov103_02124e1c
FUN_ov103_02124e1c: ; 0x02124E1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r4, [r5, #0x30]
	mov r7, #1
	cmp r4, #0
	beq _02124E5C
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	mov r3, r7
	add r0, r4, r0
	mov r2, #0
	bl  FUN_ov16_020f1868
	mov r0, r4
	mov r1, r7
	mov r2, r7
	bl  FUN_ov16_020f1138
_02124E5C:
	ldr r8, [r5, #0x3c]
	mov r4, #0
	cmp r8, #0
	beq _02124E9C
	ldr r0, [r8, #0xc]
	mov r6, #2
	ldr r1, [r8, #0x10]
	mov r2, r7
	mov r3, r6
	add r0, r8, r0
	bl  FUN_ov16_020f1868
	mov r4, r0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_020f1138
_02124E9C:
	ldr r7, [r5, #0x48]
	cmp r7, #0
	beq _02124ED8
	ldr r0, [r7, #0xc]
	mov r6, #3
	ldr r1, [r7, #0x10]
	mov r3, r6
	add r0, r7, r0
	add r2, r4, #1
	bl  FUN_ov16_020f1868
	mov r4, r0
	mov r0, r7
	mov r2, r6
	mov r1, #1
	bl  FUN_ov16_020f1138
_02124ED8:
	ldr r7, [r5, #0x54]
	cmp r7, #0
	beq _02124F10
	ldr r0, [r7, #0xc]
	mov r6, #4
	ldr r1, [r7, #0x10]
	mov r3, r6
	add r0, r7, r0
	add r2, r4, #1
	bl  FUN_ov16_020f1868
	mov r0, r7
	mov r2, r6
	mov r1, #1
	bl  FUN_ov16_020f1138
_02124F10:
	ldr r0, [r5, #0x10]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r5, #0x14]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	beq _02124F4C
	ldrh r4, [r5, #0x1c]
	ldrh r1, [r5, #0x1e]
	mov r2, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
_02124F4C:
	bl  FUN_ov16_020f10c8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov103_02124e1c

	arm_func_start FUN_ov103_02124f54
FUN_ov103_02124f54: ; 0x02124F54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r7, r0
	ldrb r0, [r7, #0xe0]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _021250BC ; =0x0209F5C0
	mov r5, #1
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_020f5f64
	ldr r2, [r7, #0x3c]
	cmp r2, #0
	beq _02124FE8
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r1, r2, r1
	add r6, r1, #0x168
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02124FE8:
	ldr r4, [r7, #0x48]
	cmp r4, #0
	beq _02125040
	mov r0, #2
	mov r1, #1
	stmia sp, {r0, r1}
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #7
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r2, [r4, #0xc]
	ldr r0, _021250BC ; =0x0209F5C0
	add r4, r4, r2
	mov r2, r1
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125040:
	ldr r4, [r7, #0x54]
	cmp r4, #0
	beq _02125098
	mov r0, #2
	mov r1, #1
	stmia sp, {r0, r1}
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #5
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r2, [r4, #0xc]
	ldr r0, _021250BC ; =0x0209F5C0
	add r4, r4, r2
	mov r2, r1
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125098:
	mov r0, r7
	bl FUN_ov103_021250c0
	mov r4, #1
	ldr r0, _021250BC ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f672c
	strb r4, [r7, #0xe0]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021250BC: .word 0x0209F5C0
	arm_func_end FUN_ov103_02124f54

	arm_func_start FUN_ov103_021250c0
FUN_ov103_021250c0: ; 0x021250C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x170
	mov r10, r0
	ldr r4, [r10, #0x10]
	mov r1, #0
	cmp r4, #0
	ldrne r0, [r10, #0x14]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x170
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #7
	mov r2, #0
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, _02125244 ; =0x0209F5C0
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r10, #0x10
	bl  FUN_ov16_020f2f20
	add r4, sp, #0x70
	add r1, r10, #0x60
	mov r0, r4
	mov r2, #0x6d
	bl StrncpyWithNullPad
	ldr r0, [r10, #0xe4]
	cmp r0, #0xf
	bge _0212516C
	ldr r1, _02125248 ; =0x02125764
	mov r0, r4
	bl FUN_02014ee8
_0212516C:
	mov r9, #0
	ldr r5, _0212524C ; =0x02099F50
	add r8, sp, #0x20
	add r7, sp, #0x70
	mov r6, r9
	mov r11, #0x24
	mov r4, #0xe
_02125188:
	mla r1, r9, r11, r7
	mov r0, r8
	mov r2, #0x25
	bl StrncpyWithNullPad
	mov r0, r8
	bl  FUN_ov16_020f2118
	ldr r0, [r5]
	mov r1, #1
	mov r2, #2
	bl rwriteat14n18
	mov r0, #3
	stmia sp, {r0, r6}
	ldr r0, [r10, #0x14]
	mov r1, #3
	str r0, [sp, #8]
	ldrh r2, [r10, #0x1c]
	mul r0, r9, r4
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	add r2, r0, #3
	ldrh r0, [r10, #0x1e]
	mov r3, r8
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [r5]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	mov r0, r8
	bl GetStrLen
	cmp r0, #0x24
	blt _0212521C
	add r9, r9, #1
	cmp r9, #3
	blt _02125188
_0212521C:
	ldrh r2, [r10, #0x1c]
	ldrh r1, [r10, #0x1e]
	mov r3, #1
	ldr r0, [r10, #0x14]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	strb r3, [r10, #0x20]
	bl FUN_020026d0
	add sp, sp, #0x170
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125244: .word 0x0209F5C0
_02125248: .word 0x02125764
_0212524C: .word 0x02099F50
	arm_func_end FUN_ov103_021250c0

	arm_func_start FUN_ov103_02125250
FUN_ov103_02125250: ; 0x02125250
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r6, [r4, #0x30]
	cmp r6, #0
	beq _02125290
	ldr r0, [r6, #0x14]
	mov r5, #0
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl FUN_020057ec
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl FUN_0200546c
_02125290:
	bl FUN_02004fac
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_0200787c
	bl FUN_02004fac
	mov r1, r5
	bl FUN_020026d0
	mov r7, #1
	ldr r1, [r4, #0x3c]
	mov r0, r7
	mov r2, r5
	bl  FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x48]
	mov r0, r7
	bl  FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x54]
	mov r0, r7
	bl  FUN_ov16_020f1a60
	bl FUN_0200501c
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_0200787c
	bl FUN_0200501c
	mov r1, r5
	bl FUN_020026d0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldrne r0, [r4, #0x14]
	cmpne r0, #0
	moveq r7, #0
	cmp r7, #0
	movne r0, #0x20
	strne r0, [r4, #0x18]
	bl  FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov103_02125250

	arm_func_start FUN_ov103_02125334
FUN_ov103_02125334: ; 0x02125334
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x10]
	cmp r0, #0
	ldrne r0, [lr, #0x14]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x20]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x1c]
	ldrh r1, [lr, #0x1e]
	mov r12, #0
	ldr r0, [lr, #0x14]
	mul r3, r2, r1
	ldr r1, [lr, #0x18]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x20]
	bl FUN_020059ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov103_02125334

	arm_func_start FUN_ov103_0212538c
FUN_ov103_0212538c: ; 0x0212538C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r1, r5
	add r0, r6, #0x24
	mov r2, #0x3c
	bl MemWrite
	mov r4, #1
	ldr r0, [r6, #4]
	str r5, [r6, #0xc]
	strb r5, [r6, #0x60]
	strb r5, [r6, #0xe0]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl  FUN_ov16_020f4894
	ldr r0, _02125414 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5a58
	add r0, r6, #0x10
	mov r1, r4
	bl  FUN_ov16_020f2f7c
	add r0, r6, #0x10
	mov r1, #0x1e
	mov r2, #7
	bl  FUN_ov16_020f2fa8
	str r5, [r6, #0xe4]
	str r5, [r6, #0xe8]
	mov r0, r6
	bl FUN_ov103_02124d78
	str r4, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_02125414: .word 0x0209F5C0
	arm_func_end FUN_ov103_0212538c

	arm_func_start FUN_ov103_02125418
FUN_ov103_02125418: ; 0x02125418
	stmfd sp!, {r4, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _021254A4
	ldr r0, [r4, #0xe4]
	ldr r1, _02125514 ; =0x88888889
	add r12, r0, #1
	smull r0, lr, r1, r12
	add lr, r12, lr
	mov r0, r12, lsr #0x1f
	add lr, r0, lr, asr #4
	mov r2, #0x1e
	smull r0, r1, r2, lr
	ldr r3, [r4, #0xc]
	sub lr, r12, r0
	cmp r3, #0
	str lr, [r4, #0xe4]
	movne r0, #0x1d
	strne r0, [r4, #0xe4]
	ldr r0, [r4, #0xe4]
	cmp r0, #0xf
	cmpne r0, #0
	moveq r0, #0
	streqb r0, [r4, #0xe0]
	add r0, r4, #0x60
	bl GetStrLen
	ldr r1, [r4, #0xe8]
	cmp r1, r0
	movne r1, #0
	strne r1, [r4, #0xe4]
	strne r0, [r4, #0xe8]
	strneb r1, [r4, #0xe0]
_021254A4:
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _021254C4
	cmp r0, #3
	beq _021254F4
	cmp r0, #4
	beq _02125508
	ldmfd sp!, {r4, pc}
_021254C4:
	add r0, r4, #0x24
	mov r1, #5
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov103_02124da4
	mov r0, r4
	bl FUN_ov103_02124e1c
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021254F4:
	mov r0, r4
	bl FUN_ov103_02124f54
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125508:
	mov r0, r4
	bl FUN_ov103_02124f54
	ldmfd sp!, {r4, pc}
_02125514: .word 0x88888889
	arm_func_end FUN_ov103_02125418

	arm_func_start FUN_ov103_02125518
FUN_ov103_02125518: ; 0x02125518
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _02125538
	cmp r1, #4
	beq _02125548
	ldmfd sp!, {r4, pc}
_02125538:
	bl FUN_ov103_02125250
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125548:
	bl FUN_ov103_02125334
	ldr r0, _0212556C ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldr r0, [r4, #0xc]
	cmp r0, #2
	moveq r0, #5
	streq r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0212556C: .word 0x0209F5C0
	arm_func_end FUN_ov103_02125518

	arm_func_start FUN_ov103_02125570
FUN_ov103_02125570: ; 0x02125570
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x24
	mov r1, #5
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov103_02124df4
	mov r4, #1
	ldr r0, _021255C4 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5af0
	mov r1, r4
	add r0, r5, #0x10
	bl  FUN_ov16_020f2fe4
	bl  FUN_ov16_020f51a8
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_021255C4: .word 0x0209F5C0
	arm_func_end FUN_ov103_02125570

	arm_func_start FUN_ov103_021255c8
FUN_ov103_021255c8: ; 0x021255C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov103_021255c8

	arm_func_start FUN_ov103_021255dc
FUN_ov103_021255dc: ; 0x021255DC
	bx lr
	arm_func_end FUN_ov103_021255dc
_021255E0:
	.byte 0xBC, 0x56, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0xA4, 0x56, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xB0, 0x56, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x98, 0x56, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov103_02125608
FUN_ov103_02125608: ; 0x02125608
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02125650 ; =0x02125680
	str r0, [r4, #8]
	ldr r0, _02125654 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02125658 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02125650: .word 0x02125680
_02125654: .word 0x00009CCD
_02125658: .word 0x0000EA3C
	arm_func_end FUN_ov103_02125608
	; 0x0212565C

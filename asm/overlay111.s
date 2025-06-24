
	.include "/macros/function.inc"
	.include "/include/overlay111.inc"

	.text
	arm_func_start FUN_ov111_02124d00
FUN_ov111_02124d00: ; 0x02124D00
	ldr r3, _02124D18 ; =0x02125CC0
	mov r2, #0
	str r3, [r0]
	str r1, [r0, #4]
	str r2, [r0, #0x14]
	bx lr
_02124D18: .word 0x02125CC0
	arm_func_end FUN_ov111_02124d00

	arm_func_start FUN_ov111_02124d1c
FUN_ov111_02124d1c: ; 0x02124D1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	cmp r1, #0
	bne _02124D50
	bl FUN_ov111_021254e4
	mov r0, r5
	bl FUN_ov111_021255c4
	mov r4, #1
	ldr r0, _02124E94 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f6a9c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02124D50:
	ldr r0, [r5, #8]
	cmp r0, #0
	cmpne r0, #1
	beq _02124D6C
	sub r0, r0, #3
	cmp r0, #2
	bhi _02124D74
_02124D6C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02124D74:
	ldrh r0, [r1]
	add r6, r1, #5
	add r4, r5, #0x1d
	strh r0, [r5, #0x18]
	ldrb r0, [r1, #2]
	mov r3, #0x80
	strb r0, [r5, #0x1a]
	ldrb r0, [r1, #3]
	strb r0, [r5, #0x1b]
	ldrb r0, [r1, #4]
	strb r0, [r5, #0x1c]
_02124DA0:
	ldrb r2, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r3, r3, #1
	strb r0, [r4, #1]
	strb r2, [r4], #2
	bne _02124DA0
	ldr r0, [r1, #0x108]
	mov r4, #0
	str r0, [r5, #0x120]
	ldr r0, [r1, #0x10c]
	ldr r9, _02124E98 ; =0x0209A250
	str r0, [r5, #0x124]
	ldrb r2, [r1, #0x110]
	ldrb r0, [r1, #0x111]
	mov r8, r4
	mov r7, r4
	strb r2, [r5, #0x128]
	strb r0, [r5, #0x129]
	ldr r0, [r1, #0x114]
	mov r6, #0xc
	str r0, [r5, #0x12c]
_02124DF8:
	mla r10, r4, r6, r5
	ldr r1, [r10, #0x130]
	cmp r1, #0
	beq _02124E14
	mov r0, r9
	bl FUN_0202e1c0
	str r8, [r10, #0x130]
_02124E14:
	ldr r1, [r10, #0x134]
	cmp r1, #0
	beq _02124E2C
	mov r0, r9
	bl FUN_0202e1c0
	str r7, [r10, #0x134]
_02124E2C:
	add r4, r4, #1
	cmp r4, #2
	blt _02124DF8
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	beq _02124E50
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _02124E6C
_02124E50:
	mov r0, r5
	bl FUN_ov111_021254e4
	mov r0, r5
	bl FUN_ov111_021255c4
	ldr r0, _02124E94 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
_02124E6C:
	mov r0, r5
	bl FUN_ov111_021250b8
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov111_02124ff0
	mov r0, #4
	bl  FUN_ov16_020f147c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02124E94: .word 0x0209F5C0
_02124E98: .word 0x0209A250
	arm_func_end FUN_ov111_02124d1c

	arm_func_start FUN_ov111_02124e9c
FUN_ov111_02124e9c: ; 0x02124E9C
	cmp r1, #0
	strge r1, [r0, #0x14]
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov111_02124e9c

	arm_func_start FUN_ov111_02124eac
FUN_ov111_02124eac: ; 0x02124EAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x184
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r0, _02124EF4 ; =0x02125D2C
	add r1, r4, #0x184
	bl  FUN_ov16_020f3054
	ldr r0, _02124EF8 ; =0x02125D44
	add r1, r4, #0x190
	bl  FUN_ov16_020f3054
	ldr r0, _02124EFC ; =0x02125D5C
	add r1, r4, #0x19c
	bl  FUN_ov16_020f3054
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124EF4: .word 0x02125D2C
_02124EF8: .word 0x02125D44
_02124EFC: .word 0x02125D5C
	arm_func_end FUN_ov111_02124eac

	arm_func_start FUN_ov111_02124f00
FUN_ov111_02124f00: ; 0x02124F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x184
	mov r1, #3
	bl  FUN_ov16_020f338c
	add r5, r4, #0x184
	mov r6, #0
	mov r4, #0xc
_02124F20:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _02124F20
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov111_02124f00

	arm_func_start FUN_ov111_02124f38
FUN_ov111_02124f38: ; 0x02124F38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r5, _02124FA4 ; =0x02125C0C
	add r4, sp, #0
	mov r12, r0
	mov r7, r4
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
	ldr r6, [r12, #0x154]
	cmp r6, #0
	ldrne r0, [r7]
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r12, #0x148
	mov r4, #0xc
_02124F80:
	ldr r3, [r7, #4]
	mov r2, r6
	mla r1, r3, r4, r5
	bl  FUN_ov16_020f32b4
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _02124F80
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124FA4: .word 0x02125C0C
	arm_func_end FUN_ov111_02124f38

	arm_func_start FUN_ov111_02124fa8
FUN_ov111_02124fa8: ; 0x02124FA8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x50
	mov r3, r1
	mov r5, r2
	add r4, sp, #0
	mov r6, r0
	ldr r1, _02124FEC ; =0x02125D74
	mov r0, r4
	mov r2, r3
	bl FUN_02023c40
	add r1, r6, #0x148
	mov r0, #0xc
	mla r1, r5, r0, r1
	mov r0, r4
	bl  FUN_ov16_020f3054
	add sp, sp, #0x50
	ldmfd sp!, {r4, r5, r6, pc}
_02124FEC: .word 0x02125D74
	arm_func_end FUN_ov111_02124fa8

	arm_func_start FUN_ov111_02124ff0
FUN_ov111_02124ff0: ; 0x02124FF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _02125014
	cmp r1, #2
	moveq r0, #1
	streqb r0, [r4, #0x10]
	b _0212509C
_02125014:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x148
	mov r2, #0x3c
	bl MI_CpuFill8
	ldr r5, _021250A8 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _021250AC ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r1, _021250B0 ; =0x02125D90
	mov r2, r7
	mov r0, r4
	bl FUN_ov111_02124fa8
	ldr r1, [r4, #0x124]
	mov r0, r4
	bl FUN_ov111_02125790
	ldr r0, _021250B4 ; =0x02125D9C
	add r1, r4, #0x154
	bl  FUN_ov16_020f3054
	mov r0, #1
	strb r0, [r4, #0x10]
_0212509C:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021250A8: .word 0x020A8C40
_021250AC: .word 0x020A8440
_021250B0: .word 0x02125D90
_021250B4: .word 0x02125D9C
	arm_func_end FUN_ov111_02124ff0

	arm_func_start FUN_ov111_021250b8
FUN_ov111_021250b8: ; 0x021250B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x148
	mov r1, #5
	bl  FUN_ov16_020f338c
	add r5, r4, #0x148
	mov r6, #0
	mov r4, #0xc
_021250D8:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #5
	blt _021250D8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov111_021250b8

	arm_func_start FUN_ov111_021250f0
FUN_ov111_021250f0: ; 0x021250F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02125120
	ldr r0, _02125198 ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_02125120:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0212513C
	ldr r0, _02125198 ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_0212513C:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02125174
_0212515C:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _0212515C
_02125174:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_02125198: .word 0x0209A250
	arm_func_end FUN_ov111_021250f0

	arm_func_start FUN_ov111_0212519c
FUN_ov111_0212519c: ; 0x0212519C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r2, r5, #0x130
	mov r6, #0xc
	mla r4, r1, r6, r2
	mov r1, r4
	mov r2, #0x20
	mov r3, #7
	bl FUN_ov111_021250f0
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldr r0, [r5, #0x178]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov111_0212519c

	arm_func_start FUN_ov111_02125220
FUN_ov111_02125220: ; 0x02125220
	stmfd sp!, {r3, lr}
	mov r2, #0
	strb r2, [r0, #0x10]
	cmp r1, #2
	ldmnefd sp!, {r3, pc}
	mov r1, #1
	bl FUN_ov111_0212519c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov111_02125220

	arm_func_start FUN_ov111_02125240
FUN_ov111_02125240: ; 0x02125240
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r4, [r0, #0x12c]
	mov r10, r1
	add r1, r0, r4
	ldrb r1, [r1, #0x128]
	ldr r8, [sp, #0x4c]
	ldr r4, [sp, #0x54]
	cmp r1, #0
	mov r5, r2
	mov r9, r3
	addne sp, sp, #0x20
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [sp, #0x50]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r2, [r0, #0x148]
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r2, #0xc]
	ldr r0, [sp, #0x48]
	add r7, r2, r1
	mov r1, #1
	cmp r9, r0
	movgt r9, r0
	str r1, [sp]
	mov r0, r10, lsl #0x18
	mov r2, r5, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	and r3, r4, #0xff
	str r3, [sp, #0x18]
	add r6, r7, #0x28
	ldr r0, _0212539C ; =0x0209F5C0
	mov r2, r8
	mov r3, #0
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	mov r10, r0, asr #0x10
	mov r0, r5, lsl #0x18
	ldr r11, _021253A0 ; =0x66666667
	mov r5, r0, asr #0x18
	and r4, r4, #0xff
	mov r6, #1
_02125314:
	smull r1, r2, r11, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	add r0, r7, r2, lsl #2
	mov r2, r9
	smull r1, r9, r11, r2
	mov r1, r2, lsr #0x1f
	str r6, [sp]
	add r9, r1, r9, asr #2
	mov r1, r10, lsl #0x18
	str r6, [sp, #4]
	mov r1, r1, asr #0x18
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, #2
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _0212539C ; =0x0209F5C0
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl  FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02125314
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212539C: .word 0x0209F5C0
_021253A0: .word 0x66666667
	arm_func_end FUN_ov111_02125240

	arm_func_start FUN_ov111_021253a4
FUN_ov111_021253a4: ; 0x021253A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr lr, [r4, #0x130]
	add r12, r4, #0x130
	cmp lr, #0
	beq _0212540C
	mov r0, #3
	mov r1, #1
	stmia sp, {r0, r1}
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	ldrh r2, [r12, #8]
	mov r3, #0
	ldr r0, _02125444 ; =0x0209F5C0
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r12, [r12, #0xa]
	mov r2, r1
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0212540C:
	ldr r1, _02125448 ; =0x0098967F
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [r4, #0x120]
	mov r0, r4
	mov r1, #0x13
	mov r2, #0xa
	bl FUN_ov111_02125240
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02125444: .word 0x0209F5C0
_02125448: .word 0x0098967F
	arm_func_end FUN_ov111_021253a4

	arm_func_start FUN_ov111_0212544c
FUN_ov111_0212544c: ; 0x0212544C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr lr, [r0, #0x13c]
	add r4, r0, #0x13c
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r0, #4
	str r0, [sp]
	mov r2, #0
	mov r1, #1
	stmib sp, {r1, r2}
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrh r12, [r4, #8]
	ldr r0, _021254B8 ; =0x0209F5C0
	mov r3, r2
	and r12, r12, #0xff
	str r12, [sp, #0x10]
	ldrh r12, [r4, #0xa]
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r2, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_021254B8: .word 0x0209F5C0
	arm_func_end FUN_ov111_0212544c

	arm_func_start FUN_ov111_021254bc
FUN_ov111_021254bc: ; 0x021254BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #0
	bl  FUN_ov16_020efa9c
	movs r1, r0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov111_021253a4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov111_021254bc

	arm_func_start FUN_ov111_021254e4
FUN_ov111_021254e4: ; 0x021254E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r7, _021255C0 ; =0x0209F5C0
	mov r6, #1
	mov r5, #0
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_020f5f64
	mov r4, #2
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_020f5eec
	mov r0, r7
	mov r1, r6
	mov r2, #3
	mov r3, r5
	bl  FUN_ov16_020f5eec
	mov r0, r7
	mov r1, r6
	mov r2, #4
	mov r3, r5
	bl  FUN_ov16_020f5eec
	ldr r2, [r8, #0x160]
	cmp r2, #0
	beq _021255A8
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0x12
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r7
	add r4, r2, r1
	mov r1, r6
	mov r2, r6
	mov r3, r5
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021255A8:
	mov r0, r8
	bl FUN_ov111_021254bc
	mov r0, r8
	bl FUN_ov111_0212544c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021255C0: .word 0x0209F5C0
	arm_func_end FUN_ov111_021254e4

	arm_func_start FUN_ov111_021255c4
FUN_ov111_021255c4: ; 0x021255C4
	ldr r0, _021255D4 ; =0x0209F5C0
	ldr r12, _021255D8 ; = FUN_ov16_020f672c
	mov r1, #1
	bx r12
_021255D4: .word 0x0209F5C0
_021255D8: .word  FUN_ov16_020f672c
	arm_func_end FUN_ov111_021255c4

	arm_func_start FUN_ov111_021255dc
FUN_ov111_021255dc: ; 0x021255DC
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x130
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _0212561C
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	mov r2, r0
_0212561C:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov111_021255dc

	arm_func_start FUN_ov111_02125624
FUN_ov111_02125624: ; 0x02125624
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x130
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _0212566C
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_020058cc
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_0212566C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov111_02125624

	arm_func_start FUN_ov111_02125674
FUN_ov111_02125674: ; 0x02125674
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r7, r1, r4
	add r6, r0, #0x148
	ldr r8, [r6, r7]
	ldr r9, [sp, #0x20]
	mov r4, r2
	mov r5, r3
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r5]
	mov r0, r8
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [r5]
	mov r5, #1
	ldr r1, [r6, r7]
	ldr r2, [r9]
	mov r0, r5
	bl  FUN_ov16_020f1a60
	str r0, [r9]
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov111_02125674

	arm_func_start FUN_ov111_021256dc
FUN_ov111_021256dc: ; 0x021256DC
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x130
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02125724
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_020059ac
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_02125724:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov111_021256dc

	arm_func_start FUN_ov111_0212572c
FUN_ov111_0212572c: ; 0x0212572C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x148
	ldr r6, [r4, r5]
	ldr r7, [sp, #0x20]
	mov r9, r2
	mov r8, r3
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8]
	mov r0, r6
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [r8]
	ldr r1, [r4, r5]
	ldr r2, [r7]
	mov r0, #2
	bl  FUN_ov16_020f1a60
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov111_0212572c

	arm_func_start FUN_ov111_02125790
FUN_ov111_02125790: ; 0x02125790
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	cmp r1, #0
	mov r4, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _021257E4 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x1a]
	ldr r0, _021257E8 ; =0x02125DBC
	add r1, r4, #0x178
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021257E4: .word 0x0209BA20
_021257E8: .word 0x02125DBC
	arm_func_end FUN_ov111_02125790

	arm_func_start FUN_ov111_021257ec
FUN_ov111_021257ec: ; 0x021257EC
	stmfd sp!, {r3, lr}
	mov r3, r1
	mov r1, #3
	str r2, [sp]
	mov r2, r1
	bl FUN_ov111_0212572c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov111_021257ec

	arm_func_start FUN_ov111_02125808
FUN_ov111_02125808: ; 0x02125808
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r7, [r4, #0x148]
	cmp r7, #0
	beq _02125878
	ldr r0, [r7, #0xc]
	mov r6, #0
	mov r5, #1
	ldr r1, [r7, #0x10]
	mov r2, r6
	mov r3, r5
	add r0, r7, r0
	bl  FUN_ov16_020f1868
	mov r0, r7
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_020f1138
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x18]
	mov r1, r6
	add r0, r7, r0
	bl FUN_020057ec
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	add r0, r7, r0
	mov r1, r6
	bl FUN_0200546c
_02125878:
	bl FUN_02004fac
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r5
	bl DC_FlushRange
	str r6, [sp, #0x10]
	str r5, [sp, #8]
	bl FUN_0200501c
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_0200501c
	mov r1, r5
	bl DC_FlushRange
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r6
	str r5, [sp, #4]
	str r6, [sp, #0xc]
	bl FUN_ov111_021255dc
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r6
	mov r0, r4
	bl FUN_ov111_02125624
	str r0, [sp, #8]
	add r1, sp, #8
	str r1, [sp]
	mov r1, #2
	mov r0, r4
	mov r2, r1
	add r3, sp, #0x10
	bl FUN_ov111_02125674
	mov r5, #1
	ldr r2, [sp, #0xc]
	mov r0, r4
	mov r1, r5
	bl FUN_ov111_021255dc
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r1, r5
	mov r0, r4
	bl FUN_ov111_021256dc
	str r0, [sp, #4]
	mov r0, r4
	add r1, sp, #0xc
	add r2, sp, #4
	bl FUN_ov111_021257ec
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov111_02125808

	arm_func_start FUN_ov111_0212595c
FUN_ov111_0212595c: ; 0x0212595C
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
	add r0, r6, #0x130
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r6, #0x148
	mov r1, r4
	mov r2, #0x3c
	bl MI_CpuFill8
	mov r0, r6
	strb r4, [r6, #0x10]
	strh r4, [r6, #0x18]
	strb r4, [r6, #0x1a]
	strb r4, [r6, #0x1b]
	strb r4, [r6, #0x1c]
	strb r4, [r6, #0x1d]
	str r4, [r6, #0x120]
	str r4, [r6, #0x124]
	strb r4, [r6, #0x129]
	str r4, [r6, #0x12c]
	strb r4, [r6, #0x128]
	bl FUN_ov111_02124eac
	ldr r0, _021259EC ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5a58
	ldmfd sp!, {r4, r5, r6, pc}
_021259EC: .word 0x0209F5C0
	arm_func_end FUN_ov111_0212595c

	arm_func_start FUN_ov111_021259f0
FUN_ov111_021259f0: ; 0x021259F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02125A08: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _02125A2C ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _02125A50 ; case 3
	b _02125AA8 ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	b _02125AC8 ; case 6
	b _02125AD4 ; case 7
	b _02125B00 ; case 8
_02125A2C:
	add r0, r4, #0x184
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_ov111_02124ff0
	ldmfd sp!, {r3, r4, r5, pc}
_02125A50:
	ldr r1, [r4, #0xc]
	bl FUN_ov111_02125220
	mov r5, #5
	mov r1, r5
	add r0, r4, #0x148
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02125A88
	cmp r0, #2
	beq _02125A98
	ldmfd sp!, {r3, r4, r5, pc}
_02125A88:
	mov r0, r4
	mov r1, #2
	bl FUN_ov111_02124ff0
	ldmfd sp!, {r3, r4, r5, pc}
_02125A98:
	mov r0, r4
	bl FUN_ov111_02124f38
	str r5, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02125AA8:
	bl FUN_ov111_021254e4
	mov r1, #6
	ldr r0, [r4, #4]
	str r1, [r4, #8]
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x40]
	blx r2
_02125AC8:
	mov r0, r4
	bl FUN_ov111_021255c4
	ldmfd sp!, {r3, r4, r5, pc}
_02125AD4:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov111_021250b8
	mov r0, r4
	mov r1, #1
	bl FUN_ov111_02124ff0
	ldmfd sp!, {r3, r4, r5, pc}
_02125B00:
	bl FUN_ov111_021250b8
	mov r0, r4
	mov r1, #1
	bl FUN_ov111_02124ff0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov111_021259f0

	arm_func_start FUN_ov111_02125b14
FUN_ov111_02125b14: ; 0x02125B14
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02125B34
	cmp r1, #6
	beq _02125B44
	ldmfd sp!, {r4, pc}
_02125B34:
	bl FUN_ov111_02125808
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125B44:
	ldr r0, _02125B54 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02125B54: .word 0x0209F5C0
	arm_func_end FUN_ov111_02125b14

	arm_func_start FUN_ov111_02125b58
FUN_ov111_02125b58: ; 0x02125B58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	bl FUN_ov111_021250b8
	mov r0, r4
	bl FUN_ov111_02124f00
	mov r9, #0
	ldr r8, _02125BEC ; =0x0209A250
	mov r7, r9
	mov r6, r9
	mov r5, #0xc
_02125B80:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x130]
	cmp r1, #0
	beq _02125B9C
	mov r0, r8
	bl FUN_0202e1c0
	str r7, [r10, #0x130]
_02125B9C:
	ldr r1, [r10, #0x134]
	cmp r1, #0
	beq _02125BB4
	mov r0, r8
	bl FUN_0202e1c0
	str r6, [r10, #0x134]
_02125BB4:
	add r9, r9, #1
	cmp r9, #2
	blt _02125B80
	mov r5, #1
	ldr r0, _02125BF0 ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5af0
	bl  FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02125BEC: .word 0x0209A250
_02125BF0: .word 0x0209F5C0
	arm_func_end FUN_ov111_02125b58

	arm_func_start FUN_ov111_02125bf4
FUN_ov111_02125bf4: ; 0x02125BF4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov111_02125bf4

	arm_func_start FUN_ov111_02125c08
FUN_ov111_02125c08: ; 0x02125C08
	bx lr
	arm_func_end FUN_ov111_02125c08
_02125C0C:
	.byte 0x98, 0x5C, 0x12, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xA8, 0x5C, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov111_02125c24
FUN_ov111_02125c24: ; 0x02125C24
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02125C6C ; =0x02125C80
	str r0, [r4, #8]
	ldr r0, _02125C70 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02125C74 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02125C6C: .word 0x02125C80
_02125C70: .word 0x00009CCD
_02125C74: .word 0x0000EA3C
	arm_func_end FUN_ov111_02125c24

_02125C78:
	.byte 0x24, 0x5c, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 02125C78
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 02125C88
	.byte 0x77, 0x64, 0x75, 0x70, 0x5f, 0x77, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 02125C98
	.byte 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x6e, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 02125CA8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x5c, 0x12, 0x02, 0xf4, 0x5b, 0x12, 0x02 ; 02125CB8
	.byte 0xa8, 0xb2, 0x02, 0x02, 0xa4, 0xb2, 0x02, 0x02, 0x5c, 0x59, 0x12, 0x02, 0x08, 0xb2, 0x02, 0x02 ; 02125CC8
	.byte 0xf0, 0x59, 0x12, 0x02, 0x14, 0x5b, 0x12, 0x02, 0x58, 0x5b, 0x12, 0x02, 0x04, 0xb2, 0x02, 0x02 ; 02125CD8
	.byte 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02, 0xe8, 0xb1, 0x02, 0x02 ; 02125CE8
	.byte 0xe0, 0xb1, 0x02, 0x02, 0x94, 0xb2, 0x02, 0x02, 0x84, 0xb2, 0x02, 0x02, 0x78, 0xb2, 0x02, 0x02 ; 02125CF8
	.byte 0x6c, 0xb2, 0x02, 0x02, 0x5c, 0xb2, 0x02, 0x02, 0x4c, 0xb2, 0x02, 0x02, 0x3c, 0xb2, 0x02, 0x02 ; 02125D08
	.byte 0x30, 0xb2, 0x02, 0x02, 0x24, 0xb2, 0x02, 0x02, 0x1c, 0x4d, 0x12, 0x02, 0x9c, 0x4e, 0x12, 0x02 ; 02125D18
	.byte 0xc8, 0xb1, 0x02, 0x02, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x66, 0x61, 0x63 ; 02125D28
	.byte 0x65, 0x32, 0x64, 0x2f, 0x66, 0x61, 0x63, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x2f, 0x64, 0x61, 0x74 ; 02125D38
	.byte 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2f, 0x66, 0x61, 0x62, 0x2e ; 02125D48
	.byte 0x70, 0x6b, 0x68, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x66, 0x61, 0x63 ; 02125D58
	.byte 0x65, 0x32, 0x64, 0x2f, 0x70, 0x70, 0x75, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x2f, 0x64, 0x61, 0x74 ; 02125D68
	.byte 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2f, 0x6d, 0x65, 0x6e, 0x75, 0x2f ; 02125D78
	.byte 0x25, 0x73, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x77, 0x64, 0x75, 0x70, 0x5f, 0x62, 0x67, 0x30 ; 02125D88
	.byte 0x30, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63 ; 02125D98
	.byte 0x32, 0x64, 0x2f, 0x6d, 0x65, 0x6e, 0x75, 0x2f, 0x53, 0x4d, 0x57, 0x64, 0x2e, 0x53, 0x50, 0x46 ; 02125DA8
	.byte 0x5f, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x6c, 0x6f, 0x67 ; 02125DB8
	.byte 0x69, 0x63, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x2e, 0x53, 0x54, 0x52, 0x00, 0x00 ; 02125DC8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

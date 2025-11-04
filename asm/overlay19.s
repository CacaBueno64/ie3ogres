

	.include "/macros/function.inc"
	.include "/include/overlay19.inc"

	.text
	arm_func_start FUN_ov19_02119f00
FUN_ov19_02119f00: ; 0x02119F00
	ldr r2, _02119F10 ; =0x0211C780
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_02119F10: .word ov19_0211C780
	arm_func_end FUN_ov19_02119f00

	arm_func_start FUN_ov19_02119f14
FUN_ov19_02119f14: ; 0x02119F14
	bx lr
	arm_func_end FUN_ov19_02119f14

	arm_func_start FUN_ov19_02119f18
FUN_ov19_02119f18: ; 0x02119F18
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov19_02119f18

	arm_func_start FUN_ov19_02119f2c
FUN_ov19_02119f2c: ; 0x02119F2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _0211A0F4 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r3]
	mov r7, r1
	mov r5, r2
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x30]
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A0F8 ; =0x0209A0F4
	strh r7, [r6, #8]
	ldrh r0, [r0]
	ldr r7, _0211A0FC ; =0x02099EB4
	orr r0, r0, r5
	mov r1, r0, lsl #0x10
	ldr r0, [r7]
	mov r5, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #1
	ldreq r0, [r7]
	addeq r0, r0, #0xf00
	ldreqh r5, [r0, #0x38]
	streqh r4, [r0, #0x38]
	cmp r5, #0
	streqb r4, [r6, #0x1c5]
	streqb r4, [r6, #0x1c4]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	tst r5, #0x20
	beq _0211A048
	ldr r0, [r6, #0x58]
	cmp r0, #7
	bne _02119FFC
	mov r0, r6
	bl FUN_ov19_0211c3d8
	ldrb r0, [r6, #0x1c5]
	cmp r0, #0
	bne _02119FE8
	mov r0, r6
	bl FUN_ov19_0211c04c
	mov r0, r6
	mov r1, #0xb
	bl FUN_ov19_0211bfc0
	strb r4, [r6, #0x1a8]
_02119FE8:
	mov r1, #1
	ldr r0, _0211A100 ; =0x0211C820
	strb r1, [r6, #0x1c5]
	mov r1, #7
	b _0211A040
_02119FFC:
	cmp r0, #9
	bne _0211A048
	mov r0, r6
	bl FUN_ov19_0211c3d8
	ldrb r0, [r6, #0x1c5]
	cmp r0, #0
	bne _0211A030
	mov r0, r6
	bl FUN_ov19_0211c094
	mov r0, r6
	mov r1, #0xc
	bl FUN_ov19_0211bfc0
	strb r4, [r6, #0x1a8]
_0211A030:
	mov r1, #1
	ldr r0, _0211A100 ; =0x0211C820
	strb r1, [r6, #0x1c5]
	mov r1, #9
_0211A040:
	str r1, [r0, #4]
	str r1, [r6, #0x1c0]
_0211A048:
	tst r5, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x58]
	cmp r0, #7
	bne _0211A0A4
	mov r0, r6
	bl FUN_ov19_0211c3d8
	ldrb r0, [r6, #0x1c5]
	cmp r0, #0
	bne _0211A088
	mov r0, r6
	bl FUN_ov19_0211c028
	mov r0, r6
	mov r1, #0xb
	bl FUN_ov19_0211bfc0
	strb r4, [r6, #0x1a8]
_0211A088:
	mov r1, #1
	strb r1, [r6, #0x1c5]
	ldr r0, _0211A100 ; =0x0211C820
	mov r1, #8
	str r1, [r0, #4]
	str r1, [r6, #0x1c0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A0A4:
	cmp r0, #9
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov19_0211c3d8
	ldrb r0, [r6, #0x1c5]
	cmp r0, #0
	bne _0211A0D8
	mov r0, r6
	bl FUN_ov19_0211c070
	mov r0, r6
	mov r1, #0xc
	bl FUN_ov19_0211bfc0
	strb r4, [r6, #0x1a8]
_0211A0D8:
	mov r1, #1
	ldr r0, _0211A100 ; =0x0211C820
	strb r1, [r6, #0x1c5]
	mov r1, #0xa
	str r1, [r0, #4]
	str r1, [r6, #0x1c0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A0F4: .word unk_02099ED4
_0211A0F8: .word unk_0209A0F4
_0211A0FC: .word unk_02099EB4
_0211A100: .word ov19_0211C820
	arm_func_end FUN_ov19_02119f2c

	arm_func_start FUN_ov19_0211a104
FUN_ov19_0211a104: ; 0x0211A104
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	ldr r9, _0211A418 ; =0x02099EB4
	mov r7, r0
	mov r4, #0
	ldr r0, [r9]
	mov r2, r4
	mov r6, r1
	ldr r8, _0211A41C ; =0x0211C820
	bl FUN_ov16_0210f20c
	ldr r1, _0211A420 ; =0x02099ED4
	mov r5, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #1
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x30]
	cmp r0, #4
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r0, [r6]
	cmp r5, #2
	str r0, [r7, #0x1b4]
	ldrh r0, [r6, #2]
	str r0, [r7, #0x1b8]
	bne _0211A1C8
	ldr r0, [r9]
	bl FUN_ov16_0210f484
	cmp r0, #5
	blt _0211A18C
	ldr r0, [r9]
	bl FUN_ov16_0210f484
	str r0, [r8]
_0211A18C:
	ldr r0, [r8]
	cmp r0, #7
	blt _0211A1A4
	cmp r0, #0xa
	mvnle r0, #0
	strle r0, [r8]
_0211A1A4:
	mov r1, #0
	mov r0, r7
	strb r1, [r7, #0x1a8]
	bl FUN_ov19_0211c3d8
	ldr r1, [r8, #4]
	mov r0, r7
	and r1, r1, #0xff
	bl FUN_ov19_0211bfc0
	b _0211A330
_0211A1C8:
	cmp r5, #1
	bne _0211A218
	ldr r0, [r9]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	str r1, [r8, #4]
	bl FUN_ov19_0211b22c
	ldr r0, [r8, #4]
	cmp r0, #1
	blt _0211A208
	cmp r0, #4
	bgt _0211A208
	ldr r0, [r9]
	bl FUN_ov16_0210f484
	str r0, [r8]
_0211A208:
	ldr r1, [r8, #4]
	mov r0, r7
	bl FUN_ov19_0211c3e8
	b _0211A330
_0211A218:
	cmp r5, #5
	bne _0211A258
	ldr r0, [r9]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	str r1, [r8, #4]
	bl FUN_ov19_0211c3e8
	ldr r0, [r8, #4]
	ldrh r2, [r6]
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldrh r3, [r6, #2]
	mov r0, r7
_0211A250:
	bl FUN_ov19_0211c2bc
	b _0211A330
_0211A258:
	cmp r5, #3
	bne _0211A2C0
	ldr r0, [r9]
	bl FUN_ov16_0210f484
	str r4, [sp, #4]
	str r4, [sp]
	mov r4, r0
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	ldr r0, [r9]
	add r3, sp, #4
	bl FUN_ov16_0210ecb8
	mov r1, r0
	str r1, [r8, #4]
	cmp r4, r1
	strne r4, [r8, #4]
	bne _0211A2A4
	mov r0, r7
	bl FUN_ov19_0211c3e8
_0211A2A4:
	ldr r0, [r8, #4]
	ldrh r2, [r6]
	mov r1, r0, lsl #0x10
	ldrh r3, [r6, #2]
	mov r0, r7
	mov r1, r1, lsr #0x10
	b _0211A250
_0211A2C0:
	cmp r5, #4
	bne _0211A330
	ldr r0, [r9]
	bl FUN_ov16_0210f484
	str r0, [r8, #4]
	mov r0, r7
	bl FUN_ov19_0211c3d8
	ldr r0, [r7, #0x1ac]
	ldr r1, [r8, #4]
	mov r2, r0, lsl #0x10
	mov r0, r7
	and r1, r1, #0xff
	mov r2, r2, asr #0x10
	bl FUN_ov19_0211c008
	ldr r2, [r7, #0x1ac]
	ldr r1, [r8, #4]
	mov r2, r2, lsl #0x10
	mov r0, r7
	and r1, r1, #0xff
	mov r2, r2, lsr #0x10
	bl FUN_ov19_0211c0dc
	ldr r1, [r8, #4]
	mov r0, r7
	and r1, r1, #0xff
	bl FUN_ov19_0211bfc0
	mov r1, r4
	mov r0, r7
	bl FUN_ov19_0211c150
_0211A330:
	mov r0, #0
	str r0, [r7, #0x28]
	str r0, [r7, #0x2c]
	ldrh r0, [r6, #4]
	cmp r0, #1
	bne _0211A3CC
	ldrh r0, [r6]
	strh r0, [r7, #0xc]
	ldrh r0, [r6, #2]
	strh r0, [r7, #0xe]
	ldrh r0, [r6, #4]
	strh r0, [r7, #0x10]
	ldrh r0, [r6, #6]
	strh r0, [r7, #0x12]
	ldrh r0, [r6, #6]
	cmp r0, #0
	ldreq r0, [r7, #0x24]
	cmpeq r0, #0
	bne _0211A3BC
	ldrh r4, [r7, #0xc]
	ldrh r3, [r7, #0xe]
	ldrh r2, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	mov r0, #1
	strh r4, [r7, #0x14]
	strh r3, [r7, #0x16]
	strh r2, [r7, #0x18]
	strh r1, [r7, #0x1a]
	str r0, [r7, #0x28]
	cmp r5, #0
	bne _0211A3BC
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, r7
	bl FUN_ov19_0211c490
_0211A3BC:
	mov r0, #1
	add sp, sp, #8
	str r0, [r7, #0x24]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A3CC:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _0211A400
	ldrh r4, [r7, #0xc]
	ldrh r3, [r7, #0xe]
	ldrh r2, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	mov r0, #1
	strh r4, [r7, #0x1c]
	strh r3, [r7, #0x1e]
	strh r2, [r7, #0x20]
	strh r1, [r7, #0x22]
	str r0, [r7, #0x2c]
_0211A400:
	mov r1, #0
	mov r0, r7
	str r1, [r7, #0x24]
	bl FUN_ov19_0211c3d8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A418: .word unk_02099EB4
_0211A41C: .word ov19_0211C820
_0211A420: .word unk_02099ED4
	arm_func_end FUN_ov19_0211a104

	arm_func_start FUN_ov19_0211a424
FUN_ov19_0211a424: ; 0x0211A424
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #0x60
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x13c
	bl MI_CpuFill8
	ldr r0, _0211A4BC ; =0x02099EB4
	str r5, [r6, #0x19c]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r3, _0211A4C0 ; =0x020A0640
	mov r0, r6
	ldrb r1, [r3, #0xb92]
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #31
	add r2, r2, r1, ror #31
	strb r2, [r6, #0x5c]
	ldrb r1, [r3, #0xb93]
	and r3, r2, #0xff
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #31
	add r2, r2, r1, ror #31
	and r1, r2, #0xff
	strb r2, [r6, #0x5d]
	strb r3, [r6, #0x1c6]
	strb r1, [r6, #0x1c7]
	str r3, [r6, #0x58]
	bl FUN_ov19_0211bebc
	mov r0, r6
	bl FUN_ov19_0211c3d8
	sub r0, r4, #0x61
	str r0, [r6, #0x1c0]
	strb r5, [r6, #0x1a8]
	str r5, [r6, #0x30]
	strb r5, [r6, #0x1ca]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A4BC: .word unk_02099EB4
_0211A4C0: .word unk_020A0640
	arm_func_end FUN_ov19_0211a424

	arm_func_start FUN_ov19_0211a4c4
FUN_ov19_0211a4c4: ; 0x0211A4C4
	mov r1, r0
	ldr r0, _0211A4D8 ; =0x0211C7EC
	ldr r12, _0211A4DC ; = FUN_ov16_020f316c
	add r1, r1, #0x130
	bx r12
_0211A4D8: .word ov19_0211C7EC
_0211A4DC: .word FUN_ov16_020f316c
	arm_func_end FUN_ov19_0211a4c4

	arm_func_start FUN_ov19_0211a4e0
FUN_ov19_0211a4e0: ; 0x0211A4E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x130]
	cmp r6, #0
	ldrne r7, _0211A528 ; =0x0211C634
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x13c
	mov r4, #0xc
_0211A504:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211A504
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A528: .word ov19_0211C634
	arm_func_end FUN_ov19_0211a4e0

	arm_func_start FUN_ov19_0211a52c
FUN_ov19_0211a52c: ; 0x0211A52C
	stmfd sp!, {r4, r5, r6, lr}
	mov r2, #0xc
	mul r5, r1, r2
	mov r6, r0
	add r4, r6, #0x130
	add r0, r4, r5
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r5
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r5]
	add r0, r6, r5
	str r1, [r0, #0x134]
	strb r1, [r0, #0x138]
	strb r1, [r0, #0x139]
	strb r1, [r0, #0x13a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov19_0211a52c

	arm_func_start FUN_ov19_0211a574
FUN_ov19_0211a574: ; 0x0211A574
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x13c]
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
	beq _0211A5CC
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl FUN_ov16_020f1a60
	str r0, [r5]
_0211A5CC:
	cmp r6, #0
	blt _0211A5E4
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl FUN_ov16_020f1138
_0211A5E4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov19_0211a574

	arm_func_start FUN_ov19_0211a5ec
FUN_ov19_0211a5ec: ; 0x0211A5EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl G2S_GetBG2CharPtr
	mov r8, #0x20
	mov r9, #0
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r8
	bl DC_FlushRange
	mov r1, #4
	str r8, [sp, #8]
	mov r7, #2
	str r7, [sp]
	add r6, sp, #8
	mov r0, r10
	str r6, [sp, #4]
	mov r2, r9
	mov r3, r1
	bl FUN_ov19_0211a574
	str r7, [sp]
	mov r2, r0
	mov r0, r10
	mov r1, #5
	mov r3, #8
	str r6, [sp, #4]
	bl FUN_ov19_0211a574
	bl G2S_GetBG1CharPtr
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r8
	bl DC_FlushRange
	mov r5, #1
	str r8, [sp, #8]
	mov r4, #3
	stmia sp, {r5, r6}
	mov r0, r10
	mov r1, r5
	mov r2, r9
	mov r3, r4
	bl FUN_ov19_0211a574
	mov r2, r0
	stmia sp, {r5, r6}
	mov r0, r10
	mov r1, r7
	mov r3, r4
	bl FUN_ov19_0211a574
	mov r1, #6
	mov r2, r0
	stmia sp, {r5, r6}
	mov r0, r10
	mov r3, r1
	bl FUN_ov19_0211a574
	mov r1, #7
	mov r2, r0
	stmia sp, {r5, r6}
	mov r0, r10
	mov r3, r1
	bl FUN_ov19_0211a574
	mov r2, r0
	mov r1, r4
	mov r3, r7
	mov r0, r10
	stmia sp, {r5, r6}
	bl FUN_ov19_0211a574
	bl G2S_GetBG0CharPtr
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2S_GetBG0CharPtr
	mov r1, r8
	bl DC_FlushRange
	str r8, [sp, #8]
	str r9, [sp]
	mov r0, r10
	mov r3, r5
	mov r1, r9
	mov r2, r9
	str r6, [sp, #4]
	bl FUN_ov19_0211a574
	bl FUN_ov16_020f10c8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov19_0211a5ec

	arm_func_start FUN_ov19_0211a754
FUN_ov19_0211a754: ; 0x0211A754
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r1, _0211AAAC ; =0x02099EB4
	mov r7, r0
	ldr r0, [r1]
	mov r1, #0xc8
	bl FUN_ov16_0210ee78
	mov r6, #1
	mov r5, #0
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	mov r4, #0x10
	str r4, [sp, #0x10]
	mov r8, #0x78
	str r8, [sp, #0x14]
	mov r10, #0x20
	mov r0, r7
	str r10, [sp, #0x18]
	mov r9, #0x190
	mov r1, r6
	mov r2, #3
	mov r3, r5
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	stmib sp, {r0, r5}
	mov r0, #0x80
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	str r8, [sp, #0x14]
	mov r11, #2
	str r10, [sp, #0x18]
	mov r0, r7
	mov r1, r11
	mov r2, #3
	mov r3, #4
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	mov r0, #9
	str r0, [sp]
	mov r0, #8
	stmib sp, {r0, r5}
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	str r8, [sp, #0x14]
	mov r1, #3
	str r10, [sp, #0x18]
	mov r0, r7
	mov r2, r1
	mov r3, #8
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	stmib sp, {r0, r5}
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	str r8, [sp, #0x14]
	str r10, [sp, #0x18]
	mov r1, #4
	str r9, [sp, #0x1c]
	mov r0, r7
	mov r2, #3
	mov r3, #0xc
	bl FUN_ov19_0211b444
	str r6, [sp]
	stmib sp, {r5, r6}
	ldr r8, _0211AAB0 ; =0x0211C5C4
	mov r1, #5
	ldr r3, [r8]
	mov r0, r7
	str r3, [sp, #0xc]
	ldr r12, [r8, #4]
	mov r2, r6
	str r12, [sp, #0x10]
	ldr r12, [r8, #0x38]
	mov r3, r5
	str r12, [sp, #0x14]
	ldr r12, [r8, #0x3c]
	str r12, [sp, #0x18]
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	str r6, [sp]
	stmib sp, {r5, r11}
	ldr r1, [r8, #0x18]
	mov r0, r7
	str r1, [sp, #0xc]
	ldr r1, [r8, #0x1c]
	str r1, [sp, #0x10]
	ldr r2, [r8, #8]
	mov r1, #6
	str r2, [sp, #0x14]
	ldr r3, [r8, #0xc]
	mov r2, r11
	str r3, [sp, #0x18]
	str r9, [sp, #0x1c]
	mov r3, r5
	bl FUN_ov19_0211b444
	str r6, [sp]
	stmib sp, {r5, r10}
	ldr r1, [r8, #0x10]
	mov r0, r7
	str r1, [sp, #0xc]
	ldr r1, [r8, #0x14]
	str r1, [sp, #0x10]
	ldr r2, [r8, #0x30]
	mov r1, #7
	str r2, [sp, #0x14]
	ldr r3, [r8, #0x34]
	mov r2, #6
	str r3, [sp, #0x18]
	mov r3, r5
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	mov r0, #3
	stmia sp, {r0, r11}
	str r4, [sp, #8]
	ldr r2, [r8, #0x68]
	mov r1, #8
	str r2, [sp, #0xc]
	ldr r3, [r8, #0x6c]
	mov r0, r7
	str r3, [sp, #0x10]
	ldr r12, [r8, #0x30]
	mov r2, #6
	str r12, [sp, #0x14]
	ldr r12, [r8, #0x34]
	mov r3, r11
	str r12, [sp, #0x18]
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	str r6, [sp]
	stmib sp, {r5, r10}
	ldr r2, [r8, #0x20]
	mov r1, #9
	str r2, [sp, #0xc]
	ldr r3, [r8, #0x24]
	mov r0, r7
	str r3, [sp, #0x10]
	ldr r10, [r8, #0x30]
	mov r2, #6
	str r10, [sp, #0x14]
	ldr r10, [r8, #0x34]
	mov r3, r5
	str r10, [sp, #0x18]
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	mov r0, #3
	stmia sp, {r0, r11}
	str r4, [sp, #8]
	ldr r1, [r8, #0x58]
	mov r2, #6
	str r1, [sp, #0xc]
	ldr r4, [r8, #0x5c]
	mov r3, r11
	str r4, [sp, #0x10]
	ldr r4, [r8, #0x30]
	mov r0, r7
	str r4, [sp, #0x14]
	ldr r4, [r8, #0x34]
	mov r1, #0xa
	str r4, [sp, #0x18]
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldrb r1, [r7, #0x1a4]
	ldr r2, [r8, #0x40]
	mov r4, #0x18
	mla r2, r1, r4, r2
	str r2, [sp, #0xc]
	ldr r2, [r8, #0x44]
	mov r0, r7
	str r2, [sp, #0x10]
	ldr r3, [r8, #0x50]
	mov r1, #0xb
	str r3, [sp, #0x14]
	ldr r10, [r8, #0x54]
	mov r2, #7
	str r10, [sp, #0x18]
	mov r3, r5
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r3, r5
	ldrb r5, [r7, #0x1a5]
	ldr r6, [r8, #0x48]
	mov r1, #0xc
	mla r4, r5, r4, r6
	str r4, [sp, #0xc]
	ldr r4, [r8, #0x4c]
	mov r2, #7
	str r4, [sp, #0x10]
	ldr r4, [r8, #0x50]
	mov r0, r7
	str r4, [sp, #0x14]
	ldr r4, [r8, #0x54]
	str r4, [sp, #0x18]
	str r9, [sp, #0x1c]
	bl FUN_ov19_0211b444
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AAAC: .word unk_02099EB4
_0211AAB0: .word ov19_0211C5C4
	arm_func_end FUN_ov19_0211a754

	arm_func_start FUN_ov19_0211aab4
FUN_ov19_0211aab4: ; 0x0211AAB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	b _0211AAC8
_0211AAC4:
	add r0, r0, #1
_0211AAC8:
	cmp r0, #1
	blt _0211AAC4
	mov r0, #0
	b _0211AADC
_0211AAD8:
	add r0, r0, #1
_0211AADC:
	cmp r0, #8
	blt _0211AAD8
	ldr r0, _0211AB00 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	mov r0, r4
	mov r1, #0
	bl FUN_ov19_0211a52c
	ldmfd sp!, {r4, pc}
_0211AB00: .word unk_02099EB4
	arm_func_end FUN_ov19_0211aab4

	arm_func_start FUN_ov19_0211ab04
FUN_ov19_0211ab04: ; 0x0211AB04
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrb r1, [r4, #0x1ca]
	cmp r1, #0
	bne _0211AB2C
	ldrb r2, [r4, #0x5d]
	ldr r1, _0211AB88 ; =0x020A0640
	strb r2, [r1, #0xb93]
	bl FUN_ov19_0211c1e4
	ldmfd sp!, {r4, r5, r6, pc}
_0211AB2C:
	ldrb r2, [r4, #0x1c6]
	ldr r1, _0211AB88 ; =0x020A0640
	strb r2, [r1, #0xb92]
	ldrb r2, [r4, #0x1c7]
	strb r2, [r1, #0xb93]
	ldrb r1, [r4, #0x1c8]
	bl FUN_ov19_0211bf78
	mov r6, r0
	ldrb r1, [r4, #0x1c9]
	mov r0, r4
	bl FUN_ov19_0211bf78
	ldr r2, _0211AB8C ; =0x020A1140
	ldr r4, _0211AB90 ; =gL5Sound
	mov r5, r0
	strh r6, [r2, #0x94]
	mov r0, r4
	mov r1, r6
	strh r5, [r2, #0x96]
	bl FUN_0202bb58
	mov r0, r4
	mov r1, r5
	bl FUN_0202bb94
	ldmfd sp!, {r4, r5, r6, pc}
_0211AB88: .word unk_020A0640
_0211AB8C: .word unk_020A1140
_0211AB90: .word gL5Sound
	arm_func_end FUN_ov19_0211ab04

	arm_func_start FUN_ov19_0211ab94
FUN_ov19_0211ab94: ; 0x0211AB94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, #1
	mov r6, #0x12c
	ldr r5, _0211ABFC ; =0x02099EB4
	b _0211ABCC
_0211ABAC:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov16_0210e7d0
	mov r1, r6
	bl FUN_ov16_0210e694
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
_0211ABCC:
	cmp r7, #4
	bls _0211ABAC
	ldrb r1, [r4, #0x5d]
	mov r0, r4
	add r1, r1, #1
	bl FUN_ov19_0211b22c
	mov r2, #0xf0
	ldr r1, _0211AC00 ; =0x0211C810
	ldr r0, _0211AC04 ; =0x021253E0
	strh r2, [r4, #0x5e]
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ABFC: .word unk_02099EB4
_0211AC00: .word ov19_0211C810
_0211AC04: .word ov93_021253E0
	arm_func_end FUN_ov19_0211ab94

	arm_func_start FUN_ov19_0211ac08
FUN_ov19_0211ac08: ; 0x0211AC08
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x30]
	mov r4, #0
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211AC24: ; jump table
	b _0211AC40 ; case 0
	b _0211AC68 ; case 1
	b _0211ACA8 ; case 2
	b _0211ACD0 ; case 3
	b _0211AD00 ; case 4
	b _0211AD1C ; case 5
	b _0211AD3C ; case 6
_0211AC40:
	ldr r0, [r5, #4]
	bl FUN_02042054
	cmp r0, #0x6a
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	bl FUN_02041fec
	cmp r0, #0x6a
	moveq r0, #1
	streq r0, [r5, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AC68:
	ldr r0, [r5, #4]
	bl FUN_02042054
	cmp r0, #0x6a
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	bl FUN_02041fec
	cmp r0, #0x6a
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #6
	bl FUN_ov19_0211adec
	mov r0, r5
	bl FUN_ov19_0211a4c4
	mov r0, #2
	str r0, [r5, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_0211ACA8:
	add r0, r5, #0x130
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov19_0211a4e0
	mov r0, #3
	str r0, [r5, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_0211ACD0:
	bl FUN_ov19_0211a5ec
	mov r0, r5
	bl FUN_ov19_0211a754
	mov r0, r5
	bl FUN_ov19_0211baac
	mov r0, r5
	bl FUN_ov19_0211ab94
	mov r0, #6
	bl FUN_ov16_020f1490
	mov r0, #4
	str r0, [r5, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AD00:
	ldr r1, [r5, #0x58]
	bl FUN_ov19_0211ae48
	mov r0, r5
	bl FUN_ov19_0211c214
	mov r0, r5
	bl FUN_ov19_0211b034
	ldmfd sp!, {r3, r4, r5, pc}
_0211AD1C:
	bl FUN_ov16_020f1670
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov19_0211aab4
	mov r0, #6
	str r0, [r5, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AD3C:
	ldr r1, _0211AD80 ; =0x021253E0
	ldr r1, [r1, #8]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r3, [r5, #0x5c]
	ldr r2, _0211AD84 ; =0x020A0640
	mov r1, #4
	strb r3, [r2, #0xb92]
	bl FUN_ov19_0211adec
	ldr r5, [r5, #4]
	mov r1, r4
	mov r0, r5
	bl FUN_02041f2c
	mov r0, r5
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211AD80: .word ov93_021253E0
_0211AD84: .word unk_020A0640
	arm_func_end FUN_ov19_0211ac08

	arm_func_start FUN_ov19_0211ad88
FUN_ov19_0211ad88: ; 0x0211AD88
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x30]
	cmp r0, #4
	cmpne r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r4, #0x600
	ldr r1, _0211ADE4 ; =0x020A8C40
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	ldr r1, _0211ADE8 ; =0x020A9440
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	mov r0, r6
	bl FUN_ov19_0211b628
	mov r0, r6
	bl FUN_ov19_0211b5e8
	mov r0, r6
	bl FUN_ov19_0211b770
	ldmfd sp!, {r4, r5, r6, pc}
_0211ADE4: .word unk_020A8C40
_0211ADE8: .word unk_020A9440
	arm_func_end FUN_ov19_0211ad88

	arm_func_start FUN_ov19_0211adec
FUN_ov19_0211adec: ; 0x0211ADEC
	stmfd sp!, {r4, lr}
	ldr r0, [r0, #4]
	mov r4, r1
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, r4
	bl FUN_ov16_020f4894
	cmp r4, #4
	beq _0211AE30
	cmp r4, #6
	ldreq r1, _0211AE44 ; =0x04000304
	ldreqh r0, [r1]
	orreq r0, r0, #0x8000
	streqh r0, [r1]
	ldmfd sp!, {r4, pc}
_0211AE30:
	ldr r1, _0211AE44 ; =0x04000304
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	ldmfd sp!, {r4, pc}
_0211AE44: .word 0x04000304
	arm_func_end FUN_ov19_0211adec

	arm_func_start FUN_ov19_0211ae48
FUN_ov19_0211ae48: ; 0x0211AE48
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldr r0, [r7, #0x24]
	mov r6, r1
	cmp r0, #0
	addne sp, sp, #0x10
	mov r2, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B02C ; =0x0209A0F4
	ldrh r3, [r7, #8]
	ldrh r1, [r0]
	ldrh r0, [r7, #0x5e]
	orr r5, r3, r1
	tst r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r7, #0x5d]
	ldrb r3, [r7, #0x5c]
	mov r0, r2
	cmp r1, #1
	moveq r0, #2
	cmp r3, #1
	mov r1, #3
	moveq r1, #4
	add r12, sp, #0
	mov r3, #0
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	str r3, [r12, #0xc]
	cmp r6, #0xc
	addls pc, pc, r6, lsl #2
	b _0211AF7C
_0211AED0: ; jump table
	b _0211AF7C ; case 0
	b _0211AF28 ; case 1
	b _0211AF38 ; case 2
	b _0211AF04 ; case 3
	b _0211AF20 ; case 4
	b _0211AF7C ; case 5
	b _0211AF7C ; case 6
	b _0211AF50 ; case 7
	b _0211AF50 ; case 8
	b _0211AF64 ; case 9
	b _0211AF64 ; case 10
	b _0211AF50 ; case 11
	b _0211AF64 ; case 12
_0211AF04:
	mov r1, #4
_0211AF08:
	mov r2, #7
	str r0, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	b _0211AF7C
_0211AF20:
	mov r1, #3
	b _0211AF08
_0211AF28:
	mov r0, #2
	str r2, [sp]
	str r1, [sp, #4]
	b _0211AF74
_0211AF38:
	mov r0, #2
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	b _0211AF7C
_0211AF50:
	mov r0, #7
	mov r2, #9
	str r1, [sp]
	str r2, [sp, #4]
	b _0211AF74
_0211AF64:
	mov r0, #9
	mov r1, #7
	str r1, [sp]
	str r0, [sp, #4]
_0211AF74:
	str r0, [sp, #8]
	str r0, [sp, #0xc]
_0211AF7C:
	tst r5, #0x40
	mov r8, #0
	ldrne r4, [sp]
	movne r8, #1
	tst r5, #0x80
	ldrne r4, [sp, #4]
	movne r8, #1
	tst r5, #0x20
	ldrne r0, [r7, #0x58]
	ldrne r4, [sp, #8]
	cmpne r0, #7
	cmpne r0, #9
	movne r8, #1
	tst r5, #0x10
	ldrne r4, [sp, #0xc]
	ldrne r0, [r7, #0x58]
	mov r1, r4
	cmpne r0, #7
	cmpne r0, #9
	mov r0, r7
	movne r8, #1
	bl FUN_ov19_0211b22c
	cmp r6, r4
	beq _0211B00C
	cmp r4, #1
	blt _0211B00C
	cmp r4, #4
	bgt _0211B00C
	tst r5, #0x30
	beq _0211B00C
	mov r0, r7
	bl FUN_ov19_0211b294
	ldr r0, _0211B030 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	mov r8, #0
_0211B00C:
	cmp r8, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B030 ; =gL5Sound
	mov r1, #3
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B02C: .word unk_0209A0F4
_0211B030: .word gL5Sound
	arm_func_end FUN_ov19_0211ae48

	arm_func_start FUN_ov19_0211b034
FUN_ov19_0211b034: ; 0x0211B034
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211B068 ; =0x02099EB4
	mov r5, r0
	mov r4, #1
	ldr r0, [r1]
	mov r1, r4
	bl FUN_ov16_0210eeec
	mov r0, r5
	bl FUN_ov19_0211b070
	ldr r0, _0211B06C ; =0x0211C820
	sub r1, r4, #2
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B068: .word unk_02099EB4
_0211B06C: .word ov19_0211C820
	arm_func_end FUN_ov19_0211b034

	arm_func_start FUN_ov19_0211b070
FUN_ov19_0211b070: ; 0x0211B070
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldrh r0, [r7, #8]
	ldr r8, _0211B220 ; =0x0211C820
	cmp r0, #1
	ldr r6, [r8]
	bne _0211B0C0
	mov r5, #1
	ldr r0, _0211B224 ; =gL5Sound
	mov r1, r5
	bl FUN_0202cf6c
	mov r4, #5
	mov r0, #6
	str r4, [r8, #4]
	bl FUN_ov16_020f153c
	ldr r0, _0211B228 ; =0x021253E0
	mov r1, #0
	str r5, [r0, #4]
	strb r1, [r7, #0x1ca]
	str r4, [r7, #0x30]
_0211B0C0:
	ldrh r0, [r7, #8]
	cmp r0, #2
	bne _0211B100
	ldr r0, _0211B224 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldr r1, _0211B220 ; =0x0211C820
	mov r0, #6
	str r0, [r1, #4]
	bl FUN_ov16_020f153c
	ldr r0, _0211B228 ; =0x021253E0
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #5
	strb r1, [r7, #0x1ca]
	str r0, [r7, #0x30]
_0211B100:
	cmp r6, #1
	blt _0211B124
	cmp r6, #4
	bgt _0211B124
	mov r0, r7
	mov r1, r6
	bl FUN_ov19_0211b26c
	mov r0, r7
	bl FUN_ov19_0211b294
_0211B124:
	cmp r6, #0xa
	addls pc, pc, r6, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B130: ; jump table
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 3
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 4
	b _0211B15C ; case 5
	b _0211B190 ; case 6
	b _0211B1C0 ; case 7
	b _0211B1D8 ; case 8
	b _0211B1F0 ; case 9
	b _0211B208 ; case 10
_0211B15C:
	mov r4, #1
	ldr r0, _0211B224 ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r0, _0211B228 ; =0x021253E0
	mov r1, #0
	str r4, [r0, #4]
	mov r0, #5
	strb r1, [r7, #0x1ca]
	str r0, [r7, #0x30]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B190:
	ldr r0, _0211B224 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r0, _0211B228 ; =0x021253E0
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #5
	strb r1, [r7, #0x1ca]
	str r0, [r7, #0x30]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B1C0:
	mov r0, r7
	bl FUN_ov19_0211c04c
	mov r0, r7
	mov r1, #0xb
	bl FUN_ov19_0211bfc0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B1D8:
	mov r0, r7
	bl FUN_ov19_0211c028
	mov r0, r7
	mov r1, #0xb
	bl FUN_ov19_0211bfc0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B1F0:
	mov r0, r7
	bl FUN_ov19_0211c094
	mov r0, r7
	mov r1, #0xc
	bl FUN_ov19_0211bfc0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B208:
	mov r0, r7
	bl FUN_ov19_0211c070
	mov r0, r7
	mov r1, #0xc
	bl FUN_ov19_0211bfc0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B220: .word ov19_0211C820
_0211B224: .word gL5Sound
_0211B228: .word ov93_021253E0
	arm_func_end FUN_ov19_0211b070

	arm_func_start FUN_ov19_0211b22c
FUN_ov19_0211b22c: ; 0x0211B22C
	cmp r1, #7
	cmpne r1, #8
	cmpne r1, #0xb
	moveq r1, #7
	streq r1, [r0, #0x58]
	bxeq lr
	cmp r1, #9
	cmpne r1, #0xa
	cmpne r1, #0xc
	moveq r1, #9
	streq r1, [r0, #0x58]
	bxeq lr
	cmp r1, #5
	cmpne r1, #6
	strne r1, [r0, #0x58]
	bx lr
	arm_func_end FUN_ov19_0211b22c

	arm_func_start FUN_ov19_0211b26c
FUN_ov19_0211b26c: ; 0x0211B26C
	stmfd sp!, {r3, lr}
	cmp r1, #1
	ldmltfd sp!, {r3, pc}
	cmp r1, #4
	ldmgtfd sp!, {r3, pc}
	ldr r0, _0211B290 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211B290: .word gL5Sound
	arm_func_end FUN_ov19_0211b26c

	arm_func_start FUN_ov19_0211b294
FUN_ov19_0211b294: ; 0x0211B294
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x58]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211B2AC: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0211B348 ; case 1
	b _0211B384 ; case 2
	b _0211B2C0 ; case 3
	b _0211B304 ; case 4
_0211B2C0:
	mov r1, #0
	mov r0, #2
	strb r1, [r5, #0x5c]
	bl FUN_02075698
	mov r2, #0xa
	mov r0, r5
	mov r1, #3
	mov r3, #0xb
	str r2, [sp]
	bl FUN_ov19_0211b7bc
	mov r2, #0xc
	mov r0, r5
	mov r1, #4
	mov r3, #0xd
	str r2, [sp]
	bl FUN_ov19_0211b7bc
	ldmfd sp!, {r3, r4, r5, pc}
_0211B304:
	mov r1, #1
	mov r0, #7
	strb r1, [r5, #0x5c]
	bl FUN_02075698
	mov r2, #8
	mov r0, r5
	mov r1, #3
	mov r3, #9
	str r2, [sp]
	bl FUN_ov19_0211b7bc
	mov r2, #0xe
	mov r0, r5
	mov r1, #4
	mov r3, #0xf
	str r2, [sp]
	bl FUN_ov19_0211b7bc
	ldmfd sp!, {r3, r4, r5, pc}
_0211B348:
	mov r1, #0
	mov r4, #2
	strb r1, [r5, #0x5d]
	mov r2, r4
	mov r1, #1
	mov r3, #3
	str r4, [sp]
	bl FUN_ov19_0211b7bc
	mov r2, #4
	mov r0, r5
	mov r1, r4
	mov r3, #5
	str r2, [sp]
	bl FUN_ov19_0211b7bc
	ldmfd sp!, {r3, r4, r5, pc}
_0211B384:
	mov r1, #1
	mov r3, r1
	strb r1, [r5, #0x5d]
	mov r2, #0
	str r2, [sp]
	bl FUN_ov19_0211b7bc
	mov r2, #6
	mov r0, r5
	mov r1, #2
	mov r3, #7
	str r2, [sp]
	bl FUN_ov19_0211b7bc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov19_0211b294

	arm_func_start FUN_ov19_0211b3b8
FUN_ov19_0211b3b8: ; 0x0211B3B8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211B400 ; =0x02099EB4
	mov r6, r0
	mov r5, #5
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_0210e7d0
	mov r1, #0
	bl FUN_ov16_0210e694
	mov r0, #1
	str r0, [r6, #0x1a0]
	ldr r0, [r4]
	mov r1, r5
	mov r4, #0x12c
	bl FUN_ov16_0210e7d0
	mov r1, r4
	bl FUN_ov16_0210e694
	ldmfd sp!, {r4, r5, r6, pc}
_0211B400: .word unk_02099EB4
	arm_func_end FUN_ov19_0211b3b8

	arm_func_start FUN_ov19_0211b404
FUN_ov19_0211b404: ; 0x0211B404
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211B440 ; =0x02099EB4
	mov r5, #6
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_0210e7d0
	mov r1, #0
	bl FUN_ov16_0210e694
	ldr r0, [r4]
	mov r1, r5
	mov r4, #0x12c
	bl FUN_ov16_0210e7d0
	mov r1, r4
	bl FUN_ov16_0210e694
	ldmfd sp!, {r3, r4, r5, pc}
_0211B440: .word unk_02099EB4
	arm_func_end FUN_ov19_0211b404

	arm_func_start FUN_ov19_0211b444
FUN_ov19_0211b444: ; 0x0211B444
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x40]
	ldr r5, [sp, #0x44]
	str r4, [sp]
	ldr r4, [sp, #0x48]
	str r5, [sp, #4]
	mov r8, r1
	mov r6, r3
	mov r5, #1
	ldr r3, [sp, #0x4c]
	str r4, [sp, #8]
	ldr r1, _0211B588 ; =0x02099EB4
	str r3, [sp, #0xc]
	mov r9, r0
	mov r4, r8, lsl #0x10
	mov r7, r2
	ldr r0, [r1]
	ldr r3, [sp, #0x3c]
	mov r1, r5
	mov r2, r4, lsr #0x10
	bl FUN_ov16_0210fba4
	ldr r1, [sp, #0x38]
	mov r4, r0
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e68c
	mov r2, r6
	add r0, r4, #0x3a
	mov r1, r7
	mov r6, #0
	mov r3, r6
	bl FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r7
	ldr r2, [sp, #0x30]
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r1, r7
	add r0, r4, #0x42
	ldr r2, [sp, #0x34]
	mov r3, r6
	bl FUN_ov16_0210e720
	add r0, r4, #0x3a
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0210e6fc
	mov r3, r6
	add r0, r4, #0x42
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_0210e6fc
	ldr r1, _0211B58C ; =FUN_ov19_0211b5a8
	ldr r0, _0211B590 ; =FUN_ov19_0211b59c
	str r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r1, _0211B594 ; =FUN_ov19_0211b5c4
	ldr r0, _0211B598 ; =FUN_ov19_0211b5d0
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r0, r4
	mov r1, #0x12c
	bl FUN_ov16_0210e694
	add r3, r9, r8, lsl #4
	mov r0, r4
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	str r2, [r3, #0x60]
	str r1, [r3, #0x64]
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	str r2, [r3, #0x68]
	str r1, [r3, #0x6c]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B588: .word unk_02099EB4
_0211B58C: .word FUN_ov19_0211b5a8
_0211B590: .word FUN_ov19_0211b59c
_0211B594: .word FUN_ov19_0211b5c4
_0211B598: .word FUN_ov19_0211b5d0
	arm_func_end FUN_ov19_0211b444

	arm_func_start FUN_ov19_0211b59c
FUN_ov19_0211b59c: ; 0x0211B59C
	mov r1, #0
	strb r1, [r0, #0xe]
	bx lr
	arm_func_end FUN_ov19_0211b59c

	arm_func_start FUN_ov19_0211b5a8
FUN_ov19_0211b5a8: ; 0x0211B5A8
	ldrh r3, [r0, #8]
	ldr r1, _0211B5C0 ; =0x0211C820
	mov r2, #1
	str r3, [r1, #4]
	strb r2, [r0, #0xe]
	bx lr
_0211B5C0: .word ov19_0211C820
	arm_func_end FUN_ov19_0211b5a8

	arm_func_start FUN_ov19_0211b5c4
FUN_ov19_0211b5c4: ; 0x0211B5C4
	mov r1, #2
	strb r1, [r0, #0xe]
	bx lr
	arm_func_end FUN_ov19_0211b5c4

	arm_func_start FUN_ov19_0211b5d0
FUN_ov19_0211b5d0: ; 0x0211B5D0
	ldrh r1, [r0, #8]
	ldr r0, _0211B5E4 ; =0x0211C820
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
_0211B5E4: .word ov19_0211C820
	arm_func_end FUN_ov19_0211b5d0

	arm_func_start FUN_ov19_0211b5e8
FUN_ov19_0211b5e8: ; 0x0211B5E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov19_0211b3b8
	mov r0, r4
	bl FUN_ov19_0211b404
	mov r0, r4
	bl FUN_ov19_0211b824
	mov r0, r4
	bl FUN_ov19_0211b8f8
	mov r0, r4
	bl FUN_ov19_0211bc14
	mov r0, r4
	bl FUN_ov19_0211bd00
	mov r0, r4
	bl FUN_ov19_0211b9e8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov19_0211b5e8

	arm_func_start FUN_ov19_0211b628
FUN_ov19_0211b628: ; 0x0211B628
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	mov r1, #0x20
	str r1, [sp]
	mov r2, #0x18
	mov r1, #0
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, r1
	str r1, [sp, #0x10]
	bl FUN_ov19_0211b720
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov19_0211b628

	arm_func_start FUN_ov19_0211b668
FUN_ov19_0211b668: ; 0x0211B668
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	ldr lr, _0211B718 ; =0x020A8440
	mul r4, r0, r12
	ldr r5, [sp, #0x30]
	ldrh r7, [sp, #0x28]
	mul r6, r5, r4
	ldr r4, [sp, #0x2c]
	mov r5, r7, lsl #0xc
	strh r5, [sp, #0x28]
	add r4, r4, r6, lsl #1
	add r1, lr, r1, lsl #11
	ldrh r6, [sp, #0x28]
	ldr r5, _0211B71C ; =0x00000FFF
	b _0211B70C
_0211B6A8:
	cmp r3, #0
	addlt r4, r4, r0, lsl #1
	blt _0211B704
	cmp r3, #0x18
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r7, r2, r3, lsl #5
	mov r8, r2
	mov lr, r0
	add r9, r1, r7, lsl #1
	b _0211B6FC
_0211B6D0:
	cmp r8, #0
	blt _0211B6EC
	cmp r8, #0x20
	ldrlth r7, [r4]
	andlt r7, r7, r5
	orrlt r7, r7, r6
	strlth r7, [r9]
_0211B6EC:
	sub lr, lr, #1
	add r8, r8, #1
	add r4, r4, #2
	add r9, r9, #2
_0211B6FC:
	cmp lr, #0
	bgt _0211B6D0
_0211B704:
	sub r12, r12, #1
	add r3, r3, #1
_0211B70C:
	cmp r12, #0
	bgt _0211B6A8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B718: .word unk_020A8440
_0211B71C: .word 0x00000FFF
	arm_func_end FUN_ov19_0211b668

	arm_func_start FUN_ov19_0211b720
FUN_ov19_0211b720: ; 0x0211B720
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	ldr lr, [sp, #0x2c]
	mov r12, #0xc
	mla r4, lr, r12, r0
	ldr r4, [r4, #0x13c]
	ldr lr, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str lr, [sp]
	ldrh lr, [sp, #0x28]
	str r12, [sp, #4]
	ldr r12, [sp, #0x30]
	str lr, [sp, #8]
	ldr lr, [r4, #0xc]
	add lr, r4, lr
	str lr, [sp, #0xc]
	str r12, [sp, #0x10]
	bl FUN_ov19_0211b668
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov19_0211b720

	arm_func_start FUN_ov19_0211b770
FUN_ov19_0211b770: ; 0x0211B770
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x600
	ldr r0, _0211B7B0 ; =0x020A9440
	mov r1, r5
	mov r2, r4
	bl GXS_LoadBG2Scr
	ldr r0, _0211B7B4 ; =0x020A8C40
	mov r1, r5
	mov r2, r4
	bl GXS_LoadBG1Scr
	ldr r0, _0211B7B8 ; =0x020A8440
	mov r1, r5
	mov r2, r4
	bl GXS_LoadBG0Scr
	ldmfd sp!, {r3, r4, r5, pc}
_0211B7B0: .word unk_020A9440
_0211B7B4: .word unk_020A8C40
_0211B7B8: .word unk_020A8440
	arm_func_end FUN_ov19_0211b770

	arm_func_start FUN_ov19_0211b7bc
FUN_ov19_0211b7bc: ; 0x0211B7BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _0211B820 ; =0x02099EB4
	mov r8, r2
	ldr r0, [r0]
	mov r7, r3
	bl FUN_ov16_0210e7d0
	mov r6, r0
	mov r5, #3
	mov r4, #0
	mov r1, r5
	mov r2, r8
	mov r3, r4
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r2, r7
	add r0, r6, #0x3e
	mov r1, r5
	mov r3, r4
	bl FUN_ov16_0210e720
	add r0, r6, #0x42
	mov r1, r5
	mov r3, r4
	ldr r2, [sp, #0x18]
	bl FUN_ov16_0210e720
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B820: .word unk_02099EB4
	arm_func_end FUN_ov19_0211b7bc

	arm_func_start FUN_ov19_0211b824
FUN_ov19_0211b824: ; 0x0211B824
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r7, #1
	mov r8, r0
	mov r6, #2
	mov r5, r7
	ldr r4, _0211B8F4 ; =0x02099EB4
	b _0211B8E4
_0211B844:
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov16_0210e7d0
	ldrb r2, [r0, #0xe]
	ldrh r1, [r0, #0x32]
	add r2, r0, r2, lsl #2
	cmp r1, #0xc8
	ldrb r3, [r2, #0x3b]
	addlo sp, sp, #0x14
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r2, r8, r7, lsl #4
	ldr lr, [r2, #0x68]
	mov r1, r5
	mov r12, lr, asr #2
	add r12, lr, r12, lsr #29
	mov r12, r12, asr #3
	str r12, [sp]
	ldr lr, [r2, #0x6c]
	mov r12, lr, asr #2
	add r12, lr, r12, lsr #29
	mov r12, r12, asr #3
	str r12, [sp, #4]
	str r6, [sp, #8]
	ldrb r12, [r0, #0xe]
	add r0, r0, r12, lsl #2
	ldrb r12, [r0, #0x3a]
	mov r0, r8
	str r12, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr lr, [r2, #0x60]
	ldr r12, [r2, #0x64]
	mov r2, lr, asr #2
	mov r3, r12, asr #2
	add r2, lr, r2, lsr #29
	add r3, r12, r3, lsr #29
	mov r2, r2, asr #3
	mov r3, r3, asr #3
	bl FUN_ov19_0211b720
	add r0, r7, #1
	and r7, r0, #0xff
_0211B8E4:
	cmp r7, #5
	blo _0211B844
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B8F4: .word unk_02099EB4
	arm_func_end FUN_ov19_0211b824

	arm_func_start FUN_ov19_0211b8f8
FUN_ov19_0211b8f8: ; 0x0211B8F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r10, r0
	mov r9, #5
	mvn r8, #0
	mov r7, #3
	mov r6, #1
	ldr r4, _0211B9E0 ; =0x0211C820
	ldr r5, _0211B9E4 ; =0x02099EB4
	b _0211B9D0
_0211B920:
	ldr r0, [r5]
	mov r1, r9
	bl FUN_ov16_0210e7d0
	ldrh r1, [r0, #0x32]
	cmp r1, #0
	beq _0211B9C4
	ldrb r2, [r0, #0xe]
	ldr r1, [r4, #4]
	add r2, r0, r2, lsl #2
	ldrb r3, [r2, #0x3b]
	cmp r9, r1
	add r2, r10, r9, lsl #4
	ldreqb r3, [r0, #0x3f]
	mov r1, r6
	streq r8, [r4, #4]
	ldr lr, [r2, #0x68]
	mov r12, lr, asr #2
	add r12, lr, r12, lsr #29
	mov r12, r12, asr #3
	str r12, [sp]
	ldr lr, [r2, #0x6c]
	mov r12, lr, asr #2
	add r12, lr, r12, lsr #29
	mov r12, r12, asr #3
	str r12, [sp, #4]
	str r7, [sp, #8]
	ldrb r12, [r0, #0xe]
	add r0, r0, r12, lsl #2
	ldrb r12, [r0, #0x3a]
	mov r0, r10
	str r12, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r12, [r2, #0x60]
	ldr r3, [r2, #0x64]
	mov lr, r12, asr #2
	mov r2, r3, asr #2
	add r3, r3, r2, lsr #29
	add r12, r12, lr, lsr #29
	mov r2, r12, asr #3
	mov r3, r3, asr #3
	bl FUN_ov19_0211b720
_0211B9C4:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
_0211B9D0:
	cmp r9, #7
	blo _0211B920
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B9E0: .word ov19_0211C820
_0211B9E4: .word unk_02099EB4
	arm_func_end FUN_ov19_0211b8f8

	arm_func_start FUN_ov19_0211b9e8
FUN_ov19_0211b9e8: ; 0x0211B9E8
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r3, [r0, #0x58]
	cmp r3, #1
	blt _0211BA58
	cmp r3, #4
	bgt _0211BA58
	mov r1, #0xf
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	add r1, r0, r3, lsl #4
	ldr r3, [r1, #0x64]
	ldr r12, [r1, #0x60]
	mov r2, r3, asr #2
	mov r1, r12, asr #2
	add r3, r3, r2, lsr #29
	add r1, r12, r1, lsr #29
	mov r2, r1, asr #3
	mov r3, r3, asr #3
	mov r1, #2
	bl FUN_ov19_0211b720
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0211BA58:
	mov r1, #0x16
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #8
	cmp r3, #9
	cmpne r3, #0xa
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	mov r12, #0
	mov r2, #0
	cmpne r3, #0xc
	moveq r2, #3
	add r3, r2, #0xe
	mov r1, #2
	mov r2, #0xa
	str r12, [sp, #0x10]
	bl FUN_ov19_0211b720
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov19_0211b9e8

	arm_func_start FUN_ov19_0211baac
FUN_ov19_0211baac: ; 0x0211BAAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, #3
	mov r9, r0
	mov r8, #1
	mov r10, #8
	mov r7, #0xa
	mov r6, r11
	mov r5, #0xb
	ldr r4, _0211BC10 ; =0x02099EB4
	b _0211BC04
_0211BAD4:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov16_0210e7d0
	cmp r8, #4
	addls pc, pc, r8, lsl #2
	b _0211BBFC
_0211BAEC: ; jump table
	b _0211BBFC ; case 0
	b _0211BB7C ; case 1
	b _0211BBBC ; case 2
	b _0211BB00 ; case 3
	b _0211BB3C ; case 4
_0211BB00:
	ldrb r0, [r9, #0x5c]
	cmp r0, #0
	bne _0211BB24
	str r7, [sp]
	mov r0, r9
	mov r1, r6
	mov r2, r7
	mov r3, r5
	b _0211BBF8
_0211BB24:
	str r10, [sp]
	mov r0, r9
	mov r1, r11
	mov r2, r10
	mov r3, #9
	b _0211BBF8
_0211BB3C:
	ldrb r0, [r9, #0x5c]
	mov r1, #4
	cmp r0, #1
	bne _0211BB64
	mov r0, #0xe
	str r0, [sp]
	mov r0, r9
	mov r2, #0xe
	mov r3, #0xf
	b _0211BBF8
_0211BB64:
	mov r0, #0xc
	str r0, [sp]
	mov r0, r9
	mov r2, #0xc
	mov r3, #0xd
	b _0211BBF8
_0211BB7C:
	ldrb r0, [r9, #0x5d]
	mov r1, #1
	cmp r0, #0
	bne _0211BBA4
	mov r0, #2
	str r0, [sp]
	mov r0, r9
	mov r2, #2
	mov r3, #3
	b _0211BBF8
_0211BBA4:
	mov r0, #0
	str r0, [sp]
	mov r0, r9
	mov r2, #0
	mov r3, r1
	b _0211BBF8
_0211BBBC:
	ldrb r0, [r9, #0x5d]
	mov r1, #2
	cmp r0, #1
	bne _0211BBE4
	mov r0, #6
	str r0, [sp]
	mov r0, r9
	mov r2, #6
	mov r3, #7
	b _0211BBF8
_0211BBE4:
	mov r0, #4
	str r0, [sp]
	mov r0, r9
	mov r2, #4
	mov r3, #5
_0211BBF8:
	bl FUN_ov19_0211b7bc
_0211BBFC:
	add r0, r8, #1
	and r8, r0, #0xff
_0211BC04:
	cmp r8, #5
	blo _0211BAD4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC10: .word unk_02099EB4
	arm_func_end FUN_ov19_0211baac

	arm_func_start FUN_ov19_0211bc14
FUN_ov19_0211bc14: ; 0x0211BC14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r10, r0
	mov r9, #7
	mvn r8, #0
	mov r7, #6
	mov r6, #1
	ldr r4, _0211BCF8 ; =0x0211C820
	ldr r5, _0211BCFC ; =0x02099EB4
	b _0211BCE8
_0211BC3C:
	ldr r0, [r5]
	mov r1, r9
	bl FUN_ov16_0210e7d0
	ldrb r1, [r0, #0xe]
	ldr r2, [r4, #4]
	add r1, r0, r1, lsl #2
	ldrb r3, [r1, #0x3b]
	cmp r9, r2
	ldreq r1, [r10, #0x1c0]
	cmpeq r2, r1
	ldreqb r3, [r0, #0x3f]
	add r2, r10, r9, lsl #4
	mov r1, r6
	streq r8, [r4, #4]
	streq r8, [r10, #0x1c0]
	ldr lr, [r2, #0x68]
	mov r12, lr, asr #2
	add r12, lr, r12, lsr #29
	mov r12, r12, asr #3
	str r12, [sp]
	ldr lr, [r2, #0x6c]
	mov r12, lr, asr #2
	add r12, lr, r12, lsr #29
	mov r12, r12, asr #3
	str r12, [sp, #4]
	str r7, [sp, #8]
	ldrb r12, [r0, #0xe]
	add r0, r0, r12, lsl #2
	ldrb r12, [r0, #0x3a]
	mov r0, r10
	str r12, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r12, [r2, #0x60]
	ldr r3, [r2, #0x64]
	mov lr, r12, asr #2
	mov r2, r3, asr #2
	add r3, r3, r2, lsr #29
	add r12, r12, lr, lsr #29
	mov r2, r12, asr #3
	mov r3, r3, asr #3
	bl FUN_ov19_0211b720
	add r0, r9, #1
	and r9, r0, #0xff
_0211BCE8:
	cmp r9, #0xb
	blo _0211BC3C
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211BCF8: .word ov19_0211C820
_0211BCFC: .word unk_02099EB4
	arm_func_end FUN_ov19_0211bc14

	arm_func_start FUN_ov19_0211bd00
FUN_ov19_0211bd00: ; 0x0211BD00
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r1, _0211BEB4 ; =0x02099EB4
	mov r6, r0
	ldr r0, [r1]
	mov r1, #0xb
	bl FUN_ov16_0210e7d0
	ldrb r1, [r6, #0x1bc]
	mov r4, r0
	cmp r1, #0
	ldreq r0, _0211BEB8 ; =0x0211C5C4
	ldreqb r1, [r6, #0x1a4]
	ldreq r2, [r0, #0x40]
	ldrne r5, [r6, #0x1ac]
	moveq r0, #0x18
	mlaeq r5, r1, r0, r2
	ldrb r1, [r4, #0xe]
	ldrb r0, [r6, #0x1bc]
	add r1, r4, r1, lsl #2
	cmp r0, #0
	ldrb r3, [r1, #0x3b]
	beq _0211BD70
	mov r0, r6
	mov r1, #0xb
	bl FUN_ov19_0211c448
	cmp r0, #0
	ldrneb r3, [r4, #0x3f]
	ldreqb r3, [r4, #0x43]
_0211BD70:
	ldr r2, [r6, #0x118]
	mov r1, r5, asr #2
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	ldr r2, [r6, #0x11c]
	add r1, r5, r1, lsr #29
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	ldrb r5, [r4, #0xe]
	mov r2, r1, asr #3
	mov r0, r6
	add r1, r4, r5, lsl #2
	ldrb r4, [r1, #0x3a]
	mov r1, #1
	str r4, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r4, [r6, #0x114]
	mov r3, r4, asr #2
	add r3, r4, r3, lsr #29
	mov r3, r3, asr #3
	bl FUN_ov19_0211b720
	ldr r0, _0211BEB4 ; =0x02099EB4
	mov r1, #0xc
	ldr r0, [r0]
	bl FUN_ov16_0210e7d0
	ldrb r1, [r6, #0x1bd]
	mov r4, r0
	cmp r1, #0
	ldreq r0, _0211BEB8 ; =0x0211C5C4
	ldreqb r1, [r6, #0x1a5]
	ldreq r2, [r0, #0x48]
	ldrne r5, [r6, #0x1ac]
	moveq r0, #0x18
	mlaeq r5, r1, r0, r2
	ldrb r1, [r4, #0xe]
	ldrb r0, [r6, #0x1bd]
	add r1, r4, r1, lsl #2
	cmp r0, #0
	ldrb r3, [r1, #0x3b]
	beq _0211BE40
	mov r0, r6
	mov r1, #0xc
	bl FUN_ov19_0211c448
	cmp r0, #0
	ldrneb r3, [r4, #0x3f]
	ldreqb r3, [r4, #0x3b]
_0211BE40:
	ldr r2, [r6, #0x128]
	mov r1, r5, asr #2
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	ldr r2, [r6, #0x12c]
	add r1, r5, r1, lsr #29
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	ldrb r5, [r4, #0xe]
	mov r0, r6
	mov r2, r1, asr #3
	add r1, r4, r5, lsl #2
	ldrb r4, [r1, #0x3a]
	mov r1, #1
	str r4, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r4, [r6, #0x124]
	mov r3, r4, asr #2
	add r3, r4, r3, lsr #29
	mov r3, r3, asr #3
	bl FUN_ov19_0211b720
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BEB4: .word unk_02099EB4
_0211BEB8: .word ov19_0211C5C4
	arm_func_end FUN_ov19_0211bd00

	arm_func_start FUN_ov19_0211bebc
FUN_ov19_0211bebc: ; 0x0211BEBC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211BF14 ; =gL5Sound
	mov r5, r0
	mov r0, r4
	bl FUN_0202bb88
	mov r1, r0
	mov r0, r5
	bl FUN_ov19_0211bf18
	strb r0, [r5, #0x1a4]
	mov r0, r4
	bl FUN_0202bba0
	mov r1, r0
	mov r0, r5
	bl FUN_ov19_0211bf18
	ldrb r2, [r5, #0x1a4]
	and r1, r0, #0xff
	strb r0, [r5, #0x1a5]
	strb r2, [r5, #0x1a6]
	strb r1, [r5, #0x1a7]
	strb r2, [r5, #0x1c8]
	strb r1, [r5, #0x1c9]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BF14: .word gL5Sound
	arm_func_end FUN_ov19_0211bebc

	arm_func_start FUN_ov19_0211bf18
FUN_ov19_0211bf18: ; 0x0211BF18
	cmp r1, #0x3f
	bgt _0211BF38
	bge _0211BF60
	cmp r1, #0
	ble _0211BF50
	cmp r1, #0x1f
	beq _0211BF58
	b _0211BF50
_0211BF38:
	cmp r1, #0x5f
	bgt _0211BF48
	beq _0211BF68
	b _0211BF50
_0211BF48:
	cmp r1, #0x7f
	beq _0211BF70
_0211BF50:
	mov r0, #0
	bx lr
_0211BF58:
	mov r0, #1
	bx lr
_0211BF60:
	mov r0, #2
	bx lr
_0211BF68:
	mov r0, #3
	bx lr
_0211BF70:
	mov r0, #4
	bx lr
	arm_func_end FUN_ov19_0211bf18

	arm_func_start FUN_ov19_0211bf78
FUN_ov19_0211bf78: ; 0x0211BF78
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0211BF98
_0211BF84: ; jump table
	b _0211BF98 ; case 0
	b _0211BFA0 ; case 1
	b _0211BFA8 ; case 2
	b _0211BFB0 ; case 3
	b _0211BFB8 ; case 4
_0211BF98:
	mov r0, #0
	bx lr
_0211BFA0:
	mov r0, #0x1f
	bx lr
_0211BFA8:
	mov r0, #0x3f
	bx lr
_0211BFB0:
	mov r0, #0x5f
	bx lr
_0211BFB8:
	mov r0, #0x7f
	bx lr
	arm_func_end FUN_ov19_0211bf78

	arm_func_start FUN_ov19_0211bfc0
FUN_ov19_0211bfc0: ; 0x0211BFC0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _0211C004 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl FUN_ov16_0210e7d0
	cmp r4, #0xb
	ldreqb r2, [r5, #0x1a4]
	beq _0211BFF0
	cmp r4, #0xc
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #0x1a5]
_0211BFF0:
	mov r1, #0x18
	mul r1, r2, r1
	add r1, r1, #0x70
	strh r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C004: .word unk_02099EB4
	arm_func_end FUN_ov19_0211bfc0

	arm_func_start FUN_ov19_0211c008
FUN_ov19_0211c008: ; 0x0211C008
	stmfd sp!, {r4, lr}
	ldr r0, _0211C024 ; =0x02099EB4
	mov r4, r2
	ldr r0, [r0]
	bl FUN_ov16_0210e7d0
	strh r4, [r0]
	ldmfd sp!, {r4, pc}
_0211C024: .word unk_02099EB4
	arm_func_end FUN_ov19_0211c008

	arm_func_start FUN_ov19_0211c028
FUN_ov19_0211c028: ; 0x0211C028
	ldrb r1, [r0, #0x1a4]
	ldr r12, _0211C048 ; =FUN_ov19_0211c150
	cmp r1, #4
	movhs r1, #4
	addlo r1, r1, #1
	strb r1, [r0, #0x1a4]
	mov r1, #0
	bx r12
_0211C048: .word FUN_ov19_0211c150
	arm_func_end FUN_ov19_0211c028

	arm_func_start FUN_ov19_0211c04c
FUN_ov19_0211c04c: ; 0x0211C04C
	ldrb r1, [r0, #0x1a4]
	ldr r12, _0211C06C ; =FUN_ov19_0211c150
	cmp r1, #0
	moveq r1, #0
	subne r1, r1, #1
	strb r1, [r0, #0x1a4]
	mov r1, #0
	bx r12
_0211C06C: .word FUN_ov19_0211c150
	arm_func_end FUN_ov19_0211c04c

	arm_func_start FUN_ov19_0211c070
FUN_ov19_0211c070: ; 0x0211C070
	ldrb r1, [r0, #0x1a5]
	ldr r12, _0211C090 ; =FUN_ov19_0211c150
	cmp r1, #4
	movhs r1, #4
	addlo r1, r1, #1
	strb r1, [r0, #0x1a5]
	mov r1, #0
	bx r12
_0211C090: .word FUN_ov19_0211c150
	arm_func_end FUN_ov19_0211c070

	arm_func_start FUN_ov19_0211c094
FUN_ov19_0211c094: ; 0x0211C094
	ldrb r1, [r0, #0x1a5]
	ldr r12, _0211C0B4 ; =FUN_ov19_0211c150
	cmp r1, #0
	moveq r1, #0
	subne r1, r1, #1
	strb r1, [r0, #0x1a5]
	mov r1, #0
	bx r12
_0211C0B4: .word FUN_ov19_0211c150
	arm_func_end FUN_ov19_0211c094

	arm_func_start FUN_ov19_0211c0b8
FUN_ov19_0211c0b8: ; 0x0211C0B8
	ldr r1, [r0, #0x1ac]
	cmp r1, #0x70
	movlt r1, #0x70
	strlt r1, [r0, #0x1ac]
	bxlt lr
	cmp r1, #0xd0
	movgt r1, #0xd0
	strgt r1, [r0, #0x1ac]
	bx lr
	arm_func_end FUN_ov19_0211c0b8

	arm_func_start FUN_ov19_0211c0dc
FUN_ov19_0211c0dc: ; 0x0211C0DC
	cmp r2, #0x78
	blo _0211C0F0
	cmp r2, #0x84
	movlo r2, #0
	blo _0211C138
_0211C0F0:
	cmp r2, #0x84
	blo _0211C104
	cmp r2, #0x9c
	movlo r2, #1
	blo _0211C138
_0211C104:
	cmp r2, #0x9c
	blo _0211C118
	cmp r2, #0xb4
	movlo r2, #2
	blo _0211C138
_0211C118:
	cmp r2, #0xb4
	blo _0211C12C
	cmp r2, #0xcc
	movlo r2, #3
	blo _0211C138
_0211C12C:
	cmp r2, #0xcc
	bxlo lr
	mov r2, #4
_0211C138:
	cmp r1, #0xb
	streqb r2, [r0, #0x1a4]
	bxeq lr
	cmp r1, #0xc
	streqb r2, [r0, #0x1a5]
	bx lr
	arm_func_end FUN_ov19_0211c0dc

	arm_func_start FUN_ov19_0211c150
FUN_ov19_0211c150: ; 0x0211C150
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r3, [r4, #0x1a4]
	ldrb r0, [r4, #0x1a6]
	cmp r3, r0
	ldreqb r2, [r4, #0x1a5]
	ldreqb r0, [r4, #0x1a7]
	cmpeq r2, r0
	beq _0211C1C8
	mov r0, r4
	mov r1, r3
	bl FUN_ov19_0211bf78
	ldr r5, _0211C1E0 ; =gL5Sound
	mov r1, r0
	mov r0, r5
	bl FUN_0202bb58
	ldrb r1, [r4, #0x1a5]
	mov r0, r4
	bl FUN_ov19_0211bf78
	mov r1, r0
	mov r0, r5
	bl FUN_0202bb94
	mov r0, r5
	mov r1, #3
	bl FUN_0202cf6c
	ldrb r1, [r4, #0x1a4]
	ldrb r0, [r4, #0x1a5]
	strb r1, [r4, #0x1a6]
	strb r0, [r4, #0x1a7]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C1C8:
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211C1E0 ; =gL5Sound
	mov r1, #3
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211C1E0: .word gL5Sound
	arm_func_end FUN_ov19_0211c150

	arm_func_start FUN_ov19_0211c1e4
FUN_ov19_0211c1e4: ; 0x0211C1E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r1, [r5, #0x1a4]
	bl FUN_ov19_0211bf78
	ldr r4, _0211C210 ; =0x020A1140
	strh r0, [r4, #0x94]
	ldrb r1, [r5, #0x1a5]
	mov r0, r5
	bl FUN_ov19_0211bf78
	strh r0, [r4, #0x96]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C210: .word unk_020A1140
	arm_func_end FUN_ov19_0211c1e4

	arm_func_start FUN_ov19_0211c214
FUN_ov19_0211c214: ; 0x0211C214
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x1c5]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	beq _0211C244
	ldrb r1, [r4, #0x1a8]
	cmp r1, #0xa
	bls _0211C244
	bl FUN_ov19_0211c280
	mov r0, #1
	strb r0, [r4, #0x1c4]
_0211C244:
	ldrb r0, [r4, #0x1c4]
	cmp r0, #0
	beq _0211C264
	ldrb r0, [r4, #0x1a8]
	cmp r0, #5
	bls _0211C264
	mov r0, r4
	bl FUN_ov19_0211c280
_0211C264:
	ldrb r0, [r4, #0x1a8]
	cmp r0, #0xff
	moveq r0, #0
	streqb r0, [r4, #0x1a8]
	addne r0, r0, #1
	strneb r0, [r4, #0x1a8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov19_0211c214

	arm_func_start FUN_ov19_0211c280
FUN_ov19_0211c280: ; 0x0211C280
	ldr r1, _0211C2B8 ; =0x0211C820
	ldr r3, [r1, #4]
	sub r2, r3, #7
	cmp r2, #1
	strls r3, [r1]
	movls r1, #0
	strlsb r1, [r0, #0x1a8]
	bxls lr
	sub r2, r3, #9
	cmp r2, #1
	strls r3, [r1]
	movls r1, #0
	strlsb r1, [r0, #0x1a8]
	bx lr
_0211C2B8: .word ov19_0211C820
	arm_func_end FUN_ov19_0211c280

	arm_func_start FUN_ov19_0211c2bc
FUN_ov19_0211c2bc: ; 0x0211C2BC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r2
	mov r10, r0
	mov r9, r1
	mov r7, r3
	cmp r8, #0x70
	ldmlofd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r8, #0xe8
	ldmhifd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r9, #0xb
	bne _0211C304
	ldr r0, _0211C3D0 ; =0x0211C5C4
	ldr r6, [r0, #0x44]
	cmp r7, r6
	ldrge r0, [r0, #0x4c]
	cmpge r0, r7
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	b _0211C328
_0211C304:
	cmp r9, #0xc
	bne _0211C328
	ldr r0, _0211C3D0 ; =0x0211C5C4
	ldr r6, [r0, #0x4c]
	cmp r7, r6
	ldrge r0, [r0, #0x54]
	addge r0, r6, r0
	cmpge r0, r7
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C328:
	cmp r9, #0xb
	beq _0211C338
	cmp r9, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C338:
	ldr r4, _0211C3D4 ; =0x02099EB4
	mov r1, r9
	ldr r0, [r4]
	bl FUN_ov16_0210e7d0
	mov r5, #1
	strb r5, [r0, #0x12]
	mov r0, r10
	str r8, [r10, #0x1ac]
	str r7, [r10, #0x1b0]
	bl FUN_ov19_0211c0b8
	ldr r1, [r10, #0x1ac]
	mov r0, r10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	and r1, r9, #0xff
	bl FUN_ov19_0211c0dc
	ldr r2, _0211C3D0 ; =0x0211C5C4
	ldr r0, [r4]
	ldr r2, [r2, #0x50]
	ldr r4, [r10, #0x1ac]
	add r2, r2, r2, lsr #31
	mov r3, r6
	mov r1, r9
	sub r2, r4, r2, asr #1
	bl FUN_ov16_0210fd0c
	mov r0, r10
	mov r1, r5
	bl FUN_ov19_0211c150
	cmp r9, #0xb
	moveq r0, #0
	streqb r5, [r10, #0x1bc]
	streqb r0, [r10, #0x1bd]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r9, #0xc
	moveq r0, #0
	streqb r5, [r10, #0x1bd]
	streqb r0, [r10, #0x1bc]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C3D0: .word ov19_0211C5C4
_0211C3D4: .word unk_02099EB4
	arm_func_end FUN_ov19_0211c2bc

	arm_func_start FUN_ov19_0211c3d8
FUN_ov19_0211c3d8: ; 0x0211C3D8
	mov r1, #0
	strb r1, [r0, #0x1bc]
	strb r1, [r0, #0x1bd]
	bx lr
	arm_func_end FUN_ov19_0211c3d8

	arm_func_start FUN_ov19_0211c3e8
FUN_ov19_0211c3e8: ; 0x0211C3E8
	cmp r1, #7
	blt _0211C3F8
	cmp r1, #0xa
	ble _0211C404
_0211C3F8:
	mvn r1, #0
	str r1, [r0, #0x1c0]
	bx lr
_0211C404:
	cmp r1, #7
	cmpne r1, #9
	ldreq r2, _0211C444 ; =0x02099EB4
	moveq r3, #0x20
	ldreq r2, [r2]
	addeq r2, r2, #0xf00
	streqh r3, [r2, #0x38]
	cmp r1, #8
	cmpne r1, #0xa
	ldreq r2, _0211C444 ; =0x02099EB4
	moveq r3, #0x10
	ldreq r2, [r2]
	addeq r2, r2, #0xf00
	streqh r3, [r2, #0x38]
	str r1, [r0, #0x1c0]
	bx lr
_0211C444: .word unk_02099EB4
	arm_func_end FUN_ov19_0211c3e8

	arm_func_start FUN_ov19_0211c448
FUN_ov19_0211c448: ; 0x0211C448
	cmp r1, #0xb
	moveq r2, #0x70
	beq _0211C460
	mov r2, #0x88
	cmp r1, #0xc
	movne r2, #0x70
_0211C460:
	ldr r1, [r0, #0x1b4]
	cmp r1, #0x70
	blt _0211C488
	cmp r1, #0xe0
	ldrle r1, [r0, #0x1b8]
	cmple r2, r1
	addle r0, r2, #0x18
	cmple r1, r0
	movle r0, #1
	bxle lr
_0211C488:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov19_0211c448

	arm_func_start FUN_ov19_0211c490
FUN_ov19_0211c490: ; 0x0211C490
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r2, #0x74
	mvn r4, #0
	blt _0211C4B0
	cmp r2, #0x80
	movlt r4, #0xb
	blt _0211C4C0
_0211C4B0:
	cmp r2, #0x8c
	blt _0211C4C0
	cmp r2, #0x98
	movlt r4, #0xc
_0211C4C0:
	cmp r4, #0
	mvn r0, #0
	blt _0211C52C
	cmp r1, #0x70
	blo _0211C4E0
	cmp r1, #0x80
	movlt r0, #0
	blt _0211C52C
_0211C4E0:
	cmp r1, #0x88
	blo _0211C4F4
	cmp r1, #0x98
	movlt r0, #1
	blt _0211C52C
_0211C4F4:
	cmp r1, #0xa0
	blo _0211C508
	cmp r1, #0xb0
	movlt r0, #2
	blt _0211C52C
_0211C508:
	cmp r1, #0xb8
	blo _0211C51C
	cmp r1, #0xc8
	movlt r0, #3
	blt _0211C52C
_0211C51C:
	cmp r1, #0xd0
	blo _0211C52C
	cmp r1, #0xe0
	movlt r0, #4
_0211C52C:
	cmp r0, #4
	mvn r1, #0
	addls pc, pc, r0, lsl #2
	b _0211C574
_0211C53C: ; jump table
	b _0211C550 ; case 0
	b _0211C558 ; case 1
	b _0211C560 ; case 2
	b _0211C568 ; case 3
	b _0211C570 ; case 4
_0211C550:
	mov r1, #0
	b _0211C574
_0211C558:
	mov r1, #1
	b _0211C574
_0211C560:
	mov r1, #2
	b _0211C574
_0211C568:
	mov r1, #3
	b _0211C574
_0211C570:
	mov r1, #4
_0211C574:
	cmp r1, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	mvn r5, #0
	cmp r4, #0xb
	streqb r1, [r6, #0x1a4]
	moveq r5, #0xb
	beq _0211C59C
	cmp r4, #0xc
	streqb r1, [r6, #0x1a5]
	moveq r5, #0xc
_0211C59C:
	mov r0, r6
	mov r1, #0
	bl FUN_ov19_0211c150
	mov r0, r6
	and r1, r4, #0xff
	bl FUN_ov19_0211bfc0
	mov r0, r6
	mov r1, r5
	bl FUN_ov19_0211b22c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov19_0211c490

	.rodata
	.global ov19_0211C5C4
ov19_0211C5C4:
	.byte 0x98, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x58, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x58, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x50, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.global ov19_0211C634
ov19_0211C634:
	.word ov19_0211C768
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov19_0211C718
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov19_0211C728
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov19_0211C748
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov19_0211C758
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov19_0211C6F8
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov19_0211C708
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov19_0211C738
	.byte 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov19_0211c67c
FUN_ov19_0211c67c: ; 0x0211C67C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211C6C0 ; =0x0211C6E0
	str r0, [r4, #8]
	ldr r0, _0211C6C4 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0211C6C8 ; =0x0000EA3C
	mov r1, #0x800
	stmia r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C6C0: .word ov19_0211C6E0
_0211C6C4: .word 0x00009CCD
_0211C6C8: .word 0x0000EA3C
	arm_func_end FUN_ov19_0211c67c

	.section .sinit, 4
ov19_0211C6CC:
	.word FUN_ov19_0211c67c

	.data
	.global ov19_0211C6E0
ov19_0211C6E0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov19_0211C6F8
ov19_0211C6F8:
	.asciz "sydn_c02.pac"
	.balign 4, 0
	.global ov19_0211C708
ov19_0211C708:
	.asciz "sydn_b08.pac"
	.balign 4, 0
	.global ov19_0211C718
ov19_0211C718:
	.asciz "sydn_b09.pac"
	.balign 4, 0
	.global ov19_0211C728
ov19_0211C728:
	.asciz "sydn_b10.pac"
	.balign 4, 0
	.global ov19_0211C738
ov19_0211C738:
	.asciz "sydn_b07.pac"
	.balign 4, 0
	.global ov19_0211C748
ov19_0211C748:
	.asciz "sydn_b04.pac"
	.balign 4, 0
	.global ov19_0211C758
ov19_0211C758:
	.asciz "sydn_c01.pac"
	.balign 4, 0
	.global ov19_0211C768
ov19_0211C768:
	.asciz "sydn_bg01.pac"
	.balign 16, 0
	.global ov19_0211C780
ov19_0211C780:
	.word FUN_ov19_02119f14
	.word FUN_ov19_02119f18
	.word FUN_ov19_02119f2c
	.word FUN_ov19_0211a104
	.word FUN_ov19_0211a424
	.word FUN_0202b208
	.word FUN_ov19_0211ac08
	.word FUN_ov19_0211ad88
	.word FUN_ov19_0211ab04
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b320
	.word FUN_0202b310
	.word FUN_0202b304
	.word FUN_0202b2f8
	.word FUN_0202b2e8
	.word FUN_0202b2d8
	.word FUN_0202b2c8
	.word FUN_0202b2bc
	.word FUN_0202b2b0
	.word FUN_0202b1d8
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global ov19_0211C7EC
ov19_0211C7EC:
	.asciz "/data_iz/pic2d/menu/MASConfig.SPF_"
	.balign 4, 0
	.global ov19_0211C810
ov19_0211C810:
	.asciz "syup_bg02"
	.balign 4, 0

	.bss
	.global ov19_0211C820
ov19_0211C820:
	.space 0x20

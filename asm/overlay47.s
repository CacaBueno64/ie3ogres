
	.include "/macros/function.inc"
	.include "/include/overlay47.inc"

	.text
	arm_func_start FUN_ov47_02119f00
FUN_ov47_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _02119F64 ; =0x0211FAB8
	add r1, r4, #0x68
	bl  FUN_ov16_020f3054
	add r0, r4, #0x8f
	add r0, r0, #0x1300
	add r1, r4, #0x74
	bl  FUN_ov16_020f3054
	ldr r0, _02119F68 ; =0x0211FAD4
	add r1, r4, #0x80
	bl  FUN_ov16_020f3054
	ldr r0, _02119F6C ; =0x0211FAF4
	add r1, r4, #0x8c
	bl  FUN_ov16_020f3054
	ldr r5, _02119F70 ; =0x0209AC44
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_0202cf00
	mov r0, r5
	mov r1, r4
	ldr r2, _02119F74 ; =0x0211FB1C
	bl FUN_0202cdd4
	ldmfd sp!, {r3, r4, r5, pc}
_02119F64: .word ov47_0211FAB8
_02119F68: .word ov47_0211FAD4
_02119F6C: .word ov47_0211FAF4
_02119F70: .word unk_0209AC44
_02119F74: .word ov47_0211FB1C
	arm_func_end FUN_ov47_02119f00

	arm_func_start FUN_ov47_02119f78
FUN_ov47_02119f78: ; 0x02119F78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r7, _0211A0B4 ; =0x020A6C40
	mov r6, #0x800
	mov r9, #0
	mov r10, r0
	mov r0, r9
	mov r1, r7
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r5, _0211A0B8 ; =0x020A7440
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r4, _0211A0BC ; =0x020A7C40
	mov r0, r9
	mov r1, r4
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r6
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	add r0, r10, #0x52
	mov r11, #0x4a
	add r8, r0, #0x400
	mov r7, r9
	mov r6, #1
	ldr r5, _0211A0C0 ; =0x02099F38
	mov r4, r11
	b _0211A098
_0211A00C:
	mla r1, r9, r4, r8
	mov r0, r10
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211A094
	mla r0, r9, r11, r10
	ldrb r0, [r0, #0x452]
	cmp r0, #1
	beq _0211A038
	cmp r0, #3
	bne _0211A094
_0211A038:
	mov r0, #0x4a
	mla r0, r9, r0, r10
	add r0, r0, #0x400
	ldrsh r1, [r0, #0x5c]
	ldr r0, [r10, #0x80]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A094
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r5]
	mov r1, #5
	str r7, [sp]
	stmib sp, {r6, r7}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _0211A0C4 ; =0x0211FB24
	mov r3, r7
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x134]
_0211A094:
	add r9, r9, #1
_0211A098:
	cmp r9, #0x21
	blt _0211A00C
	mov r0, r10
	mov r1, #2
	bl FUN_ov47_0211a774
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A0B4: .word unk_020A6C40
_0211A0B8: .word unk_020A7440
_0211A0BC: .word unk_020A7C40
_0211A0C0: .word unk_02099F38
_0211A0C4: .word ov47_0211FB24
	arm_func_end FUN_ov47_02119f78

	arm_func_start FUN_ov47_0211a0c8
FUN_ov47_0211a0c8: ; 0x0211A0C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r10, r1
	ldr r0, _0211A18C ; =0x55555556
	mov r2, #3
	smull r1, r6, r0, r10
	add r6, r6, r10, lsr #31
	smull r0, r1, r2, r6
	mov r9, #0
	sub r6, r10, r0
	sub r5, r10, #1
	add r7, r10, #1
	sub r8, r10, #3
	add r4, r10, #3
	b _0211A17C
_0211A104:
	cmp r9, r10
	cmpne r9, r8
	beq _0211A14C
	ldr r0, _0211A18C ; =0x55555556
	smull r1, r2, r0, r9
	add r2, r2, r9, lsr #31
	mov r0, #3
	smull r1, r2, r0, r2
	subs r2, r9, r1
	beq _0211A134
	cmp r9, r7
	beq _0211A14C
_0211A134:
	cmp r6, #0
	beq _0211A144
	cmp r9, r5
	beq _0211A14C
_0211A144:
	cmp r9, r4
	bne _0211A178
_0211A14C:
	add r0, r11, r9, lsl #2
	ldr r1, [r0, #0x98]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211A190 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A178:
	add r9, r9, #1
_0211A17C:
	cmp r9, #8
	ble _0211A104
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A18C: .word 0x55555556
_0211A190: .word unk_02099F38
	arm_func_end FUN_ov47_0211a0c8

	arm_func_start FUN_ov47_0211a194
FUN_ov47_0211a194: ; 0x0211A194
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x21c
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x98]
	cmp r0, #0
	addne sp, sp, #0x21c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	add r7, sp, #0x1c
	ldr r1, _0211A250 ; =0x0211FB44
	mov r0, r7
	bl sprintf
	ldr r2, _0211A254 ; =0x0211F81C
	add r0, r6, #0x1000
	add r4, sp, #0x11c
	ldr r1, [r0, #0x3d0]
	ldr r2, [r2, r5, lsl #2]
	mov r0, r4
	bl sprintf
	ldr r1, [r6, #0x68]
	add r2, sp, #0x18
	mov r0, r4
	add r3, sp, #0x14
	bl  FUN_ov16_020f3d08
	add r0, r6, #0x1000
	ldrb r3, [r0, #0x37a]
	ldr r0, _0211A258 ; =0x02099F38
	ldr lr, [sp, #0x14]
	ldr r12, [sp, #0x18]
	ldr r0, [r0]
	mov r4, #0
	mov r1, #1
	str r4, [sp]
	stmib sp, {r1, r4}
	str r12, [sp, #0xc]
	mov r2, r7
	mov r1, #5
	str lr, [sp, #0x10]
	bl FUN_02058800
	add r1, r6, r5, lsl #2
	str r0, [r1, #0x98]
	add r0, r6, r5
	add r0, r0, #0x1000
	strb r4, [r0, #0x338]
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A250: .word ov47_0211FB44
_0211A254: .word ov47_0211F81C
_0211A258: .word unk_02099F38
	arm_func_end FUN_ov47_0211a194

	arm_func_start FUN_ov47_0211a25c
FUN_ov47_0211a25c: ; 0x0211A25C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x98]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A2A0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r5, r4
	add r1, r5, r4, lsl #2
	mov r2, #0
	str r2, [r1, #0x98]
	add r0, r0, #0x1000
	strb r2, [r0, #0x338]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A2A0: .word unk_02099F38
	arm_func_end FUN_ov47_0211a25c

	arm_func_start FUN_ov47_0211a2a4
FUN_ov47_0211a2a4: ; 0x0211A2A4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	add r11, sp, #0x1c
	mov r10, r0
	ldr r1, _0211A3B0 ; =0x0211FB60
	mov r0, r11
	bl sprintf
	mov r9, #9
	mov r6, #0
	mov r5, #1
	add r8, sp, #0x11c
	ldr r7, _0211A3B4 ; =0x0211FA20
	ldr r4, _0211A3B8 ; =0x02099F38
	b _0211A340
_0211A2DC:
	ldr r2, [r7, r9, lsl #2]
	ldr r1, _0211A3BC ; =0x0211FB7C
	mov r0, r8
	bl sprintf
	ldr r1, [r10, #0x68]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f3d08
	cmp r0, #0
	beq _0211A33C
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r11
	mov r3, r6
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x98]
_0211A33C:
	add r9, r9, #1
_0211A340:
	cmp r9, #0x26
	blt _0211A2DC
	mov r0, r10
	bl FUN_ov47_0211a40c
	ldr r0, _0211A3C0 ; =0x02099ED8
	ldr r0, [r0]
	bl  FUN_ov0_020cd0f8 ; may be ov15
	ands r1, r0, #0xff
	beq _0211A36C
	mov r0, r10
	b _0211A378
_0211A36C:
	ldr r1, _0211A3C4 ; =0x02099E95
	mov r0, r10
	ldrb r1, [r1]
_0211A378:
	bl FUN_ov47_0211a3c8
	mov r0, r10
	mov r1, #1
	bl FUN_ov47_0211a774
	add r1, r10, #0x7b
	ldr r0, [r10, #0x8c]
	add r1, r1, #0x1300
	mov r2, #0x14
	bl MI_CpuCopy8
	mov r0, r10
	mov r1, #3
	bl FUN_ov47_0211a774
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A3B0: .word ov47_0211FB60
_0211A3B4: .word ov47_0211FA20
_0211A3B8: .word unk_02099F38
_0211A3BC: .word ov47_0211FB7C
_0211A3C0: .word unk_02099ED8
_0211A3C4: .word unk_02099E95
	arm_func_end FUN_ov47_0211a2a4

	arm_func_start FUN_ov47_0211a3c8
FUN_ov47_0211a3c8: ; 0x0211A3C8
	cmp r1, #0x21
	bxhs lr
	and r12, r1, #0xff
	mov r2, #0x4a
	mla r3, r12, r2, r0
	strb r1, [r0, #0x40e]
	strb r1, [r0, #0x40f]
	ldrb r2, [r3, #0x453]
	str r2, [r0, #0x410]
	ldrb r1, [r3, #0x453]
	add r2, r0, r2, lsl #3
	str r1, [r0, #0x414]
	ldr r1, [r2, #4]
	str r1, [r0, #0x3f4]
	ldr r1, [r2, #8]
	str r1, [r0, #0x3f8]
	bx lr
	arm_func_end FUN_ov47_0211a3c8

	arm_func_start FUN_ov47_0211a40c
FUN_ov47_0211a40c: ; 0x0211A40C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r1, r10, #0x52
	ldr r0, [r10, #0x74]
	ldr r2, _0211A6D8 ; =0x0000098A
	add r1, r1, #0x400
	mov r9, #1
	bl MI_CpuCopy8
	add r0, r10, #0x52
	mov r7, #0
	add r6, r0, #0x400
	mvn r8, #0
	mov r11, #0x4a
_0211A440:
	mul r4, r7, r11
	mov r0, r10
	add r1, r6, r4
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211A54C
	add r5, r10, r4
	add r1, r5, #0x400
	ldrb r0, [r5, #0x453]
	ldrsh r2, [r1, #0x56]
	mov r0, r0, lsl #0x18
	add r0, r2, r0, asr #16
	strh r0, [r1, #0x56]
	ldrb r0, [r5, #0x452]
	cmp r0, #2
	bne _0211A500
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldr r2, [r0, #0x44]
	mov r4, r9, lsl r7
	ldr r1, [r0, #0x48]
	orr r2, r2, r9, lsl r7
	str r2, [r0, #0x44]
	orr r1, r1, r4, asr #31
	str r1, [r0, #0x48]
	mov r0, r10
	mov r1, r7
	bl FUN_ov47_0211ba28
	cmp r0, #0
	beq _0211A500
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl FUN_ov47_0211f138
	cmp r0, #2
	bne _0211A500
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldr r2, [r0, #0x4c]
	ldr r3, [r0, #0x50]
	orr r2, r2, r4
	str r2, [r0, #0x4c]
	orr r1, r3, r4, asr #31
	str r1, [r0, #0x50]
_0211A500:
	ldrb r0, [r5, #0x452]
	cmp r0, #3
	bne _0211A54C
	mov r0, r10
	mov r1, r7
	bl FUN_ov47_0211b9b0
	cmp r0, #0
	beq _0211A54C
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldr r4, [r0, #0x4c]
	mov r1, r9, lsl r7
	ldr r2, [r0, #0x50]
	orr r4, r4, r9, lsl r7
	str r4, [r0, #0x4c]
	orr r1, r2, r1, asr #31
	str r1, [r0, #0x50]
_0211A54C:
	add r7, r7, #1
	cmp r7, #0x21
	mov r4, #1
	mov r5, #0
	blo _0211A440
	mov r6, r5
	mov r7, r6
_0211A568:
	mov r0, #0x4a
	mul r8, r7, r0
	add r0, r10, #0x52
	add r1, r0, #0x400
	mov r0, r10
	add r1, r1, r8
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211A6C0
	mvn r0, #0
	add r11, r10, r8
	mov r8, #0
	str r0, [sp]
_0211A59C:
	add r0, r11, r8, lsl #1
	add r2, r0, #0x400
	ldrsh r1, [r2, #0x90]
	ldr r0, [sp]
	cmp r1, r0
	beq _0211A6B4
	mov r0, #0xa
	mla r9, r6, r0, r10
	add r1, r9, #0xd00
	strh r7, [r1, #0xdc]
	ldrsh r2, [r2, #0x90]
	mov r0, r10
	strh r2, [r1, #0xde]
	strh r5, [r1, #0xe2]
	strh r5, [r1, #0xe0]
	ldrsh r1, [r1, #0xdc]
	bl FUN_ov47_0211b930
	cmp r0, #0
	beq _0211A604
	add r1, r9, #0xd00
	ldrsh r1, [r1, #0xde]
	mov r0, r10
	bl FUN_ov47_0211b930
	cmp r0, #0
	movne r0, r4
	bne _0211A608
_0211A604:
	mov r0, r5
_0211A608:
	strb r0, [r9, #0xde4]
	mov r0, r10
	add r1, r9, #0xd00
	ldrsh r1, [r1, #0xdc]
	bl FUN_ov47_0211b970
	cmp r0, #0
	beq _0211A640
	add r1, r9, #0xd00
	ldrsh r1, [r1, #0xde]
	mov r0, r10
	bl FUN_ov47_0211b970
	cmp r0, #0
	movne r0, r4
	bne _0211A644
_0211A640:
	mov r0, r5
_0211A644:
	strb r0, [r9, #0xde5]
	add r0, r9, #0xd00
	ldrsh r1, [r0, #0xdc]
	cmp r1, #0
	ldrnesh r0, [r0, #0xde]
	cmpne r0, #0
	bne _0211A6B0
	strb r4, [r9, #0xde5]
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	add r1, r9, #0xd00
	ldr r2, [r0, #0x4c]
	ldr r9, [r0, #0x50]
	ldrsh r3, [r1, #0xdc]
	orr r2, r2, r4, lsl r3
	mov r3, r4, lsl r3
	orr r3, r9, r3, asr #31
	str r2, [r0, #0x4c]
	str r3, [r0, #0x50]
	ldrsh r1, [r1, #0xde]
	orr r2, r2, r4, lsl r1
	str r2, [r0, #0x4c]
	mov r1, r4, lsl r1
	orr r1, r3, r1, asr #31
	str r1, [r0, #0x50]
_0211A6B0:
	add r6, r6, #1
_0211A6B4:
	add r8, r8, #1
	cmp r8, #4
	blo _0211A59C
_0211A6C0:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x21
	blo _0211A568
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A6D8: .word 0x0000098A
	arm_func_end FUN_ov47_0211a40c

	arm_func_start FUN_ov47_0211a6dc
FUN_ov47_0211a6dc: ; 0x0211A6DC
	ldr r0, _0211A6F4 ; =0x02099E8E
	ldr r2, _0211A6F8 ; =0x020A12C0
	ldrb r1, [r0]
	mov r0, #0x54
	mla r0, r1, r0, r2
	bx lr
_0211A6F4: .word unk_02099E8E
_0211A6F8: .word unk_020A12C0
	arm_func_end FUN_ov47_0211a6dc

	arm_func_start FUN_ov47_0211a6fc
FUN_ov47_0211a6fc: ; 0x0211A6FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r1, #0
	mov r6, r0
	mov r5, r1
_0211A70C:
	add r0, r6, r1
	add r0, r0, #0x1000
	add r1, r1, #1
	strb r5, [r0, #0x308]
	cmp r1, #9
	blo _0211A70C
	add r0, r6, #0x52
	add r4, r0, #0x400
	mov r7, #0x4a
_0211A730:
	mul r8, r5, r7
	mov r0, r6
	add r1, r4, r8
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211A764
	add r0, r6, r8
	ldrb r0, [r0, #0x453]
	add r0, r6, r0
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x308]
	add r1, r1, #1
	strb r1, [r0, #0x308]
_0211A764:
	add r5, r5, #1
	cmp r5, #0x21
	blo _0211A730
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov47_0211a6fc

	arm_func_start FUN_ov47_0211a774
FUN_ov47_0211a774: ; 0x0211A774
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211A788
	cmp r4, #4
	blt _0211A7DC
_0211A788:
	mov r4, #0
	add r9, r0, #0x68
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211A79C:
	mul r8, r4, r5
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl  FUN_ov16_020f338c
	mov r0, r10
	bl  FUN_ov16_020f33fc
	str r6, [r9, r8]
	str r6, [r10, #4]
	strb r6, [r10, #8]
	strb r6, [r10, #9]
	add r4, r4, #1
	strb r6, [r10, #0xa]
	cmp r4, #4
	blt _0211A79C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A7DC:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0x68
	add r6, r4, r5
	mov r0, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	mov r0, r6
	bl  FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r4, r5]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov47_0211a774

	arm_func_start FUN_ov47_0211a81c
FUN_ov47_0211a81c: ; 0x0211A81C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1d0]
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	ldr r0, _0211A848 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x1d0]
	ldmfd sp!, {r4, pc}
_0211A848: .word unk_02099F38
	arm_func_end FUN_ov47_0211a81c

	arm_func_start FUN_ov47_0211a84c
FUN_ov47_0211a84c: ; 0x0211A84C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mvn r1, #0
	mov r6, r0
	mov r4, #0
	bl FUN_ov47_0211a774
	mov r5, r4
	add r8, r6, #0x1f8
	mov r7, #0xa8
	b _0211A880
_0211A870:
	mla r1, r5, r7, r8
	mov r0, r6
	bl FUN_ov47_0211aeac
	add r5, r5, #1
_0211A880:
	cmp r5, #3
	blt _0211A870
	mov r5, #0
	ldr r7, _0211A934 ; =0x02099F38
	b _0211A8B8
_0211A894:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x98]
	cmp r1, #0
	beq _0211A8B4
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x98]
_0211A8B4:
	add r5, r5, #1
_0211A8B8:
	cmp r5, #0x26
	blt _0211A894
	mov r0, r6
	bl FUN_ov47_0211a81c
	mov r7, #0
	ldr r5, _0211A934 ; =0x02099F38
	b _0211A8F0
_0211A8D4:
	add r0, r6, r7, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _0211A8EC
	ldr r0, [r5]
	bl  FUN_ov16_021128c4
_0211A8EC:
	add r7, r7, #1
_0211A8F0:
	cmp r7, #2
	blt _0211A8D4
	mov r5, #0
	ldr r7, _0211A934 ; =0x02099F38
	b _0211A928
_0211A904:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x134]
	cmp r1, #0
	beq _0211A924
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x134]
_0211A924:
	add r5, r5, #1
_0211A928:
	cmp r5, #0x21
	blo _0211A904
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A934: .word unk_02099F38
	arm_func_end FUN_ov47_0211a84c

	arm_func_start FUN_ov47_0211a938
FUN_ov47_0211a938: ; 0x0211A938
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldrb r2, [r10, #0x50]
	mov r9, r1
	eor r1, r2, #1
	str r1, [sp, #4]
	bl FUN_ov47_0211aa68
	add r0, r10, r9
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x308]
	ldr r11, _0211AA64 ; =0x02099F38
	mov r7, #1
	ldr r0, [r11]
	mov r2, r7
	add r1, r1, #1
	bl  FUN_ov16_02112724
	ldr r1, [sp, #4]
	mov r8, #0
	add r6, r10, r1, lsl #2
	str r0, [r6, #0x54]
	add r0, r10, #0x52
	add r4, r10, r9, lsl #3
	add r5, r0, #0x400
	b _0211AA34
_0211A99C:
	mov r0, #0x4a
	mla r1, r8, r0, r5
	mov r0, r10
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211AA30
	mov r0, #0x4a
	mla r0, r8, r0, r10
	ldrb r0, [r0, #0x453]
	cmp r9, r0
	bne _0211AA30
	ldr r0, [r11]
	ldr r1, [r6, #0x54]
	mov r2, r7
	mov r3, #0x258
	bl  FUN_ov16_021139bc
	mov r0, #0x4a
	mla r0, r8, r0, r10
	add r0, r0, #0x400
	ldrsh r3, [r0, #0x56]
	ldrsh r1, [r0, #0x58]
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	sub r2, r3, r2
	sub r1, r1, r0
	add r0, r2, #4
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	add r0, r1, #4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r11]
	ldr r1, [r6, #0x54]
	mov r2, r7
	bl  FUN_ov16_02113b78
	add r7, r7, #1
_0211AA30:
	add r8, r8, #1
_0211AA34:
	cmp r8, #0x21
	blt _0211A99C
	ldr r2, [sp, #4]
	mov r0, r10
	mov r1, r9
	bl FUN_ov47_0211bd3c
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, r10, r0
	strb r1, [r0, #0x5c]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA64: .word unk_02099F38
	arm_func_end FUN_ov47_0211a938

	arm_func_start FUN_ov47_0211aa68
FUN_ov47_0211aa68: ; 0x0211AA68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211AAA0 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x54]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AAA0: .word unk_02099F38
	arm_func_end FUN_ov47_0211aa68

	arm_func_start FUN_ov47_0211aaa4
FUN_ov47_0211aaa4: ; 0x0211AAA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	add r0, r10, r2
	ldrb r0, [r0, #0x5c]
	str r2, [sp, #4]
	mov r9, r1
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r10, #0x52
	mov r0, r2
	mov r7, #1
	mov r8, #0
	add r5, r10, r0, lsl #2
	add r6, r1, #0x400
	ldr r4, _0211AB78 ; =0x02099F38
	mov r11, #0x4a
	b _0211AB58
_0211AAF0:
	mla r1, r8, r11, r6
	mov r0, r10
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211AB54
	mov r0, #0x4a
	mla r0, r8, r0, r10
	ldrb r0, [r0, #0x453]
	cmp r9, r0
	bne _0211AB54
	add r0, r10, r8, lsl #2
	ldr r2, [r0, #0x134]
	ldr r0, [r4]
	and r3, r2, #0xff
	ldr r1, [r5, #0x54]
	mov r2, r7
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0x54]
	mov r2, r7
	mov r3, #0
	bl  FUN_ov16_0211401c
	add r7, r7, #1
_0211AB54:
	add r8, r8, #1
_0211AB58:
	cmp r8, #0x21
	blo _0211AAF0
	ldr r0, [sp, #4]
	mov r1, #1
	add r0, r10, r0
	strb r1, [r0, #0x5c]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB78: .word unk_02099F38
	arm_func_end FUN_ov47_0211aaa4

	arm_func_start FUN_ov47_0211ab7c
FUN_ov47_0211ab7c: ; 0x0211AB7C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211AC04 ; =0x02099F38
	b _0211ABB8
_0211AB90:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x98]
	cmp r1, #0
	beq _0211ABB4
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211ABB4:
	add r5, r5, #1
_0211ABB8:
	cmp r5, #0x26
	blo _0211AB90
	mov r5, #0
	ldr r4, _0211AC04 ; =0x02099F38
	b _0211ABF4
_0211ABCC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x134]
	cmp r1, #0
	beq _0211ABF0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211ABF0:
	add r5, r5, #1
_0211ABF4:
	cmp r5, #0x21
	blo _0211ABCC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211AC04: .word unk_02099F38
	arm_func_end FUN_ov47_0211ab7c

	arm_func_start FUN_ov47_0211ac08
FUN_ov47_0211ac08: ; 0x0211AC08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211ACF4 ; =0x02099F38
	b _0211AC5C
_0211AC20:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x98]
	cmp r1, #0
	beq _0211AC58
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AC58
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x98]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211AC58:
	add r4, r4, #1
_0211AC5C:
	cmp r4, #0x26
	blo _0211AC20
	mov r4, #0
	mov r9, #4
	mov r8, #3
	mov r7, r4
	ldr r6, _0211ACF4 ; =0x02099F38
	b _0211ACE8
_0211AC7C:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x134]
	cmp r1, #0
	beq _0211ACE4
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	bne _0211ACE4
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x134]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211ACE4
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x134]
	mov r2, r9
	mov r3, r8
	bl  FUN_ov16_02114918
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x134]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211ACE4:
	add r4, r4, #1
_0211ACE8:
	cmp r4, #0x21
	blo _0211AC7C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ACF4: .word unk_02099F38
	arm_func_end FUN_ov47_0211ac08

	arm_func_start FUN_ov47_0211acf8
FUN_ov47_0211acf8: ; 0x0211ACF8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r5, _0211AEA8 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r5]
	mov r6, r1
	mov r1, #2
	bl  FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #3
	bl  FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #4
	bl  FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #5
	bl  FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #6
	bl  FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #7
	bl  FUN_ov16_0210eb3c
	mov r0, r4
	bl FUN_ov47_0211a81c
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _0211AEA0
_0211AD68: ; jump table
	b _0211AD7C ; case 0
	b _0211ADA8 ; case 1
	b _0211ADF0 ; case 2
	b _0211AE38 ; case 3
	b _0211AE78 ; case 4
_0211AD7C:
	mov r0, r4
	add r1, r4, #0x2a0
	bl FUN_ov47_0211aeac
	mov r0, r4
	add r1, r4, #0x348
	bl FUN_ov47_0211aeac
	mov r0, r4
	add r1, r4, #0x1f8
	bl FUN_ov47_0211c030
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211ADA8:
	mov r0, r4
	add r1, r4, #0x348
	bl FUN_ov47_0211aeac
	mov r0, #0x48
	str r0, [sp]
	mov r1, #0xb0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r5, #0x60
	mov r0, r4
	add r1, r4, #0x2a0
	mov r2, #0x22
	mov r3, #0x30
	str r5, [sp, #0x10]
	bl FUN_ov47_0211cb0c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211ADF0:
	mov r0, r4
	add r1, r4, #0x348
	bl FUN_ov47_0211aeac
	mov r0, #0x48
	str r0, [sp]
	mov r1, #0xb0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r5, #0x60
	mov r0, r4
	add r1, r4, #0x2a0
	mov r2, #0x21
	mov r3, #0x18
	str r5, [sp, #0x10]
	bl FUN_ov47_0211cb0c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211AE38:
	mov r0, r4
	add r1, r4, #0x348
	bl FUN_ov47_0211aeac
	mov r0, #0x38
	str r0, [sp]
	mov r1, #0x68
	str r1, [sp, #4]
	mov r5, #0x67
	mov r0, r4
	add r1, r4, #0x2a0
	mov r2, #0x24
	mov r3, #0x10
	str r5, [sp, #8]
	bl FUN_ov47_0211cee0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211AE78:
	mov r0, r4
	add r1, r4, #0x348
	bl FUN_ov47_0211aeac
	mov r5, #0x30
	mov r0, r4
	add r1, r4, #0x2a0
	mov r2, #0x25
	mov r3, #0x10
	str r5, [sp]
	bl FUN_ov47_0211d320
_0211AEA0:
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211AEA8: .word unk_02099EB4
	arm_func_end FUN_ov47_0211acf8

	arm_func_start FUN_ov47_0211aeac
FUN_ov47_0211aeac: ; 0x0211AEAC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211AEF8 ; =0x02099F38
	b _0211AEDC
_0211AEC0:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211AED8
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211AED8:
	add r5, r5, #1
_0211AEDC:
	cmp r5, #0x20
	blt _0211AEC0
	mov r0, r6
	mov r1, #0
	mov r2, #0xa8
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211AEF8: .word unk_02099F38
	arm_func_end FUN_ov47_0211aeac

	arm_func_start FUN_ov47_0211aefc
FUN_ov47_0211aefc: ; 0x0211AEFC
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_0211AF08: ; jump table
	b _0211AF1C ; case 0
	b _0211AF24 ; case 1
	b _0211AF24 ; case 2
	b _0211AF24 ; case 3
	b _0211AF24 ; case 4
_0211AF1C:
	mov r0, #0
	bx lr
_0211AF24:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov47_0211aefc

	arm_func_start FUN_ov47_0211af2c
FUN_ov47_0211af2c: ; 0x0211AF2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r1, [r10, #0x64]
	bl FUN_ov47_0211aefc
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r10, #0x1f8
	mov r0, #0xa8
	mla r9, r4, r0, r1
	mov r7, #0
	ldr r6, _0211B068 ; =0x00007FFF
	ldr r5, _0211B06C ; =0x02099F38
	b _0211AF80
_0211AF60:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211AF7C
	ldr r0, [r5]
	mov r2, r6
	bl  FUN_ov16_02114204
_0211AF7C:
	add r7, r7, #1
_0211AF80:
	cmp r7, #0x20
	blt _0211AF60
	ldr r5, _0211B070 ; =0x00004210
	ldr r1, [r10, #0x54]
	cmp r4, #0
	ldrle r5, _0211B068 ; =0x00007FFF
	cmp r1, #0
	beq _0211AFB0
	ldr r0, _0211B06C ; =0x02099F38
	mov r2, r5
	ldr r0, [r0]
	bl  FUN_ov16_02114204
_0211AFB0:
	ldr r1, [r10, #0x58]
	cmp r1, #0
	beq _0211AFCC
	ldr r0, _0211B06C ; =0x02099F38
	mov r2, r5
	ldr r0, [r0]
	bl  FUN_ov16_02114204
_0211AFCC:
	sub r8, r4, #1
	add r6, r10, #0x1f8
	ldr r5, _0211B070 ; =0x00004210
	mov r11, #0
	b _0211B05C
_0211AFE0:
	mov r0, #0xa8
	mla r9, r8, r0, r6
	mov r7, r11
	ldr r4, _0211B06C ; =0x02099F38
	b _0211B050
_0211AFF4:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B04C
	ldr r0, [r10, #0x1e0]
	cmp r0, r1
	beq _0211B04C
	add r0, r10, r7, lsl #2
	ldr r1, [r10, #0x1c8]
	ldr r0, [r0, #0x218]
	cmp r1, r0
	bne _0211B038
	ldr r0, [r10, #0x64]
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	bne _0211B04C
_0211B038:
	add r1, r9, r7, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x20]
	mov r2, r5
	bl  FUN_ov16_02114204
_0211B04C:
	add r7, r7, #1
_0211B050:
	cmp r7, #0x20
	blt _0211AFF4
	sub r8, r8, #1
_0211B05C:
	cmp r8, #0
	bge _0211AFE0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B068: .word 0x00007FFF
_0211B06C: .word unk_02099F38
_0211B070: .word 0x00004210
	arm_func_end FUN_ov47_0211af2c

	arm_func_start FUN_ov47_0211b074
FUN_ov47_0211b074: ; 0x0211B074
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	ldr r7, _0211B11C ; =0x00005AD6
	ldr r6, _0211B120 ; =0x02099F38
	b _0211B0D8
_0211B08C:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x218]
	cmp r1, #0
	ble _0211B0D4
	ldr r0, [r5, #0x1e0]
	cmp r0, r1
	ldrne r0, [r5, #0x1b8]
	cmpne r0, r1
	ldrne r0, [r5, #0x1bc]
	cmpne r0, r1
	ldrne r0, [r5, #0x1c0]
	cmpne r0, r1
	ldrne r0, [r5, #0x1c4]
	cmpne r0, r1
	beq _0211B0D4
	ldr r0, [r6]
	mov r2, r7
	bl  FUN_ov16_02114204
_0211B0D4:
	add r4, r4, #1
_0211B0D8:
	cmp r4, #0x20
	blt _0211B08C
	ldr r1, [r5, #0x54]
	cmp r1, #0
	beq _0211B0FC
	ldr r0, _0211B120 ; =0x02099F38
	ldr r2, _0211B11C ; =0x00005AD6
	ldr r0, [r0]
	bl  FUN_ov16_02114204
_0211B0FC:
	ldr r1, [r5, #0x58]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B120 ; =0x02099F38
	ldr r2, _0211B11C ; =0x00005AD6
	ldr r0, [r0]
	bl  FUN_ov16_02114204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B11C: .word 0x00005AD6
_0211B120: .word unk_02099F38
	arm_func_end FUN_ov47_0211b074

	arm_func_start FUN_ov47_0211b124
FUN_ov47_0211b124: ; 0x0211B124
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	ldr r5, _0211B1A0 ; =0x00007FFF
	ldr r4, _0211B1A4 ; =0x02099F38
	b _0211B15C
_0211B13C:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x218]
	cmp r1, #0
	ble _0211B158
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_02114204
_0211B158:
	add r6, r6, #1
_0211B15C:
	cmp r6, #0x20
	blt _0211B13C
	ldr r1, [r7, #0x54]
	cmp r1, #0
	beq _0211B180
	ldr r0, _0211B1A4 ; =0x02099F38
	ldr r2, _0211B1A0 ; =0x00007FFF
	ldr r0, [r0]
	bl  FUN_ov16_02114204
_0211B180:
	ldr r1, [r7, #0x58]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B1A4 ; =0x02099F38
	ldr r2, _0211B1A0 ; =0x00007FFF
	ldr r0, [r0]
	bl  FUN_ov16_02114204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B1A0: .word 0x00007FFF
_0211B1A4: .word unk_02099F38
	arm_func_end FUN_ov47_0211b124

	arm_func_start FUN_ov47_0211b1a8
FUN_ov47_0211b1a8: ; 0x0211B1A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	str r0, [sp]
	movs r0, r1
	str r1, [sp, #4]
	addeq sp, sp, #0x1c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	mov r2, #0x4a
	ldrb r0, [r0, #0x40f]
	ldr r5, _0211B370 ; =0xFFFE7960
	mov r10, #0
	str r0, [sp, #8]
	mvn r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	mla r2, r1, r2, r0
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r2, #0x400
	str r0, [sp, #0x18]
_0211B208:
	ldr r0, [sp]
	mov r1, #0xa
	mla r0, r10, r1, r0
	add r0, r0, #0xd00
	ldrsh r1, [r0, #0xdc]
	ldrsh r2, [r0, #0xde]
	ldr r0, [sp, #8]
	ldr r6, [sp, #0x10]
	cmp r1, r0
	moveq r6, r2
	beq _0211B23C
	cmp r2, r0
	moveq r6, r1
_0211B23C:
	ldr r0, [sp, #0x14]
	cmp r6, r0
	beq _0211B358
	ldr r0, [sp]
	mov r1, #0x4a
	mla r4, r6, r1, r0
	add r0, r4, #0x400
	ldrsh r8, [r0, #0x56]
	ldr r0, [sp, #0x18]
	ldrsh r9, [r0, #0x56]
	sub r0, r9, r8
	bl abs
	add r1, r4, #0x400
	mov r4, r0
	ldr r0, [sp, #0x18]
	ldrsh r7, [r1, #0x58]
	ldrsh r11, [r0, #0x58]
	sub r0, r11, r7
	bl abs
	ldr r1, [sp, #4]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0211B358
_0211B298: ; jump table
	b _0211B358 ; case 0
	b _0211B2F8 ; case 1
	b _0211B314 ; case 2
	b _0211B2B0 ; case 3
	b _0211B2CC ; case 4
	b _0211B334 ; case 5
_0211B2B0:
	cmp r11, r7
	ble _0211B358
	cmp r4, #0
	addeq sp, sp, #0x1c
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _0211B2E4
_0211B2CC:
	cmp r11, r7
	bge _0211B358
	cmp r4, #0
	addeq sp, sp, #0x1c
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B2E4:
	sub r0, r0, r4
_0211B2E8:
	cmp r5, r0
	strlt r6, [sp, #0xc]
	movlt r5, r0
	b _0211B358
_0211B2F8:
	cmp r9, r8
	ble _0211B358
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _0211B32C
_0211B314:
	cmp r9, r8
	bge _0211B358
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B32C:
	sub r0, r4, r0
	b _0211B2E8
_0211B334:
	cmp r9, r8
	bge _0211B358
	cmp r4, #0
	cmpeq r0, #0
	addeq sp, sp, #0x1c
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #3
	str r0, [sp, #0xc]
_0211B358:
	add r10, r10, #1
	cmp r10, #0x84
	blt _0211B208
	ldr r0, [sp, #0xc]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B370: .word 0xFFFE7960
	arm_func_end FUN_ov47_0211b1a8

	arm_func_start FUN_ov47_0211b374
FUN_ov47_0211b374: ; 0x0211B374
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldrb r2, [r5, #0x418]
	cmp r2, #1
	bne _0211B3B4
	mov r2, #0
	str r2, [sp]
	ldr r0, _0211B450 ; =0x02099F38
	sub r3, r2, #0x100
	ldr r1, [r5, #0x1f4]
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B3B4:
	ldrb r3, [r5, #0x40f]
	mov r6, #0x4a
	ldr r4, [r5, #0x410]
	mla r2, r3, r6, r5
	ldrb r2, [r2, #0x453]
	cmp r4, r2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	bl FUN_ov47_0211b1a8
	mov r4, r0
	sub r0, r6, #0x4b
	cmp r4, r0
	bne _0211B3F8
	mov r0, r5
	bl FUN_ov47_0211b45c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B3F8:
	ldrb r2, [r5, #0x40f]
	mla r0, r4, r6, r5
	mla r1, r2, r6, r5
	ldrb r2, [r1, #0x453]
	ldrb r1, [r0, #0x453]
	cmp r2, r1
	beq _0211B430
	mov r0, r5
	mov r2, #0
	bl FUN_ov47_0211dd98
	cmp r0, #0
	bne _0211B43C
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B430:
	ldr r0, _0211B454 ; =0x0209AC44
	ldr r1, _0211B458 ; =0x000040D3
	bl FUN_0202cf6c
_0211B43C:
	mov r0, r5
	strb r4, [r5, #0x40f]
	bl FUN_ov47_0211b45c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B450: .word unk_02099F38
_0211B454: .word unk_0209AC44
_0211B458: .word 0x000040D3
	arm_func_end FUN_ov47_0211b374

	arm_func_start FUN_ov47_0211b45c
FUN_ov47_0211b45c: ; 0x0211B45C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _0211B50C ; =0x02099F38
	sub r7, r4, #0x100
	mov r5, r0
	str r4, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0x1e0]
	mov r3, r7
	mov r2, #2
	bl  FUN_ov16_02113b78
	str r4, [sp]
	mov r4, #1
	ldr r0, [r6]
	ldr r1, [r5, #0x1f4]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldrb r0, [r5, #0x418]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r5, #0x40f]
	mov r1, #0x4a
	ldr r3, [r5, #0x3f8]
	mla r0, r2, r1, r5
	add r0, r0, #0x400
	ldrsh r0, [r0, #0x58]
	mov r2, r4
	sub r0, r0, r3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrb r4, [r5, #0x40f]
	ldr r3, [r5, #0x3f4]
	ldr r0, [r6]
	mla r1, r4, r1, r5
	add r1, r1, #0x400
	ldrsh r4, [r1, #0x56]
	ldr r1, [r5, #0x1f4]
	sub r3, r4, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B50C: .word unk_02099F38
	arm_func_end FUN_ov47_0211b45c

	arm_func_start FUN_ov47_0211b510
FUN_ov47_0211b510: ; 0x0211B510
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r1, [r6, #0x40f]
	bl FUN_ov47_0211b8f8
	ldrb r1, [r6, #0x40f]
	mov r4, #0x4a
	mov r7, r0
	mla r5, r1, r4, r6
	ldrb r3, [r5, #0x452]
	mov r0, r6
	add r2, r6, #0x400
	strb r3, [r6, #0x41f]
	ldrb r3, [r5, #0x454]
	strh r3, [r2, #0x20]
	bl FUN_ov47_0211ba28
	strb r0, [r6, #0x450]
	cmp r7, #0
	beq _0211B5B4
	ldrb r1, [r6, #0x40f]
	add r0, r6, #0x5e
	add r0, r0, #0x400
	mla r0, r1, r4, r0
	add r1, r6, #0x22
	mov r5, #0x16
	mov r2, r5
	add r1, r1, #0x400
	bl MI_CpuCopy8
	add r0, r6, #0x78
	add r1, r6, #0x38
	ldrb r3, [r6, #0x40f]
	add r0, r0, #0x400
	mov r2, r5
	mla r0, r3, r4, r0
	add r1, r1, #0x400
	bl MI_CpuCopy8
	ldrb r1, [r6, #0x40f]
	mov r0, #0
	strb r0, [r6, #0x451]
	mla r0, r1, r4, r6
	ldrb r1, [r0, #0x499]
	b _0211B61C
_0211B5B4:
	add r1, r6, #0x22
	mov r5, #0xb
	ldr r0, _0211B648 ; =0x0211FB84
	mov r2, r5
	add r1, r1, #0x400
	bl MI_CpuCopy8
	add r1, r6, #0x38
	ldr r0, _0211B64C ; =0x0211FB90
	mov r2, r5
	add r1, r1, #0x400
	bl MI_CpuCopy8
	ldrb r1, [r6, #0x40f]
	mov r0, r6
	bl FUN_ov47_0211b9f0
	cmp r0, #0
	moveq r2, #0
	subeq r1, r2, #1
	addeq r0, r6, #0x400
	streqb r2, [r6, #0x451]
	streqh r1, [r0, #0x4e]
	beq _0211B624
	ldrb r1, [r6, #0x40f]
	mov r0, #1
	strb r0, [r6, #0x451]
	mla r0, r1, r4, r6
	ldrb r1, [r0, #0x49a]
_0211B61C:
	add r0, r6, #0x400
	strh r1, [r0, #0x4e]
_0211B624:
	ldr r0, [r6, #0x4c]
	add r1, r6, #0x1e
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, #0
	strb r0, [r6, #0x41e]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B648: .word ov47_0211FB84
_0211B64C: .word ov47_0211FB90
	arm_func_end FUN_ov47_0211b510

	arm_func_start FUN_ov47_0211b650
FUN_ov47_0211b650: ; 0x0211B650
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov lr, #0
	mov r1, #3
	mov r10, r0
	mov r5, #1
	mov r6, lr
	add r3, sp, #4
	ldr r2, _0211B8F0 ; =0x55555556
	mov r0, r1
	b _0211B730
_0211B67C:
	ldr r11, [r10, #0x410]
	mov r9, r5
	cmp r6, r11
	subne r11, r11, #3
	cmpne r6, r11
	movne r9, lr
	mov r7, r5
	mov r8, r5
	mov r4, r5
	cmp r9, #0
	bne _0211B6D8
	smull r11, r12, r2, r6
	add r12, r12, r6, lsr #31
	smull r11, r12, r1, r12
	mov r9, #0
	subs r12, r6, r11
	beq _0211B6D0
	ldr r11, [r10, #0x410]
	add r11, r11, #1
	cmp r6, r11
	moveq r9, r5
_0211B6D0:
	cmp r9, #0
	moveq r4, #0
_0211B6D8:
	cmp r4, #0
	bne _0211B710
	ldr r4, [r10, #0x410]
	mov r9, #0
	smull r11, r12, r2, r4
	add r12, r12, r4, lsr #31
	smull r11, r12, r0, r12
	subs r12, r4, r11
	beq _0211B708
	sub r4, r4, #1
	cmp r6, r4
	moveq r9, r5
_0211B708:
	cmp r9, #0
	moveq r8, #0
_0211B710:
	cmp r8, #0
	bne _0211B728
	ldr r4, [r10, #0x410]
	add r4, r4, #3
	cmp r6, r4
	movne r7, #0
_0211B728:
	strb r7, [r3, r6]
	add r6, r6, #1
_0211B730:
	cmp r6, #9
	blo _0211B67C
	mov r7, #0
	mov r6, #1
	mov r5, r7
	add r4, sp, #4
	b _0211B768
_0211B74C:
	ldrb r0, [r4, r5]
	cmp r0, #0
	bne _0211B764
	mov r0, r10
	mov r1, r5
	bl FUN_ov47_0211a25c
_0211B764:
	add r5, r5, #1
_0211B768:
	cmp r5, #9
	blo _0211B74C
	mov r9, #0
	mov r11, #0x3e8
	add r8, sp, #4
	mvn r5, #0xff
	ldr r4, _0211B8F4 ; =0x02099F38
	b _0211B8DC
_0211B788:
	ldrb r0, [r8, r9]
	cmp r0, #0
	beq _0211B7A0
	mov r0, r10
	mov r1, r9
	bl FUN_ov47_0211a194
_0211B7A0:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x98]
	cmp r1, #0
	beq _0211B8BC
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, r9
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x338]
	cmp r0, #0
	bne _0211B874
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x98]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B8D8
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x98]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
	add r0, r10, r9
	add r0, r0, #0x1000
	strb r6, [r0, #0x338]
	ldr r0, [r4]
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x314]
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_021139bc
	ldr r0, [r4]
	add r2, r10, r9, lsl #2
	add r1, r2, #0x1000
	ldr r1, [r1, #0x314]
	ldr r3, [r2, #0x98]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x314]
	mov r2, r6
	mov r3, r7
	bl  FUN_ov16_0211401c
_0211B874:
	add r0, r10, r9, lsl #3
	ldr r2, [r0, #8]
	ldr r1, [r10, #0x3f8]
	add r3, r10, r9, lsl #2
	sub r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	str r1, [sp]
	ldr r2, [r0, #4]
	ldr r0, [r10, #0x3f4]
	add r1, r3, #0x1000
	sub r0, r2, r0
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r1, #0x314]
	mov r3, r2, asr #0x10
	mov r2, r6
	b _0211B8D4
_0211B8BC:
	str r7, [sp]
	add r1, r0, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x314]
	mov r2, r6
	mov r3, r5
_0211B8D4:
	bl  FUN_ov16_02113b78
_0211B8D8:
	add r9, r9, #1
_0211B8DC:
	cmp r9, #9
	blo _0211B788
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B8F0: .word 0x55555556
_0211B8F4: .word unk_02099F38
	arm_func_end FUN_ov47_0211b650

	arm_func_start FUN_ov47_0211b8f8
FUN_ov47_0211b8f8: ; 0x0211B8F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov47_0211b930
	cmp r0, #0
	beq _0211B928
	mov r0, r5
	mov r1, r4
	bl FUN_ov47_0211b970
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_0211B928:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov47_0211b8f8

	arm_func_start FUN_ov47_0211b930
FUN_ov47_0211b930: ; 0x0211B930
	stmfd sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #0x6c]
	blx r2
	ldr r2, [r0, #0x44]
	ldr r3, [r0, #0x48]
	mov r0, #1
	mov r1, r0, lsl r4
	and r1, r3, r1, asr #31
	cmp r1, #0
	and r2, r2, r0, lsl r4
	mov r1, #0
	cmpeq r2, #0
	moveq r0, r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov47_0211b930

	arm_func_start FUN_ov47_0211b970
FUN_ov47_0211b970: ; 0x0211B970
	stmfd sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #0x6c]
	blx r2
	ldr r2, [r0, #0x4c]
	ldr r3, [r0, #0x50]
	mov r0, #1
	mov r1, r0, lsl r4
	and r1, r3, r1, asr #31
	cmp r1, #0
	and r2, r2, r0, lsl r4
	mov r1, #0
	cmpeq r2, #0
	moveq r0, r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov47_0211b970

	arm_func_start FUN_ov47_0211b9b0
FUN_ov47_0211b9b0: ; 0x0211B9B0
	stmfd sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #0x6c]
	blx r2
	mov r1, r4, lsl #1
	ldrh r1, [r0, r1]
	ldr r0, _0211B9EC ; =0x0000FFE0
	and r0, r1, r0
	mov r0, r0, asr #5
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0211B9EC: .word 0x0000FFE0
	arm_func_end FUN_ov47_0211b9b0

	arm_func_start FUN_ov47_0211b9f0
FUN_ov47_0211b9f0: ; 0x0211B9F0
	stmfd sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #0x6c]
	blx r2
	mov r1, r4, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #2
	mov r0, r0, asr #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov47_0211b9f0

	arm_func_start FUN_ov47_0211ba28
FUN_ov47_0211ba28: ; 0x0211BA28
	mov r2, #0x4a
	mul r3, r1, r2
	add r2, r0, r3
	ldrb r1, [r2, #0x452]
	cmp r1, #2
	movne r0, #0
	bxne lr
	add r1, r2, #0x400
	ldrsh r2, [r1, #0x5c]
	cmp r2, #0
	beq _0211BA64
	ldrsh r1, [r1, #0x76]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
_0211BA64:
	cmp r2, #0
	bne _0211BA84
	add r0, r0, r3
	add r0, r0, #0x400
	ldrsh r0, [r0, #0x76]
	cmp r0, #0
	movne r0, #1
	bxne lr
_0211BA84:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov47_0211ba28

	arm_func_start FUN_ov47_0211ba8c
FUN_ov47_0211ba8c: ; 0x0211BA8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r1, [r0]
	mov r9, r0
	ldr r1, [r1, #0x6c]
	mov r10, #0
	blx r1
	mov r7, r0
	add r0, r9, #0x52
	mov r8, r10
	add r6, r0, #0x400
	mov r5, #0xc0
	mov r11, #0x100
	ldr r4, _0211BC84 ; =0x02099F38
	b _0211BC78
_0211BAC4:
	mov r1, #0x4a
	mla r1, r8, r1, r6
	mov r0, r9
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211BC74
	mov r0, #0x4a
	mla r0, r8, r0, r9
	ldrb r1, [r0, #0x453]
	ldr r2, [r9, #0x410]
	cmp r2, r1
	ldrne r0, [r9, #0x414]
	cmpne r0, r1
	beq _0211BB5C
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e8]
	add r2, r8, #1
	mov r3, r10
	bl  FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e8]
	add r2, r8, #1
	mov r3, r11
	bl  FUN_ov16_02113b78
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1ec]
	add r2, r8, #1
	mov r3, r10
	bl  FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1ec]
	add r2, r8, #1
	mov r3, r11
	b _0211BC70
_0211BB5C:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e8]
	add r2, r8, #1
	mov r3, #0
	bl  FUN_ov16_0211401c
	mov r0, #0x4a
	mla r0, r8, r0, r9
	add r1, r0, #0x400
	ldrsh r3, [r1, #0x58]
	ldr r0, [r9, #0x3f8]
	add r2, r8, #1
	sub r0, r3, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r12, [r1, #0x56]
	ldr r3, [r9, #0x3f4]
	ldr r0, [r4]
	sub r3, r12, r3
	mov r3, r3, lsl #0x10
	ldr r1, [r9, #0x1e8]
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, r8, lsl #1
	ldrh r0, [r7, r0]
	and r0, r0, #0x1c
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x10
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211BBF0
_0211BBE0: ; jump table
	b _0211BBF0 ; case 0
	b _0211BBF8 ; case 1
	b _0211BC00 ; case 2
	b _0211BC08 ; case 3
_0211BBF0:
	mov r3, #0
	b _0211BC0C
_0211BBF8:
	mov r3, #1
	b _0211BC0C
_0211BC00:
	mov r3, #2
	b _0211BC0C
_0211BC08:
	mov r3, #3
_0211BC0C:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	cmp r8, #0
	ldr r1, [r9, #0x1ec]
	moveq r3, #0
	add r2, r8, #1
	bl  FUN_ov16_0211401c
	mov r0, #0x4a
	mla r0, r8, r0, r9
	add r1, r0, #0x400
	ldrsh r3, [r1, #0x58]
	ldr r0, [r9, #0x3f8]
	add r2, r8, #1
	sub r0, r3, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r12, [r1, #0x56]
	ldr r3, [r9, #0x3f4]
	ldr r0, [r4]
	sub r3, r12, r3
	mov r3, r3, lsl #0x10
	ldr r1, [r9, #0x1ec]
	mov r3, r3, asr #0x10
_0211BC70:
	bl  FUN_ov16_02113b78
_0211BC74:
	add r8, r8, #1
_0211BC78:
	cmp r8, #0x21
	blt _0211BAC4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC84: .word unk_02099F38
	arm_func_end FUN_ov47_0211ba8c

	arm_func_start FUN_ov47_0211bc88
FUN_ov47_0211bc88: ; 0x0211BC88
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x50]
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _0211BCE0
	ldr r2, [r4, #0x410]
	ldr r0, _0211BD38 ; =0x02099F38
	add r2, r4, r2, lsl #3
	ldr lr, [r2, #4]
	ldr r12, [r4, #0x3f4]
	ldr r3, [r2, #8]
	ldr r2, [r4, #0x3f8]
	sub r12, lr, r12
	sub r3, r3, r2
	mov r2, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
_0211BCE0:
	ldrb r0, [r4, #0x50]
	eor r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, [r4, #0x414]
	ldr r0, _0211BD38 ; =0x02099F38
	add r2, r4, r2, lsl #3
	ldr lr, [r2, #4]
	ldr r12, [r4, #0x3f4]
	ldr r3, [r2, #8]
	ldr r2, [r4, #0x3f8]
	sub r4, lr, r12
	sub r3, r3, r2
	mov r2, r4, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldmfd sp!, {r4, pc}
_0211BD38: .word unk_02099F38
	arm_func_end FUN_ov47_0211bc88

	arm_func_start FUN_ov47_0211bd3c
FUN_ov47_0211bd3c: ; 0x0211BD3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r6, r10, r2, lsl #2
	ldr r0, [r6, #0x54]
	mov r9, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x52
	mov r7, #1
	mov r8, #0
	add r5, r0, #0x400
	mov r4, #0xc0
	ldr r11, _0211BDE8 ; =0x02099F38
	b _0211BDDC
_0211BD74:
	mov r0, #0x4a
	mla r1, r8, r0, r5
	mov r0, r10
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211BDD8
	mov r0, #0x4a
	mla r0, r8, r0, r10
	ldrb r0, [r0, #0x453]
	cmp r9, r0
	bne _0211BDD8
	cmp r8, #0
	beq _0211BDD4
	mov r0, r10
	mov r1, r8
	bl FUN_ov47_0211b930
	cmp r0, #0
	bne _0211BDD4
	str r4, [sp]
	ldr r0, [r11]
	ldr r1, [r6, #0x54]
	mov r2, r7
	mov r3, #0x100
	bl  FUN_ov16_02113b78
_0211BDD4:
	add r7, r7, #1
_0211BDD8:
	add r8, r8, #1
_0211BDDC:
	cmp r8, #0x21
	blt _0211BD74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BDE8: .word unk_02099F38
	arm_func_end FUN_ov47_0211bd3c

	arm_func_start FUN_ov47_0211bdec
FUN_ov47_0211bdec: ; 0x0211BDEC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	mov r11, #0x4a
	mov r4, #1
	b _0211C01C
_0211BE04:
	sub r5, r4, #1
	mov r0, #0xa
	mla r0, r5, r0, r10
	add r0, r0, #0xd00
	ldrsh r6, [r0, #0xdc]
	ldrsh r7, [r0, #0xde]
	cmp r6, r7
	beq _0211C018
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211C02C ; =0x02099F38
	ldr r1, [r10, #0x1e4]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0xa
	mla r1, r5, r0, r10
	ldrb r0, [r1, #0xde4]
	mov r3, #1
	cmp r0, #0
	beq _0211BE68
	ldrb r0, [r1, #0xde5]
	cmp r0, #0
	movne r3, #2
_0211BE68:
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211C02C ; =0x02099F38
	ldr r1, [r10, #0x1e4]
	ldr r0, [r0]
	mov r2, r4
	bl  FUN_ov16_0211401c
	mov r0, #0xa
	mla r0, r5, r0, r10
	add r0, r0, #0xd00
	ldrh r8, [r0, #0xe2]
	ldrsh r9, [r0, #0xe0]
	cmp r8, #0
	cmpeq r9, #0
	bne _0211BF44
	smlabb r0, r7, r11, r10
	add r0, r0, #0x400
	ldrsh r3, [r0, #0x56]
	ldrsh r1, [r0, #0x58]
	smlabb r0, r6, r11, r10
	add r0, r0, #0x400
	ldrsh r2, [r0, #0x56]
	ldrsh r0, [r0, #0x58]
	sub r9, r3, r2
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	mov r0, r9
	bl FX_Atan2Idx
	mov r8, r0
	smlabb r0, r7, r11, r10
	ldrb r1, [r0, #0x453]
	smlabb r0, r6, r11, r10
	ldrb r0, [r0, #0x453]
	cmp r1, r0
	beq _0211BF10
	mov r1, r8, lsr #0x1f
	rsb r0, r1, r8, lsl #18
	adds r0, r1, r0, ror #18
	addeq r0, r8, #0xa
	moveq r0, r0, lsl #0x10
	moveq r8, r0, lsr #0x10
_0211BF10:
	ldr r0, [sp, #4]
	str r9, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #8
	bl VEC_Mag
	mov r9, r0
	mov r0, #0xa
	mla r0, r5, r0, r10
	add r0, r0, #0xd00
	strh r8, [r0, #0xe2]
	strh r9, [r0, #0xe0]
_0211BF44:
	mov r0, #0xd
	mul r0, r9, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211C02C ; =0x02099F38
	ldr r1, [r10, #0x1e4]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #0x5f
	bl  FUN_ov16_02113c60
	ldr r0, _0211C02C ; =0x02099F38
	ldr r1, [r10, #0x1e4]
	ldr r0, [r0]
	mov r3, r8
	mov r2, r4
	bl  FUN_ov16_02113e30
	smlabb r1, r7, r11, r10
	add r1, r1, #0x400
	smlabb r2, r6, r11, r10
	add r2, r2, #0x400
	ldrsh r7, [r1, #0x56]
	ldrsh r6, [r2, #0x56]
	ldrsh r3, [r1, #0x58]
	ldrsh r1, [r2, #0x58]
	add r6, r7, r6
	ldr r5, [r10, #0x3f4]
	add r2, r3, r1
	add r1, r6, #0x28
	add r1, r1, r1, lsr #31
	rsb r1, r5, r1, asr #1
	mov r1, r1, lsl #0x10
	mov r3, r1, asr #0x10
	add r1, r2, #0x28
	sub r2, r3, #7
	mov r2, r2, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r5, [r10, #0x3f8]
	add r1, r1, r1, lsr #31
	rsb r1, r5, r1, asr #1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	add r0, r9, r9, lsr #31
	sub r1, r1, #2
	sub r0, r1, r0, asr #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211C02C ; =0x02099F38
	ldr r1, [r10, #0x1e4]
	ldr r0, [r0]
	mov r2, r4
	bl  FUN_ov16_02113b78
_0211C018:
	add r4, r4, #1
_0211C01C:
	cmp r4, #0x84
	ble _0211BE04
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C02C: .word unk_02099F38
	arm_func_end FUN_ov47_0211bdec

	arm_func_start FUN_ov47_0211c030
FUN_ov47_0211c030: ; 0x0211C030
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r7, #0
	mov r8, r1
	str r7, [sp, #0x20]
	ldr r2, [r8]
	mov r9, r0
	str r2, [sp, #4]
	ldr r4, _0211CA28 ; =0x02099F38
	mov r10, r7
	bl FUN_ov47_0211aeac
	ldr r1, [r9, #0x64]
	mov r0, #0x3e8
	str r1, [r8, #0x1c]
	str r0, [r8, #0xa4]
	mov r6, #1
	add r11, sp, #0x20
	b _0211C108
_0211C078:
	mov r0, r9
	mov r1, r8
	mov r2, r11
	mov r3, r10
	str r6, [sp]
	bl FUN_ov47_0211d720
	add r1, r9, r7, lsl #2
	add r1, r1, #0x1000
	add r2, r9, r7
	str r0, [r1, #0x314]
	add r0, r2, #0x1000
	ldrb r0, [r0, #0x338]
	cmp r0, #0
	beq _0211C104
	ldr r0, [r4]
	ldr r1, [r1, #0x314]
	mov r2, r6
	mov r3, #0x3e8
	bl  FUN_ov16_021139bc
	add r2, r9, r7, lsl #2
	add r1, r2, #0x1000
	ldr r3, [r2, #0x98]
	ldr r0, [r4]
	ldr r1, [r1, #0x314]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	add r1, r9, r7, lsl #2
	str r10, [sp]
	add r1, r1, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x314]
	mov r2, r6
	mov r3, r10
	bl  FUN_ov16_0211401c
_0211C104:
	add r7, r7, #1
_0211C108:
	cmp r7, #9
	blo _0211C078
	mov r0, r9
	mov r11, #0
	mov r6, #1
	add r10, sp, #0x20
	ldr r4, _0211CA28 ; =0x02099F38
	bl FUN_ov47_0211b650
	mov r7, r11
	b _0211C184
_0211C130:
	mov r0, r9
	mov r1, r8
	mov r2, r10
	mov r3, r11
	str r6, [sp]
	bl FUN_ov47_0211d720
	mov r1, r0
	add r0, r9, r7, lsl #2
	str r1, [r0, #0x1b8]
	ldr r0, [r4]
	mov r2, r6
	mov r3, #0x1f4
	bl  FUN_ov16_021139bc
	add r1, r9, r7, lsl #2
	ldr r3, [r9, #0xe8]
	ldr r0, [r4]
	ldr r1, [r1, #0x1b8]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	add r7, r7, #1
_0211C184:
	cmp r7, #4
	blt _0211C130
	mov r10, #0
	str r10, [sp]
	ldr r4, _0211CA28 ; =0x02099F38
	mov r2, #1
	ldr r1, [r9, #0x1b8]
	ldr r0, [r4]
	mov r3, r2
	bl  FUN_ov16_0211401c
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1bc]
	mov r2, #1
	mov r3, r10
	bl  FUN_ov16_0211401c
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1c0]
	mov r2, #1
	mov r3, #3
	bl  FUN_ov16_0211401c
	str r10, [sp]
	mov r6, #2
	ldr r0, [r4]
	ldr r1, [r9, #0x1c4]
	mov r2, #1
	mov r3, r6
	bl  FUN_ov16_0211401c
	mov r0, r9
	bl FUN_ov47_0211d594
	add r7, sp, #0x20
	mov r0, r9
	mov r1, r8
	mov r3, r10
	mov r2, r7
	str r6, [sp]
	bl FUN_ov47_0211d720
	mov r1, r0
	str r1, [r9, #0x1e0]
	mov r11, #0x64
	ldr r0, [r4]
	mov r2, #1
	mov r3, r11
	bl  FUN_ov16_021139bc
	ldr r3, [r9, #0xc4]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e0]
	mov r2, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e0]
	mov r2, #1
	mov r3, r10
	bl  FUN_ov16_0211401c
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e0]
	mov r2, #1
	mov r3, r10
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [r9, #0x1e0]
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_021139bc
	ldr r3, [r9, #0xc0]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e0]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e0]
	mov r2, r6
	mov r3, r10
	bl  FUN_ov16_0211401c
	str r10, [sp]
	mov r2, r6
	sub r6, r11, #0x164
	ldr r0, [r4]
	ldr r1, [r9, #0x1e0]
	mov r3, r6
	bl  FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r10
	bl FUN_ov47_0211d720
	mov r1, r0
	str r1, [r9, #0x1f4]
	ldr r0, [r4]
	mov r2, #1
	mov r3, r11
	bl  FUN_ov16_021139bc
	ldr r3, [r9, #0xbc]
	ldr r0, [r4]
	ldr r1, [r9, #0x1f4]
	mov r2, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1f4]
	mov r2, #1
	mov r3, r10
	bl  FUN_ov16_0211401c
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1f4]
	mov r3, r6
	mov r2, #1
	bl  FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	mov r2, r7
	mov r0, r9
	mov r1, r8
	mov r3, r10
	bl FUN_ov47_0211d720
	mov r1, r0
	str r1, [r9, #0x1c8]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #0x32
	bl  FUN_ov16_021139bc
	ldr r3, [r9, #0xd0]
	ldr r0, [r4]
	ldr r1, [r9, #0x1c8]
	mov r2, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r10, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1c8]
	mov r2, #1
	mov r3, r10
	bl  FUN_ov16_0211401c
	ldr r0, [r9, #0xcc]
	ldr r1, [r9, #0xd0]
	ldr r4, _0211CA2C ; =0x02099EB4
	and r7, r0, #0xff
	and r6, r1, #0xff
	ldr r0, [r4]
	mov r1, #1
	bl  FUN_ov16_0210eb3c
	str r11, [sp]
	ldr r0, [r4]
	ldr r3, [r9, #0x1c8]
	mov r1, #1
	mov r2, #5
	bl  FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211C468
	mov r11, #0x18
	mov r1, #0xd0
	mov r2, #0xa8
	mov r3, #0x30
	str r11, [sp]
	bl  FUN_ov16_0210e674
	mov r1, #1
	add r0, r4, #0x3a
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	add r0, r4, #0x3a
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_0210e720
	mov r1, #1
	add r0, r4, #0x3e
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_0210e720
_0211C468:
	mov r10, #0xa8
	str r10, [sp]
	ldr r4, _0211CA28 ; =0x02099F38
	ldr r1, [r9, #0x1c8]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #0xd0
	bl  FUN_ov16_02113b78
	mov r1, #1
	str r1, [sp]
	add r2, sp, #0x20
	mov r0, r9
	mov r1, r8
	mov r3, #0
	bl FUN_ov47_0211d720
	mov r1, r0
	str r1, [r9, #0x1cc]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #0x14
	bl  FUN_ov16_021139bc
	ldr r3, [r9, #0xd4]
	ldr r0, [r4]
	ldr r1, [r9, #0x1cc]
	mov r2, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x1cc]
	mov r2, #1
	mov r3, #0
	bl  FUN_ov16_0211401c
	ldr r0, [r9, #0xd8]
	ldr r1, [r9, #0xd4]
	ldr r7, _0211CA2C ; =0x02099EB4
	and r6, r0, #0xff
	mov r11, #7
	and r4, r1, #0xff
	ldr r0, [r7]
	mov r1, r11
	bl  FUN_ov16_0210eb3c
	mov r0, #0x64
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, [r9, #0x1cc]
	mov r1, r11
	mov r2, #0xa
	bl  FUN_ov16_0210fbe8
	movs r7, r0
	beq _0211C5A0
	mov r11, #0x18
	mov r2, r10
	mov r1, #0x98
	mov r3, #0x38
	str r11, [sp]
	bl  FUN_ov16_0210e674
	mov r2, #0
	mov r1, #1
	add r0, r7, #0x3a
	mov r3, r2
	bl  FUN_ov16_0210e6fc
	mov r2, #0
	mov r1, r4
	add r0, r7, #0x3a
	mov r3, r2
	bl  FUN_ov16_0210e720
	mov r2, #0
	mov r1, #1
	add r0, r7, #0x3e
	mov r3, r2
	bl  FUN_ov16_0210e6fc
	mov r2, #0
	add r0, r7, #0x3e
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_0210e720
_0211C5A0:
	mov r0, #0xa8
	str r0, [sp]
	ldr r0, _0211CA28 ; =0x02099F38
	ldr r1, [r9, #0x1cc]
	ldr r0, [r0]
	mov r2, #1
	mov r3, #0x98
	bl  FUN_ov16_02113b78
	mov r0, r9
	bl FUN_ov47_0211a6fc
	ldr r1, [r9, #0x410]
	mov r0, r9
	bl FUN_ov47_0211a938
	mov r0, r9
	bl FUN_ov47_0211bc88
	mov r0, #0x21
	mov r4, #0
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	add r2, sp, #0x20
	mov r3, r4
	bl FUN_ov47_0211d720
	str r0, [r9, #0x1e8]
	add r0, r9, #0x52
	add r0, r0, #0x400
	mvn r11, #0
	str r0, [sp, #8]
	add r0, r11, #0x2000
	str r0, [sp, #0xc]
	add r0, r11, #0xf000
	str r0, [sp, #0x1c]
	add r0, r11, #0x2000
	str r0, [sp, #0x18]
	add r0, r11, #0xf800
	str r0, [sp, #0x14]
	add r0, r11, #0x2000
	str r0, [sp, #0x10]
	b _0211C90C
_0211C63C:
	ldr r1, [sp, #8]
	mov r2, #0x4a
	mla r1, r4, r2, r1
	mov r0, r9
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211C908
	ldr r0, _0211CA28 ; =0x02099F38
	ldr r1, [r9, #0x1e8]
	ldr r0, [r0]
	add r2, r4, #1
	mov r3, #0x2bc
	bl  FUN_ov16_021139bc
	mov r0, #0x4a
	mla r0, r4, r0, r9
	ldrb r0, [r0, #0x452]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211C8E8
_0211C688: ; jump table
	b _0211C698 ; case 0
	b _0211C8A0 ; case 1
	b _0211C6A0 ; case 2
	b _0211C8A0 ; case 3
_0211C698:
	mov r5, #0x1e
	b _0211C8E8
_0211C6A0:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	mov r6, r0
	mov r0, #0x4a
	mla r0, r4, r0, r9
	ldrb r2, [r0, #0x454]
	mov r0, r9
	mov r1, r4
	mov r2, r2, lsl #1
	ldrh r3, [r6, r2]
	mov r2, r11
	and r10, r3, #0xe000
	mov r7, r10, asr #0xd
	bl FUN_ov47_0211f138
	cmp r0, r10, asr #13
	ble _0211C724
	mov r7, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r2, r0, lsl #0x1d
	mov r0, #0x4a
	mla r0, r4, r0, r9
	ldrb r0, [r0, #0x454]
	ldr r1, [sp, #0xc]
	mov r0, r0, lsl #1
	ldrh r3, [r6, r0]
	and r1, r3, r1
	strh r1, [r6, r0]
	ldrh r1, [r6, r0]
	orr r1, r1, r2, lsr #16
	strh r1, [r6, r0]
_0211C724:
	mov r0, r9
	mov r1, r4
	bl FUN_ov47_0211ba28
	movs r10, r0
	mov r0, #0x4a
	mla r0, r4, r0, r9
	add r0, r0, #0x400
	ldrnesh r0, [r0, #0x74]
	ldreqsh r0, [r0, #0x5a]
	cmp r0, #1
	blt _0211C820
	mov r0, #0x4a
	mla r0, r4, r0, r9
	add r0, r0, #0x400
	cmp r10, #0
	ldrnesh r0, [r0, #0x76]
	ldreqsh r0, [r0, #0x5c]
	cmp r7, #3
	bne _0211C820
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, _0211CA30 ; =0x0209A0AC
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	bne _0211C820
	mov r0, #0x4a
	mla r2, r4, r0, r9
	ldrb r0, [r2, #0x454]
	cmp r10, #0
	mov r3, r0, lsl #1
	beq _0211C7E0
	ldrh r1, [r6, r3]
	ldr r0, [sp, #0x14]
	and r0, r1, r0
	strh r0, [r6, r3]
	ldrh r0, [r6, r3]
	strh r0, [r6, r3]
	ldrb r0, [r2, #0x454]
	mov r2, r0, lsl #1
	ldrh r1, [r6, r2]
	ldr r0, [sp, #0x10]
	and r0, r1, r0
	strh r0, [r6, r2]
	ldrh r0, [r6, r2]
	orr r0, r0, #0x4000
	b _0211C818
_0211C7E0:
	ldrh r1, [r6, r3]
	ldr r0, [sp, #0x1c]
	and r0, r1, r0
	strh r0, [r6, r3]
	ldrh r0, [r6, r3]
	strh r0, [r6, r3]
	ldrb r0, [r2, #0x454]
	mov r2, r0, lsl #1
	ldrh r1, [r6, r2]
	ldr r0, [sp, #0x18]
	and r0, r1, r0
	strh r0, [r6, r2]
	ldrh r0, [r6, r2]
	orr r0, r0, #0x2000
_0211C818:
	strh r0, [r6, r2]
	mov r7, #2
_0211C820:
	mov r0, r9
	mov r1, r4
	bl FUN_ov47_0211ba28
	cmp r0, #0
	beq _0211C86C
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _0211C8E8
_0211C840: ; jump table
	b _0211C850 ; case 0
	b _0211C860 ; case 1
	b _0211C858 ; case 2
	b _0211C864 ; case 3
_0211C850:
	mov r5, #0x18
	b _0211C8E8
_0211C858:
	mov r5, #0x19
	b _0211C8E8
_0211C860:
	b _0211C850
_0211C864:
	mov r5, #0x1a
	b _0211C8E8
_0211C86C:
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _0211C8E8
_0211C878: ; jump table
	b _0211C888 ; case 0
	b _0211C890 ; case 1
	b _0211C890 ; case 2
	b _0211C898 ; case 3
_0211C888:
	mov r5, #0x15
	b _0211C8E8
_0211C890:
	mov r5, #0x16
	b _0211C8E8
_0211C898:
	mov r5, #0x17
	b _0211C8E8
_0211C8A0:
	mov r0, r9
	mov r1, r4
	bl FUN_ov47_0211b9b0
	cmp r0, #0
	movne r5, #0x1c
	bne _0211C8E8
	mov r0, r9
	mov r1, r4
	bl FUN_ov47_0211b930
	cmp r0, #0
	movne r5, #0x1d
	bne _0211C8E8
	mov r0, r9
	mov r1, r4
	bl FUN_ov47_0211b9f0
	mov r5, #0x1f
	cmp r0, #0
	moveq r5, #0x1b
_0211C8E8:
	ldr r0, _0211CA28 ; =0x02099F38
	add r3, r9, r5, lsl #2
	ldr r3, [r3, #0x98]
	ldr r0, [r0]
	ldr r1, [r9, #0x1e8]
	add r2, r4, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
_0211C908:
	add r4, r4, #1
_0211C90C:
	cmp r4, #0x21
	blt _0211C63C
	mov r3, #0x21
	str r3, [sp]
	add r2, sp, #0x20
	mov r0, r9
	mov r1, r8
	mov r3, #0
	ldr r4, _0211CA28 ; =0x02099F38
	bl FUN_ov47_0211d720
	str r0, [r9, #0x1ec]
	mov r6, #1
	mov r5, #0x244
	b _0211C974
_0211C944:
	ldr r0, [r4]
	ldr r1, [r9, #0x1ec]
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_021139bc
	ldr r3, [r9, #0x118]
	ldr r0, [r4]
	ldr r1, [r9, #0x1ec]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	add r6, r6, #1
_0211C974:
	cmp r6, #0x21
	blt _0211C944
	ldrb r1, [r9, #0x50]
	mov r0, r9
	eor r1, r1, #1
	strb r1, [r9, #0x50]
	bl FUN_ov47_0211ba8c
	ldr r1, [r9, #0x410]
	mov r0, r9
	bl FUN_ov47_0211ca34
	mov r0, #0x84
	str r0, [sp]
	add r2, sp, #0x20
	mov r0, r9
	mov r1, r8
	mov r3, #0
	bl FUN_ov47_0211d720
	str r0, [r9, #0x1e4]
	mov r6, #1
	mov r5, #0x320
	b _0211C9F8
_0211C9C8:
	ldr r0, [r4]
	ldr r1, [r9, #0x1e4]
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_021139bc
	ldr r3, [r9, #0xc8]
	ldr r0, [r4]
	ldr r1, [r9, #0x1e4]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	add r6, r6, #1
_0211C9F8:
	cmp r6, #0x84
	ble _0211C9C8
	mov r0, r9
	bl FUN_ov47_0211bdec
	mov r0, r9
	mov r1, #0
	bl FUN_ov47_0211b374
	ldr r1, [sp, #4]
	mov r0, r8
	bl  FUN_ov16_020f52f4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CA28: .word unk_02099F38
_0211CA2C: .word unk_02099EB4
_0211CA30: .word unk_0209A0AC
	arm_func_end FUN_ov47_0211c030

	arm_func_start FUN_ov47_0211ca34
FUN_ov47_0211ca34: ; 0x0211CA34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0211CB08 ; =0x02099EB4
	mov r10, r0
	ldr r0, [r4]
	mov r9, r1
	mov r1, #5
	bl  FUN_ov16_0210eb3c
	add r0, r10, #0x52
	mov r8, #0
	add r5, r10, r9, lsl #3
	add r7, r0, #0x400
	mov r6, #0x20
	mov r11, #0x64
	b _0211CAFC
_0211CA6C:
	mov r0, #0x4a
	mla r1, r8, r0, r7
	mov r0, r10
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211CAF8
	mov r0, #0x4a
	mla r0, r8, r0, r10
	ldrb r0, [r0, #0x453]
	cmp r9, r0
	bne _0211CAF8
	add r0, r8, #0xb
	mov r0, r0, lsl #0x10
	str r11, [sp]
	mov r2, r0, lsr #0x10
	ldr r0, [r4]
	mov r1, #5
	mov r3, #0
	bl  FUN_ov16_0210fbe8
	cmp r0, #0
	beq _0211CAF8
	mov r1, #0x4a
	mla r1, r8, r1, r10
	str r6, [sp]
	add r1, r1, #0x400
	ldrsh r2, [r1, #0x58]
	ldrsh r3, [r1, #0x56]
	ldr r1, [r5, #4]
	add r12, r2, #4
	ldr r2, [r5, #8]
	add r3, r3, #4
	sub r1, r3, r1
	mov r3, r6
	sub r2, r12, r2
	bl  FUN_ov16_0210e674
_0211CAF8:
	add r8, r8, #1
_0211CAFC:
	cmp r8, #0x21
	blt _0211CA6C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CB08: .word unk_02099EB4
	arm_func_end FUN_ov47_0211ca34

	arm_func_start FUN_ov47_0211cb0c
FUN_ov47_0211cb0c: ; 0x0211CB0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r7, [sp, #0x34]
	ldr r6, [sp, #0x38]
	mov r4, #0
	mov r10, r0
	str r4, [sp, #4]
	mov r9, r1
	mov r8, r2
	mov r11, r3
	bl FUN_ov47_0211aeac
	ldr r0, [r10, #0x64]
	mov r4, #0x1e
	str r0, [r9, #0x1c]
	mov r0, #0
	str r0, [r9]
	ldr r0, _0211CED8 ; =0x02099EB4
	str r4, [r9, #0xa4]
	ldr r0, [r0]
	mov r1, #1
	bl  FUN_ov16_0210eb3c
	mov r0, #1
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r3, #0
	add r2, sp, #4
	bl FUN_ov47_0211d720
	mov r3, r4
	mov r5, r0
	ldr r4, _0211CEDC ; =0x02099F38
	mov r1, r5
	ldr r0, [r4]
	mov r2, #1
	bl  FUN_ov16_021139bc
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x98]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, #1
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, #0
	bl  FUN_ov16_0211401c
	ldrsh r0, [sp, #0x30]
	mov r1, r5
	mov r3, r11
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #1
	bl  FUN_ov16_02113b78
	add r1, r10, #0x1300
	ldrsh r3, [sp, #0x3c]
	ldrsh r2, [sp, #0x40]
	strh r7, [r1, #0x48]
	strh r3, [r1, #0x4c]
	strh r2, [r1, #0x4e]
	strh r6, [r1, #0x4a]
	mov r1, #1
	str r1, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #4
	mov r3, #0
	bl FUN_ov47_0211d720
	mov r5, r0
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, #0xf
	bl  FUN_ov16_021139bc
	ldr r3, [r10, #0xe0]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, #0
	bl  FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldr r0, [r10, #0xe4]
	ldr r1, [r10, #0xdc]
	and r8, r0, #0xff
	mov r0, #1
	and r5, r1, #0xff
	str r0, [sp]
	add r2, sp, #4
	mov r0, r10
	mov r1, r9
	mov r3, #0
	bl FUN_ov47_0211d720
	mov r1, r0
	str r1, [r10, #0x1d8]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #0xa
	bl  FUN_ov16_021139bc
	ldr r3, [r10, #0xdc]
	ldr r0, [r4]
	ldr r1, [r10, #0x1d8]
	mov r2, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x1d8]
	mov r2, #1
	mov r3, #0
	bl  FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x1d8]
	mov r2, #1
	mov r3, r7
	bl  FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211CED8 ; =0x02099EB4
	ldr r3, [r10, #0x1d8]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #6
	bl  FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211CDA8
	mov r11, #0x17
	mov r1, r7
	mov r2, r6
	mov r3, #0x30
	str r11, [sp]
	bl  FUN_ov16_0210e674
	mov r1, #1
	mov r2, r1
	mov r3, #0
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r2, #0
	add r0, r4, #0x3a
	mov r1, r5
	mov r3, r2
	bl  FUN_ov16_0210e720
	mov r1, #1
	add r0, r4, #0x3e
	mov r2, r1
	mov r3, #0
	bl  FUN_ov16_0210e6fc
	mov r2, #0
	add r0, r4, #0x3e
	mov r1, r8
	mov r3, r2
	bl  FUN_ov16_0210e720
_0211CDA8:
	mov r4, #0
	mov r6, #1
	add r2, sp, #4
	mov r0, r10
	mov r1, r9
	mov r3, r4
	str r6, [sp]
	bl FUN_ov47_0211d720
	mov r1, r0
	ldr r7, _0211CEDC ; =0x02099F38
	str r1, [r10, #0x1dc]
	ldr r0, [r7]
	mov r2, r6
	mov r3, #0xa
	bl  FUN_ov16_021139bc
	ldr r3, [r10, #0xdc]
	ldr r0, [r7]
	ldr r1, [r10, #0x1dc]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r7]
	ldr r1, [r10, #0x1dc]
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_0211401c
	ldrsh r0, [sp, #0x40]
	ldrsh r3, [sp, #0x3c]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r10, #0x1dc]
	bl  FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211CED8 ; =0x02099EB4
	ldr r3, [r10, #0x1dc]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #7
	bl  FUN_ov16_0210fbe8
	movs r9, r0
	beq _0211CEC0
	ldrsh r1, [sp, #0x3c]
	ldrsh r2, [sp, #0x40]
	mov r7, #0x17
	mov r3, #0x30
	str r7, [sp]
	bl  FUN_ov16_0210e674
	mov r1, r6
	mov r2, r6
	mov r3, r4
	add r0, r9, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	add r0, r9, #0x3a
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_0210e720
	add r0, r9, #0x3e
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r9, #0x3e
	mov r1, r8
	mov r2, r6
	mov r3, r4
	bl  FUN_ov16_0210e720
_0211CEC0:
	mov r0, r10
	mov r1, #1
	mov r2, #0
	bl FUN_ov47_0211d400
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CED8: .word unk_02099EB4
_0211CEDC: .word unk_02099F38
	arm_func_end FUN_ov47_0211cb0c

	arm_func_start FUN_ov47_0211cee0
FUN_ov47_0211cee0: ; 0x0211CEE0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xac
	mov r4, #0
	mov r10, r0
	str r4, [sp, #0x14]
	mov r9, r1
	mov r8, r2
	mov r11, r3
	bl FUN_ov47_0211aeac
	ldr r0, [r10, #0x64]
	mov r4, #0x14
	str r0, [r9, #0x1c]
	mov r0, #0
	str r0, [r9]
	ldr r0, _0211D308 ; =0x02099EB4
	str r4, [r9, #0xa4]
	ldr r0, [r0]
	mov r1, #1
	bl  FUN_ov16_0210eb3c
	mov r0, #1
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x14
	mov r3, #0
	bl FUN_ov47_0211d720
	mov r3, r4
	mov r5, r0
	ldr r4, _0211D30C ; =0x02099F38
	mov r1, r5
	ldr r0, [r4]
	mov r2, #1
	bl  FUN_ov16_021139bc
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x98]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, #1
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	mov r3, r0
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	bl  FUN_ov16_0211401c
	ldrsh r0, [sp, #0xd0]
	mov r1, r5
	mov r2, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r11
	bl  FUN_ov16_02113b78
	mov r0, r10
	bl FUN_ov47_0211f270
	cmp r0, #0
	beq _0211CFF8
	ldrb r2, [r10, #0x40f]
	mov r0, #0x4a
	add r1, r10, #0x5e
	smulbb r3, r2, r0
	add r0, r10, r3
	add r2, r0, #0x400
	add r1, r1, #0x400
	add r0, sp, #0x18
	add r1, r1, r3
	ldrsh r6, [r2, #0x5a]
	ldrsh r7, [r2, #0x5c]
	b _0211D034
_0211CFF8:
	mov r0, r10
	bl FUN_ov47_0211f2f8
	cmp r0, #0
	beq _0211D038
	ldrb r2, [r10, #0x40f]
	mov r0, #0x4a
	add r1, r10, #0x78
	smulbb r3, r2, r0
	add r0, r10, r3
	add r2, r0, #0x400
	ldrsh r6, [r2, #0x74]
	add r1, r1, #0x400
	ldrsh r7, [r2, #0x76]
	add r0, sp, #0x18
	add r1, r1, r3
_0211D034:
	bl strcpy
_0211D038:
	ldr r0, [r10, #0x1d0]
	mov r11, #1
	cmp r0, #0
	bne _0211D078
	ldr r4, _0211D30C ; =0x02099F38
	mov r1, #5
	ldr r0, [r4]
	mov r2, #3
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r10, #0x1d0]
	ldr r0, [r4]
	mov r2, r11
	mov r3, #0
	bl FUN_02059038
_0211D078:
	mov r8, #0
	add r2, sp, #0x14
	mov r0, r10
	mov r1, r9
	mov r3, r8
	str r11, [sp]
	bl FUN_ov47_0211d720
	mov r5, r0
	ldr r4, _0211D30C ; =0x02099F38
	mov r1, r5
	ldr r0, [r4]
	mov r2, r11
	mov r3, #0xf
	bl  FUN_ov16_021139bc
	ldr r3, [r10, #0x1d0]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	mov r3, #0x100
	bl  FUN_ov16_02113d08
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	mov r3, r8
	bl  FUN_ov16_02113d88
	ldrsh r0, [sp, #0xd0]
	mov r1, r5
	mov r2, r11
	add r0, r0, #3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r8
	bl  FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	mov r3, #2
	bl  FUN_ov16_02113ec0
	cmp r6, #0
	add r4, sp, #0x2c
	ldr r1, _0211D310 ; =0x0211F66C
	movne r8, r11
	add r2, sp, #0x18
	mov r0, r4
	add r1, r1, r8, lsl #7
	bl sprintf
	mov r8, #1
	str r8, [sp]
	mov r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	str r8, [sp, #0x10]
	ldr r1, [r10, #0x1d0]
	mov r0, r4
	mov r2, r8
	mov r3, r8
	bl  FUN_ov16_020f2304
	cmp r6, #0
	bne _0211D1C0
	ldr r4, _0211D314 ; =0x0209BA20
	mov r1, r7
	mov r0, r4
	mov r2, r8
	bl  FUN_ov16_020ee4b4
	cmp r0, #0
	beq _0211D1C0
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl  FUN_ov16_020ede60 ; may be ov17
_0211D1C0:
	mov r4, #1
	add r2, sp, #0x14
	mov r0, r10
	mov r1, r9
	mov r3, r5
	str r4, [sp]
	bl FUN_ov47_0211d720
	mov r1, r0
	ldr r6, _0211D30C ; =0x02099F38
	str r1, [r10, #0x1d4]
	ldr r0, [r6]
	mov r2, r4
	mov r3, #0xa
	bl  FUN_ov16_021139bc
	ldr r1, [r10, #0x124]
	ldr r0, [r6]
	and r3, r1, #0xff
	ldr r1, [r10, #0x1d4]
	mov r2, r4
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r6]
	ldr r1, [r10, #0x1d4]
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_0211401c
	ldrsh r0, [sp, #0xd8]
	ldrsh r3, [sp, #0xd4]
	mov r2, r4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r10, #0x1d4]
	bl  FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211D308 ; =0x02099EB4
	ldr r3, [r10, #0x1d4]
	ldr r0, [r0]
	mov r1, #6
	mov r2, #8
	bl  FUN_ov16_0210fbe8
	movs r7, r0
	beq _0211D2D4
	ldrsh r1, [sp, #0xd4]
	ldrsh r2, [sp, #0xd8]
	mov r6, #0x18
	mov r3, #0x30
	str r6, [sp]
	bl  FUN_ov16_0210e674
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r7, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	add r0, r7, #0x3a
	mov r3, r5
	bl  FUN_ov16_0210e720
	add r0, r7, #0x3e
	mov r1, r5
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r5
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_0210e720
_0211D2D4:
	ldr r6, _0211D318 ; =0x0209AC44
	mov r1, #0x1e
	mov r0, r6
	bl FUN_0202c4a0
	ldr r2, _0211D31C ; =0x0211FB9C
	mov r0, r6
	mov r1, r5
	bl FUN_0202d594
	add r0, r10, #0x1000
	strb r4, [r0, #0x378]
	strb r5, [r0, #0x379]
	add sp, sp, #0xac
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D308: .word unk_02099EB4
_0211D30C: .word unk_02099F38
_0211D310: .word 0x0211F66C
_0211D314: .word unk_0209BA20
_0211D318: .word unk_0209AC44
_0211D31C: .word ov47_0211FB9C
	arm_func_end FUN_ov47_0211cee0

	arm_func_start FUN_ov47_0211d320
FUN_ov47_0211d320: ; 0x0211D320
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r7, #0
	mov r4, r0
	str r7, [sp, #4]
	mov r6, r1
	mov r9, r2
	mov r8, r3
	bl FUN_ov47_0211aeac
	ldr r1, [r4, #0x64]
	mov r5, #0x14
	str r1, [r6, #0x1c]
	ldr r0, _0211D3F8 ; =0x02099EB4
	str r5, [r6, #0xa4]
	str r7, [r6]
	ldr r0, [r0]
	mov r1, #7
	bl  FUN_ov16_0210eb3c
	mov r1, r6
	mov r6, #1
	mov r0, r4
	add r2, sp, #4
	mov r3, r7
	str r6, [sp]
	bl FUN_ov47_0211d720
	mov r3, r5
	mov r5, r0
	ldr r10, _0211D3FC ; =0x02099F38
	mov r1, r5
	ldr r0, [r10]
	mov r2, r6
	bl  FUN_ov16_021139bc
	add r0, r4, r9, lsl #2
	ldr r1, [r0, #0x98]
	ldr r0, [r10]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r10]
	mov r3, r7
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_0211401c
	ldrsh r0, [sp, #0x28]
	mov r1, r5
	mov r2, r6
	str r0, [sp]
	ldr r0, [r10]
	mov r3, r8
	bl  FUN_ov16_02113b78
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D3F8: .word unk_02099EB4
_0211D3FC: .word unk_02099F38
	arm_func_end FUN_ov47_0211d320

	arm_func_start FUN_ov47_0211d400
FUN_ov47_0211d400: ; 0x0211D400
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	addne r0, r5, #0x1300
	ldrnesh r1, [r0, #0x4a]
	ldrnesh r3, [r0, #0x48]
	ldr r0, _0211D470 ; =0x02099F38
	moveq r1, #0xc0
	str r1, [sp]
	mov r4, r2
	ldr r0, [r0]
	ldr r1, [r5, #0x1d8]
	moveq r3, #0x100
	mov r2, #1
	bl  FUN_ov16_02113b78
	cmp r4, #0
	addne r0, r5, #0x1300
	ldrnesh r1, [r0, #0x4e]
	ldrnesh r3, [r0, #0x4c]
	ldr r0, _0211D470 ; =0x02099F38
	moveq r1, #0xc0
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r5, #0x1dc]
	moveq r3, #0x100
	mov r2, #1
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, pc}
_0211D470: .word unk_02099F38
	arm_func_end FUN_ov47_0211d400

	arm_func_start FUN_ov47_0211d474
FUN_ov47_0211d474: ; 0x0211D474
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	mov r6, r0
	ldrb r0, [r6, #0x418]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r9, #0
	mvn r8, #0xbf
	mov r7, #1
	mov r5, r9
	ldr r4, _0211D58C ; =0x02099F38
	b _0211D4C8
_0211D4A8:
	str r8, [sp]
	add r1, r6, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x1b8]
	mov r2, r7
	mov r3, r5
	bl  FUN_ov16_02113b78
	add r9, r9, #1
_0211D4C8:
	cmp r9, #4
	blt _0211D4A8
	ldr r7, _0211D590 ; =0x0211F624
	add r5, sp, #4
	ldmia r7!, {r0, r1, r2, r3}
	mov r4, r5
	stmia r5!, {r0, r1, r2, r3}
	ldmia r7, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r0, [r6, #0x410]
	mov r5, #0
	sub r1, r0, #1
	strb r1, [sp, #4]
	ldr r1, [r6, #0x1b8]
	add r0, r0, #1
	str r1, [sp, #8]
	strb r0, [sp, #0x14]
	ldr r0, [r6, #0x1bc]
	str r0, [sp, #0x18]
	b _0211D57C
_0211D518:
	ldrb r0, [r4, r5, lsl #4]
	ldr r1, [r6, #0x414]
	cmp r1, r0
	bne _0211D578
	add r1, r4, r5, lsl #4
	ldrsh r0, [r1, #0xa]
	mov r7, #1
	ldr r6, _0211D58C ; =0x02099F38
	str r0, [sp]
	ldrsh r3, [r1, #8]
	ldr r0, [r6]
	ldr r1, [r1, #4]
	mov r2, r7
	bl  FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	add r2, r4, r5, lsl #4
	ldr r0, [r6]
	ldr r1, [r2, #4]
	ldr r3, [r2, #0xc]
	mov r2, r7
	bl  FUN_ov16_0211401c
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D578:
	add r5, r5, #1
_0211D57C:
	cmp r5, #2
	blo _0211D518
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D58C: .word unk_02099F38
_0211D590: .word 0x0211F624
	arm_func_end FUN_ov47_0211d474

	arm_func_start FUN_ov47_0211d594
FUN_ov47_0211d594: ; 0x0211D594
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r9, #0
	mov r4, r0
	mvn r8, #0xbf
	mov r7, #1
	mov r6, r9
	ldr r5, _0211D714 ; =0x02099F38
	b _0211D5D8
_0211D5B8:
	str r8, [sp]
	add r1, r4, r9, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x1b8]
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_02113b78
	add r9, r9, #1
_0211D5D8:
	cmp r9, #4
	blt _0211D5B8
	ldr r0, _0211D718 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldr r6, _0211D71C ; =0x0211F644
	add r5, sp, #4
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldr r0, [r4, #0x1b8]
	mov r7, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x1bc]
	mov r8, #0x14
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x410]
	add r6, sp, #4
	cmp r0, #0
	movne r7, #0
	mul r2, r7, r8
	mov r0, #0x64
	str r0, [sp]
	add r1, r6, r2
	ldr r0, _0211D718 ; =0x02099EB4
	ldr r3, [r1, #4]
	ldrb r2, [r6, r2]
	ldr r0, [r0]
	mov r1, #2
	bl  FUN_ov16_0210fbe8
	movs r5, r0
	beq _0211D6E0
	mla r2, r7, r8, r6
	mov r3, #0x10
	str r3, [sp]
	ldrsh r1, [r2, #8]
	ldrsh r2, [r2, #0xa]
	bl  FUN_ov16_0210e674
	mov r4, #0
	mov r9, #1
	mov r1, r4
	mov r2, r9
	mov r3, r4
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3a
	mov r1, r4
	mla r2, r7, r8, r6
	ldr r2, [r2, #0xc]
	mov r3, r4
	bl  FUN_ov16_0210e720
	mov r2, r9
	add r0, r5, #0x3e
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	mla r1, r7, r8, r6
	add r0, r5, #0x3e
	ldr r2, [r1, #0x10]
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e720
_0211D6E0:
	add r1, sp, #4
	mov r0, #0x14
	mla r4, r7, r0, r1
	ldrsh r1, [r4, #0xa]
	ldr r0, _0211D714 ; =0x02099F38
	mov r2, #1
	str r1, [sp]
	ldrsh r3, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r4, #4]
	bl  FUN_ov16_02113b78
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D714: .word unk_02099F38
_0211D718: .word unk_02099EB4
_0211D71C: .word 0x0211F644
	arm_func_end FUN_ov47_0211d594

	arm_func_start FUN_ov47_0211d720
FUN_ov47_0211d720: ; 0x0211D720
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x20
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #1
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D7A0 ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0xa1]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0xa0]
	ldr r1, [r5]
	add r2, r6, #0xa1
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D7A0: .word unk_02099F38
	arm_func_end FUN_ov47_0211d720

	arm_func_start FUN_ov47_0211d7a4
FUN_ov47_0211d7a4: ; 0x0211D7A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #6
	str r0, [r4, #0x60]
	bl  FUN_ov16_020f153c
	add r0, r4, #0x1000
	mov r1, #1
	str r1, [r0, #0x370]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov47_0211d7a4

	arm_func_start FUN_ov47_0211d7c8
FUN_ov47_0211d7c8: ; 0x0211D7C8
	mov r2, #0
	mov r1, #8
	str r2, [r0, #0x64]
	str r1, [r0, #0x60]
	bx lr
	arm_func_end FUN_ov47_0211d7c8

	arm_func_start FUN_ov47_0211d7dc
FUN_ov47_0211d7dc: ; 0x0211D7DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4, #0x40f]
	mov r1, #0x4a
	mla r1, r2, r1, r4
	ldrb r1, [r1, #0x452]
	cmp r1, #2
	ldmnefd sp!, {r4, pc}
	bl FUN_ov47_0211f270
	cmp r0, #0
	bne _0211D818
	mov r0, r4
	bl FUN_ov47_0211f2f8
	cmp r0, #0
	beq _0211D834
_0211D818:
	ldr r0, _0211D844 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #3
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, pc}
_0211D834:
	ldr r0, _0211D844 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211D844: .word unk_0209AC44
	arm_func_end FUN_ov47_0211d7dc

	arm_func_start FUN_ov47_0211d848
FUN_ov47_0211d848: ; 0x0211D848
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bne _0211D868
	ldr r0, _0211D878 ; =0x02099EB4
	mov r1, #0x64
	ldr r0, [r0]
	bl  FUN_ov16_0210ee78
_0211D868:
	mov r0, #4
	str r4, [r5, #0x64]
	str r0, [r5, #0x60]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D878: .word unk_02099EB4
	arm_func_end FUN_ov47_0211d848

	arm_func_start FUN_ov47_0211d87c
FUN_ov47_0211d87c: ; 0x0211D87C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211D93C ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r4, #6
	beq _0211D8B8
	cmp r4, #7
	beq _0211D8D4
	b _0211D8F0
_0211D8B8:
	ldr r0, _0211D940 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #1
	mov r2, #0
	b _0211D8EC
_0211D8D4:
	ldr r0, _0211D940 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0
	mov r2, #1
_0211D8EC:
	bl FUN_ov47_0211d400
_0211D8F0:
	cmp r4, #0xb
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r4, #0x2c
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x40f]
	sub r1, r4, #0xb
	add r2, r5, #0x1000
	cmp r1, r0
	mvneq r0, #0
	str r1, [r2, #0x360]
	streq r0, [r2, #0x364]
	ldmeqfd sp!, {r3, r4, r5, pc}
	mvn r4, #0
	mov r0, r5
	str r4, [r2, #0x364]
	bl FUN_ov47_0211dd4c
	add r0, r5, #0x1000
	str r4, [r0, #0x360]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D93C: .word unk_02099EB4
_0211D940: .word unk_0209AC44
	arm_func_end FUN_ov47_0211d87c

	arm_func_start FUN_ov47_0211d944
FUN_ov47_0211d944: ; 0x0211D944
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	mov r4, #1
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211DC18 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r7]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r5, #0xa
	addls pc, pc, r5, lsl #2
	b _0211DB0C
_0211D97C: ; jump table
	b _0211DB0C ; case 0
	b _0211D9A8 ; case 1
	b _0211D9CC ; case 2
	b _0211DB0C ; case 3
	b _0211DB0C ; case 4
	b _0211D9EC ; case 5
	b _0211DA44 ; case 6
	b _0211DAC0 ; case 7
	b _0211DAEC ; case 8
	b _0211DB0C ; case 9
	b _0211DAFC ; case 10
_0211D9A8:
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldr r1, [r6, #0x410]
	mov r0, r6
	mov r2, r4
	sub r1, r1, #1
_0211D9C4:
	bl FUN_ov47_0211dd98
	b _0211DB0C
_0211D9CC:
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldr r1, [r6, #0x410]
	mov r0, r6
	mov r2, r4
	add r1, r1, #1
	b _0211D9C4
_0211D9EC:
	ldr r0, [r6, #0x64]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211DB0C
_0211D9FC: ; jump table
	b _0211DA10 ; case 0
	b _0211DA38 ; case 1
	b _0211DA38 ; case 2
	b _0211DB0C ; case 3
	b _0211DA38 ; case 4
_0211DA10:
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r7]
	mov r1, #5
	bl  FUN_ov16_0210efac
	mov r0, r6
	mov r1, r4
_0211DA30:
	bl FUN_ov47_0211d848
	b _0211DB0C
_0211DA38:
	ldr r0, [r7]
	mov r1, #2
	b _0211DB04
_0211DA44:
	ldr r0, [r6, #0x64]
	cmp r0, #1
	beq _0211DA5C
	cmp r0, #2
	beq _0211DAA8
	b _0211DB0C
_0211DA5C:
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r4, _0211DC20 ; =0x02099ED8
	ldr r0, [r4]
	bl  FUN_ov0_020cd110
	cmp r0, #0
	bne _0211DA90
	ldr r0, _0211DC24 ; =0x020A9C40
	mov r1, #0xfc
	mov r2, #0
	bl FUN_020460a8
	b _0211DA9C
_0211DA90:
	ldr r0, [r4]
	mov r1, #0
	bl  FUN_ov0_020cd104
_0211DA9C:
	mov r0, r6
	bl FUN_ov47_0211d7a4
	b _0211DB0C
_0211DAA8:
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov47_0211eb54
	b _0211DB0C
_0211DAC0:
	ldr r0, [r6, #0x64]
	cmp r0, #1
	beq _0211DAD4
	cmp r0, #2
	bne _0211DB0C
_0211DAD4:
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #0
	b _0211DA30
_0211DAEC:
	ldr r0, [r7]
	add r0, r0, #0xf00
	strh r4, [r0, #0x38]
	b _0211DB0C
_0211DAFC:
	ldr r0, [r7]
	mov r1, #0x400
_0211DB04:
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
_0211DB0C:
	cmp r5, #0xb
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x2c
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1000
	ldr r2, [r0, #0x360]
	mvn r1, #0
	cmp r2, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r0, #0x364]
	cmp r0, r1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r6, #0x40f]
	mov r0, #0x4a
	mla r0, r1, r0, r6
	ldrb r0, [r0, #0x452]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0211DB70
_0211DB60:
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	b _0211DC08
_0211DB70:
	ldrb r1, [r6, #0x40f]
	mov r0, #0x4a
	mla r0, r1, r0, r6
	ldrb r0, [r0, #0x452]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0211DBA0
	mov r0, r6
	bl FUN_ov47_0211d7dc
	b _0211DC08
_0211DBA0:
	ldrb r1, [r6, #0x40f]
	mov r0, #0x4a
	mla r0, r1, r0, r6
	ldrb r0, [r0, #0x452]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0211DBC8
	b _0211DB60
_0211DBC8:
	ldrb r1, [r6, #0x40f]
	mov r0, r6
	bl FUN_ov47_0211b8f8
	cmp r0, #0
	beq _0211DBF8
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #2
	bl FUN_ov47_0211d848
	b _0211DC08
_0211DBF8:
	ldr r0, _0211DC1C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC08:
	add r0, r6, #0x1000
	mvn r1, #0
	str r1, [r0, #0x360]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC18: .word unk_02099EB4
_0211DC1C: .word unk_0209AC44
_0211DC20: .word unk_02099ED8
_0211DC24: .word unk_020A9C40
	arm_func_end FUN_ov47_0211d944

	arm_func_start FUN_ov47_0211dc28
FUN_ov47_0211dc28: ; 0x0211DC28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r2, _0211DD48 ; =0x02099EB4
	mov r7, r0
	ldr r0, [r2]
	mov r4, r1
	add r1, sp, #0
	bl  FUN_ov16_0210f48c
	cmp r4, #6
	beq _0211DC60
	cmp r4, #7
	moveq r0, #1
	streq r0, [r7, #0x1f8]
	streq r0, [r7, #0x2a0]
	b _0211DC6C
_0211DC60:
	mov r0, #0
	str r0, [r7, #0x1f8]
	str r0, [r7, #0x2a0]
_0211DC6C:
	add r0, r7, #0x1000
	ldr r0, [r0, #0x360]
	mvn r5, #0
	cmp r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r7, #0x52
	mov r8, #0x4a
	mov r6, #0
	add r4, r0, #0x400
	mov r9, r8
	b _0211DD28
_0211DC98:
	mla r1, r6, r9, r4
	mov r0, r7
	bl FUN_ov47_0211f100
	cmp r0, #0
	beq _0211DD24
	mla r1, r6, r8, r7
	ldrb r0, [r1, #0x453]
	ldr r2, [r7, #0x410]
	cmp r2, r0
	bne _0211DD24
	add r0, r1, #0x400
	ldrsh r1, [r0, #0x56]
	add r12, r7, r2, lsl #3
	ldr r3, [r12, #4]
	add lr, r1, #4
	ldrsh r2, [sp]
	sub lr, lr, r3
	cmp lr, r2
	bgt _0211DD24
	add r1, r1, #0x16
	sub r1, r1, r3
	cmp r1, r2
	blt _0211DD24
	ldrsh r0, [r0, #0x58]
	ldr r2, [r12, #8]
	ldrsh r1, [sp, #2]
	add r3, r0, #4
	sub r3, r3, r2
	cmp r3, r1
	bgt _0211DD24
	add r0, r0, #0x16
	sub r0, r0, r2
	cmp r0, r1
	movge r5, r6
	bge _0211DD30
_0211DD24:
	add r6, r6, #1
_0211DD28:
	cmp r6, #0x21
	blt _0211DC98
_0211DD30:
	cmn r5, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	mov r1, r5
	bl FUN_ov47_0211dd4c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DD48: .word unk_02099EB4
	arm_func_end FUN_ov47_0211dc28

	arm_func_start FUN_ov47_0211dd4c
FUN_ov47_0211dd4c: ; 0x0211DD4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r2, r4, #0x1000
	ldr r3, [r2, #0x364]
	cmp r3, r1
	ldmeqfd sp!, {r4, pc}
	mov r3, #0
	strb r3, [r2, #0x368]
	str r1, [r2, #0x364]
	strb r1, [r4, #0x40f]
	bl FUN_ov47_0211bdec
	mov r0, r4
	bl FUN_ov47_0211b45c
	ldr r0, _0211DD90 ; =0x0209AC44
	ldr r1, _0211DD94 ; =0x000040D3
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211DD90: .word unk_0209AC44
_0211DD94: .word 0x000040D3
	arm_func_end FUN_ov47_0211dd4c

	arm_func_start FUN_ov47_0211dd98
FUN_ov47_0211dd98: ; 0x0211DD98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #0x410]
	mov r6, r1
	mov r5, r2
	cmp r6, r4
	beq _0211DE04
	cmp r6, #0
	blt _0211DE04
	cmp r6, #9
	bge _0211DE04
	ldr r1, _0211DF1C ; =0x55555556
	mov r3, #3
	smull r0, r12, r1, r6
	smull r0, r2, r1, r4
	add r12, r12, r6, lsr #31
	smull r0, r1, r3, r12
	add r2, r2, r4, lsr #31
	smull r1, r2, r3, r2
	sub r12, r6, r0
	sub r2, r4, r1
	sub r0, r12, r2
	bl abs
	cmp r0, #1
	ldrleb r0, [r7, #0x418]
	cmple r0, #0
	beq _0211DE0C
_0211DE04:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DE0C:
	cmp r6, #0
	cmpne r6, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #0x1000
	ldr r0, [r0, #0x374]
	cmp r0, #5
	movlo r0, #0
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _0211DEB0
	ldrb r1, [r7, #0x40f]
	mov r0, #0x4a
	mla r0, r1, r0, r7
	ldrb r0, [r0, #0x453]
	cmp r4, r0
	bne _0211DEB0
	mov r2, #0x4a
	mov r0, #0
	mov r3, r2
	mov r5, #0xa
_0211DE60:
	mla r12, r0, r5, r7
	add r12, r12, #0xd00
	ldrsh lr, [r12, #0xdc]
	ldrsh r12, [r12, #0xde]
	cmp r1, lr
	bne _0211DE8C
	smlabb r12, r12, r3, r7
	ldrb r12, [r12, #0x453]
	cmp r6, r12
	bne _0211DEA4
	b _0211DEB0
_0211DE8C:
	cmp r1, r12
	bne _0211DEA4
	smlabb r12, lr, r2, r7
	ldrb r12, [r12, #0x453]
	cmp r6, r12
	beq _0211DEB0
_0211DEA4:
	add r0, r0, #1
	cmp r0, #0x84
	blt _0211DE60
_0211DEB0:
	mov r0, r7
	mov r1, r4
	bl FUN_ov47_0211a0c8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	bl FUN_ov47_0211a938
	ldr r0, [r7, #0x410]
	sub r0, r0, r6
	bl abs
	cmp r0, #1
	add r0, r7, r6, lsl #3
	ldmib r0, {r1, r2}
	mov r0, r7
	bne _0211DEFC
	mov r3, #0x12
	b _0211DF00
_0211DEFC:
	mov r3, #0x10
_0211DF00:
	bl FUN_ov47_0211e004
	mov r0, r7
	mov r1, r6
	str r6, [r7, #0x414]
	bl FUN_ov47_0211ca34
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DF1C: .word 0x55555556
	arm_func_end FUN_ov47_0211dd98

	arm_func_start FUN_ov47_0211df20
FUN_ov47_0211df20: ; 0x0211DF20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrb r1, [r4, #0x50]
	mov r7, #0
	add r2, r4, #0x1000
	strb r7, [r4, #0x418]
	str r7, [r2, #0x374]
	strb r7, [r4, #0x41c]
	bl FUN_ov47_0211aa68
	mov r6, #1
	ldr r0, [r4, #0x414]
	ldr r5, _0211E000 ; =0x02099F38
	str r0, [r4, #0x410]
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x1b8]
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x1bc]
	mov r2, r6
	mov r3, r7
	bl  FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x1c0]
	mov r2, r6
	mov r3, #3
	bl  FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r5]
	mov r2, r6
	ldr r1, [r4, #0x1c4]
	mov r3, #2
	bl  FUN_ov16_0211401c
	ldrb r1, [r4, #0x50]
	mov r0, r4
	eor r1, r1, #1
	strb r1, [r4, #0x50]
	bl FUN_ov47_0211b124
	ldr r2, [r4, #0x410]
	ldrb r1, [r4, #0x40f]
	mov r0, #0x4a
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x453]
	cmp r2, r0
	beq _0211DFEC
	mov r0, r4
	bl FUN_ov47_0211f574
_0211DFEC:
	mov r0, r4
	bl FUN_ov47_0211d594
	mov r0, r4
	bl FUN_ov47_0211b45c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E000: .word unk_02099F38
	arm_func_end FUN_ov47_0211df20

	arm_func_start FUN_ov47_0211e004
FUN_ov47_0211e004: ; 0x0211E004
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [r0, #0x3f4]
	ldr r4, [r0, #0x3f8]
	add r12, r0, #0x400
	mov lr, #1
	str r5, [r0, #0x3fc]
	str r4, [r0, #0x400]
	str r1, [r0, #0x404]
	str r2, [r0, #0x408]
	strh r3, [r12, #0xc]
	strb lr, [r0, #0x418]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov47_0211e004

	arm_func_start FUN_ov47_0211e034
FUN_ov47_0211e034: ; 0x0211E034
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x41c]
	cmp r0, #0
	bne _0211E05C
	ldr r0, _0211E0C4 ; =0x0209AC44
	ldr r1, _0211E0C8 ; =0x000040D4
	bl FUN_0202cf6c
	mov r0, #1
	strb r0, [r4, #0x41c]
_0211E05C:
	ldrb r2, [r4, #0x50]
	ldr r1, [r4, #0x414]
	mov r0, r4
	eor r2, r2, #1
	bl FUN_ov47_0211aaa4
	mov r0, r4
	bl FUN_ov47_0211b074
	mov r0, r4
	bl FUN_ov47_0211e0cc
	mov r0, r4
	bl FUN_ov47_0211d474
	mov r0, r4
	bl FUN_ov47_0211ba8c
	mov r0, r4
	bl FUN_ov47_0211bc88
	mov r0, r4
	bl FUN_ov47_0211bdec
	mov r0, r4
	mov r1, #0
	bl FUN_ov47_0211b374
	ldrb r0, [r4, #0x418]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov47_0211df20
	ldmfd sp!, {r4, pc}
_0211E0C4: .word unk_0209AC44
_0211E0C8: .word 0x000040D4
	arm_func_end FUN_ov47_0211e034

	arm_func_start FUN_ov47_0211e0cc
FUN_ov47_0211e0cc: ; 0x0211E0CC
	ldr r3, [r0, #0x404]
	ldr r12, [r0, #0x3f4]
	cmp r12, r3
	ldreq r2, [r0, #0x3f8]
	ldreq r1, [r0, #0x408]
	cmpeq r2, r1
	moveq r1, #0
	streqb r1, [r0, #0x418]
	bxeq lr
	cmp r12, r3
	beq _0211E134
	add r1, r0, #0x400
	cmp r12, r3
	ldrh r2, [r1, #0xc]
	ldr r3, [r0, #0x3f4]
	ldr r1, [r0, #0x404]
	bge _0211E124
	add r2, r3, r2
	str r2, [r0, #0x3f4]
	cmp r2, r1
	strgt r1, [r0, #0x3f4]
	b _0211E134
_0211E124:
	sub r2, r3, r2
	str r2, [r0, #0x3f4]
	cmp r2, r1
	strlt r1, [r0, #0x3f4]
_0211E134:
	ldr r3, [r0, #0x408]
	ldr r2, [r0, #0x3f8]
	cmp r2, r3
	bxeq lr
	add r1, r0, #0x400
	cmp r2, r3
	ldrh r1, [r1, #0xc]
	bge _0211E168
	add r1, r2, r1
	str r1, [r0, #0x3f8]
	cmp r1, r3
	strgt r3, [r0, #0x3f8]
	bx lr
_0211E168:
	sub r1, r2, r1
	str r1, [r0, #0x3f8]
	cmp r1, r3
	strlt r3, [r0, #0x3f8]
	bx lr
	arm_func_end FUN_ov47_0211e0cc

	arm_func_start FUN_ov47_0211e17c
FUN_ov47_0211e17c: ; 0x0211E17C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _0211E298 ; =0x0211F9B0
	mov r4, r0
	str r3, [r4]
	ldr r2, _0211E29C ; =0x02099E8E
	mov r5, r1
	add r0, r4, #0x8f
	ldrb r2, [r2]
	ldr r1, _0211E2A0 ; =0x0211FBA4
	add r0, r0, #0x1300
	mov r3, #1
	bl  FUN_ov16_020f2cf8
	mov r3, #0
	ldr r1, _0211E2A4 ; =0x0211FBAC
	add r0, r4, #0x1000
	str r1, [r0, #0x3d0]
	str r5, [r4, #0x4c]
	strb r3, [r4, #0x50]
	mov r12, r3
	mov r1, #1
_0211E1CC:
	add r2, r4, r3, lsl #2
	add r0, r4, r3
	str r12, [r2, #0x54]
	add r3, r3, #1
	strb r1, [r0, #0x5c]
	cmp r3, #2
	blt _0211E1CC
	add r0, r4, #0x1000
	add r1, r4, #0x1300
	add r2, r4, #0x400
	mov r3, #0x100
	strh r12, [r1, #0x54]
	strb r12, [r4, #0x40e]
	str r12, [r4, #0x410]
	str r12, [r4, #0x414]
	strb r12, [r0, #0x358]
	strb r12, [r0, #0x356]
	strb r12, [r0, #0x357]
	strb r12, [r0, #0x359]
	str r12, [r0, #0x350]
	strh r12, [r2, #0x1a]
	strb r12, [r4, #0x418]
	str r12, [r4, #0x3f4]
	str r12, [r4, #0x3f8]
	str r12, [r4, #4]
	str r12, [r4, #8]
	str r3, [r4, #0xc]
	str r12, [r4, #0x10]
	mov r1, #0
_0211E240:
	add r0, r4, r12, lsl #2
	add r12, r12, #1
	str r1, [r0, #0x98]
	cmp r12, #0x26
	blo _0211E240
	mov r3, #0
_0211E258:
	add r0, r4, r1
	add r0, r0, #0x1000
	add r1, r1, #1
	strb r3, [r0, #0x338]
	cmp r1, #9
	blo _0211E258
	add r1, r4, #0x1000
	mvn r2, #0
	mov r0, r4
	strb r3, [r1, #0x341]
	str r2, [r1, #0x344]
	str r2, [r1, #0x360]
	strb r3, [r1, #0x368]
	str r2, [r1, #0x36c]
	strb r3, [r4, #0x41c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E298: .word ov47_0211F9B0
_0211E29C: .word unk_02099E8E
_0211E2A0: .word ov47_0211FBA4
_0211E2A4: .word ov47_0211FBAC
	arm_func_end FUN_ov47_0211e17c

	arm_func_start FUN_ov47_0211e2a8
FUN_ov47_0211e2a8: ; 0x0211E2A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	add r0, r9, #0x1000
	ldrb r3, [r0, #0x356]
	mov r8, r1
	mov r7, r2
	cmp r3, #1
	mov r10, #0x4a
	ldr r4, _0211EA48 ; =0x02099EB4
	mov r5, #1
	mov r6, #0
	bne _0211E2F8
	ldr r1, [r0, #0x350]
	add r1, r1, #1
	str r1, [r0, #0x350]
	cmp r1, #2
	strgeb r6, [r0, #0x356]
	strge r6, [r0, #0x350]
	strgeb r5, [r0, #0x359]
	b _0211E308
_0211E2F8:
	ldrb r1, [r0, #0x359]
	cmp r1, #1
	moveq r8, r7
	streqb r6, [r0, #0x359]
_0211E308:
	ldr r0, _0211EA4C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211E344
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	strh r6, [r0, #0x38]
_0211E344:
	ldr r0, [r9, #0x60]
	cmp r0, #5
	ldreqb r0, [r9, #0x418]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r9, #0x1000
	ldrb r1, [r0, #0x37a]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r9, #0x64]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E390: ; jump table
	b _0211E3A4 ; case 0
	b _0211E784 ; case 1
	b _0211E8B8 ; case 2
	b _0211E9B8 ; case 3
	b _0211EA18 ; case 4
_0211E3A4:
	tst r7, #0x200
	mov r10, #0x4a
	bne _0211E3B8
	tst r7, #0x100
	beq _0211E3EC
_0211E3B8:
	tst r8, #0x10
	beq _0211E3D0
	ldr r1, [r9, #0x410]
	mov r0, r9
	add r1, r1, #1
	b _0211E3E4
_0211E3D0:
	tst r8, #0x20
	beq _0211E3EC
	ldr r1, [r9, #0x410]
	mov r0, r9
	sub r1, r1, #1
_0211E3E4:
	mov r2, #0
	bl FUN_ov47_0211dd98
_0211E3EC:
	ldrb r0, [r9, #0x418]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	tst r8, #1
	beq _0211E4CC
	ldrb r1, [r9, #0x40f]
	mla r0, r1, r10, r9
	ldrb r0, [r0, #0x452]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0211E430
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E430:
	ldrb r1, [r9, #0x40f]
	mla r0, r1, r10, r9
	ldrb r0, [r0, #0x452]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0211E45C
	mov r0, r9
	bl FUN_ov47_0211d7dc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E45C:
	ldrb r1, [r9, #0x40f]
	mla r0, r1, r10, r9
	ldrb r0, [r0, #0x452]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0211E48C
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E48C:
	ldrb r1, [r9, #0x40f]
	mov r0, r9
	bl FUN_ov47_0211b8f8
	cmp r0, #0
	beq _0211E4BC
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #2
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E4BC:
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E4CC:
	tst r8, #2
	beq _0211E4FC
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r4]
	mov r1, #5
	bl  FUN_ov16_0210efac
	mov r0, r9
	mov r1, #1
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E4FC:
	tst r8, #0x400
	beq _0211E52C
	ldr r0, [r4]
	mov r1, #0xa
	bl  FUN_ov16_0210efac
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #4
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E52C:
	tst r8, #0x10
	beq _0211E62C
	ldrb r1, [r9, #0x40f]
	mla r0, r1, r10, r9
	ldrb r0, [r0, #0x452]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #1
	bne _0211E614
	add r0, r9, #0x1000
	ldrb r1, [r0, #0x358]
	cmp r1, #1
	bne _0211E5B0
	strb r6, [r0, #0x358]
	cmp r7, #0x50
	bne _0211E580
	mov r0, r9
	mov r1, #5
	bl FUN_ov47_0211b374
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E580:
	cmp r7, #0x40
	bne _0211E598
	mov r0, r9
	mov r1, #3
	bl FUN_ov47_0211b374
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E598:
	cmp r7, #0x10
	bne _0211E5B0
	mov r0, r9
	mov r1, #2
	bl FUN_ov47_0211b374
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E5B0:
	cmp r7, #0x50
	bne _0211E5D0
	mov r0, r9
	mov r1, #5
	bl FUN_ov47_0211b374
	add r0, r9, #0x1000
	strb r6, [r0, #0x357]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E5D0:
	cmp r7, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r1, r9, #0x1000
	ldrb r0, [r1, #0x357]
	cmp r0, #0
	addeq r0, r9, #0x1300
	streqb r5, [r1, #0x356]
	streqb r5, [r1, #0x357]
	streqh r8, [r0, #0x54]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, #2
	bl FUN_ov47_0211b374
	add r0, r9, #0x1000
	strb r6, [r0, #0x357]
	strb r6, [r0, #0x356]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E614:
	add r2, r9, #0x1000
	mov r0, r9
	mov r1, #2
	strb r5, [r2, #0x358]
	bl FUN_ov47_0211b374
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E62C:
	tst r8, #0x80
	beq _0211E644
	mov r0, r9
	mov r1, #4
	bl FUN_ov47_0211b374
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E644:
	tst r8, #0x20
	beq _0211E6C0
	ldrb r1, [r9, #0x40f]
	mla r0, r1, r10, r9
	ldrb r0, [r0, #0x452]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #1
	bne _0211E6B0
	cmp r7, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r1, r9, #0x1000
	ldrb r0, [r1, #0x357]
	cmp r0, #0
	addeq r0, r9, #0x1300
	streqb r5, [r1, #0x356]
	streqb r5, [r1, #0x357]
	streqh r8, [r0, #0x54]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, #1
	bl FUN_ov47_0211b374
	add r0, r9, #0x1000
	strb r6, [r0, #0x357]
	strb r6, [r0, #0x356]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E6B0:
	mov r0, r9
	mov r1, #1
	bl FUN_ov47_0211b374
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E6C0:
	tst r8, #0x40
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r1, [r9, #0x40f]
	mla r0, r1, r10, r9
	ldrb r0, [r0, #0x452]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #1
	bne _0211E774
	add r1, r9, #0x1000
	ldrb r0, [r1, #0x358]
	cmp r0, #1
	bne _0211E714
	mov r0, r9
	ldr r3, [r0]
	mov r2, r7
	ldr r3, [r3, #8]
	mov r1, #0x10
	blx r3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E714:
	cmp r7, #0x50
	bne _0211E734
	mov r0, r9
	mov r1, #5
	bl FUN_ov47_0211b374
	add r0, r9, #0x1000
	strb r6, [r0, #0x357]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E734:
	cmp r7, #0x40
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r1, #0x357]
	cmp r0, #0
	addeq r0, r9, #0x1300
	streqb r5, [r1, #0x356]
	streqb r5, [r1, #0x357]
	streqh r8, [r0, #0x54]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, #3
	bl FUN_ov47_0211b374
	add r0, r9, #0x1000
	strb r6, [r0, #0x357]
	strb r6, [r0, #0x356]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E774:
	mov r0, r9
	mov r1, #3
	bl FUN_ov47_0211b374
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E784:
	tst r8, #1
	beq _0211E81C
	ldr r0, [r9, #0x2a0]
	cmp r0, #0
	bne _0211E7F4
	mov r5, #6
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_0210efac
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r4, _0211EA54 ; =0x02099ED8
	ldr r0, [r4]
	bl  FUN_ov0_020cd110
	cmp r0, #0
	bne _0211E7DC
	ldr r0, _0211EA58 ; =0x020A9C40
	mov r1, #0xfc
	mov r2, #0
	bl FUN_020460a8
	b _0211E7E8
_0211E7DC:
	ldr r0, [r4]
	mov r1, #0
	bl  FUN_ov0_020cd104
_0211E7E8:
	mov r0, r9
	bl FUN_ov47_0211d7a4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E7F4:
	ldr r0, [r4]
	mov r1, #7
	bl  FUN_ov16_0210efac
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E81C:
	tst r8, #2
	beq _0211E860
	mov r2, #1
	mov r0, r9
	mov r1, r6
	str r2, [r9, #0x2a0]
	bl FUN_ov47_0211d400
	ldr r0, [r4]
	mov r1, #7
	bl  FUN_ov16_0210efac
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, r6
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E860:
	tst r8, #0x40
	bne _0211E870
	tst r8, #0x80
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E870:
	ldr r1, [r9, #0x2a0]
	ldr r0, _0211EA50 ; =0x0209AC44
	eor r1, r1, #1
	str r1, [r9, #0x2a0]
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x2a0]
	cmp r0, #0
	mov r0, r9
	bne _0211E8A8
	mov r1, #1
	mov r2, #0
	bl FUN_ov47_0211d400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E8A8:
	mov r1, #0
	mov r2, #1
	bl FUN_ov47_0211d400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E8B8:
	tst r8, #1
	beq _0211E91C
	ldr r0, [r9, #0x2a0]
	cmp r0, #0
	bne _0211E8F4
	mov r5, #6
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_0210efac
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mov r0, r9
	bl FUN_ov47_0211d7c8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E8F4:
	ldr r0, [r4]
	mov r1, #7
	bl  FUN_ov16_0210efac
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E91C:
	tst r8, #2
	beq _0211E960
	mov r2, #1
	mov r0, r9
	mov r1, r6
	str r2, [r9, #0x2a0]
	bl FUN_ov47_0211d400
	ldr r0, [r4]
	mov r1, #7
	bl  FUN_ov16_0210efac
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, r6
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E960:
	tst r8, #0x40
	bne _0211E970
	tst r8, #0x80
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E970:
	ldr r1, [r9, #0x2a0]
	ldr r0, _0211EA50 ; =0x0209AC44
	eor r1, r1, #1
	str r1, [r9, #0x2a0]
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x2a0]
	cmp r0, #0
	mov r0, r9
	bne _0211E9A8
	mov r1, #1
	mov r2, #0
	bl FUN_ov47_0211d400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E9A8:
	mov r1, #0
	mov r2, #1
	bl FUN_ov47_0211d400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E9B8:
	ldrb r0, [r0, #0x378]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	tst r8, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, [r4]
	mov r1, #8
	bl  FUN_ov16_0210efac
	ldrb r1, [r9, #0x40f]
	mla r0, r1, r10, r9
	add r0, r0, #0x400
	ldrsh r1, [r0, #0x5a]
	cmp r1, #0
	ldreqsh r0, [r0, #0x74]
	cmpeq r0, #0
	mov r0, r9
	bne _0211EA10
	bl FUN_ov47_0211f408
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211EA10:
	bl FUN_ov47_0211f36c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211EA18:
	tst r8, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4]
	mov r1, #5
	bl  FUN_ov16_0210efac
	ldr r0, _0211EA50 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211EA48: .word unk_02099EB4
_0211EA4C: .word unk_02099ED4
_0211EA50: .word unk_0209AC44
_0211EA54: .word unk_02099ED8
_0211EA58: .word unk_020A9C40
	arm_func_end FUN_ov47_0211e2a8

	arm_func_start FUN_ov47_0211ea5c
FUN_ov47_0211ea5c: ; 0x0211EA5C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211EB4C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r2]
	mov r7, r1
	mov r6, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r4, #0x60]
	cmpeq r0, #5
	ldreqb r0, [r4, #0x418]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0211EB50 ; =0x02099EB4
	mov r1, r7
	ldr r0, [r5]
	mov r2, r6
	bl  FUN_ov16_0210f20c
	cmp r0, #1
	beq _0211EAC0
	cmp r0, #2
	beq _0211EAF4
	cmp r0, #3
	beq _0211EB18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EAC0:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x35c]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov47_0211d87c
	add r0, r4, #0x1000
	mov r1, #1
	str r1, [r0, #0x35c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EAF4:
	add r0, r4, #0x1000
	mov r1, #2
	str r1, [r0, #0x35c]
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov47_0211d944
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EB18:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x35c]
	cmp r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov47_0211dc28
	add r0, r4, #0x1000
	mov r1, #3
	str r1, [r0, #0x35c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EB4C: .word unk_02099ED4
_0211EB50: .word unk_02099EB4
	arm_func_end FUN_ov47_0211ea5c

	arm_func_start FUN_ov47_0211eb54
FUN_ov47_0211eb54: ; 0x0211EB54
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x4c]
	mov r1, #6
	str r1, [r4, #0x60]
	bl FUN_02041d9c
	ldrb r2, [r4, #0x40f]
	mov r5, #0x4a
	add r0, r4, #0x1000
	mla r1, r2, r5, r4
	mov r2, #2
	str r2, [r0, #0x370]
	add r0, r1, #0x400
	ldrh r1, [r0, #0x8e]
	ldr r0, _0211EBC8 ; =0x0209BA20
	bl FUN_020737f0
	ldrb r1, [r4, #0x40f]
	ldr r3, _0211EBCC ; =0x020A1740
	ldr r2, _0211EBD0 ; =0x02099E8E
	mla r0, r1, r5, r4
	ldrb r4, [r0, #0x499]
	add r0, r0, #0x400
	ldr r1, _0211EBD4 ; =0x020A1640
	strh r4, [r3, #0x7c]
	ldrsh r0, [r0, #0x8e]
	strh r0, [r3, #0x7e]
	ldrb r0, [r2]
	strb r0, [r1, #0x180]
	ldmfd sp!, {r3, r4, r5, pc}
_0211EBC8: .word unk_0209BA20
_0211EBCC: .word unk_020A1740
_0211EBD0: .word unk_02099E8E
_0211EBD4: .word unk_020A1640
	arm_func_end FUN_ov47_0211eb54

	arm_func_start FUN_ov47_0211ebd8
FUN_ov47_0211ebd8: ; 0x0211EBD8
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r5, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211ED40 ; =0x02099EB4
	str r1, [r5, #0x3f0]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211ED44 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r4, #0
	add r0, r5, #0x1000
	strb r4, [r0, #0x37a]
	strb r4, [r0, #0x378]
	strb r4, [r0, #0x379]
	mov r1, r4
	add r0, r5, #0x68
	mov r2, #0x30
	str r4, [r5, #0x60]
	str r4, [r5, #0x1d0]
	bl MI_CpuFill8
	add r0, r5, #0x98
	mov r1, r4
	mov r2, #0x98
	bl MI_CpuFill8
	mov r6, #0x1f8
	add r0, r5, #0x1f8
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	add r0, r5, #0x134
	mov r1, r4
	mov r2, #0x84
	bl MI_CpuFill8
	add r0, r5, #0x1dc
	add r2, r6, #0x330
	add r0, r0, #0xc00
	mov r1, r4
	bl MI_CpuFill8
	add r0, r5, #0x7b
	add r0, r0, #0x1300
	mov r1, r4
	mov r2, #0x14
	bl MI_CpuFill8
	add r0, r5, #0x1000
	str r4, [r0, #0x374]
	ldr r0, _0211ED48 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldr r2, [r0, #0x44]
	add r3, r5, #0x1000
	ldr r5, [r0, #0x48]
	orr r2, r2, #1
	str r2, [r0, #0x44]
	orr r1, r5, #0
	str r1, [r0, #0x48]
	ldr r2, [r0, #0x4c]
	ldr r5, [r0, #0x50]
	orr r2, r2, #1
	str r2, [r0, #0x4c]
	orr r1, r5, #0
	str r1, [r0, #0x50]
	ldrh r1, [r0]
	ldr r2, _0211ED4C ; =0x0000FFE3
	ldr r5, _0211ED50 ; =0x020A1740
	and r1, r1, #0x1f
	strh r1, [r0]
	ldrh r12, [r0]
	mov r1, r4
	and r2, r12, r2
	strh r2, [r0]
	ldrh r2, [r0]
	strh r2, [r0]
	str r4, [r3, #0x370]
	strh r4, [r5, #0x7c]
	ldr r0, _0211ED54 ; =0x0209BA20
	strh r4, [r5, #0x7e]
	bl FUN_020737f0
	ldmfd sp!, {r4, r5, r6, pc}
_0211ED40: .word unk_02099EB4
_0211ED44: .word unk_02099ED4
_0211ED48: .word unk_02099F38
_0211ED4C: .word 0x0000FFE3
_0211ED50: .word unk_020A1740
_0211ED54: .word unk_0209BA20
	arm_func_end FUN_ov47_0211ebd8

	arm_func_start FUN_ov47_0211ed58
FUN_ov47_0211ed58: ; 0x0211ED58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r1, [r6, #0x60]
	mov r5, #1
	cmp r1, #8
	mov r4, #0
	addls pc, pc, r1, lsl #2
	b _0211F03C
_0211ED78: ; jump table
	b _0211ED9C ; case 0
	b _0211EDBC ; case 1
	b _0211EDF8 ; case 2
	b _0211EE18 ; case 3
	b _0211EE28 ; case 4
	b _0211EE68 ; case 5
	b _0211EF4C ; case 6
	b _0211EF90 ; case 7
	b _0211EF3C ; case 8
_0211ED9C:
	add r0, r6, #0x68
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211F03C
	mov r0, r6
	bl FUN_ov47_02119f00
	str r5, [r6, #0x60]
_0211EDBC:
	add r0, r6, #0x68
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211F03C
	ldr r0, _0211F070 ; =0x0209AC44
	bl FUN_0202b7f0
	cmp r0, #0
	beq _0211F03C
	mov r0, r6
	bl FUN_ov47_0211a2a4
	mov r0, r6
	bl FUN_ov47_02119f78
	mov r0, #2
	str r0, [r6, #0x60]
_0211EDF8:
	mov r0, r6
	bl FUN_ov47_0211ab7c
	cmp r0, #0
	beq _0211F03C
	mov r0, r6
	bl FUN_ov47_0211ac08
	mov r0, #3
	str r0, [r6, #0x60]
_0211EE18:
	mov r0, r6
	mov r1, #0
	bl FUN_ov47_0211d848
	b _0211F03C
_0211EE28:
	ldr r0, _0211F074 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211F03C
	ldr r1, [r6, #0x64]
	mov r0, r6
	bl FUN_ov47_0211acf8
	mov r0, r6
	bl FUN_ov47_0211af2c
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r6, #0x60]
_0211EE68:
	ldrb r2, [r6, #0x50]
	ldr r1, [r6, #0x410]
	mov r0, r6
	bl FUN_ov47_0211aaa4
	ldrb r0, [r6, #0x418]
	cmp r0, #0
	beq _0211EE8C
	mov r0, r6
	bl FUN_ov47_0211e034
_0211EE8C:
	ldr r0, [r6, #0x64]
	cmp r0, #0
	bne _0211EEBC
	mov r0, r6
	bl FUN_ov47_0211b650
	cmp r0, #0
	beq _0211F03C
	add r0, r6, #0x1000
	ldrb r1, [r0, #0x37a]
	cmp r1, #0
	streqb r5, [r0, #0x37a]
	b _0211F03C
_0211EEBC:
	cmp r0, #3
	bne _0211F03C
	add r0, r6, #0x1000
	ldrb r1, [r0, #0x379]
	cmp r1, #0
	beq _0211EEF0
	ldr r0, _0211F070 ; =0x0209AC44
	mov r1, #0x1f4
	bl FUN_0202c530
	add r0, r6, #0x1000
	strb r4, [r0, #0x379]
	strb r4, [r0, #0x378]
	b _0211F03C
_0211EEF0:
	ldrb r0, [r0, #0x378]
	cmp r0, #0
	beq _0211F03C
	ldr r7, _0211F070 ; =0x0209AC44
	mov r1, r4
	mov r0, r7
	bl FUN_0202dbd0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	bl FUN_0202d578
	mov r0, r7
	mov r1, r4
	bl FUN_0202c560
	cmp r0, #0
	addeq r0, r6, #0x1000
	streqb r5, [r0, #0x379]
	b _0211F03C
_0211EF3C:
	bl FUN_ov47_0211eb54
	mov r0, #6
	str r0, [r6, #0x60]
	b _0211F03C
_0211EF4C:
	ldr r0, _0211F074 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211F03C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211F03C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #7
	str r0, [r6, #0x60]
_0211EF90:
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211F03C
	add r0, r6, #0x1000
	ldr r0, [r0, #0x370]
	cmp r0, #1
	beq _0211EFCC
	cmp r0, #2
	beq _0211EFF4
	cmp r0, #3
	beq _0211F014
	b _0211F03C
_0211EFCC:
	ldr r5, [r6, #0x4c]
	mov r1, r4
	mov r0, r5
	bl FUN_02041f2c
	mov r0, r5
	mov r1, #1
	bl FUN_02041f2c
	ldr r0, _0211F078 ; =0x02099E95
	strb r4, [r0]
	b _0211F03C
_0211EFF4:
	ldr r0, [r6, #0x4c]
	mov r1, #0
	mov r2, #0x8e
	bl FUN_02041eac
	ldrb r1, [r6, #0x40f]
	ldr r0, _0211F078 ; =0x02099E95
	strb r1, [r0]
	b _0211F03C
_0211F014:
	ldr r5, [r6, #0x4c]
	mov r4, #0x61
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041ef0
_0211F03C:
	mov r0, r6
	bl FUN_ov47_0211b510
	add r0, r6, #0x1000
	ldr r2, [r0, #0x374]
	ldr r1, _0211F07C ; =0x0209A110
	add r2, r2, #1
	str r2, [r0, #0x374]
	ldr r0, _0211F074 ; =0x02099ED4
	ldr r1, [r1]
	ldr r0, [r0]
	mov r1, r1, lsl #1
	bl  FUN_ov16_0210e10c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F070: .word unk_0209AC44
_0211F074: .word unk_02099ED4
_0211F078: .word unk_02099E95
_0211F07C: .word unk_0209A110
	arm_func_end FUN_ov47_0211ed58

	arm_func_start FUN_ov47_0211f080
FUN_ov47_0211f080: ; 0x0211F080
	bx lr
	arm_func_end FUN_ov47_0211f080

	arm_func_start FUN_ov47_0211f084
FUN_ov47_0211f084: ; 0x0211F084
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, _0211F0EC ; =0x02099E95
	mov r3, #0
	ldr r0, _0211F0F0 ; =0x0209AC44
	mov r1, #1
	strb r3, [r2]
	bl FUN_0202cf00
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r2, [r4, #0x3f0]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211F0F4 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211F0F8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov47_0211a84c
	ldr r0, _0211F0FC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r4, pc}
_0211F0EC: .word unk_02099E95
_0211F0F0: .word unk_0209AC44
_0211F0F4: .word unk_02099EB4
_0211F0F8: .word unk_02099ED4
_0211F0FC: .word unk_02099F38
	arm_func_end FUN_ov47_0211f084

	arm_func_start FUN_ov47_0211f100
FUN_ov47_0211f100: ; 0x0211F100
	ldrb r0, [r1]
	mov r2, #0
	mov r3, #1
	cmp r0, #4
	ldrb r0, [r1, #1]
	movhs r3, r2
	orr r2, r2, r3
	cmp r0, #9
	movlo r0, #1
	movhs r0, #0
	orrs r0, r2, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov47_0211f100

	arm_func_start FUN_ov47_0211f138
FUN_ov47_0211f138: ; 0x0211F138
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	add r3, r8, #0x52
	mov r7, r1
	add r4, r3, #0x400
	mov r1, #0x4a
	ldr r3, [r0]
	mla r4, r7, r1, r4
	ldr r3, [r3, #0x6c]
	mov r6, r2
	blx r3
	mov r5, r0
	mov r0, r8
	mov r1, r4
	bl FUN_ov47_0211f100
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r4]
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r9, #0
_0211F194:
	add r0, r4, r9, lsl #1
	ldrsh r1, [r0, #0x3e]
	cmp r1, #0
	blt _0211F258
	cmp r6, r1
	beq _0211F258
	mov r0, r8
	mov r2, r7
	bl FUN_ov47_0211f138
	cmp r0, #2
	bne _0211F214
	mov r0, r7, lsl #1
	ldrh r2, [r5, r0]
	and r0, r2, #0x1c
	mov r0, r0, lsl #0xe
	mov r1, r0, lsr #0x10
	cmp r1, #3
	ldrneb r0, [r4]
	cmpne r0, #2
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211F26C ; =0x0000FFE0
	and r0, r2, r0
	mov r0, r0, asr #5
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211F20C
	cmp r1, #2
	movls r0, #1
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F20C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F214:
	cmp r0, #1
	bne _0211F258
	mov r0, r7, lsl #1
	ldrh r1, [r5, r0]
	ldr r0, _0211F26C ; =0x0000FFE0
	and r0, r1, r0
	mov r0, r0, asr #5
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	bne _0211F248
	ldrb r0, [r4]
	cmp r0, #2
	bne _0211F250
_0211F248:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F250:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F258:
	add r9, r9, #1
	cmp r9, #4
	blt _0211F194
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F26C: .word 0x0000FFE0
	arm_func_end FUN_ov47_0211f138

	arm_func_start FUN_ov47_0211f270
FUN_ov47_0211f270: ; 0x0211F270
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x40f]
	mov r5, #0x4a
	mla r2, r1, r5, r4
	ldrb r1, [r2, #0x452]
	cmp r1, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r1, r2, #0x400
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldrb r2, [r4, #0x40f]
	mla r1, r2, r5, r4
	ldrb r1, [r1, #0x454]
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	and r0, r1, #0x1000
	mov r0, r0, asr #0xc
	and r1, r1, #0xe000
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #0xd
	movs r0, r0, lsr #0x10
	bne _0211F2F0
	cmp r1, #1
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, pc}
_0211F2F0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov47_0211f270

	arm_func_start FUN_ov47_0211f2f8
FUN_ov47_0211f2f8: ; 0x0211F2F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0x40f]
	mov r4, #0x4a
	mla r1, r2, r4, r5
	ldrb r1, [r1, #0x452]
	cmp r1, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldrb r2, [r5, #0x40f]
	mla r1, r2, r4, r5
	ldrb r1, [r1, #0x454]
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	and r0, r1, #0x800
	mov r0, r0, asr #0xb
	and r1, r1, #0xe000
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #0xd
	movs r0, r0, lsr #0x10
	bne _0211F364
	cmp r1, #2
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, pc}
_0211F364:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov47_0211f2f8

	arm_func_start FUN_ov47_0211f36c
FUN_ov47_0211f36c: ; 0x0211F36C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strb r1, [r4, #0x41e]
	ldr r0, _0211F400 ; =0x02099ED8
	ldrb r1, [r4, #0x40f]
	ldr r0, [r0]
	bl  FUN_ov0_020cd0ec
	mov r3, #7
	ldrb r1, [r4, #0x40f]
	mov r0, r4
	add r2, r4, #0x1000
	mov r12, #3
	str r12, [r2, #0x370]
	str r3, [r4, #0x60]
	bl FUN_ov47_0211ba28
	cmp r0, #0
	ldrb r1, [r4, #0x40f]
	mov r0, #0x4a
	ldrb r2, [r4, #0x40f]
	mla r0, r1, r0, r4
	add r0, r0, #0x400
	ldrnesh r1, [r0, #0x76]
	ldreqsh r1, [r0, #0x5c]
	mov r0, #0x4a
	mla r0, r2, r0, r4
	ldrb r2, [r0, #0x49b]
	cmp r2, #1
	blt _0211F3E8
	cmp r2, #0x63
	ble _0211F3EC
_0211F3E8:
	mov r2, #1
_0211F3EC:
	ldr r0, _0211F404 ; =0x020A9C40
	bl FUN_02045b40
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldmfd sp!, {r4, pc}
_0211F400: .word unk_02099ED8
_0211F404: .word unk_020A9C40
	arm_func_end FUN_ov47_0211f36c

	arm_func_start FUN_ov47_0211f408
FUN_ov47_0211f408: ; 0x0211F408
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #1
	strb r4, [r6, #0x41e]
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	mov r5, r0
	ldrb r1, [r6, #0x40f]
	mov r0, r6
	bl FUN_ov47_0211ba28
	cmp r0, #0
	mov r0, r6
	beq _0211F4AC
	bl FUN_ov47_0211f2f8
	cmp r0, #0
	beq _0211F540
	ldrb r3, [r6, #0x40f]
	mov r2, #0x4a
	rsb r0, r4, #0xf000
	mla r1, r3, r2, r6
	ldrb r12, [r1, #0x454]
	rsb r1, r4, #0xf800
	rsb r3, r4, #0x2000
	mov r12, r12, lsl #1
	ldrh r4, [r5, r12]
	and r0, r4, r0
	strh r0, [r5, r12]
	ldrh r0, [r5, r12]
	orr r0, r0, #0x1000
	strh r0, [r5, r12]
	ldrb r4, [r6, #0x40f]
	mla r0, r4, r2, r6
	ldrb r0, [r0, #0x454]
	mov r4, r0, lsl #1
	ldrh r0, [r5, r4]
	and r0, r0, r1
	strh r0, [r5, r4]
	ldrh r0, [r5, r4]
	orr r0, r0, #0x800
	b _0211F514
_0211F4AC:
	bl FUN_ov47_0211f270
	cmp r0, #0
	beq _0211F540
	ldrb r3, [r6, #0x40f]
	mov r2, #0x4a
	rsb r0, r4, #0xf800
	mla r1, r3, r2, r6
	ldrb r12, [r1, #0x454]
	rsb r1, r4, #0xf000
	rsb r3, r4, #0x2000
	mov r12, r12, lsl #1
	ldrh r4, [r5, r12]
	and r0, r4, r0
	strh r0, [r5, r12]
	ldrh r0, [r5, r12]
	orr r0, r0, #0x800
	strh r0, [r5, r12]
	ldrb r4, [r6, #0x40f]
	mla r0, r4, r2, r6
	ldrb r0, [r0, #0x454]
	mov r4, r0, lsl #1
	ldrh r0, [r5, r4]
	and r0, r0, r1
	strh r0, [r5, r4]
	ldrh r0, [r5, r4]
	orr r0, r0, #0x1000
_0211F514:
	strh r0, [r5, r4]
	ldrb r1, [r6, #0x40f]
	mla r0, r1, r2, r6
	ldrb r0, [r0, #0x454]
	mov r1, r0, lsl #1
	ldrh r0, [r5, r1]
	and r0, r0, r3
	strh r0, [r5, r1]
	ldrh r0, [r5, r1]
	orr r0, r0, #0x6000
	strh r0, [r5, r1]
_0211F540:
	ldrb r0, [r6, #0x40f]
	ldr r4, [r5, #0x4c]
	mov r1, #1
	mov r2, r1, lsl r0
	ldr r3, [r5, #0x50]
	orr r4, r4, r1, lsl r0
	mov r0, r6
	str r4, [r5, #0x4c]
	orr r2, r3, r2, asr #31
	mov r1, #0
	str r2, [r5, #0x50]
	bl FUN_ov47_0211d848
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov47_0211f408

	arm_func_start FUN_ov47_0211f574
FUN_ov47_0211f574: ; 0x0211F574
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r2, [r0, #0x40f]
	mov r1, #0x4a
	mov r4, #0
	mla r5, r2, r1, r0
	mvn r3, #0
_0211F58C:
	add r2, r5, r4, lsl #1
	add r2, r2, #0x400
	ldrsh lr, [r2, #0x90]
	cmp lr, r3
	beq _0211F5B8
	mla r2, lr, r1, r0
	ldrb r2, [r2, #0x453]
	ldr r12, [r0, #0x410]
	cmp r12, r2
	streqb lr, [r0, #0x40f]
	ldmeqfd sp!, {r3, r4, r5, pc}
_0211F5B8:
	add r4, r4, #1
	cmp r4, #4
	blt _0211F58C
	ldr r1, [r0, #0x410]
	cmp r1, #0
	bne _0211F5EC
	ldr r1, _0211F608 ; =0x02099E8E
	ldrb r1, [r1]
	add r1, r0, r1, lsl #1
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x37c]
	strb r1, [r0, #0x40f]
	ldmfd sp!, {r3, r4, r5, pc}
_0211F5EC:
	ldr r1, _0211F608 ; =0x02099E8E
	ldrb r1, [r1]
	add r1, r0, r1, lsl #1
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x37b]
	strb r1, [r0, #0x40f]
	ldmfd sp!, {r3, r4, r5, pc}
_0211F608: .word unk_02099E8E
	arm_func_end FUN_ov47_0211f574

	arm_func_start FUN_ov47_0211f60c
FUN_ov47_0211f60c: ; 0x0211F60C
	bx lr
	arm_func_end FUN_ov47_0211f60c

	arm_func_start FUN_ov47_0211f610
FUN_ov47_0211f610: ; 0x0211F610
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov47_0211f610
_0211F624:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x58, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x58, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x73, 0x0A, 0x82, 0xF0, 0x5B, 0x8E, 0xE8
	.byte 0x2F, 0x82, 0xC4, 0x5D, 0x82, 0xC9, 0x5B, 0x93, 0xFC, 0x2F, 0x82, 0xA2, 0x5D, 0x82, 0xEA, 0x82
	.byte 0xBD, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x73, 0x0A, 0x82, 0xAA, 0x5B, 0x92, 0x87
	.byte 0x8A, 0xD4, 0x2F, 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x5D, 0x82, 0xC9, 0x82, 0xC8, 0x82, 0xE9
	.byte 0x82, 0xBC, 0x81, 0x49, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov47_0211f76c
FUN_ov47_0211f76c:
	stmdb sp!,{r3,r4,r5,lr}
	mov r5,#0x2000
	mov r0,r5
	bl FX_Sqrt
	ldr r4,_0211F7B4
	str r0,[r4,#0x14 ]
	ldr r0,_0211F7B8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1,#0x800
	str r0,[r4,#0x0 ]
	ldr r0,_0211F7BC ; =0x0000EA3C
	str r1,[r4,#0xc ]
	str r0,[r4,#0x4 ]
	add r0,r5,#0x4e0000
	str r0,[r4,#0x10 ]
	add r0,r1,#0x840000
	str r0,[r4,#0x8 ]
	ldmia sp!,{r3,r4,r5,pc}
_0211F7B4: .word ov47_0211F804
_0211F7B8: .word 0x00009CCD
_0211F7BC: .word 0x0000EA3C
	arm_func_end FUN_ov47_0211f76c

	.section .sinit, 4
ov47_0211F7C0:
	.word FUN_ov47_0211f76c

	.data
	.byte 0x30, 0x30, 0x00, 0x00, 0x30, 0x30, 0x00, 0x00, 0x30, 0x31, 0x00, 0x00, 0x30, 0x30, 0x00, 0x00
	.byte 0x30, 0x30, 0x00, 0x00, 0x30, 0x30, 0x00, 0x00, 0x30, 0x31, 0x00, 0x00, 0x30, 0x31, 0x00, 0x00
	.byte 0x30, 0x31, 0x00, 0x00
	.global ov47_0211F804
ov47_0211F804:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov47_0211F81C
ov47_0211F81C:
	.byte 0xF0, 0xF7, 0x11, 0x02
	.byte 0xFC, 0xF7, 0x11, 0x02, 0xE4, 0xF7, 0x11, 0x02, 0xF8, 0xF7, 0x11, 0x02, 0xEC, 0xF7, 0x11, 0x02
	.byte 0x00, 0xF8, 0x11, 0x02, 0xF4, 0xF7, 0x11, 0x02, 0xE8, 0xF7, 0x11, 0x02, 0xE0, 0xF7, 0x11, 0x02
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x37, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x38, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x30, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x32, 0x31, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x33, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x34, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x33, 0x30, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x33, 0x33, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x36, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x32, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x35, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x33, 0x34, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x38, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x35, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x37, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x31, 0x39, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x77, 0x30, 0x33, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F
	.byte 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F
	.byte 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F
	.byte 0x62, 0x32, 0x30, 0x5F, 0x34, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x32, 0x30, 0x5F
	.byte 0x35, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x32, 0x30, 0x5F, 0x31, 0x00, 0x00, 0x00
	.byte 0x6A, 0x73, 0x64, 0x5F, 0x62, 0x32, 0x30, 0x5F, 0x32, 0x00, 0x00, 0x00, 0x6A, 0x73, 0x64, 0x5F
	.byte 0x62, 0x32, 0x30, 0x5F, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov47_0211F9B0
ov47_0211F9B0:
	.byte 0x0C, 0xF6, 0x11, 0x02, 0x10, 0xF6, 0x11, 0x02, 0xA8, 0xE2, 0x11, 0x02, 0x5C, 0xEA, 0x11, 0x02
	.byte 0xD8, 0xEB, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x58, 0xED, 0x11, 0x02, 0x80, 0xF0, 0x11, 0x02
	.byte 0x84, 0xF0, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02, 0xDC, 0xA6, 0x11, 0x02
	.global ov47_0211FA20
ov47_0211FA20:
	.byte 0x00, 0xF9, 0x11, 0x02, 0x0C, 0xF9, 0x11, 0x02, 0x18, 0xF9, 0x11, 0x02, 0x24, 0xF9, 0x11, 0x02
	.byte 0x30, 0xF9, 0x11, 0x02, 0x3C, 0xF9, 0x11, 0x02, 0x48, 0xF9, 0x11, 0x02, 0x54, 0xF9, 0x11, 0x02
	.byte 0x60, 0xF9, 0x11, 0x02, 0xD0, 0xF8, 0x11, 0x02, 0xD8, 0xF8, 0x11, 0x02, 0xE0, 0xF8, 0x11, 0x02
	.byte 0xE8, 0xF8, 0x11, 0x02, 0xF0, 0xF8, 0x11, 0x02, 0xB0, 0xF8, 0x11, 0x02, 0x40, 0xF8, 0x11, 0x02
	.byte 0x48, 0xF8, 0x11, 0x02, 0x50, 0xF8, 0x11, 0x02, 0x90, 0xF8, 0x11, 0x02, 0x88, 0xF8, 0x11, 0x02
	.byte 0x60, 0xF8, 0x11, 0x02, 0x68, 0xF8, 0x11, 0x02, 0x98, 0xF8, 0x11, 0x02, 0x80, 0xF8, 0x11, 0x02
	.byte 0xB8, 0xF8, 0x11, 0x02, 0xA8, 0xF8, 0x11, 0x02, 0xC0, 0xF8, 0x11, 0x02, 0x84, 0xF9, 0x11, 0x02
	.byte 0x90, 0xF9, 0x11, 0x02, 0x9C, 0xF9, 0x11, 0x02, 0x6C, 0xF9, 0x11, 0x02, 0x78, 0xF9, 0x11, 0x02
	.byte 0x58, 0xF8, 0x11, 0x02, 0x70, 0xF8, 0x11, 0x02, 0x78, 0xF8, 0x11, 0x02, 0xA0, 0xF8, 0x11, 0x02
	.byte 0xC8, 0xF8, 0x11, 0x02, 0xF8, 0xF8, 0x11, 0x02
	.global ov47_0211FAB8
ov47_0211FAB8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x72, 0x61, 0x63, 0x74, 0x69, 0x63, 0x65, 0x2E
	.byte 0x53, 0x50, 0x4C, 0x00
	.global ov47_0211FAD4
ov47_0211FAD4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70
	.byte 0x6B, 0x68, 0x00, 0x00
	.global ov47_0211FAF4
ov47_0211FAF4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x50, 0x72, 0x61, 0x63, 0x74, 0x69, 0x63, 0x65, 0x47, 0x61, 0x6D, 0x65, 0x43
	.byte 0x75, 0x72, 0x73, 0x6F, 0x72, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov47_0211FB1C
ov47_0211FB1C:
	.byte 0x32, 0x44, 0x5F, 0x30
	.byte 0x31, 0x33, 0x00, 0x00
	.global ov47_0211FB24
ov47_0211FB24:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70
	.byte 0x6B, 0x62, 0x00, 0x00
	.global ov47_0211FB44
ov47_0211FB44:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x70, 0x72, 0x61, 0x63, 0x74, 0x69, 0x63, 0x65, 0x2E, 0x53, 0x50, 0x44, 0x00
	.global ov47_0211FB60
ov47_0211FB60:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70
	.byte 0x72, 0x61, 0x63, 0x74, 0x69, 0x63, 0x65, 0x2E, 0x53, 0x50, 0x44, 0x00
	.global ov47_0211FB7C
ov47_0211FB7C:
	.byte 0x25, 0x73, 0x2E, 0x70
	.byte 0x61, 0x63, 0x5F, 0x00
	.global ov47_0211FB84
ov47_0211FB84:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00
	.global ov47_0211FB90
ov47_0211FB90:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00
	.global ov47_0211FB9C
ov47_0211FB9C:
	.byte 0x4A, 0x31, 0x30, 0x2E
	.byte 0x53, 0x41, 0x44, 0x00
	.global ov47_0211FBA4
ov47_0211FBA4:
	.byte 0x47, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov47_0211FBAC
ov47_0211FBAC:
	.byte 0x6A, 0x73, 0x64, 0x5F
	.byte 0x62, 0x67, 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

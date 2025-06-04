
	.include "/macros/function.inc"
	.include "/global.inc"

	.text
	.org 0x02119f00

	arm_func_start FUN_ov39_02119f00
FUN_ov39_02119f00: ; 0x02119F00
	ldr r2, _02119F10 ; =0x0211BCF0
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_02119F10: .word 0x0211BCF0
	arm_func_end FUN_ov39_02119f00

	arm_func_start FUN_ov39_02119f14
FUN_ov39_02119f14: ; 0x02119F14
	bx lr
	arm_func_end FUN_ov39_02119f14

	arm_func_start FUN_ov39_02119f18
FUN_ov39_02119f18: ; 0x02119F18
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov39_02119f18

	arm_func_start FUN_ov39_02119f2c
FUN_ov39_02119f2c: ; 0x02119F2C
	stmfd sp!, {r4, lr}
	mov r4, r3
	ldr r0, [r4]
	add r0, r2, r0
	ldr r2, [sp, #8]
	bl _memcpy
	ldr r1, [r4]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov39_02119f2c

	arm_func_start FUN_ov39_02119f58
FUN_ov39_02119f58: ; 0x02119F58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02119FE4 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r6]
	mov r4, r1
	mov r7, r2
	bl  FUN_ov16_0210f468
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6]
	mov r1, r4
	bl  FUN_ov16_0210f400
	ldr r0, [r5, #0x24]
	strh r7, [r5, #0xa]
	cmp r0, #0
	ldrneh r0, [r5, #0xa]
	strh r4, [r5, #8]
	add r2, sp, #0
	orrne r0, r0, #0x4000
	strneh r0, [r5, #0xa]
	ldr r0, [r5, #0x2c]
	mov r1, r4
	cmp r0, #0
	ldrneh r0, [r5, #8]
	orrne r0, r0, #0x4000
	strneh r0, [r5, #8]
	ldr r5, _02119FE4 ; =0x02099EB4
	ldr r0, [r5]
	bl  FUN_ov16_0210ec34
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	ldr r1, [sp]
	bl  FUN_ov16_0210ef88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02119FE4: .word 0x02099EB4
	arm_func_end FUN_ov39_02119f58

	arm_func_start FUN_ov39_02119fe8
FUN_ov39_02119fe8: ; 0x02119FE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	ldr r7, _0211A138 ; =0x02099EB4
	mov r6, r0
	ldr r0, [r7]
	mov r2, #0
	mov r5, r1
	mov r4, r2
	bl  FUN_ov16_0210f20c
	cmp r0, #2
	bne _0211A024
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	ldr r1, _0211A13C ; =0x0211BDE0
	str r0, [r1, #4]
_0211A024:
	str r4, [r6, #0x28]
	str r4, [r6, #0x2c]
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211A0F8
	ldrh r0, [r5]
	strh r0, [r6, #0xc]
	ldrh r0, [r5, #2]
	strh r0, [r6, #0xe]
	ldrh r0, [r5, #4]
	strh r0, [r6, #0x10]
	ldrh r0, [r5, #6]
	strh r0, [r6, #0x12]
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldreq r0, [r6, #0x24]
	cmpeq r0, #0
	bne _0211A094
	ldrh r7, [r6, #0xc]
	ldrh r3, [r6, #0xe]
	ldrh r2, [r6, #0x10]
	ldrh r1, [r6, #0x12]
	mov r0, #1
	strh r7, [r6, #0x14]
	strh r3, [r6, #0x16]
	strh r2, [r6, #0x18]
	strh r1, [r6, #0x1a]
	str r0, [r6, #0x28]
_0211A094:
	mov r9, #1
	ldr r7, _0211A138 ; =0x02099EB4
	str r9, [r6, #0x24]
	ldr r0, [r7]
	bl  FUN_ov16_0210f484
	str r4, [sp, #4]
	str r4, [sp]
	mov r8, r0
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldr r0, [r7]
	add r3, sp, #4
	bl  FUN_ov16_0210ecb8
	cmp r8, r0
	bne _0211A0EC
	cmp r8, #1
	blt _0211A0EC
	cmp r8, #0x1e
	addle sp, sp, #8
	strleb r9, [r6, #0x38d]
	strle r8, [r6, #0x390]
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A0EC:
	add sp, sp, #8
	strb r4, [r6, #0x38d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A0F8:
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _0211A12C
	ldrh r5, [r6, #0xc]
	ldrh r3, [r6, #0xe]
	ldrh r2, [r6, #0x10]
	ldrh r1, [r6, #0x12]
	mov r0, #1
	strh r5, [r6, #0x1c]
	strh r3, [r6, #0x1e]
	strh r2, [r6, #0x20]
	strh r1, [r6, #0x22]
	str r0, [r6, #0x2c]
_0211A12C:
	str r4, [r6, #0x24]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A138: .word 0x02099EB4
_0211A13C: .word 0x0211BDE0
	arm_func_end FUN_ov39_02119fe8

	arm_func_start FUN_ov39_0211a140
FUN_ov39_0211a140: ; 0x0211A140
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x2fc
	mov r2, #0x6c
	bl MemWrite
	ldr r0, _0211A1A4 ; =0x02099EB4
	str r4, [r5, #0x368]
	str r4, [r5, #0x370]
	str r4, [r5, #0x374]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	mov r1, #3
	mov r0, #1
	str r4, [r5, #0x388]
	str r4, [r5, #0x380]
	strb r1, [r5, #0x38c]
	strb r1, [r5, #0x384]
	str r4, [r5, #0x60]
	str r0, [r5, #0x64]
	strb r4, [r5, #0x38d]
	str r4, [r5, #0x390]
	str r4, [r5, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A1A4: .word 0x02099EB4
	arm_func_end FUN_ov39_0211a140

	arm_func_start FUN_ov39_0211a1a8
FUN_ov39_0211a1a8: ; 0x0211A1A8
	mov r1, r0
	ldr r0, _0211A1BC ; =0x0211BD5C
	ldr r12, _0211A1C0 ; = FUN_ov16_020f316c
	add r1, r1, #0x2f0
	bx r12
_0211A1BC: .word 0x0211BD5C
_0211A1C0: .word  FUN_ov16_020f316c
	arm_func_end FUN_ov39_0211a1a8

	arm_func_start FUN_ov39_0211a1c4
FUN_ov39_0211a1c4: ; 0x0211A1C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x2f0]
	cmp r6, #0
	ldrne r7, _0211A20C ; =0x0211BB8C
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x2fc
	mov r4, #0xc
_0211A1E8:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211A1E8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A20C: .word 0x0211BB8C
	arm_func_end FUN_ov39_0211a1c4

	arm_func_start FUN_ov39_0211a210
FUN_ov39_0211a210: ; 0x0211A210
	stmfd sp!, {r4, r5, r6, lr}
	mov r2, #0xc
	mul r5, r1, r2
	mov r6, r0
	add r4, r6, #0x2f0
	add r0, r4, r5
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r5
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r5]
	add r0, r6, r5
	str r1, [r0, #0x2f4]
	strb r1, [r0, #0x2f8]
	strb r1, [r0, #0x2f9]
	strb r1, [r0, #0x2fa]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov39_0211a210

	arm_func_start FUN_ov39_0211a258
FUN_ov39_0211a258: ; 0x0211A258
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x2fc]
	ldr r5, [sp, #0x1c]
	mov r7, r2
	cmp r4, #0
	mov r6, r3
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r2, r6
	add r1, r7, #1
	bl  FUN_ov16_020f18e8
	mov r7, r0
	cmp r5, #0
	beq _0211A2B0
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl  FUN_ov16_020f1a60
	str r0, [r5]
_0211A2B0:
	cmp r6, #0
	blt _0211A2C8
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl  FUN_ov16_020f1138
_0211A2C8:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov39_0211a258

	arm_func_start FUN_ov39_0211a2d0
FUN_ov39_0211a2d0: ; 0x0211A2D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl FUN_0200501c
	mov r8, #0x20
	mov r9, #0
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl FUN_0200787c
	bl FUN_0200501c
	mov r1, r8
	bl FUN_020026d0
	mov r7, #2
	str r8, [sp, #8]
	str r7, [sp]
	add r6, sp, #8
	mov r0, r10
	str r6, [sp, #4]
	mov r1, #7
	mov r2, r9
	mov r3, r7
	bl FUN_ov39_0211a258
	str r7, [sp]
	mov r5, #1
	mov r4, #3
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r5
	mov r3, r4
	bl FUN_ov39_0211a258
	str r7, [sp]
	mov r11, #5
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r11
	mov r3, r4
	bl FUN_ov39_0211a258
	str r7, [sp]
	mov r2, r0
	mov r0, r10
	mov r1, #8
	mov r3, r5
	str r6, [sp, #4]
	bl FUN_ov39_0211a258
	bl FUN_02004fac
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl FUN_0200787c
	bl FUN_02004fac
	mov r1, r8
	bl FUN_020026d0
	str r8, [sp, #8]
	stmia sp, {r5, r6}
	mov r0, r10
	mov r1, r4
	mov r2, r9
	mov r3, r7
	bl FUN_ov39_0211a258
	mov r2, r0
	stmia sp, {r5, r6}
	mov r0, r10
	mov r1, #4
	mov r3, r7
	bl FUN_ov39_0211a258
	mov r2, r0
	mov r3, r11
	stmia sp, {r5, r6}
	mov r0, r10
	mov r1, #6
	bl FUN_ov39_0211a258
	mov r2, r0
	mov r1, r7
	mov r3, r4
	mov r0, r10
	stmia sp, {r5, r6}
	bl FUN_ov39_0211a258
	bl FUN_02004f58
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl FUN_0200787c
	bl FUN_02004f58
	mov r1, r8
	bl FUN_020026d0
	str r8, [sp, #8]
	str r9, [sp]
	mov r0, r10
	mov r3, r5
	mov r1, r9
	mov r2, r9
	str r6, [sp, #4]
	bl FUN_ov39_0211a258
	bl  FUN_ov16_020f10c8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov39_0211a2d0

	arm_func_start FUN_ov39_0211a45c
FUN_ov39_0211a45c: ; 0x0211A45C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	ldr r1, _0211A7E8 ; =0x02099EB4
	mov r10, r0
	ldr r0, [r1]
	mov r1, #0xc8
	mov r6, #1
	bl  FUN_ov16_0210ee78
	ldr r3, _0211A7EC ; =0x0209A250
	mov r0, #0
	ldr r1, [r3]
	str r0, [sp, #0x34]
	cmp r1, #0
	ldr r1, _0211A7F0 ; =0x0211BD84
	beq _0211A4B4
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x34
	bl FUN_0202eff0
_0211A4B4:
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	str r7, [sp, #0x30]
	str r6, [sp]
	ldr r2, [sp, #0x34]
	add r3, sp, #0x30
	mov r0, r10
	add r1, r10, #0x36c
	bl FUN_ov39_02119f2c
	ldrb r0, [r10, #0x36c]
	mov r0, r0, lsl #4
	bl FUN_0201e08c
	ldrb r2, [r10, #0x36c]
	mov r1, r7
	str r0, [r10, #0x370]
	mov r2, r2, lsl #4
	bl MemWrite
	ldr r4, _0211A7F4 ; =0x020AF81C
	mov r1, #0x22
	mov r0, r4
	bl FUN_02044658
	ldr r1, [r0]
	mov r0, r4
	str r1, [sp, #0x28]
	mov r1, #0x23
	bl FUN_02044658
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	b _0211A7C8
_0211A530:
	ldr r4, [r10, #0x370]
	add r5, sp, #0x30
	str r6, [sp]
	ldr r2, [sp, #0x34]
	add r1, sp, #0x25
	mov r0, r10
	mov r3, r5
	add r9, r4, r7, lsl #4
	bl FUN_ov39_02119f2c
	str r6, [sp]
	ldr r2, [sp, #0x34]
	add r1, sp, #0x24
	mov r0, r10
	mov r3, r5
	bl FUN_ov39_02119f2c
	str r6, [sp]
	ldr r2, [sp, #0x34]
	mov r0, r10
	add r1, sp, #0x23
	mov r3, r5
	bl FUN_ov39_02119f2c
	str r6, [sp]
	ldr r2, [sp, #0x34]
	mov r0, r10
	add r1, sp, #0x22
	mov r3, r5
	bl FUN_ov39_02119f2c
	str r6, [sp]
	ldr r2, [sp, #0x34]
	mov r0, r10
	add r1, sp, #0x21
	mov r3, r5
	bl FUN_ov39_02119f2c
	str r6, [sp]
	ldr r2, [sp, #0x34]
	mov r0, r10
	add r1, r9, #9
	mov r3, r5
	bl FUN_ov39_02119f2c
	ldrb r0, [r9, #9]
	mov r0, r0, lsl #2
	bl FUN_0201e08c
	mov r8, #0
	str r0, [r9, #4]
	add r11, sp, #0x20
	mov r4, r8
	b _0211A650
_0211A5EC:
	str r6, [sp]
	ldr r2, [sp, #0x34]
	mov r0, r10
	mov r1, r11
	mov r3, r5
	bl FUN_ov39_02119f2c
	ldrb r0, [sp, #0x20]
	add r0, r0, #1
	rsb r0, r0, r0, lsl #1
	bl FUN_0201e08c
	ldr r1, [r9, #4]
	mov r3, r5
	str r0, [r1, r8, lsl #2]
	ldrb r1, [sp, #0x20]
	mov r0, r10
	str r1, [sp]
	ldr r1, [r9, #4]
	ldr r2, [sp, #0x34]
	ldr r1, [r1, r8, lsl #2]
	bl FUN_ov39_02119f2c
	ldr r1, [r9, #4]
	ldrb r0, [sp, #0x20]
	ldr r1, [r1, r8, lsl #2]
	add r8, r8, #1
	strb r4, [r1, r0]
_0211A650:
	ldrb r0, [r9, #9]
	cmp r8, r0
	blt _0211A5EC
	ldrsb r3, [sp, #0x24]
	mov r1, #0
	cmn r3, #1
	streq r6, [r9]
	beq _0211A688
	ldrb r2, [sp, #0x25]
	add r0, sp, #0x28
	ldr r0, [r0, r2, lsl #2]
	tst r0, r6, lsl r3
	strne r6, [r9]
	streq r1, [r9]
_0211A688:
	ldrb r0, [sp, #0x25]
	ldrb r2, [sp, #0x23]
	mov r3, #1
	cmp r0, #0
	movne r3, #0x10
	ldr r0, [r9]
	add r4, r2, r3
	cmp r0, #0
	beq _0211A730
	ldrb r0, [sp, #0x21]
	ldr r3, _0211A7F8 ; =0x55555556
	mov r8, #0x50
	str r0, [sp]
	ldrb r2, [sp, #0x21]
	mov r0, #3
	mov r5, #0x18
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [sp, #0x23]
	mov lr, #0x190
	smull r2, r11, r3, r1
	add r11, r11, r1, lsr #31
	smull r2, r11, r0, r11
	sub r11, r1, r2
	mul r0, r11, r8
	add r0, r0, #8
	str r0, [sp, #0xc]
	ldrb r11, [sp, #0x23]
	mov r0, r10
	mov r1, r4
	smull r2, r12, r3, r11
	add r12, r12, r11, lsr #31
	mul r2, r12, r5
	add r2, r2, #0x28
	str r2, [sp, #0x10]
	str r8, [sp, #0x14]
	str r5, [sp, #0x18]
	str lr, [sp, #0x1c]
	ldrb r2, [sp, #0x22]
	ldrb r3, [sp, #0x21]
	add r2, r2, #3
	b _0211A7A4
_0211A730:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldrb r8, [sp, #0x23]
	ldr r5, _0211A7F8 ; =0x55555556
	mov r2, #3
	smull r0, r1, r5, r8
	add r1, r1, r8, lsr #31
	smull r0, r1, r2, r1
	sub r1, r8, r0
	mov r8, #0x50
	mul r0, r1, r8
	add r0, r0, #8
	str r0, [sp, #0xc]
	ldrb r11, [sp, #0x23]
	mov r2, #0x18
	mov r0, r10
	smull r1, r12, r5, r11
	add r12, r12, r11, lsr #31
	mul r1, r12, r2
	add r1, r1, #0x28
	str r1, [sp, #0x10]
	str r8, [sp, #0x14]
	mov r1, r4
	str r2, [sp, #0x18]
	mov r5, #0x190
	mov r2, #4
	str r5, [sp, #0x1c]
_0211A7A4:
	bl FUN_ov39_0211b4f0
	strb r4, [r9, #8]
	ldrb r0, [sp, #0x25]
	add r7, r7, #1
	strb r0, [r9, #0xa]
	ldrb r0, [sp, #0x22]
	strb r0, [r9, #0xb]
	ldrb r0, [sp, #0x21]
	strb r0, [r9, #0xc]
_0211A7C8:
	ldrb r0, [r10, #0x36c]
	cmp r7, r0
	blt _0211A530
	ldr r1, [sp, #0x34]
	ldr r0, _0211A7EC ; =0x0209A250
	bl FUN_0202e1c0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A7E8: .word 0x02099EB4
_0211A7EC: .word 0x0209A250
_0211A7F0: .word 0x0211BD84
_0211A7F4: .word 0x020AF81C
_0211A7F8: .word 0x55555556
	arm_func_end FUN_ov39_0211a45c

	arm_func_start FUN_ov39_0211a7fc
FUN_ov39_0211a7fc: ; 0x0211A7FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r10, r0
	bl FUN_ov39_0211a45c
	ldr r0, _0211AA4C ; =0x0211BB68
	mov r9, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r11, sp, #0x20
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r8, r9
	mov r7, #8
	mov r6, #0x100
	mov r5, #0x18
	mov r4, #0x190
_0211A83C:
	mov r3, r9, lsl #1
	add r0, r3, #1
	stmia sp, {r0, r3, r8}
	str r8, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r1, [r11, r9, lsl #2]
	mov r0, r10
	mov r2, r7
	str r4, [sp, #0x1c]
	bl FUN_ov39_0211b4f0
	mov r1, #0x60
	mul r1, r9, r1
	add r1, r1, #0x20
	mov r2, #0x10
	mov r3, #0x60
	str r5, [sp]
	bl  FUN_ov16_0210e674
	add r9, r9, #1
	cmp r9, #2
	blt _0211A83C
	mov r9, #1
	str r9, [sp]
	str r8, [sp, #4]
	mov r0, #0x200
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r11, #0x28
	str r11, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r0, r10
	mov r2, #2
	mov r3, r8
	str r4, [sp, #0x1c]
	mov r1, #0x21
	bl FUN_ov39_0211b4f0
	str r0, [r10, #0x380]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	stmib sp, {r0, r6}
	mov r0, #0xd8
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r11, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r2, #2
	mov r0, r10
	mov r3, r2
	str r4, [sp, #0x1c]
	mov r1, #0x22
	bl FUN_ov39_0211b4f0
	str r0, [r10, #0x388]
	str r9, [sp]
	stmib sp, {r8, r9}
	mov r11, #0xa0
	str r11, [sp, #0xc]
	mov r7, #0xa8
	str r7, [sp, #0x10]
	mov r6, #0x30
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r0, r10
	mov r1, #0x23
	mov r2, r9
	mov r3, r8
	str r4, [sp, #0x1c]
	bl FUN_ov39_0211b4f0
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd0
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r0, r10
	mov r1, #0x26
	mov r2, r9
	mov r3, #2
	str r4, [sp, #0x1c]
	bl FUN_ov39_0211b4f0
	mov r0, #5
	str r0, [sp]
	mov r3, #4
	stmib sp, {r3, r9}
	str r11, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r0, r10
	mov r1, #0x25
	mov r2, r9
	str r4, [sp, #0x1c]
	bl FUN_ov39_0211b4f0
	mov r0, #7
	str r0, [sp]
	mov r3, #6
	str r3, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd0
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	str r4, [sp, #0x1c]
	mov r0, r10
	mov r1, #0x27
	mov r2, r9
	bl FUN_ov39_0211b4f0
	str r9, [sp]
	mov r1, #2
	stmib sp, {r1, r9}
	mov r1, #0x90
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r1, #0x40
	str r1, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r0, r10
	mov r2, #5
	mov r3, r8
	mov r1, #0x24
	str r4, [sp, #0x1c]
	bl FUN_ov39_0211b4f0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA4C: .word 0x0211BB68
	arm_func_end FUN_ov39_0211a7fc

	arm_func_start FUN_ov39_0211aa50
FUN_ov39_0211aa50: ; 0x0211AA50
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, r0
	mov r5, r4
	b _0211AA68
_0211AA64:
	add r5, r5, #1
_0211AA68:
	cmp r5, #1
	blt _0211AA64
	mov r5, #0
	b _0211AA7C
_0211AA78:
	add r5, r5, #1
_0211AA7C:
	cmp r5, #9
	blt _0211AA78
	ldr r0, _0211AB28 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	mov r5, #0
	mov r0, r7
	mov r1, r5
	bl FUN_ov39_0211a210
	ldr r0, [r7, #0x370]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	b _0211AB0C
_0211AAB0:
	mov r6, r4
	b _0211AAE0
_0211AAB8:
	ldr r0, [r7, #0x370]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, #4]
	ldr r0, [r0, r6, lsl #2]
	bl FUN_0201e0b8
	ldr r0, [r7, #0x370]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, #4]
	str r4, [r0, r6, lsl #2]
	add r6, r6, #1
_0211AAE0:
	ldr r0, [r7, #0x370]
	add r1, r0, r5, lsl #4
	ldrb r0, [r1, #9]
	cmp r6, r0
	blt _0211AAB8
	ldr r0, [r1, #4]
	bl FUN_0201e0b8
	ldr r0, [r7, #0x370]
	add r0, r0, r5, lsl #4
	str r4, [r0, #4]
	add r5, r5, #1
_0211AB0C:
	ldrb r0, [r7, #0x36c]
	cmp r5, r0
	blt _0211AAB0
	ldr r0, [r7, #0x370]
	bl FUN_0201e0b8
	str r4, [r7, #0x370]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB28: .word 0x02099EB4
	arm_func_end FUN_ov39_0211aa50

	arm_func_start FUN_ov39_0211ab2c
FUN_ov39_0211ab2c: ; 0x0211AB2C
	bx lr
	arm_func_end FUN_ov39_0211ab2c

	arm_func_start FUN_ov39_0211ab30
FUN_ov39_0211ab30: ; 0x0211AB30
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	str r5, [r6, #0x60]
	mov r4, #1
	mov r8, #0x64
	ldr r7, _0211AC4C ; =0x02099EB4
	b _0211AB70
_0211AB50:
	ldr r0, [r7]
	mov r1, r4
	bl  FUN_ov16_0210e7d0
	mov r1, r8
	bl  FUN_ov16_0210e694
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_0211AB70:
	cmp r4, #0x1e
	bls _0211AB50
	cmp r5, #0
	mov r1, #0
	beq _0211AB90
	cmp r5, #1
	beq _0211ABE4
	b _0211AC34
_0211AB90:
	mov r4, #1
	mov r7, #0x12c
	ldr r5, _0211AC4C ; =0x02099EB4
	b _0211ABC0
_0211ABA0:
	ldr r0, [r5]
	mov r1, r4
	bl  FUN_ov16_0210e7d0
	mov r1, r7
	bl  FUN_ov16_0210e694
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_0211ABC0:
	cmp r4, #0xf
	bls _0211ABA0
	mov r0, r6
	mov r1, #1
	bl FUN_ov39_0211b220
	mov r0, #0xf0
	strh r0, [r6, #0x6c]
	ldr r1, _0211AC50 ; =0x0211BDA8
	b _0211AC34
_0211ABE4:
	mov r4, #0x10
	mov r7, #0x12c
	ldr r5, _0211AC4C ; =0x02099EB4
	b _0211AC14
_0211ABF4:
	ldr r0, [r5]
	mov r1, r4
	bl  FUN_ov16_0210e7d0
	mov r1, r7
	bl  FUN_ov16_0210e694
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_0211AC14:
	cmp r4, #0x1e
	bls _0211ABF4
	mov r0, r6
	mov r1, #0x10
	bl FUN_ov39_0211b220
	mov r0, #0xf0
	ldr r1, _0211AC54 ; =0x0211BDB4
	strh r0, [r6, #0x6c]
_0211AC34:
	cmp r1, #0
	ldrne r0, _0211AC58 ; =0x02125420
	strne r1, [r0]
	mvn r0, #0
	strb r0, [r6, #0x378]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AC4C: .word 0x02099EB4
_0211AC50: .word 0x0211BDA8
_0211AC54: .word 0x0211BDB4
_0211AC58: .word 0x02125420
	arm_func_end FUN_ov39_0211ab30

	arm_func_start FUN_ov39_0211ac5c
FUN_ov39_0211ac5c: ; 0x0211AC5C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x30]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211AC74: ; jump table
	b _0211AC90 ; case 0
	b _0211ACB8 ; case 1
	b _0211ACF8 ; case 2
	b _0211AD20 ; case 3
	b _0211AD4C ; case 4
	b _0211AD60 ; case 5
	b _0211AD80 ; case 6
_0211AC90:
	ldr r0, [r4, #4]
	bl FUN_02042054
	cmp r0, #0x74
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl FUN_02041fec
	cmp r0, #0x74
	moveq r0, #1
	streq r0, [r4, #0x30]
	ldmfd sp!, {r4, pc}
_0211ACB8:
	ldr r0, [r4, #4]
	bl FUN_02042054
	cmp r0, #0x74
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl FUN_02041fec
	cmp r0, #0x74
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #6
	bl FUN_ov39_0211ae20
	mov r0, r4
	bl FUN_ov39_0211a1a8
	mov r0, #2
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, pc}
_0211ACF8:
	add r0, r4, #0x2f0
	mov r1, #1
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov39_0211a1c4
	mov r0, #3
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, pc}
_0211AD20:
	bl FUN_ov39_0211a2d0
	mov r0, r4
	bl FUN_ov39_0211a7fc
	ldr r1, [r4, #0x60]
	mov r0, r4
	bl FUN_ov39_0211ab30
	mov r0, #6
	bl  FUN_ov16_020f1490
	mov r0, #4
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, pc}
_0211AD4C:
	ldr r1, [r4, #0x64]
	bl FUN_ov39_0211ae7c
	mov r0, r4
	bl FUN_ov39_0211af94
	ldmfd sp!, {r4, pc}
_0211AD60:
	bl  FUN_ov16_020f1670
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov39_0211aa50
	mov r0, #6
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, pc}
_0211AD80:
	ldr r1, _0211ADB8 ; =0x02125420
	ldr r1, [r1, #8]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #4
	bl FUN_ov39_0211ae20
	ldr r4, [r4, #4]
	mov r1, #0
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r4, pc}
_0211ADB8: .word 0x02125420
	arm_func_end FUN_ov39_0211ac5c

	arm_func_start FUN_ov39_0211adbc
FUN_ov39_0211adbc: ; 0x0211ADBC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x30]
	cmp r0, #4
	cmpne r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r4, #0x600
	ldr r1, _0211AE18 ; =0x020A8C40
	mov r0, r5
	mov r2, r4
	bl FUN_0200787c
	ldr r1, _0211AE1C ; =0x020A9440
	mov r0, r5
	mov r2, r4
	bl FUN_0200787c
	mov r0, r6
	bl FUN_ov39_0211b9cc
	mov r0, r6
	bl FUN_ov39_0211b694
	mov r0, r6
	bl FUN_ov39_0211bb14
	ldmfd sp!, {r4, r5, r6, pc}
_0211AE18: .word 0x020A8C40
_0211AE1C: .word 0x020A9440
	arm_func_end FUN_ov39_0211adbc

	arm_func_start FUN_ov39_0211ae20
FUN_ov39_0211ae20: ; 0x0211AE20
	stmfd sp!, {r4, lr}
	ldr r0, [r0, #4]
	mov r4, r1
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, r4
	bl  FUN_ov16_020f4894
	cmp r4, #4
	beq _0211AE64
	cmp r4, #6
	ldreq r1, _0211AE78 ; =0x04000304
	ldreqh r0, [r1]
	orreq r0, r0, #0x8000
	streqh r0, [r1]
	ldmfd sp!, {r4, pc}
_0211AE64:
	ldr r1, _0211AE78 ; =0x04000304
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	ldmfd sp!, {r4, pc}
_0211AE78: .word 0x04000304
	arm_func_end FUN_ov39_0211ae20

	arm_func_start FUN_ov39_0211ae7c
FUN_ov39_0211ae7c: ; 0x0211AE7C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _0211AF80 ; =0x0209A0F4
	mov r5, r0
	ldrh r3, [r5, #8]
	ldrh r2, [r2]
	ldrh r0, [r5, #0x6c]
	orr r2, r3, r2
	tst r2, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211AF84 ; =0x0211BB60
	ldr r3, [r5, #0x60]
	ldr r12, [r0]
	ldr r4, [r0, #4]
	str r12, [sp]
	add r0, sp, #0
	str r4, [sp, #4]
	ldr r0, [r0, r3, lsl #2]
	tst r2, #0x20
	sub r0, r1, r0
	movne r1, #2
	moveq r1, #0
	tst r2, #0x10
	movne r3, #1
	moveq r3, #0
	add r1, r3, r1
	ldr r3, _0211AF88 ; =0x55555556
	add lr, r0, r1
	smull r1, r4, r3, lr
	add r4, r4, lr, lsr #31
	mov r12, #3
	smull r1, r3, r12, r4
	tst r2, #0x40
	sub r4, lr, r1
	movne r1, #4
	moveq r1, #0
	tst r2, #0x80
	movne r3, #1
	moveq r3, #0
	ldr r2, _0211AF88 ; =0x55555556
	add r3, r3, r1
	smull r1, r12, r2, r0
	add r12, r12, r0, lsr #31
	add r3, r12, r3
	ldr r2, _0211AF8C ; =0x66666667
	mov r0, r3, lsr #0x1f
	smull r1, r12, r2, r3
	add r12, r0, r12, asr #1
	mov r2, #5
	smull r0, r1, r2, r12
	sub r12, r3, r0
	add r2, r12, r12, lsl #1
	ldr r0, _0211AF90 ; =0x0209AC44
	mov r1, #8
	add r4, r4, r2
	bl FUN_0202cf6c
	ldr r2, [r5, #0x60]
	add r1, sp, #0
	ldr r1, [r1, r2, lsl #2]
	mov r0, r5
	add r1, r4, r1
	bl FUN_ov39_0211b220
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0211AF80: .word 0x0209A0F4
_0211AF84: .word 0x0211BB60
_0211AF88: .word 0x55555556
_0211AF8C: .word 0x66666667
_0211AF90: .word 0x0209AC44
	arm_func_end FUN_ov39_0211ae7c

	arm_func_start FUN_ov39_0211af94
FUN_ov39_0211af94: ; 0x0211AF94
	stmfd sp!, {r4, lr}
	mov r4, r0
	mvn r1, #0
	ldr r0, _0211B000 ; =0x02099EB4
	str r1, [r4, #0x68]
	ldr r0, [r0]
	mov r1, #1
	bl  FUN_ov16_0210eeec
	ldr r0, _0211B004 ; =0x0211BDE0
	ldr r0, [r0, #4]
	cmp r0, #0
	bge _0211AFCC
	mov r0, r4
	bl FUN_ov39_0211b008
_0211AFCC:
	mov r0, r4
	bl FUN_ov39_0211b350
	mov r0, r4
	bl FUN_ov39_0211b490
	mov r0, r4
	bl FUN_ov39_0211b04c
	ldr r0, _0211B004 ; =0x0211BDE0
	mvn r1, #0
	str r1, [r0, #4]
	mov r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	ldmfd sp!, {r4, pc}
_0211B000: .word 0x02099EB4
_0211B004: .word 0x0211BDE0
	arm_func_end FUN_ov39_0211af94

	arm_func_start FUN_ov39_0211b008
FUN_ov39_0211b008: ; 0x0211B008
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211B048 ; =0x0211BDE0
	mov r5, r0
	ldr r4, [r1]
	sub r2, r4, #0x1f
	cmp r2, #1
	strls r4, [r1, #4]
	ldmlsfd sp!, {r3, r4, r5, pc}
	cmp r4, #1
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r4, #0x1e
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	bl FUN_ov39_0211b220
	str r4, [r5, #0x68]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B048: .word 0x0211BDE0
	arm_func_end FUN_ov39_0211b008

	arm_func_start FUN_ov39_0211b04c
FUN_ov39_0211b04c: ; 0x0211B04C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211B1D8 ; =0x0211BDE0
	mov r4, r0
	ldr r2, [r1, #4]
	cmp r2, #1
	blt _0211B074
	cmp r2, #0x1e
	bgt _0211B074
	bl FUN_ov39_0211b288
	ldmfd sp!, {r3, r4, r5, pc}
_0211B074:
	ldrh r0, [r4, #8]
	cmp r0, #1
	bne _0211B0B0
	ldr r0, [r4, #0x37c]
	cmp r0, #0
	cmpne r0, #2
	bne _0211B0A0
	ldr r0, _0211B1DC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B0A0:
	ldr r0, [r4, #0x64]
	mov r1, #1
	strb r1, [r4, #0x38d]
	str r0, [r4, #0x390]
_0211B0B0:
	sub r0, r2, #0x1f
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0211B1A8
_0211B0C0: ; jump table
	b _0211B0E4 ; case 0
	b _0211B10C ; case 1
	b _0211B124 ; case 2
	b _0211B124 ; case 3
	b _0211B174 ; case 4
	b _0211B174 ; case 5
	b _0211B174 ; case 6
	b _0211B180 ; case 7
	b _0211B180 ; case 8
_0211B0E4:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0211B1A8
	mov r0, r4
	mov r1, #0
_0211B0F8:
	bl FUN_ov39_0211ab30
	ldr r0, _0211B1DC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	b _0211B1A8
_0211B10C:
	ldr r0, [r4, #0x60]
	cmp r0, #1
	beq _0211B1A8
	mov r0, r4
	mov r1, #1
	b _0211B0F8
_0211B124:
	ldr r1, [r4, #0x60]
	ldr r0, _0211B1DC ; =0x0209AC44
	add r1, r1, #1
	mov r3, r1, lsr #0x1f
	rsb r2, r3, r1, lsl #31
	mov r1, #8
	add r5, r3, r2, ror #31
	bl FUN_0202cf6c
	ldrh r0, [r4, #8]
	mov r1, r5
	cmp r0, #0x200
	moveq r0, #0
	streqb r0, [r4, #0x384]
	ldrh r0, [r4, #8]
	cmp r0, #0x100
	moveq r0, #0
	streqb r0, [r4, #0x38c]
	mov r0, r4
	bl FUN_ov39_0211ab30
	b _0211B1A8
_0211B174:
	mov r0, r4
	bl FUN_ov39_0211b288
	b _0211B1A8
_0211B180:
	ldr r0, _0211B1DC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r0, _0211B1E0 ; =0x02125420
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #5
	str r0, [r4, #0x30]
_0211B1A8:
	mov r5, #3
	ldr r1, [r4, #0x380]
	mov r0, r4
	mov r3, r5
	add r2, r4, #0x384
	bl FUN_ov39_0211b1e4
	ldr r1, [r4, #0x388]
	mov r0, r4
	mov r3, r5
	add r2, r4, #0x38c
	bl FUN_ov39_0211b1e4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B1D8: .word 0x0211BDE0
_0211B1DC: .word 0x0209AC44
_0211B1E0: .word 0x02125420
	arm_func_end FUN_ov39_0211b04c

	arm_func_start FUN_ov39_0211b1e4
FUN_ov39_0211b1e4: ; 0x0211B1E4
	ldrb r0, [r2]
	cmp r0, r3
	bge _0211B208
	mov r0, #1
	strb r0, [r1, #0xe]
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	bx lr
_0211B208:
	moveq r0, #0
	streqb r0, [r1, #0xe]
	ldreqb r0, [r2]
	addeq r0, r0, #1
	streqb r0, [r2]
	bx lr
	arm_func_end FUN_ov39_0211b1e4

	arm_func_start FUN_ov39_0211b220
FUN_ov39_0211b220: ; 0x0211B220
	stmfd sp!, {r3, lr}
	ldr r2, _0211B284 ; =0x0211BDE0
	str r1, [r0, #0x64]
	str r1, [r2]
	ldrb r1, [r0, #0x36c]
	mov lr, #0
	cmp r1, #0
	ldmlefd sp!, {r3, pc}
	mvn r2, #0
_0211B244:
	ldr r1, [r0, #0x370]
	ldr r12, [r0, #0x64]
	add r3, r1, lr, lsl #4
	ldrb r1, [r3, #8]
	cmp r12, r1
	bne _0211B270
	ldr r1, [r0, #0x374]
	cmp r1, r3
	ldmeqfd sp!, {r3, pc}
	str r3, [r0, #0x374]
	strb r2, [r0, #0x378]
_0211B270:
	ldrb r1, [r0, #0x36c]
	add lr, lr, #1
	cmp lr, r1
	blt _0211B244
	ldmfd sp!, {r3, pc}
_0211B284: .word 0x0211BDE0
	arm_func_end FUN_ov39_0211b220

	arm_func_start FUN_ov39_0211b288
FUN_ov39_0211b288: ; 0x0211B288
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x374]
	ldr r0, [r4, #0x37c]
	ldrb r2, [r1, #9]
	cmp r0, #0
	cmpne r0, #2
	sub r1, r2, #1
	bne _0211B2BC
	ldr r0, _0211B340 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211B2BC:
	add r0, r4, #0x300
	ldrsb r0, [r0, #0x78]
	cmp r0, r1
	movge r0, #0
	strgeb r0, [r4, #0x378]
	bge _0211B2E4
	add r0, r0, #1
	add r1, r2, #1
	bl FUN_0201f9bc
	strb r1, [r4, #0x378]
_0211B2E4:
	ldr r0, _0211B340 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r2, [r4, #0x374]
	add r0, r4, #0x300
	ldrsb r1, [r0, #0x78]
	ldrb r0, [r2, #9]
	mov r3, #0
	cmp r1, r0
	bne _0211B328
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldreq r3, _0211B344 ; =0x0211BDC0
	beq _0211B330
	cmp r0, #1
	ldreq r3, _0211B348 ; =0x0211BDCC
	b _0211B330
_0211B328:
	ldr r0, [r2, #4]
	ldr r3, [r0, r1, lsl #2]
_0211B330:
	cmp r3, #0
	ldrne r0, _0211B34C ; =0x02125420
	strne r3, [r0]
	ldmfd sp!, {r4, pc}
_0211B340: .word 0x0209AC44
_0211B344: .word 0x0211BDC0
_0211B348: .word 0x0211BDCC
_0211B34C: .word 0x02125420
	arm_func_end FUN_ov39_0211b288

	arm_func_start FUN_ov39_0211b350
FUN_ov39_0211b350: ; 0x0211B350
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	mov r4, #0x12c
	ldr r6, _0211B48C ; =0x02099EB4
	mov r8, #0x23
	mov r7, #0
	b _0211B38C
_0211B36C:
	ldr r0, [r6]
	mov r1, r8
	bl  FUN_ov16_0210e7d0
	mov r1, r7
	bl  FUN_ov16_0210e694
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
_0211B38C:
	cmp r8, #0x25
	bls _0211B36C
	ldr r3, [r5, #0x374]
	add r0, r5, #0x300
	ldrb r2, [r3, #9]
	ldrsb r1, [r0, #0x78]
	sub r12, r2, #1
	cmp r1, r12
	blt _0211B3DC
	mov r0, #2
	cmp r12, #0
	movne r0, #3
	str r0, [r5, #0x37c]
	ldr r0, [r6]
	mov r1, #0x24
	mov r4, #0x12c
	bl  FUN_ov16_0210e7d0
	mov r1, r4
	bl  FUN_ov16_0210e694
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B3DC:
	cmp r3, #0
	ldrne r0, [r3]
	cmpne r0, #0
	bne _0211B40C
	mov r0, #0
	str r0, [r5, #0x37c]
	ldr r0, [r6]
	mov r1, #0x23
	bl  FUN_ov16_0210e7d0
	mov r1, r4
	bl  FUN_ov16_0210e694
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B40C:
	cmp r1, r12
	blt _0211B43C
	cmp r2, #1
	bhi _0211B43C
	mov r0, #3
	str r0, [r5, #0x37c]
	ldr r0, [r6]
	mov r1, #0x24
	bl  FUN_ov16_0210e7d0
	mov r1, r4
	bl  FUN_ov16_0210e694
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B43C:
	add r0, r5, #0x300
	ldrsb r0, [r0, #0x78]
	cmp r0, #0
	bge _0211B46C
	mov r0, #1
	str r0, [r5, #0x37c]
	ldr r0, [r6]
	mov r1, #0x23
	bl  FUN_ov16_0210e7d0
	mov r1, r4
	bl  FUN_ov16_0210e694
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B46C:
	mov r0, #3
	str r0, [r5, #0x37c]
	ldr r0, [r6]
	mov r1, #0x24
	bl  FUN_ov16_0210e7d0
	mov r1, r4
	bl  FUN_ov16_0210e694
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B48C: .word 0x02099EB4
	arm_func_end FUN_ov39_0211b350

	arm_func_start FUN_ov39_0211b490
FUN_ov39_0211b490: ; 0x0211B490
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0x26
	mov r5, #0
	ldr r4, _0211B4EC ; =0x02099EB4
	b _0211B4C4
_0211B4A4:
	ldr r0, [r4]
	mov r1, r6
	bl  FUN_ov16_0210e7d0
	mov r1, r5
	bl  FUN_ov16_0210e694
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
_0211B4C4:
	cmp r6, #0x27
	bls _0211B4A4
	ldr r0, _0211B4EC ; =0x02099EB4
	mov r1, #0x26
	ldr r0, [r0]
	mov r4, #0x12c
	bl  FUN_ov16_0210e7d0
	mov r1, r4
	bl  FUN_ov16_0210e694
	ldmfd sp!, {r4, r5, r6, pc}
_0211B4EC: .word 0x02099EB4
	arm_func_end FUN_ov39_0211b490

	arm_func_start FUN_ov39_0211b4f0
FUN_ov39_0211b4f0: ; 0x0211B4F0
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
	ldr r1, _0211B634 ; =0x02099EB4
	str r3, [sp, #0xc]
	mov r9, r0
	mov r4, r8, lsl #0x10
	mov r7, r2
	ldr r0, [r1]
	ldr r3, [sp, #0x3c]
	mov r1, r5
	mov r2, r4, lsr #0x10
	bl  FUN_ov16_0210fba4
	ldr r1, [sp, #0x38]
	mov r4, r0
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e68c
	mov r2, r6
	add r0, r4, #0x3a
	mov r1, r7
	mov r6, #0
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r7
	ldr r2, [sp, #0x30]
	mov r3, r6
	bl  FUN_ov16_0210e720
	mov r1, r7
	add r0, r4, #0x42
	ldr r2, [sp, #0x34]
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3a
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r5
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	mov r3, r6
	add r0, r4, #0x42
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_0210e6fc
	ldr r1, _0211B638 ; =FUN_ov39_0211b654
	ldr r0, _0211B63C ; =FUN_ov39_0211b648
	str r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r1, _0211B640 ; =FUN_ov39_0211b670
	ldr r0, _0211B644 ; =FUN_ov39_0211b67c
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r0, r4
	mov r1, #0x12c
	bl  FUN_ov16_0210e694
	add r3, r9, r8, lsl #4
	mov r0, r4
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	str r2, [r3, #0x70]
	str r1, [r3, #0x74]
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	str r2, [r3, #0x78]
	str r1, [r3, #0x7c]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B634: .word 0x02099EB4
_0211B638: .word FUN_ov39_0211b654
_0211B63C: .word FUN_ov39_0211b648
_0211B640: .word FUN_ov39_0211b670
_0211B644: .word FUN_ov39_0211b67c
	arm_func_end FUN_ov39_0211b4f0

	arm_func_start FUN_ov39_0211b648
FUN_ov39_0211b648: ; 0x0211B648
	mov r1, #0
	strb r1, [r0, #0xe]
	bx lr
	arm_func_end FUN_ov39_0211b648

	arm_func_start FUN_ov39_0211b654
FUN_ov39_0211b654: ; 0x0211B654
	ldrh r3, [r0, #8]
	ldr r1, _0211B66C ; =0x0211BDE0
	mov r2, #1
	str r3, [r1]
	strb r2, [r0, #0xe]
	bx lr
_0211B66C: .word 0x0211BDE0
	arm_func_end FUN_ov39_0211b654

	arm_func_start FUN_ov39_0211b670
FUN_ov39_0211b670: ; 0x0211B670
	mov r1, #2
	strb r1, [r0, #0xe]
	bx lr
	arm_func_end FUN_ov39_0211b670

	arm_func_start FUN_ov39_0211b67c
FUN_ov39_0211b67c: ; 0x0211B67C
	ldrh r1, [r0, #8]
	ldr r0, _0211B690 ; =0x0211BDE0
	str r1, [r0, #4]
	str r1, [r0]
	bx lr
_0211B690: .word 0x0211BDE0
	arm_func_end FUN_ov39_0211b67c

	arm_func_start FUN_ov39_0211b694
FUN_ov39_0211b694: ; 0x0211B694
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x30
	mov r4, #1
	mov r5, r0
	mov r6, #5
	mov r7, #2
	mov r9, r4
	ldr r8, _0211B9C0 ; =0x02099EB4
	b _0211B774
_0211B6B8:
	ldr r0, [r8]
	mov r1, r4
	bl  FUN_ov16_0210e7d0
	ldrh r1, [r0, #0x32]
	cmp r1, #0xc8
	blo _0211B768
	ldrb r2, [r0, #0xe]
	ldrb r1, [r5, #0x38d]
	mov r10, r7
	add r2, r0, r2, lsl #2
	cmp r1, #0
	ldrb r2, [r2, #0x3b]
	beq _0211B6F8
	ldr r1, [r5, #0x390]
	cmp r4, r1
	moveq r10, r6
_0211B6F8:
	add r3, r5, r4, lsl #4
	ldr lr, [r3, #0x78]
	mov r1, r9
	mov r12, lr, asr #2
	add r12, lr, r12, lsr #29
	mov r12, r12, asr #3
	str r12, [sp]
	ldr lr, [r3, #0x7c]
	mov r12, lr, asr #2
	add r12, lr, r12, lsr #29
	mov r12, r12, asr #3
	str r12, [sp, #4]
	str r10, [sp, #8]
	ldrb r10, [r0, #0xe]
	add r0, r0, r10, lsl #2
	ldrb r10, [r0, #0x3a]
	mov r0, r5
	str r10, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r12, [r3, #0x70]
	ldr r10, [r3, #0x74]
	mov r2, r12, asr #2
	mov r3, r10, asr #2
	add r2, r12, r2, lsr #29
	add r3, r10, r3, lsr #29
	mov r2, r2, asr #3
	mov r3, r3, asr #3
	bl FUN_ov39_0211bac4
_0211B768:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_0211B774:
	cmp r4, #0x1e
	bls _0211B6B8
	ldr r0, [r5, #0x60]
	mov r1, #0
	cmp r0, #0
	strb r1, [r5, #0x38d]
	moveq r4, #0x1f
	beq _0211B79C
	cmp r0, #1
	moveq r4, #0x20
_0211B79C:
	ldr r7, _0211B9C0 ; =0x02099EB4
	mov r1, r4
	ldr r0, [r7]
	bl  FUN_ov16_0210e7d0
	add r2, r5, r4, lsl #4
	ldrb r1, [r0, #0xe]
	ldr r3, [r2, #0x78]
	mov r6, #1
	add r4, r0, r1, lsl #2
	mov r1, r3, asr #2
	add r1, r3, r1, lsr #29
	ldrb r3, [r4, #0x3b]
	mov r1, r1, asr #3
	str r1, [sp]
	ldr r8, [r2, #0x7c]
	mov r1, #2
	mov r4, r8, asr #2
	add r4, r8, r4, lsr #29
	mov r4, r4, asr #3
	stmib sp, {r4, r6}
	ldrb r4, [r0, #0xe]
	add r0, r0, r4, lsl #2
	ldrb r4, [r0, #0x3a]
	mov r0, r5
	str r4, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r4, [r2, #0x74]
	ldr r6, [r2, #0x70]
	mov r3, r4, asr #2
	mov r2, r6, asr #2
	add r2, r6, r2, lsr #29
	add r3, r4, r3, lsr #29
	mov r2, r2, asr #3
	mov r3, r3, asr #3
	bl FUN_ov39_0211bac4
	mov r0, r5
	bl FUN_ov39_0211b350
	mov r0, r5
	bl FUN_ov39_0211b490
	ldr r8, _0211B9C4 ; =0x0211BB70
	add r6, sp, #0x14
	mov r10, r6
	ldmia r8!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r8, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	mov r4, #0x21
	mvn r9, #0
	mov r8, #3
	ldr r6, _0211B9C8 ; =0x0211BDE0
	b _0211B930
_0211B868:
	ldr r0, [r7]
	mov r1, r4
	bl  FUN_ov16_0210e7d0
	ldrh r1, [r0, #0x32]
	cmp r1, #0
	beq _0211B924
	ldrb r2, [r0, #0xe]
	ldr r1, [r6]
	add r2, r0, r2, lsl #2
	ldrb r2, [r2, #0x3b]
	cmp r4, r1
	ldreqb r2, [r0, #0x3f]
	streq r9, [r6]
	cmp r4, #0x24
	bne _0211B8B4
	ldr r1, [r5, #0x374]
	ldrb r1, [r1, #9]
	subs r1, r1, #1
	ldreqb r2, [r0, #0x43]
_0211B8B4:
	add r1, r5, r4, lsl #4
	ldr lr, [r1, #0x78]
	sub r12, r4, #0x21
	mov r3, lr, asr #2
	add r3, lr, r3, lsr #29
	mov r3, r3, asr #3
	str r3, [sp]
	ldr lr, [r1, #0x7c]
	mov r3, lr, asr #2
	add r3, lr, r3, lsr #29
	mov r3, r3, asr #3
	stmib sp, {r3, r8}
	ldrb r3, [r0, #0xe]
	add r0, r0, r3, lsl #2
	ldrb r3, [r0, #0x3a]
	mov r0, r5
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r3, [r1, #0x70]
	ldr r2, [r1, #0x74]
	mov lr, r3, asr #2
	mov r1, r2, asr #2
	add r3, r3, lr, lsr #29
	add lr, r2, r1, lsr #29
	mov r2, r3, asr #3
	ldr r1, [r10, r12, lsl #2]
	mov r3, lr, asr #3
	bl FUN_ov39_0211bac4
_0211B924:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_0211B930:
	cmp r4, #0x28
	blo _0211B868
	ldr r0, [r5, #0x64]
	mov r1, #2
	add r0, r5, r0, lsl #4
	ldr r2, [r0, #0x78]
	mov r4, #7
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp]
	ldr r0, [r5, #0x64]
	mov r3, #0
	add r0, r5, r0, lsl #4
	ldr r6, [r0, #0x7c]
	mov r0, r5
	mov r2, r6, asr #2
	add r2, r6, r2, lsr #29
	mov r2, r2, asr #3
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [r5, #0x64]
	add r2, r5, r2, lsl #4
	ldr r5, [r2, #0x70]
	ldr r4, [r2, #0x74]
	mov r2, r5, asr #2
	mov r3, r4, asr #2
	add r2, r5, r2, lsr #29
	add r3, r4, r3, lsr #29
	mov r2, r2, asr #3
	mov r3, r3, asr #3
	bl FUN_ov39_0211bac4
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B9C0: .word 0x02099EB4
_0211B9C4: .word 0x0211BB70
_0211B9C8: .word 0x0211BDE0
	arm_func_end FUN_ov39_0211b694

	arm_func_start FUN_ov39_0211b9cc
FUN_ov39_0211b9cc: ; 0x0211B9CC
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
	bl FUN_ov39_0211bac4
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov39_0211b9cc

	arm_func_start FUN_ov39_0211ba0c
FUN_ov39_0211ba0c: ; 0x0211BA0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	ldr lr, _0211BABC ; =0x020A8440
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
	ldr r5, _0211BAC0 ; =0x00000FFF
	b _0211BAB0
_0211BA4C:
	cmp r3, #0
	addlt r4, r4, r0, lsl #1
	blt _0211BAA8
	cmp r3, #0x18
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r7, r2, r3, lsl #5
	mov r8, r2
	mov lr, r0
	add r9, r1, r7, lsl #1
	b _0211BAA0
_0211BA74:
	cmp r8, #0
	blt _0211BA90
	cmp r8, #0x20
	ldrlth r7, [r4]
	andlt r7, r7, r5
	orrlt r7, r7, r6
	strlth r7, [r9]
_0211BA90:
	sub lr, lr, #1
	add r8, r8, #1
	add r4, r4, #2
	add r9, r9, #2
_0211BAA0:
	cmp lr, #0
	bgt _0211BA74
_0211BAA8:
	sub r12, r12, #1
	add r3, r3, #1
_0211BAB0:
	cmp r12, #0
	bgt _0211BA4C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BABC: .word 0x020A8440
_0211BAC0: .word 0x00000FFF
	arm_func_end FUN_ov39_0211ba0c

	arm_func_start FUN_ov39_0211bac4
FUN_ov39_0211bac4: ; 0x0211BAC4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	ldr lr, [sp, #0x2c]
	mov r12, #0xc
	mla r4, lr, r12, r0
	ldr r4, [r4, #0x2fc]
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
	bl FUN_ov39_0211ba0c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov39_0211bac4

	arm_func_start FUN_ov39_0211bb14
FUN_ov39_0211bb14: ; 0x0211BB14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x600
	ldr r0, _0211BB54 ; =0x020A9440
	mov r1, r5
	mov r2, r4
	bl FUN_0200562c
	ldr r0, _0211BB58 ; =0x020A8C40
	mov r1, r5
	mov r2, r4
	bl FUN_0200554c
	ldr r0, _0211BB5C ; =0x020A8440
	mov r1, r5
	mov r2, r4
	bl FUN_0200546c
	ldmfd sp!, {r3, r4, r5, pc}
_0211BB54: .word 0x020A9440
_0211BB58: .word 0x020A8C40
_0211BB5C: .word 0x020A8440
	arm_func_end FUN_ov39_0211bb14
_0211BB60:
	.byte 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xD8, 0xBC, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB8, 0xBC, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0xC8, 0xBC, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x58, 0xBC, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x68, 0xBC, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x78, 0xBC, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0x88, 0xBC, 0x11, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x98, 0xBC, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0xA8, 0xBC, 0x11, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov39_0211bbdc
FUN_ov39_0211bbdc: ; 0x0211BBDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211BC24 ; =0x0211BC40
	str r0, [r4, #0xc]
	ldr r0, _0211BC28 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _0211BC2C ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BC24: .word 0x0211BC40
_0211BC28: .word 0x00009CCD
_0211BC2C: .word 0x0000EA3C
	arm_func_end FUN_ov39_0211bbdc
	; 0x0211BC30


	.include "/macros/function.inc"
	.include "/include/overlay41.inc"

	.text
	arm_func_start FUN_ov41_02119f00
FUN_ov41_02119f00: ; 0x02119F00
	ldr r2, _02119F10 ; =0x02121EB4
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_02119F10: .word ov41_02121EB4
	arm_func_end FUN_ov41_02119f00

	arm_func_start FUN_ov41_02119f14
FUN_ov41_02119f14: ; 0x02119F14
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_02119F24:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _02119F3C
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_02119F3C:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _02119F24
	bx lr
	arm_func_end FUN_ov41_02119f14

	arm_func_start FUN_ov41_02119f4c
FUN_ov41_02119f4c: ; 0x02119F4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #1
	ldr r0, _02119FD4 ; =0x020A0640
	str r2, [r4, #0x70]
	ldrb r2, [r0, #0x89]
	cmp r2, #0
	ldrb r2, [r0, #0x87]
	beq _02119F90
	cmp r2, #0
	movne r0, #0xf
	strne r0, [r4, #0x70]
	bne _02119FB0
	ldrb r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #0x10
	b _02119FAC
_02119F90:
	cmp r2, #0
	movne r0, #0xc
	strne r0, [r4, #0x70]
	bne _02119FB0
	ldrb r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #0xd
_02119FAC:
	strne r0, [r4, #0x70]
_02119FB0:
	mov r3, #0x76
	mov r2, #1
	mov r0, r4
	str r3, [r4, #0x6c]
	str r1, [r4, #0x78]
	strb r2, [r4, #0x7c]
	bl FUN_ov41_02119f14
	strb r0, [r4, #0x7d]
	ldmfd sp!, {r4, pc}
_02119FD4: .word unk_020A0640
	arm_func_end FUN_ov41_02119f4c

	arm_func_start FUN_ov41_02119fd8
FUN_ov41_02119fd8: ; 0x02119FD8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r5, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211A3D8 ; =0x02099EB4
	str r1, [r5, #0x43c]
	ldr r0, [r0]
	mov r4, #0
	bl FUN_ov16_0210e980
	ldr r0, _0211A3DC ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _0211A3E0 ; =0x020A0640
	mov r3, #1
	ldrb r1, [r0, #0x87]
	sub r2, r4, #1
	cmp r1, #0
	ldreqb r0, [r0, #0x88]
	add r1, r5, #0x1000
	cmpeq r0, #0
	moveq r3, r4
	mov r0, r5
	strb r3, [r5, #0x88]
	strb r4, [r1, #0x199]
	strb r4, [r1, #0x19a]
	strb r4, [r1, #0x19b]
	str r2, [r1, #0x19c]
	str r2, [r1, #0x1a0]
	str r4, [r1, #0x1a4]
	str r4, [r1, #0x1a8]
	str r4, [r1, #0x1ac]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r0, r5
	bl FUN_ov41_0211f9cc
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _0211A088
	bl FUN_ov16_02110558
_0211A088:
	str r0, [r5, #0xe0c]
	mov r1, r4
	add r0, r5, #8
	mov r2, #0x60
	bl MI_CpuFill8
	add r0, r5, #0x34
	mov r7, #2
	mov r6, #1
	mov r1, r4
	mov r2, r7
	add r0, r0, #0x1000
	str r6, [r5, #8]
	str r4, [r5, #0x68]
	bl MI_CpuFill8
	ldr r0, _0211A3E4 ; =0x0209A070
	mov r1, r7
	bl FUN_ov16_020f6c20
	ldrb r0, [r5, #0x88]
	cmp r0, #0
	bne _0211A148
	bl FUN_ov16_020f067c
	cmp r0, #0
	bne _0211A100
	ldr r0, _0211A3E8 ; =0x0209BA20
	add r1, r6, #0x1f4
	bl FUN_020727a8
	ldr r0, _0211A3EC ; =0x020AF81C
	ldr r1, _0211A3F0 ; =0x055D4A82
	bl FUN_02044734
	b _0211A148
_0211A100:
	ldr r7, _0211A3F4 ; =0x020A1740
	ldr r8, _0211A3E8 ; =0x0209BA20
	ldrsh r1, [r7, #0x7e]
	mov r0, r8
	bl FUN_020727a8
	ldrh r1, [r7, #0x7e]
	mov r0, r8
	bl FUN_020737f0
	mov r0, r8
	bl FUN_02072898
	ldr r2, _0211A3E0 ; =0x020A0640
	mov r1, r6
	strh r0, [r2, #0x94]
	mov r2, r6
	str r4, [sp]
	ldr r0, _0211A3EC ; =0x020AF81C
	ldr r3, _0211A3F0 ; =0x055D4A82
	bl FUN_02044690
_0211A148:
	add r0, r5, #0x2d8
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0x9c
	bl MI_CpuFill8
	ldr r7, _0211A3F8 ; =0x0209AEC0
	mov r8, #1
	mov r1, #4
	mov r0, r7
	strb r8, [r5, #0x80]
	strb r1, [r5, #0x81]
	strb r4, [r5, #0x82]
	str r4, [r5, #0x84]
	str r4, [r5, #0x440]
	str r4, [r5, #0x444]
	bl FUN_02046730
	mov r1, r8, lsl r0
	mov r6, #0x80
	add r0, r5, #0x1000
	strh r1, [r0, #0xc8]
	add r3, r5, #0xca
	mov r1, r4
	mov r2, r6
	add r0, r3, #0x1000
	bl MI_CpuFill8
	add r0, r5, #0x374
	add r0, r0, #0xc00
	mov r1, r4
	mov r2, #0x40
	bl MI_CpuFill8
	add r0, r5, #0x3b4
	mov r2, r6
	add r0, r0, #0xc00
	mov r1, r4
	bl MI_CpuFill8
	mov r6, #8
	add r0, r5, #0xe10
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	add r0, r5, #0x1000
	strb r4, [r0, #0x198]
	mov r0, r7
	strb r6, [r5, #0xe09]
	bl FUN_02046744
	mov r0, r7
	bl FUN_02046730
	add r1, sp, #4
	mov r9, r0
	mov r0, r4
	str r4, [r1]
	str r4, [r1, #4]
	bl FUN_ov16_020f09c0
	str r0, [sp, #4]
	mov r0, r8
	bl FUN_ov16_020f09c0
	mov r7, #1
	ldr r1, [sp, #4]
	sub r6, r7, #2
	cmp r1, #1
	str r0, [sp, #8]
	cmpeq r0, #1
	addeq r0, r5, #0x1000
	streqb r8, [r0, #0x198]
	mov r0, r9
	str r4, [r5, #0x6c]
	str r7, [r5, #0x70]
	str r6, [r5, #0x74]
	str r4, [r5, #0x78]
	strb r4, [r5, #0x7c]
	strb r4, [r5, #0x7d]
	bl FUN_ov16_020f085c
	add r1, sp, #4
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0211A300
_0211A27C: ; jump table
	b _0211A300 ; case 0
	b _0211A290 ; case 1
	b _0211A2D8 ; case 2
	b _0211A2E0 ; case 3
	b _0211A2F8 ; case 4
_0211A290:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x198]
	mov r1, #0x10
	strb r1, [r5, #0xe09]
	str r4, [r5, #0x6c]
	str r7, [r5, #0x70]
	str r6, [r5, #0x74]
	str r4, [r5, #0x78]
	strb r4, [r5, #0x7c]
	strb r4, [r5, #0x7d]
	cmp r0, #0
	bne _0211A2D0
	ldr r1, _0211A3FC ; =0x02121F20
_0211A2C4:
	mov r0, r5
	bl FUN_ov41_02119f4c
	b _0211A300
_0211A2D0:
	ldr r1, _0211A400 ; =0x02121F64
	b _0211A2C4
_0211A2D8:
	mov r0, #8
	b _0211A2FC
_0211A2E0:
	ldr r1, _0211A404 ; =0x020A0670
	ldrb r0, [r1, r0]
	cmp r9, r0
	moveq r0, #6
	movne r0, #5
	b _0211A2FC
_0211A2F8:
	mov r0, #4
_0211A2FC:
	strb r0, [r5, #0xe09]
_0211A300:
	ldr r0, _0211A408 ; =0x0209F5C0
	add r2, r5, #0x1000
	mov r1, r4
	str r4, [r2, #0x150]
	bl FUN_ov16_020f5a58
	add r0, r5, #0x15c
	mov r1, r4
	add r0, r0, #0x1000
	mov r2, #0x3c
	bl MI_CpuFill8
	add r1, r5, #0x1000
	mov r0, r5
	str r4, [r1, #0x154]
	strb r4, [r1, #0x158]
	str r4, [r1, #0x7c]
	bl FUN_ov41_0211d13c
	mov r0, r5
	bl FUN_ov41_0211d4ac
	mov r0, r5
	bl FUN_ov41_0211d604
	mov r0, r5
	bl FUN_ov41_0211ffe0
	mov r0, r5
	bl FUN_ov41_02120dd4
	add r0, r5, #0xe10
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x1000
	str r4, [r0, #0x14c]
	mov r0, r5
	bl FUN_ov41_0211ce7c
	ldrb r0, [r5, #0x88]
	cmp r0, #0
	bne _0211A3A8
	add r0, r5, #0x15c
	add r0, r0, #0x1000
	mov r1, #0x1c
	mov r2, #6
	bl FUN_ov16_020f2fa8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211A3A8:
	add r0, r5, #0x170
	add r0, r0, #0x1000
	mov r1, #0x18
	mov r2, #0xc
	bl FUN_ov16_020f2fa8
	add r0, r5, #0x184
	add r0, r0, #0x1000
	mov r1, #0xf
	mov r2, #2
	bl FUN_ov16_020f2fa8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211A3D8: .word unk_02099EB4
_0211A3DC: .word unk_02099ED4
_0211A3E0: .word unk_020A0640
_0211A3E4: .word unk_0209A070
_0211A3E8: .word unk_0209BA20
_0211A3EC: .word unk_020AF81C
_0211A3F0: .word 0x055D4A82
_0211A3F4: .word unk_020A1740
_0211A3F8: .word unk_0209AEC0
_0211A3FC: .word ov41_02121F20
_0211A400: .word ov41_02121F64
_0211A404: .word unk_020A0670
_0211A408: .word unk_0209F5C0
	arm_func_end FUN_ov41_02119fd8

	arm_func_start FUN_ov41_0211a40c
FUN_ov41_0211a40c: ; 0x0211A40C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #0x43c]
	bic r0, r0, #0x1f00
	orr r0, r0, r2, lsl #8
	str r0, [r1]
	ldr r0, [r4, #0xe0c]
	cmp r0, #0
	beq _0211A444
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211A444:
	mov r5, #0
	ldr r0, _0211A4CC ; =0x02099EB4
	str r5, [r4, #0xe0c]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211A4D0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	add r0, r4, #0x15c
	add r0, r0, #0x1000
	mov r1, #3
	bl FUN_ov16_020f2fe4
	ldr r0, _0211A4D4 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f5af0
	ldr r0, _0211A4D8 ; =0x0209A070
	bl FUN_ov16_020f6c58
	mov r0, r4
	bl FUN_ov41_0211f6f0
	mov r0, r4
	bl FUN_ov41_0211d64c
	mov r0, r4
	bl FUN_ov41_0211d4d4
	mov r0, r4
	mov r5, #2
	mov r1, r5
	bl FUN_ov41_0211d1b4
	mov r0, r4
	sub r1, r5, #3
	bl FUN_ov41_0211d298
	ldr r0, _0211A4DC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4CC: .word unk_02099EB4
_0211A4D0: .word unk_02099ED4
_0211A4D4: .word unk_0209F5C0
_0211A4D8: .word unk_0209A070
_0211A4DC: .word unk_02099F38
	arm_func_end FUN_ov41_0211a40c

	arm_func_start FUN_ov41_0211a4e0
FUN_ov41_0211a4e0: ; 0x0211A4E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x1000
	ldrb r0, [r0, #0x19b]
	mov r6, r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	ldr r0, _0211A5C8 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7, #0x88]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7, #0x82]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r7, #0x80]
	sub r5, r4, #1
	add r0, r1, #0xf3
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0211A568
	tst r6, #2
	beq _0211A590
	ldr r0, _0211A5CC ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, #0x10
	strb r0, [r7, #0x82]
	mov r5, #1
	b _0211A590
_0211A568:
	cmp r1, #0xf
	bne _0211A590
	tst r6, #1
	beq _0211A590
	ldr r0, _0211A5CC ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, #0x11
	mov r5, r4
	strb r0, [r7, #0x82]
_0211A590:
	cmp r5, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #0x34
	add r4, r0, #0x1000
	ldrb r1, [r4, r5]
	ldr r0, _0211A5D0 ; =0x0209A070
	mov r2, #1
	bl FUN_ov16_020f6e8c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4, r5]
	ldr r0, _0211A5C8 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A5C8: .word unk_0209F5C0
_0211A5CC: .word gL5Sound
_0211A5D0: .word unk_0209A070
	arm_func_end FUN_ov41_0211a4e0

	arm_func_start FUN_ov41_0211a5d4
FUN_ov41_0211a5d4: ; 0x0211A5D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrb r0, [r5, #0x80]
	mov r4, r1
	cmp r0, #0xd
	cmpne r0, #0xe
	cmpne r0, #0xf
	bne _0211A604
	mov r0, r5
	mov r1, r4
	bl FUN_ov41_0211a4e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A604:
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A728 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0x1000
	ldr r1, [r0, #0x40]
	cmp r1, #0
	ldreq r0, [r0, #0x5c]
	cmpeq r0, #0
	ldreq r0, [r5, #0x84]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A72C ; =0x0209A0F4
	ldr r6, _0211A730 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r6]
	orr r1, r1, r4
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #1
	bne _0211A688
	ldr r0, [r6]
	add r0, r0, #0xf00
	ldrh r4, [r0, #0x38]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r4
	strh r1, [r0, #0x38]
_0211A688:
	tst r4, #1
	beq _0211A69C
	mov r0, r5
	bl FUN_ov41_0211a734
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A69C:
	tst r4, #2
	beq _0211A6B0
	mov r0, r5
	bl FUN_ov41_0211a80c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A6B0:
	tst r4, #0x400
	beq _0211A6C4
	mov r0, r5
	bl FUN_ov41_0211a964
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A6C4:
	tst r4, #0x800
	beq _0211A6D8
	mov r0, r5
	bl FUN_ov41_0211aa00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A6D8:
	tst r4, #0x20
	beq _0211A6EC
	mov r0, r5
	bl FUN_ov41_0211ab30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A6EC:
	tst r4, #0x10
	beq _0211A700
	mov r0, r5
	bl FUN_ov41_0211abe0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A700:
	tst r7, #0x40
	beq _0211A714
	mov r0, r5
	bl FUN_ov41_0211ac90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A714:
	tst r7, #0x80
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov41_0211ace0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A728: .word unk_02099ED4
_0211A72C: .word unk_0209A0F4
_0211A730: .word unk_02099EB4
	arm_func_end FUN_ov41_0211a5d4

	arm_func_start FUN_ov41_0211a734
FUN_ov41_0211a734: ; 0x0211A734
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x81]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211A74C: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0211A764 ; case 1
	b _0211A76C ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _0211A774 ; case 4
	b _0211A798 ; case 5
_0211A764:
	bl FUN_ov41_0212126c
	ldmfd sp!, {r4, pc}
_0211A76C:
	bl FUN_ov41_021213c8
	ldmfd sp!, {r4, pc}
_0211A774:
	ldr r0, _0211A804 ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov41_02120c24
	mov r0, r4
	mov r1, #1
	bl FUN_ov41_0211ce68
	ldmfd sp!, {r4, pc}
_0211A798:
	ldr r0, [r4, #0xe0c]
	bl FUN_ov16_02110b0c
	ldr r0, [r4, #0xe0c]
	bl FUN_ov16_02110b04
	cmp r0, #1
	bne _0211A7E8
	ldr r0, _0211A804 ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, _0211A808 ; =0x0209AEC0
	mov r1, #1
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _0211A7DC
	mov r0, #0x15
	bl FUN_ov16_020f2604
	ldmfd sp!, {r4, pc}
_0211A7DC:
	mov r0, #0x1a
	bl FUN_ov16_020f2604
	ldmfd sp!, {r4, pc}
_0211A7E8:
	ldr r0, _0211A804 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #1
	bl FUN_ov41_0211ce68
	ldmfd sp!, {r4, pc}
_0211A804: .word gL5Sound
_0211A808: .word unk_0209AEC0
	arm_func_end FUN_ov41_0211a734

	arm_func_start FUN_ov41_0211a80c
FUN_ov41_0211a80c: ; 0x0211A80C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r1, [r6, #0x81]
	cmp r1, #1
	beq _0211A834
	cmp r1, #2
	beq _0211A900
	cmp r1, #5
	beq _0211A924
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A834:
	bl FUN_ov41_0211af50
	cmp r0, #0
	bne _0211A884
	bl FUN_ov16_020f067c
	cmp r0, #0
	beq _0211A874
	mov r0, r6
	mov r1, #7
	bl FUN_ov41_0211ae58
	ldr r0, _0211A95C ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #5
	bl FUN_ov41_0211ce68
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A874:
	ldr r0, _0211A95C ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A884:
	mov r0, r6
	mov r1, #7
	bl FUN_ov41_0211ae58
	mov r3, #8
	ldr r0, [r6, #4]
	mov r1, #1
	mov r2, #0x4c
	strb r3, [r6, #0x82]
	str r3, [r6, #0x84]
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r5, #0
	ldr r4, _0211A960 ; =0x0209AEC0
	mov r7, #0x68
	b _0211A8E4
_0211A8BC:
	mov r0, r4
	bl FUN_02046730
	mla r1, r5, r7, r6
	add r1, r1, #0x400
	add r0, r6, r0, lsl #5
	add r0, r0, r5, lsl #1
	ldrh r1, [r1, #0x5c]
	add r0, r0, #0x1000
	add r5, r5, #1
	strh r1, [r0, #0xca]
_0211A8E4:
	ldrb r0, [r6, #0xe09]
	cmp r5, r0
	blt _0211A8BC
	ldr r0, _0211A95C ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A900:
	mov r1, #7
	bl FUN_ov41_0211ae58
	mov r0, r6
	mov r1, #1
	bl FUN_ov41_0211ce68
	ldr r0, _0211A95C ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A924:
	mov r4, #1
	ldr r0, [r6, #0xe0c]
	mov r2, r4
	mov r1, #0
	bl FUN_ov16_02110a04
	ldr r0, [r6, #0xe0c]
	bl FUN_ov16_02110b0c
	ldr r0, _0211A95C ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, r4
	bl FUN_ov41_0211ce68
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A95C: .word gL5Sound
_0211A960: .word unk_0209AEC0
	arm_func_end FUN_ov41_0211a80c

	arm_func_start FUN_ov41_0211a964
FUN_ov41_0211a964: ; 0x0211A964
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x81]
	cmp r1, #4
	cmpne r1, #5
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov41_0211febc
	cmp r0, #0
	bne _0211A998
	ldr r0, _0211A9F8 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A998:
	ldrb r0, [r4, #0x81]
	cmp r0, #1
	beq _0211A9AC
	cmp r0, #2
	ldmnefd sp!, {r4, pc}
_0211A9AC:
	ldr r0, [r4, #0x68]
	mov r1, #0
	eor r2, r0, #1
	strb r1, [r4, #0x15]
	ldr r0, _0211A9FC ; =0x02099EB4
	str r2, [r4, #0x68]
	ldr r0, [r0]
	mov r1, #6
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	ldrne r1, [r4, #0x68]
	strneh r1, [r0, #0x30]
	mov r0, r4
	mov r1, #6
	bl FUN_ov41_0211ae58
	ldr r0, _0211A9F8 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A9F8: .word gL5Sound
_0211A9FC: .word unk_02099EB4
	arm_func_end FUN_ov41_0211a964

	arm_func_start FUN_ov41_0211aa00
FUN_ov41_0211aa00: ; 0x0211AA00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldrb r1, [r10, #0x81]
	cmp r1, #1
	beq _0211AA20
	cmp r1, #2
	beq _0211AB1C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA20:
	mov r1, #9
	bl FUN_ov41_0211ae58
	bl FUN_ov16_020f067c
	cmp r0, #0
	beq _0211AAAC
	ldrb r0, [r10, #0xe08]
	mov r8, #0
	mov r9, r8
	cmp r0, #0
	ble _0211AACC
	mov r11, #0x68
	add r0, r10, #0x388
	add r1, r10, #0x48
	add r7, r0, #0x400
	add r6, r1, #0x400
	mov r4, r11
	mov r5, r11
_0211AA64:
	mov r0, r10
	mov r1, r9
	bl FUN_ov41_0211f958
	cmp r0, #0
	beq _0211AA98
	mla r0, r9, r4, r7
	mla r1, r8, r5, r6
	mov r2, r11
	bl MI_CpuCopy8
	ldrb r0, [r10, #0xe09]
	add r8, r8, #1
	cmp r8, r0
	bge _0211AACC
_0211AA98:
	ldrb r0, [r10, #0xe08]
	add r9, r9, #1
	cmp r9, r0
	blt _0211AA64
	b _0211AACC
_0211AAAC:
	ldrb r3, [r10, #0xe09]
	mov r2, #0x68
	add r0, r10, #0x388
	add r1, r10, #0x48
	smulbb r2, r3, r2
	add r0, r0, #0x400
	add r1, r1, #0x400
	bl MI_CpuCopy8
_0211AACC:
	mov r0, r10
	bl FUN_ov41_0211f810
	mov r0, r10
	bl FUN_ov41_0211f8b4
	mov r0, r10
	bl FUN_ov41_0211ebac
	mov r0, r10
	bl FUN_ov41_0211f0c4
	mov r4, #1
	mov r0, r10
	mov r1, r4
	bl FUN_ov41_0211ce68
	mov r0, r10
	bl FUN_ov41_02120f6c
	mov r0, r10
	bl FUN_ov41_021210d4
	ldr r0, _0211AB2C ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB1C:
	ldr r0, _0211AB2C ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB2C: .word gL5Sound
	arm_func_end FUN_ov41_0211aa00

	arm_func_start FUN_ov41_0211ab30
FUN_ov41_0211ab30: ; 0x0211AB30
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r2, [r4, #0x81]
	add r1, r2, #0xff
	and r1, r1, #0xff
	cmp r1, #1
	bhi _0211AB90
	add r1, r4, #0x1000
	ldr r3, [r1, #0x7c]
	mov r2, #0
	eor r3, r3, #1
	str r3, [r1, #0x7c]
	str r2, [sp]
	mov r2, #7
	str r2, [sp, #4]
	ldr r2, [r1, #0x7c]
	mov r1, #0x78
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov41_0211fab0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211AB90:
	cmp r2, #5
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211ABDC ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r4, #0xe0c]
	bl FUN_ov16_02110b04
	cmp r0, #2
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0xe0c]
	mov r1, #1
	mov r2, #0
	bl FUN_ov16_02110a04
	ldr r0, [r4, #0xe0c]
	bl FUN_ov16_02110b0c
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211ABDC: .word gL5Sound
	arm_func_end FUN_ov41_0211ab30

	arm_func_start FUN_ov41_0211abe0
FUN_ov41_0211abe0: ; 0x0211ABE0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r2, [r4, #0x81]
	add r1, r2, #0xff
	and r1, r1, #0xff
	cmp r1, #1
	bhi _0211AC40
	add r1, r4, #0x1000
	ldr r3, [r1, #0x7c]
	mov r2, #0
	eor r3, r3, #1
	str r3, [r1, #0x7c]
	str r2, [sp]
	mov r2, #7
	str r2, [sp, #4]
	ldr r2, [r1, #0x7c]
	mov r1, #0x78
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov41_0211fab0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211AC40:
	cmp r2, #5
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211AC8C ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r4, #0xe0c]
	bl FUN_ov16_02110b04
	cmp r0, #1
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0xe0c]
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	ldr r0, [r4, #0xe0c]
	bl FUN_ov16_02110b0c
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211AC8C: .word gL5Sound
	arm_func_end FUN_ov41_0211abe0

	arm_func_start FUN_ov41_0211ac90
FUN_ov41_0211ac90: ; 0x0211AC90
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r1, [r0, #0x81]
	cmp r1, #1
	cmpne r1, #2
	addne sp, sp, #8
	ldmnefd sp!, {r3, pc}
	mvn r1, #0
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r1, r0, #0x1000
	ldr r2, [r1, #0x7c]
	mov r1, #0x78
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov41_0211fab0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov41_0211ac90

	arm_func_start FUN_ov41_0211ace0
FUN_ov41_0211ace0: ; 0x0211ACE0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r1, [r0, #0x81]
	cmp r1, #1
	cmpne r1, #2
	addne sp, sp, #8
	ldmnefd sp!, {r3, pc}
	mov r1, #1
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r1, r0, #0x1000
	ldr r2, [r1, #0x7c]
	mov r1, #0x78
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov41_0211fab0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov41_0211ace0

	arm_func_start FUN_ov41_0211ad30
FUN_ov41_0211ad30: ; 0x0211AD30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211AE50 ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r11, #2
	mov r9, r1
	mov r5, #1
	mov r8, r2
	mov r1, r11
	mov r2, r5
	mov r7, r3
	mov r6, #0
	bl FUN_ov16_02112724
	add r2, r10, r9, lsl #2
	add r1, r10, r8, lsl #2
	str r0, [r2, #0xe9c]
	ldr r1, [r1, #0xe38]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r3, r7
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, r5
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02113ec0
	ldr r2, [sp, #0x38]
	str r5, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	ldr r0, _0211AE54 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r8
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	cmp r0, #0
	strneb r6, [r0, #0x10]
	strneb r6, [r0, #0xf]
	strneh r6, [r0, #0xc]
	strneb r6, [r0, #0x11]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE50: .word unk_02099F38
_0211AE54: .word unk_02099EB4
	arm_func_end FUN_ov41_0211ad30

	arm_func_start FUN_ov41_0211ae58
FUN_ov41_0211ae58: ; 0x0211AE58
	ldr r0, _0211AE68 ; =0x02099EB4
	ldr r12, _0211AE6C ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211AE68: .word unk_02099EB4
_0211AE6C: .word FUN_ov16_0210efac
	arm_func_end FUN_ov41_0211ae58

	arm_func_start FUN_ov41_0211ae70
FUN_ov41_0211ae70: ; 0x0211AE70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211AF48 ; =0x02099EB4
	mov r9, r0
	ldr r0, [r5]
	mov r4, r4, lsl #0x10
	mov r8, r1
	mov r1, r4, lsr #0x10
	mov r7, r2
	mov r6, r3
	mov r5, #0
	bl FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211AF4C ; =0x02099F38
	str r5, [sp]
	add r1, r9, r8, lsl #2
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0xe9c]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r1, r5
	mov r2, r8
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	add r0, r4, #0x3a
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r5
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0210e6fc
	mov r2, r6
	add r0, r4, #0x3e
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	mov r2, r8
	add r0, r4, #0x42
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r2, r7
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AF48: .word unk_02099EB4
_0211AF4C: .word unk_02099F38
	arm_func_end FUN_ov41_0211ae70

	arm_func_start FUN_ov41_0211af50
FUN_ov41_0211af50: ; 0x0211AF50
	ldrb r12, [r0, #0xe09]
	mov r3, #0
	cmp r12, #0
	ble _0211AF88
	mov r1, #0x68
_0211AF64:
	mla r2, r3, r1, r0
	add r2, r2, #0x400
	ldrh r2, [r2, #0x5c]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	add r3, r3, #1
	cmp r3, r12
	blt _0211AF64
_0211AF88:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov41_0211af50

	arm_func_start FUN_ov41_0211af90
FUN_ov41_0211af90: ; 0x0211AF90
	ldr r0, _0211AFA8 ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211AFAC ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211AFA8: .word unk_0209F5C0
_0211AFAC: .word FUN_ov16_020f6b3c
	arm_func_end FUN_ov41_0211af90

	arm_func_start FUN_ov41_0211afb0
FUN_ov41_0211afb0: ; 0x0211AFB0
	add r0, r0, #0x1000
	ldr r1, [r0, #0x1a4]
	ldr r0, _0211AFC4 ; =0x0209A070
	ldr r12, _0211AFC8 ; = FUN_ov16_020f6e2c
	bx r12
_0211AFC4: .word unk_0209A070
_0211AFC8: .word FUN_ov16_020f6e2c
	arm_func_end FUN_ov41_0211afb0

	arm_func_start FUN_ov41_0211afcc
FUN_ov41_0211afcc: ; 0x0211AFCC
	stmfd sp!, {r4, lr}
	add r0, r0, #0x1000
	ldr r1, [r0, #0x1a4]
	ldr r0, [r0, #0x1a8]
	cmp r0, r1
	bne _0211AFF0
	ldr r0, _0211B014 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211AFF0:
	ldr r4, _0211B014 ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211B014: .word unk_0209A070
	arm_func_end FUN_ov41_0211afcc

	arm_func_start FUN_ov41_0211b018
FUN_ov41_0211b018: ; 0x0211B018
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x1a4]
	mvn r5, #0
	cmp r0, #3
	beq _0211B040
	cmp r0, #4
	beq _0211B05C
	b _0211B074
_0211B040:
	ldr r0, _0211B0AC ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, #0x10
	strb r0, [r4, #0x82]
	mov r5, #1
	b _0211B074
_0211B05C:
	ldr r0, _0211B0AC ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, #0x11
	strb r0, [r4, #0x82]
	mov r5, #0
_0211B074:
	cmp r5, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	add r0, r4, #0x34
	add r4, r0, #0x1000
	ldrb r1, [r4, r5]
	ldr r0, _0211B0B0 ; =0x0209A070
	mov r2, #1
	bl FUN_ov16_020f6e8c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, r5]
	ldr r0, _0211B0B4 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, pc}
_0211B0AC: .word gL5Sound
_0211B0B0: .word unk_0209A070
_0211B0B4: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211b018

	arm_func_start FUN_ov41_0211b0b8
FUN_ov41_0211b0b8: ; 0x0211B0B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _0211B1B0 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0211B16C
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x19b]
	cmp r1, #0
	bne _0211B130
	mov r1, #1
	strb r1, [r0, #0x19b]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	bl FUN_ov41_0211af90
	add r1, r5, #0x1000
	str r0, [r1, #0x1a4]
	cmp r0, #0
	beq _0211B130
	mov r0, r5
	bl FUN_ov41_0211afb0
_0211B130:
	ldrh r1, [r4]
	add r3, r5, #0x1000
	mov r0, r5
	str r1, [r3, #0x19c]
	ldrh r2, [r4, #2]
	str r2, [r3, #0x1a0]
	bl FUN_ov41_0211af90
	add r1, r5, #0x1000
	ldr r2, [r1, #0x1a4]
	str r0, [r1, #0x1a8]
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov41_0211afcc
	ldmfd sp!, {r3, r4, r5, pc}
_0211B16C:
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x19b]
	cmp r1, #0
	ldrne r1, [r0, #0x1a4]
	cmpne r1, #0
	beq _0211B198
	ldr r0, [r0, #0x1a8]
	cmp r0, r1
	bne _0211B198
	mov r0, r5
	bl FUN_ov41_0211b018
_0211B198:
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x1a8]
	str r1, [r0, #0x1a4]
	strb r1, [r0, #0x19b]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B1B0: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211b0b8

	arm_func_start FUN_ov41_0211b1b4
FUN_ov41_0211b1b4: ; 0x0211B1B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrb r0, [r5, #0x80]
	mov r4, r1
	cmp r0, #0xd
	cmpne r0, #0xe
	cmpne r0, #0xf
	bne _0211B1E4
	mov r0, r5
	mov r1, r4
	bl FUN_ov41_0211b0b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B1E4:
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B2DC ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0x1000
	ldr r1, [r0, #0x40]
	cmp r1, #0
	ldreq r0, [r0, #0x5c]
	cmpeq r0, #0
	ldreq r0, [r5, #0x84]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211B2E0 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B244: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211B25C ; case 1
	b _0211B28C ; case 2
	b _0211B2A4 ; case 3
	b _0211B2C0 ; case 4
	b _0211B274 ; case 5
_0211B25C:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov41_0211b2e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B274:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov41_0211b474
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B28C:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov41_0211b49c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B2A4:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl FUN_ov41_0211b518
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B2C0:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov41_0211b518
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B2DC: .word unk_02099ED4
_0211B2E0: .word unk_02099EB4
	arm_func_end FUN_ov41_0211b1b4

	arm_func_start FUN_ov41_0211b2e4
FUN_ov41_0211b2e4: ; 0x0211B2E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	add r2, r8, #0x1000
	mov r7, r1
	ldr r6, [r2, #0x38]
	cmp r7, #5
	sub r4, r7, #0xd
	sub r5, r7, #0x16
	addls pc, pc, r7, lsl #2
	b _0211B33C
_0211B310: ; jump table
	b _0211B33C ; case 0
	b _0211B330 ; case 1
	b _0211B330 ; case 2
	b _0211B330 ; case 3
	b _0211B330 ; case 4
	b _0211B328 ; case 5
_0211B328:
	bl FUN_ov41_02120380
	b _0211B33C
_0211B330:
	mov r3, #0
	str r3, [r2, #0x88]
	bl FUN_ov41_02120208
_0211B33C:
	cmp r7, #0xd
	blt _0211B39C
	cmp r7, #0x15
	bgt _0211B39C
	cmp r4, r6
	addeq r0, r8, #0x1000
	ldreq r0, [r0, #0x7c]
	cmpeq r0, #0
	bne _0211B370
	mov r0, r8
	bl FUN_ov41_0211a734
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B370:
	mov r4, #0
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov41_0211fc48
	add r1, r8, #0x1000
	mov r0, r8
	str r4, [r1, #0x7c]
	bl FUN_ov41_021215e0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B39C:
	cmp r7, #0x16
	blt _0211B3FC
	cmp r7, #0x1e
	bgt _0211B3FC
	cmp r5, r6
	addeq r0, r8, #0x1000
	ldreq r0, [r0, #0x7c]
	cmpeq r0, #1
	bne _0211B3D0
	mov r0, r8
	bl FUN_ov41_0211a734
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B3D0:
	mov r4, #1
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov41_0211fc48
	add r1, r8, #0x1000
	mov r0, r8
	str r4, [r1, #0x7c]
	bl FUN_ov41_021215e0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B3FC:
	cmp r7, #0xa
	bne _0211B42C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211B470 ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	ldr r1, [r8, #0xed4]
	mov r3, r2
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B42C:
	cmp r7, #0xb
	bne _0211B44C
	ldr r0, [r8, #0xe0c]
	mov r1, #1
	mov r2, #0
	bl FUN_ov16_02110a04
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B44C:
	cmp r7, #0xc
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0xe0c]
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B470: .word unk_02099F38
	arm_func_end FUN_ov41_0211b2e4

	arm_func_start FUN_ov41_0211b474
FUN_ov41_0211b474: ; 0x0211B474
	stmfd sp!, {r3, lr}
	cmp r1, #2
	cmpne r1, #3
	beq _0211B494
	cmp r1, #5
	ldmnefd sp!, {r3, pc}
	bl FUN_ov41_021203b4
	ldmfd sp!, {r3, pc}
_0211B494:
	bl FUN_ov41_0212031c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov41_0211b474

	arm_func_start FUN_ov41_0211b49c
FUN_ov41_0211b49c: ; 0x0211B49C
	stmfd sp!, {r3, lr}
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_0211B4AC: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	ldmfd sp!, {r3, pc} ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	ldmfd sp!, {r3, pc} ; case 4
	ldmfd sp!, {r3, pc} ; case 5
	b _0211B4F8 ; case 6
	b _0211B4E0 ; case 7
	b _0211B4E8 ; case 8
	b _0211B4F0 ; case 9
	b _0211B500 ; case 10
	b _0211B508 ; case 11
	b _0211B510 ; case 12
_0211B4E0:
	bl FUN_ov41_0211a80c
	ldmfd sp!, {r3, pc}
_0211B4E8:
	bl FUN_ov41_0211a734
	ldmfd sp!, {r3, pc}
_0211B4F0:
	bl FUN_ov41_0211aa00
	ldmfd sp!, {r3, pc}
_0211B4F8:
	bl FUN_ov41_0211a964
	ldmfd sp!, {r3, pc}
_0211B500:
	bl FUN_ov41_0211a734
	ldmfd sp!, {r3, pc}
_0211B508:
	bl FUN_ov41_0211a734
	ldmfd sp!, {r3, pc}
_0211B510:
	bl FUN_ov41_0211a734
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov41_0211b49c

	arm_func_start FUN_ov41_0211b518
FUN_ov41_0211b518: ; 0x0211B518
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r4, _0211B5A8 ; =0x02099EB4
	mov r8, r0
	mov r5, #0
	mov r7, r1
	ldr r0, [r4]
	add r1, sp, #4
	str r5, [sp, #8]
	mov r6, r2
	bl FUN_ov16_0210f48c
	str r5, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r4]
	add r3, sp, #8
	bl FUN_ov16_0210ecb8
	cmp r6, #0
	bne _0211B598
	ldrb r0, [r8, #0x81]
	cmp r0, #1
	beq _0211B57C
	cmp r0, #2
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B57C:
	cmp r7, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl FUN_ov41_021203b4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B598:
	add r0, r8, #0x1000
	str r5, [r0, #0x14c]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B5A8: .word unk_02099EB4
	arm_func_end FUN_ov41_0211b518

	arm_func_start FUN_ov41_0211b5ac
FUN_ov41_0211b5ac: ; 0x0211B5AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldrb r0, [r5, #0x82]
	mov r4, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B780 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addeq r0, r5, #0x1000
	ldreq r1, [r0, #0x40]
	cmpeq r1, #0
	ldreq r0, [r0, #0x5c]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211B784 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5, #0x84]
	cmp r0, #0
	ble _0211B61C
	sub r0, r0, #1
	str r0, [r5, #0x84]
	cmp r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B61C:
	ldrb r0, [r5, #0x82]
	cmp r0, #8
	bne _0211B76C
	mov r8, #1
	mov r7, #2
	ldr r6, _0211B788 ; =0x02099F38
	b _0211B650
_0211B638:
	add r1, r5, r8, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0xe9c]
	mov r2, r7
	bl FUN_ov16_02113390
	add r8, r8, #1
_0211B650:
	cmp r8, #0xe
	ble _0211B638
	ldr r6, _0211B788 ; =0x02099F38
	mov r7, #2
	ldr r0, [r6]
	ldr r1, [r5, #0xe10]
	mov r2, r7
	bl FUN_ov16_02113390
	ldr r0, [r6]
	ldr r1, [r5, #0xe14]
	mov r2, r7
	bl FUN_ov16_02113390
	mov r8, #0
	b _0211B6A8
_0211B688:
	add r0, r5, r8, lsl #3
	ldr r1, [r0, #0xf74]
	cmp r1, #0
	beq _0211B6A4
	ldr r0, [r6]
	mov r2, r7
	bl FUN_ov16_02113390
_0211B6A4:
	add r8, r8, #1
_0211B6A8:
	cmp r8, #8
	blt _0211B688
	mov r8, #0
	mov r7, #2
	ldr r6, _0211B788 ; =0x02099F38
	b _0211B6E0
_0211B6C0:
	add r0, r5, r8, lsl #3
	ldr r1, [r0, #0xfb4]
	cmp r1, #0
	beq _0211B6DC
	ldr r0, [r6]
	mov r2, r7
	bl FUN_ov16_02113390
_0211B6DC:
	add r8, r8, #1
_0211B6E0:
	cmp r8, #0x10
	blt _0211B6C0
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x198]
	mov r2, #1
	mov r3, #0
	sub r1, r2, #2
	str r3, [r5, #0x6c]
	str r2, [r5, #0x70]
	str r1, [r5, #0x74]
	str r3, [r5, #0x78]
	strb r3, [r5, #0x7c]
	strb r3, [r5, #0x7d]
	cmp r0, #0
	bne _0211B738
	mov r2, r1
	mov r0, #8
	bl FUN_ov1_020db97c
	cmp r0, #0
	bne _0211B738
	ldr r1, _0211B78C ; =0x02121F80
	b _0211B73C
_0211B738:
	ldr r1, _0211B790 ; =0x02121FC4
_0211B73C:
	mov r0, r5
	bl FUN_ov41_02119f4c
	ldr r6, _0211B784 ; =0x0209F5C0
	mov r1, r4
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_020f5ff4
	mov r0, r5
	bl FUN_ov41_0211dd88
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020f672c
_0211B76C:
	ldrb r1, [r5, #0x82]
	mov r0, r5
	bl FUN_ov41_0211c664
	strb r4, [r5, #0x82]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B780: .word unk_02099ED4
_0211B784: .word unk_0209F5C0
_0211B788: .word unk_02099F38
_0211B78C: .word ov41_02121F80
_0211B790: .word ov41_02121FC4
	arm_func_end FUN_ov41_0211b5ac

	arm_func_start FUN_ov41_0211b794
FUN_ov41_0211b794: ; 0x0211B794
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x199]
	cmp r0, #0
	beq _0211B840
	mov r1, #0
	ldr r0, _0211B8C4 ; =0x0209F5C0
	mov r2, r1
	bl FUN_ov16_020f5ff4
	ldr r0, _0211B8C8 ; =0x0209A070
	bl FUN_ov16_020f6c4c
	ldr r0, _0211B8CC ; =0x020A0640
	mov r2, #1
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _0211B7E0
	ldr r1, _0211B8D0 ; =0x02121FE0
	b _0211B7E4
_0211B7E0:
	ldr r1, _0211B8D4 ; =0x02122048
_0211B7E4:
	mov r0, r4
	bl FUN_ov41_0211e174
	mov r0, r4
	mov r1, #0xb
	mov r2, #0xf
	mov r3, #1
	bl FUN_ov41_0211e3f0
	mov r0, r4
	mov r1, #3
	mov r2, #0xa
	bl FUN_ov41_0211e79c
	ldr r0, _0211B8CC ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _0211B828
	ldr r1, _0211B8D8 ; =0x021220B8
	b _0211B82C
_0211B828:
	ldr r1, _0211B8DC ; =0x021220F8
_0211B82C:
	mov r0, r4
	bl FUN_ov41_02119f4c
	add r0, r4, #0x1000
	mov r1, #0
	strb r1, [r0, #0x199]
_0211B840:
	ldrb r0, [r4, #0x88]
	add r2, r4, #0x1000
	cmp r0, #0
	bne _0211B86C
	ldr r0, [r2, #0x154]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	str r0, [r2, #0x154]
	b _0211B8A8
_0211B86C:
	ldrb r0, [r2, #0x158]
	cmp r0, #0
	beq _0211B8A8
	ldr r0, [r2, #0x154]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r3, r1, r0, ror #27
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #30
	str r3, [r2, #0x154]
	adds r0, r1, r0, ror #30
	bne _0211B8A8
	mov r0, r4
	bl FUN_ov41_0211e0bc
_0211B8A8:
	ldr r4, _0211B8C4 ; =0x0209F5C0
	mov r0, r4
	bl FUN_ov16_020f6274
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_0211B8C4: .word unk_0209F5C0
_0211B8C8: .word unk_0209A070
_0211B8CC: .word unk_020A0640
_0211B8D0: .word ov41_02121FE0
_0211B8D4: .word ov41_02122048
_0211B8D8: .word ov41_021220B8
_0211B8DC: .word ov41_021220F8
	arm_func_end FUN_ov41_0211b794

	arm_func_start FUN_ov41_0211b8e0
FUN_ov41_0211b8e0: ; 0x0211B8E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov41_0211b5ac
	ldrb r0, [r4, #0x80]
	cmp r0, #7
	cmpne r0, #8
	cmpne r0, #9
	cmpne r0, #0xd
	beq _0211B90C
	cmp r0, #0xe
	bne _0211B948
_0211B90C:
	ldr r0, _0211BAC8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211B948
	ldr r5, _0211BACC ; =0x0209AEC0
	mov r0, r5
	bl FUN_020467c0
	cmp r0, #0
	ldrneb r0, [r5, #0x64]
	cmpne r0, #0
	beq _0211B948
	mov r0, r5
	bl FUN_020467ac
	mov r0, r5
	bl FUN_02046e28
_0211B948:
	ldrb r0, [r4, #0x80]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _0211B9E4
_0211B958: ; jump table
	b _0211B9E4 ; case 0
	b _0211B988 ; case 1
	b _0211B994 ; case 2
	b _0211B9A0 ; case 3
	b _0211B9AC ; case 4
	b _0211B9B8 ; case 5
	b _0211B9C4 ; case 6
	b _0211B9E4 ; case 7
	b _0211B9E4 ; case 8
	b _0211B9E4 ; case 9
	b _0211B9D0 ; case 10
	b _0211B9DC ; case 11
_0211B988:
	mov r0, r4
	bl FUN_ov41_0211d34c
	b _0211B9E4
_0211B994:
	mov r0, r4
	bl FUN_ov41_0211d4f4
	b _0211B9E4
_0211B9A0:
	mov r0, r4
	bl FUN_ov41_0211d6f4
	b _0211B9E4
_0211B9AC:
	mov r0, r4
	bl FUN_ov41_0211dabc
	b _0211B9E4
_0211B9B8:
	mov r0, r4
	bl FUN_ov41_0211db7c
	b _0211B9E4
_0211B9C4:
	mov r0, r4
	bl FUN_ov41_0211e818
	b _0211B9E4
_0211B9D0:
	mov r0, r4
	bl FUN_ov41_0211eb44
	b _0211B9E4
_0211B9DC:
	mov r0, r4
	bl FUN_ov41_0211eb7c
_0211B9E4:
	mov r0, r4
	bl FUN_ov41_0211c2fc
	ldr r0, _0211BAD0 ; =0x02099ED4
	ldr r5, _0211BAD4 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211BA24
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211BA30
_0211BA24:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211BA30:
	bl _ffix
	ldr r2, _0211BAD8 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldrb r0, [r4, #0x80]
	cmp r0, #7
	bne _0211BA5C
	ldr r0, _0211BADC ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_0205722c
_0211BA5C:
	mov r0, r4
	bl FUN_ov41_0211b794
	add r0, r4, #0x1000
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _0211BA7C
	mov r0, r4
	bl FUN_ov41_0211fd54
_0211BA7C:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _0211BA94
	mov r0, r4
	bl FUN_ov41_0211fdf4
_0211BA94:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _0211BAAC
	mov r0, r4
	bl FUN_ov41_02120fd4
_0211BAAC:
	add r0, r4, #0x1000
	ldr r0, [r0, #0xac]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov41_02121100
	ldmfd sp!, {r3, r4, r5, pc}
_0211BAC8: .word unk_020A0640
_0211BACC: .word unk_0209AEC0
_0211BAD0: .word unk_02099ED4
_0211BAD4: .word unk_0209A110
_0211BAD8: .word unk_02099F58
_0211BADC: .word unk_02099EC0
	arm_func_end FUN_ov41_0211b8e0

	arm_func_start FUN_ov41_0211bae0
FUN_ov41_0211bae0: ; 0x0211BAE0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x60
	ldr r6, _0211BCE8 ; =0x02121A7C
	add r4, sp, #0x38
	mov r5, r0
	ldmia r6!, {r0, r1, r2, r3}
	mov r7, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia r4, {r0, r1}
	ldr r6, _0211BCEC ; =0x02121AA4
	add r4, sp, #8
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	bl G2_GetBG1CharPtr
	mov r4, #0x20
	mov r8, #0
	mov r1, r0
	mov r0, r8
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #4]
	ldrb r0, [r5, #0x88]
	add r6, sp, #4
	mov r4, #1
	cmp r0, #0
	bne _0211BBA4
	str r6, [sp]
	ldr r0, [r5, #0xee4]
	mov r1, r8
	mov r2, r4
	mov r3, r4
	bl FUN_ov1_020dc020
	str r6, [sp]
	mov r1, r0
	ldr r0, [r5, #0xef0]
	mov r3, r4
	mov r2, #2
	bl FUN_ov1_020dc020
	b _0211BBD8
_0211BBA4:
	mov r9, #0xc
	mvn r10, #0
_0211BBAC:
	str r6, [sp]
	ldmia r7, {r1, r2}
	mla r0, r1, r9, r5
	ldr r0, [r0, #0xed8]
	mov r1, r8
	mov r3, r4
	bl FUN_ov1_020dc020
	ldr r1, [r7, #8]!
	mov r8, r0
	cmp r1, r10
	bne _0211BBAC
_0211BBD8:
	mov r6, #0x20
	mov r4, #0
	str r6, [sp, #4]
	bl G2_GetBG3CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r6
	bl DC_FlushRange
	ldrb r0, [r5, #0x88]
	cmp r0, #0
	beq _0211BC50
	add r8, sp, #8
	add r7, sp, #4
	mov r6, #3
	mov r9, #0xc
	mvn r10, #0
_0211BC24:
	str r7, [sp]
	ldmia r8, {r1, r2}
	mla r0, r1, r9, r5
	ldr r0, [r0, #0xed8]
	mov r1, r4
	mov r3, r6
	bl FUN_ov1_020dc020
	ldr r1, [r8, #8]!
	mov r4, r0
	cmp r1, r10
	bne _0211BC24
_0211BC50:
	add r0, r5, #0x15c
	mov r6, #0
	add r8, r0, #0x1000
	ldr r0, [sp, #4]
	mov r5, r6
	mov r9, r6
	mov r7, #1
_0211BC6C:
	ldr r1, [r8]
	cmp r1, #0
	ldrne r1, [r8, #4]
	cmpne r1, #0
	movne r1, r7
	moveq r1, r6
	cmp r1, #0
	beq _0211BCCC
	str r0, [r8, #8]
	ldrh r2, [r8, #0xc]
	ldrh r1, [r8, #0xe]
	ldr r0, [r8]
	mov r3, r5
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r4, #1
	bl FUN_ov16_020f1868
	ldrh r2, [r8, #0xc]
	ldrh r1, [r8, #0xe]
	ldr r3, [sp, #4]
	mov r4, r0
	mul r0, r2, r1
	add r0, r3, r0, lsl #5
	str r0, [sp, #4]
_0211BCCC:
	add r9, r9, #1
	cmp r9, #3
	add r8, r8, #0x14
	blt _0211BC6C
	bl FUN_ov16_020f10ac
	add sp, sp, #0x60
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BCE8: .word ov41_02121A7C
_0211BCEC: .word ov41_02121AA4
	arm_func_end FUN_ov41_0211bae0

	arm_func_start FUN_ov41_0211bcf0
FUN_ov41_0211bcf0: ; 0x0211BCF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldrb r1, [r9, #0x80]
	cmp r1, #0x10
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BD08: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 6
	b _0211BD60 ; case 7
	b _0211BD60 ; case 8
	b _0211BD60 ; case 9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 11
	b _0211BD4C ; case 12
	b _0211BD60 ; case 13
	b _0211BD60 ; case 14
	b _0211BD60 ; case 15
	b _0211BD60 ; case 16
_0211BD4C:
	bl FUN_ov41_0211bae0
	mov r0, r9
	mov r1, #5
	bl FUN_ov41_0211c664
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BD60:
	mov r8, #0
	add r0, r9, #0x15c
	add r7, r0, #0x1000
	mov r5, r8
	mov r6, #1
	mov r4, r8
_0211BD78:
	ldr r0, [r7]
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, r6
	moveq r0, r5
	cmp r0, #0
	ldrneb r0, [r7, #0x10]
	cmpne r0, #0
	beq _0211BDBC
	strb r4, [r7, #0x10]
	ldrh r3, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldmib r7, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GX_LoadBG3Char
_0211BDBC:
	add r8, r8, #1
	cmp r8, #3
	add r7, r7, #0x14
	blt _0211BD78
	ldr r0, _0211BDE4 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	mov r0, r9
	bl FUN_ov41_0211df34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BDE4: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211bcf0

	arm_func_start FUN_ov41_0211bde8
FUN_ov41_0211bde8: ; 0x0211BDE8
	ldr r2, _0211BE0C ; =0x0209A4E0
	mov r1, #0x76
	strb r1, [r2, #2]
	mov r3, #0
	ldr r0, _0211BE10 ; =0x0209AEC0
	ldr r12, _0211BE14 ; =FUN_02046cb4
	mov r1, #6
	strb r3, [r2, #3]
	bx r12
_0211BE0C: .word unk_0209A4E0
_0211BE10: .word unk_0209AEC0
_0211BE14: .word FUN_02046cb4
	arm_func_end FUN_ov41_0211bde8

	arm_func_start FUN_ov41_0211be18
FUN_ov41_0211be18: ; 0x0211BE18
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x88]
	ldr r1, _0211BE68 ; =0x02121990
	cmp r0, #0
	ldrne r1, _0211BE6C ; =0x02121988
	add r0, r4, #0x8c
	bl FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r4, #0x88]
	cmp r0, #0
	mov r0, r4
	bne _0211BE5C
	mov r1, #0x11
	bl FUN_ov41_0211c664
	ldmfd sp!, {r4, pc}
_0211BE5C:
	mov r1, #0xf
	bl FUN_ov41_0211c664
	ldmfd sp!, {r4, pc}
_0211BE68: .word ov41_02121990
_0211BE6C: .word ov41_02121988
	arm_func_end FUN_ov41_0211be18

	arm_func_start FUN_ov41_0211be70
FUN_ov41_0211be70: ; 0x0211BE70
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r0, [r6, #0x80]
	cmp r0, #0xd
	cmpne r0, #0xe
	beq _0211BF00
	ldr r7, _0211BF54 ; =0x0209A4E0
	ldr r0, _0211BF58 ; =0x0209AEC0
	add r4, r7, #4
	bl FUN_02046730
	mov r5, #0
	mov r0, r5
	mov r1, r7
	mov r2, #0xf0
	bl MIi_CpuClearFast
	mov r0, #0x76
	strb r0, [r7, #2]
	ldrb r1, [r6, #0x80]
	add r0, r6, #0x1000
	strb r1, [r7, #3]
	ldrh r0, [r0, #0xc8]
	cmp r1, #8
	strb r0, [r4, #0x20]
	bne _0211BF4C
	mov r0, #0x68
	b _0211BEF0
_0211BED8:
	mla r1, r5, r0, r6
	add r1, r1, #0x400
	ldrh r2, [r1, #0x5c]
	mov r1, r5, lsl #1
	add r5, r5, #1
	strh r2, [r4, r1]
_0211BEF0:
	ldrb r1, [r6, #0xe09]
	cmp r5, r1
	blt _0211BED8
	b _0211BF4C
_0211BF00:
	ldrb r0, [r6, #0x80]
	cmp r0, #0xe
	bne _0211BF18
	add r0, r6, #0x8c
	mov r1, #6
	bl FUN_ov1_020e6eac
_0211BF18:
	ldrb r0, [r6, #0x88]
	ldrb r1, [r6, #0x80]
	cmp r0, #0
	beq _0211BF44
	ldr r0, _0211BF5C ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	bne _0211BF44
	cmp r1, #0xd
	moveq r1, #4
	movne r1, #5
_0211BF44:
	add r0, r6, #0x8c
	bl FUN_ov1_020e5328
_0211BF4C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BF54: .word unk_0209A4E0
_0211BF58: .word unk_0209AEC0
_0211BF5C: .word unk_020A0640
	arm_func_end FUN_ov41_0211be70

	arm_func_start FUN_ov41_0211bf60
FUN_ov41_0211bf60: ; 0x0211BF60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, _0211C28C ; =0x0209AEC0
	mov r4, r0
	mov r0, r5
	bl FUN_02046730
	str r0, [sp]
	mov r0, r5
	bl FUN_02046744
	mov r8, r0
	bl FUN_ov16_020f081c
	ldrb r0, [r4, #0x80]
	ldrb r9, [r5, #0x64]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _0211C284
_0211BF9C: ; jump table
	b _0211C284 ; case 0
	b _0211C284 ; case 1
	b _0211C284 ; case 2
	b _0211C284 ; case 3
	b _0211C284 ; case 4
	b _0211C284 ; case 5
	b _0211C284 ; case 6
	b _0211BFD8 ; case 7
	b _0211BFD8 ; case 8
	b _0211C10C ; case 9
	b _0211C284 ; case 10
	b _0211C284 ; case 11
	b _0211C284 ; case 12
	b _0211C168 ; case 13
	b _0211C1D8 ; case 14
_0211BFD8:
	add r0, r4, #0xca
	add r1, r4, #0xc8
	mov r10, #0
	add r11, r0, #0x1000
	add r5, r1, #0x1000
	mov r7, #1
	b _0211C070
_0211BFF4:
	ldr r0, [sp]
	cmp r0, r10
	beq _0211C06C
	tst r8, r7, lsl r10
	beq _0211C06C
	mov r0, r10
	mov r1, #0
	bl FUN_ov16_020f0634
	mov r6, r0
	ldrb r0, [r6, #2]
	cmp r0, #0x76
	ldreqb r0, [r6, #3]
	cmpeq r0, #8
	bne _0211C06C
	mov r2, #0x20
	add r0, r6, #4
	add r1, r11, r10, lsl #5
	bl MI_CpuCopy8
	cmp r9, #0
	beq _0211C058
	ldrb r0, [r6, #0x24]
	and r0, r0, r8
	cmp r8, r0
	bne _0211C06C
	b _0211C058
_0211C058:
	mov r0, r7, lsl r10
	ldrh r1, [r5]
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r5]
_0211C06C:
	add r10, r10, #1
_0211C070:
	cmp r10, #4
	blt _0211BFF4
	ldrb r0, [r4, #0x80]
	mov r5, #0
	cmp r0, #8
	bne _0211C284
	cmp r9, #0
	bne _0211C0B8
	mov r0, r5
	mov r1, r0
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #9
	bne _0211C284
_0211C0A8:
	mov r0, r4
	mov r1, #0xd
_0211C0B0:
	bl FUN_ov41_0211c664
	b _0211C284
_0211C0B8:
	add r0, r4, #0x1000
	ldrh r0, [r0, #0xc8]
	and r0, r0, r8
	cmp r8, r0
	bne _0211C0E4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211C0EC
_0211C0E4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C0EC:
	mov r0, r4
	mov r1, #9
	bl FUN_ov41_0211c664
	ldrb r0, [r4, #0x88]
	cmp r0, #0
	ldrne r0, _0211C290 ; =0x020E9482
	strneb r5, [r0]
	b _0211C284
_0211C10C:
	ldrb r0, [r4, #0x88]
	cmp r0, #0
	beq _0211C144
	ldr r0, _0211C294 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _0211C148
	mov r0, #0xd
	sub r1, r0, #0xe
	mov r2, r1
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211C148
_0211C144:
	b _0211C0A8
_0211C148:
	mov r1, #0xb
	sub r2, r1, #0xc
	mov r0, #0xa
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211C284
	b _0211C0A8
_0211C168:
	ldrb r0, [r4, #0x88]
	cmp r0, #0
	beq _0211C184
	ldr r0, _0211C294 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _0211C1B0
_0211C184:
	mov r5, #0xe
	mov r1, r5
	sub r2, r5, #0xf
	mov r0, #0xd
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211C284
	mov r0, r4
	mov r1, r5
	b _0211C0B0
_0211C1B0:
	mov r1, #5
	sub r2, r1, #6
	mov r0, #4
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211C284
	mov r0, r4
	mov r1, #0xe
	b _0211C0B0
_0211C1D8:
	ldrb r0, [r4, #0x88]
	cmp r0, #0
	beq _0211C1F4
	ldr r0, _0211C294 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _0211C260
_0211C1F4:
	cmp r9, #0
	bne _0211C240
	mov r0, #0
	mov r1, r0
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #0x11
	beq _0211C234
	mov r0, #0
	mov r1, r0
	bl FUN_ov16_020f0634
	ldr r1, _0211C298 ; =0x0209A4E0
	ldrb r0, [r0, #2]
	ldrb r1, [r1, #2]
	cmp r1, r0
	beq _0211C240
_0211C234:
	mov r0, r4
	mov r1, #0x11
	b _0211C0B0
_0211C240:
	mov r0, #0xe
	sub r1, r0, #0xf
	mov r2, r1
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211C284
	b _0211C27C
_0211C260:
	mov r0, #5
	sub r1, r0, #6
	mov r2, r1
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211C284
_0211C27C:
	mov r0, r4
	bl FUN_ov41_0211be18
_0211C284:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C28C: .word unk_0209AEC0
_0211C290: .word ov1_020E9482
_0211C294: .word unk_020A0640
_0211C298: .word unk_0209A4E0
	arm_func_end FUN_ov41_0211bf60

	arm_func_start FUN_ov41_0211c29c
FUN_ov41_0211c29c: ; 0x0211C29C
	ldrb r0, [r0, #0x80]
	cmp r0, #7
	cmpne r0, #0xa
	cmpne r0, #0xb
	cmpne r0, #8
	cmpne r0, #9
	cmpne r0, #0xd
	cmpne r0, #0xe
	cmpne r0, #0x10
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov41_0211c29c

	arm_func_start FUN_ov41_0211c2cc
FUN_ov41_0211c2cc: ; 0x0211C2CC
	ldrb r0, [r0, #0x80]
	cmp r0, #7
	cmpne r0, #0xa
	cmpne r0, #0xb
	cmpne r0, #8
	cmpne r0, #9
	cmpne r0, #0xd
	cmpne r0, #0xe
	cmpne r0, #0x10
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov41_0211c2cc

	arm_func_start FUN_ov41_0211c2fc
FUN_ov41_0211c2fc: ; 0x0211C2FC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0211C3AC ; =0x021219C0
	mov r4, r0
	ldr r3, [r1]
	ldrb r2, [r4, #0x80]
	ldr r1, [r1, #4]
	str r3, [sp]
	str r1, [sp, #4]
	cmp r2, #8
	add r3, sp, #0
	beq _0211C33C
	add r1, r2, #0xf3
	and r1, r1, #0xff
	cmp r1, #4
	bhi _0211C358
_0211C33C:
	ldr r0, [r4, #4]
	add r1, r4, #0x6c
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211C358:
	cmp r2, #7
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x68]
	ldr r1, [r3, r1, lsl #2]
	str r1, [r4, #8]
	bl FUN_ov41_0211febc
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #1
	moveq r1, #0
	streqb r0, [r4, #0x15]
	streq r1, [r4, #8]
	ldr r0, [r4, #4]
	add r1, r4, #8
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211C3AC: .word ov41_021219C0
	arm_func_end FUN_ov41_0211c2fc

	arm_func_start FUN_ov41_0211c3b0
FUN_ov41_0211c3b0: ; 0x0211C3B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	ldr r5, _0211C470 ; =0x0209AEC0
	mov r6, r0
	mov r0, r5
	bl FUN_02046744
	mov r4, r0
	mov r0, r5
	bl FUN_02046730
	add r0, sp, #0
	mov r5, #0
	str r5, [r0]
	str r5, [r0, #4]
	b _0211C460
_0211C3E8:
	mov r0, #1
	tst r4, r0, lsl r5
	beq _0211C45C
	mov r0, r5
	bl FUN_ov16_020f085c
	ldr r2, _0211C474 ; =0x020A0676
	mov r8, #0
	add r3, r2, r0, lsl #5
	add r7, r6, r5, lsl #5
	sub r1, r5, #1
	mov r2, #0x1000
	add r12, sp, #0
	b _0211C454
_0211C41C:
	add r9, r7, r8, lsl #1
	add lr, r9, #0x1000
	ldrh lr, [lr, #0xca]
	cmp lr, #0
	beq _0211C45C
	ldr r9, [r12, r0, lsl #2]
	cmp r5, #0
	orrne lr, lr, r2, lsl r1
	mov r9, r9, lsl #1
	strh lr, [r9, r3]
	ldr lr, [r12, r0, lsl #2]
	add r8, r8, #1
	add lr, lr, #1
	str lr, [r12, r0, lsl #2]
_0211C454:
	cmp r8, #0x10
	blt _0211C41C
_0211C45C:
	add r5, r5, #1
_0211C460:
	cmp r5, #4
	blt _0211C3E8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C470: .word unk_0209AEC0
_0211C474: .word unk_020A0676
	arm_func_end FUN_ov41_0211c3b0

	arm_func_start FUN_ov41_0211c478
FUN_ov41_0211c478: ; 0x0211C478
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov41_021216b0
	mov r0, r4
	bl FUN_ov41_021217d4
	bl FUN_ov16_020f081c
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov41_02121938
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov41_0211c478

	arm_func_start FUN_ov41_0211c4a4
FUN_ov41_0211c4a4: ; 0x0211C4A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x800
	ldr r5, _0211C534 ; =0x0209BA20
	mov r0, r5
	bl FUN_0207249c
	add r4, sp, #0
	mov r6, r0
	mov r0, r5
	mov r2, r4
	mov r1, #0x15
	mov r3, #0x400
	bl FUN_ov16_020ee0f8
	mov r8, r0
	cmp r8, #0
	mov r7, #0
	ble _0211C520
_0211C4E4:
	mov r0, r7, lsl #1
	ldrh r1, [r4, r0]
	mov r0, r5
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0211C514
	ldrh r1, [r0, #0x26]
	ldrh r0, [r6, #0x40]
	cmp r1, r0
	addeq sp, sp, #0x800
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C514:
	add r7, r7, #1
	cmp r7, r8
	blt _0211C4E4
_0211C520:
	mov r0, #1
	strh r0, [r6, #0x40]
	mov r0, #0
	add sp, sp, #0x800
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C534: .word unk_0209BA20
	arm_func_end FUN_ov41_0211c4a4

	arm_func_start FUN_ov41_0211c538
FUN_ov41_0211c538: ; 0x0211C538
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	mov r4, #0
	mov r1, r4
	mov r6, r0
	bl FUN_ov41_0211c4a4
	ldr r5, _0211C65C ; =0x0209BA20
	mov r1, r4
	mov r0, r5
	bl FUN_0207249c
	mov r4, r0
	mov r0, r5
	mov r1, #1
	bl FUN_0207249c
	mov r5, r0
	ldr r0, _0211C660 ; =0x0209AEC0
	bl FUN_02046730
	cmp r0, #0
	beq _0211C5A0
	sub r0, r0, #1
	mov r1, #0x1000
	mov r0, r1, lsl r0
	ldrh r1, [r4, #0x2e]
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r4, #0x2e]
_0211C5A0:
	mov r7, #0
	mov r0, r7
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211C5C4
	mov r0, #1
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _0211C5D8
_0211C5C4:
	mov r0, r4
	mov r1, r5
	mov r2, #0x4c
	bl MI_CpuCopy8
	b _0211C5E0
_0211C5D8:
	strh r7, [r4, #0x2a]
	strh r7, [r4, #0x20]
_0211C5E0:
	bl FUN_ov16_020f081c
	cmp r0, #1
	bne _0211C640
	add r9, sp, #0
	mov r8, #0x11
	mov r0, r4
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	add r7, sp, #0x11
	mov r0, r5
	mov r1, r7
	mov r2, r8
	bl MI_CpuCopy8
	ldr r0, _0211C65C ; =0x0209BA20
	bl FUN_0204b7b0
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl MI_CpuCopy8
_0211C640:
	ldr r0, _0211C660 ; =0x0209AEC0
	bl FUN_02046730
	mov r1, r0
	mov r0, r6
	bl FUN_ov41_021218e4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C65C: .word unk_0209BA20
_0211C660: .word unk_0209AEC0
	arm_func_end FUN_ov41_0211c538

	arm_func_start FUN_ov41_0211c664
FUN_ov41_0211c664: ; 0x0211C664
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	mov r4, r0
	ldrb r2, [r4, #0x80]
	ldr r6, _0211CE18 ; =0x0209AEC0
	mvn r5, #0
	cmp r2, r1
	mov r11, #0
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	and r2, r1, #0xff
	sub r2, r2, #0xd
	strb r1, [r4, #0x80]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _0211CE10
_0211C6A4: ; jump table
	b _0211C6B8 ; case 0
	b _0211C904 ; case 1
	b _0211C914 ; case 2
	b _0211C950 ; case 3
	b _0211C968 ; case 4
_0211C6B8:
	bl FUN_ov41_0211c3b0
	ldrb r0, [r4, #0x88]
	cmp r0, #0
	bne _0211C784
	mov r0, r4
	bl FUN_ov41_0211c478
	mov r0, r4
	bl FUN_ov41_0211c538
	mov r7, r11
	mov r1, #0x76
	mov r0, #0xe
	str r1, [r4, #0x8c]
	str r7, [r4, #0x90]
	str r7, [r4, #0x94]
	str r7, [r4, #0x98]
	str r7, [r4, #0x9c]
	str r0, [r4, #0xa0]
	b _0211C71C
_0211C700:
	mov r0, r6
	bl FUN_02046730
	cmp r7, r0
	add r0, r4, r7, lsl #2
	streq r11, [r0, #0xa4]
	strne r5, [r0, #0xa4]
	add r7, r7, #1
_0211C71C:
	cmp r7, #4
	blt _0211C700
	mov r7, #0
	b _0211C748
_0211C72C:
	mov r0, r6
	bl FUN_02046730
	cmp r7, r0
	add r0, r4, r7, lsl #2
	streq r11, [r0, #0xb4]
	strne r5, [r0, #0xb4]
	add r7, r7, #1
_0211C748:
	cmp r7, #4
	blt _0211C72C
	mov r1, #0
	b _0211C764
_0211C758:
	add r0, r4, r1, lsl #2
	str r11, [r0, #0xc4]
	add r1, r1, #1
_0211C764:
	cmp r1, #4
	blt _0211C758
_0211C76C:
	mov r1, r11
	add r0, r4, #0xd8
	mov r2, #0x60
	bl MI_CpuFill8
	strb r11, [r4, #0x438]
	b _0211C8D8
_0211C784:
	ldr r0, _0211CE1C ; =0x020A0640
	mov r7, r11
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	mov r0, #0xe
	beq _0211C82C
	mov r1, #0x76
	str r1, [r4, #0x8c]
	str r7, [r4, #0x90]
	str r7, [r4, #0x94]
	str r7, [r4, #0x98]
	str r7, [r4, #0x9c]
	str r0, [r4, #0xa0]
	b _0211C7D8
_0211C7BC:
	mov r0, r6
	bl FUN_02046730
	cmp r7, r0
	add r0, r4, r7, lsl #2
	streq r11, [r0, #0xa4]
	strne r5, [r0, #0xa4]
	add r7, r7, #1
_0211C7D8:
	cmp r7, #4
	blt _0211C7BC
	mov r7, #0
	b _0211C804
_0211C7E8:
	mov r0, r6
	bl FUN_02046730
	cmp r7, r0
	add r0, r4, r7, lsl #2
	streq r11, [r0, #0xb4]
	strne r5, [r0, #0xb4]
	add r7, r7, #1
_0211C804:
	cmp r7, #4
	blt _0211C7E8
	mov r1, #0
	b _0211C820
_0211C814:
	add r0, r4, r1, lsl #2
	str r11, [r0, #0xc4]
	add r1, r1, #1
_0211C820:
	cmp r1, #4
	blt _0211C814
	b _0211C76C
_0211C82C:
	mov r1, #0x49
	str r1, [r4, #0x8c]
	str r7, [r4, #0x90]
	str r7, [r4, #0x94]
	str r7, [r4, #0x98]
	str r7, [r4, #0x9c]
	str r0, [r4, #0xa0]
	b _0211C868
_0211C84C:
	mov r0, r6
	bl FUN_02046730
	cmp r7, r0
	add r0, r4, r7, lsl #2
	streq r11, [r0, #0xa4]
	strne r5, [r0, #0xa4]
	add r7, r7, #1
_0211C868:
	cmp r7, #4
	blt _0211C84C
	mov r7, #0
	b _0211C894
_0211C878:
	mov r0, r6
	bl FUN_02046730
	cmp r7, r0
	add r0, r4, r7, lsl #2
	streq r11, [r0, #0xb4]
	strne r5, [r0, #0xb4]
	add r7, r7, #1
_0211C894:
	cmp r7, #4
	blt _0211C878
	mov r1, #0
	b _0211C8B0
_0211C8A4:
	add r0, r4, r1, lsl #2
	str r11, [r0, #0xc4]
	add r1, r1, #1
_0211C8B0:
	cmp r1, #4
	blt _0211C8A4
	mov r1, r11
	add r0, r4, #0xd8
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _0211CE20 ; =0x0209A4E0
	strb r11, [r4, #0x438]
	mov r1, #0x49
	strb r1, [r0, #2]
_0211C8D8:
	ldrb r0, [r4, #0x88]
	ldr r1, _0211CE24 ; =0x02121990
	cmp r0, #0
	ldrne r1, _0211CE28 ; =0x02121988
	mov r0, #0
	bl FUN_ov1_020e5634
	mov r1, r0
	add r0, r4, #0x8c
	bl FUN_ov1_020e5030
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C904:
	ldr r0, _0211CE2C ; =0x020E9482
	add sp, sp, #0x60
	strb r11, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C914:
	ldr r0, _0211CE18 ; =0x0209AEC0
	add r2, r4, #0x1000
	mov r1, #1
	strb r1, [r2, #0x199]
	strb r11, [r2, #0x158]
	bl FUN_0204665c
	ldr r2, _0211CE1C ; =0x020A0640
	ldr r0, _0211CE30 ; =gL5Sound
	mov r1, #0x13
	strb r11, [r2, #0x1a]
	bl FUN_0202cf6c
	ldr r0, _0211CE34 ; =0x020E9483
	add sp, sp, #0x60
	strb r11, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C950:
	ldr r0, _0211CE18 ; =0x0209AEC0
	bl FUN_02046e28
	add r0, r4, #0x1000
	add sp, sp, #0x60
	strb r11, [r0, #0x158]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C968:
	ldrb r0, [r4, #0x88]
	cmp r0, #0
	beq _0211CA40
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r0, _0211CE38 ; =0x020A9C40
	mov r1, r11
	bl FUN_02045dec
	ldr r0, _0211CE3C ; =0x0209BA20
	mov r1, r11
	mov r2, #2
	bl FUN_0204b9c4
	bl FUN_ov16_020f081c
	cmp r0, #1
	bne _0211C9CC
	ldr r0, _0211CE3C ; =0x0209BA20
	mov r1, r11
	bl FUN_0207249c
	mov r5, r0
	ldr r0, _0211CE3C ; =0x0209BA20
	mov r1, #1
	bl FUN_0207249c
	mov r1, r5
	mov r2, #0x11
	bl MI_CpuCopy8
_0211C9CC:
	ldr r0, _0211CE1C ; =0x020A0640
	mov r1, #0
	strb r1, [r0, #0x96]
	mov r2, #2
	strb r2, [r0, #0x97]
	ldrb r0, [r0, #0x87]
	ldr r5, [r4, #4]
	cmp r0, #0
	beq _0211CA18
	mov r4, #0x4d
	mov r0, r5
	mov r2, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CA18:
	mov r4, #0x50
	mov r0, r5
	mov r2, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CA40:
	mov r7, r11
	b _0211CC34
_0211CA48:
	mov r0, r7
	bl FUN_ov16_020f09c0
	ldr r2, _0211CE40 ; =0x0209BE2C
	str r0, [sp, #0xc]
	add r0, r2, r7, lsl #5
	mov r1, r11
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r0, _0211CE44 ; =0x0209BEEC
	mov r1, r11
	add r0, r0, r7, lsl #4
	mov r2, #0x10
	bl MI_CpuFill8
	ldr r6, _0211CE48 ; =0x021219C8
	add r3, sp, #0x50
	mov r8, #1
	mov r2, #8
_0211CA8C:
	ldrb r0, [r6, #1]
	ldrb r1, [r6], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	mov r5, #0
	bne _0211CA8C
	ldr r10, _0211CE3C ; =0x0209BA20
	mov r9, r5
	add r6, sp, #0x50
	b _0211CB08
_0211CAB8:
	ldrb r0, [r6, r9]
	add r0, r0, r7, lsl #4
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0211CB04
	bl FUN_0206cbf8
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r2, r0
	mov r0, r10
	mov r1, r7
	mov r3, r8
	bl FUN_0204ca5c
	cmp r0, #0
	beq _0211CB04
	add r8, r8, #1
	cmp r8, #4
	bgt _0211CB10
_0211CB04:
	add r9, r9, #1
_0211CB08:
	cmp r9, #0x10
	blt _0211CAB8
_0211CB10:
	ldr r5, _0211CE4C ; =0x02121A18
	add r3, sp, #0x40
	mov r2, #8
_0211CB1C:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211CB1C
	ldr r5, _0211CE50 ; =0x021219D8
	add r3, sp, #0x30
	mov r2, #8
_0211CB40:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211CB40
	ldr r5, _0211CE54 ; =0x021219E8
	add r3, sp, #0x20
	mov r2, #8
_0211CB64:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211CB64
	ldr r5, _0211CE58 ; =0x021219F8
	add r3, sp, #0x10
	mov r2, #8
_0211CB88:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211CB88
	ldr r0, [sp, #0xc]
	add r9, sp, #0x40
	cmp r0, #2
	beq _0211CBC4
	cmp r0, #3
	beq _0211CBCC
	cmp r0, #4
	addeq r9, sp, #0x10
	b _0211CBD0
_0211CBC4:
	add r9, sp, #0x30
	b _0211CBD0
_0211CBCC:
	add r9, sp, #0x20
_0211CBD0:
	mov r8, #1
	mov r10, #0
	b _0211CC28
_0211CBDC:
	ldrb r0, [r9, r10]
	add r0, r0, r7, lsl #4
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0211CC24
	bl FUN_0206cbf8
	mov r5, r0
	mov r0, r6
	bl FUN_0206d8c8
	mov r1, #1
	mov r3, r0
	str r1, [sp]
	ldr r0, _0211CE3C ; =0x0209BA20
	mov r2, r5
	mov r1, r7
	bl FUN_0204c92c
	cmp r0, #0
	addne r8, r8, #1
_0211CC24:
	add r10, r10, #1
_0211CC28:
	cmp r10, #0x10
	blt _0211CBDC
	add r7, r7, #1
_0211CC34:
	cmp r7, #2
	blt _0211CA48
	ldr r0, _0211CE3C ; =0x0209BA20
	mov r1, #0
	bl FUN_0207249c
	ldrh r2, [r0, #0x40]
	ldr r1, _0211CE5C ; =0x0209A454
	strh r2, [r0, #0x28]
	cmp r2, #0
	ldreqh r2, [r0, #0x26]
	ldr r0, _0211CE3C ; =0x0209BA20
	strh r2, [r1, #0x3c]
	mov r1, #1
	bl FUN_0207249c
	ldrh r1, [r0, #0x40]
	strh r1, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r0, #0x26]
	ldr r0, _0211CE5C ; =0x0209A454
	strh r1, [r0, #0x3e]
	bl FUN_ov16_020f081c
	mov r5, r0
	ldr r0, _0211CE18 ; =0x0209AEC0
	bl FUN_02046730
	ldr r1, _0211CE60 ; =0x020A0670
	ldrb r1, [r1, r5]
	mov r5, #1
	cmp r1, r0
	movne r5, #0
	bl FUN_ov16_020f081c
	ldr r1, _0211CE5C ; =0x0209A454
	mov r3, #1
	strb r11, [r1, #0x29]
	strb r11, [r1, #0x2a]
	strb r3, [r1, #0x2e]
	strb r3, [r1, #0x2f]
	strb r11, [r1, #0x30]
	strb r11, [r1, #0x31]
	strb r11, [r1, #0x32]
	strb r11, [r1, #0x33]
	strb r0, [r1, #0x28]
	cmp r5, #0
	ldr r2, _0211CE5C ; =0x0209A454
	movne r3, r11
	mov r1, #0
	strb r3, [r2, #0x29]
	strb r1, [r2, #0x2a]
	strb r1, [r2, #0x2b]
	mov r0, #1
	strb r0, [r2, #0x32]
	strb r0, [r2, #0x33]
	ldr r0, _0211CE3C ; =0x0209BA20
	strb r1, [r2, #0x31]
	bl FUN_0207249c
	ldrh r1, [r0, #0x40]
	cmp r1, #0
	bne _0211CD28
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r0, #0x26]
	strh r1, [r0, #0x40]
_0211CD28:
	ldrh r2, [r0, #0x40]
	mov r1, #1
	strh r2, [r0, #0x28]
	strb r1, [r0, #0x2c]
	ldrh r6, [r0, #0x40]
	ldr r0, _0211CE3C ; =0x0209BA20
	bl FUN_0207249c
	ldrh r1, [r0, #0x40]
	cmp r1, #0
	bne _0211CD60
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r0, #0x26]
	strh r1, [r0, #0x40]
_0211CD60:
	ldrh r1, [r0, #0x40]
	mov r2, #1
	strh r1, [r0, #0x28]
	ldrh r1, [r0, #0x40]
	cmp r6, r1
	moveq r2, #0
	ldr r1, _0211CE1C ; =0x020A0640
	strb r2, [r0, #0x2c]
	ldrb r0, [r1, #0x8b]
	cmp r0, #0
	mov r0, #6
	beq _0211CDA4
	bl FUN_ov16_020f1514
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x77
	b _0211CDE8
_0211CDA4:
	cmp r5, #0
	beq _0211CDD8
	bl FUN_ov16_020f153c
	ldr r5, [r4, #4]
	mov r4, #0x5a
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	b _0211CDE8
_0211CDD8:
	bl FUN_ov16_020f1514
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x5a
_0211CDE8:
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldr r0, _0211CE3C ; =0x0209BA20
	mov r1, #0
	bl FUN_0204da5c
	ldr r0, _0211CE3C ; =0x0209BA20
	mov r1, #1
	bl FUN_0204da5c
	ldr r0, _0211CE64 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_01ffa12c
_0211CE10:
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CE18: .word unk_0209AEC0
_0211CE1C: .word unk_020A0640
_0211CE20: .word unk_0209A4E0
_0211CE24: .word ov41_02121990
_0211CE28: .word ov41_02121988
_0211CE2C: .word ov1_020E9482
_0211CE30: .word gL5Sound
_0211CE34: .word ov1_020E9483
_0211CE38: .word unk_020A9C40
_0211CE3C: .word unk_0209BA20
_0211CE40: .word unk_0209BE2C
_0211CE44: .word unk_0209BEEC
_0211CE48: .word ov41_021219C8
_0211CE4C: .word ov41_02121A18
_0211CE50: .word ov41_021219D8
_0211CE54: .word ov41_021219E8
_0211CE58: .word ov41_021219F8
_0211CE5C: .word unk_0209A454
_0211CE60: .word unk_020A0670
_0211CE64: .word unk_02099EF0
	arm_func_end FUN_ov41_0211c664

	arm_func_start FUN_ov41_0211ce68
FUN_ov41_0211ce68: ; 0x0211CE68
	ldr r12, _0211CE78 ; =FUN_ov41_0211c664
	strb r1, [r0, #0x81]
	mov r1, #6
	bx r12
_0211CE78: .word FUN_ov41_0211c664
	arm_func_end FUN_ov41_0211ce68

	arm_func_start FUN_ov41_0211ce7c
FUN_ov41_0211ce7c: ; 0x0211CE7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x68
	ldr r6, _0211D134 ; =0x02121AD4
	add r5, sp, #8
	mov r10, r0
	str r5, [sp]
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r9, #0
	add r0, sp, #0x48
	mov r1, r9
	mov r2, #0x20
	mov r4, #0x68
	bl MI_CpuFill8
	add r0, r10, #0x48
	add r0, r0, #0x400
	mov r1, r9
	mov r2, #0x340
	bl MI_CpuFill8
	add r0, r10, #0x388
	add r0, r0, #0x400
	mov r1, r9
	mov r2, #0x680
	bl MI_CpuFill8
	add r0, r10, #0x48
	add r1, r10, #0x388
	add r0, r0, #0x400
	ldr r8, _0211D138 ; =0x0209BA20
	strb r9, [r10, #0xe08]
	str r0, [sp, #4]
	add r11, r1, #0x400
	mov r5, #1
	mov r7, r9
_0211CF18:
	ldr r2, [sp]
	mov r0, r8
	ldr r2, [r2, r9, lsl #2]
	mov r1, r7
	bl FUN_0204dea4
	mov r1, r7
	bl FUN_ov16_020efa9c
	movs r6, r0
	beq _0211D120
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211D120
	ldrb r3, [r10, #0xe08]
	add r0, r6, #0x1c
	mov r2, #0x10
	mla r1, r3, r4, r11
	bl MI_CpuCopy8
	mov r0, r8
	mov r1, r6
	mov r2, #0x25
	mov r3, r7
	bl FUN_0204f02c
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	str r0, [r1, #0x798]
	mov r0, r6
	bl FUN_0206cbf8
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	add r1, r1, #0x700
	strh r0, [r1, #0x9c]
	mov r0, r6
	bl FUN_0206cc00
	ldrb r3, [r10, #0xe08]
	mov r1, r6
	mla r2, r3, r4, r10
	add r2, r2, #0x700
	strh r0, [r2, #0x9e]
	mov r0, r8
	bl FUN_0204b754
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	add r1, r1, #0x700
	strh r0, [r1, #0xa0]
	mov r0, r6
	bl FUN_0204fb60
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	add r1, r1, #0x700
	strh r0, [r1, #0xa2]
	ldrb r2, [r10, #0xe08]
	mov r0, r6
	mla r1, r2, r4, r10
	strb r5, [r1, #0x7b2]
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	str r7, [r1, #0x7ac]
	bl FUN_0206cd88
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	str r0, [r1, #0x7e4]
	ldrb r1, [r10, #0xe08]
	ldrb r2, [r6, #0x5a]
	mla r0, r1, r4, r10
	strb r2, [r0, #0x7e8]
	ldrb r1, [r10, #0xe08]
	mla r0, r1, r4, r10
	str r5, [r0, #0x7ec]
	ldrb r0, [r10, #0xe09]
	cmp r0, #8
	bls _0211D114
	ldrb r2, [r10, #0xe08]
	cmp r2, r0
	bhs _0211D114
	ldr r0, [sp, #4]
	mla r1, r2, r4, r0
	add r0, r6, #0x1c
	mov r2, #0x10
	bl MI_CpuCopy8
	mov r0, r8
	mov r1, r6
	mov r2, #0x25
	mov r3, r7
	bl FUN_0204f02c
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	str r0, [r1, #0x458]
	mov r0, r6
	bl FUN_0206cbf8
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	add r1, r1, #0x400
	strh r0, [r1, #0x5c]
	mov r0, r6
	bl FUN_0206cc00
	ldrb r3, [r10, #0xe08]
	mov r1, r6
	mla r2, r3, r4, r10
	add r2, r2, #0x400
	strh r0, [r2, #0x5e]
	mov r0, r8
	bl FUN_0204b754
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	add r1, r1, #0x400
	strh r0, [r1, #0x60]
	mov r0, r6
	bl FUN_0204fb60
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	add r1, r1, #0x400
	strh r0, [r1, #0x62]
	ldrb r2, [r10, #0xe08]
	mov r0, r6
	mla r1, r2, r4, r10
	strb r5, [r1, #0x472]
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	str r7, [r1, #0x46c]
	bl FUN_0206cd88
	ldrb r2, [r10, #0xe08]
	mla r1, r2, r4, r10
	str r0, [r1, #0x4a4]
	ldrb r1, [r10, #0xe08]
	ldrb r2, [r6, #0x5a]
	mla r0, r1, r4, r10
	strb r2, [r0, #0x4a8]
_0211D114:
	ldrb r0, [r10, #0xe08]
	add r0, r0, #1
	strb r0, [r10, #0xe08]
_0211D120:
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211CF18
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D134: .word ov41_02121AD4
_0211D138: .word unk_0209BA20
	arm_func_end FUN_ov41_0211ce7c

	arm_func_start FUN_ov41_0211d13c
FUN_ov41_0211d13c: ; 0x0211D13C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	add r0, r4, #0x218
	add r0, r0, #0xc00
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x198]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, pc}
	ldr r4, _0211D1B0 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_02056828
	mov r2, #2
	mov r0, #0x4000
	stmia sp, {r0, r2}
	mov r0, #0x6400
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r3, r2
	mov r1, #0x94000
	bl FUN_020568c4
	ldr r0, [r4]
	bl FUN_02057be4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211D1B0: .word unk_02099EC0
	arm_func_end FUN_ov41_0211d13c

	arm_func_start FUN_ov41_0211d1b4
FUN_ov41_0211d1b4: ; 0x0211D1B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r1
	mov r10, r0
	cmp r4, #2
	blo _0211D24C
	add r0, r10, #0x1000
	ldrb r0, [r0, #0x198]
	cmp r0, #0
	bne _0211D1EC
	ldr r4, _0211D294 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_020568a4
	ldr r0, [r4]
	bl FUN_02057c60
_0211D1EC:
	mov r4, #0xc
	mov r9, #0
	add r0, r10, #0x218
	add r8, r0, #0xc00
	mov r11, #1
	mov r7, r9
	mov r5, r4
	mov r6, r4
	b _0211D240
_0211D210:
	mla r0, r9, r4, r8
	mov r1, r11
	bl FUN_ov16_020f338c
	mla r0, r9, r5, r8
	bl FUN_ov16_020f33fc
	mla r0, r9, r6, r10
	str r7, [r0, #0xe18]
	str r7, [r0, #0xe1c]
	strb r7, [r0, #0xe20]
	strb r7, [r0, #0xe21]
	strb r7, [r0, #0xe22]
	add r9, r9, #1
_0211D240:
	cmp r9, #2
	blt _0211D210
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D24C:
	add r0, r10, #0x218
	add r0, r0, #0xc00
	mov r5, #0xc
	mla r0, r4, r5, r0
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r10, #0x218
	add r0, r0, #0xc00
	mla r0, r4, r5, r0
	bl FUN_ov16_020f33fc
	mla r0, r4, r5, r10
	mov r1, #0
	str r1, [r0, #0xe18]
	str r1, [r0, #0xe1c]
	strb r1, [r0, #0xe20]
	strb r1, [r0, #0xe21]
	strb r1, [r0, #0xe22]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D294: .word unk_02099EC0
	arm_func_end FUN_ov41_0211d1b4

	arm_func_start FUN_ov41_0211d298
FUN_ov41_0211d298: ; 0x0211D298
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	bmi _0211D2B0
	cmp r4, #0xd
	blt _0211D308
_0211D2B0:
	mov r4, #0
	add r0, r5, #0x2d8
	add r9, r0, #0xc00
	mov r8, #1
	mov r7, r4
	mov r6, #0xc
_0211D2C8:
	mul r10, r4, r6
	mov r1, r8
	add r0, r9, r10
	bl FUN_ov16_020f338c
	add r0, r9, r10
	bl FUN_ov16_020f33fc
	add r0, r5, r10
	str r7, [r0, #0xed8]
	str r7, [r0, #0xedc]
	strb r7, [r0, #0xee0]
	strb r7, [r0, #0xee1]
	add r4, r4, #1
	strb r7, [r0, #0xee2]
	cmp r4, #0xd
	blt _0211D2C8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D308:
	mov r0, #0xc
	mul r6, r4, r0
	add r0, r5, #0x2d8
	add r4, r0, #0xc00
	add r0, r4, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r6
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r6]
	add r0, r5, r6
	str r1, [r0, #0xedc]
	strb r1, [r0, #0xee0]
	strb r1, [r0, #0xee1]
	strb r1, [r0, #0xee2]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov41_0211d298

	arm_func_start FUN_ov41_0211d34c
FUN_ov41_0211d34c: ; 0x0211D34C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x198]
	cmp r0, #0
	bne _0211D380
	ldr r0, _0211D490 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_02057c2c
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, pc}
_0211D380:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x198]
	cmp r0, #0
	bne _0211D3A0
	add r1, r4, #0x218
	ldr r0, _0211D494 ; =0x02122138
	add r1, r1, #0xc00
	bl FUN_ov16_020f316c
_0211D3A0:
	add r1, r4, #0x224
	ldr r0, _0211D498 ; =0x02122150
	add r1, r1, #0xc00
	bl FUN_ov16_020f316c
	mov r0, r4
	mov r1, #2
	bl FUN_ov41_0211c664
	ldrb r0, [r4, #0x88]
	add r1, r4, #0x2d8
	add r1, r1, #0xc00
	cmp r0, #0
	ldreq r0, _0211D49C ; =0x02122170
	ldrne r0, _0211D4A0 ; =0x0212218C
	bl FUN_ov16_020f316c
	add r0, r4, #0x1000
	ldr r1, [r0, #0x15c]
	add r0, r4, #0x15c
	cmp r1, #0
	add r5, r0, #0x1000
	ldrne r0, [r5, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020f2f20
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x198]
	mov r1, #3
	mov r4, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	cmp r0, #0
	ldreq r0, _0211D4A4 ; =0x021221A8
	ldrh r2, [r5, #0xc]
	ldrh r3, [r5, #0xe]
	ldrne r0, _0211D4A8 ; =0x021221F8
	ldr r1, [r5, #4]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	mov r2, r2, lsl #3
	mov r1, r1, lsl #3
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	strb r4, [r5, #0x10]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_0211D490: .word unk_02099EC0
_0211D494: .word ov41_02122138
_0211D498: .word ov41_02122150
_0211D49C: .word ov41_02122170
_0211D4A0: .word ov41_0212218C
_0211D4A4: .word ov41_021221A8
_0211D4A8: .word ov41_021221F8
	arm_func_end FUN_ov41_0211d34c

	arm_func_start FUN_ov41_0211d4ac
FUN_ov41_0211d4ac: ; 0x0211D4AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xe30
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0xe30
	mov r1, #0x10
	bl FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov41_0211d4ac

	arm_func_start FUN_ov41_0211d4d4
FUN_ov41_0211d4d4: ; 0x0211D4D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xe30
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r4, #0xe30
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov41_0211d4d4

	arm_func_start FUN_ov41_0211d4f4
FUN_ov41_0211d4f4: ; 0x0211D4F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x218
	add r0, r0, #0xc00
	mov r1, #2
	bl FUN_ov16_020f330c
	cmp r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r4, #0x2d8
	add r0, r0, #0xc00
	mov r1, #0xd
	bl FUN_ov16_020f330c
	cmp r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x198]
	cmp r0, #0
	bne _0211D574
	ldrb r0, [r4, #0xe08]
	mov r6, #0
	cmp r0, #0
	ble _0211D574
	mov r5, #0x68
_0211D550:
	mla r0, r6, r5, r4
	add r0, r0, #0x700
	ldrh r1, [r0, #0x9e]
	mov r0, r4
	bl FUN_ov41_0211d584
	ldrb r0, [r4, #0xe08]
	add r6, r6, #1
	cmp r6, r0
	blt _0211D550
_0211D574:
	mov r0, r4
	mov r1, #3
	bl FUN_ov41_0211c664
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov41_0211d4f4

	arm_func_start FUN_ov41_0211d584
FUN_ov41_0211d584: ; 0x0211D584
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, r1, lsl #0x10
	mov r3, r0
	ldr r0, [r3, #0xe18]
	ldr r1, _0211D5C8 ; =0x02122218
	mov r2, r2, lsr #0x10
	add r3, r3, #0xe30
	bl FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211D5C8: .word ov41_02122218
	arm_func_end FUN_ov41_0211d584

	arm_func_start FUN_ov41_0211d5cc
FUN_ov41_0211d5cc: ; 0x0211D5CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r0, r1
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_0206cc00
	add r1, r5, #0xe30
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov41_0211d5cc

	arm_func_start FUN_ov41_0211d604
FUN_ov41_0211d604: ; 0x0211D604
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x238
	mov r4, #0
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0x64
	bl MI_CpuFill8
	add r0, r5, #0x29c
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0x3c
	bl MI_CpuFill8
	ldr r0, _0211D648 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211D648: .word unk_02099F38
	arm_func_end FUN_ov41_0211d604

	arm_func_start FUN_ov41_0211d64c
FUN_ov41_0211d64c: ; 0x0211D64C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r0, r6, #0x1000
	ldr r1, [r0, #0x150]
	mov r4, #0
	cmp r1, #0
	ble _0211D67C
	ldr r0, _0211D6F0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r6, #0x1000
	str r4, [r0, #0x150]
_0211D67C:
	mov r5, #0
	ldr r7, _0211D6F0 ; =0x02099F38
	b _0211D6AC
_0211D688:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xe9c]
	cmp r1, #0
	beq _0211D6A8
	ldr r0, [r7]
	bl FUN_ov16_021128c4
	add r0, r6, r5, lsl #2
	str r4, [r0, #0xe9c]
_0211D6A8:
	add r5, r5, #1
_0211D6AC:
	cmp r5, #0xf
	blt _0211D688
	mov r5, #0
	ldr r7, _0211D6F0 ; =0x02099F38
	b _0211D6E4
_0211D6C0:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xe38]
	cmp r1, #0
	beq _0211D6E0
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0xe38]
_0211D6E0:
	add r5, r5, #1
_0211D6E4:
	cmp r5, #0x19
	blt _0211D6C0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D6F0: .word unk_02099F38
	arm_func_end FUN_ov41_0211d64c

	arm_func_start FUN_ov41_0211d6f4
FUN_ov41_0211d6f4: ; 0x0211D6F4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xd4
	mov r4, r0
	add r0, r4, #0xe30
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0xd4
	ldmnefd sp!, {r4, r5, pc}
	ldr r5, _0211D7A4 ; =0x02121B64
	add lr, sp, #0x14
	mov r12, #0xc
_0211D720:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211D720
	ldr r0, _0211D7A8 ; =0x02121A08
	add r12, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x198]
	add r3, r4, #0x238
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #0xe24]
	bne _0211D76C
	ldr r0, _0211D7AC ; =0x02122230
	add r2, sp, #0x14
	b _0211D774
_0211D76C:
	ldr r0, _0211D7B0 ; =0x02122250
	mov r2, r12
_0211D774:
	add r3, r3, #0xc00
	bl FUN_ov16_020f5450
	mov r0, r4
	mov r1, #1
	bl FUN_ov41_0211d1b4
	mov r0, r4
	bl FUN_ov41_0211d7b4
	mov r0, r4
	mov r1, #4
	bl FUN_ov41_0211c664
	add sp, sp, #0xd4
	ldmfd sp!, {r4, r5, pc}
_0211D7A4: .word ov41_02121B64
_0211D7A8: .word ov41_02121A08
_0211D7AC: .word ov41_02122230
_0211D7B0: .word ov41_02122250
	arm_func_end FUN_ov41_0211d6f4

	arm_func_start FUN_ov41_0211d7b4
FUN_ov41_0211d7b4: ; 0x0211D7B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [r0, #0xed8]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x88]
	ldr r5, _0211D80C ; =0x021219A0
	cmp r1, #0
	ldrne r5, _0211D810 ; =0x02121B14
	ldr r1, [r5]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, #0x2d8
	add r7, r0, #0xc00
	mov r6, #0xc
_0211D7EC:
	ldmia r5, {r0, r2}
	mla r1, r2, r6, r7
	mov r2, r4
	bl FUN_ov16_020f32b4
	ldr r0, [r5, #8]!
	cmp r0, #0
	bne _0211D7EC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D80C: .word ov41_021219A0
_0211D810: .word ov41_02121B14
	arm_func_end FUN_ov41_0211d7b4

	arm_func_start FUN_ov41_0211d814
FUN_ov41_0211d814: ; 0x0211D814
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0xe38]
	ldr r6, _0211D8D0 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211D8D0: .word unk_02099F38
	arm_func_end FUN_ov41_0211d814

	arm_func_start FUN_ov41_0211d8d4
FUN_ov41_0211d8d4: ; 0x0211D8D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r4, _0211DAB0 ; =0x00007FFF
	ldr r5, _0211DAB4 ; =0x00004210
	ldr r8, _0211DAB8 ; =0x02099F38
	mov r6, #0
	b _0211D908
_0211D8F0:
	add r1, r7, r6, lsl #2
	ldr r0, [r8]
	ldr r1, [r1, #0xe9c]
	mov r2, r5
	bl FUN_ov16_02114204
	add r6, r6, #1
_0211D908:
	cmp r6, #0xf
	blt _0211D8F0
	mov r6, #0
	b _0211D930
_0211D918:
	add r1, r7, r6, lsl #3
	ldr r0, [r8]
	ldr r1, [r1, #0xf74]
	mov r2, r5
	bl FUN_ov16_02114204
	add r6, r6, #1
_0211D930:
	cmp r6, #8
	blt _0211D918
	mov r6, #0
	b _0211D958
_0211D940:
	add r1, r7, r6, lsl #3
	ldr r0, [r8]
	ldr r1, [r1, #0xfb4]
	mov r2, r5
	bl FUN_ov16_02114204
	add r6, r6, #1
_0211D958:
	cmp r6, #0x10
	blt _0211D940
	ldr r0, [r8]
	ldr r1, [r7, #0xe10]
	mov r2, r5
	bl FUN_ov16_02114204
	ldr r0, [r8]
	ldr r1, [r7, #0xe14]
	mov r2, r5
	bl FUN_ov16_02114204
	ldrb r0, [r7, #0x81]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D990: ; jump table
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 0
	b _0211D9A8 ; case 1
	b _0211D9A8 ; case 2
	b _0211D9A8 ; case 3
	b _0211DA9C ; case 4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 5
_0211D9A8:
	mov r6, #0
	b _0211D9C8
_0211D9B0:
	add r1, r7, r6, lsl #2
	ldr r0, [r8]
	ldr r1, [r1, #0xe9c]
	mov r2, r4
	bl FUN_ov16_02114204
	add r6, r6, #1
_0211D9C8:
	cmp r6, #0xf
	blt _0211D9B0
	mov r0, r7
	bl FUN_ov41_0211af50
	cmp r0, #0
	ldreqb r0, [r7, #0x81]
	cmpeq r0, #1
	bne _0211DA04
	bl FUN_ov16_020f067c
	cmp r0, #0
	bne _0211DA04
	ldr r0, [r8]
	ldr r1, [r7, #0xec4]
	ldr r2, _0211DAB4 ; =0x00004210
	bl FUN_ov16_02114204
_0211DA04:
	ldrb r0, [r7, #0x81]
	cmp r0, #1
	beq _0211DA20
	ldr r0, [r8]
	ldr r1, [r7, #0xecc]
	ldr r2, _0211DAB4 ; =0x00004210
	bl FUN_ov16_02114204
_0211DA20:
	mov r0, r7
	bl FUN_ov41_021215e0
	mov r6, #0
	b _0211DA48
_0211DA30:
	add r1, r7, r6, lsl #3
	ldr r0, [r8]
	ldr r1, [r1, #0xf74]
	mov r2, r4
	bl FUN_ov16_02114204
	add r6, r6, #1
_0211DA48:
	cmp r6, #8
	blt _0211DA30
	mov r6, #0
	b _0211DA70
_0211DA58:
	add r1, r7, r6, lsl #3
	ldr r0, [r8]
	ldr r1, [r1, #0xfb4]
	mov r2, r4
	bl FUN_ov16_02114204
	add r6, r6, #1
_0211DA70:
	cmp r6, #0x10
	blt _0211DA58
	ldr r0, [r8]
	ldr r1, [r7, #0xe10]
	mov r2, r4
	bl FUN_ov16_02114204
	ldr r0, [r8]
	ldr r1, [r7, #0xe14]
	mov r2, r4
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211DA9C:
	ldr r0, [r8]
	ldr r1, [r7, #0xed4]
	ldr r2, _0211DAB0 ; =0x00007FFF
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211DAB0: .word 0x00007FFF
_0211DAB4: .word 0x00004210
_0211DAB8: .word unk_02099F38
	arm_func_end FUN_ov41_0211d8d4

	arm_func_start FUN_ov41_0211dabc
FUN_ov41_0211dabc: ; 0x0211DABC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211DB74 ; =0x02099F38
	b _0211DB28
_0211DAD4:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0xe38]
	cmp r1, #0
	beq _0211DB24
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0xe38]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _0211DB24
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0xe38]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211DB24:
	add r7, r7, #1
_0211DB28:
	cmp r7, #0x19
	blt _0211DAD4
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x198]
	cmp r0, #0
	bne _0211DB64
	ldr r5, _0211DB78 ; =0x02099EC0
	ldr r0, [r5]
	bl FUN_020571ac
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	bl FUN_020576a0
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB64:
	mov r0, r4
	mov r1, #0xc
	bl FUN_ov41_0211c664
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB74: .word unk_02099F38
_0211DB78: .word unk_02099EC0
	arm_func_end FUN_ov41_0211dabc

	arm_func_start FUN_ov41_0211db7c
FUN_ov41_0211db7c: ; 0x0211DB7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	bl FUN_ov41_0211dc98
	ldrb r0, [r6, #0xe09]
	cmp r0, #8
	mov r0, r6
	bls _0211DC2C
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r6
	mov r1, #8
	bl FUN_ov41_0211c664
	mov r5, #0
	ldr r4, _0211DC8C ; =0x0209AEC0
	mov r7, #0x68
	b _0211DBE8
_0211DBC0:
	mov r0, r4
	bl FUN_02046730
	mla r1, r5, r7, r6
	add r1, r1, #0x400
	add r0, r6, r0, lsl #5
	add r0, r0, r5, lsl #1
	ldrh r1, [r1, #0x5c]
	add r0, r0, #0x1000
	add r5, r5, #1
	strh r1, [r0, #0xca]
_0211DBE8:
	ldrb r0, [r6, #0xe09]
	cmp r5, r0
	blt _0211DBC0
	ldr r5, _0211DC90 ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5ff4
	ldr r0, _0211DC94 ; =0x0209A070
	bl FUN_ov16_020f6c4c
	mov r0, r6
	bl FUN_ov41_0211dd88
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC2C:
	bl FUN_ov41_02120008
	mov r0, r6
	bl FUN_ov41_0211fa44
	mov r0, r6
	bl FUN_ov41_021205f0
	mov r0, r6
	bl FUN_ov41_02120730
	mov r0, r6
	bl FUN_ov41_02120c40
	mov r0, r6
	bl FUN_ov41_02120e14
	mov r0, r6
	bl FUN_ov41_02120d0c
	mov r0, r6
	bl FUN_ov41_0211ebac
	mov r0, r6
	bl FUN_ov41_0211f0c4
	mov r0, r6
	mov r1, #0
	bl FUN_ov41_0211fa30
	mov r0, r6
	mov r1, #6
	bl FUN_ov41_0211c664
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC8C: .word unk_0209AEC0
_0211DC90: .word unk_0209F5C0
_0211DC94: .word unk_0209A070
	arm_func_end FUN_ov41_0211db7c

	arm_func_start FUN_ov41_0211dc98
FUN_ov41_0211dc98: ; 0x0211DC98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	ldr r9, _0211DD84 ; =0x02099F38
	mov r7, #1
	mov r8, r0
	ldr r0, [r9]
	mov r1, r7
	mov r2, r7
	bl FUN_ov16_02112724
	mov r6, #0
	mov r1, r0
	str r6, [sp, #0x14]
	str r1, [r8, #0xe9c]
	str r6, [sp]
	str r6, [sp, #4]
	add r4, sp, #0x14
	str r6, [sp, #8]
	mov r5, #0x1f4
	str r5, [sp, #0xc]
	mov r0, r8
	mov r2, r4
	str r7, [sp, #0x10]
	mov r3, r6
	bl FUN_ov41_0211d814
	ldrb r0, [r8, #0xe09]
	cmp r0, #8
	addhi sp, sp, #0x18
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9]
	mov r2, r7
	mov r1, #2
	str r6, [sp, #0x14]
	bl FUN_ov16_02112724
	mov r9, r0
	str r9, [r8, #0xea0]
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	sub r5, r5, #1
	str r5, [sp, #0xc]
	mov r0, r8
	mov r1, r9
	mov r2, r4
	str r7, [sp, #0x10]
	mov r3, #0x12
	bl FUN_ov41_0211d814
	mov r0, r8
	mov r1, r9
	mov r2, r4
	str r6, [sp]
	str r6, [sp, #4]
	mov r3, #0x10
	str r3, [sp, #8]
	str r5, [sp, #0xc]
	mov r3, r7
	str r7, [sp, #0x10]
	bl FUN_ov41_0211d814
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DD84: .word unk_02099F38
	arm_func_end FUN_ov41_0211dc98

	arm_func_start FUN_ov41_0211dd88
FUN_ov41_0211dd88: ; 0x0211DD88
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldrb r1, [r4, #0x88]
	cmp r1, #0
	beq _0211DDAC
	bl FUN_ov41_0211e708
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0211DDAC:
	ldr r5, [r4, #0xee4]
	cmp r5, #0
	beq _0211DDFC
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r2}
	mov r0, #8
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _0211DE94 ; =0x0209F5C0
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211DDFC:
	add r0, r4, #0x1000
	ldr lr, [r0, #0x15c]
	add r0, r4, #0x15c
	add r12, r0, #0x1000
	cmp lr, #0
	ldrne r0, [r12, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211DE84
	mov r1, #0
	mov r0, #1
	stmia sp, {r0, r1}
	mov r0, #2
	str r0, [sp, #8]
	add r0, r4, #0x1000
	ldrb r3, [r0, #0x198]
	ldr r0, _0211DE94 ; =0x0209F5C0
	mov r2, r1
	add r3, r3, #9
	mov r3, r3, lsl #0x18
	mov r3, r3, asr #0x18
	str r3, [sp, #0xc]
	ldrh r5, [r12, #0xc]
	mov r3, r1
	and r5, r5, #0xff
	str r5, [sp, #0x10]
	ldrh r12, [r12, #0xe]
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r1, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211DE84:
	mov r0, r4
	bl FUN_ov41_0211de98
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0211DE94: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211dd88

	arm_func_start FUN_ov41_0211de98
FUN_ov41_0211de98: ; 0x0211DE98
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _0211DF30 ; =0x0209F5C0
	mov r8, r0
	mov r5, #0
	mov r4, #2
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r12, r8, #0x1000
	mov r7, #1
	strb r7, [r12, #0x158]
	bl FUN_ov16_020f5eec
	ldr r2, [r8, #0xef0]
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	stmia sp, {r4, r5}
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r4, r2, r1
	mov r1, r5
	mov r2, r7
	mov r3, r5
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211DF30: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211de98

	arm_func_start FUN_ov41_0211df34
FUN_ov41_0211df34: ; 0x0211DF34
	stmfd sp!, {r3, lr}
	add r1, r0, #0x1000
	ldrb r2, [r1, #0x158]
	cmp r2, #0
	ldrne r3, [r0, #0xefc]
	cmpne r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r1, #0x154]
	ldr r2, [r3, #4]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r1, r3, r2
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #5
	mov r1, #0
	mov r2, #2
	bl FUN_ov16_020f1160
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov41_0211df34

	arm_func_start FUN_ov41_0211df80
FUN_ov41_0211df80: ; 0x0211DF80
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	ldrb r0, [sp, #0x40]
	mov r8, r1
	mov r7, r2
	cmp r0, #0
	ldreq r0, _0211E0B4 ; =gFont12
	mov r6, r3
	ldr r5, [sp, #0x38]
	ldreq r4, [r0]
	beq _0211DFD8
	ldr r0, _0211E0B8 ; =gFont12T
	mov r9, #0
	ldr r4, [r0]
	mov r2, r9
	mov r0, r4
	mov r1, #1
	bl FUN_02043780
	mov r0, r4
	mov r1, r9
	mov r2, r9
	bl FUN_02043310
_0211DFD8:
	mov r0, r5
	bl FUN_ov16_020f2f20
	ldrb r0, [sp, #0x3c]
	mov r1, #1
	cmp r0, #0
	bne _0211E050
	ldrb r0, [sp, #0x40]
	mov r12, #0
	mov r3, r6
	cmp r0, #0
	movne r1, #0
	mov r0, #3
	stmia sp, {r0, r1}
	ldr r0, [r5, #4]
	mov r1, r8
	str r0, [sp, #8]
	ldrh r2, [r5, #0xc]
	mov r0, r4
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r4, [r5, #0xe]
	mov r2, r7
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r12, [sp, #0x14]
	str r12, [sp, #0x18]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	b _0211E08C
_0211E050:
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r1}
	mov r0, #0
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r5, #0xc]
	ldrh r3, [r5, #0xe]
	ldr r1, [r5, #4]
	mov r0, r6
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
_0211E08C:
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	mov r0, #1
	strb r0, [r5, #0x10]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211E0B4: .word gFont12
_0211E0B8: .word gFont12T
	arm_func_end FUN_ov41_0211df80

	arm_func_start FUN_ov41_0211e0bc
FUN_ov41_0211e0bc: ; 0x0211E0BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _0211E170 ; =0x0209F5C0
	mov r8, r0
	mov r5, #0
	mov r4, #2
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r12, r8, #0x1000
	mov r7, #1
	strb r7, [r12, #0x158]
	bl FUN_ov16_020f5eec
	ldr r3, [r8, #0xf2c]
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #0x1000
	ldr r1, [r0, #0x154]
	ldr r2, [r3, #0xc]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r3, r3, r2
	mov r2, r0, asr #2
	mov r0, #0x48
	mla r12, r2, r0, r3
	stmia sp, {r4, r5}
	mov r1, #0xa
	str r1, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, r5
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E170: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211e0bc

	arm_func_start FUN_ov41_0211e174
FUN_ov41_0211e174: ; 0x0211E174
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	cmp r2, #0
	moveq r2, #0xb
	mov r10, r0
	mov r9, r1
	movne r2, #0xc
	mov r1, #0xc
	mla r1, r2, r1, r10
	ldr r5, [r1, #0xed8]
	mov r0, #6
	moveq r3, #0xa
	movne r3, r0
	cmp r5, #0
	beq _0211E204
	ldr r4, [r5, #0xc]
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	mov r3, r3, lsl #0x18
	str r1, [sp, #4]
	mov r6, #2
	str r6, [sp, #8]
	mov r3, r3, asr #0x18
	str r3, [sp, #0xc]
	mov r3, #0x1c
	str r3, [sp, #0x10]
	mov r3, #0xd
	str r3, [sp, #0x14]
	and r6, r0, #0xff
	ldr r0, _0211E2F8 ; =0x0209F5C0
	mov r3, r1
	str r6, [sp, #0x18]
	add r4, r5, r4
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211E204:
	add r0, r10, #0x1000
	ldr r1, [r0, #0x170]
	add r0, r10, #0x170
	add r7, r0, #0x1000
	cmp r1, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r2, [r7, #0xe]
	mov r0, r10
	mov r1, r9
	mov r4, r2, lsl #3
	bl FUN_ov41_02119f14
	cmp r0, #1
	subeq r0, r4, #0x14
	addeq r0, r0, r0, lsr #31
	moveq r0, r0, asr #1
	addeq r8, r0, #2
	ldr r4, _0211E2FC ; =gFont12
	mov r6, #1
	mov r11, #4
	ldr r0, [r4]
	mov r1, r6
	mov r2, r11
	movne r8, #0
	bl FUN_02043310
	str r7, [sp]
	mov r5, #0
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r5
	mov r2, r8
	mov r3, r9
	str r5, [sp, #8]
	bl FUN_ov41_0211df80
	ldr r0, [r4]
	bl FUN_0204331c
	str r6, [sp]
	stmib sp, {r5, r11}
	mov r0, #7
	str r0, [sp, #0xc]
	ldrh r2, [r7, #0xc]
	ldr r0, _0211E2F8 ; =0x0209F5C0
	mov r1, r5
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r4, [r7, #0xe]
	mov r2, r5
	mov r3, r5
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r4, [r7]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E2F8: .word unk_0209F5C0
_0211E2FC: .word gFont12
	arm_func_end FUN_ov41_0211e174

	arm_func_start FUN_ov41_0211e300
FUN_ov41_0211e300: ; 0x0211E300
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x184]
	add r0, r4, #0x184
	add r5, r0, #0x1000
	cmp r1, #0
	ldrne r0, [r5, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_020f083c
	mov r1, r0
	ldr r0, _0211E3E4 ; =0x0209BA20
	bl FUN_0207249c
	mov r6, #1
	ldr r1, _0211E3E8 ; =gFont12
	mov r7, r0
	ldr r0, [r1]
	mov r1, r6
	mov r2, #4
	bl FUN_02043310
	mov r0, r4
	mov r3, r7
	str r5, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r1, r4
	mov r2, r6
	bl FUN_ov41_0211df80
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r0, _0211E3EC ; =0x0209F5C0
	mov r1, r4
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r12, [r5, #0xe]
	mov r2, r4
	mov r3, r4
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r4, [r5]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E3E4: .word unk_0209BA20
_0211E3E8: .word gFont12
_0211E3EC: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211e300

	arm_func_start FUN_ov41_0211e3f0
FUN_ov41_0211e3f0: ; 0x0211E3F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x2c
	cmp r3, #0
	moveq r4, #5
	mov r8, r0
	movne r4, #4
	mov r3, #0xc
	mla r3, r4, r3, r8
	mov r0, #3
	moveq r6, r0
	moveq r7, #1
	ldr r5, [r3, #0xed8]
	movne r6, r4
	movne r7, #0
	cmp r5, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r3, [r5, #0xc]
	mov r4, #0
	add r10, r5, r3
	mov r5, #0xa
	mov lr, #3
	mov r12, #0x50
	mov r3, #0x18
	strh r1, [sp, #0x14]
	strh r2, [sp, #0x16]
	strh r3, [sp, #0x22]
	strb r0, [sp, #0x24]
	strh r5, [sp, #0x18]
	strh lr, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r12, [sp, #0x20]
	str r10, [sp, #0x28]
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r9, _0211E4E0 ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	mov r2, r4
	mov r3, r6
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r9
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f6084
	ldr r0, _0211E4E4 ; =0x0209A070
	mov r2, r6
	mov r1, r4
	mov r3, r4
	str r5, [sp]
	bl FUN_ov16_020f6c8c
	add r1, r8, r7
	add r1, r1, #0x1000
	strb r0, [r1, #0x34]
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E4E0: .word unk_0209F5C0
_0211E4E4: .word unk_0209A070
	arm_func_end FUN_ov41_0211e3f0

	arm_func_start FUN_ov41_0211e4e8
FUN_ov41_0211e4e8: ; 0x0211E4E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r4, [r0, #0xf44]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0xc]
	cmp r9, #0x63
	add r8, r4, r0
	movgt r9, #0x63
	mov r0, r2, lsl #0x18
	cmp r9, #0
	ldr r4, _0211E5B8 ; =0x66666667
	movlt r9, #0
	mov r5, r0, asr #0x18
	mov r7, #1
	mov r6, #0
	mov r11, #2
_0211E538:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	str r7, [sp]
	mov r0, r10, lsl #0x18
	sub r2, r9, r1
	add r1, r8, r2, lsl #2
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r11, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _0211E5BC ; =0x0209F5C0
	mov r1, r6
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_020f5da0
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	add r9, r0, r9, asr #2
	sub r10, r10, #1
	cmp r9, #0
	bgt _0211E538
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E5B8: .word 0x66666667
_0211E5BC: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211e4e8

	arm_func_start FUN_ov41_0211e5c0
FUN_ov41_0211e5c0: ; 0x0211E5C0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr lr, [r0, #0xf50]
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r12, #1
	mov r0, r1, lsl #0x18
	mov r3, #0
	mov r1, r2, lsl #0x18
	str r12, [sp]
	str r3, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r1, asr #0x18
	str r0, [sp, #0xc]
	mov r1, #4
	str r1, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [lr, #0xc]
	ldr r0, _0211E638 ; =0x0209F5C0
	add r12, lr, r1
	mov r1, r3
	mov r2, r3
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211E638: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211e5c0

	arm_func_start FUN_ov41_0211e63c
FUN_ov41_0211e63c: ; 0x0211E63C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	mov r0, #0xc
	mla r0, r3, r0, r6
	ldr r0, [r0, #0xed8]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	beq _0211E6C4
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	mov r3, r5, lsl #0x18
	str r1, [sp, #4]
	mov r12, #3
	str r12, [sp, #8]
	mov r12, r3, asr #0x18
	ldr r3, [sp, #0x30]
	str r12, [sp, #0xc]
	mov r12, #0x1a
	str r12, [sp, #0x10]
	mov r12, #5
	str r12, [sp, #0x14]
	mov r12, #4
	str r12, [sp, #0x18]
	ldr r12, [r0, #0xc]
	add r3, r3, r3, lsl #6
	add r0, r0, r12
	add r12, r0, r3, lsl #2
	ldr r0, _0211E704 ; =0x0209F5C0
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211E6C4:
	add r0, r5, #3
	mov r1, r0, lsl #0x10
	cmp r4, #0x3c
	mov r0, r6
	bge _0211E6F0
	mov r2, r1, asr #0x10
	mov r3, r4
	mov r1, #0x19
	bl FUN_ov41_0211e4e8
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_0211E6F0:
	mov r2, r1, asr #0x10
	mov r1, #0x17
	bl FUN_ov41_0211e5c0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_0211E704: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211e63c

	arm_func_start FUN_ov41_0211e708
FUN_ov41_0211e708: ; 0x0211E708
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_ov41_0211e300
	ldr r1, _0211E78C ; =0x02122270
	mov r0, r4
	mov r2, #0
	bl FUN_ov41_0211e174
	mov r0, r4
	bl FUN_ov41_0211e0bc
	ldr r0, _0211E790 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _0211E748
	ldr r1, _0211E794 ; =0x021222A0
	b _0211E74C
_0211E748:
	ldr r1, _0211E798 ; =0x021222EC
_0211E74C:
	mov r0, r4
	bl FUN_ov41_02119f4c
	mov r0, r4
	mov r1, #0xb
	mov r2, #0x13
	mov r3, #0
	bl FUN_ov41_0211e3f0
	mov r1, #1
	ldr r0, _0211E790 ; =0x020A0640
	str r1, [sp]
	ldrb r2, [r0, #0x9b]
	mov r0, r4
	mov r3, #6
	bl FUN_ov41_0211e63c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211E78C: .word ov41_02122270
_0211E790: .word unk_020A0640
_0211E794: .word ov41_021222A0
_0211E798: .word ov41_021222EC
	arm_func_end FUN_ov41_0211e708

	arm_func_start FUN_ov41_0211e79c
FUN_ov41_0211e79c: ; 0x0211E79C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr lr, [r0, #0xf38]
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r12, #1
	mov r0, r1, lsl #0x18
	mov r3, #0
	mov r1, r2, lsl #0x18
	str r12, [sp]
	str r3, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r1, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	ldr r1, [lr, #0xc]
	ldr r0, _0211E814 ; =0x0209F5C0
	add r12, lr, r1
	mov r1, r3
	mov r2, r3
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211E814: .word unk_0209F5C0
	arm_func_end FUN_ov41_0211e79c

	arm_func_start FUN_ov41_0211e818
FUN_ov41_0211e818: ; 0x0211E818
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r1, _0211EB38 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	ldr r5, _0211EB3C ; =0x02099EB4
	mov r9, #1
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #0xe0c]
	bl FUN_ov16_021109a0
	ldrb r0, [r4, #0x81]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211EB0C
_0211E85C: ; jump table
	b _0211EB0C ; case 0
	b _0211E874 ; case 1
	b _0211E928 ; case 2
	b _0211E9BC ; case 3
	b _0211E9D4 ; case 4
	b _0211E9EC ; case 5
_0211E874:
	mov r8, #0xa
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov16_0210ee78
	mov r0, r4
	bl FUN_ov41_02120be8
	mov r6, #0
	mov r7, #7
	mov r1, r8
	mov r0, r4
	mov r2, r6
	mov r3, r9
	str r7, [sp]
	bl FUN_ov41_0211ae70
	mov r0, #8
	str r0, [sp]
	mov r0, r4
	mov r1, #0xb
	mov r2, r6
	mov r3, r9
	bl FUN_ov41_0211ae70
	mov r0, r4
	bl FUN_ov41_021215e0
	mov r0, r4
	bl FUN_ov41_02120f6c
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov16_0210e7d0
	movs r7, r0
	beq _0211E90C
	mov r0, r4
	bl FUN_ov41_0211af50
	cmp r0, #0
	bne _0211E908
	bl FUN_ov16_020f067c
	cmp r0, #0
	moveq r6, r9
_0211E908:
	strb r6, [r7, #0x10]
_0211E90C:
	ldr r0, [r5]
	mov r1, #9
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0, #0x10]
	b _0211EB0C
_0211E928:
	mov r8, #0xa
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov16_0210ee78
	mov r7, #2
	mov r6, #3
	add r1, r4, #0x1000
	str r9, [r1, #0x98]
	mov r9, #8
	mov r0, r4
	mov r2, r7
	mov r3, r6
	mov r1, #0xb
	str r9, [sp]
	bl FUN_ov41_0211ae70
	mov r9, #7
	mov r1, r8
	mov r2, r7
	mov r3, r6
	mov r0, r4
	str r9, [sp]
	bl FUN_ov41_0211ae70
	mov r0, r4
	bl FUN_ov41_021215e0
	ldr r0, [r5]
	mov r1, r9
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0, #0x10]
	ldr r0, [r5]
	mov r1, #9
	mov r5, #1
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	strneb r5, [r0, #0x10]
	b _0211EB0C
_0211E9BC:
	ldr r0, [r5]
	mov r1, #0xa
	bl FUN_ov16_0210ee78
	add r0, r4, #0x1000
	str r9, [r0, #0xac]
	b _0211EB0C
_0211E9D4:
	ldr r0, [r5]
	mov r1, #0x1e
	bl FUN_ov16_0210ee78
	mov r0, r4
	bl FUN_ov41_02120a1c
	b _0211EB0C
_0211E9EC:
	mov r10, #0x1e
	ldr r0, [r5]
	mov r1, r10
	bl FUN_ov16_0210ee78
	ldr r0, [r4, #0xe0c]
	bl FUN_ov16_021105c0
	mov r8, #0
	ldr r0, [r4, #0xe0c]
	ldr r2, [r4, #0xe88]
	mov r1, r8
	bl FUN_ov16_02110624
	mov r7, #2
	ldr r0, [r4, #0xe0c]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_02110624
	mov r6, #5
	ldr r0, [r4, #0xe0c]
	ldr r2, [r4, #0xe8c]
	mov r1, r6
	bl FUN_ov16_02110624
	ldr r0, [r4, #0xe0c]
	ldr r2, [r4, #0xe90]
	mov r1, #6
	bl FUN_ov16_02110624
	ldr r0, [r4, #0xe0c]
	ldr r2, [r4, #0xe94]
	mov r1, #7
	bl FUN_ov16_02110624
	ldr r0, [r4, #0xe0c]
	mov r1, #0x96
	bl FUN_ov16_02110864
	ldr r0, [r4, #0xe0c]
	mov r1, r7
	mov r2, #0xb
	mov r3, #0xc
	bl FUN_ov16_02110830
	ldr r0, [r4, #0xe0c]
	mov r1, r10
	bl FUN_ov16_0211085c
	mov r5, #0x38
	ldr r0, [r4, #0xe0c]
	mov r1, #0x18
	mov r2, r5
	bl FUN_ov16_021108b4
	mov r1, r5
	mov r5, #0x68
	ldr r0, [r4, #0xe0c]
	mov r2, r5
	bl FUN_ov16_021108c0
	ldr r0, [r4, #0xe0c]
	mov r2, r5
	mov r1, #0x98
	bl FUN_ov16_021108cc
	ldr r0, [r4, #0xe0c]
	mov r1, #0xf
	mov r2, #4
	bl FUN_ov16_021108e4
	ldr r0, [r4, #0xe0c]
	mov r1, r6
	mov r2, #3
	bl FUN_ov16_021108f0
	str r9, [sp]
	ldr r0, [r4, #0xe0c]
	ldr r2, _0211EB40 ; =0x02122338
	mov r1, r7
	mov r3, r9
	bl FUN_ov16_02110938
	ldr r0, [r4, #0xe0c]
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_02110a04
_0211EB0C:
	mov r0, r4
	bl FUN_ov41_0211d8d4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	mov r1, #7
	bl FUN_ov41_0211c664
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211EB38: .word unk_02099ED4
_0211EB3C: .word unk_02099EB4
_0211EB40: .word ov41_02122338
	arm_func_end FUN_ov41_0211e818

	arm_func_start FUN_ov41_0211eb44
FUN_ov41_0211eb44: ; 0x0211EB44
	stmfd sp!, {r4, lr}
	ldr r1, _0211EB78 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl FUN_ov16_020f1514
	mov r0, r4
	mov r1, #0xb
	bl FUN_ov41_0211c664
	ldmfd sp!, {r4, pc}
_0211EB78: .word unk_02099ED4
	arm_func_end FUN_ov41_0211eb44

	arm_func_start FUN_ov41_0211eb7c
FUN_ov41_0211eb7c: ; 0x0211EB7C
	stmfd sp!, {r4, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x440]
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov41_0211eb7c

	arm_func_start FUN_ov41_0211ebac
FUN_ov41_0211ebac: ; 0x0211EBAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r4, #0
	mov r7, #4
	mov r5, r0
	add r0, sp, #0x38
	mov r1, r4
	mov r2, r7
	str r4, [sp, #0x20]
	str r4, [sp, #0x30]
	str r4, [sp, #0x2c]
	mov r6, #0x68
	bl MI_CpuFill8
	add r0, sp, #0x34
	mov r1, r4
	mov r2, r7
	bl MI_CpuFill8
	ldr r0, _0211F0B0 ; =0x000001EF
	add r11, sp, #0x30
	sub r7, r0, #5
	ldr r10, _0211F0B4 ; =0x02099F38
	b _0211EE38
_0211EC04:
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [r10]
	mov r1, #5
	mov r2, #1
	bl FUN_ov16_02112724
	mov r8, r0
	add r0, r5, r4, lsl #3
	str r8, [r0, #0xf74]
	mov r0, r4, lsl #4
	add r1, r0, #0x20
	ldrb r0, [r5, #0xe09]
	mov r9, #0
	cmp r4, r0
	blt _0211EC70
	mov r0, r9
	str r0, [sp]
	stmib sp, {r0, r1}
	ldr r0, _0211F0B0 ; =0x000001EF
	mov r1, r8
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r5
	mov r2, r11
	mov r3, #2
	bl FUN_ov41_0211d814
_0211EC70:
	mla r1, r4, r6, r5
	ldrb r0, [r1, #0x472]
	cmp r0, #1
	bne _0211EE34
	add r0, r1, #0x400
	ldrh r0, [r0, #0x62]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211ECC4
_0211EC94: ; jump table
	b _0211ECC4 ; case 0
	b _0211ECA8 ; case 1
	b _0211ECB0 ; case 2
	b _0211ECB8 ; case 3
	b _0211ECC0 ; case 4
_0211ECA8:
	mov r9, #3
	b _0211ECC4
_0211ECB0:
	mov r9, #2
	b _0211ECC4
_0211ECB8:
	mov r9, #1
	b _0211ECC4
_0211ECC0:
	mov r9, #0
_0211ECC4:
	str r9, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, r4, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r5
	mov r1, r8
	mov r2, r11
	mov r3, #0xf
	bl FUN_ov41_0211d814
	ldr r1, [sp, #0x30]
	mov r0, r5
	add r1, r1, #1
	str r1, [sp, #0x30]
	mla r1, r4, r6, r5
	add r1, r1, #0x400
	ldrh r1, [r1, #0x5c]
	bl FUN_ov41_0211d5cc
	mov r3, r0
	mov r0, r4, lsl #4
	add r9, r0, #0x18
	ldr r0, [r10]
	ldr r2, [sp, #0x30]
	mov r1, r8
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r10]
	ldr r2, [sp, #0x30]
	mov r1, r8
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r9, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r10]
	ldr r2, [sp, #0x30]
	mov r1, r8
	mov r3, #0xc
	bl FUN_ov16_02113b78
	ldr r0, [r10]
	ldr r2, [sp, #0x30]
	mov r1, r8
	mov r3, r7
	bl FUN_ov16_021139bc
	mla r0, r4, r6, r5
	ldr r1, [r0, #0x458]
	ldr r3, _0211F0B8 ; =0x66666667
	mov r0, r4, lsl #4
	smull r9, r2, r3, r1
	mov r3, r1, lsr #0x1f
	add r2, r3, r2, asr #2
	mov r3, #0xa
	smull r2, r9, r3, r2
	sub r2, r1, r2
	str r2, [sp]
	mov r1, #0x70
	str r1, [sp, #4]
	add r0, r0, #0x28
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r5
	mov r1, r8
	mov r2, r11
	mov r3, #0x11
	bl FUN_ov41_0211d814
	mla r0, r4, r6, r5
	ldr r9, [r0, #0x458]
	cmp r9, #0xa
	blt _0211EE34
	ldr r0, _0211F0B8 ; =0x66666667
	mov r1, r8
	smull r2, r3, r0, r9
	mov r0, r9, lsr #0x1f
	add r3, r0, r3, asr #2
	stmia sp, {r3, r6}
	mov r0, r4, lsl #4
	add r0, r0, #0x28
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r5
	mov r2, r11
	mov r3, #0x11
	bl FUN_ov41_0211d814
_0211EE34:
	add r4, r4, #1
_0211EE38:
	cmp r4, #8
	blt _0211EC04
	ldr r6, _0211F0B4 ; =0x02099F38
	mov r4, #0
	ldr r0, [r6]
	mov r1, #8
	mov r2, #1
	str r4, [sp, #0x30]
	bl FUN_ov16_02112724
	mov r8, r0
	add r2, sp, #0x38
	add r3, sp, #0x34
	mov r0, #0x40
	mov r1, #0x10
	str r8, [r5, #0xe10]
	bl FUN_02054070
	add r0, r5, #0x48
	add r0, r0, #0x400
	str r0, [sp, #0x24]
	b _0211F040
_0211EE88:
	mov r0, #0x68
	mla r0, r4, r0, r5
	ldrb r0, [r0, #0x472]
	cmp r0, #1
	bne _0211F03C
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r0, [r6]
	bl FUN_02059630
	mov r9, r0
	add r0, r5, r4, lsl #3
	str r9, [r0, #0xf78]
	mov r2, #0
	ldr r0, [r6]
	mov r1, r9
	mov r3, r2
	bl FUN_02059038
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [r6]
	mov r1, r9
	add r2, sp, #0x28
	add r3, sp, #0x2c
	bl FUN_0205935c
	ldr r0, [r6]
	mov r1, r9
	ldr r10, [sp, #0x28]
	bl FUN_ov16_02111438
	mov r11, r0
	ldr r0, [r6]
	mov r1, r9
	bl FUN_ov16_02111458
	mov r7, r0
	ldr r0, _0211F0BC ; =gFont12
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02043310
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _0211F0BC ; =gFont12
	ldr r1, [sp, #0x24]
	mov r2, #0x68
	mla r1, r4, r2, r1
	ldr r0, [r0]
	mov r2, r10
	mov r3, r11
	bl FUN_020425fc
	ldr r0, _0211F0BC ; =gFont12
	ldr r0, [r0]
	bl FUN_0204331c
	mov r2, r10
	ldr r3, [sp, #0x2c]
	ldr r0, [r6]
	mov r10, #0
	str r10, [sp]
	str r10, [sp, #4]
	mov r1, r9
	str r10, [sp, #8]
	bl FUN_02059288
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x30]
	sub r0, r4, r0
	add r2, r1, #1
	mov r0, r0, lsl #4
	and r3, r9, #0xff
	add r9, r0, #0x23
	ldr r0, [r6]
	mov r1, r8
	str r2, [sp, #0x30]
	bl FUN_ov16_021137dc
	mov r0, r10
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [sp, #0x30]
	mov r1, r8
	mov r3, r10
	bl FUN_ov16_02113d88
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r11, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r6]
	ldr r2, [sp, #0x30]
	mov r1, r8
	bl FUN_ov16_02113d08
	mov r0, r9, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [sp, #0x30]
	mov r1, r8
	mov r3, #0x2b
	bl FUN_ov16_02113b78
	ldr r0, [r6]
	ldr r2, [sp, #0x30]
	mov r1, r8
	mov r3, #0xc8
	bl FUN_ov16_021139bc
_0211F03C:
	add r4, r4, #1
_0211F040:
	cmp r4, #8
	blt _0211EE88
	mov r4, #0
	mov r7, #0xd
	mov r9, #0x20
	mov r8, #0x78
	mov r10, #0x10
	mov r6, #0x14
	mov r11, #5
	ldr r5, _0211F0C0 ; =0x02099EB4
	b _0211F0A0
_0211F06C:
	str r9, [sp]
	stmib sp, {r8, r10}
	str r6, [sp, #0xc]
	ldr r0, [r5]
	mov r1, r11
	mov r2, r7
	mov r3, #0
	bl FUN_ov16_0210fba4
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	add r9, r9, #0x10
	add r4, r4, #1
_0211F0A0:
	cmp r4, #8
	blt _0211F06C
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F0B0: .word 0x000001EF
_0211F0B4: .word unk_02099F38
_0211F0B8: .word 0x66666667
_0211F0BC: .word gFont12
_0211F0C0: .word unk_02099EB4
	arm_func_end FUN_ov41_0211ebac

	arm_func_start FUN_ov41_0211f0c4
FUN_ov41_0211f0c4: ; 0x0211F0C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r1, #0
	mov r3, r1
	mov r9, r0
	mov r4, #4
	str r3, [sp, #0x3c]
	str r3, [sp, #0x38]
	add r3, r9, #0x1000
	add r0, sp, #0x44
	mov r2, r4
	ldr r7, [r3, #0x80]
	bl MI_CpuFill8
	add r0, sp, #0x40
	mov r1, #0
	mov r2, r4
	bl MI_CpuFill8
	mov r8, r7
	b _0211F444
_0211F110:
	ldrb r0, [r9, #0xe08]
	cmp r8, r0
	bge _0211F450
	mov r0, #0x68
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0x7b2]
	cmp r0, #1
	bne _0211F440
	ldr r0, _0211F6DC ; =0x02099F38
	mov r5, #0
	ldr r0, [r0]
	mov r1, #6
	mov r2, #1
	str r5, [sp, #0x3c]
	bl FUN_ov16_02112724
	sub r1, r8, r7
	mov r1, r1, lsl #4
	add r6, r1, #0x20
	mov r1, #0x68
	mla r1, r8, r1, r9
	mov r4, r0
	add r2, r9, r8, lsl #3
	str r5, [sp, #0x24]
	str r4, [r2, #0xfb4]
	mov r0, r5
	mov r11, #0x78
	add r1, r1, #0x700
	mov r2, #0x68
	b _0211F1A8
_0211F184:
	mla r3, r0, r2, r9
	add r3, r3, #0x400
	ldrh r3, [r3, #0x5c]
	ldrh r10, [r1, #0x9c]
	cmp r10, r3
	moveq r0, #1
	streq r0, [sp, #0x24]
	beq _0211F1B4
	add r0, r0, #1
_0211F1A8:
	ldrb r3, [r9, #0xe09]
	cmp r0, r3
	blt _0211F184
_0211F1B4:
	mov r0, #0x68
	mla r1, r8, r0, r9
	mov r0, #1
	str r0, [sp, #0x20]
	str r0, [r1, #0x7ec]
	ldr r0, [sp, #0x24]
	mvn r10, #0
	cmp r0, #0
	moveq r10, #3
	bl FUN_ov16_020f067c
	cmp r0, #0
	beq _0211F1F4
	mov r0, r9
	mov r1, r8
	bl FUN_ov41_0211f958
	str r0, [sp, #0x20]
_0211F1F4:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	moveq r0, #0x68
	mlaeq r0, r8, r0, r9
	moveq r1, #0
	streq r1, [r0, #0x7ec]
	moveq r10, #2
	mvn r0, #0
	cmp r10, r0
	beq _0211F248
	stmia sp, {r5, r11}
	str r6, [sp, #8]
	add r6, r0, #0x1f0
	str r6, [sp, #0xc]
	mov r6, #1
	add r2, sp, #0x3c
	mov r0, r9
	mov r1, r4
	mov r3, r10
	str r6, [sp, #0x10]
	bl FUN_ov41_0211d814
_0211F248:
	mov r0, #0x68
	mla r0, r8, r0, r9
	add r0, r0, #0x700
	ldrh r0, [r0, #0xa2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211F294
_0211F264: ; jump table
	b _0211F294 ; case 0
	b _0211F278 ; case 1
	b _0211F280 ; case 2
	b _0211F288 ; case 3
	b _0211F290 ; case 4
_0211F278:
	mov r5, #3
	b _0211F294
_0211F280:
	mov r5, #2
	b _0211F294
_0211F288:
	mov r5, #1
	b _0211F294
_0211F290:
	mov r5, #0
_0211F294:
	sub r0, r8, r7
	mov r1, r0, lsl #4
	ldr r0, [sp, #0x24]
	mov r11, #0x7b
	stmia sp, {r5, r11}
	add r6, r1, #0x20
	cmp r0, #0
	mov r10, #0x10
	movne r10, #0xf
	add r11, sp, #0x3c
	str r6, [sp, #8]
	ldr r5, _0211F6E0 ; =0x000001EA
	mov r0, r9
	mov r1, r4
	mov r2, r11
	mov r3, r10
	str r5, [sp, #0xc]
	mov r6, #1
	str r6, [sp, #0x10]
	bl FUN_ov41_0211d814
	mov r1, #0x68
	mla r1, r8, r1, r9
	ldr r0, [sp, #0x3c]
	add r1, r1, #0x700
	add r0, r0, #1
	str r0, [sp, #0x3c]
	ldrh r1, [r1, #0x9c]
	mov r0, r9
	bl FUN_ov41_0211d5cc
	mov r3, r0
	sub r0, r8, r7
	mov r0, r0, lsl #4
	ldr r10, _0211F6DC ; =0x02099F38
	add r6, r0, #0x18
	ldr r0, [r10]
	ldr r2, [sp, #0x3c]
	mov r1, r4
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	mov r3, r0
	ldr r0, [r10]
	ldr r2, [sp, #0x3c]
	mov r1, r4
	bl FUN_ov16_0211401c
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r10]
	ldr r2, [sp, #0x3c]
	mov r3, #0x84
	mov r1, r4
	bl FUN_ov16_02113b78
	ldr r0, [r10]
	ldr r2, [sp, #0x3c]
	mov r1, r4
	mov r3, r5
	bl FUN_ov16_021139bc
	mov r0, #0x68
	mla r0, r8, r0, r9
	ldr r0, [r0, #0x798]
	ldr r6, _0211F6E4 ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r2, r10, r6, r0
	add r10, r1, r10, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r10
	sub r10, r0, r1
	str r10, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	sub r0, r8, r7
	mov r0, r0, lsl #4
	add r0, r0, #0x28
	str r0, [sp, #8]
	mov r10, #0x11
	str r5, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	mov r1, r4
	mov r2, r11
	mov r3, r10
	bl FUN_ov41_0211d814
	mov r0, #0x68
	mla r0, r8, r0, r9
	ldr r0, [r0, #0x798]
	cmp r0, #0xa
	blt _0211F440
	mov r1, r0, lsr #0x1f
	smull r2, r0, r6, r0
	add r0, r1, r0, asr #2
	sub r1, r8, r7
	str r0, [sp]
	mov r0, #0xe0
	mov r1, r1, lsl #4
	str r0, [sp, #4]
	add r0, r1, #0x28
	str r0, [sp, #8]
	mov r1, r4
	str r5, [sp, #0xc]
	mov r4, #1
	mov r0, r9
	mov r2, r11
	mov r3, r10
	str r4, [sp, #0x10]
	bl FUN_ov41_0211d814
_0211F440:
	add r8, r8, #1
_0211F444:
	add r0, r7, #8
	cmp r8, r0
	blt _0211F110
_0211F450:
	ldr r5, _0211F6DC ; =0x02099F38
	mov r3, #0
	ldr r0, [r5]
	mov r1, #8
	mov r2, #1
	str r3, [sp, #0x3c]
	bl FUN_ov16_02112724
	mov r4, r0
	add r2, sp, #0x44
	add r3, sp, #0x40
	mov r0, #0x40
	mov r1, #0x10
	str r4, [r9, #0xe14]
	bl FUN_02054070
	add r0, r9, #0x388
	add r0, r0, #0x400
	str r0, [sp, #0x2c]
	add r0, r7, #8
	mov r8, r7
	str r0, [sp, #0x30]
	b _0211F668
_0211F4A4:
	ldrb r0, [r9, #0xe08]
	cmp r8, r0
	bge _0211F674
	mov r0, #0x68
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0x7b2]
	cmp r0, #1
	bne _0211F664
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r0, [r5]
	bl FUN_02059630
	mov r6, r0
	add r0, r9, r8, lsl #3
	str r6, [r0, #0xfb8]
	mov r2, #0
	ldr r0, [r5]
	mov r1, r6
	mov r3, r2
	bl FUN_02059038
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [r5]
	mov r1, r6
	add r2, sp, #0x34
	add r3, sp, #0x38
	bl FUN_0205935c
	ldr r0, [r5]
	mov r1, r6
	ldr r10, [sp, #0x34]
	bl FUN_ov16_02111438
	str r0, [sp, #0x28]
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov16_02111458
	mov r11, r0
	ldr r0, _0211F6E8 ; =gFont12
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02043310
	str r11, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _0211F6E8 ; =gFont12
	ldr r1, [sp, #0x2c]
	mov r2, #0x68
	mla r1, r8, r2, r1
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	mov r2, r10
	bl FUN_020425fc
	ldr r0, _0211F6E8 ; =gFont12
	ldr r0, [r0]
	bl FUN_0204331c
	mov r2, r10
	ldr r3, [sp, #0x38]
	ldr r0, [r5]
	mov r10, #0
	str r10, [sp]
	str r10, [sp, #4]
	mov r1, r6
	str r10, [sp, #8]
	bl FUN_02059288
	sub r0, r8, r7
	ldr r1, [sp, #0x3c]
	mov r0, r0, lsl #4
	add r2, r1, #1
	and r3, r6, #0xff
	add r6, r0, #0x23
	ldr r0, [r5]
	mov r1, r4
	str r2, [sp, #0x3c]
	bl FUN_ov16_021137dc
	mov r0, r10
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, [sp, #0x3c]
	mov r1, r4
	mov r3, r10
	bl FUN_ov16_02113d88
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x3c]
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r5]
	mov r1, r4
	bl FUN_ov16_02113d08
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, [sp, #0x3c]
	mov r1, r4
	mov r3, #0xa3
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	ldr r2, [sp, #0x3c]
	mov r1, r4
	mov r3, #0xc8
	bl FUN_ov16_021139bc
_0211F664:
	add r8, r8, #1
_0211F668:
	ldr r0, [sp, #0x30]
	cmp r8, r0
	blt _0211F4A4
_0211F674:
	mov r7, #0x16
	mov r11, #0x78
	mov r6, #0x20
	mov r9, #0x10
	mov r8, #0
	mov r5, #0x14
	mov r10, #0xd
	ldr r4, _0211F6EC ; =0x02099EB4
	b _0211F6CC
_0211F698:
	stmia sp, {r6, r11}
	str r9, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r10
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_0210fba4
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	add r6, r6, #0x10
	add r8, r8, #1
_0211F6CC:
	cmp r8, #8
	blt _0211F698
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F6DC: .word unk_02099F38
_0211F6E0: .word 0x000001EA
_0211F6E4: .word 0x66666667
_0211F6E8: .word gFont12
_0211F6EC: .word unk_02099EB4
	arm_func_end FUN_ov41_0211f0c4

	arm_func_start FUN_ov41_0211f6f0
FUN_ov41_0211f6f0: ; 0x0211F6F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r7, r0
	mov r4, r5
	mov r6, r5
	ldr r8, _0211F808 ; =0x02099F38
	b _0211F750
_0211F70C:
	add r0, r7, r6, lsl #3
	ldr r1, [r0, #0xf74]
	cmp r1, #0
	beq _0211F72C
	ldr r0, [r8]
	bl FUN_ov16_021128c4
	add r0, r7, r6, lsl #3
	str r5, [r0, #0xf74]
_0211F72C:
	add r0, r7, r6, lsl #3
	ldr r1, [r0, #0xf78]
	cmp r1, #0
	beq _0211F74C
	ldr r0, [r8]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #3
	str r4, [r0, #0xf78]
_0211F74C:
	add r6, r6, #1
_0211F750:
	cmp r6, #8
	blt _0211F70C
	mov r6, #0
	ldr r5, _0211F808 ; =0x02099F38
	b _0211F7A8
_0211F764:
	add r0, r7, r6, lsl #3
	ldr r1, [r0, #0xfb4]
	cmp r1, #0
	beq _0211F784
	ldr r0, [r5]
	bl FUN_ov16_021128c4
	add r0, r7, r6, lsl #3
	str r4, [r0, #0xfb4]
_0211F784:
	add r0, r7, r6, lsl #3
	ldr r1, [r0, #0xfb8]
	cmp r1, #0
	beq _0211F7A4
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #3
	str r4, [r0, #0xfb8]
_0211F7A4:
	add r6, r6, #1
_0211F7A8:
	cmp r6, #0x10
	blt _0211F764
	mov r6, #0
	ldr r5, _0211F808 ; =0x02099F38
	b _0211F7E0
_0211F7BC:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xe10]
	cmp r1, #0
	beq _0211F7DC
	ldr r0, [r5]
	bl FUN_ov16_021128c4
	add r0, r7, r6, lsl #2
	str r4, [r0, #0xe10]
_0211F7DC:
	add r6, r6, #1
_0211F7E0:
	cmp r6, #2
	blt _0211F7BC
	ldr r4, _0211F80C ; =0x02099EB4
	mov r1, #5
	ldr r0, [r4]
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0xd
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F808: .word unk_02099F38
_0211F80C: .word unk_02099EB4
	arm_func_end FUN_ov41_0211f6f0

	arm_func_start FUN_ov41_0211f810
FUN_ov41_0211f810: ; 0x0211F810
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
	mov r8, r5
	ldr r7, _0211F8AC ; =0x02099F38
	b _0211F870
_0211F82C:
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xf74]
	cmp r1, #0
	beq _0211F84C
	ldr r0, [r7]
	bl FUN_ov16_021128c4
	add r0, r6, r5, lsl #3
	str r4, [r0, #0xf74]
_0211F84C:
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xf78]
	cmp r1, #0
	beq _0211F86C
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #3
	str r8, [r0, #0xf78]
_0211F86C:
	add r5, r5, #1
_0211F870:
	cmp r5, #8
	blt _0211F82C
	ldr r1, [r6, #0xe10]
	cmp r1, #0
	beq _0211F898
	ldr r0, _0211F8AC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r6, #0xe10]
_0211F898:
	ldr r0, _0211F8B0 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F8AC: .word unk_02099F38
_0211F8B0: .word unk_02099EB4
	arm_func_end FUN_ov41_0211f810

	arm_func_start FUN_ov41_0211f8b4
FUN_ov41_0211f8b4: ; 0x0211F8B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
	mov r8, r5
	ldr r7, _0211F950 ; =0x02099F38
	b _0211F914
_0211F8D0:
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xfb4]
	cmp r1, #0
	beq _0211F8F0
	ldr r0, [r7]
	bl FUN_ov16_021128c4
	add r0, r6, r5, lsl #3
	str r4, [r0, #0xfb4]
_0211F8F0:
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xfb8]
	cmp r1, #0
	beq _0211F910
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #3
	str r8, [r0, #0xfb8]
_0211F910:
	add r5, r5, #1
_0211F914:
	cmp r5, #0x10
	blt _0211F8D0
	ldr r1, [r6, #0xe14]
	cmp r1, #0
	beq _0211F93C
	ldr r0, _0211F950 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r6, #0xe14]
_0211F93C:
	ldr r0, _0211F954 ; =0x02099EB4
	mov r1, #0xd
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F950: .word unk_02099F38
_0211F954: .word unk_02099EB4
	arm_func_end FUN_ov41_0211f8b4

	arm_func_start FUN_ov41_0211f958
FUN_ov41_0211f958: ; 0x0211F958
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r2, #0x68
	mla r0, r1, r2, r0
	add r0, r0, #0x700
	ldrh r0, [r0, #0x9c]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, pc}
	mov r4, #0
	mov r1, r4
	bl FUN_ov16_020efa9c
	str r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, _0211F9C4 ; =0x020A1740
	ldr r0, _0211F9C8 ; =0x0209BA20
	ldrsh r1, [r1, #0x7c]
	add r2, sp, #0
	mov r3, #1
	and r1, r1, #0xff
	bl FUN_02073808
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211F9C4: .word unk_020A1740
_0211F9C8: .word unk_0209BA20
	arm_func_end FUN_ov41_0211f958

	arm_func_start FUN_ov41_0211f9cc
FUN_ov41_0211f9cc: ; 0x0211F9CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x38
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x1000
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x1000
	str r4, [r0, #0x40]
	str r4, [r0, #0x44]
	str r4, [r0, #0x48]
	str r4, [r0, #0x4c]
	str r4, [r0, #0x50]
	str r4, [r0, #0x54]
	str r4, [r0, #0x58]
	str r4, [r0, #0x5c]
	str r4, [r0, #0x60]
	str r4, [r0, #0x64]
	str r4, [r0, #0x68]
	str r4, [r0, #0x6c]
	str r4, [r0, #0x70]
	str r4, [r0, #0x74]
	str r4, [r0, #0x78]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov41_0211f9cc

	arm_func_start FUN_ov41_0211fa30
FUN_ov41_0211fa30: ; 0x0211FA30
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	mov r1, #0
	str r1, [r0, #0x38]
	bx lr
	arm_func_end FUN_ov41_0211fa30

	arm_func_start FUN_ov41_0211fa44
FUN_ov41_0211fa44: ; 0x0211FA44
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r1, _0211FAAC ; =0x02099F38
	mov r4, #1
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_02112724
	mov r2, #0
	mov r1, r0
	str r2, [sp, #0x14]
	str r1, [r5, #0xea4]
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0x12c
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	mov r3, #0xd
	str r4, [sp, #0x10]
	bl FUN_ov41_0211d814
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211FAAC: .word unk_02099F38
	arm_func_end FUN_ov41_0211fa44

	arm_func_start FUN_ov41_0211fab0
FUN_ov41_0211fab0: ; 0x0211FAB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r12, #0
	add lr, r7, #0x1000
	add r4, r7, r12, lsl #2
	mov r5, #1
	str r5, [lr, #0x40]
	str r12, [lr, #0x44]
	add r4, r4, #0x1000
	ldr r6, [r4, #0x38]
	mov r5, r2
	mov r4, r3
	mla r3, r4, r6, r5
	add r2, r7, #0x38
	str r3, [lr, #0x4c]
	add r8, r2, #0x1000
	ldr r3, [r8, r12, lsl #2]
	ldr r2, [sp, #0x18]
	mov r6, r1
	add r1, r3, r2
	str r1, [r8, r12, lsl #2]
	ldr r1, [lr, #0x44]
	add r1, r7, r1, lsl #2
	add r1, r1, #0x1000
	ldr r3, [r1, #0x38]
	cmp r3, #0
	bge _0211FB80
	str r12, [r1, #0x38]
	ldr r1, [lr, #0x7c]
	cmp r1, #1
	bne _0211FBF0
	ldr r1, [lr, #0x80]
	cmp r1, #0
	ble _0211FBF0
	sub r1, r1, #1
	str r1, [lr, #0x80]
	bl FUN_ov41_0211f8b4
	mov r0, r7
	bl FUN_ov41_0211f0c4
	mov r0, r7
	mov r1, #2
	bl FUN_ov41_0211ae58
	mov r0, r7
	bl FUN_ov41_02120180
	ldrb r0, [r7, #0x81]
	cmp r0, #2
	addeq r0, r7, #0x1000
	ldreq r1, [r0, #0x9c]
	cmpeq r1, #1
	ldreq r1, [r0, #0xa8]
	addeq r1, r1, #0x10
	b _0211FBEC
_0211FB80:
	ldr r2, [sp, #0x1c]
	cmp r3, r2
	ble _0211FBF0
	str r2, [r1, #0x38]
	ldr r1, [lr, #0x7c]
	cmp r1, #1
	bne _0211FBF0
	ldr r1, [lr, #0x80]
	cmp r1, #8
	bge _0211FBF0
	add r1, r1, #1
	str r1, [lr, #0x80]
	bl FUN_ov41_0211f8b4
	mov r0, r7
	bl FUN_ov41_0211f0c4
	mov r0, r7
	mov r1, #3
	bl FUN_ov41_0211ae58
	mov r0, r7
	bl FUN_ov41_02120180
	ldrb r0, [r7, #0x81]
	cmp r0, #2
	addeq r0, r7, #0x1000
	ldreq r1, [r0, #0x9c]
	cmpeq r1, #1
	ldreq r1, [r0, #0xa8]
	subeq r1, r1, #0x10
_0211FBEC:
	streq r1, [r0, #0xa8]
_0211FBF0:
	add r1, r7, #0x1000
	ldr r0, [r1, #0x44]
	str r6, [r1, #0x48]
	add r0, r7, r0, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x38]
	mov r2, #0xc
	mla r3, r4, r0, r5
	ldr r0, [r1, #0x4c]
	str r2, [r1, #0x54]
	cmp r0, r3
	subgt r0, r2, #0xd
	mulgt r0, r2, r0
	strgt r0, [r1, #0x54]
	str r3, [r1, #0x50]
	ldr r0, _0211FC44 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r7
	bl FUN_ov41_021215e0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FC44: .word gL5Sound
	arm_func_end FUN_ov41_0211fab0

	arm_func_start FUN_ov41_0211fc48
FUN_ov41_0211fc48: ; 0x0211FC48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0x1000
	ldr r6, [r4, #0x7c]
	mov r3, #0x78
	mul r5, r6, r3
	ldr r3, [r4, #0x38]
	mov r6, #1
	mov r3, r3, lsl #4
	add r3, r3, #0x20
	str r6, [r4, #0x5c]
	str r5, [r4, #0x60]
	str r3, [r4, #0x64]
	cmp r2, #0
	beq _0211FC90
	cmp r2, #1
	subeq r1, r1, #0x16
	streq r1, [r4, #0x38]
	b _0211FC98
_0211FC90:
	sub r1, r1, #0xd
	str r1, [r4, #0x38]
_0211FC98:
	mov r1, #0x78
	mul r12, r2, r1
	add r5, r0, #0x1000
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x38]
	sub r7, r12, r1
	mov r2, r2, lsl #4
	add r3, r2, #0x20
	ldr r2, [r5, #0x64]
	ldr r4, _0211FD4C ; =0x66666667
	sub r6, r3, r2
	smull lr, r2, r4, r7
	mov lr, r7, lsr #0x1f
	add r2, lr, r2, asr #1
	smull lr, r7, r4, r6
	mov lr, r6, lsr #0x1f
	add r7, lr, r7, asr #1
	str r12, [r5, #0x68]
	str r3, [r5, #0x6c]
	str r2, [r5, #0x70]
	str r7, [r5, #0x74]
	cmp r1, r12
	ble _0211FD0C
	sub r2, r1, r12
	smull r1, r3, r4, r2
	mov r1, r2, lsr #0x1f
	add r3, r1, r3, asr #1
	rsb r1, r3, #0
	str r1, [r5, #0x70]
_0211FD0C:
	add r2, r0, #0x1000
	ldr r3, [r2, #0x6c]
	ldr r0, [r2, #0x64]
	cmp r0, r3
	ble _0211FD3C
	ldr r1, _0211FD4C ; =0x66666667
	sub r3, r0, r3
	smull r0, r4, r1, r3
	mov r0, r3, lsr #0x1f
	add r4, r0, r4, asr #1
	rsb r0, r4, #0
	str r0, [r2, #0x74]
_0211FD3C:
	ldr r0, _0211FD50 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211FD4C: .word 0x66666667
_0211FD50: .word gL5Sound
	arm_func_end FUN_ov41_0211fc48

	arm_func_start FUN_ov41_0211fd54
FUN_ov41_0211fd54: ; 0x0211FD54
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add r3, r0, #0x1000
	ldr r1, [r3, #0x58]
	ldr r12, [r3, #0x54]
	add lr, r1, #1
	ldr r2, [r3, #0x4c]
	mov r1, #0
	mla r4, r12, lr, r2
	str lr, [r3, #0x58]
	cmp r12, #0
	mov r2, r1
	ldr lr, [r3, #0x48]
	ldr r12, [r3, #0x50]
	bge _0211FDA4
	cmp r4, r12
	movlt r4, r12
	strlt r1, [r3, #0x40]
	strlt r1, [r3, #0x58]
	b _0211FDB4
_0211FDA4:
	cmp r4, r12
	movgt r4, r12
	strgt r1, [r3, #0x40]
	strgt r1, [r3, #0x58]
_0211FDB4:
	ldrb r3, [r0, #0x81]
	cmp r3, #1
	cmpne r3, #2
	ldreq r1, [r0, #0xea4]
	mov r0, r4, lsl #0x10
	mov r3, r0, asr #0x10
	str r3, [sp]
	ldr r0, _0211FDF0 ; =0x02099F38
	mov r3, lr, lsl #0x10
	ldr r0, [r0]
	moveq r2, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211FDF0: .word unk_02099F38
	arm_func_end FUN_ov41_0211fd54

	arm_func_start FUN_ov41_0211fdf4
FUN_ov41_0211fdf4: ; 0x0211FDF4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add lr, r0, #0x1000
	ldr r1, [lr, #0x78]
	ldr r2, [lr, #0x70]
	add r1, r1, #1
	ldr r3, [lr, #0x60]
	ldr r12, [lr, #0x64]
	ldr r4, [lr, #0x74]
	str r1, [lr, #0x78]
	mla r3, r2, r1, r3
	mla r12, r4, r1, r12
	cmp r2, #0
	ldr r1, [r0, #0xea4]
	mov r2, #1
	ldr lr, [lr, #0x68]
	bge _0211FE44
	cmp r3, lr
	movlt r3, lr
	b _0211FE4C
_0211FE44:
	cmp r3, lr
	movgt r3, lr
_0211FE4C:
	add lr, r0, #0x1000
	cmp r4, #0
	ldr lr, [lr, #0x6c]
	bge _0211FE68
	cmp r12, lr
	movlt r12, lr
	b _0211FE70
_0211FE68:
	cmp r12, lr
	movgt r12, lr
_0211FE70:
	add r0, r0, #0x1000
	ldr lr, [r0, #0x68]
	cmp r3, lr
	ldreq lr, [r0, #0x6c]
	mov r3, r3, lsl #0x10
	cmpeq r12, lr
	moveq lr, #0
	streq lr, [r0, #0x5c]
	streq lr, [r0, #0x78]
	mov r0, r12, lsl #0x10
	mov r12, r0, asr #0x10
	ldr r0, _0211FEB8 ; =0x02099F38
	str r12, [sp]
	ldr r0, [r0]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211FEB8: .word unk_02099F38
	arm_func_end FUN_ov41_0211fdf4

	arm_func_start FUN_ov41_0211febc
FUN_ov41_0211febc: ; 0x0211FEBC
	add r1, r0, #0x1000
	ldr r2, [r1, #0x7c]
	cmp r2, #0
	bne _0211FEE4
	ldr r2, [r1, #0x38]
	mov r1, #0x68
	mla r0, r2, r1, r0
	add r0, r0, #0x400
	ldrh r0, [r0, #0x5c]
	bx lr
_0211FEE4:
	ldr r3, [r1, #0x38]
	ldr r2, [r1, #0x80]
	mov r1, #0x68
	add r2, r3, r2
	mla r0, r2, r1, r0
	add r0, r0, #0x700
	ldrh r0, [r0, #0x9c]
	bx lr
	arm_func_end FUN_ov41_0211febc

	arm_func_start FUN_ov41_0211ff04
FUN_ov41_0211ff04: ; 0x0211FF04
	add r1, r0, #0x1000
	ldr r2, [r1, #0x7c]
	cmp r2, #0
	ldreq r2, [r1, #0x38]
	moveq r1, #0x68
	mlaeq r0, r2, r1, r0
	ldreqb r0, [r0, #0x470]
	bxeq lr
	ldr r3, [r1, #0x38]
	ldr r2, [r1, #0x80]
	mov r1, #0x68
	add r2, r3, r2
	mla r0, r2, r1, r0
	ldrb r0, [r0, #0x7b0]
	bx lr
	arm_func_end FUN_ov41_0211ff04

	arm_func_start FUN_ov41_0211ff40
FUN_ov41_0211ff40: ; 0x0211FF40
	add r1, r0, #0x1000
	ldr r2, [r1, #0x7c]
	cmp r2, #0
	bne _0211FF74
	ldr r2, [r1, #0x38]
	mov r1, #0x68
	mla r0, r2, r1, r0
	add r0, r0, #0x400
	ldrh r0, [r0, #0x60]
	cmp r0, #0
	bne _0211FF9C
	mov r0, #1
	bx lr
_0211FF74:
	ldr r3, [r1, #0x38]
	ldr r2, [r1, #0x80]
	mov r1, #0x68
	add r2, r3, r2
	mla r0, r2, r1, r0
	add r0, r0, #0x700
	ldrh r0, [r0, #0xa0]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
_0211FF9C:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov41_0211ff40

	arm_func_start FUN_ov41_0211ffa4
FUN_ov41_0211ffa4: ; 0x0211FFA4
	add r1, r0, #0x1000
	ldr r2, [r1, #0x7c]
	cmp r2, #0
	ldreq r2, [r1, #0x38]
	moveq r1, #0x68
	mlaeq r0, r2, r1, r0
	ldreq r0, [r0, #0x4ac]
	bxeq lr
	ldr r3, [r1, #0x38]
	ldr r2, [r1, #0x80]
	mov r1, #0x68
	add r2, r3, r2
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x7ec]
	bx lr
	arm_func_end FUN_ov41_0211ffa4

	arm_func_start FUN_ov41_0211ffe0
FUN_ov41_0211ffe0: ; 0x0211FFE0
	add r0, r0, #0x1000
	mov r2, #0
	mov r1, #0x40
	str r2, [r0, #0x80]
	str r2, [r0, #0x84]
	str r2, [r0, #0x88]
	str r2, [r0, #0x8c]
	str r2, [r0, #0x90]
	str r1, [r0, #0x94]
	bx lr
	arm_func_end FUN_ov41_0211ffe0

	arm_func_start FUN_ov41_02120008
FUN_ov41_02120008: ; 0x02120008
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r1, _0212017C ; =0x02121A28
	add r4, sp, #0x10
	mov r10, r0
	ldmia r1, {r0, r1, r2, r3}
	mov r7, #0
	stmia r4, {r0, r1, r2, r3}
	mov r8, #1
	mov r9, r7
	mov r6, #3
	mov r4, r7
	mov r11, r8
_0212003C:
	mov r0, #0xf0
	str r0, [sp]
	add r0, sp, #0x10
	ldr r1, [r0, r9, lsl #2]
	mov r3, #0x190
	stmib sp, {r1, r8}
	str r3, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	mov r2, #8
	mov r3, r7
	bl FUN_ov41_0211ad30
	movs r5, r0
	beq _021200C4
	mov r1, r4
	mov r2, r11
	add r0, r5, #0x3a
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3a
	mov r1, r4
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_0210e720
	add r0, r5, #0x3e
	mov r1, r4
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r4
	add r2, r7, #1
	mov r3, r4
	bl FUN_ov16_0210e720
_021200C4:
	add r9, r9, #1
	cmp r9, #4
	add r6, r6, #1
	add r7, r7, #2
	add r8, r8, #1
	blt _0212003C
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0x40
	mov r6, #0
	str r0, [sp, #4]
	mov r1, #5
	str r1, [sp, #8]
	mov r4, #0x190
	mov r0, r10
	mov r3, r6
	mov r1, #7
	mov r2, #9
	str r4, [sp, #0xc]
	bl FUN_ov41_0211ad30
	movs r5, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212017C: .word ov41_02121A28
	arm_func_end FUN_ov41_02120008

	arm_func_start FUN_ov41_02120180
FUN_ov41_02120180: ; 0x02120180
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r1, #0x20
	mov r0, r1, asr #2
	add r2, r6, #0x1000
	add r0, r1, r0, lsr #29
	ldr r1, [r2, #0x80]
	mov r0, r0, asr #3
	mul r1, r0, r1
	add r5, r1, #0x40
	mov r0, r5, lsl #0x10
	mov r4, #0xf0
	ldr r1, [r6, #0xeb8]
	str r5, [r2, #0x94]
	mov r2, r0, asr #0x10
	ldr r0, _02120200 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r3, r4
	mov r2, #1
	bl FUN_ov16_02113b78
	ldr r0, _02120204 ; =0x02099EB4
	mov r2, r4
	ldr r0, [r0]
	mov r3, r5
	mov r1, #5
	bl FUN_ov16_0210fd0c
	mov r0, r6
	bl FUN_ov41_021215e0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02120200: .word unk_02099F38
_02120204: .word unk_02099EB4
	arm_func_end FUN_ov41_02120180

	arm_func_start FUN_ov41_02120208
FUN_ov41_02120208: ; 0x02120208
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r2, _02120310 ; =0x02121A38
	add r10, sp, #0x10
	mov r4, r0
	sub r7, r1, #1
	ldmia r2, {r0, r1, r2, r3}
	stmia r10, {r0, r1, r2, r3}
	add r12, r4, #0x1000
	ldr r6, [r12, #0x80]
	mov r8, #0
	rsb r0, r6, #8
	mov r0, r0, lsl #4
	mov r2, r6, lsl #4
	rsb r0, r0, #0
	ldr r1, _02120314 ; =0x02121A48
	add r11, sp, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x1c]
	ldmia r1, {r0, r1, r2, r3}
	stmia r11, {r0, r1, r2, r3}
	sub r5, r6, #1
	add lr, r6, #1
	cmp r7, #3
	mov r9, r8
	str r5, [sp, #4]
	str lr, [sp, #8]
	addls pc, pc, r7, lsl #2
	b _021202B8
_0212027C: ; jump table
	b _0212028C ; case 0
	b _0212028C ; case 1
	b _021202A4 ; case 2
	b _021202A4 ; case 3
_0212028C:
	cmp r6, #0
	ldrgt r0, [r11, r7, lsl #2]
	movgt r8, #1
	strgt r0, [r12, #0x80]
	ldrgt r9, [r10, r7, lsl #2]
	b _021202B8
_021202A4:
	cmp r6, #8
	ldrlt r0, [r11, r7, lsl #2]
	movlt r8, #1
	strlt r0, [r12, #0x80]
	ldrlt r9, [r10, r7, lsl #2]
_021202B8:
	cmp r8, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0x81]
	cmp r0, #2
	addeq r0, r4, #0x1000
	ldreq r1, [r0, #0x9c]
	cmpeq r1, #1
	ldreq r1, [r0, #0xa8]
	addeq r1, r1, r9
	streq r1, [r0, #0xa8]
	mov r0, r4
	bl FUN_ov41_0211f8b4
	mov r0, r4
	bl FUN_ov41_0211f0c4
	mov r0, r4
	bl FUN_ov41_02120180
	ldr r0, _02120318 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120310: .word ov41_02121A38
_02120314: .word ov41_02121A48
_02120318: .word gL5Sound
	arm_func_end FUN_ov41_02120208

	arm_func_start FUN_ov41_0212031c
FUN_ov41_0212031c: ; 0x0212031C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r2, r4, #0x1000
	ldr r3, [r2, #0x88]
	cmp r3, #0xf
	addlt r0, r3, #1
	strlt r0, [r2, #0x88]
	ldmltfd sp!, {r4, pc}
	ldr r2, [r2, #0x8c]
	cmp r2, #0
	bne _0212034C
	bl FUN_ov41_02120208
_0212034C:
	add r3, r4, #0x1000
	ldr r0, [r3, #0x8c]
	ldr r2, _0212037C ; =0x66666667
	add r12, r0, #1
	mov r0, r12, lsr #0x1f
	smull r1, lr, r2, r12
	add lr, r0, lr, asr #1
	mov r2, #5
	smull r0, r1, r2, lr
	sub lr, r12, r0
	str lr, [r3, #0x8c]
	ldmfd sp!, {r4, pc}
_0212037C: .word 0x66666667
	arm_func_end FUN_ov41_0212031c

	arm_func_start FUN_ov41_02120380
FUN_ov41_02120380: ; 0x02120380
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _021203B0 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	add r1, sp, #0
	bl FUN_ov16_0210f48c
	ldrsh r1, [sp, #2]
	add r0, r4, #0x1000
	str r1, [r0, #0x90]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021203B0: .word unk_02099EB4
	arm_func_end FUN_ov41_02120380

	arm_func_start FUN_ov41_021203b4
FUN_ov41_021203b4: ; 0x021203B4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r1, _021204F4 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	add r1, sp, #4
	ldr r6, [r4, #0xeb8]
	mov r7, #1
	mov r8, #0xf0
	mov r5, #0x40
	mov r10, #0x60
	bl FUN_ov16_0210f48c
	ldrsh r0, [sp, #4]
	cmp r0, #0xf0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #0x100
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r4, #0x1000
	ldr r1, [r0, #0x90]
	ldrsh r2, [sp, #6]
	ldr r0, [r0, #0x94]
	ldrb r3, [r4, #0x81]
	sub r1, r2, r1
	add r9, r0, r1
	cmp r9, r5
	movlt r9, r5
	cmp r9, r10
	movgt r9, r10
	sub r1, r9, #0x40
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	add r2, r4, #0x1000
	ldrsh r10, [sp, #6]
	ldr r0, [r2, #0x80]
	mov r5, r1, asr #2
	cmp r3, #2
	ldreq r1, [r2, #0x9c]
	str r10, [r2, #0x90]
	str r9, [r2, #0x94]
	str r5, [r2, #0x80]
	cmpeq r1, #1
	bne _02120494
	cmp r0, r5
	ldrlt r3, [r2, #0xa8]
	sublt r1, r5, r0
	sublt r1, r3, r1, lsl #4
	strlt r1, [r2, #0xa8]
	add r1, r4, #0x1000
	ldr r3, [r1, #0x80]
	cmp r0, r3
	ldrgt r2, [r1, #0xa8]
	subgt r0, r0, r3
	addgt r0, r2, r0, lsl #4
	strgt r0, [r1, #0xa8]
_02120494:
	mov r0, r4
	bl FUN_ov41_0211f8b4
	mov r0, r4
	bl FUN_ov41_0211f0c4
	mov r0, r9, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _021204F8 ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	mov r2, r7
	mov r3, r8, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r2, r8
	mov r3, r9
	ldr r0, _021204F4 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl FUN_ov16_0210fd0c
	mov r0, r4
	bl FUN_ov41_021215e0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021204F4: .word unk_02099EB4
_021204F8: .word unk_02099F38
	arm_func_end FUN_ov41_021203b4

	arm_func_start FUN_ov41_021204fc
FUN_ov41_021204fc: ; 0x021204FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldrsh r9, [r4, #0x30]
	mov r8, #1
	mov r7, #0
	str r8, [sp]
	str r7, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r6, #4
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r5, _021205A4 ; =0x02099ED4
	ldrb r1, [r4, #0x11]
	ldrh r3, [r4, #0x34]
	ldr r0, [r5]
	mov r2, r7
	bl FUN_ov16_0210e3f0
	ldrb r1, [r4, #0x11]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_0210e5f0
	str r8, [sp]
	stmib sp, {r7, r9}
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	ldrb r1, [r4, #0x11]
	ldrh r3, [r4, #0x34]
	ldr r0, [r5]
	mov r2, r7
	bl FUN_ov16_0210e3f0
	ldrb r1, [r4, #0x11]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_0210e5f0
	ldrsh r1, [r4, #0x30]
	mov r0, r4
	strh r1, [r4, #0x30]
	bl FUN_ov41_021205a8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021205A4: .word unk_02099ED4
	arm_func_end FUN_ov41_021204fc

	arm_func_start FUN_ov41_021205a8
FUN_ov41_021205a8: ; 0x021205A8
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldrsh r1, [r0, #0x30]
	mov r3, #1
	mov r2, #0
	str r3, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r12, _021205EC ; =0x02099ED4
	ldrb r1, [r0, #0x11]
	ldrh r3, [r0, #0x34]
	ldr r0, [r12]
	bl FUN_ov16_0210e3f0
	add sp, sp, #0x14
	ldmia sp!, {pc}
_021205EC: .word unk_02099ED4
	arm_func_end FUN_ov41_021205a8

	arm_func_start FUN_ov41_021205f0
FUN_ov41_021205f0: ; 0x021205F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0xebc]
	cmp r0, #0
	bne _0212061C
	ldr r0, _02120720 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	str r0, [r7, #0xebc]
_0212061C:
	ldr r4, _02120720 ; =0x02099F38
	ldr r5, [r7, #0xebc]
	ldr r2, [r7, #0xe60]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r6, #0
	str r6, [sp]
	mov r8, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r8
	mov r3, #0xd8
	bl FUN_ov16_02113b78
	ldr r0, [r7, #0x68]
	mov r1, #0
	cmp r0, #0
	str r1, [sp]
	ldr r0, _02120720 ; =0x02099F38
	movne r6, r8
	mov r4, #1
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov16_0211401c
	ldr r8, _02120724 ; =0x02099EB4
	mov r9, #6
	ldr r0, [r8]
	mov r1, r9
	bl FUN_ov16_0210e7d0
	movs r6, r0
	bne _021206C4
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_0210fbe8
	mov r6, r0
_021206C4:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0
	mov r5, #0x10
	mov r0, r6
	mov r2, r4
	mov r1, #0xa0
	mov r3, #0x58
	str r5, [sp]
	bl FUN_ov16_0210e674
	mov r0, #1
	strb r0, [r6, #0x11]
	mov r0, #0x400
	strh r0, [r6, #0xc]
	ldr r0, _02120728 ; =FUN_ov41_021205a8
	str r4, [r6, #0x1c]
	str r0, [r6, #0x20]
	ldr r0, _0212072C ; =FUN_ov41_021204fc
	str r4, [r6, #0x24]
	str r0, [r6, #0x28]
	ldr r0, [r7, #0x68]
	strh r0, [r6, #0x30]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02120720: .word unk_02099F38
_02120724: .word unk_02099EB4
_02120728: .word FUN_ov41_021205a8
_0212072C: .word FUN_ov41_021204fc
	arm_func_end FUN_ov41_021205f0

	arm_func_start FUN_ov41_02120730
FUN_ov41_02120730: ; 0x02120730
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	ldr r0, [r5, #0xed4]
	cmp r0, #0
	bne _0212075C
	ldr r0, _0212094C ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r5, #0xed4]
_0212075C:
	ldr r6, _0212094C ; =0x02099F38
	ldr r4, [r5, #0xed4]
	mov r9, #1
	mov r8, #2
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113f7c
	ldr r3, [r5, #0xe84]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r7, #0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r0, #0x38
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r4
	mov r2, r9
	mov r3, #0x96
	bl FUN_ov16_021139bc
	mov r2, r9
	ldr r0, [r6]
	mov r1, r4
	mov r3, r8
	bl FUN_ov16_02113f7c
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	ldr r3, [r5, #0xe54]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, #0x64
	bl FUN_ov16_021139bc
	mov r3, #0x68
	str r3, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	bl FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_02113f7c
	add r0, r5, #0x1000
	ldr r0, [r0, #0x150]
	cmp r0, #0
	bne _021208A8
	ldr r0, [r6]
	mov r1, #5
	mov r2, #4
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, r5, #0x1000
	str r1, [r0, #0x150]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_021208A8:
	mov r0, #0x3e
	ldr r8, _0212094C ; =0x02099F38
	str r0, [sp]
	mov r7, #3
	mov r6, #0
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113b78
	add r0, r5, #0x1000
	ldr r3, [r0, #0x150]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x32
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r6, [sp]
	mov r3, r6
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_02113d88
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	mov r3, #0x64
	bl FUN_ov16_021139bc
	ldr r0, [r8]
	mov r1, r4
	mov r2, r7
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212094C: .word unk_02099F38
	arm_func_end FUN_ov41_02120730

	arm_func_start FUN_ov41_02120950
FUN_ov41_02120950: ; 0x02120950
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r8, #2
	mov r7, #0
	str r8, [sp]
	str r7, [sp, #4]
	mov r6, #1
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	mov r9, r0
	str r7, [sp, #0x10]
	ldr r4, _021209EC ; =0x02099ED4
	ldrb r1, [r9, #0x11]
	ldrh r3, [r9, #0x34]
	ldr r0, [r4]
	mov r2, r7
	bl FUN_ov16_0210e4f0
	mov r5, #4
	ldrb r1, [r9, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	str r8, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r2, r7
	ldr r0, [r4]
	ldrb r1, [r9, #0x11]
	ldrh r3, [r9, #0x34]
	bl FUN_ov16_0210e4f0
	ldr r0, [r4]
	mov r2, r5
	ldrb r1, [r9, #0x11]
	bl FUN_ov16_0210e5f0
	strb r6, [r9, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021209EC: .word unk_02099ED4
	arm_func_end FUN_ov41_02120950

	arm_func_start FUN_ov41_021209f0
FUN_ov41_021209f0: ; 0x021209F0
	mov r1, #0
	strb r1, [r0, #0xe]
	ldr r3, _02120A14 ; =0x02099F38
	ldrh r1, [r0, #0x34]
	mov r2, #2
	ldr r0, [r3]
	ldr r12, _02120A18 ; = FUN_ov16_02113f7c
	mov r3, r2
	bx r12
_02120A14: .word unk_02099F38
_02120A18: .word FUN_ov16_02113f7c
	arm_func_end FUN_ov41_021209f0

	arm_func_start FUN_ov41_02120a1c
FUN_ov41_02120a1c: ; 0x02120A1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc0
	mov r2, #0
	mov r6, r0
	add r1, sp, #0x40
	str r2, [sp, #0x18]
	mov r0, #0x20
_02120A38:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _02120A38
	mov r4, #1
	str r4, [sp]
	ldr r0, _02120BCC ; =0x02099F38
	mov r5, #2
	ldr r0, [r0]
	ldr r1, [r6, #0xed4]
	mov r2, r4
	mov r3, r5
	bl FUN_ov16_02113ec0
	str r5, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	ldr r0, _02120BD0 ; =0x02099EB4
	ldr r3, [r6, #0xed4]
	ldr r0, [r0]
	mov r1, r5
	mov r2, #0xa
	bl FUN_ov16_0210fc74
	mov r1, #0x68
	mov r3, #0x18
	mov r5, r0
	mov r2, r1
	str r3, [sp]
	mov r3, #0x30
	bl FUN_ov16_0210e674
	cmp r5, #0
	beq _02120AE0
	strb r4, [r5, #0x11]
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r1, _02120BD4 ; =FUN_ov41_02120950
	str r0, [r5, #0x24]
	ldr r0, _02120BD8 ; =FUN_ov41_021209f0
	str r1, [r5, #0x28]
	str r0, [r5, #0x20]
_02120AE0:
	ldr r4, _02120BDC ; =0x02121A58
	add r3, sp, #0x1c
	mov r2, #0x12
_02120AEC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02120AEC
	ldrb r2, [r6, #0xe09]
	add r5, sp, #0x40
	add r3, sp, #0x1c
	ldr r1, _02120BE0 ; =0x0212238C
	mov r0, r5
	add r2, r3, r2, lsl #2
	bl sprintf
	mov r4, #1
	str r4, [sp]
	ldr r7, _02120BCC ; =0x02099F38
	ldr r1, [r6, #0xed4]
	ldr r0, [r7]
	mov r2, #3
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r0, _02120BE4 ; =gFont12
	mov r1, r4
	ldr r0, [r0]
	mov r2, #4
	bl FUN_02043310
	add r0, r6, #0x1000
	ldr r1, [r0, #0x150]
	mov r8, #0
	ldr r0, [r7]
	add r2, sp, #0x14
	add r3, sp, #0x18
	str r8, [sp, #0x14]
	bl FUN_0205935c
	add r1, r6, #0x1000
	ldr r0, [r7]
	ldr r7, [sp, #0x14]
	ldr r1, [r1, #0x150]
	bl FUN_ov16_02111458
	cmp r7, #0
	beq _02120BB8
	stmia sp, {r4, r8}
	str r8, [sp, #8]
	str r8, [sp, #0xc]
	str r4, [sp, #0x10]
	add r0, r6, #0x1000
	ldr r1, [r0, #0x150]
	mov r0, r5
	mov r2, r4
	mov r3, #9
	bl FUN_ov16_020f2304
_02120BB8:
	ldr r0, _02120BE4 ; =gFont12
	ldr r0, [r0]
	bl FUN_0204331c
	add sp, sp, #0xc0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02120BCC: .word unk_02099F38
_02120BD0: .word unk_02099EB4
_02120BD4: .word FUN_ov41_02120950
_02120BD8: .word FUN_ov41_021209f0
_02120BDC: .word ov41_02121A58
_02120BE0: .word ov41_0212238C
_02120BE4: .word gFont12
	arm_func_end FUN_ov41_02120a1c

	arm_func_start FUN_ov41_02120be8
FUN_ov41_02120be8: ; 0x02120BE8
	stmfd sp!, {r4, lr}
	ldr r1, _02120C1C ; =0x02099F38
	mov r2, r0
	mov r4, #2
	ldr r0, [r1]
	ldr r1, [r2, #0xed4]
	mov r2, r4
	bl FUN_ov16_02113390
	ldr r0, _02120C20 ; =0x02099EB4
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_02120C1C: .word unk_02099F38
_02120C20: .word unk_02099EB4
	arm_func_end FUN_ov41_02120be8

	arm_func_start FUN_ov41_02120c24
FUN_ov41_02120c24: ; 0x02120C24
	ldr r0, _02120C38 ; =0x02099EB4
	ldr r12, _02120C3C ; = FUN_ov16_0210efac
	ldr r0, [r0]
	mov r1, #0xa
	bx r12
_02120C38: .word unk_02099EB4
_02120C3C: .word FUN_ov16_0210efac
	arm_func_end FUN_ov41_02120c24

	arm_func_start FUN_ov41_02120c40
FUN_ov41_02120c40: ; 0x02120C40
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r1, #0xc0
	str r1, [sp]
	mov r1, #0xa8
	mov r6, #0
	str r1, [sp, #4]
	mov r1, #7
	str r1, [sp, #8]
	mov r4, #0x190
	mov r3, r6
	mov r1, #0xa
	mov r2, #5
	str r4, [sp, #0xc]
	bl FUN_ov41_0211ad30
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r6
	mov r2, r4
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r4
	add r0, r5, #0x42
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x42
	mov r1, r6
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov41_02120c40

	arm_func_start FUN_ov41_02120d0c
FUN_ov41_02120d0c: ; 0x02120D0C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, #0
	str r6, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #9
	str r1, [sp, #8]
	mov r4, #0x190
	mov r3, r6
	mov r1, #0xc
	mov r2, #0xb
	str r4, [sp, #0xc]
	bl FUN_ov41_0211ad30
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r6
	mov r2, r4
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r4
	add r0, r5, #0x42
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x42
	mov r1, r6
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov41_02120d0c

	arm_func_start FUN_ov41_02120dd4
FUN_ov41_02120dd4: ; 0x02120DD4
	mov r2, #0
	add r0, r0, #0x1000
	sub r1, r2, #1
	str r2, [r0, #0x98]
	str r2, [r0, #0x9c]
	str r2, [r0, #0xa0]
	str r2, [r0, #0xa4]
	str r2, [r0, #0xa8]
	str r2, [r0, #0xac]
	str r2, [r0, #0xb0]
	str r2, [r0, #0xb4]
	str r2, [r0, #0xb8]
	str r2, [r0, #0xbc]
	str r1, [r0, #0xc0]
	str r1, [r0, #0xc4]
	bx lr
	arm_func_end FUN_ov41_02120dd4

	arm_func_start FUN_ov41_02120e14
FUN_ov41_02120e14: ; 0x02120E14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r1, #6
	str r1, [sp, #0x14]
	mov r1, #0x88
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	mov r1, #0x190
	str r1, [sp, #0xc]
	mov r6, #0
	ldr r2, [sp, #0x14]
	mov r3, r6
	mov r1, #0xb
	mov r9, r0
	bl FUN_ov41_0211ad30
	movs r5, r0
	beq _02120EB8
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r6
	add r2, r6, #1
	mov r3, r6
	bl FUN_ov16_0210e720
_02120EB8:
	ldr r10, _02120F68 ; =0x02099F38
	mov r8, #4
	ldr r0, [r10]
	mov r1, r8
	mov r2, #1
	bl FUN_ov16_02112724
	mov r7, r0
	mov r6, #0
	str r6, [sp, #0x14]
	str r7, [r9, #0xed0]
	add r4, sp, #0x14
	str r6, [sp]
	mov r5, #0x10
	str r5, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0xc3
	str r0, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r2, r4
	str r6, [sp, #0x10]
	mov r3, #0xe
	bl FUN_ov41_0211d814
	ldr r0, [r10]
	mov r10, #0xf
	ldr r2, [sp, #0x14]
	mov r1, r7
	mov r3, r10
	bl FUN_ov16_02113a80
	str r6, [sp]
	mov r2, r4
	str r5, [sp, #4]
	mov r4, #0x30
	add r10, r10, #0x1e0
	str r4, [sp, #8]
	str r10, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r3, r8
	str r6, [sp, #0x10]
	bl FUN_ov41_0211d814
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02120F68: .word unk_02099F38
	arm_func_end FUN_ov41_02120e14

	arm_func_start FUN_ov41_02120f6c
FUN_ov41_02120f6c: ; 0x02120F6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r2, #0
	add r0, r6, #0x1000
	sub r1, r2, #1
	mov r5, #2
	ldr r4, _02120FD0 ; =0x02099F38
	str r2, [r0, #0x98]
	str r2, [r0, #0x9c]
	str r2, [r0, #0xa0]
	str r2, [r0, #0xa4]
	str r2, [r0, #0xa8]
	str r1, [r0, #0xc0]
	str r1, [r0, #0xc4]
	ldr r0, [r4]
	ldr r1, [r6, #0xed0]
	mov r3, r5
	mov r2, #1
	bl FUN_ov16_02113f7c
	ldr r0, [r4]
	ldr r1, [r6, #0xed0]
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r4, r5, r6, pc}
_02120FD0: .word unk_02099F38
	arm_func_end FUN_ov41_02120f6c

	arm_func_start FUN_ov41_02120fd4
FUN_ov41_02120fd4: ; 0x02120FD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	add r0, r8, #0x1000
	ldr r1, [r0, #0x9c]
	ldr r4, [r8, #0xed0]
	cmp r1, #1
	ldr r6, [r0, #0xa4]
	ldr r7, [r0, #0xa8]
	mov r5, #1
	mov r1, #0xa
	bne _02121034
	cmp r7, #0x20
	blt _02121014
	cmp r7, #0x90
	ble _02121034
_02121014:
	ldr r0, _021210D0 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02121034:
	add r0, r8, #0x1000
	ldr r0, [r0, #0xa0]
	add r0, r0, #1
	bl _s32_div_f
	add r0, r8, #0x1000
	mov r2, r7, lsl #0x10
	str r1, [r0, #0xa0]
	mov r0, r2, asr #0x10
	mov r3, r6, lsl #0x10
	ldr r6, _021210D0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add r0, r8, #0x1000
	ldr r0, [r0, #0xa0]
	cmp r0, #4
	bgt _021210A8
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021210A8:
	cmp r0, #9
	addgt sp, sp, #4
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021210D0: .word unk_02099F38
	arm_func_end FUN_ov41_02120fd4

	arm_func_start FUN_ov41_021210d4
FUN_ov41_021210d4: ; 0x021210D4
	mov r2, #0
	add r0, r0, #0x1000
	sub r1, r2, #1
	str r2, [r0, #0xac]
	str r2, [r0, #0xb0]
	str r2, [r0, #0xb4]
	str r2, [r0, #0xb8]
	str r2, [r0, #0xbc]
	str r1, [r0, #0xc0]
	str r1, [r0, #0xc4]
	bx lr
	arm_func_end FUN_ov41_021210d4

	arm_func_start FUN_ov41_02121100
FUN_ov41_02121100: ; 0x02121100
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r5, r0
	add r2, r5, #0x1000
	ldr r0, [r2, #0xb0]
	mov r7, #0xb
	add r4, r7, #1
	ldr r10, [r2, #0xb8]
	add r0, r0, #1
	add r1, r4, #1
	ldr r9, [r5, #0xed0]
	ldr r6, [r2, #0xb4]
	mov r8, #2
	bl _s32_div_f
	add r0, r5, #0x1000
	mov r2, r10, lsl #0x10
	str r1, [r0, #0xb0]
	mov r0, r2, asr #0x10
	mov r2, r6, lsl #0x10
	ldr r6, _02121268 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r3, r2, asr #0x10
	mov r2, r8
	bl FUN_ov16_02113b78
	add r0, r5, #0x1000
	ldr r0, [r0, #0xb0]
	cmp r0, #2
	bgt _0212119C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0212119C:
	cmp r0, #5
	bgt _021211C0
	ldr r0, [r6]
	mov r1, r9
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_021211C0:
	cmp r0, #8
	bgt _021211EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_021211EC:
	cmp r0, r7
	bgt _02121210
	ldr r0, [r6]
	mov r1, r9
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02121210:
	cmp r0, r4
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	bl FUN_ov41_02121668
	mov r0, r5
	bl FUN_ov41_0211f810
	mov r0, r5
	bl FUN_ov41_0211f8b4
	mov r0, r5
	bl FUN_ov41_0211ebac
	mov r0, r5
	bl FUN_ov41_0211f0c4
	mov r0, r5
	mov r1, #1
	bl FUN_ov41_0211ce68
	mov r0, r5
	bl FUN_ov41_02120f6c
	mov r0, r5
	bl FUN_ov41_021210d4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02121268: .word unk_02099F38
	arm_func_end FUN_ov41_02121100

	arm_func_start FUN_ov41_0212126c
FUN_ov41_0212126c: ; 0x0212126C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x1000
	ldr r1, [r1, #0x7c]
	cmp r1, #0
	bne _021212AC
	bl FUN_ov41_02121334
	cmp r0, #1
	addeq r0, r4, #0x1000
	ldreq r1, [r0, #0x38]
	streq r1, [r0, #0xc0]
	beq _021212E0
	ldr r0, _02121330 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_021212AC:
	bl FUN_ov41_02121350
	cmp r0, #1
	bne _021212D0
	add r0, r4, #0x1000
	ldr r2, [r0, #0x38]
	ldr r1, [r0, #0x80]
	add r1, r2, r1
	str r1, [r0, #0xc4]
	b _021212E0
_021212D0:
	ldr r0, _02121330 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_021212E0:
	mov r0, r4
	mov r1, #8
	bl FUN_ov41_0211ae58
	add r2, r4, #0x1000
	ldr lr, [r2, #0x7c]
	mov r0, #0x78
	mul r12, lr, r0
	ldr r1, [r2, #0x38]
	mov r0, r4
	mov r1, r1, lsl #4
	add r3, r1, #0x20
	mov r1, #2
	str lr, [r2, #0x9c]
	str r12, [r2, #0xa4]
	str r3, [r2, #0xa8]
	bl FUN_ov41_0211ce68
	ldr r0, _02121330 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_02121330: .word gL5Sound
	arm_func_end FUN_ov41_0212126c

	arm_func_start FUN_ov41_02121334
FUN_ov41_02121334: ; 0x02121334
	add r1, r0, #0x1000
	ldrb r2, [r0, #0xe09]
	ldr r0, [r1, #0x38]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov41_02121334

	arm_func_start FUN_ov41_02121350
FUN_ov41_02121350: ; 0x02121350
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov41_0211febc
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020f067c
	cmp r0, #0
	beq _02121388
	mov r0, r4
	bl FUN_ov41_0211ffa4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02121388:
	ldrb r3, [r4, #0xe09]
	mov r2, #0
	cmp r3, #0
	ble _021213C0
	mov r0, #0x68
_0212139C:
	mla r1, r2, r0, r4
	add r1, r1, #0x400
	ldrh r1, [r1, #0x5c]
	cmp r5, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, r3
	blt _0212139C
_021213C0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov41_02121350

	arm_func_start FUN_ov41_021213c8
FUN_ov41_021213c8: ; 0x021213C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x1000
	ldr r1, [r1, #0x7c]
	cmp r1, #0
	bne _02121408
	bl FUN_ov41_021214c4
	cmp r0, #1
	addeq r0, r4, #0x1000
	ldreq r1, [r0, #0x38]
	streq r1, [r0, #0xc0]
	beq _0212143C
	ldr r0, _021214C0 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_02121408:
	bl FUN_ov41_021214f0
	cmp r0, #1
	bne _0212142C
	add r0, r4, #0x1000
	ldr r2, [r0, #0x38]
	ldr r1, [r0, #0x80]
	add r1, r2, r1
	str r1, [r0, #0xc4]
	b _0212143C
_0212142C:
	ldr r0, _021214C0 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0212143C:
	mov r0, r4
	mov r1, #8
	bl FUN_ov41_0211ae58
	add r1, r4, #0x1000
	ldr r3, [r1, #0x7c]
	mov r0, #0x78
	mul r12, r3, r0
	ldr r2, [r1, #0x38]
	str r12, [r1, #0xb4]
	mov r0, r2, lsl #4
	add r3, r0, #0x20
	mov r2, #1
	mov r0, r4
	str r3, [r1, #0xb8]
	str r2, [r1, #0xbc]
	bl FUN_ov41_0211ff04
	cmp r0, #1
	addeq r0, r4, #0x1000
	moveq r1, #0
	streq r1, [r0, #0xbc]
	mov r0, r4
	bl FUN_ov41_0211ff40
	cmp r0, #1
	addeq r0, r4, #0x1000
	moveq r1, #2
	streq r1, [r0, #0xbc]
	mov r0, r4
	mov r1, #3
	bl FUN_ov41_0211ce68
	ldr r0, _021214C0 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_021214C0: .word gL5Sound
	arm_func_end FUN_ov41_021213c8

	arm_func_start FUN_ov41_021214c4
FUN_ov41_021214c4: ; 0x021214C4
	add r1, r0, #0x1000
	ldrb r2, [r0, #0xe09]
	ldr r0, [r1, #0x38]
	cmp r2, r0
	movle r0, #0
	bxle lr
	ldr r0, [r1, #0xc0]
	cmn r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov41_021214c4

	arm_func_start FUN_ov41_021214f0
FUN_ov41_021214f0: ; 0x021214F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov41_0211febc
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x1000
	ldr r0, [r0, #0xc4]
	cmn r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020f067c
	cmp r0, #0
	beq _0212153C
	mov r0, r5
	bl FUN_ov41_0211ffa4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0212153C:
	ldrb r3, [r5, #0xe09]
	mov r2, #0
	cmp r3, #0
	ble _02121574
	mov r0, #0x68
_02121550:
	mla r1, r2, r0, r5
	add r1, r1, #0x400
	ldrh r1, [r1, #0x5c]
	cmp r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, r3
	blt _02121550
_02121574:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov41_021214f0

	arm_func_start FUN_ov41_0212157c
FUN_ov41_0212157c: ; 0x0212157C
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x81]
	cmp r1, #1
	beq _02121598
	cmp r1, #2
	beq _021215B8
	b _021215D8
_02121598:
	add r1, r0, #0x1000
	ldr r1, [r1, #0x7c]
	cmp r1, #0
	bne _021215B0
	bl FUN_ov41_02121334
	ldmfd sp!, {r3, pc}
_021215B0:
	bl FUN_ov41_02121350
	ldmfd sp!, {r3, pc}
_021215B8:
	add r1, r0, #0x1000
	ldr r1, [r1, #0x7c]
	cmp r1, #0
	bne _021215D0
	bl FUN_ov41_021214c4
	ldmfd sp!, {r3, pc}
_021215D0:
	bl FUN_ov41_021214f0
	ldmfd sp!, {r3, pc}
_021215D8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov41_0212157c

	arm_func_start FUN_ov41_021215e0
FUN_ov41_021215e0: ; 0x021215E0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02121658 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r1]
	mov r1, #8
	bl FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov41_0212157c
	cmp r0, #0
	mov r1, #1
	movne r1, #0
	mov r0, r5
	strb r1, [r4, #0x10]
	bl FUN_ov41_0212157c
	cmp r0, #0
	bne _02121640
	ldr r0, _0212165C ; =0x02099F38
	ldr r1, [r5, #0xec8]
	ldr r0, [r0]
	ldr r2, _02121660 ; =0x00004210
	bl FUN_ov16_02114204
	ldmfd sp!, {r3, r4, r5, pc}
_02121640:
	ldr r0, _0212165C ; =0x02099F38
	ldr r1, [r5, #0xec8]
	ldr r0, [r0]
	ldr r2, _02121664 ; =0x00007FFF
	bl FUN_ov16_02114204
	ldmfd sp!, {r3, r4, r5, pc}
_02121658: .word unk_02099EB4
_0212165C: .word unk_02099F38
_02121660: .word 0x00004210
_02121664: .word 0x00007FFF
	arm_func_end FUN_ov41_021215e0

	arm_func_start FUN_ov41_02121668
FUN_ov41_02121668: ; 0x02121668
	stmfd sp!, {r3, lr}
	add r1, r0, #0x1000
	ldr r3, [r1, #0xc4]
	mov r2, #0x68
	mul r12, r3, r2
	add r3, r0, r12
	ldrb r3, [r3, #0x7b0]
	ldr lr, [r1, #0xc0]
	cmp r3, #0
	ldmnefd sp!, {r3, pc}
	add r1, r0, #0x48
	add r1, r1, #0x400
	mla r1, lr, r2, r1
	add r0, r0, #0x388
	add r0, r0, #0x400
	add r0, r0, r12
	bl MI_CpuCopy8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov41_02121668

	arm_func_start FUN_ov41_021216b0
FUN_ov41_021216b0: ; 0x021216B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bl FUN_ov16_020f081c
	ldr r1, _021217C0 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1b]
	mov r8, #0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _021217C4 ; =0x0209AEC0
	mov r0, r5
	bl FUN_02046730
	cmp r0, #0
	beq _02121700
	mov r0, r5
	bl FUN_02046730
	sub r0, r0, #1
	mov r1, #0x1000
	mov r0, r1, lsl r0
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
_02121700:
	ldr r0, _021217C8 ; =0x020A0676
	mov r10, #0
	add r5, r0, r4, lsl #5
	mov r11, #0x22
	b _021217B4
_02121714:
	mov r0, r10
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _021217B0
	bl FUN_0206d64c
	cmp r0, #0
	beq _021217B0
	mov r9, #0
	mov r7, r9
	ldr r4, _021217CC ; =0x00000FFF
	b _02121790
_02121740:
	mov r0, r7, lsl #1
	ldrh r0, [r0, r5]
	cmp r0, #0
	beq _0212178C
	and r0, r0, #0xf000
	cmp r8, r0
	bne _0212178C
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r7, lsl #1
	ldrh r1, [r1, r5]
	and r1, r1, r4
	cmp r1, r0
	bne _0212178C
	mov r0, r6
	mov r1, r11
	bl FUN_0206d620
	mov r9, #1
	b _02121798
_0212178C:
	add r7, r7, #1
_02121790:
	cmp r7, #0x10
	blt _02121740
_02121798:
	cmp r9, #0
	bne _021217B0
	ldr r0, _021217D0 ; =0x0209A11C
	mov r1, r10
	ldr r0, [r0]
	bl FUN_0206c5d8
_021217B0:
	add r10, r10, #1
_021217B4:
	cmp r10, #0x64
	blt _02121714
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021217C0: .word unk_020A0640
_021217C4: .word unk_0209AEC0
_021217C8: .word unk_020A0676
_021217CC: .word 0x00000FFF
_021217D0: .word unk_0209A11C
	arm_func_end FUN_ov41_021216b0

	arm_func_start FUN_ov41_021217d4
FUN_ov41_021217d4: ; 0x021217D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, #0
	bl FUN_ov16_020f081c
	ldr r1, _021218D0 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1b]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _021218D4 ; =0x0209AEC0
	mov r0, r5
	bl FUN_02046730
	cmp r0, #0
	beq _02121824
	mov r0, r5
	bl FUN_02046730
	sub r0, r0, #1
	mov r1, #0x1000
	mov r0, r1, lsl r0
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
_02121824:
	ldr r0, _021218D8 ; =0x020A0676
	mov r9, #0
	add r6, r0, r4, lsl #5
	ldr r11, _021218DC ; =0x00000FFF
	ldr r4, _021218E0 ; =0x0209A11C
	b _021218C4
_0212183C:
	mov r0, r9, lsl #1
	ldrh r1, [r0, r6]
	cmp r1, #0
	beq _021218C0
	and r0, r1, #0xf000
	cmp r7, r0
	bne _021218C0
	and r0, r1, r11
	mov r0, r0, lsl #0x10
	mov r10, #0
	mov r8, r0, lsr #0x10
	b _021218B8
_0212186C:
	mov r0, r10
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _021218B4
	bl FUN_0206d64c
	cmp r0, #0
	beq _021218B4
	mov r0, r5
	bl FUN_0206cc00
	cmp r8, r0
	bne _021218B4
	cmp r9, r10
	beq _021218C0
	ldr r0, [r4]
	mov r1, r9
	mov r2, r10
	bl FUN_0206c664
	b _021218C0
_021218B4:
	add r10, r10, #1
_021218B8:
	cmp r10, #0x64
	blt _0212186C
_021218C0:
	add r9, r9, #1
_021218C4:
	cmp r9, #0x10
	blt _0212183C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021218D0: .word unk_020A0640
_021218D4: .word unk_0209AEC0
_021218D8: .word unk_020A0676
_021218DC: .word 0x00000FFF
_021218E0: .word unk_0209A11C
	arm_func_end FUN_ov41_021217d4

	arm_func_start FUN_ov41_021218e4
FUN_ov41_021218e4: ; 0x021218E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
_021218F0:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _02121928
	bl FUN_0206d64c
	cmp r0, #0
	beq _02121928
	mov r0, r4
	mov r1, r6
	bl FUN_0206d4d4
	mov r0, r4
	bl FUN_0206dcd4
	mov r1, r6
	bl FUN_0206e294
_02121928:
	add r5, r5, #1
	cmp r5, #0x64
	blt _021218F0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov41_021218e4

	arm_func_start FUN_ov41_02121938
FUN_ov41_02121938: ; 0x02121938
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02121964 ; =0x0209A11C
	mov r5, #0
_02121944:
	ldr r0, [r4]
	mov r1, r5
	add r2, r5, #0x10
	bl FUN_0206c6ac
	add r5, r5, #1
	cmp r5, #0x10
	blt _02121944
	ldmfd sp!, {r3, r4, r5, pc}
_02121964: .word unk_0209A11C
	arm_func_end FUN_ov41_02121938

	arm_func_start FUN_ov41_02121968
FUN_ov41_02121968: ; 0x02121968
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov41_02121968

	arm_func_start FUN_ov41_0212197c
FUN_ov41_0212197c: ; 0x0212197C
	bx lr
	arm_func_end FUN_ov41_0212197c

	.rodata
	.byte 0x00, 0x40, 0x09, 0x00, 0x00, 0x64, 0x00, 0x00
	.global ov41_02121988
ov41_02121988:
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00
	.global ov41_02121990
ov41_02121990:
	.byte 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.global ov41_021219A0
ov41_021219A0:
	.word ov41_02121CB0
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov41_02121CBC
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov41_02121D8C
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov41_021219C0
ov41_021219C0:
	.byte 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.global ov41_021219C8
ov41_021219C8:
	.byte 0x00, 0x08, 0x0C, 0x0A, 0x06, 0x03, 0x0E, 0x0B
	.byte 0x01, 0x02, 0x05, 0x07, 0x09, 0x0D, 0x04, 0x0F
	.global ov41_021219D8
ov41_021219D8:
	.byte 0x08, 0x00, 0x09, 0x01, 0x0A, 0x02, 0x0B, 0x03
	.byte 0x0C, 0x04, 0x0D, 0x05, 0x0E, 0x06, 0x0F, 0x07
	.global ov41_021219E8
ov41_021219E8:
	.byte 0x0B, 0x06, 0x00, 0x0C, 0x07, 0x01, 0x0D, 0x08
	.byte 0x02, 0x0E, 0x09, 0x03, 0x0F, 0x0A, 0x04, 0x05
	.global ov41_021219F8
ov41_021219F8:
	.byte 0x0C, 0x08, 0x04, 0x00, 0x0D, 0x09, 0x05, 0x01
	.byte 0x0E, 0x0A, 0x06, 0x02, 0x0F, 0x0B, 0x07, 0x03
	.global ov41_02121A08
ov41_02121A08:
	.word ov41_02121E8C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121A18
ov41_02121A18:
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
	.byte 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F
	.global ov41_02121A28
ov41_02121A28:
	.byte 0x20, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00
	.global ov41_02121A38
ov41_02121A38:
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0xF0, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121A48
ov41_02121A48:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.global ov41_02121A58
ov41_02121A58:
	.byte 0x82, 0x4F, 0x00, 0x00, 0x82, 0x50, 0x00, 0x00
	.byte 0x82, 0x51, 0x00, 0x00, 0x82, 0x52, 0x00, 0x00, 0x82, 0x53, 0x00, 0x00, 0x82, 0x54, 0x00, 0x00
	.byte 0x82, 0x55, 0x00, 0x00, 0x82, 0x56, 0x00, 0x00, 0x82, 0x57, 0x00, 0x00
	.global ov41_02121A7C
ov41_02121A7C:
	.byte 0x06, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
	.global ov41_02121AA4
ov41_02121AA4:
	.byte 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
	.global ov41_02121AD4
ov41_02121AD4:
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00
	.global ov41_02121B14
ov41_02121B14:
	.word ov41_02121CC8
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov41_02121CE0
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov41_02121CEC
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov41_02121D04
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov41_02121D10
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov41_02121CD4
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov41_02121CF8
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov41_02121C98
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov41_02121CA4
	.byte 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov41_02121B64
ov41_02121B64:
	.word ov41_02121E9C
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov41_02121D3C
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov41_02121D4C
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov41_02121D2C
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov41_02121D6C
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov41_02121D1C
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov41_02121D7C
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov41_02121D5C
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov41_02121D9C
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov41_02121DAC
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov41_02121DBC
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov41_02121E0C
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov41_02121DCC
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov41_02121DDC
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov41_02121DEC
	.byte 0x0F, 0x00, 0x00, 0x00
	.word ov41_02121DFC
	.byte 0x10, 0x00, 0x00, 0x00
	.word ov41_02121E1C
	.byte 0x11, 0x00, 0x00, 0x00
	.word ov41_02121E2C
	.byte 0x12, 0x00, 0x00, 0x00
	.word ov41_02121E3C
	.byte 0x13, 0x00, 0x00, 0x00
	.word ov41_02121E4C
	.byte 0x14, 0x00, 0x00, 0x00
	.word ov41_02121E5C
	.byte 0x15, 0x00, 0x00, 0x00
	.word ov41_02121E6C
	.byte 0x16, 0x00, 0x00, 0x00
	.word ov41_02121E7C
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov41_02121c24
FUN_ov41_02121c24: ; 0x02121C24
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02121C6C ; =0x02121C80
	str r0, [r4, #8]
	ldr r0, _02121C70 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02121C74 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02121C6C: .word ov41_02121C80
_02121C70: .word 0x00009CCD
_02121C74: .word 0x0000EA3C
	arm_func_end FUN_ov41_02121c24

	.section .sinit, 4
ov41_02121C78:
	.word FUN_ov41_02121c24

	.data
	.global ov41_02121C80
ov41_02121C80:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121C98
ov41_02121C98:
	.byte 0x77, 0x70, 0x64, 0x5F, 0x77, 0x31, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov41_02121CA4
ov41_02121CA4:
	.byte 0x77, 0x70, 0x64, 0x5F, 0x77, 0x31, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov41_02121CB0
ov41_02121CB0:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov41_02121CBC
ov41_02121CBC:
	.byte 0x77, 0x74, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov41_02121CC8
ov41_02121CC8:
	.byte 0x77, 0x70, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov41_02121CD4
ov41_02121CD4:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov41_02121CE0
ov41_02121CE0:
	.byte 0x77, 0x70, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov41_02121CEC
ov41_02121CEC:
	.byte 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov41_02121CF8
ov41_02121CF8:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov41_02121D04
ov41_02121D04:
	.byte 0x77, 0x70, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov41_02121D10
ov41_02121D10:
	.byte 0x77, 0x70, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov41_02121D1C
ov41_02121D1C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121D2C
ov41_02121D2C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x61, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121D3C
ov41_02121D3C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x61, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121D4C
ov41_02121D4C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x61, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121D5C
ov41_02121D5C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121D6C
ov41_02121D6C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x61, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121D7C
ov41_02121D7C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121D8C
ov41_02121D8C:
	.byte 0x77, 0x74, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121D9C
ov41_02121D9C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121DAC
ov41_02121DAC:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121DBC
ov41_02121DBC:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x62, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121DCC
ov41_02121DCC:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121DDC
ov41_02121DDC:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x63, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121DEC
ov41_02121DEC:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121DFC
ov41_02121DFC:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x69, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121E0C
ov41_02121E0C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x62, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121E1C
ov41_02121E1C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121E2C
ov41_02121E2C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121E3C
ov41_02121E3C:
	.byte 0x77, 0x68, 0x64, 0x5F
	.byte 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121E4C
ov41_02121E4C:
	.byte 0x73, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov41_02121E5C
ov41_02121E5C:
	.byte 0x73, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x38, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov41_02121E6C
ov41_02121E6C:
	.byte 0x73, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x39, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov41_02121E7C
ov41_02121E7C:
	.byte 0x73, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov41_02121E8C
ov41_02121E8C:
	.byte 0x77, 0x6D, 0x64, 0x5F
	.byte 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov41_02121E9C
ov41_02121E9C:
	.byte 0x77, 0x6D, 0x64, 0x5F
	.byte 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov41_02121EB4
ov41_02121EB4:
	.word FUN_ov41_0212197c
	.word FUN_ov41_02121968
	.word FUN_ov41_0211a5d4
	.word FUN_ov41_0211b1b4
	.word FUN_ov41_02119fd8
	.word FUN_0202b208
	.word FUN_ov41_0211b8e0
	.word FUN_ov41_0211bcf0
	.word FUN_ov41_0211a40c
	.word FUN_ov41_0211bde8
	.word FUN_0202b200
	.word FUN_ov41_0211c2cc
	.word FUN_ov41_0211bf60
	.word FUN_ov41_0211c29c
	.word FUN_ov41_0211be70
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
	.global ov41_02121F20
ov41_02121F20:
	.byte 0x82, 0xD9, 0x82, 0xA9, 0x82, 0xCC, 0x83, 0x76, 0x83, 0x8C, 0x83, 0x43, 0x83, 0x84, 0x81, 0x5B
	.byte 0x82, 0xAA, 0x0A, 0x5B, 0x8F, 0x6F, 0x8F, 0xEA, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xC2, 0x82
	.byte 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x83, 0x81, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xF0
	.byte 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov41_02121F64
ov41_02121F64:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC
	.byte 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121F80
ov41_02121F80:
	.byte 0x82, 0xD9, 0x82, 0xA9, 0x82, 0xCC, 0x83, 0x76, 0x83, 0x8C, 0x83, 0x43, 0x83, 0x84, 0x81, 0x5B
	.byte 0x82, 0xAA, 0x0A, 0x5B, 0x8F, 0x6F, 0x8F, 0xEA, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xC2, 0x82
	.byte 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x83, 0x81, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xF0
	.byte 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov41_02121FC4
ov41_02121FC4:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC
	.byte 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov41_02121FE0
ov41_02121FE0:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x0A, 0x83, 0x58, 0x83, 0x70
	.byte 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xCD
	.byte 0x0A, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82
	.byte 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xE0, 0x5B, 0x91, 0xE5, 0x8F, 0xE4, 0x95
	.byte 0x76, 0x2F, 0x82, 0xBE, 0x82, 0xA2, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xD4, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov41_02122048
ov41_02122048:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB5, 0x82
	.byte 0xBD, 0x81, 0x42, 0x0A, 0x83, 0x43, 0x83, 0x69, 0x83, 0x59, 0x83, 0x7D, 0x83, 0x43, 0x83, 0x8C
	.byte 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xCC, 0x83, 0x51, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xCD
	.byte 0x0A, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82
	.byte 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xE0, 0x5B, 0x91, 0xE5, 0x8F, 0xE4, 0x95
	.byte 0x76, 0x2F, 0x82, 0xBE, 0x82, 0xA2, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xD4, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov41_021220B8
ov41_021220B8:
	.byte 0x83, 0x58, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x4E
	.byte 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xCC, 0x0A, 0x5B, 0x8F, 0xEE
	.byte 0x95, 0xF1, 0x2F, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xD9, 0x82, 0xA4, 0x5D, 0x82, 0xF0
	.byte 0x5B, 0x8E, 0xF3, 0x2F, 0x82, 0xA4, 0x5D, 0x82, 0xAF, 0x82, 0xC6, 0x82, 0xE8, 0x82, 0xDC, 0x82
	.byte 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov41_021220F8
ov41_021220F8:
	.byte 0x83, 0x43, 0x83, 0x69, 0x83, 0x59, 0x83, 0x7D
	.byte 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xCC, 0x0A, 0x5B, 0x8F, 0xEE
	.byte 0x95, 0xF1, 0x2F, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xD9, 0x82, 0xA4, 0x5D, 0x82, 0xF0
	.byte 0x5B, 0x8E, 0xF3, 0x2F, 0x82, 0xA4, 0x5D, 0x82, 0xAF, 0x82, 0xC6, 0x82, 0xE8, 0x82, 0xDC, 0x82
	.byte 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov41_02122138
ov41_02122138:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov41_02122150
ov41_02122150:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77
	.byte 0x63, 0x5F, 0x6D, 0x65, 0x6D, 0x62, 0x65, 0x72, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov41_02122170
ov41_02122170:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D
	.byte 0x4D, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov41_0212218C
ov41_0212218C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D, 0x50, 0x53, 0x57, 0x69
	.byte 0x70, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov41_021221A8
ov41_021221A8:
	.byte 0x5B, 0x8F, 0x6F, 0x8F, 0xEA, 0x2F, 0x82, 0xB5
	.byte 0x82, 0xE3, 0x82, 0xC2, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x83, 0x81, 0x83, 0x93, 0x83
	.byte 0x6F, 0x81, 0x5B, 0x82, 0xF0, 0x5B, 0x8C, 0x88, 0x2F, 0x82, 0xAB, 0x5D, 0x82, 0xDF, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82
	.byte 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81
	.byte 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00
	.global ov41_021221F8
ov41_021221F8:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD
	.byte 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45
	.byte 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov41_02122218
ov41_02122218:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov41_02122230
ov41_02122230:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77
	.byte 0x63, 0x5F, 0x6D, 0x65, 0x6D, 0x62, 0x65, 0x72, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov41_02122250
ov41_02122250:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77
	.byte 0x63, 0x5F, 0x6D, 0x65, 0x6D, 0x62, 0x65, 0x72, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov41_02122270
ov41_02122270:
	.byte 0x82, 0xB1, 0x82, 0xCC, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x5B, 0x92, 0xCA, 0x90
	.byte 0x4D, 0x92, 0x86, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x82, 0xBF, 0x82, 0xE3
	.byte 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00
	.global ov41_021222A0
ov41_021222A0:
	.byte 0x83, 0x58, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F
	.byte 0x81, 0x5B, 0x82, 0xC6, 0x0A, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82
	.byte 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82
	.byte 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov41_021222EC
ov41_021222EC:
	.byte 0x83, 0x43, 0x83, 0x69
	.byte 0x83, 0x59, 0x83, 0x7D, 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xC6
	.byte 0x0A, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D
	.byte 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82
	.byte 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82
	.byte 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov41_02122338
ov41_02122338:
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x5B, 0x90
	.byte 0x6C, 0x90, 0x94, 0x2F, 0x82, 0xC9, 0x82, 0xF1, 0x82, 0xB8, 0x82, 0xA4, 0x5D, 0x82, 0xAA, 0x5B
	.byte 0x91, 0xAB, 0x2F, 0x82, 0xBD, 0x5D, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42
	.byte 0x0A, 0x5B, 0x8E, 0x8E, 0x8D, 0x87, 0x2F, 0x82, 0xB5, 0x82, 0xA0, 0x82, 0xA2, 0x5D, 0x82, 0xF0
	.byte 0x5B, 0x92, 0x86, 0x92, 0x66, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xBE, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov41_0212238C
ov41_0212238C:
	.byte 0x5B, 0x8E, 0x8E, 0x8D
	.byte 0x87, 0x2F, 0x82, 0xB5, 0x82, 0xA0, 0x82, 0xA2, 0x5D, 0x82, 0xC9, 0x5B, 0x8F, 0x6F, 0x8F, 0xEA
	.byte 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xC2, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB7
	.byte 0x82, 0xE9, 0x83, 0x81, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xF0, 0x0A, 0x83, 0x60, 0x81
	.byte 0x5B, 0x83, 0x80, 0x82, 0xA9, 0x82, 0xE7, 0x25, 0x73, 0x5B, 0x90, 0x6C, 0x2F, 0x82, 0xC9, 0x82
	.byte 0xF1, 0x5D, 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

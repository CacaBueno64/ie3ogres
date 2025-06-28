
	.include "/macros/function.inc"
	.include "/include/overlay45.inc"

	.text
	arm_func_start FUN_ov45_02119f00
FUN_ov45_02119f00: ; 0x02119F00
	strh r1, [r0]
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	bx lr
	arm_func_end FUN_ov45_02119f00

	arm_func_start FUN_ov45_02119f10
FUN_ov45_02119f10: ; 0x02119F10
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x80
	mov r4, r0
	add r2, sp, #0
	mov r1, #0x20
	mov r0, #0
_02119F28:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _02119F28
	ldrb r0, [r4, #0x21c]
	cmp r0, #0
	bne _02119F5C
	add r0, sp, #0
	ldr r1, _02119F84 ; =0x021208B0
	b _02119F6C
_02119F5C:
	cmp r0, #1
	bne _02119F70
	ldr r1, _02119F88 ; =0x021208D0
	add r0, sp, #0
_02119F6C:
	bl FUN_02023c40
_02119F70:
	add r0, sp, #0
	add r1, r4, #0x28
	bl  FUN_ov16_020f316c
	add sp, sp, #0x80
	ldmfd sp!, {r4, pc}
_02119F84: .word ov45_021208B0
_02119F88: .word ov45_021208D0
	arm_func_end FUN_ov45_02119f10

	arm_func_start FUN_ov45_02119f8c
FUN_ov45_02119f8c: ; 0x02119F8C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _02119FFC ; =0x020A6C40
	mov r8, #0
	mov r6, #0x800
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r5, _0211A000 ; =0x020A7440
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r4, _0211A004 ; =0x020A7C40
	mov r0, r8
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
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02119FFC: .word unk_020A6C40
_0211A000: .word unk_020A7440
_0211A004: .word unk_020A7C40
	arm_func_end FUN_ov45_02119f8c

	arm_func_start FUN_ov45_0211a008
FUN_ov45_0211a008: ; 0x0211A008
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x84
	mov r4, r0
	add r2, sp, #4
	mov r1, #0x20
	mov r0, #0
_0211A020:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _0211A020
	ldrb r0, [r4, #0x21c]
	cmp r0, #0
	bne _0211A05C
	ldr r3, _0211A0AC ; =0x021202E8
	ldr r2, _0211A0B0 ; =0x02120528
	add r0, sp, #4
	ldr r1, _0211A0B4 ; =0x021208F0
	b _0211A074
_0211A05C:
	cmp r0, #1
	bne _0211A07C
	ldr r3, _0211A0B8 ; =0x021202A0
	ldr r2, _0211A0B0 ; =0x02120528
	ldr r1, _0211A0BC ; =0x02120910
	add r0, sp, #4
_0211A074:
	str r3, [r2, #8]
	bl FUN_02023c40
_0211A07C:
	ldr r0, _0211A0B0 ; =0x02120528
	mov r1, #0
	str r1, [sp]
	ldr r2, [r0, #8]
	ldr r1, [r4, #0x28]
	add r0, sp, #4
	add r3, r4, #0x34
	bl  FUN_ov16_020f5450
	mov r0, r4
	bl FUN_ov45_0211a0c0
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, pc}
_0211A0AC: .word 0x021202E8
_0211A0B0: .word ov45_02120528
_0211A0B4: .word ov45_021208F0
_0211A0B8: .word 0x021202A0
_0211A0BC: .word ov45_02120910
	arm_func_end FUN_ov45_0211a008

	arm_func_start FUN_ov45_0211a0c0
FUN_ov45_0211a0c0: ; 0x0211A0C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x28
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, #0x28
	bl  FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	strb r0, [r4, #0x30]
	strb r0, [r4, #0x31]
	strb r0, [r4, #0x32]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov45_0211a0c0

	arm_func_start FUN_ov45_0211a0f8
FUN_ov45_0211a0f8: ; 0x0211A0F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r4, #0
	bl FUN_ov45_0211a0c0
	mov r5, r4
	add r8, r6, #0x224
	mov r7, #0xc
	b _0211A124
_0211A118:
	mla r0, r5, r7, r8
	bl  FUN_ov16_020f33fc
	add r5, r5, #1
_0211A124:
	cmp r5, #1
	blt _0211A118
	mov r5, #0
	add r8, r6, #0xac
	mov r7, #0xb4
	b _0211A14C
_0211A13C:
	mla r1, r5, r7, r8
	mov r0, r6
	bl FUN_ov45_0211a938
	add r5, r5, #1
_0211A14C:
	cmp r5, #2
	blt _0211A13C
	mov r5, #0
	ldr r7, _0211A1F8 ; =0x02099F38
	b _0211A17C
_0211A160:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x7c]
	cmp r1, #0
	beq _0211A178
	ldr r0, [r7]
	bl  FUN_ov16_021128c4
_0211A178:
	add r5, r5, #1
_0211A17C:
	cmp r5, #3
	blt _0211A160
	mov r5, #0
	ldr r7, _0211A1F8 ; =0x02099F38
	b _0211A1B4
_0211A190:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _0211A1B0
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x34]
_0211A1B0:
	add r5, r5, #1
_0211A1B4:
	cmp r5, #0x11
	blt _0211A190
	mov r5, #0
	ldr r7, _0211A1F8 ; =0x02099F38
	b _0211A1EC
_0211A1C8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x78]
	cmp r1, #0
	beq _0211A1E8
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x78]
_0211A1E8:
	add r5, r5, #1
_0211A1EC:
	cmp r5, #1
	blt _0211A1C8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A1F8: .word unk_02099F38
	arm_func_end FUN_ov45_0211a0f8

	arm_func_start FUN_ov45_0211a1fc
FUN_ov45_0211a1fc: ; 0x0211A1FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A248 ; =0x02099F38
	b _0211A238
_0211A210:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _0211A234
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A234:
	add r5, r5, #1
_0211A238:
	cmp r5, #0x11
	blt _0211A210
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A248: .word unk_02099F38
	arm_func_end FUN_ov45_0211a1fc

	arm_func_start FUN_ov45_0211a24c
FUN_ov45_0211a24c: ; 0x0211A24C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A2AC ; =0x02099F38
	b _0211A2A0
_0211A264:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _0211A29C
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A29C
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x34]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A29C:
	add r6, r6, #1
_0211A2A0:
	cmp r6, #0x11
	blt _0211A264
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2AC: .word unk_02099F38
	arm_func_end FUN_ov45_0211a24c

	arm_func_start FUN_ov45_0211a2b0
FUN_ov45_0211a2b0: ; 0x0211A2B0
	stmfd sp!, {r4, r5, r6, lr}
	bl FUN_0200505c
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r5
	bl DC_FlushRange
	mov r4, #0x800
	ldr r0, _0211A354 ; =0x020A6C40
	mov r1, r6
	mov r2, r4
	bl FUN_0200569c
	bl FUN_02004f78
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r5
	bl DC_FlushRange
	ldr r0, _0211A358 ; =0x020A7440
	mov r1, r6
	mov r2, r4
	bl FUN_020054dc
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r5
	bl DC_FlushRange
	mov r1, r6
	mov r2, r4
	ldr r0, _0211A35C ; =0x020A7C40
	bl FUN_020055bc
	ldmfd sp!, {r4, r5, r6, pc}
_0211A354: .word unk_020A6C40
_0211A358: .word unk_020A7440
_0211A35C: .word unk_020A7C40
	arm_func_end FUN_ov45_0211a2b0

	arm_func_start FUN_ov45_0211a360
FUN_ov45_0211a360: ; 0x0211A360
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	bne _0211A390
	ldr r0, _0211A4D8 ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	str r0, [r7, #0x7c]
_0211A390:
	ldr r6, [r7, #0x7c]
	cmp r6, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, _0211A4D8 ; =0x02099F38
	ldr r3, [r7, #0x34]
	mov r5, #1
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r4, #0
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_0211401c
	mov r9, #0x258
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, r9
	bl  FUN_ov16_021139bc
	ldr r0, [r8]
	mov r1, r6
	mov r10, #2
	mov r2, r10
	ldr r3, [r7, #0x38]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r10
	mov r3, r4
	bl  FUN_ov16_0211401c
	mov r0, #0xb0
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r10
	mov r3, r4
	bl  FUN_ov16_02113b78
	sub r9, r9, #1
	ldr r0, [r8]
	mov r1, r6
	mov r2, r10
	mov r3, r9
	bl  FUN_ov16_021139bc
	ldr r1, [r7, #0x5c]
	ldr r0, [r8]
	and r3, r1, #0xff
	mov r1, r6
	mov r7, #3
	mov r2, r7
	bl  FUN_ov16_021137dc
	str r4, [sp]
	mov r3, r4
	ldr r0, [r8]
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_0211401c
	mov r3, #8
	str r3, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_02113b78
	mov r2, r7
	mov r3, r9
	ldr r0, [r8]
	mov r1, r6
	bl  FUN_ov16_021139bc
	ldr r0, [r8]
	mov r1, r6
	mov r2, r10
	mov r3, r5
	bl  FUN_ov16_021142fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211A4D8: .word unk_02099F38
	arm_func_end FUN_ov45_0211a360

	arm_func_start FUN_ov45_0211a4dc
FUN_ov45_0211a4dc: ; 0x0211A4DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x220]
	mov r6, #0
	cmp r0, #0
	ble _0211A524
	add r5, r7, #0x90
	mov r4, #1
_0211A4FC:
	mov r1, r6, lsl #0x10
	mov r2, r4
	mov r3, r4
	add r0, r5, r6, lsl #2
	mov r1, r1, lsr #0x10
	bl FUN_ov45_02119f00
	ldr r0, [r7, #0x220]
	add r6, r6, #1
	cmp r6, r0
	blt _0211A4FC
_0211A524:
	str r0, [r7, #0xa8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov45_0211a4dc

	arm_func_start FUN_ov45_0211a52c
FUN_ov45_0211a52c: ; 0x0211A52C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r4, r2
	mov r5, r3
	bmi _0211A54C
	cmp r6, #3
	blt _0211A554
_0211A54C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A554:
	cmp r4, #0x11
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, r6, lsl #2
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	bne _0211A58C
	ldr r0, _0211A668 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	add r1, r7, r6, lsl #2
	str r0, [r1, #0x7c]
_0211A58C:
	add r1, r7, r6, lsl #2
	add r0, r7, r4, lsl #2
	ldr r6, _0211A668 ; =0x02099F38
	ldr r4, [r1, #0x7c]
	ldr r2, [r0, #0x34]
	ldr r0, [r6]
	mov r1, r4
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldrb r0, [sp, #0x2c]
	cmp r0, #0
	beq _0211A5CC
	ldr r0, [r6]
	mov r1, r4
	mov r2, #2
	bl  FUN_ov16_02112af0
_0211A5CC:
	ldr r6, _0211A668 ; =0x02099F38
	mov r1, r4
	ldr r0, [r6]
	mov r2, r5
	mov r3, #0
	bl  FUN_ov16_0211346c
	ldr r0, [r6]
	mov r1, r4
	mov r2, #0x244
	bl  FUN_ov16_02112b98
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r2, r1, lsl #0x10
	mov r3, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r4
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldr r0, _0211A66C ; =0x02099EB4
	mov r3, r4
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r4, #1
	mov r2, r1, lsr #0x10
	mov r1, r4
	bl  FUN_ov16_0210fbe8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [sp, #0x2c]
	strb r4, [r0, #0x11]
	ldrh r1, [sp, #0x28]
	strb r2, [r0, #0x10]
	strb r4, [r0, #0xf]
	strh r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A668: .word unk_02099F38
_0211A66C: .word unk_02099EB4
	arm_func_end FUN_ov45_0211a52c

	arm_func_start FUN_ov45_0211a670
FUN_ov45_0211a670: ; 0x0211A670
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r1, #0x88
	str r1, [sp]
	mov r1, #0x98
	str r1, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	mov r1, #0x1e
	mov r5, #0
	mov r6, #1
	str r1, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, r6
	mov r3, r5
	mov r2, #9
	str r5, [sp, #0x14]
	bl FUN_ov45_0211a52c
	movs r4, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3e
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r5
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	add r0, r4, #0x42
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov45_0211a670

	arm_func_start FUN_ov45_0211a744
FUN_ov45_0211a744: ; 0x0211A744
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r1, #0xc0
	str r1, [sp]
	mov r1, #0x98
	str r1, [sp, #4]
	mov r2, #9
	mov r7, #2
	str r2, [sp, #8]
	mov r1, #0x1e
	str r1, [sp, #0xc]
	mov r1, r7
	mov r3, r7
	str r7, [sp, #0x10]
	mov r6, #0
	str r6, [sp, #0x14]
	bl FUN_ov45_0211a52c
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	mov r2, r7
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	mov r3, r6
	add r0, r5, #0x3e
	mov r2, #3
	bl  FUN_ov16_0210e720
	add r0, r5, #0x3e
	mov r1, r6
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	mov r2, r7
	add r0, r5, #0x42
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210e720
	add r0, r5, #0x42
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210e6fc
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov45_0211a744

	arm_func_start FUN_ov45_0211a818
FUN_ov45_0211a818: ; 0x0211A818
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r4, r1
	mov r6, r8
	mov r7, #1
	ldr r5, _0211A87C ; =0x02099EB4
	b _0211A870
_0211A834:
	mov r0, r7, lsl r8
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r5]
	mov r1, r9
	bl  FUN_ov16_0210ebd4
	movs r1, r0
	beq _0211A86C
	tst r9, r4
	moveq r0, r7
	movne r0, r6
	strb r0, [r1, #0x10]
	ldr r0, [r5]
	bl  FUN_ov16_0210ee80
_0211A86C:
	add r8, r8, #1
_0211A870:
	cmp r8, #0x10
	blt _0211A834
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A87C: .word unk_02099EB4
	arm_func_end FUN_ov45_0211a818

	arm_func_start FUN_ov45_0211a880
FUN_ov45_0211a880: ; 0x0211A880
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _0211A8BC ; =0x02099EB4
	and r1, r1, #3
	ldr r0, [r4]
	add r2, sp, #0
	bl  FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl  FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211A8BC: .word unk_02099EB4
	arm_func_end FUN_ov45_0211a880

	arm_func_start FUN_ov45_0211a8c0
FUN_ov45_0211a8c0: ; 0x0211A8C0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0211A930 ; =0x02099EB4
	mov r6, r0
	ldr r0, [r2]
	mov r4, #3
	mov r5, r1
	mov r1, r4
	bl  FUN_ov16_0210eb3c
	cmp r5, #0
	beq _0211A8F4
	cmp r5, #1
	beq _0211A920
	ldmfd sp!, {r4, r5, r6, pc}
_0211A8F4:
	mov r0, r6
	add r1, r6, #0x160
	bl FUN_ov45_0211a938
	mov r0, r6
	add r1, r6, #0xac
	bl FUN_ov45_0211aa84
	ldr r0, _0211A934 ; =0x020A9C40
	add r1, r4, #0x15c
	mov r2, #0
	bl FUN_020460a8
	ldmfd sp!, {r4, r5, r6, pc}
_0211A920:
	mov r0, r6
	add r1, r6, #0x160
	bl FUN_ov45_0211abd4
	ldmfd sp!, {r4, r5, r6, pc}
_0211A930: .word unk_02099EB4
_0211A934: .word unk_020A9C40
	arm_func_end FUN_ov45_0211a8c0

	arm_func_start FUN_ov45_0211a938
FUN_ov45_0211a938: ; 0x0211A938
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211A99C ; =0x02099F38
	b _0211A968
_0211A94C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211A964
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211A964:
	add r5, r5, #1
_0211A968:
	cmp r5, #0x10
	blt _0211A94C
	ldr r1, [r6, #0x5c]
	cmp r1, #0
	ble _0211A988
	ldr r0, _0211A99C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211A988:
	mov r0, r6
	mov r1, #0
	mov r2, #0xb4
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211A99C: .word unk_02099F38
	arm_func_end FUN_ov45_0211a938

	arm_func_start FUN_ov45_0211a9a0
FUN_ov45_0211a9a0: ; 0x0211A9A0
	cmp r1, #0
	beq _0211A9B4
	cmp r1, #1
	moveq r0, #1
	bx lr
_0211A9B4:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov45_0211a9a0

	arm_func_start FUN_ov45_0211a9bc
FUN_ov45_0211a9bc: ; 0x0211A9BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	ldr r1, [r5, #0x14]
	bl FUN_ov45_0211a9a0
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r5, #0xac
	mov r0, #0xb4
	mla r10, r4, r0, r1
	mov r8, #0
	ldr r7, _0211AA78 ; =0x00007FFF
	ldr r6, _0211AA7C ; =0x02099F38
	b _0211AA10
_0211A9F0:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211AA0C
	ldr r0, [r6]
	mov r2, r7
	bl  FUN_ov16_02114204
_0211AA0C:
	add r8, r8, #1
_0211AA10:
	cmp r8, #0x10
	blt _0211A9F0
	sub r9, r4, #1
	add r7, r5, #0xac
	ldr r6, _0211AA80 ; =0x00004210
	mov r11, #0
	ldr r5, _0211AA7C ; =0x02099F38
	mov r4, #0xb4
	b _0211AA6C
_0211AA34:
	mla r10, r9, r4, r7
	mov r8, r11
	b _0211AA60
_0211AA40:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211AA5C
	ldr r0, [r5]
	mov r2, r6
	bl  FUN_ov16_02114204
_0211AA5C:
	add r8, r8, #1
_0211AA60:
	cmp r8, #0x10
	blt _0211AA40
	sub r9, r9, #1
_0211AA6C:
	cmp r9, #0
	bge _0211AA34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA78: .word 0x00007FFF
_0211AA7C: .word unk_02099F38
_0211AA80: .word 0x00004210
	arm_func_end FUN_ov45_0211a9bc

	arm_func_start FUN_ov45_0211aa84
FUN_ov45_0211aa84: ; 0x0211AA84
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	ldr r8, [r4]
	ldr r9, [r4, #0xc]
	bl FUN_ov45_0211a938
	ldr r1, [r5, #0xa8]
	mov r3, #0x28
	str r1, [r4, #4]
	ldr r1, [r5, #0x220]
	mov r0, #0
	str r1, [r4, #8]
	mov r2, #0x18
	str r3, [r4, #0xa4]
	str r0, [r4, #0x9c]
	str r0, [r4, #0xa0]
	ldrb r0, [r5, #0x21c]
	mov r1, r2
	cmp r0, #1
	moveq r1, r3
	ldr r3, [r4, #8]
	moveq r2, #0x30
	mov r0, #0
	cmp r3, #0
	ble _0211AB20
	mov r10, r0
	mov r6, #0x80
_0211AAF4:
	mul r3, r0, r2
	add r7, r4, r0, lsl #3
	strh r10, [r7, #0x6a]
	add r3, r3, #0x10
	strh r3, [r7, #0x6c]
	strh r6, [r7, #0x6e]
	strh r1, [r7, #0x70]
	ldr r3, [r4, #8]
	add r0, r0, #1
	cmp r0, r3
	blt _0211AAF4
_0211AB20:
	mov r2, #4
	mov r0, r5
	mov r1, r4
	mov r3, r2
	bl FUN_ov45_0211b0e8
	ldrb r0, [r5, #0x21c]
	ldr r3, [r5, #0x220]
	ldr r1, [r4, #0x5c]
	cmp r0, #0
	bne _0211AB50
	ldr r2, _0211ABCC ; =0x02120554
	b _0211AB54
_0211AB50:
	ldr r2, _0211ABD0 ; =0x02120544
_0211AB54:
	mov r0, r5
	mov r3, r3, lsl #1
	bl FUN_ov45_0211b2b0
	mov r10, #0
	str r10, [sp, #4]
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _0211ABA4
	mov r7, #0xa
	add r6, sp, #4
_0211AB7C:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r10
	str r7, [sp]
	bl FUN_ov45_0211aca8
	ldr r0, [r4, #8]
	add r10, r10, #1
	cmp r10, r0
	blt _0211AB7C
_0211ABA4:
	mov r0, r4
	mov r1, r8
	str r9, [r4, #0xc]
	bl  FUN_ov16_020f52f4
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl FUN_ov45_0211ac08
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211ABCC: .word ov45_02120554
_0211ABD0: .word ov45_02120544
	arm_func_end FUN_ov45_0211aa84

	arm_func_start FUN_ov45_0211abd4
FUN_ov45_0211abd4: ; 0x0211ABD4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [r5]
	mov r6, r0
	bl FUN_ov45_0211a938
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f52f4
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_ov45_0211ac08
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov45_0211abd4

	arm_func_start FUN_ov45_0211ac08
FUN_ov45_0211ac08: ; 0x0211AC08
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov45_0211b17c
	mov r0, r4
	mov r1, #3
	bl FUN_ov45_0211a818
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov45_0211ac08

	arm_func_start FUN_ov45_0211ac24
FUN_ov45_0211ac24: ; 0x0211AC24
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x10
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #4
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211ACA4 ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x62]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x61]
	ldr r1, [r5]
	add r2, r6, #0x62
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x1c]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211ACA4: .word unk_02099F38
	arm_func_end FUN_ov45_0211ac24

	arm_func_start FUN_ov45_0211aca8
FUN_ov45_0211aca8: ; 0x0211ACA8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r5, #5
	mov r4, #1
	mov r8, r3
	mov r9, r1
	mov r3, r4
	str r5, [sp]
	mov r10, r0
	bl FUN_ov45_0211ac24
	ldr r1, [r9, #0xa4]
	mov r5, r0
	sub r0, r1, #4
	mov r2, r0, lsl #0x10
	ldr r6, _0211B040 ; =0x02099F38
	mov r1, r5
	ldr r0, [r6]
	mov r2, r2, lsr #0x10
	mov r3, r4
	bl  FUN_ov16_02112c90
	add r1, r9, r8, lsl #3
	ldrsh r3, [r1, #0x6c]
	ldrsh r2, [r1, #0x6a]
	ldr r0, [r6]
	sub r3, r3, #0x10
	mov r3, r3, lsl #0x10
	mov r1, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	mov r7, #0
	str r7, [sp, #0x10]
	ldrb r0, [r10, #0x21c]
	mov r1, #0x18
	ldr r4, _0211B040 ; =0x02099F38
	cmp r0, #1
	add r0, r8, #3
	mov r6, r1
	streq r1, [sp, #0x10]
	add r0, r10, r0, lsl #2
	ldr r3, [r0, #0x34]
	mov r11, r7
	moveq r6, #0x30
	ldr r0, [r4]
	moveq r11, #0x20
	mov r1, r5
	mov r2, #1
	and r3, r3, #0xff
	subeq r7, r6, #0x38
	bl  FUN_ov16_021137dc
	add r0, r11, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	add r3, r7, #0x88
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, #0
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add r3, r8, #0xb
	add r3, r10, r3, lsl #2
	ldr r3, [r3, #0x34]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mul r0, r6, r8
	rsb r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, #8
	bl  FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, #0
	bl  FUN_ov16_0211401c
	mov r2, #2
	ldr r0, [r4]
	mov r1, r5
	mov r3, r2
	bl  FUN_ov16_02113f7c
	add r3, r8, #3
	add r3, r10, r3, lsl #2
	ldr r3, [r3, #0x34]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	add r0, r11, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	add r3, r7, #0x88
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	mov r3, #0
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldr r1, [r10, #0x3c]
	mov r10, #4
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r5
	mov r2, r10
	bl  FUN_ov16_021137dc
	ldr r0, [sp, #0x10]
	add r3, r7, #0x88
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r10
	mov r3, r8
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r2, r10
	mov r3, #2
	mov r1, r5
	bl  FUN_ov16_02113f7c
	ldr r3, [r9, #0x5c]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r10, #0x12
	mul r0, r8, r10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #5
	mov r3, #0
	bl  FUN_ov16_02113d88
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #5
	mov r3, #0x80
	bl  FUN_ov16_02113d08
	mul r0, r6, r8
	rsb r0, r0, #0x88
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #5
	mov r3, r10
	mov r1, r5
	bl  FUN_ov16_02113b78
	mov r1, #1
	rsb r2, r1, #0x8000
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_02112e5c
	add r0, r11, #8
	mla r0, r6, r8, r0
	str r0, [sp]
	add r3, r9, r8, lsl #3
	ldrsh r1, [r3, #0x6e]
	add r0, r8, #1
	mov r2, r0, lsl #0x10
	str r1, [sp, #4]
	ldrsh r3, [r3, #0x70]
	ldr r1, [sp, #0x38]
	ldr r0, _0211B044 ; =0x02099EB4
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0]
	mov r1, #3
	mov r2, r2, lsr #0x10
	add r3, r7, #0x88
	bl  FUN_ov16_0210fba4
	strh r5, [r0, #0x34]
	mov r1, #0
	strb r1, [r0, #0x38]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r2, _0211B048 ; =0x0210FB1C
	str r1, [r0, #0x24]
	str r2, [r0, #0x28]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B040: .word unk_02099F38
_0211B044: .word unk_02099EB4
_0211B048: .word 0x0210FB1C
	arm_func_end FUN_ov45_0211aca8

	arm_func_start FUN_ov45_0211b04c
FUN_ov45_0211b04c: ; 0x0211B04C
	stmfd sp!, {r3, lr}
	ldr r3, [r1, #0x10]
	cmp r3, #0
	ldmltfd sp!, {r3, pc}
	ldr r0, [r1, #8]
	cmp r3, r0
	ldrlt r2, [r1]
	ldrlt r0, [r1, #4]
	cmplt r2, r0
	ldmgefd sp!, {r3, pc}
	ldr r0, _0211B090 ; =0x02099EB4
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_0211B090: .word unk_02099EB4
	arm_func_end FUN_ov45_0211b04c

	arm_func_start FUN_ov45_0211b094
FUN_ov45_0211b094: ; 0x0211B094
	mov r2, #6
	str r2, [r0, #0x10]
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov45_0211b094

	arm_func_start FUN_ov45_0211b0a4
FUN_ov45_0211b0a4: ; 0x0211B0A4
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	beq _0211B0C0
	cmp r4, #1
	beq _0211B0C4
	b _0211B0D4
_0211B0C0:
	b _0211B0C4
_0211B0C4:
	ldr r0, _0211B0E4 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl  FUN_ov16_0210ee78
_0211B0D4:
	mov r0, #4
	str r4, [r5, #0x14]
	str r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B0E4: .word unk_02099EB4
	arm_func_end FUN_ov45_0211b0a4

	arm_func_start FUN_ov45_0211b0e8
FUN_ov45_0211b0e8: ; 0x0211B0E8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r6, r1
	str r5, [sp, #0x10]
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0211B178 ; =0x02099F38
	mov r1, r2
	ldr r0, [r4]
	mov r2, r3
	bl FUN_02059630
	mov r1, r0
	str r1, [r6, #0x5c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	str r5, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl FUN_0205935c
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B178: .word unk_02099F38
	arm_func_end FUN_ov45_0211b0e8

	arm_func_start FUN_ov45_0211b17c
FUN_ov45_0211b17c: ; 0x0211B17C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r0, [r0, #0x14]
	add r3, sp, #4
	mov r2, #0
	cmp r0, #0
	mov r10, r1
	addne sp, sp, #0x1c
	str r2, [r3]
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #0xc]
	str r2, [r3, #0x10]
	str r2, [r3, #0x14]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r6, #1
	mov r11, #4
	mov r5, #2
	ldr r4, _0211B2AC ; =0x02099F38
	b _0211B298
_0211B1D0:
	ldrb r1, [r10, #0x63]
	ldr r0, [r10, #0xc]
	mov r2, r11
	add r1, r1, r9
	add r1, r10, r1, lsl #2
	ldr r8, [r1, #0x1c]
	mov r3, r5
	add r7, r0, r9
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	bl  FUN_ov16_02113ec0
	ldr r0, [r10]
	cmp r7, r0
	bne _0211B258
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_02113ec0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, #3
	mov r3, r5
	bl  FUN_ov16_02113ec0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, #5
	mov r3, r5
	bl  FUN_ov16_02113ec0
	b _0211B294
_0211B258:
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_02113f7c
	ldr r0, [r4]
	mov r1, r8
	mov r2, #3
	mov r3, r5
	bl  FUN_ov16_02113f7c
	ldr r0, [r4]
	mov r1, r8
	mov r2, #5
	mov r3, r5
	bl  FUN_ov16_02113f7c
_0211B294:
	add r9, r9, #1
_0211B298:
	ldr r0, [r10, #8]
	cmp r9, r0
	blt _0211B1D0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B2AC: .word unk_02099F38
	arm_func_end FUN_ov45_0211b17c

	arm_func_start FUN_ov45_0211b2b0
FUN_ov45_0211b2b0: ; 0x0211B2B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211B390 ; =0x02099F38
	mov r10, r2
	ldr r0, [r4]
	mov r9, r3
	mov r7, #0
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl  FUN_ov16_02111458
	mov r8, r0
	mov r5, r7
	mov r4, #1
	ldr r11, _0211B394 ; =0x02099ED0
	b _0211B34C
_0211B304:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _0211B348
	str r8, [sp]
	str r5, [sp, #4]
	add r0, r7, r7, lsl #3
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r0, [r11]
	ldr r1, [r10, r7, lsl #2]
	mov r2, r6
	mov r3, #0x80
	bl FUN_020425fc
_0211B348:
	add r7, r7, #1
_0211B34C:
	cmp r7, r9
	blt _0211B304
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl DC_FlushRange
	ldr r0, _0211B390 ; =0x02099F38
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r6
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B390: .word unk_02099F38
_0211B394: .word unk_02099ED0
	arm_func_end FUN_ov45_0211b2b0

	arm_func_start FUN_ov45_0211b398
FUN_ov45_0211b398: ; 0x0211B398
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211B3E8 ; =0x02099F38
	mov r7, r0
	mov r3, r1
	ldr r0, [r4]
	ldr r1, [r7, #0x88]
	mov r5, #2
	mov r6, r2
	mov r2, r5
	bl  FUN_ov16_021142fc
	ldr r0, [r4]
	ldr r1, [r7, #0x8c]
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_021142fc
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	str r0, [r7, #0x214]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B3E8: .word unk_02099F38
	arm_func_end FUN_ov45_0211b398

	arm_func_start FUN_ov45_0211b3ec
FUN_ov45_0211b3ec: ; 0x0211B3EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B4F8 ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r4, #1
	blt _0211B498
	cmp r4, #7
	bgt _0211B498
	ldr r1, [r5, #0xac]
	ldr r0, [r5, #0xb8]
	mov r2, #0
	sub r4, r4, #1
	sub r0, r1, r0
	cmp r4, r0
	strb r2, [r5, #0x10c]
	moveq r0, #1
	streqb r0, [r5, #0x10c]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0xb0]
	cmp r1, r0
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r6, #8
	ldr r0, _0211B4FC ; =0x0209AC44
	mov r1, r6
	bl FUN_0202cf6c
	ldr r1, [r5, #0xb8]
	add r0, r5, #0xac
	add r1, r4, r1
	bl  FUN_ov16_020f52f4
	mov r0, r5
	mov r2, r6
	add r1, r5, #0xac
	bl FUN_ov45_0211ac08
	ldmfd sp!, {r4, r5, r6, pc}
_0211B498:
	cmp r4, #8
	bne _0211B4C8
	mov r4, #0
	mov r0, r5
	mov r2, r4
	add r1, r5, #0xac
	bl FUN_ov45_0211ac08
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_ov45_0211b398
	ldmfd sp!, {r4, r5, r6, pc}
_0211B4C8:
	cmp r4, #9
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #0
	mov r0, r5
	mov r2, r4
	add r1, r5, #0xac
	bl FUN_ov45_0211ac08
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov45_0211b398
	ldmfd sp!, {r4, r5, r6, pc}
_0211B4F8: .word unk_02099EB4
_0211B4FC: .word unk_0209AC44
	arm_func_end FUN_ov45_0211b3ec

	arm_func_start FUN_ov45_0211b500
FUN_ov45_0211b500: ; 0x0211B500
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211B5FC ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r7]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldr r1, [r6, #0x14]
	mov r0, r6
	bl FUN_ov45_0211a9a0
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #1
	blt _0211B5C0
	cmp r5, #7
	bgt _0211B5C0
	mov r0, #0xb4
	mla r3, r4, r0, r6
	ldr r2, [r3, #0xac]
	ldr r0, [r3, #0xb8]
	sub r1, r5, #1
	sub r0, r2, r0
	cmp r1, r0
	bne _0211B588
	ldrb r0, [r3, #0x10c]
	cmp r0, #0
	ldrne r0, [r7]
	movne r1, #1
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211B588:
	mov r5, #0xb4
	mul r3, r4, r5
	add r0, r6, r3
	ldr r2, [r0, #0xb8]
	add r0, r6, #0xac
	add r0, r0, r3
	add r1, r1, r2
	bl  FUN_ov16_020f52f4
	add r0, r6, #0xac
	mla r1, r4, r5, r0
	mov r0, r6
	mov r2, #8
	bl FUN_ov45_0211ac08
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B5C0:
	cmp r5, #8
	bne _0211B5E0
	ldr r0, _0211B5FC ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B5E0:
	cmp r5, #9
	ldreq r0, _0211B5FC ; =0x02099EB4
	moveq r1, #2
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B5FC: .word unk_02099EB4
	arm_func_end FUN_ov45_0211b500

	arm_func_start FUN_ov45_0211b600
FUN_ov45_0211b600: ; 0x0211B600
	bx lr
	arm_func_end FUN_ov45_0211b600

	arm_func_start FUN_ov45_0211b604
FUN_ov45_0211b604: ; 0x0211B604
	ldr r2, _0211B614 ; =0x02120844
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211B614: .word ov45_02120844
	arm_func_end FUN_ov45_0211b604

	arm_func_start FUN_ov45_0211b618
FUN_ov45_0211b618: ; 0x0211B618
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _0211B828 ; =0x0209A0F4
	ldr r2, _0211B82C ; =0x02099ED4
	ldrh r3, [r3]
	mov r6, r1
	mov r7, r0
	orr r0, r3, r6
	mov r1, r0, lsl #0x10
	ldr r0, [r2]
	mov r5, r1, lsr #0x10
	mov r4, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _0211B830 ; =0x02099EB4
	ldr r0, [r8]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B680
	ldr r0, [r8]
	add r0, r0, #0xf00
	ldrh r6, [r0, #0x38]
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, r6
	strh r4, [r0, #0x38]
_0211B680:
	ldr r0, [r7, #0x10]
	cmp r0, #5
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r5
	bl FUN_ov45_0211a880
	ldr r0, [r7, #0x14]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	tst r6, #1
	beq _0211B784
	mov r0, r7
	add r1, r7, #0xac
	bl FUN_ov45_0211b04c
	ldr r5, [r7, #0xac]
	add r0, r7, r5, lsl #2
	ldrb r0, [r0, #0x92]
	cmp r0, #0
	beq _0211B768
	ldr r0, _0211B834 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldrb r0, [r7, #0x21c]
	add r1, r7, r5, lsl #2
	mov r2, #0
	cmp r0, #1
	ldr r0, _0211B838 ; =0x020A1640
	moveq r2, #6
	ldrb r3, [r0, #0x12]
	ldrh r0, [r1, #0x90]
	and r1, r3, #2
	add r0, r2, r0
	cmp r0, #7
	cmpeq r1, #0
	bne _0211B744
	ldr r2, _0211B83C ; =0x0209A454
	mov r0, #6
	str r4, [r2, #8]
	strb r4, [r2, #0xc]
	str r0, [r2, #4]
	strb r4, [r2, #0x1e]
	mov r0, #1
	strb r0, [r2, #0x1f]
	strb r4, [r2, #0x20]
	mov r0, r7
	mov r1, #0x5f
	strb r4, [r2, #0x1d]
_0211B73C:
	bl FUN_ov45_0211b094
	b _0211B774
_0211B744:
	add r0, r7, r5, lsl #2
	ldrh r3, [r0, #0x90]
	ldr r0, _0211B840 ; =0x020A9C40
	ldr r1, _0211B844 ; =0x00000162
	add r2, r2, r3
	bl FUN_020460a8
	mov r0, r7
	mov r1, #0
	b _0211B73C
_0211B768:
	ldr r0, _0211B834 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
_0211B774:
	mov r0, r7
	mov r1, #3
	bl FUN_ov45_0211a818
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B784:
	tst r6, #2
	beq _0211B7B8
	ldr r0, _0211B834 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, _0211B840 ; =0x020A9C40
	mov r2, r4
	mov r1, #0x160
	bl FUN_020460a8
	mov r0, r7
	mov r1, r4
	bl FUN_ov45_0211b094
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B7B8:
	tst r5, #0x40
	beq _0211B7F0
	mov r4, #8
	ldr r0, _0211B834 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	add r0, r7, #0xac
	sub r1, r4, #9
	bl  FUN_ov16_020f53b0
	mov r0, r7
	mov r2, r4
	add r1, r7, #0xac
	bl FUN_ov45_0211ac08
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B7F0:
	tst r5, #0x80
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #8
	ldr r0, _0211B834 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	add r0, r7, #0xac
	mov r1, #1
	bl  FUN_ov16_020f53b0
	mov r0, r7
	mov r2, r4
	add r1, r7, #0xac
	bl FUN_ov45_0211ac08
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B828: .word unk_0209A0F4
_0211B82C: .word unk_02099ED4
_0211B830: .word unk_02099EB4
_0211B834: .word unk_0209AC44
_0211B838: .word unk_020A1640
_0211B83C: .word unk_0209A454
_0211B840: .word unk_020A9C40
_0211B844: .word 0x00000162
	arm_func_end FUN_ov45_0211b618

	arm_func_start FUN_ov45_0211b848
FUN_ov45_0211b848: ; 0x0211B848
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B910 ; =0x02099ED4
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #0x10]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B914 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210f20c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B894: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211B8A8 ; case 1
	b _0211B8C0 ; case 2
	b _0211B8D8 ; case 3
	b _0211B8F4 ; case 4
_0211B8A8:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov45_0211b3ec
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B8C0:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov45_0211b500
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B8D8:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl FUN_ov45_0211b600
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B8F4:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	mov r2, #1
	bl FUN_ov45_0211b600
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B910: .word unk_02099ED4
_0211B914: .word unk_02099EB4
	arm_func_end FUN_ov45_0211b848

	arm_func_start FUN_ov45_0211b918
FUN_ov45_0211b918: ; 0x0211B918
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211BAAC ; =0x02099EB4
	str r1, [r4, #0x218]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211BAB0 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x18
	mov r2, #0x10
	bl MI_CpuFill8
	mov r6, #1
	str r6, [r4, #0x18]
	ldr r0, [r4, #4]
	bl FUN_0204204c
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl FUN_020420b4
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	str r7, [r4, #0x14]
	add r0, r4, #0x224
	mov r1, r7
	mov r5, #0xc
	mov r2, r5
	bl MI_CpuFill8
	add r0, r4, #0x28
	mov r1, r7
	mov r2, r5
	bl MI_CpuFill8
	add r0, r4, #0x34
	mov r1, r7
	mov r2, #0x44
	bl MI_CpuFill8
	add r0, r4, #0x78
	mov r1, r7
	mov r2, #4
	bl MI_CpuFill8
	mov r2, r5
	add r0, r4, #0x7c
	mov r1, r7
	bl MI_CpuFill8
	add r0, r4, #0x88
	mov r1, r7
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x90
	mov r1, r7
	mov r2, #0x18
	bl MI_CpuFill8
	str r7, [r4, #0xa8]
	add r0, r4, #0xac
	mov r1, r7
	mov r2, #0x168
	bl MI_CpuFill8
	ldr r0, _0211BAB4 ; =0x0209A454
	str r7, [r4, #0x214]
	ldrb r0, [r0, #0x3a]
	cmp r0, #0
	moveq r0, #6
	movne r0, #2
	streqb r7, [r4, #0x21c]
	str r0, [r4, #0x220]
	ldr r0, _0211BAB8 ; =0x02099F38
	strneb r6, [r4, #0x21c]
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldr r7, _0211BABC ; =0x020A9C40
	ldr r6, _0211BAC0 ; =0x0000015E
	mov r5, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_020460a8
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0x5f
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211BAC4 ; =0x020A1640
	ldrb r0, [r0, #0x12]
	tst r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	add r1, r6, #4
	mov r2, #7
	bl FUN_020460a8
	mov r0, r4
	mov r1, r5
	bl FUN_ov45_0211b094
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BAAC: .word unk_02099EB4
_0211BAB0: .word unk_02099ED4
_0211BAB4: .word unk_0209A454
_0211BAB8: .word unk_02099F38
_0211BABC: .word unk_020A9C40
_0211BAC0: .word 0x0000015E
_0211BAC4: .word unk_020A1640
	arm_func_end FUN_ov45_0211b918

	arm_func_start FUN_ov45_0211bac8
FUN_ov45_0211bac8: ; 0x0211BAC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r1, r4, #0x18
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, [r4, #0x10]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211BC94
_0211BAF4: ; jump table
	b _0211BB14 ; case 0
	b _0211BB2C ; case 1
	b _0211BB68 ; case 2
	b _0211BB90 ; case 3
	b _0211BBA4 ; case 4
	b _0211BC94 ; case 5
	b _0211BC0C ; case 6
	b _0211BC48 ; case 7
_0211BB14:
	mov r0, r4
	bl FUN_ov45_02119f10
	mov r0, r4
	bl FUN_ov45_02119f8c
	mov r0, #1
	str r0, [r4, #0x10]
_0211BB2C:
	mov r5, #1
	mov r1, r5
	add r0, r4, #0x28
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211BC94
	mov r1, r5
	add r0, r4, #0x224
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211BC94
	mov r0, r4
	bl FUN_ov45_0211a008
	mov r0, #2
	str r0, [r4, #0x10]
_0211BB68:
	mov r0, r4
	bl FUN_ov45_0211a1fc
	cmp r0, #0
	beq _0211BC94
	mov r0, r4
	bl FUN_ov45_0211a24c
	mov r0, r4
	bl FUN_ov45_0211a4dc
	mov r0, #3
	str r0, [r4, #0x10]
_0211BB90:
	mov r0, r4
	mov r1, #0
	bl FUN_ov45_0211b0a4
	mov r0, r4
	bl FUN_ov45_0211a2b0
_0211BBA4:
	ldr r0, _0211BCAC ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211BC94
	mov r0, r4
	bl FUN_ov45_0211a360
	mov r0, r4
	bl FUN_ov45_0211a670
	mov r0, r4
	bl FUN_ov45_0211a744
	mov r0, r4
	mov r1, #3
	bl FUN_ov45_0211a818
	ldr r1, [r4, #0x14]
	mov r0, r4
	bl FUN_ov45_0211a8c0
	mov r0, r4
	bl FUN_ov45_0211a9bc
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r4, #0x10]
	b _0211BC94
_0211BC0C:
	ldr r0, _0211BCAC ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211BC94
	ldr r0, [r4, #8]
	cmp r0, #0x5f
	bne _0211BC38
	ldr r0, [r4, #4]
	bl FUN_02041d9c
	b _0211BC40
_0211BC38:
	mov r0, #6
	bl  FUN_ov16_020f153c
_0211BC40:
	mov r0, #7
	str r0, [r4, #0x10]
_0211BC48:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211BC94
	ldr r2, [r4, #8]
	mov r1, #0
	cmp r2, #0x5f
	bne _0211BC7C
	ldr r0, [r4, #4]
	bl FUN_02041ef0
	b _0211BC94
_0211BC7C:
	ldr r4, [r4, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
_0211BC94:
	ldr r0, _0211BCAC ; =0x02099ED4
	ldr r1, _0211BCB0 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl  FUN_ov16_0210e10c
	ldmfd sp!, {r3, r4, r5, pc}
_0211BCAC: .word unk_02099ED4
_0211BCB0: .word unk_0209A110
	arm_func_end FUN_ov45_0211bac8

	arm_func_start FUN_ov45_0211bcb4
FUN_ov45_0211bcb4: ; 0x0211BCB4
	bx lr
	arm_func_end FUN_ov45_0211bcb4

	arm_func_start FUN_ov45_0211bcb8
FUN_ov45_0211bcb8: ; 0x0211BCB8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r2, #0x4000000
	mov r4, r0
	ldr r0, [r2]
	ldr r1, [r4, #0x218]
	bic r0, r0, #0x1f00
	orr r3, r0, r1, lsl #8
	mov r5, #2
	mov r0, r5
	mov r1, #0x10
	str r3, [r2]
	bl  FUN_ov16_020f1aec
	ldr r0, _0211BD60 ; =0x020A9C40
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020460c0
	ldr r1, [sp, #4]
	add r0, r5, #0x160
	cmp r1, r0
	bne _0211BD1C
	ldr r0, _0211BD64 ; =0x02099F54
	ldr r1, [sp]
	ldr r0, [r0]
	bl  FUN_ov16_020f82bc
_0211BD1C:
	ldr r0, _0211BD60 ; =0x020A9C40
	ldr r1, _0211BD68 ; =0x00000161
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211BD6C ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211BD70 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov45_0211a0f8
	ldr r0, _0211BD74 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0211BD60: .word unk_020A9C40
_0211BD64: .word unk_02099F54
_0211BD68: .word 0x00000161
_0211BD6C: .word unk_02099EB4
_0211BD70: .word unk_02099ED4
_0211BD74: .word unk_02099F38
	arm_func_end FUN_ov45_0211bcb8

	arm_func_start FUN_ov45_0211bd78
FUN_ov45_0211bd78: ; 0x0211BD78
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov45_0211bd78

	arm_func_start FUN_ov45_0211bd8c
FUN_ov45_0211bd8c: ; 0x0211BD8C
	bx lr
	arm_func_end FUN_ov45_0211bd8c

	arm_func_start FUN_ov45_0211bd90
FUN_ov45_0211bd90: ; 0x0211BD90
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x80
	mov r4, r0
	add r2, sp, #0
	mov r1, #0x20
	mov r0, #0
_0211BDA8:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _0211BDA8
	ldrb r0, [r4, #0x2a8]
	cmp r0, #0
	bne _0211BDDC
	add r0, sp, #0
	ldr r1, _0211BE04 ; =0x02120A1C
	b _0211BDEC
_0211BDDC:
	cmp r0, #1
	bne _0211BDF0
	ldr r1, _0211BE08 ; =0x02120A3C
	add r0, sp, #0
_0211BDEC:
	bl FUN_02023c40
_0211BDF0:
	add r0, sp, #0
	add r1, r4, #0x150
	bl  FUN_ov16_020f316c
	add sp, sp, #0x80
	ldmfd sp!, {r4, pc}
_0211BE04: .word ov45_02120A1C
_0211BE08: .word ov45_02120A3C
	arm_func_end FUN_ov45_0211bd90

	arm_func_start FUN_ov45_0211be0c
FUN_ov45_0211be0c: ; 0x0211BE0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r7, _0211BE8C ; =0x020A6C40
	mov r6, #0x800
	mov r8, #0
	mov r9, r0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r5, _0211BE90 ; =0x020A7440
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r4, _0211BE94 ; =0x020A7C40
	mov r0, r8
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
	add r1, r9, #0x15c
	ldr r0, _0211BE98 ; =0x02120A5C
	bl  FUN_ov16_020f316c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BE8C: .word unk_020A6C40
_0211BE90: .word unk_020A7440
_0211BE94: .word unk_020A7C40
_0211BE98: .word ov45_02120A5C
	arm_func_end FUN_ov45_0211be0c

	arm_func_start FUN_ov45_0211be9c
FUN_ov45_0211be9c: ; 0x0211BE9C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x84
	mov r5, r0
	add r2, sp, #4
	mov r1, #0x20
	mov r0, #0
_0211BEB4:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _0211BEB4
	ldrb r0, [r5, #0x2a8]
	cmp r0, #0
	bne _0211BEE8
	add r0, sp, #4
	ldr r1, _0211BF2C ; =0x02120A74
	b _0211BEF8
_0211BEE8:
	cmp r0, #1
	bne _0211BEFC
	ldr r1, _0211BF30 ; =0x02120A94
	add r0, sp, #4
_0211BEF8:
	bl FUN_02023c40
_0211BEFC:
	mov r4, #0
	str r4, [sp]
	ldr r1, [r5, #0x150]
	ldr r2, _0211BF34 ; =0x02120370
	add r0, sp, #4
	add r3, r5, #0x168
	bl  FUN_ov16_020f5450
	mov r0, r5
	mov r1, r4
	bl FUN_ov45_0211bf38
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, pc}
_0211BF2C: .word ov45_02120A74
_0211BF30: .word ov45_02120A94
_0211BF34: .word 0x02120370
	arm_func_end FUN_ov45_0211be9c

	arm_func_start FUN_ov45_0211bf38
FUN_ov45_0211bf38: ; 0x0211BF38
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211BF4C
	cmp r4, #2
	blt _0211BFA0
_0211BF4C:
	mov r4, #0
	add r9, r0, #0x150
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211BF60:
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
	cmp r4, #2
	blt _0211BF60
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BFA0:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0x150
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
	arm_func_end FUN_ov45_0211bf38

	arm_func_start FUN_ov45_0211bfe0
FUN_ov45_0211bfe0: ; 0x0211BFE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mvn r5, #0
	mov r6, r0
	mov r1, r5
	mov r4, #0
	bl FUN_ov45_0211bf38
	mov r1, r5
	add r0, r6, #0x190
	bl  FUN_ov16_020f57b0
	mov r5, r4
	add r8, r6, #0x2ac
	mov r7, #0xc
	b _0211C020
_0211C014:
	mla r0, r5, r7, r8
	bl  FUN_ov16_020f33fc
	add r5, r5, #1
_0211C020:
	cmp r5, #1
	blt _0211C014
	mov r5, #0
	add r8, r6, #0x198
	mov r7, #0x108
	b _0211C048
_0211C038:
	mla r1, r5, r7, r8
	mov r0, r6
	bl FUN_ov45_0211cf84
	add r5, r5, #1
_0211C048:
	cmp r5, #1
	blt _0211C038
	mov r5, #0
	ldr r7, _0211C0F4 ; =0x02099F38
	b _0211C078
_0211C05C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x184]
	cmp r1, #0
	beq _0211C074
	ldr r0, [r7]
	bl  FUN_ov16_021128c4
_0211C074:
	add r5, r5, #1
_0211C078:
	cmp r5, #1
	blt _0211C05C
	mov r5, #0
	ldr r7, _0211C0F4 ; =0x02099F38
	b _0211C0B0
_0211C08C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x168]
	cmp r1, #0
	beq _0211C0AC
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x168]
_0211C0AC:
	add r5, r5, #1
_0211C0B0:
	cmp r5, #6
	blt _0211C08C
	mov r5, #0
	ldr r7, _0211C0F4 ; =0x02099F38
	b _0211C0E8
_0211C0C4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x180]
	cmp r1, #0
	beq _0211C0E4
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x180]
_0211C0E4:
	add r5, r5, #1
_0211C0E8:
	cmp r5, #1
	blt _0211C0C4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C0F4: .word unk_02099F38
	arm_func_end FUN_ov45_0211bfe0

	arm_func_start FUN_ov45_0211c0f8
FUN_ov45_0211c0f8: ; 0x0211C0F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x150
	mov r1, #2
	bl  FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211C15C ; =0x02099F38
	b _0211C14C
_0211C124:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x168]
	cmp r1, #0
	beq _0211C148
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211C148:
	add r5, r5, #1
_0211C14C:
	cmp r5, #6
	blt _0211C124
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211C15C: .word unk_02099F38
	arm_func_end FUN_ov45_0211c0f8

	arm_func_start FUN_ov45_0211c160
FUN_ov45_0211c160: ; 0x0211C160
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211C1C0 ; =0x02099F38
	b _0211C1B4
_0211C178:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x168]
	cmp r1, #0
	beq _0211C1B0
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211C1B0
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x168]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211C1B0:
	add r6, r6, #1
_0211C1B4:
	cmp r6, #6
	blt _0211C178
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C1C0: .word unk_02099F38
	arm_func_end FUN_ov45_0211c160

	arm_func_start FUN_ov45_0211c1c4
FUN_ov45_0211c1c4: ; 0x0211C1C4
	stmfd sp!, {r4, r5, r6, lr}
	bl FUN_0200505c
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r5
	bl DC_FlushRange
	mov r4, #0x800
	ldr r0, _0211C268 ; =0x020A6C40
	mov r1, r6
	mov r2, r4
	bl FUN_0200569c
	bl FUN_02004f78
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r5
	bl DC_FlushRange
	ldr r0, _0211C26C ; =0x020A7440
	mov r1, r6
	mov r2, r4
	bl FUN_020054dc
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r5
	bl DC_FlushRange
	mov r1, r6
	mov r2, r4
	ldr r0, _0211C270 ; =0x020A7C40
	bl FUN_020055bc
	ldmfd sp!, {r4, r5, r6, pc}
_0211C268: .word unk_020A6C40
_0211C26C: .word unk_020A7440
_0211C270: .word unk_020A7C40
	arm_func_end FUN_ov45_0211c1c4

	arm_func_start FUN_ov45_0211c274
FUN_ov45_0211c274: ; 0x0211C274
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x184]
	cmp r0, #0
	bne _0211C2A4
	ldr r0, _0211C31C ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	str r0, [r5, #0x184]
_0211C2A4:
	ldr r6, [r5, #0x184]
	cmp r6, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0211C31C ; =0x02099F38
	ldr r3, [r5, #0x168]
	mov r5, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #0x258
	bl  FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r6
	mov r3, r5
	mov r2, #2
	bl  FUN_ov16_021142fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C31C: .word unk_02099F38
	arm_func_end FUN_ov45_0211c274

	arm_func_start FUN_ov45_0211c320
FUN_ov45_0211c320: ; 0x0211C320
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, #0
	str r5, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r1, #0x28
	ldr r0, _0211C378 ; =0x02099EB4
	str r1, [sp, #0xc]
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	mov r3, r5
	mov r2, #0x12
	bl  FUN_ov16_0210fba4
	cmp r0, #0
	strneb r5, [r0, #0x10]
	strneh r4, [r0, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0211C378: .word unk_02099EB4
	arm_func_end FUN_ov45_0211c320

	arm_func_start FUN_ov45_0211c37c
FUN_ov45_0211c37c: ; 0x0211C37C
	bx lr
	arm_func_end FUN_ov45_0211c37c

	arm_func_start FUN_ov45_0211c380
FUN_ov45_0211c380: ; 0x0211C380
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r4, r1
	mov r6, r8
	mov r7, #1
	ldr r5, _0211C3E4 ; =0x02099EB4
	b _0211C3D8
_0211C39C:
	mov r0, r7, lsl r8
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r5]
	mov r1, r9
	bl  FUN_ov16_0210ebd4
	movs r1, r0
	beq _0211C3D4
	tst r9, r4
	moveq r0, r7
	movne r0, r6
	strb r0, [r1, #0x10]
	ldr r0, [r5]
	bl  FUN_ov16_0210ee80
_0211C3D4:
	add r8, r8, #1
_0211C3D8:
	cmp r8, #0x10
	blt _0211C39C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C3E4: .word unk_02099EB4
	arm_func_end FUN_ov45_0211c380

	arm_func_start FUN_ov45_0211c3e8
FUN_ov45_0211c3e8: ; 0x0211C3E8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _0211C424 ; =0x02099EB4
	and r1, r1, #3
	ldr r0, [r4]
	add r2, sp, #0
	bl  FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl  FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211C424: .word unk_02099EB4
	arm_func_end FUN_ov45_0211c3e8

	arm_func_start FUN_ov45_0211c428
FUN_ov45_0211c428: ; 0x0211C428
	bx lr
	arm_func_end FUN_ov45_0211c428

	arm_func_start FUN_ov45_0211c42c
FUN_ov45_0211c42c: ; 0x0211C42C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0x10
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211C490 ; =0x02099F38
	mov r1, #0xc
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x1c]
	ldrb r0, [r5, #0x63]
	cmp r0, #0
	ldreq r0, [r4]
	streqb r0, [r5, #0x62]
	ldrb r0, [r5, #0x63]
	add r0, r0, #1
	strb r0, [r5, #0x63]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C490: .word unk_02099F38
	arm_func_end FUN_ov45_0211c42c

	arm_func_start FUN_ov45_0211c494
FUN_ov45_0211c494: ; 0x0211C494
	bx lr
	arm_func_end FUN_ov45_0211c494

	arm_func_start FUN_ov45_0211c498
FUN_ov45_0211c498: ; 0x0211C498
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r1
	ldr r1, [sp, #0x20]
	mov r7, r2
	mov r6, r3
	mov r5, #0
	mov r10, #2
	add r4, r0, r1, lsl #2
	ldr r9, _0211C4FC ; =0x02099F38
	b _0211C4F0
_0211C4C0:
	ldr r3, [r4, #0x168]
	ldr r0, [r9]
	mov r1, r8
	add r2, r7, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, [r9]
	mov r1, r8
	mov r3, r10
	add r2, r7, r5
	bl  FUN_ov16_02113f7c
	add r5, r5, #1
_0211C4F0:
	cmp r5, r6
	blt _0211C4C0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C4FC: .word unk_02099F38
	arm_func_end FUN_ov45_0211c498

	arm_func_start FUN_ov45_0211c500
FUN_ov45_0211c500: ; 0x0211C500
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldrb r1, [r9, #0x63]
	mov r7, r0
	mov r4, r2
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, r4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x62]
	ldr r0, [r9, #0xf0]
	ldr r8, _0211C7D8 ; =0x02099F38
	add r1, r1, r4
	add r1, r9, r1, lsl #2
	sub r0, r0, #4
	ldr r6, [r1, #0x1c]
	mov r2, r0, lsl #0x10
	ldr r0, [r8]
	mov r1, r6
	mov r2, r2, lsr #0x10
	mvn r3, #0
	bl  FUN_ov16_02112c90
	add r0, r9, r4, lsl #3
	ldrsh r2, [r0, #0x68]
	ldrsh r3, [r0, #0x6a]
	ldr r0, [r8]
	mov r1, r6
	bl  FUN_ov16_02114248
	ldr r1, [r7, #0x16c]
	ldr r0, [r8]
	and r3, r1, #0xff
	mov r1, r6
	mov r10, #1
	mov r2, r10
	bl  FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r10
	mov r3, r5
	bl  FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r10
	mov r3, r5
	bl  FUN_ov16_0211401c
	mov r2, r10
	ldr r0, [r8]
	mov r1, r6
	mov r11, #2
	mov r3, r11
	bl  FUN_ov16_02113f7c
	ldr r1, [r9, #0x5c]
	ldr r0, [r8]
	and r3, r1, #0xff
	mov r1, r6
	mov r2, r11
	bl  FUN_ov16_021137dc
	add r0, r4, r4, lsl #3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r11
	mov r3, r5
	bl  FUN_ov16_02113d88
	mov r0, #9
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r11
	mov r3, #0x40
	bl  FUN_ov16_02113d08
	mov r4, #4
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r11
	mov r9, #0x1a
	mov r3, r9
	bl  FUN_ov16_02113b78
	ldr r0, [r8]
	mov r1, r6
	mov r2, r11
	mov r3, r11
	bl  FUN_ov16_02113f7c
	mov r10, #3
	sub r0, r9, #0x1e
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r10
	sub r3, r10, #6
	bl  FUN_ov16_02113b78
	ldr r0, [r8]
	mov r1, r6
	mov r2, r10
	mov r3, r11
	bl  FUN_ov16_02113f7c
	ldrb r0, [r7, #0x2a8]
	cmp r0, #0
	bne _0211C738
	ldr r3, [r7, #0x17c]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r9, #8
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	mov r3, #0x58
	bl  FUN_ov16_02113b78
	str r5, [sp]
	mov r3, r5
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_0211401c
	ldr r0, [r8]
	mov r2, r4
	mov r1, r6
	mov r3, r11
	bl  FUN_ov16_02113f7c
	str r11, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, #5
	mov r3, r10
	bl FUN_ov45_0211c498
	mov r2, r9
	str r10, [sp]
	mov r3, r10
	mov r0, r7
	mov r1, r6
	bl FUN_ov45_0211c498
	b _0211C7B8
_0211C738:
	cmp r0, #1
	bne _0211C7B8
	ldr r3, [r7, #0x17c]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #8
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	mov r3, #0x50
	bl  FUN_ov16_02113b78
	str r5, [sp]
	mov r3, r5
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_0211401c
	ldr r0, [r8]
	mov r3, r11
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_02113f7c
	str r10, [sp]
	mov r3, r4
	mov r0, r7
	mov r1, r6
	mov r2, #7
	bl FUN_ov45_0211c498
_0211C7B8:
	mov r4, #4
	mov r0, r7
	mov r1, r6
	mov r2, #0xb
	mov r3, #2
	str r4, [sp]
	bl FUN_ov45_0211c498
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C7D8: .word unk_02099F38
	arm_func_end FUN_ov45_0211c500

	arm_func_start FUN_ov45_0211c7dc
FUN_ov45_0211c7dc: ; 0x0211C7DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r6, #0
	mov r10, r1
	mov r9, r2
	mov r8, r3
	mov r7, #1
	ldr r4, [sp, #0x30]
	ldrb r5, [sp, #0x3c]
	mov r11, r6
	b _0211C858
_0211C808:
	mov r0, r11
	cmp r5, #0
	beq _0211C82C
	mov r1, #1
	cmp r6, #0
	cmpne r4, r7
	movlt r1, r11
	cmp r1, #0
	movne r0, #1
_0211C82C:
	str r0, [sp]
	ldr r0, _0211C930 ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	add r2, r9, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0xa
	mul r0, r7, r0
	mov r7, r0
	add r6, r6, #1
_0211C858:
	cmp r6, r8
	blt _0211C808
	ldrb r0, [sp, #0x3c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r0, [sp, #0x34]
	mov r6, #0
	mov r7, #1
	ldr r5, [sp, #0x30]
	ldrsh r4, [sp, #0x38]
	str r0, [sp, #4]
	b _0211C920
_0211C88C:
	cmp r6, #0
	cmpne r5, r7
	blt _0211C910
	mov r0, r5
	mov r1, r7
	bl FUN_0201f9bc
	mov r12, r0
	ldr r3, _0211C934 ; =0x66666667
	mov r1, #0
	smull lr, r11, r3, r12
	mov r3, r12, lsr #0x1f
	add r11, r3, r11, asr #2
	mov r3, #0xa
	smull r11, lr, r3, r11
	str r1, [sp]
	ldr r0, _0211C930 ; =0x02099F38
	sub r11, r12, r11
	mov r3, r11, lsl #0x10
	ldr r0, [r0]
	mov r1, r10
	add r2, r9, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_0211401c
	ldr r3, [sp, #4]
	ldr r0, _0211C930 ; =0x02099F38
	str r4, [sp]
	sub r3, r3, r6, lsl #3
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r1, r10
	add r2, r9, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
_0211C910:
	mov r0, #0xa
	mul r0, r7, r0
	mov r7, r0
	add r6, r6, #1
_0211C920:
	cmp r6, r8
	blt _0211C88C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C930: .word unk_02099F38
_0211C934: .word 0x66666667
	arm_func_end FUN_ov45_0211c7dc

	arm_func_start FUN_ov45_0211c938
FUN_ov45_0211c938: ; 0x0211C938
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x140
	mov r10, r0
	mov r0, #0
	mov r9, r1
	add r4, sp, #0xb8
	mov r1, r0
	add r3, sp, #0x78
	add r2, sp, #0x38
	stmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r4, {r0, r1}
	stmia r2, {r0, r1}
	stmia r3, {r0, r1}
	add r2, sp, #0x28
	mov r4, r0
	mov r1, #4
_0211C9C8:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _0211C9C8
	mov r6, #0
	b _0211CAB4
_0211C9EC:
	ldr r0, [r9, #0xc]
	adds r1, r0, r6
	bmi _0211CAB0
	ldr r0, [r9, #4]
	cmp r1, r0
	bge _0211CAB0
	add r0, r10, r1, lsl #1
	ldrh r5, [r0, #0x2c]
	mov r7, #0
	mov r1, r7
	mov r0, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211CAB0
	add r2, sp, #0x78
	add r1, sp, #0xb8
	add r3, r0, #0x1c
	str r3, [r1, r6, lsl #2]
	str r7, [r2, r6, lsl #2]
	add r3, r0, #0x6c
	b _0211CA58
_0211CA40:
	add r0, r3, r7
	ldrb r1, [r0, #0xf]
	ldr r0, [r2, r6, lsl #2]
	add r7, r7, #1
	add r0, r0, r1
	str r0, [r2, r6, lsl #2]
_0211CA58:
	cmp r7, #7
	blt _0211CA40
	mov r1, r5, lsl #0x10
	ldr r0, _0211CBE0 ; =0x0209BA20
	add r2, sp, #0xf8
	mov r1, r1, lsr #0x10
	bl FUN_0204c078
	add r0, sp, #0x120
	ldrh r2, [r0, #0x14]
	add r1, sp, #0x38
	ldr r0, _0211CBE4 ; =0x020A1540
	cmp r2, #0
	ldreq r2, _0211CBE8 ; =0x00007FFF
	str r2, [r1, r6, lsl #2]
	ldrb r1, [sp, #0x13e]
	ldrh r0, [r0, #0xd0]
	mov r0, r0, asr r1
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	add r0, sp, #0x28
	strb r1, [r0, r6]
_0211CAB0:
	add r6, r6, #1
_0211CAB4:
	ldr r0, [r9, #8]
	cmp r6, r0
	blt _0211C9EC
	ldr r5, _0211CBEC ; =0x02099F38
	ldr r1, [r9, #0x5c]
	mov r6, #0
	ldr r0, [r5]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r6, [sp, #0x20]
	bl FUN_0205935c
	ldr r0, [r5]
	ldr r1, [r9, #0x5c]
	ldr r7, [sp, #0x20]
	bl  FUN_ov16_02111458
	mov r8, r0
	add r11, sp, #0x78
	add r5, sp, #0xb8
	b _0211CB9C
_0211CB00:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _0211CB98
	ldr r0, [r10, #0x20]
	cmp r0, #6
	cmpne r0, #7
	moveq r1, #1
	beq _0211CB5C
	add r1, sp, #0x38
	ldr r2, [r1, r6, lsl #2]
	ldr r0, [r11, r6, lsl #2]
	add r1, r2, #0x14
	cmp r0, r1
	movge r1, #8
	bge _0211CB5C
	add r1, sp, #0x28
	ldrb r1, [r1, r6]
	cmp r1, #0
	bne _0211CB58
	cmp r0, r2
	movge r1, #8
	bge _0211CB5C
_0211CB58:
	mov r1, #1
_0211CB5C:
	str r8, [sp]
	str r4, [sp, #4]
	add r0, r6, r6, lsl #3
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r0, _0211CBF0 ; =0x02099ED0
	ldr r1, [r5, r6, lsl #2]
	ldr r0, [r0]
	mov r2, r7
	mov r3, #0x40
	bl FUN_020425fc
_0211CB98:
	add r6, r6, #1
_0211CB9C:
	cmp r6, #0x10
	blt _0211CB00
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl DC_FlushRange
	ldr r0, _0211CBEC ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r9, #0x5c]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r7
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x140
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CBE0: .word unk_0209BA20
_0211CBE4: .word unk_020A1540
_0211CBE8: .word 0x00007FFF
_0211CBEC: .word unk_02099F38
_0211CBF0: .word unk_02099ED0
	arm_func_end FUN_ov45_0211c938

	arm_func_start FUN_ov45_0211cbf4
FUN_ov45_0211cbf4: ; 0x0211CBF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r3, [r1, #0xc]
	mov r10, r0
	cmp r2, #0
	add r4, r3, r2
	addlt sp, sp, #0x10
	ldr r0, _0211CEB8 ; =0x02099F38
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r1, #8]
	cmp r2, r3
	addge sp, sp, #0x10
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #0
	addlt sp, sp, #0x10
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r5, [r1, #0x62]
	ldr r3, [r1, #4]
	ldr r0, [r0]
	add r2, r5, r2
	add r1, r1, r2, lsl #2
	cmp r4, r3
	ldr r5, [r1, #0x1c]
	mov r2, #2
	blt _0211CC68
	mov r1, r5
	bl  FUN_ov16_02114370
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CC68:
	mov r6, #0
	mov r1, r5
	mov r3, #1
	mov r9, r6
	mov r8, r6
	bl  FUN_ov16_021142fc
	add r0, r10, r4, lsl #1
	ldrh r0, [r0, #0x2c]
	mov r1, r6
	bl  FUN_ov16_020efa9c
	movs r7, r0
	beq _0211CCB8
	bl FUN_0206cc00
	ldr r1, [r10, #0x24]
	mov r6, r0
	add r0, r4, r1, lsl #4
	add r0, r10, r0, lsl #2
	ldr r8, [r0, #0x50]
	ldr r0, [r0, #0xd0]
	add r9, r0, r8
_0211CCB8:
	mov r11, #1
	ldr r4, _0211CEB8 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	mov r3, #2
	bl  FUN_ov16_02113ec0
	str r11, [sp]
	mov r2, #2
	ldr r0, [r4]
	mov r1, r5
	mov r3, r2
	bl  FUN_ov16_02113ec0
	cmp r6, #0
	beq _0211CD6C
	mov r0, r10
	mov r1, r6
	bl FUN_ov45_0211d248
	and r3, r0, #0xff
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	bl  FUN_ov16_021137dc
	str r11, [sp]
	mov r6, #0
	ldr r0, [r4]
	mov r1, r5
	mov r2, #3
	mov r3, r6
	bl  FUN_ov16_0211401c
	sub r0, r6, #4
	str r0, [sp]
	ldr r0, [r4]
	sub r3, r6, #3
	mov r1, r5
	mov r2, #3
	bl  FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r4]
	mov r2, #3
	mov r3, #2
	mov r1, r5
	bl  FUN_ov16_02113ec0
	b _0211CD80
_0211CD6C:
	ldr r0, [r4]
	mov r1, r5
	mov r3, #2
	mov r2, #3
	bl  FUN_ov16_02113f7c
_0211CD80:
	ldrb r1, [r10, #0x2a8]
	mov r4, #1
	ldr r0, _0211CEB8 ; =0x02099F38
	cmp r1, #0
	bne _0211CE14
	cmp r8, r9
	mov r2, #4
	mov r3, #2
	bge _0211CDB8
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_02113ec0
	b _0211CDC4
_0211CDB8:
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_02113f7c
_0211CDC4:
	str r8, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r8, #8
	mov r6, #3
	str r8, [sp, #8]
	mov r0, r10
	mov r1, r5
	mov r3, r6
	str r4, [sp, #0xc]
	mov r2, #5
	bl FUN_ov45_0211c7dc
	str r9, [sp]
	mov r0, #0x70
	stmib sp, {r0, r8}
	mov r0, r10
	mov r1, r5
	mov r2, r8
	mov r3, r6
	b _0211CE70
_0211CE14:
	cmp r1, #1
	bne _0211CE78
	cmp r8, r9
	mov r2, #4
	mov r3, #2
	bge _0211CE40
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_02113ec0
	b _0211CE4C
_0211CE40:
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_02113f7c
_0211CE4C:
	str r9, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r5
	mov r2, #7
	mov r3, #4
_0211CE70:
	str r4, [sp, #0xc]
	bl FUN_ov45_0211c7dc
_0211CE78:
	mov r0, r7
	bl FUN_0206cc34
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r2, #0
	mov r0, r10
	mov r1, r5
	str r2, [sp, #8]
	mov r4, #1
	mov r2, #0xb
	mov r3, #2
	str r4, [sp, #0xc]
	bl FUN_ov45_0211c7dc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CEB8: .word unk_02099F38
	arm_func_end FUN_ov45_0211cbf4

	arm_func_start FUN_ov45_0211cebc
FUN_ov45_0211cebc: ; 0x0211CEBC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	beq _0211CF04
	bl FUN_ov45_0211c494
	ldr r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ble _0211CF04
_0211CEE4:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov45_0211c500
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0211CEE4
_0211CF04:
	ldr r2, [r5, #0x4c]
	mov r0, r5
	mov r1, r4
	str r2, [r4, #4]
	bl FUN_ov45_0211c938
	ldr r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0211CF28:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov45_0211cbf4
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0211CF28
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov45_0211cebc

	arm_func_start FUN_ov45_0211cf4c
FUN_ov45_0211cf4c: ; 0x0211CF4C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _0211CF80 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	mov r1, #3
	bl  FUN_ov16_0210eb3c
	cmp r4, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	add r1, r5, #0x198
	bl FUN_ov45_0211d0c0
	ldmfd sp!, {r3, r4, r5, pc}
_0211CF80: .word unk_02099EB4
	arm_func_end FUN_ov45_0211cf4c

	arm_func_start FUN_ov45_0211cf84
FUN_ov45_0211cf84: ; 0x0211CF84
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211CFE8 ; =0x02099F38
	b _0211CFB4
_0211CF98:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211CFB0
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211CFB0:
	add r5, r5, #1
_0211CFB4:
	cmp r5, #0x10
	blt _0211CF98
	ldr r1, [r6, #0x5c]
	cmp r1, #0
	ble _0211CFD4
	ldr r0, _0211CFE8 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211CFD4:
	mov r0, r6
	mov r1, #0
	mov r2, #0x108
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211CFE8: .word unk_02099F38
	arm_func_end FUN_ov45_0211cf84

	arm_func_start FUN_ov45_0211cfec
FUN_ov45_0211cfec: ; 0x0211CFEC
	cmp r1, #0
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov45_0211cfec

	arm_func_start FUN_ov45_0211cff8
FUN_ov45_0211cff8: ; 0x0211CFF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	ldr r1, [r5, #0x18]
	bl FUN_ov45_0211cfec
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r5, #0x198
	mov r0, #0x108
	mla r10, r4, r0, r1
	mov r8, #0
	ldr r7, _0211D0B4 ; =0x00007FFF
	ldr r6, _0211D0B8 ; =0x02099F38
	b _0211D04C
_0211D02C:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211D048
	ldr r0, [r6]
	mov r2, r7
	bl  FUN_ov16_02114204
_0211D048:
	add r8, r8, #1
_0211D04C:
	cmp r8, #0x10
	blt _0211D02C
	sub r9, r4, #1
	add r7, r5, #0x198
	ldr r6, _0211D0BC ; =0x00004210
	mov r11, #0
	ldr r5, _0211D0B8 ; =0x02099F38
	mov r4, #0x108
	b _0211D0A8
_0211D070:
	mla r10, r9, r4, r7
	mov r8, r11
	b _0211D09C
_0211D07C:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211D098
	ldr r0, [r5]
	mov r2, r6
	bl  FUN_ov16_02114204
_0211D098:
	add r8, r8, #1
_0211D09C:
	cmp r8, #0x10
	blt _0211D07C
	sub r9, r9, #1
_0211D0A8:
	cmp r9, #0
	bge _0211D070
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D0B4: .word 0x00007FFF
_0211D0B8: .word unk_02099F38
_0211D0BC: .word 0x00004210
	arm_func_end FUN_ov45_0211cff8

	arm_func_start FUN_ov45_0211d0c0
FUN_ov45_0211d0c0: ; 0x0211D0C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_ov45_0211cf84
	ldr r3, [r5, #0x4c]
	mov r2, #0x10
	mov r0, #0
	mov r1, #0x28
	str r3, [r4, #4]
	str r2, [r4, #8]
	str r0, [r4, #0xe8]
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	cmp r2, #0
	ble _0211D150
	mov r6, #0x18
	mov r7, #0x80
	mov r3, r6
_0211D10C:
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #29
	add r1, r2, r1, ror #29
	mul r2, r1, r3
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r12, r1, asr #3
	add r1, r4, r0, lsl #3
	mov r12, r12, lsl #7
	strh r12, [r1, #0x68]
	strh r2, [r1, #0x6a]
	strh r7, [r1, #0x6c]
	strh r6, [r1, #0x6e]
	ldr r1, [r4, #8]
	add r0, r0, #1
	cmp r0, r1
	blt _0211D10C
_0211D150:
	mov r0, r5
	mov r1, r4
	mov r2, #3
	mov r3, #5
	bl FUN_ov45_0211d290
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _0211D1CC
	add r7, sp, #0
	mov r6, #0
_0211D180:
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_ov45_0211c428
	ldr r1, [r4, #8]
	mov r8, r6
	cmp r1, #0
	ble _0211D1C0
_0211D1A0:
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_ov45_0211c42c
	ldr r1, [r4, #8]
	add r8, r8, #1
	cmp r8, r1
	blt _0211D1A0
_0211D1C0:
	add r0, r8, #1
	cmp r0, r1
	blt _0211D180
_0211D1CC:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0xc]
	bl  FUN_ov16_020f52f4
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov45_0211cebc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov45_0211d0c0

	arm_func_start FUN_ov45_0211d1f4
FUN_ov45_0211d1f4: ; 0x0211D1F4
	ldr r12, _0211D200 ; =FUN_ov45_0211cebc
	mov r2, #0
	bx r12
_0211D200: .word FUN_ov45_0211cebc
	arm_func_end FUN_ov45_0211d1f4

	arm_func_start FUN_ov45_0211d204
FUN_ov45_0211d204: ; 0x0211D204
	mov r2, #7
	str r2, [r0, #0x14]
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov45_0211d204

	arm_func_start FUN_ov45_0211d214
FUN_ov45_0211d214: ; 0x0211D214
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bne _0211D234
	ldr r0, _0211D244 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl  FUN_ov16_0210ee78
_0211D234:
	mov r0, #4
	str r4, [r5, #0x18]
	str r0, [r5, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D244: .word unk_02099EB4
	arm_func_end FUN_ov45_0211d214

	arm_func_start FUN_ov45_0211d248
FUN_ov45_0211d248: ; 0x0211D248
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
	ldr r0, [r3, #0x15c]
	ldr r1, _0211D28C ; =0x02120AB4
	mov r2, r2, lsr #0x10
	add r3, r3, #0x190
	bl  FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211D28C: .word ov45_02120AB4
	arm_func_end FUN_ov45_0211d248

	arm_func_start FUN_ov45_0211d290
FUN_ov45_0211d290: ; 0x0211D290
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r6, r1
	str r5, [sp, #0x10]
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0211D320 ; =0x02099F38
	mov r1, r2
	ldr r0, [r4]
	mov r2, r3
	bl FUN_02059630
	mov r1, r0
	str r1, [r6, #0x5c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	str r5, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl FUN_0205935c
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211D320: .word unk_02099F38
	arm_func_end FUN_ov45_0211d290

	arm_func_start FUN_ov45_0211d324
FUN_ov45_0211d324: ; 0x0211D324
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211D374 ; =0x02099F38
	mov r7, r0
	mov r3, r1
	ldr r0, [r4]
	ldr r1, [r7, #0x188]
	mov r5, #2
	mov r6, r2
	mov r2, r5
	bl  FUN_ov16_021142fc
	ldr r0, [r4]
	ldr r1, [r7, #0x18c]
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_021142fc
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	str r0, [r7, #0x2a0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D374: .word unk_02099F38
	arm_func_end FUN_ov45_0211d324

	arm_func_start FUN_ov45_0211d378
FUN_ov45_0211d378: ; 0x0211D378
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r7, r0
	cmp r6, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211D48C ; =0x02099EB4
	mov r1, r6, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldr r1, [r7, #0x18]
	mov r0, r7
	bl FUN_ov45_0211cfec
	movs r5, r0
	ldmmifd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #1
	blt _0211D41C
	cmp r6, #0x11
	bgt _0211D41C
	ldr r0, [r7, #0x18]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #8
	ldr r0, _0211D490 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	mov r8, #0x108
	mul r2, r5, r8
	add r0, r7, r2
	ldr r1, [r0, #0x1a4]
	add r3, r7, #0x198
	sub r6, r6, #1
	add r0, r3, r2
	add r1, r6, r1
	bl  FUN_ov16_020f52f4
	add r0, r7, #0x198
	mla r1, r5, r8, r0
	mov r0, r7
	mov r2, r4
	bl FUN_ov45_0211d1f4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D41C:
	cmp r6, #0x12
	bne _0211D454
	add r1, r7, #0x198
	mov r0, #0x108
	mla r1, r5, r0, r1
	mov r4, #0
	mov r0, r7
	mov r2, r4
	bl FUN_ov45_0211d1f4
	mov r0, r7
	mov r2, r4
	mov r1, #1
	bl FUN_ov45_0211d324
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D454:
	cmp r6, #0x13
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r7, #0x198
	mov r0, #0x108
	mla r1, r5, r0, r1
	mov r4, #0
	mov r0, r7
	mov r2, r4
	bl FUN_ov45_0211d1f4
	mov r0, r7
	mov r1, r4
	mov r2, #1
	bl FUN_ov45_0211d324
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D48C: .word unk_02099EB4
_0211D490: .word unk_0209AC44
	arm_func_end FUN_ov45_0211d378

	arm_func_start FUN_ov45_0211d494
FUN_ov45_0211d494: ; 0x0211D494
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _0211D588 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r8]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldr r1, [r6, #0x18]
	mov r0, r6
	bl FUN_ov45_0211cfec
	movs r4, r0
	ldmmifd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #1
	blt _0211D54C
	cmp r5, #0x11
	bgt _0211D54C
	mov r7, #0x108
	mla r0, r4, r7, r6
	ldr r1, [r0, #0x198]
	ldr r0, [r0, #0x1a4]
	sub r5, r5, #1
	sub r0, r1, r0
	cmp r5, r0
	ldreq r0, [r8]
	mov r1, #1
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211D58C ; =0x0209AC44
	bl FUN_0202cf6c
	mul r2, r4, r7
	add r0, r6, r2
	ldr r1, [r0, #0x1a4]
	add r0, r6, #0x198
	add r0, r0, r2
	add r1, r5, r1
	bl  FUN_ov16_020f52f4
	add r0, r6, #0x198
	mla r1, r4, r7, r0
	mov r0, r6
	mov r2, #8
	bl FUN_ov45_0211d1f4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D54C:
	cmp r5, #0x12
	bne _0211D56C
	ldr r0, _0211D588 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D56C:
	cmp r5, #0x13
	ldreq r0, _0211D588 ; =0x02099EB4
	moveq r1, #2
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D588: .word unk_02099EB4
_0211D58C: .word unk_0209AC44
	arm_func_end FUN_ov45_0211d494

	arm_func_start FUN_ov45_0211d590
FUN_ov45_0211d590: ; 0x0211D590
	bx lr
	arm_func_end FUN_ov45_0211d590

	arm_func_start FUN_ov45_0211d594
FUN_ov45_0211d594: ; 0x0211D594
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r1, _0211D878 ; =0x02099F54
	mov r9, r0
	ldr r0, [r1]
	mov r4, #1
	bl  FUN_ov16_020f8860
	ldr r1, [r9, #0x4c]
	mov r5, r0
	cmp r1, #0
	mov r8, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, _0211D87C ; =0x02099F44
	mov r11, r8
_0211D5D0:
	add r0, r9, r8, lsl #1
	ldrh r0, [r0, #0x2c]
	mov r1, r11
	bl  FUN_ov16_020efa9c
	movs r6, r0
	cmpne r5, #0
	beq _0211D860
	ldr r1, [r9, #0x20]
	add r7, r8, #0x10
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211D860
_0211D600: ; jump table
	b _0211D620 ; case 0
	b _0211D684 ; case 1
	b _0211D6B8 ; case 2
	b _0211D6DC ; case 3
	b _0211D730 ; case 4
	b _0211D784 ; case 5
	b _0211D7D8 ; case 6
	b _0211D7D8 ; case 7
_0211D620:
	bl FUN_0206cd50
	add r1, r9, r8, lsl #2
	str r0, [r1, #0x50]
	mov r0, r6
	bl FUN_0206cd10
	add r1, r9, r7, lsl #2
	str r0, [r1, #0x50]
	str r4, [sp]
	ldrsb r3, [r5, #7]
	ldr r0, [r10]
	mov r1, r6
	mov r2, #0x1e
	bl  FUN_ov131_02141528
	add r2, r9, r8, lsl #2
	str r0, [r2, #0xd0]
	str r4, [sp]
	ldrsb r3, [r5, #8]
	ldr r0, [r10]
	mov r1, r6
	mov r2, #0x1f
_0211D670:
	bl  FUN_ov131_02141528
	add r1, r9, r7, lsl #2
	str r0, [r1, #0xd0]
	strb r4, [r9, #0x28]
	b _0211D860
_0211D684:
	bl FUN_0206cd00
	add r2, r9, r8, lsl #2
	str r0, [r2, #0x50]
	str r4, [sp]
	ldrsb r3, [r5, #9]
	ldr r0, [r10]
	mov r1, r6
	mov r2, #0x20
_0211D6A4:
	bl  FUN_ov131_02141528
	add r1, r9, r8, lsl #2
	str r0, [r1, #0xd0]
	strb r11, [r9, #0x28]
	b _0211D860
_0211D6B8:
	bl FUN_0206cd60
	add r2, r9, r8, lsl #2
	str r0, [r2, #0x50]
	str r4, [sp]
	mov r1, r6
	ldr r0, [r10]
	mov r2, #0x22
	ldrsb r3, [r5, #0xb]
	b _0211D6A4
_0211D6DC:
	bl FUN_0206cd10
	add r1, r9, r8, lsl #2
	str r0, [r1, #0x50]
	mov r0, r6
	bl FUN_0206cd40
	add r1, r9, r7, lsl #2
	str r0, [r1, #0x50]
	str r4, [sp]
	ldrsb r3, [r5, #8]
	ldr r0, [r10]
	mov r1, r6
	mov r2, #0x1f
	bl  FUN_ov131_02141528
	add r2, r9, r8, lsl #2
	str r0, [r2, #0xd0]
	str r4, [sp]
	mov r1, r6
	ldr r0, [r10]
	mov r2, #0x21
	ldrsb r3, [r5, #0xa]
	b _0211D670
_0211D730:
	bl FUN_0206cd20
	add r1, r9, r8, lsl #2
	str r0, [r1, #0x50]
	mov r0, r6
	bl FUN_0206cd30
	add r1, r9, r7, lsl #2
	str r0, [r1, #0x50]
	str r4, [sp]
	ldrsb r3, [r5, #0xc]
	ldr r0, [r10]
	mov r1, r6
	mov r2, #0x23
	bl  FUN_ov131_02141528
	add r2, r9, r8, lsl #2
	str r0, [r2, #0xd0]
	str r4, [sp]
	mov r1, r6
	ldr r0, [r10]
	mov r2, #0x24
	ldrsb r3, [r5, #0xd]
	b _0211D670
_0211D784:
	bl FUN_0206ccec
	add r1, r9, r8, lsl #2
	str r0, [r1, #0x50]
	mov r0, r6
	bl FUN_0206cc94
	add r1, r9, r7, lsl #2
	str r0, [r1, #0x50]
	str r4, [sp]
	ldrsb r3, [r5, #5]
	ldr r0, [r10]
	mov r1, r6
	mov r2, #0x14
	bl  FUN_ov131_02141528
	add r2, r9, r8, lsl #2
	str r0, [r2, #0xd0]
	str r4, [sp]
	mov r1, r6
	ldr r0, [r10]
	mov r2, #0x16
	ldrsb r3, [r5, #6]
	b _0211D670
_0211D7D8:
	ldr r0, _0211D880 ; =0x0209A250
	str r11, [sp, #0x10]
	ldr r0, [r0]
	mov r7, r11
	cmp r0, #0
	moveq r0, r11
	beq _0211D814
	str r11, [sp]
	str r11, [sp, #4]
	str r11, [sp, #8]
	ldr r1, _0211D884 ; =0x02120ACC
	ldr r3, _0211D880 ; =0x0209A250
	add r2, sp, #0x10
	str r4, [sp, #0xc]
	bl FUN_0202eff0
_0211D814:
	cmp r0, #0
	beq _0211D844
	mov r0, r6
	ldr r6, [sp, #0x10]
	bl FUN_0206cc34
	sub r0, r0, #1
	mov r1, r0, lsl #1
	ldr r0, [r9, #0x20]
	cmp r0, #7
	addeq r1, r1, #1
	mov r0, r1, lsl #1
	ldrsh r7, [r6, r0]
_0211D844:
	ldr r0, _0211D880 ; =0x0209A250
	ldr r1, [sp, #0x10]
	bl FUN_0202e1c0
	add r0, r9, r8, lsl #2
	str r7, [r0, #0xd0]
	mov r0, #0
	strb r0, [r9, #0x28]
_0211D860:
	add r8, r8, #1
	ldr r0, [r9, #0x4c]
	cmp r8, r0
	blt _0211D5D0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D878: .word unk_02099F54
_0211D87C: .word unk_02099F44
_0211D880: .word unk_0209A250
_0211D884: .word ov45_02120ACC
	arm_func_end FUN_ov45_0211d594

	arm_func_start FUN_ov45_0211d888
FUN_ov45_0211d888: ; 0x0211D888
	ldr r2, _0211D898 ; =0x021209B0
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211D898: .word ov45_021209B0
	arm_func_end FUN_ov45_0211d888

	arm_func_start FUN_ov45_0211d89c
FUN_ov45_0211d89c: ; 0x0211D89C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	cmp r0, #0
	beq _0211D8D4
	ldr r2, [r5, #0x14]
	cmp r2, #6
	bne _0211D8D4
	ldr r3, [r0]
	mov r2, #0
	ldr r3, [r3, #8]
	blx r3
	ldmfd sp!, {r4, r5, r6, pc}
_0211D8D4:
	ldr r0, _0211D9A8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r6, _0211D9AC ; =0x02099EB4
	ldr r0, [r6]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211D918
	ldr r0, [r6]
	add r0, r0, #0xf00
	ldrh r4, [r0, #0x38]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211D918:
	ldr r0, [r5, #0x14]
	cmp r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov45_0211c3e8
	ldr r0, [r5, #0x18]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	tst r4, #3
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x28]
	cmp r0, #0
	beq _0211D98C
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _0211D98C
	ldr r0, _0211D9B0 ; =0x0209AC44
	mov r1, #0x16
	bl FUN_0202cf6c
	mov r4, #1
	mov r3, #0
	mov r0, r5
	add r1, r5, #0x198
	mov r2, #8
	str r4, [r5, #0x24]
	strb r3, [r5, #0x28]
	bl FUN_ov45_0211d1f4
	ldmfd sp!, {r4, r5, r6, pc}
_0211D98C:
	ldr r0, _0211D9B0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0
	bl FUN_ov45_0211d204
	ldmfd sp!, {r4, r5, r6, pc}
_0211D9A8: .word unk_02099ED4
_0211D9AC: .word unk_02099EB4
_0211D9B0: .word unk_0209AC44
	arm_func_end FUN_ov45_0211d89c

	arm_func_start FUN_ov45_0211d9b4
FUN_ov45_0211d9b4: ; 0x0211D9B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	cmp r0, #0
	beq _0211D9E8
	ldr r2, [r5, #0x14]
	cmp r2, #6
	bne _0211D9E8
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D9E8:
	ldr r0, _0211DAA4 ; =0x02099ED4
	mov r7, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r5, #0x14]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211DAA8 ; =0x02099EB4
	mov r1, r4
	ldr r0, [r6]
	mov r2, r7
	bl  FUN_ov16_0210f20c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DA28: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211DA3C ; case 1
	b _0211DA54 ; case 2
	b _0211DA6C ; case 3
	b _0211DA88 ; case 4
_0211DA3C:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov45_0211d378
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DA54:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov45_0211d494
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DA6C:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov45_0211d590
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DA88:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, #1
	bl FUN_ov45_0211d590
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DAA4: .word unk_02099ED4
_0211DAA8: .word unk_02099EB4
	arm_func_end FUN_ov45_0211d9b4

	arm_func_start FUN_ov45_0211daac
FUN_ov45_0211daac: ; 0x0211DAAC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r2, r0, lsr #8
	mov r1, #0
	ldr r0, _0211DC8C ; =0x0209A454
	str r2, [r4, #0x2a4]
	str r1, [r4, #0x10]
	ldrb r0, [r0, #0x3a]
	cmp r0, #0
	streqb r1, [r4, #0x2a8]
	beq _0211DB0C
	ldr r0, _0211DC90 ; =0x000006C4
	mov r1, #1
	strb r1, [r4, #0x2a8]
	bl FUN_0201e014
	cmp r0, #0
	ldrne r2, [r4, #4]
	ldrne r1, _0211DC94 ; =0x02120B8C
	stmneia r0, {r1, r2}
	str r0, [r4, #0x10]
_0211DB0C:
	ldr r0, _0211DC98 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211DC9C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211DCA0 ; =0x02099F54
	ldr r0, [r0]
	bl  FUN_ov16_020f8860
	mov r5, r0
	add r0, r4, #0x1c
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #2
	cmp r5, #0
	str r0, [r4, #0x1c]
	ldrneb r0, [r5, #0x43c]
	strne r0, [r4, #0x20]
	ldr r0, [r4, #4]
	bl FUN_0204204c
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl FUN_020420b4
	mov r6, #0
	str r0, [r4, #0xc]
	mov r1, r6
	add r0, r4, #0x2ac
	mov r2, #0xc
	str r6, [r4, #0x14]
	str r6, [r4, #0x18]
	bl MI_CpuFill8
	mov r5, #0x18
	add r0, r4, #0x150
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	mov r2, r5
	add r0, r4, #0x168
	mov r1, r6
	bl MI_CpuFill8
	mov r5, #4
	add r0, r4, #0x180
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	mov r2, r5
	add r0, r4, #0x184
	mov r1, r6
	bl MI_CpuFill8
	add r0, r4, #0x188
	mov r1, r6
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x198
	mov r1, r6
	mov r2, #0x108
	bl MI_CpuFill8
	mov r5, #0x80
	add r0, r4, #0x50
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	add r0, r4, #0xd0
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	add r0, r4, #0x2c
	mov r1, r6
	mov r2, #0x20
	str r6, [r4, #0x2a0]
	bl MI_CpuFill8
	str r6, [r4, #0x4c]
	mov r0, #1
	stmia sp, {r0, r5}
	mov r5, #0x10
	ldr r0, _0211DCA4 ; =0x0209BA20
	mov r1, r6
	add r2, r4, #0x2c
	mov r3, r5
	bl FUN_0204b540
	str r0, [r4, #0x4c]
	mov r0, r4
	bl FUN_ov45_0211d594
	add r0, r4, #0x190
	mov r1, r5
	bl  FUN_ov16_020f5278
	ldr r0, _0211DCA8 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211DC8C: .word unk_0209A454
_0211DC90: .word 0x000006C4
_0211DC94: .word ov45_02120B8C
_0211DC98: .word unk_02099EB4
_0211DC9C: .word unk_02099ED4
_0211DCA0: .word unk_02099F54
_0211DCA4: .word unk_0209BA20
_0211DCA8: .word unk_02099F38
	arm_func_end FUN_ov45_0211daac

	arm_func_start FUN_ov45_0211dcac
FUN_ov45_0211dcac: ; 0x0211DCAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0211DCFC
	ldr r1, [r4, #0x14]
	cmp r1, #6
	bne _0211DCFC
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x18]
	blx r2
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x68]
	blx r1
	cmp r0, #9
	moveq r0, #9
	streq r0, [r4, #0x14]
	ldmfd sp!, {r4, pc}
_0211DCFC:
	ldr r0, [r4, #4]
	add r1, r4, #0x1c
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add r0, r4, #0x190
	bl  FUN_ov16_020f5868
	ldr r0, [r4, #0x14]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211DF28
_0211DD28: ; jump table
	b _0211DD50 ; case 0
	b _0211DD68 ; case 1
	b _0211DD9C ; case 2
	b _0211DDBC ; case 3
	b _0211DDDC ; case 4
	b _0211DF28 ; case 5
	b _0211DF28 ; case 6
	b _0211DE44 ; case 7
	b _0211DE88 ; case 8
	b _0211DF0C ; case 9
_0211DD50:
	mov r0, r4
	bl FUN_ov45_0211bd90
	mov r0, r4
	bl FUN_ov45_0211be0c
	mov r0, #1
	str r0, [r4, #0x14]
_0211DD68:
	mov r0, r4
	bl FUN_ov45_0211c0f8
	cmp r0, #0
	beq _0211DF28
	add r0, r4, #0x2ac
	mov r1, #1
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211DF28
	mov r0, r4
	bl FUN_ov45_0211be9c
	mov r0, #2
	str r0, [r4, #0x14]
_0211DD9C:
	mov r0, r4
	bl FUN_ov45_0211c0f8
	cmp r0, #0
	beq _0211DF28
	mov r0, r4
	bl FUN_ov45_0211c160
	mov r0, #3
	str r0, [r4, #0x14]
_0211DDBC:
	mov r0, r4
	mov r1, #0
	bl FUN_ov45_0211d214
	mov r0, r4
	bl FUN_ov45_0211c1c4
	ldr r0, _0211DF40 ; =0x0209AC44
	mov r1, #0x16
	bl FUN_0202cf6c
_0211DDDC:
	ldr r0, _0211DF44 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211DF28
	mov r0, r4
	bl FUN_ov45_0211c274
	mov r0, r4
	bl FUN_ov45_0211c320
	mov r0, r4
	bl FUN_ov45_0211c37c
	mov r0, r4
	mov r1, #3
	bl FUN_ov45_0211c380
	ldr r1, [r4, #0x18]
	mov r0, r4
	bl FUN_ov45_0211cf4c
	mov r0, r4
	bl FUN_ov45_0211cff8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
_0211DE3C:
	str r0, [r4, #0x14]
	b _0211DF28
_0211DE44:
	ldr r0, _0211DF44 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211DF28
	ldrb r0, [r4, #0x2a8]
	cmp r0, #0
	bne _0211DE70
	mov r0, #6
	bl  FUN_ov16_020f153c
	b _0211DE80
_0211DE70:
	cmp r0, #1
	bne _0211DE80
	ldr r0, [r4, #4]
	bl FUN_02041d9c
_0211DE80:
	mov r0, #8
	str r0, [r4, #0x14]
_0211DE88:
	bl  FUN_ov16_020f1670
	cmp r0, #0
	bne _0211DF28
	ldrb r0, [r4, #0x2a8]
	cmp r0, #1
	bne _0211DF04
	mov r0, #2
	mov r1, #0x10
	bl  FUN_ov16_020f1aec
	ldr r0, _0211DF48 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211DF44 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov45_0211bfe0
	add r0, r4, #0x190
	bl  FUN_ov16_020f52c4
	ldr r0, _0211DF4C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x10]
	mov r0, #6
	strb r2, [r1, #0x1e]
	b _0211DE3C
_0211DF04:
	mov r0, #9
	str r0, [r4, #0x14]
_0211DF0C:
	ldr r4, [r4, #4]
	mov r1, #0
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
_0211DF28:
	ldr r0, _0211DF44 ; =0x02099ED4
	ldr r1, _0211DF50 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl  FUN_ov16_0210e10c
	ldmfd sp!, {r4, pc}
_0211DF40: .word unk_0209AC44
_0211DF44: .word unk_02099ED4
_0211DF48: .word unk_02099EB4
_0211DF4C: .word unk_02099F38
_0211DF50: .word unk_0209A110
	arm_func_end FUN_ov45_0211dcac

	arm_func_start FUN_ov45_0211df54
FUN_ov45_0211df54: ; 0x0211DF54
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov45_0211df54

	arm_func_start FUN_ov45_0211df5c
FUN_ov45_0211df5c: ; 0x0211DF5C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #0x14]
	cmp r0, #6
	ldmnefd sp!, {r3, pc}
	mov r0, r1
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov45_0211df5c

	arm_func_start FUN_ov45_0211df8c
FUN_ov45_0211df8c: ; 0x0211DF8C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0211DFC4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0211DFC4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211DFC4:
	mov r2, #0x4000000
	ldr r0, [r2]
	ldr r1, [r4, #0x2a4]
	bic r0, r0, #0x1f00
	orr r3, r0, r1, lsl #8
	mov r0, #2
	mov r1, #0x10
	str r3, [r2]
	bl  FUN_ov16_020f1aec
	ldr r0, _0211E02C ; =0x02099F54
	ldr r0, [r0]
	bl  FUN_ov16_020f882c
	ldr r0, _0211E030 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211E034 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov45_0211bfe0
	add r0, r4, #0x190
	bl  FUN_ov16_020f52c4
	ldr r0, _0211E038 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r4, pc}
_0211E02C: .word unk_02099F54
_0211E030: .word unk_02099EB4
_0211E034: .word unk_02099ED4
_0211E038: .word unk_02099F38
	arm_func_end FUN_ov45_0211df8c

	arm_func_start FUN_ov45_0211e03c
FUN_ov45_0211e03c: ; 0x0211E03C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov45_0211e03c

	arm_func_start FUN_ov45_0211e050
FUN_ov45_0211e050: ; 0x0211E050
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov45_0211e050

	arm_func_start FUN_ov45_0211e064
FUN_ov45_0211e064: ; 0x0211E064
	bx lr
	arm_func_end FUN_ov45_0211e064

	arm_func_start FUN_ov45_0211e068
FUN_ov45_0211e068: ; 0x0211E068
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r5, r0
	ldr r0, _0211E0E0 ; =0x02120BF8
	add r1, r5, #0x378
	bl  FUN_ov16_020f3054
	ldr r0, _0211E0E4 ; =0x02120C10
	add r1, r5, #0x390
	bl  FUN_ov16_020f3054
	ldr r0, _0211E0E8 ; =0x02120C2C
	add r1, r5, #0x36c
	bl  FUN_ov16_020f3054
	ldr r4, _0211E0EC ; =0x021203B0
	add lr, sp, #4
	mov r12, #4
_0211E0A4:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211E0A4
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x36c]
	ldr r0, _0211E0F0 ; =0x02120C48
	add r2, sp, #4
	add r3, r5, #0x500
	bl  FUN_ov16_020f5450
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, pc}
_0211E0E0: .word ov45_02120BF8
_0211E0E4: .word ov45_02120C10
_0211E0E8: .word ov45_02120C2C
_0211E0EC: .word 0x021203B0
_0211E0F0: .word ov45_02120C48
	arm_func_end FUN_ov45_0211e068

	arm_func_start FUN_ov45_0211e0f4
FUN_ov45_0211e0f4: ; 0x0211E0F4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, r1, lsl #0x10
	add r3, r0, #0x2bc
	ldr r0, [r0, #0x378]
	ldr r1, _0211E138 ; =0x02120C64
	mov r2, r2, lsr #0x10
	add r3, r3, #0x400
	bl  FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211E138: .word ov45_02120C64
	arm_func_end FUN_ov45_0211e0f4

	arm_func_start FUN_ov45_0211e13c
FUN_ov45_0211e13c: ; 0x0211E13C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211E150
	cmp r4, #4
	blt _0211E1A4
_0211E150:
	mov r4, #0
	add r9, r0, #0x36c
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211E164:
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
	blt _0211E164
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E1A4:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0x36c
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
	arm_func_end FUN_ov45_0211e13c

	arm_func_start FUN_ov45_0211e1e4
FUN_ov45_0211e1e4: ; 0x0211E1E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mvn r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_ov45_0211e13c
	add r0, r5, #0x2bc
	mov r1, r4
	add r0, r0, #0x400
	bl  FUN_ov16_020f57b0
	mov r0, r5
	add r1, r5, #0x3fc
	bl FUN_ov45_0211f0d0
	mov r4, #0
	ldr r6, _0211E2A8 ; =0x02099F38
	b _0211E23C
_0211E220:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x4fc]
	cmp r1, #0
	beq _0211E238
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211E238:
	add r4, r4, #1
_0211E23C:
	cmp r4, #1
	blt _0211E220
	mov r4, #0
	mov r7, r4
	ldr r6, _0211E2A8 ; =0x02099F38
	b _0211E278
_0211E254:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x500]
	cmp r1, #0
	beq _0211E274
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x500]
_0211E274:
	add r4, r4, #1
_0211E278:
	cmp r4, #8
	blt _0211E254
	add r6, r5, #0x39c
	mov r4, #0
	mov r5, #0xc
	b _0211E29C
_0211E290:
	mla r0, r4, r5, r6
	bl  FUN_ov16_020f33fc
	add r4, r4, #1
_0211E29C:
	cmp r4, #8
	blt _0211E290
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E2A8: .word unk_02099F38
	arm_func_end FUN_ov45_0211e1e4

	arm_func_start FUN_ov45_0211e2ac
FUN_ov45_0211e2ac: ; 0x0211E2AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x36c
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211E310 ; =0x02099F38
	b _0211E300
_0211E2D8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x500]
	cmp r1, #0
	beq _0211E2FC
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211E2FC:
	add r5, r5, #1
_0211E300:
	cmp r5, #8
	blt _0211E2D8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211E310: .word unk_02099F38
	arm_func_end FUN_ov45_0211e2ac

	arm_func_start FUN_ov45_0211e314
FUN_ov45_0211e314: ; 0x0211E314
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211E374 ; =0x02099F38
	b _0211E368
_0211E32C:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x500]
	cmp r1, #0
	beq _0211E364
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211E364
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x500]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211E364:
	add r6, r6, #1
_0211E368:
	cmp r6, #8
	blt _0211E32C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E374: .word unk_02099F38
	arm_func_end FUN_ov45_0211e314

	arm_func_start FUN_ov45_0211e378
FUN_ov45_0211e378: ; 0x0211E378
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0x10
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211E3DC ; =0x02099F38
	mov r1, #0xb
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x1c]
	ldrb r0, [r5, #0x63]
	cmp r0, #0
	ldreq r0, [r4]
	streqb r0, [r5, #0x62]
	ldrb r0, [r5, #0x63]
	add r0, r0, #1
	strb r0, [r5, #0x63]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E3DC: .word unk_02099F38
	arm_func_end FUN_ov45_0211e378

	arm_func_start FUN_ov45_0211e3e0
FUN_ov45_0211e3e0: ; 0x0211E3E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	ldrb r1, [r9, #0x63]
	mov r10, r0
	mov r8, r2
	cmp r1, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, r8
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x62]
	ldr r0, [r9, #0xf0]
	ldr r5, _0211E6A4 ; =0x02099F38
	add r1, r1, r8
	add r1, r9, r1, lsl #2
	sub r0, r0, #4
	mov r2, r0, lsl #0x10
	ldr r7, [r1, #0x1c]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r2, lsr #0x10
	mvn r3, #0
	bl  FUN_ov16_02112c90
	add r0, r9, r8, lsl #3
	ldrsh r2, [r0, #0x68]
	ldrsh r3, [r0, #0x6a]
	ldr r0, [r5]
	mov r1, r7
	bl  FUN_ov16_02114248
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	mov r2, #1
	str r6, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r3, r2
	bl FUN_ov45_0211fb24
	ldr r3, [r9, #0x5c]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r4, _0211E6A8 ; =0x021203A8
	mov r1, r7
	ldrsh r0, [r4, #2]
	mov r2, #2
	mov r3, r6
	mul r11, r0, r8
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	bl  FUN_ov16_02113d88
	ldrsh r0, [r4, #2]
	mov r1, r7
	mov r2, #2
	str r0, [sp]
	ldrsh r3, [r4]
	ldr r0, [r5]
	bl  FUN_ov16_02113d08
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	mov r3, #0x1a
	bl  FUN_ov16_02113b78
	mov r2, #2
	ldr r0, [r5]
	mov r1, r7
	mov r3, r2
	bl  FUN_ov16_02113f7c
	mov r0, #0x1a
	sub r0, r0, #0x1e
	mov r2, #3
	str r0, [sp]
	mov r3, r2
	ldr r0, [r5]
	mov r1, r7
	sub r3, r3, #6
	bl  FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r7
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113f7c
	mov r0, #0x1a
	str r0, [sp]
	mov r11, #0xd
	mov r2, #4
	str r11, [sp, #4]
	mov r0, r10
	mov r1, r7
	mov r3, r2
	str r6, [sp, #8]
	bl FUN_ov45_0211fb24
	mov r0, #0x1a
	stmia sp, {r0, r11}
	mov r0, r10
	mov r1, r7
	mov r2, #5
	mov r3, #2
	str r6, [sp, #8]
	bl FUN_ov45_0211fb24
	mov r0, #0x41
	stmia sp, {r0, r11}
	mov r3, #5
	mov r0, r10
	mov r1, r7
	mov r2, #6
	str r6, [sp, #8]
	bl FUN_ov45_0211fb24
	mov r0, #0x41
	stmia sp, {r0, r11}
	mov r3, #6
	mov r0, r10
	mov r1, r7
	mov r2, #7
	str r6, [sp, #8]
	bl FUN_ov45_0211fb24
	mov r0, #0x10
	stmia sp, {r0, r11}
	mov r3, #7
	str r6, [sp, #8]
	mov r0, r10
	mov r1, r7
	mov r2, #8
	bl FUN_ov45_0211fb24
	ldr r1, [r9, #0x5c]
	mov r6, #9
	and r3, r1, #0xff
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_021137dc
	ldrsh r0, [r4, #2]
	mov r1, r7
	mov r2, r6
	mul r3, r0, r8
	mov r0, r3, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r3, [r4]
	ldr r0, [r5]
	bl  FUN_ov16_02113d88
	ldrsh r0, [r4, #6]
	mov r1, r7
	mov r2, r6
	str r0, [sp]
	ldrsh r3, [r4, #4]
	ldr r0, [r5]
	bl  FUN_ov16_02113d08
	mov r0, #0xf
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, #0x30
	bl  FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113f7c
	mov r4, #3
	mov r0, r10
	mov r1, r7
	mov r3, #2
	mov r2, #0xa
	str r4, [sp]
	bl FUN_ov45_0211e6ac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E6A4: .word unk_02099F38
_0211E6A8: .word 0x021203A8
	arm_func_end FUN_ov45_0211e3e0

	arm_func_start FUN_ov45_0211e6ac
FUN_ov45_0211e6ac: ; 0x0211E6AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r1
	ldr r1, [sp, #0x20]
	mov r7, r2
	mov r6, r3
	mov r5, #0
	mov r10, #2
	add r4, r0, r1, lsl #2
	ldr r9, _0211E710 ; =0x02099F38
	b _0211E704
_0211E6D4:
	ldr r3, [r4, #0x500]
	ldr r0, [r9]
	mov r1, r8
	add r2, r7, r5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, [r9]
	mov r1, r8
	mov r3, r10
	add r2, r7, r5
	bl  FUN_ov16_02113f7c
	add r5, r5, #1
_0211E704:
	cmp r5, r6
	blt _0211E6D4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E710: .word unk_02099F38
	arm_func_end FUN_ov45_0211e6ac

	arm_func_start FUN_ov45_0211e714
FUN_ov45_0211e714: ; 0x0211E714
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r6, #0
	mov r10, r1
	mov r9, r2
	mov r8, r3
	mov r7, #1
	ldr r4, [sp, #0x30]
	ldrb r5, [sp, #0x3c]
	mov r11, r6
	b _0211E790
_0211E740:
	mov r0, r11
	cmp r5, #0
	beq _0211E764
	mov r1, #1
	cmp r6, #0
	cmpne r4, r7
	movlt r1, r11
	cmp r1, #0
	movne r0, #1
_0211E764:
	str r0, [sp]
	ldr r0, _0211E868 ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	add r2, r9, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0xa
	mul r0, r7, r0
	mov r7, r0
	add r6, r6, #1
_0211E790:
	cmp r6, r8
	blt _0211E740
	ldrb r0, [sp, #0x3c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r0, [sp, #0x34]
	mov r6, #0
	mov r7, #1
	ldr r5, [sp, #0x30]
	ldrsh r4, [sp, #0x38]
	str r0, [sp, #4]
	b _0211E858
_0211E7C4:
	cmp r6, #0
	cmpne r5, r7
	blt _0211E848
	mov r0, r5
	mov r1, r7
	bl FUN_0201f9bc
	mov r12, r0
	ldr r3, _0211E86C ; =0x66666667
	mov r1, #0
	smull lr, r11, r3, r12
	mov r3, r12, lsr #0x1f
	add r11, r3, r11, asr #2
	mov r3, #0xa
	smull r11, lr, r3, r11
	str r1, [sp]
	ldr r0, _0211E868 ; =0x02099F38
	sub r11, r12, r11
	mov r3, r11, lsl #0x10
	ldr r0, [r0]
	mov r1, r10
	add r2, r9, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_0211401c
	ldr r3, [sp, #4]
	ldr r0, _0211E868 ; =0x02099F38
	str r4, [sp]
	sub r3, r3, r6, lsl #3
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r1, r10
	add r2, r9, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
_0211E848:
	mov r0, #0xa
	mul r0, r7, r0
	mov r7, r0
	add r6, r6, #1
_0211E858:
	cmp r6, r8
	blt _0211E7C4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E868: .word unk_02099F38
_0211E86C: .word 0x66666667
	arm_func_end FUN_ov45_0211e714

	arm_func_start FUN_ov45_0211e870
FUN_ov45_0211e870: ; 0x0211E870
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xa8
	add r6, sp, #0x68
	add r5, sp, #0x28
	mov r7, #0
	mov r9, r0
	mov r10, r1
	mov r3, r6
	mov r0, r7
	mov r1, r7
	mov r2, r5
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r11, #0x30
	stmia r3, {r0, r1}
	stmia r2, {r0, r1}
	mov r4, r11
	b _0211E954
_0211E8E8:
	ldr r0, [r10, #0xc]
	adds r8, r0, r7
	bmi _0211E950
	ldr r0, [r10, #4]
	cmp r8, r0
	bge _0211E950
	mla r0, r8, r4, r9
	ldrh r0, [r0, #0x28]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	mlane r1, r8, r11, r9
	addne r0, r0, #0x1c
	strne r0, [r6, r7, lsl #2]
	ldrne r0, [r1, #0x40]
	cmpne r0, #0
	beq _0211E950
	ldr r1, [r1, #0x30]
	ldr r0, _0211EA94 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	ldrne r1, [r9, #0x390]
	cmpne r1, #0
	ldrneh r0, [r0, #0x18]
	addne r0, r1, r0, lsl #5
	strne r0, [r5, r7, lsl #2]
_0211E950:
	add r7, r7, #1
_0211E954:
	ldr r0, [r10, #8]
	cmp r7, r0
	blt _0211E8E8
	ldr r4, _0211EA98 ; =0x02099F38
	ldr r1, [r10, #0x5c]
	mov r7, #0
	ldr r0, [r4]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r7, [sp, #0x20]
	mov r6, r7
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r10, #0x5c]
	ldr r8, [sp, #0x20]
	bl  FUN_ov16_02111458
	mov r9, r0
	ldr r0, _0211EA9C ; =0x021203A8
	add r11, sp, #0x68
	ldrsh r4, [r0]
	ldrsh r5, [r0, #2]
	b _0211EA50
_0211E9AC:
	ldr r0, [r11, r7, lsl #2]
	cmp r0, #0
	beq _0211EA4C
	mul r0, r5, r7
	str r9, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r0, _0211EAA0 ; =0x02099ED0
	ldr r1, [r11, r7, lsl #2]
	ldr r0, [r0]
	mov r2, r8
	mov r3, #0x80
	bl FUN_020425fc
	add r0, sp, #0x28
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	beq _0211EA4C
	mul r0, r5, r7
	str r9, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _0211EAA0 ; =0x02099ED0
	str r6, [sp, #0x1c]
	add r1, sp, #0x28
	ldr r0, [r0]
	ldr r1, [r1, r7, lsl #2]
	mov r2, r8
	mov r3, #0x80
	bl FUN_020425fc
_0211EA4C:
	add r7, r7, #1
_0211EA50:
	cmp r7, #0x10
	blt _0211E9AC
	ldr r1, [sp, #0x24]
	mov r0, r8
	bl DC_FlushRange
	ldr r0, _0211EA98 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r10, #0x5c]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r8
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0xa8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EA94: .word unk_0209BA20
_0211EA98: .word unk_02099F38
_0211EA9C: .word 0x021203A8
_0211EAA0: .word unk_02099ED0
	arm_func_end FUN_ov45_0211e870

	arm_func_start FUN_ov45_0211eaa4
FUN_ov45_0211eaa4: ; 0x0211EAA4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r3, [r1, #0xc]
	mov r10, r0
	cmp r2, #0
	add r11, r3, r2
	addlt sp, sp, #0x14
	ldr r0, _0211EF84 ; =0x02099F38
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r1, #8]
	cmp r2, r3
	addge sp, sp, #0x14
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r11, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r4, [r1, #0x62]
	ldr r3, [r1, #4]
	ldr r0, [r0]
	add r2, r4, r2
	add r1, r1, r2, lsl #2
	cmp r11, r3
	ldr r4, [r1, #0x1c]
	mov r2, #2
	blt _0211EB18
	mov r1, r4
	bl  FUN_ov16_02114370
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EB18:
	mov r1, #0
	str r1, [sp, #0x10]
	ldr r5, [sp, #0x10]
	mov r1, r4
	mov r3, #1
	mov r7, r5
	mov r6, r5
	bl  FUN_ov16_021142fc
	add r0, r10, r11, lsl #2
	ldr r8, [r0, #0x328]
	add r1, r10, #0x28
	mov r0, #0x30
	mla r9, r11, r0, r1
	cmp r8, #0
	beq _0211EC50
	mov r0, r8
	bl FUN_0206cc00
	str r0, [sp, #0x10]
	mov r0, r8
	bl FUN_0206cc34
	ldr r6, _0211EF88 ; =0x0209BA20
	mov r2, r0
	mov r0, r6
	mov r1, r8
	bl FUN_0204e000
	mov r7, r0
	mov r0, r8
	bl FUN_0206cc34
	cmp r0, #0x63
	bge _0211EBB0
	mov r0, r8
	bl FUN_0206cc34
	mov r2, r0
	mov r0, r6
	mov r1, r8
	add r2, r2, #1
	bl FUN_0204e000
	mov r5, r0
_0211EBB0:
	mov r11, #0x64
	cmp r5, #0
	moveq r6, r11
	moveq r7, #0
	beq _0211EC50
	ldr r0, [r9, #4]
	cmp r7, r0
	movhi r6, #0
	bhi _0211EBE8
	sub r1, r0, r7
	mul r0, r1, r11
	sub r1, r5, r7
	bl FUN_0201fbc8
	mov r6, r0
_0211EBE8:
	ldr r0, [r9, #4]
	cmp r6, #0x64
	movgt r6, #0x64
	cmp r6, #0
	movlt r6, #0
	cmp r7, r0
	mov r0, r8
	bls _0211EC20
	bl FUN_0206dcd4
	ldr r1, [r0]
	mov r0, #0x64
	sub r1, r1, r7
	mul r0, r1, r0
	b _0211EC34
_0211EC20:
	bl FUN_0206dcd4
	ldr r1, [r0]
	ldr r0, [r9, #4]
	sub r1, r1, r0
	mul r0, r1, r11
_0211EC34:
	sub r1, r5, r7
	bl FUN_0201fbc8
	mov r7, r0
	cmp r7, #0x64
	movgt r7, #0x64
	cmp r7, #0
	movlt r7, #0
_0211EC50:
	mov r11, #1
	ldr r0, _0211EF84 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r11
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r2, #2
	ldr r0, _0211EF84 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r3, r2
	bl  FUN_ov16_02113ec0
	ldr r1, [sp, #0x10]
	mov r0, r10
	bl FUN_ov45_0211e0f4
	and r3, r0, #0xff
	ldr r0, _0211EF84 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, #3
	bl  FUN_ov16_021137dc
	ldr r0, _0211EF84 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, #3
	mov r3, #0
	bl  FUN_ov16_0211401c
	mov r0, #0
	sub r0, r0, #4
	str r0, [sp]
	ldr r0, _0211EF84 ; =0x02099F38
	mov r3, #0
	ldr r0, [r0]
	mov r2, #3
	mov r1, r4
	sub r3, r3, #3
	bl  FUN_ov16_02113b78
	ldr r0, [sp, #0x10]
	mov r1, r4
	cmp r0, #0
	moveq r11, #0
	ldr r0, _0211EF84 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldrb r0, [r9, #2]
	cmp r0, #0
	beq _0211ED50
	ldrb r2, [r9, #3]
	mov r0, #0
	mov r1, #1
	cmp r2, #0
	strneb r0, [r9, #3]
	streqb r1, [r9, #3]
	ldreqb r0, [r9, #2]
	subeq r0, r0, #1
	streqb r0, [r9, #2]
	streqb r1, [r10, #0x1c]
_0211ED50:
	ldrb r1, [r9, #3]
	ldr r0, _0211EF84 ; =0x02099F38
	mov r11, #0
	cmp r1, #0
	beq _0211EDB0
	ldr r1, [r10, #0xc]
	cmp r1, #2
	beq _0211EDA4
	cmp r1, #1
	bne _0211ED9C
	ldr r1, [r9, #0x18]
	cmp r1, #0
	beq _0211ED9C
	ldr r2, [r9, #0x1c]
	add r1, r2, #1
	tst r2, #6
	str r1, [r9, #0x1c]
	movne r11, #1
	b _0211EDB0
_0211ED9C:
	mov r11, #1
	b _0211EDB0
_0211EDA4:
	ldr r1, [r9, #0x18]
	cmp r1, #0
	moveq r11, #1
_0211EDB0:
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, #5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	cmp r5, #0
	beq _0211EDE0
	mov r0, #1
	cmp r11, #0
	movne r0, #0
	b _0211EDE4
_0211EDE0:
	mov r0, #0
_0211EDE4:
	ldr r5, _0211EF84 ; =0x02099F38
	and r0, r0, #0xff
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r4
	mov r2, #4
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0x64
	str r0, [sp]
	mov r2, r6, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r0, [r5]
	mov r1, r4
	mov r2, #6
	bl  FUN_ov16_02113c60
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	ldr r5, _0211EF84 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r4
	mov r2, #6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0x38
	mul r1, r6, r0
	mov r0, #0xd
	str r0, [sp]
	ldr r2, _0211EF8C ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r0, r3, #0x41
	mov r1, r0, lsl #0x10
	mov r6, #7
	mov r3, r1, asr #0x10
	ldr r0, [r5]
	mov r1, r4
	mov r2, r6
	bl  FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	mov r3, r7, lsl #0x10
	ldr r0, [r5]
	mov r2, r6
	mov r1, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113c60
	mov r1, #1
	cmp r7, #0
	moveq r1, #0
	str r1, [sp]
	ldr r0, _0211EF84 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, #7
	mov r3, #2
	mov r5, #1
	mov r6, #0
	bl  FUN_ov16_02113ec0
	ldr r0, [r10, #0xc]
	mov r1, r6
	cmp r0, #2
	bne _0211EEF8
	ldr r0, [r9, #0x18]
	cmp r0, #0
	movne r1, r5
_0211EEF8:
	ldr r0, _0211EF84 ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, #8
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, [r10, #0xc]
	mov r1, #0
	cmp r0, #2
	bne _0211EF30
	ldr r0, [r9, #0x18]
	cmp r0, #0
	movne r1, #1
_0211EF30:
	ldr r0, _0211EF84 ; =0x02099F38
	str r1, [sp]
	mov r7, #2
	ldr r0, [r0]
	mov r1, r4
	mov r3, r7
	mov r2, #9
	bl  FUN_ov16_02113ec0
	mov r0, r8
	bl FUN_0206cc34
	str r0, [sp]
	mov r0, #0x72
	stmib sp, {r0, r6}
	mov r0, r10
	mov r1, r4
	mov r3, r7
	mov r2, #0xa
	str r5, [sp, #0xc]
	bl FUN_ov45_0211e714
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EF84: .word unk_02099F38
_0211EF88: .word unk_0209BA20
_0211EF8C: .word 0x51EB851F
	arm_func_end FUN_ov45_0211eaa4

	arm_func_start FUN_ov45_0211ef90
FUN_ov45_0211ef90: ; 0x0211EF90
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	cmp r2, #0
	mov r5, r0
	ldrne r0, [r4, #8]
	movne r6, #0
	cmpne r0, #0
	ble _0211EFD0
_0211EFB0:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov45_0211e3e0
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0211EFB0
_0211EFD0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov45_0211e870
	ldr r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0211EFEC:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov45_0211eaa4
	ldr r0, [r4, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0211EFEC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov45_0211ef90

	arm_func_start FUN_ov45_0211f010
FUN_ov45_0211f010: ; 0x0211F010
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r6, r1
	str r5, [sp, #0x10]
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0211F0A0 ; =0x02099F38
	mov r1, r2
	ldr r0, [r4]
	mov r2, r3
	bl FUN_02059630
	mov r1, r0
	str r1, [r6, #0x5c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	str r5, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl FUN_0205935c
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211F0A0: .word unk_02099F38
	arm_func_end FUN_ov45_0211f010

	arm_func_start FUN_ov45_0211f0a4
FUN_ov45_0211f0a4: ; 0x0211F0A4
	stmfd sp!, {r4, lr}
	ldr r1, _0211F0CC ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	mov r1, #3
	bl  FUN_ov16_0210eb3c
	mov r0, r4
	add r1, r4, #0x3fc
	bl FUN_ov45_0211f1cc
	ldmfd sp!, {r4, pc}
_0211F0CC: .word unk_02099EB4
	arm_func_end FUN_ov45_0211f0a4

	arm_func_start FUN_ov45_0211f0d0
FUN_ov45_0211f0d0: ; 0x0211F0D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211F134 ; =0x02099F38
	b _0211F100
_0211F0E4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211F0FC
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211F0FC:
	add r5, r5, #1
_0211F100:
	cmp r5, #0x10
	blt _0211F0E4
	ldr r1, [r6, #0x5c]
	cmp r1, #0
	ble _0211F120
	ldr r0, _0211F134 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211F120:
	mov r0, r6
	mov r1, #0
	mov r2, #0x100
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211F134: .word unk_02099F38
	arm_func_end FUN_ov45_0211f0d0

	arm_func_start FUN_ov45_0211f138
FUN_ov45_0211f138: ; 0x0211F138
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x4fc]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211F1C8 ; =0x02099F38
	mov r6, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r6
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r7, #0x4fc]
	ldr r3, [r7, #0x500]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #0x258
	bl  FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	mov r2, #2
	bl  FUN_ov16_021142fc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F1C8: .word unk_02099F38
	arm_func_end FUN_ov45_0211f138

	arm_func_start FUN_ov45_0211f1cc
FUN_ov45_0211f1cc: ; 0x0211F1CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_ov45_0211f0d0
	ldr r3, [r5, #0x24]
	mov r2, #0x10
	mov r0, #0
	mov r1, #0x28
	str r3, [r4, #4]
	str r2, [r4, #8]
	str r0, [r4, #0xe8]
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	cmp r2, #0
	ble _0211F25C
	mov r6, #0x18
	mov r7, #0x80
	mov r3, r6
_0211F218:
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #29
	add r1, r2, r1, ror #29
	mul r2, r1, r3
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r12, r1, asr #3
	add r1, r4, r0, lsl #3
	mov r12, r12, lsl #7
	strh r12, [r1, #0x68]
	strh r2, [r1, #0x6a]
	strh r7, [r1, #0x6c]
	strh r6, [r1, #0x6e]
	ldr r1, [r4, #8]
	add r0, r0, #1
	cmp r0, r1
	blt _0211F218
_0211F25C:
	mov r0, r5
	mov r1, r4
	mov r2, #4
	mov r3, #5
	bl FUN_ov45_0211f010
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #8]
	cmp r1, #0
	ble _0211F2C4
	add r6, sp, #0
	mov r7, r0
_0211F28C:
	mov r8, r7
	cmp r1, #0
	ble _0211F2B8
_0211F298:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov45_0211e378
	ldr r1, [r4, #8]
	add r8, r8, #1
	cmp r8, r1
	blt _0211F298
_0211F2B8:
	add r0, r8, #1
	cmp r0, r1
	blt _0211F28C
_0211F2C4:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0xc]
	bl  FUN_ov16_020f52f4
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov45_0211ef90
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov45_0211f1cc

	arm_func_start FUN_ov45_0211f2ec
FUN_ov45_0211f2ec: ; 0x0211F2EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x34
	ldr r3, _0211F528 ; =0x0209A250
	mov r4, #0
	mov r5, r0
	ldr r0, [r3]
	str r4, [sp, #0x10]
	cmp r0, #0
	mov r6, r4
	ldr r1, _0211F52C ; =0x02120C7C
	beq _0211F338
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r2, sp, #0x10
	str r4, [sp, #0xc]
	bl FUN_0202eff0
	mov r4, r0
_0211F338:
	cmp r4, #0
	beq _0211F3BC
	ldr r7, [sp, #0x10]
	mov r8, #0
_0211F348:
	mov r0, r8
	bl  FUN_ov16_020efa80
	movs r4, r0
	beq _0211F3B0
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211F3B0
	mov r0, r4
	bl FUN_0206d6b0
	cmp r0, #0
	beq _0211F3B0
	mov r0, r4
	bl FUN_0206cc34
	ldrb r1, [r5, #0x1e]
	sub r0, r0, #1
	mov r9, r0, lsl #1
	cmp r1, #7
	mov r0, r4
	addeq r9, r9, #1
	bl FUN_0206cbf8
	add r1, r5, r8, lsl #2
	add r1, r1, #0x500
	strh r0, [r1, #0x2c]
	mov r0, r9, lsl #1
	ldrsh r0, [r7, r0]
	strh r0, [r1, #0x2e]
_0211F3B0:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0211F348
_0211F3BC:
	ldr r1, [sp, #0x10]
	ldr r0, _0211F528 ; =0x0209A250
	bl FUN_0202e1c0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x28
	mov r2, #0x300
	str r4, [r5, #0x24]
	bl MI_CpuFill8
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	ldr r0, _0211F530 ; =0x0209BA20
	add r2, sp, #0x14
	mov r3, #0x10
	bl FUN_0204b540
_0211F408:
	add r8, sp, #0x14
	mov r0, r4, lsl #1
	ldrh r0, [r8, r0]
	cmp r0, #0
	addne r1, r5, r4, lsl #2
	ldrne r1, [r1, #0x328]
	cmpne r1, #0
	beq _0211F514
	mov r9, #0x6c
	mul r1, r4, r9
	ldr r2, [r5, #0x368]
	adds r1, r2, r1
	beq _0211F514
	mov r10, #0
	mov r1, r10
	bl  FUN_ov16_020efa9c
	movs r7, r0
	beq _0211F514
	add r1, r5, r4, lsl #2
	ldr r1, [r1, #0x328]
	mov r2, #0x98
	bl MI_CpuCopy8
	add r0, r5, r4, lsl #2
	mul r9, r4, r9
	ldr r0, [r0, #0x328]
	bl FUN_0206dcd4
	ldr r2, [r5, #0x368]
	mov r1, r0
	add r0, r2, r9
	bl FUN_0206ed40
	ldr r1, [r5, #0x368]
	add r0, r5, r4, lsl #2
	add r2, r1, r9
	ldr r1, [r0, #0x328]
	mov r0, r5
	str r2, [r1, #0x68]
	mov r1, r4, lsl #1
	ldrh r1, [r8, r1]
	bl FUN_ov45_0211fbb4
	mov r9, r0
	mov r0, r7
	bl FUN_0206dcd4
	ldr r1, [r0]
	mov r0, #0x30
	mla r2, r4, r0, r5
	mov r0, r4, lsl #1
	ldrh r0, [r8, r0]
	strh r0, [r2, #0x28]
	strb r10, [r2, #0x2a]
	strb r10, [r2, #0x2b]
	str r1, [r2, #0x2c]
	str r10, [r2, #0x40]
	str r10, [r2, #0x44]
_0211F4DC:
	add r0, r2, r10, lsl #2
	add r10, r10, #1
	str r6, [r0, #0x30]
	cmp r10, #4
	blt _0211F4DC
	mov r0, #0x30
	mla r0, r4, r0, r5
	str r9, [r0, #0x48]
	str r6, [r0, #0x4c]
	str r6, [r0, #0x50]
	str r6, [r0, #0x54]
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
_0211F514:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211F408
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211F528: .word unk_0209A250
_0211F52C: .word ov45_02120C7C
_0211F530: .word unk_0209BA20
	arm_func_end FUN_ov45_0211f2ec

	arm_func_start FUN_ov45_0211f534
FUN_ov45_0211f534: ; 0x0211F534
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x528]
	ldr r1, [r4, #0x524]
	add r2, r2, #1
	str r2, [r4, #0x528]
	cmp r1, #1
	beq _0211F560
	cmp r1, #2
	beq _0211F590
	ldmfd sp!, {r4, pc}
_0211F560:
	bl FUN_ov45_0211f634
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _0211F57C
	mov r0, r4
	mov r1, #2
	bl FUN_ov45_0211f5bc
_0211F57C:
	mov r0, r4
	add r1, r4, #0x3fc
	mov r2, #0
	bl FUN_ov45_0211ef90
	ldmfd sp!, {r4, pc}
_0211F590:
	add r1, r4, #0x3fc
	mov r2, #0
	bl FUN_ov45_0211ef90
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov45_0211f534

	arm_func_start FUN_ov45_0211f5a0
FUN_ov45_0211f5a0: ; 0x0211F5A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov45_0211f868
	mov r0, r4
	mov r1, #2
	bl FUN_ov45_0211f5bc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov45_0211f5a0

	arm_func_start FUN_ov45_0211f5bc
FUN_ov45_0211f5bc: ; 0x0211F5BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r1, [r4, #0x524]
	str r0, [r4, #0x528]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	cmp r1, #1
	beq _0211F5EC
	cmp r1, #2
	beq _0211F610
	ldmfd sp!, {r4, pc}
_0211F5EC:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211F630 ; =0x0209AC44
	mov r1, #0x28
	bl FUN_0202cf6c
	mov r0, #1
	strb r0, [r4, #0x1b]
	ldmfd sp!, {r4, pc}
_0211F610:
	ldr r0, _0211F630 ; =0x0209AC44
	mov r1, #0x28
	mov r2, #0x64
	bl FUN_0202cfd8
	mov r0, r4
	mov r1, #1
	bl FUN_ov45_0211fad4
	ldmfd sp!, {r4, pc}
_0211F630: .word unk_0209AC44
	arm_func_end FUN_ov45_0211f5bc

	arm_func_start FUN_ov45_0211f634
FUN_ov45_0211f634: ; 0x0211F634
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r11, #0
	mov r10, r0
	str r11, [sp, #8]
	mov r5, r11
	bl  FUN_ov16_020f081c
	mov r6, #1
	mov r1, r0
	ldr r0, _0211F860 ; =0x0209BA20
	str r6, [sp]
	mov r3, #0x80
	str r3, [sp, #4]
	add r2, sp, #0x1c
	mov r3, #0x10
	bl FUN_0204b540
	mov r9, r11
_0211F678:
	add r4, sp, #0x1c
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	cmp r0, #0
	addne r0, r10, r9, lsl #2
	ldrne r0, [r0, #0x328]
	cmpne r0, #0
	beq _0211F838
	bl FUN_0206dcdc
	cmp r0, #0
	bne _0211F838
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	mov r1, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211F838
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x328]
	bl FUN_0206cc34
	add r2, r10, #0x28
	mov r1, #0x30
	mla r8, r9, r1, r2
	ldr r1, [r8, #0x20]
	mov r7, r0
	cmp r1, #0
	blt _0211F838
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x328]
	bl FUN_0206cc34
	cmp r0, #0x63
	beq _0211F838
	ldr r0, [r10, #0x528]
	cmp r0, #1
	bne _0211F734
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x328]
	ldr r0, _0211F860 ; =0x0209BA20
	bl FUN_0204df64
	ldr r1, [r8, #0x20]
	cmp r1, r0
	strge r6, [r8, #0x2c]
	strlt r5, [r8, #0x2c]
	ldrlt r0, [r8, #0x20]
	str r0, [r8, #0x24]
	mov r0, #0
	str r0, [r8, #0x28]
_0211F734:
	ldr r2, [r10, #0x528]
	cmp r2, #0x1e
	bne _0211F76C
	ldr r0, [r8, #0x2c]
	cmp r0, #0
	ldreq r2, [r8, #0x20]
	beq _0211F798
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x328]
	ldr r0, _0211F860 ; =0x0209BA20
	bl FUN_0204df64
	mov r2, r0
	mov r11, #1
	b _0211F798
_0211F76C:
	ldr r0, [r8, #0x24]
	ldr r1, _0211F864 ; =0x88888889
	mul r2, r0, r2
	smull r0, r3, r1, r2
	add r3, r2, r3
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #4
	ldr r0, [r8, #0x28]
	sub r2, r3, r0
	add r0, r0, r2
	str r0, [r8, #0x28]
_0211F798:
	ldr r0, [r8, #0x20]
	add r4, sp, #0xc
	sub r0, r0, r2
	str r0, [r8, #0x20]
	cmp r2, #0
	movgt r0, #1
	strgt r0, [sp, #8]
	str r6, [sp]
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x328]
	ldr r0, _0211F860 ; =0x0209BA20
	mov r3, r4
	bl FUN_0204dfb8
	cmp r0, #0
	beq _0211F838
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x328]
	bl FUN_0206cc34
	sub r0, r0, r7
	and r1, r0, #0xff
	ldrb r2, [r8, #2]
	mov r0, #0
	add r1, r2, r1
	strb r1, [r8, #2]
_0211F7F8:
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r2, #0
	ldrne r1, [r8, #0x18]
	cmpne r1, #4
	addlt r1, r8, r1, lsl #2
	strlt r2, [r1, #8]
	ldrlt r1, [r8, #0x18]
	addlt r1, r1, #1
	strlt r1, [r8, #0x18]
	cmp r0, #4
	blt _0211F7F8
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x328]
	mov r0, r10
	bl FUN_ov45_0211fbec
_0211F838:
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211F678
	ldr r0, [sp, #8]
	cmp r11, #0
	strne r5, [r10, #0x528]
	cmp r0, #0
	streqb r6, [r10, #0x1d]
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F860: .word unk_0209BA20
_0211F864: .word 0x88888889
	arm_func_end FUN_ov45_0211f634

	arm_func_start FUN_ov45_0211f868
FUN_ov45_0211f868: ; 0x0211F868
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r10, r0
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r3, #1
	str r3, [sp]
	mov r4, #0x80
	ldr r0, _0211F9B4 ; =0x0209BA20
	add r2, sp, #0x18
	mov r3, #0x10
	str r4, [sp, #4]
	bl FUN_0204b540
	mov r9, #0
_0211F8A0:
	add r4, sp, #0x18
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	cmp r0, #0
	addne r0, r10, r9, lsl #2
	ldrne r0, [r0, #0x328]
	cmpne r0, #0
	beq _0211F998
	bl FUN_0206dcdc
	cmp r0, #0
	bne _0211F998
	mov r0, r9, lsl #1
	ldrh r0, [r4, r0]
	mov r8, #0
	mov r1, r8
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211F998
	add r1, r10, #0x28
	mov r0, #0x30
	mla r7, r9, r0, r1
	ldr r6, [r7, #0x20]
	add r0, r10, r9, lsl #2
	str r8, [r7, #0x20]
	ldr r0, [r0, #0x328]
	bl FUN_0206cc34
	mov r1, #1
	mov r5, r0
	add r4, sp, #8
	add r0, r10, r9, lsl #2
	str r1, [sp]
	ldr r1, [r0, #0x328]
	ldr r0, _0211F9B4 ; =0x0209BA20
	mov r2, r6
	mov r3, r4
	bl FUN_0204dfb8
	cmp r0, #0
	beq _0211F998
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x328]
	bl FUN_0206cc34
	sub r0, r0, r5
	ldrb r1, [r7, #2]
	and r0, r0, #0xff
	add r0, r1, r0
	strb r0, [r7, #2]
_0211F958:
	ldr r1, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r1, #0
	ldrne r0, [r7, #0x18]
	cmpne r0, #4
	addlt r0, r7, r0, lsl #2
	strlt r1, [r0, #8]
	ldrlt r0, [r7, #0x18]
	addlt r0, r0, #1
	strlt r0, [r7, #0x18]
	cmp r8, #4
	blt _0211F958
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x328]
	mov r0, r10
	bl FUN_ov45_0211fbec
_0211F998:
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211F8A0
	mov r0, #1
	strb r0, [r10, #0x1d]
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F9B4: .word unk_0209BA20
	arm_func_end FUN_ov45_0211f868

	arm_func_start FUN_ov45_0211f9b8
FUN_ov45_0211f9b8: ; 0x0211F9B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r11, _0211FA98 ; =0x0209BA20
	mov r9, #0
	mov r10, r0
	mov r0, r11
	mov r1, r9
	bl FUN_0205107c
	ldr r5, _0211FA9C ; =0x51EB851F
	mov r7, r0
	mov r4, #0x32
_0211F9E0:
	mov r0, r9
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _0211FA88
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211FA88
	mov r0, r6
	bl FUN_0206d6b0
	cmp r0, #0
	beq _0211FA88
	add r0, r10, r9, lsl #2
	add r1, r0, #0x500
	ldrsh r8, [r1, #0x2e]
	mov r0, r6
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r7
	bl FUN_0204fca0
	cmp r0, #0
	muleq r1, r8, r4
	smulleq r0, r8, r5, r1
	moveq r0, r1, lsr #0x1f
	addeq r8, r0, r8, asr #5
	beq _0211FA58
	mov r0, r6
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r7
	bl FUN_0204fd68
_0211FA58:
	mov r3, #0
	mov r2, r8
	mov r8, r3
	mov r0, r11
	mov r1, r6
	str r8, [sp]
	bl FUN_0204dfb8
	cmp r0, #0
	beq _0211FA88
	mov r0, r10
	mov r1, r6
	bl FUN_ov45_0211fbec
_0211FA88:
	add r9, r9, #1
	cmp r9, #0x64
	blt _0211F9E0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FA98: .word unk_0209BA20
_0211FA9C: .word 0x51EB851F
	arm_func_end FUN_ov45_0211f9b8

	arm_func_start FUN_ov45_0211faa0
FUN_ov45_0211faa0: ; 0x0211FAA0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r4, #8]
	cmp r1, #8
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, r4
	bl FUN_ov45_0211f9b8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov45_0211faa0

	arm_func_start FUN_ov45_0211fad4
FUN_ov45_0211fad4: ; 0x0211FAD4
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0211FB1C
_0211FAE0: ; jump table
	b _0211FB1C ; case 0
	b _0211FAF0 ; case 1
	b _0211FAF0 ; case 2
	b _0211FB1C ; case 3
_0211FAF0:
	mov r12, #0
	mov r2, #0x30
_0211FAF8:
	mla r3, r12, r2, r0
	ldr r3, [r3, #0x40]
	cmp r3, #0
	bne _0211FB14
	add r12, r12, #1
	cmp r12, #0x10
	blt _0211FAF8
_0211FB14:
	cmp r12, #0x10
	moveq r1, #3
_0211FB1C:
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov45_0211fad4

	arm_func_start FUN_ov45_0211fb24
FUN_ov45_0211fb24: ; 0x0211FB24
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	add r0, r0, r3, lsl #2
	ldr r3, [r0, #0x500]
	ldr r6, _0211FBB0 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	mov r4, r2
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r3, [sp, #0x20]
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211FBB0: .word unk_02099F38
	arm_func_end FUN_ov45_0211fb24

	arm_func_start FUN_ov45_0211fbb4
FUN_ov45_0211fbb4: ; 0x0211FBB4
	stmfd sp!, {r3, lr}
	mov r12, #0
	mov lr, r12
_0211FBC0:
	add r2, r0, lr, lsl #2
	add r2, r2, #0x500
	ldrh r3, [r2, #0x2c]
	cmp r1, r3
	ldreqsh r12, [r2, #0x2e]
	beq _0211FBE4
	add lr, lr, #1
	cmp lr, #0x64
	blt _0211FBC0
_0211FBE4:
	mov r0, r12
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov45_0211fbb4

	arm_func_start FUN_ov45_0211fbec
FUN_ov45_0211fbec: ; 0x0211FBEC
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211FC28 ; =0x0209BA20
	mov r5, #0
_0211FC00:
	mov r0, r6
	mov r1, r5
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_02074a2c
	add r5, r5, #1
	cmp r5, #6
	blt _0211FC00
	ldmfd sp!, {r4, r5, r6, pc}
_0211FC28: .word unk_0209BA20
	arm_func_end FUN_ov45_0211fbec

	arm_func_start FUN_ov45_0211fc2c
FUN_ov45_0211fc2c: ; 0x0211FC2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0x19]
	mov r2, #0
	cmp r0, #0
	beq _0211FC64
	ldr r0, _0211FD50 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, r2
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	strb r2, [r4, #0x19]
_0211FC64:
	ldr r0, [r4, #8]
	cmp r0, #6
	ldreqb r0, [r4, #0x1a]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	ldr r0, _0211FD54 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r1, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0x1a]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0211FD3C
_0211FCA8: ; jump table
	b _0211FCB8 ; case 0
	b _0211FCCC ; case 1
	b _0211FCDC ; case 2
	b _0211FD30 ; case 3
_0211FCB8:
	mov r0, r4
	bl FUN_ov45_0211f5a0
	mov r0, r4
	mov r1, r5
	b _0211FCD4
_0211FCCC:
	mov r0, r4
	mov r1, #2
_0211FCD4:
	bl FUN_ov45_0211fad4
	b _0211FD3C
_0211FCDC:
	add r12, r4, #0x28
	mov r3, r0
	mov r1, #0x30
_0211FCE8:
	mla lr, r0, r1, r12
	ldr r2, [lr, #0x18]
	cmp r2, #0
	beq _0211FD20
	ldr r2, [lr, #0xc]
	str r2, [lr, #8]
	ldr r2, [lr, #0x10]
	str r2, [lr, #0xc]
	ldr r2, [lr, #0x14]
	str r2, [lr, #0x10]
	str r3, [lr, #0x14]
	ldr r2, [lr, #0x18]
	sub r2, r2, #1
	str r2, [lr, #0x18]
_0211FD20:
	add r0, r0, #1
	cmp r0, #0x10
	blt _0211FCE8
	b _0211FCCC
_0211FD30:
	mov r0, r4
	mov r1, #7
	bl FUN_ov45_0211faa0
_0211FD3C:
	mov r0, r4
	add r1, r4, #0x3fc
	mov r2, #0
	bl FUN_ov45_0211ef90
	ldmfd sp!, {r3, r4, r5, pc}
_0211FD50: .word unk_0209A3E0
_0211FD54: .word unk_0209AC44
	arm_func_end FUN_ov45_0211fc2c

	arm_func_start FUN_ov45_0211fd58
FUN_ov45_0211fd58: ; 0x0211FD58
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211FE9C ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldreq r0, [r4, #8]
	cmpeq r0, #6
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _0211FDCC
	ldrh r0, [r1, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #0x1a]
	ldrh r0, [r1]
	str r0, [r4, #0x10]
	ldrh r0, [r1, #2]
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FDCC:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _0211FE90
	mov r5, #1
	ldr r0, _0211FEA0 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r0, [r4, #0xc]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211FE90
_0211FDF8: ; jump table
	b _0211FE08 ; case 0
	b _0211FE1C ; case 1
	b _0211FE2C ; case 2
	b _0211FE84 ; case 3
_0211FE08:
	mov r0, r4
	bl FUN_ov45_0211f5a0
	mov r0, r4
	mov r1, r5
	b _0211FE24
_0211FE1C:
	mov r0, r4
	mov r1, #2
_0211FE24:
	bl FUN_ov45_0211fad4
	b _0211FE90
_0211FE2C:
	mov r5, #0
	add r3, r4, #0x28
	mov r2, r5
	mov r0, #0x30
_0211FE3C:
	mla r12, r5, r0, r3
	ldr r1, [r12, #0x18]
	cmp r1, #0
	beq _0211FE74
	ldr r1, [r12, #0xc]
	str r1, [r12, #8]
	ldr r1, [r12, #0x10]
	str r1, [r12, #0xc]
	ldr r1, [r12, #0x14]
	str r1, [r12, #0x10]
	str r2, [r12, #0x14]
	ldr r1, [r12, #0x18]
	sub r1, r1, #1
	str r1, [r12, #0x18]
_0211FE74:
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211FE3C
	b _0211FE1C
_0211FE84:
	mov r0, r4
	mov r1, #7
	bl FUN_ov45_0211faa0
_0211FE90:
	mov r0, #0
	strb r0, [r4, #0x1a]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE9C: .word unk_0209A3E0
_0211FEA0: .word unk_0209AC44
	arm_func_end FUN_ov45_0211fd58

	arm_func_start FUN_ov45_0211fea4
FUN_ov45_0211fea4: ; 0x0211FEA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r5, r0
	and r0, r1, #0x1f00
	mov r4, #0
	mov r1, r0, lsr #8
	ldr r0, _0212001C ; =0x02099EB4
	str r1, [r5, #0x520]
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	strb r4, [r5, #0x1a]
	strb r4, [r5, #0x1b]
	strb r4, [r5, #0x1c]
	strb r4, [r5, #0x1d]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _02120020 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r1, r4
	add r0, r5, #0x36c
	mov r2, #0x30
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x39c
	mov r2, #0x60
	bl MI_CpuFill8
	add r0, r5, #0x3fc
	mov r1, r4
	mov r2, #0x100
	bl MI_CpuFill8
	add r0, r5, #0x500
	mov r1, r4
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r5, #0xfc
	add r0, r0, #0x400
	mov r1, r4
	mov r2, #4
	bl MI_CpuFill8
	add r0, r5, #0x124
	add r0, r0, #0x400
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x28
	mov r1, r4
	mov r2, #0x300
	bl MI_CpuFill8
	add r0, r5, #0x328
	mov r1, r4
	mov r2, #0x40
	bl MI_CpuFill8
	add r0, r5, #0x12c
	add r0, r0, #0x400
	mov r1, r4
	mov r2, #0x190
	bl MI_CpuFill8
	ldr r0, _02120024 ; =0x0209BA20
	bl FUN_02071fac
	add r0, r5, #0x2bc
	add r0, r0, #0x400
	mov r1, #0x10
	bl  FUN_ov16_020f5278
	ldr r0, _02120028 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldr r9, _0212002C ; =0x0209A250
	mov r8, #0x98
	mov r7, r4
	mov r6, #1
	b _0211FFE8
_0211FFC8:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_0202de58
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x328]
	add r4, r4, #1
_0211FFE8:
	cmp r4, #0x10
	blt _0211FFC8
	ldr r0, _0212002C ; =0x0209A250
	mov r1, #0x6c0
	bl FUN_0202de44
	str r0, [r5, #0x368]
	mov r0, r5
	mov r1, #0
	bl FUN_ov45_0211f5bc
	mov r0, r5
	mov r1, #1
	bl FUN_ov45_0211faa0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212001C: .word unk_02099EB4
_02120020: .word unk_02099ED4
_02120024: .word unk_0209BA20
_02120028: .word unk_02099F38
_0212002C: .word unk_0209A250
	arm_func_end FUN_ov45_0211fea4

	arm_func_start FUN_ov45_02120030
FUN_ov45_02120030: ; 0x02120030
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x2bc
	add r0, r0, #0x400
	bl  FUN_ov16_020f5868
	ldr r5, _021201B0 ; =0x02099ED4
	ldr r1, _021201B4 ; =0x0209A110
	ldr r0, [r5]
	ldr r1, [r1]
	bl  FUN_ov16_0210e10c
	ldr r0, [r5]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02120078: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0212009C ; case 1
	b _021200B4 ; case 2
	b _021200DC ; case 3
	b _021200F4 ; case 4
	b _0212011C ; case 5
	b _02120140 ; case 6
	b _0212016C ; case 7
	b _02120194 ; case 8
_0212009C:
	mov r0, r4
	bl FUN_ov45_0211e068
	mov r0, r4
	mov r1, #2
	bl FUN_ov45_0211faa0
	ldmfd sp!, {r3, r4, r5, pc}
_021200B4:
	mov r0, r4
	bl FUN_ov45_0211e2ac
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov45_0211e314
	mov r0, r4
	mov r1, #3
	bl FUN_ov45_0211faa0
	ldmfd sp!, {r3, r4, r5, pc}
_021200DC:
	mov r0, r4
	bl FUN_ov45_0211f2ec
	mov r0, r4
	mov r1, #4
	bl FUN_ov45_0211faa0
	ldmfd sp!, {r3, r4, r5, pc}
_021200F4:
	mov r0, r4
	bl FUN_ov45_0211f138
	mov r0, r4
	bl FUN_ov45_0211f0a4
	ldr r0, [r4, #4]
	bl FUN_02041d80
	mov r0, r4
	mov r1, #5
	bl FUN_ov45_0211faa0
	ldmfd sp!, {r3, r4, r5, pc}
_0212011C:
	bl  FUN_ov16_020f1670
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_ov45_0211f5bc
	mov r0, r4
	mov r1, #6
	bl FUN_ov45_0211faa0
_02120140:
	mov r0, r4
	bl FUN_ov45_0211f534
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _021201B8 ; =0x0209AC44
	mov r1, #0x29
	bl FUN_0202cf6c
	mov r0, #0
	strb r0, [r4, #0x1c]
	ldmfd sp!, {r3, r4, r5, pc}
_0212016C:
	ldr r0, [r5]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, r4
	mov r1, #8
	bl FUN_ov45_0211faa0
	ldmfd sp!, {r3, r4, r5, pc}
_02120194:
	bl  FUN_ov16_020f1670
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #9
	bl FUN_ov45_0211faa0
	ldmfd sp!, {r3, r4, r5, pc}
_021201B0: .word unk_02099ED4
_021201B4: .word unk_0209A110
_021201B8: .word unk_0209AC44
	arm_func_end FUN_ov45_02120030

	arm_func_start FUN_ov45_021201bc
FUN_ov45_021201bc: ; 0x021201BC
	bx lr
	arm_func_end FUN_ov45_021201bc

	arm_func_start FUN_ov45_021201c0
FUN_ov45_021201c0: ; 0x021201C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #0x520]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _02120288 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0212028C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	add r0, r4, #0x39c
	mov r1, #8
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov45_0211e1e4
	mov r7, #0
	ldr r6, _02120290 ; =0x0209A250
	mov r5, r7
	b _02120240
_0212021C:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x328]
	cmp r1, #0
	beq _0212023C
	mov r0, r6
	bl FUN_0202e1c0
	add r0, r4, r7, lsl #2
	str r5, [r0, #0x328]
_0212023C:
	add r7, r7, #1
_02120240:
	cmp r7, #0x10
	blt _0212021C
	ldr r1, [r4, #0x368]
	cmp r1, #0
	beq _02120264
	ldr r0, _02120290 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x368]
_02120264:
	ldr r0, _02120294 ; =0x0209BA20
	bl FUN_02072020
	add r0, r4, #0x2bc
	add r0, r0, #0x400
	bl  FUN_ov16_020f52c4
	ldr r0, _02120298 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02120288: .word unk_02099EB4
_0212028C: .word unk_02099ED4
_02120290: .word unk_0209A250
_02120294: .word unk_0209BA20
_02120298: .word unk_02099F38
	arm_func_end FUN_ov45_021201c0

	arm_func_start FUN_ov45_0212029c
FUN_ov45_0212029c: ; 0x0212029C
	bx lr
	arm_func_end FUN_ov45_0212029c
_021202A0:
	.byte 0x50, 0x07, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x06, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xC0, 0x06, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0xD0, 0x05, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xE0, 0x05, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xF0, 0x05, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x80, 0x06, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x06, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x07, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x06, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x10, 0x06, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x20, 0x06, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x90, 0x06, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x40, 0x06, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0x50, 0x06, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x07, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00, 0x60, 0x06, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x10, 0x07, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x70, 0x06, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0x20, 0x07, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xA0, 0x06, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0xB0, 0x06, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00, 0xD0, 0x06, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00
	.byte 0xE0, 0x06, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x98, 0x09, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x78, 0x09, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x88, 0x09, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x48, 0x09, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x58, 0x09, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x68, 0x09, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x09, 0x00, 0x50, 0x00, 0x09, 0x00
	.byte 0x64, 0x0B, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x74, 0x0B, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x54, 0x0B, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x04, 0x0B, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x14, 0x0B, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x34, 0x0B, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x44, 0x0B, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0x24, 0x0B, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov45_021203f8
FUN_ov45_021203f8: ; 0x021203F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02120440 ; =0x02120528
	str r0, [r4, #4]
	ldr r0, _02120444 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _02120448 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x18]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02120440: .word ov45_02120528
_02120444: .word 0x00009CCD
_02120448: .word 0x0000EA3C
	arm_func_end FUN_ov45_021203f8

	arm_func_start FUN_ov45_0212044c
FUN_ov45_0212044c: ; 0x0212044C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02120494 ; =0x02120930
	str r0, [r4, #4]
	ldr r0, _02120498 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0212049C ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02120494: .word ov45_02120930
_02120498: .word 0x00009CCD
_0212049C: .word 0x0000EA3C
	arm_func_end FUN_ov45_0212044c

	arm_func_start FUN_ov45_021204a0
FUN_ov45_021204a0: ; 0x021204A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _021204E8 ; =0x02120AEC
	str r0, [r4, #0x10]
	ldr r0, _021204EC ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _021204F0 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_021204E8: .word ov45_02120AEC
_021204EC: .word 0x00009CCD
_021204F0: .word 0x0000EA3C
	arm_func_end FUN_ov45_021204a0

	.section .sinit, 4
ov45_021204F4:
	.word FUN_ov45_021203f8
	.word FUN_ov45_0212044c
	.word FUN_ov45_021204a0

	.data
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov45_02120528
ov45_02120528:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov45_02120544
ov45_02120544:
	.byte 0xF4, 0x07, 0x12, 0x02, 0x60, 0x07, 0x12, 0x02, 0xC4, 0x07, 0x12, 0x02
	.byte 0x40, 0x07, 0x12, 0x02
	.global ov45_02120554
ov45_02120554:
	.byte 0x74, 0x07, 0x12, 0x02, 0xA0, 0x05, 0x12, 0x02, 0xDC, 0x07, 0x12, 0x02
	.byte 0x20, 0x05, 0x12, 0x02, 0x0C, 0x08, 0x12, 0x02, 0x24, 0x05, 0x12, 0x02, 0x24, 0x08, 0x12, 0x02
	.byte 0xC0, 0x05, 0x12, 0x02, 0x88, 0x07, 0x12, 0x02, 0xB0, 0x05, 0x12, 0x02, 0x9C, 0x07, 0x12, 0x02
	.byte 0x8C, 0x05, 0x12, 0x02, 0xB0, 0x07, 0x12, 0x02, 0x94, 0x05, 0x12, 0x02, 0x82, 0xB5, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x00, 0x00, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x00, 0x00
	.byte 0x83, 0x41, 0x83, 0x62, 0x83, 0x76, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x00, 0x00, 0x00, 0x00
	.byte 0x83, 0x41, 0x83, 0x62, 0x83, 0x76, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x00, 0x00, 0x00, 0x00
	.byte 0x83, 0x41, 0x83, 0x62, 0x83, 0x76, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x38, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x38, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x91, 0xE5, 0x82, 0xAB, 0x82, 0xAD, 0x82, 0xD3, 0x82, 0xA6, 0x82, 0xDC, 0x82, 0xB7, 0x00, 0x00
	.byte 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x82, 0xBB, 0x82, 0xB1, 0x82, 0xBB, 0x82, 0xB1, 0x82, 0xD3, 0x82, 0xA6, 0x82, 0xDC, 0x82, 0xB7
	.byte 0x00, 0x00, 0x00, 0x00, 0x83, 0x4C, 0x83, 0x62, 0x83, 0x4E, 0x82, 0xC6, 0x83, 0x7B, 0x83, 0x66
	.byte 0x83, 0x42, 0x82, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x83, 0x4B, 0x83, 0x62, 0x83, 0x63, 0x82, 0xC6
	.byte 0x83, 0x58, 0x83, 0x5E, 0x83, 0x7E, 0x83, 0x69, 0x82, 0xAA, 0x00, 0x00, 0x82, 0x66, 0x82, 0x6F
	.byte 0x82, 0xC6, 0x82, 0x73, 0x82, 0x6F, 0x82, 0xAA, 0x83, 0x41, 0x83, 0x62, 0x83, 0x76, 0x00, 0x00
	.byte 0x83, 0x70, 0x83, 0x89, 0x83, 0x81, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xC9, 0x95, 0xCF, 0x89, 0xBB
	.byte 0x82, 0xCD, 0x00, 0x00, 0x83, 0x4E, 0x83, 0x8A, 0x83, 0x41, 0x82, 0xB7, 0x82, 0xE9, 0x82, 0xC6
	.byte 0x8C, 0x6F, 0x8C, 0xB1, 0x92, 0x6C, 0x82, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x83, 0x4B, 0x81, 0x5B
	.byte 0x83, 0x68, 0x82, 0xAA, 0x83, 0x41, 0x83, 0x62, 0x83, 0x76, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7
	.byte 0x00, 0x00, 0x00, 0x00, 0x83, 0x4E, 0x83, 0x8A, 0x83, 0x41, 0x82, 0xB7, 0x82, 0xE9, 0x82, 0xC6
	.byte 0x8C, 0x6F, 0x8C, 0xB1, 0x92, 0x6C, 0x82, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x83, 0x58, 0x83, 0x73
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xAA, 0x83, 0x41, 0x83, 0x62, 0x83, 0x76, 0x82, 0xB5, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x00, 0x00, 0x83, 0x7B, 0x83, 0x66, 0x83, 0x42, 0x82, 0xC6, 0x83, 0x52, 0x83, 0x93
	.byte 0x83, 0x67, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x8B, 0x82, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov45_02120844
ov45_02120844:
	.byte 0x8C, 0xBD, 0x11, 0x02, 0x78, 0xBD, 0x11, 0x02, 0x18, 0xB6, 0x11, 0x02
	.byte 0x48, 0xB8, 0x11, 0x02, 0x18, 0xB9, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xC8, 0xBA, 0x11, 0x02
	.byte 0xB4, 0xBC, 0x11, 0x02, 0xB8, 0xBC, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov45_021208B0
ov45_021208B0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69
	.byte 0x6E, 0x61, 0x62, 0x69, 0x6B, 0x61, 0x72, 0x69, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov45_021208D0
ov45_021208D0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69
	.byte 0x6E, 0x61, 0x62, 0x69, 0x6B, 0x61, 0x72, 0x69, 0x5F, 0x65, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov45_021208F0
ov45_021208F0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69
	.byte 0x6E, 0x61, 0x62, 0x69, 0x6B, 0x61, 0x72, 0x69, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov45_02120910
ov45_02120910:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69
	.byte 0x6E, 0x61, 0x62, 0x69, 0x6B, 0x61, 0x72, 0x69, 0x5F, 0x65, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00
	.global ov45_02120930
ov45_02120930:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x79, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x38
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov45_021209B0
ov45_021209B0:
	.byte 0x64, 0xE0, 0x11, 0x02, 0x50, 0xE0, 0x11, 0x02, 0x9C, 0xD8, 0x11, 0x02, 0xB4, 0xD9, 0x11, 0x02
	.byte 0xAC, 0xDA, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xAC, 0xDC, 0x11, 0x02, 0x5C, 0xDF, 0x11, 0x02
	.byte 0x8C, 0xDF, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov45_02120A1C
ov45_02120A1C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x6E, 0x61, 0x62, 0x69
	.byte 0x6B, 0x61, 0x72, 0x69, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov45_02120A3C
ov45_02120A3C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x6E, 0x61, 0x62, 0x69
	.byte 0x6B, 0x61, 0x72, 0x69, 0x5F, 0x65, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov45_02120A5C
ov45_02120A5C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov45_02120A74
ov45_02120A74:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x6E, 0x61, 0x62, 0x69, 0x6B, 0x61, 0x72, 0x69, 0x2E, 0x53, 0x50, 0x44
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov45_02120A94
ov45_02120A94:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x6E, 0x61, 0x62, 0x69, 0x6B, 0x61, 0x72, 0x69, 0x5F, 0x65, 0x2E, 0x53
	.byte 0x50, 0x44, 0x00, 0x00
	.global ov45_02120AB4
ov45_02120AB4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov45_02120ACC
ov45_02120ACC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x64, 0x5F, 0x62, 0x6F, 0x6E
	.byte 0x75, 0x73, 0x5F, 0x65, 0x78, 0x70, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00
	.global ov45_02120AEC
ov45_02120AEC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x62, 0x67, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x62, 0x67, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x62, 0x67, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x62, 0x67, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x62, 0x67, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x62, 0x67, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x62, 0x67, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00, 0x62, 0x67, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov45_02120B8C
ov45_02120B8C:
	.byte 0x9C, 0x02, 0x12, 0x02
	.byte 0x3C, 0xE0, 0x11, 0x02, 0x2C, 0xFC, 0x11, 0x02, 0x58, 0xFD, 0x11, 0x02, 0xA4, 0xFE, 0x11, 0x02
	.byte 0x08, 0xB2, 0x02, 0x02, 0x30, 0x00, 0x12, 0x02, 0xBC, 0x01, 0x12, 0x02, 0xC0, 0x01, 0x12, 0x02
	.byte 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02
	.byte 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02
	.byte 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02
	.byte 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02
	.byte 0xD0, 0xB1, 0x02, 0x02, 0x54, 0xDF, 0x11, 0x02
	.global ov45_02120BF8
ov45_02120BF8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov45_02120C10
ov45_02120C10:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x63
	.byte 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x2E, 0x53, 0x54, 0x52, 0x00, 0x00
	.global ov45_02120C2C
ov45_02120C2C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x63, 0x6C, 0x5F, 0x62, 0x6F
	.byte 0x6E, 0x75, 0x73, 0x2E, 0x53, 0x50, 0x4C, 0x00
	.global ov45_02120C48
ov45_02120C48:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x63, 0x6C, 0x5F, 0x62, 0x6F, 0x6E, 0x75, 0x73, 0x2E
	.byte 0x53, 0x50, 0x44, 0x00
	.global ov45_02120C64
ov45_02120C64:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov45_02120C7C
ov45_02120C7C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x64, 0x5F, 0x62, 0x6F, 0x6E
	.byte 0x75, 0x73, 0x5F, 0x65, 0x78, 0x70, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

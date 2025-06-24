
	.include "/macros/function.inc"
	.include "/include/overlay70.inc"

	.text
	arm_func_start FUN_ov70_02119f00
FUN_ov70_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x7c
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #8
	mov r2, #0x24
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x2c
	mov r2, #0x38
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x64
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, _02119FAC ; =0x0211F2F4
	add r1, r5, #8
	bl  FUN_ov16_020f3054
	ldr r0, _02119FB0 ; =0x0211F30C
	add r1, r5, #0x14
	bl  FUN_ov16_020f3054
	ldr r0, _02119FB4 ; =0x0211F32C
	add r1, r5, #0x20
	bl  FUN_ov16_020f3054
	ldr r4, _02119FB8 ; =0x0211F020
	add lr, sp, #4
	mov r12, #7
_02119F70:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _02119F70
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x20]
	ldr r0, _02119FBC ; =0x0211F34C
	add r2, sp, #4
	add r3, r5, #0x2c
	bl  FUN_ov16_020f5450
	add sp, sp, #0x7c
	ldmfd sp!, {r4, r5, pc}
_02119FAC: .word 0x0211F2F4
_02119FB0: .word 0x0211F30C
_02119FB4: .word 0x0211F32C
_02119FB8: .word 0x0211F020
_02119FBC: .word 0x0211F34C
	arm_func_end FUN_ov70_02119f00

	arm_func_start FUN_ov70_02119fc0
FUN_ov70_02119fc0: ; 0x02119FC0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #8
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211A024 ; =0x02099F38
	b _0211A014
_02119FEC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211A010
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A010:
	add r5, r5, #1
_0211A014:
	cmp r5, #0xe
	blt _02119FEC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A024: .word 0x02099F38
	arm_func_end FUN_ov70_02119fc0

	arm_func_start FUN_ov70_0211a028
FUN_ov70_0211a028: ; 0x0211A028
	ldrb r0, [r0, #0xcc]
	add r0, r0, #0xf6
	and r0, r0, #0xff
	cmp r0, #2
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov70_0211a028

	arm_func_start FUN_ov70_0211a044
FUN_ov70_0211a044: ; 0x0211A044
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x64]
	cmp r0, #0
	bne _0211A07C
	ldr r0, _0211A088 ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x64]
_0211A07C:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x64]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A088: .word 0x02099F38
	arm_func_end FUN_ov70_0211a044

	arm_func_start FUN_ov70_0211a08c
FUN_ov70_0211a08c: ; 0x0211A08C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _0211A118 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r4]
	mov r6, r1
	mov r5, r2
	bl  FUN_ov16_021137dc
	ldrb r0, [sp, #0x28]
	ldr r3, [sp, #0x24]
	mov r1, r6
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0211401c
	ldr r1, [sp, #0x20]
	ldr r0, [r4]
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_021139bc
	mov r1, r6
	mov r2, r5
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A118: .word 0x02099F38
	arm_func_end FUN_ov70_0211a08c

	arm_func_start FUN_ov70_0211a11c
FUN_ov70_0211a11c: ; 0x0211A11C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x64]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A154 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x64]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A154: .word 0x02099F38
	arm_func_end FUN_ov70_0211a11c

	arm_func_start FUN_ov70_0211a158
FUN_ov70_0211a158: ; 0x0211A158
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A1A0 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x2c]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	mov r1, #0
	str r1, [r0, #0x2c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1A0: .word 0x02099F38
	arm_func_end FUN_ov70_0211a158

	arm_func_start FUN_ov70_0211a1a4
FUN_ov70_0211a1a4: ; 0x0211A1A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r4, #0
_0211A1B0:
	mov r0, r10
	mov r1, r4
	bl FUN_ov70_0211a158
	add r4, r4, #1
	cmp r4, #0xe
	blt _0211A1B0
	mov r4, #0
_0211A1CC:
	mov r0, r10
	mov r1, r4
	bl FUN_ov70_0211a11c
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #5
	blo _0211A1CC
	mov r9, #0
	add r7, r10, #8
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
_0211A1FC:
	mul r6, r9, r4
	add r8, r7, r6
	mov r0, r8
	mov r1, r11
	bl  FUN_ov16_020f338c
	mov r0, r8
	bl  FUN_ov16_020f33fc
	str r5, [r7, r6]
	str r5, [r8, #4]
	strb r5, [r8, #8]
	strb r5, [r8, #9]
	add r9, r9, #1
	strb r5, [r8, #0xa]
	cmp r9, #3
	blt _0211A1FC
	mov r0, r10
	bl FUN_ov70_0211d674
	mov r0, r10
	bl FUN_ov70_0211d738
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov70_0211a1a4

	arm_func_start FUN_ov70_0211a24c
FUN_ov70_0211a24c: ; 0x0211A24C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	str r2, [sp]
	mov r7, r3
	mov r6, #0
	mov r2, r7, lsl #0x10
	ldr r4, _0211A310 ; =0x02099EB4
	str r6, [sp, #4]
	mov r5, #1
	mov r3, r1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fc74
	mov r1, r7, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strb r6, [r4, #0x10]
	strb r6, [r4, #0xf]
	strh r6, [r4, #0xc]
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3a
	strb r6, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	ldr r2, [sp, #0x20]
	mov r1, r6
	mov r3, r6
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r6
	mov r3, r6
	ldr r2, [sp, #0x24]
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A310: .word 0x02099EB4
	arm_func_end FUN_ov70_0211a24c

	arm_func_start FUN_ov70_0211a314
FUN_ov70_0211a314: ; 0x0211A314
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r7, #0
	mov r11, #9
	mov r1, r7
	mov r2, r11
	mov r9, r0
	bl FUN_ov70_0211a044
	mov r6, r0
	str r7, [sp]
	str r7, [sp, #4]
	mov r5, #0x1f4
	str r5, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x2c]
	mov r0, r9
	mov r1, r6
	mov r2, #1
	bl FUN_ov70_0211a08c
	mov r0, #0xd0
	str r0, [sp]
	mov r10, #0xa8
	mov r8, #2
	str r10, [sp, #4]
	mov r4, #0x12c
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r6
	mov r2, r8
	bl FUN_ov70_0211a08c
	mov r0, #0xa0
	stmia sp, {r0, r10}
	str r4, [sp, #8]
	str r8, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r6
	mov r2, #3
	bl FUN_ov70_0211a08c
	mov r10, #0x48
	str r10, [sp]
	mov r8, #0x20
	str r8, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x3c]
	mov r0, r9
	mov r1, r6
	mov r2, #4
	bl FUN_ov70_0211a08c
	str r10, [sp]
	mov r0, #0x38
	stmib sp, {r0, r4}
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x3c]
	mov r0, r9
	mov r1, r6
	mov r2, #5
	bl FUN_ov70_0211a08c
	str r10, [sp]
	mov r0, #0x50
	stmib sp, {r0, r4}
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x3c]
	mov r0, r9
	mov r1, r6
	mov r2, #6
	bl FUN_ov70_0211a08c
	str r10, [sp]
	mov r0, #0x68
	stmib sp, {r0, r4}
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x3c]
	mov r0, r9
	mov r1, r6
	mov r2, #7
	bl FUN_ov70_0211a08c
	str r10, [sp]
	mov r0, #0x80
	stmib sp, {r0, r4}
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x3c]
	mov r0, r9
	mov r1, r6
	mov r2, #8
	bl FUN_ov70_0211a08c
	str r10, [sp]
	str r8, [sp, #4]
	mov r0, #0x96
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x44]
	mov r1, r6
	mov r2, r11
	mov r0, r9
	bl FUN_ov70_0211a08c
	mov r0, r9
	mov r1, #1
	mov r2, #0x97
	bl FUN_ov70_0211a044
	mov r8, r0
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x30]
	mov r2, #1
	mov r0, r9
	mov r1, r8
	bl FUN_ov70_0211a08c
	mov r6, r5
	mov r4, r7
	mov r5, #1
	b _0211A53C
_0211A50C:
	mov r0, r7, lsl #4
	str r4, [sp]
	add r0, r0, #0x10
	stmib sp, {r0, r6}
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r3, [r9, #0x30]
	mov r0, r9
	mov r1, r8
	add r2, r7, #2
	bl FUN_ov70_0211a08c
	add r7, r7, #1
_0211A53C:
	cmp r7, #8
	blt _0211A50C
	mov r7, #0
	str r7, [sp]
	mov r6, #0xa8
	str r6, [sp, #4]
	mov r5, #0x12c
	str r5, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r8
	mov r2, #0xd
	bl FUN_ov70_0211a08c
	mov r10, #0x90
	str r10, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r8
	mov r2, #0xc
	bl FUN_ov70_0211a08c
	mov r11, #0xd0
	str r11, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r4, #0xb
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_ov70_0211a08c
	mov r0, #0x18
	stmia sp, {r0, r7}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r8
	mov r2, #0xe
	bl FUN_ov70_0211a08c
	str r11, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r8
	mov r2, #0xf
	bl FUN_ov70_0211a08c
	mov r0, #0x38
	stmia sp, {r0, r10}
	mov r4, #0x10
	str r5, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_ov70_0211a08c
	mov r0, #0xb0
	stmia sp, {r0, r10}
	str r5, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r8
	mov r2, #0x11
	bl FUN_ov70_0211a08c
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, #0x96
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x44]
	mov r0, r9
	mov r1, r8
	mov r2, #0x12
	bl FUN_ov70_0211a08c
	str r7, [sp]
	mov r10, #0x13
	str r4, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x44]
	mov r0, r9
	mov r1, r8
	mov r2, r10
	bl FUN_ov70_0211a08c
	mov r2, r10
	ldr r10, _0211A8AC ; =0x02099F38
	mov r1, r8
	ldr r0, [r10]
	mov r3, r7
	bl  FUN_ov16_02113a80
	ldr r0, [r10]
	mov r1, r8
	mov r2, #2
	mov r3, r7
	bl  FUN_ov16_0211329c
	mov r0, r9
	mov r1, #2
	mov r2, #0x76
	bl FUN_ov70_0211a044
	mov r8, r0
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x34]
	mov r2, #1
	mov r0, r9
	mov r1, r8
	bl FUN_ov70_0211a08c
	mov r0, #0x1f4
	sub r1, r0, #0x32
	mov r0, #8
	str r0, [sp]
	mov r0, #0x20
	stmib sp, {r0, r1}
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x38]
	mov r0, r9
	mov r1, r8
	mov r2, #2
	bl FUN_ov70_0211a08c
	str r11, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r2, #3
	mov r0, r9
	mov r1, r8
	bl FUN_ov70_0211a08c
	mov r0, #0x28
	stmia sp, {r0, r4, r5}
	mov r6, #7
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r2, #4
	mov r0, r9
	mov r1, r8
	bl FUN_ov70_0211a08c
	mov r0, #0xb0
	stmia sp, {r0, r4, r5}
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r8
	mov r2, #5
	bl FUN_ov70_0211a08c
	mov r0, #0xa0
	stmia sp, {r0, r7}
	str r5, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x58]
	mov r0, r9
	mov r1, r8
	mov r2, #6
	bl FUN_ov70_0211a08c
	mov r0, #0xd8
	stmia sp, {r0, r7}
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x40]
	mov r2, r6
	mov r0, r9
	mov r1, r8
	bl FUN_ov70_0211a08c
	mov r0, #8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x96
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r3, [r9, #0x44]
	mov r2, #8
	mov r0, r9
	mov r1, r8
	bl FUN_ov70_0211a08c
	ldr r0, [r10]
	mov r1, r8
	mov r2, #2
	mov r3, r7
	bl  FUN_ov16_0211329c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A8AC: .word 0x02099F38
	arm_func_end FUN_ov70_0211a314

	arm_func_start FUN_ov70_0211a8b0
FUN_ov70_0211a8b0: ; 0x0211A8B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	str r1, [sp, #8]
	mov r10, r0
	cmp r1, #0xb
	mov r9, #0
	bne _0211AB50
	mov r1, #3
	mov r2, #1
	bl FUN_ov70_0211a044
	mov r0, r10
	bl FUN_ov70_0211c228
	add r0, r10, #0x3000
	ldrb r1, [r0, #0x4bb]
	ldr r7, [r10, #0x68]
	cmp r1, #0
	strneb r9, [r0, #0x4bb]
	bne _0211A908
	mov r0, r10
	bl FUN_ov70_0211d674
	mov r0, r10
	bl FUN_ov70_0211d63c
_0211A908:
	mov r5, #0x10
	mov r6, #0
	b _0211AB34
_0211A914:
	mov r9, #0
	ldr r4, _0211AD0C ; =0x02099F38
	str r9, [sp]
	mov r11, #2
	ldr r0, [r4]
	mov r1, r7
	mov r3, r11
	add r2, r6, #2
	bl  FUN_ov16_02113ec0
	ldr r1, [r10, #0xd8]
	add r0, r10, #0x810
	add r2, r6, r1, lsl #3
	mov r1, #0x12
	mul r1, r2, r1
	add r0, r0, #0x2000
	ldrsh r2, [r0, r1]
	add r3, r0, r1
	mov r8, #0x20
	cmp r2, #0
	ble _0211AA04
	ldrb r1, [r3, #5]
	ldrb r12, [r3, #4]
	ldrb r0, [r3, #6]
	ldrb r11, [r3, #7]
	str r12, [sp, #0x18]
	ldrb r9, [r3, #8]
	ldrb r4, [r3, #9]
	mov r11, r11, lsl #0x19
	mov r11, r11, lsr #0x19
	str r0, [sp, #0x24]
	cmp r1, #9
	subeq r0, r8, #0x21
	streq r0, [sp, #0x18]
	streq r0, [sp, #0x24]
	ldrb r0, [r3, #7]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	mov r0, r0, lsl #0x18
	str r11, [sp, #0x28]
	str r9, [sp, #0x2c]
	str r4, [sp, #0x30]
	movs r0, r0, lsr #0x1f
	bne _0211A9F4
	mov r8, #0x30
	mov r4, #0
	mvn r0, #0
	add r2, sp, #0x18
	b _0211A9EC
_0211A9D4:
	cmp r4, #2
	ldreq r1, [r2, r4, lsl #2]
	addeq r1, r1, #0x3e8
	streq r1, [r2, r4, lsl #2]
	strne r0, [r2, r4, lsl #2]
	add r4, r4, #1
_0211A9EC:
	cmp r4, #7
	blt _0211A9D4
_0211A9F4:
	ldrsh r1, [r3]
	mov r0, r10
	bl FUN_ov70_0211d694
	b _0211AA3C
_0211AA04:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r3, r11
	add r2, r6, #2
	bl  FUN_ov16_02113ec0
	mvn r1, #0
	add r0, sp, #0x18
	b _0211AA34
_0211AA2C:
	str r1, [r0, r9, lsl #2]
	add r9, r9, #1
_0211AA34:
	cmp r9, #7
	blt _0211AA2C
_0211AA3C:
	ldr r4, [sp, #0x18]
	str r5, [sp]
	mov r0, r10
	mov r1, r7
	add r2, r6, #0x19
	mov r3, #0
	str r4, [sp, #4]
	bl FUN_ov70_0211cc8c
	ldr r3, [sp, #0x1c]
	str r5, [sp]
	mov r0, r10
	mov r1, r7
	add r2, r6, #0x22
	str r3, [sp, #4]
	mov r3, #0x10
	bl FUN_ov70_0211cd90
	mov r3, r8
	str r5, [sp]
	ldr r1, [sp, #0x20]
	mov r0, r10
	str r1, [sp, #4]
	mov r1, r7
	add r2, r6, #0x2b
	bl FUN_ov70_0211ceb0
	str r5, [sp]
	ldr r1, [sp, #0x24]
	mov r0, r10
	str r1, [sp, #4]
	mov r1, r7
	add r2, r6, r6, lsl #1
	add r2, r2, #0x34
	mov r4, #0x80
	mov r3, r4
	bl FUN_ov70_0211cf84
	mov r3, r4
	str r5, [sp]
	ldr r1, [sp, #0x28]
	mov r0, r10
	str r1, [sp, #4]
	mov r1, r7
	add r2, r6, #0x4d
	bl FUN_ov70_0211d13c
	str r5, [sp]
	ldr r1, [sp, #0x2c]
	mov r0, r10
	str r1, [sp, #4]
	mov r1, r7
	mov r2, r6, lsl #2
	add r2, r2, #0x56
	mov r3, #0xa8
	bl FUN_ov70_0211d1f8
	str r5, [sp]
	ldr r1, [sp, #0x30]
	mov r0, r10
	str r1, [sp, #4]
	mov r1, r7
	mov r2, r6, lsl #2
	add r2, r2, #0x77
	mov r3, #0xc8
	bl FUN_ov70_0211d438
	add r5, r5, #0x10
	add r6, r6, #1
_0211AB34:
	cmp r6, #8
	blt _0211A914
	ldr r1, [sp, #8]
	mov r0, r10
	bl FUN_ov70_0211c348
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB50:
	cmp r1, #0xc
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #4
	mov r2, #0x11
	bl FUN_ov70_0211a044
	ldr r7, [r10, #0x6c]
	add r6, r10, #0x1bc
	mov r11, #0x64
	mov r4, #0x1c
	b _0211AC08
_0211AB7C:
	ldr r0, [r10, #0xe4]
	add r0, r9, r0, lsl #4
	cmp r0, #0x64
	movge r0, r11
	mul r5, r0, r4
	ldrh r1, [r6, r5]
	mov r0, r10
	add r8, r6, r5
	bl FUN_ov70_0211d758
	ldrb r2, [r8, #3]
	ldrb r3, [r8, #5]
	mov r0, r10
	mov r1, r9
	bl FUN_ov70_0211c618
	ldrb r2, [r8, #4]
	mov r0, r10
	mov r1, r9
	bl FUN_ov70_0211c754
	ldrh r2, [r6, r5]
	mov r0, r10
	mov r1, r9
	bl FUN_ov70_0211c834
	mov r0, r10
	mov r1, r9
	add r2, r8, #0xc
	bl FUN_ov70_0211c91c
	ldr r2, [r8, #8]
	mov r0, r10
	mov r1, r9
	bl FUN_ov70_0211c9f8
	ldrb r2, [r8, #2]
	mov r0, r10
	mov r1, r9
	bl FUN_ov70_0211cb0c
	add r9, r9, #1
_0211AC08:
	cmp r9, #0x10
	blt _0211AB7C
	ldr r2, [r10, #0xd4]
	ldr r0, [r10, #0xd8]
	mov r1, #0x12
	add r0, r2, r0, lsl #3
	mul r2, r0, r1
	add r0, r10, #0x810
	add r0, r0, #0x2000
	ldrsh r3, [r0, r2]
	add r4, r0, r2
	cmp r3, #0
	ble _0211AC6C
	ldrb r0, [r4, #5]
	ldrb r2, [r4, #4]
	str r3, [sp, #0x14]
	str r0, [sp, #0x10]
	cmp r0, #9
	subeq r0, r1, #0x13
	str r2, [sp, #0xc]
	streq r0, [sp, #0xc]
	ldrsh r1, [r4]
	mov r0, r10
	bl FUN_ov70_0211d694
	b _0211AC8C
_0211AC6C:
	mov r2, #0
	mvn r1, #0
	add r0, sp, #0xc
	b _0211AC84
_0211AC7C:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
_0211AC84:
	cmp r2, #3
	blt _0211AC7C
_0211AC8C:
	mov r0, #0
	str r0, [sp]
	ldr r4, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, #0xf
	mov r3, #8
	str r4, [sp, #4]
	bl FUN_ov70_0211cc8c
	mov r0, #0
	str r0, [sp]
	ldr r4, [sp, #0x10]
	mov r0, r10
	mov r1, r7
	mov r2, #0x10
	mov r3, #0x18
	str r4, [sp, #4]
	bl FUN_ov70_0211cd90
	mov r0, #1
	str r0, [sp]
	ldr r3, [sp, #0x14]
	mov r0, r10
	str r3, [sp, #4]
	mov r1, r7
	mov r2, #0x11
	mov r3, #0x28
	bl FUN_ov70_0211ceb0
	ldr r1, [sp, #8]
	mov r0, r10
	bl FUN_ov70_0211c348
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AD0C: .word 0x02099F38
	arm_func_end FUN_ov70_0211a8b0

	arm_func_start FUN_ov70_0211ad10
FUN_ov70_0211ad10: ; 0x0211AD10
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r1, [r5, #0x70]
	mov r4, #0
	cmp r1, #0
	beq _0211AD38
	ldr r0, _0211ADAC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r4, [r5, #0x70]
_0211AD38:
	ldr r1, [r5, #0x78]
	cmp r1, #0
	beq _0211AD54
	ldr r0, _0211ADAC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	str r4, [r5, #0x78]
_0211AD54:
	ldr r1, [r5, #0x74]
	cmp r1, #0
	beq _0211AD70
	ldr r0, _0211ADAC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r4, [r5, #0x74]
_0211AD70:
	mov r7, #0
	ldr r6, _0211ADAC ; =0x02099F38
	b _0211ADA0
_0211AD7C:
	add r0, r5, r7, lsl #2
	ldr r1, [r0, #0x7c]
	cmp r1, #0
	beq _0211AD9C
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r7, lsl #2
	str r4, [r0, #0x7c]
_0211AD9C:
	add r7, r7, #1
_0211ADA0:
	cmp r7, #0x10
	blt _0211AD7C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ADAC: .word 0x02099F38
	arm_func_end FUN_ov70_0211ad10

	arm_func_start FUN_ov70_0211adb0
FUN_ov70_0211adb0: ; 0x0211ADB0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	mov r6, #0
	mov r7, r1
	ldr r2, _0211AFF0 ; =0x00000B0C
	mov r1, r6
	add r0, r8, #0x1bc
	strb r6, [r8, #0xec]
	bl MI_CpuFill8
	ldr r0, _0211AFF4 ; =0x0209BA20
	mov r1, r6
	bl FUN_0205107c
	mov r5, r0
_0211ADE4:
	add r0, r8, r6, lsl #1
	ldrh r0, [r0, #0xf2]
	mov r10, #0
	mov r1, r10
	bl  FUN_ov16_020efa9c
	movs r4, r0
	beq _0211AFE0
	mov r9, #0x1c
_0211AE04:
	mov r0, r4
	mov r1, r10
	bl FUN_0206cdf8
	cmp r7, r0
	bne _0211AFD4
	ldrb r1, [r8, #0xec]
	add r2, r8, r6, lsl #1
	ldrh r2, [r2, #0xf2]
	mla r0, r1, r9, r8
	add r1, r0, #0x100
	mov r0, r4
	strh r2, [r1, #0xbc]
	bl FUN_0206cc34
	ldrb r2, [r8, #0xec]
	mla r1, r2, r9, r8
	strb r0, [r1, #0x1be]
	mov r0, r4
	bl FUN_0204fb60
	ldrb r3, [r8, #0xec]
	add r1, r8, r6, lsl #1
	mla r2, r3, r9, r8
	strb r0, [r2, #0x1bf]
	ldrh r1, [r1, #0xf2]
	mov r0, r5
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211AE88
	mov r0, r4
	mov r1, #1
	bl FUN_0206d9b0
	ldrb r2, [r8, #0xec]
	mla r1, r2, r9, r8
	strb r0, [r1, #0x1c0]
_0211AE88:
	cmp r6, #0x10
	ldrltb r1, [r8, #0xec]
	movlt r2, #1
	mlalt r0, r1, r9, r8
	strltb r2, [r0, #0x1c1]
	ldrb r2, [r8, #0xec]
	mov r0, r4
	mla r1, r2, r9, r8
	mov r2, #0
	str r2, [r1, #0x1c4]
	bl FUN_0206d454
	cmp r0, #0
	ldrneb r0, [r8, #0xec]
	mlane r1, r0, r9, r8
	ldrne r0, [r1, #0x1c4]
	orrne r0, r0, #0x20
	strne r0, [r1, #0x1c4]
	mov r0, r4
	bl FUN_0206d464
	cmp r0, #0
	ldrneb r0, [r8, #0xec]
	mlane r1, r0, r9, r8
	ldrne r0, [r1, #0x1c4]
	orrne r0, r0, #0x40
	strne r0, [r1, #0x1c4]
	mov r0, r4
	bl FUN_0206d474
	cmp r0, #0
	ldrneb r0, [r8, #0xec]
	mlane r1, r0, r9, r8
	ldrne r0, [r1, #0x1c4]
	orrne r0, r0, #0x80
	strne r0, [r1, #0x1c4]
	mov r0, r4
	bl FUN_0206d484
	cmp r0, #0
	ldrneb r0, [r8, #0xec]
	mlane r1, r0, r9, r8
	ldrne r0, [r1, #0x1c4]
	orrne r0, r0, #0x100
	strne r0, [r1, #0x1c4]
	mov r0, r4
	bl FUN_0206d494
	cmp r0, #0
	ldrneb r0, [r8, #0xec]
	mlane r1, r0, r9, r8
	ldrne r0, [r1, #0x1c4]
	orrne r0, r0, #0x200
	strne r0, [r1, #0x1c4]
	mov r0, r4
	bl FUN_0206d4a4
	cmp r0, #0
	ldrneb r0, [r8, #0xec]
	mlane r1, r0, r9, r8
	ldrne r0, [r1, #0x1c4]
	orrne r0, r0, #0x400
	strne r0, [r1, #0x1c4]
	mov r0, r4
	bl FUN_0206d4b4
	cmp r0, #0
	ldrneb r0, [r8, #0xec]
	mlane r1, r0, r9, r8
	ldrne r0, [r1, #0x1c4]
	orrne r0, r0, #0x800
	strne r0, [r1, #0x1c4]
	mov r0, r4
	bl FUN_0206d4c4
	cmp r0, #0
	ldrneb r0, [r8, #0xec]
	mov r2, #0x10
	mlane r1, r0, r9, r8
	ldrne r0, [r1, #0x1c4]
	orrne r0, r0, #0x1000
	strne r0, [r1, #0x1c4]
	ldrb r0, [r8, #0xec]
	add r1, r8, #0x1c8
	mla r1, r0, r9, r1
	add r0, r4, #0x1c
	bl MI_CpuCopy8
	ldrb r0, [r8, #0xec]
	add r0, r0, #1
	strb r0, [r8, #0xec]
	b _0211AFE0
_0211AFD4:
	add r10, r10, #1
	cmp r10, #6
	blt _0211AE04
_0211AFE0:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0211ADE4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AFF0: .word 0x00000B0C
_0211AFF4: .word 0x0209BA20
	arm_func_end FUN_ov70_0211adb0

	arm_func_start FUN_ov70_0211aff8
FUN_ov70_0211aff8: ; 0x0211AFF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r7, #0
	mov r1, r7
	add r0, r10, #0xf2
	mov r2, #0xc8
	bl MI_CpuFill8
	ldr r4, _0211B150 ; =0x0209BA20
	mov r1, r7
	mov r0, r4
	strb r7, [r10, #0xed]
	bl FUN_0205107c
	mov r6, r0
	mov r8, r7
	mov r11, r7
_0211B034:
	mov r0, r8
	bl  FUN_ov16_020efa80
	movs r5, r0
	beq _0211B0B8
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211B0B8
	mov r0, r5
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r6
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211B090
	mov r0, r5
	bl FUN_0206cc00
	add r1, r10, r7, lsl #1
	strh r0, [r1, #0xf2]
	ldrb r0, [r10, #0xed]
	add r1, r7, #1
	and r7, r1, #0xff
	add r0, r0, #1
	strb r0, [r10, #0xed]
_0211B090:
	mov r9, r11
_0211B094:
	mov r0, r5
	mov r1, r9
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_02074a2c
	add r9, r9, #1
	cmp r9, #6
	blt _0211B094
_0211B0B8:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0211B034
	mov r8, #0
	mov r4, r8
_0211B0CC:
	mov r0, r8
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _0211B138
	ldrb r0, [r10, #0xed]
	mov r5, r4
	cmp r0, #0
	ble _0211B114
_0211B0EC:
	mov r0, r6
	bl FUN_0206cbf8
	add r1, r10, r5, lsl #1
	ldrh r1, [r1, #0xf2]
	cmp r1, r0
	beq _0211B114
	ldrb r0, [r10, #0xed]
	add r5, r5, #1
	cmp r5, r0
	blt _0211B0EC
_0211B114:
	ldrb r0, [r10, #0xed]
	cmp r5, r0
	bne _0211B138
	mov r0, r6
	bl FUN_0206cbf8
	add r2, r10, r7, lsl #1
	add r1, r7, #1
	strh r0, [r2, #0xf2]
	and r7, r1, #0xff
_0211B138:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0211B0CC
	mov r0, r10
	bl FUN_ov70_0211b154
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B150: .word 0x0209BA20
	arm_func_end FUN_ov70_0211aff8

	arm_func_start FUN_ov70_0211b154
FUN_ov70_0211b154: ; 0x0211B154
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20c
	mov r10, r0
	add r0, r10, #0xc8
	mov r5, #0
	ldr r2, _0211B494 ; =0x00001B48
	mov r1, r5
	add r0, r0, #0xc00
	mov r4, #0x12
	bl MI_CpuFill8
	strh r5, [r10, #0xee]
	ldr r3, _0211B498 ; =0x0209A250
	str r5, [sp, #0x28]
	ldr r0, [r3]
	ldr r1, _0211B49C ; =0x0211F36C
	cmp r0, #0
	beq _0211B1B8
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r5, #1
	add r2, sp, #0x28
	str r5, [sp, #0xc]
	bl FUN_0202eff0
	mov r5, r0
_0211B1B8:
	cmp r5, #0
	beq _0211B388
	ldr r1, [sp, #0x28]
	mov r11, #0
	ldrsh r0, [r1]
	add r7, r1, #2
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _0211B388
	add r0, r10, #0xcf
	add r5, r0, #0xc00
_0211B1E4:
	ldrsh r9, [r7]
	ldrsh r8, [r7, #2]
	ldrsh r0, [r7, #4]
	mov r1, r9
	str r0, [sp, #0x24]
	ldrsh r0, [r7, #6]
	str r0, [sp, #0x20]
	ldrsh r0, [r7, #8]
	str r0, [sp, #0x1c]
	ldrsh r0, [r7, #0xa]
	add r7, r7, #0xc
	str r0, [sp, #0x18]
	ldr r0, _0211B4A0 ; =0x0209BA20
	bl FUN_0204a2c4
	movs r6, r0
	beq _0211B378
	ldrb r0, [r6]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	beq _0211B244
	cmp r0, #9
	bne _0211B378
_0211B244:
	ldr r0, _0211B4A0 ; =0x0209BA20
	mov r1, r8
	bl  FUN_ov16_020edec4
	ands r0, r0, #0xff
	str r0, [sp, #0x14]
	beq _0211B268
	ldr r0, _0211B4A0 ; =0x0209BA20
	mov r1, r9
	bl FUN_02074a2c
_0211B268:
	ldrh r3, [r10, #0xee]
	mov r0, r6
	mov r1, #0
	mla r2, r3, r4, r10
	add r2, r2, #0xc00
	strh r9, [r2, #0xc8]
	ldrh r12, [r10, #0xee]
	mov r2, #0x64
	mla r3, r12, r4, r10
	add r3, r3, #0xc00
	strh r8, [r3, #0xca]
	ldrh r8, [r10, #0xee]
	ldrb r12, [r6, #8]
	mla r3, r8, r4, r10
	strb r12, [r3, #0xccc]
	ldrh r8, [r10, #0xee]
	ldrb r12, [r6]
	mla r3, r8, r4, r10
	strb r12, [r3, #0xccd]
	bl FUN_0204b0c4
	ldrh r3, [r10, #0xee]
	mov r1, r9
	mla r2, r3, r4, r10
	strb r0, [r2, #0xcce]
	ldrb r2, [r6, #0xa]
	ldrh r3, [r10, #0xee]
	mov r0, r10
	and r2, r2, #0x7f
	mul r6, r3, r4
	ldrb r3, [r5, r6]
	bic r3, r3, #0x7f
	orr r2, r3, r2
	strb r2, [r5, r6]
	bl FUN_ov70_0211d990
	ldrh r1, [r10, #0xee]
	mov r0, r0, lsl #0x1f
	mul r2, r1, r4
	ldrb r1, [r5, r2]
	bic r1, r1, #0x80
	orr r0, r1, r0, lsr #24
	strb r0, [r5, r2]
	ldrh r1, [r10, #0xee]
	mla r0, r1, r4, r10
	add r1, r0, #0xc00
	ldr r0, [sp, #0x24]
	strh r0, [r1, #0xd2]
	ldrh r1, [r10, #0xee]
	mla r0, r1, r4, r10
	add r1, r0, #0xc00
	ldr r0, [sp, #0x20]
	strh r0, [r1, #0xd4]
	ldrh r1, [r10, #0xee]
	mla r0, r1, r4, r10
	add r1, r0, #0xc00
	ldr r0, [sp, #0x1c]
	strh r0, [r1, #0xd6]
	ldrh r1, [r10, #0xee]
	mla r0, r1, r4, r10
	add r1, r0, #0xc00
	ldr r0, [sp, #0x18]
	strh r0, [r1, #0xd8]
	ldrh r0, [r10, #0xee]
	mla r1, r0, r4, r10
	ldr r0, [sp, #0x14]
	strb r0, [r1, #0xcd1]
	ldrh r0, [r10, #0xee]
	add r0, r0, #1
	strh r0, [r10, #0xee]
_0211B378:
	ldr r0, [sp, #0x10]
	add r11, r11, #1
	cmp r11, r0
	blt _0211B1E4
_0211B388:
	ldr r1, [sp, #0x28]
	ldr r0, _0211B498 ; =0x0209A250
	bl FUN_0202e1c0
	add r1, sp, #0x2c
	mov r0, #0x78
	mov r11, #0
_0211B3A0:
	strb r11, [r1]
	strb r11, [r1, #1]
	strb r11, [r1, #2]
	strb r11, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211B3A0
	mov r6, #0
	add r4, sp, #0x2c
_0211B3C4:
	add r0, r10, r6, lsl #1
	ldrh r0, [r0, #0xf2]
	mov r1, r11
	bl  FUN_ov16_020efa9c
	movs r5, r0
	beq _0211B440
	mov r1, #4
	bl FUN_0206cdf8
	mov r7, r0
	mov r0, r5
	mov r1, #5
	bl FUN_0206cdf8
	mov r8, r0
	mov r9, r11
_0211B3FC:
	mov r0, r5
	mov r1, r9
	bl FUN_0206cdf8
	cmp r0, r7
	cmpne r0, r8
	ldrneb r1, [r4, r0]
	add r9, r9, #1
	addne r1, r1, #1
	strneb r1, [r4, r0]
	cmp r9, #4
	blt _0211B3FC
	ldrb r0, [r4, r7]
	add r0, r0, #1
	strb r0, [r4, r7]
	ldrb r0, [r4, r8]
	add r0, r0, #1
	strb r0, [r4, r8]
_0211B440:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0211B3C4
	ldrh r0, [r10, #0xee]
	mov r3, #0
	cmp r0, #0
	addle sp, sp, #0x20c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, sp, #0x2c
_0211B464:
	mov r0, #0x12
	mla r2, r3, r0, r10
	add r0, r2, #0xc00
	ldrsh r0, [r0, #0xc8]
	add r3, r3, #1
	ldrb r0, [r1, r0]
	strb r0, [r2, #0xcd0]
	ldrh r0, [r10, #0xee]
	cmp r3, r0
	blt _0211B464
	add sp, sp, #0x20c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B494: .word 0x00001B48
_0211B498: .word 0x0209A250
_0211B49C: .word 0x0211F36C
_0211B4A0: .word 0x0209BA20
	arm_func_end FUN_ov70_0211b154

	arm_func_start FUN_ov70_0211b4a4
FUN_ov70_0211b4a4: ; 0x0211B4A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x810
	mov r8, #0
	mov r9, r1
	ldr r2, _0211B560 ; =0x00000CA8
	mov r1, r8
	add r0, r0, #0x2000
	bl MI_CpuFill8
	ldrh r0, [r10, #0xee]
	strh r8, [r10, #0xf0]
	cmp r0, #0
	ble _0211B538
	mov r11, #0x12
	add r0, r10, #0xc8
	add r1, r10, #0x810
	add r7, r0, #0xc00
	add r6, r1, #0x2000
	mov r4, r11
	mov r5, r11
_0211B4F4:
	mul r1, r8, r5
	add r0, r10, r1
	ldrb r0, [r0, #0xccd]
	cmp r9, r0
	bne _0211B528
	ldrh r3, [r10, #0xf0]
	mov r2, r11
	add r0, r7, r1
	mla r1, r3, r4, r6
	bl MI_CpuCopy8
	ldrh r0, [r10, #0xf0]
	add r0, r0, #1
	strh r0, [r10, #0xf0]
_0211B528:
	ldrh r0, [r10, #0xee]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B4F4
_0211B538:
	ldrh r2, [r10, #0xf0]
	add r1, r10, #0x810
	mov r0, r10
	sub r2, r2, #1
	mov r2, r2, lsl #0x10
	add r1, r1, #0x2000
	mov r3, r2, asr #0x10
	mov r2, #0
	bl FUN_ov70_0211bca4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B560: .word 0x00000CA8
	arm_func_end FUN_ov70_0211b4a4

	arm_func_start FUN_ov70_0211b564
FUN_ov70_0211b564: ; 0x0211B564
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldrb r1, [r0, #0x4b9]
	cmp r1, #0
	ldrneb r1, [r0, #0x4b8]
	addne r1, r1, #1
	andne r1, r1, #0xff
	strneb r1, [r0, #0x4b8]
	cmpne r1, #0xa
	ldmlefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xce]
	mov r5, #0
	mov r3, #0x13
	cmp r0, #0
	str r5, [sp]
	ldr r0, _0211B5CC ; =0x02099F38
	ldr r1, [r4, #0x6c]
	ldr r0, [r0]
	movne r3, #0x14
	mov r2, #7
	bl  FUN_ov16_0211401c
	add r0, r4, #0x3000
	strb r5, [r0, #0x4b8]
	strb r5, [r0, #0x4b9]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B5CC: .word 0x02099F38
	arm_func_end FUN_ov70_0211b564

	arm_func_start FUN_ov70_0211b5d0
FUN_ov70_0211b5d0: ; 0x0211B5D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, r0
	ldrb r1, [r7, #0xcc]
	cmp r1, #0xa
	bne _0211B694
	ldr r2, [r7, #0xd0]
	ldr r1, _0211B774 ; =0x0211EFF0
	sub r2, r2, #3
	ldr r1, [r1, r2, lsl #2]
	bl FUN_ov70_0211b4a4
	ldrh r1, [r7, #0xf0]
	mov r6, #0
	mov r0, r7
	sub r2, r1, #1
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r1, r1, asr #3
	add r1, r1, #1
	str r6, [r7, #0xd4]
	str r6, [r7, #0xd8]
	str r1, [r7, #0xdc]
	mov r5, r6, lsl #3
	bl FUN_ov70_0211d674
	mov r0, r7
	bl FUN_ov70_0211d63c
	add r0, r7, #0x810
	add r4, r0, #0x2000
	add r9, r7, #0x3000
	mov r10, #1
	mov r8, #0x12
	b _0211B668
_0211B64C:
	add r0, r5, r6
	mul r1, r0, r8
	ldrsh r1, [r4, r1]
	mov r0, r7
	bl FUN_ov70_0211d694
	strb r10, [r9, #0x4bb]
	add r6, r6, #1
_0211B668:
	cmp r6, #8
	blt _0211B64C
	ldr r0, _0211B778 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r1, #6
	mov r0, #1
_0211B688:
	strb r1, [r7, #0xcc]
	strb r0, [r7, #0xcd]
	b _0211B764
_0211B694:
	cmp r1, #0xb
	bne _0211B75C
	ldr r1, [r7, #0xd4]
	ldr r0, [r7, #0xd8]
	mov r5, #0x12
	add r4, r1, r0, lsl #3
	mla r2, r4, r5, r7
	add r1, r2, #0x2000
	ldrb r0, [r1, #0x817]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	addne r0, r2, #0x2800
	ldrnesh r0, [r0, #0x10]
	cmpne r0, #0
	ble _0211B6DC
	ldrb r0, [r1, #0x818]
	cmp r0, #0
	bne _0211B6EC
_0211B6DC:
	ldr r0, _0211B77C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B6EC:
	ldr r0, [r7, #4]
	bl FUN_02041db8
	ldr r0, [r7, #4]
	mov r1, #1
	mov r2, #0x71
	bl FUN_02041ef0
	mla r0, r4, r5, r7
	add r0, r0, #0x2800
	ldrsh r1, [r0, #0x10]
	mov r0, r7
	bl FUN_ov70_0211adb0
	mov r3, #0
	ldrb r0, [r7, #0xec]
	ldr r1, _0211B778 ; =0x02099EB4
	str r3, [r7, #0xe0]
	sub r2, r0, #1
	mov r0, r2, asr #3
	add r0, r2, r0, lsr #28
	mov r0, r0, asr #4
	add r0, r0, #1
	str r3, [r7, #0xe4]
	str r0, [r7, #0xe8]
	ldr r0, [r1]
	mov r1, #0x11
	bl  FUN_ov16_0210efac
	mov r1, #8
	mov r0, #2
	b _0211B688
_0211B75C:
	cmp r1, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B764:
	ldr r0, _0211B77C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B774: .word 0x0211EFF0
_0211B778: .word 0x02099EB4
_0211B77C: .word 0x0209AC44
	arm_func_end FUN_ov70_0211b5d0

	arm_func_start FUN_ov70_0211b780
FUN_ov70_0211b780: ; 0x0211B780
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrb r0, [r4, #0xcc]
	cmp r0, #0xa
	bne _0211B7B0
	ldr r0, _0211B850 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r0, #0xd
	strb r0, [r4, #0xcc]
	b _0211B840
_0211B7B0:
	cmp r0, #0xb
	bne _0211B7F4
	ldr r0, _0211B850 ; =0x02099EB4
	mov r6, #1
	ldr r0, [r0]
	mov r1, r6
	bl  FUN_ov16_0210efac
	mov r5, #0
	sub r2, r5, #1
	mov r12, #7
	mov r0, r4
	mov r1, r6
	mov r3, r2
	strb r12, [r4, #0xcc]
	strb r5, [r4, #0xcd]
	bl FUN_ov70_0211d9d8
	b _0211B840
_0211B7F4:
	cmp r0, #0xc
	bne _0211B840
	ldr r0, [r4, #4]
	bl FUN_02041db8
	mov r5, #1
	ldr r0, [r4, #4]
	mov r1, r5
	bl FUN_02041f2c
	add r0, r4, #0x3000
	ldr r1, _0211B850 ; =0x02099EB4
	strb r5, [r0, #0x4bb]
	ldr r0, [r1]
	mov r1, r5
	bl  FUN_ov16_0210efac
	mov r1, #9
	mov r0, #4
	strb r1, [r4, #0xcc]
	strb r0, [r4, #0xcd]
	strb r5, [r4, #0xce]
_0211B840:
	ldr r0, _0211B854 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B850: .word 0x02099EB4
_0211B854: .word 0x0209AC44
	arm_func_end FUN_ov70_0211b780

	arm_func_start FUN_ov70_0211b858
FUN_ov70_0211b858: ; 0x0211B858
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0xcc]
	cmp r0, #0xc
	addeq r0, r4, #0x3000
	ldreqb r0, [r0, #0x4b9]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xce]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strb r0, [r4, #0xce]
	mov r0, r4
	bl FUN_ov70_0211da38
	add r0, r4, #0x3000
	mov r5, #1
	strb r5, [r0, #0x4b8]
	strb r5, [r0, #0x4b9]
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211B8D4 ; =0x02099F38
	ldr r1, [r4, #0x6c]
	ldr r0, [r0]
	mov r2, #7
	mov r3, #0x15
	bl  FUN_ov16_0211401c
	ldr r0, _0211B8D8 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B8D4: .word 0x02099F38
_0211B8D8: .word 0x0209AC44
	arm_func_end FUN_ov70_0211b858

	arm_func_start FUN_ov70_0211b8dc
FUN_ov70_0211b8dc: ; 0x0211B8DC
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0xcc]
	cmp r1, #0xb
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0xd0]
	cmp r1, #7
	bne _0211B908
	ldr r0, _0211B92C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211B908:
	bl FUN_ov70_0211bff8
	ldr r0, _0211B930 ; =0x02099EB4
	mov r1, #0x12
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	ldr r0, _0211B92C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211B92C: .word 0x0209AC44
_0211B930: .word 0x02099EB4
	arm_func_end FUN_ov70_0211b8dc

	arm_func_start FUN_ov70_0211b934
FUN_ov70_0211b934: ; 0x0211B934
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldrb r0, [r8, #0xcc]
	mov r5, #0
	cmp r0, #0xa
	bne _0211B990
	ldr r0, [r8, #0xd0]
	mov r1, #0x18
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	sub r0, r0, #3
	mul r1, r0, r1
	add r0, r1, #0x20
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	ldr r1, [r8, #0x64]
	ldr r0, _0211BBD0 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r3, #0x48
	mov r2, #9
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B990:
	cmp r0, #0xb
	bne _0211BB68
	ldr r0, [r8, #0xd4]
	mov r4, #0x12
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r0, r1, r0, ror #29
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0xc
	add r0, r0, #0x10
	ldr r6, [r8, #0x68]
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	ldr r7, _0211BBD0 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r3, r5
	mov r2, #0x13
	bl  FUN_ov16_02113b78
	ldr r0, _0211BBD4 ; =0x02099EB4
	mov r1, #0x11
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	ldr r2, [r8, #0xd4]
	ldr r1, [r8, #0xd8]
	mov r6, r0
	add r7, r2, r1, lsl #3
	mla r2, r7, r4, r8
	add r1, r2, #0x2000
	ldrb r0, [r1, #0x817]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	addne r0, r2, #0x2800
	ldrnesh r0, [r0, #0x10]
	cmpne r0, #0
	ble _0211BA48
	ldrb r0, [r1, #0x818]
	cmp r0, #0
	bne _0211BA78
_0211BA48:
	cmp r6, #0
	beq _0211BAA0
	mov r1, #0
	mov r3, r1
	add r0, r6, #0x3a
	mov r2, #6
	bl  FUN_ov16_0210e720
	mov r0, r6
	bl  FUN_ov16_0210e69c
	mov r0, #1
	strb r0, [r6, #0x10]
	b _0211BAA0
_0211BA78:
	cmp r6, #0
	beq _0211BAA0
	mov r1, r5
	mov r3, r5
	add r0, r6, #0x3a
	mov r2, #4
	strb r5, [r6, #0x10]
	bl  FUN_ov16_0210e720
	mov r0, r6
	bl  FUN_ov16_0210e69c
_0211BAA0:
	ldr r0, _0211BBD4 ; =0x02099EB4
	mov r1, #0x12
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	ldr r1, [r8, #0xd0]
	mov r4, r0
	cmp r1, #7
	bne _0211BAF0
	cmp r4, #0
	beq _0211BB18
	mov r1, #0
	mov r3, r1
	add r0, r4, #0x3a
	mov r2, #0x18
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
	mov r0, #1
	strb r0, [r4, #0x10]
	b _0211BB18
_0211BAF0:
	cmp r4, #0
	beq _0211BB18
	mov r1, #0
	mov r3, r1
	add r0, r4, #0x3a
	mov r2, #0x16
	strb r1, [r4, #0x10]
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211BB18:
	mov r0, #0x12
	mla r1, r7, r0, r8
	add r0, r1, #0x2000
	ldrb r0, [r0, #0x817]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _0211BB50
	add r0, r1, #0x2800
	ldrsh r2, [r0, #0x10]
	ldrsh r3, [r0, #0x20]
	mov r0, r8
	mov r1, #1
	bl FUN_ov70_0211d9d8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BB50:
	mov r1, #1
	sub r2, r1, #2
	mov r0, r8
	mov r3, r2
	bl FUN_ov70_0211d9d8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BB68:
	cmp r0, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r3, [r8, #0xe0]
	mov r2, #0x78
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #29
	add r1, r1, r0, ror #29
	mov r0, r3, asr #2
	mov r1, r1, lsl #0x10
	add r0, r3, r0, lsr #29
	mov r1, r1, asr #0xc
	mov r3, r0, asr #3
	add r0, r1, #0x20
	smulbb r1, r3, r2
	mov r0, r0, lsl #0x10
	add r1, r1, #8
	mov r2, r1, lsl #0x10
	ldr r1, [r8, #0x6c]
	mov r3, r0, asr #0x10
	ldr r0, _0211BBD0 ; =0x02099F38
	str r3, [sp]
	ldr r0, [r0]
	mov r3, r2, asr #0x10
	mov r2, #8
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BBD0: .word 0x02099F38
_0211BBD4: .word 0x02099EB4
	arm_func_end FUN_ov70_0211b934

	arm_func_start FUN_ov70_0211bbd8
FUN_ov70_0211bbd8: ; 0x0211BBD8
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r3, [r0, #0xcc]
	mvn r0, #0
	cmp r3, #0xb
	bne _0211BC30
	mov r4, #0
_0211BBF0:
	mov r3, r4, lsl #4
	cmp r1, #0
	add r3, r3, #0x10
	blt _0211BC20
	cmp r1, #0x100
	bge _0211BC20
	cmp r2, r3
	blt _0211BC20
	add r3, r3, #0x10
	cmp r2, r3
	movlt r0, r4
	ldmltfd sp!, {r3, r4, r5, pc}
_0211BC20:
	add r4, r4, #1
	cmp r4, #8
	blt _0211BBF0
	ldmfd sp!, {r3, r4, r5, pc}
_0211BC30:
	cmp r3, #0xc
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r3, #0
	mov lr, #0x78
_0211BC40:
	mov r12, r3, asr #2
	add r12, r3, r12, lsr #29
	mov r4, r12, asr #3
	mul r5, r4, lr
	mov r4, r3, lsr #0x1f
	rsb r12, r4, r3, lsl #29
	add r4, r4, r12, ror #29
	add r5, r5, #8
	mov r4, r4, lsl #4
	cmp r1, r5
	add r12, r4, #0x20
	blt _0211BC94
	add r4, r5, #0x78
	cmp r1, r4
	bge _0211BC94
	cmp r2, r12
	blt _0211BC94
	add r4, r12, #0x10
	cmp r2, r4
	movlt r0, r3
	ldmltfd sp!, {r3, r4, r5, pc}
_0211BC94:
	add r3, r3, #1
	cmp r3, #0x10
	blt _0211BC40
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov70_0211bbd8

	arm_func_start FUN_ov70_0211bca4
FUN_ov70_0211bca4: ; 0x0211BCA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	mov r4, r3
	add r3, r2, r4
	mov r5, r1
	mov r3, r3, asr #1
	mov r1, #0x12
	smlabb r9, r3, r1, r5
	add r10, sp, #0
	mov r6, r0
	mov r7, r2
	mov r3, r4
	mov r8, #9
_0211BCD8:
	ldrb r0, [r9, #1]
	ldrb r1, [r9], #2
	subs r8, r8, #1
	strb r0, [r10, #1]
	strb r1, [r10], #2
	bne _0211BCD8
	ldrb r1, [r6, #0xcf]
	mov r0, #0x12
	cmp r1, #2
	bne _0211BDF8
	ldrsh r1, [sp, #0xe]
	b _0211BDEC
_0211BD08:
	mla r12, r7, r0, r5
	ldrsh r8, [r12, #0xe]
	cmp r1, r8
	ble _0211BD34
_0211BD18:
	add r7, r7, #1
	mov r7, r7, lsl #0x10
	mov r7, r7, asr #0x10
	mla r12, r7, r0, r5
	ldrsh r8, [r12, #0xe]
	cmp r1, r8
	bgt _0211BD18
_0211BD34:
	mla lr, r3, r0, r5
	ldrsh r8, [lr, #0xe]
	cmp r1, r8
	bge _0211BD60
_0211BD44:
	sub r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	mla lr, r3, r0, r5
	ldrsh r8, [lr, #0xe]
	cmp r1, r8
	blt _0211BD44
_0211BD60:
	cmp r7, r3
	bgt _0211BDEC
	add r10, sp, #0x12
	mov r9, r12
	mov r8, #9
_0211BD74:
	ldrb r0, [r9, #1]
	ldrb r1, [r9], #2
	subs r8, r8, #1
	strb r0, [r10, #1]
	strb r1, [r10], #2
	bne _0211BD74
	mov r9, lr
	mov r8, #9
_0211BD94:
	ldrb r1, [r9]
	ldrb r0, [r9, #1]
	add r9, r9, #2
	subs r8, r8, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _0211BD94
	add r9, sp, #0x12
	mov r8, #9
_0211BDB8:
	ldrb r0, [r9, #1]
	ldrb r1, [r9], #2
	subs r8, r8, #1
	strb r0, [lr, #1]
	strb r1, [lr], #2
	bne _0211BDB8
_0211BDD0:
	add r0, r7, #1
	sub r1, r3, #1
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r7, r0, asr #0x10
	mov r3, r1, asr #0x10
	b _0211BFBC
_0211BDEC:
	cmp r7, r3
	ble _0211BD08
	b _0211BFBC
_0211BDF8:
	cmp r1, #1
	bne _0211BEE0
	ldrsh lr, [sp, #0xc]
	b _0211BED4
_0211BE08:
	mla r1, r7, r0, r5
	ldrsh r8, [r1, #0xc]
	cmp lr, r8
	ble _0211BE34
_0211BE18:
	add r1, r7, #1
	mov r1, r1, lsl #0x10
	mov r7, r1, asr #0x10
	mla r1, r7, r0, r5
	ldrsh r8, [r1, #0xc]
	cmp lr, r8
	bgt _0211BE18
_0211BE34:
	mla r12, r3, r0, r5
	ldrsh r8, [r12, #0xc]
	cmp lr, r8
	bge _0211BE60
_0211BE44:
	sub r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	mla r12, r3, r0, r5
	ldrsh r8, [r12, #0xc]
	cmp lr, r8
	blt _0211BE44
_0211BE60:
	cmp r7, r3
	bgt _0211BED4
	add lr, sp, #0x12
	mov r10, r1
	mov r9, #9
_0211BE74:
	ldrb r0, [r10, #1]
	ldrb r8, [r10], #2
	subs r9, r9, #1
	strb r0, [lr, #1]
	strb r8, [lr], #2
	bne _0211BE74
	mov r10, r12
	mov r9, #9
_0211BE94:
	ldrb r8, [r10]
	ldrb r0, [r10, #1]
	add r10, r10, #2
	subs r9, r9, #1
	strb r0, [r1, #1]
	strb r8, [r1], #2
	bne _0211BE94
	add r9, sp, #0x12
	mov r8, #9
_0211BEB8:
	ldrb r0, [r9, #1]
	ldrb r1, [r9], #2
	subs r8, r8, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _0211BEB8
	b _0211BDD0
_0211BED4:
	cmp r7, r3
	ble _0211BE08
	b _0211BFBC
_0211BEE0:
	ldrsh lr, [sp, #0xa]
	b _0211BFB4
_0211BEE8:
	mla r1, r7, r0, r5
	ldrsh r8, [r1, #0xa]
	cmp lr, r8
	ble _0211BF14
_0211BEF8:
	add r1, r7, #1
	mov r1, r1, lsl #0x10
	mov r7, r1, asr #0x10
	mla r1, r7, r0, r5
	ldrsh r8, [r1, #0xa]
	cmp lr, r8
	bgt _0211BEF8
_0211BF14:
	mla r12, r3, r0, r5
	ldrsh r8, [r12, #0xa]
	cmp lr, r8
	bge _0211BF40
_0211BF24:
	sub r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	mla r12, r3, r0, r5
	ldrsh r8, [r12, #0xa]
	cmp lr, r8
	blt _0211BF24
_0211BF40:
	cmp r7, r3
	bgt _0211BFB4
	add r10, sp, #0x12
	mov lr, r1
	mov r9, #9
_0211BF54:
	ldrb r0, [lr, #1]
	ldrb r8, [lr], #2
	subs r9, r9, #1
	strb r0, [r10, #1]
	strb r8, [r10], #2
	bne _0211BF54
	mov r9, r12
	mov lr, #9
_0211BF74:
	ldrb r8, [r9]
	ldrb r0, [r9, #1]
	add r9, r9, #2
	subs lr, lr, #1
	strb r0, [r1, #1]
	strb r8, [r1], #2
	bne _0211BF74
	add r8, sp, #0x12
	mov lr, #9
_0211BF98:
	ldrb r0, [r8, #1]
	ldrb r1, [r8], #2
	subs lr, lr, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _0211BF98
	b _0211BDD0
_0211BFB4:
	cmp r7, r3
	ble _0211BEE8
_0211BFBC:
	cmp r2, r3
	bge _0211BFD0
	mov r0, r6
	mov r1, r5
	bl FUN_ov70_0211bca4
_0211BFD0:
	cmp r7, r4
	bge _0211BFEC
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, r4
	bl FUN_ov70_0211bca4
_0211BFEC:
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov70_0211bca4

	arm_func_start FUN_ov70_0211bff8
FUN_ov70_0211bff8: ; 0x0211BFF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xd4]
	ldr r1, [r6, #0xd8]
	mov r0, #0x12
	add r1, r2, r1, lsl #3
	mla r0, r1, r0, r6
	ldrb r1, [r6, #0xcf]
	add r0, r0, #0x2800
	ldrsh r5, [r0, #0x10]
	cmp r1, #2
	moveq r0, #0
	streqb r0, [r6, #0xcf]
	beq _0211C044
	cmp r1, #1
	moveq r0, #2
	streqb r0, [r6, #0xcf]
	movne r0, #1
	strneb r0, [r6, #0xcf]
_0211C044:
	ldrh r0, [r6, #0xf0]
	add r1, r6, #0x810
	mov r4, #0
	sub r0, r0, #1
	mov r3, r0, lsl #0x10
	mov r0, r6
	mov r2, r4
	add r1, r1, #0x2000
	mov r3, r3, asr #0x10
	bl FUN_ov70_0211bca4
	ldrh r2, [r6, #0xf0]
	cmp r2, #0
	ble _0211C09C
	mov r0, #0x12
_0211C07C:
	mla r1, r4, r0, r6
	add r1, r1, #0x2800
	ldrsh r1, [r1, #0x10]
	cmp r5, r1
	beq _0211C09C
	add r4, r4, #1
	cmp r4, r2
	blt _0211C07C
_0211C09C:
	cmp r4, #0
	blt _0211C0CC
	cmp r4, r2
	bge _0211C0CC
	mov r1, r4, lsr #0x1f
	mov r2, r4, asr #2
	rsb r0, r1, r4, lsl #29
	add r2, r4, r2, lsr #29
	add r1, r1, r0, ror #29
	mov r0, r2, asr #3
	str r1, [r6, #0xd4]
	str r0, [r6, #0xd8]
_0211C0CC:
	mov r0, #0x12
	mla r0, r4, r0, r6
	add r0, r0, #0x2800
	ldrsh r2, [r0, #0x10]
	ldrsh r3, [r0, #0x20]
	mov r0, r6
	mov r1, #1
	bl FUN_ov70_0211d9d8
	mov r0, r6
	bl FUN_ov70_0211ad10
	ldrb r1, [r6, #0xcc]
	mov r0, r6
	bl FUN_ov70_0211a8b0
	mov r0, r6
	bl FUN_ov70_0211b934
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov70_0211bff8

	arm_func_start FUN_ov70_0211c10c
FUN_ov70_0211c10c: ; 0x0211C10C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #0xd0]
	add r0, r2, r1
	str r0, [r4, #0xd0]
	cmp r0, #3
	movlt r0, #7
	strlt r0, [r4, #0xd0]
	ldr r0, [r4, #0xd0]
	cmp r0, #7
	movgt r0, #3
	strgt r0, [r4, #0xd0]
	ldr r1, [r4, #0xd0]
	cmp r2, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211C1B8 ; =0x0211F004
	sub r1, r1, #3
	ldr r1, [r0, r1, lsl #2]
	mov r0, r4
	bl FUN_ov70_0211b4a4
	mov r12, #0
	ldrh r3, [r4, #0xf0]
	add r2, r12, r12, lsl #3
	mov r0, #0x12
	mla r1, r2, r0, r4
	sub r2, r3, #1
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	add r0, r0, #1
	mov r5, #1
	str r12, [r4, #0xd4]
	str r12, [r4, #0xd8]
	str r0, [r4, #0xdc]
	add r0, r1, #0x2800
	ldrsh r2, [r0, #0x10]
	ldrsh r3, [r0, #0x20]
	mov r0, r4
	mov r1, r5
	bl FUN_ov70_0211d9d8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_0211C1B8: .word 0x0211F004
	arm_func_end FUN_ov70_0211c10c

	arm_func_start FUN_ov70_0211c1bc
FUN_ov70_0211c1bc: ; 0x0211C1BC
	stmfd sp!, {r3, lr}
	ldrb r2, [r0, #0xcc]
	mov r3, #0
	mov lr, r3
	cmp r2, #0xb
	mov r12, #1
	addeq lr, r0, #0xd8
	ldreq r3, [r0, #0xd8]
	ldreq r12, [r0, #0xdc]
	beq _0211C1F4
	cmp r2, #0xc
	ldreq r3, [r0, #0xe4]
	ldreq r12, [r0, #0xe8]
	addeq lr, r0, #0xe4
_0211C1F4:
	cmp lr, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r3
	adds r3, r3, r1
	submi r3, r12, #1
	cmp r3, r12
	movge r3, #0
	cmp r0, r3
	moveq r0, #0
	str r3, [lr]
	movne r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov70_0211c1bc

	arm_func_start FUN_ov70_0211c228
FUN_ov70_0211c228: ; 0x0211C228
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r9, r0
	ldr r5, [r9, #0x70]
	mov r4, #0
	ldr r0, _0211C330 ; =0x02099F38
	str r4, [sp]
	mov r6, #1
	ldr r0, [r0]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, [r9, #0xd0]
	ldrb r8, [r9, #0xcf]
	sub r7, r0, #3
	add r1, sp, #0xc
	mov r0, #8
_0211C270:
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	strb r4, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211C270
	ldr r0, [r9, #0xd0]
	ldr r1, _0211C334 ; =0x0211F12C
	cmp r0, #7
	ldr r0, _0211C338 ; =0x0211F11C
	moveq r8, #3
	ldr r2, [r1, r7, lsl #2]
	add r4, sp, #0xc
	ldr r3, [r0, r8, lsl #2]
	ldr r1, _0211C33C ; =0x0211F38C
	mov r0, r4
	bl FUN_02023c40
	ldr r1, _0211C340 ; =0x0211EFDC
	ldr r0, _0211C344 ; =0x0211EFCC
	ldr r2, [r1, r7, lsl #2]
	ldr r1, [r0, r8, lsl #2]
	mov r0, #0xc
	add r1, r2, r1
	mul r0, r1, r0
	rsb r0, r0, #0x100
	mov r0, r0, asr #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r7, #0xfa
	mov r0, r9
	mov r1, r4
	mov r2, r5
	mov r3, r6
	str r7, [sp, #8]
	bl FUN_ov70_0211d7dc
	str r0, [r9, #0x78]
	mov r1, #1
	str r1, [sp]
	ldr r0, _0211C330 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C330: .word 0x02099F38
_0211C334: .word 0x0211F12C
_0211C338: .word 0x0211F11C
_0211C33C: .word 0x0211F38C
_0211C340: .word 0x0211EFDC
_0211C344: .word 0x0211EFCC
	arm_func_end FUN_ov70_0211c228

	arm_func_start FUN_ov70_0211c348
FUN_ov70_0211c348: ; 0x0211C348
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r2, #0
	mvn r4, #0
	str r0, [sp, #0x14]
	mov r0, r2
	str r2, [sp, #0x24]
	mov r5, r4
	str r4, [sp, #0x28]
	mov r6, r4
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	mov r8, r2
	cmp r1, #0xb
	mov r7, #1
	bne _0211C3CC
	ldr r0, [sp, #0x14]
	mov r5, #0x14
	ldr r4, [r0, #0x68]
	ldr r0, [r0, #0x4c]
	mov r6, #0xa
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	mov r8, #0x90
	ldr r0, [r0, #0xd8]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r7, [r0, #0xdc]
	mov r0, #0x60
	str r0, [sp, #0x20]
	mov r0, #0x80
	str r0, [sp, #0x1c]
	b _0211C414
_0211C3CC:
	cmp r1, #0xc
	bne _0211C414
	ldr r0, [sp, #0x14]
	mov r6, r2
	ldr r4, [r0, #0x6c]
	ldr r0, [r0, #0x4c]
	mov r5, #0xa
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	mov r8, #0x10
	ldr r0, [r0, #0xe4]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r7, [r0, #0xe8]
	mov r0, #0x68
	str r0, [sp, #0x20]
	mov r0, #0x90
	str r0, [sp, #0x1c]
_0211C414:
	cmp r4, #0
	addlt sp, sp, #0x2c
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r10, #0
	mov r9, r10
	ldr r11, _0211C610 ; =0x02099F38
	b _0211C44C
_0211C430:
	str r9, [sp]
	ldr r0, [r11]
	mov r1, r4
	add r2, r5, r10
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add r10, r10, #1
_0211C44C:
	cmp r10, #4
	blt _0211C430
	ldr r0, [sp, #0x24]
	ldr r1, _0211C614 ; =0x66666667
	add r2, r0, #1
	smull r3, r11, r1, r2
	ldr r3, [sp, #0x20]
	mov r0, r2, lsr #0x1f
	str r3, [sp]
	smull r9, r3, r1, r2
	str r3, [sp, #0x18]
	add r3, r0, r3, asr #2
	add r11, r0, r11, asr #2
	mov r0, #0xa
	str r3, [sp, #0x18]
	smull r3, r9, r0, r11
	sub r11, r2, r3
	smull r2, r9, r1, r7
	smull r2, r10, r1, r7
	mov r1, r7, lsr #0x1f
	add r10, r1, r10, asr #2
	add r9, r1, r9, asr #2
	smull r1, r2, r0, r10
	sub r10, r7, r1
	str r8, [sp, #4]
	mov r0, #0xfa
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x28]
	add r0, r6, r0
	str r0, [sp, #0xc]
	mov r7, #0
	ldr r0, [sp, #0x14]
	mov r1, r4
	mov r2, r5
	str r7, [sp, #0x10]
	bl FUN_ov70_0211a08c
	ldr r0, [sp, #0x20]
	add r1, r6, r11
	add r0, r0, #8
	stmia sp, {r0, r8}
	mov r0, #0xfa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x28]
	mov r1, r4
	add r2, r5, #1
	str r7, [sp, #0x10]
	bl FUN_ov70_0211a08c
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x28]
	stmia sp, {r0, r8}
	mov r0, #0xfa
	str r0, [sp, #8]
	add r0, r6, r9
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, r4
	add r2, r5, #2
	str r7, [sp, #0x10]
	bl FUN_ov70_0211a08c
	ldr r0, [sp, #0x1c]
	add r1, r6, r10
	add r0, r0, #8
	stmia sp, {r0, r8}
	mov r0, #0xfa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x28]
	mov r1, r4
	add r2, r5, #3
	str r7, [sp, #0x10]
	bl FUN_ov70_0211a08c
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0211C5A4
	mov r1, #1
	ldr r0, _0211C610 ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211C5A4:
	cmp r9, #0
	ble _0211C5CC
	mov r1, #1
	ldr r0, _0211C610 ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r4
	add r2, r5, #2
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211C5CC:
	mov r8, #1
	ldr r6, _0211C610 ; =0x02099F38
	str r8, [sp]
	mov r7, #2
	ldr r0, [r6]
	mov r1, r4
	mov r3, r7
	add r2, r5, #1
	bl  FUN_ov16_02113ec0
	str r8, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r3, r7
	add r2, r5, #3
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C610: .word 0x02099F38
_0211C614: .word 0x66666667
	arm_func_end FUN_ov70_0211c348

	arm_func_start FUN_ov70_0211c618
FUN_ov70_0211c618: ; 0x0211C618
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	cmp r1, #0
	mov r9, r0
	mov r8, r2
	mov r7, r3
	addlt sp, sp, #0x14
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #28
	add r6, r2, r0, ror #28
	ldr r5, [r9, #0x6c]
	mov r4, #0
	mov r10, #2
	ldr r0, _0211C750 ; =0x02099F38
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r5
	mov r3, r10
	add r2, r6, #0x23
	bl  FUN_ov16_02113ec0
	cmp r8, #4
	sub r0, r10, #3
	addls pc, pc, r8, lsl #2
	b _0211C6AC
_0211C67C: ; jump table
	b _0211C6AC ; case 0
	b _0211C6A8 ; case 1
	b _0211C6A0 ; case 2
	b _0211C698 ; case 3
	b _0211C690 ; case 4
_0211C690:
	mov r0, r4
	b _0211C6AC
_0211C698:
	mov r0, #1
	b _0211C6AC
_0211C6A0:
	mov r0, r10
	b _0211C6AC
_0211C6A8:
	mov r0, #3
_0211C6AC:
	cmp r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r6, asr #2
	add r1, r6, r1, lsr #29
	mov r2, r1, asr #3
	mov r1, #0x78
	mul r3, r2, r1
	mov r2, r6, lsr #0x1f
	rsb r1, r2, r6, lsl #29
	add r1, r2, r1, ror #29
	add r2, r3, #8
	mov r1, r1, lsl #4
	cmp r7, #0
	addeq r2, r2, #5
	mov r3, #0
	str r2, [sp]
	add r1, r1, #0x20
	moveq r3, #4
	str r1, [sp, #4]
	mov r1, #0xc8
	str r1, [sp, #8]
	add r0, r3, r0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r3, [r9, #0x48]
	mov r0, r9
	mov r1, r5
	add r2, r6, #0x23
	bl FUN_ov70_0211a08c
	mov r1, #1
	str r1, [sp]
	ldr r0, _0211C750 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	add r2, r6, #0x23
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C750: .word 0x02099F38
	arm_func_end FUN_ov70_0211c618

	arm_func_start FUN_ov70_0211c754
FUN_ov70_0211c754: ; 0x0211C754
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	cmp r1, #0
	mov r10, r0
	mov r9, r2
	addlt sp, sp, #0x14
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r7, [r10, #0x6c]
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #28
	mov r6, #0
	add r8, r2, r0, ror #28
	mov r5, #2
	ldr r4, _0211C830 ; =0x02099F38
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r3, r5
	add r2, r8, #0x34
	bl  FUN_ov16_02113ec0
	cmp r9, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8, asr #2
	add r0, r8, r0, lsr #29
	mov r1, r0, asr #3
	mov r0, #0x78
	mul r2, r1, r0
	mov r1, r8, lsr #0x1f
	rsb r0, r1, r8, lsl #29
	add r0, r1, r0, ror #29
	add r1, r2, #8
	mov r0, r0, lsl #4
	str r1, [sp]
	add r0, r0, #0x28
	str r0, [sp, #4]
	mov r0, #0xfa
	str r0, [sp, #8]
	add r0, r9, #0xb
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r3, [r10, #0x48]
	mov r0, r10
	mov r1, r7
	add r2, r8, #0x34
	bl FUN_ov70_0211a08c
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r3, r5
	add r2, r8, #0x34
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C830: .word 0x02099F38
	arm_func_end FUN_ov70_0211c754

	arm_func_start FUN_ov70_0211c834
FUN_ov70_0211c834: ; 0x0211C834
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r8, r2
	cmp r1, #0
	cmpge r8, #0
	mov r10, r0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, [r10, #0x6c]
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #28
	mov r5, #0
	add r7, r2, r0, ror #28
	mov r11, #2
	ldr r4, _0211C918 ; =0x02099F38
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r11
	add r2, r7, #0x12
	bl  FUN_ov16_02113ec0
	cmp r8, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7, asr #2
	add r0, r7, r0, lsr #29
	mov r1, r0, asr #3
	mov r0, #0x78
	mul r3, r1, r0
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #29
	add r0, r1, r0, ror #29
	mov r2, r0, lsl #4
	mov r1, r8
	mov r0, r10
	add r8, r3, #0x14
	add r9, r2, #0x18
	bl FUN_ov70_0211d7ac
	mov r3, r0
	stmia sp, {r8, r9}
	mov r0, #0xc8
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r5, #1
	mov r0, r10
	mov r1, r6
	str r5, [sp, #0x10]
	add r2, r7, #0x12
	bl FUN_ov70_0211a08c
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r11
	add r2, r7, #0x12
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C918: .word 0x02099F38
	arm_func_end FUN_ov70_0211c834

	arm_func_start FUN_ov70_0211c91c
FUN_ov70_0211c91c: ; 0x0211C91C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	cmp r1, #0
	mov r9, r0
	mov r8, r2
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #28
	ldr r6, [r9, #0x74]
	mov r1, #0
	str r1, [sp]
	add r7, r2, r0, ror #28
	ldr r4, _0211C9F4 ; =0x02099F38
	mov r5, #2
	ldr r0, [r4]
	mov r1, r6
	mov r3, r5
	add r2, r7, #1
	bl  FUN_ov16_02113ec0
	cmp r8, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7, asr #2
	add r0, r7, r0, lsr #29
	mov r1, r0, asr #3
	mov r0, #0x78
	mul r2, r1, r0
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #29
	add r0, r1, r0, ror #29
	add r1, r2, #0x31
	mov r0, r0, lsl #4
	str r1, [sp]
	add r3, r0, #0x23
	mov r0, r9
	mov r1, r8
	mov r2, r6
	str r3, [sp, #4]
	mov r8, #0xfa
	add r3, r7, #1
	str r8, [sp, #8]
	bl FUN_ov70_0211d7dc
	add r1, r9, r7, lsl #2
	str r0, [r1, #0x7c]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r5
	add r2, r7, #1
	bl  FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C9F4: .word 0x02099F38
	arm_func_end FUN_ov70_0211c91c

	arm_func_start FUN_ov70_0211c9f8
FUN_ov70_0211c9f8: ; 0x0211C9F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	cmp r1, #0
	mov r9, r0
	mov r8, r2
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #28
	add r7, r2, r0, ror #28
	ldr r6, [r9, #0x6c]
	mov r5, #0
	mov r4, #2
	ldr r0, _0211CB08 ; =0x02099F38
	str r5, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r3, r4
	add r2, r7, #0x45
	bl  FUN_ov16_02113ec0
	sub r0, r4, #3
	tst r8, #0x400
	movne r0, r5
	bne _0211CA78
	tst r8, #0x80
	movne r0, #1
	bne _0211CA78
	tst r8, #0x20
	movne r0, r4
	bne _0211CA78
	tst r8, #0x1000
	movne r0, #3
_0211CA78:
	cmp r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r1, r7, asr #2
	add r1, r7, r1, lsr #29
	mov r2, r1, asr #3
	mov r1, #0x78
	mul r3, r2, r1
	mov r2, r7, lsr #0x1f
	rsb r1, r2, r7, lsl #29
	add r1, r2, r1, ror #29
	add r2, r3, #0x70
	mov r1, r1, lsl #4
	str r2, [sp]
	add r1, r1, #0x20
	str r1, [sp, #4]
	mov r1, #0xc8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r3, [r9, #0x5c]
	mov r0, r9
	mov r1, r6
	add r2, r7, #0x45
	bl FUN_ov70_0211a08c
	mov r1, #1
	ldr r0, _0211CB08 ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r6
	add r2, r7, #0x45
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211CB08: .word 0x02099F38
	arm_func_end FUN_ov70_0211c9f8

	arm_func_start FUN_ov70_0211cb0c
FUN_ov70_0211cb0c: ; 0x0211CB0C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	cmp r1, #0
	mov r4, r0
	mov r10, r2
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #28
	add r7, r2, r0, ror #28
	ldr r6, [r4, #0x6c]
	mov r11, #0
	mov r5, r7, lsl #1
	ldr r0, _0211CC84 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r3, #2
	add r2, r5, #0x56
	bl  FUN_ov16_02113ec0
	ldr r0, _0211CC84 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r0]
	mov r1, r6
	add r2, r5, #0x57
	mov r3, #2
	bl  FUN_ov16_02113ec0
	cmp r10, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7, asr #2
	add r0, r7, r0, lsr #29
	mov r1, r0, asr #3
	mov r0, #0x78
	mul r3, r1, r0
	mov r2, r7, lsr #0x1f
	rsb r1, r2, r7, lsl #29
	add r1, r2, r1, ror #29
	ldr r0, _0211CC88 ; =0x66666667
	add r9, r3, #0x70
	smull r2, r8, r0, r10
	mov r3, r10, lsr #0x1f
	smull r2, r7, r0, r10
	add r7, r3, r7, asr #2
	add r8, r3, r8, asr #2
	mov r3, #0xa
	smull r0, r2, r3, r8
	sub r8, r10, r0
	mov r1, r1, lsl #4
	add r10, r1, #0x28
	str r9, [sp]
	str r10, [sp, #4]
	mov r0, #0xfa
	str r0, [sp, #8]
	add r0, r7, #0x20
	str r0, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [r4, #0x48]
	mov r0, r4
	mov r1, r6
	add r2, r5, #0x56
	bl FUN_ov70_0211a08c
	add r0, r9, #8
	stmia sp, {r0, r10}
	mov r0, #0xfa
	str r0, [sp, #8]
	add r0, r8, #0x20
	str r0, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [r4, #0x48]
	mov r0, r4
	mov r1, r6
	add r2, r5, #0x57
	bl FUN_ov70_0211a08c
	cmp r7, #0
	ble _0211CC5C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211CC84 ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	mov r3, #2
	add r2, r5, #0x56
	bl  FUN_ov16_02113ec0
_0211CC5C:
	mov r1, #1
	ldr r0, _0211CC84 ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r6
	add r2, r5, #0x57
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CC84: .word 0x02099F38
_0211CC88: .word 0x66666667
	arm_func_end FUN_ov70_0211cb0c

	arm_func_start FUN_ov70_0211cc8c
FUN_ov70_0211cc8c: ; 0x0211CC8C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	movs r8, r1
	mov r9, r0
	mov r7, r2
	mov r6, r3
	addmi sp, sp, #0x14
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	ldr r0, _0211CD8C ; =0x02099F38
	str r5, [sp]
	mov r4, #2
	ldr r0, [r0]
	mov r3, r4
	bl  FUN_ov16_02113ec0
	cmp r6, #0
	ldrge r0, [sp, #0x30]
	cmpge r0, #0
	ldrge r0, [sp, #0x34]
	cmpge r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211CD2C
_0211CCFC: ; jump table
	b _0211CD2C ; case 0
	b _0211CD10 ; case 1
	b _0211CD14 ; case 2
	b _0211CD1C ; case 3
	b _0211CD24 ; case 4
_0211CD10:
	b _0211CD30
_0211CD14:
	mov r5, #1
	b _0211CD30
_0211CD1C:
	mov r5, r4
	b _0211CD30
_0211CD24:
	mov r5, #3
	b _0211CD30
_0211CD2C:
	mov r5, #4
_0211CD30:
	ldr r0, [sp, #0x30]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r3, [r9, #0x50]
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov70_0211a08c
	mov r1, #1
	ldr r0, _0211CD8C ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r8
	mov r2, r7
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211CD8C: .word 0x02099F38
	arm_func_end FUN_ov70_0211cc8c

	arm_func_start FUN_ov70_0211cd90
FUN_ov70_0211cd90: ; 0x0211CD90
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	movs r8, r1
	mov r9, r0
	mov r7, r2
	mov r6, r3
	addmi sp, sp, #0x14
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	ldr r0, _0211CEAC ; =0x02099F38
	str r5, [sp]
	mov r4, #2
	ldr r0, [r0]
	mov r3, r4
	bl  FUN_ov16_02113ec0
	cmp r6, #0
	ldrge r0, [sp, #0x30]
	cmpge r0, #0
	ldrge r0, [sp, #0x34]
	cmpge r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211CE4C
_0211CE00: ; jump table
	b _0211CE4C ; case 0
	b _0211CE4C ; case 1
	b _0211CE4C ; case 2
	b _0211CE4C ; case 3
	b _0211CE4C ; case 4
	b _0211CE28 ; case 5
	b _0211CE2C ; case 6
	b _0211CE34 ; case 7
	b _0211CE3C ; case 8
	b _0211CE44 ; case 9
_0211CE28:
	b _0211CE50
_0211CE2C:
	mov r5, #1
	b _0211CE50
_0211CE34:
	mov r5, r4
	b _0211CE50
_0211CE3C:
	mov r5, #3
	b _0211CE50
_0211CE44:
	mov r5, #5
	b _0211CE50
_0211CE4C:
	mov r5, #4
_0211CE50:
	ldr r0, [sp, #0x30]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r3, [r9, #0x54]
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov70_0211a08c
	mov r1, #1
	ldr r0, _0211CEAC ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r8
	mov r2, r7
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211CEAC: .word 0x02099F38
	arm_func_end FUN_ov70_0211cd90

	arm_func_start FUN_ov70_0211ceb0
FUN_ov70_0211ceb0: ; 0x0211CEB0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	addmi sp, sp, #0x14
	ldmmifd sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, pc}
	mov r3, #0
	str r3, [sp]
	ldr r0, _0211CF80 ; =0x02099F38
	mov r3, #2
	ldr r0, [r0]
	bl  FUN_ov16_02113ec0
	cmp r4, #0
	ldrge r0, [sp, #0x28]
	cmpge r0, #0
	ldrge r1, [sp, #0x2c]
	cmpge r1, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov70_0211d6dc
	ldr r1, [sp, #0x2c]
	mov r3, r0
	cmp r1, #0x3e8
	ldrgt r3, [r7, #0x60]
	ldr r0, [sp, #0x28]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	mov r4, #1
	mov r0, r7
	mov r1, r6
	mov r2, r5
	str r4, [sp, #0x10]
	bl FUN_ov70_0211a08c
	ldr r0, _0211CF80 ; =0x02099F38
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211CF80: .word 0x02099F38
	arm_func_end FUN_ov70_0211ceb0

	arm_func_start FUN_ov70_0211cf84
FUN_ov70_0211cf84: ; 0x0211CF84
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	movs r10, r1
	mov r11, r0
	mov r9, r2
	mov r8, r3
	addmi sp, sp, #0x14
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	mov r6, r7
	mov r5, #2
	ldr r4, _0211D134 ; =0x02099F38
	b _0211CFE0
_0211CFC4:
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r3, r5
	add r2, r9, r7
	bl  FUN_ov16_02113ec0
	add r7, r7, #1
_0211CFE0:
	cmp r7, #3
	blt _0211CFC4
	cmp r8, #0
	ldrge r5, [sp, #0x38]
	cmpge r5, #0
	ldrge r0, [sp, #0x3c]
	cmpge r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [sp]
	add r0, r5, #8
	str r0, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	mov r0, #0x2c
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r3, [r11, #0x4c]
	mov r0, r11
	mov r1, r10
	mov r2, r9
	bl FUN_ov70_0211a08c
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211D134 ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	mov r2, r9
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, [sp, #0x3c]
	ldr r3, _0211D138 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r1, r6, r3, r0
	smull r1, r7, r3, r0
	add r4, r8, #0x10
	add r7, r2, r7, asr #2
	mov r3, #0xa
	add r6, r2, r6, asr #2
	smull r1, r2, r3, r7
	sub r7, r0, r1
	stmia sp, {r4, r5}
	mov r8, #0xfa
	str r8, [sp, #8]
	add r0, r6, #0x20
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r3, [r11, #0x4c]
	mov r0, r11
	mov r1, r10
	add r2, r9, #1
	bl FUN_ov70_0211a08c
	add r0, r4, #8
	stmia sp, {r0, r5, r8}
	add r0, r7, #0x20
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r3, [r11, #0x4c]
	mov r0, r11
	mov r1, r10
	add r2, r9, #2
	bl FUN_ov70_0211a08c
	cmp r6, #0
	ble _0211D10C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211D134 ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	mov r3, #2
	add r2, r9, #1
	bl  FUN_ov16_02113ec0
_0211D10C:
	mov r1, #1
	ldr r0, _0211D134 ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r10
	add r2, r9, #2
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D134: .word 0x02099F38
_0211D138: .word 0x66666667
	arm_func_end FUN_ov70_0211cf84

	arm_func_start FUN_ov70_0211d13c
FUN_ov70_0211d13c: ; 0x0211D13C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	movs r8, r1
	mov r9, r0
	mov r7, r2
	mov r6, r3
	addmi sp, sp, #0x14
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r7, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r5, #0
	ldr r10, _0211D1F4 ; =0x02099F38
	str r5, [sp]
	mov r4, #2
	ldr r0, [r10]
	mov r3, r4
	bl  FUN_ov16_02113ec0
	cmp r6, #0
	ldrge r0, [sp, #0x38]
	cmpge r0, #0
	ldrge r1, [sp, #0x3c]
	cmpge r1, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	add r0, r1, #0x29
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r3, [r9, #0x4c]
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov70_0211a08c
	mov r0, #1
	str r0, [sp]
	ldr r0, [r10]
	mov r1, r8
	mov r2, r7
	mov r3, r4
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D1F4: .word 0x02099F38
	arm_func_end FUN_ov70_0211d13c

	arm_func_start FUN_ov70_0211d1f8
FUN_ov70_0211d1f8: ; 0x0211D1F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r7, [sp, #0x44]
	movs r10, r1
	str r0, [sp, #0x14]
	mov r9, r2
	mov r8, r3
	addmi sp, sp, #0x18
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r5, r6
	mov r11, #2
	ldr r4, _0211D42C ; =0x02099F38
	b _0211D258
_0211D23C:
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r3, r11
	add r2, r9, r6
	bl  FUN_ov16_02113ec0
	add r6, r6, #1
_0211D258:
	cmp r6, #4
	blt _0211D23C
	cmp r8, #0
	ldrge r4, [sp, #0x40]
	cmpge r4, #0
	cmpge r7, #0
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _0211D430 ; =0x66666667
	str r8, [sp]
	smull r2, r6, r1, r7
	ldr r3, _0211D434 ; =0x51EB851F
	mov r0, r7, lsr #0x1f
	smull r2, r5, r3, r7
	add r5, r0, r5, asr #5
	mov r11, #0xa
	add r6, r0, r6, asr #2
	smull r3, r2, r11, r6
	smull r2, r6, r1, r7
	add r6, r0, r6, asr #2
	mul r0, r5, r11
	sub r11, r6, r0
	str r4, [sp, #4]
	mov r0, #0xfa
	str r0, [sp, #8]
	add r0, r5, #0x14
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	sub r6, r7, r3
	mov r3, r0
	ldr r3, [r3, #0x4c]
	mov r1, r10
	mov r2, r9
	bl FUN_ov70_0211a08c
	add r0, r8, #8
	stmia sp, {r0, r4}
	mov r0, #0xfa
	str r0, [sp, #8]
	add r0, r11, #0x14
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r10
	mov r3, r0
	ldr r3, [r3, #0x4c]
	add r2, r9, #1
	bl FUN_ov70_0211a08c
	add r0, r8, #0x10
	stmia sp, {r0, r4}
	mov r0, #0xfa
	str r0, [sp, #8]
	add r1, r6, #0x14
	str r1, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r10
	mov r3, r0
	ldr r3, [r3, #0x4c]
	add r2, r9, #2
	bl FUN_ov70_0211a08c
	cmp r5, #0
	ble _0211D380
	mov r1, #1
	ldr r0, _0211D42C ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r10
	mov r2, r9
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211D380:
	cmp r11, #0
	bgt _0211D394
	bne _0211D3B4
	cmp r7, #0x64
	blt _0211D3B4
_0211D394:
	mov r1, #1
	ldr r0, _0211D42C ; =0x02099F38
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r10
	add r2, r9, #1
	mov r3, #2
	bl  FUN_ov16_02113ec0
_0211D3B4:
	mov r7, #1
	ldr r5, _0211D42C ; =0x02099F38
	str r7, [sp]
	mov r6, #2
	ldr r0, [r5]
	mov r1, r10
	mov r3, r6
	add r2, r9, #2
	bl  FUN_ov16_02113ec0
	add r0, r8, #0x18
	stmia sp, {r0, r4}
	mov r0, #0xc8
	str r0, [sp, #8]
	mov r0, #0x1f
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r10
	ldr r3, [r0, #0x4c]
	add r2, r9, #3
	bl FUN_ov70_0211a08c
	str r7, [sp]
	ldr r0, [r5]
	mov r1, r10
	mov r3, r6
	add r2, r9, #3
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D42C: .word 0x02099F38
_0211D430: .word 0x66666667
_0211D434: .word 0x51EB851F
	arm_func_end FUN_ov70_0211d1f8

	arm_func_start FUN_ov70_0211d438
FUN_ov70_0211d438: ; 0x0211D438
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	movs r9, r1
	mov r10, r0
	mov r8, r2
	mov r7, r3
	addmi sp, sp, #0x14
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r5, r6
	mov r11, #2
	ldr r4, _0211D634 ; =0x02099F38
	b _0211D494
_0211D478:
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r11
	add r2, r8, r6
	bl  FUN_ov16_02113ec0
	add r6, r6, #1
_0211D494:
	cmp r6, #4
	blt _0211D478
	cmp r7, #0
	ldrge r5, [sp, #0x38]
	cmpge r5, #0
	ldrge r0, [sp, #0x3c]
	cmpge r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r7, [sp]
	str r5, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	mov r0, #0x2d
	str r0, [sp, #0xc]
	mov r11, #0
	str r11, [sp, #0x10]
	ldr r3, [r10, #0x4c]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov70_0211a08c
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211D634 ; =0x02099F38
	mov r1, r9
	ldr r0, [r0]
	mov r2, r8
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, [sp, #0x3c]
	ldr r3, _0211D638 ; =0x66666667
	add r4, r7, #0x20
	smull r1, r6, r3, r0
	smull r1, r7, r3, r0
	mov r2, r0, lsr #0x1f
	add r7, r2, r7, asr #2
	mov r3, #0xa
	add r6, r2, r6, asr #2
	smull r1, r2, r3, r7
	sub r7, r0, r1
	stmia sp, {r4, r5}
	mov r0, #0xfa
	str r0, [sp, #8]
	add r0, r6, #0x14
	str r0, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [r10, #0x4c]
	mov r0, r10
	mov r1, r9
	add r2, r8, #1
	bl FUN_ov70_0211a08c
	add r0, r4, #8
	stmia sp, {r0, r5}
	mov r0, #0xfa
	str r0, [sp, #8]
	add r1, r7, #0x14
	str r1, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [r10, #0x4c]
	mov r0, r10
	mov r1, r9
	add r2, r8, #2
	bl FUN_ov70_0211a08c
	cmp r6, #0
	ble _0211D5BC
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211D634 ; =0x02099F38
	mov r1, r9
	ldr r0, [r0]
	mov r3, #2
	add r2, r8, #1
	bl  FUN_ov16_02113ec0
_0211D5BC:
	mov r7, #1
	ldr r6, _0211D634 ; =0x02099F38
	str r7, [sp]
	mov r11, #2
	ldr r0, [r6]
	mov r1, r9
	mov r3, r11
	add r2, r8, #2
	bl  FUN_ov16_02113ec0
	add r0, r4, #0x10
	stmia sp, {r0, r5}
	mov r0, #0xc8
	str r0, [sp, #8]
	mov r0, #0x1e
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r3, [r10, #0x4c]
	mov r0, r10
	mov r1, r9
	add r2, r8, #3
	bl FUN_ov70_0211a08c
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r3, r11
	add r2, r8, #3
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D634: .word 0x02099F38
_0211D638: .word 0x66666667
	arm_func_end FUN_ov70_0211d438

	arm_func_start FUN_ov70_0211d63c
FUN_ov70_0211d63c: ; 0x0211D63C
	mov r1, #0
	ldr r12, _0211D670 ; = FUN_ov16_020f5278
	strb r1, [r0, #0xbc]
	strb r1, [r0, #0xbd]
	strb r1, [r0, #0xbe]
	strb r1, [r0, #0xbf]
	strb r1, [r0, #0xc0]
	strb r1, [r0, #0xc1]
	strb r1, [r0, #0xc2]
	strb r1, [r0, #0xc3]
	add r0, r0, #0xbc
	mov r1, #8
	bx r12
_0211D670: .word  FUN_ov16_020f5278
	arm_func_end FUN_ov70_0211d63c

	arm_func_start FUN_ov70_0211d674
FUN_ov70_0211d674: ; 0x0211D674
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xbc
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r4, #0xbc
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov70_0211d674

	arm_func_start FUN_ov70_0211d694
FUN_ov70_0211d694: ; 0x0211D694
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r3, #1
	str r3, [sp]
	mov r2, #0xe
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r12, r0
	str r3, [sp, #0xc]
	mov r2, r1
	ldr r0, [r12, #0x14]
	ldr r1, _0211D6D8 ; =0x0211F394
	add r3, r12, #0xbc
	bl  FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211D6D8: .word 0x0211F394
	arm_func_end FUN_ov70_0211d694

	arm_func_start FUN_ov70_0211d6dc
FUN_ov70_0211d6dc: ; 0x0211D6DC
	stmfd sp!, {r3, lr}
	mov r2, r0
	cmp r1, #0
	movle r0, #0
	ldmlefd sp!, {r3, pc}
	mov r0, r1
	add r1, r2, #0xbc
	bl  FUN_ov16_020f5738
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov70_0211d6dc

	arm_func_start FUN_ov70_0211d700
FUN_ov70_0211d700: ; 0x0211D700
	mov r1, #0
	ldr r12, _0211D734 ; = FUN_ov16_020f5278
	strb r1, [r0, #0xc4]
	strb r1, [r0, #0xc5]
	strb r1, [r0, #0xc6]
	strb r1, [r0, #0xc7]
	strb r1, [r0, #0xc8]
	strb r1, [r0, #0xc9]
	strb r1, [r0, #0xca]
	strb r1, [r0, #0xcb]
	add r0, r0, #0xc4
	mov r1, #0x10
	bx r12
_0211D734: .word  FUN_ov16_020f5278
	arm_func_end FUN_ov70_0211d700

	arm_func_start FUN_ov70_0211d738
FUN_ov70_0211d738: ; 0x0211D738
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc4
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r4, #0xc4
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov70_0211d738

	arm_func_start FUN_ov70_0211d758
FUN_ov70_0211d758: ; 0x0211D758
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r3, r0
	mov r0, r1, lsl #0x10
	rsb r1, r2, #0x1000
	and r0, r1, r0, lsr #16
	str r2, [sp, #0xc]
	mov r2, r0, lsl #0x10
	ldr r0, [r3, #8]
	ldr r1, _0211D7A8 ; =0x0211F3B4
	mov r2, r2, lsr #0x10
	add r3, r3, #0xc4
	bl  FUN_ov16_020f55b4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211D7A8: .word 0x0211F3B4
	arm_func_end FUN_ov70_0211d758

	arm_func_start FUN_ov70_0211d7ac
FUN_ov70_0211d7ac: ; 0x0211D7AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmn r1, #1
	movle r0, #0
	ldmlefd sp!, {r4, pc}
	mov r0, r1
	mov r1, #0
	bl  FUN_ov16_020efa9c
	bl FUN_0206cc00
	add r1, r4, #0xc4
	bl  FUN_ov16_020f5738
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov70_0211d7ac

	arm_func_start FUN_ov70_0211d7dc
FUN_ov70_0211d7dc: ; 0x0211D7DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r8, #0
	str r1, [sp, #0x24]
	add r4, sp, #0x34
	str r0, [sp, #0x20]
	mov r7, #4
	mov r10, r2
	mov r0, r4
	mov r1, r8
	mov r2, r7
	mov r11, r3
	str r8, [sp, #0x2c]
	mov r6, #0x80
	mov r5, #0x10
	bl MI_CpuFill8
	mov r2, r7
	add r7, sp, #0x30
	mov r1, r8
	mov r0, r7
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_02054070
	ldr r4, _0211D988 ; =0x02099F38
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r0, [r4]
	bl FUN_02059630
	mov r7, r0
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
	ldr r0, [r4]
	mov r1, r7
	add r2, sp, #0x28
	add r3, sp, #0x2c
	str r8, [sp, #0x28]
	bl FUN_0205935c
	ldr r0, [r4]
	mov r1, r7
	ldr r9, [sp, #0x28]
	bl  FUN_ov16_02111438
	mov r6, r0
	ldr r0, [r4]
	mov r1, r7
	bl  FUN_ov16_02111458
	mov r5, r0
	ldr r0, _0211D98C ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02043310
	stmia sp, {r5, r8}
	str r8, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r8, [sp, #0x14]
	str r8, [sp, #0x18]
	ldr r0, _0211D98C ; =0x02099F50
	str r8, [sp, #0x1c]
	ldr r0, [r0]
	ldr r1, [sp, #0x24]
	mov r2, r9
	mov r3, r6
	bl FUN_020425fc
	ldr r0, _0211D98C ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r3, [sp, #0x2c]
	ldr r0, [r4]
	mov r2, r9
	str r8, [sp]
	str r8, [sp, #4]
	mov r1, r7
	str r8, [sp, #8]
	bl FUN_02059288
	ldr r2, [sp, #0x60]
	ldr r1, [sp, #0x64]
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x68]
	ldr r0, [sp, #0x20]
	str r2, [sp, #8]
	str r8, [sp, #0xc]
	mov r1, r10
	mov r2, r11
	mov r3, r7
	str r8, [sp, #0x10]
	bl FUN_ov70_0211a08c
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r6, lsl #0x10
	ldr r0, [r4]
	mov r1, r10
	mov r2, r11
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113d08
	mov r0, r7
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D988: .word 0x02099F38
_0211D98C: .word 0x02099F50
	arm_func_end FUN_ov70_0211d7dc

	arm_func_start FUN_ov70_0211d990
FUN_ov70_0211d990: ; 0x0211D990
	cmp r1, #0x1e0
	movgt r0, #0
	bxgt lr
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #29
	ldr r3, _0211D9D4 ; =0x020A1612
	add r2, r2, r0, ror #29
	mov r0, #1
	mov r2, r0, lsl r2
	ldrb r1, [r3, r1, asr #3]
	and r2, r2, #0xff
	tst r2, r1
	moveq r0, #0
	bx lr
_0211D9D4: .word 0x020A1612
	arm_func_end FUN_ov70_0211d990

	arm_func_start FUN_ov70_0211d9d8
FUN_ov70_0211d9d8: ; 0x0211D9D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x3400
	ldrsh r0, [r0, #0xbe]
	add lr, r6, #0x3400
	mov r4, #0
	cmp r2, #0
	movge r4, #1
	cmp r1, r0
	mov r5, #0
	add r12, r6, #0x3000
	moveq r5, #1
	strh r1, [lr, #0xbe]
	add r1, r6, #0xbc
	ldr r0, [r6, #4]
	strb r4, [r12, #0x4bc]
	strb r5, [r12, #0x4bd]
	strh r3, [lr, #0xc2]
	strh r2, [lr, #0xc0]
	ldr r2, [r0]
	add r1, r1, #0x3400
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov70_0211d9d8

	arm_func_start FUN_ov70_0211da38
FUN_ov70_0211da38: ; 0x0211DA38
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r1, r0
	ldr r2, [r1, #0xe0]
	ldr r0, [r1, #0xe4]
	add r3, r2, r0, lsl #4
	cmp r3, #0x64
	ldr r2, _0211DAE0 ; =0x0211F018
	movge r3, #0x64
	ldmia r2, {r4, lr}
	mov r0, #0x1c
	mla r12, r3, r0, r1
	str lr, [sp, #4]
	ldrb r0, [r1, #0xce]
	add r2, sp, #0
	str r4, [sp]
	ldr r2, [r2, r0, lsl #2]
	add r0, r1, #0x3000
	mov lr, #0
	str r2, [r0, #0x4c4]
	add r3, r1, #0x3400
	add r2, r12, #0x100
	strb lr, [r0, #0x4d1]
	ldrh r2, [r2, #0xbc]
	ldrh r12, [r3, #0xc8]
	cmp r2, #0
	strh r2, [r3, #0xc8]
	moveq r2, #1
	streq lr, [r0, #0x4c4]
	streqb r2, [r0, #0x4d1]
	beq _0211DAC0
	cmp r12, #0
	moveq r2, #1
	streqb r2, [r0, #0x4d1]
_0211DAC0:
	ldr r0, [r1, #4]
	add r1, r1, #0xc4
	ldr r2, [r0]
	add r1, r1, #0x3400
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211DAE0: .word 0x0211F018
	arm_func_end FUN_ov70_0211da38

	arm_func_start FUN_ov70_0211dae4
FUN_ov70_0211dae4: ; 0x0211DAE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	ldr r7, _0211DF00 ; =0x02099EB4
	mov r4, #0
	bl FUN_ov70_0211a028
	cmp r0, #0
	ldrneb r0, [r6, #0xcd]
	cmpne r0, #2
	cmpne r0, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0xbc
	bl  FUN_ov16_020f5868
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0xc4
	bl  FUN_ov16_020f5868
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211DB58
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strh r4, [r0, #0x38]
_0211DB58:
	ldr r0, _0211DF04 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	tst r5, #1
	beq _0211DB80
	mov r0, r6
	bl FUN_ov70_0211b5d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB80:
	tst r5, #2
	beq _0211DB94
	mov r0, r6
	bl FUN_ov70_0211b780
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB94:
	tst r5, #0x400
	beq _0211DBA8
	mov r0, r6
	bl FUN_ov70_0211b858
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DBA8:
	tst r5, #0x800
	beq _0211DBBC
	mov r0, r6
	bl FUN_ov70_0211b8dc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DBBC:
	tst r5, #0x300
	beq _0211DCD8
	ldrb r0, [r6, #0xcc]
	cmp r0, #0xb
	bne _0211DC44
	tst r5, #0x200
	mov r4, #0
	beq _0211DBEC
	ldr r0, [r7]
	mov r1, #0x13
	sub r4, r4, #1
	b _0211DC00
_0211DBEC:
	tst r5, #0x100
	beq _0211DC04
	ldr r0, [r7]
	mov r1, #0x14
	mov r4, #1
_0211DC00:
	bl  FUN_ov16_0210efac
_0211DC04:
	mov r0, r6
	mov r1, r4
	bl FUN_ov70_0211c10c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov70_0211ad10
	ldrb r1, [r6, #0xcc]
	mov r0, r6
	bl FUN_ov70_0211a8b0
	mov r0, r6
	bl FUN_ov70_0211b934
	ldr r0, _0211DF08 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC44:
	cmp r0, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	tst r5, #0x200
	mov r4, #0
	beq _0211DC68
	ldr r0, [r7]
	mov r1, #0x1a
	sub r4, r4, #1
	b _0211DC7C
_0211DC68:
	tst r5, #0x100
	beq _0211DC80
	ldr r0, [r7]
	mov r1, #0x1b
	mov r4, #1
_0211DC7C:
	bl  FUN_ov16_0210efac
_0211DC80:
	mov r0, r6
	mov r1, r4
	bl FUN_ov70_0211c1bc
	cmp r0, #0
	beq _0211DCC8
	mov r0, r6
	bl FUN_ov70_0211ad10
	ldrb r1, [r6, #0xcc]
	mov r0, r6
	bl FUN_ov70_0211a8b0
	mov r0, r6
	bl FUN_ov70_0211b934
	mov r0, r6
	bl FUN_ov70_0211da38
	ldr r0, _0211DF08 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DCC8:
	ldr r0, _0211DF08 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DCD8:
	tst r5, #0xf0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0xcc]
	cmp r0, #0xa
	bne _0211DD48
	tst r5, #0x40
	ldrne r0, [r6, #0xd0]
	subne r0, r0, #1
	strne r0, [r6, #0xd0]
	bne _0211DD10
	tst r5, #0x80
	ldrne r0, [r6, #0xd0]
	addne r0, r0, #1
	strne r0, [r6, #0xd0]
_0211DD10:
	ldr r0, [r6, #0xd0]
	cmp r0, #3
	movlt r0, #7
	strlt r0, [r6, #0xd0]
	ldr r0, [r6, #0xd0]
	cmp r0, #7
	movgt r0, #3
	strgt r0, [r6, #0xd0]
	mov r0, r6
	bl FUN_ov70_0211b934
	ldr r0, _0211DF08 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DD48:
	cmp r0, #0xb
	bne _0211DE20
	tst r5, #0x40
	ldrne r0, [r6, #0xd4]
	mov r1, #0
	subne r0, r0, #1
	strne r0, [r6, #0xd4]
	bne _0211DD90
	tst r5, #0x80
	ldrne r0, [r6, #0xd4]
	addne r0, r0, #1
	strne r0, [r6, #0xd4]
	bne _0211DD90
	tst r5, #0x20
	subne r1, r1, #1
	bne _0211DD90
	tst r5, #0x10
	movne r1, #1
_0211DD90:
	ldr r0, [r6, #0xd4]
	cmp r0, #0
	movlt r0, #7
	strlt r0, [r6, #0xd4]
	ldr r0, [r6, #0xd4]
	cmp r0, #8
	strge r4, [r6, #0xd4]
	mov r0, r6
	mov r4, #0
	bl FUN_ov70_0211c1bc
	cmp r0, #0
	beq _0211DDD8
	mov r0, r6
	bl FUN_ov70_0211ad10
	ldrb r1, [r6, #0xcc]
	mov r0, r6
	bl FUN_ov70_0211a8b0
	mov r4, #1
_0211DDD8:
	mov r0, r6
	bl FUN_ov70_0211b934
	cmp r4, #0
	bne _0211DDF0
	tst r5, #0x30
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211DDF0:
	mov r1, #0
	tst r5, #0x20
	movne r1, #0x15
	bne _0211DE08
	tst r5, #0x10
	movne r1, #0x16
_0211DE08:
	ldr r0, [r7]
	bl  FUN_ov16_0210efac
	ldr r0, _0211DF08 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DE20:
	cmp r0, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	tst r5, #0x40
	ldrne r0, [r6, #0xe0]
	subne r0, r0, #1
	strne r0, [r6, #0xe0]
	bne _0211DE74
	tst r5, #0x80
	ldrne r0, [r6, #0xe0]
	addne r0, r0, #1
	strne r0, [r6, #0xe0]
	bne _0211DE74
	tst r5, #0x20
	ldrne r0, [r6, #0xe0]
	subne r0, r0, #8
	strne r0, [r6, #0xe0]
	bne _0211DE74
	tst r5, #0x10
	ldrne r0, [r6, #0xe0]
	addne r0, r0, #8
	strne r0, [r6, #0xe0]
_0211DE74:
	ldr r0, [r6, #0xe0]
	mov r1, #0
	cmp r0, #0x10
	subge r0, r0, #0x10
	strge r0, [r6, #0xe0]
	movge r1, #1
	bge _0211DEA0
	cmp r0, #0
	addlt r0, r0, #0x10
	strlt r0, [r6, #0xe0]
	sublt r1, r1, #1
_0211DEA0:
	mov r0, r6
	bl FUN_ov70_0211c1bc
	cmp r0, #0
	beq _0211DEE0
	mov r0, r6
	bl FUN_ov70_0211ad10
	ldrb r1, [r6, #0xcc]
	mov r0, r6
	bl FUN_ov70_0211a8b0
	mov r0, r6
	bl FUN_ov70_0211b934
	mov r0, r6
	bl FUN_ov70_0211da38
	ldr r0, _0211DF08 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
_0211DEE0:
	mov r0, r6
	bl FUN_ov70_0211b934
	mov r0, r6
	bl FUN_ov70_0211da38
	ldr r0, _0211DF08 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DF00: .word 0x02099EB4
_0211DF04: .word 0x02099ED4
_0211DF08: .word 0x0209AC44
	arm_func_end FUN_ov70_0211dae4

	arm_func_start FUN_ov70_0211df0c
FUN_ov70_0211df0c: ; 0x0211DF0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	mov r4, r1
	mov r6, #0
	bl FUN_ov70_0211a028
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211E3CC ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r5, #0xcd]
	cmp r0, #2
	cmpne r0, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, #0xbc
	bl  FUN_ov16_020f5868
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, #0xc4
	bl  FUN_ov16_020f5868
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, _0211E3D0 ; =0x02099EB4
	mov r8, #1
	ldr r0, [r9]
	mov r1, r4
	mov r2, r8
	bl  FUN_ov16_0210f20c
	mov r7, r0
	ldr r0, [r9]
	bl  FUN_ov16_0210f484
	mov r9, r0
	cmp r7, #2
	ldr r0, [r5, #0xd0]
	bne _0211E260
	ldrb r0, [r5, #0xcc]
	cmp r0, #0xa
	bne _0211E02C
	cmp r9, #7
	addls pc, pc, r9, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DFB8: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 0
	b _0211DFD8 ; case 1
	b _0211DFE4 ; case 2
	b _0211DFF0 ; case 3
	b _0211DFFC ; case 4
	b _0211E008 ; case 5
	b _0211E014 ; case 6
	b _0211E020 ; case 7
_0211DFD8:
	mov r0, r5
	bl FUN_ov70_0211b780
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DFE4:
	mov r0, r5
	bl FUN_ov70_0211b5d0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DFF0:
	mov r0, r5
	bl FUN_ov70_0211b5d0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DFFC:
	mov r0, r5
	bl FUN_ov70_0211b5d0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E008:
	mov r0, r5
	bl FUN_ov70_0211b5d0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E014:
	mov r0, r5
	bl FUN_ov70_0211b5d0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E020:
	mov r0, r5
	bl FUN_ov70_0211b5d0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E02C:
	cmp r0, #0xb
	bne _0211E19C
	mov r4, r6
	cmp r9, #1
	bgt _0211E048
	beq _0211E070
	b _0211E0B0
_0211E048:
	sub r0, r9, #0x11
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211E0B0
_0211E058: ; jump table
	b _0211E07C ; case 0
	b _0211E088 ; case 1
	b _0211E0A4 ; case 2
	b _0211E0AC ; case 3
	b _0211E094 ; case 4
	b _0211E09C ; case 5
_0211E070:
	mov r0, r5
	bl FUN_ov70_0211b780
	b _0211E0B0
_0211E07C:
	mov r0, r5
	bl FUN_ov70_0211b5d0
	b _0211E0B0
_0211E088:
	mov r0, r5
	bl FUN_ov70_0211b8dc
	b _0211E0B0
_0211E094:
	sub r4, r4, #1
	b _0211E0B0
_0211E09C:
	mov r4, r8
	b _0211E0B0
_0211E0A4:
	sub r6, r4, #1
	b _0211E0B0
_0211E0AC:
	mov r6, r8
_0211E0B0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov70_0211c1bc
	cmp r0, #0
	beq _0211E0EC
	mov r0, r5
	bl FUN_ov70_0211ad10
	ldrb r1, [r5, #0xcc]
	mov r0, r5
	bl FUN_ov70_0211a8b0
	mov r0, r5
	bl FUN_ov70_0211b934
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #8
	b _0211E0FC
_0211E0EC:
	cmp r4, #0
	beq _0211E100
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #9
_0211E0FC:
	bl FUN_0202cf6c
_0211E100:
	mov r0, r5
	mov r1, r6
	bl FUN_ov70_0211c10c
	cmp r0, #0
	beq _0211E13C
	mov r0, r5
	bl FUN_ov70_0211ad10
	ldrb r1, [r5, #0xcc]
	mov r0, r5
	bl FUN_ov70_0211a8b0
	mov r0, r5
	bl FUN_ov70_0211b934
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #1
	b _0211E14C
_0211E13C:
	cmp r6, #0
	beq _0211E150
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #9
_0211E14C:
	bl FUN_0202cf6c
_0211E150:
	mvn r1, #0
	mov r2, #0
	b _0211E16C
_0211E15C:
	add r0, r2, #8
	cmp r0, r9
	moveq r1, r2
	add r2, r2, #1
_0211E16C:
	cmp r2, #8
	blt _0211E15C
	ldr r0, [r5, #0xd4]
	cmp r0, r1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, #0x3000
	ldrb r0, [r0, #0x4ba]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_ov70_0211b5d0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E19C:
	cmp r0, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r9, #1
	mov r4, r6
	bgt _0211E1BC
	cmp r9, #1
	beq _0211E1E4
	b _0211E200
_0211E1BC:
	cmp r9, #0x1b
	bgt _0211E200
	cmp r9, #0x18
	blt _0211E200
	beq _0211E1F0
	cmp r9, #0x1a
	beq _0211E1FC
	cmp r9, #0x1b
	moveq r4, r8
	b _0211E200
_0211E1E4:
	mov r0, r5
	bl FUN_ov70_0211b780
	b _0211E200
_0211E1F0:
	mov r0, r5
	bl FUN_ov70_0211b858
	b _0211E200
_0211E1FC:
	sub r4, r4, #1
_0211E200:
	mov r0, r5
	mov r1, r4
	bl FUN_ov70_0211c1bc
	cmp r0, #0
	beq _0211E248
	mov r0, r5
	bl FUN_ov70_0211ad10
	ldrb r1, [r5, #0xcc]
	mov r0, r5
	bl FUN_ov70_0211a8b0
	mov r0, r5
	bl FUN_ov70_0211b934
	mov r0, r5
	bl FUN_ov70_0211da38
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E248:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E260:
	cmp r7, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r1, [r5, #0xcc]
	cmp r1, #0xa
	bne _0211E2EC
	cmp r9, #7
	addls pc, pc, r9, lsl #2
	b _0211E2C8
_0211E280: ; jump table
	b _0211E2C8 ; case 0
	b _0211E2C8 ; case 1
	b _0211E2C8 ; case 2
	b _0211E2A0 ; case 3
	b _0211E2A8 ; case 4
	b _0211E2B0 ; case 5
	b _0211E2B8 ; case 6
	b _0211E2C0 ; case 7
_0211E2A0:
	mov r1, #3
	b _0211E2C4
_0211E2A8:
	mov r1, #4
	b _0211E2C4
_0211E2B0:
	mov r1, #5
	b _0211E2C4
_0211E2B8:
	mov r1, #6
	b _0211E2C4
_0211E2C0:
	mov r1, #7
_0211E2C4:
	str r1, [r5, #0xd0]
_0211E2C8:
	ldr r1, [r5, #0xd0]
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_ov70_0211b934
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E2EC:
	cmp r1, #0xb
	bne _0211E360
	cmp r9, #1
	mvn r1, #0
	mov r2, #0
	b _0211E314
_0211E304:
	add r0, r2, #8
	cmp r0, r9
	moveq r1, r2
	add r2, r2, #1
_0211E314:
	cmp r2, #8
	blt _0211E304
	cmp r1, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #0xd4]
	cmp r0, r1
	addeq r0, r5, #0x3000
	moveq r1, #1
	streqb r1, [r0, #0x4ba]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	str r1, [r5, #0xd4]
	bl FUN_ov70_0211b934
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r5, #0x3000
	strb r6, [r0, #0x4ba]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E360:
	cmp r1, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r9, #1
	mov r0, r6
	beq _0211E37C
	cmp r9, #0x17
	moveq r0, r8
_0211E37C:
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	bl FUN_ov70_0211bbd8
	ldr r1, [r5, #0xe0]
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r0, [r5, #0xe0]
	mov r0, r5
	bl FUN_ov70_0211b934
	mov r0, r5
	bl FUN_ov70_0211da38
	ldr r0, _0211E3D4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E3CC: .word 0x02099ED4
_0211E3D0: .word 0x02099EB4
_0211E3D4: .word 0x0209AC44
	arm_func_end FUN_ov70_0211df0c

	arm_func_start FUN_ov70_0211e3d8
FUN_ov70_0211e3d8: ; 0x0211E3D8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0]
	mov r6, r0
	ldr r1, [r1, #0x44]
	mov r4, #0
	blx r1
	ldr r0, _0211E698 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211E69C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r0, _0211E6A0 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	mov r2, r4
	mov r0, #0xc
	b _0211E43C
_0211E420:
	mla r1, r2, r0, r6
	str r4, [r1, #8]
	str r4, [r1, #0xc]
	strb r4, [r1, #0x10]
	strb r4, [r1, #0x11]
	strb r4, [r1, #0x12]
	add r2, r2, #1
_0211E43C:
	cmp r2, #3
	blt _0211E420
	mov r1, #0
	b _0211E458
_0211E44C:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0x2c]
	add r1, r1, #1
_0211E458:
	cmp r1, #0xe
	blt _0211E44C
	mov r1, #0
	b _0211E474
_0211E468:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0x64]
	add r1, r1, #1
_0211E474:
	cmp r1, #5
	blt _0211E468
	mov r1, #0
	str r1, [r6, #0x78]
	b _0211E494
_0211E488:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0x7c]
	add r1, r1, #1
_0211E494:
	cmp r1, #0x10
	blt _0211E488
	mov r0, r6
	bl FUN_ov70_0211d63c
	mov r0, r6
	bl FUN_ov70_0211d700
	mov r5, #0
	mov r12, #1
	mov r2, #2
	mov r3, #3
	strb r2, [r6, #0xcc]
	mov r1, r5
	add r0, r6, #0xf2
	mov r2, #0xc8
	str r3, [r6, #0xd0]
	strb r12, [r6, #0xcd]
	strb r12, [r6, #0xce]
	strb r5, [r6, #0xcf]
	str r5, [r6, #0xd4]
	str r5, [r6, #0xd8]
	str r12, [r6, #0xdc]
	str r5, [r6, #0xe0]
	str r5, [r6, #0xe4]
	str r12, [r6, #0xe8]
	strb r5, [r6, #0xec]
	strh r5, [r6, #0xee]
	bl MI_CpuFill8
	add r2, r6, #0x1bc
	mov r0, #0x1c
	b _0211E55C
_0211E50C:
	mul r12, r5, r0
	add r3, r6, r12
	add r1, r3, #0x100
	strh r4, [r1, #0xbc]
	strb r4, [r3, #0x1be]
	strb r4, [r3, #0x1bf]
	strb r4, [r3, #0x1c0]
	strb r4, [r3, #0x1c1]
	add r1, r2, r12
	str r4, [r3, #0x1c4]
	add r3, r1, #0xc
	mov r1, #4
_0211E53C:
	strb r4, [r3]
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	strb r4, [r3, #3]
	add r3, r3, #4
	subs r1, r1, #1
	bne _0211E53C
	add r5, r5, #1
_0211E55C:
	cmp r5, #0x65
	blt _0211E50C
	add r1, r6, #0xc8
	add r5, r1, #0xc00
	mov r0, #0
	mov r1, #0x12
	b _0211E5CC
_0211E578:
	mul r3, r0, r1
	add lr, r6, r3
	add r2, lr, #0xc00
	strh r4, [r2, #0xc8]
	strh r4, [r2, #0xca]
	strb r4, [lr, #0xccc]
	strb r4, [lr, #0xccd]
	strb r4, [lr, #0xcce]
	add r12, r5, r3
	ldrb r3, [r12, #7]
	add r0, r0, #1
	bic r3, r3, #0x7f
	and r3, r3, #0xff
	bic r3, r3, #0x80
	strb r3, [r12, #7]
	strb r4, [lr, #0xcd0]
	strb r4, [lr, #0xcd1]
	strh r4, [r2, #0xd2]
	strh r4, [r2, #0xd4]
	strh r4, [r2, #0xd6]
	strh r4, [r2, #0xd8]
_0211E5CC:
	cmp r0, #0x184
	blt _0211E578
	add r1, r6, #0x810
	add r12, r1, #0x2000
	mov r0, #0
	mov r1, #0x12
	b _0211E640
_0211E5E8:
	mul r5, r0, r1
	add r2, r6, r5
	add r3, r2, #0x2800
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	add r2, r2, #0x2000
	strb r4, [r2, #0x814]
	strb r4, [r2, #0x815]
	strb r4, [r2, #0x816]
	add lr, r12, r5
	ldrb r5, [lr, #7]
	add r0, r0, #1
	bic r5, r5, #0x7f
	and r5, r5, #0xff
	bic r5, r5, #0x80
	strb r5, [lr, #7]
	strb r4, [r2, #0x818]
	strb r4, [r2, #0x819]
	strh r4, [r3, #0x1a]
	strh r4, [r3, #0x1c]
	strh r4, [r3, #0x1e]
	strh r4, [r3, #0x20]
_0211E640:
	cmp r0, #0xb4
	blt _0211E5E8
	add r0, r6, #0xc4
	mov r1, #0
	add r3, r6, #0x3000
	add r4, r6, #0x3400
	sub r5, r1, #1
	add r0, r0, #0x3400
	mov r2, #0x60
	strb r1, [r3, #0x4b8]
	strb r1, [r3, #0x4b9]
	strb r1, [r3, #0x4ba]
	strb r1, [r3, #0x4bb]
	strb r1, [r3, #0x4bc]
	strb r1, [r3, #0x4bd]
	strh r1, [r4, #0xbe]
	strh r5, [r4, #0xc0]
	strh r5, [r4, #0xc2]
	bl MI_CpuFill8
	mov r0, r6
	bl FUN_ov70_0211aff8
	ldmfd sp!, {r4, r5, r6, pc}
_0211E698: .word 0x02099EB4
_0211E69C: .word 0x02099ED4
_0211E6A0: .word 0x02099F38
	arm_func_end FUN_ov70_0211e3d8

	arm_func_start FUN_ov70_0211e6a4
FUN_ov70_0211e6a4: ; 0x0211E6A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r1, _0211EF30 ; =0x0209A110
	ldr r4, _0211EF34 ; =0x02099ED4
	mov r9, r0
	mov r5, #0
	ldr r0, [r4]
	ldr r1, [r1]
	mov r11, #5
	mov r7, #2
	mov r6, #1
	mov r8, r5
	bl  FUN_ov16_0210e10c
	mov r0, r9
	bl FUN_ov70_02119fc0
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	ldr r4, _0211EF38 ; =0x02099F38
	mov r10, #4
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #0xcc]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _0211EF18
_0211E718: ; jump table
	b _0211E754 ; case 0
	b _0211EF18 ; case 1
	b _0211E75C ; case 2
	b _0211E770 ; case 3
	b _0211E854 ; case 4
	b _0211E8B4 ; case 5
	b _0211E8D4 ; case 6
	b _0211EA70 ; case 7
	b _0211EBAC ; case 8
	b _0211ECCC ; case 9
	b _0211EF18 ; case 10
	b _0211EDCC ; case 11
	b _0211EE5C ; case 12
	b _0211EEBC ; case 13
	b _0211EEE0 ; case 14
_0211E754:
	strb r7, [r9, #0xcc]
	b _0211EF18
_0211E75C:
	mov r0, r9
	bl FUN_ov70_02119f00
	mov r0, #3
_0211E768:
	strb r0, [r9, #0xcc]
	b _0211EF18
_0211E770:
	mov r0, r9
	bl FUN_ov70_0211a314
	ldr r5, [r9, #0x64]
	mov r0, r9
	str r8, [sp]
	mov r1, r5
	mov r2, r7
	str r6, [sp, #4]
	mov r3, r6
	bl FUN_ov70_0211a24c
	mov r4, #3
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov70_0211a24c
	str r8, [sp]
	str r8, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r10
	mov r3, r4
	bl FUN_ov70_0211a24c
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, r10
	bl FUN_ov70_0211a24c
	str r7, [sp]
	mov r6, #6
	mov r3, r11
	str r7, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_ov70_0211a24c
	str r4, [sp]
	str r4, [sp, #4]
	mov r4, #7
	mov r3, r6
	mov r0, r9
	mov r1, r5
	mov r2, r4
	bl FUN_ov70_0211a24c
	str r10, [sp]
	mov r1, r5
	mov r3, r4
	str r10, [sp, #4]
	mov r0, r9
	mov r2, #8
	bl FUN_ov70_0211a24c
	strb r10, [r9, #0xcc]
	b _0211EF18
_0211E854:
	b _0211E894
_0211E858:
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _0211E890
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211E890
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x2c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211E890:
	add r8, r8, #1
_0211E894:
	cmp r8, #0xe
	blt _0211E858
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	strb r11, [r9, #0xcc]
	b _0211EF18
_0211E8B4:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	moveq r0, #0xa
	streqb r0, [r9, #0xcc]
	b _0211EF18
_0211E8D4:
	ldr r0, _0211EF3C ; =0x02099EB4
	ldr r5, [r9, #0x64]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	ldr r4, _0211EF38 ; =0x02099F38
	mov r1, r5
	ldr r0, [r4]
	mov r2, r7
	mov r3, r8
	bl  FUN_ov16_0211329c
	ldr r5, [r9, #0x68]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_0211329c
	mov r11, r10
	mov r10, r8
	b _0211E958
_0211E920:
	str r6, [sp]
	mov r0, r9
	mov r1, r5
	str r6, [sp, #4]
	add r2, r8, #2
	add r3, r8, #8
	bl FUN_ov70_0211a24c
	str r10, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r8, #2
	mov r3, r7
	bl  FUN_ov16_02113ec0
	add r8, r8, #1
_0211E958:
	cmp r8, #8
	blt _0211E920
_0211E960:
	mov r7, #0x16
	mov r8, #0xd
	str r7, [sp]
	mov r4, #0x17
	mov r0, r9
	mov r1, r5
	mov r2, r8
	mov r3, #0x12
	str r4, [sp, #4]
	bl FUN_ov70_0211a24c
	mov r6, #0xc
	mov r4, #0x11
	str r11, [sp]
	mov r1, #5
	str r1, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov70_0211a24c
	str r10, [sp]
	mov r3, #1
	mov r10, #0xb
	str r3, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r10
	bl FUN_ov70_0211a24c
	str r10, [sp]
	str r6, [sp, #4]
	mov r6, #0xe
	mov r0, r9
	mov r1, r5
	mov r2, r6
	mov r3, #0x13
	bl FUN_ov70_0211a24c
	str r8, [sp]
	str r6, [sp, #4]
	mov r6, #0xf
	mov r0, r9
	mov r1, r5
	mov r2, r6
	mov r3, #0x14
	bl FUN_ov70_0211a24c
	str r6, [sp]
	mov r2, #0x10
	str r2, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r3, #0x15
	bl FUN_ov70_0211a24c
	str r4, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r1, r5
	mov r3, r7
	mov r2, r4
	mov r0, r9
	bl FUN_ov70_0211a24c
	strb r10, [r9, #0xcc]
	mov r0, r9
	bl FUN_ov70_0211ad10
	ldrb r1, [r9, #0xcc]
	mov r0, r9
	bl FUN_ov70_0211a8b0
_0211EA64:
	mov r0, r9
	bl FUN_ov70_0211b934
	b _0211EF18
_0211EA70:
	ldr r0, _0211EF3C ; =0x02099EB4
	ldr r5, [r9, #0x68]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	ldr r4, _0211EF38 ; =0x02099F38
	mov r1, r5
	ldr r0, [r4]
	mov r2, r7
	mov r3, r8
	bl  FUN_ov16_0211329c
	ldr r5, [r9, #0x64]
	ldr r0, [r4]
	mov r2, r7
	mov r1, r5
	mov r3, r6
	bl  FUN_ov16_0211329c
	str r8, [sp]
	str r6, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl FUN_ov70_0211a24c
	mov r4, #3
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov70_0211a24c
	str r8, [sp]
	str r8, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r10
	mov r3, r4
	bl FUN_ov70_0211a24c
	str r6, [sp]
	mov r3, r10
	str r6, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r11
	bl FUN_ov70_0211a24c
	str r7, [sp]
	mov r6, #6
	str r7, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r6
	mov r3, r11
	bl FUN_ov70_0211a24c
	str r4, [sp]
	str r4, [sp, #4]
	mov r4, #7
	mov r3, r6
	mov r0, r9
	mov r1, r5
	mov r2, r4
	bl FUN_ov70_0211a24c
	mov r3, r4
	mov r4, #8
	str r11, [sp]
	mov r1, r5
	mov r0, r9
	mov r2, r4
	str r11, [sp, #4]
	bl FUN_ov70_0211a24c
	sub r2, r4, #9
	mov r1, r8
	mov r0, r9
	mov r3, r2
	bl FUN_ov70_0211d9d8
	mov r1, #0xa
	mov r0, r9
	strb r1, [r9, #0xcc]
	bl FUN_ov70_0211ad10
_0211EBA8:
	b _0211EA64
_0211EBAC:
	mov r10, r4
	bl  FUN_ov16_020f1660
	cmp r0, #0
	bne _0211EF18
	ldr r0, _0211EF3C ; =0x02099EB4
	ldr r5, [r9, #0x68]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	ldr r0, [r10]
	mov r1, r5
	mov r2, r7
	mov r3, r8
	bl  FUN_ov16_0211329c
	ldr r5, [r9, #0x6c]
	ldr r0, [r10]
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_0211329c
	str r8, [sp]
	mov r2, r7
	str r8, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r3, #0x17
	bl FUN_ov70_0211a24c
	str r8, [sp]
	mov r3, r6
	mov r0, r9
	mov r1, r5
	mov r2, #3
	str r6, [sp, #4]
	bl FUN_ov70_0211a24c
	mov r4, #7
	str r4, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, #4
	mov r3, #0x1a
	bl FUN_ov70_0211a24c
	mov r0, #9
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, #0x1b
	bl FUN_ov70_0211a24c
	str r8, [sp]
	mov r1, r5
	str r8, [sp, #4]
	mov r0, r9
	mov r2, #6
	mov r3, #0x18
	bl FUN_ov70_0211a24c
	str r8, [sp]
	ldr r0, [r10]
	ldr r1, [r9, #0x6c]
	mov r2, r4
	mov r3, #0x14
	bl  FUN_ov16_0211401c
	mov r0, #0xc
	strb r0, [r9, #0xcc]
	mov r0, r9
	bl FUN_ov70_0211ad10
	ldrb r1, [r9, #0xcc]
	mov r0, r9
	bl FUN_ov70_0211a8b0
	b _0211EBA8
_0211ECCC:
	bl  FUN_ov16_020f1660
	cmp r0, #0
	beq _0211ED40
	ldr r2, [r9, #0xd4]
	ldr r1, [r9, #0xd8]
	ldr r0, [r9, #4]
	add r4, r2, r1, lsl #3
	bl FUN_02042054
	cmp r0, #0x7d
	bne _0211EF18
	mov r0, #0x12
	mla r1, r4, r0, r9
	add r0, r1, #0x2000
	ldrb r0, [r0, #0x817]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _0211ED2C
	add r0, r1, #0x2800
	ldrsh r2, [r0, #0x10]
	ldrsh r3, [r0, #0x20]
	mov r0, r9
	mov r1, r6
_0211ED24:
	bl FUN_ov70_0211d9d8
	b _0211EF18
_0211ED2C:
	mov r1, r6
	sub r2, r1, #2
	mov r0, r9
	mov r3, r2
	b _0211ED24
_0211ED40:
	ldr r0, _0211EF3C ; =0x02099EB4
	ldr r5, [r9, #0x6c]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	mov r3, r8
	bl  FUN_ov16_0211329c
	ldr r5, [r9, #0x68]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_0211329c
	mov r11, r10
	mov r10, r8
	b _0211EDC0
_0211ED88:
	str r6, [sp]
	mov r0, r9
	mov r1, r5
	str r6, [sp, #4]
	add r2, r8, #2
	add r3, r8, #8
	bl FUN_ov70_0211a24c
	str r10, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r8, #2
	mov r3, r7
	bl  FUN_ov16_02113ec0
	add r8, r8, #1
_0211EDC0:
	cmp r8, #8
	blt _0211ED88
	b _0211E960
_0211EDCC:
	ldrb r0, [r9, #0xcd]
	cmp r0, #4
	beq _0211EDE0
	cmp r0, #1
	bne _0211EF18
_0211EDE0:
	ldr r2, [r9, #0xd4]
	ldr r1, [r9, #0xd8]
	mov r0, #0x12
	add r2, r2, r1, lsl #3
	mla r1, r2, r0, r9
	add r0, r1, #0x2000
	ldrb r0, [r0, #0x817]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _0211EE20
	add r0, r1, #0x2800
	ldrsh r2, [r0, #0x10]
	ldrsh r3, [r0, #0x20]
	mov r0, r9
	mov r1, #1
	b _0211EE30
_0211EE20:
	mov r1, #1
	sub r2, r1, #2
	mov r0, r9
	mov r3, r2
_0211EE30:
	bl FUN_ov70_0211d9d8
	bl  FUN_ov16_020f1800
	cmp r0, #0
	bne _0211EF18
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	streqb r6, [r9, #0xcd]
	b _0211EF18
_0211EE5C:
	ldrb r0, [r9, #0xcd]
	mov r4, #3
	cmp r0, #2
	beq _0211EE74
	cmp r0, #3
	bne _0211EEB0
_0211EE74:
	mov r0, r9
	bl FUN_ov70_0211da38
	ldr r0, [r9, #4]
	bl FUN_02042084
	cmp r0, #0x71
	bne _0211EEB0
	bl  FUN_ov16_020f1800
	cmp r0, #0
	bne _0211EEB0
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	streqb r4, [r9, #0xcd]
_0211EEB0:
	mov r0, r9
	bl FUN_ov70_0211b564
	b _0211EF18
_0211EEBC:
	mov r4, #8
	mov r0, r8
	mov r1, r4
	bl  FUN_ov16_020f1560
	mov r1, r4
	mov r0, r6
	bl  FUN_ov16_020f1560
	mov r0, #0xe
	b _0211E768
_0211EEE0:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211EF18
	ldr r4, [r9, #4]
	mov r1, r8
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, r6
	bl FUN_02041f2c
	strb r8, [r9, #0xcc]
_0211EF18:
	add r0, r9, #0xbc
	bl  FUN_ov16_020f5868
	add r0, r9, #0xc4
	bl  FUN_ov16_020f5868
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EF30: .word 0x0209A110
_0211EF34: .word 0x02099ED4
_0211EF38: .word 0x02099F38
_0211EF3C: .word 0x02099EB4
	arm_func_end FUN_ov70_0211e6a4

	arm_func_start FUN_ov70_0211ef40
FUN_ov70_0211ef40: ; 0x0211EF40
	bx lr
	arm_func_end FUN_ov70_0211ef40

	arm_func_start FUN_ov70_0211ef44
FUN_ov70_0211ef44: ; 0x0211EF44
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov70_0211ad10
	mov r0, r4
	bl FUN_ov70_0211a1a4
	ldr r0, _0211EF9C ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211EFA0 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r0, _0211EFA4 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r4, _0211EFA8 ; =0x02099EEC
	ldr r0, [r4]
	bl FUN_0205b398
	ldr r0, [r4]
	bl FUN_0205a5f4
	ldr r0, _0211EFAC ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	ldmfd sp!, {r4, pc}
_0211EF9C: .word 0x02099EB4
_0211EFA0: .word 0x02099ED4
_0211EFA4: .word 0x02099F38
_0211EFA8: .word 0x02099EEC
_0211EFAC: .word 0x0209A0AC
	arm_func_end FUN_ov70_0211ef44

	arm_func_start FUN_ov70_0211efb0
FUN_ov70_0211efb0: ; 0x0211EFB0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov70_0211efb0

	arm_func_start FUN_ov70_0211efc4
FUN_ov70_0211efc4: ; 0x0211EFC4
	bx lr
	arm_func_end FUN_ov70_0211efc4
_0211EFC8:
	.byte 0xE0, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x60, 0xF2, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x70, 0xF2, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x50, 0xF2, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0x90, 0xF1, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xC0, 0xF1, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0xD0, 0xF1, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x20, 0xF2, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0xE0, 0xF1, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0xF0, 0xF1, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0x00, 0xF2, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x10, 0xF2, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x30, 0xF2, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0xA0, 0xF1, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x40, 0xF2, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov70_0211f098
FUN_ov70_0211f098: ; 0x0211F098
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211F0E0 ; =0x0211F104
	str r0, [r4, #0xc]
	ldr r0, _0211F0E4 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _0211F0E8 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211F0E0: .word 0x0211F104
_0211F0E4: .word 0x00009CCD
_0211F0E8: .word 0x0000EA3C
	arm_func_end FUN_ov70_0211f098

_0211F0EC:
	.byte 0x98, 0xf0, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211F0EC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211F0FC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211F10C
	.byte 0x84, 0xf1, 0x11, 0x02, 0xb0, 0xf1, 0x11, 0x02, 0x78, 0xf1, 0x11, 0x02, 0x00, 0xf1, 0x11, 0x02 ; 0211F11C
	.byte 0x6c, 0xf1, 0x11, 0x02, 0x48, 0xf1, 0x11, 0x02, 0x54, 0xf1, 0x11, 0x02, 0x60, 0xf1, 0x11, 0x02 ; 0211F12C
	.byte 0x40, 0xf1, 0x11, 0x02, 0x83, 0x58, 0x83, 0x4c, 0x83, 0x8b, 0x00, 0x00, 0x83, 0x68, 0x83, 0x8a ; 0211F13C
	.byte 0x83, 0x75, 0x83, 0x8b, 0x00, 0x00, 0x00, 0x00, 0x83, 0x75, 0x83, 0x8d, 0x83, 0x62, 0x83, 0x4e ; 0211F14C
	.byte 0x00, 0x00, 0x00, 0x00, 0x83, 0x4c, 0x83, 0x83, 0x83, 0x62, 0x83, 0x60, 0x00, 0x00, 0x00, 0x00 ; 0211F15C
	.byte 0x83, 0x56, 0x83, 0x85, 0x81, 0x5b, 0x83, 0x67, 0x00, 0x00, 0x00, 0x00, 0x81, 0x69, 0x91, 0xae ; 0211F16C
	.byte 0x90, 0xab, 0x8f, 0x87, 0x81, 0x6a, 0x00, 0x00, 0x81, 0x69, 0x82, 0x73, 0x82, 0x6f, 0x8f, 0x87 ; 0211F17C
	.byte 0x81, 0x6a, 0x00, 0x00, 0x6d, 0x6d, 0x64, 0x5f, 0x61, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x5f ; 0211F18C
	.byte 0x00, 0x00, 0x00, 0x00, 0x6d, 0x6d, 0x64, 0x5f, 0x69, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x5f ; 0211F19C
	.byte 0x00, 0x00, 0x00, 0x00, 0x81, 0x69, 0x82, 0xc8, 0x82, 0xdc, 0x82, 0xa6, 0x8f, 0x87, 0x81, 0x6a ; 0211F1AC
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x62, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211F1BC
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x62, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211F1CC
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x69, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211F1DC
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x6e, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211F1EC
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211F1FC
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x69, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211F20C
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x63, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211F21C
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x74, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211F22C
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x69, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211F23C
	.byte 0x5f, 0x00, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x62, 0x67, 0x30, 0x32, 0x2e, 0x70, 0x61 ; 0211F24C
	.byte 0x63, 0x5f, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x62, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61 ; 0211F25C
	.byte 0x63, 0x5f, 0x00, 0x00, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x62, 0x67, 0x30, 0x31, 0x2e, 0x70, 0x61 ; 0211F26C
	.byte 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc4, 0xef, 0x11, 0x02 ; 0211F27C
	.byte 0xb0, 0xef, 0x11, 0x02, 0xe4, 0xda, 0x11, 0x02, 0x0c, 0xdf, 0x11, 0x02, 0xd8, 0xe3, 0x11, 0x02 ; 0211F28C
	.byte 0x08, 0xb2, 0x02, 0x02, 0xa4, 0xe6, 0x11, 0x02, 0x40, 0xef, 0x11, 0x02, 0x44, 0xef, 0x11, 0x02 ; 0211F29C
	.byte 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02 ; 0211F2AC
	.byte 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02 ; 0211F2BC
	.byte 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02 ; 0211F2CC
	.byte 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02 ; 0211F2DC
	.byte 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 0211F2EC
	.byte 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69, 0x68, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x00, 0x00 ; 0211F2FC
	.byte 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2f, 0x63 ; 0211F30C
	.byte 0x6d, 0x64, 0x2f, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x00, 0x00, 0x00 ; 0211F31C
	.byte 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x77 ; 0211F32C
	.byte 0x61, 0x7a, 0x61, 0x5f, 0x62, 0x69, 0x6e, 0x64, 0x65, 0x72, 0x2e, 0x53, 0x50, 0x4c, 0x00, 0x00 ; 0211F33C
	.byte 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x77 ; 0211F34C
	.byte 0x61, 0x7a, 0x61, 0x5f, 0x62, 0x69, 0x6e, 0x64, 0x65, 0x72, 0x2e, 0x53, 0x50, 0x44, 0x00, 0x00 ; 0211F35C
	.byte 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x6c, 0x6f, 0x67, 0x69, 0x63, 0x2f, 0x73 ; 0211F36C
	.byte 0x70, 0x5f, 0x62, 0x69, 0x6e, 0x64, 0x65, 0x72, 0x2e, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00 ; 0211F37C
	.byte 0x25, 0x73, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 0211F38C
	.byte 0x2f, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2f, 0x63, 0x6d, 0x64, 0x2f, 0x6d, 0x62, 0x64, 0x5f, 0x63 ; 0211F39C
	.byte 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 0211F3AC
	.byte 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69, 0x68, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00 ; 0211F3BC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211F3CC
	.byte 0x00, 0x00, 0x00, 0x00

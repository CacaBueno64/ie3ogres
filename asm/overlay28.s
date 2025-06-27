
	.include "/macros/function.inc"
	.include "/include/overlay28.inc"

	.text
	arm_func_start FUN_ov28_02119f00
FUN_ov28_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x54]
	cmp r0, #0
	bne _02119F38
	ldr r0, _02119F44 ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x54]
_02119F38:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x54]
	ldmfd sp!, {r3, r4, r5, pc}
_02119F44: .word 0x02099F38
	arm_func_end FUN_ov28_02119f00

	arm_func_start FUN_ov28_02119f48
FUN_ov28_02119f48: ; 0x02119F48
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _02119FD4 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r4]
	mov r6, r1
	mov r5, r2
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, [sp, #0x24]
	mov r1, r6
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
_02119FD4: .word 0x02099F38
	arm_func_end FUN_ov28_02119f48

	arm_func_start FUN_ov28_02119fd8
FUN_ov28_02119fd8: ; 0x02119FD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A010 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x54]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A010: .word 0x02099F38
	arm_func_end FUN_ov28_02119fd8

	arm_func_start FUN_ov28_0211a014
FUN_ov28_0211a014: ; 0x0211A014
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A05C ; =0x02099F38
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	mov r1, #0
	str r1, [r0, #0x3c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A05C: .word 0x02099F38
	arm_func_end FUN_ov28_0211a014

	arm_func_start FUN_ov28_0211a060
FUN_ov28_0211a060: ; 0x0211A060
	ldr r2, _0211A070 ; =0x0211B7C0
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211A070: .word ov28_0211B7C0
	arm_func_end FUN_ov28_0211a060

	arm_func_start FUN_ov28_0211a074
FUN_ov28_0211a074: ; 0x0211A074
	bx lr
	arm_func_end FUN_ov28_0211a074

	arm_func_start FUN_ov28_0211a078
FUN_ov28_0211a078: ; 0x0211A078
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov28_0211a078

	arm_func_start FUN_ov28_0211a08c
FUN_ov28_0211a08c: ; 0x0211A08C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xac
	mov r6, #0
	mov r5, r0
	ldr r0, _0211A218 ; =0x0209AC44
	mov r2, r6
	mov r3, r6
	mov r1, #5
	mov r4, r6
	bl FUN_0202b838
	ldr r2, _0211A21C ; =0x020A0640
	ldr r0, _0211A220 ; =0x0209A5D0
	strb r6, [r2, #0x84]
	strb r6, [r2, #0x85]
	add r1, sp, #0x2c
	strb r6, [r2, #0x86]
	bl FUN_02062800
	ldrsb r0, [sp, #0x40]
	cmp r0, #2
	movge r6, #1
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	strb r0, [r5, #0x64]
	ldrsb r0, [sp, #0x40]
	cmp r0, #0xb
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0x65]
	bl  FUN_ov16_020f47fc
	mov r0, #2
	bl  FUN_ov16_020f3f60
	mov r0, #1
	mov r1, r4
	mov r2, r0
	bl FUN_020044e0
	ldr r2, _0211A224 ; =0x04000008
	mov r0, r5
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211A228 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A22C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r0, _0211A230 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	mov r0, #0x4000000
	ldr r1, [r0]
	add r0, r5, #0xc
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r5, #8]
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r5, #0x3c
	mov r1, r4
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r5, #0x54
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	ldr r0, _0211A234 ; =0x0211B82C
	add r1, r5, #0xc
	bl  FUN_ov16_020f3054
	ldr r6, _0211A238 ; =0x0211B6CC
	add lr, sp, #4
	ldmia r6!, {r0, r1, r2, r3}
	mov r12, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia lr, {r0, r1}
	str r4, [sp]
	ldr r0, _0211A23C ; =0x0211B848
	ldr r1, [r5, #0xc]
	mov r2, r12
	add r3, r5, #0x3c
	bl  FUN_ov16_020f5450
	mov r0, #3
	strb r0, [r5, #0x5c]
	ldr r0, _0211A21C ; =0x020A0640
	ldrb r0, [r0, #0x9c]
	str r0, [r5, #0x60]
	add sp, sp, #0xac
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A218: .word 0x0209AC44
_0211A21C: .word 0x020A0640
_0211A220: .word 0x0209A5D0
_0211A224: .word 0x04000008
_0211A228: .word 0x02099EB4
_0211A22C: .word 0x02099ED4
_0211A230: .word 0x02099F38
_0211A234: .word ov28_0211B82C
_0211A238: .word 0x0211B6CC
_0211A23C: .word ov28_0211B848
	arm_func_end FUN_ov28_0211a08c

	arm_func_start FUN_ov28_0211a240
FUN_ov28_0211a240: ; 0x0211A240
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _0211ADAC ; =0x0209A110
	ldr r8, _0211ADB0 ; =0x02099ED4
	mov r6, r0
	mov r9, #0
	ldr r0, [r8]
	ldr r1, [r1]
	mov r10, #0x12c
	ldr r7, _0211ADB4 ; =0x02099EB4
	mov r4, #1
	mov r5, r9
	bl  FUN_ov16_0210e10c
	mov r0, r6
	bl FUN_ov28_0211b4ec
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r8]
	mov r11, #5
	mov r8, #2
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6, #0x5c]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211ADA4
_0211A2B4: ; jump table
	b _0211ADA4 ; case 0
	b _0211ADA4 ; case 1
	b _0211ADA4 ; case 2
	b _0211A2D4 ; case 3
	b _0211AB00 ; case 4
	b _0211ADA4 ; case 5
	b _0211AB68 ; case 6
	b _0211ABA0 ; case 7
_0211A2D4:
	mov r0, r6
	mov r1, r5
	mov r2, #8
	bl FUN_ov28_02119f00
	mov r9, r0
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #0x258
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r6, #0x3c]
	mov r0, r6
	mov r1, r9
	mov r2, r4
	bl FUN_ov28_02119f48
	mov r0, #0xc8
	str r0, [sp]
	mov r0, #0xa8
	stmib sp, {r0, r10}
	str r5, [sp, #0xc]
	ldr r3, [r6, #0x40]
	mov r0, r6
	mov r1, r9
	mov r2, r8
	bl FUN_ov28_02119f48
	str r8, [sp]
	str r5, [sp, #4]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r4
	mov r3, r9
	bl  FUN_ov16_0210fc74
	ldr r0, [r7]
	mov r1, r4
	bl  FUN_ov16_0210e7d0
	movs r7, r0
	beq _0211A3D0
	strb r5, [r7, #0x10]
	strb r5, [r7, #0xf]
	strh r5, [r7, #0xc]
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r7, #0x3a
	strb r5, [r7, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r7, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	add r0, r7, #0x3e
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r5
	mov r3, r5
	mov r2, r4
	bl  FUN_ov16_0210e720
	mov r0, r7
	bl  FUN_ov16_0210e69c
_0211A3D0:
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x12c
	str r0, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	mov r7, #3
	ldr r3, [r6, #0x44]
	mov r0, r6
	mov r1, r9
	mov r2, r7
	bl FUN_ov28_02119f48
	str r7, [sp]
	mov r8, #2
	ldr r7, _0211ADB4 ; =0x02099EB4
	str r5, [sp, #4]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_0210fc74
	ldr r0, [r7]
	mov r1, r8
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211A4BC
	strb r5, [r8, #0x10]
	strb r5, [r8, #0xf]
	strh r5, [r8, #0xc]
	strb r5, [r8, #0x11]
	ldr r0, [r6, #0x60]
	mov r10, r5
	cmp r0, #2
	mov r7, #1
	moveq r5, r4
	mov r1, r10
	mov r2, r7
	mov r3, r10
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r10
	mov r2, r5
	mov r3, r10
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r10
	mov r2, r7
	add r0, r8, #0x3e
	mov r3, r10
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r10
	mov r3, r10
	mov r2, #2
	bl  FUN_ov16_0210e720
	mov r0, r8
	bl  FUN_ov16_0210e69c
_0211A4BC:
	ldrb r0, [r6, #0x64]
	mov r1, #0x28
	mov r5, #0
	str r1, [sp]
	cmp r0, #0
	mov r0, #0x12c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r10, #4
	mov r4, #3
	ldr r8, _0211ADB4 ; =0x02099EB4
	mov r7, #1
	str r5, [sp, #0xc]
	beq _0211A5B8
	mov r4, r10
	ldr r3, [r6, #0x44]
	mov r0, r6
	mov r1, r9
	mov r2, r4
	bl FUN_ov28_02119f48
	stmia sp, {r4, r5}
	mov r7, #3
	ldr r0, [r8]
	mov r2, r7
	mov r3, r9
	mov r1, #1
	bl  FUN_ov16_0210fc74
	ldr r0, [r8]
	mov r1, r7
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211A63C
	strb r5, [r8, #0x10]
	strb r5, [r8, #0xf]
	strh r5, [r8, #0xc]
	strb r5, [r8, #0x11]
	ldr r0, [r6, #0x60]
	mov r10, r5
	cmp r0, #3
	mov r5, #1
	moveq r7, r4
	mov r1, r10
	mov r2, r5
	mov r3, r10
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r10
	mov r2, r7
	mov r3, r10
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r10
	mov r2, r5
	add r0, r8, #0x3e
	mov r3, r10
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r10
	mov r3, r10
	mov r2, #5
	bl  FUN_ov16_0210e720
	mov r0, r8
	b _0211A638
_0211A5B8:
	ldr r3, [r6, #0x48]
	mov r0, r6
	mov r1, r9
	mov r2, r10
	bl FUN_ov28_02119f48
	str r10, [sp]
	str r5, [sp, #4]
	ldr r0, [r8]
	mov r1, r7
	mov r2, r4
	mov r3, r9
	bl  FUN_ov16_0210fc74
	ldr r0, [r8]
	mov r1, r4
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211A63C
	strb r5, [r4, #0x10]
	strb r5, [r4, #0xf]
	strh r5, [r4, #0xc]
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r4, #0x3a
	strb r5, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r3, r5
	add r0, r4, #0x3a
	mov r2, #6
	bl  FUN_ov16_0210e720
	mov r0, r4
_0211A638:
	bl  FUN_ov16_0210e69c
_0211A63C:
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x12c
	str r0, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	mov r7, #5
	ldr r3, [r6, #0x44]
	mov r0, r6
	mov r1, r9
	mov r2, r7
	mov r4, #1
	bl FUN_ov28_02119f48
	str r7, [sp]
	mov r8, #4
	ldr r7, _0211ADB4 ; =0x02099EB4
	str r5, [sp, #4]
	ldr r0, [r7]
	mov r2, r8
	mov r3, r9
	mov r1, r4
	bl  FUN_ov16_0210fc74
	ldr r0, [r7]
	mov r1, r8
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211A730
	strb r5, [r8, #0x10]
	strb r5, [r8, #0xf]
	strh r5, [r8, #0xc]
	strb r5, [r8, #0x11]
	ldr r0, [r6, #0x60]
	mov r7, r5
	mov r5, r4
	cmp r0, #4
	mov r10, #6
	moveq r10, #7
	mov r1, r7
	mov r2, r5
	mov r3, r7
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r10
	mov r3, r7
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r2, r5
	add r0, r8, #0x3e
	mov r1, r7
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r7
	mov r3, r7
	mov r2, #8
	bl  FUN_ov16_0210e720
	mov r0, r8
	bl  FUN_ov16_0210e69c
_0211A730:
	ldrb r0, [r6, #0x65]
	mov r1, #0x12c
	mov r7, #0
	cmp r0, #0
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x58
	stmib sp, {r0, r1}
	mov r10, #5
	mov r5, #6
	ldr r8, _0211ADB4 ; =0x02099EB4
	str r7, [sp, #0xc]
	beq _0211A820
	ldr r3, [r6, #0x44]
	mov r0, r6
	mov r1, r9
	mov r2, r5
	bl FUN_ov28_02119f48
	str r5, [sp]
	str r7, [sp, #4]
	mov r5, r10
	ldr r0, [r8]
	mov r2, r5
	mov r3, r9
	mov r1, #1
	bl  FUN_ov16_0210fc74
	ldr r0, [r8]
	mov r1, r5
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211A8A0
	strb r7, [r8, #0x10]
	strb r7, [r8, #0xf]
	strh r7, [r8, #0xc]
	strb r7, [r8, #0x11]
	ldr r0, [r6, #0x60]
	mov r5, r7
	cmp r0, #5
	mov r7, #9
	moveq r7, #0xa
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x3e
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r5
	mov r3, r5
	mov r2, #0xb
	b _0211A894
_0211A820:
	ldr r3, [r6, #0x48]
	mov r0, r6
	mov r1, r9
	mov r2, r5
	bl FUN_ov28_02119f48
	stmia sp, {r5, r7}
	ldr r0, [r8]
	mov r1, r4
	mov r2, r10
	mov r3, r9
	bl  FUN_ov16_0210fc74
	ldr r0, [r8]
	mov r1, r10
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211A8A0
	strb r7, [r8, #0x10]
	strb r7, [r8, #0xf]
	strh r7, [r8, #0xc]
	mov r1, r7
	mov r2, r4
	mov r3, r7
	add r0, r8, #0x3a
	strb r7, [r8, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r5
	mov r3, r7
	add r0, r8, #0x3a
_0211A894:
	bl  FUN_ov16_0210e720
	mov r0, r8
	bl  FUN_ov16_0210e69c
_0211A8A0:
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x12c
	str r0, [sp, #8]
	mov r10, #0
	str r10, [sp, #0xc]
	mov r4, #7
	ldr r3, [r6, #0x48]
	mov r0, r6
	mov r1, r9
	mov r2, r4
	bl FUN_ov28_02119f48
	str r4, [sp]
	mov r7, #1
	mov r5, #6
	ldr r4, _0211ADB4 ; =0x02099EB4
	str r10, [sp, #4]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, r9
	bl  FUN_ov16_0210fc74
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211A9C8
	strb r10, [r8, #0x10]
	strb r10, [r8, #0xf]
	strh r10, [r8, #0xc]
	strb r10, [r8, #0x11]
	ldrb r0, [r6, #0x65]
	mov r11, r10
	mov r4, r7
	cmp r0, #0
	beq _0211A998
	ldr r0, [r6, #0x60]
	mov r1, r11
	cmp r0, #6
	moveq r10, r7
	mov r2, r4
	mov r3, r11
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r11
	mov r2, r10
	mov r3, r11
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r11
	mov r2, r4
	add r0, r8, #0x3e
	mov r3, r11
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r11
	mov r3, r11
	mov r2, #2
	bl  FUN_ov16_0210e720
	b _0211A9C0
_0211A998:
	mov r1, r10
	mov r2, r7
	mov r3, r10
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r10
	mov r2, r5
	mov r3, r10
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
_0211A9C0:
	mov r0, r8
	bl  FUN_ov16_0210e69c
_0211A9C8:
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x88
	str r0, [sp, #4]
	mov r0, #0x12c
	str r0, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	mov r4, #8
	ldr r3, [r6, #0x48]
	mov r0, r6
	mov r1, r9
	mov r2, r4
	bl FUN_ov28_02119f48
	str r4, [sp]
	mov r4, #1
	mov r8, #7
	ldr r7, _0211ADB4 ; =0x02099EB4
	str r5, [sp, #4]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_0210fc74
	ldr r0, [r7]
	mov r1, r8
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211AAF0
	strb r5, [r8, #0x10]
	strb r5, [r8, #0xf]
	strh r5, [r8, #0xc]
	strb r5, [r8, #0x11]
	ldrb r0, [r6, #0x65]
	mov r7, r5
	cmp r0, #0
	beq _0211AAC0
	ldr r0, [r6, #0x60]
	mov r5, #3
	cmp r0, #7
	moveq r5, #4
	mov r1, r7
	mov r2, r4
	mov r3, r7
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r5
	mov r3, r7
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r7
	mov r2, r4
	mov r3, r7
	add r0, r8, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r7
	mov r3, r7
	mov r2, #5
	bl  FUN_ov16_0210e720
	b _0211AAE8
_0211AAC0:
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r3, r5
	add r0, r8, #0x3a
	mov r2, #6
	bl  FUN_ov16_0210e720
_0211AAE8:
	mov r0, r8
	bl  FUN_ov16_0210e69c
_0211AAF0:
	mov r0, #4
	add sp, sp, #0x10
	strb r0, [r6, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB00:
	ldr r4, _0211ADB8 ; =0x02099F38
	b _0211AB44
_0211AB08:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211AB40
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AB40
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
_0211AB40:
	add r5, r5, #1
_0211AB44:
	cmp r5, #6
	blt _0211AB08
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	add sp, sp, #0x10
	strb r11, [r6, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB68:
	mov r0, r5
	mov r1, #8
	bl  FUN_ov16_020f1560
	ldr r0, [r6, #0x60]
	cmp r0, #2
	cmpne r0, #7
	bne _0211AB90
	mov r0, #1
	mov r1, #8
	bl  FUN_ov16_020f1560
_0211AB90:
	mov r0, #7
	add sp, sp, #0x10
	strb r0, [r6, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ABA0:
	mov r0, r6
	ldr r1, [r0]
	ldr r10, _0211ADBC ; =0x0209AC44
	ldr r1, [r1, #0x58]
	mov r7, #3
	blx r1
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r6, #0x60]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211ADA0
_0211ABD4: ; jump table
	b _0211ADA0 ; case 0
	b _0211ABF4 ; case 1
	b _0211AC0C ; case 2
	b _0211AC84 ; case 3
	b _0211ACA8 ; case 4
	b _0211ACCC ; case 5
	b _0211ACF0 ; case 6
	b _0211AD48 ; case 7
_0211ABF4:
	ldr r0, _0211ADC0 ; =0x0209A454
	mov r1, r5
	str r7, [r0, #0x24]
	ldr r0, [r6, #4]
	mov r2, #0xd
	b _0211AC7C
_0211AC0C:
	ldr r4, _0211ADC4 ; =0x00008385
	mov r0, r10
	mov r1, r4
	bl FUN_0202d00c
	cmp r0, #0
	beq _0211AC34
	mov r0, r10
	mov r1, r4
	mov r2, #0x80
	bl FUN_0202cfd8
_0211AC34:
	ldr r4, _0211ADC8 ; =0x00008386
	mov r0, r10
	mov r1, r4
	bl FUN_0202d00c
	cmp r0, #0
	beq _0211AC5C
	mov r0, r10
	mov r1, r4
	mov r2, #0x80
	bl FUN_0202cfd8
_0211AC5C:
	mov r4, #0x18
_0211AC60:
	ldr r0, [r6, #4]
	mov r2, r4
	mov r1, #0
	bl FUN_02041eac
	ldr r0, [r6, #4]
	mov r2, r4
	mov r1, #1
_0211AC7C:
	bl FUN_02041eac
	b _0211ADA0
_0211AC84:
	ldr r0, _0211ADC0 ; =0x0209A454
	mov r1, r5
	str r8, [r0, #0x24]
	ldr r0, [r6, #4]
	mov r2, #0xd
	bl FUN_02041eac
	ldr r0, _0211ADCC ; =0x020A0640
	strb r4, [r0, #0x84]
	b _0211ADA0
_0211ACA8:
	ldr r0, _0211ADC0 ; =0x0209A454
	mov r1, r5
	str r8, [r0, #0x24]
	ldr r0, [r6, #4]
	mov r2, #0xd
	bl FUN_02041eac
	ldr r0, _0211ADCC ; =0x020A0640
	strb r4, [r0, #0x85]
	b _0211ADA0
_0211ACCC:
	ldr r0, _0211ADC0 ; =0x0209A454
	mov r1, r5
	str r8, [r0, #0x24]
	ldr r0, [r6, #4]
	mov r2, #0xd
	bl FUN_02041eac
	ldr r0, _0211ADCC ; =0x020A0640
	strb r4, [r0, #0x86]
	b _0211ADA0
_0211ACF0:
	ldr r4, _0211ADC4 ; =0x00008385
	mov r0, r10
	mov r1, r4
	bl FUN_0202d00c
	cmp r0, #0
	beq _0211AD18
	mov r0, r10
	mov r1, r4
	mov r2, #0x80
	bl FUN_0202cfd8
_0211AD18:
	ldr r4, _0211ADC8 ; =0x00008386
	mov r0, r10
	mov r1, r4
	bl FUN_0202d00c
	cmp r0, #0
	beq _0211AD40
	mov r0, r10
	mov r1, r4
	mov r2, #0x80
	bl FUN_0202cfd8
_0211AD40:
	mov r4, #0x27
	b _0211AC60
_0211AD48:
	ldr r4, _0211ADC4 ; =0x00008385
	mov r0, r10
	mov r1, r4
	bl FUN_0202d00c
	cmp r0, #0
	beq _0211AD70
	mov r0, r10
	mov r1, r4
	mov r2, #0x80
	bl FUN_0202cfd8
_0211AD70:
	ldr r4, _0211ADC8 ; =0x00008386
	mov r0, r10
	mov r1, r4
	bl FUN_0202d00c
	cmp r0, #0
	beq _0211AD98
	mov r0, r10
	mov r1, r4
	mov r2, #0x80
	bl FUN_0202cfd8
_0211AD98:
	mov r0, r6
	bl FUN_ov28_0211b554
_0211ADA0:
	strb r9, [r6, #0x5c]
_0211ADA4:
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADAC: .word 0x0209A110
_0211ADB0: .word 0x02099ED4
_0211ADB4: .word 0x02099EB4
_0211ADB8: .word 0x02099F38
_0211ADBC: .word 0x0209AC44
_0211ADC0: .word 0x0209A454
_0211ADC4: .word 0x00008385
_0211ADC8: .word 0x00008386
_0211ADCC: .word 0x020A0640
	arm_func_end FUN_ov28_0211a240

	arm_func_start FUN_ov28_0211add0
FUN_ov28_0211add0: ; 0x0211ADD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r4, #0
	b _0211ADF0
_0211ADE0:
	mov r0, r10
	mov r1, r4
	bl FUN_ov28_0211a014
	add r4, r4, #1
_0211ADF0:
	cmp r4, #6
	blt _0211ADE0
	mov r4, #0
	b _0211AE14
_0211AE00:
	mov r0, r10
	mov r1, r4
	bl FUN_ov28_02119fd8
	add r0, r4, #1
	and r4, r0, #0xff
_0211AE14:
	cmp r4, #2
	blo _0211AE00
	mov r9, #0
	add r7, r10, #0xc
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
	b _0211AE68
_0211AE34:
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
	strb r5, [r8, #0xa]
	add r9, r9, #1
_0211AE68:
	cmp r9, #4
	blt _0211AE34
	ldr r0, _0211AEA4 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211AEA8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r0, _0211AEAC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r1, [r10, #0x60]
	ldr r0, _0211AEB0 ; =0x020A0640
	strb r1, [r0, #0x9c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AEA4: .word 0x02099EB4
_0211AEA8: .word 0x02099ED4
_0211AEAC: .word 0x02099F38
_0211AEB0: .word 0x020A0640
	arm_func_end FUN_ov28_0211add0

	arm_func_start FUN_ov28_0211aeb4
FUN_ov28_0211aeb4: ; 0x0211AEB4
	bx lr
	arm_func_end FUN_ov28_0211aeb4

	arm_func_start FUN_ov28_0211aeb8
FUN_ov28_0211aeb8: ; 0x0211AEB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r0, [r5, #0x5c]
	mov r4, r1
	cmp r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r6, _0211AFB8 ; =0x02099EB4
	ldr r0, [r6]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211AF00
	ldr r0, [r6]
	add r0, r0, #0xf00
	ldrh r4, [r0, #0x38]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211AF00:
	tst r4, #4
	beq _0211AF18
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211AF18:
	ldr r0, _0211AFBC ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	tst r4, #1
	beq _0211AF40
	mov r0, r5
	bl FUN_ov28_0211b0f4
	ldmfd sp!, {r4, r5, r6, pc}
_0211AF40:
	tst r4, #2
	beq _0211AF54
	mov r0, r5
	bl FUN_ov28_0211b1b4
	ldmfd sp!, {r4, r5, r6, pc}
_0211AF54:
	tst r4, #0xc0
	ldmeqfd sp!, {r4, r5, r6, pc}
	tst r4, #0x40
	ldrne r0, [r5, #0x60]
	subne r0, r0, #1
	strne r0, [r5, #0x60]
	bne _0211AF80
	tst r4, #0x80
	ldrne r0, [r5, #0x60]
	addne r0, r0, #1
	strne r0, [r5, #0x60]
_0211AF80:
	ldr r0, [r5, #0x60]
	cmp r0, #2
	movlt r0, #7
	strlt r0, [r5, #0x60]
	ldr r0, [r5, #0x60]
	cmp r0, #7
	movgt r0, #2
	strgt r0, [r5, #0x60]
	mov r0, r5
	bl FUN_ov28_0211b1f4
	ldr r0, _0211AFC0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211AFB8: .word 0x02099EB4
_0211AFBC: .word 0x02099ED4
_0211AFC0: .word 0x0209AC44
	arm_func_end FUN_ov28_0211aeb8

	arm_func_start FUN_ov28_0211afc4
FUN_ov28_0211afc4: ; 0x0211AFC4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r0, [r5, #0x5c]
	mov r6, r1
	cmp r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B0E8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211B0EC ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, #1
	bl  FUN_ov16_0210f20c
	mov r6, r0
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	cmp r6, #2
	ldr r4, [r5, #0x60]
	bne _0211B060
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211B0C4
_0211B028: ; jump table
	b _0211B0C4 ; case 0
	b _0211B048 ; case 1
	b _0211B054 ; case 2
	b _0211B054 ; case 3
	b _0211B054 ; case 4
	b _0211B054 ; case 5
	b _0211B054 ; case 6
	b _0211B054 ; case 7
_0211B048:
	mov r0, r5
	bl FUN_ov28_0211b1b4
	b _0211B0C4
_0211B054:
	mov r0, r5
	bl FUN_ov28_0211b0f4
	b _0211B0C4
_0211B060:
	cmp r6, #1
	bne _0211B0C4
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211B0C4
_0211B074: ; jump table
	b _0211B0C4 ; case 0
	b _0211B0C4 ; case 1
	b _0211B094 ; case 2
	b _0211B09C ; case 3
	b _0211B0A4 ; case 4
	b _0211B0AC ; case 5
	b _0211B0B4 ; case 6
	b _0211B0BC ; case 7
_0211B094:
	mov r0, #2
	b _0211B0C0
_0211B09C:
	mov r0, #3
	b _0211B0C0
_0211B0A4:
	mov r0, #4
	b _0211B0C0
_0211B0AC:
	mov r0, #5
	b _0211B0C0
_0211B0B4:
	mov r0, #6
	b _0211B0C0
_0211B0BC:
	mov r0, #7
_0211B0C0:
	str r0, [r5, #0x60]
_0211B0C4:
	ldr r0, [r5, #0x60]
	cmp r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov28_0211b1f4
	ldr r0, _0211B0F0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B0E8: .word 0x02099ED4
_0211B0EC: .word 0x02099EB4
_0211B0F0: .word 0x0209AC44
	arm_func_end FUN_ov28_0211afc4

	arm_func_start FUN_ov28_0211b0f4
FUN_ov28_0211b0f4: ; 0x0211B0F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x60]
	cmp r0, #5
	bne _0211B114
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	beq _0211B154
_0211B114:
	ldr r0, [r4, #0x60]
	cmp r0, #6
	bne _0211B12C
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	beq _0211B154
_0211B12C:
	ldr r0, [r4, #0x60]
	cmp r0, #7
	ldreqb r0, [r4, #0x65]
	cmpeq r0, #0
	beq _0211B154
	ldr r0, [r4, #0x60]
	cmp r0, #3
	ldreqb r0, [r4, #0x64]
	cmpeq r0, #0
	bne _0211B17C
_0211B154:
	ldr r1, [r4, #0x60]
	ldr r0, _0211B1AC ; =0x02099EB4
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldr r0, _0211B1B0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211B17C:
	ldr r1, [r4, #0x60]
	ldr r0, _0211B1AC ; =0x02099EB4
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	mov r2, #6
	ldr r0, _0211B1B0 ; =0x0209AC44
	mov r1, #1
	strb r2, [r4, #0x5c]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211B1AC: .word 0x02099EB4
_0211B1B0: .word 0x0209AC44
	arm_func_end FUN_ov28_0211b0f4

	arm_func_start FUN_ov28_0211b1b4
FUN_ov28_0211b1b4: ; 0x0211B1B4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211B1EC ; =0x02099EB4
	mov r5, r0
	mov r4, #1
	ldr r0, [r1]
	mov r1, r4
	bl  FUN_ov16_0210efac
	mov r2, #6
	ldr r0, _0211B1F0 ; =0x0209AC44
	mov r1, #4
	str r4, [r5, #0x60]
	strb r2, [r5, #0x5c]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B1EC: .word 0x02099EB4
_0211B1F0: .word 0x0209AC44
	arm_func_end FUN_ov28_0211b1b4

	arm_func_start FUN_ov28_0211b1f4
FUN_ov28_0211b1f4: ; 0x0211B1F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0211B4E8 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r6]
	mov r1, #2
	mov r7, #6
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B234
	mov r1, #0
	mov r2, r1
	mov r3, r1
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B234:
	mov r8, #3
	ldr r0, [r6]
	mov r1, r8
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B284
	ldrb r0, [r5, #0x64]
	mov r1, #0
	cmp r0, #0
	beq _0211B26C
	mov r2, r8
	mov r3, r1
	add r0, r4, #0x3a
	b _0211B278
_0211B26C:
	mov r3, r1
	add r0, r4, #0x3a
	mov r2, #6
_0211B278:
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B284:
	ldr r0, [r6]
	mov r1, #4
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B2B4
	mov r1, #0
	mov r3, r1
	add r0, r4, #0x3a
	mov r2, #6
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B2B4:
	ldr r0, [r6]
	mov r1, #5
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B2F8
	ldrb r0, [r5, #0x65]
	mov r1, #0
	mov r3, r1
	cmp r0, #0
	add r0, r4, #0x3a
	beq _0211B2E8
	mov r2, #9
	b _0211B2EC
_0211B2E8:
	mov r2, #6
_0211B2EC:
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B2F8:
	ldr r0, [r6]
	mov r1, r7
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B33C
	ldrb r0, [r5, #0x65]
	mov r1, #0
	cmp r0, #0
	beq _0211B324
	mov r2, r1
	b _0211B328
_0211B324:
	mov r2, r7
_0211B328:
	mov r3, r1
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B33C:
	ldr r0, [r6]
	mov r1, #7
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B380
	ldrb r0, [r5, #0x65]
	mov r1, #0
	mov r3, r1
	cmp r0, #0
	add r0, r4, #0x3a
	beq _0211B370
	mov r2, #3
	b _0211B374
_0211B370:
	mov r2, #6
_0211B374:
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B380:
	ldr r0, [r5, #0x60]
	cmp r0, #1
	cmpne r0, #5
	bge _0211B3F4
	mov r1, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B3F4
	ldr r0, [r5, #0x60]
	mov r1, #0
	cmp r0, #3
	ldreqb r0, [r5, #0x64]
	cmpeq r0, #0
	bne _0211B3D0
	mov r3, r1
	add r0, r4, #0x3a
	mov r2, #7
	b _0211B3E8
_0211B3D0:
	ldr r0, [r5, #0x60]
	mov r3, r1
	sub r0, r0, #2
	add r2, r0, r0, lsl #1
	add r0, r4, #0x3a
	add r2, r2, #1
_0211B3E8:
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B3F4:
	ldr r0, [r5, #0x60]
	cmp r0, #5
	bne _0211B444
	mov r1, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldrb r1, [r5, #0x65]
	mov r4, r0
	add r0, r4, #0x3a
	cmp r1, #0
	mov r1, #0
	mov r3, r1
	beq _0211B434
	mov r2, #0xa
	b _0211B438
_0211B434:
	mov r2, #7
_0211B438:
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B444:
	ldr r0, [r5, #0x60]
	cmp r0, #6
	bne _0211B494
	mov r1, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldrb r1, [r5, #0x65]
	mov r4, r0
	add r0, r4, #0x3a
	cmp r1, #0
	mov r1, #0
	mov r3, r1
	beq _0211B484
	mov r2, #1
	b _0211B488
_0211B484:
	mov r2, #7
_0211B488:
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211B494:
	ldr r0, [r5, #0x60]
	cmp r0, #7
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldrb r1, [r5, #0x65]
	mov r4, r0
	add r0, r4, #0x3a
	cmp r1, #0
	mov r1, #0
	mov r3, r1
	beq _0211B4D4
	mov r2, #4
	b _0211B4D8
_0211B4D4:
	mov r2, #7
_0211B4D8:
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B4E8: .word 0x02099EB4
	arm_func_end FUN_ov28_0211b1f4

	arm_func_start FUN_ov28_0211b4ec
FUN_ov28_0211b4ec: ; 0x0211B4EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xc
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211B550 ; =0x02099F38
	b _0211B540
_0211B518:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211B53C
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211B53C:
	add r5, r5, #1
_0211B540:
	cmp r5, #6
	blt _0211B518
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211B550: .word 0x02099F38
	arm_func_end FUN_ov28_0211b4ec

	arm_func_start FUN_ov28_0211b554
FUN_ov28_0211b554: ; 0x0211B554
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _0211B694 ; =0x020A0640
	mov r1, #1
	strb r1, [r3, #0x1d]
	mov r5, #0
	strb r5, [r3, #0x1a]
	strb r5, [r3, #0x1b]
	strb r5, [r3, #0x87]
	strb r5, [r3, #0x88]
	strb r5, [r3, #0x89]
	strb r5, [r3, #0x8b]
	strb r1, [r3, #0x19]
	ldr r0, _0211B698 ; =0x020A1640
	strb r5, [r3, #0x18]
	strb r5, [r0, #0x245]
	ldr r2, _0211B69C ; =0x0209A454
	ldr r4, _0211B6A0 ; =0x020A0B00
	strb r1, [r2, #0x2e]
	strb r1, [r2, #0x2f]
	strb r5, [r2, #0x30]
	strb r5, [r2, #0x32]
	strb r5, [r2, #0x33]
	strb r5, [r2, #0x28]
	strb r5, [r2, #0x29]
	strb r5, [r2, #0x2a]
	strb r5, [r2, #0x2b]
	ldr r1, _0211B6A4 ; =0x0211B864
	mov r0, r4
	strb r5, [r3, #0x8e]
	strb r5, [r2, #0x31]
	bl FUN_020747e0
	cmp r4, #0
	beq _0211B5E8
	ldr r1, _0211B6A8 ; =0x0209A460
	mov r0, r4
	mov r2, #0x11
	bl STD_CopyLString
_0211B5E8:
	ldr r0, _0211B6A8 ; =0x0209A460
	bl STD_GetStringLength
	mov r5, #0
	ldr r0, _0211B6A0 ; =0x020A0B00
	mov r1, r5
	bl FUN_02074764
	ldr r4, _0211B6AC ; =0x0209A5D0
	mov r0, r4
	bl FUN_020630e0
	ldr r2, _0211B694 ; =0x020A0640
	ldr r1, _0211B6B0 ; =0x02099ED8
	str r0, [r2, #0xba4]
	ldr r0, [r1]
	bl FUN_02054f60
	ldr r0, _0211B6B4 ; =0x02099EE8
	ldr r0, [r0]
	bl FUN_0205ff0c
	bl  FUN_ov16_020efa4c
	ldr r6, _0211B6B8 ; =0x0209BA20
	mov r1, r5
	mov r0, r6
	mov r7, #1
	mov r2, r7
	mov r3, r7
	bl FUN_02070530
	mov r0, r6
	mov r1, r5
	bl FUN_0207249c
	ldr r1, _0211B6BC ; =0x0211B86C
	bl FUN_02023c40
	ldr r6, _0211B6C0 ; =0x020AF81C
	mov r0, r6
	bl FUN_020443b0
	mov r0, r6
	ldr r1, _0211B6C4 ; =0x01DADA80
	bl FUN_02044734
	str r7, [r4, #0x28]
	str r5, [r4, #0x2c]
	ldr r0, _0211B6C8 ; =0x020A9C40
	bl FUN_0204545c
	mov r0, #3
	bl FUN_02029d44
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B694: .word 0x020A0640
_0211B698: .word 0x020A1640
_0211B69C: .word 0x0209A454
_0211B6A0: .word 0x020A0B00
_0211B6A4: .word ov28_0211B864
_0211B6A8: .word 0x0209A460
_0211B6AC: .word 0x0209A5D0
_0211B6B0: .word 0x02099ED8
_0211B6B4: .word 0x02099EE8
_0211B6B8: .word 0x0209BA20
_0211B6BC: .word ov28_0211B86C
_0211B6C0: .word 0x020AF81C
_0211B6C4: .word 0x01DADA80
_0211B6C8: .word 0x020A9C40
	arm_func_end FUN_ov28_0211b554
_0211B6CC:
	.byte 0xA8, 0xB7, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x78, 0xB7, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x88, 0xB7, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x98, 0xB7, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov28_0211b6f4
FUN_ov28_0211b6f4: ; 0x0211B6F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211B73C ; =0x0211B760
	str r0, [r4, #4]
	ldr r0, _0211B740 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211B744 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B73C: .word ov28_0211B760
_0211B740: .word 0x00009CCD
_0211B744: .word 0x0000EA3C
	arm_func_end FUN_ov28_0211b6f4

	.section .sinit, 4
ov28_0211B748:
	.word FUN_ov28_0211b6f4

	.data
	.global ov28_0211B760
ov28_0211B760:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6F, 0x70, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x6F, 0x70, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x6F, 0x70, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x6F, 0x70, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov28_0211B7C0
ov28_0211B7C0:
	.byte 0x74, 0xA0, 0x11, 0x02, 0x78, 0xA0, 0x11, 0x02, 0xB8, 0xAE, 0x11, 0x02, 0xC4, 0xAF, 0x11, 0x02
	.byte 0x8C, 0xA0, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x40, 0xA2, 0x11, 0x02, 0xB4, 0xAE, 0x11, 0x02
	.byte 0xD0, 0xAD, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov28_0211B82C
ov28_0211B82C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6F, 0x70, 0x74, 0x69, 0x6F
	.byte 0x6E, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00
	.global ov28_0211B848
ov28_0211B848:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6F, 0x70, 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x53, 0x50
	.byte 0x44, 0x00, 0x00, 0x00
	.global ov28_0211B864
ov28_0211B864:
	.byte 0x82, 0xC4, 0x82, 0xF1, 0x82, 0xDC, 0x00, 0x00
	.global ov28_0211B86C
ov28_0211B86C:
	.byte 0x81, 0x48, 0x81, 0x48
	.byte 0x81, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

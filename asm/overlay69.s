
	.include "/macros/function.inc"
	.include "/include/overlay69.inc"

	.text
	arm_func_start FUN_ov69_02119f00
FUN_ov69_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	ldr r4, _0211A0E0 ; =0x0209BA20
	and r1, r1, #0x1f00
	mov r5, r0
	mov r2, r1, lsr #8
	mov r6, #0
	mov r0, r4
	mov r1, r6
	str r2, [r5, #0x788]
	bl FUN_0204da5c
	ldr r0, _0211A0E4 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A0E8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r0, #0x10
	str r0, [r5, #0x784]
	mov r0, r5
	bl FUN_ov69_0211a0f4
	mov r1, r6
	mov r0, r4
	bl FUN_0207249c
	mov r6, r0
	mov r0, r4
	mov r1, #1
	bl FUN_0207249c
	ldrh r1, [r6, #0x28]
	mov r4, #0
	cmp r1, #0
	ldreqh r1, [r6, #0x26]
	mov r6, #0x60
	mov r2, r6
	strh r1, [r0, #0x28]
	mov r1, r4
	add r0, r5, #0x20
	bl MI_CpuFill8
	sub r3, r6, #0x61
	mov r6, #0x20
	mov r1, r4
	mov r2, r6
	add r0, r5, #0x3e
	str r4, [r5, #0x20]
	strh r4, [r5, #0x24]
	strh r4, [r5, #0x26]
	strh r4, [r5, #0x28]
	strh r3, [r5, #0x2a]
	strb r4, [r5, #0x2c]
	strb r4, [r5, #0x2d]
	strb r4, [r5, #0x2f]
	str r4, [r5, #0x30]
	strb r4, [r5, #0x34]
	str r3, [r5, #0x38]
	strb r4, [r5, #0x3c]
	strb r4, [r5, #0x2e]
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r6
	add r0, r5, #0x5e
	bl MI_CpuFill8
	mov r0, #1
	str r0, [r5, #0x20]
	mov r1, r4
	add r0, r5, #0x80
	mov r2, #0x24
	strb r4, [r5, #0x7e]
	strh r4, [r5, #0x24]
	str r4, [r5, #0x7a0]
	str r4, [r5, #0xc]
	str r4, [r5, #8]
	strb r4, [r5, #0x790]
	str r4, [r5, #0x794]
	str r4, [r5, #0x798]
	str r4, [r5, #0x10]
	str r4, [r5, #0x14]
	str r4, [r5, #0x79c]
	bl MI_CpuFill8
	mov r2, r6
	add r0, r5, #0xdc
	mov r1, r4
	bl MI_CpuFill8
	ldr r2, _0211A0EC ; =0x00000648
	add r0, r5, #0xfc
	mov r1, r4
	bl MI_CpuFill8
	add r0, r5, #0xae
	add r0, r0, #0x700
	mov r1, r4
	mov r2, #0xa
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0xa4
	mov r2, #0x38
	bl MI_CpuFill8
	add r3, r5, #0x700
	add r0, r5, #0x3bc
	mov r6, #0x10
	mov r1, r4
	mov r2, r6
	add r0, r0, #0x400
	strh r4, [r3, #0xac]
	strh r4, [r3, #0x8c]
	strh r4, [r3, #0x8e]
	str r4, [r5, #0x7b8]
	str r4, [r5, #0x7a8]
	bl MI_CpuFill8
	ldr r0, _0211A0F0 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	mov r1, r6
	add r0, r5, #0x18
	bl  FUN_ov16_020f5278
	str r4, [r5, #0x7cc]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A0E0: .word 0x0209BA20
_0211A0E4: .word 0x02099EB4
_0211A0E8: .word 0x02099ED4
_0211A0EC: .word 0x00000648
_0211A0F0: .word 0x02099F38
	arm_func_end FUN_ov69_02119f00

	arm_func_start FUN_ov69_0211a0f4
FUN_ov69_0211a0f4: ; 0x0211A0F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r4, #0
	ldr r0, _0211A200 ; =0x0209BA20
	mov r1, r4
	bl FUN_0205107c
	add r8, sp, #0
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r7, #0x344
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x40
	bl MI_CpuFill8
	mov r9, r4
_0211A140:
	mov r0, r9
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _0211A18C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211A18C
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r5
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211A18C
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r4, lsl #1
	strh r0, [r8, r1]
	add r4, r4, #1
_0211A18C:
	add r9, r9, #1
	cmp r9, #0x64
	blt _0211A140
	add r5, sp, #0
	mov r0, r7
	mov r1, r5
	bl FUN_ov69_0211a204
	mov r6, #0
	mov r4, r6
_0211A1B0:
	mov r0, r6, lsl #1
	ldrh r0, [r5, r0]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211A1EC
	mov r1, r6, lsl #1
	ldrh r2, [r5, r1]
	add r1, r7, r6, lsl #2
	add r1, r1, #0x700
	strh r2, [r1, #0x44]
	bl FUN_0206cc00
	add r1, r7, r6, lsl #2
	add r1, r1, #0x700
	strh r0, [r1, #0x46]
_0211A1EC:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0211A1B0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A200: .word 0x0209BA20
	arm_func_end FUN_ov69_0211a0f4

	arm_func_start FUN_ov69_0211a204
FUN_ov69_0211a204: ; 0x0211A204
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x50
	add r5, sp, #0x30
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r1, r5
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r6, #0
	ldr r4, _0211A2F0 ; =0x0209BA20
	str r6, [sp]
	add r2, sp, #0x10
	mov r0, r4
	mov r1, r6
	mov r3, #0x10
	str r6, [sp, #4]
	bl FUN_0204b540
	mov r0, r4
	add r4, sp, #8
	mov r1, r6
	mov r3, #4
	mov r2, r4
	str r6, [sp]
	bl FUN_0204b2f4
	mov r3, r0
	mov lr, r3
	mov r0, #1
	mov r1, r6
_0211A278:
	mov r2, r1
	mov r12, r1
	cmp r3, #0
	ble _0211A2B0
	mov r9, r6, lsl #1
	ldrh r9, [r5, r9]
_0211A290:
	mov r10, r12, lsl #1
	ldrh r10, [r4, r10]
	cmp r9, r10
	moveq r2, r0
	beq _0211A2B0
	add r12, r12, #1
	cmp r12, r3
	blt _0211A290
_0211A2B0:
	cmp r2, #0
	moveq r2, r6, lsl #1
	ldreqh r9, [r5, r2]
	moveq r2, lr, lsl #1
	add r6, r6, #1
	addeq lr, lr, #1
	streqh r9, [r7, r2]
	cmp r6, #0x10
	blt _0211A278
	add r0, sp, #8
	mov r1, r7
	mov r2, r3, lsl #1
	str r3, [r8, #0x7a4]
	bl MI_CpuCopy8
	add sp, sp, #0x50
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A2F0: .word 0x0209BA20
	arm_func_end FUN_ov69_0211a204

	arm_func_start FUN_ov69_0211a2f4
FUN_ov69_0211a2f4: ; 0x0211A2F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r1, [r8, #0x10]
	mov r6, #1
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _0211A518
_0211A314: ; jump table
	b _0211A340 ; case 0
	b _0211A348 ; case 1
	b _0211A3AC ; case 2
	b _0211A3CC ; case 3
	b _0211A3E4 ; case 4
	b _0211A400 ; case 5
	b _0211A518 ; case 6
	b _0211A518 ; case 7
	b _0211A450 ; case 8
	b _0211A488 ; case 9
	b _0211A4AC ; case 10
_0211A340:
	bl FUN_ov69_0211a708
	str r6, [r8, #0x10]
_0211A348:
	add r0, r8, #0x80
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211A518
	mov r7, #0
	mov r5, r7
	ldr r4, _0211A5A4 ; =0x0211CD3C
	b _0211A398
_0211A36C:
	str r5, [sp]
	stmib sp, {r5, r6}
	add r0, r8, r7, lsl #2
	str r6, [sp, #0xc]
	add r0, r0, #0x700
	ldrh r2, [r0, #0x46]
	ldr r0, [r8, #0x8c]
	mov r1, r4
	add r3, r8, #0x18
	bl  FUN_ov16_020f55b4
	add r7, r7, #1
_0211A398:
	ldr r0, [r8, #0x784]
	cmp r7, r0
	blt _0211A36C
	mov r0, #2
	str r0, [r8, #0x10]
_0211A3AC:
	add r0, r8, #0x18
	bl  FUN_ov16_020f5868
	cmp r0, #0
	bne _0211A518
	mov r0, r8
	bl FUN_ov69_0211a734
	mov r0, #3
	str r0, [r8, #0x10]
_0211A3CC:
	mov r0, r8
	bl FUN_ov69_0211a794
	cmp r0, #0
	beq _0211A518
	mov r0, #4
	str r0, [r8, #0x10]
_0211A3E4:
	mov r0, r8
	bl FUN_ov69_0211a87c
	mov r0, r8
	bl FUN_ov69_0211a5b4
	mov r0, r8
	mov r1, #1
	bl FUN_ov69_0211bb70
_0211A400:
	ldr r0, _0211A5A8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211A518
	mov r0, r8
	mov r1, r6
	bl FUN_ov69_0211bf84
	mov r0, r8
	mov r1, r6
	bl FUN_ov69_0211c0f4
	mov r0, r8
	bl FUN_ov69_0211a948
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #7
	str r0, [r8, #0x10]
	b _0211A518
_0211A450:
	bl FUN_ov69_0211c238
	ldr r0, _0211A5A8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211A518
	ldr r0, [r8, #0x7a0]
	cmp r0, #0
	bgt _0211A518
	mov r0, r8
	bl FUN_ov69_0211c838
	mov r0, r8
	bl FUN_ov69_0211bbd8
	b _0211A518
_0211A488:
	ldr r0, _0211A5A8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211A518
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #0xa
	str r0, [r8, #0x10]
_0211A4AC:
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211A518
	ldr r1, [r8, #8]
	ldr r0, [r8, #0xc]
	ldr r4, [r8, #4]
	cmp r1, r0
	cmpeq r1, #0
	mov r1, #0
	bne _0211A4F8
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	b _0211A518
_0211A4F8:
	ldr r5, [r8, #0xc]
	ldr r2, [r8, #8]
	mov r0, r4
	bl FUN_02041eac
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl FUN_02041eac
_0211A518:
	ldr r0, _0211A5A8 ; =0x02099ED4
	ldr r4, _0211A5AC ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl  FUN_ov16_0210e10c
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A550
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A55C
_0211A550:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A55C:
	bl FUN_0201fdac
	ldr r2, _0211A5B0 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldr r0, [r8, #0x7bc]
	cmp r0, #0
	beq _0211A584
	mov r0, r8
	bl FUN_ov69_0211a660
_0211A584:
	mov r0, r8
	bl FUN_ov69_0211a818
	ldr r0, [r8, #0x7cc]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r8, #0x7cc]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A5A4: .word 0x0211CD3C
_0211A5A8: .word 0x02099ED4
_0211A5AC: .word 0x0209A110
_0211A5B0: .word 0x02099F58
	arm_func_end FUN_ov69_0211a2f4

	arm_func_start FUN_ov69_0211a5b4
FUN_ov69_0211a5b4: ; 0x0211A5B4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr r0, [r4, #0xf8]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211A624 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	mov r12, #0
	mov r1, r0
	str r12, [sp, #0x14]
	str r1, [r4, #0xf8]
	str r12, [sp]
	str r12, [sp, #4]
	str r12, [sp, #8]
	mov r0, #0xc3
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0xd
	str r12, [sp, #0x10]
	bl FUN_ov69_0211ca4c
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_0211A624: .word 0x02099F38
	arm_func_end FUN_ov69_0211a5b4

	arm_func_start FUN_ov69_0211a628
FUN_ov69_0211a628: ; 0x0211A628
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0xf8]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _0211A65C ; =0x02099F38
	mov r3, #0
	str r3, [r0, #0x7bc]
	str r3, [r0, #0x7c0]
	ldr r0, [r2]
	mov r2, #1
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211A65C: .word 0x02099F38
	arm_func_end FUN_ov69_0211a628

	arm_func_start FUN_ov69_0211a660
FUN_ov69_0211a660: ; 0x0211A660
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0x7c0]
	mov r4, #0xf
	ldr r9, [r7, #0x7c8]
	ldr r8, [r7, #0x7c4]
	mov r1, r4
	add r0, r0, #1
	ldr r5, [r7, #0xf8]
	mov r6, #1
	bl FUN_0201f9bc
	mov r3, r8, lsl #0x10
	mov r0, r9, lsl #0x10
	str r1, [r7, #0x7c0]
	mov r0, r0, asr #0x10
	ldr r8, _0211A704 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r1, [r7, #0x7c0]
	add r0, r4, r4, lsr #31
	cmp r1, r0, asr #1
	rsbgt r0, r1, #0
	addgt r1, r0, r4
	add r3, r1, r1, lsl #1
	ldr r0, _0211A704 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_02113a80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A704: .word 0x02099F38
	arm_func_end FUN_ov69_0211a660

	arm_func_start FUN_ov69_0211a708
FUN_ov69_0211a708: ; 0x0211A708
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211A72C ; =0x0211CD54
	add r1, r4, #0x80
	bl  FUN_ov16_020f3054
	ldr r0, _0211A730 ; =0x0211CD80
	add r1, r4, #0x8c
	bl  FUN_ov16_020f3054
	ldmfd sp!, {r4, pc}
_0211A72C: .word 0x0211CD54
_0211A730: .word 0x0211CD80
	arm_func_end FUN_ov69_0211a708

	arm_func_start FUN_ov69_0211a734
FUN_ov69_0211a734: ; 0x0211A734
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x64
	ldr lr, _0211A78C ; =0x0211CB3C
	add r12, sp, #4
	mov r5, r0
	mov r4, #6
_0211A74C:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211A74C
	mov r4, #0
	str r4, [sp]
	ldr r1, [r5, #0x80]
	ldr r0, _0211A790 ; =0x0211CD98
	add r2, sp, #4
	add r3, r5, #0xa4
	bl  FUN_ov16_020f5450
	mov r0, r5
	mov r1, r4
	bl FUN_ov69_0211c3a8
	add sp, sp, #0x64
	ldmfd sp!, {r4, r5, pc}
_0211A78C: .word 0x0211CB3C
_0211A790: .word 0x0211CD98
	arm_func_end FUN_ov69_0211a734

	arm_func_start FUN_ov69_0211a794
FUN_ov69_0211a794: ; 0x0211A794
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A814 ; =0x02099F38
	b _0211A804
_0211A7AC:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	beq _0211A800
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xa4]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A800
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xa4]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A800:
	add r6, r6, #1
_0211A804:
	cmp r6, #0xe
	blt _0211A7AC
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A814: .word 0x02099F38
	arm_func_end FUN_ov69_0211a794

	arm_func_start FUN_ov69_0211a818
FUN_ov69_0211a818: ; 0x0211A818
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov69_0211bbbc
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov69_0211bb80
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211b248
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x24]
	mov r1, #0
	str r1, [r4, #0x20]
	cmp r0, #0
	movne r0, #9
	strne r0, [r4, #0x20]
	mov r1, #1
	strb r1, [r4, #0x2d]
	ldr r0, [r4, #4]
	add r1, r4, #0x20
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov69_0211a818

	arm_func_start FUN_ov69_0211a87c
FUN_ov69_0211a87c: ; 0x0211A87C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	ldr r1, _0211A944 ; =0x02099F38
	mov r8, r0
	mov r7, #1
	ldr r0, [r1]
	mov r2, r7
	mov r1, #3
	bl  FUN_ov16_02112724
	mov r5, #0
	mov r6, r0
	str r5, [sp, #0x14]
	str r6, [r8, #0xdc]
	str r5, [sp]
	str r5, [sp, #4]
	add r4, sp, #0x14
	str r5, [sp, #8]
	mov r9, #0x258
	str r9, [sp, #0xc]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	str r7, [sp, #0x10]
	mov r3, r5
	bl FUN_ov69_0211ca4c
	str r5, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	sub r9, r9, #0xa
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	mov r3, r7
	bl FUN_ov69_0211ca4c
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	mov r3, #5
	str r7, [sp, #0x10]
	bl FUN_ov69_0211ca4c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A944: .word 0x02099F38
	arm_func_end FUN_ov69_0211a87c

	arm_func_start FUN_ov69_0211a948
FUN_ov69_0211a948: ; 0x0211A948
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov69_0211bb80
	cmp r0, #1
	bne _0211A988
	ldr r2, _0211A9A8 ; =0x00000303
	add r1, r4, #0x700
	mov r0, r4
	strh r2, [r1, #0x8c]
	bl FUN_ov69_0211bb80
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211bb88
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211a9ac
_0211A988:
	mov r0, r4
	bl FUN_ov69_0211b288
	mov r0, r4
	bl FUN_ov69_0211c328
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211c2c0
	ldmfd sp!, {r4, pc}
_0211A9A8: .word 0x00000303
	arm_func_end FUN_ov69_0211a948

	arm_func_start FUN_ov69_0211a9ac
FUN_ov69_0211a9ac: ; 0x0211A9AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl FUN_ov69_0211b414
	mov r0, r5
	bl FUN_ov69_0211bb80
	mov r1, #0x10
	add r3, r4, #0x200
	mov r10, #0x80
	smulbb r2, r1, r1
	sub r8, r2, #0x40
	ldr r7, [r4, #0x1b0]
	add r9, r10, #8
	mov lr, #0xc8
	mov r12, #0x20
	add r2, r4, #0x100
	mov r6, #0
	str r0, [r4, #0x1c]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str lr, [r4, #0x214]
	strh r12, [r2, #0xbe]
	strh r12, [r2, #0xc0]
	strh r10, [r3, #2]
	strh r1, [r3, #4]
	strh r1, [r3, #0xe]
	strh r12, [r3, #0x10]
	strh r9, [r3, #6]
	strh r1, [r3, #8]
	strh r6, [r3, #0xa]
	strh r8, [r3, #0xc]
	cmp r7, #0
	bne _0211AA64
	ldr r7, _0211AB58 ; =0x02099F38
	mov r1, #5
	ldr r0, [r7]
	mov r2, r1
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r4, #0x1b0]
	ldr r0, [r7]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211AA64:
	mov r10, #0
	str r10, [sp, #4]
	add r6, r4, #0x100
	add r7, r4, #0x200
	mov r9, #0x14
	add r8, sp, #4
	b _0211AAE4
_0211AA80:
	add r0, r4, r10, lsl #2
	cmp r10, #8
	ldrsh r1, [r6, #0xbe]
	add r0, r0, #0x100
	bge _0211AAAC
	add r1, r1, #8
	strh r1, [r0, #0xc2]
	ldrsh r2, [r6, #0xc0]
	ldrsh r1, [r7, #4]
	mla r1, r10, r1, r2
	b _0211AAC4
_0211AAAC:
	add r1, r1, #0x80
	strh r1, [r0, #0xc2]
	ldrsh r3, [r6, #0xc0]
	ldrsh r1, [r7, #4]
	sub r2, r10, #8
	mla r1, r2, r1, r3
_0211AAC4:
	strh r1, [r0, #0xc4]
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, r10
	str r9, [sp]
	bl FUN_ov69_0211ab5c
	add r10, r10, #1
_0211AAE4:
	ldr r0, [r4, #8]
	cmp r10, r0
	blt _0211AA80
	add r6, sp, #4
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov69_0211af38
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov69_0211afa8
	add r0, r5, #0x700
	ldrsh r1, [r0, #0xac]
	ldr r2, [r4, #8]
	cmp r1, r2
	movgt r1, #0
	strgth r1, [r0, #0xac]
	mov r0, r4
	bl  FUN_ov16_020f52f4
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl FUN_ov69_0211b654
	mov r0, r5
	mov r1, r4
	bl FUN_ov69_0211b540
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AB58: .word 0x02099F38
	arm_func_end FUN_ov69_0211a9ac

	arm_func_start FUN_ov69_0211ab5c
FUN_ov69_0211ab5c: ; 0x0211AB5C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r9, #0
	mov r5, r3
	mov r3, #1
	str r9, [sp, #0x18]
	mov r4, #0xa
	mov r7, r0
	mov r6, r1
	str r4, [sp]
	bl FUN_ov69_0211b4b8
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r7, #0x700
	add r1, r6, r5, lsl #2
	strh r4, [r0, #0xb0]
	add r1, r1, #0x100
	ldrsh r3, [r1, #0xc4]
	add r0, r6, #0x200
	add r2, r5, #9
	str r3, [sp]
	ldrsh r3, [r0, #2]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	str r3, [sp, #4]
	ldrsh r8, [r0, #4]
	ldr r3, [sp, #0x40]
	ldr r0, _0211AF1C ; =0x02099EB4
	str r8, [sp, #8]
	str r3, [sp, #0xc]
	ldrsh r3, [r1, #0xc2]
	ldr r0, [r0]
	mov r1, #3
	sub r3, r3, #0x28
	bl  FUN_ov16_0210fba4
	strh r4, [r0, #0x34]
	ldr r1, _0211AF20 ; = FUN_ov16_0210fa20
	strb r9, [r0, #0x38]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r2, _0211AF24 ; =0x0210FB10
	ldr r1, _0211AF28 ; =FUN_ov69_0211c520
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	mov r0, r7
	mov r1, r5
	bl FUN_ov69_0211b48c
	movs r10, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r10]
	mov r1, r9
	bl  FUN_ov16_020efa9c
	movs r11, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #3
	str r9, [sp]
	sub r0, r0, #0x24
	stmib sp, {r0, r9}
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, r4
	add r2, sp, #0x18
	str r9, [sp, #0x10]
	mov r3, #6
	bl FUN_ov69_0211ca4c
	ldr r0, [sp, #0x18]
	ldr r8, _0211AF2C ; =0x02099F38
	add r2, r0, #1
	str r2, [sp, #0x18]
	ldr r3, [r6, #0x1b0]
	ldr r0, [r8]
	mov r1, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r8]
	ldr r2, [sp, #0x18]
	mov r1, r4
	mov r3, #0x100
	bl  FUN_ov16_02113d08
	mov r0, #0xc
	mul r0, r5, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r8]
	ldr r2, [sp, #0x18]
	mov r3, r9
	mov r1, r4
	bl  FUN_ov16_02113d88
	mov r0, #3
	str r0, [sp]
	ldr r0, [r8]
	ldr r2, [sp, #0x18]
	mov r3, #0xc
	mov r1, r4
	bl  FUN_ov16_02113b78
	ldr r2, [sp, #0x18]
	mov r3, #0xa
	mul r3, r2, r3
	rsb r3, r3, #0x1f4
	mov r3, r3, lsl #0x10
	ldr r0, [r8]
	mov r1, r4
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	mov r0, r11
	bl FUN_0206dcd4
	ldrb r3, [r0, #0x4a]
	ldr r9, _0211AF30 ; =0x66666667
	mov r0, r11
	smull r1, r2, r9, r3
	mov r1, r3, lsr #0x1f
	add r2, r1, r2, asr #2
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	str r1, [sp, #0x14]
	bl FUN_0206dcd4
	ldrb r2, [r0, #0x4a]
	mov r1, #0x100
	add r8, r1, #0xd6
	smull r3, r1, r9, r2
	mov r3, r2, lsr #0x1f
	add r1, r3, r1, asr #2
	mov r3, #0xa
	smull r1, r9, r3, r1
	sub r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r9, r1, asr #0x10
	mov r0, #0x50
	str r9, [sp]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r7
	mov r1, r4
	add r2, sp, #0x18
	mov r3, #8
	bl FUN_ov69_0211ca4c
	mov r0, r11
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4a]
	cmp r0, #0xa
	blo _0211ADF4
	ldr r0, [sp, #0x14]
	mov r1, r4
	str r0, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r8, #1
	mov r0, r7
	add r2, sp, #0x18
	mov r3, #8
	str r8, [sp, #0x10]
	bl FUN_ov69_0211ca4c
_0211ADF4:
	mov r0, r11
	bl FUN_0204fb60
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211AE38
_0211AE08: ; jump table
	b _0211AE38 ; case 0
	b _0211AE1C ; case 1
	b _0211AE24 ; case 2
	b _0211AE2C ; case 3
	b _0211AE34 ; case 4
_0211AE1C:
	mov r9, #3
	b _0211AE38
_0211AE24:
	mov r9, #2
	b _0211AE38
_0211AE2C:
	mov r9, #1
	b _0211AE38
_0211AE34:
	mov r9, #0
_0211AE38:
	str r9, [sp]
	mvn r0, #0x1a
	str r0, [sp, #4]
	mov r9, #0
	mov r8, #7
	ldr r0, _0211AF34 ; =0x000001D6
	str r9, [sp, #8]
	str r0, [sp, #0xc]
	mov r11, #1
	add r2, sp, #0x18
	mov r0, r7
	mov r1, r4
	mov r3, r8
	str r11, [sp, #0x10]
	bl FUN_ov69_0211ca4c
	ldrh r0, [r10, #2]
	add r1, r7, #0x18
	bl  FUN_ov16_020f5738
	ldr r1, [sp, #0x18]
	ldr r7, _0211AF2C ; =0x02099F38
	add r2, r1, #1
	and r3, r0, #0xff
	ldr r0, [r7]
	str r2, [sp, #0x18]
	mov r1, r4
	bl  FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x18]
	mov r3, r9
	mov r1, r4
	bl  FUN_ov16_0211401c
	sub r0, r8, #0xf
	str r0, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x18]
	sub r3, r8, #0x1a
	mov r1, r4
	bl  FUN_ov16_02113b78
	ldr r2, [sp, #0x18]
	mov r3, #0xa
	mul r3, r2, r3
	rsb r3, r3, #0x1f4
	mov r3, r3, lsl #0x10
	ldr r0, [r7]
	mov r1, r4
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add r2, r6, r5, lsl #2
	add r3, r2, #0x100
	ldrsh r2, [r3, #0xc2]
	ldrsh r3, [r3, #0xc4]
	ldr r0, [r7]
	mov r1, r4
	bl  FUN_ov16_02114248
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF1C: .word 0x02099EB4
_0211AF20: .word  FUN_ov16_0210fa20
_0211AF24: .word 0x0210FB10
_0211AF28: .word FUN_ov69_0211c520
_0211AF2C: .word 0x02099F38
_0211AF30: .word 0x66666667
_0211AF34: .word 0x000001D6
	arm_func_end FUN_ov69_0211ab5c

	arm_func_start FUN_ov69_0211af38
FUN_ov69_0211af38: ; 0x0211AF38
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, #0
	mov r4, #2
	mov r3, r4
	str r5, [sp, #0x14]
	mov r12, #4
	mov r6, r0
	str r12, [sp]
	bl FUN_ov69_0211b4b8
	movs r1, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r6, #0x700
	strh r1, [r0, #0xb2]
	str r5, [sp]
	sub r0, r4, #0x22
	stmib sp, {r0, r5}
	mov r3, #0xc8
	str r3, [sp, #0xc]
	mov r12, #1
	add r2, sp, #0x14
	mov r0, r6
	mov r3, #9
	str r12, [sp, #0x10]
	bl FUN_ov69_0211ca4c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov69_0211af38

	arm_func_start FUN_ov69_0211afa8
FUN_ov69_0211afa8: ; 0x0211AFA8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, #0
	mov r6, #4
	str r7, [sp, #0x14]
	mov r3, r6
	mov r8, r0
	str r6, [sp]
	bl FUN_ov69_0211b4b8
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #0x700
	strh r5, [r0, #0xb6]
	str r7, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x38
	add r4, sp, #0x14
	str r0, [sp, #8]
	mov r0, #0x32
	str r0, [sp, #0xc]
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, #0xa
	str r7, [sp, #0x10]
	bl FUN_ov69_0211ca4c
	mov r0, r8
	mov r1, r5
	bl FUN_ov69_0211b068
	ldr r1, [sp, #0x14]
	mov r0, r8
	add r1, r1, #1
	str r1, [sp, #0x14]
	mov r2, r4
	str r7, [sp]
	mov r8, #0x68
	str r8, [sp, #4]
	str r8, [sp, #8]
	mov r4, #0x1e
	str r4, [sp, #0xc]
	mov r1, r5
	mov r3, r6
	str r7, [sp, #0x10]
	bl FUN_ov69_0211ca4c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov69_0211afa8

	arm_func_start FUN_ov69_0211b068
FUN_ov69_0211b068: ; 0x0211B068
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x79c]
	mov r4, r1
	cmp r0, #0
	bne _0211B0B4
	ldr r6, _0211B158 ; =0x02099F38
	mov r1, #5
	ldr r0, [r6]
	mov r2, r1
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r5, #0x79c]
	mov r2, #0
	ldr r0, [r6]
	mov r3, r2
	bl FUN_02059038
_0211B0B4:
	mov r0, #0x3c
	ldr r6, _0211B158 ; =0x02099F38
	str r0, [sp]
	mov r8, #2
	mov r7, #0
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_02113b78
	ldr r3, [r5, #0x79c]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x28
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, #0x100
	bl  FUN_ov16_02113d08
	str r7, [sp]
	mov r3, r7
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	bl  FUN_ov16_02113d88
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, #0x1e
	bl  FUN_ov16_021139bc
	ldr r0, [r6]
	mov r1, r4
	mov r2, r8
	mov r3, r8
	bl  FUN_ov16_02113f7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211B158: .word 0x02099F38
	arm_func_end FUN_ov69_0211b068

	arm_func_start FUN_ov69_0211b15c
FUN_ov69_0211b15c: ; 0x0211B15C
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	mov r2, #1
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r0, #0x79c]
	ldr r0, _0211B19C ; =0x0211CDC4
	mov r3, #9
	bl  FUN_ov16_020f2304
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0211B19C: .word 0x0211CDC4
	arm_func_end FUN_ov69_0211b15c

	arm_func_start FUN_ov69_0211b1a0
FUN_ov69_0211b1a0: ; 0x0211B1A0
	stmfd sp!, {r3, lr}
	bl FUN_ov69_0211bbbc
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldmltfd sp!, {r3, pc}
	ldr r1, [r0, #8]
	cmp r2, r1
	ldrlt r1, [r0]
	ldrlt r0, [r0, #4]
	cmplt r1, r0
	ldmgefd sp!, {r3, pc}
	ldr r0, _0211B1F0 ; =0x02099EB4
	add r1, r2, #9
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_0211B1F0: .word 0x02099EB4
	arm_func_end FUN_ov69_0211b1a0

	arm_func_start FUN_ov69_0211b1f4
FUN_ov69_0211b1f4: ; 0x0211B1F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
_0211B204:
	mov r0, r6
	mov r1, r5
	bl FUN_ov69_0211b48c
	cmp r0, #0
	beq _0211B240
	ldrh r0, [r0]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211B240
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	cmp r5, #0x10
	blt _0211B204
_0211B240:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov69_0211b1f4

	arm_func_start FUN_ov69_0211b248
FUN_ov69_0211b248: ; 0x0211B248
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov69_0211bb88
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0]
	mov r0, r4
	bl FUN_ov69_0211b270
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov69_0211b248

	arm_func_start FUN_ov69_0211b270
FUN_ov69_0211b270: ; 0x0211B270
	stmfd sp!, {r3, lr}
	bl FUN_ov69_0211b48c
	cmp r0, #0
	ldrneh r0, [r0]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov69_0211b270

	arm_func_start FUN_ov69_0211b288
FUN_ov69_0211b288: ; 0x0211B288
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov69_0211bbbc
	add r1, r4, #0x700
	mov r2, #0
	strh r2, [r1, #0x8e]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0]
	mov r0, r4
	bl FUN_ov69_0211b48c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov69_0211b288

	arm_func_start FUN_ov69_0211b2b8
FUN_ov69_0211b2b8: ; 0x0211B2B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r11, r0
	ldr r0, _0211B40C ; =0x02099F50
	mov r6, #0
	mov r10, r1
	ldr r0, [r0]
	mov r1, r6
	str r6, [sp, #0x24]
	mov r2, #1
	bl FUN_02043310
	ldr r0, [r10, #0xc]
	mov r8, r6
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	mov r4, r6
	b _0211B3BC
_0211B2FC:
	mov r0, r11
	mov r1, r7
	bl FUN_ov69_0211b48c
	cmp r0, #0
	beq _0211B3B4
	ldrh r0, [r0]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	movs r5, r0
	beq _0211B3B4
	cmp r6, #0
	bne _0211B368
	ldr r0, _0211B410 ; =0x02099F38
	ldr r1, [r10, #0x1b0]
	mov r2, #0
	str r2, [sp, #0x20]
	ldr r0, [r0]
	add r2, sp, #0x20
	add r3, sp, #0x24
	bl FUN_0205935c
	ldr r0, _0211B410 ; =0x02099F38
	ldr r1, [r10, #0x1b0]
	ldr r0, [r0]
	ldr r6, [sp, #0x20]
	bl  FUN_ov16_02111458
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
_0211B368:
	cmp r6, #0
	beq _0211B3B4
	mov r0, #0xc
	mul r0, r8, r0
	str r9, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _0211B40C ; =0x02099F50
	str r4, [sp, #0x1c]
	ldr r0, [r0]
	add r1, r5, #0x1c
	mov r2, r6
	mov r3, #0x100
	bl FUN_020425fc
_0211B3B4:
	add r8, r8, #1
	add r7, r7, #1
_0211B3BC:
	ldr r0, [r10, #8]
	cmp r8, r0
	blt _0211B2FC
	cmp r6, #0
	beq _0211B3F8
	ldr r0, _0211B410 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r10, #0x1b0]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r6
	str r4, [sp, #8]
	bl FUN_02059288
_0211B3F8:
	ldr r0, _0211B40C ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B40C: .word 0x02099F50
_0211B410: .word 0x02099F38
	arm_func_end FUN_ov69_0211b2b8

	arm_func_start FUN_ov69_0211b414
FUN_ov69_0211b414: ; 0x0211B414
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211B488 ; =0x02099F38
	b _0211B444
_0211B428:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B440
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211B440:
	add r5, r5, #1
_0211B444:
	cmp r5, #0x64
	blt _0211B428
	ldr r1, [r6, #0x1b0]
	cmp r1, #0
	ble _0211B464
	ldr r0, _0211B488 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211B464:
	mov r4, #0x218
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_0211B488: .word 0x02099F38
	arm_func_end FUN_ov69_0211b414

	arm_func_start FUN_ov69_0211b48c
FUN_ov69_0211b48c: ; 0x0211B48C
	cmp r1, #0
	blt _0211B4A0
	ldr r2, [r0, #0x784]
	cmp r1, r2
	blt _0211B4A8
_0211B4A0:
	mov r0, #0
	bx lr
_0211B4A8:
	add r0, r0, #0x344
	add r0, r0, #0x400
	add r0, r0, r1, lsl #2
	bx lr
	arm_func_end FUN_ov69_0211b48c

	arm_func_start FUN_ov69_0211b4b8
FUN_ov69_0211b4b8: ; 0x0211B4B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x64
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #5
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B53C ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x1b5]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x1b4]
	ldr r2, [r5]
	add r1, r6, #0xb5
	add r2, r6, r2, lsl #2
	str r0, [r2, #0x20]
	add r2, r1, #0x100
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B53C: .word 0x02099F38
	arm_func_end FUN_ov69_0211b4b8

	arm_func_start FUN_ov69_0211b540
FUN_ov69_0211b540: ; 0x0211B540
	ldr r12, _0211B548 ; =FUN_ov69_0211b2b8
	bx r12
_0211B548: .word FUN_ov69_0211b2b8
	arm_func_end FUN_ov69_0211b540

	arm_func_start FUN_ov69_0211b54c
FUN_ov69_0211b54c: ; 0x0211B54C
	ldr r3, _0211B584 ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211B56C
	cmp r1, #0
	cmpeq r2, #0
	movne r0, #0
	bxne lr
_0211B56C:
	mov r3, #9
	str r3, [r0, #0x10]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	mov r0, #1
	bx lr
_0211B584: .word 0x0209A454
	arm_func_end FUN_ov69_0211b54c

	arm_func_start FUN_ov69_0211b588
FUN_ov69_0211b588: ; 0x0211B588
	stmfd sp!, {r3, lr}
	cmp r2, #0x20
	ldr r12, [r1]
	bgt _0211B5AC
	cmp r2, #0x20
	bge _0211B5D4
	cmp r2, #0x10
	beq _0211B5D4
	b _0211B5E4
_0211B5AC:
	cmp r2, #0x40
	bgt _0211B5BC
	addeq r2, r12, #0xf
	b _0211B5C4
_0211B5BC:
	cmp r2, #0x80
	addeq r2, r12, #1
_0211B5C4:
	moveq r12, r2, lsr #0x1f
	rsbeq r2, r12, r2, lsl #28
	addeq r12, r12, r2, ror #28
	b _0211B5E4
_0211B5D4:
	add r2, r12, #8
	mov r12, r2, lsr #0x1f
	rsb r2, r12, r2, lsl #28
	add r12, r12, r2, ror #28
_0211B5E4:
	mov r2, r12
	bl FUN_ov69_0211b5f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov69_0211b588

	arm_func_start FUN_ov69_0211b5f0
FUN_ov69_0211b5f0: ; 0x0211B5F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r2
	bl  FUN_ov16_020f52f4
	mov r4, r0
	tst r4, #1
	beq _0211B630
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov69_0211b654
_0211B630:
	mov r0, r7
	bl FUN_ov69_0211b288
	mov r0, r7
	bl FUN_ov69_0211c328
	mov r1, r0
	mov r0, r7
	bl FUN_ov69_0211c2c0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov69_0211b5f0

	arm_func_start FUN_ov69_0211b654
FUN_ov69_0211b654: ; 0x0211B654
	stmfd sp!, {r3, lr}
	ldr r3, [r1, #0x10]
	add r3, r1, r3, lsl #2
	str r2, [sp]
	add r3, r3, #0x100
	ldrsh r2, [r3, #0xc2]
	ldrsh r3, [r3, #0xc4]
	bl FUN_ov69_0211b678
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov69_0211b654

	arm_func_start FUN_ov69_0211b678
FUN_ov69_0211b678: ; 0x0211B678
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x1b9]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _0211B6AC
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _0211B6B4
_0211B6AC:
	mov r0, #0
	str r0, [sp, #0x28]
_0211B6B4:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x1b8]
	ldr r0, _0211B718 ; =0x02099ED4
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl  FUN_ov16_0210e29c
	ldrb r1, [r4, #0x1b8]
	ldr r0, _0211B71C ; =0x02099F38
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r3, #1
	bl  FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211B718: .word 0x02099ED4
_0211B71C: .word 0x02099F38
	arm_func_end FUN_ov69_0211b678

	arm_func_start FUN_ov69_0211b720
FUN_ov69_0211b720: ; 0x0211B720
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B844 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r2]
	mov r7, r1
	mov r5, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r5
	bl FUN_ov69_0211bf84
	mov r0, r4
	mov r1, r5
	bl FUN_ov69_0211c0f4
	mov r0, r4
	bl FUN_ov69_0211c328
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211c2c0
	ldr r0, [r4, #0x10]
	cmp r0, #7
	beq _0211B784
	cmp r0, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211B784:
	ldr r5, _0211B848 ; =0x02099EB4
	mov r6, #1
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_0210f20c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211B824
_0211B7A8: ; jump table
	b _0211B824 ; case 0
	b _0211B7BC ; case 1
	b _0211B7D4 ; case 2
	b _0211B7EC ; case 3
	b _0211B808 ; case 4
_0211B7BC:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211b850
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B7D4:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211b980
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B7EC:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, #0
	bl FUN_ov69_0211ba48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B808:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl FUN_ov69_0211ba48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B824:
	add r0, r4, #0x700
	ldr r2, _0211B84C ; =0x02099F38
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r2]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B844: .word 0x02099ED4
_0211B848: .word 0x02099EB4
_0211B84C: .word 0x02099F38
	arm_func_end FUN_ov69_0211b720

	arm_func_start FUN_ov69_0211b850
FUN_ov69_0211b850: ; 0x0211B850
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	cmp r5, #0
	mov r4, r0
	addle sp, sp, #4
	ldmlefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r4, #0x7cc]
	cmp r0, #0
	addgt sp, sp, #4
	ldmgtfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211B974 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldr r0, [r4, #0x10]
	cmp r0, #8
	bne _0211B8DC
	cmp r5, #7
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r0, #7
	str r0, [r4, #0x7b8]
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0x700
	ldr r2, _0211B978 ; =0x02099F38
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r2]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B8DC:
	mov r0, r4
	bl FUN_ov69_0211bbd8
	cmp r5, #9
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, pc}
	cmp r5, #0x19
	addgt sp, sp, #4
	ldmgtfd sp!, {r3, r4, r5, r6, pc}
	mov r0, r4
	sub r5, r5, #9
	bl FUN_ov69_0211bbbc
	movs r6, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	cmp r0, r5
	bne _0211B940
	mov r0, r4
	bl FUN_ov69_0211b1f4
	cmp r5, r0
	bge _0211B940
	mov r0, r4
	bl FUN_ov69_0211c600
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B940:
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f52f4
	mov r5, #8
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov69_0211b654
	ldr r0, _0211B97C ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B974: .word 0x02099EB4
_0211B978: .word 0x02099F38
_0211B97C: .word 0x0209AC44
	arm_func_end FUN_ov69_0211b850

	arm_func_start FUN_ov69_0211b980
FUN_ov69_0211b980: ; 0x0211B980
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r4, _0211BA3C ; =0x02099F38
	add r0, r8, #0x700
	mov r7, r1
	ldrsh r1, [r0, #0xb6]
	mov r6, #3
	mov r5, #2
	ldr r0, [r4]
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_02113f7c
	cmp r7, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, _0211BA40 ; =0x02099EB4
	mov r1, r7, lsl #0x10
	ldr r0, [r9]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	ldr r1, [r8, #0x10]
	cmp r1, #8
	bne _0211BA10
	cmp r7, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0
	add r0, r8, #0x700
	str r1, [r8, #0x7a0]
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_02113f7c
	ldr r0, _0211BA44 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BA10:
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #7
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #0
	ldrneh r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r9]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BA3C: .word 0x02099F38
_0211BA40: .word 0x02099EB4
_0211BA44: .word 0x0209AC44
	arm_func_end FUN_ov69_0211b980

	arm_func_start FUN_ov69_0211ba48
FUN_ov69_0211ba48: ; 0x0211BA48
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	cmp r1, #0
	mov r4, r0
	mov r6, r2
	addle sp, sp, #0xc
	ldmlefd sp!, {r3, r4, r5, r6, pc}
	ldr r5, _0211BB68 ; =0x02099EB4
	add r1, sp, #8
	ldr r0, [r5]
	bl  FUN_ov16_0210f48c
	mov r0, #0
	str r0, [sp]
	ldrsh r1, [sp, #8]
	ldrsh r2, [sp, #0xa]
	ldr r0, [r5]
	add r3, sp, #4
	bl  FUN_ov16_0210ecb8
	cmp r6, #0
	bne _0211BB30
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _0211BAC8
	add r0, r4, #0x700
	ldr r2, _0211BB6C ; =0x02099F38
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r2]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BAC8:
	ldr r0, [r4, #0x7b8]
	cmp r0, #7
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r1, #8]
	mov r3, #2
	cmp r0, #7
	bne _0211BB10
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0x700
	ldr r2, _0211BB6C ; =0x02099F38
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r2]
	mov r2, #3
	bl  FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BB10:
	add r0, r4, #0x700
	ldr r2, _0211BB6C ; =0x02099F38
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r2]
	mov r2, #3
	bl  FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BB30:
	ldr r0, [r4, #0x7b8]
	cmp r0, #8
	bne _0211BB58
	add r0, r4, #0x700
	ldr r2, _0211BB6C ; =0x02099F38
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r2]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113f7c
_0211BB58:
	mov r0, #0
	str r0, [r4, #0x7b8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BB68: .word 0x02099EB4
_0211BB6C: .word 0x02099F38
	arm_func_end FUN_ov69_0211ba48

	arm_func_start FUN_ov69_0211bb70
FUN_ov69_0211bb70: ; 0x0211BB70
	mov r2, #5
	str r1, [r0, #0x14]
	str r2, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov69_0211bb70

	arm_func_start FUN_ov69_0211bb80
FUN_ov69_0211bb80: ; 0x0211BB80
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov69_0211bb80

	arm_func_start FUN_ov69_0211bb88
FUN_ov69_0211bb88: ; 0x0211BB88
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov69_0211bbac
	cmp r0, #0
	movlt r0, #0
	addge r2, r4, #0xfc
	movge r1, #0x218
	mlage r0, r1, r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov69_0211bb88

	arm_func_start FUN_ov69_0211bbac
FUN_ov69_0211bbac: ; 0x0211BBAC
	mov r0, #0
	cmp r1, #1
	mvnne r0, #0
	bx lr
	arm_func_end FUN_ov69_0211bbac

	arm_func_start FUN_ov69_0211bbbc
FUN_ov69_0211bbbc: ; 0x0211BBBC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov69_0211bb80
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211bb88
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov69_0211bbbc

	arm_func_start FUN_ov69_0211bbd8
FUN_ov69_0211bbd8: ; 0x0211BBD8
	bx lr
	arm_func_end FUN_ov69_0211bbd8

	arm_func_start FUN_ov69_0211bbdc
FUN_ov69_0211bbdc: ; 0x0211BBDC
	ldr r2, _0211BBEC ; =0x0211CCD0
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211BBEC: .word 0x0211CCD0
	arm_func_end FUN_ov69_0211bbdc

	arm_func_start FUN_ov69_0211bbf0
FUN_ov69_0211bbf0: ; 0x0211BBF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	bl FUN_ov69_0211bbbc
	ldr r1, [r8, #0x10]
	mov r4, r0
	cmp r1, #7
	beq _0211BC18
	cmp r1, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BC18:
	ldr r0, _0211BE0C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0x7cc]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211BE10 ; =0x0209A0F4
	ldr r9, _0211BE14 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r9]
	mov r5, #4
	orr r1, r1, r7
	mov r1, r1, lsl #0x10
	mov r6, r1, lsr #0x10
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211BC84
	ldr r0, [r9]
	add r0, r0, #0xf00
	ldrh r7, [r0, #0x38]
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0
	mov r6, r7
	strh r1, [r0, #0x38]
_0211BC84:
	ldr r0, [r8, #0x10]
	cmp r0, #8
	bne _0211BCE4
	tst r7, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0
	str r1, [r8, #0x7a0]
	ldr r0, _0211BE14 ; =0x02099EB4
	mov r1, #7
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r4, #1
	str r4, [sp]
	add r0, r8, #0x700
	ldr r2, _0211BE18 ; =0x02099F38
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r2]
	mov r2, #3
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, _0211BE1C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BCE4:
	mov r0, r8
	bl FUN_ov69_0211bb80
	cmp r0, #1
	bne _0211BE00
	tst r7, #1
	beq _0211BD18
	ldr r0, _0211BE14 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r0, r8
	bl FUN_ov69_0211c600
	b _0211BE00
_0211BD18:
	tst r7, #2
	beq _0211BD3C
	ldr r0, _0211BE14 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r0, r8
	bl FUN_ov69_0211c594
	b _0211BE00
_0211BD3C:
	tst r7, #0x20
	beq _0211BD68
	mov r6, #8
	mov r0, r8
	mov r1, r4
	mov r3, r6
	mov r2, #0x20
	bl FUN_ov69_0211b588
	cmp r0, #0
	beq _0211BE00
	b _0211BDE8
_0211BD68:
	tst r7, #0x10
	beq _0211BD94
	mov r6, #8
	mov r0, r8
	mov r1, r4
	mov r3, r6
	mov r2, #0x10
	bl FUN_ov69_0211b588
	cmp r0, #0
	beq _0211BE00
	b _0211BDE8
_0211BD94:
	tst r6, #0x40
	beq _0211BDC0
	mov r6, #8
	mov r0, r8
	mov r1, r4
	mov r3, r6
	mov r2, #0x40
	bl FUN_ov69_0211b588
	cmp r0, #0
	beq _0211BE00
	b _0211BDE8
_0211BDC0:
	tst r6, #0x80
	beq _0211BE00
	mov r6, #8
	mov r0, r8
	mov r1, r4
	mov r3, r6
	mov r2, #0x80
	bl FUN_ov69_0211b588
	cmp r0, #0
	beq _0211BE00
_0211BDE8:
	mov r0, r8
	bl FUN_ov69_0211bbd8
	ldr r0, _0211BE1C ; =0x0209AC44
	mov r1, r6
	str r5, [r8, #0x7cc]
	bl FUN_0202cf6c
_0211BE00:
	mov r0, r8
	bl FUN_ov69_0211bbd8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BE0C: .word 0x02099ED4
_0211BE10: .word 0x0209A0F4
_0211BE14: .word 0x02099EB4
_0211BE18: .word 0x02099F38
_0211BE1C: .word 0x0209AC44
	arm_func_end FUN_ov69_0211bbf0

	arm_func_start FUN_ov69_0211be20
FUN_ov69_0211be20: ; 0x0211BE20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r7, r0
	mov r6, r2
	mov r5, r3
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #8
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0xe
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, r4, lsl #2
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	bne _0211BE90
	ldr r0, _0211BF7C ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	add r1, r7, r4, lsl #2
	str r0, [r1, #0xdc]
_0211BE90:
	add r0, r7, r4, lsl #2
	ldr r8, _0211BF7C ; =0x02099F38
	ldr r4, [r0, #0xdc]
	ldr r0, [r8]
	mov r1, r4
	mov r2, #2
	mov r3, #1
	bl  FUN_ov16_021142fc
	add r0, r7, r6, lsl #2
	ldr r2, [r0, #0xa4]
	ldr r0, [r8]
	mov r1, r4
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, #0
	bl  FUN_ov16_0211346c
	ldr r0, [r8]
	mov r1, r4
	mov r2, #0x244
	bl  FUN_ov16_02112b98
	ldr r0, [r8]
	mov r1, r4
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldr r0, [sp, #0x28]
	cmp r0, #1
	beq _0211BF28
	cmp r0, #2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BF28:
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r0, _0211BF80 ; =0x02099EB4
	str r2, [sp]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r0, [r0]
	mov r3, r4
	mov r1, #1
	bl  FUN_ov16_0210fbe8
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r3, [sp, #0x34]
	ldrb r2, [sp, #0x38]
	ldrh r1, [sp, #0x30]
	strb r3, [r0, #0x10]
	strb r2, [r0, #0xf]
	strh r1, [r0, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BF7C: .word 0x02099F38
_0211BF80: .word 0x02099EB4
	arm_func_end FUN_ov69_0211be20

	arm_func_start FUN_ov69_0211bf84
FUN_ov69_0211bf84: ; 0x0211BF84
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	ldr r2, _0211C0EC ; =0x0211CB24
	add r4, sp, #0x1c
	mov r12, r0
	mov r3, r1
	ldmia r2, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [r12, #0x794]
	cmp r0, #0
	movne r1, #0
	movne r0, #1
	strne r1, [sp, #0x1c]
	strne r0, [sp, #0x20]
	strne r1, [sp, #0x24]
	bne _0211BFD8
	mov r1, #6
	mov r0, #7
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
_0211BFD8:
	mov r4, #1
	add r1, sp, #0x1c
	b _0211BFF8
_0211BFE4:
	ldr r2, [sp, #0x1c]
	add r0, r4, #1
	add r2, r2, r4
	str r2, [r1, r4, lsl #2]
	and r4, r0, #0xff
_0211BFF8:
	cmp r4, #3
	blo _0211BFE4
	cmp r3, #0
	beq _0211C048
	mov r0, #0xa0
	str r0, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	mov r0, r12
	mov r2, #2
	bl FUN_ov69_0211be20
_0211C048:
	ldr r0, _0211C0F0 ; =0x02099EB4
	mov r6, #1
	ldr r0, [r0]
	mov r1, r6
	bl  FUN_ov16_0210e7d0
	movs r5, r0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	mov r1, r4
	mov r2, r6
	mov r3, r4
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r2, [sp, #0x1c]
	mov r1, r4
	mov r3, r4
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r6
	mov r3, r4
	add r0, r5, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r4
	ldr r2, [sp, #0x20]
	mov r3, r4
	bl  FUN_ov16_0210e720
	mov r2, r6
	add r0, r5, #0x42
	mov r1, r4
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x42
	mov r1, r4
	mov r3, r4
	ldr r2, [sp, #0x24]
	bl  FUN_ov16_0210e720
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, pc}
_0211C0EC: .word 0x0211CB24
_0211C0F0: .word 0x02099EB4
	arm_func_end FUN_ov69_0211bf84

	arm_func_start FUN_ov69_0211c0f4
FUN_ov69_0211c0f4: ; 0x0211C0F4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	ldr r2, _0211C230 ; =0x0211CB30
	add r3, sp, #0x1c
	mov r12, r0
	mov r4, r1
	ldmia r2, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r12, #0x794]
	cmp r0, #0
	movne r1, #4
	movne r0, #5
	strne r1, [sp, #0x1c]
	strne r0, [sp, #0x20]
	strne r1, [sp, #0x24]
	bne _0211C148
	mov r1, #2
	mov r0, #3
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
_0211C148:
	cmp r4, #0
	beq _0211C18C
	mov r0, #0xd0
	str r0, [sp]
	mov r1, #2
	mov r0, #0xa8
	stmib sp, {r0, r1}
	mov r0, #0x64
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	mov r0, r12
	mov r2, r1
	bl FUN_ov69_0211be20
_0211C18C:
	ldr r0, _0211C234 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r6, r0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	ldr r2, [sp, #0x1c]
	mov r1, r5
	mov r3, r5
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r1, r5
	ldr r2, [sp, #0x20]
	mov r3, r5
	bl  FUN_ov16_0210e720
	mov r2, r4
	add r0, r6, #0x42
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x42
	mov r1, r5
	mov r3, r5
	ldr r2, [sp, #0x24]
	bl  FUN_ov16_0210e720
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, pc}
_0211C230: .word 0x0211CB30
_0211C234: .word 0x02099EB4
	arm_func_end FUN_ov69_0211c0f4

	arm_func_start FUN_ov69_0211c238
FUN_ov69_0211c238: ; 0x0211C238
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r3, #0x68
	str r3, [sp]
	mov r1, #0x30
	str r1, [sp, #4]
	mov r1, #0x18
	str r1, [sp, #8]
	mov r2, #0x1e
	str r2, [sp, #0xc]
	ldr r1, _0211C2B8 ; =0x02099EB4
	mov r5, r0
	mov r4, #1
	ldr r0, [r1]
	mov r1, r4
	mov r2, #7
	bl  FUN_ov16_0210fba4
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r0, #0xf]
	strh r4, [r0, #0xc]
	strb r1, [r0, #0x11]
	add r1, r5, #0x700
	ldrsh r2, [r1, #0xb6]
	ldr r1, _0211C2BC ; =FUN_ov69_0211c9f0
	strh r2, [r0, #0x34]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0211C2B8: .word 0x02099EB4
_0211C2BC: .word FUN_ov69_0211c9f0
	arm_func_end FUN_ov69_0211c238

	arm_func_start FUN_ov69_0211c2c0
FUN_ov69_0211c2c0: ; 0x0211C2C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r4, r1
	mov r6, r8
	mov r7, #1
	ldr r5, _0211C324 ; =0x02099EB4
	b _0211C318
_0211C2DC:
	mov r0, r7, lsl r8
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r5]
	mov r1, r9
	bl  FUN_ov16_0210ebd4
	movs r1, r0
	beq _0211C314
	tst r9, r4
	moveq r0, r7
	movne r0, r6
	strb r0, [r1, #0x10]
	ldr r0, [r5]
	bl  FUN_ov16_0210ee80
_0211C314:
	add r8, r8, #1
_0211C318:
	cmp r8, #0x10
	blt _0211C2DC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C324: .word 0x02099EB4
	arm_func_end FUN_ov69_0211c2c0

	arm_func_start FUN_ov69_0211c328
FUN_ov69_0211c328: ; 0x0211C328
	add r0, r0, #0x700
	ldrh r1, [r0, #0x8e]
	ldrh r2, [r0, #0x8c]
	mvn r0, r1
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov69_0211c328

	arm_func_start FUN_ov69_0211c348
FUN_ov69_0211c348: ; 0x0211C348
	bx lr
	arm_func_end FUN_ov69_0211c348

	arm_func_start FUN_ov69_0211c34c
FUN_ov69_0211c34c: ; 0x0211C34C
	stmfd sp!, {r4, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #0x788]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211C39C ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211C3A0 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov69_0211c454
	ldr r0, _0211C3A4 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r4, pc}
_0211C39C: .word 0x02099EB4
_0211C3A0: .word 0x02099ED4
_0211C3A4: .word 0x02099F38
	arm_func_end FUN_ov69_0211c34c

	arm_func_start FUN_ov69_0211c3a8
FUN_ov69_0211c3a8: ; 0x0211C3A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	bmi _0211C3C0
	cmp r4, #3
	blt _0211C414
_0211C3C0:
	mov r4, #0
	add r9, r5, #0x80
	mov r8, #1
	mov r7, r4
	mov r6, #0xc
_0211C3D4:
	mul r10, r4, r6
	mov r1, r8
	add r0, r9, r10
	bl  FUN_ov16_020f338c
	add r0, r9, r10
	bl  FUN_ov16_020f33fc
	add r0, r5, r10
	str r7, [r0, #0x80]
	str r7, [r0, #0x84]
	strb r7, [r0, #0x88]
	strb r7, [r0, #0x89]
	add r4, r4, #1
	strb r7, [r0, #0x8a]
	cmp r4, #3
	blt _0211C3D4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C414:
	mov r0, #0xc
	mul r6, r4, r0
	add r4, r5, #0x80
	add r0, r4, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r6
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r6]
	add r0, r5, r6
	str r1, [r0, #0x84]
	strb r1, [r0, #0x88]
	strb r1, [r0, #0x89]
	strb r1, [r0, #0x8a]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov69_0211c3a8

	arm_func_start FUN_ov69_0211c454
FUN_ov69_0211c454: ; 0x0211C454
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mvn r1, #0
	mov r5, r0
	bl FUN_ov69_0211c3a8
	mov r4, #0
	add r7, r5, #0xfc
	mov r6, #0x218
	b _0211C484
_0211C474:
	mla r1, r4, r6, r7
	mov r0, r5
	bl FUN_ov69_0211b414
	add r4, r4, #1
_0211C484:
	cmp r4, #3
	blt _0211C474
	mov r4, #0
	ldr r6, _0211C51C ; =0x02099F38
	b _0211C4B4
_0211C498:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xdc]
	cmp r1, #0
	beq _0211C4B0
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211C4B0:
	add r4, r4, #1
_0211C4B4:
	cmp r4, #8
	blt _0211C498
	mov r4, #0
	ldr r6, _0211C51C ; =0x02099F38
	b _0211C4E4
_0211C4C8:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	beq _0211C4E0
	ldr r0, [r6]
	bl FUN_02058ee0
_0211C4E0:
	add r4, r4, #1
_0211C4E4:
	cmp r4, #0xe
	blt _0211C4C8
	add r0, r5, #0x18
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r5, #0x18
	bl  FUN_ov16_020f52c4
	ldr r0, _0211C51C ; =0x02099F38
	ldr r1, [r5, #0x79c]
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r5, #0x79c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C51C: .word 0x02099F38
	arm_func_end FUN_ov69_0211c454

	arm_func_start FUN_ov69_0211c520
FUN_ov69_0211c520: ; 0x0211C520
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl  FUN_ov16_0210f940
	ldr r4, _0211C590 ; =0x02099ED4
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210e5f0
	mov r0, r6
	bl  FUN_ov16_0210fa20
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210e5f0
	mov r0, r6
	bl  FUN_ov16_0210f940
	ldr r0, [r4]
	ldrb r1, [r6, #0x11]
	mov r2, r5
	bl  FUN_ov16_0210e5f0
	mov r0, r6
	bl  FUN_ov16_0210fa20
	ldr r0, [r4]
	ldrb r1, [r6, #0x11]
	mov r2, r5
	bl  FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C590: .word 0x02099ED4
	arm_func_end FUN_ov69_0211c520

	arm_func_start FUN_ov69_0211c594
FUN_ov69_0211c594: ; 0x0211C594
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x794]
	cmp r1, #0
	bne _0211C5C8
	mov r4, #0
	mov r1, r4
	mov r2, r4
	bl FUN_ov69_0211b54c
	ldr r0, _0211C5F4 ; =0x020A9C40
	ldr r1, _0211C5F8 ; =0x000001C3
	mov r2, r4
	bl FUN_020460a8
	b _0211C5E4
_0211C5C8:
	ldr r1, [r0, #0x798]
	cmp r1, #0
	mov r1, #0
	strne r1, [r0, #0x798]
	bne _0211C5E4
	str r1, [r0, #0x794]
	bl FUN_ov69_0211a628
_0211C5E4:
	ldr r0, _0211C5FC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211C5F4: .word 0x020A9C40
_0211C5F8: .word 0x000001C3
_0211C5FC: .word 0x0209AC44
	arm_func_end FUN_ov69_0211c594

	arm_func_start FUN_ov69_0211c600
FUN_ov69_0211c600: ; 0x0211C600
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov69_0211bbbc
	mov r5, r0
	ldr r6, [r5]
	mov r0, r4
	bl FUN_ov69_0211b1f4
	cmp r6, r0
	bge _0211C73C
	ldr r0, [r4, #0x794]
	cmp r0, #0
	bne _0211C6B0
	mov r0, r4
	mov r1, r6
	bl FUN_ov69_0211b48c
	mov r1, r0
	mov r0, r4
	bl FUN_ov69_0211c8dc
	cmp r0, #0
	bne _0211C65C
	mov r0, r4
	bl FUN_ov69_0211c754
	ldmfd sp!, {r4, r5, r6, pc}
_0211C65C:
	ldr r1, [r5]
	mov r0, r4
	strb r1, [r4, #0x790]
	ldr r1, [r5]
	bl FUN_ov69_0211b48c
	ldrb r2, [r4, #0x790]
	mov r1, #0x78
	mov r12, #1
	mov r3, r2, lsr #0x1f
	mov r5, r2, lsr #3
	rsb r2, r3, r2, lsl #29
	smulbb r5, r5, r1
	add r1, r3, r2, ror #29
	mov r1, r1, lsl #4
	add r2, r5, #8
	add r1, r1, #0x20
	str r0, [r4, #0x794]
	str r12, [r4, #0x7bc]
	str r2, [r4, #0x7c4]
	str r1, [r4, #0x7c8]
	b _0211C72C
_0211C6B0:
	ldr r0, [r4, #0x798]
	cmp r0, #0
	bne _0211C72C
	ldrb r0, [r4, #0x790]
	cmp r0, r6
	bne _0211C6D8
	ldr r0, _0211C74C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211C6D8:
	mov r0, r4
	mov r1, r6
	bl FUN_ov69_0211b48c
	ldr r1, [r4, #0x794]
	str r0, [r4, #0x798]
	ldr r5, _0211C750 ; =0x0209BA20
	ldrh r2, [r1]
	mov r0, r5
	mov r1, #0
	bl FUN_020739e4
	ldr r1, [r4, #0x798]
	mov r0, r5
	ldrh r2, [r1]
	mov r1, #1
	bl FUN_020739e4
	mov r1, #0x6d
	mov r0, r4
	mov r2, r1
	bl FUN_ov69_0211b54c
	mov r0, r4
	bl FUN_ov69_0211b1a0
_0211C72C:
	ldr r0, _0211C74C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211C73C:
	ldr r0, _0211C74C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211C74C: .word 0x0209AC44
_0211C750: .word 0x0209BA20
	arm_func_end FUN_ov69_0211c600

	arm_func_start FUN_ov69_0211c754
FUN_ov69_0211c754: ; 0x0211C754
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, #1
	str r5, [r6, #0x7a0]
	bl FUN_ov69_0211c238
	mov r0, #8
	str r0, [r6, #0x10]
	mov r4, #2
	str r5, [sp]
	add r0, r6, #0x700
	ldr r7, _0211C82C ; =0x02099F38
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r7]
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_02113ec0
	str r5, [sp]
	add r0, r6, #0x700
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r7]
	mov r2, r4
	mov r3, r4
	bl  FUN_ov16_02113ec0
	mov r0, r6
	bl FUN_ov69_0211b15c
	mov r0, r6
	mov r4, #0
	mov r1, r4
	bl FUN_ov69_0211c948
	ldr r0, [r7]
	add r1, r6, #0x700
	ldrsh r1, [r1, #0xb6]
	rsb r2, r5, #0x8000
	bl  FUN_ov16_02114204
	mov r0, #0xa2
	str r0, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, _0211C830 ; =0x02099EB4
	mov r1, r4
	ldr r0, [r0]
	mov r3, r4
	mov r2, #0x1d
	bl  FUN_ov16_0210fba4
	ldr r0, _0211C834 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C82C: .word 0x02099F38
_0211C830: .word 0x02099EB4
_0211C834: .word 0x0209AC44
	arm_func_end FUN_ov69_0211c754

	arm_func_start FUN_ov69_0211c838
FUN_ov69_0211c838: ; 0x0211C838
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0x700
	mov r1, #7
	mov r4, #1
	mov r7, #2
	ldr r6, _0211C8D4 ; =0x02099F38
	str r1, [r5, #0x10]
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r6]
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113f7c
	add r0, r5, #0x700
	ldrsh r1, [r0, #0xb6]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl  FUN_ov16_02113f7c
	add r1, r5, #0x700
	ldr r0, [r6]
	ldrsh r1, [r1, #0xb6]
	mov r3, r7
	mov r2, #3
	bl  FUN_ov16_02113f7c
	ldr r0, _0211C8D8 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	mov r0, r5
	mov r1, r4
	bl FUN_ov69_0211bf84
	mov r0, r5
	mov r1, r4
	bl FUN_ov69_0211c0f4
	mov r0, r5
	mov r1, r4
	bl FUN_ov69_0211c948
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C8D4: .word 0x02099F38
_0211C8D8: .word 0x02099EB4
	arm_func_end FUN_ov69_0211c838

	arm_func_start FUN_ov69_0211c8dc
FUN_ov69_0211c8dc: ; 0x0211C8DC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldrh r0, [r1]
	mov r4, #0
	mov r1, r4
	bl  FUN_ov16_020efa9c
	mov r5, r0
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x18
	bl MI_CpuFill8
	mov r4, #4
_0211C90C:
	cmp r5, #0
	beq _0211C93C
	mov r0, r5
	mov r1, r4
	bl FUN_0206cdf8
	cmp r0, #4
	addgt sp, sp, #0x18
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, pc}
	add r4, r4, #1
	cmp r4, #6
	blt _0211C90C
_0211C93C:
	mov r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov69_0211c8dc

	arm_func_start FUN_ov69_0211c948
FUN_ov69_0211c948: ; 0x0211C948
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r9, _0211C9E4 ; =0x00007FFF
	cmp r1, #0
	mov r5, r0
	ldreq r9, _0211C9E8 ; =0x00003DEF
	mov r7, #0
	ldr r4, _0211C9EC ; =0x02099F38
	b _0211C980
_0211C968:
	add r1, r5, r7, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0xdc]
	mov r2, r9
	bl  FUN_ov16_02114204
	add r7, r7, #1
_0211C980:
	cmp r7, #6
	blt _0211C968
	mov r8, #0
	add r6, r5, #0xfc
	mov r11, r8
	ldr r5, _0211C9EC ; =0x02099F38
	mov r4, #0x218
	b _0211C9D8
_0211C9A0:
	mla r10, r8, r4, r6
	mov r7, r11
	b _0211C9CC
_0211C9AC:
	add r0, r10, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211C9C8
	ldr r0, [r5]
	mov r2, r9
	bl  FUN_ov16_02114204
_0211C9C8:
	add r7, r7, #1
_0211C9CC:
	cmp r7, #0x64
	blt _0211C9AC
	add r8, r8, #1
_0211C9D8:
	cmp r8, #3
	blt _0211C9A0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C9E4: .word 0x00007FFF
_0211C9E8: .word 0x00003DEF
_0211C9EC: .word 0x02099F38
	arm_func_end FUN_ov69_0211c948

	arm_func_start FUN_ov69_0211c9f0
FUN_ov69_0211c9f0: ; 0x0211C9F0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r5, #4
	str r5, [sp, #0xc]
	mov r6, r0
	str r2, [sp, #0x10]
	ldr r4, _0211CA48 ; =0x02099ED4
	ldrb r1, [r6, #0x11]
	ldrh r3, [r6, #0x34]
	ldr r0, [r4]
	bl  FUN_ov16_0210e3f0
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210e5f0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211CA48: .word 0x02099ED4
	arm_func_end FUN_ov69_0211c9f0

	arm_func_start FUN_ov69_0211ca4c
FUN_ov69_0211ca4c: ; 0x0211CA4C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0xa4]
	ldr r6, _0211CB08 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl  FUN_ov16_0211401c
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
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl  FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211CB08: .word 0x02099F38
	arm_func_end FUN_ov69_0211ca4c

	arm_func_start FUN_ov69_0211cb0c
FUN_ov69_0211cb0c: ; 0x0211CB0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov69_0211cb0c

	arm_func_start FUN_ov69_0211cb20
FUN_ov69_0211cb20: ; 0x0211CB20
	bx lr
	arm_func_end FUN_ov69_0211cb20
_0211CB24:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB8, 0xCC, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0xCC, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x98, 0xCC, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x58, 0xCC, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x18, 0xCC, 0x11, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x28, 0xCC, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x38, 0xCC, 0x11, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x48, 0xCC, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0x68, 0xCC, 0x11, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0x78, 0xCC, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0xA8, 0xCC, 0x11, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov69_0211cb9c
FUN_ov69_0211cb9c: ; 0x0211CB9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211CBE4 ; =0x0211CC00
	str r0, [r4, #0xc]
	ldr r0, _0211CBE8 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211CBEC ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CBE4: .word 0x0211CC00
_0211CBE8: .word 0x00009CCD
_0211CBEC: .word 0x0000EA3C
	arm_func_end FUN_ov69_0211cb9c

_0211CBF0:
	.byte 0x9c, 0xcb, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211CBF0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211CC00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x74, 0x30, 0x30 ; 0211CC10
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x33 ; 0211CC20
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x31 ; 0211CC30
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x6e, 0x30, 0x31 ; 0211CC40
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x32 ; 0211CC50
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x32 ; 0211CC60
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x33 ; 0211CC70
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x37 ; 0211CC80
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x30 ; 0211CC90
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x34 ; 0211CCA0
	.byte 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x77, 0x64, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30 ; 0211CCB0
	.byte 0x30, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211CCC0
	.byte 0x20, 0xcb, 0x11, 0x02, 0x0c, 0xcb, 0x11, 0x02, 0xf0, 0xbb, 0x11, 0x02, 0x20, 0xb7, 0x11, 0x02 ; 0211CCD0
	.byte 0x00, 0x9f, 0x11, 0x02, 0x08, 0xb2, 0x02, 0x02, 0xf4, 0xa2, 0x11, 0x02, 0x48, 0xc3, 0x11, 0x02 ; 0211CCE0
	.byte 0x4c, 0xc3, 0x11, 0x02, 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02 ; 0211CCF0
	.byte 0xf0, 0xb1, 0x02, 0x02, 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02 ; 0211CD00
	.byte 0x10, 0xb3, 0x02, 0x02, 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02 ; 0211CD10
	.byte 0xd8, 0xb2, 0x02, 0x02, 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02 ; 0211CD20
	.byte 0xd8, 0xb1, 0x02, 0x02, 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x2f, 0x64, 0x61, 0x74 ; 0211CD30
	.byte 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69, 0x68, 0x2e, 0x70, 0x6b ; 0211CD40
	.byte 0x62, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63 ; 0211CD50
	.byte 0x33, 0x64, 0x2f, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x64, 0x65, 0x6e, 0x5f, 0x63, 0x68, 0x61, 0x72 ; 0211CD60
	.byte 0x61, 0x5f, 0x73, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x2e, 0x53, 0x50, 0x4c, 0x00, 0x00, 0x00, 0x00 ; 0211CD70
	.byte 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69 ; 0211CD80
	.byte 0x68, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 0211CD90
	.byte 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x77, 0x61, 0x7a, 0x61, 0x5f, 0x64, 0x65, 0x6e, 0x5f ; 0211CDA0
	.byte 0x63, 0x68, 0x61, 0x72, 0x61, 0x5f, 0x73, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x2e, 0x53, 0x50, 0x44 ; 0211CDB0
	.byte 0x00, 0x00, 0x00, 0x00, 0x82, 0xbb, 0x82, 0xcc, 0x5b, 0x91, 0x49, 0x8e, 0xe8, 0x2f, 0x82, 0xb9 ; 0211CDC0
	.byte 0x82, 0xf1, 0x82, 0xb5, 0x82, 0xe3, 0x5d, 0x82, 0xcd, 0x81, 0x40, 0x5b, 0x93, 0x60, 0x8e, 0xf6 ; 0211CDD0
	.byte 0x8b, 0x5a, 0x2f, 0x82, 0xc5, 0x82, 0xf1, 0x82, 0xb6, 0x82, 0xe3, 0x82, 0xed, 0x82, 0xb4, 0x5d ; 0211CDE0
	.byte 0x82, 0xf0, 0x0a, 0x82, 0xe0, 0x82, 0xc1, 0x82, 0xc4, 0x82, 0xa2, 0x82, 0xdc, 0x82, 0xb9, 0x82 ; 0211CDF0
	.byte 0xf1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211CE00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211CE10

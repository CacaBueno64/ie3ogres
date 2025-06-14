
	.include "/macros/function.inc"
	.include "/include/overlay29.inc"

	.text
	arm_func_start FUN_ov29_02119f00
FUN_ov29_02119f00: ; 0x02119F00
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r3, #0
	strb r1, [sp, #3]
	strh r2, [sp, #4]
	strb r3, [sp, #2]
	sub r1, sp, #4
	strb r3, [r1]
	ldr r2, [r1]
	add r1, sp, #2
	bl FUN_ov29_02120468
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov29_02119f00

	arm_func_start FUN_ov29_02119f34
FUN_ov29_02119f34: ; 0x02119F34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	mov r3, #0
	sub r4, sp, #4
	strb r3, [r4]
	mov r5, r2
	mov r6, r1
	ldr r2, [r4]
	add r1, sp, #4
	mov r7, r0
	bl FUN_ov29_0211fce4
	ldmia r7, {r0, r1}
	sub r1, r1, #1
	add r4, r1, r0
	ldr r8, _02119FBC ; =0x51EB851F
	ldr r3, [r7, #0xc]
	umull r0, r2, r4, r8
	ldr r1, [r7, #0x14]
	add r0, r3, r2, lsr #3
	bl FUN_0201fbc8
	umull r0, r3, r4, r8
	ldr r0, [r7, #8]
	mov r2, r5
	ldr r7, [r0, r1, lsl #2]
	mov r3, r3, lsr #3
	mov r5, #0x19
	umull r0, r3, r5, r3
	sub r3, r4, r0
	mov r0, #0x28
	mla r0, r3, r0, r7
	mov r1, r6
	bl FUN_ov29_02119fc0
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02119FBC: .word 0x51EB851F
	arm_func_end FUN_ov29_02119f34

	arm_func_start FUN_ov29_02119fc0
FUN_ov29_02119fc0: ; 0x02119FC0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r1, r6
	mov r0, #0
	mov r2, #0x20
	bl FUN_0200787c
	mov r0, r6
	mov r1, r5
	bl FUN_02023e98
	str r6, [r6, #0x20]
	str r4, [r6, #0x24]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov29_02119fc0

	arm_func_start FUN_ov29_02119ff8
FUN_ov29_02119ff8: ; 0x02119FF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0xb8]
	cmp r0, #0
	bne _0211A030
	ldr r0, _0211A03C ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0xb8]
_0211A030:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0xb8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A03C: .word 0x02099F38
	arm_func_end FUN_ov29_02119ff8

	arm_func_start FUN_ov29_0211a040
FUN_ov29_0211a040: ; 0x0211A040
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _0211A0CC ; =0x02099F38
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
_0211A0CC: .word 0x02099F38
	arm_func_end FUN_ov29_0211a040

	arm_func_start FUN_ov29_0211a0d0
FUN_ov29_0211a0d0: ; 0x0211A0D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xb8]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A108 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0xb8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A108: .word 0x02099F38
	arm_func_end FUN_ov29_0211a0d0

	arm_func_start FUN_ov29_0211a10c
FUN_ov29_0211a10c: ; 0x0211A10C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A154 ; =0x02099F38
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
_0211A154: .word 0x02099F38
	arm_func_end FUN_ov29_0211a10c

	arm_func_start FUN_ov29_0211a158
FUN_ov29_0211a158: ; 0x0211A158
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #0
	ldr r3, _0211A1BC ; =0x02123664
	add r0, r5, #0x124
	mov r4, r1
	str r3, [r5]
	str r2, [r5, #0xf4]
	str r2, [r5, #0xf8]
	str r2, [r5, #0xfc]
	str r2, [r5, #0x100]
	str r2, [r5, #0x104]
	str r2, [r5, #0x108]
	str r2, [r5, #0x10c]
	str r2, [r5, #0x110]
	str r2, [r5, #0x114]
	str r2, [r5, #0x118]
	str r2, [r5, #0x11c]
	str r2, [r5, #0x120]
	bl  FUN_ov16_02110558
	add r0, r5, #0x1a0
	bl FUN_0206c0d8
	mov r0, r5
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A1BC: .word 0x02123664
	arm_func_end FUN_ov29_0211a158

	arm_func_start FUN_ov29_0211a1c0
FUN_ov29_0211a1c0: ; 0x0211A1C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1a0
	bl FUN_0206c110
	add r0, r4, #0x124
	bl  FUN_ov16_02110578
	add r0, r4, #0x10c
	bl FUN_ov29_02120398
	add r0, r4, #0xf4
	bl FUN_ov29_02120af0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov29_0211a1c0

	arm_func_start FUN_ov29_0211a1f0
FUN_ov29_0211a1f0: ; 0x0211A1F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1a0
	bl FUN_0206c110
	add r0, r4, #0x124
	bl  FUN_ov16_02110578
	add r0, r4, #0x10c
	bl FUN_ov29_02120398
	add r0, r4, #0xf4
	bl FUN_ov29_02120af0
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov29_0211a1f0

	arm_func_start FUN_ov29_0211a228
FUN_ov29_0211a228: ; 0x0211A228
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	bl  FUN_ov16_020f1d64
	mov r0, #0xe
	bl  FUN_ov16_020f3f60
	ldr r5, _0211A620 ; =0x0209AC44
	mov r4, #2
	mov r0, r5
	mov r1, r4
	bl FUN_0202cf00
	ldr r2, _0211A624 ; =0x021236D0
	mov r0, r5
	mov r1, r4
	bl FUN_0202cdd4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211A628 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A62C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r0, _0211A630 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	mov r0, #0x4000000
	ldr r1, [r0]
	mov r4, #0
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r7, #8]
	add r0, r7, #0xc
	mov r1, r4
	mov r2, #0x30
	bl MemWrite
	add r0, r7, #0x3c
	mov r1, r4
	mov r2, #0x78
	bl MemWrite
	mov r5, #0x3c
	add r0, r7, #0xb8
	mov r1, r4
	mov r2, r5
	bl MemWrite
	sub r1, r5, #0x3d
	add r0, r7, #0x100
	strh r1, [r0, #0xfa]
	strh r4, [r0, #0xfc]
	mov r0, #0x20
	strb r0, [r7, #0x1ff]
	add r0, r7, #0x200
	strb r4, [r7, #0x1d7]
	strb r1, [r7, #0x1e8]
	strb r1, [r7, #0x1f8]
	strb r4, [r7, #0x1d3]
	strb r4, [r7, #0x1d4]
	strb r4, [r7, #0x1d5]
	strb r4, [r7, #0x200]
	strb r4, [r7, #0x201]
	strb r4, [r7, #0x202]
	strb r4, [r7, #0x1e9]
	strb r4, [r7, #0x1ea]
	strb r4, [r7, #0x1eb]
	strh r4, [r0, #4]
	mov r1, #0x10
	b _0211A358
_0211A33C:
	mov r2, r4, lsl #6
	add r0, r7, r4, lsl #1
	add r2, r2, #0x28
	add r0, r0, #0x100
	strh r2, [r0, #0xec]
	strh r1, [r0, #0xf2]
	add r4, r4, #1
_0211A358:
	cmp r4, #3
	blt _0211A33C
	add r0, r7, #0x1d8
	mov r1, #0
	mov r2, #0x10
	bl MemWrite
	ldr r5, _0211A634 ; =0x02099F78
	ldr r1, _0211A638 ; =0x021236D8
	mov r0, r5
	bl FUN_020418b0
	ldr r4, _0211A63C ; =0x020A0700
	ldr r1, _0211A640 ; =0x021236E4
	ldrb r2, [r4, r0]
	mov r0, r5
	strb r2, [r7, #0x1d0]
	bl FUN_020418b0
	ldrb r2, [r4, r0]
	ldr r1, _0211A644 ; =0x021236F0
	mov r0, r5
	strb r2, [r7, #0x1d1]
	bl FUN_020418b0
	ldrb r1, [r4, r0]
	ldr r0, _0211A648 ; =0x020A9C40
	strb r1, [r7, #0x1d2]
	bl FUN_020460fc
	and r5, r0, #0xff
	ldr r4, _0211A64C ; =0x66666667
	mov r3, r5, lsr #0x1f
	smull r1, r6, r4, r5
	add r6, r3, r6, asr #2
	strb r0, [r7, #0x1d6]
	mov r2, #0xa
	smull r0, r1, r2, r6
	sub r6, r5, r0
	cmp r6, #1
	bne _0211A400
	smull r0, r1, r4, r5
	add r1, r3, r1, asr #2
	cmp r1, #1
	blt _0211A400
	cmp r1, #0x12
	ble _0211A410
_0211A400:
	ldr r0, _0211A648 ; =0x020A9C40
	mov r1, #0xb
	strb r1, [r7, #0x1d6]
	bl FUN_020460f0
_0211A410:
	ldrb r1, [r7, #0x1d6]
	ldr r2, _0211A64C ; =0x66666667
	mov r6, #0
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #2
	str r3, [r7, #0x1cc]
	str r6, [sp]
	ldr r1, [r7, #0x1cc]
	mov r0, #0x24
	mul r2, r1, r0
	add r5, sp, #4
	mov r4, #1
	ldr r0, _0211A650 ; =0x021236FC
	mov r1, r5
	mov r3, r4
	add r2, r2, #0x20
	bl  FUN_ov16_020f3218
	ldr r1, [sp, #4]
	mov r0, r5
	ldrb r1, [r1]
	strb r1, [r7, #0x269]
	bl  FUN_ov16_020f33fc
	mov r5, #4
	mov r1, r6
	mov r2, r5
	add r0, r7, #0x198
	strb r4, [r7, #0x1ca]
	str r6, [r7, #0xb4]
	bl MemWrite
	add r0, r7, #0x198
	mov r1, r4
	bl  FUN_ov16_020f5278
	ldr r0, _0211A654 ; =0x0212371C
	add r1, r7, #0xc
	strb r6, [r7, #0x1c8]
	bl  FUN_ov16_020f3054
	ldr r0, _0211A658 ; =0x02123738
	add r1, r7, #0x18
	bl  FUN_ov16_020f3054
	ldr r0, _0211A65C ; =0x02123750
	add r1, r7, #0x24
	bl  FUN_ov16_020f3054
	ldr r0, _0211A660 ; =0x0209BA20
	bl FUN_0204eba0
	add r0, r7, #0x1a0
	mov r1, r4
	bl FUN_0206c158
	add r0, r7, #0x1a0
	bl  FUN_ov16_020efa04
	add r0, r7, #0xf4
	bl FUN_ov29_021204e8
	add r0, r7, #0x10c
	bl FUN_ov29_0211fd74
	mov r1, r4
	add r0, r7, #0xf4
	mov r2, r6
	bl FUN_ov29_02119f00
	add r0, r7, #0xf4
	mov r1, #2
	mov r2, r6
	bl FUN_ov29_02119f00
	mov r1, r5
	add r0, r7, #0xf4
	mov r2, r6
	bl FUN_ov29_02119f00
	add r0, r7, #0xf4
	mov r1, #3
	mov r2, r6
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r7, #0xf4
	mov r1, #0xc
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r7, #0xf4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r7, #0xf4
	mov r1, #0xf
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r7, #0xf4
	mov r1, #0x10
	bl FUN_ov29_02119f00
	add r0, r7, #0xf4
	mov r1, #0x12
	mov r2, r6
	bl FUN_ov29_02119f00
	add r0, r7, #0xf4
	mov r1, #0x11
	mov r2, r6
	bl FUN_ov29_02119f00
	add r0, r7, #0xf4
	mov r1, #0x1a
	mov r2, r6
	bl FUN_ov29_02119f00
	ldrb r0, [r7, #0x1d7]
	mov r2, r6
	add r0, r7, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	add r0, r7, #0xf4
	beq _0211A5BC
	mov r1, #0x38
	b _0211A5C0
_0211A5BC:
	mov r1, #0x39
_0211A5C0:
	bl FUN_ov29_02119f00
	mov r4, #0
	mov r2, r4
	add r0, r7, #0xf4
	mov r1, #0x3e
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r7, #0xf4
	mov r1, #0x2d
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r7, #0xf4
	mov r1, #0x36
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r7, #0xf4
	mov r1, #0x42
	bl FUN_ov29_02119f00
	add r0, r7, #0xf4
	mov r2, r4
	mov r1, #0x44
	bl FUN_ov29_02119f00
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A620: .word 0x0209AC44
_0211A624: .word 0x021236D0
_0211A628: .word 0x02099EB4
_0211A62C: .word 0x02099ED4
_0211A630: .word 0x02099F38
_0211A634: .word 0x02099F78
_0211A638: .word 0x021236D8
_0211A63C: .word 0x020A0700
_0211A640: .word 0x021236E4
_0211A644: .word 0x021236F0
_0211A648: .word 0x020A9C40
_0211A64C: .word 0x66666667
_0211A650: .word 0x021236FC
_0211A654: .word 0x0212371C
_0211A658: .word 0x02123738
_0211A65C: .word 0x02123750
_0211A660: .word 0x0209BA20
	arm_func_end FUN_ov29_0211a228

	arm_func_start FUN_ov29_0211a664
FUN_ov29_0211a664: ; 0x0211A664
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r4, #0
	b _0211A684
_0211A674:
	mov r0, r10
	mov r1, r4
	bl FUN_ov29_0211a10c
	add r4, r4, #1
_0211A684:
	cmp r4, #0x1e
	blt _0211A674
	mov r4, #0
	b _0211A6A8
_0211A694:
	mov r0, r10
	mov r1, r4
	bl FUN_ov29_0211a0d0
	add r0, r4, #1
	and r4, r0, #0xff
_0211A6A8:
	cmp r4, #0xf
	blo _0211A694
	mov r9, #0
	add r7, r10, #0xc
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
	b _0211A6FC
_0211A6C8:
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
_0211A6FC:
	cmp r9, #4
	blt _0211A6C8
	ldr r1, [r10, #0xb4]
	cmp r1, #0
	beq _0211A71C
	ldr r0, _0211A7E4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211A71C:
	add r0, r10, #0x124
	bl  FUN_ov16_021105c0
	add r0, r10, #0x198
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r10, #0x198
	bl  FUN_ov16_020f52c4
	ldr r0, _0211A7E8 ; =0x0209BA20
	bl FUN_0204ec3c
	ldr r0, _0211A7EC ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	ldr r5, _0211A7F0 ; =0x02099F78
	ldr r1, _0211A7F4 ; =0x02123768
	mov r0, r5
	bl FUN_020418b0
	mov r1, r0
	ldr r4, _0211A7F8 ; =0x020A0700
	ldrb r2, [r10, #0x1d0]
	mov r0, r4
	bl  FUN_ov16_020eef64
	mov r0, r5
	ldr r1, _0211A7FC ; =0x02123774
	bl FUN_020418b0
	mov r1, r0
	mov r0, r4
	ldrb r2, [r10, #0x1d1]
	bl  FUN_ov16_020eef64
	mov r0, r5
	ldr r1, _0211A800 ; =0x02123780
	bl FUN_020418b0
	ldrb r2, [r10, #0x1d2]
	mov r1, r0
	mov r0, r4
	bl  FUN_ov16_020eef64
	ldr r0, _0211A804 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A808 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r0, _0211A7E4 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r0, _0211A80C ; =0x0209AC44
	mov r1, #2
	bl FUN_0202cf00
	mov r0, #6
	bl  FUN_ov16_020f3f60
	bl  FUN_ov16_020f1e14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A7E4: .word 0x02099F38
_0211A7E8: .word 0x0209BA20
_0211A7EC: .word 0x0209A0AC
_0211A7F0: .word 0x02099F78
_0211A7F4: .word 0x02123768
_0211A7F8: .word 0x020A0700
_0211A7FC: .word 0x02123774
_0211A800: .word 0x02123780
_0211A804: .word 0x02099EB4
_0211A808: .word 0x02099ED4
_0211A80C: .word 0x0209AC44
	arm_func_end FUN_ov29_0211a664

	arm_func_start FUN_ov29_0211a810
FUN_ov29_0211a810: ; 0x0211A810
	bx lr
	arm_func_end FUN_ov29_0211a810

	arm_func_start FUN_ov29_0211a814
FUN_ov29_0211a814: ; 0x0211A814
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b4
	ldr r1, _0211B798 ; =0x0209A110
	ldr r5, _0211B79C ; =0x02099ED4
	mov r9, r0
	mov r10, #0
	ldr r0, [r5]
	ldr r1, [r1]
	mov r4, r10
	bl  FUN_ov16_0210e10c
	mov r0, r9
	bl FUN_ov29_0211d228
	cmp r0, #0
	ldrne r0, [r9, #0xf8]
	cmpne r0, #0
	addeq sp, sp, #0x1b4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #0x1b4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A86C:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r1, #0
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	mov r8, #0
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r5, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r0, r1, r0, lsl #2
	ldrb r0, [r0, #1]
	cmp r0, #0x48
	bhi _0211D08C
	ldr r5, _0211B7A0 ; =0x02099EB4
	mov r6, #2
	add pc, pc, r0, lsl #2
	mov r0, r0
	b _0211D08C
_0211A8B8:
    b       _0211AC38
    b       _0211AE78
    b       _0211AFA8
    b       _0211B020
    b       _0211B29C
    b       _0211B3F4
    b       _0211B560
    b       _0211B858
    b       _0211BBD4
    b       _0211BE78
    b       _0211C030
    b       _0211C280
    b       _0211BA44
    b       _0211C1DC
    b       _0211ACBC
    b       _0211AE8C
    b       _0211AFD4
    b       _0211B0D4
    b       _0211B304
    b       _0211B488
    b       _0211B640
    b       _0211B914
    b       _0211BC74
    b       _0211BEF8
    b       _0211C080
    b       _0211C2D8
    b       _0211BA58
    b       _0211C23C
    b       _0211BA30
    b       _0211ACB8
    b       _0211AE88
    b       _0211AFB8
    b       _0211B080
    b       _0211B2E0
    b       _0211B464
    b       _0211B5B0
    b       _0211B8EC
    b       _0211BC24
    b       _0211BEBC
    b       _0211C054
    b       _0211C2B0
    b       _0211BA4C
    b       _0211C1FC
    b       _0211ABE4
    b       _0211AB40
    b       _0211AB54
    b       _0211AB9C
    b       _0211CAD8
    b       _0211CB10
    b       _0211CC28
    b       _0211CD10
    b       _0211CE14
    b       _0211AA34
    b       _0211AAC4
    b       _0211A9D8
    b       _0211C380
    b       _0211C814
    b       _0211C588
    b       _0211C638
    b       _0211C42C
    b       _0211C4D8
    b       _0211C6EC
    b       _0211C8C4
    b       _0211C974
    b       _0211CA24
    b       _0211B228
    b       _0211B260
    b       _0211AE34
    b       _0211AE58
    b       _0211CF20
    b       _0211CFB8
    b       _0211AB08
_0211A9D8:
	ldrb r1, [r9, #0x1d7]
	ldrb r2, [r9, #0x1d6]
	mov r0, r9
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	and r1, r1, #0xff
	add r2, r9, #0x1d8
	bl FUN_ov29_0211f2dc
	mov r1, r8
	add r0, r9, #0x1a0
	bl FUN_0206c5d8
	add r0, r9, #0x100
	ldrh r1, [r0, #0xd8]
	cmp r1, #0
	beq _0211AA30
	ldrb r3, [r9, #0x269]
	mov r1, r8
	mov r2, r8
	str r3, [sp]
	ldrh r3, [r0, #0xd8]
	add r0, r9, #0x1a0
	bl FUN_0206c300
_0211AA30:
	b _0211ABB4
_0211AA34:
	mov r1, r8
	add r0, r9, #0x208
	mov r2, #0x60
	bl MemWrite
	ldrb r0, [r9, #0x1c8]
	add r1, r9, #0x200
	mov r5, #4
	cmp r0, #0
	streq r6, [r9, #0x208]
	movne r0, #9
	strne r0, [r9, #0x208]
	add r0, r9, #0x100
	ldrh r2, [r0, #0xd8]
	ldr r0, [r9, #4]
	strh r2, [r1, #0xc]
	ldr r2, [r0]
	add r1, r9, #0x208
	ldr r2, [r2, #0x3c]
	blx r2
	cmp r0, #0
	beq _0211D08C
	mov r0, r9
	mov r2, r5
	mov r1, #0xa
	bl FUN_ov29_02119ff8
	str r10, [sp]
	mov r1, r0
	ldr r0, _0211B7A4 ; =0x02099F38
	ldrb r3, [r9, #0x1c8]
	ldr r0, [r0]
	mov r2, r5
	bl  FUN_ov16_0211401c
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r10, r1
	b _0211D06C
_0211AAC4:
	mov r1, r8
	add r0, r9, #0x208
	mov r2, #0x60
	bl MemWrite
	mov r1, #0xe
	str r1, [r9, #0x208]
	ldr r0, [r9, #4]
	add r2, r9, #0x200
	mov r1, #1
	strh r1, [r2, #0xc]
	ldr r2, [r0]
	add r1, r9, #0x208
	ldr r2, [r2, #0x3c]
	blx r2
	cmp r0, #0
	beq _0211D08C
	b _0211C2A0
_0211AB08:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211D08C
	ldr r5, [r9, #4]
	mov r1, r8
	mov r0, r5
	bl FUN_02041f2c
	mov r0, r5
	mov r1, #1
	bl FUN_02041f2c
	b _0211C2A0
_0211AB40:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	b _0211C1EC
_0211AB54:
	mov r5, #8
	mov r0, r8
	mov r1, r5
	bl  FUN_ov16_020f1560
	mov r0, #1
	mov r1, r5
	bl  FUN_ov16_020f1560
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r8, r1
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r0, [r9, #0xfc]
	and r2, r5, #0xff
	ldr r1, [r0, r1, lsl #2]
	mov r0, #1
	strb r0, [r1, r2, lsl #2]
_0211AB9C:
	add r0, r9, #0x200
	ldrh r1, [r0, #4]
	cmp r1, #0
	subne r1, r1, #1
	strneh r1, [r0, #4]
	bne _0211D08C
_0211ABB4:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r1, #0
_0211ABC0:
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r0, [r9, #0xfc]
	ldr r2, [r0, r1, lsl #2]
	and r1, r5, #0xff
	mov r0, #1
	strb r0, [r2, r1, lsl #2]
	b _0211D08C
_0211ABE4:
	b _0211AC2C
_0211ABE8:
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211AC28
	ldr r0, _0211B7A4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AC28
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, _0211B7A4 ; =0x02099F38
	mov r2, r10
	ldr r0, [r0]
	mov r3, r10
	bl FUN_02059038
_0211AC28:
	add r8, r8, #1
_0211AC2C:
	cmp r8, #0x1e
	blt _0211ABE8
	b _0211ABB4
_0211AC38:
	ldr r1, _0211B7A8 ; =0x0212378C
	mov r2, r8
	add r0, r9, #0x10c
	bl FUN_ov29_02119f34
	ldr r1, _0211B7AC ; =0x0212379C
	mov r2, #1
	add r0, r9, #0x10c
	bl FUN_ov29_02119f34
	ldr r1, _0211B7B0 ; =0x021237AC
	add r0, r9, #0x10c
	mov r2, r6
	bl FUN_ov29_02119f34
	ldr r1, _0211B7B4 ; =0x021237BC
	add r0, r9, #0x10c
	mov r2, #3
	bl FUN_ov29_02119f34
	ldr r1, _0211B7B8 ; =0x021237CC
	add r0, r9, #0x10c
	mov r2, #4
	bl FUN_ov29_02119f34
	ldr r1, _0211B7BC ; =0x021237DC
	add r0, r9, #0x10c
	mov r2, #5
	bl FUN_ov29_02119f34
	ldr r1, _0211B7C0 ; =0x021237EC
	add r0, r9, #0x10c
	mov r2, #6
	bl FUN_ov29_02119f34
	add r0, r9, #0x10c
	ldr r1, _0211B7C4 ; =0x021237FC
	mov r2, #0x10
	b _0211BEB4
_0211ACB8:
	b _0211C1EC
_0211ACBC:
	mov r7, #8
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov29_02119ff8
	mov r5, r0
	mov r11, #0x18
	str r11, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r6, #0x12c
	str r6, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x3c]
	mov r0, r9
	mov r1, r5
	mov r2, #1
	bl FUN_ov29_0211a040
	str r8, [sp]
	str r8, [sp, #4]
	str r6, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r5
	mov r2, #2
	bl FUN_ov29_0211a040
	mov r0, #0xe8
	stmia sp, {r0, r8}
	str r6, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x44]
	mov r0, r9
	mov r1, r5
	mov r2, #3
	bl FUN_ov29_0211a040
	str r11, [sp]
	str r8, [sp, #4]
	str r6, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x48]
	mov r0, r9
	mov r1, r5
	mov r2, #4
	bl FUN_ov29_0211a040
	str r7, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	mov r6, #0xc8
	str r6, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x4c]
	mov r0, r9
	mov r1, r5
	mov r2, #5
	bl FUN_ov29_0211a040
	mov r11, #0x50
	str r11, [sp]
	str r11, [sp, #4]
	str r6, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x50]
	mov r0, r9
	mov r1, r5
	mov r2, #6
	bl FUN_ov29_0211a040
	mov r0, #0xb8
	stmia sp, {r0, r11}
	str r6, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x54]
	mov r0, r9
	mov r1, r5
	mov r2, #7
	bl FUN_ov29_0211a040
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x94
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x7c]
	mov r0, r9
	mov r1, r5
	mov r2, r7
	bl FUN_ov29_0211a040
	ldr r0, _0211B7A0 ; =0x02099EB4
	stmia sp, {r7, r8}
	ldr r0, [r0]
	mov r1, #1
	mov r3, r5
	mov r2, #9
	b _0211C378
_0211AE34:
	ldr r0, _0211B7A0 ; =0x02099EB4
	mov r1, #9
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	strneb r8, [r4, #0x10]
	movne r0, #1
	strneb r0, [r4, #0x12]
	b _0211ABB4
_0211AE58:
	ldr r0, _0211B7A0 ; =0x02099EB4
	mov r1, #9
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	movne r0, #1
	strneb r0, [r4, #0x10]
	b _0211ABB4
_0211AE78:
	ldr r1, _0211B7C8 ; =0x0212380C
	add r0, r9, #0x10c
	mov r2, #0xd
_0211AE84:
	b _0211C1E8
_0211AE88:
	b _0211C1EC
_0211AE8C:
	mov r0, r9
	mov r1, #1
	mov r2, #9
	bl FUN_ov29_02119ff8
	mov r5, r0
	b _0211AF9C
_0211AEA4:
	add r0, r9, r8
	str r0, [sp, #0x18]
	add r0, r8, r8, lsl #1
	mov r6, #1
	mov r7, #0
	str r0, [sp, #0x1c]
	b _0211AF88
_0211AEC0:
	rsb r0, r7, #2
	bl FUN_0201f1c4
	mov r3, r1
	mov r2, r0
	ldr r1, _0211B7CC ; =0x40240000
	mov r0, r10
	bl FUN_02028820
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r11, r1
	ldrb r1, [r0, #0x1d0]
	ldrb r0, [r0, #0x1d3]
	sub r0, r1, r0
	bl FUN_0201f1c4
	ldr r2, [sp, #0x14]
	mov r3, r11
	bl FUN_02020af8
	bl FUN_0201fe20
	ldr r2, _0211B7D0 ; =0x66666667
	smull r3, r1, r2, r0
	mov r2, r0, lsr #0x1f
	add r1, r2, r1, asr #2
	mov r2, #0xa
	smull r1, r3, r2, r1
	subs r1, r0, r1
	mov r0, r7, lsl #3
	add r0, r0, #0x38
	movne r6, r10
	add r0, r0, r8, lsl #6
	cmp r7, #2
	str r0, [sp]
	moveq r6, r10
	mov r0, #0xa0
	mul r0, r6, r0
	add r0, r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x23
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r3, r7, #1
	add r2, r3, r2
	ldr r3, [r9, #0x70]
	mov r0, r9
	mov r1, r5
	and r3, r3, #0xff
	bl FUN_ov29_0211a040
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
_0211AF88:
	cmp r7, #3
	blo _0211AEC0
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
_0211AF9C:
	cmp r8, #3
	blo _0211AEA4
	b _0211ABB4
_0211AFA8:
	ldr r1, _0211B7D4 ; =0x0212381C
	add r0, r9, #0x10c
	mov r2, #0xe
	b _0211AE84
_0211AFB8:
	mov r0, r9
	mov r1, #0xe
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, r6
	bl FUN_ov29_0211a0d0
	b _0211C1EC
_0211AFD4:
	mov r5, #0xe
	mov r0, r9
	mov r2, r5
	mov r1, r6
	bl FUN_ov29_02119ff8
	ldrb r1, [r9, #0x1d7]
	mov r3, #8
	mov r2, r5
	mov r1, r1, lsl #6
	add r1, r1, #0x20
	str r1, [sp]
	mov r1, r0
	str r3, [sp, #4]
	mov r0, #0x93
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x74]
	mov r0, r9
	b _0211C278
_0211B020:
	ldr r1, _0211B7D8 ; =0x0212382C
	add r0, r9, #0x10c
	mov r2, #0xa
	bl FUN_ov29_02119f34
	ldr r1, _0211B7DC ; =0x0212383C
	add r0, r9, #0x10c
	mov r2, #7
	bl FUN_ov29_02119f34
	ldr r1, _0211B7E0 ; =0x0212384C
	add r0, r9, #0x10c
	mov r2, #0xb
	bl FUN_ov29_02119f34
	ldr r1, _0211B7E4 ; =0x0212385C
	add r0, r9, #0x10c
	mov r2, #8
	bl FUN_ov29_02119f34
	ldr r1, _0211B7E8 ; =0x0212386C
	add r0, r9, #0x10c
	mov r2, #0xc
	bl FUN_ov29_02119f34
	add r0, r9, #0x10c
	ldr r1, _0211B7EC ; =0x0212387C
	mov r2, #9
	b _0211BEB4
_0211B080:
	mov r0, r9
	mov r1, #0xa
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0xb
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0xc
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #7
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #8
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #9
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #4
	b _0211C2D0
_0211B0D4:
	mov r0, r9
	mov r1, #4
	mov r2, #6
	mov r6, #0x10
	bl FUN_ov29_02119ff8
	mov r5, r0
	mov r7, #0xbe
	b _0211B14C
_0211B0F4:
	add r0, r9, r8
	ldrb r0, [r0, #0x1d0]
	mov r1, r8, lsl #6
	add r1, r1, #0x28
	cmp r0, #1
	str r1, [sp]
	movhi r0, #1
	movls r0, r10
	stmib sp, {r6, r7}
	add r0, r0, r0, lsl #1
	add r1, r8, #7
	add r0, r1, r0
	str r10, [sp, #0xc]
	add r0, r9, r0, lsl #2
	ldr r3, [r0, #0x3c]
	mov r0, r9
	mov r1, r5
	add r2, r8, #1
	bl FUN_ov29_0211a040
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
_0211B14C:
	cmp r8, #3
	blo _0211B0F4
	mov r6, #0
	ldr r11, _0211B7A0 ; =0x02099EB4
	mov r8, #1
	mov r7, r6
	b _0211B21C
_0211B168:
	add r0, r9, r7
	ldrb r0, [r0, #0x1d0]
	add r4, r7, #7
	mov r1, r5
	cmp r0, #0
	movne r0, r8
	moveq r0, #0
	add r3, r0, r0, lsl #1
	mov r0, r7, lsl #6
	add r0, r0, #0x28
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	add r3, r4, r3
	str r6, [sp, #0xc]
	add r3, r9, r3, lsl #2
	ldr r3, [r3, #0x3c]
	mov r0, r9
	add r2, r7, #4
	bl FUN_ov29_0211a040
	add r0, r7, #1
	add r2, r7, #6
	stmia sp, {r0, r6}
	mov r2, r2, lsl #0x10
	ldr r0, [r11]
	mov r1, r8
	mov r2, r2, lsr #0x10
	mov r3, r5
	bl  FUN_ov16_0210fc74
	add r1, r7, #6
	mov r1, r1, lsl #0x10
	ldr r0, [r11]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	mov r4, r0
	add r0, r9, r7
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	add r0, r7, #1
	strneb r8, [r4, #0x12]
	mov r0, r0, lsl #0x10
	streqb r6, [r4, #0x12]
	mov r7, r0, lsr #0x10
_0211B21C:
	cmp r7, #3
	blo _0211B168
	b _0211B834
_0211B228:
	b _0211B254
_0211B22C:
	add r0, r8, #6
	mov r1, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	strneb r10, [r4, #0x10]
	mov r8, r0, lsr #0x10
_0211B254:
	cmp r8, #3
	blo _0211B22C
	b _0211ABB4
_0211B260:
	b _0211B290
_0211B264:
	add r0, r8, #6
	mov r1, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	movne r0, #1
	strneb r0, [r4, #0x10]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
_0211B290:
	cmp r8, #3
	blo _0211B264
	b _0211ABB4
_0211B29C:
	add r5, sp, #0x2c
	mov r0, r8
	mov r1, r5
	mov r2, #0x20
	bl FUN_0200787c
	ldrb r2, [r9, #0x1d7]
	ldr r1, _0211B7F0 ; =0x0212388C
	mov r0, r5
	bl FUN_02023c40
	mov r1, r5
	add r0, r9, #0x10c
	mov r2, #0xf
	bl FUN_ov29_02119f34
	add r0, r9, #0x10c
	ldr r1, _0211B7F4 ; =0x0212389C
	mov r2, #0x11
	b _0211BEB4
_0211B2E0:
	mov r0, r9
	mov r1, #0xf
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x11
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #5
	b _0211C2D0
_0211B304:
	mov r0, r9
	mov r2, r6
	mov r1, #5
	bl FUN_ov29_02119ff8
	mov r4, r0
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x58
	str r0, [sp, #4]
	mov r0, #0x95
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x78]
	mov r0, r9
	mov r1, r4
	mov r2, #1
	bl FUN_ov29_0211a040
	mov r5, #0x60
	str r5, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x80]
	mov r0, r9
	mov r1, r4
	mov r2, r6
	bl FUN_ov29_0211a040
	ldr r0, _0211B7A4 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r6
	mov r3, r8
	bl  FUN_ov16_02113a80
	mov r3, r4
	str r6, [sp]
	mov r0, #1
	mov r6, #0xb
	ldr r4, _0211B7A0 ; =0x02099EB4
	str r0, [sp, #4]
	mov r1, r0
	ldr r0, [r4]
	mov r2, r6
	bl  FUN_ov16_0210fc74
	ldr r0, [r4]
	mov r1, r6
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B3F0
	strb r8, [r4, #0x10]
	mov r2, #1
	mov r1, r5
	strb r2, [r4, #0x12]
	mov r5, #0x34
	mov r2, #0x7c
	mov r3, #0x38
	str r5, [sp]
	bl  FUN_ov16_0210e674
_0211B3F0:
	b _0211B834
_0211B3F4:
	ldr r1, _0211B7F8 ; =0x021238AC
	add r0, r9, #0x10c
	mov r2, #0x12
	bl FUN_ov29_02119f34
	bl FUN_02023c6c
	ldr r2, _0211B7FC ; =0x2AAAAAAB
	mov r3, #6
	smull r1, r5, r2, r0
	add r5, r5, r0, lsr #31
	smull r1, r2, r3, r5
	sub r5, r0, r1
	add r6, r5, #5
	cmp r6, #0xa
	beq _0211B460
	add r5, sp, #0x2c
	mov r0, r8
	mov r1, r5
	mov r2, #0x20
	bl FUN_0200787c
	ldr r1, _0211B800 ; =0x021238BC
	mov r0, r5
	mov r2, r6
	bl FUN_02023c40
	mov r1, r5
	add r0, r9, #0x10c
	mov r2, #0x13
	bl FUN_ov29_02119f34
_0211B460:
	b _0211ABB4
_0211B464:
	mov r0, r9
	mov r1, #0x12
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x13
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #7
	b _0211C2D0
_0211B488:
	mov r0, r9
	mov r2, #1
	mov r1, #7
	bl FUN_ov29_02119ff8
	mov r5, r0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x94
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x84]
	mov r0, r9
	mov r1, r5
	mov r2, #1
	bl FUN_ov29_0211a040
	ldr r3, [r9, #0x88]
	cmp r3, #0
	beq _0211B504
	ldr r6, _0211B7A4 ; =0x02099F38
	mov r1, r5
	ldr r0, [r6]
	mov r2, #1
	and r3, r3, #0xff
	bl  FUN_ov16_02113890
	ldr r0, [r6]
	mov r1, r5
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_02113944
_0211B504:
	mov r1, #1
	str r1, [sp]
	mov r6, #0
	ldr r0, _0211B7A0 ; =0x02099EB4
	str r6, [sp, #4]
	ldr r0, [r0]
	mov r3, r5
	mov r2, #0xc
	mov r7, r1
	bl  FUN_ov16_0210fc74
	cmp r4, #0
	strneb r6, [r4, #0x10]
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r1, #0
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r0, [r9, #0xfc]
	ldr r1, [r0, r1, lsl #2]
	and r0, r5, #0xff
	strb r7, [r1, r0, lsl #2]
	b _0211D08C
_0211B560:
	ldr r1, _0211B804 ; =0x021238CC
	add r0, r9, #0x10c
	mov r2, #0x14
	bl FUN_ov29_02119f34
	bl FUN_02023c6c
	ldr r3, _0211B7D0 ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r2, r5, r3, r0
	add r5, r1, r5, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r5
	sub r5, r0, r1
	add r0, r5, #1
	mov r2, r0, lsl #5
	ldr r0, _0211B808 ; =0x021238DC
	add r1, r9, #0x30
	mov r3, #0x20
	str r8, [sp]
	bl  FUN_ov16_020f3218
	b _0211D060
_0211B5B0:
	mov r0, r9
	mov r1, #0x14
	bl FUN_ov29_0211a10c
	ldr r1, [r9, #0xb4]
	cmp r1, #0
	beq _0211B5E8
	ldr r0, _0211B7A4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_020591e8
	ldr r0, _0211B7A4 ; =0x02099F38
	ldr r1, [r9, #0xb4]
	ldr r0, [r0]
	bl FUN_02058ee0
	str r8, [r9, #0xb4]
_0211B5E8:
	mov r0, r9
	mov r1, #8
	bl FUN_ov29_0211a0d0
	mov r1, #1
	add r0, r9, #0x30
	bl  FUN_ov16_020f338c
	add r0, r9, #0x30
	bl  FUN_ov16_020f33fc
	ldr r0, [r9, #0xf4]
	ldr r1, [r9, #0x108]
	add r5, r10, r0
	ldr r0, [r9, #0x100]
	str r10, [r9, #0x30]
	add r0, r0, r5, lsr #8
	str r10, [r9, #0x34]
	strb r10, [r9, #0x38]
	strb r10, [r9, #0x39]
	strb r10, [r9, #0x3a]
	bl FUN_0201fbc8
	and r2, r5, #0xff
	ldr r0, [r9, #0xfc]
	b _0211CF1C
_0211B640:
	mov r0, r9
	mov r2, r6
	mov r1, #8
	bl FUN_ov29_02119ff8
	mov r5, r0
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0x93
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x8c]
	mov r0, r9
	mov r1, r5
	mov r2, #1
	bl FUN_ov29_0211a040
	ldr r0, [r9, #0xb4]
	cmp r0, #0
	bne _0211B6BC
	ldr r7, _0211B7A4 ; =0x02099F38
	mov r2, r6
	ldr r0, [r7]
	mov r1, #5
	bl FUN_02059630
	mov r1, r0
	str r1, [r9, #0xb4]
	ldr r0, [r7]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
_0211B6BC:
	ldr r7, _0211B7A4 ; =0x02099F38
	ldr r3, [r9, #0xb4]
	mov r8, #2
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, r6
	bl  FUN_ov16_02113d88
	mov r0, #0xa2
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, #0x40
	bl  FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, #0xa
	bl  FUN_ov16_021139bc
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, #0xbf
	bl  FUN_ov16_02113d08
	mov r1, r5
	mov r5, #1
	str r5, [sp]
	ldr r0, [r7]
	mov r2, r8
	mov r3, r8
	bl  FUN_ov16_02113ec0
	ldrb r0, [r9, #0x201]
	cmp r0, #2
	bne _0211B810
	add r7, sp, #0xb4
	ldr r1, _0211B80C ; =0x02123900
	mov r0, r7
	bl FUN_02023c40
	stmia sp, {r5, r6}
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r9, #0xb4]
	mov r0, r7
	b _0211B828
_0211B798: .word 0x0209A110
_0211B79C: .word 0x02099ED4
_0211B7A0: .word 0x02099EB4
_0211B7A4: .word 0x02099F38
_0211B7A8: .word 0x0212378C
_0211B7AC: .word 0x0212379C
_0211B7B0: .word 0x021237AC
_0211B7B4: .word 0x021237BC
_0211B7B8: .word 0x021237CC
_0211B7BC: .word 0x021237DC
_0211B7C0: .word 0x021237EC
_0211B7C4: .word 0x021237FC
_0211B7C8: .word 0x0212380C
_0211B7CC: .word 0x40240000
_0211B7D0: .word 0x66666667
_0211B7D4: .word 0x0212381C
_0211B7D8: .word 0x0212382C
_0211B7DC: .word 0x0212383C
_0211B7E0: .word 0x0212384C
_0211B7E4: .word 0x0212385C
_0211B7E8: .word 0x0212386C
_0211B7EC: .word 0x0212387C
_0211B7F0: .word 0x0212388C
_0211B7F4: .word 0x0212389C
_0211B7F8: .word 0x021238AC
_0211B7FC: .word 0x2AAAAAAB
_0211B800: .word 0x021238BC
_0211B804: .word 0x021238CC
_0211B808: .word 0x021238DC
_0211B80C: .word 0x02123900
_0211B810:
	stmia sp, {r5, r6}
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r0, [r9, #0x30]
	ldr r1, [r9, #0xb4]
_0211B828:
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_020f2304
_0211B834:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r1, #0
_0211B840:
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r0, [r9, #0xfc]
	and r2, r5, #0xff
	b _0211D080
_0211B858:
	ldrb r0, [r9, #0x201]
	mov r2, #0x15
	cmp r0, #2
	bne _0211B870
	ldr r1, _0211C798 ; =0x02123920
	b _0211B874
_0211B870:
	ldr r1, _0211C79C ; =0x02123930
_0211B874:
	add r0, r9, #0x10c
	bl FUN_ov29_02119f34
	ldrb r0, [r9, #0x201]
	cmp r0, #3
	bne _0211B8BC
	add r0, r9, #0x100
	ldrh r1, [r0, #0xe4]
	ldr r0, _0211C7A0 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	str r10, [sp]
	str r10, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r2, [r0, #0x22]
	ldr r0, [r9, #0x24]
	ldr r1, _0211C7A4 ; =0x02123940
	b _0211B8E0
_0211B8BC:
	str r10, [sp]
	str r10, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r9, #0x100
	ldrh r2, [r0, #0xd8]
	ldr r0, [r9, #0x18]
	ldr r1, _0211C7A8 ; =0x02123958
_0211B8E0:
	add r3, r9, #0x198
	bl  FUN_ov16_020f55b4
	b _0211ABB4
_0211B8EC:
	mov r0, r9
	mov r1, #0x15
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #9
	bl FUN_ov29_0211a0d0
	add r0, r9, #0x198
	sub r1, r8, #1
	bl  FUN_ov16_020f57b0
	b _0211D060
_0211B914:
	mov r0, r9
	mov r2, r6
	mov r1, #9
	bl FUN_ov29_02119ff8
	mov r5, r0
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x88
	str r0, [sp, #4]
	mov r7, #0x93
	str r7, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x90]
	mov r0, r9
	mov r1, r5
	mov r2, #1
	bl FUN_ov29_0211a040
	ldrb r0, [r9, #0x201]
	cmp r0, #3
	add r0, r9, #0x100
	bne _0211B9A8
	ldrh r1, [r0, #0xe4]
	ldr r0, _0211C7A0 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	ldrh r0, [r0, #0x22]
	add r1, r9, #0x198
	bl  FUN_ov16_020f5738
	mov r3, r0
	mov r0, #0x3c
	str r0, [sp]
	mov r0, #0x98
	stmib sp, {r0, r7}
	mov r1, r5
	mov r2, r6
	str r8, [sp, #0xc]
	mov r0, r9
	b _0211B9D8
_0211B9A8:
	ldrh r0, [r0, #0xd8]
	add r1, r9, #0x198
	bl  FUN_ov16_020f5738
	mov r1, #0x34
	str r1, [sp]
	mov r1, #0x90
	stmib sp, {r1, r7}
	mov r3, r0
	mov r0, r9
	str r8, [sp, #0xc]
	mov r1, r5
	mov r2, r6
_0211B9D8:
	bl FUN_ov29_0211a040
	ldrb r0, [r9, #0x201]
	mov r6, #1
	cmp r0, #2
	bne _0211B9F8
	ldr r0, _0211C7AC ; =0x0209AC44
	ldr r1, _0211C7B0 ; =0x0000800B
	b _0211BA14
_0211B9F8:
	cmp r0, #3
	bne _0211BA0C
	ldr r0, _0211C7AC ; =0x0209AC44
	ldr r1, _0211C7B4 ; =0x0000800A
	b _0211BA14
_0211BA0C:
	ldr r0, _0211C7AC ; =0x0209AC44
	ldr r1, _0211C7B8 ; =0x00008008
_0211BA14:
	bl FUN_0202cf6c
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r1, #0
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	b _0211CC10
_0211BA30:
	add r0, r9, #0x198
	bl  FUN_ov16_020f5868
	cmp r0, #0
	bne _0211D08C
	b _0211C1EC
_0211BA44:
	ldr r1, _0211C7BC ; =0x02123970
	b _0211C1E0
_0211BA4C:
	mov r0, r9
	mov r1, #0xd
	b _0211C204
_0211BA58:
	mov r0, r9
	mov r2, r6
	mov r1, #0xd
	bl FUN_ov29_02119ff8
	mov r5, r0
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0x93
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x8c]
	mov r0, r9
	mov r1, r5
	mov r2, #1
	bl FUN_ov29_0211a040
	ldr r0, [r9, #0xb4]
	cmp r0, #0
	bne _0211BAD4
	ldr r7, _0211B7A4 ; =0x02099F38
	mov r2, r6
	ldr r0, [r7]
	mov r1, #5
	bl FUN_02059630
	mov r1, r0
	str r1, [r9, #0xb4]
	ldr r0, [r7]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
_0211BAD4:
	ldr r7, _0211B7A4 ; =0x02099F38
	ldr r3, [r9, #0xb4]
	mov r8, #2
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, r6
	bl  FUN_ov16_02113d88
	mov r0, #0xa2
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, #0x40
	bl  FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, #0xa
	bl  FUN_ov16_021139bc
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, #0xbf
	bl  FUN_ov16_02113d08
	mov r1, r5
	mov r5, #1
	str r5, [sp]
	ldr r0, [r7]
	mov r2, r8
	mov r3, r8
	bl  FUN_ov16_02113ec0
	stmia sp, {r5, r6}
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r0, _0211C7C0 ; =0x02123980
	ldr r1, [r9, #0xb4]
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_020f2304
	ldr r0, _0211C7AC ; =0x0209AC44
	ldr r1, _0211C7C4 ; =0x00008009
	bl FUN_0202cf6c
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r6, r1, #0
	ldr r1, [r9, #0x108]
	add r0, r0, r6, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r6, #0xff
	ldr r1, [r2, r1, lsl #2]
	strb r5, [r1, r0, lsl #2]
	b _0211D08C
_0211BBD4:
	ldr r1, _0211C7C8 ; =0x021239A4
	add r0, r9, #0x10c
	mov r2, #0x16
	bl FUN_ov29_02119f34
	ldr r1, _0211C7CC ; =0x021239B4
	add r0, r9, #0x10c
	mov r2, #0x17
	bl FUN_ov29_02119f34
	ldr r1, _0211C7D0 ; =0x021239C4
	add r0, r9, #0x10c
	mov r2, #0x18
	bl FUN_ov29_02119f34
	ldr r1, _0211C7D4 ; =0x021239D4
	add r0, r9, #0x10c
	mov r2, #0x19
	bl FUN_ov29_02119f34
	add r0, r9, #0x10c
	ldr r1, _0211C7D8 ; =0x021239E4
	mov r2, #0x1a
	b _0211BEB4
_0211BC24:
	mov r0, r9
	mov r1, #0x16
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x17
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x18
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x19
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x1a
	bl FUN_ov29_0211a10c
	add r0, r9, #0x124
	bl  FUN_ov16_021105c0
	mov r0, r9
	mov r1, #0xa
	b _0211C2D0
_0211BC74:
	mov r7, #0xa
	mov r6, #4
	mov r0, r9
	mov r1, r7
	mov r2, r6
	bl FUN_ov29_02119ff8
	mov r1, #0x50
	str r1, [sp]
	mov r5, r0
	str r1, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	ldrb r2, [r9, #0x1c8]
	mov r0, r9
	mov r1, r5
	str r2, [sp, #0xc]
	ldr r3, [r9, #0xa4]
	mov r2, r6
	bl FUN_ov29_0211a040
	stmia sp, {r6, r8}
	ldr r0, _0211B7A0 ; =0x02099EB4
	mov r2, r7
	ldr r0, [r0]
	mov r3, r5
	mov r1, #1
	bl  FUN_ov16_0210fc74
	add r5, sp, #0xb4
	mov r0, r8
	mov r2, #0xff
	mov r1, r5
	bl FUN_0200787c
	add r1, r9, #0x100
	ldrh r1, [r1, #0xd8]
	ldr r0, _0211C7A0 ; =0x0209BA20
	add r2, sp, #0x4c
	bl FUN_0204bd64
	ldrb r0, [r9, #0x201]
	cmp r0, #1
	bne _0211BD18
	ldr r1, _0211C7DC ; =0x021239F4
	b _0211BD24
_0211BD18:
	cmp r0, #2
	bne _0211BD30
	ldr r1, _0211C7E0 ; =0x02123A4C
_0211BD24:
	add r2, sp, #0x68
	mov r0, r5
	bl FUN_02023c40
_0211BD30:
	add r0, r9, #0x124
	bl  FUN_ov16_021109a0
	add r0, r9, #0x124
	bl  FUN_ov16_021105c0
	mov r7, #0
	ldr r2, [r9, #0x94]
	add r0, r9, #0x124
	mov r1, r7
	bl  FUN_ov16_02110624
	mov r6, #2
	add r0, r9, #0x124
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_02110624
	mov r5, #5
	ldr r2, [r9, #0x98]
	add r0, r9, #0x124
	mov r1, r5
	bl  FUN_ov16_02110624
	ldr r2, [r9, #0x9c]
	add r0, r9, #0x124
	mov r1, #6
	bl  FUN_ov16_02110624
	ldr r2, [r9, #0xa0]
	add r0, r9, #0x124
	mov r1, #7
	bl  FUN_ov16_02110624
	mov r8, #0x14
	add r0, r9, #0x124
	mov r1, r8
	bl  FUN_ov16_02110864
	mov r11, #1
	add r0, r9, #0x124
	mov r1, r11
	mov r2, r11
	mov r3, r6
	bl  FUN_ov16_02110830
	mov r1, r8
	add r0, r9, #0x124
	bl  FUN_ov16_0211085c
	mov r8, #8
	add r0, r9, #0x124
	mov r1, #0x10
	mov r2, r8
	bl  FUN_ov16_021108b4
	add r0, r9, #0x124
	mov r1, #0x38
	mov r2, #0x68
	bl  FUN_ov16_021108c0
	mov r2, #0x68
	add r0, r9, #0x124
	mov r1, #0x98
	bl  FUN_ov16_021108cc
	mov r2, r8
	add r0, r9, #0x124
	mov r1, #0xf
	bl  FUN_ov16_021108e4
	mov r1, r5
	add r0, r9, #0x124
	mov r2, #3
	bl  FUN_ov16_021108f0
	mov r1, r6
	add r0, r9, #0x124
	add r2, sp, #0xb4
	mov r3, r11
	str r11, [sp]
	bl  FUN_ov16_02110938
	mov r2, r7
	add r0, r9, #0x124
	mov r1, r11
	bl  FUN_ov16_02110a04
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r1, #0
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r5, #0xff
	ldr r1, [r2, r1, lsl #2]
	strb r11, [r1, r0, lsl #2]
	b _0211D08C
_0211BE78:
	ldr r1, _0211C7E4 ; =0x02123AAC
	add r0, r9, #0x10c
	mov r2, #0x16
	bl FUN_ov29_02119f34
	ldr r1, _0211C7E8 ; =0x02123ABC
	add r0, r9, #0x10c
	mov r2, #0x17
	bl FUN_ov29_02119f34
	ldr r1, _0211C7EC ; =0x02123ACC
	add r0, r9, #0x10c
	mov r2, #0x18
	bl FUN_ov29_02119f34
	ldr r1, _0211C7F0 ; =0x02123ADC
	add r0, r9, #0x10c
	mov r2, #0x19
_0211BEB4:
	bl FUN_ov29_02119f34
	b _0211D060
_0211BEBC:
	mov r0, r9
	mov r1, #0x16
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x17
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x18
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x19
	bl FUN_ov29_0211a10c
	add r0, r9, #0x124
	bl  FUN_ov16_021105c0
	b _0211D060
_0211BEF8:
	add r5, sp, #0xb4
	mov r0, r8
	mov r1, r5
	mov r2, #0xff
	bl FUN_0200787c
	ldr r1, _0211C7F4 ; =0x02123AEC
	mov r0, r5
	bl FUN_02023c40
	add r0, r9, #0x124
	bl  FUN_ov16_021109a0
	add r0, r9, #0x124
	bl  FUN_ov16_021105c0
	ldr r2, [r9, #0x94]
	add r0, r9, #0x124
	mov r1, r8
	bl  FUN_ov16_02110624
	add r0, r9, #0x124
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_02110624
	mov r7, #5
	ldr r2, [r9, #0x98]
	add r0, r9, #0x124
	mov r1, r7
	bl  FUN_ov16_02110624
	ldr r2, [r9, #0x9c]
	add r0, r9, #0x124
	mov r1, #6
	bl  FUN_ov16_02110624
	ldr r2, [r9, #0xa0]
	add r0, r9, #0x124
	mov r1, #7
	bl  FUN_ov16_02110624
	mov r11, #0x14
	add r0, r9, #0x124
	mov r1, r11
	bl  FUN_ov16_02110864
	mov r1, #1
	add r0, r9, #0x124
	mov r2, r1
	mov r3, r6
	bl  FUN_ov16_02110830
	mov r1, r11
	add r0, r9, #0x124
	bl  FUN_ov16_0211085c
	mov r11, #0x38
	add r0, r9, #0x124
	mov r1, #0x10
	mov r2, r11
	bl  FUN_ov16_021108b4
	mov r1, r11
	mov r11, #0x68
	add r0, r9, #0x124
	mov r2, r11
	bl  FUN_ov16_021108c0
	mov r2, r11
	add r0, r9, #0x124
	mov r1, #0x98
	bl  FUN_ov16_021108cc
	add r0, r9, #0x124
	mov r1, #0xf
	mov r2, r7
	bl  FUN_ov16_021108e4
	mov r1, r7
	add r0, r9, #0x124
	mov r2, #3
	bl  FUN_ov16_021108f0
	mov r3, #1
	mov r0, r3
	str r0, [sp]
	mov r1, r6
	mov r2, r5
	add r0, r9, #0x124
	bl  FUN_ov16_02110938
	add r0, r9, #0x124
	mov r1, r8
	mov r2, #1
	b _0211C1D4
_0211C030:
	ldr r1, _0211C7F8 ; =0x02123B20
	add r0, r9, #0x10c
	mov r2, #0x16
	bl FUN_ov29_02119f34
	ldr r1, _0211C7FC ; =0x02123B30
	add r0, r9, #0x10c
	mov r2, #0x19
	bl FUN_ov29_02119f34
	b _0211C2A0
_0211C054:
	mov r0, r9
	mov r1, #0x16
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x19
	bl FUN_ov29_0211a10c
	add r0, r9, #0x124
	bl  FUN_ov16_021105c0
	mov r0, r9
	mov r1, #0xb
	b _0211C2D0
_0211C080:
	mov r0, r9
	mov r2, r6
	mov r1, #0xb
	bl FUN_ov29_02119ff8
	add r7, sp, #0xb4
	mov r0, r8
	mov r1, r7
	mov r2, #0xff
	bl FUN_0200787c
	add r1, r9, #0x100
	ldrh r1, [r1, #0xe4]
	ldr r0, _0211C7A0 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	mov r2, r0
	ldr r1, _0211C800 ; =0x02123B40
	mov r0, r7
	bl FUN_02023c40
	add r0, r9, #0x124
	bl  FUN_ov16_021109a0
	add r0, r9, #0x124
	bl  FUN_ov16_021105c0
	ldr r2, [r9, #0x94]
	add r0, r9, #0x124
	mov r1, r8
	bl  FUN_ov16_02110624
	add r0, r9, #0x124
	mov r1, r6
	mov r2, r8
	bl  FUN_ov16_02110624
	mov r0, #1
	str r0, [sp]
	sub r5, r0, #2
	str r5, [sp, #4]
	ldr r3, [r9, #0x94]
	add r0, r9, #0x124
	mov r1, r8
	mov r2, r8
	bl  FUN_ov16_021107a0
	str r8, [sp]
	str r5, [sp, #4]
	ldr r3, [r9, #0xa0]
	mov r2, r6
	add r0, r9, #0x124
	mov r1, r8
	bl  FUN_ov16_021107a0
	mov r5, #0x14
	add r0, r9, #0x124
	mov r1, r5
	bl  FUN_ov16_02110864
	mov r6, #3
	add r0, r9, #0x124
	mov r1, #1
	mov r2, r6
	mov r3, r6
	bl  FUN_ov16_02110830
	mov r1, r5
	add r0, r9, #0x124
	bl  FUN_ov16_0211085c
	add r0, r9, #0x124
	mov r1, #0x10
	mov r2, #0x38
	bl  FUN_ov16_021108b4
	mov r1, #0x68
	mov r2, r1
	add r0, r9, #0x124
	bl  FUN_ov16_021108d8
	mov r5, #5
	add r0, r9, #0x124
	mov r1, #0xf
	mov r2, r5
	bl  FUN_ov16_021108e4
	mov r1, r5
	mov r2, r6
	add r0, r9, #0x124
	bl  FUN_ov16_021108f0
	mov r0, #1
	mov r1, #1
	str r0, [sp]
	mov r2, r7
	add r0, r9, #0x124
	mov r3, r1
	bl  FUN_ov16_02110938
	add r0, r9, #0x124
	mov r1, #1
	mov r2, r8
_0211C1D4:
	bl  FUN_ov16_02110a04
	b _0211D060
_0211C1DC:
	.byte 0x20, 0x16, 0x9F, 0xE5
_0211C1E0:
	add r0, r9, #0x10c
	mov r2, #0x14
_0211C1E8:
	bl FUN_ov29_02119f34
_0211C1EC:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r8, r1
	b _0211ABC0
_0211C1FC:
	.byte 0x09, 0x00, 0xA0, 0xE1
	.byte 0x0E, 0x10, 0xA0, 0xE3
_0211C204:
	bl FUN_ov29_0211a0d0
	mov r0, r9
	mov r1, #0x14
	bl FUN_ov29_0211a10c
	ldr r0, _0211B7A4 ; =0x02099F38
	ldr r1, [r9, #0xb4]
	ldr r0, [r0]
	bl FUN_020591e8
	ldr r0, _0211B7A4 ; =0x02099F38
	ldr r1, [r9, #0xb4]
	ldr r0, [r0]
	bl FUN_02058ee0
	str r8, [r9, #0xb4]
	b _0211D060
_0211C23C:
	mov r0, r9
	mov r2, #1
	mov r1, #0xe
	bl FUN_ov29_02119ff8
	mov r2, #0x10
	mov r1, r0
	str r2, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #0x93
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x8c]
	mov r0, r9
	mov r2, #1
_0211C278:
	bl FUN_ov29_0211a040
	b _0211D060
_0211C280:
	ldr r1, _0211C808 ; =0x02123B68
	add r0, r9, #0x10c
	mov r2, #0x1c
	bl FUN_ov29_02119f34
	ldr r1, _0211C80C ; =0x02123B78
	add r0, r9, #0x10c
	mov r2, #0x1d
	bl FUN_ov29_02119f34
_0211C2A0:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r8, r1
	b _0211B840
_0211C2B0:
	mov r0, r9
	mov r1, #0x1c
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0x1d
	bl FUN_ov29_0211a10c
	mov r0, r9
	mov r1, #0xc
_0211C2D0:
	bl FUN_ov29_0211a0d0
	b _0211D060
_0211C2D8:
	mov r0, r9
	mov r2, r6
	mov r1, #0xc
	bl FUN_ov29_02119ff8
	mov r5, r0
	mov r0, #0xb8
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r7, #0x50
	str r7, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0xac]
	mov r0, r9
	mov r1, r5
	mov r2, #1
	bl FUN_ov29_0211a040
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x80
	stmib sp, {r0, r7}
	str r8, [sp, #0xc]
	ldr r3, [r9, #0xb0]
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_ov29_0211a040
	mov r0, #1
	ldr r7, _0211B7A0 ; =0x02099EB4
	stmia sp, {r0, r8}
	mov r1, r0
	ldr r0, [r7]
	mov r2, #4
	mov r3, r5
	bl  FUN_ov16_0210fc74
	stmia sp, {r6, r8}
	ldr r0, [r7]
	mov r3, r5
	mov r1, #1
	mov r2, #5
_0211C378:
	bl  FUN_ov16_0210fc74
	b _0211D060
_0211C380:
	ldr r0, _0211B7A0 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211C428
	strb r8, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r1, r8
	mov r2, #1
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	mov r2, r8
	add r0, r4, #0x3a
	mov r3, r8
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	mov r2, r6
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211C428:
	b _0211ABB4
_0211C42C:
	ldr r0, _0211B7A0 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211C4D4
	strb r8, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r1, r8
	mov r2, #1
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	mov r3, r8
	add r0, r4, #0x3a
	mov r2, #6
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #7
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	mov r2, #8
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211C4D4:
	b _0211ABB4
_0211C4D8:
	ldr r0, _0211B7A0 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211C584
	mov r0, #1
	strb r0, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r2, r0
	mov r1, r8
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	mov r3, r8
	add r0, r4, #0x3a
	mov r2, #6
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #7
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	mov r2, #8
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211C584:
	b _0211ABB4
_0211C588:
	ldr r0, _0211B7A0 ; =0x02099EB4
	mov r5, #4
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211C634
	strb r8, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r1, r8
	mov r2, #1
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	add r0, r4, #0x3a
	mov r2, #3
	mov r3, r8
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	mov r2, r5
	add r0, r4, #0x3e
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	mov r2, #5
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211C634:
	b _0211ABB4
_0211C638:
	ldr r0, _0211B7A0 ; =0x02099EB4
	mov r5, #4
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211C6E8
	mov r0, #1
	strb r0, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r2, r0
	mov r1, r8
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	add r0, r4, #0x3a
	mov r2, #3
	mov r3, r8
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	mov r2, r5
	add r0, r4, #0x3e
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	mov r2, #5
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211C6E8:
	b _0211ABB4
_0211C6EC:
	ldr r0, _0211C810 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211C794
	strb r8, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r1, r8
	mov r2, #1
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	mov r2, r8
	add r0, r4, #0x3a
	mov r3, r8
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	mov r2, r6
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211C794:
	b _0211ABB4
_0211C798: .word 0x02123920
_0211C79C: .word 0x02123930
_0211C7A0: .word 0x0209BA20
_0211C7A4: .word 0x02123940
_0211C7A8: .word 0x02123958
_0211C7AC: .word 0x0209AC44
_0211C7B0: .word 0x0000800B
_0211C7B4: .word 0x0000800A
_0211C7B8: .word 0x00008008
_0211C7BC: .word 0x02123970
_0211C7C0: .word 0x02123980
_0211C7C4: .word 0x00008009
_0211C7C8: .word 0x021239A4
_0211C7CC: .word 0x021239B4
_0211C7D0: .word 0x021239C4
_0211C7D4: .word 0x021239D4
_0211C7D8: .word 0x021239E4
_0211C7DC: .word 0x021239F4
_0211C7E0: .word 0x02123A4C
_0211C7E4: .word 0x02123AAC
_0211C7E8: .word 0x02123ABC
_0211C7EC: .word 0x02123ACC
_0211C7F0: .word 0x02123ADC
_0211C7F4: .word 0x02123AEC
_0211C7F8: .word 0x02123B20
_0211C7FC: .word 0x02123B30
_0211C800: .word 0x02123B40
_0211C804:
	.byte 0x58, 0x3B, 0x12, 0x02
_0211C808: .word 0x02123B68
_0211C80C: .word 0x02123B78
_0211C810: .word 0x02099EB4
_0211C814:
	ldr r0, _0211C810 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211C8C0
	mov r0, #1
	strb r0, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r2, r0
	mov r1, r8
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	mov r2, r8
	add r0, r4, #0x3a
	mov r3, r8
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	mov r2, r6
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211C8C0:
	b _0211ABB4
_0211C8C4:
	ldr r0, _0211C810 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211C970
	mov r0, #1
	strb r0, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r2, r0
	mov r1, r8
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	mov r2, r8
	add r0, r4, #0x3a
	mov r3, r8
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	mov r2, r6
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211C970:
	b _0211ABB4
_0211C974:
	ldr r0, _0211C810 ; =0x02099EB4
	mov r5, #5
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211CA20
	strb r8, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r1, r8
	mov r2, #1
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	add r0, r4, #0x3a
	mov r2, #3
	mov r3, r8
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #4
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	mov r2, r5
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211CA20:
	b _0211ABB4
_0211CA24:
	ldr r0, _0211C810 ; =0x02099EB4
	mov r5, #5
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211CAD4
	mov r0, #1
	strb r0, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r2, r0
	mov r1, r8
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	add r0, r4, #0x3a
	mov r2, #3
	mov r3, r8
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #1
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, #4
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r2, #1
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	mov r2, r5
	add r0, r4, #0x42
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211CAD4:
	b _0211ABB4
_0211CAD8:
	mov r5, #8
	mov r0, r9
	mov r1, r8
	mov r2, r5
	bl FUN_ov29_02119ff8
	str r8, [sp]
	add r1, r9, #0x100
	ldrh r3, [r1, #0xfc]
	mov r1, r0
	ldr r0, _0211D210 ; =0x02099F38
	mov r2, r5
	ldr r0, [r0]
	bl  FUN_ov16_0211401c
	b _0211D060
_0211CB10:
	add r0, r9, #0x100
	ldrh r1, [r0, #0xfc]
	ldr r5, [r9, #0xcc]
	cmp r1, #4
	bhi _0211CB58
	str r8, [sp]
	ldrh r3, [r0, #0xfc]
	ldr r0, _0211D210 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_0211401c
	ldr r0, _0211D210 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, #1
	mov r3, #0x1f
	b _0211CB74
_0211CB58:
	cmp r1, #5
	blo _0211CB78
	ldr r0, _0211D210 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r3, r8
	mov r2, #1
_0211CB74:
	bl  FUN_ov16_02113a80
_0211CB78:
	add r0, r9, #0x100
	ldrh r1, [r0, #0xfc]
	ldr r0, _0211D210 ; =0x02099F38
	mov r6, #1
	cmp r1, #0
	bne _0211CBCC
	ldrb r1, [r9, #0x202]
	cmp r1, #0
	beq _0211CBCC
	ldrb r3, [r9, #0x1ff]
	cmp r3, #0x10
	bhs _0211CBB4
	ldr r0, [r0]
	mov r1, r5
	b _0211CBC4
_0211CBB4:
	rsb r2, r3, #0x20
	ldr r0, [r0]
	mov r1, r5
	and r3, r2, #0xff
_0211CBC4:
	mov r2, #2
	b _0211CBDC
_0211CBCC:
	ldr r0, [r0]
	mov r1, r5
	mov r2, #2
	mov r3, #0
_0211CBDC:
	bl  FUN_ov16_02113a80
	ldrb r0, [r9, #0x1ff]
	ldr r3, [r9, #0xf4]
	ldr r2, [r9, #0x100]
	add r0, r0, #1
	and r0, r0, #0xff
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r5, r3, #0
	add r3, r1, r0, ror #27
	ldr r1, [r9, #0x108]
	add r0, r2, r5, lsr #8
	strb r3, [r9, #0x1ff]
_0211CC10:
	bl FUN_0201fbc8
	ldr r0, [r9, #0xfc]
	ldr r1, [r0, r1, lsl #2]
	and r0, r5, #0xff
	strb r6, [r1, r0, lsl #2]
	b _0211D08C
_0211CC28:
	mov r0, r9
	mov r1, #7
	mov r2, #1
	bl FUN_ov29_02119ff8
	ldr r1, [r9, #0xf4]
	ldr r2, [r9, #0x100]
	add r6, r8, r1
	mov r5, r0
	ldr r1, [r9, #0x108]
	add r0, r2, r6, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r6, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r0, r1, r0, lsl #2
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _0211CC7C
	ldr r0, _0211C7AC ; =0x0209AC44
	ldr r1, _0211D214 ; =0x00008006
	bl FUN_0202cf6c
_0211CC7C:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r6, r10, r1
	ldr r1, [r9, #0x108]
	add r0, r0, r6, lsr #8
	bl FUN_0201fbc8
	ldr r3, [r9, #0xfc]
	and r0, r6, #0xff
	ldr r3, [r3, r1, lsl #2]
	mov r1, r5
	add r3, r3, r0, lsl #2
	str r10, [sp]
	ldrh r5, [r3, #2]
	ldr r0, _0211D210 ; =0x02099F38
	mov r2, #1
	mov r3, r5, asr #1
	add r3, r5, r3, lsr #30
	ldr r0, [r0]
	mov r3, r3, asr #2
	bl  FUN_ov16_0211401c
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r10, r1
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r5, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r0, r1, r0, lsl #2
	ldrh r1, [r0, #2]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	cmp r0, #6
	bne _0211D08C
	b _0211CEFC
_0211CD10:
	mov r0, r9
	mov r2, #1
	mov r1, #8
	bl FUN_ov29_02119ff8
	ldr r1, [r9, #0xf4]
	ldr r2, [r9, #0x100]
	add r6, r8, r1
	mov r5, r0
	ldr r1, [r9, #0x108]
	add r0, r2, r6, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r6, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r0, r1, r0, lsl #2
	ldrh r0, [r0, #2]
	cmp r0, #8
	blo _0211CD90
	mov r7, #0xc8
	ldr r6, _0211D210 ; =0x02099F38
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r5
	mov r2, #1
	mov r3, #0x28
	bl  FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r5
	mov r2, #2
	mov r3, #0x40
	bl  FUN_ov16_02113b78
_0211CD90:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r6, r1, #0
	ldr r1, [r9, #0x108]
	add r0, r0, r6, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r6, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r0, r1, r0, lsl #2
	ldrh r0, [r0, #2]
	cmp r0, #0x10
	blo _0211D08C
	mov r0, #0xa0
	str r0, [sp]
	ldr r0, _0211D210 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, #1
	mov r3, #0x28
	bl  FUN_ov16_02113b78
	mov r0, #0xa2
	str r0, [sp]
	ldr r0, _0211D210 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, #2
	mov r3, #0x40
	bl  FUN_ov16_02113b78
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r1, #0
	b _0211D06C
_0211CE14:
	mov r0, r9
	mov r1, #7
	mov r2, #1
	bl FUN_ov29_02119ff8
	ldr r1, [r9, #0xf4]
	ldr r2, [r9, #0x100]
	add r6, r8, r1
	mov r5, r0
	ldr r1, [r9, #0x108]
	add r0, r2, r6, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r6, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r0, r1, r0, lsl #2
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _0211CE68
	ldr r0, _0211C7AC ; =0x0209AC44
	ldr r1, _0211D218 ; =0x00008007
	bl FUN_0202cf6c
_0211CE68:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r6, r10, r1
	ldr r1, [r9, #0x108]
	add r0, r0, r6, lsr #8
	bl FUN_0201fbc8
	ldr r3, [r9, #0xfc]
	and r0, r6, #0xff
	ldr r3, [r3, r1, lsl #2]
	mov r1, r5
	add r3, r3, r0, lsl #2
	str r10, [sp]
	ldrh r5, [r3, #2]
	ldr r0, _0211D210 ; =0x02099F38
	mov r2, #1
	mov r3, r5, asr #1
	add r3, r5, r3, lsr #30
	mov r3, r3, asr #2
	ldr r0, [r0]
	add r3, r3, #6
	bl  FUN_ov16_0211401c
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r10, r1
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r5, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r0, r1, r0, lsl #2
	ldrh r1, [r0, #2]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	cmp r0, #6
	bne _0211D08C
_0211CEFC:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r10, r1
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r0, [r9, #0xfc]
	and r2, r5, #0xff
_0211CF1C:
	b _0211D080
_0211CF20:
	mov r0, r9
	mov r1, #4
	mov r2, #6
	mov r11, #0x28
	bl FUN_ov29_02119ff8
	mov r5, r0
	add r6, r9, #0x100
	mov r7, #0x1e
	b _0211CFAC
_0211CF44:
	ldrsb r0, [r6, #0xe8]
	cmp r8, r0
	bne _0211CF68
	ldr r0, _0211D210 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	add r2, r8, #4
	mov r3, r7
	b _0211CF7C
_0211CF68:
	ldr r0, _0211D210 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	add r2, r8, #4
	mov r3, r11
_0211CF7C:
	bl  FUN_ov16_021139bc
	add r0, r9, r8, lsl #1
	add r0, r0, #0x100
	ldrsh r3, [r0, #0xf2]
	mov r1, r5
	add r2, r8, #4
	str r3, [sp]
	ldrsh r3, [r0, #0xec]
	ldr r0, _0211D210 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_02113b78
	add r8, r8, #1
_0211CFAC:
	cmp r8, #3
	blt _0211CF44
	b _0211ABB4
_0211CFB8:
	mov r0, r9
	mov r1, #4
	mov r2, #6
	bl FUN_ov29_02119ff8
	ldrb r1, [r9, #0x1d7]
	mov r4, r0
	ldr r0, _0211D210 ; =0x02099F38
	add r2, r1, #4
	ldr r0, [r0]
	ldr r3, _0211D21C ; =0x0000015E
	mov r1, r4
	bl  FUN_ov16_021139bc
	mov r0, #0x58
	str r0, [sp]
	ldr r0, _0211D210 ; =0x02099F38
	ldrb r2, [r9, #0x1d7]
	ldr r0, [r0]
	mov r1, r4
	mov r3, #0x68
	add r2, r2, #4
	bl  FUN_ov16_02113b78
	ldrb r0, [r9, #0x1d7]
	mov r3, r4
	mov r1, #1
	add r0, r0, #4
	stmia sp, {r0, r8}
	ldrb r2, [r9, #0x1d7]
	ldr r0, [r5]
	add r2, r2, #6
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fc74
	ldrb r1, [r9, #0x1d7]
	ldr r0, [r5]
	add r1, r1, #6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	mov r4, r0
	mov r0, #1
	strb r0, [r4, #0x12]
	strb r0, [r4, #0x10]
_0211D060:
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r5, r8, r1
_0211D06C:
	ldr r1, [r9, #0x108]
	add r0, r0, r5, lsr #8
	bl FUN_0201fbc8
	ldr r0, [r9, #0xfc]
	and r2, r5, #0xff
_0211D080:
	ldr r1, [r0, r1, lsl #2]
	mov r0, #1
	strb r0, [r1, r2, lsl #2]
_0211D08C:
	sub r5, sp, #4
	mov r11, #1
	mov r7, #0
	ldr r8, _0211D220 ; =0x51EB851F
	b _0211D164
_0211D0A0:
	ldr r0, [r9, #0x10c]
	ldr r2, [r9, #0x118]
	add r6, r7, r0
	umull r0, r1, r6, r8
	add r0, r2, r1, lsr #3
	ldr r1, [r9, #0x120]
	bl FUN_0201fbc8
	umull r2, r0, r6, r8
	ldr r3, [r9, #0x114]
	mov r0, r0, lsr #3
	mov r2, #0x19
	ldr r1, [r3, r1, lsl #2]
	umull r0, r3, r2, r0
	sub r0, r6, r0
	mov r2, #0x28
	mla r6, r0, r2, r1
	ldr r0, [r6, #0x20]
	ldr r1, [r9, #0xc]
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl  FUN_ov16_020f3d08
	cmp r0, #0
	beq _0211D14C
	ldr r0, [r6, #0x24]
	add r0, r9, r0, lsl #2
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _0211D14C
	ldr r0, _0211D210 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [r0]
	mov r1, #5
	stmia sp, {r7, r11}
	str r7, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, _0211D224 ; =0x02123B88
	mov r3, r7
	bl FUN_02058800
	ldr r1, [r6, #0x24]
	add r1, r9, r1, lsl #2
	str r0, [r1, #0x3c]
_0211D14C:
	mov r0, #0
	strb r0, [r5]
	ldr r2, [r5]
	add r0, r9, #0x10c
	mov r1, #1
	bl FUN_ov29_02120310
_0211D164:
	ldr r0, [r9, #0x110]
	cmp r0, #0
	bne _0211D0A0
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r6, r1, #0
	ldr r1, [r9, #0x108]
	add r0, r0, r6, lsr #8
	mov r5, #0
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r6, #0xff
	ldr r1, [r2, r1, lsl #2]
	ldrb r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne _0211D1E0
	ldr r1, [r9, #0xf4]
	ldr r0, [r9, #0x100]
	add r4, r5, r1
	ldr r1, [r9, #0x108]
	add r0, r0, r4, lsr #8
	bl FUN_0201fbc8
	ldr r2, [r9, #0xfc]
	and r0, r4, #0xff
	ldr r1, [r2, r1, lsl #2]
	add sp, sp, #0x1b4
	add r1, r1, r0, lsl #2
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D1E0:
	sub r1, sp, #4
	and r0, r5, #0xff
	strb r0, [r1]
	ldr r2, [r1]
	add r0, r9, #0xf4
	mov r1, #1
	bl FUN_ov29_02120a68
	ldr r0, [r9, #0xf8]
	cmp r0, #0
	bne _0211A86C
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D210: .word 0x02099F38
_0211D214: .word 0x00008006
_0211D218: .word 0x00008007
_0211D21C: .word 0x0000015E
_0211D220: .word 0x51EB851F
_0211D224: .word 0x02123B88
	arm_func_end FUN_ov29_0211a814

	arm_func_start FUN_ov29_0211d228
FUN_ov29_0211d228: ; 0x0211D228
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xc
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211D28C ; =0x02099F38
	b _0211D27C
_0211D254:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211D278
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211D278:
	add r5, r5, #1
_0211D27C:
	cmp r5, #0x1e
	blt _0211D254
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211D28C: .word 0x02099F38
	arm_func_end FUN_ov29_0211d228

	arm_func_start FUN_ov29_0211d290
FUN_ov29_0211d290: ; 0x0211D290
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0xf8]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D408 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0x1ca]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211D2D0: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211D308 ; case 1
	b _0211D314 ; case 2
	b _0211D328 ; case 3
	b _0211D334 ; case 4
	b _0211D348 ; case 5
	b _0211D35C ; case 6
	b _0211D368 ; case 7
	b _0211D37C ; case 8
	b _0211D390 ; case 9
	b _0211D3A4 ; case 10
	b _0211D3B8 ; case 11
	b _0211D3CC ; case 12
	b _0211D3DC ; case 13
_0211D308:
	mov r0, #2
	strb r0, [r4, #0x1ca]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D314:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211d570
	ldmfd sp!, {r4, r5, r6, pc}
_0211D328:
	mov r0, #4
	strb r0, [r4, #0x1ca]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D334:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211de58
	ldmfd sp!, {r4, r5, r6, pc}
_0211D348:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211e3f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211D35C:
	mov r0, #7
	strb r0, [r4, #0x1ca]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D368:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211e864
	ldmfd sp!, {r4, r5, r6, pc}
_0211D37C:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211e9cc
	ldmfd sp!, {r4, r5, r6, pc}
_0211D390:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211ea54
	ldmfd sp!, {r4, r5, r6, pc}
_0211D3A4:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211ed34
	ldmfd sp!, {r4, r5, r6, pc}
_0211D3B8:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211f180
	ldmfd sp!, {r4, r5, r6, pc}
_0211D3CC:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov29_0211f038
_0211D3DC:
	add r0, r4, #0x100
	ldrh r1, [r0, #0xe4]
	ldr r0, _0211D40C ; =0x0209BA20
	mov r2, #1
	bl  FUN_ov16_020ede60 ; may be ov17
	ldr r0, _0211D410 ; =0x0209AC44
	mov r1, #0x10
	bl FUN_0202cf6c
	mov r0, #2
	strb r0, [r4, #0x1ca]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D408: .word 0x02099ED4
_0211D40C: .word 0x0209BA20
_0211D410: .word 0x0209AC44
	arm_func_end FUN_ov29_0211d290

	arm_func_start FUN_ov29_0211d414
FUN_ov29_0211d414: ; 0x0211D414
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0xf8]
	mov r5, r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211D564 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x1ca]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211D450: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0211D488 ; case 1
	b _0211D494 ; case 2
	b _0211D4A4 ; case 3
	b _0211D4B0 ; case 4
	b _0211D4C0 ; case 5
	b _0211D4D0 ; case 6
	b _0211D4DC ; case 7
	b _0211D4EC ; case 8
	b _0211D4FC ; case 9
	b _0211D50C ; case 10
	b _0211D51C ; case 11
	b _0211D52C ; case 12
	b _0211D538 ; case 13
_0211D488:
	mov r0, #2
	strb r0, [r4, #0x1ca]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D494:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211d6cc
	ldmfd sp!, {r3, r4, r5, pc}
_0211D4A4:
	mov r0, #4
	strb r0, [r4, #0x1ca]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D4B0:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211ded4
	ldmfd sp!, {r3, r4, r5, pc}
_0211D4C0:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211e454
	ldmfd sp!, {r3, r4, r5, pc}
_0211D4D0:
	mov r0, #7
	strb r0, [r4, #0x1ca]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D4DC:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211e894
	ldmfd sp!, {r3, r4, r5, pc}
_0211D4EC:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211e9d8
	ldmfd sp!, {r3, r4, r5, pc}
_0211D4FC:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211eb18
	ldmfd sp!, {r3, r4, r5, pc}
_0211D50C:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211ede8
	ldmfd sp!, {r3, r4, r5, pc}
_0211D51C:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211f1b0
	ldmfd sp!, {r3, r4, r5, pc}
_0211D52C:
	mov r0, r4
	mov r1, r5
	bl FUN_ov29_0211f068
_0211D538:
	add r0, r4, #0x100
	ldrh r1, [r0, #0xe4]
	ldr r0, _0211D568 ; =0x0209BA20
	mov r2, #1
	bl  FUN_ov16_020ede60 ; may be ov17
	ldr r0, _0211D56C ; =0x0209AC44
	mov r1, #0x10
	bl FUN_0202cf6c
	mov r0, #2
	strb r0, [r4, #0x1ca]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D564: .word 0x02099ED4
_0211D568: .word 0x0209BA20
_0211D56C: .word 0x0209AC44
	arm_func_end FUN_ov29_0211d414

	arm_func_start FUN_ov29_0211d570
FUN_ov29_0211d570: ; 0x0211D570
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x100
	ldrsb r3, [r0, #0xe8]
	mvn r2, #0
	mov r4, r1
	cmp r3, r2
	ldreqsb r0, [r0, #0xf8]
	cmpeq r0, r2
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r4, #1
	beq _0211D5EC
	ldr r0, _0211D6C0 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	ldrb r0, [r5, #0x1d7]
	add r0, r5, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	beq _0211D5DC
	ldr r0, _0211D6C4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldrb r0, [r5, #0x1d7]
	strb r0, [r5, #0x1f8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D5DC:
	ldr r0, _0211D6C4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211D5EC:
	tst r4, #2
	beq _0211D610
	ldr r0, _0211D6C0 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r0, r5
	bl FUN_ov29_0211ddf8
	ldmfd sp!, {r3, r4, r5, pc}
_0211D610:
	tst r4, #0x30
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211D6C4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	tst r4, #0x20
	beq _0211D648
	ldrb r0, [r5, #0x1d7]
	sub r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #2
	strb r1, [r5, #0x1d7]
	movhi r0, #2
	strhib r0, [r5, #0x1d7]
_0211D648:
	tst r4, #0x10
	beq _0211D678
	ldrb r0, [r5, #0x1d7]
	ldr r1, _0211D6C8 ; =0x55555556
	mov r2, #3
	add r0, r0, #1
	and r3, r0, #0xff
	smull r0, r4, r1, r3
	add r4, r4, r3, lsr #31
	smull r0, r1, r2, r4
	sub r4, r3, r0
	strb r4, [r5, #0x1d7]
_0211D678:
	mov r4, #0
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x11
	bl FUN_ov29_02119f00
	ldrb r0, [r5, #0x1d7]
	mov r2, r4
	add r0, r5, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	add r0, r5, #0xf4
	beq _0211D6B4
	mov r1, #0x38
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211D6B4:
	mov r1, #0x39
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211D6C0: .word 0x02099EB4
_0211D6C4: .word 0x0209AC44
_0211D6C8: .word 0x55555556
	arm_func_end FUN_ov29_0211d570

	arm_func_start FUN_ov29_0211d6cc
FUN_ov29_0211d6cc: ; 0x0211D6CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0211DC60 ; =0x02099EB4
	mov r10, r0
	mov r8, r1
	ldrb r1, [r10, #0x1d7]
	ldr r0, [r4]
	str r1, [sp]
	bl  FUN_ov16_0210f484
	mov r7, r0
	mov r11, #1
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	bl  FUN_ov16_0210f20c
	mov r9, #0
	mov r5, r0
	add r0, r10, #0xf4
	mov r1, #0x46
	mov r2, r9
	bl FUN_ov29_02119f00
	add r4, r10, #0x100
	ldrsb r1, [r4, #0xf8]
	sub r0, r9, #1
	cmp r1, r0
	beq _0211D868
	add r0, r10, #0xf2
	mov r7, #0x68
	add r8, r10, #0x1ec
	add r6, r0, #0x100
	mov r11, r7
	mvn r5, #0
	b _0211D85C
_0211D74C:
	ldrsb r0, [r4, #0xf8]
	cmp r9, r0
	bne _0211D858
	add r0, r10, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xec]
	mov r2, r9, lsl #1
	cmp r1, #0x68
	ble _0211D788
	ldrsh r1, [r8, r2]
	sub r1, r1, #0x1e
	strh r1, [r8, r2]
	ldrsh r1, [r0, #0xec]
	cmp r1, #0x68
	strlth r7, [r0, #0xec]
_0211D788:
	add r0, r10, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xec]
	mov r2, r9, lsl #1
	cmp r1, #0x68
	bge _0211D7B8
	ldrsh r1, [r8, r2]
	add r1, r1, #0x1e
	strh r1, [r8, r2]
	ldrsh r1, [r0, #0xec]
	cmp r1, #0x68
	strgth r11, [r0, #0xec]
_0211D7B8:
	add r0, r10, r9, lsl #1
	add r1, r0, #0x100
	ldrsh r0, [r1, #0xf2]
	mov r2, r9, lsl #1
	cmp r0, #0x50
	ble _0211D7EC
	ldrsh r0, [r6, r2]
	sub r0, r0, #0x1e
	strh r0, [r6, r2]
	ldrsh r0, [r1, #0xf2]
	cmp r0, #0x50
	movlt r0, #0x50
	strlth r0, [r1, #0xf2]
_0211D7EC:
	add r0, r10, r9, lsl #1
	add r1, r0, #0x100
	ldrsh r0, [r1, #0xf2]
	mov r2, r9, lsl #1
	cmp r0, #0x50
	bge _0211D820
	ldrsh r0, [r6, r2]
	add r0, r0, #0x1e
	strh r0, [r6, r2]
	ldrsh r0, [r1, #0xf2]
	cmp r0, #0x50
	movgt r0, #0x50
	strgth r0, [r1, #0xf2]
_0211D820:
	add r0, r10, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xec]
	cmp r1, #0x68
	ldreqsh r0, [r0, #0xf2]
	cmpeq r0, #0x50
	bne _0211D858
	ldrb r1, [r10, #0x1d7]
	mov r0, r10
	add r2, r10, r1
	mov r1, #1
	strb r1, [r2, #0x1d3]
	bl FUN_ov29_0211dc6c
	strb r5, [r10, #0x1f8]
_0211D858:
	add r9, r9, #1
_0211D85C:
	cmp r9, #3
	blt _0211D74C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D868:
	cmp r5, #3
	mov r6, #0x10
	bne _0211D97C
	cmp r7, #6
	beq _0211D890
	cmp r7, #7
	beq _0211D8C8
	cmp r7, #8
	beq _0211D900
	b _0211D93C
_0211D890:
	ldrb r0, [r10, #0x1d0]
	cmp r0, #0
	beq _0211D93C
	ldrsb r1, [r4, #0xe8]
	sub r0, r9, #1
	cmp r1, r0
	bne _0211D93C
	mov r2, r9
	add r0, r10, #0xf4
	mov r1, r6
	strb r9, [r10, #0x1d7]
	strb r9, [r10, #0x1e8]
	strb r11, [r10, #0x1d3]
	b _0211D938
_0211D8C8:
	ldrb r0, [r10, #0x1d1]
	cmp r0, #0
	beq _0211D93C
	ldrsb r1, [r4, #0xe8]
	sub r0, r9, #1
	cmp r1, r0
	bne _0211D93C
	mov r2, r9
	add r0, r10, #0xf4
	mov r1, r6
	strb r11, [r10, #0x1d7]
	strb r11, [r10, #0x1e8]
	strb r11, [r10, #0x1d4]
	b _0211D938
_0211D900:
	ldrb r0, [r10, #0x1d2]
	cmp r0, #0
	beq _0211D93C
	ldrsb r1, [r4, #0xe8]
	sub r0, r9, #1
	cmp r1, r0
	bne _0211D93C
	mov r3, #2
	mov r2, r9
	add r0, r10, #0xf4
	mov r1, r6
	strb r3, [r10, #0x1d7]
	strb r3, [r10, #0x1e8]
	strb r11, [r10, #0x1d5]
_0211D938:
	bl FUN_ov29_02119f00
_0211D93C:
	add r1, r10, #0x100
	ldrsb r0, [r1, #0xe8]
	cmn r0, #1
	beq _0211DAAC
	ldrh r2, [r8]
	add r0, r10, r0, lsl #1
	add r0, r0, #0x100
	sub r2, r2, #0x18
	strh r2, [r0, #0xec]
	ldrsb r0, [r1, #0xe8]
	ldrh r1, [r8, #2]
	add r0, r10, r0, lsl #1
	sub r1, r1, #0x18
	add r0, r0, #0x100
	strh r1, [r0, #0xf2]
	b _0211DAAC
_0211D97C:
	cmp r5, #4
	bne _0211DA14
	ldrsb r0, [r4, #0xe8]
	add r0, r10, r0, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xec]
	cmp r1, #0x50
	blt _0211D9D8
	cmp r1, #0x7c
	bgt _0211D9D8
	ldrsh r0, [r0, #0xf2]
	cmp r0, #0x38
	blt _0211D9D8
	cmp r0, #0x68
	bgt _0211D9D8
	cmp r7, #6
	cmpne r7, #7
	beq _0211D9CC
	cmp r7, #8
	bne _0211DA08
_0211D9CC:
	mov r0, r10
	bl FUN_ov29_0211dc6c
	b _0211DA08
_0211D9D8:
	add r0, r10, #0x100
	ldrsb r1, [r0, #0xe8]
	mov r2, #1
	add r0, r10, #0xf4
	add r1, r10, r1
	strb r2, [r1, #0x1e9]
	ldrb r3, [r10, #0x1d7]
	mov r2, #0
	mov r1, #0x10
	add r3, r10, r3
	strb r2, [r3, #0x1d3]
	bl FUN_ov29_02119f00
_0211DA08:
	mvn r0, #0
	strb r0, [r10, #0x1e8]
	b _0211DAAC
_0211DA14:
	cmp r5, #2
	bne _0211DA78
	cmp r7, #4
	beq _0211DA30
	cmp r7, #5
	beq _0211DA6C
	b _0211DAAC
_0211DA30:
	ldrb r0, [r10, #0x1d7]
	add r0, r10, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	beq _0211DA5C
	ldr r0, _0211DC64 ; =0x0209AC44
	mov r1, r11
	bl FUN_0202cf6c
	ldrb r0, [r10, #0x1d7]
	strb r0, [r10, #0x1f8]
	b _0211DAAC
_0211DA5C:
	ldr r0, _0211DC64 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	b _0211DAAC
_0211DA6C:
	mov r0, r10
	bl FUN_ov29_0211ddf8
	b _0211DAAC
_0211DA78:
	cmp r5, #5
	bne _0211DAAC
	cmp r7, #6
	beq _0211DAA0
	cmp r7, #7
	beq _0211DAA8
	cmp r7, #8
	moveq r0, #2
	streqb r0, [r10, #0x1d7]
	b _0211DAAC
_0211DAA0:
	strb r9, [r10, #0x1d7]
	b _0211DAAC
_0211DAA8:
	strb r11, [r10, #0x1d7]
_0211DAAC:
	add r0, r10, #0xf2
	mov r9, #0
	add r8, r10, #0x1ec
	add r7, r0, #0x100
	add r4, r10, #0x100
	ldr r5, _0211DC64 ; =0x0209AC44
	ldr r11, _0211DC68 ; =0x00008002
	b _0211DBF4
_0211DACC:
	ldrsb r0, [r4, #0xe8]
	cmp r9, r0
	beq _0211DBF0
	add r0, r10, r9, lsl #1
	add r1, r0, #0x100
	ldrsh r2, [r1, #0xec]
	mov r0, r9, lsl #6
	add r0, r0, #0x28
	cmp r0, r2
	mov r3, r9, lsl #1
	bge _0211DB10
	ldrsh r2, [r8, r3]
	sub r2, r2, #0x1e
	strh r2, [r8, r3]
	ldrsh r2, [r1, #0xec]
	cmp r0, r2
	strgth r0, [r1, #0xec]
_0211DB10:
	add r0, r10, r9, lsl #1
	add r1, r0, #0x100
	ldrsh r2, [r1, #0xec]
	mov r0, r9, lsl #6
	add r0, r0, #0x28
	cmp r0, r2
	mov r3, r9, lsl #1
	ble _0211DB48
	ldrsh r2, [r8, r3]
	add r2, r2, #0x1e
	strh r2, [r8, r3]
	ldrsh r2, [r1, #0xec]
	cmp r0, r2
	strlth r0, [r1, #0xec]
_0211DB48:
	add r0, r10, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xf2]
	mov r2, r9, lsl #1
	cmp r1, #0x10
	ble _0211DB78
	ldrsh r1, [r7, r2]
	sub r1, r1, #0x1e
	strh r1, [r7, r2]
	ldrsh r1, [r0, #0xf2]
	cmp r1, #0x10
	strlth r6, [r0, #0xf2]
_0211DB78:
	add r0, r10, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xf2]
	mov r2, r9, lsl #1
	cmp r1, #0x10
	bge _0211DBA8
	ldrsh r1, [r7, r2]
	add r1, r1, #0x1e
	strh r1, [r7, r2]
	ldrsh r1, [r0, #0xf2]
	cmp r1, #0x10
	strgth r6, [r0, #0xf2]
_0211DBA8:
	add r0, r10, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r2, [r0, #0xec]
	mov r1, r9, lsl #6
	add r1, r1, #0x28
	cmp r2, r1
	ldreqsh r0, [r0, #0xf2]
	cmpeq r0, #0x10
	bne _0211DBF0
	add r3, r10, r9
	ldrb r0, [r3, #0x1e9]
	cmp r0, #0
	beq _0211DBF0
	mov r2, #0
	mov r0, r5
	mov r1, r11
	strb r2, [r3, #0x1e9]
	bl FUN_0202cf6c
_0211DBF0:
	add r9, r9, #1
_0211DBF4:
	cmp r9, #3
	blt _0211DACC
	ldrb r1, [r10, #0x1d7]
	ldr r0, [sp]
	mov r4, #0
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211DC64 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r2, r4
	add r0, r10, #0xf4
	mov r1, #0x11
	bl FUN_ov29_02119f00
	ldrb r0, [r10, #0x1d7]
	mov r2, r4
	add r0, r10, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	add r0, r10, #0xf4
	beq _0211DC54
	mov r1, #0x38
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DC54:
	mov r1, #0x39
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DC60: .word 0x02099EB4
_0211DC64: .word 0x0209AC44
_0211DC68: .word 0x00008002
	arm_func_end FUN_ov29_0211d6cc

	arm_func_start FUN_ov29_0211dc6c
FUN_ov29_0211dc6c: ; 0x0211DC6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrb r0, [r4, #0x1d7]
	add r0, r4, r0
	ldrb r0, [r0, #0x1d3]
	cmp r0, #0
	beq _0211DDE0
	ldr r0, _0211DDF0 ; =0x0209AC44
	ldr r1, _0211DDF4 ; =0x00008001
	bl FUN_0202cf6c
	mov r3, #0
	mov r1, #0x10
_0211DC9C:
	ldrb r0, [r4, #0x1d7]
	cmp r3, r0
	beq _0211DCC0
	mov r2, r3, lsl #6
	add r0, r4, r3, lsl #1
	add r2, r2, #0x28
	add r0, r0, #0x100
	strh r2, [r0, #0xec]
	strh r1, [r0, #0xf2]
_0211DCC0:
	add r3, r3, #1
	cmp r3, #3
	blt _0211DC9C
	ldrb r0, [r4, #0x1d7]
	ldrb r1, [r4, #0x1d6]
	mov r5, #0
	add r0, r0, r0, lsl #1
	add r1, r1, r0
	mov r0, r4
	mov r2, r5
	and r1, r1, #0xff
	bl FUN_ov29_0211f2dc
	cmp r0, #0
	mov r6, #0
	mov r1, #0x20
	mov r3, #3
	streqb r5, [r4, #0x202]
	movne r0, #1
	strneb r0, [r4, #0x202]
	mov r2, r6
	add r0, r4, #0xf4
	strb r1, [r4, #0x1ff]
	strb r3, [r4, #0x1ca]
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r4, #0xf4
	mov r1, #0x10
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r4, #0xf4
	mov r1, #5
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r4, #0xf4
	mov r1, #0x13
	bl FUN_ov29_02119f00
	mov r5, #0x2c
	add r0, r4, #0xf4
	mov r1, r5
	mov r2, r6
	bl FUN_ov29_02119f00
	ldrb r0, [r4, #0x202]
	mov r2, r6
	cmp r0, #0
	add r0, r4, #0xf4
	beq _0211DD80
	mov r1, #0x3a
	b _0211DDB4
_0211DD80:
	mov r1, #0xe
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r4, #0xf4
	mov r1, #0x1c
	bl FUN_ov29_02119f00
	mov r1, r5
	mov r2, r6
	add r0, r4, #0xf4
	bl FUN_ov29_02119f00
	mov r2, r6
	add r0, r4, #0xf4
	mov r1, #0x3b
_0211DDB4:
	bl FUN_ov29_02119f00
	mov r5, #0
	mov r2, r5
	add r0, r4, #0xf4
	mov r1, #0x40
	bl FUN_ov29_02119f00
	mov r2, r5
	add r0, r4, #0xf4
	mov r1, #0x47
	bl FUN_ov29_02119f00
	ldmfd sp!, {r4, r5, r6, pc}
_0211DDE0:
	ldr r0, _0211DDF0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DDF0: .word 0x0209AC44
_0211DDF4: .word 0x00008001
	arm_func_end FUN_ov29_0211dc6c

	arm_func_start FUN_ov29_0211ddf8
FUN_ov29_0211ddf8: ; 0x0211DDF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0211DE4C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r4, #0
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x2e
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x48
	bl FUN_ov29_02119f00
	ldr r2, _0211DE50 ; =0x020AF740
	ldr r0, _0211DE54 ; =0x020A9C40
	mov r1, r4
	strh r4, [r2, #0xd6]
	mov r2, #1
	bl FUN_02045b40
	ldmfd sp!, {r3, r4, r5, pc}
_0211DE4C: .word 0x0209AC44
_0211DE50: .word 0x020AF740
_0211DE54: .word 0x020A9C40
	arm_func_end FUN_ov29_0211ddf8

	arm_func_start FUN_ov29_0211de58
FUN_ov29_0211de58: ; 0x0211DE58
	stmfd sp!, {r3, lr}
	tst r1, #1
	beq _0211DE9C
	ldrb r1, [r0, #0x202]
	cmp r1, #0
	bne _0211DE80
	ldr r0, _0211DECC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211DE80:
	mov r1, #1
	bl FUN_ov29_0211e248
	ldr r0, _0211DED0 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_0211DE9C:
	tst r1, #2
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0x1d7]
	mov r2, #0
	add r1, r0, r1
	strb r2, [r1, #0x1d3]
	bl FUN_ov29_0211e304
	ldr r0, _0211DED0 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_0211DECC: .word 0x0209AC44
_0211DED0: .word 0x02099EB4
	arm_func_end FUN_ov29_0211de58

	arm_func_start FUN_ov29_0211ded4
FUN_ov29_0211ded4: ; 0x0211DED4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r10, _0211E23C ; =0x02099EB4
	mov r9, r0
	ldr r0, [r10]
	mov r8, r1
	bl  FUN_ov16_0210f484
	mov r7, r0
	mov r6, #1
	ldr r0, [r10]
	mov r1, r8
	mov r2, r6
	bl  FUN_ov16_0210f20c
	mov r4, #0
	mov r5, r0
	add r0, r9, #0xf4
	mov r1, #0x30
	mov r2, r4
	bl FUN_ov29_02119f00
	add r0, r9, #0xf4
	mov r11, #0x31
	mov r1, r11
	mov r2, r4
	bl FUN_ov29_02119f00
	cmp r5, #3
	bne _0211E1A4
	cmp r7, #0xb
	addls pc, pc, r7, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DF44: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 5
	b _0211DF74 ; case 6
	b _0211DFF0 ; case 7
	b _0211E06C ; case 8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 10
	b _0211E0E8 ; case 11
_0211DF74:
	ldrb r0, [r9, #0x1d0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r2, [r9, #0x1d7]
	and r1, r4, #0xff
	mov r0, r9
	add r2, r9, r2
	strb r4, [r2, #0x1d3]
	strb r4, [r9, #0x1e8]
	strb r4, [r9, #0x1d7]
	add r1, r9, r1
	strb r6, [r1, #0x1d3]
	bl FUN_ov29_0211e304
	mov r2, r4
	add r0, r9, #0xf4
	mov r1, #0x46
	bl FUN_ov29_02119f00
	add r1, r9, #0x100
	ldrsb r0, [r1, #0xe8]
	ldrh r2, [r8]
	add r0, r9, r0, lsl #1
	sub r2, r2, #0x18
	add r0, r0, #0x100
	strh r2, [r0, #0xec]
	ldrsb r0, [r1, #0xe8]
	ldrh r1, [r8, #2]
	add r0, r9, r0, lsl #1
	sub r1, r1, #0x18
	add r0, r0, #0x100
	strh r1, [r0, #0xf2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DFF0:
	ldrb r0, [r9, #0x1d1]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r2, [r9, #0x1d7]
	and r1, r6, #0xff
	mov r0, r9
	add r2, r9, r2
	strb r4, [r2, #0x1d3]
	strb r6, [r9, #0x1e8]
	strb r6, [r9, #0x1d7]
	add r1, r9, r1
	strb r6, [r1, #0x1d3]
	bl FUN_ov29_0211e304
	mov r2, r4
	add r0, r9, #0xf4
	mov r1, #0x46
	bl FUN_ov29_02119f00
	add r1, r9, #0x100
	ldrsb r0, [r1, #0xe8]
	ldrh r2, [r8]
	add r0, r9, r0, lsl #1
	sub r2, r2, #0x18
	add r0, r0, #0x100
	strh r2, [r0, #0xec]
	ldrsb r0, [r1, #0xe8]
	ldrh r1, [r8, #2]
	add r0, r9, r0, lsl #1
	sub r1, r1, #0x18
	add r0, r0, #0x100
	strh r1, [r0, #0xf2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E06C:
	ldrb r0, [r9, #0x1d2]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #0x1d7]
	mov r1, #2
	add r0, r9, r0
	strb r4, [r0, #0x1d3]
	mov r0, r9
	strb r1, [r9, #0x1e8]
	strb r1, [r9, #0x1d7]
	add r1, r9, #2
	strb r6, [r1, #0x1d3]
	bl FUN_ov29_0211e304
	mov r2, r4
	add r0, r9, #0xf4
	mov r1, #0x46
	bl FUN_ov29_02119f00
	add r1, r9, #0x100
	ldrsb r0, [r1, #0xe8]
	ldrh r2, [r8]
	add r0, r9, r0, lsl #1
	sub r2, r2, #0x18
	add r0, r0, #0x100
	strh r2, [r0, #0xec]
	ldrsb r0, [r1, #0xe8]
	ldrh r1, [r8, #2]
	add r0, r9, r0, lsl #1
	sub r1, r1, #0x18
	add r0, r0, #0x100
	strh r1, [r0, #0xf2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E0E8:
	cmp r7, #0xb
	bne _0211E194
	ldrb r0, [r9, #0x202]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r1, [r8]
	ldrh r0, [r8, #2]
	sub r2, r1, #0x7c
	sub r1, r0, #0x8c
	mov r0, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FUN_02009a98
	ldr r2, _0211E240 ; =0xC00C00C1
	add r3, r9, #0x100
	smull r1, r5, r2, r0
	add r5, r0, r5
	mov r0, r0, lsr #0x1f
	add r5, r0, r5, asr #11
	mov r0, r5, lsl #0x10
	ldrsh r1, [r3, #0xfa]
	mov r5, r0, asr #0x10
	cmp r1, r0, asr #16
	ble _0211E188
	sub r0, r11, #0x32
	cmp r1, r0
	beq _0211E188
	sub r0, r5, r1
	bl FUN_02021288
	cmp r0, #8
	bge _0211E188
	add r0, r9, #0x100
	ldrh r2, [r0, #0xfc]
	mov r1, #4
	add r2, r2, #1
	strh r2, [r0, #0xfc]
	ldr r0, [r10]
	bl  FUN_ov16_0210efac
	mov r0, r9
	mov r1, r4
	bl FUN_ov29_0211e248
_0211E188:
	add r0, r9, #0x100
	strh r5, [r0, #0xfa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E194:
	sub r1, r11, #0x32
	add r0, r9, #0x100
	strh r1, [r0, #0xfa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1A4:
	cmp r5, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #4
	beq _0211E1C0
	cmp r7, #5
	beq _0211E1EC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1C0:
	ldrb r0, [r9, #0x202]
	cmp r0, #0
	bne _0211E1DC
	ldr r0, _0211E244 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1DC:
	mov r0, r9
	mov r1, r6
	bl FUN_ov29_0211e248
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1EC:
	ldrb r1, [r9, #0x1d7]
	mov r2, r4
	add r0, r9, #0xf4
	add r1, r9, r1
	strb r4, [r1, #0x1d3]
	mov r1, #0x46
	bl FUN_ov29_02119f00
	ldrb r1, [r9, #0x1d7]
	mov r2, #0x68
	mov r0, r9
	add r1, r9, r1, lsl #1
	add r1, r1, #0x100
	strh r2, [r1, #0xec]
	ldrb r1, [r9, #0x1d7]
	mov r2, #0x50
	add r1, r9, r1, lsl #1
	add r1, r1, #0x100
	strh r2, [r1, #0xf2]
	bl FUN_ov29_0211e304
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E23C: .word 0x02099EB4
_0211E240: .word 0xC00C00C1
_0211E244: .word 0x0209AC44
	arm_func_end FUN_ov29_0211ded4

	arm_func_start FUN_ov29_0211e248
FUN_ov29_0211e248: ; 0x0211E248
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _0211E300 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldrb r12, [r6, #0x1d7]
	mov r0, #5
	strb r0, [r6, #0x1ca]
	add r3, r6, #0x1d0
	add r0, r6, r12
	ldrb r1, [r3, r12]
	ldrb r0, [r0, #0x1d3]
	mov r4, #0
	mov r2, r4
	sub r0, r1, r0
	strb r0, [r3, r12]
	ldrb r3, [r6, #0x1d7]
	add r0, r6, #0xf4
	mov r1, #0x12
	add r3, r6, r3
	strb r4, [r3, #0x1d3]
	bl FUN_ov29_02119f00
	mov r1, #0x10
_0211E2A8:
	mov r2, r4, lsl #6
	add r0, r6, r4, lsl #1
	add r4, r4, #1
	add r2, r2, #0x28
	add r0, r0, #0x100
	strh r2, [r0, #0xec]
	strh r1, [r0, #0xf2]
	cmp r4, #3
	blt _0211E2A8
	mov r4, #0
	mov r2, r4
	add r0, r6, #0xf4
	mov r1, #0x41
	bl FUN_ov29_02119f00
	strb r5, [r6, #0x1fe]
	cmp r5, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r2, r4
	add r0, r6, #0xf4
	mov r1, #0x3b
	bl FUN_ov29_02119f00
	ldmfd sp!, {r4, r5, r6, pc}
_0211E300: .word 0x0209AC44
	arm_func_end FUN_ov29_0211e248

	arm_func_start FUN_ov29_0211e304
FUN_ov29_0211e304: ; 0x0211E304
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _0211E3F4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r0, [r4, #0x202]
	mov r1, #2
	strb r1, [r4, #0x1ca]
	cmp r0, #0
	bne _0211E33C
	add r0, r4, #0xf4
	mov r1, #0x2b
	mov r2, #0
	bl FUN_ov29_02119f00
_0211E33C:
	mov r5, #0
	mov r2, r5
	add r0, r4, #0xf4
	mov r1, #0x12
	bl FUN_ov29_02119f00
	mov r2, r5
	add r0, r4, #0xf4
	mov r1, #0x22
	bl FUN_ov29_02119f00
	mov r2, r5
	add r0, r4, #0xf4
	mov r1, #0x10
	bl FUN_ov29_02119f00
	mov r2, r5
	add r0, r4, #0xf4
	mov r1, #3
	bl FUN_ov29_02119f00
	add r0, r4, #0xf4
	mov r1, #0x11
	mov r2, r5
	bl FUN_ov29_02119f00
	ldrb r0, [r4, #0x1d7]
	mov r2, r5
	add r0, r4, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	add r0, r4, #0xf4
	beq _0211E3B4
	mov r1, #0x38
	b _0211E3B8
_0211E3B4:
	mov r1, #0x3b
_0211E3B8:
	bl FUN_ov29_02119f00
	mov r5, #0
	mov r2, r5
	add r0, r4, #0xf4
	mov r1, #0x3e
	bl FUN_ov29_02119f00
	mov r2, r5
	add r0, r4, #0xf4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	ldrb r0, [r4, #0x1d7]
	mov r1, #1
	add r0, r4, r0
	strb r1, [r0, #0x1e9]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E3F4: .word 0x0209AC44
	arm_func_end FUN_ov29_0211e304

	arm_func_start FUN_ov29_0211e3f8
FUN_ov29_0211e3f8: ; 0x0211E3F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x1fe]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #1
	ldr r0, _0211E44C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	add r0, r5, #0xf4
	mov r1, #0x3b
	mov r2, #0
	bl FUN_ov29_02119f00
	ldr r0, _0211E450 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	strb r4, [r5, #0x1fe]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E44C: .word 0x0209AC44
_0211E450: .word 0x02099EB4
	arm_func_end FUN_ov29_0211e3f8

	arm_func_start FUN_ov29_0211e454
FUN_ov29_0211e454: ; 0x0211E454
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _0211E73C ; =0x02099EB4
	mov r6, r0
	ldr r0, [r7]
	mov r5, r1
	bl  FUN_ov16_0210f484
	mov r8, r0
	mov r4, #1
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_0210f20c
	ldrb r1, [r6, #0x200]
	cmp r1, #0
	subne r0, r1, #1
	strneb r0, [r6, #0x200]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r6, #0x1fe]
	cmp r1, #0
	beq _0211E584
	add r0, r6, #0x100
	ldrh r0, [r0, #0xfc]
	ldr r1, _0211E740 ; =0x55555556
	mov r2, #3
	cmp r0, #0xc
	moveq r0, #0xa
	streqb r0, [r6, #0x200]
	add r0, r6, #0x100
	ldrh r3, [r0, #0xfc]
	add r3, r3, #1
	strh r3, [r0, #0xfc]
	ldrh r3, [r0, #0xfc]
	smull r0, r4, r1, r3
	add r4, r4, r3, lsr #31
	smull r0, r1, r2, r4
	subs r4, r3, r0
	beq _0211E4F4
	ldr r0, _0211E744 ; =0x0209AC44
	add r1, r2, #0x8000
	bl FUN_0202cf6c
_0211E4F4:
	add r0, r6, #0x100
	ldrh r3, [r0, #0xfc]
	ldr r1, _0211E748 ; =0x2AAAAAAB
	mov r2, #6
	smull r0, r4, r1, r3
	add r4, r4, r3, lsr #31
	smull r0, r1, r2, r4
	subs r4, r3, r0
	beq _0211E524
	ldr r0, _0211E744 ; =0x0209AC44
	ldr r1, _0211E74C ; =0x00008004
	bl FUN_0202cf6c
_0211E524:
	add r0, r6, #0x100
	ldrh r0, [r0, #0xfc]
	cmp r0, #0xb
	bne _0211E540
	ldr r0, _0211E744 ; =0x0209AC44
	ldr r1, _0211E750 ; =0x00008005
	bl FUN_0202cf6c
_0211E540:
	add r1, r6, #0x100
	ldrh r0, [r1, #0xfc]
	cmp r0, #0x19
	bne _0211E564
	mov r2, #0
	mov r0, r6
	strh r2, [r1, #0xfc]
	bl FUN_ov29_0211e758
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E564:
	cmp r0, #0x18
	bhs _0211E714
	ldr r0, [r6, #4]
	mov r1, #1
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	b _0211E714
_0211E584:
	cmp r0, #3
	bne _0211E6D0
	cmp r8, #0xb
	bne _0211E6CC
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	sub r2, r1, #0x7c
	sub r1, r0, #0x8c
	mov r0, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FUN_02009a98
	ldr r2, _0211E754 ; =0xC00C00C1
	add r3, r6, #0x100
	smull r1, r5, r2, r0
	add r5, r0, r5
	mov r0, r0, lsr #0x1f
	add r5, r0, r5, asr #11
	mov r0, r5, lsl #0x10
	ldrsh r1, [r3, #0xfa]
	mov r5, r0, asr #0x10
	cmp r1, r0, asr #16
	ble _0211E6C0
	sub r0, r4, #2
	cmp r1, r0
	beq _0211E6C0
	sub r0, r5, r1
	bl FUN_02021288
	cmp r0, #8
	bge _0211E6C0
	add r0, r6, #0x100
	ldrh r3, [r0, #0xfc]
	ldr r1, _0211E740 ; =0x55555556
	mov r2, #3
	add r3, r3, #1
	strh r3, [r0, #0xfc]
	ldrh r3, [r0, #0xfc]
	smull r0, r4, r1, r3
	add r4, r4, r3, lsr #31
	smull r0, r1, r2, r4
	subs r4, r3, r0
	beq _0211E634
	ldr r0, _0211E744 ; =0x0209AC44
	add r1, r2, #0x8000
	bl FUN_0202cf6c
_0211E634:
	add r0, r6, #0x100
	ldrh r3, [r0, #0xfc]
	ldr r1, _0211E748 ; =0x2AAAAAAB
	mov r2, #6
	smull r0, r4, r1, r3
	add r4, r4, r3, lsr #31
	smull r0, r1, r2, r4
	subs r4, r3, r0
	beq _0211E664
	ldr r0, _0211E744 ; =0x0209AC44
	ldr r1, _0211E74C ; =0x00008004
	bl FUN_0202cf6c
_0211E664:
	add r0, r6, #0x100
	ldrh r0, [r0, #0xfc]
	cmp r0, #0xb
	bne _0211E680
	ldr r0, _0211E744 ; =0x0209AC44
	ldr r1, _0211E750 ; =0x00008005
	bl FUN_0202cf6c
_0211E680:
	add r1, r6, #0x100
	ldrh r0, [r1, #0xfc]
	cmp r0, #0x19
	bne _0211E6A4
	mov r2, #0
	mov r0, r6
	strh r2, [r1, #0xfc]
	bl FUN_ov29_0211e758
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E6A4:
	cmp r0, #0x18
	bhs _0211E6C0
	ldr r0, [r6, #4]
	mov r1, #1
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
_0211E6C0:
	add r0, r6, #0x100
	strh r5, [r0, #0xfa]
	b _0211E714
_0211E6CC:
	b _0211E708
_0211E6D0:
	cmp r0, #2
	bne _0211E708
	cmp r8, #4
	cmpeq r1, #0
	bne _0211E714
	ldr r0, _0211E744 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	add r0, r6, #0xf4
	mov r1, #0x3b
	mov r2, #0
	strb r4, [r6, #0x1fe]
	bl FUN_ov29_02119f00
	b _0211E714
_0211E708:
	sub r1, r4, #2
	add r0, r6, #0x100
	strh r1, [r0, #0xfa]
_0211E714:
	mov r4, #0
	mov r2, r4
	add r0, r6, #0xf4
	mov r1, #0x31
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r6, #0xf4
	mov r1, #0x30
	bl FUN_ov29_02119f00
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E73C: .word 0x02099EB4
_0211E740: .word 0x55555556
_0211E744: .word 0x0209AC44
_0211E748: .word 0x2AAAAAAB
_0211E74C: .word 0x00008004
_0211E750: .word 0x00008005
_0211E754: .word 0xC00C00C1
	arm_func_end FUN_ov29_0211e454

	arm_func_start FUN_ov29_0211e758
FUN_ov29_0211e758: ; 0x0211E758
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #6
	mov r2, r5
	add r0, r6, #0xf4
	mov r1, #0x3b
	strb r4, [r6, #0x1ca]
	strb r5, [r6, #0x1c8]
	bl FUN_ov29_02119f00
	mov r2, r5
	add r0, r6, #0xf4
	mov r1, #0x37
	bl FUN_ov29_02119f00
	mov r2, r5
	add r0, r6, #0xf4
	mov r1, #0x1d
	bl FUN_ov29_02119f00
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xf4
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r1, #0x14
	mov r2, r5
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r4, #0x2c
	mov r1, r4
	mov r2, r5
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r1, #0x2f
	mov r2, r5
	bl FUN_ov29_02119f00
	mov r1, #0xf
	add r0, r6, #0x200
	strh r1, [r0, #4]
	add r0, r6, #0xf4
	mov r1, #0x32
	mov r2, r5
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r1, #7
	mov r2, r5
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r1, #0x15
	mov r2, r5
	bl FUN_ov29_02119f00
	mov r1, r4
	add r0, r6, #0xf4
	mov r2, r5
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r1, #0x33
	mov r2, r5
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r1, #0x3c
	mov r2, r5
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r2, r5
	mov r1, #0x12
	bl FUN_ov29_02119f00
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov29_0211e758

	arm_func_start FUN_ov29_0211e864
FUN_ov29_0211e864: ; 0x0211E864
	stmfd sp!, {r4, lr}
	mov r4, r0
	tst r1, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211E890 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r0, r4
	bl FUN_ov29_0211e8e4
	ldmfd sp!, {r4, pc}
_0211E890: .word 0x02099EB4
	arm_func_end FUN_ov29_0211e864

	arm_func_start FUN_ov29_0211e894
FUN_ov29_0211e894: ; 0x0211E894
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211E8E0 ; =0x02099EB4
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	bl  FUN_ov16_0210f484
	mov r5, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_0210f20c
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #4
	cmpne r5, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov29_0211e8e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E8E0: .word 0x02099EB4
	arm_func_end FUN_ov29_0211e894

	arm_func_start FUN_ov29_0211e8e4
FUN_ov29_0211e8e4: ; 0x0211E8E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0211E9C8 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r4, #0
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x34
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x24
	bl FUN_ov29_02119f00
	ldrb r0, [r5, #0x201]
	cmp r0, #0
	beq _0211E98C
	mov r1, #8
	mov r2, r4
	add r0, r5, #0xf4
	strb r1, [r5, #0x1ca]
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x1d
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x16
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	ldrb r0, [r5, #0x201]
	cmp r0, #3
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x35
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211E98C:
	mov r3, #0xc
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0xd
	strb r3, [r5, #0x1ca]
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x1b
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211E9C8: .word 0x0209AC44
	arm_func_end FUN_ov29_0211e8e4

	arm_func_start FUN_ov29_0211e9cc
FUN_ov29_0211e9cc: ; 0x0211E9CC
	ldr r12, _0211E9D4 ; =FUN_ov29_0211e9dc
	bx r12
_0211E9D4: .word FUN_ov29_0211e9dc
	arm_func_end FUN_ov29_0211e9cc

	arm_func_start FUN_ov29_0211e9d8
FUN_ov29_0211e9d8: ; 0x0211E9D8
	bx lr
	arm_func_end FUN_ov29_0211e9d8

	arm_func_start FUN_ov29_0211e9dc
FUN_ov29_0211e9dc: ; 0x0211E9DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x201]
	mov r4, #0
	cmp r0, #3
	bne _0211EA1C
	mov r1, #0xb
	mov r2, r4
	add r0, r5, #0xf4
	strb r1, [r5, #0x1ca]
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x19
	bl FUN_ov29_02119f00
	b _0211EA40
_0211EA1C:
	mov r1, #9
	mov r2, r4
	add r0, r5, #0xf4
	strb r1, [r5, #0x1ca]
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x17
	bl FUN_ov29_02119f00
_0211EA40:
	add r0, r5, #0xf4
	mov r1, #0x2c
	mov r2, #0
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov29_0211e9dc

	arm_func_start FUN_ov29_0211ea54
FUN_ov29_0211ea54: ; 0x0211EA54
	stmfd sp!, {r4, lr}
	mov r4, r0
	tst r1, #1
	beq _0211EA90
	add r0, r4, #0x124
	bl  FUN_ov16_02110b04
	cmp r0, #1
	mov r0, r4
	bne _0211EA80
	bl FUN_ov29_0211ec2c
	b _0211EA84
_0211EA80:
	bl FUN_ov29_0211ec90
_0211EA84:
	add r0, r4, #0x124
	bl  FUN_ov16_02110b0c
	ldmfd sp!, {r4, pc}
_0211EA90:
	tst r1, #2
	beq _0211EABC
	add r0, r4, #0x124
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	mov r0, r4
	bl FUN_ov29_0211ec90
	add r0, r4, #0x124
	bl  FUN_ov16_02110b0c
	ldmfd sp!, {r4, pc}
_0211EABC:
	tst r1, #0x30
	beq _0211EB04
	ldr r0, _0211EB14 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r4, #0x124
	bl  FUN_ov16_02110b04
	cmp r0, #1
	add r0, r4, #0x124
	bne _0211EAF4
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r4, pc}
_0211EAF4:
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r4, pc}
_0211EB04:
	tst r1, #0x400
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov29_0211ecf8
	ldmfd sp!, {r4, pc}
_0211EB14: .word 0x0209AC44
	arm_func_end FUN_ov29_0211ea54

	arm_func_start FUN_ov29_0211eb18
FUN_ov29_0211eb18: ; 0x0211EB18
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211EC24 ; =0x02099EB4
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	bl  FUN_ov16_0210f484
	mov r5, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_0210f20c
	mov r4, r0
	cmp r4, #5
	bne _0211EBBC
	cmp r5, #1
	beq _0211EB64
	cmp r5, #2
	beq _0211EB90
	b _0211EBBC
_0211EB64:
	add r0, r7, #0x124
	bl  FUN_ov16_02110b04
	cmp r0, #2
	bne _0211EB80
	ldr r0, _0211EC28 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211EB80:
	add r0, r7, #0x124
	mov r1, #1
	mov r2, #0
	b _0211EBB8
_0211EB90:
	add r0, r7, #0x124
	bl  FUN_ov16_02110b04
	cmp r0, #1
	bne _0211EBAC
	ldr r0, _0211EC28 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211EBAC:
	add r0, r7, #0x124
	mov r1, #0
	mov r2, #1
_0211EBB8:
	bl  FUN_ov16_02110a04
_0211EBBC:
	cmp r4, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #1
	beq _0211EBE0
	cmp r5, #2
	beq _0211EBFC
	cmp r5, #0xa
	beq _0211EC18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EBE0:
	add r0, r7, #0x124
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	mov r0, r7
	bl FUN_ov29_0211ec2c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EBFC:
	mov r1, #0
	mov r2, r1
	add r0, r7, #0x124
	bl  FUN_ov16_02110a04
	mov r0, r7
	bl FUN_ov29_0211ec90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EC18:
	mov r0, r7
	bl FUN_ov29_0211ecf8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EC24: .word 0x02099EB4
_0211EC28: .word 0x0209AC44
	arm_func_end FUN_ov29_0211eb18

	arm_func_start FUN_ov29_0211ec2c
FUN_ov29_0211ec2c: ; 0x0211EC2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0211EC84 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r4, #0
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x2e
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x48
	bl FUN_ov29_02119f00
	add r0, r5, #0x100
	ldrh r1, [r0, #0xd8]
	ldr r2, _0211EC88 ; =0x020AF740
	ldr r0, _0211EC8C ; =0x020A9C40
	strh r1, [r2, #0xd6]
	ldrb r2, [r5, #0x269]
	bl FUN_02045b40
	ldmfd sp!, {r3, r4, r5, pc}
_0211EC84: .word 0x0209AC44
_0211EC88: .word 0x020AF740
_0211EC8C: .word 0x020A9C40
	arm_func_end FUN_ov29_0211ec2c

	arm_func_start FUN_ov29_0211ec90
FUN_ov29_0211ec90: ; 0x0211EC90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _0211ECF4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r4, #0
	mov r5, #0xa
	mov r2, r4
	add r0, r6, #0xf4
	mov r1, #0x26
	strb r5, [r6, #0x1ca]
	bl FUN_ov29_02119f00
	mov r1, r5
	mov r2, r4
	add r0, r6, #0xf4
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r6, #0xf4
	mov r1, #0x18
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r2, r4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	ldmfd sp!, {r4, r5, r6, pc}
_0211ECF4: .word 0x0209AC44
	arm_func_end FUN_ov29_0211ec90

	arm_func_start FUN_ov29_0211ecf8
FUN_ov29_0211ecf8: ; 0x0211ECF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211ED30 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldrb r2, [r4, #0x1c8]
	add r0, r4, #0xf4
	mov r1, #0x35
	mvn r2, r2
	add r3, r2, #2
	mov r2, #0
	strb r3, [r4, #0x1c8]
	bl FUN_ov29_02119f00
	ldmfd sp!, {r4, pc}
_0211ED30: .word 0x0209AC44
	arm_func_end FUN_ov29_0211ecf8

	arm_func_start FUN_ov29_0211ed34
FUN_ov29_0211ed34: ; 0x0211ED34
	stmfd sp!, {r4, lr}
	mov r4, r0
	tst r1, #1
	beq _0211ED70
	add r0, r4, #0x124
	bl  FUN_ov16_02110b04
	cmp r0, #1
	mov r0, r4
	bne _0211ED60
	bl FUN_ov29_0211eee8
	b _0211ED64
_0211ED60:
	bl FUN_ov29_0211efd0
_0211ED64:
	add r0, r4, #0x124
	bl  FUN_ov16_02110b0c
	ldmfd sp!, {r4, pc}
_0211ED70:
	tst r1, #2
	beq _0211ED9C
	add r0, r4, #0x124
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	mov r0, r4
	bl FUN_ov29_0211efd0
	add r0, r4, #0x124
	bl  FUN_ov16_02110b0c
	ldmfd sp!, {r4, pc}
_0211ED9C:
	tst r1, #0x30
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211EDE4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r4, #0x124
	bl  FUN_ov16_02110b04
	cmp r0, #1
	add r0, r4, #0x124
	bne _0211EDD4
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r4, pc}
_0211EDD4:
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r4, pc}
_0211EDE4: .word 0x0209AC44
	arm_func_end FUN_ov29_0211ed34

	arm_func_start FUN_ov29_0211ede8
FUN_ov29_0211ede8: ; 0x0211EDE8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211EEE0 ; =0x02099EB4
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	bl  FUN_ov16_0210f484
	mov r5, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_0210f20c
	mov r4, r0
	cmp r4, #5
	bne _0211EE8C
	cmp r5, #1
	beq _0211EE34
	cmp r5, #2
	beq _0211EE60
	b _0211EE8C
_0211EE34:
	add r0, r7, #0x124
	bl  FUN_ov16_02110b04
	cmp r0, #2
	bne _0211EE50
	ldr r0, _0211EEE4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211EE50:
	add r0, r7, #0x124
	mov r1, #1
	mov r2, #0
	b _0211EE88
_0211EE60:
	add r0, r7, #0x124
	bl  FUN_ov16_02110b04
	cmp r0, #1
	bne _0211EE7C
	ldr r0, _0211EEE4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211EE7C:
	add r0, r7, #0x124
	mov r1, #0
	mov r2, #1
_0211EE88:
	bl  FUN_ov16_02110a04
_0211EE8C:
	cmp r4, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #1
	beq _0211EEA8
	cmp r5, #2
	beq _0211EEC4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EEA8:
	add r0, r7, #0x124
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	mov r0, r7
	bl FUN_ov29_0211eee8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EEC4:
	add r0, r7, #0x124
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	mov r0, r7
	bl FUN_ov29_0211efd0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EEE0: .word 0x02099EB4
_0211EEE4: .word 0x0209AC44
	arm_func_end FUN_ov29_0211ede8

	arm_func_start FUN_ov29_0211eee8
FUN_ov29_0211eee8: ; 0x0211EEE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0211EFCC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r4, #0
	mov r3, #2
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x27
	strb r3, [r5, #0x1ca]
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x23
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x22
	bl FUN_ov29_02119f00
	add r0, r5, #0xf4
	mov r1, #0x25
	mov r2, r4
	bl FUN_ov29_02119f00
	add r0, r5, #0xf4
	mov r1, #0x36
	mov r2, r4
	bl FUN_ov29_02119f00
	ldrb r0, [r5, #0x1d7]
	mov r2, r4
	add r0, r5, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	add r0, r5, #0xf4
	beq _0211EF7C
	mov r1, #0x38
	b _0211EF80
_0211EF7C:
	mov r1, #0x39
_0211EF80:
	bl FUN_ov29_02119f00
	mov r4, #0
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x3e
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #3
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x11
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211EFCC: .word 0x0209AC44
	arm_func_end FUN_ov29_0211eee8

	arm_func_start FUN_ov29_0211efd0
FUN_ov29_0211efd0: ; 0x0211EFD0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _0211F034 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r4, #0
	mov r5, #9
	mov r2, r4
	add r0, r6, #0xf4
	mov r1, #0x27
	strb r5, [r6, #0x1ca]
	bl FUN_ov29_02119f00
	mov r1, r5
	mov r2, r4
	add r0, r6, #0xf4
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r6, #0xf4
	mov r1, #0x17
	bl FUN_ov29_02119f00
	add r0, r6, #0xf4
	mov r2, r4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	ldmfd sp!, {r4, r5, r6, pc}
_0211F034: .word 0x0209AC44
	arm_func_end FUN_ov29_0211efd0

	arm_func_start FUN_ov29_0211f038
FUN_ov29_0211f038: ; 0x0211F038
	stmfd sp!, {r4, lr}
	mov r4, r0
	tst r1, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211F064 ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r0, r4
	bl FUN_ov29_0211f0b8
	ldmfd sp!, {r4, pc}
_0211F064: .word 0x02099EB4
	arm_func_end FUN_ov29_0211f038

	arm_func_start FUN_ov29_0211f068
FUN_ov29_0211f068: ; 0x0211F068
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211F0B4 ; =0x02099EB4
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	bl  FUN_ov16_0210f484
	mov r5, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_0210f20c
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #4
	cmpne r5, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov29_0211f0b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F0B4: .word 0x02099EB4
	arm_func_end FUN_ov29_0211f068

	arm_func_start FUN_ov29_0211f0b8
FUN_ov29_0211f0b8: ; 0x0211F0B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0211F17C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r4, #0
	mov r3, #2
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x2a
	strb r3, [r5, #0x1ca]
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x23
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x22
	bl FUN_ov29_02119f00
	ldrb r0, [r5, #0x1d7]
	mov r2, r4
	add r0, r5, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	add r0, r5, #0xf4
	beq _0211F12C
	mov r1, #0x38
	b _0211F130
_0211F12C:
	mov r1, #0x39
_0211F130:
	bl FUN_ov29_02119f00
	mov r4, #0
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #3
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x11
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x3e
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211F17C: .word 0x0209AC44
	arm_func_end FUN_ov29_0211f0b8

	arm_func_start FUN_ov29_0211f180
FUN_ov29_0211f180: ; 0x0211F180
	stmfd sp!, {r4, lr}
	mov r4, r0
	tst r1, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211F1AC ; =0x02099EB4
	mov r1, #3
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r0, r4
	bl FUN_ov29_0211f204
	ldmfd sp!, {r4, pc}
_0211F1AC: .word 0x02099EB4
	arm_func_end FUN_ov29_0211f180

	arm_func_start FUN_ov29_0211f1b0
FUN_ov29_0211f1b0: ; 0x0211F1B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211F200 ; =0x02099EB4
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	bl  FUN_ov16_0210f484
	mov r5, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_0210f20c
	cmp r0, #2
	cmpeq r5, #3
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	mov r1, #3
	bl  FUN_ov16_0210efac
	mov r0, r7
	bl FUN_ov29_0211f204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F200: .word 0x02099EB4
	arm_func_end FUN_ov29_0211f1b0

	arm_func_start FUN_ov29_0211f204
FUN_ov29_0211f204: ; 0x0211F204
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0211F2D8 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r4, #0
	mov r3, #0xd
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x28
	strb r3, [r5, #0x1ca]
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x23
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x22
	bl FUN_ov29_02119f00
	add r0, r5, #0xf4
	mov r1, #0x25
	mov r2, r4
	bl FUN_ov29_02119f00
	ldrb r0, [r5, #0x1d7]
	mov r2, r4
	add r0, r5, r0
	ldrb r0, [r0, #0x1d0]
	cmp r0, #0
	add r0, r5, #0xf4
	beq _0211F288
	mov r1, #0x38
	b _0211F28C
_0211F288:
	mov r1, #0x39
_0211F28C:
	bl FUN_ov29_02119f00
	mov r4, #0
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #3
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x11
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x3e
	bl FUN_ov29_02119f00
	mov r2, r4
	add r0, r5, #0xf4
	mov r1, #0x2c
	bl FUN_ov29_02119f00
	ldmfd sp!, {r3, r4, r5, pc}
_0211F2D8: .word 0x0209AC44
	arm_func_end FUN_ov29_0211f204

	arm_func_start FUN_ov29_0211f2dc
FUN_ov29_0211f2dc: ; 0x0211F2DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	ldr r3, _0211F67C ; =0x0209BA20
	mov r10, #0
	add r4, sp, #0x20
	str r10, [r4]
	str r10, [r4, #4]
	str r10, [r4, #8]
	str r10, [r4, #0xc]
	str r10, [r4, #0x10]
	str r10, [r4, #0x14]
	str r0, [sp]
	mov r9, r1
	str r2, [sp, #4]
	mov r7, r10
	mov r6, r10
	ldr r4, [r3, #0x7ec]
	ldr r5, _0211F680 ; =0x020A108A
	b _0211F444
_0211F328:
	ldrh r1, [r4, #0x24]
	cmp r1, #0
	beq _0211F43C
	ldr r0, _0211F67C ; =0x0209BA20
	bl FUN_0204bc4c
	mov r1, r0
	mov r0, r5
	bl FUN_020509d8
	cmp r0, #0
	beq _0211F43C
	ldrh r1, [r4, #0x24]
	mov r8, #0
	ldr r0, _0211F684 ; =0x0209A0AC
	mov r2, r8
	bl FUN_0206c7dc
	cmp r0, #0
	bne _0211F43C
	ldrb r0, [r4, #0x2b]
	tst r0, #8
	movne r8, #1
	cmp r8, #0
	beq _0211F398
	ldr r0, _0211F688 ; =0x02099F44
	ldrh r1, [r4, #0x24]
	ldr r0, [r0]
	bl  FUN_ov131_0213c764
	cmp r0, #0
	bne _0211F3B0
_0211F398:
	ldrb r0, [r4, #0x2b]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0211F43C
_0211F3B0:
	mov r2, #0
	b _0211F434
_0211F3B8:
	ldrb r1, [r4, #0x26]
	add r0, r9, r2
	cmp r1, r0
	bne _0211F430
	ldrh r1, [r4, #0x24]
	mov r0, #0
	cmp r2, #0
	strh r1, [sp, #0x10]
	ldrb r1, [r4, #0x26]
	str r1, [sp, #0x14]
	strh r0, [sp, #0x1c]
	beq _0211F3FC
	cmp r2, #1
	beq _0211F404
	cmp r2, #2
	addeq r10, r10, #0xa
	b _0211F408
_0211F3FC:
	add r10, r10, #0x3c
	b _0211F408
_0211F404:
	add r10, r10, #0x1e
_0211F408:
	mov r0, #0
	str r10, [sp, #0x18]
	sub r1, sp, #4
	strb r0, [r1]
	ldr r2, [r1]
	add r0, sp, #0x20
	add r1, sp, #0x10
	bl FUN_ov29_0211f698
	add r7, r7, #1
	b _0211F43C
_0211F430:
	add r2, r2, #1
_0211F434:
	cmp r2, #3
	blt _0211F3B8
_0211F43C:
	add r4, r4, #0x2c
	add r6, r6, #1
_0211F444:
	ldr r0, _0211F68C ; =0x0209C220
	ldrh r0, [r0, #0x6a]
	cmp r6, r0
	blt _0211F328
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0211F668
	mov r9, #0
	ldr r3, [sp]
	mov r1, r9
	mov r2, #0x10
	strb r9, [r3, #0x201]
	bl MemWrite
	cmp r7, #7
	bge _0211F4E0
	mov r0, r9
	rsb r8, r7, #7
	sub r5, sp, #4
	and r4, r0, #0xff
	add r6, sp, #0x10
	ldr r11, _0211F690 ; =0x02123550
	b _0211F4D8
_0211F49C:
	mov r0, r6
	mov r1, #0
	mov r2, #0x10
	bl MemWrite
	mov r0, r9, lsl #1
	ldrh r0, [r11, r0]
	add r10, r10, #0x1e
	str r10, [sp, #0x18]
	strh r0, [sp, #0x1c]
	strb r4, [r5]
	ldr r2, [r5]
	add r0, sp, #0x20
	mov r1, r6
	bl FUN_ov29_0211f698
	add r9, r9, #1
_0211F4D8:
	cmp r9, r8
	blt _0211F49C
_0211F4E0:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0211F668
	bl FUN_02023c6c
	mov r1, r10
	bl FUN_0201fbc8
	add r0, sp, #0x28
	ldr r5, [r0, #4]
	ldr r0, [r0, #0xc]
	mov r10, r1
	mov r8, #0
	ldr r6, [sp, #0x20]
	str r0, [sp, #8]
	ldr r4, [sp, #0x28]
	ldr r11, [sp, #0x24]
	b _0211F660
_0211F520:
	add r9, r8, r6
	ldr r1, [sp, #8]
	add r0, r5, r9, lsr #6
	bl FUN_0201fbc8
	ldr r1, [r4, r1, lsl #2]
	and r0, r9, #0x3f
	add r0, r1, r0, lsl #4
	ldr r0, [r0, #8]
	cmp r0, r10
	bls _0211F65C
	ldr r1, [sp, #0x20]
	add r0, sp, #0x28
	add r4, r8, r1
	ldr r2, [r0, #4]
	ldr r1, [r0, #0xc]
	add r0, r2, r4, lsr #6
	bl FUN_0201fbc8
	ldr r2, [sp, #0x28]
	and r0, r4, #0x3f
	ldr r1, [r2, r1, lsl #2]
	mov r0, r0, lsl #4
	ldrh r1, [r1, r0]
	ldr r0, [sp, #4]
	strh r1, [r0]
	ldr r1, [sp, #0x20]
	add r0, sp, #0x28
	add r4, r8, r1
	ldr r2, [r0, #4]
	ldr r1, [r0, #0xc]
	add r0, r2, r4, lsr #6
	bl FUN_0201fbc8
	ldr r2, [sp, #0x28]
	and r0, r4, #0x3f
	ldr r1, [r2, r1, lsl #2]
	add r0, r1, r0, lsl #4
	ldr r1, [r0, #4]
	ldr r0, [sp, #4]
	str r1, [r0, #4]
	ldr r1, [sp, #0x20]
	add r0, sp, #0x28
	add r4, r8, r1
	ldr r2, [r0, #4]
	ldr r1, [r0, #0xc]
	add r0, r2, r4, lsr #6
	bl FUN_0201fbc8
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #4]
	ldr r2, [r2, r1, lsl #2]
	ldrh r0, [r0]
	and r1, r4, #0x3f
	add r1, r2, r1, lsl #4
	cmp r0, #0
	ldrh r1, [r1, #0xc]
	ldr r0, [sp, #4]
	strh r1, [r0, #0xc]
	beq _0211F640
	ldr r3, [r0, #4]
	ldr r0, _0211F694 ; =0xCCCCCCCD
	mov r2, #0xa
	umull r0, r1, r3, r0
	mov r1, r1, lsr #3
	umull r0, r1, r2, r1
	sub r1, r3, r0
	cmp r1, #3
	cmpne r1, #6
	cmpne r1, #9
	ldreq r0, [sp]
	moveq r1, #2
	streqb r1, [r0, #0x201]
	ldrne r0, [sp]
	movne r1, #1
	strneb r1, [r0, #0x201]
_0211F640:
	ldr r0, [sp, #4]
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [sp]
	movne r1, #3
	strneb r1, [r0, #0x201]
	b _0211F668
_0211F65C:
	add r8, r8, #1
_0211F660:
	cmp r8, r11
	blo _0211F520
_0211F668:
	add r0, sp, #0x20
	bl FUN_ov29_0211fc14
	mov r0, r7
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F67C: .word 0x0209BA20
_0211F680: .word 0x020A108A
_0211F684: .word 0x0209A0AC
_0211F688: .word 0x02099F44
_0211F68C: .word 0x0209C220
_0211F690: .word 0x02123550
_0211F694: .word 0xCCCCCCCD
	arm_func_end FUN_ov29_0211f2dc

	arm_func_start FUN_ov29_0211f698
FUN_ov29_0211f698: ; 0x0211F698
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	cmp r0, #0
	moveq r2, #0
	subne r0, r0, #1
	movne r2, r0, lsl #6
	ldr r1, [r5]
	ldr r0, [r5, #4]
	add r0, r1, r0
	subs r0, r2, r0
	bne _0211F6DC
	mov r0, r5
	mov r1, #1
	bl FUN_ov29_0211f710
_0211F6DC:
	ldr r2, [r5, #4]
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov29_0212298c
	ldr r12, [sp, #0x10]
	cmp r12, #0
	ldmneia r4, {r0, r1, r2, r3}
	stmneia r12, {r0, r1, r2, r3}
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_0211f698

	arm_func_start FUN_ov29_0211f710
FUN_ov29_0211f710: ; 0x0211F710
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x13c
	mov r10, r0
	tst r1, #0x3f
	mov r6, #0
	movne r0, #1
	moveq r0, r6
	add r7, r0, r1, lsr #6
	add r4, sp, #0x28
	b _0211F7A4
_0211F738:
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r1
	ldr r5, [r2, r1, lsl #2]
	add r1, r0, #1
	ldr r0, [r10, #0x14]
	str r1, [r10, #0xc]
	cmp r1, r0
	streq r6, [r10, #0xc]
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #0xc]
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r10, #0x14]
	sub r0, r0, #1
	str r2, [r10, #0x10]
	bl FUN_0201fbc8
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r5, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x28]
	bl FUN_ov29_02120cf8
	ldr r0, [r10]
	sub r7, r7, #1
	sub r0, r0, #0x40
	str r0, [r10]
_0211F7A4:
	cmp r7, #0
	beq _0211F7B8
	ldr r0, [r10]
	cmp r0, #0x40
	bhs _0211F738
_0211F7B8:
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _0211FC04 ; =0x02123C00
	ldr r2, [r1]
	tst r2, #1
	orreq r2, r2, #1
	streq r2, [r1]
	ldreq r0, _0211FC08 ; =0x021235D8
	mvneq r3, #0x7f
	streq r3, [r0]
	ldr r2, _0211FC08 ; =0x021235D8
	mov r0, r7, lsl #6
	ldr r1, [r2]
	cmp r1, r7, lsl #6
	blo _0211F83C
	ldr r1, _0211FC04 ; =0x02123C00
	ldr r3, [r1]
	tst r3, #1
	orreq r3, r3, #1
	mvneq r4, #0x7f
	streq r3, [r1]
	streq r4, [r2]
	ldr r2, [r10, #0x10]
	ldr r1, _0211FC08 ; =0x021235D8
	cmp r2, #0
	ldr r3, [r1]
	moveq r1, #0
	subne r1, r2, #1
	movne r1, r1, lsl #6
	sub r0, r3, r0
	cmp r1, r0
	bls _0211F844
_0211F83C:
	ldr r0, _0211FC0C ; =0x02123BA4
	bl FUN_ov29_02120bc0
_0211F844:
	ldr r0, [r10, #0x14]
	mov r1, #0
	cmp r0, #0
	subne r1, r0, #1
	ldr r0, [r10, #0x10]
	add r0, r7, r0
	cmp r0, r1
	bhi _0211F8D8
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211FC10 ; =0x02123624
	add r9, sp, #0x24
	mov r5, #0x400
_0211F87C:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0211F898
	mov r0, r4
	bl FUN_02023ab4
	bl FUN_02021040
_0211F898:
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	ldr r1, [r10, #0x14]
	add r0, r2, r0
	sub r0, r0, #1
	bl FUN_0201fbc8
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r8, [r2, r1, lsl #2]
	mov r1, r9
	str r6, [sp, #0x24]
	bl FUN_ov29_02120cf8
	subs r7, r7, #1
	bne _0211F87C
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F8D8:
	movs r1, #0
	add r4, sp, #0x12c
	str r1, [sp, #0x124]
	str r1, [sp, #0x128]
	str r1, [sp, #0xb4]
	str r1, [sp, #0xb8]
	str r1, [sp, #0xbc]
	str r1, [sp, #0xc0]
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	add r8, sp, #0xb4
	beq _0211F918
	add r0, r1, r1
	bl FUN_0201fbc8
_0211F918:
	ldr r5, [r8]
	ldr r2, [r8, #4]
	ldr r0, [r8, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	add r8, r5, r1, lsl #2
	ldrb r1, [sp, #0x10]
	add r0, sp, #0xc4
	str r8, [sp, #0xc4]
	str r5, [sp, #0xc8]
	str r5, [sp, #0xd8]
	str r3, [sp, #0xcc]
	str r2, [sp, #0xd0]
	str r0, [sp, #4]
	add r0, sp, #0xd4
	strb r1, [sp, #8]
	sub r5, sp, #0xc
	str r3, [sp, #0xd4]
	str r3, [sp, #0xdc]
	str r2, [sp, #0xe0]
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	ldmia r5, {r1, r2, r3}
	bl FUN_ov29_02123130
	add r0, sp, #0xb4
	bl FUN_ov29_02123044
	ldr r0, [r10, #0x10]
	mov r2, #0
	add r0, r7, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r10, #0x14]
	add r9, sp, #0x12c
	cmp r1, #0
	subne r2, r1, #1
	cmp r0, r2, lsl #1
	addhi r0, sp, #0x1c
	mov r1, r2, lsl #1
	addls r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r1, [r0]
	mov r0, r9
	bl FUN_ov29_02120bd0
	add r1, sp, #0x18
	mov r0, r9
	str r6, [sp, #0x18]
	bl FUN_ov29_02120cf8
	cmp r7, #0
	beq _0211FA40
	ldr r11, _0211FC10 ; =0x02123624
	add r4, sp, #0x14
	mov r5, #0x400
_0211F9EC:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0211FA08
	mov r0, r11
	bl FUN_02023ab4
	bl FUN_02021040
_0211FA08:
	ldr r2, [r9, #4]
	ldr r0, [r9, #8]
	ldr r1, [r9, #0xc]
	add r0, r2, r0
	sub r0, r0, #1
	bl FUN_0201fbc8
	ldr r2, [r9]
	mov r0, r9
	str r8, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x14]
	bl FUN_ov29_02120cf8
	subs r7, r7, #1
	bne _0211F9EC
_0211FA40:
	ldr r0, [r10, #0x10]
	mov r5, #0
	cmp r0, #0
	beq _0211FBA8
	ldr r1, [r10, #0x14]
	cmp r1, #0
	moveq r1, r5
	beq _0211FA70
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
_0211FA70:
	ldr r6, [r10, #8]
	ldr r3, [r10, #0xc]
	add r2, r6, r1, lsl #2
	ldr r0, [r10, #0x14]
	add r4, r6, r3, lsl #2
	add r3, r6, r0, lsl #2
	add r0, sp, #0xa4
	str r2, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r4, [sp, #0xac]
	str r3, [sp, #0xb0]
	mvn r1, #0
	str r2, [sp, #0xe4]
	str r6, [sp, #0xe8]
	str r4, [sp, #0xec]
	str r3, [sp, #0xf0]
	bl FUN_ov29_02123078
	ldr r1, [r10, #8]
	ldr r7, [sp, #0xa8]
	ldr r6, [sp, #0xac]
	ldr r8, [sp, #0xa4]
	ldr r3, [sp, #0xb0]
	ldr r0, [r10, #0xc]
	ldr r2, [r9]
	add r4, r1, r0, lsl #2
	ldr r0, [r10, #0x14]
	str r7, [sp, #0xf8]
	str r7, [sp, #0x40]
	str r7, [sp, #0x88]
	str r7, [sp, #0x74]
	add r7, r1, r0, lsl #2
	ldr r0, [r9, #4]
	str r6, [sp, #0xfc]
	str r6, [sp, #0x44]
	str r6, [sp, #0x8c]
	str r6, [sp, #0x78]
	add r6, r2, r0, lsl #2
	ldr r0, [r9, #0xc]
	and r5, r5, #0xff
	add r0, r2, r0, lsl #2
	str r3, [sp, #0x100]
	str r1, [sp, #0x108]
	str r3, [sp, #0x48]
	str r1, [sp, #0x30]
	str r3, [sp, #0x90]
	str r3, [sp, #0x7c]
	str r1, [sp, #0x98]
	str r1, [sp, #0x60]
	str r8, [sp, #0x70]
	add r1, sp, #0x4c
	str r2, [sp, #0x118]
	str r2, [sp, #0x50]
	add r2, sp, #0x5c
	str r0, [sp, #0x120]
	str r0, [sp, #0x58]
	add r3, sp, #0x70
	str r7, [sp, #0x68]
	mov r0, r9
	str r4, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x54]
	str r8, [sp, #0xf4]
	str r4, [sp, #0x104]
	str r4, [sp, #0x10c]
	str r8, [sp, #0x3c]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x34]
	str r8, [sp, #0x84]
	str r4, [sp, #0x94]
	str r4, [sp, #0x9c]
	str r7, [sp, #0x110]
	str r6, [sp, #0x114]
	str r6, [sp, #0x11c]
	str r7, [sp, #0x38]
	str r7, [sp, #0xa0]
	strb r5, [sp]
	bl FUN_ov29_02122158
_0211FBA8:
	ldr r2, [r10, #8]
	ldr r1, [r9]
	add r0, sp, #0x124
	str r1, [r10, #8]
	str r2, [r9]
	ldr r2, [r10, #0xc]
	ldr r1, [r9, #4]
	str r1, [r10, #0xc]
	str r2, [r9, #4]
	ldr r2, [r10, #0x10]
	ldr r1, [r9, #8]
	str r1, [r10, #0x10]
	str r2, [r9, #8]
	ldr r2, [r10, #0x14]
	ldr r1, [r9, #0xc]
	str r1, [r10, #0x14]
	ldr r1, [r9, #8]
	str r2, [r9, #0xc]
	sub r1, r1, r1
	str r1, [r9, #8]
	bl FUN_ov29_021228bc
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FC04: .word 0x02123C00
_0211FC08: .word 0x021235D8
_0211FC0C: .word 0x02123BA4
_0211FC10: .word 0x02123624
	arm_func_end FUN_ov29_0211f710

	arm_func_start FUN_ov29_0211fc14
FUN_ov29_0211fc14: ; 0x0211FC14
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _0211FCD0
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0211FC54
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r3, r1
_0211FC54:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _0211FCD0
_0211FC94:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0211FCA8
	bl FUN_0201e078
_0211FCA8:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _0211FC94
_0211FCD0:
	add r0, r5, #8
	bl FUN_ov29_02123044
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_0211fc14

	arm_func_start FUN_ov29_0211fce4
FUN_ov29_0211fce4: ; 0x0211FCE4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	cmp r0, #0
	subne r1, r0, #1
	moveq r2, #0
	movne r0, #0x19
	mulne r2, r1, r0
	ldr r1, [r5]
	ldr r0, [r5, #4]
	add r0, r1, r0
	subs r0, r2, r0
	bne _0211FD2C
	mov r0, r5
	mov r1, #1
	bl FUN_ov29_0211fde4
_0211FD2C:
	ldr r2, [r5, #4]
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov29_02122b1c
	ldr r12, [sp, #0x10]
	cmp r12, #0
	beq _0211FD60
	ldmia r4!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia r12, {r0, r1}
_0211FD60:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_0211fce4

	arm_func_start FUN_ov29_0211fd74
FUN_ov29_0211fd74: ; 0x0211FD74
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r4, #4]
	cmp r0, #2
	bls _0211FDD0
	mov r5, r1
_0211FD94:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl FUN_0201e078
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r1, #1
	cmp r1, r0
	ldr r0, [r4, #0x10]
	str r1, [r4, #0xc]
	sub r0, r0, #1
	streq r5, [r4, #0xc]
	str r0, [r4, #0x10]
	cmp r0, #2
	bhi _0211FD94
_0211FDD0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0xc
	strne r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov29_0211fd74

	arm_func_start FUN_ov29_0211fde4
FUN_ov29_0211fde4: ; 0x0211FDE4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x13c
	ldr r2, _021202FC ; =0x51EB851F
	mov r10, r0
	umull r2, r3, r1, r2
	mov r4, #0x19
	mov r3, r3, lsr #3
	umull r2, r3, r4, r3
	subs r3, r1, r2
	ldr r0, _021202FC ; =0x51EB851F
	mov r6, #0
	movne r3, #1
	umull r0, r2, r1, r0
	moveq r3, r6
	add r7, r3, r2, lsr #3
	add r4, sp, #0x28
	b _0211FE94
_0211FE28:
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r1
	ldr r5, [r2, r1, lsl #2]
	add r1, r0, #1
	ldr r0, [r10, #0x14]
	str r1, [r10, #0xc]
	cmp r1, r0
	streq r6, [r10, #0xc]
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #0xc]
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r10, #0x14]
	sub r0, r0, #1
	str r2, [r10, #0x10]
	bl FUN_0201fbc8
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r5, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x28]
	bl FUN_ov29_02120cf8
	ldr r0, [r10]
	sub r7, r7, #1
	sub r0, r0, #0x19
	str r0, [r10]
_0211FE94:
	cmp r7, #0
	beq _0211FEA8
	ldr r0, [r10]
	cmp r0, #0x19
	bhs _0211FE28
_0211FEA8:
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _02120300 ; =0x02123C04
	ldr r2, [r1]
	tst r2, #1
	orreq r2, r2, #1
	streq r2, [r1]
	ldreq r0, _02120304 ; =0x021235DC
	mvneq r3, #0x2d
	streq r3, [r0]
	mov r1, #0x19
	ldr r3, _02120304 ; =0x021235DC
	mul r0, r7, r1
	ldr r2, [r3]
	cmp r0, r2
	bhi _0211FF34
	ldr r2, _02120300 ; =0x02123C04
	ldr r5, [r2]
	tst r5, #1
	subeq r4, r1, #0x47
	orreq r1, r5, #1
	streq r1, [r2]
	ldr r2, [r10, #0x10]
	streq r4, [r3]
	ldr r1, _02120304 ; =0x021235DC
	cmp r2, #0
	ldr r3, [r1]
	moveq r1, #0
	subne r2, r2, #1
	movne r1, #0x19
	mulne r1, r2, r1
	sub r0, r3, r0
	cmp r1, r0
	bls _0211FF3C
_0211FF34:
	ldr r0, _02120308 ; =0x02123BBC
	bl FUN_ov29_02120bc0
_0211FF3C:
	ldr r0, [r10, #0x14]
	mov r1, #0
	cmp r0, #0
	subne r1, r0, #1
	ldr r0, [r10, #0x10]
	add r0, r7, r0
	cmp r0, r1
	bhi _0211FFD0
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0212030C ; =0x02123608
	add r9, sp, #0x24
	mov r5, #0x3e8
_0211FF74:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0211FF90
	mov r0, r4
	bl FUN_02023ab4
	bl FUN_02021040
_0211FF90:
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	ldr r1, [r10, #0x14]
	add r0, r2, r0
	sub r0, r0, #1
	bl FUN_0201fbc8
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r8, [r2, r1, lsl #2]
	mov r1, r9
	str r6, [sp, #0x24]
	bl FUN_ov29_02120cf8
	subs r7, r7, #1
	bne _0211FF74
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FFD0:
	movs r1, #0
	add r4, sp, #0x12c
	str r1, [sp, #0x124]
	str r1, [sp, #0x128]
	str r1, [sp, #0xb4]
	str r1, [sp, #0xb8]
	str r1, [sp, #0xbc]
	str r1, [sp, #0xc0]
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	add r8, sp, #0xb4
	beq _02120010
	add r0, r1, r1
	bl FUN_0201fbc8
_02120010:
	ldr r5, [r8]
	ldr r2, [r8, #4]
	ldr r0, [r8, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	add r8, r5, r1, lsl #2
	ldrb r1, [sp, #0x10]
	add r0, sp, #0xc4
	str r8, [sp, #0xc4]
	str r5, [sp, #0xc8]
	str r5, [sp, #0xd8]
	str r3, [sp, #0xcc]
	str r2, [sp, #0xd0]
	str r0, [sp, #4]
	add r0, sp, #0xd4
	strb r1, [sp, #8]
	sub r5, sp, #0xc
	str r3, [sp, #0xd4]
	str r3, [sp, #0xdc]
	str r2, [sp, #0xe0]
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	ldmia r5, {r1, r2, r3}
	bl FUN_ov29_02123130
	add r0, sp, #0xb4
	bl FUN_ov29_02123044
	ldr r0, [r10, #0x10]
	mov r2, #0
	add r0, r7, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r10, #0x14]
	add r9, sp, #0x12c
	cmp r1, #0
	subne r2, r1, #1
	cmp r0, r2, lsl #1
	addhi r0, sp, #0x1c
	mov r1, r2, lsl #1
	addls r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r1, [r0]
	mov r0, r9
	bl FUN_ov29_02120bd0
	add r1, sp, #0x18
	mov r0, r9
	str r6, [sp, #0x18]
	bl FUN_ov29_02120cf8
	cmp r7, #0
	beq _02120138
	ldr r11, _0212030C ; =0x02123608
	add r4, sp, #0x14
	mov r5, #0x3e8
_021200E4:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _02120100
	mov r0, r11
	bl FUN_02023ab4
	bl FUN_02021040
_02120100:
	ldr r2, [r9, #4]
	ldr r0, [r9, #8]
	ldr r1, [r9, #0xc]
	add r0, r2, r0
	sub r0, r0, #1
	bl FUN_0201fbc8
	ldr r2, [r9]
	mov r0, r9
	str r8, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x14]
	bl FUN_ov29_02120cf8
	subs r7, r7, #1
	bne _021200E4
_02120138:
	ldr r0, [r10, #0x10]
	mov r5, #0
	cmp r0, #0
	beq _021202A0
	ldr r1, [r10, #0x14]
	cmp r1, #0
	moveq r1, r5
	beq _02120168
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
_02120168:
	ldr r6, [r10, #8]
	ldr r3, [r10, #0xc]
	add r2, r6, r1, lsl #2
	ldr r0, [r10, #0x14]
	add r4, r6, r3, lsl #2
	add r3, r6, r0, lsl #2
	add r0, sp, #0xa4
	str r2, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r4, [sp, #0xac]
	str r3, [sp, #0xb0]
	mvn r1, #0
	str r2, [sp, #0xe4]
	str r6, [sp, #0xe8]
	str r4, [sp, #0xec]
	str r3, [sp, #0xf0]
	bl FUN_ov29_02123078
	ldr r1, [r10, #8]
	ldr r7, [sp, #0xa8]
	ldr r6, [sp, #0xac]
	ldr r8, [sp, #0xa4]
	ldr r3, [sp, #0xb0]
	ldr r0, [r10, #0xc]
	ldr r2, [r9]
	add r4, r1, r0, lsl #2
	ldr r0, [r10, #0x14]
	str r7, [sp, #0xf8]
	str r7, [sp, #0x40]
	str r7, [sp, #0x88]
	str r7, [sp, #0x74]
	add r7, r1, r0, lsl #2
	ldr r0, [r9, #4]
	str r6, [sp, #0xfc]
	str r6, [sp, #0x44]
	str r6, [sp, #0x8c]
	str r6, [sp, #0x78]
	add r6, r2, r0, lsl #2
	ldr r0, [r9, #0xc]
	and r5, r5, #0xff
	add r0, r2, r0, lsl #2
	str r3, [sp, #0x100]
	str r1, [sp, #0x108]
	str r3, [sp, #0x48]
	str r1, [sp, #0x30]
	str r3, [sp, #0x90]
	str r3, [sp, #0x7c]
	str r1, [sp, #0x98]
	str r1, [sp, #0x60]
	str r8, [sp, #0x70]
	add r1, sp, #0x4c
	str r2, [sp, #0x118]
	str r2, [sp, #0x50]
	add r2, sp, #0x5c
	str r0, [sp, #0x120]
	str r0, [sp, #0x58]
	add r3, sp, #0x70
	str r7, [sp, #0x68]
	mov r0, r9
	str r4, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x54]
	str r8, [sp, #0xf4]
	str r4, [sp, #0x104]
	str r4, [sp, #0x10c]
	str r8, [sp, #0x3c]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x34]
	str r8, [sp, #0x84]
	str r4, [sp, #0x94]
	str r4, [sp, #0x9c]
	str r7, [sp, #0x110]
	str r6, [sp, #0x114]
	str r6, [sp, #0x11c]
	str r7, [sp, #0x38]
	str r7, [sp, #0xa0]
	strb r5, [sp]
	bl FUN_ov29_021219f4
_021202A0:
	ldr r2, [r10, #8]
	ldr r1, [r9]
	add r0, sp, #0x124
	str r1, [r10, #8]
	str r2, [r9]
	ldr r2, [r10, #0xc]
	ldr r1, [r9, #4]
	str r1, [r10, #0xc]
	str r2, [r9, #4]
	ldr r2, [r10, #0x10]
	ldr r1, [r9, #8]
	str r1, [r10, #0x10]
	str r2, [r9, #8]
	ldr r2, [r10, #0x14]
	ldr r1, [r9, #0xc]
	str r1, [r10, #0x14]
	ldr r1, [r9, #8]
	str r2, [r9, #0xc]
	sub r1, r1, r1
	str r1, [r9, #8]
	bl FUN_ov29_02122a4c
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021202FC: .word 0x51EB851F
_02120300: .word 0x02123C04
_02120304: .word 0x021235DC
_02120308: .word 0x02123BBC
_0212030C: .word 0x02123608
	arm_func_end FUN_ov29_0211fde4

	arm_func_start FUN_ov29_02120310
FUN_ov29_02120310: ; 0x02120310
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldmia r5, {r0, r2}
	add r0, r0, r1
	sub r2, r2, r1
	stmia r5, {r0, r2}
	cmp r0, #0x32
	blo _02120384
	mov r4, #0
_0212033C:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl FUN_0201e078
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r1, #1
	cmp r1, r0
	str r1, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, [r5]
	sub r1, r1, #1
	sub r0, r0, #0x19
	streq r4, [r5, #0xc]
	str r1, [r5, #0x10]
	str r0, [r5]
	cmp r0, #0x32
	bhs _0212033C
_02120384:
	ldr r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0xc
	streq r0, [r5]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov29_02120310

	arm_func_start FUN_ov29_02120398
FUN_ov29_02120398: ; 0x02120398
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _02120454
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021203D8
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r3, r1
_021203D8:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _02120454
_02120418:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0212042C
	bl FUN_0201e078
_0212042C:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _02120418
_02120454:
	add r0, r5, #8
	bl FUN_ov29_02123044
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_02120398

	arm_func_start FUN_ov29_02120468
FUN_ov29_02120468: ; 0x02120468
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	cmp r0, #0
	moveq r2, #0
	subne r0, r0, #1
	movne r2, r0, lsl #8
	ldr r1, [r5]
	ldr r0, [r5, #4]
	add r0, r1, r0
	subs r0, r2, r0
	bne _021204AC
	mov r0, r5
	mov r1, #1
	bl FUN_ov29_02120558
_021204AC:
	ldr r2, [r5, #4]
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov29_02122ccc
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrneh r1, [r4]
	ldrneh r0, [r4, #2]
	strneh r1, [r2]
	strneh r0, [r2, #2]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_02120468

	arm_func_start FUN_ov29_021204e8
FUN_ov29_021204e8: ; 0x021204E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r4, #4]
	cmp r0, #2
	bls _02120544
	mov r5, r1
_02120508:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl FUN_0201e078
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r1, #1
	cmp r1, r0
	ldr r0, [r4, #0x10]
	str r1, [r4, #0xc]
	sub r0, r0, #1
	streq r5, [r4, #0xc]
	str r0, [r4, #0x10]
	cmp r0, #2
	bhi _02120508
_02120544:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0x80
	strne r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov29_021204e8

	arm_func_start FUN_ov29_02120558
FUN_ov29_02120558: ; 0x02120558
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x13c
	mov r10, r0
	tst r1, #0xff
	mov r6, #0
	movne r0, #1
	moveq r0, r6
	add r7, r0, r1, lsr #8
	add r4, sp, #0x28
	b _021205EC
_02120580:
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r1
	ldr r5, [r2, r1, lsl #2]
	add r1, r0, #1
	ldr r0, [r10, #0x14]
	str r1, [r10, #0xc]
	cmp r1, r0
	streq r6, [r10, #0xc]
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #0xc]
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r10, #0x14]
	sub r0, r0, #1
	str r2, [r10, #0x10]
	bl FUN_0201fbc8
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r5, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x28]
	bl FUN_ov29_02120cf8
	ldr r0, [r10]
	sub r7, r7, #1
	sub r0, r0, #0x100
	str r0, [r10]
_021205EC:
	cmp r7, #0
	beq _02120600
	ldr r0, [r10]
	cmp r0, #0x100
	bhs _02120580
_02120600:
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _02120A58 ; =0x02123C08
	ldr r0, [r1]
	tst r0, #1
	bne _02120634
	mov r3, #0x200
	orr r2, r0, #1
	ldr r0, _02120A5C ; =0x021235E0
	rsb r3, r3, #0
	str r3, [r0]
	str r2, [r1]
_02120634:
	ldr r2, _02120A5C ; =0x021235E0
	mov r0, r7, lsl #8
	ldr r1, [r2]
	cmp r1, r7, lsl #8
	blo _02120690
	ldr r1, _02120A58 ; =0x02123C08
	ldr r3, [r1]
	tst r3, #1
	moveq r4, #0x200
	orreq r3, r3, #1
	rsbeq r4, r4, #0
	streq r3, [r1]
	streq r4, [r2]
	ldr r2, [r10, #0x10]
	ldr r1, _02120A5C ; =0x021235E0
	cmp r2, #0
	ldr r3, [r1]
	moveq r1, #0
	subne r1, r2, #1
	movne r1, r1, lsl #8
	sub r0, r3, r0
	cmp r1, r0
	bls _02120698
_02120690:
	ldr r0, _02120A60 ; =0x02123BD4
	bl FUN_ov29_02120bc0
_02120698:
	ldr r0, [r10, #0x14]
	mov r1, #0
	cmp r0, #0
	subne r1, r0, #1
	ldr r0, [r10, #0x10]
	add r0, r7, r0
	cmp r0, r1
	bhi _0212072C
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02120A64 ; =0x021235EC
	add r9, sp, #0x24
	mov r5, #0x400
_021206D0:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _021206EC
	mov r0, r4
	bl FUN_02023ab4
	bl FUN_02021040
_021206EC:
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	ldr r1, [r10, #0x14]
	add r0, r2, r0
	sub r0, r0, #1
	bl FUN_0201fbc8
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r8, [r2, r1, lsl #2]
	mov r1, r9
	str r6, [sp, #0x24]
	bl FUN_ov29_02120cf8
	subs r7, r7, #1
	bne _021206D0
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212072C:
	movs r1, #0
	add r4, sp, #0x12c
	str r1, [sp, #0x124]
	str r1, [sp, #0x128]
	str r1, [sp, #0xb4]
	str r1, [sp, #0xb8]
	str r1, [sp, #0xbc]
	str r1, [sp, #0xc0]
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	add r8, sp, #0xb4
	beq _0212076C
	add r0, r1, r1
	bl FUN_0201fbc8
_0212076C:
	ldr r5, [r8]
	ldr r2, [r8, #4]
	ldr r0, [r8, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	add r8, r5, r1, lsl #2
	ldrb r1, [sp, #0x10]
	add r0, sp, #0xc4
	str r8, [sp, #0xc4]
	str r5, [sp, #0xc8]
	str r5, [sp, #0xd8]
	str r3, [sp, #0xcc]
	str r2, [sp, #0xd0]
	str r0, [sp, #4]
	add r0, sp, #0xd4
	strb r1, [sp, #8]
	sub r5, sp, #0xc
	str r3, [sp, #0xd4]
	str r3, [sp, #0xdc]
	str r2, [sp, #0xe0]
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	ldmia r5, {r1, r2, r3}
	bl FUN_ov29_02123130
	add r0, sp, #0xb4
	bl FUN_ov29_02123044
	ldr r0, [r10, #0x10]
	mov r2, #0
	add r0, r7, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r10, #0x14]
	add r9, sp, #0x12c
	cmp r1, #0
	subne r2, r1, #1
	cmp r0, r2, lsl #1
	addhi r0, sp, #0x1c
	mov r1, r2, lsl #1
	addls r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r1, [r0]
	mov r0, r9
	bl FUN_ov29_02120bd0
	add r1, sp, #0x18
	mov r0, r9
	str r6, [sp, #0x18]
	bl FUN_ov29_02120cf8
	cmp r7, #0
	beq _02120894
	ldr r11, _02120A64 ; =0x021235EC
	add r4, sp, #0x14
	mov r5, #0x400
_02120840:
	mov r0, r5
	bl FUN_0201e014
	movs r8, r0
	bne _0212085C
	mov r0, r11
	bl FUN_02023ab4
	bl FUN_02021040
_0212085C:
	ldr r2, [r9, #4]
	ldr r0, [r9, #8]
	ldr r1, [r9, #0xc]
	add r0, r2, r0
	sub r0, r0, #1
	bl FUN_0201fbc8
	ldr r2, [r9]
	mov r0, r9
	str r8, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x14]
	bl FUN_ov29_02120cf8
	subs r7, r7, #1
	bne _02120840
_02120894:
	ldr r0, [r10, #0x10]
	mov r5, #0
	cmp r0, #0
	beq _021209FC
	ldr r1, [r10, #0x14]
	cmp r1, #0
	moveq r1, r5
	beq _021208C4
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
_021208C4:
	ldr r6, [r10, #8]
	ldr r3, [r10, #0xc]
	add r2, r6, r1, lsl #2
	ldr r0, [r10, #0x14]
	add r4, r6, r3, lsl #2
	add r3, r6, r0, lsl #2
	add r0, sp, #0xa4
	str r2, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r4, [sp, #0xac]
	str r3, [sp, #0xb0]
	mvn r1, #0
	str r2, [sp, #0xe4]
	str r6, [sp, #0xe8]
	str r4, [sp, #0xec]
	str r3, [sp, #0xf0]
	bl FUN_ov29_02123078
	ldr r1, [r10, #8]
	ldr r7, [sp, #0xa8]
	ldr r6, [sp, #0xac]
	ldr r8, [sp, #0xa4]
	ldr r3, [sp, #0xb0]
	ldr r0, [r10, #0xc]
	ldr r2, [r9]
	add r4, r1, r0, lsl #2
	ldr r0, [r10, #0x14]
	str r7, [sp, #0xf8]
	str r7, [sp, #0x40]
	str r7, [sp, #0x88]
	str r7, [sp, #0x74]
	add r7, r1, r0, lsl #2
	ldr r0, [r9, #4]
	str r6, [sp, #0xfc]
	str r6, [sp, #0x44]
	str r6, [sp, #0x8c]
	str r6, [sp, #0x78]
	add r6, r2, r0, lsl #2
	ldr r0, [r9, #0xc]
	and r5, r5, #0xff
	add r0, r2, r0, lsl #2
	str r3, [sp, #0x100]
	str r1, [sp, #0x108]
	str r3, [sp, #0x48]
	str r1, [sp, #0x30]
	str r3, [sp, #0x90]
	str r3, [sp, #0x7c]
	str r1, [sp, #0x98]
	str r1, [sp, #0x60]
	str r8, [sp, #0x70]
	add r1, sp, #0x4c
	str r2, [sp, #0x118]
	str r2, [sp, #0x50]
	add r2, sp, #0x5c
	str r0, [sp, #0x120]
	str r0, [sp, #0x58]
	add r3, sp, #0x70
	str r7, [sp, #0x68]
	mov r0, r9
	str r4, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x54]
	str r8, [sp, #0xf4]
	str r4, [sp, #0x104]
	str r4, [sp, #0x10c]
	str r8, [sp, #0x3c]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x34]
	str r8, [sp, #0x84]
	str r4, [sp, #0x94]
	str r4, [sp, #0x9c]
	str r7, [sp, #0x110]
	str r6, [sp, #0x114]
	str r6, [sp, #0x11c]
	str r7, [sp, #0x38]
	str r7, [sp, #0xa0]
	strb r5, [sp]
	bl FUN_ov29_02120fa0
_021209FC:
	ldr r2, [r10, #8]
	ldr r1, [r9]
	add r0, sp, #0x124
	str r1, [r10, #8]
	str r2, [r9]
	ldr r2, [r10, #0xc]
	ldr r1, [r9, #4]
	str r1, [r10, #0xc]
	str r2, [r9, #4]
	ldr r2, [r10, #0x10]
	ldr r1, [r9, #8]
	str r1, [r10, #0x10]
	str r2, [r9, #8]
	ldr r2, [r10, #0x14]
	ldr r1, [r9, #0xc]
	str r1, [r10, #0x14]
	ldr r1, [r9, #8]
	str r2, [r9, #0xc]
	sub r1, r1, r1
	str r1, [r9, #8]
	bl FUN_ov29_02122bfc
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120A58: .word 0x02123C08
_02120A5C: .word 0x021235E0
_02120A60: .word 0x02123BD4
_02120A64: .word 0x021235EC
	arm_func_end FUN_ov29_02120558

	arm_func_start FUN_ov29_02120a68
FUN_ov29_02120a68: ; 0x02120A68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldmia r5, {r0, r2}
	add r0, r0, r1
	sub r2, r2, r1
	stmia r5, {r0, r2}
	cmp r0, #0x200
	blo _02120ADC
	mov r4, #0
_02120A94:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl FUN_0201e078
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r1, #1
	cmp r1, r0
	str r1, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, [r5]
	sub r1, r1, #1
	sub r0, r0, #0x100
	streq r4, [r5, #0xc]
	str r1, [r5, #0x10]
	str r0, [r5]
	cmp r0, #0x200
	bhs _02120A94
_02120ADC:
	ldr r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0x80
	streq r0, [r5]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov29_02120a68

	arm_func_start FUN_ov29_02120af0
FUN_ov29_02120af0: ; 0x02120AF0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _02120BAC
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _02120B30
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r3, r1
_02120B30:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _02120BAC
_02120B70:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _02120B84
	bl FUN_0201e078
_02120B84:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _02120B70
_02120BAC:
	add r0, r5, #8
	bl FUN_ov29_02123044
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_02120af0

	arm_func_start FUN_ov29_02120bc0
FUN_ov29_02120bc0: ; 0x02120BC0
	stmfd sp!, {r3, lr}
	bl FUN_02023ab4
	bl FUN_02021040
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov29_02120bc0

	arm_func_start FUN_ov29_02120bd0
FUN_ov29_02120bd0: ; 0x02120BD0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r1, r0
	addls sp, sp, #0x38
	ldmlsfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	add r0, r6, #0xc
	str r0, [sp, #0x34]
	str r4, [sp, #0x24]
	str r4, [sp, #0x28]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x30]
	sub r0, sp, #4
	strb r4, [r0]
	ldr r2, [r0]
	add r0, sp, #0x24
	bl FUN_ov29_02122dc0
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _02120C48
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r4, r1
_02120C48:
	ldr r2, [r6]
	mov r5, #0
	add r0, r2, r4, lsl #2
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r4, sp, #0x24
	add r1, r2, r0, lsl #2
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	add r0, r2, r0, lsl #2
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r0, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	add r1, sp, #0x14
	add r2, sp, #4
	mov r0, r4
	bl FUN_ov29_02122f44
	str r5, [r6, #8]
	ldr r1, [r6]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r6]
	str r1, [sp, #0x24]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x28]
	mov r0, r4
	str r1, [r6, #4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [r6, #8]
	str r5, [sp, #0x2c]
	ldr r2, [r6, #0xc]
	ldr r1, [r3]
	str r1, [r6, #0xc]
	str r2, [r3]
	bl FUN_ov29_02122d8c
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov29_02120bd0

	arm_func_start FUN_ov29_02120cf8
FUN_ov29_02120cf8: ; 0x02120CF8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r3, [r6, #8]
	mov r4, r1
	ldr r1, [r6, #0xc]
	add r2, r3, #1
	cmp r2, r1
	bhs _02120D4C
	ldr r0, [r6, #4]
	add r0, r0, r3
	bl FUN_0201fbc8
	ldr r0, [r6]
	add sp, sp, #0x38
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [r6, #8]
	add r0, r0, #1
	str r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_02120D4C:
	mov r5, #0
	add r2, r6, #0xc
	mov r1, #1
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	str r5, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r2, [sp, #0x34]
	bl FUN_ov29_02120e7c
	mov r1, r0
	sub r0, sp, #4
	strb r5, [r0]
	ldr r2, [r0]
	add r0, sp, #0x24
	bl FUN_ov29_02122dc0
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [r6, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _02120DCC
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	add r0, r2, r0
	bl FUN_0201fbc8
_02120DCC:
	ldr r2, [r6]
	mov r5, #0
	add r0, r2, r1, lsl #2
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r4, sp, #0x24
	add r1, r2, r0, lsl #2
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	add r0, r2, r0, lsl #2
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r0, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	add r1, sp, #0x14
	add r2, sp, #4
	mov r0, r4
	bl FUN_ov29_02122e3c
	str r5, [r6, #8]
	ldr r1, [r6]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r6]
	str r1, [sp, #0x24]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x28]
	mov r0, r4
	str r1, [r6, #4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [r6, #8]
	str r5, [sp, #0x2c]
	ldr r2, [r6, #0xc]
	ldr r1, [r3]
	str r1, [r6, #0xc]
	str r2, [r3]
	bl FUN_ov29_02122d8c
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov29_02120cf8

	arm_func_start FUN_ov29_02120e7c
FUN_ov29_02120e7c: ; 0x02120E7C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _02120F78 ; =0x02123C0C
	mov r5, #0
	ldr r3, [r2]
	tst r3, #1
	orreq r3, r3, #1
	ldreq r1, _02120F7C ; =0x021235E4
	mvneq r4, #0xc0000001
	streq r3, [r2]
	streq r4, [r1]
	ldr r1, [r0, #0xc]
	ldr r0, _02120F7C ; =0x021235E4
	cmp r1, #0
	subne r5, r1, #1
	ldr r4, [r0]
	ldr r1, [sp, #0x1c]
	sub r0, r4, r5
	cmp r1, r0
	bls _02120ED4
	bl FUN_ov29_02120f88
_02120ED4:
	ldr r0, _02120F80 ; =0xAAAAAAAB
	umull r0, r1, r4, r0
	mov r1, r1, lsr #1
	cmp r5, r1
	bhs _02120F28
	add r1, r5, #1
	ldr r0, _02120F84 ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x1c]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x1c
	addls r0, sp, #4
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r5, r0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02120F28:
	cmp r5, r1, lsl #1
	bhs _02120F64
	ldr r0, [sp, #0x1c]
	add r1, r5, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x1c
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r5, r0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02120F64:
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02120F78: .word 0x02123C0C
_02120F7C: .word 0x021235E4
_02120F80: .word 0xAAAAAAAB
_02120F84: .word 0xCCCCCCCD
	arm_func_end FUN_ov29_02120e7c

	arm_func_start FUN_ov29_02120f88
FUN_ov29_02120f88: ; 0x02120F88
	stmfd sp!, {r3, lr}
	ldr r0, _02120F9C ; =0x02123BEC
	bl FUN_02023ab4
	bl FUN_02021040
	ldmfd sp!, {r3, pc}
_02120F9C: .word 0x02123BEC
	arm_func_end FUN_ov29_02120f88

	arm_func_start FUN_ov29_02120fa0
FUN_ov29_02120fa0: ; 0x02120FA0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b4
	mov r9, r2
	mov r8, r3
	ldrb r2, [r9, #0x10]
	ldrb r7, [r8, #0x10]
	mov r10, r0
	str r1, [sp]
	ldr r0, [r8, #8]
	ldr r1, [r8, #0xc]
	ldr r6, [r9]
	ldr r5, [r9, #4]
	ldr r4, [r9, #8]
	ldr r3, [r9, #0xc]
	ldr r12, [r8]
	ldr r11, [r8, #4]
	str r0, [sp, #0x170]
	str r0, [sp, #0x74]
	str r1, [sp, #0x174]
	str r1, [sp, #0x78]
	add r0, sp, #0x6c
	add r1, sp, #0x58
	str r12, [sp, #0x168]
	str r11, [sp, #0x16c]
	strb r7, [sp, #0x178]
	str r6, [sp, #0x17c]
	str r5, [sp, #0x180]
	strb r2, [sp, #0x18c]
	str r4, [sp, #0x184]
	str r12, [sp, #0x6c]
	str r11, [sp, #0x70]
	strb r7, [sp, #0x7c]
	str r3, [sp, #0x188]
	str r6, [sp, #0x58]
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	strb r2, [sp, #0x68]
	bl FUN_ov29_021230bc
	movs r4, r0
	addeq sp, sp, #0x1b4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	ldr r3, [r10]
	ldr r1, [r10, #4]
	ldr r2, [r0]
	add r7, r3, r1, lsl #2
	sub r1, r2, r7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r2, r7
	mov r5, r0, asr #2
	ldrlo r0, [r10, #0xc]
	mov r6, #0
	addlo r5, r5, r0
	ldr r0, [r10, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r4, r0
	ldrls r2, [r10, #8]
	subls r0, r0, r4
	cmpls r2, r0
	bhi _0212137C
	str r7, [sp, #0x1a4]
	ldr r6, [r10]
	sub r0, r2, r5
	str r0, [sp, #8]
	str r6, [sp, #0x1a8]
	ldr r1, [sp, #8]
	ldr r0, [r10, #4]
	cmp r5, r1
	add r1, r6, r0, lsl #2
	str r1, [sp, #4]
	str r1, [sp, #0x1ac]
	ldr r1, [r10, #0xc]
	add r11, r6, r1, lsl #2
	str r11, [sp, #0x1b0]
	bhs _021211C0
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov29_02123078
	ldr r0, [r10, #8]
	ldr r3, [sp, #0x1a4]
	ldr r2, [r10]
	add r1, r0, r4
	sub r2, r3, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	stmib r10, {r0, r1}
	cmp r5, #0
	beq _021212F0
	ldr r2, [sp, #0x1b0]
	ldr r10, [sp, #0x1a4]
	ldr r4, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	str r2, [sp, #0x134]
	ldr r2, [sp, #4]
	add r0, sp, #0x48
	mov r1, r5
	str r10, [sp, #0x128]
	str r4, [sp, #0x12c]
	str r3, [sp, #0x130]
	str r7, [sp, #0x48]
	str r6, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r11, [sp, #0x54]
	bl FUN_ov29_02123078
	ldr r2, [r0]
	add r1, sp, #0x148
	str r2, [sp, #0x138]
	ldr r3, [r0, #4]
	add r2, sp, #0x138
	str r3, [sp, #0x13c]
	ldr r4, [r0, #8]
	add r3, sp, #0x128
	str r4, [sp, #0x140]
	ldr r4, [r0, #0xc]
	add r0, sp, #0x158
	str r4, [sp, #0x144]
	ldr r4, [sp, #4]
	str r7, [sp, #0x148]
	str r6, [sp, #0x14c]
	str r4, [sp, #0x150]
	str r11, [sp, #0x154]
	bl FUN_ov29_0212188c
	ldr r3, [sp, #0x158]
	ldr r2, [sp, #0x15c]
	ldr r1, [sp, #0x160]
	ldr r0, [sp, #0x164]
	str r3, [sp, #0x1a4]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
	b _021212F0
_021211C0:
	add r2, r2, r4
	cmp r1, #0
	str r2, [r10, #8]
	moveq r1, #0
	beq _021211DC
	add r0, r0, r2
	bl FUN_0201fbc8
_021211DC:
	ldr r5, [r10]
	ldr r2, [r10, #4]
	ldr r0, [r10, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	ldr r0, [sp, #8]
	add r1, r5, r1, lsl #2
	str r1, [sp, #0x1a4]
	str r5, [sp, #0x1a8]
	str r3, [sp, #0x1ac]
	str r2, [sp, #0x1b0]
	cmp r0, #0
	beq _021212E4
	add r0, sp, #0x28
	str r1, [sp, #0xe8]
	str r1, [sp, #0x28]
	str r5, [sp, #0xec]
	str r3, [sp, #0xf0]
	str r2, [sp, #0xf4]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	rsb r1, r4, #0
	bl FUN_ov29_02123078
	ldr r2, [r0]
	ldr r1, [sp, #8]
	str r2, [sp, #0xf8]
	ldr r2, [r0, #4]
	add r1, r4, r1
	str r2, [sp, #0xfc]
	ldr r2, [r0, #8]
	ldr r6, [sp, #0x1a4]
	str r2, [sp, #0x100]
	ldr r7, [r0, #0xc]
	ldr r5, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	ldr r2, [sp, #0x1b0]
	add r0, sp, #0x38
	str r7, [sp, #0x104]
	str r6, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	rsb r1, r1, #0
	bl FUN_ov29_02123078
	ldr r2, [r0]
	add r1, sp, #0x108
	str r2, [sp, #0x108]
	ldr r3, [r0, #4]
	add r2, sp, #0xf8
	str r3, [sp, #0x10c]
	ldr r5, [r0, #8]
	add r3, sp, #0xe8
	str r5, [sp, #0x110]
	ldr r5, [r0, #0xc]
	add r0, sp, #0x118
	str r5, [sp, #0x114]
	bl FUN_ov29_02121704
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	ldr r1, [sp, #0x120]
	str r0, [sp, #0x1a4]
	ldr r0, [sp, #0x124]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
_021212E4:
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov29_02123078
_021212F0:
	ldrb r0, [r8, #0x10]
	ldr r10, [sp, #0x1a4]
	ldr r7, [sp, #0x1a8]
	ldr r6, [sp, #0x1ac]
	ldr r5, [sp, #0x1b0]
	ldr r4, [r8]
	ldr r3, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0xc]
	strb r0, [sp, #0xc0]
	str r10, [sp, #0xa0]
	str r7, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r5, [sp, #0xac]
	str r4, [sp, #0xb0]
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r1, [sp, #0xbc]
	ldr r1, [r9]
	add r0, sp, #0xd8
	str r1, [sp, #0xc4]
	ldr r2, [r9, #4]
	add r1, sp, #0xc4
	str r2, [sp, #0xc8]
	ldr r3, [r9, #8]
	add r2, sp, #0xb0
	str r3, [sp, #0xcc]
	ldr r4, [r9, #0xc]
	add r3, sp, #0xa0
	str r4, [sp, #0xd0]
	ldrb r4, [r9, #0x10]
	strb r4, [sp, #0xd4]
	bl FUN_ov29_02121538
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212137C:
	add r2, r10, #0xc
	mov r0, r10
	mov r1, r4
	str r6, [sp, #0x190]
	str r6, [sp, #0x194]
	str r6, [sp, #0x198]
	str r6, [sp, #0x19c]
	str r2, [sp, #0x1a0]
	bl FUN_ov29_02120e7c
	mov r1, r0
	and r2, r6, #0xff
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0]
	add r0, sp, #0x190
	bl FUN_ov29_02122dc0
	ldr r0, [sp, #0x190]
	str r5, [sp, #0x194]
	cmp r4, #0
	add r0, r0, r5, lsl #2
	beq _02121434
_021213D0:
	ldr r5, [r9]
	ldr r1, [r9, #0xc]
	ldr r3, [r9, #4]
	ldr r2, [r9, #8]
	str r1, [sp, #0x24]
	ldr r1, [r5]
	cmp r0, #0
	strne r1, [r0]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x20]
	add r1, r1, #1
	str r1, [sp, #0x198]
	ldr r2, [r9]
	ldr r1, [r9, #0xc]
	add r2, r2, #4
	cmp r2, r1
	ldreq r1, [r9, #4]
	str r2, [r9]
	sub r4, r4, #1
	streq r1, [r9]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, r0, #4
	cmp r4, #0
	bne _021213D0
_02121434:
	ldr r1, [r10, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _02121454
	ldr r2, [r10, #4]
	ldr r0, [r10, #8]
	add r0, r2, r0
	bl FUN_0201fbc8
_02121454:
	ldr r2, [r10]
	add r4, sp, #0x190
	add r0, r2, r1, lsl #2
	str r2, [sp, #0x94]
	str r0, [sp, #0x90]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x98]
	ldr r0, [r10, #0xc]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x9c]
	and r0, r6, #0xff
	strb r0, [r1]
	ldr r3, [r1]
	ldr r1, [sp]
	add r2, sp, #0x90
	mov r0, r4
	bl FUN_ov29_02122f44
	ldr r3, [r10]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r3, r0, lsl #2
	str r0, [sp, #0x80]
	str r0, [sp, #0x88]
	str r3, [sp, #0x84]
	ldr r2, [r10, #0xc]
	and r0, r6, #0xff
	add r2, r3, r2, lsl #2
	str r2, [sp, #0x8c]
	strb r0, [r1]
	ldr r3, [r1]
	ldr r2, [sp]
	add r1, sp, #0x80
	mov r0, r4
	bl FUN_ov29_02122e3c
	str r6, [r10, #8]
	ldr r1, [r10]
	ldr r0, [sp, #0x190]
	add r3, sp, #0x19c
	str r0, [r10]
	str r1, [sp, #0x190]
	ldr r2, [r10, #4]
	ldr r1, [sp, #0x194]
	mov r0, r4
	str r1, [r10, #4]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x194]
	str r1, [r10, #8]
	str r6, [sp, #0x198]
	ldr r2, [r10, #0xc]
	ldr r1, [r3]
	str r1, [r10, #0xc]
	str r2, [r3]
	bl FUN_ov29_02122d8c
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov29_02120fa0

	arm_func_start FUN_ov29_02121538
FUN_ov29_02121538: ; 0x02121538
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r6, r1
	ldr r7, [r6]
	ldr r4, [r2]
	mov r11, r0
	mov r5, r3
	cmp r7, r4
	beq _021216DC
	mov r0, r2
	bl FUN_ov29_021230bc
	str r0, [sp, #0xc]
_02121568:
	ldr r2, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	addle r0, sp, #0xc
	str r2, [sp, #8]
	addgt r0, sp, #8
	ldr r4, [r0]
	ldr r1, [r6]
	add r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r2, [r6, #4]
	mov r1, r4
	str r2, [sp, #0x24]
	ldr r2, [r6, #8]
	str r2, [sp, #0x28]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x2c]
	ldrb r2, [r6, #0x10]
	strb r2, [sp, #0x30]
	bl FUN_ov29_02123078
	ldrb r12, [sp, #0x30]
	ldr r9, [sp, #0x20]
	ldr r8, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr lr, [sp, #0x2c]
	ldr r10, [r6]
	ldrb r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r2, [r6, #8]
	ldr r1, [r6, #0xc]
	str r3, [sp, #0x4c]
	strb r12, [sp, #0x6c]
	str r9, [sp, #0x5c]
	str r8, [sp, #0x60]
	str r7, [sp, #0x64]
	str r7, [sp, #0x3c]
	str lr, [sp, #0x68]
	str r9, [sp, #0x34]
	str r8, [sp, #0x38]
	str lr, [sp, #0x40]
	strb r12, [sp, #0x44]
	str r10, [sp, #0x48]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	strb r0, [sp, #0x58]
	cmp r10, r9
	ldr r7, [r5]
	add r3, sp, #0x48
	beq _02121688
_02121640:
	ldr r8, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	add r8, r8, #4
	str r8, [r3]
	cmp r8, r0
	ldr r1, [r3, #8]
	ldr r12, [r10]
	streq r2, [r3]
	str r10, [sp, #0x10]
	ldr r10, [r3]
	str r12, [r7]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r7, r7, #4
	cmp r10, r9
	bne _02121640
_02121688:
	ldr r0, [sp, #0xc]
	sub r1, r4, #1
	sub r0, r0, r4
	str r0, [sp, #0xc]
	ldr r2, [r5]
	ldr r0, [r5, #0xc]
	add r1, r2, r1, lsl #2
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [r5, #4]
	str r1, [r5]
	streq r0, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021216DC
	add r0, sp, #0x5c
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldrb r4, [sp, #0x6c]
	strb r4, [r6, #0x10]
	b _02121568
_021216DC:
	ldr r0, [r5]
	str r0, [r11]
	ldr r0, [r5, #4]
	str r0, [r11, #4]
	ldr r0, [r5, #8]
	str r0, [r11, #8]
	ldr r0, [r5, #0xc]
	str r0, [r11, #0xc]
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov29_02121538

	arm_func_start FUN_ov29_02121704
FUN_ov29_02121704: ; 0x02121704
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r8, r2
	ldr r2, [r8]
	ldr r1, [r9]
	mov r10, r0
	mov r7, r3
	cmp r1, r2
	beq _02121864
	add r4, sp, #8
	mov r11, #0
	mov r5, #1
_02121738:
	ldr r0, [r8, #4]
	mov r6, r5
	cmp r2, r0
	ldreq r0, [r8, #0xc]
	mov r12, #1
	streq r0, [r8]
	ldr r0, [r8]
	sub r0, r0, #4
	str r0, [r8]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	cmp r1, r0
	ldreq r0, [r7, #0xc]
	ldr r1, [r7, #8]
	streq r0, [r7]
	ldr r0, [r7]
	sub r0, r0, #4
	cmp r0, r1
	ldrlo r1, [r7, #4]
	str r0, [r7]
	sub r1, r0, r1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r3, [r9]
	ldr r2, [r9, #8]
	ldr r1, [r8, #8]
	cmp r3, r2
	ldr r2, [r8]
	movlo r6, r11
	cmp r2, r1
	movlo r12, #0
	cmp r6, r12
	bne _021217E8
	sub r2, r2, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _02121810
_021217E8:
	cmp r2, r1
	ldrlo r1, [r8, #4]
	sub r2, r2, r1
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_02121810:
	ldr r6, [r0]
	ldr r1, [r8]
	add r0, r6, #1
	sub r1, r1, r6, lsl #2
	mov r2, r0, lsl #2
	str r1, [r8]
	ldr r3, [r7]
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	add r3, r3, #4
	mov r2, r0, asr #2
	sub r0, r3, r2, lsl #2
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r0, [r7]
	sub r0, r0, r6, lsl #2
	str r0, [r7]
	ldr r2, [r8]
	ldr r0, [r9]
	cmp r0, r2
	bne _02121738
_02121864:
	ldr r0, [r7]
	str r0, [r10]
	ldr r0, [r7, #4]
	str r0, [r10, #4]
	ldr r0, [r7, #8]
	str r0, [r10, #8]
	ldr r0, [r7, #0xc]
	str r0, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov29_02121704

	arm_func_start FUN_ov29_0212188c
FUN_ov29_0212188c: ; 0x0212188C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r8, r2
	ldr r2, [r9]
	ldr r1, [r8]
	mov r10, r0
	mov r7, r3
	cmp r2, r1
	beq _021219CC
	add r4, sp, #8
	mov r11, #0
	mov r5, #1
_021218C0:
	ldr r1, [r7, #0xc]
	ldr r0, [r7]
	mov r6, r5
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r2, [r9]
	ldr r1, [r9, #8]
	ldr r3, [r8]
	cmp r2, r1
	ldr r1, [r8, #8]
	movlo r6, r11
	cmp r3, r1
	movhs r1, #1
	movlo r1, #0
	cmp r6, r1
	bne _02121930
	sub r2, r3, r2
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _02121954
_02121930:
	ldr r1, [r9, #0xc]
	sub r2, r1, r2
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_02121954:
	ldr r6, [r0]
	mov r1, r6, lsl #2
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	ldr r1, [r9]
	ldr r0, [r7]
	bl FUN_020218f4
	ldr r1, [r9]
	sub r0, r6, #1
	add r1, r1, r0, lsl #2
	add r2, r1, #4
	ldr r1, [r9, #0xc]
	str r2, [r9]
	cmp r2, r1
	ldreq r1, [r9, #4]
	streq r1, [r9]
	ldr r2, [r7]
	ldr r1, [r7, #0xc]
	add r0, r2, r0, lsl #2
	add r0, r0, #4
	str r0, [r7]
	cmp r0, r1
	ldreq r0, [r7, #4]
	streq r0, [r7]
	ldr r1, [r9]
	ldr r0, [r8]
	cmp r1, r0
	bne _021218C0
_021219CC:
	ldr r0, [r7]
	str r0, [r10]
	ldr r0, [r7, #4]
	str r0, [r10, #4]
	ldr r0, [r7, #8]
	str r0, [r10, #8]
	ldr r0, [r7, #0xc]
	str r0, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov29_0212188c

	arm_func_start FUN_ov29_021219f4
FUN_ov29_021219f4: ; 0x021219F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b4
	mov r9, r2
	mov r8, r3
	ldrb r2, [r9, #0x10]
	ldrb r7, [r8, #0x10]
	mov r10, r0
	str r1, [sp]
	ldr r0, [r8, #8]
	ldr r1, [r8, #0xc]
	ldr r6, [r9]
	ldr r5, [r9, #4]
	ldr r4, [r9, #8]
	ldr r3, [r9, #0xc]
	ldr r12, [r8]
	ldr r11, [r8, #4]
	str r0, [sp, #0x170]
	str r0, [sp, #0x74]
	str r1, [sp, #0x174]
	str r1, [sp, #0x78]
	add r0, sp, #0x6c
	add r1, sp, #0x58
	str r12, [sp, #0x168]
	str r11, [sp, #0x16c]
	strb r7, [sp, #0x178]
	str r6, [sp, #0x17c]
	str r5, [sp, #0x180]
	strb r2, [sp, #0x18c]
	str r4, [sp, #0x184]
	str r12, [sp, #0x6c]
	str r11, [sp, #0x70]
	strb r7, [sp, #0x7c]
	str r3, [sp, #0x188]
	str r6, [sp, #0x58]
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	strb r2, [sp, #0x68]
	bl FUN_ov29_021230bc
	movs r4, r0
	addeq sp, sp, #0x1b4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	ldr r3, [r10]
	ldr r1, [r10, #4]
	ldr r2, [r0]
	add r7, r3, r1, lsl #2
	sub r1, r2, r7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r2, r7
	mov r5, r0, asr #2
	ldrlo r0, [r10, #0xc]
	mov r6, #0
	addlo r5, r5, r0
	ldr r0, [r10, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r4, r0
	ldrls r2, [r10, #8]
	subls r0, r0, r4
	cmpls r2, r0
	bhi _02121DD0
	str r7, [sp, #0x1a4]
	ldr r6, [r10]
	sub r0, r2, r5
	str r0, [sp, #8]
	str r6, [sp, #0x1a8]
	ldr r1, [sp, #8]
	ldr r0, [r10, #4]
	cmp r5, r1
	add r1, r6, r0, lsl #2
	str r1, [sp, #4]
	str r1, [sp, #0x1ac]
	ldr r1, [r10, #0xc]
	add r11, r6, r1, lsl #2
	str r11, [sp, #0x1b0]
	bhs _02121C14
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov29_02123078
	ldr r0, [r10, #8]
	ldr r3, [sp, #0x1a4]
	ldr r2, [r10]
	add r1, r0, r4
	sub r2, r3, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	stmib r10, {r0, r1}
	cmp r5, #0
	beq _02121D44
	ldr r2, [sp, #0x1b0]
	ldr r10, [sp, #0x1a4]
	ldr r4, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	str r2, [sp, #0x134]
	ldr r2, [sp, #4]
	add r0, sp, #0x48
	mov r1, r5
	str r10, [sp, #0x128]
	str r4, [sp, #0x12c]
	str r3, [sp, #0x130]
	str r7, [sp, #0x48]
	str r6, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r11, [sp, #0x54]
	bl FUN_ov29_02123078
	ldr r2, [r0]
	add r1, sp, #0x148
	str r2, [sp, #0x138]
	ldr r3, [r0, #4]
	add r2, sp, #0x138
	str r3, [sp, #0x13c]
	ldr r4, [r0, #8]
	add r3, sp, #0x128
	str r4, [sp, #0x140]
	ldr r4, [r0, #0xc]
	add r0, sp, #0x158
	str r4, [sp, #0x144]
	ldr r4, [sp, #4]
	str r7, [sp, #0x148]
	str r6, [sp, #0x14c]
	str r4, [sp, #0x150]
	str r11, [sp, #0x154]
	bl FUN_ov29_0212188c
	ldr r3, [sp, #0x158]
	ldr r2, [sp, #0x15c]
	ldr r1, [sp, #0x160]
	ldr r0, [sp, #0x164]
	str r3, [sp, #0x1a4]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
	b _02121D44
_02121C14:
	add r2, r2, r4
	cmp r1, #0
	str r2, [r10, #8]
	moveq r1, #0
	beq _02121C30
	add r0, r0, r2
	bl FUN_0201fbc8
_02121C30:
	ldr r5, [r10]
	ldr r2, [r10, #4]
	ldr r0, [r10, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	ldr r0, [sp, #8]
	add r1, r5, r1, lsl #2
	str r1, [sp, #0x1a4]
	str r5, [sp, #0x1a8]
	str r3, [sp, #0x1ac]
	str r2, [sp, #0x1b0]
	cmp r0, #0
	beq _02121D38
	add r0, sp, #0x28
	str r1, [sp, #0xe8]
	str r1, [sp, #0x28]
	str r5, [sp, #0xec]
	str r3, [sp, #0xf0]
	str r2, [sp, #0xf4]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	rsb r1, r4, #0
	bl FUN_ov29_02123078
	ldr r2, [r0]
	ldr r1, [sp, #8]
	str r2, [sp, #0xf8]
	ldr r2, [r0, #4]
	add r1, r4, r1
	str r2, [sp, #0xfc]
	ldr r2, [r0, #8]
	ldr r6, [sp, #0x1a4]
	str r2, [sp, #0x100]
	ldr r7, [r0, #0xc]
	ldr r5, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	ldr r2, [sp, #0x1b0]
	add r0, sp, #0x38
	str r7, [sp, #0x104]
	str r6, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	rsb r1, r1, #0
	bl FUN_ov29_02123078
	ldr r2, [r0]
	add r1, sp, #0x108
	str r2, [sp, #0x108]
	ldr r3, [r0, #4]
	add r2, sp, #0xf8
	str r3, [sp, #0x10c]
	ldr r5, [r0, #8]
	add r3, sp, #0xe8
	str r5, [sp, #0x110]
	ldr r5, [r0, #0xc]
	add r0, sp, #0x118
	str r5, [sp, #0x114]
	bl FUN_ov29_02121704
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	ldr r1, [sp, #0x120]
	str r0, [sp, #0x1a4]
	ldr r0, [sp, #0x124]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
_02121D38:
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov29_02123078
_02121D44:
	ldrb r0, [r8, #0x10]
	ldr r10, [sp, #0x1a4]
	ldr r7, [sp, #0x1a8]
	ldr r6, [sp, #0x1ac]
	ldr r5, [sp, #0x1b0]
	ldr r4, [r8]
	ldr r3, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0xc]
	strb r0, [sp, #0xc0]
	str r10, [sp, #0xa0]
	str r7, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r5, [sp, #0xac]
	str r4, [sp, #0xb0]
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r1, [sp, #0xbc]
	ldr r1, [r9]
	add r0, sp, #0xd8
	str r1, [sp, #0xc4]
	ldr r2, [r9, #4]
	add r1, sp, #0xc4
	str r2, [sp, #0xc8]
	ldr r3, [r9, #8]
	add r2, sp, #0xb0
	str r3, [sp, #0xcc]
	ldr r4, [r9, #0xc]
	add r3, sp, #0xa0
	str r4, [sp, #0xd0]
	ldrb r4, [r9, #0x10]
	strb r4, [sp, #0xd4]
	bl FUN_ov29_02121f8c
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121DD0:
	add r2, r10, #0xc
	mov r0, r10
	mov r1, r4
	str r6, [sp, #0x190]
	str r6, [sp, #0x194]
	str r6, [sp, #0x198]
	str r6, [sp, #0x19c]
	str r2, [sp, #0x1a0]
	bl FUN_ov29_02120e7c
	mov r1, r0
	and r2, r6, #0xff
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0]
	add r0, sp, #0x190
	bl FUN_ov29_02122dc0
	ldr r0, [sp, #0x190]
	str r5, [sp, #0x194]
	cmp r4, #0
	add r0, r0, r5, lsl #2
	beq _02121E88
_02121E24:
	ldr r5, [r9]
	ldr r1, [r9, #0xc]
	ldr r3, [r9, #4]
	ldr r2, [r9, #8]
	str r1, [sp, #0x24]
	ldr r1, [r5]
	cmp r0, #0
	strne r1, [r0]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x20]
	add r1, r1, #1
	str r1, [sp, #0x198]
	ldr r2, [r9]
	ldr r1, [r9, #0xc]
	add r2, r2, #4
	cmp r2, r1
	ldreq r1, [r9, #4]
	str r2, [r9]
	sub r4, r4, #1
	streq r1, [r9]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, r0, #4
	cmp r4, #0
	bne _02121E24
_02121E88:
	ldr r1, [r10, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _02121EA8
	ldr r2, [r10, #4]
	ldr r0, [r10, #8]
	add r0, r2, r0
	bl FUN_0201fbc8
_02121EA8:
	ldr r2, [r10]
	add r4, sp, #0x190
	add r0, r2, r1, lsl #2
	str r2, [sp, #0x94]
	str r0, [sp, #0x90]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x98]
	ldr r0, [r10, #0xc]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x9c]
	and r0, r6, #0xff
	strb r0, [r1]
	ldr r3, [r1]
	ldr r1, [sp]
	add r2, sp, #0x90
	mov r0, r4
	bl FUN_ov29_02122f44
	ldr r3, [r10]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r3, r0, lsl #2
	str r0, [sp, #0x80]
	str r0, [sp, #0x88]
	str r3, [sp, #0x84]
	ldr r2, [r10, #0xc]
	and r0, r6, #0xff
	add r2, r3, r2, lsl #2
	str r2, [sp, #0x8c]
	strb r0, [r1]
	ldr r3, [r1]
	ldr r2, [sp]
	add r1, sp, #0x80
	mov r0, r4
	bl FUN_ov29_02122e3c
	str r6, [r10, #8]
	ldr r1, [r10]
	ldr r0, [sp, #0x190]
	add r3, sp, #0x19c
	str r0, [r10]
	str r1, [sp, #0x190]
	ldr r2, [r10, #4]
	ldr r1, [sp, #0x194]
	mov r0, r4
	str r1, [r10, #4]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x194]
	str r1, [r10, #8]
	str r6, [sp, #0x198]
	ldr r2, [r10, #0xc]
	ldr r1, [r3]
	str r1, [r10, #0xc]
	str r2, [r3]
	bl FUN_ov29_02122d8c
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov29_021219f4

	arm_func_start FUN_ov29_02121f8c
FUN_ov29_02121f8c: ; 0x02121F8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r6, r1
	ldr r7, [r6]
	ldr r4, [r2]
	mov r11, r0
	mov r5, r3
	cmp r7, r4
	beq _02122130
	mov r0, r2
	bl FUN_ov29_021230bc
	str r0, [sp, #0xc]
_02121FBC:
	ldr r2, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	addle r0, sp, #0xc
	str r2, [sp, #8]
	addgt r0, sp, #8
	ldr r4, [r0]
	ldr r1, [r6]
	add r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r2, [r6, #4]
	mov r1, r4
	str r2, [sp, #0x24]
	ldr r2, [r6, #8]
	str r2, [sp, #0x28]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x2c]
	ldrb r2, [r6, #0x10]
	strb r2, [sp, #0x30]
	bl FUN_ov29_02123078
	ldrb r12, [sp, #0x30]
	ldr r9, [sp, #0x20]
	ldr r8, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr lr, [sp, #0x2c]
	ldr r10, [r6]
	ldrb r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r2, [r6, #8]
	ldr r1, [r6, #0xc]
	str r3, [sp, #0x4c]
	strb r12, [sp, #0x6c]
	str r9, [sp, #0x5c]
	str r8, [sp, #0x60]
	str r7, [sp, #0x64]
	str r7, [sp, #0x3c]
	str lr, [sp, #0x68]
	str r9, [sp, #0x34]
	str r8, [sp, #0x38]
	str lr, [sp, #0x40]
	strb r12, [sp, #0x44]
	str r10, [sp, #0x48]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	strb r0, [sp, #0x58]
	cmp r10, r9
	ldr r7, [r5]
	add r3, sp, #0x48
	beq _021220DC
_02122094:
	ldr r8, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	add r8, r8, #4
	str r8, [r3]
	cmp r8, r0
	ldr r1, [r3, #8]
	ldr r12, [r10]
	streq r2, [r3]
	str r10, [sp, #0x10]
	ldr r10, [r3]
	str r12, [r7]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r7, r7, #4
	cmp r10, r9
	bne _02122094
_021220DC:
	ldr r0, [sp, #0xc]
	sub r1, r4, #1
	sub r0, r0, r4
	str r0, [sp, #0xc]
	ldr r2, [r5]
	ldr r0, [r5, #0xc]
	add r1, r2, r1, lsl #2
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [r5, #4]
	str r1, [r5]
	streq r0, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02122130
	add r0, sp, #0x5c
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldrb r4, [sp, #0x6c]
	strb r4, [r6, #0x10]
	b _02121FBC
_02122130:
	ldr r0, [r5]
	str r0, [r11]
	ldr r0, [r5, #4]
	str r0, [r11, #4]
	ldr r0, [r5, #8]
	str r0, [r11, #8]
	ldr r0, [r5, #0xc]
	str r0, [r11, #0xc]
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov29_02121f8c

	arm_func_start FUN_ov29_02122158
FUN_ov29_02122158: ; 0x02122158
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b4
	mov r9, r2
	mov r8, r3
	ldrb r2, [r9, #0x10]
	ldrb r7, [r8, #0x10]
	mov r10, r0
	str r1, [sp]
	ldr r0, [r8, #8]
	ldr r1, [r8, #0xc]
	ldr r6, [r9]
	ldr r5, [r9, #4]
	ldr r4, [r9, #8]
	ldr r3, [r9, #0xc]
	ldr r12, [r8]
	ldr r11, [r8, #4]
	str r0, [sp, #0x170]
	str r0, [sp, #0x74]
	str r1, [sp, #0x174]
	str r1, [sp, #0x78]
	add r0, sp, #0x6c
	add r1, sp, #0x58
	str r12, [sp, #0x168]
	str r11, [sp, #0x16c]
	strb r7, [sp, #0x178]
	str r6, [sp, #0x17c]
	str r5, [sp, #0x180]
	strb r2, [sp, #0x18c]
	str r4, [sp, #0x184]
	str r12, [sp, #0x6c]
	str r11, [sp, #0x70]
	strb r7, [sp, #0x7c]
	str r3, [sp, #0x188]
	str r6, [sp, #0x58]
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	strb r2, [sp, #0x68]
	bl FUN_ov29_021230bc
	movs r4, r0
	addeq sp, sp, #0x1b4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	ldr r3, [r10]
	ldr r1, [r10, #4]
	ldr r2, [r0]
	add r7, r3, r1, lsl #2
	sub r1, r2, r7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r2, r7
	mov r5, r0, asr #2
	ldrlo r0, [r10, #0xc]
	mov r6, #0
	addlo r5, r5, r0
	ldr r0, [r10, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r4, r0
	ldrls r2, [r10, #8]
	subls r0, r0, r4
	cmpls r2, r0
	bhi _02122534
	str r7, [sp, #0x1a4]
	ldr r6, [r10]
	sub r0, r2, r5
	str r0, [sp, #8]
	str r6, [sp, #0x1a8]
	ldr r1, [sp, #8]
	ldr r0, [r10, #4]
	cmp r5, r1
	add r1, r6, r0, lsl #2
	str r1, [sp, #4]
	str r1, [sp, #0x1ac]
	ldr r1, [r10, #0xc]
	add r11, r6, r1, lsl #2
	str r11, [sp, #0x1b0]
	bhs _02122378
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov29_02123078
	ldr r0, [r10, #8]
	ldr r3, [sp, #0x1a4]
	ldr r2, [r10]
	add r1, r0, r4
	sub r2, r3, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	stmib r10, {r0, r1}
	cmp r5, #0
	beq _021224A8
	ldr r2, [sp, #0x1b0]
	ldr r10, [sp, #0x1a4]
	ldr r4, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	str r2, [sp, #0x134]
	ldr r2, [sp, #4]
	add r0, sp, #0x48
	mov r1, r5
	str r10, [sp, #0x128]
	str r4, [sp, #0x12c]
	str r3, [sp, #0x130]
	str r7, [sp, #0x48]
	str r6, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r11, [sp, #0x54]
	bl FUN_ov29_02123078
	ldr r2, [r0]
	add r1, sp, #0x148
	str r2, [sp, #0x138]
	ldr r3, [r0, #4]
	add r2, sp, #0x138
	str r3, [sp, #0x13c]
	ldr r4, [r0, #8]
	add r3, sp, #0x128
	str r4, [sp, #0x140]
	ldr r4, [r0, #0xc]
	add r0, sp, #0x158
	str r4, [sp, #0x144]
	ldr r4, [sp, #4]
	str r7, [sp, #0x148]
	str r6, [sp, #0x14c]
	str r4, [sp, #0x150]
	str r11, [sp, #0x154]
	bl FUN_ov29_0212188c
	ldr r3, [sp, #0x158]
	ldr r2, [sp, #0x15c]
	ldr r1, [sp, #0x160]
	ldr r0, [sp, #0x164]
	str r3, [sp, #0x1a4]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
	b _021224A8
_02122378:
	add r2, r2, r4
	cmp r1, #0
	str r2, [r10, #8]
	moveq r1, #0
	beq _02122394
	add r0, r0, r2
	bl FUN_0201fbc8
_02122394:
	ldr r5, [r10]
	ldr r2, [r10, #4]
	ldr r0, [r10, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	ldr r0, [sp, #8]
	add r1, r5, r1, lsl #2
	str r1, [sp, #0x1a4]
	str r5, [sp, #0x1a8]
	str r3, [sp, #0x1ac]
	str r2, [sp, #0x1b0]
	cmp r0, #0
	beq _0212249C
	add r0, sp, #0x28
	str r1, [sp, #0xe8]
	str r1, [sp, #0x28]
	str r5, [sp, #0xec]
	str r3, [sp, #0xf0]
	str r2, [sp, #0xf4]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	rsb r1, r4, #0
	bl FUN_ov29_02123078
	ldr r2, [r0]
	ldr r1, [sp, #8]
	str r2, [sp, #0xf8]
	ldr r2, [r0, #4]
	add r1, r4, r1
	str r2, [sp, #0xfc]
	ldr r2, [r0, #8]
	ldr r6, [sp, #0x1a4]
	str r2, [sp, #0x100]
	ldr r7, [r0, #0xc]
	ldr r5, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	ldr r2, [sp, #0x1b0]
	add r0, sp, #0x38
	str r7, [sp, #0x104]
	str r6, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	rsb r1, r1, #0
	bl FUN_ov29_02123078
	ldr r2, [r0]
	add r1, sp, #0x108
	str r2, [sp, #0x108]
	ldr r3, [r0, #4]
	add r2, sp, #0xf8
	str r3, [sp, #0x10c]
	ldr r5, [r0, #8]
	add r3, sp, #0xe8
	str r5, [sp, #0x110]
	ldr r5, [r0, #0xc]
	add r0, sp, #0x118
	str r5, [sp, #0x114]
	bl FUN_ov29_02121704
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	ldr r1, [sp, #0x120]
	str r0, [sp, #0x1a4]
	ldr r0, [sp, #0x124]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
_0212249C:
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov29_02123078
_021224A8:
	ldrb r0, [r8, #0x10]
	ldr r10, [sp, #0x1a4]
	ldr r7, [sp, #0x1a8]
	ldr r6, [sp, #0x1ac]
	ldr r5, [sp, #0x1b0]
	ldr r4, [r8]
	ldr r3, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0xc]
	strb r0, [sp, #0xc0]
	str r10, [sp, #0xa0]
	str r7, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r5, [sp, #0xac]
	str r4, [sp, #0xb0]
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r1, [sp, #0xbc]
	ldr r1, [r9]
	add r0, sp, #0xd8
	str r1, [sp, #0xc4]
	ldr r2, [r9, #4]
	add r1, sp, #0xc4
	str r2, [sp, #0xc8]
	ldr r3, [r9, #8]
	add r2, sp, #0xb0
	str r3, [sp, #0xcc]
	ldr r4, [r9, #0xc]
	add r3, sp, #0xa0
	str r4, [sp, #0xd0]
	ldrb r4, [r9, #0x10]
	strb r4, [sp, #0xd4]
	bl FUN_ov29_021226f0
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122534:
	add r2, r10, #0xc
	mov r0, r10
	mov r1, r4
	str r6, [sp, #0x190]
	str r6, [sp, #0x194]
	str r6, [sp, #0x198]
	str r6, [sp, #0x19c]
	str r2, [sp, #0x1a0]
	bl FUN_ov29_02120e7c
	mov r1, r0
	and r2, r6, #0xff
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0]
	add r0, sp, #0x190
	bl FUN_ov29_02122dc0
	ldr r0, [sp, #0x190]
	str r5, [sp, #0x194]
	cmp r4, #0
	add r0, r0, r5, lsl #2
	beq _021225EC
_02122588:
	ldr r5, [r9]
	ldr r1, [r9, #0xc]
	ldr r3, [r9, #4]
	ldr r2, [r9, #8]
	str r1, [sp, #0x24]
	ldr r1, [r5]
	cmp r0, #0
	strne r1, [r0]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x20]
	add r1, r1, #1
	str r1, [sp, #0x198]
	ldr r2, [r9]
	ldr r1, [r9, #0xc]
	add r2, r2, #4
	cmp r2, r1
	ldreq r1, [r9, #4]
	str r2, [r9]
	sub r4, r4, #1
	streq r1, [r9]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, r0, #4
	cmp r4, #0
	bne _02122588
_021225EC:
	ldr r1, [r10, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _0212260C
	ldr r2, [r10, #4]
	ldr r0, [r10, #8]
	add r0, r2, r0
	bl FUN_0201fbc8
_0212260C:
	ldr r2, [r10]
	add r4, sp, #0x190
	add r0, r2, r1, lsl #2
	str r2, [sp, #0x94]
	str r0, [sp, #0x90]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x98]
	ldr r0, [r10, #0xc]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x9c]
	and r0, r6, #0xff
	strb r0, [r1]
	ldr r3, [r1]
	ldr r1, [sp]
	add r2, sp, #0x90
	mov r0, r4
	bl FUN_ov29_02122f44
	ldr r3, [r10]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r3, r0, lsl #2
	str r0, [sp, #0x80]
	str r0, [sp, #0x88]
	str r3, [sp, #0x84]
	ldr r2, [r10, #0xc]
	and r0, r6, #0xff
	add r2, r3, r2, lsl #2
	str r2, [sp, #0x8c]
	strb r0, [r1]
	ldr r3, [r1]
	ldr r2, [sp]
	add r1, sp, #0x80
	mov r0, r4
	bl FUN_ov29_02122e3c
	str r6, [r10, #8]
	ldr r1, [r10]
	ldr r0, [sp, #0x190]
	add r3, sp, #0x19c
	str r0, [r10]
	str r1, [sp, #0x190]
	ldr r2, [r10, #4]
	ldr r1, [sp, #0x194]
	mov r0, r4
	str r1, [r10, #4]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x194]
	str r1, [r10, #8]
	str r6, [sp, #0x198]
	ldr r2, [r10, #0xc]
	ldr r1, [r3]
	str r1, [r10, #0xc]
	str r2, [r3]
	bl FUN_ov29_02122d8c
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov29_02122158

	arm_func_start FUN_ov29_021226f0
FUN_ov29_021226f0: ; 0x021226F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r6, r1
	ldr r7, [r6]
	ldr r4, [r2]
	mov r11, r0
	mov r5, r3
	cmp r7, r4
	beq _02122894
	mov r0, r2
	bl FUN_ov29_021230bc
	str r0, [sp, #0xc]
_02122720:
	ldr r2, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	addle r0, sp, #0xc
	str r2, [sp, #8]
	addgt r0, sp, #8
	ldr r4, [r0]
	ldr r1, [r6]
	add r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r2, [r6, #4]
	mov r1, r4
	str r2, [sp, #0x24]
	ldr r2, [r6, #8]
	str r2, [sp, #0x28]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x2c]
	ldrb r2, [r6, #0x10]
	strb r2, [sp, #0x30]
	bl FUN_ov29_02123078
	ldrb r12, [sp, #0x30]
	ldr r9, [sp, #0x20]
	ldr r8, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr lr, [sp, #0x2c]
	ldr r10, [r6]
	ldrb r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r2, [r6, #8]
	ldr r1, [r6, #0xc]
	str r3, [sp, #0x4c]
	strb r12, [sp, #0x6c]
	str r9, [sp, #0x5c]
	str r8, [sp, #0x60]
	str r7, [sp, #0x64]
	str r7, [sp, #0x3c]
	str lr, [sp, #0x68]
	str r9, [sp, #0x34]
	str r8, [sp, #0x38]
	str lr, [sp, #0x40]
	strb r12, [sp, #0x44]
	str r10, [sp, #0x48]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	strb r0, [sp, #0x58]
	cmp r10, r9
	ldr r7, [r5]
	add r3, sp, #0x48
	beq _02122840
_021227F8:
	ldr r8, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	add r8, r8, #4
	str r8, [r3]
	cmp r8, r0
	ldr r1, [r3, #8]
	ldr r12, [r10]
	streq r2, [r3]
	str r10, [sp, #0x10]
	ldr r10, [r3]
	str r12, [r7]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r7, r7, #4
	cmp r10, r9
	bne _021227F8
_02122840:
	ldr r0, [sp, #0xc]
	sub r1, r4, #1
	sub r0, r0, r4
	str r0, [sp, #0xc]
	ldr r2, [r5]
	ldr r0, [r5, #0xc]
	add r1, r2, r1, lsl #2
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [r5, #4]
	str r1, [r5]
	streq r0, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02122894
	add r0, sp, #0x5c
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldrb r4, [sp, #0x6c]
	strb r4, [r6, #0x10]
	b _02122720
_02122894:
	ldr r0, [r5]
	str r0, [r11]
	ldr r0, [r5, #4]
	str r0, [r11, #4]
	ldr r0, [r5, #8]
	str r0, [r11, #8]
	ldr r0, [r5, #0xc]
	str r0, [r11, #0xc]
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov29_021226f0

	arm_func_start FUN_ov29_021228bc
FUN_ov29_021228bc: ; 0x021228BC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _02122978
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021228FC
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r3, r1
_021228FC:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _02122978
_0212293C:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _02122950
	bl FUN_0201e078
_02122950:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _0212293C
_02122978:
	add r0, r5, #8
	bl FUN_ov29_02123044
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_021228bc

	arm_func_start FUN_ov29_0212298c
FUN_ov29_0212298c: ; 0x0212298C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r5, r1
	ldr lr, [r5, #8]
	ldr r3, [r5, #0xc]
	ldr r1, [r5, #0x14]
	add r12, lr, r3, lsl #2
	ldr r7, [r5]
	add r3, lr, r1, lsl #2
	mov r4, r2
	add r4, r4, r7
	mov r6, r0
	add r0, sp, #0
	str r12, [sp]
	str lr, [sp, #4]
	str r12, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, r4, lsr #6
	str r12, [sp, #0x10]
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl FUN_ov29_02123078
	ldr r0, [r5, #0x10]
	ldr r12, [sp]
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	cmp r0, #0
	mov r5, #0
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r12, [sp, #0x20]
	mov r0, r4, lsl #0x1a
	ldrne r5, [r12]
	ldr r4, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r5, r0, lsr #22
	str r4, [r6]
	str r3, [r6, #4]
	str r2, [r6, #8]
	str r1, [r6, #0xc]
	str r0, [r6, #0x10]
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov29_0212298c

	arm_func_start FUN_ov29_02122a4c
FUN_ov29_02122a4c: ; 0x02122A4C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _02122B08
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _02122A8C
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r3, r1
_02122A8C:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _02122B08
_02122ACC:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _02122AE0
	bl FUN_0201e078
_02122AE0:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _02122ACC
_02122B08:
	add r0, r5, #8
	bl FUN_ov29_02123044
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_02122a4c

	arm_func_start FUN_ov29_02122b1c
FUN_ov29_02122b1c: ; 0x02122B1C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	mov r5, r1
	ldr lr, [r5]
	mov r4, r2
	ldr r12, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #0x14]
	add r3, r12, r2, lsl #2
	add r2, r12, r1, lsl #2
	mov r6, r0
	ldr r0, _02122BF8 ; =0x51EB851F
	add r4, r4, lr
	umull r0, r1, r4, r0
	add r0, sp, #0
	str r3, [sp, #8]
	mov r1, r1, lsr #3
	str r3, [sp]
	str r12, [sp, #4]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	bl FUN_ov29_02123078
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	str r2, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r2, _02122BF8 ; =0x51EB851F
	ldr r1, [sp, #0xc]
	umull r2, r3, r4, r2
	ldr r12, [sp]
	str r1, [sp, #0x2c]
	mov r3, r3, lsr #3
	mov r5, #0x19
	umull r2, r3, r5, r3
	sub r3, r4, r2
	mov r1, #0
	cmp r0, #0
	str r12, [sp, #0x20]
	ldrne r1, [r12]
	mov r2, #0x28
	mla r1, r3, r2, r1
	ldr r0, [sp, #0x20]
	ldr lr, [sp, #0x24]
	ldr r12, [sp, #0x28]
	stmia r6, {r0, lr}
	ldr r5, [sp, #0x2c]
	str r12, [r6, #8]
	str r5, [r6, #0xc]
	str r1, [r6, #0x10]
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, pc}
_02122BF8: .word 0x51EB851F
	arm_func_end FUN_ov29_02122b1c

	arm_func_start FUN_ov29_02122bfc
FUN_ov29_02122bfc: ; 0x02122BFC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _02122CB8
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _02122C3C
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl FUN_0201fbc8
	mov r3, r1
_02122C3C:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _02122CB8
_02122C7C:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _02122C90
	bl FUN_0201e078
_02122C90:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _02122C7C
_02122CB8:
	add r0, r5, #8
	bl FUN_ov29_02123044
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov29_02122bfc

	arm_func_start FUN_ov29_02122ccc
FUN_ov29_02122ccc: ; 0x02122CCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r5, r1
	ldr lr, [r5, #8]
	ldr r3, [r5, #0xc]
	ldr r1, [r5, #0x14]
	add r12, lr, r3, lsl #2
	ldr r7, [r5]
	add r3, lr, r1, lsl #2
	mov r4, r2
	add r4, r4, r7
	mov r6, r0
	add r0, sp, #0
	str r12, [sp]
	str lr, [sp, #4]
	str r12, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, r4, lsr #8
	str r12, [sp, #0x10]
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl FUN_ov29_02123078
	ldr r0, [r5, #0x10]
	ldr r12, [sp]
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	cmp r0, #0
	mov r5, #0
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r12, [sp, #0x20]
	mov r0, r4, lsl #0x18
	ldrne r5, [r12]
	ldr r4, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r5, r0, lsr #22
	str r4, [r6]
	str r3, [r6, #4]
	str r2, [r6, #8]
	str r1, [r6, #0xc]
	str r0, [r6, #0x10]
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov29_02122ccc

	arm_func_start FUN_ov29_02122d8c
FUN_ov29_02122d8c: ; 0x02122D8C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _02122DB4
	ldr r1, [r4, #8]
	sub r1, r1, r1
	str r1, [r4, #8]
	bl FUN_0201e078
_02122DB4:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov29_02122d8c

	arm_func_start FUN_ov29_02122dc0
FUN_ov29_02122dc0: ; 0x02122DC0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02122E30 ; =0x02123C10
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	tst r3, #1
	orreq r1, r3, #1
	ldreq r0, _02122E34 ; =0x021235E8
	mvneq r3, #0xc0000001
	streq r3, [r0]
	ldr r0, _02122E34 ; =0x021235E8
	streq r1, [r2]
	ldr r0, [r0]
	cmp r4, r0
	bls _02122E00
	bl FUN_ov29_02120f88
_02122E00:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl FUN_0201e014
	movs r6, r0
	bne _02122E20
	ldr r0, _02122E38 ; =0x02123640
	bl FUN_02023ab4
	bl FUN_02021040
_02122E20:
	add r0, r4, #1
	str r6, [r5]
	str r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_02122E30: .word 0x02123C10
_02122E34: .word 0x021235E8
_02122E38: .word 0x02123640
	arm_func_end FUN_ov29_02122dc0

	arm_func_start FUN_ov29_02122e3c
FUN_ov29_02122e3c: ; 0x02122E3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r3, [r7]
	ldr r0, [r7, #4]
	ldr r2, [r5]
	ldr r1, [r6]
	add r0, r3, r0, lsl #2
	cmp r1, r2
	bhi _02122EB0
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r3, r2, asr #2
	mov r2, r3, lsl #2
	sub r0, r0, r3, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r6]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	sub r0, r1, r0, asr #2
	stmib r7, {r0, r2}
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02122EB0:
	ldr r1, [r5, #4]
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	sub r4, r0, r2, lsl #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r6]
	ldr r0, [r6, #0xc]
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	sub r0, r4, r0, lsl #2
	bl FUN_020218f4
	ldr r1, [r6, #0xc]
	ldr r0, [r6]
	ldr r4, [r5]
	ldr r3, [r5, #4]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	mov r0, r3, asr #1
	add r1, r2, r1, lsr #30
	add r0, r3, r0, lsr #30
	mov r2, r1, asr #2
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	ldr r0, [r7, #8]
	sub r1, r1, r2
	add r0, r0, r2
	str r1, [r7, #4]
	str r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov29_02122e3c

	arm_func_start FUN_ov29_02122f44
FUN_ov29_02122f44: ; 0x02122F44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r3, [r7, #4]
	ldr r0, [r7, #8]
	mov r6, r1
	ldr r1, [r7, #0xc]
	add r0, r3, r0
	mov r5, r2
	bl FUN_0201fbc8
	ldr r2, [r7]
	ldr r0, [r5]
	add r4, r2, r1, lsl #2
	ldr r1, [r6]
	cmp r1, r0
	bhi _02122FC0
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r6]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r0, r2, r0, asr #2
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02122FC0:
	ldr r2, [r6, #0xc]
	mov r0, r4
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r8, r2, asr #2
	mov r2, r8, lsl #2
	bl FUN_020218f4
	ldr r1, [r5, #4]
	ldr r2, [r5]
	add r0, r4, r8, lsl #2
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	mov r2, r2, lsl #2
	bl FUN_020218f4
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr r4, [r6, #0xc]
	ldr r3, [r6]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r1, r1, asr #2
	ldr r2, [r7, #8]
	add r0, r1, r0, asr #2
	add r0, r2, r0
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov29_02122f44

	arm_func_start FUN_ov29_02123044
FUN_ov29_02123044: ; 0x02123044
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0212306C
	ldr r1, [r4, #8]
	sub r1, r1, r1
	str r1, [r4, #8]
	bl FUN_0201e078
_0212306C:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov29_02123044

	arm_func_start FUN_ov29_02123078
FUN_ov29_02123078: ; 0x02123078
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub r12, r2, r4
	sub lr, r3, r4
	mov r3, r12, asr #1
	mov r2, lr, asr #1
	add r3, r12, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _021230B0
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_021230B0:
	add r1, r4, r1, lsl #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov29_02123078

	arm_func_start FUN_ov29_021230bc
FUN_ov29_021230bc: ; 0x021230BC
	stmfd sp!, {r3, lr}
	ldr r12, [r1]
	ldr r3, [r0]
	ldr lr, [r0, #8]
	sub r2, r3, r12
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _02123108
	cmp r12, lr
	bhs _02123128
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _02123128
_02123108:
	cmp r12, lr
	blo _02123128
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_02123128:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov29_021230bc

	arm_func_start FUN_ov29_02123130
FUN_ov29_02123130: ; 0x02123130
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	ldr r1, [sp, #0x4c]
	mov r4, r0
	ldmia r1, {r0, r1, r2, r3}
	add r12, sp, #0x14
	stmia r12, {r0, r1, r2, r3}
	add r6, sp, #0x3c
	add r5, sp, #4
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r12
	mov r1, r5
	bl FUN_ov29_021234cc
	movs r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r5, #0
	sub r0, sp, #4
	strb r5, [r0]
	ldr r2, [r0]
	mov r0, r4
	bl FUN_ov29_0212340c
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	ldr r2, [sp, #0x4c]
	mov r0, r4
	mov r1, r6
	bl FUN_ov29_021231c4
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov29_02123130

	arm_func_start FUN_ov29_021231c4
FUN_ov29_021231c4: ; 0x021231C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x5c
	mov r7, r0
	ldr r4, [r7]
	mov r6, r1
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r7, #4]
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	add r0, r2, r0
	bl FUN_0201fbc8
	add r4, r4, r1, lsl #2
	mov r0, r5
	mov r1, r6
	bl FUN_ov29_021234cc
	str r0, [sp, #0x18]
	ldr r2, [r7]
	ldr r1, [r7, #0xc]
	ldr r12, [r6]
	add r1, r2, r1, lsl #2
	sub r2, r1, r4
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	addlt r1, sp, #0x18
	str r2, [sp, #0x14]
	addge r1, sp, #0x14
	ldr r1, [r1]
	ldr r3, [r6, #8]
	str r1, [sp, #0x14]
	ldr r1, [r7, #8]
	ldr r2, [r6, #0xc]
	add r0, r1, r0
	str r0, [r7, #8]
	ldr r8, [r6, #4]
	ldr r1, [sp, #0x14]
	add r0, sp, #0x2c
	str r12, [sp, #0x2c]
	str r3, [sp, #0x34]
	str r2, [sp, #0x38]
	str r8, [sp, #0x30]
	bl FUN_ov29_02123488
	ldr r8, [r0]
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r8, [sp, #0x4c]
	add r0, sp, #0x4c
	mov r8, sp
	str r3, [sp, #0x50]
	str r2, [sp, #0x54]
	str r1, [sp, #0x58]
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	ldmia r6, {r0, r1, r2, r3}
	bl FUN_ov29_0212333c
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, [r6]
	ldr r4, [r6, #4]
	ldr r3, [r6, #8]
	ldr r2, [r6, #0xc]
	add r0, sp, #0x1c
	str r8, [sp, #0x1c]
	str r4, [sp, #0x20]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	bl FUN_ov29_02123488
	ldmia r0, {r8, lr}
	ldr r12, [r0, #8]
	ldr r6, [r0, #0xc]
	mov r4, sp
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r4, [r7]
	str r8, [sp, #0x3c]
	add r0, sp, #0x3c
	str lr, [sp, #0x40]
	str r12, [sp, #0x44]
	str r6, [sp, #0x48]
	ldmia r0, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	bl FUN_ov29_0212333c
	add sp, sp, #0x5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov29_021231c4

	arm_func_start FUN_ov29_0212333c
FUN_ov29_0212333c: ; 0x0212333C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r0, [sp, #0x28]
	ldr r7, [sp, #0x38]
	ldr r10, [sp, #0x48]
	cmp r0, r7
	ldr r8, [sp, #0x40]
	beq _021233FC
	ldr r6, [sp, #0x38]
	mov r11, #1
	add r4, sp, #0x28
_02123368:
	ldr r1, [sp, #0x30]
	mov r2, #1
	cmp r0, r1
	movhs r1, r11
	movlo r1, #0
	cmp r7, r8
	movlo r2, #0
	cmp r1, r2
	ldrne r1, [sp, #0x34]
	subeq r2, r6, r0
	subne r2, r1, r0
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r9, r1, asr #2
	ldr r1, [sp, #0x28]
	add r0, r0, r9, lsl #2
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r5, r0, asr #2
	mov r2, r5, lsl #2
	mov r0, r10
	bl FUN_020218f4
	ldr r1, [r4]
	sub r0, r9, #1
	add r2, r1, r0, lsl #2
	ldr r0, [sp, #0x34]
	add r1, r2, #4
	str r2, [r4]
	cmp r1, r0
	ldreq r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	streq r0, [sp, #0x28]
	ldr r0, [sp, #0x28]
	add r10, r10, r5, lsl #2
	cmp r0, r7
	bne _02123368
_021233FC:
	mov r0, r10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov29_0212333c

	arm_func_start FUN_ov29_0212340c
FUN_ov29_0212340c: ; 0x0212340C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0212347C ; =0x02123C0C
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	tst r3, #1
	orreq r1, r3, #1
	ldreq r0, _02123480 ; =0x021235E4
	mvneq r3, #0xc0000001
	streq r3, [r0]
	ldr r0, _02123480 ; =0x021235E4
	streq r1, [r2]
	ldr r0, [r0]
	cmp r4, r0
	bls _0212344C
	bl FUN_ov29_02120f88
_0212344C:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl FUN_0201e014
	movs r6, r0
	bne _0212346C
	ldr r0, _02123484 ; =0x02123640
	bl FUN_02023ab4
	bl FUN_02021040
_0212346C:
	add r0, r4, #1
	str r6, [r5]
	str r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_0212347C: .word 0x02123C0C
_02123480: .word 0x021235E4
_02123484: .word 0x02123640
	arm_func_end FUN_ov29_0212340c

	arm_func_start FUN_ov29_02123488
FUN_ov29_02123488: ; 0x02123488
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub r12, r2, r4
	sub lr, r3, r4
	mov r3, r12, asr #1
	mov r2, lr, asr #1
	add r3, r12, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _021234C0
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_021234C0:
	add r1, r4, r1, lsl #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov29_02123488

	arm_func_start FUN_ov29_021234cc
FUN_ov29_021234cc: ; 0x021234CC
	stmfd sp!, {r3, lr}
	ldr r12, [r1]
	ldr r3, [r0]
	ldr lr, [r0, #8]
	sub r2, r3, r12
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _02123518
	cmp r12, lr
	bhs _02123538
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _02123538
_02123518:
	cmp r12, lr
	blo _02123538
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_02123538:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov29_021234cc
_02123540:
	.byte 0x1E, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x02, 0x00, 0x0B, 0x00, 0x01, 0x00, 0x10, 0x00, 0x09, 0x00

	arm_func_start FUN_ov29_0212355c
FUN_ov29_0212355c: ; 0x0212355C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _021235A4 ; =0x021235C0
	str r0, [r4, #0x10]
	ldr r0, _021235A8 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _021235AC ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_021235A4: .word 0x021235C0
_021235A8: .word 0x00009CCD
_021235AC: .word 0x0000EA3C
	arm_func_end FUN_ov29_0212355c
	; 0x021235B0


	.rodata
	.incbin "/incbin/overlay29_rodata.bin"

	.bss
	.space 0x0
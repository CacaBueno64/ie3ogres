
	.include "/macros/function.inc"
	.include "/global.inc"

	.text
	arm_func_start FUN_ov20_02119f00
FUN_ov20_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F30 ; =0x0211E980
	add r1, r4, #0x18
	bl  FUN_ov16_020f3054
	ldr r0, _02119F34 ; =0x0211E99C
	add r1, r4, #0x24
	bl  FUN_ov16_020f3054
	ldr r0, _02119F38 ; =0x0211E9B4
	add r1, r4, #0x30
	bl  FUN_ov16_020f3054
	ldmfd sp!, {r4, pc}
_02119F30: .word 0x0211E980
_02119F34: .word 0x0211E99C
_02119F38: .word 0x0211E9B4
	arm_func_end FUN_ov20_02119f00

	arm_func_start FUN_ov20_02119f3c
FUN_ov20_02119f3c: ; 0x02119F3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, _02119FF0 ; =0x0211E9D4
	add r1, r9, #0x34c
	bl  FUN_ov16_020f3054
	ldr r0, _02119FF4 ; =0x0211E9F0
	add r1, r9, #0x358
	bl  FUN_ov16_020f3054
	ldr r0, _02119FF8 ; =0x0211EA0C
	add r1, r9, #0x364
	bl  FUN_ov16_020f3054
	ldr r0, _02119FFC ; =0x0211EA24
	add r1, r9, #0x370
	bl  FUN_ov16_020f3054
	ldr r0, _0211A000 ; =0x0211EA3C
	add r1, r9, #0x37c
	bl  FUN_ov16_020f3054
	mov r8, #0
	mov r0, r8
	ldr r7, _0211A004 ; =0x020A6C40
	mov r6, #0x800
	mov r1, r7
	mov r2, r6
	bl FUN_0200787c
	mov r0, r8
	ldr r5, _0211A008 ; =0x020A7440
	mov r2, r6
	mov r1, r5
	bl FUN_0200787c
	mov r0, r8
	ldr r4, _0211A00C ; =0x020A7C40
	mov r2, r6
	mov r1, r4
	bl FUN_0200787c
	mov r0, r7
	mov r1, r6
	bl FUN_020026d0
	mov r0, r5
	mov r1, r6
	bl FUN_020026d0
	mov r0, r4
	mov r1, r6
	bl FUN_020026d0
	str r8, [r9, #0x334]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02119FF0: .word 0x0211E9D4
_02119FF4: .word 0x0211E9F0
_02119FF8: .word 0x0211EA0C
_02119FFC: .word 0x0211EA24
_0211A000: .word 0x0211EA3C
_0211A004: .word 0x020A6C40
_0211A008: .word 0x020A7440
_0211A00C: .word 0x020A7C40
	arm_func_end FUN_ov20_02119f3c

	arm_func_start FUN_ov20_0211a010
FUN_ov20_0211a010: ; 0x0211A010
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	add r11, sp, #0x1c
	mov r10, r0
	ldr r1, _0211A0DC ; =0x0211EA54
	mov r0, r11
	bl FUN_02023c40
	mov r9, #0
	mov r6, r9
	mov r5, #1
	add r8, sp, #0x11c
	ldr r7, _0211A0E0 ; =0x0211E8CC
	ldr r4, _0211A0E4 ; =0x02099F38
	b _0211A0AC
_0211A048:
	ldr r2, [r7, r9, lsl #2]
	ldr r1, _0211A0E8 ; =0x0211EA70
	mov r0, r8
	bl FUN_02023c40
	ldr r1, [r10, #0x18]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f3d08
	cmp r0, #0
	beq _0211A0A8
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
	str r0, [r1, #0x3c]
_0211A0A8:
	add r9, r9, #1
_0211A0AC:
	cmp r9, #0x10
	blt _0211A048
	mov r0, r10
	mov r1, #0
	bl FUN_ov20_0211a3cc
	mov r0, r10
	bl FUN_ov20_0211a0ec
	mov r0, r10
	mov r1, #2
	bl FUN_ov20_0211a3cc
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A0DC: .word 0x0211EA54
_0211A0E0: .word 0x0211E8CC
_0211A0E4: .word 0x02099F38
_0211A0E8: .word 0x0211EA70
	arm_func_end FUN_ov20_0211a010

	arm_func_start FUN_ov20_0211a0ec
FUN_ov20_0211a0ec: ; 0x0211A0EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r4, sp, #0
	ldr r2, [r6, #0x30]
	mov r1, r4
	str r2, [sp]
	bl FUN_ov20_0211a1a4
	ldr r7, _0211A190 ; =0x0209A250
	str r0, [r6, #0x388]
	ldr r1, [r6, #0x38c]
	mov r0, r7
	bl FUN_0202e1c0
	ldr r1, [r6, #0x388]
	mov r5, #0
	mov r0, r7
	mov r1, r1, lsl #2
	str r5, [r6, #0x38c]
	bl FUN_0202de44
	ldr r1, [r6, #0x388]
	str r0, [r6, #0x38c]
	cmp r1, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0211A144:
	mov r0, r6
	mov r1, r4
	bl FUN_ov20_0211a194
	ldr r2, [r6, #0x38c]
	mov r1, r4
	strb r0, [r2, r5, lsl #2]
	mov r0, r6
	bl FUN_ov20_0211a194
	mov r0, r6
	mov r1, r4
	bl FUN_ov20_0211a1a4
	ldr r1, [r6, #0x38c]
	add r1, r1, r5, lsl #2
	strh r0, [r1, #2]
	ldr r0, [r6, #0x388]
	add r5, r5, #1
	cmp r5, r0
	blt _0211A144
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A190: .word 0x0209A250
	arm_func_end FUN_ov20_0211a0ec

	arm_func_start FUN_ov20_0211a194
FUN_ov20_0211a194: ; 0x0211A194
	ldr r2, [r1]
	ldrb r0, [r2], #1
	str r2, [r1]
	bx lr
	arm_func_end FUN_ov20_0211a194

	arm_func_start FUN_ov20_0211a1a4
FUN_ov20_0211a1a4: ; 0x0211A1A4
	ldr r2, [r1]
	ldrh r0, [r2], #2
	str r2, [r1]
	bx lr
	arm_func_end FUN_ov20_0211a1a4

	arm_func_start FUN_ov20_0211a1b4
FUN_ov20_0211a1b4: ; 0x0211A1B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x188
	mov r7, r0
	ldr r0, [r7, #0x364]
	cmp r0, #0
	ldrne r0, [r7, #0x370]
	cmpne r0, #0
	ldrne r0, [r7, #0x37c]
	cmpne r0, #0
	addeq sp, sp, #0x188
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r7, #0xdc]
	mov r6, #0
	mov r1, r6
	bl  FUN_ov16_020efa9c
	mov r4, r0
	add r5, sp, #0x1c
	ldrb r1, [r4, #0x4d]
	ldr r0, _0211A3B4 ; =0x0209BA20
	mov r2, r5
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x188
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f0bcc
	mov r5, r0
	add r2, sp, #0x68
	ldr r0, _0211A3B8 ; =0x00000FFF
	b _0211A264
_0211A230:
	mov r3, r6, lsl #3
	ldrh r8, [r7, #0xdc]
	ldrh r1, [r2, r3]
	and r8, r8, r0
	and r1, r1, r0
	cmp r8, r1
	bne _0211A260
	add r0, sp, #0x6a
	ldrb r0, [r0, r3]
	cmp r0, #1
	moveq r5, #1
	b _0211A26C
_0211A260:
	add r6, r6, #1
_0211A264:
	cmp r6, #0x20
	blt _0211A230
_0211A26C:
	add r0, sp, #0x14
	mov r8, #0
	str r0, [sp]
	ldr r0, [r7, #0x364]
	add r3, sp, #0x18
	mov r1, r4
	mov r2, r8
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _0211A2C8
	ldr r0, _0211A3BC ; =0x02099F38
	ldr r6, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	mov r3, #1
	str r8, [sp]
	stmib sp, {r3, r8}
	str r1, [sp, #0xc]
	ldr r2, _0211A3C0 ; =0x0211EA78
	mov r1, #5
	str r6, [sp, #0x10]
	bl FUN_02058800
	str r0, [r7, #0x84]
_0211A2C8:
	ldrh r1, [sp, #0x44]
	mov r0, r4
	cmp r1, #0
	ldreqh r1, [sp, #0x42]
	bl  FUN_ov16_020f0b3c
	mov r6, r0
	add r1, sp, #0x18
	str r1, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	ldr r0, [r7, #0x370]
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _0211A348
	ldr r0, _0211A3BC ; =0x02099F38
	ldr r4, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211A3C4 ; =0x0211EA90
	mov r1, #5
	str r4, [sp, #0x10]
	bl FUN_02058800
	str r0, [r7, #0x88]
_0211A348:
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [r7, #0x37c]
	add r3, sp, #0x18
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x188
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211A3BC ; =0x02099F38
	ldr r4, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211A3C8 ; =0x0211EAA8
	mov r1, #3
	mov r3, #1
	str r4, [sp, #0x10]
	bl FUN_02058800
	str r0, [r7, #0x8c]
	add sp, sp, #0x188
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A3B4: .word 0x0209BA20
_0211A3B8: .word 0x00000FFF
_0211A3BC: .word 0x02099F38
_0211A3C0: .word 0x0211EA78
_0211A3C4: .word 0x0211EA90
_0211A3C8: .word 0x0211EAA8
	arm_func_end FUN_ov20_0211a1b4

	arm_func_start FUN_ov20_0211a3cc
FUN_ov20_0211a3cc: ; 0x0211A3CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211A3E0
	cmp r4, #3
	blt _0211A434
_0211A3E0:
	mov r4, #0
	add r9, r0, #0x18
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211A3F4:
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
	cmp r4, #3
	blt _0211A3F4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A434:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0x18
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
	arm_func_end FUN_ov20_0211a3cc

	arm_func_start FUN_ov20_0211a474
FUN_ov20_0211a474: ; 0x0211A474
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A4BC ; =0x02099F38
	b _0211A4B0
_0211A48C:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x84]
	cmp r1, #0
	beq _0211A4AC
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #2
	str r5, [r0, #0x84]
_0211A4AC:
	add r6, r6, #1
_0211A4B0:
	cmp r6, #3
	blt _0211A48C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A4BC: .word 0x02099F38
	arm_func_end FUN_ov20_0211a474

	arm_func_start FUN_ov20_0211a4c0
FUN_ov20_0211a4c0: ; 0x0211A4C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mvn r1, #0
	mov r4, #0
	bl FUN_ov20_0211a3cc
	add r0, r6, #0x34c
	mov r1, #5
	bl  FUN_ov16_020f338c
	mov r5, r4
	add r8, r6, #0x34c
	mov r7, #0xc
	b _0211A4FC
_0211A4F0:
	mla r0, r5, r7, r8
	bl  FUN_ov16_020f33fc
	add r5, r5, #1
_0211A4FC:
	cmp r5, #5
	blt _0211A4F0
	mov r5, #0
	add r8, r6, #0xe4
	mov r7, #0xc0
	b _0211A524
_0211A514:
	mla r1, r5, r7, r8
	mov r0, r6
	bl FUN_ov20_0211aa0c
	add r5, r5, #1
_0211A524:
	cmp r5, #3
	blt _0211A514
	ldr r1, [r6, #0x38c]
	mov r5, #0
	ldr r0, _0211A600 ; =0x0209A250
	str r5, [r6, #0x334]
	bl FUN_0202e1c0
	str r5, [r6, #0x38c]
	ldr r7, _0211A604 ; =0x02099F38
	b _0211A568
_0211A54C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x90]
	cmp r1, #0
	beq _0211A564
	ldr r0, [r7]
	bl  FUN_ov16_021128c4
_0211A564:
	add r5, r5, #1
_0211A568:
	cmp r5, #1
	blt _0211A54C
	mov r5, #0
	ldr r7, _0211A604 ; =0x02099F38
	b _0211A5A0
_0211A57C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A59C
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x3c]
_0211A59C:
	add r5, r5, #1
_0211A5A0:
	cmp r5, #0x10
	blt _0211A57C
	mov r5, #0
	ldr r7, _0211A604 ; =0x02099F38
	b _0211A5D8
_0211A5B4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x7c]
	cmp r1, #0
	beq _0211A5D4
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x7c]
_0211A5D4:
	add r5, r5, #1
_0211A5D8:
	cmp r5, #2
	blt _0211A5B4
	mov r0, r6
	bl FUN_ov20_0211a474
	add r0, r6, #0xa0
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r6, #0xa0
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A600: .word 0x0209A250
_0211A604: .word 0x02099F38
	arm_func_end FUN_ov20_0211a4c0

	arm_func_start FUN_ov20_0211a608
FUN_ov20_0211a608: ; 0x0211A608
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0xac]
	mov r4, #0
	cmp r0, #0
	addle sp, sp, #0x10
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0211A68C ; =0x0211EAC0
	mov r7, #1
	mov r8, r4
_0211A634:
	add r0, r5, r4, lsl #3
	ldrh r0, [r0, #0xb4]
	mov r1, r8
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211A674
	bl FUN_0206cc00
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r8, [sp, #0xc]
	mov r2, r0
	ldr r0, [r5, #0x24]
	mov r1, r6
	add r3, r5, #0xa0
	bl  FUN_ov16_020f55b4
_0211A674:
	ldr r0, [r5, #0xac]
	add r4, r4, #1
	cmp r4, r0
	blt _0211A634
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A68C: .word 0x0211EAC0
	arm_func_end FUN_ov20_0211a608

	arm_func_start FUN_ov20_0211a690
FUN_ov20_0211a690: ; 0x0211A690
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r0, r1
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211A6C0
	bl FUN_0206cc00
	add r1, r5, #0xa0
	bl  FUN_ov16_020f5738
	and r4, r0, #0xff
_0211A6C0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov20_0211a690

	arm_func_start FUN_ov20_0211a6c8
FUN_ov20_0211a6c8: ; 0x0211A6C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A714 ; =0x02099F38
	b _0211A704
_0211A6DC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A700
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A700:
	add r5, r5, #1
_0211A704:
	cmp r5, #0x10
	blt _0211A6DC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A714: .word 0x02099F38
	arm_func_end FUN_ov20_0211a6c8

	arm_func_start FUN_ov20_0211a718
FUN_ov20_0211a718: ; 0x0211A718
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r6, r0
	mov r7, r4
	ldr r5, _0211A868 ; =0x02099F38
	b _0211A758
_0211A730:
	add r0, r6, r7, lsl #2
	ldr r1, [r0, #0x84]
	cmp r1, #0
	beq _0211A754
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A754:
	add r7, r7, #1
_0211A758:
	cmp r7, #3
	blt _0211A730
	ldr r5, [r6, #0x84]
	cmp r5, #0
	beq _0211A7A4
	ldr r7, _0211A868 ; =0x02099F38
	mov r1, r5
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A7A4
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov16_021146a4
	mov r2, #0
	ldr r0, [r7]
	mov r1, r5
	mov r3, r2
	bl FUN_02059038
_0211A7A4:
	ldr r5, [r6, #0x88]
	cmp r5, #0
	beq _0211A860
	ldr r7, _0211A868 ; =0x02099F38
	mov r1, r5
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A860
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov16_021146a4
	ldrh r0, [r6, #0xdc]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	movs r9, r0
	ldrne r1, [r6, #0x8c]
	cmpne r1, #0
	beq _0211A848
	ldr r0, [r7]
	bl FUN_0205998c
	movs r8, r0
	beq _0211A848
	ldr r0, _0211A86C ; =0x02099F04
	ldr r1, [r8, #4]
	ldr r2, [r0]
	mov r0, r9
	bl  FUN_ov16_020f0c30 ; may be ov17
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	bl FUN_02059a78
	mov r6, r0
	mov r4, #0x20
	ldr r0, [r8, #4]
	mov r1, r6
	mov r2, r4
	bl _memcpy
	mov r0, r6
	mov r1, r4
	bl FUN_020026d0
_0211A848:
	ldr r0, _0211A868 ; =0x02099F38
	mov r2, #0
	ldr r0, [r0]
	mov r1, r5
	mov r3, r2
	bl FUN_02059038
_0211A860:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A868: .word 0x02099F38
_0211A86C: .word 0x02099F04
	arm_func_end FUN_ov20_0211a718

	arm_func_start FUN_ov20_0211a870
FUN_ov20_0211a870: ; 0x0211A870
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A8D0 ; =0x02099F38
	b _0211A8C4
_0211A888:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A8C0
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A8C0
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A8C0:
	add r6, r6, #1
_0211A8C4:
	cmp r6, #0x10
	blt _0211A888
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A8D0: .word 0x02099F38
	arm_func_end FUN_ov20_0211a870

	arm_func_start FUN_ov20_0211a8d4
FUN_ov20_0211a8d4: ; 0x0211A8D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _0211A9F0 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	mov r1, #3
	bl  FUN_ov16_0210eb3c
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211A8FC: ; jump table
	b _0211A90C ; case 0
	b _0211A958 ; case 1
	b _0211A994 ; case 2
	b _0211A9C8 ; case 3
_0211A90C:
	mov r0, r5
	bl FUN_ov20_0211a474
	mov r0, r5
	add r1, r5, #0x264
	bl FUN_ov20_0211aa0c
	mov r0, r5
	add r1, r5, #0x1a4
	bl FUN_ov20_0211aa0c
	mov r0, r5
	add r1, r5, #0xe4
	bl FUN_ov20_0211abc4
	ldr r0, [r5, #0x10]
	cmp r0, #5
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0xac]
	ldr r0, _0211A9F4 ; =0x020A9C40
	mov r1, #0xc9
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A958:
	mov r0, r5
	bl FUN_ov20_0211a474
	mov r0, r5
	add r1, r5, #0x264
	bl FUN_ov20_0211aa0c
	mov r0, r5
	bl FUN_ov20_0211a474
	mov r0, r5
	add r1, r5, #0x1a4
	bl FUN_ov20_0211b444
	ldrh r2, [r5, #0xdc]
	ldr r0, _0211A9F4 ; =0x020A9C40
	mov r1, #0xcc
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A994:
	mov r0, r5
	bl FUN_ov20_0211a474
	mov r0, r5
	add r1, r5, #0x264
	bl FUN_ov20_0211aa0c
	mov r0, r5
	add r1, r5, #0x1a4
	bl FUN_ov20_0211b444
	ldr r0, _0211A9F4 ; =0x020A9C40
	mov r1, #0xcf
	mov r2, #0
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A9C8:
	mov r2, #0
	mov r0, r5
	add r1, r5, #0x264
	str r2, [r5, #0x334]
	bl FUN_ov20_0211bab8
	ldrh r2, [r5, #0xdc]
	ldr r0, _0211A9F4 ; =0x020A9C40
	mov r1, #0xd2
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A9F0: .word 0x02099EB4
_0211A9F4: .word 0x020A9C40
	arm_func_end FUN_ov20_0211a8d4

	arm_func_start FUN_ov20_0211a9f8
FUN_ov20_0211a9f8: ; 0x0211A9F8
	ldr r0, [r0, #0x32c]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end FUN_ov20_0211a9f8

	arm_func_start FUN_ov20_0211aa0c
FUN_ov20_0211aa0c: ; 0x0211AA0C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211AA70 ; =0x02099F38
	b _0211AA3C
_0211AA20:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211AA38
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
_0211AA38:
	add r5, r5, #1
_0211AA3C:
	cmp r5, #0x10
	blt _0211AA20
	ldr r1, [r6, #0x60]
	cmp r1, #0
	ble _0211AA5C
	ldr r0, _0211AA70 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211AA5C:
	mov r0, r6
	mov r1, #0
	mov r2, #0xc0
	bl MemWrite
	ldmfd sp!, {r4, r5, r6, pc}
_0211AA70: .word 0x02099F38
	arm_func_end FUN_ov20_0211aa0c

	arm_func_start FUN_ov20_0211aa74
FUN_ov20_0211aa74: ; 0x0211AA74
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0211AAA8
_0211AA80: ; jump table
	b _0211AA90 ; case 0
	b _0211AA98 ; case 1
	b _0211AA98 ; case 2
	b _0211AAA0 ; case 3
_0211AA90:
	mov r0, #0
	bx lr
_0211AA98:
	mov r0, #1
	bx lr
_0211AAA0:
	mov r0, #2
	bx lr
_0211AAA8:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov20_0211aa74

	arm_func_start FUN_ov20_0211aab0
FUN_ov20_0211aab0: ; 0x0211AAB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	ldr r1, [r5, #0x14]
	bl FUN_ov20_0211aa74
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r5, #0xe4
	mov r0, #0xc0
	mla r9, r4, r0, r1
	ldr r10, _0211AB6C ; =0x00007FFF
	mov r7, #0
	ldr r6, _0211AB70 ; =0x02099F38
	b _0211AB04
_0211AAE4:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211AB00
	ldr r0, [r6]
	mov r2, r10
	bl  FUN_ov16_02114204
_0211AB00:
	add r7, r7, #1
_0211AB04:
	cmp r7, #0x10
	blt _0211AAE4
	sub r8, r4, #1
	add r6, r5, #0xe4
	ldr r10, _0211AB74 ; =0x00004210
	mov r11, #0
	ldr r5, _0211AB70 ; =0x02099F38
	mov r4, #0xc0
	b _0211AB60
_0211AB28:
	mla r9, r8, r4, r6
	mov r7, r11
	b _0211AB54
_0211AB34:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211AB50
	ldr r0, [r5]
	mov r2, r10
	bl  FUN_ov16_02114204
_0211AB50:
	add r7, r7, #1
_0211AB54:
	cmp r7, #0x10
	blt _0211AB34
	sub r8, r8, #1
_0211AB60:
	cmp r8, #0
	bge _0211AB28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB6C: .word 0x00007FFF
_0211AB70: .word 0x02099F38
_0211AB74: .word 0x00004210
	arm_func_end FUN_ov20_0211aab0

	arm_func_start FUN_ov20_0211ab78
FUN_ov20_0211ab78: ; 0x0211AB78
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldrsh r0, [sp, #0x18]
	ldr r4, _0211ABC0 ; =0x02099F38
	mov r6, r1
	str r0, [sp]
	ldr r0, [r4]
	mov r5, r2
	bl  FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x1c]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211ABC0: .word 0x02099F38
	arm_func_end FUN_ov20_0211ab78

	arm_func_start FUN_ov20_0211abc4
FUN_ov20_0211abc4: ; 0x0211ABC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r5, #0
	mov r9, r1
	str r5, [sp, #0xc]
	ldr r2, [r9]
	mov r10, r0
	str r2, [sp, #8]
	bl FUN_ov20_0211aa0c
	ldr r0, [r10, #0x14]
	mov r2, #4
	str r0, [r9, #0x1c]
	ldr r1, [r10, #0xac]
	mov r0, r10
	add r1, r1, #2
	str r1, [r9, #4]
	ldr r1, [r10, #0xac]
	mov r4, #0x28
	add r6, r1, #2
	mov r1, r9
	mov r3, r2
	str r6, [r9, #8]
	str r5, [r9, #0xa8]
	str r5, [r9, #0xac]
	str r4, [r9, #0xb0]
	bl FUN_ov20_0211c614
	add r8, sp, #0xc
	mov r7, #1
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r5
	str r7, [sp]
	bl FUN_ov20_0211c1b0
	ldr r3, [r10, #0x78]
	mov r6, r0
	ldr r4, _0211B368 ; =0x02099F38
	mov r1, r6
	ldr r0, [r4]
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl  FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #0x258
	bl  FUN_ov16_021139bc
	ldr r1, [r10, #0xac]
	mov r2, r8
	add r1, r1, #5
	str r1, [sp]
	mov r0, r10
	mov r1, r9
	mov r3, r5
	bl FUN_ov20_0211c1b0
	mov r6, r0
	ldr r2, [r9, #0xb0]
	ldr r0, [r4]
	mov r2, r2, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r6
	mov r2, #8
	mov r3, r5
	bl  FUN_ov16_02114248
	ldr r3, [r10, #0x58]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r7
	bl  FUN_ov16_0211401c
	add r7, r7, #1
	mov r8, #0x10
	mov r11, r5
	b _0211AD9C
_0211AD40:
	ldr r3, [r10, #0x58]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #2
	bl  FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r11
	bl  FUN_ov16_02113b78
	add r0, r8, #0x10
	mov r0, r0, lsl #0x10
	add r7, r7, #1
	mov r8, r0, asr #0x10
	add r5, r5, #1
_0211AD9C:
	ldr r0, [r10, #0xac]
	cmp r5, r0
	blt _0211AD40
	ldr r4, _0211B368 ; =0x02099F38
	ldr r3, [r10, #0x68]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #1
	bl  FUN_ov16_0211401c
	str r8, [sp]
	mov r11, #4
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r11
	bl  FUN_ov16_02113b78
	add r0, r8, #0x10
	mov r0, r0, lsl #0x10
	ldr r3, [r10, #0x68]
	mov r8, r0, asr #0x10
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r3, #1
	mov r1, r6
	add r2, r7, #1
	bl  FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, r11
	bl  FUN_ov16_02113b78
	add r0, r8, #0x10
	mov r0, r0, lsl #0x10
	ldr r3, [r10, #0x58]
	mov r8, r0, asr #0x10
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, #3
	bl  FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, r5
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0x7c]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	mov r8, #8
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	mov r3, r8
	bl  FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r5
	add r2, r7, #3
	bl  FUN_ov16_02113d88
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	mov r3, #0x20
	bl  FUN_ov16_02113d08
	mov r0, #3
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0xc
	mov r3, r5
	bl FUN_ov20_0211c1b0
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	ldr r2, _0211B36C ; =0x0000024E
	mov r1, r6
	mov r7, r5
	bl  FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #0x58
	bl  FUN_ov16_02114248
	mov r8, #2
	mov r11, #1
	mov r5, #0xc0
	b _0211AF9C
_0211AF68:
	ldr r3, [r10, #0x50]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_02113b78
	add r8, r8, #1
_0211AF9C:
	cmp r8, #3
	ble _0211AF68
	ldr r4, _0211B368 ; =0x02099F38
	ldr r3, [r10, #0x70]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r11
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r11
	mov r3, #0xb8
	bl  FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r4]
	mov r2, r11
	mov r3, r7
	mov r1, r6
	bl  FUN_ov16_0211401c
	ldr r0, [r10, #0xb0]
	cmp r0, #0xa
	blt _0211B034
	mov r0, #0x10
	str r0, [sp]
	ldr r1, [r10, #0xb0]
	ldr r2, _0211B370 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #2
	and r4, r3, #0xff
	mov r0, r10
	mov r1, r6
	mov r2, #2
	mov r3, #0xe8
	str r4, [sp, #4]
	bl FUN_ov20_0211ab78
_0211B034:
	mov r0, #0x10
	str r0, [sp]
	ldr r3, [r10, #0xb0]
	ldr r2, _0211B370 ; =0x66666667
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r4
	sub r4, r3, r0
	and r4, r4, #0xff
	mov r0, r10
	mov r1, r6
	mov r2, #3
	mov r3, #0xf0
	str r4, [sp, #4]
	ldr r5, _0211B368 ; =0x02099F38
	bl FUN_ov20_0211ab78
	mov r4, #1
	add r2, sp, #0xc
	mov r0, r10
	mov r1, r9
	mov r3, #0
	str r4, [sp]
	bl FUN_ov20_0211c1b0
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, #0x244
	bl  FUN_ov16_021139bc
	ldr r3, [r10, #0x74]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	ldr r0, [r10, #0xb0]
	cmp r0, #0x3c
	blt _0211B0F8
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, #0xb8
	b _0211B110
_0211B0F8:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, #0x100
_0211B110:
	bl  FUN_ov16_02113b78
	mov r5, #0
	ldr r7, _0211B368 ; =0x02099F38
	str r5, [sp]
	mov r4, #1
	ldr r0, [r7]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_0211401c
	add r8, sp, #0xc
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r5
	str r4, [sp]
	bl FUN_ov20_0211c1b0
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7]
	mov r1, r6
	mov r2, r4
	mov r3, #0x230
	bl  FUN_ov16_021139bc
	ldr r1, [r10, #0x54]
	ldr r0, [r7]
	and r3, r1, #0xff
	mov r1, r6
	mov r2, r4
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r4
	mov r3, #0xa0
	bl  FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_0211401c
	mov r11, #2
	mov r2, r8
	mov r0, r10
	mov r1, r9
	mov r3, r5
	str r11, [sp]
	bl FUN_ov20_0211c1b0
	movs r8, r0
	addeq sp, sp, #0x10
	str r8, [r10, #0x3c0]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r10, #0x44]
	ldrb r6, [r10, #0x3be]
	ldr r0, [r7]
	mov r1, r8
	mov r2, r4
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r10, #0x3c0]
	mov r3, r6
	mov r2, r4
	bl  FUN_ov16_0211401c
	str r5, [sp]
	mov r6, #0xd8
	ldr r0, [r7]
	ldr r1, [r10, #0x3c0]
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_02113b78
	add r6, r6, #0xea
	ldr r0, [r7]
	ldr r1, [r10, #0x3c0]
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_021139bc
	str r4, [sp]
	ldr r0, [r7]
	ldr r1, [r10, #0x3c0]
	mov r3, r11
	mov r2, r4
	bl  FUN_ov16_02113ec0
	stmia sp, {r4, r6}
	ldr r0, _0211B374 ; =0x02099EB4
	mov r3, r8
	ldr r0, [r0]
	mov r1, r4
	mov r2, #0xe
	bl  FUN_ov16_0210fc74
	cmp r0, #0
	beq _0211B2B4
	strb r5, [r0, #0x10]
	strb r5, [r0, #0xf]
	strh r5, [r0, #0xc]
	mov r1, #0xa0
	mov r2, r5
	strb r5, [r0, #0x11]
	mov r4, #0x10
	mov r3, #0x60
	str r4, [sp]
	bl  FUN_ov16_0210e674
_0211B2B4:
	mov r6, #0x10
	add r11, sp, #0xc
	mov r5, #0
	mov r8, #8
	mov r7, #0x6c
	mov r4, #0xa
	b _0211B308
_0211B2D0:
	add r1, r9, r5, lsl #3
	mov r0, r5, lsl #4
	strh r8, [r1, #0x6e]
	add r0, r0, #0x10
	strh r0, [r1, #0x70]
	strh r7, [r1, #0x72]
	strh r6, [r1, #0x74]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	str r4, [sp]
	bl FUN_ov20_0211c234
	add r5, r5, #1
_0211B308:
	ldr r0, [r9, #8]
	cmp r5, r0
	blt _0211B2D0
	add r2, sp, #0xc
	mov r0, r10
	mov r1, r9
	mov r3, #3
	bl FUN_ov20_0211c4b4
	ldr r0, [r10, #0x32c]
	cmp r0, #0
	strge r0, [r9, #0xc]
	ldrge r0, [r10, #0x328]
	strge r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, r9
	bl  FUN_ov16_020f52f4
	mov r0, r10
	mov r1, r9
	mov r2, #0
	bl FUN_ov20_0211b6cc
	mov r0, r10
	bl FUN_ov20_0211b710
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B368: .word 0x02099F38
_0211B36C: .word 0x0000024E
_0211B370: .word 0x66666667
_0211B374: .word 0x02099EB4
	arm_func_end FUN_ov20_0211abc4

	arm_func_start FUN_ov20_0211b378
FUN_ov20_0211b378: ; 0x0211B378
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldrb r0, [r6, #0x3bd]
	ldr r1, [r6, #0x3c0]
	mov r4, #1
	add r0, r0, #1
	and r0, r0, #0xff
	strb r0, [r6, #0x3bd]
	cmp r0, #0xa
	mov r5, #0
	bge _0211B3F0
	ldr r0, _0211B440 ; =0x02099F38
	str r5, [sp]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_0211401c
	ldrb r0, [r6, #0x3be]
	cmp r0, #0
	streqb r4, [r6, #0x3be]
	beq _0211B3D8
	cmp r0, #1
	streqb r5, [r6, #0x3be]
_0211B3D8:
	ldrb r0, [r6, #0x3bf]
	add sp, sp, #4
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r6, #0x3bf]
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B3F0:
	cmp r0, #0xa
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldrb r0, [r6, #0x3be]
	strb r5, [r6, #0x3bc]
	strb r5, [r6, #0x3bd]
	strb r5, [r6, #0x3bf]
	cmp r0, #0
	beq _0211B41C
	cmp r0, #1
	moveq r5, r4
_0211B41C:
	mov r2, #0
	ldr r0, _0211B440 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B440: .word 0x02099F38
	arm_func_end FUN_ov20_0211b378

	arm_func_start FUN_ov20_0211b444
FUN_ov20_0211b444: ; 0x0211B444
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r9, r0
	mov r8, r1
	str r4, [sp, #4]
	ldr r11, [r8]
	bl FUN_ov20_0211aa0c
	ldr r1, [r9, #0x14]
	mov r0, #0x1e
	str r1, [r8, #0x1c]
	str r4, [r8, #0xa8]
	str r4, [r8, #0xac]
	str r0, [r8, #0xb0]
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _0211B498
	cmp r0, #2
	beq _0211B4B4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B498:
	mov r0, #2
	str r0, [r8, #4]
	str r0, [r8, #8]
	mov r4, #0x68
	mov r5, #0x20
	mov r6, #0x49
	b _0211B4CC
_0211B4B4:
	mov r0, #3
	str r0, [r8, #4]
	str r0, [r8, #8]
	mov r4, #0x38
	mov r5, #0x30
	mov r6, #0x79
_0211B4CC:
	mov r10, #0
	add r2, r5, #0x10
	mov r1, #0x10
	b _0211B4F8
_0211B4DC:
	add r3, r8, r10, lsl #3
	add r0, r2, r10, lsl #4
	strh r4, [r3, #0x6e]
	strh r0, [r3, #0x70]
	strh r6, [r3, #0x72]
	strh r1, [r3, #0x74]
	add r10, r10, #1
_0211B4F8:
	ldr r0, [r8, #8]
	cmp r10, r0
	blt _0211B4DC
	mov r0, r9
	mov r1, r8
	mov r2, #4
	mov r3, #3
	bl FUN_ov20_0211c614
	mov r3, #2
	str r3, [sp]
	add r2, sp, #4
	mov r0, r9
	mov r1, r8
	mov r3, #0
	bl FUN_ov20_0211c1b0
	ldr r2, [r8, #0xb0]
	mov r6, r0
	ldr r10, _0211B6C8 ; =0x02099F38
	mov r2, r2, lsl #0x10
	ldr r0, [r10]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r0, [r10]
	mov r2, r4
	mov r3, r5
	mov r1, r6
	bl  FUN_ov16_02114248
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _0211B580
	cmp r0, #2
	beq _0211B5A0
	b _0211B5BC
_0211B580:
	ldr r2, [r9, #0x5c]
	ldr r0, [r10]
	and r3, r2, #0xff
	mov r1, r6
	mov r2, #1
	bl  FUN_ov16_021137dc
	mov r7, #2
	b _0211B5BC
_0211B5A0:
	ldr r3, [r9, #0x60]
	mov r7, #1
	ldr r0, [r10]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
_0211B5BC:
	mov r10, #0
	ldr r4, _0211B6C8 ; =0x02099F38
	str r10, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r10
	mov r2, #1
	bl  FUN_ov16_0211401c
	ldr r1, [r9, #0x7c]
	mov r5, #2
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_021137dc
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #8
	bl  FUN_ov16_02113b78
	ldr r0, [r9, #0xe4]
	mov r1, r6
	add r0, r0, #1
	add r0, r0, r0, lsl #3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r10
	bl  FUN_ov16_02113d88
	mov r0, #8
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #0x40
	bl  FUN_ov16_02113d08
	mov r5, #0xa
	add r4, sp, #4
	b _0211B684
_0211B668:
	mov r0, r9
	mov r1, r8
	mov r2, r4
	mov r3, r10
	str r5, [sp]
	bl FUN_ov20_0211c234
	add r10, r10, #1
_0211B684:
	ldr r0, [r8, #8]
	cmp r10, r0
	blt _0211B668
	add r2, sp, #4
	mov r0, r9
	mov r1, r8
	mov r3, r7
	bl FUN_ov20_0211c4b4
	mov r0, r8
	mov r1, r11
	bl  FUN_ov16_020f52f4
	mov r0, r9
	mov r1, r8
	mov r2, #0
	bl FUN_ov20_0211b6cc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B6C8: .word 0x02099F38
	arm_func_end FUN_ov20_0211b444

	arm_func_start FUN_ov20_0211b6cc
FUN_ov20_0211b6cc: ; 0x0211B6CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov20_0211c8c0
	mov r0, r6
	mov r1, r5
	bl FUN_ov20_0211c7fc
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov20_0211d0ec
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov20_0211d2c0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov20_0211b6cc

	arm_func_start FUN_ov20_0211b710
FUN_ov20_0211b710: ; 0x0211B710
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r1, _0211B894 ; =0x0211E674
	mov r6, r0
	ldr r3, [r1]
	ldr r2, [r1, #4]
	ldr r1, [r6, #0xe4]
	ldr r0, [r6, #0xac]
	str r3, [sp]
	str r2, [sp, #4]
	cmp r1, r0
	mov r4, #0
	bge _0211B84C
	add r0, r6, r1, lsl #3
	ldrh r0, [r0, #0xb4]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	ldr r1, [r6, #0xe4]
	mov r5, r0
	add r0, r6, r1, lsl #3
	ldrb r1, [r0, #0xb8]
	ldr r2, [r6, #0x38c]
	ldr r0, _0211B898 ; =0x0209BA20
	sub r1, r1, #1
	ldrb r2, [r2, r1, lsl #2]
	mov r1, r5
	mov r3, r4
	bl FUN_0204ea4c
	cmp r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc94
	cmp r4, r0
	bne _0211B7C4
	mov r0, r5
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r5
	bl FUN_0206ccec
	cmp r4, r0
	beq _0211B7D8
_0211B7C4:
	ldr r1, [r6, #0xe4]
	ldr r0, _0211B898 ; =0x0209BA20
	add r1, r6, r1, lsl #3
	ldrh r1, [r1, #0xb4]
	bl FUN_0204eb2c
_0211B7D8:
	ldrb r3, [r6, #0x3be]
	mov r12, #0
	add r2, sp, #0
	add r0, r6, #0x300
	ldr r3, [r2, r3, lsl #2]
	ldrb r1, [r6, #0x3bf]
	sub r4, r12, #1
	mov r2, #1
	strh r12, [r0, #0x3c]
	strh r12, [r0, #0x3e]
	strh r12, [r0, #0x40]
	strh r4, [r0, #0x42]
	strb r2, [r6, #0x344]
	cmp r1, #1
	mov r0, r5
	strb r12, [r6, #0x345]
	str r12, [r6, #0x348]
	str r3, [r6, #0x338]
	streqb r12, [r6, #0x344]
	bl FUN_0206cbf8
	add r1, r6, #0x300
	strh r0, [r1, #0x3c]
	ldr r0, [r6, #4]
	add r1, r6, #0x338
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B84C:
	add r1, r6, #0x300
	sub r3, r4, #1
	mov r2, #1
	ldr r0, [r6, #4]
	strh r4, [r1, #0x3e]
	strh r4, [r1, #0x40]
	strh r3, [r1, #0x42]
	strh r4, [r1, #0x3c]
	strb r4, [r6, #0x345]
	str r4, [r6, #0x348]
	str r4, [r6, #0x338]
	strb r2, [r6, #0x344]
	ldr r2, [r0]
	add r1, r6, #0x338
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B894: .word 0x0211E674
_0211B898: .word 0x0209BA20
	arm_func_end FUN_ov20_0211b710

	arm_func_start FUN_ov20_0211b89c
FUN_ov20_0211b89c: ; 0x0211B89C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r0, _0211BAA8 ; =0x0209BA20
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	bl  FUN_ov16_020edfc0
	mov r11, #1
	add r6, sp, #0x10
	mov r1, #0
	mov r7, r0
	strb r1, [r6]
	strb r1, [r6, #1]
	strb r1, [r6, #2]
	strb r1, [r6, #3]
	strb r1, [r6, #4]
	strb r1, [r6, #5]
	ldr r9, _0211BAAC ; =0x000186A0
	mov r8, #5
	mov r5, r11
	ldr r4, _0211BAB0 ; =0x66666667
	b _0211B928
_0211B8F4:
	mov r0, r7
	mov r1, r9
	bl FUN_0201fbc8
	and r2, r0, #0xff
	mul r1, r2, r9
	mov r3, r9
	strb r0, [r6, r8]
	smull r2, r9, r4, r3
	mov r0, r3, lsr #0x1f
	adds r9, r0, r9, asr #2
	sub r7, r7, r1
	moveq r9, r5
	sub r8, r8, #1
_0211B928:
	cmp r8, #0
	bge _0211B8F4
	mov r8, #5
	add r1, sp, #0x10
	b _0211B954
_0211B93C:
	ldrb r0, [r1, r8]
	cmp r0, #0
	addne r0, r8, #1
	andne r11, r0, #0xff
	bne _0211B95C
	sub r8, r8, #1
_0211B954:
	cmp r8, #0
	bge _0211B93C
_0211B95C:
	ldr r6, [r10, #0x334]
	cmp r6, #0
	bne _0211BA1C
	mov r7, #0
	mov r4, #7
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r0, r10
	mov r3, r7
	str r4, [sp]
	bl FUN_ov20_0211c1b0
	mov r6, r0
	ldr r4, _0211BAB4 ; =0x02099F38
	str r6, [r10, #0x334]
	ldr r0, [r4]
	mov r1, r6
	mov r2, #0xa
	bl  FUN_ov16_02112b98
	ldr r1, [r10, #0x6c]
	mov r5, #1
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #0x90
	bl  FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r7
	mov r1, r6
	bl  FUN_ov16_0211401c
	mov r8, #2
	b _0211BA14
_0211B9F8:
	ldr r3, [r10, #0x50]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	add r8, r8, #1
_0211BA14:
	cmp r8, #7
	ble _0211B9F8
_0211BA1C:
	mov r8, #2
	mov r7, #0xc0
	mov r5, #0
	ldr r4, _0211BAB4 ; =0x02099F38
	b _0211BA4C
_0211BA30:
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl  FUN_ov16_02113b78
	add r8, r8, #1
_0211BA4C:
	cmp r8, #7
	ble _0211BA30
	sub r8, r11, #1
	rsb r9, r11, #6
	mov r5, #0
	add r4, sp, #0x10
	b _0211BA98
_0211BA68:
	mov r0, r9, lsl #3
	add r0, r0, #0xc0
	mov r3, r0, lsl #0x10
	ldrb r7, [r4, r8]
	mov r0, r10
	mov r1, r6
	add r2, r9, #2
	mov r3, r3, asr #0x10
	stmia sp, {r5, r7}
	bl FUN_ov20_0211ab78
	sub r8, r8, #1
	add r9, r9, #1
_0211BA98:
	cmp r8, #0
	bge _0211BA68
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BAA8: .word 0x0209BA20
_0211BAAC: .word 0x000186A0
_0211BAB0: .word 0x66666667
_0211BAB4: .word 0x02099F38
	arm_func_end FUN_ov20_0211b89c

	arm_func_start FUN_ov20_0211bab8
FUN_ov20_0211bab8: ; 0x0211BAB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r2, _0211C1A4 ; =0x0211E670
	mov r10, r0
	ldrh r3, [r2]
	ldrh r2, [r2, #2]
	mov r4, r1
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	bl FUN_ov20_0211aa0c
	ldr r2, [r10, #0x14]
	mov r6, #1
	mov r9, #0
	mov r8, #0x14
	mov r11, #4
	str r2, [r4, #0x1c]
	mov r0, r10
	mov r1, r4
	mov r2, #5
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r9, [r4, #0xa8]
	str r9, [r4, #0xac]
	str r8, [r4, #0xb0]
	mov r3, r11
	str r9, [sp, #8]
	bl FUN_ov20_0211c614
	mov r0, r10
	mov r1, r4
	bl FUN_ov20_0211c9e8
	mov r0, #0xa
	str r0, [sp]
	mov r0, r10
	mov r1, r4
	add r2, sp, #8
	mov r3, r9
	bl FUN_ov20_0211c1b0
	movs r7, r0
	beq _0211BF30
	ldr r0, [r4, #0xb0]
	ldr r5, _0211C1A8 ; =0x02099F38
	mov r2, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r7
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r0, [r5]
	mov r1, r7
	mov r2, r9
	mov r3, r9
	bl  FUN_ov16_02114248
	ldr r3, [r10, #0x64]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r5]
	mov r2, r6
	mov r1, r7
	mov r3, r9
	bl  FUN_ov16_0211401c
	ldr r3, [r10, #0x7c]
	mov r6, #2
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, #8
	bl  FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, r9
	bl  FUN_ov16_02113d88
	mov r0, #8
	str r0, [sp]
	ldr r0, [r5]
	mov r2, r6
	mov r1, r7
	mov r3, #0x20
	bl  FUN_ov16_02113d08
	ldr r3, [r4, #0x60]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #3
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #3
	mov r3, r9
	bl  FUN_ov16_02113d88
	mov r6, #0xd
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #3
	mov r3, #0x80
	bl  FUN_ov16_02113d08
	str r8, [sp]
	mov r8, #0x54
	ldr r0, [r5]
	mov r2, #3
	mov r1, r7
	mov r3, r8
	bl  FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r11
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r11
	mov r3, r9
	bl  FUN_ov16_02113d88
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r11
	mov r3, #0x90
	bl  FUN_ov16_02113d08
	mov r0, #0x1f
	str r0, [sp]
	ldr r0, [r5]
	mov r2, r11
	mov r1, r7
	mov r3, r8
	bl  FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #5
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x1a
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #5
	mov r3, r9
	bl  FUN_ov16_02113d88
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #5
	mov r3, #0x80
	bl  FUN_ov16_02113d08
	mov r0, #0x31
	str r0, [sp]
	ldr r0, [r5]
	mov r2, #5
	mov r1, r7
	mov r3, r8
	bl  FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	mov r11, #6
	ldr r0, [r5]
	mov r1, r7
	mov r2, r11
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x27
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r11
	mov r3, r9
	bl  FUN_ov16_02113d88
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r11
	mov r3, #0x80
	bl  FUN_ov16_02113d08
	mov r0, #0x3f
	str r0, [sp]
	ldr r0, [r5]
	mov r2, r11
	mov r3, r8
	mov r1, r7
	bl  FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	mov r8, #7
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x34
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_02113d88
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, #0x80
	bl  FUN_ov16_02113d08
	mov r0, #0x60
	mov r2, r8
	str r0, [sp]
	mov r8, #0x1e
	ldr r0, [r5]
	mov r1, r7
	mov r3, r8
	bl  FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x41
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #8
	mov r3, r9
	bl  FUN_ov16_02113d88
	str r6, [sp]
	ldr r0, [r5]
	mov r3, #0x80
	mov r1, r7
	mov r2, #8
	bl  FUN_ov16_02113d08
	mov r0, #0x6c
	str r0, [sp]
	ldr r0, [r5]
	mov r2, #8
	mov r3, r8
	mov r1, r7
	bl  FUN_ov16_02113b78
	ldr r3, [r10, #0x84]
	mov r8, #9
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r6, #0x18
	str r6, [sp]
	mov r11, #0x10
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r11
	bl  FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r5]
	mov r2, r8
	mov r1, r7
	mov r3, r9
	bl  FUN_ov16_0211401c
	ldr r3, [r10, #0x88]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xa
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r5]
	mov r3, r11
	mov r1, r7
	mov r2, #0xa
	bl  FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xa
	mov r3, r9
	bl  FUN_ov16_0211401c
_0211BF30:
	add r5, sp, #8
	mov r0, r10
	mov r1, r4
	mov r2, r5
	bl FUN_ov20_0211b89c
	mov r7, #0
	mov r8, #1
	mov r0, r10
	mov r1, r4
	mov r2, r5
	mov r3, r7
	str r8, [sp]
	bl FUN_ov20_0211c1b0
	movs r5, r0
	beq _0211BFF0
	ldr r0, [r4, #0xb0]
	ldr r6, _0211C1A8 ; =0x02099F38
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r3, [r10, #0x3c]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r8
	mov r3, #0x88
	bl  FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0211401c
	ldr r0, [r6]
	mov r1, r5
	mov r2, #2
	mov r3, r8
	bl  FUN_ov16_021142fc
	str r5, [r10, #0x98]
_0211BFF0:
	add r2, sp, #8
	mov r0, r10
	mov r1, r4
	mov r3, r7
	str r8, [sp]
	bl FUN_ov20_0211c1b0
	movs r5, r0
	beq _0211C094
	ldr r0, [r4, #0xb0]
	ldr r6, _0211C1A8 ; =0x02099F38
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_02112b98
	ldr r3, [r10, #0x40]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r8
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r8
	mov r3, #0xc8
	bl  FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0211401c
	ldr r0, [r6]
	mov r1, r5
	mov r2, #2
	mov r3, r8
	bl  FUN_ov16_021142fc
	str r5, [r10, #0x9c]
_0211C094:
	mov r9, #1
	mov r0, r10
	mov r1, r9
	mov r2, r7
	bl FUN_ov20_0211d318
	ldr r0, [r4, #8]
	mov r1, #0xc0
	sub r0, r0, #1
	add r0, r4, r0, lsl #3
	strh r7, [r0, #0x6e]
	ldr r0, [r4, #8]
	add r2, sp, #8
	sub r0, r0, #1
	add r0, r4, r0, lsl #3
	strh r1, [r0, #0x70]
	ldr r1, [r4, #8]
	mov r0, r10
	sub r1, r1, #1
	add r1, r4, r1, lsl #3
	strh r7, [r1, #0x72]
	ldr r3, [r4, #8]
	mov r1, r4
	sub r3, r3, #1
	add r4, r4, r3, lsl #3
	strh r7, [r4, #0x74]
	mov r4, #0xa
	mov r3, r7
	str r4, [sp]
	bl FUN_ov20_0211c234
	mov r6, r4
	add r5, sp, #4
	ldr r11, _0211C1AC ; =0x02099EB4
	b _0211C194
_0211C118:
	mov r0, r9, lsl #1
	str r6, [sp]
	add r1, r10, r9, lsl #2
	ldrh r2, [r5, r0]
	ldr r3, [r1, #0x98]
	ldr r0, [r11]
	mov r1, #3
	bl  FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211C190
	mov r1, r7
	mov r2, r8
	mov r3, r7
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r7
	add r0, r4, #0x3a
	mov r2, r7
	mov r3, r7
	bl  FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r7
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r7
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0210e720
_0211C190:
	sub r9, r9, #1
_0211C194:
	cmp r9, #0
	bge _0211C118
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C1A4: .word 0x0211E670
_0211C1A8: .word 0x02099F38
_0211C1AC: .word 0x02099EB4
	arm_func_end FUN_ov20_0211bab8

	arm_func_start FUN_ov20_0211c1b0
FUN_ov20_0211c1b0: ; 0x0211C1B0
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
	ldr r0, _0211C230 ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x66]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x65]
	ldr r1, [r5]
	add r2, r6, #0x66
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211C230: .word 0x02099F38
	arm_func_end FUN_ov20_0211c1b0

	arm_func_start FUN_ov20_0211c234
FUN_ov20_0211c234: ; 0x0211C234
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, r1
	mov r4, r2
	mov r8, r3
	bl FUN_ov20_0211c7e8
	mov r11, #3
	cmp r0, #0
	mov r7, #0x1b
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, #1
	str r11, [sp]
	moveq r7, #9
	bl FUN_ov20_0211c1b0
	ldr r1, [r9, #0xb0]
	mov r5, r0
	sub r0, r1, #2
	mov r1, r0, lsl #0x10
	ldr r4, _0211C4A8 ; =0x02099F38
	mov r2, r1, lsr #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r3, #1
	bl  FUN_ov16_02112c90
	add r3, r9, r8, lsl #3
	ldrsh r2, [r3, #0x6e]
	ldrsh r3, [r3, #0x70]
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_02114248
	ldr r3, [r10, #0x4c]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, r6
	bl  FUN_ov16_02113b78
	ldr r0, [r10, #0x14]
	cmp r0, #0
	beq _0211C30C
	cmp r0, #1
	beq _0211C314
	cmp r0, #2
	moveq r6, #1
	b _0211C318
_0211C30C:
	mov r6, r11
	b _0211C318
_0211C314:
	mov r6, #2
_0211C318:
	mov r11, #0
	ldr r4, _0211C4A8 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, r6
	bl  FUN_ov16_0211401c
	mov r6, #2
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, r6
	bl  FUN_ov16_02113f7c
	ldr r3, [r9, #0x60]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0xd
	mul r0, r8, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_02113d88
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #0x80
	bl  FUN_ov16_02113d08
	mov r0, r7, lsl #0x10
	str r6, [sp]
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	mov r2, r6
	mov r1, r5
	bl  FUN_ov16_02113b78
	mov r0, #1
	rsb r2, r0, #0x8000
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_02112e5c
	add r1, r10, r8, lsl #3
	ldrh r1, [r1, #0xb4]
	mov r0, r10
	bl FUN_ov20_0211a690
	mov r3, r0
	mov r6, #3
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_021137dc
	sub r0, r6, #0xb
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_02113b78
	ldr r3, [r9, #0xb0]
	ldr r0, [r4]
	sub r3, r3, #2
	mov r3, r3, lsl #0x10
	mov r1, r5
	mov r2, r6
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	add r3, r9, r8, lsl #3
	mov r1, r6
	ldrsh r6, [r3, #0x70]
	ldr r4, [sp, #0x38]
	ldr r0, _0211C4AC ; =0x02099EB4
	str r6, [sp]
	ldrsh r6, [r3, #0x72]
	str r6, [sp, #4]
	ldrsh r6, [r3, #0x74]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	ldrsh r3, [r3, #0x6e]
	ldr r0, [r0]
	bl  FUN_ov16_0210fba4
	strh r5, [r0, #0x34]
	strb r11, [r0, #0x38]
	str r11, [r0, #0x1c]
	str r11, [r0, #0x20]
	ldr r1, _0211C4B0 ; =0x0210FB1C
	str r11, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C4A8: .word 0x02099F38
_0211C4AC: .word 0x02099EB4
_0211C4B0: .word 0x0210FB1C
	arm_func_end FUN_ov20_0211c234

	arm_func_start FUN_ov20_0211c4b4
FUN_ov20_0211c4b4: ; 0x0211C4B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #2
	mov r6, #3
	mov r7, r3
	mov r8, r1
	mov r3, r6
	str r4, [sp]
	mov r9, r0
	bl FUN_ov20_0211c1b0
	ldr r1, [r8, #0xb0]
	mov r5, r0
	ldr r4, _0211C568 ; =0x02099F38
	sub r0, r1, #4
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, lsr #0x10
	sub r3, r6, #4
	bl  FUN_ov16_02112c90
	ldr r1, [r9, #0x48]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r6, #1
	mov r2, r6
	bl  FUN_ov16_021137dc
	mov r3, r7
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_0211401c
	mov r1, r5
	mov r2, r6
	ldr r0, [r8, #0xac]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, [r8, #0xa8]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C568: .word 0x02099F38
	arm_func_end FUN_ov20_0211c4b4

	arm_func_start FUN_ov20_0211c56c
FUN_ov20_0211c56c: ; 0x0211C56C
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
	ldr r0, _0211C5B0 ; =0x02099EB4
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_0211C5B0: .word 0x02099EB4
	arm_func_end FUN_ov20_0211c56c

	arm_func_start FUN_ov20_0211c5b4
FUN_ov20_0211c5b4: ; 0x0211C5B4
	mov r2, #0xa
	str r2, [r0, #0x10]
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov20_0211c5b4

	arm_func_start FUN_ov20_0211c5c4
FUN_ov20_0211c5c4: ; 0x0211C5C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _0211C600
_0211C5DC: ; jump table
	b _0211C5EC ; case 0
	b _0211C5F0 ; case 1
	b _0211C5F0 ; case 2
	b _0211C5F0 ; case 3
_0211C5EC:
	b _0211C5F0
_0211C5F0:
	ldr r0, _0211C610 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl  FUN_ov16_0210ee78
_0211C600:
	mov r0, #6
	str r4, [r5, #0x14]
	str r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C610: .word 0x02099EB4
	arm_func_end FUN_ov20_0211c5c4

	arm_func_start FUN_ov20_0211c614
FUN_ov20_0211c614: ; 0x0211C614
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r6, r1
	str r5, [sp, #0x10]
	ldr r0, [r6, #0x60]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0211C6A4 ; =0x02099F38
	mov r1, r2
	ldr r0, [r4]
	mov r2, r3
	bl FUN_02059630
	mov r1, r0
	str r1, [r6, #0x60]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r1, [r6, #0x60]
	ldr r0, [r4]
	str r5, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl FUN_0205935c
	ldr r1, [r6, #0x60]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C6A4: .word 0x02099F38
	arm_func_end FUN_ov20_0211c614

	arm_func_start FUN_ov20_0211c6a8
FUN_ov20_0211c6a8: ; 0x0211C6A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x3c
	add r1, sp, #0x20
	mov r5, #0
	mov r8, r0
	str r5, [r1]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #0xc]
	str r5, [r1, #0x10]
	str r5, [r1, #0x14]
	str r5, [r1, #0x18]
	ldr r0, [r8, #0x7c]
	cmp r0, #0
	bne _0211C710
	ldr r4, _0211C7DC ; =0x02099F38
	mov r1, #4
	ldr r0, [r4]
	mov r2, #3
	bl FUN_02059630
	mov r1, r0
	str r1, [r8, #0x7c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211C710:
	ldr r4, _0211C7E0 ; =0x0211E67C
	add r3, sp, #0
	mov r7, #0
	mov r2, #0x10
_0211C720:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211C720
	ldr r1, [r8, #0x358]
	cmp r1, #0
	beq _0211C768
	ldr r0, [r8, #0xa8]
	add r4, sp, #0
	add r1, r1, r0, lsl #5
	mov r0, r4
	bl FUN_02014ee8
	mov r1, r7, lsl #2
	add r0, sp, #0x20
	add r7, r7, #1
	str r4, [r0, r1]
_0211C768:
	mov r6, #0
	mov r5, r6
	add r4, sp, #0x20
	ldr r9, _0211C7E4 ; =0x0211E728
	b _0211C7A8
_0211C77C:
	add r0, r8, r6, lsl #3
	ldrh r0, [r0, #0xb4]
	mov r1, r5
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	ldreq r1, [r9, #0x20]
	addne r0, r0, #0x1c
	streq r1, [r4, r7, lsl #2]
	strne r0, [r4, r7, lsl #2]
	add r7, r7, #1
	add r6, r6, #1
_0211C7A8:
	ldr r0, [r8, #0xac]
	cmp r6, r0
	blt _0211C77C
	ldr r0, _0211C7E4 ; =0x0211E728
	add r2, sp, #0x20
	ldr r1, [r0, #0x1c]
	mov r0, r8
	str r1, [r2, r7, lsl #2]
	ldr r1, [r8, #0x7c]
	mov r3, #7
	bl FUN_ov20_0211cf5c
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C7DC: .word 0x02099F38
_0211C7E0: .word 0x0211E67C
_0211C7E4: .word 0x0211E728
	arm_func_end FUN_ov20_0211c6a8

	arm_func_start FUN_ov20_0211c7e8
FUN_ov20_0211c7e8: ; 0x0211C7E8
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov20_0211c7e8

	arm_func_start FUN_ov20_0211c7fc
FUN_ov20_0211c7fc: ; 0x0211C7FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r6, #0
	mov r11, #1
	mov r5, #3
	ldr r4, _0211C8BC ; =0x02099F38
	b _0211C8AC
_0211C81C:
	ldrb r2, [r9, #0x67]
	mov r0, r10
	mov r1, r9
	add r2, r2, r6
	add r2, r9, r2, lsl #2
	mov r8, #0
	ldr r7, [r2, #0x20]
	bl FUN_ov20_0211c7e8
	cmp r0, #0
	ldrne r0, [r10, #0xac]
	mov r1, r7
	cmpne r6, r0
	movlt r8, #1
	str r8, [sp]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	cmp r8, #0
	beq _0211C8A8
	add r0, r10, r6, lsl #3
	ldrh r1, [r0, #0xb4]
	mov r0, r10
	bl FUN_ov20_0211a690
	mov r3, r0
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, #0
	bl  FUN_ov16_0211401c
_0211C8A8:
	add r6, r6, #1
_0211C8AC:
	ldr r0, [r9, #8]
	cmp r6, r0
	blt _0211C81C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C8BC: .word 0x02099F38
	arm_func_end FUN_ov20_0211c7fc

	arm_func_start FUN_ov20_0211c8c0
FUN_ov20_0211c8c0: ; 0x0211C8C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r2, #4
	add r5, sp, #0
	mov r7, #0
	mov r9, r0
	mov r3, r2
	str r7, [r5]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #0xc]
	str r7, [r5, #0x10]
	str r7, [r5, #0x14]
	str r7, [r5, #0x18]
	mov r8, r1
	bl FUN_ov20_0211c614
	ldr r0, [r9, #0x14]
	cmp r0, #0
	beq _0211C920
	cmp r0, #1
	beq _0211C98C
	cmp r0, #2
	beq _0211C9A8
	b _0211C9C0
_0211C920:
	ldr r0, [r9, #0xac]
	mov r6, r7
	cmp r0, #0
	ble _0211C96C
	ldr r10, _0211C9DC ; =0x0211E728
	mov r4, r7
_0211C938:
	add r0, r9, r6, lsl #3
	ldrh r0, [r0, #0xb4]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	ldreq r0, [r10, #8]
	add r6, r6, #1
	addne r0, r0, #0x1c
	str r0, [r5, r7, lsl #2]
	ldr r0, [r9, #0xac]
	add r7, r7, #1
	cmp r6, r0
	blt _0211C938
_0211C96C:
	ldr r0, _0211C9DC ; =0x0211E728
	add r2, sp, #0
	ldr r3, [r0, #0x2c]
	add r1, r7, #1
	str r3, [r2, r7, lsl #2]
	ldr r0, [r0, #0x30]
	str r0, [r2, r1, lsl #2]
	b _0211C9C0
_0211C98C:
	ldr r1, _0211C9E0 ; =0x0211E74C
_0211C990:
	ldr r0, [r1, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r7, #2
	blt _0211C990
	b _0211C9C0
_0211C9A8:
	ldr r1, _0211C9E4 ; =0x0211E75C
_0211C9AC:
	ldr r0, [r1, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r7, #3
	blt _0211C9AC
_0211C9C0:
	ldr r1, [r8, #0x60]
	add r2, sp, #0
	mov r0, r9
	mov r3, #7
	bl FUN_ov20_0211ce70
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C9DC: .word 0x0211E728
_0211C9E0: .word 0x0211E74C
_0211C9E4: .word 0x0211E75C
	arm_func_end FUN_ov20_0211c8c0

	arm_func_start FUN_ov20_0211c9e8
FUN_ov20_0211c9e8: ; 0x0211C9E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x268
	mov r7, r0
	add r2, sp, #0x48
	mov r10, r1
	mov r0, #8
	mov r6, #0
_0211CA04:
	strb r6, [r2]
	strb r6, [r2, #1]
	strb r6, [r2, #2]
	strb r6, [r2, #3]
	add r2, r2, #4
	subs r0, r0, #1
	bne _0211CA04
	add r1, sp, #0x1e8
	mov r0, #0x20
_0211CA28:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211CA28
	add r1, sp, #0x168
	mov r0, #0x20
_0211CA4C:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211CA4C
	add r1, sp, #0xe8
	mov r0, #0x20
_0211CA70:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211CA70
	add r1, sp, #0x68
	mov r0, #0x20
_0211CA94:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211CA94
	ldrh r0, [r7, #0xdc]
	add r2, sp, #0x30
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #0xc]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	ldr r4, [r7, #0x358]
	ldr r5, [r7, #0x34c]
	bl  FUN_ov16_020efa9c
	mov r9, r0
	add r8, sp, #0x48
	mov r2, r9
	mov r0, r8
	add r1, r9, #0x2c
	bl FUN_0204378c
	cmp r4, #0
	ldrneb r0, [r9, #0x4d]
	str r8, [sp, #0x30]
	str r9, [sp, #0x34]
	cmpne r0, #1
	beq _0211CB48
	add r4, r4, r0, lsl #5
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _0211CB80
	mov r5, #0x18
	add r0, sp, #0x1e8
	mov r1, r4
	mov r2, r5
	bl StrncpyWithNullPad
	add r0, sp, #0x168
	mov r2, r5
	add r1, r4, #0x18
	bl StrncpyWithNullPad
	b _0211CB80
_0211CB48:
	cmp r5, #0
	ldrneb r0, [r7, #0xde]
	cmpne r0, #0
	beq _0211CB80
	add r5, r5, r0, lsl #5
	mov r4, #0x18
	add r0, sp, #0x1e8
	mov r1, r5
	mov r2, r4
	bl StrncpyWithNullPad
	add r0, sp, #0x168
	mov r2, r4
	add r1, r5, #0x18
	bl StrncpyWithNullPad
_0211CB80:
	add r4, sp, #0xe8
	add r5, sp, #0x1e8
	add r3, sp, #0x168
	ldr r1, _0211CE34 ; =0x0211EAD8
	mov r0, r4
	mov r2, #0x20
	str r5, [sp, #0x38]
	str r3, [sp, #0x3c]
	bl StrncpyWithNullPad
	ldr r0, [r7, #0xe4]
	ldr r3, [r7, #0x38c]
	add r0, r7, r0, lsl #3
	ldrb r2, [r0, #0xb8]
	ldr r0, _0211CE38 ; =0x4F8B588F
	str r4, [sp, #0x40]
	sub r2, r2, #1
	add r2, r3, r2, lsl #2
	ldrh r5, [r2, #2]
	ldr r1, _0211CE3C ; =0x000186A0
	ldr r2, _0211CE40 ; =0xD1B71759
	umull r0, r9, r5, r0
	sub r0, r5, r9
	add r9, r9, r0, lsr #1
	mov r9, r9, lsr #0x10
	ands r0, r9, #0xff
	mul r1, r0, r1
	sub r5, r5, r1
	umull r0, r8, r5, r2
	mov r8, r8, lsr #0xd
	ldr r3, _0211CE44 ; =0x00002710
	and r7, r8, #0xff
	mul r0, r7, r3
	ldr r1, _0211CE48 ; =0x10624DD3
	sub r0, r5, r0
	umull r1, r5, r0, r1
	mov r5, r5, lsr #6
	and r2, r5, #0xff
	mov r1, #0x3e8
	mul r3, r2, r1
	ldr r1, _0211CE4C ; =0x51EB851F
	sub r3, r0, r3
	umull r0, r1, r3, r1
	mov r1, r1, lsr #5
	and r0, r1, #0xff
	strb r1, [sp, #0x2a]
	mov r4, #0x64
	strb r5, [sp, #0x2b]
	smulbb r5, r0, r4
	ldr r4, _0211CE50 ; =0xCCCCCCCD
	sub r5, r3, r5
	umull r3, r4, r5, r4
	mov r4, r4, lsr #3
	and r3, r4, #0xff
	mov r1, #0xa
	smulbb r1, r3, r1
	strb r4, [sp, #0x29]
	sub r1, r5, r1
	mov r4, #1
	strb r9, [sp, #0x2d]
	strb r8, [sp, #0x2c]
	strb r1, [sp, #0x28]
	movne r4, #6
	bne _0211CCA8
	cmp r7, #0
	movne r4, #5
	bne _0211CCA8
	cmp r2, #0
	movne r4, #4
	bne _0211CCA8
	cmp r0, #0
	movne r4, #3
	bne _0211CCA8
	cmp r3, #0
	movne r4, #2
_0211CCA8:
	mov r9, #0
	rsb r5, r4, #6
	add r8, sp, #0x68
	ldr r7, _0211CE54 ; =0x0211EAEC
	b _0211CCCC
_0211CCBC:
	mov r0, r8
	mov r1, r7
	bl FUN_02014ee8
	add r9, r9, #1
_0211CCCC:
	cmp r9, r5
	blt _0211CCBC
	sub r5, r4, #1
	add r4, sp, #0x28
	add r9, sp, #0x68
	ldr r7, _0211CE58 ; =0x0211EAF0
	ldr r8, _0211CE5C ; =0x0211E768
	b _0211CD14
_0211CCEC:
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _0211CD04
	ldr r1, [r8, r0, lsl #2]
	mov r0, r9
	b _0211CD0C
_0211CD04:
	mov r0, r9
	mov r1, r7
_0211CD0C:
	bl FUN_02014ee8
	sub r5, r5, #1
_0211CD14:
	cmp r5, #0
	bge _0211CCEC
	add r5, sp, #0x68
	ldr r1, _0211CE60 ; =0x0211EAF4
	mov r0, r5
	bl FUN_02014ee8
	ldr r4, _0211CE64 ; =0x02099F38
	ldr r1, [r10, #0x60]
	mov r9, #0
	ldr r0, [r4]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r9, [sp, #0x20]
	str r5, [sp, #0x44]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r10, #0x60]
	ldr r8, [sp, #0x20]
	bl  FUN_ov16_02111458
	mov r7, r0
	ldr r0, [r4]
	ldr r1, [r10, #0x60]
	bl  FUN_ov16_02111438
	mov r4, #1
	add r5, sp, #0x30
	ldr r11, _0211CE68 ; =0x02099ED0
	b _0211CDF0
_0211CD80:
	ldr r0, [r5, r9, lsl #2]
	cmp r0, #0
	beq _0211CDEC
	cmp r9, #0
	beq _0211CDA4
	cmp r9, #1
	beq _0211CDAC
	cmp r9, #4
	bne _0211CDAC
_0211CDA4:
	ldr r0, [r11]
	b _0211CDB4
_0211CDAC:
	ldr r0, _0211CE6C ; =0x02099F50
	ldr r0, [r0]
_0211CDB4:
	mov r1, #0xd
	mul r1, r9, r1
	str r7, [sp]
	str r6, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r5, r9, lsl #2]
	mov r2, r8
	mov r3, #0x100
	str r6, [sp, #0x1c]
	bl FUN_020425fc
_0211CDEC:
	add r9, r9, #1
_0211CDF0:
	cmp r9, #6
	blt _0211CD80
	ldr r1, [sp, #0x24]
	mov r0, r8
	bl FUN_020026d0
	ldr r0, _0211CE64 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r10, #0x60]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r8
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x268
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CE34: .word 0x0211EAD8
_0211CE38: .word 0x4F8B588F
_0211CE3C: .word 0x000186A0
_0211CE40: .word 0xD1B71759
_0211CE44: .word 0x00002710
_0211CE48: .word 0x10624DD3
_0211CE4C: .word 0x51EB851F
_0211CE50: .word 0xCCCCCCCD
_0211CE54: .word 0x0211EAEC
_0211CE58: .word 0x0211EAF0
_0211CE5C: .word 0x0211E768
_0211CE60: .word 0x0211EAF4
_0211CE64: .word 0x02099F38
_0211CE68: .word 0x02099ED0
_0211CE6C: .word 0x02099F50
	arm_func_end FUN_ov20_0211c9e8

	arm_func_start FUN_ov20_0211ce70
FUN_ov20_0211ce70: ; 0x0211CE70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211CF54 ; =0x02099F38
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
	ldr r11, _0211CF58 ; =0x02099F50
	b _0211CF10
_0211CEC4:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _0211CF0C
	mov r0, #0xd
	mul r0, r7, r0
	str r8, [sp]
	str r5, [sp, #4]
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
_0211CF0C:
	add r7, r7, #1
_0211CF10:
	cmp r7, r9
	blt _0211CEC4
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl FUN_020026d0
	ldr r0, _0211CF54 ; =0x02099F38
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
_0211CF54: .word 0x02099F38
_0211CF58: .word 0x02099F50
	arm_func_end FUN_ov20_0211ce70

	arm_func_start FUN_ov20_0211cf5c
FUN_ov20_0211cf5c: ; 0x0211CF5C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211D03C ; =0x02099F38
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
	ldr r11, _0211D040 ; =0x02099ED0
	b _0211CFF8
_0211CFB0:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _0211CFF4
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
_0211CFF4:
	add r7, r7, #1
_0211CFF8:
	cmp r7, r9
	blt _0211CFB0
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl FUN_020026d0
	ldr r0, _0211D03C ; =0x02099F38
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
_0211D03C: .word 0x02099F38
_0211D040: .word 0x02099ED0
	arm_func_end FUN_ov20_0211cf5c

	arm_func_start FUN_ov20_0211d044
FUN_ov20_0211d044: ; 0x0211D044
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _0211D078
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _0211D080
_0211D078:
	mov r0, #0
	str r0, [sp, #0x28]
_0211D080:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x6b]
	ldr r0, _0211D0E4 ; =0x02099ED4
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl  FUN_ov16_0210e29c
	ldrb r1, [r4, #0x6b]
	ldr r0, _0211D0E8 ; =0x02099F38
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r3, #1
	bl  FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211D0E4: .word 0x02099ED4
_0211D0E8: .word 0x02099F38
	arm_func_end FUN_ov20_0211d044

	arm_func_start FUN_ov20_0211d0ec
FUN_ov20_0211d0ec: ; 0x0211D0EC
	stmfd sp!, {r3, lr}
	ldr r12, [r1, #0x10]
	cmp r12, #0
	blt _0211D108
	ldr r3, [r1, #8]
	cmp r12, r3
	ble _0211D134
_0211D108:
	ldrb r0, [r1, #0x6c]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r3, [r1, #0x6b]
	ldr r0, _0211D150 ; =0x02099F38
	mov r2, #2
	add r1, r1, r3, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	bl  FUN_ov16_02114370
	ldmfd sp!, {r3, pc}
_0211D134:
	str r2, [sp]
	ldr r2, [r1, #0x10]
	add r3, r1, r2, lsl #3
	ldrsh r2, [r3, #0x6e]
	ldrsh r3, [r3, #0x70]
	bl FUN_ov20_0211d044
	ldmfd sp!, {r3, pc}
_0211D150: .word 0x02099F38
	arm_func_end FUN_ov20_0211d0ec

	arm_func_start FUN_ov20_0211d154
FUN_ov20_0211d154: ; 0x0211D154
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r8, r1
	ldrb r0, [r8, #0x6a]
	mov r7, r2
	mov r6, r3
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8, #4]
	ldr r0, [r8, #8]
	mov r5, #2
	cmp r1, r0
	mov r4, #1
	bgt _0211D1F8
	ldrb r0, [r8, #0x69]
	ldr r6, _0211D2B4 ; =0x02099F38
	mov r2, r5
	add r1, r8, r0, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl  FUN_ov16_021142fc
	ldrb r1, [r8, #0x69]
	ldr r0, [r6]
	mov r2, r5
	add r1, r1, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl  FUN_ov16_021142fc
	ldrb r1, [r8, #0x69]
	ldr r0, [r6]
	mov r2, r5
	add r1, r1, #2
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl  FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D1F8:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r7}
	ldr r0, [sp, #0x38]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r8, #0x69]
	ldr r0, _0211D2B8 ; =0x02099ED4
	mov r2, r1
	add r3, r8, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl  FUN_ov16_0210e29c
	ldrb r0, [r8, #0x69]
	ldr r9, _0211D2B4 ; =0x02099F38
	mov r2, r5
	add r1, r8, r0, lsl #2
	ldr r0, [r9]
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl  FUN_ov16_021142fc
	ldrb r1, [r8, #0x69]
	ldr r0, [r9]
	mov r2, r5
	add r1, r1, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl  FUN_ov16_021142fc
	ldrb r1, [r8, #0x69]
	ldr r0, [r9]
	mov r2, r5
	add r1, r1, #2
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl  FUN_ov16_021142fc
	ldr r0, _0211D2BC ; =0x02099EB4
	mov r2, r7
	ldr r0, [r0]
	mov r3, r6
	mov r1, #0xb
	bl  FUN_ov16_0210fd0c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D2B4: .word 0x02099F38
_0211D2B8: .word 0x02099ED4
_0211D2BC: .word 0x02099EB4
	arm_func_end FUN_ov20_0211d154

	arm_func_start FUN_ov20_0211d2c0
FUN_ov20_0211d2c0: ; 0x0211D2C0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrsh r3, [r4, #0xba]
	ldr r1, [r4, #0xc]
	mov r5, r0
	mul r0, r3, r1
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	mov r6, r2
	sub r1, r3, r1
	bl FUN_0201f9bc
	str r6, [sp]
	mov r12, r0
	ldrsh r3, [r4, #0xb6]
	ldrsh r2, [r4, #0xb4]
	mov r0, r5
	mov r1, r4
	add r3, r3, r12
	bl FUN_ov20_0211d154
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov20_0211d2c0

	arm_func_start FUN_ov20_0211d318
FUN_ov20_0211d318: ; 0x0211D318
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211D368 ; =0x02099F38
	mov r7, r0
	mov r3, r1
	ldr r0, [r4]
	ldr r1, [r7, #0x98]
	mov r5, #2
	mov r6, r2
	mov r2, r5
	bl  FUN_ov16_021142fc
	ldr r0, [r4]
	ldr r1, [r7, #0x9c]
	mov r2, r5
	mov r3, r6
	bl  FUN_ov16_021142fc
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	str r0, [r7, #0x324]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D368: .word 0x02099F38
	arm_func_end FUN_ov20_0211d318

	arm_func_start FUN_ov20_0211d36c
FUN_ov20_0211d36c: ; 0x0211D36C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r6, r0
	cmp r4, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211D4AC ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r4, #1
	blt _0211D45C
	cmp r4, #8
	bgt _0211D45C
	ldr r0, [r6, #0x14]
	mov r5, #0
	cmp r0, #0
	movne r5, #1
	mov r0, #0xc0
	mla r2, r5, r0, r6
	mov r0, #0
	strb r0, [r2, #0x148]
	ldr r1, [r2, #0xe4]
	ldr r0, [r2, #0xf0]
	sub r4, r4, #1
	sub r0, r1, r0
	cmp r4, r0
	moveq r0, #1
	streqb r0, [r2, #0x148]
	beq _0211D41C
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0211D404
	ldr r0, [r2, #0xe8]
	sub r0, r0, #2
	cmp r1, r0
	bge _0211D404
	b _0211D410
_0211D404:
	ldr r0, [r6, #0x14]
	cmp r0, #1
	bne _0211D41C
_0211D410:
	ldr r0, _0211D4B0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211D41C:
	mov r7, #0xc0
	mul r2, r5, r7
	add r0, r6, r2
	ldr r1, [r0, #0xf0]
	add r0, r6, #0xe4
	add r0, r0, r2
	add r1, r4, r1
	bl  FUN_ov16_020f52f4
	add r0, r6, #0xe4
	mla r1, r5, r7, r0
	mov r0, r6
	mov r2, #6
	bl FUN_ov20_0211b6cc
	mov r0, r6
	bl FUN_ov20_0211b710
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D45C:
	cmp r4, #0xc
	bne _0211D484
	ldr r0, _0211D4B0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #1
	mov r2, #0
	bl FUN_ov20_0211d318
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D484:
	cmp r4, #0xd
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211D4B0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #0
	mov r2, #1
	bl FUN_ov20_0211d318
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D4AC: .word 0x02099EB4
_0211D4B0: .word 0x0209AC44
	arm_func_end FUN_ov20_0211d36c

	arm_func_start FUN_ov20_0211d4b4
FUN_ov20_0211d4b4: ; 0x0211D4B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D628 ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r4, #1
	blt _0211D5B4
	cmp r4, #8
	bgt _0211D5B4
	ldr r0, [r5, #0x14]
	sub r1, r4, #1
	cmp r0, #0
	mov r4, #0
	movne r4, #1
	mov r0, #0xc0
	mla r3, r4, r0, r5
	ldr r2, [r3, #0xe4]
	ldr r0, [r3, #0xf0]
	sub r0, r2, r0
	cmp r1, r0
	bne _0211D528
	ldrb r0, [r3, #0x148]
	cmp r0, #0
	bne _0211D554
_0211D528:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0211D554
	mov r6, #0xc0
	mul lr, r4, r6
	add r12, r5, lr
	ldr r0, [r12, #0xe8]
	ldr r3, [r12, #0xe4]
	sub r2, r0, #2
	cmp r3, r2
	blt _0211D580
_0211D554:
	mov r0, #0xc0
	mla r0, r4, r0, r5
	ldr r0, [r0, #0xe8]
	cmp r1, r0
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D628 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D580:
	cmp r1, r0
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r2, [r12, #0xf0]
	add r0, r5, #0xe4
	add r0, r0, lr
	add r1, r1, r2
	bl  FUN_ov16_020f52f4
	add r0, r5, #0xe4
	mla r1, r4, r6, r0
	mov r0, r5
	mov r2, #6
	bl FUN_ov20_0211b6cc
	ldmfd sp!, {r4, r5, r6, pc}
_0211D5B4:
	cmp r4, #0xc
	bne _0211D5D4
	ldr r0, _0211D628 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D5D4:
	cmp r4, #0xd
	bne _0211D5F4
	ldr r0, _0211D628 ; =0x02099EB4
	mov r1, #2
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D5F4:
	cmp r4, #0xe
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x14]
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #1
	ldr r0, _0211D62C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	strb r4, [r5, #0x3bc]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D628: .word 0x02099EB4
_0211D62C: .word 0x0209AC44
	arm_func_end FUN_ov20_0211d4b4

	arm_func_start FUN_ov20_0211d630
FUN_ov20_0211d630: ; 0x0211D630
	bx lr
	arm_func_end FUN_ov20_0211d630

	arm_func_start FUN_ov20_0211d634
FUN_ov20_0211d634: ; 0x0211D634
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, _0211D66C ; =0x0211E914
	add r0, r5, #0x394
	mov r4, r1
	str r2, [r5]
	bl FUN_0206c0d8
	mov r0, r5
	str r4, [r5, #4]
	bl FUN_ov20_0211e100
	mov r1, #0
	mov r0, r5
	str r1, [r5, #0x38c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D66C: .word 0x0211E914
	arm_func_end FUN_ov20_0211d634

	arm_func_start FUN_ov20_0211d670
FUN_ov20_0211d670: ; 0x0211D670
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r3, _0211DC8C ; =0x0209A0F4
	ldr r2, _0211DC90 ; =0x02099ED4
	ldrh r3, [r3]
	mov r8, r1
	mov r9, r0
	orr r0, r3, r8
	mov r1, r0, lsl #0x10
	ldr r0, [r2]
	ldr r4, _0211DC94 ; =0x02099EB4
	mov r7, r1, lsr #0x10
	mov r5, #8
	mov r10, #1
	mov r6, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211D6EC
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, r8
	strh r6, [r0, #0x38]
_0211D6EC:
	ldr r0, [r9, #0x10]
	cmp r0, #7
	ldreqb r0, [r9, #0x3bc]
	cmpeq r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211DC84
_0211D714: ; jump table
	b _0211D724 ; case 0
	b _0211D8E0 ; case 1
	b _0211D8E0 ; case 2
	b _0211DAB8 ; case 3
_0211D724:
	tst r8, #1
	beq _0211D850
	ldr r0, [r9, #0x390]
	cmp r0, #0
	addgt sp, sp, #4
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	add r1, r9, #0xe4
	bl FUN_ov20_0211c56c
	ldr r2, [r9, #0xf0]
	ldr r1, [r9, #0xe4]
	ldr r0, [r9, #0xac]
	str r2, [r9, #0x32c]
	str r1, [r9, #0x328]
	cmp r1, r0
	bge _0211D808
	add r0, r9, r1, lsl #3
	ldrh r1, [r0, #0xb4]
	ldr r0, _0211DC98 ; =0x00000FFF
	mov r2, r6
	and r0, r1, r0
	mov r1, r0, lsl #0x10
	ldr r0, _0211DC9C ; =0x0209A0AC
	mov r1, r1, lsr #0x10
	bl FUN_0206c7dc
	cmp r0, #0
	beq _0211D7A4
	ldr r0, _0211DCA0 ; =0x020A9C40
	mov r2, r6
	mov r1, #0xd4
	bl FUN_020460a8
	b _0211D8D0
_0211D7A4:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, [r9, #0x328]
	add r2, r9, #0xb4
	mov r1, r0, lsl #3
	ldrh r1, [r2, r1]
	add r4, r2, r0, lsl #3
	mov r0, r9
	strh r1, [r9, #0xdc]
	ldrb r2, [r4, #2]
	mov r1, r10
	strb r2, [r9, #0xde]
	ldrb r2, [r4, #3]
	strb r2, [r9, #0xdf]
	ldrb r2, [r4, #4]
	strb r2, [r9, #0xe0]
	ldrb r3, [r4, #5]
	ldrb r2, [r4, #6]
	strb r3, [r9, #0xe1]
	strb r2, [r9, #0xe2]
	ldrb r2, [r4, #7]
	strb r2, [r9, #0xe3]
_0211D800:
	bl FUN_ov20_0211c5c4
	b _0211D8D0
_0211D808:
	bne _0211D824
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #2
	b _0211D800
_0211D824:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, _0211DCA0 ; =0x020A9C40
	mov r2, r6
	mov r1, #0xca
	bl FUN_020460a8
	mov r0, r9
	mov r1, r6
	bl FUN_ov20_0211c5b4
	b _0211D8D0
_0211D850:
	tst r8, #2
	beq _0211D85C
	b _0211D824
_0211D85C:
	tst r8, #0x400
	beq _0211D878
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	strb r10, [r9, #0x3bc]
	b _0211D8D0
_0211D878:
	tst r7, #0x40
	beq _0211D898
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	add r0, r9, #0xe4
	sub r1, r5, #9
	b _0211D8B4
_0211D898:
	tst r7, #0x80
	beq _0211D8D0
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r9, #0xe4
	mov r1, #1
_0211D8B4:
	bl  FUN_ov16_020f53b0
	mov r0, r9
	add r1, r9, #0xe4
	mov r2, #6
	bl FUN_ov20_0211b6cc
	mov r0, #5
	str r0, [r9, #0x390]
_0211D8D0:
	mov r0, r9
	bl FUN_ov20_0211b710
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D8E0:
	tst r8, #1
	beq _0211DA1C
	mov r0, r9
	add r1, r9, #0x1a4
	bl FUN_ov20_0211c56c
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _0211D910
	cmp r0, #2
	beq _0211D974
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D910:
	ldr r0, [r9, #0x1a4]
	cmp r0, #0
	beq _0211D92C
	cmp r0, #1
	beq _0211D954
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D92C:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #3
	bl FUN_ov20_0211c5c4
	mov r0, r9
	bl FUN_ov20_0211a1b4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D954:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov20_0211c5c4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D974:
	ldr r0, [r9, #0x1a4]
	cmp r0, #0
	beq _0211D998
	cmp r0, #1
	beq _0211D9CC
	cmp r0, #2
	beq _0211D9FC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D998:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _0211DCA0 ; =0x020A9C40
	mov r1, #0xd0
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211DCA8 ; =0x02099F44
	ldr r0, [r0]
	bl  FUN_ov131_0213c5fc
	add sp, sp, #4
	str r5, [r9, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D9CC:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _0211DCA0 ; =0x020A9C40
	mov r2, r6
	mov r1, #0xd1
	bl FUN_020460a8
	mov r0, r9
	mov r1, r6
	bl FUN_ov20_0211c5b4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D9FC:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov20_0211c5c4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA1C:
	tst r8, #2
	beq _0211DA44
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov20_0211c5c4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA44:
	tst r7, #0x40
	beq _0211DA7C
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	add r0, r9, #0x1a4
	sub r1, r5, #9
	bl  FUN_ov16_020f53b0
	mov r0, r9
	add r1, r9, #0x1a4
	mov r2, #6
	bl FUN_ov20_0211b6cc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA7C:
	tst r7, #0x80
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r9, #0x1a4
	mov r1, #1
	bl  FUN_ov16_020f53b0
	mov r0, r9
	add r1, r9, #0x1a4
	mov r2, #6
	bl FUN_ov20_0211b6cc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DAB8:
	tst r8, #1
	beq _0211DBE4
	mov r0, r9
	add r1, r9, #0x264
	bl FUN_ov20_0211c56c
	ldr r0, [r9, #0x324]
	cmp r0, #0
	bne _0211DBB8
	ldr r5, _0211DCAC ; =0x0209BA20
	mov r0, r5
	bl  FUN_ov16_020edfc0
	ldr r2, [r9, #0xe4]
	ldr r1, [r9, #0x38c]
	add r2, r9, r2, lsl #3
	ldrb r2, [r2, #0xb8]
	mov r3, r0
	sub r0, r2, #1
	add r0, r1, r0, lsl #2
	ldrh r1, [r0, #2]
	cmp r1, r3
	bhi _0211DB88
	mov r0, r5
	sub r1, r3, r1
	bl  FUN_ov16_020edfd0
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldrh r1, [r9, #0xdc]
	ldr r5, _0211DC98 ; =0x00000FFF
	ldr r0, _0211DCA0 ; =0x020A9C40
	and r2, r1, r5
	mov r1, #0xce
	bl FUN_020460a8
	ldr r0, [r4]
	mov r1, #0xc
	bl  FUN_ov16_0210efac
	mov r0, r9
	add r1, r9, #0x264
	add r2, sp, #0
	str r6, [sp]
	bl FUN_ov20_0211b89c
	mov r0, r9
	bl FUN_ov20_0211e08c
	mov r1, r6
	mov r0, r9
	bl FUN_ov20_0211c5b4
	ldrh r1, [r9, #0xdc]
	ldr r0, _0211DCB0 ; =0x02099EA4
	add sp, sp, #4
	and r1, r1, r5
	strh r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DB88:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldr r0, _0211DCA0 ; =0x020A9C40
	mov r1, #0xd3
	mov r2, #0
	bl FUN_020460a8
	ldr r0, [r4]
	mov r1, #0xc
	bl  FUN_ov16_0210efac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DBB8:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r4]
	mov r1, #0xd
	bl  FUN_ov16_0210efac
	mov r0, r9
	mov r1, #1
	bl FUN_ov20_0211c5c4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DBE4:
	tst r8, #2
	beq _0211DC2C
	mov r0, r9
	mov r2, r10
	mov r1, #0
	str r10, [r9, #0x324]
	bl FUN_ov20_0211d318
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r4]
	mov r1, #0xd
	bl  FUN_ov16_0210efac
	mov r0, r9
	mov r1, r10
	bl FUN_ov20_0211c5c4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DC2C:
	tst r7, #0x20
	bne _0211DC40
	tst r7, #0x10
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DC40:
	ldr r0, _0211DCA4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x324]
	add r0, r0, #1
	ands r0, r0, #1
	str r0, [r9, #0x324]
	mov r0, r9
	bne _0211DC78
	mov r1, #1
	mov r2, #0
	bl FUN_ov20_0211d318
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DC78:
	mov r1, #0
	mov r2, #1
	bl FUN_ov20_0211d318
_0211DC84:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DC8C: .word 0x0209A0F4
_0211DC90: .word 0x02099ED4
_0211DC94: .word 0x02099EB4
_0211DC98: .word 0x00000FFF
_0211DC9C: .word 0x0209A0AC
_0211DCA0: .word 0x020A9C40
_0211DCA4: .word 0x0209AC44
_0211DCA8: .word 0x02099F44
_0211DCAC: .word 0x0209BA20
_0211DCB0: .word 0x02099EA4
	arm_func_end FUN_ov20_0211d670

	arm_func_start FUN_ov20_0211dcb4
FUN_ov20_0211dcb4: ; 0x0211DCB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211DD90 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r2]
	mov r7, r1
	mov r6, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r4, #0x10]
	cmpeq r0, #7
	ldreqb r0, [r4, #0x3bc]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0211DD94 ; =0x02099EB4
	mov r1, r7
	ldr r0, [r5]
	mov r2, r6
	bl  FUN_ov16_0210f20c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DD08: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211DD1C ; case 1
	b _0211DD34 ; case 2
	b _0211DD4C ; case 3
	b _0211DD68 ; case 4
_0211DD1C:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov20_0211d36c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DD34:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov20_0211d4b4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DD4C:
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl FUN_ov20_0211d630
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DD68:
	ldr r0, [r5]
	add r1, sp, #0
	bl  FUN_ov16_0210f48c
	ldr r0, [r5]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl FUN_ov20_0211d630
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DD90: .word 0x02099ED4
_0211DD94: .word 0x02099EB4
	arm_func_end FUN_ov20_0211dcb4

	arm_func_start FUN_ov20_0211dd98
FUN_ov20_0211dd98: ; 0x0211DD98
	stmfd sp!, {r4, lr}
	ldr r12, [r0, #0xac]
	mov r1, #0
	cmp r12, #0
	ble _0211DE3C
_0211DDAC:
	add r2, r0, r1, lsl #3
	ldrh r2, [r2, #0xb4]
	cmp r2, #0
	bne _0211DE2C
	add r3, r1, #1
	cmp r3, r12
	bge _0211DE2C
_0211DDC8:
	add r4, r0, r3, lsl #3
	ldrh r2, [r4, #0xb4]
	cmp r2, #0
	beq _0211DE20
	ldrh r3, [r4, #0xb4]
	add lr, r0, r1, lsl #3
	mov r2, #0
	strh r3, [lr, #0xb4]
	ldrb r3, [r4, #0xb6]
	strb r3, [lr, #0xb6]
	ldrb r3, [r4, #0xb7]
	strb r3, [lr, #0xb7]
	ldrb r3, [r4, #0xb8]
	strb r3, [lr, #0xb8]
	ldrb r12, [r4, #0xb9]
	ldrb r3, [r4, #0xba]
	strb r12, [lr, #0xb9]
	strb r3, [lr, #0xba]
	ldrb r3, [r4, #0xbb]
	strb r3, [lr, #0xbb]
	strh r2, [r4, #0xb4]
	b _0211DE2C
_0211DE20:
	add r3, r3, #1
	cmp r3, r12
	blt _0211DDC8
_0211DE2C:
	ldr r12, [r0, #0xac]
	add r1, r1, #1
	cmp r1, r12
	blt _0211DDAC
_0211DE3C:
	mov r2, #0
	mov r3, r2
	cmp r12, #0
	ble _0211DE68
_0211DE4C:
	add r1, r0, r3, lsl #3
	ldrh r1, [r1, #0xb4]
	add r3, r3, #1
	cmp r1, #0
	addne r2, r2, #1
	cmp r3, r12
	blt _0211DE4C
_0211DE68:
	str r2, [r0, #0xac]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov20_0211dd98

	arm_func_start FUN_ov20_0211de70
FUN_ov20_0211de70: ; 0x0211DE70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r6, _0211E014 ; =0x0209BA20
	mov r10, r0
	mov r1, #0
	mov r0, r6
	mov r4, r1
	bl FUN_0207249c
	mov r5, r0
	mov r0, r6
	mov r1, #1
	bl FUN_0207249c
	ldrh r1, [r5, #0x28]
	mov r7, r0
	ldr r0, _0211E018 ; =0x020A0640
	cmp r1, #0
	ldreqh r1, [r5, #0x26]
	strh r1, [r7, #0x28]
	ldrh r1, [r5, #0x30]
	strh r1, [r7, #0x30]
	ldrh r1, [r5, #0x32]
	strh r1, [r7, #0x32]
	ldrb r1, [r5, #0x2c]
	strb r1, [r7, #0x2c]
	ldrb r1, [r0, #0x624]
	str r1, [r10, #0xa8]
	ldrb r0, [r0, #0x625]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov20_0211e100
	ldr r5, _0211E01C ; =0x02099F44
	add r1, r10, #0xb4
	ldr r0, [r5]
	bl  FUN_ov131_0213c50c
	ands r6, r0, #0xff
	bne _0211DF3C
	ldr r0, [r5]
	ldr r3, [r10, #0xa8]
	add r1, r10, #0xb4
	mov r2, #5
	bl  FUN_ov131_0213bf70
	and r6, r0, #0xff
	ldr r0, [r5]
	mov r2, r6
	add r1, r10, #0xb4
	bl  FUN_ov131_0213c58c
_0211DF3C:
	str r6, [r10, #0xac]
	mov r8, #0
	add r5, r10, #0xb4
	mov r11, #1
	b _0211DFEC
_0211DF50:
	mov r3, r8, lsl #3
	ldrh r2, [r5, r3]
	add r1, r10, r8, lsl #3
	ldr r0, _0211E014 ; =0x0209BA20
	orr r2, r2, #0x8000
	strh r2, [r5, r3]
	stmia sp, {r4, r11}
	str r4, [sp, #8]
	ldrh r9, [r1, #0xb4]
	ldr r2, _0211E020 ; =0x00000FFF
	mov r1, r11
	and r2, r9, r2
	mov r2, r2, lsl #0x10
	mov r3, r4
	mov r2, r2, lsr #0x10
	bl FUN_0204c778
	cmp r0, #0
	addeq r1, r10, r8, lsl #3
	subeq r0, r6, #1
	streqh r4, [r1, #0xb4]
	andeq r6, r0, #0xff
	beq _0211DFE8
	add r0, r10, r8, lsl #3
	ldrh r0, [r0, #0xb4]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	movs r9, r0
	beq _0211DFE8
	bl FUN_0204fb60
	cmp r0, #1
	ldreqh r2, [r7, #0x32]
	ldr r0, _0211E014 ; =0x0209BA20
	mov r3, #1
	ldrneh r2, [r7, #0x30]
	mov r1, r9
	str r3, [sp]
	mov r3, r4
	bl  FUN_ov16_020eea8c
_0211DFE8:
	add r8, r8, #1
_0211DFEC:
	ldr r0, [r10, #0xac]
	cmp r8, r0
	blt _0211DF50
	cmp r0, r6
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov20_0211dd98
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E014: .word 0x0209BA20
_0211E018: .word 0x020A0640
_0211E01C: .word 0x02099F44
_0211E020: .word 0x00000FFF
	arm_func_end FUN_ov20_0211de70

	arm_func_start FUN_ov20_0211e024
FUN_ov20_0211e024: ; 0x0211E024
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, #0
	ldr r5, _0211E080 ; =0x0209BA20
	mov r4, #1
	ldr r8, _0211E084 ; =0x00000FFF
	b _0211E064
_0211E040:
	add r0, r7, r6, lsl #3
	ldrh r2, [r0, #0xb4]
	mov r0, r5
	mov r1, r4
	and r2, r2, r8
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_0204d3c0
	add r6, r6, #1
_0211E064:
	ldr r0, [r7, #0xac]
	cmp r6, r0
	blt _0211E040
	ldr r0, _0211E088 ; =0x020A0640
	mov r1, #0
	strb r1, [r0, #0x625]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E080: .word 0x0209BA20
_0211E084: .word 0x00000FFF
_0211E088: .word 0x020A0640
	arm_func_end FUN_ov20_0211e024

	arm_func_start FUN_ov20_0211e08c
FUN_ov20_0211e08c: ; 0x0211E08C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0xe4]
	mov r1, #1
	add r0, r4, r0, lsl #3
	ldrh r5, [r0, #0xb4]
	rsb r2, r1, #0x1000
	ldr r0, _0211E0FC ; =0x0209BA20
	and r2, r5, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_0204d3c0
	ldr r3, [r4, #0xac]
	mov r2, #0
	cmp r3, #0
	ble _0211E0F0
_0211E0CC:
	add r1, r4, r2, lsl #3
	ldrh r0, [r1, #0xb4]
	cmp r5, r0
	moveq r0, #0
	streqh r0, [r1, #0xb4]
	beq _0211E0F0
	add r2, r2, #1
	cmp r2, r3
	blt _0211E0CC
_0211E0F0:
	mov r0, r4
	bl FUN_ov20_0211dd98
	ldmfd sp!, {r3, r4, r5, pc}
_0211E0FC: .word 0x0209BA20
	arm_func_end FUN_ov20_0211e08c

	arm_func_start FUN_ov20_0211e100
FUN_ov20_0211e100: ; 0x0211E100
	mov r2, #0
	sub r1, r2, #1
	str r2, [r0, #0xac]
	str r1, [r0, #0x32c]
	str r1, [r0, #0x328]
	bx lr
	arm_func_end FUN_ov20_0211e100

	arm_func_start FUN_ov20_0211e118
FUN_ov20_0211e118: ; 0x0211E118
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211E28C ; =0x02099EB4
	str r1, [r4, #0x330]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211E290 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211E294 ; =0x0209BA20
	bl FUN_020724c8
	str r0, [r4, #0xb0]
	cmp r0, #0x63
	movgt r0, #0x63
	strgt r0, [r4, #0xb0]
	add r0, r4, #0x394
	bl  FUN_ov16_020efa04
	ldr r0, _0211E298 ; =0x0209A11C
	mov r1, #0x10
	ldr r0, [r0]
	bl FUN_0206c158
	mov r0, r4
	bl FUN_ov20_0211de70
	add r0, r4, #0xa0
	mov r1, #5
	bl  FUN_ov16_020f5278
	ldr r0, [r4, #4]
	bl FUN_0204204c
	mov r7, #0
	str r0, [r4, #8]
	add r0, r4, #0x34c
	mov r1, r7
	mov r2, #0x3c
	str r7, [r4, #0xc]
	str r7, [r4, #0x10]
	str r7, [r4, #0x14]
	bl MemWrite
	add r0, r4, #0x18
	mov r1, r7
	mov r2, #0x24
	bl MemWrite
	add r0, r4, #0x3c
	mov r1, r7
	mov r2, #0x40
	bl MemWrite
	mov r6, #8
	add r0, r4, #0x7c
	mov r1, r7
	mov r2, r6
	bl MemWrite
	mov r5, #4
	add r0, r4, #0x90
	mov r1, r7
	mov r2, r5
	bl MemWrite
	mov r2, r6
	add r0, r4, #0x98
	mov r1, r7
	bl MemWrite
	add r0, r4, #0x84
	mov r1, r7
	mov r2, #0xc
	bl MemWrite
	add r0, r4, #0xe4
	mov r1, r7
	mov r2, #0x240
	str r7, [r4, #0x94]
	bl MemWrite
	mov r2, r5
	add r0, r4, #0x3bc
	mov r1, r7
	bl MemWrite
	ldr r0, _0211E29C ; =0x02099F38
	str r7, [r4, #0x324]
	str r7, [r4, #0x3c0]
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldr r0, _0211E2A0 ; =0x020A9C40
	mov r1, #0xc8
	mov r2, r7
	bl FUN_020460a8
	str r7, [r4, #0x390]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E28C: .word 0x02099EB4
_0211E290: .word 0x02099ED4
_0211E294: .word 0x0209BA20
_0211E298: .word 0x0209A11C
_0211E29C: .word 0x02099F38
_0211E2A0: .word 0x020A9C40
	arm_func_end FUN_ov20_0211e118

	arm_func_start FUN_ov20_0211e2a4
FUN_ov20_0211e2a4: ; 0x0211E2A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0211E568
_0211E2BC: ; jump table
	b _0211E2EC ; case 0
	b _0211E300 ; case 1
	b _0211E340 ; case 2
	b _0211E374 ; case 3
	b _0211E384 ; case 4
	b _0211E490 ; case 5
	b _0211E3AC ; case 6
	b _0211E3FC ; case 7
	b _0211E42C ; case 8
	b _0211E448 ; case 9
	b _0211E49C ; case 10
	b _0211E4E0 ; case 11
_0211E2EC:
	bl FUN_ov20_02119f00
	mov r0, r4
	bl FUN_ov20_02119f3c
	mov r0, #1
	str r0, [r4, #0x10]
_0211E300:
	add r0, r4, #0x18
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211E568
	add r0, r4, #0x34c
	mov r1, #5
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211E568
	mov r0, r4
	bl FUN_ov20_0211a010
	mov r0, r4
	bl FUN_ov20_0211a608
	mov r0, #2
	str r0, [r4, #0x10]
_0211E340:
	mov r0, r4
	bl FUN_ov20_0211a6c8
	cmp r0, #0
	beq _0211E568
	add r0, r4, #0xa0
	bl  FUN_ov16_020f5868
	cmp r0, #0
	bne _0211E568
	mov r0, r4
	bl FUN_ov20_0211a870
	mov r0, #3
_0211E36C:
	str r0, [r4, #0x10]
	b _0211E568
_0211E374:
	mov r1, #0
	bl FUN_ov20_0211c5c4
	mov r0, r4
	bl FUN_ov20_0211c6a8
_0211E384:
	mov r0, r4
	bl FUN_ov20_0211a9f8
	cmp r0, #0
	beq _0211E3AC
	ldr r1, [r4, #0x14]
	mov r2, #5
	mov r0, r4
	str r2, [r4, #0x10]
	bl FUN_ov20_0211a8d4
	b _0211E568
_0211E3AC:
	ldr r0, _0211E594 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211E568
	mov r0, r4
	bl FUN_ov20_0211a718
	cmp r0, #0
	beq _0211E568
	ldr r1, [r4, #0x14]
	mov r0, r4
	bl FUN_ov20_0211a8d4
	mov r0, r4
	bl FUN_ov20_0211aab0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #7
	b _0211E36C
_0211E3FC:
	ldrb r1, [r4, #0x3bc]
	cmp r1, #0
	beq _0211E568
	bl FUN_ov20_0211b378
	ldrb r0, [r4, #0x3bf]
	cmp r0, #1
	bne _0211E568
	mov r0, r4
	bl FUN_ov20_0211b710
	mov r0, #2
	strb r0, [r4, #0x3bf]
	b _0211E568
_0211E42C:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	movne r0, #9
	strne r0, [r4, #0x10]
	b _0211E568
_0211E448:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211E568
	mov r0, r4
	bl FUN_ov20_0211e024
	mov r0, r4
	bl FUN_ov20_0211e100
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	b _0211E568
_0211E490:
	mov r1, #1
	bl FUN_ov20_0211c5c4
	b _0211E568
_0211E49C:
	ldr r0, _0211E594 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211E568
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211E568
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #0xb
	str r0, [r4, #0x10]
_0211E4E0:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211E504
	mov r0, #6
	bl  FUN_ov16_020f153c
	b _0211E568
_0211E504:
	ldr r0, [r4, #8]
	cmp r0, #0x88
	mov r0, r4
	bne _0211E540
	bl FUN_ov20_0211e024
	mov r0, r4
	bl FUN_ov20_0211e100
	ldr r0, [r4, #4]
	mov r1, #1
	bl FUN_02041f2c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x88
	bl FUN_02041eac
	b _0211E568
_0211E540:
	bl FUN_ov20_0211e024
	mov r0, r4
	bl FUN_ov20_0211e100
	ldr r5, [r4, #4]
	mov r1, #0
	mov r0, r5
	bl FUN_02041f2c
	mov r0, r5
	mov r1, #1
	bl FUN_02041f2c
_0211E568:
	ldr r0, _0211E598 ; =0x0209A110
	ldr r1, _0211E594 ; =0x02099ED4
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #1
	bl  FUN_ov16_0210e10c
	ldr r0, [r4, #0x390]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r4, #0x390]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E594: .word 0x02099ED4
_0211E598: .word 0x0209A110
	arm_func_end FUN_ov20_0211e2a4

	arm_func_start FUN_ov20_0211e59c
FUN_ov20_0211e59c: ; 0x0211E59C
	bx lr
	arm_func_end FUN_ov20_0211e59c

	arm_func_start FUN_ov20_0211e5a0
FUN_ov20_0211e5a0: ; 0x0211E5A0
	stmfd sp!, {r4, lr}
	ldr r1, _0211E620 ; =0x0209A11C
	mov r4, r0
	ldr r0, [r1]
	bl FUN_0206c270
	ldr r0, _0211E624 ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	mov r2, #0x4000000
	ldr r0, [r2]
	ldr r1, [r4, #0x330]
	bic r0, r0, #0x1f00
	orr r3, r0, r1, lsl #8
	mov r0, #2
	mov r1, #0x10
	str r3, [r2]
	bl  FUN_ov16_020f1aec
	ldr r0, _0211E628 ; =0x020A9C40
	mov r1, #0xcb
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211E62C ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211E630 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov20_0211a4c0
	ldr r0, _0211E634 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r4, pc}
_0211E620: .word 0x0209A11C
_0211E624: .word 0x0209A0AC
_0211E628: .word 0x020A9C40
_0211E62C: .word 0x02099EB4
_0211E630: .word 0x02099ED4
_0211E634: .word 0x02099F38
	arm_func_end FUN_ov20_0211e5a0

	arm_func_start FUN_ov20_0211e638
FUN_ov20_0211e638: ; 0x0211E638
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x394
	bl FUN_0206c110
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov20_0211e638

	arm_func_start FUN_ov20_0211e658
FUN_ov20_0211e658: ; 0x0211E658
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x394
	bl FUN_0206c110
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov20_0211e658
_0211E670:
	.byte 0x0C, 0x00, 0x0D, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x82, 0xD0, 0x82, 0xAB
	.byte 0x82, 0xCA, 0x82, 0xAB, 0x81, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov20_0211e69c
FUN_ov20_0211e69c: ; 0x0211E69C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211E6E4 ; =0x0211E728
	str r0, [r4, #0x18]
	ldr r0, _0211E6E8 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _0211E6EC ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E6E4: .word 0x0211E728
_0211E6E8: .word 0x00009CCD
_0211E6EC: .word 0x0000EA3C
	arm_func_end FUN_ov20_0211e69c
	; 0x0211E6F0


	.rodata
	.incbin "/incbin/overlay20_rodata.bin"

	.bss
	.space 0x0
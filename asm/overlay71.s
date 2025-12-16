
	.include "/macros/function.inc"
	.include "/include/overlay71.inc"

	.text
	arm_func_start FUN_ov71_02119f00
FUN_ov71_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F30 ; =0x0211AEEC
	add r1, r4, #0xc
	bl FUN_ov16_020f316c
	ldr r0, _02119F34 ; =0x0211AF0C
	add r1, r4, #0x18
	bl FUN_ov16_020f316c
	ldr r0, _02119F38 ; =0x0211AF2C
	add r1, r4, #0x24
	bl FUN_ov16_020f316c
	ldmfd sp!, {r4, pc}
_02119F30: .word ov71_0211AEEC
_02119F34: .word ov71_0211AF0C
_02119F38: .word ov71_0211AF2C
	arm_func_end FUN_ov71_02119f00

	arm_func_start FUN_ov71_02119f3c
FUN_ov71_02119f3c: ; 0x02119F3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r1, #0
	str r1, [sp]
	ldr r1, [r7, #0xc]
	ldr r0, _02119FD8 ; =0x0211AF4C
	ldr r2, _02119FDC ; =0x0211AD60
	add r3, r7, #0x30
	bl FUN_ov16_020f5450
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _02119FE0 ; =0x0209BA20
	bl FUN_0207249c
	cmp r0, #0
	beq _02119F88
	ldrb r1, [r0, #0x2d]
	mov r0, r7
	bl FUN_ov71_02119fe8
	str r0, [r7, #0x48]
_02119F88:
	ldr r4, _02119FE4 ; =0x02099F38
	mov r6, #5
	mov r5, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl FUN_02059630
	str r0, [r7, #0x4c]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl FUN_02059630
	str r0, [r7, #0x50]
	mov r0, r7
	mov r1, #0
	bl FUN_ov71_0211a104
	mov r0, r7
	mov r1, r5
	bl FUN_ov71_0211a104
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02119FD8: .word ov71_0211AF4C
_02119FDC: .word ov71_0211AD60
_02119FE0: .word gLogicThink
_02119FE4: .word unk_02099F38
	arm_func_end FUN_ov71_02119f3c

	arm_func_start FUN_ov71_02119fe8
FUN_ov71_02119fe8: ; 0x02119FE8
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr r0, [r0, #0x18]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {pc}
	ldr r0, _0211A050 ; =0x02099F38
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0211A054 ; =0x0211AF6C
	mov r1, #5
	str r12, [sp, #0x10]
	bl FUN_02058800
	add sp, sp, #0x1c
	ldmia sp!, {pc}
_0211A050: .word unk_02099F38
_0211A054: .word ov71_0211AF6C
	arm_func_end FUN_ov71_02119fe8

	arm_func_start FUN_ov71_0211a058
FUN_ov71_0211a058: ; 0x0211A058
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r5, r0
	mov r9, #8
	mov r8, #3
	mov r7, r4
	ldr r6, _0211A100 ; =0x02099F38
	b _0211A0F0
_0211A078:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _0211A0EC
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x30]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A0EC
	cmp r4, #6
	bne _0211A0D4
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x30]
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02114918
_0211A0D4:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x30]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211A0EC:
	add r4, r4, #1
_0211A0F0:
	cmp r4, #9
	blt _0211A078
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A100: .word unk_02099F38
	arm_func_end FUN_ov71_0211a058

	arm_func_start FUN_ov71_0211a104
FUN_ov71_0211a104: ; 0x0211A104
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	bmi _0211A11C
	cmp r4, #3
	blt _0211A170
_0211A11C:
	mov r4, #0
	add r9, r5, #0xc
	mov r8, #1
	mov r7, r4
	mov r6, #0xc
_0211A130:
	mul r10, r4, r6
	mov r1, r8
	add r0, r9, r10
	bl FUN_ov16_020f338c
	add r0, r9, r10
	bl FUN_ov16_020f33fc
	add r0, r5, r10
	str r7, [r0, #0xc]
	str r7, [r0, #0x10]
	strb r7, [r0, #0x14]
	strb r7, [r0, #0x15]
	add r4, r4, #1
	strb r7, [r0, #0x16]
	cmp r4, #3
	blt _0211A130
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A170:
	mov r0, #0xc
	mul r6, r4, r0
	add r4, r5, #0xc
	add r0, r4, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r6
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r6]
	add r0, r5, r6
	str r1, [r0, #0x10]
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x15]
	strb r1, [r0, #0x16]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov71_0211a104

	arm_func_start FUN_ov71_0211a1b0
FUN_ov71_0211a1b0: ; 0x0211A1B0
	stmfd sp!, {r4, r5, r6, lr}
	mvn r1, #0
	mov r6, r0
	bl FUN_ov71_0211a104
	mov r5, #0
	ldr r4, _0211A224 ; =0x02099F38
	b _0211A1E8
_0211A1CC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _0211A1E4
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211A1E4:
	add r5, r5, #1
_0211A1E8:
	cmp r5, #1
	blt _0211A1CC
	mov r5, #0
	ldr r4, _0211A224 ; =0x02099F38
	b _0211A218
_0211A1FC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _0211A214
	ldr r0, [r4]
	bl FUN_02058ee0
_0211A214:
	add r5, r5, #1
_0211A218:
	cmp r5, #9
	blt _0211A1FC
	ldmfd sp!, {r4, r5, r6, pc}
_0211A224: .word unk_02099F38
	arm_func_end FUN_ov71_0211a1b0

	arm_func_start FUN_ov71_0211a228
FUN_ov71_0211a228: ; 0x0211A228
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r10, r1
	bl FUN_ov71_0211a414
	mov r7, #0
	ldr r5, _0211A31C ; =0x02099F38
	mov r8, r0
	ldr r0, [r5]
	add r2, sp, #0x20
	add r3, sp, #0x24
	mov r1, r10
	str r7, [sp, #0x20]
	bl FUN_0205935c
	ldr r9, [sp, #0x20]
	cmp r9, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211A320 ; =gFont12T
	mov r11, #1
	ldr r0, [r4]
	mov r1, r11
	mov r2, r11
	bl FUN_02043310
	mov r1, #2
	ldr r0, [r4]
	mov r2, r1
	bl FUN_02043780
	ldr r0, [r5]
	mov r1, r10
	bl FUN_ov16_02111438
	mov r6, r0
	ldr r0, [r5]
	mov r1, r10
	bl FUN_ov16_02111458
	stmia sp, {r0, r7}
	str r7, [sp, #8]
	str r11, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	str r11, [sp, #0x18]
	str r11, [sp, #0x1c]
	ldr r0, [r4]
	mov r1, r8
	mov r3, r6
	mov r2, r9
	bl FUN_020425fc
	ldr r1, [sp, #0x24]
	mov r0, r9
	bl DC_FlushRange
	ldr r0, [r4]
	bl FUN_0204331c
	ldr r0, [r5]
	ldr r3, [sp, #0x24]
	mov r1, r10
	str r7, [sp]
	str r7, [sp, #4]
	mov r2, r9
	str r7, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A31C: .word unk_02099F38
_0211A320: .word gFont12T
	arm_func_end FUN_ov71_0211a228

	arm_func_start FUN_ov71_0211a324
FUN_ov71_0211a324: ; 0x0211A324
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r10, r1
	add r1, sp, #0x28
	bl FUN_ov71_0211a438
	mov r7, #0
	ldr r5, _0211A40C ; =0x02099F38
	mov r8, r0
	ldr r0, [r5]
	add r2, sp, #0x20
	add r3, sp, #0x24
	mov r1, r10
	str r7, [sp, #0x20]
	bl FUN_0205935c
	ldr r9, [sp, #0x20]
	cmp r9, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211A410 ; =gFont12
	mov r11, #1
	ldr r0, [r4]
	mov r2, r11
	mov r1, #2
	bl FUN_02043310
	ldr r0, [r5]
	mov r1, r10
	bl FUN_ov16_02111438
	mov r6, r0
	ldr r0, [r5]
	mov r1, r10
	bl FUN_ov16_02111458
	stmia sp, {r0, r7}
	str r7, [sp, #8]
	str r11, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	str r11, [sp, #0x18]
	str r11, [sp, #0x1c]
	ldr r0, [r4]
	mov r1, r8
	mov r3, r6
	mov r2, r9
	bl FUN_020425fc
	ldr r1, [sp, #0x24]
	mov r0, r9
	bl DC_FlushRange
	ldr r0, [r4]
	bl FUN_0204331c
	ldr r0, [r5]
	ldr r3, [sp, #0x24]
	mov r1, r10
	str r7, [sp]
	str r7, [sp, #4]
	mov r2, r9
	str r7, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A40C: .word unk_02099F38
_0211A410: .word gFont12
	arm_func_end FUN_ov71_0211a324

	arm_func_start FUN_ov71_0211a414
FUN_ov71_0211a414: ; 0x0211A414
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A434 ; =0x0209BA20
	bl FUN_0207249c
	cmp r0, #0
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0211A434: .word gLogicThink
	arm_func_end FUN_ov71_0211a414

	arm_func_start FUN_ov71_0211a438
FUN_ov71_0211a438: ; 0x0211A438
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _0211A474 ; =0x020A0640
	mov r4, r1
	ldr r2, [r3, #0x4e4]
	ldr r12, [r3, #0x4e8]
	ldr r1, [r3, #0x4e0]
	mov r3, r2
	str r12, [sp]
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl FUN_ov16_020f03fc
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211A474: .word unk_020A0640
	arm_func_end FUN_ov71_0211a438

	arm_func_start FUN_ov71_0211a478
FUN_ov71_0211a478: ; 0x0211A478
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r0, [r10, #0x54]
	ldr r7, _0211AA18 ; =0x02099F38
	cmp r0, #0
	mov r6, #1
	mov r4, #0
	bne _0211A9D4
	ldr r0, [r7]
	mov r2, r6
	mov r1, #0xc
	bl FUN_ov16_02112724
	movs r5, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r5, [r10, #0x54]
	ldr r0, [r7]
	mov r1, r5
	sub r3, r6, #2
	mov r2, #0x258
	bl FUN_ov16_02112c90
	ldr r3, [r10, #0x30]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_0211401c
	ldr r3, [r10, #0x44]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #1
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r8, #0x18
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #1
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r3, [r10, #0x40]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #2
	mov r3, r4
	bl FUN_ov16_0211401c
	str r4, [sp]
	ldr r0, [r7]
	mov r3, r8
	mov r1, r5
	add r2, r6, #2
	bl FUN_ov16_02113b78
	ldr r3, [r10, #0x48]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #3
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r7]
	mov r3, r4
	mov r1, r5
	add r2, r6, #3
	bl FUN_ov16_0211401c
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r6, #3
	mov r3, #0x60
	bl FUN_ov16_02113b78
	ldr r0, _0211AA1C ; =0x0209A454
	add r6, r6, #4
	ldrb r2, [r0, #0x31]
	ldrb r1, [r0, #0x28]
	ldr r0, _0211AA20 ; =0x0209BA20
	cmp r2, #0
	movne r1, #2
	bl FUN_020724c8
	mov r8, r0
	cmp r0, #0x63
	str r0, [sp, #0x10]
	movgt r8, #0x63
	mov r9, #0x78
	mov r7, #0
	ldr r4, _0211AA18 ; =0x02099F38
	ldr r11, _0211AA24 ; =0x66666667
	b _0211A700
_0211A624:
	ldr r3, [r10, #0x34]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	smull r12, r3, r11, r8
	mov r12, r8, lsr #0x1f
	add r3, r12, r3, asr #2
	mov r12, #0xa
	smull r3, lr, r12, r3
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	sub r3, r8, r3
	bl FUN_ov16_0211401c
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r9
	bl FUN_ov16_02113b78
	mov r0, #1
	cmp r7, #0
	mov r1, r0
	cmpne r8, #0xa
	movlt r1, #0
	cmp r1, #0
	bne _0211A6C0
	smull r1, r2, r11, r8
	mov r1, r8, lsr #0x1f
	add r2, r1, r2, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r2
	subs r2, r8, r2
	moveq r0, #0
_0211A6C0:
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
	cmp r8, #0
	movgt r1, r8
	smullgt r0, r8, r11, r1
	movgt r0, r1, lsr #0x1f
	addgt r8, r0, r8, asr #2
	sub r0, r9, #8
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	add r6, r6, #1
	add r7, r7, #1
_0211A700:
	cmp r7, #2
	blt _0211A624
	ldr r1, _0211AA28 ; =0x020A0640
	ldr r0, _0211AA2C ; =0x000003E7
	ldr r8, [r1, #0x4e4]
	mov r9, #0xb8
	cmp r8, r0
	movgt r8, r0
	mov r7, #0
	ldr r4, _0211AA18 ; =0x02099F38
	ldr r11, _0211AA24 ; =0x66666667
	b _0211A80C
_0211A730:
	ldr r3, [r10, #0x38]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	smull r12, r3, r11, r8
	mov r12, r8, lsr #0x1f
	add r3, r12, r3, asr #2
	mov r12, #0xa
	smull r3, lr, r12, r3
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	sub r3, r8, r3
	bl FUN_ov16_0211401c
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r9
	bl FUN_ov16_02113b78
	mov r0, #1
	cmp r7, #0
	mov r1, r0
	cmpne r8, #0xa
	movlt r1, #0
	cmp r1, #0
	bne _0211A7CC
	smull r1, r2, r11, r8
	mov r1, r8, lsr #0x1f
	add r2, r1, r2, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r2
	subs r2, r8, r2
	moveq r0, #0
_0211A7CC:
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
	cmp r8, #0
	movgt r1, r8
	smullgt r0, r8, r11, r1
	movgt r0, r1, lsr #0x1f
	addgt r8, r0, r8, asr #2
	sub r0, r9, #8
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	add r6, r6, #1
	add r7, r7, #1
_0211A80C:
	cmp r7, #3
	blt _0211A730
	ldr r1, [r10, #0x4c]
	mov r0, r10
	bl FUN_ov71_0211a228
	ldr r4, _0211AA18 ; =0x02099F38
	ldr r3, [r10, #0x4c]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r7, #0
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_02113d88
	ldr r0, [r4]
	ldr r1, [r10, #0x4c]
	bl FUN_ov16_02111438
	mov r8, r0
	ldr r0, [r4]
	ldr r1, [r10, #0x4c]
	bl FUN_ov16_02111458
	mov r1, r8, lsl #0x10
	mov r3, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_02113d08
	mov r0, #0x6a
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_02113b78
	mov r0, r10
	ldr r1, [r10, #0x50]
	bl FUN_ov71_0211a324
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #1
	ldr r3, [r10, #0x50]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #1
	mov r3, r7
	bl FUN_ov16_02113d88
	ldr r0, [r4]
	ldr r1, [r10, #0x50]
	bl FUN_ov16_02111438
	mov r8, r0
	ldr r0, [r4]
	ldr r1, [r10, #0x50]
	bl FUN_ov16_02111458
	mov r1, r8, lsl #0x10
	mov r3, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #1
	bl FUN_ov16_02113d08
	mov r0, #0xa4
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #1
	mov r3, r7
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r5
	mov r3, r7
	add r2, r6, #2
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x3c]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #2
	mov r3, #0x28
	bl FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r6, #2
	mov r3, r7
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x10]
	mov r1, r5
	cmp r0, #0x3c
	movge r7, #1
	ldr r0, _0211AA18 ; =0x02099F38
	str r7, [sp]
	ldr r0, [r0]
	add r2, r6, #2
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211A9D4:
	mov r0, r10
	mov r1, #2
	bl FUN_ov71_0211a104
	mov r3, #0
	mov r1, #1
	str r3, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	ldr r0, _0211AA30 ; =0x02099EB4
	str r3, [sp, #0xc]
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_0210fba4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA18: .word unk_02099F38
_0211AA1C: .word unk_0209A454
_0211AA20: .word gLogicThink
_0211AA24: .word 0x66666667
_0211AA28: .word unk_020A0640
_0211AA2C: .word 0x000003E7
_0211AA30: .word unk_02099EB4
	arm_func_end FUN_ov71_0211a478

	arm_func_start FUN_ov71_0211aa34
FUN_ov71_0211aa34: ; 0x0211AA34
	mov r1, #6
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov71_0211aa34

	arm_func_start FUN_ov71_0211aa40
FUN_ov71_0211aa40: ; 0x0211AA40
	ldr r0, _0211AA58 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	bx lr
_0211AA58: .word unk_02099EB4
	arm_func_end FUN_ov71_0211aa40

	arm_func_start FUN_ov71_0211aa5c
FUN_ov71_0211aa5c: ; 0x0211AA5C
	ldr r2, _0211AA6C ; =0x0211AE80
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211AA6C: .word ov71_0211AE80
	arm_func_end FUN_ov71_0211aa5c

	arm_func_start FUN_ov71_0211aa70
FUN_ov71_0211aa70: ; 0x0211AA70
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211AAF0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r6, _0211AAF4 ; =0x02099EB4
	ldr r0, [r6]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211AACC
	ldr r0, [r6]
	add r0, r0, #0xf00
	ldrh r4, [r0, #0x38]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211AACC:
	ldr r0, _0211AAF8 ; =0x00002FFF
	tst r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211AAFC ; =gL5Sound
	mov r1, #1
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r5
	bl FUN_ov71_0211aa34
	ldmfd sp!, {r4, r5, r6, pc}
_0211AAF0: .word unk_02099ED4
_0211AAF4: .word unk_02099EB4
_0211AAF8: .word 0x00002FFF
_0211AAFC: .word gL5Sound
	arm_func_end FUN_ov71_0211aa70

	arm_func_start FUN_ov71_0211ab00
FUN_ov71_0211ab00: ; 0x0211AB00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211AB60 ; =0x02099ED4
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #8]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211AB64 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210f20c
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov71_0211aa40
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB60: .word unk_02099ED4
_0211AB64: .word unk_02099EB4
	arm_func_end FUN_ov71_0211ab00

	arm_func_start FUN_ov71_0211ab68
FUN_ov71_0211ab68: ; 0x0211AB68
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211ABE0 ; =0x02099EB4
	mov r6, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e980
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r5, #0
	mov r4, #0x24
	mov r1, r5
	mov r2, r4
	add r0, r6, #0xc
	str r5, [r6, #8]
	bl MI_CpuFill8
	mov r2, r4
	add r0, r6, #0x30
	mov r1, r5
	bl MI_CpuFill8
	add r0, r6, #0x54
	mov r1, r5
	mov r2, #4
	bl MI_CpuFill8
	ldr r0, _0211ABE4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r0, _0211ABE8 ; =0x0209BA20
	bl FUN_ov16_020eeca0
	ldmfd sp!, {r4, r5, r6, pc}
_0211ABE0: .word unk_02099EB4
_0211ABE4: .word unk_02099F38
_0211ABE8: .word gLogicThink
	arm_func_end FUN_ov71_0211ab68

	arm_func_start FUN_ov71_0211abec
FUN_ov71_0211abec: ; 0x0211ABEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211AC04: ; jump table
	b _0211AC24 ; case 0
	b _0211AC30 ; case 1
	b _0211AC54 ; case 2
	b _0211AC6C ; case 3
	b _0211AC7C ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _0211ACAC ; case 6
	b _0211ACD8 ; case 7
_0211AC24:
	bl FUN_ov71_02119f00
	mov r0, #1
	str r0, [r4, #8]
_0211AC30:
	add r0, r4, #0xc
	mov r1, #3
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov71_02119f3c
	mov r0, #2
	str r0, [r4, #8]
_0211AC54:
	mov r0, r4
	bl FUN_ov71_0211a058
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #3
	str r0, [r4, #8]
_0211AC6C:
	mov r0, r4
	bl FUN_ov71_0211a478
	mov r0, #4
	str r0, [r4, #8]
_0211AC7C:
	ldr r0, _0211AD00 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211ACAC:
	ldr r0, _0211AD00 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #7
	str r0, [r4, #8]
_0211ACD8:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	mov r1, #0
	bl _ZN14CScreenManager12FUN_02041f2cE12EngineSelect
	ldmfd sp!, {r4, pc}
_0211AD00: .word unk_02099ED4
	arm_func_end FUN_ov71_0211abec

	arm_func_start FUN_ov71_0211ad04
FUN_ov71_0211ad04: ; 0x0211AD04
	bx lr
	arm_func_end FUN_ov71_0211ad04

	arm_func_start FUN_ov71_0211ad08
FUN_ov71_0211ad08: ; 0x0211AD08
	stmfd sp!, {r4, lr}
	ldr r1, _0211AD3C ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	mov r0, r4
	bl FUN_ov71_0211a1b0
	ldr r0, _0211AD40 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r0, _0211AD44 ; =0x0209BA20
	bl FUN_ov16_020eedb8
	ldmfd sp!, {r4, pc}
_0211AD3C: .word unk_02099EB4
_0211AD40: .word unk_02099F38
_0211AD44: .word gLogicThink
	arm_func_end FUN_ov71_0211ad08

	arm_func_start FUN_ov71_0211ad48
FUN_ov71_0211ad48: ; 0x0211AD48
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov71_0211ad48

	arm_func_start FUN_ov71_0211ad5c
FUN_ov71_0211ad5c: ; 0x0211AD5C
	bx lr
	arm_func_end FUN_ov71_0211ad5c

	.rodata
	.global ov71_0211AD60
ov71_0211AD60:
	.word ov71_0211AE68
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov71_0211AE48
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov71_0211AE58
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov71_0211AE18
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov71_0211AE28
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov71_0211AE38
	.byte 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov71_0211ad98
FUN_ov71_0211ad98: ; 0x0211AD98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211ADE0 ; =0x0211AE00
	str r0, [r4, #4]
	ldr r0, _0211ADE4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211ADE8 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211ADE0: .word ov71_0211AE00
_0211ADE4: .word 0x00009CCD
_0211ADE8: .word 0x0000EA3C
	arm_func_end FUN_ov71_0211ad98

	.section .sinit, 4
ov71_0211ADEC:
	.word FUN_ov71_0211ad98

	.data
	.global ov71_0211AE00
ov71_0211AE00:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov71_0211AE18
ov71_0211AE18:
	.byte 0x77, 0x73, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov71_0211AE28
ov71_0211AE28:
	.byte 0x77, 0x73, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov71_0211AE38
ov71_0211AE38:
	.byte 0x77, 0x73, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov71_0211AE48
ov71_0211AE48:
	.byte 0x77, 0x73, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov71_0211AE58
ov71_0211AE58:
	.byte 0x77, 0x73, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov71_0211AE68
ov71_0211AE68:
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov71_0211AE80
ov71_0211AE80:
	.word FUN_ov71_0211ad5c
	.word FUN_ov71_0211ad48
	.word FUN_ov71_0211aa70
	.word FUN_ov71_0211ab00
	.word FUN_ov71_0211ab68
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov71_0211abec
	.word FUN_ov71_0211ad04
	.word FUN_ov71_0211ad08
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN16CommonMainScreen9fadeResetEv
	.word _ZN16CommonMainScreen10fadeUpdateEv
	.word _ZN16CommonMainScreen8blackOutEv
	.word _ZN16CommonMainScreen8whiteOutEv
	.word _ZN16CommonMainScreen6fadeInEv
	.word _ZN16CommonMainScreen9fadeBlackEv
	.word _ZN16CommonMainScreen9fadeWhiteEv
	.word _ZN16CommonMainScreen8isFadingEv
	.word _ZN16CommonMainScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen7vFUN_60Ei
	.word _ZN12CommonScreen7vFUN_64Ei
	.word _ZN12CommonScreen7vFUN_68Ev
	.global ov71_0211AEEC
ov71_0211AEEC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x72, 0x65
	.byte 0x73, 0x75, 0x6C, 0x74, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov71_0211AF0C
ov71_0211AF0C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F
	.byte 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov71_0211AF2C
ov71_0211AF2C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x74
	.byte 0x69, 0x74, 0x6C, 0x65, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00
	.global ov71_0211AF4C
ov71_0211AF4C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x72, 0x65
	.byte 0x73, 0x75, 0x6C, 0x74, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov71_0211AF6C
ov71_0211AF6C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F
	.byte 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

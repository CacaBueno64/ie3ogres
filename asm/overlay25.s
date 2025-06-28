
	.include "/macros/function.inc"
	.include "/include/overlay25.inc"

	.text
	arm_func_start FUN_ov25_02119f00
FUN_ov25_02119f00: ; 0x02119F00
	ldr r2, _02119F2C ; =0x0211B764
	mov r3, #0
_02119F08:
	ldrsb r1, [r2, r3]
	cmp r0, r1
	moveq r0, r3
	bxeq lr
	add r3, r3, #1
	cmp r3, #0x3a
	blt _02119F08
	mvn r0, #0
	bx lr
_02119F2C: .word ov25_0211B764
	arm_func_end FUN_ov25_02119f00

	arm_func_start FUN_ov25_02119f30
FUN_ov25_02119f30: ; 0x02119F30
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r8, r2
	ldr r0, _02119FC4 ; =0x0211B760
	mov r9, r1
	mov r2, #0
_02119F48:
	ldrsb r1, [r0, #4]
	strb r1, [r8, r2]
	add r2, r2, #1
	cmp r2, #0xb
	blt _02119F48
	mov r7, #0
	cmp r9, #0
	cmpeq r10, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r4, _02119FC8 ; =0x0211B764
	mov r6, #0x3a
	mov r5, r7
_02119F78:
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, r5
	bl FUN_0201f960
	ldrsb r2, [r4, r0]
	mov r0, r10
	mov r1, r9
	strb r2, [r8, r7]
	mov r2, r6
	add r7, r7, #1
	mov r3, r5
	bl FUN_0201f954
	mov r10, r0
	mov r9, r1
	cmp r9, #0
	cmpeq r10, #0
	bne _02119F78
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02119FC4: .word ov25_0211B760
_02119FC8: .word ov25_0211B764
	arm_func_end FUN_ov25_02119f30

	arm_func_start FUN_ov25_02119fcc
FUN_ov25_02119fcc: ; 0x02119FCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, #0
	mov r10, r0
	str r1, [sp]
	mov r5, r6
	mov r7, r6
	mov r9, r6
	mov r8, #1
	mov r11, r6
	mov r4, #0x3a
_02119FF4:
	ldrsb r0, [r10, r9]
	bl FUN_ov25_02119f00
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	umull r3, r12, r0, r8
	umull r1, r2, r8, r4
	adds r6, r6, r3
	mov r3, r0, asr #0x1f
	mla r12, r0, r7, r12
	mla r12, r3, r8, r12
	adc r5, r5, r12
	mla r2, r8, r11, r2
	mov r8, r1
	mla r2, r7, r4, r2
	mov r7, r2
	add r9, r9, #1
	cmp r9, #0xb
	blt _02119FF4
	ldr r0, [sp]
	str r6, [r0]
	str r5, [r0, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov25_02119fcc

	arm_func_start FUN_ov25_0211a054
FUN_ov25_0211a054: ; 0x0211A054
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r9, r1
	mov r8, r2
	mov r1, #0
	mov r10, r0
	strb r1, [r8]
	cmp r9, #0
	ble _0211A134
	add r5, sp, #8
	add r4, sp, #0x10
	mov r11, r1
	mov r6, r1
_0211A088:
	mov r7, r9
	cmp r9, #8
	movgt r7, #8
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	mov r1, #0
	cmp r7, #0
	ble _0211A0BC
_0211A0A8:
	ldrb r0, [r10], #1
	strb r0, [r5, r1]
	add r1, r1, #1
	cmp r1, r7
	blt _0211A0A8
_0211A0BC:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r2, r4
	bl FUN_ov25_02119f30
	mov r0, r4
	add r1, sp, #0
	strb r11, [sp, #0x1b]
	bl FUN_ov25_02119fcc
	cmp r0, #0
	beq _0211A100
	ldr r12, [sp, #8]
	ldr lr, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r2, [sp]
	cmp lr, r0
	cmpeq r12, r2
	beq _0211A11C
_0211A100:
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, _0211A144 ; =0x0211B7A0
	bl FUN_02023ab4
	add sp, sp, #0x1c
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A11C:
	mov r0, r8
	mov r1, r4
	bl FUN_02023fb0
	sub r9, r9, r7
	cmp r9, #0
	bgt _0211A088
_0211A134:
	mov r0, r8
	bl _strlen
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A144: .word ov25_0211B7A0
	arm_func_end FUN_ov25_0211a054

	arm_func_start FUN_ov25_0211a148
FUN_ov25_0211a148: ; 0x0211A148
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldr r5, _0211A1A4 ; =0x0000FFFF
	mov lr, #0
	bls _0211A194
	ldr r2, _0211A1A8 ; =0x00001021
	mov r3, lr
_0211A164:
	ldrb r12, [r0, lr]
	mov r4, r3
	eor r5, r5, r12, lsl #8
_0211A170:
	tst r5, #0x8000
	eorne r5, r2, r5, lsl #1
	add r4, r4, #1
	moveq r5, r5, lsl #1
	cmp r4, #8
	blo _0211A170
	add lr, lr, #1
	cmp lr, r1
	blo _0211A164
_0211A194:
	mvn r0, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0211A1A4: .word 0x0000FFFF
_0211A1A8: .word 0x00001021
	arm_func_end FUN_ov25_0211a148

	arm_func_start FUN_ov25_0211a1ac
FUN_ov25_0211a1ac: ; 0x0211A1AC
	ldr r1, _0211A1C8 ; =0x0211B760
	ldr r0, _0211A1CC ; =0x021FC436
	ldr r2, [r1]
	mul r0, r2, r0
	add r0, r0, #1
	str r0, [r1]
	bx lr
_0211A1C8: .word ov25_0211B760
_0211A1CC: .word 0x021FC436
	arm_func_end FUN_ov25_0211a1ac

	arm_func_start FUN_ov25_0211a1d0
FUN_ov25_0211a1d0: ; 0x0211A1D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r8, r2
	mov r4, r3
	sub r1, r6, #2
	mov r7, r0
	bl FUN_ov25_0211a148
	mov r5, r0
	mov r0, r8
	mov r1, r4
	bl FUN_ov25_0211a148
	ldr r1, _0211A288 ; =0x000062D3
	sub r4, r6, #2
	eor r1, r5, r1
	eor r5, r1, r0
	ldr r0, _0211A28C ; =0x05888F27
	strb r5, [r7, r4]
	mov r3, r5, lsr #8
	sub r2, r6, #1
	ldr r1, _0211A290 ; =0x0211B760
	strb r3, [r7, r2]
	add r0, r5, r0
	str r0, [r1]
	cmp r4, #0
	mov r5, #0
	ble _0211A25C
_0211A238:
	bl FUN_ov25_0211a1ac
	mov r1, r0, lsr #0x18
	ldrb r0, [r7, r5]
	and r1, r1, #0xff
	eor r0, r1, r0
	strb r0, [r7, r5]
	add r5, r5, #1
	cmp r5, r4
	blt _0211A238
_0211A25C:
	ldr r1, _0211A294 ; =0x014A76E0
	ldr r0, _0211A290 ; =0x0211B760
	str r1, [r0]
	ldrb r5, [r7, r4]
	bl FUN_ov25_0211a1ac
	sub r1, r6, #2
	bl FUN_0201fbc8
	ldrb r0, [r7, r1]
	strb r0, [r7, r4]
	strb r5, [r7, r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A288: .word 0x000062D3
_0211A28C: .word 0x05888F27
_0211A290: .word ov25_0211B760
_0211A294: .word 0x014A76E0
	arm_func_end FUN_ov25_0211a1d0

	arm_func_start FUN_ov25_0211a298
FUN_ov25_0211a298: ; 0x0211A298
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov lr, r4, lsr #0x1f
	rsb r12, lr, r4, lsl #29
	mov r5, r0
	adds r12, lr, r12, ror #29
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r12, r4, asr #2
	add r12, r4, r12, lsr #29
	mov lr, r12, asr #3
	mov r12, #0xb
	mul r12, lr, r12
	ldr lr, [sp, #0x14]
	add r12, r12, #1
	cmp lr, r12
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	bl FUN_ov25_0211a1d0
	ldr r2, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	bl FUN_ov25_0211a054
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov25_0211a298

	arm_func_start FUN_ov25_0211a304
FUN_ov25_0211a304: ; 0x0211A304
	stmfd sp!, {r3, lr}
	mov r3, r0
	mov r0, #0
	cmp r1, #0
	cmpne r2, #0
	strgt r1, [r3, #8]
	strh r0, [r3]
	strh r0, [r3, #2]
	ldr r0, [r3, #8]
	strgth r2, [r3, #4]
	cmp r0, #0
	beq _0211A340
	ldrsh r2, [r3, #4]
	mov r1, #0
	bl FUN_02021940
_0211A340:
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov25_0211a304

	arm_func_start FUN_ov25_0211a348
FUN_ov25_0211a348: ; 0x0211A348
	cmp r2, #0
	ldrne r2, [r0, #8]
	and r3, r1, #7
	mov r12, #1
	mov r3, r12, lsl r3
	ldrneb r0, [r2, r1, asr #3]
	and r12, r3, #0xff
	orrne r0, r0, r12
	strneb r0, [r2, r1, asr #3]
	bxne lr
	ldr r3, [r0, #8]
	mvn r0, r12
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	and r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
	arm_func_end FUN_ov25_0211a348

	arm_func_start FUN_ov25_0211a38c
FUN_ov25_0211a38c: ; 0x0211A38C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r2
	mov r8, r0
	mov r7, r1
	cmp r6, #0
	mov r4, #1
	mov r5, #0
	ble _0211A3E4
	mov r9, r5
	mov r10, r4
_0211A3B4:
	ldrsh r1, [r8]
	tst r7, r4
	movne r2, r10
	add r0, r1, #1
	strh r0, [r8]
	moveq r2, r9
	mov r0, r8
	bl FUN_ov25_0211a348
	add r5, r5, #1
	cmp r5, r6
	mov r4, r4, lsl #1
	blt _0211A3B4
_0211A3E4:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov25_0211a38c

	arm_func_start FUN_ov25_0211a3ec
FUN_ov25_0211a3ec: ; 0x0211A3EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _0211A424
	ldr r0, _0211A430 ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x38]
_0211A424:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A430: .word unk_02099F38
	arm_func_end FUN_ov25_0211a3ec

	arm_func_start FUN_ov25_0211a434
FUN_ov25_0211a434: ; 0x0211A434
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _0211A4C0 ; =0x02099F38
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
_0211A4C0: .word unk_02099F38
	arm_func_end FUN_ov25_0211a434

	arm_func_start FUN_ov25_0211a4c4
FUN_ov25_0211a4c4: ; 0x0211A4C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x38]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A4FC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4FC: .word unk_02099F38
	arm_func_end FUN_ov25_0211a4c4

	arm_func_start FUN_ov25_0211a500
FUN_ov25_0211a500: ; 0x0211A500
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A548 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x18]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	mov r1, #0
	str r1, [r0, #0x18]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A548: .word unk_02099F38
	arm_func_end FUN_ov25_0211a500

	arm_func_start FUN_ov25_0211a54c
FUN_ov25_0211a54c: ; 0x0211A54C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xc
	mov r1, #1
	bl  FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211A5B0 ; =0x02099F38
	b _0211A5A0
_0211A578:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _0211A59C
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A59C:
	add r5, r5, #1
_0211A5A0:
	cmp r5, #8
	blt _0211A578
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A5B0: .word unk_02099F38
	arm_func_end FUN_ov25_0211a54c

	arm_func_start FUN_ov25_0211a5b4
FUN_ov25_0211a5b4: ; 0x0211A5B4
	ldrb r0, [r0, #0x40]
	add r0, r0, #0xf8
	and r0, r0, #0xff
	cmp r0, #2
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov25_0211a5b4

	arm_func_start FUN_ov25_0211a5d0
FUN_ov25_0211a5d0: ; 0x0211A5D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, _0211A5F8 ; =0x0211B84C
	add r0, r5, #0x44
	mov r4, r1
	str r2, [r5]
	bl  FUN_ov16_02110558
	mov r0, r5
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A5F8: .word ov25_0211B84C
	arm_func_end FUN_ov25_0211a5d0

	arm_func_start FUN_ov25_0211a5fc
FUN_ov25_0211a5fc: ; 0x0211A5FC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r5, r0
	bl  FUN_ov16_020f47fc
	mov r0, #2
	bl  FUN_ov16_020f3f60
	mov r0, #1
	mov r4, #0
	mov r1, r4
	mov r2, r0
	bl FUN_020044e0
	ldr r2, _0211A720 ; =0x04000008
	mov r0, r5
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #3
	strh r1, [r2, #4]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211A724 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A728 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r0, _0211A72C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	mov r0, #0x4000000
	ldr r1, [r0]
	add r0, r5, #0xc
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r5, #8]
	mov r1, r4
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r5, #0x18
	mov r1, r4
	mov r2, #0x20
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x38
	mov r2, #8
	bl MI_CpuFill8
	ldr r0, _0211A730 ; =0x0211B8B8
	add r1, r5, #0xc
	bl  FUN_ov16_020f3054
	ldr lr, _0211A734 ; =0x0211B6AC
	add r12, sp, #4
	mov r4, #4
_0211A6D8:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211A6D8
	ldmia lr, {r0, r1}
	stmia r12, {r0, r1}
	mov r4, #0
	str r4, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, _0211A738 ; =0x0211B8D4
	add r2, sp, #4
	add r3, r5, #0x18
	bl  FUN_ov16_020f5450
	mov r0, #2
	strb r0, [r5, #0x40]
	strb r4, [r5, #0x41]
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, pc}
_0211A720: .word 0x04000008
_0211A724: .word unk_02099EB4
_0211A728: .word unk_02099ED4
_0211A72C: .word unk_02099F38
_0211A730: .word ov25_0211B8B8
_0211A734: .word 0x0211B6AC
_0211A738: .word ov25_0211B8D4
	arm_func_end FUN_ov25_0211a5fc

	arm_func_start FUN_ov25_0211a73c
FUN_ov25_0211a73c: ; 0x0211A73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x3ac
	ldr r1, _0211B22C ; =0x0209A110
	ldr r4, _0211B230 ; =0x02099ED4
	mov r9, r0
	mov r5, #0
	ldr r0, [r4]
	ldr r1, [r1]
	mov r10, #2
	mov r7, #3
	mov r6, #1
	mov r8, r5
	bl  FUN_ov16_0210e10c
	mov r0, r9
	bl FUN_ov25_0211a54c
	cmp r0, #0
	addeq sp, sp, #0x3ac
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #0x3ac
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r9, #0x40]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0211B224
_0211A7A8: ; jump table
	b _0211B224 ; case 0
	b _0211B224 ; case 1
	b _0211A7DC ; case 2
	b _0211A7E8 ; case 3
	b _0211A93C ; case 4
	b _0211A9A8 ; case 5
	b _0211ABF8 ; case 6
	b _0211AFE4 ; case 7
	b _0211B224 ; case 8
	b _0211B224 ; case 9
	b _0211B224 ; case 10
	b _0211B158 ; case 11
	b _0211B1E4 ; case 12
_0211A7DC:
	add sp, sp, #0x3ac
	strb r7, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211A7E8:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov25_0211a3ec
	mov r4, r0
	str r8, [sp]
	str r8, [sp, #4]
	mov r5, #0x258
	str r5, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x18]
	mov r0, r9
	mov r1, r4
	mov r2, r6
	bl FUN_ov25_0211a434
	str r8, [sp]
	str r8, [sp, #4]
	str r5, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x1c]
	mov r0, r9
	mov r1, r4
	mov r2, r10
	bl FUN_ov25_0211a434
	ldr r0, _0211B234 ; =0x02099F38
	str r8, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_02113ec0
	mov r0, #0x57
	str r0, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r0, #0x12c
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x2c]
	mov r0, r9
	mov r1, r4
	mov r2, r7
	bl FUN_ov25_0211a434
	mov r3, r4
	stmia sp, {r7, r8}
	ldr r4, _0211B238 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r6
	bl  FUN_ov16_0210fc74
	ldr r0, [r4]
	mov r1, r6
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211A92C
	strb r8, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r1, r8
	mov r2, r6
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	mov r1, r8
	mov r2, r8
	mov r3, r8
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r8
	mov r2, r6
	add r0, r4, #0x3e
	mov r3, r8
	bl  FUN_ov16_0210e6fc
	mov r2, r6
	add r0, r4, #0x3e
	mov r1, r8
	mov r3, r8
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
_0211A92C:
	mov r0, #4
	add sp, sp, #0x3ac
	strb r0, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211A93C:
	ldr r4, _0211B234 ; =0x02099F38
	b _0211A980
_0211A944:
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _0211A97C
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A97C
	add r0, r9, r8, lsl #2
	ldr r1, [r0, #0x18]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A97C:
	add r8, r8, #1
_0211A980:
	cmp r8, #8
	blt _0211A944
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #8
	add sp, sp, #0x3ac
	strb r0, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211A9A8:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x3ac
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211B238 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r0]
	bl  FUN_ov16_0210eab4
	ldr r5, [r9, #0x38]
	ldr r4, _0211B234 ; =0x02099F38
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r10
	bl  FUN_ov16_02113ec0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_02113ec0
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r3, r10
	mov r2, r7
	bl  FUN_ov16_02113ec0
	add r7, sp, #0x32c
	mov r0, r8
	mov r2, #0x80
	mov r1, r7
	bl MIi_CpuClearFast
	ldr r3, _0211B23C ; =0x0211B8F0
	mov r2, #0x13
	mov r8, #3
	mov r6, #0
	mov r4, #1
_0211AA4C:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	mov r5, #2
	strb r0, [r7, #1]
	strb r1, [r7], #2
	bne _0211AA4C
	add r0, r9, #0x44
	bl  FUN_ov16_021109a0
	add r0, r9, #0x44
	bl  FUN_ov16_021105c0
	ldr r2, [r9, #0x20]
	add r0, r9, #0x44
	mov r1, r6
	bl  FUN_ov16_02110624
	add r0, r9, #0x44
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_02110624
	str r4, [sp]
	sub r7, r4, #2
	str r7, [sp, #4]
	ldr r3, [r9, #0x20]
	add r0, r9, #0x44
	mov r1, r4
	mov r2, r6
	bl  FUN_ov16_021107a0
	stmia sp, {r6, r7}
	ldr r3, [r9, #0x30]
	add r0, r9, #0x44
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_021107a0
	stmia sp, {r6, r7}
	ldr r3, [r9, #0x34]
	add r0, r9, #0x44
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_021107a0
	stmia sp, {r5, r7}
	ldr r3, [r9, #0x20]
	add r0, r9, #0x44
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_021107a0
	stmia sp, {r4, r7}
	ldr r3, [r9, #0x30]
	add r0, r9, #0x44
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_021107a0
	stmia sp, {r4, r7}
	ldr r3, [r9, #0x34]
	add r0, r9, #0x44
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_021107a0
	add r0, r9, #0x44
	mov r1, #0x1f4
	bl  FUN_ov16_02110864
	mov r1, r4
	mov r2, r5
	mov r3, r8
	add r0, r9, #0x44
	bl  FUN_ov16_02110830
	mov r1, r6
	add r0, r9, #0x44
	bl  FUN_ov16_0211085c
	add r0, r9, #0x44
	mov r1, #0x20
	mov r2, #0x40
	bl  FUN_ov16_021108b4
	mov r7, #0x68
	add r0, r9, #0x44
	mov r1, #0x38
	mov r2, r7
	bl  FUN_ov16_021108c0
	mov r2, r7
	add r0, r9, #0x44
	mov r1, #0x98
	bl  FUN_ov16_021108cc
	add r0, r9, #0x44
	mov r1, #0xf
	mov r2, #0xa
	bl  FUN_ov16_021108e4
	mov r2, r8
	add r0, r9, #0x44
	mov r1, #5
	bl  FUN_ov16_021108f0
	mov r1, r5
	add r0, r9, #0x44
	add r2, sp, #0x32c
	mov r3, r4
	str r4, [sp]
	bl  FUN_ov16_02110938
	mov r1, r4
	mov r2, r6
	add r0, r9, #0x44
	bl  FUN_ov16_02110a04
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #9
	add sp, sp, #0x3ac
	strb r0, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211ABF8:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x3ac
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211B240 ; =0x0209BA20
	mov r1, r8
	bl FUN_0205106c
	mov r1, r8
	mov r7, r0
	bl FUN_02050244
	mov r1, r8
	bl  FUN_ov16_020efa9c
	mov r4, r6
	str r0, [sp, #0x1c]
	mov r0, r7
	mov r1, r4
	bl FUN_02050244
	mov r1, r8
	bl  FUN_ov16_020efa9c
	str r0, [sp, #0x20]
	mov r0, r7
	mov r1, r10
	bl FUN_02050244
	mov r1, r8
	bl  FUN_ov16_020efa9c
	str r0, [sp, #0x24]
	mov r0, r7
	mov r1, #3
	bl FUN_02050244
	mov r1, r8
	bl  FUN_ov16_020efa9c
	add r7, sp, #0x10
	str r0, [sp, #0x28]
	add r1, sp, #0x22c
	mov r0, r7
	mov r2, #0x100
	bl FUN_ov25_0211a304
	mov r0, r7
	mov r1, r8
	mov r2, r8
	bl FUN_ov25_0211a304
	ldr r0, [sp, #0x1c]
	bl FUN_0206cbf8
	mov r10, #0xc
	mov r1, r0
	mov r0, r7
	mov r2, r10
	bl FUN_ov25_0211a38c
	ldr r0, [sp, #0x20]
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r7
	mov r2, r10
	bl FUN_ov25_0211a38c
	ldr r0, [sp, #0x24]
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r7
	mov r2, r10
	bl FUN_ov25_0211a38c
	ldr r0, [sp, #0x28]
	bl FUN_0206cbf8
	mov r1, r0
	mov r2, r10
	mov r0, r7
	bl FUN_ov25_0211a38c
	ldr r0, [sp, #0x1c]
	bl FUN_0206cc34
	mov r10, #7
	mov r1, r0
	mov r0, r7
	mov r2, r10
	bl FUN_ov25_0211a38c
	ldr r0, [sp, #0x20]
	bl FUN_0206cc34
	mov r1, r0
	mov r0, r7
	mov r2, r10
	bl FUN_ov25_0211a38c
	ldr r0, [sp, #0x24]
	bl FUN_0206cc34
	mov r1, r0
	mov r0, r7
	mov r2, r10
	bl FUN_ov25_0211a38c
	ldr r0, [sp, #0x28]
	bl FUN_0206cc34
	mov r1, r0
	mov r2, r10
	mov r0, r7
	bl FUN_ov25_0211a38c
	ldrsh r0, [sp, #0x10]
	mov r7, #0
	mov r2, #0x100
	mov r1, r0, lsr #0x1f
	strh r0, [sp, #0x12]
	rsb r0, r1, r0, lsl #29
	add r0, r1, r0, ror #29
	cmp r0, #0
	ldrsh r1, [sp, #0x12]
	movle r4, r8
	add r8, sp, #0x2c
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	add r0, r4, r0, asr #3
	add r0, r0, #9
	bic r10, r0, #7
	mov r0, r10, asr #2
	add r0, r10, r0, lsr #29
	mov r1, r0, asr #3
	mov r0, #0xb
	mul r3, r1, r0
	mov r0, r8
	mov r1, r7
	add r4, r3, #1
	bl FUN_02021940
	add r1, sp, #0x22c
	mov r0, r8
	mov r2, r10
	bl FUN_020218d4
	ldr r0, _0211B244 ; =0x0211B918
	bl _strlen
	mov r3, r0
	mov r0, r8
	add r8, sp, #0x12c
	str r8, [sp]
	ldr r2, _0211B248 ; =0x0211B930
	mov r1, r10
	str r4, [sp, #4]
	bl FUN_ov25_0211a298
	cmp r0, #0
	movne r7, #1
	cmp r7, #0
	mov r7, #2
	bne _0211AE40
	add r8, sp, #0x12c
	mov r1, #0
	mov r0, r8
	mov r2, #0x100
	bl FUN_02021940
	ldr r1, _0211B24C ; =0x0211B948
	mov r0, r8
	bl FUN_02023c40
_0211AE40:
	add r8, sp, #0x32c
	add r10, sp, #0x12c
	mov r0, r5
	mov r1, r8
	mov r2, #0x80
	strb r5, [r10, r4]
	bl MIi_CpuClearFast
	mov r0, r10
	mov r1, r8
	bl  FUN_ov16_020f1f5c
	mov r0, r10
	mov r1, r5
	mov r2, #0x100
	bl FUN_02021940
	mov r2, #0xb
_0211AE7C:
	ldrb r0, [r8, #1]
	ldrb r1, [r8], #2
	subs r2, r2, #1
	strb r0, [r10, #1]
	strb r1, [r10], #2
	bne _0211AE7C
	add r8, sp, #0x12c
	ldr r1, _0211B250 ; =0x0211B95C
	mov r0, r8
	bl FUN_02023fb0
	add r0, sp, #0x32c
	bl _strlen
	sub r2, r0, #0x16
	add r0, sp, #0x100
	add r1, sp, #0x300
	add r0, r0, #0x43
	add r1, r1, #0x42
	bl FUN_020218d4
	add r0, r9, #0x44
	bl  FUN_ov16_021109a0
	add r0, r9, #0x44
	bl  FUN_ov16_021105c0
	ldr r2, [r9, #0x24]
	add r0, r9, #0x44
	mov r1, r5
	bl  FUN_ov16_02110624
	add r0, r9, #0x44
	mov r1, r7
	mov r2, r5
	bl  FUN_ov16_02110624
	str r6, [sp]
	sub r4, r6, #2
	str r4, [sp, #4]
	ldr r3, [r9, #0x24]
	add r0, r9, #0x44
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_021107a0
	str r7, [sp]
	str r4, [sp, #4]
	ldr r3, [r9, #0x34]
	mov r2, r7
	add r0, r9, #0x44
	mov r1, r5
	bl  FUN_ov16_021107a0
	add r0, r9, #0x44
	mov r1, #0x1f4
	bl  FUN_ov16_02110864
	mov r2, #4
	add r0, r9, #0x44
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_02110830
	add r0, r9, #0x44
	mov r1, r5
	bl  FUN_ov16_0211085c
	add r0, r9, #0x44
	mov r1, #0x10
	mov r2, #0x28
	bl  FUN_ov16_021108b4
	mov r1, #0x68
	add r0, r9, #0x44
	mov r2, r1
	bl  FUN_ov16_021108d8
	add r0, r9, #0x44
	mov r1, #0xf
	mov r2, #0x14
	bl  FUN_ov16_021108e4
	add r0, r9, #0x44
	mov r1, #5
	mov r2, #3
	bl  FUN_ov16_021108f0
	mov r1, r6
	mov r2, r8
	mov r3, r6
	add r0, r9, #0x44
	str r6, [sp]
	bl  FUN_ov16_02110938
	mov r1, r6
	mov r2, r5
	add r0, r9, #0x44
	bl  FUN_ov16_02110a04
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #0xa
	add sp, sp, #0x3ac
	strb r0, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211AFE4:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x3ac
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, sp, #0x32c
	mov r0, r8
	mov r1, r4
	mov r2, #0x80
	bl MIi_CpuClearFast
	ldr r3, _0211B254 ; =0x0211B960
	mov r2, #0x1e
_0211B01C:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B01C
	add r0, r9, #0x44
	bl  FUN_ov16_021109a0
	add r0, r9, #0x44
	bl  FUN_ov16_021105c0
	ldr r2, [r9, #0x28]
	mov r1, r5
	add r0, r9, #0x44
	bl  FUN_ov16_02110624
	add r0, r9, #0x44
	mov r1, r10
	mov r2, r5
	bl  FUN_ov16_02110624
	str r6, [sp]
	sub r4, r6, #2
	str r4, [sp, #4]
	ldr r3, [r9, #0x28]
	add r0, r9, #0x44
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_021107a0
	str r10, [sp]
	str r4, [sp, #4]
	ldr r3, [r9, #0x34]
	mov r2, r10
	add r0, r9, #0x44
	mov r1, r5
	bl  FUN_ov16_021107a0
	add r0, r9, #0x44
	mov r1, #0x1f4
	bl  FUN_ov16_02110864
	mov r2, #4
	add r0, r9, #0x44
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_02110830
	add r0, r9, #0x44
	mov r1, r5
	bl  FUN_ov16_0211085c
	add r0, r9, #0x44
	mov r1, #0x10
	mov r2, #0x28
	bl  FUN_ov16_021108b4
	add r0, r9, #0x44
	mov r1, #0x68
	mov r2, #0x58
	bl  FUN_ov16_021108d8
	mov r4, #5
	add r0, r9, #0x44
	mov r1, #0xf
	mov r2, r4
	bl  FUN_ov16_021108e4
	mov r1, r4
	add r0, r9, #0x44
	mov r2, #3
	bl  FUN_ov16_021108f0
	add r0, r9, #0x44
	mov r1, r6
	add r2, sp, #0x32c
	mov r3, r6
	str r6, [sp]
	bl  FUN_ov16_02110938
	mov r1, r6
	mov r2, r5
	add r0, r9, #0x44
	bl  FUN_ov16_02110a04
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #0xa
	add sp, sp, #0x3ac
	strb r0, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B158:
	mov r4, #8
	mov r0, r8
	mov r1, r4
	bl  FUN_ov16_020f1560
	ldrb r0, [r9, #0x41]
	cmp r0, #8
	moveq r0, #5
	addeq sp, sp, #0x3ac
	streqb r0, [r9, #0x40]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #9
	bne _0211B1C8
	ldr r0, _0211B240 ; =0x0209BA20
	mov r1, r8
	bl FUN_0205106c
	cmp r0, #0
	beq _0211B1A8
	bl FUN_0204fe90
	cmp r0, #4
	bhs _0211B1B8
_0211B1A8:
	mov r0, #7
	add sp, sp, #0x3ac
	strb r0, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B1B8:
	mov r0, #6
	add sp, sp, #0x3ac
	strb r0, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B1C8:
	mov r1, r4
	mov r0, r6
	bl  FUN_ov16_020f1560
	mov r0, #0xc
	add sp, sp, #0x3ac
	strb r0, [r9, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B1E4:
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x3ac
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #4]
	mov r1, r8
	mov r2, #0x22
	bl FUN_02041eac
	ldr r0, [r9, #4]
	mov r1, r6
	mov r2, #0xa
	bl FUN_02041eac
	strb r8, [r9, #0x40]
_0211B224:
	add sp, sp, #0x3ac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B22C: .word unk_0209A110
_0211B230: .word unk_02099ED4
_0211B234: .word unk_02099F38
_0211B238: .word unk_02099EB4
_0211B23C: .word ov25_0211B8F0
_0211B240: .word unk_0209BA20
_0211B244: .word ov25_0211B918
_0211B248: .word ov25_0211B930
_0211B24C: .word ov25_0211B948
_0211B250: .word ov25_0211B95C
_0211B254: .word ov25_0211B960
	arm_func_end FUN_ov25_0211a73c

	arm_func_start FUN_ov25_0211b258
FUN_ov25_0211b258: ; 0x0211B258
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r4, #0
	b _0211B278
_0211B268:
	mov r0, r10
	mov r1, r4
	bl FUN_ov25_0211a500
	add r4, r4, #1
_0211B278:
	cmp r4, #8
	blt _0211B268
	mov r4, #0
	b _0211B29C
_0211B288:
	mov r0, r10
	mov r1, r4
	bl FUN_ov25_0211a4c4
	add r0, r4, #1
	and r4, r0, #0xff
_0211B29C:
	cmp r4, #2
	blo _0211B288
	mov r9, #0
	add r7, r10, #0xc
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
	b _0211B2F0
_0211B2BC:
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
_0211B2F0:
	cmp r9, #1
	blt _0211B2BC
	add r0, r10, #0x44
	bl  FUN_ov16_021109a0
	add r0, r10, #0x44
	bl  FUN_ov16_021105c0
	ldr r0, _0211B340 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211B344 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r0, _0211B348 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	mov r0, #1
	bl  FUN_ov16_020f3f60
	ldr r0, _0211B34C ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B340: .word unk_02099EB4
_0211B344: .word unk_02099ED4
_0211B348: .word unk_02099F38
_0211B34C: .word unk_0209A0AC
	arm_func_end FUN_ov25_0211b258

	arm_func_start FUN_ov25_0211b350
FUN_ov25_0211b350: ; 0x0211B350
	bx lr
	arm_func_end FUN_ov25_0211b350

	arm_func_start FUN_ov25_0211b354
FUN_ov25_0211b354: ; 0x0211B354
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	bl FUN_ov25_0211a5b4
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0211B490 ; =0x02099EB4
	ldr r0, [r5]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B39C
	ldr r0, [r5]
	add r0, r0, #0xf00
	ldrh r6, [r0, #0x38]
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211B39C:
	tst r6, #4
	beq _0211B3B4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211B3B4:
	ldr r0, _0211B494 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	tst r6, #1
	beq _0211B40C
	ldrb r0, [r4, #0x40]
	cmp r0, #9
	bne _0211B400
	add r0, r4, #0x44
	bl  FUN_ov16_02110b04
	cmp r0, #1
	mov r0, r4
	bne _0211B3F8
	bl FUN_ov25_0211b5a4
	ldmfd sp!, {r4, r5, r6, pc}
_0211B3F8:
	bl FUN_ov25_0211b5d8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B400:
	mov r0, r4
	bl FUN_ov25_0211b60c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B40C:
	tst r6, #2
	beq _0211B43C
	ldrb r0, [r4, #0x40]
	cmp r0, #9
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r4, #0x44
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	mov r0, r4
	bl FUN_ov25_0211b5d8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B43C:
	tst r6, #0x30
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0x40]
	cmp r0, #9
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B498 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r4, #0x44
	bl  FUN_ov16_02110b04
	cmp r0, #1
	add r0, r4, #0x44
	bne _0211B480
	mov r1, #0
	mov r2, #1
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r4, r5, r6, pc}
_0211B480:
	mov r1, #1
	mov r2, #0
	bl  FUN_ov16_02110a04
	ldmfd sp!, {r4, r5, r6, pc}
_0211B490: .word unk_02099EB4
_0211B494: .word unk_02099ED4
_0211B498: .word unk_0209AC44
	arm_func_end FUN_ov25_0211b354

	arm_func_start FUN_ov25_0211b49c
FUN_ov25_0211b49c: ; 0x0211B49C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	bl FUN_ov25_0211a5b4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B598 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B59C ; =0x02099EB4
	mov r6, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_0210f20c
	mov r5, r0
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	cmp r5, #2
	bne _0211B544
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B500: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211B538 ; case 1
	b _0211B514 ; case 2
	b _0211B520 ; case 3
	b _0211B52C ; case 4
_0211B514:
	mov r0, r7
	bl FUN_ov25_0211b5a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B520:
	mov r0, r7
	bl FUN_ov25_0211b5d8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B52C:
	mov r0, r7
	bl FUN_ov25_0211b60c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B538:
	mov r0, r7
	bl FUN_ov25_0211b60c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B544:
	cmp r5, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #2
	mov r2, #0
	beq _0211B564
	cmp r0, #3
	beq _0211B56C
	b _0211B580
_0211B564:
	mov r1, r6
	b _0211B574
_0211B56C:
	mov r1, r2
	mov r2, r6
_0211B574:
	add r0, r7, #0x44
	bl  FUN_ov16_02110a04
	mov r2, r0
_0211B580:
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B5A0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B598: .word unk_02099ED4
_0211B59C: .word unk_02099EB4
_0211B5A0: .word unk_0209AC44
	arm_func_end FUN_ov25_0211b49c

	arm_func_start FUN_ov25_0211b5a4
FUN_ov25_0211b5a4: ; 0x0211B5A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x44
	bl  FUN_ov16_02110b0c
	mov r3, #9
	mov r2, #0xb
	ldr r0, _0211B5D4 ; =0x0209AC44
	mov r1, #1
	strb r3, [r4, #0x41]
	strb r2, [r4, #0x40]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211B5D4: .word unk_0209AC44
	arm_func_end FUN_ov25_0211b5a4

	arm_func_start FUN_ov25_0211b5d8
FUN_ov25_0211b5d8: ; 0x0211B5D8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x44
	bl  FUN_ov16_02110b0c
	mov r3, #0
	mov r2, #0xb
	ldr r0, _0211B608 ; =0x0209AC44
	mov r1, #1
	strb r3, [r4, #0x41]
	strb r2, [r4, #0x40]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211B608: .word unk_0209AC44
	arm_func_end FUN_ov25_0211b5d8

	arm_func_start FUN_ov25_0211b60c
FUN_ov25_0211b60c: ; 0x0211B60C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x40]
	cmp r0, #8
	bne _0211B644
	ldr r0, _0211B66C ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r1, #8
	mov r0, #0xb
	strb r1, [r4, #0x41]
	strb r0, [r4, #0x40]
	b _0211B65C
_0211B644:
	mov r2, #0
	mov r1, #0xb
	add r0, r4, #0x44
	strb r2, [r4, #0x41]
	strb r1, [r4, #0x40]
	bl  FUN_ov16_02110b0c
_0211B65C:
	ldr r0, _0211B670 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211B66C: .word unk_02099EB4
_0211B670: .word unk_0209AC44
	arm_func_end FUN_ov25_0211b60c

	arm_func_start FUN_ov25_0211b674
FUN_ov25_0211b674: ; 0x0211B674
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x44
	bl  FUN_ov16_02110578
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov25_0211b674

	arm_func_start FUN_ov25_0211b694
FUN_ov25_0211b694: ; 0x0211B694
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x44
	bl  FUN_ov16_02110578
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov25_0211b694
_0211B6AC:
	.byte 0x24, 0xB8, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0xB8, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0xF4, 0xB7, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0xB8, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x14, 0xB8, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0xC4, 0xB7, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0xD4, 0xB7, 0x11, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0xE4, 0xB7, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov25_0211b6f4
FUN_ov25_0211b6f4: ; 0x0211B6F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211B73C ; =0x0211B7AC
	str r0, [r4, #4]
	ldr r0, _0211B740 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _0211B744 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B73C: .word ov25_0211B7AC
_0211B740: .word 0x00009CCD
_0211B744: .word 0x0000EA3C
	arm_func_end FUN_ov25_0211b6f4

	.section .sinit, 4
ov25_0211B748:
	.word FUN_ov25_0211b6f4

	.data
	.global ov25_0211B760
ov25_0211B760:
	.byte 0x01, 0x00, 0x00, 0x00
	.global ov25_0211B764
ov25_0211B764:
	.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x61, 0x62
	.byte 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6D, 0x6E, 0x70, 0x71, 0x72, 0x73, 0x74
	.byte 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x4A, 0x4B
	.byte 0x4C, 0x4D, 0x4E, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x00, 0x00
	.global ov25_0211B7A0
ov25_0211B7A0:
	.byte 0x65, 0x72, 0x72, 0x20, 0x25, 0x6C, 0x75, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov25_0211B7AC
ov25_0211B7AC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x77, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x70, 0x77, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x70, 0x77, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x70, 0x77, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x70, 0x77, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x70, 0x77, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00, 0x70, 0x77, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00, 0x70, 0x77, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov25_0211B84C
ov25_0211B84C:
	.byte 0x94, 0xB6, 0x11, 0x02
	.byte 0x74, 0xB6, 0x11, 0x02, 0x54, 0xB3, 0x11, 0x02, 0x9C, 0xB4, 0x11, 0x02, 0xFC, 0xA5, 0x11, 0x02
	.byte 0x08, 0xB2, 0x02, 0x02, 0x3C, 0xA7, 0x11, 0x02, 0x50, 0xB3, 0x11, 0x02, 0x58, 0xB2, 0x11, 0x02
	.byte 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02
	.byte 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02
	.byte 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02
	.byte 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02
	.byte 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov25_0211B8B8
ov25_0211B8B8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x61, 0x73, 0x73, 0x77, 0x6F, 0x72, 0x64, 0x2E
	.byte 0x53, 0x50, 0x4C, 0x00
	.global ov25_0211B8D4
ov25_0211B8D4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x70, 0x61, 0x73, 0x73, 0x77, 0x6F, 0x72, 0x64, 0x2E, 0x53, 0x50, 0x44, 0x00
	.global ov25_0211B8F0
ov25_0211B8F0:
	.byte 0x83, 0x70, 0x83, 0x58, 0x83, 0x8F, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xF0, 0x5B, 0x94, 0xAD, 0x8D
	.byte 0x73, 0x2F, 0x82, 0xCD, 0x82, 0xC1, 0x82, 0xB1, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82
	.byte 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov25_0211B918
ov25_0211B918:
	.byte 0x49, 0x5A, 0x33, 0x49, 0x6E, 0x74, 0x65, 0x67
	.byte 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x50, 0x61, 0x73, 0x73, 0x4B, 0x65, 0x79, 0x00, 0x00, 0x00
	.global ov25_0211B930
ov25_0211B930:
	.byte 0x49, 0x5A, 0x33, 0x49, 0x6E, 0x74, 0x65, 0x67, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x50, 0x61
	.byte 0x73, 0x73, 0x4B, 0x65, 0x79, 0x00, 0x00, 0x00
	.global ov25_0211B948
ov25_0211B948:
	.byte 0x65, 0x72, 0x72, 0x6F, 0x72, 0x20, 0x70, 0x61
	.byte 0x73, 0x73, 0x77, 0x6F, 0x72, 0x64, 0x20, 0x6D, 0x61, 0x6B, 0x65, 0x00
	.global ov25_0211B95C
ov25_0211B95C:
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov25_0211B960
ov25_0211B960:
	.byte 0x83, 0x70, 0x81, 0x5B, 0x83, 0x65, 0x83, 0x42, 0x82, 0xC9, 0x82, 0x53, 0x5B, 0x90, 0x6C, 0x2F
	.byte 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xCC, 0x0A, 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x83, 0x4E
	.byte 0x83, 0x5E, 0x81, 0x5B, 0x82, 0xAA, 0x5B, 0x95, 0x4B, 0x97, 0x76, 0x2F, 0x82, 0xD0, 0x82, 0xC2
	.byte 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00

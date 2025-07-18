
	.include "/macros/function.inc"
	.include "/include/overlay53.inc"

	.text
	arm_func_start FUN_ov53_02119f00
FUN_ov53_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _02119FEC ; =0x02099EB4
	str r1, [r4, #8]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _02119FF0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r6, #0
	mov r1, r6
	add r0, r4, #0x14
	mov r2, #0x60
	bl MI_CpuFill8
	str r6, [r4, #0x74]
	str r6, [r4, #0x78]
	str r6, [r4, #0x7c]
	mov r5, #1
	str r5, [r4, #0x14]
	mov r0, r4
	bl FUN_ov53_0211b184
	mov r0, r4
	bl FUN_ov53_0211b30c
	mov r0, r4
	bl FUN_ov53_0211b400
	mov r0, r4
	bl FUN_ov53_0211bde0
	mov r0, r4
	bl FUN_ov53_0211c01c
	mov r0, r4
	bl FUN_ov53_0211c7c8
	mov r0, r4
	bl FUN_ov53_0211ccf0
	mov r0, r4
	bl FUN_ov53_0211d04c
	mov r0, r4
	mov r1, r6
	bl FUN_ov53_0211d534
	mov r1, r5
	mov r0, r4
	bl FUN_ov53_0211d534
	mov r0, r4
	mov r1, #2
	bl FUN_ov53_0211d534
	mov r0, r4
	bl FUN_ov53_0211d880
	mov r0, r4
	bl FUN_ov53_0211ad5c
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_02119FEC: .word unk_02099EB4
_02119FF0: .word unk_02099ED4
	arm_func_end FUN_ov53_02119f00

	arm_func_start FUN_ov53_02119ff4
FUN_ov53_02119ff4: ; 0x02119FF4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r1, _0211A0AC ; =0x02099ED8
	mov r6, r0
	ldr r0, [r1]
	mov r1, #0
	bl FUN_020552dc
	mov r5, r0
	bl FUN_0205430c
	add r4, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r3, [r6, #8]
	bic r1, r1, #0x1f00
	orr r1, r1, r3, lsl #8
	ldr r0, _0211A0B0 ; =0x02099EB4
	str r1, [r2]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A0B4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r6
	bl FUN_ov53_0211d068
	mov r0, r6
	bl FUN_ov53_0211c7e4
	mov r0, r6
	bl FUN_ov53_0211c0cc
	mov r0, r6
	bl FUN_ov53_0211c034
	mov r0, r6
	bl FUN_ov53_0211b448
	mov r0, r6
	bl FUN_ov53_0211b334
	mov r0, r6
	mov r1, #2
	bl FUN_ov53_0211b1e4
	mov r0, r6
	bl FUN_ov53_0211e16c
	mov r0, r5
	ldmia r4, {r1, r2, r3}
	bl FUN_020542c8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A0AC: .word unk_02099ED8
_0211A0B0: .word unk_02099EB4
_0211A0B4: .word unk_02099ED4
	arm_func_end FUN_ov53_02119ff4

	arm_func_start FUN_ov53_0211a0b8
FUN_ov53_0211a0b8: ; 0x0211A0B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211A1F8 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #6
	ldreq r0, [r6, #0x8a8]
	cmpeq r0, #0
	ldreq r0, [r6, #0x8c4]
	cmpeq r0, #0
	ldreq r0, [r6, #0x950]
	cmpeq r0, #0
	ldreq r0, [r6, #0x9f4]
	cmpeq r0, #0
	ldreq r0, [r6, #0x9e4]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211A12C
_0211A118:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0x974]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211A12C:
	cmp r4, #3
	blt _0211A118
	ldr r0, _0211A1FC ; =0x0209A0F4
	ldr r4, _0211A200 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #1
	bne _0211A17C
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r5
	strh r1, [r0, #0x38]
_0211A17C:
	tst r5, #1
	beq _0211A190
	mov r0, r6
	bl FUN_ov53_0211a204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A190:
	tst r5, #2
	beq _0211A1A4
	mov r0, r6
	bl FUN_ov53_0211a258
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A1A4:
	tst r5, #0x800
	beq _0211A1B8
	mov r0, r6
	bl FUN_ov53_0211a2e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A1B8:
	tst r5, #0x400
	beq _0211A1CC
	mov r0, r6
	bl FUN_ov53_0211a320
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A1CC:
	tst r7, #0xc0
	beq _0211A1E4
	mov r0, r6
	mov r1, r7
	bl FUN_ov53_0211a368
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A1E4:
	tst r7, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov53_0211a438
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A1F8: .word unk_02099ED4
_0211A1FC: .word unk_0209A0F4
_0211A200: .word unk_02099EB4
	arm_func_end FUN_ov53_0211a0b8

	arm_func_start FUN_ov53_0211a204
FUN_ov53_0211a204: ; 0x0211A204
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_0211A218: ; jump table
	b _0211A230 ; case 0
	b _0211A238 ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	b _0211A240 ; case 3
	b _0211A248 ; case 4
	b _0211A250 ; case 5
_0211A230:
	bl FUN_ov53_0211da18
	ldmfd sp!, {r3, pc}
_0211A238:
	bl FUN_ov53_0211dc18
	ldmfd sp!, {r3, pc}
_0211A240:
	bl FUN_ov53_0211c540
	ldmfd sp!, {r3, pc}
_0211A248:
	bl FUN_ov53_0211ca24
	ldmfd sp!, {r3, pc}
_0211A250:
	bl FUN_ov53_0211cedc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov53_0211a204

	arm_func_start FUN_ov53_0211a258
FUN_ov53_0211a258: ; 0x0211A258
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #5
	ldmeqfd sp!, {r4, pc}
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0211A2D0
_0211A278: ; jump table
	b _0211A28C ; case 0
	b _0211A2A8 ; case 1
	b _0211A2D0 ; case 2
	b _0211A2A8 ; case 3
	b _0211A2C0 ; case 4
_0211A28C:
	mov r1, #3
	bl FUN_ov53_0211a68c
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl FUN_ov53_0211bdac
	b _0211A2D0
_0211A2A8:
	mov r1, #3
	bl FUN_ov53_0211a68c
	mov r0, r4
	mov r1, #0
	bl FUN_ov53_0211ad4c
	b _0211A2D0
_0211A2C0:
	mov r1, #1
	mov r0, #0
	str r1, [r4, #0x950]
	str r0, [r4, #0x9a0]
_0211A2D0:
	ldr r0, _0211A2E0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A2E0: .word unk_0209AC44
	arm_func_end FUN_ov53_0211a258

	arm_func_start FUN_ov53_0211a2e4
FUN_ov53_0211a2e4: ; 0x0211A2E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ldmnefd sp!, {r4, pc}
	mov r1, #3
	bl FUN_ov53_0211ad4c
	mov r0, r4
	mov r1, #4
	bl FUN_ov53_0211a68c
	ldr r0, _0211A31C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A31C: .word unk_0209AC44
	arm_func_end FUN_ov53_0211a2e4

	arm_func_start FUN_ov53_0211a320
FUN_ov53_0211a320: ; 0x0211A320
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov53_0211d844
	cmp r0, #0
	bne _0211A344
	ldr r0, _0211A364 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A344:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	ldr r0, _0211A364 ; =0x0209AC44
	mov r1, #1
	str r1, [r4, #0x8a8]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A364: .word unk_0209AC44
	arm_func_end FUN_ov53_0211a320

	arm_func_start FUN_ov53_0211a368
FUN_ov53_0211a368: ; 0x0211A368
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr lr, [r5, #0x10]
	sub r0, lr, #4
	cmp r0, #1
	addls sp, sp, #0x18
	ldmlsfd sp!, {r4, r5, r6, pc}
	mvn r12, #0
	tst r1, #0x40
	movne r12, #0
	bne _0211A3A0
	tst r1, #0x80
	movne r12, #1
_0211A3A0:
	cmp r12, #0
	addlt sp, sp, #0x18
	ldmltfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211A430 ; =0x0211E72C
	ldr r4, _0211A434 ; =0x0211E6F0
	add r6, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldr r1, [r4]
	ldr r0, [r4, #4]
	cmp lr, #0
	str r1, [sp]
	str r0, [sp, #4]
	mov r4, #0
	cmpne lr, #1
	beq _0211A3EC
	cmp lr, #3
	moveq r4, #1
	b _0211A3F0
_0211A3EC:
	mov r4, #0
_0211A3F0:
	mov r0, #0x24
	mla r2, r4, r0, r5
	add r1, sp, #8
	add r1, r1, r4, lsl #3
	ldr r3, [r2, #0x958]
	add r0, sp, #0
	ldr r2, [r1, r12, lsl #2]
	ldr r1, [r0, r4, lsl #2]
	add r0, r3, r2
	bl _s32_div_f
	mov r2, r1
	mov r0, r5
	mov r1, r4
	bl FUN_ov53_0211d5c0
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_0211A430: .word 0x0211E72C
_0211A434: .word 0x0211E6F0
	arm_func_end FUN_ov53_0211a368

	arm_func_start FUN_ov53_0211a438
FUN_ov53_0211a438: ; 0x0211A438
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r0, [r7, #0x10]
	cmp r0, #0
	cmpne r0, #1
	beq _0211A464
	cmp r0, #4
	beq _0211A48C
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A464:
	ldr r1, [r7, #0x958]
	mov r0, r7
	add r1, r1, #8
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #28
	add r2, r2, r1, ror #28
	mov r1, #0
	bl FUN_ov53_0211d5c0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A48C:
	ldr r0, _0211A4F8 ; =0x0211E700
	mov r4, #2
	ldr r2, [r0]
	ldr r0, [r0, #4]
	ldr r8, _0211A4FC ; =0x02099F38
	str r0, [sp, #8]
	ldr r1, [r7, #0x9a0]
	ldr r6, [r7, #0x898]
	add r5, sp, #4
	str r2, [sp, #4]
	ldr r2, [r5, r1, lsl #2]
	ldr r0, [r8]
	mov r1, r6
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r1, [r7, #0x9a0]
	mov r0, #1
	eor r1, r1, #1
	str r1, [r7, #0x9a0]
	str r0, [sp]
	ldr r2, [r5, r1, lsl #2]
	ldr r0, [r8]
	mov r1, r6
	mov r3, r4
	bl FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A4F8: .word 0x0211E700
_0211A4FC: .word unk_02099F38
	arm_func_end FUN_ov53_0211a438

	arm_func_start FUN_ov53_0211a500
FUN_ov53_0211a500: ; 0x0211A500
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211A684 ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r6, #2
	mov r9, r1
	mov r5, #1
	mov r8, r2
	mov r1, r6
	mov r2, r5
	mov r7, r3
	mov r11, #0
	bl FUN_ov16_02112724
	add r2, r10, r9, lsl #2
	add r1, r10, r8, lsl #2
	str r0, [r2, #0x87c]
	ldr r1, [r1, #0x828]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r7
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
	mov r3, r6
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02113ec0
	ldr r2, [sp, #0x38]
	str r5, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0211A688 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r8
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	movs r4, r0
	beq _0211A678
	strb r11, [r4, #0x10]
	ldrb r0, [sp, #0x40]
	strb r11, [r4, #0xf]
	strh r11, [r4, #0xc]
	strb r11, [r4, #0x11]
	cmp r0, #1
	bne _0211A678
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r11
	mov r2, r7
	mov r3, r11
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r4, #0x3e
	bl FUN_ov16_0210e6fc
	add r2, r7, #1
	add r0, r4, #0x3e
	mov r1, r11
	mov r3, r11
	bl FUN_ov16_0210e720
_0211A678:
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A684: .word unk_02099F38
_0211A688: .word unk_02099EB4
	arm_func_end FUN_ov53_0211a500

	arm_func_start FUN_ov53_0211a68c
FUN_ov53_0211a68c: ; 0x0211A68C
	ldr r0, _0211A69C ; =0x02099EB4
	ldr r12, _0211A6A0 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211A69C: .word unk_02099EB4
_0211A6A0: .word FUN_ov16_0210efac
	arm_func_end FUN_ov53_0211a68c

	arm_func_start FUN_ov53_0211a6a4
FUN_ov53_0211a6a4: ; 0x0211A6A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211A754 ; =0x02099EB4
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
	ldr r0, _0211A758 ; =0x02099F38
	str r5, [sp]
	add r1, r9, r8, lsl #2
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x87c]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r1, r5
	mov r2, r8
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	add r0, r4, #0x3a
	mov r3, r5
	bl FUN_ov16_0210e720
	mov r2, r8
	add r0, r4, #0x3e
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A754: .word unk_02099EB4
_0211A758: .word unk_02099F38
	arm_func_end FUN_ov53_0211a6a4

	arm_func_start FUN_ov53_0211a75c
FUN_ov53_0211a75c: ; 0x0211A75C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211A8CC ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #6
	ldreq r0, [r6, #0x8a8]
	cmpeq r0, #0
	ldreq r0, [r6, #0x8c4]
	cmpeq r0, #0
	ldreq r0, [r6, #0x950]
	cmpeq r0, #0
	ldreq r0, [r6, #0x9f4]
	cmpeq r0, #0
	ldreq r0, [r6, #0x9e4]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211A7D0
_0211A7BC:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0x974]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211A7D0:
	cmp r4, #3
	blt _0211A7BC
	ldr r4, _0211A8D0 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211A894
_0211A7FC: ; jump table
	b _0211A894 ; case 0
	b _0211A814 ; case 1
	b _0211A844 ; case 2
	b _0211A85C ; case 3
	b _0211A878 ; case 4
	b _0211A82C ; case 5
_0211A814:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov53_0211a8d4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A82C:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov53_0211a994
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A844:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov53_0211a998
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A85C:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov53_0211aa44
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A878:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_ov53_0211aa44
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A894:
	ldr r0, [r6, #0x10]
	cmp r0, #3
	beq _0211A8AC
	cmp r0, #5
	beq _0211A8BC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A8AC:
	mov r0, r6
	mov r1, #0
	bl FUN_ov53_0211c6dc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A8BC:
	mov r0, r6
	mov r1, #0
	bl FUN_ov53_0211cf8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A8CC: .word unk_02099ED4
_0211A8D0: .word unk_02099EB4
	arm_func_end FUN_ov53_0211a75c

	arm_func_start FUN_ov53_0211a8d4
FUN_ov53_0211a8d4: ; 0x0211A8D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	str r1, [r5, #0x9fc]
	cmp r1, #0xf
	sub r2, r1, #0xf
	sub r12, r1, #5
	ldr r3, [r5, #0x958]
	blt _0211A918
	cmp r1, #0x1e
	bgt _0211A918
	cmp r2, r3
	bne _0211A90C
	bl FUN_ov53_0211a204
	ldmfd sp!, {r3, r4, r5, pc}
_0211A90C:
	mov r1, #0
	bl FUN_ov53_0211d5c0
	ldmfd sp!, {r3, r4, r5, pc}
_0211A918:
	cmp r1, #5
	blt _0211A94C
	cmp r1, #8
	bgt _0211A94C
	mov r4, #1
	mov r0, r5
	mov r1, r4
	mov r2, r12
	bl FUN_ov53_0211d5c0
	mov r0, r5
	mov r1, r4
	bl FUN_ov53_0211c6dc
	ldmfd sp!, {r3, r4, r5, pc}
_0211A94C:
	cmp r1, #0xa
	bne _0211A964
	mov r0, r5
	mov r1, #0
	bl FUN_ov53_0211cc74
	ldmfd sp!, {r3, r4, r5, pc}
_0211A964:
	cmp r1, #9
	bne _0211A97C
	mov r0, r5
	mov r1, #1
	bl FUN_ov53_0211cc74
	ldmfd sp!, {r3, r4, r5, pc}
_0211A97C:
	cmp r1, #0x1f
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl FUN_ov53_0211cf8c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov53_0211a8d4

	arm_func_start FUN_ov53_0211a994
FUN_ov53_0211a994: ; 0x0211A994
	bx lr
	arm_func_end FUN_ov53_0211a994

	arm_func_start FUN_ov53_0211a998
FUN_ov53_0211a998: ; 0x0211A998
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0xe
	bgt _0211A9F4
	cmp r4, #0
	addge pc, pc, r4, lsl #2
	b _0211AA28
_0211A9B8: ; jump table
	b _0211AA28 ; case 0
	b _0211AA24 ; case 1
	b _0211AA24 ; case 2
	b _0211AA14 ; case 3
	b _0211AA1C ; case 4
	b _0211AA28 ; case 5
	b _0211AA28 ; case 6
	b _0211AA28 ; case 7
	b _0211AA28 ; case 8
	b _0211AA08 ; case 9
	b _0211AA08 ; case 10
	b _0211AA28 ; case 11
	b _0211AA00 ; case 12
	b _0211AA14 ; case 13
	b _0211AA14 ; case 14
_0211A9F4:
	cmp r4, #0x1f
	beq _0211AA0C
	b _0211AA28
_0211AA00:
	bl FUN_ov53_0211a204
	b _0211AA28
_0211AA08:
	b _0211AA00
_0211AA0C:
	mov r0, r5
	b _0211AA00
_0211AA14:
	bl FUN_ov53_0211a258
	b _0211AA28
_0211AA1C:
	bl FUN_ov53_0211a2e4
	b _0211AA28
_0211AA24:
	bl FUN_ov53_0211a320
_0211AA28:
	cmp r4, #5
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r4, #8
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov53_0211a204
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov53_0211a998

	arm_func_start FUN_ov53_0211aa44
FUN_ov53_0211aa44: ; 0x0211AA44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r5, _0211AB24 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r5]
	mov r8, r1
	mov r6, #0
	add r1, sp, #4
	mov r7, r2
	str r6, [sp, #8]
	bl FUN_ov16_0210f48c
	mov r0, #1
	str r0, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r5]
	add r3, sp, #8
	bl FUN_ov16_0210ecb8
	cmp r7, #0
	bne _0211AB18
	cmp r8, #0xe
	bgt _0211AAB8
	cmp r8, #0xb
	blt _0211AAC4
	cmpne r8, #0xd
	cmpne r8, #0xe
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	b _0211AAC4
_0211AAB8:
	cmp r8, #0x20
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AAC4:
	ldr r0, [sp, #8]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	movne r6, #1
	cmp r0, #3
	bne _0211AAF4
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r6
	bl FUN_ov53_0211c75c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AAF4:
	cmp r0, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r6
	bl FUN_ov53_0211cfe0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AB18:
	str r6, [r4, #0x9fc]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AB24: .word unk_02099EB4
	arm_func_end FUN_ov53_0211aa44

	arm_func_start FUN_ov53_0211ab28
FUN_ov53_0211ab28: ; 0x0211AB28
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211ABA0
_0211AB40: ; jump table
	b _0211AB64 ; case 0
	b _0211AB6C ; case 1
	b _0211AB74 ; case 2
	b _0211AB7C ; case 3
	b _0211AB84 ; case 4
	b _0211AB8C ; case 5
	b _0211ABA0 ; case 6
	b _0211AB94 ; case 7
	b _0211AB9C ; case 8
_0211AB64:
	bl FUN_ov53_0211b2b8
	b _0211ABA0
_0211AB6C:
	bl FUN_ov53_0211b354
	b _0211ABA0
_0211AB74:
	bl FUN_ov53_0211b4dc
	b _0211ABA0
_0211AB7C:
	bl FUN_ov53_0211b988
	b _0211ABA0
_0211AB84:
	bl FUN_ov53_0211ba30
	b _0211ABA0
_0211AB8C:
	bl FUN_ov53_0211bb14
	b _0211ABA0
_0211AB94:
	bl FUN_ov53_0211bce0
	b _0211ABA0
_0211AB9C:
	bl FUN_ov53_0211bd14
_0211ABA0:
	mov r0, r4
	bl FUN_ov53_0211acdc
	ldr r0, _0211ACC8 ; =0x02099ED4
	ldr r5, _0211ACCC ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211ABE0
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211ABEC
_0211ABE0:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211ABEC:
	bl _ffix
	ldr r2, _0211ACD0 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r0, [r4, #0xc]
	cmp r0, #6
	bne _0211AC18
	ldr r0, _0211ACD4 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_0205722c
_0211AC18:
	mov r6, #0
	mov r5, #0x24
	b _0211AC44
_0211AC24:
	mla r0, r6, r5, r4
	ldr r0, [r0, #0x974]
	cmp r0, #0
	beq _0211AC40
	mov r0, r4
	mov r1, r6
	bl FUN_ov53_0211d728
_0211AC40:
	add r6, r6, #1
_0211AC44:
	cmp r6, #3
	blt _0211AC24
	ldr r0, [r4, #0x8a8]
	cmp r0, #0
	beq _0211AC60
	mov r0, r4
	bl FUN_ov53_0211beb8
_0211AC60:
	ldr r0, [r4, #0x950]
	cmp r0, #0
	beq _0211AC74
	mov r0, r4
	bl FUN_ov53_0211ca5c
_0211AC74:
	ldr r0, [r4, #0x9d0]
	cmp r0, #0
	beq _0211AC88
	mov r0, r4
	bl FUN_ov53_0211db08
_0211AC88:
	ldr r0, [r4, #0x9e4]
	cmp r0, #0
	beq _0211AC9C
	mov r0, r4
	bl FUN_ov53_0211dd48
_0211AC9C:
	ldr r0, [r4, #0x8c4]
	cmp r0, #0
	beq _0211ACB0
	mov r0, r4
	bl FUN_ov53_0211c5a0
_0211ACB0:
	ldr r0, [r4, #0x9f4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov53_0211cef8
	ldmfd sp!, {r4, r5, r6, pc}
_0211ACC8: .word unk_02099ED4
_0211ACCC: .word unk_0209A110
_0211ACD0: .word unk_02099F58
_0211ACD4: .word unk_02099EC0
	arm_func_end FUN_ov53_0211ab28

	arm_func_start FUN_ov53_0211acd8
FUN_ov53_0211acd8: ; 0x0211ACD8
	bx lr
	arm_func_end FUN_ov53_0211acd8

	arm_func_start FUN_ov53_0211acdc
FUN_ov53_0211acdc: ; 0x0211ACDC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0211AD48 ; =0x0211E6E8
	mov r4, r0
	ldr r12, [r1]
	ldr r3, [r1, #4]
	ldr r1, [r4, #0x74]
	add r2, sp, #0
	str r12, [sp]
	str r3, [sp, #4]
	ldr r1, [r2, r1, lsl #2]
	str r1, [r4, #0x14]
	bl FUN_ov53_0211d844
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	moveq r0, #1
	moveq r1, #0
	streqb r0, [r4, #0x21]
	streq r1, [r4, #0x14]
	ldr r0, [r4, #4]
	add r1, r4, #0x14
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211AD48: .word 0x0211E6E8
	arm_func_end FUN_ov53_0211acdc

	arm_func_start FUN_ov53_0211ad4c
FUN_ov53_0211ad4c: ; 0x0211AD4C
	mov r2, #5
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov53_0211ad4c

	arm_func_start FUN_ov53_0211ad5c
FUN_ov53_0211ad5c: ; 0x0211AD5C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r5, #0
	add r4, sp, #0xc
	mov r6, r0
	mov r0, r4
	mov r1, r5
	mov r2, #0x20
	mov r8, r5
	bl MI_CpuFill8
	add r0, sp, #4
	mov r1, r5
	mov r2, #8
	bl MI_CpuFill8
	mov r7, #0x3c0
	add r0, r6, #0x80
	mov r1, r5
	mov r2, r7
	bl MI_CpuFill8
	mov r2, r7
	add r0, r6, #0x440
	mov r1, r5
	bl MI_CpuFill8
	ldr r9, _0211B050 ; =0x0209BA20
	mov r1, r5
	mov r0, r9
	str r5, [r6, #0x800]
	str r5, [r6, #0x804]
	bl FUN_0207249c
	mov r7, r0
	bl FUN_ov16_020f081c
	bl FUN_ov16_020f078c
	mov r2, r0
	ldrh r1, [r7, #0x22]
	mov r0, r9
	mov r3, r5
	bl FUN_0206fb74
_0211ADF0:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _0211AE2C
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211AE2C
	mov r0, r7
	bl FUN_0206cbf8
	ldr r1, [r6, #0x804]
	mov r1, r1, lsl #1
	strh r0, [r4, r1]
	ldr r0, [r6, #0x804]
	add r0, r0, #1
	str r0, [r6, #0x804]
_0211AE2C:
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211ADF0
	add r9, sp, #0xc
	mov r0, r6
	mov r1, r9
	bl FUN_ov53_0211b054
	mov r5, #0
	add r7, r6, #0x80
	mov r11, #1
_0211AE54:
	mov r0, r5, lsl #1
	ldrh r0, [r9, r0]
	mov r1, r8
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _0211AFBC
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211AFBC
	mov r0, #0x3c
	mul r10, r5, r0
	mov r2, #0x20
	add r0, r4, #0x1c
	add r1, r7, r10
	bl MI_CpuCopy8
	ldr r0, _0211B050 ; =0x0209BA20
	add r10, r6, r10
	mov r1, r4
	mov r2, #0x25
	mov r3, r8
	bl FUN_0204f02c
	str r0, [r10, #0xa0]
	mov r0, r5, lsl #1
	ldrh r1, [r9, r0]
	mov r0, r4
	strh r1, [r10, #0xa4]
	bl FUN_0206cc00
	strh r0, [r10, #0xa6]
	mov r0, r4
	bl FUN_0204fb60
	strh r0, [r10, #0xa8]
	mov r0, r4
	bl FUN_0206d8b8
	str r0, [r10, #0xac]
	mov r0, r4
	bl FUN_0206d8a8
	str r0, [r10, #0xb0]
	mov r0, r4
	bl FUN_0206d714
	strb r0, [r10, #0xb9]
	strb r11, [r10, #0xba]
	str r8, [r10, #0xb4]
	mov r0, r4
	bl FUN_0206d454
	cmp r0, #0
	ldrne r0, [r10, #0xb4]
	orrne r0, r0, #0x20
	strne r0, [r10, #0xb4]
	mov r0, r4
	bl FUN_0206d464
	cmp r0, #0
	ldrne r0, [r10, #0xb4]
	orrne r0, r0, #0x40
	strne r0, [r10, #0xb4]
	mov r0, r4
	bl FUN_0206d474
	cmp r0, #0
	ldrne r0, [r10, #0xb4]
	orrne r0, r0, #0x80
	strne r0, [r10, #0xb4]
	mov r0, r4
	bl FUN_0206d484
	cmp r0, #0
	ldrne r0, [r10, #0xb4]
	orrne r0, r0, #0x100
	strne r0, [r10, #0xb4]
	mov r0, r4
	bl FUN_0206d494
	cmp r0, #0
	ldrne r0, [r10, #0xb4]
	orrne r0, r0, #0x200
	strne r0, [r10, #0xb4]
	mov r0, r4
	bl FUN_0206d4a4
	cmp r0, #0
	ldrne r0, [r10, #0xb4]
	orrne r0, r0, #0x400
	strne r0, [r10, #0xb4]
	mov r0, r4
	bl FUN_0206d4b4
	cmp r0, #0
	ldrne r0, [r10, #0xb4]
	orrne r0, r0, #0x800
	strne r0, [r10, #0xb4]
	mov r0, r4
	bl FUN_0206d4c4
	cmp r0, #0
	ldrne r0, [r10, #0xb4]
	orrne r0, r0, #0x1000
	strne r0, [r10, #0xb4]
_0211AFBC:
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211AE54
	mov r7, #0
	add r5, sp, #4
	ldr r0, _0211B050 ; =0x0209BA20
	mov r1, r7
	mov r2, r5
	mov r3, #4
	str r7, [sp]
	mov r4, r7
	bl FUN_0204b2f4
	mov r2, #1
	mov r1, #0x3c
_0211AFF4:
	mov r8, r4
	cmp r0, #0
	ble _0211B028
	mla r10, r7, r1, r6
	ldrh r9, [r10, #0xa4]
_0211B008:
	mov r3, r8, lsl #1
	ldrh r3, [r5, r3]
	cmp r9, r3
	streqb r2, [r10, #0xb8]
	beq _0211B028
	add r8, r8, #1
	cmp r8, r0
	blt _0211B008
_0211B028:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211AFF4
	str r0, [r6, #0x800]
	add r0, r6, #0x80
	add r1, r6, #0x440
	mov r2, #0x3c0
	bl MI_CpuCopy8
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B050: .word unk_0209BA20
	arm_func_end FUN_ov53_0211ad5c

	arm_func_start FUN_ov53_0211b054
FUN_ov53_0211b054: ; 0x0211B054
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	mov r9, #0x20
	add r7, sp, #0x30
	mov r11, r0
	mov r4, #0
	mov r5, r1
	mov r0, r7
	mov r1, r4
	mov r2, r9
	bl MI_CpuFill8
	add r6, sp, #8
	mov r1, r4
	mov r0, r6
	mov r2, #8
	bl MI_CpuFill8
	add r8, sp, #0x10
	mov r1, r4
	mov r0, r8
	mov r2, r9
	bl MI_CpuFill8
	mov r2, r9
	mov r0, r5
	mov r1, r7
	bl MI_CpuCopy8
	ldr r9, _0211B180 ; =0x0209BA20
	str r4, [sp]
	mov r1, r4
	mov r0, r9
	mov r2, r6
	mov r3, #4
	bl FUN_0204b2f4
	mov r2, r8
	str r4, [sp]
	mov r8, r0
	mov r0, r9
	mov r1, r4
	mov r3, #0x10
	str r4, [sp, #4]
	bl FUN_0204b540
	cmp r0, #0
	mov r2, r8
	ble _0211B164
	mov r9, #1
	mov r1, r4
_0211B108:
	mov r3, r1
	mov r12, r1
	cmp r8, #0
	ble _0211B140
	mov r10, r4, lsl #1
	ldrh lr, [r7, r10]
_0211B120:
	mov r10, r12, lsl #1
	ldrh r10, [r6, r10]
	cmp lr, r10
	moveq r3, r9
	beq _0211B140
	add r12, r12, #1
	cmp r12, r8
	blt _0211B120
_0211B140:
	cmp r3, #0
	moveq r3, r4, lsl #1
	ldreqh r10, [r7, r3]
	moveq r3, r2, lsl #1
	add r4, r4, #1
	addeq r2, r2, #1
	streqh r10, [r5, r3]
	cmp r4, r0
	blt _0211B108
_0211B164:
	add r0, sp, #8
	mov r1, r5
	mov r2, r8, lsl #1
	str r8, [r11, #0x800]
	bl MI_CpuCopy8
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B180: .word unk_0209BA20
	arm_func_end FUN_ov53_0211b054

	arm_func_start FUN_ov53_0211b184
FUN_ov53_0211b184: ; 0x0211B184
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	add r0, r0, #8
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r4, _0211B1E0 ; =0x02099EC0
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
_0211B1E0: .word unk_02099EC0
	arm_func_end FUN_ov53_0211b184

	arm_func_start FUN_ov53_0211b1e4
FUN_ov53_0211b1e4: ; 0x0211B1E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r1
	mov r10, r0
	cmp r4, #2
	blo _0211B26C
	ldr r4, _0211B2B4 ; =0x02099EC0
	mov r9, #0
	ldr r0, [r4]
	bl FUN_020568a4
	ldr r0, [r4]
	bl FUN_02057c60
	mov r4, #0xc
	add r0, r10, #8
	add r8, r0, #0x800
	mov r11, #1
	mov r7, r9
	mov r5, r4
	mov r6, r4
	b _0211B260
_0211B230:
	mla r0, r9, r4, r8
	mov r1, r11
	bl FUN_ov16_020f338c
	mla r0, r9, r5, r8
	bl FUN_ov16_020f33fc
	mla r0, r9, r6, r10
	str r7, [r0, #0x808]
	str r7, [r0, #0x80c]
	strb r7, [r0, #0x810]
	strb r7, [r0, #0x811]
	strb r7, [r0, #0x812]
	add r9, r9, #1
_0211B260:
	cmp r9, #2
	blt _0211B230
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B26C:
	add r0, r10, #8
	add r0, r0, #0x800
	mov r5, #0xc
	mla r0, r4, r5, r0
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r10, #8
	add r0, r0, #0x800
	mla r0, r4, r5, r0
	bl FUN_ov16_020f33fc
	mla r0, r4, r5, r10
	mov r1, #0
	str r1, [r0, #0x808]
	str r1, [r0, #0x80c]
	strb r1, [r0, #0x810]
	strb r1, [r0, #0x811]
	strb r1, [r0, #0x812]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B2B4: .word unk_02099EC0
	arm_func_end FUN_ov53_0211b1e4

	arm_func_start FUN_ov53_0211b2b8
FUN_ov53_0211b2b8: ; 0x0211B2B8
	stmfd sp!, {r4, lr}
	ldr r1, _0211B300 ; =0x02099EC0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_02057c2c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	add r1, r4, #8
	ldr r0, _0211B304 ; =0x0211EABC
	add r1, r1, #0x800
	bl FUN_ov16_020f316c
	add r1, r4, #0x14
	ldr r0, _0211B308 ; =0x0211EAD4
	add r1, r1, #0x800
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211B300: .word unk_02099EC0
_0211B304: .word ov53_0211EABC
_0211B308: .word ov53_0211EAD4
	arm_func_end FUN_ov53_0211b2b8

	arm_func_start FUN_ov53_0211b30c
FUN_ov53_0211b30c: ; 0x0211B30C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x820
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x820
	mov r1, #0x10
	bl FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov53_0211b30c

	arm_func_start FUN_ov53_0211b334
FUN_ov53_0211b334: ; 0x0211B334
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x820
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r4, #0x820
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov53_0211b334

	arm_func_start FUN_ov53_0211b354
FUN_ov53_0211b354: ; 0x0211B354
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r0, r4, #8
	add r0, r0, #0x800
	mov r1, #2
	bl FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r9, #0
	ldr r6, _0211B3E0 ; =0x0211EAF4
	mov r8, r9
	mov r7, #1
	mov r5, #0x3c
_0211B390:
	mla r0, r9, r5, r4
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r2, [r0, #0xa6]
	ldr r0, [r4, #0x808]
	mov r1, r6
	add r3, r4, #0x820
	bl FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211B390
	mov r0, r4
	mov r1, r8
	bl FUN_ov53_0211b1e4
	mov r0, #2
	str r0, [r4, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B3E0: .word ov53_0211EAF4
	arm_func_end FUN_ov53_0211b354

	arm_func_start FUN_ov53_0211b3e4
FUN_ov53_0211b3e4: ; 0x0211B3E4
	stmfd sp!, {r3, lr}
	mov r2, r0
	mov r0, r1
	add r1, r2, #0x820
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov53_0211b3e4

	arm_func_start FUN_ov53_0211b400
FUN_ov53_0211b400: ; 0x0211B400
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x28
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x800
	mov r2, #0x54
	bl MI_CpuFill8
	add r0, r5, #0x7c
	mov r1, r4
	add r0, r0, #0x800
	mov r2, #0x2c
	bl MI_CpuFill8
	ldr r0, _0211B444 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B444: .word unk_02099F38
	arm_func_end FUN_ov53_0211b400

	arm_func_start FUN_ov53_0211b448
FUN_ov53_0211b448: ; 0x0211B448
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211B4D8 ; =0x02099F38
	b _0211B484
_0211B460:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x87c]
	cmp r1, #0
	beq _0211B480
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x87c]
_0211B480:
	add r4, r4, #1
_0211B484:
	cmp r4, #0xb
	blt _0211B460
	mov r4, #0
	mov r7, r4
	ldr r6, _0211B4D8 ; =0x02099F38
	b _0211B4C0
_0211B49C:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x828]
	cmp r1, #0
	beq _0211B4BC
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x828]
_0211B4BC:
	add r4, r4, #1
_0211B4C0:
	cmp r4, #0x15
	blt _0211B49C
	ldr r0, _0211B4D8 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B4D8: .word unk_02099F38
	arm_func_end FUN_ov53_0211b448

	arm_func_start FUN_ov53_0211b4dc
FUN_ov53_0211b4dc: ; 0x0211B4DC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xb4
	mov r5, r0
	add r0, r5, #0x820
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0xb4
	ldmnefd sp!, {r4, r5, pc}
	ldr lr, _0211B554 ; =0x0211E78C
	add r12, sp, #4
	mov r4, #0xb
_0211B508:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211B508
	mov r4, #1
	str r4, [sp]
	add r3, r5, #0x28
	ldr r1, [r5, #0x814]
	ldr r0, _0211B558 ; =0x0211EB0C
	add r2, sp, #4
	add r3, r3, #0x800
	bl FUN_ov16_020f5450
	mov r0, r5
	mov r1, r4
	bl FUN_ov53_0211b1e4
	mov r0, #3
	str r0, [r5, #0xc]
	add sp, sp, #0xb4
	ldmfd sp!, {r4, r5, pc}
_0211B554: .word 0x0211E78C
_0211B558: .word ov53_0211EB0C
	arm_func_end FUN_ov53_0211b4dc

	arm_func_start FUN_ov53_0211b55c
FUN_ov53_0211b55c: ; 0x0211B55C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x828]
	ldr r6, _0211B618 ; =0x02099F38
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
_0211B618: .word unk_02099F38
	arm_func_end FUN_ov53_0211b55c

	arm_func_start FUN_ov53_0211b61c
FUN_ov53_0211b61c: ; 0x0211B61C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r7, #0
	mov r6, r0
	str r1, [sp, #0x20]
	mov r4, #4
	mov r10, r2
	add r0, sp, #0x30
	mov r1, r7
	mov r2, r4
	ldr r8, [sp, #0x58]
	mov r9, r3
	str r7, [sp, #0x28]
	mov r5, #0x80
	bl MI_CpuFill8
	mov r2, r4
	add r0, sp, #0x2c
	mov r1, r7
	bl MI_CpuFill8
	str r7, [r8]
	ldr r0, [r6, #0x10]
	add r2, sp, #0x30
	cmp r0, #4
	cmpne r0, #5
	moveq r5, #0x100
	add r3, sp, #0x2c
	mov r0, r5
	mov r1, #0x20
	moveq r7, #1
	bl FUN_02054070
	ldr r4, _0211B838 ; =0x02099F38
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r0, [r4]
	bl FUN_02059630
	mov r2, #0
	str r0, [r8]
	mov r1, r0
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
	ldr r1, [r8]
	mov r2, #0
	str r2, [sp, #0x24]
	ldr r0, [r4]
	add r2, sp, #0x24
	add r3, sp, #0x28
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r8]
	ldr r6, [sp, #0x24]
	bl FUN_ov16_02111438
	mov r11, r0
	ldr r0, [r4]
	ldr r1, [r8]
	bl FUN_ov16_02111458
	mov r5, r0
	ldr r0, _0211B83C ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, #5
	bl FUN_02043310
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _0211B83C ; =0x02099F50
	str r7, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r6
	mov r3, r11
	bl FUN_020425fc
	ldr r0, _0211B83C ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	mov r2, r6
	ldr r3, [sp, #0x28]
	ldr r1, [r8]
	ldr r0, [r4]
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	ldr r0, [r9]
	mov r1, r10
	add r2, r0, #1
	str r2, [r9]
	ldr r3, [r8]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, r6
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	mov r3, r6
	mov r1, r10
	bl FUN_ov16_02113d88
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r11, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	bl FUN_ov16_02113d08
	ldr r0, [sp, #0x60]
	ldr r3, [sp, #0x5c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x64]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B838: .word unk_02099F38
_0211B83C: .word unk_02099F50
	arm_func_end FUN_ov53_0211b61c

	arm_func_start FUN_ov53_0211b840
FUN_ov53_0211b840: ; 0x0211B840
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
_0211B84C:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x87c]
	mov r0, r4
	bl FUN_ov53_0211b968
	add r5, r5, #1
	cmp r5, #0xb
	blt _0211B84C
	mov r5, #0
_0211B86C:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x8cc]
	mov r0, r4
	bl FUN_ov53_0211b968
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B86C
	ldr r0, [r4, #0x10]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211B898: ; jump table
	b _0211B8B0 ; case 0
	b _0211B8B0 ; case 1
	b _0211B8B0 ; case 2
	b _0211B900 ; case 3
	b _0211B928 ; case 4
	b _0211B938 ; case 5
_0211B8B0:
	mov r5, #0
_0211B8B4:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x87c]
	mov r0, r4
	bl FUN_ov53_0211b948
	add r5, r5, #1
	cmp r5, #0xb
	blt _0211B8B4
	mov r5, #0
_0211B8D4:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x8cc]
	mov r0, r4
	bl FUN_ov53_0211b948
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B8D4
	ldr r1, [r4, #0x88c]
	mov r0, r4
	bl FUN_ov53_0211b948
	ldmfd sp!, {r3, r4, r5, pc}
_0211B900:
	ldr r1, [r4, #0x89c]
	mov r0, r4
	bl FUN_ov53_0211b948
	ldr r1, [r4, #0x894]
	mov r0, r4
	bl FUN_ov53_0211b948
	ldr r1, [r4, #0x88c]
	mov r0, r4
	bl FUN_ov53_0211b948
	ldmfd sp!, {r3, r4, r5, pc}
_0211B928:
	ldr r1, [r4, #0x898]
	mov r0, r4
	bl FUN_ov53_0211b948
	ldmfd sp!, {r3, r4, r5, pc}
_0211B938:
	ldr r1, [r4, #0x8a4]
	mov r0, r4
	bl FUN_ov53_0211b948
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov53_0211b840

	arm_func_start FUN_ov53_0211b948
FUN_ov53_0211b948: ; 0x0211B948
	ldr r0, _0211B95C ; =0x02099F38
	ldr r2, _0211B960 ; =0x00007FFF
	ldr r0, [r0]
	ldr r12, _0211B964 ; = FUN_ov16_02114204
	bx r12
_0211B95C: .word unk_02099F38
_0211B960: .word 0x00007FFF
_0211B964: .word FUN_ov16_02114204
	arm_func_end FUN_ov53_0211b948

	arm_func_start FUN_ov53_0211b968
FUN_ov53_0211b968: ; 0x0211B968
	ldr r0, _0211B97C ; =0x02099F38
	ldr r2, _0211B980 ; =0x00004210
	ldr r0, [r0]
	ldr r12, _0211B984 ; = FUN_ov16_02114204
	bx r12
_0211B97C: .word unk_02099F38
_0211B980: .word 0x00004210
_0211B984: .word FUN_ov16_02114204
	arm_func_end FUN_ov53_0211b968

	arm_func_start FUN_ov53_0211b988
FUN_ov53_0211b988: ; 0x0211B988
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211BA28 ; =0x02099F38
	b _0211B9F4
_0211B9A0:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x828]
	cmp r1, #0
	beq _0211B9F0
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x828]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B9F0
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x828]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211B9F0:
	add r7, r7, #1
_0211B9F4:
	cmp r7, #0x15
	blt _0211B9A0
	ldr r5, _0211BA2C ; =0x02099EC0
	ldr r0, [r5]
	bl FUN_020571ac
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	bl FUN_020576a0
	cmp r0, #0
	movle r0, #4
	strle r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BA28: .word unk_02099F38
_0211BA2C: .word unk_02099EC0
	arm_func_end FUN_ov53_0211b988

	arm_func_start FUN_ov53_0211ba30
FUN_ov53_0211ba30: ; 0x0211BA30
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov53_0211ba78
	mov r0, r4
	bl FUN_ov53_0211bdfc
	mov r0, r4
	bl FUN_ov53_0211bfc4
	mov r0, r4
	bl FUN_ov53_0211c078
	mov r0, r4
	bl FUN_ov53_0211d0ec
	mov r0, r4
	bl FUN_ov53_0211d554
	mov r0, r4
	bl FUN_ov53_0211d8a8
	mov r0, #5
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov53_0211ba30

	arm_func_start FUN_ov53_0211ba78
FUN_ov53_0211ba78: ; 0x0211BA78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	ldr r1, _0211BB10 ; =0x02099F38
	mov r5, r0
	mov r4, #1
	ldr r0, [r1]
	mov r2, r4
	mov r1, #2
	bl FUN_ov16_02112724
	mov r8, #0
	mov r9, r0
	str r8, [sp, #0x14]
	str r9, [r5, #0x87c]
	str r8, [sp]
	str r8, [sp, #4]
	add r6, sp, #0x14
	str r8, [sp, #8]
	mov r7, #0x1f4
	str r7, [sp, #0xc]
	mov r0, r5
	mov r1, r9
	mov r2, r6
	str r4, [sp, #0x10]
	mov r3, r8
	bl FUN_ov53_0211b55c
	str r8, [sp]
	str r8, [sp, #4]
	sub r3, r7, #1
	str r8, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, r5
	mov r1, r9
	mov r2, r6
	mov r3, #0x11
	str r4, [sp, #0x10]
	bl FUN_ov53_0211b55c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BB10: .word unk_02099F38
	arm_func_end FUN_ov53_0211ba78

	arm_func_start FUN_ov53_0211bb14
FUN_ov53_0211bb14: ; 0x0211BB14
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211BCDC ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211BCB8
_0211BB40: ; jump table
	b _0211BB58 ; case 0
	b _0211BBE8 ; case 1
	b _0211BCB8 ; case 2
	b _0211BC44 ; case 3
	b _0211BC9C ; case 4
	b _0211BCA8 ; case 5
_0211BB58:
	mov r0, r4
	bl FUN_ov53_0211cd08
	mov r0, r4
	bl FUN_ov53_0211c7e4
	mov r0, r4
	bl FUN_ov53_0211c0cc
	mov r0, r4
	bl FUN_ov53_0211c078
	mov r0, r4
	bl FUN_ov53_0211d9dc
	mov r0, #0xc
	str r0, [sp]
	mov r0, r4
	mov r1, #8
	mov r7, #0
	mov r2, r7
	mov r6, #1
	mov r3, r6
	bl FUN_ov53_0211a6a4
	mov r5, #4
	str r5, [sp]
	mov r0, r4
	mov r1, #5
	mov r2, r7
	mov r3, r6
	bl FUN_ov53_0211a6a4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	mov r0, #3
	str r0, [sp]
	mov r0, r4
	bl FUN_ov53_0211a6a4
	mov r0, r4
	bl FUN_ov53_0211bf50
	b _0211BCB8
_0211BBE8:
	mov r7, #3
	mov r6, #4
	mov r5, #0xc
	mov r0, r4
	mov r2, r7
	mov r3, r6
	mov r1, #8
	str r5, [sp]
	bl FUN_ov53_0211a6a4
	mov r5, #5
	mov r2, #2
	mov r0, r4
	mov r1, r5
	mov r3, r2
	str r6, [sp]
	bl FUN_ov53_0211a6a4
	mov r0, r4
	mov r1, r6
	str r7, [sp]
	mov r2, r6
	mov r3, r5
	bl FUN_ov53_0211a6a4
	b _0211BCB8
_0211BC44:
	mov r0, r4
	bl FUN_ov53_0211c7e4
	mov r0, r4
	bl FUN_ov53_0211c034
	mov r0, r4
	bl FUN_ov53_0211c148
	mov r6, #3
	mov r0, #0xc
	str r0, [sp]
	mov r0, r4
	mov r1, #8
	mov r2, r6
	mov r5, #4
	mov r3, r5
	bl FUN_ov53_0211a6a4
	mov r1, r5
	str r6, [sp]
	mov r3, r6
	mov r0, r4
	mov r2, #2
	bl FUN_ov53_0211a6a4
	b _0211BCB0
_0211BC9C:
	mov r0, r4
	bl FUN_ov53_0211c838
	b _0211BCB0
_0211BCA8:
	mov r0, r4
	bl FUN_ov53_0211cd5c
_0211BCB0:
	mov r0, r4
	bl FUN_ov53_0211bf8c
_0211BCB8:
	mov r0, r4
	bl FUN_ov53_0211b840
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BCDC: .word unk_02099ED4
	arm_func_end FUN_ov53_0211bb14

	arm_func_start FUN_ov53_0211bce0
FUN_ov53_0211bce0: ; 0x0211BCE0
	stmfd sp!, {r4, lr}
	ldr r1, _0211BD10 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #8
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211BD10: .word unk_02099ED4
	arm_func_end FUN_ov53_0211bce0

	arm_func_start FUN_ov53_0211bd14
FUN_ov53_0211bd14: ; 0x0211BD14
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x94c]
	ldr r5, [r4, #0x78]
	cmp r0, #0
	ldr r6, [r4, #0x7c]
	beq _0211BD5C
	mov r0, #0
	str r0, [r4, #0x94c]
	bl FUN_ov0_020be3f8
	ldr r0, _0211BDA8 ; =0x0209A454
	mov r1, #0x83
	str r1, [r0, #0x84]
_0211BD5C:
	cmp r5, r6
	cmpeq r5, #0
	ldr r4, [r4, #4]
	mov r1, #0
	bne _0211BD88
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r4, r5, r6, pc}
_0211BD88:
	mov r2, r5
	mov r0, r4
	bl FUN_02041eac
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_0211BDA8: .word unk_0209A454
	arm_func_end FUN_ov53_0211bd14

	arm_func_start FUN_ov53_0211bdac
FUN_ov53_0211bdac: ; 0x0211BDAC
	ldr r3, _0211BDDC ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211BDC8
	cmp r1, #0
	cmpeq r2, #0
	bxne lr
_0211BDC8:
	mov r3, #7
	str r1, [r0, #0x78]
	str r2, [r0, #0x7c]
	str r3, [r0, #0xc]
	bx lr
_0211BDDC: .word unk_0209A454
	arm_func_end FUN_ov53_0211bdac

	arm_func_start FUN_ov53_0211bde0
FUN_ov53_0211bde0: ; 0x0211BDE0
	add r0, r0, #0xa8
	ldr r12, _0211BDF8 ; =MI_CpuFill8
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #8
	bx r12
_0211BDF8: .word MI_CpuFill8
	arm_func_end FUN_ov53_0211bde0

	arm_func_start FUN_ov53_0211bdfc
FUN_ov53_0211bdfc: ; 0x0211BDFC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r1, #0xd8
	str r1, [sp]
	mov r5, #0
	str r5, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r1, #0x64
	str r1, [sp, #0xc]
	mov r1, #2
	mov r2, #5
	mov r6, r0
	str r5, [sp, #0x10]
	bl FUN_ov53_0211a500
	cmp r0, #0
	beq _0211BE58
	mov r4, #0x14
	mov r2, r5
	mov r1, #0xa0
	mov r3, #0x57
	str r4, [sp]
	bl FUN_ov16_0210e674
_0211BE58:
	mov r0, #0xe8
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, r6
	mov r1, #3
	mov r2, #5
	str r4, [sp, #0x10]
	bl FUN_ov53_0211a500
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r12, #0x14
	mov r2, r4
	mov r1, #0xa0
	mov r3, #0x57
	str r12, [sp]
	bl FUN_ov16_0210e674
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov53_0211bdfc

	arm_func_start FUN_ov53_0211beb8
FUN_ov53_0211beb8: ; 0x0211BEB8
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0x74]
	ldr r2, [r0, #0x8ac]
	add r1, r12, #2
	add r1, r0, r1, lsl #2
	ldr r1, [r1, #0x87c]
	add r2, r2, #1
	str r2, [r0, #0x8ac]
	cmp r2, #0xa
	mov r3, r12, lsl #1
	bge _0211BF00
	mov r2, #0
	str r2, [sp]
	ldr r0, _0211BF4C ; =0x02099F38
	mov r2, #1
	ldr r0, [r0]
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211BF00:
	cmp r2, #0xa
	ldmnefd sp!, {r3, pc}
	eor r2, r12, #1
	mov r3, #0
	add r1, r2, #2
	str r3, [r0, #0x8a8]
	str r3, [r0, #0x8ac]
	str r2, [r0, #0x74]
	mov r2, r2, lsl #1
	strb r3, [r0, #0x21]
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0x87c]
	ldr r0, _0211BF4C ; =0x02099F38
	str r3, [sp]
	ldr r0, [r0]
	add r3, r2, #1
	mov r2, #1
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211BF4C: .word unk_02099F38
	arm_func_end FUN_ov53_0211beb8

	arm_func_start FUN_ov53_0211bf50
FUN_ov53_0211bf50: ; 0x0211BF50
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x74]
	mov r2, #0
	add r1, r3, #2
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0x87c]
	ldr r0, _0211BF88 ; =0x02099F38
	str r2, [sp]
	mov r2, r3, lsl #1
	ldr r0, [r0]
	add r3, r2, #1
	mov r2, #1
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211BF88: .word unk_02099F38
	arm_func_end FUN_ov53_0211bf50

	arm_func_start FUN_ov53_0211bf8c
FUN_ov53_0211bf8c: ; 0x0211BF8C
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x74]
	mov r2, #0
	add r1, r3, #2
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0x87c]
	ldr r0, _0211BFC0 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r3, r3, lsl #1
	mov r2, #1
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211BFC0: .word unk_02099F38
	arm_func_end FUN_ov53_0211bf8c

	arm_func_start FUN_ov53_0211bfc4
FUN_ov53_0211bfc4: ; 0x0211BFC4
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r1, [r0, #0x88c]
	cmp r1, #0
	addne sp, sp, #0x14
	ldmneia sp!, {pc}
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	mov r1, #0x64
	str r1, [sp, #0xc]
	mov r12, #1
	mov r1, #4
	mov r2, #2
	mov r3, #0
	str r12, [sp, #0x10]
	bl FUN_ov53_0211a500
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov53_0211bfc4

	arm_func_start FUN_ov53_0211c01c
FUN_ov53_0211c01c: ; 0x0211C01C
	ldr r12, _0211C030 ; =MI_CpuFill8
	add r0, r0, #0x8b0
	mov r1, #0
	mov r2, #0x1c
	bx r12
_0211C030: .word MI_CpuFill8
	arm_func_end FUN_ov53_0211c01c

	arm_func_start FUN_ov53_0211c034
FUN_ov53_0211c034: ; 0x0211C034
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x890]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211C070 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r1, #0
	ldr r0, _0211C074 ; =0x02099EB4
	str r1, [r4, #0x890]
	ldr r0, [r0]
	mov r1, #4
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r4, pc}
_0211C070: .word unk_02099F38
_0211C074: .word unk_02099EB4
	arm_func_end FUN_ov53_0211c034

	arm_func_start FUN_ov53_0211c078
FUN_ov53_0211c078: ; 0x0211C078
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r1, [r0, #0x890]
	cmp r1, #0
	addne sp, sp, #0x14
	ldmneia sp!, {pc}
	mov r1, #0x98
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r1, #0x64
	str r1, [sp, #0xc]
	mov r12, #1
	mov r1, #5
	mov r3, #0
	str r12, [sp, #0x10]
	bl FUN_ov53_0211a500
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov53_0211c078

	arm_func_start FUN_ov53_0211c0cc
FUN_ov53_0211c0cc: ; 0x0211C0CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0x894]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211C140 ; =0x02099F38
	mov r6, #0
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	str r6, [r7, #0x894]
	mov r5, r6
	b _0211C118
_0211C0FC:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x8b0]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #2
	str r5, [r0, #0x8b0]
	add r6, r6, #1
_0211C118:
	cmp r6, #4
	blt _0211C0FC
	ldr r4, _0211C144 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r4]
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #7
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C140: .word unk_02099F38
_0211C144: .word unk_02099EB4
	arm_func_end FUN_ov53_0211c0cc

	arm_func_start FUN_ov53_0211c148
FUN_ov53_0211c148: ; 0x0211C148
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r0, [r10, #0x894]
	mov r5, #0x60
	cmp r0, #0
	mov r6, #1
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211C534 ; =0x02099F38
	mov r2, r6
	ldr r0, [r0]
	mov r1, #0xc
	bl FUN_ov16_02112724
	ldr r1, _0211C538 ; =0x0211EA38
	mov r7, #0
	mov r4, r0
	add r8, sp, #0x1c
	ldmia r1, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	str r7, [sp, #0x18]
	str r7, [sp, #0x14]
	str r4, [r10, #0x894]
	mov r0, r7
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x58
	str r0, [sp, #8]
	mov r0, #0x12c
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r3, #0x12
	add r2, sp, #0x18
	str r6, [sp, #0x10]
	mov r9, r7
	bl FUN_ov53_0211b55c
	mov r0, r7
	str r0, [sp]
	mov r0, #0x88
	stmib sp, {r0, r5}
	add r0, r5, #0xca
	str r0, [sp, #0xc]
	mov r0, r7
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x18
	mov r3, #0xb
	bl FUN_ov53_0211b55c
	mov r5, #0x8a
	mov r6, #0x63
	mov r7, #0x128
	add r11, sp, #0x14
	b _0211C25C
_0211C228:
	str r11, [sp]
	stmib sp, {r5, r6}
	str r7, [sp, #0xc]
	ldr r1, [r8, r9, lsl #2]
	mov r0, r10
	mov r2, r4
	add r3, sp, #0x18
	bl FUN_ov53_0211b61c
	add r0, r10, r9, lsl #2
	ldr r1, [sp, #0x14]
	add r6, r6, #0x10
	str r1, [r0, #0x8b0]
	add r9, r9, #1
_0211C25C:
	cmp r9, #4
	blt _0211C228
	mov r0, #0
	str r0, [sp]
	mov r1, #0x88
	mov r0, #0x60
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r3, r0, #0xc7
	str r3, [sp, #0xc]
	mov r7, #1
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r4
	mov r3, #0xa
	str r7, [sp, #0x10]
	bl FUN_ov53_0211b55c
	mov r0, r10
	bl FUN_ov53_0211d844
	cmp r0, #0
	beq _0211C2C0
	mov r0, r10
	bl FUN_ov53_0211d858
	tst r0, #0x1000
	beq _0211C2FC
_0211C2C0:
	mov r0, #0
	str r0, [sp]
	mov r1, #0x88
	mov r0, #0x60
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r3, r0, #0xc9
	str r3, [sp, #0xc]
	mov r5, #1
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r4
	mov r3, #0xc
	str r5, [sp, #0x10]
	bl FUN_ov53_0211b55c
_0211C2FC:
	mov r9, #0
	mov r6, #0x70
	str r9, [sp]
	mov r5, #0x88
	add r11, sp, #0x18
	stmib sp, {r5, r6}
	add r8, r6, #0xbb
	str r8, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	str r7, [sp, #0x10]
	mov r3, #0xd
	bl FUN_ov53_0211b55c
	add r6, r6, #0x10
	str r9, [sp]
	stmib sp, {r5, r6}
	str r8, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	mov r3, #0xd
	bl FUN_ov53_0211b55c
	str r9, [sp]
	str r5, [sp, #4]
	add r0, r6, #0x10
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r2, r11
	mov r3, #0xd
	mov r0, r10
	mov r1, r4
	str r7, [sp, #0x10]
	bl FUN_ov53_0211b55c
	mov r6, #0x60
	mov r4, r9
	mov r8, #5
	add r7, r6, #0xc7
	mov r11, r9
	b _0211C3E4
_0211C3A0:
	str r6, [sp]
	mov r0, #0x58
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0211C53C ; =0x02099EB4
	str r7, [sp, #0xc]
	ldr r0, [r0]
	mov r1, r11
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0210fba4
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	add r6, r6, #0x10
	add r9, r9, #1
_0211C3E4:
	cmp r9, #4
	blt _0211C3A0
	str r6, [sp]
	mov r6, #0x38
	str r6, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r1, r4, lsl #0x10
	mov r2, r8
	ldr r5, _0211C53C ; =0x02099EB4
	str r7, [sp, #0xc]
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	mov r3, #0x9a
	mov r8, #1
	bl FUN_ov16_0210fba4
	mov r0, #0xa8
	stmia sp, {r0, r6}
	mov r0, #0x18
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r1, r4, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	mov r2, #0xc
	mov r3, #0x60
	bl FUN_ov16_0210fba4
	movs r5, r0
	beq _0211C4AC
	mov r4, #0
	mov r1, r4
	mov r2, r8
	mov r3, r4
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r3, r4
	add r0, r5, #0x3a
	mov r2, #3
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r8
	add r0, r5, #0x3e
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r4
	mov r3, r4
	mov r2, #4
	bl FUN_ov16_0210e720
_0211C4AC:
	mov r5, #0
	str r5, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r4, #0xa8
	mov r6, #7
	mov r9, #0xd
	str r4, [sp, #8]
	sub r7, r7, #1
	ldr r8, _0211C53C ; =0x02099EB4
	str r7, [sp, #0xc]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_0210fba4
	add r0, r9, #1
	mov r2, r0, lsl #0x10
	str r4, [sp]
	mov r0, #0x98
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r8]
	mov r1, r6
	mov r3, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fba4
	mov r0, r10
	mov r1, #1
	bl FUN_ov53_0211d534
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C534: .word unk_02099F38
_0211C538: .word ov53_0211EA38
_0211C53C: .word unk_02099EB4
	arm_func_end FUN_ov53_0211c148

	arm_func_start FUN_ov53_0211c540
FUN_ov53_0211c540: ; 0x0211C540
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x97c]
	cmp r1, #0
	bne _0211C57C
	bl FUN_ov53_0211d844
	cmp r0, #0
	beq _0211C570
	mov r0, r4
	bl FUN_ov53_0211d858
	tst r0, #0x1000
	beq _0211C57C
_0211C570:
	ldr r0, _0211C59C ; =0x0209AC44
	mov r1, #9
	b _0211C588
_0211C57C:
	ldr r0, _0211C59C ; =0x0209AC44
	mov r1, #1
	str r1, [r4, #0x8c4]
_0211C588:
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #0xc
	bl FUN_ov53_0211a68c
	ldmfd sp!, {r4, pc}
_0211C59C: .word unk_0209AC44
	arm_func_end FUN_ov53_0211c540

	arm_func_start FUN_ov53_0211c5a0
FUN_ov53_0211c5a0: ; 0x0211C5A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r5, [r8, #0x97c]
	ldr r0, [r8, #0x8c8]
	mov r1, r5, lsl #4
	add r1, r1, #0x60
	add r7, r0, #1
	mov r0, r1, lsl #0x10
	ldr r6, [r8, #0x894]
	mov r4, #2
	ldr r9, _0211C6D4 ; =0x02099F38
	str r7, [r8, #0x8c8]
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r9]
	mov r3, #0x88
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_02113b78
	cmp r7, #3
	bge _0211C614
	ldr r0, [r9]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02113f7c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C614:
	cmp r7, #6
	bge _0211C640
	mov r0, #1
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02113ec0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C640:
	cmp r7, #9
	bge _0211C664
	ldr r0, [r9]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02113f7c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C664:
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211C6D8 ; =0x0211E710
	add r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, #0
	str r0, [r8, #0x8c4]
	str r0, [r8, #0x8c8]
	cmp r5, #3
	addls pc, pc, r5, lsl #2
	b _0211C6CC
_0211C694: ; jump table
	b _0211C6A4 ; case 0
	b _0211C6B8 ; case 1
	b _0211C6B8 ; case 2
	b _0211C6B8 ; case 3
_0211C6A4:
	mov r0, r8
	mov r1, #4
	bl FUN_ov53_0211ad4c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C6B8:
	sub r0, r5, #1
	ldr r1, [r3, r0, lsl #2]
	mov r0, r8
	mov r2, r1
	bl FUN_ov53_0211bdac
_0211C6CC:
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C6D4: .word unk_02099F38
_0211C6D8: .word 0x0211E710
	arm_func_end FUN_ov53_0211c5a0

	arm_func_start FUN_ov53_0211c6dc
FUN_ov53_0211c6dc: ; 0x0211C6DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0, #0x97c]
	ldr r6, [r0, #0x894]
	mov r2, r2, lsl #4
	add r2, r2, #0x60
	mov r2, r2, lsl #0x10
	mov r0, r2, asr #0x10
	mov r4, #2
	mov r7, r1
	ldr r5, _0211C758 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r5]
	mov r3, #0x88
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02113f7c
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C758: .word unk_02099F38
	arm_func_end FUN_ov53_0211c6dc

	arm_func_start FUN_ov53_0211c75c
FUN_ov53_0211c75c: ; 0x0211C75C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldr r1, [r0, #0x894]
	mov r3, #2
	bne _0211C784
	ldr r0, _0211C7C4 ; =0x02099F38
	mov r2, r3
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211C784:
	ldrh r2, [r2, #8]
	ldr r0, [r0, #0x9fc]
	cmp r0, r2
	bne _0211C7B0
	mov r2, #1
	str r2, [sp]
	ldr r0, _0211C7C4 ; =0x02099F38
	mov r2, r3
	ldr r0, [r0]
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_0211C7B0:
	ldr r0, _0211C7C4 ; =0x02099F38
	mov r2, r3
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211C7C4: .word unk_02099F38
	arm_func_end FUN_ov53_0211c75c

	arm_func_start FUN_ov53_0211c7c8
FUN_ov53_0211c7c8: ; 0x0211C7C8
	add r0, r0, #0x14c
	ldr r12, _0211C7E0 ; =MI_CpuFill8
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #0xc
	bx r12
_0211C7E0: .word MI_CpuFill8
	arm_func_end FUN_ov53_0211c7c8

	arm_func_start FUN_ov53_0211c7e4
FUN_ov53_0211c7e4: ; 0x0211C7E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x898]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211C830 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	mov r5, #0
	str r5, [r6, #0x898]
	ldr r1, [r6, #0x8c0]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r0, _0211C834 ; =0x02099EB4
	str r5, [r6, #0x8c0]
	ldr r0, [r0]
	mov r1, #4
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, pc}
_0211C830: .word unk_02099F38
_0211C834: .word unk_02099EB4
	arm_func_end FUN_ov53_0211c7e4

	arm_func_start FUN_ov53_0211c838
FUN_ov53_0211c838: ; 0x0211C838
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r10, r0
	ldr r0, [r10, #0x898]
	cmp r0, #0
	addne sp, sp, #0x58
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211CA18 ; =0x02099F38
	mov r1, #4
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r7, #0
	mov r4, r0
	add r1, sp, #0x18
	str r7, [sp, #0x14]
	mov r2, #0x20
	mov r3, #0x3c
	mov r5, #0xfa
	mov r0, #0x10
_0211C888:
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	strb r7, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211C888
	str r4, [r10, #0x898]
	str r7, [sp]
	stmib sp, {r2, r3}
	str r5, [sp, #0xc]
	mov r6, #1
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	str r6, [sp, #0x10]
	mov r3, #0x13
	bl FUN_ov53_0211b55c
	str r7, [sp]
	mov r7, #0x38
	mov r11, #6
	str r7, [sp, #4]
	mov r9, #0x66
	str r9, [sp, #8]
	sub r5, r5, #1
	mov r0, r10
	str r5, [sp, #0xc]
	mov r8, #0
	mov r1, r4
	add r2, sp, #0x14
	mov r3, r11
	str r8, [sp, #0x10]
	bl FUN_ov53_0211b55c
	mov r3, r11
	mov r11, #2
	str r11, [sp]
	mov r0, #0x98
	stmib sp, {r0, r9}
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	str r6, [sp, #0x10]
	bl FUN_ov53_0211b55c
	mov r0, r10
	mov r6, #0x44
	sub r5, r5, #1
	bl FUN_ov53_0211d86c
	mov r2, r0
	ldr r1, _0211CA1C ; =0x0211EB2C
	add r0, sp, #0x18
	bl sprintf
	add r0, r10, #0x8c0
	stmia sp, {r0, r8}
	str r6, [sp, #8]
	add r1, sp, #0x18
	mov r2, r4
	add r3, sp, #0x14
	str r5, [sp, #0xc]
	mov r0, r10
	bl FUN_ov53_0211b61c
	mov r3, r7
	str r9, [sp]
	mov r7, #0x30
	str r7, [sp, #4]
	mov r6, #0x18
	str r6, [sp, #8]
	mov r5, #0x258
	ldr r4, _0211CA20 ; =0x02099EB4
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #9
	mov r1, #4
	bl FUN_ov16_0210fba4
	str r9, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #0x98
	mov r2, #0xa
	mov r1, #4
	bl FUN_ov16_0210fba4
	sub r0, r5, #1
	str r8, [sp]
	mov r5, #0x100
	str r5, [sp, #4]
	mov r5, #0xc0
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #4
	mov r3, r8
	mov r2, #0xb
	bl FUN_ov16_0210fba4
	mov r0, r10
	mov r1, r11
	bl FUN_ov53_0211d534
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CA18: .word unk_02099F38
_0211CA1C: .word ov53_0211EB2C
_0211CA20: .word unk_02099EB4
	arm_func_end FUN_ov53_0211c838

	arm_func_start FUN_ov53_0211ca24
FUN_ov53_0211ca24: ; 0x0211CA24
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x9a0]
	mov r1, #1
	str r1, [r0, #0x950]
	cmp r2, #0
	bne _0211CA4C
	ldr r0, _0211CA58 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211CA4C:
	ldr r0, _0211CA58 ; =0x0209AC44
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211CA58: .word unk_0209AC44
	arm_func_end FUN_ov53_0211ca24

	arm_func_start FUN_ov53_0211ca5c
FUN_ov53_0211ca5c: ; 0x0211CA5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	ldr r7, _0211CC58 ; =0x0211E6D8
	mov r4, r0
	ldr r8, [r7, #4]
	ldr r0, _0211CC5C ; =0x0211E73C
	ldr r6, [r4, #0x898]
	add r5, sp, #0xc
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r0, [r4, #0x954]
	ldr r1, [r7]
	add r0, r0, #1
	str r8, [sp, #8]
	str r1, [sp, #4]
	str r0, [r4, #0x954]
	cmp r0, #3
	ldr r3, [r4, #0x9a0]
	mov r8, #0
	add r2, sp, #4
	bge _0211CAD4
	ldr r0, _0211CC60 ; =0x02099F38
	str r8, [sp]
	ldr r2, [r2, r3, lsl #2]
	ldr r0, [r0]
	ldr r3, [r5, r3, lsl #3]
	mov r1, r6
	bl FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CAD4:
	cmp r0, #6
	bge _0211CB04
	ldr r0, _0211CC60 ; =0x02099F38
	str r8, [sp]
	add r1, r5, r3, lsl #3
	ldr r2, [r2, r3, lsl #2]
	ldr r3, [r1, #4]
	ldr r0, [r0]
	mov r1, r6
	bl FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CB04:
	cmp r0, #9
	bge _0211CB30
	ldr r0, _0211CC60 ; =0x02099F38
	str r8, [sp]
	ldr r2, [r2, r3, lsl #2]
	ldr r0, [r0]
	ldr r3, [r5, r3, lsl #3]
	mov r1, r6
	bl FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CB30:
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r8, [r4, #0x950]
	str r8, [r4, #0x954]
	cmp r3, #0
	mov r0, r4
	bne _0211CB5C
	mov r1, r8
	bl FUN_ov53_0211ad4c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CB5C:
	bl FUN_ov53_0211d844
	mov r9, r0
	ldr r5, _0211CC64 ; =0x02099ED8
	mov r1, r9
	ldr r0, [r5]
	mov r2, r8
	bl FUN_020554b0
	ldr r10, [r4, #0x958]
	mov r1, #0x3c
	mla r1, r10, r1, r4
	ldrb r1, [r1, #0xb8]
	mov r7, r0
	cmp r1, #1
	bne _0211CBF4
	ldr r0, _0211CC68 ; =0x0209BA20
	mov r1, r8
	mov r2, r9
	bl FUN_0204d438
	mov r6, #1
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl FUN_02055938
	ldr r0, [r5]
	mov r1, r7
	bl FUN_02055274
	mov r2, r8
	ldr r5, _0211CC6C ; =0x02099EC0
	mov r1, r9
	ldr r0, [r5]
	bl FUN_02056a88
	mov r1, r0
	ldr r0, [r5]
	mov r2, r6
	bl FUN_02056e04
	ldr r0, [r5]
	mov r1, r6
	bl FUN_02057020
_0211CBF4:
	ldr r5, _0211CC68 ; =0x0209BA20
	mov r1, r8
	mov r0, r5
	mov r2, r9
	bl FUN_0204d354
	mov r0, r5
	mov r1, r8
	mov r2, r9
	bl FUN_0204d3c0
	mov r0, #0x3c
	mla r0, r10, r0, r4
	strh r8, [r0, #0xa4]
	strh r8, [r0, #0xa6]
	str r8, [r0, #0xac]
	str r8, [r0, #0xb0]
	ldr r3, _0211CC70 ; =0x020A0640
	mov r0, r4
	strh r9, [r3, #0xa4]
	mov r3, #1
	mov r1, r8
	mov r2, r8
	str r3, [r4, #0x94c]
	bl FUN_ov53_0211bdac
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211CC58: .word 0x0211E6D8
_0211CC5C: .word 0x0211E73C
_0211CC60: .word unk_02099F38
_0211CC64: .word unk_02099ED8
_0211CC68: .word unk_0209BA20
_0211CC6C: .word unk_02099EC0
_0211CC70: .word unk_020A0640
	arm_func_end FUN_ov53_0211ca5c

	arm_func_start FUN_ov53_0211cc74
FUN_ov53_0211cc74: ; 0x0211CC74
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r2, _0211CCE8 ; =0x0211E6E0
	mov r7, r0
	ldr r3, [r2]
	ldr r0, [r2, #4]
	ldr r8, _0211CCEC ; =0x02099F38
	str r0, [sp, #8]
	ldr r2, [r7, #0x9a0]
	add r4, sp, #4
	str r3, [sp, #4]
	mov r9, #2
	ldr r5, [r7, #0x898]
	mov r6, r1
	ldr r0, [r8]
	ldr r2, [r4, r2, lsl #2]
	mov r1, r5
	mov r3, r9
	bl FUN_ov16_02113f7c
	str r6, [r7, #0x9a0]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	ldr r2, [r4, r6, lsl #2]
	mov r1, r5
	mov r3, r9
	bl FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211CCE8: .word 0x0211E6E0
_0211CCEC: .word unk_02099F38
	arm_func_end FUN_ov53_0211cc74

	arm_func_start FUN_ov53_0211ccf0
FUN_ov53_0211ccf0: ; 0x0211CCF0
	ldr r12, _0211CD04 ; =MI_CpuFill8
	add r0, r0, #0x9f0
	mov r1, #0
	mov r2, #0xc
	bx r12
_0211CD04: .word MI_CpuFill8
	arm_func_end FUN_ov53_0211ccf0

	arm_func_start FUN_ov53_0211cd08
FUN_ov53_0211cd08: ; 0x0211CD08
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x8a4]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211CD54 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	mov r5, #0
	str r5, [r6, #0x8a4]
	ldr r1, [r6, #0x9f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r0, _0211CD58 ; =0x02099EB4
	str r5, [r6, #0x9f0]
	ldr r0, [r0]
	mov r1, #0x1b
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, pc}
_0211CD54: .word unk_02099F38
_0211CD58: .word unk_02099EB4
	arm_func_end FUN_ov53_0211cd08

	arm_func_start FUN_ov53_0211cd5c
FUN_ov53_0211cd5c: ; 0x0211CD5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r10, r0
	ldr r0, [r10, #0x8a4]
	cmp r0, #0
	addne sp, sp, #0x58
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211CED0 ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r4, #0
	mov r6, r0
	add r1, sp, #0x18
	str r4, [sp, #0x14]
	mov r2, #0x20
	mov r3, #0x38
	mov r7, #0xc8
	mov r8, #0x30
	mov r9, #0x18
	mov r0, #0x10
_0211CDB4:
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	strb r4, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211CDB4
	str r6, [r10, #0x8a4]
	str r4, [sp]
	stmib sp, {r2, r3}
	str r7, [sp, #0xc]
	mov r3, #1
	str r3, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #0x14
	bl FUN_ov53_0211b55c
	str r4, [sp]
	mov r5, #0x68
	str r5, [sp, #4]
	str r5, [sp, #8]
	sub r7, r7, #1
	mov r0, r10
	str r7, [sp, #0xc]
	mov r4, #0
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #7
	str r4, [sp, #0x10]
	bl FUN_ov53_0211b55c
	mov r0, r10
	mov r11, #0x46
	bl FUN_ov53_0211d86c
	mov r2, r0
	ldr r1, _0211CED4 ; =0x0211EB4C
	add r0, sp, #0x18
	bl sprintf
	add r0, r10, #0x9f0
	str r0, [sp]
	stmib sp, {r4, r11}
	add r1, sp, #0x18
	mov r2, r6
	add r3, sp, #0x14
	mov r0, r10
	str r7, [sp, #0xc]
	bl FUN_ov53_0211b61c
	mov r7, #0x1b
	stmia sp, {r5, r8, r9}
	mov r3, r5
	mov r6, #0x258
	ldr r5, _0211CED8 ; =0x02099EB4
	str r6, [sp, #0xc]
	ldr r0, [r5]
	mov r2, #0x1f
	mov r1, r7
	bl FUN_ov16_0210fba4
	str r4, [sp]
	mov r3, r4
	mov r4, #0x100
	str r4, [sp, #4]
	mov r4, #0xc0
	sub r0, r6, #1
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0x20
	bl FUN_ov16_0210fba4
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CED0: .word unk_02099F38
_0211CED4: .word ov53_0211EB4C
_0211CED8: .word unk_02099EB4
	arm_func_end FUN_ov53_0211cd5c

	arm_func_start FUN_ov53_0211cedc
FUN_ov53_0211cedc: ; 0x0211CEDC
	mov r1, #1
	str r1, [r0, #0x9f4]
	ldr r0, _0211CEF0 ; =0x0209AC44
	ldr r12, _0211CEF4 ; =FUN_0202cf6c
	bx r12
_0211CEF0: .word unk_0209AC44
_0211CEF4: .word FUN_0202cf6c
	arm_func_end FUN_ov53_0211cedc

	arm_func_start FUN_ov53_0211cef8
FUN_ov53_0211cef8: ; 0x0211CEF8
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x9f8]
	ldr r1, [r0, #0x8a4]
	add r3, r2, #1
	str r3, [r0, #0x9f8]
	cmp r3, #3
	mov r2, #2
	mov r12, #0
	bge _0211CF30
	ldr r0, _0211CF88 ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211CF30:
	cmp r3, #6
	bge _0211CF54
	mov r3, #1
	str r3, [sp]
	ldr r0, _0211CF88 ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_0211CF54:
	cmp r3, #9
	bge _0211CF70
	ldr r0, _0211CF88 ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211CF70:
	ldmnefd sp!, {r3, pc}
	mov r1, r12
	str r12, [r0, #0x9f4]
	str r12, [r0, #0x9f8]
	bl FUN_ov53_0211ad4c
	ldmfd sp!, {r3, pc}
_0211CF88: .word unk_02099F38
	arm_func_end FUN_ov53_0211cef8

	arm_func_start FUN_ov53_0211cf8c
FUN_ov53_0211cf8c: ; 0x0211CF8C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211CFDC ; =0x02099F38
	ldr r6, [r0, #0x8a4]
	mov r5, #2
	mov r7, r1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02113f7c
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CFDC: .word unk_02099F38
	arm_func_end FUN_ov53_0211cf8c

	arm_func_start FUN_ov53_0211cfe0
FUN_ov53_0211cfe0: ; 0x0211CFE0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldr r1, [r0, #0x8a4]
	mov r3, #2
	bne _0211D008
	ldr r0, _0211D048 ; =0x02099F38
	mov r2, r3
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211D008:
	ldrh r2, [r2, #8]
	ldr r0, [r0, #0x9fc]
	cmp r0, r2
	bne _0211D034
	mov r2, #1
	str r2, [sp]
	ldr r0, _0211D048 ; =0x02099F38
	mov r2, r3
	ldr r0, [r0]
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_0211D034:
	ldr r0, _0211D048 ; =0x02099F38
	mov r2, r3
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211D048: .word unk_02099F38
	arm_func_end FUN_ov53_0211cfe0

	arm_func_start FUN_ov53_0211d04c
FUN_ov53_0211d04c: ; 0x0211D04C
	add r0, r0, #0xcc
	ldr r12, _0211D064 ; =MI_CpuFill8
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #0x80
	bx r12
_0211D064: .word MI_CpuFill8
	arm_func_end FUN_ov53_0211d04c

	arm_func_start FUN_ov53_0211d068
FUN_ov53_0211d068: ; 0x0211D068
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
	mov r8, r5
	ldr r7, _0211D0E4 ; =0x02099F38
	b _0211D0C8
_0211D084:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x8cc]
	cmp r1, #0
	beq _0211D0A4
	ldr r0, [r7]
	bl FUN_ov16_021128c4
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x8cc]
_0211D0A4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x90c]
	cmp r1, #0
	beq _0211D0C4
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r8, [r0, #0x90c]
_0211D0C4:
	add r5, r5, #1
_0211D0C8:
	cmp r5, #0x10
	blt _0211D084
	ldr r0, _0211D0E8 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D0E4: .word unk_02099F38
_0211D0E8: .word unk_02099EB4
	arm_func_end FUN_ov53_0211d068

	arm_func_start FUN_ov53_0211d0ec
FUN_ov53_0211d0ec: ; 0x0211D0EC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	mov r6, #0
	mov r9, r0
	str r6, [sp, #0x44]
	mov r0, #0xf
	str r6, [sp, #0x14]
	str r0, [sp, #0x18]
	b _0211D514
_0211D110:
	ldr r0, [sp, #0x14]
	mov r1, #0x78
	mul r1, r0, r1
	mov r0, r1
	add r0, r0, #0x14
	mov r0, r0, lsl #0x10
	str r0, [sp, #0x40]
	mov r0, r1
	add r0, r0, #0xb
	str r0, [sp, #0x1c]
	mov r0, r1
	add r0, r0, #0x33
	str r0, [sp, #0x24]
	add r0, r9, #0x80
	str r0, [sp, #0x28]
	mov r0, r1
	mov r8, #0
	add r10, r0, #0x70
	mov r0, r8
	add r0, r0, #3
	str r0, [sp, #0x34]
	mov r0, r8
	add r0, r0, #2
	str r0, [sp, #0x30]
	mov r0, r8
	add r0, r0, #1
	str r0, [sp, #0x2c]
	mov r0, r1
	add r0, r0, #0x78
	mov r11, #0x190
	str r0, [sp, #0x38]
	mov r0, r11, lsl #0x10
	str r1, [sp, #0x20]
	str r0, [sp, #0x3c]
	b _0211D500
_0211D19C:
	mov r0, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x14]
	add r4, r8, r0, lsl #3
	mov r0, #0x3c
	mla r0, r4, r0, r9
	ldrb r0, [r0, #0xba]
	cmp r0, #1
	bne _0211D4A8
	add r0, r9, r4, lsl #2
	ldr r0, [r0, #0x8cc]
	cmp r0, #0
	bne _0211D508
	ldr r0, _0211D528 ; =0x02099F38
	mov r1, #6
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r9, r4, lsl #2
	str r0, [r1, #0x8cc]
	mov r5, r0
	mov r0, #0x3c
	mla r0, r4, r0, r9
	ldrh r0, [r0, #0xa8]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211D238
_0211D208: ; jump table
	b _0211D238 ; case 0
	b _0211D21C ; case 1
	b _0211D224 ; case 2
	b _0211D22C ; case 3
	b _0211D234 ; case 4
_0211D21C:
	mov r6, #3
	b _0211D238
_0211D224:
	mov r6, #2
	b _0211D238
_0211D22C:
	mov r6, #1
	b _0211D238
_0211D234:
	mov r6, #0
_0211D238:
	mov r0, #0xe
	str r0, [sp, #0x44]
	mov r0, r8, lsl #4
	add r7, r0, #0x20
	mov r0, #0x3c
	mla r0, r4, r0, r9
	ldrb r0, [r0, #0xb9]
	mov r1, r5
	add r2, sp, #0x48
	cmp r0, #1
	addeq r6, r6, #4
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	stmib sp, {r0, r7}
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x44]
	mov r0, r9
	bl FUN_ov53_0211b55c
	ldr r1, [sp, #0x48]
	mov r0, r9
	add r1, r1, #1
	str r1, [sp, #0x48]
	mov r1, #0x3c
	mla r1, r4, r1, r9
	ldrh r1, [r1, #0xa6]
	bl FUN_ov53_0211b3e4
	str r0, [sp, #0x44]
	and r3, r0, #0xff
	mov r0, r8, lsl #4
	add r7, r0, #0x18
	ldr r0, _0211D528 ; =0x02099F38
	ldr r2, [sp, #0x48]
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211D528 ; =0x02099F38
	ldr r2, [sp, #0x48]
	ldr r0, [r0]
	mov r1, r5
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211D528 ; =0x02099F38
	ldr r3, [sp, #0x40]
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	mov r1, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, _0211D528 ; =0x02099F38
	ldr r3, [sp, #0x3c]
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add r0, sp, #0x44
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	mov r2, #0x3c
	mla r1, r4, r2, r1
	str r0, [sp, #4]
	mov r0, r8, lsl #4
	add r0, r0, #0x23
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, r9
	mov r2, r5
	add r3, sp, #0x48
	bl FUN_ov53_0211b61c
	ldr r1, [sp, #0x44]
	add r0, r9, r4, lsl #2
	str r1, [r0, #0x90c]
	mov r1, #0x3c
	mov r0, #0xf
	str r0, [sp, #0x44]
	mla r1, r4, r1, r9
	ldr r1, [r1, #0xb4]
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	tst r1, #0x400
	beq _0211D3A4
	mov r1, #0
	b _0211D3D0
_0211D3A4:
	tst r1, #0x80
	beq _0211D3B4
	ldr r1, [sp, #0x2c]
	b _0211D3D0
_0211D3B4:
	tst r1, #0x20
	beq _0211D3C4
	ldr r1, [sp, #0x30]
	b _0211D3D0
_0211D3C4:
	tst r1, #0x1000
	beq _0211D3F8
	ldr r1, [sp, #0x34]
_0211D3D0:
	stmia sp, {r1, r10}
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x44]
	mov r0, r9
	mov r1, r5
	add r2, sp, #0x48
	bl FUN_ov53_0211b55c
_0211D3F8:
	mov r0, #0x10
	str r0, [sp, #0x44]
	mov r0, #0x3c
	mla r0, r4, r0, r9
	mov r1, r8, lsl #4
	add r7, r1, #0x28
	ldr r0, [r0, #0xa0]
	ldr r1, _0211D52C ; =0x66666667
	smull r2, r6, r1, r0
	mov r1, r0, lsr #0x1f
	add r6, r1, r6, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r6
	sub r6, r0, r2
	ldr r0, [sp, #0x38]
	str r6, [sp]
	stmib sp, {r0, r7}
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x44]
	mov r0, r9
	mov r1, r5
	add r2, sp, #0x48
	bl FUN_ov53_0211b55c
	mov r0, #0x3c
	mla r0, r4, r0, r9
	ldr r3, [r0, #0xa0]
	cmp r3, #0xa
	blt _0211D4A8
	ldr r0, _0211D52C ; =0x66666667
	mov r1, r5
	smull r2, r6, r0, r3
	mov r0, r3, lsr #0x1f
	add r6, r0, r6, asr #2
	stmia sp, {r6, r10}
	str r7, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x44]
	mov r0, r9
	add r2, sp, #0x48
	bl FUN_ov53_0211b55c
_0211D4A8:
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	str r0, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	ldr r0, _0211D530 ; =0x02099EB4
	ldr r3, [sp, #0x20]
	ldr r0, [r0]
	ldr r2, [sp, #0x18]
	mov r1, #0xa
	add r3, r3, #8
	bl FUN_ov16_0210fba4
	ldr r0, [sp, #0x18]
	add r8, r8, #1
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x18]
_0211D500:
	cmp r8, #8
	blt _0211D19C
_0211D508:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
_0211D514:
	ldr r0, [sp, #0x14]
	cmp r0, #2
	blt _0211D110
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D528: .word unk_02099F38
_0211D52C: .word 0x66666667
_0211D530: .word unk_02099EB4
	arm_func_end FUN_ov53_0211d0ec

	arm_func_start FUN_ov53_0211d534
FUN_ov53_0211d534: ; 0x0211D534
	add r0, r0, #0x158
	add r0, r0, #0x800
	mov r2, #0x24
	mla r0, r1, r2, r0
	ldr r12, _0211D550 ; =MI_CpuFill8
	mov r1, #0
	bx r12
_0211D550: .word MI_CpuFill8
	arm_func_end FUN_ov53_0211d534

	arm_func_start FUN_ov53_0211d554
FUN_ov53_0211d554: ; 0x0211D554
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r1, _0211D5BC ; =0x02099F38
	mov r4, #1
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_02112724
	mov r2, #0
	mov r1, r0
	str r2, [sp, #0x14]
	str r1, [r5, #0x880]
	str r2, [sp]
	mov r3, #8
	str r3, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	rsb r0, r4, #0x190
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	str r4, [sp, #0x10]
	bl FUN_ov53_0211b55c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211D5BC: .word unk_02099F38
	arm_func_end FUN_ov53_0211d554

	arm_func_start FUN_ov53_0211d5c0
FUN_ov53_0211d5c0: ; 0x0211D5C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r3, #0x24
	mul r3, r1, r3
	add r4, r0, #0x158
	ldr r6, _0211D718 ; =0x0211E708
	add r4, r4, #0x800
	ldr r5, [r4, r3]
	ldr r11, [r6, #4]
	mov r6, r5, asr #2
	str r2, [r4, r3]
	mov r4, r2
	add r2, r5, r6, lsr #29
	mov r6, r4, asr #2
	str r11, [sp, #0x1c]
	mov r7, r5, lsr #0x1f
	add r12, r4, r6, lsr #29
	rsb r6, r7, r5, lsl #29
	add r8, r7, r6, ror #29
	mov r9, r8, lsl #4
	add r10, r9, #0x20
	mov r8, r5, lsl #4
	mov r6, r4, lsr #0x1f
	rsb r5, r6, r4, lsl #29
	add r9, r8, #0x60
	ldr r7, _0211D71C ; =0x0211E6F8
	add r5, r6, r5, ror #29
	ldr r8, [r7, #4]
	mov r5, r5, lsl #4
	add r7, r5, #0x20
	mov r4, r4, lsl #4
	add r6, r4, #0x60
	str r9, [sp, #0x14]
	add r4, r0, #0x164
	mov r2, r2, asr #3
	mov r11, #0x78
	str r10, [sp, #0x10]
	mul r10, r2, r11
	mov r2, r12, asr #3
	mul r11, r2, r11
	add r2, r11, #8
	add r10, r10, #8
	str r10, [sp, #0x18]
	str r2, [sp, #8]
	add r11, sp, #0x18
	str r8, [sp, #0xc]
	add r2, sp, #8
	add lr, r0, #0x15c
	add r12, sp, #0x10
	str r7, [sp]
	add r9, r0, r3
	mov r10, #1
	str r10, [r9, #0x974]
	add r5, r0, #0x168
	str r6, [sp, #4]
	ldr r8, [r11, r1, lsl #2]
	add r10, lr, #0x800
	str r8, [r10, r3]
	ldr r7, [r12, r1, lsl #2]
	add r0, r0, #0x960
	add r8, sp, #0
	ldr r2, [r2, r1, lsl #2]
	ldr r1, [r8, r1, lsl #2]
	str r7, [r0, r3]
	add r4, r4, #0x800
	str r2, [r4, r3]
	add r6, r5, #0x800
	str r1, [r6, r3]
	ldr r4, [r4, r3]
	ldr r1, [r10, r3]
	ldr r2, _0211D720 ; =0x55555556
	sub r4, r4, r1
	smull r1, r5, r2, r4
	add r5, r5, r4, lsr #31
	str r5, [r9, #0x96c]
	ldr r1, [r0, r3]
	ldr r4, [r6, r3]
	ldr r0, _0211D724 ; =0x0209AC44
	sub r3, r4, r1
	smull r1, r4, r2, r3
	add r4, r4, r3, lsr #31
	mov r1, #8
	str r4, [r9, #0x970]
	bl FUN_0202cf6c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D718: .word 0x0211E708
_0211D71C: .word 0x0211E6F8
_0211D720: .word 0x55555556
_0211D724: .word unk_0209AC44
	arm_func_end FUN_ov53_0211d5c0

	arm_func_start FUN_ov53_0211d728
FUN_ov53_0211d728: ; 0x0211D728
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r2, r1
	mov r1, #0x24
	mul r4, r2, r1
	ldr r3, _0211D83C ; =0x0211E6D0
	add r1, r0, #0x178
	add r1, r1, #0x800
	add lr, r0, r4
	ldr r9, [r1, r4]
	ldr r8, [r0, #0x880]
	ldr r7, [r0, #0x894]
	ldr r6, [r3]
	ldr r5, [r3, #4]
	ldr r12, [lr, #0x95c]
	ldr r3, [lr, #0x960]
	add r9, r9, #1
	str r9, [r1, r4]
	ldr r1, [lr, #0x96c]
	ldr r10, [lr, #0x978]
	ldr r9, [lr, #0x970]
	mla r4, r1, r10, r12
	cmp r1, #0
	mla r3, r9, r10, r3
	str r8, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r1, [lr, #0x964]
	bge _0211D7AC
	cmp r4, r1
	movlt r4, r1
	b _0211D7B4
_0211D7AC:
	cmp r4, r1
	movgt r4, r1
_0211D7B4:
	mov r1, #0x24
	mla r5, r2, r1, r0
	ldr r1, [r5, #0x970]
	cmp r1, #0
	ldr r1, [r5, #0x968]
	bge _0211D7D8
	cmp r3, r1
	movlt r3, r1
	b _0211D7E0
_0211D7D8:
	cmp r3, r1
	movgt r3, r1
_0211D7E0:
	mov r1, #0x24
	mla r1, r2, r1, r0
	ldr r0, [r1, #0x964]
	add r5, sp, #4
	cmp r4, r0
	ldreq r0, [r1, #0x968]
	cmpeq r3, r0
	moveq r0, #0
	streq r0, [r1, #0x974]
	streq r0, [r1, #0x978]
	mov r0, r3, lsl #0x10
	mov r6, r0, asr #0x10
	add r1, sp, #0xc
	mov r3, r4, lsl #0x10
	ldr r1, [r1, r2, lsl #2]
	ldr r0, _0211D840 ; =0x02099F38
	str r6, [sp]
	ldr r0, [r0]
	ldr r2, [r5, r2, lsl #2]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D83C: .word 0x0211E6D0
_0211D840: .word unk_02099F38
	arm_func_end FUN_ov53_0211d728

	arm_func_start FUN_ov53_0211d844
FUN_ov53_0211d844: ; 0x0211D844
	ldr r2, [r0, #0x958]
	mov r1, #0x3c
	mla r0, r2, r1, r0
	ldrh r0, [r0, #0xa4]
	bx lr
	arm_func_end FUN_ov53_0211d844

	arm_func_start FUN_ov53_0211d858
FUN_ov53_0211d858: ; 0x0211D858
	ldr r2, [r0, #0x958]
	mov r1, #0x3c
	mla r0, r2, r1, r0
	ldr r0, [r0, #0xb4]
	bx lr
	arm_func_end FUN_ov53_0211d858

	arm_func_start FUN_ov53_0211d86c
FUN_ov53_0211d86c: ; 0x0211D86C
	ldr r1, [r0, #0x958]
	add r2, r0, #0x80
	mov r0, #0x3c
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov53_0211d86c

	arm_func_start FUN_ov53_0211d880
FUN_ov53_0211d880: ; 0x0211D880
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1c4
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x800
	mov r2, #0x28
	bl MI_CpuFill8
	str r4, [r5, #0x9ec]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov53_0211d880

	arm_func_start FUN_ov53_0211d8a8
FUN_ov53_0211d8a8: ; 0x0211D8A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r1, [r10, #0x8a0]
	cmp r1, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #3
	str r1, [sp, #0x14]
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #0xc
	mov r7, #0
	str r1, [sp, #8]
	mov r4, #0x64
	mov r8, #8
	str r4, [sp, #0xc]
	mov r11, #1
	str r11, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r1, r8
	mov r3, r7
	bl FUN_ov53_0211a500
	ldr r0, _0211D9D8 ; =0x02099F38
	mov r2, r11
	ldr r0, [r0]
	mov r1, #4
	bl FUN_ov16_02112724
	mov r6, r0
	str r6, [r10, #0x8a0]
	str r7, [sp, #0x14]
	stmia sp, {r7, r8}
	mov r5, #0x20
	add r4, r4, #0xfa
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	mov r3, #9
	add r2, sp, #0x14
	bl FUN_ov53_0211b55c
	stmia sp, {r7, r8}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, r11
	str r7, [sp, #0x10]
	bl FUN_ov53_0211b55c
	add r9, r7, #1
	str r9, [sp]
	str r8, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, r11
	str r7, [sp, #0x10]
	bl FUN_ov53_0211b55c
	add r0, r9, #1
	stmia sp, {r0, r8}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, r11
	str r7, [sp, #0x10]
	bl FUN_ov53_0211b55c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D9D8: .word unk_02099F38
	arm_func_end FUN_ov53_0211d8a8

	arm_func_start FUN_ov53_0211d9dc
FUN_ov53_0211d9dc: ; 0x0211D9DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1c4
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, _0211DA14 ; =0x02099F38
	ldr r1, [r4, #0x8a0]
	ldr r0, [r0]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r4, pc}
_0211DA14: .word unk_02099F38
	arm_func_end FUN_ov53_0211d9dc

	arm_func_start FUN_ov53_0211da18
FUN_ov53_0211da18: ; 0x0211DA18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov53_0211daa8
	cmp r0, #1
	bne _0211DA88
	ldr r3, [r5, #0x958]
	mov r4, #1
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	mov r1, r0, asr #3
	mov r0, #0x78
	mul r2, r1, r0
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #29
	add r0, r1, r0, ror #29
	mov r0, r0, lsl #4
	add r12, r2, #8
	add r2, r0, #0x20
	mov r0, r5
	mov r1, r4
	str r4, [r5, #0x9d0]
	str r12, [r5, #0x9c8]
	str r2, [r5, #0x9cc]
	str r3, [r5, #0x9c4]
	bl FUN_ov53_0211ad4c
	ldr r0, _0211DAA4 ; =0x0209AC44
	mov r1, r4
	b _0211DA90
_0211DA88:
	ldr r0, _0211DAA4 ; =0x0209AC44
	mov r1, #9
_0211DA90:
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0xc
	bl FUN_ov53_0211a68c
	ldmfd sp!, {r3, r4, r5, pc}
_0211DAA4: .word unk_0209AC44
	arm_func_end FUN_ov53_0211da18

	arm_func_start FUN_ov53_0211daa8
FUN_ov53_0211daa8: ; 0x0211DAA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov53_0211d844
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov53_0211d858
	tst r0, #0x400
	mov r0, r4
	beq _0211DAE4
	mov r1, #5
	bl FUN_ov53_0211ad4c
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0211DAE4:
	bl FUN_ov53_0211d858
	tst r0, #0x20
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x958]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov53_0211daa8

	arm_func_start FUN_ov53_0211db08
FUN_ov53_0211db08: ; 0x0211DB08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0x9d4]
	mov r4, #0xf
	ldr r9, [r7, #0x9cc]
	ldr r8, [r7, #0x9c8]
	mov r1, r4
	add r0, r0, #1
	ldr r5, [r7, #0x8a0]
	mov r6, #1
	bl _s32_div_f
	mov r3, r8, lsl #0x10
	mov r0, r9, lsl #0x10
	str r1, [r7, #0x9d4]
	mov r0, r0, asr #0x10
	ldr r8, _0211DBAC ; =0x02099F38
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r1, [r7, #0x9d4]
	add r0, r4, r4, lsr #31
	cmp r1, r0, asr #1
	rsbgt r0, r1, #0
	addgt r1, r0, r4
	add r3, r1, r1, lsl #1
	ldr r0, _0211DBAC ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_02113a80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DBAC: .word unk_02099F38
	arm_func_end FUN_ov53_0211db08

	arm_func_start FUN_ov53_0211dbb0
FUN_ov53_0211dbb0: ; 0x0211DBB0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x1d8
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r4, _0211DC14 ; =0x02099F38
	mov r5, #2
	ldr r0, [r4]
	ldr r1, [r6, #0x8a0]
	mov r3, r5
	mov r2, #1
	bl FUN_ov16_02113f7c
	ldr r0, [r4]
	ldr r1, [r6, #0x8a0]
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02113f7c
	ldr r0, [r4]
	ldr r1, [r6, #0x8a0]
	mov r3, r5
	mov r2, #3
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DC14: .word unk_02099F38
	arm_func_end FUN_ov53_0211dbb0

	arm_func_start FUN_ov53_0211dc18
FUN_ov53_0211dc18: ; 0x0211DC18
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	bl FUN_ov53_0211dcd8
	cmp r0, #1
	bne _0211DCB0
	ldr r0, _0211DCD0 ; =0x0211E71C
	add r12, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	ldr r0, [r5, #0x958]
	mov r2, #0x78
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r1, r1, asr #3
	mul r3, r1, r2
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #29
	add r1, r2, r1, ror #29
	mov r2, r1, lsl #4
	mov r1, r0, asr #1
	add r3, r3, #8
	mov r4, #1
	add r2, r2, #0x20
	add r1, r0, r1, lsr #30
	str r0, [r5, #0x9d8]
	mov r0, r1, asr #2
	str r4, [r5, #0x9e4]
	str r3, [r5, #0x9dc]
	str r2, [r5, #0x9e0]
	ldr r2, [r12, r0, lsl #2]
	mov r0, r5
	mov r1, #2
	str r2, [r5, #0x9ec]
	bl FUN_ov53_0211ad4c
	ldr r0, _0211DCD4 ; =0x0209AC44
	mov r1, r4
	b _0211DCB8
_0211DCB0:
	ldr r0, _0211DCD4 ; =0x0209AC44
	mov r1, #9
_0211DCB8:
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0xc
	bl FUN_ov53_0211a68c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0211DCD0: .word 0x0211E71C
_0211DCD4: .word unk_0209AC44
	arm_func_end FUN_ov53_0211dc18

	arm_func_start FUN_ov53_0211dcd8
FUN_ov53_0211dcd8: ; 0x0211DCD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov53_0211d844
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov53_0211d858
	tst r0, #0x400
	mov r0, r4
	beq _0211DD14
	mov r1, #5
	bl FUN_ov53_0211ad4c
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0211DD14:
	bl FUN_ov53_0211d858
	tst r0, #0x20
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x958]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x9c4]
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov53_0211dcd8

	arm_func_start FUN_ov53_0211dd48
FUN_ov53_0211dd48: ; 0x0211DD48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	ldr r0, [r5, #0x9e8]
	mov r7, #0xb
	add r4, r7, #1
	ldr r10, [r5, #0x9e0]
	add r0, r0, #1
	add r1, r4, #1
	ldr r6, [r5, #0x9dc]
	ldr r9, [r5, #0x8a0]
	ldr r8, [r5, #0x9ec]
	mov r11, #0
	bl _s32_div_f
	mov r0, r10, lsl #0x10
	mov r10, r1
	mov r2, r0, asr #0x10
	mov r0, r6, lsl #0x10
	str r10, [r5, #0x9e8]
	str r2, [sp]
	ldr r6, _0211DE7C ; =0x02099F38
	mov r3, r0, asr #0x10
	ldr r0, [r6]
	mov r1, r9
	add r2, r8, #2
	bl FUN_ov16_02113b78
	cmp r10, #2
	bgt _0211DDD4
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r3, #2
	add r2, r8, #2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DDD4:
	cmp r10, #5
	bgt _0211DDF4
	ldr r0, [r6]
	mov r1, r9
	mov r3, #2
	add r2, r8, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DDF4:
	cmp r10, #8
	bgt _0211DE1C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r3, #2
	add r2, r8, #2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DE1C:
	cmp r10, r7
	bgt _0211DE3C
	ldr r0, [r6]
	mov r1, r9
	mov r3, #2
	add r2, r8, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DE3C:
	cmp r10, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	bl FUN_ov53_0211de80
	mov r0, r5
	bl FUN_ov53_0211d068
	mov r0, r5
	bl FUN_ov53_0211d0ec
	mov r0, r5
	mov r1, r11
	bl FUN_ov53_0211ad4c
	mov r0, r5
	bl FUN_ov53_0211d9dc
	mov r0, r5
	bl FUN_ov53_0211dbb0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DE7C: .word unk_02099F38
	arm_func_end FUN_ov53_0211dd48

	arm_func_start FUN_ov53_0211de80
FUN_ov53_0211de80: ; 0x0211DE80
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x5c
	mov r10, r0
	ldr r1, [r10, #0x9c4]
	mov r5, #0x3c
	ldr r0, [r10, #0x9d8]
	mul r9, r1, r5
	mul r8, r0, r5
	add r0, r10, #0xb8
	str r0, [sp]
	ldr r1, [sp]
	add r11, sp, #0x20
	add r3, r10, r8
	ldrb r6, [r1, r9]
	mov r0, r11
	mov r2, r5
	mov r1, #0
	ldrb r7, [r3, #0xb8]
	bl MI_CpuFill8
	add r4, r10, #0x80
	mov r1, r11
	add r0, r4, r9
	mov r2, r5
	bl MI_CpuCopy8
	cmp r6, #1
	bne _0211E024
	cmp r7, #1
	bne _0211DF1C
	mov r6, r4
	mov r2, r5
	add r0, r6, r8
	add r1, r4, r9
	bl MI_CpuCopy8
	mov r0, r11
	mov r2, r5
	add r1, r6, r8
	bl MI_CpuCopy8
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DF1C:
	mov r5, r4
	mov r6, #0x20
	mov r2, r6
	add r0, r5, r8
	add r1, r4, r9
	bl MI_CpuCopy8
	add r0, r10, #0xa0
	str r0, [sp, #4]
	ldr r0, [r0, r8]
	add r3, r10, r9
	str r0, [r3, #0xa0]
	add r0, r10, #0xa4
	ldrh r2, [r0, r8]
	add r7, r10, #0xa6
	add r1, r5, r8
	strh r2, [r3, #0xa4]
	ldrh r4, [r7, r8]
	mov r2, r6
	add r6, r10, #0xa8
	strh r4, [r3, #0xa6]
	ldrh r12, [r6, r8]
	str r0, [sp, #8]
	mov r0, r11
	strh r12, [r3, #0xa8]
	add r5, r10, #0xac
	ldr lr, [r5, r8]
	add r12, r10, #0xb9
	add r4, r10, #0xb4
	add r11, r10, #0xb8
	str lr, [r3, #0xac]
	str r12, [sp, #0xc]
	ldr r12, [r4, r8]
	add r10, r10, #0xba
	str r12, [r3, #0xb4]
	ldrb lr, [r11, r8]
	ldr r12, [sp]
	strb lr, [r12, r9]
	ldr r9, [sp, #0xc]
	ldrb r9, [r9, r8]
	strb r9, [r3, #0xb9]
	ldrb r9, [r10, r8]
	strb r9, [r3, #0xba]
	bl MI_CpuCopy8
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, r8]
	ldrh r1, [sp, #0x44]
	ldr r0, [sp, #8]
	strh r1, [r0, r8]
	ldrh r0, [sp, #0x46]
	strh r0, [r7, r8]
	ldrh r0, [sp, #0x48]
	strh r0, [r6, r8]
	ldr r0, [sp, #0x4c]
	str r0, [r5, r8]
	ldr r0, [sp, #0x54]
	str r0, [r4, r8]
	ldrb r0, [sp, #0x58]
	strb r0, [r11, r8]
	ldrb r1, [sp, #0x59]
	ldr r0, [sp, #0xc]
	strb r1, [r0, r8]
	ldrb r0, [sp, #0x5a]
	add sp, sp, #0x5c
	strb r0, [r10, r8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E024:
	cmp r7, #1
	bne _0211E140
	mov r5, r4
	mov r6, #0x20
	mov r2, r6
	add r0, r5, r8
	add r1, r4, r9
	bl MI_CpuCopy8
	add r0, r10, #0xa0
	str r0, [sp, #0x10]
	ldr r0, [r0, r8]
	add r3, r10, r9
	str r0, [r3, #0xa0]
	add r0, r10, #0xa4
	ldrh r2, [r0, r8]
	add r7, r10, #0xa6
	add r1, r5, r8
	strh r2, [r3, #0xa4]
	ldrh r4, [r7, r8]
	mov r2, r6
	str r0, [sp, #0x14]
	strh r4, [r3, #0xa6]
	add r6, r10, #0xa8
	ldrh r12, [r6, r8]
	mov r0, r11
	add r11, r10, #0xb8
	str r11, [sp, #0x1c]
	add r11, r10, #0xb9
	add r5, r10, #0xac
	strh r12, [r3, #0xa8]
	ldr r12, [r5, r8]
	add r4, r10, #0xb4
	str r12, [r3, #0xac]
	str r11, [sp, #0x18]
	ldr r11, [r4, r8]
	add r10, r10, #0xba
	str r11, [r3, #0xb4]
	ldr r11, [sp, #0x1c]
	ldrb r12, [r11, r8]
	ldr r11, [sp]
	strb r12, [r11, r9]
	ldr r9, [sp, #0x18]
	ldrb r9, [r9, r8]
	strb r9, [r3, #0xb9]
	ldrb r9, [r10, r8]
	strb r9, [r3, #0xba]
	bl MI_CpuCopy8
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x10]
	str r1, [r0, r8]
	ldrh r1, [sp, #0x44]
	ldr r0, [sp, #0x14]
	strh r1, [r0, r8]
	ldrh r0, [sp, #0x46]
	strh r0, [r7, r8]
	ldrh r0, [sp, #0x48]
	strh r0, [r6, r8]
	ldr r0, [sp, #0x4c]
	str r0, [r5, r8]
	ldr r0, [sp, #0x54]
	str r0, [r4, r8]
	ldrb r1, [sp, #0x58]
	ldr r0, [sp, #0x1c]
	strb r1, [r0, r8]
	ldrb r1, [sp, #0x59]
	ldr r0, [sp, #0x18]
	strb r1, [r0, r8]
	ldrb r0, [sp, #0x5a]
	add sp, sp, #0x5c
	strb r0, [r10, r8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E140:
	mov r6, r4
	mov r2, r5
	add r0, r6, r8
	add r1, r4, r9
	bl MI_CpuCopy8
	mov r0, r11
	mov r2, r5
	add r1, r6, r8
	bl MI_CpuCopy8
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov53_0211de80

	arm_func_start FUN_ov53_0211e16c
FUN_ov53_0211e16c: ; 0x0211E16C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov53_0211e19c
	mov r0, r4
	bl FUN_ov53_0211e260
	mov r0, r4
	bl FUN_ov53_0211e2e0
	mov r0, r4
	bl FUN_ov53_0211e3dc
	mov r0, r4
	bl FUN_ov53_0211e444
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov53_0211e16c

	arm_func_start FUN_ov53_0211e19c
FUN_ov53_0211e19c: ; 0x0211E19C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, #0
	mov r10, r0
	mov r7, r9
	mov r11, #1
	ldr r5, _0211E254 ; =0x02099ED8
	ldr r4, _0211E258 ; =0x02099EC0
	b _0211E244
_0211E1BC:
	mov r0, #0x3c
	mla r0, r9, r0, r10
	add r0, r0, #0x400
	ldrh r8, [r0, #0x64]
	cmp r8, #0
	beq _0211E240
	ldr r0, _0211E25C ; =0x0209BA20
	mov r1, r7
	mov r2, r8
	bl FUN_0204d2a4
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	bl FUN_020554b0
	mov r6, r0
	ldr r0, [r5]
	mov r1, r6
	mov r2, r11
	bl FUN_02055938
	ldr r0, [r5]
	mov r1, r6
	bl FUN_02055274
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	bl FUN_02056a88
	mov r1, r0
	ldr r0, [r4]
	mov r2, r11
	bl FUN_02056e04
	ldr r0, [r4]
	mov r1, r11
	bl FUN_02057020
_0211E240:
	add r9, r9, #1
_0211E244:
	ldr r0, [r10, #0x800]
	cmp r9, r0
	blt _0211E1BC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E254: .word unk_02099ED8
_0211E258: .word unk_02099EC0
_0211E25C: .word unk_0209BA20
	arm_func_end FUN_ov53_0211e19c

	arm_func_start FUN_ov53_0211e260
FUN_ov53_0211e260: ; 0x0211E260
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x40
	ldr r5, _0211E2D8 ; =0x0211E74C
	add r4, sp, #0
	ldmia r5!, {r0, r1, r2, r3}
	mov r6, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	mov r7, #0
	ldr r5, _0211E2DC ; =0x0209BA20
	mov r4, r7
_0211E2A0:
	ldr r2, [r6, r7, lsl #2]
	mov r0, r5
	mov r1, r4
	bl FUN_0204dea4
	movs r2, r0
	beq _0211E2C4
	mov r0, r5
	mov r1, r4
	bl FUN_0204d354
_0211E2C4:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211E2A0
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E2D8: .word 0x0211E74C
_0211E2DC: .word unk_0209BA20
	arm_func_end FUN_ov53_0211e260

	arm_func_start FUN_ov53_0211e2e0
FUN_ov53_0211e2e0: ; 0x0211E2E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, #0
	mov r4, r0
	mov r8, r10
	mov r6, r10
	mov r5, r10
_0211E2F8:
	mov r0, #0x3c
	mla r0, r8, r0, r4
	ldrh r7, [r0, #0xa4]
	cmp r7, #0
	beq _0211E3A4
	mov r9, r6
_0211E310:
	mov r0, r9
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0211E348
	bl FUN_0206cbf8
	cmp r7, r0
	bne _0211E348
	ldr r0, _0211E3D8 ; =0x0209A11C
	mov r1, r9
	ldr r0, [r0]
	mov r2, r10
	bl FUN_0206c664
	add r10, r10, #1
	b _0211E354
_0211E348:
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211E310
_0211E354:
	cmp r9, #0x10
	blt _0211E3A4
	mov r9, r5
_0211E360:
	mov r0, r9
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0211E398
	bl FUN_0206cbf8
	cmp r7, r0
	bne _0211E398
	ldr r0, _0211E3D8 ; =0x0209A11C
	mov r1, r9
	ldr r0, [r0]
	mov r2, r10
	bl FUN_0206c664
	add r10, r10, #1
	b _0211E3A4
_0211E398:
	add r9, r9, #1
	cmp r9, #0x64
	blt _0211E360
_0211E3A4:
	add r8, r8, #1
	cmp r8, #0x10
	blt _0211E2F8
	cmp r10, #0x10
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r4, _0211E3D8 ; =0x0209A11C
_0211E3BC:
	ldr r0, [r4]
	mov r1, r10
	bl FUN_0206c5d8
	add r10, r10, #1
	cmp r10, #0x10
	blt _0211E3BC
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E3D8: .word unk_0209A11C
	arm_func_end FUN_ov53_0211e2e0

	arm_func_start FUN_ov53_0211e3dc
FUN_ov53_0211e3dc: ; 0x0211E3DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, #0
	ldr r8, _0211E440 ; =0x0209BA20
	mov r5, r0
	mov r10, #0x10
	mov r9, #1
	mov r7, r4
	mov r6, #0x3c
_0211E400:
	mla r0, r4, r6, r5
	ldrh r2, [r0, #0xa4]
	cmp r2, #0
	beq _0211E42C
	ldr r3, [r0, #0xac]
	mov r0, r8
	cmp r3, #0
	moveq r3, r10
	mov r1, r7
	str r9, [sp]
	bl FUN_0204c92c
_0211E42C:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211E400
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E440: .word unk_0209BA20
	arm_func_end FUN_ov53_0211e3dc

	arm_func_start FUN_ov53_0211e444
FUN_ov53_0211e444: ; 0x0211E444
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r0, _0211E51C ; =0x0209BA20
	mov r7, #0
	bl FUN_ov16_020edfb0
	mov r8, r0
	cmp r8, #0
	ble _0211E470
	cmp r8, #5
	blt _0211E474
_0211E470:
	mov r8, #4
_0211E474:
	cmp r8, #0
	mov r9, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211E51C ; =0x0209BA20
	mov r11, r9
_0211E48C:
	mov r0, #0x3c
	mla r0, r9, r0, r10
	ldrh r5, [r0, #0xa4]
	cmp r5, #0
	beq _0211E508
	ldr r6, [r0, #0xb0]
	cmp r6, #0
	bne _0211E4C4
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r4
	mov r2, #2
	bl FUN_020731ec
	mov r6, r0
_0211E4C4:
	str r11, [sp]
	str r11, [sp, #4]
	mov r0, r4
	mov r1, r11
	mov r2, r5
	add r3, r7, #1
	str r6, [sp, #8]
	bl FUN_0204ca5c
	mov r0, r5
	mov r1, r11
	bl FUN_ov16_020efa9c
	mov r1, r6
	bl FUN_0206d968
	mov r1, r5
	mov r0, r10
	bl FUN_ov53_0211e520
	add r7, r7, #1
_0211E508:
	cmp r7, r8
	add r9, r9, #1
	blt _0211E48C
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E51C: .word unk_0209BA20
	arm_func_end FUN_ov53_0211e444

	arm_func_start FUN_ov53_0211e520
FUN_ov53_0211e520: ; 0x0211E520
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xa0
	ldr r0, _0211E6AC ; =0x02099ED8
	mov r5, #0
	ldr r0, [r0]
	mov r10, r1
	mov r1, r5
	bl FUN_020552dc
	mov r4, r0
	mov r0, r10
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	mov r9, #0x32
	beq _0211E574
	cmp r4, #0
	ldrneh r8, [r4, #0xa8]
	bne _0211E594
	bl FUN_0206dcd4
	ldrh r8, [r0, #0xe]
	b _0211E594
_0211E574:
	ldr r0, _0211E6B0 ; =0x0209BA20
	add r2, sp, #0x38
	mov r1, r10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0xa0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r8, [sp, #0x90]
_0211E594:
	ldr r4, _0211E6AC ; =0x02099ED8
	str r9, [sp]
	mov r7, #0
	ldr r0, [r4]
	mov r1, r10
	mov r2, r7
	mov r3, r8
	bl FUN_02055004
	mov r6, r0
	ldr r0, [r4]
	mov r1, r6
	sub r2, r7, #1
	bl FUN_02055890
	ldr r0, [r4]
	mov r1, r6
	bl FUN_020552cc
	mov r5, #1
	mov r1, r5
	bl FUN_02054424
	ldr r0, [r4]
	bl FUN_02055c20
	mov r1, r6
	bl FUN_02054854
	mov r2, r0
	ldr r1, [r4]
	add r0, sp, #0x20
	bl FUN_02055c28
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r2, [sp, #0x30]
	str r7, [sp]
	stmib sp, {r2, r7}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r1, [sp, #0x34]
	ldr r1, [r4]
	add r0, sp, #0x14
	mov r2, r6
	str r3, [sp, #0x2c]
	bl FUN_020555e8
	ldr r2, [sp, #0x34]
	ldr r0, [r4]
	mov r2, r2, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02055558
	ldr r0, [r4]
	mov r1, r6
	bl FUN_02055324
	ldr r4, _0211E6B4 ; =0x02099EC0
	str r9, [sp]
	mov r6, r0
	ldr r0, [r4]
	mov r1, r10
	mov r2, r8
	mov r3, r7
	bl FUN_02056ed4
	str r8, [sp]
	stmib sp, {r7, r9}
	ldr r0, [r4]
	mov r1, r6
	mov r2, r10
	mov r3, r7
	bl FUN_02056b24
	ldr r0, [r4]
	mov r1, r5
	bl FUN_02057020
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E6AC: .word unk_02099ED8
_0211E6B0: .word unk_0209BA20
_0211E6B4: .word unk_02099EC0
	arm_func_end FUN_ov53_0211e520

	arm_func_start FUN_ov53_0211e6b8
FUN_ov53_0211e6b8: ; 0x0211E6B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov53_0211e6b8

	arm_func_start FUN_ov53_0211e6cc
FUN_ov53_0211e6cc: ; 0x0211E6CC
	bx lr
	arm_func_end FUN_ov53_0211e6cc
_0211E6D0:
	.byte 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x5D, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x88, 0xE9, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0xE9, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0xB8, 0xE9, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xC8, 0xE9, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0xD8, 0xE9, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0xE8, 0xE9, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0xF8, 0xE9, 0x11, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x08, 0xEA, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0x18, 0xEA, 0x11, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x58, 0xE9, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0xD8, 0xE8, 0x11, 0x02
	.byte 0x0A, 0x00, 0x00, 0x00, 0xE8, 0xE8, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00, 0xF8, 0xE8, 0x11, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x08, 0xE9, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x18, 0xE9, 0x11, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0x28, 0xE9, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x38, 0xE9, 0x11, 0x02
	.byte 0x10, 0x00, 0x00, 0x00, 0x48, 0xE9, 0x11, 0x02, 0x11, 0x00, 0x00, 0x00, 0x68, 0xE9, 0x11, 0x02
	.byte 0x12, 0x00, 0x00, 0x00, 0x78, 0xE9, 0x11, 0x02, 0x13, 0x00, 0x00, 0x00, 0x98, 0xE9, 0x11, 0x02
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov53_0211e83c
FUN_ov53_0211e83c: ; 0x0211E83C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211E884 ; =0x0211E8A0
	str r0, [r4, #0x10]
	ldr r0, _0211E888 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211E88C ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E884: .word ov53_0211E8A0
_0211E888: .word 0x00009CCD
_0211E88C: .word 0x0000EA3C
	arm_func_end FUN_ov53_0211e83c

	.section .sinit, 4
ov53_0211E890:
	.word FUN_ov53_0211e83c

	.data
	.global ov53_0211E8A0
ov53_0211E8A0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0xBB, 0x82, 0xA4, 0x82, 0xD1, 0x00, 0x00
	.byte 0x82, 0xED, 0x82, 0xA9, 0x82, 0xEA, 0x82, 0xE9, 0x00, 0x00, 0x00, 0x00, 0x83, 0x41, 0x83, 0x43
	.byte 0x83, 0x65, 0x83, 0x80, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x63, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x63, 0x30, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x63, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x63, 0x30, 0x35, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x69, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x74, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x63, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x61, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x77, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x61, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x62, 0x30, 0x35, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x69, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x82, 0xD0, 0x82, 0xC1, 0x82, 0xB3, 0x82, 0xC2
	.byte 0x82, 0xED, 0x82, 0xB4, 0x00, 0x00, 0x00, 0x00
	.global ov53_0211EA38
ov53_0211EA38:
	.byte 0xC0, 0xE8, 0x11, 0x02, 0xB8, 0xE8, 0x11, 0x02
	.byte 0x28, 0xEA, 0x11, 0x02, 0xCC, 0xE8, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCC, 0xE6, 0x11, 0x02, 0xB8, 0xE6, 0x11, 0x02, 0xB8, 0xA0, 0x11, 0x02, 0x5C, 0xA7, 0x11, 0x02
	.byte 0x00, 0x9F, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x28, 0xAB, 0x11, 0x02, 0xD8, 0xAC, 0x11, 0x02
	.byte 0xF4, 0x9F, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov53_0211EABC
ov53_0211EABC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov53_0211EAD4
ov53_0211EAD4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x6D, 0x65, 0x6D, 0x62, 0x65, 0x72, 0x2E, 0x53
	.byte 0x50, 0x4C, 0x00, 0x00
	.global ov53_0211EAF4
ov53_0211EAF4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov53_0211EB0C
ov53_0211EB0C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F
	.byte 0x6D, 0x65, 0x6D, 0x62, 0x65, 0x72, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00
	.global ov53_0211EB2C
ov53_0211EB2C:
	.byte 0x25, 0x73, 0x82, 0xC6
	.byte 0x82, 0xD9, 0x82, 0xF1, 0x82, 0xC6, 0x82, 0xA4, 0x82, 0xC9, 0x0A, 0x82, 0xED, 0x82, 0xA9, 0x82
	.byte 0xEA, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov53_0211EB4C
ov53_0211EB4C:
	.byte 0x8D, 0xA1, 0x82, 0xCD
	.byte 0x25, 0x73, 0x82, 0xCC, 0x97, 0xCD, 0x82, 0xAA, 0x0A, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x65, 0x83
	.byte 0x42, 0x81, 0x5B, 0x82, 0xC9, 0x95, 0x4B, 0x97, 0x76, 0x82, 0xBE, 0x81, 0x42, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

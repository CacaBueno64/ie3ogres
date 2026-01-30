
	.include "/macros/function.inc"
	.include "/include/overlay49.inc"

	.text
	arm_func_start FUN_ov49_02119f00
FUN_ov49_02119f00: ; 0x02119F00
	str r1, [r0, #0x210]
	mov r0, #0
	bx lr
	arm_func_end FUN_ov49_02119f00

	arm_func_start FUN_ov49_02119f0c
FUN_ov49_02119f0c: ; 0x02119F0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F30 ; =0x0211C9AC
	add r1, r4, #0x10
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	add r0, r4, #0xba0
	add r1, r4, #0x1c
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldmfd sp!, {r4, pc}
_02119F30: .word ov49_0211C9AC
	arm_func_end FUN_ov49_02119f0c

	arm_func_start FUN_ov49_02119f34
FUN_ov49_02119f34: ; 0x02119F34
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xcc
	ldr r5, _0211A014 ; =0x0211C908
	add r4, sp, #0x9c
	mov r10, r0
	mov r8, r4
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, _0211A018 ; =0x0211C9D0
	add r0, sp, #0x1c
	bl sprintf
	mov r9, #0
	mov r6, r9
	mov r5, #1
	add r7, sp, #0x5c
	ldr r11, _0211A01C ; =0x0211C9F4
	ldr r4, _0211A020 ; =g3DPlaneCtrl
	b _02119FF0
_02119F8C:
	ldr r2, [r8, r9, lsl #2]
	mov r0, r7
	mov r1, r11
	bl sprintf
	ldr r1, [r10, #0x10]
	mov r0, r7
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl _ZN7Archive19SFPGetOffsetAndSizeEPcS0_PlPm
	cmp r0, #0
	beq _02119FEC
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r2, sp, #0x1c
	mov r3, r6
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x28]
_02119FEC:
	add r9, r9, #1
_02119FF0:
	cmp r9, #0xc
	blt _02119F8C
	mov r0, r10
	bl FUN_ov49_0211c5c0
	mov r0, r10
	mov r1, #1
	bl FUN_ov49_0211a024
	add sp, sp, #0xcc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A014: .word ov49_0211C908
_0211A018: .word ov49_0211C9D0
_0211A01C: .word ov49_0211C9F4
_0211A020: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_02119f34

	arm_func_start FUN_ov49_0211a024
FUN_ov49_0211a024: ; 0x0211A024
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211A038
	cmp r4, #2
	blt _0211A08C
_0211A038:
	mov r4, #0
	add r9, r0, #0x10
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211A04C:
	mul r8, r4, r5
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r10
	bl _ZN7Archive10DeallocateEP9SFileData
	str r6, [r9, r8]
	str r6, [r10, #4]
	strb r6, [r10, #8]
	strb r6, [r10, #9]
	add r4, r4, #1
	strb r6, [r10, #0xa]
	cmp r4, #2
	blt _0211A04C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A08C:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0x10
	add r6, r4, r5
	mov r0, r6
	mov r1, #1
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r6
	bl _ZN7Archive10DeallocateEP9SFileData
	mov r0, #0
	str r0, [r4, r5]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov49_0211a024

	arm_func_start FUN_ov49_0211a0cc
FUN_ov49_0211a0cc: ; 0x0211A0CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x94]
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	ldr r0, _0211A0F8 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x94]
	ldmfd sp!, {r4, pc}
_0211A0F8: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211a0cc

	arm_func_start FUN_ov49_0211a0fc
FUN_ov49_0211a0fc: ; 0x0211A0FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mvn r1, #0
	mov r5, r0
	bl FUN_ov49_0211a024
	mov r4, #0
	add r7, r5, #0x9c
	mov r6, #0xa8
	b _0211A12C
_0211A11C:
	mla r1, r4, r6, r7
	mov r0, r5
	bl FUN_ov49_0211a414
	add r4, r4, #1
_0211A12C:
	cmp r4, #2
	blt _0211A11C
	mov r4, #0
	mov r7, r4
	ldr r6, _0211A17C ; =g3DPlaneCtrl
	b _0211A168
_0211A144:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0211A164
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x28]
_0211A164:
	add r4, r4, #1
_0211A168:
	cmp r4, #0xc
	blt _0211A144
	mov r0, r5
	bl FUN_ov49_0211a0cc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A17C: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211a0fc

	arm_func_start FUN_ov49_0211a180
FUN_ov49_0211a180: ; 0x0211A180
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A1CC ; =g3DPlaneCtrl
	b _0211A1BC
_0211A194:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0211A1B8
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A1B8:
	add r5, r5, #1
_0211A1BC:
	cmp r5, #0xc
	blo _0211A194
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1CC: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211a180

	arm_func_start FUN_ov49_0211a1d0
FUN_ov49_0211a1d0: ; 0x0211A1D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A230 ; =g3DPlaneCtrl
	b _0211A224
_0211A1E8:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0211A220
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A220
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A220:
	add r6, r6, #1
_0211A224:
	cmp r6, #0xc
	blo _0211A1E8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A230: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211a1d0

	arm_func_start FUN_ov49_0211a234
FUN_ov49_0211a234: ; 0x0211A234
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r4, _0211A410 ; =gSprButtonCtrl
	mov r9, r0
	ldr r0, [r4]
	mov r8, r1
	mov r1, #3
	bl FUN_ov16_0210eb3c
	mov r7, #4
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov16_0210eb3c
	mov r6, #5
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #6
	bl FUN_ov16_0210eb3c
	mov r5, #7
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_0210eb3c
	mov r10, #0xa
	ldr r0, [r4]
	mov r1, r10
	bl FUN_ov16_0210eb3c
	mov r11, #0xb
	ldr r0, [r4]
	mov r1, r11
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0xc
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0xd
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #8
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r4, #9
	mov r1, r4
	bl FUN_ov16_0210eb3c
	mov r0, r9
	str r6, [r9, #0x204]
	str r7, [r9, #0x20c]
	bl FUN_ov49_0211a0cc
	cmp r8, #4
	addls pc, pc, r8, lsl #2
	b _0211A408
_0211A300: ; jump table
	b _0211A314 ; case 0
	b _0211A334 ; case 1
	b _0211A370 ; case 2
	b _0211A3A0 ; case 3
	b _0211A3E0 ; case 4
_0211A314:
	mov r0, r9
	add r1, r9, #0x144
	bl FUN_ov49_0211a414
	mov r0, r9
	add r1, r9, #0x9c
	bl FUN_ov49_0211a58c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A334:
	mov r0, #0x38
	str r0, [sp]
	str r0, [sp, #4]
	mov r4, #0x60
	str r4, [sp, #8]
	mov r0, #0x98
	str r0, [sp, #0xc]
	mov r0, r9
	mov r2, #8
	add r1, r9, #0x144
	mov r3, #0x20
	str r4, [sp, #0x10]
	bl FUN_ov49_0211ad88
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A370:
	mov r0, #0x38
	str r0, [sp]
	mov r5, #0x68
	str r5, [sp, #4]
	mov r0, r9
	mov r2, r4
	mov r3, #8
	add r1, r9, #0x144
	str r5, [sp, #8]
	bl FUN_ov49_0211af80
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A3A0:
	mov r0, #0x34
	str r0, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r4, #0x6c
	str r4, [sp, #8]
	mov r0, #0x98
	str r0, [sp, #0xc]
	mov r0, r9
	mov r2, r10
	add r1, r9, #0x144
	mov r3, #0x20
	str r4, [sp, #0x10]
	bl FUN_ov49_0211ad88
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A3E0:
	mov r0, #0x28
	stmia sp, {r0, r5}
	mov r4, #0
	str r4, [sp, #8]
	mov r0, r9
	mov r2, r11
	add r1, r9, #0x144
	mov r3, #0x10
	str r4, [sp, #0xc]
	bl FUN_ov49_0211aa78
_0211A408:
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A410: .word gSprButtonCtrl
	arm_func_end FUN_ov49_0211a234

	arm_func_start FUN_ov49_0211a414
FUN_ov49_0211a414: ; 0x0211A414
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211A460 ; =g3DPlaneCtrl
	b _0211A444
_0211A428:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211A440
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211A440:
	add r5, r5, #1
_0211A444:
	cmp r5, #0x20
	blt _0211A428
	mov r0, r6
	mov r1, #0
	mov r2, #0xa8
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211A460: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211a414

	arm_func_start FUN_ov49_0211a464
FUN_ov49_0211a464: ; 0x0211A464
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_0211A470: ; jump table
	b _0211A484 ; case 0
	b _0211A48C ; case 1
	b _0211A48C ; case 2
	b _0211A48C ; case 3
	b _0211A48C ; case 4
_0211A484:
	mov r0, #0
	bx lr
_0211A48C:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov49_0211a464

	arm_func_start FUN_ov49_0211a494
FUN_ov49_0211a494: ; 0x0211A494
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r1, [r10, #0xc]
	bl FUN_ov49_0211a464
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r10, #0x9c
	mov r0, #0xa8
	mla r9, r4, r0, r1
	mov r7, #0
	ldr r6, _0211A580 ; =0x00007FFF
	ldr r5, _0211A584 ; =g3DPlaneCtrl
	b _0211A4E8
_0211A4C8:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211A4E4
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114204
_0211A4E4:
	add r7, r7, #1
_0211A4E8:
	cmp r7, #0x20
	blt _0211A4C8
	sub r8, r4, #1
	add r6, r10, #0x9c
	ldr r5, _0211A588 ; =0x00004210
	mov r11, #0
	b _0211A574
_0211A504:
	mov r0, #0xa8
	mla r9, r8, r0, r6
	mov r7, r11
	ldr r4, _0211A584 ; =g3DPlaneCtrl
	b _0211A568
_0211A518:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211A564
	ldr r0, [r10, #0xc]
	cmp r0, #2
	cmpne r0, #1
	cmpne r0, #4
	beq _0211A550
	ldr r0, [r10, #0x84]
	cmp r0, r1
	ldrne r0, [r10, #0x88]
	cmpne r0, r1
	beq _0211A564
_0211A550:
	add r1, r9, r7, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x20]
	mov r2, r5
	bl FUN_ov16_02114204
_0211A564:
	add r7, r7, #1
_0211A568:
	cmp r7, #0x20
	blt _0211A518
	sub r8, r8, #1
_0211A574:
	cmp r8, #0
	bge _0211A504
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A580: .word 0x00007FFF
_0211A584: .word g3DPlaneCtrl
_0211A588: .word 0x00004210
	arm_func_end FUN_ov49_0211a494

	arm_func_start FUN_ov49_0211a58c
FUN_ov49_0211a58c: ; 0x0211A58C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r11, #0
	mov r10, r0
	str r11, [sp, #0x24]
	mov r9, r1
	bl FUN_ov49_0211a414
	ldr r5, [r10, #0xc]
	mov r4, #0x3e8
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, r11
	str r5, [r9, #0x1c]
	str r4, [r9, #0xa4]
	mov r8, #1
	str r8, [sp]
	bl FUN_ov49_0211b328
	mov r3, r4
	mov r1, r0
	ldr r4, _0211A82C ; =g3DPlaneCtrl
	str r1, [r10, #0x5c]
	ldr r0, [r4]
	mov r2, r8
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x28]
	ldr r0, [r4]
	ldr r1, [r10, #0x5c]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x5c]
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_0211401c
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, r11
	bl FUN_ov49_0211b328
	str r0, [r10, #0x60]
	mov r0, #5
	str r0, [sp]
	mov r7, #0x10
	str r7, [sp, #4]
	str r7, [sp, #8]
	mov r6, #0xe0
	str r6, [sp, #0xc]
	mov r5, #0x18
	str r5, [sp, #0x10]
	str r8, [sp, #0x14]
	str r11, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	mov r4, #0x64
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x60]
	mov r0, r10
	mov r2, r8
	mov r3, #4
	bl FUN_ov49_0211a830
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, r11
	bl FUN_ov49_0211b328
	str r0, [r10, #0x64]
	mov r0, #6
	stmia sp, {r0, r7}
	mov r0, #0x28
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x64]
	mov r3, #5
	mov r0, r10
	mov r2, r8
	bl FUN_ov49_0211a830
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, r11
	bl FUN_ov49_0211b328
	str r0, [r10, #0x68]
	mov r0, #7
	stmia sp, {r0, r7}
	mov r0, #0x40
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, #7
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x68]
	mov r0, r10
	mov r2, r8
	mov r3, #6
	bl FUN_ov49_0211a830
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, r11
	bl FUN_ov49_0211b328
	str r0, [r10, #0x6c]
	mov r0, #8
	stmia sp, {r0, r7}
	mov r0, #0x58
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r8, [sp, #0x14]
	str r11, [sp, #0x18]
	mov r0, #6
	str r0, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x6c]
	mov r3, #7
	mov r0, r10
	mov r2, r8
	bl FUN_ov49_0211a830
	mov r0, r10
	mov r3, r11
	str r8, [sp]
	mov r1, r9
	add r2, sp, #0x24
	bl FUN_ov49_0211b328
	str r0, [r10, #0x70]
	mov r0, #9
	stmia sp, {r0, r7}
	mov r0, #0x88
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #6
	str r0, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x70]
	mov r2, r8
	mov r3, #8
	mov r0, r10
	bl FUN_ov49_0211a830
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	bl FUN_ov49_0211a968
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A82C: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211a58c

	arm_func_start FUN_ov49_0211a830
FUN_ov49_0211a830: ; 0x0211A830
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r8, _0211A960 ; =g3DPlaneCtrl
	mov r5, r3
	mov r4, r0
	ldrh r3, [sp, #0x40]
	ldr r0, [r8]
	mov r7, r1
	mov r6, r2
	bl FUN_ov16_021139bc
	ldr r1, [sp, #0x3c]
	ldr r0, [r8]
	add r1, r4, r1, lsl #2
	ldr r3, [r1, #0x28]
	mov r1, r7
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r4, #0
	str r4, [sp]
	ldr r0, [r8]
	ldr r3, [sp, #0x34]
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_0211401c
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211A964 ; =gSprButtonCtrl
	ldrh r2, [sp, #0x20]
	ldr r0, [r0]
	mov r1, r5
	mov r3, r7
	bl FUN_ov16_0210fbe8
	movs r8, r0
	beq _0211A928
	ldr r5, [sp, #0x30]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	str r5, [sp]
	bl FUN_ov16_0210e674
	mov r5, #1
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r8, #0x3a
	bl FUN_ov16_0210e6fc
	ldr r2, [sp, #0x34]
	add r0, r8, #0x3a
	mov r1, r4
	mov r3, r4
	bl FUN_ov16_0210e720
	mov r2, r5
	add r0, r8, #0x3e
	mov r1, r4
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r4
	mov r3, r4
	ldr r2, [sp, #0x38]
	bl FUN_ov16_0210e720
_0211A928:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	ldr r0, _0211A960 ; =g3DPlaneCtrl
	str r2, [sp]
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r7
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A960: .word g3DPlaneCtrl
_0211A964: .word gSprButtonCtrl
	arm_func_end FUN_ov49_0211a830

	arm_func_start FUN_ov49_0211a968
FUN_ov49_0211a968: ; 0x0211A968
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r4, _0211AA74 ; =gSprButtonCtrl
	mov r10, r0
	ldr r0, [r4]
	mov r7, #1
	mov r9, r1
	mov r1, r7
	mov r8, r2
	bl FUN_ov16_0210eb3c
	mov r6, #2
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_0210eb3c
	str r7, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, #0
	bl FUN_ov49_0211b328
	str r0, [r10, #0x84]
	str r7, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r5, #0xa8
	str r5, [sp, #8]
	mov r4, #0x30
	str r4, [sp, #0xc]
	mov r11, #0x18
	str r11, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x1c]
	mov r0, #0x32
	str r0, [sp, #0x20]
	ldr r1, [r10, #0x84]
	mov r0, r10
	mov r2, r7
	mov r3, r7
	bl FUN_ov49_0211a830
	mov r1, r9
	mov r2, r8
	mov r3, #0
	str r7, [sp]
	mov r0, r10
	bl FUN_ov49_0211b328
	str r0, [r10, #0x88]
	str r6, [sp]
	mov r0, #0xd0
	stmib sp, {r0, r5}
	str r4, [sp, #0xc]
	str r11, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #0x32
	str r0, [sp, #0x20]
	ldr r1, [r10, #0x88]
	mov r2, r7
	mov r3, r6
	mov r0, r10
	bl FUN_ov49_0211a830
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA74: .word gSprButtonCtrl
	arm_func_end FUN_ov49_0211a968

	arm_func_start FUN_ov49_0211aa78
FUN_ov49_0211aa78: ; 0x0211AA78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r4, #0
	mov r10, r0
	str r4, [sp, #0x24]
	mov r9, r1
	mov r8, r2
	mov r11, r3
	bl FUN_ov49_0211a414
	ldr r0, [r10, #0xc]
	mov r7, #1
	str r0, [r9, #0x1c]
	mov r0, #0x1e
	str r0, [r9, #0xa4]
	mov r0, r4
	str r0, [r9]
	ldr r4, _0211AD80 ; =gSprButtonCtrl
	str r0, [r10, #0x208]
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov16_0210eb3c
	mov r6, #2
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_0210eb3c
	mov r0, r10
	mov r1, r9
	mov r3, #0
	add r2, sp, #0x24
	str r7, [sp]
	bl FUN_ov49_0211b328
	mov r5, r0
	ldr r4, _0211AD84 ; =g3DPlaneCtrl
	mov r1, r5
	ldr r0, [r4]
	mov r2, r7
	mov r3, #0x1e
	bl FUN_ov16_021139bc
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	mov r3, #0
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0x50]
	mov r1, r5
	mov r3, r11
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r7
	bl FUN_ov16_02113b78
	str r7, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, #0
	bl FUN_ov49_0211b328
	mov r5, r0
	ldr r0, [r4]
	mov r3, #0x1e
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_021139bc
	ldr r1, [sp, #0x54]
	ldr r0, [r4]
	add r1, r10, r1, lsl #2
	ldr r3, [r1, #0x28]
	mov r1, r5
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	mov r3, #0
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0x5c]
	ldrsh r3, [sp, #0x58]
	mov r1, r5
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r7
	bl FUN_ov16_02113b78
	str r7, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, #0
	bl FUN_ov49_0211b328
	str r0, [r10, #0x74]
	mov r11, #0xb
	str r11, [sp]
	mov r8, #0x18
	str r8, [sp, #4]
	mov r0, #0x48
	str r0, [sp, #8]
	mov r5, #0xd0
	str r5, [sp, #0xc]
	str r8, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	str r6, [sp, #0x1c]
	mov r4, #0xf
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x74]
	mov r0, r10
	mov r2, r7
	mov r3, #0xa
	bl FUN_ov49_0211a830
	str r7, [sp]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, #0
	bl FUN_ov49_0211b328
	str r0, [r10, #0x78]
	mov r0, #0xc
	stmia sp, {r0, r8}
	mov r0, #0x60
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r8, [sp, #0x10]
	mov r3, r11
	str r6, [sp, #0x14]
	mov r11, #3
	str r11, [sp, #0x18]
	str r6, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x78]
	mov r0, r10
	mov r2, r7
	bl FUN_ov49_0211a830
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	str r7, [sp]
	mov r3, #0
	bl FUN_ov49_0211b328
	str r0, [r10, #0x7c]
	mov r0, #0xd
	stmia sp, {r0, r8}
	mov r0, #0x78
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r8, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r5, #5
	str r5, [sp, #0x18]
	str r6, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x7c]
	mov r3, #0xc
	mov r0, r10
	mov r2, r7
	bl FUN_ov49_0211a830
	mov r1, r9
	add r2, sp, #0x24
	mov r3, #0
	str r7, [sp]
	mov r0, r10
	bl FUN_ov49_0211b328
	str r0, [r10, #0x80]
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r6, [sp, #0x14]
	str r11, [sp, #0x18]
	str r5, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r1, [r10, #0x80]
	mov r2, r7
	mov r3, #0xd
	mov r0, r10
	bl FUN_ov49_0211a830
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AD80: .word gSprButtonCtrl
_0211AD84: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211aa78

	arm_func_start FUN_ov49_0211ad88
FUN_ov49_0211ad88: ; 0x0211AD88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r11, #0
	mov r10, r0
	str r11, [sp, #0x24]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl FUN_ov49_0211a414
	ldr r0, [r10, #0xc]
	mov r4, #0x1e
	mov r6, #1
	ldr r5, _0211AF78 ; =gSprButtonCtrl
	str r4, [r9, #0xa4]
	str r11, [r9]
	str r0, [r9, #0x1c]
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #2
	bl FUN_ov16_0210eb3c
	mov r0, r10
	mov r1, r9
	mov r3, r11
	add r2, sp, #0x24
	str r6, [sp]
	bl FUN_ov49_0211b328
	mov r3, r4
	mov r5, r0
	ldr r4, _0211AF7C ; =g3DPlaneCtrl
	mov r1, r5
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov16_021139bc
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r11
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0x50]
	mov r1, r5
	mov r3, r7
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov16_02113b78
	ldrsh r0, [sp, #0x54]
	add r1, r10, #0x100
	ldrsh r2, [sp, #0x58]
	strh r0, [r1, #0xf0]
	ldrsh r0, [sp, #0x5c]
	strh r2, [r1, #0xf2]
	ldrsh r2, [sp, #0x60]
	strh r0, [r1, #0xf4]
	mov r0, r10
	strh r2, [r1, #0xf6]
	mov r1, r9
	add r2, sp, #0x24
	mov r3, r11
	str r6, [sp]
	bl FUN_ov49_0211b328
	str r0, [r10, #0x8c]
	mov r7, #3
	ldrsh r1, [sp, #0x54]
	str r7, [sp]
	ldrsh r0, [sp, #0x58]
	str r1, [sp, #4]
	mov r5, #0x30
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r4, #0x17
	str r4, [sp, #0x10]
	str r11, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r8, #5
	str r8, [sp, #0x1c]
	mov r0, #0xf
	str r0, [sp, #0x20]
	ldr r1, [r10, #0x8c]
	mov r0, r10
	mov r2, r6
	mov r3, r7
	bl FUN_ov49_0211a830
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x24
	mov r3, r11
	str r6, [sp]
	bl FUN_ov49_0211b328
	str r0, [r10, #0x90]
	mov r0, #4
	str r0, [sp]
	ldrsh r2, [sp, #0x5c]
	ldrsh r1, [sp, #0x60]
	mov r0, r10
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r1, #2
	str r1, [sp, #0x14]
	str r7, [sp, #0x18]
	str r8, [sp, #0x1c]
	mov r1, #0xf
	str r1, [sp, #0x20]
	ldr r1, [r10, #0x90]
	mov r2, r6
	mov r3, r7
	bl FUN_ov49_0211a830
	mov r0, r10
	mov r1, r6
	mov r2, r11
	bl FUN_ov49_0211b2b4
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF78: .word gSprButtonCtrl
_0211AF7C: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211ad88

	arm_func_start FUN_ov49_0211af80
FUN_ov49_0211af80: ; 0x0211AF80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r6, #0
	mov r10, r0
	str r6, [sp, #0x14]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl FUN_ov49_0211a414
	ldr r0, [r10, #0xc]
	mov r4, #0x1e
	mov r11, #1
	ldr r5, _0211B2A8 ; =gSprButtonCtrl
	str r4, [r9, #0xa4]
	str r6, [r9]
	str r0, [r9, #0x1c]
	ldr r0, [r5]
	mov r1, r11
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #2
	bl FUN_ov16_0210eb3c
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x14
	mov r3, r6
	str r11, [sp]
	bl FUN_ov49_0211b328
	mov r3, r4
	mov r5, r0
	ldr r4, _0211B2AC ; =g3DPlaneCtrl
	mov r1, r5
	ldr r0, [r4]
	mov r2, r11
	bl FUN_ov16_021139bc
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r11
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	mov r3, r6
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0x40]
	mov r1, r5
	mov r3, r7
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r11
	bl FUN_ov16_02113b78
	ldr r0, [r10, #0x94]
	cmp r0, #0
	bne _0211B094
	ldr r0, [r4]
	mov r1, #5
	mov r2, #3
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r10, #0x94]
	ldr r0, [r4]
	mov r2, r11
	mov r3, r6
	bl FUN_02059038
_0211B094:
	add r7, sp, #0x14
	mov r11, #0
	mov r8, #1
	mov r0, r10
	mov r1, r9
	mov r2, r7
	mov r3, r11
	str r8, [sp]
	bl FUN_ov49_0211b328
	mov r6, r0
	ldr r4, _0211B2AC ; =g3DPlaneCtrl
	mov r5, #0xa
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x94]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_02113d88
	ldrsh r0, [sp, #0x40]
	mov r1, r6
	mov r2, r8
	add r0, r0, #6
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r11
	bl FUN_ov16_02113b78
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, #2
	bl FUN_ov16_02113ec0
	stmia sp, {r8, r11}
	str r11, [sp, #8]
	str r11, [sp, #0xc]
	str r8, [sp, #0x10]
	ldrb r0, [r10, #0x214]
	ldr r3, _0211B2B0 ; =0x0211C6F0
	ldr r1, [r10, #0x94]
	add r0, r3, r0, lsl #6
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_020f2304
	mov r1, r9
	mov r2, r7
	mov r0, r10
	mov r3, r11
	str r8, [sp]
	bl FUN_ov49_0211b328
	mov r1, r0
	str r1, [r10, #0x98]
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0xf
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x2c]
	ldr r0, [r4]
	ldr r1, [r10, #0x98]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x98]
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0x48]
	ldrsh r3, [sp, #0x44]
	mov r2, r8
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x98]
	bl FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211B2A8 ; =gSprButtonCtrl
	ldr r3, [r10, #0x98]
	ldr r0, [r0]
	mov r2, r5
	mov r1, #9
	bl FUN_ov16_0210fbe8
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r1, [sp, #0x44]
	ldrsh r2, [sp, #0x48]
	mov r4, #0x18
	mov r3, #0x30
	str r4, [sp]
	bl FUN_ov16_0210e674
	mov r1, r11
	mov r2, r8
	mov r3, r11
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r11
	mov r2, r11
	mov r3, r11
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	add r0, r5, #0x3e
	mov r1, r11
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r8
	mov r1, r11
	mov r3, r11
	bl FUN_ov16_0210e720
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B2A8: .word gSprButtonCtrl
_0211B2AC: .word g3DPlaneCtrl
_0211B2B0: .word ov49_0211C6F0
	arm_func_end FUN_ov49_0211af80

	arm_func_start FUN_ov49_0211b2b4
FUN_ov49_0211b2b4: ; 0x0211B2B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	addne r0, r5, #0x100
	ldrnesh r1, [r0, #0xf2]
	ldrnesh r3, [r0, #0xf0]
	ldr r0, _0211B324 ; =g3DPlaneCtrl
	moveq r1, #0xc0
	str r1, [sp]
	mov r4, r2
	ldr r0, [r0]
	ldr r1, [r5, #0x8c]
	moveq r3, #0x100
	mov r2, #1
	bl FUN_ov16_02113b78
	cmp r4, #0
	addne r0, r5, #0x100
	ldrnesh r1, [r0, #0xf6]
	ldrnesh r3, [r0, #0xf4]
	ldr r0, _0211B324 ; =g3DPlaneCtrl
	moveq r1, #0xc0
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r5, #0x90]
	moveq r3, #0x100
	mov r2, #1
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, pc}
_0211B324: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211b2b4

	arm_func_start FUN_ov49_0211b328
FUN_ov49_0211b328: ; 0x0211B328
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x20
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #1
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B3A8 ; =g3DPlaneCtrl
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0xa1]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0xa0]
	ldr r1, [r5]
	add r2, r6, #0xa1
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B3A8: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211b328

	arm_func_start FUN_ov49_0211b3ac
FUN_ov49_0211b3ac: ; 0x0211B3AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #6
	mov r1, #1
	str r4, [r5, #8]
	str r1, [r5, #0x1fc]
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r0, #0x8e
	beq _0211B3E0
	ldr r0, [r5, #4]
	bl _ZN14CScreenManager13fadeMainBlackEv
	ldmfd sp!, {r3, r4, r5, pc}
_0211B3E0:
	mov r0, r4
	bl _ZN8Graphics16FadeScreensBlackEl
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov49_0211b3ac

	arm_func_start FUN_ov49_0211b3ec
FUN_ov49_0211b3ec: ; 0x0211B3EC
	stmfd sp!, {r3, lr}
	mov r2, #6
	mov r1, #3
	str r2, [r0, #8]
	str r1, [r0, #0x1fc]
	ldr r0, [r0, #4]
	bl _ZN14CScreenManager13fadeMainBlackEv
	ldr r0, _0211B418 ; =0x02099E8F
	mov r1, #1
	strb r1, [r0]
	ldmfd sp!, {r3, pc}
_0211B418: .word unk_02099E8F
	arm_func_end FUN_ov49_0211b3ec

	arm_func_start FUN_ov49_0211b41c
FUN_ov49_0211b41c: ; 0x0211B41C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	mov r1, #8
	mov r0, #6
	str r5, [r4, #0xc]
	str r1, [r4, #8]
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r0, _0211B490 ; =gLogicThink
	mov r1, r5
	bl FUN_0207249c
	ldrh r2, [r0, #0x2e]
	ldr r0, _0211B494 ; =0x00000FFF
	ldr r1, _0211B498 ; =0x02099EA2
	and r0, r2, r0
	strh r0, [r1]
	ldr r0, [r4, #0x200]
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B49C ; =0x02099E98
	mov r1, #1
	strb r1, [r0]
	ldr r1, [r4, #0x200]
	mov r0, r4
	sub r1, r1, #1
	bl FUN_ov49_0211c6b0
	ldmfd sp!, {r3, r4, r5, pc}
_0211B490: .word gLogicThink
_0211B494: .word 0x00000FFF
_0211B498: .word unk_02099EA2
_0211B49C: .word unk_02099E98
	arm_func_end FUN_ov49_0211b41c

	arm_func_start FUN_ov49_0211b4a0
FUN_ov49_0211b4a0: ; 0x0211B4A0
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bne _0211B4C0
	ldr r0, _0211B4D0 ; =gSprButtonCtrl
	mov r1, #0x64
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
_0211B4C0:
	mov r0, #4
	str r4, [r5, #0xc]
	str r0, [r5, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4D0: .word gSprButtonCtrl
	arm_func_end FUN_ov49_0211b4a0

	arm_func_start FUN_ov49_0211b4d4
FUN_ov49_0211b4d4: ; 0x0211B4D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B664 ; =gSprButtonCtrl
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #0xe
	addls pc, pc, r5, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211B508: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _0211B5BC ; case 3
	b _0211B5E0 ; case 4
	b _0211B544 ; case 5
	b _0211B55C ; case 6
	b _0211B574 ; case 7
	b _0211B58C ; case 8
	b _0211B5A4 ; case 9
	ldmfd sp!, {r3, r4, r5, pc} ; case 10
	b _0211B604 ; case 11
	b _0211B61C ; case 12
	b _0211B634 ; case 13
	b _0211B64C ; case 14
_0211B544:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #0
	str r0, [r4, #0x200]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B55C:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #1
	str r0, [r4, #0x200]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B574:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #2
	str r0, [r4, #0x200]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B58C:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #3
	str r0, [r4, #0x200]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B5A4:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #4
	str r0, [r4, #0x200]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B5BC:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r2, #0
	mov r0, r4
	mov r1, #1
	str r2, [r4, #0x144]
	bl FUN_ov49_0211b2b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B5E0:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r2, #1
	mov r0, r4
	mov r1, #0
	str r2, [r4, #0x144]
	bl FUN_ov49_0211b2b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B604:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #0
	str r0, [r4, #0x208]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B61C:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #1
	str r0, [r4, #0x208]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B634:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #2
	str r0, [r4, #0x208]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B64C:
	ldr r0, _0211B668 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #3
	str r0, [r4, #0x208]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B664: .word gSprButtonCtrl
_0211B668: .word gAudioPlayer
	arm_func_end FUN_ov49_0211b4d4

	arm_func_start FUN_ov49_0211b66c
FUN_ov49_0211b66c: ; 0x0211B66C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	cmp r6, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r5, _0211B7D0 ; =gSprButtonCtrl
	mov r1, r6, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r6, #0xe
	addls pc, pc, r6, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211B6A0: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211B794 ; case 1
	b _0211B7A8 ; case 2
	b _0211B6DC ; case 3
	b _0211B73C ; case 4
	b _0211B7BC ; case 5
	b _0211B7BC ; case 6
	b _0211B7BC ; case 7
	b _0211B7BC ; case 8
	b _0211B7BC ; case 9
	b _0211B76C ; case 10
	b _0211B7BC ; case 11
	b _0211B7BC ; case 12
	b _0211B7BC ; case 13
	b _0211B7A8 ; case 14
_0211B6DC:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0211B6F4
	cmp r0, #3
	beq _0211B724
	ldmfd sp!, {r4, r5, r6, pc}
_0211B6F4:
	ldr r0, _0211B7D4 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r4, #0x200]
	cmp r0, #4
	mov r0, r4
	bne _0211B71C
	mov r1, #3
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r4, r5, r6, pc}
_0211B71C:
	bl FUN_ov49_0211b41c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B724:
	ldr r0, _0211B7D4 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r4
	bl FUN_ov49_0211b3ec
	ldmfd sp!, {r4, r5, r6, pc}
_0211B73C:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0211B750
	cmp r0, #3
	ldmnefd sp!, {r4, r5, r6, pc}
_0211B750:
	ldr r0, _0211B7D4 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r4
	mov r1, #0
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r4, r5, r6, pc}
_0211B76C:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B7D4 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r4
	mov r1, #0
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r4, r5, r6, pc}
_0211B794:
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B7A8:
	ldr r0, [r5]
	mov r1, #2
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B7BC:
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B7D0: .word gSprButtonCtrl
_0211B7D4: .word gAudioPlayer
	arm_func_end FUN_ov49_0211b66c

	arm_func_start FUN_ov49_0211b7d8
FUN_ov49_0211b7d8: ; 0x0211B7D8
	stmfd sp!, {r4, lr}
	ldr r2, _0211B828 ; =0x0211C940
	mov r4, r0
	str r2, [r4]
	mov r2, #0
	str r1, [r4, #4]
	mov r1, r2
_0211B7F4:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x28]
	cmp r2, #0xc
	blo _0211B7F4
	ldr r0, _0211B82C ; =0x02099E8E
	ldr r1, _0211B830 ; =0x0211C9FC
	ldrb r2, [r0]
	add r0, r4, #0xba0
	mov r3, #1
	bl FUN_ov16_020f2cf8
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0211B828: .word ov49_0211C940
_0211B82C: .word unk_02099E8E
_0211B830: .word ov49_0211C9FC
	arm_func_end FUN_ov49_0211b7d8

	arm_func_start FUN_ov49_0211b834
FUN_ov49_0211b834: ; 0x0211B834
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r2, _0211BCD8 ; =gSprAnimCtrl
	mov r9, r0
	ldr r0, [r2]
	ldr r4, _0211BCDC ; =gSprButtonCtrl
	mov r8, r1
	mov r6, #1
	mov r5, #3
	mov r7, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B88C
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	strh r7, [r0, #0x38]
_0211B88C:
	ldr r0, [r9, #8]
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #0xc]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B8A8: ; jump table
	b _0211B8BC ; case 0
	b _0211BA2C ; case 1
	b _0211BB7C ; case 2
	b _0211BA2C ; case 3
	b _0211BBAC ; case 4
_0211B8BC:
	tst r8, #1
	beq _0211B960
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_0210efac
	mov r0, r9
	bl FUN_ov49_0211c3e4
	movs r8, r0
	bne _0211B914
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #0x200]
	cmp r0, #4
	mov r0, r9
	beq _0211B908
	mov r1, r6
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B908:
	mov r1, #4
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B914:
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r4, #2
	mov r0, r9
	mov r1, r4
	bl FUN_ov49_0211b4a0
	cmp r8, #1
	streqb r7, [r9, #0x214]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #2
	streqb r6, [r9, #0x214]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #3
	streqb r4, [r9, #0x214]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #4
	streqb r5, [r9, #0x214]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B960:
	tst r8, #2
	beq _0211B9AC
	ldr r0, [r9, #4]
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r0, #0x8e
	bne _0211B988
	ldr r0, _0211BCE4 ; =0x020A9C40
	mov r1, #0xfc
	mov r2, #0
	bl FUN_020460a8
_0211B988:
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r4]
	mov r1, #2
	bl FUN_ov16_0210efac
	mov r0, r9
	bl FUN_ov49_0211b3ac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B9AC:
	tst r8, #0x80
	beq _0211B9EC
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #0x200]
	ldr r2, _0211BCE8 ; =0x66666667
	add r3, r0, #1
	smull r1, r4, r2, r3
	mov r0, r3, lsr #0x1f
	add r4, r0, r4, asr #1
	mov r2, #5
	smull r0, r1, r2, r4
	sub r4, r3, r0
	str r4, [r9, #0x200]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B9EC:
	tst r8, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #0x200]
	ldr r2, _0211BCE8 ; =0x66666667
	add r3, r0, #4
	smull r1, r4, r2, r3
	mov r0, r3, lsr #0x1f
	add r4, r0, r4, asr #1
	mov r2, #5
	smull r0, r1, r2, r4
	sub r4, r3, r0
	str r4, [r9, #0x200]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BA2C:
	tst r8, #1
	beq _0211BAF4
	ldr r0, [r4]
	mov r1, #1
	bl FUN_ov16_0210efac
	ldr r0, [r9, #0x144]
	cmp r0, #0
	bne _0211BAD8
	ldr r0, [r4]
	mov r1, #3
	bl FUN_ov16_0210efac
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #4]
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r0, #0x8e
	bne _0211BA94
	ldr r0, _0211BCEC ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020cd0f8 ; may be ov15 ; ov0(Mica)
	mov r1, #0x4a
	mla r1, r0, r1, r9
	ldrb r1, [r1, #0x25d]
	ldr r0, _0211BCF0 ; =0x020A1740
	strh r1, [r0, #0x7c]
_0211BA94:
	ldr r0, [r9, #0xc]
	cmp r0, #1
	bne _0211BAC4
	ldr r0, [r9, #0x200]
	cmp r0, #4
	mov r0, r9
	bne _0211BABC
	mov r1, #3
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BABC:
	bl FUN_ov49_0211b41c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BAC4:
	cmp r0, #3
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	bl FUN_ov49_0211b3ec
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BAD8:
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #0
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BAF4:
	tst r8, #2
	beq _0211BB24
	ldr r0, [r4]
	mov r1, #2
	bl FUN_ov16_0210efac
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #0
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BB24:
	tst r8, #0x20
	bne _0211BB34
	tst r8, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BB34:
	ldr r1, [r9, #0x144]
	ldr r0, _0211BCE0 ; =gAudioPlayer
	eor r1, r1, #1
	str r1, [r9, #0x144]
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #0x144]
	cmp r0, #0
	mov r0, r9
	bne _0211BB6C
	mov r1, #1
	mov r2, #0
	bl FUN_ov49_0211b2b4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BB6C:
	mov r1, #0
	mov r2, #1
	bl FUN_ov49_0211b2b4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BB7C:
	tst r8, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4]
	mov r1, #0xa
	bl FUN_ov16_0210efac
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #0
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BBAC:
	tst r8, #1
	beq _0211BC54
	ldr r0, [r9, #0x208]
	cmp r0, #3
	beq _0211BC38
	mov r0, r9
	bl FUN_ov49_0211c3e4
	movs r8, r0
	bne _0211BBEC
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #3
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BBEC:
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r4, #2
	mov r0, r9
	mov r1, r4
	bl FUN_ov49_0211b4a0
	cmp r8, #1
	streqb r7, [r9, #0x214]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #2
	streqb r6, [r9, #0x214]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #3
	streqb r4, [r9, #0x214]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #4
	streqb r5, [r9, #0x214]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BC38:
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #0
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BC54:
	tst r8, #2
	beq _0211BC78
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #0
	bl FUN_ov49_0211b4a0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BC78:
	tst r8, #0x80
	beq _0211BCA8
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #0x208]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	str r0, [r9, #0x208]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BCA8:
	tst r8, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211BCE0 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #0x208]
	add r0, r0, #3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	str r0, [r9, #0x208]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BCD8: .word gSprAnimCtrl
_0211BCDC: .word gSprButtonCtrl
_0211BCE0: .word gAudioPlayer
_0211BCE4: .word unk_020A9C40
_0211BCE8: .word 0x66666667
_0211BCEC: .word g2DAdventureLogic
_0211BCF0: .word unk_020A1740
	arm_func_end FUN_ov49_0211b834

	arm_func_start FUN_ov49_0211bcf4
FUN_ov49_0211bcf4: ; 0x0211BCF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211BD78 ; =gSprAnimCtrl
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #8]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211BD7C ; =gSprButtonCtrl
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210f20c
	cmp r0, #1
	beq _0211BD48
	cmp r0, #2
	beq _0211BD60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD48:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov49_0211b4d4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD60:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov49_0211b66c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD78: .word gSprAnimCtrl
_0211BD7C: .word gSprButtonCtrl
	arm_func_end FUN_ov49_0211bcf4

	arm_func_start FUN_ov49_0211bd80
FUN_ov49_0211bd80: ; 0x0211BD80
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _0211BDE4 ; =0x020A9C40
	mov r1, #0xff
	mov r2, #0
	bl FUN_020460a8
	ldr r5, _0211BDE8 ; =gLogicThink
	mov r0, r5
	bl FUN_020737fc
	mov r1, r0
	mov r0, r5
	bl FUN_020727a8
	ldr r0, _0211BDEC ; =0x020A0B40
	ldr r2, _0211BDF0 ; =0x0000270F
	ldrh r0, [r0, #0xf4]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	cmp r2, r0, lsr #16
	mov r1, r0, lsr #0x10
	ldr r0, _0211BDF4 ; =0x020A0B00
	movlo r1, r2
	bl FUN_02074758
	mov r0, #2
	str r0, [r4, #0x1fc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BDE4: .word unk_020A9C40
_0211BDE8: .word gLogicThink
_0211BDEC: .word unk_020A0B40
_0211BDF0: .word 0x0000270F
_0211BDF4: .word unk_020A0B00
	arm_func_end FUN_ov49_0211bd80

	arm_func_start FUN_ov49_0211bdf8
FUN_ov49_0211bdf8: ; 0x0211BDF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r1, [r5, #0x204]
	ldr r0, [r5, #0x200]
	cmp r1, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
	mov r8, r4
	mov r7, #1
	ldr r6, _0211BE8C ; =g3DPlaneCtrl
	b _0211BE74
_0211BE2C:
	cmp r4, #2
	bgt _0211BE40
	ldr r0, [r5, #0x200]
	add r1, r4, r4, lsl #1
	b _0211BE4C
_0211BE40:
	sub r1, r4, #3
	ldr r0, [r5, #0x200]
	add r1, r1, r1, lsl #1
_0211BE4C:
	add r3, r1, #2
	cmp r4, r0
	addeq r3, r1, #1
	str r8, [sp]
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x60]
	mov r2, r7
	bl FUN_ov16_0211401c
	add r4, r4, #1
_0211BE74:
	cmp r4, #5
	blt _0211BE2C
	ldr r0, [r5, #0x200]
	str r0, [r5, #0x204]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BE8C: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211bdf8

	arm_func_start FUN_ov49_0211be90
FUN_ov49_0211be90: ; 0x0211BE90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #0xc]
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x20c]
	ldr r0, [r10, #0x208]
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r5, #1
	mov r6, #2
	mov r11, r9
	mov r8, r9
	mov r7, r5
	ldr r4, _0211BF8C ; =g3DPlaneCtrl
	b _0211BF78
_0211BED4:
	ldr r0, [r10, #0x208]
	cmp r9, r0
	bne _0211BF5C
	cmp r9, #3
	bge _0211BF24
	str r8, [sp]
	add r1, r10, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x74]
	mov r2, r7
	mov r3, r9, lsl #1
	bl FUN_ov16_0211401c
	str r7, [sp]
	add r1, r10, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x74]
	mov r2, r7
	mov r3, #2
_0211BF1C:
	bl FUN_ov16_02113ec0
	b _0211BF74
_0211BF24:
	str r11, [sp]
	add r1, r10, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x74]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	add r1, r10, r9, lsl #2
	ldr r1, [r1, #0x74]
	mov r2, r5
	mov r3, r6
	b _0211BF1C
_0211BF5C:
	add r1, r10, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x74]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
_0211BF74:
	add r9, r9, #1
_0211BF78:
	cmp r9, #4
	blt _0211BED4
	ldr r0, [r10, #0x208]
	str r0, [r10, #0x20c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF8C: .word g3DPlaneCtrl
	arm_func_end FUN_ov49_0211be90

	arm_func_start FUN_ov49_0211bf90
FUN_ov49_0211bf90: ; 0x0211BF90
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211C040 ; =gSprButtonCtrl
	str r1, [r4, #0x1ec]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211C044 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r5, #0
	sub r0, r5, #1
	str r0, [r4, #0x210]
	mov r1, r5
	str r5, [r4, #8]
	str r5, [r4, #0x94]
	strb r5, [r4, #0x214]
	add r0, r4, #0x10
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r4, #0x28
	mov r1, r5
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r4, #0x9c
	mov r1, r5
	mov r2, #0x150
	bl MI_CpuFill8
	ldr r0, _0211C048 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	str r5, [r4, #0x1fc]
	str r5, [r4, #0x200]
	str r5, [r4, #0x208]
	ldr r0, _0211C04C ; =0x02099E8F
	strb r5, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C040: .word gSprButtonCtrl
_0211C044: .word gSprAnimCtrl
_0211C048: .word g3DPlaneCtrl
_0211C04C: .word unk_02099E8F
	arm_func_end FUN_ov49_0211bf90

	arm_func_start FUN_ov49_0211c050
FUN_ov49_0211c050: ; 0x0211C050
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211C290
_0211C068: ; jump table
	b _0211C08C ; case 0
	b _0211C0B0 ; case 1
	b _0211C0D4 ; case 2
	b _0211C0F4 ; case 3
	b _0211C100 ; case 4
	b _0211C140 ; case 5
	b _0211C164 ; case 6
	b _0211C190 ; case 7
	b _0211C154 ; case 8
_0211C08C:
	add r0, r4, #0x10
	mov r1, #2
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	beq _0211C290
	mov r0, r4
	bl FUN_ov49_02119f0c
	mov r0, #1
	str r0, [r4, #8]
_0211C0B0:
	mov r5, #2
	mov r1, r5
	add r0, r4, #0x10
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	beq _0211C290
	mov r0, r4
	bl FUN_ov49_02119f34
	str r5, [r4, #8]
_0211C0D4:
	mov r0, r4
	bl FUN_ov49_0211a180
	cmp r0, #0
	beq _0211C290
	mov r0, r4
	bl FUN_ov49_0211a1d0
	mov r0, #3
	str r0, [r4, #8]
_0211C0F4:
	mov r0, r4
	mov r1, #0
	bl FUN_ov49_0211b4a0
_0211C100:
	ldr r0, _0211C2C0 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211C290
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl FUN_ov49_0211a234
	mov r0, r4
	bl FUN_ov49_0211a494
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r4, #8]
_0211C140:
	mov r0, r4
	bl FUN_ov49_0211bdf8
	mov r0, r4
	bl FUN_ov49_0211be90
	b _0211C290
_0211C154:
	bl FUN_ov49_0211bd80
	mov r0, #6
	str r0, [r4, #8]
	b _0211C290
_0211C164:
	ldr r0, _0211C2C0 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211C290
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #7
	str r0, [r4, #8]
_0211C190:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211C290
	ldr r0, _0211C2C4 ; =0x020A0640
	mov r6, #0
	strb r6, [r0, #0x8d]
	ldr r1, [r4, #0x1fc]
	cmp r1, #1
	beq _0211C1D4
	cmp r1, #2
	beq _0211C220
	cmp r1, #3
	beq _0211C248
	b _0211C290
_0211C1D4:
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r0, #0x8e
	beq _0211C1F8
	ldr r0, [r4, #4]
	mov r1, r6
	mov r2, #0x8a
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	b _0211C290
_0211C1F8:
	ldr r5, [r4, #4]
	mov r1, r6
	mov r0, r5
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	mov r0, r5
	mov r1, #1
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	mov r0, r4
	bl FUN_ov49_0211c688
	b _0211C290
_0211C220:
	mov r5, #1
	strb r5, [r0, #0x8d]
	ldr r7, [r4, #4]
	mov r1, r6
	mov r0, r7
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	mov r0, r7
	mov r1, r5
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	b _0211C290
_0211C248:
	bl FUN_ov16_020f081c
	ldr r1, _0211C2C8 ; =0x0209A454
	mov r2, #1
	strb r2, [r1, #0x2e]
	strb r2, [r1, #0x2f]
	strb r6, [r1, #0x30]
	strb r6, [r1, #0x31]
	strb r6, [r1, #0x32]
	strb r6, [r1, #0x33]
	strb r0, [r1, #0x28]
	strb r6, [r1, #0x29]
	strb r6, [r1, #0x2a]
	strb r6, [r1, #0x2b]
	str r6, [r1, #0x24]
	ldr r0, [r4, #4]
	mov r1, r6
	mov r2, #0x60
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
_0211C290:
	ldr r0, _0211C2C0 ; =gSprAnimCtrl
	ldr r1, _0211C2CC ; =gDeltaTime
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_ov16_0210e10c
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r0, #0x8e
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl FUN_ov49_0211c5e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C2C0: .word gSprAnimCtrl
_0211C2C4: .word unk_020A0640
_0211C2C8: .word unk_0209A454
_0211C2CC: .word gDeltaTime
	arm_func_end FUN_ov49_0211c050

	arm_func_start FUN_ov49_0211c2d0
FUN_ov49_0211c2d0: ; 0x0211C2D0
	bx lr
	arm_func_end FUN_ov49_0211c2d0

	arm_func_start FUN_ov49_0211c2d4
FUN_ov49_0211c2d4: ; 0x0211C2D4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211C3C4 ; =0x02099E95
	mov r4, #0
	strb r4, [r1]
	mov r5, r0
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r2, [r5, #0x1ec]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211C3C8 ; =gSprButtonCtrl
	str r2, [r1]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211C3CC ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r5
	bl FUN_ov49_0211a0fc
	ldr r0, _0211C3D0 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r0, [r5, #0x1fc]
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211C3D4 ; =0x02099E8F
	ldrb r0, [r0]
	cmp r0, #0
	bne _0211C3AC
	ldr r6, _0211C3D8 ; =gLogicThink
	mov r1, r4
	mov r0, r6
	bl FUN_0207249c
	mov r4, #1
	mov r5, r0
	mov r0, r6
	mov r1, r4
	bl FUN_0207249c
	ldrh r1, [r5, #0x40]
	strh r1, [r5, #0x28]
	ldrh r1, [r0, #0x40]
	strh r1, [r0, #0x28]
	strb r4, [r5, #0x2c]
	strb r4, [r0, #0x2c]
	ldrh r1, [r5, #0x28]
	ldrh r2, [r0, #0x28]
	cmp r1, #0
	ldreqh r1, [r5, #0x26]
	cmp r2, #0
	ldreqh r2, [r0, #0x26]
	cmp r1, r2
	moveq r1, #0
	streqb r1, [r0, #0x2c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211C3AC:
	ldr r0, _0211C3DC ; =0x020A1640
	ldr r2, _0211C3E0 ; =0x02099F44
	ldrb r1, [r0, #0x22]
	ldr r0, [r2]
	bl FUN_ov131_021422e4
	ldmfd sp!, {r4, r5, r6, pc}
_0211C3C4: .word unk_02099E95
_0211C3C8: .word gSprButtonCtrl
_0211C3CC: .word gSprAnimCtrl
_0211C3D0: .word g3DPlaneCtrl
_0211C3D4: .word unk_02099E8F
_0211C3D8: .word gLogicThink
_0211C3DC: .word unk_020A1640
_0211C3E0: .word unk_02099F44
	arm_func_end FUN_ov49_0211c2d4

	arm_func_start FUN_ov49_0211c3e4
FUN_ov49_0211c3e4: ; 0x0211C3E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r6, r0
	ldr r0, [r6, #0x210]
	mov r8, #0
	cmp r0, #0
	addlt sp, sp, #0x40
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r4, r8
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r0, [r6, #0x200]
	cmp r0, #0
	moveq r5, r4
	beq _0211C4C0
	cmp r0, #1
	bne _0211C440
_0211C434:
	mov r0, r6
	mov r1, r4
	b _0211C450
_0211C440:
	cmp r0, #2
	bne _0211C45C
_0211C448:
	mov r0, r6
	mov r1, #1
_0211C450:
	bl FUN_ov49_0211c6b0
	mov r5, #2
	b _0211C4C0
_0211C45C:
	cmp r0, #3
	bne _0211C478
_0211C464:
	mov r5, #2
	mov r0, r6
	mov r1, r5
	bl FUN_ov49_0211c6b0
	b _0211C4C0
_0211C478:
	cmp r0, #4
	bne _0211C4C0
	ldr r0, [r6, #0xc]
	cmp r0, #4
	bne _0211C4B4
	ldr r0, [r6, #0x208]
	cmp r0, #0
	bne _0211C49C
	b _0211C434
_0211C49C:
	cmp r0, #1
	bne _0211C4A8
	b _0211C448
_0211C4A8:
	cmp r0, #2
	bne _0211C4C0
	b _0211C464
_0211C4B4:
	add sp, sp, #0x40
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C4C0:
	ldr r0, _0211C5BC ; =gLogicThink
	mov r1, r5
	bl FUN_0205107c
	mov r10, r0
	mov r9, #0
	add r7, sp, #0
_0211C4D8:
	mov r0, r10
	mov r1, r9
	bl FUN_0204fbe8
	mov r1, r8
	bl FUN_ov16_020efa9c
	cmp r0, #0
	strne r0, [r7, r4, lsl #2]
	add r9, r9, #1
	addne r4, r4, #1
	cmp r9, #0x10
	blt _0211C4D8
	ldr r0, _0211C5BC ; =gLogicThink
	mov r1, #0
	bl FUN_0207249c
	cmp r5, #0
	beq _0211C528
	cmp r4, #0
	addeq sp, sp, #0x40
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C528:
	ldr r1, [r6, #0x200]
	cmp r1, #4
	ldreqb r0, [r0, #0x2d]
	cmpeq r0, #0
	addeq sp, sp, #0x40
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211C5BC ; =gLogicThink
	mov r1, r5
	bl FUN_0204c50c
	cmp r0, #0xb
	addlt sp, sp, #0x40
	movlt r0, #4
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r6, #0x210]
	cmp r1, #0xb
	bne _0211C580
	ldr r0, [r6, #0x200]
	cmp r0, #4
	addne sp, sp, #0x40
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C580:
	ldr r0, [r6, #0x200]
	cmp r0, #4
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211C5BC ; =gLogicThink
	add r2, sp, #0
	mov r3, r4
	and r1, r1, #0xff
	bl FUN_02073808
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C5BC: .word gLogicThink
	arm_func_end FUN_ov49_0211c3e4

	arm_func_start FUN_ov49_0211c5c0
FUN_ov49_0211c5c0: ; 0x0211C5C0
	add r1, r0, #0x16
	ldr r0, [r0, #0x1c]
	ldr r2, _0211C5D8 ; =0x0000098A
	ldr r12, _0211C5DC ; =MI_CpuCopy8
	add r1, r1, #0x200
	bx r12
_0211C5D8: .word 0x0000098A
_0211C5DC: .word MI_CpuCopy8
	arm_func_end FUN_ov49_0211c5c0

	arm_func_start FUN_ov49_0211c5e0
FUN_ov49_0211c5e0: ; 0x0211C5E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211C684 ; =g2DAdventureLogic
	mov r7, r0
	ldr r0, [r1]
	bl FUN_ov0_020cd0f8 ; may be ov15 ; ov0(Mica)
	mov r6, r0
	mov r4, #0x4a
	mul lr, r6, r4
	add r2, r7, lr
	ldrb r1, [r2, #0x216]
	add r0, r7, #0x22
	add r3, r0, #0x200
	strb r1, [r7, #0xbe1]
	add r1, r7, #0x3e4
	mov r5, #0x16
	ldrb r12, [r2, #0x218]
	add r0, r7, #0xb00
	mov r2, r5
	strh r12, [r0, #0xe2]
	add r0, r3, lr
	add r1, r1, #0x800
	bl MI_CpuCopy8
	add r0, r7, #0x23c
	add r1, r7, #0xfa
	mla r0, r6, r4, r0
	mov r2, r5
	add r1, r1, #0xb00
	bl MI_CpuCopy8
	mov r5, #0
	mla r0, r6, r4, r7
	strb r5, [r7, #0xc13]
	ldrb r2, [r0, #0x25d]
	add r1, r7, #0xc00
	ldr r0, [r7, #4]
	strh r2, [r1, #0x10]
	ldr r2, [r0]
	add r1, r7, #0xbe0
	ldr r2, [r2, #0x3c]
	blx r2
	strb r5, [r7, #0xbe0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C684: .word g2DAdventureLogic
	arm_func_end FUN_ov49_0211c5e0

	arm_func_start FUN_ov49_0211c688
FUN_ov49_0211c688: ; 0x0211C688
	ldr r2, _0211C6A4 ; =0x020A1740
	mov r1, #0
	strh r1, [r2, #0x7c]
	ldr r0, _0211C6A8 ; =gLogicThink
	ldr r12, _0211C6AC ; =FUN_020737f0
	strh r1, [r2, #0x7e]
	bx r12
_0211C6A4: .word unk_020A1740
_0211C6A8: .word gLogicThink
_0211C6AC: .word FUN_020737f0
	arm_func_end FUN_ov49_0211c688

	arm_func_start FUN_ov49_0211c6b0
FUN_ov49_0211c6b0: ; 0x0211C6B0
	ldr r2, _0211C6CC ; =0x020A1640
	ldr r0, _0211C6D0 ; =0x02099F44
	strb r1, [r2, #0x22]
	ldr r0, [r0]
	ldr r12, _0211C6D4 ; = FUN_ov131_021421f4
	and r1, r1, #0xff
	bx r12
_0211C6CC: .word unk_020A1640
_0211C6D0: .word unk_02099F44
_0211C6D4: .word FUN_ov131_021421f4
	arm_func_end FUN_ov49_0211c6b0

	arm_func_start FUN_ov49_0211c6d8
FUN_ov49_0211c6d8: ; 0x0211C6D8
	bx lr
	arm_func_end FUN_ov49_0211c6d8

	arm_func_start FUN_ov49_0211c6dc
FUN_ov49_0211c6dc: ; 0x0211C6DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov49_0211c6dc

	.rodata
	.global ov49_0211C6F0
ov49_0211C6F0:
	.byte 0x83, 0x4E, 0x83, 0x8A, 0x83, 0x41, 0x5B, 0x8F, 0xF0, 0x8C, 0x8F, 0x2F, 0x82, 0xB6, 0x82, 0xE5
	.byte 0x82, 0xA4, 0x82, 0xAF, 0x82, 0xF1, 0x5D, 0x82, 0xF0, 0x0A, 0x82, 0xDD, 0x82, 0xBD, 0x82, 0xB5
	.byte 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x83
	.byte 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x5B, 0x95, 0xD2, 0x90, 0xAC, 0x2F, 0x82, 0xD6
	.byte 0x82, 0xF1, 0x82, 0xB9, 0x82, 0xA2, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82
	.byte 0xB9, 0x82, 0xF1, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x5B, 0x96, 0xBC, 0x2F, 0x82, 0xDF, 0x82, 0xA2, 0x5D, 0x82
	.byte 0xC6, 0x83, 0x47, 0x83, 0x93, 0x83, 0x75, 0x83, 0x8C, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x82, 0xB9
	.byte 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB9
	.byte 0x82, 0xF1, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x83, 0x74, 0x83, 0x42, 0x81, 0x5B, 0x83, 0x8B, 0x83, 0x68, 0x82, 0xC9, 0x82, 0x50, 0x82, 0x50
	.byte 0x5B, 0x90, 0x6C, 0x2F, 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xCC, 0x0A, 0x83, 0x81, 0x83, 0x93
	.byte 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xAA, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x49
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov49_0211c7f0
FUN_ov49_0211c7f0:
	stmdb sp!,{r3,r4,r5,lr}
	mov r5,#0x2000
	mov r0,r5
	bl FX_Sqrt
	ldr r4,_0211F7B4
	str r0,[r4, #0]
	ldr r0,_0211F7B8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1,#0x800
	str r0,[r4,#0x10 ]
	ldr r0,_0211F7BC ; =0x0000EA3C
	str r1,[r4,#0xc ]
	str r0,[r4,#0x8 ]
	add r0,r5,#0x4e0000
	str r0,[r4,#0x4 ]
	add r0,r1,#0x840000
	str r0,[r4,#0x14 ]
	ldmia sp!,{r3,r4,r5,pc}
_0211F7B4: .word ov49_0211C860
_0211F7B8: .word 0x00009CCD
_0211F7BC: .word 0x0000EA3C
	arm_func_end FUN_ov49_0211c7f0

	.section .sinit, 4
ov49_0211C844:
	.word FUN_ov49_0211c7f0

	.data
	.global ov49_0211C860
ov49_0211C860:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C878
ov49_0211C878:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x77, 0x30, 0x33
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C884
ov49_0211C884:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x63, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C890
ov49_0211C890:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x77, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C89C
ov49_0211C89C:
	.byte 0x70, 0x72, 0x72, 0x64
	.byte 0x5F, 0x63, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C8A8
ov49_0211C8A8:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x6D, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C8B4
ov49_0211C8B4:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x63, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C8C0
ov49_0211C8C0:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C8CC
ov49_0211C8CC:
	.byte 0x70, 0x72, 0x72, 0x64
	.byte 0x5F, 0x62, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C8D8
ov49_0211C8D8:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x77, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C8E4
ov49_0211C8E4:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C8F0
ov49_0211C8F0:
	.byte 0x70, 0x72, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C8FC
ov49_0211C8FC:
	.byte 0x70, 0x72, 0x72, 0x64
	.byte 0x5F, 0x62, 0x67, 0x30, 0x32, 0x00, 0x00, 0x00
	.global ov49_0211C908
ov49_0211C908:
	.word ov49_0211C8FC
	.word ov49_0211C8F0
	.word ov49_0211C8CC
	.word ov49_0211C8C0
	.word ov49_0211C8B4
	.word ov49_0211C884
	.word ov49_0211C89C
	.word ov49_0211C8A8
	.word ov49_0211C8D8
	.word ov49_0211C8E4
	.word ov49_0211C878
	.word ov49_0211C890
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C940
ov49_0211C940:
	.word FUN_ov49_0211c6d8
	.word FUN_ov49_0211c6dc
	.word FUN_ov49_0211b834
	.word FUN_ov49_0211bcf4
	.word FUN_ov49_0211bf90
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov49_0211c050
	.word FUN_ov49_0211c2d0
	.word FUN_ov49_0211c2d4
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
	.word _ZN12CommonScreen8transferEPv
	.word FUN_ov49_02119f00
	.word _ZN12CommonScreen5stateEv
	.global ov49_0211C9AC
ov49_0211C9AC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x72, 0x61, 0x63, 0x74
	.byte 0x69, 0x63, 0x65, 0x5F, 0x72, 0x75, 0x6C, 0x65, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C9D0
ov49_0211C9D0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70
	.byte 0x72, 0x61, 0x63, 0x74, 0x69, 0x63, 0x65, 0x5F, 0x72, 0x75, 0x6C, 0x65, 0x2E, 0x53, 0x50, 0x44
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov49_0211C9F4
ov49_0211C9F4:
	.byte 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov49_0211C9FC
ov49_0211C9FC:
	.byte 0x47, 0x61, 0x6D, 0x65
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

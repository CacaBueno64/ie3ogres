
	.include "/macros/function.inc"
	.include "/include/overlay18.inc"

	.text
	arm_func_start FUN_ov18_02119f00
FUN_ov18_02119f00: ; 0x02119F00
	ldr r2, _02119F10 ; =0x0211BBD0
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_02119F10: .word ov18_0211BBD0
	arm_func_end FUN_ov18_02119f00

	arm_func_start FUN_ov18_02119f14
FUN_ov18_02119f14: ; 0x02119F14
	bx lr
	arm_func_end FUN_ov18_02119f14

	arm_func_start FUN_ov18_02119f18
FUN_ov18_02119f18: ; 0x02119F18
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov18_02119f18

	arm_func_start FUN_ov18_02119f2c
FUN_ov18_02119f2c: ; 0x02119F2C
	ldr r3, [r0, #0x24]
	strh r2, [r0, #0xa]
	strh r1, [r0, #8]
	cmp r3, #0
	ldrneh r1, [r0, #0xa]
	orrne r1, r1, #0x4000
	strneh r1, [r0, #0xa]
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	ldrneh r1, [r0, #8]
	orrne r1, r1, #0x4000
	strneh r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov18_02119f2c

	arm_func_start FUN_ov18_02119f60
FUN_ov18_02119f60: ; 0x02119F60
	stmfd sp!, {r3, lr}
	mov r2, #0
	str r2, [r0, #0x28]
	str r2, [r0, #0x2c]
	ldrh r2, [r1, #4]
	cmp r2, #1
	bne _02119FE4
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0xe]
	ldrh r2, [r1, #4]
	strh r2, [r0, #0x10]
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x12]
	ldrh r1, [r1, #6]
	cmp r1, #0
	ldreq r1, [r0, #0x24]
	cmpeq r1, #0
	bne _02119FD8
	ldrh lr, [r0, #0xc]
	ldrh r12, [r0, #0xe]
	ldrh r3, [r0, #0x10]
	ldrh r2, [r0, #0x12]
	mov r1, #1
	strh lr, [r0, #0x14]
	strh r12, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r2, [r0, #0x1a]
	str r1, [r0, #0x28]
_02119FD8:
	mov r1, #1
	str r1, [r0, #0x24]
	ldmfd sp!, {r3, pc}
_02119FE4:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _0211A018
	ldrh lr, [r0, #0xc]
	ldrh r12, [r0, #0xe]
	ldrh r3, [r0, #0x10]
	ldrh r2, [r0, #0x12]
	mov r1, #1
	strh lr, [r0, #0x1c]
	strh r12, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r2, [r0, #0x22]
	str r1, [r0, #0x2c]
_0211A018:
	mov r1, #0
	str r1, [r0, #0x24]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov18_02119f60

	arm_func_start FUN_ov18_0211a024
FUN_ov18_0211a024: ; 0x0211A024
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	ldr lr, [sp, #0x14]
	cmp r1, #4
	mov r12, #0
	addls pc, pc, r1, lsl #2
	b _0211A144
_0211A040: ; jump table
	b _0211A054 ; case 0
	b _0211A078 ; case 1
	b _0211A090 ; case 2
	b _0211A0B4 ; case 3
	b _0211A0F8 ; case 4
_0211A054:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _0211A144
	ldrh r1, [r0, #0xc]
	cmp r1, r2
	ldrgeh r0, [r0, #0xe]
	cmpge r0, r3
	blt _0211A144
	b _0211A138
_0211A078:
	ldrh r1, [r0, #0x14]
	cmp r1, r2
	ldrgeh r0, [r0, #0x16]
	cmpge r0, r3
	blt _0211A144
	b _0211A138
_0211A090:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _0211A144
	ldrh r1, [r0, #0x1c]
	cmp r1, r2
	ldrgeh r0, [r0, #0x1e]
	cmpge r0, r3
	blt _0211A144
	b _0211A138
_0211A0B4:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _0211A144
	ldrh r5, [r0, #0x14]
	cmp r5, r2
	ldrgeh r1, [r0, #0x16]
	cmpge r1, r3
	blt _0211A144
	cmp r5, r4
	cmple r1, lr
	bgt _0211A144
	ldrh r1, [r0, #0xc]
	cmp r1, r2
	ldrgeh r0, [r0, #0xe]
	cmpge r0, r3
	blt _0211A144
	b _0211A138
_0211A0F8:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _0211A144
	ldrh r5, [r0, #0x14]
	cmp r5, r2
	ldrgeh r1, [r0, #0x16]
	cmpge r1, r3
	blt _0211A144
	cmp r5, r4
	cmple r1, lr
	bgt _0211A144
	ldrh r1, [r0, #0x1c]
	cmp r1, r2
	ldrgeh r0, [r0, #0x1e]
	cmpge r0, r3
	blt _0211A144
_0211A138:
	cmp r1, r4
	cmple r0, lr
	movle r12, #1
_0211A144:
	mov r0, r12
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov18_0211a024

	arm_func_start FUN_ov18_0211a14c
FUN_ov18_0211a14c: ; 0x0211A14C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r5, r0
	add r0, r5, #0x224
	mov r11, #0
	mov r1, r11
	add r0, r0, #0xc00
	mov r2, #0xc0
	mov r4, #1
	bl MI_CpuFill8
	ldr r6, _0211A738 ; =g3DPlaneCtrl
	str r11, [sp, #0x14]
	ldr r0, [r6]
	bl FUN_ov16_021123b4
	ldr r3, _0211A73C ; =gAllocator
	ldr r1, _0211A740 ; =0x0211BC3C
	ldr r0, [r3]
	cmp r0, #0
	beq _0211A1B4
	str r11, [sp]
	str r11, [sp, #4]
	str r11, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x14
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0211A1B4:
	mov r4, #0
	add r8, sp, #0x18
	ldr r9, _0211A744 ; =0x0211BC5C
	ldr r7, _0211A748 ; =0x0211BB18
	ldr r10, _0211A74C ; =0x0211BC64
	b _0211A248
_0211A1CC:
	cmp r4, #9
	addls pc, pc, r4, lsl #2
	b _0211A200
_0211A1D8: ; jump table
	b _0211A200 ; case 0
	b _0211A200 ; case 1
	b _0211A200 ; case 2
	b _0211A200 ; case 3
	b _0211A200 ; case 4
	b _0211A244 ; case 5
	b _0211A244 ; case 6
	b _0211A244 ; case 7
	b _0211A244 ; case 8
	b _0211A244 ; case 9
_0211A200:
	ldr r2, [r7, r4, lsl #2]
	mov r0, r8
	mov r1, r9
	bl sprintf
	ldr r3, [sp, #0x14]
	mov r0, r5
	mov r1, r8
	mov r2, r10
	bl FUN_ov18_0211a764
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x48]
	movs r1, r0
	beq _0211A244
	ldr r0, [r6]
	mov r2, r11
	mov r3, r11
	bl FUN_02059038
_0211A244:
	add r4, r4, #1
_0211A248:
	cmp r4, #0xb
	blt _0211A1CC
	ldr r1, [sp, #0x14]
	ldr r0, _0211A73C ; =gAllocator
	mov r10, #1
	ldr r7, _0211A738 ; =g3DPlaneCtrl
	mov r6, #0x1c
	bl _ZN9Allocator10deallocateEPv
	mov r4, #0
	mov r9, #5
	mov r8, #2
	b _0211A2A8
_0211A278:
	ldr r0, [r7]
	mov r1, r9
	mov r2, r8
	bl FUN_02059630
	add r2, r5, r4, lsl #2
	mov r1, r0
	str r0, [r2, #0x74]
	ldr r0, [r7]
	mov r2, r11
	mov r3, r11
	bl FUN_02059038
	add r4, r4, #1
_0211A2A8:
	cmp r4, #4
	blt _0211A278
	ldr r0, [r7]
	mov r2, r10
	mov r1, #4
	bl FUN_ov16_02112724
	str r0, [r5, #0x84]
	ldr r0, [r7]
	mov r2, r10
	mov r1, #5
	bl FUN_ov16_02112724
	str r0, [r5, #0x88]
	mov r4, #2
	mov r8, #5
	b _0211A300
_0211A2E4:
	ldr r0, [r7]
	mov r1, r8
	mov r2, r10
	bl FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x84]
	add r4, r4, #1
_0211A300:
	cmp r4, #6
	blt _0211A2E4
	mov r4, #0
	ldr r0, [r7]
	ldr r1, [r5, #0x84]
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02114248
	ldr r0, [r7]
	ldr r1, [r5, #0x88]
	mov r2, #0xcb
	mov r3, #0xc
	bl FUN_ov16_02114248
	ldr r8, _0211A750 ; =0x0211B91C
	b _0211A3E4
_0211A33C:
	mul r0, r4, r6
	add r1, r8, r0
	ldr r2, [r8, r0]
	ldr r0, [r1, #8]
	add r2, r5, r2, lsl #2
	add r0, r5, r0, lsl #2
	ldr r9, [r2, #0x84]
	ldr r10, [r1, #4]
	ldr r1, [r0, #0x48]
	ldr r0, [r7]
	and r3, r1, #0xff
	mov r1, r9
	mov r2, r10
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r7]
	mov r1, r9
	mov r2, r10
	mla r3, r4, r6, r8
	ldr r3, [r3, #0xc]
	bl FUN_ov16_0211401c
	ldr r0, [r7]
	mov r1, r9
	mov r2, r10
	mla r3, r4, r6, r8
	ldr r3, [r3, #0x10]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	mov r1, r9
	mov r2, r10
	mla r3, r4, r6, r8
	ldr r0, [r3, #0x18]
	ldr r3, [r3, #0x14]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r3, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r7]
	bl FUN_ov16_02113b78
	add r4, r4, #1
_0211A3E4:
	mul r0, r4, r6
	ldr r0, [r8, r0]
	cmp r0, #2
	blt _0211A33C
	mov r11, #0
	str r11, [sp]
	mov r8, #3
	stmib sp, {r8, r11}
	mov r6, #1
	mov r7, #2
	ldr r2, [r5, #0x84]
	mov r0, r5
	mov r1, r6
	mov r3, r7
	bl FUN_ov18_0211b4a8
	str r6, [sp]
	mov r4, #4
	stmib sp, {r4, r6}
	ldr r2, [r5, #0x84]
	mov r0, r5
	mov r1, r7
	mov r3, r8
	bl FUN_ov18_0211b4a8
	str r7, [sp]
	mov r0, #5
	stmib sp, {r0, r7}
	ldr r2, [r5, #0x84]
	mov r3, r4
	mov r0, r5
	mov r1, r8
	bl FUN_ov18_0211b4a8
	mov r1, r6
	mov r6, #0xa8
	str r6, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r4, #0xc0
	str r4, [sp, #8]
	mov r0, r5
	mov r2, #0x20
	mov r3, #8
	bl FUN_ov18_0211b4dc
	str r6, [sp]
	mov r0, #0xf8
	stmib sp, {r0, r4}
	mov r0, r5
	mov r1, r7
	mov r2, #0x10
	mov r3, #0xc8
	bl FUN_ov18_0211b4dc
	str r6, [sp]
	mov r0, #0x98
	stmib sp, {r0, r4}
	mov r1, r8
	mov r2, r7
	mov r0, r5
	mov r3, #0x68
	bl FUN_ov18_0211b4dc
	ldr r7, _0211A738 ; =g3DPlaneCtrl
	mov r6, #0x1c
	b _0211A614
_0211A4D8:
	add r1, r11, #2
	mov r0, r11, lsl #5
	add r1, r5, r1, lsl #2
	add r0, r0, #0x20
	mov r2, r0, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r0, [r7]
	ldr r1, [r1, #0x84]
	mov r2, #0
	bl FUN_ov16_02114248
	add r0, r5, r11, lsl #2
	mov r4, #9
	str r0, [sp, #0x10]
	ldr r8, _0211A750 ; =0x0211B91C
	b _0211A608
_0211A514:
	mul r0, r4, r6
	ldr r1, [r8, r0]
	add r0, r8, r0
	add r1, r11, r1
	add r1, r5, r1, lsl #2
	ldr r9, [r1, #0x84]
	ldr r10, [r0, #4]
	cmp r10, #5
	beq _0211A55C
	ldr r1, [r0, #8]
	ldr r0, [r7]
	add r1, r5, r1, lsl #2
	ldr r2, [r1, #0x48]
	mov r1, r9
	and r3, r2, #0xff
	mov r2, r10
	bl FUN_ov16_021137dc
	b _0211A594
_0211A55C:
	ldr r3, [sp, #0x10]
	ldr r0, [r7]
	ldr r3, [r3, #0x74]
	mov r1, r9
	mov r2, r10
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	mov r2, r10
	mov r3, #0x100
	bl FUN_ov16_02113d08
_0211A594:
	mla r3, r4, r6, r8
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, [r3, #0xc]
	mov r1, r9
	mov r2, r10
	bl FUN_ov16_0211401c
	mla r3, r4, r6, r8
	ldr r3, [r3, #0x10]
	ldr r0, [r7]
	mov r3, r3, lsl #0x10
	mov r1, r9
	mov r2, r10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	mla r3, r4, r6, r8
	ldr r0, [r3, #0x18]
	ldr r3, [r3, #0x14]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r3, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r7]
	mov r1, r9
	mov r2, r10
	bl FUN_ov16_02113b78
	add r4, r4, #1
_0211A608:
	cmp r4, #0xe
	blt _0211A514
	add r11, r11, #1
_0211A614:
	cmp r11, #4
	blt _0211A4D8
	mov r0, #1
	ldr r1, _0211A754 ; =0x020A1240
	str r0, [r5, #0x30]
	ldrh r2, [r1, #0x70]
	sub r1, r0, #2
	mov r4, #0
	ldr r0, _0211A758 ; =0x020A9C40
	str r2, [r5, #0x38]
	str r1, [r5, #0x34]
	str r4, [r5, #0x3c]
	bl FUN_02045cb0
	str r4, [r5, #0x9c]
	str r4, [r5, #0xa0]
	b _0211A66C
_0211A654:
	ldrb r1, [r0, r4, lsl #2]
	add r4, r4, #1
	cmp r1, #0
	ldrne r1, [r5, #0x3c]
	addne r1, r1, #1
	strne r1, [r5, #0x3c]
_0211A66C:
	cmp r4, #0xbc
	blt _0211A654
	ldr r0, [r5, #0x3c]
	ldr r4, _0211A75C ; =0x66666667
	add r1, r0, #3
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r8, r0, asr #2
	cmp r8, #0
	movle r8, #1
	mov r0, #0
	str r0, [sp]
	smull r0, r3, r4, r8
	mov r2, r8, lsr #0x1f
	add r3, r2, r3, asr #2
	ldr r0, [r7]
	ldr r1, [r5, #0x88]
	mov r2, #3
	bl FUN_ov16_0211401c
	mov r0, #0
	str r0, [sp]
	smull r1, r3, r4, r8
	mov r0, r8, lsr #0x1f
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r3
	mov r6, #4
	sub r3, r8, r1
	ldr r0, [r7]
	ldr r1, [r5, #0x88]
	mov r2, r6
	bl FUN_ov16_0211401c
	add r0, r5, #0x2e4
	mov r1, #0
	add r0, r0, #0xc00
	mov r2, #0x28
	bl MI_CpuFill8
	add r1, r5, #0x2e4
	ldr r0, _0211A760 ; =0x0211BC84
	add r1, r1, #0xc00
	bl FUN_ov16_020f3054
	add r0, r5, #0xef0
	mov r1, r6
	bl FUN_ov16_020f5278
	ldr r0, [r7]
	mov r1, r6
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r5, #0xef8]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A738: .word g3DPlaneCtrl
_0211A73C: .word gAllocator
_0211A740: .word ov18_0211BC3C
_0211A744: .word ov18_0211BC5C
_0211A748: .word ov18_0211BB18
_0211A74C: .word ov18_0211BC64
_0211A750: .word ov18_0211B91C
_0211A754: .word unk_020A1240
_0211A758: .word unk_020A9C40
_0211A75C: .word 0x66666667
_0211A760: .word ov18_0211BC84
	arm_func_end FUN_ov18_0211a14c

	arm_func_start FUN_ov18_0211a764
FUN_ov18_0211a764: ; 0x0211A764
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r2
	mov r0, r1
	mov r1, r3
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f3d08
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _0211A7D0 ; =g3DPlaneCtrl
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	stmib sp, {r1, r3}
	str r2, [sp, #0xc]
	mov r2, r4
	mov r1, #5
	str r12, [sp, #0x10]
	bl FUN_02058800
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211A7D0: .word g3DPlaneCtrl
	arm_func_end FUN_ov18_0211a764

	arm_func_start FUN_ov18_0211a7d4
FUN_ov18_0211a7d4: ; 0x0211A7D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r4
	ldr r7, _0211A900 ; =g3DPlaneCtrl
	b _0211A800
_0211A7EC:
	add r1, r6, r5, lsl #2
	ldr r0, [r7]
	ldr r1, [r1, #0x84]
	bl FUN_ov16_021128c4
	add r5, r5, #1
_0211A800:
	cmp r5, #6
	blt _0211A7EC
	mov r5, #0
	ldr r7, _0211A900 ; =g3DPlaneCtrl
	b _0211A830
_0211A814:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x48]
	cmp r1, #0
	beq _0211A82C
	ldr r0, [r7]
	bl FUN_02058ee0
_0211A82C:
	add r5, r5, #1
_0211A830:
	cmp r5, #0xb
	blt _0211A814
	mov r5, #0
	ldr r7, _0211A900 ; =g3DPlaneCtrl
	b _0211A860
_0211A844:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x74]
	cmp r1, #0
	beq _0211A85C
	ldr r0, [r7]
	bl FUN_02058ee0
_0211A85C:
	add r5, r5, #1
_0211A860:
	cmp r5, #4
	blt _0211A844
	ldr r7, _0211A900 ; =g3DPlaneCtrl
	ldr r0, [r7]
	bl FUN_ov16_021123c4
	ldr r1, [r6, #0x38]
	ldr r0, _0211A904 ; =0x020A1240
	strh r1, [r0, #0x70]
	ldr r0, [r7]
	ldr r1, [r6, #0xef8]
	bl FUN_ov16_021128c4
	mov r5, #0
	b _0211A8B0
_0211A894:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xefc]
	cmp r1, #0
	beq _0211A8AC
	ldr r0, [r7]
	bl FUN_02058ee0
_0211A8AC:
	add r5, r5, #1
_0211A8B0:
	cmp r5, #4
	blt _0211A894
	add r0, r6, #0x2e4
	add r0, r0, #0xc00
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r6, #0x2e4
	add r0, r0, #0xc00
	bl FUN_ov16_020f33fc
	add r0, r6, #0xef0
	sub r1, r4, #1
	str r4, [r6, #0xee4]
	str r4, [r6, #0xee8]
	strb r4, [r6, #0xeec]
	strb r4, [r6, #0xeed]
	strb r4, [r6, #0xeee]
	bl FUN_ov16_020f57b0
	add r0, r6, #0xef0
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A900: .word g3DPlaneCtrl
_0211A904: .word unk_020A1240
	arm_func_end FUN_ov18_0211a7d4

	arm_func_start FUN_ov18_0211a908
FUN_ov18_0211a908: ; 0x0211A908
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x30]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211A920: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0211A94C ; case 1
	b _0211A970 ; case 2
	b _0211A98C ; case 3
	b _0211A9A0 ; case 4
	b _0211A9BC ; case 5
	b _0211A9D0 ; case 6
	b _0211A9EC ; case 7
	b _0211AA18 ; case 8
	ldmfd sp!, {r3, r4, r5, pc} ; case 9
	b _0211AA78 ; case 10
_0211A94C:
	bl FUN_ov18_0211aaac
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x44]
	add r1, r1, #1
	cmp r0, #0
	str r1, [r4, #0x30]
	moveq r0, #7
	streq r0, [r4, #0x30]
	ldmeqfd sp!, {r3, r4, r5, pc}
_0211A970:
	mov r0, r4
	bl FUN_ov18_0211abc8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
_0211A98C:
	mov r0, r4
	bl FUN_ov18_0211ac30
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
_0211A9A0:
	mov r0, r4
	bl FUN_ov18_0211ace8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
_0211A9BC:
	mov r0, r4
	bl FUN_ov18_0211af34
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
_0211A9D0:
	mov r0, r4
	bl FUN_ov18_0211b024
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
_0211A9EC:
	mov r0, r4
	bl FUN_ov18_0211ad74
	mov r0, r4
	bl FUN_ov18_0211b04c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
_0211AA18:
	mov r0, r4
	bl FUN_ov18_0211b508
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl FUN_ov18_0211b118
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, r5
	bl FUN_ov18_0211b154
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov18_0211b6bc
	ldr r0, [r4, #0x30]
	cmp r0, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov18_0211b1f4
	ldmfd sp!, {r3, r4, r5, pc}
_0211AA78:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r4, [r4, #4]
	mov r1, #0
	mov r0, r4
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	mov r0, r4
	mov r1, #1
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov18_0211a908

	arm_func_start FUN_ov18_0211aaac
FUN_ov18_0211aaac: ; 0x0211AAAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r0, [r10, #4]
	mov r9, #0
	ldr r2, [r0]
	mov r1, r9
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, _0211ABB4 ; =0x020A9C40
	ldr r7, [r10, #0x38]
	bl FUN_02045cb0
	mov r8, r0
	add r6, r10, #0xa4
	ldr r5, _0211ABB8 ; =0x0000024E
	mov r11, r9
	ldr r4, _0211ABBC ; =gAllocator
	b _0211AB70
_0211AAF4:
	ldr r0, [r10, #0x3c]
	add r1, r9, r7, lsl #2
	cmp r1, r0
	bge _0211AB78
	mov r0, #0x360
	mul r2, r9, r0
	add r0, r10, r2
	ldrb r3, [r8, r1, lsl #2]
	add r12, r8, r1, lsl #2
	add r2, r6, r2
	strb r3, [r0, #0x401]
	ldrb r3, [r12, #1]
	strb r3, [r0, #0x400]
	ldrh r3, [r12, #2]
	str r3, [r0, #0x3fc]
	str r2, [sp, #0x10]
	ldr r0, [r4]
	ldrb r1, [r8, r1, lsl #2]
	cmp r0, #0
	sub r0, r1, #1
	mul r1, r0, r5
	beq _0211AB6C
	stmia sp, {r1, r5, r11}
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, _0211ABC0 ; =0x0211BC9C
	add r2, sp, #0x10
	mov r3, r4
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0211AB6C:
	add r9, r9, #1
_0211AB70:
	cmp r9, #4
	blt _0211AAF4
_0211AB78:
	str r9, [r10, #0x44]
	mov r5, #2
	ldr r4, _0211ABC4 ; =g3DPlaneCtrl
	b _0211ABA4
_0211AB88:
	add r0, r9, #2
	add r1, r10, r0, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x84]
	mov r2, r5
	bl FUN_ov16_02114370
	add r9, r9, #1
_0211ABA4:
	cmp r9, #4
	blt _0211AB88
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ABB4: .word unk_020A9C40
_0211ABB8: .word 0x0000024E
_0211ABBC: .word gAllocator
_0211ABC0: .word ov18_0211BC9C
_0211ABC4: .word g3DPlaneCtrl
	arm_func_end FUN_ov18_0211aaac

	arm_func_start FUN_ov18_0211abc8
FUN_ov18_0211abc8: ; 0x0211ABC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	ldr r0, [r5, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _0211AC24
	ldr r7, _0211AC2C ; =gAllocator
	add r9, r5, #0xa4
	mvn r8, #0
	mov r6, #0x360
_0211ABF0:
	ldr r0, [r7]
	cmp r0, #0
	moveq r0, r8
	beq _0211AC08
	mla r1, r4, r6, r9
	bl _ZN7CFileIO11tryFinalizeEPv
_0211AC08:
	cmp r0, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #0x44]
	add r4, r4, #1
	cmp r4, r0
	blt _0211ABF0
_0211AC24:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AC2C: .word gAllocator
	arm_func_end FUN_ov18_0211abc8

	arm_func_start FUN_ov18_0211ac30
FUN_ov18_0211ac30: ; 0x0211AC30
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r0, [r10, #0x44]
	mov r9, #0
	cmp r0, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0xf2
	ldr r7, _0211ACDC ; =0x0000010A
	ldr r4, _0211ACE0 ; =gAllocator
	add r8, r0, #0x200
	mov r6, r9
	mov r5, #1
	mov r11, #0x360
_0211AC6C:
	mul r1, r9, r11
	add r2, r10, r1
	ldrb r0, [r2, #0x400]
	tst r0, #2
	addne r0, r2, #0x200
	ldrneh r0, [r0, #0xf0]
	cmpne r0, #0
	beq _0211ACC4
	sub r0, r0, #1
	mul r2, r0, r7
	ldr r0, [r4]
	add r1, r8, r1
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _0211ACC4
	stmia sp, {r2, r7}
	str r6, [sp, #8]
	ldr r1, _0211ACE4 ; =0x0211BCBC
	add r2, sp, #0x10
	mov r3, r4
	str r5, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0211ACC4:
	ldr r0, [r10, #0x44]
	add r9, r9, #1
	cmp r9, r0
	blt _0211AC6C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACDC: .word 0x0000010A
_0211ACE0: .word gAllocator
_0211ACE4: .word ov18_0211BCBC
	arm_func_end FUN_ov18_0211ac30

	arm_func_start FUN_ov18_0211ace8
FUN_ov18_0211ace8: ; 0x0211ACE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0211AD68
	add r0, r7, #0xf2
	ldr r9, _0211AD70 ; =gAllocator
	add r5, r0, #0x200
	mvn r4, #0
	mov r8, #0x360
_0211AD14:
	mul r2, r6, r8
	add r1, r7, r2
	ldrb r0, [r1, #0x400]
	tst r0, #2
	addne r0, r1, #0x200
	ldrneh r0, [r0, #0xf0]
	cmpne r0, #0
	beq _0211AD58
	ldr r0, [r9]
	cmp r0, #0
	moveq r0, r4
	beq _0211AD4C
	add r1, r5, r2
	bl _ZN7CFileIO11tryFinalizeEPv
_0211AD4C:
	cmp r0, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AD58:
	ldr r0, [r7, #0x44]
	add r6, r6, #1
	cmp r6, r0
	blt _0211AD14
_0211AD68:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AD70: .word gAllocator
	arm_func_end FUN_ov18_0211ace8

	arm_func_start FUN_ov18_0211ad74
FUN_ov18_0211ad74: ; 0x0211AD74
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	mov r10, r0
	add r0, r10, #0xac
	mov r4, #0x360
	mov r8, #0
	add r7, r10, #0xee
	str r0, [sp, #0x14]
	mov r6, #2
	mov r11, #1
	ldr r5, _0211AF30 ; =g3DPlaneCtrl
	b _0211AF1C
_0211ADA4:
	mla r1, r8, r4, r7
	add r0, sp, #0x18
	add r9, r8, #2
	bl STD_CopyString
	mul r1, r8, r4
	add r3, r10, r1
	ldr r2, [r3, #0x3fc]
	add r0, r7, r1
	ldrb r3, [r3, #0x401]
	add r1, sp, #0x18
	bl FUN_ov18_0211b288
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r10, r8, lsl #2
	mov r2, #2
	mla r0, r8, r4, r0
	ldr r1, [r1, #0x74]
	mov r3, r2
	bl FUN_ov16_020f2304
	add r0, r10, r8, lsl #2
	ldr r0, [r0, #0xefc]
	cmp r0, #0
	beq _0211AE80
	and r3, r0, #0xff
	ldr r0, [r5]
	ldr r1, [r10, #0xef8]
	add r2, r8, #1
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r10, #0xef8]
	add r2, r8, #1
	mov r3, #0
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	ldr r1, [r10, #0xef8]
	add r2, r8, #1
	mov r3, #0x238
	bl FUN_ov16_021139bc
	mov r0, r8, lsl #5
	add r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r10, #0xef8]
	add r2, r8, #1
	mov r3, #6
	bl FUN_ov16_02113b78
_0211AE80:
	ldr r0, [r5]
	add r1, r10, r9, lsl #2
	ldr r1, [r1, #0x84]
	mov r2, r6
	mov r3, r11
	bl FUN_ov16_021142fc
	ldr r0, [r5]
	add r1, r10, r9, lsl #2
	ldr r1, [r1, #0x84]
	mov r2, r6
	mov r3, r11
	bl FUN_ov16_0211329c
	ldr r0, [r5]
	add r1, r10, r9, lsl #2
	ldr r1, [r1, #0x84]
	mov r2, r11
	mov r3, r6
	bl FUN_ov16_02113f7c
	mla r0, r8, r4, r10
	ldrb r0, [r0, #0x400]
	tst r0, #1
	bne _0211AEF0
	add r1, r10, r9, lsl #2
	ldr r0, [r5]
	ldr r1, [r1, #0x84]
	mov r2, #3
	mov r3, r6
	bl FUN_ov16_02113f7c
_0211AEF0:
	mla r0, r8, r4, r10
	ldrb r0, [r0, #0x400]
	tst r0, #2
	bne _0211AF18
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x84]
	ldr r0, [r5]
	mov r2, #4
	mov r3, #2
	bl FUN_ov16_02113f7c
_0211AF18:
	add r8, r8, #1
_0211AF1C:
	ldr r0, [r10, #0x44]
	cmp r8, r0
	blt _0211ADA4
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF30: .word g3DPlaneCtrl
	arm_func_end FUN_ov18_0211ad74

	arm_func_start FUN_ov18_0211af34
FUN_ov18_0211af34: ; 0x0211AF34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x78
	mov r10, r0
	mvn r4, #0
	mov r1, r4
	add r0, r10, #0xef0
	bl FUN_ov16_020f57b0
	mov r9, #0
	add r5, r4, #0x1000
	ldr r11, _0211B018 ; =gLogicThink
	mov r8, r9
	mov r7, #1
	mov r4, #0x360
	ldr r6, _0211B01C ; =g3DPlaneCtrl
	b _0211AFD8
_0211AF70:
	mla r0, r9, r4, r10
	ldrh r1, [r0, #0xa4]
	mov r0, r11
	add r2, sp, #0x10
	bl FUN_0204bd64
	ldrh r0, [sp, #0x5e]
	ldr r1, _0211B020 ; =0x0211BCD8
	add r3, r10, #0xef0
	str r8, [sp]
	str r8, [sp, #4]
	and r0, r0, r5
	str r7, [sp, #8]
	mov r0, r0, lsl #0x10
	str r7, [sp, #0xc]
	mov r2, r0, lsr #0x10
	ldr r0, [r10, #0xee4]
	bl FUN_ov16_020f55b4
	add r1, r10, r9, lsl #2
	str r0, [r1, #0xefc]
	str r7, [sp]
	ldr r0, [r6]
	ldr r1, [r10, #0xef8]
	add r2, r9, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r9, r9, #1
_0211AFD8:
	ldr r0, [r10, #0x44]
	cmp r9, r0
	blt _0211AF70
	mov r5, #2
	ldr r4, _0211B01C ; =g3DPlaneCtrl
	b _0211B008
_0211AFF0:
	ldr r0, [r4]
	ldr r1, [r10, #0xef8]
	mov r3, r5
	add r2, r9, #1
	bl FUN_ov16_02113f7c
	add r9, r9, #1
_0211B008:
	cmp r9, #4
	blt _0211AFF0
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B018: .word gLogicThink
_0211B01C: .word g3DPlaneCtrl
_0211B020: .word ov18_0211BCD8
	arm_func_end FUN_ov18_0211af34

	arm_func_start FUN_ov18_0211b024
FUN_ov18_0211b024: ; 0x0211B024
	stmfd sp!, {r3, lr}
	add r0, r0, #0xef0
	bl FUN_ov16_020f5868
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov18_0211b024

	arm_func_start FUN_ov18_0211b04c
FUN_ov18_0211b04c: ; 0x0211B04C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	str r6, [sp]
	ldr r0, [r7, #0x38]
	ldr r4, _0211B10C ; =0x66666667
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	smull r0, r3, r4, r0
	ldr r5, _0211B110 ; =g3DPlaneCtrl
	add r3, r2, r3, asr #2
	ldr r0, [r5]
	ldr r1, [r7, #0x88]
	mov r2, #1
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r7, #0x38]
	mov r1, #0xa
	add r6, r0, #1
	smull r2, r3, r4, r6
	mov r0, r6, lsr #0x1f
	add r3, r0, r3, asr #2
	smull r2, r0, r1, r3
	sub r3, r6, r2
	ldr r0, [r5]
	ldr r1, [r7, #0x88]
	mov r2, #2
	bl FUN_ov16_0211401c
	ldr r3, [r7, #0x34]
	cmp r3, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	add r2, r7, #0xa4
	mov r1, #0x360
	ldr r0, [r7, #4]
	mla r1, r3, r1, r2
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, _0211B114 ; =0x020A9C40
	bl FUN_02045cb0
	ldr r2, [r7, #0x34]
	ldr r1, [r7, #0x38]
	add r1, r2, r1, lsl #2
	add r1, r0, r1, lsl #2
	ldrb r0, [r1, #1]
	and r0, r0, #0xfe
	strb r0, [r1, #1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B10C: .word 0x66666667
_0211B110: .word g3DPlaneCtrl
_0211B114: .word unk_020A9C40
	arm_func_end FUN_ov18_0211b04c

	arm_func_start FUN_ov18_0211b118
FUN_ov18_0211b118: ; 0x0211B118
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #3
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211B150 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #0xa
	str r0, [r4, #0x30]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0211B150: .word gAudioPlayer
	arm_func_end FUN_ov18_0211b118

	arm_func_start FUN_ov18_0211b154
FUN_ov18_0211b154: ; 0x0211B154
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x38]
	mov r5, r1
	cmp r5, #1
	subeq r0, r4, #1
	streq r0, [r6, #0x38]
	cmp r5, #2
	ldreq r0, [r6, #0x38]
	addeq r0, r0, #1
	streq r0, [r6, #0x38]
	ldr r0, [r6, #0x3c]
	ldr r2, [r6, #0x38]
	add r1, r0, #3
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r1, r0, asr #2
	add r0, r2, r0, asr #2
	bl _s32_div_f
	str r1, [r6, #0x38]
	cmp r1, r4
	beq _0211B1D0
	mov r4, #1
	ldr r0, _0211B1F0 ; =gAudioPlayer
	mov r1, r4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r1, #0
	mov r0, r4
	str r4, [r6, #0x30]
	str r1, [r6, #0x34]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B1D0:
	sub r0, r5, #1
	cmp r0, #1
	bhi _0211B1E8
	ldr r0, _0211B1F0 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
_0211B1E8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0211B1F0: .word gAudioPlayer
	arm_func_end FUN_ov18_0211b154

	arm_func_start FUN_ov18_0211b1f4
FUN_ov18_0211b1f4: ; 0x0211B1F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, #1
	mov r10, r0
	mov r8, #0
	mov r7, r11
	mov r6, #2
	mov r5, #3
	ldr r4, _0211B284 ; =g3DPlaneCtrl
	b _0211B278
_0211B218:
	ldr r0, [r10, #0x34]
	add r9, r8, #2
	cmp r8, r0
	bne _0211B25C
	str r7, [sp]
	add r1, r10, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x84]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	add r1, r10, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x84]
	mov r2, r5
	mov r3, r6
	b _0211B270
_0211B25C:
	add r1, r10, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x84]
	mov r2, r11
	mov r3, #2
_0211B270:
	bl FUN_ov16_02113f7c
	add r8, r8, #1
_0211B278:
	cmp r8, #4
	blt _0211B218
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B284: .word g3DPlaneCtrl
	arm_func_end FUN_ov18_0211b1f4

	arm_func_start FUN_ov18_0211b288
FUN_ov18_0211b288: ; 0x0211B288
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc8
	mov r5, r0
	mov r4, r1
	mov r10, r2
	cmp r3, #8
	mov r6, #0
	beq _0211B2B0
	cmp r3, #0xa
	bne _0211B318
_0211B2B0:
	ldr r7, _0211B49C ; =gLogicThink
	mov r8, #0
_0211B2B8:
	mov r0, r7
	mov r1, r8
	bl FUN_ov16_020ee034
	mov r9, r0
	ldrb r0, [r9, #0x25]
	cmp r0, #0
	beq _0211B2F0
	cmp r0, r10
	bne _0211B2F0
	mov r0, r7
	mov r1, r8
	bl FUN_ov16_020ee034
	mov r9, r0
	b _0211B2FC
_0211B2F0:
	add r8, r8, #1
	cmp r8, #0x400
	blt _0211B2B8
_0211B2FC:
	add r0, sp, #0x20
	mov r1, r9
	bl STD_CopyString
	add r0, sp, #0x40
	mov r1, r9
	bl STD_CopyString
	b _0211B358
_0211B318:
	cmp r10, #0
	beq _0211B358
	add r7, sp, #0x60
	mov r1, r10, lsl #0x10
	ldr r0, _0211B49C ; =gLogicThink
	mov r2, r7
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	beq _0211B358
	add r0, sp, #0x20
	mov r1, r7
	bl STD_CopyString
	add r0, sp, #0x40
	add r1, sp, #0x7c
	bl STD_CopyString
_0211B358:
	ldrsb r0, [r4]
	mov r8, #0
	mov r9, r8
	cmp r0, #0
	beq _0211B490
_0211B36C:
	ldrsb r0, [r4]
	cmp r0, #0x25
	bne _0211B418
	ldrsb r0, [r4, #1]!
	mov r7, #0
	cmp r0, #0x73
	bne _0211B3B0
	add r0, sp, #0x20
	add r10, r0, r9, lsl #5
	mov r0, r10
	bl STD_GetStringLength
	mov r7, r0
	add r0, sp, #0
	mov r1, r10
	bl STD_CopyString
	add r0, r9, #1
	and r9, r0, #1
_0211B3B0:
	cmp r7, #0
	beq _0211B484
	ldr r0, _0211B4A0 ; =gFont12
	add r7, sp, #0
	ldr r0, [r0]
	mov r1, r7
	bl FUN_0204294c
	mov r10, #0
	mov r0, r5
	mov r1, r7
	strb r10, [r5, r8]
	bl STD_ConcatenateString
	mov r0, r5
	bl STD_GetStringLength
	mov r8, r0
	mov r0, r7
	bl STD_GetStringLength
	cmp r0, #0
	ble _0211B484
_0211B3FC:
	ldrsb r1, [r7, r10]
	tst r1, #0x80
	addne r10, r10, #1
	add r10, r10, #1
	cmp r10, r0
	blt _0211B3FC
	b _0211B484
_0211B418:
	cmp r0, #0x5c
	bne _0211B444
	ldrsb r0, [r4, #1]!
	cmp r0, #0x66
	beq _0211B43C
	cmp r0, #0x6e
	moveq r0, #0xa
	streqb r0, [r4]
	b _0211B444
_0211B43C:
	mov r0, #0xc
	strb r0, [r4]
_0211B444:
	ldrsb r0, [r4]
	cmp r0, #0xa
	cmpne r0, #0xc
	beq _0211B464
	ldr r0, _0211B4A0 ; =gFont12
	mov r1, r4
	ldr r0, [r0]
	bl FUN_02042b0c
_0211B464:
	ldrsb r0, [r4]
	tst r0, #0x80
	strneb r0, [r5, r8]
	addne r4, r4, #1
	ldrsb r0, [r4]
	addne r8, r8, #1
	strb r0, [r5, r8]
	add r8, r8, #1
_0211B484:
	ldrsb r0, [r4, #1]!
	cmp r0, #0
	bne _0211B36C
_0211B490:
	strb r6, [r5, r8]
	add sp, sp, #0xc8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B49C: .word gLogicThink
_0211B4A0: .word gFont12
	arm_func_end FUN_ov18_0211b288

	arm_func_start FUN_ov18_0211b4a4
FUN_ov18_0211b4a4: ; 0x0211B4A4
	bx lr
	arm_func_end FUN_ov18_0211b4a4

	arm_func_start FUN_ov18_0211b4a8
FUN_ov18_0211b4a8: ; 0x0211B4A8
	mov r12, #0x30
	mla r12, r1, r12, r0
	str r2, [r12, #0xe24]
	ldr r0, [sp]
	str r3, [r12, #0xe28]
	ldr r1, [sp, #4]
	str r0, [r12, #0xe2c]
	ldr r0, [sp, #8]
	str r1, [r12, #0xe30]
	str r0, [r12, #0xe34]
	mov r0, #0
	str r0, [r12, #0xe3c]
	bx lr
	arm_func_end FUN_ov18_0211b4a8

	arm_func_start FUN_ov18_0211b4dc
FUN_ov18_0211b4dc: ; 0x0211B4DC
	mov r12, #0x30
	mla r12, r1, r12, r0
	str r2, [r12, #0xe40]
	ldr r0, [sp]
	str r3, [r12, #0xe44]
	ldr r1, [sp, #4]
	str r0, [r12, #0xe48]
	ldr r0, [sp, #8]
	str r1, [r12, #0xe4c]
	str r0, [r12, #0xe50]
	bx lr
	arm_func_end FUN_ov18_0211b4dc

	arm_func_start FUN_ov18_0211b508
FUN_ov18_0211b508: ; 0x0211B508
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	add r0, r10, #0x23c
	add r1, r10, #0x238
	mov r4, #0x30
	mov r11, #0
	mov r9, #1
	add r8, r0, #0xc00
	add r7, r1, #0xc00
	ldr r6, _0211B6B4 ; =gDeltaTime
	ldr r5, _0211B6B8 ; =g3DPlaneCtrl
	b _0211B6A0
_0211B53C:
	mul r0, r9, r4
	add r2, r10, r0
	ldrh r3, [r10, #8]
	ldr r1, [r2, #0xe40]
	tst r3, r1
	movne r1, #4
	strne r1, [r2, #0xe38]
	ldrne r1, [r8, r0]
	mla r3, r9, r4, r10
	orrne r1, r1, #6
	strne r1, [r8, r0]
	ldr r1, [r3, #0xe4c]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r3, #0xe50]
	mov r1, #3
	str r2, [sp, #4]
	ldr r2, [r3, #0xe44]
	ldr r3, [r3, #0xe48]
	bl FUN_ov18_0211a024
	cmp r0, #0
	mulne r1, r9, r4
	ldrne r0, [r8, r1]
	orrne r0, r0, #2
	strne r0, [r8, r1]
	ldr r0, [r10, #0x2c]
	cmp r0, #0
	beq _0211B5FC
	mla r3, r9, r4, r10
	ldr r1, [r3, #0xe4c]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r3, #0xe50]
	mov r1, #4
	str r2, [sp, #4]
	ldr r2, [r3, #0xe44]
	ldr r3, [r3, #0xe48]
	bl FUN_ov18_0211a024
	cmp r0, #0
	beq _0211B5FC
	ldr r0, [r6]
	mul r1, r9, r4
	add r2, r0, #4
	add r0, r10, r1
	str r2, [r0, #0xe38]
	ldr r0, [r8, r1]
	orr r0, r0, #4
	str r0, [r8, r1]
_0211B5FC:
	mla r3, r9, r4, r10
	ldr r0, [r3, #0xe3c]
	tst r0, #2
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r3, #0xe24]
	beq _0211B628
	ldr r2, [r3, #0xe28]
	ldr r3, [r3, #0xe30]
	b _0211B630
_0211B628:
	ldr r2, [r3, #0xe28]
	ldr r3, [r3, #0xe2c]
_0211B630:
	bl FUN_ov16_0211401c
	mul r0, r9, r4
	ldr r3, [r7, r0]
	ldr r1, [r6]
	add r2, r10, r0
	sub r1, r3, r1
	str r1, [r7, r0]
	ldr r1, [r2, #0xe38]
	cmp r1, #0
	ldrgt r1, [r8, r0]
	orrgt r1, r1, #2
	strgt r1, [r8, r0]
	bgt _0211B69C
	mov r1, #0
	str r1, [r2, #0xe38]
	ldr r1, [r2, #0xe3c]
	tst r1, #2
	bne _0211B68C
	tst r1, #4
	ldrne r1, [r8, r0]
	movne r11, r9
	bicne r1, r1, #4
	strne r1, [r8, r0]
_0211B68C:
	mul r1, r9, r4
	ldr r0, [r8, r1]
	bic r0, r0, #2
	str r0, [r8, r1]
_0211B69C:
	add r9, r9, #1
_0211B6A0:
	cmp r9, #4
	blt _0211B53C
	mov r0, r11
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B6B4: .word gDeltaTime
_0211B6B8: .word g3DPlaneCtrl
	arm_func_end FUN_ov18_0211b508

	arm_func_start FUN_ov18_0211b6bc
FUN_ov18_0211b6bc: ; 0x0211B6BC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x28]
	ldr r4, [r6, #0x34]
	cmp r0, #0
	ldr r5, [r6, #0x38]
	mov r8, #0
	beq _0211B744
	ldr r0, [r6, #0x44]
	mov r10, r8
	cmp r0, #0
	ble _0211B89C
	mov r9, #0x100
	mov r7, #1
_0211B6F8:
	add r0, r10, #1
	mov r12, r0, lsl #5
	mov r3, r10, lsl #5
	str r9, [sp]
	add r12, r12, #0x20
	mov r0, r6
	mov r1, r7
	mov r2, r8
	add r3, r3, #0x20
	str r12, [sp, #4]
	bl FUN_ov18_0211a024
	cmp r0, #0
	strne r10, [r6, #0x34]
	bne _0211B89C
	ldr r0, [r6, #0x44]
	add r10, r10, #1
	cmp r10, r0
	blt _0211B6F8
	b _0211B89C
_0211B744:
	ldrh r0, [r6, #8]
	tst r0, #0x40
	beq _0211B79C
	cmp r4, #0
	bne _0211B79C
	cmp r5, #0
	ble _0211B78C
	mov r7, #1
	ldr r0, _0211B914 ; =gAudioPlayer
	mov r1, r7
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r6, #0x38]
	mov r1, #3
	sub r0, r0, #1
	str r7, [r6, #0x30]
	str r1, [r6, #0x34]
_0211B784:
	str r0, [r6, #0x38]
	b _0211B844
_0211B78C:
	ldr r0, _0211B914 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	b _0211B844
_0211B79C:
	ldrh r1, [r6, #0xa]
	tst r1, #0x40
	beq _0211B7C4
	cmp r4, #0
	ble _0211B844
	ldr r0, [r6, #0x9c]
	cmp r0, #0
	ldreq r0, [r6, #0x34]
	subeq r0, r0, #1
	b _0211B840
_0211B7C4:
	tst r0, #0x80
	beq _0211B81C
	ldr r0, [r6, #0x44]
	sub r0, r0, #1
	cmp r4, r0
	bne _0211B81C
	ldr r0, [r6, #0x3c]
	sub r1, r0, #1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r5, r0, asr #2
	bge _0211B818
	mov r7, #1
	ldr r0, _0211B914 ; =gAudioPlayer
	mov r1, r7
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r6, #0x38]
	str r7, [r6, #0x30]
	add r0, r0, #1
	str r8, [r6, #0x34]
	b _0211B784
_0211B818:
	b _0211B78C
_0211B81C:
	tst r1, #0x80
	ldrne r0, [r6, #0x44]
	subne r0, r0, #1
	cmpne r4, r0
	bge _0211B844
	ldr r0, [r6, #0xa0]
	cmp r0, #0
	ldreq r0, [r6, #0x34]
	addeq r0, r0, #1
_0211B840:
	streq r0, [r6, #0x34]
_0211B844:
	ldrh r0, [r6, #0xa]
	tst r0, #0x40
	ldrne r0, [r6, #0x9c]
	addne r0, r0, #1
	strne r0, [r6, #0x9c]
	ldrh r0, [r6, #0xa]
	streq r8, [r6, #0x9c]
	tst r0, #0x80
	ldrne r0, [r6, #0xa0]
	addne r0, r0, #1
	strne r0, [r6, #0xa0]
	streq r8, [r6, #0xa0]
	ldr r0, [r6, #0x9c]
	ldr r2, [r6, #0xa0]
	mov r1, r0, lsr #0x1f
	mov r3, r2, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r1, r1, r0, ror #29
	rsb r2, r3, r2, lsl #29
	add r0, r3, r2, ror #29
	str r1, [r6, #0x9c]
	str r0, [r6, #0xa0]
_0211B89C:
	ldr r0, [r6, #0x34]
	cmp r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r6, #0x38]
	cmp r5, r0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211B914 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r6, #4]
	ldr r3, [r6, #0x34]
	ldr r2, [r0]
	add r4, r6, #0xa4
	mov r1, #0x360
	mla r1, r3, r1, r4
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, _0211B918 ; =0x020A9C40
	bl FUN_02045cb0
	ldr r2, [r6, #0x34]
	ldr r1, [r6, #0x38]
	add r3, r0, #1
	add r1, r2, r1, lsl #2
	ldrb r0, [r3, r1, lsl #2]
	and r0, r0, #0xfe
	strb r0, [r3, r1, lsl #2]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B914: .word gAudioPlayer
_0211B918: .word unk_020A9C40
	arm_func_end FUN_ov18_0211b6bc

	.rodata
	.global ov18_0211B91C
ov18_0211B91C:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x58, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x02, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x48, 0x02, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00
	.byte 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x48, 0x02, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x02, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x02, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0x02, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x48, 0x02, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x02, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x38, 0x02, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x38, 0x02, 0x00, 0x00, 0xE8, 0x00, 0x00, 0x00, 0xF8, 0xFF, 0xFF, 0xFF, 0x02, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x02, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov18_0211baa4
FUN_ov18_0211baa4: ; 0x0211BAA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211BAE8 ; =0x0211BB00
	str r0, [r4, #0x14]
	ldr r0, _0211BAEC ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0x10]
	ldr r0, _0211BAF0 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BAE8: .word ov18_0211BB00
_0211BAEC: .word 0x00009CCD
_0211BAF0: .word 0x0000EA3C
	arm_func_end FUN_ov18_0211baa4

	.section .sinit, 4
ov18_0211BAF4:
	.word FUN_ov18_0211baa4

	.data
	.global ov18_0211BB00
ov18_0211BB00:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov18_0211BB18
ov18_0211BB18:
	.word ov18_0211BB98
	.word ov18_0211BBB0
	.word ov18_0211BBBC
	.word ov18_0211BB80
	.word ov18_0211BB50
	.word ov18_0211BB68
	.word ov18_0211BB74
	.word ov18_0211BB8C
	.word ov18_0211BBA4
	.word ov18_0211BB44
	.word ov18_0211BB5C
	.global ov18_0211BB44
ov18_0211BB44:
	.asciz "bldn_i06"
	.balign 4, 0
	.global ov18_0211BB50
ov18_0211BB50:
	.asciz "bldn_i01"
	.balign 4, 0
	.global ov18_0211BB5C
ov18_0211BB5C:
	.asciz "bldn_n00"
	.balign 4, 0
	.global ov18_0211BB68
ov18_0211BB68:
	.asciz "bldn_i02"
	.balign 4, 0
	.global ov18_0211BB74
ov18_0211BB74:
	.asciz "bldn_i04"
	.balign 4, 0
	.global ov18_0211BB80
ov18_0211BB80:
	.asciz "bldn_i00"
	.balign 4, 0
	.global ov18_0211BB8C
ov18_0211BB8C:
	.asciz "bldn_i03"
	.balign 4, 0
	.global ov18_0211BB98
ov18_0211BB98:
	.asciz "bldn_b00"
	.balign 4, 0
	.global ov18_0211BBA4
ov18_0211BBA4:
	.asciz "bldn_i05"
	.balign 4, 0
	.global ov18_0211BBB0
ov18_0211BBB0:
	.asciz "bldn_bg00"
	.balign 4, 0
	.global ov18_0211BBBC
ov18_0211BBBC:
	.asciz "bldn_bg01"
	.balign 4, 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov18_0211BBD0
ov18_0211BBD0:
	.word FUN_ov18_02119f14
	.word FUN_ov18_02119f18
	.word FUN_ov18_02119f2c
	.word FUN_ov18_02119f60
	.word FUN_ov18_0211a14c
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov18_0211a908
	.word FUN_ov18_0211b4a4
	.word FUN_ov18_0211a7d4
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
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov18_0211BC3C
ov18_0211BC3C:
	.asciz "/data_iz/pic3d/blog_main.SPL"
	.balign 4, 0
	.global ov18_0211BC5C
ov18_0211BC5C:
	.asciz "%s.pac_"
	.balign 4, 0
	.global ov18_0211BC64
ov18_0211BC64:
	.asciz "/data_iz/pic3d/blog_main.SPD"
	.balign 4, 0
	.global ov18_0211BC84
ov18_0211BC84:
	.asciz "/data_iz/pic3d/ih.pkh"
	.balign 4, 0
	.global ov18_0211BC9C
ov18_0211BC9C:
	.asciz "/data_iz/script/blogpost.dat"
	.balign 4, 0
	.global ov18_0211BCBC
ov18_0211BCBC:
	.asciz "/data_iz/script/blogres.dat"
	.balign 4, 0
	.global ov18_0211BCD8
ov18_0211BCD8:
	.asciz "/data_iz/pic3d/ih.pkb"
	.balign 4, 0

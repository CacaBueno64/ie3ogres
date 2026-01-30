
	.include "/macros/function.inc"
	.include "/include/overlay23.inc"

	.text
	arm_func_start FUN_ov23_02119f00
FUN_ov23_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _02119F38
	ldr r0, _02119F44 ; =g3DPlaneCtrl
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x48]
_02119F38:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
_02119F44: .word g3DPlaneCtrl
	arm_func_end FUN_ov23_02119f00

	arm_func_start FUN_ov23_02119f48
FUN_ov23_02119f48: ; 0x02119F48
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _02119FD4 ; =g3DPlaneCtrl
	and r3, r3, #0xff
	ldr r0, [r4]
	mov r6, r1
	mov r5, r2
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, [sp, #0x24]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_0211401c
	ldr r1, [sp, #0x20]
	ldr r0, [r4]
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_021139bc
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
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02119FD4: .word g3DPlaneCtrl
	arm_func_end FUN_ov23_02119f48

	arm_func_start FUN_ov23_02119fd8
FUN_ov23_02119fd8: ; 0x02119FD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x48]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A010 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A010: .word g3DPlaneCtrl
	arm_func_end FUN_ov23_02119fd8

	arm_func_start FUN_ov23_0211a014
FUN_ov23_0211a014: ; 0x0211A014
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A05C ; =g3DPlaneCtrl
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
_0211A05C: .word g3DPlaneCtrl
	arm_func_end FUN_ov23_0211a014

	arm_func_start FUN_ov23_0211a060
FUN_ov23_0211a060: ; 0x0211A060
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xc
	mov r1, #1
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211A0C4 ; =g3DPlaneCtrl
	b _0211A0B4
_0211A08C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _0211A0B0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A0B0:
	add r5, r5, #1
_0211A0B4:
	cmp r5, #0xc
	blt _0211A08C
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A0C4: .word g3DPlaneCtrl
	arm_func_end FUN_ov23_0211a060

	arm_func_start FUN_ov23_0211a0c8
FUN_ov23_0211a0c8: ; 0x0211A0C8
	ldrb r0, [r0, #0xcc]
	cmp r0, #5
	cmpne r0, #9
	cmpne r0, #7
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0xf
	cmpne r0, #0x11
	cmpne r0, #0x13
	cmpne r0, #0x15
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov23_0211a0c8

	arm_func_start FUN_ov23_0211a0fc
FUN_ov23_0211a0fc: ; 0x0211A0FC
	cmp r1, #2
	beq _0211A118
	cmp r1, #3
	beq _0211A120
	cmp r1, #4
	beq _0211A128
	b _0211A130
_0211A118:
	ldr r0, _0211A138 ; =0x00000D26
	bx lr
_0211A120:
	ldr r0, _0211A13C ; =0x00000D28
	bx lr
_0211A128:
	mov r0, #0xfc
	bx lr
_0211A130:
	mov r0, #0
	bx lr
_0211A138: .word 0x00000D26
_0211A13C: .word 0x00000D28
	arm_func_end FUN_ov23_0211a0fc

	arm_func_start FUN_ov23_0211a140
FUN_ov23_0211a140: ; 0x0211A140
	stmfd sp!, {r3, lr}
	cmn r1, #1
	mov r0, #0
	ldmeqfd sp!, {r3, pc}
	cmp r1, #0xfc
	beq _0211A180
	ldr r2, _0211A194 ; =0x00000D26
	cmp r1, r2
	beq _0211A170
	add r2, r2, #2
	cmp r1, r2
	ldmnefd sp!, {r3, pc}
_0211A170:
	ldr r0, _0211A198 ; =gUnitMan
	mov r2, #0
	bl FUN_0206c7dc
	ldmfd sp!, {r3, pc}
_0211A180:
	ldr r1, _0211A19C ; =0x020A1640
	ldrb r1, [r1, #0x12]
	tst r1, #1
	movne r0, #1
	ldmfd sp!, {r3, pc}
_0211A194: .word 0x00000D26
_0211A198: .word gUnitMan
_0211A19C: .word unk_020A1640
	arm_func_end FUN_ov23_0211a140

	arm_func_start FUN_ov23_0211a1a0
FUN_ov23_0211a1a0: ; 0x0211A1A0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	add r0, r2, r1, lsl #3
	mov r0, r0, lsl #0x18
	mov r2, #0
	mov r5, r3
	str r2, [sp, #0x10]
	movs r6, r0, asr #0x18
	mov r4, #1
	bmi _0211A1D0
	cmp r6, #0x30
	blt _0211A1DC
_0211A1D0:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1DC:
	ldr r3, _0211A28C ; =gAllocator
	ldr r1, _0211A290 ; =0x0211CD6C
	ldr r0, [r3]
	cmp r0, #0
	beq _0211A20C
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, sp, #0x10
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
	mov r2, r0
_0211A20C:
	cmp r2, #0
	ble _0211A26C
	ldr r1, [sp, #0x10]
	mov r0, r6, lsl #2
	add lr, r1, r6, lsl #2
	ldrsb r12, [r1, r0]
	ldrsb r3, [lr, #1]
	ldrsb r2, [lr, #2]
	ldrsb r0, [lr, #3]
	strb r3, [sp, #0x15]
	strb r12, [sp, #0x14]
	strb r2, [sp, #0x16]
	strb r0, [sp, #0x17]
	mov r6, #0
	add r3, sp, #0x14
_0211A248:
	ldrsb r2, [r3, r6]
	ldrsb r0, [r5, r6]
	cmp r2, r0
	movne r4, #0
	bne _0211A278
	add r6, r6, #1
	cmp r6, #4
	blt _0211A248
	b _0211A278
_0211A26C:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A278:
	ldr r0, _0211A28C ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_0211A28C: .word gAllocator
_0211A290: .word ov23_0211CD6C
	arm_func_end FUN_ov23_0211a1a0

	arm_func_start FUN_ov23_0211a294
FUN_ov23_0211a294: ; 0x0211A294
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldrsb r5, [r7, #0xf6]
	ldrsb r6, [r7, #0xf7]
	ldr r4, _0211A2FC ; =0x2AAAAAAB
	mov r8, #6
_0211A2AC:
	bl rand
	smull r1, r2, r4, r0
	add r2, r2, r0, lsr #31
	smull r1, r2, r8, r2
	sub r2, r0, r1
	mov r0, r2, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, r5
	beq _0211A2AC
	strb r0, [r7, #0xf6]
_0211A2D4:
	bl rand
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r0, r1, r0, ror #29
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, r6
	beq _0211A2D4
	strb r0, [r7, #0xf7]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A2FC: .word 0x2AAAAAAB
	arm_func_end FUN_ov23_0211a294

	arm_func_start FUN_ov23_0211a300
FUN_ov23_0211a300: ; 0x0211A300
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xf0]
	mov r4, r1
	cmp r4, r2
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov23_0211a330
	mov r0, r5
	mov r1, r4
	bl FUN_ov23_0211a6a4
	strb r4, [r5, #0xf0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov23_0211a300

	arm_func_start FUN_ov23_0211a330
FUN_ov23_0211a330: ; 0x0211A330
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldrb r0, [r7, #0xf0]
	mov r4, #0
	ldr r6, _0211A68C ; =gSprButtonCtrl
	cmp r0, #9
	mov r5, r4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A354: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 0
	b _0211A37C ; case 1
	b _0211A428 ; case 2
	b _0211A66C ; case 3
	b _0211A4B4 ; case 4
	b _0211A66C ; case 5
	b _0211A5A0 ; case 6
	b _0211A66C ; case 7
	b _0211A66C ; case 8
	b _0211A66C ; case 9
_0211A37C:
	cmp r1, #2
	bne _0211A3D0
	mov r4, #1
	ldr r7, _0211A690 ; =0x0211CB14
	b _0211A3C4
_0211A390:
	mov r0, r5, lsl #1
	ldrh r1, [r7, r0]
	ldr r0, [r6]
	bl FUN_ov16_0210e7d0
	mov r1, r5, lsl #1
	cmp r0, #0
	ldrh r1, [r7, r1]
	strneb r4, [r0, #0x10]
	add r5, r5, #1
	cmp r1, #4
	ldreqsh r1, [r0, #2]
	addeq r1, r1, #8
	streqh r1, [r0, #2]
_0211A3C4:
	cmp r5, #4
	blt _0211A390
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A3D0:
	ldr r0, [r6]
	bl FUN_ov16_0210eb78
	ldr r0, [r6]
	bl FUN_ov16_0210ef24
	ldr r8, [r7, #0x4c]
	mov r9, #1
	mov r6, #2
	ldr r5, _0211A694 ; =g3DPlaneCtrl
	b _0211A410
_0211A3F4:
	str r4, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	mov r3, r6
	bl FUN_ov16_02113ec0
	add r9, r9, #1
_0211A410:
	cmp r9, #6
	blt _0211A3F4
	mov r0, r7
	and r1, r8, #0xff
	bl FUN_ov23_02119fd8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A428:
	add r0, r7, #0x58
	bl FUN_ov16_021109a0
	add r0, r7, #0x58
	bl FUN_ov16_021105c0
	mov r0, r7
	mov r1, #3
	bl FUN_ov23_02119fd8
	ldr r8, _0211A694 ; =g3DPlaneCtrl
	ldr r9, _0211A698 ; =0x00007FFF
	ldr r1, [r7, #0x48]
	ldr r0, [r8]
	mov r2, r9
	bl FUN_ov16_02114204
	ldr r1, [r7, #0x4c]
	ldr r0, [r8]
	mov r2, r9
	bl FUN_ov16_02114204
	ldr r7, _0211A690 ; =0x0211CB14
	b _0211A4A8
_0211A474:
	mov r0, r5, lsl #1
	ldrh r1, [r7, r0]
	ldr r0, [r6]
	bl FUN_ov16_0210e7d0
	mov r1, r5, lsl #1
	cmp r0, #0
	ldrh r1, [r7, r1]
	strneb r4, [r0, #0x10]
	add r5, r5, #1
	cmp r1, #4
	ldreqsh r1, [r0, #2]
	subeq r1, r1, #8
	streqh r1, [r0, #2]
_0211A4A8:
	cmp r5, #4
	blt _0211A474
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A4B4:
	cmp r1, #6
	bne _0211A548
	ldr r9, _0211A69C ; =0x0211CB24
	ldr r7, _0211A6A0 ; =0x0211CB1C
	mov r8, #1
	b _0211A53C
_0211A4CC:
	mov r0, r5, lsl #1
	ldrh r1, [r9, r0]
	ldr r0, [r6]
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	beq _0211A538
	mov r1, r5, lsl #1
	mov r2, r4
	strb r8, [r0, #0x10]
	ldrh r1, [r9, r1]
	b _0211A530
_0211A4F8:
	mov r3, r2, lsl #1
	ldrh r3, [r7, r3]
	cmp r1, r3
	bne _0211A52C
	mov r12, r2, lsr #0x1f
	rsb r3, r12, r2, lsl #31
	add r3, r12, r3, ror #31
	cmp r3, #1
	ldrsh r3, [r0]
	addeq r3, r3, #0x10
	streqh r3, [r0]
	subne r3, r3, #0x10
	strneh r3, [r0]
_0211A52C:
	add r2, r2, #1
_0211A530:
	cmp r2, #4
	blt _0211A4F8
_0211A538:
	add r5, r5, #1
_0211A53C:
	cmp r5, #0xe
	blt _0211A4CC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A548:
	ldr r0, [r6]
	bl FUN_ov16_0210eb78
	ldr r0, [r6]
	bl FUN_ov16_0210ef24
	ldr r8, [r7, #0x50]
	mov r9, #1
	mov r6, #2
	ldr r5, _0211A694 ; =g3DPlaneCtrl
	b _0211A588
_0211A56C:
	str r4, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	mov r3, r6
	bl FUN_ov16_02113ec0
	add r9, r9, #1
_0211A588:
	cmp r9, #0x15
	blt _0211A56C
	mov r0, r7
	and r1, r8, #0xff
	bl FUN_ov23_02119fd8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A5A0:
	add r0, r7, #0x58
	bl FUN_ov16_021109a0
	add r0, r7, #0x58
	bl FUN_ov16_021105c0
	mov r0, r7
	mov r1, #3
	bl FUN_ov23_02119fd8
	ldr r8, _0211A694 ; =g3DPlaneCtrl
	ldr r9, _0211A698 ; =0x00007FFF
	ldr r1, [r7, #0x48]
	ldr r0, [r8]
	mov r2, r9
	bl FUN_ov16_02114204
	ldr r1, [r7, #0x50]
	ldr r0, [r8]
	mov r2, r9
	bl FUN_ov16_02114204
	ldr r8, _0211A69C ; =0x0211CB24
	ldr r7, _0211A6A0 ; =0x0211CB1C
	b _0211A660
_0211A5F0:
	mov r0, r5, lsl #1
	ldrh r1, [r8, r0]
	ldr r0, [r6]
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	beq _0211A65C
	mov r1, r5, lsl #1
	mov r2, r4
	strb r4, [r0, #0x10]
	ldrh r1, [r8, r1]
	b _0211A654
_0211A61C:
	mov r3, r2, lsl #1
	ldrh r3, [r7, r3]
	cmp r1, r3
	bne _0211A650
	mov r9, r2, lsr #0x1f
	rsb r3, r9, r2, lsl #31
	add r3, r9, r3, ror #31
	cmp r3, #1
	ldrsh r3, [r0]
	subeq r3, r3, #0x10
	streqh r3, [r0]
	addne r3, r3, #0x10
	strneh r3, [r0]
_0211A650:
	add r2, r2, #1
_0211A654:
	cmp r2, #4
	blt _0211A61C
_0211A65C:
	add r5, r5, #1
_0211A660:
	cmp r5, #0xe
	blt _0211A5F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A66C:
	add r0, r7, #0x58
	bl FUN_ov16_021109a0
	add r0, r7, #0x58
	bl FUN_ov16_021105c0
	mov r0, r7
	mov r1, #3
	bl FUN_ov23_02119fd8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A68C: .word gSprButtonCtrl
_0211A690: .word ov23_0211CB14
_0211A694: .word g3DPlaneCtrl
_0211A698: .word 0x00007FFF
_0211A69C: .word ov23_0211CB24
_0211A6A0: .word ov23_0211CB1C
	arm_func_end FUN_ov23_0211a330

	arm_func_start FUN_ov23_0211a6a4
FUN_ov23_0211a6a4: ; 0x0211A6A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r9, r0
	ldrb r2, [r9, #0xf0]
	mov r5, #2
	mov r4, #1
	cmp r1, r2
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, #9
	mov r6, #0
	addls pc, pc, r1, lsl #2
	b _0211AF10
_0211A6D8: ; jump table
	b _0211AF10 ; case 0
	b _0211A700 ; case 1
	b _0211A8F8 ; case 2
	b _0211A930 ; case 3
	b _0211A940 ; case 4
	b _0211AE8C ; case 5
	b _0211AEC0 ; case 6
	b _0211AE9C ; case 7
	b _0211AEF8 ; case 8
	b _0211AF08 ; case 9
_0211A700:
	cmp r2, #2
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r10, r4
	mov r11, #5
	mov r1, r10
	mov r2, r11
	bl FUN_ov23_02119f00
	mov r7, r0
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [r9, #0x3c]
	mov r0, r9
	mov r1, r7
	mov r2, r10
	bl FUN_ov23_02119f48
	mov r0, #0xc8
	str r0, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r8, #0x12c
	str r8, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r3, [r9, #0x1c]
	mov r0, r9
	mov r1, r7
	mov r2, r5
	bl FUN_ov23_02119f48
	mov r0, #4
	stmia sp, {r0, r11}
	mov r0, r9
	mov r1, r7
	mov r2, r5
	mov r3, r10
	bl FUN_ov23_0211b2bc
	mov r4, #0x30
	str r4, [sp]
	mov r0, #0x18
	stmib sp, {r0, r8}
	str r6, [sp, #0xc]
	ldr r3, [r9, #0x20]
	mov r0, r9
	mov r1, r7
	mov r2, #3
	bl FUN_ov23_02119f48
	str r6, [sp]
	str r5, [sp, #4]
	mov r3, r5
	mov r0, r9
	mov r1, r7
	mov r2, #3
	bl FUN_ov23_0211b2bc
	str r4, [sp]
	mov r0, #0x48
	stmib sp, {r0, r8}
	str r6, [sp, #0xc]
	ldr r3, [r9, #0x20]
	mov r0, r9
	mov r1, r7
	mov r2, #4
	bl FUN_ov23_02119f48
	mov r0, #3
	mov r3, r0
	stmia sp, {r0, r11}
	mov r0, r9
	mov r1, r7
	mov r2, #4
	bl FUN_ov23_0211b2bc
	str r4, [sp]
	mov r0, #0x78
	stmib sp, {r0, r8}
	str r6, [sp, #0xc]
	ldr r3, [r9, #0x20]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	mov r6, r10
	bl FUN_ov23_02119f48
	mov r4, #6
	str r4, [sp]
	mov r4, #8
	mov r0, r9
	mov r1, r7
	mov r2, r11
	mov r3, #4
	str r4, [sp, #4]
	bl FUN_ov23_0211b2bc
	ldr r4, _0211AF18 ; =g3DPlaneCtrl
	b _0211A890
_0211A874:
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r10
	mov r3, r5
	bl FUN_ov16_02113ec0
	add r10, r10, #1
_0211A890:
	cmp r10, #6
	blt _0211A874
	ldr r1, [r9, #0xd0]
	cmp r1, #1
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AF1C ; =gSprButtonCtrl
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	movs r4, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0xd0]
	mov r1, #0
	sub r0, r0, #2
	add r2, r0, r0, lsl #1
	mov r3, r1
	add r0, r4, #0x3a
	add r2, r2, #1
	bl FUN_ov16_0210e720
	mov r0, r4
	bl FUN_ov16_0210e69c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A8F8:
	mov r1, r6
	bl FUN_ov23_0211b384
	ldr r4, _0211AF18 ; =g3DPlaneCtrl
	ldr r5, _0211AF20 ; =0x00004210
	ldr r1, [r9, #0x48]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114204
	ldr r1, [r9, #0x4c]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114204
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A930:
	mov r1, r4
	bl FUN_ov23_0211b384
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A940:
	cmp r2, #6
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r5
	mov r2, #0x14
	bl FUN_ov23_02119f00
	mov r7, r0
	str r6, [sp]
	mov r8, r4
	str r6, [sp, #4]
	mov r10, #0x1f4
	str r10, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x3c]
	mov r0, r9
	mov r1, r7
	mov r2, r8
	bl FUN_ov23_02119f48
	mov r0, #0x10
	str r0, [sp]
	mov r11, #0xa8
	str r11, [sp, #4]
	mov r4, #0x12c
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [r9, #0x1c]
	mov r0, r9
	mov r1, r7
	mov r2, #0x13
	bl FUN_ov23_02119f48
	mov r2, #0x13
	stmia sp, {r6, r8}
	mov r0, r9
	mov r1, r7
	mov r3, #0x11
	bl FUN_ov23_0211b2bc
	mov r0, #0x90
	stmia sp, {r0, r11}
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [r9, #0x1c]
	mov r0, r9
	mov r1, r7
	mov r2, #0x14
	bl FUN_ov23_02119f48
	str r5, [sp]
	mov r11, #3
	mov r2, #0x14
	str r11, [sp, #4]
	mov r0, r9
	mov r1, r7
	mov r3, #0x12
	bl FUN_ov23_0211b2bc
	str r6, [sp]
	mov r0, #0x28
	stmib sp, {r0, r10}
	str r6, [sp, #0xc]
	ldr r3, [r9, #0x40]
	mov r0, r9
	mov r1, r7
	mov r2, r5
	bl FUN_ov23_02119f48
	mov r0, #8
	str r0, [sp]
	mov r10, #0x40
	str r10, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #0xb
	bl FUN_ov23_02119f48
	str r6, [sp]
	mov r0, r9
	mov r1, r7
	mov r2, #0xb
	mov r3, #5
	str r6, [sp, #4]
	bl FUN_ov23_0211b2bc
	mov r0, #0x48
	stmia sp, {r0, r10}
	str r4, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #0xc
	bl FUN_ov23_02119f48
	str r8, [sp]
	mov r0, r9
	mov r1, r7
	mov r2, #0xc
	mov r3, #6
	str r8, [sp, #4]
	bl FUN_ov23_0211b2bc
	mov r0, #0x88
	stmia sp, {r0, r10}
	str r4, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #0xd
	bl FUN_ov23_02119f48
	str r8, [sp]
	mov r0, r9
	mov r1, r7
	mov r2, #0xd
	mov r3, #7
	str r8, [sp, #4]
	bl FUN_ov23_0211b2bc
	mov r0, #0xc8
	stmia sp, {r0, r10}
	str r4, [sp, #8]
	str r8, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #0xe
	bl FUN_ov23_02119f48
	str r8, [sp]
	mov r0, r9
	mov r1, r7
	mov r2, #0xe
	mov r3, #8
	str r8, [sp, #4]
	bl FUN_ov23_0211b2bc
	mov r0, #9
	str r0, [r9, #0xec]
	mov r0, #0xa
	str r6, [r9, #0xe4]
	str r6, [r9, #0xe8]
	str r6, [r9, #0xd4]
	str r0, [r9, #0xd8]
	bl rand
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r0, r1, r0, ror #29
	add r0, r0, #0x24
	str r0, [r9, #0xdc]
	mov r0, #0x2c
	str r0, [r9, #0xe0]
	mov r0, #0x18
	str r0, [sp]
	mov r10, #0x50
	str r10, [sp, #4]
	mov r6, #0xfa
	str r6, [sp, #8]
	ldr r1, [r9, #0xd4]
	mov r0, r9
	str r1, [sp, #0xc]
	ldr r3, [r9, #0x44]
	mov r1, r7
	mov r2, #0xf
	bl FUN_ov23_02119f48
	mov r0, #0x58
	stmia sp, {r0, r10}
	str r6, [sp, #8]
	ldr r1, [r9, #0xd8]
	mov r0, r9
	str r1, [sp, #0xc]
	ldr r3, [r9, #0x44]
	mov r1, r7
	mov r2, #0x10
	bl FUN_ov23_02119f48
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x48
	stmib sp, {r0, r6}
	ldr r1, [r9, #0xdc]
	mov r2, #0x11
	str r1, [sp, #0xc]
	ldr r3, [r9, #0x44]
	mov r0, r9
	mov r1, r7
	bl FUN_ov23_02119f48
	mov r0, #0xd8
	stmia sp, {r0, r10}
	str r6, [sp, #8]
	ldr r1, [r9, #0xe0]
	mov r2, #0x12
	str r1, [sp, #0xc]
	ldr r3, [r9, #0x44]
	mov r0, r9
	mov r1, r7
	bl FUN_ov23_02119f48
	mov r0, #8
	str r0, [sp]
	mov r10, #0x30
	str r10, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	bl FUN_ov23_02119f48
	mov r0, #8
	str r0, [sp]
	mov r6, #0x70
	str r6, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #7
	bl FUN_ov23_02119f48
	str r5, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	mov r3, #9
	bl FUN_ov23_0211b2bc
	mov r0, #5
	str r0, [sp]
	mov r0, #7
	mov r3, #0xd
	str r0, [sp, #4]
	mov r2, r0
	mov r0, r9
	mov r1, r7
	bl FUN_ov23_0211b2bc
	mov r0, #0x48
	stmia sp, {r0, r10}
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #4
	bl FUN_ov23_02119f48
	mov r0, #0x48
	stmia sp, {r0, r6}
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #8
	bl FUN_ov23_02119f48
	str r11, [sp]
	mov r2, #4
	mov r0, r9
	mov r1, r7
	mov r3, #0xa
	str r11, [sp, #4]
	bl FUN_ov23_0211b2bc
	mov r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #8
	mov r3, #0xe
	mov r0, r9
	mov r1, r7
	bl FUN_ov23_0211b2bc
	mov r0, #0x88
	stmia sp, {r0, r10}
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #5
	bl FUN_ov23_02119f48
	mov r0, #0x88
	stmia sp, {r0, r6}
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #9
	bl FUN_ov23_02119f48
	str r11, [sp]
	mov r2, #5
	mov r3, #0xb
	mov r0, r9
	mov r1, r7
	str r11, [sp, #4]
	bl FUN_ov23_0211b2bc
	mov r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #9
	mov r3, #0xf
	mov r0, r9
	mov r1, r7
	bl FUN_ov23_0211b2bc
	mov r0, #0xc8
	stmia sp, {r0, r10}
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #6
	bl FUN_ov23_02119f48
	mov r0, #0xc8
	stmia sp, {r0, r6}
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r9, #0x28]
	mov r0, r9
	mov r1, r7
	mov r2, #0xa
	bl FUN_ov23_02119f48
	str r11, [sp]
	mov r3, #0xc
	mov r0, r9
	mov r1, r7
	mov r2, #6
	str r11, [sp, #4]
	bl FUN_ov23_0211b2bc
	mov r1, #6
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, r9
	mov r2, #0xa
	mov r3, #0x10
	mov r1, r7
	bl FUN_ov23_0211b2bc
	mov r6, r8
	ldr r4, _0211AF18 ; =g3DPlaneCtrl
	b _0211AE7C
_0211AE60:
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_02113ec0
	add r8, r8, #1
_0211AE7C:
	cmp r8, #0x15
	blt _0211AE60
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE8C:
	mov r1, #4
	bl FUN_ov23_0211b384
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE9C:
	mov r1, #3
	bl FUN_ov23_0211b384
	ldr r0, _0211AF24 ; =gAudioPlayer
	ldr r2, _0211AF28 ; =0x0211CD88
	mov r1, r6
	bl _ZN11AudioPlayer12FUN_0202d594EiPKc
	add sp, sp, #0x10
	strb r4, [r9, #0xf8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AEC0:
	mov r1, r5
	bl FUN_ov23_0211b384
	ldr r4, _0211AF18 ; =g3DPlaneCtrl
	ldr r5, _0211AF20 ; =0x00004210
	ldr r1, [r9, #0x48]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114204
	ldr r1, [r9, #0x50]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114204
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AEF8:
	mov r1, #5
	bl FUN_ov23_0211b384
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF08:
	mov r1, #6
	bl FUN_ov23_0211b384
_0211AF10:
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF18: .word g3DPlaneCtrl
_0211AF1C: .word gSprButtonCtrl
_0211AF20: .word 0x00004210
_0211AF24: .word gAudioPlayer
_0211AF28: .word ov23_0211CD88
	arm_func_end FUN_ov23_0211a6a4

	arm_func_start FUN_ov23_0211af2c
FUN_ov23_0211af2c: ; 0x0211AF2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r8, r0
	cmp r1, #0
	ldr r6, [r8, #0x50]
	mov r5, #0
	beq _0211AF74
	str r5, [sp]
	ldr r2, [r8, #0xe4]
	ldr r0, _0211B2B4 ; =g3DPlaneCtrl
	add r1, r8, r2, lsl #2
	ldr r3, [r1, #0xd4]
	ldr r0, [r0]
	mov r1, r6
	add r2, r2, #0xf
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211AF74:
	ldr r0, [r8, #0xe4]
	mov r1, #9
	cmp r0, #1
	str r1, [r8, #0xec]
	moveq r0, #0x23
	str r5, [r8, #0xe8]
	moveq r1, #0xa
	streq r1, [r8, #0xe8]
	streq r0, [r8, #0xec]
	beq _0211AFC8
	cmp r0, #2
	moveq r1, #0x24
	moveq r0, #0x2b
	streq r1, [r8, #0xe8]
	streq r0, [r8, #0xec]
	beq _0211AFC8
	cmp r0, #3
	moveq r1, #0x2c
	moveq r0, #0x45
	streq r1, [r8, #0xe8]
	streq r0, [r8, #0xec]
_0211AFC8:
	ldr r4, _0211B2B4 ; =g3DPlaneCtrl
	str r5, [sp]
	mov r7, #1
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	mov r2, #0xb
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	mov r2, #0xc
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, #0xd
	mov r3, r7
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r7
	mov r1, r6
	mov r2, #0xe
	bl FUN_ov16_0211401c
	mov r7, #9
	mov r9, #3
	ldr r4, _0211B2B8 ; =gSprButtonCtrl
	b _0211B08C
_0211B040:
	mov r1, r7, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	movs r10, r0
	beq _0211B088
	mov r1, r5
	mov r2, r9
	mov r3, r5
	add r0, r10, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r9
	mov r3, r5
	add r0, r10, #0x3e
	bl FUN_ov16_0210e720
	mov r0, r10
	bl FUN_ov16_0210e69c
_0211B088:
	add r7, r7, #1
_0211B08C:
	cmp r7, #0xc
	ble _0211B040
	mov r7, #0xd
	mov r9, #6
	b _0211B0EC
_0211B0A0:
	mov r1, r7, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	movs r10, r0
	beq _0211B0E8
	mov r1, r5
	mov r2, r9
	mov r3, r5
	add r0, r10, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r9
	mov r3, r5
	add r0, r10, #0x3e
	bl FUN_ov16_0210e720
	mov r0, r10
	bl FUN_ov16_0210e69c
_0211B0E8:
	add r7, r7, #1
_0211B0EC:
	cmp r7, #0x10
	ble _0211B0A0
	mov r7, #5
	mov r9, #1
	b _0211B14C
_0211B100:
	mov r1, r7, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	movs r10, r0
	beq _0211B148
	mov r1, r5
	mov r2, r9
	mov r3, r5
	add r0, r10, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r9
	mov r3, r5
	add r0, r10, #0x3e
	bl FUN_ov16_0210e720
	mov r0, r10
	bl FUN_ov16_0210e69c
_0211B148:
	add r7, r7, #1
_0211B14C:
	cmp r7, #8
	ble _0211B100
	str r5, [sp]
	ldr r0, _0211B2B4 ; =g3DPlaneCtrl
	ldr r2, [r8, #0xe4]
	ldr r0, [r0]
	mov r1, r6
	mov r3, r5
	add r2, r2, #0xb
	bl FUN_ov16_0211401c
	ldr r0, [r8, #0xe4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add r0, r0, #5
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	movs r7, r0
	beq _0211B1CC
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r7, #0x3e
	bl FUN_ov16_0210e720
	mov r0, r7
	bl FUN_ov16_0210e69c
_0211B1CC:
	ldr r0, [r8, #0xe4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add r0, r0, #9
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	movs r7, r0
	beq _0211B224
	mov r1, r5
	mov r3, r5
	add r0, r7, #0x3a
	mov r2, #2
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r3, r5
	add r0, r7, #0x3e
	mov r2, #4
	bl FUN_ov16_0210e720
	mov r0, r7
	bl FUN_ov16_0210e69c
_0211B224:
	ldr r0, [r8, #0xe4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add r0, r0, #0xd
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211B27C
	mov r1, r5
	mov r3, r5
	add r0, r4, #0x3a
	mov r2, #5
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r3, r5
	add r0, r4, #0x3e
	mov r2, #7
	bl FUN_ov16_0210e720
	mov r0, r4
	bl FUN_ov16_0210e69c
_0211B27C:
	mov r0, #0x28
	str r0, [sp]
	ldr r0, [r8, #0xe4]
	ldr r1, _0211B2B4 ; =g3DPlaneCtrl
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r2, r0, lsl #0x16
	ldr r0, [r1]
	mov r1, r6
	mov r3, r2, asr #0x10
	mov r2, #2
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B2B4: .word g3DPlaneCtrl
_0211B2B8: .word gSprButtonCtrl
	arm_func_end FUN_ov23_0211af2c

	arm_func_start FUN_ov23_0211b2bc
FUN_ov23_0211b2bc: ; 0x0211B2BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	str r2, [sp]
	mov r7, r3
	mov r6, #0
	mov r2, r7, lsl #0x10
	ldr r4, _0211B380 ; =gSprButtonCtrl
	str r6, [sp, #4]
	mov r5, #1
	mov r3, r1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	mov r1, r7, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
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
	bl FUN_ov16_0210e6fc
	ldr r2, [sp, #0x20]
	mov r1, r6
	mov r3, r6
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r6
	mov r3, r6
	ldr r2, [sp, #0x24]
	bl FUN_ov16_0210e720
	mov r0, r4
	bl FUN_ov16_0210e69c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B380: .word gSprButtonCtrl
	arm_func_end FUN_ov23_0211b2bc

	arm_func_start FUN_ov23_0211b384
FUN_ov23_0211b384: ; 0x0211B384
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10c
	mov r5, #0x100
	add r4, sp, #0xb
	mov r8, r1
	mov r6, #0
	mov r9, r0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	ldr r0, _0211B8D4 ; =0x0211CB04
	rsb r5, r5, #0xff
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	ldrb r0, [r0, #2]
	mov r10, r5
	mov r7, r6
	strb r1, [sp, #8]
	strb r2, [sp, #9]
	strb r0, [sp, #0xa]
	cmp r8, #6
	addls pc, pc, r8, lsl #2
	b _0211B63C
_0211B3E4: ; jump table
	b _0211B400 ; case 0
	b _0211B4A4 ; case 1
	b _0211B4C4 ; case 2
	b _0211B510 ; case 3
	b _0211B5A8 ; case 4
	b _0211B5DC ; case 5
	b _0211B610 ; case 6
_0211B400:
	ldrh r1, [r9, #0xf2]
	ldr r0, _0211B8D8 ; =0x00000D26
	cmp r1, r0
	bne _0211B434
	ldr r3, _0211B8DC ; =0x0211CD90
	mov r2, #0x17
_0211B418:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B418
	b _0211B48C
_0211B434:
	add r0, r0, #2
	cmp r1, r0
	bne _0211B464
	ldr r3, _0211B8E0 ; =0x0211CDC0
	mov r2, #0x17
_0211B448:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B448
	b _0211B48C
_0211B464:
	cmp r1, #0xfc
	bne _0211B494
	ldr r3, _0211B8E4 ; =0x0211CDF0
	mov r2, #0x19
_0211B474:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B474
_0211B48C:
	ldrb r0, [r3]
	strb r0, [r4]
_0211B494:
	mov r5, #5
	mov r10, #2
_0211B49C:
	mov r6, #1
	b _0211B63C
_0211B4A4:
	ldrsb r3, [sp, #9]
	ldr r2, _0211B8E8 ; =0x0211D0A0
	and r6, r1, #0xff
	add r10, r3, #2
	and r5, r10, #0xff
	and r3, r0, #0xff
	ldr r1, _0211B8EC ; =0x0211CE24
	b _0211B4EC
_0211B4C4:
	ldrb r3, [r9, #0xf1]
	ldrsb r5, [sp, #9]
	ldr r2, _0211B8E8 ; =0x0211D0A0
	sub r3, r3, #1
	mov r3, r3, lsl #0x18
	add r10, r5, r3, asr #24
	and r6, r1, #0xff
	and r5, r10, #0xff
	and r3, r0, #0xff
	ldr r1, _0211B8F0 ; =0x0211CE90
_0211B4EC:
	mov r0, r4
	strb r10, [sp, #9]
	strb r6, [r2]
	strb r5, [r2, #1]
	strb r3, [r2, #2]
	bl sprintf
_0211B504:
	mov r5, #5
	mov r10, r5
	b _0211B49C
_0211B510:
	ldrh r1, [r9, #0xf2]
	ldr r0, _0211B8D8 ; =0x00000D26
	cmp r1, r0
	bne _0211B544
	ldr r3, _0211B8F4 ; =0x0211CED8
	mov r2, #0x26
_0211B528:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B528
	b _0211B59C
_0211B544:
	add r0, r0, #2
	cmp r1, r0
	bne _0211B574
	ldr r3, _0211B8F8 ; =0x0211CF28
	mov r2, #0x26
_0211B558:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B558
	b _0211B59C
_0211B574:
	cmp r1, #0xfc
	bne _0211B5A4
	ldr r3, _0211B8FC ; =0x0211CF78
	mov r2, #0x23
_0211B584:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B584
_0211B59C:
	ldrb r0, [r3]
	strb r0, [r4]
_0211B5A4:
	b _0211B504
_0211B5A8:
	ldr r3, _0211B900 ; =0x0211CFC0
	mov r2, #0xb
_0211B5B0:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B5B0
	ldrb r0, [r3]
	mov r5, #6
	mov r10, #0xa
	strb r0, [r4]
	b _0211B49C
_0211B5DC:
	ldr r3, _0211B904 ; =0x0211CFD8
	mov r2, #0x1b
_0211B5E4:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B5E4
	ldrb r0, [r3]
	mov r5, #7
	mov r10, #5
	strb r0, [r4]
	b _0211B638
_0211B610:
	ldr r3, _0211B908 ; =0x0211D010
	mov r2, #0x23
_0211B618:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _0211B618
	mov r5, #8
	mov r10, #2
_0211B638:
	mov r7, #1
_0211B63C:
	mov r11, #3
	mov r0, r9
	mov r1, r11
	mov r2, #2
	bl FUN_ov23_02119f00
	add r0, r9, #0x58
	bl FUN_ov16_021109a0
	add r0, r9, #0x58
	bl FUN_ov16_021105c0
	add r2, r9, r5, lsl #2
	ldr r2, [r2, #0x18]
	add r0, r9, #0x58
	mov r1, #0
	bl FUN_ov16_02110624
	add r0, r9, #0x58
	mov r1, #2
	mov r2, #0
	bl FUN_ov16_02110624
	cmp r6, #0
	beq _0211B6D4
	mov r0, #1
	str r0, [sp]
	sub r4, r0, #2
	mov r1, #0
	str r4, [sp, #4]
	add r0, r9, r5, lsl #2
	ldr r3, [r0, #0x18]
	mov r2, r1
	add r0, r9, #0x58
	bl FUN_ov16_021107a0
	mov r0, #0
	stmia sp, {r0, r4}
	mov r1, r0
	ldr r3, [r9, #0x24]
	mov r2, #2
	add r0, r9, #0x58
	bl FUN_ov16_021107a0
	b _0211B794
_0211B6D4:
	cmp r7, #0
	beq _0211B794
	mov r0, #1
	str r0, [sp]
	sub r4, r0, #2
	str r4, [sp, #4]
	add r0, r9, r5, lsl #2
	ldr r3, [r0, #0x18]
	mov r1, #1
	mov r2, #0
	add r0, r9, #0x58
	bl FUN_ov16_021107a0
	mov r0, #1
	stmia sp, {r0, r4}
	mov r1, #1
	ldr r3, [r9, #0x24]
	add r0, r9, #0x58
	mov r2, r1
	bl FUN_ov16_021107a0
	mov r0, #2
	stmia sp, {r0, r4}
	ldr r3, [r9, #0x24]
	add r0, r9, #0x58
	mov r1, #1
	mov r2, #2
	bl FUN_ov16_021107a0
	mov r0, #2
	stmia sp, {r0, r4}
	add r1, r9, r5, lsl #2
	ldr r3, [r1, #0x18]
	mov r2, #0
	add r0, r9, #0x58
	mov r1, #2
	bl FUN_ov16_021107a0
	str r11, [sp]
	str r4, [sp, #4]
	ldr r3, [r9, #0x24]
	mov r2, #1
	add r0, r9, #0x58
	mov r1, #2
	bl FUN_ov16_021107a0
	mov r0, #4
	stmia sp, {r0, r4}
	mov r1, #2
	ldr r3, [r9, #0x24]
	add r0, r9, #0x58
	mov r2, r1
	bl FUN_ov16_021107a0
_0211B794:
	add r0, r9, #0x58
	mov r1, #0xc8
	bl FUN_ov16_02110864
	cmp r6, #0
	beq _0211B7BC
	mov r2, #0x13
	mov r3, r2
	add r0, r9, #0x58
	mov r1, #0
	b _0211B7D4
_0211B7BC:
	cmp r7, #0
	beq _0211B7D8
	add r0, r9, #0x58
	mov r1, #0
	mov r2, #0x14
	mov r3, #0x15
_0211B7D4:
	bl FUN_ov16_02110830
_0211B7D8:
	add r0, r9, #0x58
	mov r1, #0
	bl FUN_ov16_0211085c
	mov r5, #0x38
	mov r2, r5
	add r0, r9, #0x58
	mov r1, #0x10
	bl FUN_ov16_021108b4
	cmp r6, #0
	beq _0211B814
	mov r1, #0x68
	mov r2, r1
	add r0, r9, #0x58
	bl FUN_ov16_021108d8
	b _0211B840
_0211B814:
	cmp r7, #0
	beq _0211B840
	mov r4, #0x68
	mov r1, r5
	mov r2, r4
	add r0, r9, #0x58
	bl FUN_ov16_021108c0
	mov r2, r4
	add r0, r9, #0x58
	mov r1, #0x98
	bl FUN_ov16_021108cc
_0211B840:
	mov r2, r10
	add r0, r9, #0x58
	mov r1, #0xf
	bl FUN_ov16_021108e4
	add r0, r9, #0x58
	mov r1, #5
	mov r2, #3
	bl FUN_ov16_021108f0
	cmp r6, #0
	beq _0211B880
	mov r1, #1
	add r2, sp, #0xb
	mov r3, r1
	add r0, r9, #0x58
	str r1, [sp]
	b _0211B89C
_0211B880:
	cmp r7, #0
	beq _0211B8A0
	mov r3, #1
	add r2, sp, #0xb
	add r0, r9, #0x58
	mov r1, #2
	str r3, [sp]
_0211B89C:
	bl FUN_ov16_02110938
_0211B8A0:
	cmp r8, #6
	add r0, r9, #0x58
	bne _0211B8C0
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	add sp, sp, #0x10c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B8C0:
	mov r1, #1
	mov r2, #0
	bl FUN_ov16_02110a04
	add sp, sp, #0x10c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B8D4: .word ov23_0211CB04
_0211B8D8: .word 0x00000D26
_0211B8DC: .word ov23_0211CD90
_0211B8E0: .word ov23_0211CDC0
_0211B8E4: .word ov23_0211CDF0
_0211B8E8: .word ov23_0211D0A0
_0211B8EC: .word ov23_0211CE24
_0211B8F0: .word ov23_0211CE90
_0211B8F4: .word ov23_0211CED8
_0211B8F8: .word ov23_0211CF28
_0211B8FC: .word ov23_0211CF78
_0211B900: .word ov23_0211CFC0
_0211B904: .word ov23_0211CFD8
_0211B908: .word ov23_0211D010
	arm_func_end FUN_ov23_0211b384

	arm_func_start FUN_ov23_0211b90c
FUN_ov23_0211b90c: ; 0x0211B90C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	bl FUN_ov16_020f47fc
	mov r5, #2
	mov r0, r5
	bl FUN_ov16_020f3f60
	mov r0, #1
	mov r4, #0
	mov r1, r4
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r2, _0211BA38 ; =0x04000008
	mov r0, r6
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
	ldr r0, _0211BA3C ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211BA40 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _0211BA44 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	mov r0, #0x4000000
	ldr r1, [r0]
	add r0, r6, #0xc
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r6, #8]
	mov r1, r4
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r6, #0x18
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r6, #0x48
	mov r1, r4
	mov r7, #0x10
	mov r2, r7
	bl MI_CpuFill8
	ldr r0, _0211BA48 ; =0x0211D058
	add r1, r6, #0xc
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	str r4, [sp]
	ldr r0, _0211BA4C ; =0x0211D078
	ldr r1, [r6, #0xc]
	ldr r2, _0211BA50 ; =0x0211CB40
	add r3, r6, #0x18
	bl FUN_ov16_020f5450
	sub r0, r7, #0x11
	strb r5, [r6, #0xcc]
	str r5, [r6, #0xd0]
	strb r4, [r6, #0xf0]
	strb r4, [r6, #0xf1]
	strh r4, [r6, #0xf2]
	strb r4, [r6, #0xf4]
	strb r4, [r6, #0xf5]
	strb r4, [r6, #0xf6]
	strb r4, [r6, #0xf7]
	strb r4, [r6, #0xf8]
	strb r4, [r6, #0xf9]
	strb r4, [r6, #0xfa]
	strb r0, [r6, #0xfb]
	strb r0, [r6, #0xfc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BA38: .word 0x04000008
_0211BA3C: .word gSprButtonCtrl
_0211BA40: .word gSprAnimCtrl
_0211BA44: .word g3DPlaneCtrl
_0211BA48: .word ov23_0211D058
_0211BA4C: .word ov23_0211D078
_0211BA50: .word ov23_0211CB40
	arm_func_end FUN_ov23_0211b90c

	arm_func_start FUN_ov23_0211ba54
FUN_ov23_0211ba54: ; 0x0211BA54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r1, _0211BE70 ; =gDeltaTime
	ldr r6, _0211BE74 ; =gSprAnimCtrl
	mov r5, r0
	ldr r0, [r6]
	ldr r1, [r1]
	mov r7, #1
	mov r4, #0
	bl FUN_ov16_0210e10c
	mov r0, r5
	bl FUN_ov23_0211a060
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0xcc]
	cmp r0, #0x19
	addls pc, pc, r0, lsl #2
	b _0211BE68
_0211BAB4: ; jump table
	b _0211BE68 ; case 0
	b _0211BE68 ; case 1
	b _0211BB1C ; case 2
	b _0211BB2C ; case 3
	b _0211BB84 ; case 4
	b _0211BC00 ; case 5
	b _0211BC38 ; case 6
	b _0211BE68 ; case 7
	b _0211BC54 ; case 8
	b _0211BC70 ; case 9
	b _0211BC1C ; case 10
	b _0211BE68 ; case 11
	b _0211BC8C ; case 12
	b _0211BE68 ; case 13
	b _0211BCA8 ; case 14
	b _0211BE68 ; case 15
	b _0211BCC4 ; case 16
	b _0211BCE0 ; case 17
	b _0211BD14 ; case 18
	b _0211BE68 ; case 19
	b _0211BD30 ; case 20
	b _0211BE68 ; case 21
	b _0211BD4C ; case 22
	b _0211BD68 ; case 23
	b _0211BD84 ; case 24
	b _0211BDB0 ; case 25
_0211BB1C:
	mov r0, #3
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BB2C:
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_ov23_02119f00
	str r4, [sp]
	mov r1, r0
	str r4, [sp, #4]
	mov r0, #0x258
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r3, [r5, #0x18]
	mov r0, r5
	mov r2, r7
	bl FUN_ov23_02119f48
	mov r0, r5
	mov r1, r7
	bl FUN_ov23_0211a6a4
	mov r0, #4
	add sp, sp, #0x10
	strb r7, [r5, #0xf0]
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BB84:
	mov r7, r4
	ldr r6, _0211BE78 ; =g3DPlaneCtrl
	b _0211BBCC
_0211BB90:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _0211BBC8
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211BBC8
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x18]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211BBC8:
	add r4, r4, #1
_0211BBCC:
	cmp r4, #0xc
	blt _0211BB90
	mov r4, #8
	mov r1, r4
	mov r0, #0
	bl _ZN8Graphics12FadeInScreenE12EngineSelectl
	mov r1, r4
	mov r0, #1
	bl _ZN8Graphics12FadeInScreenE12EngineSelectl
	mov r0, #5
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC00:
	ldr r0, [r5, #4]
	add r1, r5, #0xf9
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC1C:
	mov r0, r5
	mov r1, #2
	bl FUN_ov23_0211a300
	mov r0, #0xb
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC38:
	mov r0, r5
	mov r1, #3
	bl FUN_ov23_0211a300
	mov r0, #7
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC54:
	mov r0, r5
	mov r1, #4
	bl FUN_ov23_0211a300
	mov r0, #9
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC70:
	ldr r0, [r5, #4]
	add r1, r5, #0xf9
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC8C:
	mov r0, r5
	mov r1, #5
	bl FUN_ov23_0211a300
	mov r0, #0xd
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BCA8:
	mov r0, r5
	mov r1, #6
	bl FUN_ov23_0211a300
	mov r0, #0xf
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BCC4:
	mov r0, r5
	mov r1, #7
	bl FUN_ov23_0211a300
	mov r0, #0x11
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BCE0:
	ldr r6, _0211BE7C ; =gAudioPlayer
	mov r1, r4
	mov r0, r6
	bl FUN_0202dbd0
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	bl _ZN11AudioPlayer12FUN_0202d578Ei
	add sp, sp, #0x10
	strb r4, [r5, #0xf8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD14:
	mov r0, r5
	mov r1, #8
	bl FUN_ov23_0211a300
	mov r0, #0x13
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD30:
	mov r0, r5
	mov r1, #9
	bl FUN_ov23_0211a300
	mov r0, #0x15
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD4C:
	mov r0, r5
	mov r1, r7
	bl FUN_ov23_0211a300
	mov r0, #5
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD68:
	mov r0, r5
	mov r1, #4
	bl FUN_ov23_0211a300
	mov r0, #9
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD84:
	mov r6, #8
	mov r0, r4
	mov r1, r6
	bl _ZN8Graphics15FadeScreenBlackE12EngineSelectl
	mov r1, r6
	mov r0, r7
	bl _ZN8Graphics15FadeScreenBlackE12EngineSelectl
	mov r0, #0x19
	add sp, sp, #0x10
	strb r0, [r5, #0xcc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BDB0:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0xf4]
	cmp r0, #0
	beq _0211BE04
	ldr r0, _0211BE80 ; =0x0209A454
	mov r1, #4
	str r1, [r0, #0x24]
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0xc
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldr r0, [r5, #4]
	mov r2, r4
_0211BDFC:
	mov r1, r7
	b _0211BE5C
_0211BE04:
	ldrb r0, [r5, #0xf5]
	cmp r0, #0
	beq _0211BE40
	ldrh r1, [r5, #0xf2]
	ldr r0, _0211BE84 ; =0x020A9C40
	mov r2, #0x14
	bl FUN_02045b40
	mov r6, #0x61
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, r6
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldr r0, [r5, #4]
	mov r2, r6
	b _0211BDFC
_0211BE40:
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x22
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldr r0, [r5, #4]
	mov r1, r7
	mov r2, #0xa
_0211BE5C:
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, #0
	strb r0, [r5, #0xcc]
_0211BE68:
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BE70: .word gDeltaTime
_0211BE74: .word gSprAnimCtrl
_0211BE78: .word g3DPlaneCtrl
_0211BE7C: .word gAudioPlayer
_0211BE80: .word unk_0209A454
_0211BE84: .word unk_020A9C40
	arm_func_end FUN_ov23_0211ba54

	arm_func_start FUN_ov23_0211be88
FUN_ov23_0211be88: ; 0x0211BE88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r4, #0
	b _0211BEA8
_0211BE98:
	mov r0, r10
	mov r1, r4
	bl FUN_ov23_0211a014
	add r4, r4, #1
_0211BEA8:
	cmp r4, #0xc
	blt _0211BE98
	mov r4, #0
	b _0211BECC
_0211BEB8:
	mov r0, r10
	mov r1, r4
	bl FUN_ov23_02119fd8
	add r0, r4, #1
	and r4, r0, #0xff
_0211BECC:
	cmp r4, #4
	blo _0211BEB8
	mov r9, #0
	add r7, r10, #0xc
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
	b _0211BF20
_0211BEEC:
	mul r6, r9, r4
	add r8, r7, r6
	mov r0, r8
	mov r1, r11
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r8
	bl _ZN7Archive10DeallocateEP9SFileData
	str r5, [r7, r6]
	str r5, [r8, #4]
	strb r5, [r8, #8]
	strb r5, [r8, #9]
	strb r5, [r8, #0xa]
	add r9, r9, #1
_0211BF20:
	cmp r9, #1
	blt _0211BEEC
	add r0, r10, #0x58
	bl FUN_ov16_021109a0
	add r0, r10, #0x58
	bl FUN_ov16_021105c0
	ldr r0, _0211BF7C ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211BF80 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r0, _0211BF84 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	mov r4, #1
	mov r0, r4
	bl FUN_ov16_020f3f60
	mov r0, r4
	bl FUN_ov16_020f4894
	ldr r0, _0211BF88 ; =gUnitMan
	bl FUN_ov16_020efa04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF7C: .word gSprButtonCtrl
_0211BF80: .word gSprAnimCtrl
_0211BF84: .word g3DPlaneCtrl
_0211BF88: .word gUnitMan
	arm_func_end FUN_ov23_0211be88

	arm_func_start FUN_ov23_0211bf8c
FUN_ov23_0211bf8c: ; 0x0211BF8C
	bx lr
	arm_func_end FUN_ov23_0211bf8c

	arm_func_start FUN_ov23_0211bf90
FUN_ov23_0211bf90: ; 0x0211BF90
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl FUN_ov23_0211a0c8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0xf8]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211C28C ; =gSprButtonCtrl
	ldr r0, [r7]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211BFE4
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strh r4, [r0, #0x38]
_0211BFE4:
	tst r5, #4
	beq _0211BFFC
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211BFFC:
	ldr r0, _0211C290 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0xf0]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C020: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211C048 ; case 1
	b _0211C0D4 ; case 2
	b _0211C0D4 ; case 3
	b _0211C0E8 ; case 4
	b _0211C0D4 ; case 5
	b _0211C0D4 ; case 6
	b _0211C0D4 ; case 7
	b _0211C200 ; case 8
	b _0211C200 ; case 9
_0211C048:
	tst r5, #1
	beq _0211C05C
	mov r0, r6
	bl FUN_ov23_0211c5fc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C05C:
	tst r5, #2
	beq _0211C070
	mov r0, r6
	bl FUN_ov23_0211c744
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C070:
	tst r5, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	tst r5, #0x40
	ldrne r0, [r6, #0xd0]
	subne r0, r0, #1
	strne r0, [r6, #0xd0]
	bne _0211C09C
	tst r5, #0x80
	ldrne r0, [r6, #0xd0]
	addne r0, r0, #1
	strne r0, [r6, #0xd0]
_0211C09C:
	ldr r0, [r6, #0xd0]
	cmp r0, #2
	movlt r0, #4
	strlt r0, [r6, #0xd0]
	ldr r0, [r6, #0xd0]
	cmp r0, #4
	movgt r0, #2
	strgt r0, [r6, #0xd0]
	mov r0, r6
	bl FUN_ov23_0211c988
	ldr r0, _0211C294 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C0D4:
	tst r5, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov23_0211c7b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C0E8:
	tst r5, #1
	beq _0211C0FC
	mov r0, r6
	bl FUN_ov23_0211c5fc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C0FC:
	tst r5, #2
	beq _0211C110
	mov r0, r6
	bl FUN_ov23_0211c744
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C110:
	tst r5, #0xc0
	beq _0211C19C
	tst r5, #0x40
	mov r1, #0
	beq _0211C140
	ldr r2, [r6, #0xe4]
	add r3, r6, #0xd4
	ldr r0, [r3, r2, lsl #2]
	mov r1, #1
	add r0, r0, #1
	str r0, [r3, r2, lsl #2]
	b _0211C158
_0211C140:
	tst r5, #0x80
	ldrne r2, [r6, #0xe4]
	addne r3, r6, #0xd4
	ldrne r0, [r3, r2, lsl #2]
	subne r0, r0, #1
	strne r0, [r3, r2, lsl #2]
_0211C158:
	ldr r2, [r6, #0xe4]
	ldr r0, [r6, #0xe8]
	add r3, r6, r2, lsl #2
	ldr r2, [r3, #0xd4]
	cmp r2, r0
	ldrlt r0, [r6, #0xec]
	strlt r0, [r3, #0xd4]
	ldr r2, [r6, #0xe4]
	ldr r0, [r6, #0xec]
	add r3, r6, r2, lsl #2
	ldr r2, [r3, #0xd4]
	cmp r2, r0
	ldrgt r0, [r6, #0xe8]
	strgt r0, [r3, #0xd4]
	mov r0, r6
	bl FUN_ov23_0211c934
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C19C:
	tst r5, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	tst r5, #0x10
	ldrne r0, [r6, #0xe4]
	addne r0, r0, #1
	strne r0, [r6, #0xe4]
	bne _0211C1C8
	tst r5, #0x20
	ldrne r0, [r6, #0xe4]
	subne r0, r0, #1
	strne r0, [r6, #0xe4]
_0211C1C8:
	ldr r0, [r6, #0xe4]
	mov r1, #8
	cmp r0, #0
	movlt r0, #3
	strlt r0, [r6, #0xe4]
	ldr r0, [r6, #0xe4]
	cmp r0, #3
	ldr r0, _0211C294 ; =gAudioPlayer
	strgt r4, [r6, #0xe4]
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r6
	mov r1, #0
	bl FUN_ov23_0211af2c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C200:
	tst r5, #1
	beq _0211C22C
	add r0, r6, #0x58
	bl FUN_ov16_02110b04
	cmp r0, #1
	mov r0, r6
	bne _0211C224
	bl FUN_ov23_0211c850
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C224:
	bl FUN_ov23_0211c8e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C22C:
	tst r5, #2
	beq _0211C240
	mov r0, r6
	bl FUN_ov23_0211c8e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C240:
	tst r5, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x58
	bl FUN_ov16_02110b04
	cmp r0, #1
	add r0, r6, #0x58
	bne _0211C268
	mov r1, #0
	mov r2, #1
	b _0211C270
_0211C268:
	mov r1, #1
	mov r2, #0
_0211C270:
	bl FUN_ov16_02110a04
	add r0, r6, #0x58
	bl FUN_ov16_02110b0c
	ldr r0, _0211C294 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C28C: .word gSprButtonCtrl
_0211C290: .word gSprAnimCtrl
_0211C294: .word gAudioPlayer
	arm_func_end FUN_ov23_0211bf90

	arm_func_start FUN_ov23_0211c298
FUN_ov23_0211c298: ; 0x0211C298
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl FUN_ov23_0211a0c8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211C5F0 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreqb r0, [r7, #0xf8]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0211C5F4 ; =gSprButtonCtrl
	mov r4, #1
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_0210f20c
	mov r6, r0
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	ldrb r1, [r7, #0xf0]
	ldr r2, [r7, #0xd0]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C304: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211C32C ; case 1
	b _0211C3D0 ; case 2
	b _0211C3D0 ; case 3
	b _0211C3E8 ; case 4
	b _0211C3D0 ; case 5
	b _0211C3D0 ; case 6
	b _0211C3D0 ; case 7
	b _0211C568 ; case 8
	b _0211C568 ; case 9
_0211C32C:
	cmp r6, #2
	bne _0211C36C
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C340: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211C354 ; case 1
	b _0211C360 ; case 2
	b _0211C360 ; case 3
	b _0211C360 ; case 4
_0211C354:
	mov r0, r7
	bl FUN_ov23_0211c744
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C360:
	mov r0, r7
	bl FUN_ov23_0211c5fc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C36C:
	cmp r6, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211C3AC
_0211C380: ; jump table
	b _0211C3AC ; case 0
	b _0211C3AC ; case 1
	b _0211C394 ; case 2
	b _0211C39C ; case 3
	b _0211C3A4 ; case 4
_0211C394:
	mov r0, #2
	b _0211C3A8
_0211C39C:
	mov r0, #3
	b _0211C3A8
_0211C3A4:
	mov r0, #4
_0211C3A8:
	str r0, [r7, #0xd0]
_0211C3AC:
	ldr r0, [r7, #0xd0]
	cmp r2, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov23_0211c988
	ldr r0, _0211C5F8 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C3D0:
	cmp r6, #2
	cmpeq r0, #0x13
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov23_0211c7b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C3E8:
	cmp r6, #2
	bne _0211C4C4
	ldr r1, [r7, #0xe4]
	sub r0, r0, #9
	add r2, r7, r1, lsl #2
	ldr r5, [r2, #0xd4]
	cmp r0, #9
	mov r6, #0
	addls pc, pc, r0, lsl #2
	b _0211C474
_0211C410: ; jump table
	b _0211C450 ; case 0
	b _0211C450 ; case 1
	b _0211C450 ; case 2
	b _0211C450 ; case 3
	b _0211C464 ; case 4
	b _0211C464 ; case 5
	b _0211C464 ; case 6
	b _0211C464 ; case 7
	b _0211C438 ; case 8
	b _0211C444 ; case 9
_0211C438:
	mov r0, r7
	bl FUN_ov23_0211c5fc
	b _0211C474
_0211C444:
	mov r0, r7
	bl FUN_ov23_0211c744
	b _0211C474
_0211C450:
	add r2, r7, #0xd4
	ldr r0, [r2, r1, lsl #2]
	mov r6, r4
	add r0, r0, #1
	b _0211C470
_0211C464:
	add r2, r7, #0xd4
	ldr r0, [r2, r1, lsl #2]
	sub r0, r0, #1
_0211C470:
	str r0, [r2, r1, lsl #2]
_0211C474:
	ldr r0, [r7, #0xe4]
	add r2, r7, r0, lsl #2
	ldr r1, [r2, #0xd4]
	cmp r5, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xe8]
	cmp r1, r0
	ldrlt r0, [r7, #0xec]
	strlt r0, [r2, #0xd4]
	ldr r1, [r7, #0xe4]
	ldr r0, [r7, #0xec]
	add r2, r7, r1, lsl #2
	ldr r1, [r2, #0xd4]
	cmp r1, r0
	ldrgt r0, [r7, #0xe8]
	mov r1, r6
	strgt r0, [r2, #0xd4]
	mov r0, r7
	bl FUN_ov23_0211c934
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C4C4:
	cmp r6, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #0xe4]
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _0211C540
_0211C4DC: ; jump table
	b _0211C540 ; case 0
	b _0211C540 ; case 1
	b _0211C540 ; case 2
	b _0211C540 ; case 3
	b _0211C540 ; case 4
	b _0211C520 ; case 5
	b _0211C528 ; case 6
	b _0211C530 ; case 7
	b _0211C538 ; case 8
	b _0211C520 ; case 9
	b _0211C528 ; case 10
	b _0211C530 ; case 11
	b _0211C538 ; case 12
	b _0211C520 ; case 13
	b _0211C528 ; case 14
	b _0211C530 ; case 15
	b _0211C538 ; case 16
_0211C520:
	mov r0, #0
	b _0211C53C
_0211C528:
	str r4, [r7, #0xe4]
	b _0211C540
_0211C530:
	mov r0, #2
	b _0211C53C
_0211C538:
	mov r0, #3
_0211C53C:
	str r0, [r7, #0xe4]
_0211C540:
	ldr r0, [r7, #0xe4]
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211C5F8 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r7
	mov r1, #0
	bl FUN_ov23_0211af2c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C568:
	cmp r6, #2
	bne _0211C59C
	cmp r0, #0x14
	beq _0211C584
	cmp r0, #0x15
	beq _0211C590
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C584:
	mov r0, r7
	bl FUN_ov23_0211c850
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C590:
	mov r0, r7
	bl FUN_ov23_0211c8e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C59C:
	cmp r6, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x14
	mov r2, #0
	beq _0211C5BC
	cmp r0, #0x15
	beq _0211C5C4
	b _0211C5D8
_0211C5BC:
	mov r1, r4
	b _0211C5CC
_0211C5C4:
	mov r1, r2
	mov r2, r4
_0211C5CC:
	add r0, r7, #0x58
	bl FUN_ov16_02110a04
	mov r2, r0
_0211C5D8:
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211C5F8 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C5F0: .word gSprAnimCtrl
_0211C5F4: .word gSprButtonCtrl
_0211C5F8: .word gAudioPlayer
	arm_func_end FUN_ov23_0211c298

	arm_func_start FUN_ov23_0211c5fc
FUN_ov23_0211c5fc: ; 0x0211C5FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r1, [r5, #0xcc]
	cmp r1, #5
	bne _0211C660
	ldr r1, [r5, #0xd0]
	bl FUN_ov23_0211a0fc
	strh r0, [r5, #0xf2]
	ldrh r1, [r5, #0xf2]
	mov r0, r5
	bl FUN_ov23_0211a140
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #6
	strb r0, [r5, #0xcc]
	ldr r1, [r5, #0xd0]
	ldr r0, _0211C73C ; =gSprButtonCtrl
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210efac
	ldr r0, _0211C740 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211C660:
	cmp r1, #9
	ldmnefd sp!, {r3, r4, r5, pc}
	add r3, sp, #0
	mov r4, #0
	strb r4, [r3]
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	strb r4, [r3, #3]
	ldr r1, [r5, #0xd4]
	strb r1, [sp]
	ldr r1, [r5, #0xd8]
	sub r1, r1, #9
	strb r1, [sp, #1]
	ldr r1, [r5, #0xdc]
	sub r1, r1, #0x23
	strb r1, [sp, #2]
	ldr r1, [r5, #0xe0]
	sub r1, r1, #0x2b
	strb r1, [sp, #3]
	ldrsb r1, [r5, #0xf6]
	ldrsb r2, [r5, #0xf7]
	bl FUN_ov23_0211a1a0
	cmp r0, #0
	beq _0211C704
	ldrb r0, [r5, #0xf1]
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #3
	movlo r0, #0xe
	strb r1, [r5, #0xf1]
	strlob r0, [r5, #0xcc]
	blo _0211C6F8
	mov r2, #0x10
	mov r0, r5
	mov r1, r4
	strb r4, [r5, #0xf1]
	strb r2, [r5, #0xcc]
	bl FUN_ov23_0211ca98
_0211C6F8:
	ldr r0, _0211C740 ; =gAudioPlayer
	mov r1, #6
	b _0211C724
_0211C704:
	mov r2, #0xc
	mov r0, r5
	mov r1, r4
	strb r4, [r5, #0xf1]
	strb r2, [r5, #0xcc]
	bl FUN_ov23_0211ca98
	ldr r0, _0211C740 ; =gAudioPlayer
	mov r1, #9
_0211C724:
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, _0211C73C ; =gSprButtonCtrl
	mov r1, #0x11
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	ldmfd sp!, {r3, r4, r5, pc}
_0211C73C: .word gSprButtonCtrl
_0211C740: .word gAudioPlayer
	arm_func_end FUN_ov23_0211c5fc

	arm_func_start FUN_ov23_0211c744
FUN_ov23_0211c744: ; 0x0211C744
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0xf0]
	cmp r0, #1
	bne _0211C77C
	ldr r0, _0211C7B0 ; =gSprButtonCtrl
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov16_0210efac
	mov r0, #0x18
	str r4, [r5, #0xd0]
	strb r0, [r5, #0xcc]
	b _0211C7A0
_0211C77C:
	ldr r0, _0211C7B0 ; =gSprButtonCtrl
	mov r1, #0x12
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	mov r2, #0x16
	mov r0, r5
	mov r1, #0
	strb r2, [r5, #0xcc]
	bl FUN_ov23_0211ca98
_0211C7A0:
	ldr r0, _0211C7B4 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211C7B0: .word gSprButtonCtrl
_0211C7B4: .word gAudioPlayer
	arm_func_end FUN_ov23_0211c744

	arm_func_start FUN_ov23_0211c7b8
FUN_ov23_0211c7b8: ; 0x0211C7B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0xf0]
	cmp r1, #7
	bne _0211C7F0
	ldrh r0, [r4, #0xf2]
	cmp r0, #0xfc
	moveq r0, #0x12
	streqb r0, [r4, #0xcc]
	movne r1, #1
	movne r0, #0x18
	strneb r1, [r4, #0xf5]
	strneb r0, [r4, #0xcc]
	b _0211C834
_0211C7F0:
	cmp r1, #3
	bne _0211C80C
	mov r2, #8
	mov r1, #0
	strb r2, [r4, #0xcc]
	strb r1, [r4, #0xf1]
	b _0211C824
_0211C80C:
	cmp r1, #6
	movne r0, #0x16
	strneb r0, [r4, #0xcc]
	bne _0211C834
	mov r1, #0x17
	strb r1, [r4, #0xcc]
_0211C824:
	bl FUN_ov23_0211a294
	mov r0, r4
	mov r1, #1
	bl FUN_ov23_0211ca98
_0211C834:
	add r0, r4, #0x58
	bl FUN_ov16_02110b0c
	ldr r0, _0211C84C ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r4, pc}
_0211C84C: .word gAudioPlayer
	arm_func_end FUN_ov23_0211c7b8

	arm_func_start FUN_ov23_0211c850
FUN_ov23_0211c850: ; 0x0211C850
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0xf0]
	cmp r0, #8
	bne _0211C89C
	ldrh r1, [r4, #0xf2]
	ldr r0, _0211C8D4 ; =gLogicThink
	mov r2, #1
	bl FUN_ov16_020ede60 ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	ldreq r0, _0211C8D8 ; =0x020A1640
	ldreqb r1, [r0, #0x12]
	orreq r1, r1, #1
	streqb r1, [r0, #0x12]
	mov r1, #0x18
	mov r0, #1
	strb r1, [r4, #0xcc]
	strb r0, [r4, #0xf4]
	b _0211C8A8
_0211C89C:
	cmp r0, #9
	moveq r0, #0x18
	streqb r0, [r4, #0xcc]
_0211C8A8:
	mov r5, #1
	mov r1, r5
	add r0, r4, #0x58
	mov r2, #0
	bl FUN_ov16_02110a04
	add r0, r4, #0x58
	bl FUN_ov16_02110b0c
	ldr r0, _0211C8DC ; =gAudioPlayer
	mov r1, r5
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211C8D4: .word gLogicThink
_0211C8D8: .word unk_020A1640
_0211C8DC: .word gAudioPlayer
	arm_func_end FUN_ov23_0211c850

	arm_func_start FUN_ov23_0211c8e0
FUN_ov23_0211c8e0: ; 0x0211C8E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xf0]
	cmp r0, #8
	moveq r0, #0x14
	streqb r0, [r4, #0xcc]
	beq _0211C908
	cmp r0, #9
	moveq r0, #0x12
	streqb r0, [r4, #0xcc]
_0211C908:
	add r0, r4, #0x58
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	add r0, r4, #0x58
	bl FUN_ov16_02110b0c
	ldr r0, _0211C930 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r4, pc}
_0211C930: .word gAudioPlayer
	arm_func_end FUN_ov23_0211c8e0

	arm_func_start FUN_ov23_0211c934
FUN_ov23_0211c934: ; 0x0211C934
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xe4]
	cmp r1, #0
	addne r1, r0, #9
	addeq r1, r0, #0xd
	ldr r0, _0211C980 ; =gSprButtonCtrl
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210efac
	mov r4, #1
	ldr r0, _0211C984 ; =gAudioPlayer
	mov r1, r4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r5
	mov r1, r4
	bl FUN_ov23_0211af2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211C980: .word gSprButtonCtrl
_0211C984: .word gAudioPlayer
	arm_func_end FUN_ov23_0211c934

	arm_func_start FUN_ov23_0211c988
FUN_ov23_0211c988: ; 0x0211C988
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrb r0, [r4, #0xf0]
	mov r6, #0
	cmp r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211CA94 ; =gSprButtonCtrl
	mov r1, #2
	ldr r0, [r0]
	bl FUN_ov16_0210e7d0
	movs r5, r0
	beq _0211C9D4
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r0, r5
	bl FUN_ov16_0210e69c
_0211C9D4:
	ldr r0, _0211CA94 ; =gSprButtonCtrl
	mov r6, #3
	ldr r0, [r0]
	mov r1, r6
	bl FUN_ov16_0210e7d0
	movs r5, r0
	beq _0211CA0C
	mov r1, #0
	mov r2, r6
	mov r3, r1
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r0, r5
	bl FUN_ov16_0210e69c
_0211CA0C:
	ldr r0, _0211CA94 ; =gSprButtonCtrl
	mov r1, #4
	ldr r0, [r0]
	bl FUN_ov16_0210e7d0
	movs r5, r0
	beq _0211CA40
	mov r1, #0
	mov r3, r1
	add r0, r5, #0x3a
	mov r2, #6
	bl FUN_ov16_0210e720
	mov r0, r5
	bl FUN_ov16_0210e69c
_0211CA40:
	ldr r1, [r4, #0xd0]
	cmp r1, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211CA94 ; =gSprButtonCtrl
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	movs r5, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xd0]
	mov r1, #0
	sub r0, r0, #2
	add r2, r0, r0, lsl #1
	mov r3, r1
	add r0, r5, #0x3a
	add r2, r2, #1
	bl FUN_ov16_0210e720
	mov r0, r5
	bl FUN_ov16_0210e69c
	ldmfd sp!, {r4, r5, r6, pc}
_0211CA94: .word gSprButtonCtrl
	arm_func_end FUN_ov23_0211c988

	arm_func_start FUN_ov23_0211ca98
FUN_ov23_0211ca98: ; 0x0211CA98
	stmfd sp!, {r3, lr}
	mov r12, r0
	ldrsb r3, [r12, #0xf6]
	ldrsb r2, [r12, #0xf7]
	ldr r0, [r12, #4]
	strb r1, [r12, #0xf9]
	strb r3, [r12, #0xfb]
	strb r2, [r12, #0xfc]
	ldr r2, [r0]
	add r1, r12, #0xf9
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov23_0211ca98

	arm_func_start FUN_ov23_0211cacc
FUN_ov23_0211cacc: ; 0x0211CACC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x58
	bl FUN_ov16_02110578
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov23_0211cacc

	arm_func_start FUN_ov23_0211caec
FUN_ov23_0211caec: ; 0x0211CAEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x58
	bl FUN_ov16_02110578
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov23_0211caec

	.rodata
	.global ov23_0211CB04
ov23_0211CB04:
	.byte 0x82, 0x50, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.global ov23_0211CB14
ov23_0211CB14:
	.byte 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00
	.global ov23_0211CB1C
ov23_0211CB1C:
	.byte 0x06, 0x00, 0x07, 0x00, 0x0E, 0x00, 0x0F, 0x00
	.global ov23_0211CB24
ov23_0211CB24:
	.byte 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00
	.byte 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00
	.global ov23_0211CB40
ov23_0211CB40:
	.byte 0xE8, 0xCC, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xD8, 0xCC, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x38, 0xCC, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x48, 0xCC, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x68, 0xCC, 0x11, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x78, 0xCC, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x98, 0xCC, 0x11, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0xA8, 0xCC, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0xB8, 0xCC, 0x11, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0xC8, 0xCC, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x58, 0xCC, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x88, 0xCC, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov23_0211cba8
FUN_ov23_0211cba8: ; 0x0211CBA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211CBF0 ; =0x0211CC20
	str r0, [r4, #0x14]
	ldr r0, _0211CBF4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _0211CBF8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CBF0: .word ov23_0211CC20
_0211CBF4: .word 0x00009CCD
_0211CBF8: .word 0x0000EA3C
	arm_func_end FUN_ov23_0211cba8

	.section .sinit, 4
ov23_0211CBFC:
	.word FUN_ov23_0211cba8

	.data
	.global ov23_0211CC20
ov23_0211CC20:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov23_0211CC38
ov23_0211CC38:
	.asciz "eldn_b02.pac_"
	.balign 4, 0
	.global ov23_0211CC48
ov23_0211CC48:
	.asciz "eldn_b04.pac_"
	.balign 4, 0
	.global ov23_0211CC58
ov23_0211CC58:
	.asciz "eldn_f01.pac_"
	.balign 4, 0
	.global ov23_0211CC68
ov23_0211CC68:
	.asciz "eldn_w01.pac_"
	.balign 4, 0
	.global ov23_0211CC78
ov23_0211CC78:
	.asciz "eldn_w00.pac_"
	.balign 4, 0
	.global ov23_0211CC88
ov23_0211CC88:
	.asciz "eldn_n00.pac_"
	.balign 4, 0
	.global ov23_0211CC98
ov23_0211CC98:
	.asciz "eldn_w02.pac_"
	.balign 4, 0
	.global ov23_0211CCA8
ov23_0211CCA8:
	.asciz "eldn_w03.pac_"
	.balign 4, 0
	.global ov23_0211CCB8
ov23_0211CCB8:
	.asciz "eldn_w04.pac_"
	.balign 4, 0
	.global ov23_0211CCC8
ov23_0211CCC8:
	.asciz "eldn_c00.pac_"
	.balign 4, 0
	.global ov23_0211CCD8
ov23_0211CCD8:
	.asciz "eldn_b01.pac_"
	.balign 4, 0
	.global ov23_0211CCE8
ov23_0211CCE8:
	.asciz "eldn_bg01.pac_"
	.balign 4, 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov23_0211CD00
ov23_0211CD00:
	.word FUN_ov23_0211caec
	.word FUN_ov23_0211cacc
	.word FUN_ov23_0211bf90
	.word FUN_ov23_0211c298
	.word FUN_ov23_0211b90c
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov23_0211ba54
	.word FUN_ov23_0211bf8c
	.word FUN_ov23_0211be88
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
	.global ov23_0211CD6C
ov23_0211CD6C:
	.asciz "/data_iz/logic/MLPass.bin"
	.balign 4, 0
	.global ov23_0211CD88
ov23_0211CD88:
	.asciz "J10.SAD"
	.balign 4, 0
	.global ov23_0211CD90
ov23_0211CD90: ; shift-jis string
	.byte 0x83, 0x7E, 0x83, 0x58, 0x83, 0x67, 0x83, 0x8C, 0x82, 0xCD, 0x0A, 0x82, 0xB7, 0x82, 0xC5, 0x82
	.byte 0xC9, 0x5B, 0x92, 0x87, 0x8A, 0xD4, 0x2F, 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x5D, 0x82, 0xC9
	.byte 0x82, 0xC8, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov23_0211CDC0
ov23_0211CDC0: ; shift-jis string
	.byte 0x83, 0x47, 0x83, 0x58, 0x83, 0x4A, 0x83, 0x6F, 0x82, 0xCD, 0x0A, 0x82, 0xB7, 0x82, 0xC5, 0x82
	.byte 0xC9, 0x5B, 0x92, 0x87, 0x8A, 0xD4, 0x2F, 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x5D, 0x82, 0xC9
	.byte 0x82, 0xC8, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov23_0211CDF0
ov23_0211CDF0: ; shift-jis string
	.byte 0x83, 0x53, 0x83, 0x62, 0x83, 0x68, 0x83, 0x4C, 0x83, 0x83, 0x83, 0x6D, 0x83, 0x93, 0x82, 0xAA
	.byte 0x81, 0x40, 0x82, 0xE0, 0x82, 0xE7, 0x82, 0xA6, 0x82, 0xE9, 0x82, 0xCC, 0x82, 0xCD, 0x0A, 0x82
	.byte 0x50, 0x5B, 0x93, 0x78, 0x2F, 0x82, 0xC7, 0x5D, 0x82, 0xBE, 0x82, 0xAF, 0x82, 0xC5, 0x82, 0xB7
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov23_0211CE24
ov23_0211CE24: ; shift-jis string
	.byte 0x5B, 0x8F, 0xE3, 0x89, 0xE6, 0x96, 0xCA, 0x2F, 0x82, 0xA4, 0x82, 0xA6
	.byte 0x82, 0xAA, 0x82, 0xDF, 0x82, 0xF1, 0x5D, 0x82, 0xCC, 0x5B, 0x8E, 0xBF, 0x96, 0xE2, 0x2F, 0x82
	.byte 0xB5, 0x82, 0xC2, 0x82, 0xE0, 0x82, 0xF1, 0x5D, 0x82, 0xC9, 0x81, 0x40, 0x82, 0xB1, 0x82, 0xBD
	.byte 0x82, 0xA6, 0x82, 0xE6, 0x82, 0xA4, 0x81, 0x49, 0x0A, 0x5B, 0x8E, 0xBF, 0x96, 0xE2, 0x2F, 0x82
	.byte 0xB5, 0x82, 0xC2, 0x82, 0xE0, 0x82, 0xF1, 0x5D, 0x82, 0xCD, 0x5B, 0x91, 0x53, 0x95, 0x94, 0x2F
	.byte 0x82, 0xBA, 0x82, 0xF1, 0x82, 0xD4, 0x5D, 0x82, 0xC5, 0x25, 0x73, 0x5B, 0x96, 0xE2, 0x2F, 0x82
	.byte 0xE0, 0x82, 0xF1, 0x5D, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov23_0211CE90
ov23_0211CE90: ; shift-jis string
	.byte 0x25, 0x73, 0x5B, 0x96, 0xE2, 0x90, 0xB3, 0x89, 0xF0, 0x2F, 0x82, 0xE0, 0x82, 0xF1, 0x82, 0xB9
	.byte 0x82, 0xA2, 0x82, 0xA9, 0x82, 0xA2, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x5B, 0x8E
	.byte 0x9F, 0x2F, 0x82, 0xC2, 0x82, 0xAC, 0x5D, 0x82, 0xCC, 0x5B, 0x8E, 0xBF, 0x96, 0xE2, 0x2F, 0x82
	.byte 0xB5, 0x82, 0xC2, 0x82, 0xE0, 0x82, 0xF1, 0x5D, 0x82, 0xC9, 0x82, 0xB7, 0x82, 0xB7, 0x82, 0xDD
	.byte 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov23_0211CED8
ov23_0211CED8: ; shift-jis string
	.byte 0x5B, 0x91, 0x53, 0x96, 0xE2, 0x90, 0xB3, 0x89
	.byte 0xF0, 0x2F, 0x82, 0xBA, 0x82, 0xF1, 0x82, 0xE0, 0x82, 0xF1, 0x82, 0xB9, 0x82, 0xA2, 0x82, 0xA9
	.byte 0x82, 0xA2, 0x5D, 0x81, 0x49, 0x0A, 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xBD, 0x82, 0xE7
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xA2, 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x82, 0xAA, 0x5B, 0x92, 0x87
	.byte 0x8A, 0xD4, 0x2F, 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x5D, 0x82, 0xC9, 0x82, 0xC8, 0x82, 0xE9
	.byte 0x82, 0xBC, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00
	.global ov23_0211CF28
ov23_0211CF28: ; shift-jis string
	.byte 0x5B, 0x91, 0x53, 0x96, 0xE2, 0x90, 0xB3, 0x89
	.byte 0xF0, 0x2F, 0x82, 0xBA, 0x82, 0xF1, 0x82, 0xE0, 0x82, 0xF1, 0x82, 0xB9, 0x82, 0xA2, 0x82, 0xA9
	.byte 0x82, 0xA2, 0x5D, 0x81, 0x49, 0x0A, 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xBD, 0x82, 0xE7
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xA2, 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x82, 0xAA, 0x5B, 0x92, 0x87
	.byte 0x8A, 0xD4, 0x2F, 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x5D, 0x82, 0xC9, 0x82, 0xC8, 0x82, 0xE9
	.byte 0x82, 0xBC, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00
	.global ov23_0211CF78
ov23_0211CF78: ; shift-jis string
	.byte 0x5B, 0x91, 0x53, 0x96, 0xE2, 0x90, 0xB3, 0x89
	.byte 0xF0, 0x2F, 0x82, 0xBA, 0x82, 0xF1, 0x82, 0xE0, 0x82, 0xF1, 0x82, 0xB9, 0x82, 0xA2, 0x82, 0xA9
	.byte 0x82, 0xA2, 0x5D, 0x81, 0x49, 0x0A, 0x83, 0x53, 0x83, 0x62, 0x83, 0x68, 0x83, 0x4C, 0x83, 0x83
	.byte 0x83, 0x6D, 0x83, 0x93, 0x82, 0xF0, 0x5B, 0x8E, 0xE8, 0x2F, 0x82, 0xC4, 0x5D, 0x82, 0xC9, 0x5B
	.byte 0x93, 0xFC, 0x2F, 0x82, 0xA2, 0x5D, 0x82, 0xEA, 0x82, 0xBD, 0x82, 0xBC, 0x81, 0x49, 0x00, 0x00
	.global ov23_0211CFC0
ov23_0211CFC0: ; shift-jis string
	.byte 0x82, 0xB1, 0x82, 0xBD, 0x82, 0xA6, 0x82, 0xAA, 0x81, 0x40, 0x82, 0xBF, 0x82, 0xAA, 0x82, 0xA2
	.byte 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov23_0211CFD8
ov23_0211CFD8: ; shift-jis string
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5
	.byte 0x82, 0xC4, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8
	.byte 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xE6
	.byte 0x82, 0xEB, 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov23_0211D010
ov23_0211D010: ; shift-jis string
	.byte 0x83, 0x53, 0x83, 0x62, 0x83, 0x68, 0x83, 0x4C, 0x83, 0x83, 0x83, 0x6D, 0x83, 0x93, 0x82, 0xF0
	.byte 0x82, 0xA0, 0x82, 0xAB, 0x82, 0xE7, 0x82, 0xDF, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48
	.byte 0x0A, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xC9, 0x82
	.byte 0xCD, 0x81, 0x40, 0x82, 0xD9, 0x82, 0xBC, 0x82, 0xF1, 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xDC, 0x82
	.byte 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov23_0211D058
ov23_0211D058:
	.asciz "/data_iz/pic3d/movielink.SPL"
	.balign 4, 0
	.global ov23_0211D078
ov23_0211D078:
	.asciz "/data_iz/pic3d/movielink.SPD"
	.balign 4, 0

	.bss
	.global ov23_0211D0A0
ov23_0211D0A0:
	.space 0x20

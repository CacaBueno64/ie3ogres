
	.include "/macros/function.inc"
	.include "/include/overlay82.inc"

	.text
	arm_func_start FUN_ov82_02119f00
FUN_ov82_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, #0
	mov r1, #0x37
	mov r0, #0xe
	str r1, [r6, #0x78]
	str r5, [r6, #0x7c]
	str r5, [r6, #0x80]
	str r5, [r6, #0x84]
	str r5, [r6, #0x88]
	str r0, [r6, #0x8c]
	mov r4, r5
	ldr r8, _02119FE4 ; =0x0209AEC0
	mvn r7, #0
	b _02119F58
_02119F3C:
	mov r0, r8
	bl FUN_02046730
	cmp r5, r0
	add r0, r6, r5, lsl #2
	streq r4, [r0, #0x90]
	strne r7, [r0, #0x90]
	add r5, r5, #1
_02119F58:
	cmp r5, #4
	blt _02119F3C
	mov r8, #0
	ldr r7, _02119FE4 ; =0x0209AEC0
	mvn r5, #0
	b _02119F8C
_02119F70:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r6, r8, lsl #2
	streq r4, [r0, #0xa0]
	strne r5, [r0, #0xa0]
	add r8, r8, #1
_02119F8C:
	cmp r8, #4
	blt _02119F70
	mov r1, #0
	b _02119FA8
_02119F9C:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0xb0]
	add r1, r1, #1
_02119FA8:
	cmp r1, #4
	blt _02119F9C
	mov r1, r4
	add r0, r6, #0xc4
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r2, _02119FE8 ; =0x0209A4E0
	strb r4, [r6, #0x424]
	mov r0, #0x37
	strb r0, [r2, #2]
	ldr r0, _02119FE4 ; =0x0209AEC0
	mov r1, #6
	strb r4, [r2, #3]
	bl FUN_02046cb4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02119FE4: .word unk_0209AEC0
_02119FE8: .word unk_0209A4E0
	arm_func_end FUN_ov82_02119f00

	arm_func_start FUN_ov82_02119fec
FUN_ov82_02119fec: ; 0x02119FEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0211A014 ; =0x0211FE80
	add r0, r4, #0x78
	bl FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov82_0211caf0
	ldmfd sp!, {r4, pc}
_0211A014: .word ov82_0211FE80
	arm_func_end FUN_ov82_02119fec

	arm_func_start FUN_ov82_0211a018
FUN_ov82_0211a018: ; 0x0211A018
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0211A040 ; =0x0211FE90
	add r0, r4, #0x78
	bl FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov82_0211c864
	ldmfd sp!, {r4, pc}
_0211A040: .word ov82_0211FE90
	arm_func_end FUN_ov82_0211a018

	arm_func_start FUN_ov82_0211a044
FUN_ov82_0211a044: ; 0x0211A044
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0211A08C ; =0x0211FE64
	add r0, r4, #0x78
	bl FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211A090 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213921c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A094 ; =0x0209BA20
	bl FUN_0204b23c
	mov r0, r4
	mov r1, #0xe
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, pc}
_0211A08C: .word ov82_0211FE64
_0211A090: .word unk_02099EF0
_0211A094: .word unk_0209BA20
	arm_func_end FUN_ov82_0211a044

	arm_func_start FUN_ov82_0211a098
FUN_ov82_0211a098: ; 0x0211A098
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r8, _0211A6D8 ; =0x0209AEC0
	mov r4, r0
	mov r0, r8
	mov r5, #0
	bl FUN_02046744
	str r0, [sp, #4]
	mov r0, r8
	bl FUN_02046730
	mov r7, r5
	str r0, [sp]
	mov r0, r7
	mov r1, r7
	bl FUN_ov16_020f0634
	ldrb r6, [r0, #3]
	mov r0, r7
	mov r1, r7
	bl FUN_ov16_020f0634
	ldrb r2, [r0, #2]
	ldr r0, [r4, #8]
	ldrb r1, [r8, #0x64]
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _0211A6CC
_0211A0FC: ; jump table
	b _0211A6CC ; case 0
	b _0211A6CC ; case 1
	b _0211A6CC ; case 2
	b _0211A6CC ; case 3
	b _0211A6CC ; case 4
	b _0211A150 ; case 5
	b _0211A174 ; case 6
	b _0211A6CC ; case 7
	b _0211A2EC ; case 8
	b _0211A6CC ; case 9
	b _0211A6CC ; case 10
	b _0211A6CC ; case 11
	b _0211A6CC ; case 12
	b _0211A6CC ; case 13
	b _0211A2EC ; case 14
	b _0211A6CC ; case 15
	b _0211A2EC ; case 16
	b _0211A6A0 ; case 17
	b _0211A1C8 ; case 18
	b _0211A218 ; case 19
	b _0211A238 ; case 20
_0211A150:
	mov r5, #6
	mov r1, r5
	mov r3, r7
	sub r2, r5, #7
	mov r0, #5
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A6CC
	b _0211A6C0
_0211A174:
	cmp r6, #0xc
	bne _0211A188
	mov r0, r4
	mov r1, #0xc
_0211A184:
	b _0211A6C8
_0211A188:
	cmp r6, #0xe
	cmpne r6, #0x10
	bne _0211A1A0
	mov r0, r4
	mov r1, #0xe
	b _0211A184
_0211A1A0:
	mov r0, #6
	sub r1, r0, #7
	mov r2, r1
	mov r3, r7
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A6CC
	mov r0, r4
	bl FUN_ov82_02119fec
	b _0211A6CC
_0211A1C8:
	cmp r1, #0
	bne _0211A1F0
	cmp r6, #0x15
	beq _0211A1E4
	ldr r0, [r4, #0x78]
	cmp r0, r2
	beq _0211A1F0
_0211A1E4:
	mov r0, r4
	bl FUN_ov82_0211c864
	b _0211A6CC
_0211A1F0:
	mov r0, #0x12
	sub r1, r0, #0x13
	mov r2, r1
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A6CC
	mov r0, r4
	bl FUN_ov82_0211a018
	b _0211A6CC
_0211A218:
	mov r5, #0x14
	mov r1, r5
	sub r2, r5, #0x15
	mov r0, #0x13
	bl FUN_ov1_020dba8c
	cmp r0, #0
	beq _0211A6CC
	b _0211A6C0
_0211A238:
	ldr r5, _0211A6DC ; =0x02099EF0
	mov r6, #1
	bl FUN_ov16_020f081c
	bl FUN_ov16_020f0920
	mov r1, r7
	mov r7, r0
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #0xe
	cmpne r0, #0x10
	beq _0211A270
	ldr r0, [sp, #4]
	tst r0, r6, lsl r7
	bne _0211A2C8
_0211A270:
	ldr r0, _0211A6E0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211A2A4
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _0211A2A4
	ldr r0, [r5]
	bl FUN_ov126_0213629c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r5]
	bl FUN_ov126_0213636c
_0211A2A4:
	ldr r0, [r5]
	bl FUN_ov126_0213921c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A6E4 ; =0x0209BA20
	bl FUN_0204b23c
	mov r0, r4
	mov r1, #4
	b _0211A184
_0211A2C8:
	mov r0, #0x14
	sub r1, r0, #0x15
	mov r2, r1
	bl FUN_ov1_020dba8c
	cmp r0, #0
	beq _0211A6CC
	mov r0, r4
	bl FUN_ov82_0211a044
	b _0211A6CC
_0211A2EC:
	mov r6, #1
	bl FUN_ov16_020f081c
	mov r1, #0xb
	ldr r2, [r4, #8]
	mul r8, r0, r1
	cmp r2, #0x10
	bne _0211A3B8
	b _0211A3B0
_0211A30C:
	ldr r0, [sp, #4]
	tst r0, r6, lsl r7
	ldrne r0, [sp]
	cmpne r0, r7
	beq _0211A3AC
	mov r0, r7
	mov r1, r5
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	ldr r1, [r4, #0x78]
	cmp r1, r0
	bne _0211A3AC
	add r0, r4, r7
	ldrb r0, [r0, #0x428]
	cmp r0, #0
	bne _0211A364
	mov r0, r7
	mov r1, r5
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #0x10
	beq _0211A38C
_0211A364:
	add r0, r4, r7
	ldrb r0, [r0, #0x428]
	cmp r0, #0
	beq _0211A3AC
	mov r0, r7
	mov r1, r5
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #0xe
	bne _0211A3AC
_0211A38C:
	strb r6, [r4, #0x38]
	add r0, r4, r7
	ldrb r0, [r0, #0x428]
	mov r1, r6
	cmp r0, #0
	movne r1, r5
	add r0, r4, r7
	strb r1, [r0, #0x428]
_0211A3AC:
	add r7, r7, #1
_0211A3B0:
	cmp r7, #4
	blt _0211A30C
_0211A3B8:
	mov r9, #0
	b _0211A560
_0211A3C0:
	ldr r0, [sp]
	cmp r9, r0
	beq _0211A55C
	ldr r1, [sp, #4]
	mov r0, #1
	tst r1, r0, lsl r9
	beq _0211A55C
	mov r0, r9
	mov r1, #0
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	ldr r1, [r4, #0x78]
	cmp r1, r0
	bne _0211A55C
	mov r0, r9
	mov r1, #0
	bl FUN_ov16_020f0634
	mov r5, r0
	ldrb r6, [r5, #3]
	cmp r6, #0x13
	bne _0211A434
	bl FUN_ov16_020f081c
	bl FUN_ov16_020f0920
	cmp r9, r0
	bne _0211A434
	mov r0, r4
	mov r1, #0x13
	bl FUN_ov82_0211bfc0
	b _0211A568
_0211A434:
	bl FUN_ov16_020f083c
	bl FUN_ov16_020f0920
	cmp r9, r0
	bne _0211A480
	cmp r6, #0xe
	beq _0211A454
	cmp r6, #0x10
	bne _0211A480
_0211A454:
	mov r7, #0
	add r10, r4, #0x34
	b _0211A478
_0211A460:
	add r0, r5, r7, lsl #1
	ldrh r2, [r0, #0x54]
	mov r1, r7
	add r0, r10, #0x400
	bl FUN_0204fb8c
	add r7, r7, #1
_0211A478:
	cmp r7, #0x10
	blt _0211A460
_0211A480:
	cmp r6, #0xe
	ldr r11, _0211A6DC ; =0x02099EF0
	bne _0211A55C
	mov r0, r9
	bl FUN_ov16_020f085c
	mov r6, r0
	bl FUN_ov16_020f081c
	cmp r6, r0
	bne _0211A55C
	mov r10, #0
	b _0211A554
_0211A4AC:
	ldr r0, [r11]
	add r1, r10, r8
	bl FUN_ov126_0213922c
	movs r7, r0
	ldrne r1, [r7, #0x84]
	cmpne r1, #0
	beq _0211A550
	bl FUN_0206d554
	cmp r9, r0
	bne _0211A550
	add r1, r5, r10, lsl #2
	ldrsh r0, [r1, #0x28]
	ldrsh r6, [r1, #0x2a]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211A500
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211A50C
_0211A500:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211A50C:
	bl _ffix
	ldr r1, [r7, #0x84]
	cmp r6, #0
	str r0, [r1]
	mov r0, r6, lsl #0xc
	ble _0211A538
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211A544
_0211A538:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211A544:
	bl _ffix
	ldr r1, [r7, #0x84]
	str r0, [r1, #4]
_0211A550:
	add r10, r10, #1
_0211A554:
	cmp r10, #0xb
	blt _0211A4AC
_0211A55C:
	add r9, r9, #1
_0211A560:
	cmp r9, #4
	blt _0211A3C0
_0211A568:
	ldr r7, _0211A6E8 ; =0x0211FEA0
	add r6, sp, #8
	ldmia r7!, {r0, r1, r2, r3}
	mov r5, r6
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldr r0, [r4, #8]
	cmp r0, #0x10
	bne _0211A6CC
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020db9bc
	cmp r0, #0
	beq _0211A6CC
	ldr r0, [r4, #0x430]
	sub r0, r0, #1
	str r0, [r4, #0x430]
	cmp r0, #0
	bgt _0211A6CC
	bl FUN_ov16_020f083c
	mov r5, r0
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211A644
	ldr r0, _0211A6DC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213629c
	ldr r0, _0211A6DC ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov126_0213636c
	ldr r0, _0211A6E4 ; =0x0209BA20
	mov r1, r5
	bl FUN_0205107c
	mov r6, r0
	mov r7, #0
	add r5, r4, #0x34
	b _0211A624
_0211A604:
	mov r1, r7
	add r0, r5, #0x400
	bl FUN_0204fbe8
	mov r2, r0
	mov r0, r6
	mov r1, r7
	bl FUN_0204fb8c
	add r7, r7, #1
_0211A624:
	cmp r7, #0x10
	blt _0211A604
	ldr r0, _0211A6DC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021363f4
	cmp r0, #0
	beq _0211A694
	b _0211A678
_0211A644:
	ldr r0, _0211A6E0 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0
	beq _0211A694
	ldr r0, _0211A6DC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213629c
	ldr r0, _0211A6DC ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov126_02135bfc
	cmp r0, #0
	beq _0211A694
_0211A678:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r0, r4
	mov r1, #0xb
	b _0211A184
_0211A694:
	mov r0, r4
	mov r1, #0x11
	b _0211A184
_0211A6A0:
	mov r5, #0xf
	mov r2, r5
	mov r0, #0x11
	mov r1, #0x12
	mov r3, #1
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A6CC
_0211A6C0:
	mov r0, r4
	mov r1, r5
_0211A6C8:
	bl FUN_ov82_0211bfc0
_0211A6CC:
	mov r0, #1
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A6D8: .word unk_0209AEC0
_0211A6DC: .word unk_02099EF0
_0211A6E0: .word unk_020A0640
_0211A6E4: .word unk_0209BA20
_0211A6E8: .word ov82_0211FEA0
	arm_func_end FUN_ov82_0211a098

	arm_func_start FUN_ov82_0211a6ec
FUN_ov82_0211a6ec: ; 0x0211A6EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #6
	bgt _0211A708
	beq _0211A734
	b _0211A834
_0211A708:
	sub r0, r0, #0xe
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211A834
_0211A718: ; jump table
	b _0211A76C ; case 0
	b _0211A834 ; case 1
	b _0211A76C ; case 2
	b _0211A834 ; case 3
	b _0211A754 ; case 4
	b _0211A834 ; case 5
	b _0211A760 ; case 6
_0211A734:
	ldr r0, _0211A848 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _0211A834
	add r0, r4, #0x78
	mov r1, #1
_0211A74C:
	bl FUN_ov1_020e6eac
	b _0211A834
_0211A754:
	add r0, r4, #0x78
	mov r1, #6
	b _0211A74C
_0211A760:
	add r0, r4, #0x78
	mov r1, #9
	b _0211A74C
_0211A76C:
	bl FUN_ov16_020f081c
	mov r1, #0xb
	ldr r2, _0211A84C ; =0x0209A4E0
	mov r3, #0x37
	strb r3, [r2, #2]
	ldr r3, [r4, #8]
	mul r5, r0, r1
	strb r3, [r2, #3]
	ldr r6, _0211A850 ; =0x0209A508
	mov r7, #0
	ldr r4, _0211A854 ; =0x02099EF0
	b _0211A7E8
_0211A79C:
	ldr r0, [r4]
	add r1, r7, r5
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrne r0, [r0, #0x84]
	cmpne r0, #0
	beq _0211A7E4
	ldmia r0, {r1, r2}
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r2, r0, asr #0xc
	mov r0, r7, lsl #2
	strh r2, [r6, r0]
	mov r1, r1, asr #0xc
	add r0, r6, r7, lsl #2
	strh r1, [r0, #2]
_0211A7E4:
	add r7, r7, #1
_0211A7E8:
	cmp r7, #0xb
	blt _0211A79C
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A858 ; =0x0209BA20
	bl FUN_0205107c
	mov r4, r0
	mov r5, #0
	b _0211A824
_0211A80C:
	mov r0, r4
	mov r1, r5
	bl FUN_0204fbe8
	add r1, r6, r5, lsl #1
	strh r0, [r1, #0x2c]
	add r5, r5, #1
_0211A824:
	cmp r5, #0x10
	blt _0211A80C
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A834:
	ldr r1, [r4, #8]
	add r0, r4, #0x78
	bl FUN_ov1_020e5328
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A848: .word unk_0209AEC0
_0211A84C: .word unk_0209A4E0
_0211A850: .word unk_0209A508
_0211A854: .word unk_02099EF0
_0211A858: .word unk_0209BA20
	arm_func_end FUN_ov82_0211a6ec

	arm_func_start FUN_ov82_0211a85c
FUN_ov82_0211a85c: ; 0x0211A85C
	ldr r0, [r0, #8]
	cmp r0, #2
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov82_0211a85c

	arm_func_start FUN_ov82_0211a870
FUN_ov82_0211a870: ; 0x0211A870
	ldr r0, [r0, #8]
	cmp r0, #2
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov82_0211a870

	arm_func_start FUN_ov82_0211a884
FUN_ov82_0211a884: ; 0x0211A884
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	bl FUN_02042054
	cmp r0, #0x41
	ldreq r0, [r5, #0x44]
	cmpeq r0, #3
	cmpeq r4, #2
	bne _0211A8C8
	mov r2, #4
	mov r0, r5
	mov r1, #1
	str r2, [r5, #0x44]
	bl FUN_ov82_0211a9b8
	mov r0, #0x5a
	strb r0, [r5, #0x65]
_0211A8C8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov82_0211a884

	arm_func_start FUN_ov82_0211a8d0
FUN_ov82_0211a8d0: ; 0x0211A8D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	ldr r1, [r10, #0x48]
	add r0, r10, #0x58
	cmp r1, #0
	add r8, r0, #0x400
	mov r9, #0
	addle sp, sp, #0x1c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #3
	mov r5, #1
	mov r11, #0x40
	mov r4, r9
_0211A908:
	add r0, r10, r9, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _0211A998
	ldr r0, [r8]
	cmp r0, #0
	ldrne r0, [r8, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211A998
	mov r0, r8
	bl FUN_ov16_020f2f20
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [r8, #4]
	add r3, r7, #0x1c
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, #0x10
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, _0211A9B4 ; =0x02099ED0
	str r4, [sp, #0x18]
	ldr r0, [r0]
	mov r1, r4
	ldr r7, [r0]
	mov r2, r5
	ldr r7, [r7, #8]
	blx r7
	ldr r0, [r8, #4]
	mov r1, #0x8000
	bl DC_FlushRange
_0211A998:
	ldr r0, [r10, #0x48]
	add r9, r9, #1
	cmp r9, r0
	add r8, r8, #0x14
	blt _0211A908
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A9B4: .word unk_02099ED0
	arm_func_end FUN_ov82_0211a8d0

	arm_func_start FUN_ov82_0211a9b8
FUN_ov82_0211a9b8: ; 0x0211A9B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r6, _0211ACA0 ; =0x020A3D14
	mov r10, r0
	mov r7, r1
	mov r5, #1
	mov r4, #0
_0211A9D4:
	mov r0, r6
	bl FUN_ov16_020f591c
	add r1, r10, r4
	add r4, r4, #1
	strb r0, [r1, #0x60]
	cmp r4, #5
	blt _0211A9D4
	cmp r7, #0
	mov r7, #0
	mov r3, #0x10
	bne _0211AB64
	ldrb r4, [r10, #0x60]
	mov r5, #0xa
	mov r0, r6
	str r5, [sp]
	add r5, r7, #1
	mov r1, r4
	mov r2, #0x20
	str r5, [sp, #4]
	mov r9, #0x23
	bl FUN_ov16_020f5964
	mov r8, #1
	mov r5, #0x10
_0211AA30:
	sub r0, r9, #5
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	mov r0, r6
	mov r1, r4
	mov r2, r9
	mov r3, r5
	str r8, [sp]
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #5
	blt _0211AA30
	ldr r0, [r10, #0x48]
	ldr r4, _0211ACA0 ; =0x020A3D14
	cmp r0, #0
	mov r11, #7
	mov r5, #1
	mov r7, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA80:
	ldr r0, [sp, #4]
	tst r7, #1
	add r1, r10, r0
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, _0211ACA4 ; =0x0211FE5D
	movne r9, #0x20
	mvneq r9, #7
	ldrb r8, [r1, #0x60]
	cmp r7, #2
	ldrb r6, [r0, r7]
	blt _0211AACC
	ldr r0, _0211ACA0 ; =0x020A3D14
	mov r1, #4
	str r1, [sp]
	mov r1, r8
	mov r2, r9
	mov r3, #7
	bl FUN_ov16_020f5964
_0211AACC:
	cmp r9, r6
	beq _0211AB30
_0211AAD4:
	mov r0, r4
	mov r1, r8
	str r5, [sp]
	mov r2, r9
	mov r3, r11
	bl FUN_ov16_020f5964
	cmp r7, #2
	bge _0211AB0C
	cmp r9, r6
	subgt r0, r9, #2
	movgt r0, r0, lsl #0x10
	movgt r9, r0, asr #0x10
	addle r0, r9, #2
	b _0211AB20
_0211AB0C:
	cmp r9, r6
	subgt r0, r9, #1
	movgt r0, r0, lsl #0x10
	movgt r9, r0, asr #0x10
	addle r0, r9, #1
_0211AB20:
	movle r0, r0, lsl #0x10
	movle r9, r0, asr #0x10
	cmp r9, r6
	bne _0211AAD4
_0211AB30:
	mov r3, #1
	ldr r0, _0211ACA0 ; =0x020A3D14
	mov r1, r8
	mov r2, r9
	str r3, [sp]
	mov r3, #7
	bl FUN_ov16_020f5964
	ldr r0, [r10, #0x48]
	add r7, r7, #1
	cmp r7, r0
	blt _0211AA80
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB64:
	ldrb r8, [r10, #0x60]
	mov r9, #0xa
	mov r4, #5
	str r4, [sp]
	add r4, r7, #1
	mov r0, r6
	mov r1, r8
	mov r2, r9
	str r4, [sp, #4]
	bl FUN_ov16_020f5964
	mov r4, #0x10
_0211AB90:
	sub r0, r9, #5
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	mov r0, r6
	mov r1, r8
	mov r2, r9
	mov r3, r4
	str r5, [sp]
	bl FUN_ov16_020f5964
	adds r0, r9, #0xc
	bpl _0211AB90
	ldr r0, [r10, #0x48]
	ldr r6, _0211ACA0 ; =0x020A3D14
	cmp r0, #0
	mov r5, #7
	mov r7, #1
	mov r11, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ABDC:
	ldr r0, [sp, #4]
	tst r11, #1
	add r1, r10, r0
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, _0211ACA4 ; =0x0211FE5D
	ldrb r8, [r1, #0x60]
	ldrb r9, [r0, r11]
	beq _0211AC38
	cmp r9, #0x20
	bge _0211AC70
_0211AC08:
	mov r0, r6
	str r7, [sp]
	mov r1, r8
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_020f5964
	add r0, r9, #6
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	cmp r9, #0x20
	blt _0211AC08
	b _0211AC70
_0211AC38:
	mvn r4, #7
	cmp r9, r4
	ble _0211AC70
_0211AC44:
	str r7, [sp]
	mov r0, r6
	mov r1, r8
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_020f5964
	sub r0, r9, #6
	mov r0, r0, lsl #0x10
	cmp r4, r0, asr #16
	mov r9, r0, asr #0x10
	blt _0211AC44
_0211AC70:
	mov r0, r6
	mov r1, r8
	mov r2, r9
	str r7, [sp]
	mov r3, r5
	bl FUN_ov16_020f5964
	ldr r0, [r10, #0x48]
	add r11, r11, #1
	cmp r11, r0
	blt _0211ABDC
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACA0: .word unk_020A3D14
_0211ACA4: .word ov82_0211FE5D
	arm_func_end FUN_ov82_0211a9b8

	arm_func_start FUN_ov82_0211aca8
FUN_ov82_0211aca8: ; 0x0211ACA8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r11, _0211B144 ; =0x0209F5C0
	mov r8, #0
	mov r10, r0
	mov r6, #1
	mov r0, r11
	mov r1, r8
	mov r2, r8
	str r6, [r10, #0x44]
	mov r5, #0x20
	bl FUN_ov16_020f5ff4
	ldr r1, [r10, #0x48]
	add r0, r10, #0x58
	cmp r1, #0
	add r7, r0, #0x400
	ble _0211AE7C
	add r4, sp, #0x14
_0211ACF0:
	add r0, r10, r8, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	movne r0, #0xc
	mlane r9, r8, r0, r10
	ldrne r2, [r9, #0x6ac]
	cmpne r2, #0
	beq _0211AE68
	ldr r1, [r2, #0xc]
	add r0, r8, #9
	strb r0, [sp, #0x24]
	mov r0, #0
	add r1, r2, r1
	strh r0, [sp, #0x16]
	mov r0, #8
	str r1, [sp, #0x28]
	strh r0, [sp, #0x18]
	strh r0, [sp, #0x1a]
	mov r0, #0
	strh r5, [sp, #0x14]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	stmia sp, {r0, r4}
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, r11
	mov r1, #0
	mov r2, r6
	add r3, r8, #0x25
	bl FUN_ov16_020f5c34
	ldr r2, [r7]
	mov r1, #0
	cmp r2, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r1, r6
	cmp r1, #0
	beq _0211ADF8
	mov r0, #0
	strh r0, [sp, #0x16]
	mov r0, #8
	strh r0, [sp, #0x18]
	mov r0, #2
	strh r0, [sp, #0x1a]
	mov r0, #0
	str r2, [sp, #0x28]
	strh r5, [sp, #0x14]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	strb r0, [sp, #0x24]
	stmia sp, {r0, r4}
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, r11
	mov r1, #0
	mov r2, r6
	add r3, r8, #0x29
	bl FUN_ov16_020f5c34
_0211ADF8:
	ldr r2, [r9, #0x67c]
	cmp r2, #0
	beq _0211AE68
	ldr r1, [r2, #0xc]
	add r0, r8, #5
	strb r0, [sp, #0x24]
	mov r0, #0
	add r1, r2, r1
	strh r0, [sp, #0x16]
	mov r0, #8
	str r1, [sp, #0x28]
	strh r0, [sp, #0x18]
	strh r0, [sp, #0x1a]
	mov r0, #0
	strh r5, [sp, #0x14]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	stmia sp, {r0, r4}
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, r11
	mov r1, #0
	mov r2, #2
	add r3, r8, #0x25
	bl FUN_ov16_020f5c34
_0211AE68:
	add r8, r8, #1
	add r7, r7, #0x14
	ldr r0, [r10, #0x48]
	cmp r8, r0
	blt _0211ACF0
_0211AE7C:
	ldr r2, [r10, #0x5bc]
	ldr r11, _0211B144 ; =0x0209F5C0
	cmp r2, #0
	add r4, sp, #0x14
	mov r6, #2
	mov r0, #8
	mov r9, #0x20
	mov r8, #0
	beq _0211AF1C
	ldr r1, [r2, #0xc]
	mov r5, #3
	add r1, r2, r1
	strh r0, [sp, #0x1a]
	str r1, [sp, #0x28]
	strh r9, [sp, #0x14]
	strh r8, [sp, #0x16]
	strh r9, [sp, #0x18]
	strh r8, [sp, #0x1c]
	strh r8, [sp, #0x1e]
	strh r8, [sp, #0x20]
	strh r8, [sp, #0x22]
	strb r6, [sp, #0x24]
	str r5, [sp]
	stmib sp, {r4, r8}
	str r8, [sp, #0xc]
	mov r0, r11
	mov r1, r8
	mov r2, r6
	str r8, [sp, #0x10]
	mov r3, #0x11
	bl FUN_ov16_020f5c34
	str r5, [sp]
	stmib sp, {r4, r8}
	str r8, [sp, #0xc]
	mov r0, r11
	mov r1, r8
	mov r2, r6
	mov r3, #0x12
	str r8, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211AF1C:
	ldr r2, [r10, #0x5c8]
	cmp r2, #0
	beq _0211AF88
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov r3, #0xc
	mov r2, #4
	mov r0, #3
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strh r9, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r0, [sp, #0x24]
	str r5, [sp, #0x28]
	stmia sp, {r0, r4}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211B144 ; =0x0209F5C0
	mov r2, #1
	mov r3, #0x13
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211AF88:
	ldr r9, [r10, #0x5d4]
	cmp r9, #0
	ldrne r0, [r10, #0x48]
	movne r8, #0
	cmpne r0, #0
	ble _0211B038
	mov r5, #0x20
	mov r4, #8
	mov r11, #1
	mov r6, r8
_0211AFB0:
	add r0, r10, r8, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, r6
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211B024
	ldr r1, [r9, #0xc]
	ldr r0, _0211B144 ; =0x0209F5C0
	add r1, r9, r1
	str r1, [sp, #0x28]
	mov r1, #4
	strb r1, [sp, #0x24]
	strh r5, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r4, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	str r6, [sp]
	add r1, sp, #0x14
	stmib sp, {r1, r6}
	str r6, [sp, #0xc]
	mov r1, r6
	mov r2, #2
	add r3, r8, #0x2d
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211B024:
	ldr r0, [r10, #0x48]
	add r8, r8, #1
	cmp r8, r0
	add r7, r7, #0x14
	blt _0211AFB0
_0211B038:
	ldr r9, [r10, #0x5e0]
	cmp r9, #0
	ldrne r0, [r10, #0x48]
	movne r8, #0
	cmpne r0, #0
	ble _0211B114
	mov r4, #0x20
	mov r11, #2
	mov r6, r8
_0211B05C:
	add r0, r10, r8, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r5, r0
	beq _0211B100
	add r0, r10, r8, lsl #1
	ldrh r1, [r0, #0x58]
	mov r0, r10
	bl FUN_ov82_0211b5f4
	cmp r0, #0
	bne _0211B100
	ldr r1, _0211B148 ; =0x021201DC
	mov r0, r5
	bl STD_CompareString
	cmp r0, #0
	beq _0211B100
	ldr r1, [r9, #0xc]
	ldr r0, _0211B144 ; =0x0209F5C0
	add r1, r9, r1
	str r1, [sp, #0x28]
	mov r1, #1
	strh r1, [sp, #0x1a]
	mov r1, #4
	strb r1, [sp, #0x24]
	strh r4, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r11, [sp, #0x18]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	str r6, [sp]
	add r1, sp, #0x14
	stmib sp, {r1, r6}
	str r6, [sp, #0xc]
	mov r1, r6
	mov r2, r6
	add r3, r8, #0x31
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211B100:
	ldr r0, [r10, #0x48]
	add r8, r8, #1
	cmp r8, r0
	add r7, r7, #0x14
	blt _0211B05C
_0211B114:
	mov r3, #0xe
	mov r4, #0x20
	mov r2, #0x40
	mov r0, r10
	mov r1, #0
	strh r4, [r10, #0x50]
	strh r3, [r10, #0x52]
	strh r2, [r10, #0x54]
	strh r3, [r10, #0x56]
	bl FUN_ov82_0211a9b8
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B144: .word unk_0209F5C0
_0211B148: .word ov82_021201DC
	arm_func_end FUN_ov82_0211aca8

	arm_func_start FUN_ov82_0211b14c
FUN_ov82_0211b14c: ; 0x0211B14C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	ldr r9, _0211B1B4 ; =0x0209F5C0
	mov r6, r0
	mov r4, #0x20
	mov r8, r5
	mvn r7, #0x1f
_0211B168:
	add r1, r6, r5, lsl #2
	ldrsh r0, [r1, #0x50]
	add r3, r6, r5, lsl #2
	sub r0, r0, #8
	strh r0, [r1, #0x50]
	ldrsh r0, [r1, #0x50]
	cmp r0, r7
	strleh r4, [r1, #0x50]
	ldrsh r2, [r3, #0x52]
	mov r0, r9
	mov r1, r8
	str r2, [sp]
	ldrsh r3, [r3, #0x50]
	add r2, r5, #0x11
	bl FUN_ov16_020f63f0
	add r5, r5, #1
	cmp r5, #2
	blt _0211B168
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B1B4: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211b14c

	arm_func_start FUN_ov82_0211b1b8
FUN_ov82_0211b1b8: ; 0x0211B1B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr r1, [r4, #0x44]
	mov r5, #1
	strb r5, [r4, #0x38]
	cmp r1, #5
	mov r6, #0
	addls pc, pc, r1, lsl #2
	b _0211B5E4
_0211B1E0: ; jump table
	b _0211B5E4 ; case 0
	b _0211B1F8 ; case 1
	b _0211B240 ; case 2
	b _0211B3C0 ; case 3
	b _0211B3CC ; case 4
	b _0211B5A8 ; case 5
_0211B1F8:
	bl FUN_ov82_0211be68
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #4]
	mov r1, #2
	str r1, [r4, #0x44]
	bl FUN_02042054
	cmp r0, #0x41
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B240:
	ldr r8, _0211B5EC ; =0x020A3D14
	mov r9, r6
	add r7, sp, #4
_0211B24C:
	add r0, r4, r9
	ldrb r1, [r0, #0x60]
	mov r0, r8
	bl FUN_ov16_020f5a04
	str r0, [r7, r9, lsl #2]
	cmp r0, #0
	add r9, r9, #1
	movne r5, r6
	cmp r9, #5
	blt _0211B24C
	cmp r5, #0
	movne r0, #3
	addne sp, sp, #0x18
	strne r0, [r4, #0x44]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r7, _0211B5F0 ; =0x0209F5C0
	mov r8, #0
	mov r5, #0x20
	mvn r9, #0x1f
_0211B298:
	add r1, r4, r8, lsl #2
	ldrsh r0, [r1, #0x50]
	add r3, r4, r8, lsl #2
	sub r0, r0, #8
	strh r0, [r1, #0x50]
	ldrsh r0, [r1, #0x50]
	cmp r0, r9
	strleh r5, [r1, #0x50]
	ldrsh r2, [r3, #0x52]
	mov r0, r7
	mov r1, r6
	str r2, [sp]
	ldrsh r3, [r3, #0x50]
	add r2, r8, #0x11
	bl FUN_ov16_020f63f0
	add r8, r8, #1
	cmp r8, #2
	blt _0211B298
	ldr r3, [sp, #4]
	mov r5, #0
	cmp r3, #0
	beq _0211B30C
	ldrsh r2, [r3, #2]
	mov r0, r7
	mov r1, r6
	str r2, [sp]
	ldrsh r3, [r3]
	mov r2, #0x13
	bl FUN_ov16_020f63f0
_0211B30C:
	ldr r0, [r4, #0x48]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, _0211B5F0 ; =0x0209F5C0
	add r11, sp, #4
_0211B328:
	add r0, r11, r7, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211B3A8
	ldrsh r9, [r0]
	ldrsh r8, [r0, #2]
	mov r0, r6
	mov r1, r5
	mov r3, r9
	add r2, r7, #0x25
	str r8, [sp]
	bl FUN_ov16_020f63f0
	add r10, r8, #7
	mov r0, r6
	mov r1, r5
	str r10, [sp]
	add r2, r7, #0x29
	mov r3, r9
	bl FUN_ov16_020f63f0
	str r10, [sp]
	mov r0, r6
	mov r1, r5
	add r2, r7, #0x2d
	mov r3, r9
	bl FUN_ov16_020f63f0
	add r0, r8, #6
	str r0, [sp]
	add r3, r9, #1
	mov r0, r6
	mov r1, r5
	add r2, r7, #0x31
	bl FUN_ov16_020f63f0
_0211B3A8:
	ldr r0, [r4, #0x48]
	add r7, r7, #1
	cmp r7, r0
	blt _0211B328
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B3C0:
	bl FUN_ov82_0211b14c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B3CC:
	ldrb r1, [r4, #0x65]
	cmp r1, #0
	beq _0211B3F4
	sub r1, r1, #1
	strb r1, [r4, #0x65]
	tst r1, #0xff
	beq _0211B3F4
	bl FUN_ov82_0211b14c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B3F4:
	ldr r7, _0211B5EC ; =0x020A3D14
	mov r10, #1
	mov r8, #0
	add r5, sp, #4
_0211B404:
	add r0, r4, r8
	ldrb r1, [r0, #0x60]
	mov r0, r7
	bl FUN_ov16_020f5a04
	str r0, [r5, r8, lsl #2]
	cmp r0, #0
	add r8, r8, #1
	movne r10, r6
	cmp r8, #5
	blt _0211B404
	cmp r10, #0
	beq _0211B464
	ldrsh r1, [r4, #0x50]
	mvn r0, #0x1f
	cmp r1, r0
	ldrlesh r1, [r4, #0x54]
	cmple r1, r0
	bgt _0211B464
	mov r1, #5
	mov r0, r4
	str r1, [r4, #0x44]
	bl FUN_ov82_0211beb0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B464:
	ldr r7, _0211B5F0 ; =0x0209F5C0
	mov r9, #0
	mov r5, #0x20
	mvn r8, #0x1f
_0211B474:
	add r1, r4, r9, lsl #2
	ldrsh r0, [r1, #0x50]
	sub r0, r0, #8
	strh r0, [r1, #0x50]
	ldrsh r0, [r1, #0x50]
	cmp r0, r8
	bgt _0211B49C
	cmp r10, #0
	strneh r8, [r1, #0x50]
	streqh r5, [r1, #0x50]
_0211B49C:
	add r3, r4, r9, lsl #2
	ldrsh r2, [r3, #0x52]
	mov r0, r7
	mov r1, r6
	str r2, [sp]
	ldrsh r3, [r3, #0x50]
	add r2, r9, #0x11
	bl FUN_ov16_020f63f0
	add r9, r9, #1
	cmp r9, #2
	blt _0211B474
	ldr r3, [sp, #4]
	mov r5, #0
	cmp r3, #0
	beq _0211B4F4
	ldrsh r2, [r3, #2]
	mov r0, r7
	mov r1, r6
	str r2, [sp]
	ldrsh r3, [r3]
	mov r2, #0x13
	bl FUN_ov16_020f63f0
_0211B4F4:
	ldr r0, [r4, #0x48]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, _0211B5F0 ; =0x0209F5C0
	add r11, sp, #4
_0211B510:
	add r0, r11, r7, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211B590
	ldrsh r9, [r0]
	ldrsh r8, [r0, #2]
	mov r0, r6
	mov r1, r5
	mov r3, r9
	add r2, r7, #0x25
	str r8, [sp]
	bl FUN_ov16_020f63f0
	add r10, r8, #7
	mov r0, r6
	mov r1, r5
	str r10, [sp]
	add r2, r7, #0x29
	mov r3, r9
	bl FUN_ov16_020f63f0
	str r10, [sp]
	mov r0, r6
	mov r1, r5
	add r2, r7, #0x2d
	mov r3, r9
	bl FUN_ov16_020f63f0
	add r0, r8, #6
	str r0, [sp]
	add r3, r9, #1
	mov r0, r6
	mov r1, r5
	add r2, r7, #0x31
	bl FUN_ov16_020f63f0
_0211B590:
	ldr r0, [r4, #0x48]
	add r7, r7, #1
	cmp r7, r0
	blt _0211B510
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B5A8:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov82_0211bec8
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov82_0211bef0
	mov r0, r4
	bl FUN_ov82_0211caf0
_0211B5E4:
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B5EC: .word unk_020A3D14
_0211B5F0: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211b1b8

	arm_func_start FUN_ov82_0211b5f4
FUN_ov82_0211b5f4: ; 0x0211B5F4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0211B688 ; =0x0209BA20
	mov r4, #0
	bl FUN_0204bc4c
	mov r5, r0
	ldr r0, _0211B68C ; =0x020A0C68
	mov r1, r5
	bl FUN_02050820
	cmp r0, #0
	mov r2, #1
	moveq r2, r4
	ldr r0, _0211B690 ; =0x020A0DB0
	mov r1, r5
	orr r4, r4, r2
	bl FUN_020508fc
	cmp r0, #0
	mov r2, #1
	moveq r2, #0
	ldr r0, _0211B694 ; =0x020A0EF8
	mov r1, r5
	orr r4, r4, r2, lsl #1
	bl FUN_02050bdc
	cmp r0, #0
	mov r2, #1
	moveq r2, #0
	ldr r0, _0211B698 ; =0x020A108A
	mov r1, r5
	orr r4, r4, r2, lsl #2
	bl FUN_020509d8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	orr r0, r4, r0, lsl #3
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0211B688: .word unk_0209BA20
_0211B68C: .word unk_020A0C68
_0211B690: .word unk_020A0DB0
_0211B694: .word unk_020A0EF8
_0211B698: .word unk_020A108A
	arm_func_end FUN_ov82_0211b5f4

	arm_func_start FUN_ov82_0211b69c
FUN_ov82_0211b69c: ; 0x0211B69C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0211B6E0 ; =0x0209AC44
	mov r4, #1
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl FUN_0202cf00
	ldr r2, _0211B6E4 ; =0x021201E8
	mov r0, r5
	mov r1, r4
	bl FUN_0202cdd4
	mov r0, r5
	add r1, r4, #0x4000
	bl FUN_0202cf6c
	mov r0, r6
	bl FUN_ov82_0211f2fc
	ldmfd sp!, {r4, r5, r6, pc}
_0211B6E0: .word unk_0209AC44
_0211B6E4: .word ov82_021201E8
	arm_func_end FUN_ov82_0211b69c

	arm_func_start FUN_ov82_0211b6e8
FUN_ov82_0211b6e8: ; 0x0211B6E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	ldrb r1, [r0, #0x3e]
	mov r8, #1
	str r0, [sp, #0x14]
	strb r8, [r0, #0x38]
	cmp r1, #0
	mov r7, #0xe
	add r5, sp, #0x18
	ldr r4, _0211BE40 ; =0x02099EF0
	mov r6, #6
	bne _0211BDBC
	ldr r0, _0211BE44 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	ldr r0, _0211BE44 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5a58
	ldr r0, [r4]
	bl FUN_ov126_021362e4
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #0x628]
	cmp r1, #0
	beq _0211B7BC
	ldr r0, [r1, #0xc]
	mov r2, #8
	add r0, r1, r0
	mov r1, #0x20
	strh r1, [sp, #0x1c]
	mov r1, #0
	strh r2, [sp, #0x1e]
	str r0, [sp, #0x2c]
	strh r1, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	strb r7, [sp, #0x28]
	str r6, [sp]
	str r5, [sp, #4]
	mov r0, r1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r5, r1
	ldr r0, _0211BE44 ; =0x0209F5C0
	mov r2, r8
	mov r3, #0x16
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211B7BC:
	ldr r0, [sp, #0x14]
	ldr r10, [r0, #0x634]
	cmp r10, #0
	beq _0211B85C
	ldr r0, [r4]
	mov r9, #0
	bl FUN_ov126_021362fc
	cmp r0, #0
	ble _0211B85C
	mov r8, #0x16
	mov r7, #2
	mov r6, #0xe
	mov r5, #6
	add r11, sp, #0x18
_0211B7F4:
	ldr r1, [r10, #0xc]
	ldr r0, _0211BE44 ; =0x0209F5C0
	add r1, r10, r1
	str r1, [sp, #0x2c]
	mov r1, #0
	strh r1, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strh r8, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	strb r6, [sp, #0x28]
	stmia sp, {r5, r11}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r2, #1
	add r3, r9, #0x17
	bl FUN_ov16_020f5c34
	ldr r0, [r4]
	add r9, r9, #1
	bl FUN_ov126_021362fc
	cmp r9, r0
	blt _0211B7F4
_0211B85C:
	ldr r0, [sp, #0x14]
	mov r5, #0xe
	ldr r2, [r0, #0x640]
	add r4, sp, #0x18
	cmp r2, #0
	ldr r7, _0211BE40 ; =0x02099EF0
	mov r8, #6
	mov r6, #0
	beq _0211B8E0
	ldr r0, [r2, #0xc]
	mov r1, r6
	add r2, r2, r0
	mov r0, #0x1c
	strh r0, [sp, #0x1c]
	mov r0, #3
	strh r0, [sp, #0x1e]
	str r2, [sp, #0x2c]
	strb r5, [sp, #0x28]
	strh r1, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	str r8, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211BE44 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0x15
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211B8E0:
	ldr r0, [r7]
	bl FUN_ov126_0213633c
	bl FUN_ov1_020dc150
	cmp r0, #0
	beq _0211B9A0
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #0x50c]
	add r0, r0, #0x10c
	add r7, r0, #0x400
	cmp r1, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [r7, #0x10]
	cmpne r0, #0
	beq _0211BA10
	mov r1, #0
	ldr r2, [r7]
	strb r1, [r7, #0x10]
	mov r0, #3
	strh r0, [sp, #0x1e]
	str r2, [sp, #0x2c]
	strh r5, [sp, #0x1c]
	strh r1, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	strb r1, [sp, #0x28]
	str r8, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211BE44 ; =0x0209F5C0
	mov r2, r1
	str r1, [sp, #0x10]
	mov r3, #0x14
	bl FUN_ov16_020f5c34
	ldrh r3, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldmib r7, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GX_LoadBG3Char
	b _0211BA10
_0211B9A0:
	ldr r0, [sp, #0x14]
	ldr r2, [r0, #0x64c]
	cmp r2, #0
	beq _0211BA10
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r3, r2, r0
	mov r2, #3
	mov r0, #0xd
	strh r2, [sp, #0x1e]
	strb r0, [sp, #0x28]
	str r3, [sp, #0x2c]
	strh r5, [sp, #0x1c]
	strh r1, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	str r8, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211BE44 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0x14
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211BA10:
	ldr r0, _0211BE40 ; =0x02099EF0
	add r11, sp, #0x18
	ldr r0, [r0]
	mov r9, #0
	bl FUN_ov126_021362fc
	cmp r0, #0
	ble _0211BB00
	ldr r0, [sp, #0x14]
	mov r5, #0x16
	add r0, r0, #0x58
	add r7, r0, #0x400
	mov r4, #2
_0211BA40:
	add r1, r9, #4
	mov r0, #0x14
	mul r0, r1, r0
	adds r10, r7, r0
	beq _0211BAE8
	ldr r0, [r10]
	cmp r0, #0
	ldrne r0, [r10, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, r6
	cmp r0, #0
	ldrneb r0, [r10, #0x10]
	cmpne r0, #0
	beq _0211BAE8
	strb r6, [r10, #0x10]
	ldr r1, [r10]
	ldr r0, _0211BE44 ; =0x0209F5C0
	str r1, [sp, #0x2c]
	strh r6, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r6, [sp, #0x26]
	strb r6, [sp, #0x28]
	stmia sp, {r8, r11}
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, r6
	mov r2, r6
	add r3, r9, #0x1c
	bl FUN_ov16_020f5c34
	ldrh r3, [r10, #0xc]
	ldrh r2, [r10, #0xe]
	ldmib r10, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GX_LoadBG3Char
_0211BAE8:
	ldr r0, _0211BE40 ; =0x02099EF0
	add r9, r9, #1
	ldr r0, [r0]
	bl FUN_ov126_021362fc
	cmp r9, r0
	blt _0211BA40
_0211BB00:
	ldr r6, _0211BE48 ; =0x020A3D14
	ldr r4, _0211BE4C ; =0x02120260
	mov r5, #1
	mov r7, #0
_0211BB10:
	mov r0, r6
	bl FUN_ov16_020f591c
	strb r0, [r4, r7]
	add r7, r7, #1
	cmp r7, #0xd
	blt _0211BB10
	ldr r0, _0211BE40 ; =0x02099EF0
	mov r10, #0
	ldr r0, [r0]
	bl FUN_ov126_021362fc
	cmp r0, #0
	ble _0211BBC0
	ldr r4, _0211BE50 ; =0x00000AAA
	mov r11, #0xe000
_0211BB48:
	ldr r0, _0211BE4C ; =0x02120260
	add r1, r10, #0x17
	ldrb r9, [r0, r10]
	ldr r0, _0211BE54 ; =0x02120270
	mov r8, #0x18000
	str r1, [r0, r10, lsl #2]
	mov r7, #0
_0211BB64:
	cmp r7, #0xe
	moveq r8, r11
	mov r3, r8, asr #0xb
	add r3, r8, r3, lsr #20
	mov r3, r3, asr #0xc
	add r3, r3, r10, lsl #1
	mov r3, r3, lsl #0x10
	mov r0, r6
	mov r1, r9
	mov r2, #5
	mov r3, r3, asr #0x10
	str r5, [sp]
	bl FUN_ov16_020f5964
	add r7, r7, #1
	sub r8, r8, r4
	cmp r7, #0xf
	blt _0211BB64
	ldr r0, _0211BE40 ; =0x02099EF0
	add r10, r10, #1
	ldr r0, [r0]
	bl FUN_ov126_021362fc
	cmp r10, r0
	blt _0211BB48
_0211BBC0:
	ldr r0, _0211BE40 ; =0x02099EF0
	ldr r11, _0211BE48 ; =0x020A3D14
	ldr r0, [r0]
	mov r5, #1
	mov r7, #0
	bl FUN_ov126_021362fc
	cmp r0, #0
	ble _0211BC6C
	ldr r4, _0211BE50 ; =0x00000AAA
	mov r6, #0xe000
_0211BBE8:
	ldr r0, _0211BE4C ; =0x02120260
	mov r8, #0x18000
	add r0, r0, r7
	ldrb r9, [r0, #5]
	add r0, r7, #0x1c
	and r1, r0, #0xff
	ldr r0, _0211BE54 ; =0x02120270
	mov r10, #0
	add r0, r0, r7, lsl #2
	str r1, [r0, #0x14]
_0211BC10:
	cmp r10, #0xe
	moveq r8, r6
	mov r3, r8, asr #0xb
	add r3, r8, r3, lsr #20
	mov r3, r3, asr #0xc
	add r3, r3, r7, lsl #1
	mov r3, r3, lsl #0x10
	mov r0, r11
	mov r1, r9
	mov r2, #5
	mov r3, r3, asr #0x10
	str r5, [sp]
	bl FUN_ov16_020f5964
	add r10, r10, #1
	sub r8, r8, r4
	cmp r10, #0xf
	blt _0211BC10
	ldr r0, _0211BE40 ; =0x02099EF0
	add r7, r7, #1
	ldr r0, [r0]
	bl FUN_ov126_021362fc
	cmp r7, r0
	blt _0211BBE8
_0211BC6C:
	ldr r0, _0211BE58 ; =0x02120260
	mov r8, #0x8000
	ldrb r9, [r0, #0xa]
	mov r1, #0x16
	mov r10, #0
	ldr r5, _0211BE48 ; =0x020A3D14
	str r1, [r0, #0x38]
	rsb r8, r8, #0
	mov r6, #1
	mov r7, #0x6000
	mov r4, r10
_0211BC98:
	cmp r10, #0xe
	moveq r8, r7
	mov r0, r8, asr #0xb
	add r0, r8, r0, lsr #20
	mov r2, r0, lsl #4
	mov r3, r2, asr #0x10
	mov r0, r5
	mov r1, r9
	mov r2, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r0, r8, #0xee
	add r10, r10, #1
	cmp r10, #0xf
	add r8, r0, #0xe00
	blt _0211BC98
	ldr r0, _0211BE58 ; =0x02120260
	mov r9, #0x7000
	ldrb r10, [r0, #0xb]
	mov r1, #0x15
	ldr r6, _0211BE48 ; =0x020A3D14
	str r1, [r0, #0x3c]
	rsb r9, r9, #0
	mov r7, #1
	mov r8, #0x7000
	mov r5, #2
_0211BD00:
	cmp r4, #0xe
	moveq r9, r8
	mov r0, r9, asr #0xb
	add r0, r9, r0, lsr #20
	mov r2, r0, lsl #4
	mov r3, r2, asr #0x10
	mov r0, r6
	mov r1, r10
	mov r2, r5
	str r7, [sp]
	bl FUN_ov16_020f5964
	add r0, r9, #0xee
	add r4, r4, #1
	cmp r4, #0xf
	add r9, r0, #0xe00
	blt _0211BD00
	ldr r0, _0211BE58 ; =0x02120260
	mov r8, #0x4000
	ldrb r9, [r0, #0xc]
	mov r1, #0x14
	ldr r5, _0211BE48 ; =0x020A3D14
	str r1, [r0, #0x40]
	rsb r8, r8, #0
	mov r6, #1
	mov r10, #0
	mov r7, #0xa000
	mov r4, #9
_0211BD6C:
	cmp r10, #0xe
	moveq r8, r7
	mov r0, r8, asr #0xb
	add r0, r8, r0, lsr #20
	mov r2, r0, lsl #4
	mov r3, r2, asr #0x10
	mov r0, r5
	mov r1, r9
	mov r2, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r0, r8, #0xee
	add r10, r10, #1
	cmp r10, #0xf
	add r8, r0, #0xe00
	blt _0211BD6C
	ldr r0, [sp, #0x14]
	mov r1, #0xf
	strb r6, [r0, #0x3e]
	strh r1, [r0, #0x3c]
_0211BDBC:
	mov r7, #0
	ldr r5, _0211BE54 ; =0x02120270
	ldr r6, _0211BE4C ; =0x02120260
	mov r4, r7
_0211BDCC:
	ldrb r1, [r6, r4]
	ldr r0, _0211BE48 ; =0x020A3D14
	bl FUN_ov16_020f5a04
	movs r3, r0
	addeq r0, r7, #1
	moveq r0, r0, lsl #0x10
	moveq r7, r0, asr #0x10
	beq _0211BE08
	ldrsh r2, [r3, #2]
	ldr r0, _0211BE44 ; =0x0209F5C0
	mov r1, #0
	str r2, [sp]
	ldrsh r3, [r3]
	ldr r2, [r5, r4, lsl #2]
	bl FUN_ov16_020f63f0
_0211BE08:
	add r4, r4, #1
	cmp r4, #0xd
	blt _0211BDCC
	cmp r7, #0xd
	addne sp, sp, #0x30
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x14]
	ldrsh r0, [r0, #0x3c]
	cmp r0, #0
	subgt r1, r0, #1
	ldrgt r0, [sp, #0x14]
	strgth r1, [r0, #0x3c]
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE40: .word unk_02099EF0
_0211BE44: .word unk_0209F5C0
_0211BE48: .word unk_020A3D14
_0211BE4C: .word ov82_02120260
_0211BE50: .word 0x00000AAA
_0211BE54: .word ov82_02120270
_0211BE58: .word ov82_02120260
	arm_func_end FUN_ov82_0211b6e8

	arm_func_start FUN_ov82_0211be5c
FUN_ov82_0211be5c: ; 0x0211BE5C
	mov r1, #8
	str r1, [r0, #0x4c]
	bx lr
	arm_func_end FUN_ov82_0211be5c

	arm_func_start FUN_ov82_0211be68
FUN_ov82_0211be68: ; 0x0211BE68
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov82_0211be68

	arm_func_start FUN_ov82_0211be7c
FUN_ov82_0211be7c: ; 0x0211BE7C
	ldr r1, [r0, #0x4c]
	ldr r12, _0211BEA8 ; =G2x_SetBlendBrightness_
	cmp r1, #0
	subgt r1, r1, #1
	strgt r1, [r0, #0x4c]
	mov r1, #1
	ldr r3, [r0, #0x4c]
	sub r2, r1, #9
	ldr r0, _0211BEAC ; =0x04000050
	sub r2, r2, r3
	bx r12
_0211BEA8: .word G2x_SetBlendBrightness_
_0211BEAC: .word 0x04000050
	arm_func_end FUN_ov82_0211be7c

	arm_func_start FUN_ov82_0211beb0
FUN_ov82_0211beb0: ; 0x0211BEB0
	mov r1, #8
	str r1, [r0, #0x4c]
	ldr r12, _0211BEC4 ; = FUN_ov16_020f1514
	mov r0, #6
	bx r12
_0211BEC4: .word FUN_ov16_020f1514
	arm_func_end FUN_ov82_0211beb0

	arm_func_start FUN_ov82_0211bec8
FUN_ov82_0211bec8: ; 0x0211BEC8
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov82_0211bec8

	arm_func_start FUN_ov82_0211bedc
FUN_ov82_0211bedc: ; 0x0211BEDC
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	subgt r1, r1, #1
	strgt r1, [r0, #0x4c]
	bx lr
	arm_func_end FUN_ov82_0211bedc

	arm_func_start FUN_ov82_0211bef0
FUN_ov82_0211bef0: ; 0x0211BEF0
	ldr r0, _0211BF04 ; =0x04000050
	ldr r12, _0211BF08 ; =G2x_SetBlendBrightness_
	mov r1, #1
	mov r2, #0
	bx r12
_0211BF04: .word 0x04000050
_0211BF08: .word G2x_SetBlendBrightness_
	arm_func_end FUN_ov82_0211bef0

	arm_func_start FUN_ov82_0211bf0c
FUN_ov82_0211bf0c: ; 0x0211BF0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r1, #0
	beq _0211BF48
	ldr r4, _0211BFB8 ; =0x02099EF0
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov132_02148ad8
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov132_02148ba4
	ldr r0, [r4]
	bl FUN_ov132_02148bac
	ldmfd sp!, {r3, r4, r5, pc}
_0211BF48:
	ldr r5, _0211BFB8 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r5]
	bl FUN_ov132_02148ad8
	ldr r0, [r5]
	mov r1, #1
	bl FUN_ov132_02148ba4
	ldr r3, _0211BFBC ; =0x0209A720
	ldr r1, [r3, #0xd4]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	sub r1, r0, #0x80
	str r1, [r4, #0x68]
	ldrsh r0, [r3, #0xc2]
	sub r2, r0, #0x60
	str r2, [r4, #0x6c]
	ldrsh r12, [r3, #0xc2]
	ldrsh r0, [r3, #0xbe]
	sub r0, r12, r0
	add r3, r0, #4
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [r4, #0x70]
	ldr r0, [r5]
	bl FUN_ov132_02148d74
	ldmfd sp!, {r3, r4, r5, pc}
_0211BFB8: .word unk_02099EF0
_0211BFBC: .word unk_0209A720
	arm_func_end FUN_ov82_0211bf0c

	arm_func_start FUN_ov82_0211bfc0
FUN_ov82_0211bfc0: ; 0x0211BFC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldr r10, [r9, #8]
	ldr r6, _0211C640 ; =0x0209AEC0
	ldr r4, _0211C644 ; =0x02099F14
	mvn r5, #0
	mov r8, #1
	mov r7, #0
	cmp r10, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r1, [r9, #8]
	cmp r1, #0x14
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BFF8: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 3
	b _0211C094 ; case 4
	b _0211C270 ; case 5
	b _0211C5E8 ; case 6
	b _0211C04C ; case 7
	b _0211C0C0 ; case 8
	b _0211C0C0 ; case 9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 10
	b _0211C094 ; case 11
	b _0211C148 ; case 12
	b _0211C1CC ; case 13
	b _0211C1DC ; case 14
	b _0211C338 ; case 15
	b _0211C348 ; case 16
	b _0211C41C ; case 17
	b _0211C5B4 ; case 18
	b _0211C4E4 ; case 19
	b _0211C614 ; case 20
_0211C04C:
	ldr r0, [r4]
	ldr r1, _0211C648 ; =0x00000269
	bl FUN_ov1_020e4304
	bl FUN_ov1_020db318
	cmp r0, #0
	mov r1, r8
	movne r1, r7
	mov r0, r9
	bl FUN_ov82_0211bf0c
	mov r0, r9
	bl FUN_ov82_0211aca8
	mov r0, r9
	bl FUN_ov82_0211be5c
	mov r0, r9
	mov r1, r8
	bl FUN_ov82_0211ecc0
	strb r8, [r9, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C094:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov1_020df110
	ldr r0, [r4]
	ldr r1, _0211C64C ; =0x00005A69
	mov r2, r8
	bl FUN_ov1_020df1dc
	ldr r0, [r4]
	str r8, [r0, #0x1e4]
	str r7, [r0, #0x208]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C0C0:
	ldr r1, [r0]
	ldr r5, _0211C650 ; =0x020E9482
	ldr r1, [r1, #0x44]
	blx r1
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldr r6, _0211C654 ; =0x0209F5C0
	mov r1, r7
	mov r0, r6
	bl FUN_ov16_020f5af0
	mov r0, r6
	mov r1, r7
	bl FUN_ov16_020f5a58
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e45b8
	ldr r0, [r4]
	ldr r1, _0211C648 ; =0x00000269
	bl FUN_ov1_020e4304
	mov r0, r9
	mov r1, r7
	bl FUN_ov82_0211ecc0
	mov r0, #0xf
	strh r0, [r9, #0x3c]
	ldr r0, [r9, #8]
	strb r8, [r9, #0x38]
	cmp r0, #8
	strb r7, [r9, #0x3e]
	mov r0, r9
	streqb r7, [r5]
	bl FUN_ov82_0211b69c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C148:
	ldr r0, [r4]
	ldr r1, _0211C648 ; =0x00000269
	bl FUN_ov1_020e4304
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e45b8
	ldr r2, _0211C658 ; =0x020EAAA8
	mov r0, r9
	ldr r3, [r2]
	mov r1, r7
	str r3, [r9, #0x74]
	mov r3, #3
	str r3, [r2]
	bl FUN_ov82_0211bf0c
	ldr r4, _0211C654 ; =0x0209F5C0
	mov r1, r7
	mov r0, r4
	bl FUN_ov16_020f5af0
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020f5a58
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r9
	mov r1, r7
	bl FUN_ov82_0211ecc0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C1CC:
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C1DC:
	ldr r0, [r4]
	ldr r1, _0211C648 ; =0x00000269
	ldr r5, _0211C650 ; =0x020E9482
	bl FUN_ov1_020e4304
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov1_020e45b8
	cmp r10, #0x10
	beq _0211C23C
	mov r0, r9
	mov r1, r8
	bl FUN_ov82_0211bf0c
	ldr r0, _0211C65C ; =0x02099EF0
	mov r1, r7
	ldr r0, [r0]
	bl FUN_ov132_02148ba4
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211C23C:
	ldr r4, _0211C654 ; =0x0209F5C0
	mov r1, r7
	mov r0, r4
	bl FUN_ov16_020f5af0
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020f5a58
	mov r0, r9
	mov r1, r7
	strb r8, [r9, #0x38]
	bl FUN_ov82_0211ecc0
	strb r7, [r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C270:
	mov r10, r7
	mov r1, #0x37
	mov r0, #0xe
	str r1, [r9, #0x78]
	str r10, [r9, #0x7c]
	str r10, [r9, #0x80]
	str r10, [r9, #0x84]
	str r10, [r9, #0x88]
	str r0, [r9, #0x8c]
	b _0211C2B4
_0211C298:
	mov r0, r6
	bl FUN_02046730
	cmp r10, r0
	add r0, r9, r10, lsl #2
	streq r7, [r0, #0x90]
	strne r5, [r0, #0x90]
	add r10, r10, #1
_0211C2B4:
	cmp r10, #4
	blt _0211C298
	mov r10, #0
	b _0211C2E0
_0211C2C4:
	mov r0, r6
	bl FUN_02046730
	cmp r10, r0
	add r0, r9, r10, lsl #2
	streq r7, [r0, #0xa0]
	strne r5, [r0, #0xa0]
	add r10, r10, #1
_0211C2E0:
	cmp r10, #4
	blt _0211C2C4
	mov r1, #0
	b _0211C2FC
_0211C2F0:
	add r0, r9, r1, lsl #2
	str r7, [r0, #0xb0]
	add r1, r1, #1
_0211C2FC:
	cmp r1, #4
	blt _0211C2F0
	mov r1, r7
	add r0, r9, #0xc4
	mov r2, #0x60
	bl MI_CpuFill8
	strb r7, [r9, #0x424]
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e4304
	mov r0, r9
	mov r1, r7
	strb r8, [r9, #0x38]
	bl FUN_ov82_0211ecc0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C338:
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C348:
	mov r10, r7
	mov r1, #0x37
	mov r0, #0xe
	str r1, [r9, #0x78]
	str r10, [r9, #0x7c]
	str r10, [r9, #0x80]
	str r10, [r9, #0x84]
	str r10, [r9, #0x88]
	str r0, [r9, #0x8c]
	ldr r4, _0211C650 ; =0x020E9482
	b _0211C390
_0211C374:
	mov r0, r6
	bl FUN_02046730
	cmp r10, r0
	add r0, r9, r10, lsl #2
	streq r7, [r0, #0x90]
	strne r5, [r0, #0x90]
	add r10, r10, #1
_0211C390:
	cmp r10, #4
	blt _0211C374
	mov r10, #0
	b _0211C3BC
_0211C3A0:
	mov r0, r6
	bl FUN_02046730
	cmp r10, r0
	add r0, r9, r10, lsl #2
	streq r7, [r0, #0xa0]
	strne r5, [r0, #0xa0]
	add r10, r10, #1
_0211C3BC:
	cmp r10, #4
	blt _0211C3A0
	mov r1, #0
	b _0211C3D8
_0211C3CC:
	add r0, r9, r1, lsl #2
	str r7, [r0, #0xb0]
	add r1, r1, #1
_0211C3D8:
	cmp r1, #4
	blt _0211C3CC
	mov r1, r7
	add r0, r9, #0xc4
	mov r2, #0x60
	bl MI_CpuFill8
	mov r2, #8
	mov r0, r9
	mov r1, r7
	strb r7, [r9, #0x424]
	strb r8, [r9, #0x38]
	strb r7, [r9, #0x3a]
	strb r7, [r9, #0x42c]
	str r2, [r9, #0x430]
	strb r7, [r4]
	bl FUN_ov82_0211ecc0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C41C:
	mov r10, r7
	mov r1, #0x37
	mov r0, #0xe
	str r1, [r9, #0x78]
	str r10, [r9, #0x7c]
	str r10, [r9, #0x80]
	str r10, [r9, #0x84]
	str r10, [r9, #0x88]
	str r0, [r9, #0x8c]
	ldr r4, _0211C650 ; =0x020E9482
	b _0211C464
_0211C448:
	mov r0, r6
	bl FUN_02046730
	cmp r10, r0
	add r0, r9, r10, lsl #2
	streq r7, [r0, #0x90]
	strne r5, [r0, #0x90]
	add r10, r10, #1
_0211C464:
	cmp r10, #4
	blt _0211C448
	mov r10, #0
	b _0211C490
_0211C474:
	mov r0, r6
	bl FUN_02046730
	cmp r10, r0
	add r0, r9, r10, lsl #2
	streq r7, [r0, #0xa0]
	strne r5, [r0, #0xa0]
	add r10, r10, #1
_0211C490:
	cmp r10, #4
	blt _0211C474
	mov r1, #0
	b _0211C4AC
_0211C4A0:
	add r0, r9, r1, lsl #2
	str r7, [r0, #0xb0]
	add r1, r1, #1
_0211C4AC:
	cmp r1, #4
	blt _0211C4A0
	mov r1, r7
	add r0, r9, #0xc4
	mov r2, #0x60
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r7
	strb r7, [r9, #0x424]
	strb r8, [r9, #0x38]
	strb r7, [r9, #0x42c]
	strb r7, [r4]
	bl FUN_ov82_0211ecc0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C4E4:
	mov r10, r7
	mov r1, #0x37
	mov r0, #0xe
	str r1, [r9, #0x78]
	str r10, [r9, #0x7c]
	str r10, [r9, #0x80]
	str r10, [r9, #0x84]
	str r10, [r9, #0x88]
	str r0, [r9, #0x8c]
	b _0211C528
_0211C50C:
	mov r0, r6
	bl FUN_02046730
	cmp r10, r0
	add r0, r9, r10, lsl #2
	streq r7, [r0, #0x90]
	strne r5, [r0, #0x90]
	add r10, r10, #1
_0211C528:
	cmp r10, #4
	blt _0211C50C
	ldr r11, _0211C650 ; =0x020E9482
	mov r10, #0
	b _0211C558
_0211C53C:
	mov r0, r6
	bl FUN_02046730
	cmp r10, r0
	add r0, r9, r10, lsl #2
	streq r7, [r0, #0xa0]
	strne r5, [r0, #0xa0]
	add r10, r10, #1
_0211C558:
	cmp r10, #4
	blt _0211C53C
	mov r1, #0
	b _0211C574
_0211C568:
	add r0, r9, r1, lsl #2
	str r7, [r0, #0xb0]
	add r1, r1, #1
_0211C574:
	cmp r1, #4
	blt _0211C568
	mov r1, r7
	add r0, r9, #0xc4
	mov r2, #0x60
	bl MI_CpuFill8
	strb r8, [r9, #0x424]
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e4304
	strb r8, [r9, #0x38]
	mov r0, r9
	mov r1, r7
	strb r7, [r11]
	bl FUN_ov82_0211ecc0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C5B4:
	ldr r2, _0211C650 ; =0x020E9482
	ldr r1, _0211C660 ; =0x0211FE90
	mov r0, r7
	strb r7, [r2]
	bl FUN_ov1_020e5634
	mov r1, r0
	add r0, r9, #0x78
	bl FUN_ov1_020e5030
	strb r8, [r9, #0x38]
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e4304
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C5E8:
	ldr r1, _0211C664 ; =0x0211FE80
	mov r0, r7
	bl FUN_ov1_020e5634
	mov r1, r0
	add r0, r9, #0x78
	bl FUN_ov1_020e5030
	strb r8, [r9, #0x38]
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e4304
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C614:
	ldr r1, _0211C668 ; =0x0211FE64
	mov r0, r7
	bl FUN_ov1_020e5634
	mov r1, r0
	add r0, r9, #0x78
	bl FUN_ov1_020e5030
	strb r8, [r9, #0x38]
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e4304
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C640: .word unk_0209AEC0
_0211C644: .word unk_02099F14
_0211C648: .word 0x00000269
_0211C64C: .word 0x00005A69
_0211C650: .word ov1_020E9482
_0211C654: .word unk_0209F5C0
_0211C658: .word ov1_020EAAA8
_0211C65C: .word unk_02099EF0
_0211C660: .word ov82_0211FE90
_0211C664: .word ov82_0211FE80
_0211C668: .word ov82_0211FE64
	arm_func_end FUN_ov82_0211bfc0

	arm_func_start FUN_ov82_0211c66c
FUN_ov82_0211c66c: ; 0x0211C66C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211C7E8 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov126_021362e4
	cmp r0, #0
	beq _0211C698
	mov r0, r4
	mov r1, #8
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C698:
	ldr r0, [r4, #8]
	cmp r0, #3
	cmpne r0, #0xa
	bne _0211C6CC
	ldr r5, _0211C7EC ; =0x0209AC44
	mov r1, #1
	mov r0, r5
	bl FUN_0202cf00
	mov r2, #0
	mov r0, r5
	mov r3, r2
	mov r1, #9
	bl FUN_0202b838
_0211C6CC:
	ldr r0, [r4, #8]
	cmp r0, #0xa
	mov r0, r4
	bne _0211C6E8
	mov r1, #0x11
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C6E8:
	bl FUN_ov82_0211cb3c
	cmp r0, #0
	beq _0211C788
	ldr r0, _0211C7F0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211C778
	ldr r5, _0211C7E8 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov126_0213921c
	bl FUN_ov16_020f081c
	ldr r6, _0211C7F4 ; =0x0209BA20
	mov r1, r0
	mov r0, r6
	bl FUN_0204b23c
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r6
	bl FUN_0207249c
	ldr r1, _0211C7F8 ; =0x020EAAB4
	ldrh r0, [r0, #0x22]
	ldrh r1, [r1]
	cmp r1, r0
	bne _0211C758
	ldr r0, [r5]
	bl FUN_ov126_021363ac
	cmp r0, #0
	beq _0211C768
_0211C758:
	mov r0, r4
	mov r1, #0x13
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C768:
	mov r0, r4
	mov r1, #0xe
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C778:
	mov r0, r4
	mov r1, #0xe
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C788:
	ldr r0, _0211C7F0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211C7C0
	ldr r0, [r4, #8]
	cmp r0, #3
	mov r0, r4
	bne _0211C7B4
	mov r1, #0xe
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C7B4:
	mov r1, #5
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C7C0:
	mov r0, r4
	bl FUN_ov82_0211cb5c
	cmp r0, #0
	mov r0, r4
	beq _0211C7E0
	mov r1, #7
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C7E0:
	bl FUN_ov82_0211caf0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C7E8: .word unk_02099EF0
_0211C7EC: .word unk_0209AC44
_0211C7F0: .word unk_020A0640
_0211C7F4: .word unk_0209BA20
_0211C7F8: .word ov1_020EAAB4
	arm_func_end FUN_ov82_0211c66c

	arm_func_start FUN_ov82_0211c7fc
FUN_ov82_0211c7fc: ; 0x0211C7FC
	stmfd sp!, {r3, lr}
	ldr r0, _0211C860 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_02134088
	add r0, r0, #4
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211C858
_0211C81C: ; jump table
	b _0211C850 ; case 0
	b _0211C848 ; case 1
	b _0211C840 ; case 2
	b _0211C838 ; case 3
	b _0211C830 ; case 4
_0211C830:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0211C838:
	mov r0, #0x21
	ldmfd sp!, {r3, pc}
_0211C840:
	mov r0, #0x22
	ldmfd sp!, {r3, pc}
_0211C848:
	mov r0, #0x23
	ldmfd sp!, {r3, pc}
_0211C850:
	mov r0, #0x23
	ldmfd sp!, {r3, pc}
_0211C858:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0211C860: .word unk_02099EF0
	arm_func_end FUN_ov82_0211c7fc

	arm_func_start FUN_ov82_0211c864
FUN_ov82_0211c864: ; 0x0211C864
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0x15
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0x15
	bl FUN_ov82_0211bfc0
	ldr r0, [r4, #4]
	bl FUN_02041fec
	bl FUN_ov1_020db3e0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r6, [r4, #4]
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r4, #0x38
	mov r2, r4
	bl FUN_02041eac
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldr r0, _0211C900 ; =0x020EAA94
	ldr r4, _0211C904 ; =0x02099EF0
	strb r5, [r0]
	ldr r0, [r4]
	bl FUN_ov126_0213921c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211C908 ; =0x0209BA20
	bl FUN_0204b23c
	ldr r0, [r4]
	bl FUN_ov126_0213502c
	ldr r0, [r4]
	bl FUN_01ff9c08
	ldmfd sp!, {r4, r5, r6, pc}
_0211C900: .word ov1_020EAA94
_0211C904: .word unk_02099EF0
_0211C908: .word unk_0209BA20
	arm_func_end FUN_ov82_0211c864

	arm_func_start FUN_ov82_0211c90c
FUN_ov82_0211c90c: ; 0x0211C90C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r1, [r8, #8]
	cmp r1, #0x15
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0x15
	bl FUN_ov82_0211bfc0
	bl FUN_ov16_020f081c
	ldr r4, _0211CA08 ; =0x0209A454
	mov r7, #1
	strb r7, [r4, #0x2e]
	strb r7, [r4, #0x2f]
	mov r5, #0
	strb r5, [r4, #0x30]
	strb r5, [r4, #0x31]
	strb r5, [r4, #0x32]
	strb r5, [r4, #0x33]
	strb r0, [r4, #0x28]
	ldr r6, _0211CA0C ; =0x0209BA20
	strb r5, [r4, #0x29]
	strb r5, [r4, #0x2a]
	mov r0, r6
	strb r5, [r4, #0x2b]
	bl FUN_020731a4
	strb r0, [r4, #0x30]
	strb r5, [r4, #0x31]
	strb r7, [r4, #0x33]
	ldr r4, _0211CA10 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov126_021355b4
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r8, [r8, #4]
	mov r1, r5
	mov r5, #0x5a
	mov r0, r8
	mov r2, r5
	bl FUN_02041ef0
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_02041ef0
	ldr r0, _0211CA14 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4]
	bl FUN_ov126_0213629c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov126_0213636c
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r6
	bl FUN_0207249c
	ldrh r1, [r0, #0x22]
	ldr r0, _0211CA18 ; =0x020EAAB4
	strh r1, [r0]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211CA08: .word unk_0209A454
_0211CA0C: .word unk_0209BA20
_0211CA10: .word unk_02099EF0
_0211CA14: .word unk_020A0640
_0211CA18: .word ov1_020EAAB4
	arm_func_end FUN_ov82_0211c90c

	arm_func_start FUN_ov82_0211ca1c
FUN_ov82_0211ca1c: ; 0x0211CA1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r1, [r9, #8]
	cmp r1, #0x15
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0x15
	bl FUN_ov82_0211bfc0
	ldr r0, _0211CADC ; =0x0209AC44
	ldr r1, _0211CAE0 ; =0x000005DC
	bl FUN_0202c470
	ldr r5, _0211CAE4 ; =0x020A0640
	mov r8, #1
	strb r8, [r5, #0x9d]
	bl FUN_ov16_020f081c
	ldr r7, _0211CAE8 ; =0x0209BA20
	mov r1, r0
	mov r0, r7
	bl FUN_020724c8
	mov r1, r0
	ldr r4, _0211CAEC ; =0x02099EF0
	mov r6, #0
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov132_0214609c
	strh r0, [r5, #0x9e]
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r7
	bl FUN_020724c8
	mov r1, r0
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov132_02146014
	strh r0, [r5, #0xa0]
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r5, [r9, #4]
	mov r1, r6
	mov r0, r5
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r5
	mov r2, r6
	mov r1, r8
	bl FUN_02041eac
	ldr r0, [r4]
	strb r8, [r0, #0x366]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CADC: .word unk_0209AC44
_0211CAE0: .word 0x000005DC
_0211CAE4: .word unk_020A0640
_0211CAE8: .word unk_0209BA20
_0211CAEC: .word unk_02099EF0
	arm_func_end FUN_ov82_0211ca1c

	arm_func_start FUN_ov82_0211caf0
FUN_ov82_0211caf0: ; 0x0211CAF0
	stmfd sp!, {r4, lr}
	ldr r1, _0211CB38 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov132_02144780
	cmp r0, #1
	bne _0211CB28
	bl FUN_ov1_020db318
	cmp r0, #0
	beq _0211CB28
	mov r0, r4
	mov r1, #0xc
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, pc}
_0211CB28:
	mov r0, r4
	mov r1, #0xe
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, pc}
_0211CB38: .word unk_02099EF0
	arm_func_end FUN_ov82_0211caf0

	arm_func_start FUN_ov82_0211cb3c
FUN_ov82_0211cb3c: ; 0x0211CB3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	bl FUN_0204204c
	mov r1, r0
	ldr r0, [r4, #4]
	bl FUN_02042110
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov82_0211cb3c

	arm_func_start FUN_ov82_0211cb5c
FUN_ov82_0211cb5c: ; 0x0211CB5C
	stmfd sp!, {r3, lr}
	bl FUN_ov1_020db2d8
	cmp r0, #0
	ldrne r0, _0211CB80 ; =0x020EAA94
	ldrneb r0, [r0]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0211CB80: .word ov1_020EAA94
	arm_func_end FUN_ov82_0211cb5c

	arm_func_start FUN_ov82_0211cb84
FUN_ov82_0211cb84: ; 0x0211CB84
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrb r0, [r5, #0x39]
	mov r4, r1
	mov r6, r2
	cmp r0, #0
	beq _0211CBC4
	ldr r0, _0211CD00 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	strb r0, [r5, #0x39]
_0211CBC4:
	ldr r0, [r5, #8]
	cmp r0, #0xe
	cmpne r0, #7
	beq _0211CBDC
	cmp r0, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211CBDC:
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #8]
	cmp r0, #7
	bne _0211CC1C
	tst r4, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x44]
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0x65]
	cmp r0, #1
	movhi r0, #1
	strhib r0, [r5, #0x65]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CC1C:
	tst r4, #8
	beq _0211CC68
	ldr r0, _0211CD04 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211CC68
	mov r7, #0
	ldr r0, _0211CD00 ; =0x0209A3E0
	mov r1, r7
	bl FUN_ov16_020fe47c
	cmp r0, #0
	beq _0211CC68
	mov r4, #1
	ldr r0, _0211CD08 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	strb r4, [r5, #0x39]
	strb r7, [r5, #0x14]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CC68:
	tst r4, #4
	beq _0211CC80
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
_0211CC80:
	ldr r0, _0211CD0C ; =0x00000CF3
	tst r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0211CD10 ; =0x0209A12C
	ldr r0, _0211CD14 ; =0x0209A140
	ldr r4, [r1]
	ldr r5, [r0]
	ldr r0, _0211CD10 ; =0x0209A12C
	tst r6, #0x11
	addne r4, r4, #8
	tst r6, #0x820
	subne r4, r4, #8
	tst r6, #0x440
	subne r5, r5, #8
	tst r6, #0x82
	ldr r0, [r0]
	addne r5, r5, #8
	cmp r4, r0
	ldreq r0, _0211CD14 ; =0x0209A140
	ldreq r0, [r0]
	cmpeq r5, r0
	beq _0211CCE8
	ldr r0, _0211CD18 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_02148ba4
_0211CCE8:
	ldr r0, _0211CD18 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	bl FUN_ov132_02148d74
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CD00: .word unk_0209A3E0
_0211CD04: .word unk_020A0640
_0211CD08: .word unk_0209AC44
_0211CD0C: .word 0x00000CF3
_0211CD10: .word unk_0209A12C
_0211CD14: .word unk_0209A140
_0211CD18: .word unk_02099EF0
	arm_func_end FUN_ov82_0211cb84

	arm_func_start FUN_ov82_0211cd1c
FUN_ov82_0211cd1c: ; 0x0211CD1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr r0, [r4, #8]
	mov r8, r1
	cmp r0, #0xe
	mov r7, r2
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldrb r0, [r4, #0x24]
	strlt r8, [r4, #0x28]
	strlt r7, [r4, #0x2c]
	cmp r0, #0
	bne _0211CE40
	ldr r0, [r4, #0x18]
	mov r1, #0
	str r1, [r4, #0x30]
	cmp r0, #0
	bge _0211CDA8
	ldr r0, _0211CF90 ; =0x0209F5C0
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_020f6b3c
	sub r1, r0, #1
	cmp r1, #2
	bhi _0211CDA8
	mov r2, #5
	mov r1, #1
	add sp, sp, #0x18
	str r2, [r4, #0x30]
	strb r1, [r4, #0x24]
	str r0, [r4, #0x34]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CDA8:
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	mov r0, r4
	bl FUN_ov82_0211d5cc
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #0x30]
	bne _0211CE38
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	mov r0, r4
	bl FUN_ov82_0211d61c
	cmp r0, #0
	movne r0, #3
	strne r0, [r4, #0x30]
	bne _0211CE38
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	mov r0, r4
	bl FUN_ov82_0211d66c
	cmp r0, #0
	movne r0, #4
	strne r0, [r4, #0x30]
	bne _0211CE38
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _0211CE38
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl FUN_ov1_020be6c8
	movs r9, r0
	bmi _0211CE38
	bl FUN_ov16_020f077c
	cmp r0, #0
	strne r9, [r4, #0x18]
_0211CE38:
	mov r0, #1
	strb r0, [r4, #0x24]
_0211CE40:
	ldr r1, [r4, #0x30]
	cmp r1, #2
	bne _0211CE64
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl FUN_ov82_0211d6bc
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CE64:
	cmp r1, #3
	bne _0211CE84
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl FUN_ov82_0211d81c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CE84:
	cmp r1, #4
	bne _0211CEA4
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl FUN_ov82_0211d97c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CEA4:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	blt _0211CF58
	bl FUN_ov16_020efa80
	movs r4, r0
	ldrne r0, [r4, #0x84]
	add r2, sp, #0x14
	ldmneia r0, {r5, r6}
	add r3, sp, #0x10
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020efd94 ; may be ov17
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r3, r0, #0xc000
	add r0, sp, #0xc
	str r3, [sp, #0x10]
	str r2, [sp, #0xc]
	str r3, [sp, #8]
	str r0, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	ldr r0, _0211CF94 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov126_02133c70
	cmp r0, #0
	beq _0211CF2C
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #0x84]
	str r1, [r0]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x84]
	str r1, [r0, #4]
_0211CF2C:
	ldr r0, _0211CF94 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov132_0213c074
	cmp r0, #0
	ldrne r0, [r4, #0x84]
	add sp, sp, #0x18
	strne r5, [r0]
	ldrne r0, [r4, #0x84]
	strne r6, [r0, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CF58:
	cmp r1, #5
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	ldr r0, _0211CF90 ; =0x0209F5C0
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_020f6b3c
	ldr r1, [r4, #0x34]
	cmp r0, r1
	strne r5, [r4, #0x34]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CF90: .word unk_0209F5C0
_0211CF94: .word unk_02099EF0
	arm_func_end FUN_ov82_0211cd1c

	arm_func_start FUN_ov82_0211cf98
FUN_ov82_0211cf98: ; 0x0211CF98
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	mov r3, r2
	cmp r0, #0
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211D0A4 ; =0x0209F5C0
	mov r2, r1
	mov r1, #0
	bl FUN_ov16_020f6b3c
	ldr r1, [r4, #0x34]
	cmp r0, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r0, #1
	beq _0211CFE8
	cmp r0, #2
	beq _0211D048
	cmp r0, #3
	beq _0211D08C
	ldmfd sp!, {r3, r4, r5, pc}
_0211CFE8:
	mov r0, r4
	bl FUN_ov82_0211c7fc
	movs r5, r0
	bne _0211D02C
	ldr r0, _0211D0A8 ; =0x0209AC44
	ldr r1, _0211D0AC ; =0x00004078
	bl FUN_0202cf6c
	ldr r0, _0211D0B0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r4
	beq _0211D024
	mov r1, #0x10
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r3, r4, r5, pc}
_0211D024:
	bl FUN_ov82_0211c864
	ldmfd sp!, {r3, r4, r5, pc}
_0211D02C:
	ldr r0, _0211D0A8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, r5
	bl FUN_ov82_0211de80
	ldmfd sp!, {r3, r4, r5, pc}
_0211D048:
	ldr r0, _0211D0B0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211D074
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _0211D074
	ldr r0, _0211D0A8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211D074:
	ldr r0, _0211D0A8 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov82_0211c90c
	ldmfd sp!, {r3, r4, r5, pc}
_0211D08C:
	ldr r0, _0211D0A8 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov82_0211ca1c
	ldmfd sp!, {r3, r4, r5, pc}
_0211D0A4: .word unk_0209F5C0
_0211D0A8: .word unk_0209AC44
_0211D0AC: .word 0x00004078
_0211D0B0: .word unk_020A0640
	arm_func_end FUN_ov82_0211cf98

	arm_func_start FUN_ov82_0211d0b4
FUN_ov82_0211d0b4: ; 0x0211D0B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	mov r3, r2
	cmp r0, #0
	ldmgefd sp!, {r4, pc}
	ldr r0, _0211D120 ; =0x0209F5C0
	mov r2, r1
	mov r1, #0
	bl FUN_ov16_020f6b3c
	cmp r0, #0xd
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov82_0211e338
	cmp r0, #0
	beq _0211D110
	ldr r0, _0211D124 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #0xe
	bl FUN_ov82_0211bfc0
	ldmfd sp!, {r4, pc}
_0211D110:
	ldr r0, _0211D124 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211D120: .word unk_0209F5C0
_0211D124: .word unk_0209AC44
	arm_func_end FUN_ov82_0211d0b4

	arm_func_start FUN_ov82_0211d128
FUN_ov82_0211d128: ; 0x0211D128
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x39]
	mov r5, r1
	mov r4, #0
	mov r1, #1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D340 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, r1
	moveq r0, r4
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #8]
	cmp r2, #0xe
	cmpne r2, #0xc
	cmpne r2, #7
	cmpne r2, #0x10
	cmpne r2, #8
	beq _0211D188
	cmp r2, #9
	ldmnefd sp!, {r4, r5, r6, pc}
_0211D188:
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _0211D1F0
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	bne _0211D1CC
	sub r0, r1, #2
	strb r1, [r6, #0x14]
	str r0, [r6, #0x18]
	strb r4, [r6, #0x24]
	str r4, [r6, #0x30]
	str r0, [r6, #0x28]
	str r0, [r6, #0x2c]
	str r4, [r6, #0x34]
_0211D1CC:
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r6
	bl FUN_ov82_0211cd1c
	ldrh r0, [r5]
	str r0, [r6, #0x1c]
	ldrh r0, [r5, #2]
	str r0, [r6, #0x20]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D1F0:
	ldrb r0, [r6, #0x24]
	cmp r0, #0
	beq _0211D224
	ldr r0, [r6, #0x30]
	cmp r0, #5
	cmpeq r2, #0xe
	beq _0211D224
	sub r0, r4, #1
	strb r4, [r6, #0x24]
	str r4, [r6, #0x30]
	str r0, [r6, #0x28]
	str r0, [r6, #0x2c]
	b _0211D330
_0211D224:
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0211D330
	cmp r2, #0x10
	addls pc, pc, r2, lsl #2
	b _0211D330
_0211D23C: ; jump table
	b _0211D330 ; case 0
	b _0211D330 ; case 1
	b _0211D330 ; case 2
	b _0211D330 ; case 3
	b _0211D330 ; case 4
	b _0211D330 ; case 5
	b _0211D330 ; case 6
	b _0211D2B4 ; case 7
	b _0211D2D0 ; case 8
	b _0211D300 ; case 9
	b _0211D330 ; case 10
	b _0211D330 ; case 11
	b _0211D2A8 ; case 12
	b _0211D330 ; case 13
	b _0211D280 ; case 14
	b _0211D330 ; case 15
	b _0211D294 ; case 16
_0211D280:
	ldr r1, [r6, #0x1c]
	ldr r2, [r6, #0x20]
	mov r0, r6
	bl FUN_ov82_0211cf98
	b _0211D330
_0211D294:
	ldr r1, [r6, #0x1c]
	ldr r2, [r6, #0x20]
	mov r0, r6
	bl FUN_ov82_0211d0b4
	b _0211D330
_0211D2A8:
	mov r0, r6
	mov r1, #0xd
	b _0211D32C
_0211D2B4:
	ldr r0, [r6, #0x44]
	cmp r0, #4
	bne _0211D330
	ldrb r0, [r6, #0x65]
	cmp r0, #1
	strhib r1, [r6, #0x65]
	b _0211D330
_0211D2D0:
	ldrsh r0, [r6, #0x3c]
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
	cmp r0, #0
	beq _0211D330
	ldr r0, _0211D344 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213629c
	mov r0, r6
	mov r1, #3
	b _0211D32C
_0211D300:
	ldrsh r0, [r6, #0x3c]
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
	cmp r0, #0
	beq _0211D330
	ldr r0, _0211D344 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213629c
	mov r0, r6
	mov r1, #0xa
_0211D32C:
	bl FUN_ov82_0211bfc0
_0211D330:
	sub r0, r4, #1
	strb r4, [r6, #0x14]
	str r0, [r6, #0x18]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D340: .word unk_0209A3E0
_0211D344: .word unk_02099EF0
	arm_func_end FUN_ov82_0211d128

	arm_func_start FUN_ov82_0211d348
FUN_ov82_0211d348: ; 0x0211D348
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	bl FUN_ov1_020db338
	cmp r0, #0
	mov r1, #0x800
	beq _0211D378
	ldr r0, _0211D400 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4354
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211D378:
	ldr r0, _0211D400 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x3f]
	ldr r0, _0211D404 ; =0x020EAAF0
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #7
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211D408 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0xe
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211D400: .word unk_02099F14
_0211D404: .word ov1_020EAAF0
_0211D408: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211d348

	arm_func_start FUN_ov82_0211d40c
FUN_ov82_0211d40c: ; 0x0211D40C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r1, _0211D4DC ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov132_02145ff0
	cmp r0, #0
	beq _0211D438
	bl FUN_ov1_020db338
	cmp r0, #0
	beq _0211D450
_0211D438:
	ldr r0, _0211D4E0 ; =0x02099F14
	mov r1, #0x1000
	ldr r0, [r0]
	bl FUN_ov1_020e4354
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211D450:
	ldr r0, _0211D4E0 ; =0x02099F14
	mov r1, #0x1000
	ldr r0, [r0]
	bl FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x40]
	ldr r0, _0211D4E4 ; =0x020EAAEC
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #7
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211D4E8 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0xf
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211D4DC: .word unk_02099EF0
_0211D4E0: .word unk_02099F14
_0211D4E4: .word ov1_020EAAEC
_0211D4E8: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211d40c

	arm_func_start FUN_ov82_0211d4ec
FUN_ov82_0211d4ec: ; 0x0211D4EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r1, _0211D5BC ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov132_02145ff0
	cmp r0, #0
	beq _0211D518
	bl FUN_ov1_020db338
	cmp r0, #0
	beq _0211D530
_0211D518:
	ldr r0, _0211D5C0 ; =0x02099F14
	mov r1, #0x1000
	ldr r0, [r0]
	bl FUN_ov1_020e4354
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211D530:
	ldr r0, _0211D5C0 ; =0x02099F14
	mov r1, #0x4000
	ldr r0, [r0]
	bl FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x41]
	ldr r0, _0211D5C4 ; =0x020EAAE8
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #7
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211D5C8 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0x10
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211D5BC: .word unk_02099EF0
_0211D5C0: .word unk_02099F14
_0211D5C4: .word ov1_020EAAE8
_0211D5C8: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211d4ec

	arm_func_start FUN_ov82_0211d5cc
FUN_ov82_0211d5cc: ; 0x0211D5CC
	ldrb r0, [r0, #0x3f]
	cmp r0, #0
	beq _0211D610
	ldr r0, _0211D618 ; =0x020EAAF0
	ldrsh r3, [r0]
	cmp r1, r3
	blt _0211D610
	add r3, r3, #0x18
	cmp r1, r3
	bge _0211D610
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _0211D610
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_0211D610:
	mov r0, #0
	bx lr
_0211D618: .word ov1_020EAAF0
	arm_func_end FUN_ov82_0211d5cc

	arm_func_start FUN_ov82_0211d61c
FUN_ov82_0211d61c: ; 0x0211D61C
	ldrb r0, [r0, #0x40]
	cmp r0, #0
	beq _0211D660
	ldr r0, _0211D668 ; =0x020EAAEC
	ldrsh r3, [r0]
	cmp r1, r3
	blt _0211D660
	add r3, r3, #0x18
	cmp r1, r3
	bge _0211D660
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _0211D660
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_0211D660:
	mov r0, #0
	bx lr
_0211D668: .word ov1_020EAAEC
	arm_func_end FUN_ov82_0211d61c

	arm_func_start FUN_ov82_0211d66c
FUN_ov82_0211d66c: ; 0x0211D66C
	ldrb r0, [r0, #0x41]
	cmp r0, #0
	beq _0211D6B0
	ldr r0, _0211D6B8 ; =0x020EAAE8
	ldrsh r3, [r0]
	cmp r1, r3
	blt _0211D6B0
	add r3, r3, #0x18
	cmp r1, r3
	bge _0211D6B0
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _0211D6B0
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_0211D6B0:
	mov r0, #0
	bx lr
_0211D6B8: .word ov1_020EAAE8
	arm_func_end FUN_ov82_0211d66c

	arm_func_start FUN_ov82_0211d6bc
FUN_ov82_0211d6bc: ; 0x0211D6BC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x3f]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x28]
	subs r5, r5, #0xc
	str r4, [r6, #0x2c]
	movmi r5, #0
	cmp r5, #0xe8
	ldrb r0, [r6, #0x40]
	sub r4, r4, #0xc
	movgt r5, #0xe8
	cmp r4, #0
	movlt r4, #0
	cmp r4, #0xa8
	movgt r4, #0xa8
	cmp r0, #0
	beq _0211D7B8
	ldr r0, _0211D80C ; =0x020EAAEC
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	sub r12, sp, #4
	ldr r0, _0211D810 ; =0x020EAAE8
	strh r2, [r12]
	strh r1, [r12, #2]
	ldrh r3, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r12]
	add r1, sp, #0xc
	strh r3, [r12]
	strh r0, [r12, #2]
	ldr r3, [r12]
	mov r0, r6
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _0211D810 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _0211D80C ; =0x020EAAEC
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldrne r5, [sp, #0xc]
	ldrne r4, [sp, #0x10]
_0211D7B8:
	ldr r1, _0211D814 ; =0x020EAAF0
	mov r0, r5, lsl #0x10
	ldrsh r2, [r1]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211D814 ; =0x020EAAF0
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _0211D818 ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0xe
	str r6, [sp, #8]
	bl FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211D80C: .word ov1_020EAAEC
_0211D810: .word ov1_020EAAE8
_0211D814: .word ov1_020EAAF0
_0211D818: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211d6bc

	arm_func_start FUN_ov82_0211d81c
FUN_ov82_0211d81c: ; 0x0211D81C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x3f]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x28]
	sub r5, r5, #0xc
	cmp r5, #0xe8
	str r4, [r6, #0x2c]
	movgt r5, #0xe8
	bgt _0211D860
	cmp r5, #0
	movlt r5, #0
_0211D860:
	sub r4, r4, #0xc
	cmp r4, #0xa8
	movgt r4, #0xa8
	bgt _0211D878
	cmp r4, #0
	movlt r4, #0
_0211D878:
	ldr r0, _0211D96C ; =0x020EAAF0
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	sub r12, sp, #4
	ldr r0, _0211D970 ; =0x020EAAE8
	strh r2, [r12]
	strh r1, [r12, #2]
	ldrh r3, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r12]
	add r1, sp, #0xc
	strh r3, [r12]
	strh r0, [r12, #2]
	ldr r3, [r12]
	mov r0, r6
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _0211D970 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _0211D96C ; =0x020EAAF0
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r1, _0211D974 ; =0x020EAAEC
	ldrne r5, [sp, #0xc]
	ldrsh r2, [r1]
	mov r0, r5, lsl #0x10
	ldrne r4, [sp, #0x10]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211D974 ; =0x020EAAEC
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _0211D978 ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0xf
	str r6, [sp, #8]
	bl FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211D96C: .word ov1_020EAAF0
_0211D970: .word ov1_020EAAE8
_0211D974: .word ov1_020EAAEC
_0211D978: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211d81c

	arm_func_start FUN_ov82_0211d97c
FUN_ov82_0211d97c: ; 0x0211D97C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x3f]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x28]
	sub r5, r5, #0xc
	cmp r5, #0xe8
	str r4, [r6, #0x2c]
	movgt r5, #0xe8
	bgt _0211D9C0
	cmp r5, #0
	movlt r5, #0
_0211D9C0:
	sub r4, r4, #0xc
	cmp r4, #0xa8
	movgt r4, #0xa8
	bgt _0211D9D8
	cmp r4, #0
	movlt r4, #0
_0211D9D8:
	ldr r0, _0211DACC ; =0x020EAAF0
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	sub r12, sp, #4
	ldr r0, _0211DAD0 ; =0x020EAAEC
	strh r2, [r12]
	strh r1, [r12, #2]
	ldrh r3, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r12]
	add r1, sp, #0xc
	strh r3, [r12]
	strh r0, [r12, #2]
	ldr r3, [r12]
	mov r0, r6
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _0211DAD0 ; =0x020EAAEC
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _0211DACC ; =0x020EAAF0
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r1, _0211DAD4 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrsh r2, [r1]
	mov r0, r5, lsl #0x10
	ldrne r4, [sp, #0x10]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211DAD4 ; =0x020EAAE8
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _0211DAD8 ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0x10
	str r6, [sp, #8]
	bl FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211DACC: .word ov1_020EAAF0
_0211DAD0: .word ov1_020EAAEC
_0211DAD4: .word ov1_020EAAE8
_0211DAD8: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211d97c

	arm_func_start FUN_ov82_0211dadc
FUN_ov82_0211dadc: ; 0x0211DADC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r11, _0211DE74 ; =0x0209F5C0
	mov r7, #0
	mov r10, r0
	mov r0, r11
	mov r1, r7
	mov r5, #4
	add r4, sp, #0x14
	mov r6, #1
	bl FUN_ov16_020f5af0
	mov r0, r11
	mov r1, r7
	bl FUN_ov16_020f5a58
	ldr r9, [r10, #0x52c]
	cmp r9, #0
	beq _0211DCB8
	bl FUN_ov1_020db3cc
	movs r8, r0
	beq _0211DB94
	ldr r0, [r9, #0xc]
	mov r1, #0x14
	strh r1, [sp, #0x16]
	mov r1, #8
	add r0, r9, r0
	strh r1, [sp, #0x18]
	mov r1, #0x40
	add r0, r0, #0xc0
	strh r1, [sp, #0x20]
	mov r1, #0x20
	mov r2, #2
	strh r1, [sp, #0x22]
	str r0, [sp, #0x28]
	strh r5, [sp, #0x1a]
	strh r6, [sp, #0x14]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r2, [sp, #0x24]
	str r6, [sp]
	stmib sp, {r4, r7}
	str r7, [sp, #0xc]
	mov r0, r11
	mov r1, r7
	mov r3, #3
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211DB94:
	ldr r0, _0211DE78 ; =0x020A0640
	ldr r1, [r9, #0xc]
	ldr r0, [r0]
	add r3, r9, r1
	cmp r0, #0
	addne r3, r3, #0x40
	mov r1, #0
	mov r2, #8
	mov r11, #0x14
	mov r7, #0x40
	strh r2, [sp, #0x18]
	mov r2, #2
	str r3, [sp, #0x28]
	mov r0, #0xc
	cmp r8, #0
	moveq r0, #5
	strh r0, [sp, #0x14]
	mov r0, #0x20
	strh r0, [sp, #0x22]
	strh r11, [sp, #0x16]
	strh r7, [sp, #0x20]
	strh r5, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strb r2, [sp, #0x24]
	mov r3, #1
	stmia sp, {r3, r4}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211DE74 ; =0x0209F5C0
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _0211DE78 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211DC30
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	beq _0211DCA8
_0211DC30:
	ldr r0, [r9, #0xc]
	mov r1, #0
	add r3, r9, r0
	cmp r8, #0
	movne r0, #0x17
	moveq r0, #0x13
	mov r2, #2
	add r3, r3, #0x80
	mov r11, #0x14
	mov r9, #8
	strh r0, [sp, #0x14]
	mov r7, #0x40
	mov r0, #0x20
	strh r0, [sp, #0x22]
	str r3, [sp, #0x28]
	strh r11, [sp, #0x16]
	strh r9, [sp, #0x18]
	strh r5, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r7, [sp, #0x20]
	strb r2, [sp, #0x24]
	str r6, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211DE74 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211DCA8:
	mov r0, #0
	mov r1, #2
	mov r2, #1
	bl FUN_ov16_020f0e9c
_0211DCB8:
	ldr r0, _0211DE78 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211DD54
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _0211DD54
	ldr r1, [r10, #0x538]
	cmp r1, #0
	beq _0211DD54
	ldr r0, [r1, #0xc]
	mov r9, #8
	add r3, r1, r0
	cmp r8, #0
	mov r1, #0
	movne r0, #0x17
	moveq r0, #0x13
	mov r11, #0x14
	mov r8, #0x40
	mov r7, #0x20
	strh r0, [sp, #0x14]
	strh r11, [sp, #0x16]
	strh r9, [sp, #0x18]
	strh r5, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r8, [sp, #0x20]
	strh r7, [sp, #0x22]
	strb r9, [sp, #0x24]
	str r3, [sp, #0x28]
	str r6, [sp]
	str r4, [sp, #4]
	mov r2, #2
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211DE74 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211DD54:
	ldr r2, [r10, #0x58c]
	cmp r2, #0
	beq _0211DDC4
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r7, r2, r0
	mov r5, #5
	mov r2, #0x16
	mov r3, #4
	mov r0, #6
	strh r2, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r5, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r3, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	str r7, [sp, #0x28]
	str r6, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211DE74 ; =0x0209F5C0
	mov r2, #2
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211DDC4:
	ldr r5, _0211DE7C ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_02144780
	cmp r0, #4
	beq _0211DDE8
	ldr r0, [r5]
	bl FUN_ov132_02144780
	cmp r0, #8
	bne _0211DE54
_0211DDE8:
	ldr r2, [r10, #0x544]
	cmp r2, #0
	beq _0211DE54
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov r3, #6
	mov r2, #2
	mov r0, #5
	strh r3, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r1, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r2, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	str r5, [sp, #0x28]
	str r6, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211DE74 ; =0x0209F5C0
	mov r3, #0x24
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211DE54:
	mov r0, r10
	bl FUN_ov82_0211d348
	mov r0, r10
	bl FUN_ov82_0211d40c
	mov r0, r10
	bl FUN_ov82_0211d4ec
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DE74: .word unk_0209F5C0
_0211DE78: .word unk_020A0640
_0211DE7C: .word unk_02099EF0
	arm_func_end FUN_ov82_0211dadc

	arm_func_start FUN_ov82_0211de80
FUN_ov82_0211de80: ; 0x0211DE80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	ldr r6, _0211E08C ; =0x0209F5C0
	mov r5, #0
	mov r4, #4
	mov r8, r0
	mov r7, r1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	bl FUN_ov16_020f5f64
	cmp r7, #0x21
	beq _0211DED0
	cmp r7, #0x22
	beq _0211DF64
	cmp r7, #0x23
	beq _0211DFF8
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DED0:
	ldr r1, [r8, #0x598]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r2, #5
	add r3, r1, r0
	mov r1, #0x16
	mov r0, #7
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r4, [sp, #0x16]
	strh r4, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	str r3, [sp, #0x28]
	mov r7, #0x21
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	mov r0, r6
	mov r1, r5
	mov r3, r7
	mov r2, #2
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, #0x3c
	bl FUN_ov16_020f5eec
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DF64:
	ldr r1, [r8, #0x5a4]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r2, #5
	add r3, r1, r0
	mov r1, #0x16
	mov r0, #7
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r4, [sp, #0x16]
	strh r4, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	str r3, [sp, #0x28]
	mov r7, #0x22
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	mov r0, r6
	mov r1, r5
	mov r3, r7
	mov r2, #2
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, #0x3c
	bl FUN_ov16_020f5eec
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DFF8:
	ldr r1, [r8, #0x5b0]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r2, #5
	add r3, r1, r0
	mov r1, #0x16
	mov r0, #7
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r4, [sp, #0x16]
	strh r4, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	str r3, [sp, #0x28]
	mov r7, #0x23
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	mov r0, r6
	mov r1, r5
	mov r3, r7
	mov r2, #2
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, #0x3c
	bl FUN_ov16_020f5eec
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211E08C: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211de80

	arm_func_start FUN_ov82_0211e090
FUN_ov82_0211e090: ; 0x0211E090
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r5, _0211E250 ; =0x0209AEC0
	mov r6, r0
	mov r0, r5
	mov r4, #0
	bl FUN_02046744
	mov r11, r0
	mov r0, r5
	bl FUN_02046730
	ldr r5, [r6, #0x568]
	mov r7, r0
	cmp r5, #0
	ldrne r6, [r6, #0x574]
	cmpne r6, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, r4
	ldr r8, _0211E254 ; =0x0209F5C0
	b _0211E10C
_0211E0E0:
	mov r0, r8
	mov r1, r4
	mov r3, r4
	add r2, r9, #7
	bl FUN_ov16_020f5eec
	mov r0, r8
	mov r1, r4
	mov r3, r4
	add r2, r9, #0xa
	bl FUN_ov16_020f5eec
	add r9, r9, #1
_0211E10C:
	cmp r9, #3
	blt _0211E0E0
	mov r8, #0
	mov r9, r8
	b _0211E240
_0211E120:
	mov r0, #1
	tst r11, r0, lsl r9
	cmpne r7, r9
	beq _0211E23C
	mov r0, r9
	mov r1, r4
	mov r10, r4
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	ldr r1, [r5, #0xc]
	mov r2, #2
	cmp r0, #0x10
	cmpne r0, #0x12
	moveq r10, #1
	add r1, r5, r1
	add r1, r1, r10, lsl #2
	str r1, [sp, #0x28]
	mov r1, #0x1c
	strh r1, [sp, #0x14]
	mov r1, #2
	strh r1, [sp, #0x18]
	mov r1, #1
	strh r1, [sp, #0x1a]
	mov r1, #4
	strb r1, [sp, #0x24]
	strh r8, [sp, #0x16]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	mov r1, #5
	str r1, [sp]
	add r1, sp, #0x14
	stmib sp, {r1, r4}
	str r4, [sp, #0xc]
	ldr r0, _0211E254 ; =0x0209F5C0
	mov r1, r4
	add r3, r8, #7
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r9
	bl FUN_ov16_020f08a4
	ldr r2, [r6, #0xc]
	mov r1, r4
	add r2, r6, r2
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x28]
	mov r0, #0x1e
	strh r0, [sp, #0x14]
	mov r0, #2
	strh r0, [sp, #0x18]
	mov r0, #1
	strh r0, [sp, #0x1a]
	mov r0, #4
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x16]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	mov r0, #5
	str r0, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _0211E254 ; =0x0209F5C0
	mov r2, #2
	add r3, r8, #0xa
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r8, r8, #1
_0211E23C:
	add r9, r9, #1
_0211E240:
	cmp r9, #4
	blt _0211E120
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E250: .word unk_0209AEC0
_0211E254: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211e090

	arm_func_start FUN_ov82_0211e258
FUN_ov82_0211e258: ; 0x0211E258
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	bl FUN_ov82_0211e338
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r8, [r4, #0x3a]
	cmp r8, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0x580]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r12, #4
	add r7, r1, r0
	mov r6, #0xc
	mov r5, #0x13
	mov lr, #8
	mov r2, #0
	mov r3, #0x40
	mov r1, #0x18
	mov r0, #3
	strh r3, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r0, [sp, #0x24]
	strh r6, [sp, #0x14]
	strh r5, [sp, #0x16]
	strh lr, [sp, #0x18]
	strh r12, [sp, #0x1a]
	strh r2, [sp, #0x1c]
	cmp r8, #0
	strh r12, [sp, #0x1e]
	moveq r2, #1
	rsb r12, r2, #0
	str r7, [sp, #0x28]
	mov r1, #5
	str r1, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, _0211E334 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0xd
	str r12, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, #1
	strb r0, [r4, #0x3a]
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211E334: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211e258

	arm_func_start FUN_ov82_0211e338
FUN_ov82_0211e338: ; 0x0211E338
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _0211E3E0 ; =0x0209AEC0
	mov r0, r4
	bl FUN_02046744
	mov r6, r0
	mov r0, r4
	bl FUN_02046730
	mov r8, #0
	mov r7, r0
	mov r4, r8
	mov r9, r8
	mov r5, #1
	b _0211E3D0
_0211E36C:
	cmp r8, r7
	beq _0211E3CC
	tst r6, r5, lsl r8
	beq _0211E3CC
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #0xf
	cmpne r0, #0x10
	cmpne r0, #0x12
	cmpne r0, #0x11
	cmpne r0, #9
	cmpne r0, #0xa
	cmpne r0, #0xb
	bne _0211E3C4
	mov r0, r8
	mov r1, r9
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	cmp r0, #0x37
	beq _0211E3CC
_0211E3C4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E3CC:
	add r8, r8, #1
_0211E3D0:
	cmp r8, #4
	blt _0211E36C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E3E0: .word unk_0209AEC0
	arm_func_end FUN_ov82_0211e338

	arm_func_start FUN_ov82_0211e3e4
FUN_ov82_0211e3e4: ; 0x0211E3E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	mov r7, r0
	ldr r0, [r7, #8]
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _0211E614
_0211E400: ; jump table
	b _0211E614 ; case 0
	b _0211E614 ; case 1
	b _0211E614 ; case 2
	b _0211E614 ; case 3
	b _0211E614 ; case 4
	b _0211E560 ; case 5
	b _0211E560 ; case 6
	b _0211E614 ; case 7
	b _0211E614 ; case 8
	b _0211E614 ; case 9
	b _0211E614 ; case 10
	b _0211E614 ; case 11
	b _0211E614 ; case 12
	b _0211E614 ; case 13
	b _0211E614 ; case 14
	b _0211E614 ; case 15
	b _0211E454 ; case 16
	b _0211E454 ; case 17
	b _0211E560 ; case 18
	b _0211E560 ; case 19
	b _0211E560 ; case 20
_0211E454:
	ldrb r0, [r7, #0x42c]
	cmp r0, #0
	bne _0211E538
	ldr r6, _0211E61C ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f5af0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f5a58
	ldr r1, [r7, #0x550]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r4, #5
	add r0, r1, r0
	mov r8, #3
	add r2, r0, #0x108
	mov r1, #0xf
	mov r0, #0x16
	strh r1, [sp, #0x16]
	strh r0, [sp, #0x18]
	str r2, [sp, #0x28]
	strh r4, [sp, #0x14]
	strh r8, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	strb r8, [sp, #0x24]
	add r0, sp, #0x14
	str r5, [sp]
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #2
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0x1e
	bl FUN_ov16_020f637c
	mov r0, r5
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020f0e9c
	mov r4, #1
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl FUN_ov16_020f0e9c
	strb r4, [r7, #0x42c]
_0211E538:
	ldr r0, [r7, #8]
	cmp r0, #0x10
	addne sp, sp, #0x2c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_ov82_0211e258
	mov r0, r7
	bl FUN_ov82_0211e090
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211E560:
	ldr r5, _0211E61C ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f5af0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f5a58
	ldr r1, [r7, #0x55c]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	mov r7, #3
	add r1, r1, r0
	mov r0, #0x1d
	mov r2, #2
	strh r0, [sp, #0x14]
	str r1, [sp, #0x28]
	mov r6, #6
	strh r4, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	strb r7, [sp, #0x24]
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r4
	mov r3, r6
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f63b0
	mov r0, r4
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020f0e9c
_0211E614:
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211E61C: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211e3e4

	arm_func_start FUN_ov82_0211e620
FUN_ov82_0211e620: ; 0x0211E620
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0x38]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #8]
	mov r2, #0
	strb r2, [r0, #0x38]
	strb r2, [r0, #0x41]
	strb r2, [r0, #0x40]
	strb r2, [r0, #0x3f]
	cmp r1, #0x14
	addls pc, pc, r1, lsl #2
	b _0211E6C8
_0211E654: ; jump table
	b _0211E6C8 ; case 0
	b _0211E6C8 ; case 1
	b _0211E6C8 ; case 2
	b _0211E6C8 ; case 3
	b _0211E6C8 ; case 4
	b _0211E6B0 ; case 5
	b _0211E6B0 ; case 6
	b _0211E6B8 ; case 7
	b _0211E6C0 ; case 8
	b _0211E6C0 ; case 9
	b _0211E6C8 ; case 10
	b _0211E6C8 ; case 11
	b _0211E6B0 ; case 12
	b _0211E6B0 ; case 13
	b _0211E6A8 ; case 14
	b _0211E6B0 ; case 15
	b _0211E6B0 ; case 16
	b _0211E6B0 ; case 17
	b _0211E6B0 ; case 18
	b _0211E6B0 ; case 19
	b _0211E6B0 ; case 20
_0211E6A8:
	bl FUN_ov82_0211dadc
	ldmfd sp!, {r3, r4, r5, pc}
_0211E6B0:
	bl FUN_ov82_0211e3e4
	ldmfd sp!, {r3, r4, r5, pc}
_0211E6B8:
	bl FUN_ov82_0211b1b8
	ldmfd sp!, {r3, r4, r5, pc}
_0211E6C0:
	bl FUN_ov82_0211b6e8
	ldmfd sp!, {r3, r4, r5, pc}
_0211E6C8:
	ldr r5, _0211E6EC ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f5af0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f5a58
	ldmfd sp!, {r3, r4, r5, pc}
_0211E6EC: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211e620

	arm_func_start FUN_ov82_0211e6f0
FUN_ov82_0211e6f0: ; 0x0211E6F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r9, _0211EC90 ; =0x020A7C40
	mov r8, #0x800
	mov r7, #0
	mov r10, r0
	mov r0, r7
	mov r1, r9
	mov r2, r8
	mov r5, r7
	bl MIi_CpuClearFast
	ldr r6, _0211EC94 ; =0x020A7440
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl MIi_CpuClearFast
	ldr r4, _0211EC98 ; =0x020A6C40
	mov r0, r7
	mov r1, r4
	mov r2, r8
	bl MIi_CpuClearFast
	mov r0, r9
	mov r1, r8
	bl DC_FlushRange
	mov r0, r9
	mov r1, r7
	mov r2, r8
	bl GX_LoadBG2Scr
	mov r0, r6
	mov r1, r8
	bl DC_FlushRange
	mov r0, r6
	mov r1, r7
	mov r2, r8
	bl GX_LoadBG1Scr
	mov r0, r4
	mov r1, r8
	bl DC_FlushRange
	mov r0, r4
	mov r2, r8
	mov r1, r7
	bl GX_LoadBG3Scr
	bl G2_GetBG1CharPtr
	mov r8, #0x20
	mov r1, r0
	mov r0, r7
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r7
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r0
	mov r0, r7
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r8
	bl DC_FlushRange
	bl G2_GetBG2CharPtr
	mov r1, r8
	bl DC_FlushRange
	mov r4, #1
	add r6, sp, #4
	bl G2_GetBG3CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r0, _0211EC9C ; =0x0209BA20
	str r8, [sp, #4]
	bl FUN_020731a4
	cmp r0, #0
	str r6, [sp]
	beq _0211E910
	ldr r0, [r10, #0x5c8]
	mov r1, r7
	mov r2, #3
	mov r3, r4
	bl FUN_ov1_020dc088
	add r1, r10, #0x58
	mov r8, r0
	add r9, r1, #0x400
	mov r11, #0xc
	b _0211E8DC
_0211E844:
	add r0, r10, r7, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211E8D4
	add r1, r7, #0x21
	mla r0, r1, r11, r10
	str r6, [sp]
	ldr r0, [r0, #0x520]
	mov r1, r8
	mov r3, r4
	add r2, r7, #9
	bl FUN_ov1_020dc088
	ldr r1, [r9]
	mov r8, r0
	cmp r1, #0
	ldrne r0, [r9, #4]
	mov r2, r5
	cmpne r0, #0
	movne r2, r4
	cmp r2, #0
	beq _0211E8D4
	ldr r0, [r9]
	mov r1, #0x20
	mov r3, r5
	add r2, r8, #1
	bl FUN_ov16_020f1868
	mov r8, r0
	ldr r0, [r9, #4]
	ldr r1, [sp, #4]
	mov r2, #0x200
	bl GX_LoadBG1Char
	ldr r0, [sp, #4]
	add r0, r0, #0x200
	str r0, [sp, #4]
_0211E8D4:
	add r7, r7, #1
	add r9, r9, #0x14
_0211E8DC:
	ldr r0, [r10, #0x48]
	cmp r7, r0
	blt _0211E844
	mov r1, #0x20
	str r1, [sp, #4]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r10, #0x5e0]
	mov r1, #0
	mov r2, #4
	mov r3, #3
	bl FUN_ov1_020dc088
	b _0211EA7C
_0211E910:
	mov r5, #0xe
	ldr r0, [r10, #0x628]
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov1_020dc088
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x634]
	mov r2, r5
	mov r3, r4
	bl FUN_ov1_020dc088
	str r8, [sp, #4]
	str r6, [sp]
	mov r4, #3
	ldr r0, [r10, #0x640]
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov1_020dc088
	mov r8, r0
	bl FUN_ov16_020f083c
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _0211E990
	str r6, [sp]
	ldr r0, [r10, #0x64c]
	mov r1, r8
	mov r3, r4
	mov r2, #0xd
	bl FUN_ov1_020dc088
	mov r8, r0
_0211E990:
	mov r5, #0
	bl FUN_ov16_020f066c
	cmp r0, #0
	bne _0211E9AC
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211E9FC
_0211E9AC:
	ldr r0, [r10, #0x50c]
	add r1, r10, #0x10c
	cmp r0, #0
	ldrne r0, [r1, #0x404]
	mov r2, #0
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	beq _0211E9FC
	ldr r2, [sp, #4]
	ldr r0, [r1, #0x400]
	str r2, [r1, #0x408]
	add r2, r8, #1
	mov r1, #0x54
	mov r3, #0
	bl FUN_ov16_020f1868
	ldr r1, [sp, #4]
	mov r8, r0
	add r0, r1, #0x540
	str r0, [sp, #4]
_0211E9FC:
	mov r11, #0x2c
	add r0, r10, #0x58
	mov r7, #0
	add r6, r0, #0x400
	mov r4, r11, lsl #1
	ldr r1, [sp, #4]
	b _0211EA74
_0211EA18:
	add r2, r7, #4
	mov r0, #0x14
	mul r3, r2, r0
	ldr r0, [r6, r3]
	add r9, r6, r3
	cmp r0, #0
	ldrne r0, [r9, #4]
	mov r2, r5
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	beq _0211EA70
	str r1, [r9, #8]
	ldr r0, [r9]
	mov r1, r4
	mov r3, r5
	add r2, r8, #1
	bl FUN_ov16_020f1868
	ldr r1, [sp, #4]
	mov r8, r0
	add r1, r1, r11, lsl #5
	str r1, [sp, #4]
_0211EA70:
	add r7, r7, #1
_0211EA74:
	cmp r7, #5
	blt _0211EA18
_0211EA7C:
	mov r0, #0x20
	add r6, sp, #4
	str r0, [sp, #4]
	mov r5, #2
	str r6, [sp]
	mov r1, #0
	ldr r0, [r10, #0x52c]
	mov r2, r5
	mov r3, r5
	mov r4, r1
	bl FUN_ov1_020dc088
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x58c]
	mov r3, r5
	mov r2, #6
	bl FUN_ov1_020dc088
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x544]
	mov r2, #5
	mov r3, r5
	bl FUN_ov1_020dc088
	ldr r1, _0211ECA0 ; =0x020A0640
	mov r8, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _0211EB08
	str r6, [sp]
	ldr r0, [r10, #0x538]
	mov r1, r8
	mov r3, r5
	mov r2, #8
	bl FUN_ov1_020dc088
	mov r8, r0
_0211EB08:
	ldr r0, _0211EC9C ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _0211EBA8
	str r6, [sp]
	mov r2, #2
	ldr r0, [r10, #0x5bc]
	mov r1, r8
	mov r3, r2
	bl FUN_ov1_020dc088
	mov r8, r0
	mov r7, #0
	mov r9, #0xc
	b _0211EB80
_0211EB40:
	add r0, r10, r7, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211EB7C
	add r1, r7, #0x1d
	mla r0, r1, r9, r10
	str r6, [sp]
	ldr r0, [r0, #0x520]
	mov r1, r8
	mov r3, r5
	add r2, r7, #5
	bl FUN_ov1_020dc088
	mov r8, r0
_0211EB7C:
	add r7, r7, #1
_0211EB80:
	ldr r0, [r10, #0x48]
	cmp r7, r0
	blt _0211EB40
	str r6, [sp]
	ldr r0, [r10, #0x5d4]
	mov r1, r8
	mov r2, #4
	mov r3, #2
	bl FUN_ov1_020dc088
	mov r8, r0
_0211EBA8:
	str r6, [sp]
	mov r4, #7
	ldr r0, [r10, #0x598]
	mov r1, r8
	mov r2, r4
	mov r3, r5
	bl FUN_ov1_020dc088
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x5a4]
	mov r2, r4
	mov r3, r5
	bl FUN_ov1_020dc088
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x5b0]
	mov r2, r4
	mov r3, r5
	bl FUN_ov1_020dc088
	ldr r2, _0211ECA0 ; =0x020A0640
	mov r1, r0
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [sp]
	mov r7, #3
	ldr r0, [r10, #0x550]
	mov r2, r7
	mov r3, r5
	bl FUN_ov1_020dc088
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x55c]
	mov r2, r7
	mov r3, r5
	bl FUN_ov1_020dc088
	mov r4, #4
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x568]
	mov r2, r4
	mov r3, r5
	bl FUN_ov1_020dc088
	mov r2, r4
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x574]
	mov r3, r5
	bl FUN_ov1_020dc088
	str r6, [sp]
	mov r2, r7
	mov r3, r5
	mov r1, r0
	ldr r0, [r10, #0x580]
	bl FUN_ov1_020dc088
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC90: .word unk_020A7C40
_0211EC94: .word unk_020A7440
_0211EC98: .word unk_020A6C40
_0211EC9C: .word unk_0209BA20
_0211ECA0: .word unk_020A0640
	arm_func_end FUN_ov82_0211e6f0

	arm_func_start FUN_ov82_0211eca4
FUN_ov82_0211eca4: ; 0x0211ECA4
	mov r3, #0xc
	mla r0, r1, r3, r0
	ldr r0, [r0, #0x520]
	ldr r12, _0211ECBC ; = FUN_ov16_020f1138
	mov r1, #0
	bx r12
_0211ECBC: .word FUN_ov16_020f1138
	arm_func_end FUN_ov82_0211eca4

	arm_func_start FUN_ov82_0211ecc0
FUN_ov82_0211ecc0: ; 0x0211ECC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	cmp r1, #0
	beq _0211EDC4
	ldr r0, _0211EEC8 ; =0x0209BA20
	bl FUN_020728f8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211ECF8
_0211ECE4: ; jump table
	b _0211ECF8 ; case 0
	b _0211ECF8 ; case 1
	b _0211ED04 ; case 2
	b _0211ED10 ; case 3
	b _0211ED1C ; case 4
_0211ECF8:
	mov r0, r5
	mov r1, #0x11
	b _0211ED24
_0211ED04:
	mov r0, r5
	mov r1, #0x12
	b _0211ED24
_0211ED10:
	mov r0, r5
	mov r1, #0x13
	b _0211ED24
_0211ED1C:
	mov r0, r5
	mov r1, #0x14
_0211ED24:
	mov r2, #2
	bl FUN_ov82_0211eca4
	mov r0, r5
	mov r1, #0xe
	mov r2, #3
	bl FUN_ov82_0211eca4
	mov r4, #4
	mov r0, r5
	mov r2, r4
	mov r1, #0xf
	bl FUN_ov82_0211eca4
	mov r0, r5
	mov r2, r4
	mov r1, #0x10
	bl FUN_ov82_0211eca4
	mov r4, #0
	mov r7, r4
	mov r6, #0xc
	b _0211EDB4
_0211ED70:
	add r0, r5, r4, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, r7
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211EDB0
	mov r0, r5
	add r1, r4, #0x21
	add r2, r4, #9
	bl FUN_ov82_0211eca4
	add r1, r4, #0x25
	mla r0, r1, r6, r5
	ldr r0, [r0, #0x520]
	mov r1, r7
	add r2, r4, #5
	bl FUN_ov16_020f1160
_0211EDB0:
	add r4, r4, #1
_0211EDB4:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	blt _0211ED70
	b _0211EEC0
_0211EDC4:
	mov r4, #0
	ldr r7, _0211EECC ; =0x0211FE70
	mvn r6, #0
	b _0211EDF0
_0211EDD4:
	mov r1, r4, lsl #1
	add r0, r7, r4, lsl #1
	ldrsb r1, [r7, r1]
	ldrsb r2, [r0, #1]
	mov r0, r5
	bl FUN_ov82_0211eca4
	add r4, r4, #1
_0211EDF0:
	add r0, r7, r4, lsl #1
	ldrsb r0, [r0, #1]
	cmp r0, r6
	bne _0211EDD4
	ldr r0, _0211EED0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211EE68
	mov r6, #4
	mov r4, #3
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov82_0211eca4
	mov r0, r5
	mov r2, r4
	mov r1, #5
	bl FUN_ov82_0211eca4
	mov r0, r5
	mov r1, #2
	mov r2, #8
	bl FUN_ov82_0211eca4
	mov r0, r5
	mov r2, r6
	mov r1, #6
	bl FUN_ov82_0211eca4
	mov r2, r6
	mov r0, r5
	mov r1, #7
	bl FUN_ov82_0211eca4
_0211EE68:
	ldr r0, _0211EED4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021362e4
	cmp r0, #0
	beq _0211EEC0
	mov r4, #0xe
	mov r0, r5
	mov r2, r4
	mov r1, #0x16
	bl FUN_ov82_0211eca4
	mov r0, r5
	mov r2, r4
	mov r1, #0x17
	bl FUN_ov82_0211eca4
	mov r0, r5
	mov r1, #0x19
	mov r2, #0xd
	bl FUN_ov82_0211eca4
	mov r0, r5
	mov r2, r4
	mov r1, #0x18
	bl FUN_ov82_0211eca4
_0211EEC0:
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EEC8: .word unk_0209BA20
_0211EECC: .word ov82_0211FE70
_0211EED0: .word unk_020A0640
_0211EED4: .word unk_02099EF0
	arm_func_end FUN_ov82_0211ecc0

	arm_func_start FUN_ov82_0211eed8
FUN_ov82_0211eed8: ; 0x0211EED8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r0, [r5, #0x48]
	mov r4, #0
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, _0211EF3C ; =0x02099F04
	mov r8, r4
	mov r6, #0xc
_0211EEFC:
	add r0, r5, r4, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, r8
	bl FUN_ov16_020efa9c
	cmp r0, #0
	mlane r1, r4, r6, r5
	ldrne r1, [r1, #0x6dc]
	cmpne r1, #0
	beq _0211EF28
	ldr r2, [r7]
	bl FUN_ov16_020f0c30 ; may be ov17
_0211EF28:
	ldr r0, [r5, #0x48]
	add r4, r4, #1
	cmp r4, r0
	blt _0211EEFC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EF3C: .word unk_02099F04
	arm_func_end FUN_ov82_0211eed8

	arm_func_start FUN_ov82_0211ef40
FUN_ov82_0211ef40: ; 0x0211EF40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r8, #0
	str r8, [sp]
	mov r2, #0x80
	ldr r1, _0211EFDC ; =0x02099EF0
	str r2, [sp, #4]
	add r5, sp, #8
	mov r9, r0
	ldr r0, [r1]
	mov r2, r5
	mov r1, #1
	mov r3, #0x10
	bl FUN_ov126_02138d98
	mov r6, r0
	mov r7, r8
	mov r4, r8
	b _0211EFC0
_0211EF88:
	mov r0, r7, lsl #1
	ldrh r0, [r5, r0]
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211EFBC
	bl FUN_0206d688
	cmp r0, #0
	movne r0, r7, lsl #1
	ldrneh r1, [r5, r0]
	addne r0, r9, r8, lsl #1
	addne r8, r8, #1
	strneh r1, [r0, #0x58]
_0211EFBC:
	add r7, r7, #1
_0211EFC0:
	cmp r7, r6
	bge _0211EFD0
	cmp r8, #4
	blt _0211EF88
_0211EFD0:
	str r8, [r9, #0x48]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EFDC: .word unk_02099EF0
	arm_func_end FUN_ov82_0211ef40

	arm_func_start FUN_ov82_0211efe0
FUN_ov82_0211efe0: ; 0x0211EFE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	str r1, [r10, #0x10]
	cmp r1, #1
	beq _0211F00C
	cmp r1, #2
	beq _0211F0A4
	cmp r1, #3
	beq _0211F220
	b _0211F2B8
_0211F00C:
	add r0, r10, #0x520
	mov r1, #0
	mov r2, #0x1ec
	bl MI_CpuFill8
	ldr r0, _0211F2CC ; =0x021201F0
	add r1, r10, #0x520
	bl FUN_ov1_020dbe00
	ldr r0, _0211F2D0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211F044
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211F054
_0211F044:
	bl FUN_ov16_020f083c
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _0211F064
_0211F054:
	add r1, r10, #0x21c
	ldr r0, _0211F2D4 ; =0x021201FC
	add r1, r1, #0x400
	bl FUN_ov1_020dbec4
_0211F064:
	mov r0, r10
	bl FUN_ov82_0211cb5c
	cmp r0, #0
	beq _0211F2B8
	add r1, r10, #0x258
	ldr r0, _0211F2D8 ; =0x02120208
	add r1, r1, #0x400
	bl FUN_ov1_020dbf50
	add r1, r10, #0x264
	ldr r0, _0211F2DC ; =0x02120210
	add r1, r1, #0x400
	bl FUN_ov1_020dbf50
	ldr r0, _0211F2E0 ; =0x02120218
	add r1, r10, #0x670
	bl FUN_ov1_020dbf50
	b _0211F2B8
_0211F0A4:
	bl FUN_ov82_0211cb5c
	cmp r0, #0
	beq _0211F2B8
	ldr r0, _0211F2E4 ; =0x0209BA20
	mov r1, #1
	bl FUN_0207249c
	mov r7, r0
	mov r0, r10
	bl FUN_ov82_0211ef40
	mov r8, #0
	add r4, r10, #0x520
	add r11, sp, #0x10
	b _0211F210
_0211F0D8:
	add r0, r10, r8, lsl #1
	ldrh r0, [r0, #0x58]
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r6, r0
	beq _0211F20C
	ldr r0, [r10, #0x658]
	cmp r0, #0
	beq _0211F140
	str r11, [sp]
	ldr r0, [r10, #0x658]
	mov r1, r6
	mov r2, #0
	add r3, sp, #0x14
	bl FUN_ov16_020f366c
	cmp r0, #0
	beq _0211F140
	add r2, r8, #0x21
	mov r1, #0xc
	mla r1, r2, r1, r4
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211F2E8 ; =0x02120220
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	bl FUN_ov1_020dbf88
_0211F140:
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020f0bcc
	ldrh r1, [r7, #0x28]
	mov r5, r0
	mov r0, r6
	cmp r1, #0
	ldreqh r1, [r7, #0x26]
	bl FUN_ov16_020f0b3c
	mov r9, r0
	ldr r0, [r10, #0x664]
	cmp r0, #0
	beq _0211F1BC
	add r0, sp, #0x14
	stmia sp, {r0, r11}
	ldr r0, [r10, #0x664]
	mov r1, r6
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _0211F1BC
	add r2, r8, #0x1d
	mov r1, #0xc
	mla r1, r2, r1, r4
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211F2EC ; =0x02120228
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	bl FUN_ov1_020dbf88
_0211F1BC:
	ldr r0, [r10, #0x670]
	cmp r0, #0
	beq _0211F20C
	str r11, [sp]
	ldr r0, [r10, #0x670]
	mov r1, r9
	mov r2, r5
	add r3, sp, #0x14
	bl FUN_ov16_020f3744
	cmp r0, #0
	beq _0211F20C
	add r2, r8, #0x25
	mov r1, #0xc
	mla r1, r2, r1, r4
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211F2F0 ; =0x02120230
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	bl FUN_ov1_020dbf88
_0211F20C:
	add r8, r8, #1
_0211F210:
	ldr r0, [r10, #0x48]
	cmp r8, r0
	blt _0211F0D8
	b _0211F2B8
_0211F220:
	bl FUN_ov16_020f066c
	cmp r0, #0
	bne _0211F240
	ldr r0, _0211F2F4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021362e4
	cmp r0, #0
	beq _0211F2B8
_0211F240:
	bl FUN_ov16_020f083c
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _0211F2B8
	ldr r4, [r10, #0x61c]
	cmp r4, #0
	beq _0211F2B8
	bl FUN_ov16_020f083c
	mov r1, r0
	ldr r0, _0211F2E4 ; =0x0209BA20
	bl FUN_0207249c
	cmp r0, #0
	beq _0211F2B8
	ldrh r1, [r0, #0x2a]
	add r2, sp, #0xc
	add r3, sp, #8
	cmp r1, #0
	ldreqh r1, [r0, #0x20]
	mov r0, r4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211F2B8
	mov r0, #1
	str r0, [sp]
	add r1, r10, #0x24c
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _0211F2F8 ; =0x02120238
	add r1, r1, #0x400
	bl FUN_ov1_020dbefc
_0211F2B8:
	mov r0, r10
	mov r1, #1
	bl FUN_ov82_0211bfc0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F2CC: .word ov82_021201F0
_0211F2D0: .word unk_020A0640
_0211F2D4: .word ov82_021201FC
_0211F2D8: .word ov82_02120208
_0211F2DC: .word ov82_02120210
_0211F2E0: .word ov82_02120218
_0211F2E4: .word unk_0209BA20
_0211F2E8: .word ov82_02120220
_0211F2EC: .word ov82_02120228
_0211F2F0: .word ov82_02120230
_0211F2F4: .word unk_02099EF0
_0211F2F8: .word ov82_02120238
	arm_func_end FUN_ov82_0211efe0

	arm_func_start FUN_ov82_0211f2fc
FUN_ov82_0211f2fc: ; 0x0211F2FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x64
	ldr r1, _0211F4E0 ; =0x02099EF0
	str r0, [sp, #8]
	ldr r0, [r1]
	mov r9, #0
	bl FUN_ov126_021362fc
	cmp r0, #0
	ble _0211F494
_0211F320:
	ldr r0, [sp, #8]
	add r1, r9, #4
	add r0, r0, #0x58
	add r2, r0, #0x400
	mov r0, #0x14
	mla r0, r1, r0, r2
	mov r10, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x4c
	mov r1, r10
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0211F47C
	ldr r4, _0211F4E0 ; =0x02099EF0
	mov r1, r9
	ldr r0, [r4]
	mov r2, r10
	bl FUN_ov126_02136308
	str r0, [sp, #0x14]
	ldr r0, [r4]
	mov r1, r9
	mov r2, #1
	bl FUN_ov126_02136308
	ldr r1, [sp, #0x14]
	str r0, [sp, #0xc]
	cmp r1, #0
	str r0, [sp, #0x18]
	cmpne r0, #0
	beq _0211F47C
	mov r11, #0x20
	add r8, sp, #0x1c
	add r4, sp, #0x2c
	mov r7, r10
	mov r6, #0x10
	add r5, sp, #0x14
_0211F3B4:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl MI_CpuFill8
	ldr r1, [r5, r10, lsl #2]
	mov r0, r8
	add r1, r1, #0x1c
	bl STD_CopyString
	mov r0, r8
	bl STD_GetStringLength
	cmp r0, #0xa
	bge _0211F3F8
	rsb r1, r0, #0xa
	add r0, r8, r0
	mov r2, r1, asr #1
	mov r1, r11
	bl MI_CpuFill8
_0211F3F8:
	ldr r1, _0211F4E4 ; =0x02120244
	mov r0, r8
	bl STD_ConcatenateString
	mov r0, r8
	add r1, r4, r10, lsl #4
	bl FUN_ov16_020f1f5c
	add r10, r10, #1
	cmp r10, #2
	blt _0211F3B4
	mov r5, #1
	ldr r0, [sp, #0x14]
	mov r1, r5
	bl FUN_0206d9b0
	mov r6, r0
	ldr r0, [sp, #0xc]
	mov r1, r5
	bl FUN_0206d9b0
	str r0, [sp]
	add r1, sp, #0x3c
	add r5, sp, #0x4c
	str r1, [sp, #4]
	ldr r1, _0211F4E8 ; =0x02120248
	mov r2, r6
	mov r3, r4
	mov r0, r5
	bl sprintf
	mov r0, #4
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r1, r5
	mov r3, #0
	bl FUN_ov82_0211f4ec
_0211F47C:
	ldr r0, _0211F4E0 ; =0x02099EF0
	add r9, r9, #1
	ldr r0, [r0]
	bl FUN_ov126_021362fc
	cmp r9, r0
	blt _0211F320
_0211F494:
	ldr r4, _0211F4E0 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov126_0213633c
	bl FUN_ov1_020dc150
	cmp r0, #0
	addeq sp, sp, #0x64
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	bl FUN_ov126_0213633c
	ldr r1, [sp, #8]
	add r2, r1, #0x10c
	mov r1, r0
	add r0, r2, #0x400
	bl FUN_ov1_020db4f0
	ldr r0, [sp, #8]
	mov r1, #1
	strb r1, [r0, #0x51c]
	add sp, sp, #0x64
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F4E0: .word unk_02099EF0
_0211F4E4: .word ov82_02120244
_0211F4E8: .word ov82_02120248
	arm_func_end FUN_ov82_0211f2fc

	arm_func_start FUN_ov82_0211f4ec
FUN_ov82_0211f4ec: ; 0x0211F4EC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x5c
	mov r7, r2
	movs r4, r1
	cmpne r7, #0
	mov r6, r3
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7]
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov16_020f2f20
	add r5, sp, #0x1c
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f1f5c
	mov r0, #3
	str r0, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r7, #4]
	mov r3, r5
	str r0, [sp, #8]
	ldrh r0, [r7, #0xc]
	mov r12, #0
	ldr r2, [sp, #0x70]
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r5, [r7, #0xe]
	ldr r0, _0211F5D0 ; =0x02099ED0
	mov r1, r6
	mov r5, r5, lsl #3
	str r5, [sp, #0x10]
	str r12, [sp, #0x14]
	str r12, [sp, #0x18]
	ldr r0, [r0]
	ldr r5, [r0]
	ldr r5, [r5, #8]
	blx r5
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	ldr r0, [r7, #4]
	mov r2, r2, lsl #3
	mov r1, r1, lsl #3
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	strb r4, [r7, #0x10]
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211F5D0: .word unk_02099ED0
	arm_func_end FUN_ov82_0211f4ec

	arm_func_start FUN_ov82_0211f5d4
FUN_ov82_0211f5d4: ; 0x0211F5D4
	mov r1, r0
	ldr r0, [r1, #0x520]
	ldr r2, _0211F5EC ; =0x0211FEC0
	ldr r12, _0211F5F0 ; = FUN_ov1_020dbfdc
	add r1, r1, #0x520
	bx r12
_0211F5EC: .word ov82_0211FEC0
_0211F5F0: .word FUN_ov1_020dbfdc
	arm_func_end FUN_ov82_0211f5d4

	arm_func_start FUN_ov82_0211f5f4
FUN_ov82_0211f5f4: ; 0x0211F5F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x520
	mov r4, #0xc
_0211F604:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x29
	blt _0211F604
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov82_0211f5f4

	arm_func_start FUN_ov82_0211f61c
FUN_ov82_0211f61c: ; 0x0211F61C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x520
	add r0, r0, #0x138
	bl FUN_ov16_020f33fc
	add r0, r4, #0x520
	add r0, r0, #0x144
	bl FUN_ov16_020f33fc
	add r0, r4, #0x670
	bl FUN_ov16_020f33fc
	add r0, r4, #0x520
	add r0, r0, #0xfc
	bl FUN_ov16_020f33fc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov82_0211f61c

	arm_func_start FUN_ov82_0211f654
FUN_ov82_0211f654: ; 0x0211F654
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldr r1, [r0, #0x18]
	cmp r1, #0
	blt _0211F678
	ldr r0, _0211F6FC ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3b40
	b _0211F684
_0211F678:
	ldr r0, _0211F6FC ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3b48
_0211F684:
	ldr r0, _0211F700 ; =0x020EAAF0
	ldr r5, _0211F6FC ; =0x02099F14
	ldrsh r1, [r0]
	mov r6, #0
	ldrsh r2, [r0, #2]
	ldr r0, [r5]
	mov r3, r6
	bl FUN_ov1_020e4384
	ldr r2, _0211F704 ; =0x020EAAEC
	ldr r0, [r5]
	ldrsh r1, [r2]
	ldrsh r2, [r2, #2]
	mov r3, r6
	bl FUN_ov1_020e43e0
	ldr r2, _0211F708 ; =0x020EAAE8
	ldr r0, [r5]
	ldrsh r1, [r2]
	ldrsh r2, [r2, #2]
	mov r3, r6
	bl FUN_ov1_020e443c
	ldr r0, [r5]
	mov r1, r4
	mov r2, r6
	bl FUN_ov1_020e03b0
	ldr r0, _0211F70C ; =0x02099EE8
	ldr r1, _0211F710 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0205ef30
	ldmfd sp!, {r4, r5, r6, pc}
_0211F6FC: .word unk_02099F14
_0211F700: .word ov1_020EAAF0
_0211F704: .word ov1_020EAAEC
_0211F708: .word ov1_020EAAE8
_0211F70C: .word unk_02099EE8
_0211F710: .word unk_0209A110
	arm_func_end FUN_ov82_0211f654

	arm_func_start FUN_ov82_0211f714
FUN_ov82_0211f714: ; 0x0211F714
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0211F75C ; =0x02099EF0
	mov r6, r0
	mov r4, #0
	mov r5, r1
	ldr r0, [r2]
	mov r2, r4
	mov r1, #1
	bl FUN_ov132_021435c0
	mov r0, r6
	bl FUN_ov82_0211e620
	ldr r0, _0211F760 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f672c
	mov r0, r6
	mov r1, r5
	bl FUN_ov82_0211f654
	ldmfd sp!, {r4, r5, r6, pc}
_0211F75C: .word unk_02099EF0
_0211F760: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211f714

	arm_func_start FUN_ov82_0211f764
FUN_ov82_0211f764: ; 0x0211F764
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #8]
	mov r4, r1
	cmp r2, #0x15
	addls pc, pc, r2, lsl #2
	b _0211F9BC
_0211F780: ; jump table
	b _0211F9BC ; case 0
	b _0211F7D8 ; case 1
	b _0211F9BC ; case 2
	b _0211F9BC ; case 3
	b _0211F87C ; case 4
	b _0211F9B0 ; case 5
	b _0211F9B0 ; case 6
	b _0211F9B0 ; case 7
	b _0211F9B0 ; case 8
	b _0211F9B0 ; case 9
	b _0211F9BC ; case 10
	b _0211F8B8 ; case 11
	b _0211F8D8 ; case 12
	b _0211F918 ; case 13
	b _0211F9B0 ; case 14
	b _0211F948 ; case 15
	b _0211F96C ; case 16
	b _0211F9B0 ; case 17
	b _0211F9B0 ; case 18
	b _0211F9B0 ; case 19
	b _0211F9B0 ; case 20
	b _0211F9B0 ; case 21
_0211F7D8:
	ldr r0, _0211F9E0 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3d74
	cmp r0, #0
	beq _0211F9BC
	add r0, r5, #0x520
	mov r1, #0x29
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211F9BC
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _0211F820
	cmp r0, #2
	beq _0211F850
	cmp r0, #3
	beq _0211F878
	b _0211F9BC
_0211F820:
	mov r0, r5
	bl FUN_ov82_0211f5d4
	mov r0, r5
	bl FUN_ov82_0211cb5c
	cmp r0, #0
	mov r0, r5
	bne _0211F848
	mov r1, #3
_0211F840:
	bl FUN_ov82_0211efe0
	b _0211F9BC
_0211F848:
	mov r1, #2
	b _0211F840
_0211F850:
	mov r0, r5
	bl FUN_ov82_0211a8d0
	mov r0, r5
	bl FUN_ov82_0211eed8
_0211F860:
	mov r0, r5
	bl FUN_ov82_0211f61c
	mov r0, r5
	mov r1, #2
_0211F870:
	bl FUN_ov82_0211bfc0
	b _0211F9BC
_0211F878:
	b _0211F860
_0211F87C:
	ldr r0, _0211F9E0 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3d74
	cmp r0, #0
	beq _0211F9BC
	ldr r0, _0211F9E4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021363f4
	cmp r0, #0
	mov r0, r5
	beq _0211F8B0
	mov r1, #8
	b _0211F870
_0211F8B0:
	mov r1, #0xe
	b _0211F870
_0211F8B8:
	ldr r0, _0211F9E0 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3d74
	cmp r0, #0
	beq _0211F9BC
	mov r0, r5
	mov r1, #9
	b _0211F870
_0211F8D8:
	ldr r1, [r5, #0x70]
	cmp r1, #0
	ble _0211F90C
	ldr r0, [r5, #0x6c]
	sub r1, r1, #1
	sub r2, r0, #4
	ldr r0, _0211F9E4 ; =0x02099EF0
	str r1, [r5, #0x70]
	str r2, [r5, #0x6c]
	ldr r0, [r0]
	ldr r1, [r5, #0x68]
	bl FUN_ov132_02148d74
	b _0211F914
_0211F90C:
	mov r1, #0xd
	bl FUN_ov82_0211bfc0
_0211F914:
	b _0211F9B0
_0211F918:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211F944
	ldr r3, [r5, #0x74]
	ldr r2, _0211F9E8 ; =0x020EAAA8
	mov r0, r5
	mov r1, #0xe
	str r3, [r2]
	bl FUN_ov82_0211bfc0
_0211F944:
	b _0211F9B0
_0211F948:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211F968
	mov r0, r5
	mov r1, #0x12
	bl FUN_ov82_0211bfc0
_0211F968:
	b _0211F9B0
_0211F96C:
	bl FUN_ov1_020dbb44
	cmp r0, #0
	beq _0211F990
	mov r2, #1
	mov r0, r5
	mov r1, #0xe
	strb r2, [r5, #0x38]
	bl FUN_ov82_0211bfc0
	b _0211F9B0
_0211F990:
	mov r0, r5
	bl FUN_ov82_0211e338
	cmp r0, #0
	beq _0211F9B0
	ldrb r0, [r5, #0x3a]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r5, #0x38]
_0211F9B0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov82_0211f714
_0211F9BC:
	ldr r0, [r5, #8]
	cmp r0, #0xe
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211F9EC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov1_020dbb44
	ldmfd sp!, {r3, r4, r5, pc}
_0211F9E0: .word unk_02099F14
_0211F9E4: .word unk_02099EF0
_0211F9E8: .word ov1_020EAAA8
_0211F9EC: .word unk_020A0640
	arm_func_end FUN_ov82_0211f764

	arm_func_start FUN_ov82_0211f9f0
FUN_ov82_0211f9f0: ; 0x0211F9F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0x15
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211FA08: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211FA60 ; case 2
	b _0211FA74 ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	b _0211FA80 ; case 5
	b _0211FA80 ; case 6
	b _0211FA9C ; case 7
	b _0211FA80 ; case 8
	b _0211FA80 ; case 9
	b _0211FA74 ; case 10
	ldmfd sp!, {r4, pc} ; case 11
	b _0211FA8C ; case 12
	b _0211FA8C ; case 13
	b _0211FA8C ; case 14
	b _0211FA8C ; case 15
	b _0211FA8C ; case 16
	b _0211FA8C ; case 17
	b _0211FA80 ; case 18
	b _0211FA80 ; case 19
	b _0211FA80 ; case 20
	b _0211FA8C ; case 21
_0211FA60:
	bl FUN_ov82_0211e6f0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211FA74:
	mov r0, r4
	bl FUN_ov82_0211c66c
	ldmfd sp!, {r4, pc}
_0211FA80:
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
_0211FA8C:
	ldr r0, _0211FACC ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211FA9C:
	ldr r1, [r4, #0x44]
	cmp r1, #1
	bne _0211FAB0
	bl FUN_ov82_0211be7c
	b _0211FABC
_0211FAB0:
	cmp r1, #5
	bne _0211FABC
	bl FUN_ov82_0211bedc
_0211FABC:
	ldr r0, _0211FACC ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211FACC: .word unk_0209F5C0
	arm_func_end FUN_ov82_0211f9f0

	arm_func_start FUN_ov82_0211fad0
FUN_ov82_0211fad0: ; 0x0211FAD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, #0
	mov r5, r0
	sub r2, r4, #1
	mov r1, #0xf
	strh r1, [r5, #0x3c]
	add r0, r5, #0x58
	ldr r3, _0211FD74 ; =0x020EAB04
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	strb r4, [r5, #0x14]
	str r2, [r5, #0x1c]
	str r2, [r5, #0x20]
	str r2, [r5, #0x18]
	strb r4, [r5, #0x39]
	strb r4, [r5, #0x42b]
	strb r4, [r5, #0x42a]
	strb r4, [r5, #0x429]
	strb r4, [r5, #0x428]
	strb r4, [r5, #0x42c]
	strb r4, [r5, #0x41]
	strb r4, [r5, #0x40]
	strb r4, [r5, #0x3f]
	str r4, [r5, #0x34]
	strb r4, [r5, #0x24]
	str r2, [r5, #0x28]
	str r2, [r5, #0x2c]
	str r4, [r5, #0x30]
	strb r4, [r5, #0x3e]
	mov r6, #0x80000000
	str r6, [r3]
	str r6, [r3, #4]
	str r6, [r3, #8]
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0xc8
	str r6, [r3, #0xc]
	mov r7, #1
	mov r11, r4
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x44
	mov r2, #0x24
	bl MI_CpuFill8
	add r0, r5, #0x34
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r5, #0x58
	add r10, r0, #0x400
	mov r9, #8
	mov r8, #2
	mov r6, #0x14
	b _0211FBC0
_0211FBAC:
	mla r0, r4, r6, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_020f2fa8
	add r4, r4, #1
_0211FBC0:
	cmp r4, #4
	blt _0211FBAC
	add r0, r5, #0x58
	mov r4, #0
	add r10, r0, #0x400
	mov r9, #0x16
	mov r8, #2
	mov r6, #0x14
	b _0211FBFC
_0211FBE4:
	add r1, r4, #4
	mla r0, r1, r6, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_020f2fa8
	add r4, r4, #1
_0211FBFC:
	cmp r4, #5
	blt _0211FBE4
	ldr r0, _0211FD78 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211FC20
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211FC34
_0211FC20:
	add r0, r5, #0x10c
	add r0, r0, #0x400
	mov r1, #0xe
	mov r2, #3
	bl FUN_ov16_020f2fa8
_0211FC34:
	ldr r0, _0211FD7C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5a58
	ldr r0, _0211FD78 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211FC60
	mov r0, r5
	bl FUN_ov82_0211cb3c
	cmp r0, #0
	bne _0211FC6C
_0211FC60:
	ldr r0, _0211FD80 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213629c
_0211FC6C:
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov82_0211efe0
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x38
	ldr r0, _0211FD80 ; =0x02099EF0
	moveq r4, #0
	ldr r0, [r0]
	ldrb r0, [r0, #0x32b]
	cmp r0, #0
	bne _0211FCB4
	mov r0, r5
	bl FUN_ov82_0211cb3c
	cmp r0, #0
	movne r5, #1
	bne _0211FD00
_0211FCB4:
	ldr r0, _0211FD78 ; =0x020A0640
	mov r5, #0
	ldrb r1, [r0, #0x8f]
	cmp r1, #0
	beq _0211FD00
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211FD00
	ldr r0, _0211FD80 ; =0x02099EF0
	mov r1, r7
	ldr r0, [r0]
	bl FUN_ov126_02135bfc
	cmp r0, #0
	beq _0211FD00
	ldr r0, _0211FD84 ; =0x02099F14
	mov r1, r7
	ldr r0, [r0]
	bl FUN_ov1_020df110
	mov r4, r7
_0211FD00:
	cmp r5, #0
	ldr r5, _0211FD80 ; =0x02099EF0
	mov r1, #1
	ldr r0, [r5]
	moveq r1, #0
	bl FUN_ov126_02133b8c
	ldr r0, [r5]
	mov r6, #0
	strb r6, [r0, #0x32b]
	ldr r0, [r5]
	bl FUN_ov132_02147e9c
	b _0211FD3C
_0211FD30:
	ldr r0, [r5]
	bl FUN_ov126_02137644
	add r6, r6, #1
_0211FD3C:
	cmp r6, #0x10
	blt _0211FD30
	ldr r0, _0211FD88 ; =0x0209A114
	ldr r0, [r0]
	bl FUN_ov1_020de1e8
	ldr r5, _0211FD84 ; =0x02099F14
	ldr r1, _0211FD8C ; =0x00005A69
	ldr r0, [r5]
	mov r2, r4
	bl FUN_ov1_020df1dc
	ldr r0, [r5]
	str r7, [r0, #0x1e4]
	str r11, [r0, #0x208]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FD74: .word ov1_020EAB04
_0211FD78: .word unk_020A0640
_0211FD7C: .word unk_0209F5C0
_0211FD80: .word unk_02099EF0
_0211FD84: .word unk_02099F14
_0211FD88: .word unk_0209A114
_0211FD8C: .word 0x00005A69
	arm_func_end FUN_ov82_0211fad0

	arm_func_start FUN_ov82_0211fd90
FUN_ov82_0211fd90: ; 0x0211FD90
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r5, #1
	bl FUN_0204201c
	cmp r0, #0x38
	ldr r0, _0211FE2C ; =0x020A0640
	moveq r5, #0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldr r0, _0211FE30 ; =0x02099F14
	movne r5, #1
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov1_020df110
	mov r5, #0
	ldr r0, _0211FE34 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f5af0
	ldr r0, _0211FE38 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_02135878
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	mov r0, r4
	str r5, [r4, #8]
	bl FUN_ov82_0211f61c
	add r0, r4, #0x520
	mov r1, #0x29
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov82_0211f5f4
	add r0, r4, #0x58
	add r0, r0, #0x400
	mov r1, #0xa
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r3, r4, r5, pc}
_0211FE2C: .word unk_020A0640
_0211FE30: .word unk_02099F14
_0211FE34: .word unk_0209F5C0
_0211FE38: .word unk_02099EF0
	arm_func_end FUN_ov82_0211fd90

	arm_func_start FUN_ov82_0211fe3c
FUN_ov82_0211fe3c: ; 0x0211FE3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov82_0211fe3c

	arm_func_start FUN_ov82_0211fe50
FUN_ov82_0211fe50: ; 0x0211FE50
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov82_0211fe50

	arm_func_start FUN_ov82_0211fe58
FUN_ov82_0211fe58: ; 0x0211FE58
	bx lr
	arm_func_end FUN_ov82_0211fe58

	.byte 0x20
	.global ov82_0211FE5D
ov82_0211FE5D:
	.byte 0x08, 0x10, 0x00, 0x18, 0x00, 0x00, 0x00
	.global ov82_0211FE64
ov82_0211FE64:
	.byte 0x0C, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00
	.global ov82_0211FE70
ov82_0211FE70:
	.byte 0x01, 0x02, 0x03, 0x05, 0x09, 0x06, 0x0A, 0x07, 0x0B, 0x07, 0x0C, 0x07
	.byte 0x29, 0xFF, 0x00, 0x00
	.global ov82_0211FE80
ov82_0211FE80:
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00
	.global ov82_0211FE90
ov82_0211FE90:
	.byte 0x0D, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00
	.global ov82_0211FEA0
ov82_0211FEA0:
	.byte 0x10, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov82_0211FEC0
ov82_0211FEC0:
	.byte 0x04, 0x01, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x44, 0x01, 0x12, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xF4, 0x00, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x14, 0x01, 0x12, 0x02
	.byte 0x0A, 0x00, 0x00, 0x00, 0x24, 0x01, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x34, 0x01, 0x12, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xF8, 0xFF, 0x11, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0x28, 0x00, 0x12, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x04, 0x00, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x34, 0x00, 0x12, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x44, 0x00, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x64, 0x00, 0x12, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0x74, 0x00, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x94, 0x00, 0x12, 0x02
	.byte 0x10, 0x00, 0x00, 0x00, 0xA4, 0x00, 0x12, 0x02, 0x11, 0x00, 0x00, 0x00, 0xC4, 0x00, 0x12, 0x02
	.byte 0x12, 0x00, 0x00, 0x00, 0xE4, 0x00, 0x12, 0x02, 0x13, 0x00, 0x00, 0x00, 0x54, 0x00, 0x12, 0x02
	.byte 0x14, 0x00, 0x00, 0x00, 0x84, 0x00, 0x12, 0x02, 0x18, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x12, 0x02
	.byte 0x16, 0x00, 0x00, 0x00, 0xD4, 0x00, 0x12, 0x02, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov82_0211ff80
FUN_ov82_0211ff80: ; 0x0211FF80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211FFC8 ; =0x0211FFE0
	str r0, [r4, #0xc]
	ldr r0, _0211FFCC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _0211FFD0 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FFC8: .word ov82_0211FFE0
_0211FFCC: .word 0x00009CCD
_0211FFD0: .word 0x0000EA3C
	arm_func_end FUN_ov82_0211ff80

	.section .sinit, 4
ov82_0211FFD4:
	.word FUN_ov82_0211ff80

	.data
	.global ov82_0211FFE0
ov82_0211FFE0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x77, 0x63, 0x5F, 0x6D, 0x73, 0x67, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x69
	.byte 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x69, 0x30, 0x32, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x64, 0x6E, 0x5F, 0x75, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x64, 0x5F, 0x62, 0x75, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x64, 0x6E, 0x5F, 0x75, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x64, 0x6E, 0x5F, 0x75, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x75, 0x31, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x64, 0x6E, 0x5F, 0x75, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x64, 0x5F, 0x62, 0x75, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x75, 0x31, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x64, 0x5F, 0x62, 0x75, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x75, 0x31, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x64, 0x5F, 0x62, 0x75, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x68, 0x65, 0x6C, 0x70, 0x2E, 0x70, 0x61
	.byte 0x63, 0x00, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x73, 0x74, 0x61, 0x72, 0x74, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x65, 0x72, 0x72, 0x30, 0x31, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x65, 0x72, 0x72, 0x30, 0x32, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x65, 0x72, 0x72, 0x30, 0x33, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x73, 0x74, 0x61, 0x72, 0x74, 0x5F, 0x62
	.byte 0x6B, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x58, 0xFE, 0x11, 0x02, 0x3C, 0xFE, 0x11, 0x02, 0x84, 0xCB, 0x11, 0x02, 0x28, 0xD1, 0x11, 0x02
	.byte 0xD0, 0xFA, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x64, 0xF7, 0x11, 0x02, 0xF0, 0xF9, 0x11, 0x02
	.byte 0x90, 0xFD, 0x11, 0x02, 0x00, 0x9F, 0x11, 0x02, 0x00, 0xB2, 0x02, 0x02, 0x70, 0xA8, 0x11, 0x02
	.byte 0x98, 0xA0, 0x11, 0x02, 0x5C, 0xA8, 0x11, 0x02, 0xEC, 0xA6, 0x11, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0x84, 0xA8, 0x11, 0x02, 0x50, 0xFE, 0x11, 0x02, 0x00, 0xE6, 0x0B, 0x02
	.byte 0x5C, 0xE5, 0x0B, 0x02, 0xBC, 0xE5, 0x0B, 0x02, 0xE0, 0xE5, 0x0B, 0x02
	.global ov82_021201DC
ov82_021201DC:
	.byte 0x83, 0x74, 0x83, 0x40
	.byte 0x83, 0x43, 0x83, 0x5E, 0x81, 0x5B, 0x00, 0x00
	.global ov82_021201E8
ov82_021201E8:
	.byte 0x32, 0x44, 0x5F, 0x30, 0x31, 0x36, 0x00, 0x00
	.global ov82_021201F0
ov82_021201F0:
	.byte 0x4D, 0x50, 0x53, 0x46, 0x72, 0x6D, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov82_021201FC
ov82_021201FC:
	.byte 0x67, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x73, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00
	.global ov82_02120208
ov82_02120208:
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov82_02120210
ov82_02120210:
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov82_02120218
ov82_02120218:
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov82_02120220
ov82_02120220:
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov82_02120228
ov82_02120228:
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov82_02120230
ov82_02120230:
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov82_02120238
ov82_02120238:
	.byte 0x67, 0x6D, 0x64, 0x6E, 0x5F, 0x73, 0x2E, 0x70
	.byte 0x6B, 0x62, 0x00, 0x00
	.global ov82_02120244
ov82_02120244:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov82_02120248
ov82_02120248:
	.byte 0x25, 0x32, 0x64, 0x20, 0x25, 0x2D, 0x31, 0x30
	.byte 0x73, 0x20, 0x81, 0xA8, 0x20, 0x25, 0x32, 0x64, 0x20, 0x25, 0x2D, 0x31, 0x30, 0x73, 0x00, 0x00

	.bss
	.global ov82_02120260
ov82_02120260:
	.space 0x10
	.global ov82_02120270
ov82_02120270:
	.space 0x50


	.include "/macros/function.inc"
	.include "/include/itcm.inc"

	.section .itcm, 4
	arm_func_start FUN_01ff852c
FUN_01ff852c: ; 0x02093E4C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r1
	mov r10, r0
	mov r8, r2
	bl FUN_02040388
	mov r4, r0
	mov r0, r9
	bl FUN_02040388
	mov r5, r0
	cmp r8, #0
	beq _01FF8568
	mov r0, r8
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
_01FF8568:
	ldr r0, _01FF8750 ; =0x00007FFF
	and r1, r4, r0
	and r0, r5, r0
	cmp r1, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r8, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4, asr #4
	mov r4, r0, lsl #1
	add r1, r4, #1
	mov r0, r5, asr #4
	mov r2, r0, lsl #1
	add r0, r2, #1
	ldr r3, _01FF8754 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r6, [r3, r1]
	mov r4, r4, lsl #1
	mov r1, r2, lsl #1
	mov r0, r0, lsl #1
	cmp r6, #0
	ldrsh r5, [r3, r4]
	ldrsh r4, [r3, r1]
	ldrsh r7, [r3, r0]
	beq _01FF8688
	smull r0, r4, r6, r4
	adds r12, r0, #0x800
	ldr r3, [r9]
	ldr r1, [r9, #4]
	ldr r0, [r10, #4]
	adc r9, r4, #0
	mov r4, r12, lsr #0xc
	orr r4, r4, r9, lsl #20
	ldr r2, [r10]
	sub r0, r1, r0
	sub r1, r3, r2
	smull r1, r2, r4, r1
	adds r3, r1, #0x800
	smull r1, r0, r7, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	smull r1, r0, r6, r1
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	smull r12, r9, r7, r5
	adc r0, r0, #0
	adds r7, r12, #0x800
	mov r12, r1, lsr #0xc
	adc r1, r9, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, r1, lsl #20
	orr r3, r3, r2, lsl #20
	orr r12, r12, r0, lsl #20
	sub r0, r3, r12
	sub r1, r4, r7
	bl FX_Div
	mov r4, r0
	smull r1, r0, r4, r5
	adds r1, r1, #0x800
	adc r2, r0, #0
	mov r0, r1, lsr #0xc
	mov r1, r6
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r2, [r10]
	ldr r1, [r10, #4]
	add r2, r4, r2
	b _01FF873C
_01FF8688:
	smull r0, r5, r7, r5
	adds r12, r0, #0x800
	ldr r3, [r10]
	ldr r1, [r10, #4]
	ldr r0, [r9, #4]
	adc r10, r5, #0
	mov r5, r12, lsr #0xc
	orr r5, r5, r10, lsl #20
	ldr r2, [r9]
	sub r0, r1, r0
	sub r1, r3, r2
	smull r1, r2, r5, r1
	adds r3, r1, #0x800
	smull r1, r0, r6, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	smull r1, r0, r7, r1
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	smull r12, r10, r6, r4
	adc r0, r0, #0
	adds r6, r12, #0x800
	mov r12, r1, lsr #0xc
	adc r1, r10, #0
	mov r6, r6, lsr #0xc
	orr r6, r6, r1, lsl #20
	orr r3, r3, r2, lsl #20
	orr r12, r12, r0, lsl #20
	sub r0, r3, r12
	sub r1, r5, r6
	bl FX_Div
	mov r5, r0
	smull r1, r0, r5, r4
	adds r1, r1, #0x800
	adc r2, r0, #0
	mov r0, r1, lsr #0xc
	mov r1, r7
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r2, [r9]
	ldr r1, [r9, #4]
	add r2, r5, r2
_01FF873C:
	add r0, r0, r1
	str r0, [r8, #4]
	str r2, [r8]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_01FF8750: .word 0x00007FFF
_01FF8754: .word FX_SinCosTable_
	arm_func_end FUN_01ff852c

	arm_func_start FUN_01ff8758
FUN_01ff8758: ; 0x01ff8758
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	bl FUN_ov126_021375d4
	mov r4, r0
	mov r0, r6
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_02040138
	mov r1, r0
	mov r0, r6
	bl FUN_ov132_02143cd0
	cmp r0, #1
	bne _01FF87C0
	mov r0, #1
	bl FUN_02040170
	ldr r2, [r0]
	ldr r1, [r0, #8]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r4]
	ldr r0, [r0, #0xc]
	sub r0, r0, #1
	b _01FF87E4
_01FF87C0:
	mov r0, #0
	bl FUN_02040170
	ldr r2, [r0]
	ldr r1, [r0, #8]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r4]
	ldr r0, [r0, #4]
	add r0, r0, #1
_01FF87E4:
	str r0, [r4, #4]
	ldrb r0, [r4, #0x10]
	orr r0, r0, #0x10
	strb r0, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_01ff8758

	arm_func_start FUN_01ff87f8
FUN_01ff87f8: ; 0x01ff87f8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, _01FF894C ; =0x0209BA20
	bl FUN_0207318c
	add r1, r4, #0x300
	mov r5, r0
	ldrsb r0, [r1, #0x32]
	bl FUN_ov16_020efa80
	movs r6, r0
	mvneq r0, #0
	streqb r0, [r4, #0x332]
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_02073e40
	cmp r0, #0
	mov r0, r4
	bne _01FF8844
	bl FUN_ov132_02145354
	ldmfd sp!, {r4, r5, r6, pc}
_01FF8844:
	bl FUN_ov132_021447c8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _01FF8950 ; =0x0209A2C0
	ldrb r0, [r0, #0x5b]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _01FF88A8
	mov r0, r4
	bl FUN_ov132_02145374
	cmp r0, #1
	beq _01FF889C
	mov r0, r4
	bl FUN_ov132_02145374
	cmp r0, #3
	bne _01FF88A8
_01FF889C:
	mov r0, r4
	bl FUN_ov132_02145354
	ldmfd sp!, {r4, r5, r6, pc}
_01FF88A8:
	mov r0, r4
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _01FF88CC
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov132_02145354
	ldmfd sp!, {r4, r5, r6, pc}
_01FF88CC:
	ldr r0, [r4, #0x340]
	cmp r0, #3
	bne _01FF88E4
	mov r0, r4
	mov r1, #4
	b _01FF88FC
_01FF88E4:
	cmp r0, #2
	mov r0, r4
	bne _01FF88F8
	mov r1, #2
	b _01FF88FC
_01FF88F8:
	mov r1, #3
_01FF88FC:
	bl FUN_ov132_0214478c
	mov r0, r4
	mov r1, #7
	bl FUN_ov132_021447d0
	mov r0, r6
	bl FUN_02040148
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02144778
	mov r5, #4
	ldr r2, _01FF8954 ; =0x00010008
	mov r0, r4
	mov r1, r5
	str r5, [r4, #0x1c0]
	str r2, [r4, #0x1bc]
	bl FUN_ov132_0214fda0
	sub r0, r5, #5
	strb r0, [r4, #0x332]
	strb r0, [r4, #0x333]
	ldmfd sp!, {r4, r5, r6, pc}
_01FF894C: .word 0x0209BA20
_01FF8950: .word 0x0209A2C0
_01FF8954: .word 0x00010008
	arm_func_end FUN_01ff87f8

	arm_func_start FUN_01ff8958
FUN_01ff8958: ; 0x01ff8958
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov132_02144780
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _01FF89B8 ; =0x0209A2C0
	mov r4, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov126_0212d608
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, _01FF89BC ; =0x0209A2E8
	mov r0, r6
	mov r2, r5
	mov r3, #0
	bl FUN_ov132_0214c034
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0212fbf4
	ldmfd sp!, {r4, r5, r6, pc}
_01FF89B8: .word 0x0209A2C0
_01FF89BC: .word 0x0209A2E8
	arm_func_end FUN_01ff8958

	arm_func_start FUN_01ff89c0
FUN_01ff89c0: ; 0x020942E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #1
	mov r4, r0
	mov r1, r6
	ldr r5, _01FF8BE8 ; =0x0209A2C0
	bl FUN_ov132_0214fda0
	mov r0, r4
	mov r1, r6
	bl FUN_ov132_02147c64
	mov r0, r4
	bl FUN_ov132_02147e9c
	mov r0, r4
	bl FUN_01ff9578
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl FUN_ov132_021447c8
	cmp r0, #7
	bne _01FF8A3C
	add r0, r4, #0x74
	bl FUN_02040a80
	cmp r0, #0
	ldrne r0, [r5, #0x28]
	add r1, r4, #0x74
	strne r0, [r4, #0x74]
	ldrne r0, [r5, #0x2c]
	mov r2, #0x1000
	strne r0, [r4, #0x78]
	mov r0, r4
	bl FUN_ov132_0213f644
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FF8A3C:
	mov r0, r4
	bl FUN_ov132_021447c8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x48]
	ldr r7, [r5, #0x2c]
	cmp r0, #0
	ldrlt r0, [r5, #0x4c]
	bl FUN_ov16_020efa80
	mov r6, r0
	mov r0, r4
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _01FF8ABC
	cmp r6, #0
	beq _01FF8AB0
	mov r0, r6
	bl FUN_02040148
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02144778
	mov r0, r4
	bl FUN_ov132_02144f4c
	cmp r0, #0
	beq _01FF8ABC
	mov r0, r4
	mov r1, #2
	bl FUN_ov126_02136d84
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FF8AB0:
	mov r0, r4
	mov r1, #0
	bl FUN_ov132_02144778
_01FF8ABC:
	ldr r0, _01FF8BEC ; =0x0209A720
	ldr r1, [r0, #0xe0]
	cmp r7, r1
	movle r7, #0
	ble _01FF8B2C
	ldr r0, [r0, #0xe8]
	cmp r7, r0
	movge r7, #1
	bge _01FF8B2C
	ldr r0, _01FF8BF0 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, #5
	bl FUN_ov132_0214478c
	mov r0, r4
	mov r1, #2
	bl FUN_ov132_021447d0
	ldrb r1, [r5, #0x58]
	mov r0, r4
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	movne r1, #3
	movne r0, #7
	strne r1, [r4, #0x1c0]
	strne r0, [r4, #0x1bc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FF8B2C:
	mov r0, r4
	bl FUN_ov132_02144780
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _01FF8BF0 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	beq _01FF8B64
	mov r0, r6
	bl FUN_ov16_020f07d0
	cmp r7, r0
	bne _01FF8BA0
_01FF8B64:
	mov r0, r4
	mov r1, #6
	bl FUN_ov132_0214478c
	mov r6, #3
	mov r0, r4
	mov r1, r6
	bl FUN_ov132_021447d0
	ldrb r1, [r5, #0x58]
	mov r0, r4
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	movne r0, #7
	strne r6, [r4, #0x1c0]
	strne r0, [r4, #0x1bc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FF8BA0:
	mov r6, #7
	mov r0, r4
	mov r1, r6
	bl FUN_ov132_0214478c
	mov r0, r4
	mov r1, #4
	bl FUN_ov132_021447d0
	ldrb r1, [r5, #0x59]
	mov r0, r4
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0x58]
	cmp r0, #0x10
	moveq r0, #3
	streq r0, [r4, #0x1c0]
	streq r6, [r4, #0x1bc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FF8BE8: .word 0x0209A2C0
_01FF8BEC: .word 0x0209A720
_01FF8BF0: .word 0x0209BA20
	arm_func_end FUN_01ff89c0

	arm_func_start FUN_01ff8bf4
FUN_01ff8bf4: ; 0x01ff8bf4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r3, [r1, #0x4c]
	ldrb r1, [r1, #0x5e]
	cmp r2, r3
	addne sp, sp, #8
	ldmnefd sp!, {r3, pc}
	sub r1, r1, #1
	cmp r1, #6
	addhi sp, sp, #8
	ldmhifd sp!, {r3, pc}
	mov r12, #1
	mov r1, r2
	str r12, [sp]
	sub r2, r12, #2
	mov r3, #4
	str r12, [sp, #4]
	bl FUN_ov132_0214f5b0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_01ff8bf4

	arm_func_start FUN_01ff8c44
FUN_01ff8c44: ; 0x01ff8c44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r5, #0
	str r2, [sp, #8]
	mov r9, r1
	mov r10, r0
	ldr r4, _01FF9374 ; =0x0209A2C0
	str r3, [sp, #0xc]
	mov r1, r5
	str r1, [sp, #0x10]
	str r5, [sp, #0x24]
	mov r0, r9
	ldr r5, [r4, #0x4c]
	bl FUN_ov16_020efa80
	movs r6, r0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	bl FUN_ov16_020efa80
	mov r11, r0
	mov r0, r10
	bl FUN_ov132_02144780
	str r0, [sp, #0x20]
	mov r1, r4
	mov r0, r10
	mov r2, r9
	bl FUN_01ff8bf4
	ldr r8, [sp, #0x24]
	cmp r11, #0
	mov r4, r8
	mov r7, r8
	beq _01FF8CD8
	mov r0, r11
	mov r1, r6
	bl FUN_ov16_020f0728
	cmp r0, #0
	movne r7, #1
_01FF8CD8:
	cmp r7, #0
	beq _01FF8CF8
	ldr r1, _01FF9374 ; =0x0209A2C0
	mov r0, r10
	ldrb r1, [r1, #0x58]
	bl FUN_ov126_0212d500
	cmp r0, #0
	moveq r4, #1
_01FF8CF8:
	cmp r4, #0
	beq _01FF8D18
	ldr r1, _01FF9374 ; =0x0209A2C0
	mov r0, r10
	ldrb r1, [r1, #0x58]
	bl FUN_ov126_0212d4dc
	cmp r0, #0
	moveq r8, #1
_01FF8D18:
	mov r1, #1
	cmp r8, #0
	moveq r1, #0
	ldr r0, _01FF9374 ; =0x0209A2C0
	strb r1, [r10, #0x367]
	ldrb r1, [r0, #0x58]
	mov r0, r10
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	ldr r0, _01FF9374 ; =0x0209A2C0
	mov r8, #1
	ldrb r0, [r0, #0x5b]
	moveq r8, #0
	ldr r1, _01FF9374 ; =0x0209A2C0
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x1c]
	moveq r0, #0
	streq r0, [sp, #0x1c]
	ldr r0, _01FF9374 ; =0x0209A2C0
	ldrb r0, [r0, #0x5f]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x18]
	moveq r0, #0
	streq r0, [sp, #0x18]
	ldrb r1, [r1, #0x58]
	mov r0, r10
	bl FUN_ov126_0212d500
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x14]
	moveq r0, #0
	streq r0, [sp, #0x14]
	ldr r0, _01FF9374 ; =0x0209A2C0
	ldrb r0, [r0, #0x5f]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _01FF8DF0
	ldr r0, _01FF9374 ; =0x0209A2C0
	ldrb r0, [r0, #0x5f]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _01FF8DF8
_01FF8DF0:
	mov r0, #1
	strb r0, [sp, #0x50]
_01FF8DF8:
	ldr r4, _01FF9374 ; =0x0209A2C0
	mov r1, r9
	mov r0, r4
	bl FUN_ov126_0212fca8
	cmp r0, #0
	beq _01FF8E1C
	mov r0, r4
	mov r1, #1
	bl FUN_ov126_0212fc30
_01FF8E1C:
	mov r0, r9, lsl #0x18
	mov r1, r0, asr #0x18
	ldr r0, _01FF9374 ; =0x0209A2C0
	cmp r9, #0
	str r1, [r0, #0x48]
	mvnge r1, #0
	strge r1, [r0, #0x4c]
	ldr r7, _01FF9374 ; =0x0209A2C0
	mov r0, #0x80000000
	str r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	ldrb r2, [r7, #0x58]
	mov r4, #0
	mov r0, r7
	strb r2, [r7, #0x59]
	mov r1, r4
	strb r4, [r7, #0x58]
	bl FUN_ov126_0212fce8
	strb r4, [r7, #0x5c]
	strb r4, [r7, #0x5e]
	strb r4, [r7, #0x5f]
	mov r0, r10
	mov r1, r9
	strh r4, [r7, #0x54]
	bl FUN_01ffbcb0
	cmp r0, #0
	beq _01FF8E9C
	mov r0, r6
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021513d4
_01FF8E9C:
	ldr r0, _01FF9378 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _01FF8ED0
	mov r0, r6
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021447fc
	cmp r0, #0
	beq _01FF8F18
	bl FUN_020404cc
	b _01FF8F18
_01FF8ED0:
	mov r7, #0
	b _01FF8F10
_01FF8ED8:
	mov r0, r6
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r7
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _01FF8F0C
	mov r0, r10
	mov r1, r7
	bl FUN_ov132_02144808
	cmp r0, #0
	beq _01FF8F0C
	bl FUN_020404cc
_01FF8F0C:
	add r7, r7, #1
_01FF8F10:
	cmp r7, #5
	blt _01FF8ED8
_01FF8F18:
	cmp r11, #0
	cmpne r6, #0
	beq _01FF9004
	mov r0, r6
	bl FUN_0206d6b0
	cmp r0, #0
	beq _01FF9004
	bl FUN_ov16_020f066c
	cmp r0, #0
	bne _01FF9004
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	cmpeq r8, #0
	ldreq r0, [sp, #0x14]
	cmpeq r0, #0
	ldreqb r0, [sp, #0x50]
	cmpeq r0, #0
	bne _01FF8F6C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _01FF8F94
_01FF8F6C:
	mov r0, r10
	mov r4, #0
	mov r1, r4
	mov r2, r4
	bl FUN_ov132_02151f58
	mov r2, r4
	mov r0, r10
	mov r1, #1
	bl FUN_ov132_02151f58
	b _01FF9004
_01FF8F94:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _01FF8FC8
	mov r0, r11
	mov r1, r6
	bl FUN_ov16_020f0728
	cmp r0, #0
	beq _01FF8FC8
	mov r0, r10
	mov r1, #0
	mov r2, r6
	bl FUN_ov132_0214f3cc
	b _01FF9004
_01FF8FC8:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _01FF9004
	cmp r9, r5
	bne _01FF9004
	mov r0, r10
	mov r1, #1
	mov r2, r6
	bl FUN_ov132_0214f3cc
	mov r0, r6
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	mov r2, #0
	bl FUN_ov132_02151f58
_01FF9004:
	cmp r11, #0
	cmpne r6, #0
	beq _01FF90B4
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	cmpeq r8, #0
	ldreq r0, [sp, #0x14]
	cmpeq r0, #0
	ldreqb r0, [sp, #0x50]
	cmpeq r0, #0
	bne _01FF903C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _01FF9040
_01FF903C:
	b _01FF90A8
_01FF9040:
	cmp r9, r5
	beq _01FF90B4
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _01FF909C
	mov r0, r11
	mov r1, r6
	bl FUN_ov16_020f0728
	cmp r0, #0
	beq _01FF909C
	mov r0, r6
	bl FUN_0206d5f0
	add r0, r10, r0
	ldrb r0, [r0, #0x364]
	cmp r0, #0x80
	bhs _01FF90B4
	mov r0, r6
	bl FUN_0206d5f0
	add r2, r10, #0x364
	ldrb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, r0]
	b _01FF90B4
_01FF909C:
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_02152ca8
_01FF90A8:
	mov r0, #0
	strb r0, [r10, #0x364]
	strb r0, [r10, #0x365]
_01FF90B4:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _01FF92CC
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _01FF92CC
	cmp r8, #0
	beq _01FF913C
	cmp r5, #0
	blt _01FF913C
	mov r0, r10
	bl FUN_ov126_021375d4
	str r0, [sp, #0x24]
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _01FF9124
	mov r0, r5
	mov r1, r9
	bl FUN_ov16_020f06d8
	cmp r0, #0
	bne _01FF9124
	mov r0, r10
	ldr r1, [sp, #0x24]
	mov r2, #2
	mov r3, #0
	b _01FF9134
_01FF9124:
	ldr r1, [sp, #0x24]
	mov r0, r10
	mov r2, #0
	mov r3, #4
_01FF9134:
	bl FUN_ov126_021374a8
	str r0, [sp, #0x24]
_01FF913C:
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _01FF9224
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02138ec0
	cmp r0, #0
	beq _01FF91F4
	mov r0, r6
	bl FUN_0206d6c4
	cmp r0, #0
	beq _01FF9194
	mov r3, #0
	mov r0, r10
	mov r1, r6
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r2, #0x3c
	bl FUN_ov132_0213c29c
_01FF9194:
	cmn r5, #1
	ble _01FF91F4
	ldr r0, _01FF9374 ; =0x0209A2C0
	mov r1, r5
	ldr r0, [r0, #0x48]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	bne _01FF91F4
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldrb r4, [r1, #0x1a]
	bl FUN_0206da78
	mov r1, #0
	str r1, [sp, #0x10]
	mov r1, r1
	stmia sp, {r1, r8}
	mov r2, r0
	mov r3, r4
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_0214a270
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x10]
_01FF91F4:
	ldr r0, [sp, #0x10]
	mov r2, #0
	cmp r0, #0
	bne _01FF9224
	ldr r0, [r6, #0x84]
	mov r1, r6
	ldrb r3, [r0, #0x1a]
	ldr r0, _01FF937C ; =0x02099F14
	str r2, [sp]
	ldr r0, [r0]
	mov r2, #8
	bl FUN_ov1_020e3c14
_01FF9224:
	cmp r8, #0
	beq _01FF9288
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _01FF9288
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _01FF9288
	mov r0, r11
	mov r1, r6
	bl FUN_ov16_020f0728
	cmp r0, #0
	bne _01FF9288
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _01FF9288
	mov r0, r10
	mov r1, #0xd
	bl FUN_ov132_021447d0
	mov r1, #2
	mov r0, #7
	str r1, [r10, #0x1c0]
	str r0, [r10, #0x1bc]
_01FF9288:
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_02142cc4
	cmp r0, #0
	beq _01FF92A8
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_0214a708
_01FF92A8:
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	ldreq r0, [sp, #0x20]
	cmpeq r0, #0
	bne _01FF92CC
	mov r0, #2
	bl FUN_ov16_020f05c8
_01FF92CC:
	mov r0, r9
	ldr r5, _01FF9374 ; =0x0209A2C0
	mov r4, #1
	bl FUN_ov16_020efa80
	mov r1, r0
	ldrb r3, [sp, #0x54]
	ldr r2, [sp, #0xc]
	mov r0, r10
	bl FUN_ov132_0214f7f0
	ldr r0, [sp, #0x20]
	cmp r0, #5
	beq _01FF930C
	cmp r0, #7
	beq _01FF9320
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FF930C:
	mov r0, #0x1c000
	str r0, [r5, #0x30]
	str r0, [r5, #8]
	mov r2, #6
	b _01FF9324
_01FF9320:
	mov r2, #0
_01FF9324:
	ldr r0, _01FF9380 ; =0x0209A720
	ldr r1, [r5]
	ldr r0, [r0, #0xd4]
	mov r3, #2
	cmp r1, r0
	ldr r1, [r6, #0x84]
	movge r3, #6
	ldrb r0, [r1, #0x1a]
	cmp r3, r0
	ldreqb r0, [r1, #0x1d]
	cmpeq r2, r0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _01FF937C ; =0x02099F14
	str r4, [sp]
	ldr r0, [r0]
	mov r1, r6
	bl FUN_ov1_020e3c14
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FF9374: .word 0x0209A2C0
_01FF9378: .word 0x020A0640
_01FF937C: .word 0x02099F14
_01FF9380: .word 0x0209A720
	arm_func_end FUN_01ff8c44

	arm_func_start FUN_01ff9384
FUN_01ff9384: ; 0x02094CA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	cmp r2, #0
	ldr r4, _01FF951C ; =0x0209A2C0
	beq _01FF94E0
	ldr r2, [r6, #0x84]
	ldr r0, [r4]
	ldr r1, [r2]
	mov r3, #1
	cmp r0, r1
	ldreq r1, [r2, #4]
	ldreq r0, [r4, #4]
	mov r5, #1
	cmpeq r0, r1
	moveq r3, #0
	cmp r3, #0
	mov r0, r7
	mov r1, r6
	moveq r5, #0
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	beq _01FF9400
	ldr r1, [r6, #0x84]
	ldr r0, [r4, #4]
	ldr r1, [r1, #4]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r0, #0x4b000
	movlt r5, #0
	b _01FF9434
_01FF9400:
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _01FF9434
	mov r0, r6
	bl FUN_ov16_020f07d0
	mov r1, r0
	ldr r2, [r6, #0x84]
	mov r0, r7
	bl FUN_ov132_02140b50
	cmp r0, #0
	movne r5, #0
_01FF9434:
	cmp r5, #0
	beq _01FF9450
	ldr r0, [r6, #0x84]
	mov r1, r4
	bl FUN_020403a8
	mov r5, r0
	b _01FF94C0
_01FF9450:
	mov r0, r6
	bl FUN_ov16_020f07d0
	cmp r0, #1
	mov r5, #0x4000
	mov r0, r7
	mov r1, r6
	movne r5, #0xc000
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	beq _01FF94C0
	ldr r0, [r6, #0x84]
	mov r1, r4
	bl FUN_020403a8
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_020403d4
	cmp r0, #0x1000
	addgt r0, r5, #0x1000
	movgt r0, r0, lsl #0x10
	movgt r5, r0, lsr #0x10
	bgt _01FF94C0
	mov r1, #0x1000
	rsb r1, r1, #0
	cmp r0, r1
	addlt r0, r5, #0xf000
	movlt r0, r0, lsl #0x10
	movlt r5, r0, lsr #0x10
_01FF94C0:
	ldr r1, [r6, #0x84]
	mov r0, r5
	strh r5, [r1, #0x18]
	bl FUN_ov16_020efd3c
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_0206daf8
_01FF94E0:
	ldr r0, [r6, #0x88]
	mov r2, #0
	str r2, [r0, #0x10]
	ldr r1, [r6, #0x88]
	ldr r0, _01FF9520 ; =0x02099F14
	str r2, [r1, #0x14]
	ldr r3, [r6, #0x88]
	mov r1, r6
	str r2, [r3, #0x18]
	ldr r3, [r6, #0x84]
	ldrb r3, [r3, #0x1a]
	str r2, [sp]
	ldr r0, [r0]
	bl FUN_ov1_020e3c14
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FF951C: .word 0x0209A2C0
_01FF9520: .word 0x02099F14
	arm_func_end FUN_01ff9384

	arm_func_start FUN_01ff9524
FUN_01ff9524: ; 0x02094E44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov132_021447c8
	mov r4, r0
	mov r0, r5
	bl FUN_ov132_02144780
	mov r2, r0
	ldr r0, [r5, #0x198]
	mov r1, r4
	ldr r3, [r0]
	ldr r3, [r3, #8]
	blx r3
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov132_02150900
	mov r0, r5
	bl FUN_ov132_02145de0
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_01ff9524

	arm_func_start FUN_01ff9578
FUN_01ff9578: ; 0x02094E98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov132_021447c8
	mov r4, r0
	mov r0, r5
	bl FUN_ov132_02144780
	cmp r0, #1
	bne _01FF95A8
	sub r0, r4, #8
	cmp r0, #4
	movls r0, #1
	ldmlsfd sp!, {r3, r4, r5, pc}
_01FF95A8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_01ff9578

	arm_func_start FUN_01ff95b0
FUN_01ff95b0: ; 0x02094ED0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, _01FF96B0 ; =0x020AF81C
	mov r4, r1
	bl FUN_0204462c
	ldr r1, _01FF96B4 ; =0x00001019
	cmp r0, r1
	bne _01FF95EC
	ldr r0, _01FF96B8 ; =0x020A0640
	ldr r3, [r0, #0xbc]
	cmp r3, #0
	ldrne r2, [r0]
	movne r1, #0
	strne r2, [r3]
	strne r1, [r0, #0xbc]
_01FF95EC:
	ldrb r0, [r5, #0x3b4]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _01FF9610
	cmp r4, #1
	ldmnefd sp!, {r4, r5, r6, pc}
_01FF9610:
	ldr r1, _01FF96BC ; =0x0209C120
	mov r0, r5
	ldrh r4, [r1, #0xc0]
	bl FUN_ov132_021491d4
	smull r1, r0, r4, r0
	adds r2, r1, #0x800
	ldr r6, _01FF96B8 ; =0x020A0640
	adc r1, r0, #0
	mov r2, r2, lsr #0xc
	ldr r0, [r6]
	orr r2, r2, r1, lsl #20
	add r1, r0, r2
	mov r0, r5
	str r1, [r6]
	bl FUN_ov132_021491d4
	smull r1, r0, r4, r0
	adds r2, r1, #0x800
	adc r1, r0, #0
	mov r2, r2, lsr #0xc
	ldr r0, [r6, #4]
	orr r2, r2, r1, lsl #20
	add r2, r0, r2
	mov r0, r5
	mov r1, r4
	str r2, [r6, #4]
	bl FUN_ov132_021449a4
	mov r0, r5
	bl FUN_ov132_02149210
	cmp r0, #0
	beq _01FF9690
	mov r0, r5
	bl FUN_ov132_021491fc
_01FF9690:
	ldrb r0, [r5, #0x3b5]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1e4]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r5, #0x1e4]
	ldmfd sp!, {r4, r5, r6, pc}
_01FF96B0: .word 0x020AF81C
_01FF96B4: .word 0x00001019
_01FF96B8: .word 0x020A0640
_01FF96BC: .word 0x0209C120
	arm_func_end FUN_01ff95b0

	arm_func_start FUN_01ff96c0
FUN_01ff96c0: ; 0x02094FE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0x3b4]
	mov r4, r1
	cmp r2, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov132_02144780
	cmp r0, #0
	cmpne r4, #1
	ldreq r0, _01FF96FC ; =0x0209C120
	ldreq r1, [r5, #0x5c0]
	ldreqh r0, [r0, #0xc0]
	addeq r0, r1, r0
	streq r0, [r5, #0x5c0]
	ldmfd sp!, {r3, r4, r5, pc}
_01FF96FC: .word 0x0209C120
	arm_func_end FUN_01ff96c0

	arm_func_start FUN_01ff9700
FUN_01ff9700: ; 0x01ff9700
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #0
	ldr r11, _01FF9900 ; =0x0209BA20
	mov r10, r0
	mov r9, r1
	mov r5, r8
	mov r4, r8
_01FF971C:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _01FF98F0
	bl FUN_0206d688
	cmp r0, #0
	beq _01FF98F0
	mov r0, r11
	mov r1, r6
	bl FUN_0204fb20
	mov r7, r0
	cmp r9, #0
	beq _01FF9790
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	beq _01FF9790
	ldr r2, [r6, #0x88]
	mov r0, r6
	ldrh r1, [r2, #0x1e]
	sub r1, r1, #1
	strh r1, [r2, #0x1e]
	bl FUN_0206d9f8
	cmp r0, #0
	bne _01FF9790
	mov r0, r10
	mov r1, r6
	mov r2, #0
	bl FUN_ov132_0215215c
_01FF9790:
	ldr r1, [r6, #0x84]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	beq _01FF97D0
	sub r0, r0, #1
	strh r0, [r1, #0x12]
	ldr r1, [r6, #0x84]
	ldrh r0, [r1, #0x14]
	add r0, r0, #1
	strh r0, [r1, #0x14]
	ldr r1, [r6, #0x84]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	streqb r5, [r1, #0x1c]
	streqh r5, [r1, #0x12]
	streqh r5, [r1, #0x14]
_01FF97D0:
	ldr r1, [r6, #0x88]
	ldrsh r0, [r1, #0x24]
	cmp r0, #0
	ldrgtsh r0, [r1, #0x24]
	subgt r0, r0, #1
	strgth r0, [r1, #0x24]
	ldr r1, [r6, #0x88]
	ldrsh r0, [r1, #0x26]
	cmp r0, #0
	ldrgtsh r0, [r1, #0x26]
	subgt r0, r0, #1
	strgth r0, [r1, #0x26]
	bgt _01FF9810
	mov r0, r6
	mov r1, #0x100
	bl FUN_0206dadc
_01FF9810:
	ldr r1, [r6, #0x88]
	ldrb r0, [r1, #0x30]
	cmp r0, #0
	ldrneb r0, [r1, #0x30]
	subne r0, r0, #1
	strneb r0, [r1, #0x30]
	mov r0, r6
	bl FUN_0206d728
	cmp r0, #0
	ldrne r1, [r6, #0x88]
	ldrnesh r0, [r1, #0x22]
	subne r0, r0, #1
	strneh r0, [r1, #0x22]
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _01FF9894
	mov r0, r6
	bl FUN_02040aa8
	cmp r0, #0
	beq _01FF9894
	mov r0, r6
	bl FUN_0206da78
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02145300
	cmp r0, #0
	ldrne r1, [r6, #0x88]
	ldrneh r0, [r1, #0x2a]
	addne r0, r0, #1
	strneh r0, [r1, #0x2a]
	bne _01FF98C4
_01FF9894:
	mov r0, r6
	bl FUN_02040aa8
	cmp r0, #0
	beq _01FF98C4
	mov r0, r10
	mov r1, r6
	bl FUN_01ffba18
	cmp r0, #0
	ldreq r1, [r6, #0x88]
	ldreqh r0, [r1, #0x2a]
	addeq r0, r0, #1
	streqh r0, [r1, #0x2a]
_01FF98C4:
	cmp r7, #0
	ldrneb r0, [r7, #0x1f]
	cmpne r0, #0
	beq _01FF98F0
	ldrsh r0, [r7, #0x22]
	cmp r0, #0
	subgt r0, r0, #1
	strgth r0, [r7, #0x22]
	strleb r4, [r7, #0x1f]
	strleb r4, [r7, #0x20]
	strleh r4, [r7, #0x22]
_01FF98F0:
	add r8, r8, #1
	cmp r8, #0x20
	blt _01FF971C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FF9900: .word 0x0209BA20
	arm_func_end FUN_01ff9700

	arm_func_start FUN_01ff9904
FUN_01ff9904: ; 0x01ff9904
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _01FF9984 ; =0x0209A720
	ldr r5, _01FF9988 ; =0x0209A2C0
	ldr r2, [r0, #0xd4]
	mov r4, #1
	str r2, [r5]
	ldr r1, [r0, #0xd8]
	mov r6, #0
	str r1, [r5, #4]
	str r6, [r5, #0x30]
	strb r6, [r5, #0x58]
	mov r0, #0x80000000
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	str r2, [r5, #0xc]
	str r1, [r5, #0x10]
	ldr r2, [r5, #8]
	mov r0, r5
	mov r1, r4
	str r2, [r5, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0212fc1c
	str r6, [r5, #0x34]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x30]
	str r6, [r5, #0x40]
	strb r6, [r5, #0x5c]
	strh r6, [r5, #0x54]
	ldmfd sp!, {r4, r5, r6, pc}
_01FF9984: .word 0x0209A720
_01FF9988: .word 0x0209A2C0
	arm_func_end FUN_01ff9904

	arm_func_start FUN_01ff998c
FUN_01ff998c: ; 0x020952AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _01FF9C04 ; =0x0209A720
	ldr r6, [r5, #0xd4]
	cmp r6, #0
	ldreq r2, [r5, #0xd8]
	cmpeq r2, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r1, [r5, #0xa8]
	ldrsh r4, [r5, #0xaa]
	ldrsh r0, [r5, #0xb4]
	add r3, r1, r1, lsr #31
	mov r1, r3, asr #1
	mov lr, r1, lsl #0x10
	add r0, r0, lr, asr #16
	strh r0, [r5, #0xb4]
	add r12, r4, r4, lsr #31
	mov r0, r12, asr #1
	ldrsh r7, [r5, #0xb6]
	mov r4, r0, lsl #0x10
	add r6, r6, r1, lsl #12
	add r7, r7, r4, asr #16
	strh r7, [r5, #0xb6]
	ldrsh r7, [r5, #0xb8]
	add r2, r2, r0, lsl #12
	add r7, r7, lr, asr #16
	strh r7, [r5, #0xb8]
	ldrsh r7, [r5, #0xba]
	add r7, r7, r4, asr #16
	strh r7, [r5, #0xba]
	ldrsh r7, [r5, #0xbc]
	add r7, r7, lr, asr #16
	strh r7, [r5, #0xbc]
	ldrsh r7, [r5, #0xbe]
	add r7, r7, r4, asr #16
	strh r7, [r5, #0xbe]
	ldrsh r7, [r5, #0xc0]
	add r7, r7, lr, asr #16
	strh r7, [r5, #0xc0]
	ldrsh lr, [r5, #0xc2]
	add r4, lr, r4, asr #16
	strh r4, [r5, #0xc2]
	ldr r4, [r5, #0xcc]
	add r3, r4, r3, asr #1
	str r3, [r5, #0xcc]
	ldr r3, [r5, #0xd0]
	add r3, r3, r12, asr #1
	str r3, [r5, #0xd0]
	str r6, [r5, #0xd4]
	str r2, [r5, #0xd8]
	ldr r2, [r5, #0xdc]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0xdc]
	ldr r2, [r5, #0xe0]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0xe0]
	ldr r2, [r5, #0xe4]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0xe4]
	ldr r2, [r5, #0xe8]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0xe8]
	ldr r2, [r5, #0xec]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0xec]
	ldr r2, [r5, #0xf0]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0xf0]
	ldr r2, [r5, #0xf4]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0xf4]
	ldr r2, [r5, #0xf8]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0xf8]
	ldr r2, [r5, #0xfc]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0xfc]
	ldr r2, [r5, #0x100]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x100]
	ldr r2, [r5, #0x104]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x104]
	ldr r2, [r5, #0x108]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x108]
	ldr r2, [r5, #0x10c]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x10c]
	ldr r2, [r5, #0x110]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x110]
	ldr r2, [r5, #0x114]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x114]
	ldr r2, [r5, #0x118]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x118]
	ldr r2, [r5, #0x11c]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x11c]
	ldr r2, [r5, #0x120]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x120]
	ldr r2, [r5, #0x124]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x124]
	ldr r2, [r5, #0x128]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x128]
	ldr r2, [r5, #0x12c]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x12c]
	ldr r2, [r5, #0x130]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x130]
	ldr r2, [r5, #0x134]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x134]
	ldr r2, [r5, #0x138]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x138]
	ldr r2, [r5, #0x13c]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x13c]
	ldr r2, [r5, #0x140]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x140]
	ldr r2, [r5, #0x144]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x144]
	ldr r2, [r5, #0x148]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x148]
	ldr r2, [r5, #0x14c]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x14c]
	ldr r2, [r5, #0x150]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x150]
	ldr r2, [r5, #0x154]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x154]
	ldr r2, [r5, #0x158]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x158]
	ldr r2, [r5, #0x15c]
	add r2, r2, r1, lsl #12
	str r2, [r5, #0x15c]
	ldr r2, [r5, #0x160]
	add r2, r2, r0, lsl #12
	str r2, [r5, #0x160]
	ldr r2, [r5, #0x164]
	add r1, r2, r1, lsl #12
	str r1, [r5, #0x164]
	ldr r1, [r5, #0x168]
	add r0, r1, r0, lsl #12
	str r0, [r5, #0x168]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FF9C04: .word 0x0209A720
	arm_func_end FUN_01ff998c

	arm_func_start FUN_01ff9c08
FUN_01ff9c08: ; 0x01ff9c08
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	bl FUN_01ff9c28
	mov r0, r4
	mov r1, #1
	bl FUN_01ff9c28
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_01ff9c08

	arm_func_start FUN_01ff9c28
FUN_01ff9c28: ; 0x01ff9c28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x118
	ldr r6, _01FFA128 ; =0x0209BA20
	mov r4, r0
	mov r0, r6
	mov r7, r1
	bl FUN_020731b4
	mov r8, #0
	add r5, sp, #0x50
	str r8, [sp]
	mov r3, #0x80
	str r3, [sp, #4]
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, #0x64
	bl FUN_0204b540
	mov r6, r8
	add r7, sp, #0x10
_01FF9C74:
	mov r0, r6, lsl #1
	ldrh r0, [r5, r0]
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r9, r0
	beq _01FF9CB4
	mov r1, #0
	bl FUN_0206d824
	cmp r0, #0
	beq _01FF9CB4
	mov r0, r9
	mov r1, #0
	bl FUN_0206d824
	cmp r0, #0xc
	strlt r9, [r7, r8, lsl #2]
	addlt r8, r8, #1
_01FF9CB4:
	add r6, r6, #1
	cmp r6, #0x64
	blt _01FF9C74
	cmp r8, #0xb
	ble _01FF9CCC
	bl OS_Terminate
_01FF9CCC:
	cmp r8, #0xb
	addlt r1, sp, #0x10
	movlt r0, #0
	strlt r0, [r1, r8, lsl #2]
	cmp r8, #0
	mov r6, #0
	ble _01FF9D04
	add r5, sp, #0x10
_01FF9CEC:
	ldr r1, [r5, r6, lsl #2]
	mov r0, r4
	bl FUN_ov126_02139ae4
	add r6, r6, #1
	cmp r6, r8
	blt _01FF9CEC
_01FF9D04:
	mov r0, #0
	cmp r8, #0
	str r0, [sp, #8]
	addle sp, sp, #0x118
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FF9D18:
	ldr r1, [sp, #8]
	add r5, sp, #0x10
	ldr r9, [r5, r1, lsl #2]
	mov r0, r4
	mov r1, r9
	bl FUN_ov126_0213a3ac
	mov r6, r0
	mov r0, #0
	str r0, [sp, #0xc]
	mov r10, #2
	mov r11, #4
_01FF9D44:
	ldr r1, [sp, #0xc]
	mov r0, r9
	bl FUN_0206cdf8
	mov r7, r0
	cmp r7, #0
	ble _01FFA0F8
	ldr r0, _01FFA128 ; =0x0209BA20
	mov r1, r7
	bl FUN_0204a2c4
	cmp r0, #0
	beq _01FFA0F8
	ldrb r0, [r0]
	cmp r0, #9
	bne _01FFA0F8
	sub r0, r7, #0x33
	cmp r0, #0x1f
	addls pc, pc, r0, lsl #2
	b _01FFA0F8
_01FF9D8C: ; jump table
	b _01FF9E0C ; case 0
	b _01FF9E1C ; case 1
	b _01FF9E64 ; case 2
	b _01FF9EAC ; case 3
	b _01FF9EF4 ; case 4
	b _01FF9F3C ; case 5
	b _01FF9F4C ; case 6
	b _01FF9F5C ; case 7
	b _01FF9F6C ; case 8
	b _01FF9F7C ; case 9
	b _01FF9F8C ; case 10
	b _01FF9F9C ; case 11
	b _01FF9FAC ; case 12
	b _01FF9FBC ; case 13
	b _01FF9FCC ; case 14
	b _01FF9FDC ; case 15
	b _01FF9FEC ; case 16
	b _01FF9FFC ; case 17
	b _01FFA00C ; case 18
	b _01FFA024 ; case 19
	b _01FFA038 ; case 20
	b _01FFA04C ; case 21
	b _01FFA060 ; case 22
	b _01FFA074 ; case 23
	b _01FFA084 ; case 24
	b _01FFA098 ; case 25
	b _01FFA0A8 ; case 26
	b _01FFA0B8 ; case 27
	b _01FFA0C8 ; case 28
	b _01FFA0D8 ; case 29
	b _01FFA0E8 ; case 30
	b _01FFA0F8 ; case 31
_01FF9E0C:
	mov r0, r4
	mov r1, r9
	mov r2, #1
	b _01FFA0F4
_01FF9E1C:
	cmp r8, #0
	mov r7, #0
	ble _01FFA0F8
_01FF9E28:
	mov r0, r4
	ldr r1, [r5, r7, lsl #2]
	bl FUN_ov126_0213a3ac
	cmp r6, r0
	bne _01FF9E4C
	mov r0, r4
	ldr r1, [r5, r7, lsl #2]
	mov r2, r10
	bl FUN_ov126_02139aa4
_01FF9E4C:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, asr #16
	mov r7, r0, asr #0x10
	bgt _01FF9E28
	b _01FFA0F8
_01FF9E64:
	cmp r8, #0
	mov r7, #0
	ble _01FFA0F8
_01FF9E70:
	mov r0, r4
	ldr r1, [r5, r7, lsl #2]
	bl FUN_ov126_0213a3ac
	cmp r0, #4
	bne _01FF9E94
	mov r0, r4
	ldr r1, [r5, r7, lsl #2]
	mov r2, r11
	bl FUN_ov126_02139aa4
_01FF9E94:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, asr #16
	mov r7, r0, asr #0x10
	bgt _01FF9E70
	b _01FFA0F8
_01FF9EAC:
	cmp r8, #0
	mov r7, #0
	ble _01FFA0F8
_01FF9EB8:
	mov r0, r4
	ldr r1, [r5, r7, lsl #2]
	bl FUN_ov126_0213a3ac
	cmp r0, #3
	bne _01FF9EDC
	ldr r1, [r5, r7, lsl #2]
	mov r0, r4
	mov r2, #8
	bl FUN_ov126_02139aa4
_01FF9EDC:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, asr #16
	mov r7, r0, asr #0x10
	bgt _01FF9EB8
	b _01FFA0F8
_01FF9EF4:
	cmp r8, #0
	mov r7, #0
	ble _01FFA0F8
_01FF9F00:
	mov r0, r4
	ldr r1, [r5, r7, lsl #2]
	bl FUN_ov126_0213a3ac
	cmp r0, #2
	bne _01FF9F24
	ldr r1, [r5, r7, lsl #2]
	mov r0, r4
	mov r2, #0x10
	bl FUN_ov126_02139aa4
_01FF9F24:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, asr #16
	mov r7, r0, asr #0x10
	bgt _01FF9F00
	b _01FFA0F8
_01FF9F3C:
	mov r0, r4
	mov r1, r9
	mov r2, #0x20
	b _01FFA0F4
_01FF9F4C:
	mov r0, r4
	mov r1, r9
	mov r2, #0x40
	b _01FFA0F4
_01FF9F5C:
	mov r0, r4
	mov r1, r9
	mov r2, #0x80
	b _01FFA0F4
_01FF9F6C:
	mov r0, r4
	mov r1, r9
	mov r2, #0x100
	b _01FFA0F4
_01FF9F7C:
	mov r0, r4
	mov r1, r9
	mov r2, #0x200
	b _01FFA0F4
_01FF9F8C:
	mov r0, r4
	mov r1, r9
	mov r2, #0x400
	b _01FFA0F4
_01FF9F9C:
	mov r0, r4
	mov r1, r9
	mov r2, #0x800
	b _01FFA0F4
_01FF9FAC:
	mov r0, r4
	mov r1, r9
	mov r2, #0x1000
	b _01FFA0F4
_01FF9FBC:
	mov r0, r4
	mov r1, r9
	mov r2, #0x2000
	b _01FFA0F4
_01FF9FCC:
	mov r0, r4
	mov r1, r9
	mov r2, #0x4000
	b _01FFA0F4
_01FF9FDC:
	mov r0, r4
	mov r1, r9
	mov r2, #0x8000
	b _01FFA0F4
_01FF9FEC:
	mov r0, r4
	mov r1, r9
	mov r2, #0x10000
	b _01FFA0F4
_01FF9FFC:
	mov r0, r4
	mov r1, r9
	mov r2, #0x20000
	b _01FFA0F4
_01FFA00C:
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, #0x40000
_01FFA01C:
	bl FUN_ov126_02139ab4
	b _01FFA0F8
_01FFA024:
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, #0x80000
	b _01FFA01C
_01FFA038:
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, #0x100000
	b _01FFA01C
_01FFA04C:
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, #0x200000
	b _01FFA01C
_01FFA060:
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, #0x400000
	b _01FFA01C
_01FFA074:
	mov r0, r4
	mov r1, r9
	mov r2, #0x800000
	b _01FFA0F4
_01FFA084:
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, #0x1000000
	b _01FFA01C
_01FFA098:
	mov r0, r4
	mov r1, r9
	mov r2, #0x2000000
	b _01FFA0F4
_01FFA0A8:
	mov r0, r4
	mov r1, r9
	mov r2, #0x4000000
	b _01FFA0F4
_01FFA0B8:
	mov r0, r4
	mov r1, r9
	mov r2, #0x8000000
	b _01FFA0F4
_01FFA0C8:
	mov r0, r4
	mov r1, r9
	mov r2, #0x10000000
	b _01FFA0F4
_01FFA0D8:
	mov r0, r4
	mov r1, r9
	mov r2, #0x20000000
	b _01FFA0F4
_01FFA0E8:
	mov r0, r4
	mov r1, r9
	mov r2, #0x40000000
_01FFA0F4:
	bl FUN_ov126_02139aa4
_01FFA0F8:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #6
	blt _01FF9D44
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r8
	blt _01FF9D18
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFA128: .word 0x0209BA20
	arm_func_end FUN_01ff9c28

	arm_func_start FUN_01ffa12c
FUN_01ffa12c: ; 0x02095A4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r6, _01FFAC10 ; =0x0209BA20
	mov r4, r0
	mov r0, r6
	mov r5, #1
	mov r10, #0
	bl FUN_02073184
	mov r9, r0
	mov r0, r6
	bl FUN_0207318c
	mov r8, r10
	mov r11, r0
	mov r0, r6
	mov r1, r8
	bl FUN_0207249c
	str r0, [sp, #0x10]
	mov r0, r6
	mov r1, r5
	bl FUN_0207249c
	str r0, [sp, #0x14]
	b _01FFA1A0
_01FFA184:
	mov r1, r8, lsr #0x1f
	ldr r2, [r4, #0x1c8]
	rsb r0, r1, r8, lsl #27
	add r2, r2, r8, lsl #4
	add r0, r1, r0, ror #27
	strb r0, [r2, #0xc]
	add r8, r8, #1
_01FFA1A0:
	cmp r8, #0x40
	blt _01FFA184
	ldr r0, _01FFAC14 ; =0x02099F78
	ldr r1, _01FFAC18 ; =0x02160304
	bl L5_IniFileGetParam
	mov r7, r0
	cmp r7, #0
	ble _01FFA1C8
	cmp r7, #0x1e
	ble _01FFA1CC
_01FFA1C8:
	mov r7, #0xe
_01FFA1CC:
	mov r0, r7
	bl _fflt
	mov r6, #0x3d800000
	mov r1, r0
	mov r0, r6
	bl _fmul
	mov r1, #0
	bl _fgr
	mov r0, r7
	bls _01FFA220
	bl _fflt
	mov r1, r0
	mov r0, r6
	bl _fmul
	mov r1, r0
	sub r0, r6, #0xf8000000
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _01FFA244
_01FFA220:
	bl _fflt
	mov r1, r0
	mov r0, r6
	bl _fmul
	mov r1, r0
	sub r0, r6, #0xf8000000
	bl _fmul
	mov r1, #0x3f000000
	bl _fsub
_01FFA244:
	bl _ffix
	str r0, [r4, #0x5b4]
	ldr r0, _01FFAC14 ; =0x02099F78
	ldr r1, _01FFAC1C ; =0x02160314
	bl L5_IniFileGetParam
	mov r7, r0
	cmp r7, #0
	ble _01FFA26C
	cmp r7, #0x1e
	ble _01FFA270
_01FFA26C:
	mov r7, #7
_01FFA270:
	mov r0, r7
	bl _fflt
	ldr r6, _01FFAC20 ; =0x3C4CCCCD
	mov r1, r0
	mov r0, r6
	bl _fmul
	mov r1, #0
	bl _fgr
	mov r0, r7
	bls _01FFA2C4
	bl _fflt
	mov r1, r0
	mov r0, r6
	bl _fmul
	mov r1, r0
	ldr r0, _01FFAC24 ; =0x45800000
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _01FFA2E8
_01FFA2C4:
	bl _fflt
	mov r1, r0
	mov r0, r6
	bl _fmul
	mov r1, r0
	ldr r0, _01FFAC24 ; =0x45800000
	bl _fmul
	mov r1, #0x3f000000
	bl _fsub
_01FFA2E8:
	ldr r6, _01FFAC10 ; =0x0209BA20
	bl _ffix
	str r0, [r4, #0x5b8]
	ldr r0, _01FFAC14 ; =0x02099F78
	ldr r1, _01FFAC28 ; =0x02160324
	bl L5_IniFileGetParam
	mov r7, r0
	cmp r7, #0
	movle r7, #0x1000
	mov r0, r4
	mov r1, r10
	mov r2, r10
	str r7, [r4, #0x5bc]
	str r10, [r4, #0x5c0]
	bl FUN_ov132_0214635c
	mov r0, r4
	mov r1, r5
	mov r2, r10
	bl FUN_ov132_0214635c
	strb r5, [r6, #0x88c]
	sub r0, r5, #2
	str r0, [r4, #0x384]
	strb r10, [r4, #0x344]
	mov r0, r4
	str r10, [sp]
	mov r1, r10
	mov r2, #8
	mov r3, r10
	bl FUN_ov132_02148d5c
	add r0, r4, #0x200
	strb r5, [r4, #0x348]
	strb r5, [r4, #0x347]
	strb r5, [r4, #0x376]
	strb r10, [r4, #0x325]
	strb r10, [r4, #0x324]
	str r10, [r4, #0x1e4]
	strh r10, [r0, #0xea]
	strh r10, [r0, #0xe8]
	ldrb r0, [r9, #0xe]
	cmp r0, #5
	bhi _01FFA3F0
	ldr r6, _01FFAC2C ; =0x020A0640
	add pc, pc, r0, lsl #2
	mov r0, r0
	b _01FFA3F0
_01FFA39C: ; jump table
	b _01FFA3B0 ; case 0
	b _01FFA3C4 ; case 1
	b _01FFA3CC ; case 2
	b _01FFA3E0 ; case 3
	b _01FFA3E8 ; case 4
_01FFA3B0:
	mov r0, r4
	strb r5, [r4, #0x39a]
	bl FUN_ov132_02147dec
	strb r10, [r6, #0x8f] ; =0x020a06cf
	b _01FFA3F0
_01FFA3C4:
	mov r0, #0x3
	b _01FFA3EC
_01FFA3CC:
	mov r0, r4
	strb r5, [r4, #0x39a]
	bl FUN_ov132_02147dec
	mov r0, #0x6
	b _01FFA3EC
_01FFA3E0:
	mov r0, #0x9
	b _01FFA3EC
_01FFA3E8:
	mov r0, #0xc
_01FFA3EC:
	strb r0, [r6, #0x8f] ; =0x020a06cf
_01FFA3F0:
	ldr r6, _01FFAC10 ; =0x0209BA20
	ldr r8, _01FFAC2C ; =0x020A0640
	mov r0, r6
	mov r5, #1
	mov r7, #0
	bl FUN_020731a4
	cmp r0, #0
	beq _01FFA458
	ldr r0, _01FFAC30 ; =0x0209A13C
	ldr r2, [r4, #0x5b8]
	ldr r1, [r0]
	mov r0, r4
	bl FUN_01ffb118
	ldr r0, _01FFAC34 ; =0x0209A380
	ldr r1, [sp, #0x10]
	str r0, [r4, #0x198]
	str r0, [r6, #0x7bc]
	ldrh r2, [r1, #0x24]
	ldr r0, [sp, #0x14]
	ldrh r1, [r0, #0x24]
	ldr r0, _01FFAC38 ; =0x0209A454
	str r2, [sp, #8]
	strb r5, [r0, #0x30]
	str r1, [sp, #0xc]
	strb r7, [r0, #0x31]
	b _01FFA4EC
_01FFA458:
	ldr r0, _01FFAC30 ; =0x0209A13C
	ldr r2, [r4, #0x5b8]
	ldr r1, [r0]
	mov r0, r4
	bl FUN_01ffb118
	ldr r0, _01FFAC3C ; =0x0209A320
	ldr r1, [sp, #0x10]
	str r0, [r4, #0x198]
	str r0, [r6, #0x7bc]
	ldrh r5, [r1, #0x22]
	ldr r0, [sp, #0x14]
	ldr r2, _01FFAC38 ; =0x0209A454
	ldrh r3, [r0, #0x22]
	mov r1, r7
	mov r0, r6
	strb r1, [r2, #0x31]
	str r5, [sp, #8]
	str r3, [sp, #0xc]
	strb r1, [r2, #0x30]
	bl FUN_020725ac
	mov r0, r6
	mov r1, #1
	bl FUN_020725ac
	ldrb r0, [r8, #0x1a]
	cmp r0, #0
	ldreq r0, _01FFAC40 ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	beq _01FFA4EC
	mov r0, r6
	mov r1, r7
	mov r2, r7
	bl FUN_02072560
	mov r0, r6
	mov r2, r7
	mov r1, #1
	bl FUN_02072560
_01FFA4EC:
	ldr r0, [r4, #0x198]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [sp, #8]
	mov r8, #0
	cmp r0, #0
	ldrlth r0, [r9, #0x18]
	mov r1, r8
	strlt r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldrlth r0, [r9, #0x1a]
	strlt r0, [sp, #0xc]
	mov r0, r4
	bl FUN_ov132_02143cd0
	mov r2, r0
	ldr r1, [sp, #8]
	mov r0, r6
	mov r3, r8
	bl FUN_0206fb74
	mov r0, r4
	mov r1, #1
	bl FUN_ov132_02143cd0
	mov r2, r0
	ldr r1, [sp, #0xc]
	mov r0, r6
	mov r3, r8
	bl FUN_0206fb74
	ldr r6, _01FFAC2C ; =0x020A0640
	mov r5, #1
	add r2, sp, #0x10
	b _01FFA594
_01FFA570:
	ldr r1, [r2, r8, lsl #2]
	ldrh r0, [r1, #0x28]
	cmp r0, #0
	bne _01FFA590
	add r0, r9, r8, lsl #1
	ldrh r0, [r0, #6]
	cmp r0, #0
	strneh r0, [r1, #0x28]
_01FFA590:
	add r8, r8, #1
_01FFA594:
	cmp r8, #2
	blt _01FFA570
	ldr r0, _01FFAC10 ; =0x0209BA20
	bl FUN_0204fb58
	mov r1, r7
	mov r2, #0x880
	bl MI_CpuFill8
	mov r1, r7
	add r0, r4, #0x19c
	mov r2, #0xe
	bl MI_CpuFill8
	mov r8, #0x18
	add r0, r4, #0x164
	mov r1, r7
	mov r2, r8
	bl MI_CpuFill8
	add r0, r4, #0x17c
	mov r1, r7
	mov r2, r8
	bl MI_CpuFill8
	sub r0, r8, #0x19
	strb r0, [r4, #0x1a7]
	ldrb r0, [r6, #0x8f]
	cmp r0, #0xc
	mov r0, r4
	beq _01FFA620
	mov r1, r5
	bl FUN_ov132_0214478c
	ldrb r0, [r11, #4]
	cmp r0, #1
	mov r0, r4
	beq _01FFA618
	b _01FFA62C
_01FFA618:
	mov r1, r5
	b _01FFA630
_01FFA620:
	mov r1, #8
	bl FUN_ov132_0214478c
	mov r0, r4
_01FFA62C:
	mov r1, r7
_01FFA630:
	bl FUN_ov132_02144778
	mov r8, #0
	mov r0, r4
	mov r1, r8
	bl FUN_ov132_021447d0
	sub r5, r8, #1
	str r8, [r4, #0x1b4]
	str r8, [r4, #0x1b8]
	strb r5, [r4, #0x19e]
	mov r10, #0x18
	b _01FFA698
_01FFA65C:
	ldr r0, [r4, #0x204]
	mov r1, r7
	mla r6, r8, r10, r0
	mov r0, r6
	mov r2, #0x18
	bl MI_CpuFill8
	mov r1, r7
	b _01FFA68C
_01FFA67C:
	add r0, r6, r1
	strb r5, [r0, #4]
	strb r5, [r0, #7]
	add r1, r1, #1
_01FFA68C:
	cmp r1, #3
	blt _01FFA67C
	add r8, r8, #1
_01FFA698:
	cmp r8, #0x10
	blt _01FFA65C
	mov r8, #0
	sub r1, r8, #1
	str r1, [sp, #4]
	ldr r0, _01FFAC44 ; =0x0209A2C0
	str r8, [r4, #0x1c0]
	str r8, [r4, #0x1bc]
	str r1, [r0, #0x48]
	ldr r2, [sp, #4]
	mov r1, r8
	str r2, [r0, #0x4c]
	bl FUN_ov126_0212fbf4
	mov r0, r4
	bl FUN_01ff9904
	add r0, r4, #0x6c
	strb r8, [r4, #0x36d]
	bl FUN_020404cc
	mov r0, r4
	bl FUN_ov132_0214352c
	ldr r0, _01FFAC10 ; =0x0209BA20
	ldr r0, [r0, #0x860]
	bl FUN_02043c5c
	ldr r0, _01FFAC10 ; =0x0209BA20
	mov r1, r8
	mov r2, r8
	bl FUN_020724b8
	mov r5, #2
	add r0, r4, #0x320
	mov r1, r8
	mov r2, r5
	bl MI_CpuFill8
	add r0, r4, #0x22
	mov r2, r5
	add r0, r0, #0x300
	mov r1, r8
	bl MI_CpuFill8
	mov r5, #4
	ldr r0, [r4, #0x200]
	mov r1, r8
	mov r2, r5
	strb r8, [r4, #0x19f]
	bl MI_CpuFill8
	ldr r0, [r4, #0x20c]
	mov r1, r8
	mov r2, r5
	strb r8, [r4, #0x1a5]
	bl MI_CpuFill8
	mov r0, r4
	bl FUN_ov132_02147e9c
	ldr r0, [r4, #0x208]
	mov r2, r5
	mov r1, r8
	strb r8, [r4, #0x1a3]
	bl MI_CpuFill8
	b _01FFA7E0
_01FFA778:
	mov r0, #0x30
	mul r5, r8, r0
	ldr r6, [r4, #0x208]
	mov r1, r7
	add r10, r6, r5
	mov r0, r10
	mov r2, #0x30
	bl MI_CpuFill8
	mov r0, #0xff
	strb r0, [r6, r5]
	ldr r0, [sp, #4]
	add r8, r8, #1
	strb r0, [r10, #0x20]
	strh r7, [r10, #0x22]
	strb r0, [r10, #0x24]
	strh r7, [r10, #0x26]
	strb r0, [r10, #0x28]
	ldrb r0, [r10, #0x29]
	bic r0, r0, #0xf
	and r0, r0, #0xff
	bic r0, r0, #0xf0
	strb r0, [r10, #0x29]
	strh r7, [r10, #0x2a]
	strh r7, [r10, #0x2c]
	strb r7, [r10, #0x2e]
	strb r7, [r10, #0x2f]
_01FFA7E0:
	cmp r8, #0x10
	blt _01FFA778
	ldr r0, _01FFAC48 ; =0x0209A114
	ldr r5, _01FFAC10 ; =0x0209BA20
	ldr r1, [r0]
	cmp r1, #0
	beq _01FFA81C
	ldr r3, _01FFAC4C ; =0x0209A720
	ldr r1, [r3, #0xe8]
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r3, #0xdc]
	ldr r2, [r3, #0xe0]
	ldr r3, [r3, #0xe4]
	bl FUN_ov1_020de558
_01FFA81C:
	mov r8, #0
	mov r0, r5
	mov r1, r8
	bl FUN_020724dc
	mov r6, #0x10
	mov r1, r8
	mov r2, r6
	bl MI_CpuFill8
	mov r0, r5
	mov r1, #1
	bl FUN_020724dc
	mov r2, r6
	mov r1, r8
	bl MI_CpuFill8
	ldr r0, [r4, #0x210]
	mov r1, r8
	mov r2, #4
	strb r8, [r4, #0x1a4]
	bl MI_CpuFill8
	ldr r5, _01FFAC2C ; =0x020A0640
	ldr r6, _01FFAC10 ; =0x0209BA20
	b _01FFA880
_01FFA874:
	ldr r0, [r4, #0x210]
	strb r7, [r0, r8]
	add r8, r8, #1
_01FFA880:
	cmp r8, #4
	blt _01FFA874
	mov r8, #4
	ldr r0, [r4, #0x20c]
	mov r1, r7
	mov r2, r8
	strb r7, [r4, #0x1a5]
	bl MI_CpuFill8
	sub r1, r8, #5
	add r0, r4, #0x300
	mov r8, #0x40
	strh r7, [r0, #0x18]
	str r7, [r4, #0x1ac]
	str r7, [r4, #0x1b0]
	strb r7, [r4, #0x364]
	strb r7, [r4, #0x365]
	strb r7, [r4, #0x331]
	str r1, [r4, #0x1d0]
	str r1, [r4, #0x1cc]
	str r1, [r4, #0x1d8]
	str r1, [r4, #0x1d4]
	str r1, [r4, #0x1e0]
	str r1, [r4, #0x1dc]
	strb r7, [r6, #0x88b]
	mov r0, r4
	mov r1, r7
	mov r2, r7
	mov r3, r8
	strb r7, [r4, #0x366]
	strb r7, [r4, #0x367]
	str r7, [r4, #0x370]
	str r7, [r4, #0x4c0]
	strb r7, [r4, #0x3ba]
	strb r7, [r4, #0x3b9]
	bl FUN_ov132_0215a094
	mov r3, r8
	mov r0, r4
	mov r1, #1
	mov r2, r7
	bl FUN_ov132_0215a094
	strb r7, [r4, #0x3bb]
	strb r7, [r4, #0x3bc]
	str r7, [r4, #0x4c4]
	str r7, [r4, #0x4c8]
	str r7, [r4, #0x4cc]
	str r7, [r4, #0x4d0]
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_0215a0c4
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _01FFA964
	bl FUN_ov16_020f083c
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _01FFA974
_01FFA964:
	bl FUN_ov16_020f083c
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_0215a0f8
_01FFA974:
	mov r6, #0
	mov r1, r6
	add r0, r4, #0x214
	mov r2, #0x58
	bl MI_CpuFill8
	add r5, r4, #0xa4
	b _01FFA99C
_01FFA990:
	add r0, r5, r6, lsl #3
	bl FUN_020404cc
	add r6, r6, #1
_01FFA99C:
	cmp r6, #2
	blt _01FFA990
	mov r5, #0
	b _01FFA9C0
_01FFA9AC:
	mov r0, r4
	mov r1, r5
	bl FUN_ov132_02144808
	bl FUN_020404cc
	add r5, r5, #1
_01FFA9C0:
	cmp r5, #5
	blt _01FFA9AC
	mov r0, r4
	bl FUN_ov126_0213629c
	mov r0, r4
	bl FUN_ov132_02145354
	mov r0, r4
	mov r1, r7
	bl FUN_ov132_02144a10
	mov r0, r4
	bl FUN_ov126_0212d6b0
	mov r0, r4
	bl FUN_ov132_0213bdec
	mov r0, r4
	bl FUN_ov132_0213be3c
	mov r0, r4
	bl FUN_ov132_0213be1c
	mov r0, r4
	bl FUN_ov132_02151f70
	mov r0, r4
	bl FUN_ov132_02144c80
	mov r0, r4
	bl FUN_ov126_0213921c
	add r0, r4, #0x2e4
	mov r1, r7
	mov r2, #4
	bl MI_CpuFill8
	ldr r2, _01FFAC50 ; =0x0209A820
	ldr r1, _01FFAC54 ; =0x0208F6F0
	ldrh r3, [r2, #0x6c]
	ldr r0, _01FFAC4C ; =0x0209A720
	str r3, [r1, #0x28]
	ldrh r2, [r2, #0x6e]
	str r2, [r1, #0x2c]
	ldrh r2, [r0, #0xca]
	cmp r2, #0
	cmpne r2, #0xf4
	ldreq r0, _01FFAC58 ; =0x021602C0
	ldreq r0, [r0, #0x10]
	streq r0, [r4, #0x288]
	beq _01FFAA94
	mov r0, #0x6000
	mul r1, r2, r0
	mov r0, #0x29
	umull r3, r2, r1, r0
	mla r2, r1, r7, r2
	mov r1, r1, asr #0x1f
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, r7
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0x288]
_01FFAA94:
	add r0, r4, #0x49
	mov r8, #0
	mov r6, #0xc
	mov r1, r8
	mov r2, r6
	add r0, r0, #0x300
	mov r5, #1
	bl MI_CpuFill8
	add r0, r4, #0x55
	mov r1, r8
	mov r2, r6
	add r0, r0, #0x300
	bl MI_CpuFill8
	ldrb r0, [r9, #0x1c]
	ldr r6, _01FFAC10 ; =0x0209BA20
	mov r1, r7
	cmp r0, #0
	movne r8, r5
	mov r0, r6
	mov r2, r5
	mov r3, r5
	strb r8, [r4, #0x361]
	bl FUN_0204d7fc
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl FUN_0204d7fc
	mov r0, r6
	mov r1, r7
	bl FUN_0204c5d0
	strb r0, [r4, #0x326]
	mov r0, r6
	mov r1, r5
	bl FUN_0204c5d0
	ldr r1, _01FFAC5C ; =0x0209A0DC
	str r7, [r4, #0x1c4]
	strb r0, [r4, #0x327]
	ldrb r0, [r1]
	cmp r0, #0
	bne _01FFABAC
	mov r0, r11
	ldr r8, _01FFAC2C ; =0x020A0640
	bl FUN_02073dec
	cmp r0, #0
	beq _01FFABAC
	mov r5, #0xe10
	mov r0, r5
	bl FUN_ov16_020ef8d4
	ldrh r1, [r11, #8]
	mov r6, #0x1e
	mla r2, r1, r6, r0
	mov r0, r5
	str r2, [r8, #8]
	bl FUN_ov16_020ef8d4
	ldrh r1, [r11, #8]
	mov r5, r5, lsr #1
	mla r2, r1, r6, r0
	mov r0, r5
	str r2, [r8, #0xc]
	bl FUN_ov16_020ef8d4
	ldrh r1, [r11, #0xa]
	mla r2, r1, r6, r0
	mov r0, r5
	str r2, [r8, #0x10]
	bl FUN_ov16_020ef8d4
	ldrh r1, [r11, #0xa]
	mla r0, r1, r6, r0
	str r0, [r8, #0x14]
	b _01FFABE4
_01FFABAC:
	ldrh r2, [r11, #8]
	mov r0, #0x1e
	ldr r1, _01FFAC2C ; =0x020A0640
	mul r3, r2, r0
	str r3, [r1, #8]
	ldrh r2, [r11, #8]
	mul r3, r2, r0
	str r3, [r1, #0xc]
	ldrh r2, [r11, #0xa]
	mul r3, r2, r0
	str r3, [r1, #0x10]
	ldrh r2, [r11, #0xa]
	mul r0, r2, r0
	str r0, [r1, #0x14]
_01FFABE4:
	mov r0, r4
	mov r1, r7
	strb r7, [r4, #0x3b4]
	strb r7, [r4, #0x3b5]
	strb r7, [r4, #0x3b6]
	bl FUN_ov132_02147df8
	mov r0, r4
	bl FUN_ov132_021491b0
	strb r7, [r4, #0x5b1]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFAC10: .word 0x0209BA20
_01FFAC14: .word 0x02099F78
_01FFAC18: .word 0x02160304
_01FFAC1C: .word 0x02160314
_01FFAC20: .word 0x3C4CCCCD
_01FFAC24: .word 0x45800000
_01FFAC28: .word 0x02160324
_01FFAC2C: .word 0x020A0640
_01FFAC30: .word 0x0209A13C
_01FFAC34: .word 0x0209A380
_01FFAC38: .word 0x0209A454
_01FFAC3C: .word 0x0209A320
_01FFAC40: .word 0x02099E98
_01FFAC44: .word 0x0209A2C0
_01FFAC48: .word 0x0209A114
_01FFAC4C: .word 0x0209A720
_01FFAC50: .word 0x0209A820
_01FFAC54: .word 0x0208F6F0
_01FFAC58: .word 0x021602C0
_01FFAC5C: .word 0x0209A0DC
	arm_func_end FUN_01ffa12c

	arm_func_start FUN_01ffac60
FUN_01ffac60: ; 0x01ffac60
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r7, _01FFAE0C ; =0x0209BA20
	mov r5, r0
	mov r0, r7
	bl FUN_0207318c
	mov r6, #0
	ldr r2, _01FFAE10 ; =0x0209A454
	mov r4, r0
	mov r0, r7
	mov r1, r6
	strb r6, [r2, #0x39]
	bl FUN_0207249c
	str r0, [sp]
	mov r0, r7
	mov r1, #1
	bl FUN_0207249c
	str r0, [sp, #4]
	mov r0, r7
	strb r6, [r5, #0x344]
	bl FUN_020731a4
	cmp r0, #0
	beq _01FFACC4
	mov r0, r5
	bl FUN_ov132_02152b58
_01FFACC4:
	mov r0, r5
	bl FUN_01ffae20
	ldr r0, [r5, #0x198]
	cmp r0, #0
	beq _01FFACE4
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_01FFACE4:
	mov r3, #0
	add r2, sp, #0
	mov r0, r3
	b _01FFAD00
_01FFACF4:
	ldr r1, [r2, r3, lsl #2]
	add r3, r3, #1
	strh r0, [r1, #0x28]
_01FFAD00:
	cmp r3, #2
	blt _01FFACF4
	ldr r8, _01FFAE0C ; =0x0209BA20
	mov r7, #0
	mov r0, r8
	mov r1, r7
	mov r2, r7
	bl FUN_020726d0
	mov r6, #1
	ldr r0, _01FFAE14 ; =0x020A0B00
	mov r1, r6
	bl FUN_02074580
	mov r0, r4
	bl FUN_02073d8c
	mov r0, r8
	bl FUN_0206f19c
	ldr r0, _01FFAE18 ; =0x0209BE4C
	mov r1, r7
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r0, _01FFAE1C ; =0x0209BEFC
	mov r1, r7
	mov r2, #0x10
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	mov r1, r7
	mov r2, #0x4c
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl FUN_ov132_0214635c
	str r7, [r5, #0x198]
	mov r0, r8
	bl FUN_02071934
	strb r7, [r5, #0x327]
	strb r7, [r5, #0x326]
	strb r6, [r5, #0x348]
	strb r6, [r5, #0x347]
	strb r6, [r8, #0x889]
	mov r0, r8
	mov r1, r7
	bl FUN_020732d0
	mov r0, r8
	mov r1, r7
	bl FUN_020737d8
	strb r7, [r8, #0x88c]
	str r7, [r5, #0x270]
	str r7, [r5, #0x274]
	mov r0, r8
	mov r1, r7
	bl FUN_020726c8
	strb r7, [r8, #0x885]
	strb r7, [r8, #0x886]
	strb r7, [r5, #0x2d8]
	strb r7, [r5, #0x2d9]
	mov r1, r7
	strb r6, [r5, #0x376]
	mov r0, r5
	mov r2, r6
	bl FUN_ov132_02145a44
	mov r0, r5
	mov r1, r6
	mov r2, r6
	bl FUN_ov132_02145a44
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_01FFAE0C: .word 0x0209BA20
_01FFAE10: .word 0x0209A454
_01FFAE14: .word 0x020A0B00
_01FFAE18: .word 0x0209BE4C
_01FFAE1C: .word 0x0209BEFC
	arm_func_end FUN_01ffac60

	arm_func_start FUN_01ffae20
FUN_01ffae20: ; 0x01ffae20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r1, _01FFB104 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1b]
	mov r6, #0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov16_020f066c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _01FFB108 ; =0x0209BA20
	mov r0, r5
	bl FUN_0204eba0
	mov r0, r5
	bl FUN_020732d8
	cmp r0, #0
	bne _01FFAFA0
	mov r0, r5
	bl FUN_020731a4
	cmp r0, #0
	mov r7, r6
	beq _01FFAECC
	ldr r5, _01FFB10C ; =0x0209A11C
	b _01FFAEB8
_01FFAE80:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_0206c6fc
	movs r8, r0
	beq _01FFAEB4
	bl FUN_0206d69c
	cmp r0, #0
	beq _01FFAEB4
	mov r0, r8
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02146140
_01FFAEB4:
	add r7, r7, #1
_01FFAEB8:
	ldr r0, [r5]
	bl FUN_0206c2f8
	cmp r7, r0
	blt _01FFAE80
	b _01FFAF28
_01FFAECC:
	ldr r5, _01FFB10C ; =0x0209A11C
	b _01FFAF20
_01FFAED4:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_0206c6fc
	movs r8, r0
	beq _01FFAF1C
	bl FUN_0206d660
	cmp r0, #0
	beq _01FFAF1C
	mov r0, r8
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02146140
	mov r0, r8
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02146158
_01FFAF1C:
	add r7, r7, #1
_01FFAF20:
	cmp r7, #0x20
	blt _01FFAED4
_01FFAF28:
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl FUN_ov132_02145a44
	cmp r0, #0
	beq _01FFAFA0
	bl FUN_ov16_020f083c
	mov r1, r0
	ldr r0, _01FFB108 ; =0x0209BA20
	bl FUN_0205107c
	movs r4, r0
	ldr r5, _01FFB110 ; =0x020A108A
	beq _01FFAFA0
	mov r7, #0
	b _01FFAF98
_01FFAF68:
	mov r0, r4
	mov r1, r7
	bl FUN_0204fbe8
	cmp r0, #0
	beq _01FFAF94
	mov r0, r4
	mov r1, r7
	bl FUN_0204fbfc
	mov r1, r0
	mov r0, r5
	bl FUN_02050930
_01FFAF94:
	add r7, r7, #1
_01FFAF98:
	cmp r7, #0x10
	blt _01FFAF68
_01FFAFA0:
	ldr r5, _01FFB108 ; =0x0209BA20
	mov r0, r5
	bl FUN_0204ec3c
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_0206f9dc
	mov r7, #0
	mov r0, r5
	mov r1, r7
	mov r2, r4
	mov r3, r4
	bl FUN_0204d7fc
	mov r5, #0x200
	mov r4, r5
	mov r11, #0x100
	ldr r9, _01FFB10C ; =0x0209A11C
	b _01FFB0F8
_01FFAFE8:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _01FFB0F4
	bl FUN_0206d6b0
	cmp r0, #0
	beq _01FFB024
	mov r0, r8
	bl FUN_0206d6c4
	cmp r0, #0
	bne _01FFB024
	mov r0, r8
	bl FUN_ov16_020f0810
	cmp r0, #1
	bne _01FFB034
_01FFB024:
	ldr r0, [r9]
	mov r1, r7
	bl FUN_0206c5d8
	b _01FFB0F4
_01FFB034:
	ldr r1, [r8, #0x84]
	mov r0, r8
	strb r6, [r1, #0x1e]
	ldr r1, [r8, #0x88]
	strh r6, [r1, #0x32]
	ldr r1, [r8, #0x88]
	strb r6, [r1, #0x88]
	bl FUN_0206d700
	cmp r0, #0
	beq _01FFB068
	mov r0, r8
	mov r1, r5
	bl FUN_0206d634
_01FFB068:
	mov r0, r8
	bl FUN_0206d6ec
	cmp r0, #0
	beq _01FFB090
	mov r0, r8
	mov r1, r4
	bl FUN_0206d620
	mov r0, r8
	mov r1, r11
	bl FUN_0206d634
_01FFB090:
	mov r0, r8
	bl FUN_0206dcdc
	cmp r0, #0
	bne _01FFB0F4
	mov r0, r8
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _01FFB114 ; =0x0209A0AC
	bl FUN_0206c718
	movs r10, r0
	beq _01FFB0F4
	bl FUN_0206dcdc
	cmp r0, #0
	bne _01FFB0F4
	mov r0, r10
	mov r1, #8
	bl FUN_0206d634
	mov r0, r10
	bl FUN_0206dcd4
	mov r10, r0
	mov r0, r8
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r10
	bl FUN_0206ed40
_01FFB0F4:
	add r7, r7, #1
_01FFB0F8:
	cmp r7, #0x20
	blt _01FFAFE8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB104: .word 0x020A0640
_01FFB108: .word 0x0209BA20
_01FFB10C: .word 0x0209A11C
_01FFB110: .word 0x020A108A
_01FFB114: .word 0x0209A0AC
	arm_func_end FUN_01ffae20

	arm_func_start FUN_01ffb118
FUN_01ffb118: ; 0x02096A38
	cmp r1, #0
	ldreq r1, _01FFB138 ; =0x0209A13C
	ldr r12, _01FFB13C ; = FUN_ov132_021589d4
	ldreq r1, [r1]
	str r1, [r0, #0x194]
	mov r0, r1
	ldr r1, _01FFB140 ; =0x0209A720
	bx r12
_01FFB138: .word 0x0209A13C
_01FFB13C: .word FUN_ov132_021589d4
_01FFB140: .word 0x0209A720
	arm_func_end FUN_01ffb118

	arm_func_start FUN_01ffb144
FUN_01ffb144: ; 0x02096A64
	ldr r12, _01FFB150 ; = FUN_ov132_021447d0
	mov r1, #0
	bx r12
_01FFB150: .word FUN_ov132_021447d0
	arm_func_end FUN_01ffb144

	arm_func_start FUN_01ffb154
FUN_01ffb154: ; 0x02096A74
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x100
	ldrsb r5, [r0, #0xa6]
	mov r6, #0
_01FFB164:
	add r0, r5, #1
	and r5, r0, #0x1f
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _01FFB198
	bl FUN_0206d660
	cmp r0, #0
	beq _01FFB198
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	bne _01FFB1A4
_01FFB198:
	add r6, r6, #1
	cmp r6, #0x20
	blt _01FFB164
_01FFB1A4:
	mov r0, r5, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_01ffb154

	arm_func_start FUN_01ffb1b0
FUN_01ffb1b0: ; 0x02096AD0
	cmp r1, #0
	rsbeq r2, r2, #0
	mov r0, r2
	bx lr
	arm_func_end FUN_01ffb1b0

	arm_func_start FUN_01ffb1c0
FUN_01ffb1c0: ; 0x02096AE0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r7, r1
	ldr r1, [r7, #0x84]
	ldr r6, [sp, #0x30]
	ldr r4, [r1, #4]
	ldr r1, [r1]
	mov r8, r0
	str r1, [sp]
	str r4, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r5, #0x15
	add r10, sp, #0
	mov r9, #0
_01FFB1FC:
	mov r0, r8
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r4, r0
	ldrnesh r1, [r4, #0x94]
	ldrnesh r0, [r7, #0x94]
	cmpne r1, r0
	beq _01FFB26C
	mov r0, r8
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl FUN_ov126_021393a8
	cmp r0, #0
	bne _01FFB26C
	ldr r0, [r4, #0x88]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0x1e
	bhi _01FFB26C
	mov r0, r8
	mov r1, r10
	mov r2, r4
	mov r3, r9
	bl FUN_ov132_0214eecc
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_01FFB26C:
	subs r5, r5, #1
	bpl _01FFB1FC
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_01ffb1c0

	arm_func_start FUN_01ffb280
FUN_01ffb280: ; 0x02096BA0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, r1
	mov r8, r2
	ldr r2, [r9, #0x84]
	ldr r6, [sp, #0x38]
	mov r10, r0
	ldr r0, [r2]
	mov r5, #0x96000
	tst r6, #0x10
	movne r5, #0x78000
	subs r1, r0, r8
	ldr r0, [r2, #4]
	mov r7, r3
	rsbmi r1, r1, #0
	subs r2, r0, r7
	rsbmi r2, r2, #0
	mov r11, #0
	tst r6, #0x800
	bne _01FFB304
	cmp r2, r5
	cmple r1, r5
	addgt sp, sp, #0x14
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_01ffba80
	mov r4, r0
	cmp r4, r5
	ble _01FFB310
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB304:
	mov r0, r10
	bl FUN_01ffba80
	mov r4, r0
_01FFB310:
	and r0, r6, #0xf
	cmp r0, #0xf
	beq _01FFB394
	tst r6, #8
	beq _01FFB348
	mov r0, r9
	bl FUN_0206d5f0
	mov r3, r0
	mov r0, r10
	mov r1, r8
	mov r2, r7
	bl FUN_ov132_0214ec84
	cmp r0, #0
	bne _01FFB394
_01FFB348:
	tst r6, #4
	beq _01FFB368
	mov r0, r10
	mov r1, r9
	mov r2, r7
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _01FFB394
_01FFB368:
	tst r6, #1
	beq _01FFB388
	mov r0, r10
	mov r1, r9
	mov r2, r7
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _01FFB394
_01FFB388:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB394:
	tst r6, #0x100
	bne _01FFB3F0
	mov r0, r9
	bl FUN_ov16_020f0810
	bl FUN_02040138
	mvn r1, #0
	str r1, [sp]
	stmib sp, {r0, r11}
	add r1, sp, #0x10
	str r1, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	mov r2, r7
	mov r3, #1
	bl FUN_ov132_0214c60c
	cmp r0, #0
	movne r0, r4, asr #3
	ldrne r1, [sp, #0x10]
	addne r0, r0, #0x20000
	cmpne r1, r0
	addlt sp, sp, #0x14
	movlt r0, r11
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB3F0:
	tst r6, #0x200
	bne _01FFB424
	mov r5, #0x10000
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r7
	str r5, [sp]
	bl FUN_01ffb1c0
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB424:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	strne r4, [r0]
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_01ffb280

	arm_func_start FUN_01ffb43c
FUN_01ffb43c: ; 0x02096D5C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r8, r2
	mov r7, r3
	mov r9, r1
	mov r2, r4
	mov r3, r4
	mov r10, r0
	str r4, [sp]
	ldr r6, [sp, #0x28]
	bl FUN_ov132_0213f55c
	ldrsh r2, [r9, #0x94]
	ldrsh r1, [r8, #0x94]
	mov r5, r0
	cmp r2, r1
	addeq sp, sp, #8
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _01FFB4AC
	tst r6, #0x400
	addne sp, sp, #8
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_01FFB4AC:
	mov r0, r8
	bl FUN_0206d9f8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	tst r6, #0x80
	beq _01FFB500
	ldr r0, [r8, #0x84]
	ldr r0, [r0, #4]
	cmp r5, r0
	beq _01FFB4F4
	mov r0, r10
	mov r1, r8
	mov r2, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _01FFB500
_01FFB4F4:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_01FFB500:
	tst r6, #0x100000
	beq _01FFB548
	mov r0, r9
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02143cd0
	cmp r0, #0
	ldreq r1, [r9, #0x84]
	ldreq r0, [r8, #0x84]
	ldrne r1, [r8, #0x84]
	ldrne r0, [r9, #0x84]
	ldr r1, [r1, #4]
	ldr r0, [r0, #4]
	cmp r1, r0
	addlt sp, sp, #8
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_01FFB548:
	ldr r4, [sp, #0x2c]
	str r6, [sp]
	mov r0, r10
	mov r1, r9
	ldmia r7, {r2, r3}
	str r4, [sp, #4]
	bl FUN_01ffb280
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_01ffb43c

	arm_func_start FUN_01ffb56c
FUN_01ffb56c: ; 0x02096E8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r10, r0
	str r1, [sp, #0xc]
	mov r0, r1
	ldr r1, [sp, #0x6c]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r5, [sp, #0x68]
	str r1, [sp, #0x6c]
	mov r4, #0
	bl FUN_02040128
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461f8
	cmp r0, #0
	addeq sp, sp, #0x40
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0xc]
	bl FUN_0206d6c4
	cmp r0, #0
	beq _01FFB5E0
	mov r0, r10
	bl FUN_ov132_0214496c
	cmp r0, #0
	addeq sp, sp, #0x40
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB5E0:
	ldr r0, [sp, #0xc]
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, [r10, #0x198]
	ldr r2, [r0]
	ldr r2, [r2, #0x34]
	blx r2
	cmp r0, #0
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #3
	cmpne r0, #5
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #0x38
	bl FUN_020404cc
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	beq _01FFB640
	bl FUN_020404cc
_01FFB640:
	tst r5, #0x400
	bne _01FFB678
	ldr r0, [sp, #0xc]
	bl FUN_02040aa8
	cmp r0, #0
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0xc]
	bl FUN_0206d9f8
	cmp r0, #0
	addne sp, sp, #0x40
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB678:
	ldr r1, _01FFB938 ; =0x0209A720
	ldr r0, [sp, #0xc]
	ldr r2, [r1, #0xec]
	ldr r1, [r1, #0xf4]
	add r3, r2, r1
	sub r1, r1, r2
	mov r4, r3, asr #1
	sub r8, r1, #0x2000
	bl FUN_02040128
	mov r9, #0
	mov r1, r0
	mov r0, r10
	mov r2, r9
	bl FUN_ov132_0213f5d4
	mov r6, r0
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl FUN_ov126_0212f36c
	tst r5, #6
	movne r9, #1
	str r0, [sp, #0x18]
	cmp r9, #0
	bne _01FFB6F4
	ldr r0, [sp, #0x14]
	subs r1, r6, r0
	ldr r0, [sp, #0x18]
	rsbmi r1, r1, #0
	cmp r1, r0
	addgt sp, sp, #0x40
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB6F4:
	ldr r1, [sp, #0xc]
	mov r0, r10
	mov r2, r6
	bl FUN_01ffb9e4
	cmp r0, #0
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0xc]
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02144854
	str r0, [sp, #0x20]
	cmp r0, #0
	ldrne r0, [r0, #0x84]
	str r4, [sp, #0x1c]
	ldrne r0, [r0]
	mov r7, #0
	strne r0, [sp, #0x1c]
	mov r0, r8, asr #1
	add r0, r8, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	sub r0, r0, r6
	str r0, [sp, #0x28]
	rsb r0, r0, #0
	str r0, [sp, #0x2c]
	and r0, r5, #0x200
	str r0, [sp, #0x30]
	and r0, r5, #0x800
	str r0, [sp, #0x34]
	b _01FFB8FC
_01FFB77C:
	ldr r0, [sp, #0x24]
	sub r1, r7, #2
	mla r5, r0, r1, r4
	cmp r9, #0
	bne _01FFB7B0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r0, r10
	stmia sp, {r5, r6, r9}
	bl FUN_ov132_021408a4
	cmp r0, #0
	beq _01FFB8F8
_01FFB7B0:
	ldr r0, [sp, #0x10]
	subs r1, r0, r5
	ldr r0, [sp, #0x28]
	rsbmi r1, r1, #0
	cmp r0, #0
	ldrlt r2, [sp, #0x2c]
	movge r2, r0
	cmp r9, #0
	bne _01FFB7E8
	mov r0, r10
	bl FUN_01ffba80
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bgt _01FFB8F8
_01FFB7E8:
	cmp r9, #0
	ldreq r0, [sp, #0x30]
	cmpeq r0, #0
	bne _01FFB81C
	mov r0, #0x10000
	str r0, [sp]
	ldr r1, [sp, #0xc]
	mov r0, r10
	mov r2, r5
	mov r3, r6
	bl FUN_01ffb1c0
	cmp r0, #0
	bne _01FFB8F8
_01FFB81C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	addeq sp, sp, #0x40
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x20]
	mov r0, r10
	bl FUN_01ffb960
	cmp r0, #0
	beq _01FFB858
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _01FFB858
	cmp r9, #0
	beq _01FFB888
_01FFB858:
	ldr r0, [sp, #0x1c]
	subs r8, r5, r4
	rsbmi r8, r8, #0
	cmp r0, r4
	cmplt r5, r4
	blt _01FFB880
	ldr r0, [sp, #0x1c]
	cmp r0, r4
	cmpgt r5, r4
	ble _01FFB89C
_01FFB880:
	add r8, r8, #1
	b _01FFB89C
_01FFB888:
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x84]
	ldr r0, [r0]
	subs r8, r5, r0
	rsbmi r8, r8, #0
_01FFB89C:
	add r0, sp, #0x38
	bl FUN_02040a80
	cmp r0, #0
	ldr r1, [sp, #0x20]
	mov r0, r10
	strne r5, [sp, #0x38]
	strne r6, [sp, #0x3c]
	movne r11, r8
	bl FUN_01ffb960
	cmp r0, #0
	beq _01FFB8D4
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _01FFB8E8
_01FFB8D4:
	cmp r8, r11
	strlt r5, [sp, #0x38]
	movlt r11, r8
	strlt r6, [sp, #0x3c]
	b _01FFB8F8
_01FFB8E8:
	cmp r8, r11
	strgt r5, [sp, #0x38]
	movgt r11, r8
	strgt r6, [sp, #0x3c]
_01FFB8F8:
	add r7, r7, #1
_01FFB8FC:
	cmp r7, #5
	blt _01FFB77C
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ldrne r1, [sp, #0x38]
	strne r1, [r0]
	ldrne r1, [sp, #0x3c]
	strne r1, [r0, #4]
	add r0, sp, #0x38
	bl FUN_02040a80
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_01FFB938: .word 0x0209A720
	arm_func_end FUN_01ffb56c

	arm_func_start FUN_01ffb93c
FUN_01ffb93c: ; 0x0209725C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r12, _01FFB95C ; =0x0209A2C0
	stmia sp, {r2, r3}
	ldmia r12, {r2, r3}
	bl FUN_01ffb56c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_01FFB95C: .word 0x0209A2C0
	arm_func_end FUN_01ffb93c

	arm_func_start FUN_01ffb960
FUN_01ffb960: ; 0x01ffb960
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	beq _01FFB9A8
	mov r0, r4
	bl FUN_0206d9f8
	cmp r0, #0
	bne _01FFB9A8
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	beq _01FFB9A8
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02138ec0
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_01FFB9A8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_01ffb960

	arm_func_start FUN_01ffb9b0
FUN_01ffb9b0: ; 0x020972D0
	cmp r1, r2
	moveq r0, #0
	bxeq lr
	mov r0, #1
	cmp r3, #0
	movne r0, #0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	teq r0, r1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_01ffb9b0

	arm_func_start FUN_01ffb9e4
FUN_01ffb9e4: ; 0x01ffb9e4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, [r1, #0x84]
	mov r6, r0
	ldrsh r0, [r1, #0x94]
	ldr r4, [r3, #4]
	mov r5, r2
	bl FUN_ov16_020f07a8
	mov r3, r0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_01ffb9b0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_01ffb9e4

	arm_func_start FUN_01ffba18
FUN_01ffba18: ; 0x01ffba18
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x198]
	ldr r2, [r0]
	ldr r2, [r2, #0x30]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_01ffba18

	arm_func_start FUN_01ffba30
FUN_01ffba30: ; 0x01ffba30
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #8]
	subs r2, r2, r12
	rsbmi r2, r2, #0
	subs r1, r1, r3
	rsbmi r1, r1, #0
	bl FUN_01ffba80
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_01ffba30

	arm_func_start FUN_01ffba50
FUN_01ffba50: ; 0x01ffba50
	ldr r0, _01FFBA60 ; =0x0209BA20
	ldr r12, _01FFBA64 ; =FUN_02043c2c
	ldr r0, [r0, #0x860]
	bx r12
_01FFBA60: .word 0x0209BA20
_01FFBA64: .word FUN_02043c2c
	arm_func_end FUN_01ffba50

	arm_func_start FUN_01ffba68
FUN_01ffba68: ; 0x01ffba68
	ldr r0, _01FFBA78 ; =0x0209BA20
	ldr r12, _01FFBA7C ; =FUN_02043c6c
	ldr r0, [r0, #0x860]
	bx r12
_01FFBA78: .word 0x0209BA20
_01FFBA7C: .word FUN_02043c6c
	arm_func_end FUN_01ffba68

	arm_func_start FUN_01ffba80
FUN_01ffba80: ; 0x020973A0
	ldr r0, _01FFBA90 ; =0x0209BA20
	ldr r12, _01FFBA94 ; =FUN_02043b68
	ldr r0, [r0, #0x860]
	bx r12
_01FFBA90: .word 0x0209BA20
_01FFBA94: .word FUN_02043b68
	arm_func_end FUN_01ffba80

	arm_func_start FUN_01ffba98
FUN_01ffba98: ; 0x020973B8
	stmfd sp!, {r3, lr}
	ldr r0, [sp, #8]
	subs r1, r3, r1
	rsbmi r1, r1, #0
	subs r0, r0, r2
	rsbmi r0, r0, #0
	mov r1, r1, asr #1
	mov r12, r0, asr #1
	smull r0, r2, r1, r1
	adds r3, r0, #0x800
	smull r1, r0, r12, r12
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	orr r3, r3, r2, lsl #20
	mov r0, r1, asr #4
	add r0, r0, r3, asr #4
	bl FX_Sqrt
	mov r0, r0, lsl #3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_01ffba98

	arm_func_start FUN_01ffbaf4
FUN_01ffbaf4: ; 0x01ffbaf4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, _01FFBBE4 ; =0x0209BA20
	mov r5, r1
	bl FUN_0204fb20
	mov r4, r0
	mov r0, r5
	bl FUN_0206d9f8
	cmp r0, #0
	bne _01FFBB64
	mov r0, r5
	bl FUN_02040aa8
	cmp r0, #0
	bne _01FFBB64
	ldrh r0, [r4, #0x18]
	add r0, r0, #1
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x18]
	ldrsh r0, [r4, #0x1a]
	cmp r1, r0
	ble _01FFBB64
	mov r7, #0
	mov r0, r6
	mov r2, r5
	mov r3, r7
	mov r1, #0x17
	bl FUN_ov126_0213a490
	strh r7, [r4, #0x18]
_01FFBB64:
	ldr r2, [r5, #0x84]
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	beq _01FFBB88
	ldrh r1, [r2, #0x12]
	ldrh r0, [r2, #0x14]
	cmp r1, r0
	movlo r0, #1
	blo _01FFBB8C
_01FFBB88:
	mov r0, #0
_01FFBB8C:
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_021398cc
	cmp r0, #0
	beq _01FFBBBC
	mov r0, r5
	mov r1, #2
	mov r2, #0x1e
	bl FUN_0206dbb4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FFBBBC:
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_02139878
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, #8
	mov r2, #0x1e
	bl FUN_0206dbb4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FFBBE4: .word 0x0209BA20
	arm_func_end FUN_01ffbaf4

	arm_func_start FUN_01ffbbe8
FUN_01ffbbe8: ; 0x01ffbbe8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov132_0213be1c
	ldr r0, _01FFBC5C ; =0x0209BA20
	ldr r0, [r0, #0x860]
	bl FUN_02043c5c
	mov r6, #0
_01FFBC04:
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0213922c
	movs r5, r0
	beq _01FFBC4C
	mov r0, r7
	mov r1, r5
	bl FUN_ov126_02138cc8
	mov r4, r0
	mov r0, r5
	bl FUN_02040b4c
	cmp r0, #0
	ldrnesh r0, [r4]
	cmpne r0, #0xa
	beq _01FFBC4C
	mov r0, r7
	mov r1, r5
	bl FUN_ov132_0213bd7c
_01FFBC4C:
	add r6, r6, #1
	cmp r6, #0x16
	blt _01FFBC04
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_01FFBC5C: .word 0x0209BA20
	arm_func_end FUN_01ffbbe8

	arm_func_start FUN_01ffbc60
FUN_01ffbc60: ; 0x01ffbc60
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206d9f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x88]
	ldrb r0, [r0, #0x2f]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_0213e2b4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_01ffbc60

	arm_func_start FUN_01ffbcb0
FUN_01ffbcb0: ; 0x020975D0
	stmfd sp!, {r3, lr}
	ldr r2, _01FFBD00 ; =0x0209A2C0
	ldr r0, [r2, #0x48]
	cmp r0, #0
	blt _01FFBCD8
	bl FUN_ov16_020f06d8
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_01FFBCD8:
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	blt _01FFBCF8
	bl FUN_ov16_020f06d8
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_01FFBCF8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_01FFBD00: .word 0x0209A2C0
	arm_func_end FUN_01ffbcb0

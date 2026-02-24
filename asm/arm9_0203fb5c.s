
	.include "/macros/function.inc"
	.include "/include/arm9_0203fb5c.inc"

    .text
	arm_func_start FUN_0203fb5c
FUN_0203fb5c: ; 0x0203FB5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02040388
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	ldr r2, _0203FBD0 ; =FX_SinCosTable_
	mov r1, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r0, [r2, r0]
	ldr r12, [r5]
	smull r1, r2, r4, r1
	adds r3, r1, #0x800
	smull r1, r0, r4, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r3, r12, r3
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	ldr r2, [r5, #4]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r3, [r5, #8]
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0203FBD0: .word FX_SinCosTable_
	arm_func_end FUN_0203fb5c

	arm_func_start FUN_0203fbd4
FUN_0203fbd4: ; 0x0203FBD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r4, r1
	bl FUN_02040388
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	ldr r1, _0203FC6C ; =FX_SinCosTable_
	mov r2, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r2, [r1, r2]
	ldrsh r1, [r1, r0]
	ldr r0, [r6]
	smull r2, r3, r4, r2
	adds r5, r2, #0x800
	smull r1, r2, r4, r1
	adc r7, r3, #0
	adds r3, r1, #0x800
	mov r5, r5, lsr #0xc
	ldr r1, [r6, #8]
	adc r2, r2, #0
	mov r4, r3, lsr #0xc
	orr r5, r5, r7, lsl #20
	orr r4, r4, r2, lsl #20
	bl FUN_0203fc70
	mov r7, r0
	ldr r0, [r6, #4]
	ldr r1, [r6, #0xc]
	bl FUN_0203fc70
	sub r3, r7, r5
	sub r2, r0, r4
	add r1, r7, r5
	add r0, r0, r4
	str r3, [r6]
	str r2, [r6, #4]
	str r1, [r6, #8]
	str r0, [r6, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203FC6C: .word FX_SinCosTable_
	arm_func_end FUN_0203fbd4

	arm_func_start FUN_0203fc70
FUN_0203fc70: ; 0x0203FC70
	cmp r0, r1
	blt _0203FC88
	subs r0, r0, r1
	rsbmi r0, r0, #0
	add r0, r1, r0, asr #1
	bx lr
_0203FC88:
	subs r1, r1, r0
	rsbmi r1, r1, #0
	add r0, r0, r1, asr #1
	bx lr
	arm_func_end FUN_0203fc70

	arm_func_start FUN_0203fc98
FUN_0203fc98: ; 0x0203FC98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r5, r1
	mov r9, r2
	mov r4, r3
	mov r6, r0
	mov r0, r5
	mov r1, r9
	mov r2, r4
	bl FUN_02040b68
	cmp r0, #0
	bne _0203FCDC
	mov r0, r6
	bl FUN_020404cc
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203FCDC:
	ldr r0, [r5]
	ldr r1, [r9]
	bl FUN_0203fc70
	mov r8, r0
	ldr r0, [r5, #4]
	ldr r1, [r9, #4]
	bl FUN_0203fc70
	ldr r2, [r5, #4]
	ldr r1, [r9, #4]
	mov r7, r0
	sub r0, r2, r1
	ldr r2, [r5]
	ldr r1, [r9]
	sub r1, r2, r1
	bl FX_Atan2Idx
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r2, r0, lsl #1
	ldr r9, _0203FDEC ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r3, [r9, r2]
	ldrsh r2, [r9, r1]
	ldr r0, [r5]
	add r3, r8, r3, lsl #4
	add r2, r7, r2, lsl #4
	ldr r1, [r4]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	bl FUN_0203fc70
	mov r8, r0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	bl FUN_0203fc70
	mov r7, r0
	ldr r0, [r4, #4]
	ldmia r5, {r2, r3}
	ldr r1, [r4]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r1, [r9, r0]
	mov r0, r3, lsl #1
	ldrsh r0, [r9, r0]
	add r1, r8, r1, lsl #4
	str r1, [sp, #8]
	add r0, r7, r0, lsl #4
	str r0, [sp, #0xc]
	mov r2, r6
	add r0, sp, #0x10
	add r1, sp, #0
	str r8, [sp]
	str r7, [sp, #4]
	bl FUN_01ff852c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203FDEC: .word FX_SinCosTable_
	arm_func_end FUN_0203fc98

	arm_func_start FUN_0203fdf0
FUN_0203fdf0: ; 0x0203FDF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10]
	ldr r3, [r10, #8]
	mov r9, r1
	cmp r0, r3
	ldreq r4, [r10, #4]
	ldreq r1, [r10, #0xc]
	mov r8, r2
	mov r5, #0
	cmpeq r4, r1
	bne _0203FE7C
	ldr r3, [r9]
	ldr r1, [r9, #8]
	cmp r3, r1
	ldreq r2, [r9, #4]
	ldreq r1, [r9, #0xc]
	cmpeq r2, r1
	bne _0203FE68
	cmp r0, r3
	cmpeq r4, r2
	bne _0203FE60
	cmp r8, #0
	strne r0, [r8]
	ldrne r0, [r10, #4]
	strne r0, [r8, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203FE60:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203FE68:
	mov r0, r10
	mov r10, r9
	mov r9, r0
	mov r5, #1
	b _0203FE98
_0203FE7C:
	ldr r1, [r9]
	ldr r0, [r9, #8]
	cmp r1, r0
	ldreq r1, [r9, #4]
	ldreq r0, [r9, #0xc]
	cmpeq r1, r0
	moveq r5, #1
_0203FE98:
	mov r0, r10
	bl FUN_02040388
	mov r6, r0
	mov r0, r9
	bl FUN_02040388
	mov r7, r0
	cmp r8, #0
	beq _0203FEC8
	mov r0, r8
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
_0203FEC8:
	ldr r0, _02040110 ; =0x00007FFF
	and r1, r6, r0
	and r0, r7, r0
	cmp r1, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, r6
	mov r3, r9
	ldmia r10, {r0, r1}
	bl FUN_020404dc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r6, #0x8000
	mov r2, r0, lsl #0x10
	ldr r0, [r10, #8]
	ldr r1, [r10, #0xc]
	mov r3, r9
	mov r2, r2, lsr #0x10
	bl FUN_020404dc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	cmp r8, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	beq _0203FF54
	ldr r1, [r9]
	mov r0, #1
	str r1, [r8]
	ldr r1, [r9, #4]
	str r1, [r8, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203FF54:
	mov r0, r6, asr #4
	mov r5, r0, lsl #1
	add r2, r5, #1
	mov r0, r7, asr #4
	mov r3, r0, lsl #1
	add r1, r3, #1
	ldr r0, _02040114 ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	ldrsh r6, [r0, r2]
	mov r5, r5, lsl #1
	mov r2, r3, lsl #1
	mov r1, r1, lsl #1
	cmp r6, #0
	ldrsh r5, [r0, r5]
	ldrsh r11, [r0, r2]
	ldrsh r7, [r0, r1]
	beq _02040050
	smull r0, r3, r6, r11
	adds r1, r0, #0x800
	ldmia r9, {r2, r11}
	ldr r0, [r10]
	ldr r9, [r10, #4]
	adc r3, r3, r4
	mov r1, r1, lsr #0xc
	sub r9, r11, r9
	orr r1, r1, r3, lsl #20
	sub r0, r2, r0
	smull r0, r2, r1, r0
	adds r0, r0, #0x800
	smull r3, r9, r7, r9
	adc r2, r2, r4
	adds r11, r3, #0x800
	mov r3, r0, lsr #0xc
	adc r0, r9, r4
	mov r9, r11, lsr #0xc
	orr r9, r9, r0, lsl #20
	smull r0, r12, r6, r9
	adds r0, r0, #0x800
	orr r3, r3, r2, lsl #20
	smull r11, r9, r7, r5
	adc r2, r12, r4
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	sub r0, r3, r0
	adds r3, r11, #0x800
	adc r2, r9, r4
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r1, r1, r3
	bl FX_Div
	mov r7, r0
	smull r1, r0, r7, r5
	adds r1, r1, #0x800
	adc r2, r0, r4
	mov r0, r1, lsr #0xc
	mov r1, r6
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r1, [r10]
	add r1, r7, r1
	str r1, [r8]
	ldr r1, [r10, #4]
	b _02040100
_02040050:
	smull r0, r3, r7, r5
	adds r1, r0, #0x800
	adc r3, r3, r4
	mov r1, r1, lsr #0xc
	ldmia r10, {r2, r10}
	ldmia r9, {r0, r5}
	sub r5, r10, r5
	orr r1, r1, r3, lsl #20
	sub r0, r2, r0
	smull r0, r2, r1, r0
	adds r0, r0, #0x800
	smull r3, r5, r6, r5
	adc r2, r2, r4
	adds r10, r3, #0x800
	mov r3, r0, lsr #0xc
	adc r0, r5, r4
	mov r5, r10, lsr #0xc
	orr r5, r5, r0, lsl #20
	smull r0, r12, r7, r5
	adds r0, r0, #0x800
	orr r3, r3, r2, lsl #20
	smull r10, r5, r6, r11
	adc r2, r12, r4
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	sub r0, r3, r0
	adds r3, r10, #0x800
	adc r2, r5, r4
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r1, r1, r3
	bl FX_Div
	mov r5, r0
	smull r1, r0, r5, r11
	adds r1, r1, #0x800
	adc r2, r0, r4
	mov r0, r1, lsr #0xc
	mov r1, r7
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r1, [r9]
	add r1, r5, r1
	str r1, [r8]
	ldr r1, [r9, #4]
_02040100:
	add r0, r0, r1
	str r0, [r8, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02040110: .word 0x00007FFF
_02040114: .word FX_SinCosTable_
	arm_func_end FUN_0203fdf0

	arm_func_start FUN_02040118
FUN_02040118: ; 0x02040118
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02040118

	arm_func_start FUN_02040128
FUN_02040128: ; 0x02040128
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f07d0
	bl FUN_02040118
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02040128

	arm_func_start FUN_02040138
FUN_02040138: ; 0x02040138
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02040138

	arm_func_start FUN_02040148
FUN_02040148: ; 0x02040148
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f0810
	bl FUN_02040138
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02040148

	arm_func_start FUN_02040158
FUN_02040158: ; 0x02040158
	cmp r0, #0
	ldreq r0, _02040168 ; =0x0209A83C
	ldrne r0, _0204016C ; =0x0209A82C
	bx lr
_02040168: .word unk_0209A83C
_0204016C: .word unk_0209A82C
	arm_func_end FUN_02040158

	arm_func_start FUN_02040170
FUN_02040170: ; 0x02040170
	stmfd sp!, {r3, lr}
	bl FUN_02040118
	ldr r1, _02040184 ; =0x0209A80C
	add r0, r1, r0, lsl #4
	ldmfd sp!, {r3, pc}
_02040184: .word unk_0209A80C
	arm_func_end FUN_02040170

	arm_func_start FUN_02040188
FUN_02040188: ; 0x02040188
	cmp r0, #0
	ldreq r0, _02040198 ; =0x0209A85C
	ldrne r0, _0204019C ; =0x0209A84C
	bx lr
_02040198: .word unk_0209A85C
_0204019C: .word unk_0209A84C
	arm_func_end FUN_02040188

	arm_func_start FUN_020401a0
FUN_020401a0: ; 0x020401A0
	cmp r0, #0
	ldreq r0, _020401B0 ; =0x0209A884
	ldrne r0, _020401B4 ; =0x0209A87C
	bx lr
_020401B0: .word unk_0209A884
_020401B4: .word unk_0209A87C
	arm_func_end FUN_020401a0

	arm_func_start FUN_020401b8
FUN_020401b8: ; 0x020401B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r3
	rsb r3, r0, #0
	cmp r0, #0
	movge r3, r0
	cmp r3, #0x200000
	bge _02040208
	rsb r3, r1, #0
	cmp r1, #0
	movge r3, r1
	cmp r3, #0x200000
	bge _02040208
	rsb r3, r2, #0
	cmp r2, #0
	movge r3, r2
	cmp r3, #0x200000
	bge _02040208
	mov r3, r6
	bl FUN_020402dc
	ldmfd sp!, {r4, r5, r6, pc}
_02040208:
	cmp r0, #0
	movge r4, r0, asr #8
	movlt r0, r0, asr #8
	orrlt r4, r0, #0xff000000
	cmp r1, #0
	movge r5, r1, asr #8
	movlt r0, r1, asr #8
	orrlt r5, r0, #0xff000000
	cmp r2, #0
	movge r12, r2, asr #8
	movlt r0, r2, asr #8
	orrlt r12, r0, #0xff000000
	cmp r4, #0
	bne _0204025C
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r5
	rsb r0, r12, #0
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_0204025C:
	cmp r12, #0
	bne _02040280
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	rsb r0, r5, #0
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_02040280:
	smull r0, r2, r5, r5
	adds r3, r0, #0x800
	smull r1, r0, r4, r12
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1, lsl #2
	bl FX_Sqrt
	cmp r6, #0
	beq _020402CC
	add r0, r0, r5
	rsb r0, r0, #0
	mov r1, r4, lsl #1
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_020402CC:
	sub r0, r0, r5
	mov r1, r4, lsl #1
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020401b8

	arm_func_start FUN_020402dc
FUN_020402dc: ; 0x020402DC
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r3
	bne _02040308
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	rsb r0, r2, #0
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_02040308:
	cmp r2, #0
	bne _0204032C
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r6
	rsb r0, r5, #0
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_0204032C:
	smull r0, r3, r5, r5
	adds r12, r0, #0x800
	smull r1, r0, r6, r2
	adc r2, r3, #0
	adds r1, r1, #0x800
	mov r3, r12, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1, lsl #2
	bl FX_Sqrt
	cmp r4, #0
	beq _02040378
	add r0, r0, r5
	rsb r0, r0, #0
	mov r1, r6, lsl #1
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_02040378:
	sub r0, r0, r5
	mov r1, r6, lsl #1
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020402dc

	arm_func_start FUN_02040388
FUN_02040388: ; 0x02040388
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0xc]
	ldr r2, [r0, #8]
	ldmia r0, {r1, r3}
	sub r0, r12, r3
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02040388

	arm_func_start FUN_020403a8
FUN_020403a8: ; 0x020403A8
	stmfd sp!, {r3, lr}
	ldmia r1, {r2, r12}
	ldr r1, [r0]
	ldr r3, [r0, #4]
	sub r1, r2, r1
	sub r0, r12, r3
	bl FX_Atan2Idx
	add r0, r0, #0x10000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020403a8

	arm_func_start FUN_020403d4
FUN_020403d4: ; 0x020403D4
	sub r0, r1, r0
	mov r1, #0x8000
	cmp r0, #0x8000
	subgt r0, r0, #0x10000
	rsb r1, r1, #0
	cmp r0, r1
	addle r0, r0, #0x10000
	bx lr
	arm_func_end FUN_020403d4

	arm_func_start FUN_020403f4
FUN_020403f4: ; 0x020403F4
	cmp r0, r1
	movhi r3, r1
	movhi r1, r0
	movhi r0, r3
	sub r1, r1, r0
	add r0, r0, r1, asr #1
	cmp r1, #0x8000
	addgt r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r2, #0
	addeq r0, r0, #0x8000
	moveq r0, r0, lsl #0x10
	moveq r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_020403f4

	arm_func_start FUN_02040430
FUN_02040430: ; 0x02040430
	stmfd sp!, {r4, lr}
	ldr r2, _02040478 ; =0x00007FFF
	mov r12, r0
	mov r4, r1
	and r3, r12, r2
	and r1, r4, r2
	cmp r3, r1
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, r12
	bl FUN_020403d4
	subs r0, r4, r0
	bpl _0204046C
_02040464:
	adds r0, r0, #0x10000
	bmi _02040464
_0204046C:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_02040478: .word 0x00007FFF
	arm_func_end FUN_02040430

	arm_func_start FUN_0204047c
FUN_0204047c: ; 0x0204047C
	add r0, r0, #0x10000
	sub r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	tst r0, #0x8000
	beq _020404A8
	cmp r2, #0
	rsbne r0, r0, #0x10000
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	bx lr
_020404A8:
	cmp r2, #0
	rsbeq r0, r0, #0x10000
	moveq r0, r0, lsl #0x10
	moveq r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_0204047c

	arm_func_start FUN_020404bc
FUN_020404bc: ; 0x020404BC
	ldr r1, _020404C8 ; =0x020A06D8
	ldrb r0, [r1, r0]
	bx lr
_020404C8: .word unk_020A06D8
	arm_func_end FUN_020404bc

	arm_func_start FUN_020404cc
FUN_020404cc: ; 0x020404CC
	mov r1, #0x80000000
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_020404cc

	arm_func_start FUN_020404dc
FUN_020404dc: ; 0x020404DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r3
	mov r5, r0
	mov r4, r1
	ldmia r7, {r3, r6}
	sub r0, r6, r4
	sub r1, r3, r5
	mov r8, r2
	bl FX_Atan2Idx
	ldr r1, [r7, #8]
	ldr r2, [r7, #0xc]
	mov r6, r0
	sub r0, r2, r4
	sub r1, r1, r5
	bl FX_Atan2Idx
	mov r2, r0
	mov r3, #1
	mov r1, r6
	mov r0, r8
	str r3, [sp]
	bl FUN_020408d8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020404dc

	arm_func_start FUN_0204053c
FUN_0204053c: ; 0x0204053C
	stmfd sp!, {r3, lr}
	ldr r1, _02040574 ; =0x0209A2C0
	mov r2, r0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _0204056C
	ldrsh r1, [r2, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0204056C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02040574: .word unk_0209A2C0
	arm_func_end FUN_0204053c

	arm_func_start FUN_02040578
FUN_02040578: ; 0x02040578
	cmp r1, r2
	movgt r3, r1
	movgt r1, r2
	movgt r2, r3
	cmp r0, r1
	blt _0204059C
	cmp r0, r2
	movle r0, #1
	bxle lr
_0204059C:
	mov r0, #0
	bx lr
	arm_func_end FUN_02040578

	arm_func_start FUN_020405a4
FUN_020405a4: ; 0x020405A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_020403d4
	cmp r0, #0
	mov r0, r6
	mov r1, r5
	bge _020405D4
	bl FUN_020403d4
	rsb r0, r0, #0
	b _020405D8
_020405D4:
	bl FUN_020403d4
_020405D8:
	mov r0, r0, lsl #0x10
	cmp r4, r0, lsr #16
	movhs r0, #1
	movlo r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020405a4

	arm_func_start FUN_020405ec
FUN_020405ec: ; 0x020405EC
	ldr r2, _02040614 ; =0x0209A7FC
	mov r3, #0
	ldr r1, [r2]
	cmp r0, r1
	blt _0204060C
	ldr r1, [r2, #8]
	cmp r0, r1
	movle r3, #1
_0204060C:
	mov r0, r3
	bx lr
_02040614: .word unk_0209A7FC
	arm_func_end FUN_020405ec

	arm_func_start FUN_02040618
FUN_02040618: ; 0x02040618
	ldr r2, _02040640 ; =0x0209A7FC
	mov r3, #0
	ldr r1, [r2, #4]
	cmp r0, r1
	blt _02040638
	ldr r1, [r2, #0xc]
	cmp r0, r1
	movle r3, #1
_02040638:
	mov r0, r3
	bx lr
_02040640: .word unk_0209A7FC
	arm_func_end FUN_02040618

	arm_func_start FUN_02040644
FUN_02040644: ; 0x02040644
	stmfd sp!, {r4, lr}
	ldr r3, _020406A0 ; =0x0209A7FC
	mov r12, #0
	ldr r2, [r3]
	mov lr, r12
	mov r4, r12
	cmp r0, r2
	blt _02040670
	ldr r2, [r3, #8]
	cmp r0, r2
	movle r4, #1
_02040670:
	cmp r4, #0
	beq _02040684
	ldr r0, [r3, #4]
	cmp r1, r0
	movge lr, #1
_02040684:
	cmp lr, #0
	beq _02040698
	ldr r0, [r3, #0xc]
	cmp r1, r0
	movle r12, #1
_02040698:
	mov r0, r12
	ldmfd sp!, {r4, pc}
_020406A0: .word unk_0209A7FC
	arm_func_end FUN_02040644

	arm_func_start FUN_020406a4
FUN_020406a4: ; 0x020406A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7]
	mov r4, r1
	ldr r5, _02040718 ; =0x0209A7FC
	mov r6, #0
	bl FUN_020405ec
	cmp r0, #0
	bne _020406E0
	ldr r1, [r7]
	ldr r0, [r5]
	mov r6, #1
	cmp r1, r0
	ldrge r0, [r5, #8]
	str r0, [r7]
_020406E0:
	ldr r0, [r4]
	bl FUN_02040618
	cmp r0, #0
	bne _02040708
	ldr r1, [r4]
	ldr r0, [r5, #4]
	mov r6, #1
	cmp r1, r0
	ldrge r0, [r5, #0xc]
	str r0, [r4]
_02040708:
	mov r0, #1
	cmp r6, #0
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02040718: .word unk_0209A7FC
	arm_func_end FUN_020406a4

	arm_func_start FUN_0204071c
FUN_0204071c: ; 0x0204071C
	ldr r3, [r0]
	cmp r1, r3
	blt _02040750
	ldr r3, [r0, #8]
	cmp r1, r3
	bgt _02040750
	ldr r1, [r0, #4]
	cmp r2, r1
	blt _02040750
	ldr r0, [r0, #0xc]
	cmp r2, r0
	movle r0, #1
	ble _02040754
_02040750:
	mov r0, #0
_02040754:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0204071c

	arm_func_start FUN_02040764
FUN_02040764: ; 0x02040764
	stmfd sp!, {r4, lr}
	ldr r3, [r1]
	mov r12, #0
	ldr r2, [r0]
	mov lr, r12
	mov r4, r12
	cmp r3, r2
	blt _02040790
	ldr r2, [r0, #8]
	cmp r3, r2
	movle r4, #1
_02040790:
	cmp r4, #0
	beq _020407A8
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	cmp r3, r2
	movge lr, #1
_020407A8:
	cmp lr, #0
	beq _020407C0
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	movle r12, #1
_020407C0:
	mov r0, #1
	cmp r12, #0
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02040764

	arm_func_start FUN_020407d0
FUN_020407d0: ; 0x020407D0
	stmfd sp!, {r4, r5, r6, lr}
	ldr lr, _0204083C ; =0x0209A7FC
	mov r4, #0
	ldr r12, [lr]
	mov r5, r4
	sub r12, r12, r2
	mov r6, r4
	cmp r0, r12
	blt _02040804
	ldr r12, [lr, #8]
	add r2, r12, r2
	cmp r0, r2
	movle r6, #1
_02040804:
	cmp r6, #0
	beq _0204081C
	ldr r0, [lr, #4]
	sub r0, r0, r3
	cmp r1, r0
	movge r5, #1
_0204081C:
	cmp r5, #0
	beq _02040834
	ldr r0, [lr, #0xc]
	add r0, r0, r3
	cmp r1, r0
	movle r4, #1
_02040834:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0204083C: .word unk_0209A7FC
	arm_func_end FUN_020407d0

	arm_func_start FUN_02040840
FUN_02040840: ; 0x02040840
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020408D0 ; 0x02099EF0
	mov r7, r0
	ldr r0, [r3]
	mov r6, r1
	ldr r0, [r0, #0x288]
	cmp r2, r0
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020408D4 ; =gLogicThink
	mov r5, #0
_0204086C:
	mov r0, r4
	mov r1, r5
	bl FUN_02073194
	cmp r0, #0
	beq _020408BC
	mov r0, r5
	bl FUN_02040170
	ldr r1, [r0]
	cmp r7, r1
	ble _020408BC
	ldr r1, [r0, #8]
	cmp r7, r1
	bge _020408BC
	ldr r1, [r0, #4]
	cmp r6, r1
	ble _020408BC
	ldr r0, [r0, #0xc]
	cmp r6, r0
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_020408BC:
	add r5, r5, #1
	cmp r5, #2
	blt _0204086C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020408D0: .word gUtilGame
_020408D4: .word gLogicThink
	arm_func_end FUN_02040840

	arm_func_start FUN_020408d8
FUN_020408d8: ; 0x020408D8
	stmfd sp!, {r3, lr}
	cmp r1, r2
	bne _02040924
	cmp r3, #0
	beq _0204090C
	ldrb r2, [sp, #8]
	cmp r2, #0
	beq _02040904
	cmp r0, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_02040904:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0204090C:
	ldrb r2, [sp, #8]
	cmp r2, #0
	cmpeq r0, r1
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_02040924:
	ldr r12, _020409D0 ; =0x00007FFF
	and lr, r1, r12
	and r12, r2, r12
	cmp lr, r12
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	cmp r1, r2
	movhi r12, r2
	movhi r2, r1
	movhi r1, r12
	sub r12, r2, r1
	cmp r12, #0x8000
	bgt _02040970
	cmp r0, r1
	bls _0204096C
	cmp r0, r2
	movlo lr, #1
	blo _0204098C
_0204096C:
	b _02040988
_02040970:
	cmp r0, r1
	blo _02040980
	cmp r0, r2
	bls _02040988
_02040980:
	mov lr, #1
	b _0204098C
_02040988:
	mov lr, #0
_0204098C:
	ldrb r12, [sp, #8]
	cmp r12, #0
	beq _020409B4
	cmp r0, r1
	cmpne r0, r2
	moveq r0, #1
	movne r0, #0
	orrs r0, lr, r0
	movne lr, #1
	moveq lr, #0
_020409B4:
	cmp r3, #0
	bne _020409C8
	cmp lr, #0
	moveq lr, #1
	movne lr, #0
_020409C8:
	mov r0, lr
	ldmfd sp!, {r3, pc}
_020409D0: .word 0x00007FFF
	arm_func_end FUN_020408d8

	arm_func_start FUN_020409d4
FUN_020409d4: ; 0x020409D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r5, r1
	mov r7, r2
	mov r0, r5
	mov r1, r8
	mov r6, r3
	bl FUN_020403a8
	mov r4, r0
	mov r0, r5
	mov r1, r7
	bl FUN_020403a8
	mov r9, r0
	mov r0, r5
	mov r1, r6
	bl FUN_020403a8
	mov r2, r0
	mov r0, r4
	mov r4, #1
	mov r5, #0
	mov r1, r9
	mov r3, r4
	str r5, [sp]
	bl FUN_020408d8
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	mov r1, r8
	bl FUN_020403a8
	mov r8, r0
	mov r0, r7
	mov r1, r6
	bl FUN_020403a8
	add r1, r9, #0x8000
	mov r1, r1, lsl #0x10
	mov r2, r0
	mov r0, r8
	mov r3, r4
	mov r1, r1, lsr #0x10
	str r5, [sp]
	bl FUN_020408d8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_020409d4

	arm_func_start FUN_02040a80
FUN_02040a80: ; 0x02040A80
	ldr r1, [r0]
	cmp r1, #0x80000000
	ldrne r0, [r0, #4]
	cmpne r0, #0x80000000
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02040a80

	arm_func_start FUN_02040aa8
FUN_02040aa8: ; 0x02040AA8
	ldr r1, _02040AC4 ; =0x0209A2C0
	ldrsh r0, [r0, #0x94]
	ldr r1, [r1, #0x48]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
_02040AC4: .word unk_0209A2C0
	arm_func_end FUN_02040aa8

	arm_func_start FUN_02040ac8
FUN_02040ac8: ; 0x02040AC8
	cmp r0, #1
	blt _02040ADC
	cmp r0, #0xb
	movle r0, #1
	bxle lr
_02040ADC:
	mov r0, #0
	bx lr
	arm_func_end FUN_02040ac8

	arm_func_start FUN_02040ae4
FUN_02040ae4: ; 0x02040AE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r1
	ldr r1, [r4]
	ldr r2, [r4, #8]
	bl FUN_02040578
	cmp r0, #0
	beq _02040B20
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	mov r0, r5
	bl FUN_02040578
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_02040B20:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02040ae4

	arm_func_start FUN_02040b28
FUN_02040b28: ; 0x02040B28
	ldr r3, [r0]
	ldr r2, [r1]
	cmp r3, r2
	ldreq r2, [r0, #4]
	ldreq r0, [r1, #4]
	cmpeq r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02040b28

	arm_func_start FUN_02040b4c
FUN_02040b4c: ; 0x02040B4C
	ldr r0, [r0, #0x88]
	ldrb r1, [r0, #0x84]
	ldrb r0, [r0, #0x85]
	cmp r1, r0
	movlo r0, #1
	movhs r0, #0
	bx lr
	arm_func_end FUN_02040b4c

	arm_func_start FUN_02040b68
FUN_02040b68: ; 0x02040B68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl FUN_02040b28
	cmp r0, #0
	bne _02040B98
	mov r0, r6
	mov r1, r4
	bl FUN_02040b28
	cmp r0, #0
	beq _02040BA0
_02040B98:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02040BA0:
	mov r0, r6
	mov r1, r4
	bl FUN_020403a8
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_020403a8
	subs r1, r4, r0
	ldr r0, _02040BD8 ; =0x00007FFF
	rsbmi r1, r1, #0
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02040BD8: .word 0x00007FFF
	arm_func_end FUN_02040b68

	arm_func_start FUN_02040bdc
FUN_02040bdc: ; 0x02040BDC
	stmfd sp!, {r3, lr}
	ldr r12, [r2]
	ldr lr, [r0]
	add r12, r12, r3
	cmp lr, r12
	strlt r12, [r0]
	blt _02040C08
	ldr r12, [r2, #8]
	sub r12, r12, r3
	cmp lr, r12
	strgt r12, [r0]
_02040C08:
	ldr r0, [r2, #4]
	ldr r12, [r1]
	add r0, r0, r3
	cmp r12, r0
	strlt r0, [r1]
	ldmltfd sp!, {r3, pc}
	ldr r0, [r2, #0xc]
	sub r0, r0, r3
	cmp r12, r0
	strgt r0, [r1]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02040bdc

	arm_func_start FUN_02040c34
FUN_02040c34: ; 0x02040C34
	ldr r12, _02040C48 ; =FUN_02040bdc
	mov r3, r2
	mov r2, r1
	add r1, r0, #4
	bx r12
_02040C48: .word FUN_02040bdc
	arm_func_end FUN_02040c34

	arm_func_start FUN_02040c4c
FUN_02040c4c: ; 0x02040C4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldmia r6, {r0, r1}
	bl FUN_02040ae4
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r2, r4
	ldmia r5, {r0, r1}
	bl FUN_02040ae4
	cmp r0, #0
	bne _02040CA0
	mov r5, #1
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02040c34
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_02040CA0:
	ldr r0, [r4]
	ldr r2, [r6]
	cmp r2, r0
	bgt _02040CE0
	ldr r1, [r5]
	sub r0, r1, r0
	sub r1, r1, r2
	bl FX_Div
	ldr r3, [r5, #4]
	ldr r1, [r6, #4]
	ldr r12, [r4]
	sub r1, r1, r3
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	add r2, r12, #1
	b _02040D18
_02040CE0:
	ldr r0, [r4, #8]
	cmp r2, r0
	blt _02040D30
	ldr r1, [r5]
	sub r0, r0, r1
	sub r1, r2, r1
	bl FX_Div
	ldr r3, [r5, #4]
	ldr r1, [r6, #4]
	ldr r12, [r4, #8]
	sub r1, r1, r3
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	sub r2, r12, #1
_02040D18:
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r2, [r6]
	str r0, [r6, #4]
_02040D30:
	ldr r0, [r4, #4]
	ldr r2, [r6, #4]
	cmp r2, r0
	bgt _02040D70
	ldr r1, [r5, #4]
	sub r0, r1, r0
	sub r1, r1, r2
	bl FX_Div
	ldr r5, [r5]
	ldr r2, [r6]
	ldr r1, [r4, #4]
	sub r2, r2, r5
	smull r0, r3, r2, r0
	adds r2, r0, #0x800
	add r0, r1, #1
	b _02040DA8
_02040D70:
	ldr r0, [r4, #0xc]
	cmp r2, r0
	blt _02040DC0
	ldr r1, [r5, #4]
	sub r0, r0, r1
	sub r1, r2, r1
	bl FX_Div
	ldr r5, [r5]
	ldr r2, [r6]
	ldr r1, [r4, #0xc]
	sub r2, r2, r5
	smull r0, r3, r2, r0
	adds r2, r0, #0x800
	sub r0, r1, #1
_02040DA8:
	adc r1, r3, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r5, r2
	str r1, [r6]
	str r0, [r6, #4]
_02040DC0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02040c4c

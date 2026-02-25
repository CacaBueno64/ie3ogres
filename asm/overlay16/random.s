
	.include "/macros/function.inc"
	.include "/include/random.inc"

	.text
	arm_func_start FUN_ov16_020ef850
FUN_ov16_020ef850: ; 0x020EF850
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020EF8B8 ; =0x04000006
	ldr r6, _020EF8BC ; =0x02FFFC3C
	ldrh r2, [r7]
	ldr r1, [r6]
	ldr r0, _020EF8C0 ; =0x0209A178
	add r2, r1, r2
	mov r5, #0
	ldr lr, _020EF8C4 ; =0x6C078965
	str r2, [r0]
	ldr r4, _020EF8C8 ; =0x5D588B65
	stmib r0, {r5, lr}
	ldr r12, _020EF8CC ; =0x00269EC3
	str r4, [r0, #0xc]
	str r12, [r0, #0x10]
	mov r3, r5
	str r3, [r0, #0x14]
	ldrh r2, [r7]
	ldr r1, [r6]
	ldr r0, _020EF8D0 ; =0x0209A190
	add r2, r1, r2
	stmia r0, {r2, r5, lr}
	str r4, [r0, #0xc]
	str r12, [r0, #0x10]
	str r3, [r0, #0x14]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EF8B8: .word 0x04000006
_020EF8BC: .word 0x02FFFC3C
_020EF8C0: .word unk_0209A178
_020EF8C4: .word 0x6C078965
_020EF8C8: .word 0x5D588B65
_020EF8CC: .word 0x00269EC3
_020EF8D0: .word unk_0209A190
	arm_func_end FUN_ov16_020ef850

	arm_func_start FUN_ov16_020ef8d4
FUN_ov16_020ef8d4: ; 0x020EF8D4
	stmfd sp!, {r4, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020EF924 ; =0x0209A178
	ldmia r1, {r2, r3, r12}
	umull r4, lr, r12, r2
	mla lr, r12, r3, lr
	ldr r3, [r1, #0xc]
	ldr r12, [r1, #0x10]
	mla lr, r3, r2, lr
	ldr r2, [r1, #0x14]
	adds r4, r12, r4
	adc r12, r2, lr
	stmia r1, {r4, r12}
	cmp r0, #0
	umullne r1, r0, r12, r0
	movne r12, r0
	mov r0, r12
	ldmfd sp!, {r4, pc}
_020EF924: .word unk_0209A178
	arm_func_end FUN_ov16_020ef8d4

	arm_func_start FUN_ov16_020ef928
FUN_ov16_020ef928: ; 0x020EF928
	stmfd sp!, {r4, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020EF978 ; =0x0209A190
	ldmia r1, {r2, r3, r12}
	umull r4, lr, r12, r2
	mla lr, r12, r3, lr
	ldr r3, [r1, #0xc]
	ldr r12, [r1, #0x10]
	mla lr, r3, r2, lr
	ldr r2, [r1, #0x14]
	adds r4, r12, r4
	adc r12, r2, lr
	stmia r1, {r4, r12}
	cmp r0, #0
	umullne r1, r0, r12, r0
	movne r12, r0
	mov r0, r12
	ldmfd sp!, {r4, pc}
_020EF978: .word unk_0209A190
	arm_func_end FUN_ov16_020ef928

	arm_func_start FUN_ov16_020ef97c
FUN_ov16_020ef97c: ; 0x020EF97C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	beq _020EF9A8
	mov r4, #0x18
	ldr r0, _020EF9B0 ; =0x0209A178
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
_020EF9A8:
	ldr r0, _020EF9B0 ; =0x0209A178
	ldmfd sp!, {r3, r4, r5, pc}
_020EF9B0: .word unk_0209A178
	arm_func_end FUN_ov16_020ef97c

	arm_func_start FUN_ov16_020ef9b4
FUN_ov16_020ef9b4: ; 0x020EF9B4
	stmfd sp!, {r3, r4, r5, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _020EF9E4 ; =0x0209A178
	mov r4, #0x18
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_020EF9E4: .word unk_0209A178
	arm_func_end FUN_ov16_020ef9b4

	arm_func_start FUN_ov16_020ef9e8
FUN_ov16_020ef9e8: ; 0x020EF9E8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov16_020ef8d4
	mov r0, r4
	bl FUN_ov16_020ef928
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020ef9e8

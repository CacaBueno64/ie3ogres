
	.include "/macros/function.inc"
	.include "/include/ov16_020ef624.inc"

	.text
	arm_func_start _ZN6Shadow10InitializeEi ; https://decomp.me/scratch/eMPXE
_ZN6Shadow10InitializeEi: ; 0x020EF624
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #6
	mul r1, r8, r0
	ldr r4, _020EF704 ; =0x02119EC4
	ldr r5, _020EF708 ; =gAllocator
	str r8, [r4, #4]
	mov r0, r5
	str r8, [r4, #0xc]
	bl _ZN10CAllocator8allocateEm
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r0, r5
	bl _ZN10CAllocator8allocateEm
	str r0, [r4]
	cmp r8, #0
	ldr r7, [r4, #8]
	mov r6, #0
	ble _020EF6C0
	ldr r5, _020EF70C ; =FX_SinCosTable_
	ldr r4, _020EF710 ; =0x00000199
_020EF678:
	mov r1, r8
	mov r0, r6, lsl #0x10
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r2, r0, lsl #1
	mov r0, r2, lsl #1
	ldrsh r1, [r5, r0]
	add r0, r5, r2, lsl #1
	add r6, r6, #1
	strh r1, [r7]
	ldrsh r0, [r0, #2]
	strh r4, [r7, #2]
	cmp r6, r8
	strh r0, [r7, #4]
	add r7, r7, #6
	blt _020EF678
_020EF6C0:
	ldr r0, _020EF704 ; =0x02119EC4
	mov r1, #0
	ldr r2, [r0]
	cmp r8, #1
	strb r1, [r2]
	mov r1, #1
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
_020EF6DC:
	add r0, r1, r1, lsr #31
	tst r1, #1
	movne r0, r0, asr #1
	addne r0, r0, #1
	subeq r0, r8, r0, asr #1
	strb r0, [r2, r1]
	add r1, r1, #1
	cmp r1, r8
	blt _020EF6DC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020EF704: .word ov16_02119EC4
_020EF708: .word gAllocator
_020EF70C: .word FX_SinCosTable_
_020EF710: .word 0x00000199
	arm_func_end _ZN6Shadow10InitializeEi

	arm_func_start FUN_ov16_020ef714 ; https://decomp.me/scratch/7y8lP
FUN_ov16_020ef714: ; 0x020EF714
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, #1
	mov r6, r1
	mov r7, r0
	mov r5, #0
	add r1, sp, #0x10
	mov r2, r4
	mov r0, #0x30
	str r5, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0xc
	mov r2, r4
	mov r0, #0x31
	str r5, [sp, #0xc]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #8
	mov r2, r4
	mov r0, #0x2a
	str r5, [sp, #8]
	bl NNS_G3dGeBufferOP_N
	mov r0, r6, lsl #0x18
	orr r0, r0, #0xc1
	orr r0, r0, r7, lsl #16
	str r0, [sp, #4]
	add r1, sp, #4
	mov r0, #0x29
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	mov r2, r4
	mov r0, #0x20
	add r1, sp, #0
	str r5, [sp]
	bl NNS_G3dGeBufferOP_N
	bl FUN_ov16_020ef7a8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020ef714

	arm_func_start FUN_ov16_020ef7a8
FUN_ov16_020ef7a8: ; 0x020EF7A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r6, _020EF84C ; =0x02119EC4
	mov r0, #2
	ldr r5, [r6]
	add r1, sp, #8
	str r0, [sp, #8]
	mov r0, #0x40
	mov r2, #1
	ldr r4, [r6, #8]
	bl NNS_G3dGeBufferOP_N
	ldr r6, [r6, #0xc]
	mov r7, #0
	cmp r6, #0
	ble _020EF834
	mov r10, #0x23
	add r9, sp, #0
	mov r11, #2
	mov r8, #6
_020EF7F4:
	ldrb r2, [r5], #1
	mov r0, r10
	mov r1, r9
	mul r3, r2, r8
	add r2, r4, r3
	ldrh r12, [r4, r3]
	ldrh r3, [r2, #2]
	ldrh lr, [r2, #4]
	mov r2, r11
	orr r3, r12, r3, lsl #16
	str r3, [sp]
	str lr, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	add r7, r7, #1
	cmp r7, r6
	blt _020EF7F4
_020EF834:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020EF84C: .word ov16_02119EC4
	arm_func_end FUN_ov16_020ef7a8

    .bss
	.global ov16_02119EC4
ov16_02119EC4:
	.space 0x10

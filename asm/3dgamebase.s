
	.include "/macros/function.inc"
	.include "/include/3dgamebase.inc"

    .text
	arm_func_start _ZN11C3DGameBaseC2Ev
_ZN11C3DGameBaseC2Ev: ; 0x02052144
	ldr r2, _02052164 ; =0x020905D4
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
_02052164: .word _ZTV11C3DGameBase+0x8
	arm_func_end _ZN11C3DGameBaseC2Ev

	arm_func_start FUN_02052168
FUN_02052168: ; 0x02052168
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mul r4, r1, r2
	mov r5, r0
	str r1, [r5, #4]
	ldr r0, _0205219C ; =gAllocator
	mov r1, r4
	bl _ZN9Allocator8allocateEm
	mov r2, r4
	mov r1, #0
	str r0, [r5, #8]
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0205219C: .word gAllocator
	arm_func_end FUN_02052168

	arm_func_start FUN_020521a0
FUN_020521a0: ; 0x020521A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020521BC
	ldr r0, _020521CC ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_020521BC:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020521CC: .word gAllocator
	arm_func_end FUN_020521a0

	arm_func_start FUN_020521d0
FUN_020521d0: ; 0x020521D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r3, [r6, #4]
	mov r5, r1
	cmp r5, r3
	mov r4, r2
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	bge _02052258
	cmp r3, #0
	mov r5, #0
	ble _02052250
	mov r7, #0xc
	mov r8, r7
_0205220C:
	mov r0, r6
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2]
	blx r2
	cmp r4, #0
	ldr r1, [r6, #8]
	beq _02052238
	mla r1, r5, r8, r1
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	b _02052240
_02052238:
	mla r1, r5, r7, r1
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
_02052240:
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0205220C
_02052250:
	ldr r0, [r6, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02052258:
	ldr r2, [r0]
	ldr r2, [r2]
	blx r2
	ldr r2, [r6, #8]
	mov r1, #0xc
	mla r1, r5, r1, r2
	cmp r4, #0
	beq _02052280
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	b _02052284
_02052280:
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
_02052284:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020521d0

	arm_func_start FUN_0205228c
FUN_0205228c: ; 0x0205228C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #4]
	cmp r1, r2
	mvnge r0, #0
	ldmgefd sp!, {r3, pc}
	cmp r1, #0
	bge _020522C4
	ldr r0, [r0, #8]
	mov r1, r2
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	beq _020522E4
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020522C4:
	ldr r2, [r0, #8]
	mov r0, #0xc
	mla r0, r1, r0, r2
	mov r1, #1
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
_020522E4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205228c

	arm_func_start FUN_020522ec
FUN_020522ec: ; 0x020522EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #4]
	mov r9, r1
	cmp r9, r0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	bge _0205236C
	mov r9, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
_02052324:
	mul r6, r9, r4
	ldr r7, [r10, #8]
	mov r1, r11
	add r8, r7, r6
	mov r0, r8
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r8
	bl _ZN7Archive10DeallocateEP9SFileData
	str r5, [r7, r6]
	str r5, [r8, #4]
	strb r5, [r8, #8]
	strb r5, [r8, #9]
	strb r5, [r8, #0xa]
	ldr r0, [r10, #4]
	add r9, r9, #1
	cmp r9, r0
	blt _02052324
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205236C:
	mov r0, #0xc
	mul r4, r9, r0
	ldr r5, [r10, #8]
	mov r1, #1
	add r6, r5, r4
	mov r0, r6
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r6
	bl _ZN7Archive10DeallocateEP9SFileData
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_020522ec

	arm_func_start FUN_020523ac
FUN_020523ac: ; 0x020523AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _020523F4
	mov r4, #0x1bc
_020523D8:
	ldr r0, [r6, #0x10]
	mla r0, r5, r4, r0
	bl FUN_ov16_020faac4
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _020523D8
_020523F4:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020523ac

	arm_func_start FUN_020523fc
FUN_020523fc: ; 0x020523FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _02052444
	mov r4, #0x1bc
_02052428:
	ldr r0, [r6, #0x10]
	mla r0, r5, r4, r0
	bl FUN_ov16_020fab94
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _02052428
_02052444:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020523fc

	.data
	.global unk_020905B4
unk_020905B4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global _ZTV11C3DGameBase
_ZTV11C3DGameBase:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word 0
	.word 0
	.word 0
	.word FUN_020523ac
	.word FUN_020523fc

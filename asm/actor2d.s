
	.include "/macros/function.inc"
	.include "/include/actor2d.inc"

    .text
	arm_func_start FUN_0205413c
FUN_0205413c: ; 0x0205413C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [sp, #0x18]
	mov r6, #0
	ldr r4, [sp, #0x1c]
	ldr lr, [sp, #0x20]
	strb r1, [r0, #0xc]
	strb r6, [r0, #0xd]
	str r5, [r0]
	ldr r12, [sp, #0x24]
	stmib r0, {r4, lr}
	sub r2, r6, #1
	ldr r3, [sp, #0x28]
	str r12, [r0, #0x10]
	str r3, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_0205413c

	arm_func_start FUN_02054194
FUN_02054194: ; 0x02054194
	ldrsb r2, [r0, #0xd]
	orr r1, r2, r1
	strb r1, [r0, #0xd]
	bx lr
	arm_func_end FUN_02054194

	arm_func_start FUN_020541a4
FUN_020541a4: ; 0x020541A4
	ldrsb r2, [r0, #0xd]
	mvn r1, r1
	mov r1, r1, lsl #0x18
	and r1, r2, r1, asr #24
	strb r1, [r0, #0xd]
	bx lr
	arm_func_end FUN_020541a4

	arm_func_start FUN_020541bc
FUN_020541bc: ; 0x020541BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x1c
	bl MIi_CpuCopyFast
	ldrh r0, [r4, #0x4e]
	strh r0, [r5, #0x20]
	ldrb r0, [r4, #0x5c]
	strb r0, [r5, #0x23]
	ldrh r0, [r4, #0x54]
	strh r0, [r5, #0x24]
	ldrh r0, [r4, #0x56]
	strh r0, [r5, #0x26]
	ldrb r0, [r4, #0x53]
	strb r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020541bc

	arm_func_start FUN_02054204
FUN_02054204: ; 0x02054204
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	cmpeq r3, #0
	subne r4, r3, r1
	mov lr, r5
	addne r12, r4, r4, lsr #31
	movne lr, r12, asr #1
	cmp r2, #0
	ldreq r4, [sp, #0x10]
	str r1, [r0, #0x20]
	cmpeq r4, #0
	ldrne r4, [sp, #0x10]
	str r2, [r0, #0x24]
	subne r4, r4, r2
	addne r12, r4, r4, lsr #31
	movne r5, r12, asr #1
	add r4, r1, lr
	ldr r12, [sp, #0x10]
	add lr, r2, r5
	str r4, [r0, #0x14]
	str lr, [r0, #0x1c]
	str r3, [r0, #0x28]
	str r12, [r0, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054204

	arm_func_start FUN_02054268
FUN_02054268: ; 0x02054268
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	mov r2, #0xd4
	bl MIi_CpuClearFast
	mov r2, #1
	mov r3, #0x1e
	mov r1, #0x100
	mov r0, #2
	strb r3, [r4, #0x68]
	strb r2, [r4, #0x69]
	str r1, [r4, #0xa0]
	strb r2, [r4, #0xa6]
	strb r0, [r4, #0xa7]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02054268

	arm_func_start FUN_020542a8
FUN_020542a8: ; 0x020542A8
	ldr r0, [r0, #0x5c]
	bx lr
	arm_func_end FUN_020542a8

	arm_func_start FUN_020542b0
FUN_020542b0: ; 0x020542B0
	ldr r0, [r0, #0x5c]
	mov r0, r0, asr #8
	bx lr
	arm_func_end FUN_020542b0

	arm_func_start FUN_020542bc
FUN_020542bc: ; 0x020542BC
	ldr r0, [r0, #0x5c]
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_020542bc

	arm_func_start FUN_020542c8
FUN_020542c8: ; 0x020542C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x84]
	ldr lr, [r0, #0x88]
	ldr r12, [r0, #0x8c]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	str r4, [r0, #0x78]
	str lr, [r0, #0x7c]
	str r12, [r0, #0x80]
	str r3, [r0, #0x84]
	str r2, [r0, #0x88]
	str r1, [r0, #0x8c]
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_020542c8

	arm_func_start FUN_0205430c
FUN_0205430c: ; 0x0205430C
	add r0, r0, #0x84
	bx lr
	arm_func_end FUN_0205430c

	arm_func_start FUN_02054314
FUN_02054314: ; 0x02054314
	add r0, r0, #0x78
	bx lr
	arm_func_end FUN_02054314

	arm_func_start FUN_0205431c
FUN_0205431c: ; 0x0205431C
	stmfd sp!, {r0, r1, r2, r3}
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	str r3, [r0, #0x6c]
	str r2, [r0, #0x70]
	str r1, [r0, #0x74]
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_0205431c

	arm_func_start FUN_02054340
FUN_02054340: ; 0x02054340
	str r1, [r0, #0x90]
	str r2, [r0, #0x94]
	str r3, [r0, #0x98]
	bx lr
	arm_func_end FUN_02054340

	arm_func_start FUN_02054350
FUN_02054350: ; 0x02054350
	cmp r1, #0
	movlt r1, #0
	blt _02054364
	cmp r1, #0x1f
	movge r1, #0x1e
_02054364:
	strb r1, [r0, #0x68]
	bx lr
	arm_func_end FUN_02054350

	arm_func_start FUN_0205436c
FUN_0205436c: ; 0x0205436C
	str r1, [r0, #0xa0]
	cmp r2, #0
	bxeq lr
	cmp r1, #0xef
	movge r1, #1
	strgeb r1, [r0, #0xa6]
	movlt r1, #0
	strltb r1, [r0, #0xa6]
	bx lr
	arm_func_end FUN_0205436c

	arm_func_start FUN_02054390
FUN_02054390: ; 0x02054390
	strb r1, [r0, #0xa6]
	bx lr
	arm_func_end FUN_02054390

	arm_func_start FUN_02054398
FUN_02054398: ; 0x02054398
	ldrh r2, [r0, #0x6a]
	cmp r2, r1
	movne r2, #1
	strneb r2, [r0, #0x69]
	strh r1, [r0, #0x6a]
	bx lr
	arm_func_end FUN_02054398

	arm_func_start FUN_020543b0
FUN_020543b0: ; 0x020543B0
	ldrh r0, [r0, #0xa4]
	and r0, r1, r0
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_020543b0

	arm_func_start FUN_020543c8
FUN_020543c8: ; 0x020543C8
	ldrh r2, [r0, #0xa4]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0xa4]
	bx lr
	arm_func_end FUN_020543c8

	arm_func_start FUN_020543dc
FUN_020543dc: ; 0x020543DC
	ldrh r2, [r0, #0xa4]
	mvn r1, r1
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r0, #0xa4]
	bx lr
	arm_func_end FUN_020543dc

	arm_func_start FUN_020543f4
FUN_020543f4: ; 0x020543F4
	ldr r12, _02054400 ; =FUN_020543b0
	mov r1, #2
	bx r12
_02054400: .word FUN_020543b0
	arm_func_end FUN_020543f4

	arm_func_start FUN_02054404
FUN_02054404: ; 0x02054404
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r1, r4
	bl FUN_020543b0
	cmp r0, #0
	movne r4, #0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02054404

	arm_func_start FUN_02054424
FUN_02054424: ; 0x02054424
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02054404
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	mov r0, r5
	mov r1, #2
	beq _02054454
	bl FUN_020543c8
	ldmfd sp!, {r3, r4, r5, pc}
_02054454:
	bl FUN_020543dc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054424

	arm_func_start FUN_0205445c
FUN_0205445c: ; 0x0205445C
	ldr r12, _02054468 ; =FUN_020543b0
	mov r1, #0x40
	bx r12
_02054468: .word FUN_020543b0
	arm_func_end FUN_0205445c

	.data
	.global unk_020906B0
unk_020906B0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

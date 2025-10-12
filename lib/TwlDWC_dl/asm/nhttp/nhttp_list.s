
	.include "asm/macros/function.inc"
	.public NHTTPi_CompleteCallback
	.public NHTTPi_DeleteConnection
	.public NHTTPi_Request2Connection
	.public NHTTPi_alloc
	.public NHTTPi_destroyRequestObject
	.public NHTTPi_free
	.public NHTTPi_getHdrFromList

	.text
	arm_func_start NHTTPi_InitListInfo
NHTTPi_InitListInfo: ; 0x020D0030
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end NHTTPi_InitListInfo

	arm_func_start NHTTPi_setReqQueue
NHTTPi_setReqQueue: ; 0x020D0040
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r0, #0x14
	mov r1, #4
	mvn r4, #0
	bl NHTTPi_alloc
	cmp r0, #0
	beq _020D00D0
	ldr r1, [r6]
	cmp r1, #0
	streq r0, [r0]
	streq r0, [r0, #4]
	streq r0, [r6]
	beq _020D00A0
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6]
	str r1, [r0, #4]
	ldr r1, [r6]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [r6]
	str r0, [r1]
_020D00A0:
	ldr r4, [r6, #4]
	ldr r2, [r6, #4]
	mvn r1, #0
	add r2, r2, #1
	str r2, [r6, #4]
	str r4, [r0, #8]
	str r5, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r0, [r6, #4]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [r6, #4]
_020D00D0:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_setReqQueue

	arm_func_start NHTTPi_findReqQueue
NHTTPi_findReqQueue: ; 0x020D00D8
	ldr r3, [r0]
	mov r0, #0
	cmp r3, #0
	bxeq lr
	ldr r2, [r3, #8]
	cmp r2, r1
	moveq r0, r3
	bxeq lr
	ldr r12, [r3, #4]
	cmp r12, r3
	bxeq lr
_020D0104:
	ldr r2, [r12, #8]
	cmp r2, r1
	moveq r0, r12
	bxeq lr
	ldr r12, [r12, #4]
	cmp r12, r3
	bne _020D0104
	bx lr
	arm_func_end NHTTPi_findReqQueue

	arm_func_start NHTTPi_freeReqQueue
NHTTPi_freeReqQueue: ; 0x020D0124
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r1, r2
	mov r6, r0
	mov r7, #0
	bl NHTTPi_findReqQueue
	movs r4, r0
	beq _020D01CC
	ldr r1, [r6]
	ldr r0, [r1]
	cmp r1, r0
	beq _020D017C
	ldmia r4, {r0, r1}
	str r1, [r0, #4]
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r1, [r0]
	ldr r0, [r6]
	cmp r0, r4
	ldreq r0, [r4, #4]
	streq r0, [r6]
	b _020D0180
_020D017C:
	str r7, [r6]
_020D0180:
	ldr r1, [r4, #0xc]
	mov r0, r5
	bl NHTTPi_Request2Connection
	mov r6, r0
	ldr r1, [r4, #0xc]
	mov r0, r5
	bl NHTTPi_destroyRequestObject
	mov r0, r4
	bl NHTTPi_free
	cmp r6, #0
	beq _020D01C8
	mov r2, #8
	mov r0, r5
	mov r1, r6
	str r2, [r6, #4]
	bl NHTTPi_CompleteCallback
	mov r0, r6
	bl NHTTPi_DeleteConnection
_020D01C8:
	mov r7, #1
_020D01CC:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NHTTPi_freeReqQueue

	arm_func_start NHTTPi_allFreeReqQueue
NHTTPi_allFreeReqQueue: ; 0x020D01D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D01EC:
	ldr r2, [r0, #8]
	mov r0, r5
	mov r1, r4
	bl NHTTPi_freeReqQueue
	ldr r0, [r5]
	cmp r0, #0
	bne _020D01EC
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_allFreeReqQueue

	arm_func_start NHTTPi_getReqFromReqQueue
NHTTPi_getReqFromReqQueue: ; 0x020D020C
	ldr r12, _020D0214 ; =NHTTPi_getHdrFromList
	bx r12
_020D0214: .word NHTTPi_getHdrFromList
	arm_func_end NHTTPi_getReqFromReqQueue

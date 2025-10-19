
	.include "asm/macros/function.inc"
	.public NHTTPi_CheckCurrentThread
	.public NHTTPi_GetBgnEndInfoP
	.public NHTTPi_GetConnectionListLength
	.public NHTTPi_GetListInfoP
	.public NHTTPi_GetMutexInfoP
	.public NHTTPi_GetReqInfoP
	.public NHTTPi_GetSystemInfoP
	.public NHTTPi_GetThreadInfoP
	.public NHTTPi_InitConnectionList
	.public NHTTPi_InitListInfo
	.public NHTTPi_InitRequestInfo
	.public NHTTPi_SocClose
	.public NHTTPi_cancelAllRequests
	.public NHTTPi_createCommThread
	.public NHTTPi_destroyCommThread
	.public NHTTPi_exitLockReqList
	.public NHTTPi_initLockReqList

	.text
	arm_func_start NHTTPi_InitBgnEndInfo
NHTTPi_InitBgnEndInfo: ; 0x020CFB28
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	sub r2, r4, #1
	mov r1, r4
	str r4, [r5]
	str r4, [r5, #4]
	str r4, [r5, #8]
	str r2, [r5, #0xc]
	bl NHTTPi_SetSSLError
	mov r0, r5
	mov r1, r4
	bl NHTTPi_SetError
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_InitBgnEndInfo

	arm_func_start NHTTPi_alloc
NHTTPi_alloc: ; 0x020CFB6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl NHTTPi_GetSystemInfoP
	ldr r2, [r0]
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_alloc

	arm_func_start NHTTPi_free
NHTTPi_free: ; 0x020CFB9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_free

	arm_func_start NHTTPi_SetError
NHTTPi_SetError: ; 0x020CFBC0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end NHTTPi_SetError

	arm_func_start NHTTPi_SetSSLError
NHTTPi_SetSSLError: ; 0x020CFBC8
	str r1, [r0, #0x10]
	bx lr
	arm_func_end NHTTPi_SetSSLError

	arm_func_start NHTTPi_GetSSLError
NHTTPi_GetSSLError: ; 0x020CFBD0
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end NHTTPi_GetSSLError

	arm_func_start NHTTPi_Startup
NHTTPi_Startup: ; 0x020CFBD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl NHTTPi_GetBgnEndInfoP
	mov r6, r0
	mov r0, r10
	bl NHTTPi_GetListInfoP
	mov r5, r0
	mov r0, r10
	bl NHTTPi_GetReqInfoP
	mov r4, r0
	mov r0, r10
	bl NHTTPi_GetMutexInfoP
	mov r11, r0
	mov r0, r10
	bl NHTTPi_GetThreadInfoP
	str r9, [r6]
	str r8, [r6, #4]
	mov r8, r0
	mov r0, r5
	mov r5, #0
	str r5, [r6, #0x14]
	str r5, [r6, #0x10]
	str r5, [r6, #0x18]
	str r5, [r6, #0x24]
	bl NHTTPi_InitListInfo
	mov r0, r4
	bl NHTTPi_InitRequestInfo
	mov r0, r11
	bl NHTTPi_initLockReqList
	bl NHTTPi_InitConnectionList
	sub r0, r5, #1
	str r0, [r6, #0xc]
	mov r0, #0x2000
	mov r1, #8
	bl NHTTPi_alloc
	str r0, [r6, #0x1c]
	movs r2, r0
	bne _020CFC94
	mov r0, r6
	mov r1, #1
	bl NHTTPi_SetError
	bl NHTTPi_exitLockReqList
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFC94:
	mov r0, r8
	mov r1, r7
	bl NHTTPi_createCommThread
	cmp r0, #0
	movne r0, #1
	strne r0, [r6, #8]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, #9
	bl NHTTPi_SetError
	ldr r0, [r6, #0x1c]
	bl NHTTPi_free
	str r5, [r6, #0x1c]
	bl NHTTPi_exitLockReqList
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_Startup

	arm_func_start NHTTPi_CleanupAsync
NHTTPi_CleanupAsync: ; 0x020CFCD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl NHTTPi_GetBgnEndInfoP
	mov r5, r0
	mov r0, r7
	bl NHTTPi_GetThreadInfoP
	mov r1, #1
	mov r4, r0
	bl NHTTPi_CheckCurrentThread
	mov r0, r7
	bl NHTTPi_cancelAllRequests
	mov r0, r4
	mov r1, r5
	bl NHTTPi_destroyCommThread
	ldr r0, [r5, #0x1c]
	bl NHTTPi_free
	mov r4, #0
	str r4, [r5, #0x1c]
	bl NHTTPi_exitLockReqList
	str r4, [r5, #8]
	cmp r6, #0
	beq _020CFD34
	blx r6
_020CFD34:
	bl NHTTPi_GetConnectionListLength
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mov r0, r4
	mov r1, r4
	bl NHTTPi_SocClose
	sub r0, r4, #1
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NHTTPi_CleanupAsync

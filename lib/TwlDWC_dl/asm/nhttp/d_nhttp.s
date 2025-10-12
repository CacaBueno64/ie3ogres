
	.include "asm/macros/function.inc"
	.public NHTTP_GetResponseHeaderField
	.public NHTTPi_AddRequestHeaderField
	.public NHTTPi_AddRequestPostDataAscii
	.public NHTTPi_CleanupAsync
	.public NHTTPi_GetBgnEndInfoP
	.public NHTTPi_GetMutexInfoP
	.public NHTTPi_GetRequest
	.public NHTTPi_GetResponse
	.public NHTTPi_GetSystemInfoP
	.public NHTTPi_Startup

	.text
	arm_func_start NHTTP_Startup
NHTTP_Startup: ; 0x020D38F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl NHTTPi_Startup
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_Startup

	arm_func_start NHTTP_CleanupAsync
NHTTP_CleanupAsync: ; 0x020D392C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	mov r1, r4
	bl NHTTPi_CleanupAsync
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_CleanupAsync

	arm_func_start NHTTP_AddHeaderField
NHTTP_AddHeaderField: ; 0x020D3944
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r6
	bl NHTTPi_GetRequest
	mov r1, r5
	mov r2, r4
	bl NHTTP_AddRequestHeaderField
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_AddHeaderField

	arm_func_start NHTTP_AddRequestHeaderField
NHTTP_AddRequestHeaderField: ; 0x020D3974
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetBgnEndInfoP
	mov r1, r0
	cmp r6, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	cmp r0, #0
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl NHTTPi_AddRequestHeaderField
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_AddRequestHeaderField

	arm_func_start NHTTP_AddPostDataAscii
NHTTP_AddPostDataAscii: ; 0x020D39D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl NHTTPi_GetSystemInfoP
	mov r5, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r5
	bl NHTTPi_GetMutexInfoP
	mov r1, r8
	bl NHTTPi_GetRequest
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl NHTTPi_AddRequestPostDataAscii
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTP_AddPostDataAscii

	arm_func_start NHTTP_GetHeaderField
NHTTP_GetHeaderField: ; 0x020D3A24
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r6
	bl NHTTPi_GetResponse
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	bl NHTTP_GetResponseHeaderField
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_GetHeaderField

	arm_func_start NHTTP_SetVerifyOption
NHTTP_SetVerifyOption: ; 0x020D3A60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r5
	bl NHTTPi_GetRequest
	cmp r0, #0
	mvneq r0, #0
	strne r4, [r0, #0xd0]
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTP_SetVerifyOption

	arm_func_start NHTTP_SetRootCA
NHTTP_SetRootCA: ; 0x020D3A90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r6
	bl NHTTPi_GetRequest
	mov r1, r5
	mov r2, r4
	bl NHTTP_SetRequestRootCA
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_SetRootCA

	arm_func_start NHTTP_SetRequestRootCA
NHTTP_SetRequestRootCA: ; 0x020D3AC0
	cmp r0, #0
	mvneq r0, #0
	bxeq lr
	mov r3, #0
	str r3, [r0, #0xc8]
	str r3, [r0, #0xdc]
	str r1, [r0, #0xc0]
	str r2, [r0, #0xc4]
	mov r0, r3
	bx lr
	arm_func_end NHTTP_SetRequestRootCA

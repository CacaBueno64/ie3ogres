
	.include "asm/macros/function.inc"
	.public NHTTPi_CancelRequestAsync
	.public NHTTPi_CheckCurrentThread
	.public NHTTPi_CommitConnectionList
	.public NHTTPi_Connection2Response
	.public NHTTPi_CreateRequest
	.public NHTTPi_DestroyRequest
	.public NHTTPi_DestroyResponse
	.public NHTTPi_GetBgnEndInfoP
	.public NHTTPi_GetConnection
	.public NHTTPi_GetMutexInfoP
	.public NHTTPi_GetSystemInfoP
	.public NHTTPi_GetThreadInfoP
	.public NHTTPi_OmitConnectionList
	.public NHTTPi_SendRequestAsync
	.public NHTTPi_SetError
	.public NHTTPi_SetVirtualContentLength
	.public NHTTPi_WaitForCompletion
	.public NHTTPi_addRef
	.public NHTTPi_alloc
	.public NHTTPi_decRef
	.public NHTTPi_free
	.public NHTTPi_memclr

	.text
	arm_func_start NHTTP_CreateConnection
NHTTP_CreateConnection: ; 0x020D4114
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r6, r0
	mov r0, r4
	bl NHTTPi_GetMutexInfoP
	ldr r11, _020D4248 ; =0x0000804C
	mov r5, r0
	mov r0, r11
	mov r1, #0x20
	bl NHTTPi_alloc
	movs r4, r0
	bne _020D4178
	mov r0, r6
	mov r1, #1
	bl NHTTPi_SetError
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4178:
	mov r1, r11
	bl NHTTPi_memclr
	ldr r0, [sp, #0x3c]
	str r7, [sp]
	str r0, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, r6
	mov r1, r10
	mov r2, r9
	mov r3, r8
	str r7, [sp, #0xc]
	bl NHTTPi_CreateRequest
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _020D41CC
	mov r0, r4
	bl NHTTPi_free
	add sp, sp, #0x10
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D41CC:
	ldr r1, [r0, #0x2c]
	ldr r0, [sp, #0x38]
	str r1, [r4, #0x14]
	str r7, [r4]
	str r0, [r4, #0x1c]
	str r7, [r4, #0x24]
	mov r0, r5
	mov r1, r4
	str r7, [r4, #0x28]
	sub r2, r7, #1
	str r2, [r4, #0x18]
	bl NHTTPi_CommitConnectionList
	mov r0, #0xf
	stmib r4, {r0, r7}
	mov r5, #1
	mov r0, r4
	mov r1, r7
	str r5, [r4, #0xc]
	bl NHTTPi_SetVirtualContentLength
	str r7, [r4, #0x30]
	add r2, r4, #0x8000
	str r7, [r2, #0x40]
	add r0, r4, #0x40
	mov r1, #0x8000
	str r7, [r2, #0x44]
	bl NHTTPi_memclr
	add r1, r4, #0x8000
	mov r0, r4
	str r5, [r1, #0x48]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4248: .word 0x0000804C
	arm_func_end NHTTP_CreateConnection

	arm_func_start NHTTP_DeleteConnection
NHTTP_DeleteConnection: ; 0x020D424C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	bl NHTTPi_GetConnection
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl NHTTPi_DeleteConnection
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_DeleteConnection

	arm_func_start NHTTPi_DeleteConnection
NHTTPi_DeleteConnection: ; 0x020D4278
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetMutexInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetThreadInfoP
	cmp r5, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x8000
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ble _020D42D0
	ldr r1, [r5, #0x18]
	cmp r1, #0
	blt _020D42D0
	mov r0, r6
	bl NHTTPi_CancelRequestAsync
	mvn r0, #0
	str r0, [r5, #0x18]
_020D42D0:
	mov r0, r4
	mov r1, r5
	bl NHTTPi_decRef
	cmp r0, #0
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _020D4308
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _020D4308
	mov r0, r6
	bl NHTTPi_DestroyRequest
_020D4308:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _020D4334
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _020D4328
	mov r0, r5
	bl NHTTP_WaitForConnection
_020D4328:
	ldr r1, [r5, #0x14]
	mov r0, r4
	bl NHTTPi_DestroyResponse
_020D4334:
	mov r0, r4
	mov r1, r5
	bl NHTTPi_OmitConnectionList
	mov r0, r5
	bl NHTTPi_free
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_DeleteConnection

	arm_func_start NHTTP_WaitForConnection
NHTTP_WaitForConnection: ; 0x020D4350
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetThreadInfoP
	mov r7, r0
	mov r0, r4
	bl NHTTPi_GetMutexInfoP
	mov r1, r8
	bl NHTTPi_GetConnection
	movs r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl NHTTP_GetConnectionStatus
	mov r4, #1
	mov r5, r0
	mov r0, r7
	mov r1, r4
	bl NHTTPi_CheckCurrentThread
	sub r0, r4, #2
	cmp r5, r0
	cmpne r5, #0
	beq _020D43C8
	mov r0, r8
	bl NHTTP_GetConnectionError
	cmp r0, #0xf
	bne _020D43C8
	mov r0, r6
	bl NHTTPi_WaitForCompletion
_020D43C8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTP_WaitForConnection

	arm_func_start NHTTP_StartConnection
NHTTP_StartConnection: ; 0x020D43D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r5, r0
	bl NHTTPi_GetConnection
	movs r4, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x10]
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl NHTTPi_SendRequestAsync
	str r0, [r4, #0x18]
	cmp r0, #0
	blt _020D4434
	mov r2, #1
	mov r0, r5
	mov r1, r4
	str r2, [r4]
	bl NHTTPi_addRef
_020D4434:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_StartConnection

	arm_func_start NHTTP_CancelConnection
NHTTP_CancelConnection: ; 0x020D443C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetMutexInfoP
	mov r1, r5
	bl NHTTPi_GetConnection
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	mvnlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl NHTTPi_CancelRequestAsync
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTP_CancelConnection

	arm_func_start NHTTP_GetConnectionStatus
NHTTP_GetConnectionStatus: ; 0x020D4484
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	bl NHTTPi_GetConnection
	cmp r0, #0
	mvneq r0, #0
	ldrne r0, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_GetConnectionStatus

	arm_func_start NHTTP_GetBodyBuffer
NHTTP_GetBodyBuffer: ; 0x020D44AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r4, r0
	bl NHTTPi_GetConnection
	movs r1, r0
	beq _020D4504
	mov r0, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0, #0x28]
	str r1, [r6]
	ldr r1, [r0, #0x1c]
	str r1, [r5]
	ldr r0, [r0, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020D4504:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_GetBodyBuffer

	arm_func_start NHTTP_GetUserParam
NHTTP_GetUserParam: ; 0x020D450C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r4, r0
	bl NHTTPi_GetConnection
	movs r1, r0
	beq _020D4548
	mov r0, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	ldrne r0, [r0, #0x438]
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020D4548:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_GetUserParam

	arm_func_start NHTTP_GetConnectionError
NHTTP_GetConnectionError: ; 0x020D4550
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r0, [r0, #4]
	mvneq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_GetConnectionError

	arm_func_start NHTTP_GetConnectionProgress
NHTTP_GetConnectionProgress: ; 0x020D4578
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r4, r0
	bl NHTTPi_GetConnection
	movs r1, r0
	beq _020D45E0
	mov r0, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	beq _020D45D8
	ldr r1, [r0, #8]
	str r1, [r6]
	ldr r1, [r0, #0xc]
	cmn r1, #1
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	str r0, [r5]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D45D8:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D45E0:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_GetConnectionProgress

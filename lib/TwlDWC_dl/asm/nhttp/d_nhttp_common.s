
	.include "asm/macros/function.inc"
	.public NHTTPi_InitBgnEndInfo
	.public NHTTPi_InitListInfo
	.public NHTTPi_InitMutex
	.public NHTTPi_InitRequestInfo
	.public NHTTPi_InitThreadInfo
	.public NHTTPi_LockMutex
	.public OS_SleepThread
	.public OS_UnlockMutex
	.public OS_WakeupThread

	.text
	arm_static_func_start NHTTPi_GetStaticResource
NHTTPi_GetStaticResource: ; 0x020D3AE8
	stmfd sp!, {r4, lr}
	ldr r0, _020D3B24 ; =l_nhttp_connection_list_p
	ldr r4, _020D3B28 ; =NHTTPiStaticResource
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020D3B1C
	add r0, r4, #4
	bl NHTTPi_InitMutex
	mov r1, #0
	mov r0, #1
	str r1, [r4, #0x20]
	str r1, [r4, #0x1c]
	str r0, [r4]
_020D3B1C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D3B24: .word l_nhttp_connection_list_p
_020D3B28: .word NHTTPiStaticResource
	arm_func_end NHTTPi_GetStaticResource

	arm_func_start NHTTPi_WaitForCompletion
NHTTPi_WaitForCompletion: ; 0x020D3B2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl NHTTPi_GetStaticResource
	ldr r1, [r5, #0xc]
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D3B48:
	add r0, r4, #0x1c
	bl OS_SleepThread
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020D3B48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_WaitForCompletion

	arm_func_start NHTTPi_NotifyCompletion
NHTTPi_NotifyCompletion: ; 0x020D3B60
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetStaticResource
	mov r1, #0
	add r0, r0, #0x1c
	str r1, [r4, #0xc]
	bl OS_WakeupThread
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_NotifyCompletion

	arm_static_func_start NHTTPi_ControlConnectionList
NHTTPi_ControlConnectionList: ; 0x020D3B80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, #0
	bl NHTTPi_lockReqList
	cmp r5, #3
	bne _020D3BB8
	ldr r0, _020D3C48 ; =l_nhttp_connection_list_p
	mov r4, r6
	ldr r1, [r0]
	str r1, [r6, #0x20]
	str r6, [r0]
	b _020D3C38
_020D3BB8:
	ldr r0, _020D3C48 ; =l_nhttp_connection_list_p
	ldr r1, _020D3C4C ; =l_nhttp_connection_list_p
	ldr r2, [r0]
	cmp r2, #0
	beq _020D3C38
_020D3BCC:
	cmp r5, #4
	addls pc, pc, r5, lsl #2
	b _020D3C1C
_020D3BD8: ; jump table
	b _020D3BEC ; case 0
	b _020D3BF4 ; case 1
	b _020D3BFC ; case 2
	b _020D3C1C ; case 3
	b _020D3C0C ; case 4
_020D3BEC:
	cmp r2, r6
	b _020D3C04
_020D3BF4:
	ldr r0, [r2, #0x10]
	b _020D3C00
_020D3BFC:
	ldr r0, [r2, #0x14]
_020D3C00:
	cmp r0, r6
_020D3C04:
	moveq r4, r2
	b _020D3C1C
_020D3C0C:
	cmp r2, r6
	ldreq r4, [r1]
	ldreq r0, [r4, #0x20]
	streq r0, [r1]
_020D3C1C:
	cmp r4, #0
	bne _020D3C38
	ldr r0, [r1]
	ldr r2, [r0, #0x20]
	add r1, r0, #0x20
	cmp r2, #0
	bne _020D3BCC
_020D3C38:
	mov r0, r7
	bl NHTTPi_unlockReqList
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3C48: .word l_nhttp_connection_list_p
_020D3C4C: .word l_nhttp_connection_list_p
	arm_func_end NHTTPi_ControlConnectionList

	arm_func_start NHTTPi_CommitConnectionList
NHTTPi_CommitConnectionList: ; 0x020D3C50
	stmfd sp!, {r3, lr}
	mov r2, #3
	bl NHTTPi_ControlConnectionList
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_CommitConnectionList

	arm_func_start NHTTPi_OmitConnectionList
NHTTPi_OmitConnectionList: ; 0x020D3C70
	stmfd sp!, {r3, lr}
	mov r2, #4
	bl NHTTPi_ControlConnectionList
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_OmitConnectionList

	arm_func_start NHTTPi_Connection2Response
NHTTPi_Connection2Response: ; 0x020D3C90
	stmfd sp!, {r3, lr}
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_Connection2Response

	arm_func_start NHTTPi_Request2Connection
NHTTPi_Request2Connection: ; 0x020D3CA8
	ldr r12, _020D3CB4 ; =NHTTPi_ControlConnectionList
	mov r2, #1
	bx r12
_020D3CB4: .word NHTTPi_ControlConnectionList
	arm_func_end NHTTPi_Request2Connection

	arm_func_start NHTTPi_Response2Connection
NHTTPi_Response2Connection: ; 0x020D3CB8
	ldr r12, _020D3CC4 ; =NHTTPi_ControlConnectionList
	mov r2, #2
	bx r12
_020D3CC4: .word NHTTPi_ControlConnectionList
	arm_func_end NHTTPi_Response2Connection

	arm_func_start NHTTPi_GetConnection
NHTTPi_GetConnection: ; 0x020D3CC8
	ldr r12, _020D3CD4 ; =NHTTPi_ControlConnectionList
	mov r2, #0
	bx r12
_020D3CD4: .word NHTTPi_ControlConnectionList
	arm_func_end NHTTPi_GetConnection

	arm_func_start NHTTPi_GetRequest
NHTTPi_GetRequest: ; 0x020D3CD8
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r4, [r0, #0x10]
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_GetRequest

	arm_func_start NHTTPi_GetResponse
NHTTPi_GetResponse: ; 0x020D3CF4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r4, [r0, #0x14]
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_GetResponse

	arm_func_start NHTTPi_GetConnectionListLength
NHTTPi_GetConnectionListLength: ; 0x020D3D10
	ldr r1, _020D3D38 ; =l_nhttp_connection_list_p
	mov r0, #0
	ldr r1, [r1]
	cmp r1, #0
	bxeq lr
_020D3D24:
	ldr r1, [r1, #0x20]
	add r0, r0, #1
	cmp r1, #0
	bne _020D3D24
	bx lr
_020D3D38: .word l_nhttp_connection_list_p
	arm_func_end NHTTPi_GetConnectionListLength

	arm_func_start NHTTPi_PostSendCallback
NHTTPi_PostSendCallback: ; 0x020D3D3C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	mov r8, r2
	mov r7, r3
	mvn r6, #0
	bl NHTTPi_GetConnection
	cmp r0, #0
	beq _020D3DC0
	mov r0, r5
	mov r1, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	ldrne r3, [r4, #0x1c]
	cmpne r3, #0
	beq _020D3DC0
	str r8, [sp]
	ldr r0, [r4, #0x24]
	add r2, sp, #0
	str r0, [sp, #4]
	ldr r1, [r4, #0x28]
	mov r0, r4
	str r1, [sp, #8]
	mov r1, #1
	str r7, [sp, #0xc]
	blx r3
	mov r6, r0
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	bl NHTTPi_SetPostDataBuffer
_020D3DC0:
	mov r0, r6
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_PostSendCallback

	arm_func_start NHTTPi_BufferFullCallback
NHTTPi_BufferFullCallback: ; 0x020D3DCC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	ldrne r12, [r4, #0x1c]
	cmpne r12, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x28]
	add r2, sp, #4
	str r1, [sp, #4]
	ldr r3, [r0, #0x1c]
	mov r1, #2
	str r3, [sp, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	blx r12
	ldr r1, [sp, #0xc]
	mov r0, r5
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, r4
	bl NHTTPi_SetBodyBuffer
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_BufferFullCallback

	arm_func_start NHTTPi_ReceivedCallback
NHTTPi_ReceivedCallback: ; 0x020D3E58
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	ldrne r12, [r4, #0x1c]
	cmpne r12, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x28]
	add r2, sp, #4
	str r1, [sp, #4]
	ldr r3, [r0, #0x1c]
	mov r1, #3
	str r3, [sp, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	blx r12
	ldr r1, [sp, #0xc]
	mov r0, r5
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, r4
	bl NHTTPi_SetBodyBuffer
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_ReceivedCallback

	arm_func_start NHTTPi_CompleteCallback
NHTTPi_CompleteCallback: ; 0x020D3EE4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r3, [r4, #0x1c]
	cmpne r3, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #4
	mov r2, #0
	blx r3
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_CompleteCallback

	arm_func_start NHTTPi_SetPostDataBuffer
NHTTPi_SetPostDataBuffer: ; 0x020D3F14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl NHTTPi_GetConnection
	cmp r0, #0
	mvneq r0, #0
	strne r5, [r0, #0x24]
	strne r4, [r0, #0x28]
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_SetPostDataBuffer

	arm_func_start NHTTPi_SetBodyBuffer
NHTTPi_SetBodyBuffer: ; 0x020D3F3C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	bl NHTTPi_GetConnection
	movs r1, r0
	beq _020D3F84
	mov r0, r6
	bl NHTTPi_Connection2Response
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	str r5, [r0, #0x28]
	ldr r1, [sp, #0x10]
	str r4, [r0, #0x1c]
	str r1, [r0, #4]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D3F84:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_SetBodyBuffer

	arm_static_func_start NHTTPi_InitSystemInfo
NHTTPi_InitSystemInfo: ; 0x020D3F8C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetBgnEndInfoP
	bl NHTTPi_InitBgnEndInfo
	mov r0, r4
	bl NHTTPi_GetListInfoP
	bl NHTTPi_InitListInfo
	mov r0, r4
	bl NHTTPi_GetReqInfoP
	bl NHTTPi_InitRequestInfo
	mov r0, r4
	bl NHTTPi_GetMutexInfoP
	bl NHTTPi_InitMutexInfo
	mov r0, r4
	bl NHTTPi_GetThreadInfoP
	bl NHTTPi_InitThreadInfo
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_InitSystemInfo

	arm_func_start NHTTPi_GetSystemInfoP
NHTTPi_GetSystemInfoP: ; 0x020D3FD0
	stmfd sp!, {r4, lr}
	ldr r1, _020D3FFC ; =l_nhttp_connection_list_p
	ldr r4, [r1, #4]
	cmp r4, #0
	bne _020D3FF4
	ldr r4, _020D4000 ; =sysInfo
	mov r0, r4
	str r4, [r1, #4]
	bl NHTTPi_InitSystemInfo
_020D3FF4:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D3FFC: .word l_nhttp_connection_list_p
_020D4000: .word sysInfo
	arm_func_end NHTTPi_GetSystemInfoP

	arm_func_start NHTTPi_GetBgnEndInfoP
NHTTPi_GetBgnEndInfoP: ; 0x020D4004
	bx lr
	arm_func_end NHTTPi_GetBgnEndInfoP

	arm_func_start NHTTPi_GetListInfoP
NHTTPi_GetListInfoP: ; 0x020D4008
	add r0, r0, #0x28
	bx lr
	arm_func_end NHTTPi_GetListInfoP

	arm_func_start NHTTPi_GetReqInfoP
NHTTPi_GetReqInfoP: ; 0x020D4010
	add r0, r0, #0x30
	bx lr
	arm_func_end NHTTPi_GetReqInfoP

	arm_func_start NHTTPi_GetThreadInfoP
NHTTPi_GetThreadInfoP: ; 0x020D4018
	add r0, r0, #0x50
	bx lr
	arm_func_end NHTTPi_GetThreadInfoP

	arm_func_start NHTTPi_GetMutexInfoP
NHTTPi_GetMutexInfoP: ; 0x020D4020
	add r0, r0, #0x34
	bx lr
	arm_func_end NHTTPi_GetMutexInfoP

	arm_func_start NHTTPi_SetVirtualContentLength
NHTTPi_SetVirtualContentLength: ; 0x020D4028
	cmp r0, #0
	strne r1, [r0, #0x2c]
	bx lr
	arm_func_end NHTTPi_SetVirtualContentLength

	arm_func_start NHTTPi_InitConnectionList
NHTTPi_InitConnectionList: ; 0x020D4034
	stmfd sp!, {r3, lr}
	ldr r0, _020D405C ; =l_nhttp_connection_list_p
	ldr r0, [r0]
	cmp r0, #0
	beq _020D404C
	bl NHTTPi_GetConnectionListLength
_020D404C:
	ldr r0, _020D405C ; =l_nhttp_connection_list_p
	mov r1, #0
	str r1, [r0]
	ldmfd sp!, {r3, pc}
_020D405C: .word l_nhttp_connection_list_p
	arm_func_end NHTTPi_InitConnectionList

	arm_func_start NHTTPi_InitMutexInfo
NHTTPi_InitMutexInfo: ; 0x020D4060
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	arm_func_end NHTTPi_InitMutexInfo

	arm_func_start NHTTPi_initLockReqList
NHTTPi_initLockReqList: ; 0x020D406C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmnefd sp!, {r4, pc}
	bl NHTTPi_InitMutex
	mov r0, #1
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_initLockReqList

	arm_func_start NHTTPi_exitLockReqList
NHTTPi_exitLockReqList: ; 0x020D4090
	bx lr
	arm_func_end NHTTPi_exitLockReqList

	arm_func_start NHTTPi_lockReqList
NHTTPi_lockReqList: ; 0x020D4094
	ldr r12, _020D409C ; =NHTTPi_LockMutex
	bx r12
_020D409C: .word NHTTPi_LockMutex
	arm_func_end NHTTPi_lockReqList

	arm_func_start NHTTPi_unlockReqList
NHTTPi_unlockReqList: ; 0x020D40A0
	ldr r12, _020D40A8 ; =OS_UnlockMutex
	bx r12
_020D40A8: .word OS_UnlockMutex
	arm_func_end NHTTPi_unlockReqList

	arm_func_start NHTTPi_addRef
NHTTPi_addRef: ; 0x020D40AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl NHTTPi_lockReqList
	add r1, r4, #0x8000
	ldr r2, [r1, #0x48]
	mov r0, r5
	add r2, r2, #1
	str r2, [r1, #0x48]
	bl NHTTPi_unlockReqList
	add r0, r4, #0x8000
	ldr r0, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_addRef

	arm_func_start NHTTPi_decRef
NHTTPi_decRef: ; 0x020D40E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl NHTTPi_lockReqList
	add r1, r4, #0x8000
	ldr r2, [r1, #0x48]
	mov r0, r5
	sub r2, r2, #1
	str r2, [r1, #0x48]
	bl NHTTPi_unlockReqList
	add r0, r4, #0x8000
	ldr r0, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_decRef

	.bss
	.global l_nhttp_connection_list_p
l_nhttp_connection_list_p:
	.space 0x04
	.global sysInfo_p
sysInfo_p:
	.space 0x04
	.global NHTTPiStaticResource
NHTTPiStaticResource:
	.space 0x24
	.global NHTTPOrder
NHTTPOrder:
	.space 0x04
	.global sysInfo
sysInfo:
	.space 0x4160

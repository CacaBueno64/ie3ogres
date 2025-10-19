
	.include "asm/macros/function.inc"
	.public NHTTPi_CommThreadProcMain
	.public NHTTPi_IsCreateCommThreadMessageQueue
	.public NHTTPi_IsCreateCommThreadMessageQueueOn
	.public OS_CreateThread
	.public OS_InitMessageQueue
	.public OS_InitMutex
	.public OS_JoinThread
	.public OS_LockMutex
	.public OS_ReceiveMessage
	.public OS_SendMessage
	.public OS_Terminate
	.public OS_WakeupThreadDirect
	.public OSi_ThreadInfo

	.text
	arm_func_start NHTTPi_InitMutex
NHTTPi_InitMutex: ; 0x020CEF60
	ldr r12, _020CEF68 ; =OS_InitMutex
	bx r12
_020CEF68: .word OS_InitMutex
	arm_func_end NHTTPi_InitMutex

	arm_func_start NHTTPi_LockMutex
NHTTPi_LockMutex: ; 0x020CEF6C
	ldr r12, _020CEF74 ; =OS_LockMutex
	bx r12
_020CEF74: .word OS_LockMutex
	arm_func_end NHTTPi_LockMutex

	arm_func_start NHTTPi_createCommThread
NHTTPi_createCommThread: ; 0x020CEF78
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_IsCreateCommThreadMessageQueue
	cmp r0, #0
	bne _020CEFB0
	mov r0, r6
	add r1, r6, #0x20
	mov r2, #3
	bl OS_InitMessageQueue
	mov r0, r6
	bl NHTTPi_IsCreateCommThreadMessageQueueOn
_020CEFB0:
	mov r0, #0x2000
	str r0, [sp]
	ldr r1, _020CEFE4 ; =NHTTPi_CommThreadProc
	add r0, r6, #0x2c
	add r3, r4, #0x2000
	mov r2, #0
	str r5, [sp, #4]
	bl OS_CreateThread
	add r0, r6, #0x2c
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CEFE4: .word NHTTPi_CommThreadProc
	arm_func_end NHTTPi_createCommThread

	arm_func_start NHTTPi_destroyCommThread
NHTTPi_destroyCommThread: ; 0x020CEFE8
	stmfd sp!, {r4, lr}
	mov r2, #1
	mov r4, r0
	str r2, [r1, #0x18]
	bl NHTTPi_kickCommThread
	add r0, r4, #0x2c
	bl OS_JoinThread
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_destroyCommThread

	arm_func_start NHTTPi_idleCommThread
NHTTPi_idleCommThread: ; 0x020CF008
	stmfd sp!, {r3, lr}
	add r1, sp, #0
	mov r2, #1
	bl OS_ReceiveMessage
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_idleCommThread

	arm_func_start NHTTPi_kickCommThread
NHTTPi_kickCommThread: ; 0x020CF01C
	mov r1, #0
	ldr r12, _020CF02C ; =OS_SendMessage
	mov r2, r1
	bx r12
_020CF02C: .word OS_SendMessage
	arm_func_end NHTTPi_kickCommThread

	arm_func_start NHTTPi_CheckCurrentThread
NHTTPi_CheckCurrentThread: ; 0x020CF030
	stmfd sp!, {r3, lr}
	ldr r2, _020CF070 ; =OSi_ThreadInfo
	add r0, r0, #0x2c
	ldr r2, [r2, #4]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	cmp r1, #0
	bne _020CF058
	cmp r2, r0
	bne _020CF068
_020CF058:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, r0
	ldmnefd sp!, {r3, pc}
_020CF068:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_020CF070: .word OSi_ThreadInfo
	arm_func_end NHTTPi_CheckCurrentThread

	arm_func_start NHTTPi_CommThreadProc
NHTTPi_CommThreadProc: ; 0x020CF074
	ldr r12, _020CF07C ; =NHTTPi_CommThreadProcMain
	bx r12
_020CF07C: .word NHTTPi_CommThreadProcMain
	arm_func_end NHTTPi_CommThreadProc

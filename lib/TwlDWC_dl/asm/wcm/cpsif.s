
	.include "asm/macros/function.inc"
	.public MI_CpuCopy
	.public MI_CpuFill8
	.public OS_DisableInterrupts
	.public OS_InitMutex
	.public OS_IrqHandler
	.public OS_LockMutex
	.public OS_RestoreInterrupts
	.public OS_UnlockMutex
	.public OS_WakeupThread
	.public WCMi_GetSystemWork
	.public WCMi_WmifSetDCFData

	.text
	arm_func_start WCMi_InitCpsif
WCMi_InitCpsif: ; 0x020DD8C4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020DD90C ; =wcmCpsifw
	ldrb r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #1
	mov r5, #0
	strb r0, [r4]
	ldr r0, _020DD910 ; =0x020ED82C
	mov r1, r5
	mov r2, #6
	strh r5, [r4, #0x24]
	bl MI_CpuFill8
	str r5, [r4, #8]
	ldr r0, _020DD914 ; =0x020ED808
	str r5, [r4, #4]
	bl OS_InitMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020DD90C: .word wcmCpsifw
_020DD910: .word wcmCpsifw+0x30
_020DD914: .word wcmCpsifw+0xc
	arm_func_end WCMi_InitCpsif

	arm_func_start WCMi_CpsifRecvCallback
WCMi_CpsifRecvCallback: ; 0x020DD918
	stmfd sp!, {r3, lr}
	ldr r12, _020DD934 ; =wcmCpsifw
	ldr r12, [r12, #0x28]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	blx r12
	ldmfd sp!, {r3, pc}
_020DD934: .word wcmCpsifw
	arm_func_end WCMi_CpsifRecvCallback

	arm_func_start WCMi_GetCpsifWork
WCMi_GetCpsifWork: ; 0x020DD938
	ldr r0, _020DD940 ; =wcmCpsifw
	bx lr
_020DD940: .word wcmCpsifw
	arm_func_end WCMi_GetCpsifWork

	arm_func_start WCM_GetApMacAddress
WCM_GetApMacAddress: ; 0x020DD944
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	bl WCMi_GetSystemWork
	mov r4, r0
	bl OS_DisableInterrupts
	cmp r4, #0
	beq _020DD97C
	add r1, r4, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #9
	ldreqb r1, [r1, #0x2dd]
	cmpeq r1, #0
	addeq r1, r4, #0x2e4
	addeq r5, r1, #0x1000
_020DD97C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_GetApMacAddress

	arm_func_start WCM_GetApEssid
WCM_GetApEssid: ; 0x020DD988
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r5, r0
	mov r4, r7
	bl WCMi_GetSystemWork
	mov r6, r0
	bl OS_DisableInterrupts
	cmp r6, #0
	beq _020DD9D0
	add r1, r6, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #9
	ldreqb r1, [r1, #0x2dd]
	cmpeq r1, #0
	addeq r1, r6, #0x1200
	ldreqh r4, [r1, #0xea]
	addeq r1, r6, #0x2ec
	addeq r7, r1, #0x1000
_020DD9D0:
	bl OS_RestoreInterrupts
	cmp r5, #0
	strneh r4, [r5]
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WCM_GetApEssid

	arm_func_start WCM_SetRecvDCFCallback
WCM_SetRecvDCFCallback: ; 0x020DD9E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _020DDA00 ; =wcmCpsifw
	str r4, [r1, #0x28]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_020DDA00: .word wcmCpsifw
	arm_func_end WCM_SetRecvDCFCallback

	arm_func_start WCM_SendDCFDataEx
WCM_SendDCFDataEx: ; 0x020DDA04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl OS_DisableInterrupts
	mov r5, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	bne _020DDA44
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDA44:
	ldr r10, _020DDB18 ; =0x020ED808
	mov r0, r10
	bl OS_LockMutex
	bl WCMi_GetSystemWork
	movs r4, r0
	bne _020DDA78
	mov r0, r10
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDA78:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #9
	bne _020DDA94
	ldrb r1, [r0, #0x2dd]
	cmp r1, #1
	bne _020DDAB0
_020DDA94:
	ldr r0, _020DDB18 ; =0x020ED808
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDAB0:
	ldr r1, [sp, #0x28]
	str r6, [sp]
	str r1, [sp, #4]
	ldrb r0, [r0, #0x2df]
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl WCMi_MergeToBuffer
	add r1, r4, #0x1000
	ldrb r1, [r1, #0x2df]
	cmp r1, #1
	bne _020DDAF8
	mov r2, r0, lsl #0x10
	mov r0, r9
	mov r1, r4
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl WCMi_WmifSetDCFData
_020DDAF8:
	ldr r0, _020DDB18 ; =0x020ED808
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, [sp, #0x28]
	add r0, r7, r0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDB18: .word wcmCpsifw+0xc
	arm_func_end WCM_SendDCFDataEx

	arm_func_start WCMi_CpsifUnlockMutexInIRQ
WCMi_CpsifUnlockMutexInIRQ: ; 0x020DDB1C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	ldr r1, _020DDB50 ; =OS_IrqHandler
	cmp r2, r1
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0xc]
	subs r1, r1, #1
	str r1, [r0, #0xc]
	ldmnefd sp!, {r3, pc}
	mov r1, #0
	str r1, [r0, #8]
	bl OS_WakeupThread
	ldmfd sp!, {r3, pc}
_020DDB50: .word OS_IrqHandler
	arm_func_end WCMi_CpsifUnlockMutexInIRQ

	arm_func_start WCMi_CpsifSetMacAddress
WCMi_CpsifSetMacAddress: ; 0x020DDB54
	ldr r1, _020DDB64 ; =0x020ED82C
	ldr r12, _020DDB68 ; =MI_CpuCopy
	mov r2, #6
	bx r12
_020DDB64: .word wcmCpsifw+0x30
_020DDB68: .word MI_CpuCopy
	arm_func_end WCMi_CpsifSetMacAddress

	arm_static_func_start WCMi_MergeToBuffer
WCMi_MergeToBuffer: ; 0x020DDB6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r3
	mov r0, r2
	mov r2, r5
	mov r6, r1
	ldr r4, [sp, #0x14]
	bl MI_CpuCopy
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrne r2, [sp, #0x14]
	cmpne r2, #0
	beq _020DDBA4
	add r1, r6, r5
	bl MI_CpuCopy
_020DDBA4:
	add r0, r5, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WCMi_MergeToBuffer

	.bss
	.global wcmCpsifw
wcmCpsifw:
	.space 0x38

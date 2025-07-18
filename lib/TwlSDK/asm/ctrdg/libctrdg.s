
	.include "asm/macros/function.inc"
	.include "libctrdg.inc"

	.text
	arm_func_start CTRDG_IsExistedAtInit
CTRDG_IsExistedAtInit: ; 0x020115E0
	ldr r1, _020115FC ; =0x02FFFC30
	ldr r0, _02011600 ; =0x0000FFFF
	ldrh r1, [r1]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
_020115FC: .word 0x02FFFC30
_02011600: .word 0x0000FFFF
	arm_func_end CTRDG_IsExistedAtInit

	arm_func_start CTRDGi_InitCommon
CTRDGi_InitCommon: ; 0x02011604
	stmfd sp!, {r3, lr}
	ldr r1, _02011630 ; =CTRDGi_Work
	mov r3, #0
	ldr r2, _02011634 ; =0x05000001
	add r0, sp, #0
	str r3, [sp]
	blx SVC_CpuSet
	bl OS_GetLockID
	ldr r1, _02011638 ; =CTRDGi_EnableFlag
	strh r0, [r1, #6]
	ldmfd sp!, {r3, pc}
_02011630: .word CTRDGi_Work
_02011634: .word 0x05000001
_02011638: .word CTRDGi_EnableFlag
	arm_func_end CTRDGi_InitCommon

	arm_func_start CTRDG_IsExisting
CTRDG_IsExisting: ; 0x0201163C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, #1
	bl CTRDG_IsExistedAtInit
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _02011734 ; =0x02FFFC30
	ldrb r0, [r5, #5]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02011738 ; =CTRDGi_EnableFlag
	add r1, sp, #8
	ldrh r0, [r0, #6]
	bl CTRDGi_LockByProcessor
	add r0, sp, #0
	bl CTRDGi_ChangeLatestAccessCycle
	mov r0, #0x8000000
	ldrb r2, [r0, #0xb2]
	cmp r2, #0x96
	bne _020116B4
	ldrh r1, [r5]
	ldrh r0, [r0, #0xbe]
	cmp r1, r0
	bne _020116FC
_020116B4:
	cmp r2, #0x96
	beq _020116D4
	ldr r1, _02011734 ; =0x02FFFC30
	ldr r0, _0201173C ; =0x0801FFFE
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _020116FC
_020116D4:
	ldr r2, _02011734 ; =0x02FFFC30
	mov r0, #0x8000000
	ldr r1, [r2, #8]
	ldr r0, [r0, #0xac]
	cmp r1, r0
	beq _02011710
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _02011710
_020116FC:
	ldr r1, _02011734 ; =0x02FFFC30
	mov r4, #0
	ldrb r0, [r1, #5]
	orr r0, r0, #2
	strb r0, [r1, #5]
_02011710:
	add r0, sp, #0
	bl CTRDGi_RestoreAccessCycle
	ldr r0, _02011738 ; =CTRDGi_EnableFlag
	add r1, sp, #8
	ldrh r0, [r0, #6]
	bl CTRDGi_UnlockByProcessor
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02011734: .word 0x02FFFC30
_02011738: .word CTRDGi_EnableFlag
_0201173C: .word 0x0801FFFE
	arm_func_end CTRDG_IsExisting

	arm_func_start CTRDGi_ChangeLatestAccessCycle
CTRDGi_ChangeLatestAccessCycle: ; 0x02011740
	ldr r2, _02011784 ; =0x04000204
	ldrh r1, [r2]
	and r1, r1, #0xc
	mov r1, r1, asr #2
	str r1, [r0]
	ldrh r1, [r2]
	and r1, r1, #0x10
	mov r1, r1, asr #4
	str r1, [r0, #4]
	ldrh r0, [r2]
	bic r0, r0, #0xc
	orr r0, r0, #0xc
	strh r0, [r2]
	ldrh r0, [r2]
	bic r0, r0, #0x10
	strh r0, [r2]
	bx lr
_02011784: .word 0x04000204
	arm_func_end CTRDGi_ChangeLatestAccessCycle

	arm_func_start CTRDGi_RestoreAccessCycle
CTRDGi_RestoreAccessCycle: ; 0x02011788
	ldr r3, _020117B8 ; =0x04000204
	ldr r2, [r0]
	ldrh r1, [r3]
	bic r1, r1, #0xc
	orr r1, r1, r2, lsl #2
	strh r1, [r3]
	ldrh r1, [r3]
	ldr r2, [r0, #4]
	bic r0, r1, #0x10
	orr r0, r0, r2, lsl #4
	strh r0, [r3]
	bx lr
_020117B8: .word 0x04000204
	arm_func_end CTRDGi_RestoreAccessCycle

	arm_func_start CTRDGi_LockByProcessor
CTRDGi_LockByProcessor: ; 0x020117BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _02011814 ; =0x02FFFFE8
	mov r7, r0
	mov r6, r1
	mov r4, #1
_020117D0:
	bl OS_DisableInterrupts
	str r0, [r6, #4]
	mov r0, r5
	bl OS_ReadOwnerOfLockWord
	ands r0, r0, #0x40
	str r0, [r6]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl OS_TryLockCartridge
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	bl OS_RestoreInterrupts
	mov r0, r4
	blx SVC_WaitByLoop
	b _020117D0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02011814: .word 0x02FFFFE8
	arm_func_end CTRDGi_LockByProcessor

	arm_func_start CTRDGi_UnlockByProcessor
CTRDGi_UnlockByProcessor: ; 0x02011818
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	cmp r1, #0
	bne _02011830
	bl OS_UnlockCartridge
_02011830:
	ldr r0, [r4, #4]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
	arm_func_end CTRDGi_UnlockByProcessor

	arm_func_start CTRDGi_SendtoPxi
CTRDGi_SendtoPxi: ; 0x0201183C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r1, r7
	mov r0, #0xd
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #1
	mov r5, #0xd
	mov r4, #0
_02011868:
	mov r0, r6
	blx SVC_WaitByLoop
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _02011868
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CTRDGi_SendtoPxi

	arm_func_start CTRDG_Enable
CTRDG_Enable: ; 0x0201188C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _02011918 ; =CTRDGi_EnableFlag
	mov r5, r0
	str r4, [r1]
	bl CTRDG_IsExistedAtInit
	cmp r0, #0
	beq _0201190C
	mov r1, #0x1000
	cmp r4, #0
	moveq r1, #0x5000
	mov r0, #0xf000
	bl OS_SetDPermissionsForProtectionRegion
	cmp r4, #0
	mov r4, #8
	beq _020118F4
	bl DC_FlushAll
	bl DC_WaitWriteBufferEmpty
	mov r0, r4
	bl OS_DisableICacheForProtectionRegion
	mov r0, r4
	bl OS_DisableDCacheForProtectionRegion
	mov r0, r4
	bl OS_DisableWriteBufferForProtectionRegion
	b _0201190C
_020118F4:
	mov r0, r4
	bl OS_EnableICacheForProtectionRegion
	mov r0, r4
	bl OS_EnableDCacheForProtectionRegion
	mov r0, r4
	bl OS_EnableWriteBufferForProtectionRegion
_0201190C:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02011918: .word CTRDGi_EnableFlag
	arm_func_end CTRDG_Enable

	arm_func_start CTRDG_Init
CTRDG_Init: ; 0x0201191C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020119B8 ; =isInfoInitialized
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #1
	str r0, [r4, #8]
	bl CTRDGi_InitCommon
	mov r0, #0
	str r0, [r4, #0xc]
	bl PXI_Init
	mov r5, #0xd
	mov r4, #1
_02011950:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _02011950
	ldr r1, _020119BC ; =CTRDGi_CallbackForInitModuleInfo
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	bl CTRDGi_InitModuleInfo
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl PXI_SetFifoRecvCallback
	ldr r1, _020119C0 ; =CTRDGi_PulledOutCallback
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	ldr r1, _020119B8 ; =isInfoInitialized
	ldr r0, _020119C4 ; =CTRDGTaskList
	str r4, [r1, #0x18]
	bl CTRDGi_InitTaskThread
	ldr r1, _020119C8 ; =CTRDGi_CallbackForSetPhi
	mov r0, #0x11
	bl PXI_SetFifoRecvCallback
	mov r0, r4
	bl CTRDG_Enable
	ldmfd sp!, {r3, r4, r5, pc}
_020119B8: .word isInfoInitialized
_020119BC: .word CTRDGi_CallbackForInitModuleInfo
_020119C0: .word CTRDGi_PulledOutCallback
_020119C4: .word CTRDGTaskList
_020119C8: .word CTRDGi_CallbackForSetPhi
	arm_func_end CTRDG_Init

	arm_func_start CTRDGi_InitModuleInfo
CTRDGi_InitModuleInfo: ; 0x020119CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r0, _02011B88 ; =isInfoInitialized
	ldr r1, [r0]
	cmp r1, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _02011B8C ; =0x04000300
	mov r7, #1
	ldrh r1, [r5]
	str r7, [r0]
	tst r1, #1
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0x40000
	bl OS_SetIrqMask
	sub r1, r5, #0xf8
	ldrh r9, [r1]
	ldr r4, _02011B90 ; =CTRDGi_Work
	mov r8, r0
	strh r7, [r1]
	add r11, sp, #0xc
	ldrh r0, [r4, #2]
	mov r1, r11
	bl CTRDGi_LockByProcessor
	sub r6, r5, #0xfc
	ldrh r0, [r6]
	and r0, r0, #0x8000
	mov r10, r0, asr #0xf
	add r0, sp, #4
	bl CTRDGi_ChangeLatestAccessCycle
	ldrh r0, [r6]
	ldr r5, _02011B94 ; =headerBuf
	mov r1, #0x40
	bic r0, r0, #0x8000
	strh r0, [r6]
	add r0, r5, #0x80
	bl DC_InvalidateRange
	ldr r1, _02011B98 ; =0x08000080
	add r2, r5, #0x80
	mov r3, #0x40
	str r7, [sp]
	mov r0, r7
	bl MIi_DmaCopy16
	ldrh r1, [r6]
	add r0, sp, #4
	bic r1, r1, #0x8000
	orr r1, r1, r10, lsl #15
	strh r1, [r6]
	bl CTRDGi_RestoreAccessCycle
	ldrh r0, [r4, #2]
	mov r1, r11
	bl CTRDGi_UnlockByProcessor
	ldr r1, _02011B9C ; =0x02FFFF9B
	ldrb r0, [r1]
	cmp r0, #0
	bne _02011ABC
	ldrb r0, [r1, #-1]
	cmp r0, #0
	bne _02011B20
_02011ABC:
	ldr r3, _02011B94 ; =headerBuf
	ldr r4, _02011BA0 ; =0x02FFFC30
	ldrh r0, [r3, #0xbe]
	mov r2, #0
	strh r0, [r4]
	b _02011AE8
_02011AD4:
	add r0, r3, r2
	ldrb r1, [r0, #0xb5]
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #2]
_02011AE8:
	cmp r2, #3
	blt _02011AD4
	ldrh r0, [r3, #0xb0]
	strh r0, [r4, #6]
	ldr r0, [r3, #0xac]
	str r0, [r4, #8]
	bl CTRDG_IsExisting
	cmp r0, #0
	mov r2, #1
	ldr r1, _02011B9C ; =0x02FFFF9B
	moveq r2, #0
	mov r0, #1
	strb r2, [r1]
	strb r0, [r1, #-1]
_02011B20:
	ldr r0, _02011BA4 ; =0xFFFF0020
	ldr r1, _02011BA8 ; =0x02096564
	mov r2, #0x9c
	bl MIi_CpuCopy32
	bl DC_FlushAll
	ldr r0, _02011B94 ; =headerBuf
	add r0, r0, #0xfe000000
	mov r0, r0, lsr #5
	mov r0, r0, lsl #6
	orr r0, r0, #1
	bl CTRDGi_SendtoPxi
	mov r5, #1
	ldr r4, _02011B90 ; =CTRDGi_Work
	b _02011B60
_02011B58:
	mov r0, r5
	blx SVC_WaitByLoop
_02011B60:
	ldrh r0, [r4]
	cmp r0, #1
	bne _02011B58
	ldr r2, _02011BAC ; =0x04000208
	mov r0, r8
	ldrh r1, [r2]
	strh r9, [r2]
	bl OS_SetIrqMask
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02011B88: .word isInfoInitialized
_02011B8C: .word 0x04000300
_02011B90: .word CTRDGi_Work
_02011B94: .word headerBuf
_02011B98: .word 0x08000080
_02011B9C: .word 0x02FFFF9B
_02011BA0: .word 0x02FFFC30
_02011BA4: .word 0xFFFF0020
_02011BA8: .word unk_02096564
_02011BAC: .word 0x04000208
	arm_func_end CTRDGi_InitModuleInfo

	arm_func_start CTRDGi_CallbackForInitModuleInfo
CTRDGi_CallbackForInitModuleInfo: ; 0x02011BB0
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #1
	ldreq r0, _02011BD4 ; =CTRDGi_Work
	moveq r1, #1
	streqh r1, [r0]
	ldmeqfd sp!, {r3, pc}
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_02011BD4: .word CTRDGi_Work
	arm_func_end CTRDGi_CallbackForInitModuleInfo

	arm_func_start CTRDGi_PulledOutCallback
CTRDGi_PulledOutCallback: ; 0x02011BD8
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _02011C28
	ldr r0, _02011C30 ; =isInfoInitialized
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	mov r0, #0
	cmp r1, #0
	beq _02011C0C
	blx r1
_02011C0C:
	cmp r0, #0
	beq _02011C18
	bl CTRDG_TerminateForPulledOut
_02011C18:
	ldr r0, _02011C30 ; =isInfoInitialized
	mov r1, #1
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, pc}
_02011C28:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_02011C30: .word isInfoInitialized
	arm_func_end CTRDGi_PulledOutCallback

	arm_func_start CTRDG_TerminateForPulledOut
CTRDG_TerminateForPulledOut: ; 0x02011C34
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl CTRDGi_SendtoPxi
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
	arm_func_end CTRDG_TerminateForPulledOut

	arm_func_start CTRDGi_CallbackForSetPhi
CTRDGi_CallbackForSetPhi: ; 0x02011C48
	ldr r0, _02011C58 ; =isInfoInitialized
	mov r1, #0
	str r1, [r0, #4]
	bx lr
_02011C58: .word isInfoInitialized
	arm_func_end CTRDGi_CallbackForSetPhi

	arm_func_start CTRDGi_InitTaskThread
CTRDGi_InitTaskThread: ; 0x02011C5C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _02011CD8 ; =ctrdgi_task_work
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _02011CC8
	add r0, r5, #0xc4
	str r5, [r1]
	bl CTRDGi_InitTaskInfo
	ldr r0, _02011CDC ; =ctrdgi_task_list
	bl CTRDGi_InitTaskInfo
	mov r0, #0
	str r0, [r5, #0xc0]
	mov r2, #0x400
	ldr r1, _02011CE0 ; =CTRDGi_TaskThread
	ldr r3, _02011CE4 ; =wmInitialized
	mov r0, r5
	str r2, [sp]
	mov r2, #0x14
	str r2, [sp, #4]
	mov r2, r5
	bl OS_CreateThread
	mov r0, r5
	bl OS_WakeupThreadDirect
_02011CC8:
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_02011CD8: .word ctrdgi_task_work
_02011CDC: .word ctrdgi_task_list
_02011CE0: .word CTRDGi_TaskThread
_02011CE4: .word wmInitialized
	arm_func_end CTRDGi_InitTaskThread

	arm_func_start CTRDGi_InitTaskInfo
CTRDGi_InitTaskInfo: ; 0x02011CE8
	ldr r12, _02011CF8 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x24
	bx r12
_02011CF8: .word MI_CpuFill8
	arm_func_end CTRDGi_InitTaskInfo

	arm_func_start CTRDGi_TaskThread
CTRDGi_TaskThread: ; 0x02011CFC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r4, #0
	mov r7, r0
	add r5, sp, #0
	mov r9, r4
	mov r8, r4
	mov r11, r4
_02011D1C:
	mov r0, r5
	mov r1, r11
	mov r2, #0x24
	bl MI_CpuFill8
	bl OS_DisableInterrupts
	ldr r1, [r7, #0xc0]
	mov r6, r0
	cmp r1, #0
	bne _02011D54
_02011D40:
	mov r0, r4
	bl OS_SleepThread
	ldr r0, [r7, #0xc0]
	cmp r0, #0
	beq _02011D40
_02011D54:
	ldr lr, [r7, #0xc0]
	add r12, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	mov r10, r12
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldr r1, [lr]
	mov r0, r6
	str r1, [r12]
	bl OS_RestoreInterrupts
	ldr r1, [sp]
	cmp r1, #0
	beq _02011D98
	mov r0, r10
	blx r1
	str r0, [sp, #8]
_02011D98:
	bl OS_DisableInterrupts
	ldr r2, [sp, #4]
	ldr r1, _02011DE8 ; =ctrdgi_task_work
	mov r6, r0
	strb r9, [r1, #0x26]
	cmp r2, #0
	beq _02011DBC
	mov r0, r5
	blx r2
_02011DBC:
	ldr r0, _02011DE8 ; =ctrdgi_task_work
	ldr r0, [r0]
	cmp r0, #0
	beq _02011DDC
	mov r0, r6
	str r8, [r7, #0xc0]
	bl OS_RestoreInterrupts
	b _02011D1C
_02011DDC:
	bl OS_ExitThread
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02011DE8: .word ctrdgi_task_work
	arm_func_end CTRDGi_TaskThread

	.bss
	.global CTRDGi_EnableFlag
CTRDGi_EnableFlag:
	.space 0x04
	.global CTRDGi_Work
CTRDGi_Work:
	.space 0x04
	.global isInfoInitialized
isInfoInitialized:
	.space 0x04
	.global CTRDGi_Lock
CTRDGi_Lock:
	.space 0x04
	.global isInitialized_0209653c
isInitialized_0209653c:
	.space 0x04
	.global ctrdg_already_pullout
ctrdg_already_pullout:
	.space 0x04
	.global skipCheck
skipCheck:
	.space 0x04
	.global isCartridgePullOut
isCartridgePullOut:
	.space 0x04
	.global CTRDG_UserCallback
CTRDG_UserCallback:
	.space 0x14
	.global headerBuf
headerBuf:
	.space 0x04
	.global unk_02096564
unk_02096564:
	.space 0xBC
	.global CTRDGTaskList
CTRDGTaskList:
	.space 0xE8
	.global ctrdgi_task_work
ctrdgi_task_work:
	.space 0x04
	.global ctrdgi_task_list
ctrdgi_task_list:
	.space 0x24
	.global ctrdg_task_stack
ctrdg_task_stack:
	.space 0x400

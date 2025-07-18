
	.include "asm/macros/function.inc"
	.include "libcard.inc"

	.text
	arm_func_start CARDi_PeekEventListener
CARDi_PeekEventListener: ; 0x0200FDC0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	blx r1
	cmp r0, #0
	beq _0200FDF4
	mov r0, r4
	mov r1, #1
	bl OS_SignalEvent
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0200FDF4:
	mov r1, #0xc0
	ldr r3, _0200FE14 ; =CARDi_PeekEventListener
	add r0, r4, #0xc
	add r2, r1, #0x47
	str r4, [sp]
	bl OS_SetVAlarm
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0200FE14: .word CARDi_PeekEventListener
	arm_func_end CARDi_PeekEventListener

	arm_func_start CARDi_LockBusCondition
CARDi_LockBusCondition: ; 0x0200FE18
	stmfd sp!, {r3, lr}
	ldrh r0, [r0]
	bl OS_TryLockCard
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end CARDi_LockBusCondition

	arm_func_start CARD_Init
CARD_Init: ; 0x0200FE34
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r5, _0200FF18 ; =cardi_common
	ldr r0, [r5, #4]
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #1
	str r0, [r5, #4]
	bl OS_GetBootType
	cmp r0, #1
	bne _0200FE74
	ldr r0, _0200FF1C ; =0x02FFFE00
	mov r2, #0x160
	sub r1, r0, #0x380
	bl MI_CpuCopy8
_0200FE74:
	mov r4, #0
	ldr r0, _0200FF20 ; =cardi_rom_base
	sub r3, r4, #1
	mov r6, #0x400
	mov r2, #0x2400
	mov r1, #4
	str r4, [r5, #0x4fc]
	str r4, [r5, #0x500]
	str r4, [r5, #0x504]
	str r3, [r5, #0x508]
	str r4, [r5, #0x50c]
	str r6, [r5, #0xc]
	str r2, [r5, #0x10]
	str r4, [r0]
	str r1, [r5, #8]
	bl CARDi_InitResourceLock
	add r3, r5, #0xe8
	str r4, [r5, #0x4ec]
	str r4, [r5, #0x4f0]
	str r4, [r5, #0x4f8]
	str r4, [r5, #0x4f4]
	str r6, [sp]
	ldr r12, [r5, #8]
	ldr r1, _0200FF24 ; =CARDi_OldTypeTaskThread
	mov r2, r4
	add r0, r5, #0x28
	add r3, r3, #0x400
	str r12, [sp, #4]
	bl OS_CreateThread
	add r0, r5, #0x28
	bl OS_WakeupThreadDirect
	bl CARDi_InitCommand
	bl CARDi_InitRom
	bl OS_GetBootType
	cmp r0, #1
	bne _0200FF0C
	mov r0, #1
	bl CARD_Enable
_0200FF0C:
	bl CARD_InitPulledOutCallback
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0200FF18: .word cardi_common
_0200FF1C: .word 0x02FFFE00
_0200FF20: .word cardi_rom_base
_0200FF24: .word CARDi_OldTypeTaskThread
	arm_func_end CARD_Init

	arm_func_start CARD_IsEnabled
CARD_IsEnabled: ; 0x0200FF28
	ldr r0, _0200FF34 ; =CARDi_EnableFlag
	ldr r0, [r0]
	bx lr
_0200FF34: .word CARDi_EnableFlag
	arm_func_end CARD_IsEnabled

	arm_func_start CARD_CheckEnabled
CARD_CheckEnabled: ; 0x0200FF38
	stmfd sp!, {r3, lr}
	bl CARD_IsEnabled
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
	arm_func_end CARD_CheckEnabled

	arm_func_start CARD_Enable
CARD_Enable: ; 0x0200FF50
	ldr r1, _0200FF5C ; =CARDi_EnableFlag
	str r0, [r1]
	bx lr
_0200FF5C: .word CARDi_EnableFlag
	arm_func_end CARD_Enable

	arm_func_start CARD_GetResultCode
CARD_GetResultCode: ; 0x0200FF60
	ldr r0, _0200FF70 ; =cardi_common
	ldr r0, [r0]
	ldr r0, [r0]
	bx lr
_0200FF70: .word cardi_common
	arm_func_end CARD_GetResultCode

	arm_func_start CARD_GetRomHeader
CARD_GetRomHeader: ; 0x0200FF74
	ldr r0, _0200FF7C ; =0x02FFFA80
	bx lr
_0200FF7C: .word 0x02FFFA80
	arm_func_end CARD_GetRomHeader

	arm_func_start CARD_GetOwnRomHeader
CARD_GetOwnRomHeader: ; 0x0200FF80
	ldr r0, _0200FF88 ; =0x02FFFE00
	bx lr
_0200FF88: .word 0x02FFFE00
	arm_func_end CARD_GetOwnRomHeader

	arm_func_start CARD_LockRom
CARD_LockRom: ; 0x0200FF8C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	ldrh r0, [sp, #0x50]
	mov r5, #1
	mov r1, r5
	bl CARDi_LockResource
	add r4, sp, #0
	mov r0, r4
	bl OS_InitEvent
	add r0, sp, #0xc
	bl OS_CreateVAlarm
	ldr r1, _0200FFF8 ; =CARDi_LockBusCondition
	add r0, sp, #0x50
	str r0, [sp, #0x38]
	mov r0, r4
	str r1, [sp, #0x34]
	bl CARDi_PeekEventListener
	mov r0, r4
	mov r1, r5
	mov r3, r5
	mov r2, #0
	bl OS_WaitEventEx
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0200FFF8: .word CARDi_LockBusCondition
	arm_func_end CARD_LockRom

	arm_func_start CARD_UnlockRom
CARD_UnlockRom: ; 0x0200FFFC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_UnlockCard
	mov r0, r4
	mov r1, #1
	bl CARDi_UnlockResource
	ldmfd sp!, {r4, pc}
	arm_func_end CARD_UnlockRom

	arm_func_start CARD_LockBackup
CARD_LockBackup: ; 0x02010018
	ldr r12, _02010024 ; =CARDi_LockResource
	mov r1, #2
	bx r12
_02010024: .word CARDi_LockResource
	arm_func_end CARD_LockBackup

	arm_func_start CARD_UnlockBackup
CARD_UnlockBackup: ; 0x02010028
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl CARD_TryWaitBackupAsync
	cmp r0, #0
	bne _02010040
	bl CARD_WaitBackupAsync
_02010040:
	mov r0, r4
	mov r1, #2
	bl CARDi_UnlockResource
	ldmfd sp!, {r4, pc}
	arm_func_end CARD_UnlockBackup

	arm_func_start CARDi_LockResource
CARDi_LockResource: ; 0x02010050
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _020100C4 ; =cardi_common
	mov r8, r0
	mov r7, r1
	bl OS_DisableInterrupts
	ldr r1, [r5, #0x14]
	mov r6, r0
	cmp r1, r8
	bne _02010088
	ldr r0, [r5, #0x24]
	cmp r0, r7
	beq _020100AC
	bl OS_Terminate
	b _020100AC
_02010088:
	mvn r4, #2
	b _02010098
_02010090:
	add r0, r5, #0x1c
	bl OS_SleepThread
_02010098:
	ldr r0, [r5, #0x14]
	cmp r0, r4
	bne _02010090
	str r8, [r5, #0x14]
	str r7, [r5, #0x24]
_020100AC:
	ldr r1, [r5, #0x18]
	mov r0, r6
	add r1, r1, #1
	str r1, [r5, #0x18]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020100C4: .word cardi_common
	arm_func_end CARDi_LockResource

	arm_func_start CARDi_UnlockResource
CARDi_UnlockResource: ; 0x020100C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _02010144 ; =cardi_common
	mov r7, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r1, [r4, #0x14]
	mov r5, r0
	cmp r1, r7
	bne _020100F8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02010100
_020100F8:
	bl OS_Terminate
	b _02010138
_02010100:
	ldr r0, [r4, #0x24]
	cmp r0, r6
	beq _02010110
	bl OS_Terminate
_02010110:
	ldr r0, [r4, #0x18]
	subs r0, r0, #1
	str r0, [r4, #0x18]
	bne _02010138
	mvn r2, #2
	mov r1, #0
	add r0, r4, #0x1c
	str r2, [r4, #0x14]
	str r1, [r4, #0x24]
	bl OS_WakeupThread
_02010138:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02010144: .word cardi_common
	arm_func_end CARDi_UnlockResource

	arm_func_start CARDi_GetAccessLevel
CARDi_GetAccessLevel: ; 0x02010148
	stmfd sp!, {r3, lr}
	bl OS_GetBootType
	cmp r0, #1
	moveq r0, #7
	movne r0, #3
	ldmfd sp!, {r3, pc}
	arm_func_end CARDi_GetAccessLevel

	arm_func_start CARDi_WaitAsync
CARDi_WaitAsync: ; 0x02010160
	mov r1, #0
	ldr r0, _02010178 ; =cardi_common
	ldr r12, _0201017C ; =CARDi_WaitForTask
	mov r2, r1
	mov r3, r1
	bx r12
_02010178: .word cardi_common
_0201017C: .word CARDi_WaitForTask
	arm_func_end CARDi_WaitAsync

	arm_func_start CARDi_TryWaitAsync
CARDi_TryWaitAsync: ; 0x02010180
	ldr r0, _02010198 ; =cardi_common
	ldr r0, [r0, #4]
	tst r0, #4
	moveq r0, #1
	movne r0, #0
	bx lr
_02010198: .word cardi_common
	arm_func_end CARDi_TryWaitAsync

	arm_func_start CARDi_InitResourceLock
CARDi_InitResourceLock: ; 0x0201019C
	ldr r2, _020101C0 ; =cardi_common
	mov r0, #0
	mvn r1, #2
	str r1, [r2, #0x14]
	str r0, [r2, #0x18]
	str r0, [r2, #0x24]
	str r0, [r2, #0x20]
	str r0, [r2, #0x1c]
	bx lr
_020101C0: .word cardi_common
	arm_func_end CARDi_InitResourceLock

	arm_func_start CARDi_InitCommand
CARDi_InitCommand: ; 0x020101C4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02010204 ; =cardi_arg
	ldr r3, _02010208 ; =cardi_common
	mov r4, #0x60
	mov r1, r5
	mov r2, r4
	mov r0, #0
	str r5, [r3]
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldr r1, _0201020C ; =CARDi_OnFifoRecv
	mov r0, #0xb
	bl PXI_SetFifoRecvCallback
	ldmfd sp!, {r3, r4, r5, pc}
_02010204: .word cardi_arg
_02010208: .word cardi_common
_0201020C: .word CARDi_OnFifoRecv
	arm_func_end CARDi_InitCommand

	arm_func_start CARDi_NotifyEvent
CARDi_NotifyEvent: ; 0x02010210
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	ldr r1, _02010278 ; =CARDiHookChain
	mov r6, r0
	ldr r8, [r1]
	ldr r7, _0201027C ; =CARDiHookChain
	cmp r8, #0
	beq _0201026C
_02010238:
	ldr r3, [r8, #8]
	cmp r3, #0
	beq _02010254
	ldr r0, [r8, #4]
	mov r1, r5
	mov r2, r4
	blx r3
_02010254:
	ldr r0, [r7]
	cmp r0, r8
	moveq r7, r0
	ldr r8, [r7]
	cmp r8, #0
	bne _02010238
_0201026C:
	mov r0, r6
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02010278: .word CARDiHookChain
_0201027C: .word CARDiHookChain
	arm_func_end CARDi_NotifyEvent

	arm_func_start CARDi_ExecuteOldTypeTask
CARDi_ExecuteOldTypeTask: ; 0x02010280
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	ldr r4, _020102F0 ; =cardi_common
	beq _020102BC
	ldr r1, [r4, #8]
	add r0, r4, #0x28
	bl OS_SetThreadPriority
	ldr r1, [r4, #4]
	add r0, r4, #0x28
	orr r1, r1, #8
	str r6, [r4, #0x4e8]
	str r1, [r4, #4]
	bl OS_WakeupThreadDirect
	b _020102CC
_020102BC:
	mov r0, r4
	blx r6
	mov r0, r4
	bl CARDi_EndTask
_020102CC:
	cmp r5, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020102F0: .word cardi_common
	arm_func_end CARDi_ExecuteOldTypeTask

	arm_func_start CARDi_OldTypeTaskThread
CARDi_OldTypeTaskThread: ; 0x020102F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	ldr r6, _0201033C ; =cardi_common
	mov r4, r5
_02010304:
	bl OS_DisableInterrupts
	mov r7, r0
_0201030C:
	ldr r0, [r6, #4]
	tst r0, #8
	bne _02010324
	mov r0, r5
	bl OS_SleepThread
	b _0201030C
_02010324:
	mov r0, r7
	bl OS_RestoreInterrupts
	ldr r0, [r6, #0x4e8]
	mov r1, r4
	bl CARDi_ExecuteOldTypeTask
	b _02010304
_0201033C: .word cardi_common
	arm_func_end CARDi_OldTypeTaskThread

	arm_func_start CARDi_WaitForTask
CARDi_WaitForTask: ; 0x02010340
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl OS_DisableInterrupts
	ldr r1, [r8, #4]
	mov r4, r0
	tst r1, #4
	beq _02010380
	add r9, r8, #0xf4
_0201036C:
	add r0, r9, #0x400
	bl OS_SleepThread
	ldr r0, [r8, #4]
	tst r0, #4
	bne _0201036C
_02010380:
	cmp r7, #0
	ldrne r0, [r8, #4]
	strne r6, [r8, #0x4ec]
	orrne r0, r0, #4
	strne r0, [r8, #4]
	mov r0, r4
	strne r5, [r8, #0x4f0]
	bl OS_RestoreInterrupts
	ldr r0, [r8]
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end CARDi_WaitForTask

	arm_func_start CARDi_EndTask
CARDi_EndTask: ; 0x020103B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7, #0x4ec]
	ldr r6, [r7, #0x4f0]
	bl OS_DisableInterrupts
	ldr r2, [r7, #4]
	add r1, r7, #0xf4
	mov r4, r0
	bic r2, r2, #0x4c
	add r0, r1, #0x400
	str r2, [r7, #4]
	bl OS_WakeupThread
	mov r0, r4
	bl OS_RestoreInterrupts
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CARDi_EndTask

	arm_func_start CARDi_GetDmaInterface
CARDi_GetDmaInterface: ; 0x02010404
	stmfd sp!, {r4, lr}
	tst r0, #0x10
	mov r4, #0
	movne r1, #1
	bic r0, r0, #0x10
	moveq r1, r4
	cmp r0, #3
	bhi _02010434
	cmp r1, #0
	ldreq r4, _0201043C ; =CARDiDmaUsingFormer
	beq _02010434
	bl OS_Terminate
_02010434:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0201043C: .word CARDiDmaUsingFormer
	arm_func_end CARDi_GetDmaInterface

	arm_func_start CARDi_ICInvalidateSmart
CARDi_ICInvalidateSmart: ; 0x02010440
	stmfd sp!, {r3, lr}
	cmp r1, r2
	blo _02010454
	bl IC_InvalidateAll
	ldmfd sp!, {r3, pc}
_02010454:
	bl IC_InvalidateRange
	ldmfd sp!, {r3, pc}
	arm_func_end CARDi_ICInvalidateSmart

	arm_func_start CARDi_DCInvalidateSmart
CARDi_DCInvalidateSmart: ; 0x0201045C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, r2
	blo _02010478
	bl DC_FlushAll
	ldmfd sp!, {r4, r5, r6, pc}
_02010478:
	ands r0, r6, #0x1f
	beq _020104A4
	sub r6, r6, r0
	mov r4, #0x20
	mov r0, r6
	mov r1, r4
	bl DC_StoreRange
	mov r1, r4
	add r0, r6, r5
	bl DC_StoreRange
	add r5, r5, #0x20
_020104A4:
	mov r0, r6
	mov r1, r5
	bl DC_InvalidateRange
	bl DC_WaitWriteBufferEmpty
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end CARDi_DCInvalidateSmart

	arm_func_start CARDi_OnFifoRecv
CARDi_OnFifoRecv: ; 0x020104B8
	stmfd sp!, {r3, lr}
	cmp r0, #0xb
	ldmnefd sp!, {r3, pc}
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020104E8 ; =cardi_common
	ldr r1, [r0, #4]
	bic r1, r1, #0x20
	str r1, [r0, #4]
	ldr r0, [r0, #0x51c]
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r3, pc}
_020104E8: .word cardi_common
	arm_func_end CARDi_OnFifoRecv

	arm_func_start CARDi_Request
CARDi_Request: ; 0x020104EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #4]
	mov r9, r1
	mov r11, r2
	tst r0, #2
	mov r7, #1
	bne _02010560
	ldr r1, [r10, #4]
	mov r0, #0xb
	orr r2, r1, #2
	mov r1, r7
	str r2, [r10, #4]
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _02010550
	mov r5, #0x32
	mov r4, #0xb
_02010534:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	mov r0, r4
	mov r1, r7
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _02010534
_02010550:
	mov r0, r10
	mov r1, #0
	mov r2, #1
	bl CARDi_Request
_02010560:
	ldr r0, [r10]
	mov r1, #0x60
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	ldr r0, _02010638 ; =OSi_ThreadInfo
	mov r6, #0xb
	ldr r0, [r0, #4]
	mov r5, r6
	str r0, [r10, #0x51c]
	mov r4, #0
_02010588:
	ldr r0, [r10, #4]
	orr r0, r0, #0x20
	str r0, [r10, #4]
_02010594:
	mov r0, r6
	mov r1, r9
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _02010594
	cmp r9, #0
	bne _020105D0
	ldr r8, [r10]
_020105B8:
	mov r0, r5
	mov r1, r8
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _020105B8
_020105D0:
	bl OS_DisableInterrupts
	ldr r1, [r10, #4]
	mov r8, r0
	tst r1, #0x20
	beq _020105F8
_020105E4:
	mov r0, r4
	bl OS_SleepThread
	ldr r0, [r10, #4]
	tst r0, #0x20
	bne _020105E4
_020105F8:
	mov r0, r8
	bl OS_RestoreInterrupts
	ldr r0, [r10]
	mov r1, #0x60
	bl DC_InvalidateRange
	ldr r0, [r10]
	ldr r0, [r0]
	cmp r0, #4
	bne _02010628
	sub r11, r11, #1
	cmp r11, #0
	bgt _02010588
_02010628:
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02010638: .word OSi_ThreadInfo
	arm_func_end CARDi_Request

	arm_func_start CARDi_RequestStreamCommandCore
CARDi_RequestStreamCommandCore: ; 0x0201063C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldr r5, [r9, #0x510]
	ldr r0, _020107C8 ; =_version_NINTENDO_BACKUP
	ldr r6, [r9, #0x518]
	ldr r10, [r9, #0x514]
	mov r7, #0x100
	bl OSi_ReferSymbol
	cmp r5, #0xb
	bne _02010670
	bl CARD_GetBackupSectorSize
	mov r7, r0
	b _02010680
_02010670:
	cmp r5, #0xf
	ldreq r0, _020107CC ; =cardi_common
	ldreq r0, [r0]
	ldreq r7, [r0, #0x20]
_02010680:
	ldr r4, _020107D0 ; =CARDi_backup_cache_page_buf
	mov r11, #9
_02010688:
	ldr r8, [r9, #0x504]
	ldr r0, [r9]
	cmp r7, r8
	movlo r8, r7
	str r8, [r0, #0x14]
	ldr r0, [r9, #4]
	tst r0, #0x40
	beq _020106C4
	ldr r1, [r9, #4]
	ldr r0, [r9]
	bic r1, r1, #0x40
	str r1, [r9, #4]
	mov r1, #7
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020106C4:
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _02010748
_020106D0: ; jump table
	b _020106E0 ; case 0
	b _02010704 ; case 1
	b _02010704 ; case 2
	b _02010730 ; case 3
_020106E0:
	mov r0, r4
	mov r1, r8
	bl DC_InvalidateRange
	ldr r1, [r9, #0x4fc]
	ldr r0, [r9]
	str r1, [r0, #0xc]
	ldr r0, [r9]
	str r4, [r0, #0x10]
	b _02010748
_02010704:
	ldr r0, [r9, #0x4fc]
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, r8
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	ldr r0, [r9]
	str r4, [r0, #0xc]
	b _0201073C
_02010730:
	ldr r1, [r9, #0x4fc]
	ldr r0, [r9]
	str r1, [r0, #0xc]
_0201073C:
	ldr r1, [r9, #0x500]
	ldr r0, [r9]
	str r1, [r0, #0x10]
_02010748:
	mov r0, r9
	mov r1, r5
	mov r2, r10
	bl CARDi_Request
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #2
	bne _02010784
	mov r0, r9
	mov r1, r11
	mov r2, #1
	bl CARDi_Request
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _0201079C
_02010784:
	cmp r6, #0
	bne _0201079C
	ldr r1, [r9, #0x500]
	mov r0, r4
	mov r2, r8
	bl MI_CpuCopy8
_0201079C:
	ldr r0, [r9, #0x4fc]
	ldr r2, [r9, #0x500]
	ldr r1, [r9, #0x504]
	add r0, r0, r8
	add r2, r2, r8
	subs r1, r1, r8
	str r0, [r9, #0x4fc]
	str r2, [r9, #0x500]
	str r1, [r9, #0x504]
	bne _02010688
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020107C8: .word _version_NINTENDO_BACKUP
_020107CC: .word cardi_common
_020107D0: .word CARDi_backup_cache_page_buf
	arm_func_end CARDi_RequestStreamCommandCore

	arm_func_start CARDi_IdentifyBackupCore2
CARDi_IdentifyBackupCore2: ; 0x020107D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02010AF8 ; =cardi_common
	mov r4, #0x48
	ldr r6, [r1]
	mov r5, #0
	mov r7, r0
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x18
	bl MI_CpuFill8
	ldr r0, _02010AFC ; =0x0000203F
	str r7, [r6, #4]
	str r0, [r6, #0x58]
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7, asr #8
	and r0, r0, #0xff
	mov r3, #1
	mov r12, r3, lsl r0
	and r2, r7, #0xff
	mov r1, r7, asr #0x10
	str r12, [r6, #0x18]
	mov r0, #0xff
	strb r0, [r6, #0x54]
	cmp r2, #1
	and r0, r1, #0xff
	bne _020108F4
	cmp r12, #0x2000
	bhi _02010858
	bhs _02010894
	cmp r12, #0x200
	beq _02010874
	b _02010AD8
_02010858:
	cmp r12, #0x10000
	bhi _02010868
	beq _020108A4
	b _02010AD8
_02010868:
	cmp r12, #0x20000
	beq _020108BC
	b _02010AD8
_02010874:
	mov r0, #0x10
	str r0, [r6, #0x24]
	str r3, [r6, #0x28]
	mov r0, #5
	str r0, [r6, #0x2c]
	mov r0, #0xf0
	strb r0, [r6, #0x54]
	b _020108D8
_02010894:
	mov r0, #0x20
	str r0, [r6, #0x24]
	mov r0, #2
	b _020108C8
_020108A4:
	mov r0, #0x80
	str r0, [r6, #0x24]
	mov r0, #2
	str r0, [r6, #0x28]
	mov r0, #0xa
	b _020108D0
_020108BC:
	mov r0, #0x100
	str r0, [r6, #0x24]
	mov r0, #3
_020108C8:
	str r0, [r6, #0x28]
	mov r0, #5
_020108D0:
	str r0, [r6, #0x2c]
	strb r5, [r6, #0x54]
_020108D8:
	ldr r0, [r6, #0x24]
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x58]
	orr r0, r0, #0x140
	orr r0, r0, #0x4200
	str r0, [r6, #0x58]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020108F4:
	cmp r2, #2
	bne _02010A98
	cmp r12, #0x100000
	bhi _02010924
	bhs _02010948
	cmp r12, #0x40000
	bhi _02010918
	beq _02010948
	b _02010AD8
_02010918:
	cmp r12, #0x80000
	beq _02010948
	b _02010AD8
_02010924:
	cmp r12, #0x400000
	bhi _0201093C
	bhs _020109B4
	cmp r12, #0x200000
	beq _02010970
	b _02010AD8
_0201093C:
	cmp r12, #0x800000
	beq _020109FC
	b _02010AD8
_02010948:
	mov r0, #0x19
	str r0, [r6, #0x30]
	mov r1, #0x12c
	str r1, [r6, #0x34]
	ldr r0, _02010B00 ; =0x00001388
	str r1, [r6, #0x50]
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x58]
	orr r0, r0, #0x480
_0201096C:
	b _02010A64
_02010970:
	mov r0, #0x17
	str r0, [r6, #0x30]
	mov r0, #0x12c
	str r0, [r6, #0x34]
	mov r0, #0x1f4
	str r0, [r6, #0x40]
	add r0, r4, #0x1340
	ldr r1, _02010B04 ; =0x00002710
	str r0, [r6, #0x44]
	ldr r0, _02010B08 ; =0x0000EA60
	str r1, [r6, #0x38]
	str r0, [r6, #0x3c]
	strb r5, [r6, #0x54]
	ldr r0, [r6, #0x58]
	orr r0, r0, #0x480
	orr r0, r0, #0x5000
	b _0201096C
_020109B4:
	mov r0, #0x258
	str r0, [r6, #0x40]
	add r0, r0, #0x960
	str r0, [r6, #0x44]
	mov r0, #0x46
	str r0, [r6, #0x48]
	mov r0, #0x96
	ldr r1, _02010B0C ; =0x000059D8
	str r0, [r6, #0x4c]
	ldr r0, _02010B10 ; =0x000C3500
	str r1, [r6, #0x38]
	str r0, [r6, #0x3c]
	strb r5, [r6, #0x54]
	mov r0, #0x1000
	str r0, [r6, #0x20]
	ldr r0, [r6, #0x58]
	orr r0, r0, #0xd000
	b _0201096C
_020109FC:
	cmp r0, #0
	bne _02010A2C
	mov r0, #0x3e8
	str r0, [r6, #0x40]
	add r0, r0, #0x7d0
	ldr r1, _02010B14 ; =0x000109A0
	str r0, [r6, #0x44]
	ldr r0, _02010B18 ; =0x00027100
	str r1, [r6, #0x38]
	str r0, [r6, #0x3c]
	strb r5, [r6, #0x54]
	b _02010A5C
_02010A2C:
	cmp r0, #1
	bne _02010A68
	mov r0, #0x3e8
	str r0, [r6, #0x40]
	add r0, r0, #0x7d0
	ldr r1, _02010B14 ; =0x000109A0
	str r0, [r6, #0x44]
	ldr r0, _02010B18 ; =0x00027100
	str r1, [r6, #0x38]
	str r0, [r6, #0x3c]
	mov r0, #0x84
	strb r0, [r6, #0x54]
_02010A5C:
	ldr r0, [r6, #0x58]
	orr r0, r0, #0x5000
_02010A64:
	str r0, [r6, #0x58]
_02010A68:
	mov r0, #0x10000
	str r0, [r6, #0x1c]
	mov r0, #0x100
	str r0, [r6, #0x24]
	mov r0, #3
	str r0, [r6, #0x28]
	mov r0, #5
	str r0, [r6, #0x2c]
	ldr r0, [r6, #0x58]
	orr r0, r0, #0xb40
	str r0, [r6, #0x58]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02010A98:
	cmp r2, #3
	bne _02010AD8
	cmp r12, #0x2000
	cmpne r12, #0x8000
	bne _02010AD8
	str r12, [r6, #0x24]
	str r12, [r6, #0x1c]
	mov r0, #2
	str r0, [r6, #0x28]
	mov r0, #0
	strb r0, [r6, #0x54]
	ldr r0, [r6, #0x58]
	orr r0, r0, #0x140
	orr r0, r0, #0x4200
	str r0, [r6, #0x58]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02010AD8:
	mov r1, #0
	str r1, [r6, #4]
	str r1, [r6, #0x18]
	ldr r0, _02010AF8 ; =cardi_common
	mov r1, #3
	ldr r0, [r0]
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02010AF8: .word cardi_common
_02010AFC: .word 0x0000203F
_02010B00: .word 0x00001388
_02010B04: .word 0x00002710
_02010B08: .word 0x0000EA60
_02010B0C: .word 0x000059D8
_02010B10: .word 0x000C3500
_02010B14: .word 0x000109A0
_02010B18: .word 0x00027100
	arm_func_end CARDi_IdentifyBackupCore2

	arm_func_start CARDi_IdentifyBackupCore
CARDi_IdentifyBackupCore: ; 0x02010B1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #1
	mov r5, r0
	mov r2, r4
	mov r1, #2
	bl CARDi_Request
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r1, [r5]
	ldr r2, _02010B68 ; =CARDi_backup_cache_page_buf
	mov r0, r5
	str r2, [r1, #0x10]
	ldr r3, [r5]
	mov r2, r4
	mov r1, #6
	str r4, [r3, #0x14]
	bl CARDi_Request
	ldmfd sp!, {r3, r4, r5, pc}
_02010B68: .word CARDi_backup_cache_page_buf
	arm_func_end CARDi_IdentifyBackupCore

	arm_func_start CARDi_BeginBackupCommand
CARDi_BeginBackupCommand: ; 0x02010B6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _02010BB4 ; =_version_NINTENDO_BACKUP
	mov r5, r1
	mov r4, r2
	bl OSi_ReferSymbol
	bl CARD_CheckEnabled
	bl CARDi_GetAccessLevel
	and r0, r6, r0
	cmp r6, r0
	beq _02010B9C
	bl OS_Terminate
_02010B9C:
	ldr r0, _02010BB8 ; =cardi_common
	mov r2, r5
	mov r3, r4
	mov r1, #1
	bl CARDi_WaitForTask
	ldmfd sp!, {r4, r5, r6, pc}
_02010BB4: .word _version_NINTENDO_BACKUP
_02010BB8: .word cardi_common
	arm_func_end CARDi_BeginBackupCommand

	arm_func_start CARDi_RequestStreamCommand
CARDi_RequestStreamCommand: ; 0x02010BBC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r12, [sp, #0x20]
	mov r6, r0
	mov r4, r2
	mov r5, r1
	mov r0, #1
	cmp r12, #0
	ldr r2, [sp, #0x10]
	movne r0, #2
	mov r1, r3
	bl CARDi_BeginBackupCommand
	ldr r2, _02010C20 ; =cardi_common
	ldr r1, [sp, #0x18]
	str r6, [r2, #0x4fc]
	str r5, [r2, #0x500]
	str r4, [r2, #0x504]
	str r1, [r2, #0x510]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r0, [r2, #0x514]
	ldr r1, [sp, #0x14]
	ldr r0, _02010C24 ; =CARDi_RequestStreamCommandCore
	str r3, [r2, #0x518]
	bl CARDi_ExecuteOldTypeTask
	ldmfd sp!, {r4, r5, r6, pc}
_02010C20: .word cardi_common
_02010C24: .word CARDi_RequestStreamCommandCore
	arm_func_end CARDi_RequestStreamCommand

	arm_func_start CARD_IdentifyBackup
CARD_IdentifyBackup: ; 0x02010C28
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	bne _02010C38
	bl OS_Terminate
_02010C38:
	mov r4, #0
	mov r0, r4
	mov r1, r4
	mov r2, r4
	bl CARDi_BeginBackupCommand
	mov r0, r5
	bl CARDi_IdentifyBackupCore2
	ldr r0, _02010C64 ; =CARDi_IdentifyBackupCore
	mov r1, r4
	bl CARDi_ExecuteOldTypeTask
	ldmfd sp!, {r3, r4, r5, pc}
_02010C64: .word CARDi_IdentifyBackupCore
	arm_func_end CARD_IdentifyBackup

	arm_func_start CARD_GetBackupSectorSize
CARD_GetBackupSectorSize: ; 0x02010C68
	ldr r0, _02010C78 ; =cardi_common
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bx lr
_02010C78: .word cardi_common
	arm_func_end CARD_GetBackupSectorSize

	arm_func_start CARD_WaitBackupAsync
CARD_WaitBackupAsync: ; 0x02010C7C
	ldr r12, _02010C84 ; =CARDi_WaitAsync
	bx r12
_02010C84: .word CARDi_WaitAsync
	arm_func_end CARD_WaitBackupAsync

	arm_func_start CARD_TryWaitBackupAsync
CARD_TryWaitBackupAsync: ; 0x02010C88
	ldr r12, _02010C90 ; =CARDi_TryWaitAsync
	bx r12
_02010C90: .word CARDi_TryWaitAsync
	arm_func_end CARD_TryWaitBackupAsync

	arm_func_start CARDi_SetRomOp
CARDi_SetRomOp: ; 0x02010C94
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, r0, lsl #0x18
	orr r2, r0, r1, lsr #8
	mov r3, r1, lsl #0x18
	ldr r1, _02010D0C ; =0x040001A4
_02010CA8:
	ldr r0, [r1]
	tst r0, #0x80000000
	bne _02010CA8
	ldr r0, _02010D10 ; =0x040001A0
	and r1, r2, #0xff0000
	ldrh r5, [r0]
	and r12, r3, #0xff0000
	and lr, r2, #0xff000000
	mov r4, r1, lsr #8
	bic r1, r5, #0x2000
	orr r1, r1, #0xc000
	and r5, r2, #0xff00
	orr r4, r4, lr, lsr #24
	orr r5, r4, r5, lsl #8
	and lr, r3, #0xff000000
	mov r12, r12, lsr #8
	and r4, r3, #0xff00
	orr r12, r12, lr, lsr #24
	orr r4, r12, r4, lsl #8
	strh r1, [r0]
	orr r1, r5, r2, lsl #24
	str r1, [r0, #8]
	orr r1, r4, r3, lsl #24
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02010D0C: .word 0x040001A4
_02010D10: .word 0x040001A0
	arm_func_end CARDi_SetRomOp

	arm_func_start CARDi_StartRomPageTransfer
CARDi_StartRomPageTransfer: ; 0x02010D14
	stmfd sp!, {r3, lr}
	mov r1, r0
	mov r0, #0xb7
	bl CARDi_SetRomOp
	ldr r1, _02010D40 ; =0x02FFFAE0
	ldr r0, _02010D44 ; =0x040001A4
	ldr r1, [r1]
	bic r1, r1, #0x7000000
	orr r1, r1, #0xa1000000
	str r1, [r0]
	ldmfd sp!, {r3, pc}
_02010D40: .word 0x02FFFAE0
_02010D44: .word 0x040001A4
	arm_func_end CARDi_StartRomPageTransfer

	arm_func_start CARDi_ReadRomIDCore
CARDi_ReadRomIDCore: ; 0x02010D48
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r1, r4
	mov r0, #0xb8
	bl CARDi_SetRomOp
	ldr r1, _02010D94 ; =0x02FFFAE0
	sub r0, r4, #0x2000
	ldr r2, [r1]
	ldr r1, _02010D98 ; =0x040001A4
	bic r2, r2, #0x7000000
	orr r2, r2, #0xa7000000
	and r0, r2, r0
	str r0, [r1]
_02010D7C:
	ldr r0, [r1]
	tst r0, #0x800000
	beq _02010D7C
	ldr r0, _02010D9C ; =0x04100010
	ldr r0, [r0]
	ldmfd sp!, {r4, pc}
_02010D94: .word 0x02FFFAE0
_02010D98: .word 0x040001A4
_02010D9C: .word 0x04100010
	arm_func_end CARDi_ReadRomIDCore

	arm_func_start CARDi_ReadRomStatusCore
CARDi_ReadRomStatusCore: ; 0x02010DA0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02010DFC ; =0x02FFFC00
	ldr r0, [r5]
	tst r0, #0x20000000
	moveq r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r1, r4
	mov r0, #0xd6
	bl CARDi_SetRomOp
	ldr r1, [r5, #-0x120]
	sub r0, r4, #0x2000
	bic r1, r1, #0x7000000
	orr r2, r1, #0xa7000000
	ldr r1, _02010E00 ; =0x040001A4
	and r0, r2, r0
	str r0, [r1]
_02010DE4:
	ldr r0, [r1]
	tst r0, #0x800000
	beq _02010DE4
	ldr r0, _02010E04 ; =0x04100010
	ldr r0, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_02010DFC: .word 0x02FFFC00
_02010E00: .word 0x040001A4
_02010E04: .word 0x04100010
	arm_func_end CARDi_ReadRomStatusCore

	arm_func_start CARDi_RefreshRom
CARDi_RefreshRom: ; 0x02010E08
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl CARDi_ReadRomStatusCore
	tst r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl CARDi_RefreshRomCore
	bl CARDi_ReadRomStatusCore
	tst r0, #0x20
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r4, _02010E64 ; =OSi_IsThreadInitialized
	mov r5, #1
_02010E34:
	ldr r0, [r4]
	cmp r0, #0
	beq _02010E54
	bl OS_IsAlarmAvailable
	cmp r0, #0
	beq _02010E54
	mov r0, r5
	bl OS_Sleep
_02010E54:
	bl CARDi_ReadRomStatusCore
	tst r0, #0x20
	beq _02010E34
	ldmfd sp!, {r3, r4, r5, pc}
_02010E64: .word OSi_IsThreadInitialized
	arm_func_end CARDi_RefreshRom

	arm_func_start CARDi_RefreshRomCore
CARDi_RefreshRomCore: ; 0x02010E68
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r1, r4
	mov r0, #0xb5
	bl CARDi_SetRomOp
	ldr r1, _02010EAC ; =0x02FFFAE0
	sub r0, r4, #0x2000
	ldr r2, [r1]
	ldr r1, _02010EB0 ; =0x040001A4
	bic r2, r2, #0x7000000
	orr r2, r2, #0xa0000000
	and r0, r2, r0
	str r0, [r1]
_02010E9C:
	ldr r0, [r1]
	tst r0, #0x80000000
	bne _02010E9C
	ldmfd sp!, {r4, pc}
_02010EAC: .word 0x02FFFAE0
_02010EB0: .word 0x040001A4
	arm_func_end CARDi_RefreshRomCore

	arm_func_start CARDi_ReadRomWithCPU
CARDi_ReadRomWithCPU: ; 0x02010EB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r0, _02010FC0 ; =cache_page
	mov r8, r3
	ldr r0, [r0]
	mov r10, r1
	mov r9, r2
	str r8, [sp, #4]
	str r0, [sp]
	ldr r11, _02010FC4 ; =0x04100010
	ldr r4, _02010FC8 ; =0x040001A4
	b _02010F98
_02010EE4:
	mov r0, #0x200
	rsb r0, r0, #0
	and r6, r9, r0
	ldr r0, [sp]
	mov r5, r10
	cmp r6, r0
	mov r7, #0x200
	ldreq r5, _02010FCC ; =CARDi_cache_buf
	beq _02010F5C
	cmp r6, r9
	bne _02010F24
	tst r10, #3
	bne _02010F24
	mov r0, r7
	cmp r8, r0
	bhs _02010F2C
_02010F24:
	ldr r5, _02010FCC ; =CARDi_cache_buf
	str r6, [sp]
_02010F2C:
	mov r0, r6
	bl CARDi_StartRomPageTransfer
	mov r3, #0
_02010F38:
	ldr r2, [r4]
	tst r2, #0x800000
	beq _02010F54
	ldr r1, [r11]
	cmp r3, #0x80
	strlo r1, [r5, r3, lsl #2]
	addlo r3, r3, #1
_02010F54:
	tst r2, #0x80000000
	bne _02010F38
_02010F5C:
	ldr r0, _02010FCC ; =CARDi_cache_buf
	cmp r5, r0
	bne _02010F8C
	sub r3, r9, r6
	rsb r7, r3, #0x200
	ldr r0, _02010FCC ; =CARDi_cache_buf
	cmp r8, r7
	movls r7, r8
	mov r1, r10
	mov r2, r7
	add r0, r0, r3
	bl MI_CpuCopy8
_02010F8C:
	add r10, r10, r7
	add r9, r9, r7
	sub r8, r8, r7
_02010F98:
	cmp r8, #0
	bne _02010EE4
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	ldr r2, _02010FC0 ; =cache_page
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [r2]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02010FC0: .word cache_page
_02010FC4: .word 0x04100010
_02010FC8: .word 0x040001A4
_02010FCC: .word CARDi_cache_buf
	arm_func_end CARDi_ReadRomWithCPU

	arm_func_start CARDi_DmaReadPageCallback
CARDi_DmaReadPageCallback: ; 0x02010FD0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _02011068 ; =cardi_rom_base
	ldr r4, [r5, #8]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	add r0, r0, #0x200
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r0, r0, #0x200
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	subs r0, r0, #0x200
	str r0, [r4, #0x14]
	beq _02011018
	ldr r0, [r4, #0xc]
	bl CARDi_StartRomPageTransfer
	ldmfd sp!, {r4, r5, r6, pc}
_02011018:
	ldr r0, _0201106C ; =cardi_common
	ldr r1, [r0, #0x50c]
	ldr r0, [r0, #0x508]
	ldr r1, [r1, #4]
	blx r1
	mov r6, #0x80000
	mov r0, r6
	bl OS_DisableIrqMask
	mov r0, r6
	bl OS_ResetRequestIrqMask
	mov r0, #0
	str r0, [r5, #8]
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	ldr r1, [r4, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #8]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_02011068: .word cardi_rom_base
_0201106C: .word cardi_common
	arm_func_end CARDi_DmaReadPageCallback

	arm_func_start CARDi_ReadRomWithDMA
CARDi_ReadRomWithDMA: ; 0x02011070
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl OS_DisableInterrupts
	ldr r2, _020110DC ; =cardi_rom_base
	mov r4, #0x80000
	mov r5, r0
	ldr r1, _020110E0 ; =CARDi_DmaReadPageCallback
	mov r0, r4
	str r6, [r2, #8]
	bl OS_SetIrqFunction
	mov r0, r4
	bl OS_ResetRequestIrqMask
	mov r0, r4
	bl OS_EnableIrqMask
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r2, _020110E4 ; =cardi_common
	ldr r1, _020110E8 ; =0x04100010
	ldr r0, [r2, #0x508]
	ldr r3, [r2, #0x50c]
	ldr r2, [r6, #0x10]
	ldr r12, [r3]
	mov r3, #0x200
	blx r12
	ldr r0, [r6, #0xc]
	bl CARDi_StartRomPageTransfer
	ldmfd sp!, {r4, r5, r6, pc}
_020110DC: .word cardi_rom_base
_020110E0: .word CARDi_DmaReadPageCallback
_020110E4: .word cardi_common
_020110E8: .word 0x04100010
	arm_func_end CARDi_ReadRomWithDMA

	arm_func_start CARDi_DmaReadDone
CARDi_DmaReadDone: ; 0x020110EC
	stmfd sp!, {r3, lr}
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	mov r0, #8
	bl CARDi_RefreshRom
	ldr r0, _02011118 ; =cardi_common
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	bl CARDi_EndTask
	ldmfd sp!, {r3, pc}
_02011118: .word cardi_common
	arm_func_end CARDi_DmaReadDone

	arm_func_start CARDi_IsRomDmaAvailable
CARDi_IsRomDmaAvailable: ; 0x0201111C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	mov r5, r4
	mov r2, r4
	cmp r0, #3
	bhi _02011174
	cmp r7, #0
	beq _02011174
	tst r9, #0x1f
	bne _02011174
	ldr r0, _020111C8 ; =0x01FF8000
	add r1, r9, r7
	cmp r1, r0
	mov r0, #1
	bls _0201116C
	cmp r9, #0x2000000
	movlo r0, r4
_0201116C:
	cmp r0, #0
	movne r2, #1
_02011174:
	cmp r2, #0
	beq _020111A8
	mov r6, #1
	bl OS_GetDTCMAddress
	add r1, r9, r7
	cmp r1, r0
	bls _020111A0
	bl OS_GetDTCMAddress
	add r0, r0, #0x4000
	cmp r9, r0
	movlo r6, #0
_020111A0:
	cmp r6, #0
	movne r5, #1
_020111A8:
	cmp r5, #0
	beq _020111C0
	ldr r0, _020111CC ; =0x000001FF
	orr r1, r8, r7
	tst r1, r0
	moveq r4, #1
_020111C0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020111C8: .word 0x01FF8000
_020111CC: .word 0x000001FF
	arm_func_end CARDi_IsRomDmaAvailable

	arm_func_start CARDi_ReadRomSyncCore
CARDi_ReadRomSyncCore: ; 0x020111D0
	stmfd sp!, {r4, lr}
	ldr r12, _02011214 ; =cardi_rom_base
	mov r4, #0
	ldr r1, [r0, #0x500]
	ldr r2, [r0, #0x4fc]
	ldr r3, [r0, #0x504]
	ldr r12, [r12, #0xc]
	mov r0, r4
	blx r12
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	mov r0, #8
	bl CARDi_RefreshRom
	ldr r0, _02011218 ; =cardi_common
	ldr r0, [r0]
	str r4, [r0]
	ldmfd sp!, {r4, pc}
_02011214: .word cardi_rom_base
_02011218: .word cardi_common
	arm_func_end CARDi_ReadRomSyncCore

	arm_func_start CARDi_ReadRom
CARDi_ReadRom: ; 0x0201121C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldr r4, _02011388 ; =cardi_common
	bl CARD_CheckEnabled
	bl CARDi_GetAccessLevel
	tst r0, #4
	bne _02011248
	bl OS_Terminate
_02011248:
	mov r8, #1
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r0, r4
	mov r1, r8
	bl CARDi_WaitForTask
	mov r0, r9
	bl CARDi_GetDmaInterface
	str r0, [r4, #0x50c]
	cmp r0, #0
	andne r0, r9, #3
	subeq r0, r8, #2
	str r0, [r4, #0x508]
	cmp r0, #3
	bhi _02011290
	ldr r1, [r4, #0x50c]
	ldr r1, [r1, #4]
	blx r1
_02011290:
	ldr r8, _0201138C ; =cardi_rom_base
	ldr r0, _02011390 ; =CARDi_DmaReadDone
	ldr r1, [r8]
	str r6, [r4, #0x500]
	add r2, r7, r1
	str r2, [r4, #0x4fc]
	str r5, [r4, #0x504]
	str r0, [r8, #0x14]
	mov r0, #0
	str r0, [r8, #0x18]
	str r2, [r8, #0x1c]
	str r6, [r8, #0x20]
	str r5, [r8, #0x24]
	str r0, [r8, #0x28]
	ldr r1, [r8, #0xc]
	ldr r0, _02011394 ; =CARDi_ReadRomWithCPU
	cmp r1, r0
	bne _02011358
	ldr r0, [r4, #0x508]
	mov r1, r6
	mov r3, r5
	bl CARDi_IsRomDmaAvailable
	cmp r0, #0
	beq _02011358
	bl OS_DisableInterrupts
	ldr r1, [r8, #4]
	mov r5, r0
	cmp r1, #0
	beq _02011314
	ldr r0, [r4, #0x500]
	ldr r1, [r4, #0x504]
	ldr r2, [r4, #0xc]
	bl CARDi_ICInvalidateSmart
_02011314:
	ldr r0, _02011398 ; =cache_page
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02011334
	ldr r0, [r4, #0x500]
	ldr r1, [r4, #0x504]
	ldr r2, [r4, #0x10]
	bl CARDi_DCInvalidateSmart
_02011334:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, _0201139C ; =CARDiDmaReadInfo
	bl CARDi_ReadRomWithDMA
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl CARD_WaitRomAsync
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02011358:
	ldr r0, _0201138C ; =cardi_rom_base
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02011378
	ldr r0, [r4, #0x500]
	ldr r1, [r4, #0x504]
	ldr r2, [r4, #0xc]
	bl CARDi_ICInvalidateSmart
_02011378:
	ldr r1, [sp, #0x28]
	ldr r0, _020113A0 ; =CARDi_ReadRomSyncCore
	bl CARDi_ExecuteOldTypeTask
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02011388: .word cardi_common
_0201138C: .word cardi_rom_base
_02011390: .word CARDi_DmaReadDone
_02011394: .word CARDi_ReadRomWithCPU
_02011398: .word cache_page
_0201139C: .word CARDiDmaReadInfo
_020113A0: .word CARDi_ReadRomSyncCore
	arm_func_end CARDi_ReadRom

	arm_func_start CARDi_InitRom
CARDi_InitRom: ; 0x020113A4
	stmfd sp!, {r4, lr}
	ldr r1, _02011410 ; =CARDi_ReadRomWithCPU
	ldr r0, _02011414 ; =cardi_rom_base
	str r1, [r0, #0xc]
	bl OS_GetBootType
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	bl CARD_GetOwnRomHeader
	ldr r0, [r0, #0x80]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl OS_GetLockID
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r0, r4
	bl CARD_LockRom
	bl CARD_GetOwnRomHeader
	ldr r2, [r0, #0x80]
	ldr r1, _02011418 ; =CARDiOwnSignature
	mov r0, #0
	mov r3, #0x88
	bl CARDi_ReadRomWithCPU
	mov r0, r4
	bl CARD_UnlockRom
	mov r0, r4
	bl OS_ReleaseLockID
	ldmfd sp!, {r4, pc}
_02011410: .word CARDi_ReadRomWithCPU
_02011414: .word cardi_rom_base
_02011418: .word CARDiOwnSignature
	arm_func_end CARDi_InitRom

	arm_func_start CARD_WaitRomAsync
CARD_WaitRomAsync: ; 0x0201141C
	ldr r12, _02011424 ; =CARDi_WaitAsync
	bx r12
_02011424: .word CARDi_WaitAsync
	arm_func_end CARD_WaitRomAsync

	arm_func_start CARDi_GetOwnSignature
CARDi_GetOwnSignature: ; 0x02011428
	ldr r0, _02011430 ; =CARDiOwnSignature
	bx lr
_02011430: .word CARDiOwnSignature
	arm_func_end CARDi_GetOwnSignature

	arm_func_start CARD_InitPulledOutCallback
CARD_InitPulledOutCallback: ; 0x02011434
	stmfd sp!, {r3, r4, r5, lr}
	bl PXI_Init
	ldr r4, _02011460 ; =CARDiSlotResetCount
	mov r5, #0
	str r5, [r4]
	ldr r1, _02011464 ; =CARDi_PulledOutCallback
	mov r0, #0xe
	str r5, [r4, #4]
	bl PXI_SetFifoRecvCallback
	str r5, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02011460: .word CARDiSlotResetCount
_02011464: .word CARDi_PulledOutCallback
	arm_func_end CARD_InitPulledOutCallback

	arm_func_start CARDi_PulledOutCallback
CARDi_PulledOutCallback: ; 0x02011468
	stmfd sp!, {r3, r4, r5, lr}
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _020114C0
	ldr r4, _020114F4 ; =CARDiSlotResetCount
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #1
	mov r0, r5
	str r5, [r4, #4]
	mov r1, #0
	bl CARDi_NotifyEvent
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _020114B0
	blx r0
	mov r5, r0
_020114B0:
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl CARD_TerminateForPulledOut
	ldmfd sp!, {r3, r4, r5, pc}
_020114C0:
	cmp r0, #2
	bne _020114EC
	ldr r2, _020114F4 ; =CARDiSlotResetCount
	mov r1, #0
	ldr r3, [r2]
	mov r0, #2
	add r3, r3, #1
	str r3, [r2]
	str r1, [r2, #4]
	bl CARDi_NotifyEvent
	ldmfd sp!, {r3, r4, r5, pc}
_020114EC:
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, pc}
_020114F4: .word CARDiSlotResetCount
	arm_func_end CARDi_PulledOutCallback

	arm_func_start CARD_IsPulledOut
CARD_IsPulledOut: ; 0x020114F8
	ldr r0, _02011504 ; =CARDiSlotResetCount
	ldr r0, [r0, #4]
	bx lr
_02011504: .word CARDiSlotResetCount
	arm_func_end CARD_IsPulledOut

	arm_func_start CARD_TerminateForPulledOut
CARD_TerminateForPulledOut: ; 0x02011508
	stmfd sp!, {r3, lr}
	ldr r0, _0201153C ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	beq _02011524
	bl PM_ForceToPowerOff
_02011524:
	mov r0, #1
	mov r1, r0
	bl CARDi_SendtoPxi
	bl MI_StopAllDma
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_0201153C: .word 0x02FFFFA8
	arm_func_end CARD_TerminateForPulledOut

	arm_func_start CARDi_CheckPulledOutCore
CARDi_CheckPulledOutCore: ; 0x02011540
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0201158C ; =0x02FFFC00
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [sp]
	cmp r0, r1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, #0xe
	mov r1, #0x11
	mov r2, #0
	bl CARDi_PulledOutCallback
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0201158C: .word 0x02FFFC00
	arm_func_end CARDi_CheckPulledOutCore

	arm_func_start CARDi_SendtoPxi
CARDi_SendtoPxi: ; 0x02011590
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r1, r7
	mov r0, #0xe
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0xe
	mov r4, #0
_020115BC:
	mov r0, r6
	blx SVC_WaitByLoop
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _020115BC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CARDi_SendtoPxi

	.rodata
	.global CARDiDmaUsingFormer
CARDiDmaUsingFormer:
	.word MIi_CardDmaCopy32
	.word MI_StopDma

	.data
	.global cache_page
	.balign 4, 0
cache_page:
	.byte 0x01, 0x00, 0x00, 0x00
	.global CARDiEnableCacheInvalidationDC
CARDiEnableCacheInvalidationDC:
	.byte 0x01, 0x00, 0x00, 0x00

	.bss
	.global CARDi_EnableFlag
CARDi_EnableFlag:
	.space 0x04
	.global cardi_arg
cardi_arg:
	.space 0x60
	.global cardi_common
cardi_common:
	.space 0x520
	.global CARDiHookChain
CARDiHookChain:
	.space 0x20
	.global CARDi_backup_cache_page_buf
CARDi_backup_cache_page_buf:
	.space 0x100
	.global cardi_rom_base
cardi_rom_base:
	.space 0x04
	.global CARDiEnableCacheInvalidationIC
CARDiEnableCacheInvalidationIC:
	.space 0x04
	.global CARDiDmaReadRegisteredInfo
CARDiDmaReadRegisteredInfo:
	.space 0x04
	.global CARDiReadRomFunction
CARDiReadRomFunction:
	.space 0x04
	.global CARDiDmaReadInfo
CARDiDmaReadInfo:
	.space 0x1C
	.global CARDiOwnSignature
CARDiOwnSignature:
	.space 0x94
	.global CARDi_cache_buf
CARDi_cache_buf:
	.space 0x200
	.global CARDiSlotResetCount
CARDiSlotResetCount:
	.space 0x04
	.global CARDi_IsPulledOutFlag
CARDi_IsPulledOutFlag:
	.space 0x04
	.global CARD_UserCallback
CARD_UserCallback:
	.space 0x04

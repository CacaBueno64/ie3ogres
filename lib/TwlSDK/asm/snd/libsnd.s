
	.include "asm/macros/function.inc"
	.include "libsnd.inc"

	.text
	arm_func_start SND_StopSeq
SND_StopSeq: ; 0x0200B734
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #1
	str r2, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_StopSeq

	arm_func_start SND_PrepareSeq
SND_PrepareSeq: ; 0x0200B754
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r12, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, r12
	mov r0, #2
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_PrepareSeq

	arm_func_start SND_StartPreparedSeq
SND_StartPreparedSeq: ; 0x0200B77C
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #3
	str r2, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_StartPreparedSeq

	arm_func_start SND_SetPlayerVolume
SND_SetPlayerVolume: ; 0x0200B79C
	ldr r12, _0200B7B0 ; =SNDi_SetPlayerParam
	mov r2, r1
	mov r1, #6
	mov r3, #2
	bx r12
_0200B7B0: .word SNDi_SetPlayerParam
	arm_func_end SND_SetPlayerVolume

	arm_func_start SND_SetPlayerChannelPriority
SND_SetPlayerChannelPriority: ; 0x0200B7B4
	ldr r12, _0200B7C8 ; =SNDi_SetPlayerParam
	mov r2, r1
	mov r1, #4
	mov r3, #1
	bx r12
_0200B7C8: .word SNDi_SetPlayerParam
	arm_func_end SND_SetPlayerChannelPriority

	arm_func_start SND_SetTrackPitch
SND_SetTrackPitch: ; 0x0200B7CC
	stmfd sp!, {r3, lr}
	mov r3, r2
	mov r12, #2
	mov r2, #0xc
	str r12, [sp]
	bl SNDi_SetTrackParam
	ldmfd sp!, {r3, pc}
	arm_func_end SND_SetTrackPitch

	arm_func_start SND_SetTrackAllocatableChannel
SND_SetTrackAllocatableChannel: ; 0x0200B7E8
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov r12, #0
	mov r1, r0
	mov r2, lr
	mov r0, #9
	str r12, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_SetTrackAllocatableChannel

	arm_func_start SND_StartTimer
SND_StartTimer: ; 0x0200B810
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r12, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, r12
	mov r0, #0xc
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_StartTimer

	arm_func_start SND_StopTimer
SND_StopTimer: ; 0x0200B838
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r2
	mov r9, r0
	mov r8, r1
	mov r6, r3
	mov r5, r7
	mov r4, #0
	b _0200B870
_0200B858:
	tst r5, #1
	beq _0200B868
	mov r0, r4
	bl SNDi_IncAlarmId
_0200B868:
	add r4, r4, #1
	mov r5, r5, lsr #1
_0200B870:
	cmp r4, #8
	bge _0200B880
	cmp r5, #0
	bne _0200B858
_0200B880:
	mov r1, r9
	mov r2, r8
	mov r3, r7
	mov r0, #0xd
	str r6, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end SND_StopTimer

	arm_func_start SND_SetupCapture
SND_SetupCapture: ; 0x0200B89C
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x1e
	orr r0, r1, r0, lsl #31
	ldr r12, [sp, #8]
	mov r1, r2
	orr r0, r0, r12, lsl #29
	ldr r2, [sp, #0xc]
	mov lr, #0
	orr r0, r0, r2, lsl #28
	ldr r12, [sp, #0x10]
	mov r2, r3
	orr r3, r0, r12, lsl #27
	mov r0, #0x11
	str lr, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_SetupCapture

	arm_func_start SND_SetupAlarm
SND_SetupAlarm: ; 0x0200B8DC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	mov r5, r1
	ldr r2, [sp, #0x18]
	mov r6, r0
	mov r1, r3
	bl SNDi_SetAlarmHandler
	str r0, [sp]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	mov r0, #0x12
	bl PushCommand_impl
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end SND_SetupAlarm

	arm_func_start SND_LockChannel
SND_LockChannel: ; 0x0200B91C
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1a
	str r3, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_LockChannel

	arm_func_start SND_UnlockChannel
SND_UnlockChannel: ; 0x0200B93C
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1b
	str r3, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_UnlockChannel

	arm_func_start SND_SetChannelTimer
SND_SetChannelTimer: ; 0x0200B95C
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x13
	str r3, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_SetChannelTimer

	arm_func_start SND_SetChannelVolume
SND_SetChannelVolume: ; 0x0200B97C
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov r12, #0
	mov r1, r0
	mov r2, lr
	mov r0, #0x14
	str r12, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_SetChannelVolume

	arm_func_start SND_SetChannelPan
SND_SetChannelPan: ; 0x0200B9A4
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x15
	str r3, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_SetChannelPan

	arm_func_start SND_SetupChannelPcm
SND_SetupChannelPcm: ; 0x0200B9C4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, [sp, #0x1c]
	mov r1, r1, lsl #0x18
	orr r4, r1, r3, lsl #26
	ldr r5, [sp, #0x24]
	mov r1, r12, lsl #0x16
	ldr r3, [sp, #0x18]
	ldr r12, [sp, #0x10]
	orr r4, r4, r5, lsl #16
	orr r4, r12, r4
	ldr lr, [sp, #0x20]
	orr r3, r1, r3, lsl #24
	ldr r12, [sp, #0x14]
	orr r1, r0, lr, lsl #16
	orr r3, r12, r3
	mov r0, #0xe
	str r4, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SND_SetupChannelPcm

	arm_func_start SND_SetupChannelPsg
SND_SetupChannelPsg: ; 0x0200BA10
	stmfd sp!, {r3, lr}
	ldr lr, [sp, #8]
	ldr r12, [sp, #0xc]
	str r1, [sp]
	orr r2, r2, r3, lsl #8
	mov r1, r0
	orr r3, r12, lr, lsl #8
	mov r0, #0xf
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_SetupChannelPsg

	arm_func_start SND_SetupChannelNoise
SND_SetupChannelNoise: ; 0x0200BA38
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r12, [sp, #0x10]
	mov r4, r1
	mov lr, #0
	mov r1, r0
	orr r2, r4, r2, lsl #8
	orr r3, r12, r3, lsl #8
	mov r0, #0x10
	str lr, [sp]
	bl PushCommand_impl
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end SND_SetupChannelNoise

	arm_func_start SND_InvalidateBankData
SND_InvalidateBankData: ; 0x0200BA6C
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1f
	str r3, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_InvalidateBankData

	arm_func_start SND_InvalidateWaveData
SND_InvalidateWaveData: ; 0x0200BA8C
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x20
	str r3, [sp]
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_InvalidateWaveData

	arm_func_start SND_SetOutputSelector
SND_SetOutputSelector: ; 0x0200BAAC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r12, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, r12
	mov r0, #0x19
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SND_SetOutputSelector

	arm_func_start SNDi_SetPlayerParam
SNDi_SetPlayerParam: ; 0x0200BAD4
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r12, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, r12
	mov r0, #6
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SNDi_SetPlayerParam

	arm_func_start SNDi_SetTrackParam
SNDi_SetTrackParam: ; 0x0200BAFC
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #8]
	mov lr, r2
	str r3, [sp]
	mov r2, r1
	orr r1, r0, r12, lsl #24
	mov r3, lr
	mov r0, #7
	bl PushCommand_impl
	ldmfd sp!, {r3, pc}
	arm_func_end SNDi_SetTrackParam

	arm_func_start PushCommand_impl
PushCommand_impl: ; 0x0200BB24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl SND_AllocCommand
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r7, [r0, #4]
	str r6, [r0, #8]
	str r5, [r0, #0xc]
	ldr r1, [sp, #0x18]
	str r4, [r0, #0x10]
	str r1, [r0, #0x14]
	bl SND_PushCommand
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end PushCommand_impl

	arm_func_start SND_Init
SND_Init: ; 0x0200BB68
	stmfd sp!, {r3, lr}
	ldr r1, _0200BB98 ; =initialized_02093DC8
	ldr r0, [r1]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0200BB9C ; =sSndMutex
	mov r2, #1
	str r2, [r1]
	bl OS_InitMutex
	bl SND_CommandInit
	bl SND_AlarmInit
	ldmfd sp!, {r3, pc}
_0200BB98: .word initialized_02093DC8
_0200BB9C: .word sSndMutex
	arm_func_end SND_Init

	arm_func_start SNDi_LockMutex
SNDi_LockMutex: ; 0x0200BBA0
	ldr r0, _0200BBAC ; =sSndMutex
	ldr r12, _0200BBB0 ; =OS_LockMutex
	bx r12
_0200BBAC: .word sSndMutex
_0200BBB0: .word OS_LockMutex
	arm_func_end SNDi_LockMutex

	arm_func_start SNDi_UnlockMutex
SNDi_UnlockMutex: ; 0x0200BBB4
	ldr r0, _0200BBC0 ; =sSndMutex
	ldr r12, _0200BBC4 ; =OS_UnlockMutex
	bx r12
_0200BBC0: .word sSndMutex
_0200BBC4: .word OS_UnlockMutex
	arm_func_end SNDi_UnlockMutex

	arm_func_start SND_CommandInit
SND_CommandInit: ; 0x0200BBC8
	stmfd sp!, {r3, r4, r5, lr}
	bl InitPXI
	ldr r5, _0200BC80 ; =sCommandArray
	ldr r0, _0200BC84 ; =sFreeList
	mov r12, #0
	str r5, [r0]
	mov r0, #0x18
	mov r1, r0
	b _0200BC00
_0200BBEC:
	add r3, r12, #1
	mul r2, r12, r1
	mla r4, r3, r0, r5
	mov r12, r3
	str r4, [r5, r2]
_0200BC00:
	cmp r12, #0xff
	blt _0200BBEC
	ldr r0, _0200BC88 ; =0x020950C0
	mov r3, #0
	str r3, [r0, #0x7e8]
	ldr r2, _0200BC8C ; =0x020958A8
	ldr r1, _0200BC84 ; =sFreeList
	mov r5, #1
	str r2, [r1, #0x10]
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	str r3, [r1, #0x1c]
	str r3, [r1, #0x14]
	str r3, [r1, #0x18]
	str r5, [r1, #0x20]
	ldr r0, _0200BC90 ; =sSharedWork
	ldr r4, _0200BC94 ; =SNDi_SharedWork
	str r3, [r1, #4]
	str r0, [r4]
	bl SNDi_InitSharedWork
	mov r0, r5
	bl SND_AllocCommand
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0x1d
	str r1, [r0, #4]
	ldr r1, [r4]
	str r1, [r0, #8]
	bl SND_PushCommand
	mov r0, r5
	bl SND_FlushCommand
	ldmfd sp!, {r3, r4, r5, pc}
_0200BC80: .word sCommandArray
_0200BC84: .word sFreeList
_0200BC88: .word unk_020950C0
_0200BC8C: .word unk_020958A8
_0200BC90: .word sSharedWork
_0200BC94: .word SNDi_SharedWork
	arm_func_end SND_CommandInit

	arm_func_start SND_RecvCommandReply
SND_RecvCommandReply: ; 0x0200BC98
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r6, _0200BD90 ; =sFreeList
	bl OS_DisableInterrupts
	mov r4, r0
	tst r5, #1
	beq _0200BCF4
	bl SNDi_GetFinishedCommandTag
	ldr r1, [r6, #4]
	cmp r1, r0
	bne _0200BD14
	mov r5, #0x32
_0200BCC8:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	bl OS_SpinWaitSysCycles
	bl OS_DisableInterrupts
	mov r4, r0
	bl SNDi_GetFinishedCommandTag
	ldr r1, [r6, #4]
	cmp r1, r0
	beq _0200BCC8
	b _0200BD14
_0200BCF4:
	bl SNDi_GetFinishedCommandTag
	ldr r1, [r6, #4]
	cmp r1, r0
	bne _0200BD14
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0200BD14:
	ldr r2, [r6, #0x14]
	ldr r1, _0200BD94 ; =sWaitingCommandListQueue
	add r0, r2, #1
	ldr r5, [r1, r2, lsl #2]
	cmp r0, #8
	str r0, [r6, #0x14]
	movgt r0, #0
	strgt r0, [r6, #0x14]
	ldr r0, [r5]
	mov r1, r5
	cmp r0, #0
	beq _0200BD54
_0200BD44:
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _0200BD44
_0200BD54:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	strne r5, [r0]
	streq r5, [r6]
	str r1, [r6, #0x10]
	ldr r1, [r6, #0x1c]
	mov r0, r4
	sub r1, r1, #1
	str r1, [r6, #0x1c]
	ldr r1, [r6, #4]
	add r1, r1, #1
	str r1, [r6, #4]
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0200BD90: .word sFreeList
_0200BD94: .word sWaitingCommandListQueue
	arm_func_end SND_RecvCommandReply

	arm_func_start SND_AllocCommand
SND_AllocCommand: ; 0x0200BD98
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl IsCommandAvailable
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl AllocCommand
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	tst r4, #1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl SND_CountWaitingCommand
	cmp r0, #0
	ble _0200BDF8
	mov r4, #0
_0200BDD8:
	mov r0, r4
	bl SND_RecvCommandReply
	cmp r0, #0
	bne _0200BDD8
	bl AllocCommand
	cmp r0, #0
	beq _0200BE00
	ldmfd sp!, {r4, pc}
_0200BDF8:
	mov r0, #1
	bl SND_FlushCommand
_0200BE00:
	bl RequestCommandProc
	mov r4, #1
_0200BE08:
	mov r0, r4
	bl SND_RecvCommandReply
	bl AllocCommand
	cmp r0, #0
	beq _0200BE08
	ldmfd sp!, {r4, pc}
	arm_func_end SND_AllocCommand

	arm_func_start SND_PushCommand
SND_PushCommand: ; 0x0200BE20
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _0200BE54 ; =sFreeList
	ldr r2, [r1, #0xc]
	cmp r2, #0
	streq r4, [r1, #8]
	strne r4, [r2]
	str r4, [r1, #0xc]
	mov r1, #0
	str r1, [r4]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_0200BE54: .word sFreeList
	arm_func_end SND_PushCommand

	arm_func_start SND_FlushCommand
SND_FlushCommand: ; 0x0200BE58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	mov r5, #0
	bl OS_DisableInterrupts
	ldr r9, _0200BFE8 ; =sFreeList
	mov r7, r0
	ldr r1, [r9, #8]
	cmp r1, #0
	bne _0200BE88
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200BE88:
	ldr r1, [r9, #0x1c]
	cmp r1, #8
	blt _0200BEDC
	tst r8, #1
	bne _0200BEA8
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200BEA8:
	mov r4, #1
_0200BEAC:
	mov r0, r4
	bl SND_RecvCommandReply
	ldr r0, [r9, #0x1c]
	cmp r0, #8
	bge _0200BEAC
	ldr r0, [r9, #8]
	cmp r0, #0
	bne _0200BEDC
	mov r0, r7
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200BEDC:
	ldr r6, _0200BFEC ; =sCommandArray
	mov r1, #0x1800
	mov r0, r6
	bl DC_FlushRange
	ldr r1, [r9, #8]
	mov r2, r5
	mov r0, #7
	bl PXI_SendWordByFifo
	cmp r0, #0
	bge _0200BF8C
	tst r8, #1
	bne _0200BF1C
	mov r0, r7
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200BF1C:
	mov r10, #7
	mov r4, #0x1800
	b _0200BF68
_0200BF28:
	mov r0, r7
	bl OS_RestoreInterrupts
	mov r0, r5
	bl SND_RecvCommandReply
	bl OS_DisableInterrupts
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl DC_FlushRange
	ldr r0, [r9, #8]
	cmp r0, #0
	bne _0200BF68
	mov r0, r7
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200BF68:
	ldr r0, [r9, #0x1c]
	cmp r0, #8
	bge _0200BF28
	ldr r1, [r9, #8]
	mov r0, r10
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _0200BF28
_0200BF8C:
	ldr r2, [r9, #0x18]
	ldr r3, [r9, #8]
	ldr r1, _0200BFF0 ; =sWaitingCommandListQueue
	add r0, r2, #1
	str r3, [r1, r2, lsl #2]
	str r0, [r9, #0x18]
	cmp r0, #8
	strgt r5, [r9, #0x18]
	str r5, [r9, #8]
	str r5, [r9, #0xc]
	ldr r1, [r9, #0x1c]
	mov r0, r7
	add r1, r1, #1
	str r1, [r9, #0x1c]
	ldr r1, [r9, #0x20]
	add r1, r1, #1
	str r1, [r9, #0x20]
	bl OS_RestoreInterrupts
	tst r8, #2
	beq _0200BFE0
	bl RequestCommandProc
_0200BFE0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200BFE8: .word sFreeList
_0200BFEC: .word sCommandArray
_0200BFF0: .word sWaitingCommandListQueue
	arm_func_end SND_FlushCommand

	arm_func_start SND_WaitForCommandProc
SND_WaitForCommandProc: ; 0x0200BFF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
_0200C00C:
	mov r0, r4
	bl SND_RecvCommandReply
	cmp r0, #0
	bne _0200C00C
	mov r0, r5
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl RequestCommandProc
	mov r0, r5
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #1
_0200C044:
	mov r0, r4
	bl SND_RecvCommandReply
	mov r0, r5
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	beq _0200C044
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SND_WaitForCommandProc

	arm_func_start SND_GetCurrentCommandTag
SND_GetCurrentCommandTag: ; 0x0200C060
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _0200C088 ; =sFreeList
	ldr r2, [r1, #8]
	cmp r2, #0
	ldreq r4, [r1, #4]
	ldrne r4, [r1, #0x20]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0200C088: .word sFreeList
	arm_func_end SND_GetCurrentCommandTag

	arm_func_start SND_IsFinishedCommandTag
SND_IsFinishedCommandTag: ; 0x0200C08C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _0200C0D8 ; =sFreeList
	ldr r1, [r1, #4]
	cmp r4, r1
	bls _0200C0BC
	sub r1, r4, r1
	cmp r1, #0x80000000
	movlo r4, #0
	movhs r4, #1
	b _0200C0CC
_0200C0BC:
	sub r1, r1, r4
	mov r4, #1
	cmp r1, #0x80000000
	movhs r4, #0
_0200C0CC:
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0200C0D8: .word sFreeList
	arm_func_end SND_IsFinishedCommandTag

	arm_func_start SND_CountFreeCommand
SND_CountFreeCommand: ; 0x0200C0DC
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _0200C114 ; =sFreeList
	mov r4, #0
	ldr r1, [r1]
	cmp r1, #0
	beq _0200C108
_0200C0F8:
	ldr r1, [r1]
	add r4, r4, #1
	cmp r1, #0
	bne _0200C0F8
_0200C108:
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0200C114: .word sFreeList
	arm_func_end SND_CountFreeCommand

	arm_func_start SND_CountReservedCommand
SND_CountReservedCommand: ; 0x0200C118
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _0200C150 ; =sFreeList
	mov r4, #0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0200C144
_0200C134:
	ldr r1, [r1]
	add r4, r4, #1
	cmp r1, #0
	bne _0200C134
_0200C144:
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0200C150: .word sFreeList
	arm_func_end SND_CountReservedCommand

	arm_func_start SND_CountWaitingCommand
SND_CountWaitingCommand: ; 0x0200C154
	stmfd sp!, {r4, lr}
	bl SND_CountFreeCommand
	mov r4, r0
	bl SND_CountReservedCommand
	rsb r1, r4, #0x100
	sub r0, r1, r0
	ldmfd sp!, {r4, pc}
	arm_func_end SND_CountWaitingCommand

	arm_func_start PxiFifoCallback
PxiFifoCallback: ; 0x0200C170
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, r5
	bl SNDi_CallAlarmHandler
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end PxiFifoCallback

	arm_func_start InitPXI
InitPXI: ; 0x0200C194
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #7
	ldr r1, _0200C1F4 ; =PxiFifoCallback
	mov r0, r4
	bl PXI_SetFifoRecvCallback
	bl IsCommandAvailable
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, r4
	mov r6, #0x32
	mov r4, #1
_0200C1D4:
	mov r0, r6
	bl OS_SpinWaitSysCycles
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0200C1D4
	ldmfd sp!, {r4, r5, r6, pc}
_0200C1F4: .word PxiFifoCallback
	arm_func_end InitPXI

	arm_func_start RequestCommandProc
RequestCommandProc: ; 0x0200C1F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #7
	mov r4, #0
_0200C204:
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _0200C204
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end RequestCommandProc

	arm_func_start AllocCommand
AllocCommand: ; 0x0200C220
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _0200C264 ; =sFreeList
	ldr r4, [r1]
	cmp r4, #0
	bne _0200C244
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0200C244:
	ldr r2, [r4]
	str r2, [r1]
	cmp r2, #0
	moveq r2, #0
	streq r2, [r1, #0x10]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0200C264: .word sFreeList
	arm_func_end AllocCommand

	arm_func_start IsCommandAvailable
IsCommandAvailable: ; 0x0200C268
	stmfd sp!, {r4, lr}
	bl OS_IsRunOnEmulator
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl OS_DisableInterrupts
	ldr r1, _0200C2A4 ; =0x04FFF200
	mov r2, #0x10
	str r2, [r1]
	ldr r4, [r1]
	bl OS_RestoreInterrupts
	mov r0, #1
	cmp r4, #0
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0200C2A4: .word 0x04FFF200
	arm_func_end IsCommandAvailable

	arm_func_start SND_AlarmInit
SND_AlarmInit: ; 0x0200C2A8
	mov r12, #0
	ldr r3, _0200C2DC ; =sCallbackTable
	mov r1, r12
	mov r0, #0xc
_0200C2B8:
	mul r2, r12, r0
	str r1, [r3, r2]
	add r2, r3, r2
	str r1, [r2, #4]
	add r12, r12, #1
	strb r1, [r2, #8]
	cmp r12, #8
	blt _0200C2B8
	bx lr
_0200C2DC: .word sCallbackTable
	arm_func_end SND_AlarmInit

	arm_func_start SNDi_IncAlarmId
SNDi_IncAlarmId: ; 0x0200C2E0
	ldr r2, _0200C2FC ; =sCallbackTable
	mov r1, #0xc
	mla r1, r0, r1, r2
	ldrb r0, [r1, #8]
	add r0, r0, #1
	strb r0, [r1, #8]
	bx lr
_0200C2FC: .word sCallbackTable
	arm_func_end SNDi_IncAlarmId

	arm_func_start SNDi_SetAlarmHandler
SNDi_SetAlarmHandler: ; 0x0200C300
	mov r3, #0xc
	mul r3, r0, r3
	ldr r0, _0200C32C ; =sCallbackTable
	str r1, [r0, r3]
	add r1, r0, r3
	str r2, [r1, #4]
	ldrb r0, [r1, #8]
	add r0, r0, #1
	strb r0, [r1, #8]
	and r0, r0, #0xff
	bx lr
_0200C32C: .word sCallbackTable
	arm_func_end SNDi_SetAlarmHandler

	arm_func_start SNDi_CallAlarmHandler
SNDi_CallAlarmHandler: ; 0x0200C330
	stmfd sp!, {r3, lr}
	ldr r3, _0200C370 ; =sCallbackTable
	and r2, r0, #0xff
	mov r1, #0xc
	mla r3, r2, r1, r3
	mov r1, r0, asr #8
	ldrb r0, [r3, #8]
	and r1, r1, #0xff
	cmp r1, r0
	ldmnefd sp!, {r3, pc}
	ldr r1, [r3]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r3, #4]
	blx r1
	ldmfd sp!, {r3, pc}
_0200C370: .word sCallbackTable
	arm_func_end SNDi_CallAlarmHandler

	arm_func_start SND_GetPlayerStatus
SND_GetPlayerStatus: ; 0x0200C374
	stmfd sp!, {r4, lr}
	ldr r4, _0200C398 ; =SNDi_SharedWork
	mov r1, #4
	ldr r0, [r4]
	add r0, r0, #4
	bl DC_InvalidateRange
	ldr r0, [r4]
	ldr r0, [r0, #4]
	ldmfd sp!, {r4, pc}
_0200C398: .word SNDi_SharedWork
	arm_func_end SND_GetPlayerStatus

	arm_func_start SND_GetChannelStatus
SND_GetChannelStatus: ; 0x0200C39C
	stmfd sp!, {r4, lr}
	ldr r4, _0200C3C0 ; =SNDi_SharedWork
	mov r1, #2
	ldr r0, [r4]
	add r0, r0, #8
	bl DC_InvalidateRange
	ldr r0, [r4]
	ldrh r0, [r0, #8]
	ldmfd sp!, {r4, pc}
_0200C3C0: .word SNDi_SharedWork
	arm_func_end SND_GetChannelStatus

	arm_func_start SNDi_GetFinishedCommandTag
SNDi_GetFinishedCommandTag: ; 0x0200C3C4
	stmfd sp!, {r4, lr}
	ldr r4, _0200C3E4 ; =SNDi_SharedWork
	mov r1, #4
	ldr r0, [r4]
	bl DC_InvalidateRange
	ldr r0, [r4]
	ldr r0, [r0]
	ldmfd sp!, {r4, pc}
_0200C3E4: .word SNDi_SharedWork
	arm_func_end SNDi_GetFinishedCommandTag

	arm_func_start SNDi_InitSharedWork
SNDi_InitSharedWork: ; 0x0200C3E8
	stmfd sp!, {r3, r4, r5, lr}
	mov lr, #0
	str lr, [r0, #4]
	strh lr, [r0, #8]
	strh lr, [r0, #0xa]
	str lr, [r0]
	mvn r3, #0
	mov r12, lr
	mov r1, #0x24
_0200C40C:
	mla r5, lr, r1, r0
	mov r4, r12
	str r12, [r5, #0x40]
_0200C418:
	add r2, r5, r4, lsl #1
	add r4, r4, #1
	strh r3, [r2, #0x20]
	cmp r4, #0x10
	blt _0200C418
	add lr, lr, #1
	cmp lr, #0x10
	blt _0200C40C
	mov r3, #0
	mvn r2, #0
_0200C440:
	add r1, r0, r3, lsl #1
	add r1, r1, #0x200
	add r3, r3, #1
	strh r2, [r1, #0x60]
	cmp r3, #0x10
	blt _0200C440
	mov r1, #0x280
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SNDi_InitSharedWork

	arm_func_start SND_CalcChannelVolume
SND_CalcChannelVolume: ; 0x0200C464
	ldr r1, _0200C4CC ; =0xFFFFFD2D
	cmp r0, r1
	movlt r0, r1
	blt _0200C47C
	cmp r0, #0
	movgt r0, #0
_0200C47C:
	add r1, r0, #0xd3
	mvn r2, #0xef
	cmp r0, r2
	ldr r3, _0200C4D0 ; =VolumeTable
	add r1, r1, #0x200
	ldrb r3, [r3, r1]
	movlt r0, #3
	blt _0200C4BC
	add r1, r2, #0x78
	cmp r0, r1
	movlt r0, #2
	blt _0200C4BC
	add r1, r2, #0xb4
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
_0200C4BC:
	orr r0, r3, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_0200C4CC: .word 0xFFFFFD2D
_0200C4D0: .word VolumeTable
	arm_func_end SND_CalcChannelVolume

	arm_func_start SND_AssignWaveArc
SND_AssignWaveArc: ; 0x0200C4D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl SNDi_LockMutex
	add r3, r6, r5, lsl #3
	ldr r2, [r3, #0x18]
	cmp r2, #0
	beq _0200C564
	cmp r4, r2
	bne _0200C508
	bl SNDi_UnlockMutex
	ldmfd sp!, {r4, r5, r6, pc}
_0200C508:
	add r1, r6, #0x18
	ldr r0, [r2, #0x18]
	add r12, r1, r5, lsl #3
	cmp r12, r0
	bne _0200C530
	ldr r0, [r3, #0x1c]
	mov r1, #0x3c
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x18]
	b _0200C560
_0200C530:
	cmp r0, #0
	beq _0200C550
_0200C538:
	ldr r1, [r0, #4]
	cmp r12, r1
	beq _0200C550
	mov r0, r1
	cmp r1, #0
	bne _0200C538
_0200C550:
	add r1, r6, r5, lsl #3
	ldr r2, [r1, #0x1c]
	mov r1, #8
	str r2, [r0, #4]
_0200C560:
	bl DC_StoreRange
_0200C564:
	add r0, r6, #0x18
	ldr r1, [r4, #0x18]
	add r0, r0, r5, lsl #3
	str r0, [r4, #0x18]
	add r0, r6, r5, lsl #3
	str r1, [r0, #0x1c]
	str r4, [r0, #0x18]
	bl SNDi_UnlockMutex
	mov r5, #0x3c
	mov r0, r6
	mov r1, r5
	bl DC_StoreRange
	mov r0, r4
	mov r1, r5
	bl DC_StoreRange
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SND_AssignWaveArc

	arm_func_start SND_DestroyBank
SND_DestroyBank: ; 0x0200C5A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	bl SNDi_LockMutex
	mov r6, #0
	add r5, r7, #0x18
	mov r8, #8
	mov r4, #0x3c
_0200C5C0:
	add r1, r7, r6, lsl #3
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _0200C628
	ldr r3, [r0, #0x18]
	add r2, r5, r6, lsl #3
	cmp r2, r3
	bne _0200C5F0
	ldr r2, [r1, #0x1c]
	mov r1, r4
	str r2, [r0, #0x18]
	b _0200C624
_0200C5F0:
	cmp r3, #0
	beq _0200C610
_0200C5F8:
	ldr r0, [r3, #4]
	cmp r2, r0
	beq _0200C610
	mov r3, r0
	cmp r0, #0
	bne _0200C5F8
_0200C610:
	add r0, r7, r6, lsl #3
	ldr r2, [r0, #0x1c]
	mov r0, r3
	mov r1, r8
	str r2, [r3, #4]
_0200C624:
	bl DC_StoreRange
_0200C628:
	add r6, r6, #1
	cmp r6, #4
	blt _0200C5C0
	bl SNDi_UnlockMutex
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end SND_DestroyBank

	arm_func_start SND_DestroyWaveArc
SND_DestroyWaveArc: ; 0x0200C63C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl SNDi_LockMutex
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0200C67C
	mov r5, #0
	mov r4, #8
_0200C65C:
	ldr r6, [r0, #4]
	mov r1, r4
	str r5, [r0]
	str r5, [r0, #4]
	bl DC_StoreRange
	mov r0, r6
	cmp r6, #0
	bne _0200C65C
_0200C67C:
	bl SNDi_UnlockMutex
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SND_DestroyWaveArc

	arm_func_start SND_GetFirstInstDataPos
SND_GetFirstInstDataPos: ; 0x0200C684
	sub sp, sp, #8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [r0]
	str r1, [r0, #4]
	add sp, sp, #8
	bx lr
	arm_func_end SND_GetFirstInstDataPos

	arm_func_start SND_GetNextInstData
SND_GetNextInstData: ; 0x0200C6A4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r2]
	ldr r3, [r0, #0x38]
	cmp r4, r3
	bhs _0200C848
	mov r12, #0
_0200C6BC:
	add r3, r0, r4, lsl #2
	ldr r4, [r3, #0x3c]
	and r3, r4, #0xff
	strb r4, [r1]
	cmp r3, #0x10
	mov r4, r4, lsr #8
	bgt _0200C704
	cmp r3, #0x10
	bge _0200C750
	cmp r3, #5
	addls pc, pc, r3, lsl #2
	b _0200C830
_0200C6EC: ; jump table
	b _0200C830 ; case 0
	b _0200C710 ; case 1
	b _0200C710 ; case 2
	b _0200C710 ; case 3
	b _0200C710 ; case 4
	b _0200C710 ; case 5
_0200C704:
	cmp r3, #0x11
	beq _0200C7C4
	b _0200C830
_0200C710:
	add lr, r0, r4
	ldrh r12, [r0, r4]
	ldrh r5, [lr, #2]
	ldrh r4, [lr, #4]
	ldrh r3, [lr, #6]
	ldrh r0, [lr, #8]
	strh r12, [r1, #2]
	strh r5, [r1, #4]
	strh r0, [r1, #0xa]
	strh r4, [r1, #6]
	strh r3, [r1, #8]
	ldr r1, [r2]
	mov r0, #1
	add r1, r1, #1
	str r1, [r2]
	ldmfd sp!, {r3, r4, r5, pc}
_0200C750:
	add lr, r0, r4
	b _0200C7A4
_0200C758:
	mov r0, #0xc
	mla r0, r5, r0, lr
	ldrh lr, [r0, #2]
	ldrh r12, [r0, #4]
	ldrh r5, [r0, #6]
	ldrh r4, [r0, #8]
	ldrh r3, [r0, #0xa]
	ldrh r0, [r0, #0xc]
	strh lr, [r1]
	strh r12, [r1, #2]
	strh r0, [r1, #0xa]
	strh r5, [r1, #4]
	strh r4, [r1, #6]
	strh r3, [r1, #8]
	ldr r1, [r2, #4]
	mov r0, #1
	add r1, r1, #1
	str r1, [r2, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0200C7A4:
	ldrb r4, [lr, #1]
	ldrb r3, [lr]
	ldr r5, [r2, #4]
	sub r3, r4, r3
	add r3, r3, #1
	cmp r5, r3
	blo _0200C758
	b _0200C830
_0200C7C4:
	add r5, r0, r4
	b _0200C824
_0200C7CC:
	ldrb r4, [r5, r3]
	cmp r4, #0
	beq _0200C830
	mov r0, #0xc
	mla r0, r3, r0, r5
	ldrh r5, [r0, #8]
	ldrh r4, [r0, #0xa]
	ldrh lr, [r0, #0xc]
	ldrh r12, [r0, #0xe]
	ldrh r3, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	strh r5, [r1]
	strh r4, [r1, #2]
	strh r0, [r1, #0xa]
	strh lr, [r1, #4]
	strh r12, [r1, #6]
	strh r3, [r1, #8]
	ldr r1, [r2, #4]
	mov r0, #1
	add r1, r1, #1
	str r1, [r2, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0200C824:
	ldr r3, [r2, #4]
	cmp r3, #8
	blo _0200C7CC
_0200C830:
	ldr lr, [r2]
	ldr r3, [r0, #0x38]
	add r4, lr, #1
	stmia r2, {r4, r12}
	cmp r4, r3
	blo _0200C6BC
_0200C848:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SND_GetNextInstData

	arm_func_start SND_GetWaveDataCount
SND_GetWaveDataCount: ; 0x0200C850
	ldr r0, [r0, #0x38]
	bx lr
	arm_func_end SND_GetWaveDataCount

	arm_func_start SND_SetWaveDataAddress
SND_SetWaveDataAddress: ; 0x0200C858
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl SNDi_LockMutex
	add r0, r6, #0x3c
	add r2, r6, r5, lsl #2
	add r0, r0, r5, lsl #2
	mov r1, #4
	str r4, [r2, #0x3c]
	bl DC_StoreRange
	bl SNDi_UnlockMutex
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SND_SetWaveDataAddress

	arm_func_start SND_GetWaveDataAddress
SND_GetWaveDataAddress: ; 0x0200C88C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl SNDi_LockMutex
	add r0, r5, r4, lsl #2
	ldr r4, [r0, #0x3c]
	cmp r4, #0
	beq _0200C8B8
	cmp r4, #0x2000000
	addlo r4, r5, r4
	b _0200C8BC
_0200C8B8:
	mov r4, #0
_0200C8BC:
	bl SNDi_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SND_GetWaveDataAddress

	.rodata
	.global SNDi_DecibelTable
SNDi_DecibelTable:
	.byte 0x00, 0x80, 0x5B, 0xFE, 0x97, 0xFE, 0xBB, 0xFE, 0xD4, 0xFE, 0xE7, 0xFE, 0xF7, 0xFE, 0x04, 0xFF
	.byte 0x10, 0xFF, 0x1A, 0xFF, 0x23, 0xFF, 0x2C, 0xFF, 0x33, 0xFF, 0x3A, 0xFF, 0x40, 0xFF, 0x46, 0xFF
	.byte 0x4C, 0xFF, 0x51, 0xFF, 0x56, 0xFF, 0x5B, 0xFF, 0x5F, 0xFF, 0x64, 0xFF, 0x68, 0xFF, 0x6C, 0xFF
	.byte 0x6F, 0xFF, 0x73, 0xFF, 0x76, 0xFF, 0x7A, 0xFF, 0x7D, 0xFF, 0x80, 0xFF, 0x83, 0xFF, 0x86, 0xFF
	.byte 0x88, 0xFF, 0x8B, 0xFF, 0x8E, 0xFF, 0x90, 0xFF, 0x92, 0xFF, 0x95, 0xFF, 0x97, 0xFF, 0x99, 0xFF
	.byte 0x9C, 0xFF, 0x9E, 0xFF, 0xA0, 0xFF, 0xA2, 0xFF, 0xA4, 0xFF, 0xA6, 0xFF, 0xA8, 0xFF, 0xAA, 0xFF
	.byte 0xAB, 0xFF, 0xAD, 0xFF, 0xAF, 0xFF, 0xB1, 0xFF, 0xB2, 0xFF, 0xB4, 0xFF, 0xB6, 0xFF, 0xB7, 0xFF
	.byte 0xB9, 0xFF, 0xBA, 0xFF, 0xBC, 0xFF, 0xBD, 0xFF, 0xBF, 0xFF, 0xC0, 0xFF, 0xC2, 0xFF, 0xC3, 0xFF
	.byte 0xC4, 0xFF, 0xC6, 0xFF, 0xC7, 0xFF, 0xC8, 0xFF, 0xCA, 0xFF, 0xCB, 0xFF, 0xCC, 0xFF, 0xCD, 0xFF
	.byte 0xCF, 0xFF, 0xD0, 0xFF, 0xD1, 0xFF, 0xD2, 0xFF, 0xD3, 0xFF, 0xD5, 0xFF, 0xD6, 0xFF, 0xD7, 0xFF
	.byte 0xD8, 0xFF, 0xD9, 0xFF, 0xDA, 0xFF, 0xDB, 0xFF, 0xDC, 0xFF, 0xDD, 0xFF, 0xDE, 0xFF, 0xDF, 0xFF
	.byte 0xE0, 0xFF, 0xE1, 0xFF, 0xE2, 0xFF, 0xE3, 0xFF, 0xE4, 0xFF, 0xE5, 0xFF, 0xE6, 0xFF, 0xE7, 0xFF
	.byte 0xE8, 0xFF, 0xE9, 0xFF, 0xE9, 0xFF, 0xEA, 0xFF, 0xEB, 0xFF, 0xEC, 0xFF, 0xED, 0xFF, 0xEE, 0xFF
	.byte 0xEF, 0xFF, 0xEF, 0xFF, 0xF0, 0xFF, 0xF1, 0xFF, 0xF2, 0xFF, 0xF3, 0xFF, 0xF4, 0xFF, 0xF4, 0xFF
	.byte 0xF5, 0xFF, 0xF6, 0xFF, 0xF7, 0xFF, 0xF7, 0xFF, 0xF8, 0xFF, 0xF9, 0xFF, 0xFA, 0xFF, 0xFA, 0xFF
	.byte 0xFB, 0xFF, 0xFC, 0xFF, 0xFD, 0xFF, 0xFD, 0xFF, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00
	.global VolumeTable
VolumeTable:
	.byte 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
	.byte 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
	.byte 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03
	.byte 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03
	.byte 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04
	.byte 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04
	.byte 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05
	.byte 0x05, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06
	.byte 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x08, 0x08, 0x08, 0x08
	.byte 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
	.byte 0x09, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B
	.byte 0x0B, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x0E
	.byte 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x11, 0x11, 0x11, 0x11, 0x11, 0x12, 0x12, 0x12, 0x12, 0x12, 0x13, 0x13, 0x13, 0x13, 0x14
	.byte 0x14, 0x14, 0x14, 0x14, 0x15, 0x15, 0x15, 0x15, 0x16, 0x16, 0x16, 0x16, 0x17, 0x17, 0x17, 0x18
	.byte 0x18, 0x18, 0x18, 0x19, 0x19, 0x19, 0x19, 0x1A, 0x1A, 0x1A, 0x1B, 0x1B, 0x1B, 0x1C, 0x1C, 0x1C
	.byte 0x1D, 0x1D, 0x1D, 0x1E, 0x1E, 0x1E, 0x1F, 0x1F, 0x1F, 0x20, 0x20, 0x20, 0x21, 0x21, 0x22, 0x22
	.byte 0x22, 0x23, 0x23, 0x24, 0x24, 0x24, 0x25, 0x25, 0x26, 0x26, 0x27, 0x27, 0x27, 0x28, 0x28, 0x29
	.byte 0x29, 0x2A, 0x2A, 0x2B, 0x2B, 0x2C, 0x2C, 0x2D, 0x2D, 0x2E, 0x2E, 0x2F, 0x2F, 0x30, 0x31, 0x31
	.byte 0x32, 0x32, 0x33, 0x33, 0x34, 0x35, 0x35, 0x36, 0x36, 0x37, 0x38, 0x38, 0x39, 0x3A, 0x3A, 0x3B
	.byte 0x3C, 0x3C, 0x3D, 0x3E, 0x3F, 0x3F, 0x40, 0x41, 0x42, 0x42, 0x43, 0x44, 0x45, 0x45, 0x46, 0x47
	.byte 0x48, 0x49, 0x4A, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x52, 0x53, 0x54, 0x55
	.byte 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x67
	.byte 0x68, 0x69, 0x6A, 0x6B, 0x6D, 0x6E, 0x6F, 0x71, 0x72, 0x73, 0x75, 0x76, 0x77, 0x79, 0x7A, 0x7B
	.byte 0x7D, 0x7E, 0x7F, 0x20, 0x21, 0x21, 0x21, 0x22, 0x22, 0x23, 0x23, 0x23, 0x24, 0x24, 0x25, 0x25
	.byte 0x26, 0x26, 0x26, 0x27, 0x27, 0x28, 0x28, 0x29, 0x29, 0x2A, 0x2A, 0x2B, 0x2B, 0x2C, 0x2C, 0x2D
	.byte 0x2D, 0x2E, 0x2E, 0x2F, 0x2F, 0x30, 0x30, 0x31, 0x31, 0x32, 0x33, 0x33, 0x34, 0x34, 0x35, 0x36
	.byte 0x36, 0x37, 0x37, 0x38, 0x39, 0x39, 0x3A, 0x3B, 0x3B, 0x3C, 0x3D, 0x3E, 0x3E, 0x3F, 0x40, 0x40
	.byte 0x41, 0x42, 0x43, 0x43, 0x44, 0x45, 0x46, 0x47, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4D
	.byte 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D
	.byte 0x5E, 0x5F, 0x60, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6F, 0x70
	.byte 0x71, 0x73, 0x74, 0x75, 0x77, 0x78, 0x79, 0x7B, 0x7C, 0x7E, 0x7E, 0x40, 0x41, 0x42, 0x43, 0x43
	.byte 0x44, 0x45, 0x46, 0x47, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51
	.byte 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61
	.byte 0x62, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6B, 0x6C, 0x6D, 0x6E, 0x70, 0x71, 0x72, 0x74, 0x75
	.byte 0x76, 0x78, 0x79, 0x7B, 0x7C, 0x7D, 0x7E, 0x40, 0x41, 0x42, 0x42, 0x43, 0x44, 0x45, 0x46, 0x46
	.byte 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55
	.byte 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x65, 0x66
	.byte 0x67, 0x68, 0x69, 0x6A, 0x6C, 0x6D, 0x6E, 0x6F, 0x71, 0x72, 0x73, 0x75, 0x76, 0x77, 0x79, 0x7A
	.byte 0x7C, 0x7D, 0x7E, 0x7F

	.bss
	.global initialized_02093DC8
initialized_02093DC8:
	.space 0x04
	.global sSndMutex
sSndMutex:
	.space 0x18
	.global sFreeList
sFreeList:
	.space 0x04
	.global sFinishedTag
sFinishedTag:
	.space 0x04
	.global sReserveList
sReserveList:
	.space 0x04
	.global sReserveListEnd
sReserveListEnd:
	.space 0x04
	.global sFreeListEnd
sFreeListEnd:
	.space 0x04
	.global sWaitingCommandListQueueRead
sWaitingCommandListQueueRead:
	.space 0x04
	.global sWaitingCommandListQueueWrite
sWaitingCommandListQueueWrite:
	.space 0x04
	.global sWaitingCommandListCount
sWaitingCommandListCount:
	.space 0x04
	.global sCurrentTag
sCurrentTag:
	.space 0x04
	.global sWaitingCommandListQueue
sWaitingCommandListQueue:
	.space 0x38
	.global sSharedWork
sSharedWork:
	.space 0x280
	.global sCommandArray
sCommandArray:
	.space 0x1000
	.global unk_020950C0
unk_020950C0:
	.space 0x7E8
	.global unk_020958A8
unk_020958A8:
	.space 0x18
	.global sCallbackTable
sCallbackTable:
	.space 0x60
	.global SNDi_SharedWork
SNDi_SharedWork:
	.space 0x04

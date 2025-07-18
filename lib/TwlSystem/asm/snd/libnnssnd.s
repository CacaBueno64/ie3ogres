
	.include "asm/macros/function.inc"
	.include "libnnssnd.inc"

	.text
	arm_func_start NNS_SndInit
NNS_SndInit: ; 0x0201A858
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0201A8C0 ; =sCurDriverInfo
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r6, #1
	str r6, [r4, #0xc]
	bl SND_Init
	ldr r0, _0201A8C4 ; =BeginSleep
	mov r5, #0
	str r0, [r4, #0x10]
	ldr r0, _0201A8C8 ; =EndSleep
	str r5, [r4, #0x14]
	str r0, [r4, #0x20]
	ldr r0, _0201A8CC ; =sPreSleepCallback
	str r5, [r4, #0x24]
	bl PM_PrependPreSleepCallback
	ldr r0, _0201A8D0 ; =sPostSleepCallback
	bl PM_AppendPostSleepCallback
	bl NNSi_SndInitResourceMgr
	bl NNSi_SndCaptureInit
	bl NNSi_SndPlayerInit
	sub r0, r5, #1
	strb r0, [r4]
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_0201A8C0: .word sCurDriverInfo
_0201A8C4: .word BeginSleep
_0201A8C8: .word EndSleep
_0201A8CC: .word sPreSleepCallback
_0201A8D0: .word sPostSleepCallback
	arm_func_end NNS_SndInit

	arm_func_start NNS_SndMain
NNS_SndMain: ; 0x0201A8D4
	stmfd sp!, {r4, lr}
	mov r4, #0
_0201A8DC:
	mov r0, r4
	bl SND_RecvCommandReply
	cmp r0, #0
	bne _0201A8DC
	bl NNSi_SndPlayerMain
	bl NNSi_SndCaptureMain
	bl NNSi_SndArcStrmMain
	mov r0, r4
	bl SND_FlushCommand
	ldmfd sp!, {r4, pc}
	arm_func_end NNS_SndMain

	arm_func_start BeginSleep
BeginSleep: ; 0x0201A904
	stmfd sp!, {r4, lr}
	bl NNSi_SndCaptureBeginSleep
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl SND_StopTimer
	bl SND_GetCurrentCommandTag
	mov r4, r0
	mov r0, #1
	bl SND_FlushCommand
	mov r0, r4
	bl SND_WaitForCommandProc
	ldmfd sp!, {r4, pc}
	arm_func_end BeginSleep

	arm_func_start EndSleep
EndSleep: ; 0x0201A93C
	ldr r12, _0201A944 ; =NNSi_SndCaptureEndSleep
	bx r12
_0201A944: .word NNSi_SndCaptureEndSleep
	arm_func_end EndSleep

	arm_func_start NNS_SndUnlockChannel
NNS_SndUnlockChannel: ; 0x0201A948
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl SND_UnlockChannel
	ldr r0, _0201A974 ; =sCaptureLock
	mvn r1, r4
	ldr r2, [r0, #8]
	and r1, r2, r1
	str r1, [r0, #8]
	ldmfd sp!, {r4, pc}
_0201A974: .word sCaptureLock
	arm_func_end NNS_SndUnlockChannel

	arm_func_start NNS_SndUnlockCapture
NNS_SndUnlockCapture: ; 0x0201A978
	ldr r1, _0201A990 ; =sCaptureLock
	mvn r0, r0
	ldr r2, [r1]
	and r0, r2, r0
	str r0, [r1]
	bx lr
_0201A990: .word sCaptureLock
	arm_func_end NNS_SndUnlockCapture

	arm_func_start NNS_SndFreeAlarm
NNS_SndFreeAlarm: ; 0x0201A994
	ldr r1, _0201A9B0 ; =sCaptureLock
	mov r2, #1
	mvn r0, r2, lsl r0
	ldr r2, [r1, #4]
	and r0, r2, r0
	str r0, [r1, #4]
	bx lr
_0201A9B0: .word sCaptureLock
	arm_func_end NNS_SndFreeAlarm

	arm_func_start NNSi_SndInitResourceMgr
NNSi_SndInitResourceMgr: ; 0x0201A9B4
	ldr r0, _0201A9CC ; =sCaptureLock
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
_0201A9CC: .word sCaptureLock
	arm_func_end NNSi_SndInitResourceMgr

	arm_func_start NNS_SndPlayerSetPlayerVolume
NNS_SndPlayerSetPlayerVolume: ; 0x0201A9D0
	mov r2, #0x24
	mul r2, r0, r2
	ldr r0, _0201A9E4 ; =0x02097C50
	strb r1, [r0, r2]
	bx lr
_0201A9E4: .word unk_02097C50
	arm_func_end NNS_SndPlayerSetPlayerVolume

	arm_func_start NNS_SndPlayerSetPlayableSeqCount
NNS_SndPlayerSetPlayableSeqCount: ; 0x0201A9E8
	mov r2, #0x24
	mul r2, r0, r2
	mov r0, r1, lsl #0x10
	ldr r1, _0201AA04 ; =0x02097C48
	mov r0, r0, lsr #0x10
	str r0, [r1, r2]
	bx lr
_0201AA04: .word unk_02097C48
	arm_func_end NNS_SndPlayerSetPlayableSeqCount

	arm_func_start NNS_SndPlayerSetAllocatableChannel
NNS_SndPlayerSetAllocatableChannel: ; 0x0201AA08
	mov r2, #0x24
	mul r2, r0, r2
	ldr r0, _0201AA1C ; =0x02097C4C
	str r1, [r0, r2]
	bx lr
_0201AA1C: .word unk_02097C4C
	arm_func_end NNS_SndPlayerSetAllocatableChannel

	arm_func_start NNS_SndPlayerCreateHeap
NNS_SndPlayerCreateHeap: ; 0x0201AA20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r6, r2
	mov r7, r0
	mov r0, r1
	ldr r2, _0201AA9C ; =PlayerHeapDisposeCallback
	mov r3, r5
	add r1, r6, #0x14
	str r5, [sp]
	bl NNS_SndHeapAlloc
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r5, [r4, #0xc]
	str r7, [r4, #0x10]
	mov r1, r6
	add r0, r4, #0x14
	str r5, [r4, #8]
	bl NNS_SndHeapCreate
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _0201AAA0 ; =0x02097C30
	mov r1, #0x24
	mla r2, r7, r1, r2
	str r0, [r4, #8]
	mov r1, r4
	add r0, r2, #0xc
	bl NNS_FndAppendListObject
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0201AA9C: .word PlayerHeapDisposeCallback
_0201AAA0: .word sPlayer
	arm_func_end NNS_SndPlayerCreateHeap

	arm_func_start NNS_SndPlayerStopSeq
NNS_SndPlayerStopSeq: ; 0x0201AAA4
	ldr r0, [r0]
	ldr r12, _0201AAB0 ; =NNSi_SndPlayerStopSeq
	bx r12
_0201AAB0: .word NNSi_SndPlayerStopSeq
	arm_func_end NNS_SndPlayerStopSeq

	arm_func_start NNS_SndHandleInit
NNS_SndHandleInit: ; 0x0201AAB4
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end NNS_SndHandleInit

	arm_func_start NNS_SndHandleReleaseSeq
NNS_SndHandleReleaseSeq: ; 0x0201AAC0
	ldr r1, [r0]
	cmp r1, #0
	ldrne r1, [r0]
	movne r2, #0
	strne r2, [r1]
	strne r2, [r0]
	bx lr
	arm_func_end NNS_SndHandleReleaseSeq

	arm_func_start NNS_SndPlayerSetVolume
NNS_SndPlayerSetVolume: ; 0x0201AADC
	ldr r2, [r0]
	cmp r2, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x41]
	bx lr
	arm_func_end NNS_SndPlayerSetVolume

	arm_func_start NNS_SndPlayerSetInitialVolume
NNS_SndPlayerSetInitialVolume: ; 0x0201AAF0
	ldr r2, [r0]
	cmp r2, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x40]
	bx lr
	arm_func_end NNS_SndPlayerSetInitialVolume

	arm_func_start NNS_SndPlayerSetChannelPriority
NNS_SndPlayerSetChannelPriority: ; 0x0201AB04
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0]
	ldrb r0, [r0, #0x3c]
	bl SND_SetPlayerChannelPriority
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_SndPlayerSetChannelPriority

	arm_func_start NNS_SndPlayerSetTrackPitch
NNS_SndPlayerSetTrackPitch: ; 0x0201AB24
	stmfd sp!, {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0]
	ldrb r0, [r0, #0x3c]
	bl SND_SetTrackPitch
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_SndPlayerSetTrackPitch

	arm_func_start NNS_SndPlayerSetSeqArcNo
NNS_SndPlayerSetSeqArcNo: ; 0x0201AB44
	ldr r3, [r0]
	cmp r3, #0
	bxeq lr
	ldr r3, [r0]
	mov r12, #2
	strh r12, [r3, #0x34]
	ldr r3, [r0]
	strh r1, [r3, #0x38]
	ldr r0, [r0]
	strh r2, [r0, #0x3a]
	bx lr
	arm_func_end NNS_SndPlayerSetSeqArcNo

	arm_func_start NNSi_SndPlayerInit
NNSi_SndPlayerInit: ; 0x0201AB70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, #0x14
	ldr r0, _0201AC14 ; =sPrioList
	mov r1, r4
	bl NNS_FndInitList
	ldr r6, _0201AC18 ; =nns_sFreeList
	mov r1, r4
	mov r0, r6
	bl NNS_FndInitList
	mov r7, #0
	ldr r5, _0201AC1C ; =sSeqPlayer
	mov r10, r7
	mov r4, #0x44
_0201ABA4:
	mla r1, r7, r4, r5
	strb r10, [r1, #0x2c]
	mov r0, r6
	strb r7, [r1, #0x3c]
	bl NNS_FndAppendListObject
	add r7, r7, #1
	cmp r7, #0x10
	blt _0201ABA4
	ldr r8, _0201AC20 ; =0x02097C30
	mov r11, #0xc
	mov r7, #0
	mov r6, #0x7f
	mov r5, #1
	mov r4, #0x24
_0201ABDC:
	mla r9, r10, r4, r8
	mov r0, r9
	mov r1, r11
	bl NNS_FndInitList
	mov r1, r7
	add r0, r9, #0xc
	bl NNS_FndInitList
	strb r6, [r9, #0x20]
	str r5, [r9, #0x18]
	add r10, r10, #1
	str r7, [r9, #0x1c]
	cmp r10, #0x20
	blt _0201ABDC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201AC14: .word sPrioList
_0201AC18: .word nns_sFreeList
_0201AC1C: .word sSeqPlayer
_0201AC20: .word sPlayer
	arm_func_end NNSi_SndPlayerInit

	arm_func_start NNSi_SndPlayerMain
NNSi_SndPlayerMain: ; 0x0201AC24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bl SND_GetPlayerStatus
	mov r11, r0
	ldr r0, _0201AD7C ; =sPrioList
	mov r1, #0
	bl NNS_FndGetNextListObject
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0x8000
	ldr r5, _0201AD80 ; =SNDi_DecibelTable
	rsb r4, r4, #0
_0201AC50:
	ldr r0, _0201AD7C ; =sPrioList
	mov r1, r6
	bl NNS_FndGetNextListObject
	ldrb r1, [r6, #0x2d]
	mov r7, r0
	cmp r1, #0
	bne _0201AC80
	ldr r0, [r6, #0x30]
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x2d]
_0201AC80:
	ldrb r0, [r6, #0x2d]
	cmp r0, #0
	beq _0201ACA8
	ldrb r1, [r6, #0x3c]
	mov r0, #1
	tst r11, r0, lsl r1
	bne _0201ACA8
	mov r0, r6
	bl FUN_0201c6a0
	b _0201AD6C
_0201ACA8:
	add r0, r6, #0x1c
	bl NNSi_SndFaderUpdate
	ldr r0, [r6, #4]
	ldrb r2, [r6, #0x41]
	ldrb r0, [r0, #0x20]
	ldrb r1, [r6, #0x40]
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	mov r1, r1, lsl #1
	ldrsh r10, [r5, r0]
	add r0, r6, #0x1c
	ldrsh r8, [r5, r2]
	ldrsh r9, [r5, r1]
	bl NNSi_SndFaderGet
	mov r0, r0, asr #8
	mov r0, r0, lsl #1
	add r1, r9, r8
	ldrsh r0, [r5, r0]
	add r1, r10, r1
	add r8, r0, r1
	cmp r8, r4
	movlt r8, r4
	blt _0201AD10
	ldr r0, _0201AD84 ; =0x00007FFF
	cmp r8, r0
	movgt r8, r0
_0201AD10:
	ldrsh r0, [r6, #0x3e]
	cmp r8, r0
	beq _0201AD2C
	ldrb r0, [r6, #0x3c]
	mov r1, r8
	bl SND_SetPlayerVolume
	strh r8, [r6, #0x3e]
_0201AD2C:
	ldrb r0, [r6, #0x2c]
	cmp r0, #2
	bne _0201AD50
	add r0, r6, #0x1c
	bl NNSi_SndFaderIsFinished
	cmp r0, #0
	beq _0201AD50
	mov r0, r6
	bl ForceStopSeq
_0201AD50:
	ldrb r0, [r6, #0x2f]
	cmp r0, #0
	beq _0201AD6C
	ldrb r0, [r6, #0x3c]
	bl SND_StartPreparedSeq
	mov r0, #0
	strb r0, [r6, #0x2f]
_0201AD6C:
	mov r6, r7
	cmp r7, #0
	bne _0201AC50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201AD7C: .word sPrioList
_0201AD80: .word SNDi_DecibelTable
_0201AD84: .word 0x00007FFF
	arm_func_end NNSi_SndPlayerMain

	arm_func_start NNSi_SndPlayerAllocSeqPlayer
NNSi_SndPlayerAllocSeqPlayer: ; 0x0201AD88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0201AE20 ; =0x02097C30
	mov r3, #0x24
	mov r6, r0
	ldr r7, [r6]
	mla r4, r1, r3, r4
	mov r5, r2
	cmp r7, #0
	beq _0201ADB0
	bl NNS_SndHandleReleaseSeq
_0201ADB0:
	ldrh r1, [r4, #8]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blo _0201ADF0
	mov r7, #0
	mov r0, r4
	mov r1, r7
	bl NNS_FndGetNextListObject
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x3d]
	cmp r5, r1
	movlt r0, r7
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	bl ForceStopSeq
_0201ADF0:
	mov r0, r5
	bl AllocSeqPlayer
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r5
	bl InsertPlayerList
	str r6, [r5]
	mov r0, r5
	str r5, [r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0201AE20: .word sPlayer
	arm_func_end NNSi_SndPlayerAllocSeqPlayer

	arm_func_start NNSi_SndPlayerFreeSeqPlayer
NNSi_SndPlayerFreeSeqPlayer: ; 0x0201AE24
	ldr r12, _0201AE2C ; =FUN_0201c6a0
	bx r12
_0201AE2C: .word FUN_0201c6a0
	arm_func_end NNSi_SndPlayerFreeSeqPlayer

	arm_func_start NNSi_SndPlayerStartSeq
NNSi_SndPlayerStartSeq: ; 0x0201AE30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x3c]
	ldr r4, [r5, #4]
	bl SND_PrepareSeq
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _0201AE5C
	ldrb r0, [r5, #0x3c]
	ldr r1, _0201AE7C ; =0x0000FFFF
	bl SND_SetTrackAllocatableChannel
_0201AE5C:
	mov r0, r5
	bl InitPlayer
	bl SND_GetCurrentCommandTag
	mov r1, #1
	str r0, [r5, #0x30]
	strb r1, [r5, #0x2f]
	strb r1, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
_0201AE7C: .word 0x0000FFFF
	arm_func_end NNSi_SndPlayerStartSeq

	arm_func_start NNSi_SndPlayerStopSeq
NNSi_SndPlayerStopSeq: ; 0x0201AE80
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r2, r1
	ldrneb r1, [r5, #0x2c]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, #0
	bne _0201AEA8
	bl ForceStopSeq
	ldmfd sp!, {r3, r4, r5, pc}
_0201AEA8:
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x1c
	bl NNSi_SndFaderSet
	mov r0, r5
	mov r1, r4
	bl SetPlayerPriority
	mov r0, #2
	strb r0, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_SndPlayerStopSeq

	arm_func_start NNSi_SndPlayerAllocHeap
NNSi_SndPlayerAllocHeap: ; 0x0201AED0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _0201AF24 ; =0x02097C30
	mov r2, #0x24
	mla r6, r0, r2, r3
	mov r5, #0
	mov r7, r1
	mov r1, r5
	add r0, r6, #0xc
	bl NNS_FndGetNextListObject
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r4
	add r0, r6, #0xc
	bl NNS_FndRemoveListObject
	str r7, [r4, #0xc]
	str r4, [r7, #8]
	ldr r0, [r4, #8]
	bl NNS_SndHeapClear
	ldr r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0201AF24: .word sPlayer
	arm_func_end NNSi_SndPlayerAllocHeap

	arm_func_start InitPlayer
InitPlayer: ; 0x0201AF28
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	mov r1, #0x7f
	add r0, r4, #0x1c
	strb r2, [r4, #0x2e]
	strb r2, [r4, #0x2d]
	strb r2, [r4, #0x2f]
	strh r2, [r4, #0x34]
	strh r2, [r4, #0x3e]
	strb r1, [r4, #0x40]
	strb r1, [r4, #0x41]
	bl NNSi_SndFaderInit
	add r0, r4, #0x1c
	mov r1, #0x7f00
	mov r2, #1
	bl NNSi_SndFaderSet
	ldmfd sp!, {r4, pc}
	arm_func_end InitPlayer

	arm_func_start InsertPlayerList
InsertPlayerList: ; 0x0201AF70
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0
	mov r5, r0
	bl NNS_FndGetNextListObject
	movs r1, r0
	beq _0201AFAC
_0201AF8C:
	ldrb r2, [r4, #0x3d]
	ldrb r0, [r1, #0x3d]
	cmp r2, r0
	blo _0201AFAC
	mov r0, r5
	bl NNS_FndGetNextListObject
	movs r1, r0
	bne _0201AF8C
_0201AFAC:
	mov r0, r5
	mov r2, r4
	bl NNS_FndInsertListObject
	str r5, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end InsertPlayerList

	arm_func_start InsertPrioList
InsertPrioList: ; 0x0201AFC0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0201B010 ; =sPrioList
	mov r5, r0
	mov r0, r4
	mov r1, #0
	bl NNS_FndGetNextListObject
	movs r1, r0
	beq _0201B000
_0201AFE0:
	ldrb r2, [r5, #0x3d]
	ldrb r0, [r1, #0x3d]
	cmp r2, r0
	blo _0201B000
	mov r0, r4
	bl NNS_FndGetNextListObject
	movs r1, r0
	bne _0201AFE0
_0201B000:
	ldr r0, _0201B010 ; =sPrioList
	mov r2, r5
	bl NNS_FndInsertListObject
	ldmfd sp!, {r3, r4, r5, pc}
_0201B010: .word sPrioList
	arm_func_end InsertPrioList

	arm_func_start ForceStopSeq
ForceStopSeq: ; 0x0201B014
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x2c]
	cmp r0, #2
	bne _0201B034
	ldrb r0, [r4, #0x3c]
	ldr r1, _0201B048 ; =0xFFFFFD2D
	bl SND_SetPlayerVolume
_0201B034:
	ldrb r0, [r4, #0x3c]
	bl SND_StopSeq
	mov r0, r4
	bl FUN_0201c6a0
	ldmfd sp!, {r4, pc}
_0201B048: .word 0xFFFFFD2D
	arm_func_end ForceStopSeq

	arm_func_start AllocSeqPlayer
AllocSeqPlayer: ; 0x0201B04C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
	ldr r0, _0201B0B0 ; =nns_sFreeList
	mov r1, r4
	bl NNS_FndGetNextListObject
	movs r5, r0
	bne _0201B090
	ldr r0, _0201B0B4 ; =sPrioList
	mov r1, r4
	bl NNS_FndGetNextListObject
	mov r5, r0
	ldrb r1, [r5, #0x3d]
	cmp r6, r1
	movlt r0, r4
	ldmltfd sp!, {r4, r5, r6, pc}
	bl ForceStopSeq
_0201B090:
	ldr r0, _0201B0B0 ; =nns_sFreeList
	mov r1, r5
	bl NNS_FndRemoveListObject
	mov r0, r5
	strb r6, [r5, #0x3d]
	bl InsertPrioList
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0201B0B0: .word nns_sFreeList
_0201B0B4: .word sPrioList
	arm_func_end AllocSeqPlayer

	arm_func_start FUN_0201c6a0
FUN_0201c6a0: ; 0x0201B0B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	ldr r5, [r6, #4]
	strne r0, [r6]
	mov r1, r6
	mov r0, r5
	bl NNS_FndRemoveListObject
	ldr r1, [r6, #8]
	mov r4, #0
	str r4, [r6, #4]
	cmp r1, #0
	beq _0201B10C
	add r0, r5, #0xc
	bl NNS_FndAppendListObject
	ldr r0, [r6, #8]
	str r4, [r0, #0xc]
	str r4, [r6, #8]
_0201B10C:
	ldr r0, _0201B130 ; =sPrioList
	mov r1, r6
	bl NNS_FndRemoveListObject
	ldr r0, _0201B134 ; =nns_sFreeList
	mov r1, r6
	bl NNS_FndAppendListObject
	mov r0, #0
	strb r0, [r6, #0x2c]
	ldmfd sp!, {r4, r5, r6, pc}
_0201B130: .word sPrioList
_0201B134: .word nns_sFreeList
	arm_func_end FUN_0201c6a0

	arm_func_start PlayerHeapDisposeCallback
PlayerHeapDisposeCallback: ; 0x0201B138
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl NNS_SndHeapDestroy
	ldr r1, [r4, #0xc]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #8]
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x10]
	ldr r2, _0201B184 ; =0x02097C30
	mov r0, #0x24
	mla r0, r1, r0, r2
	mov r1, r4
	add r0, r0, #0xc
	bl NNS_FndRemoveListObject
	ldmfd sp!, {r4, pc}
_0201B184: .word sPlayer
	arm_func_end PlayerHeapDisposeCallback

	arm_func_start SetPlayerPriority
SetPlayerPriority: ; 0x0201B188
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #4]
	mov r5, r1
	cmp r4, #0
	beq _0201B1B4
	mov r0, r4
	mov r1, r6
	bl NNS_FndRemoveListObject
	mov r0, #0
	str r0, [r6, #4]
_0201B1B4:
	ldr r0, _0201B1E4 ; =sPrioList
	mov r1, r6
	bl NNS_FndRemoveListObject
	strb r5, [r6, #0x3d]
	cmp r4, #0
	beq _0201B1D8
	mov r0, r4
	mov r1, r6
	bl InsertPlayerList
_0201B1D8:
	mov r0, r6
	bl InsertPrioList
	ldmfd sp!, {r4, r5, r6, pc}
_0201B1E4: .word sPrioList
	arm_func_end SetPlayerPriority

	arm_func_start NNS_SndStrmFreeChannel
NNS_SndStrmFreeChannel: ; 0x0201B1E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl NNS_SndUnlockChannel
	mov r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	ldmfd sp!, {r4, pc}
	arm_func_end NNS_SndStrmFreeChannel

	arm_func_start NNS_SndStrmStart
NNS_SndStrmStart: ; 0x0201B210
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x48]
	mov r2, #1
	mov r1, #0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x4c]
	mov r3, r1
	bl SND_StartTimer
	ldr r0, [r4, #0x2c]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	ldmnefd sp!, {r4, pc}
	add r0, r4, #8
	bl PM_PrependPreSleepCallback
	add r0, r4, #0x18
	bl PM_AppendPostSleepCallback
	ldr r0, [r4, #0x2c]
	orr r0, r0, #2
	str r0, [r4, #0x2c]
	ldmfd sp!, {r4, pc}
	arm_func_end NNS_SndStrmStart

	arm_func_start NNS_SndStrmStop
NNS_SndStrmStop: ; 0x0201B264
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x2c]
	mov r1, r1, lsl #0x1f
	movs r1, r1, asr #0x1f
	ldmeqfd sp!, {r3, pc}
	bl FUN_0201b2ec
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_SndStrmStop

	arm_func_start NNS_SndStrmSetVolume
NNS_SndStrmSetVolume: ; 0x0201B280
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r0, [r7, #0x50]
	mov r6, #0
	str r1, [r7, #0x44]
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _0201B2E8 ; =sStrmChannel
	mov r8, #1
_0201B2A4:
	add r0, r7, r6
	ldrb r5, [r0, #0x54]
	ldr r1, [r7, #0x44]
	add r0, r4, r5, lsl #3
	ldr r0, [r0, #4]
	add r0, r1, r0
	bl SND_CalcChannelVolume
	mov r2, r0
	mov r0, r8, lsl r5
	and r1, r2, #0xff
	mov r2, r2, asr #8
	bl SND_SetChannelVolume
	ldr r0, [r7, #0x50]
	add r6, r6, #1
	cmp r6, r0
	blt _0201B2A4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0201B2E8: .word sStrmChannel
	arm_func_end NNS_SndStrmSetVolume

	arm_func_start FUN_0201b2ec
FUN_0201b2ec: ; 0x0201B2EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _0201B354
	ldr r0, [r4, #0x48]
	mov r6, #1
	mov r1, #0
	mov r2, r6, lsl r0
	ldr r0, [r4, #0x4c]
	mov r3, r1
	bl SND_StopTimer
	add r0, r4, #8
	bl PM_DeletePreSleepCallback
	add r0, r4, #0x18
	bl PM_DeletePostSleepCallback
	ldr r0, [r4, #0x2c]
	bic r0, r0, #2
	str r0, [r4, #0x2c]
	bl SND_GetCurrentCommandTag
	mov r5, r0
	mov r0, r6
	bl SND_FlushCommand
	mov r0, r5
	bl SND_WaitForCommandProc
_0201B354:
	mov r0, r4
	bl ShutdownStrm
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0201b2ec

	arm_func_start ShutdownStrm
ShutdownStrm: ; 0x0201B360
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x48]
	bl NNS_SndFreeAlarm
	ldr r0, _0201B38C ; =sStrmList
	mov r1, r4
	bl NNS_FndRemoveListObject
	ldr r0, [r4, #0x2c]
	bic r0, r0, #1
	str r0, [r4, #0x2c]
	ldmfd sp!, {r4, pc}
_0201B38C: .word sStrmList
	arm_func_end ShutdownStrm

	arm_func_start NNSi_SndCaptureInit
NNSi_SndCaptureInit: ; 0x0201B390
	ldr r1, _0201B3A8 ; =sIsThreadCreated
	mov r2, #0
	ldr r0, _0201B3AC ; =sCapParam
	str r2, [r1]
	str r2, [r0]
	bx lr
_0201B3A8: .word sIsThreadCreated
_0201B3AC: .word sCapParam
	arm_func_end NNSi_SndCaptureInit

	arm_func_start NNSi_SndCaptureMain
NNSi_SndCaptureMain: ; 0x0201B3B0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0201B42C ; =sCapParam
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r4, #0x3c
	bl NNSi_SndFaderUpdate
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0201B3FC
	add r0, r4, #0x3c
	bl NNSi_SndFaderIsFinished
	cmp r0, #0
	beq _0201B3FC
	bl NNSi_SndCaptureStop
	ldmfd sp!, {r3, r4, r5, pc}
_0201B3FC:
	add r0, r4, #0x3c
	bl NNSi_SndFaderGet
	ldr r1, [r4, #0x50]
	mov r5, r0, asr #8
	cmp r5, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x24]
	mov r1, r5
	mov r2, #0
	bl SND_SetChannelVolume
	str r5, [r4, #0x50]
	ldmfd sp!, {r3, r4, r5, pc}
_0201B42C: .word sCapParam
	arm_func_end NNSi_SndCaptureMain

	arm_func_start NNSi_SndCaptureStop
NNSi_SndCaptureStop: ; 0x0201B430
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _0201B50C ; =sCapParam
	mov r4, #0
	ldr r0, [r6]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x2c]
	mov r7, #1
	cmp r1, #0
	movlt r7, r4
	cmp r7, #0
	movne r0, #1
	movne r2, r0, lsl r1
	ldr r0, [r6, #0x24]
	ldr r1, [r6, #0x28]
	moveq r2, #0
	mov r3, #0
	bl SND_StopTimer
	cmp r7, #0
	beq _0201B4B4
	bl SND_GetCurrentCommandTag
	mov r5, r0
	mov r0, #1
	bl SND_FlushCommand
	mov r0, r5
	bl SND_WaitForCommandProc
	ldr r5, _0201B510 ; =sMesgQ
_0201B49C:
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl OS_ReceiveMessage
	cmp r0, #0
	bne _0201B49C
_0201B4B4:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0201B4C4
	bl NNS_SndUnlockCapture
_0201B4C4:
	ldr r0, [r6, #0x20]
	cmp r0, #0
	beq _0201B4D4
	bl NNS_SndUnlockChannel
_0201B4D4:
	cmp r7, #0
	beq _0201B4E4
	ldr r0, [r6, #0x2c]
	bl NNS_SndFreeAlarm
_0201B4E4:
	ldr r0, [r6, #4]
	cmp r0, #1
	bne _0201B504
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl SND_SetOutputSelector
_0201B504:
	str r4, [r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0201B50C: .word sCapParam
_0201B510: .word sMesgQ
	arm_func_end NNSi_SndCaptureStop

	arm_func_start NNSi_SndCaptureBeginSleep
NNSi_SndCaptureBeginSleep: ; 0x0201B514
	stmfd sp!, {r4, lr}
	ldr r3, _0201B568 ; =sCapParam
	ldr r0, [r3]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r3, #0x2c]
	cmp r1, #0
	movge r0, #1
	movge r2, r0, lsl r1
	ldr r0, [r3, #0x24]
	ldr r1, [r3, #0x28]
	movlt r2, #0
	mov r3, #0
	bl SND_StopTimer
	bl SND_GetCurrentCommandTag
	mov r4, r0
	mov r0, #1
	bl SND_FlushCommand
	mov r0, r4
	bl SND_WaitForCommandProc
	ldmfd sp!, {r4, pc}
_0201B568: .word sCapParam
	arm_func_end NNSi_SndCaptureBeginSleep

	arm_func_start NNSi_SndCaptureEndSleep
NNSi_SndCaptureEndSleep: ; 0x0201B56C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0201B5E8 ; =sCapParam
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x14]
	mov r0, r5
	str r5, [r4, #0x1c]
	bl MIi_CpuClear32
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	mov r0, r5
	bl MIi_CpuClear32
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl DC_FlushRange
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl DC_FlushRange
	ldr r1, [r4, #0x2c]
	mov r3, #0
	cmp r1, #0
	movge r0, #1
	movge r5, r0, lsl r1
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	mov r2, r5
	bl SND_StartTimer
	ldmfd sp!, {r3, r4, r5, pc}
_0201B5E8: .word sCapParam
	arm_func_end NNSi_SndCaptureEndSleep

	arm_func_start NNS_SndArcInitOnMemory
NNS_SndArcInitOnMemory: ; 0x0201B5EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x30
	mov r6, #0
	bl MIi_CpuCopy32
	ldr r0, [r5, #0x18]
	mov r2, #0
	mov r1, r6
	cmp r0, #0
	addne r1, r4, r0
	ldr r0, [r5, #0x20]
	str r1, [r5, #0x98]
	mov r1, #0
	cmp r0, #0
	addne r1, r4, r0
	ldr r0, [r5, #0x10]
	str r1, [r5, #0x90]
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	ldr r1, [r5, #0x90]
	str r2, [r5, #0x9c]
	str r0, [r5, #0x94]
	ldr r0, [r1, #8]
	cmp r0, #0
	bls _0201B690
_0201B660:
	add r0, r1, #0xc
	add r1, r0, r2, lsl #4
	ldr r0, [r1]
	add r2, r2, #1
	cmp r0, #0
	moveq r0, r6
	addne r0, r4, r0
	str r0, [r1, #8]
	ldr r1, [r5, #0x90]
	ldr r0, [r1, #8]
	cmp r2, r0
	blo _0201B660
_0201B690:
	ldr r0, _0201B6A0 ; =sCurrent
	str r6, [r5, #0x30]
	str r5, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_0201B6A0: .word sCurrent
	arm_func_end NNS_SndArcInitOnMemory

	arm_func_start NNS_SndArcSetCurrent
NNS_SndArcSetCurrent: ; 0x0201B6A4
	ldr r1, _0201B6B8 ; =sCurrent
	ldr r2, [r1]
	str r0, [r1]
	mov r0, r2
	bx lr
_0201B6B8: .word sCurrent
	arm_func_end NNS_SndArcSetCurrent

	arm_func_start NNS_SndArcGetCurrent
NNS_SndArcGetCurrent: ; 0x0201B6BC
	ldr r0, _0201B6C8 ; =sCurrent
	ldr r0, [r0]
	bx lr
_0201B6C8: .word sCurrent
	arm_func_end NNS_SndArcGetCurrent

	arm_func_start NNS_SndArcGetSeqArcInfo
NNS_SndArcGetSeqArcInfo: ; 0x0201B6CC
	ldr r1, _0201B72C ; =sCurrent
	ldr r3, [r1]
	ldr r2, [r3, #0x98]
	ldr r1, [r2, #0xc]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x98]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
_0201B72C: .word sCurrent
	arm_func_end NNS_SndArcGetSeqArcInfo

	arm_func_start NNS_SndArcGetBankInfo
NNS_SndArcGetBankInfo: ; 0x0201B730
	ldr r1, _0201B790 ; =sCurrent
	ldr r3, [r1]
	ldr r2, [r3, #0x98]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x98]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
_0201B790: .word sCurrent
	arm_func_end NNS_SndArcGetBankInfo

	arm_func_start FUN_0201b794
FUN_0201b794: ; 0x0201B794
	ldr r1, _0201B7F4 ; =sCurrent
	ldr r3, [r1]
	ldr r2, [r3, #0x98]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x98]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
_0201B7F4: .word sCurrent
	arm_func_end FUN_0201b794

	arm_func_start NNS_SndArcGetPlayerInfo
NNS_SndArcGetPlayerInfo: ; 0x0201B7F8
	ldr r1, _0201B858 ; =sCurrent
	ldr r3, [r1]
	ldr r2, [r3, #0x98]
	ldr r1, [r2, #0x18]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x98]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
_0201B858: .word sCurrent
	arm_func_end NNS_SndArcGetPlayerInfo

	arm_func_start FUN_0201b85c
FUN_0201b85c: ; 0x0201B85C
	ldr r1, _0201B880 ; =sCurrent
	ldr r1, [r1]
	ldr r2, [r1, #0x90]
	ldr r1, [r2, #8]
	cmp r0, r1
	movhs r0, #0
	addlo r0, r2, r0, lsl #4
	ldrlo r0, [r0, #0x10]
	bx lr
_0201B880: .word sCurrent
	arm_func_end FUN_0201b85c

	arm_func_start NNS_SndArcReadFile
NNS_SndArcReadFile: ; 0x0201B884
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0201B948 ; =sCurrent
	mov r9, r2
	ldr r7, [r4]
	mov r10, r1
	ldr r2, [r7, #0x90]
	mov r8, r3
	ldr r1, [r2, #8]
	cmp r0, r1
	mvnhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, [r7, #0x9c]
	add r1, r2, #0xc
	cmp r5, #0
	moveq r5, r9
	add r11, r1, r0, lsl #4
	cmp r9, #0
	mov r4, #0
	ble _0201B940
_0201B8D0:
	ldr r0, [r11, #4]
	sub r6, r9, r4
	cmp r6, r5
	movgt r6, r5
	sub r0, r0, r8
	cmp r6, r0
	movhi r6, r0
	cmp r6, #0
	beq _0201B940
	ldr r1, [r11]
	mov r2, #0
	add r0, r7, #0x34
	add r1, r1, r8
	bl FS_SeekFile
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r10
	mov r2, r6
	add r0, r7, #0x34
	bl FS_ReadFile
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, r4, r0
	cmp r4, r9
	add r8, r8, r0
	add r10, r10, r0
	blt _0201B8D0
_0201B940:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201B948: .word sCurrent
	arm_func_end NNS_SndArcReadFile

	arm_func_start NNS_SndArcGetFileAddress
NNS_SndArcGetFileAddress: ; 0x0201B94C
	ldr r1, _0201B970 ; =sCurrent
	ldr r1, [r1]
	ldr r2, [r1, #0x90]
	ldr r1, [r2, #8]
	cmp r0, r1
	movhs r0, #0
	addlo r0, r2, r0, lsl #4
	ldrlo r0, [r0, #0x14]
	bx lr
_0201B970: .word sCurrent
	arm_func_end NNS_SndArcGetFileAddress

	arm_func_start NNS_SndArcSetFileAddress
NNS_SndArcSetFileAddress: ; 0x0201B974
	ldr r2, _0201B98C ; =sCurrent
	ldr r2, [r2]
	ldr r2, [r2, #0x90]
	add r0, r2, r0, lsl #4
	str r1, [r0, #0x14]
	bx lr
_0201B98C: .word sCurrent
	arm_func_end NNS_SndArcSetFileAddress

	arm_func_start NNS_SndHeapCreate
NNS_SndHeapCreate: ; 0x0201B990
	stmfd sp!, {r4, r5, r6, lr}
	add r2, r0, #3
	add r0, r0, r1
	bic r6, r2, #3
	cmp r6, r0
	movhi r0, #0
	ldmhifd sp!, {r4, r5, r6, pc}
	sub r1, r0, r6
	cmp r1, #0x10
	movlo r0, #0
	ldmlofd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r2, r5
	add r0, r6, #0x10
	sub r1, r1, #0x10
	bl NNS_FndCreateFrmHeapEx
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl InitHeap
	cmp r0, #0
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl NNS_FndDestroyFrmHeap
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNS_SndHeapCreate

	arm_func_start NNS_SndHeapDestroy
NNS_SndHeapDestroy: ; 0x0201BA04
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NNS_SndHeapClear
	ldr r0, [r4]
	bl NNS_FndDestroyFrmHeap
	ldmfd sp!, {r4, pc}
	arm_func_end NNS_SndHeapDestroy

	arm_func_start NNS_SndHeapClear
NNS_SndHeapClear: ; 0x0201BA1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	mov r6, #0
	mov r1, r6
	add r0, r8, #4
	bl NNS_FndGetPrevListObject
	movs r5, r0
	beq _0201BAB4
	mov r10, #1
	mov r9, r6
	mov r4, r6
_0201BA48:
	mov r0, r5
	mov r1, r4
	bl NNS_FndGetPrevListObject
	movs r7, r0
	beq _0201BA94
_0201BA5C:
	ldr r12, [r7, #0xc]
	cmp r12, #0
	beq _0201BA80
	ldr r1, [r7, #8]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	add r0, r7, #0x20
	blx r12
	mov r6, r10
_0201BA80:
	mov r0, r5
	mov r1, r7
	bl NNS_FndGetPrevListObject
	movs r7, r0
	bne _0201BA5C
_0201BA94:
	mov r1, r5
	add r0, r8, #4
	bl NNS_FndRemoveListObject
	mov r1, r9
	add r0, r8, #4
	bl NNS_FndGetPrevListObject
	movs r5, r0
	bne _0201BA48
_0201BAB4:
	ldr r0, [r8]
	mov r1, #3
	bl NNS_FndFreeToFrmHeap
	cmp r6, #0
	beq _0201BACC
	bl EraseSync
_0201BACC:
	mov r0, r8
	bl NewSection
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end NNS_SndHeapClear

	arm_func_start NNS_SndHeapAlloc
NNS_SndHeapAlloc: ; 0x0201BAD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	add r0, r7, #0x1f
	bic r1, r0, #0x1f
	mov r6, r2
	ldr r0, [r8]
	add r1, r1, #0x20
	mov r2, #0x20
	mov r5, r3
	bl NNS_FndAllocFromFrmHeapEx
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #4
	mov r1, #0
	bl NNS_FndGetPrevListObject
	str r7, [r4, #8]
	str r6, [r4, #0xc]
	ldr r2, [sp, #0x18]
	str r5, [r4, #0x10]
	mov r1, r4
	str r2, [r4, #0x14]
	bl NNS_FndAppendListObject
	add r0, r4, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNS_SndHeapAlloc

	arm_func_start InitHeapSection
InitHeapSection: ; 0x0201BB40
	ldr r12, _0201BB4C ; =NNS_FndInitList
	mov r1, #0
	bx r12
_0201BB4C: .word NNS_FndInitList
	arm_func_end InitHeapSection

	arm_func_start InitHeap
InitHeap: ; 0x0201BB50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #4
	mov r1, #0xc
	bl NNS_FndInitList
	mov r0, r5
	str r4, [r5]
	bl NewSection
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end InitHeap

	arm_func_start NewSection
NewSection: ; 0x0201BB84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	mov r1, #0x14
	mov r2, #4
	bl NNS_FndAllocFromFrmHeapEx
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl InitHeapSection
	mov r1, r4
	add r0, r5, #4
	bl NNS_FndAppendListObject
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NewSection

	arm_func_start EraseSync
EraseSync: ; 0x0201BBC0
	stmfd sp!, {r4, lr}
	bl SND_GetCurrentCommandTag
	mov r4, r0
	mov r0, #1
	bl SND_FlushCommand
	mov r0, r4
	bl SND_WaitForCommandProc
	ldmfd sp!, {r4, pc}
	arm_func_end EraseSync

	arm_func_start NNSi_SndArcLoadBank
NNSi_SndArcLoadBank: ; 0x0201BBE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r1
	mov r9, r2
	mov r11, r3
	bl NNS_SndArcGetBankInfo
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	tst r10, #2
	ldr r0, [r5]
	beq _0201BC34
	mov r1, r9
	mov r2, r11
	bl LoadBank
	movs r6, r0
	bne _0201BC3C
	add sp, sp, #8
	mov r0, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201BC34:
	bl NNS_SndArcGetFileAddress
	mov r6, r0
_0201BC3C:
	and r8, r10, #4
	mov r7, #0
_0201BC44:
	add r0, r5, r7, lsl #1
	ldrh r0, [r0, #4]
	ldr r1, _0201BD1C ; =0x0000FFFF
	cmp r0, r1
	beq _0201BCF8
	bl FUN_0201b794
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, r7, lsl #1
	ldrh r0, [r0, #4]
	mov r1, r10
	mov r2, r9
	mov r3, r11
	bl NNSi_SndArcLoadWaveArc
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	mov r0, r0, lsr #0x18
	tst r0, #1
	cmpne r8, #0
	beq _0201BCDC
	str r9, [sp]
	ldr r1, [r4]
	ldr r0, [sp, #4]
	mov r3, r1, lsl #8
	mov r1, r6
	mov r2, r7
	mov r3, r3, lsr #8
	bl LoadSingleWaves
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #9
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201BCDC:
	cmp r6, #0
	ldrne r2, [sp, #4]
	cmpne r2, #0
	beq _0201BCF8
	mov r0, r6
	mov r1, r7
	bl SND_AssignWaveArc
_0201BCF8:
	add r7, r7, #1
	cmp r7, #4
	blt _0201BC44
	ldr r0, [sp, #0x30]
	cmp r0, #0
	strne r6, [r0]
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201BD1C: .word 0x0000FFFF
	arm_func_end NNSi_SndArcLoadBank

	arm_func_start NNSi_SndArcLoadWaveArc
NNSi_SndArcLoadWaveArc: ; 0x0201BD20
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_0201b794
	cmp r0, #0
	moveq r0, #5
	ldmeqfd sp!, {r4, r5, r6, pc}
	tst r6, #4
	ldr r0, [r0]
	beq _0201BD84
	mov r1, r0, lsr #0x18
	mov r0, r0, lsl #8
	tst r1, #1
	mov r1, r5
	mov r2, r4
	mov r0, r0, lsr #8
	beq _0201BD70
	bl LoadWaveArcTable
	b _0201BD74
_0201BD70:
	bl LoadWaveArc
_0201BD74:
	cmp r0, #0
	bne _0201BD90
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, pc}
_0201BD84:
	mov r0, r0, lsl #8
	mov r0, r0, lsr #8
	bl NNS_SndArcGetFileAddress
_0201BD90:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_SndArcLoadWaveArc

	arm_func_start NNSi_SndArcLoadFile
NNSi_SndArcLoadFile: ; 0x0201BDA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r5, r2
	mov r4, r3
	bl FUN_0201b85c
	movs r6, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r2, r7
	mov r3, r5
	add r1, r6, #0x20
	str r4, [sp]
	bl NNS_SndHeapAlloc
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
	mov r0, r8
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl NNS_SndArcReadFile
	cmp r6, r0
	addne sp, sp, #4
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r6
	bl DC_StoreRange
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_SndArcLoadFile

	arm_func_start LoadBank
LoadBank: ; 0x0201BE48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl NNS_SndArcGetFileAddress
	movs r4, r0
	bne _0201BEA8
	cmp r5, #0
	moveq r2, #0
	beq _0201BE78
	bl NNS_SndArcGetCurrent
	mov r2, r0
_0201BE78:
	ldr r1, _0201BEB0 ; =BankDisposeCallback
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl NNSi_SndArcLoadFile
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _0201BEA8
	mov r0, r7
	mov r1, r4
	bl NNS_SndArcSetFileAddress
_0201BEA8:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0201BEB0: .word BankDisposeCallback
	arm_func_end LoadBank

	arm_func_start LoadWaveArc
LoadWaveArc: ; 0x0201BEB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl NNS_SndArcGetFileAddress
	movs r4, r0
	bne _0201BF14
	cmp r5, #0
	moveq r2, #0
	beq _0201BEE4
	bl NNS_SndArcGetCurrent
	mov r2, r0
_0201BEE4:
	ldr r1, _0201BF1C ; =WaveArcDisposeCallback
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl NNSi_SndArcLoadFile
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _0201BF14
	mov r0, r7
	mov r1, r4
	bl NNS_SndArcSetFileAddress
_0201BF14:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0201BF1C: .word WaveArcDisposeCallback
	arm_func_end LoadWaveArc

	arm_func_start LoadWaveArcTable
LoadWaveArcTable: ; 0x0201BF20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r10, r1
	mov r9, r2
	bl NNS_SndArcGetFileAddress
	movs r7, r0
	bne _0201C030
	mov r5, #0
	ldr r1, _0201C03C ; =waveArcHeader
	mov r0, r4
	mov r3, r5
	mov r2, #0x3c
	bl NNS_SndArcReadFile
	cmp r0, #0x3c
	addne sp, sp, #4
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0201C040 ; =waveArcHeader
	cmp r10, #0
	ldr r0, [r0, #0x38]
	addeq sp, sp, #4
	mov r8, r0, lsl #2
	mov r6, r8, lsl #1
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r9, #0
	beq _0201BF98
	bl NNS_SndArcGetCurrent
	mov r5, r0
_0201BF98:
	ldr r2, _0201C044 ; =WaveArcTableDisposeCallback
	mov r0, r10
	mov r3, r5
	add r1, r6, #0x5c
	str r4, [sp]
	bl NNS_SndHeapAlloc
	movs r7, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r5, #0
	mov r0, r4
	mov r1, r7
	mov r3, r5
	add r2, r8, #0x3c
	bl NNS_SndArcReadFile
	add r1, r8, #0x3c
	cmp r0, r1
	addne sp, sp, #4
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r7, #0x38]
	add r0, r7, #0x3c
	mov r2, r8
	add r1, r0, r1, lsl #2
	bl MI_CpuCopy8
	mov r1, r5
	mov r2, r8
	add r0, r7, #0x3c
	bl MI_CpuFill8
	mov r0, r7
	add r1, r6, #0x3c
	bl DC_StoreRange
	cmp r9, #0
	beq _0201C030
	mov r0, r4
	mov r1, r7
	bl NNS_SndArcSetFileAddress
_0201C030:
	mov r0, r7
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0201C03C: .word waveArcHeader
_0201C040: .word waveArcHeader
_0201C044: .word WaveArcTableDisposeCallback
	arm_func_end LoadWaveArcTable

	arm_func_start DisposeCallback
DisposeCallback: ; 0x0201C048
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r7, r0
	mov r6, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl NNS_SndArcSetCurrent
	mov r4, r0
	mov r0, r6
	bl NNS_SndArcGetFileAddress
	cmp r7, r0
	bne _0201C08C
	mov r0, r6
	mov r1, #0
	bl NNS_SndArcSetFileAddress
_0201C08C:
	mov r0, r4
	bl NNS_SndArcSetCurrent
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DisposeCallback

	arm_func_start BankDisposeCallback
BankDisposeCallback: ; 0x0201C0A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl DisposeCallback
	mov r0, r5
	add r1, r5, r4
	bl SND_InvalidateBankData
	mov r0, r5
	bl SND_DestroyBank
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end BankDisposeCallback

	arm_func_start WaveArcDisposeCallback
WaveArcDisposeCallback: ; 0x0201C0D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl DisposeCallback
	mov r0, r5
	add r1, r5, r4
	bl SND_InvalidateWaveData
	mov r0, r5
	bl SND_DestroyWaveArc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WaveArcDisposeCallback

	arm_func_start WaveArcTableDisposeCallback
WaveArcTableDisposeCallback: ; 0x0201C100
	stmfd sp!, {r4, lr}
	mov r1, r2
	mov r4, r0
	mov r2, r3
	bl DisposeCallback
	mov r0, r4
	bl SND_DestroyWaveArc
	ldmfd sp!, {r4, pc}
	arm_func_end WaveArcTableDisposeCallback

	arm_func_start SingleWaveDisposeCallback
SingleWaveDisposeCallback: ; 0x0201C120
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r4, r3
	mov r6, r1
	mov r0, r5
	mov r1, r4
	bl SND_GetWaveDataAddress
	cmp r7, r0
	bne _0201C158
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl SND_SetWaveDataAddress
_0201C158:
	mov r0, r7
	add r1, r7, r6
	bl SND_InvalidateWaveData
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SingleWaveDisposeCallback

	arm_func_start LoadSingleWave
LoadSingleWave: ; 0x0201C168
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl SND_GetWaveDataAddress
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl SND_GetWaveDataCount
	ldr r1, [r8, #0x38]
	sub r0, r0, #1
	add r1, r1, r7
	add r1, r8, r1, lsl #2
	cmp r7, r0
	ldrlo r0, [r1, #0x40]
	ldr r4, [r1, #0x3c]
	ldrhs r0, [r8, #8]
	cmp r5, #0
	sub r9, r0, r4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, _0201C22C ; =SingleWaveDisposeCallback
	mov r0, r5
	mov r3, r8
	add r1, r9, #0x20
	str r7, [sp]
	bl NNS_SndHeapAlloc
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r9
	mov r3, r4
	bl NNS_SndArcReadFile
	cmp r9, r0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	mov r1, r9
	bl DC_StoreRange
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl SND_SetWaveDataAddress
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0201C22C: .word SingleWaveDisposeCallback
	arm_func_end LoadSingleWave

	arm_func_start LoadSingleWaves
LoadSingleWaves: ; 0x0201C230
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	add r0, sp, #0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x40]
	bl SND_GetFirstInstDataPos
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r9, #0
	add r5, sp, #8
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, sp, #0x10
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl SND_GetNextInstData
	cmp r0, #0
	beq _0201C2E4
_0201C294:
	ldrb r0, [sp, #0x10]
	cmp r0, #1
	ldreqh r0, [sp, #0x14]
	cmpeq r8, r0
	bne _0201C2CC
	ldrh r1, [sp, #0x12]
	mov r0, r10
	mov r2, r7
	mov r3, r6
	bl LoadSingleWave
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0201C2CC:
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl SND_GetNextInstData
	cmp r0, #0
	bne _0201C294
_0201C2E4:
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end LoadSingleWaves

	arm_func_start NNS_SndArcPlayerSetup
NNS_SndArcPlayerSetup: ; 0x0201C2F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	bl NNS_SndArcGetCurrent
	mov r6, #0
	mov r5, r6
_0201C304:
	mov r0, r6
	bl NNS_SndArcGetPlayerInfo
	movs r7, r0
	beq _0201C374
	ldrb r1, [r7]
	mov r0, r6
	bl NNS_SndPlayerSetPlayableSeqCount
	ldrh r1, [r7, #2]
	mov r0, r6
	bl NNS_SndPlayerSetAllocatableChannel
	ldr r0, [r7, #4]
	cmp r0, #0
	cmpne r4, #0
	ldrneb r0, [r7]
	movne r8, r5
	cmpne r0, #0
	ble _0201C374
_0201C348:
	ldr r2, [r7, #4]
	mov r0, r6
	mov r1, r4
	bl NNS_SndPlayerCreateHeap
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7]
	add r8, r8, #1
	cmp r8, r0
	blt _0201C348
_0201C374:
	add r6, r6, #1
	cmp r6, #0x20
	blt _0201C304
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNS_SndArcPlayerSetup

	arm_func_start NNS_SndArcPlayerStartSeqArc
NNS_SndArcPlayerStartSeqArc: ; 0x0201C388
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl NNS_SndArcGetSeqArcInfo
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r0]
	bl NNS_SndArcGetFileAddress
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r5
	bl NNSi_SndSeqArcGetSeqInfo
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	stmia sp, {r0, r4, r6}
	str r5, [sp, #0xc]
	ldrb r1, [r0, #9]
	ldrh r2, [r0, #4]
	ldrb r3, [r0, #8]
	mov r0, r7
	bl StartSeqArc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_SndArcPlayerStartSeqArc

	arm_func_start StartSeqArc
StartSeqArc: ; 0x0201C408
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r2
	mov r2, r3
	ldr r7, [sp, #0x20]
	mov r4, r0
	mov r5, r1
	bl NNSi_SndPlayerAllocSeqPlayer
	movs r6, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r6
	bl NNSi_SndPlayerAllocHeap
	mov r5, #0
	add r12, sp, #4
	mov r2, r0
	mov r0, r8
	mov r3, r5
	mov r1, #6
	str r12, [sp]
	bl NNSi_SndArcLoadBank
	cmp r0, #0
	beq _0201C480
	mov r0, r6
	bl NNSi_SndPlayerFreeSeqPlayer
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0201C480:
	ldr r12, [sp, #0x24]
	ldr r2, [r7]
	ldr r1, [r12, #0x18]
	ldr r3, [sp, #4]
	mov r0, r6
	add r1, r12, r1
	bl NNSi_SndPlayerStartSeq
	ldrb r1, [r7, #6]
	mov r0, r4
	bl NNS_SndPlayerSetInitialVolume
	ldrb r1, [r7, #7]
	mov r0, r4
	bl NNS_SndPlayerSetChannelPriority
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r0, r4
	bl NNS_SndPlayerSetSeqArcNo
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end StartSeqArc

	arm_func_start NNSi_SndArcStrmMain
NNSi_SndArcStrmMain: ; 0x0201C4D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _0201C5D4 ; =SNDi_DecibelTable
	ldr r5, _0201C5D8 ; =sStrmPlayer
	mov r7, #0
	mov r9, #0x17c
_0201C4E4:
	mla r6, r7, r9, r5
	ldr r1, [r6, #0x118]
	mov r0, r1, lsl #0x1f
	movs r0, r0, asr #0x1f
	beq _0201C5C4
	ldr r0, [r6, #0x11c]
	cmp r0, #0
	bne _0201C508
	b _0201C5BC
_0201C508:
	mov r0, r1, lsl #0x1d
	movs r0, r0, asr #0x1f
	ldrne r0, [r6, #0x120]
	cmpne r0, #0
	beq _0201C534
	mov r0, r6
	bl NNS_SndStrmStart
	ldr r0, [r6, #0x118]
	orr r0, r0, #2
	bic r0, r0, #4
	str r0, [r6, #0x118]
_0201C534:
	ldr r0, [r6, #0x118]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _0201C5C4
	add r0, r6, #0xf0
	bl NNSi_SndFaderUpdate
	ldr r1, [r6, #0x15c]
	add r0, r6, #0xf0
	mov r1, r1, lsl #1
	ldrsh r8, [r4, r1]
	bl NNSi_SndFaderGet
	mov r0, r0, asr #8
	ldr r1, [r6, #0x160]
	mov r0, r0, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r4, r0]
	ldrsh r2, [r4, r2]
	ldr r0, [r6, #0x164]
	add r1, r1, r8
	add r8, r2, r1
	cmp r8, r0
	beq _0201C59C
	mov r0, r6
	mov r1, r8
	bl NNS_SndStrmSetVolume
	str r8, [r6, #0x164]
_0201C59C:
	ldr r0, [r6, #0x118]
	mov r0, r0, lsl #0x1c
	movs r0, r0, asr #0x1f
	beq _0201C5C4
	add r0, r6, #0xf0
	bl NNSi_SndFaderIsFinished
	cmp r0, #0
	beq _0201C5C4
_0201C5BC:
	mov r0, r6
	bl ForceStopStrm
_0201C5C4:
	add r7, r7, #1
	cmp r7, #4
	blt _0201C4E4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0201C5D4: .word SNDi_DecibelTable
_0201C5D8: .word sStrmPlayer
	arm_func_end NNSi_SndArcStrmMain

	arm_func_start FreePlayer
FreePlayer: ; 0x0201C5DC
	ldr r2, [r0, #0x154]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2]
	strne r1, [r0, #0x154]
	ldr r1, [r0, #0x118]
	bic r1, r1, #1
	bic r1, r1, #4
	bic r1, r1, #2
	str r1, [r0, #0x118]
	bx lr
	arm_func_end FreePlayer

	arm_func_start ForceStopStrm
ForceStopStrm: ; 0x0201C608
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0201C698 ; =0x02099904
	bl OS_LockMutex
	ldr r0, _0201C69C ; =0x0209821C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201C634
	add r0, r0, #0xc8
	add r0, r0, #0x1000
	bl OS_LockMutex
_0201C634:
	ldr r0, [r4, #0x118]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _0201C64C
	mov r0, r4
	bl NNS_SndStrmStop
_0201C64C:
	ldr r0, [r4, #0x118]
	mov r0, r0, lsl #0x1f
	movs r0, r0, asr #0x1f
	beq _0201C668
	ldr r1, [r4, #0x178]
	mov r0, r4
	blx r1
_0201C668:
	mov r0, r4
	bl ShutdownPlayer
	ldr r0, _0201C698 ; =0x02099904
	bl OS_UnlockMutex
	ldr r0, _0201C69C ; =0x0209821C
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r0, #0xc8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
_0201C698: .word unk_02099904
_0201C69C: .word nns_sndarc_initialized
	arm_func_end ForceStopStrm

	arm_func_start ShutdownPlayer
ShutdownPlayer: ; 0x0201C6A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x118]
	mov r1, r1, lsl #0x1f
	movs r1, r1, asr #0x1f
	ldmeqfd sp!, {r4, pc}
	bl FreeChannel
	ldr r1, [r4, #0x170]
	mov r0, r4
	blx r1
	ldr r0, _0201C700 ; =0x0209991C
	mov r1, r4
	bl RemoveCommandByPlayer
	ldr r0, _0201C704 ; =0x0209821C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201C6F4
	add r0, r0, #0xe0
	mov r1, r4
	add r0, r0, #0x1000
	bl RemoveCommandByPlayer
_0201C6F4:
	mov r0, r4
	bl FreePlayer
	ldmfd sp!, {r4, pc}
_0201C700: .word unk_0209991C
_0201C704: .word nns_sndarc_initialized
	arm_func_end ShutdownPlayer

	arm_func_start FreeChannel
FreeChannel: ; 0x0201C708
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x128]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	subs r1, r1, #1
	str r1, [r0, #0x128]
	ldmnefd sp!, {r3, pc}
	bl NNS_SndStrmFreeChannel
	ldmfd sp!, {r3, pc}
	arm_func_end FreeChannel

	arm_func_start RemoveCommandByPlayer
RemoveCommandByPlayer: ; 0x0201C72C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, r8
	mov r1, #0
	bl NNS_FndGetNextListObject
	movs r5, r0
	beq _0201C790
_0201C754:
	mov r0, r8
	mov r1, r5
	bl NNS_FndGetNextListObject
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r1, r7
	bne _0201C784
	mov r0, r8
	mov r1, r5
	bl NNS_FndRemoveListObject
	mov r0, r5
	bl FreeCommandBuffer
_0201C784:
	mov r5, r6
	cmp r6, #0
	bne _0201C754
_0201C790:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end RemoveCommandByPlayer

	arm_func_start FreeCommandBuffer
FreeCommandBuffer: ; 0x0201C79C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r0, _0201C7C4 ; =0x02098228
	mov r1, r5
	bl NNS_FndAppendListObject
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_0201C7C4: .word unk_02098228
	arm_func_end FreeCommandBuffer

	arm_func_start NNSi_SndSeqArcGetSeqInfo
NNSi_SndSeqArcGetSeqInfo: ; 0x0201C7C8
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	ldr r2, [r0, #0x1c]
	cmp r1, r2
	movhs r0, #0
	bxhs lr
	mov r2, #0xc
	mul r3, r1, r2
	add r12, r0, #0x20
	ldr r1, [r12, r3]
	sub r0, r2, #0xd
	cmp r1, r0
	add r0, r12, r3
	moveq r0, #0
	bx lr
	arm_func_end NNSi_SndSeqArcGetSeqInfo

	arm_func_start NNSi_SndFaderInit
NNSi_SndFaderInit: ; 0x0201C808
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	bx lr
	arm_func_end NNSi_SndFaderInit

	arm_func_start NNSi_SndFaderSet
NNSi_SndFaderSet: ; 0x0201C820
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NNSi_SndFaderGet
	stmia r6, {r0, r5}
	mov r1, #0
	str r4, [r6, #0xc]
	str r1, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_SndFaderSet

	arm_func_start NNSi_SndFaderGet
NNSi_SndFaderGet: ; 0x0201C848
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #8]
	cmp r2, r1
	ldrge r0, [r0, #4]
	ldmgefd sp!, {r4, pc}
	ldr r4, [r0]
	ldr r0, [r0, #4]
	sub r0, r0, r4
	mul r0, r2, r0
	bl _s32_div_f
	add r0, r4, r0
	ldmfd sp!, {r4, pc}
	arm_func_end NNSi_SndFaderGet

	arm_func_start NNSi_SndFaderUpdate
NNSi_SndFaderUpdate: ; 0x0201C87C
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	addlt r1, r2, #1
	strlt r1, [r0, #8]
	bx lr
	arm_func_end NNSi_SndFaderUpdate

	arm_func_start NNSi_SndFaderIsFinished
NNSi_SndFaderIsFinished: ; 0x0201C894
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end NNSi_SndFaderIsFinished

	.bss
	.global sCurDriverInfo
sCurDriverInfo:
	.space 0x10
	.global sPreSleepCallback
sPreSleepCallback:
	.space 0x10
	.global sPostSleepCallback
sPostSleepCallback:
	.space 0x10
	.global sCaptureLock
sCaptureLock:
	.space 0x0C
	.global nns_sFreeList
nns_sFreeList:
	.space 0x0C
	.global sPrioList
sPrioList:
	.space 0x0C
	.global sSeqPlayer
sSeqPlayer:
	.space 0x440
	.global sPlayer
sPlayer:
	.space 0x18
	.global unk_02097C48
unk_02097C48:
	.space 0x04
	.global unk_02097C4C
unk_02097C4C:
	.space 0x04
	.global unk_02097C50
unk_02097C50:
	.space 0x464
	.global sStrmList
sStrmList:
	.space 0x0C
	.global sStrmChannel
sStrmChannel:
	.space 0x80
	.global sIsThreadCreated
sIsThreadCreated:
	.space 0x08
	.global sMesgQ
sMesgQ:
	.space 0x40
	.global sCapParam
sCapParam:
	.space 0x54
	.global sCurrent
sCurrent:
	.space 0x04
	.global waveArcHeader
waveArcHeader:
	.space 0x3C
	.global nns_sndarc_initialized
nns_sndarc_initialized:
	.space 0x0C
	.global unk_02098228
unk_02098228:
	.space 0x24
	.global sStrmPlayer
sStrmPlayer:
	.space 0x16B8
	.global unk_02099904
unk_02099904:
	.space 0x18
	.global unk_0209991C
unk_0209991C:
	.space 0x0C

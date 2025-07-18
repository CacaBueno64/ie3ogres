
	.include "asm/macros/function.inc"
	.include "libos.inc"

	.text
	arm_func_start OS_WaitIrq
OS_WaitIrq: ; 0x02000C98
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	cmp r5, #0
	beq _02000CC8
	ldr r1, _02000D04 ; =OS_IRQTable
	mvn r2, r4
	add r1, r1, #0x3000
	ldr r3, [r1, #0xff8]
	and r2, r3, r2
	str r2, [r1, #0xff8]
_02000CC8:
	bl OS_RestoreInterrupts
	ldr r1, _02000D04 ; =OS_IRQTable
	add r0, r1, #0x3000
	ldr r0, [r0, #0xff8]
	tst r4, r0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r1, #0x3f8
	ldr r5, _02000D08 ; =OSi_IrqThreadQueue
	add r6, r0, #0x3c00
_02000CEC:
	mov r0, r5
	bl OS_SleepThread
	ldr r0, [r6]
	tst r4, r0
	beq _02000CEC
	ldmfd sp!, {r4, r5, r6, pc}
_02000D04: .word OS_IRQTable
_02000D08: .word OSi_IrqThreadQueue
	arm_func_end OS_WaitIrq

	arm_func_start OS_IrqDummy
OS_IrqDummy: ; 0x02000D0C
	bx lr
	arm_func_end OS_IrqDummy

	arm_func_start OSi_IrqCallback
OSi_IrqCallback: ; 0x02000D10
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0xc
	mul r5, r0, r1
	ldr r2, _02000D84 ; =OSi_IrqCallbackInfo
	ldr r3, _02000D88 ; =OSi_IrqCallbackInfoIndex
	mov r4, r0, lsl #1
	ldr r1, [r2, r5]
	mov r0, #0
	ldrh r3, [r3, r4]
	mov r4, #1
	str r0, [r2, r5]
	cmp r1, #0
	mov r4, r4, lsl r3
	beq _02000D54
	ldr r0, _02000D8C ; =0x02093928
	ldr r0, [r0, r5]
	blx r1
_02000D54:
	ldr r0, _02000D90 ; =OS_IRQTable
	ldr r1, _02000D94 ; =0x02093924
	add r0, r0, #0x3000
	ldr r2, [r0, #0xff8]
	ldr r1, [r1, r5]
	orr r2, r2, r4
	str r2, [r0, #0xff8]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl OS_DisableIrqMask
	ldmfd sp!, {r3, r4, r5, pc}
_02000D84: .word OSi_IrqCallbackInfo
_02000D88: .word OSi_IrqCallbackInfoIndex
_02000D8C: .word unk_02093928
_02000D90: .word OS_IRQTable
_02000D94: .word unk_02093924
	arm_func_end OSi_IrqCallback

	arm_func_start OSi_IrqDma0
OSi_IrqDma0: ; 0x02000D98
	ldr r12, _02000DA4 ; =OSi_IrqCallback
	mov r0, #0
	bx r12
_02000DA4: .word OSi_IrqCallback
	arm_func_end OSi_IrqDma0

	arm_func_start OSi_IrqDma1
OSi_IrqDma1: ; 0x02000DA8
	ldr r12, _02000DB4 ; =OSi_IrqCallback
	mov r0, #1
	bx r12
_02000DB4: .word OSi_IrqCallback
	arm_func_end OSi_IrqDma1

	arm_func_start OSi_IrqDma2
OSi_IrqDma2: ; 0x02000DB8
	ldr r12, _02000DC4 ; =OSi_IrqCallback
	mov r0, #2
	bx r12
_02000DC4: .word OSi_IrqCallback
	arm_func_end OSi_IrqDma2

	arm_func_start OSi_IrqDma3
OSi_IrqDma3: ; 0x02000DC8
	ldr r12, _02000DD4 ; =OSi_IrqCallback
	mov r0, #3
	bx r12
_02000DD4: .word OSi_IrqCallback
	arm_func_end OSi_IrqDma3

	arm_func_start OSi_IrqTimer0
OSi_IrqTimer0: ; 0x02000DD8
	ldr r12, _02000DE4 ; =OSi_IrqCallback
	mov r0, #4
	bx r12
_02000DE4: .word OSi_IrqCallback
	arm_func_end OSi_IrqTimer0

	arm_func_start OSi_IrqTimer1
OSi_IrqTimer1: ; 0x02000DE8
	ldr r12, _02000DF4 ; =OSi_IrqCallback
	mov r0, #5
	bx r12
_02000DF4: .word OSi_IrqCallback
	arm_func_end OSi_IrqTimer1

	arm_func_start OSi_IrqTimer2
OSi_IrqTimer2: ; 0x02000DF8
	ldr r12, _02000E04 ; =OSi_IrqCallback
	mov r0, #6
	bx r12
_02000E04: .word OSi_IrqCallback
	arm_func_end OSi_IrqTimer2

	arm_func_start OSi_IrqTimer3
OSi_IrqTimer3: ; 0x02000E08
	ldr r12, _02000E14 ; =OSi_IrqCallback
	mov r0, #7
	bx r12
_02000E14: .word OSi_IrqCallback
	arm_func_end OSi_IrqTimer3

	arm_func_start OS_InitIrqTable
OS_InitIrqTable: ; 0x02000E18
	ldr r0, _02000E2C ; =OSi_IrqThreadQueue
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	bx lr
_02000E2C: .word OSi_IrqThreadQueue
	arm_func_end OS_InitIrqTable

	arm_func_start OS_SetIrqFunction
OS_SetIrqFunction: ; 0x02000E30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r2, #0xc
	ldr r4, _02000EB0 ; =OS_IRQTable
	ldr r6, _02000EB4 ; =OSi_IrqCallbackInfo
	mov r7, r8
	mov lr, r8
	mov r12, #1
	mov r3, r2
_02000E54:
	tst r0, #1
	beq _02000E9C
	mov r9, r7
	cmp r8, #8
	blt _02000E78
	cmp r8, #0xb
	suble r5, r8, #8
	mlale r9, r5, r3, r6
	ble _02000E94
_02000E78:
	cmp r8, #3
	blt _02000E90
	cmp r8, #6
	addle r5, r8, #1
	mlale r9, r5, r2, r6
	ble _02000E94
_02000E90:
	str r1, [r4, r8, lsl #2]
_02000E94:
	cmp r9, #0
	stmneia r9, {r1, r12, lr}
_02000E9C:
	add r8, r8, #1
	cmp r8, #0x16
	mov r0, r0, lsr #1
	blt _02000E54
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02000EB0: .word OS_IRQTable
_02000EB4: .word OSi_IrqCallbackInfo
	arm_func_end OS_SetIrqFunction

	arm_func_start OS_GetIrqFunction
OS_GetIrqFunction: ; 0x02000EB8
	ldr r2, _02000F3C ; =OS_IRQTable
	mov r1, #0
_02000EC0:
	tst r0, #1
	beq _02000F20
	cmp r1, #8
	blt _02000EF0
	cmp r1, #0xb
	bgt _02000EF0
	sub r1, r1, #8
	mov r0, #0xc
	mul r2, r1, r0
	ldr r0, _02000F40 ; =OSi_IrqCallbackInfo
	ldr r0, [r0, r2]
	bx lr
_02000EF0:
	cmp r1, #3
	blt _02000F18
	cmp r1, #6
	bgt _02000F18
	add r1, r1, #1
	mov r0, #0xc
	mul r2, r1, r0
	ldr r0, _02000F40 ; =OSi_IrqCallbackInfo
	ldr r0, [r0, r2]
	bx lr
_02000F18:
	ldr r0, [r2]
	bx lr
_02000F20:
	add r1, r1, #1
	cmp r1, #0x16
	mov r0, r0, lsr #1
	add r2, r2, #4
	blt _02000EC0
	mov r0, #0
	bx lr
_02000F3C: .word OS_IRQTable
_02000F40: .word OSi_IrqCallbackInfo
	arm_func_end OS_GetIrqFunction

	arm_func_start OSi_EnterDmaCallback
OSi_EnterDmaCallback: ; 0x02000F44
	stmfd sp!, {r4, r5, r6, lr}
	mov r3, #0xc
	mul r6, r0, r3
	ldr r12, _02000F80 ; =OSi_IrqCallbackInfo
	add r4, r0, #8
	mov r5, #1
	mov r0, r5, lsl r4
	ldr r3, _02000F84 ; =0x02093928
	str r1, [r12, r6]
	str r2, [r3, r6]
	bl OS_EnableIrqMask
	and r1, r0, r5, lsl r4
	ldr r0, _02000F88 ; =0x02093924
	str r1, [r0, r6]
	ldmfd sp!, {r4, r5, r6, pc}
_02000F80: .word OSi_IrqCallbackInfo
_02000F84: .word unk_02093928
_02000F88: .word unk_02093924
	arm_func_end OSi_EnterDmaCallback

	arm_func_start OSi_EnterTimerCallback
OSi_EnterTimerCallback: ; 0x02000F8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r3, #0xc
	mul r5, r0, r3
	ldr r12, _02000FC4 ; =0x02093950
	add r0, r0, #3
	mov r4, #1
	mov r0, r4, lsl r0
	ldr r3, _02000FC8 ; =0x02093958
	str r1, [r12, r5]
	str r2, [r3, r5]
	bl OS_EnableIrqMask
	ldr r0, _02000FCC ; =0x02093954
	str r4, [r0, r5]
	ldmfd sp!, {r3, r4, r5, pc}
_02000FC4: .word unk_02093950
_02000FC8: .word unk_02093958
_02000FCC: .word unk_02093954
	arm_func_end OSi_EnterTimerCallback

	arm_func_start OS_SetIrqMask
OS_SetIrqMask: ; 0x02000FD0
	ldr r3, _02000FF8 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #8]
	str r0, [r3, #8]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
_02000FF8: .word 0x04000208
	arm_func_end OS_SetIrqMask

	arm_func_start OS_EnableIrqMask
OS_EnableIrqMask: ; 0x02000FFC
	ldr r3, _02001028 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #8]
	orr r0, r1, r0
	str r0, [r3, #8]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
_02001028: .word 0x04000208
	arm_func_end OS_EnableIrqMask

	arm_func_start OS_DisableIrqMask
OS_DisableIrqMask: ; 0x0200102C
	ldr r12, _02001058 ; =0x04000208
	mov r2, #0
	ldrh r3, [r12]
	mvn r1, r0
	strh r2, [r12]
	ldr r0, [r12, #8]
	and r1, r0, r1
	str r1, [r12, #8]
	ldrh r1, [r12]
	strh r3, [r12]
	bx lr
_02001058: .word 0x04000208
	arm_func_end OS_DisableIrqMask

	arm_func_start OS_ResetRequestIrqMask
OS_ResetRequestIrqMask: ; 0x0200105C
	ldr r3, _02001084 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #0xc]
	str r0, [r3, #0xc]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
_02001084: .word 0x04000208
	arm_func_end OS_ResetRequestIrqMask

	arm_func_start OS_SetIrqStackChecker
OS_SetIrqStackChecker: ; 0x02001088
	ldr r12, _020010AC ; =OS_IRQTable
	ldr r3, _020010B0 ; =0xFDDB597D
	add r0, r12, #0x3000
	ldr r2, _020010B4 ; =0x7BF9DD5B
	ldr r1, _020010B8 ; =0x00000400
	str r3, [r0, #0xf7c]
	add r0, r12, #0x3f80
	str r2, [r0, -r1]
	bx lr
_020010AC: .word OS_IRQTable
_020010B0: .word 0xFDDB597D
_020010B4: .word 0x7BF9DD5B
_020010B8: .word 0x00000400
	arm_func_end OS_SetIrqStackChecker

	arm_func_start OS_IsResetOccurred
OS_IsResetOccurred: ; 0x020010BC
	ldr r0, _020010C8 ; =OSi_IsResetOccurred
	ldrh r0, [r0]
	bx lr
_020010C8: .word OSi_IsResetOccurred
	arm_func_end OS_IsResetOccurred

	arm_func_start OSi_CommonCallback
OSi_CommonCallback: ; 0x020010CC
	stmfd sp!, {r3, lr}
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r0, #0x10
	ldreq r0, _020010F8 ; =OSi_IsResetOccurred
	moveq r1, #1
	streqh r1, [r0]
	ldmeqfd sp!, {r3, pc}
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_020010F8: .word OSi_IsResetOccurred
	arm_func_end OSi_CommonCallback

	arm_func_start OSi_SendToPxi
OSi_SendToPxi: ; 0x020010FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0, lsl #8
	mov r5, #0xc
	mov r4, #0
_0200110C:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _0200110C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end OSi_SendToPxi

	arm_func_start OS_InitLock
OS_InitLock: ; 0x02001128
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020011E8 ; =isInitialized_02093984
	ldr r0, [r3]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r5, _020011EC ; =0x02FFFFF0
	mov r2, #0
	mov r4, #1
	mov r1, r5
	str r2, [r5]
	mov r0, #0x7e
	str r4, [r3]
	bl OS_LockByWord
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _02001180
	mov r4, #0x400
_0200116C:
	mov r0, r4
	blx SVC_WaitByLoop
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _0200116C
_02001180:
	ldr r4, _020011F0 ; =0x02FFFFB0
	mvn r1, #0
	mov r5, #0
	mov r0, r5
	str r1, [r4]
	mov r3, r1, lsl #0x10
	add r1, r4, #0x10
	mov r2, #0x28
	str r3, [r4, #4]
	bl MIi_CpuClear32
	ldr r12, _020011F4 ; =0x04000204
	mov r2, r5
	ldrh r3, [r12]
	add r1, r4, #0x40
	mov r0, #0x7e
	orr r3, r3, #0x800
	strh r3, [r12]
	ldrh r3, [r12]
	orr r3, r3, #0x80
	strh r3, [r12]
	bl OS_UnlockByWord
	mov r2, r5
	add r1, r4, #0x40
	mov r0, #0x7f
	bl OS_LockByWord
	ldmfd sp!, {r3, r4, r5, pc}
_020011E8: .word isInitialized_02093984
_020011EC: .word 0x02FFFFF0
_020011F0: .word 0x02FFFFB0
_020011F4: .word 0x04000204
	arm_func_end OS_InitLock

	arm_func_start OSi_DoLockByWord
OSi_DoLockByWord: ; 0x020011F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl OSi_DoTryLockByWord
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0x400
_0200121C:
	mov r0, r4
	blx SVC_WaitByLoop
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl OSi_DoTryLockByWord
	cmp r0, #0
	bgt _0200121C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end OSi_DoLockByWord

	arm_func_start OS_LockByWord
OS_LockByWord: ; 0x02001244
	ldr r12, _02001250 ; =OSi_DoLockByWord
	mov r3, #0
	bx r12
_02001250: .word OSi_DoLockByWord
	arm_func_end OS_LockByWord

	arm_func_start OSi_DoUnlockByWord
OSi_DoUnlockByWord: ; 0x02001254
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	ldrh r1, [r7, #4]
	mov r6, r2
	mov r5, r3
	cmp r0, r1
	mvnne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _02001284
	bl OS_DisableInterrupts_IrqAndFiq
	b _02001288
_02001284:
	bl OS_DisableInterrupts
_02001288:
	mov r4, r0
	mov r0, #0
	strh r0, [r7, #4]
	cmp r6, #0
	beq _020012A0
	blx r6
_020012A0:
	mov r0, #0
	str r0, [r7]
	cmp r5, #0
	mov r0, r4
	beq _020012BC
	bl OS_RestoreInterrupts_IrqAndFiq
	b _020012C0
_020012BC:
	bl OS_RestoreInterrupts
_020012C0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OSi_DoUnlockByWord

	arm_func_start OS_UnlockByWord
OS_UnlockByWord: ; 0x020012C8
	ldr r12, _020012D4 ; =OSi_DoUnlockByWord
	mov r3, #0
	bx r12
_020012D4: .word OSi_DoUnlockByWord
	arm_func_end OS_UnlockByWord

	arm_func_start OSi_DoTryLockByWord
OSi_DoTryLockByWord: ; 0x020012D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r6, r3
	mov r9, r0
	mov r8, r1
	mov r7, r2
	beq _020012F8
	bl OS_DisableInterrupts_IrqAndFiq
	b _020012FC
_020012F8:
	bl OS_DisableInterrupts
_020012FC:
	mov r5, r0
	mov r0, r9
	mov r1, r8
	bl MI_SwapWord
	movs r4, r0
	bne _02001324
	cmp r7, #0
	beq _02001320
	blx r7
_02001320:
	strh r9, [r8, #4]
_02001324:
	cmp r6, #0
	mov r0, r5
	beq _02001338
	bl OS_RestoreInterrupts_IrqAndFiq
	b _0200133C
_02001338:
	bl OS_RestoreInterrupts
_0200133C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end OSi_DoTryLockByWord

	arm_func_start OS_TryLockByWord
OS_TryLockByWord: ; 0x02001344
	ldr r12, _02001350 ; =OSi_DoTryLockByWord
	mov r3, #0
	bx r12
_02001350: .word OSi_DoTryLockByWord
	arm_func_end OS_TryLockByWord

	arm_func_start OS_UnLockCartridge
OS_UnLockCartridge: ; 0x02001354
	ldr r1, _02001368 ; =0x02FFFFE8
	ldr r2, _0200136C ; =OSi_FreeCartridgeBus
	ldr r12, _02001370 ; =OSi_DoUnlockByWord
	mov r3, #1
	bx r12
_02001368: .word 0x02FFFFE8
_0200136C: .word OSi_FreeCartridgeBus
_02001370: .word OSi_DoUnlockByWord
	arm_func_end OS_UnLockCartridge

	arm_func_start OS_UnlockCartridge
OS_UnlockCartridge: ; 0x02001374
	ldr r1, _0200137C ; =OS_UnLockCartridge
	bx r1
_0200137C: .word OS_UnLockCartridge
	arm_func_end OS_UnlockCartridge

	arm_func_start OS_TryLockCartridge
OS_TryLockCartridge: ; 0x02001380
	ldr r1, _02001394 ; =0x02FFFFE8
	ldr r2, _02001398 ; =OSi_AllocateCartridgeBus
	ldr r12, _0200139C ; =OSi_DoTryLockByWord
	mov r3, #1
	bx r12
_02001394: .word 0x02FFFFE8
_02001398: .word OSi_AllocateCartridgeBus
_0200139C: .word OSi_DoTryLockByWord
	arm_func_end OS_TryLockCartridge

	arm_func_start OSi_AllocateCartridgeBus
OSi_AllocateCartridgeBus: ; 0x020013A0
	ldr r1, _020013B4 ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
	bx lr
_020013B4: .word 0x04000204
	arm_func_end OSi_AllocateCartridgeBus

	arm_func_start OSi_FreeCartridgeBus
OSi_FreeCartridgeBus: ; 0x020013B8
	ldr r1, _020013CC ; =0x04000204
	ldrh r0, [r1]
	orr r0, r0, #0x80
	strh r0, [r1]
	bx lr
_020013CC: .word 0x04000204
	arm_func_end OSi_FreeCartridgeBus

	arm_func_start OS_UnlockCard
OS_UnlockCard: ; 0x020013D0
	ldr r1, _020013E0 ; =0x02FFFFE0
	ldr r2, _020013E4 ; =OSi_FreeCardBus
	ldr r12, _020013E8 ; =OS_UnlockByWord
	bx r12
_020013E0: .word 0x02FFFFE0
_020013E4: .word OSi_FreeCardBus
_020013E8: .word OS_UnlockByWord
	arm_func_end OS_UnlockCard

	arm_func_start OS_TryLockCard
OS_TryLockCard: ; 0x020013EC
	ldr r1, _020013FC ; =0x02FFFFE0
	ldr r2, _02001400 ; =OSi_AllocateCardBus
	ldr r12, _02001404 ; =OS_TryLockByWord
	bx r12
_020013FC: .word 0x02FFFFE0
_02001400: .word OSi_AllocateCardBus
_02001404: .word OS_TryLockByWord
	arm_func_end OS_TryLockCard

	arm_func_start OSi_AllocateCardBus
OSi_AllocateCardBus: ; 0x02001408
	ldr r1, _0200141C ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x800
	strh r0, [r1]
	bx lr
_0200141C: .word 0x04000204
	arm_func_end OSi_AllocateCardBus

	arm_func_start OSi_FreeCardBus
OSi_FreeCardBus: ; 0x02001420
	ldr r1, _02001434 ; =0x04000204
	ldrh r0, [r1]
	orr r0, r0, #0x800
	strh r0, [r1]
	bx lr
_02001434: .word 0x04000204
	arm_func_end OSi_FreeCardBus

	arm_func_start OS_ReadOwnerOfLockWord
OS_ReadOwnerOfLockWord: ; 0x02001438
	ldrh r0, [r0, #4]
	bx lr
	arm_func_end OS_ReadOwnerOfLockWord

	arm_func_start OS_GetLockID
OS_GetLockID: ; 0x02001440
	ldr r3, _02001490 ; =0x02FFFFB0
	ldr r1, [r3]
	clz r2, r1
	cmp r2, #0x20
	movne r0, #0x40
	bne _02001474
	add r3, r3, #4
	ldr r1, [r3]
	clz r2, r1
	cmp r2, #0x20
	ldr r0, _02001494 ; =0xFFFFFFFD
	bxeq lr
	mov r0, #0x60
_02001474:
	add r0, r0, r2
	mov r1, #0x80000000
	mov r1, r1, lsr r2
	ldr r2, [r3]
	bic r2, r2, r1
	str r2, [r3]
	bx lr
_02001490: .word 0x02FFFFB0
_02001494: .word 0xFFFFFFFD
	arm_func_end OS_GetLockID

	arm_func_start OS_ReleaseLockID
OS_ReleaseLockID: ; 0x02001498
	ldr r3, _020014C4 ; =0x02FFFFB0
	cmp r0, #0x60
	addpl r3, r3, #4
	subpl r0, r0, #0x60
	submi r0, r0, #0x40
	mov r1, #0x80000000
	mov r1, r1, lsr r0
	ldr r2, [r3]
	orr r2, r2, r1
	str r2, [r3]
	bx lr
_020014C4: .word 0x02FFFFB0
	arm_func_end OS_ReleaseLockID

	arm_func_start OS_SPrintf
OS_SPrintf: ; 0x020014C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl OS_VSPrintf
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end OS_SPrintf

	arm_func_start OS_VSPrintf
OS_VSPrintf: ; 0x020014F0
	ldr r12, _02001504 ; =OS_VSNPrintf
	mov r3, r2
	mov r2, r1
	mvn r1, #0x80000000
	bx r12
_02001504: .word OS_VSNPrintf
	arm_func_end OS_VSPrintf

	arm_func_start OS_SNPrintf
OS_SNPrintf: ; 0x02001508
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r3, sp, #0x10
	bic r3, r3, #3
	ldr r2, [sp, #0x10]
	add r3, r3, #4
	bl OS_VSNPrintf
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end OS_SNPrintf

	arm_func_start OS_VSNPrintf
OS_VSNPrintf: ; 0x02001530
	ldr r12, _02001538 ; =STD_TVSNPrintf
	bx r12
_02001538: .word STD_TVSNPrintf
	arm_func_end OS_VSNPrintf

	arm_func_start OSi_GetUnusedThreadId
OSi_GetUnusedThreadId: ; 0x0200153C
	ldr r1, _02001550 ; =OSi_SystemCallbackInSwitchThread
	ldr r0, [r1, #0x18]
	add r0, r0, #1
	str r0, [r1, #0x18]
	bx lr
_02001550: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OSi_GetUnusedThreadId

	arm_func_start OSi_InsertLinkToQueue
OSi_InsertLinkToQueue: ; 0x02001554
	ldr r12, [r0]
	b _02001568
_0200155C:
	cmp r12, r1
	bxeq lr
	ldr r12, [r12, #0x80]
_02001568:
	cmp r12, #0
	beq _02001580
	ldr r3, [r12, #0x70]
	ldr r2, [r1, #0x70]
	cmp r3, r2
	bls _0200155C
_02001580:
	cmp r12, #0
	bne _020015AC
	ldr r3, [r0, #4]
	mov r2, #0
	cmp r3, #0
	streq r1, [r0]
	strne r1, [r3, #0x80]
	str r3, [r1, #0x7c]
	str r2, [r1, #0x80]
	str r1, [r0, #4]
	bx lr
_020015AC:
	ldr r2, [r12, #0x7c]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x80]
	str r2, [r1, #0x7c]
	str r12, [r1, #0x80]
	str r1, [r12, #0x7c]
	bx lr
	arm_func_end OSi_InsertLinkToQueue

	arm_func_start OSi_RemoveLinkFromQueue
OSi_RemoveLinkFromQueue: ; 0x020015CC
	ldr r2, [r0]
	cmp r2, #0
	beq _020015F8
	ldr r1, [r2, #0x80]
	str r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x7c]
	moveq r1, #0
	streq r1, [r0, #4]
	streq r1, [r2, #0x78]
_020015F8:
	mov r0, r2
	bx lr
	arm_func_end OSi_RemoveLinkFromQueue

	arm_func_start OSi_RemoveSpecifiedLinkFromQueue
OSi_RemoveSpecifiedLinkFromQueue: ; 0x02001600
	ldr r12, [r0]
	mov r2, r12
	cmp r12, #0
	beq _0200164C
_02001610:
	cmp r2, r1
	ldr r3, [r2, #0x80]
	bne _02001640
	cmp r12, r2
	ldr r12, [r2, #0x7c]
	streq r3, [r0]
	strne r3, [r12, #0x80]
	ldr r1, [r0, #4]
	cmp r1, r2
	streq r12, [r0, #4]
	strne r12, [r3, #0x7c]
	b _0200164C
_02001640:
	mov r2, r3
	cmp r3, #0
	bne _02001610
_0200164C:
	mov r0, r2
	bx lr
	arm_func_end OSi_RemoveSpecifiedLinkFromQueue

	arm_func_start OSi_RemoveMutexLinkFromQueue
OSi_RemoveMutexLinkFromQueue: ; 0x02001654
	ldr r2, [r0]
	cmp r2, #0
	beq _0200167C
	ldr r1, [r2, #0x10]
	str r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x14]
	moveq r1, #0
	streq r1, [r0, #4]
_0200167C:
	mov r0, r2
	bx lr
	arm_func_end OSi_RemoveMutexLinkFromQueue

	arm_func_start OSi_InsertThreadToList
OSi_InsertThreadToList: ; 0x02001684
	stmfd sp!, {r3, lr}
	ldr r1, _020016DC ; =OSi_SystemCallbackInSwitchThread
	mov r12, #0
	ldr lr, [r1, #0x24]
	mov r3, lr
	b _020016A4
_0200169C:
	mov r12, r3
	ldr r3, [r3, #0x68]
_020016A4:
	cmp r3, #0
	beq _020016BC
	ldr r2, [r3, #0x70]
	ldr r1, [r0, #0x70]
	cmp r2, r1
	blo _0200169C
_020016BC:
	cmp r12, #0
	ldreq r1, _020016DC ; =OSi_SystemCallbackInSwitchThread
	streq lr, [r0, #0x68]
	streq r0, [r1, #0x24]
	ldrne r1, [r12, #0x68]
	strne r1, [r0, #0x68]
	strne r0, [r12, #0x68]
	ldmfd sp!, {r3, pc}
_020016DC: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OSi_InsertThreadToList

	arm_func_start OSi_RemoveThreadFromList
OSi_RemoveThreadFromList: ; 0x020016E0
	ldr r1, _02001724 ; =OSi_SystemCallbackInSwitchThread
	mov r2, #0
	ldr r1, [r1, #0x24]
	b _020016F8
_020016F0:
	mov r2, r1
	ldr r1, [r1, #0x68]
_020016F8:
	cmp r1, #0
	beq _02001708
	cmp r1, r0
	bne _020016F0
_02001708:
	cmp r2, #0
	ldreq r1, [r0, #0x68]
	ldreq r0, _02001724 ; =OSi_SystemCallbackInSwitchThread
	streq r1, [r0, #0x24]
	ldrne r0, [r0, #0x68]
	strne r0, [r2, #0x68]
	bx lr
_02001724: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OSi_RemoveThreadFromList

	arm_func_start OSi_RescheduleThread
OSi_RescheduleThread: ; 0x02001728
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020017E4 ; =OSi_SystemCallbackInSwitchThread
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [r5, #0x1e]
	ldr r4, _020017E8 ; =OSi_ThreadInfo
	cmp r0, #0
	bne _02001758
	bl OS_GetProcMode
	cmp r0, #0x12
	bne _02001764
_02001758:
	mov r0, #1
	strh r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
_02001764:
	ldr r0, [r5, #8]
	ldr r6, [r0]
	bl OS_SelectThread
	mov r5, r0
	cmp r6, r5
	cmpne r5, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x64]
	cmp r0, #2
	beq _0200179C
	mov r0, r6
	bl OS_SaveContext
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0200179C:
	ldr r0, _020017E4 ; =OSi_SystemCallbackInSwitchThread
	ldr r2, [r0]
	cmp r2, #0
	beq _020017B8
	mov r0, r6
	mov r1, r5
	blx r2
_020017B8:
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _020017D0
	mov r0, r6
	mov r1, r5
	blx r2
_020017D0:
	ldr r1, _020017E4 ; =OSi_SystemCallbackInSwitchThread
	mov r0, r5
	str r5, [r1, #0x20]
	bl OS_LoadContext
	ldmfd sp!, {r4, r5, r6, pc}
_020017E4: .word OSi_SystemCallbackInSwitchThread
_020017E8: .word OSi_ThreadInfo
	arm_func_end OSi_RescheduleThread

	arm_func_start OS_InitThread
OS_InitThread: ; 0x020017EC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r0, _02001900 ; =OSi_SystemCallbackInSwitchThread
	ldr r1, [r0, #0xc]
	cmp r1, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r3, #1
	ldr r2, _02001904 ; =0x020939A8
	str r3, [r0, #0xc]
	str r2, [r0, #8]
	ldr r1, _02001908 ; =OSi_LauncherThread
	mov r2, #0x10
	str r2, [r1, #0x70]
	mov r2, #0
	str r2, [r1, #0x6c]
	str r3, [r1, #0x64]
	str r2, [r1, #0x68]
	str r2, [r1, #0x74]
	ldr r2, _0200190C ; =0x00000000
	str r1, [r0, #0x24]
	str r1, [r0, #0x20]
	cmp r2, #0
	ldrle r0, _02001910 ; =0x027E0080
	ldrgt r1, _02001914 ; =OS_IRQTable
	ldrgt r0, _02001918 ; =0x00000400
	addgt r1, r1, #0x3f80
	subgt r0, r1, r0
	sub r3, r0, r2
	ldr r1, _02001914 ; =OS_IRQTable
	ldr r0, _02001918 ; =0x00000400
	add r2, r1, #0x3f80
	sub r2, r2, r0
	ldr r1, _02001908 ; =OSi_LauncherThread
	mov r4, #0
	str r2, [r1, #0x94]
	str r3, [r1, #0x90]
	ldr r0, _0200191C ; =0xFDDB597D
	str r4, [r1, #0x98]
	str r0, [r2, #-8]
	ldr r2, [r1, #0x90]
	ldr r3, _02001920 ; =0x7BF9DD5B
	ldr r0, _02001900 ; =OSi_SystemCallbackInSwitchThread
	str r3, [r2]
	str r4, [r1, #0xa0]
	str r4, [r1, #0x9c]
	strh r4, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	ldr r2, _02001924 ; =OSi_ThreadInfo
	ldr r1, _02001928 ; =0x02FFFFA0
	mov r0, r4
	str r2, [r1]
	bl OS_SetSwitchThreadCallback
	ldr r5, _0200192C ; =OSi_IdleThread
	mov r12, #0xc8
	mov r2, r4
	ldr r1, _02001930 ; =OSi_IdleThreadProc
	ldr r3, _02001934 ; =OSi_Initialized
	mov r0, r5
	str r12, [sp]
	mov r4, #0x1f
	str r4, [sp, #4]
	bl OS_CreateThread
	mov r0, #0x20
	str r0, [r5, #0x70]
	mov r0, #1
	str r0, [r5, #0x64]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_02001900: .word OSi_SystemCallbackInSwitchThread
_02001904: .word unk_020939A8
_02001908: .word OSi_LauncherThread
_0200190C: .word 0x00000000
_02001910: .word 0x027E0080
_02001914: .word OS_IRQTable
_02001918: .word 0x00000400
_0200191C: .word 0xFDDB597D
_02001920: .word 0x7BF9DD5B
_02001924: .word OSi_ThreadInfo
_02001928: .word 0x02FFFFA0
_0200192C: .word OSi_IdleThread
_02001930: .word OSi_IdleThreadProc
_02001934: .word OSi_Initialized
	arm_func_end OS_InitThread

	arm_func_start OS_IsThreadAvailable
OS_IsThreadAvailable: ; 0x02001938
	ldr r0, _02001944 ; =OSi_IsThreadInitialized
	ldr r0, [r0]
	bx lr
_02001944: .word OSi_IsThreadInitialized
	arm_func_end OS_IsThreadAvailable

	arm_func_start OS_CreateThread
OS_CreateThread: ; 0x02001948
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r6, r1
	mov r8, r2
	mov r7, r3
	bl OS_DisableInterrupts
	mov r5, r0
	bl OSi_GetUnusedThreadId
	str r0, [r9, #0x6c]
	ldr r0, [sp, #0x24]
	mov r4, #0
	str r0, [r9, #0x70]
	str r4, [r9, #0x64]
	str r4, [r9, #0x74]
	mov r0, r9
	bl OSi_InsertThreadToList
	mov r1, r6
	str r7, [r9, #0x94]
	str r4, [r9, #0x98]
	ldr r2, [sp, #0x20]
	ldr r0, _02001A2C ; =0xFDDB597D
	sub r6, r7, r2
	str r6, [r9, #0x90]
	str r0, [r7, #-8]
	sub r2, r7, #8
	ldr r7, _02001A30 ; =0x7BF9DD5B
	ldr r3, [r9, #0x90]
	mov r0, r9
	str r7, [r3]
	str r4, [r9, #0xa0]
	str r4, [r9, #0x9c]
	bl OS_InitContext
	str r8, [r9, #4]
	add r1, r6, #4
	ldr r2, _02001A34 ; =OS_ExitThread
	mov r0, r4
	str r2, [r9, #0x3c]
	ldr r2, [sp, #0x20]
	sub r2, r2, #0xc
	bl MIi_CpuClear32
	str r4, [r9, #0x84]
	str r4, [r9, #0x88]
	str r4, [r9, #0x8c]
	mov r0, r9
	mov r1, r4
	bl OS_SetThreadDestructor
	str r4, [r9, #0x78]
	str r4, [r9, #0x80]
	str r4, [r9, #0x7c]
	mov r0, r4
	add r1, r9, #0xa4
	mov r2, #0xc
	bl MIi_CpuClear32
	str r4, [r9, #0xb0]
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02001A2C: .word 0xFDDB597D
_02001A30: .word 0x7BF9DD5B
_02001A34: .word OS_ExitThread
	arm_func_end OS_CreateThread

	arm_func_start OS_ExitThread
OS_ExitThread: ; 0x02001A38
	stmfd sp!, {r3, lr}
	bl OS_DisableInterrupts
	ldr r0, _02001A54 ; =OSi_SystemCallbackInSwitchThread
	mov r1, #0
	ldr r0, [r0, #0x20]
	bl OSi_ExitThread_ArgSpecified
	ldmfd sp!, {r3, pc}
_02001A54: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OS_ExitThread

	arm_func_start OSi_ExitThread_ArgSpecified
OSi_ExitThread_ArgSpecified: ; 0x02001A58
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _02001AA8 ; =OSi_SystemCallbackInSwitchThread
	mov r5, r0
	ldr r2, [r2, #0x14]
	mov r4, r1
	cmp r2, #0
	beq _02001A9C
	ldr r1, _02001AAC ; =OSi_ExitThread
	bl OS_InitContext
	ldr r0, [r5]
	mov r1, #1
	orr r2, r0, #0x80
	stmia r5, {r2, r4}
	mov r0, r5
	str r1, [r5, #0x64]
	bl OS_LoadContext
	ldmfd sp!, {r3, r4, r5, pc}
_02001A9C:
	mov r0, r4
	bl OSi_ExitThread
	ldmfd sp!, {r3, r4, r5, pc}
_02001AA8: .word OSi_SystemCallbackInSwitchThread
_02001AAC: .word OSi_ExitThread
	arm_func_end OSi_ExitThread_ArgSpecified

	arm_func_start OSi_ExitThread
OSi_ExitThread: ; 0x02001AB0
	stmfd sp!, {r3, lr}
	ldr r1, _02001AE4 ; =OSi_SystemCallbackInSwitchThread
	ldr r1, [r1, #8]
	ldr r3, [r1]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _02001ADC
	mov r1, #0
	str r1, [r3, #0xb4]
	blx r2
	bl OS_DisableInterrupts
_02001ADC:
	bl OSi_ExitThread_Destroy
	ldmfd sp!, {r3, pc}
_02001AE4: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OSi_ExitThread

	arm_func_start OSi_ExitThread_Destroy
OSi_ExitThread_Destroy: ; 0x02001AE8
	stmfd sp!, {r4, lr}
	ldr r0, _02001B40 ; =OSi_SystemCallbackInSwitchThread
	ldr r0, [r0, #8]
	ldr r4, [r0]
	bl OS_DisableScheduler
	mov r0, r4
	bl OSi_UnlockAllMutex
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _02001B18
	mov r1, r4
	bl OSi_RemoveSpecifiedLinkFromQueue
_02001B18:
	mov r0, r4
	bl OSi_RemoveThreadFromList
	mov r1, #2
	add r0, r4, #0x9c
	str r1, [r4, #0x64]
	bl OS_WakeupThread
	bl OS_EnableScheduler
	bl OS_RescheduleThread
	bl OS_Terminate
	ldmfd sp!, {r4, pc}
_02001B40: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OSi_ExitThread_Destroy

	arm_func_start OS_DestroyThread
OS_DestroyThread: ; 0x02001B44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _02001BBC ; =OSi_SystemCallbackInSwitchThread
	mov r4, r0
	ldr r0, [r1, #0x20]
	cmp r0, r5
	bne _02001B68
	bl OSi_ExitThread_Destroy
_02001B68:
	bl OS_DisableScheduler
	mov r0, r5
	bl OSi_UnlockAllMutex
	mov r0, r5
	bl OSi_CancelThreadAlarmForSleep
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _02001B90
	mov r1, r5
	bl OSi_RemoveSpecifiedLinkFromQueue
_02001B90:
	mov r0, r5
	bl OSi_RemoveThreadFromList
	mov r1, #2
	add r0, r5, #0x9c
	str r1, [r5, #0x64]
	bl OS_WakeupThread
	bl OS_EnableScheduler
	mov r0, r4
	bl OS_RestoreInterrupts
	bl OS_RescheduleThread
	ldmfd sp!, {r3, r4, r5, pc}
_02001BBC: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OS_DestroyThread

	arm_func_start OSi_CancelThreadAlarmForSleep
OSi_CancelThreadAlarmForSleep: ; 0x02001BC0
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0xb0]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl OS_CancelAlarm
	ldmfd sp!, {r3, pc}
	arm_func_end OSi_CancelThreadAlarmForSleep

	arm_func_start OS_JoinThread
OS_JoinThread: ; 0x02001BD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, [r5, #0x64]
	mov r4, r0
	cmp r1, #2
	beq _02001C08
_02001BF4:
	add r0, r5, #0x9c
	bl OS_SleepThread
	ldr r0, [r5, #0x64]
	cmp r0, #2
	bne _02001BF4
_02001C08:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end OS_JoinThread

	arm_func_start OS_IsThreadTerminated
OS_IsThreadTerminated: ; 0x02001C14
	ldr r0, [r0, #0x64]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end OS_IsThreadTerminated

	arm_func_start OS_SleepThread
OS_SleepThread: ; 0x02001C28
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl OS_DisableInterrupts
	ldr r1, _02001C74 ; =OSi_SystemCallbackInSwitchThread
	mov r4, r0
	ldr r0, [r1, #8]
	cmp r6, #0
	ldr r5, [r0]
	beq _02001C5C
	mov r0, r6
	mov r1, r5
	str r6, [r5, #0x78]
	bl OSi_InsertLinkToQueue
_02001C5C:
	mov r0, #0
	str r0, [r5, #0x64]
	bl OSi_RescheduleThread
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_02001C74: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OS_SleepThread

	arm_func_start OS_WakeupThread
OS_WakeupThread: ; 0x02001C78
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl OS_DisableInterrupts
	ldr r1, [r7]
	mov r6, r0
	cmp r1, #0
	beq _02001CD4
	beq _02001CC4
	mov r5, #1
	mov r4, #0
_02001CA0:
	mov r0, r7
	bl OSi_RemoveLinkFromQueue
	str r5, [r0, #0x64]
	str r4, [r0, #0x78]
	str r4, [r0, #0x80]
	str r4, [r0, #0x7c]
	ldr r0, [r7]
	cmp r0, #0
	bne _02001CA0
_02001CC4:
	mov r0, #0
	str r0, [r7, #4]
	str r0, [r7]
	bl OSi_RescheduleThread
_02001CD4:
	mov r0, r6
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OS_WakeupThread

	arm_func_start OS_WakeupThreadDirect
OS_WakeupThreadDirect: ; 0x02001CE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r1, #1
	mov r4, r0
	str r1, [r5, #0x64]
	bl OSi_RescheduleThread
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end OS_WakeupThreadDirect

	arm_func_start OS_SelectThread
OS_SelectThread: ; 0x02001D08
	ldr r0, _02001D30 ; =OSi_SystemCallbackInSwitchThread
	ldr r0, [r0, #0x24]
	b _02001D18
_02001D14:
	ldr r0, [r0, #0x68]
_02001D18:
	cmp r0, #0
	bxeq lr
	ldr r1, [r0, #0x64]
	cmp r1, #1
	bne _02001D14
	bx lr
_02001D30: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OS_SelectThread

	arm_func_start OS_RescheduleThread
OS_RescheduleThread: ; 0x02001D34
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl OSi_RescheduleThread
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
	arm_func_end OS_RescheduleThread

	arm_func_start OS_YieldThread
OS_YieldThread: ; 0x02001D50
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _02001DFC ; =OSi_SystemCallbackInSwitchThread
	mov r7, #0
	mov r4, r7
	mov r8, r7
	ldr r6, [r5, #0x20]
	bl OS_DisableInterrupts
	ldr r1, [r5, #0x24]
	mov r5, r0
	mov r0, r7
	cmp r1, #0
	beq _02001DAC
	ldr r2, [r6, #0x70]
_02001D84:
	cmp r1, r6
	moveq r7, r0
	ldr r0, [r1, #0x70]
	cmp r2, r0
	moveq r4, r1
	mov r0, r1
	ldr r1, [r1, #0x68]
	addeq r8, r8, #1
	cmp r1, #0
	bne _02001D84
_02001DAC:
	cmp r8, #1
	ble _02001DBC
	cmp r4, r6
	bne _02001DC8
_02001DBC:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02001DC8:
	cmp r7, #0
	ldreq r1, [r6, #0x68]
	ldreq r0, _02001DFC ; =OSi_SystemCallbackInSwitchThread
	streq r1, [r0, #0x24]
	ldrne r0, [r6, #0x68]
	strne r0, [r7, #0x68]
	ldr r0, [r4, #0x68]
	str r0, [r6, #0x68]
	str r6, [r4, #0x68]
	bl OSi_RescheduleThread
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02001DFC: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OS_YieldThread

	arm_func_start OS_SetThreadPriority
OS_SetThreadPriority: ; 0x02001E00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _02001EA0 ; =OSi_SystemCallbackInSwitchThread
	mov r7, r0
	mov r6, r1
	ldr r8, [r2, #0x24]
	mov r4, #0
	bl OS_DisableInterrupts
	mov r5, r0
	b _02001E2C
_02001E24:
	mov r4, r8
	ldr r8, [r8, #0x68]
_02001E2C:
	cmp r8, #0
	beq _02001E3C
	cmp r8, r7
	bne _02001E24
_02001E3C:
	cmp r8, #0
	ldrne r0, _02001EA4 ; =OSi_IdleThread
	cmpne r8, r0
	bne _02001E5C
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02001E5C:
	ldr r0, [r8, #0x70]
	cmp r0, r6
	beq _02001E90
	cmp r4, #0
	ldreq r1, [r7, #0x68]
	ldreq r0, _02001EA0 ; =OSi_SystemCallbackInSwitchThread
	streq r1, [r0, #0x24]
	ldrne r0, [r7, #0x68]
	strne r0, [r4, #0x68]
	mov r0, r7
	str r6, [r7, #0x70]
	bl OSi_InsertThreadToList
	bl OSi_RescheduleThread
_02001E90:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02001EA0: .word OSi_SystemCallbackInSwitchThread
_02001EA4: .word OSi_IdleThread
	arm_func_end OS_SetThreadPriority

	arm_func_start OS_GetThreadPriority
OS_GetThreadPriority: ; 0x02001EA8
	ldr r0, [r0, #0x70]
	bx lr
	arm_func_end OS_GetThreadPriority

	arm_func_start OS_Sleep
OS_Sleep: ; 0x02001EB0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	add r4, sp, #8
	mov r5, r0
	mov r0, r4
	bl OS_CreateAlarm
	ldr r0, _02001F44 ; =OSi_SystemCallbackInSwitchThread
	ldr r0, [r0, #8]
	ldr r0, [r0]
	str r0, [sp, #4]
	bl OS_DisableInterrupts
	ldr r1, _02001F48 ; =0x000082EA
	ldr r2, [sp, #4]
	umull r1, r12, r5, r1
	mov r1, r1, lsr #6
	str r4, [r2, #0xb0]
	add r2, sp, #4
	mov r5, r0
	str r2, [sp]
	ldr r3, _02001F4C ; =OSi_SleepAlarmCallback
	mov r0, r4
	mov r2, r12, lsr #6
	orr r1, r1, r12, lsl #26
	bl OS_SetAlarm
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02001F34
	mov r4, #0
_02001F20:
	mov r0, r4
	bl OS_SleepThread
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02001F20
_02001F34:
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, pc}
_02001F44: .word OSi_SystemCallbackInSwitchThread
_02001F48: .word 0x000082EA
_02001F4C: .word OSi_SleepAlarmCallback
	arm_func_end OS_Sleep

	arm_func_start OSi_SleepAlarmCallback
OSi_SleepAlarmCallback: ; 0x02001F50
	ldr r2, [r0]
	mov r1, #0
	str r1, [r0]
	ldr r12, _02001F6C ; =OS_WakeupThreadDirect
	mov r0, r2
	str r1, [r2, #0xb0]
	bx r12
_02001F6C: .word OS_WakeupThreadDirect
	arm_func_end OSi_SleepAlarmCallback

	arm_func_start OS_SetSwitchThreadCallback
OS_SetSwitchThreadCallback: ; 0x02001F70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _02001F94 ; =OSi_SystemCallbackInSwitchThread
	ldr r4, [r1, #0x28]
	str r5, [r1, #0x28]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02001F94: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OS_SetSwitchThreadCallback

	arm_func_start OSi_IdleThreadProc
OSi_IdleThreadProc: ; 0x02001F98
	stmfd sp!, {r3, lr}
	bl OS_EnableInterrupts
_02001FA0:
	bl OS_Halt
	b _02001FA0
	arm_func_end OSi_IdleThreadProc

	arm_func_start OS_DisableScheduler
OS_DisableScheduler: ; 0x02001FA8
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _02001FD4 ; =OSi_SystemCallbackInSwitchThread
	ldr r3, [r1, #4]
	cmn r3, #1
	addlo r2, r3, #1
	movlo r4, r3
	strlo r2, [r1, #4]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02001FD4: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OS_DisableScheduler

	arm_func_start OS_EnableScheduler
OS_EnableScheduler: ; 0x02001FD8
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _02002008 ; =OSi_SystemCallbackInSwitchThread
	mov r4, #0
	ldr r3, [r1, #4]
	cmp r3, #0
	subne r2, r3, #1
	movne r4, r3
	strne r2, [r1, #4]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02002008: .word OSi_SystemCallbackInSwitchThread
	arm_func_end OS_EnableScheduler

	arm_func_start OS_SetThreadDestructor
OS_SetThreadDestructor: ; 0x0200200C
	str r1, [r0, #0xb4]
	bx lr
	arm_func_end OS_SetThreadDestructor

	arm_func_start OS_InitContext
OS_InitContext: ; 0x02002014
	add r1, r1, #4
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	sub r2, r2, #0x40
	tst r2, #4
	subne r2, r2, #4
	str r2, [r0, #0x38]
	ands r1, r1, #1
	movne r1, #0x3f
	moveq r1, #0x1f
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end OS_InitContext

	arm_func_start OS_SaveContext
OS_SaveContext: ; 0x02002080
	stmfd sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _020020C8 ; =CP_SaveContext
	blx r1
	ldmfd sp!, {r0, lr}
	add r1, r0, #0
	mrs r2, cpsr
	str r2, [r1], #4
	mov r0, #0xd3
	msr cpsr_c, r0
	str sp, [r1, #0x40]
	msr cpsr_c, r2
	mov r0, #1
	stmia r1, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, sp, lr}
	add r0, pc, #0x8 ; =0x020020C8
	str r0, [r1, #0x3c]
	mov r0, #0
	bx lr
_020020C8: .word CP_SaveContext
	arm_func_end OS_SaveContext

	arm_func_start OS_LoadContext
OS_LoadContext: ; 0x020020CC
	stmfd sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _0200210C ; =CPi_RestoreContext
	blx r1
	ldmfd sp!, {r0, lr}
	mrs r1, cpsr
	bic r1, r1, #0x1f
	orr r1, r1, #0xd3
	msr cpsr_c, r1
	ldr r1, [r0], #4
	msr spsr_fsxc, r1
	ldr sp, [r0, #0x40]
	ldr lr, [r0, #0x3c]
	ldmia r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, sp, lr} ^
	nop
	subs pc, lr, #4
_0200210C: .word CPi_RestoreContext
	arm_func_end OS_LoadContext

	arm_func_start OS_GetConsoleType
OS_GetConsoleType: ; 0x02002110
	stmfd sp!, {r4, lr}
	ldr r4, _02002140 ; =OSi_RunningConsoleTypeCache
	ldr r0, [r4, #4]
	cmn r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, #0x80000001
	str r0, [r4, #4]
	bl OSi_DetectDeviceType
	ldr r1, [r4, #4]
	orr r0, r1, r0
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_02002140: .word OSi_RunningConsoleTypeCache
	arm_func_end OS_GetConsoleType

	arm_func_start OSi_DetectDeviceType
OSi_DetectDeviceType: ; 0x02002144
	stmfd sp!, {r3, lr}
	bl OS_GetBootType
	ldr r1, _02002158 ; =table
	ldr r0, [r1, r0, lsl #2]
	ldmfd sp!, {r3, pc}
_02002158: .word table
	arm_func_end OSi_DetectDeviceType

	arm_func_start OS_IsRunOnEmulator
OS_IsRunOnEmulator: ; 0x0200215C
	stmfd sp!, {r3, lr}
	bl OS_GetConsoleType
	tst r0, #0x10000000
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end OS_IsRunOnEmulator

	arm_func_start OS_InitMessageQueue
OS_InitMessageQueue: ; 0x02002174
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0]
	str r3, [r0, #0xc]
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	bx lr
	arm_func_end OS_InitMessageQueue

	arm_func_start OS_SendMessage
OS_SendMessage: ; 0x0200219C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, r2
	bl OS_DisableInterrupts
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	mov r6, r0
	cmp r1, r2
	bgt _020021F8
	and r7, r7, #1
_020021C8:
	cmp r7, #0
	bne _020021E0
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020021E0:
	mov r0, r5
	bl OS_SleepThread
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	cmp r1, r2
	ble _020021C8
_020021F8:
	ldr r0, [r5, #0x18]
	add r0, r0, r2
	bl _s32_div_f
	ldr r2, [r5, #0x10]
	add r0, r5, #8
	str r4, [r2, r1, lsl #2]
	ldr r1, [r5, #0x1c]
	add r1, r1, #1
	str r1, [r5, #0x1c]
	bl OS_WakeupThread
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OS_SendMessage

	arm_func_start OS_ReceiveMessage
OS_ReceiveMessage: ; 0x02002230
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl OS_DisableInterrupts
	ldr r1, [r6, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _02002284
	and r7, r7, #1
_02002258:
	cmp r7, #0
	bne _02002270
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02002270:
	add r0, r6, #8
	bl OS_SleepThread
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _02002258
_02002284:
	cmp r5, #0
	ldrne r1, [r6, #0x10]
	ldrne r0, [r6, #0x18]
	ldrne r0, [r1, r0, lsl #2]
	strne r0, [r5]
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x14]
	add r0, r0, #1
	bl _s32_div_f
	ldr r2, [r6, #0x1c]
	mov r0, r6
	sub r2, r2, #1
	str r1, [r6, #0x18]
	str r2, [r6, #0x1c]
	bl OS_WakeupThread
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OS_ReceiveMessage

	arm_func_start OS_JamMessage
OS_JamMessage: ; 0x020022D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl OS_DisableInterrupts
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x1c]
	mov r4, r0
	cmp r1, r2
	bgt _0200232C
	and r7, r7, #1
_020022FC:
	cmp r7, #0
	bne _02002314
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02002314:
	mov r0, r6
	bl OS_SleepThread
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x1c]
	cmp r1, r0
	ble _020022FC
_0200232C:
	ldr r0, [r6, #0x18]
	add r0, r0, r1
	sub r0, r0, #1
	bl _s32_div_f
	ldr r0, [r6, #0x10]
	str r1, [r6, #0x18]
	str r5, [r0, r1, lsl #2]
	ldr r1, [r6, #0x1c]
	add r0, r6, #8
	add r1, r1, #1
	str r1, [r6, #0x1c]
	bl OS_WakeupThread
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OS_JamMessage

	arm_func_start OS_ReadMessage
OS_ReadMessage: ; 0x0200236C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl OS_DisableInterrupts
	ldr r1, [r6, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _020023C0
	and r7, r7, #1
_02002394:
	cmp r7, #0
	bne _020023AC
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020023AC:
	add r0, r6, #8
	bl OS_SleepThread
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _02002394
_020023C0:
	cmp r5, #0
	ldrne r1, [r6, #0x10]
	ldrne r0, [r6, #0x18]
	ldrne r0, [r1, r0, lsl #2]
	strne r0, [r5]
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OS_ReadMessage

	arm_func_start OS_InitMutex
OS_InitMutex: ; 0x020023E4
	ldr r1, [r0, #0xc]
	mov r2, #0
	and r1, r1, #0xff000000
	bic r1, r1, #0xff000000
	str r2, [r0, #4]
	str r2, [r0]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end OS_InitMutex

	arm_func_start OS_LockMutex
OS_LockMutex: ; 0x02002408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl OS_DisableInterrupts
	ldr r1, _02002454 ; =OSi_ThreadInfo
	mov r5, r0
	ldr r6, [r1, #4]
	mov r4, #0
_02002424:
	mov r0, r7
	bl OS_TryLockMutex
	cmp r0, #0
	bne _02002448
	mov r0, r7
	str r7, [r6, #0x84]
	bl OS_SleepThread
	str r4, [r6, #0x84]
	b _02002424
_02002448:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02002454: .word OSi_ThreadInfo
	arm_func_end OS_LockMutex

	arm_func_start OS_UnlockMutex
OS_UnlockMutex: ; 0x02002458
	ldr r12, _02002464 ; =OSi_UnlockMutexCore
	mov r1, #0x10000000
	bx r12
_02002464: .word OSi_UnlockMutexCore
	arm_func_end OS_UnlockMutex

	arm_func_start OSi_UnlockAllMutex
OSi_UnlockAllMutex: ; 0x02002468
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x88]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
_02002480:
	add r0, r5, #0x88
	bl OSi_RemoveMutexLinkFromQueue
	ldr r1, [r0, #0xc]
	and r1, r1, #0xff000000
	str r4, [r0, #8]
	bic r1, r1, #0xff000000
	str r1, [r0, #0xc]
	bl OS_WakeupThread
	ldr r0, [r5, #0x88]
	cmp r0, #0
	bne _02002480
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end OSi_UnlockAllMutex

	arm_func_start OS_TryLockMutex
OS_TryLockMutex: ; 0x020024B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl OS_DisableInterrupts
	ldr r2, [r6, #8]
	ldr r1, _02002540 ; =OSi_ThreadInfo
	mov r4, r0
	cmp r2, #0
	ldr r0, [r1, #4]
	bne _02002508
	ldr r2, [r6, #0xc]
	mov r1, r6
	bic r2, r2, #0xff000000
	orr r3, r2, #0x10000000
	add r2, r3, #1
	and r3, r3, #0xff000000
	bic r2, r2, #0xff000000
	orr r2, r3, r2
	str r0, [r6, #8]
	str r2, [r6, #0xc]
	bl OSi_EnqueueTail
	mov r5, #1
	b _02002530
_02002508:
	cmp r2, r0
	movne r5, #0
	bne _02002530
	ldr r1, [r6, #0xc]
	mov r5, #1
	add r0, r1, #1
	and r1, r1, #0xff000000
	bic r0, r0, #0xff000000
	orr r0, r1, r0
	str r0, [r6, #0xc]
_02002530:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_02002540: .word OSi_ThreadInfo
	arm_func_end OS_TryLockMutex

	arm_func_start OSi_UnlockMutexCore
OSi_UnlockMutexCore: ; 0x02002544
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl OS_DisableInterrupts
	cmp r5, #0
	ldrne r3, [r6, #0xc]
	ldr r1, _02002618 ; =OSi_ThreadInfo
	andne r3, r3, #0xff000000
	ldr r2, [r1, #4]
	mov r4, r0
	mov r1, #0
	cmpne r5, r3
	beq _02002580
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_02002580:
	ldr r0, [r6, #0xc]
	and r3, r0, #0xff000000
	cmp r3, #0x10000000
	beq _020025A0
	cmp r3, #0x20000000
	beq _020025B4
	cmp r3, #0x30000000
	bne _020025D0
_020025A0:
	ldr r0, [r6, #8]
	cmp r0, r2
	bne _020025DC
	ldr r0, [r6, #0xc]
	b _020025B4
_020025B4:
	sub r0, r0, #1
	bic r0, r0, #0xff000000
	orr r0, r3, r0
	str r0, [r6, #0xc]
	bics r0, r0, #0xff000000
	moveq r1, #1
	b _020025DC
_020025D0:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_020025DC:
	cmp r1, #0
	beq _0200260C
	mov r0, r2
	mov r1, r6
	bl OSi_DequeueItem
	ldr r0, [r6, #0xc]
	mov r2, #0
	bic r1, r0, #0xff000000
	mov r0, r6
	str r2, [r6, #8]
	str r1, [r6, #0xc]
	bl OS_WakeupThread
_0200260C:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_02002618: .word OSi_ThreadInfo
	arm_func_end OSi_UnlockMutexCore

	arm_func_start OSi_EnqueueTail
OSi_EnqueueTail: ; 0x0200261C
	ldr r3, [r0, #0x8c]
	mov r2, #0
	cmp r3, #0
	streq r1, [r0, #0x88]
	strne r1, [r3, #0x10]
	str r3, [r1, #0x14]
	str r2, [r1, #0x10]
	str r1, [r0, #0x8c]
	bx lr
	arm_func_end OSi_EnqueueTail

	arm_func_start OSi_DequeueItem
OSi_DequeueItem: ; 0x02002640
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r2, #0
	streq r1, [r0, #0x8c]
	strne r1, [r2, #0x14]
	cmp r1, #0
	streq r2, [r0, #0x88]
	strne r2, [r1, #0x10]
	bx lr
	arm_func_end OSi_DequeueItem

	arm_func_start DC_FlushAll
DC_FlushAll: ; 0x02002664
	mov r12, #0
	mov r1, #0
_0200266C:
	mov r0, #0
_02002670:
	orr r2, r1, r0
	mcr p15, 0, r12, c7, c10, 4
	mcr p15, 0, r2, c7, c14, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _02002670
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _0200266C
	bx lr
	arm_func_end DC_FlushAll

	arm_func_start DC_InvalidateRange
DC_InvalidateRange: ; 0x02002698
	add r1, r1, r0
	bic r0, r0, #0x1f
_020026A0:
	mcr p15, 0, r0, c7, c6, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020026A0
	bx lr
	arm_func_end DC_InvalidateRange

	arm_func_start DC_StoreRange
DC_StoreRange: ; 0x020026B4
	add r1, r1, r0
	bic r0, r0, #0x1f
_020026BC:
	mcr p15, 0, r0, c7, c10, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020026BC
	bx lr
	arm_func_end DC_StoreRange

	arm_func_start DC_FlushRange
DC_FlushRange: ; 0x020026D0
	mov r12, #0
	add r1, r1, r0
	bic r0, r0, #0x1f
_020026DC:
	mcr p15, 0, r12, c7, c10, 4
	mcr p15, 0, r0, c7, c14, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020026DC
	bx lr
	arm_func_end DC_FlushRange

	arm_func_start DC_WaitWriteBufferEmpty
DC_WaitWriteBufferEmpty: ; 0x020026F4
	mov r0, #0
	mcr p15, 0, r0, c7, c10, 4
	bx lr
	arm_func_end DC_WaitWriteBufferEmpty

	arm_func_start IC_InvalidateAll
IC_InvalidateAll: ; 0x02002700
	mov r0, #0
	mcr p15, 0, r0, c7, c5, 0
	bx lr
	arm_func_end IC_InvalidateAll

	arm_func_start IC_InvalidateRange
IC_InvalidateRange: ; 0x0200270C
	add r1, r1, r0
	bic r0, r0, #0x1f
_02002714:
	mcr p15, 0, r0, c7, c5, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _02002714
	bx lr
	arm_func_end IC_InvalidateRange

	arm_func_start OSi_WaitVCount0
OSi_WaitVCount0: ; 0x02002728
	mov r12, #0x4000000
	ldr r1, [r12, #0x208]
	str r12, [r12, #0x208]
_02002734:
	ldrh r0, [r12, #6]
	cmp r0, #0
	bne _02002734
	str r1, [r12, #0x208]
	bx lr
	arm_func_end OSi_WaitVCount0

	arm_func_start OS_Init
OS_Init: ; 0x02002748
	ldr r12, _02002750 ; =OSi_InitCommon
	bx r12
_02002750: .word OSi_InitCommon
	arm_func_end OS_Init

	arm_func_start OSi_InitCommon
OSi_InitCommon: ; 0x02002754
	stmfd sp!, {r3, lr}
	bl PXI_Init
	bl OS_InitArena
	bl OS_InitLock
	bl OS_InitArenaEx
	bl OS_InitIrqTable
	bl OS_SetIrqStackChecker
	bl OS_InitException
	bl MI_Init
	bl OS_InitVAlarm
	bl OSi_InitVramExclusive
	bl OS_InitThread
	bl OS_InitReset
	bl CTRDG_Init
	bl CARD_Init
	bl PM_Init
	bl OSi_WaitVCount0
	ldmfd sp!, {r3, pc}
	arm_func_end OSi_InitCommon

	arm_func_start OS_InitArena
OS_InitArena: ; 0x0200279C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020028B4 ; =OSi_Initialized
	ldr r0, [r1]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r2, #1
	mov r0, r5
	str r2, [r1]
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, r5
	bl OS_SetArenaHi
	mov r0, r5
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, r5
	bl OS_SetArenaLo
	mov r4, #2
	mov r0, r4
	mov r1, r5
	bl OS_SetArenaLo
	mov r0, r4
	mov r1, r5
	bl OS_SetArenaHi
	mov r4, #3
	mov r0, r4
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaHi
	mov r0, r4
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaLo
	mov r4, #4
	mov r0, r4
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaHi
	mov r0, r4
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaLo
	mov r4, #5
	mov r0, r4
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaHi
	mov r0, r4
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaLo
	mov r4, #6
	mov r0, r4
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaHi
	mov r0, r4
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaLo
	ldmfd sp!, {r3, r4, r5, pc}
_020028B4: .word OSi_Initialized
	arm_func_end OS_InitArena

	arm_func_start OS_InitArenaEx
OS_InitArenaEx: ; 0x020028B8
	stmfd sp!, {r4, lr}
	bl OS_GetConsoleType
	mov r4, #2
	mov r0, r4
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaHi
	mov r0, r4
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, r4
	bl OS_SetArenaLo
	mov r0, #1
	mov r1, #0x2000000
	mov r2, #0x2a
	bl OS_SetProtectionRegionEx
	ldmfd sp!, {r4, pc}
	arm_func_end OS_InitArenaEx

	arm_func_start OS_GetArenaHi
OS_GetArenaHi: ; 0x02002900
	mov r0, r0, lsl #2
	add r0, r0, #0x2f00000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xdc4]
	bx lr
	arm_func_end OS_GetArenaHi

	arm_func_start OS_GetArenaLo
OS_GetArenaLo: ; 0x02002914
	mov r0, r0, lsl #2
	add r0, r0, #0x2f00000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xda0]
	bx lr
	arm_func_end OS_GetArenaLo

	arm_func_start OS_GetInitArenaHi
OS_GetInitArenaHi: ; 0x02002928
	stmfd sp!, {r3, lr}
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020029E0
_02002938: ; jump table
	b _02002954 ; case 0
	b _020029E0 ; case 1
	b _0200295C ; case 2
	b _02002988 ; case 3
	b _02002990 ; case 4
	b _020029D0 ; case 5
	b _020029D8 ; case 6
_02002954:
	ldr r0, _020029E8 ; =0x023E0000
	ldmfd sp!, {r3, pc}
_0200295C:
	ldr r0, _020029EC ; =OSi_Initialized
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl OS_GetConsoleType
	and r0, r0, #0xf
	cmp r0, #1
	moveq r0, #0
	movne r0, #0x2700000
	ldmfd sp!, {r3, pc}
_02002988:
	mov r0, #0x2000000
	ldmfd sp!, {r3, pc}
_02002990:
	ldr r0, _020029F0 ; =OS_IRQTable
	ldr r1, _020029F4 ; =0x00000000
	ldr r2, _020029F8 ; =0x00000400
	add r3, r0, #0x3f80
	cmp r1, #0
	sub r2, r3, r2
	bne _020029BC
	ldr r1, _020029FC ; =0x027E0080
	cmp r0, r1
	movlo r0, r1
	ldmfd sp!, {r3, pc}
_020029BC:
	cmp r1, #0
	ldrlt r0, _020029FC ; =0x027E0080
	sublt r0, r0, r1
	subge r0, r2, r1
	ldmfd sp!, {r3, pc}
_020029D0:
	ldr r0, _02002A00 ; =0x02FFF680
	ldmfd sp!, {r3, pc}
_020029D8:
	ldr r0, _02002A04 ; =0x037F8000
	ldmfd sp!, {r3, pc}
_020029E0:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020029E8: .word 0x023E0000
_020029EC: .word OSi_Initialized
_020029F0: .word OS_IRQTable
_020029F4: .word 0x00000000
_020029F8: .word 0x00000400
_020029FC: .word 0x027E0080
_02002A00: .word 0x02FFF680
_02002A04: .word 0x037F8000
	arm_func_end OS_GetInitArenaHi

	arm_func_start OS_GetInitArenaLo
OS_GetInitArenaLo: ; 0x02002A08
	stmfd sp!, {r3, lr}
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02002A88
_02002A18: ; jump table
	b _02002A34 ; case 0
	b _02002A88 ; case 1
	b _02002A3C ; case 2
	b _02002A68 ; case 3
	b _02002A70 ; case 4
	b _02002A78 ; case 5
	b _02002A80 ; case 6
_02002A34:
	ldr r0, _02002A90 ; =0x021604C0
	ldmfd sp!, {r3, pc}
_02002A3C:
	ldr r0, _02002A94 ; =OSi_Initialized
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl OS_GetConsoleType
	and r0, r0, #0xf
	cmp r0, #1
	moveq r0, #0
	ldrne r0, _02002A98 ; =0x023E0000
	ldmfd sp!, {r3, pc}
_02002A68:
	ldr r0, _02002A9C ; =0x01FFBD20
	ldmfd sp!, {r3, pc}
_02002A70:
	ldr r0, _02002AA0 ; =0x027E0080
	ldmfd sp!, {r3, pc}
_02002A78:
	ldr r0, _02002AA4 ; =0x02FFF000
	ldmfd sp!, {r3, pc}
_02002A80:
	ldr r0, _02002AA8 ; =0x037F8000
	ldmfd sp!, {r3, pc}
_02002A88:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02002A90: .word 0x021604C0
_02002A94: .word OSi_Initialized
_02002A98: .word 0x023E0000
_02002A9C: .word 0x01FFBD20
_02002AA0: .word 0x027E0080
_02002AA4: .word 0x02FFF000
_02002AA8: .word 0x037F8000
	arm_func_end OS_GetInitArenaLo

	arm_func_start OS_SetArenaHi
OS_SetArenaHi: ; 0x02002AAC
	mov r0, r0, lsl #2
	add r0, r0, #0x2f00000
	add r0, r0, #0xff000
	str r1, [r0, #0xdc4]
	bx lr
	arm_func_end OS_SetArenaHi

	arm_func_start OS_SetArenaLo
OS_SetArenaLo: ; 0x02002AC0
	mov r0, r0, lsl #2
	add r0, r0, #0x2f00000
	add r0, r0, #0xff000
	str r1, [r0, #0xda0]
	bx lr
	arm_func_end OS_SetArenaLo

	arm_func_start OS_AllocFromArenaLo
OS_AllocFromArenaLo: ; 0x02002AD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_GetArenaLo
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, r5
	sub r1, r5, #1
	mvn r2, r1
	sub r0, r0, #1
	and r4, r2, r0
	add r0, r4, r6
	add r0, r0, r5
	sub r1, r0, #1
	mov r0, r7
	and r5, r2, r1
	bl OS_GetArenaHi
	cmp r5, r0
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r5
	bl OS_SetArenaLo
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OS_AllocFromArenaLo

	arm_func_start DLAddFront
DLAddFront: ; 0x02002B40
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r1]
	cmp r0, #0
	strne r1, [r0]
	mov r0, r1
	bx lr
	arm_func_end DLAddFront

	arm_func_start DLExtract
DLExtract: ; 0x02002B5C
	ldr r3, [r1, #4]
	cmp r3, #0
	ldrne r2, [r1]
	strne r2, [r3]
	ldr r2, [r1]
	cmp r2, #0
	ldreq r0, [r1, #4]
	ldrne r1, [r1, #4]
	strne r1, [r2, #4]
	bx lr
	arm_func_end DLExtract

	arm_func_start DLInsert
DLInsert: ; 0x02002B84
	stmfd sp!, {r3, lr}
	mov lr, r0
	cmp r0, #0
	mov r12, #0
	beq _02002BB0
_02002B98:
	cmp r1, lr
	bls _02002BB0
	mov r12, lr
	ldr lr, [lr, #4]
	cmp lr, #0
	bne _02002B98
_02002BB0:
	stmia r1, {r12, lr}
	cmp lr, #0
	beq _02002BEC
	str r1, [lr]
	ldr r3, [r1, #8]
	add r2, r1, r3
	cmp r2, lr
	bne _02002BEC
	ldr r2, [lr, #8]
	add r2, r3, r2
	str r2, [r1, #8]
	ldr lr, [lr, #4]
	str lr, [r1, #4]
	cmp lr, #0
	strne r1, [lr]
_02002BEC:
	cmp r12, #0
	beq _02002C24
	str r1, [r12, #4]
	ldr r2, [r12, #8]
	add r3, r12, r2
	cmp r3, r1
	ldmnefd sp!, {r3, pc}
	ldr r1, [r1, #8]
	cmp lr, #0
	add r1, r2, r1
	str r1, [r12, #8]
	str lr, [r12, #4]
	strne r12, [lr]
	ldmfd sp!, {r3, pc}
_02002C24:
	mov r0, r1
	ldmfd sp!, {r3, pc}
	arm_func_end DLInsert

	arm_func_start OS_AllocFromHeap
OS_AllocFromHeap: ; 0x02002C2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r1
	mov r7, r2
	bl OS_DisableInterrupts
	ldr r1, _02002D30 ; =OSiHeapInfo
	mov r6, r0
	ldr r1, [r1, r4, lsl #2]
	cmp r1, #0
	bne _02002C60
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02002C60:
	cmp r5, #0
	ldrlt r5, [r1]
	ldr r1, [r1, #0x10]
	mov r0, #0xc
	mla r4, r5, r0, r1
	ldr r0, [r4, #4]
	add r1, r7, #0x3f
	mov r5, r0
	cmp r0, #0
	bic r7, r1, #0x1f
	beq _02002CA4
_02002C8C:
	ldr r1, [r5, #8]
	cmp r7, r1
	ble _02002CA4
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _02002C8C
_02002CA4:
	cmp r5, #0
	bne _02002CBC
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02002CBC:
	ldr r1, [r5, #8]
	sub r1, r1, r7
	cmp r1, #0x40
	bhs _02002CDC
	mov r1, r5
	bl DLExtract
	str r0, [r4, #4]
	b _02002D10
_02002CDC:
	str r7, [r5, #8]
	add r2, r5, r7
	str r1, [r2, #8]
	ldr r0, [r5]
	str r0, [r5, r7]
	ldr r0, [r5, #4]
	str r0, [r2, #4]
	cmp r0, #0
	strne r2, [r0]
	ldr r0, [r2]
	cmp r0, #0
	strne r2, [r0, #4]
	streq r2, [r4, #4]
_02002D10:
	ldr r0, [r4, #8]
	mov r1, r5
	bl DLAddFront
	str r0, [r4, #8]
	mov r0, r6
	bl OS_RestoreInterrupts
	add r0, r5, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02002D30: .word OSiHeapInfo
	arm_func_end OS_AllocFromHeap

	arm_func_start OS_FreeToHeap
OS_FreeToHeap: ; 0x02002D34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r1, _02002D98 ; =OSiHeapInfo
	mov r4, r0
	ldr r0, [r1, r7, lsl #2]
	cmp r6, #0
	ldrlt r6, [r0]
	ldr r1, [r0, #0x10]
	mov r0, #0xc
	mla r7, r6, r0, r1
	sub r5, r5, #0x20
	ldr r0, [r7, #8]
	mov r1, r5
	bl DLExtract
	str r0, [r7, #8]
	ldr r0, [r7, #4]
	mov r1, r5
	bl DLInsert
	str r0, [r7, #4]
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02002D98: .word OSiHeapInfo
	arm_func_end OS_FreeToHeap

	arm_func_start OS_SetCurrentHeap
OS_SetCurrentHeap: ; 0x02002D9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl OS_DisableInterrupts
	ldr r1, _02002DC8 ; =OSiHeapInfo
	ldr r1, [r1, r4, lsl #2]
	ldr r4, [r1]
	str r5, [r1]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02002DC8: .word OSiHeapInfo
	arm_func_end OS_SetCurrentHeap

	arm_func_start OS_InitAlloc
OS_InitAlloc: ; 0x02002DCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r6, r3
	bl OS_DisableInterrupts
	mov r1, #0xc
	ldr r2, _02002E70 ; =OSiHeapInfo
	mul r1, r6, r1
	str r5, [r2, r7, lsl #2]
	add r2, r5, #0x14
	str r2, [r5, #0x10]
	str r6, [r5, #4]
	cmp r6, #0
	mov r7, #0
	ble _02002E40
	mvn lr, #0
	mov r12, r7
	mov r2, #0xc
_02002E18:
	mul r3, r7, r2
	ldr r6, [r5, #0x10]
	add r7, r7, #1
	str lr, [r6, r3]
	add r3, r6, r3
	str r12, [r3, #8]
	str r12, [r3, #4]
	ldr r3, [r5, #4]
	cmp r7, r3
	blt _02002E18
_02002E40:
	ldr r3, [r5, #0x10]
	bic r2, r4, #0x1f
	add r1, r3, r1
	add r1, r1, #0x1f
	bic r1, r1, #0x1f
	mvn r3, #0
	str r3, [r5]
	str r1, [r5, #8]
	str r2, [r5, #0xc]
	bl OS_RestoreInterrupts
	ldr r0, [r5, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02002E70: .word OSiHeapInfo
	arm_func_end OS_InitAlloc

	arm_func_start OS_CreateHeap
OS_CreateHeap: ; 0x02002E74
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r2, _02002F10 ; =OSiHeapInfo
	add r1, r6, #0x1f
	ldr r2, [r2, r4, lsl #2]
	bic r6, r1, #0x1f
	ldr lr, [r2, #4]
	bic r5, r5, #0x1f
	cmp lr, #0
	mov r4, #0
	ble _02002F04
	ldr r12, [r2, #0x10]
	mov r1, #0xc
_02002EB4:
	mul r3, r4, r1
	ldr r2, [r12, r3]
	add r3, r12, r3
	cmp r2, #0
	bge _02002EF8
	sub r1, r5, r6
	str r1, [r3]
	mov r2, #0
	str r2, [r6]
	str r2, [r6, #4]
	ldr r1, [r3]
	str r1, [r6, #8]
	str r6, [r3, #4]
	str r2, [r3, #8]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02002EF8:
	add r4, r4, #1
	cmp r4, lr
	blt _02002EB4
_02002F04:
	bl OS_RestoreInterrupts
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02002F10: .word OSiHeapInfo
	arm_func_end OS_CreateHeap

	arm_func_start OS_GetTotalFreeSize
OS_GetTotalFreeSize: ; 0x02002F14
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl OS_DisableInterrupts
	ldr r1, _02002F74 ; =OSiHeapInfo
	cmp r5, #0
	ldr r1, [r1, r6, lsl #2]
	ldrlt r5, [r1]
	ldr r2, [r1, #0x10]
	mov r1, #0xc
	mla r1, r5, r1, r2
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02002F68
_02002F50:
	ldr r1, [r2, #8]
	ldr r2, [r2, #4]
	sub r1, r1, #0x20
	cmp r2, #0
	add r4, r4, r1
	bne _02002F50
_02002F68:
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02002F74: .word OSiHeapInfo
	arm_func_end OS_GetTotalFreeSize

	arm_func_start OS_IsOnVram
OS_IsOnVram: ; 0x02002F78
	cmp r0, #0x5000000
	blo _02002F90
	ldr r1, _02002F98 ; =0x07000800
	cmp r0, r1
	movlo r0, #1
	bxlo lr
_02002F90:
	mov r0, #0
	bx lr
_02002F98: .word 0x07000800
	arm_func_end OS_IsOnVram

	arm_func_start OS_GetDTCMAddress
OS_GetDTCMAddress: ; 0x02002F9C
	mrc p15, 0, r0, c9, c1, 0
	ldr r1, _02002FAC ; =0xFFFFF000
	and r0, r0, r1
	bx lr
_02002FAC: .word 0xFFFFF000
	arm_func_end OS_GetDTCMAddress

	arm_func_start OS_EnableProtectionUnit
OS_EnableProtectionUnit: ; 0x02002FB0
	mrc p15, 0, r0, c1, c0, 0
	orr r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end OS_EnableProtectionUnit

	arm_func_start OS_DisableProtectionUnit
OS_DisableProtectionUnit: ; 0x02002FC0
	mrc p15, 0, r0, c1, c0, 0
	bic r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end OS_DisableProtectionUnit

	arm_func_start OS_EnableICacheForProtectionRegion
OS_EnableICacheForProtectionRegion: ; 0x02002FD0
	mrc p15, 0, r1, c2, c0, 1
	orr r1, r1, r0
	mcr p15, 0, r1, c2, c0, 1
	bx lr
	arm_func_end OS_EnableICacheForProtectionRegion

	arm_func_start OS_DisableICacheForProtectionRegion
OS_DisableICacheForProtectionRegion: ; 0x02002FE0
	mrc p15, 0, r1, c2, c0, 1
	bic r1, r1, r0
	mcr p15, 0, r1, c2, c0, 1
	bx lr
	arm_func_end OS_DisableICacheForProtectionRegion

	arm_func_start OS_EnableDCacheForProtectionRegion
OS_EnableDCacheForProtectionRegion: ; 0x02002FF0
	mrc p15, 0, r1, c2, c0, 0
	orr r1, r1, r0
	mcr p15, 0, r1, c2, c0, 0
	bx lr
	arm_func_end OS_EnableDCacheForProtectionRegion

	arm_func_start OS_DisableDCacheForProtectionRegion
OS_DisableDCacheForProtectionRegion: ; 0x02003000
	mrc p15, 0, r1, c2, c0, 0
	bic r1, r1, r0
	mcr p15, 0, r1, c2, c0, 0
	bx lr
	arm_func_end OS_DisableDCacheForProtectionRegion

	arm_func_start OS_SetDPermissionsForProtectionRegion
OS_SetDPermissionsForProtectionRegion: ; 0x02003010
	mrc p15, 0, r2, c5, c0, 2
	bic r2, r2, r0
	orr r2, r2, r1
	mcr p15, 0, r2, c5, c0, 2
	bx lr
	arm_func_end OS_SetDPermissionsForProtectionRegion

	arm_func_start OS_EnableWriteBufferForProtectionRegion
OS_EnableWriteBufferForProtectionRegion: ; 0x02003024
	mrc p15, 0, r1, c3, c0, 0
	orr r1, r1, r0
	mcr p15, 0, r1, c3, c0, 0
	bx lr
	arm_func_end OS_EnableWriteBufferForProtectionRegion

	arm_func_start OS_DisableWriteBufferForProtectionRegion
OS_DisableWriteBufferForProtectionRegion: ; 0x02003034
	mrc p15, 0, r1, c3, c0, 0
	bic r1, r1, r0
	mcr p15, 0, r1, c3, c0, 0
	bx lr
	arm_func_end OS_DisableWriteBufferForProtectionRegion

	arm_func_start OS_SetProtectionRegionParam
OS_SetProtectionRegionParam: ; 0x02003044
	stmfd sp!, {r3, lr}
	ldr r2, _0200305C ; =f_0208ec38
	ldr r2, [r2, r0, lsl #2]
	mov r0, r1
	blx r2
	ldmfd sp!, {r3, pc}
_0200305C: .word f_0208ec38
	arm_func_end OS_SetProtectionRegionParam

	arm_func_start OS_SetProtectionRegion0
OS_SetProtectionRegion0: ; 0x02003060
	mcr p15, 0, r0, c6, c0, 0
	bx lr
	arm_func_end OS_SetProtectionRegion0

	arm_func_start OS_SetProtectionRegion1
OS_SetProtectionRegion1: ; 0x02003068
	mcr p15, 0, r0, c6, c1, 0
	bx lr
	arm_func_end OS_SetProtectionRegion1

	arm_func_start OS_SetProtectionRegion2
OS_SetProtectionRegion2: ; 0x02003070
	mcr p15, 0, r0, c6, c2, 0
	bx lr
	arm_func_end OS_SetProtectionRegion2

	arm_func_start OS_SetProtectionRegion3
OS_SetProtectionRegion3: ; 0x02003078
	mcr p15, 0, r0, c6, c3, 0
	bx lr
	arm_func_end OS_SetProtectionRegion3

	arm_func_start OS_SetProtectionRegion4
OS_SetProtectionRegion4: ; 0x02003080
	mcr p15, 0, r0, c6, c4, 0
	bx lr
	arm_func_end OS_SetProtectionRegion4

	arm_func_start OS_SetProtectionRegion5
OS_SetProtectionRegion5: ; 0x02003088
	mcr p15, 0, r0, c6, c5, 0
	bx lr
	arm_func_end OS_SetProtectionRegion5

	arm_func_start OS_SetProtectionRegion6
OS_SetProtectionRegion6: ; 0x02003090
	mcr p15, 0, r0, c6, c6, 0
	bx lr
	arm_func_end OS_SetProtectionRegion6

	arm_func_start OS_SetProtectionRegion7
OS_SetProtectionRegion7: ; 0x02003098
	mcr p15, 0, r0, c6, c7, 0
	bx lr
	arm_func_end OS_SetProtectionRegion7

	arm_func_start OS_GetProtectionRegion0
OS_GetProtectionRegion0: ; 0x020030A0
	mrc p15, 0, r0, c6, c0, 0
	bx lr
	arm_func_end OS_GetProtectionRegion0

	arm_func_start OS_GetProtectionRegion1
OS_GetProtectionRegion1: ; 0x020030A8
	mrc p15, 0, r0, c6, c1, 0
	bx lr
	arm_func_end OS_GetProtectionRegion1

	arm_func_start OS_GetProtectionRegion2
OS_GetProtectionRegion2: ; 0x020030B0
	mrc p15, 0, r0, c6, c2, 0
	bx lr
	arm_func_end OS_GetProtectionRegion2

	arm_func_start OS_GetProtectionRegion3
OS_GetProtectionRegion3: ; 0x020030B8
	mrc p15, 0, r0, c6, c3, 0
	bx lr
	arm_func_end OS_GetProtectionRegion3

	arm_func_start OS_GetProtectionRegion4
OS_GetProtectionRegion4: ; 0x020030C0
	mrc p15, 0, r0, c6, c4, 0
	bx lr
	arm_func_end OS_GetProtectionRegion4

	arm_func_start OS_GetProtectionRegion5
OS_GetProtectionRegion5: ; 0x020030C8
	mrc p15, 0, r0, c6, c5, 0
	bx lr
	arm_func_end OS_GetProtectionRegion5

	arm_func_start OS_GetProtectionRegion6
OS_GetProtectionRegion6: ; 0x020030D0
	mrc p15, 0, r0, c6, c6, 0
	bx lr
	arm_func_end OS_GetProtectionRegion6

	arm_func_start OS_GetProtectionRegion7
OS_GetProtectionRegion7: ; 0x020030D8
	mrc p15, 0, r0, c6, c7, 0
	bx lr
	arm_func_end OS_GetProtectionRegion7

	arm_func_start OS_SetProtectionRegionEx
OS_SetProtectionRegionEx: ; 0x020030E0
	stmfd sp!, {r3, lr}
	sub r3, r2, #0x16
	mov r12, #0x1000
	rsb r12, r12, #0
	mov r3, r3, lsr #1
	and r1, r1, r12, lsl r3
	orr r1, r2, r1
	orr r1, r1, #1
	bl OS_SetProtectionRegionParam
	ldmfd sp!, {r3, pc}
	arm_func_end OS_SetProtectionRegionEx

	arm_func_start OS_InitException
OS_InitException: ; 0x02003108
	ldr r1, _02003164 ; =0x02FFFD9C
	ldr r0, _02003168 ; =OSi_DebuggerHandler
	ldr r2, [r1]
	mov r1, #0
	str r2, [r0, #8]
	cmp r2, #0x2600000
	blo _0200312C
	cmp r2, #0x2800000
	movlo r1, #1
_0200312C:
	ldr r0, _02003168 ; =OSi_DebuggerHandler
	cmp r1, #0
	moveq r2, #0
	cmp r2, #0
	str r2, [r0]
	ldreq r1, _02003164 ; =0x02FFFD9C
	ldreq r2, _0200316C ; =OSi_ExceptionHandler
	biceq r0, r1, #0x800000
	streq r2, [r1]
	streq r2, [r0]
	ldr r0, _02003168 ; =OSi_DebuggerHandler
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
_02003164: .word 0x02FFFD9C
_02003168: .word OSi_DebuggerHandler
_0200316C: .word OSi_ExceptionHandler
	arm_func_end OS_InitException

	arm_func_start OSi_GetOriginalExceptionHandler
OSi_GetOriginalExceptionHandler: ; 0x02003170
	ldr r0, _0200317C ; =OSi_DebuggerHandler
	ldr r0, [r0, #8]
	bx lr
_0200317C: .word OSi_DebuggerHandler
	arm_func_end OSi_GetOriginalExceptionHandler

	arm_func_start OSi_ExceptionHandler
OSi_ExceptionHandler: ; 0x02003180
	ldr r12, _020031EC ; =OSi_DebuggerHandler
	ldr r12, [r12]
	cmp r12, #0
	movne lr, pc
	bxne r12
	ldr r12, _020031F0 ; =0x02000000
	stmdb r12!, {r0, r1, r2, r3, sp, lr}
	and r0, sp, #1
	mov sp, r12
	mrs r1, cpsr
	and r1, r1, #0x1f
	teq r1, #0x17
	bne _020031BC
	bl OSi_GetAndDisplayContext
	b _020031C8
_020031BC:
	teq r1, #0x1b
	bne _020031C8
	bl OSi_GetAndDisplayContext
_020031C8:
	ldr r12, _020031EC ; =OSi_DebuggerHandler
	ldr r12, [r12]
	cmp r12, #0
_020031D4:
	beq _020031D4
_020031D8:
	mov r0, r0
	b _020031D8
	ldmfd sp!, {r0, r1, r2, r3, r12, lr}
	mov sp, r12
	bx lr
_020031EC: .word OSi_DebuggerHandler
_020031F0: .word 0x02000000
	arm_func_end OSi_ExceptionHandler

	arm_func_start OSi_GetAndDisplayContext
OSi_GetAndDisplayContext: ; 0x020031F4
	stmfd sp!, {r0, lr}
	bl OSi_SetExContext
	bl OSi_DisplayExContext
	ldmfd sp!, {r0, lr}
	bx lr
	arm_func_end OSi_GetAndDisplayContext

	arm_func_start OSi_SetExContext
OSi_SetExContext: ; 0x02003208
	ldr r1, _02003284 ; =OSi_ExContext
	str r0, [r1, #0x6c]
	ldr r0, [r12]
	str r0, [r1, #4]
	ldr r0, [r12, #4]
	str r0, [r1, #8]
	ldr r0, [r12, #8]
	str r0, [r1, #0xc]
	ldr r0, [r12, #0xc]
	str r0, [r1, #0x10]
	ldr r2, [r12, #0x10]
	bic r2, r2, #1
	add r0, r1, #0x14
	stmia r0, {r4, r5, r6, r7, r8, r9, r10, r11}
	ldr r0, [r2]
	str r0, [r1, #0x64]
	ldr r3, [r2, #4]
	str r3, [r1]
	ldr r0, [r2, #8]
	str r0, [r1, #0x34]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x40]
	mrs r0, cpsr
	orr r3, r3, #0x80
	bic r3, r3, #0x20
	msr cpsr_fsxc, r3
	str sp, [r1, #0x38]
	str lr, [r1, #0x3c]
	mrs r2, spsr
	msr cpsr_fsxc, r0
	bx lr
_02003284: .word OSi_ExContext
	arm_func_end OSi_SetExContext

	arm_func_start OSi_DisplayExContext
OSi_DisplayExContext: ; 0x02003288
	stmfd sp!, {r3, lr}
	ldr r0, _020032EC ; =OSi_DebuggerHandler
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mrs r2, cpsr
	mov r0, sp
	ldr r1, _020032F0 ; =0x0000009F
	msr cpsr_fsxc, r1
	mov r1, sp
	mov sp, r0
	stmfd sp!, {r1, r2}
	bl OS_EnableProtectionUnit
	ldr r0, _020032F4 ; =OSi_ExContext
	ldr r1, _020032F8 ; =OSi_UserExceptionHandlerArg
	ldr r1, [r1]
	ldr r12, _020032FC ; =OSi_UserExceptionHandler
	ldr r12, [r12]
	ldr lr, _02003300 ; =_020032D8
	bx r12
_020032D8:
	bl OS_DisableProtectionUnit
	ldmia sp!, {r1, r2}
	mov sp, r1
	msr cpsr_cxsf, r2
	ldmia sp!, {r3, pc}
_020032EC: .word OSi_DebuggerHandler
_020032F0: .word 0x0000009F
_020032F4: .word OSi_ExContext
_020032F8: .word OSi_UserExceptionHandlerArg
_020032FC: .word OSi_UserExceptionHandler
_02003300: .word _020032D8
	arm_func_end OSi_DisplayExContext

	arm_func_start OSi_SetTimerReserved
OSi_SetTimerReserved: ; 0x02003304
	ldr r1, _02003324 ; =OSi_TimerReserved
	mov r2, #1
	mov r0, r2, lsl r0
	ldrh r2, [r1]
	mov r0, r0, lsl #16
	orr r0, r2, r0, lsr #16
	strh r0, [r1]
	bx lr
_02003324: .word OSi_TimerReserved
	arm_func_end OSi_SetTimerReserved

	arm_func_start OS_InitTick
OS_InitTick: ; 0x02003328
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0200338C ; =OSi_UseTick
	ldrh r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r1, #1
	mov r6, #0
	mov r0, r6
	strh r1, [r4]
	bl OSi_SetTimerReserved
	str r6, [r4, #8]
	mov r5, #8
	ldr r3, _02003390 ; =0x04000102
	str r6, [r4, #0xc]
	strh r6, [r3]
	ldr r1, _02003394 ; =OSi_CountUpTick
	mov r0, r5
	strh r6, [r3, #-2]
	mov r2, #0xc1
	strh r2, [r3]
	bl OS_SetIrqFunction
	mov r0, r5
	bl OS_EnableIrqMask
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_0200338C: .word OSi_UseTick
_02003390: .word 0x04000102
_02003394: .word OSi_CountUpTick
	arm_func_end OS_InitTick

	arm_func_start OS_IsTickAvailable
OS_IsTickAvailable: ; 0x02003398
	ldr r0, _020033A4 ; =OSi_UseTick
	ldrh r0, [r0]
	bx lr
_020033A4: .word OSi_UseTick
	arm_func_end OS_IsTickAvailable

	arm_func_start OSi_CountUpTick
OSi_CountUpTick: ; 0x020033A8
	stmfd sp!, {r3, lr}
	ldr r0, _02003404 ; =OSi_UseTick
	mov r3, #0
	ldr r2, [r0, #8]
	ldr r12, [r0, #0xc]
	adds r2, r2, #1
	str r2, [r0, #8]
	adc r1, r12, #0
	str r1, [r0, #0xc]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020033F0
	ldr r2, _02003408 ; =0x04000102
	mov r1, #0xc1
	strh r3, [r2]
	strh r3, [r2, #-2]
	strh r1, [r2]
	str r3, [r0, #4]
_020033F0:
	mov r0, #0
	ldr r1, _0200340C ; =OSi_CountUpTick
	mov r2, r0
	bl OSi_EnterTimerCallback
	ldmfd sp!, {r3, pc}
_02003404: .word OSi_UseTick
_02003408: .word 0x04000102
_0200340C: .word OSi_CountUpTick
	arm_func_end OSi_CountUpTick

	arm_func_start OS_GetTick
OS_GetTick: ; 0x02003410
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	bl OS_DisableInterrupts
	ldr r4, _020034A4 ; =0x04000100
	ldr r2, _020034A8 ; =0x0000FFFF
	ldrh r12, [r4]
	ldr r3, _020034AC ; =OSi_UseTick
	sub r1, r2, #0x10000
	strh r12, [sp]
	ldr r12, [r3, #8]
	ldr lr, [r3, #0xc]
	and r12, r12, r1
	and lr, lr, r2
	str r12, [sp, #4]
	str lr, [sp, #8]
	ldr r1, [r4, #0x114]
	tst r1, #8
	beq _0200347C
	ldrh r1, [sp]
	tst r1, #0x8000
	bne _0200347C
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r2, r2, #1
	adc r3, r3, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
_0200347C:
	bl OS_RestoreInterrupts
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	ldrh r0, [sp]
	mov r1, r3, lsl #0x10
	orr r1, r1, r2, lsr #16
	orr r1, r1, r0, asr #31
	orr r0, r0, r2, lsl #16
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_020034A4: .word 0x04000100
_020034A8: .word 0x0000FFFF
_020034AC: .word OSi_UseTick
	arm_func_end OS_GetTick

	arm_func_start OS_GetTickLo
OS_GetTickLo: ; 0x020034B0
	ldr r0, _020034BC ; =0x04000100
	ldrh r0, [r0]
	bx lr
_020034BC: .word 0x04000100
	arm_func_end OS_GetTickLo

	arm_func_start OS_SetTick
OS_SetTick: ; 0x020034C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	mov r12, r5, lsr #0x10
	mov r3, #1
	rsb r1, r3, #0x10000
	ldr lr, _02003524 ; =0x04000214
	mov r6, #8
	ldr r2, _02003528 ; =OSi_UseTick
	str r6, [lr]
	str r3, [r2, #4]
	orr r12, r12, r4, lsl #16
	str r12, [r2, #8]
	mov r4, r4, lsr #0x10
	ldr r3, _0200352C ; =0x04000102
	str r4, [r2, #0xc]
	mov r2, #0
	strh r2, [r3]
	and r1, r5, r1
	strh r1, [r3, #-2]
	mov r1, #0xc1
	strh r1, [r3]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_02003524: .word 0x04000214
_02003528: .word OSi_UseTick
_0200352C: .word 0x04000102
	arm_func_end OS_SetTick

	arm_func_start OSi_SetTimer
OSi_SetTimer: ; 0x02003530
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_GetTick
	mov r4, #0
	ldr r3, _020035A8 ; =0x04000106
	mov r2, r4
	strh r4, [r3]
	ldr r12, [r5, #0xc]
	ldr lr, [r5, #0x10]
	subs r6, r12, r0
	sbc r5, lr, r1
	ldr r1, _020035AC ; =OSi_AlarmHandler
	mov r0, #1
	bl OSi_EnterTimerCallback
	subs r0, r6, #0
	sbcs r0, r5, #0
	ldrlt r4, _020035B0 ; =0x0000FFFE
	blt _0200358C
	subs r0, r6, #0x10000
	sbcs r0, r5, r4
	mvnlt r0, r6
	movlt r0, r0, lsl #0x10
	movlt r4, r0, lsr #0x10
_0200358C:
	ldr r2, _020035B4 ; =0x04000104
	mov r1, #0xc1
	strh r4, [r2]
	mov r0, #0x10
	strh r1, [r2, #2]
	bl OS_EnableIrqMask
	ldmfd sp!, {r4, r5, r6, pc}
_020035A8: .word 0x04000106
_020035AC: .word OSi_AlarmHandler
_020035B0: .word 0x0000FFFE
_020035B4: .word 0x04000104
	arm_func_end OSi_SetTimer

	arm_func_start OS_InitAlarm
OS_InitAlarm: ; 0x020035B8
	stmfd sp!, {r4, lr}
	ldr r4, _020035F0 ; =OSi_UseAlarm
	ldrh r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #1
	strh r0, [r4]
	bl OSi_SetTimerReserved
	mov r1, #0
	str r1, [r4, #4]
	mov r0, #0x10
	str r1, [r4, #8]
	bl OS_DisableIrqMask
	ldmfd sp!, {r4, pc}
_020035F0: .word OSi_UseAlarm
	arm_func_end OS_InitAlarm

	arm_func_start OS_IsAlarmAvailable
OS_IsAlarmAvailable: ; 0x020035F4
	ldr r0, _02003600 ; =OSi_UseAlarm
	ldrh r0, [r0]
	bx lr
_02003600: .word OSi_UseAlarm
	arm_func_end OS_IsAlarmAvailable

	arm_func_start OS_CreateAlarm
OS_CreateAlarm: ; 0x02003604
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	bx lr
	arm_func_end OS_CreateAlarm

	arm_func_start OSi_InsertAlarm
OSi_InsertAlarm: ; 0x02003614
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #0x20]
	ldr r4, [r8, #0x1c]
	cmp r0, #0
	mov r6, r1
	mov r7, r2
	cmpeq r4, #0
	mov r9, #0
	beq _0200368C
	bl OS_GetTick
	ldr r7, [r8, #0x28]
	ldr r6, [r8, #0x24]
	cmp r7, r1
	cmpeq r6, r0
	bhs _0200368C
	ldr r4, [r8, #0x1c]
	ldr r5, [r8, #0x20]
	subs r0, r0, r6
	mov r2, r4
	mov r3, r5
	sbc r1, r1, r7
	bl _ull_div
	adds r2, r0, #1
	adc r0, r1, r9
	umull r3, r1, r4, r2
	mla r1, r4, r0, r1
	mla r1, r5, r2, r1
	adds r6, r6, r3
	adc r7, r7, r1
_0200368C:
	ldr r0, _02003738 ; =OSi_UseAlarm
	str r6, [r8, #0xc]
	str r7, [r8, #0x10]
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02003700
_020036A4:
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x10]
	subs r0, r6, r0
	sbc r1, r7, r1
	subs r0, r0, #0
	sbcs r0, r1, #0
	bge _020036F4
	ldr r0, [r2, #0x14]
	str r0, [r8, #0x14]
	str r8, [r2, #0x14]
	ldr r0, [r8, #0x14]
	str r2, [r8, #0x18]
	cmp r0, #0
	strne r8, [r0, #0x18]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _02003738 ; =OSi_UseAlarm
	mov r0, r8
	str r8, [r1, #4]
	bl OSi_SetTimer
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020036F4:
	ldr r2, [r2, #0x18]
	cmp r2, #0
	bne _020036A4
_02003700:
	ldr r1, _02003738 ; =OSi_UseAlarm
	mov r0, #0
	str r0, [r8, #0x18]
	ldr r0, [r1, #8]
	str r8, [r1, #8]
	str r0, [r8, #0x14]
	cmp r0, #0
	strne r8, [r0, #0x18]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r8, [r1, #8]
	mov r0, r8
	str r8, [r1, #4]
	bl OSi_SetTimer
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02003738: .word OSi_UseAlarm
	arm_func_end OSi_InsertAlarm

	arm_func_start OS_SetAlarm
OS_SetAlarm: ; 0x0200373C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	beq _02003760
	ldr r0, [r8]
	cmp r0, #0
	beq _02003764
_02003760:
	bl OS_Terminate
_02003764:
	bl OS_DisableInterrupts
	mov r2, #0
	ldr r1, [sp, #0x18]
	mov r4, r0
	str r2, [r8, #0x1c]
	str r2, [r8, #0x20]
	str r5, [r8]
	str r1, [r8, #4]
	bl OS_GetTick
	adds r3, r7, r0
	adc r2, r6, r1
	mov r0, r8
	mov r1, r3
	bl OSi_InsertAlarm
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end OS_SetAlarm

	arm_func_start OS_SetPeriodicAlarm
OS_SetPeriodicAlarm: ; 0x020037A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r9, r0
	mov r7, r1
	mov r8, r2
	mov r5, r3
	ldr r6, [sp, #0x20]
	beq _020037D0
	ldr r0, [r9]
	cmp r0, #0
	beq _020037D4
_020037D0:
	bl OS_Terminate
_020037D4:
	bl OS_DisableInterrupts
	ldr r12, [sp, #0x24]
	ldr r3, [sp, #0x28]
	mov r1, #0
	mov r4, r0
	mov r0, r9
	mov r2, r1
	str r5, [r9, #0x1c]
	str r6, [r9, #0x20]
	str r7, [r9, #0x24]
	str r8, [r9, #0x28]
	str r12, [r9]
	str r3, [r9, #4]
	bl OSi_InsertAlarm
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end OS_SetPeriodicAlarm

	arm_func_start OS_CancelAlarm
OS_CancelAlarm: ; 0x02003818
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, [r5]
	mov r4, r0
	cmp r1, #0
	bne _0200383C
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_0200383C:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	ldreq r2, [r5, #0x14]
	ldreq r1, _02003898 ; =OSi_UseAlarm
	streq r2, [r1, #8]
	ldrne r1, [r5, #0x14]
	strne r1, [r0, #0x14]
	ldr r1, [r5, #0x14]
	cmp r1, #0
	strne r0, [r1, #0x18]
	bne _0200387C
	ldr r1, _02003898 ; =OSi_UseAlarm
	cmp r0, #0
	str r0, [r1, #4]
	beq _0200387C
	bl OSi_SetTimer
_0200387C:
	mov r2, #0
	mov r0, r4
	str r2, [r5]
	str r2, [r5, #0x1c]
	str r2, [r5, #0x20]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02003898: .word OSi_UseAlarm
	arm_func_end OS_CancelAlarm

	arm_func_start OSi_AlarmHandler
OSi_AlarmHandler: ; 0x0200389C
	stmfd sp!, {r0, lr}
	bl OSi_ArrangeTimer
	ldmfd sp!, {r0, lr}
	bx lr
	arm_func_end OSi_AlarmHandler

	arm_func_start OSi_ArrangeTimer
OSi_ArrangeTimer: ; 0x020038AC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0200398C ; =0x04000106
	mov r4, #0
	mov r0, #0x10
	strh r4, [r1]
	bl OS_DisableIrqMask
	ldr r0, _02003990 ; =OS_IRQTable
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #0x10
	str r1, [r0, #0xff8]
	bl OS_GetTick
	ldr r2, _02003994 ; =OSi_UseAlarm
	ldr r5, [r2, #4]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0x10]
	ldr r12, [r5, #0xc]
	cmp r1, r3
	cmpeq r0, r12
	bhs _0200390C
	mov r0, r5
	bl OSi_SetTimer
	ldmfd sp!, {r3, r4, r5, pc}
_0200390C:
	ldr r0, [r5, #0x18]
	str r0, [r2, #4]
	cmp r0, #0
	streq r4, [r2, #8]
	strne r4, [r0, #0x14]
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x1c]
	cmp r0, #0
	ldr r4, [r5]
	mov r0, #0
	cmpeq r2, #0
	streq r0, [r5]
	cmp r4, #0
	beq _0200394C
	ldr r0, [r5, #4]
	blx r4
_0200394C:
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x1c]
	cmp r0, #0
	cmpeq r2, #0
	mov r1, #0
	beq _02003974
	mov r0, r5
	mov r2, r1
	str r4, [r5]
	bl OSi_InsertAlarm
_02003974:
	ldr r0, _02003994 ; =OSi_UseAlarm
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl OSi_SetTimer
	ldmfd sp!, {r3, r4, r5, pc}
_0200398C: .word 0x04000106
_02003990: .word OS_IRQTable
_02003994: .word OSi_UseAlarm
	arm_func_end OSi_ArrangeTimer

	arm_func_start OS_InitVAlarm
OS_InitVAlarm: ; 0x02003998
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020039D4 ; =OSi_UseVAlarm
	ldrh r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #1
	strh r0, [r4]
	mov r5, #0
	str r5, [r4, #0xc]
	mov r0, #4
	str r5, [r4, #0x10]
	bl OS_DisableIrqMask
	str r5, [r4, #8]
	str r5, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020039D4: .word OSi_UseVAlarm
	arm_func_end OS_InitVAlarm

	arm_func_start OSi_InsertVAlarm
OSi_InsertVAlarm: ; 0x020039D8
	stmfd sp!, {r3, lr}
	ldr r1, _02003A50 ; =OSi_UseVAlarm
	ldr r3, [r1, #0xc]
	cmp r3, #0
	beq _02003A48
	ldr r12, [r0, #0xc]
_020039F0:
	ldr r1, [r3, #0xc]
	cmp r1, r12
	blo _02003A3C
	bne _02003A10
	ldrsh r2, [r3, #0x10]
	ldrsh r1, [r0, #0x10]
	cmp r2, r1
	ble _02003A3C
_02003A10:
	ldr r1, [r3, #0x14]
	str r1, [r0, #0x14]
	str r3, [r0, #0x18]
	str r0, [r3, #0x14]
	cmp r1, #0
	strne r0, [r1, #0x18]
	ldmnefd sp!, {r3, pc}
	ldr r1, _02003A50 ; =OSi_UseVAlarm
	str r0, [r1, #0xc]
	bl OSi_SetNextVAlarm
	ldmfd sp!, {r3, pc}
_02003A3C:
	ldr r3, [r3, #0x18]
	cmp r3, #0
	bne _020039F0
_02003A48:
	bl OSi_AppendVAlarm
	ldmfd sp!, {r3, pc}
_02003A50: .word OSi_UseVAlarm
	arm_func_end OSi_InsertVAlarm

	arm_func_start OSi_AppendVAlarm
OSi_AppendVAlarm: ; 0x02003A54
	stmfd sp!, {r3, lr}
	ldr r1, _02003A88 ; =OSi_UseVAlarm
	mov r2, #0
	ldr r3, [r1, #0x10]
	str r3, [r0, #0x14]
	str r2, [r0, #0x18]
	str r0, [r1, #0x10]
	cmp r3, #0
	strne r0, [r3, #0x18]
	ldmnefd sp!, {r3, pc}
	str r0, [r1, #0xc]
	bl OSi_SetNextVAlarm
	ldmfd sp!, {r3, pc}
_02003A88: .word OSi_UseVAlarm
	arm_func_end OSi_AppendVAlarm

	arm_func_start OSi_DetachVAlarm
OSi_DetachVAlarm: ; 0x02003A8C
	cmp r0, #0
	bxeq lr
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x14]
	cmp r2, #0
	ldreq r0, _02003AC0 ; =OSi_UseVAlarm
	strne r1, [r2, #0x14]
	streq r1, [r0, #0x10]
	cmp r1, #0
	ldreq r0, _02003AC0 ; =OSi_UseVAlarm
	strne r2, [r1, #0x18]
	streq r2, [r0, #0xc]
	bx lr
_02003AC0: .word OSi_UseVAlarm
	arm_func_end OSi_DetachVAlarm

	arm_func_start OS_CreateVAlarm
OS_CreateVAlarm: ; 0x02003AC4
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end OS_CreateVAlarm

	arm_func_start OS_SetVAlarm
OS_SetVAlarm: ; 0x02003AD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl OS_DisableInterrupts
	mov r4, r0
	cmp r8, #0
	beq _02003B08
	ldr r0, [r8]
	cmp r0, #0
	beq _02003B0C
_02003B08:
	bl OS_Terminate
_02003B0C:
	ldr r0, _02003B60 ; =0x04000006
	ldrh r9, [r0]
	mov r0, r9
	bl OSi_GetVFrame
	mov r1, #0
	cmp r7, r9
	addle r0, r0, #1
	ldr r2, [sp, #0x20]
	str r1, [r8, #0x1c]
	str r0, [r8, #0xc]
	mov r1, #0
	mov r0, r8
	strh r7, [r8, #0x10]
	strh r6, [r8, #0x12]
	str r5, [r8]
	str r2, [r8, #4]
	str r1, [r8, #0x24]
	bl OSi_InsertVAlarm
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02003B60: .word 0x04000006
	arm_func_end OS_SetVAlarm

	arm_func_start OSi_SetNextVAlarm
OSi_SetNextVAlarm: ; 0x02003B64
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #4
	mov r5, r0
	ldr r1, _02003BA0 ; =OSi_VAlarmHandler
	mov r0, r4
	bl OS_SetIrqFunction
	ldrsh r0, [r5, #0x10]
	bl GX_SetVCountEqVal
	sub r2, r4, #0xfc000000
	ldrh r1, [r2]
	mov r0, r4
	orr r1, r1, #0x20
	strh r1, [r2]
	bl OS_EnableIrqMask
	ldmfd sp!, {r3, r4, r5, pc}
_02003BA0: .word OSi_VAlarmHandler
	arm_func_end OSi_SetNextVAlarm

	arm_func_start OSi_VAlarmHandler
OSi_VAlarmHandler: ; 0x02003BA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, #4
	mov r0, r4
	bl OS_DisableIrqMask
	sub r9, r4, #0xfc000000
	ldr r0, _02003CFC ; =OS_IRQTable
	ldrh r1, [r9]
	ldr r11, _02003D00 ; =0x0000FFDF
	add r0, r0, #0x3000
	and r1, r1, r11
	strh r1, [r9]
	ldr r1, [r0, #0xff8]
	orr r1, r1, #4
	str r1, [r0, #0xff8]
	ldrh r0, [r9]
	mov r1, r0, asr #8
	mov r0, r0, lsl #1
	and r1, r1, #0xff
	and r0, r0, #0x100
	orr r0, r1, r0
	sub r0, r0, #1
	bl OSi_GetVFrame
	ldr r4, _02003D04 ; =OSi_UseVAlarm
	ldr r10, [r4, #0xc]
	cmp r10, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _02003D08 ; =0x04000006
	mov r5, #4
_02003C14:
	ldrh r7, [r8]
	mov r0, r7
	bl OSi_GetVFrame
	mov r6, r0
	mov r0, r10
	mov r1, r6
	mov r2, r7
	bl OSi_CompareVCount
	cmp r0, #0
	beq _02003C50
	cmp r0, #1
	beq _02003C8C
	cmp r0, #2
	beq _02003CD0
	b _02003CEC
_02003C50:
	mov r0, r10
	bl OSi_SetNextVAlarm
	ldrh r1, [r8]
	ldrsh r0, [r10, #0x10]
	cmp r0, r1
	ldreq r0, [r10, #0xc]
	cmpeq r0, r6
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	bl OS_DisableIrqMask
	ldrh r1, [r9]
	mov r0, r5
	and r1, r1, r11
	strh r1, [r9]
	bl OS_ResetRequestIrqMask
_02003C8C:
	ldr r6, [r10]
	mov r0, r10
	bl OSi_DetachVAlarm
	mov r0, #0
	str r0, [r10]
	cmp r6, #0
	beq _02003CB0
	ldr r0, [r10, #4]
	blx r6
_02003CB0:
	ldr r0, [r10, #0x1c]
	cmp r0, #0
	beq _02003CEC
	ldr r0, [r10, #0x24]
	cmp r0, #0
	bne _02003CEC
	str r6, [r10]
	b _02003CD8
_02003CD0:
	mov r0, r10
	bl OSi_DetachVAlarm
_02003CD8:
	ldr r1, [r4, #8]
	mov r0, r10
	add r1, r1, #1
	str r1, [r10, #0xc]
	bl OSi_InsertVAlarm
_02003CEC:
	ldr r10, [r4, #0xc]
	cmp r10, #0
	bne _02003C14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02003CFC: .word OS_IRQTable
_02003D00: .word 0x0000FFDF
_02003D04: .word OSi_UseVAlarm
_02003D08: .word 0x04000006
	arm_func_end OSi_VAlarmHandler

	arm_func_start OSi_CompareVCount
OSi_CompareVCount: ; 0x02003D0C
	ldrsh r3, [r0, #0x10]
	ldr r12, [r0, #0xc]
	subs r1, r1, r12
	sub r2, r2, r3
	bmi _02003D30
	cmp r1, #0
	bne _02003D38
	cmp r2, #0
	bge _02003D38
_02003D30:
	mov r0, #0
	bx lr
_02003D38:
	ldrsh r0, [r0, #0x12]
	cmp r2, #0
	addlt r1, r2, #7
	addlt r2, r1, #0x100
	cmp r2, r0
	movle r0, #1
	movgt r0, #2
	bx lr
	arm_func_end OSi_CompareVCount

	arm_func_start OSi_GetVFrame
OSi_GetVFrame: ; 0x02003D58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _02003D90 ; =OSi_UseVAlarm
	ldr r4, _02003D90 ; =OSi_UseVAlarm
	ldr r2, [r1, #4]
	cmp r5, r2
	ldrlt r2, [r1, #8]
	addlt r2, r2, #1
	strlt r2, [r1, #8]
	str r5, [r4, #4]
	bl OS_RestoreInterrupts
	ldr r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02003D90: .word OSi_UseVAlarm
	arm_func_end OSi_GetVFrame

	arm_func_start OS_EnableInterrupts
OS_EnableInterrupts: ; 0x02003D94
	mrs r0, cpsr
	bic r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_EnableInterrupts

	arm_func_start OS_DisableInterrupts
OS_DisableInterrupts: ; 0x02003DA8
	mrs r0, cpsr
	orr r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_DisableInterrupts

	arm_func_start OS_RestoreInterrupts
OS_RestoreInterrupts: ; 0x02003DBC
	mrs r1, cpsr
	bic r2, r1, #0x80
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0x80
	bx lr
	arm_func_end OS_RestoreInterrupts

	arm_func_start OS_DisableInterrupts_IrqAndFiq
OS_DisableInterrupts_IrqAndFiq: ; 0x02003DD4
	mrs r0, cpsr
	orr r1, r0, #0xc0
	msr cpsr_c, r1
	and r0, r0, #0xc0
	bx lr
	arm_func_end OS_DisableInterrupts_IrqAndFiq

	arm_func_start OS_RestoreInterrupts_IrqAndFiq
OS_RestoreInterrupts_IrqAndFiq: ; 0x02003DE8
	mrs r1, cpsr
	bic r2, r1, #0xc0
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0xc0
	bx lr
	arm_func_end OS_RestoreInterrupts_IrqAndFiq

	arm_func_start OS_GetCpsrIrq
OS_GetCpsrIrq: ; 0x02003E00
	mrs r0, cpsr
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_GetCpsrIrq

	arm_func_start OS_GetProcMode
OS_GetProcMode: ; 0x02003E0C
	mrs r0, cpsr
	and r0, r0, #0x1f
	bx lr
	arm_func_end OS_GetProcMode

	arm_func_start OS_SpinWaitCpuCycles
OS_SpinWaitCpuCycles: ; 0x02003E18
	subs r0, r0, #4
	bhs OS_SpinWaitCpuCycles
	bx lr
	arm_func_end OS_SpinWaitCpuCycles

	arm_func_start OS_SpinWaitSysCycles
OS_SpinWaitSysCycles: ; 0x02003E24
	stmfd sp!, {r3, lr}
	mov r0, r0, lsl #1
	cmp r0, #0x10
	ldmlsfd sp!, {r3, pc}
	sub r0, r0, #0x10
	bl OS_SpinWaitCpuCycles
	ldmfd sp!, {r3, pc}
	arm_func_end OS_SpinWaitSysCycles

	arm_func_start OS_WaitVBlankIntr
OS_WaitVBlankIntr: ; 0x02003E40
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	blx SVC_WaitByLoop
	mov r0, r4
	mov r1, r4
	bl OS_WaitIrq
	ldmfd sp!, {r4, pc}
	arm_func_end OS_WaitVBlankIntr

	arm_func_start OS_GetBootType
OS_GetBootType: ; 0x02003E60
	stmfd sp!, {r3, lr}
	bl OS_GetBootInfo
	ldrh r0, [r0]
	ldmfd sp!, {r3, pc}
	arm_func_end OS_GetBootType

	arm_func_start OS_GetBootInfo
OS_GetBootInfo: ; 0x02003E70
	ldr r0, _02003E78 ; =0x02FFFC40
	bx lr
_02003E78: .word 0x02FFFC40
	arm_func_end OS_GetBootInfo

	arm_func_start OS_InitReset
OS_InitReset: ; 0x02003E7C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02003EC8 ; =OSi_IsInitReset
	ldrh r1, [r0]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	bl PXI_Init
	mov r5, #0xc
	mov r4, #1
_02003EA4:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _02003EA4
	ldr r1, _02003ECC ; =OSi_CommonCallback
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	ldmfd sp!, {r3, r4, r5, pc}
_02003EC8: .word OSi_IsInitReset
_02003ECC: .word OSi_CommonCallback
	arm_func_end OS_InitReset

	arm_func_start OS_ResetSystem
OS_ResetSystem: ; 0x02003ED0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02003F30 ; =0x02FFFC40
	mov r5, r0
	ldrh r0, [r1]
	cmp r0, #2
	bne _02003EEC
	bl OS_Terminate
_02003EEC:
	bl OS_GetLockID
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockRom
	mov r0, #0x40000
	bl OS_SetIrqMask
	mvn r0, #0
	bl OS_ResetRequestIrqMask
	bl MI_StopAllDma
	ldr r4, _02003F34 ; =0x02FFFC20
	mov r0, #0x10
	str r5, [r4]
	bl OSi_SendToPxi
	bl OSi_GetOriginalExceptionHandler
	str r0, [r4, #0x37c]
	bl OSi_DoResetSystem
	ldmfd sp!, {r3, r4, r5, pc}
_02003F30: .word 0x02FFFC40
_02003F34: .word 0x02FFFC20
	arm_func_end OS_ResetSystem

	arm_func_start OS_GetMacAddress
OS_GetMacAddress: ; 0x02003F38
	mov r1, r0
	ldr r0, _02003F4C ; =0x02FFFCF4
	ldr r12, _02003F50 ; =MI_CpuCopy8
	mov r2, #6
	bx r12
_02003F4C: .word 0x02FFFCF4
_02003F50: .word MI_CpuCopy8
	arm_func_end OS_GetMacAddress

	arm_func_start OS_GetOwnerInfo
OS_GetOwnerInfo: ; 0x02003F54
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02003FD0 ; =0x02FFFC80
	mov r5, r0
	ldrh r2, [r4, #0x64]
	add r0, r4, #6
	add r1, r5, #4
	mov r2, r2, lsl #0x1d
	mov r2, r2, lsr #0x1d
	strb r2, [r5]
	ldrb r3, [r4, #2]
	mov r2, #0x14
	mov r3, r3, lsl #0x1c
	mov r3, r3, lsr #0x1c
	strb r3, [r5, #1]
	ldrb r3, [r4, #3]
	strb r3, [r5, #2]
	ldrb r3, [r4, #4]
	strb r3, [r5, #3]
	ldrb r3, [r4, #0x1a]
	strh r3, [r5, #0x1a]
	ldrb r3, [r4, #0x50]
	strh r3, [r5, #0x52]
	bl MIi_CpuCopy16
	add r0, r4, #0x1c
	add r1, r5, #0x1c
	mov r2, #0x34
	bl MIi_CpuCopy16
	mov r0, #0
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x50]
	ldmfd sp!, {r3, r4, r5, pc}
_02003FD0: .word 0x02FFFC80
	arm_func_end OS_GetOwnerInfo

	arm_func_start OsCountZeroBits
OsCountZeroBits: ; 0x02003FD4
	clz r0, r0
	bx lr
	arm_func_end OsCountZeroBits

	arm_func_start OSi_InitVramExclusive
OSi_InitVramExclusive: ; 0x02003FDC
	ldr r0, _02004008 ; =OSi_vramExclusive
	mov r3, #0
	str r3, [r0]
	ldr r0, _0200400C ; =OSi_vramLockId
	mov r2, r3
_02003FF0:
	mov r1, r3, lsl #1
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, #9
	blt _02003FF0
	bx lr
_02004008: .word OSi_vramExclusive
_0200400C: .word OSi_vramLockId
	arm_func_end OSi_InitVramExclusive

	arm_func_start OSi_UnlockVram
OSi_UnlockVram: ; 0x02004010
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	mov r10, r1
	bl OS_DisableInterrupts
	ldr r4, _02004088 ; =OSi_vramExclusive
	ldr r1, _0200408C ; =0x000001FF
	ldr r2, [r4]
	mov r9, r0
	and r0, r5, r2
	ldr r6, _02004090 ; =OSi_vramLockId
	and r8, r0, r1
	mov r7, #1
	mov r5, #0
_02004044:
	mov r0, r8
	bl OsCountZeroBits
	rsbs r2, r0, #0x1f
	bmi _0200407C
	mov r1, r2, lsl #1
	ldrh r0, [r6, r1]
	mvn r2, r7, lsl r2
	cmp r10, r0
	ldreq r0, [r4]
	and r8, r8, r2
	andeq r0, r0, r2
	streqh r5, [r6, r1]
	streq r0, [r4]
	b _02004044
_0200407C:
	mov r0, r9
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02004088: .word OSi_vramExclusive
_0200408C: .word 0x000001FF
_02004090: .word OSi_vramLockId
	arm_func_end OSi_UnlockVram

	arm_func_start OS_GetLowEntropyData
OS_GetLowEntropyData: ; 0x02004094
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _02004150 ; =0x04000006
	mov r5, r0
	ldrh r6, [r1]
	ldr r4, _02004154 ; =0x02FFFC00
	bl OS_GetTickLo
	orr r0, r0, r6, lsl #16
	str r0, [r5]
	ldr r0, _02004158 ; =OSi_TickCounter
	ldrh r1, [r4, #0xf8]
	ldr r2, [r0]
	ldr r3, [r0, #4]
	eor r1, r2, r1, lsl #16
	str r1, [r5, #4]
	ldr r2, [r0]
	ldr r2, _0200415C ; =0x04000600
	ldr r1, [r0, #4]
	ldr r0, [r4, #0xf4]
	ldr r3, [r4, #0x3c]
	eor r0, r1, r0
	eor r3, r3, r0
	str r3, [r5, #8]
	ldr r1, [r2]
	add r0, r4, #0x300
	eor r1, r3, r1
	str r1, [r5, #8]
	ldr r1, [r4, #0x1e8]
	sub r2, r2, #0x4d0
	str r1, [r5, #0xc]
	ldr r3, [r4, #0x1ec]
	add r1, r4, #0x3a8
	str r3, [r5, #0x10]
	ldrh r12, [r0, #0x94]
	ldr r3, [r4, #0x390]
	eor r3, r3, r12, lsl #16
	str r3, [r5, #0x14]
	ldrh r4, [r0, #0xaa]
	ldrh r3, [r0, #0xac]
	orr r3, r3, r4, lsl #16
	str r3, [r5, #0x18]
	ldrh r2, [r2]
	ldrh r1, [r1]
	ldrh r3, [r0, #0x98]
	orr r0, r2, r1
	orr r0, r0, r3, lsl #16
	str r0, [r5, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_02004150: .word 0x04000006
_02004154: .word 0x02FFFC00
_02004158: .word OSi_TickCounter
_0200415C: .word 0x04000600
	arm_func_end OS_GetLowEntropyData

	arm_func_start OS_Terminate
OS_Terminate: ; 0x02004160
	stmfd sp!, {r3, lr}
	ldr r0, _0200418C ; =OSi_TerminateCallback
	ldr r2, [r0]
	cmp r2, #0
	beq _02004184
	mov r1, #0
	str r1, [r0]
	ldr r0, [r0, #4]
	blx r2
_02004184:
	bl OSi_TerminateCore
	ldmfd sp!, {r3, pc}
_0200418C: .word OSi_TerminateCallback
	arm_func_end OS_Terminate

	arm_func_start OSi_TerminateCore
OSi_TerminateCore: ; 0x02004190
	stmfd sp!, {r3, lr}
	bl OS_DisableInterrupts
_02004198:
	bl OS_Halt
	b _02004198
	arm_func_end OSi_TerminateCore

	arm_func_start OS_Halt
OS_Halt: ; 0x020041A0
	mov r0, #0
	mcr p15, 0, r0, c7, c0, 4
	bx lr
	arm_func_end OS_Halt

	arm_func_start OS_InitEvent
OS_InitEvent: ; 0x020041AC
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0]
	bx lr
	arm_func_end OS_InitEvent

	arm_func_start OS_WaitEventEx
OS_WaitEventEx: ; 0x020041C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r2
	mov r8, r0
	mov r7, r1
	mov r6, r3
	mov r4, #0
	bl OS_DisableInterrupts
	mov r5, r0
	cmp r9, #0
	beq _020041F4
	cmp r9, #1
	beq _02004220
	b _02004244
_020041F4:
	ldr r0, [r8]
	and r0, r0, r7
	cmp r7, r0
	beq _0200421C
_02004204:
	add r0, r8, #4
	bl OS_SleepThread
	ldr r0, [r8]
	and r0, r0, r7
	cmp r7, r0
	bne _02004204
_0200421C:
	b _02004240
_02004220:
	ldr r0, [r8]
	tst r0, r7
	bne _02004240
_0200422C:
	add r0, r8, #4
	bl OS_SleepThread
	ldr r0, [r8]
	tst r0, r7
	beq _0200422C
_02004240:
	ldr r4, [r8]
_02004244:
	cmp r4, #0
	ldrne r1, [r8]
	mvnne r0, r6
	andne r0, r1, r0
	strne r0, [r8]
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end OS_WaitEventEx

	arm_func_start OS_SignalEvent
OS_SignalEvent: ; 0x02004268
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	bl OS_DisableInterrupts
	mov r4, r0
	cmp r5, #0
	beq _02004298
	ldr r1, [r6]
	add r0, r6, #4
	orr r1, r1, r5
	str r1, [r6]
	bl OS_WakeupThread
_02004298:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end OS_SignalEvent

	.rodata
	.global table
table:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00
	.byte 0x00, 0x80, 0x00, 0x00

	.data
	.global OSi_IrqCallbackInfoIndex
OSi_IrqCallbackInfoIndex:
	.byte 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00
	.global OSi_RunningConsoleTypeCache
OSi_RunningConsoleTypeCache:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.global f_0208ec38
f_0208ec38:
	.word OS_SetProtectionRegion0
	.word OS_SetProtectionRegion1
	.word OS_SetProtectionRegion2
	.word OS_SetProtectionRegion3
	.word OS_SetProtectionRegion4
	.word OS_SetProtectionRegion5
	.word OS_SetProtectionRegion6
	.word OS_SetProtectionRegion7
	.global f_0208ec58
f_0208ec58:
	.word OS_GetProtectionRegion0
	.word OS_GetProtectionRegion1
	.word OS_GetProtectionRegion2
	.word OS_GetProtectionRegion3
	.word OS_GetProtectionRegion4
	.word OS_GetProtectionRegion5
	.word OS_GetProtectionRegion6
	.word OS_GetProtectionRegion7

	.bss
	.global OSi_IrqCallbackInfo
OSi_IrqCallbackInfo:
	.space 0x04
	.global unk_02093924
unk_02093924:
	.space 0x04
	.global unk_02093928
unk_02093928:
	.space 0x28
	.global unk_02093950
unk_02093950:
	.space 0x04
	.global unk_02093954
unk_02093954:
	.space 0x04
	.global unk_02093958
unk_02093958:
	.space 0x28
	.global OSi_IsResetOccurred
OSi_IsResetOccurred:
	.space 0x04
	.global isInitialized_02093984
isInitialized_02093984:
	.space 0x04
	.global OSi_SystemCallbackInSwitchThread
OSi_SystemCallbackInSwitchThread:
	.space 0x04
	.global OSi_RescheduleCount
OSi_RescheduleCount:
	.space 0x04
	.global OSi_CurrentThreadPtr
OSi_CurrentThreadPtr:
	.space 0x04
	.global OSi_IsThreadInitialized
OSi_IsThreadInitialized:
	.space 0x4
	.global OSi_SystemStackBuffer
OSi_SystemStackBuffer:
	.space 0x4
	.global OSi_StackForDestructor
OSi_StackForDestructor:
	.space 0x4
	.global OSi_ThreadIdCount
OSi_ThreadIdCount:
	.space 0x4
	.global OSi_ThreadInfo
OSi_ThreadInfo:
	.space 0x04
	.global unk_020939A8
unk_020939A8:
	.space 0x0C
	.global OSi_IdleThread
OSi_IdleThread:
	.space 0xC0
	.global OSi_LauncherThread
OSi_LauncherThread:
	.space 0xC0
	.global OSi_IdleThreadStack
OSi_IdleThreadStack:
	.space 0xC8
	.global OSi_Initialized
OSi_Initialized:
	.space 0x04
	.global OSi_MainExArenaEnabled
OSi_MainExArenaEnabled:
	.space 0x04
	.global OSiHeapInfo
OSiHeapInfo:
	.space 0x24
	.global OSi_DebuggerHandler
OSi_DebuggerHandler:
	.space 0x04
	.global OSi_UserExceptionHandlerArg
OSi_UserExceptionHandlerArg:
	.space 0x08
	.global OSi_UserExceptionHandler
OSi_UserExceptionHandler:
	.space 0x04
	.global OSi_ExceptionHookStack
OSi_ExceptionHookStack:
	.space 0x20
	.global OSi_ExContext
OSi_ExContext:
	.space 0x70
	.global OSi_TimerReserved
OSi_TimerReserved:
	.space 0x04
	.global OSi_UseTick
OSi_UseTick:
	.space 0x04
	.global OSi_NeedResetTimer
OSi_NeedResetTimer:
	.space 0x04
	.global OSi_TickCounter
OSi_TickCounter:
	.space 0x08
	.global OSi_UseAlarm
OSi_UseAlarm:
	.space 0x04
	.global OSi_AlarmQueue
OSi_AlarmQueue:
	.space 0x08
	.global OSi_UseVAlarm
OSi_UseVAlarm:
	.space 0x04
	.global OSi_PreviousVCount
OSi_PreviousVCount:
	.space 0x04
	.global OSi_VFrameCount
OSi_VFrameCount:
	.space 0x04
	.global OSi_VAlarmQueue
OSi_VAlarmQueue:
	.space 0x08
	.global OSi_IsInitReset
OSi_IsInitReset:
	.space 0x04
	.global OSi_vramExclusive
OSi_vramExclusive:
	.space 0x04
	.global OSi_vramLockId
OSi_vramLockId:
	.space 0x14
	.global OSi_TerminateCallback
OSi_TerminateCallback:
	.space 0x04
	.global OSi_TerminateCallbackArg
OSi_TerminateCallbackArg:
	.space 0x04

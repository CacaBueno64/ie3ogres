
	.include "asm/macros/function.inc"
	.include "libwm.inc"

	.text
	arm_func_start WM_Init
WM_Init: ; 0x02011DEC
	stmfd sp!, {r3, lr}
	mov r2, #0xf00
	bl WmInitCore
	cmp r0, #0
	ldreq r1, _02011E10 ; =wmInitialized
	moveq r2, #0
	ldreq r1, [r1, #4]
	streqh r2, [r1, #0x16]
	ldmfd sp!, {r3, pc}
_02011E10: .word wmInitialized
	arm_func_end WM_Init

	arm_func_start WmInitCore
WmInitCore: ; 0x02011E14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r9, _0201202C ; =wmInitialized
	mov r6, r0
	ldrh r1, [r9]
	cmp r1, #0
	beq _02011E50
	bl OS_RestoreInterrupts
	add sp, sp, #4
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02011E50:
	cmp r8, #0
	bne _02011E68
	bl OS_RestoreInterrupts
	add sp, sp, #4
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02011E68:
	mov r0, r8
	bl OS_IsOnVram
	cmp r0, #0
	beq _02011E8C
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #4
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02011E8C:
	cmp r7, #3
	bls _02011EA8
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #4
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02011EA8:
	tst r8, #0x1f
	beq _02011EC4
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #4
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02011EC4:
	bl PXI_Init
	mov r10, #1
	mov r1, r10
	mov r0, #0xa
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _02011EF4
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #4
	mov r0, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02011EF4:
	mov r0, r8
	mov r1, r5
	bl DC_InvalidateRange
	mov r4, #0
	mov r0, r7
	mov r1, r8
	mov r2, r4
	str r10, [sp]
	mov r3, r5
	bl MIi_DmaFill32
	str r8, [r9, #4]
	add r0, r8, #0x200
	str r0, [r8]
	ldr r1, [r9, #4]
	ldr r0, [r1]
	add r0, r0, #0x300
	str r0, [r1, #4]
	ldr r1, [r9, #4]
	ldr r0, [r1, #4]
	add r0, r0, #0x800
	str r0, [r1, #0xc]
	ldr r1, [r9, #4]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x100
	str r0, [r1, #0x10]
	bl WmClearFifoRecvFlag
	ldr r0, [r9, #4]
	mov r1, r4
	strh r7, [r0, #0x14]
	ldr r0, [r9, #4]
	str r4, [r0, #0x14c]
	ldr r0, [r9, #4]
	add r0, r0, #0x100
	strh r4, [r0, #0x50]
	b _02011F9C
_02011F80:
	ldr r0, [r9, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0xcc]
	ldr r0, [r9, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x10c]
	add r4, r4, #1
_02011F9C:
	cmp r4, #0x10
	blt _02011F80
	ldr r5, _02012030 ; =bufMsgQ
	ldr r1, _02012034 ; =bufMsg
	mov r0, r5
	mov r2, #0xa
	bl OS_InitMessageQueue
	mov r7, #0
	mov r4, #0x8000
	ldr r10, _02012038 ; =fifoBuf
	mov r9, #2
	mov r8, #1
	b _02011FF8
_02011FD0:
	mov r2, r7, lsl #8
	mov r1, r9
	add r0, r10, r7, lsl #8
	strh r4, [r10, r2]
	bl DC_StoreRange
	mov r0, r5
	mov r2, r8
	add r1, r10, r7, lsl #8
	bl OS_SendMessage
	add r7, r7, #1
_02011FF8:
	cmp r7, #0xa
	blt _02011FD0
	ldr r1, _0201203C ; =WmReceiveFifo
	mov r0, #0xa
	bl PXI_SetFifoRecvCallback
	ldr r1, _0201202C ; =wmInitialized
	mov r2, #1
	mov r0, r6
	strh r2, [r1]
	bl OS_RestoreInterrupts
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0201202C: .word wmInitialized
_02012030: .word bufMsgQ
_02012034: .word bufMsg
_02012038: .word fifoBuf
_0201203C: .word WmReceiveFifo
	arm_func_end WmInitCore

	arm_func_start WM_Finish
WM_Finish: ; 0x02012040
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r5, r0
	bl WMi_CheckInitialized
	cmp r0, #0
	beq _02012068
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_02012068:
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl WmClearFifoRecvFlag
	mov r1, r4
	mov r0, #0xa
	bl PXI_SetFifoRecvCallback
	ldr r1, _020120AC ; =wmInitialized
	mov r0, r5
	str r4, [r1, #4]
	strh r4, [r1]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020120AC: .word wmInitialized
	arm_func_end WM_Finish

	arm_func_start WMi_SetCallbackTable
WMi_SetCallbackTable: ; 0x020120B0
	ldr r2, _020120C4 ; =wmInitialized
	ldr r2, [r2, #4]
	add r0, r2, r0, lsl #2
	str r1, [r0, #0x18]
	bx lr
_020120C4: .word wmInitialized
	arm_func_end WMi_SetCallbackTable

	arm_func_start WmGetCommandBuffer4Arm7
WmGetCommandBuffer4Arm7: ; 0x020120C8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02012124 ; =bufMsgQ
	mov r4, #0
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl OS_ReceiveMessage
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	mov r1, #2
	bl DC_InvalidateRange
	ldr r1, [sp]
	ldrh r0, [r1]
	tst r0, #0x8000
	movne r0, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r2, #1
	bl OS_JamMessage
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02012124: .word bufMsgQ
	arm_func_end WmGetCommandBuffer4Arm7

	arm_func_start WMi_SendCommand
WMi_SendCommand: ; 0x02012128
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WmGetCommandBuffer4Arm7
	movs r4, r0
	moveq r0, #8
	ldmeqfd sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	strh r5, [r4]
	ldrh r5, [sp, #0x14]
	add r0, sp, #0x14
	bic r0, r0, #3
	mov r3, #0
	cmp r5, #0
	add r2, r0, #4
	ble _02012188
_0201216C:
	add r2, r2, #4
	ldr r1, [r2, #-4]
	add r0, r4, r3, lsl #2
	add r3, r3, #1
	str r1, [r0, #4]
	cmp r3, r5
	blt _0201216C
_02012188:
	mov r0, r4
	mov r1, #0x100
	bl DC_StoreRange
	mov r1, r4
	mov r0, #0xa
	mov r2, #0
	bl PXI_SendWordByFifo
	mov r5, r0
	ldr r0, _020121D0 ; =bufMsgQ
	mov r1, r4
	mov r2, #1
	bl OS_SendMessage
	mov r0, #8
	cmp r5, #0
	movge r0, #2
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020121D0: .word bufMsgQ
	arm_func_end WMi_SendCommand

	arm_func_start WMi_SendCommandDirect
WMi_SendCommandDirect: ; 0x020121D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	bl WmGetCommandBuffer4Arm7
	movs r5, r0
	moveq r0, #8
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_StoreRange
	mov r1, r5
	mov r0, #0xa
	mov r2, #0
	bl PXI_SendWordByFifo
	mov r4, r0
	ldr r0, _02012240 ; =bufMsgQ
	mov r1, r5
	mov r2, #1
	bl OS_SendMessage
	mov r0, #8
	cmp r4, #0
	movge r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_02012240: .word bufMsgQ
	arm_func_end WMi_SendCommandDirect

	arm_func_start WMi_GetSystemWork
WMi_GetSystemWork: ; 0x02012244
	ldr r0, _02012250 ; =wmInitialized
	ldr r0, [r0, #4]
	bx lr
_02012250: .word wmInitialized
	arm_func_end WMi_GetSystemWork

	arm_func_start WMi_CheckInitialized
WMi_CheckInitialized: ; 0x02012254
	ldr r0, _0201226C ; =wmInitialized
	ldrh r0, [r0]
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	bx lr
_0201226C: .word wmInitialized
	arm_func_end WMi_CheckInitialized

	arm_func_start WMi_CheckIdle
WMi_CheckIdle: ; 0x02012270
	stmfd sp!, {r4, lr}
	bl WMi_CheckInitialized
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _020122B0 ; =wmInitialized
	mov r1, #2
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl DC_InvalidateRange
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #1
	movls r0, #3
	movhi r0, #0
	ldmfd sp!, {r4, pc}
_020122B0: .word wmInitialized
	arm_func_end WMi_CheckIdle

	arm_func_start WMi_CheckStateEx
WMi_CheckStateEx: ; 0x020122B4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	bl WMi_CheckInitialized
	cmp r0, #0
	ldmnefd sp!, {r4, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r4, _02012340 ; =wmInitialized
	mov r1, #2
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl DC_InvalidateRange
	ldr r1, [r4, #4]
	add r0, sp, #8
	ldr r1, [r1, #4]
	ldr r3, [sp, #8]
	bic r0, r0, #3
	add r4, r0, #4
	cmp r3, #0
	ldrh r12, [r1]
	mov r0, #3
	ldmeqfd sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, #0
_02012318:
	add r4, r4, #4
	ldr r2, [r4, #-4]
	cmp r2, r12
	moveq r0, r1
	subs r3, r3, #1
	str r3, [sp, #8]
	bne _02012318
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_02012340: .word wmInitialized
	arm_func_end WMi_CheckStateEx

	arm_func_start WmReceiveFifo
WmReceiveFifo: ; 0x02012344
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r0, _02012718 ; =wmInitialized
	cmp r2, #0
	ldr r4, [r0, #4]
	mov r10, r1
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0x10]
	mov r1, #0x100
	bl DC_InvalidateRange
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _02012388
	ldr r0, [r4, #4]
	mov r1, #0x800
	bl DC_InvalidateRange
_02012388:
	ldr r0, [r4, #0x10]
	cmp r10, r0
	beq _020123A0
	mov r0, r10
	mov r1, #0x100
	bl DC_InvalidateRange
_020123A0:
	ldrh r0, [r10]
	cmp r0, #0x2c
	blo _0201244C
	cmp r0, #0x80
	bne _020123DC
	ldrh r0, [r10, #2]
	cmp r0, #0x13
	bne _020123C4
	bl OS_Terminate
_020123C4:
	ldr r1, [r4, #0xc8]
	cmp r1, #0
	beq _020126D4
_020123D0:
	mov r0, r10
_020123D4:
	blx r1
	b _020126D4
_020123DC:
	cmp r0, #0x82
	bne _0201242C
	ldrh r0, [r10, #6]
	add r1, r4, r0, lsl #2
	ldr r0, [r1, #0xcc]
	cmp r0, #0
	beq _020126D4
	ldr r0, [r1, #0x10c]
	str r0, [r10, #0x1c]
	ldr r0, [r4, #0x14c]
	strh r0, [r10, #0x22]
	ldr r1, [r4, #4]
	ldr r0, [r10, #8]
	ldrh r1, [r1, #0x72]
	bl DC_InvalidateRange
	ldrh r1, [r10, #6]
	mov r0, r10
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0xcc]
	b _020123D4
_0201242C:
	cmp r0, #0x81
	bne _020126D4
	mov r0, #0xf
	strh r0, [r10]
	ldr r1, [r10, #0x1c]
	cmp r1, #0
	beq _020126D4
	b _020123D0
_0201244C:
	cmp r0, #0xe
	bne _0201248C
	ldrh r0, [r10, #4]
	add r0, r0, #0xf5
	add r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _0201248C
	ldrh r0, [r10, #2]
	cmp r0, #0
	bne _0201248C
	ldr r1, [r4, #4]
	ldr r0, [r10, #8]
	ldrh r1, [r1, #0x72]
	bl DC_InvalidateRange
_0201248C:
	ldrh r1, [r10]
	cmp r1, #4
	cmpne r1, #2
	bne _020124A8
	ldrh r0, [r10, #2]
	cmp r0, #0
	beq _020124C4
_020124A8:
	cmp r1, #3
	beq _020124B8
	cmp r1, #0
	bne _020124C8
_020124B8:
	ldrh r0, [r10, #2]
	cmp r0, #0
	beq _020124C8
_020124C4:
	bl WMi_DeleteSleepCallback
_020124C8:
	ldrh r1, [r10]
	cmp r1, #2
	ldreqh r0, [r10, #2]
	cmpeq r0, #0
	add r0, r4, r1, lsl #2
	bne _02012504
	ldr r4, [r0, #0x18]
	bl WM_Finish
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	blx r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02012504:
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _0201252C
	mov r0, r10
	blx r1
	ldr r0, _02012718 ; =wmInitialized
	ldrh r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201252C:
	ldrh r0, [r10]
	cmp r0, #8
	beq _02012540
	cmp r0, #0xc
	bne _020126D4
_02012540:
	cmp r0, #8
	bne _02012574
	add r0, r10, #0xa
	str r0, [sp]
	ldrh r5, [r10, #8]
	ldrh r6, [r10, #0x10]
	ldrh r0, [r10, #0x12]
	add r11, r10, #0x14
	mov r7, #0
	str r0, [sp, #4]
	ldrh r8, [r10, #0x2c]
	ldrh r9, [r10, #0x2e]
	b _020125A4
_02012574:
	cmp r0, #0xc
	bne _020125A4
	ldrh r5, [r10, #8]
	ldrh r7, [r10, #0xa]
	ldrh r0, [r10, #0xc]
	mov r6, #0
	mov r11, r6
	str r0, [sp, #4]
	add r0, r10, #0x10
	ldrh r8, [r10, #0x16]
	ldrh r9, [r10, #0x18]
	str r0, [sp]
_020125A4:
	cmp r5, #7
	cmpne r5, #9
	beq _020125B8
	cmp r5, #0x1a
	bne _020126D4
_020125B8:
	cmp r5, #7
	ldreq r1, [r4, #0x14c]
	mov r0, #1
	orreq r0, r1, r0, lsl r6
	mvnne r0, r0, lsl r6
	ldrne r1, [r4, #0x14c]
	mov r2, #0x44
	andne r0, r1, r0
	str r0, [r4, #0x14c]
	add r1, r4, #0x100
	strh r7, [r1, #0x50]
	ldr r0, _0201271C ; =cb_Port
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, _0201271C ; =cb_Port
	mov r2, #0x82
	strh r2, [r1]
	mov r2, #0
	strh r2, [r1, #2]
	strh r5, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	strh r2, [r1, #0x10]
	strh r6, [r1, #0x12]
	strh r7, [r1, #0x20]
	ldr r3, [r4, #0x14c]
	ldr r2, _02012720 ; =0x0000FFFF
	strh r3, [r1, #0x22]
	strh r2, [r1, #0x1a]
	ldr r3, [sp, #4]
	ldr r2, _0201271C ; =cb_Port
	ldr r0, [sp]
	strh r3, [r2, #0x3c]
	ldr r1, _02012724 ; =0x02096BA4
	mov r2, #6
	bl MI_CpuCopy8
	cmp r11, #0
	mov r2, #0x18
	beq _02012664
	ldr r1, _02012728 ; =0x02096BB4
	mov r0, r11
	bl MIi_CpuCopy16
	b _02012670
_02012664:
	ldr r1, _02012728 ; =0x02096BB4
	mov r0, #0
	bl MIi_CpuClear16
_02012670:
	mov r1, r8
	cmp r7, #0
	movne r1, r9
	ldr r0, _0201271C ; =cb_Port
	cmp r7, #0
	ldr r5, _0201271C ; =cb_Port
	strh r1, [r0, #0x40]
	movne r9, r8
	mov r6, #0
	strh r9, [r5, #0x42]
_02012698:
	strh r6, [r5, #6]
	add r2, r4, r6, lsl #2
	ldr r0, [r2, #0xcc]
	cmp r0, #0
	beq _020126C0
	ldr r1, [r2, #0x10c]
	mov r0, r5
	str r1, [r5, #0x1c]
	ldr r1, [r2, #0xcc]
	blx r1
_020126C0:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0x10
	blo _02012698
_020126D4:
	mov r5, #0x100
	ldr r0, [r4, #0x10]
	mov r1, r5
	bl DC_InvalidateRange
	bl WmClearFifoRecvFlag
	ldr r0, [r4, #0x10]
	cmp r10, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r2, [r10]
	mov r0, r10
	mov r1, r5
	orr r2, r2, #0x8000
	strh r2, [r10]
	bl DC_StoreRange
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02012718: .word wmInitialized
_0201271C: .word cb_Port
_02012720: .word 0x0000FFFF
_02012724: .word unk_02096BA4
_02012728: .word unk_02096BB4
	arm_func_end WmReceiveFifo

	arm_func_start WmClearFifoRecvFlag
WmClearFifoRecvFlag: ; 0x0201272C
	ldr r2, _02012748 ; =0x02FFFF96
	ldrh r1, [r2]
	tst r1, #1
	ldrne r0, _0201274C ; =0x0000FFFE
	andne r0, r1, r0
	strneh r0, [r2]
	bx lr
_02012748: .word 0x02FFFF96
_0201274C: .word 0x0000FFFE
	arm_func_end WmClearFifoRecvFlag

	arm_func_start WMi_GetStatusAddress
WMi_GetStatusAddress: ; 0x02012750
	stmfd sp!, {r3, lr}
	bl WMi_CheckInitialized
	cmp r0, #0
	movne r0, #0
	ldreq r0, _02012770 ; =wmInitialized
	ldreq r0, [r0, #4]
	ldreq r0, [r0, #4]
	ldmfd sp!, {r3, pc}
_02012770: .word wmInitialized
	arm_func_end WMi_GetStatusAddress

	arm_func_start WM_GetAID
WM_GetAID: ; 0x02012774
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020127A0 ; =wmInitialized
	ldr r1, [r1, #4]
	cmp r1, #0
	addne r1, r1, #0x100
	ldrneh r4, [r1, #0x50]
	moveq r4, #0
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020127A0: .word wmInitialized
	arm_func_end WM_GetAID

	arm_func_start WM_GetConnectedAIDs
WM_GetConnectedAIDs: ; 0x020127A4
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020127D0 ; =wmInitialized
	ldr r1, [r1, #4]
	cmp r1, #0
	ldrne r4, [r1, #0x14c]
	moveq r4, #0
	bl OS_RestoreInterrupts
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_020127D0: .word wmInitialized
	arm_func_end WM_GetConnectedAIDs

	arm_func_start WMi_RegisterSleepCallback
WMi_RegisterSleepCallback: ; 0x020127D4
	ldr r1, _020127F8 ; =WmSleepCallback
	ldr r2, _020127FC ; =wmInitialized
	ldr r0, _02012800 ; =sleepCbInfo
	str r1, [r2, #8]
	mov r3, #0
	ldr r12, _02012804 ; =PMi_InsertPostSleepCallbackEx
	mov r1, #0x3e8
	str r3, [r2, #0xc]
	bx r12
_020127F8: .word WmSleepCallback
_020127FC: .word wmInitialized
_02012800: .word sleepCbInfo
_02012804: .word PMi_InsertPostSleepCallbackEx
	arm_func_end WMi_RegisterSleepCallback

	arm_func_start WMi_DeleteSleepCallback
WMi_DeleteSleepCallback: ; 0x02012808
	ldr r0, _02012814 ; =sleepCbInfo
	ldr r12, _02012818 ; =PM_DeletePreSleepCallback
	bx r12
_02012814: .word sleepCbInfo
_02012818: .word PM_DeletePreSleepCallback
	arm_func_end WMi_DeleteSleepCallback

	arm_func_start WmSleepCallback
WmSleepCallback: ; 0x0201281C
	ldr r12, _02012824 ; =OS_Terminate
	bx r12
_02012824: .word OS_Terminate
	arm_func_end WmSleepCallback

	arm_func_start WM_SetIndCallback
WM_SetIndCallback: ; 0x02012828
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl OS_DisableInterrupts
	mov r5, r0
	bl WMi_CheckInitialized
	movs r4, r0
	beq _02012854
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02012854:
	bl WMi_GetSystemWork
	str r6, [r0, #0xc8]
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WM_SetIndCallback

	arm_func_start WM_SetPortCallback
WM_SetPortCallback: ; 0x0201286C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	movs r5, r1
	mov r6, r0
	mov r4, r2
	beq _020128D4
	mov r7, #0
	add r0, sp, #0
	mov r1, r7
	mov r2, #0x44
	bl MI_CpuFill8
	ldr r1, _02012940 ; =0x0000FFFF
	mov r3, #0x82
	mov r2, #0x19
	add r0, sp, #0x14
	strh r3, [sp]
	strh r7, [sp, #2]
	strh r2, [sp, #4]
	strh r6, [sp, #6]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	strh r7, [sp, #0x10]
	strh r1, [sp, #0x1a]
	str r4, [sp, #0x1c]
	strh r7, [sp, #0x12]
	bl OS_GetMacAddress
_020128D4:
	bl OS_DisableInterrupts
	mov r8, r0
	bl WMi_CheckInitialized
	movs r7, r0
	beq _020128FC
	mov r0, r8
	bl OS_RestoreInterrupts
	add sp, sp, #0x44
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020128FC:
	bl WMi_GetSystemWork
	add r0, r0, r6, lsl #2
	str r5, [r0, #0xcc]
	str r4, [r0, #0x10c]
	cmp r5, #0
	beq _0201292C
	bl WM_GetConnectedAIDs
	strh r0, [sp, #0x22]
	bl WM_GetAID
	strh r0, [sp, #0x20]
	add r0, sp, #0
	blx r5
_0201292C:
	mov r0, r8
	bl OS_RestoreInterrupts
	mov r0, #0
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02012940: .word 0x0000FFFF
	arm_func_end WM_SetPortCallback

	arm_func_start WM_ReadStatus
WM_ReadStatus: ; 0x02012944
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl WMi_GetSystemWork
	mov r5, r0
	bl WMi_CheckInitialized
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r6, #0
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0x7d0
	ldr r0, [r5, #4]
	mov r1, r4
	bl DC_InvalidateRange
	ldr r0, [r5, #4]
	mov r1, r6
	mov r2, r4
	bl MIi_CpuCopyFast
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WM_ReadStatus

	arm_func_start WM_GetMPSendBufferSize
WM_GetMPSendBufferSize: ; 0x02012994
	stmfd sp!, {r3, r4, r5, lr}
	bl WMi_GetSystemWork
	mov r5, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl WMi_CheckStateEx
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	mov r4, #4
	mov r1, r4
	add r0, r0, #0xc
	bl DC_InvalidateRange
	ldr r2, [r5, #4]
	ldr r0, [r2, #0xc]
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r2, #0x3c
	bl DC_InvalidateRange
	ldr r0, [r5, #4]
	ldrh r0, [r0, #0x3c]
	add r0, r0, #0x1f
	bic r0, r0, #0x1f
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_GetMPSendBufferSize

	arm_func_start WM_GetMPReceiveBufferSize
WM_GetMPReceiveBufferSize: ; 0x02012A04
	stmfd sp!, {r4, r5, r6, lr}
	bl WMi_GetSystemWork
	mov r5, #2
	mov r4, r0
	mov r0, r5
	mov r1, #7
	mov r2, #8
	bl WMi_CheckStateEx
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl DC_InvalidateRange
	ldr r2, [r4, #4]
	ldr r0, [r2, #0xc]
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r5
	add r0, r2, #0x188
	bl DC_InvalidateRange
	ldr r2, [r4, #4]
	mov r5, #2
	add r0, r2, #0x100
	ldrh r0, [r0, #0x88]
	mov r6, #1
	mov r1, r5
	cmp r0, #0
	add r0, r2, #0x3e
	movne r6, #0
	bl DC_InvalidateRange
	ldr r0, [r4, #4]
	cmp r6, #1
	ldrh r6, [r0, #0x3e]
	addne r0, r6, #0x51
	bicne r0, r0, #0x1f
	movne r0, r0, lsl #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xf8
	bl DC_InvalidateRange
	ldr r0, [r4, #4]
	add r1, r6, #0xc
	ldrh r0, [r0, #0xf8]
	mul r0, r1, r0
	add r0, r0, #0x29
	bic r0, r0, #0x1f
	mov r0, r0, lsl #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WM_GetMPReceiveBufferSize

	arm_func_start WM_ReadMPData
WM_ReadMPData: ; 0x02012AD0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r4, r1
	bl WMi_GetSystemWork
	mov r6, r0
	bl WMi_CheckInitialized
	cmp r0, #0
	addne sp, sp, #0x3c
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	cmp r4, #1
	blo _02012B0C
	cmp r4, #0xf
	bls _02012B18
_02012B0C:
	add sp, sp, #0x3c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02012B18:
	ldr r0, [r6, #4]
	mov r1, #2
	add r0, r0, #0x82
	add r0, r0, #0x100
	bl DC_InvalidateRange
	ldr r0, [r6, #4]
	mov r1, #1
	add r0, r0, #0x100
	ldrh r0, [r0, #0x82]
	tst r0, r1, lsl r4
	addeq sp, sp, #0x3c
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _02012B60
	cmp r0, #0xf
	bls _02012B6C
_02012B60:
	add sp, sp, #0x3c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02012B6C:
	add r0, r5, #0xa
	str r0, [sp]
	mov r6, #0
	add r3, sp, #0
_02012B7C:
	ldr r0, [r3, r6, lsl #2]
	ldrh r1, [r0, #4]
	cmp r4, r1
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r6, r6, #1
	add r1, r3, r6, lsl #2
	ldrh r0, [r5, #4]
	ldrh r2, [r5, #6]
	ldr r1, [r1, #-4]
	cmp r6, r0
	add r0, r2, r1
	str r0, [r3, r6, lsl #2]
	blt _02012B7C
	mov r0, #0
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end WM_ReadMPData

	arm_func_start WM_GetAllowedChannel
WM_GetAllowedChannel: ; 0x02012BC0
	stmfd sp!, {r3, lr}
	bl WMi_CheckInitialized
	cmp r0, #0
	movne r0, #0x8000
	ldreq r0, _02012BDC ; =0x02FFFCFA
	ldreqh r0, [r0]
	ldmfd sp!, {r3, pc}
_02012BDC: .word 0x02FFFCFA
	arm_func_end WM_GetAllowedChannel

	arm_func_start WM_GetLinkLevel
WM_GetLinkLevel: ; 0x02012BE0
	stmfd sp!, {r3, r4, r5, lr}
	bl WMi_GetSystemWork
	mov r5, r0
	bl WMi_CheckInitialized
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #2
	ldr r0, [r5, #4]
	mov r1, r4
	bl DC_InvalidateRange
	ldr r1, [r5, #4]
	ldrh r0, [r1]
	cmp r0, #9
	beq _02012C2C
	cmp r0, #0xa
	cmpne r0, #0xb
	beq _02012C54
	b _02012C6C
_02012C2C:
	add r0, r1, #0x82
	mov r1, r4
	add r0, r0, #0x100
	bl DC_InvalidateRange
	ldr r1, [r5, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0x82]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02012C54:
	add r0, r1, #0xbc
	mov r1, #2
	bl DC_InvalidateRange
	ldr r0, [r5, #4]
	ldrh r0, [r0, #0xbc]
	ldmfd sp!, {r3, r4, r5, pc}
_02012C6C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_GetLinkLevel

	arm_func_start WM_GetDispersionBeaconPeriod
WM_GetDispersionBeaconPeriod: ; 0x02012C74
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov r0, r4
	bl OS_GetMacAddress
	mov r2, #0
	mov r1, r2
_02012C90:
	ldrb r0, [r4, r2]
	add r2, r2, #1
	cmp r2, #6
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	blt _02012C90
	ldr r0, _02012D00 ; =0x02FFFC3C
	ldr r12, _02012D04 ; =0x66666667
	ldr r0, [r0]
	mov r3, #0x14
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	rsb r0, r0, r0, lsl #3
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r2, lsr #0x1f
	smull r2, lr, r12, r2
	add lr, r1, lr, asr #3
	smull r1, r2, r3, lr
	rsb lr, r1, r0, lsr #16
	add r0, lr, #0xc8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02012D00: .word 0x02FFFC3C
_02012D04: .word 0x66666667
	arm_func_end WM_GetDispersionBeaconPeriod

	arm_func_start WM_GetDispersionScanPeriod
WM_GetDispersionScanPeriod: ; 0x02012D08
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov r0, r4
	bl OS_GetMacAddress
	mov r1, #0
	mov r2, r1
_02012D24:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	cmp r1, #6
	add r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	blt _02012D24
	ldr r0, _02012D98 ; =0x02FFFC3C
	mov r1, #0xd
	ldr r0, [r0]
	ldr r3, _02012D9C ; =0x66666667
	mov r0, r0, lsl #0x10
	add r0, r2, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mul r0, r2, r1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r2, lsr #0x1f
	smull r2, r12, r3, r2
	add r12, r1, r12, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r12
	rsb r12, r1, r0, lsr #16
	add r0, r12, #0x1e
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02012D98: .word 0x02FFFC3C
_02012D9C: .word 0x66666667
	arm_func_end WM_GetDispersionScanPeriod

	arm_func_start WM_GetOtherElements
WM_GetOtherElements: ; 0x02012DA0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	ldrh r2, [r1, #0x3c]
	mov lr, r0
	cmp r2, #0
	beq _02012DE8
	mov r0, #0
	add r5, sp, #0
	strb r0, [sp]
	mov r4, #8
_02012DC8:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02012DC8
	ldr r0, [r5]
	add sp, sp, #0x84
	str r0, [lr]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02012DE8:
	ldrh r0, [r1, #0x3e]
	strb r0, [sp]
	ands r0, r0, #0xff
	bne _02012E20
	add r5, sp, #0
	mov r4, #8
_02012E00:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02012E00
	ldr r0, [r5]
	add sp, sp, #0x84
	str r0, [lr]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02012E20:
	ldrh r2, [r1]
	cmp r0, #0x10
	movhi r0, #0x10
	strhib r0, [sp]
	ldrb r0, [sp]
	mov r2, r2, lsl #1
	sub r4, r2, #0x40
	mov r3, #0
	cmp r0, #0
	mov r2, r3
	add r0, r1, #0x40
	mov r4, r4, lsl #0x10
	ble _02012ED0
	add r12, sp, #0
_02012E58:
	ldrb r5, [r0, #1]
	ldrb r7, [r0]
	add r6, r12, r2, lsl #3
	add r1, r5, #2
	mov r1, r1, lsl #0x10
	add r3, r3, r1, lsr #16
	strb r7, [r6, #4]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	strb r5, [r6, #5]
	add r5, r0, #2
	str r5, [r6, #8]
	cmp r3, r4, lsr #16
	bls _02012EBC
	mov r0, #0
	strb r0, [sp]
	mov r4, #8
_02012E9C:
	ldmia r12!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02012E9C
	ldr r0, [r12]
	add sp, sp, #0x84
	str r0, [lr]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02012EBC:
	ldrb r5, [sp]
	add r2, r2, #1
	add r0, r0, r1, lsr #16
	cmp r2, r5
	blt _02012E58
_02012ED0:
	add r12, sp, #0
	mov r4, #8
_02012ED8:
	ldmia r12!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02012ED8
	ldr r0, [r12]
	str r0, [lr]
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end WM_GetOtherElements

	arm_func_start WM_GetNextTgid
WM_GetNextTgid: ; 0x02012EF8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r4, _02012F64 ; =WM_GetNextTgid_tgid_bak
	ldr r0, [r4]
	cmp r0, #0x10000
	bne _02012F3C
	bl RTC_Init
	add r0, sp, #0
	bl RTC_GetTime
	cmp r0, #0
	bne _02012F3C
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r1, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r4]
_02012F3C:
	ldr r1, _02012F64 ; =WM_GetNextTgid_tgid_bak
	ldr r0, [r1]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r2, lsl #0x10
	str r2, [r1]
	mov r0, r0, lsr #0x10
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_02012F64: .word WM_GetNextTgid_tgid_bak
	arm_func_end WM_GetNextTgid

	arm_func_start WM_Enable
WM_Enable: ; 0x02012F68
	ldr r12, _02012F74 ; =WMi_EnableEx
	mov r1, #0
	bx r12
_02012F74: .word WMi_EnableEx
	arm_func_end WM_Enable

	arm_func_start WMi_EnableEx
WMi_EnableEx: ; 0x02012F78
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r0, #1
	mov r1, #0
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #3
	mov r0, r4
	mov r1, r6
	bl WMi_SetCallbackTable
	bl WMi_RegisterSleepCallback
	bl WMi_GetSystemWork
	mov r3, r0
	ldr r2, [r3, #0x10]
	mov r0, r4
	stmia sp, {r2, r5}
	mov r1, #4
	ldmia r3, {r2, r3}
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WMi_EnableEx

	arm_func_start WM_Disable
WM_Disable: ; 0x02012FE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r1, r0
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #4
	mov r0, r4
	mov r1, r5
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_Disable

	arm_func_start WM_PowerOn
WM_PowerOn: ; 0x02013028
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r1, r0
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #5
	mov r0, r4
	mov r1, r5
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_PowerOn

	arm_func_start WM_PowerOff
WM_PowerOff: ; 0x0201306C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #2
	mov r6, r0
	mov r1, r5
	mov r0, #1
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #6
	mov r0, r4
	mov r1, r6
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WM_PowerOff

	arm_func_start WM_Initialize
WM_Initialize: ; 0x020130B4
	ldr r12, _020130C0 ; =WMi_InitializeEx
	mov r3, #0
	bx r12
_020130C0: .word WMi_InitializeEx
	arm_func_end WM_Initialize

	arm_func_start WMi_InitializeEx
WMi_InitializeEx: ; 0x020130C4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r1
	mov r1, r2
	mov r5, r3
	bl WM_Init
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #0
	mov r0, r4
	mov r1, r6
	bl WMi_SetCallbackTable
	bl WMi_RegisterSleepCallback
	bl WMi_GetSystemWork
	mov r3, r0
	ldr r2, [r3, #0x10]
	mov r0, r4
	stmia sp, {r2, r5}
	mov r1, #4
	ldmia r3, {r2, r3}
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WMi_InitializeEx

	arm_func_start WM_Reset
WM_Reset: ; 0x0201312C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WMi_CheckIdle
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #1
	mov r0, r4
	mov r1, r5
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_Reset

	arm_func_start WM_End
WM_End: ; 0x02013168
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #2
	mov r5, r0
	mov r1, r4
	mov r0, #1
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, r5
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_End

	arm_func_start WM_SetParentParameter
WM_SetParentParameter: ; 0x020131AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _020131F4
	ldr r0, [r4]
	cmp r0, #0
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, pc}
_020131F4:
	ldrh r1, [r4, #0x14]
	ldrh r0, [r4, #0x34]
	mov r2, #0x2a
	cmp r1, #0
	moveq r2, #0
	add r0, r0, r2
	cmp r0, #0x200
	bgt _02013230
	ldrh r0, [r4, #0x36]
	cmp r1, #0
	movne r1, #6
	moveq r1, #0
	add r0, r0, r1
	cmp r0, #0x200
	ble _02013238
_02013230:
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, pc}
_02013238:
	mov r0, r4
	bl WmCheckParentParameter
	mov r1, r5
	mov r0, #7
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0x40
	bl DC_StoreRange
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _0201326C
	ldr r0, [r4]
	bl DC_StoreRange
_0201326C:
	mov r2, r4
	mov r0, #7
	mov r1, #1
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_SetParentParameter

	arm_func_start WmCheckParentParameter
WmCheckParentParameter: ; 0x02013288
	ldrh r1, [r0, #4]
	cmp r1, #0x70
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #0x18]
	cmp r1, #0xa
	blo _020132AC
	cmp r1, #0x3e8
	bls _020132B4
_020132AC:
	mov r0, #0
	bx lr
_020132B4:
	ldrh r0, [r0, #0x32]
	cmp r0, #1
	blo _020132C8
	cmp r0, #0xe
	bls _020132D0
_020132C8:
	mov r0, #0
	bx lr
_020132D0:
	mov r0, #1
	bx lr
	arm_func_end WmCheckParentParameter

	arm_func_start WMi_StartParentEx
WMi_StartParentEx: ; 0x020132D8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #1
	mov r8, r0
	mov r5, #2
	mov r7, r1
	mov r0, r6
	mov r1, r5
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl WMi_GetSystemWork
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	mov r4, #8
	str r2, [r0, #0x14c]
	mov r0, r4
	mov r1, r8
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end WMi_StartParentEx

	arm_func_start WM_StartParent
WM_StartParent: ; 0x02013340
	ldr r12, _0201334C ; =WMi_StartParentEx
	mov r1, #1
	bx r12
_0201334C: .word WMi_StartParentEx
	arm_func_end WM_StartParent

	arm_func_start WM_EndParent
WM_EndParent: ; 0x02013350
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r1, #7
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #9
	mov r0, r4
	mov r1, r5
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_EndParent

	arm_func_start WM_StartScanEx
WM_StartScanEx: ; 0x02013394
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r0, #3
	mov r4, r1
	mov r2, r0
	mov r1, #2
	mov r3, #5
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x3c
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	cmp r4, #0
	addeq sp, sp, #0x3c
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x3c
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #4]
	cmp r0, #0x400
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhifd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #0x12]
	cmp r0, #0x20
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhifd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	cmpne r0, #3
	addne sp, sp, #0x3c
	movne r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	add r0, r0, #0xfe
	add r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _0201345C
	ldrh r0, [r4, #0x34]
	cmp r0, #0x20
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhifd sp!, {r3, r4, r5, r6, pc}
_0201345C:
	mov r6, #0x26
	mov r0, r6
	mov r1, r5
	bl WMi_SetCallbackTable
	ldrh lr, [r4, #6]
	ldrh r5, [r4, #4]
	ldrh r3, [r4, #8]
	ldr r12, [r4]
	add r1, sp, #0xc
	add r0, r4, #0xa
	mov r2, #6
	strh r6, [sp]
	strh lr, [sp, #2]
	str r12, [sp, #4]
	strh r5, [sp, #8]
	strh r3, [sp, #0xa]
	bl MI_CpuCopy8
	ldrh r12, [r4, #0x10]
	ldrh r5, [r4, #0x34]
	ldrh r3, [r4, #0x12]
	add r1, sp, #0x16
	add r0, r4, #0x14
	mov r2, #0x20
	strh r12, [sp, #0x12]
	strh r5, [sp, #0x36]
	strh r3, [sp, #0x14]
	bl MI_CpuCopy8
	add r0, sp, #0
	mov r1, #0x3c
	bl WMi_SendCommandDirect
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end WM_StartScanEx

	arm_func_start WM_EndScan
WM_EndScan: ; 0x020134E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r1, #5
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0xb
	mov r0, r4
	mov r1, r5
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_EndScan

	arm_func_start WM_StartConnectEx
WM_StartConnectEx: ; 0x02013528
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r7, r0
	mov r6, r1
	mov r0, #1
	mov r1, #2
	mov r5, r2
	mov r4, r3
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r6, #0
	addeq sp, sp, #0x28
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r1, [r6]
	mov r0, r6
	mov r1, r1, lsl #1
	bl DC_StoreRange
	bl WMi_GetSystemWork
	add r1, r0, #0x100
	mov r9, #0
	strh r9, [r1, #0x50]
	mov r8, #0xc
	str r9, [r0, #0x14c]
	mov r0, r8
	mov r1, r7
	bl WMi_SetCallbackTable
	strh r8, [sp]
	str r6, [sp, #4]
	cmp r5, #0
	mov r2, #0x18
	beq _020135C0
	add r1, sp, #8
	mov r0, r5
	bl MI_CpuCopy8
	b _020135CC
_020135C0:
	add r0, sp, #8
	mov r1, r9
	bl MI_CpuFill8
_020135CC:
	ldrh r2, [sp, #0x48]
	add r0, sp, #0
	mov r1, #0x28
	str r4, [sp, #0x20]
	strh r2, [sp, #0x26]
	bl WMi_SendCommandDirect
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end WM_StartConnectEx

	arm_func_start WM_Disconnect
WM_Disconnect: ; 0x020135F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl WMi_GetSystemWork
	mov r1, #0xa
	mov r7, r0
	str r1, [sp]
	mov r6, #0xb
	mov r0, #5
	mov r1, #7
	mov r2, #9
	mov r3, #8
	str r6, [sp, #4]
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #4]
	ldrh r0, [r1]
	cmp r0, #7
	beq _02013654
	cmp r0, #9
	bne _020136A4
_02013654:
	cmp r4, #1
	blo _02013664
	cmp r4, #0xf
	bls _02013670
_02013664:
	add sp, sp, #8
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02013670:
	add r0, r1, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl DC_InvalidateRange
	ldr r0, [r7, #4]
	mov r1, #1
	add r0, r0, #0x100
	ldrh r0, [r0, #0x82]
	tst r0, r1, lsl r4
	bne _020136B4
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020136A4:
	cmp r4, #0
	addne sp, sp, #8
	movne r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020136B4:
	mov r6, #0xd
	mov r0, r6
	mov r1, r5
	bl WMi_SetCallbackTable
	mov r1, #1
	mov r2, r1, lsl r4
	mov r0, r6
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WM_Disconnect

	arm_func_start WMi_StartMP
WMi_StartMP: ; 0x020136E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r8, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl WMi_GetSystemWork
	mov r9, #2
	ldr r7, [r0, #4]
	mov r0, r9
	mov r1, #7
	mov r2, #8
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x40
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r9
	add r0, r7, #0x188
	bl DC_InvalidateRange
	mov r1, r9
	add r0, r7, #0xc6
	bl DC_InvalidateRange
	add r0, r7, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	ldrneh r0, [r7, #0xc6]
	cmpne r0, #1
	addne sp, sp, #0x40
	movne r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r7, #0xc
	mov r1, #4
	bl DC_InvalidateRange
	ldr r0, [r7, #0xc]
	cmp r0, #1
	addeq sp, sp, #0x40
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	tst r5, #0x3f
	addne sp, sp, #0x40
	movne r0, #6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r9, [sp, #0x60]
	tst r9, #0x1f
	addne sp, sp, #0x40
	movne r0, #6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r7, #0x9c
	mov r1, #2
	bl DC_InvalidateRange
	ldrh r0, [r7, #0x9c]
	cmp r0, #0
	bne _020137E0
	bl WM_GetMPReceiveBufferSize
	cmp r5, r0
	addlt sp, sp, #0x40
	movlt r0, #6
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl WM_GetMPSendBufferSize
	cmp r9, r0
	addlt sp, sp, #0x40
	movlt r0, #6
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020137E0:
	mov r10, #0xe
	mov r0, r10
	mov r1, r8
	bl WMi_SetCallbackTable
	add r8, sp, #0
	mov r9, #0
	mov r7, #0x40
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl MIi_CpuClear32
	ldrh r3, [sp, #0x60]
	mov r5, r5, lsr #1
	add r1, sp, #0x14
	mov r0, r9
	mov r2, #0x1c
	strh r10, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r3, [sp, #0x10]
	bl MIi_CpuClear32
	ldr r0, [sp, #0x64]
	add r1, sp, #0x30
	mov r2, #0x10
	bl MIi_CpuCopy32
	mov r0, r8
	mov r1, r7
	bl WMi_SendCommandDirect
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end WMi_StartMP

	arm_func_start WM_StartMPEx
WM_StartMPEx: ; 0x02013864
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r1
	mov r8, r0
	mov r6, r2
	add r1, sp, #8
	mov r0, #0
	mov r2, #0x10
	mov r5, r3
	ldr r4, [sp, #0x34]
	bl MIi_CpuClear32
	ldr r1, [sp, #0x48]
	ldrh r12, [sp, #0x38]
	ldr r0, [sp, #0x44]
	ldr lr, _02013904 ; =0x00001E03
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	strb r1, [sp, #0x16]
	cmp r0, #0
	cmpne r4, #0
	strb r3, [sp, #0x14]
	strb r2, [sp, #0x15]
	ldrh r1, [sp, #0x30]
	str lr, [sp, #8]
	orrne r0, lr, #4
	strne r0, [sp, #8]
	strh r12, [sp, #0x12]
	strh r4, [sp, #0xc]
	strh r4, [sp, #0xe]
	strneh r4, [sp, #0x10]
	str r1, [sp]
	add r4, sp, #8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r4, [sp, #4]
	bl WMi_StartMP
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02013904: .word 0x00001E03
	arm_func_end WM_StartMPEx

	arm_func_start WM_StartMP
WM_StartMP: ; 0x02013908
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	add r4, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r1, r4
	mov r0, #0
	mov r2, #0x10
	mov r5, r3
	bl MIi_CpuClear32
	ldrh r12, [sp, #0x34]
	mov r0, r8
	mov r1, r7
	strh r12, [sp, #0xc]
	strh r12, [sp, #0xe]
	mov r12, #3
	str r12, [sp, #8]
	ldrh r12, [sp, #0x30]
	mov r2, r6
	mov r3, r5
	str r12, [sp]
	str r4, [sp, #4]
	bl WMi_StartMP
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end WM_StartMP

	arm_func_start WM_SetMPParameter
WM_SetMPParameter: ; 0x02013970
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r7, r1
	bl WMi_GetSystemWork
	bl WMi_CheckInitialized
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x23
	mov r0, r6
	mov r1, r4
	bl WMi_SetCallbackTable
	add r5, sp, #0
	mov r4, #0x20
	mov r1, r5
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClear32
	add r1, sp, #4
	mov r0, r7
	mov r2, #0x1c
	strh r6, [sp]
	bl MIi_CpuCopy32
	mov r0, r5
	mov r1, r4
	bl WMi_SendCommandDirect
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WM_SetMPParameter

	arm_func_start WM_SetMPParentSize
WM_SetMPParentSize: ; 0x020139EC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	add r4, sp, #0
	mov r6, r0
	mov r5, r1
	mov r1, r4
	mov r0, #0
	mov r2, #0x1c
	bl MIi_CpuClear32
	mov r2, #8
	mov r0, r6
	mov r1, r4
	str r2, [sp]
	strh r5, [sp, #0xa]
	bl WM_SetMPParameter
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end WM_SetMPParentSize

	arm_func_start WM_SetMPTiming
WM_SetMPTiming: ; 0x02013A30
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r1, r4
	mov r0, #0
	mov r2, #0x1c
	bl MIi_CpuClear32
	mov r2, #0x180
	mov r0, r7
	mov r1, r4
	str r2, [sp]
	strh r6, [sp, #0x12]
	strh r5, [sp, #0x14]
	bl WM_SetMPParameter
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end WM_SetMPTiming

	arm_func_start WM_SetMPDataToPortEx
WM_SetMPDataToPortEx: ; 0x02013A7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r10, #1
	bl WMi_GetSystemWork
	mov r9, #2
	ldr r4, [r0, #4]
	mov r0, r9
	mov r1, #9
	mov r2, #0xa
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r9
	add r0, r4, #0x188
	bl DC_InvalidateRange
	add r0, r4, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	bne _02013B00
	add r0, r4, #0x82
	mov r1, r9
	add r0, r0, #0x100
	bl DC_InvalidateRange
	add r2, r4, #0x100
	mov r1, r9
	add r0, r4, #0x86
	ldrh r10, [r2, #0x82]
	bl DC_InvalidateRange
_02013B00:
	cmp r6, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r10, #0
	addeq sp, sp, #0x14
	moveq r0, #7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r9, #2
	mov r1, r9
	add r0, r4, #0x7c
	bl DC_InvalidateRange
	ldr r0, [r4, #0x7c]
	cmp r6, r0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0x200
	addhi sp, sp, #0x14
	movhi r0, #6
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r5
	bl DC_StoreRange
	ldrh r2, [sp, #0x38]
	ldrh r1, [sp, #0x3c]
	ldrh r0, [sp, #0x40]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r2, r6
	mov r3, r5
	mov r0, #0xf
	mov r1, #7
	str r7, [sp, #0x10]
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, r9
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end WM_SetMPDataToPortEx

	arm_func_start WM_EndMP
WM_EndMP: ; 0x02013BB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl WMi_GetSystemWork
	mov r5, #2
	mov r4, r0
	mov r0, r5
	mov r1, #9
	mov r2, #0xa
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl DC_InvalidateRange
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0x10
	mov r0, r4
	mov r1, r6
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WM_EndMP

	arm_func_start WM_StartDCF
WM_StartDCF: ; 0x02013C2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl WMi_GetSystemWork
	mov r7, r0
	mov r0, #1
	mov r1, #8
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #4]
	mov r1, #4
	add r0, r0, #0x10
	bl DC_InvalidateRange
	ldr r0, [r7, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0x10
	movlo r0, #6
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r4
	bl DC_StoreRange
	mov r7, #0x11
	mov r0, r7
	mov r1, r6
	bl WMi_SetCallbackTable
	mov r6, #2
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WM_StartDCF

	arm_func_start WM_SetDCFData
WM_SetDCFData: ; 0x02013CD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl WMi_GetSystemWork
	mov r9, r0
	mov r0, #1
	mov r1, #0xb
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #4]
	mov r4, #4
	mov r1, r4
	add r0, r0, #0x10
	bl DC_InvalidateRange
	ldr r0, [r9, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r4, #0x5e0
	cmp r5, r0
	addhi sp, sp, #0x10
	movhi r0, #6
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl DC_StoreRange
	mov r9, #0x12
	mov r0, r9
	mov r1, r8
	bl WMi_SetCallbackTable
	add r1, sp, #8
	mov r0, r7
	mov r2, #6
	bl MI_CpuCopy8
	str r6, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end WM_SetDCFData

	arm_func_start WM_EndDCF
WM_EndDCF: ; 0x02013DA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WMi_GetSystemWork
	mov r4, r0
	mov r0, #1
	mov r1, #0xb
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0x10
	bl DC_InvalidateRange
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0x13
	mov r0, r4
	mov r1, r5
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_EndDCF

	arm_func_start WM_StartDataSharing
WM_StartDataSharing: ; 0x02013E14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r9, r1
	mov r6, r2
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	mov r5, r3
	mov r8, #1
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0x10
	addhs sp, sp, #0xc
	movhs r0, #6
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl WM_GetAID
	movs r11, r0
	bne _02013E90
	bl WM_GetConnectedAIDs
	mov r8, r0
_02013E90:
	mov r4, #0
	mov r0, r4
	mov r1, r10
	mov r2, #0x820
	bl MIi_CpuClearFast
	add r0, r10, #0x800
	ldr r1, [sp, #0x30]
	mov r7, #1
	cmp r1, #0
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r9, [r0, #0x16]
	mov r0, r7, lsl r11
	mov r0, r0, lsl #0x10
	movne r4, #1
	add r1, r10, #0x800
	orr r0, r6, r0, lsr #16
	strh r4, [r1, #0x18]
	strh r0, [r1, #0xe]
	bl MATH_CountPopulation
	add r3, r10, #0x800
	mul r1, r5, r0
	strh r1, [r3, #0x14]
	ldrh r1, [r3, #0x14]
	strh r0, [r3, #0x12]
	cmp r1, #0x1fc
	movhi r0, #0
	strhih r0, [r3, #0xe]
	addhi sp, sp, #0xc
	movhi r0, #6
	ldmhifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r1, #4
	strh r0, [r3, #0x14]
	strh r7, [r3, #0x1c]
	cmp r11, #0
	bne _02014020
	orr r4, r8, #1
	mov r2, #0
_02013F34:
	ldrh r1, [r3, #0xe]
	mov r0, r2, lsl #9
	add r2, r2, #1
	and r1, r1, r4
	strh r1, [r10, r0]
	cmp r2, #4
	blt _02013F34
	ldr r1, _02014044 ; =WmDataSharingReceiveCallback_Parent
	mov r0, r9
	mov r2, r10
	bl WM_SetPortCallback
	mov r9, #0
	add r4, r10, #0x800
	mov r11, #2
	ldr r6, _02014048 ; =WmDataSharingSetDataCallback
	ldr r5, _0201404C ; =0x0000FFFF
	b _02014004
_02013F78:
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xe]
	mov r0, r6
	add r2, r2, #1
	and r1, r1, r8
	and r2, r2, #3
	mov r1, r1, lsl #0x10
	strh r2, [r4, #8]
	mov r1, r1, lsr #0x10
	str r1, [sp]
	ldrh r3, [r4, #0x16]
	mov r1, r10
	add r2, r10, r9, lsl #9
	stmib sp, {r3, r7}
	ldrh r3, [r4, #0x14]
	bl WM_SetMPDataToPortEx
	cmp r0, #7
	bne _02013FE0
	add r0, r10, r9, lsl #1
	add r0, r0, #0x800
	strh r5, [r0]
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r4, #0xa]
	b _02014000
_02013FE0:
	cmp r0, #0
	cmpne r0, #2
	addne r1, r10, #0x800
	movne r2, #5
	strneh r2, [r1, #0x1c]
	addne sp, sp, #0xc
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02014000:
	add r9, r9, #1
_02014004:
	ldrh r0, [r4, #0x18]
	cmp r0, #1
	movne r0, r7
	moveq r0, r11
	cmp r9, r0
	blt _02013F78
	b _02014038
_02014020:
	ldr r1, _02014050 ; =WmDataSharingReceiveCallback_Child
	mov r4, #3
	mov r0, r9
	mov r2, r10
	strh r4, [r3, #0xa]
	bl WM_SetPortCallback
_02014038:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02014044: .word WmDataSharingReceiveCallback_Parent
_02014048: .word WmDataSharingSetDataCallback
_0201404C: .word 0x0000FFFF
_02014050: .word WmDataSharingReceiveCallback_Child
	arm_func_end WM_StartDataSharing

	arm_func_start WM_EndDataSharing
WM_EndDataSharing: ; 0x02014054
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x800
	ldrh r1, [r0, #0xe]
	cmp r1, #0
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r0, #0x16]
	mov r4, #0
	mov r1, r4
	mov r2, r4
	bl WM_SetPortCallback
	add r1, r5, #0x800
	mov r0, r4
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x1c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WM_EndDataSharing

	arm_func_start WM_StepDataSharing
WM_StepDataSharing: ; 0x020140A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	mov r5, #0
	mov r11, #1
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl WM_GetAID
	movs r6, r0
	bne _0201411C
	bl WM_GetConnectedAIDs
	mov r4, r0
_0201411C:
	add r0, r10, #0x800
	ldrh r0, [r0, #0x1c]
	cmp r0, #5
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #1
	cmpne r0, #4
	addne sp, sp, #0x10
	movne r0, #3
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	mov r7, #5
	bne _020142D4
	mov r5, #0
	str r5, [sp, #0xc]
	cmp r0, #4
	bne _020141F4
	add r2, r10, #0x800
	ldrh r1, [r2, #0xe]
	ldrh r0, [r2, #8]
	strh r11, [r2, #0x1c]
	and r1, r1, r4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp]
	ldrh r1, [r2, #0x16]
	add r0, r0, #3
	and r6, r0, #3
	stmib sp, {r1, r11}
	ldrh r3, [r2, #0x14]
	ldr r0, _020143CC ; =WmDataSharingSetDataCallback
	mov r1, r10
	add r2, r10, r6, lsl #9
	bl WM_SetMPDataToPortEx
	cmp r0, #7
	bne _020141D8
	add r0, r10, r6, lsl #1
	rsb r1, r11, #0x10000
	add r0, r0, #0x800
	strh r1, [r0]
	add r0, r10, #0x800
	ldrh r1, [r0, #0xa]
	add r1, r1, #1
	and r1, r1, #3
	strh r1, [r0, #0xa]
	b _020141F4
_020141D8:
	cmp r0, #0
	cmpne r0, #2
	addne r1, r10, #0x800
	addne sp, sp, #0x10
	movne r0, r11
	strneh r7, [r1, #0x1c]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020141F4:
	add r0, r10, #0x800
	ldrh r2, [r0, #0xc]
	ldrh r1, [r0, #0xa]
	cmp r2, r1
	beq _0201428C
	mov r5, r2, lsl #9
	ldrh r3, [r10, r5]
	mov r1, r8
	mov r2, #0x200
	orr r3, r3, #1
	strh r3, [r10, r5]
	ldrh r0, [r0, #0xc]
	add r0, r10, r0, lsl #9
	bl MIi_CpuCopy16
	add r1, r10, #0x800
	ldrh r6, [r1, #0xc]
	ldrh r2, [r1, #0x18]
	mov r5, #1
	add r0, r10, r6, lsl #1
	add r0, r0, #0x800
	ldrh r3, [r0]
	add r0, r6, #1
	and r0, r0, #3
	strh r3, [r1, #0x1a]
	strh r0, [r1, #0xc]
	cmp r2, #0
	mov r7, #0
	bne _02014284
	cmp r4, #0
	beq _02014284
	ldrh r0, [r1, #8]
	mov r0, r0, lsl #9
	ldrh r0, [r10, r0]
	cmp r0, #1
	streq r5, [sp, #0xc]
	beq _0201428C
_02014284:
	mov r0, #0
	str r0, [sp, #0xc]
_0201428C:
	mov r4, #0
	mov r0, r10
	mov r1, r4
	bl WmDataSharingSendDataSet
	cmp r5, #0
	beq _020143C0
	mov r0, r10
	mov r1, r4
	mov r2, r9
	bl WmDataSharingReceiveData
	add r0, r10, #0x800
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _020143C0
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl WmDataSharingSendDataSet
	b _020143C0
_020142D4:
	cmp r0, #4
	add r0, r10, #0x800
	moveq r5, #1
	streqh r5, [r0, #0x1c]
	beq _0201434C
	ldrh r1, [r0, #0xc]
	ldrh r0, [r0, #8]
	cmp r1, r0
	beq _0201434C
	mov r2, r1, lsl #9
	ldrh r0, [r10, r2]
	tst r0, #1
	orreq r0, r0, #1
	streqh r0, [r10, r2]
	beq _0201434C
	mov r1, r8
	add r0, r10, r2
	mov r2, #0x200
	bl MIi_CpuCopy16
	add r1, r10, #0x800
	ldrh r3, [r1, #0xc]
	mov r7, r5
	mov r5, #1
	add r0, r10, r3, lsl #1
	add r0, r0, #0x800
	ldrh r2, [r0]
	add r0, r3, #1
	and r0, r0, #3
	strh r2, [r1, #0x1a]
	strh r0, [r1, #0xc]
_0201434C:
	cmp r5, #0
	beq _020143C0
	add r0, r10, #0x800
	ldrh r1, [r0, #0xa]
	ldrh r2, [r0, #0x10]
	mov r0, r9
	add r5, r10, r1, lsl #9
	add r1, r5, #0x20
	bl MIi_CpuCopy16
	add r3, r10, #0x800
	ldrh r1, [r3, #0xe]
	ldr r0, _020143CC ; =WmDataSharingSetDataCallback
	add r2, r5, #0x20
	str r1, [sp]
	ldrh r4, [r3, #0x16]
	mov r1, r10
	stmib sp, {r4, r11}
	ldrh r3, [r3, #0x10]
	bl WM_SetMPDataToPortEx
	add r1, r10, #0x800
	ldrh r2, [r1, #0xa]
	cmp r0, #2
	cmpne r0, #0
	add r2, r2, #1
	and r2, r2, #3
	movne r0, #5
	strh r2, [r1, #0xa]
	movne r7, r11
	strneh r0, [r1, #0x1c]
_020143C0:
	mov r0, r7
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020143CC: .word WmDataSharingSetDataCallback
	arm_func_end WM_StepDataSharing

	arm_func_start WmDataSharingSetDataCallback
WmDataSharingSetDataCallback: ; 0x020143D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WMi_GetSystemWork
	ldrh r2, [r5, #0xa]
	ldr r1, _020144A0 ; =WmDataSharingReceiveCallback_Parent
	add r0, r0, r2, lsl #2
	ldr r2, [r0, #0xcc]
	ldr r4, [r0, #0x10c]
	cmp r2, r1
	beq _02014404
	ldr r0, _020144A4 ; =WmDataSharingReceiveCallback_Child
	cmp r2, r0
	ldmnefd sp!, {r3, r4, r5, pc}
_02014404:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	cmp r4, r0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl WM_GetAID
	ldrh r1, [r5, #2]
	cmp r1, #0
	bne _02014460
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r1, r4, #0x800
	ldrh r0, [r1, #0xa]
	ldrh r2, [r5, #0x1a]
	add r0, r4, r0, lsl #1
	mov r2, r2, asr #1
	add r0, r0, #0x800
	strh r2, [r0]
	ldrh r0, [r1, #0xa]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r1, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_02014460:
	cmp r1, #0xa
	bne _02014490
	cmp r0, #0
	addne r0, r4, #0x800
	ldrneh r1, [r0, #0xa]
	addne r1, r1, #3
	andne r1, r1, #3
	strneh r1, [r0, #0xa]
	add r0, r4, #0x800
	mov r1, #4
	strh r1, [r0, #0x1c]
	ldmfd sp!, {r3, r4, r5, pc}
_02014490:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	ldmfd sp!, {r3, r4, r5, pc}
_020144A0: .word WmDataSharingReceiveCallback_Parent
_020144A4: .word WmDataSharingReceiveCallback_Child
	arm_func_end WmDataSharingSetDataCallback

	arm_func_start WmDataSharingReceiveCallback_Parent
WmDataSharingReceiveCallback_Parent: ; 0x020144A8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _020145CC
	ldrh r1, [r0, #4]
	cmp r1, #0x15
	bgt _020144F4
	bge _02014514
	cmp r1, #9
	ldmgtfd sp!, {r4, r5, r6, pc}
	cmp r1, #7
	ldmltfd sp!, {r4, r5, r6, pc}
	beq _02014534
	cmp r1, #9
	beq _02014544
	ldmfd sp!, {r4, r5, r6, pc}
_020144F4:
	cmp r1, #0x1a
	ldmgtfd sp!, {r4, r5, r6, pc}
	cmp r1, #0x19
	ldmltfd sp!, {r4, r5, r6, pc}
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r1, #0x1a
	beq _02014544
	ldmfd sp!, {r4, r5, r6, pc}
_02014514:
	ldrh r1, [r0, #0x12]
	ldr r2, [r0, #0xc]
	mov r0, r4
	bl WmDataSharingReceiveData
	mov r0, r4
	mov r1, #0
	bl WmDataSharingSendDataSet
	ldmfd sp!, {r4, r5, r6, pc}
_02014534:
	mov r0, r4
	mov r1, #0
	bl WmDataSharingSendDataSet
	ldmfd sp!, {r4, r5, r6, pc}
_02014544:
	ldrh r5, [r0, #0x12]
	mov r6, #1
	bl OS_DisableInterrupts
	add r1, r4, #0x800
	ldrh r12, [r1, #8]
	mvn r2, r6, lsl r5
	mov r5, r12, lsl #9
	ldrh r3, [r4, r5]
	mov r2, r2, lsl #0x10
	and r3, r3, r2, lsr #16
	strh r3, [r4, r5]
	ldrh r1, [r1, #0x18]
	cmp r1, #1
	bne _02014598
	add r1, r12, #1
	and r1, r1, #3
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #7
	ldrh r1, [r4, r3]
	and r1, r1, r2, lsr #16
	strh r1, [r4, r3]
_02014598:
	bl OS_RestoreInterrupts
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl WmDataSharingSendDataSet
	add r0, r4, #0x800
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	bl WmDataSharingSendDataSet
	ldmfd sp!, {r4, r5, r6, pc}
_020145CC:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WmDataSharingReceiveCallback_Parent

	arm_func_start WmDataSharingReceiveCallback_Child
WmDataSharingReceiveCallback_Child: ; 0x020145DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r4, [r8, #0x1c]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r8, #2]
	cmp r0, #0
	bne _020146B0
	ldrh r0, [r8, #4]
	cmp r0, #0x15
	bgt _0201461C
	bge _0201462C
	cmp r0, #9
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0201461C:
	cmp r0, #0x1a
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #0x19
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0201462C:
	ldr r7, [r8, #0xc]
	ldrh r5, [r8, #0x10]
	ldrh r6, [r7]
	bl WM_GetAID
	add r1, r4, #0x800
	ldrh r1, [r1, #0x14]
	cmp r5, r1
	beq _02014654
	cmp r5, #0x200
	movhi r5, #0x200
_02014654:
	cmp r5, #4
	ldmlofd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #1
	tst r6, r1, lsl r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r4, #0x800
	ldrh r1, [r0, #8]
	mov r0, r7
	mov r2, r5
	add r1, r4, r1, lsl #9
	bl MIi_CpuCopy16
	add r1, r4, #0x800
	ldrh r0, [r1, #8]
	ldrh r2, [r8, #0x1a]
	add r0, r4, r0, lsl #1
	mov r2, r2, asr #1
	add r0, r0, #0x800
	strh r2, [r0]
	ldrh r0, [r1, #8]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r1, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020146B0:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end WmDataSharingReceiveCallback_Child

	arm_func_start WmDataSharingReceiveData
WmDataSharingReceiveData: ; 0x020146C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r3, r1
	mov r1, #1
	mov r4, r1, lsl r3
	add r0, r6, #0x800
	ldrh r1, [r0, #0xe]
	mov r7, r4, lsl #0x10
	mov r5, r2
	tst r1, r7, lsr #16
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r4, [r0, #8]
	mov r2, r4, lsl #9
	ldrh r2, [r6, r2]
	tst r2, r7, lsr #16
	bne _02014724
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #1
	and r4, r0, #3
	mov r0, r4, lsl #9
	ldrh r0, [r6, r0]
	tst r0, r7, lsr #16
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02014724:
	add r2, r6, r4, lsl #9
	mov r0, r6
	add r2, r2, #4
	bl WmGetSharedDataAddress
	mov r1, r0
	add r0, r6, #0x800
	cmp r5, #0
	ldrh r2, [r0, #0x10]
	beq _02014754
	mov r0, r5
	bl MIi_CpuCopy16
	b _0201475C
_02014754:
	mov r0, #0
	bl MIi_CpuClear16
_0201475C:
	bl OS_DisableInterrupts
	mov r4, r4, lsl #9
	mvn r1, r7, lsr #16
	ldrh r3, [r6, r4]
	mov r1, r1, lsl #0x10
	add r2, r6, #2
	and r1, r3, r1, lsr #16
	strh r1, [r6, r4]
	ldrh r1, [r2, r4]
	orr r1, r1, r7, lsr #16
	strh r1, [r2, r4]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WmDataSharingReceiveData

	arm_func_start WmDataSharingSendDataSet
WmDataSharingSendDataSet: ; 0x02014790
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r9, r1
	bl OS_DisableInterrupts
	add r1, r10, #0x800
	ldrh r1, [r1, #8]
	mov r4, r0
	mov r1, r1, lsl #9
	ldrh r1, [r10, r1]
	cmp r1, #0
	bne _020148CC
	bl WM_GetConnectedAIDs
	add r1, r10, #0x800
	ldrh r6, [r1, #8]
	ldrh r1, [r1, #0x18]
	mov r7, r0
	add r0, r6, #1
	and r5, r0, #3
	cmp r1, #1
	addeq r0, r5, #1
	andeq r8, r0, #3
	movne r8, r5
	add r1, r10, r8, lsl #9
	mov r0, #0
	mov r2, #0x200
	bl MIi_CpuClear16
	add r0, r10, #0x800
	ldrh r3, [r0, #0xe]
	orr r2, r7, #1
	mov r1, r8, lsl #9
	and r2, r3, r2
	strh r2, [r10, r1]
	ldrh r1, [r0, #0xe]
	strh r5, [r0, #8]
	mov r2, r6, lsl #9
	cmp r9, #1
	strh r1, [r10, r2]
	ldreqh r1, [r10, r2]
	ldreq r0, _020148D8 ; =0x0000FFFE
	andeq r0, r1, r0
	streqh r0, [r10, r2]
	mov r0, r4
	bl OS_RestoreInterrupts
	add r3, r10, #0x800
	ldrh r1, [r3, #0xe]
	mov r4, #1
	ldr r0, _020148DC ; =WmDataSharingSetDataCallback
	and r1, r1, r7
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp]
	ldrh r5, [r3, #0x16]
	mov r1, r10
	add r2, r10, r6, lsl #9
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldrh r3, [r3, #0x14]
	bl WM_SetMPDataToPortEx
	cmp r0, #7
	bne _020148B0
	add r0, r10, r6, lsl #1
	rsb r1, r4, #0x10000
	add r0, r0, #0x800
	strh r1, [r0]
	add r0, r10, #0x800
	ldrh r1, [r0, #0xa]
	add sp, sp, #0xc
	add r1, r1, #1
	and r1, r1, #3
	strh r1, [r0, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020148B0:
	cmp r0, #0
	cmpne r0, #2
	addne r0, r10, #0x800
	movne r1, #5
	strneh r1, [r0, #0x1c]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020148CC:
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020148D8: .word 0x0000FFFE
_020148DC: .word WmDataSharingSetDataCallback
	arm_func_end WmDataSharingSendDataSet

	arm_func_start WM_GetSharedDataAddress
WM_GetSharedDataAddress: ; 0x020148E0
	stmfd sp!, {r3, lr}
	mov r3, r2
	cmp r0, #0
	mov lr, r1
	mov r12, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	cmp lr, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [lr]
	ldrh r2, [lr, #2]
	tst r1, r12, lsl r3
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	tst r2, r12, lsl r3
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	add r2, lr, #4
	bl WmGetSharedDataAddress
	ldmfd sp!, {r3, pc}
	arm_func_end WM_GetSharedDataAddress

	arm_func_start WmGetSharedDataAddress
WmGetSharedDataAddress: ; 0x02014934
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #1
	mov r3, r12, lsl r3
	sub r3, r3, #1
	mov r5, r0
	and r0, r1, r3
	mov r4, r2
	bl MATH_CountPopulation
	add r1, r5, #0x800
	ldrh r1, [r1, #0x10]
	mla r0, r1, r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WmGetSharedDataAddress

	arm_func_start WM_StartKeySharing
WM_StartKeySharing: ; 0x02014964
	stmfd sp!, {r3, lr}
	mov r12, #1
	rsb r2, r12, #0x10000
	mov r3, #2
	str r12, [sp]
	bl WM_StartDataSharing
	ldmfd sp!, {r3, pc}
	arm_func_end WM_StartKeySharing

	arm_func_start WM_EndKeySharing
WM_EndKeySharing: ; 0x02014980
	ldr r12, _02014988 ; =WM_EndDataSharing
	bx r12
_02014988: .word WM_EndDataSharing
	arm_func_end WM_EndKeySharing

	arm_func_start WM_SetWEPKey
WM_SetWEPKey: ; 0x0201498C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, r1
	mov r6, r2
	bl WMi_CheckIdle
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #3
	movhi r0, #6
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	beq _020149D4
	cmp r6, #0
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x50
	bl DC_StoreRange
_020149D4:
	mov r5, #0x14
	mov r0, r5
	mov r1, r4
	bl WMi_SetCallbackTable
	mov r4, #2
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WM_SetWEPKey

	arm_func_start WM_SetWEPKeyEx
WM_SetWEPKeyEx: ; 0x02014A08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl WMi_CheckIdle
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r7, #3
	addhi sp, sp, #4
	movhi r0, #6
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	beq _02014A64
	cmp r5, #0
	addeq sp, sp, #4
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, #0x50
	bl DC_StoreRange
_02014A64:
	mov r4, #0x27
	mov r0, r4
	mov r1, r8
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r2, r7
	mov r3, r5
	mov r1, #3
	str r6, [sp]
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end WM_SetWEPKeyEx

	arm_func_start WM_SetGameInfo
WM_SetGameInfo: ; 0x02014A9C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r6, #2
	mov r9, r0
	mov r4, r1
	mov r8, r2
	mov r0, r6
	mov r1, #7
	mov r2, #9
	mov r7, r3
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #0x70
	addhi sp, sp, #0xc
	movhi r0, #6
	ldmhifd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r5, _02014B5C ; =tmpUserGameInfoBuf
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MIi_CpuCopy16
	mov r0, r5
	mov r1, r8
	bl DC_StoreRange
	mov r4, #0x18
	mov r1, r9
	mov r0, r4
	bl WMi_SetCallbackTable
	ldrh lr, [sp, #0x28]
	str r7, [sp]
	ldrb r12, [sp, #0x2c]
	str lr, [sp, #4]
	mov r0, r4
	mov r2, r5
	mov r3, r8
	mov r1, #5
	str r12, [sp, #8]
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02014B5C: .word tmpUserGameInfoBuf
	arm_func_end WM_SetGameInfo

	arm_func_start WM_SetBeaconIndication
WM_SetBeaconIndication: ; 0x02014B60
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl WMi_CheckIdle
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	cmpne r5, #1
	movne r0, #6
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #0x19
	mov r0, r4
	mov r1, r6
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WM_SetBeaconIndication

	arm_func_start WM_SetLifeTime
WM_SetLifeTime: ; 0x02014BB4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl WMi_CheckIdle
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0x1d
	mov r0, r4
	mov r1, r8
	bl WMi_SetCallbackTable
	ldrh r12, [sp, #0x20]
	mov r0, r4
	mov r2, r7
	mov r3, r6
	mov r1, #4
	stmia sp, {r5, r12}
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end WM_SetLifeTime

	arm_func_start WM_MeasureChannel
WM_MeasureChannel: ; 0x02014C18
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl WMi_GetSystemWork
	mov r5, #2
	mov r1, r5
	mov r0, #1
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0x1e
	mov r0, r4
	mov r1, r9
	bl WMi_SetCallbackTable
	ldrh r2, [sp, #0x28]
	add r0, sp, #0
	mov r1, #0xa
	strh r4, [sp]
	strh r8, [sp, #2]
	strh r7, [sp, #4]
	strh r6, [sp, #6]
	strh r2, [sp, #8]
	bl WMi_SendCommandDirect
	cmp r0, #0
	moveq r0, r5
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end WM_MeasureChannel

	.data
	.global WM_GetNextTgid_tgid_bak
WM_GetNextTgid_tgid_bak:
	.byte 0x00, 0x00, 0x01, 0x00

	.bss
	.global wmInitialized
wmInitialized:
	.space 0x04
	.global wm9buf
wm9buf:
	.space 0x04
	.global sleepCbInfo
sleepCbInfo:
	.space 0x10
	.global bufMsgQ
bufMsgQ:
	.space 0x20
	.global bufMsg
bufMsg:
	.space 0x28
	.global cb_Port
cb_Port:
	.space 0x14
	.global unk_02096BA4
unk_02096BA4:
	.space 0x10
	.global unk_02096BB4
unk_02096BB4:
	.space 0x2C
	.global fifoBuf
fifoBuf:
	.space 0xA00
	.global tmpUserGameInfoBuf
tmpUserGameInfoBuf:
	.space 0x80

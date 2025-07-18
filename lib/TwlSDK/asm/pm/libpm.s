
	.include "asm/macros/function.inc"
	.include "libpm.inc"

	.text
	arm_func_start PMi_WaitBusy
PMi_WaitBusy: ; 0x020166D8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02016750 ; =PMi_Work
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, _02016754 ; =0x04000208
	ldr r5, _02016758 ; =PMi_WaitBusyMethod
_020166F4:
	ldr r0, [r5]
	tst r0, #2
	beq _0201670C
	bl OS_GetProcMode
	cmp r0, #0x12
	beq _0201673C
_0201670C:
	ldr r0, [r5]
	tst r0, #4
	beq _02016724
	bl OS_GetCpsrIrq
	cmp r0, #0x80
	beq _0201673C
_02016724:
	ldr r0, [r5]
	tst r0, #8
	beq _02016740
	ldrh r0, [r6]
	cmp r0, #0
	bne _02016740
_0201673C:
	bl PXIi_HandlerRecvFifoNotEmpty
_02016740:
	ldr r0, [r4]
	cmp r0, #0
	bne _020166F4
	ldmfd sp!, {r4, r5, r6, pc}
_02016750: .word PMi_Work
_02016754: .word 0x04000208
_02016758: .word PMi_WaitBusyMethod
	arm_func_end PMi_WaitBusy

	arm_func_start PMi_DummyCallback
PMi_DummyCallback: ; 0x0201675C
	cmp r1, #0
	strne r0, [r1]
	bx lr
	arm_func_end PMi_DummyCallback

	arm_func_start PMi_CallCallbackAndUnlock
PMi_CallCallbackAndUnlock: ; 0x02016768
	stmfd sp!, {r3, lr}
	ldr r2, _02016794 ; =0x02097720
	mov r3, #0
	ldr r12, [r2, #0x30]
	ldr r1, [r2, #0x34]
	cmp r12, #0
	str r3, [r2, #0x2c]
	ldmeqfd sp!, {r3, pc}
	str r3, [r2, #0x30]
	blx r12
	ldmfd sp!, {r3, pc}
_02016794: .word unk_02097720
	arm_func_end PMi_CallCallbackAndUnlock

	arm_func_start PMi_WaitVBlank
PMi_WaitVBlank: ; 0x02016798
	stmdb sp!, {r3}
	sub sp, sp, #4
	ldr r2, _020167C8 ; =0x02FFFC3C
	ldr r0, [r2]
	str r0, [sp]
_020167AC:
	ldr r1, [r2]
	ldr r0, [sp]
	cmp r0, r1
	beq _020167AC
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
_020167C8: .word 0x02FFFC3C
	arm_func_end PMi_WaitVBlank

	arm_func_start PM_Init
PM_Init: ; 0x020167CC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _02016854 ; =0x02097720
	ldrh r1, [r0]
	cmp r1, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #1
	strh r4, [r0]
	mov r1, #0
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	bl PXI_Init
	mov r1, r4
	mov r0, #8
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _02016830
	mov r6, #0x64
	mov r5, #8
_02016814:
	mov r0, r6
	blx SVC_WaitByLoop
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _02016814
_02016830:
	ldr r1, _02016858 ; =PMi_CommonCallback
	mov r0, #8
	bl PXI_SetFifoRecvCallback
	ldr r1, _0201685C ; =0x02FFFC3C
	ldr r0, _02016854 ; =0x02097720
	ldr r1, [r1]
	str r1, [r0, #8]
	str r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_02016854: .word unk_02097720
_02016858: .word PMi_CommonCallback
_0201685C: .word 0x02FFFC3C
	arm_func_end PM_Init

	arm_func_start PMi_CommonCallback
PMi_CommonCallback: ; 0x02016860
	stmfd sp!, {r3, lr}
	and r0, r1, #0x7f00
	mov r3, r0, lsl #8
	and r0, r1, #0xff
	cmp r2, #0
	mov r1, r3, lsr #0x10
	beq _02016894
	cmp r1, #0x61
	cmpne r1, #0x62
	moveq r0, #1
	movne r0, #2
	bl PMi_CallCallbackAndUnlock
	ldmfd sp!, {r3, pc}
_02016894:
	sub r1, r1, #0x60
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020168DC
_020168A4: ; jump table
	b _020168CC ; case 0
	b _020168B4 ; case 1
	b _020168DC ; case 2
	b _020168D0 ; case 3
_020168B4:
	ldr r1, _020168E4 ; =0x02097720
	ldr r1, [r1, #0x38]
	cmp r1, #0
	strneh r0, [r1]
_020168C4:
	mov r0, #0
	b _020168DC
_020168CC:
	b _020168C4
_020168D0:
	ldr r1, _020168E4 ; =0x02097720
	mov r2, #1
	str r2, [r1, #0xc]
_020168DC:
	bl PMi_CallCallbackAndUnlock
	ldmfd sp!, {r3, pc}
_020168E4: .word unk_02097720
	arm_func_end PMi_CommonCallback

	arm_func_start PMi_TryToSendPxiData
PMi_TryToSendPxiData: ; 0x020168E8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl OS_DisableInterrupts
	ldr r1, _02016968 ; =0x02097720
	mov r4, r0
	ldr r2, [r1, #0x2c]
	cmp r2, #0
	beq _02016920
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02016920:
	mov r0, #1
	str r0, [r1, #0x2c]
	str r6, [r1, #0x38]
	ldr r0, [sp, #0x18]
	str r5, [r1, #0x30]
	str r0, [r1, #0x34]
	cmp r7, #0
	mov r5, #0
	ble _02016958
_02016944:
	ldr r0, [r8, r5, lsl #2]
	bl PMi_SendPxiData
	add r5, r5, #1
	cmp r5, r7
	blt _02016944
_02016958:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02016968: .word unk_02097720
	arm_func_end PMi_TryToSendPxiData

	arm_func_start PMi_TryToSendPxiDataTillSuccess
PMi_TryToSendPxiDataTillSuccess: ; 0x0201696C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, #0x10000
	mov r4, #0
	ldr r5, _02016A28 ; =0x00051D23
	ldr r6, _02016A2C ; =PMi_DummyCallback
	mov r10, r0
	mov r9, r1
	rsb r8, r8, #0
	add r7, sp, #4
	mov r11, r4
_02016998:
	str r8, [sp, #4]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r6
	str r7, [sp]
	bl PMi_TryToSendPxiData
	cmp r0, #0
	beq _020169E4
_020169BC:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	mov r0, r10
	mov r1, r9
	str r7, [sp]
	mov r2, r4
	mov r3, r6
	bl PMi_TryToSendPxiData
	cmp r0, #0
	bne _020169BC
_020169E4:
	ldr r0, [sp, #4]
	cmp r0, r8
	bne _02016A04
_020169F0:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	ldr r0, [sp, #4]
	cmp r0, r8
	beq _020169F0
_02016A04:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	bl OS_SpinWaitSysCycles
	b _02016998
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02016A28: .word 0x00051D23
_02016A2C: .word PMi_DummyCallback
	arm_func_end PMi_TryToSendPxiDataTillSuccess

	arm_func_start PMi_SendSleepStart
PMi_SendSleepStart: ; 0x02016A30
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r2, _02016AB4 ; =0x03006000
	mov r8, r0
	mov r6, r1
	add r0, sp, #0
	mov r1, #1
	str r2, [sp]
	bl PMi_TryToSendPxiDataTillSuccess
	mov r5, #0
	mov r4, #2
	mov r7, #1
_02016A60:
	mov r0, r5
	mov r1, r4
	mov r2, r5
	mov r3, r7
	bl PMi_SetLCDPower
	cmp r0, #1
	bne _02016A60
	and r0, r8, #0xff
	orr r3, r0, #0x6200
	orr r3, r3, #0x2000000
	ldr r1, _02016AB8 ; =0x01010000
	mov r0, r6, lsl #0x10
	orr r2, r1, r0, lsr #16
	add r0, sp, #0
	mov r1, r4
	str r3, [sp]
	str r2, [sp, #4]
	bl PMi_TryToSendPxiDataTillSuccess
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02016AB4: .word 0x03006000
_02016AB8: .word 0x01010000
	arm_func_end PMi_SendSleepStart

	arm_func_start PM_SendUtilityCommandAsync
PM_SendUtilityCommandAsync: ; 0x02016ABC
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	and r0, r0, #0xff
	orr lr, r0, #0x6100
	mov r0, r1, lsl #0x10
	ldr r1, _02016B00 ; =0x01010000
	orr lr, lr, #0x2000000
	orr r1, r1, r0, lsr #16
	str r1, [sp, #8]
	ldr r12, [sp, #0x10]
	str lr, [sp, #4]
	add r0, sp, #4
	mov r1, #2
	str r12, [sp]
	bl PMi_TryToSendPxiData
	add sp, sp, #0xc
	ldmia sp!, {pc}
_02016B00: .word 0x01010000
	arm_func_end PM_SendUtilityCommandAsync

	arm_func_start PM_SendUtilityCommand
PM_SendUtilityCommand: ; 0x02016B04
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r3, _02016B38 ; =PMi_DummyCallback
	add r12, sp, #4
	str r12, [sp]
	bl PM_SendUtilityCommandAsync
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, pc}
	bl PMi_WaitBusy
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_02016B38: .word PMi_DummyCallback
	arm_func_end PM_SendUtilityCommand

	arm_func_start PMi_SetLEDAsync
PMi_SetLEDAsync: ; 0x02016B3C
	stmfd sp!, {r3, lr}
	mov r3, r1
	cmp r0, #1
	beq _02016B60
	cmp r0, #2
	beq _02016B70
	cmp r0, #3
	beq _02016B68
	b _02016B78
_02016B60:
	mov r0, #1
	b _02016B7C
_02016B68:
	mov r0, #2
	b _02016B7C
_02016B70:
	mov r0, #3
	b _02016B7C
_02016B78:
	mov r0, #0
_02016B7C:
	cmp r0, #0
	ldreq r0, _02016B9C ; =0x0000FFFF
	ldmeqfd sp!, {r3, pc}
	mov r1, #0
	str r2, [sp]
	mov r2, r1
	bl PM_SendUtilityCommandAsync
	ldmfd sp!, {r3, pc}
_02016B9C: .word 0x0000FFFF
	arm_func_end PMi_SetLEDAsync

	arm_func_start PMi_SetLED
PMi_SetLED: ; 0x02016BA0
	stmfd sp!, {r3, lr}
	ldr r1, _02016BC4 ; =PMi_DummyCallback
	add r2, sp, #0
	bl PMi_SetLEDAsync
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl PMi_WaitBusy
	ldr r0, [sp]
	ldmfd sp!, {r3, pc}
_02016BC4: .word PMi_DummyCallback
	arm_func_end PMi_SetLED

	arm_func_start PM_SetBackLightAsync
PM_SetBackLightAsync: ; 0x02016BC8
	stmfd sp!, {r3, lr}
	mov r12, r2
	cmp r0, #0
	mov r2, #0
	bne _02016BF0
	cmp r1, #1
	moveq r2, #6
	cmp r1, #0
	moveq r2, #7
	b _02016C24
_02016BF0:
	cmp r0, #1
	bne _02016C0C
	cmp r1, #1
	moveq r2, #4
	cmp r1, #0
	moveq r2, #5
	b _02016C24
_02016C0C:
	cmp r0, #2
	bne _02016C24
	cmp r1, #1
	moveq r2, #8
	cmp r1, #0
	moveq r2, #9
_02016C24:
	cmp r2, #0
	ldreq r0, _02016C4C ; =0x0000FFFF
	ldmeqfd sp!, {r3, pc}
	mov r1, #0
	str r3, [sp]
	mov r0, r2
	mov r2, r1
	mov r3, r12
	bl PM_SendUtilityCommandAsync
	ldmfd sp!, {r3, pc}
_02016C4C: .word 0x0000FFFF
	arm_func_end PM_SetBackLightAsync

	arm_func_start PM_SetBackLight
PM_SetBackLight: ; 0x02016C50
	stmfd sp!, {r3, lr}
	ldr r2, _02016C74 ; =PMi_DummyCallback
	add r3, sp, #0
	bl PM_SetBackLightAsync
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl PMi_WaitBusy
	ldr r0, [sp]
	ldmfd sp!, {r3, pc}
_02016C74: .word PMi_DummyCallback
	arm_func_end PM_SetBackLight

	arm_func_start PM_ForceToPowerOffAsync
PM_ForceToPowerOffAsync: ; 0x02016C78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl PMi_LCDOnAvoidReset
	mov r1, #0
	mov r2, r1
	mov r3, r5
	mov r0, #0xe
	str r4, [sp]
	bl PM_SendUtilityCommandAsync
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end PM_ForceToPowerOffAsync

	arm_func_start PMi_ForceToPowerOff
PMi_ForceToPowerOff: ; 0x02016CA4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _02016CE8 ; =PMi_DummyCallback
	add r1, sp, #0
	bl PM_ForceToPowerOffAsync
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	ldr r4, _02016CEC ; =PMi_WaitBusyMethod
	mov r0, #0xc
	str r0, [r4]
	bl PMi_WaitBusy
	mov r0, #2
	str r0, [r4]
	ldr r0, [sp]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02016CE8: .word PMi_DummyCallback
_02016CEC: .word PMi_WaitBusyMethod
	arm_func_end PMi_ForceToPowerOff

	arm_func_start PM_ForceToPowerOff
PM_ForceToPowerOff: ; 0x02016CF0
	stmfd sp!, {r4, lr}
	bl PMi_ForceToPowerOff
	cmp r0, #0
	beq _02016D18
	ldr r4, _02016D28 ; =0x00051D23
_02016D04:
	mov r0, r4
	bl OS_SpinWaitSysCycles
	bl PMi_ForceToPowerOff
	cmp r0, #0
	bne _02016D04
_02016D18:
	bl OS_DisableInterrupts
	bl MI_StopAllDma
_02016D20:
	bl OS_Halt
	b _02016D20
_02016D28: .word 0x00051D23
	arm_func_end PM_ForceToPowerOff

	arm_func_start PMi_SetAmp
PMi_SetAmp: ; 0x02016D2C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl PM_GetLCDPower
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #0x10
	mov r2, #0
	bl PM_SendUtilityCommand
	ldmfd sp!, {r4, pc}
	arm_func_end PMi_SetAmp

	arm_func_start PM_GetBackLight
PM_GetBackLight: ; 0x02016D5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r2, sp, #0
	mov r0, #0xf
	mov r1, #3
	bl PM_SendUtilityCommand
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _02016D9C
	ldrh r1, [sp]
	tst r1, #8
	movne r1, #1
	moveq r1, #0
	str r1, [r5]
_02016D9C:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r1, [sp]
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end PM_GetBackLight

	arm_func_start PMi_SendPxiData
PMi_SendPxiData: ; 0x02016DBC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #8
	mov r4, #0
_02016DCC:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _02016DCC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end PMi_SendPxiData

	arm_func_start PMi_PreSleepForDma
PMi_PreSleepForDma: ; 0x02016DE8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02016E74 ; =0x040001A4
	ldr r5, _02016E78 ; =PMi_PreDmaCnt
	mov r6, #0
_02016DF8:
	mov r0, #0xc
	mul r0, r6, r0
	add r1, r0, #0x4000000
	ldr r2, [r1, #0xb8]
	add r0, r0, #0xb8
	str r2, [r5, r6, lsl #2]
	ldr r1, [r1, #0xb8]
	add r2, r0, #0x4000000
	and r0, r1, #0x38000000
	cmp r0, #0x18000000
	cmpne r0, #0x20000000
	beq _02016E40
	cmp r0, #0x28000000
	bne _02016E4C
_02016E30:
	ldr r0, [r4]
	tst r0, #0x80000000
	bne _02016E30
	b _02016E64
_02016E40:
	mov r0, r6
_02016E44:
	bl MI_WaitDma
	b _02016E64
_02016E4C:
	ldr r0, [r2]
	tst r0, #0x2000000
	mov r0, r6
	bne _02016E60
	b _02016E44
_02016E60:
	bl MI_StopDma
_02016E64:
	add r6, r6, #1
	cmp r6, #3
	bls _02016DF8
	ldmfd sp!, {r4, r5, r6, pc}
_02016E74: .word 0x040001A4
_02016E78: .word PMi_PreDmaCnt
	arm_func_end PMi_PreSleepForDma

	arm_func_start PM_GoSleepMode
PM_GoSleepMode: ; 0x02016E7C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r3, _02017154 ; =0x02097720
	mov r7, r0
	ldr r0, [r3, #0x10]
	str r1, [sp]
	str r2, [sp, #4]
	mov r5, #1
	mov r4, #0
	bl PMi_ExecuteList
	ldr r0, _02017158 ; =0x04000208
	ldrh r6, [r0]
	strh r4, [r0]
	bl OS_DisableInterrupts
	str r0, [sp, #0x10]
	ldr r0, _0201715C ; =0x003FFFFF
	bl OS_DisableIrqMask
	str r0, [sp, #0xc]
	bl OS_IsTickAvailable
	cmp r0, #0
	movne r0, #8
	moveq r0, r4
	orr r0, r0, #0x40000
	bl OS_SetIrqMask
	ldr r0, [sp, #0x10]
	bl OS_RestoreInterrupts
	ldr r1, _02017158 ; =0x04000208
	tst r7, #8
	ldrh r0, [r1]
	strh r5, [r1]
	beq _02016F14
	bl OS_GetBootType
	add r0, r0, #0xfe
	add r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bicls r7, r7, #8
_02016F14:
	tst r7, #0x10
	beq _02016F28
	bl CTRDG_IsExisting
	cmp r0, #0
	biceq r7, r7, #0x10
_02016F28:
	mov r1, #0x4000000
	add r0, r1, #0x1000
	ldr r11, [r1]
	ldr r5, [r0]
	bl PM_GetLCDPower
	add r9, sp, #0x14
	add r10, sp, #0x18
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r9
	bl PM_GetBackLight
	cmp r0, #0
	beq _02016F7C
	ldr r8, _02017160 ; =0x00051D23
_02016F60:
	mov r0, r8
	bl OS_SpinWaitSysCycles
	mov r0, r10
	mov r1, r9
	bl PM_GetBackLight
	cmp r0, #0
	bne _02016F60
_02016F7C:
	mov r0, #2
	mov r1, #0
	bl PM_SetBackLight
	cmp r0, #0
	beq _02016FB8
	ldr r10, _02017160 ; =0x00051D23
	mov r9, #2
	mov r8, #0
_02016F9C:
	mov r0, r10
	bl OS_SpinWaitSysCycles
	mov r0, r9
	mov r1, r8
	bl PM_SetBackLight
	cmp r0, #0
	bne _02016F9C
_02016FB8:
	bl PMi_WaitVBlank
	mov r2, #0x4000000
	ldr r0, [r2]
	add r1, r2, #0x1000
	bic r0, r0, #0x30000
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl PMi_WaitVBlank
	bl PMi_WaitVBlank
	bl PMi_PreSleepForDma
	ldr r1, [sp, #0x14]
	ldr r0, _02017154 ; =0x02097720
	mov r8, #0
	str r8, [r0, #0xc]
	cmp r1, #0
	ldr r0, [sp, #0x18]
	movne r8, #0x80
	cmp r0, #0
	mov r9, #0x40
	mov r0, #0x40000
	moveq r9, #0
	bl OS_SetIrqMask
	ldr r1, [sp]
	ldr r0, [sp, #4]
	orr r1, r1, r0
	orr r0, r7, r9
	orr r0, r0, r8
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	bl PMi_SendSleepStart
	ldr r8, _02017154 ; =0x02097720
	ldr r0, [r8, #0xc]
	cmp r0, #0
	bne _02017060
_02017050:
	bl OS_Halt
	ldr r0, [r8, #0xc]
	cmp r0, #0
	beq _02017050
_02017060:
	mov r8, #0
	bl OS_IsTickAvailable
	cmp r0, #0
	movne r0, #8
	moveq r0, r8
	orr r0, r0, #0x40000
	bl OS_SetIrqMask
	tst r7, #8
	beq _02017094
	ldr r0, _02017164 ; =0x04000214
	ldr r0, [r0]
	tst r0, #0x100000
	movne r4, #1
_02017094:
	cmp r4, #0
	mov r7, #1
	bne _02017108
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _020170CC
_020170AC:
	mov r0, r7
	mov r1, r7
	mov r2, r7
	mov r3, r7
	bl PMi_SetLCDPower
	cmp r0, #1
	bne _020170AC
	b _020170F8
_020170CC:
	mov r0, r7
	bl PMi_SetLED
	cmp r0, #0
	beq _020170F8
	ldr r9, _02017160 ; =0x00051D23
_020170E0:
	mov r0, r9
	bl OS_SpinWaitSysCycles
	mov r0, r7
	bl PMi_SetLED
	cmp r0, #0
	bne _020170E0
_020170F8:
	mov r0, #0x4000000
	str r11, [r0]
	add r0, r0, #0x1000
	str r5, [r0]
_02017108:
	mov r0, #0x360000
	bl OS_SpinWaitSysCycles
	ldr r5, _02017158 ; =0x04000208
	ldrh r0, [r5]
	ldr r0, [sp, #0xc]
	strh r8, [r5]
	bl OS_SetIrqMask
	ldr r0, [sp, #0x10]
	bl OS_RestoreInterrupts
	ldrh r0, [r5]
	cmp r4, #0
	strh r6, [r5]
	beq _02017140
	bl PM_ForceToPowerOff
_02017140:
	ldr r0, _02017154 ; =0x02097720
	ldr r0, [r0, #0x18]
	bl PMi_ExecuteList
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02017154: .word unk_02097720
_02017158: .word 0x04000208
_0201715C: .word 0x003FFFFF
_02017160: .word 0x00051D23
_02017164: .word 0x04000214
	arm_func_end PM_GoSleepMode

	arm_func_start PMi_SetLCDPower
PMi_SetLCDPower: ; 0x02017168
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r3
	cmp r0, #0
	ldr r5, _02017354 ; =0x00051D23
	mov r4, #0
	beq _02017268
	cmp r0, #1
	bne _0201734C
	cmp r2, #0
	bne _020171B4
	ldr r1, _02017358 ; =0x02FFFC3C
	ldr r0, _0201735C ; =0x02097720
	ldr r1, [r1]
	ldr r0, [r0, #4]
	sub r0, r1, r0
	cmp r0, #7
	movls r0, r4
	ldmlsfd sp!, {r3, r4, r5, r6, r7, pc}
_020171B4:
	cmp r7, #0
	beq _02017228
	cmp r6, #0
	beq _020171F0
	mov r0, r7
	bl PMi_SetLED
	cmp r0, #0
	beq _02017228
_020171D4:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	mov r0, r7
	bl PMi_SetLED
	cmp r0, #0
	bne _020171D4
	b _02017228
_020171F0:
	mov r1, #0
	mov r0, r7
	mov r2, r1
	bl PMi_SetLEDAsync
	cmp r0, #0
	beq _02017228
_02017208:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	mov r0, r7
	mov r1, r4
	mov r2, r4
	bl PMi_SetLEDAsync
	cmp r0, #0
	bne _02017208
_02017228:
	ldr r1, _02017360 ; =0x04000304
	ldr r4, _0201735C ; =0x02097720
	ldrh r0, [r1]
	orr r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x14]
	bl PMi_SetAmp
	cmp r0, #0
	beq _0201734C
_0201724C:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	ldr r0, [r4, #0x14]
	bl PMi_SetAmp
	cmp r0, #0
	bne _0201724C
	b _0201734C
_02017268:
	mov r0, r4
	bl PMi_SetAmp
	cmp r0, #0
	beq _02017290
_02017278:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	mov r0, r4
	bl PMi_SetAmp
	cmp r0, #0
	bne _02017278
_02017290:
	ldr r1, _02017358 ; =0x02FFFC3C
	ldr r0, _0201735C ; =0x02097720
	ldr r1, [r1]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	cmp r0, #2
	bhi _020172B4
	bl PMi_WaitVBlank
	bl PMi_WaitVBlank
_020172B4:
	ldr r12, _02017360 ; =0x04000304
	ldr r0, _02017364 ; =0x0000FFFE
	ldrh r3, [r12]
	ldr r2, _02017358 ; =0x02FFFC3C
	ldr r1, _0201735C ; =0x02097720
	and r0, r3, r0
	strh r0, [r12]
	ldr r0, [r2]
	cmp r7, #0
	str r0, [r1, #4]
	beq _0201734C
	cmp r6, #0
	beq _02017314
	mov r0, r7
	bl PMi_SetLED
	cmp r0, #0
	beq _0201734C
_020172F8:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	mov r0, r7
	bl PMi_SetLED
	cmp r0, #0
	bne _020172F8
	b _0201734C
_02017314:
	mov r1, #0
	mov r0, r7
	mov r2, r1
	bl PMi_SetLEDAsync
	cmp r0, #0
	beq _0201734C
_0201732C:
	mov r0, r5
	bl OS_SpinWaitSysCycles
	mov r0, r7
	mov r1, r4
	mov r2, r4
	bl PMi_SetLEDAsync
	cmp r0, #0
	bne _0201732C
_0201734C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02017354: .word 0x00051D23
_02017358: .word 0x02FFFC3C
_0201735C: .word unk_02097720
_02017360: .word 0x04000304
_02017364: .word 0x0000FFFE
	arm_func_end PMi_SetLCDPower

	arm_func_start PM_SetLCDPower
PM_SetLCDPower: ; 0x02017368
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r4, #1
	beq _0201738C
	mov r4, #0
	bl GX_IsDispOn
	cmp r0, #0
	beq _0201738C
	bl GX_DispOff
_0201738C:
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, #1
	bl PMi_SetLCDPower
	ldmfd sp!, {r4, pc}
	arm_func_end PM_SetLCDPower

	arm_func_start PM_GetLCDPower
PM_GetLCDPower: ; 0x020173A4
	ldr r0, _020173BC ; =0x04000304
	ldrh r0, [r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
_020173BC: .word 0x04000304
	arm_func_end PM_GetLCDPower

	arm_func_start PMi_SendLEDPatternCommand
PMi_SendLEDPatternCommand: ; 0x020173C0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r12, _020173D8 ; =PM_SendUtilityCommand
	mov r0, #0x12
	mov r2, #0
	bx r12
_020173D8: .word PM_SendUtilityCommand
	arm_func_end PMi_SendLEDPatternCommand

	arm_func_start PM_GetLEDPattern
PM_GetLEDPattern: ; 0x020173DC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r2, sp, #0
	mov r0, #0xf
	mov r1, #8
	bl PM_SendUtilityCommand
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	cmp r4, #0
	ldrneh r1, [sp]
	strne r1, [r4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end PM_GetLEDPattern

	arm_func_start PMi_InsertList
PMi_InsertList: ; 0x02017418
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r5, [r6, #8]
	bl OS_DisableInterrupts
	ldr r2, [r7]
	mov r3, #0
	cmp r2, #0
	beq _02017480
_02017448:
	cmp r4, #0
	bne _0201745C
	ldr r1, [r2, #8]
	cmp r1, r5
	bgt _02017480
_0201745C:
	cmp r4, #1
	bne _02017470
	ldr r1, [r2, #8]
	cmp r1, r5
	bge _02017480
_02017470:
	mov r3, r2
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _02017448
_02017480:
	cmp r2, #0
	strne r2, [r6, #0xc]
	moveq r1, #0
	streq r1, [r6, #0xc]
	cmp r3, #0
	strne r6, [r3, #0xc]
	streq r6, [r7]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end PMi_InsertList

	arm_func_start PMi_DeleteList
PMi_DeleteList: ; 0x020174A4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl OS_DisableInterrupts
	ldr r1, [r5]
	mov r2, r1
	cmp r1, #0
	beq _020174F4
_020174C8:
	cmp r1, r4
	bne _020174E4
	cmp r1, r2
	ldr r1, [r1, #0xc]
	streq r1, [r5]
	strne r1, [r2, #0xc]
	b _020174F4
_020174E4:
	mov r2, r1
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _020174C8
_020174F4:
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end PMi_DeleteList

	arm_func_start PMi_ExecuteList
PMi_ExecuteList: ; 0x020174FC
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
_02017508:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	blx r1
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _02017508
	ldmfd sp!, {r4, pc}
	arm_func_end PMi_ExecuteList

	arm_func_start PM_AppendPreSleepCallback
PM_AppendPreSleepCallback: ; 0x02017524
	mov r1, r0
	ldr r0, _0201753C ; =PMi_PreSleepCallbackList
	ldr r12, _02017540 ; =PMi_InsertList
	mov r2, #0xff
	mov r3, #0
	bx r12
_0201753C: .word PMi_PreSleepCallbackList
_02017540: .word PMi_InsertList
	arm_func_end PM_AppendPreSleepCallback

	arm_func_start PM_PrependPreSleepCallback
PM_PrependPreSleepCallback: ; 0x02017544
	mov r1, r0
	ldr r0, _0201755C ; =PMi_PreSleepCallbackList
	ldr r12, _02017560 ; =PMi_InsertList
	mvn r2, #0xfe
	mov r3, #1
	bx r12
_0201755C: .word PMi_PreSleepCallbackList
_02017560: .word PMi_InsertList
	arm_func_end PM_PrependPreSleepCallback

	arm_func_start PM_AppendPostSleepCallback
PM_AppendPostSleepCallback: ; 0x02017564
	mov r1, r0
	ldr r0, _0201757C ; =PMi_PostSleepCallbackList
	ldr r12, _02017580 ; =PMi_InsertList
	mov r2, #0xff
	mov r3, #0
	bx r12
_0201757C: .word PMi_PostSleepCallbackList
_02017580: .word PMi_InsertList
	arm_func_end PM_AppendPostSleepCallback

	arm_func_start PMi_InsertPostSleepCallbackEx
PMi_InsertPostSleepCallbackEx: ; 0x02017584
	mov r3, r0
	mov r2, r1
	mov r1, r3
	ldr r0, _020175A0 ; =PMi_PreSleepCallbackList
	ldr r12, _020175A4 ; =PMi_InsertList
	mov r3, #0
	bx r12
_020175A0: .word PMi_PreSleepCallbackList
_020175A4: .word PMi_InsertList
	arm_func_end PMi_InsertPostSleepCallbackEx

	arm_func_start PM_DeletePreSleepCallback
PM_DeletePreSleepCallback: ; 0x020175A8
	mov r1, r0
	ldr r0, _020175B8 ; =PMi_PreSleepCallbackList
	ldr r12, _020175BC ; =PMi_DeleteList
	bx r12
_020175B8: .word PMi_PreSleepCallbackList
_020175BC: .word PMi_DeleteList
	arm_func_end PM_DeletePreSleepCallback

	arm_func_start PM_DeletePostSleepCallback
PM_DeletePostSleepCallback: ; 0x020175C0
	mov r1, r0
	ldr r0, _020175D0 ; =PMi_PostSleepCallbackList
	ldr r12, _020175D4 ; =PMi_DeleteList
	bx r12
_020175D0: .word PMi_PostSleepCallbackList
_020175D4: .word PMi_DeleteList
	arm_func_end PM_DeletePostSleepCallback

	arm_func_start PMi_LCDOnAvoidReset
PMi_LCDOnAvoidReset: ; 0x020175D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0x360000
	bl OS_SpinWaitSysCycles
	ldr r0, _02017678 ; =PMi_WaitBusyMethod
	mov r1, #0xe
	ldr r4, [r0]
	str r1, [r0]
	bl PM_GetLCDPower
	cmp r0, #1
	beq _0201766C
	mov r0, #2
	mov r1, #0
	bl PM_SetBackLight
	cmp r0, #0
	beq _0201763C
	ldr r7, _0201767C ; =0x00051D23
	mov r6, #2
	mov r5, #0
_02017620:
	mov r0, r7
	bl OS_SpinWaitSysCycles
	mov r0, r6
	mov r1, r5
	bl PM_SetBackLight
	cmp r0, #0
	bne _02017620
_0201763C:
	mov r0, #1
	bl PM_SetLCDPower
	cmp r0, #0
	bne _0201766C
	mov r6, #5
	mov r5, #1
_02017654:
	mov r0, r6
	bl OS_SpinWaitSysCycles
	mov r0, r5
	bl PM_SetLCDPower
	cmp r0, #0
	beq _02017654
_0201766C:
	ldr r0, _02017678 ; =PMi_WaitBusyMethod
	str r4, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02017678: .word PMi_WaitBusyMethod
_0201767C: .word 0x00051D23
	arm_func_end PMi_LCDOnAvoidReset

	arm_func_start PMi_SetDispOffCount
PMi_SetDispOffCount: ; 0x02017680
	ldr r1, _02017694 ; =0x02FFFC3C
	ldr r0, _02017698 ; =0x02097720
	ldr r1, [r1]
	str r1, [r0, #8]
	bx lr
_02017694: .word 0x02FFFC3C
_02017698: .word unk_02097720
	arm_func_end PMi_SetDispOffCount

	.data
	.global PMi_WaitBusyMethod
PMi_WaitBusyMethod:
	.byte 0x02, 0x00, 0x00, 0x00

	.bss
	.global unk_02097720
unk_02097720:
	.space 0x04
	.global PMi_LCDCount
PMi_LCDCount:
	.space 0x04
	.global PMi_DispOffCount
PMi_DispOffCount:
	.space 0x04
	.global PMi_SleepEndFlag
PMi_SleepEndFlag:
	.space 0x04
	.global PMi_PreSleepCallbackList
PMi_PreSleepCallbackList:
	.space 0x04
	.global sAmpSwitch
sAmpSwitch:
	.space 0x04
	.global PMi_PostSleepCallbackList
PMi_PostSleepCallbackList:
	.space 0x04
	.global PMi_PreDmaCnt
PMi_PreDmaCnt:
	.space 0x10
	.global PMi_Work
PMi_Work:
	.space 0x10

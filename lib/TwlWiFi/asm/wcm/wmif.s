
	.include "asm/macros/function.inc"
	.public DC_InvalidateRange
	.public DC_StoreRange
	.public MATH_CountPopulation
	.public MI_CpuCopy8
	.public OS_GetMacAddress
	.public OS_SleepThread
	.public OS_WakeupThread
	.public WCM_Bssid_Any
	.public WCM_Essid_Any
	.public WCM_UpdateOption
	.public WCMi_CpsifRecvCallback
	.public WCMi_CpsifSetMacAddress
	.public WCMi_CpsifUnlockMutexInIRQ
	.public WCMi_EntryApList
	.public WCMi_GetCpsifWork
	.public WCMi_GetNextScanChannel
	.public WCMi_GetSystemWork
	.public WCMi_Notify
	.public WCMi_NotifyEx
	.public WCMi_ResetKeepAliveAlarm
	.public WCMi_SetPhase
	.public WCMi_ShelterRssi
	.public WM_Disable
	.public WM_Disconnect
	.public WM_Enable
	.public WM_EndDCF
	.public WM_EndScan
	.public WM_Finish
	.public WM_GetAllowedChannel
	.public WM_GetDispersionScanPeriod
	.public WM_Init
	.public WM_PowerOff
	.public WM_PowerOn
	.public WM_Reset
	.public WM_SetBeaconIndication
	.public WM_SetDCFData
	.public WM_SetIndCallback
	.public WM_SetLifeTime
	.public WM_SetWEPKeyEx
	.public WM_StartConnectEx
	.public WM_StartDCF
	.public WM_StartScanEx
	.public WMi_GetStatusAddress
	.public _u32_div_f

	.text
	arm_func_start WCMi_WmifStartupAsync
WCMi_WmifStartupAsync: ; 0x020DDD50
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	bl WCMi_GetSystemWork
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x2c0]
	add r0, r5, #0x3a0
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	mov r1, r1, lsr #0x10
	bl WM_Init
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020DDDC4
_020DDD88: ; jump table
	b _020DDDD8 ; case 0
	b _020DDDC4 ; case 1
	b _020DDDC4 ; case 2
	b _020DDDA4 ; case 3
	b _020DDDB8 ; case 4
	b _020DDDC4 ; case 5
	b _020DDDC4 ; case 6
_020DDDA4:
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDB8:
	add sp, sp, #8
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDC4:
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDD8:
	ldr r0, _020DDE80 ; =WcmWmcbIndication
	bl WM_SetIndCallback
	cmp r0, #0
	beq _020DDDFC
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDFC:
	add r4, sp, #0
	mov r0, r4
	bl OS_GetMacAddress
	mov r0, r4
	bl WCMi_CpsifSetMacAddress
	ldr r0, _020DDE84 ; =WcmWmcbCommon
	bl WM_Enable
	cmp r0, #2
	beq _020DDE34
	cmp r0, #3
	beq _020DDE60
	cmp r0, #8
	beq _020DDE4C
	b _020DDE60
_020DDE34:
	mov r0, #2
	bl WCMi_SetPhase
	add r0, r5, #0x1200
	mov r1, #1
	strh r1, [r0, #0xda]
	b _020DDE74
_020DDE4C:
	mov r0, #0xc
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE60:
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE74:
	mov r0, #3
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE80: .word WcmWmcbIndication
_020DDE84: .word WcmWmcbCommon
	arm_func_end WCMi_WmifStartupAsync

	arm_func_start WCMi_WmifCleanupAsync
WCMi_WmifCleanupAsync: ; 0x020DDE88
	stmfd sp!, {r4, lr}
	bl WCMi_GetSystemWork
	mov r4, r0
	ldr r0, _020DDEF0 ; =WcmWmcbCommon
	bl WM_PowerOff
	cmp r0, #2
	beq _020DDEB8
	cmp r0, #3
	beq _020DDED8
	cmp r0, #8
	beq _020DDED0
	b _020DDED8
_020DDEB8:
	mov r0, #4
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	mov r1, #2
	strh r1, [r0, #0xda]
	b _020DDEE8
_020DDED0:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020DDED8:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	ldmfd sp!, {r4, pc}
_020DDEE8:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020DDEF0: .word WcmWmcbCommon
	arm_func_end WCMi_WmifCleanupAsync

	arm_func_start WCMi_WmifBeginSearchAsync
WCMi_WmifBeginSearchAsync: ; 0x020DDEF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl WCMi_GetSystemWork
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #3
	beq _020DDF68
	cmp r0, #5
	beq _020DDF30
	cmp r0, #6
	beq _020DDF48
	b _020DDF60
_020DDF30:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl WcmEditScanExParam
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF48:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl WcmEditScanExParam
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF60:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF68:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl WcmEditScanExParam
	add r1, r4, #0x2200
	add r0, r4, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_InvalidateRange
	add r2, r4, #0x2000
	ldr r0, [r2, #0x2e4]
	add r1, r4, #0x2a0
	add r3, r0, #1
	ldr r0, _020DDFF8 ; =WcmWmcbScanEx
	add r1, r1, #0x2000
	str r3, [r2, #0x2e4]
	bl WM_StartScanEx
	cmp r0, #2
	beq _020DDFC8
	cmp r0, #3
	beq _020DDFE8
	cmp r0, #8
	beq _020DDFE0
	b _020DDFE8
_020DDFC8:
	mov r0, #5
	bl WCMi_SetPhase
	add r1, r4, #0x1200
	mov r0, #3
	strh r0, [r1, #0xda]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFE0:
	mov r0, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFE8:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFF8: .word WcmWmcbScanEx
	arm_func_end WCMi_WmifBeginSearchAsync

	arm_func_start WCMi_WmifConnectAsync
WCMi_WmifConnectAsync: ; 0x020DDFFC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl WCMi_GetSystemWork
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	mov r2, #0x50
	cmp r0, #3
	addeq r0, r4, #0x1300
	ldreqh r1, [r0, #0xe]
	orreq r1, r1, #3
	streqh r1, [r0, #0x10]
	ldr r1, _020DE0A0 ; =0x0000FFFF
	ldr r0, _020DE0A4 ; =WcmWmcbCommon
	mov r3, r1
	str r1, [sp]
	bl WM_SetLifeTime
	cmp r0, #2
	beq _020DE05C
	cmp r0, #3
	beq _020DE080
	cmp r0, #8
	beq _020DE074
	b _020DE080
_020DE05C:
	mov r0, #8
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	mov r1, #5
	strh r1, [r0, #0xda]
	b _020DE094
_020DE074:
	add sp, sp, #4
	mov r0, #4
	ldmfd sp!, {r3, r4, pc}
_020DE080:
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #4
	mov r0, #7
	ldmfd sp!, {r3, r4, pc}
_020DE094:
	mov r0, #3
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020DE0A0: .word 0x0000FFFF
_020DE0A4: .word WcmWmcbCommon
	arm_func_end WCMi_WmifConnectAsync

	arm_func_start WCMi_WmifDisconnectAsync
WCMi_WmifDisconnectAsync: ; 0x020DE0A8
	stmfd sp!, {r4, lr}
	bl WCMi_GetSystemWork
	mov r4, r0
	ldr r0, _020DE110 ; =WcmWmcbEndDCF
	bl WM_EndDCF
	cmp r0, #2
	beq _020DE0D8
	cmp r0, #3
	beq _020DE0F8
	cmp r0, #8
	beq _020DE0F0
	b _020DE0F8
_020DE0D8:
	mov r0, #0xa
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	mov r1, #6
	strh r1, [r0, #0xda]
	b _020DE108
_020DE0F0:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020DE0F8:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	ldmfd sp!, {r4, pc}
_020DE108:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020DE110: .word WcmWmcbEndDCF
	arm_func_end WCMi_WmifDisconnectAsync

	arm_func_start WCMi_WmifTerminateAsync
WCMi_WmifTerminateAsync: ; 0x020DE114
	stmfd sp!, {r3, r4, r5, lr}
	bl WCMi_GetSystemWork
	mov r5, r0
	bl WMi_GetStatusAddress
	mov r4, r0
	mov r1, #2
	bl DC_InvalidateRange
	ldrh r0, [r4]
	cmp r0, #0
	beq _020DE150
	cmp r0, #1
	beq _020DE174
	cmp r0, #2
	beq _020DE180
	b _020DE18C
_020DE150:
	bl WM_Finish
	cmp r0, #0
	bne _020DE1A0
	mov r0, #1
	bl WCMi_SetPhase
	add r1, r5, #0x1200
	mov r0, #0
	strh r0, [r1, #0xda]
	ldmfd sp!, {r3, r4, r5, pc}
_020DE174:
	ldr r0, _020DE1F4 ; =WcmWmcbCommon
	bl WM_Disable
	b _020DE1A0
_020DE180:
	ldr r0, _020DE1F4 ; =WcmWmcbCommon
	bl WM_PowerOff
	b _020DE1A0
_020DE18C:
	ldr r0, _020DE1F8 ; =WcmWmcbReset
	add r1, r5, #0x1000
	mov r2, #1
	strb r2, [r1, #0x2dd]
	bl WM_Reset
_020DE1A0:
	cmp r0, #2
	beq _020DE1BC
	cmp r0, #3
	beq _020DE1DC
	cmp r0, #8
	beq _020DE1D4
	b _020DE1DC
_020DE1BC:
	mov r0, #0xd
	bl WCMi_SetPhase
	add r0, r5, #0x1200
	mov r1, #9
	strh r1, [r0, #0xda]
	b _020DE1EC
_020DE1D4:
	mov r0, #4
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1DC:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1EC:
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1F4: .word WcmWmcbCommon
_020DE1F8: .word WcmWmcbReset
	arm_func_end WCMi_WmifTerminateAsync

	arm_func_start WCMi_WmifSetDCFData
WCMi_WmifSetDCFData: ; 0x020DE1FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl WCMi_GetCpsifWork
	mov r4, r0
	cmp r5, #0
	bne _020DE234
	ldr r0, _020DE2AC ; =WcmWmcbSetDCFData
	mov r1, r8
	mov r2, r7
	mov r3, r6
	b _020DE248
_020DE234:
	ldr r0, _020DE2B0 ; =WcmWmcbSetDCFDataAsync
	mov r1, r8
	mov r2, r7
	mov r3, r6
	str r5, [r4, #0x2c]
_020DE248:
	bl WM_SetDCFData
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020DE27C
_020DE258: ; jump table
	b _020DE27C ; case 0
	b _020DE27C ; case 1
	b _020DE284 ; case 2
	b _020DE27C ; case 3
	b _020DE27C ; case 4
	b _020DE27C ; case 5
	b _020DE27C ; case 6
	b _020DE27C ; case 7
	b _020DE27C ; case 8
_020DE27C:
	mvn r0, #4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DE284:
	cmp r5, #0
	bne _020DE2A4
	add r0, r4, #4
	bl OS_SleepThread
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	mvnne r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_020DE2A4:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DE2AC: .word WcmWmcbSetDCFData
_020DE2B0: .word WcmWmcbSetDCFDataAsync
	arm_func_end WCMi_WmifSetDCFData

	arm_func_start WCMi_WmifGetAllowedChannel
WCMi_WmifGetAllowedChannel: ; 0x020DE2B4
	stmfd sp!, {r3, lr}
	bl WM_GetAllowedChannel
	cmp r0, #0
	mov r3, #0x8000
	mov r2, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	tst r0, #0x8000
	bne _020DE2F0
_020DE2D8:
	mov r1, r3, asr #1
	orr r1, r1, #0x8000
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	tst r3, r0
	beq _020DE2D8
_020DE2F0:
	tst r0, #1
	bne _020DE310
_020DE2F8:
	mov r1, r2, lsl #1
	orr r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	tst r2, r0
	beq _020DE2F8
_020DE310:
	mov r0, r3, lsl #0x11
	mov r1, r2, lsr #1
	orr r0, r1, r0, lsr #16
	mvn r0, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end WCMi_WmifGetAllowedChannel

	arm_static_func_start WcmWmReset
WcmWmReset: ; 0x020DE32C
	stmfd sp!, {r3, lr}
	bl WCMi_GetSystemWork
	add r1, r0, #0x1000
	ldrb r0, [r1, #0x2dd]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r2, #1
	ldr r0, _020DE37C ; =WcmWmcbReset
	strb r2, [r1, #0x2dd]
	bl WM_Reset
	cmp r0, #2
	ldmeqfd sp!, {r3, pc}
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x248
	bl WCMi_Notify
	ldmfd sp!, {r3, pc}
_020DE37C: .word WcmWmcbReset
	arm_func_end WcmWmReset

	arm_static_func_start WcmWmcbIndication
WcmWmcbIndication: ; 0x020DE380
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	cmp r1, #8
	ldreqh r1, [r4, #4]
	cmpeq r1, #0x16
	ldreqh r1, [r4, #6]
	cmpeq r1, #0x25
	ldmnefd sp!, {r4, pc}
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2de]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_020DE3C0: ; jump table
	b _020DE3D4 ; case 0
	b _020DE3E0 ; case 1
	b _020DE3E8 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _020DE3E0 ; case 4
_020DE3D4:
	mov r0, #0xc
	bl WCMi_SetPhase
	ldmfd sp!, {r4, pc}
_020DE3E0:
	bl WcmWmReset
	ldmfd sp!, {r4, pc}
_020DE3E8:
	mov r0, #0xc
	bl WCMi_SetPhase
	ldmfd sp!, {r4, pc}
	arm_func_end WcmWmcbIndication

	arm_static_func_start WcmWmcbCommon
WcmWmcbCommon: ; 0x020DE3F4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, #0x14
	bl WCMi_GetSystemWork
	ldrh r1, [r6, #2]
	mov r4, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DE650
_020DE41C: ; jump table
	b _020DE430 ; case 0
	b _020DE618 ; case 1
	b _020DE650 ; case 2
	b _020DE650 ; case 3
	b _020DE650 ; case 4
_020DE430:
	ldrh r0, [r6]
	cmp r0, #0x19
	bgt _020DE468
	bge _020DE524
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020DE58C
_020DE44C: ; jump table
	b _020DE58C ; case 0
	b _020DE58C ; case 1
	b _020DE58C ; case 2
	b _020DE484 ; case 3
	b _020DE490 ; case 4
	b _020DE4E4 ; case 5
	b _020DE508 ; case 6
_020DE468:
	cmp r0, #0x1d
	bgt _020DE478
	beq _020DE514
	b _020DE58C
_020DE478:
	cmp r0, #0x27
	beq _020DE540
	b _020DE58C
_020DE484:
	ldr r0, _020DE688 ; =WcmWmcbCommon
	bl WM_PowerOn
	b _020DE588
_020DE490:
	bl WM_Finish
	cmp r0, #0
	bne _020DE4C0
	mov r0, #1
	bl WCMi_SetPhase
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, #0x2a4
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE4C0:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	rsb r3, r0, #0x2b4
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE4E4:
	mov r0, #3
	bl WCMi_SetPhase
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, #0x2b4
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE508:
	ldr r0, _020DE688 ; =WcmWmcbCommon
	bl WM_Disable
	b _020DE588
_020DE514:
	ldr r0, _020DE688 ; =WcmWmcbCommon
	mov r1, #0
	bl WM_SetBeaconIndication
	b _020DE588
_020DE524:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x290]
	ldrb r2, [r0, #0x291]
	ldr r0, _020DE688 ; =WcmWmcbCommon
	add r3, r4, #0x1240
	bl WM_SetWEPKeyEx
	b _020DE588
_020DE540:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x2d4]
	mov r2, #1
	and r0, r1, #0xc0000
	cmp r0, #0xc0000
	and r0, r1, #0x30000
	movne r2, #0
	cmp r0, #0x30000
	mov r0, r2, lsl #0x10
	mov r12, r0, lsr #0x10
	mov r3, #1
	add r1, r4, #0x2e0
	ldr r0, _020DE68C ; =WcmWmcbConnect
	moveq r3, #0
	add r1, r1, #0x1000
	mov r2, #0
	str r12, [sp]
	bl WM_StartConnectEx
_020DE588:
	mov r5, r0
_020DE58C:
	cmp r5, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r5, #3
	beq _020DE5E0
	cmp r5, #8
	bne _020DE5E0
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	mov r3, #0x2f0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	movne r1, #0
	mov r0, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE5E0:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #7
	movne r1, #0
	rsb r3, r0, #0x300
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE618:
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #1
	movne r1, #0
	rsb r3, r0, #0x320
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE650:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #7
	movne r1, #0
	rsb r3, r0, #0x330
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE688: .word WcmWmcbCommon
_020DE68C: .word WcmWmcbConnect
	arm_func_end WcmWmcbCommon

	arm_static_func_start WcmWmcbScanEx
WcmWmcbScanEx: ; 0x020DE690
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r5, #0
	mov r6, #0x14
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r8, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DE8E0
_020DE6B8: ; jump table
	b _020DE6CC ; case 0
	b _020DE8D8 ; case 1
	b _020DE8E0 ; case 2
	b _020DE8E0 ; case 3
	b _020DE8E0 ; case 4
_020DE6CC:
	add r0, r8, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #5
	bne _020DE6FC
	mov r7, #6
	mov r0, r7
	bl WCMi_SetPhase
	mov r0, r5
	mov r1, r0
	mov r2, r0
	add r3, r7, #0x340
	bl WCMi_Notify
_020DE6FC:
	add r0, r8, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #6
	beq _020DE720
	cmp r0, #7
	beq _020DE86C
	cmp r0, #0xd
	beq _020DE878
	b _020DE880
_020DE720:
	add r0, r8, #0x1200
	mov r1, #7
	strh r1, [r0, #0xda]
	ldrh r0, [r4, #8]
	cmp r0, #5
	bne _020DE79C
	add r1, r8, #0x2200
	add r0, r8, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_InvalidateRange
	mov r9, #0
	mov r7, #0x35c
	mov r6, #7
	b _020DE790
_020DE75C:
	add r0, r4, r9, lsl #1
	add r2, r4, r9, lsl #2
	ldrh r1, [r0, #0x50]
	ldr r0, [r2, #0x10]
	bl WCMi_EntryApList
	str r7, [sp]
	add r0, r4, r9, lsl #2
	ldr r2, [r0, #0x10]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	bl WCMi_NotifyEx
	add r9, r9, #1
_020DE790:
	ldrh r0, [r4, #0xe]
	cmp r9, r0
	blt _020DE75C
_020DE79C:
	add r0, r8, #0x1000
	ldr r1, [r0, #0x2d4]
	and r0, r1, #0xc00000
	cmp r0, #0xc00000
	bne _020DE7F8
	ldr r0, _020DE900 ; =0x00003FFE
	and r0, r1, r0
	bl MATH_CountPopulation
	movs r1, r0
	beq _020DE7F8
	add r0, r8, #0x2000
	ldr r0, [r0, #0x2e4]
	bl _u32_div_f
	cmp r1, #0
	bne _020DE7F8
	ldr r0, _020DE904 ; =0x0000036A
	mov r1, #0
	str r0, [sp]
	add r0, r8, #0x2000
	ldr r2, [r0, #0x2e4]
	mov r3, r1
	mov r0, #8
	bl WCMi_NotifyEx
_020DE7F8:
	ldrh r0, [r4, #0xa]
	clz r0, r0
	rsb r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl WCMi_GetNextScanChannel
	ldr r2, _020DE908 ; =0x00000001
	add r1, r8, #0x2200
	mov r0, r2, lsl r0
	mov r0, r0, asr #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0xa6]
	add r1, r8, #0x2200
	add r0, r8, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_StoreRange
	add r0, r8, #0x2e4
	add r3, r0, #0x2000
	ldr r0, [r3]
	add r1, r8, #0x2a0
	add r2, r0, #1
	ldr r0, _020DE90C ; =WcmWmcbScanEx
	add r1, r1, #0x2000
	str r2, [r3]
	bl WM_StartScanEx
_020DE864:
	mov r6, r0
	b _020DE880
_020DE86C:
	ldr r0, _020DE910 ; =WcmWmcbEndScan
	bl WM_EndScan
	b _020DE864
_020DE878:
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE880:
	cmp r6, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r6, #3
	beq _020DE8B8
	cmp r6, #8
	bne _020DE8B8
	mov r0, #0xc
	bl WCMi_SetPhase
	mov r0, #1
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x394
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8B8:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r1, #0
	ldr r3, _020DE914 ; =0x0000039E
	mov r2, r1
	mov r0, #7
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8D8:
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8E0:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x3a8
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE900: .word 0x00003FFE
_020DE904: .word 0x0000036A
_020DE908: .word 0x00000001
_020DE90C: .word WcmWmcbScanEx
_020DE910: .word WcmWmcbEndScan
_020DE914: .word 0x0000039E
	arm_func_end WcmWmcbScanEx

	arm_static_func_start WcmWmcbEndScan
WcmWmcbEndScan: ; 0x020DE918
	stmfd sp!, {r4, lr}
	ldrh r0, [r0, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020DE96C
_020DE92C: ; jump table
	b _020DE940 ; case 0
	b _020DE964 ; case 1
	b _020DE96C ; case 2
	b _020DE96C ; case 3
	b _020DE96C ; case 4
_020DE940:
	mov r4, #3
	mov r0, r4
	bl WCMi_SetPhase
	mov r0, #0
	mov r1, r0
	mov r2, r0
	rsb r3, r4, #0x3c8
	bl WCMi_Notify
	ldmfd sp!, {r4, pc}
_020DE964:
	bl WcmWmReset
	ldmfd sp!, {r4, pc}
_020DE96C:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	rsb r3, r0, #0x3dc
	bl WCMi_Notify
	ldmfd sp!, {r4, pc}
	arm_func_end WcmWmcbEndScan

	arm_static_func_start WcmWmcbConnect
WcmWmcbConnect: ; 0x020DE98C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, #0
	bl WCMi_GetSystemWork
	ldrh r1, [r5, #2]
	mov r4, r0
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _020DEB84
_020DE9B0: ; jump table
	b _020DE9E4 ; case 0
	b _020DEB68 ; case 1
	b _020DEB84 ; case 2
	b _020DEB84 ; case 3
	b _020DEB84 ; case 4
	b _020DEB84 ; case 5
	b _020DEB74 ; case 6
	b _020DEB84 ; case 7
	b _020DEB84 ; case 8
	b _020DEB84 ; case 9
	b _020DEB84 ; case 10
	b _020DEB74 ; case 11
	b _020DEB74 ; case 12
_020DE9E4:
	ldrh r0, [r5, #8]
	cmp r0, #9
	bgt _020DEA24
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020DEB44
_020DE9FC: ; jump table
	b _020DEB44 ; case 0
	b _020DEB44 ; case 1
	b _020DEB44 ; case 2
	b _020DEB44 ; case 3
	b _020DEB44 ; case 4
	b _020DEB44 ; case 5
	ldmfd sp!, {r4, r5, r6, pc} ; case 6
	b _020DEA8C ; case 7
	b _020DEA30 ; case 8
	b _020DEA30 ; case 9
_020DEA24:
	cmp r0, #0x1a
	ldmeqfd sp!, {r4, r5, r6, pc}
	b _020DEB44
_020DEA30:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA48: ; jump table
	b _020DEA64 ; case 0
	b _020DEA70 ; case 1
	b _020DEA5C ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	b _020DEA84 ; case 4
_020DEA5C:
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
_020DEA64:
	mov r0, #0xc
	bl WCMi_SetPhase
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA70:
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
	add r0, r4, #0x1200
	mov r1, #6
	strh r1, [r0, #0xda]
_020DEA84:
	bl WcmWmReset
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA8C:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEAAC
	mov r0, #8
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r4, r5, r6, pc}
_020DEAAC:
	ldrh r5, [r5, #0xa]
	cmp r5, #1
	blo _020DEB3C
	ldr r0, _020DEBA8 ; =0x000007D7
	cmp r5, r0
	bhi _020DEB3C
	ldr r0, _020DEBAC ; =WcmWmcbStartDCF
	add r3, r4, #0x2200
	add r1, r4, #0x600
	mov r2, #0x620
	strh r5, [r3, #0xe8]
	bl WM_StartDCF
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, #3
	beq _020DEB18
	cmp r0, #8
	bne _020DEB18
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	mov r0, #1
	mov r2, r6
	mov r3, #0x430
	bl WCMi_Notify
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB18:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r1, r4, #0x2e0
	mov r0, #7
	add r1, r1, #0x1000
	rsb r3, r0, #0x440
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB3C:
	bl WcmWmReset
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB44:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r1, r4, #0x2e0
	mov r0, #7
	ldrh r2, [r5, #8]
	add r1, r1, #0x1000
	add r3, r0, #0x440
	bl WCMi_Notify
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB68:
	ldrh r1, [r5, #0xe]
	add r0, r4, #0x2200
	strh r1, [r0, #0xea]
_020DEB74:
	mov r0, #8
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB84:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	ldr r3, _020DEBB0 ; =0x0000045E
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r4, r5, r6, pc}
_020DEBA8: .word 0x000007D7
_020DEBAC: .word WcmWmcbStartDCF
_020DEBB0: .word 0x0000045E
	arm_func_end WcmWmcbConnect

	arm_static_func_start WcmWmcbDisconnect
WcmWmcbDisconnect: ; 0x020DEBB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DEC48
_020DEBD4: ; jump table
	b _020DEBE8 ; case 0
	b _020DEC38 ; case 1
	b _020DEC48 ; case 2
	b _020DEC38 ; case 3
	b _020DEC48 ; case 4
_020DEBE8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEC08
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC08:
	add r1, r5, #0x2200
	mov r4, #0
	mov r0, #3
	strh r4, [r1, #0xe8]
	bl WCMi_SetPhase
	add r1, r5, #0x2e0
	ldr r3, _020DEC6C ; =0x00000481
	mov r0, r4
	mov r2, r4
	add r1, r1, #0x1000
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC38:
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC48:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	ldr r3, _020DEC70 ; =0x00000493
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC6C: .word 0x00000481
_020DEC70: .word 0x00000493
	arm_func_end WcmWmcbDisconnect

	arm_static_func_start WcmWmcbStartDCF
WcmWmcbStartDCF: ; 0x020DEC74
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #0
	bne _020DED50
	ldrh r0, [r4, #4]
	cmp r0, #0xe
	beq _020DECA8
	cmp r0, #0xf
	beq _020DECF0
	b _020DED2C
_020DECA8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DECC8
	mov r0, #8
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DECC8:
	mov r4, #9
	mov r0, r4
	bl WCMi_SetPhase
	add r1, r5, #0x2e0
	mov r0, #0
	mov r2, r0
	add r1, r1, #0x1000
	rsb r3, r4, #0x4c0
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DECF0:
	ldr r0, [r4, #8]
	ldrh r0, [r0, #0xe]
	mov r0, r0, asr #8
	and r0, r0, #0xff
	bl WCMi_ShelterRssi
	ldr r0, [r4, #8]
	mov r1, #0x620
	bl DC_InvalidateRange
	ldr r2, [r4, #8]
	ldrh r3, [r2, #6]
	add r0, r2, #0x1e
	add r1, r2, #0x18
	add r2, r2, #0x2c
	bl WCMi_CpsifRecvCallback
	ldmfd sp!, {r3, r4, r5, pc}
_020DED2C:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldrh r2, [r4, #4]
	ldr r3, _020DED74 ; =0x000004C6
	mov r0, #7
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DED50:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	ldr r3, _020DED78 ; =0x000004D1
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DED74: .word 0x000004C6
_020DED78: .word 0x000004D1
	arm_func_end WcmWmcbStartDCF

	arm_static_func_start WcmWmcbEndDCF
WcmWmcbEndDCF: ; 0x020DED7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DEE60
_020DED9C: ; jump table
	b _020DEDB0 ; case 0
	b _020DEE50 ; case 1
	b _020DEE60 ; case 2
	b _020DEE50 ; case 3
	b _020DEE60 ; case 4
_020DEDB0:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEDD0
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEDD0:
	mov r4, #0
	ldr r0, _020DEE84 ; =WcmWmcbDisconnect
	mov r1, r4
	bl WM_Disconnect
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #3
	beq _020DEE1C
	cmp r0, #8
	bne _020DEE2C
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DEE88 ; =0x000004FA
	mov r2, r4
	mov r0, #1
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE1C:
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE2C:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DEE8C ; =0x00000506
	mov r2, r4
	mov r0, #7
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE50:
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE60:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r1, r5, #0x2e0
	mov r0, #7
	add r1, r1, #0x1000
	rsb r3, r0, #0x520
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE84: .word WcmWmcbDisconnect
_020DEE88: .word 0x000004FA
_020DEE8C: .word 0x00000506
	arm_func_end WcmWmcbEndDCF

	arm_static_func_start WcmWmcbReset
WcmWmcbReset: ; 0x020DEE90
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, #3
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r4, r0
	cmp r1, #0
	bne _020DF13C
	add r1, r4, #0x1000
	mov r6, #0
	strb r6, [r1, #0x2dd]
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
	ldrb r2, [r1, #0x2de]
	cmp r2, #0xd
	addls pc, pc, r2, lsl #2
	b _020DF114
_020DEED8: ; jump table
	b _020DF114 ; case 0
	b _020DF114 ; case 1
	b _020DF114 ; case 2
	b _020DF114 ; case 3
	b _020DF114 ; case 4
	b _020DEF10 ; case 5
	b _020DEF10 ; case 6
	b _020DEF34 ; case 7
	b _020DEF58 ; case 8
	b _020DF058 ; case 9
	b _020DF080 ; case 10
	b _020DF114 ; case 11
	b _020DF058 ; case 12
	b _020DF0A8 ; case 13
_020DEF10:
	mov r0, r5
	bl WCMi_SetPhase
	ldr r3, _020DF160 ; =0x0000053C
	mov r1, r6
	mov r2, r6
	mov r0, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DEF34:
	mov r0, r5
	bl WCMi_SetPhase
	ldr r3, _020DF164 ; =0x00000542
	mov r0, r6
	mov r1, r6
	mov r2, r6
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DEF58:
	ldrh r5, [r0, #0xea]
	strh r6, [r0, #0xea]
	cmp r5, #0x12
	bne _020DF030
	add r0, r4, #0x1300
	ldrh r2, [r0, #0x10]
	and r3, r2, #0x24
	cmp r3, #0x24
	beq _020DF030
	orr r2, r2, #0x24
	strh r2, [r0, #0x10]
	ldr r1, [r1, #0x2d4]
	mov r3, #1
	and r0, r1, #0xc0000
	cmp r0, #0xc0000
	and r0, r1, #0x30000
	moveq r6, #1
	cmp r0, #0x30000
	mov r0, r6, lsl #0x10
	mov r6, r0, lsr #0x10
	add r1, r4, #0x2e0
	ldr r0, _020DF168 ; =WcmWmcbConnect
	moveq r3, #0
	add r1, r1, #0x1000
	mov r2, #0
	str r6, [sp]
	bl WM_StartConnectEx
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #3
	beq _020DF008
	cmp r0, #8
	bne _020DF008
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DF16C ; =0x00000563
	mov r2, r5
	mov r0, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF008:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	ldr r3, _020DF170 ; =0x0000056C
	mov r2, r5
	add r1, r0, #0x1000
	mov r0, #7
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF030:
	mov r0, #3
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DF174 ; =0x00000574
	mov r2, r5
	mov r0, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF058:
	mov r0, r5
	bl WCMi_SetPhase
	add r1, r4, #0x2e0
	ldr r3, _020DF178 ; =0x0000057C
	mov r0, r6
	add r1, r1, #0x1000
	mov r2, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF080:
	mov r0, r5
	bl WCMi_SetPhase
	add r1, r4, #0x2e0
	mov r0, r6
	mov r2, r6
	add r1, r1, #0x1000
	add r3, r5, #0x580
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF0A8:
	ldr r0, _020DF17C ; =WcmWmcbCommon
	bl WM_PowerOff
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #3
	beq _020DF0F0
	cmp r0, #8
	bne _020DF0F0
	mov r0, #0xc
	bl WCMi_SetPhase
	mov r0, #1
	mov r1, r6
	mov r2, r6
	add r3, r0, #0x590
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF0F0:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r1, #0
	ldr r3, _020DF180 ; =0x0000059A
	mov r2, r1
	mov r0, #7
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF114:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x1000
	ldrb r2, [r0, #0x2de]
	mov r0, #7
	mov r1, #0
	mov r3, #0x5a0
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF13C:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x5a0
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF160: .word 0x0000053C
_020DF164: .word 0x00000542
_020DF168: .word WcmWmcbConnect
_020DF16C: .word 0x00000563
_020DF170: .word 0x0000056C
_020DF174: .word 0x00000574
_020DF178: .word 0x0000057C
_020DF17C: .word WcmWmcbCommon
_020DF180: .word 0x0000059A
	arm_func_end WcmWmcbReset

	arm_static_func_start WcmEditScanExParam
WcmEditScanExParam: ; 0x020DF184
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r2
	mov r7, r0
	mov r6, r1
	mov r4, #0
	bl WCMi_GetSystemWork
	mov r5, r0
	mov r0, r8
	bl WCM_UpdateOption
	add r1, r5, #0x600
	add r0, r5, #0x2000
	str r1, [r0, #0x2a0]
	add r1, r5, #0x2200
	mov r2, #0x400
	mov r0, r4
	strh r2, [r1, #0xa4]
	bl WCMi_GetNextScanChannel
	mov r1, #1
	mov r0, r1, lsl r0
	mov r1, r0, asr #1
	add r0, r5, #0x2200
	strh r1, [r0, #0xa6]
	add r0, r5, #0x1200
	ldrh r0, [r0, #0xd8]
	cmp r0, #0
	bne _020DF1F0
	bl WM_GetDispersionScanPeriod
_020DF1F0:
	add r1, r5, #0x2200
	strh r0, [r1, #0xa8]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x2d4]
	mov r1, #1
	and r0, r0, #0x300000
	cmp r0, #0x300000
	moveq r1, #0
	add r0, r5, #0x2200
	strh r1, [r0, #0xb0]
	cmp r7, #0
	add r1, r5, #0xaa
	mov r2, #6
	bne _020DF230
	ldr r0, _020DF2A8 ; =WCM_Bssid_Any
	b _020DF234
_020DF230:
	mov r0, r7
_020DF234:
	add r1, r1, #0x2200
	bl MI_CpuCopy8
	cmp r6, #0
	ldrne r0, _020DF2AC ; =WCM_Essid_Any
	add r1, r5, #0x2b4
	cmpne r6, r0
	mov r2, #0x20
	bne _020DF26C
	ldr r0, _020DF2AC ; =WCM_Essid_Any
	add r1, r1, #0x2000
	bl MI_CpuCopy8
	add r0, r5, #0x2200
	strh r4, [r0, #0xb2]
	b _020DF29C
_020DF26C:
	mov r0, r6
	add r1, r1, #0x2000
	bl MI_CpuCopy8
	mov r1, #0
_020DF27C:
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _020DF294
	add r1, r1, #1
	cmp r1, #0x20
	blt _020DF27C
_020DF294:
	add r0, r5, #0x2200
	strh r1, [r0, #0xb2]
_020DF29C:
	add r0, r5, #0x2000
	str r4, [r0, #0x2e4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DF2A8: .word WCM_Bssid_Any
_020DF2AC: .word WCM_Essid_Any
	arm_func_end WcmEditScanExParam

	arm_static_func_start WcmWmcbSetDCFData
WcmWmcbSetDCFData: ; 0x020DF2B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WCMi_GetCpsifWork
	ldrh r1, [r5]
	mov r4, r0
	cmp r1, #0x12
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x24]
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020DF2E4
	bl WCMi_ResetKeepAliveAlarm
_020DF2E4:
	add r0, r4, #4
	bl OS_WakeupThread
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WcmWmcbSetDCFData

	arm_static_func_start WcmWmcbSetDCFDataAsync
WcmWmcbSetDCFDataAsync: ; 0x020DF2F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl WCMi_GetCpsifWork
	ldrh r1, [r5]
	mov r4, r0
	cmp r1, #0x12
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x24]
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020DF324
	bl WCMi_ResetKeepAliveAlarm
_020DF324:
	ldrh r0, [r4, #0x24]
	mov r5, #0
	cmp r0, #0
	beq _020DF338
	mvn r5, #4
_020DF338:
	ldr r6, [r4, #0x2c]
	mov r1, #0
	add r0, r4, #0xc
	str r1, [r4, #0x2c]
	bl WCMi_CpsifUnlockMutexInIRQ
	mov r0, r5
	blx r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WcmWmcbSetDCFDataAsync
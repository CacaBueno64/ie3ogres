
	.include "asm/macros/function.inc"
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public OS_CancelAlarm
	.public OS_CreateAlarm
	.public OS_DisableInterrupts
	.public OS_InitAlarm
	.public OS_InitTick
	.public OS_IsAlarmAvailable
	.public OS_IsTickAvailable
	.public OS_RestoreInterrupts
	.public OS_SetAlarm
	.public WCMi_InitCpsif
	.public WCMi_WmifBeginSearchAsync
	.public WCMi_WmifCleanupAsync
	.public WCMi_WmifConnectAsync
	.public WCMi_WmifDisconnectAsync
	.public WCMi_WmifGetAllowedChannel
	.public WCMi_WmifStartupAsync
	.public WCMi_WmifTerminateAsync
	.public WM_GetAllowedChannel

	.text
	arm_func_start WCM_Init
WCM_Init: ; 0x020DC5A4
	ldr r12, _020DC5B0 ; =WCM_InitEx
	mov r2, #1
	bx r12
_020DC5B0: .word WCM_InitEx
	arm_func_end WCM_Init

	arm_func_start WCM_InitEx
WCM_InitEx: ; 0x020DC5B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #1
	bl OS_DisableInterrupts
	ldr r9, _020DC71C ; =WCMi_OverridedDeviceId
	mov r1, #0
	ldr r2, [r9, #4]
	mov r5, r0
	str r1, [sp]
	cmp r2, #0
	beq _020DC5F4
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC5F4:
	cmp r8, #0
	bne _020DC608
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC608:
	tst r8, #0x1f
	beq _020DC61C
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC61C:
	mov r0, r8
	mov r2, r7
	bl MI_CpuFill8
	cmp r6, #0
	ldreqb r6, [r9]
	cmpeq r6, #0
	bne _020DC640
	bl WCMi_GetDefaultDeviceId
	mov r6, r0
_020DC640:
	add r0, sp, #0
	mov r1, r6
	bl WCM_GetWorkSize
	cmp r0, #0
	bne _020DC664
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC664:
	ldr r0, [sp]
	cmp r7, r0
	bge _020DC680
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC680:
	ldr r1, _020DC71C ; =WCMi_OverridedDeviceId
	add r0, r8, #0x1000
	str r8, [r1, #4]
	strb r4, [r0, #0x2de]
	ldr r0, [r1, #4]
	mov r2, #0
	add r0, r0, #0x1200
	strh r2, [r0, #0xda]
	ldr r0, [r1, #4]
	add r0, r0, #0x1200
	strh r2, [r0, #0xd8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r2, [r0, #0x2dc]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r2, [r0, #0x2dd]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x2df]
	bl WcmInitOption
	bl WCMi_InitCpsif
	bl OS_IsTickAvailable
	cmp r0, #0
	bne _020DC6E8
	bl OS_InitTick
_020DC6E8:
	bl OS_IsAlarmAvailable
	cmp r0, #0
	bne _020DC6F8
	bl OS_InitAlarm
_020DC6F8:
	ldr r0, _020DC71C ; =WCMi_OverridedDeviceId
	ldr r0, [r0, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CreateAlarm
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC71C: .word WCMi_OverridedDeviceId
	arm_func_end WCM_InitEx

	arm_func_start WCM_Finish
WCM_Finish: ; 0x020DC720
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r2, _020DC774 ; =WCMi_OverridedDeviceId
	ldr r1, [r2, #4]
	cmp r1, #0
	bne _020DC744
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020DC744:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #1
	beq _020DC760
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020DC760:
	mov r4, #0
	str r4, [r2, #4]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020DC774: .word WCMi_OverridedDeviceId
	arm_func_end WCM_Finish

	arm_func_start WCM_GetWorkSize
WCM_GetWorkSize: ; 0x020DC778
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _020DC790
	bl WCMi_GetDefaultDeviceId
	mov r1, r0
_020DC790:
	cmp r1, #1
	moveq r0, #0x2300
	streq r0, [r4]
	beq _020DC7A8
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020DC7A8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end WCM_GetWorkSize

	arm_func_start WCM_StartupAsync
WCM_StartupAsync: ; 0x020DC7B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r5, _020DC878 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _020DC7E0
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC7E0:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #1
	beq _020DC804
	cmp r1, #2
	beq _020DC814
	cmp r1, #3
	beq _020DC820
	b _020DC82C
_020DC804:
	mov r0, r7
	mov r1, r6
	bl WcmConfigure
	b _020DC838
_020DC814:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC820:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC82C:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC838:
	bl WM_GetAllowedChannel
	cmp r0, #0
	moveq r0, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC868
	bl WCMi_WmifStartupAsync
	mov r5, r0
_020DC868:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC878: .word WCMi_OverridedDeviceId
	arm_func_end WCM_StartupAsync

	arm_func_start WCM_CleanupAsync
WCM_CleanupAsync: ; 0x020DC87C
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r1, _020DC910 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020DC8A4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8A4:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #1
	beq _020DC8D0
	cmp r2, #3
	beq _020DC8E8
	cmp r2, #4
	bne _020DC8DC
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8D0:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8DC:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8E8:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC900
	bl WCMi_WmifCleanupAsync
	mov r5, r0
_020DC900:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020DC910: .word WCMi_OverridedDeviceId
	arm_func_end WCM_CleanupAsync

	arm_func_start WCM_SearchAsync
WCM_SearchAsync: ; 0x020DC914
	stmfd sp!, {r3, lr}
	cmp r0, #0
	cmpne r1, #0
	bne _020DC92C
	bl WCM_EndSearchAsync
	ldmfd sp!, {r3, pc}
_020DC92C:
	bl WCM_BeginSearchAsync
	ldmfd sp!, {r3, pc}
	arm_func_end WCM_SearchAsync

	arm_func_start WCM_BeginSearchAsync
WCM_BeginSearchAsync: ; 0x020DC934
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r1, _020DC9A0 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020DC968
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC968:
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC990
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl WCMi_WmifBeginSearchAsync
	mov r5, r0
_020DC990:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC9A0: .word WCMi_OverridedDeviceId
	arm_func_end WCM_BeginSearchAsync

	arm_func_start WCM_EndSearchAsync
WCM_EndSearchAsync: ; 0x020DC9A4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r5, _020DCA40 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _020DC9CC
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC9CC:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #3
	beq _020DCA18
	cmp r1, #6
	beq _020DC9F0
	cmp r1, #7
	beq _020DCA0C
	b _020DCA24
_020DC9F0:
	mov r0, #7
	bl WCMi_SetPhase
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCA30
_020DCA0C:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA18:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA24:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA30:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA40: .word WCMi_OverridedDeviceId
	arm_func_end WCM_EndSearchAsync

	arm_func_start WCM_ConnectAsync
WCM_ConnectAsync: ; 0x020DCA44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	movs r5, r0
	bne _020DCA78
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCA78:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #3
	beq _020DCA9C
	cmp r0, #8
	beq _020DCB98
	cmp r0, #9
	beq _020DCBA8
	b _020DCBB8
_020DCA9C:
	cmp r8, #0
	bne _020DCAB4
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCAB4:
	ldrh r0, [r8, #0x3c]
	cmp r0, #0
	beq _020DCAD0
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCAD0:
	cmp r7, #0
	beq _020DCB68
	ldrb r1, [r7]
	cmp r1, #3
	bhi _020DCAF0
	ldrb r0, [r7, #1]
	cmp r0, #4
	bhs _020DCB00
_020DCAF0:
	add r3, r5, #0x1000
	ldrb r0, [r3, #0x291]
	cmp r0, #0x40
	bls _020DCB10
_020DCB00:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCB10:
	strb r1, [r3, #0x290]
	ldrb r0, [r7]
	cmp r0, #0
	bne _020DCB30
	add r0, r5, #0x1240
	mov r1, #0
	mov r2, #0x50
	b _020DCB74
_020DCB30:
	cmp r0, #3
	bhi _020DCB54
	ldrb r12, [r7, #1]
	add r0, r7, #2
	add r1, r5, #0x1240
	mov r2, #0x50
	strb r12, [r3, #0x291]
_020DCB4C:
	bl MI_CpuCopy8
	b _020DCB78
_020DCB54:
	ldrb r2, [r7, #1]
	add r0, r7, #2
	add r1, r5, #0x1240
	strb r2, [r3, #0x291]
	b _020DCB4C
_020DCB68:
	add r0, r5, #0x1240
	mov r1, #0
	mov r2, #0x54
_020DCB74:
	bl MI_CpuFill8
_020DCB78:
	add r1, r5, #0x2e0
	mov r0, r8
	add r1, r1, #0x1000
	mov r2, #0xc0
	bl MI_CpuCopy8
	mov r0, r6
	bl WCM_UpdateOption
	b _020DCBC8
_020DCB98:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBA8:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBB8:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBC8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCBE4
	bl WCMi_WmifConnectAsync
	mov r5, r0
_020DCBE4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end WCM_ConnectAsync

	arm_func_start WCM_DisconnectAsync
WCM_DisconnectAsync: ; 0x020DCBF4
	stmfd sp!, {r4, r5, r6, lr}
	bl OS_DisableInterrupts
	ldr r6, _020DCCB4 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r6, #4]
	mov r5, #0
	cmp r1, #0
	bne _020DCC20
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC20:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #3
	beq _020DCC4C
	cmp r2, #9
	beq _020DCC64
	cmp r2, #0xa
	bne _020DCC58
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC4C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC58:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC64:
	ldrb r0, [r1, #0x2dd]
	cmp r0, #1
	bne _020DCC8C
	mov r0, #0xa
	bl WCMi_SetPhase
	ldr r0, [r6, #4]
	mov r1, #6
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCCA4
_020DCC8C:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCCA4
	bl WCMi_WmifDisconnectAsync
	mov r5, r0
_020DCCA4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCCB4: .word WCMi_OverridedDeviceId
	arm_func_end WCM_DisconnectAsync

	arm_func_start WCM_TerminateAsync
WCM_TerminateAsync: ; 0x020DCCB8
	stmfd sp!, {r4, r5, r6, lr}
	bl OS_DisableInterrupts
	ldr r6, _020DCDD0 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r6, #4]
	mov r5, #0
	cmp r1, #0
	bne _020DCCE4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCCE4:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #0xd
	addls pc, pc, r2, lsl #2
	b _020DCD70
_020DCCF8: ; jump table
	b _020DCD70 ; case 0
	b _020DCD3C ; case 1
	b _020DCD70 ; case 2
	b _020DCD80 ; case 3
	b _020DCD70 ; case 4
	b _020DCD70 ; case 5
	b _020DCD48 ; case 6
	b _020DCD70 ; case 7
	b _020DCD70 ; case 8
	b _020DCD80 ; case 9
	b _020DCD70 ; case 10
	b _020DCD70 ; case 11
	b _020DCD80 ; case 12
	b _020DCD30 ; case 13
_020DCD30:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD3C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD48:
	mov r0, #0xd
	bl WCMi_SetPhase
	ldr r1, [r6, #4]
	mov r2, #9
	add r1, r1, #0x1200
	mov r0, r4
	strh r2, [r1, #0xda]
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD70:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD80:
	ldrb r0, [r1, #0x2dd]
	cmp r0, #1
	bne _020DCDA8
	mov r0, #0xd
	bl WCMi_SetPhase
	ldr r0, [r6, #4]
	mov r1, #9
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCDC0
_020DCDA8:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCDC0
	bl WCMi_WmifTerminateAsync
	mov r5, r0
_020DCDC0:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCDD0: .word WCMi_OverridedDeviceId
	arm_func_end WCM_TerminateAsync

	arm_func_start WCM_GetPhase
WCM_GetPhase: ; 0x020DCDD4
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020DCE00 ; =WCMi_OverridedDeviceId
	mov r4, #0
	ldr r1, [r1, #4]
	cmp r1, #0
	addne r1, r1, #0x1000
	ldrneb r4, [r1, #0x2de]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020DCE00: .word WCMi_OverridedDeviceId
	arm_func_end WCM_GetPhase

	arm_func_start WCM_UpdateOption
WCM_UpdateOption: ; 0x020DCE04
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020DCE98 ; =WCMi_OverridedDeviceId
	mov r6, #0
	ldr r3, [r1, #4]
	add r1, r3, #0x1000
	cmp r3, #0
	ldr r4, [r1, #0x2d4]
	bne _020DCE38
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_020DCE38:
	tst r5, #0x8000
	beq _020DCE58
	ldr r1, _020DCE9C ; =0x00003FFE
	orr r6, r6, #0xfe
	tst r5, r1
	orreq r5, r5, #0x82
	orr r6, r6, #0x3f00
	orreq r5, r5, #0xa000
_020DCE58:
	tst r5, #0x20000
	orrne r6, r6, #0x10000
	tst r5, #0x80000
	orrne r6, r6, #0x40000
	tst r5, #0x200000
	orrne r6, r6, #0x100000
	tst r5, #0x800000
	orrne r6, r6, #0x400000
	mvn r1, r6
	and r1, r4, r1
	orr r2, r5, r1
	add r1, r3, #0x1000
	str r2, [r1, #0x2d4]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020DCE98: .word WCMi_OverridedDeviceId
_020DCE9C: .word 0x00003FFE
	arm_func_end WCM_UpdateOption

	arm_func_start WCM_GetAllowedChannel
WCM_GetAllowedChannel: ; 0x020DCEA0
	stmfd sp!, {r3, lr}
	bl WCMi_GetSystemWork
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #3
	blo _020DCED4
	cmp r1, #0xa
	bhi _020DCED4
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	bne _020DCED4
	bl WCMi_WmifGetAllowedChannel
	ldmfd sp!, {r3, pc}
_020DCED4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end WCM_GetAllowedChannel

	arm_func_start WCMi_GetSystemWork
WCMi_GetSystemWork: ; 0x020DCEDC
	ldr r0, _020DCEE8 ; =WCMi_OverridedDeviceId
	ldr r0, [r0, #4]
	bx lr
_020DCEE8: .word WCMi_OverridedDeviceId
	arm_func_end WCMi_GetSystemWork

	arm_static_func_start WcmConfigure
WcmConfigure: ; 0x020DCEEC
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _020DCF3C
	ldr r1, _020DD008 ; =WCMi_OverridedDeviceId
	mov r3, #3
	ldr r0, [r1, #4]
	mov r2, #0
	add r0, r0, #0x1000
	str r3, [r0, #0x2c0]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2cc]
	b _020DCFF4
_020DCF3C:
	ldr r1, _020DD008 ; =WCMi_OverridedDeviceId
	ldr r2, [r5]
	ldr r0, [r1, #4]
	and r2, r2, #3
	add r0, r0, #0x1000
	str r2, [r0, #0x2c0]
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	and r2, r3, #3
	rsb r2, r2, #4
	and r2, r2, #3
	add r2, r2, #0xc
	cmp r2, r0
	ldr r0, [r1, #4]
	bls _020DCF94
	mov r2, #0
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	b _020DCFE0
_020DCF94:
	add r2, r3, #3
	bic r2, r2, #3
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r2, [r5, #4]
	ldr r0, [r1, #4]
	and r2, r2, #3
	rsb r2, r2, #4
	ldr r3, [r5, #8]
	and r2, r2, #3
	sub r2, r3, r2
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	ldr r0, [r1, #4]
	mov r1, #0
	add r2, r0, #0x1000
	ldr r0, [r2, #0x2c4]
	ldr r2, [r2, #0x2c8]
	bl MI_CpuFill8
_020DCFE0:
	ldr r0, _020DD008 ; =WCMi_OverridedDeviceId
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #0x2cc]
_020DCFF4:
	ldr r0, _020DD008 ; =WCMi_OverridedDeviceId
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r4, [r0, #0x2d0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DD008: .word WCMi_OverridedDeviceId
	arm_func_end WcmConfigure

	arm_static_func_start WcmInitOption
WcmInitOption: ; 0x020DD00C
	ldr r0, _020DD024 ; =WCMi_OverridedDeviceId
	ldr r1, _020DD028 ; =0x00AAA082
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #0x2d4]
	bx lr
_020DD024: .word WCMi_OverridedDeviceId
_020DD028: .word 0x00AAA082
	arm_func_end WcmInitOption

	arm_func_start WCMi_GetNextScanChannel
WCMi_GetNextScanChannel: ; 0x020DD02C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r5, _020DD0C0 ; =0x4EC4EC4F
	ldr r6, _020DD0C4 ; =WCMi_OverridedDeviceId
	mov r10, r0
	mov r8, #0
	mov r7, #1
	mov r4, #0xd
_020DD048:
	add r2, r10, r8
	mov r0, r2, lsr #0x1f
	smull r1, r9, r5, r2
	add r9, r0, r9, asr #2
	smull r0, r1, r4, r9
	ldr r1, [r6, #4]
	sub r9, r2, r0
	add r0, r1, #0x1000
	ldr r1, [r0, #0x2d4]
	add r0, r9, #1
	tst r1, r7, lsl r0
	beq _020DD084
	bl WCM_GetAllowedChannel
	tst r0, r7, lsl r9
	bne _020DD090
_020DD084:
	add r8, r8, #1
	cmp r8, #0xd
	blt _020DD048
_020DD090:
	add r3, r10, r8
	ldr r2, _020DD0C0 ; =0x4EC4EC4F
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xd
	smull r0, r1, r2, r4
	sub r4, r3, r0
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DD0C0: .word 0x4EC4EC4F
_020DD0C4: .word WCMi_OverridedDeviceId
	arm_func_end WCMi_GetNextScanChannel

	arm_func_start WCMi_Notify
WCMi_Notify: ; 0x020DD0C8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _020DD108 ; =WCMi_OverridedDeviceId
	mov r5, r0
	ldr r0, [r12, #4]
	mov r4, r1
	add r1, r0, #0x1200
	ldrsh r0, [r1, #0xda]
	mov r12, #0
	mov lr, r2
	strh r12, [r1, #0xda]
	str r3, [sp]
	mov r1, r5
	mov r2, r4
	mov r3, lr
	bl WCMi_NotifyEx
	ldmfd sp!, {r3, r4, r5, pc}
_020DD108: .word WCMi_OverridedDeviceId
	arm_func_end WCMi_Notify

	arm_func_start WCMi_NotifyEx
WCMi_NotifyEx: ; 0x020DD10C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r12, _020DD15C ; =WCMi_OverridedDeviceId
	ldr r12, [r12, #4]
	add r12, r12, #0x1000
	ldr lr, [r12, #0x2d0]
	cmp lr, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, pc}
	ldr lr, [sp, #0x18]
	strh r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str lr, [sp, #0xc]
	strh r1, [sp, #2]
	ldr r1, [r12, #0x2d0]
	add r0, sp, #0
	blx r1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020DD15C: .word WCMi_OverridedDeviceId
	arm_func_end WCMi_NotifyEx

	arm_func_start WCMi_SetPhase
WCMi_SetPhase: ; 0x020DD160
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020DD1FC ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r1, #4]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DD19C
	cmp r5, #9
	beq _020DD19C
	add r0, r1, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
_020DD19C:
	ldr r0, _020DD1FC ; =WCMi_OverridedDeviceId
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #0xb
	strneb r5, [r0, #0x2de]
	cmp r5, #9
	bne _020DD1F0
	ldr r5, _020DD1FC ; =WCMi_OverridedDeviceId
	ldr r0, [r5, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #4]
	ldr r1, _020DD200 ; =0x022F5341
	add r0, r0, #0x294
	ldr r3, _020DD204 ; =WcmKeepAliveAlarm
	add r0, r0, #0x1000
	bl OS_SetAlarm
_020DD1F0:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020DD1FC: .word WCMi_OverridedDeviceId
_020DD200: .word 0x022F5341
_020DD204: .word WcmKeepAliveAlarm
	arm_func_end WCMi_SetPhase

	arm_func_start WCMi_ResetKeepAliveAlarm
WCMi_ResetKeepAliveAlarm: ; 0x020DD208
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r5, _020DD264 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r0, [r5, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
	ldr r1, [r5, #4]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DD258
	add r0, r1, #0x294
	mov r2, #0
	ldr r1, _020DD268 ; =0x022F5341
	ldr r3, _020DD26C ; =WcmKeepAliveAlarm
	add r0, r0, #0x1000
	str r2, [sp]
	bl OS_SetAlarm
_020DD258:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020DD264: .word WCMi_OverridedDeviceId
_020DD268: .word 0x022F5341
_020DD26C: .word WcmKeepAliveAlarm
	arm_func_end WCMi_ResetKeepAliveAlarm

	arm_static_func_start WcmKeepAliveAlarm
WcmKeepAliveAlarm: ; 0x020DD270
	ldr r12, _020DD278 ; =WCMi_ResetKeepAliveAlarm
	bx r12
_020DD278: .word WCMi_ResetKeepAliveAlarm
	arm_func_end WcmKeepAliveAlarm

	arm_func_start WCMi_GetDefaultDeviceId
WCMi_GetDefaultDeviceId: ; 0x020DD27C
	mov r0, #1
	bx lr
	arm_func_end WCMi_GetDefaultDeviceId

	.rodata
	.global WCM_Bssid_Any
WCM_Bssid_Any:
	.byte 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x00, 0x00
	.global WCM_Essid_Any
WCM_Essid_Any:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.bss
	.global WCMi_OverridedDeviceId
WCMi_OverridedDeviceId:
	.space 0x04
	.global wcmw
wcmw:
	.space 0x04

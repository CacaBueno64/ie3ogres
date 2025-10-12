
	.include "asm/macros/function.inc"
	.public MI_CpuFill8
	.public CPS_SetSslHandshakePriority
	.public DWC_AC_Create
	.public DWCi_SetError
	.public DWC_Alloc
	.public DWC_Free
	.public DWC_AC_SetSpecifyApEx
	.public DWC_AC_ProcessGetWDSInfo
	.public DWC_AC_CleanupGetWDSInfo
	.public DWCi_AC_InvalidatePriorityWPA
	.public DWC_AC_Process
	.public WCM_GetPhase
	.public DWC_AC_GetStatus
	.public CPS_GetSslHandshakePriority
	.public DWC_AC_StartupGetWDSInfo
	.public DWC_AC_Destroy
	.public OS_Sleep
	.public DWC_AC_CancelGetWDSInfo
	.public DWC_AC_GetApType
	.public OS_DisableInterrupts
	.public WCM_GetApMacAddress
	.public DC_InvalidateRange
	.public OS_RestoreInterrupts
	.public MI_CpuCopy8
	.public WCM_GetApEssid
	.public WCM_GetLinkLevel
	.public DWC_AC_GetApSpotInfo
	.public DWC_AC_GetSecuritySetting

	.text
	arm_func_start DWC_InitInetEx
DWC_InitInetEx: ; 0x020C4134
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020C4194 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r8, r0
	ldr r2, [r4, #4]
	mov r7, r1
	mov r6, r3
	cmp r2, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, #0
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuFill8
	mov r1, #1
	mov r0, r6
	strh r7, [r8, #8]
	strh r1, [r8, #0xa]
	strh r1, [r8, #4]
	strh r5, [r8, #6]
	strb r5, [r8, #0x11]
	str r5, [r8, #0x14]
	strb r5, [r8, #0x10]
	str r8, [r4, #4]
	bl CPS_SetSslHandshakePriority
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C4194: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_InitInetEx

	arm_func_start DWC_InitInet
DWC_InitInet: ; 0x020C4198
	ldr r12, _020C41AC ; =DWC_InitInetEx
	mov r1, #3
	mov r2, #1
	mov r3, #0x14
	bx r12
_020C41AC: .word DWC_InitInetEx
	arm_func_end DWC_InitInet

	arm_func_start DWC_SetRwinSize
DWC_SetRwinSize: ; 0x020C41B0
	ldr r1, _020C41C4 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r1, #4]
	cmp r1, #0
	cmpne r0, #0x10c0
	bx lr
_020C41C4: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_SetRwinSize

	arm_func_start DWC_ConnectInetAsync
DWC_ConnectInetAsync: ; 0x020C41C8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r4, _020C427C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020C4268
	ldrh r0, [r0, #4]
	cmp r0, #1
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, pc}
	add r5, sp, #0
	mov r1, #0
	mov r0, r5
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r12, [r4, #4]
	ldr r3, _020C4280 ; =DWC_Alloc
	ldrh r1, [r12, #8]
	ldr r2, _020C4284 ; =DWC_Free
	mov r0, r5
	strb r1, [sp, #8]
	ldrh r4, [r12, #0xa]
	mov r1, #2
	strb r4, [sp, #9]
	ldr r4, [r12, #0xc]
	str r4, [sp, #0xc]
	str r3, [sp]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x10]
	strb r2, [sp, #0x10]
	strh r1, [r12, #4]
	bl DWC_AC_Create
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, pc}
	ldr r1, _020C4288 ; =0xFFFF3BE9
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020C4268:
	ldr r1, _020C4288 ; =0xFFFF3BE9
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020C427C: .word _ZZ17DWC_GetInetStatusvE8stateOld
_020C4280: .word DWC_Alloc
_020C4284: .word DWC_Free
_020C4288: .word 0xFFFF3BE9
	arm_func_end DWC_ConnectInetAsync

	arm_func_start DWC_DebugConnectInetExAsync
DWC_DebugConnectInetExAsync: ; 0x020C428C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl DWC_ConnectInetAsync
	ldr r0, _020C42F8 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #1
	strneb r0, [r1, #0x11]
	bl DWC_GetInetStatus
	cmp r0, #2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #4]
	bl DWC_AC_SetSpecifyApEx
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C42F8: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_DebugConnectInetExAsync

	arm_func_start DWC_CheckInet
DWC_CheckInet: ; 0x020C42FC
	stmfd sp!, {r4, lr}
	ldr r4, _020C434C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1]
	cmp r0, #0
	beq _020C4344
	mov r0, #3
	strh r0, [r1, #4]
	bl DWC_GetInetStatus
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020C4344:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C434C: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_CheckInet

	arm_func_start DWC_ProcessInet
DWC_ProcessInet: ; 0x020C4350
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _020C448C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C4418
_020C437C: ; jump table
	b _020C4418 ; case 0
	b _020C4394 ; case 1
	b _020C43B0 ; case 2
	b _020C43F4 ; case 3
	b _020C4410 ; case 4
	b _020C4410 ; case 5
_020C4394:
	mov r0, #0
	str r0, [r1]
	bl DWC_AC_ProcessGetWDSInfo
	ldr r1, [r4, #4]
	add sp, sp, #8
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, pc}
_020C43B0:
	bl DWC_AC_CleanupGetWDSInfo
	ldr r12, [r4, #4]
	mov r0, #8
	add r1, r12, #0x5e
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r3, [r12, #0x5c]
	ldr r2, [r12, #0x58]
	add r0, r12, #0x18
	add r1, r12, #0x38
	bl DWC_DebugConnectInetExAsync
	bl DWCi_AC_InvalidatePriorityWPA
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x14]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C43F4:
	bl DWC_AC_CleanupGetWDSInfo
	ldr r0, [r4, #4]
	mvn r1, #0
	str r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x11]
_020C4410:
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C4418:
	ldrh r0, [r1, #4]
	cmp r0, #2
	bne _020C443C
	bl DWC_AC_Process
	ldr r1, _020C448C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	add sp, sp, #8
	ldr r1, [r1, #4]
	str r0, [r1]
	ldmfd sp!, {r4, pc}
_020C443C:
	cmp r0, #4
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldrh r0, [r1, #6]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	bl WCM_GetPhase
	cmp r0, #9
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020C448C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r3, #0
	ldr r2, [r0, #4]
	mov r1, #6
	strh r3, [r2, #6]
	ldr r0, [r0, #4]
	strh r1, [r0, #4]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C448C: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_ProcessInet

	arm_func_start DWC_GetInetStatus
DWC_GetInetStatus: ; 0x020C4490
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020C4684 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r5, #1
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C4520
_020C44BC: ; jump table
	b _020C4520 ; case 0
	b _020C44D4 ; case 1
	b _020C44DC ; case 2
	b _020C44E4 ; case 3
	b _020C4510 ; case 4
	b _020C4518 ; case 5
_020C44D4:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C44DC:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C44E4:
	bl DWC_ProcessInet
	ldr r1, [r4]
	mov r0, #5
	bl DWCi_SetError
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldr r1, [r4, #4]
	mov r2, #4
	str r2, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4510:
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4518:
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4520:
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl DWC_AC_GetStatus
	mov r6, r0
	cmp r6, #5
	bne _020C455C
	ldr r1, [r4, #4]
	mov r0, #4
	strh r0, [r1, #4]
	ldr r1, [r4, #4]
	strh r5, [r1, #6]
	ldr r1, [r4, #4]
	strb r5, [r1, #0x11]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C455C:
	cmp r6, #0
	bge _020C467C
	cmn r6, #0xa
	blt _020C4590
	ldr r0, [r4, #4]
	ldr r1, _020C4688 ; =0xFFFF3BE9
	strb r5, [r0, #0x11]
	mov r0, #9
	bl DWCi_SetError
	ldr r1, [r4, #4]
	mov r0, #8
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4590:
	ldr r0, _020C468C ; =0xFFFF3A59
	cmp r6, r0
	subne r0, r0, #0x64
	cmpne r6, r0
	bne _020C45C8
	ldr r0, [r4, #4]
	mov r1, r6
	strb r5, [r0, #0x11]
	mov r0, #5
	bl DWCi_SetError
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C45C8:
	ldr r10, [r4, #4]
	ldrb r0, [r10, #0x11]
	cmp r0, #0
	bne _020C4654
	ldrh r7, [r10, #8]
	bl CPS_GetSslHandshakePriority
	ldr r1, [r4, #4]
	mov r11, r0
	ldrb r8, [r1, #0x10]
	ldr r9, [r1, #0xc]
	str r6, [r4]
	bl DWC_CleanupInet
	mov r1, r11, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r0, r10
	mov r1, r7
	mov r2, #1
	bl DWC_InitInetEx
	ldr r0, [r4, #4]
	cmp r9, #0
	strb r8, [r0, #0x10]
	beq _020C4628
	mov r0, r9
	bl DWC_SetRwinSize
_020C4628:
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, #0x18
	bl DWC_AC_StartupGetWDSInfo
	ldr r0, [r4, #4]
	mov r1, #0
	str r5, [r0, #0x14]
	ldr r0, [r4, #4]
	str r1, [r0]
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4654:
	ldr r0, [r4]
	cmp r0, r6
	movlt r6, r0
	mov r1, r6
	mov r0, #5
	bl DWCi_SetError
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C467C:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4684: .word _ZZ17DWC_GetInetStatusvE8stateOld
_020C4688: .word 0xFFFF3BE9
_020C468C: .word 0xFFFF3A59
	arm_func_end DWC_GetInetStatus

	arm_func_start DWC_CleanupInet
DWC_CleanupInet: ; 0x020C4690
	stmfd sp!, {r4, lr}
	ldr r0, _020C4718 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _020C46E4
	ldr r0, [r1, #0x14]
	cmp r0, #1
	bne _020C46D4
	bl DWC_AC_CancelGetWDSInfo
_020C46C0:
	bl DWC_AC_ProcessGetWDSInfo
	sub r0, r0, #2
	cmp r0, #2
	bhi _020C46C0
	bl DWC_AC_CleanupGetWDSInfo
_020C46D4:
	ldr r0, _020C4718 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r1, #0
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C46E4:
	bl DWC_AC_Destroy
	cmp r0, #0
	bne _020C4708
	mov r4, #0xa
_020C46F4:
	mov r0, r4
	bl OS_Sleep
	bl DWC_AC_Destroy
	cmp r0, #0
	beq _020C46F4
_020C4708:
	ldr r0, _020C4718 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r1, #0
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C4718: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_CleanupInet

	arm_func_start DWC_CleanupInetAsync
DWC_CleanupInetAsync: ; 0x020C471C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C47CC ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r5, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r1, #4]
	cmp r0, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #1
	bne _020C47AC
	ldr r0, [r1, #0x14]
	cmp r0, #1
	bne _020C4774
	bl DWC_AC_CancelGetWDSInfo
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0x14]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020C4774:
	cmp r0, #5
	bne _020C479C
	bl DWC_AC_ProcessGetWDSInfo
	cmp r0, #1
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r0, r0, #2
	cmp r0, #2
	bhi _020C479C
	bl DWC_AC_CleanupGetWDSInfo
_020C479C:
	ldr r0, _020C47CC ; =_ZZ17DWC_GetInetStatusvE8stateOld
	str r5, [r0, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020C47AC:
	mov r0, #5
	strh r0, [r1, #4]
	bl DWC_AC_Destroy
	cmp r0, #0
	movne r0, #1
	strne r5, [r4, #4]
	moveq r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020C47CC: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_CleanupInetAsync

	arm_static_func_start DWCi_CheckDisconnected
DWCi_CheckDisconnected: ; 0x020C47D0
	ldr r0, _020C47F8 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C47F0
	ldrh r0, [r0, #4]
	cmp r0, #6
	moveq r0, #1
	bxeq lr
_020C47F0:
	mov r0, #0
	bx lr
_020C47F8: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWCi_CheckDisconnected

	arm_func_start DWC_GetLinkLevel
DWC_GetLinkLevel: ; 0x020C47FC
	ldr r12, _020C4804 ; =WCM_GetLinkLevel
	bx r12
_020C4804: .word WCM_GetLinkLevel
	arm_func_end DWC_GetLinkLevel

	arm_func_start DWC_GetApInfo
DWC_GetApInfo: ; 0x020C4808
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r1, r7
	mov r2, #0x40
	mov r4, r0
	bl MI_CpuFill8
	mov r0, #0xff
	str r0, [r4, #4]
	bl DWC_GetInetStatus
	cmp r0, #4
	addne sp, sp, #0xc
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl DWC_AC_GetApType
	str r0, [r4]
	cmp r0, #0xff
	beq _020C4858
	cmp r0, #0x63
	ble _020C486C
_020C4858:
	mov r0, #0x63
	str r0, [r4]
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C486C:
	bl OS_DisableInterrupts
	mov r8, r0
	bl WCM_GetApMacAddress
	mov r5, #6
	mov r6, r0
	mov r1, r5
	bl DC_InvalidateRange
	cmp r6, #0
	bne _020C48A4
	mov r0, r8
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C48A4:
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x37
	bl MI_CpuCopy8
	ldr r0, [r4]
	cmp r0, #2
	bhi _020C4900
	add r0, sp, #0
	bl WCM_GetApEssid
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _020C48F0
	mov r0, r8
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C48F0:
	ldrh r2, [sp]
	mov r0, r5
	add r1, r4, #0x16
	bl MI_CpuCopy8
_020C4900:
	mov r0, r8
	bl OS_RestoreInterrupts
	add r0, sp, #2
	bl DWC_AC_GetApSpotInfo
	cmp r0, #0
	beq _020C4954
	ldrb r1, [sp, #2]
	mov r0, #0
	cmp r1, #0x30
	blo _020C4930
	cmp r1, #0x39
	movls r0, #1
_020C4930:
	sub r3, r1, #0x30
	cmp r0, #0
	moveq r3, #0xff
	add r0, sp, #3
	add r1, r4, #0xc
	mov r2, #9
	str r3, [r4, #4]
	bl MI_CpuCopy8
	b _020C495C
_020C4954:
	mov r0, #0xff
	str r0, [r4, #4]
_020C495C:
	bl DWC_AC_GetSecuritySetting
	str r0, [r4, #8]
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end DWC_GetApInfo

	arm_func_start DWC_UpdateConnection
DWC_UpdateConnection: ; 0x020C4970
	stmfd sp!, {r4, lr}
	bl DWC_ProcessInet
	bl DWCi_CheckDisconnected
	cmp r0, #0
	beq _020C49D0
	bl DWC_AC_GetApType
	mov r4, r0
	cmp r4, #0xff
	beq _020C499C
	cmp r4, #0x63
	bls _020C49A0
_020C499C:
	mov r4, #0x63
_020C49A0:
	bl WCM_GetPhase
	cmp r0, #0xb
	bne _020C49B8
	ldr r1, _020C49D8 ; =0xFFFF298C
	mov r0, #9
	b _020C49C0
_020C49B8:
	ldr r1, _020C49DC ; =0xFFFF2D10
	mov r0, #8
_020C49C0:
	sub r1, r1, r4
	bl DWCi_SetError
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C49D0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C49D8: .word 0xFFFF298C
_020C49DC: .word 0xFFFF2D10
	arm_func_end DWC_UpdateConnection

	.bss
	.global _ZZ17DWC_GetInetStatusvE8stateOld
_ZZ17DWC_GetInetStatusvE8stateOld:
	.space 0x04
	.global stpInetCntl
stpInetCntl:
	.space 0x04

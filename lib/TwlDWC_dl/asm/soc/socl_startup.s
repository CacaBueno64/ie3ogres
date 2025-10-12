
	.include "asm/macros/function.inc"
	.public _version_NINTENDO_WIFI
	.public CPSDnsIp
	.public CPSGatewayIp
	.public CPSMyIp
	.public CPSNetMask
	.public CPS_SetCheckNConfigCallback
	.public CPS_SetScavengerCallback
	.public CPS_SetThreadPriority
	.public CPS_Startup
	.public CPSi_RecvCallbackFunc
	.public MI_CpuFill8
	.public OSi_ReferSymbol
	.public SOCLSocketParamTCP
	.public SOCLSocketParamUDPSend
	.public SOCL_CreateSocket
	.public SOCLi_CheckNConfig
	.public SOCLi_CleanupCPS
	.public SOCLi_InitResource
	.public SOCLi_StartupCommandPacketQueue
	.public SOCLi_TrashSocket
	.public WCM_GetApMacAddress
	.public WCM_SetRecvDCFCallback

	.text
	arm_func_start SOCL_Startup
SOCL_Startup: ; 0x020D45E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020D4638 ; =_version_NINTENDO_WIFI
	bl OSi_ReferSymbol
	ldr r4, _020D463C ; =SOCLiConfigPtr
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl SOCLi_InitResource
	str r5, [r4]
	bl SOCLi_StartupCPS
	bl SOCLi_StartupSOCL
	movs r5, r0
	bpl _020D4630
	bl SOCLi_CleanupCPS
	mov r0, #0
	str r0, [r4]
_020D4630:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D4638: .word _version_NINTENDO_WIFI
_020D463C: .word SOCLiConfigPtr
	arm_func_end SOCL_Startup

	arm_static_func_start SOCLi_StartupSOCL
SOCLi_StartupSOCL: ; 0x020D4640
	stmfd sp!, {r4, lr}
	ldr r0, _020D4674 ; =SOCLiConfigPtr
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bl SOCLi_StartupCommandPacketQueue
	movs r4, r0
	bmi _020D466C
	ldr r0, _020D4678 ; =SOCLSocketParamUDPSend
	bl SOCL_CreateSocket
	ldr r1, _020D467C ; =SOCLiYieldWait
	str r0, [r1, #0xc]
_020D466C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D4674: .word SOCLiConfigPtr
_020D4678: .word SOCLSocketParamUDPSend
_020D467C: .word SOCLiYieldWait
	arm_func_end SOCLi_StartupSOCL

	arm_static_func_start SOCLi_StartupCPS
SOCLi_StartupCPS: ; 0x020D4680
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020D47CC ; =SOCLiConfigPtr
	ldr r5, _020D47D0 ; =SOCLiCPSConfig
	mov r4, #0
	ldr r6, [r7]
	mov r0, r5
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r2, [r6, #0x18]
	ldr r0, _020D47D4 ; =SOCLiYieldWait
	ldr r1, _020D47D8 ; =SOCL_LinkIsOn
	str r2, [r0, #0x14]
	ldr r2, [r6, #0x1c]
	str r2, [r0, #0x18]
	str r1, [r0, #0x20]
	str r4, [r0, #0x24]
	str r4, [r0, #0x28]
	ldr r1, [r0]
	str r1, [r0, #0x3c]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	ldreq r0, [r7, #4]
	str r0, [r5, #0x20]
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne _020D4700
	ldr r1, _020D47CC ; =SOCLiConfigPtr
	ldr r0, [r5, #0x20]
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
_020D4700:
	str r0, [r5, #0x1c]
	ldr r2, [r6, #0x30]
	ldr r0, _020D47DC ; =0x000005DC
	cmp r2, #0
	moveq r2, #0x240
	cmp r2, r0
	movgt r2, r0
	bgt _020D4728
	cmp r2, #0x240
	movlt r2, #0x240
_020D4728:
	ldr r7, [r6, #0x34]
	ldr r1, _020D47E0 ; =SOCLSocketParamTCP
	sub r4, r2, #0x28
	cmp r7, #0
	moveq r7, #0x10c0
	ldr r0, _020D47E4 ; =CPSMyIp
	mov r3, #0
	strh r7, [r1, #2]
	mov r2, r4, lsl #1
	strh r2, [r1, #4]
	str r4, [r5, #0x24]
	str r3, [r0]
	ldr r0, [r6]
	mov r2, #1
	cmp r0, #0
	ldreq r0, _020D47D4 ; =SOCLiYieldWait
	ldreq r1, _020D47E8 ; =SOCLi_SetMyIP
	streq r3, [r0, #8]
	streq r2, [r5]
	streq r1, [r5, #0xc]
	beq _020D4798
	ldr r1, _020D47EC ; =SOCLi_DhcpTimeout
	ldr r0, _020D47D4 ; =SOCLiYieldWait
	str r3, [r5]
	str r1, [r5, #0xc]
	str r2, [r0, #8]
	ldr r0, [r0, #4]
	str r0, [r5, #0x28]
_020D4798:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	moveq r0, #0xb
	bl CPS_SetThreadPriority
	ldr r0, _020D47F0 ; =CPSi_RecvCallbackFunc
	bl WCM_SetRecvDCFCallback
	ldr r0, _020D47F4 ; =SOCLi_TrashSocket
	bl CPS_SetScavengerCallback
	ldr r0, _020D47F8 ; =SOCLi_CheckNConfig
	bl CPS_SetCheckNConfigCallback
	mov r0, r5
	bl CPS_Startup
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D47CC: .word SOCLiConfigPtr
_020D47D0: .word SOCLiCPSConfig
_020D47D4: .word SOCLiYieldWait
_020D47D8: .word SOCL_LinkIsOn
_020D47DC: .word 0x000005DC
_020D47E0: .word SOCLSocketParamTCP
_020D47E4: .word CPSMyIp
_020D47E8: .word SOCLi_SetMyIP
_020D47EC: .word SOCLi_DhcpTimeout
_020D47F0: .word CPSi_RecvCallbackFunc
_020D47F4: .word SOCLi_TrashSocket
_020D47F8: .word SOCLi_CheckNConfig
	arm_func_end SOCLi_StartupCPS

	arm_static_func_start SOCLi_SetMyIP
SOCLi_SetMyIP: ; 0x020D47FC
	ldr r0, _020D4850 ; =SOCLiConfigPtr
	ldr r1, _020D4854 ; =CPSMyIp
	ldr r12, [r0]
	ldr r0, _020D4858 ; =CPSNetMask
	ldr r3, [r12, #4]
	ldr r2, _020D485C ; =CPSGatewayIp
	str r3, [r1]
	ldr r3, [r12, #8]
	ldr r1, _020D4860 ; =CPSDnsIp
	str r3, [r0]
	ldr r3, [r12, #0xc]
	ldr r0, _020D4864 ; =SOCLiYieldWait
	str r3, [r2]
	ldr r2, [r12, #0x10]
	str r2, [r1]
	ldr r2, [r12, #0x14]
	str r2, [r1, #4]
	ldr r1, [r0, #8]
	orr r1, r1, #2
	str r1, [r0, #8]
	bx lr
_020D4850: .word SOCLiConfigPtr
_020D4854: .word CPSMyIp
_020D4858: .word CPSNetMask
_020D485C: .word CPSGatewayIp
_020D4860: .word CPSDnsIp
_020D4864: .word SOCLiYieldWait
	arm_func_end SOCLi_SetMyIP

	arm_static_func_start SOCLi_DhcpTimeout
SOCLi_DhcpTimeout: ; 0x020D4868
	ldr r0, _020D487C ; =SOCLiYieldWait
	ldr r1, [r0, #8]
	orr r1, r1, #2
	str r1, [r0, #8]
	bx lr
_020D487C: .word SOCLiYieldWait
	arm_func_end SOCLi_DhcpTimeout

	arm_static_func_start SOCL_LinkIsOn
SOCL_LinkIsOn: ; 0x020D4880
	stmfd sp!, {r3, lr}
	bl WCM_GetApMacAddress
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end SOCL_LinkIsOn

	.data
	.global SOCLiConfigPtr
SOCLiConfigPtr:
	.word 0
	.global SOCLiDefaultLanBufferSize
SOCLiDefaultLanBufferSize:
	.word 0x4000

	.bss
	.global SOCLiYieldWait
SOCLiYieldWait:
	.space 0x04
	.global SOCLiRequestedIP
SOCLiRequestedIP:
	.space 0x04
	.global SOCLiDhcpState
SOCLiDhcpState:
	.space 0x04
	.global SOCLiUDPSendSocket
SOCLiUDPSendSocket:
	.space 0x04
	.global SOCLiCPSConfig
SOCLiCPSConfig:
	.space 0x30

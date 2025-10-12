
	.include "asm/macros/function.inc"
	.public CPSMyIp
	.public CPS_CalmDown
	.public CPS_Cleanup
	.public CPS_SetCheckNConfigCallback
	.public CPS_SetScavengerCallback
	.public OS_DisableInterrupts
	.public OS_RestoreInterrupts
	.public OS_Sleep
	.public SOCL_Close
	.public SOCL_IsClosed
	.public SOCLiCPSConfig
	.public SOCLiConfigPtr
	.public SOCLiRequestedIP
	.public SOCLiSocketList
	.public SOCLiSocketListTrash
	.public SOCLiUDPSendSocket
	.public SOCLi_CleanupCommandPacketQueue
	.public SOCLi_InitResource
	.public SOCLi_TrashSocket
	.public WCM_SetRecvDCFCallback

	.text
	arm_func_start SOCL_Cleanup
SOCL_Cleanup: ; 0x020D65D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D6664 ; =SOCLiRequestedIP
	ldr r0, [r1]
	cmp r0, #0
	ldreq r0, _020D6668 ; =CPSMyIp
	ldreq r0, [r0]
	streq r0, [r1]
	bl SOCL_CalmDown
	mvn r4, #0x19
	cmp r0, r4
	bne _020D6618
	mov r5, #0x64
_020D6604:
	mov r0, r5
	bl OS_Sleep
	bl SOCL_CalmDown
	cmp r0, r4
	beq _020D6604
_020D6618:
	bl SOCLi_CleanupCommandPacketQueue
	movs r4, r0
	bmi _020D665C
	bl SOCLi_CleanupCPS
	ldr r0, _020D666C ; =SOCLiConfigPtr
	ldr r1, [r0]
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _020D664C
	ldr r0, _020D6670 ; =SOCLiCPSConfig
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x1c]
	blx r1
_020D664C:
	ldr r0, _020D666C ; =SOCLiConfigPtr
	mov r1, #0
	str r1, [r0]
	bl SOCLi_InitResource
_020D665C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D6664: .word SOCLiRequestedIP
_020D6668: .word CPSMyIp
_020D666C: .word SOCLiConfigPtr
_020D6670: .word SOCLiCPSConfig
	arm_func_end SOCL_Cleanup

	arm_func_start SOCLi_CleanupCPS
SOCLi_CleanupCPS: ; 0x020D6674
	stmfd sp!, {r4, lr}
	bl CPS_Cleanup
	mov r4, #0
	mov r0, r4
	bl CPS_SetScavengerCallback
	mov r0, r4
	bl CPS_SetCheckNConfigCallback
	mov r0, r4
	bl WCM_SetRecvDCFCallback
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_CleanupCPS

	arm_func_start SOCL_CloseAll
SOCL_CloseAll: ; 0x020D669C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020D6738 ; =SOCLiUDPSendSocket
	ldr r5, _020D673C ; =SOCLiSocketList
_020D66A8:
	bl OS_DisableInterrupts
	ldr r6, [r5]
	cmp r6, #0
	beq _020D66DC
	ldr r2, [r4]
_020D66BC:
	cmp r6, r2
	beq _020D66D0
	ldrsh r1, [r6, #0xac]
	tst r1, #0x10
	beq _020D66DC
_020D66D0:
	ldr r6, [r6, #0xb8]
	cmp r6, #0
	bne _020D66BC
_020D66DC:
	bl OS_RestoreInterrupts
	cmp r6, #0
	beq _020D66F4
	mov r0, r6
	bl SOCL_Close
	b _020D66A8
_020D66F4:
	ldr r0, _020D673C ; =SOCLiSocketList
	ldr r1, [r0]
	cmp r1, #0
	beq _020D671C
	ldr r0, _020D6738 ; =SOCLiUDPSendSocket
	ldr r0, [r0]
	cmp r1, r0
	ldreq r0, [r1, #0xb8]
	cmpeq r0, #0
	bne _020D6730
_020D671C:
	ldr r0, _020D6740 ; =SOCLiSocketListTrash
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D6730:
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D6738: .word SOCLiUDPSendSocket
_020D673C: .word SOCLiSocketList
_020D6740: .word SOCLiSocketListTrash
	arm_func_end SOCL_CloseAll

	arm_func_start SOCL_CalmDown
SOCL_CalmDown: ; 0x020D6744
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020D67B0 ; =SOCLiUDPSendSocket
	ldr r0, [r4]
	cmp r0, #0
	beq _020D678C
	bl SOCL_CloseAll
	movs r5, r0
	bne _020D6784
	ldr r0, [r4]
	bl SOCL_Close
	ldr r0, [r4]
	bl SOCL_IsClosed
	cmp r0, #0
	movne r0, #0
	strne r0, [r4]
	mvn r5, #0x19
_020D6784:
	bl SOCLi_TrashSocket
	b _020D67A8
_020D678C:
	bl CPS_CalmDown
	cmp r0, #0
	mvneq r5, #0x19
	beq _020D67A8
	mov r5, #0
	mov r0, r5
	bl WCM_SetRecvDCFCallback
_020D67A8:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D67B0: .word SOCLiUDPSendSocket
	arm_func_end SOCL_CalmDown

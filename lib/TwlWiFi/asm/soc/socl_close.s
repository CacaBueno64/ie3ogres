
	.include "asm/macros/function.inc"
	.public CPS_SocRelease
	.public CPS_SocUnRegister
	.public CPS_TcpClose
	.public CPS_TcpShutdown
	.public OS_DisableInterrupts
	.public OS_DisableScheduler
	.public OS_EnableScheduler
	.public OS_JoinThread
	.public OS_ReceiveMessage
	.public OS_RescheduleThread
	.public OS_RestoreInterrupts
	.public OS_SendMessage
	.public OS_WakeupThread
	.public SOCL_SocketIsInTrash
	.public SOCL_SocketIsInvalid
	.public SOCLiConfigPtr
	.public SOCLiSocketListTrash
	.public SOCLi_CreateCommandPacket
	.public SOCLi_FreeCommandPacket
	.public SOCLi_Resource
	.public SOCLi_SendCommandPacket
	.public SOCLi_SendCommandPacketToCtrlPipe
	.public SOCLi_SocketRegisterTrash
	.public SOCLi_SocketUnregister
	.public SOCLi_SocketUnregisterTrash

	.text
	arm_func_start SOCL_IsClosed
SOCL_IsClosed: ; 0x020D61FC
	stmfd sp!, {r4, lr}
	movs r4, r0
	bmi _020D6228
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	beq _020D6228
	mov r0, r4
	bl SOCL_SocketIsInTrash
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
_020D6228:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end SOCL_IsClosed

	arm_func_start SOCL_Close
SOCL_Close: ; 0x020D6230
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	mvnle r0, #0x1b
	ldmlefd sp!, {r4, r5, r6, pc}
	bl OS_DisableInterrupts
	mov r6, r0
	mov r0, r4
	bl SOCL_SocketIsInTrash
	cmp r0, #0
	beq _020D6270
	mov r0, r6
	bl OS_RestoreInterrupts
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D6270:
	mov r0, r4
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	beq _020D6290
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020D6290:
	cmp r4, #0
	mov r1, r5
	beq _020D62A8
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, #1
_020D62A8:
	cmp r1, #0
	bne _020D62C0
	mov r0, r6
	bl OS_RestoreInterrupts
	mvn r0, #0x26
	ldmfd sp!, {r4, r5, r6, pc}
_020D62C0:
	ldrsh r0, [r4, #0xac]
	tst r0, #0x10
	mov r0, r6
	beq _020D62DC
	bl OS_RestoreInterrupts
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D62DC:
	bl OS_RestoreInterrupts
	ldrsh r0, [r4, #0xac]
	mov r1, #1
	orr r0, r0, #0x18
	strh r0, [r4, #0xac]
	ldrsb r0, [r4, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	ldreq r0, _020D635C ; =SOCLi_Resource
	ldreq r1, [r0, #4]
	subeq r1, r1, #1
	streq r1, [r0, #4]
	beq _020D6334
	ldr r0, [r4, #0xa4]
	mov r1, #0
	bl SOCLi_SendCommandPacket
	ldr r0, _020D635C ; =SOCLi_Resource
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
_020D6334:
	ldr r0, _020D6360 ; =SOCLi_CloseCallBack
	mov r1, r4
	mov r2, #1
	bl SOCLi_CreateCommandPacket
	mov r1, r0
	mov r0, r4
	str r5, [r1, #8]
	bl SOCLi_SendCommandPacketToCtrlPipe
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020D635C: .word SOCLi_Resource
_020D6360: .word SOCLi_CloseCallBack
	arm_func_end SOCL_Close

	arm_static_func_start SOCLi_CloseCallBack
SOCLi_CloseCallBack: ; 0x020D6364
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #4]
	mov r1, #1
	ldrsb r0, [r4, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D63A0
	ldr r0, [r4, #0xa4]
	add r0, r0, #0x20
	bl OS_JoinThread
	bl CPS_TcpShutdown
	bl CPS_TcpClose
	bl CPS_SocRelease
_020D63A0:
	bl CPS_SocUnRegister
	ldrsh r0, [r4, #0xac]
	mov r6, #0
	mov r1, r6
	bic r0, r0, #6
	strh r0, [r4, #0xac]
	ldrsb r0, [r4, #0xaf]
	cmp r0, #2
	ldreq r0, [r4, #0xa4]
	ldrne r0, [r4, #0xa0]
	bl SOCLi_SendCommandPacket
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl SOCLi_SocketUnregister
	mov r0, r4
	bl SOCLi_SocketRegisterTrash
	mov r0, r5
	bl OS_RestoreInterrupts
	ldrsh r1, [r4, #0xac]
	mov r0, r6
	orr r1, r1, #0x20
	strh r1, [r4, #0xac]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCLi_CloseCallBack

	arm_func_start SOCLi_CleanupSocket
SOCLi_CleanupSocket: ; 0x020D6400
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsb r2, [r4, #0xaf]
	mov r0, #0
	mov r1, #1
	cmp r2, #0
	cmpne r2, #4
	movne r1, r0
	strh r0, [r4, #0xac]
	cmp r1, #0
	beq _020D6440
	ldr r0, [r4, #0xa4]
	bl SOCLi_FreeCommandPipe
	ldr r0, [r4, #0xa0]
	b _020D64B8
_020D6440:
	cmp r2, #1
	bne _020D64AC
	ldr r0, [r4, #0xa0]
	ldr r0, [r0, #0x104]
	cmp r0, #0
	beq _020D6478
	ldr r5, _020D64F4 ; =SOCLiConfigPtr
_020D645C:
	ldr r1, [r5]
	ldr r6, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r6
	cmp r6, #0
	bne _020D645C
_020D6478:
	ldr r0, [r4, #0xa0]
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #8]
	ldr r0, [r4, #0xa0]
	str r1, [r0, #0x100]
	ldr r0, [r4, #0xa0]
	str r1, [r0, #0x104]
	ldr r0, [r4, #0xa0]
	add r0, r0, #0x10c
	bl OS_WakeupThread
	ldr r0, [r4, #0xa0]
	b _020D64B8
_020D64AC:
	cmp r2, #2
	bne _020D64BC
	ldr r0, [r4, #0xa4]
_020D64B8:
	bl SOCLi_FreeCommandPipe
_020D64BC:
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl SOCLi_SocketUnregister
	mov r0, r4
	bl SOCLi_SocketUnregisterTrash
	ldr r1, _020D64F4 ; =SOCLiConfigPtr
	mov r0, r4
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_020D64F4: .word SOCLiConfigPtr
	arm_func_end SOCLi_CleanupSocket

	arm_static_func_start SOCLi_FreeCommandPipe
SOCLi_FreeCommandPipe: ; 0x020D64F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r9, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r9, #0x20
	bl OS_JoinThread
	bl OS_DisableInterrupts
	mov r8, r0
	bl OS_DisableScheduler
	add r7, sp, #0
	mov r0, r9
	mov r1, r7
	mov r2, #0
	bl OS_ReceiveMessage
	cmp r0, #0
	beq _020D6584
	mov r5, #0
	mvn r6, #0xa
	mov r4, r5
_020D6540:
	ldr r0, [sp]
	cmp r0, #0
	beq _020D656C
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020D6564
	mov r1, r6
	mov r2, r5
	bl OS_SendMessage
_020D6564:
	ldr r0, [sp]
	bl SOCLi_FreeCommandPacket
_020D656C:
	mov r0, r9
	mov r1, r7
	mov r2, r4
	bl OS_ReceiveMessage
	cmp r0, #0
	bne _020D6540
_020D6584:
	bl OS_EnableScheduler
	bl OS_RescheduleThread
	mov r0, r8
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end SOCLi_FreeCommandPipe

	arm_func_start SOCLi_TrashSocket
SOCLi_TrashSocket: ; 0x020D6598
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r4, _020D65D0 ; =SOCLiSocketListTrash
	mov r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _020D65C4
_020D65B4:
	bl SOCLi_CleanupSocket
	ldr r0, [r4]
	cmp r0, #0
	bne _020D65B4
_020D65C4:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020D65D0: .word SOCLiSocketListTrash
	arm_func_end SOCLi_TrashSocket
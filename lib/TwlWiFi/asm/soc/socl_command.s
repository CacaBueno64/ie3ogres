
	.include "asm/macros/function.inc"
	.public OS_DisableInterrupts
	.public OS_DisableScheduler
	.public OS_EnableScheduler
	.public OS_InitMessageQueue
	.public OS_ReadMessage
	.public OS_ReceiveMessage
	.public OS_RestoreInterrupts
	.public OS_SendMessage
	.public SOCLiConfigPtr

	.text
	arm_func_start SOCLi_StartupCommandPacketQueue
SOCLi_StartupCommandPacketQueue: ; 0x020D4898
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r6, #0x2c
	mul r1, r5, r6
	ldr r0, _020D4920 ; =SOCLiConfigPtr
	mov r2, r5, lsl #2
	add r2, r2, #3
	ldr r0, [r0]
	add r1, r1, #3
	bic r4, r2, #3
	bic r2, r1, #3
	ldr r1, [r0, #0x18]
	add r0, r2, r4
	blx r1
	movs r7, r0
	subeq r0, r6, #0x2d
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020D4924 ; =SOCLiCommandPacketQueue
	mov r1, r7
	mov r2, r5
	bl OS_InitMessageQueue
	cmp r5, #0
	add r4, r7, r4
	ble _020D4910
_020D48F8:
	mov r0, r4
	bl SOCLi_FreeCommandPacket
	sub r5, r5, #1
	cmp r5, #0
	add r4, r4, #0x2c
	bgt _020D48F8
_020D4910:
	ldr r1, _020D4928 ; =SOCLiCommandPackets
	mov r0, #0
	str r7, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4920: .word SOCLiConfigPtr
_020D4924: .word SOCLiCommandPacketQueue
_020D4928: .word SOCLiCommandPackets
	arm_func_end SOCLi_StartupCommandPacketQueue

	arm_func_start SOCLi_CleanupCommandPacketQueue
SOCLi_CleanupCommandPacketQueue: ; 0x020D492C
	stmfd sp!, {r4, lr}
	ldr r4, _020D4968 ; =SOCLiCommandPackets
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	mvnlt r0, #0
	ldmltfd sp!, {r4, pc}
	ldr r1, _020D496C ; =SOCLiConfigPtr
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_020D4968: .word SOCLiCommandPackets
_020D496C: .word SOCLiConfigPtr
	arm_func_end SOCLi_CleanupCommandPacketQueue

	arm_func_start SOCLi_AllocCommandPacket
SOCLi_AllocCommandPacket: ; 0x020D4970
	stmfd sp!, {r3, lr}
	mov r2, r0
	ldr r0, _020D4994 ; =SOCLiCommandPacketQueue
	add r1, sp, #0
	bl OS_ReceiveMessage
	cmp r0, #0
	ldrne r0, [sp]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020D4994: .word SOCLiCommandPacketQueue
	arm_func_end SOCLi_AllocCommandPacket

	arm_func_start SOCLi_CreateCommandPacket
SOCLi_CreateCommandPacket: ; 0x020D4998
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl SOCLi_AllocCommandPacket
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	str r6, [r0]
	str r5, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	ldrsb r1, [r5, #0xaf]
	strb r1, [r0, #0xc]
	strb r4, [r0, #0xd]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCLi_CreateCommandPacket

	arm_func_start SOCLi_FreeCommandPacket
SOCLi_FreeCommandPacket: ; 0x020D49D8
	stmfd sp!, {r3, lr}
	movs r1, r0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020D49F4 ; =SOCLiCommandPacketQueue
	mov r2, #0
	bl OS_SendMessage
	ldmfd sp!, {r3, pc}
_020D49F4: .word SOCLiCommandPacketQueue
	arm_func_end SOCLi_FreeCommandPacket

	arm_func_start SOCLi_GetCtrlPipe
SOCLi_GetCtrlPipe: ; 0x020D49F8
	ldr r1, [r0, #0xa0]
	cmp r1, #0
	ldreq r1, [r0, #0xa4]
	mov r0, r1
	bx lr
	arm_func_end SOCLi_GetCtrlPipe

	arm_func_start SOCLi_SendCommandPacket
SOCLi_SendCommandPacket: ; 0x020D4A0C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	beq _020D4A24
	ldrsb r1, [r5, #0xd]
	tst r1, #1
	beq _020D4A2C
_020D4A24:
	mov r2, #1
	b _020D4A30
_020D4A2C:
	mov r2, #0
_020D4A30:
	mov r1, r5
	bl OS_SendMessage
	movs r4, r0
	bne _020D4A48
	mov r0, r5
	bl SOCLi_FreeCommandPacket
_020D4A48:
	mov r0, #0
	cmp r4, #0
	mvneq r0, #0x29
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_SendCommandPacket

	arm_func_start SOCLi_SendCommandPacketToCtrlPipe
SOCLi_SendCommandPacketToCtrlPipe: ; 0x020D4A58
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl SOCLi_GetCtrlPipe
	mov r1, r4
	bl SOCLi_SendCommandPacket
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_SendCommandPacketToCtrlPipe

	arm_func_start SOCLi_ExecCommandPacket
SOCLi_ExecCommandPacket: ; 0x020D4A70
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r6, r1
	ldrsb r2, [r6, #0xd]
	mov r7, r0
	cmp r2, #1
	bne _020D4AC8
	add r5, sp, #8
	mov r4, #1
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl OS_InitMessageQueue
	mov r0, r7
	mov r1, r6
	str r5, [r6, #8]
	bl SOCLi_SendCommandPacket
	add r1, sp, #4
	mov r0, r5
	mov r2, r4
	bl OS_ReceiveMessage
	b _020D4AD8
_020D4AC8:
	mov r2, #0
	str r2, [r6, #8]
	bl SOCLi_SendCommandPacket
	str r0, [sp, #4]
_020D4AD8:
	ldr r0, [sp, #4]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_ExecCommandPacket

	arm_func_start SOCLi_ExecCommandPacketInRecvPipe
SOCLi_ExecCommandPacketInRecvPipe: ; 0x020D4AE4
	ldr r0, [r0, #0xa0]
	ldr r12, _020D4AF0 ; =SOCLi_ExecCommandPacket
	bx r12
_020D4AF0: .word SOCLi_ExecCommandPacket
	arm_func_end SOCLi_ExecCommandPacketInRecvPipe

	arm_func_start SOCLi_ExecCommandPacketInSendPipe
SOCLi_ExecCommandPacketInSendPipe: ; 0x020D4AF4
	ldr r0, [r0, #0xa4]
	ldr r12, _020D4B00 ; =SOCLi_ExecCommandPacket
	bx r12
_020D4B00: .word SOCLi_ExecCommandPacket
	arm_func_end SOCLi_ExecCommandPacketInSendPipe

	arm_func_start SOCLi_ExecCommandPacketInCtrlPipe
SOCLi_ExecCommandPacketInCtrlPipe: ; 0x020D4B04
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl SOCLi_GetCtrlPipe
	mov r1, r4
	bl SOCLi_ExecCommandPacket
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_ExecCommandPacketInCtrlPipe

	arm_func_start SOCLi_CommandPacketHandler
SOCLi_CommandPacketHandler: ; 0x020D4B1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r9, r0
	mov r10, r4
	add r6, sp, #0
	mov r5, #1
_020D4B38:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl OS_ReadMessage
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r0]
	blx r1
	mov r8, r0
	bl OS_DisableInterrupts
	mov r7, r0
	bl OS_DisableScheduler
	mov r0, r9
	mov r1, r4
	mov r2, r4
	bl OS_ReceiveMessage
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	strne r8, [r0, #0xa8]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020D4BAC
	mov r1, r8
	mov r2, r10
	bl OS_SendMessage
_020D4BAC:
	ldr r0, [sp]
	bl SOCLi_FreeCommandPacket
	bl OS_EnableScheduler
	mov r0, r7
	bl OS_RestoreInterrupts
	b _020D4B38
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end SOCLi_CommandPacketHandler

	.bss
	.global SOCLiCommandPackets
SOCLiCommandPackets:
	.space 0x04
	.global SOCLiCommandPacketQueue
SOCLiCommandPacketQueue:
	.space 0x20

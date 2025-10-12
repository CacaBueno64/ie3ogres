
	.include "asm/macros/function.inc"
	.public CPS_SetUdpCallback
	.public CPS_SocDatagramMode
	.public CPS_SocDup
	.public CPS_SocRegister
	.public CPS_SocUse
	.public MI_CpuFill8
	.public OS_CreateThread
	.public OS_DisableInterrupts
	.public OS_InitMessageQueue
	.public OS_InitMutex
	.public OS_RestoreInterrupts
	.public OS_WakeupThreadDirect
	.public SOCLiConfigPtr
	.public SOCLiUDPSendSocket
	.public SOCLi_CommandPacketHandler
	.public SOCLi_CreateCommandPacket
	.public SOCLi_ExecCommandPacketInCtrlPipe
	.public SOCLi_Resource
	.public SOCLi_RoundUp4
	.public SOCLi_SocketRegister
	.public SOCLi_UdpRecvCallback
	
	.text
	arm_func_start SOCL_CreateSocket
SOCL_CreateSocket: ; 0x020D4BCC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D4C74 ; =SOCLiConfigPtr
	ldr r1, [r1]
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl SOCLi_StartupSocket
	movs r4, r0
	mvneq r0, #0x30
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	ldr r0, _020D4C78 ; =SOCLi_CreateSocketCallBack
	mov r1, r4
	mov r2, r5
	bl SOCLi_CreateCommandPacket
	mov r1, r0
	mov r0, r4
	bl SOCLi_ExecCommandPacketInCtrlPipe
	cmp r4, #0
	mov r1, #0
	beq _020D4C2C
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, r5
_020D4C2C:
	cmp r1, #0
	beq _020D4C6C
	ldrsb r0, [r4, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	ldrne r0, _020D4C7C ; =SOCLi_Resource
	ldrne r1, [r0]
	addne r1, r1, #1
	strne r1, [r0]
	ldreq r0, _020D4C7C ; =SOCLi_Resource
	ldreq r1, [r0, #4]
	addeq r1, r1, #1
	streq r1, [r0, #4]
_020D4C6C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D4C74: .word SOCLiConfigPtr
_020D4C78: .word SOCLi_CreateSocketCallBack
_020D4C7C: .word SOCLi_Resource
	arm_func_end SOCL_CreateSocket

	arm_static_func_start SOCLi_CreateSocketCallBack
SOCLi_CreateSocketCallBack: ; 0x020D4C80
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #4]
	mov r0, r4
	bl CPS_SocRegister
	ldrsb r0, [r4, #0xaf]
	ldr r1, [r4, #0xa4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020D4CE0
_020D4CA4: ; jump table
	b _020D4CB8 ; case 0
	b _020D4CC8 ; case 1
	b _020D4CDC ; case 2
	b _020D4CE0 ; case 3
	b _020D4CB8 ; case 4
_020D4CB8:
	add r0, r1, #0x20
	bl CPS_SocDup
	bl CPS_SocUse
	b _020D4CE0
_020D4CC8:
	bl CPS_SocUse
	bl CPS_SocDatagramMode
	ldr r0, _020D4CF0 ; =SOCLi_UdpRecvCallback
	bl CPS_SetUdpCallback
	b _020D4CE0
_020D4CDC:
	bl CPS_SocDatagramMode
_020D4CE0:
	mov r0, #1
	strh r0, [r4, #0xac]
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020D4CF0: .word SOCLi_UdpRecvCallback
	arm_func_end SOCLi_CreateSocketCallBack

	arm_static_func_start SOCLi_StartupSocket
SOCLi_StartupSocket: ; 0x020D4CF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl SOCLi_GetSizeSocket
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _020D4D58 ; =SOCLiConfigPtr
	mov r6, r0
	ldr r1, [r1]
	mov r0, r4
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _020D4D48
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r7
	bl SOCLi_InitSocket
	mov r0, r5
	bl SOCLi_SocketRegister
_020D4D48:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4D58: .word SOCLiConfigPtr
	arm_func_end SOCLi_StartupSocket

	arm_static_func_start SOCLi_GetSizeSocket
SOCLi_GetSizeSocket: ; 0x020D4D5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #2]
	mov r4, #0xbc
	cmp r0, #0
	beq _020D4D98
	add r4, r4, #0x114
	bl SOCLi_RoundUp4
	add r4, r4, r0
	ldrh r0, [r5, #8]
	bl SOCLi_RoundUp4
	add r4, r4, r0
	add r0, r5, #0x10
	bl SOCLi_GetSizeCommandPipe
	add r4, r4, r0
_020D4D98:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _020D4DD4
	add r4, r4, #0x110
	bl SOCLi_RoundUp4
	add r4, r4, r0
	ldrh r0, [r5, #0xa]
	bl SOCLi_RoundUp4
	add r4, r4, r0
	ldrh r0, [r5, #0xc]
	bl SOCLi_RoundUp4
	add r4, r4, r0
	add r0, r5, #0x14
	bl SOCLi_GetSizeCommandPipe
	add r4, r4, r0
_020D4DD4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_GetSizeSocket

	arm_static_func_start SOCLi_GetSizeCommandPipe
SOCLi_GetSizeCommandPipe: ; 0x020D4DDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #3]
	mov r0, r0, lsl #2
	bl SOCLi_RoundUp4
	mov r4, r0
	ldrh r0, [r5]
	bl SOCLi_RoundUp4
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_GetSizeCommandPipe

	arm_static_func_start SOCLi_InitSocket
SOCLi_InitSocket: ; 0x020D4E04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrh r1, [r6, #2]
	ldrsb r2, [r6]
	mov r7, r0
	ldrsb r0, [r6, #1]
	strb r2, [r7, #0xaf]
	cmp r1, #0
	strb r0, [r7, #0xae]
	add r5, r7, #0xbc
	beq _020D4E84
	ldrh r3, [r6, #4]
	mov r1, r5
	add r0, r5, #0x114
	add r2, r6, #0x10
	mov r4, r5
	str r5, [r7, #0xa0]
	strh r3, [r5, #0xfc]
	bl SOCLi_InitCommandPipe
	ldrh r2, [r6, #2]
	add r1, r7, #0x48
	bl SOCLi_InitSocketBuffer
	ldrh r2, [r6, #8]
	add r1, r7, #0x5c
	bl SOCLi_InitSocketBuffer
	mov r2, #0
	ldrh r3, [r6, #0xe]
	add r1, r4, #0x100
	mov r5, r0
	strh r3, [r1, #0xa]
	str r2, [r4, #0x110]
	str r2, [r4, #0x10c]
_020D4E84:
	ldrh r0, [r6, #6]
	cmp r0, #0
	ldreq r0, _020D4EF8 ; =SOCLiUDPSendSocket
	ldreq r0, [r0]
	ldreq r0, [r0, #0xa4]
	streq r0, [r7, #0xa4]
	beq _020D4EF0
	str r5, [r7, #0xa4]
	mov r1, r5
	add r0, r5, #0x110
	add r2, r6, #0x14
	mov r4, r5
	str r7, [r5, #0x10c]
	bl SOCLi_InitCommandPipe
	ldrh r2, [r6, #6]
	add r1, r7, #0x54
	bl SOCLi_InitSocketBuffer
	ldrh r2, [r6, #0xa]
	add r1, r7, #0x64
	bl SOCLi_InitSocketBuffer
	ldrh r2, [r6, #0xc]
	add r1, r5, #0xf8
	bl SOCLi_InitSocketBuffer
	mov r1, #0
	str r1, [r4, #0x108]
	mov r5, r0
	str r1, [r4, #0x104]
_020D4EF0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4EF8: .word SOCLiUDPSendSocket
	arm_func_end SOCLi_InitSocket

	arm_static_func_start SOCLi_InitSocketBuffer
SOCLi_InitSocketBuffer: ; 0x020D4EFC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, r4
	cmp r2, #0
	moveq r3, #0
	mov r0, r2
	stmia r1, {r2, r3}
	bl SOCLi_RoundUp4
	add r0, r4, r0
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_InitSocketBuffer

	arm_static_func_start SOCLi_InitCommandPipe
SOCLi_InitCommandPipe: ; 0x020D4F24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r2
	mov r7, r0
	mov r0, r5
	mov r6, r1
	bl SOCLi_GetSizeCommandPipe
	mov r4, r0
	ldrb r2, [r5, #3]
	mov r0, r6
	mov r1, r7
	bl OS_InitMessageQueue
	add r0, r6, #0xe0
	bl OS_InitMutex
	ldrh r2, [r5]
	ldrb r1, [r5, #2]
	add r0, r6, #0x20
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, _020D4F94 ; =SOCLi_CommandPacketHandler
	mov r2, r6
	add r3, r7, r4
	bl OS_CreateThread
	add r0, r6, #0x20
	bl OS_WakeupThreadDirect
	add r0, r7, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4F94: .word SOCLi_CommandPacketHandler
	arm_func_end SOCLi_InitCommandPipe
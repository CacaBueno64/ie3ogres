
	.include "asm/macros/function.inc"
	.public CPS_TcpShutdown
	.public SOCL_SocketIsInvalid
	.public SOCLi_CreateCommandPacket
	.public SOCLi_ExecCommandPacketInSendPipe

	.text
	arm_func_start SOCL_Shutdown
SOCL_Shutdown: ; 0x020D6120
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	mov r1, #0
	beq _020D6150
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, #1
_020D6150:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r4, #0xac]
	tst r0, #4
	beq _020D6174
	ldrsh r0, [r4, #0xac]
	tst r0, #8
	beq _020D617C
_020D6174:
	mvn r0, #0x37
	ldmfd sp!, {r3, r4, r5, pc}
_020D617C:
	ldrsh r0, [r4, #0xac]
	orr r0, r0, #8
	strh r0, [r4, #0xac]
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	ldrne r1, [r5, #0x10c]
	cmpne r1, #0
	beq _020D61C0
	ldrsb r2, [r4, #0xae]
	ldr r0, _020D61C8 ; =SOCLi_ShutdownCallBack
	bl SOCLi_CreateCommandPacket
	movs r1, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x10c]
	bl SOCLi_ExecCommandPacketInSendPipe
	ldmfd sp!, {r3, r4, r5, pc}
_020D61C0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D61C8: .word SOCLi_ShutdownCallBack
	arm_func_end SOCL_Shutdown

	arm_static_func_start SOCLi_ShutdownCallBack
SOCLi_ShutdownCallBack: ; 0x020D61CC
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	mov r1, #1
	ldrsb r0, [r0, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D61F4
	bl CPS_TcpShutdown
_020D61F4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end SOCLi_ShutdownCallBack